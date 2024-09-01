; ModuleID = 'ldecod_src/biaridecod.c'
source_filename = "ldecod_src/biaridecod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"arideco_create_decoding_environment: dep\00", align 1
@errortext = external global [300 x i8], align 16
@.str.1 = private unnamed_addr constant [33 x i8] c"Error freeing dep (NULL pointer)\00", align 1
@rLPS_table_64x4 = internal unnamed_addr constant [64 x [4 x i8]] [[4 x i8] c"\80\B0\D0\F0", [4 x i8] c"\80\A7\C5\E3", [4 x i8] c"\80\9E\BB\D8", [4 x i8] c"{\96\B2\CD", [4 x i8] c"t\8E\A9\C3", [4 x i8] c"o\87\A0\B9", [4 x i8] c"i\80\98\AF", [4 x i8] c"dz\90\A6", [4 x i8] c"_t\89\9E", [4 x i8] c"Zn\82\96", [4 x i8] c"Uh{\8E", [4 x i8] c"Qcu\87", [4 x i8] c"M^o\80", [4 x i8] c"IYiz", [4 x i8] c"EUdt", [4 x i8] c"BP_n", [4 x i8] c">LZh", [4 x i8] c";HVc", [4 x i8] c"8EQ^", [4 x i8] c"5AMY", [4 x i8] c"3>IU", [4 x i8] c"0;EP", [4 x i8] c".8BL", [4 x i8] c"+5?H", [4 x i8] c")2;E", [4 x i8] c"'08A", [4 x i8] c"%-6>", [4 x i8] c"#+3;", [4 x i8] c"!)08", [4 x i8] c" '.5", [4 x i8] c"\1E%+2", [4 x i8] c"\1D#)0", [4 x i8] c"\1B!'-", [4 x i8] c"\1A\1F%+", [4 x i8] c"\18\1E#)", [4 x i8] c"\17\1C!'", [4 x i8] c"\16\1B %", [4 x i8] c"\15\1A\1E#", [4 x i8] c"\14\18\1D!", [4 x i8] c"\13\17\1B\1F", [4 x i8] c"\12\16\1A\1E", [4 x i8] c"\11\15\19\1C", [4 x i8] c"\10\14\17\1B", [4 x i8] c"\0F\13\16\19", [4 x i8] c"\0E\12\15\18", [4 x i8] c"\0E\11\14\17", [4 x i8] c"\0D\10\13\16", [4 x i8] c"\0C\0F\12\15", [4 x i8] c"\0C\0E\11\14", [4 x i8] c"\0B\0E\10\13", [4 x i8] c"\0B\0D\0F\12", [4 x i8] c"\0A\0C\0F\11", [4 x i8] c"\0A\0C\0E\10", [4 x i8] c"\09\0B\0D\0F", [4 x i8] c"\09\0B\0C\0E", [4 x i8] c"\08\0A\0C\0E", [4 x i8] c"\08\09\0B\0D", [4 x i8] c"\07\09\0B\0C", [4 x i8] c"\07\09\0A\0C", [4 x i8] c"\07\08\0A\0B", [4 x i8] c"\06\08\09\0B", [4 x i8] c"\06\07\09\0A", [4 x i8] c"\06\07\08\09", [4 x i8] c"\02\02\02\02"], align 16
@AC_next_state_MPS_64 = internal unnamed_addr constant [64 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>>?", align 16
@renorm_table_32 = internal unnamed_addr constant [32 x i8] c"\06\05\04\04\03\03\03\03\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 16
@AC_next_state_LPS_64 = internal unnamed_addr constant [64 x i8] c"\00\00\01\02\02\04\04\05\06\07\08\09\09\0B\0B\0C\0D\0D\0F\0F\10\10\12\12\13\13\15\15\16\16\17\18\18\19\1A\1A\1B\1B\1C\1D\1D\1E\1E\1E\1F  !!!\22\22###$$$%%%&&?", align 16

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @arideco_create_decoding_environment() local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #9
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret ptr %call
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @arideco_delete_decoding_environment(ptr noundef %dep) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq ptr %dep, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(33) @errortext, ptr noundef nonnull align 1 dereferenceable(33) @.str.1, i64 33, i1 false)
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 200) #10
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @free(ptr noundef nonnull %dep) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @arideco_done_decoding(ptr nocapture noundef readonly %dep) local_unnamed_addr #4 {
entry:
  %Dcodestrm_len = getelementptr inbounds i8, ptr %dep, i64 24
  %0 = load ptr, ptr %Dcodestrm_len, align 8
  %1 = load i32, ptr %0, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 256) i32 @getbyte(ptr nocapture noundef readonly %dep) local_unnamed_addr #4 {
entry:
  %Dcodestrm = getelementptr inbounds i8, ptr %dep, i64 16
  %0 = load ptr, ptr %Dcodestrm, align 8
  %Dcodestrm_len = getelementptr inbounds i8, ptr %dep, i64 24
  %1 = load ptr, ptr %Dcodestrm_len, align 8
  %2 = load i32, ptr %1, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %1, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 65536) i32 @getword(ptr nocapture noundef readonly %dep) local_unnamed_addr #4 {
entry:
  %Dcodestrm_len = getelementptr inbounds i8, ptr %dep, i64 24
  %0 = load ptr, ptr %Dcodestrm_len, align 8
  %1 = load i32, ptr %0, align 4
  %add = add nsw i32 %1, 2
  store i32 %add, ptr %0, align 4
  %Dcodestrm = getelementptr inbounds i8, ptr %dep, i64 16
  %2 = load ptr, ptr %Dcodestrm, align 8
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx5 = getelementptr i8, ptr %arrayidx, i64 1
  %4 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %4 to i32
  %or = or disjoint i32 %shl, %conv6
  ret i32 %or
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @arideco_start_decoding(ptr nocapture noundef %dep, ptr noundef %code_buffer, i32 noundef %firstbyte, ptr noundef %code_len) local_unnamed_addr #4 {
entry:
  %Dcodestrm = getelementptr inbounds i8, ptr %dep, i64 16
  store ptr %code_buffer, ptr %Dcodestrm, align 8
  %Dcodestrm_len = getelementptr inbounds i8, ptr %dep, i64 24
  store ptr %code_len, ptr %Dcodestrm_len, align 8
  store i32 %firstbyte, ptr %code_len, align 4
  %0 = load ptr, ptr %Dcodestrm, align 8
  %1 = load ptr, ptr %Dcodestrm_len, align 8
  %2 = load i32, ptr %1, align 4
  %inc.i = add nsw i32 %2, 1
  store i32 %inc.i, ptr %1, align 4
  %idxprom.i = sext i32 %2 to i64
  %arrayidx.i = getelementptr inbounds i8, ptr %0, i64 %idxprom.i
  %3 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %3 to i32
  %Dvalue = getelementptr inbounds i8, ptr %dep, i64 4
  store i32 %conv.i, ptr %Dvalue, align 4
  %shl = shl nuw nsw i32 %conv.i, 16
  %4 = load ptr, ptr %Dcodestrm_len, align 8
  %5 = load i32, ptr %4, align 4
  %add.i = add nsw i32 %5, 2
  store i32 %add.i, ptr %4, align 4
  %6 = load ptr, ptr %Dcodestrm, align 8
  %idxprom.i16 = sext i32 %5 to i64
  %arrayidx.i17 = getelementptr inbounds i8, ptr %6, i64 %idxprom.i16
  %7 = load i8, ptr %arrayidx.i17, align 1
  %conv.i18 = zext i8 %7 to i32
  %shl.i = shl nuw nsw i32 %conv.i18, 8
  %arrayidx5.i = getelementptr i8, ptr %arrayidx.i17, i64 1
  %8 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %8 to i32
  %or.i = or disjoint i32 %shl, %conv6.i
  %or = or disjoint i32 %or.i, %shl.i
  store i32 %or, ptr %Dvalue, align 4
  %DbitsLeft = getelementptr inbounds i8, ptr %dep, i64 8
  store i32 15, ptr %DbitsLeft, align 8
  store i32 510, ptr %dep, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @arideco_bits_read(ptr nocapture noundef readonly %dep) local_unnamed_addr #5 {
entry:
  %Dcodestrm_len = getelementptr inbounds i8, ptr %dep, i64 24
  %0 = load ptr, ptr %Dcodestrm_len, align 8
  %1 = load i32, ptr %0, align 4
  %shl = shl i32 %1, 3
  %DbitsLeft = getelementptr inbounds i8, ptr %dep, i64 8
  %2 = load i32, ptr %DbitsLeft, align 8
  %sub = sub nsw i32 %shl, %2
  ret i32 %sub
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 256) i32 @biari_decode_symbol(ptr nocapture noundef %dep, ptr nocapture noundef %bi_ct) local_unnamed_addr #4 {
entry:
  %MPS = getelementptr inbounds i8, ptr %bi_ct, i64 2
  %0 = load i8, ptr %MPS, align 2
  %conv = zext i8 %0 to i32
  %Dvalue = getelementptr inbounds i8, ptr %dep, i64 4
  %1 = load i16, ptr %bi_ct, align 2
  %idxprom = zext i16 %1 to i64
  %2 = load i32, ptr %dep, align 4
  %shr = lshr i32 %2, 6
  %and = and i32 %shr, 3
  %idxprom2 = zext nneg i32 %and to i64
  %arrayidx3 = getelementptr inbounds [64 x [4 x i8]], ptr @rLPS_table_64x4, i64 0, i64 %idxprom, i64 %idxprom2
  %3 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %3 to i32
  %DbitsLeft5 = getelementptr inbounds i8, ptr %dep, i64 8
  %sub = sub i32 %2, %conv4
  store i32 %sub, ptr %dep, align 4
  %4 = load i32, ptr %Dvalue, align 4
  %5 = load i32, ptr %DbitsLeft5, align 4
  %shl = shl i32 %sub, %5
  %cmp = icmp ult i32 %4, %shl
  br i1 %cmp, label %if.then, label %if.else14

if.then:                                          ; preds = %entry
  %6 = load i16, ptr %bi_ct, align 2
  %idxprom7 = zext i16 %6 to i64
  %arrayidx8 = getelementptr inbounds [64 x i8], ptr @AC_next_state_MPS_64, i64 0, i64 %idxprom7
  %7 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %7 to i16
  store i16 %conv9, ptr %bi_ct, align 2
  %8 = load i32, ptr %dep, align 4
  %cmp10 = icmp ugt i32 %8, 255
  br i1 %cmp10, label %cleanup, label %if.else

if.else:                                          ; preds = %if.then
  %shl13 = shl nuw nsw i32 %8, 1
  store i32 %shl13, ptr %dep, align 4
  %9 = load i32, ptr %DbitsLeft5, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr %DbitsLeft5, align 4
  br label %if.end34

if.else14:                                        ; preds = %entry
  %shr15 = lshr i32 %conv4, 3
  %idxprom17 = zext nneg i32 %shr15 to i64
  %arrayidx18 = getelementptr inbounds [32 x i8], ptr @renorm_table_32, i64 0, i64 %idxprom17
  %10 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %10 to i32
  %sub22 = sub i32 %4, %shl
  store i32 %sub22, ptr %Dvalue, align 4
  %shl23 = shl i32 %conv4, %conv19
  store i32 %shl23, ptr %dep, align 4
  %sub24 = sub nsw i32 %5, %conv19
  store i32 %sub24, ptr %DbitsLeft5, align 4
  %xor = xor i32 %conv, 1
  %11 = load i16, ptr %bi_ct, align 2
  %tobool.not = icmp eq i16 %11, 0
  br i1 %tobool.not, label %if.then25, label %if.end30

if.then25:                                        ; preds = %if.else14
  %12 = load i8, ptr %MPS, align 2
  %13 = xor i8 %12, 1
  store i8 %13, ptr %MPS, align 2
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.else14
  %idxprom31 = zext i16 %11 to i64
  %arrayidx32 = getelementptr inbounds [64 x i8], ptr @AC_next_state_LPS_64, i64 0, i64 %idxprom31
  %14 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %14 to i16
  store i16 %conv33, ptr %bi_ct, align 2
  %.pr = load i32, ptr %DbitsLeft5, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end30, %if.else
  %15 = phi i32 [ %.pr, %if.end30 ], [ %dec, %if.else ]
  %bit.0 = phi i32 [ %xor, %if.end30 ], [ %conv, %if.else ]
  %cmp35 = icmp sgt i32 %15, 0
  br i1 %cmp35, label %cleanup, label %if.else38

if.else38:                                        ; preds = %if.end34
  %16 = load i32, ptr %Dvalue, align 4
  %shl39 = shl i32 %16, 16
  store i32 %shl39, ptr %Dvalue, align 4
  %Dcodestrm_len.i = getelementptr inbounds i8, ptr %dep, i64 24
  %17 = load ptr, ptr %Dcodestrm_len.i, align 8
  %18 = load i32, ptr %17, align 4
  %add.i = add nsw i32 %18, 2
  store i32 %add.i, ptr %17, align 4
  %Dcodestrm.i = getelementptr inbounds i8, ptr %dep, i64 16
  %19 = load ptr, ptr %Dcodestrm.i, align 8
  %idxprom.i = sext i32 %18 to i64
  %arrayidx.i = getelementptr inbounds i8, ptr %19, i64 %idxprom.i
  %20 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %20 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %arrayidx5.i = getelementptr i8, ptr %arrayidx.i, i64 1
  %21 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %21 to i32
  %or.i = or disjoint i32 %shl.i, %conv6.i
  %22 = load i32, ptr %Dvalue, align 4
  %or = or i32 %or.i, %22
  store i32 %or, ptr %Dvalue, align 4
  %23 = load i32, ptr %DbitsLeft5, align 4
  %add = add nsw i32 %23, 16
  store i32 %add, ptr %DbitsLeft5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then, %if.else38
  %retval.0 = phi i32 [ %bit.0, %if.else38 ], [ %conv, %if.then ], [ %bit.0, %if.end34 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @biari_decode_symbol_eq_prob(ptr nocapture noundef %dep) local_unnamed_addr #4 {
entry:
  %Dvalue = getelementptr inbounds i8, ptr %dep, i64 4
  %DbitsLeft1 = getelementptr inbounds i8, ptr %dep, i64 8
  %0 = load i32, ptr %DbitsLeft1, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %DbitsLeft1, align 4
  %cmp = icmp eq i32 %dec, 0
  %.pre = load i32, ptr %Dvalue, align 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %shl = shl i32 %.pre, 16
  %Dcodestrm_len.i = getelementptr inbounds i8, ptr %dep, i64 24
  %1 = load ptr, ptr %Dcodestrm_len.i, align 8
  %2 = load i32, ptr %1, align 4
  %add.i = add nsw i32 %2, 2
  store i32 %add.i, ptr %1, align 4
  %Dcodestrm.i = getelementptr inbounds i8, ptr %dep, i64 16
  %3 = load ptr, ptr %Dcodestrm.i, align 8
  %idxprom.i = sext i32 %2 to i64
  %arrayidx.i = getelementptr inbounds i8, ptr %3, i64 %idxprom.i
  %4 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %4 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %arrayidx5.i = getelementptr i8, ptr %arrayidx.i, i64 1
  %5 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %5 to i32
  %or.i = or disjoint i32 %shl, %conv6.i
  %or = or disjoint i32 %or.i, %shl.i
  store i32 %or, ptr %Dvalue, align 4
  store i32 16, ptr %DbitsLeft1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = phi i32 [ 16, %if.then ], [ %dec, %entry ]
  %7 = phi i32 [ %or, %if.then ], [ %.pre, %entry ]
  %8 = load i32, ptr %dep, align 8
  %shl2 = shl i32 %8, %6
  %sub = sub i32 %7, %shl2
  %cmp3 = icmp slt i32 %sub, 0
  br i1 %cmp3, label %cleanup, label %if.else

if.else:                                          ; preds = %if.end
  store i32 %sub, ptr %Dvalue, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else
  %retval.0 = phi i32 [ 1, %if.else ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @biari_decode_final(ptr nocapture noundef %dep) local_unnamed_addr #4 {
entry:
  %0 = load i32, ptr %dep, align 8
  %sub = add i32 %0, -2
  %Dvalue = getelementptr inbounds i8, ptr %dep, i64 4
  %1 = load i32, ptr %Dvalue, align 4
  %DbitsLeft = getelementptr inbounds i8, ptr %dep, i64 8
  %2 = load i32, ptr %DbitsLeft, align 8
  %shl = shl i32 %sub, %2
  %sub1 = sub i32 %1, %shl
  %cmp = icmp slt i32 %sub1, 0
  br i1 %cmp, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %cmp2 = icmp ugt i32 %sub, 255
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  store i32 %sub, ptr %dep, align 8
  br label %cleanup

if.else:                                          ; preds = %if.then
  %shl5 = shl nuw nsw i32 %sub, 1
  store i32 %shl5, ptr %dep, align 8
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr %DbitsLeft, align 8
  %cmp8 = icmp sgt i32 %2, 1
  br i1 %cmp8, label %cleanup, label %if.else10

if.else10:                                        ; preds = %if.else
  %shl12 = shl i32 %1, 16
  %Dcodestrm_len.i = getelementptr inbounds i8, ptr %dep, i64 24
  %3 = load ptr, ptr %Dcodestrm_len.i, align 8
  %4 = load i32, ptr %3, align 4
  %add.i = add nsw i32 %4, 2
  store i32 %add.i, ptr %3, align 4
  %Dcodestrm.i = getelementptr inbounds i8, ptr %dep, i64 16
  %5 = load ptr, ptr %Dcodestrm.i, align 8
  %idxprom.i = sext i32 %4 to i64
  %arrayidx.i = getelementptr inbounds i8, ptr %5, i64 %idxprom.i
  %6 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %6 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %arrayidx5.i = getelementptr i8, ptr %arrayidx.i, i64 1
  %7 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %7 to i32
  %or.i = or disjoint i32 %shl12, %conv6.i
  %or = or disjoint i32 %or.i, %shl.i
  store i32 %or, ptr %Dvalue, align 4
  store i32 16, ptr %DbitsLeft, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.else, %if.else10, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.else10 ], [ 0, %if.else ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @biari_init_context(i32 noundef %qp, ptr nocapture noundef writeonly %ctx, ptr nocapture noundef readonly %ini) local_unnamed_addr #6 {
entry:
  %0 = load i8, ptr %ini, align 1
  %conv = sext i8 %0 to i32
  %mul = mul nsw i32 %conv, %qp
  %shr = ashr i32 %mul, 4
  %arrayidx1 = getelementptr inbounds i8, ptr %ini, i64 1
  %1 = load i8, ptr %arrayidx1, align 1
  %conv2 = sext i8 %1 to i32
  %add = add nsw i32 %shr, %conv2
  %cmp = icmp sgt i32 %add, 63
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = tail call i32 @llvm.umin.i32(i32 %add, i32 126)
  %3 = trunc nuw nsw i32 %2 to i16
  %conv4 = add nsw i16 %3, -64
  br label %if.end

if.else:                                          ; preds = %entry
  %cond.i18 = tail call range(i32 -134217856, 64) i32 @llvm.smax.i32(i32 %add, i32 1)
  %4 = trunc i32 %cond.i18 to i16
  %conv7 = sub nuw nsw i16 63, %4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv7.sink = phi i16 [ %conv4, %if.then ], [ %conv7, %if.else ]
  %.sink = phi i8 [ 1, %if.then ], [ 0, %if.else ]
  store i16 %conv7.sink, ptr %ctx, align 2
  %5 = getelementptr inbounds i8, ptr %ctx, i64 2
  store i8 %.sink, ptr %5, align 2
  ret void
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
