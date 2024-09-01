; ModuleID = 'x264_src/common/rectangle.c'
source_filename = "x264_src/common/rectangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x264_cache_mv_func_table = dso_local local_unnamed_addr global [10 x ptr] [ptr @x264_macroblock_cache_mv_1_1, ptr @x264_macroblock_cache_mv_2_1, ptr @x264_macroblock_cache_mv_1_2, ptr @x264_macroblock_cache_mv_2_2, ptr null, ptr @x264_macroblock_cache_mv_4_2, ptr null, ptr @x264_macroblock_cache_mv_2_4, ptr null, ptr @x264_macroblock_cache_mv_4_4], align 16, !dbg !0
@x264_cache_mvd_func_table = dso_local local_unnamed_addr global [10 x ptr] [ptr @x264_macroblock_cache_mvd_1_1, ptr @x264_macroblock_cache_mvd_2_1, ptr @x264_macroblock_cache_mvd_1_2, ptr @x264_macroblock_cache_mvd_2_2, ptr null, ptr @x264_macroblock_cache_mvd_4_2, ptr null, ptr @x264_macroblock_cache_mvd_2_4, ptr null, ptr @x264_macroblock_cache_mvd_4_4], align 16, !dbg !55
@x264_cache_ref_func_table = dso_local local_unnamed_addr global [10 x ptr] [ptr @x264_macroblock_cache_ref_1_1, ptr @x264_macroblock_cache_ref_2_1, ptr @x264_macroblock_cache_ref_1_2, ptr @x264_macroblock_cache_ref_2_2, ptr null, ptr @x264_macroblock_cache_ref_4_2, ptr null, ptr @x264_macroblock_cache_ref_2_4, ptr null, ptr @x264_macroblock_cache_ref_4_4], align 16, !dbg !63

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mv_4_4(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 !dbg !73 {
entry:
    #dbg_value(ptr %target, !75, !DIExpression(), !77)
    #dbg_value(i32 %val, !76, !DIExpression(), !77)
    #dbg_value(ptr %target, !78, !DIExpression(), !94)
    #dbg_value(i32 16, !85, !DIExpression(), !94)
    #dbg_value(i32 4, !86, !DIExpression(), !94)
    #dbg_value(i32 4, !87, !DIExpression(), !94)
    #dbg_value(i32 %val, !88, !DIExpression(), !94)
    #dbg_value(ptr %target, !89, !DIExpression(), !94)
    #dbg_value(i32 %val, !91, !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !94)
    #dbg_value(i32 %val, !92, !DIExpression(), !94)
  %conv15.i = zext i32 %val to i64, !dbg !96
  %add.i = mul nuw i64 %conv15.i, 4294967297, !dbg !97
    #dbg_value(i64 %add.i, !93, !DIExpression(), !94)
    #dbg_value(i32 32, !87, !DIExpression(), !94)
    #dbg_value(i32 4, !86, !DIExpression(), !94)
    #dbg_value(ptr %target, !89, !DIExpression(), !94)
  store i64 %add.i, ptr %target, align 8, !dbg !98
  %add.ptr95.i = getelementptr inbounds i8, ptr %target, i64 8, !dbg !107
  store i64 %add.i, ptr %add.ptr95.i, align 8, !dbg !108
  %add.ptr98.i = getelementptr inbounds i8, ptr %target, i64 32, !dbg !109
  store i64 %add.i, ptr %add.ptr98.i, align 8, !dbg !110
  %add.ptr103.i = getelementptr inbounds i8, ptr %target, i64 40, !dbg !111
  store i64 %add.i, ptr %add.ptr103.i, align 8, !dbg !112
    #dbg_value(i32 2, !86, !DIExpression(), !94)
  %add.ptr106.i = getelementptr inbounds i8, ptr %target, i64 64, !dbg !113
    #dbg_value(ptr %add.ptr106.i, !89, !DIExpression(), !94)
  store i64 %add.i, ptr %add.ptr106.i, align 8, !dbg !98
  %add.ptr95.i.1 = getelementptr inbounds i8, ptr %target, i64 72, !dbg !107
  store i64 %add.i, ptr %add.ptr95.i.1, align 8, !dbg !108
  %add.ptr98.i.1 = getelementptr inbounds i8, ptr %target, i64 96, !dbg !109
  store i64 %add.i, ptr %add.ptr98.i.1, align 8, !dbg !110
  %add.ptr103.i.1 = getelementptr inbounds i8, ptr %target, i64 104, !dbg !111
  store i64 %add.i, ptr %add.ptr103.i.1, align 8, !dbg !112
    #dbg_value(i32 0, !86, !DIExpression(), !94)
    #dbg_value(ptr %add.ptr106.i, !89, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !94)
  ret void, !dbg !114
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mv_2_4(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 !dbg !115 {
entry:
    #dbg_value(ptr %target, !117, !DIExpression(), !119)
    #dbg_value(i32 %val, !118, !DIExpression(), !119)
    #dbg_value(ptr %target, !78, !DIExpression(), !120)
    #dbg_value(i32 8, !85, !DIExpression(), !120)
    #dbg_value(i32 4, !86, !DIExpression(), !120)
    #dbg_value(i32 4, !87, !DIExpression(), !120)
    #dbg_value(i32 %val, !88, !DIExpression(), !120)
    #dbg_value(ptr %target, !89, !DIExpression(), !120)
    #dbg_value(i32 %val, !91, !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !120)
    #dbg_value(i32 %val, !92, !DIExpression(), !120)
  %conv15.i = zext i32 %val to i64, !dbg !122
  %add.i = mul nuw i64 %conv15.i, 4294967297, !dbg !123
    #dbg_value(i64 %add.i, !93, !DIExpression(), !120)
    #dbg_value(i32 32, !87, !DIExpression(), !120)
  store i64 %add.i, ptr %target, align 8, !dbg !124
  %add.ptr73.i = getelementptr inbounds i8, ptr %target, i64 32, !dbg !128
  store i64 %add.i, ptr %add.ptr73.i, align 8, !dbg !129
  %add.ptr80.i = getelementptr inbounds i8, ptr %target, i64 64, !dbg !130
  store i64 %add.i, ptr %add.ptr80.i, align 8, !dbg !131
  %add.ptr83.i = getelementptr inbounds i8, ptr %target, i64 96, !dbg !132
  store i64 %add.i, ptr %add.ptr83.i, align 8, !dbg !133
  ret void, !dbg !134
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mv_4_2(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 !dbg !135 {
entry:
    #dbg_value(ptr %target, !137, !DIExpression(), !139)
    #dbg_value(i32 %val, !138, !DIExpression(), !139)
    #dbg_value(ptr %target, !78, !DIExpression(), !140)
    #dbg_value(i32 16, !85, !DIExpression(), !140)
    #dbg_value(i32 2, !86, !DIExpression(), !140)
    #dbg_value(i32 4, !87, !DIExpression(), !140)
    #dbg_value(i32 %val, !88, !DIExpression(), !140)
    #dbg_value(ptr %target, !89, !DIExpression(), !140)
    #dbg_value(i32 %val, !91, !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !140)
    #dbg_value(i32 %val, !92, !DIExpression(), !140)
  %conv15.i = zext i32 %val to i64, !dbg !142
  %add.i = mul nuw i64 %conv15.i, 4294967297, !dbg !143
    #dbg_value(i64 %add.i, !93, !DIExpression(), !140)
    #dbg_value(i32 32, !87, !DIExpression(), !140)
    #dbg_value(i32 2, !86, !DIExpression(), !140)
    #dbg_value(ptr %target, !89, !DIExpression(), !140)
  store i64 %add.i, ptr %target, align 8, !dbg !144
  %add.ptr95.i = getelementptr inbounds i8, ptr %target, i64 8, !dbg !145
  store i64 %add.i, ptr %add.ptr95.i, align 8, !dbg !146
  %add.ptr98.i = getelementptr inbounds i8, ptr %target, i64 32, !dbg !147
  store i64 %add.i, ptr %add.ptr98.i, align 8, !dbg !148
  %add.ptr103.i = getelementptr inbounds i8, ptr %target, i64 40, !dbg !149
  store i64 %add.i, ptr %add.ptr103.i, align 8, !dbg !150
    #dbg_value(i32 0, !86, !DIExpression(), !140)
    #dbg_value(ptr %target, !89, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !140)
  ret void, !dbg !151
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mv_2_2(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 !dbg !152 {
entry:
    #dbg_value(ptr %target, !154, !DIExpression(), !156)
    #dbg_value(i32 %val, !155, !DIExpression(), !156)
    #dbg_value(ptr %target, !78, !DIExpression(), !157)
    #dbg_value(i32 8, !85, !DIExpression(), !157)
    #dbg_value(i32 2, !86, !DIExpression(), !157)
    #dbg_value(i32 4, !87, !DIExpression(), !157)
    #dbg_value(i32 %val, !88, !DIExpression(), !157)
    #dbg_value(ptr %target, !89, !DIExpression(), !157)
    #dbg_value(i32 %val, !91, !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !157)
    #dbg_value(i32 %val, !92, !DIExpression(), !157)
  %conv15.i = zext i32 %val to i64, !dbg !159
  %add.i = mul nuw i64 %conv15.i, 4294967297, !dbg !160
    #dbg_value(i64 %add.i, !93, !DIExpression(), !157)
    #dbg_value(i32 32, !87, !DIExpression(), !157)
  store i64 %add.i, ptr %target, align 8, !dbg !161
  %add.ptr73.i = getelementptr inbounds i8, ptr %target, i64 32, !dbg !162
  store i64 %add.i, ptr %add.ptr73.i, align 8, !dbg !163
  ret void, !dbg !164
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mv_2_1(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 !dbg !165 {
entry:
    #dbg_value(ptr %target, !167, !DIExpression(), !169)
    #dbg_value(i32 %val, !168, !DIExpression(), !169)
    #dbg_value(ptr %target, !78, !DIExpression(), !170)
    #dbg_value(i32 8, !85, !DIExpression(), !170)
    #dbg_value(i32 1, !86, !DIExpression(), !170)
    #dbg_value(i32 4, !87, !DIExpression(), !170)
    #dbg_value(i32 %val, !88, !DIExpression(), !170)
    #dbg_value(ptr %target, !89, !DIExpression(), !170)
    #dbg_value(i32 %val, !91, !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !170)
    #dbg_value(i32 %val, !92, !DIExpression(), !170)
  %conv15.i = zext i32 %val to i64, !dbg !172
  %add.i = mul nuw i64 %conv15.i, 4294967297, !dbg !173
    #dbg_value(i64 %add.i, !93, !DIExpression(), !170)
    #dbg_value(i32 32, !87, !DIExpression(), !170)
  store i64 %add.i, ptr %target, align 8, !dbg !174
  ret void, !dbg !175
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mv_1_2(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 !dbg !176 {
entry:
    #dbg_value(ptr %target, !178, !DIExpression(), !180)
    #dbg_value(i32 %val, !179, !DIExpression(), !180)
    #dbg_value(ptr %target, !78, !DIExpression(), !181)
    #dbg_value(i32 4, !85, !DIExpression(), !181)
    #dbg_value(i32 2, !86, !DIExpression(), !181)
    #dbg_value(i32 4, !87, !DIExpression(), !181)
    #dbg_value(i32 %val, !88, !DIExpression(), !181)
    #dbg_value(ptr %target, !89, !DIExpression(), !181)
    #dbg_value(i32 %val, !91, !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !181)
    #dbg_value(i32 %val, !92, !DIExpression(), !181)
    #dbg_value(i32 %val, !93, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !181)
    #dbg_value(i32 32, !87, !DIExpression(), !181)
  store i32 %val, ptr %target, align 4, !dbg !183
  %add.ptr49.i = getelementptr inbounds i8, ptr %target, i64 32, !dbg !185
  store i32 %val, ptr %add.ptr49.i, align 4, !dbg !186
  ret void, !dbg !187
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mv_1_1(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 !dbg !188 {
entry:
    #dbg_value(ptr %target, !190, !DIExpression(), !192)
    #dbg_value(i32 %val, !191, !DIExpression(), !192)
    #dbg_value(ptr %target, !78, !DIExpression(), !193)
    #dbg_value(i32 4, !85, !DIExpression(), !193)
    #dbg_value(i32 1, !86, !DIExpression(), !193)
    #dbg_value(i32 4, !87, !DIExpression(), !193)
    #dbg_value(i32 %val, !88, !DIExpression(), !193)
    #dbg_value(ptr %target, !89, !DIExpression(), !193)
    #dbg_value(i32 %val, !91, !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !193)
    #dbg_value(i32 %val, !92, !DIExpression(), !193)
    #dbg_value(i32 %val, !93, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !193)
    #dbg_value(i32 32, !87, !DIExpression(), !193)
  store i32 %val, ptr %target, align 4, !dbg !195
  ret void, !dbg !196
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mvd_4_4(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 !dbg !197 {
entry:
    #dbg_value(ptr %target, !199, !DIExpression(), !201)
    #dbg_value(i32 %val, !200, !DIExpression(), !201)
    #dbg_value(ptr %target, !78, !DIExpression(), !202)
    #dbg_value(i32 8, !85, !DIExpression(), !202)
    #dbg_value(i32 4, !86, !DIExpression(), !202)
    #dbg_value(i32 2, !87, !DIExpression(), !202)
    #dbg_value(i32 %val, !88, !DIExpression(), !202)
    #dbg_value(ptr %target, !89, !DIExpression(), !202)
    #dbg_value(i32 %val, !91, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !202)
  %cond14.i = mul i32 %val, 65537, !dbg !204
    #dbg_value(i32 %cond14.i, !92, !DIExpression(), !202)
  %conv15.i = zext i32 %cond14.i to i64, !dbg !205
  %add.i = mul nuw i64 %conv15.i, 4294967297, !dbg !206
    #dbg_value(i64 %add.i, !93, !DIExpression(), !202)
    #dbg_value(i32 16, !87, !DIExpression(), !202)
  store i64 %add.i, ptr %target, align 8, !dbg !207
  %add.ptr73.i = getelementptr inbounds i8, ptr %target, i64 16, !dbg !208
  store i64 %add.i, ptr %add.ptr73.i, align 8, !dbg !209
  %add.ptr80.i = getelementptr inbounds i8, ptr %target, i64 32, !dbg !210
  store i64 %add.i, ptr %add.ptr80.i, align 8, !dbg !211
  %add.ptr83.i = getelementptr inbounds i8, ptr %target, i64 48, !dbg !212
  store i64 %add.i, ptr %add.ptr83.i, align 8, !dbg !213
  ret void, !dbg !214
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mvd_2_4(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 !dbg !215 {
entry:
    #dbg_value(ptr %target, !217, !DIExpression(), !219)
    #dbg_value(i32 %val, !218, !DIExpression(), !219)
    #dbg_value(ptr %target, !78, !DIExpression(), !220)
    #dbg_value(i32 4, !85, !DIExpression(), !220)
    #dbg_value(i32 4, !86, !DIExpression(), !220)
    #dbg_value(i32 2, !87, !DIExpression(), !220)
    #dbg_value(i32 %val, !88, !DIExpression(), !220)
    #dbg_value(ptr %target, !89, !DIExpression(), !220)
    #dbg_value(i32 %val, !91, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !220)
  %cond14.i = mul i32 %val, 65537, !dbg !222
    #dbg_value(i32 %cond14.i, !92, !DIExpression(), !220)
    #dbg_value(i32 %cond14.i, !93, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !220)
    #dbg_value(i32 16, !87, !DIExpression(), !220)
  store i32 %cond14.i, ptr %target, align 4, !dbg !223
  %add.ptr49.i = getelementptr inbounds i8, ptr %target, i64 16, !dbg !224
  store i32 %cond14.i, ptr %add.ptr49.i, align 4, !dbg !225
  %add.ptr56.i = getelementptr inbounds i8, ptr %target, i64 32, !dbg !226
  store i32 %cond14.i, ptr %add.ptr56.i, align 4, !dbg !227
  %add.ptr59.i = getelementptr inbounds i8, ptr %target, i64 48, !dbg !228
  store i32 %cond14.i, ptr %add.ptr59.i, align 4, !dbg !229
  ret void, !dbg !230
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mvd_4_2(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 !dbg !231 {
entry:
    #dbg_value(ptr %target, !233, !DIExpression(), !235)
    #dbg_value(i32 %val, !234, !DIExpression(), !235)
    #dbg_value(ptr %target, !78, !DIExpression(), !236)
    #dbg_value(i32 8, !85, !DIExpression(), !236)
    #dbg_value(i32 2, !86, !DIExpression(), !236)
    #dbg_value(i32 2, !87, !DIExpression(), !236)
    #dbg_value(i32 %val, !88, !DIExpression(), !236)
    #dbg_value(ptr %target, !89, !DIExpression(), !236)
    #dbg_value(i32 %val, !91, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !236)
  %cond14.i = mul i32 %val, 65537, !dbg !238
    #dbg_value(i32 %cond14.i, !92, !DIExpression(), !236)
  %conv15.i = zext i32 %cond14.i to i64, !dbg !239
  %add.i = mul nuw i64 %conv15.i, 4294967297, !dbg !240
    #dbg_value(i64 %add.i, !93, !DIExpression(), !236)
    #dbg_value(i32 16, !87, !DIExpression(), !236)
  store i64 %add.i, ptr %target, align 8, !dbg !241
  %add.ptr73.i = getelementptr inbounds i8, ptr %target, i64 16, !dbg !242
  store i64 %add.i, ptr %add.ptr73.i, align 8, !dbg !243
  ret void, !dbg !244
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mvd_2_2(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 !dbg !245 {
entry:
    #dbg_value(ptr %target, !247, !DIExpression(), !249)
    #dbg_value(i32 %val, !248, !DIExpression(), !249)
    #dbg_value(ptr %target, !78, !DIExpression(), !250)
    #dbg_value(i32 4, !85, !DIExpression(), !250)
    #dbg_value(i32 2, !86, !DIExpression(), !250)
    #dbg_value(i32 2, !87, !DIExpression(), !250)
    #dbg_value(i32 %val, !88, !DIExpression(), !250)
    #dbg_value(ptr %target, !89, !DIExpression(), !250)
    #dbg_value(i32 %val, !91, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !250)
  %cond14.i = mul i32 %val, 65537, !dbg !252
    #dbg_value(i32 %cond14.i, !92, !DIExpression(), !250)
    #dbg_value(i32 %cond14.i, !93, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !250)
    #dbg_value(i32 16, !87, !DIExpression(), !250)
  store i32 %cond14.i, ptr %target, align 4, !dbg !253
  %add.ptr49.i = getelementptr inbounds i8, ptr %target, i64 16, !dbg !254
  store i32 %cond14.i, ptr %add.ptr49.i, align 4, !dbg !255
  ret void, !dbg !256
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mvd_2_1(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 !dbg !257 {
entry:
    #dbg_value(ptr %target, !259, !DIExpression(), !261)
    #dbg_value(i32 %val, !260, !DIExpression(), !261)
    #dbg_value(ptr %target, !78, !DIExpression(), !262)
    #dbg_value(i32 4, !85, !DIExpression(), !262)
    #dbg_value(i32 1, !86, !DIExpression(), !262)
    #dbg_value(i32 2, !87, !DIExpression(), !262)
    #dbg_value(i32 %val, !88, !DIExpression(), !262)
    #dbg_value(ptr %target, !89, !DIExpression(), !262)
    #dbg_value(i32 %val, !91, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !262)
  %cond14.i = mul i32 %val, 65537, !dbg !264
    #dbg_value(i32 %cond14.i, !92, !DIExpression(), !262)
    #dbg_value(i32 %cond14.i, !93, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !262)
    #dbg_value(i32 16, !87, !DIExpression(), !262)
  store i32 %cond14.i, ptr %target, align 4, !dbg !265
  ret void, !dbg !266
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mvd_1_2(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 !dbg !267 {
entry:
    #dbg_value(ptr %target, !269, !DIExpression(), !271)
    #dbg_value(i32 %val, !270, !DIExpression(), !271)
    #dbg_value(ptr %target, !78, !DIExpression(), !272)
    #dbg_value(i32 2, !85, !DIExpression(), !272)
    #dbg_value(i32 2, !86, !DIExpression(), !272)
    #dbg_value(i32 2, !87, !DIExpression(), !272)
    #dbg_value(i32 %val, !88, !DIExpression(), !272)
    #dbg_value(ptr %target, !89, !DIExpression(), !272)
  %conv.i = trunc i32 %val to i16, !dbg !274
    #dbg_value(i16 %conv.i, !91, !DIExpression(), !272)
    #dbg_value(!DIArgList(i32 65537, i32 %val), !92, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !272)
    #dbg_value(!DIArgList(i32 65537, i32 %val), !93, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !272)
    #dbg_value(i32 16, !87, !DIExpression(), !272)
  store i16 %conv.i, ptr %target, align 2, !dbg !275
  %add.ptr26.i = getelementptr inbounds i8, ptr %target, i64 16, !dbg !277
  store i16 %conv.i, ptr %add.ptr26.i, align 2, !dbg !278
  ret void, !dbg !279
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mvd_1_1(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 !dbg !280 {
entry:
    #dbg_value(ptr %target, !282, !DIExpression(), !284)
    #dbg_value(i32 %val, !283, !DIExpression(), !284)
    #dbg_value(ptr %target, !78, !DIExpression(), !285)
    #dbg_value(i32 2, !85, !DIExpression(), !285)
    #dbg_value(i32 1, !86, !DIExpression(), !285)
    #dbg_value(i32 2, !87, !DIExpression(), !285)
    #dbg_value(i32 %val, !88, !DIExpression(), !285)
    #dbg_value(ptr %target, !89, !DIExpression(), !285)
  %conv.i = trunc i32 %val to i16, !dbg !287
    #dbg_value(i16 %conv.i, !91, !DIExpression(), !285)
    #dbg_value(!DIArgList(i32 65537, i32 %val), !92, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !285)
    #dbg_value(!DIArgList(i32 65537, i32 %val), !93, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !285)
    #dbg_value(i32 16, !87, !DIExpression(), !285)
  store i16 %conv.i, ptr %target, align 2, !dbg !288
  ret void, !dbg !289
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_ref_4_4(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 !dbg !290 {
entry:
    #dbg_value(ptr %target, !292, !DIExpression(), !294)
    #dbg_value(i32 %val, !293, !DIExpression(), !294)
    #dbg_value(ptr %target, !78, !DIExpression(), !295)
    #dbg_value(i32 4, !85, !DIExpression(), !295)
    #dbg_value(i32 4, !86, !DIExpression(), !295)
    #dbg_value(i32 1, !87, !DIExpression(), !295)
    #dbg_value(i32 %val, !88, !DIExpression(), !295)
    #dbg_value(ptr %target, !89, !DIExpression(), !295)
    #dbg_value(i32 %val, !91, !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !295)
  %cond14.i = mul i32 %val, 16843009, !dbg !297
    #dbg_value(i32 %cond14.i, !92, !DIExpression(), !295)
    #dbg_value(i32 %cond14.i, !93, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !295)
    #dbg_value(i32 8, !87, !DIExpression(), !295)
  store i32 %cond14.i, ptr %target, align 4, !dbg !298
  %add.ptr49.i = getelementptr inbounds i8, ptr %target, i64 8, !dbg !299
  store i32 %cond14.i, ptr %add.ptr49.i, align 4, !dbg !300
  %add.ptr56.i = getelementptr inbounds i8, ptr %target, i64 16, !dbg !301
  store i32 %cond14.i, ptr %add.ptr56.i, align 4, !dbg !302
  %add.ptr59.i = getelementptr inbounds i8, ptr %target, i64 24, !dbg !303
  store i32 %cond14.i, ptr %add.ptr59.i, align 4, !dbg !304
  ret void, !dbg !305
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_ref_2_4(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 !dbg !306 {
entry:
    #dbg_value(ptr %target, !308, !DIExpression(), !310)
    #dbg_value(i32 %val, !309, !DIExpression(), !310)
    #dbg_value(ptr %target, !78, !DIExpression(), !311)
    #dbg_value(i32 2, !85, !DIExpression(), !311)
    #dbg_value(i32 4, !86, !DIExpression(), !311)
    #dbg_value(i32 1, !87, !DIExpression(), !311)
    #dbg_value(i32 %val, !88, !DIExpression(), !311)
    #dbg_value(ptr %target, !89, !DIExpression(), !311)
  %0 = trunc i32 %val to i16, !dbg !313
  %conv.i = mul i16 %0, 257, !dbg !313
    #dbg_value(i16 %conv.i, !91, !DIExpression(), !311)
    #dbg_value(!DIArgList(i32 16843009, i32 %val), !92, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !311)
    #dbg_value(!DIArgList(i32 16843009, i32 %val), !93, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !311)
    #dbg_value(i32 8, !87, !DIExpression(), !311)
  store i16 %conv.i, ptr %target, align 2, !dbg !314
  %add.ptr26.i = getelementptr inbounds i8, ptr %target, i64 8, !dbg !315
  store i16 %conv.i, ptr %add.ptr26.i, align 2, !dbg !316
  %add.ptr33.i = getelementptr inbounds i8, ptr %target, i64 16, !dbg !317
  store i16 %conv.i, ptr %add.ptr33.i, align 2, !dbg !318
  %add.ptr36.i = getelementptr inbounds i8, ptr %target, i64 24, !dbg !319
  store i16 %conv.i, ptr %add.ptr36.i, align 2, !dbg !320
  ret void, !dbg !321
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_ref_4_2(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 !dbg !322 {
entry:
    #dbg_value(ptr %target, !324, !DIExpression(), !326)
    #dbg_value(i32 %val, !325, !DIExpression(), !326)
    #dbg_value(ptr %target, !78, !DIExpression(), !327)
    #dbg_value(i32 4, !85, !DIExpression(), !327)
    #dbg_value(i32 2, !86, !DIExpression(), !327)
    #dbg_value(i32 1, !87, !DIExpression(), !327)
    #dbg_value(i32 %val, !88, !DIExpression(), !327)
    #dbg_value(ptr %target, !89, !DIExpression(), !327)
    #dbg_value(i32 %val, !91, !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !327)
  %cond14.i = mul i32 %val, 16843009, !dbg !329
    #dbg_value(i32 %cond14.i, !92, !DIExpression(), !327)
    #dbg_value(i32 %cond14.i, !93, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !327)
    #dbg_value(i32 8, !87, !DIExpression(), !327)
  store i32 %cond14.i, ptr %target, align 4, !dbg !330
  %add.ptr49.i = getelementptr inbounds i8, ptr %target, i64 8, !dbg !331
  store i32 %cond14.i, ptr %add.ptr49.i, align 4, !dbg !332
  ret void, !dbg !333
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_ref_2_2(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 !dbg !334 {
entry:
    #dbg_value(ptr %target, !336, !DIExpression(), !338)
    #dbg_value(i32 %val, !337, !DIExpression(), !338)
    #dbg_value(ptr %target, !78, !DIExpression(), !339)
    #dbg_value(i32 2, !85, !DIExpression(), !339)
    #dbg_value(i32 2, !86, !DIExpression(), !339)
    #dbg_value(i32 1, !87, !DIExpression(), !339)
    #dbg_value(i32 %val, !88, !DIExpression(), !339)
    #dbg_value(ptr %target, !89, !DIExpression(), !339)
  %0 = trunc i32 %val to i16, !dbg !341
  %conv.i = mul i16 %0, 257, !dbg !341
    #dbg_value(i16 %conv.i, !91, !DIExpression(), !339)
    #dbg_value(!DIArgList(i32 16843009, i32 %val), !92, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !339)
    #dbg_value(!DIArgList(i32 16843009, i32 %val), !93, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !339)
    #dbg_value(i32 8, !87, !DIExpression(), !339)
  store i16 %conv.i, ptr %target, align 2, !dbg !342
  %add.ptr26.i = getelementptr inbounds i8, ptr %target, i64 8, !dbg !343
  store i16 %conv.i, ptr %add.ptr26.i, align 2, !dbg !344
  ret void, !dbg !345
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_ref_2_1(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 !dbg !346 {
entry:
    #dbg_value(ptr %target, !348, !DIExpression(), !350)
    #dbg_value(i32 %val, !349, !DIExpression(), !350)
    #dbg_value(ptr %target, !78, !DIExpression(), !351)
    #dbg_value(i32 2, !85, !DIExpression(), !351)
    #dbg_value(i32 1, !86, !DIExpression(), !351)
    #dbg_value(i32 1, !87, !DIExpression(), !351)
    #dbg_value(i32 %val, !88, !DIExpression(), !351)
    #dbg_value(ptr %target, !89, !DIExpression(), !351)
  %0 = trunc i32 %val to i16, !dbg !353
  %conv.i = mul i16 %0, 257, !dbg !353
    #dbg_value(i16 %conv.i, !91, !DIExpression(), !351)
    #dbg_value(!DIArgList(i32 16843009, i32 %val), !92, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !351)
    #dbg_value(!DIArgList(i32 16843009, i32 %val), !93, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !351)
    #dbg_value(i32 8, !87, !DIExpression(), !351)
  store i16 %conv.i, ptr %target, align 2, !dbg !354
  ret void, !dbg !355
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @x264_macroblock_cache_ref_1_2(ptr nocapture readnone %target, i32 %val) #1 !dbg !356 {
entry:
    #dbg_value(ptr poison, !358, !DIExpression(), !360)
    #dbg_value(i32 poison, !359, !DIExpression(), !360)
  ret void, !dbg !361
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @x264_macroblock_cache_ref_1_1(ptr nocapture readnone %target, i32 %val) #1 !dbg !362 {
entry:
    #dbg_value(ptr poison, !364, !DIExpression(), !366)
    #dbg_value(i32 poison, !365, !DIExpression(), !366)
  ret void, !dbg !367
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x264_cache_mv_func_table", scope: !2, file: !3, line: 51, type: !57, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !54, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "x264_src/common/rectangle.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "154c58775c5a1df58d61fff843eb534a")
!4 = !{!5, !6, !11, !27, !41}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 27, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 45, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!10 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union16_t", file: !13, line: 88, baseType: !14)
!13 = !DIFile(filename: "x264_src/common/common.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!14 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !13, line: 88, size: 16, elements: !15)
!15 = !{!16, !20}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !14, file: !13, line: 88, baseType: !17, size: 16)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 25, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !9, line: 40, baseType: !19)
!19 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !14, file: !13, line: 88, baseType: !21, size: 16)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 16, elements: !25)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 24, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !9, line: 38, baseType: !24)
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !{!26}
!26 = !DISubrange(count: 2)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union32_t", file: !13, line: 89, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !13, line: 89, size: 32, elements: !30)
!30 = !{!31, !35, !37}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !29, file: !13, line: 89, baseType: !32, size: 32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 26, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 42, baseType: !34)
!34 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !29, file: !13, line: 89, baseType: !36, size: 32)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 32, elements: !25)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !29, file: !13, line: 89, baseType: !38, size: 32)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 4)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union64_t", file: !13, line: 90, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !13, line: 90, size: 64, elements: !44)
!44 = !{!45, !46, !48, !50}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !43, file: !13, line: 90, baseType: !6, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !43, file: !13, line: 90, baseType: !47, size: 64)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 64, elements: !25)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !43, file: !13, line: 90, baseType: !49, size: 64)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 64, elements: !39)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !43, file: !13, line: 90, baseType: !51, size: 64)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 8)
!54 = !{!0, !55, !63}
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "x264_cache_mvd_func_table", scope: !2, file: !3, line: 52, type: !57, isLocal: false, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 640, elements: !61)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !5, !32}
!61 = !{!62}
!62 = !DISubrange(count: 10)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "x264_cache_ref_func_table", scope: !2, file: !3, line: 53, type: !57, isLocal: false, isDefinition: true)
!65 = !{i32 7, !"Dwarf Version", i32 5}
!66 = !{i32 2, !"Debug Info Version", i32 3}
!67 = !{i32 1, !"wchar_size", i32 4}
!68 = !{i32 8, !"PIC Level", i32 2}
!69 = !{i32 7, !"PIE Level", i32 2}
!70 = !{i32 7, !"uwtable", i32 2}
!71 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!72 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!73 = distinct !DISubprogram(name: "x264_macroblock_cache_mv_4_4", scope: !3, file: !3, line: 51, type: !59, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !74)
!74 = !{!75, !76}
!75 = !DILocalVariable(name: "target", arg: 1, scope: !73, file: !3, line: 51, type: !5)
!76 = !DILocalVariable(name: "val", arg: 2, scope: !73, file: !3, line: 51, type: !32)
!77 = !DILocation(line: 0, scope: !73)
!78 = !DILocalVariable(name: "dst", arg: 1, scope: !79, file: !80, line: 22, type: !5)
!79 = distinct !DISubprogram(name: "x264_macroblock_cache_rect", scope: !80, file: !80, line: 22, type: !81, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !84)
!80 = !DIFile(filename: "x264_src/common/rectangle.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d042158b8d3023ac6d42be3fb9b0d384")
!81 = !DISubroutineType(types: !82)
!82 = !{null, !5, !83, !83, !83, !32}
!83 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!84 = !{!78, !85, !86, !87, !88, !89, !91, !92, !93}
!85 = !DILocalVariable(name: "w", arg: 2, scope: !79, file: !80, line: 22, type: !83)
!86 = !DILocalVariable(name: "h", arg: 3, scope: !79, file: !80, line: 22, type: !83)
!87 = !DILocalVariable(name: "s", arg: 4, scope: !79, file: !80, line: 22, type: !83)
!88 = !DILocalVariable(name: "v", arg: 5, scope: !79, file: !80, line: 22, type: !32)
!89 = !DILocalVariable(name: "d", scope: !79, file: !80, line: 24, type: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!91 = !DILocalVariable(name: "v2", scope: !79, file: !80, line: 25, type: !17)
!92 = !DILocalVariable(name: "v4", scope: !79, file: !80, line: 26, type: !32)
!93 = !DILocalVariable(name: "v8", scope: !79, file: !80, line: 27, type: !6)
!94 = !DILocation(line: 0, scope: !79, inlinedAt: !95)
!95 = distinct !DILocation(line: 51, column: 1, scope: !73)
!96 = !DILocation(line: 27, column: 19, scope: !79, inlinedAt: !95)
!97 = !DILocation(line: 27, column: 22, scope: !79, inlinedAt: !95)
!98 = !DILocation(line: 81, column: 32, scope: !99, inlinedAt: !95)
!99 = distinct !DILexicalBlock(scope: !100, file: !80, line: 80, column: 13)
!100 = distinct !DILexicalBlock(scope: !101, file: !80, line: 78, column: 9)
!101 = distinct !DILexicalBlock(scope: !102, file: !80, line: 77, column: 13)
!102 = distinct !DILexicalBlock(scope: !103, file: !80, line: 74, column: 5)
!103 = distinct !DILexicalBlock(scope: !104, file: !80, line: 73, column: 14)
!104 = distinct !DILexicalBlock(scope: !105, file: !80, line: 48, column: 14)
!105 = distinct !DILexicalBlock(scope: !106, file: !80, line: 39, column: 14)
!106 = distinct !DILexicalBlock(scope: !79, file: !80, line: 30, column: 9)
!107 = !DILocation(line: 82, column: 17, scope: !99, inlinedAt: !95)
!108 = !DILocation(line: 82, column: 32, scope: !99, inlinedAt: !95)
!109 = !DILocation(line: 83, column: 17, scope: !99, inlinedAt: !95)
!110 = !DILocation(line: 83, column: 32, scope: !99, inlinedAt: !95)
!111 = !DILocation(line: 84, column: 17, scope: !99, inlinedAt: !95)
!112 = !DILocation(line: 84, column: 32, scope: !99, inlinedAt: !95)
!113 = !DILocation(line: 86, column: 19, scope: !99, inlinedAt: !95)
!114 = !DILocation(line: 51, column: 1, scope: !73)
!115 = distinct !DISubprogram(name: "x264_macroblock_cache_mv_2_4", scope: !3, file: !3, line: 51, type: !59, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !116)
!116 = !{!117, !118}
!117 = !DILocalVariable(name: "target", arg: 1, scope: !115, file: !3, line: 51, type: !5)
!118 = !DILocalVariable(name: "val", arg: 2, scope: !115, file: !3, line: 51, type: !32)
!119 = !DILocation(line: 0, scope: !115)
!120 = !DILocation(line: 0, scope: !79, inlinedAt: !121)
!121 = distinct !DILocation(line: 51, column: 1, scope: !115)
!122 = !DILocation(line: 27, column: 19, scope: !79, inlinedAt: !121)
!123 = !DILocation(line: 27, column: 22, scope: !79, inlinedAt: !121)
!124 = !DILocation(line: 52, column: 26, scope: !125, inlinedAt: !121)
!125 = distinct !DILexicalBlock(scope: !126, file: !80, line: 51, column: 9)
!126 = distinct !DILexicalBlock(scope: !127, file: !80, line: 50, column: 13)
!127 = distinct !DILexicalBlock(scope: !104, file: !80, line: 49, column: 5)
!128 = !DILocation(line: 54, column: 13, scope: !125, inlinedAt: !121)
!129 = !DILocation(line: 54, column: 26, scope: !125, inlinedAt: !121)
!130 = !DILocation(line: 56, column: 13, scope: !125, inlinedAt: !121)
!131 = !DILocation(line: 56, column: 26, scope: !125, inlinedAt: !121)
!132 = !DILocation(line: 57, column: 13, scope: !125, inlinedAt: !121)
!133 = !DILocation(line: 57, column: 26, scope: !125, inlinedAt: !121)
!134 = !DILocation(line: 51, column: 1, scope: !115)
!135 = distinct !DISubprogram(name: "x264_macroblock_cache_mv_4_2", scope: !3, file: !3, line: 51, type: !59, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !136)
!136 = !{!137, !138}
!137 = !DILocalVariable(name: "target", arg: 1, scope: !135, file: !3, line: 51, type: !5)
!138 = !DILocalVariable(name: "val", arg: 2, scope: !135, file: !3, line: 51, type: !32)
!139 = !DILocation(line: 0, scope: !135)
!140 = !DILocation(line: 0, scope: !79, inlinedAt: !141)
!141 = distinct !DILocation(line: 51, column: 1, scope: !135)
!142 = !DILocation(line: 27, column: 19, scope: !79, inlinedAt: !141)
!143 = !DILocation(line: 27, column: 22, scope: !79, inlinedAt: !141)
!144 = !DILocation(line: 81, column: 32, scope: !99, inlinedAt: !141)
!145 = !DILocation(line: 82, column: 17, scope: !99, inlinedAt: !141)
!146 = !DILocation(line: 82, column: 32, scope: !99, inlinedAt: !141)
!147 = !DILocation(line: 83, column: 17, scope: !99, inlinedAt: !141)
!148 = !DILocation(line: 83, column: 32, scope: !99, inlinedAt: !141)
!149 = !DILocation(line: 84, column: 17, scope: !99, inlinedAt: !141)
!150 = !DILocation(line: 84, column: 32, scope: !99, inlinedAt: !141)
!151 = !DILocation(line: 51, column: 1, scope: !135)
!152 = distinct !DISubprogram(name: "x264_macroblock_cache_mv_2_2", scope: !3, file: !3, line: 51, type: !59, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !153)
!153 = !{!154, !155}
!154 = !DILocalVariable(name: "target", arg: 1, scope: !152, file: !3, line: 51, type: !5)
!155 = !DILocalVariable(name: "val", arg: 2, scope: !152, file: !3, line: 51, type: !32)
!156 = !DILocation(line: 0, scope: !152)
!157 = !DILocation(line: 0, scope: !79, inlinedAt: !158)
!158 = distinct !DILocation(line: 51, column: 1, scope: !152)
!159 = !DILocation(line: 27, column: 19, scope: !79, inlinedAt: !158)
!160 = !DILocation(line: 27, column: 22, scope: !79, inlinedAt: !158)
!161 = !DILocation(line: 52, column: 26, scope: !125, inlinedAt: !158)
!162 = !DILocation(line: 54, column: 13, scope: !125, inlinedAt: !158)
!163 = !DILocation(line: 54, column: 26, scope: !125, inlinedAt: !158)
!164 = !DILocation(line: 51, column: 1, scope: !152)
!165 = distinct !DISubprogram(name: "x264_macroblock_cache_mv_2_1", scope: !3, file: !3, line: 51, type: !59, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !166)
!166 = !{!167, !168}
!167 = !DILocalVariable(name: "target", arg: 1, scope: !165, file: !3, line: 51, type: !5)
!168 = !DILocalVariable(name: "val", arg: 2, scope: !165, file: !3, line: 51, type: !32)
!169 = !DILocation(line: 0, scope: !165)
!170 = !DILocation(line: 0, scope: !79, inlinedAt: !171)
!171 = distinct !DILocation(line: 51, column: 1, scope: !165)
!172 = !DILocation(line: 27, column: 19, scope: !79, inlinedAt: !171)
!173 = !DILocation(line: 27, column: 22, scope: !79, inlinedAt: !171)
!174 = !DILocation(line: 52, column: 26, scope: !125, inlinedAt: !171)
!175 = !DILocation(line: 51, column: 1, scope: !165)
!176 = distinct !DISubprogram(name: "x264_macroblock_cache_mv_1_2", scope: !3, file: !3, line: 51, type: !59, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !177)
!177 = !{!178, !179}
!178 = !DILocalVariable(name: "target", arg: 1, scope: !176, file: !3, line: 51, type: !5)
!179 = !DILocalVariable(name: "val", arg: 2, scope: !176, file: !3, line: 51, type: !32)
!180 = !DILocation(line: 0, scope: !176)
!181 = !DILocation(line: 0, scope: !79, inlinedAt: !182)
!182 = distinct !DILocation(line: 51, column: 1, scope: !176)
!183 = !DILocation(line: 41, column: 22, scope: !184, inlinedAt: !182)
!184 = distinct !DILexicalBlock(scope: !105, file: !80, line: 40, column: 5)
!185 = !DILocation(line: 43, column: 9, scope: !184, inlinedAt: !182)
!186 = !DILocation(line: 43, column: 22, scope: !184, inlinedAt: !182)
!187 = !DILocation(line: 51, column: 1, scope: !176)
!188 = distinct !DISubprogram(name: "x264_macroblock_cache_mv_1_1", scope: !3, file: !3, line: 51, type: !59, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !189)
!189 = !{!190, !191}
!190 = !DILocalVariable(name: "target", arg: 1, scope: !188, file: !3, line: 51, type: !5)
!191 = !DILocalVariable(name: "val", arg: 2, scope: !188, file: !3, line: 51, type: !32)
!192 = !DILocation(line: 0, scope: !188)
!193 = !DILocation(line: 0, scope: !79, inlinedAt: !194)
!194 = distinct !DILocation(line: 51, column: 1, scope: !188)
!195 = !DILocation(line: 41, column: 22, scope: !184, inlinedAt: !194)
!196 = !DILocation(line: 51, column: 1, scope: !188)
!197 = distinct !DISubprogram(name: "x264_macroblock_cache_mvd_4_4", scope: !3, file: !3, line: 52, type: !59, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !198)
!198 = !{!199, !200}
!199 = !DILocalVariable(name: "target", arg: 1, scope: !197, file: !3, line: 52, type: !5)
!200 = !DILocalVariable(name: "val", arg: 2, scope: !197, file: !3, line: 52, type: !32)
!201 = !DILocation(line: 0, scope: !197)
!202 = !DILocation(line: 0, scope: !79, inlinedAt: !203)
!203 = distinct !DILocation(line: 52, column: 1, scope: !197)
!204 = !DILocation(line: 26, column: 19, scope: !79, inlinedAt: !203)
!205 = !DILocation(line: 27, column: 19, scope: !79, inlinedAt: !203)
!206 = !DILocation(line: 27, column: 22, scope: !79, inlinedAt: !203)
!207 = !DILocation(line: 52, column: 26, scope: !125, inlinedAt: !203)
!208 = !DILocation(line: 54, column: 13, scope: !125, inlinedAt: !203)
!209 = !DILocation(line: 54, column: 26, scope: !125, inlinedAt: !203)
!210 = !DILocation(line: 56, column: 13, scope: !125, inlinedAt: !203)
!211 = !DILocation(line: 56, column: 26, scope: !125, inlinedAt: !203)
!212 = !DILocation(line: 57, column: 13, scope: !125, inlinedAt: !203)
!213 = !DILocation(line: 57, column: 26, scope: !125, inlinedAt: !203)
!214 = !DILocation(line: 52, column: 1, scope: !197)
!215 = distinct !DISubprogram(name: "x264_macroblock_cache_mvd_2_4", scope: !3, file: !3, line: 52, type: !59, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !216)
!216 = !{!217, !218}
!217 = !DILocalVariable(name: "target", arg: 1, scope: !215, file: !3, line: 52, type: !5)
!218 = !DILocalVariable(name: "val", arg: 2, scope: !215, file: !3, line: 52, type: !32)
!219 = !DILocation(line: 0, scope: !215)
!220 = !DILocation(line: 0, scope: !79, inlinedAt: !221)
!221 = distinct !DILocation(line: 52, column: 1, scope: !215)
!222 = !DILocation(line: 26, column: 19, scope: !79, inlinedAt: !221)
!223 = !DILocation(line: 41, column: 22, scope: !184, inlinedAt: !221)
!224 = !DILocation(line: 43, column: 9, scope: !184, inlinedAt: !221)
!225 = !DILocation(line: 43, column: 22, scope: !184, inlinedAt: !221)
!226 = !DILocation(line: 45, column: 9, scope: !184, inlinedAt: !221)
!227 = !DILocation(line: 45, column: 22, scope: !184, inlinedAt: !221)
!228 = !DILocation(line: 46, column: 9, scope: !184, inlinedAt: !221)
!229 = !DILocation(line: 46, column: 22, scope: !184, inlinedAt: !221)
!230 = !DILocation(line: 52, column: 1, scope: !215)
!231 = distinct !DISubprogram(name: "x264_macroblock_cache_mvd_4_2", scope: !3, file: !3, line: 52, type: !59, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !232)
!232 = !{!233, !234}
!233 = !DILocalVariable(name: "target", arg: 1, scope: !231, file: !3, line: 52, type: !5)
!234 = !DILocalVariable(name: "val", arg: 2, scope: !231, file: !3, line: 52, type: !32)
!235 = !DILocation(line: 0, scope: !231)
!236 = !DILocation(line: 0, scope: !79, inlinedAt: !237)
!237 = distinct !DILocation(line: 52, column: 1, scope: !231)
!238 = !DILocation(line: 26, column: 19, scope: !79, inlinedAt: !237)
!239 = !DILocation(line: 27, column: 19, scope: !79, inlinedAt: !237)
!240 = !DILocation(line: 27, column: 22, scope: !79, inlinedAt: !237)
!241 = !DILocation(line: 52, column: 26, scope: !125, inlinedAt: !237)
!242 = !DILocation(line: 54, column: 13, scope: !125, inlinedAt: !237)
!243 = !DILocation(line: 54, column: 26, scope: !125, inlinedAt: !237)
!244 = !DILocation(line: 52, column: 1, scope: !231)
!245 = distinct !DISubprogram(name: "x264_macroblock_cache_mvd_2_2", scope: !3, file: !3, line: 52, type: !59, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !246)
!246 = !{!247, !248}
!247 = !DILocalVariable(name: "target", arg: 1, scope: !245, file: !3, line: 52, type: !5)
!248 = !DILocalVariable(name: "val", arg: 2, scope: !245, file: !3, line: 52, type: !32)
!249 = !DILocation(line: 0, scope: !245)
!250 = !DILocation(line: 0, scope: !79, inlinedAt: !251)
!251 = distinct !DILocation(line: 52, column: 1, scope: !245)
!252 = !DILocation(line: 26, column: 19, scope: !79, inlinedAt: !251)
!253 = !DILocation(line: 41, column: 22, scope: !184, inlinedAt: !251)
!254 = !DILocation(line: 43, column: 9, scope: !184, inlinedAt: !251)
!255 = !DILocation(line: 43, column: 22, scope: !184, inlinedAt: !251)
!256 = !DILocation(line: 52, column: 1, scope: !245)
!257 = distinct !DISubprogram(name: "x264_macroblock_cache_mvd_2_1", scope: !3, file: !3, line: 52, type: !59, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !258)
!258 = !{!259, !260}
!259 = !DILocalVariable(name: "target", arg: 1, scope: !257, file: !3, line: 52, type: !5)
!260 = !DILocalVariable(name: "val", arg: 2, scope: !257, file: !3, line: 52, type: !32)
!261 = !DILocation(line: 0, scope: !257)
!262 = !DILocation(line: 0, scope: !79, inlinedAt: !263)
!263 = distinct !DILocation(line: 52, column: 1, scope: !257)
!264 = !DILocation(line: 26, column: 19, scope: !79, inlinedAt: !263)
!265 = !DILocation(line: 41, column: 22, scope: !184, inlinedAt: !263)
!266 = !DILocation(line: 52, column: 1, scope: !257)
!267 = distinct !DISubprogram(name: "x264_macroblock_cache_mvd_1_2", scope: !3, file: !3, line: 52, type: !59, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !268)
!268 = !{!269, !270}
!269 = !DILocalVariable(name: "target", arg: 1, scope: !267, file: !3, line: 52, type: !5)
!270 = !DILocalVariable(name: "val", arg: 2, scope: !267, file: !3, line: 52, type: !32)
!271 = !DILocation(line: 0, scope: !267)
!272 = !DILocation(line: 0, scope: !79, inlinedAt: !273)
!273 = distinct !DILocation(line: 52, column: 1, scope: !267)
!274 = !DILocation(line: 25, column: 19, scope: !79, inlinedAt: !273)
!275 = !DILocation(line: 32, column: 22, scope: !276, inlinedAt: !273)
!276 = distinct !DILexicalBlock(scope: !106, file: !80, line: 31, column: 5)
!277 = !DILocation(line: 34, column: 9, scope: !276, inlinedAt: !273)
!278 = !DILocation(line: 34, column: 22, scope: !276, inlinedAt: !273)
!279 = !DILocation(line: 52, column: 1, scope: !267)
!280 = distinct !DISubprogram(name: "x264_macroblock_cache_mvd_1_1", scope: !3, file: !3, line: 52, type: !59, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !281)
!281 = !{!282, !283}
!282 = !DILocalVariable(name: "target", arg: 1, scope: !280, file: !3, line: 52, type: !5)
!283 = !DILocalVariable(name: "val", arg: 2, scope: !280, file: !3, line: 52, type: !32)
!284 = !DILocation(line: 0, scope: !280)
!285 = !DILocation(line: 0, scope: !79, inlinedAt: !286)
!286 = distinct !DILocation(line: 52, column: 1, scope: !280)
!287 = !DILocation(line: 25, column: 19, scope: !79, inlinedAt: !286)
!288 = !DILocation(line: 32, column: 22, scope: !276, inlinedAt: !286)
!289 = !DILocation(line: 52, column: 1, scope: !280)
!290 = distinct !DISubprogram(name: "x264_macroblock_cache_ref_4_4", scope: !3, file: !3, line: 53, type: !59, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !291)
!291 = !{!292, !293}
!292 = !DILocalVariable(name: "target", arg: 1, scope: !290, file: !3, line: 53, type: !5)
!293 = !DILocalVariable(name: "val", arg: 2, scope: !290, file: !3, line: 53, type: !32)
!294 = !DILocation(line: 0, scope: !290)
!295 = !DILocation(line: 0, scope: !79, inlinedAt: !296)
!296 = distinct !DILocation(line: 53, column: 1, scope: !290)
!297 = !DILocation(line: 26, column: 19, scope: !79, inlinedAt: !296)
!298 = !DILocation(line: 41, column: 22, scope: !184, inlinedAt: !296)
!299 = !DILocation(line: 43, column: 9, scope: !184, inlinedAt: !296)
!300 = !DILocation(line: 43, column: 22, scope: !184, inlinedAt: !296)
!301 = !DILocation(line: 45, column: 9, scope: !184, inlinedAt: !296)
!302 = !DILocation(line: 45, column: 22, scope: !184, inlinedAt: !296)
!303 = !DILocation(line: 46, column: 9, scope: !184, inlinedAt: !296)
!304 = !DILocation(line: 46, column: 22, scope: !184, inlinedAt: !296)
!305 = !DILocation(line: 53, column: 1, scope: !290)
!306 = distinct !DISubprogram(name: "x264_macroblock_cache_ref_2_4", scope: !3, file: !3, line: 53, type: !59, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !307)
!307 = !{!308, !309}
!308 = !DILocalVariable(name: "target", arg: 1, scope: !306, file: !3, line: 53, type: !5)
!309 = !DILocalVariable(name: "val", arg: 2, scope: !306, file: !3, line: 53, type: !32)
!310 = !DILocation(line: 0, scope: !306)
!311 = !DILocation(line: 0, scope: !79, inlinedAt: !312)
!312 = distinct !DILocation(line: 53, column: 1, scope: !306)
!313 = !DILocation(line: 25, column: 19, scope: !79, inlinedAt: !312)
!314 = !DILocation(line: 32, column: 22, scope: !276, inlinedAt: !312)
!315 = !DILocation(line: 34, column: 9, scope: !276, inlinedAt: !312)
!316 = !DILocation(line: 34, column: 22, scope: !276, inlinedAt: !312)
!317 = !DILocation(line: 36, column: 9, scope: !276, inlinedAt: !312)
!318 = !DILocation(line: 36, column: 22, scope: !276, inlinedAt: !312)
!319 = !DILocation(line: 37, column: 9, scope: !276, inlinedAt: !312)
!320 = !DILocation(line: 37, column: 22, scope: !276, inlinedAt: !312)
!321 = !DILocation(line: 53, column: 1, scope: !306)
!322 = distinct !DISubprogram(name: "x264_macroblock_cache_ref_4_2", scope: !3, file: !3, line: 53, type: !59, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !323)
!323 = !{!324, !325}
!324 = !DILocalVariable(name: "target", arg: 1, scope: !322, file: !3, line: 53, type: !5)
!325 = !DILocalVariable(name: "val", arg: 2, scope: !322, file: !3, line: 53, type: !32)
!326 = !DILocation(line: 0, scope: !322)
!327 = !DILocation(line: 0, scope: !79, inlinedAt: !328)
!328 = distinct !DILocation(line: 53, column: 1, scope: !322)
!329 = !DILocation(line: 26, column: 19, scope: !79, inlinedAt: !328)
!330 = !DILocation(line: 41, column: 22, scope: !184, inlinedAt: !328)
!331 = !DILocation(line: 43, column: 9, scope: !184, inlinedAt: !328)
!332 = !DILocation(line: 43, column: 22, scope: !184, inlinedAt: !328)
!333 = !DILocation(line: 53, column: 1, scope: !322)
!334 = distinct !DISubprogram(name: "x264_macroblock_cache_ref_2_2", scope: !3, file: !3, line: 53, type: !59, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !335)
!335 = !{!336, !337}
!336 = !DILocalVariable(name: "target", arg: 1, scope: !334, file: !3, line: 53, type: !5)
!337 = !DILocalVariable(name: "val", arg: 2, scope: !334, file: !3, line: 53, type: !32)
!338 = !DILocation(line: 0, scope: !334)
!339 = !DILocation(line: 0, scope: !79, inlinedAt: !340)
!340 = distinct !DILocation(line: 53, column: 1, scope: !334)
!341 = !DILocation(line: 25, column: 19, scope: !79, inlinedAt: !340)
!342 = !DILocation(line: 32, column: 22, scope: !276, inlinedAt: !340)
!343 = !DILocation(line: 34, column: 9, scope: !276, inlinedAt: !340)
!344 = !DILocation(line: 34, column: 22, scope: !276, inlinedAt: !340)
!345 = !DILocation(line: 53, column: 1, scope: !334)
!346 = distinct !DISubprogram(name: "x264_macroblock_cache_ref_2_1", scope: !3, file: !3, line: 53, type: !59, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !347)
!347 = !{!348, !349}
!348 = !DILocalVariable(name: "target", arg: 1, scope: !346, file: !3, line: 53, type: !5)
!349 = !DILocalVariable(name: "val", arg: 2, scope: !346, file: !3, line: 53, type: !32)
!350 = !DILocation(line: 0, scope: !346)
!351 = !DILocation(line: 0, scope: !79, inlinedAt: !352)
!352 = distinct !DILocation(line: 53, column: 1, scope: !346)
!353 = !DILocation(line: 25, column: 19, scope: !79, inlinedAt: !352)
!354 = !DILocation(line: 32, column: 22, scope: !276, inlinedAt: !352)
!355 = !DILocation(line: 53, column: 1, scope: !346)
!356 = distinct !DISubprogram(name: "x264_macroblock_cache_ref_1_2", scope: !3, file: !3, line: 53, type: !59, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !357)
!357 = !{!358, !359}
!358 = !DILocalVariable(name: "target", arg: 1, scope: !356, file: !3, line: 53, type: !5)
!359 = !DILocalVariable(name: "val", arg: 2, scope: !356, file: !3, line: 53, type: !32)
!360 = !DILocation(line: 0, scope: !356)
!361 = !DILocation(line: 53, column: 1, scope: !356)
!362 = distinct !DISubprogram(name: "x264_macroblock_cache_ref_1_1", scope: !3, file: !3, line: 53, type: !59, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !363)
!363 = !{!364, !365}
!364 = !DILocalVariable(name: "target", arg: 1, scope: !362, file: !3, line: 53, type: !5)
!365 = !DILocalVariable(name: "val", arg: 2, scope: !362, file: !3, line: 53, type: !32)
!366 = !DILocation(line: 0, scope: !362)
!367 = !DILocation(line: 53, column: 1, scope: !362)
