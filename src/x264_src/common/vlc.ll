; ModuleID = 'x264_src/common/vlc.c'
source_filename = "x264_src/common/vlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_t = type { i8, i8 }
%struct.vlc_large_t = type { i16, i8, i8 }

@x264_coeff0_token = dso_local local_unnamed_addr constant [5 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 15, i8 4 }, %struct.vlc_t { i8 3, i8 6 }, %struct.vlc_t { i8 1, i8 2 }], align 1
@x264_coeff_token = dso_local local_unnamed_addr constant <{ [16 x [4 x %struct.vlc_t]], [16 x [4 x %struct.vlc_t]], [16 x [4 x %struct.vlc_t]], [16 x [4 x %struct.vlc_t]], <{ [4 x %struct.vlc_t], [4 x %struct.vlc_t], [4 x %struct.vlc_t], [4 x %struct.vlc_t], [12 x [4 x %struct.vlc_t]] }> }> <{ [16 x [4 x %struct.vlc_t]] [[4 x %struct.vlc_t] [%struct.vlc_t { i8 5, i8 6 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 8 }, %struct.vlc_t { i8 4, i8 6 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 9 }, %struct.vlc_t { i8 6, i8 8 }, %struct.vlc_t { i8 5, i8 7 }, %struct.vlc_t { i8 3, i8 5 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 10 }, %struct.vlc_t { i8 6, i8 9 }, %struct.vlc_t { i8 5, i8 8 }, %struct.vlc_t { i8 3, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 11 }, %struct.vlc_t { i8 6, i8 10 }, %struct.vlc_t { i8 5, i8 9 }, %struct.vlc_t { i8 4, i8 7 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 13 }, %struct.vlc_t { i8 6, i8 11 }, %struct.vlc_t { i8 5, i8 10 }, %struct.vlc_t { i8 4, i8 8 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 13 }, %struct.vlc_t { i8 14, i8 13 }, %struct.vlc_t { i8 5, i8 11 }, %struct.vlc_t { i8 4, i8 9 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 8, i8 13 }, %struct.vlc_t { i8 10, i8 13 }, %struct.vlc_t { i8 13, i8 13 }, %struct.vlc_t { i8 4, i8 10 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 14 }, %struct.vlc_t { i8 14, i8 14 }, %struct.vlc_t { i8 9, i8 13 }, %struct.vlc_t { i8 4, i8 11 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 14 }, %struct.vlc_t { i8 10, i8 14 }, %struct.vlc_t { i8 13, i8 14 }, %struct.vlc_t { i8 12, i8 13 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 15 }, %struct.vlc_t { i8 14, i8 15 }, %struct.vlc_t { i8 9, i8 14 }, %struct.vlc_t { i8 12, i8 14 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 15 }, %struct.vlc_t { i8 10, i8 15 }, %struct.vlc_t { i8 13, i8 15 }, %struct.vlc_t { i8 8, i8 14 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 16 }, %struct.vlc_t { i8 1, i8 15 }, %struct.vlc_t { i8 9, i8 15 }, %struct.vlc_t { i8 12, i8 15 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 16 }, %struct.vlc_t { i8 14, i8 16 }, %struct.vlc_t { i8 13, i8 16 }, %struct.vlc_t { i8 8, i8 15 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 16 }, %struct.vlc_t { i8 10, i8 16 }, %struct.vlc_t { i8 9, i8 16 }, %struct.vlc_t { i8 12, i8 16 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 4, i8 16 }, %struct.vlc_t { i8 6, i8 16 }, %struct.vlc_t { i8 5, i8 16 }, %struct.vlc_t { i8 8, i8 16 }]], [16 x [4 x %struct.vlc_t]] [[4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 6 }, %struct.vlc_t { i8 2, i8 2 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 6 }, %struct.vlc_t { i8 7, i8 5 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 7 }, %struct.vlc_t { i8 10, i8 6 }, %struct.vlc_t { i8 9, i8 6 }, %struct.vlc_t { i8 5, i8 4 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 8 }, %struct.vlc_t { i8 6, i8 6 }, %struct.vlc_t { i8 5, i8 6 }, %struct.vlc_t { i8 4, i8 4 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 4, i8 8 }, %struct.vlc_t { i8 6, i8 7 }, %struct.vlc_t { i8 5, i8 7 }, %struct.vlc_t { i8 6, i8 5 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 9 }, %struct.vlc_t { i8 6, i8 8 }, %struct.vlc_t { i8 5, i8 8 }, %struct.vlc_t { i8 8, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 11 }, %struct.vlc_t { i8 6, i8 9 }, %struct.vlc_t { i8 5, i8 9 }, %struct.vlc_t { i8 4, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 11 }, %struct.vlc_t { i8 14, i8 11 }, %struct.vlc_t { i8 13, i8 11 }, %struct.vlc_t { i8 4, i8 7 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 12 }, %struct.vlc_t { i8 10, i8 11 }, %struct.vlc_t { i8 9, i8 11 }, %struct.vlc_t { i8 4, i8 9 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 12 }, %struct.vlc_t { i8 14, i8 12 }, %struct.vlc_t { i8 13, i8 12 }, %struct.vlc_t { i8 12, i8 11 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 8, i8 12 }, %struct.vlc_t { i8 10, i8 12 }, %struct.vlc_t { i8 9, i8 12 }, %struct.vlc_t { i8 8, i8 11 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 13 }, %struct.vlc_t { i8 14, i8 13 }, %struct.vlc_t { i8 13, i8 13 }, %struct.vlc_t { i8 12, i8 12 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 13 }, %struct.vlc_t { i8 10, i8 13 }, %struct.vlc_t { i8 9, i8 13 }, %struct.vlc_t { i8 12, i8 13 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 13 }, %struct.vlc_t { i8 11, i8 14 }, %struct.vlc_t { i8 6, i8 13 }, %struct.vlc_t { i8 8, i8 13 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 9, i8 14 }, %struct.vlc_t { i8 8, i8 14 }, %struct.vlc_t { i8 10, i8 14 }, %struct.vlc_t { i8 1, i8 13 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 14 }, %struct.vlc_t { i8 6, i8 14 }, %struct.vlc_t { i8 5, i8 14 }, %struct.vlc_t { i8 4, i8 14 }]], [16 x [4 x %struct.vlc_t]] [[4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 6 }, %struct.vlc_t { i8 14, i8 4 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 6 }, %struct.vlc_t { i8 15, i8 5 }, %struct.vlc_t { i8 13, i8 4 }, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 8, i8 6 }, %struct.vlc_t { i8 12, i8 5 }, %struct.vlc_t { i8 14, i8 5 }, %struct.vlc_t { i8 12, i8 4 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 7 }, %struct.vlc_t { i8 10, i8 5 }, %struct.vlc_t { i8 11, i8 5 }, %struct.vlc_t { i8 11, i8 4 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 7 }, %struct.vlc_t { i8 8, i8 5 }, %struct.vlc_t { i8 9, i8 5 }, %struct.vlc_t { i8 10, i8 4 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 9, i8 7 }, %struct.vlc_t { i8 14, i8 6 }, %struct.vlc_t { i8 13, i8 6 }, %struct.vlc_t { i8 9, i8 4 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 8, i8 7 }, %struct.vlc_t { i8 10, i8 6 }, %struct.vlc_t { i8 9, i8 6 }, %struct.vlc_t { i8 8, i8 4 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 8 }, %struct.vlc_t { i8 14, i8 7 }, %struct.vlc_t { i8 13, i8 7 }, %struct.vlc_t { i8 13, i8 5 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 8 }, %struct.vlc_t { i8 14, i8 8 }, %struct.vlc_t { i8 10, i8 7 }, %struct.vlc_t { i8 12, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 9 }, %struct.vlc_t { i8 10, i8 8 }, %struct.vlc_t { i8 13, i8 8 }, %struct.vlc_t { i8 12, i8 7 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 9 }, %struct.vlc_t { i8 14, i8 9 }, %struct.vlc_t { i8 9, i8 8 }, %struct.vlc_t { i8 12, i8 8 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 8, i8 9 }, %struct.vlc_t { i8 10, i8 9 }, %struct.vlc_t { i8 13, i8 9 }, %struct.vlc_t { i8 8, i8 8 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 13, i8 10 }, %struct.vlc_t { i8 7, i8 9 }, %struct.vlc_t { i8 9, i8 9 }, %struct.vlc_t { i8 12, i8 9 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 9, i8 10 }, %struct.vlc_t { i8 12, i8 10 }, %struct.vlc_t { i8 11, i8 10 }, %struct.vlc_t { i8 10, i8 10 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 5, i8 10 }, %struct.vlc_t { i8 8, i8 10 }, %struct.vlc_t { i8 7, i8 10 }, %struct.vlc_t { i8 6, i8 10 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 10 }, %struct.vlc_t { i8 4, i8 10 }, %struct.vlc_t { i8 3, i8 10 }, %struct.vlc_t { i8 2, i8 10 }]], [16 x [4 x %struct.vlc_t]] [[4 x %struct.vlc_t] [%struct.vlc_t { i8 0, i8 6 }, %struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 4, i8 6 }, %struct.vlc_t { i8 5, i8 6 }, %struct.vlc_t { i8 6, i8 6 }, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 8, i8 6 }, %struct.vlc_t { i8 9, i8 6 }, %struct.vlc_t { i8 10, i8 6 }, %struct.vlc_t { i8 11, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 12, i8 6 }, %struct.vlc_t { i8 13, i8 6 }, %struct.vlc_t { i8 14, i8 6 }, %struct.vlc_t { i8 15, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 16, i8 6 }, %struct.vlc_t { i8 17, i8 6 }, %struct.vlc_t { i8 18, i8 6 }, %struct.vlc_t { i8 19, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 20, i8 6 }, %struct.vlc_t { i8 21, i8 6 }, %struct.vlc_t { i8 22, i8 6 }, %struct.vlc_t { i8 23, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 24, i8 6 }, %struct.vlc_t { i8 25, i8 6 }, %struct.vlc_t { i8 26, i8 6 }, %struct.vlc_t { i8 27, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 28, i8 6 }, %struct.vlc_t { i8 29, i8 6 }, %struct.vlc_t { i8 30, i8 6 }, %struct.vlc_t { i8 31, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 32, i8 6 }, %struct.vlc_t { i8 33, i8 6 }, %struct.vlc_t { i8 34, i8 6 }, %struct.vlc_t { i8 35, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 36, i8 6 }, %struct.vlc_t { i8 37, i8 6 }, %struct.vlc_t { i8 38, i8 6 }, %struct.vlc_t { i8 39, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 40, i8 6 }, %struct.vlc_t { i8 41, i8 6 }, %struct.vlc_t { i8 42, i8 6 }, %struct.vlc_t { i8 43, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 44, i8 6 }, %struct.vlc_t { i8 45, i8 6 }, %struct.vlc_t { i8 46, i8 6 }, %struct.vlc_t { i8 47, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 48, i8 6 }, %struct.vlc_t { i8 49, i8 6 }, %struct.vlc_t { i8 50, i8 6 }, %struct.vlc_t { i8 51, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 52, i8 6 }, %struct.vlc_t { i8 53, i8 6 }, %struct.vlc_t { i8 54, i8 6 }, %struct.vlc_t { i8 55, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 56, i8 6 }, %struct.vlc_t { i8 57, i8 6 }, %struct.vlc_t { i8 58, i8 6 }, %struct.vlc_t { i8 59, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 60, i8 6 }, %struct.vlc_t { i8 61, i8 6 }, %struct.vlc_t { i8 62, i8 6 }, %struct.vlc_t { i8 63, i8 6 }]], <{ [4 x %struct.vlc_t], [4 x %struct.vlc_t], [4 x %struct.vlc_t], [4 x %struct.vlc_t], [12 x [4 x %struct.vlc_t]] }> <{ [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 6 }, %struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 4, i8 6 }, %struct.vlc_t { i8 6, i8 6 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 3, i8 6 }, %struct.vlc_t { i8 3, i8 7 }, %struct.vlc_t { i8 2, i8 7 }, %struct.vlc_t { i8 5, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 2, i8 6 }, %struct.vlc_t { i8 3, i8 8 }, %struct.vlc_t { i8 2, i8 8 }, %struct.vlc_t { i8 0, i8 7 }], [12 x [4 x %struct.vlc_t]] zeroinitializer }> }>, align 16
@x264_total_zeros = dso_local local_unnamed_addr constant <{ [16 x %struct.vlc_t], [16 x %struct.vlc_t], [16 x %struct.vlc_t], [16 x %struct.vlc_t], [16 x %struct.vlc_t], [16 x %struct.vlc_t], [16 x %struct.vlc_t], [16 x %struct.vlc_t], <{ [8 x %struct.vlc_t], [8 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [9 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [10 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [11 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [12 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [13 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, [14 x %struct.vlc_t] }> }> <{ [16 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 3, i8 4 }, %struct.vlc_t { i8 2, i8 4 }, %struct.vlc_t { i8 3, i8 5 }, %struct.vlc_t { i8 2, i8 5 }, %struct.vlc_t { i8 3, i8 6 }, %struct.vlc_t { i8 2, i8 6 }, %struct.vlc_t { i8 3, i8 7 }, %struct.vlc_t { i8 2, i8 7 }, %struct.vlc_t { i8 3, i8 8 }, %struct.vlc_t { i8 2, i8 8 }, %struct.vlc_t { i8 3, i8 9 }, %struct.vlc_t { i8 2, i8 9 }, %struct.vlc_t { i8 1, i8 9 }], [16 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 3 }, %struct.vlc_t { i8 6, i8 3 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 3 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 5, i8 4 }, %struct.vlc_t { i8 4, i8 4 }, %struct.vlc_t { i8 3, i8 4 }, %struct.vlc_t { i8 2, i8 4 }, %struct.vlc_t { i8 3, i8 5 }, %struct.vlc_t { i8 2, i8 5 }, %struct.vlc_t { i8 3, i8 6 }, %struct.vlc_t { i8 2, i8 6 }, %struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t { i8 0, i8 6 }, %struct.vlc_t zeroinitializer], [16 x %struct.vlc_t] [%struct.vlc_t { i8 5, i8 4 }, %struct.vlc_t { i8 7, i8 3 }, %struct.vlc_t { i8 6, i8 3 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 4 }, %struct.vlc_t { i8 3, i8 4 }, %struct.vlc_t { i8 4, i8 3 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 4 }, %struct.vlc_t { i8 3, i8 5 }, %struct.vlc_t { i8 2, i8 5 }, %struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 0, i8 6 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [16 x %struct.vlc_t] [%struct.vlc_t { i8 3, i8 5 }, %struct.vlc_t { i8 7, i8 3 }, %struct.vlc_t { i8 5, i8 4 }, %struct.vlc_t { i8 4, i8 4 }, %struct.vlc_t { i8 6, i8 3 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 3 }, %struct.vlc_t { i8 3, i8 4 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 4 }, %struct.vlc_t { i8 2, i8 5 }, %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 0, i8 5 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [16 x %struct.vlc_t] [%struct.vlc_t { i8 5, i8 4 }, %struct.vlc_t { i8 4, i8 4 }, %struct.vlc_t { i8 3, i8 4 }, %struct.vlc_t { i8 7, i8 3 }, %struct.vlc_t { i8 6, i8 3 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 3 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 4 }, %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 0, i8 5 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [16 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 7, i8 3 }, %struct.vlc_t { i8 6, i8 3 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 3 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 0, i8 6 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [16 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 3 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 0, i8 6 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [16 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 2, i8 2 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 0, i8 6 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], <{ [8 x %struct.vlc_t], [8 x %struct.vlc_t] }> <{ [8 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t { i8 0, i8 6 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 2, i8 2 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 1, i8 5 }], [8 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [9 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 0, i8 5 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 2, i8 2 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 1, i8 4 }, [9 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [10 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 0, i8 4 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 3, i8 3 }, [10 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [11 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 0, i8 4 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 1, i8 3 }, [11 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [12 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 0, i8 3 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 1, i8 2 }, [12 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [13 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 0, i8 2 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 1, i8 1 }, [13 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, [14 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 0, i8 1 }, %struct.vlc_t { i8 1, i8 1 }, [14 x %struct.vlc_t] zeroinitializer }> }>, align 16
@x264_total_zeros_dc = dso_local local_unnamed_addr constant [3 x [4 x %struct.vlc_t]] [[4 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 0, i8 3 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 0, i8 2 }, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 0, i8 1 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer]], align 16
@x264_run_before = dso_local local_unnamed_addr constant <{ <{ %struct.vlc_t, %struct.vlc_t, [14 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [13 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [12 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [11 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [10 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [9 x %struct.vlc_t] }>, [16 x %struct.vlc_t] }> <{ <{ %struct.vlc_t, %struct.vlc_t, [14 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 0, i8 1 }, [14 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [13 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 0, i8 2 }, [13 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [12 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 2, i8 2 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 0, i8 2 }, [12 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [11 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 2, i8 2 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 0, i8 3 }, [11 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [10 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 2, i8 2 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 0, i8 3 }, [10 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [9 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 0, i8 3 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 3 }, [9 x %struct.vlc_t] zeroinitializer }>, [16 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 3 }, %struct.vlc_t { i8 6, i8 3 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 3 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t { i8 1, i8 7 }, %struct.vlc_t { i8 1, i8 8 }, %struct.vlc_t { i8 1, i8 9 }, %struct.vlc_t { i8 1, i8 10 }, %struct.vlc_t { i8 1, i8 11 }, %struct.vlc_t zeroinitializer] }>, align 16
@x264_level_token = dso_local local_unnamed_addr global [7 x [128 x %struct.vlc_large_t]] zeroinitializer, align 16

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @x264_init_vlc_tables() local_unnamed_addr #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.cond.cleanup4
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond.cleanup4 ]
  %0 = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select133 = tail call i32 @llvm.umax.i32(i32 %0, i32 1)
  %sub70 = add nsw i32 %spec.select133, -1
  %shl71 = shl nuw nsw i32 3, %sub70
  %cmp75 = icmp ne i64 %indvars.iv, 6
  %cmp24 = icmp eq i64 %indvars.iv, 0
  %shl53.neg = shl nsw i32 -15, %0
  %1 = trunc i64 %indvars.iv to i8
  %conv43 = add nuw nsw i8 %1, 15
  %shl45 = shl nuw nsw i32 1, %0
  %sub47 = add nuw nsw i32 %shl45, 65535
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp24, label %for.body5.us, label %for.body5.preheader

for.body5.preheader:                              ; preds = %for.cond1.preheader
  %2 = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %for.body5

for.body5.us:                                     ; preds = %for.cond1.preheader, %if.end65.us
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %if.end65.us ], [ -64, %for.cond1.preheader ]
  %3 = trunc nsw i64 %indvars.iv141 to i32
  %shr.us = ashr i32 %3, 15
  %xor.us = xor i32 %shr.us, %3
  %sub.us = sub nsw i32 %xor.us, %shr.us
  %mul.us = shl nsw i32 %sub.us, 1
  %sub8.us = sub nsw i32 %mul.us, %shr.us
  %4 = add nsw i64 %indvars.iv141, 64
  %arrayidx12.us = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 0, i64 %4
  %cmp14.us = icmp slt i32 %sub8.us, 16
  br i1 %cmp14.us, label %if.then.us, label %if.else.us

if.else.us:                                       ; preds = %for.body5.us
  %cmp26.us = icmp ult i32 %sub8.us, 32
  %i_size29.us = getelementptr inbounds i8, ptr %arrayidx12.us, i64 2
  %conv32.us = trunc i32 %sub8.us to i16
  br i1 %cmp26.us, label %if.then28.us, label %if.else34.us

if.else34.us:                                     ; preds = %if.else.us
  store i8 28, ptr %i_size29.us, align 2
  %conv61.us = add i16 %conv32.us, 4064
  br label %if.end65.us

if.then28.us:                                     ; preds = %if.else.us
  store i8 19, ptr %i_size29.us, align 2
  br label %if.end65.us

if.then.us:                                       ; preds = %for.body5.us
  %5 = trunc i32 %sub8.us to i8
  %conv19.us = add i8 %5, -1
  %i_size.us = getelementptr inbounds i8, ptr %arrayidx12.us, i64 2
  store i8 %conv19.us, ptr %i_size.us, align 2
  br label %if.end65.us

if.end65.us:                                      ; preds = %if.then.us, %if.then28.us, %if.else34.us
  %.sink = phi i16 [ 1, %if.then.us ], [ %conv32.us, %if.then28.us ], [ %conv61.us, %if.else34.us ]
  store i16 %.sink, ptr %arrayidx12.us, align 4
  %cmp72.us = icmp sgt i32 %sub.us, %shl71
  %or.cond86.us = and i1 %cmp75, %cmp72.us
  %conv80.us = select i1 %or.cond86.us, i8 2, i8 1
  %i_next81.us = getelementptr inbounds i8, ptr %arrayidx12.us, i64 3
  store i8 %conv80.us, ptr %i_next81.us, align 1
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, 1
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, 64
  br i1 %exitcond145.not, label %for.cond.cleanup4, label %for.body5.us

for.cond.cleanup:                                 ; preds = %for.cond.cleanup4
  ret void

for.cond.cleanup4:                                ; preds = %if.end65, %if.end65.us
  %exitcond147.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond147.not, label %for.cond.cleanup, label %for.cond1.preheader

for.body5:                                        ; preds = %for.body5.preheader, %if.end65
  %indvars.iv137 = phi i64 [ -64, %for.body5.preheader ], [ %indvars.iv.next138, %if.end65 ]
  %6 = trunc nsw i64 %indvars.iv137 to i32
  %shr = ashr i32 %6, 15
  %xor = xor i32 %shr, %6
  %sub = sub nsw i32 %xor, %shr
  %mul = shl nsw i32 %sub, 1
  %sub8 = sub nsw i32 %mul, %shr
  %sub9 = add nsw i32 %sub8, -2
  %7 = add nsw i64 %indvars.iv137, 64
  %arrayidx12 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %indvars.iv, i64 %7
  %shr13 = ashr i32 %sub9, %0
  %cmp14 = icmp slt i32 %shr13, 14
  br i1 %cmp14, label %if.then, label %if.else34

if.then:                                          ; preds = %for.body5
  %add18 = add i32 %shr13, %2
  %conv19 = trunc i32 %add18 to i8
  %i_size = getelementptr inbounds i8, ptr %arrayidx12, i64 2
  store i8 %conv19, ptr %i_size, align 2
  %and = and i32 %sub9, %sub47
  %add22 = add nuw nsw i32 %and, %shl45
  %conv23 = trunc i32 %add22 to i16
  br label %if.end65

if.else34:                                        ; preds = %for.body5
  %cmp39 = icmp eq i32 %shr13, 14
  br i1 %cmp39, label %if.then41, label %if.else52

if.then41:                                        ; preds = %if.else34
  %i_size44 = getelementptr inbounds i8, ptr %arrayidx12, i64 2
  store i8 %conv43, ptr %i_size44, align 2
  %and48 = and i32 %sub9, %sub47
  %add49 = add nuw nsw i32 %and48, %shl45
  %conv50 = trunc i32 %add49 to i16
  br label %if.end65

if.else52:                                        ; preds = %if.else34
  %sub54 = add nsw i32 %sub9, %shl53.neg
  %i_size59 = getelementptr inbounds i8, ptr %arrayidx12, i64 2
  store i8 28, ptr %i_size59, align 2
  %8 = trunc i32 %sub54 to i16
  %conv61 = add i16 %8, 4096
  br label %if.end65

if.end65:                                         ; preds = %if.else52, %if.then41, %if.then
  %conv61.sink = phi i16 [ %conv61, %if.else52 ], [ %conv50, %if.then41 ], [ %conv23, %if.then ]
  store i16 %conv61.sink, ptr %arrayidx12, align 4
  %cmp72 = icmp sgt i32 %sub, %shl71
  %or.cond86 = and i1 %cmp75, %cmp72
  %inc78 = zext i1 %or.cond86 to i32
  %i_next.1 = add nuw nsw i32 %spec.select133, %inc78
  %conv80 = trunc nuw i32 %i_next.1 to i8
  %i_next81 = getelementptr inbounds i8, ptr %arrayidx12, i64 3
  store i8 %conv80, ptr %i_next81, align 1
  %indvars.iv.next138 = add nsw i64 %indvars.iv137, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next138, 64
  br i1 %exitcond.not, label %for.cond.cleanup4, label %for.body5
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #1

attributes #0 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
