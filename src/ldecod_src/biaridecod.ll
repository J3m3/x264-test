; ModuleID = 'ldecod_src/biaridecod.c'
source_filename = "ldecod_src/biaridecod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"arideco_create_decoding_environment: dep\00", align 1, !dbg !0
@errortext = external global [300 x i8], align 16
@.str.1 = private unnamed_addr constant [33 x i8] c"Error freeing dep (NULL pointer)\00", align 1, !dbg !7
@rLPS_table_64x4 = internal unnamed_addr constant [64 x [4 x i8]] [[4 x i8] c"\80\B0\D0\F0", [4 x i8] c"\80\A7\C5\E3", [4 x i8] c"\80\9E\BB\D8", [4 x i8] c"{\96\B2\CD", [4 x i8] c"t\8E\A9\C3", [4 x i8] c"o\87\A0\B9", [4 x i8] c"i\80\98\AF", [4 x i8] c"dz\90\A6", [4 x i8] c"_t\89\9E", [4 x i8] c"Zn\82\96", [4 x i8] c"Uh{\8E", [4 x i8] c"Qcu\87", [4 x i8] c"M^o\80", [4 x i8] c"IYiz", [4 x i8] c"EUdt", [4 x i8] c"BP_n", [4 x i8] c">LZh", [4 x i8] c";HVc", [4 x i8] c"8EQ^", [4 x i8] c"5AMY", [4 x i8] c"3>IU", [4 x i8] c"0;EP", [4 x i8] c".8BL", [4 x i8] c"+5?H", [4 x i8] c")2;E", [4 x i8] c"'08A", [4 x i8] c"%-6>", [4 x i8] c"#+3;", [4 x i8] c"!)08", [4 x i8] c" '.5", [4 x i8] c"\1E%+2", [4 x i8] c"\1D#)0", [4 x i8] c"\1B!'-", [4 x i8] c"\1A\1F%+", [4 x i8] c"\18\1E#)", [4 x i8] c"\17\1C!'", [4 x i8] c"\16\1B %", [4 x i8] c"\15\1A\1E#", [4 x i8] c"\14\18\1D!", [4 x i8] c"\13\17\1B\1F", [4 x i8] c"\12\16\1A\1E", [4 x i8] c"\11\15\19\1C", [4 x i8] c"\10\14\17\1B", [4 x i8] c"\0F\13\16\19", [4 x i8] c"\0E\12\15\18", [4 x i8] c"\0E\11\14\17", [4 x i8] c"\0D\10\13\16", [4 x i8] c"\0C\0F\12\15", [4 x i8] c"\0C\0E\11\14", [4 x i8] c"\0B\0E\10\13", [4 x i8] c"\0B\0D\0F\12", [4 x i8] c"\0A\0C\0F\11", [4 x i8] c"\0A\0C\0E\10", [4 x i8] c"\09\0B\0D\0F", [4 x i8] c"\09\0B\0C\0E", [4 x i8] c"\08\0A\0C\0E", [4 x i8] c"\08\09\0B\0D", [4 x i8] c"\07\09\0B\0C", [4 x i8] c"\07\09\0A\0C", [4 x i8] c"\07\08\0A\0B", [4 x i8] c"\06\08\09\0B", [4 x i8] c"\06\07\09\0A", [4 x i8] c"\06\07\08\09", [4 x i8] c"\02\02\02\02"], align 16, !dbg !12
@AC_next_state_MPS_64 = internal unnamed_addr constant [64 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>>?", align 16, !dbg !21
@renorm_table_32 = internal unnamed_addr constant [32 x i8] c"\06\05\04\04\03\03\03\03\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 16, !dbg !30
@AC_next_state_LPS_64 = internal unnamed_addr constant [64 x i8] c"\00\00\01\02\02\04\04\05\06\07\08\09\09\0B\0B\0C\0D\0D\0F\0F\10\10\12\12\13\13\15\15\16\16\17\18\18\19\1A\1A\1B\1B\1C\1D\1D\1E\1E\1E\1F  !!!\22\22###$$$%%%&&?", align 16, !dbg !35

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @arideco_create_decoding_environment() local_unnamed_addr #0 !dbg !48 {
entry:
  %call = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #9, !dbg !68
    #dbg_value(ptr %call, !67, !DIExpression(), !70)
  %cmp = icmp eq ptr %call, null, !dbg !71
  br i1 %cmp, label %if.then, label %if.end, !dbg !72

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #10, !dbg !73
  br label %if.end, !dbg !73

if.end:                                           ; preds = %if.then, %entry
  ret ptr %call, !dbg !74
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !75 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !82 void @no_mem_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @arideco_delete_decoding_environment(ptr noundef %dep) local_unnamed_addr #0 !dbg !87 {
entry:
    #dbg_value(ptr %dep, !91, !DIExpression(), !92)
  %cmp = icmp eq ptr %dep, null, !dbg !93
  br i1 %cmp, label %if.then, label %if.else, !dbg !95

if.then:                                          ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(33) @errortext, ptr noundef nonnull align 1 dereferenceable(33) @.str.1, i64 33, i1 false), !dbg !96
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 200) #10, !dbg !98
  br label %if.end, !dbg !99

if.else:                                          ; preds = %entry
  tail call void @free(ptr noundef nonnull %dep) #10, !dbg !100
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !101
}

declare !dbg !102 void @error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !105 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @arideco_done_decoding(ptr nocapture noundef readonly %dep) local_unnamed_addr #4 !dbg !108 {
entry:
    #dbg_value(ptr %dep, !110, !DIExpression(), !111)
  %Dcodestrm_len = getelementptr inbounds i8, ptr %dep, i64 24, !dbg !112
  %0 = load ptr, ptr %Dcodestrm_len, align 8, !dbg !112
  %1 = load i32, ptr %0, align 4, !dbg !113
  %inc = add nsw i32 %1, 1, !dbg !113
  store i32 %inc, ptr %0, align 4, !dbg !113
  ret void, !dbg !114
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 256) i32 @getbyte(ptr nocapture noundef readonly %dep) local_unnamed_addr #4 !dbg !115 {
entry:
    #dbg_value(ptr %dep, !119, !DIExpression(), !120)
  %Dcodestrm = getelementptr inbounds i8, ptr %dep, i64 16, !dbg !121
  %0 = load ptr, ptr %Dcodestrm, align 8, !dbg !121
  %Dcodestrm_len = getelementptr inbounds i8, ptr %dep, i64 24, !dbg !122
  %1 = load ptr, ptr %Dcodestrm_len, align 8, !dbg !122
  %2 = load i32, ptr %1, align 4, !dbg !123
  %inc = add nsw i32 %2, 1, !dbg !123
  store i32 %inc, ptr %1, align 4, !dbg !123
  %idxprom = sext i32 %2 to i64, !dbg !124
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom, !dbg !124
  %3 = load i8, ptr %arrayidx, align 1, !dbg !124
  %conv = zext i8 %3 to i32, !dbg !124
  ret i32 %conv, !dbg !125
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 65536) i32 @getword(ptr nocapture noundef readonly %dep) local_unnamed_addr #4 !dbg !126 {
entry:
    #dbg_value(ptr %dep, !128, !DIExpression(), !130)
  %Dcodestrm_len = getelementptr inbounds i8, ptr %dep, i64 24, !dbg !131
  %0 = load ptr, ptr %Dcodestrm_len, align 8, !dbg !131
  %1 = load i32, ptr %0, align 4, !dbg !132
    #dbg_value(i32 %1, !129, !DIExpression(), !130)
  %add = add nsw i32 %1, 2, !dbg !133
  store i32 %add, ptr %0, align 4, !dbg !133
  %Dcodestrm = getelementptr inbounds i8, ptr %dep, i64 16, !dbg !134
  %2 = load ptr, ptr %Dcodestrm, align 8, !dbg !134
  %idxprom = sext i32 %1 to i64, !dbg !135
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom, !dbg !135
  %3 = load i8, ptr %arrayidx, align 1, !dbg !135
  %conv = zext i8 %3 to i32, !dbg !135
  %shl = shl nuw nsw i32 %conv, 8, !dbg !136
  %arrayidx5 = getelementptr i8, ptr %arrayidx, i64 1, !dbg !137
  %4 = load i8, ptr %arrayidx5, align 1, !dbg !137
  %conv6 = zext i8 %4 to i32, !dbg !137
  %or = or disjoint i32 %shl, %conv6, !dbg !138
  ret i32 %or, !dbg !139
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @arideco_start_decoding(ptr nocapture noundef %dep, ptr noundef %code_buffer, i32 noundef %firstbyte, ptr noundef %code_len) local_unnamed_addr #4 !dbg !140 {
entry:
    #dbg_value(ptr %dep, !145, !DIExpression(), !149)
    #dbg_value(ptr %code_buffer, !146, !DIExpression(), !149)
    #dbg_value(i32 %firstbyte, !147, !DIExpression(), !149)
    #dbg_value(ptr %code_len, !148, !DIExpression(), !149)
  %Dcodestrm = getelementptr inbounds i8, ptr %dep, i64 16, !dbg !150
  store ptr %code_buffer, ptr %Dcodestrm, align 8, !dbg !151
  %Dcodestrm_len = getelementptr inbounds i8, ptr %dep, i64 24, !dbg !152
  store ptr %code_len, ptr %Dcodestrm_len, align 8, !dbg !153
  store i32 %firstbyte, ptr %code_len, align 4, !dbg !154
    #dbg_value(ptr %dep, !119, !DIExpression(), !155)
  %0 = load ptr, ptr %Dcodestrm, align 8, !dbg !157
  %1 = load ptr, ptr %Dcodestrm_len, align 8, !dbg !158
  %2 = load i32, ptr %1, align 4, !dbg !159
  %inc.i = add nsw i32 %2, 1, !dbg !159
  store i32 %inc.i, ptr %1, align 4, !dbg !159
  %idxprom.i = sext i32 %2 to i64, !dbg !160
  %arrayidx.i = getelementptr inbounds i8, ptr %0, i64 %idxprom.i, !dbg !160
  %3 = load i8, ptr %arrayidx.i, align 1, !dbg !160
  %conv.i = zext i8 %3 to i32, !dbg !160
  %Dvalue = getelementptr inbounds i8, ptr %dep, i64 4, !dbg !161
  store i32 %conv.i, ptr %Dvalue, align 4, !dbg !162
  %shl = shl nuw nsw i32 %conv.i, 16, !dbg !163
    #dbg_value(ptr %dep, !128, !DIExpression(), !164)
  %4 = load ptr, ptr %Dcodestrm_len, align 8, !dbg !166
  %5 = load i32, ptr %4, align 4, !dbg !167
    #dbg_value(i32 %5, !129, !DIExpression(), !164)
  %add.i = add nsw i32 %5, 2, !dbg !168
  store i32 %add.i, ptr %4, align 4, !dbg !168
  %6 = load ptr, ptr %Dcodestrm, align 8, !dbg !169
  %idxprom.i16 = sext i32 %5 to i64, !dbg !170
  %arrayidx.i17 = getelementptr inbounds i8, ptr %6, i64 %idxprom.i16, !dbg !170
  %7 = load i8, ptr %arrayidx.i17, align 1, !dbg !170
  %conv.i18 = zext i8 %7 to i32, !dbg !170
  %shl.i = shl nuw nsw i32 %conv.i18, 8, !dbg !171
  %arrayidx5.i = getelementptr i8, ptr %arrayidx.i17, i64 1, !dbg !172
  %8 = load i8, ptr %arrayidx5.i, align 1, !dbg !172
  %conv6.i = zext i8 %8 to i32, !dbg !172
  %or.i = or disjoint i32 %shl, %conv6.i, !dbg !173
  %or = or disjoint i32 %or.i, %shl.i, !dbg !174
  store i32 %or, ptr %Dvalue, align 4, !dbg !175
  %DbitsLeft = getelementptr inbounds i8, ptr %dep, i64 8, !dbg !176
  store i32 15, ptr %DbitsLeft, align 8, !dbg !177
  store i32 510, ptr %dep, align 8, !dbg !178
  ret void, !dbg !179
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @arideco_bits_read(ptr nocapture noundef readonly %dep) local_unnamed_addr #5 !dbg !180 {
entry:
    #dbg_value(ptr %dep, !184, !DIExpression(), !186)
  %Dcodestrm_len = getelementptr inbounds i8, ptr %dep, i64 24, !dbg !187
  %0 = load ptr, ptr %Dcodestrm_len, align 8, !dbg !187
  %1 = load i32, ptr %0, align 4, !dbg !188
  %shl = shl i32 %1, 3, !dbg !189
  %DbitsLeft = getelementptr inbounds i8, ptr %dep, i64 8, !dbg !190
  %2 = load i32, ptr %DbitsLeft, align 8, !dbg !190
  %sub = sub nsw i32 %shl, %2, !dbg !191
    #dbg_value(i32 %sub, !185, !DIExpression(), !186)
  ret i32 %sub, !dbg !192
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 256) i32 @biari_decode_symbol(ptr nocapture noundef %dep, ptr nocapture noundef %bi_ct) local_unnamed_addr #4 !dbg !193 {
entry:
    #dbg_value(ptr %dep, !205, !DIExpression(), !218)
    #dbg_value(ptr %bi_ct, !206, !DIExpression(), !218)
  %MPS = getelementptr inbounds i8, ptr %bi_ct, i64 2, !dbg !219
  %0 = load i8, ptr %MPS, align 2, !dbg !219
  %conv = zext i8 %0 to i32, !dbg !220
    #dbg_value(i32 %conv, !207, !DIExpression(), !218)
  %Dvalue = getelementptr inbounds i8, ptr %dep, i64 4, !dbg !221
    #dbg_value(ptr %Dvalue, !208, !DIExpression(), !218)
    #dbg_value(ptr %dep, !210, !DIExpression(), !218)
    #dbg_value(ptr %bi_ct, !211, !DIExpression(), !218)
  %1 = load i16, ptr %bi_ct, align 2, !dbg !222
  %idxprom = zext i16 %1 to i64, !dbg !223
  %2 = load i32, ptr %dep, align 4, !dbg !224
  %shr = lshr i32 %2, 6, !dbg !225
  %and = and i32 %shr, 3, !dbg !226
  %idxprom2 = zext nneg i32 %and to i64, !dbg !223
  %arrayidx3 = getelementptr inbounds [64 x [4 x i8]], ptr @rLPS_table_64x4, i64 0, i64 %idxprom, i64 %idxprom2, !dbg !223
  %3 = load i8, ptr %arrayidx3, align 1, !dbg !223
  %conv4 = zext i8 %3 to i32, !dbg !223
    #dbg_value(i32 %conv4, !213, !DIExpression(), !218)
  %DbitsLeft5 = getelementptr inbounds i8, ptr %dep, i64 8, !dbg !227
    #dbg_value(ptr %DbitsLeft5, !214, !DIExpression(), !218)
  %sub = sub i32 %2, %conv4, !dbg !228
  store i32 %sub, ptr %dep, align 4, !dbg !228
  %4 = load i32, ptr %Dvalue, align 4, !dbg !229
  %5 = load i32, ptr %DbitsLeft5, align 4, !dbg !230
  %shl = shl i32 %sub, %5, !dbg !231
  %cmp = icmp ult i32 %4, %shl, !dbg !232
  br i1 %cmp, label %if.then, label %if.else14, !dbg !233

if.then:                                          ; preds = %entry
  %6 = load i16, ptr %bi_ct, align 2, !dbg !234
  %idxprom7 = zext i16 %6 to i64, !dbg !236
  %arrayidx8 = getelementptr inbounds [64 x i8], ptr @AC_next_state_MPS_64, i64 0, i64 %idxprom7, !dbg !236
  %7 = load i8, ptr %arrayidx8, align 1, !dbg !236
  %conv9 = zext i8 %7 to i16, !dbg !236
  store i16 %conv9, ptr %bi_ct, align 2, !dbg !237
  %8 = load i32, ptr %dep, align 4, !dbg !238
  %cmp10 = icmp ugt i32 %8, 255, !dbg !240
  br i1 %cmp10, label %cleanup, label %if.else, !dbg !241

if.else:                                          ; preds = %if.then
  %shl13 = shl nuw nsw i32 %8, 1, !dbg !242
  store i32 %shl13, ptr %dep, align 4, !dbg !242
  %9 = load i32, ptr %DbitsLeft5, align 4, !dbg !243
  %dec = add nsw i32 %9, -1, !dbg !243
  store i32 %dec, ptr %DbitsLeft5, align 4, !dbg !243
  br label %if.end34, !dbg !244

if.else14:                                        ; preds = %entry
  %shr15 = lshr i32 %conv4, 3, !dbg !245
  %idxprom17 = zext nneg i32 %shr15 to i64, !dbg !246
  %arrayidx18 = getelementptr inbounds [32 x i8], ptr @renorm_table_32, i64 0, i64 %idxprom17, !dbg !246
  %10 = load i8, ptr %arrayidx18, align 1, !dbg !246
  %conv19 = zext i8 %10 to i32, !dbg !246
    #dbg_value(i32 %conv19, !215, !DIExpression(), !247)
  %sub22 = sub i32 %4, %shl, !dbg !248
  store i32 %sub22, ptr %Dvalue, align 4, !dbg !248
  %shl23 = shl i32 %conv4, %conv19, !dbg !249
  store i32 %shl23, ptr %dep, align 4, !dbg !250
  %sub24 = sub nsw i32 %5, %conv19, !dbg !251
  store i32 %sub24, ptr %DbitsLeft5, align 4, !dbg !251
  %xor = xor i32 %conv, 1, !dbg !252
    #dbg_value(i32 %xor, !207, !DIExpression(), !218)
  %11 = load i16, ptr %bi_ct, align 2, !dbg !253
  %tobool.not = icmp eq i16 %11, 0, !dbg !255
  br i1 %tobool.not, label %if.then25, label %if.end30, !dbg !256

if.then25:                                        ; preds = %if.else14
  %12 = load i8, ptr %MPS, align 2, !dbg !257
  %13 = xor i8 %12, 1, !dbg !257
  store i8 %13, ptr %MPS, align 2, !dbg !257
  br label %if.end30, !dbg !258

if.end30:                                         ; preds = %if.then25, %if.else14
  %idxprom31 = zext i16 %11 to i64, !dbg !259
  %arrayidx32 = getelementptr inbounds [64 x i8], ptr @AC_next_state_LPS_64, i64 0, i64 %idxprom31, !dbg !259
  %14 = load i8, ptr %arrayidx32, align 1, !dbg !259
  %conv33 = zext i8 %14 to i16, !dbg !259
  store i16 %conv33, ptr %bi_ct, align 2, !dbg !260
  %.pr = load i32, ptr %DbitsLeft5, align 4, !dbg !261
  br label %if.end34

if.end34:                                         ; preds = %if.end30, %if.else
  %15 = phi i32 [ %.pr, %if.end30 ], [ %dec, %if.else ], !dbg !261
  %bit.0 = phi i32 [ %xor, %if.end30 ], [ %conv, %if.else ], !dbg !218
    #dbg_value(i32 %bit.0, !207, !DIExpression(), !218)
  %cmp35 = icmp sgt i32 %15, 0, !dbg !263
  br i1 %cmp35, label %cleanup, label %if.else38, !dbg !264

if.else38:                                        ; preds = %if.end34
  %16 = load i32, ptr %Dvalue, align 4, !dbg !265
  %shl39 = shl i32 %16, 16, !dbg !265
  store i32 %shl39, ptr %Dvalue, align 4, !dbg !265
    #dbg_value(ptr %dep, !128, !DIExpression(), !267)
  %Dcodestrm_len.i = getelementptr inbounds i8, ptr %dep, i64 24, !dbg !269
  %17 = load ptr, ptr %Dcodestrm_len.i, align 8, !dbg !269
  %18 = load i32, ptr %17, align 4, !dbg !270
    #dbg_value(i32 %18, !129, !DIExpression(), !267)
  %add.i = add nsw i32 %18, 2, !dbg !271
  store i32 %add.i, ptr %17, align 4, !dbg !271
  %Dcodestrm.i = getelementptr inbounds i8, ptr %dep, i64 16, !dbg !272
  %19 = load ptr, ptr %Dcodestrm.i, align 8, !dbg !272
  %idxprom.i = sext i32 %18 to i64, !dbg !273
  %arrayidx.i = getelementptr inbounds i8, ptr %19, i64 %idxprom.i, !dbg !273
  %20 = load i8, ptr %arrayidx.i, align 1, !dbg !273
  %conv.i = zext i8 %20 to i32, !dbg !273
  %shl.i = shl nuw nsw i32 %conv.i, 8, !dbg !274
  %arrayidx5.i = getelementptr i8, ptr %arrayidx.i, i64 1, !dbg !275
  %21 = load i8, ptr %arrayidx5.i, align 1, !dbg !275
  %conv6.i = zext i8 %21 to i32, !dbg !275
  %or.i = or disjoint i32 %shl.i, %conv6.i, !dbg !276
  %22 = load i32, ptr %Dvalue, align 4, !dbg !277
  %or = or i32 %or.i, %22, !dbg !277
  store i32 %or, ptr %Dvalue, align 4, !dbg !277
  %23 = load i32, ptr %DbitsLeft5, align 4, !dbg !278
  %add = add nsw i32 %23, 16, !dbg !278
  store i32 %add, ptr %DbitsLeft5, align 4, !dbg !278
  br label %cleanup, !dbg !279

cleanup:                                          ; preds = %if.end34, %if.then, %if.else38
  %retval.0 = phi i32 [ %bit.0, %if.else38 ], [ %conv, %if.then ], [ %bit.0, %if.end34 ], !dbg !218
  ret i32 %retval.0, !dbg !280
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @biari_decode_symbol_eq_prob(ptr nocapture noundef %dep) local_unnamed_addr #4 !dbg !281 {
entry:
    #dbg_value(ptr %dep, !283, !DIExpression(), !287)
  %Dvalue = getelementptr inbounds i8, ptr %dep, i64 4, !dbg !288
    #dbg_value(ptr %Dvalue, !285, !DIExpression(), !287)
  %DbitsLeft1 = getelementptr inbounds i8, ptr %dep, i64 8, !dbg !289
    #dbg_value(ptr %DbitsLeft1, !286, !DIExpression(), !287)
  %0 = load i32, ptr %DbitsLeft1, align 4, !dbg !290
  %dec = add nsw i32 %0, -1, !dbg !290
  store i32 %dec, ptr %DbitsLeft1, align 4, !dbg !290
  %cmp = icmp eq i32 %dec, 0, !dbg !292
  %.pre = load i32, ptr %Dvalue, align 4, !dbg !293
  br i1 %cmp, label %if.then, label %if.end, !dbg !294

if.then:                                          ; preds = %entry
  %shl = shl i32 %.pre, 16, !dbg !295
    #dbg_value(ptr %dep, !128, !DIExpression(), !297)
  %Dcodestrm_len.i = getelementptr inbounds i8, ptr %dep, i64 24, !dbg !299
  %1 = load ptr, ptr %Dcodestrm_len.i, align 8, !dbg !299
  %2 = load i32, ptr %1, align 4, !dbg !300
    #dbg_value(i32 %2, !129, !DIExpression(), !297)
  %add.i = add nsw i32 %2, 2, !dbg !301
  store i32 %add.i, ptr %1, align 4, !dbg !301
  %Dcodestrm.i = getelementptr inbounds i8, ptr %dep, i64 16, !dbg !302
  %3 = load ptr, ptr %Dcodestrm.i, align 8, !dbg !302
  %idxprom.i = sext i32 %2 to i64, !dbg !303
  %arrayidx.i = getelementptr inbounds i8, ptr %3, i64 %idxprom.i, !dbg !303
  %4 = load i8, ptr %arrayidx.i, align 1, !dbg !303
  %conv.i = zext i8 %4 to i32, !dbg !303
  %shl.i = shl nuw nsw i32 %conv.i, 8, !dbg !304
  %arrayidx5.i = getelementptr i8, ptr %arrayidx.i, i64 1, !dbg !305
  %5 = load i8, ptr %arrayidx5.i, align 1, !dbg !305
  %conv6.i = zext i8 %5 to i32, !dbg !305
  %or.i = or disjoint i32 %shl, %conv6.i, !dbg !306
  %or = or disjoint i32 %or.i, %shl.i, !dbg !307
  store i32 %or, ptr %Dvalue, align 4, !dbg !308
  store i32 16, ptr %DbitsLeft1, align 4, !dbg !309
  br label %if.end, !dbg !310

if.end:                                           ; preds = %if.then, %entry
  %6 = phi i32 [ 16, %if.then ], [ %dec, %entry ], !dbg !311
  %7 = phi i32 [ %or, %if.then ], [ %.pre, %entry ], !dbg !293
  %8 = load i32, ptr %dep, align 8, !dbg !312
  %shl2 = shl i32 %8, %6, !dbg !313
  %sub = sub i32 %7, %shl2, !dbg !314
    #dbg_value(i32 %sub, !284, !DIExpression(), !287)
  %cmp3 = icmp slt i32 %sub, 0, !dbg !315
  br i1 %cmp3, label %cleanup, label %if.else, !dbg !317

if.else:                                          ; preds = %if.end
  store i32 %sub, ptr %Dvalue, align 4, !dbg !318
  br label %cleanup, !dbg !320

cleanup:                                          ; preds = %if.end, %if.else
  %retval.0 = phi i32 [ 1, %if.else ], [ 0, %if.end ], !dbg !321
  ret i32 %retval.0, !dbg !322
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @biari_decode_final(ptr nocapture noundef %dep) local_unnamed_addr #4 !dbg !323 {
entry:
    #dbg_value(ptr %dep, !325, !DIExpression(), !328)
  %0 = load i32, ptr %dep, align 8, !dbg !329
  %sub = add i32 %0, -2, !dbg !330
    #dbg_value(i32 %sub, !326, !DIExpression(), !328)
  %Dvalue = getelementptr inbounds i8, ptr %dep, i64 4, !dbg !331
  %1 = load i32, ptr %Dvalue, align 4, !dbg !331
    #dbg_value(i32 %1, !327, !DIExpression(), !328)
  %DbitsLeft = getelementptr inbounds i8, ptr %dep, i64 8, !dbg !332
  %2 = load i32, ptr %DbitsLeft, align 8, !dbg !332
  %shl = shl i32 %sub, %2, !dbg !333
  %sub1 = sub i32 %1, %shl, !dbg !334
    #dbg_value(i32 %sub1, !327, !DIExpression(), !328)
  %cmp = icmp slt i32 %sub1, 0, !dbg !335
  br i1 %cmp, label %if.then, label %cleanup, !dbg !337

if.then:                                          ; preds = %entry
  %cmp2 = icmp ugt i32 %sub, 255, !dbg !338
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !341

if.then3:                                         ; preds = %if.then
  store i32 %sub, ptr %dep, align 8, !dbg !342
  br label %cleanup, !dbg !344

if.else:                                          ; preds = %if.then
  %shl5 = shl nuw nsw i32 %sub, 1, !dbg !345
  store i32 %shl5, ptr %dep, align 8, !dbg !347
  %dec = add nsw i32 %2, -1, !dbg !348
  store i32 %dec, ptr %DbitsLeft, align 8, !dbg !348
  %cmp8 = icmp sgt i32 %2, 1, !dbg !350
  br i1 %cmp8, label %cleanup, label %if.else10, !dbg !351

if.else10:                                        ; preds = %if.else
  %shl12 = shl i32 %1, 16, !dbg !352
    #dbg_value(ptr %dep, !128, !DIExpression(), !354)
  %Dcodestrm_len.i = getelementptr inbounds i8, ptr %dep, i64 24, !dbg !356
  %3 = load ptr, ptr %Dcodestrm_len.i, align 8, !dbg !356
  %4 = load i32, ptr %3, align 4, !dbg !357
    #dbg_value(i32 %4, !129, !DIExpression(), !354)
  %add.i = add nsw i32 %4, 2, !dbg !358
  store i32 %add.i, ptr %3, align 4, !dbg !358
  %Dcodestrm.i = getelementptr inbounds i8, ptr %dep, i64 16, !dbg !359
  %5 = load ptr, ptr %Dcodestrm.i, align 8, !dbg !359
  %idxprom.i = sext i32 %4 to i64, !dbg !360
  %arrayidx.i = getelementptr inbounds i8, ptr %5, i64 %idxprom.i, !dbg !360
  %6 = load i8, ptr %arrayidx.i, align 1, !dbg !360
  %conv.i = zext i8 %6 to i32, !dbg !360
  %shl.i = shl nuw nsw i32 %conv.i, 8, !dbg !361
  %arrayidx5.i = getelementptr i8, ptr %arrayidx.i, i64 1, !dbg !362
  %7 = load i8, ptr %arrayidx5.i, align 1, !dbg !362
  %conv6.i = zext i8 %7 to i32, !dbg !362
  %or.i = or disjoint i32 %shl12, %conv6.i, !dbg !363
  %or = or disjoint i32 %or.i, %shl.i, !dbg !364
  store i32 %or, ptr %Dvalue, align 4, !dbg !365
  store i32 16, ptr %DbitsLeft, align 8, !dbg !366
  br label %cleanup, !dbg !367

cleanup:                                          ; preds = %entry, %if.else, %if.else10, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.else10 ], [ 0, %if.else ], [ 1, %entry ], !dbg !368
  ret i32 %retval.0, !dbg !369
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @biari_init_context(i32 noundef %qp, ptr nocapture noundef writeonly %ctx, ptr nocapture noundef readonly %ini) local_unnamed_addr #6 !dbg !370 {
entry:
    #dbg_value(i32 %qp, !377, !DIExpression(), !381)
    #dbg_value(ptr %ctx, !378, !DIExpression(), !381)
    #dbg_value(ptr %ini, !379, !DIExpression(), !381)
  %0 = load i8, ptr %ini, align 1, !dbg !382
  %conv = sext i8 %0 to i32, !dbg !382
  %mul = mul nsw i32 %conv, %qp, !dbg !383
  %shr = ashr i32 %mul, 4, !dbg !384
  %arrayidx1 = getelementptr inbounds i8, ptr %ini, i64 1, !dbg !385
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !385
  %conv2 = sext i8 %1 to i32, !dbg !385
  %add = add nsw i32 %shr, %conv2, !dbg !386
    #dbg_value(i32 %add, !380, !DIExpression(), !381)
  %cmp = icmp sgt i32 %add, 63, !dbg !387
  br i1 %cmp, label %if.then, label %if.else, !dbg !389

if.then:                                          ; preds = %entry
    #dbg_value(i32 126, !390, !DIExpression(), !397)
    #dbg_value(i32 %add, !396, !DIExpression(), !397)
  %2 = tail call i32 @llvm.umin.i32(i32 %add, i32 126), !dbg !400
    #dbg_value(i32 %2, !380, !DIExpression(), !381)
  %3 = trunc nuw nsw i32 %2 to i16, !dbg !401
  %conv4 = add nsw i16 %3, -64, !dbg !401
  br label %if.end, !dbg !402

if.else:                                          ; preds = %entry
    #dbg_value(i32 1, !403, !DIExpression(), !407)
    #dbg_value(i32 %add, !406, !DIExpression(), !407)
  %cond.i18 = tail call range(i32 -134217856, 64) i32 @llvm.smax.i32(i32 %add, i32 1), !dbg !410
    #dbg_value(i32 %cond.i18, !380, !DIExpression(), !381)
  %4 = trunc i32 %cond.i18 to i16, !dbg !411
  %conv7 = sub nuw nsw i16 63, %4, !dbg !411
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv7.sink = phi i16 [ %conv4, %if.then ], [ %conv7, %if.else ], !dbg !412
  %.sink = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !412
  store i16 %conv7.sink, ptr %ctx, align 2, !dbg !412
  %5 = getelementptr inbounds i8, ptr %ctx, i64 2, !dbg !412
  store i8 %.sink, ptr %5, align 2, !dbg !412
  ret void, !dbg !413
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind allocsize(0,1) }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "ldecod_src/biaridecod.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "231fd640fe72c8aaa6b4df7bb5612c20")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 41)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "rLPS_table_64x4", scope: !14, file: !23, line: 30, type: !37, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !15, globals: !20, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16, !17}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !18, line: 23, baseType: !19)
!18 = !DIFile(filename: "ldecod_src/inc/typedefs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1393d024b72e653f4e6dbeffdb0b154")
!19 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!20 = !{!0, !7, !12, !21, !30, !35}
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "AC_next_state_MPS_64", scope: !14, file: !23, line: 99, type: !24, isLocal: true, isDefinition: true)
!23 = !DIFile(filename: "ldecod_src/inc/biaridecod.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "9395105ff7eca866196162279db3ac14")
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 512, elements: !28)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !18, line: 21, baseType: !27)
!27 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !{!29}
!29 = !DISubrange(count: 64)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "renorm_table_32", scope: !14, file: !23, line: 122, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 256, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 32)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "AC_next_state_LPS_64", scope: !14, file: !23, line: 111, type: !24, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 2048, elements: !38)
!38 = !{!29, !39}
!39 = !DISubrange(count: 4)
!40 = !{i32 7, !"Dwarf Version", i32 5}
!41 = !{i32 2, !"Debug Info Version", i32 3}
!42 = !{i32 1, !"wchar_size", i32 4}
!43 = !{i32 8, !"PIC Level", i32 2}
!44 = !{i32 7, !"PIE Level", i32 2}
!45 = !{i32 7, !"uwtable", i32 2}
!46 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!47 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!48 = distinct !DISubprogram(name: "arideco_create_decoding_environment", scope: !2, file: !2, line: 38, type: !49, scopeLine: 39, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !66)
!49 = !DISubroutineType(types: !50)
!50 = !{!51}
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironmentPtr", file: !52, line: 97, baseType: !53)
!52 = !DIFile(filename: "ldecod_src/inc/global.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c4ca3c417c5616a2ff6b6266e7376fc1")
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironment", file: !52, line: 95, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !52, line: 88, size: 256, elements: !56)
!56 = !{!57, !59, !60, !62, !64}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "Drange", scope: !55, file: !52, line: 90, baseType: !58, size: 32)
!58 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "Dvalue", scope: !55, file: !52, line: 91, baseType: !58, size: 32, offset: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "DbitsLeft", scope: !55, file: !52, line: 92, baseType: !61, size: 32, offset: 64)
!61 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm", scope: !55, file: !52, line: 93, baseType: !63, size: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm_len", scope: !55, file: !52, line: 94, baseType: !65, size: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!66 = !{!67}
!67 = !DILocalVariable(name: "dep", scope: !48, file: !2, line: 40, type: !51)
!68 = !DILocation(line: 42, column: 14, scope: !69)
!69 = distinct !DILexicalBlock(scope: !48, file: !2, line: 42, column: 7)
!70 = !DILocation(line: 0, scope: !48)
!71 = !DILocation(line: 42, column: 53, scope: !69)
!72 = !DILocation(line: 42, column: 7, scope: !48)
!73 = !DILocation(line: 43, column: 5, scope: !69)
!74 = !DILocation(line: 44, column: 3, scope: !48)
!75 = !DISubprogram(name: "calloc", scope: !76, file: !76, line: 543, type: !77, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!76 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!77 = !DISubroutineType(types: !78)
!78 = !{!16, !79, !79}
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !80, line: 18, baseType: !81)
!80 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!81 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!82 = !DISubprogram(name: "no_mem_exit", scope: !83, file: !83, line: 180, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!83 = !DIFile(filename: "ldecod_src/inc/memalloc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "88776e97a131c37d03036121c7c9e0ac")
!84 = !DISubroutineType(types: !85)
!85 = !{null, !86}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!87 = distinct !DISubprogram(name: "arideco_delete_decoding_environment", scope: !2, file: !2, line: 54, type: !88, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !90)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !51}
!90 = !{!91}
!91 = !DILocalVariable(name: "dep", arg: 1, scope: !87, file: !2, line: 54, type: !51)
!92 = !DILocation(line: 0, scope: !87)
!93 = !DILocation(line: 56, column: 11, scope: !94)
!94 = distinct !DILexicalBlock(scope: !87, file: !2, line: 56, column: 7)
!95 = !DILocation(line: 56, column: 7, scope: !87)
!96 = !DILocation(line: 58, column: 5, scope: !97)
!97 = distinct !DILexicalBlock(scope: !94, file: !2, line: 57, column: 3)
!98 = !DILocation(line: 59, column: 5, scope: !97)
!99 = !DILocation(line: 60, column: 3, scope: !97)
!100 = !DILocation(line: 62, column: 5, scope: !94)
!101 = !DILocation(line: 63, column: 1, scope: !87)
!102 = !DISubprogram(name: "error", scope: !52, file: !52, line: 940, type: !103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !86, !61}
!105 = !DISubprogram(name: "free", scope: !76, file: !76, line: 555, type: !106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !16}
!108 = distinct !DISubprogram(name: "arideco_done_decoding", scope: !2, file: !2, line: 71, type: !88, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !109)
!109 = !{!110}
!110 = !DILocalVariable(name: "dep", arg: 1, scope: !108, file: !2, line: 71, type: !51)
!111 = !DILocation(line: 0, scope: !108)
!112 = !DILocation(line: 73, column: 10, scope: !108)
!113 = !DILocation(line: 73, column: 24, scope: !108)
!114 = !DILocation(line: 77, column: 1, scope: !108)
!115 = distinct !DISubprogram(name: "getbyte", scope: !2, file: !2, line: 85, type: !116, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !118)
!116 = !DISubroutineType(types: !117)
!117 = !{!58, !51}
!118 = !{!119}
!119 = !DILocalVariable(name: "dep", arg: 1, scope: !115, file: !2, line: 85, type: !51)
!120 = !DILocation(line: 0, scope: !115)
!121 = !DILocation(line: 90, column: 15, scope: !115)
!122 = !DILocation(line: 90, column: 32, scope: !115)
!123 = !DILocation(line: 90, column: 46, scope: !115)
!124 = !DILocation(line: 90, column: 10, scope: !115)
!125 = !DILocation(line: 90, column: 3, scope: !115)
!126 = distinct !DISubprogram(name: "getword", scope: !2, file: !2, line: 99, type: !116, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !127)
!127 = !{!128, !129}
!128 = !DILocalVariable(name: "dep", arg: 1, scope: !126, file: !2, line: 99, type: !51)
!129 = !DILocalVariable(name: "d", scope: !126, file: !2, line: 101, type: !61)
!130 = !DILocation(line: 0, scope: !126)
!131 = !DILocation(line: 101, column: 17, scope: !126)
!132 = !DILocation(line: 101, column: 11, scope: !126)
!133 = !DILocation(line: 106, column: 23, scope: !126)
!134 = !DILocation(line: 107, column: 17, scope: !126)
!135 = !DILocation(line: 107, column: 12, scope: !126)
!136 = !DILocation(line: 107, column: 29, scope: !126)
!137 = !DILocation(line: 107, column: 36, scope: !126)
!138 = !DILocation(line: 107, column: 34, scope: !126)
!139 = !DILocation(line: 107, column: 3, scope: !126)
!140 = distinct !DISubprogram(name: "arideco_start_decoding", scope: !2, file: !2, line: 115, type: !141, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !144)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !51, !143, !61, !65}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!144 = !{!145, !146, !147, !148}
!145 = !DILocalVariable(name: "dep", arg: 1, scope: !140, file: !2, line: 115, type: !51)
!146 = !DILocalVariable(name: "code_buffer", arg: 2, scope: !140, file: !2, line: 115, type: !143)
!147 = !DILocalVariable(name: "firstbyte", arg: 3, scope: !140, file: !2, line: 116, type: !61)
!148 = !DILocalVariable(name: "code_len", arg: 4, scope: !140, file: !2, line: 116, type: !65)
!149 = !DILocation(line: 0, scope: !140)
!150 = !DILocation(line: 119, column: 8, scope: !140)
!151 = !DILocation(line: 119, column: 23, scope: !140)
!152 = !DILocation(line: 120, column: 8, scope: !140)
!153 = !DILocation(line: 120, column: 23, scope: !140)
!154 = !DILocation(line: 121, column: 23, scope: !140)
!155 = !DILocation(line: 0, scope: !115, inlinedAt: !156)
!156 = distinct !DILocation(line: 123, column: 17, scope: !140)
!157 = !DILocation(line: 90, column: 15, scope: !115, inlinedAt: !156)
!158 = !DILocation(line: 90, column: 32, scope: !115, inlinedAt: !156)
!159 = !DILocation(line: 90, column: 46, scope: !115, inlinedAt: !156)
!160 = !DILocation(line: 90, column: 10, scope: !115, inlinedAt: !156)
!161 = !DILocation(line: 123, column: 8, scope: !140)
!162 = !DILocation(line: 123, column: 15, scope: !140)
!163 = !DILocation(line: 124, column: 30, scope: !140)
!164 = !DILocation(line: 0, scope: !126, inlinedAt: !165)
!165 = distinct !DILocation(line: 124, column: 39, scope: !140)
!166 = !DILocation(line: 101, column: 17, scope: !126, inlinedAt: !165)
!167 = !DILocation(line: 101, column: 11, scope: !126, inlinedAt: !165)
!168 = !DILocation(line: 106, column: 23, scope: !126, inlinedAt: !165)
!169 = !DILocation(line: 107, column: 17, scope: !126, inlinedAt: !165)
!170 = !DILocation(line: 107, column: 12, scope: !126, inlinedAt: !165)
!171 = !DILocation(line: 107, column: 29, scope: !126, inlinedAt: !165)
!172 = !DILocation(line: 107, column: 36, scope: !126, inlinedAt: !165)
!173 = !DILocation(line: 107, column: 34, scope: !126, inlinedAt: !165)
!174 = !DILocation(line: 124, column: 37, scope: !140)
!175 = !DILocation(line: 124, column: 15, scope: !140)
!176 = !DILocation(line: 126, column: 8, scope: !140)
!177 = !DILocation(line: 126, column: 18, scope: !140)
!178 = !DILocation(line: 127, column: 15, scope: !140)
!179 = !DILocation(line: 132, column: 1, scope: !140)
!180 = distinct !DISubprogram(name: "arideco_bits_read", scope: !2, file: !2, line: 141, type: !181, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !183)
!181 = !DISubroutineType(types: !182)
!182 = !{!61, !51}
!183 = !{!184, !185}
!184 = !DILocalVariable(name: "dep", arg: 1, scope: !180, file: !2, line: 141, type: !51)
!185 = !DILocalVariable(name: "tmp", scope: !180, file: !2, line: 143, type: !61)
!186 = !DILocation(line: 0, scope: !180)
!187 = !DILocation(line: 143, column: 21, scope: !180)
!188 = !DILocation(line: 143, column: 15, scope: !180)
!189 = !DILocation(line: 143, column: 36, scope: !180)
!190 = !DILocation(line: 143, column: 49, scope: !180)
!191 = !DILocation(line: 143, column: 42, scope: !180)
!192 = !DILocation(line: 148, column: 3, scope: !180)
!193 = distinct !DISubprogram(name: "biari_decode_symbol", scope: !2, file: !2, line: 160, type: !194, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !204)
!194 = !DISubroutineType(types: !195)
!195 = !{!58, !51, !196}
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextTypePtr", file: !52, line: 124, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !52, line: 122, baseType: !199)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !52, line: 117, size: 32, elements: !200)
!200 = !{!201, !202, !203}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !199, file: !52, line: 119, baseType: !17, size: 16)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !199, file: !52, line: 120, baseType: !27, size: 8, offset: 16)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !199, file: !52, line: 121, baseType: !27, size: 8, offset: 24)
!204 = !{!205, !206, !207, !208, !210, !211, !213, !214, !215}
!205 = !DILocalVariable(name: "dep", arg: 1, scope: !193, file: !2, line: 160, type: !51)
!206 = !DILocalVariable(name: "bi_ct", arg: 2, scope: !193, file: !2, line: 160, type: !196)
!207 = !DILocalVariable(name: "bit", scope: !193, file: !2, line: 162, type: !58)
!208 = !DILocalVariable(name: "value", scope: !193, file: !2, line: 163, type: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!210 = !DILocalVariable(name: "range", scope: !193, file: !2, line: 164, type: !209)
!211 = !DILocalVariable(name: "state", scope: !193, file: !2, line: 165, type: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!213 = !DILocalVariable(name: "rLPS", scope: !193, file: !2, line: 166, type: !58)
!214 = !DILocalVariable(name: "DbitsLeft", scope: !193, file: !2, line: 167, type: !65)
!215 = !DILocalVariable(name: "renorm", scope: !216, file: !2, line: 186, type: !61)
!216 = distinct !DILexicalBlock(scope: !217, file: !2, line: 185, column: 3)
!217 = distinct !DILexicalBlock(scope: !193, file: !2, line: 171, column: 6)
!218 = !DILocation(line: 0, scope: !193)
!219 = !DILocation(line: 162, column: 32, scope: !193)
!220 = !DILocation(line: 162, column: 25, scope: !193)
!221 = !DILocation(line: 163, column: 31, scope: !193)
!222 = !DILocation(line: 166, column: 41, scope: !193)
!223 = !DILocation(line: 166, column: 25, scope: !193)
!224 = !DILocation(line: 166, column: 50, scope: !193)
!225 = !DILocation(line: 166, column: 56, scope: !193)
!226 = !DILocation(line: 166, column: 61, scope: !193)
!227 = !DILocation(line: 167, column: 26, scope: !193)
!228 = !DILocation(line: 169, column: 10, scope: !193)
!229 = !DILocation(line: 171, column: 6, scope: !217)
!230 = !DILocation(line: 171, column: 26, scope: !217)
!231 = !DILocation(line: 171, column: 23, scope: !217)
!232 = !DILocation(line: 171, column: 13, scope: !217)
!233 = !DILocation(line: 171, column: 6, scope: !193)
!234 = !DILocation(line: 173, column: 35, scope: !235)
!235 = distinct !DILexicalBlock(scope: !217, file: !2, line: 172, column: 3)
!236 = !DILocation(line: 173, column: 14, scope: !235)
!237 = !DILocation(line: 173, column: 12, scope: !235)
!238 = !DILocation(line: 175, column: 9, scope: !239)
!239 = distinct !DILexicalBlock(scope: !235, file: !2, line: 175, column: 9)
!240 = !DILocation(line: 175, column: 16, scope: !239)
!241 = !DILocation(line: 175, column: 9, scope: !235)
!242 = !DILocation(line: 180, column: 14, scope: !239)
!243 = !DILocation(line: 182, column: 17, scope: !235)
!244 = !DILocation(line: 183, column: 3, scope: !235)
!245 = !DILocation(line: 186, column: 39, scope: !216)
!246 = !DILocation(line: 186, column: 18, scope: !216)
!247 = !DILocation(line: 0, scope: !216)
!248 = !DILocation(line: 187, column: 12, scope: !216)
!249 = !DILocation(line: 189, column: 20, scope: !216)
!250 = !DILocation(line: 189, column: 12, scope: !216)
!251 = !DILocation(line: 190, column: 18, scope: !216)
!252 = !DILocation(line: 192, column: 9, scope: !216)
!253 = !DILocation(line: 193, column: 11, scope: !254)
!254 = distinct !DILexicalBlock(scope: !216, file: !2, line: 193, column: 9)
!255 = !DILocation(line: 193, column: 10, scope: !254)
!256 = !DILocation(line: 193, column: 9, scope: !216)
!257 = !DILocation(line: 194, column: 18, scope: !254)
!258 = !DILocation(line: 194, column: 7, scope: !254)
!259 = !DILocation(line: 196, column: 14, scope: !216)
!260 = !DILocation(line: 196, column: 12, scope: !216)
!261 = !DILocation(line: 199, column: 7, scope: !262)
!262 = distinct !DILexicalBlock(scope: !193, file: !2, line: 199, column: 7)
!263 = !DILocation(line: 199, column: 18, scope: !262)
!264 = !DILocation(line: 199, column: 7, scope: !193)
!265 = !DILocation(line: 205, column: 12, scope: !266)
!266 = distinct !DILexicalBlock(scope: !262, file: !2, line: 204, column: 3)
!267 = !DILocation(line: 0, scope: !126, inlinedAt: !268)
!268 = distinct !DILocation(line: 206, column: 16, scope: !266)
!269 = !DILocation(line: 101, column: 17, scope: !126, inlinedAt: !268)
!270 = !DILocation(line: 101, column: 11, scope: !126, inlinedAt: !268)
!271 = !DILocation(line: 106, column: 23, scope: !126, inlinedAt: !268)
!272 = !DILocation(line: 107, column: 17, scope: !126, inlinedAt: !268)
!273 = !DILocation(line: 107, column: 12, scope: !126, inlinedAt: !268)
!274 = !DILocation(line: 107, column: 29, scope: !126, inlinedAt: !268)
!275 = !DILocation(line: 107, column: 36, scope: !126, inlinedAt: !268)
!276 = !DILocation(line: 107, column: 34, scope: !126, inlinedAt: !268)
!277 = !DILocation(line: 206, column: 12, scope: !266)
!278 = !DILocation(line: 208, column: 18, scope: !266)
!279 = !DILocation(line: 210, column: 5, scope: !266)
!280 = !DILocation(line: 212, column: 1, scope: !193)
!281 = distinct !DISubprogram(name: "biari_decode_symbol_eq_prob", scope: !2, file: !2, line: 223, type: !116, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !282)
!282 = !{!283, !284, !285, !286}
!283 = !DILocalVariable(name: "dep", arg: 1, scope: !281, file: !2, line: 223, type: !51)
!284 = !DILocalVariable(name: "tmp_value", scope: !281, file: !2, line: 225, type: !61)
!285 = !DILocalVariable(name: "value", scope: !281, file: !2, line: 226, type: !209)
!286 = !DILocalVariable(name: "DbitsLeft", scope: !281, file: !2, line: 227, type: !65)
!287 = !DILocation(line: 0, scope: !281)
!288 = !DILocation(line: 226, column: 32, scope: !281)
!289 = !DILocation(line: 227, column: 27, scope: !281)
!290 = !DILocation(line: 229, column: 6, scope: !291)
!291 = distinct !DILexicalBlock(scope: !281, file: !2, line: 229, column: 6)
!292 = !DILocation(line: 229, column: 21, scope: !291)
!293 = !DILocation(line: 235, column: 16, scope: !281)
!294 = !DILocation(line: 229, column: 6, scope: !281)
!295 = !DILocation(line: 231, column: 22, scope: !296)
!296 = distinct !DILexicalBlock(scope: !291, file: !2, line: 230, column: 3)
!297 = !DILocation(line: 0, scope: !126, inlinedAt: !298)
!298 = distinct !DILocation(line: 231, column: 31, scope: !296)
!299 = !DILocation(line: 101, column: 17, scope: !126, inlinedAt: !298)
!300 = !DILocation(line: 101, column: 11, scope: !126, inlinedAt: !298)
!301 = !DILocation(line: 106, column: 23, scope: !126, inlinedAt: !298)
!302 = !DILocation(line: 107, column: 17, scope: !126, inlinedAt: !298)
!303 = !DILocation(line: 107, column: 12, scope: !126, inlinedAt: !298)
!304 = !DILocation(line: 107, column: 29, scope: !126, inlinedAt: !298)
!305 = !DILocation(line: 107, column: 36, scope: !126, inlinedAt: !298)
!306 = !DILocation(line: 107, column: 34, scope: !126, inlinedAt: !298)
!307 = !DILocation(line: 231, column: 29, scope: !296)
!308 = !DILocation(line: 231, column: 12, scope: !296)
!309 = !DILocation(line: 233, column: 16, scope: !296)
!310 = !DILocation(line: 234, column: 3, scope: !296)
!311 = !DILocation(line: 235, column: 41, scope: !281)
!312 = !DILocation(line: 235, column: 31, scope: !281)
!313 = !DILocation(line: 235, column: 38, scope: !281)
!314 = !DILocation(line: 235, column: 23, scope: !281)
!315 = !DILocation(line: 237, column: 17, scope: !316)
!316 = distinct !DILexicalBlock(scope: !281, file: !2, line: 237, column: 7)
!317 = !DILocation(line: 237, column: 7, scope: !281)
!318 = !DILocation(line: 243, column: 12, scope: !319)
!319 = distinct !DILexicalBlock(scope: !316, file: !2, line: 242, column: 3)
!320 = !DILocation(line: 244, column: 5, scope: !319)
!321 = !DILocation(line: 0, scope: !316)
!322 = !DILocation(line: 246, column: 1, scope: !281)
!323 = distinct !DISubprogram(name: "biari_decode_final", scope: !2, file: !2, line: 256, type: !116, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !324)
!324 = !{!325, !326, !327}
!325 = !DILocalVariable(name: "dep", arg: 1, scope: !323, file: !2, line: 256, type: !51)
!326 = !DILocalVariable(name: "range", scope: !323, file: !2, line: 258, type: !58)
!327 = !DILocalVariable(name: "value", scope: !323, file: !2, line: 259, type: !61)
!328 = !DILocation(line: 0, scope: !323)
!329 = !DILocation(line: 258, column: 30, scope: !323)
!330 = !DILocation(line: 258, column: 37, scope: !323)
!331 = !DILocation(line: 259, column: 21, scope: !323)
!332 = !DILocation(line: 260, column: 27, scope: !323)
!333 = !DILocation(line: 260, column: 19, scope: !323)
!334 = !DILocation(line: 260, column: 9, scope: !323)
!335 = !DILocation(line: 262, column: 13, scope: !336)
!336 = distinct !DILexicalBlock(scope: !323, file: !2, line: 262, column: 7)
!337 = !DILocation(line: 262, column: 7, scope: !323)
!338 = !DILocation(line: 264, column: 15, scope: !339)
!339 = distinct !DILexicalBlock(scope: !340, file: !2, line: 264, column: 9)
!340 = distinct !DILexicalBlock(scope: !336, file: !2, line: 263, column: 3)
!341 = !DILocation(line: 264, column: 9, scope: !340)
!342 = !DILocation(line: 266, column: 19, scope: !343)
!343 = distinct !DILexicalBlock(scope: !339, file: !2, line: 265, column: 5)
!344 = !DILocation(line: 267, column: 7, scope: !343)
!345 = !DILocation(line: 271, column: 28, scope: !346)
!346 = distinct !DILexicalBlock(scope: !339, file: !2, line: 270, column: 5)
!347 = !DILocation(line: 271, column: 19, scope: !346)
!348 = !DILocation(line: 272, column: 11, scope: !349)
!349 = distinct !DILexicalBlock(scope: !346, file: !2, line: 272, column: 11)
!350 = !DILocation(line: 272, column: 30, scope: !349)
!351 = !DILocation(line: 272, column: 11, scope: !346)
!352 = !DILocation(line: 276, column: 36, scope: !353)
!353 = distinct !DILexicalBlock(scope: !349, file: !2, line: 275, column: 7)
!354 = !DILocation(line: 0, scope: !126, inlinedAt: !355)
!355 = distinct !DILocation(line: 276, column: 45, scope: !353)
!356 = !DILocation(line: 101, column: 17, scope: !126, inlinedAt: !355)
!357 = !DILocation(line: 101, column: 11, scope: !126, inlinedAt: !355)
!358 = !DILocation(line: 106, column: 23, scope: !126, inlinedAt: !355)
!359 = !DILocation(line: 107, column: 17, scope: !126, inlinedAt: !355)
!360 = !DILocation(line: 107, column: 12, scope: !126, inlinedAt: !355)
!361 = !DILocation(line: 107, column: 29, scope: !126, inlinedAt: !355)
!362 = !DILocation(line: 107, column: 36, scope: !126, inlinedAt: !355)
!363 = !DILocation(line: 107, column: 34, scope: !126, inlinedAt: !355)
!364 = !DILocation(line: 276, column: 43, scope: !353)
!365 = !DILocation(line: 276, column: 21, scope: !353)
!366 = !DILocation(line: 278, column: 24, scope: !353)
!367 = !DILocation(line: 279, column: 9, scope: !353)
!368 = !DILocation(line: 0, scope: !336)
!369 = !DILocation(line: 287, column: 1, scope: !323)
!370 = distinct !DISubprogram(name: "biari_init_context", scope: !2, file: !2, line: 295, type: !371, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !376)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !61, !196, !373}
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!375 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!376 = !{!377, !378, !379, !380}
!377 = !DILocalVariable(name: "qp", arg: 1, scope: !370, file: !2, line: 295, type: !61)
!378 = !DILocalVariable(name: "ctx", arg: 2, scope: !370, file: !2, line: 295, type: !196)
!379 = !DILocalVariable(name: "ini", arg: 3, scope: !370, file: !2, line: 295, type: !373)
!380 = !DILocalVariable(name: "pstate", scope: !370, file: !2, line: 297, type: !61)
!381 = !DILocation(line: 0, scope: !370)
!382 = !DILocation(line: 297, column: 18, scope: !370)
!383 = !DILocation(line: 297, column: 24, scope: !370)
!384 = !DILocation(line: 297, column: 30, scope: !370)
!385 = !DILocation(line: 297, column: 37, scope: !370)
!386 = !DILocation(line: 297, column: 35, scope: !370)
!387 = !DILocation(line: 299, column: 15, scope: !388)
!388 = distinct !DILexicalBlock(scope: !370, file: !2, line: 299, column: 8)
!389 = !DILocation(line: 299, column: 8, scope: !370)
!390 = !DILocalVariable(name: "a", arg: 1, scope: !391, file: !392, line: 42, type: !61)
!391 = distinct !DISubprogram(name: "imin", scope: !392, file: !392, line: 42, type: !393, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !395)
!392 = !DIFile(filename: "ldecod_src/inc/ifunctions.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "279401589ed56df99e287ad9e5fc564b")
!393 = !DISubroutineType(types: !394)
!394 = !{!61, !61, !61}
!395 = !{!390, !396}
!396 = !DILocalVariable(name: "b", arg: 2, scope: !391, file: !392, line: 42, type: !61)
!397 = !DILocation(line: 0, scope: !391, inlinedAt: !398)
!398 = distinct !DILocation(line: 301, column: 14, scope: !399)
!399 = distinct !DILexicalBlock(scope: !388, file: !2, line: 300, column: 3)
!400 = !DILocation(line: 44, column: 10, scope: !391, inlinedAt: !398)
!401 = !DILocation(line: 302, column: 18, scope: !399)
!402 = !DILocation(line: 304, column: 3, scope: !399)
!403 = !DILocalVariable(name: "a", arg: 1, scope: !404, file: !392, line: 47, type: !61)
!404 = distinct !DISubprogram(name: "imax", scope: !392, file: !392, line: 47, type: !393, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !405)
!405 = !{!403, !406}
!406 = !DILocalVariable(name: "b", arg: 2, scope: !404, file: !392, line: 47, type: !61)
!407 = !DILocation(line: 0, scope: !404, inlinedAt: !408)
!408 = distinct !DILocation(line: 307, column: 14, scope: !409)
!409 = distinct !DILexicalBlock(scope: !388, file: !2, line: 306, column: 3)
!410 = !DILocation(line: 49, column: 10, scope: !404, inlinedAt: !408)
!411 = !DILocation(line: 308, column: 18, scope: !409)
!412 = !DILocation(line: 0, scope: !388)
!413 = !DILocation(line: 311, column: 1, scope: !370)
