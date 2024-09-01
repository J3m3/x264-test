; ModuleID = 'ldecod_src/annexb.c'
source_filename = "ldecod_src/annexb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errortext = external global [300 x i8], align 16
@.str = private unnamed_addr constant [42 x i8] c"Memory allocation for Annex_B file failed\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"GetAnnexbNALU: Buf\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"OpenAnnexBFile: tried to open Annex B file twice\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Cannot open Annex B ByteStream file '%s'\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"OpenAnnexBFile: cannot allocate IO buffer\00", align 1
@str.9 = private unnamed_addr constant [110 x i8] c"GetAnnexbNALU: The leading_zero_8bits syntax can only be present in the first byte stream NAL unit, return -1\00", align 1
@str.10 = private unnamed_addr constant [69 x i8] c"GetAnnexbNALU: no Start Code at the beginning of the NALU, return -1\00", align 1
@str.11 = private unnamed_addr constant [36 x i8] c"GetAnnexbNALU can't read start code\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @malloc_annex_b(ptr nocapture noundef %p_Vid) local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #14
  %annex_b = getelementptr inbounds i8, ptr %p_Vid, i64 856608
  store ptr %call, ptr %annex_b, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) @errortext, ptr noundef nonnull align 1 dereferenceable(42) @.str, i64 42, i1 false)
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #15
  %.pre = load ptr, ptr %annex_b, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %nalu = getelementptr inbounds i8, ptr %p_Vid, i64 856832
  %1 = load ptr, ptr %nalu, align 8
  %max_size = getelementptr inbounds i8, ptr %1, i64 8
  %2 = load i32, ptr %max_size, align 8
  %conv = zext i32 %2 to i64
  %call2 = tail call noalias ptr @malloc(i64 noundef %conv) #16
  %Buf = getelementptr inbounds i8, ptr %0, i64 48
  store ptr %call2, ptr %Buf, align 8
  %cmp4 = icmp eq ptr %call2, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 101) #15
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @init_annex_b(ptr nocapture noundef writeonly %annex_b) local_unnamed_addr #5 {
entry:
  store i32 -1, ptr %annex_b, align 8
  %iobuffer = getelementptr inbounds i8, ptr %annex_b, i64 8
  %IsFirstByteStreamNALU = getelementptr inbounds i8, ptr %annex_b, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %iobuffer, i8 0, i64 24, i1 false)
  store i32 1, ptr %IsFirstByteStreamNALU, align 4
  %nextstartcodebytes = getelementptr inbounds i8, ptr %annex_b, i64 40
  store i32 0, ptr %nextstartcodebytes, align 8
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_annex_b(ptr nocapture noundef %p_Vid) local_unnamed_addr #6 {
entry:
  %annex_b = getelementptr inbounds i8, ptr %p_Vid, i64 856608
  %0 = load ptr, ptr %annex_b, align 8
  %Buf = getelementptr inbounds i8, ptr %0, i64 48
  %1 = load ptr, ptr %Buf, align 8
  tail call void @free(ptr noundef %1) #15
  %2 = load ptr, ptr %annex_b, align 8
  %Buf2 = getelementptr inbounds i8, ptr %2, i64 48
  store ptr null, ptr %Buf2, align 8
  %3 = load ptr, ptr %annex_b, align 8
  tail call void @free(ptr noundef %3) #15
  store ptr null, ptr %annex_b, align 8
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @GetAnnexbNALU(ptr nocapture noundef readonly %p_Vid, ptr nocapture noundef %nalu) local_unnamed_addr #8 {
entry:
  %annex_b1 = getelementptr inbounds i8, ptr %p_Vid, i64 856608
  %0 = load ptr, ptr %annex_b1, align 8
  %Buf = getelementptr inbounds i8, ptr %0, i64 48
  %1 = load ptr, ptr %Buf, align 8
  %nextstartcodebytes = getelementptr inbounds i8, ptr %0, i64 40
  %2 = load i32, ptr %nextstartcodebytes, align 8
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %while.cond.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp3263 = icmp sgt i32 %2, 1
  br i1 %cmp3263, label %for.body, label %for.end

while.cond.preheader:                             ; preds = %entry
  %is_eof = getelementptr inbounds i8, ptr %0, i64 28
  %bytesinbuffer.i = getelementptr inbounds i8, ptr %0, i64 24
  %iobufferread.phi.trans.insert.i = getelementptr inbounds i8, ptr %0, i64 16
  %iobuffer.i.i = getelementptr inbounds i8, ptr %0, i64 8
  %iIOBufferSize.i.i = getelementptr inbounds i8, ptr %0, i64 32
  br label %while.cond

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %pBuf.0266 = phi ptr [ %incdec.ptr, %for.body ], [ %1, %for.cond.preheader ]
  %pos.0265 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %incdec.ptr = getelementptr inbounds i8, ptr %pBuf.0266, i64 1
  store i8 0, ptr %pBuf.0266, align 1
  %inc = add nuw nsw i32 %pos.0265, 1
  %3 = load i32, ptr %nextstartcodebytes, align 8
  %sub = add nsw i32 %3, -1
  %cmp3 = icmp slt i32 %inc, %sub
  br i1 %cmp3, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body
  %4 = add nuw nsw i32 %pos.0265, 2
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader
  %pos.0.lcssa = phi i32 [ 1, %for.cond.preheader ], [ %4, %for.end.loopexit ]
  %pBuf.0.lcssa = phi ptr [ %1, %for.cond.preheader ], [ %incdec.ptr, %for.end.loopexit ]
  %incdec.ptr5 = getelementptr inbounds i8, ptr %pBuf.0.lcssa, i64 1
  store i8 1, ptr %pBuf.0.lcssa, align 1
  br label %if.end12

while.cond:                                       ; preds = %while.cond.preheader, %getfbyte.exit
  %pos.1 = phi i32 [ %inc7, %getfbyte.exit ], [ 0, %while.cond.preheader ]
  %pBuf.1 = phi ptr [ %incdec.ptr8, %getfbyte.exit ], [ %1, %while.cond.preheader ]
  %5 = load i32, ptr %is_eof, align 4
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %while.body, label %if.end12

while.body:                                       ; preds = %while.cond
  %inc7 = add nuw nsw i32 %pos.1, 1
  %6 = load i32, ptr %bytesinbuffer.i, align 8
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %if.then.i, label %if.end3.i

if.then.i:                                        ; preds = %while.body
  %7 = load i32, ptr %0, align 8
  %8 = load ptr, ptr %iobuffer.i.i, align 8
  %9 = load i32, ptr %iIOBufferSize.i.i, align 8
  %conv.i.i = sext i32 %9 to i64
  %call.i.i = tail call i64 @read(i32 noundef %7, ptr noundef %8, i64 noundef %conv.i.i) #15
  %conv1.i.i = trunc i64 %call.i.i to i32
  %cmp.i.i = icmp eq i32 %conv1.i.i, 0
  br i1 %cmp.i.i, label %getChunk.exit.thread.i, label %if.end3.i

getChunk.exit.thread.i:                           ; preds = %if.then.i
  store i32 1, ptr %is_eof, align 4
  br label %getfbyte.exit

if.end3.i:                                        ; preds = %while.body, %if.then.i
  %iobufferread.phi.trans.insert.sink.i = phi ptr [ %iobuffer.i.i, %if.then.i ], [ %iobufferread.phi.trans.insert.i, %while.body ]
  %10 = phi i32 [ %conv1.i.i, %if.then.i ], [ %6, %while.body ]
  %.pre.i = load ptr, ptr %iobufferread.phi.trans.insert.sink.i, align 8
  %dec.i = add nsw i32 %10, -1
  store i32 %dec.i, ptr %bytesinbuffer.i, align 8
  %incdec.ptr.i = getelementptr inbounds i8, ptr %.pre.i, i64 1
  store ptr %incdec.ptr.i, ptr %iobufferread.phi.trans.insert.i, align 8
  %11 = load i8, ptr %.pre.i, align 1
  br label %getfbyte.exit

getfbyte.exit:                                    ; preds = %getChunk.exit.thread.i, %if.end3.i
  %retval.0.i = phi i8 [ %11, %if.end3.i ], [ 0, %getChunk.exit.thread.i ]
  %incdec.ptr8 = getelementptr inbounds i8, ptr %pBuf.1, i64 1
  store i8 %retval.0.i, ptr %pBuf.1, align 1
  %cmp9.not = icmp eq i8 %retval.0.i, 0
  br i1 %cmp9.not, label %while.cond, label %if.end12

if.end12:                                         ; preds = %while.cond, %getfbyte.exit, %for.end
  %pos.2 = phi i32 [ %pos.0.lcssa, %for.end ], [ %pos.1, %while.cond ], [ %inc7, %getfbyte.exit ]
  %pBuf.2 = phi ptr [ %incdec.ptr5, %for.end ], [ %pBuf.1, %while.cond ], [ %incdec.ptr8, %getfbyte.exit ]
  %is_eof13 = getelementptr inbounds i8, ptr %0, i64 28
  %12 = load i32, ptr %is_eof13, align 4
  %cmp14 = icmp eq i32 %12, 1
  br i1 %cmp14, label %if.then16, label %if.end22

if.then16:                                        ; preds = %if.end12
  %cmp17 = icmp eq i32 %pos.2, 0
  br i1 %cmp17, label %cleanup, label %if.else20

if.else20:                                        ; preds = %if.then16
  %puts216 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11)
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  %add.ptr = getelementptr inbounds i8, ptr %pBuf.2, i64 -1
  %13 = load i8, ptr %add.ptr, align 1
  %cmp24 = icmp ne i8 %13, 1
  %cmp26 = icmp slt i32 %pos.2, 3
  %or.cond = select i1 %cmp24, i1 true, i1 %cmp26
  br i1 %or.cond, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end22
  %puts215 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  br label %cleanup

if.end30:                                         ; preds = %if.end22
  %cmp31 = icmp eq i32 %pos.2, 3
  %14 = icmp ugt i32 %pos.2, 4
  %storemerge = select i1 %cmp31, i32 3, i32 4
  store i32 %storemerge, ptr %nalu, align 8
  %IsFirstByteStreamNALU = getelementptr inbounds i8, ptr %0, i64 36
  %15 = load i32, ptr %IsFirstByteStreamNALU, align 4
  %tobool38 = icmp eq i32 %15, 0
  %or.cond145 = select i1 %tobool38, i1 %14, i1 false
  br i1 %or.cond145, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end30
  %puts214 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  br label %cleanup

if.end43:                                         ; preds = %if.end30
  store i32 0, ptr %IsFirstByteStreamNALU, align 4
  %bytesinbuffer.i217 = getelementptr inbounds i8, ptr %0, i64 24
  %iobufferread.phi.trans.insert.i220 = getelementptr inbounds i8, ptr %0, i64 16
  %iobuffer.i.i229 = getelementptr inbounds i8, ptr %0, i64 8
  %iIOBufferSize.i.i230 = getelementptr inbounds i8, ptr %0, i64 32
  br label %while.body48

while.body48:                                     ; preds = %if.end43, %if.end91
  %pBuf.3270 = phi ptr [ %pBuf.2, %if.end43 ], [ %incdec.ptr81, %if.end91 ]
  %pos.3269 = phi i32 [ %pos.2, %if.end43 ], [ %inc79, %if.end91 ]
  %16 = load i32, ptr %is_eof13, align 4
  %cmp50 = icmp eq i32 %16, 1
  br i1 %cmp50, label %if.then52, label %if.end78

if.then52:                                        ; preds = %while.body48
  %add.ptr53 = getelementptr inbounds i8, ptr %pBuf.3270, i64 -2
  %17 = load i8, ptr %add.ptr53, align 1
  %cmp57275 = icmp eq i8 %17, 0
  br i1 %cmp57275, label %while.body59, label %while.end60

while.body59:                                     ; preds = %if.then52, %while.body59
  %pBuf.4277 = phi ptr [ %incdec.ptr55, %while.body59 ], [ %add.ptr53, %if.then52 ]
  %pos.4276 = phi i32 [ %dec, %while.body59 ], [ %pos.3269, %if.then52 ]
  %incdec.ptr55 = getelementptr inbounds i8, ptr %pBuf.4277, i64 -1
  %dec = add nsw i32 %pos.4276, -1
  %18 = load i8, ptr %incdec.ptr55, align 1
  %cmp57 = icmp eq i8 %18, 0
  br i1 %cmp57, label %while.body59, label %while.end60

while.end60:                                      ; preds = %while.body59, %if.then52
  %pos.4.lcssa = phi i32 [ %pos.3269, %if.then52 ], [ %dec, %while.body59 ]
  %sub61 = add nsw i32 %pos.4.lcssa, -1
  %sub62 = sub nsw i32 %sub61, %pos.2
  %len = getelementptr inbounds i8, ptr %nalu, i64 4
  store i32 %sub62, ptr %len, align 4
  %buf = getelementptr inbounds i8, ptr %nalu, i64 24
  %19 = load ptr, ptr %buf, align 8
  %20 = load ptr, ptr %Buf, align 8
  %idx.ext = zext nneg i32 %pos.2 to i64
  %add.ptr64 = getelementptr inbounds i8, ptr %20, i64 %idx.ext
  %conv66 = zext i32 %sub62 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %19, ptr align 1 %add.ptr64, i64 %conv66, i1 false)
  %21 = load ptr, ptr %buf, align 8
  %22 = load i8, ptr %21, align 1
  %23 = lshr i8 %22, 7
  %shr = zext nneg i8 %23 to i32
  %forbidden_bit = getelementptr inbounds i8, ptr %nalu, i64 12
  store i32 %shr, ptr %forbidden_bit, align 4
  %24 = load i8, ptr %21, align 1
  %25 = lshr i8 %24, 5
  %26 = and i8 %25, 3
  %and72 = zext nneg i8 %26 to i32
  %nal_reference_idc = getelementptr inbounds i8, ptr %nalu, i64 20
  store i32 %and72, ptr %nal_reference_idc, align 4
  %27 = load i8, ptr %21, align 1
  %28 = and i8 %27, 31
  %and75 = zext nneg i8 %28 to i32
  %nal_unit_type = getelementptr inbounds i8, ptr %nalu, i64 16
  store i32 %and75, ptr %nal_unit_type, align 8
  store i32 0, ptr %nextstartcodebytes, align 8
  br label %cleanup

if.end78:                                         ; preds = %while.body48
  %inc79 = add nuw nsw i32 %pos.3269, 1
  %29 = load i32, ptr %bytesinbuffer.i217, align 8
  %cmp.i218 = icmp eq i32 %29, 0
  br i1 %cmp.i218, label %if.then.i228, label %if.end3.i221

if.then.i228:                                     ; preds = %if.end78
  %30 = load i32, ptr %0, align 8
  %31 = load ptr, ptr %iobuffer.i.i229, align 8
  %32 = load i32, ptr %iIOBufferSize.i.i230, align 8
  %conv.i.i231 = sext i32 %32 to i64
  %call.i.i232 = tail call i64 @read(i32 noundef %30, ptr noundef %31, i64 noundef %conv.i.i231) #15
  %conv1.i.i233 = trunc i64 %call.i.i232 to i32
  %cmp.i.i234 = icmp eq i32 %conv1.i.i233, 0
  br i1 %cmp.i.i234, label %getChunk.exit.thread.i235, label %if.end3.i221

getChunk.exit.thread.i235:                        ; preds = %if.then.i228
  store i32 1, ptr %is_eof13, align 4
  br label %getfbyte.exit237

if.end3.i221:                                     ; preds = %if.end78, %if.then.i228
  %iobufferread.phi.trans.insert.sink.i222 = phi ptr [ %iobuffer.i.i229, %if.then.i228 ], [ %iobufferread.phi.trans.insert.i220, %if.end78 ]
  %33 = phi i32 [ %conv1.i.i233, %if.then.i228 ], [ %29, %if.end78 ]
  %.pre.i223 = load ptr, ptr %iobufferread.phi.trans.insert.sink.i222, align 8
  %dec.i224 = add nsw i32 %33, -1
  store i32 %dec.i224, ptr %bytesinbuffer.i217, align 8
  %incdec.ptr.i226 = getelementptr inbounds i8, ptr %.pre.i223, i64 1
  store ptr %incdec.ptr.i226, ptr %iobufferread.phi.trans.insert.i220, align 8
  %34 = load i8, ptr %.pre.i223, align 1
  br label %getfbyte.exit237

getfbyte.exit237:                                 ; preds = %getChunk.exit.thread.i235, %if.end3.i221
  %35 = phi i8 [ %34, %if.end3.i221 ], [ 0, %getChunk.exit.thread.i235 ]
  %incdec.ptr81 = getelementptr inbounds i8, ptr %pBuf.3270, i64 1
  store i8 %35, ptr %pBuf.3270, align 1
  %add.ptr82 = getelementptr inbounds i8, ptr %pBuf.3270, i64 -3
  %36 = load i8, ptr %add.ptr82, align 1
  %cmp1.not.i = icmp eq i8 %36, 0
  %incdec.ptr.i239 = getelementptr inbounds i8, ptr %pBuf.3270, i64 -2
  %37 = load i8, ptr %incdec.ptr.i239, align 1
  %cmp1.not.i.1 = icmp eq i8 %37, 0
  br i1 %cmp1.not.i, label %for.inc.i, label %if.then86

for.inc.i:                                        ; preds = %getfbyte.exit237
  br i1 %cmp1.not.i.1, label %for.inc.i.1, label %if.end91

for.inc.i.1:                                      ; preds = %for.inc.i
  %incdec.ptr.i239.1 = getelementptr inbounds i8, ptr %pBuf.3270, i64 -1
  %38 = load i8, ptr %incdec.ptr.i239.1, align 1
  %cmp1.not.i.2 = icmp eq i8 %38, 0
  %cmp4.not.i.not = icmp eq i8 %35, 1
  %or.cond299 = select i1 %cmp1.not.i.2, i1 %cmp4.not.i.not, i1 false
  br i1 %or.cond299, label %if.then95, label %for.inc.i246

if.then86:                                        ; preds = %getfbyte.exit237
  br i1 %cmp1.not.i.1, label %for.inc.i246, label %if.end91

for.inc.i246:                                     ; preds = %for.inc.i.1, %if.then86
  %incdec.ptr.i247 = getelementptr inbounds i8, ptr %pBuf.3270, i64 -1
  %39 = load i8, ptr %incdec.ptr.i247, align 1
  %cmp1.not.i244.1 = icmp eq i8 %39, 0
  br i1 %cmp1.not.i244.1, label %for.inc.i246.1, label %if.end91

for.inc.i246.1:                                   ; preds = %for.inc.i246
  %cmp4.not.i251 = icmp eq i8 %35, 1
  %..i252 = zext i1 %cmp4.not.i251 to i32
  br label %if.end91

if.end91:                                         ; preds = %for.inc.i, %if.then86, %for.inc.i246, %for.inc.i246.1
  %info2.1 = phi i32 [ %..i252, %for.inc.i246.1 ], [ 0, %for.inc.i246 ], [ 0, %if.then86 ], [ 0, %for.inc.i ]
  %tobool46.not = icmp eq i32 %info2.1, 0
  br i1 %tobool46.not, label %while.body48, label %if.end114

if.then95:                                        ; preds = %for.inc.i.1
  %add.ptr96 = getelementptr inbounds i8, ptr %pBuf.3270, i64 -4
  %40 = load i8, ptr %add.ptr96, align 1
  %cmp100271 = icmp eq i8 %40, 0
  br i1 %cmp100271, label %while.body102, label %if.end114

while.body102:                                    ; preds = %if.then95, %while.body102
  %pBuf.5273 = phi ptr [ %incdec.ptr98, %while.body102 ], [ %add.ptr96, %if.then95 ]
  %pos.5272 = phi i32 [ %dec103, %while.body102 ], [ %inc79, %if.then95 ]
  %incdec.ptr98 = getelementptr inbounds i8, ptr %pBuf.5273, i64 -1
  %dec103 = add nsw i32 %pos.5272, -1
  %41 = load i8, ptr %incdec.ptr98, align 1
  %cmp100 = icmp eq i8 %41, 0
  br i1 %cmp100, label %while.body102, label %if.end114

if.end114:                                        ; preds = %if.end91, %while.body102, %if.then95
  %storemerge213 = phi i32 [ 4, %if.then95 ], [ 4, %while.body102 ], [ 3, %if.end91 ]
  %pos.6 = phi i32 [ %inc79, %if.then95 ], [ %dec103, %while.body102 ], [ %inc79, %if.end91 ]
  store i32 %storemerge213, ptr %nextstartcodebytes, align 8
  %sub116 = sub nsw i32 %pos.6, %storemerge213
  %sub117 = sub nsw i32 %sub116, %pos.2
  %len118 = getelementptr inbounds i8, ptr %nalu, i64 4
  store i32 %sub117, ptr %len118, align 4
  %buf119 = getelementptr inbounds i8, ptr %nalu, i64 24
  %42 = load ptr, ptr %buf119, align 8
  %43 = load ptr, ptr %Buf, align 8
  %idx.ext121 = zext nneg i32 %pos.2 to i64
  %add.ptr122 = getelementptr inbounds i8, ptr %43, i64 %idx.ext121
  %conv.i = sext i32 %sub117 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %42, ptr readonly align 1 %add.ptr122, i64 %conv.i, i1 false)
  %44 = load ptr, ptr %buf119, align 8
  %45 = load i8, ptr %44, align 1
  %46 = lshr i8 %45, 7
  %shr126 = zext nneg i8 %46 to i32
  %forbidden_bit128 = getelementptr inbounds i8, ptr %nalu, i64 12
  store i32 %shr126, ptr %forbidden_bit128, align 4
  %47 = load i8, ptr %44, align 1
  %48 = lshr i8 %47, 5
  %49 = and i8 %48, 3
  %and132 = zext nneg i8 %49 to i32
  %nal_reference_idc133 = getelementptr inbounds i8, ptr %nalu, i64 20
  store i32 %and132, ptr %nal_reference_idc133, align 4
  %50 = load i8, ptr %44, align 1
  %51 = and i8 %50, 31
  %and136 = zext nneg i8 %51 to i32
  %nal_unit_type137 = getelementptr inbounds i8, ptr %nalu, i64 16
  store i32 %and136, ptr %nal_unit_type137, align 8
  %lost_packets = getelementptr inbounds i8, ptr %nalu, i64 32
  store i16 0, ptr %lost_packets, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end114, %while.end60, %if.then41, %if.then28, %if.else20
  %retval.0 = phi i32 [ -1, %if.else20 ], [ -1, %if.then28 ], [ -1, %if.then41 ], [ %sub61, %while.end60 ], [ %sub116, %if.end114 ], [ 0, %if.then16 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define dso_local void @OpenAnnexBFile(ptr nocapture noundef readonly %p_Vid, ptr noundef %fn) local_unnamed_addr #0 {
entry:
  %annex_b1 = getelementptr inbounds i8, ptr %p_Vid, i64 856608
  %0 = load ptr, ptr %annex_b1, align 8
  %iobuffer = getelementptr inbounds i8, ptr %0, i64 8
  %1 = load ptr, ptr %iobuffer, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.6, i32 noundef 500) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = tail call i32 (ptr, i32, ...) @open(ptr noundef %fn, i32 noundef 0) #15
  store i32 %call, ptr %0, align 8
  %cmp2 = icmp eq i32 %call, -1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.7, ptr noundef %fn) #15
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 500) #15
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %iIOBufferSize = getelementptr inbounds i8, ptr %0, i64 32
  store i32 524288, ptr %iIOBufferSize, align 8
  %call7 = tail call noalias dereferenceable_or_null(524288) ptr @malloc(i64 noundef 524288) #16
  store ptr %call7, ptr %iobuffer, align 8
  %cmp10 = icmp eq ptr %call7, null
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end5
  tail call void @error(ptr noundef nonnull @.str.8, i32 noundef 500) #15
  %.pre = load ptr, ptr %iobuffer, align 8
  %.pre23 = load i32, ptr %iIOBufferSize, align 8
  %2 = sext i32 %.pre23 to i64
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end5
  %conv.i = phi i64 [ %2, %if.then12 ], [ 524288, %if.end5 ]
  %3 = phi ptr [ %.pre, %if.then12 ], [ %call7, %if.end5 ]
  %is_eof = getelementptr inbounds i8, ptr %0, i64 28
  store i32 0, ptr %is_eof, align 4
  %4 = load i32, ptr %0, align 8
  %call.i = tail call i64 @read(i32 noundef %4, ptr noundef %3, i64 noundef %conv.i) #15
  %conv1.i = trunc i64 %call.i to i32
  %cmp.i = icmp eq i32 %conv1.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end13
  store i32 1, ptr %is_eof, align 4
  br label %getChunk.exit

if.end.i:                                         ; preds = %if.end13
  %bytesinbuffer.i = getelementptr inbounds i8, ptr %0, i64 24
  store i32 %conv1.i, ptr %bytesinbuffer.i, align 8
  %5 = load ptr, ptr %iobuffer, align 8
  %iobufferread.i = getelementptr inbounds i8, ptr %0, i64 16
  store ptr %5, ptr %iobufferread.i, align 8
  br label %getChunk.exit

getChunk.exit:                                    ; preds = %if.then.i, %if.end.i
  ret void
}

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local void @CloseAnnexBFile(ptr nocapture noundef readonly %p_Vid) local_unnamed_addr #0 {
entry:
  %annex_b1 = getelementptr inbounds i8, ptr %p_Vid, i64 856608
  %0 = load ptr, ptr %annex_b1, align 8
  %1 = load i32, ptr %0, align 8
  %cmp.not = icmp eq i32 %1, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @close(i32 noundef %1) #15
  store i32 -1, ptr %0, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %iobuffer = getelementptr inbounds i8, ptr %0, i64 8
  %2 = load ptr, ptr %iobuffer, align 8
  tail call void @free(ptr noundef %2) #15
  store ptr null, ptr %iobuffer, align 8
  ret void
}

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ResetAnnexB(ptr nocapture noundef %annex_b) local_unnamed_addr #11 {
entry:
  %is_eof = getelementptr inbounds i8, ptr %annex_b, i64 28
  store i32 0, ptr %is_eof, align 4
  %bytesinbuffer = getelementptr inbounds i8, ptr %annex_b, i64 24
  store i32 0, ptr %bytesinbuffer, align 8
  %iobuffer = getelementptr inbounds i8, ptr %annex_b, i64 8
  %0 = load ptr, ptr %iobuffer, align 8
  %iobufferread = getelementptr inbounds i8, ptr %annex_b, i64 16
  store ptr %0, ptr %iobufferread, align 8
  ret void
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
