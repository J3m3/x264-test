; ModuleID = 'x264_src/output/matroska_ebml.c'
source_filename = "x264_src/output/matroska_ebml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1, !dbg !0
@.str.3 = private unnamed_addr constant [25 x i8] c"Haali Matroska Writer b0\00", align 1, !dbg !7

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @mk_create_writer(ptr nocapture noundef readonly %filename) local_unnamed_addr #0 !dbg !37 {
entry:
    #dbg_value(ptr %filename, !142, !DIExpression(), !144)
  %calloc = tail call dereferenceable_or_null(104) ptr @calloc(i64 1, i64 104), !dbg !145
    #dbg_value(ptr %calloc, !143, !DIExpression(), !144)
  %tobool.not = icmp eq ptr %calloc, null, !dbg !146
  br i1 %tobool.not, label %cleanup, label %if.else.i, !dbg !148

if.else.i:                                        ; preds = %entry
    #dbg_value(ptr %calloc, !149, !DIExpression(), !157)
    #dbg_value(ptr null, !154, !DIExpression(), !157)
    #dbg_value(i32 0, !155, !DIExpression(), !157)
  %freelist.i = getelementptr inbounds i8, ptr %calloc, i64 40, !dbg !159
  %calloc.i = tail call dereferenceable_or_null(56) ptr @calloc(i64 1, i64 56), !dbg !161
    #dbg_value(ptr %calloc.i, !156, !DIExpression(), !157)
  %tobool4.not.i = icmp eq ptr %calloc.i, null, !dbg !163
  br i1 %tobool4.not.i, label %if.then4, label %if.end5, !dbg !165

if.then4:                                         ; preds = %if.else.i
  tail call void @free(ptr noundef nonnull %calloc) #11, !dbg !166
  br label %cleanup, !dbg !169

if.end5:                                          ; preds = %if.else.i
    #dbg_value(ptr %calloc.i, !156, !DIExpression(), !157)
  %owner.i = getelementptr inbounds i8, ptr %calloc.i, i64 24, !dbg !170
  store ptr %calloc, ptr %owner.i, align 8, !dbg !171
  %actlist.i = getelementptr inbounds i8, ptr %calloc, i64 48, !dbg !172
  %prev21.i = getelementptr inbounds i8, ptr %calloc.i, i64 8, !dbg !174
  store ptr %actlist.i, ptr %prev21.i, align 8, !dbg !175
  store ptr %calloc.i, ptr %actlist.i, align 8, !dbg !176
  %root = getelementptr inbounds i8, ptr %calloc, i64 16, !dbg !177
  store ptr %calloc.i, ptr %root, align 8, !dbg !178
  %0 = load i8, ptr %filename, align 1
  %.not = icmp eq i8 %0, 45
  br i1 %.not, label %if.end5.tail, label %if.else

if.end5.tail:                                     ; preds = %if.end5
  %1 = getelementptr inbounds i8, ptr %filename, i64 1
  %2 = load i8, ptr %1, align 1
  %3 = icmp eq i8 %2, 0, !dbg !179
  br i1 %3, label %if.then8, label %if.else, !dbg !181

if.then8:                                         ; preds = %if.end5.tail
  %4 = load ptr, ptr @stdout, align 8, !dbg !182
  br label %if.end11, !dbg !183

if.else:                                          ; preds = %if.end5, %if.end5.tail
  %call9 = tail call noalias ptr @fopen64(ptr noundef nonnull %filename, ptr noundef nonnull @.str.1), !dbg !184
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %storemerge = phi ptr [ %4, %if.then8 ], [ %call9, %if.else ], !dbg !185
  store ptr %storemerge, ptr %calloc, align 8, !dbg !185
  %tobool13.not = icmp eq ptr %storemerge, null, !dbg !186
  br i1 %tobool13.not, label %if.then14, label %if.end15, !dbg !188

if.then14:                                        ; preds = %if.end11
    #dbg_value(ptr %calloc, !189, !DIExpression(), !199)
  %5 = load ptr, ptr %freelist.i, align 8, !dbg !202
    #dbg_value(ptr %5, !195, !DIExpression(), !203)
  %tobool.not24.i = icmp eq ptr %5, null, !dbg !204
  br i1 %tobool.not24.i, label %for.cond.cleanup.i, label %for.body.i, !dbg !204

for.cond.cleanup.i:                               ; preds = %for.body.i, %if.then14
  %6 = load ptr, ptr %actlist.i, align 8, !dbg !205
    #dbg_value(ptr %6, !197, !DIExpression(), !206)
  %tobool4.not26.i = icmp eq ptr %6, null, !dbg !207
  br i1 %tobool4.not26.i, label %mk_destroy_contexts.exit, label %for.body6.i, !dbg !207

for.body.i:                                       ; preds = %if.then14, %for.body.i
  %cur.025.i = phi ptr [ %7, %for.body.i ], [ %5, %if.then14 ]
    #dbg_value(ptr %cur.025.i, !195, !DIExpression(), !203)
  %7 = load ptr, ptr %cur.025.i, align 8, !dbg !208
    #dbg_value(ptr %7, !194, !DIExpression(), !199)
  %data.i = getelementptr inbounds i8, ptr %cur.025.i, i64 40, !dbg !211
  %8 = load ptr, ptr %data.i, align 8, !dbg !211
  tail call void @free(ptr noundef %8) #11, !dbg !212
  tail call void @free(ptr noundef nonnull %cur.025.i) #11, !dbg !213
    #dbg_value(ptr %7, !195, !DIExpression(), !203)
  %tobool.not.i30 = icmp eq ptr %7, null, !dbg !204
  br i1 %tobool.not.i30, label %for.cond.cleanup.i, label %for.body.i, !dbg !204, !llvm.loop !214

for.body6.i:                                      ; preds = %for.cond.cleanup.i, %for.body6.i
  %cur2.027.i = phi ptr [ %9, %for.body6.i ], [ %6, %for.cond.cleanup.i ]
    #dbg_value(ptr %cur2.027.i, !197, !DIExpression(), !206)
  %9 = load ptr, ptr %cur2.027.i, align 8, !dbg !216
    #dbg_value(ptr %9, !194, !DIExpression(), !199)
  %data8.i = getelementptr inbounds i8, ptr %cur2.027.i, i64 40, !dbg !219
  %10 = load ptr, ptr %data8.i, align 8, !dbg !219
  tail call void @free(ptr noundef %10) #11, !dbg !220
  tail call void @free(ptr noundef nonnull %cur2.027.i) #11, !dbg !221
    #dbg_value(ptr %9, !197, !DIExpression(), !206)
  %tobool4.not.i32 = icmp eq ptr %9, null, !dbg !207
  br i1 %tobool4.not.i32, label %mk_destroy_contexts.exit, label %for.body6.i, !dbg !207, !llvm.loop !222

mk_destroy_contexts.exit:                         ; preds = %for.body6.i, %for.cond.cleanup.i
  tail call void @free(ptr noundef %calloc) #11, !dbg !224
  br label %cleanup, !dbg !225

if.end15:                                         ; preds = %if.end11
  %timescale = getelementptr inbounds i8, ptr %calloc, i64 64, !dbg !226
  store i64 1000000, ptr %timescale, align 8, !dbg !227
  br label %cleanup, !dbg !228

cleanup:                                          ; preds = %entry, %if.end15, %mk_destroy_contexts.exit, %if.then4
  %retval.0 = phi ptr [ %calloc, %if.end15 ], [ null, %mk_destroy_contexts.exit ], [ null, %if.then4 ], [ null, %entry ], !dbg !144
  ret ptr %retval.0, !dbg !229
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define internal fastcc ptr @mk_create_context(ptr noundef %w, ptr noundef %parent, i32 noundef %id) unnamed_addr #3 !dbg !150 {
entry:
    #dbg_value(ptr %w, !149, !DIExpression(), !230)
    #dbg_value(ptr %parent, !154, !DIExpression(), !230)
    #dbg_value(i32 %id, !155, !DIExpression(), !230)
  %freelist = getelementptr inbounds i8, ptr %w, i64 40, !dbg !231
  %0 = load ptr, ptr %freelist, align 8, !dbg !231
  %tobool.not = icmp eq ptr %0, null, !dbg !232
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !233

if.then:                                          ; preds = %entry
    #dbg_value(ptr %0, !156, !DIExpression(), !230)
  %1 = load ptr, ptr %0, align 8, !dbg !234
  store ptr %1, ptr %freelist, align 8, !dbg !236
  br label %if.end6, !dbg !237

if.else:                                          ; preds = %entry
  %calloc = tail call dereferenceable_or_null(56) ptr @calloc(i64 1, i64 56), !dbg !238
    #dbg_value(ptr %calloc, !156, !DIExpression(), !230)
  %tobool4.not = icmp eq ptr %calloc, null, !dbg !239
  br i1 %tobool4.not, label %cleanup, label %if.end6, !dbg !240

if.end6:                                          ; preds = %if.else, %if.then
  %c.0 = phi ptr [ %0, %if.then ], [ %calloc, %if.else ], !dbg !241
    #dbg_value(ptr %c.0, !156, !DIExpression(), !230)
  %parent7 = getelementptr inbounds i8, ptr %c.0, i64 16, !dbg !242
  store ptr %parent, ptr %parent7, align 8, !dbg !243
  %owner = getelementptr inbounds i8, ptr %c.0, i64 24, !dbg !244
  store ptr %w, ptr %owner, align 8, !dbg !245
  %id8 = getelementptr inbounds i8, ptr %c.0, i64 32, !dbg !246
  store i32 %id, ptr %id8, align 8, !dbg !247
  %actlist = getelementptr inbounds i8, ptr %w, i64 48, !dbg !248
  %2 = load ptr, ptr %actlist, align 8, !dbg !248
  %tobool10.not = icmp eq ptr %2, null, !dbg !249
  br i1 %tobool10.not, label %if.end15, label %if.then11, !dbg !250

if.then11:                                        ; preds = %if.end6
  %prev = getelementptr inbounds i8, ptr %2, i64 8, !dbg !251
  store ptr %c.0, ptr %prev, align 8, !dbg !252
  %.pre = load ptr, ptr %owner, align 8, !dbg !253
  %actlist17.phi.trans.insert = getelementptr inbounds i8, ptr %.pre, i64 48
  %.pre43 = load ptr, ptr %actlist17.phi.trans.insert, align 8, !dbg !254
  br label %if.end15, !dbg !255

if.end15:                                         ; preds = %if.then11, %if.end6
  %3 = phi ptr [ %.pre43, %if.then11 ], [ null, %if.end6 ], !dbg !254
  %4 = phi ptr [ %.pre, %if.then11 ], [ %w, %if.end6 ], !dbg !253
  %actlist17 = getelementptr inbounds i8, ptr %4, i64 48, !dbg !254
  store ptr %3, ptr %c.0, align 8, !dbg !256
  %prev21 = getelementptr inbounds i8, ptr %c.0, i64 8, !dbg !257
  store ptr %actlist17, ptr %prev21, align 8, !dbg !258
  store ptr %c.0, ptr %actlist17, align 8, !dbg !259
  br label %cleanup, !dbg !260

cleanup:                                          ; preds = %if.else, %if.end15
  %retval.0 = phi ptr [ %c.0, %if.end15 ], [ null, %if.else ], !dbg !230
  ret ptr %retval.0, !dbg !261
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !262 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !266 noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @mk_writeHeader(ptr noundef %w, ptr nocapture noundef readonly %writing_app, ptr nocapture noundef readonly %codec_id, ptr nocapture noundef readonly %codec_private, i32 noundef %codec_private_size, i64 noundef %default_frame_duration, i64 noundef %timescale, i32 noundef %width, i32 noundef %height, i32 noundef %d_width, i32 noundef %d_height) local_unnamed_addr #0 !dbg !271 {
entry:
    #dbg_value(ptr %w, !277, !DIExpression(), !291)
    #dbg_value(ptr %writing_app, !278, !DIExpression(), !291)
    #dbg_value(ptr %codec_id, !279, !DIExpression(), !291)
    #dbg_value(ptr %codec_private, !280, !DIExpression(), !291)
    #dbg_value(i32 %codec_private_size, !281, !DIExpression(), !291)
    #dbg_value(i64 %default_frame_duration, !282, !DIExpression(), !291)
    #dbg_value(i64 %timescale, !283, !DIExpression(), !291)
    #dbg_value(i32 %width, !284, !DIExpression(), !291)
    #dbg_value(i32 %height, !285, !DIExpression(), !291)
    #dbg_value(i32 %d_width, !286, !DIExpression(), !291)
    #dbg_value(i32 %d_height, !287, !DIExpression(), !291)
  %wrote_header = getelementptr inbounds i8, ptr %w, i64 96, !dbg !292
  %0 = load i8, ptr %wrote_header, align 8, !dbg !292
  %tobool.not = icmp eq i8 %0, 0, !dbg !294
  br i1 %tobool.not, label %if.end, label %cleanup, !dbg !295

if.end:                                           ; preds = %entry
  %timescale1 = getelementptr inbounds i8, ptr %w, i64 64, !dbg !296
  store i64 %timescale, ptr %timescale1, align 8, !dbg !297
  %def_duration = getelementptr inbounds i8, ptr %w, i64 56, !dbg !298
  store i64 %default_frame_duration, ptr %def_duration, align 8, !dbg !299
  %root = getelementptr inbounds i8, ptr %w, i64 16, !dbg !300
  %1 = load ptr, ptr %root, align 8, !dbg !300
    #dbg_value(ptr %w, !149, !DIExpression(), !302)
    #dbg_value(ptr %1, !154, !DIExpression(), !302)
    #dbg_value(i32 440786851, !155, !DIExpression(), !302)
  %freelist.i = getelementptr inbounds i8, ptr %w, i64 40, !dbg !304
  %2 = load ptr, ptr %freelist.i, align 8, !dbg !304
  %tobool.not.i = icmp eq ptr %2, null, !dbg !305
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !dbg !306

if.then.i:                                        ; preds = %if.end
    #dbg_value(ptr %2, !156, !DIExpression(), !302)
  %3 = load ptr, ptr %2, align 8, !dbg !307
  store ptr %3, ptr %freelist.i, align 8, !dbg !308
  br label %if.end6.i, !dbg !309

if.else.i:                                        ; preds = %if.end
  %calloc.i = tail call dereferenceable_or_null(56) ptr @calloc(i64 1, i64 56), !dbg !310
    #dbg_value(ptr %calloc.i, !156, !DIExpression(), !302)
  %tobool4.not.i = icmp eq ptr %calloc.i, null, !dbg !311
  br i1 %tobool4.not.i, label %cleanup, label %if.end6.i, !dbg !312

if.end6.i:                                        ; preds = %if.else.i, %if.then.i
  %c.0.i = phi ptr [ %2, %if.then.i ], [ %calloc.i, %if.else.i ], !dbg !313
    #dbg_value(ptr %c.0.i, !156, !DIExpression(), !302)
  %parent7.i = getelementptr inbounds i8, ptr %c.0.i, i64 16, !dbg !314
  store ptr %1, ptr %parent7.i, align 8, !dbg !315
  %owner.i = getelementptr inbounds i8, ptr %c.0.i, i64 24, !dbg !316
  store ptr %w, ptr %owner.i, align 8, !dbg !317
  %id8.i = getelementptr inbounds i8, ptr %c.0.i, i64 32, !dbg !318
  store i32 440786851, ptr %id8.i, align 8, !dbg !319
  %actlist.i = getelementptr inbounds i8, ptr %w, i64 48, !dbg !320
  %4 = load ptr, ptr %actlist.i, align 8, !dbg !320
  %tobool10.not.i = icmp eq ptr %4, null, !dbg !321
  br i1 %tobool10.not.i, label %do.body, label %if.then11.i, !dbg !322

if.then11.i:                                      ; preds = %if.end6.i
  %prev.i = getelementptr inbounds i8, ptr %4, i64 8, !dbg !323
  store ptr %c.0.i, ptr %prev.i, align 8, !dbg !324
  %.pre.i = load ptr, ptr %owner.i, align 8, !dbg !325
  %actlist17.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 48
  %.pre43.i = load ptr, ptr %actlist17.phi.trans.insert.i, align 8, !dbg !326
  br label %do.body, !dbg !327

do.body:                                          ; preds = %if.then11.i, %if.end6.i
  %5 = phi ptr [ %.pre43.i, %if.then11.i ], [ null, %if.end6.i ], !dbg !326
  %6 = phi ptr [ %.pre.i, %if.then11.i ], [ %w, %if.end6.i ], !dbg !325
  %actlist17.i = getelementptr inbounds i8, ptr %6, i64 48, !dbg !326
  store ptr %5, ptr %c.0.i, align 8, !dbg !328
  %prev21.i = getelementptr inbounds i8, ptr %c.0.i, i64 8, !dbg !329
  store ptr %actlist17.i, ptr %prev21.i, align 8, !dbg !330
  store ptr %c.0.i, ptr %actlist17.i, align 8, !dbg !331
    #dbg_value(ptr %c.0.i, !288, !DIExpression(), !291)
    #dbg_value(ptr %c.0.i, !332, !DIExpression(), !345)
    #dbg_value(i32 17030, !337, !DIExpression(), !345)
    #dbg_value(i64 1, !338, !DIExpression(), !345)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !345)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !345)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !345)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !345)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !345)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !345)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !345)
    #dbg_value(i8 1, !339, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !345)
    #dbg_value(i32 0, !344, !DIExpression(), !345)
    #dbg_value(ptr %c.0.i, !349, !DIExpression(), !359)
    #dbg_value(i32 17030, !354, !DIExpression(), !359)
    #dbg_value(i8 0, !355, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !359)
    #dbg_value(i8 0, !355, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !359)
    #dbg_value(i8 66, !355, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !359)
    #dbg_value(i8 -122, !355, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !359)
  %d_max.i86.i = getelementptr inbounds i8, ptr %c.0.i, i64 52, !dbg !363
  %7 = load i32, ptr %d_max.i86.i, align 4, !dbg !363
    #dbg_value(ptr %c.0.i, !369, !DIExpression(), !377)
    #dbg_value(ptr %c.0.i, !369, !DIExpression(), !379)
    #dbg_value(ptr undef, !370, !DIExpression(), !377)
    #dbg_value(ptr undef, !370, !DIExpression(), !379)
  %d_cur.i84.i = getelementptr inbounds i8, ptr %c.0.i, i64 48, !dbg !382
  %8 = load i32, ptr %d_cur.i84.i, align 8, !dbg !382
    #dbg_value(i32 2, !371, !DIExpression(), !379)
  %add.i58.i = add i32 %8, 2, !dbg !383
    #dbg_value(i32 %add.i58.i, !372, !DIExpression(), !379)
  %cmp.i60.i = icmp ugt i32 %add.i58.i, %7, !dbg !384
  br i1 %cmp.i60.i, label %if.then.i68.i, label %entry.if.end11_crit_edge.i61.i, !dbg !385

entry.if.end11_crit_edge.i61.i:                   ; preds = %do.body
  %data12.phi.trans.insert.i62.i = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i63.i = load ptr, ptr %data12.phi.trans.insert.i62.i, align 8, !dbg !386
  br label %land.rhs.preheader.i, !dbg !385

if.then.i68.i:                                    ; preds = %do.body
  %tobool.not.i69.i = icmp eq i32 %7, 0, !dbg !387
  %shl.i70.i = shl i32 %7, 1
  %spec.select.i71.i = select i1 %tobool.not.i69.i, i32 16, i32 %shl.i70.i, !dbg !387
    #dbg_value(i32 %spec.select.i71.i, !375, !DIExpression(), !388)
  br label %while.cond.i72.i, !dbg !389

while.cond.i72.i:                                 ; preds = %while.cond.i72.i, %if.then.i68.i
  %dn.0.i73.i = phi i32 [ %spec.select.i71.i, %if.then.i68.i ], [ %shl4.i75.i, %while.cond.i72.i ], !dbg !388
    #dbg_value(i32 %dn.0.i73.i, !375, !DIExpression(), !388)
  %cmp3.i74.i = icmp ugt i32 %add.i58.i, %dn.0.i73.i, !dbg !390
  %shl4.i75.i = shl i32 %dn.0.i73.i, 1, !dbg !391
    #dbg_value(i32 %shl4.i75.i, !375, !DIExpression(), !388)
  br i1 %cmp3.i74.i, label %while.cond.i72.i, label %while.end.i76.i, !dbg !389, !llvm.loop !392

while.end.i76.i:                                  ; preds = %while.cond.i72.i
  %data5.i77.i = getelementptr inbounds i8, ptr %c.0.i, i64 40, !dbg !394
  %9 = load ptr, ptr %data5.i77.i, align 8, !dbg !394
  %conv.i78.i = zext i32 %dn.0.i73.i to i64, !dbg !395
  %call.i79.i = tail call ptr @realloc(ptr noundef %9, i64 noundef %conv.i78.i) #12, !dbg !396
    #dbg_value(ptr %call.i79.i, !373, !DIExpression(), !388)
  %tobool6.not.not.i80.i = icmp eq ptr %call.i79.i, null, !dbg !397
  br i1 %tobool6.not.not.i80.i, label %cleanup, label %if.end.i81.i, !dbg !399

if.end.i81.i:                                     ; preds = %while.end.i76.i
  store ptr %call.i79.i, ptr %data5.i77.i, align 8, !dbg !400
  store i32 %dn.0.i73.i, ptr %d_max.i86.i, align 4, !dbg !401
  %.pre34.i82.i = load i32, ptr %d_cur.i84.i, align 8, !dbg !402
  br label %land.rhs.preheader.i

land.rhs.preheader.i:                             ; preds = %if.end.i81.i, %entry.if.end11_crit_edge.i61.i
  %10 = phi i32 [ %8, %entry.if.end11_crit_edge.i61.i ], [ %.pre34.i82.i, %if.end.i81.i ], !dbg !402
  %11 = phi ptr [ %.pre.i63.i, %entry.if.end11_crit_edge.i61.i ], [ %call.i79.i, %if.end.i81.i ], !dbg !386
  %idx.ext.i65.i = zext i32 %10 to i64, !dbg !403
  %add.ptr.i66.i = getelementptr inbounds i8, ptr %11, i64 %idx.ext.i65.i, !dbg !403
  store i8 66, ptr %add.ptr.i66.i, align 1, !dbg !404
  %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i66.i, i64 1, !dbg !404
  store i8 -122, ptr %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i, align 1, !dbg !404
  store i32 %add.i58.i, ptr %d_cur.i84.i, align 8, !dbg !405
    #dbg_value(i64 6, !344, !DIExpression(), !345)
    #dbg_value(ptr %c.0.i, !406, !DIExpression(), !414)
    #dbg_value(i32 1, !409, !DIExpression(), !414)
    #dbg_value(i8 8, !410, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !414)
    #dbg_value(i8 0, !410, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !414)
    #dbg_value(i8 0, !410, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !414)
    #dbg_value(i8 0, !410, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !414)
    #dbg_value(i8 -127, !410, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !414)
    #dbg_value(ptr %c.0.i, !369, !DIExpression(), !418)
    #dbg_value(ptr undef, !370, !DIExpression(), !418)
    #dbg_value(i32 1, !371, !DIExpression(), !418)
  %add.i.i506 = add i32 %8, 3, !dbg !422
    #dbg_value(i32 %add.i.i506, !372, !DIExpression(), !418)
  %12 = load i32, ptr %d_max.i86.i, align 4, !dbg !423
  %cmp.i.i508 = icmp ugt i32 %add.i.i506, %12, !dbg !424
  br i1 %cmp.i.i508, label %if.then.i.i515, label %entry.if.end11_crit_edge.i.i509, !dbg !425

entry.if.end11_crit_edge.i.i509:                  ; preds = %land.rhs.preheader.i
  %data12.phi.trans.insert.i.i510 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i.i511 = load ptr, ptr %data12.phi.trans.insert.i.i510, align 8, !dbg !426
  br label %do.body31.i, !dbg !425

if.then.i.i515:                                   ; preds = %land.rhs.preheader.i
  %tobool.not.i.i516 = icmp eq i32 %12, 0, !dbg !427
  %shl.i.i517 = shl i32 %12, 1
  %spec.select.i.i518 = select i1 %tobool.not.i.i516, i32 16, i32 %shl.i.i517, !dbg !427
    #dbg_value(i32 %spec.select.i.i518, !375, !DIExpression(), !428)
  br label %while.cond.i.i519, !dbg !429

while.cond.i.i519:                                ; preds = %while.cond.i.i519, %if.then.i.i515
  %dn.0.i.i520 = phi i32 [ %spec.select.i.i518, %if.then.i.i515 ], [ %shl4.i.i522, %while.cond.i.i519 ], !dbg !428
    #dbg_value(i32 %dn.0.i.i520, !375, !DIExpression(), !428)
  %cmp3.i.i521 = icmp ugt i32 %add.i.i506, %dn.0.i.i520, !dbg !430
  %shl4.i.i522 = shl i32 %dn.0.i.i520, 1, !dbg !431
    #dbg_value(i32 %shl4.i.i522, !375, !DIExpression(), !428)
  br i1 %cmp3.i.i521, label %while.cond.i.i519, label %while.end.i.i523, !dbg !429, !llvm.loop !432

while.end.i.i523:                                 ; preds = %while.cond.i.i519
  %data5.i.i524 = getelementptr inbounds i8, ptr %c.0.i, i64 40, !dbg !434
  %13 = load ptr, ptr %data5.i.i524, align 8, !dbg !434
  %conv.i.i525 = zext i32 %dn.0.i.i520 to i64, !dbg !435
  %call.i.i526 = tail call ptr @realloc(ptr noundef %13, i64 noundef %conv.i.i525) #12, !dbg !436
    #dbg_value(ptr %call.i.i526, !373, !DIExpression(), !428)
  %tobool6.not.not.i.i527 = icmp eq ptr %call.i.i526, null, !dbg !437
  br i1 %tobool6.not.not.i.i527, label %cleanup, label %if.end.i.i528, !dbg !438

if.end.i.i528:                                    ; preds = %while.end.i.i523
  store ptr %call.i.i526, ptr %data5.i.i524, align 8, !dbg !439
  store i32 %dn.0.i.i520, ptr %d_max.i86.i, align 4, !dbg !440
  %.pre34.i.i529 = load i32, ptr %d_cur.i84.i, align 8, !dbg !441
  br label %do.body31.i

do.body31.i:                                      ; preds = %if.end.i.i528, %entry.if.end11_crit_edge.i.i509
  %14 = phi i32 [ %add.i58.i, %entry.if.end11_crit_edge.i.i509 ], [ %.pre34.i.i529, %if.end.i.i528 ], !dbg !441
  %15 = phi ptr [ %.pre.i.i511, %entry.if.end11_crit_edge.i.i509 ], [ %call.i.i526, %if.end.i.i528 ], !dbg !426
  %idx.ext.i.i512 = zext i32 %14 to i64, !dbg !442
  %add.ptr.i.i513 = getelementptr inbounds i8, ptr %15, i64 %idx.ext.i.i512, !dbg !442
  store i8 -127, ptr %add.ptr.i.i513, align 1, !dbg !443
  store i32 %add.i.i506, ptr %d_cur.i84.i, align 8, !dbg !444
    #dbg_value(ptr %c.0.i, !369, !DIExpression(), !445)
    #dbg_value(ptr undef, !370, !DIExpression(), !445)
    #dbg_value(i32 1, !371, !DIExpression(), !445)
  %add.i.i = add i32 %8, 4, !dbg !449
    #dbg_value(i32 %add.i.i, !372, !DIExpression(), !445)
  %16 = load i32, ptr %d_max.i86.i, align 4, !dbg !450
  %cmp.i.i = icmp ugt i32 %add.i.i, %16, !dbg !451
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end11_crit_edge.i.i, !dbg !452

entry.if.end11_crit_edge.i.i:                     ; preds = %do.body31.i
  %data12.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i.i = load ptr, ptr %data12.phi.trans.insert.i.i, align 8, !dbg !453
  br label %do.body8, !dbg !452

if.then.i.i:                                      ; preds = %do.body31.i
  %tobool.not.i.i = icmp eq i32 %16, 0, !dbg !454
  %shl.i.i = shl i32 %16, 1
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 16, i32 %shl.i.i, !dbg !454
    #dbg_value(i32 %spec.select.i.i, !375, !DIExpression(), !455)
  br label %while.cond.i.i, !dbg !456

while.cond.i.i:                                   ; preds = %while.cond.i.i, %if.then.i.i
  %dn.0.i.i = phi i32 [ %spec.select.i.i, %if.then.i.i ], [ %shl4.i.i, %while.cond.i.i ], !dbg !455
    #dbg_value(i32 %dn.0.i.i, !375, !DIExpression(), !455)
  %cmp3.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i, !dbg !457
  %shl4.i.i = shl i32 %dn.0.i.i, 1, !dbg !458
    #dbg_value(i32 %shl4.i.i, !375, !DIExpression(), !455)
  br i1 %cmp3.i.i, label %while.cond.i.i, label %while.end.i.i, !dbg !456, !llvm.loop !459

while.end.i.i:                                    ; preds = %while.cond.i.i
  %data5.i.i = getelementptr inbounds i8, ptr %c.0.i, i64 40, !dbg !461
  %17 = load ptr, ptr %data5.i.i, align 8, !dbg !461
  %conv.i.i = zext i32 %dn.0.i.i to i64, !dbg !462
  %call.i.i = tail call ptr @realloc(ptr noundef %17, i64 noundef %conv.i.i) #12, !dbg !463
    #dbg_value(ptr %call.i.i, !373, !DIExpression(), !455)
  %tobool6.not.not.i.i = icmp eq ptr %call.i.i, null, !dbg !464
  br i1 %tobool6.not.not.i.i, label %cleanup, label %if.end.i.i, !dbg !465

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %data5.i.i, align 8, !dbg !466
  store i32 %dn.0.i.i, ptr %d_max.i86.i, align 4, !dbg !467
  %.pre34.i.i = load i32, ptr %d_cur.i84.i, align 8, !dbg !468
  br label %do.body8

do.body8:                                         ; preds = %if.end.i.i, %entry.if.end11_crit_edge.i.i
  %18 = phi i32 [ %add.i.i506, %entry.if.end11_crit_edge.i.i ], [ %.pre34.i.i, %if.end.i.i ], !dbg !468
  %19 = phi ptr [ %.pre.i.i, %entry.if.end11_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ], !dbg !453
  %idx.ext.i.i = zext i32 %18 to i64, !dbg !469
  %add.ptr.i.i = getelementptr inbounds i8, ptr %19, i64 %idx.ext.i.i, !dbg !469
  store i8 1, ptr %add.ptr.i.i, align 1, !dbg !470
  store i32 %add.i.i, ptr %d_cur.i84.i, align 8, !dbg !471
    #dbg_value(ptr %c.0.i, !332, !DIExpression(), !472)
    #dbg_value(i32 17143, !337, !DIExpression(), !472)
    #dbg_value(i64 1, !338, !DIExpression(), !472)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !472)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !472)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !472)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !472)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !472)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !472)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !472)
    #dbg_value(i8 1, !339, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !472)
    #dbg_value(i32 0, !344, !DIExpression(), !472)
    #dbg_value(ptr %c.0.i, !349, !DIExpression(), !476)
    #dbg_value(i32 17143, !354, !DIExpression(), !476)
    #dbg_value(i8 0, !355, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !476)
    #dbg_value(i8 0, !355, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !476)
    #dbg_value(i8 66, !355, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !476)
    #dbg_value(i8 -9, !355, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !476)
  %20 = load i32, ptr %d_max.i86.i, align 4, !dbg !478
    #dbg_value(ptr %c.0.i, !369, !DIExpression(), !480)
    #dbg_value(ptr %c.0.i, !369, !DIExpression(), !482)
    #dbg_value(ptr undef, !370, !DIExpression(), !480)
    #dbg_value(ptr undef, !370, !DIExpression(), !482)
    #dbg_value(i32 2, !371, !DIExpression(), !482)
  %add.i58.i561 = add i32 %8, 6, !dbg !484
    #dbg_value(i32 %add.i58.i561, !372, !DIExpression(), !482)
  %cmp.i60.i562 = icmp ugt i32 %add.i58.i561, %20, !dbg !485
  br i1 %cmp.i60.i562, label %if.then.i68.i571, label %entry.if.end11_crit_edge.i61.i563, !dbg !486

entry.if.end11_crit_edge.i61.i563:                ; preds = %do.body8
  %data12.phi.trans.insert.i62.i564 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i63.i565 = load ptr, ptr %data12.phi.trans.insert.i62.i564, align 8, !dbg !487
  br label %land.rhs.preheader.i317, !dbg !486

if.then.i68.i571:                                 ; preds = %do.body8
  %tobool.not.i69.i572 = icmp eq i32 %20, 0, !dbg !488
  %shl.i70.i573 = shl i32 %20, 1
  %spec.select.i71.i574 = select i1 %tobool.not.i69.i572, i32 16, i32 %shl.i70.i573, !dbg !488
    #dbg_value(i32 %spec.select.i71.i574, !375, !DIExpression(), !489)
  br label %while.cond.i72.i575, !dbg !490

while.cond.i72.i575:                              ; preds = %while.cond.i72.i575, %if.then.i68.i571
  %dn.0.i73.i576 = phi i32 [ %spec.select.i71.i574, %if.then.i68.i571 ], [ %shl4.i75.i578, %while.cond.i72.i575 ], !dbg !489
    #dbg_value(i32 %dn.0.i73.i576, !375, !DIExpression(), !489)
  %cmp3.i74.i577 = icmp ugt i32 %add.i58.i561, %dn.0.i73.i576, !dbg !491
  %shl4.i75.i578 = shl i32 %dn.0.i73.i576, 1, !dbg !492
    #dbg_value(i32 %shl4.i75.i578, !375, !DIExpression(), !489)
  br i1 %cmp3.i74.i577, label %while.cond.i72.i575, label %while.end.i76.i579, !dbg !490, !llvm.loop !493

while.end.i76.i579:                               ; preds = %while.cond.i72.i575
  %data5.i77.i580 = getelementptr inbounds i8, ptr %c.0.i, i64 40, !dbg !495
  %21 = load ptr, ptr %data5.i77.i580, align 8, !dbg !495
  %conv.i78.i581 = zext i32 %dn.0.i73.i576 to i64, !dbg !496
  %call.i79.i582 = tail call ptr @realloc(ptr noundef %21, i64 noundef %conv.i78.i581) #12, !dbg !497
    #dbg_value(ptr %call.i79.i582, !373, !DIExpression(), !489)
  %tobool6.not.not.i80.i583 = icmp eq ptr %call.i79.i582, null, !dbg !498
  br i1 %tobool6.not.not.i80.i583, label %cleanup, label %if.end.i81.i584, !dbg !499

if.end.i81.i584:                                  ; preds = %while.end.i76.i579
  store ptr %call.i79.i582, ptr %data5.i77.i580, align 8, !dbg !500
  store i32 %dn.0.i73.i576, ptr %d_max.i86.i, align 4, !dbg !501
  %.pre34.i82.i585 = load i32, ptr %d_cur.i84.i, align 8, !dbg !502
  br label %land.rhs.preheader.i317

land.rhs.preheader.i317:                          ; preds = %if.end.i81.i584, %entry.if.end11_crit_edge.i61.i563
  %22 = phi i32 [ %add.i.i, %entry.if.end11_crit_edge.i61.i563 ], [ %.pre34.i82.i585, %if.end.i81.i584 ], !dbg !502
  %23 = phi ptr [ %.pre.i63.i565, %entry.if.end11_crit_edge.i61.i563 ], [ %call.i79.i582, %if.end.i81.i584 ], !dbg !487
  %idx.ext.i65.i567 = zext i32 %22 to i64, !dbg !503
  %add.ptr.i66.i568 = getelementptr inbounds i8, ptr %23, i64 %idx.ext.i65.i567, !dbg !503
  store i8 66, ptr %add.ptr.i66.i568, align 1, !dbg !504
  %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i569 = getelementptr inbounds i8, ptr %add.ptr.i66.i568, i64 1, !dbg !504
  store i8 -9, ptr %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i569, align 1, !dbg !504
  store i32 %add.i58.i561, ptr %d_cur.i84.i, align 8, !dbg !505
    #dbg_value(i64 6, !344, !DIExpression(), !472)
    #dbg_value(ptr %c.0.i, !406, !DIExpression(), !506)
    #dbg_value(i32 1, !409, !DIExpression(), !506)
    #dbg_value(i8 8, !410, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !506)
    #dbg_value(i8 0, !410, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !506)
    #dbg_value(i8 0, !410, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !506)
    #dbg_value(i8 0, !410, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !506)
    #dbg_value(i8 -127, !410, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !506)
    #dbg_value(ptr %c.0.i, !369, !DIExpression(), !508)
    #dbg_value(ptr undef, !370, !DIExpression(), !508)
    #dbg_value(i32 1, !371, !DIExpression(), !508)
  %add.i.i533 = add i32 %8, 7, !dbg !510
    #dbg_value(i32 %add.i.i533, !372, !DIExpression(), !508)
  %24 = load i32, ptr %d_max.i86.i, align 4, !dbg !511
  %cmp.i.i535 = icmp ugt i32 %add.i.i533, %24, !dbg !512
  br i1 %cmp.i.i535, label %if.then.i.i543, label %entry.if.end11_crit_edge.i.i536, !dbg !513

entry.if.end11_crit_edge.i.i536:                  ; preds = %land.rhs.preheader.i317
  %data12.phi.trans.insert.i.i537 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i.i538 = load ptr, ptr %data12.phi.trans.insert.i.i537, align 8, !dbg !514
  br label %do.body31.i320, !dbg !513

if.then.i.i543:                                   ; preds = %land.rhs.preheader.i317
  %tobool.not.i.i544 = icmp eq i32 %24, 0, !dbg !515
  %shl.i.i545 = shl i32 %24, 1
  %spec.select.i.i546 = select i1 %tobool.not.i.i544, i32 16, i32 %shl.i.i545, !dbg !515
    #dbg_value(i32 %spec.select.i.i546, !375, !DIExpression(), !516)
  br label %while.cond.i.i547, !dbg !517

while.cond.i.i547:                                ; preds = %while.cond.i.i547, %if.then.i.i543
  %dn.0.i.i548 = phi i32 [ %spec.select.i.i546, %if.then.i.i543 ], [ %shl4.i.i550, %while.cond.i.i547 ], !dbg !516
    #dbg_value(i32 %dn.0.i.i548, !375, !DIExpression(), !516)
  %cmp3.i.i549 = icmp ugt i32 %add.i.i533, %dn.0.i.i548, !dbg !518
  %shl4.i.i550 = shl i32 %dn.0.i.i548, 1, !dbg !519
    #dbg_value(i32 %shl4.i.i550, !375, !DIExpression(), !516)
  br i1 %cmp3.i.i549, label %while.cond.i.i547, label %while.end.i.i551, !dbg !517, !llvm.loop !520

while.end.i.i551:                                 ; preds = %while.cond.i.i547
  %data5.i.i552 = getelementptr inbounds i8, ptr %c.0.i, i64 40, !dbg !522
  %25 = load ptr, ptr %data5.i.i552, align 8, !dbg !522
  %conv.i.i553 = zext i32 %dn.0.i.i548 to i64, !dbg !523
  %call.i.i554 = tail call ptr @realloc(ptr noundef %25, i64 noundef %conv.i.i553) #12, !dbg !524
    #dbg_value(ptr %call.i.i554, !373, !DIExpression(), !516)
  %tobool6.not.not.i.i555 = icmp eq ptr %call.i.i554, null, !dbg !525
  br i1 %tobool6.not.not.i.i555, label %cleanup, label %if.end.i.i556, !dbg !526

if.end.i.i556:                                    ; preds = %while.end.i.i551
  store ptr %call.i.i554, ptr %data5.i.i552, align 8, !dbg !527
  store i32 %dn.0.i.i548, ptr %d_max.i86.i, align 4, !dbg !528
  %.pre34.i.i557 = load i32, ptr %d_cur.i84.i, align 8, !dbg !529
  br label %do.body31.i320

do.body31.i320:                                   ; preds = %if.end.i.i556, %entry.if.end11_crit_edge.i.i536
  %26 = phi i32 [ %add.i58.i561, %entry.if.end11_crit_edge.i.i536 ], [ %.pre34.i.i557, %if.end.i.i556 ], !dbg !529
  %27 = phi ptr [ %.pre.i.i538, %entry.if.end11_crit_edge.i.i536 ], [ %call.i.i554, %if.end.i.i556 ], !dbg !514
  %idx.ext.i.i540 = zext i32 %26 to i64, !dbg !530
  %add.ptr.i.i541 = getelementptr inbounds i8, ptr %27, i64 %idx.ext.i.i540, !dbg !530
  store i8 -127, ptr %add.ptr.i.i541, align 1, !dbg !531
  store i32 %add.i.i533, ptr %d_cur.i84.i, align 8, !dbg !532
    #dbg_value(ptr %c.0.i, !369, !DIExpression(), !533)
    #dbg_value(ptr undef, !370, !DIExpression(), !533)
    #dbg_value(i32 1, !371, !DIExpression(), !533)
  %add.i.i323 = add i32 %8, 8, !dbg !535
    #dbg_value(i32 %add.i.i323, !372, !DIExpression(), !533)
  %28 = load i32, ptr %d_max.i86.i, align 4, !dbg !536
  %cmp.i.i325 = icmp ugt i32 %add.i.i323, %28, !dbg !537
  br i1 %cmp.i.i325, label %if.then.i.i333, label %entry.if.end11_crit_edge.i.i326, !dbg !538

entry.if.end11_crit_edge.i.i326:                  ; preds = %do.body31.i320
  %data12.phi.trans.insert.i.i327 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i.i328 = load ptr, ptr %data12.phi.trans.insert.i.i327, align 8, !dbg !539
  br label %do.body15, !dbg !538

if.then.i.i333:                                   ; preds = %do.body31.i320
  %tobool.not.i.i334 = icmp eq i32 %28, 0, !dbg !540
  %shl.i.i335 = shl i32 %28, 1
  %spec.select.i.i336 = select i1 %tobool.not.i.i334, i32 16, i32 %shl.i.i335, !dbg !540
    #dbg_value(i32 %spec.select.i.i336, !375, !DIExpression(), !541)
  br label %while.cond.i.i337, !dbg !542

while.cond.i.i337:                                ; preds = %while.cond.i.i337, %if.then.i.i333
  %dn.0.i.i338 = phi i32 [ %spec.select.i.i336, %if.then.i.i333 ], [ %shl4.i.i340, %while.cond.i.i337 ], !dbg !541
    #dbg_value(i32 %dn.0.i.i338, !375, !DIExpression(), !541)
  %cmp3.i.i339 = icmp ugt i32 %add.i.i323, %dn.0.i.i338, !dbg !543
  %shl4.i.i340 = shl i32 %dn.0.i.i338, 1, !dbg !544
    #dbg_value(i32 %shl4.i.i340, !375, !DIExpression(), !541)
  br i1 %cmp3.i.i339, label %while.cond.i.i337, label %while.end.i.i341, !dbg !542, !llvm.loop !545

while.end.i.i341:                                 ; preds = %while.cond.i.i337
  %data5.i.i342 = getelementptr inbounds i8, ptr %c.0.i, i64 40, !dbg !547
  %29 = load ptr, ptr %data5.i.i342, align 8, !dbg !547
  %conv.i.i343 = zext i32 %dn.0.i.i338 to i64, !dbg !548
  %call.i.i344 = tail call ptr @realloc(ptr noundef %29, i64 noundef %conv.i.i343) #12, !dbg !549
    #dbg_value(ptr %call.i.i344, !373, !DIExpression(), !541)
  %tobool6.not.not.i.i345 = icmp eq ptr %call.i.i344, null, !dbg !550
  br i1 %tobool6.not.not.i.i345, label %cleanup, label %if.end.i.i346, !dbg !551

if.end.i.i346:                                    ; preds = %while.end.i.i341
  store ptr %call.i.i344, ptr %data5.i.i342, align 8, !dbg !552
  store i32 %dn.0.i.i338, ptr %d_max.i86.i, align 4, !dbg !553
  %.pre34.i.i347 = load i32, ptr %d_cur.i84.i, align 8, !dbg !554
  br label %do.body15

do.body15:                                        ; preds = %if.end.i.i346, %entry.if.end11_crit_edge.i.i326
  %30 = phi i32 [ %add.i.i533, %entry.if.end11_crit_edge.i.i326 ], [ %.pre34.i.i347, %if.end.i.i346 ], !dbg !554
  %31 = phi ptr [ %.pre.i.i328, %entry.if.end11_crit_edge.i.i326 ], [ %call.i.i344, %if.end.i.i346 ], !dbg !539
  %idx.ext.i.i330 = zext i32 %30 to i64, !dbg !555
  %add.ptr.i.i331 = getelementptr inbounds i8, ptr %31, i64 %idx.ext.i.i330, !dbg !555
  store i8 1, ptr %add.ptr.i.i331, align 1, !dbg !556
  store i32 %add.i.i323, ptr %d_cur.i84.i, align 8, !dbg !557
    #dbg_value(ptr %c.0.i, !332, !DIExpression(), !558)
    #dbg_value(i32 17138, !337, !DIExpression(), !558)
    #dbg_value(i64 4, !338, !DIExpression(), !558)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !558)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !558)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !558)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !558)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !558)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !558)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !558)
    #dbg_value(i8 4, !339, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !558)
    #dbg_value(i32 0, !344, !DIExpression(), !558)
    #dbg_value(ptr %c.0.i, !349, !DIExpression(), !562)
    #dbg_value(i32 17138, !354, !DIExpression(), !562)
    #dbg_value(i8 0, !355, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !562)
    #dbg_value(i8 0, !355, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !562)
    #dbg_value(i8 66, !355, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !562)
    #dbg_value(i8 -14, !355, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !562)
  %32 = load i32, ptr %d_max.i86.i, align 4, !dbg !564
    #dbg_value(ptr %c.0.i, !369, !DIExpression(), !566)
    #dbg_value(ptr %c.0.i, !369, !DIExpression(), !568)
    #dbg_value(ptr undef, !370, !DIExpression(), !566)
    #dbg_value(ptr undef, !370, !DIExpression(), !568)
    #dbg_value(i32 2, !371, !DIExpression(), !568)
  %add.i58.i617 = add i32 %8, 10, !dbg !570
    #dbg_value(i32 %add.i58.i617, !372, !DIExpression(), !568)
  %cmp.i60.i618 = icmp ugt i32 %add.i58.i617, %32, !dbg !571
  br i1 %cmp.i60.i618, label %if.then.i68.i627, label %entry.if.end11_crit_edge.i61.i619, !dbg !572

entry.if.end11_crit_edge.i61.i619:                ; preds = %do.body15
  %data12.phi.trans.insert.i62.i620 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i63.i621 = load ptr, ptr %data12.phi.trans.insert.i62.i620, align 8, !dbg !573
  br label %land.rhs.preheader.i359, !dbg !572

if.then.i68.i627:                                 ; preds = %do.body15
  %tobool.not.i69.i628 = icmp eq i32 %32, 0, !dbg !574
  %shl.i70.i629 = shl i32 %32, 1
  %spec.select.i71.i630 = select i1 %tobool.not.i69.i628, i32 16, i32 %shl.i70.i629, !dbg !574
    #dbg_value(i32 %spec.select.i71.i630, !375, !DIExpression(), !575)
  br label %while.cond.i72.i631, !dbg !576

while.cond.i72.i631:                              ; preds = %while.cond.i72.i631, %if.then.i68.i627
  %dn.0.i73.i632 = phi i32 [ %spec.select.i71.i630, %if.then.i68.i627 ], [ %shl4.i75.i634, %while.cond.i72.i631 ], !dbg !575
    #dbg_value(i32 %dn.0.i73.i632, !375, !DIExpression(), !575)
  %cmp3.i74.i633 = icmp ugt i32 %add.i58.i617, %dn.0.i73.i632, !dbg !577
  %shl4.i75.i634 = shl i32 %dn.0.i73.i632, 1, !dbg !578
    #dbg_value(i32 %shl4.i75.i634, !375, !DIExpression(), !575)
  br i1 %cmp3.i74.i633, label %while.cond.i72.i631, label %while.end.i76.i635, !dbg !576, !llvm.loop !579

while.end.i76.i635:                               ; preds = %while.cond.i72.i631
  %data5.i77.i636 = getelementptr inbounds i8, ptr %c.0.i, i64 40, !dbg !581
  %33 = load ptr, ptr %data5.i77.i636, align 8, !dbg !581
  %conv.i78.i637 = zext i32 %dn.0.i73.i632 to i64, !dbg !582
  %call.i79.i638 = tail call ptr @realloc(ptr noundef %33, i64 noundef %conv.i78.i637) #12, !dbg !583
    #dbg_value(ptr %call.i79.i638, !373, !DIExpression(), !575)
  %tobool6.not.not.i80.i639 = icmp eq ptr %call.i79.i638, null, !dbg !584
  br i1 %tobool6.not.not.i80.i639, label %cleanup, label %if.end.i81.i640, !dbg !585

if.end.i81.i640:                                  ; preds = %while.end.i76.i635
  store ptr %call.i79.i638, ptr %data5.i77.i636, align 8, !dbg !586
  store i32 %dn.0.i73.i632, ptr %d_max.i86.i, align 4, !dbg !587
  %.pre34.i82.i641 = load i32, ptr %d_cur.i84.i, align 8, !dbg !588
  br label %land.rhs.preheader.i359

land.rhs.preheader.i359:                          ; preds = %if.end.i81.i640, %entry.if.end11_crit_edge.i61.i619
  %34 = phi i32 [ %add.i.i323, %entry.if.end11_crit_edge.i61.i619 ], [ %.pre34.i82.i641, %if.end.i81.i640 ], !dbg !588
  %35 = phi ptr [ %.pre.i63.i621, %entry.if.end11_crit_edge.i61.i619 ], [ %call.i79.i638, %if.end.i81.i640 ], !dbg !573
  %idx.ext.i65.i623 = zext i32 %34 to i64, !dbg !589
  %add.ptr.i66.i624 = getelementptr inbounds i8, ptr %35, i64 %idx.ext.i65.i623, !dbg !589
  store i8 66, ptr %add.ptr.i66.i624, align 1, !dbg !590
  %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i625 = getelementptr inbounds i8, ptr %add.ptr.i66.i624, i64 1, !dbg !590
  store i8 -14, ptr %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i625, align 1, !dbg !590
  store i32 %add.i58.i617, ptr %d_cur.i84.i, align 8, !dbg !591
    #dbg_value(i64 6, !344, !DIExpression(), !558)
    #dbg_value(ptr %c.0.i, !406, !DIExpression(), !592)
    #dbg_value(i32 1, !409, !DIExpression(), !592)
    #dbg_value(i8 8, !410, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !592)
    #dbg_value(i8 0, !410, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !592)
    #dbg_value(i8 0, !410, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !592)
    #dbg_value(i8 0, !410, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !592)
    #dbg_value(i8 -127, !410, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !592)
    #dbg_value(ptr %c.0.i, !369, !DIExpression(), !594)
    #dbg_value(ptr undef, !370, !DIExpression(), !594)
    #dbg_value(i32 1, !371, !DIExpression(), !594)
  %add.i.i589 = add i32 %8, 11, !dbg !596
    #dbg_value(i32 %add.i.i589, !372, !DIExpression(), !594)
  %36 = load i32, ptr %d_max.i86.i, align 4, !dbg !597
  %cmp.i.i591 = icmp ugt i32 %add.i.i589, %36, !dbg !598
  br i1 %cmp.i.i591, label %if.then.i.i599, label %entry.if.end11_crit_edge.i.i592, !dbg !599

entry.if.end11_crit_edge.i.i592:                  ; preds = %land.rhs.preheader.i359
  %data12.phi.trans.insert.i.i593 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i.i594 = load ptr, ptr %data12.phi.trans.insert.i.i593, align 8, !dbg !600
  br label %do.body31.i362, !dbg !599

if.then.i.i599:                                   ; preds = %land.rhs.preheader.i359
  %tobool.not.i.i600 = icmp eq i32 %36, 0, !dbg !601
  %shl.i.i601 = shl i32 %36, 1
  %spec.select.i.i602 = select i1 %tobool.not.i.i600, i32 16, i32 %shl.i.i601, !dbg !601
    #dbg_value(i32 %spec.select.i.i602, !375, !DIExpression(), !602)
  br label %while.cond.i.i603, !dbg !603

while.cond.i.i603:                                ; preds = %while.cond.i.i603, %if.then.i.i599
  %dn.0.i.i604 = phi i32 [ %spec.select.i.i602, %if.then.i.i599 ], [ %shl4.i.i606, %while.cond.i.i603 ], !dbg !602
    #dbg_value(i32 %dn.0.i.i604, !375, !DIExpression(), !602)
  %cmp3.i.i605 = icmp ugt i32 %add.i.i589, %dn.0.i.i604, !dbg !604
  %shl4.i.i606 = shl i32 %dn.0.i.i604, 1, !dbg !605
    #dbg_value(i32 %shl4.i.i606, !375, !DIExpression(), !602)
  br i1 %cmp3.i.i605, label %while.cond.i.i603, label %while.end.i.i607, !dbg !603, !llvm.loop !606

while.end.i.i607:                                 ; preds = %while.cond.i.i603
  %data5.i.i608 = getelementptr inbounds i8, ptr %c.0.i, i64 40, !dbg !608
  %37 = load ptr, ptr %data5.i.i608, align 8, !dbg !608
  %conv.i.i609 = zext i32 %dn.0.i.i604 to i64, !dbg !609
  %call.i.i610 = tail call ptr @realloc(ptr noundef %37, i64 noundef %conv.i.i609) #12, !dbg !610
    #dbg_value(ptr %call.i.i610, !373, !DIExpression(), !602)
  %tobool6.not.not.i.i611 = icmp eq ptr %call.i.i610, null, !dbg !611
  br i1 %tobool6.not.not.i.i611, label %cleanup, label %if.end.i.i612, !dbg !612

if.end.i.i612:                                    ; preds = %while.end.i.i607
  store ptr %call.i.i610, ptr %data5.i.i608, align 8, !dbg !613
  store i32 %dn.0.i.i604, ptr %d_max.i86.i, align 4, !dbg !614
  %.pre34.i.i613 = load i32, ptr %d_cur.i84.i, align 8, !dbg !615
  br label %do.body31.i362

do.body31.i362:                                   ; preds = %if.end.i.i612, %entry.if.end11_crit_edge.i.i592
  %38 = phi i32 [ %add.i58.i617, %entry.if.end11_crit_edge.i.i592 ], [ %.pre34.i.i613, %if.end.i.i612 ], !dbg !615
  %39 = phi ptr [ %.pre.i.i594, %entry.if.end11_crit_edge.i.i592 ], [ %call.i.i610, %if.end.i.i612 ], !dbg !600
  %idx.ext.i.i596 = zext i32 %38 to i64, !dbg !616
  %add.ptr.i.i597 = getelementptr inbounds i8, ptr %39, i64 %idx.ext.i.i596, !dbg !616
  store i8 -127, ptr %add.ptr.i.i597, align 1, !dbg !617
  store i32 %add.i.i589, ptr %d_cur.i84.i, align 8, !dbg !618
    #dbg_value(ptr %c.0.i, !369, !DIExpression(), !619)
    #dbg_value(ptr undef, !370, !DIExpression(), !619)
    #dbg_value(i32 1, !371, !DIExpression(), !619)
  %add.i.i365 = add i32 %8, 12, !dbg !621
    #dbg_value(i32 %add.i.i365, !372, !DIExpression(), !619)
  %40 = load i32, ptr %d_max.i86.i, align 4, !dbg !622
  %cmp.i.i367 = icmp ugt i32 %add.i.i365, %40, !dbg !623
  br i1 %cmp.i.i367, label %if.then.i.i375, label %entry.if.end11_crit_edge.i.i368, !dbg !624

entry.if.end11_crit_edge.i.i368:                  ; preds = %do.body31.i362
  %data12.phi.trans.insert.i.i369 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i.i370 = load ptr, ptr %data12.phi.trans.insert.i.i369, align 8, !dbg !625
  br label %do.body22, !dbg !624

if.then.i.i375:                                   ; preds = %do.body31.i362
  %tobool.not.i.i376 = icmp eq i32 %40, 0, !dbg !626
  %shl.i.i377 = shl i32 %40, 1
  %spec.select.i.i378 = select i1 %tobool.not.i.i376, i32 16, i32 %shl.i.i377, !dbg !626
    #dbg_value(i32 %spec.select.i.i378, !375, !DIExpression(), !627)
  br label %while.cond.i.i379, !dbg !628

while.cond.i.i379:                                ; preds = %while.cond.i.i379, %if.then.i.i375
  %dn.0.i.i380 = phi i32 [ %spec.select.i.i378, %if.then.i.i375 ], [ %shl4.i.i382, %while.cond.i.i379 ], !dbg !627
    #dbg_value(i32 %dn.0.i.i380, !375, !DIExpression(), !627)
  %cmp3.i.i381 = icmp ugt i32 %add.i.i365, %dn.0.i.i380, !dbg !629
  %shl4.i.i382 = shl i32 %dn.0.i.i380, 1, !dbg !630
    #dbg_value(i32 %shl4.i.i382, !375, !DIExpression(), !627)
  br i1 %cmp3.i.i381, label %while.cond.i.i379, label %while.end.i.i383, !dbg !628, !llvm.loop !631

while.end.i.i383:                                 ; preds = %while.cond.i.i379
  %data5.i.i384 = getelementptr inbounds i8, ptr %c.0.i, i64 40, !dbg !633
  %41 = load ptr, ptr %data5.i.i384, align 8, !dbg !633
  %conv.i.i385 = zext i32 %dn.0.i.i380 to i64, !dbg !634
  %call.i.i386 = tail call ptr @realloc(ptr noundef %41, i64 noundef %conv.i.i385) #12, !dbg !635
    #dbg_value(ptr %call.i.i386, !373, !DIExpression(), !627)
  %tobool6.not.not.i.i387 = icmp eq ptr %call.i.i386, null, !dbg !636
  br i1 %tobool6.not.not.i.i387, label %cleanup, label %if.end.i.i388, !dbg !637

if.end.i.i388:                                    ; preds = %while.end.i.i383
  store ptr %call.i.i386, ptr %data5.i.i384, align 8, !dbg !638
  store i32 %dn.0.i.i380, ptr %d_max.i86.i, align 4, !dbg !639
  %.pre34.i.i389 = load i32, ptr %d_cur.i84.i, align 8, !dbg !640
  br label %do.body22

do.body22:                                        ; preds = %if.end.i.i388, %entry.if.end11_crit_edge.i.i368
  %42 = phi i32 [ %add.i.i589, %entry.if.end11_crit_edge.i.i368 ], [ %.pre34.i.i389, %if.end.i.i388 ], !dbg !640
  %43 = phi ptr [ %.pre.i.i370, %entry.if.end11_crit_edge.i.i368 ], [ %call.i.i386, %if.end.i.i388 ], !dbg !625
  %idx.ext.i.i372 = zext i32 %42 to i64, !dbg !641
  %add.ptr.i.i373 = getelementptr inbounds i8, ptr %43, i64 %idx.ext.i.i372, !dbg !641
  store i8 4, ptr %add.ptr.i.i373, align 1, !dbg !642
  store i32 %add.i.i365, ptr %d_cur.i84.i, align 8, !dbg !643
    #dbg_value(ptr %c.0.i, !332, !DIExpression(), !644)
    #dbg_value(i32 17139, !337, !DIExpression(), !644)
    #dbg_value(i64 8, !338, !DIExpression(), !644)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !644)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !644)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !644)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !644)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !644)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !644)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !644)
    #dbg_value(i8 8, !339, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !644)
    #dbg_value(i32 0, !344, !DIExpression(), !644)
    #dbg_value(ptr %c.0.i, !349, !DIExpression(), !648)
    #dbg_value(i32 17139, !354, !DIExpression(), !648)
    #dbg_value(i8 0, !355, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !648)
    #dbg_value(i8 0, !355, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !648)
    #dbg_value(i8 66, !355, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !648)
    #dbg_value(i8 -13, !355, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !648)
  %44 = load i32, ptr %d_max.i86.i, align 4, !dbg !650
    #dbg_value(ptr %c.0.i, !369, !DIExpression(), !652)
    #dbg_value(ptr %c.0.i, !369, !DIExpression(), !654)
    #dbg_value(ptr undef, !370, !DIExpression(), !652)
    #dbg_value(ptr undef, !370, !DIExpression(), !654)
    #dbg_value(i32 2, !371, !DIExpression(), !654)
  %add.i58.i673 = add i32 %8, 14, !dbg !656
    #dbg_value(i32 %add.i58.i673, !372, !DIExpression(), !654)
  %cmp.i60.i674 = icmp ugt i32 %add.i58.i673, %44, !dbg !657
  br i1 %cmp.i60.i674, label %if.then.i68.i683, label %entry.if.end11_crit_edge.i61.i675, !dbg !658

entry.if.end11_crit_edge.i61.i675:                ; preds = %do.body22
  %data12.phi.trans.insert.i62.i676 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i63.i677 = load ptr, ptr %data12.phi.trans.insert.i62.i676, align 8, !dbg !659
  br label %land.rhs.preheader.i401, !dbg !658

if.then.i68.i683:                                 ; preds = %do.body22
  %tobool.not.i69.i684 = icmp eq i32 %44, 0, !dbg !660
  %shl.i70.i685 = shl i32 %44, 1
  %spec.select.i71.i686 = select i1 %tobool.not.i69.i684, i32 16, i32 %shl.i70.i685, !dbg !660
    #dbg_value(i32 %spec.select.i71.i686, !375, !DIExpression(), !661)
  br label %while.cond.i72.i687, !dbg !662

while.cond.i72.i687:                              ; preds = %while.cond.i72.i687, %if.then.i68.i683
  %dn.0.i73.i688 = phi i32 [ %spec.select.i71.i686, %if.then.i68.i683 ], [ %shl4.i75.i690, %while.cond.i72.i687 ], !dbg !661
    #dbg_value(i32 %dn.0.i73.i688, !375, !DIExpression(), !661)
  %cmp3.i74.i689 = icmp ugt i32 %add.i58.i673, %dn.0.i73.i688, !dbg !663
  %shl4.i75.i690 = shl i32 %dn.0.i73.i688, 1, !dbg !664
    #dbg_value(i32 %shl4.i75.i690, !375, !DIExpression(), !661)
  br i1 %cmp3.i74.i689, label %while.cond.i72.i687, label %while.end.i76.i691, !dbg !662, !llvm.loop !665

while.end.i76.i691:                               ; preds = %while.cond.i72.i687
  %data5.i77.i692 = getelementptr inbounds i8, ptr %c.0.i, i64 40, !dbg !667
  %45 = load ptr, ptr %data5.i77.i692, align 8, !dbg !667
  %conv.i78.i693 = zext i32 %dn.0.i73.i688 to i64, !dbg !668
  %call.i79.i694 = tail call ptr @realloc(ptr noundef %45, i64 noundef %conv.i78.i693) #12, !dbg !669
    #dbg_value(ptr %call.i79.i694, !373, !DIExpression(), !661)
  %tobool6.not.not.i80.i695 = icmp eq ptr %call.i79.i694, null, !dbg !670
  br i1 %tobool6.not.not.i80.i695, label %cleanup, label %if.end.i81.i696, !dbg !671

if.end.i81.i696:                                  ; preds = %while.end.i76.i691
  store ptr %call.i79.i694, ptr %data5.i77.i692, align 8, !dbg !672
  store i32 %dn.0.i73.i688, ptr %d_max.i86.i, align 4, !dbg !673
  %.pre34.i82.i697 = load i32, ptr %d_cur.i84.i, align 8, !dbg !674
  br label %land.rhs.preheader.i401

land.rhs.preheader.i401:                          ; preds = %if.end.i81.i696, %entry.if.end11_crit_edge.i61.i675
  %46 = phi i32 [ %add.i.i365, %entry.if.end11_crit_edge.i61.i675 ], [ %.pre34.i82.i697, %if.end.i81.i696 ], !dbg !674
  %47 = phi ptr [ %.pre.i63.i677, %entry.if.end11_crit_edge.i61.i675 ], [ %call.i79.i694, %if.end.i81.i696 ], !dbg !659
  %idx.ext.i65.i679 = zext i32 %46 to i64, !dbg !675
  %add.ptr.i66.i680 = getelementptr inbounds i8, ptr %47, i64 %idx.ext.i65.i679, !dbg !675
  store i8 66, ptr %add.ptr.i66.i680, align 1, !dbg !676
  %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i681 = getelementptr inbounds i8, ptr %add.ptr.i66.i680, i64 1, !dbg !676
  store i8 -13, ptr %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i681, align 1, !dbg !676
  store i32 %add.i58.i673, ptr %d_cur.i84.i, align 8, !dbg !677
    #dbg_value(i64 6, !344, !DIExpression(), !644)
    #dbg_value(ptr %c.0.i, !406, !DIExpression(), !678)
    #dbg_value(i32 1, !409, !DIExpression(), !678)
    #dbg_value(i8 8, !410, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !678)
    #dbg_value(i8 0, !410, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !678)
    #dbg_value(i8 0, !410, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !678)
    #dbg_value(i8 0, !410, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !678)
    #dbg_value(i8 -127, !410, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !678)
    #dbg_value(ptr %c.0.i, !369, !DIExpression(), !680)
    #dbg_value(ptr undef, !370, !DIExpression(), !680)
    #dbg_value(i32 1, !371, !DIExpression(), !680)
  %add.i.i645 = add i32 %8, 15, !dbg !682
    #dbg_value(i32 %add.i.i645, !372, !DIExpression(), !680)
  %48 = load i32, ptr %d_max.i86.i, align 4, !dbg !683
  %cmp.i.i647 = icmp ugt i32 %add.i.i645, %48, !dbg !684
  br i1 %cmp.i.i647, label %if.then.i.i655, label %entry.if.end11_crit_edge.i.i648, !dbg !685

entry.if.end11_crit_edge.i.i648:                  ; preds = %land.rhs.preheader.i401
  %data12.phi.trans.insert.i.i649 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i.i650 = load ptr, ptr %data12.phi.trans.insert.i.i649, align 8, !dbg !686
  br label %do.body31.i404, !dbg !685

if.then.i.i655:                                   ; preds = %land.rhs.preheader.i401
  %tobool.not.i.i656 = icmp eq i32 %48, 0, !dbg !687
  %shl.i.i657 = shl i32 %48, 1
  %spec.select.i.i658 = select i1 %tobool.not.i.i656, i32 16, i32 %shl.i.i657, !dbg !687
    #dbg_value(i32 %spec.select.i.i658, !375, !DIExpression(), !688)
  br label %while.cond.i.i659, !dbg !689

while.cond.i.i659:                                ; preds = %while.cond.i.i659, %if.then.i.i655
  %dn.0.i.i660 = phi i32 [ %spec.select.i.i658, %if.then.i.i655 ], [ %shl4.i.i662, %while.cond.i.i659 ], !dbg !688
    #dbg_value(i32 %dn.0.i.i660, !375, !DIExpression(), !688)
  %cmp3.i.i661 = icmp ugt i32 %add.i.i645, %dn.0.i.i660, !dbg !690
  %shl4.i.i662 = shl i32 %dn.0.i.i660, 1, !dbg !691
    #dbg_value(i32 %shl4.i.i662, !375, !DIExpression(), !688)
  br i1 %cmp3.i.i661, label %while.cond.i.i659, label %while.end.i.i663, !dbg !689, !llvm.loop !692

while.end.i.i663:                                 ; preds = %while.cond.i.i659
  %data5.i.i664 = getelementptr inbounds i8, ptr %c.0.i, i64 40, !dbg !694
  %49 = load ptr, ptr %data5.i.i664, align 8, !dbg !694
  %conv.i.i665 = zext i32 %dn.0.i.i660 to i64, !dbg !695
  %call.i.i666 = tail call ptr @realloc(ptr noundef %49, i64 noundef %conv.i.i665) #12, !dbg !696
    #dbg_value(ptr %call.i.i666, !373, !DIExpression(), !688)
  %tobool6.not.not.i.i667 = icmp eq ptr %call.i.i666, null, !dbg !697
  br i1 %tobool6.not.not.i.i667, label %cleanup, label %if.end.i.i668, !dbg !698

if.end.i.i668:                                    ; preds = %while.end.i.i663
  store ptr %call.i.i666, ptr %data5.i.i664, align 8, !dbg !699
  store i32 %dn.0.i.i660, ptr %d_max.i86.i, align 4, !dbg !700
  %.pre34.i.i669 = load i32, ptr %d_cur.i84.i, align 8, !dbg !701
  br label %do.body31.i404

do.body31.i404:                                   ; preds = %if.end.i.i668, %entry.if.end11_crit_edge.i.i648
  %50 = phi i32 [ %add.i58.i673, %entry.if.end11_crit_edge.i.i648 ], [ %.pre34.i.i669, %if.end.i.i668 ], !dbg !701
  %51 = phi ptr [ %.pre.i.i650, %entry.if.end11_crit_edge.i.i648 ], [ %call.i.i666, %if.end.i.i668 ], !dbg !686
  %idx.ext.i.i652 = zext i32 %50 to i64, !dbg !702
  %add.ptr.i.i653 = getelementptr inbounds i8, ptr %51, i64 %idx.ext.i.i652, !dbg !702
  store i8 -127, ptr %add.ptr.i.i653, align 1, !dbg !703
  store i32 %add.i.i645, ptr %d_cur.i84.i, align 8, !dbg !704
    #dbg_value(ptr %c.0.i, !369, !DIExpression(), !705)
    #dbg_value(ptr undef, !370, !DIExpression(), !705)
    #dbg_value(i32 1, !371, !DIExpression(), !705)
  %add.i.i407 = add i32 %8, 16, !dbg !707
    #dbg_value(i32 %add.i.i407, !372, !DIExpression(), !705)
  %52 = load i32, ptr %d_max.i86.i, align 4, !dbg !708
  %cmp.i.i409 = icmp ugt i32 %add.i.i407, %52, !dbg !709
  br i1 %cmp.i.i409, label %if.then.i.i417, label %entry.if.end11_crit_edge.i.i410, !dbg !710

entry.if.end11_crit_edge.i.i410:                  ; preds = %do.body31.i404
  %data12.phi.trans.insert.i.i411 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i.i412 = load ptr, ptr %data12.phi.trans.insert.i.i411, align 8, !dbg !711
  br label %do.body29, !dbg !710

if.then.i.i417:                                   ; preds = %do.body31.i404
  %tobool.not.i.i418 = icmp eq i32 %52, 0, !dbg !712
  %shl.i.i419 = shl i32 %52, 1
  %spec.select.i.i420 = select i1 %tobool.not.i.i418, i32 16, i32 %shl.i.i419, !dbg !712
    #dbg_value(i32 %spec.select.i.i420, !375, !DIExpression(), !713)
  br label %while.cond.i.i421, !dbg !714

while.cond.i.i421:                                ; preds = %while.cond.i.i421, %if.then.i.i417
  %dn.0.i.i422 = phi i32 [ %spec.select.i.i420, %if.then.i.i417 ], [ %shl4.i.i424, %while.cond.i.i421 ], !dbg !713
    #dbg_value(i32 %dn.0.i.i422, !375, !DIExpression(), !713)
  %cmp3.i.i423 = icmp ugt i32 %add.i.i407, %dn.0.i.i422, !dbg !715
  %shl4.i.i424 = shl i32 %dn.0.i.i422, 1, !dbg !716
    #dbg_value(i32 %shl4.i.i424, !375, !DIExpression(), !713)
  br i1 %cmp3.i.i423, label %while.cond.i.i421, label %while.end.i.i425, !dbg !714, !llvm.loop !717

while.end.i.i425:                                 ; preds = %while.cond.i.i421
  %data5.i.i426 = getelementptr inbounds i8, ptr %c.0.i, i64 40, !dbg !719
  %53 = load ptr, ptr %data5.i.i426, align 8, !dbg !719
  %conv.i.i427 = zext i32 %dn.0.i.i422 to i64, !dbg !720
  %call.i.i428 = tail call ptr @realloc(ptr noundef %53, i64 noundef %conv.i.i427) #12, !dbg !721
    #dbg_value(ptr %call.i.i428, !373, !DIExpression(), !713)
  %tobool6.not.not.i.i429 = icmp eq ptr %call.i.i428, null, !dbg !722
  br i1 %tobool6.not.not.i.i429, label %cleanup, label %if.end.i.i430, !dbg !723

if.end.i.i430:                                    ; preds = %while.end.i.i425
  store ptr %call.i.i428, ptr %data5.i.i426, align 8, !dbg !724
  store i32 %dn.0.i.i422, ptr %d_max.i86.i, align 4, !dbg !725
  %.pre34.i.i431 = load i32, ptr %d_cur.i84.i, align 8, !dbg !726
  br label %do.body29

do.body29:                                        ; preds = %if.end.i.i430, %entry.if.end11_crit_edge.i.i410
  %54 = phi i32 [ %add.i.i645, %entry.if.end11_crit_edge.i.i410 ], [ %.pre34.i.i431, %if.end.i.i430 ], !dbg !726
  %55 = phi ptr [ %.pre.i.i412, %entry.if.end11_crit_edge.i.i410 ], [ %call.i.i428, %if.end.i.i430 ], !dbg !711
  %idx.ext.i.i414 = zext i32 %54 to i64, !dbg !727
  %add.ptr.i.i415 = getelementptr inbounds i8, ptr %55, i64 %idx.ext.i.i414, !dbg !727
  store i8 8, ptr %add.ptr.i.i415, align 1, !dbg !728
  store i32 %add.i.i407, ptr %d_cur.i84.i, align 8, !dbg !729
    #dbg_value(ptr %c.0.i, !730, !DIExpression(), !738)
    #dbg_value(i32 17026, !735, !DIExpression(), !738)
    #dbg_value(ptr poison, !736, !DIExpression(), !738)
    #dbg_value(i64 8, !737, !DIExpression(), !738)
    #dbg_value(ptr %c.0.i, !349, !DIExpression(), !742)
    #dbg_value(i32 17026, !354, !DIExpression(), !742)
    #dbg_value(i8 0, !355, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !742)
    #dbg_value(i8 0, !355, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !742)
    #dbg_value(i8 66, !355, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !742)
    #dbg_value(i8 -126, !355, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !742)
  %56 = load i32, ptr %d_max.i86.i, align 4, !dbg !746
    #dbg_value(ptr %c.0.i, !369, !DIExpression(), !748)
    #dbg_value(ptr %c.0.i, !369, !DIExpression(), !750)
    #dbg_value(ptr undef, !370, !DIExpression(), !748)
    #dbg_value(ptr undef, !370, !DIExpression(), !750)
    #dbg_value(i32 2, !371, !DIExpression(), !750)
  %add.i58.i701 = add i32 %8, 18, !dbg !752
    #dbg_value(i32 %add.i58.i701, !372, !DIExpression(), !750)
  %cmp.i60.i702 = icmp ugt i32 %add.i58.i701, %56, !dbg !753
  br i1 %cmp.i60.i702, label %if.then.i68.i711, label %entry.if.end11_crit_edge.i61.i703, !dbg !754

entry.if.end11_crit_edge.i61.i703:                ; preds = %do.body29
  %data12.phi.trans.insert.i62.i704 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i63.i705 = load ptr, ptr %data12.phi.trans.insert.i62.i704, align 8, !dbg !755
  br label %do.body2.i, !dbg !754

if.then.i68.i711:                                 ; preds = %do.body29
  %tobool.not.i69.i712 = icmp eq i32 %56, 0, !dbg !756
  %shl.i70.i713 = shl i32 %56, 1
  %spec.select.i71.i714 = select i1 %tobool.not.i69.i712, i32 16, i32 %shl.i70.i713, !dbg !756
    #dbg_value(i32 %spec.select.i71.i714, !375, !DIExpression(), !757)
  br label %while.cond.i72.i715, !dbg !758

while.cond.i72.i715:                              ; preds = %while.cond.i72.i715, %if.then.i68.i711
  %dn.0.i73.i716 = phi i32 [ %spec.select.i71.i714, %if.then.i68.i711 ], [ %shl4.i75.i718, %while.cond.i72.i715 ], !dbg !757
    #dbg_value(i32 %dn.0.i73.i716, !375, !DIExpression(), !757)
  %cmp3.i74.i717 = icmp ugt i32 %add.i58.i701, %dn.0.i73.i716, !dbg !759
  %shl4.i75.i718 = shl i32 %dn.0.i73.i716, 1, !dbg !760
    #dbg_value(i32 %shl4.i75.i718, !375, !DIExpression(), !757)
  br i1 %cmp3.i74.i717, label %while.cond.i72.i715, label %while.end.i76.i719, !dbg !758, !llvm.loop !761

while.end.i76.i719:                               ; preds = %while.cond.i72.i715
  %data5.i77.i720 = getelementptr inbounds i8, ptr %c.0.i, i64 40, !dbg !763
  %57 = load ptr, ptr %data5.i77.i720, align 8, !dbg !763
  %conv.i78.i721 = zext i32 %dn.0.i73.i716 to i64, !dbg !764
  %call.i79.i722 = tail call ptr @realloc(ptr noundef %57, i64 noundef %conv.i78.i721) #12, !dbg !765
    #dbg_value(ptr %call.i79.i722, !373, !DIExpression(), !757)
  %tobool6.not.not.i80.i723 = icmp eq ptr %call.i79.i722, null, !dbg !766
  br i1 %tobool6.not.not.i80.i723, label %cleanup, label %if.end.i81.i724, !dbg !767

if.end.i81.i724:                                  ; preds = %while.end.i76.i719
  store ptr %call.i79.i722, ptr %data5.i77.i720, align 8, !dbg !768
  store i32 %dn.0.i73.i716, ptr %d_max.i86.i, align 4, !dbg !769
  %.pre34.i82.i725 = load i32, ptr %d_cur.i84.i, align 8, !dbg !770
  br label %do.body2.i

do.body2.i:                                       ; preds = %if.end.i81.i724, %entry.if.end11_crit_edge.i61.i703
  %58 = phi i32 [ %add.i.i407, %entry.if.end11_crit_edge.i61.i703 ], [ %.pre34.i82.i725, %if.end.i81.i724 ], !dbg !770
  %59 = phi ptr [ %.pre.i63.i705, %entry.if.end11_crit_edge.i61.i703 ], [ %call.i79.i722, %if.end.i81.i724 ], !dbg !755
  %idx.ext.i65.i707 = zext i32 %58 to i64, !dbg !771
  %add.ptr.i66.i708 = getelementptr inbounds i8, ptr %59, i64 %idx.ext.i65.i707, !dbg !771
  store i8 66, ptr %add.ptr.i66.i708, align 1, !dbg !772
  %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i709 = getelementptr inbounds i8, ptr %add.ptr.i66.i708, i64 1, !dbg !772
  store i8 -126, ptr %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i709, align 1, !dbg !772
  store i32 %add.i58.i701, ptr %d_cur.i84.i, align 8, !dbg !773
  %call3.i = tail call fastcc i32 @mk_write_size(ptr noundef nonnull %c.0.i, i32 noundef 8), !dbg !774
  %cmp4.i = icmp slt i32 %call3.i, 0, !dbg !774
  br i1 %cmp4.i, label %cleanup, label %do.body10.i, !dbg !777

do.body10.i:                                      ; preds = %do.body2.i
    #dbg_value(ptr %c.0.i, !369, !DIExpression(), !778)
    #dbg_value(ptr poison, !370, !DIExpression(), !778)
    #dbg_value(i32 8, !371, !DIExpression(), !778)
  %60 = load i32, ptr %d_cur.i84.i, align 8, !dbg !782
  %add.i.i436 = add i32 %60, 8, !dbg !783
    #dbg_value(i32 %add.i.i436, !372, !DIExpression(), !778)
  %61 = load i32, ptr %d_max.i86.i, align 4, !dbg !784
  %cmp.i.i438 = icmp ugt i32 %add.i.i436, %61, !dbg !785
  br i1 %cmp.i.i438, label %if.then.i.i446, label %entry.if.end11_crit_edge.i.i439, !dbg !786

entry.if.end11_crit_edge.i.i439:                  ; preds = %do.body10.i
  %data12.phi.trans.insert.i.i440 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i.i441 = load ptr, ptr %data12.phi.trans.insert.i.i440, align 8, !dbg !787
  br label %do.body36, !dbg !786

if.then.i.i446:                                   ; preds = %do.body10.i
  %tobool.not.i.i447 = icmp eq i32 %61, 0, !dbg !788
  %shl.i.i448 = shl i32 %61, 1
  %spec.select.i.i449 = select i1 %tobool.not.i.i447, i32 16, i32 %shl.i.i448, !dbg !788
    #dbg_value(i32 %spec.select.i.i449, !375, !DIExpression(), !789)
  br label %while.cond.i.i450, !dbg !790

while.cond.i.i450:                                ; preds = %while.cond.i.i450, %if.then.i.i446
  %dn.0.i.i451 = phi i32 [ %spec.select.i.i449, %if.then.i.i446 ], [ %shl4.i.i453, %while.cond.i.i450 ], !dbg !789
    #dbg_value(i32 %dn.0.i.i451, !375, !DIExpression(), !789)
  %cmp3.i.i452 = icmp ugt i32 %add.i.i436, %dn.0.i.i451, !dbg !791
  %shl4.i.i453 = shl i32 %dn.0.i.i451, 1, !dbg !792
    #dbg_value(i32 %shl4.i.i453, !375, !DIExpression(), !789)
  br i1 %cmp3.i.i452, label %while.cond.i.i450, label %while.end.i.i454, !dbg !790, !llvm.loop !793

while.end.i.i454:                                 ; preds = %while.cond.i.i450
  %data5.i.i455 = getelementptr inbounds i8, ptr %c.0.i, i64 40, !dbg !795
  %62 = load ptr, ptr %data5.i.i455, align 8, !dbg !795
  %conv.i.i456 = zext i32 %dn.0.i.i451 to i64, !dbg !796
  %call.i.i457 = tail call ptr @realloc(ptr noundef %62, i64 noundef %conv.i.i456) #12, !dbg !797
    #dbg_value(ptr %call.i.i457, !373, !DIExpression(), !789)
  %tobool6.not.not.i.i458 = icmp eq ptr %call.i.i457, null, !dbg !798
  br i1 %tobool6.not.not.i.i458, label %cleanup, label %if.end.i.i459, !dbg !799

if.end.i.i459:                                    ; preds = %while.end.i.i454
  store ptr %call.i.i457, ptr %data5.i.i455, align 8, !dbg !800
  store i32 %dn.0.i.i451, ptr %d_max.i86.i, align 4, !dbg !801
  %.pre34.i.i460 = load i32, ptr %d_cur.i84.i, align 8, !dbg !802
  br label %do.body36

do.body36:                                        ; preds = %if.end.i.i459, %entry.if.end11_crit_edge.i.i439
  %63 = phi i32 [ %60, %entry.if.end11_crit_edge.i.i439 ], [ %.pre34.i.i460, %if.end.i.i459 ], !dbg !802
  %64 = phi ptr [ %.pre.i.i441, %entry.if.end11_crit_edge.i.i439 ], [ %call.i.i457, %if.end.i.i459 ], !dbg !787
  %idx.ext.i.i443 = zext i32 %63 to i64, !dbg !803
  %add.ptr.i.i444 = getelementptr inbounds i8, ptr %64, i64 %idx.ext.i.i443, !dbg !803
  store i64 7019831366685843821, ptr %add.ptr.i.i444, align 1, !dbg !804
  store i32 %add.i.i436, ptr %d_cur.i84.i, align 8, !dbg !805
    #dbg_value(ptr %c.0.i, !332, !DIExpression(), !806)
    #dbg_value(i32 17031, !337, !DIExpression(), !806)
    #dbg_value(i64 2, !338, !DIExpression(), !806)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !806)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !806)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !806)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !806)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !806)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !806)
    #dbg_value(i8 0, !339, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !806)
    #dbg_value(i8 2, !339, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !806)
    #dbg_value(i32 0, !344, !DIExpression(), !806)
    #dbg_value(ptr %c.0.i, !349, !DIExpression(), !810)
    #dbg_value(i32 17031, !354, !DIExpression(), !810)
    #dbg_value(i8 0, !355, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !810)
    #dbg_value(i8 0, !355, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !810)
    #dbg_value(i8 66, !355, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !810)
    #dbg_value(i8 -121, !355, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !810)
  %65 = load i32, ptr %d_max.i86.i, align 4, !dbg !812
    #dbg_value(ptr %c.0.i, !369, !DIExpression(), !814)
    #dbg_value(ptr %c.0.i, !369, !DIExpression(), !816)
    #dbg_value(ptr undef, !370, !DIExpression(), !814)
    #dbg_value(ptr undef, !370, !DIExpression(), !816)
    #dbg_value(i32 2, !371, !DIExpression(), !816)
  %add.i58.i729 = add i32 %60, 10, !dbg !818
    #dbg_value(i32 %add.i58.i729, !372, !DIExpression(), !816)
  %cmp.i60.i730 = icmp ugt i32 %add.i58.i729, %65, !dbg !819
  br i1 %cmp.i60.i730, label %if.then.i68.i739, label %entry.if.end11_crit_edge.i61.i731, !dbg !820

entry.if.end11_crit_edge.i61.i731:                ; preds = %do.body36
  %data12.phi.trans.insert.i62.i732 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i63.i733 = load ptr, ptr %data12.phi.trans.insert.i62.i732, align 8, !dbg !821
  br label %land.rhs.preheader.i471, !dbg !820

if.then.i68.i739:                                 ; preds = %do.body36
  %tobool.not.i69.i740 = icmp eq i32 %65, 0, !dbg !822
  %shl.i70.i741 = shl i32 %65, 1
  %spec.select.i71.i742 = select i1 %tobool.not.i69.i740, i32 16, i32 %shl.i70.i741, !dbg !822
    #dbg_value(i32 %spec.select.i71.i742, !375, !DIExpression(), !823)
  br label %while.cond.i72.i743, !dbg !824

while.cond.i72.i743:                              ; preds = %while.cond.i72.i743, %if.then.i68.i739
  %dn.0.i73.i744 = phi i32 [ %spec.select.i71.i742, %if.then.i68.i739 ], [ %shl4.i75.i746, %while.cond.i72.i743 ], !dbg !823
    #dbg_value(i32 %dn.0.i73.i744, !375, !DIExpression(), !823)
  %cmp3.i74.i745 = icmp ugt i32 %add.i58.i729, %dn.0.i73.i744, !dbg !825
  %shl4.i75.i746 = shl i32 %dn.0.i73.i744, 1, !dbg !826
    #dbg_value(i32 %shl4.i75.i746, !375, !DIExpression(), !823)
  br i1 %cmp3.i74.i745, label %while.cond.i72.i743, label %while.end.i76.i747, !dbg !824, !llvm.loop !827

while.end.i76.i747:                               ; preds = %while.cond.i72.i743
  %data5.i77.i748 = getelementptr inbounds i8, ptr %c.0.i, i64 40, !dbg !829
  %66 = load ptr, ptr %data5.i77.i748, align 8, !dbg !829
  %conv.i78.i749 = zext i32 %dn.0.i73.i744 to i64, !dbg !830
  %call.i79.i750 = tail call ptr @realloc(ptr noundef %66, i64 noundef %conv.i78.i749) #12, !dbg !831
    #dbg_value(ptr %call.i79.i750, !373, !DIExpression(), !823)
  %tobool6.not.not.i80.i751 = icmp eq ptr %call.i79.i750, null, !dbg !832
  br i1 %tobool6.not.not.i80.i751, label %cleanup, label %if.end.i81.i752, !dbg !833

if.end.i81.i752:                                  ; preds = %while.end.i76.i747
  store ptr %call.i79.i750, ptr %data5.i77.i748, align 8, !dbg !834
  store i32 %dn.0.i73.i744, ptr %d_max.i86.i, align 4, !dbg !835
  %.pre34.i82.i753 = load i32, ptr %d_cur.i84.i, align 8, !dbg !836
  br label %land.rhs.preheader.i471

land.rhs.preheader.i471:                          ; preds = %if.end.i81.i752, %entry.if.end11_crit_edge.i61.i731
  %67 = phi i32 [ %add.i.i436, %entry.if.end11_crit_edge.i61.i731 ], [ %.pre34.i82.i753, %if.end.i81.i752 ], !dbg !836
  %68 = phi ptr [ %.pre.i63.i733, %entry.if.end11_crit_edge.i61.i731 ], [ %call.i79.i750, %if.end.i81.i752 ], !dbg !821
  %idx.ext.i65.i735 = zext i32 %67 to i64, !dbg !837
  %add.ptr.i66.i736 = getelementptr inbounds i8, ptr %68, i64 %idx.ext.i65.i735, !dbg !837
  store i8 66, ptr %add.ptr.i66.i736, align 1, !dbg !838
  %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i737 = getelementptr inbounds i8, ptr %add.ptr.i66.i736, i64 1, !dbg !838
  store i8 -121, ptr %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i737, align 1, !dbg !838
  store i32 %add.i58.i729, ptr %d_cur.i84.i, align 8, !dbg !839
    #dbg_value(i64 6, !344, !DIExpression(), !806)
  %call24.i472 = tail call fastcc i32 @mk_write_size(ptr noundef nonnull %c.0.i, i32 noundef 1), !dbg !840
  %cmp25.i473 = icmp slt i32 %call24.i472, 0, !dbg !840
  br i1 %cmp25.i473, label %cleanup, label %do.body31.i474, !dbg !841

do.body31.i474:                                   ; preds = %land.rhs.preheader.i471
    #dbg_value(ptr %c.0.i, !369, !DIExpression(), !842)
    #dbg_value(ptr undef, !370, !DIExpression(), !842)
    #dbg_value(i32 1, !371, !DIExpression(), !842)
  %69 = load i32, ptr %d_cur.i84.i, align 8, !dbg !844
  %add.i.i477 = add i32 %69, 1, !dbg !845
    #dbg_value(i32 %add.i.i477, !372, !DIExpression(), !842)
  %70 = load i32, ptr %d_max.i86.i, align 4, !dbg !846
  %cmp.i.i479 = icmp ugt i32 %add.i.i477, %70, !dbg !847
  br i1 %cmp.i.i479, label %if.then.i.i488, label %entry.if.end11_crit_edge.i.i480, !dbg !848

entry.if.end11_crit_edge.i.i480:                  ; preds = %do.body31.i474
  %data12.phi.trans.insert.i.i481 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i.i482 = load ptr, ptr %data12.phi.trans.insert.i.i481, align 8, !dbg !849
  br label %do.body43, !dbg !848

if.then.i.i488:                                   ; preds = %do.body31.i474
  %tobool.not.i.i489 = icmp eq i32 %70, 0, !dbg !850
  %shl.i.i490 = shl i32 %70, 1
  %spec.select.i.i491 = select i1 %tobool.not.i.i489, i32 16, i32 %shl.i.i490, !dbg !850
    #dbg_value(i32 %spec.select.i.i491, !375, !DIExpression(), !851)
  br label %while.cond.i.i492, !dbg !852

while.cond.i.i492:                                ; preds = %while.cond.i.i492, %if.then.i.i488
  %dn.0.i.i493 = phi i32 [ %spec.select.i.i491, %if.then.i.i488 ], [ %shl4.i.i495, %while.cond.i.i492 ], !dbg !851
    #dbg_value(i32 %dn.0.i.i493, !375, !DIExpression(), !851)
  %cmp3.i.i494 = icmp ugt i32 %add.i.i477, %dn.0.i.i493, !dbg !853
  %shl4.i.i495 = shl i32 %dn.0.i.i493, 1, !dbg !854
    #dbg_value(i32 %shl4.i.i495, !375, !DIExpression(), !851)
  br i1 %cmp3.i.i494, label %while.cond.i.i492, label %while.end.i.i496, !dbg !852, !llvm.loop !855

while.end.i.i496:                                 ; preds = %while.cond.i.i492
  %data5.i.i497 = getelementptr inbounds i8, ptr %c.0.i, i64 40, !dbg !857
  %71 = load ptr, ptr %data5.i.i497, align 8, !dbg !857
  %conv.i.i498 = zext i32 %dn.0.i.i493 to i64, !dbg !858
  %call.i.i499 = tail call ptr @realloc(ptr noundef %71, i64 noundef %conv.i.i498) #12, !dbg !859
    #dbg_value(ptr %call.i.i499, !373, !DIExpression(), !851)
  %tobool6.not.not.i.i500 = icmp eq ptr %call.i.i499, null, !dbg !860
  br i1 %tobool6.not.not.i.i500, label %cleanup, label %if.end.i.i501, !dbg !861

if.end.i.i501:                                    ; preds = %while.end.i.i496
  store ptr %call.i.i499, ptr %data5.i.i497, align 8, !dbg !862
  store i32 %dn.0.i.i493, ptr %d_max.i86.i, align 4, !dbg !863
  %.pre34.i.i502 = load i32, ptr %d_cur.i84.i, align 8, !dbg !864
  br label %do.body43

do.body43:                                        ; preds = %if.end.i.i501, %entry.if.end11_crit_edge.i.i480
  %72 = phi i32 [ %69, %entry.if.end11_crit_edge.i.i480 ], [ %.pre34.i.i502, %if.end.i.i501 ], !dbg !864
  %73 = phi ptr [ %.pre.i.i482, %entry.if.end11_crit_edge.i.i480 ], [ %call.i.i499, %if.end.i.i501 ], !dbg !849
  %idx.ext.i.i484 = zext i32 %72 to i64, !dbg !865
  %add.ptr.i.i485 = getelementptr inbounds i8, ptr %73, i64 %idx.ext.i.i484, !dbg !865
  store i8 2, ptr %add.ptr.i.i485, align 1, !dbg !866
  store i32 %add.i.i477, ptr %d_cur.i84.i, align 8, !dbg !867
  %call44 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %c.0.i, i32 noundef 17029, i64 noundef 2), !dbg !868
  %cmp45 = icmp slt i32 %call44, 0, !dbg !868
  br i1 %cmp45, label %cleanup, label %do.body50, !dbg !871

do.body50:                                        ; preds = %do.body43
  %call51 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %c.0.i, ptr noundef null), !dbg !872
  %cmp52 = icmp slt i32 %call51, 0, !dbg !872
  br i1 %cmp52, label %cleanup, label %do.end56, !dbg !875

do.end56:                                         ; preds = %do.body50
  %74 = load ptr, ptr %root, align 8, !dbg !876
  %call58 = tail call fastcc ptr @mk_create_context(ptr noundef %w, ptr noundef %74, i32 noundef 408125543), !dbg !878
    #dbg_value(ptr %call58, !288, !DIExpression(), !291)
  %tobool59.not = icmp eq ptr %call58, null, !dbg !879
  br i1 %tobool59.not, label %cleanup, label %do.body62, !dbg !880

do.body62:                                        ; preds = %do.end56
  %call63 = tail call fastcc i32 @mk_flush_context_id(ptr noundef nonnull %call58), !dbg !881
  %cmp64 = icmp slt i32 %call63, 0, !dbg !881
  br i1 %cmp64, label %cleanup, label %do.body69, !dbg !884

do.body69:                                        ; preds = %do.body62
  %call70 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %call58, ptr noundef null), !dbg !885
  %cmp71 = icmp slt i32 %call70, 0, !dbg !885
  br i1 %cmp71, label %cleanup, label %do.end75, !dbg !888

do.end75:                                         ; preds = %do.body69
  %75 = load ptr, ptr %root, align 8, !dbg !889
  %call77 = tail call fastcc ptr @mk_create_context(ptr noundef nonnull %w, ptr noundef %75, i32 noundef 357149030), !dbg !891
    #dbg_value(ptr %call77, !288, !DIExpression(), !291)
  %tobool78.not = icmp eq ptr %call77, null, !dbg !892
  br i1 %tobool78.not, label %cleanup, label %do.body81, !dbg !893

do.body81:                                        ; preds = %do.end75
  %call82 = tail call fastcc i32 @mk_write_string(ptr noundef nonnull %call77, i32 noundef 19840, ptr noundef nonnull @.str.3), !dbg !894
  %cmp83 = icmp slt i32 %call82, 0, !dbg !894
  br i1 %cmp83, label %cleanup, label %do.body88, !dbg !897

do.body88:                                        ; preds = %do.body81
  %call89 = tail call fastcc i32 @mk_write_string(ptr noundef nonnull %call77, i32 noundef 22337, ptr noundef %writing_app), !dbg !898
  %cmp90 = icmp slt i32 %call89, 0, !dbg !898
  br i1 %cmp90, label %cleanup, label %do.body95, !dbg !901

do.body95:                                        ; preds = %do.body88
  %76 = load i64, ptr %timescale1, align 8, !dbg !902
  %call97 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call77, i32 noundef 2807729, i64 noundef %76), !dbg !902
  %cmp98 = icmp slt i32 %call97, 0, !dbg !902
  br i1 %cmp98, label %cleanup, label %do.body103, !dbg !905

do.body103:                                       ; preds = %do.body95
  %call104 = tail call fastcc i32 @mk_write_float(ptr noundef nonnull %call77), !dbg !906
  %cmp105 = icmp slt i32 %call104, 0, !dbg !906
  br i1 %cmp105, label %cleanup, label %do.end109, !dbg !909

do.end109:                                        ; preds = %do.body103
  %d_cur = getelementptr inbounds i8, ptr %call77, i64 48, !dbg !910
  %77 = load i32, ptr %d_cur, align 8, !dbg !910
  %sub = add i32 %77, -4, !dbg !911
  %duration_ptr = getelementptr inbounds i8, ptr %w, i64 8, !dbg !912
  store i32 %sub, ptr %duration_ptr, align 8, !dbg !913
  %call112 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %call77, ptr noundef nonnull %duration_ptr), !dbg !914
  %cmp113 = icmp slt i32 %call112, 0, !dbg !914
  br i1 %cmp113, label %cleanup, label %do.end117, !dbg !917

do.end117:                                        ; preds = %do.end109
  %78 = load ptr, ptr %root, align 8, !dbg !918
  %call119 = tail call fastcc ptr @mk_create_context(ptr noundef nonnull %w, ptr noundef %78, i32 noundef 374648427), !dbg !920
    #dbg_value(ptr %call119, !288, !DIExpression(), !291)
  %tobool120.not = icmp eq ptr %call119, null, !dbg !921
  br i1 %tobool120.not, label %cleanup, label %if.end122, !dbg !922

if.end122:                                        ; preds = %do.end117
  %call123 = tail call fastcc ptr @mk_create_context(ptr noundef nonnull %w, ptr noundef nonnull %call119, i32 noundef 174), !dbg !923
    #dbg_value(ptr %call123, !289, !DIExpression(), !291)
  %tobool124.not = icmp eq ptr %call123, null, !dbg !925
  br i1 %tobool124.not, label %cleanup, label %do.body127, !dbg !926

do.body127:                                       ; preds = %if.end122
  %call128 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call123, i32 noundef 215, i64 noundef 1), !dbg !927
  %cmp129 = icmp slt i32 %call128, 0, !dbg !927
  br i1 %cmp129, label %cleanup, label %do.body134, !dbg !930

do.body134:                                       ; preds = %do.body127
  %call135 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call123, i32 noundef 29637, i64 noundef 1), !dbg !931
  %cmp136 = icmp slt i32 %call135, 0, !dbg !931
  br i1 %cmp136, label %cleanup, label %do.body141, !dbg !934

do.body141:                                       ; preds = %do.body134
  %call142 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call123, i32 noundef 131, i64 noundef 1), !dbg !935
  %cmp143 = icmp slt i32 %call142, 0, !dbg !935
  br i1 %cmp143, label %cleanup, label %do.body148, !dbg !938

do.body148:                                       ; preds = %do.body141
  %call149 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call123, i32 noundef 156, i64 noundef 0), !dbg !939
  %cmp150 = icmp slt i32 %call149, 0, !dbg !939
  br i1 %cmp150, label %cleanup, label %do.body155, !dbg !942

do.body155:                                       ; preds = %do.body148
  %call156 = tail call fastcc i32 @mk_write_string(ptr noundef nonnull %call123, i32 noundef 134, ptr noundef %codec_id), !dbg !943
  %cmp157 = icmp slt i32 %call156, 0, !dbg !943
  br i1 %cmp157, label %cleanup, label %do.end161, !dbg !946

do.end161:                                        ; preds = %do.body155
  %tobool162.not = icmp eq i32 %codec_private_size, 0, !dbg !947
  br i1 %tobool162.not, label %if.end171, label %do.body164, !dbg !949

do.body164:                                       ; preds = %do.end161
  %call165 = tail call fastcc i32 @mk_write_bin(ptr noundef nonnull %call123, ptr noundef %codec_private, i32 noundef %codec_private_size), !dbg !950
  %cmp166 = icmp slt i32 %call165, 0, !dbg !950
  br i1 %cmp166, label %cleanup, label %if.end171, !dbg !953

if.end171:                                        ; preds = %do.body164, %do.end161
  %tobool172.not = icmp eq i64 %default_frame_duration, 0, !dbg !954
  br i1 %tobool172.not, label %if.end181, label %do.body174, !dbg !956

do.body174:                                       ; preds = %if.end171
  %call175 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call123, i32 noundef 2352003, i64 noundef %default_frame_duration), !dbg !957
  %cmp176 = icmp slt i32 %call175, 0, !dbg !957
  br i1 %cmp176, label %cleanup, label %if.end181, !dbg !960

if.end181:                                        ; preds = %do.body174, %if.end171
  %call182 = tail call fastcc ptr @mk_create_context(ptr noundef nonnull %w, ptr noundef nonnull %call123, i32 noundef 224), !dbg !961
    #dbg_value(ptr %call182, !290, !DIExpression(), !291)
  %tobool183.not = icmp eq ptr %call182, null, !dbg !963
  br i1 %tobool183.not, label %cleanup, label %do.body186, !dbg !964

do.body186:                                       ; preds = %if.end181
  %conv = zext i32 %width to i64, !dbg !965
  %call187 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call182, i32 noundef 176, i64 noundef %conv), !dbg !965
  %cmp188 = icmp slt i32 %call187, 0, !dbg !965
  br i1 %cmp188, label %cleanup, label %do.body194, !dbg !968

do.body194:                                       ; preds = %do.body186
  %conv195 = zext i32 %height to i64, !dbg !969
  %call196 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call182, i32 noundef 186, i64 noundef %conv195), !dbg !969
  %cmp197 = icmp slt i32 %call196, 0, !dbg !969
  br i1 %cmp197, label %cleanup, label %do.body203, !dbg !972

do.body203:                                       ; preds = %do.body194
  %conv204 = zext i32 %d_width to i64, !dbg !973
  %call205 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call182, i32 noundef 21680, i64 noundef %conv204), !dbg !973
  %cmp206 = icmp slt i32 %call205, 0, !dbg !973
  br i1 %cmp206, label %cleanup, label %do.body212, !dbg !976

do.body212:                                       ; preds = %do.body203
  %conv213 = zext i32 %d_height to i64, !dbg !977
  %call214 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call182, i32 noundef 21690, i64 noundef %conv213), !dbg !977
  %cmp215 = icmp slt i32 %call214, 0, !dbg !977
  br i1 %cmp215, label %cleanup, label %do.body221, !dbg !980

do.body221:                                       ; preds = %do.body212
  %call222 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %call182, ptr noundef null), !dbg !981
  %cmp223 = icmp slt i32 %call222, 0, !dbg !981
  br i1 %cmp223, label %cleanup, label %do.body229, !dbg !984

do.body229:                                       ; preds = %do.body221
  %call230 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %call123, ptr noundef null), !dbg !985
  %cmp231 = icmp slt i32 %call230, 0, !dbg !985
  br i1 %cmp231, label %cleanup, label %do.body237, !dbg !988

do.body237:                                       ; preds = %do.body229
  %call238 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %call119, ptr noundef null), !dbg !989
  %cmp239 = icmp slt i32 %call238, 0, !dbg !989
  br i1 %cmp239, label %cleanup, label %do.body245, !dbg !992

do.body245:                                       ; preds = %do.body237
  %79 = load ptr, ptr %root, align 8, !dbg !993
  %call247 = tail call fastcc i32 @mk_flush_context_data(ptr noundef %79), !dbg !993
  %cmp248 = icmp slt i32 %call247, 0, !dbg !993
  br i1 %cmp248, label %cleanup, label %do.end253, !dbg !996

do.end253:                                        ; preds = %do.body245
  store i8 1, ptr %wrote_header, align 8, !dbg !997
  br label %cleanup, !dbg !998

cleanup:                                          ; preds = %while.end.i76.i747, %while.end.i.i496, %land.rhs.preheader.i471, %while.end.i76.i719, %while.end.i.i454, %do.body2.i, %while.end.i.i663, %while.end.i76.i691, %while.end.i.i425, %while.end.i.i607, %while.end.i76.i635, %while.end.i.i383, %while.end.i.i551, %while.end.i76.i579, %while.end.i.i341, %while.end.i.i523, %while.end.i76.i, %while.end.i.i, %if.else.i, %do.body245, %do.body237, %do.body229, %do.body221, %do.body212, %do.body203, %do.body194, %do.body186, %if.end181, %do.body174, %do.body164, %do.body155, %do.body148, %do.body141, %do.body134, %do.body127, %if.end122, %do.end117, %do.end109, %do.body103, %do.body95, %do.body88, %do.body81, %do.end75, %do.body69, %do.body62, %do.end56, %do.body50, %do.body43, %entry, %do.end253
  %retval.0 = phi i32 [ 0, %do.end253 ], [ -1, %entry ], [ -1, %do.body43 ], [ -1, %do.body50 ], [ -1, %do.end56 ], [ -1, %do.body62 ], [ -1, %do.body69 ], [ -1, %do.end75 ], [ -1, %do.body81 ], [ -1, %do.body88 ], [ -1, %do.body95 ], [ -1, %do.body103 ], [ -1, %do.end109 ], [ -1, %do.end117 ], [ -1, %if.end122 ], [ -1, %do.body127 ], [ -1, %do.body134 ], [ -1, %do.body141 ], [ -1, %do.body148 ], [ -1, %do.body155 ], [ -1, %do.body164 ], [ -1, %do.body174 ], [ -1, %if.end181 ], [ -1, %do.body186 ], [ -1, %do.body194 ], [ -1, %do.body203 ], [ -1, %do.body212 ], [ -1, %do.body221 ], [ -1, %do.body229 ], [ -1, %do.body237 ], [ -1, %do.body245 ], [ -1, %if.else.i ], [ -1, %while.end.i.i ], [ -1, %while.end.i76.i ], [ -1, %while.end.i.i523 ], [ -1, %while.end.i.i341 ], [ -1, %while.end.i76.i579 ], [ -1, %while.end.i.i551 ], [ -1, %while.end.i.i383 ], [ -1, %while.end.i76.i635 ], [ -1, %while.end.i.i607 ], [ -1, %while.end.i.i425 ], [ -1, %while.end.i76.i691 ], [ -1, %while.end.i.i663 ], [ -1, %do.body2.i ], [ -1, %while.end.i.i454 ], [ -1, %while.end.i76.i719 ], [ -1, %land.rhs.preheader.i471 ], [ -1, %while.end.i.i496 ], [ -1, %while.end.i76.i747 ], !dbg !291
  ret i32 %retval.0, !dbg !999
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @mk_write_uint(ptr nocapture noundef %c, i32 noundef %id, i64 noundef %ui) unnamed_addr #0 !dbg !333 {
entry:
  %c_ui = alloca [8 x i8], align 1, !DIAssignID !1000
    #dbg_assign(i1 undef, !339, !DIExpression(), !1000, ptr %c_ui, !DIExpression(), !1001)
    #dbg_value(ptr %c, !332, !DIExpression(), !1001)
    #dbg_value(i32 %id, !337, !DIExpression(), !1001)
    #dbg_value(i64 %ui, !338, !DIExpression(), !1001)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %c_ui) #11, !dbg !1002
  %shr = lshr i64 %ui, 56, !dbg !1003
  %conv = trunc nuw i64 %shr to i8, !dbg !1004
  store i8 %conv, ptr %c_ui, align 1, !dbg !1005, !DIAssignID !1006
    #dbg_assign(i8 %conv, !339, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1006, ptr %c_ui, !DIExpression(), !1001)
  %arrayinit.element = getelementptr inbounds i8, ptr %c_ui, i64 1, !dbg !1005
  %shr1 = lshr i64 %ui, 48, !dbg !1007
  %conv2 = trunc i64 %shr1 to i8, !dbg !1008
  store i8 %conv2, ptr %arrayinit.element, align 1, !dbg !1005, !DIAssignID !1009
    #dbg_assign(i8 %conv2, !339, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1009, ptr %arrayinit.element, !DIExpression(), !1001)
  %arrayinit.element3 = getelementptr inbounds i8, ptr %c_ui, i64 2, !dbg !1005
  %shr4 = lshr i64 %ui, 40, !dbg !1010
  %conv5 = trunc i64 %shr4 to i8, !dbg !1011
  store i8 %conv5, ptr %arrayinit.element3, align 1, !dbg !1005, !DIAssignID !1012
    #dbg_assign(i8 %conv5, !339, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !1012, ptr %arrayinit.element3, !DIExpression(), !1001)
  %arrayinit.element6 = getelementptr inbounds i8, ptr %c_ui, i64 3, !dbg !1005
  %shr7 = lshr i64 %ui, 32, !dbg !1013
  %conv8 = trunc i64 %shr7 to i8, !dbg !1014
  store i8 %conv8, ptr %arrayinit.element6, align 1, !dbg !1005, !DIAssignID !1015
    #dbg_assign(i8 %conv8, !339, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !1015, ptr %arrayinit.element6, !DIExpression(), !1001)
  %arrayinit.element9 = getelementptr inbounds i8, ptr %c_ui, i64 4, !dbg !1005
  %shr10 = lshr i64 %ui, 24, !dbg !1016
  %conv11 = trunc i64 %shr10 to i8, !dbg !1017
  store i8 %conv11, ptr %arrayinit.element9, align 1, !dbg !1005, !DIAssignID !1018
    #dbg_assign(i8 %conv11, !339, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !1018, ptr %arrayinit.element9, !DIExpression(), !1001)
  %arrayinit.element12 = getelementptr inbounds i8, ptr %c_ui, i64 5, !dbg !1005
  %shr13 = lshr i64 %ui, 16, !dbg !1019
  %conv14 = trunc i64 %shr13 to i8, !dbg !1020
  store i8 %conv14, ptr %arrayinit.element12, align 1, !dbg !1005, !DIAssignID !1021
    #dbg_assign(i8 %conv14, !339, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !1021, ptr %arrayinit.element12, !DIExpression(), !1001)
  %arrayinit.element15 = getelementptr inbounds i8, ptr %c_ui, i64 6, !dbg !1005
  %shr16 = lshr i64 %ui, 8, !dbg !1022
  %conv17 = trunc i64 %shr16 to i8, !dbg !1023
  store i8 %conv17, ptr %arrayinit.element15, align 1, !dbg !1005, !DIAssignID !1024
    #dbg_assign(i8 %conv17, !339, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !1024, ptr %arrayinit.element15, !DIExpression(), !1001)
  %arrayinit.element18 = getelementptr inbounds i8, ptr %c_ui, i64 7, !dbg !1005
  %conv19 = trunc i64 %ui to i8, !dbg !1025
  store i8 %conv19, ptr %arrayinit.element18, align 1, !dbg !1005, !DIAssignID !1026
    #dbg_assign(i8 %conv19, !339, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !1026, ptr %arrayinit.element18, !DIExpression(), !1001)
    #dbg_value(i32 0, !344, !DIExpression(), !1001)
  %call = tail call fastcc i32 @mk_write_id(ptr noundef %c, i32 noundef %id), !dbg !1027
  %cmp = icmp slt i32 %call, 0, !dbg !1027
  br i1 %cmp, label %cleanup, label %land.rhs.preheader, !dbg !1028

land.rhs.preheader:                               ; preds = %entry
    #dbg_value(i64 0, !344, !DIExpression(), !1001)
  %tobool.not = icmp ult i64 %ui, 72057594037927936, !dbg !1029
  br i1 %tobool.not, label %while.body, label %do.body23, !dbg !1030

while.body:                                       ; preds = %land.rhs.preheader
    #dbg_value(i64 1, !344, !DIExpression(), !1001)
  %tobool.not.1 = icmp eq i8 %conv2, 0, !dbg !1029
  br i1 %tobool.not.1, label %while.body.1, label %do.body23, !dbg !1030

while.body.1:                                     ; preds = %while.body
    #dbg_value(i64 2, !344, !DIExpression(), !1001)
  %tobool.not.2 = icmp eq i8 %conv5, 0, !dbg !1029
  br i1 %tobool.not.2, label %while.body.2, label %do.body23, !dbg !1030

while.body.2:                                     ; preds = %while.body.1
    #dbg_value(i64 3, !344, !DIExpression(), !1001)
  %tobool.not.3 = icmp eq i8 %conv8, 0, !dbg !1029
  br i1 %tobool.not.3, label %while.body.3, label %do.body23, !dbg !1030

while.body.3:                                     ; preds = %while.body.2
    #dbg_value(i64 4, !344, !DIExpression(), !1001)
  %tobool.not.4 = icmp eq i8 %conv11, 0, !dbg !1029
  br i1 %tobool.not.4, label %while.body.4, label %do.body23, !dbg !1030

while.body.4:                                     ; preds = %while.body.3
    #dbg_value(i64 5, !344, !DIExpression(), !1001)
  %tobool.not.5 = icmp eq i8 %conv14, 0, !dbg !1029
  br i1 %tobool.not.5, label %while.body.5, label %do.body23, !dbg !1030

while.body.5:                                     ; preds = %while.body.4
    #dbg_value(i64 6, !344, !DIExpression(), !1001)
  %tobool.not.6 = icmp eq i8 %conv17, 0, !dbg !1029
  %spec.select = select i1 %tobool.not.6, i32 7, i32 6, !dbg !1030
  br label %do.body23, !dbg !1030

do.body23:                                        ; preds = %while.body.5, %while.body.4, %while.body.3, %while.body.2, %while.body.1, %while.body, %land.rhs.preheader
  %i.0.lcssa = phi i32 [ 0, %land.rhs.preheader ], [ 1, %while.body ], [ 2, %while.body.1 ], [ 3, %while.body.2 ], [ 4, %while.body.3 ], [ 5, %while.body.4 ], [ %spec.select, %while.body.5 ], !dbg !1001
  %sub = sub nuw nsw i32 8, %i.0.lcssa, !dbg !1031
  %call24 = tail call fastcc i32 @mk_write_size(ptr noundef %c, i32 noundef %sub), !dbg !1031
  %cmp25 = icmp slt i32 %call24, 0, !dbg !1031
  br i1 %cmp25, label %cleanup, label %do.body31, !dbg !1032

do.body31:                                        ; preds = %do.body23
  %idx.ext = zext nneg i32 %i.0.lcssa to i64, !dbg !1033
  %add.ptr = getelementptr inbounds i8, ptr %c_ui, i64 %idx.ext, !dbg !1033
    #dbg_value(ptr %c, !369, !DIExpression(), !1034)
    #dbg_value(ptr %add.ptr, !370, !DIExpression(), !1034)
    #dbg_value(i32 %sub, !371, !DIExpression(), !1034)
  %d_cur.i = getelementptr inbounds i8, ptr %c, i64 48, !dbg !1036
  %0 = load i32, ptr %d_cur.i, align 8, !dbg !1036
  %add.i = add i32 %0, %sub, !dbg !1037
    #dbg_value(i32 %add.i, !372, !DIExpression(), !1034)
  %d_max.i = getelementptr inbounds i8, ptr %c, i64 52, !dbg !1038
  %1 = load i32, ptr %d_max.i, align 4, !dbg !1038
  %cmp.i = icmp ugt i32 %add.i, %1, !dbg !1039
  br i1 %cmp.i, label %if.then.i, label %entry.if.end11_crit_edge.i, !dbg !1040

entry.if.end11_crit_edge.i:                       ; preds = %do.body31
  %data12.phi.trans.insert.i = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i = load ptr, ptr %data12.phi.trans.insert.i, align 8, !dbg !1041
  br label %mk_append_context_data.exit, !dbg !1040

if.then.i:                                        ; preds = %do.body31
  %tobool.not.i = icmp eq i32 %1, 0, !dbg !1042
  %shl.i = shl i32 %1, 1
  %spec.select.i = select i1 %tobool.not.i, i32 16, i32 %shl.i, !dbg !1042
    #dbg_value(i32 %spec.select.i, !375, !DIExpression(), !1043)
  br label %while.cond.i, !dbg !1044

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i ], [ %shl4.i, %while.cond.i ], !dbg !1043
    #dbg_value(i32 %dn.0.i, !375, !DIExpression(), !1043)
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i, !dbg !1045
  %shl4.i = shl i32 %dn.0.i, 1, !dbg !1046
    #dbg_value(i32 %shl4.i, !375, !DIExpression(), !1043)
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i, !dbg !1044, !llvm.loop !1047

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds i8, ptr %c, i64 40, !dbg !1049
  %2 = load ptr, ptr %data5.i, align 8, !dbg !1049
  %conv.i = zext i32 %dn.0.i to i64, !dbg !1050
  %call.i = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv.i) #12, !dbg !1051
    #dbg_value(ptr %call.i, !373, !DIExpression(), !1043)
  %tobool6.not.not.i = icmp eq ptr %call.i, null, !dbg !1052
  br i1 %tobool6.not.not.i, label %cleanup, label %if.end.i, !dbg !1053

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %data5.i, align 8, !dbg !1054
  store i32 %dn.0.i, ptr %d_max.i, align 4, !dbg !1055
  %.pre34.i = load i32, ptr %d_cur.i, align 8, !dbg !1056
  br label %mk_append_context_data.exit

mk_append_context_data.exit:                      ; preds = %entry.if.end11_crit_edge.i, %if.end.i
  %3 = phi i32 [ %0, %entry.if.end11_crit_edge.i ], [ %.pre34.i, %if.end.i ], !dbg !1056
  %4 = phi ptr [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i ], !dbg !1041
  %idx.ext.i = zext i32 %3 to i64, !dbg !1057
  %add.ptr.i = getelementptr inbounds i8, ptr %4, i64 %idx.ext.i, !dbg !1057
  %conv14.i = zext nneg i32 %sub to i64, !dbg !1058
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %add.ptr, i64 %conv14.i, i1 false), !dbg !1059
  store i32 %add.i, ptr %d_cur.i, align 8, !dbg !1060
  br label %cleanup, !dbg !1001

cleanup:                                          ; preds = %mk_append_context_data.exit, %while.end.i, %do.body23, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %do.body23 ], [ 0, %mk_append_context_data.exit ], [ -1, %while.end.i ], !dbg !1001
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %c_ui) #11, !dbg !1061
  ret i32 %retval.0, !dbg !1061
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @mk_write_string(ptr nocapture noundef %c, i32 noundef %id, ptr nocapture noundef readonly %str) unnamed_addr #0 !dbg !731 {
entry:
    #dbg_value(ptr %c, !730, !DIExpression(), !1062)
    #dbg_value(i32 %id, !735, !DIExpression(), !1062)
    #dbg_value(ptr %str, !736, !DIExpression(), !1062)
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #13, !dbg !1063
    #dbg_value(i64 %call, !737, !DIExpression(), !1062)
  %call1 = tail call fastcc i32 @mk_write_id(ptr noundef %c, i32 noundef %id), !dbg !1064
  %cmp = icmp slt i32 %call1, 0, !dbg !1064
  br i1 %cmp, label %cleanup, label %do.body2, !dbg !1065

do.body2:                                         ; preds = %entry
  %conv = trunc i64 %call to i32, !dbg !1066
  %call3 = tail call fastcc i32 @mk_write_size(ptr noundef %c, i32 noundef %conv), !dbg !1066
  %cmp4 = icmp slt i32 %call3, 0, !dbg !1066
  br i1 %cmp4, label %cleanup, label %do.body10, !dbg !1067

do.body10:                                        ; preds = %do.body2
    #dbg_value(ptr %c, !369, !DIExpression(), !1068)
    #dbg_value(ptr %str, !370, !DIExpression(), !1068)
    #dbg_value(i32 %conv, !371, !DIExpression(), !1068)
  %d_cur.i = getelementptr inbounds i8, ptr %c, i64 48, !dbg !1070
  %0 = load i32, ptr %d_cur.i, align 8, !dbg !1070
  %add.i = add i32 %0, %conv, !dbg !1071
    #dbg_value(i32 %add.i, !372, !DIExpression(), !1068)
  %d_max.i = getelementptr inbounds i8, ptr %c, i64 52, !dbg !1072
  %1 = load i32, ptr %d_max.i, align 4, !dbg !1072
  %cmp.i = icmp ugt i32 %add.i, %1, !dbg !1073
  br i1 %cmp.i, label %if.then.i, label %entry.if.end11_crit_edge.i, !dbg !1074

entry.if.end11_crit_edge.i:                       ; preds = %do.body10
  %data12.phi.trans.insert.i = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i = load ptr, ptr %data12.phi.trans.insert.i, align 8, !dbg !1075
  br label %mk_append_context_data.exit, !dbg !1074

if.then.i:                                        ; preds = %do.body10
  %tobool.not.i = icmp eq i32 %1, 0, !dbg !1076
  %shl.i = shl i32 %1, 1
  %spec.select.i = select i1 %tobool.not.i, i32 16, i32 %shl.i, !dbg !1076
    #dbg_value(i32 %spec.select.i, !375, !DIExpression(), !1077)
  br label %while.cond.i, !dbg !1078

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i ], [ %shl4.i, %while.cond.i ], !dbg !1077
    #dbg_value(i32 %dn.0.i, !375, !DIExpression(), !1077)
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i, !dbg !1079
  %shl4.i = shl i32 %dn.0.i, 1, !dbg !1080
    #dbg_value(i32 %shl4.i, !375, !DIExpression(), !1077)
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i, !dbg !1078, !llvm.loop !1081

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds i8, ptr %c, i64 40, !dbg !1083
  %2 = load ptr, ptr %data5.i, align 8, !dbg !1083
  %conv.i = zext i32 %dn.0.i to i64, !dbg !1084
  %call.i = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv.i) #12, !dbg !1085
    #dbg_value(ptr %call.i, !373, !DIExpression(), !1077)
  %tobool6.not.not.i = icmp eq ptr %call.i, null, !dbg !1086
  br i1 %tobool6.not.not.i, label %cleanup, label %if.end.i, !dbg !1087

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %data5.i, align 8, !dbg !1088
  store i32 %dn.0.i, ptr %d_max.i, align 4, !dbg !1089
  %.pre34.i = load i32, ptr %d_cur.i, align 8, !dbg !1090
  br label %mk_append_context_data.exit

mk_append_context_data.exit:                      ; preds = %entry.if.end11_crit_edge.i, %if.end.i
  %3 = phi i32 [ %0, %entry.if.end11_crit_edge.i ], [ %.pre34.i, %if.end.i ], !dbg !1090
  %4 = phi ptr [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i ], !dbg !1075
  %idx.ext.i = zext i32 %3 to i64, !dbg !1091
  %add.ptr.i = getelementptr inbounds i8, ptr %4, i64 %idx.ext.i, !dbg !1091
  %conv14.i = and i64 %call, 4294967295, !dbg !1092
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i, ptr readonly align 1 %str, i64 %conv14.i, i1 false), !dbg !1093
  store i32 %add.i, ptr %d_cur.i, align 8, !dbg !1094
  br label %cleanup, !dbg !1062

cleanup:                                          ; preds = %mk_append_context_data.exit, %while.end.i, %do.body2, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %do.body2 ], [ 0, %mk_append_context_data.exit ], [ -1, %while.end.i ], !dbg !1062
  ret i32 %retval.0, !dbg !1095
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @mk_close_context(ptr noundef %c, ptr noundef %off) unnamed_addr #0 !dbg !1096 {
entry:
    #dbg_value(ptr %c, !1101, !DIExpression(), !1103)
    #dbg_value(ptr %off, !1102, !DIExpression(), !1103)
  %id = getelementptr inbounds i8, ptr %c, i64 32, !dbg !1104
  %0 = load i32, ptr %id, align 8, !dbg !1104
  %tobool.not = icmp eq i32 %0, 0, !dbg !1106
  br i1 %tobool.not, label %if.end10, label %do.body, !dbg !1107

do.body:                                          ; preds = %entry
  %parent = getelementptr inbounds i8, ptr %c, i64 16, !dbg !1108
  %1 = load ptr, ptr %parent, align 8, !dbg !1108
  %call = tail call fastcc i32 @mk_write_id(ptr noundef %1, i32 noundef %0), !dbg !1108
  %cmp = icmp slt i32 %call, 0, !dbg !1108
  br i1 %cmp, label %return, label %do.body3, !dbg !1112

do.body3:                                         ; preds = %do.body
  %2 = load ptr, ptr %parent, align 8, !dbg !1113
  %d_cur = getelementptr inbounds i8, ptr %c, i64 48, !dbg !1113
  %3 = load i32, ptr %d_cur, align 8, !dbg !1113
  %call5 = tail call fastcc i32 @mk_write_size(ptr noundef %2, i32 noundef %3), !dbg !1113
  %cmp6 = icmp slt i32 %call5, 0, !dbg !1113
  br i1 %cmp6, label %return, label %if.end10, !dbg !1116

if.end10:                                         ; preds = %do.body3, %entry
  %parent11 = getelementptr inbounds i8, ptr %c, i64 16, !dbg !1117
  %4 = load ptr, ptr %parent11, align 8, !dbg !1117
  %tobool12 = icmp ne ptr %4, null, !dbg !1119
  %tobool13 = icmp ne ptr %off, null
  %or.cond = and i1 %tobool13, %tobool12, !dbg !1120
  br i1 %or.cond, label %if.then14, label %do.body18, !dbg !1120

if.then14:                                        ; preds = %if.end10
  %d_cur16 = getelementptr inbounds i8, ptr %4, i64 48, !dbg !1121
  %5 = load i32, ptr %d_cur16, align 8, !dbg !1121
  %6 = load i32, ptr %off, align 4, !dbg !1122
  %add = add i32 %6, %5, !dbg !1122
  store i32 %add, ptr %off, align 4, !dbg !1122
  br label %do.body18, !dbg !1123

do.body18:                                        ; preds = %if.end10, %if.then14
    #dbg_value(ptr %c, !1124, !DIExpression(), !1129)
  %d_cur.i = getelementptr inbounds i8, ptr %c, i64 48, !dbg !1133
  %7 = load i32, ptr %d_cur.i, align 8, !dbg !1133
  %tobool.not.i = icmp eq i32 %7, 0, !dbg !1135
  br i1 %tobool.not.i, label %do.end23, label %if.end.i, !dbg !1136

if.end.i:                                         ; preds = %do.body18
  %8 = load ptr, ptr %parent11, align 8, !dbg !1137
  %tobool1.not.i = icmp eq ptr %8, null, !dbg !1139
  %data7.i = getelementptr inbounds i8, ptr %c, i64 40, !dbg !1140
  %9 = load ptr, ptr %data7.i, align 8, !dbg !1140
  br i1 %tobool1.not.i, label %if.else.i, label %do.body.i, !dbg !1141

do.body.i:                                        ; preds = %if.end.i
    #dbg_value(ptr %8, !369, !DIExpression(), !1142)
    #dbg_value(ptr %9, !370, !DIExpression(), !1142)
    #dbg_value(i32 %7, !371, !DIExpression(), !1142)
  %d_cur.i.i = getelementptr inbounds i8, ptr %8, i64 48, !dbg !1146
  %10 = load i32, ptr %d_cur.i.i, align 8, !dbg !1146
  %add.i.i = add i32 %10, %7, !dbg !1147
    #dbg_value(i32 %add.i.i, !372, !DIExpression(), !1142)
  %d_max.i.i = getelementptr inbounds i8, ptr %8, i64 52, !dbg !1148
  %11 = load i32, ptr %d_max.i.i, align 4, !dbg !1148
  %cmp.i.i = icmp ugt i32 %add.i.i, %11, !dbg !1149
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end11_crit_edge.i.i, !dbg !1150

entry.if.end11_crit_edge.i.i:                     ; preds = %do.body.i
  %data12.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %8, i64 40
  %.pre.i.i = load ptr, ptr %data12.phi.trans.insert.i.i, align 8, !dbg !1151
  br label %mk_append_context_data.exit.i, !dbg !1150

if.then.i.i:                                      ; preds = %do.body.i
  %tobool.not.i.i = icmp eq i32 %11, 0, !dbg !1152
  %shl.i.i = shl i32 %11, 1
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 16, i32 %shl.i.i, !dbg !1152
    #dbg_value(i32 %spec.select.i.i, !375, !DIExpression(), !1153)
  br label %while.cond.i.i, !dbg !1154

while.cond.i.i:                                   ; preds = %while.cond.i.i, %if.then.i.i
  %dn.0.i.i = phi i32 [ %spec.select.i.i, %if.then.i.i ], [ %shl4.i.i, %while.cond.i.i ], !dbg !1153
    #dbg_value(i32 %dn.0.i.i, !375, !DIExpression(), !1153)
  %cmp3.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i, !dbg !1155
  %shl4.i.i = shl i32 %dn.0.i.i, 1, !dbg !1156
    #dbg_value(i32 %shl4.i.i, !375, !DIExpression(), !1153)
  br i1 %cmp3.i.i, label %while.cond.i.i, label %while.end.i.i, !dbg !1154, !llvm.loop !1157

while.end.i.i:                                    ; preds = %while.cond.i.i
  %data5.i.i = getelementptr inbounds i8, ptr %8, i64 40, !dbg !1159
  %12 = load ptr, ptr %data5.i.i, align 8, !dbg !1159
  %conv.i.i = zext i32 %dn.0.i.i to i64, !dbg !1160
  %call.i.i = tail call ptr @realloc(ptr noundef %12, i64 noundef %conv.i.i) #12, !dbg !1161
    #dbg_value(ptr %call.i.i, !373, !DIExpression(), !1153)
  %tobool6.not.not.i.i = icmp eq ptr %call.i.i, null, !dbg !1162
  br i1 %tobool6.not.not.i.i, label %return, label %if.end.i.i, !dbg !1163

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %data5.i.i, align 8, !dbg !1164
  store i32 %dn.0.i.i, ptr %d_max.i.i, align 4, !dbg !1165
  %.pre34.i.i = load i32, ptr %d_cur.i.i, align 8, !dbg !1166
  br label %mk_append_context_data.exit.i

mk_append_context_data.exit.i:                    ; preds = %if.end.i.i, %entry.if.end11_crit_edge.i.i
  %13 = phi i32 [ %10, %entry.if.end11_crit_edge.i.i ], [ %.pre34.i.i, %if.end.i.i ], !dbg !1166
  %14 = phi ptr [ %.pre.i.i, %entry.if.end11_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ], !dbg !1151
  %idx.ext.i.i = zext i32 %13 to i64, !dbg !1167
  %add.ptr.i.i = getelementptr inbounds i8, ptr %14, i64 %idx.ext.i.i, !dbg !1167
  %conv14.i.i = zext i32 %7 to i64, !dbg !1168
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i.i, ptr readonly align 1 %9, i64 %conv14.i.i, i1 false), !dbg !1169
  store i32 %add.i.i, ptr %d_cur.i.i, align 8, !dbg !1170
  br label %if.end14.i, !dbg !1171

if.else.i:                                        ; preds = %if.end.i
  %conv.i = zext i32 %7 to i64, !dbg !1172
  %owner.i = getelementptr inbounds i8, ptr %c, i64 24, !dbg !1174
  %15 = load ptr, ptr %owner.i, align 8, !dbg !1174
  %16 = load ptr, ptr %15, align 8, !dbg !1175
  %call9.i = tail call i64 @fwrite(ptr noundef %9, i64 noundef %conv.i, i64 noundef 1, ptr noundef %16), !dbg !1176
  %cmp10.not.i = icmp eq i64 %call9.i, 1, !dbg !1177
  br i1 %cmp10.not.i, label %if.end14.i, label %return, !dbg !1178

if.end14.i:                                       ; preds = %if.else.i, %mk_append_context_data.exit.i
  store i32 0, ptr %d_cur.i, align 8, !dbg !1179
  br label %do.end23, !dbg !1180

do.end23:                                         ; preds = %if.end14.i, %do.body18
  %17 = load ptr, ptr %c, align 8, !dbg !1181
  %tobool24.not = icmp eq ptr %17, null, !dbg !1183
  %prev30.phi.trans.insert = getelementptr inbounds i8, ptr %c, i64 8
  %.pre55 = load ptr, ptr %prev30.phi.trans.insert, align 8, !dbg !1103
  br i1 %tobool24.not, label %if.end28, label %if.then25, !dbg !1184

if.then25:                                        ; preds = %do.end23
  %prev27 = getelementptr inbounds i8, ptr %17, i64 8, !dbg !1185
  store ptr %.pre55, ptr %prev27, align 8, !dbg !1186
  %.pre = load ptr, ptr %c, align 8, !dbg !1187
  br label %if.end28, !dbg !1188

if.end28:                                         ; preds = %do.end23, %if.then25
  %18 = phi ptr [ %.pre, %if.then25 ], [ null, %do.end23 ], !dbg !1187
  store ptr %18, ptr %.pre55, align 8, !dbg !1189
  %owner = getelementptr inbounds i8, ptr %c, i64 24, !dbg !1190
  %19 = load ptr, ptr %owner, align 8, !dbg !1190
  %freelist = getelementptr inbounds i8, ptr %19, i64 40, !dbg !1191
  %20 = load ptr, ptr %freelist, align 8, !dbg !1191
  store ptr %20, ptr %c, align 8, !dbg !1192
  store ptr %c, ptr %freelist, align 8, !dbg !1193
  br label %return, !dbg !1194

return:                                           ; preds = %while.end.i.i, %if.else.i, %do.body3, %do.body, %if.end28
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -1, %do.body ], [ -1, %do.body3 ], [ -1, %if.else.i ], [ -1, %while.end.i.i ], !dbg !1103
  ret i32 %retval.0, !dbg !1195
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @mk_flush_context_id(ptr nocapture noundef %c) unnamed_addr #0 !dbg !1196 {
entry:
    #dbg_value(ptr %c, !1198, !DIExpression(), !1200)
    #dbg_value(i8 -1, !1199, !DIExpression(), !1200)
  %id = getelementptr inbounds i8, ptr %c, i64 32, !dbg !1201
  %0 = load i32, ptr %id, align 8, !dbg !1201
  %tobool.not = icmp eq i32 %0, 0, !dbg !1203
  br i1 %tobool.not, label %cleanup, label %do.body, !dbg !1204

do.body:                                          ; preds = %entry
  %parent = getelementptr inbounds i8, ptr %c, i64 16, !dbg !1205
  %1 = load ptr, ptr %parent, align 8, !dbg !1205
  %call = tail call fastcc i32 @mk_write_id(ptr noundef %1, i32 noundef %0), !dbg !1205
  %cmp = icmp slt i32 %call, 0, !dbg !1205
  br i1 %cmp, label %cleanup, label %do.body4, !dbg !1208

do.body4:                                         ; preds = %do.body
  %2 = load ptr, ptr %parent, align 8, !dbg !1209
    #dbg_value(ptr %2, !369, !DIExpression(), !1212)
    #dbg_value(ptr undef, !370, !DIExpression(), !1212)
    #dbg_value(i32 1, !371, !DIExpression(), !1212)
  %d_cur.i = getelementptr inbounds i8, ptr %2, i64 48, !dbg !1214
  %3 = load i32, ptr %d_cur.i, align 8, !dbg !1214
  %add.i = add i32 %3, 1, !dbg !1215
    #dbg_value(i32 %add.i, !372, !DIExpression(), !1212)
  %d_max.i = getelementptr inbounds i8, ptr %2, i64 52, !dbg !1216
  %4 = load i32, ptr %d_max.i, align 4, !dbg !1216
  %cmp.i = icmp ugt i32 %add.i, %4, !dbg !1217
  br i1 %cmp.i, label %if.then.i, label %entry.if.end11_crit_edge.i, !dbg !1218

entry.if.end11_crit_edge.i:                       ; preds = %do.body4
  %data12.phi.trans.insert.i = getelementptr inbounds i8, ptr %2, i64 40
  %.pre.i = load ptr, ptr %data12.phi.trans.insert.i, align 8, !dbg !1219
  br label %do.end11, !dbg !1218

if.then.i:                                        ; preds = %do.body4
  %tobool.not.i = icmp eq i32 %4, 0, !dbg !1220
  %shl.i = shl i32 %4, 1
  %spec.select.i = select i1 %tobool.not.i, i32 16, i32 %shl.i, !dbg !1220
    #dbg_value(i32 %spec.select.i, !375, !DIExpression(), !1221)
  br label %while.cond.i, !dbg !1222

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i ], [ %shl4.i, %while.cond.i ], !dbg !1221
    #dbg_value(i32 %dn.0.i, !375, !DIExpression(), !1221)
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i, !dbg !1223
  %shl4.i = shl i32 %dn.0.i, 1, !dbg !1224
    #dbg_value(i32 %shl4.i, !375, !DIExpression(), !1221)
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i, !dbg !1222, !llvm.loop !1225

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds i8, ptr %2, i64 40, !dbg !1227
  %5 = load ptr, ptr %data5.i, align 8, !dbg !1227
  %conv.i = zext i32 %dn.0.i to i64, !dbg !1228
  %call.i = tail call ptr @realloc(ptr noundef %5, i64 noundef %conv.i) #12, !dbg !1229
    #dbg_value(ptr %call.i, !373, !DIExpression(), !1221)
  %tobool6.not.not.i = icmp eq ptr %call.i, null, !dbg !1230
  br i1 %tobool6.not.not.i, label %cleanup, label %if.end.i, !dbg !1231

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %data5.i, align 8, !dbg !1232
  store i32 %dn.0.i, ptr %d_max.i, align 4, !dbg !1233
  %.pre34.i = load i32, ptr %d_cur.i, align 8, !dbg !1234
  br label %do.end11

do.end11:                                         ; preds = %if.end.i, %entry.if.end11_crit_edge.i
  %6 = phi i32 [ %3, %entry.if.end11_crit_edge.i ], [ %.pre34.i, %if.end.i ], !dbg !1234
  %7 = phi ptr [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i ], !dbg !1219
  %idx.ext.i = zext i32 %6 to i64, !dbg !1235
  %add.ptr.i = getelementptr inbounds i8, ptr %7, i64 %idx.ext.i, !dbg !1235
  store i8 -1, ptr %add.ptr.i, align 1, !dbg !1236
  store i32 %add.i, ptr %d_cur.i, align 8, !dbg !1237
  store i32 0, ptr %id, align 8, !dbg !1238
  br label %cleanup, !dbg !1239

cleanup:                                          ; preds = %while.end.i, %do.body, %entry, %do.end11
  %retval.0 = phi i32 [ 0, %do.end11 ], [ 0, %entry ], [ -1, %do.body ], [ -1, %while.end.i ], !dbg !1200
  ret i32 %retval.0, !dbg !1240
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @mk_write_float(ptr nocapture noundef %c) unnamed_addr #0 !dbg !1241 {
entry:
    #dbg_value(ptr %c, !1245, !DIExpression(), !1248)
    #dbg_value(i32 17545, !1246, !DIExpression(), !1248)
    #dbg_value(float 0.000000e+00, !1247, !DIExpression(), !1248)
    #dbg_value(ptr %c, !349, !DIExpression(), !1249)
    #dbg_value(i32 17545, !354, !DIExpression(), !1249)
    #dbg_value(i8 0, !355, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1249)
    #dbg_value(i8 0, !355, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1249)
    #dbg_value(i8 68, !355, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !1249)
    #dbg_value(i8 -119, !355, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !1249)
  %d_max.i86.i = getelementptr inbounds i8, ptr %c, i64 52, !dbg !1253
  %0 = load i32, ptr %d_max.i86.i, align 4, !dbg !1253
    #dbg_value(ptr %c, !369, !DIExpression(), !1255)
    #dbg_value(ptr %c, !369, !DIExpression(), !1257)
    #dbg_value(ptr undef, !370, !DIExpression(), !1255)
    #dbg_value(ptr undef, !370, !DIExpression(), !1257)
  %d_cur.i84.i = getelementptr inbounds i8, ptr %c, i64 48, !dbg !1259
  %1 = load i32, ptr %d_cur.i84.i, align 8, !dbg !1259
    #dbg_value(i32 2, !371, !DIExpression(), !1257)
  %add.i58.i = add i32 %1, 2, !dbg !1260
    #dbg_value(i32 %add.i58.i, !372, !DIExpression(), !1257)
  %cmp.i60.i = icmp ugt i32 %add.i58.i, %0, !dbg !1261
  br i1 %cmp.i60.i, label %if.then.i68.i, label %entry.if.end11_crit_edge.i61.i, !dbg !1262

entry.if.end11_crit_edge.i61.i:                   ; preds = %entry
  %data12.phi.trans.insert.i62.i = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i63.i = load ptr, ptr %data12.phi.trans.insert.i62.i, align 8, !dbg !1263
  br label %do.body1, !dbg !1262

if.then.i68.i:                                    ; preds = %entry
  %tobool.not.i69.i = icmp eq i32 %0, 0, !dbg !1264
  %shl.i70.i = shl i32 %0, 1
  %spec.select.i71.i = select i1 %tobool.not.i69.i, i32 16, i32 %shl.i70.i, !dbg !1264
    #dbg_value(i32 %spec.select.i71.i, !375, !DIExpression(), !1265)
  br label %while.cond.i72.i, !dbg !1266

while.cond.i72.i:                                 ; preds = %while.cond.i72.i, %if.then.i68.i
  %dn.0.i73.i = phi i32 [ %spec.select.i71.i, %if.then.i68.i ], [ %shl4.i75.i, %while.cond.i72.i ], !dbg !1265
    #dbg_value(i32 %dn.0.i73.i, !375, !DIExpression(), !1265)
  %cmp3.i74.i = icmp ugt i32 %add.i58.i, %dn.0.i73.i, !dbg !1267
  %shl4.i75.i = shl i32 %dn.0.i73.i, 1, !dbg !1268
    #dbg_value(i32 %shl4.i75.i, !375, !DIExpression(), !1265)
  br i1 %cmp3.i74.i, label %while.cond.i72.i, label %while.end.i76.i, !dbg !1266, !llvm.loop !1269

while.end.i76.i:                                  ; preds = %while.cond.i72.i
  %data5.i77.i = getelementptr inbounds i8, ptr %c, i64 40, !dbg !1271
  %2 = load ptr, ptr %data5.i77.i, align 8, !dbg !1271
  %conv.i78.i = zext i32 %dn.0.i73.i to i64, !dbg !1272
  %call.i79.i = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv.i78.i) #12, !dbg !1273
    #dbg_value(ptr %call.i79.i, !373, !DIExpression(), !1265)
  %tobool6.not.not.i80.i = icmp eq ptr %call.i79.i, null, !dbg !1274
  br i1 %tobool6.not.not.i80.i, label %return, label %if.end.i81.i, !dbg !1275

if.end.i81.i:                                     ; preds = %while.end.i76.i
  store ptr %call.i79.i, ptr %data5.i77.i, align 8, !dbg !1276
  store i32 %dn.0.i73.i, ptr %d_max.i86.i, align 4, !dbg !1277
  %.pre34.i82.i = load i32, ptr %d_cur.i84.i, align 8, !dbg !1278
  br label %do.body1

do.body1:                                         ; preds = %if.end.i81.i, %entry.if.end11_crit_edge.i61.i
  %3 = phi i32 [ %1, %entry.if.end11_crit_edge.i61.i ], [ %.pre34.i82.i, %if.end.i81.i ], !dbg !1278
  %4 = phi ptr [ %.pre.i63.i, %entry.if.end11_crit_edge.i61.i ], [ %call.i79.i, %if.end.i81.i ], !dbg !1263
  %idx.ext.i65.i = zext i32 %3 to i64, !dbg !1279
  %add.ptr.i66.i = getelementptr inbounds i8, ptr %4, i64 %idx.ext.i65.i, !dbg !1279
  store i8 68, ptr %add.ptr.i66.i, align 1, !dbg !1280
  %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i66.i, i64 1, !dbg !1280
  store i8 -119, ptr %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i, align 1, !dbg !1280
  store i32 %add.i58.i, ptr %d_cur.i84.i, align 8, !dbg !1281
    #dbg_value(ptr %c, !406, !DIExpression(), !1282)
    #dbg_value(i32 4, !409, !DIExpression(), !1282)
    #dbg_value(i8 8, !410, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1282)
    #dbg_value(i8 0, !410, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1282)
    #dbg_value(i8 0, !410, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !1282)
    #dbg_value(i8 0, !410, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !1282)
    #dbg_value(i8 -124, !410, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !1282)
    #dbg_value(ptr %c, !369, !DIExpression(), !1286)
    #dbg_value(ptr undef, !370, !DIExpression(), !1286)
    #dbg_value(i32 1, !371, !DIExpression(), !1286)
  %add.i.i = add i32 %1, 3, !dbg !1288
    #dbg_value(i32 %add.i.i, !372, !DIExpression(), !1286)
  %5 = load i32, ptr %d_max.i86.i, align 4, !dbg !1289
  %cmp.i.i = icmp ugt i32 %add.i.i, %5, !dbg !1290
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end11_crit_edge.i.i, !dbg !1291

entry.if.end11_crit_edge.i.i:                     ; preds = %do.body1
  %data12.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i.i = load ptr, ptr %data12.phi.trans.insert.i.i, align 8, !dbg !1292
  br label %do.body7, !dbg !1291

if.then.i.i:                                      ; preds = %do.body1
  %tobool.not.i.i = icmp eq i32 %5, 0, !dbg !1293
  %shl.i.i = shl i32 %5, 1
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 16, i32 %shl.i.i, !dbg !1293
    #dbg_value(i32 %spec.select.i.i, !375, !DIExpression(), !1294)
  br label %while.cond.i.i, !dbg !1295

while.cond.i.i:                                   ; preds = %while.cond.i.i, %if.then.i.i
  %dn.0.i.i = phi i32 [ %spec.select.i.i, %if.then.i.i ], [ %shl4.i.i, %while.cond.i.i ], !dbg !1294
    #dbg_value(i32 %dn.0.i.i, !375, !DIExpression(), !1294)
  %cmp3.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i, !dbg !1296
  %shl4.i.i = shl i32 %dn.0.i.i, 1, !dbg !1297
    #dbg_value(i32 %shl4.i.i, !375, !DIExpression(), !1294)
  br i1 %cmp3.i.i, label %while.cond.i.i, label %while.end.i.i, !dbg !1295, !llvm.loop !1298

while.end.i.i:                                    ; preds = %while.cond.i.i
  %data5.i.i = getelementptr inbounds i8, ptr %c, i64 40, !dbg !1300
  %6 = load ptr, ptr %data5.i.i, align 8, !dbg !1300
  %conv.i.i = zext i32 %dn.0.i.i to i64, !dbg !1301
  %call.i.i = tail call ptr @realloc(ptr noundef %6, i64 noundef %conv.i.i) #12, !dbg !1302
    #dbg_value(ptr %call.i.i, !373, !DIExpression(), !1294)
  %tobool6.not.not.i.i = icmp eq ptr %call.i.i, null, !dbg !1303
  br i1 %tobool6.not.not.i.i, label %return, label %if.end.i.i, !dbg !1304

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %data5.i.i, align 8, !dbg !1305
  store i32 %dn.0.i.i, ptr %d_max.i86.i, align 4, !dbg !1306
  %.pre34.i.i = load i32, ptr %d_cur.i84.i, align 8, !dbg !1307
  br label %do.body7

do.body7:                                         ; preds = %if.end.i.i, %entry.if.end11_crit_edge.i.i
  %7 = phi i32 [ %add.i58.i, %entry.if.end11_crit_edge.i.i ], [ %.pre34.i.i, %if.end.i.i ], !dbg !1307
  %8 = phi ptr [ %.pre.i.i, %entry.if.end11_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ], !dbg !1292
  %idx.ext.i.i = zext i32 %7 to i64, !dbg !1308
  %add.ptr.i.i = getelementptr inbounds i8, ptr %8, i64 %idx.ext.i.i, !dbg !1308
  store i8 -124, ptr %add.ptr.i.i, align 1, !dbg !1309
  store i32 %add.i.i, ptr %d_cur.i84.i, align 8, !dbg !1310
    #dbg_value(ptr %c, !1311, !DIExpression(), !1323)
    #dbg_value(float 0.000000e+00, !1316, !DIExpression(), !1323)
    #dbg_value(float 0.000000e+00, !1317, !DIExpression(), !1323)
    #dbg_value(i8 0, !1322, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1323)
    #dbg_value(i8 0, !1322, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1323)
    #dbg_value(i8 0, !1322, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !1323)
    #dbg_value(i8 0, !1322, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !1323)
    #dbg_value(ptr %c, !369, !DIExpression(), !1327)
    #dbg_value(ptr undef, !370, !DIExpression(), !1327)
    #dbg_value(i32 4, !371, !DIExpression(), !1327)
  %add.i.i17 = add i32 %1, 7, !dbg !1329
    #dbg_value(i32 %add.i.i17, !372, !DIExpression(), !1327)
  %9 = load i32, ptr %d_max.i86.i, align 4, !dbg !1330
  %cmp.i.i19 = icmp ugt i32 %add.i.i17, %9, !dbg !1331
  br i1 %cmp.i.i19, label %if.then.i.i26, label %entry.if.end11_crit_edge.i.i20, !dbg !1332

entry.if.end11_crit_edge.i.i20:                   ; preds = %do.body7
  %data12.phi.trans.insert.i.i21 = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i.i22 = load ptr, ptr %data12.phi.trans.insert.i.i21, align 8, !dbg !1333
  br label %mk_write_float_raw.exit, !dbg !1332

if.then.i.i26:                                    ; preds = %do.body7
  %tobool.not.i.i27 = icmp eq i32 %9, 0, !dbg !1334
  %shl.i.i28 = shl i32 %9, 1
  %spec.select.i.i29 = select i1 %tobool.not.i.i27, i32 16, i32 %shl.i.i28, !dbg !1334
    #dbg_value(i32 %spec.select.i.i29, !375, !DIExpression(), !1335)
  br label %while.cond.i.i30, !dbg !1336

while.cond.i.i30:                                 ; preds = %while.cond.i.i30, %if.then.i.i26
  %dn.0.i.i31 = phi i32 [ %spec.select.i.i29, %if.then.i.i26 ], [ %shl4.i.i33, %while.cond.i.i30 ], !dbg !1335
    #dbg_value(i32 %dn.0.i.i31, !375, !DIExpression(), !1335)
  %cmp3.i.i32 = icmp ugt i32 %add.i.i17, %dn.0.i.i31, !dbg !1337
  %shl4.i.i33 = shl i32 %dn.0.i.i31, 1, !dbg !1338
    #dbg_value(i32 %shl4.i.i33, !375, !DIExpression(), !1335)
  br i1 %cmp3.i.i32, label %while.cond.i.i30, label %while.end.i.i34, !dbg !1336, !llvm.loop !1339

while.end.i.i34:                                  ; preds = %while.cond.i.i30
  %data5.i.i35 = getelementptr inbounds i8, ptr %c, i64 40, !dbg !1341
  %10 = load ptr, ptr %data5.i.i35, align 8, !dbg !1341
  %conv.i.i36 = zext i32 %dn.0.i.i31 to i64, !dbg !1342
  %call.i.i37 = tail call ptr @realloc(ptr noundef %10, i64 noundef %conv.i.i36) #12, !dbg !1343
    #dbg_value(ptr %call.i.i37, !373, !DIExpression(), !1335)
  %tobool6.not.not.i.i38 = icmp eq ptr %call.i.i37, null, !dbg !1344
  br i1 %tobool6.not.not.i.i38, label %return, label %if.end.i.i39, !dbg !1345

if.end.i.i39:                                     ; preds = %while.end.i.i34
  store ptr %call.i.i37, ptr %data5.i.i35, align 8, !dbg !1346
  store i32 %dn.0.i.i31, ptr %d_max.i86.i, align 4, !dbg !1347
  %.pre34.i.i40 = load i32, ptr %d_cur.i84.i, align 8, !dbg !1348
  br label %mk_write_float_raw.exit

mk_write_float_raw.exit:                          ; preds = %entry.if.end11_crit_edge.i.i20, %if.end.i.i39
  %11 = phi i32 [ %add.i.i, %entry.if.end11_crit_edge.i.i20 ], [ %.pre34.i.i40, %if.end.i.i39 ], !dbg !1348
  %12 = phi ptr [ %.pre.i.i22, %entry.if.end11_crit_edge.i.i20 ], [ %call.i.i37, %if.end.i.i39 ], !dbg !1333
  %idx.ext.i.i24 = zext i32 %11 to i64, !dbg !1349
  %add.ptr.i.i25 = getelementptr inbounds i8, ptr %12, i64 %idx.ext.i.i24, !dbg !1349
  store i32 0, ptr %add.ptr.i.i25, align 1, !dbg !1350
  store i32 %add.i.i17, ptr %d_cur.i84.i, align 8, !dbg !1351
  br label %return, !dbg !1248

return:                                           ; preds = %while.end.i.i, %while.end.i76.i, %mk_write_float_raw.exit, %while.end.i.i34
  %retval.0 = phi i32 [ 0, %mk_write_float_raw.exit ], [ -1, %while.end.i.i34 ], [ -1, %while.end.i76.i ], [ -1, %while.end.i.i ], !dbg !1248
  ret i32 %retval.0, !dbg !1352
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @mk_write_bin(ptr nocapture noundef %c, ptr nocapture noundef readonly %data, i32 noundef %size) unnamed_addr #0 !dbg !1353 {
entry:
    #dbg_value(ptr %c, !1357, !DIExpression(), !1361)
    #dbg_value(i32 25506, !1358, !DIExpression(), !1361)
    #dbg_value(ptr %data, !1359, !DIExpression(), !1361)
    #dbg_value(i32 %size, !1360, !DIExpression(), !1361)
    #dbg_value(ptr %c, !349, !DIExpression(), !1362)
    #dbg_value(i32 25506, !354, !DIExpression(), !1362)
    #dbg_value(i8 0, !355, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1362)
    #dbg_value(i8 0, !355, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1362)
    #dbg_value(i8 99, !355, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !1362)
    #dbg_value(i8 -94, !355, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !1362)
  %d_max.i86.i = getelementptr inbounds i8, ptr %c, i64 52, !dbg !1366
  %0 = load i32, ptr %d_max.i86.i, align 4, !dbg !1366
    #dbg_value(ptr %c, !369, !DIExpression(), !1368)
    #dbg_value(ptr %c, !369, !DIExpression(), !1370)
    #dbg_value(ptr undef, !370, !DIExpression(), !1368)
    #dbg_value(ptr undef, !370, !DIExpression(), !1370)
  %d_cur.i84.i = getelementptr inbounds i8, ptr %c, i64 48, !dbg !1372
  %1 = load i32, ptr %d_cur.i84.i, align 8, !dbg !1372
    #dbg_value(i32 2, !371, !DIExpression(), !1370)
  %add.i58.i = add i32 %1, 2, !dbg !1373
    #dbg_value(i32 %add.i58.i, !372, !DIExpression(), !1370)
  %cmp.i60.i = icmp ugt i32 %add.i58.i, %0, !dbg !1374
  br i1 %cmp.i60.i, label %if.then.i68.i, label %entry.if.end11_crit_edge.i61.i, !dbg !1375

entry.if.end11_crit_edge.i61.i:                   ; preds = %entry
  %data12.phi.trans.insert.i62.i = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i63.i = load ptr, ptr %data12.phi.trans.insert.i62.i, align 8, !dbg !1376
  br label %do.body1, !dbg !1375

if.then.i68.i:                                    ; preds = %entry
  %tobool.not.i69.i = icmp eq i32 %0, 0, !dbg !1377
  %shl.i70.i = shl i32 %0, 1
  %spec.select.i71.i = select i1 %tobool.not.i69.i, i32 16, i32 %shl.i70.i, !dbg !1377
    #dbg_value(i32 %spec.select.i71.i, !375, !DIExpression(), !1378)
  br label %while.cond.i72.i, !dbg !1379

while.cond.i72.i:                                 ; preds = %while.cond.i72.i, %if.then.i68.i
  %dn.0.i73.i = phi i32 [ %spec.select.i71.i, %if.then.i68.i ], [ %shl4.i75.i, %while.cond.i72.i ], !dbg !1378
    #dbg_value(i32 %dn.0.i73.i, !375, !DIExpression(), !1378)
  %cmp3.i74.i = icmp ugt i32 %add.i58.i, %dn.0.i73.i, !dbg !1380
  %shl4.i75.i = shl i32 %dn.0.i73.i, 1, !dbg !1381
    #dbg_value(i32 %shl4.i75.i, !375, !DIExpression(), !1378)
  br i1 %cmp3.i74.i, label %while.cond.i72.i, label %while.end.i76.i, !dbg !1379, !llvm.loop !1382

while.end.i76.i:                                  ; preds = %while.cond.i72.i
  %data5.i77.i = getelementptr inbounds i8, ptr %c, i64 40, !dbg !1384
  %2 = load ptr, ptr %data5.i77.i, align 8, !dbg !1384
  %conv.i78.i = zext i32 %dn.0.i73.i to i64, !dbg !1385
  %call.i79.i = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv.i78.i) #12, !dbg !1386
    #dbg_value(ptr %call.i79.i, !373, !DIExpression(), !1378)
  %tobool6.not.not.i80.i = icmp eq ptr %call.i79.i, null, !dbg !1387
  br i1 %tobool6.not.not.i80.i, label %return, label %if.end.i81.i, !dbg !1388

if.end.i81.i:                                     ; preds = %while.end.i76.i
  store ptr %call.i79.i, ptr %data5.i77.i, align 8, !dbg !1389
  store i32 %dn.0.i73.i, ptr %d_max.i86.i, align 4, !dbg !1390
  %.pre34.i82.i = load i32, ptr %d_cur.i84.i, align 8, !dbg !1391
  br label %do.body1

do.body1:                                         ; preds = %if.end.i81.i, %entry.if.end11_crit_edge.i61.i
  %3 = phi i32 [ %1, %entry.if.end11_crit_edge.i61.i ], [ %.pre34.i82.i, %if.end.i81.i ], !dbg !1391
  %4 = phi ptr [ %.pre.i63.i, %entry.if.end11_crit_edge.i61.i ], [ %call.i79.i, %if.end.i81.i ], !dbg !1376
  %idx.ext.i65.i = zext i32 %3 to i64, !dbg !1392
  %add.ptr.i66.i = getelementptr inbounds i8, ptr %4, i64 %idx.ext.i65.i, !dbg !1392
  store i8 99, ptr %add.ptr.i66.i, align 1, !dbg !1393
  %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i66.i, i64 1, !dbg !1393
  store i8 -94, ptr %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i, align 1, !dbg !1393
  store i32 %add.i58.i, ptr %d_cur.i84.i, align 8, !dbg !1394
  %call2 = tail call fastcc i32 @mk_write_size(ptr noundef nonnull %c, i32 noundef %size), !dbg !1395
  %cmp3 = icmp slt i32 %call2, 0, !dbg !1395
  br i1 %cmp3, label %return, label %do.body7, !dbg !1398

do.body7:                                         ; preds = %do.body1
    #dbg_value(ptr %c, !369, !DIExpression(), !1399)
    #dbg_value(ptr %data, !370, !DIExpression(), !1399)
    #dbg_value(i32 %size, !371, !DIExpression(), !1399)
  %5 = load i32, ptr %d_cur.i84.i, align 8, !dbg !1403
  %add.i = add i32 %5, %size, !dbg !1404
    #dbg_value(i32 %add.i, !372, !DIExpression(), !1399)
  %6 = load i32, ptr %d_max.i86.i, align 4, !dbg !1405
  %cmp.i = icmp ugt i32 %add.i, %6, !dbg !1406
  br i1 %cmp.i, label %if.then.i, label %entry.if.end11_crit_edge.i, !dbg !1407

entry.if.end11_crit_edge.i:                       ; preds = %do.body7
  %data12.phi.trans.insert.i = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i = load ptr, ptr %data12.phi.trans.insert.i, align 8, !dbg !1408
  br label %mk_append_context_data.exit, !dbg !1407

if.then.i:                                        ; preds = %do.body7
  %tobool.not.i = icmp eq i32 %6, 0, !dbg !1409
  %shl.i = shl i32 %6, 1
  %spec.select.i = select i1 %tobool.not.i, i32 16, i32 %shl.i, !dbg !1409
    #dbg_value(i32 %spec.select.i, !375, !DIExpression(), !1410)
  br label %while.cond.i, !dbg !1411

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i ], [ %shl4.i, %while.cond.i ], !dbg !1410
    #dbg_value(i32 %dn.0.i, !375, !DIExpression(), !1410)
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i, !dbg !1412
  %shl4.i = shl i32 %dn.0.i, 1, !dbg !1413
    #dbg_value(i32 %shl4.i, !375, !DIExpression(), !1410)
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i, !dbg !1411, !llvm.loop !1414

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds i8, ptr %c, i64 40, !dbg !1416
  %7 = load ptr, ptr %data5.i, align 8, !dbg !1416
  %conv.i = zext i32 %dn.0.i to i64, !dbg !1417
  %call.i = tail call ptr @realloc(ptr noundef %7, i64 noundef %conv.i) #12, !dbg !1418
    #dbg_value(ptr %call.i, !373, !DIExpression(), !1410)
  %tobool6.not.not.i = icmp eq ptr %call.i, null, !dbg !1419
  br i1 %tobool6.not.not.i, label %return, label %if.end.i, !dbg !1420

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %data5.i, align 8, !dbg !1421
  store i32 %dn.0.i, ptr %d_max.i86.i, align 4, !dbg !1422
  %.pre34.i = load i32, ptr %d_cur.i84.i, align 8, !dbg !1423
  br label %mk_append_context_data.exit

mk_append_context_data.exit:                      ; preds = %entry.if.end11_crit_edge.i, %if.end.i
  %8 = phi i32 [ %5, %entry.if.end11_crit_edge.i ], [ %.pre34.i, %if.end.i ], !dbg !1423
  %9 = phi ptr [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i ], !dbg !1408
  %idx.ext.i = zext i32 %8 to i64, !dbg !1424
  %add.ptr.i = getelementptr inbounds i8, ptr %9, i64 %idx.ext.i, !dbg !1424
  %conv14.i = zext i32 %size to i64, !dbg !1425
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i, ptr readonly align 1 %data, i64 %conv14.i, i1 false), !dbg !1426
  store i32 %add.i, ptr %d_cur.i84.i, align 8, !dbg !1427
  br label %return, !dbg !1361

return:                                           ; preds = %while.end.i76.i, %mk_append_context_data.exit, %while.end.i, %do.body1
  %retval.0 = phi i32 [ -1, %do.body1 ], [ 0, %mk_append_context_data.exit ], [ -1, %while.end.i ], [ -1, %while.end.i76.i ], !dbg !1361
  ret i32 %retval.0, !dbg !1428
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @mk_flush_context_data(ptr nocapture noundef %c) unnamed_addr #0 !dbg !1125 {
entry:
    #dbg_value(ptr %c, !1124, !DIExpression(), !1429)
  %d_cur = getelementptr inbounds i8, ptr %c, i64 48, !dbg !1430
  %0 = load i32, ptr %d_cur, align 8, !dbg !1430
  %tobool.not = icmp eq i32 %0, 0, !dbg !1431
  br i1 %tobool.not, label %return, label %if.end, !dbg !1432

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds i8, ptr %c, i64 16, !dbg !1433
  %1 = load ptr, ptr %parent, align 8, !dbg !1433
  %tobool1.not = icmp eq ptr %1, null, !dbg !1434
  %data7 = getelementptr inbounds i8, ptr %c, i64 40, !dbg !1435
  %2 = load ptr, ptr %data7, align 8, !dbg !1435
  br i1 %tobool1.not, label %if.else, label %do.body, !dbg !1436

do.body:                                          ; preds = %if.end
    #dbg_value(ptr %1, !369, !DIExpression(), !1437)
    #dbg_value(ptr %2, !370, !DIExpression(), !1437)
    #dbg_value(i32 %0, !371, !DIExpression(), !1437)
  %d_cur.i = getelementptr inbounds i8, ptr %1, i64 48, !dbg !1439
  %3 = load i32, ptr %d_cur.i, align 8, !dbg !1439
  %add.i = add i32 %3, %0, !dbg !1440
    #dbg_value(i32 %add.i, !372, !DIExpression(), !1437)
  %d_max.i = getelementptr inbounds i8, ptr %1, i64 52, !dbg !1441
  %4 = load i32, ptr %d_max.i, align 4, !dbg !1441
  %cmp.i = icmp ugt i32 %add.i, %4, !dbg !1442
  br i1 %cmp.i, label %if.then.i, label %entry.if.end11_crit_edge.i, !dbg !1443

entry.if.end11_crit_edge.i:                       ; preds = %do.body
  %data12.phi.trans.insert.i = getelementptr inbounds i8, ptr %1, i64 40
  %.pre.i = load ptr, ptr %data12.phi.trans.insert.i, align 8, !dbg !1444
  br label %mk_append_context_data.exit, !dbg !1443

if.then.i:                                        ; preds = %do.body
  %tobool.not.i = icmp eq i32 %4, 0, !dbg !1445
  %shl.i = shl i32 %4, 1
  %spec.select.i = select i1 %tobool.not.i, i32 16, i32 %shl.i, !dbg !1445
    #dbg_value(i32 %spec.select.i, !375, !DIExpression(), !1446)
  br label %while.cond.i, !dbg !1447

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i ], [ %shl4.i, %while.cond.i ], !dbg !1446
    #dbg_value(i32 %dn.0.i, !375, !DIExpression(), !1446)
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i, !dbg !1448
  %shl4.i = shl i32 %dn.0.i, 1, !dbg !1449
    #dbg_value(i32 %shl4.i, !375, !DIExpression(), !1446)
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i, !dbg !1447, !llvm.loop !1450

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds i8, ptr %1, i64 40, !dbg !1452
  %5 = load ptr, ptr %data5.i, align 8, !dbg !1452
  %conv.i = zext i32 %dn.0.i to i64, !dbg !1453
  %call.i = tail call ptr @realloc(ptr noundef %5, i64 noundef %conv.i) #12, !dbg !1454
    #dbg_value(ptr %call.i, !373, !DIExpression(), !1446)
  %tobool6.not.not.i = icmp eq ptr %call.i, null, !dbg !1455
  br i1 %tobool6.not.not.i, label %return, label %if.end.i, !dbg !1456

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %data5.i, align 8, !dbg !1457
  store i32 %dn.0.i, ptr %d_max.i, align 4, !dbg !1458
  %.pre34.i = load i32, ptr %d_cur.i, align 8, !dbg !1459
  br label %mk_append_context_data.exit

mk_append_context_data.exit:                      ; preds = %entry.if.end11_crit_edge.i, %if.end.i
  %6 = phi i32 [ %3, %entry.if.end11_crit_edge.i ], [ %.pre34.i, %if.end.i ], !dbg !1459
  %7 = phi ptr [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i ], !dbg !1444
  %idx.ext.i = zext i32 %6 to i64, !dbg !1460
  %add.ptr.i = getelementptr inbounds i8, ptr %7, i64 %idx.ext.i, !dbg !1460
  %conv14.i = zext i32 %0 to i64, !dbg !1461
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i, ptr readonly align 1 %2, i64 %conv14.i, i1 false), !dbg !1462
  store i32 %add.i, ptr %d_cur.i, align 8, !dbg !1463
  br label %if.end14, !dbg !1464

if.else:                                          ; preds = %if.end
  %conv = zext i32 %0 to i64, !dbg !1465
  %owner = getelementptr inbounds i8, ptr %c, i64 24, !dbg !1466
  %8 = load ptr, ptr %owner, align 8, !dbg !1466
  %9 = load ptr, ptr %8, align 8, !dbg !1467
  %call9 = tail call i64 @fwrite(ptr noundef %2, i64 noundef %conv, i64 noundef 1, ptr noundef %9), !dbg !1468
  %cmp10.not = icmp eq i64 %call9, 1, !dbg !1469
  br i1 %cmp10.not, label %if.end14, label %return, !dbg !1470

if.end14:                                         ; preds = %mk_append_context_data.exit, %if.else
  store i32 0, ptr %d_cur, align 8, !dbg !1471
  br label %return, !dbg !1472

return:                                           ; preds = %while.end.i, %if.else, %entry, %if.end14
  %retval.0 = phi i32 [ 0, %if.end14 ], [ 0, %entry ], [ -1, %if.else ], [ -1, %while.end.i ], !dbg !1429
  ret i32 %retval.0, !dbg !1473
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @mk_start_frame(ptr noundef %w) local_unnamed_addr #0 !dbg !1474 {
entry:
    #dbg_value(ptr %w, !1478, !DIExpression(), !1479)
  %call = tail call fastcc i32 @mk_flush_frame(ptr noundef %w), !dbg !1480
  %cmp = icmp slt i32 %call, 0, !dbg !1482
  br i1 %cmp, label %return, label %if.end, !dbg !1483

if.end:                                           ; preds = %entry
  %in_frame = getelementptr inbounds i8, ptr %w, i64 97, !dbg !1484
  store i8 1, ptr %in_frame, align 1, !dbg !1485
  %keyframe = getelementptr inbounds i8, ptr %w, i64 98, !dbg !1486
  store i8 0, ptr %keyframe, align 2, !dbg !1487
  %skippable = getelementptr inbounds i8, ptr %w, i64 99, !dbg !1488
  store i8 0, ptr %skippable, align 1, !dbg !1489
  br label %return, !dbg !1490

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry ], !dbg !1479
  ret i32 %retval.0, !dbg !1491
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @mk_flush_frame(ptr noundef %w) unnamed_addr #0 !dbg !1492 {
entry:
    #dbg_value(ptr %w, !1494, !DIExpression(), !1499)
  %in_frame = getelementptr inbounds i8, ptr %w, i64 97, !dbg !1500
  %0 = load i8, ptr %in_frame, align 1, !dbg !1500
  %tobool.not = icmp eq i8 %0, 0, !dbg !1502
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !1503

if.end:                                           ; preds = %entry
  %frame_tc = getelementptr inbounds i8, ptr %w, i64 80, !dbg !1504
  %1 = load i64, ptr %frame_tc, align 8, !dbg !1504
  %timescale = getelementptr inbounds i8, ptr %w, i64 64, !dbg !1505
  %2 = load i64, ptr %timescale, align 8, !dbg !1505
  %div = sdiv i64 %1, %2, !dbg !1506
  %cluster_tc_scaled = getelementptr inbounds i8, ptr %w, i64 72, !dbg !1507
  %3 = load i64, ptr %cluster_tc_scaled, align 8, !dbg !1507
  %sub = sub nsw i64 %div, %3, !dbg !1508
    #dbg_value(i64 %sub, !1495, !DIExpression(), !1499)
  %4 = add i64 %sub, -32768, !dbg !1509
  %or.cond = icmp ult i64 %4, -65536, !dbg !1509
  br i1 %or.cond, label %do.body, label %if.end6, !dbg !1509

do.body:                                          ; preds = %if.end
  %call = tail call fastcc i32 @mk_close_cluster(ptr noundef nonnull %w), !dbg !1511
  %cmp3 = icmp slt i32 %call, 0, !dbg !1511
  br i1 %cmp3, label %cleanup, label %if.end6, !dbg !1514

if.end6:                                          ; preds = %do.body, %if.end
  %cluster = getelementptr inbounds i8, ptr %w, i64 24, !dbg !1515
  %5 = load ptr, ptr %cluster, align 8, !dbg !1515
  %tobool7.not = icmp eq ptr %5, null, !dbg !1517
  br i1 %tobool7.not, label %if.then8, label %if.end28, !dbg !1518

if.then8:                                         ; preds = %if.end6
  %6 = load i64, ptr %frame_tc, align 8, !dbg !1519
  %7 = load i64, ptr %timescale, align 8, !dbg !1521
  %div11 = sdiv i64 %6, %7, !dbg !1522
  store i64 %div11, ptr %cluster_tc_scaled, align 8, !dbg !1523
  %root = getelementptr inbounds i8, ptr %w, i64 16, !dbg !1524
  %8 = load ptr, ptr %root, align 8, !dbg !1524
    #dbg_value(ptr %w, !149, !DIExpression(), !1525)
    #dbg_value(ptr %8, !154, !DIExpression(), !1525)
    #dbg_value(i32 524531317, !155, !DIExpression(), !1525)
  %freelist.i = getelementptr inbounds i8, ptr %w, i64 40, !dbg !1527
  %9 = load ptr, ptr %freelist.i, align 8, !dbg !1527
  %tobool.not.i = icmp eq ptr %9, null, !dbg !1528
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !dbg !1529

if.then.i:                                        ; preds = %if.then8
    #dbg_value(ptr %9, !156, !DIExpression(), !1525)
  %10 = load ptr, ptr %9, align 8, !dbg !1530
  store ptr %10, ptr %freelist.i, align 8, !dbg !1531
  br label %if.end6.i, !dbg !1532

if.else.i:                                        ; preds = %if.then8
  %calloc.i = tail call dereferenceable_or_null(56) ptr @calloc(i64 1, i64 56), !dbg !1533
    #dbg_value(ptr %calloc.i, !156, !DIExpression(), !1525)
  %tobool4.not.i = icmp eq ptr %calloc.i, null, !dbg !1534
  br i1 %tobool4.not.i, label %mk_create_context.exit.thread, label %if.end6.i, !dbg !1535

mk_create_context.exit.thread:                    ; preds = %if.else.i
  store ptr null, ptr %cluster, align 8, !dbg !1536
  br label %cleanup, !dbg !1537

if.end6.i:                                        ; preds = %if.else.i, %if.then.i
  %c.0.i = phi ptr [ %9, %if.then.i ], [ %calloc.i, %if.else.i ], !dbg !1538
    #dbg_value(ptr %c.0.i, !156, !DIExpression(), !1525)
  %parent7.i = getelementptr inbounds i8, ptr %c.0.i, i64 16, !dbg !1539
  store ptr %8, ptr %parent7.i, align 8, !dbg !1540
  %owner.i = getelementptr inbounds i8, ptr %c.0.i, i64 24, !dbg !1541
  store ptr %w, ptr %owner.i, align 8, !dbg !1542
  %id8.i = getelementptr inbounds i8, ptr %c.0.i, i64 32, !dbg !1543
  store i32 524531317, ptr %id8.i, align 8, !dbg !1544
  %actlist.i = getelementptr inbounds i8, ptr %w, i64 48, !dbg !1545
  %11 = load ptr, ptr %actlist.i, align 8, !dbg !1545
  %tobool10.not.i = icmp eq ptr %11, null, !dbg !1546
  br i1 %tobool10.not.i, label %do.body19, label %if.then11.i, !dbg !1547

if.then11.i:                                      ; preds = %if.end6.i
  %prev.i = getelementptr inbounds i8, ptr %11, i64 8, !dbg !1548
  store ptr %c.0.i, ptr %prev.i, align 8, !dbg !1549
  %.pre.i = load ptr, ptr %owner.i, align 8, !dbg !1550
  %actlist17.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 48
  %.pre43.i = load ptr, ptr %actlist17.phi.trans.insert.i, align 8, !dbg !1551
  br label %do.body19, !dbg !1552

do.body19:                                        ; preds = %if.then11.i, %if.end6.i
  %12 = phi ptr [ %.pre43.i, %if.then11.i ], [ null, %if.end6.i ], !dbg !1551
  %13 = phi ptr [ %.pre.i, %if.then11.i ], [ %w, %if.end6.i ], !dbg !1550
  %actlist17.i = getelementptr inbounds i8, ptr %13, i64 48, !dbg !1551
  store ptr %12, ptr %c.0.i, align 8, !dbg !1553
  %prev21.i = getelementptr inbounds i8, ptr %c.0.i, i64 8, !dbg !1554
  store ptr %actlist17.i, ptr %prev21.i, align 8, !dbg !1555
  store ptr %c.0.i, ptr %actlist17.i, align 8, !dbg !1556
  store ptr %c.0.i, ptr %cluster, align 8, !dbg !1536
  %14 = load i64, ptr %cluster_tc_scaled, align 8, !dbg !1557
  %call22 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %c.0.i, i32 noundef 231, i64 noundef %14), !dbg !1557
  %cmp23 = icmp slt i32 %call22, 0, !dbg !1557
  br i1 %cmp23, label %cleanup, label %if.end28, !dbg !1560

if.end28:                                         ; preds = %do.body19, %if.end6
  %delta.0 = phi i64 [ %sub, %if.end6 ], [ 0, %do.body19 ], !dbg !1499
    #dbg_value(i64 %delta.0, !1495, !DIExpression(), !1499)
  %frame = getelementptr inbounds i8, ptr %w, i64 32, !dbg !1561
  %15 = load ptr, ptr %frame, align 8, !dbg !1561
  %tobool29.not = icmp eq ptr %15, null, !dbg !1562
  br i1 %tobool29.not, label %cond.end, label %cond.true, !dbg !1562

cond.true:                                        ; preds = %if.end28
  %d_cur = getelementptr inbounds i8, ptr %15, i64 48, !dbg !1563
  %16 = load i32, ptr %d_cur, align 8, !dbg !1563
  %17 = add i32 %16, 4, !dbg !1564
  br label %cond.end, !dbg !1562

cond.end:                                         ; preds = %if.end28, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ 4, %if.end28 ], !dbg !1562
    #dbg_value(i32 %cond, !1496, !DIExpression(), !1499)
  %18 = load ptr, ptr %cluster, align 8, !dbg !1567
    #dbg_value(ptr %18, !349, !DIExpression(), !1570)
    #dbg_value(i32 163, !354, !DIExpression(), !1570)
    #dbg_value(i8 0, !355, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1570)
    #dbg_value(i8 0, !355, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1570)
    #dbg_value(i8 0, !355, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !1570)
    #dbg_value(i8 -93, !355, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !1570)
  %d_max.i86.i = getelementptr inbounds i8, ptr %18, i64 52, !dbg !1572
  %19 = load i32, ptr %d_max.i86.i, align 4, !dbg !1572
    #dbg_value(ptr %18, !369, !DIExpression(), !1574)
    #dbg_value(ptr %18, !369, !DIExpression(), !1576)
    #dbg_value(ptr undef, !370, !DIExpression(), !1574)
    #dbg_value(ptr undef, !370, !DIExpression(), !1576)
  %d_cur.i84.i = getelementptr inbounds i8, ptr %18, i64 48, !dbg !1578
  %20 = load i32, ptr %d_cur.i84.i, align 8, !dbg !1578
    #dbg_value(i32 1, !371, !DIExpression(), !1574)
  %add.i85.i = add i32 %20, 1, !dbg !1579
    #dbg_value(i32 %add.i85.i, !372, !DIExpression(), !1574)
  %cmp.i87.i = icmp ugt i32 %add.i85.i, %19, !dbg !1580
  br i1 %cmp.i87.i, label %if.then.i95.i, label %entry.if.end11_crit_edge.i88.i, !dbg !1581

entry.if.end11_crit_edge.i88.i:                   ; preds = %cond.end
  %data12.phi.trans.insert.i89.i = getelementptr inbounds i8, ptr %18, i64 40
  %.pre.i90.i = load ptr, ptr %data12.phi.trans.insert.i89.i, align 8, !dbg !1582
  br label %do.body39, !dbg !1581

if.then.i95.i:                                    ; preds = %cond.end
  %tobool.not.i96.i = icmp eq i32 %19, 0, !dbg !1583
  %shl.i97.i = shl i32 %19, 1
  %spec.select.i98.i = select i1 %tobool.not.i96.i, i32 16, i32 %shl.i97.i, !dbg !1583
    #dbg_value(i32 %spec.select.i98.i, !375, !DIExpression(), !1584)
  br label %while.cond.i99.i, !dbg !1585

while.cond.i99.i:                                 ; preds = %while.cond.i99.i, %if.then.i95.i
  %dn.0.i100.i = phi i32 [ %spec.select.i98.i, %if.then.i95.i ], [ %shl4.i102.i, %while.cond.i99.i ], !dbg !1584
    #dbg_value(i32 %dn.0.i100.i, !375, !DIExpression(), !1584)
  %cmp3.i101.i = icmp ugt i32 %add.i85.i, %dn.0.i100.i, !dbg !1586
  %shl4.i102.i = shl i32 %dn.0.i100.i, 1, !dbg !1587
    #dbg_value(i32 %shl4.i102.i, !375, !DIExpression(), !1584)
  br i1 %cmp3.i101.i, label %while.cond.i99.i, label %while.end.i103.i, !dbg !1585, !llvm.loop !1588

while.end.i103.i:                                 ; preds = %while.cond.i99.i
  %data5.i104.i = getelementptr inbounds i8, ptr %18, i64 40, !dbg !1590
  %21 = load ptr, ptr %data5.i104.i, align 8, !dbg !1590
  %conv.i105.i = zext i32 %dn.0.i100.i to i64, !dbg !1591
  %call.i106.i = tail call ptr @realloc(ptr noundef %21, i64 noundef %conv.i105.i) #12, !dbg !1592
    #dbg_value(ptr %call.i106.i, !373, !DIExpression(), !1584)
  %tobool6.not.not.i107.i = icmp eq ptr %call.i106.i, null, !dbg !1593
  br i1 %tobool6.not.not.i107.i, label %cleanup, label %if.end.i108.i, !dbg !1594

if.end.i108.i:                                    ; preds = %while.end.i103.i
  store ptr %call.i106.i, ptr %data5.i104.i, align 8, !dbg !1595
  store i32 %dn.0.i100.i, ptr %d_max.i86.i, align 4, !dbg !1596
  %.pre34.i109.i = load i32, ptr %d_cur.i84.i, align 8, !dbg !1597
  br label %do.body39

do.body39:                                        ; preds = %if.end.i108.i, %entry.if.end11_crit_edge.i88.i
  %22 = phi i32 [ %20, %entry.if.end11_crit_edge.i88.i ], [ %.pre34.i109.i, %if.end.i108.i ], !dbg !1597
  %23 = phi ptr [ %.pre.i90.i, %entry.if.end11_crit_edge.i88.i ], [ %call.i106.i, %if.end.i108.i ], !dbg !1582
  %idx.ext.i92.i = zext i32 %22 to i64, !dbg !1598
  %add.ptr.i93.i = getelementptr inbounds i8, ptr %23, i64 %idx.ext.i92.i, !dbg !1598
  store i8 -93, ptr %add.ptr.i93.i, align 1, !dbg !1599
  store i32 %add.i85.i, ptr %d_cur.i84.i, align 8, !dbg !1600
  %24 = load ptr, ptr %cluster, align 8, !dbg !1564
  %call41 = tail call fastcc i32 @mk_write_size(ptr noundef %24, i32 noundef %cond), !dbg !1564
  %cmp42 = icmp slt i32 %call41, 0, !dbg !1564
  br i1 %cmp42, label %cleanup, label %do.body47, !dbg !1601

do.body47:                                        ; preds = %do.body39
  %25 = load ptr, ptr %cluster, align 8, !dbg !1602
    #dbg_value(ptr %25, !406, !DIExpression(), !1605)
    #dbg_value(i32 1, !409, !DIExpression(), !1605)
    #dbg_value(i8 8, !410, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1605)
    #dbg_value(i8 0, !410, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1605)
    #dbg_value(i8 0, !410, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !1605)
    #dbg_value(i8 0, !410, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !1605)
    #dbg_value(i8 -127, !410, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !1605)
    #dbg_value(ptr %25, !369, !DIExpression(), !1607)
    #dbg_value(ptr undef, !370, !DIExpression(), !1607)
    #dbg_value(i32 1, !371, !DIExpression(), !1607)
  %d_cur.i.i = getelementptr inbounds i8, ptr %25, i64 48, !dbg !1609
  %26 = load i32, ptr %d_cur.i.i, align 8, !dbg !1609
  %add.i.i = add i32 %26, 1, !dbg !1610
    #dbg_value(i32 %add.i.i, !372, !DIExpression(), !1607)
  %d_max.i.i = getelementptr inbounds i8, ptr %25, i64 52, !dbg !1611
  %27 = load i32, ptr %d_max.i.i, align 4, !dbg !1611
  %cmp.i.i = icmp ugt i32 %add.i.i, %27, !dbg !1612
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end11_crit_edge.i.i, !dbg !1613

entry.if.end11_crit_edge.i.i:                     ; preds = %do.body47
  %data12.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %25, i64 40
  %.pre.i.i = load ptr, ptr %data12.phi.trans.insert.i.i, align 8, !dbg !1614
  br label %do.end54, !dbg !1613

if.then.i.i:                                      ; preds = %do.body47
  %tobool.not.i.i = icmp eq i32 %27, 0, !dbg !1615
  %shl.i.i = shl i32 %27, 1
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 16, i32 %shl.i.i, !dbg !1615
    #dbg_value(i32 %spec.select.i.i, !375, !DIExpression(), !1616)
  br label %while.cond.i.i, !dbg !1617

while.cond.i.i:                                   ; preds = %while.cond.i.i, %if.then.i.i
  %dn.0.i.i = phi i32 [ %spec.select.i.i, %if.then.i.i ], [ %shl4.i.i, %while.cond.i.i ], !dbg !1616
    #dbg_value(i32 %dn.0.i.i, !375, !DIExpression(), !1616)
  %cmp3.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i, !dbg !1618
  %shl4.i.i = shl i32 %dn.0.i.i, 1, !dbg !1619
    #dbg_value(i32 %shl4.i.i, !375, !DIExpression(), !1616)
  br i1 %cmp3.i.i, label %while.cond.i.i, label %while.end.i.i, !dbg !1617, !llvm.loop !1620

while.end.i.i:                                    ; preds = %while.cond.i.i
  %data5.i.i = getelementptr inbounds i8, ptr %25, i64 40, !dbg !1622
  %28 = load ptr, ptr %data5.i.i, align 8, !dbg !1622
  %conv.i.i = zext i32 %dn.0.i.i to i64, !dbg !1623
  %call.i.i = tail call ptr @realloc(ptr noundef %28, i64 noundef %conv.i.i) #12, !dbg !1624
    #dbg_value(ptr %call.i.i, !373, !DIExpression(), !1616)
  %tobool6.not.not.i.i = icmp eq ptr %call.i.i, null, !dbg !1625
  br i1 %tobool6.not.not.i.i, label %cleanup, label %if.end.i.i, !dbg !1626

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %data5.i.i, align 8, !dbg !1627
  store i32 %dn.0.i.i, ptr %d_max.i.i, align 4, !dbg !1628
  %.pre34.i.i = load i32, ptr %d_cur.i.i, align 8, !dbg !1629
  br label %do.end54

do.end54:                                         ; preds = %if.end.i.i, %entry.if.end11_crit_edge.i.i
  %29 = phi i32 [ %26, %entry.if.end11_crit_edge.i.i ], [ %.pre34.i.i, %if.end.i.i ], !dbg !1629
  %30 = phi ptr [ %.pre.i.i, %entry.if.end11_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ], !dbg !1614
  %idx.ext.i.i = zext i32 %29 to i64, !dbg !1630
  %add.ptr.i.i = getelementptr inbounds i8, ptr %30, i64 %idx.ext.i.i, !dbg !1630
  store i8 -127, ptr %add.ptr.i.i, align 1, !dbg !1631
  store i32 %add.i.i, ptr %d_cur.i.i, align 8, !dbg !1632
  %shr = lshr i64 %delta.0, 8, !dbg !1633
  %conv = trunc i64 %shr to i8, !dbg !1634
    #dbg_value(i8 %conv, !1497, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1499)
  %conv55 = trunc i64 %delta.0 to i8, !dbg !1635
    #dbg_value(i8 %conv55, !1497, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1499)
  %keyframe = getelementptr inbounds i8, ptr %w, i64 98, !dbg !1636
  %31 = load i8, ptr %keyframe, align 2, !dbg !1636
  %shl = shl i8 %31, 7, !dbg !1637
  %skippable = getelementptr inbounds i8, ptr %w, i64 99, !dbg !1638
  %32 = load i8, ptr %skippable, align 1, !dbg !1638
  %or = or i8 %shl, %32, !dbg !1639
    #dbg_value(i8 %or, !1497, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !1499)
  %33 = load ptr, ptr %cluster, align 8, !dbg !1640
    #dbg_value(ptr %33, !369, !DIExpression(), !1643)
    #dbg_value(ptr undef, !370, !DIExpression(), !1643)
    #dbg_value(i32 3, !371, !DIExpression(), !1643)
  %d_cur.i = getelementptr inbounds i8, ptr %33, i64 48, !dbg !1645
  %34 = load i32, ptr %d_cur.i, align 8, !dbg !1645
  %add.i = add i32 %34, 3, !dbg !1646
    #dbg_value(i32 %add.i, !372, !DIExpression(), !1643)
  %d_max.i = getelementptr inbounds i8, ptr %33, i64 52, !dbg !1647
  %35 = load i32, ptr %d_max.i, align 4, !dbg !1647
  %cmp.i = icmp ugt i32 %add.i, %35, !dbg !1648
  br i1 %cmp.i, label %if.then.i143, label %entry.if.end11_crit_edge.i, !dbg !1649

entry.if.end11_crit_edge.i:                       ; preds = %do.end54
  %data12.phi.trans.insert.i = getelementptr inbounds i8, ptr %33, i64 40
  %.pre.i142 = load ptr, ptr %data12.phi.trans.insert.i, align 8, !dbg !1650
  br label %do.end69, !dbg !1649

if.then.i143:                                     ; preds = %do.end54
  %tobool.not.i144 = icmp eq i32 %35, 0, !dbg !1651
  %shl.i = shl i32 %35, 1
  %spec.select.i = select i1 %tobool.not.i144, i32 16, i32 %shl.i, !dbg !1651
    #dbg_value(i32 %spec.select.i, !375, !DIExpression(), !1652)
  br label %while.cond.i, !dbg !1653

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i143
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i143 ], [ %shl4.i, %while.cond.i ], !dbg !1652
    #dbg_value(i32 %dn.0.i, !375, !DIExpression(), !1652)
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i, !dbg !1654
  %shl4.i = shl i32 %dn.0.i, 1, !dbg !1655
    #dbg_value(i32 %shl4.i, !375, !DIExpression(), !1652)
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i, !dbg !1653, !llvm.loop !1656

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds i8, ptr %33, i64 40, !dbg !1658
  %36 = load ptr, ptr %data5.i, align 8, !dbg !1658
  %conv.i = zext i32 %dn.0.i to i64, !dbg !1659
  %call.i = tail call ptr @realloc(ptr noundef %36, i64 noundef %conv.i) #12, !dbg !1660
    #dbg_value(ptr %call.i, !373, !DIExpression(), !1652)
  %tobool6.not.not.i = icmp eq ptr %call.i, null, !dbg !1661
  br i1 %tobool6.not.not.i, label %cleanup, label %if.end.i, !dbg !1662

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %data5.i, align 8, !dbg !1663
  store i32 %dn.0.i, ptr %d_max.i, align 4, !dbg !1664
  %.pre34.i = load i32, ptr %d_cur.i, align 8, !dbg !1665
  br label %do.end69

do.end69:                                         ; preds = %if.end.i, %entry.if.end11_crit_edge.i
  %37 = phi i32 [ %34, %entry.if.end11_crit_edge.i ], [ %.pre34.i, %if.end.i ], !dbg !1665
  %38 = phi ptr [ %.pre.i142, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i ], !dbg !1650
  %idx.ext.i = zext i32 %37 to i64, !dbg !1666
  %add.ptr.i = getelementptr inbounds i8, ptr %38, i64 %idx.ext.i, !dbg !1666
  store i8 %conv, ptr %add.ptr.i, align 1, !dbg !1667
  %c_delta_flags.sroa.4.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i64 1, !dbg !1667
  store i8 %conv55, ptr %c_delta_flags.sroa.4.0.add.ptr.i.sroa_idx, align 1, !dbg !1667
  %c_delta_flags.sroa.5.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i64 2, !dbg !1667
  store i8 %or, ptr %c_delta_flags.sroa.5.0.add.ptr.i.sroa_idx, align 1, !dbg !1667
  store i32 %add.i, ptr %d_cur.i, align 8, !dbg !1668
  %39 = load ptr, ptr %frame, align 8, !dbg !1669
  %tobool71.not = icmp eq ptr %39, null, !dbg !1671
  br i1 %tobool71.not, label %if.end87, label %do.body73, !dbg !1672

do.body73:                                        ; preds = %do.end69
  %40 = load ptr, ptr %cluster, align 8, !dbg !1673
  %data = getelementptr inbounds i8, ptr %39, i64 40, !dbg !1673
  %41 = load ptr, ptr %data, align 8, !dbg !1673
  %d_cur77 = getelementptr inbounds i8, ptr %39, i64 48, !dbg !1673
  %42 = load i32, ptr %d_cur77, align 8, !dbg !1673
    #dbg_value(ptr %40, !369, !DIExpression(), !1677)
    #dbg_value(ptr %41, !370, !DIExpression(), !1677)
    #dbg_value(i32 %42, !371, !DIExpression(), !1677)
  %d_cur.i145 = getelementptr inbounds i8, ptr %40, i64 48, !dbg !1679
  %43 = load i32, ptr %d_cur.i145, align 8, !dbg !1679
  %add.i146 = add i32 %43, %42, !dbg !1680
    #dbg_value(i32 %add.i146, !372, !DIExpression(), !1677)
  %d_max.i147 = getelementptr inbounds i8, ptr %40, i64 52, !dbg !1681
  %44 = load i32, ptr %d_max.i147, align 4, !dbg !1681
  %cmp.i148 = icmp ugt i32 %add.i146, %44, !dbg !1682
  br i1 %cmp.i148, label %if.then.i156, label %entry.if.end11_crit_edge.i149, !dbg !1683

entry.if.end11_crit_edge.i149:                    ; preds = %do.body73
  %data12.phi.trans.insert.i150 = getelementptr inbounds i8, ptr %40, i64 40
  %.pre.i151 = load ptr, ptr %data12.phi.trans.insert.i150, align 8, !dbg !1684
  br label %do.end84, !dbg !1683

if.then.i156:                                     ; preds = %do.body73
  %tobool.not.i157 = icmp eq i32 %44, 0, !dbg !1685
  %shl.i158 = shl i32 %44, 1
  %spec.select.i159 = select i1 %tobool.not.i157, i32 16, i32 %shl.i158, !dbg !1685
    #dbg_value(i32 %spec.select.i159, !375, !DIExpression(), !1686)
  br label %while.cond.i160, !dbg !1687

while.cond.i160:                                  ; preds = %while.cond.i160, %if.then.i156
  %dn.0.i161 = phi i32 [ %spec.select.i159, %if.then.i156 ], [ %shl4.i163, %while.cond.i160 ], !dbg !1686
    #dbg_value(i32 %dn.0.i161, !375, !DIExpression(), !1686)
  %cmp3.i162 = icmp ugt i32 %add.i146, %dn.0.i161, !dbg !1688
  %shl4.i163 = shl i32 %dn.0.i161, 1, !dbg !1689
    #dbg_value(i32 %shl4.i163, !375, !DIExpression(), !1686)
  br i1 %cmp3.i162, label %while.cond.i160, label %while.end.i164, !dbg !1687, !llvm.loop !1690

while.end.i164:                                   ; preds = %while.cond.i160
  %data5.i165 = getelementptr inbounds i8, ptr %40, i64 40, !dbg !1692
  %45 = load ptr, ptr %data5.i165, align 8, !dbg !1692
  %conv.i166 = zext i32 %dn.0.i161 to i64, !dbg !1693
  %call.i167 = tail call ptr @realloc(ptr noundef %45, i64 noundef %conv.i166) #12, !dbg !1694
    #dbg_value(ptr %call.i167, !373, !DIExpression(), !1686)
  %tobool6.not.not.i168 = icmp eq ptr %call.i167, null, !dbg !1695
  br i1 %tobool6.not.not.i168, label %cleanup, label %if.end.i169, !dbg !1696

if.end.i169:                                      ; preds = %while.end.i164
  store ptr %call.i167, ptr %data5.i165, align 8, !dbg !1697
  store i32 %dn.0.i161, ptr %d_max.i147, align 4, !dbg !1698
  %.pre34.i170 = load i32, ptr %d_cur.i145, align 8, !dbg !1699
  br label %do.end84

do.end84:                                         ; preds = %if.end.i169, %entry.if.end11_crit_edge.i149
  %46 = phi i32 [ %43, %entry.if.end11_crit_edge.i149 ], [ %.pre34.i170, %if.end.i169 ], !dbg !1699
  %47 = phi ptr [ %.pre.i151, %entry.if.end11_crit_edge.i149 ], [ %call.i167, %if.end.i169 ], !dbg !1684
  %idx.ext.i153 = zext i32 %46 to i64, !dbg !1700
  %add.ptr.i154 = getelementptr inbounds i8, ptr %47, i64 %idx.ext.i153, !dbg !1700
  %conv14.i = zext i32 %42 to i64, !dbg !1701
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i154, ptr readonly align 1 %41, i64 %conv14.i, i1 false), !dbg !1702
  store i32 %add.i146, ptr %d_cur.i145, align 8, !dbg !1703
  %48 = load ptr, ptr %frame, align 8, !dbg !1704
  %d_cur86 = getelementptr inbounds i8, ptr %48, i64 48, !dbg !1705
  store i32 0, ptr %d_cur86, align 8, !dbg !1706
  br label %if.end87, !dbg !1707

if.end87:                                         ; preds = %do.end84, %do.end69
  store i8 0, ptr %in_frame, align 1, !dbg !1708
  %49 = load ptr, ptr %cluster, align 8, !dbg !1709
  %d_cur90 = getelementptr inbounds i8, ptr %49, i64 48, !dbg !1711
  %50 = load i32, ptr %d_cur90, align 8, !dbg !1711
  %cmp91 = icmp ugt i32 %50, 1048576, !dbg !1712
  br i1 %cmp91, label %do.body94, label %if.end102, !dbg !1713

do.body94:                                        ; preds = %if.end87
  %call95 = tail call fastcc i32 @mk_close_cluster(ptr noundef nonnull %w), !dbg !1714
  %cmp96 = icmp slt i32 %call95, 0, !dbg !1714
  br i1 %cmp96, label %cleanup, label %if.end102, !dbg !1717

if.end102:                                        ; preds = %do.body94, %if.end87
  br label %cleanup, !dbg !1718

cleanup:                                          ; preds = %while.end.i164, %while.end.i, %while.end.i.i, %while.end.i103.i, %mk_create_context.exit.thread, %do.body94, %do.body39, %do.body19, %do.body, %entry, %if.end102
  %retval.0 = phi i32 [ 0, %if.end102 ], [ 0, %entry ], [ -1, %do.body ], [ -1, %do.body19 ], [ -1, %do.body39 ], [ -1, %do.body94 ], [ -1, %mk_create_context.exit.thread ], [ -1, %while.end.i103.i ], [ -1, %while.end.i.i ], [ -1, %while.end.i ], [ -1, %while.end.i164 ], !dbg !1499
  ret i32 %retval.0, !dbg !1719
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @mk_set_frame_flags(ptr nocapture noundef %w, i64 noundef %timestamp, i32 noundef %keyframe, i32 noundef %skippable) local_unnamed_addr #6 !dbg !1720 {
entry:
    #dbg_value(ptr %w, !1724, !DIExpression(), !1728)
    #dbg_value(i64 %timestamp, !1725, !DIExpression(), !1728)
    #dbg_value(i32 %keyframe, !1726, !DIExpression(), !1728)
    #dbg_value(i32 %skippable, !1727, !DIExpression(), !1728)
  %in_frame = getelementptr inbounds i8, ptr %w, i64 97, !dbg !1729
  %0 = load i8, ptr %in_frame, align 1, !dbg !1729
  %tobool.not = icmp eq i8 %0, 0, !dbg !1731
  br i1 %tobool.not, label %return, label %if.end, !dbg !1732

if.end:                                           ; preds = %entry
  %frame_tc = getelementptr inbounds i8, ptr %w, i64 80, !dbg !1733
  store i64 %timestamp, ptr %frame_tc, align 8, !dbg !1734
  %cmp = icmp ne i32 %keyframe, 0, !dbg !1735
  %conv1 = zext i1 %cmp to i8, !dbg !1736
  %keyframe2 = getelementptr inbounds i8, ptr %w, i64 98, !dbg !1737
  store i8 %conv1, ptr %keyframe2, align 2, !dbg !1738
  %cmp3 = icmp ne i32 %skippable, 0, !dbg !1739
  %conv5 = zext i1 %cmp3 to i8, !dbg !1740
  %skippable6 = getelementptr inbounds i8, ptr %w, i64 99, !dbg !1741
  store i8 %conv5, ptr %skippable6, align 1, !dbg !1742
  %max_frame_tc = getelementptr inbounds i8, ptr %w, i64 88, !dbg !1743
  %1 = load i64, ptr %max_frame_tc, align 8, !dbg !1743
  %cmp7 = icmp slt i64 %1, %timestamp, !dbg !1745
  br i1 %cmp7, label %if.then9, label %return, !dbg !1746

if.then9:                                         ; preds = %if.end
  store i64 %timestamp, ptr %max_frame_tc, align 8, !dbg !1747
  br label %return, !dbg !1748

return:                                           ; preds = %if.end, %if.then9, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %if.then9 ], [ 0, %if.end ], !dbg !1728
  ret i32 %retval.0, !dbg !1749
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @mk_add_frame_data(ptr noundef %w, ptr nocapture noundef readonly %data, i32 noundef %size) local_unnamed_addr #0 !dbg !1750 {
entry:
    #dbg_value(ptr %w, !1754, !DIExpression(), !1757)
    #dbg_value(ptr %data, !1755, !DIExpression(), !1757)
    #dbg_value(i32 %size, !1756, !DIExpression(), !1757)
  %in_frame = getelementptr inbounds i8, ptr %w, i64 97, !dbg !1758
  %0 = load i8, ptr %in_frame, align 1, !dbg !1758
  %tobool.not = icmp eq i8 %0, 0, !dbg !1760
  br i1 %tobool.not, label %return, label %if.end, !dbg !1761

if.end:                                           ; preds = %entry
  %frame = getelementptr inbounds i8, ptr %w, i64 32, !dbg !1762
  %1 = load ptr, ptr %frame, align 8, !dbg !1762
  %tobool1.not = icmp eq ptr %1, null, !dbg !1764
  br i1 %tobool1.not, label %if.then2, label %if.end7, !dbg !1765

if.then2:                                         ; preds = %if.end
    #dbg_value(ptr %w, !149, !DIExpression(), !1766)
    #dbg_value(ptr null, !154, !DIExpression(), !1766)
    #dbg_value(i32 0, !155, !DIExpression(), !1766)
  %freelist.i = getelementptr inbounds i8, ptr %w, i64 40, !dbg !1769
  %2 = load ptr, ptr %freelist.i, align 8, !dbg !1769
  %tobool.not.i = icmp eq ptr %2, null, !dbg !1770
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !dbg !1771

if.then.i:                                        ; preds = %if.then2
    #dbg_value(ptr %2, !156, !DIExpression(), !1766)
  %3 = load ptr, ptr %2, align 8, !dbg !1772
  store ptr %3, ptr %freelist.i, align 8, !dbg !1773
  br label %if.end6.i, !dbg !1774

if.else.i:                                        ; preds = %if.then2
  %calloc.i = tail call dereferenceable_or_null(56) ptr @calloc(i64 1, i64 56), !dbg !1775
    #dbg_value(ptr %calloc.i, !156, !DIExpression(), !1766)
  %tobool4.not.i = icmp eq ptr %calloc.i, null, !dbg !1776
  br i1 %tobool4.not.i, label %mk_create_context.exit.thread, label %if.end6.i, !dbg !1777

mk_create_context.exit.thread:                    ; preds = %if.else.i
  store ptr null, ptr %frame, align 8, !dbg !1778
  br label %return, !dbg !1779

if.end6.i:                                        ; preds = %if.else.i, %if.then.i
  %c.0.i = phi ptr [ %2, %if.then.i ], [ %calloc.i, %if.else.i ], !dbg !1780
    #dbg_value(ptr %c.0.i, !156, !DIExpression(), !1766)
  %parent7.i = getelementptr inbounds i8, ptr %c.0.i, i64 16, !dbg !1781
  store ptr null, ptr %parent7.i, align 8, !dbg !1782
  %owner.i = getelementptr inbounds i8, ptr %c.0.i, i64 24, !dbg !1783
  store ptr %w, ptr %owner.i, align 8, !dbg !1784
  %id8.i = getelementptr inbounds i8, ptr %c.0.i, i64 32, !dbg !1785
  store i32 0, ptr %id8.i, align 8, !dbg !1786
  %actlist.i = getelementptr inbounds i8, ptr %w, i64 48, !dbg !1787
  %4 = load ptr, ptr %actlist.i, align 8, !dbg !1787
  %tobool10.not.i = icmp eq ptr %4, null, !dbg !1788
  br i1 %tobool10.not.i, label %mk_create_context.exit, label %if.then11.i, !dbg !1789

if.then11.i:                                      ; preds = %if.end6.i
  %prev.i = getelementptr inbounds i8, ptr %4, i64 8, !dbg !1790
  store ptr %c.0.i, ptr %prev.i, align 8, !dbg !1791
  %.pre.i = load ptr, ptr %owner.i, align 8, !dbg !1792
  %actlist17.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 48
  %.pre43.i = load ptr, ptr %actlist17.phi.trans.insert.i, align 8, !dbg !1793
  br label %mk_create_context.exit, !dbg !1794

mk_create_context.exit:                           ; preds = %if.end6.i, %if.then11.i
  %5 = phi ptr [ %.pre43.i, %if.then11.i ], [ null, %if.end6.i ], !dbg !1793
  %6 = phi ptr [ %.pre.i, %if.then11.i ], [ %w, %if.end6.i ], !dbg !1792
  %actlist17.i = getelementptr inbounds i8, ptr %6, i64 48, !dbg !1793
  store ptr %5, ptr %c.0.i, align 8, !dbg !1795
  %prev21.i = getelementptr inbounds i8, ptr %c.0.i, i64 8, !dbg !1796
  store ptr %actlist17.i, ptr %prev21.i, align 8, !dbg !1797
  store ptr %c.0.i, ptr %actlist17.i, align 8, !dbg !1798
  store ptr %c.0.i, ptr %frame, align 8, !dbg !1778
  br label %if.end7, !dbg !1779

if.end7:                                          ; preds = %mk_create_context.exit, %if.end
  %7 = phi ptr [ %c.0.i, %mk_create_context.exit ], [ %1, %if.end ], !dbg !1799
    #dbg_value(ptr %7, !369, !DIExpression(), !1800)
    #dbg_value(ptr %data, !370, !DIExpression(), !1800)
    #dbg_value(i32 %size, !371, !DIExpression(), !1800)
  %d_cur.i = getelementptr inbounds i8, ptr %7, i64 48, !dbg !1802
  %8 = load i32, ptr %d_cur.i, align 8, !dbg !1802
  %add.i = add i32 %8, %size, !dbg !1803
    #dbg_value(i32 %add.i, !372, !DIExpression(), !1800)
  %d_max.i = getelementptr inbounds i8, ptr %7, i64 52, !dbg !1804
  %9 = load i32, ptr %d_max.i, align 4, !dbg !1804
  %cmp.i = icmp ugt i32 %add.i, %9, !dbg !1805
  br i1 %cmp.i, label %if.then.i15, label %entry.if.end11_crit_edge.i, !dbg !1806

entry.if.end11_crit_edge.i:                       ; preds = %if.end7
  %data12.phi.trans.insert.i = getelementptr inbounds i8, ptr %7, i64 40
  %.pre.i14 = load ptr, ptr %data12.phi.trans.insert.i, align 8, !dbg !1807
  br label %if.end11.i, !dbg !1806

if.then.i15:                                      ; preds = %if.end7
  %tobool.not.i16 = icmp eq i32 %9, 0, !dbg !1808
  %shl.i = shl i32 %9, 1
  %spec.select.i = select i1 %tobool.not.i16, i32 16, i32 %shl.i, !dbg !1808
    #dbg_value(i32 %spec.select.i, !375, !DIExpression(), !1809)
  br label %while.cond.i, !dbg !1810

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i15
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i15 ], [ %shl4.i, %while.cond.i ], !dbg !1809
    #dbg_value(i32 %dn.0.i, !375, !DIExpression(), !1809)
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i, !dbg !1811
  %shl4.i = shl i32 %dn.0.i, 1, !dbg !1812
    #dbg_value(i32 %shl4.i, !375, !DIExpression(), !1809)
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i, !dbg !1810, !llvm.loop !1813

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds i8, ptr %7, i64 40, !dbg !1815
  %10 = load ptr, ptr %data5.i, align 8, !dbg !1815
  %conv.i = zext i32 %dn.0.i to i64, !dbg !1816
  %call.i = tail call ptr @realloc(ptr noundef %10, i64 noundef %conv.i) #12, !dbg !1817
    #dbg_value(ptr %call.i, !373, !DIExpression(), !1809)
  %tobool6.not.not.i = icmp eq ptr %call.i, null, !dbg !1818
  br i1 %tobool6.not.not.i, label %return, label %if.end.i, !dbg !1819

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %data5.i, align 8, !dbg !1820
  store i32 %dn.0.i, ptr %d_max.i, align 4, !dbg !1821
  %.pre34.i = load i32, ptr %d_cur.i, align 8, !dbg !1822
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i, %entry.if.end11_crit_edge.i
  %11 = phi i32 [ %8, %entry.if.end11_crit_edge.i ], [ %.pre34.i, %if.end.i ], !dbg !1822
  %12 = phi ptr [ %.pre.i14, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i ], !dbg !1807
  %idx.ext.i = zext i32 %11 to i64, !dbg !1823
  %add.ptr.i = getelementptr inbounds i8, ptr %12, i64 %idx.ext.i, !dbg !1823
  %conv14.i = zext i32 %size to i64, !dbg !1824
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i, ptr readonly align 1 %data, i64 %conv14.i, i1 false), !dbg !1825
  store i32 %add.i, ptr %d_cur.i, align 8, !dbg !1826
  br label %return, !dbg !1827

return:                                           ; preds = %if.end11.i, %while.end.i, %mk_create_context.exit.thread, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %mk_create_context.exit.thread ], [ 0, %if.end11.i ], [ -1, %while.end.i ], !dbg !1757
  ret i32 %retval.0, !dbg !1828
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @mk_close(ptr noundef %w, i64 noundef %last_delta) local_unnamed_addr #0 !dbg !1829 {
entry:
    #dbg_value(ptr %w, !1833, !DIExpression(), !1840)
    #dbg_value(i64 %last_delta, !1834, !DIExpression(), !1840)
    #dbg_value(i32 0, !1835, !DIExpression(), !1840)
  %call = tail call fastcc i32 @mk_flush_frame(ptr noundef %w), !dbg !1841
  %cmp = icmp slt i32 %call, 0, !dbg !1843
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1844

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @mk_close_cluster(ptr noundef %w), !dbg !1845
  %cmp2 = icmp slt i32 %call1, 0, !dbg !1846
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1847

if.then:                                          ; preds = %lor.lhs.false, %entry
    #dbg_value(i32 -1, !1835, !DIExpression(), !1840)
  br label %if.end, !dbg !1848

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %ret.0 = phi i32 [ -1, %if.then ], [ 0, %lor.lhs.false ], !dbg !1840
    #dbg_value(i32 %ret.0, !1835, !DIExpression(), !1840)
  %wrote_header = getelementptr inbounds i8, ptr %w, i64 96, !dbg !1849
  %0 = load i8, ptr %wrote_header, align 8, !dbg !1849
  %tobool.not = icmp eq i8 %0, 0, !dbg !1850
  br i1 %tobool.not, label %if.end25, label %land.lhs.true, !dbg !1851

land.lhs.true:                                    ; preds = %if.end
  %1 = load ptr, ptr %w, align 8, !dbg !1852
  %duration_ptr = getelementptr inbounds i8, ptr %w, i64 8, !dbg !1853
  %2 = load i32, ptr %duration_ptr, align 8, !dbg !1853
  %conv8 = zext i32 %2 to i64, !dbg !1854
  %call9 = tail call i32 @fseek(ptr noundef %1, i64 noundef %conv8, i32 noundef 0), !dbg !1855
  %def_duration = getelementptr inbounds i8, ptr %w, i64 56, !dbg !1856
  %3 = load i64, ptr %def_duration, align 8, !dbg !1856
  %tobool10.not = icmp eq i64 %3, 0, !dbg !1857
  %cond = select i1 %tobool10.not, i64 %last_delta, i64 %3, !dbg !1857
    #dbg_value(i64 %cond, !1836, !DIExpression(), !1858)
  %max_frame_tc = getelementptr inbounds i8, ptr %w, i64 88, !dbg !1859
  %4 = load i64, ptr %max_frame_tc, align 8, !dbg !1859
  %add = add nsw i64 %cond, %4, !dbg !1860
    #dbg_value(i64 %add, !1839, !DIExpression(), !1858)
  %root = getelementptr inbounds i8, ptr %w, i64 16, !dbg !1861
  %5 = load ptr, ptr %root, align 8, !dbg !1861
  %conv12 = sitofp i64 %add to double, !dbg !1863
  %timescale = getelementptr inbounds i8, ptr %w, i64 64, !dbg !1864
  %6 = load i64, ptr %timescale, align 8, !dbg !1864
  %conv13 = sitofp i64 %6 to double, !dbg !1865
  %div = fdiv double %conv12, %conv13, !dbg !1866
  %conv14 = fptrunc double %div to float, !dbg !1867
    #dbg_value(ptr %5, !1311, !DIExpression(), !1868)
    #dbg_value(float %conv14, !1316, !DIExpression(), !1868)
    #dbg_value(float %conv14, !1317, !DIExpression(), !1868)
  %7 = bitcast float %conv14 to i32, !dbg !1870
  %shr.i = lshr i32 %7, 24, !dbg !1871
  %conv.i = trunc nuw i32 %shr.i to i8, !dbg !1872
    #dbg_value(i8 %conv.i, !1322, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1868)
  %shr1.i = lshr i32 %7, 16, !dbg !1873
  %conv2.i = trunc i32 %shr1.i to i8, !dbg !1874
    #dbg_value(i8 %conv2.i, !1322, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1868)
  %shr4.i = lshr i32 %7, 8, !dbg !1875
  %conv5.i = trunc i32 %shr4.i to i8, !dbg !1876
    #dbg_value(i8 %conv5.i, !1322, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !1868)
  %conv7.i = trunc i32 %7 to i8, !dbg !1877
    #dbg_value(i8 %conv7.i, !1322, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !1868)
    #dbg_value(ptr %5, !369, !DIExpression(), !1878)
    #dbg_value(ptr undef, !370, !DIExpression(), !1878)
    #dbg_value(i32 4, !371, !DIExpression(), !1878)
  %d_cur.i.i = getelementptr inbounds i8, ptr %5, i64 48, !dbg !1880
  %8 = load i32, ptr %d_cur.i.i, align 8, !dbg !1880
  %add.i.i = add i32 %8, 4, !dbg !1881
    #dbg_value(i32 %add.i.i, !372, !DIExpression(), !1878)
  %d_max.i.i = getelementptr inbounds i8, ptr %5, i64 52, !dbg !1882
  %9 = load i32, ptr %d_max.i.i, align 4, !dbg !1882
  %cmp.i.i = icmp ugt i32 %add.i.i, %9, !dbg !1883
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end11_crit_edge.i.i, !dbg !1884

entry.if.end11_crit_edge.i.i:                     ; preds = %land.lhs.true
  %data12.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %5, i64 40
  %.pre.i.i = load ptr, ptr %data12.phi.trans.insert.i.i, align 8, !dbg !1885
  br label %lor.lhs.false18, !dbg !1884

if.then.i.i:                                      ; preds = %land.lhs.true
  %tobool.not.i.i = icmp eq i32 %9, 0, !dbg !1886
  %shl.i.i = shl i32 %9, 1
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 16, i32 %shl.i.i, !dbg !1886
    #dbg_value(i32 %spec.select.i.i, !375, !DIExpression(), !1887)
  br label %while.cond.i.i, !dbg !1888

while.cond.i.i:                                   ; preds = %while.cond.i.i, %if.then.i.i
  %dn.0.i.i = phi i32 [ %spec.select.i.i, %if.then.i.i ], [ %shl4.i.i, %while.cond.i.i ], !dbg !1887
    #dbg_value(i32 %dn.0.i.i, !375, !DIExpression(), !1887)
  %cmp3.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i, !dbg !1889
  %shl4.i.i = shl i32 %dn.0.i.i, 1, !dbg !1890
    #dbg_value(i32 %shl4.i.i, !375, !DIExpression(), !1887)
  br i1 %cmp3.i.i, label %while.cond.i.i, label %while.end.i.i, !dbg !1888, !llvm.loop !1891

while.end.i.i:                                    ; preds = %while.cond.i.i
  %data5.i.i = getelementptr inbounds i8, ptr %5, i64 40, !dbg !1893
  %10 = load ptr, ptr %data5.i.i, align 8, !dbg !1893
  %conv.i.i = zext i32 %dn.0.i.i to i64, !dbg !1894
  %call.i.i = tail call ptr @realloc(ptr noundef %10, i64 noundef %conv.i.i) #12, !dbg !1895
    #dbg_value(ptr %call.i.i, !373, !DIExpression(), !1887)
  %tobool6.not.not.i.i = icmp eq ptr %call.i.i, null, !dbg !1896
  br i1 %tobool6.not.not.i.i, label %if.end25, label %if.end.i.i, !dbg !1897

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %data5.i.i, align 8, !dbg !1898
  store i32 %dn.0.i.i, ptr %d_max.i.i, align 4, !dbg !1899
  %.pre34.i.i = load i32, ptr %d_cur.i.i, align 8, !dbg !1900
  br label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.end.i.i, %entry.if.end11_crit_edge.i.i
  %11 = phi i32 [ %8, %entry.if.end11_crit_edge.i.i ], [ %.pre34.i.i, %if.end.i.i ], !dbg !1900
  %12 = phi ptr [ %.pre.i.i, %entry.if.end11_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ], !dbg !1885
  %idx.ext.i.i = zext i32 %11 to i64, !dbg !1901
  %add.ptr.i.i = getelementptr inbounds i8, ptr %12, i64 %idx.ext.i.i, !dbg !1901
  store i8 %conv.i, ptr %add.ptr.i.i, align 1, !dbg !1902
  %c_f.sroa.4.0.add.ptr.i.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 1, !dbg !1902
  store i8 %conv2.i, ptr %c_f.sroa.4.0.add.ptr.i.sroa_idx.i, align 1, !dbg !1902
  %c_f.sroa.5.0.add.ptr.i.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 2, !dbg !1902
  store i8 %conv5.i, ptr %c_f.sroa.5.0.add.ptr.i.sroa_idx.i, align 1, !dbg !1902
  %c_f.sroa.6.0.add.ptr.i.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 3, !dbg !1902
  store i8 %conv7.i, ptr %c_f.sroa.6.0.add.ptr.i.sroa_idx.i, align 1, !dbg !1902
  store i32 %add.i.i, ptr %d_cur.i.i, align 8, !dbg !1903
  %13 = load ptr, ptr %root, align 8, !dbg !1904
    #dbg_value(ptr %13, !1124, !DIExpression(), !1905)
  %d_cur.i = getelementptr inbounds i8, ptr %13, i64 48, !dbg !1907
  %14 = load i32, ptr %d_cur.i, align 8, !dbg !1907
  %tobool.not.i = icmp eq i32 %14, 0, !dbg !1908
  br i1 %tobool.not.i, label %if.end25, label %if.end.i, !dbg !1909

if.end.i:                                         ; preds = %lor.lhs.false18
  %parent.i = getelementptr inbounds i8, ptr %13, i64 16, !dbg !1910
  %15 = load ptr, ptr %parent.i, align 8, !dbg !1910
  %tobool1.not.i = icmp eq ptr %15, null, !dbg !1911
  %data7.i = getelementptr inbounds i8, ptr %13, i64 40, !dbg !1912
  %16 = load ptr, ptr %data7.i, align 8, !dbg !1912
  br i1 %tobool1.not.i, label %if.else.i, label %do.body.i, !dbg !1913

do.body.i:                                        ; preds = %if.end.i
    #dbg_value(ptr %15, !369, !DIExpression(), !1914)
    #dbg_value(ptr %16, !370, !DIExpression(), !1914)
    #dbg_value(i32 %14, !371, !DIExpression(), !1914)
  %d_cur.i.i42 = getelementptr inbounds i8, ptr %15, i64 48, !dbg !1916
  %17 = load i32, ptr %d_cur.i.i42, align 8, !dbg !1916
  %add.i.i43 = add i32 %17, %14, !dbg !1917
    #dbg_value(i32 %add.i.i43, !372, !DIExpression(), !1914)
  %d_max.i.i44 = getelementptr inbounds i8, ptr %15, i64 52, !dbg !1918
  %18 = load i32, ptr %d_max.i.i44, align 4, !dbg !1918
  %cmp.i.i45 = icmp ugt i32 %add.i.i43, %18, !dbg !1919
  br i1 %cmp.i.i45, label %if.then.i.i51, label %entry.if.end11_crit_edge.i.i46, !dbg !1920

entry.if.end11_crit_edge.i.i46:                   ; preds = %do.body.i
  %data12.phi.trans.insert.i.i47 = getelementptr inbounds i8, ptr %15, i64 40
  %.pre.i.i48 = load ptr, ptr %data12.phi.trans.insert.i.i47, align 8, !dbg !1921
  br label %mk_append_context_data.exit.i, !dbg !1920

if.then.i.i51:                                    ; preds = %do.body.i
  %tobool.not.i.i52 = icmp eq i32 %18, 0, !dbg !1922
  %shl.i.i53 = shl i32 %18, 1
  %spec.select.i.i54 = select i1 %tobool.not.i.i52, i32 16, i32 %shl.i.i53, !dbg !1922
    #dbg_value(i32 %spec.select.i.i54, !375, !DIExpression(), !1923)
  br label %while.cond.i.i55, !dbg !1924

while.cond.i.i55:                                 ; preds = %while.cond.i.i55, %if.then.i.i51
  %dn.0.i.i56 = phi i32 [ %spec.select.i.i54, %if.then.i.i51 ], [ %shl4.i.i58, %while.cond.i.i55 ], !dbg !1923
    #dbg_value(i32 %dn.0.i.i56, !375, !DIExpression(), !1923)
  %cmp3.i.i57 = icmp ugt i32 %add.i.i43, %dn.0.i.i56, !dbg !1925
  %shl4.i.i58 = shl i32 %dn.0.i.i56, 1, !dbg !1926
    #dbg_value(i32 %shl4.i.i58, !375, !DIExpression(), !1923)
  br i1 %cmp3.i.i57, label %while.cond.i.i55, label %while.end.i.i59, !dbg !1924, !llvm.loop !1927

while.end.i.i59:                                  ; preds = %while.cond.i.i55
  %data5.i.i60 = getelementptr inbounds i8, ptr %15, i64 40, !dbg !1929
  %19 = load ptr, ptr %data5.i.i60, align 8, !dbg !1929
  %conv.i.i61 = zext i32 %dn.0.i.i56 to i64, !dbg !1930
  %call.i.i62 = tail call ptr @realloc(ptr noundef %19, i64 noundef %conv.i.i61) #12, !dbg !1931
    #dbg_value(ptr %call.i.i62, !373, !DIExpression(), !1923)
  %tobool6.not.not.i.i63 = icmp eq ptr %call.i.i62, null, !dbg !1932
  br i1 %tobool6.not.not.i.i63, label %if.end25, label %if.end.i.i64, !dbg !1933

if.end.i.i64:                                     ; preds = %while.end.i.i59
  store ptr %call.i.i62, ptr %data5.i.i60, align 8, !dbg !1934
  store i32 %dn.0.i.i56, ptr %d_max.i.i44, align 4, !dbg !1935
  %.pre34.i.i65 = load i32, ptr %d_cur.i.i42, align 8, !dbg !1936
  br label %mk_append_context_data.exit.i

mk_append_context_data.exit.i:                    ; preds = %if.end.i.i64, %entry.if.end11_crit_edge.i.i46
  %20 = phi i32 [ %17, %entry.if.end11_crit_edge.i.i46 ], [ %.pre34.i.i65, %if.end.i.i64 ], !dbg !1936
  %21 = phi ptr [ %.pre.i.i48, %entry.if.end11_crit_edge.i.i46 ], [ %call.i.i62, %if.end.i.i64 ], !dbg !1921
  %idx.ext.i.i49 = zext i32 %20 to i64, !dbg !1937
  %add.ptr.i.i50 = getelementptr inbounds i8, ptr %21, i64 %idx.ext.i.i49, !dbg !1937
  %conv14.i.i = zext i32 %14 to i64, !dbg !1938
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i.i50, ptr readonly align 1 %16, i64 %conv14.i.i, i1 false), !dbg !1939
  store i32 %add.i.i43, ptr %d_cur.i.i42, align 8, !dbg !1940
  br label %if.end14.i, !dbg !1941

if.else.i:                                        ; preds = %if.end.i
  %conv.i66 = zext i32 %14 to i64, !dbg !1942
  %owner.i = getelementptr inbounds i8, ptr %13, i64 24, !dbg !1943
  %22 = load ptr, ptr %owner.i, align 8, !dbg !1943
  %23 = load ptr, ptr %22, align 8, !dbg !1944
  %call9.i = tail call i64 @fwrite(ptr noundef %16, i64 noundef %conv.i66, i64 noundef 1, ptr noundef %23), !dbg !1945
  %cmp10.not.i = icmp eq i64 %call9.i, 1, !dbg !1946
  br i1 %cmp10.not.i, label %if.end14.i, label %if.end25, !dbg !1947

if.end14.i:                                       ; preds = %if.else.i, %mk_append_context_data.exit.i
  store i32 0, ptr %d_cur.i, align 8, !dbg !1948
  br label %if.end25, !dbg !1949

if.end25:                                         ; preds = %while.end.i.i59, %if.else.i, %while.end.i.i, %if.end14.i, %lor.lhs.false18, %if.end
  %ret.2 = phi i32 [ %ret.0, %if.end ], [ %ret.0, %lor.lhs.false18 ], [ %ret.0, %if.end14.i ], [ -1, %while.end.i.i ], [ -1, %if.else.i ], [ -1, %while.end.i.i59 ], !dbg !1840
    #dbg_value(i32 %ret.2, !1835, !DIExpression(), !1840)
    #dbg_value(ptr %w, !189, !DIExpression(), !1950)
  %freelist.i = getelementptr inbounds i8, ptr %w, i64 40, !dbg !1952
  %24 = load ptr, ptr %freelist.i, align 8, !dbg !1952
    #dbg_value(ptr %24, !195, !DIExpression(), !1953)
  %tobool.not24.i = icmp eq ptr %24, null, !dbg !1954
  br i1 %tobool.not24.i, label %for.cond.cleanup.i, label %for.body.i, !dbg !1954

for.cond.cleanup.i:                               ; preds = %for.body.i, %if.end25
  %actlist.i = getelementptr inbounds i8, ptr %w, i64 48, !dbg !1955
  %25 = load ptr, ptr %actlist.i, align 8, !dbg !1955
    #dbg_value(ptr %25, !197, !DIExpression(), !1956)
  %tobool4.not26.i = icmp eq ptr %25, null, !dbg !1957
  br i1 %tobool4.not26.i, label %mk_destroy_contexts.exit, label %for.body6.i, !dbg !1957

for.body.i:                                       ; preds = %if.end25, %for.body.i
  %cur.025.i = phi ptr [ %26, %for.body.i ], [ %24, %if.end25 ]
    #dbg_value(ptr %cur.025.i, !195, !DIExpression(), !1953)
  %26 = load ptr, ptr %cur.025.i, align 8, !dbg !1958
    #dbg_value(ptr %26, !194, !DIExpression(), !1950)
  %data.i = getelementptr inbounds i8, ptr %cur.025.i, i64 40, !dbg !1959
  %27 = load ptr, ptr %data.i, align 8, !dbg !1959
  tail call void @free(ptr noundef %27) #11, !dbg !1960
  tail call void @free(ptr noundef nonnull %cur.025.i) #11, !dbg !1961
    #dbg_value(ptr %26, !195, !DIExpression(), !1953)
  %tobool.not.i67 = icmp eq ptr %26, null, !dbg !1954
  br i1 %tobool.not.i67, label %for.cond.cleanup.i, label %for.body.i, !dbg !1954, !llvm.loop !1962

for.body6.i:                                      ; preds = %for.cond.cleanup.i, %for.body6.i
  %cur2.027.i = phi ptr [ %28, %for.body6.i ], [ %25, %for.cond.cleanup.i ]
    #dbg_value(ptr %cur2.027.i, !197, !DIExpression(), !1956)
  %28 = load ptr, ptr %cur2.027.i, align 8, !dbg !1964
    #dbg_value(ptr %28, !194, !DIExpression(), !1950)
  %data8.i = getelementptr inbounds i8, ptr %cur2.027.i, i64 40, !dbg !1965
  %29 = load ptr, ptr %data8.i, align 8, !dbg !1965
  tail call void @free(ptr noundef %29) #11, !dbg !1966
  tail call void @free(ptr noundef nonnull %cur2.027.i) #11, !dbg !1967
    #dbg_value(ptr %28, !197, !DIExpression(), !1956)
  %tobool4.not.i = icmp eq ptr %28, null, !dbg !1957
  br i1 %tobool4.not.i, label %mk_destroy_contexts.exit, label %for.body6.i, !dbg !1957, !llvm.loop !1968

mk_destroy_contexts.exit:                         ; preds = %for.body6.i, %for.cond.cleanup.i
  %root.i = getelementptr inbounds i8, ptr %w, i64 16, !dbg !1970
  store ptr null, ptr %root.i, align 8, !dbg !1971
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %freelist.i, i8 0, i64 16, i1 false), !dbg !1972
  %30 = load ptr, ptr %w, align 8, !dbg !1973
  %call27 = tail call i32 @fclose(ptr noundef %30), !dbg !1974
  tail call void @free(ptr noundef %w) #11, !dbg !1975
  ret i32 %ret.2, !dbg !1976
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @mk_close_cluster(ptr nocapture noundef %w) unnamed_addr #0 !dbg !1977 {
entry:
    #dbg_value(ptr %w, !1979, !DIExpression(), !1980)
  %cluster = getelementptr inbounds i8, ptr %w, i64 24, !dbg !1981
  %0 = load ptr, ptr %cluster, align 8, !dbg !1981
  %cmp = icmp eq ptr %0, null, !dbg !1983
  br i1 %cmp, label %return, label %do.body, !dbg !1984

do.body:                                          ; preds = %entry
  %call = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %0, ptr noundef null), !dbg !1985
  %cmp2 = icmp slt i32 %call, 0, !dbg !1985
  br i1 %cmp2, label %return, label %do.end, !dbg !1988

do.end:                                           ; preds = %do.body
  store ptr null, ptr %cluster, align 8, !dbg !1989
  %root = getelementptr inbounds i8, ptr %w, i64 16, !dbg !1990
  %1 = load ptr, ptr %root, align 8, !dbg !1990
    #dbg_value(ptr %1, !1124, !DIExpression(), !1993)
  %d_cur.i = getelementptr inbounds i8, ptr %1, i64 48, !dbg !1995
  %2 = load i32, ptr %d_cur.i, align 8, !dbg !1995
  %tobool.not.i = icmp eq i32 %2, 0, !dbg !1996
  br i1 %tobool.not.i, label %return, label %if.end.i, !dbg !1997

if.end.i:                                         ; preds = %do.end
  %parent.i = getelementptr inbounds i8, ptr %1, i64 16, !dbg !1998
  %3 = load ptr, ptr %parent.i, align 8, !dbg !1998
  %tobool1.not.i = icmp eq ptr %3, null, !dbg !1999
  %data7.i = getelementptr inbounds i8, ptr %1, i64 40, !dbg !2000
  %4 = load ptr, ptr %data7.i, align 8, !dbg !2000
  br i1 %tobool1.not.i, label %if.else.i, label %do.body.i, !dbg !2001

do.body.i:                                        ; preds = %if.end.i
    #dbg_value(ptr %3, !369, !DIExpression(), !2002)
    #dbg_value(ptr %4, !370, !DIExpression(), !2002)
    #dbg_value(i32 %2, !371, !DIExpression(), !2002)
  %d_cur.i.i = getelementptr inbounds i8, ptr %3, i64 48, !dbg !2004
  %5 = load i32, ptr %d_cur.i.i, align 8, !dbg !2004
  %add.i.i = add i32 %5, %2, !dbg !2005
    #dbg_value(i32 %add.i.i, !372, !DIExpression(), !2002)
  %d_max.i.i = getelementptr inbounds i8, ptr %3, i64 52, !dbg !2006
  %6 = load i32, ptr %d_max.i.i, align 4, !dbg !2006
  %cmp.i.i = icmp ugt i32 %add.i.i, %6, !dbg !2007
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end11_crit_edge.i.i, !dbg !2008

entry.if.end11_crit_edge.i.i:                     ; preds = %do.body.i
  %data12.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %3, i64 40
  %.pre.i.i = load ptr, ptr %data12.phi.trans.insert.i.i, align 8, !dbg !2009
  br label %mk_append_context_data.exit.i, !dbg !2008

if.then.i.i:                                      ; preds = %do.body.i
  %tobool.not.i.i = icmp eq i32 %6, 0, !dbg !2010
  %shl.i.i = shl i32 %6, 1
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 16, i32 %shl.i.i, !dbg !2010
    #dbg_value(i32 %spec.select.i.i, !375, !DIExpression(), !2011)
  br label %while.cond.i.i, !dbg !2012

while.cond.i.i:                                   ; preds = %while.cond.i.i, %if.then.i.i
  %dn.0.i.i = phi i32 [ %spec.select.i.i, %if.then.i.i ], [ %shl4.i.i, %while.cond.i.i ], !dbg !2011
    #dbg_value(i32 %dn.0.i.i, !375, !DIExpression(), !2011)
  %cmp3.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i, !dbg !2013
  %shl4.i.i = shl i32 %dn.0.i.i, 1, !dbg !2014
    #dbg_value(i32 %shl4.i.i, !375, !DIExpression(), !2011)
  br i1 %cmp3.i.i, label %while.cond.i.i, label %while.end.i.i, !dbg !2012, !llvm.loop !2015

while.end.i.i:                                    ; preds = %while.cond.i.i
  %data5.i.i = getelementptr inbounds i8, ptr %3, i64 40, !dbg !2017
  %7 = load ptr, ptr %data5.i.i, align 8, !dbg !2017
  %conv.i.i = zext i32 %dn.0.i.i to i64, !dbg !2018
  %call.i.i = tail call ptr @realloc(ptr noundef %7, i64 noundef %conv.i.i) #12, !dbg !2019
    #dbg_value(ptr %call.i.i, !373, !DIExpression(), !2011)
  %tobool6.not.not.i.i = icmp eq ptr %call.i.i, null, !dbg !2020
  br i1 %tobool6.not.not.i.i, label %return, label %if.end.i.i, !dbg !2021

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %data5.i.i, align 8, !dbg !2022
  store i32 %dn.0.i.i, ptr %d_max.i.i, align 4, !dbg !2023
  %.pre34.i.i = load i32, ptr %d_cur.i.i, align 8, !dbg !2024
  br label %mk_append_context_data.exit.i

mk_append_context_data.exit.i:                    ; preds = %if.end.i.i, %entry.if.end11_crit_edge.i.i
  %8 = phi i32 [ %5, %entry.if.end11_crit_edge.i.i ], [ %.pre34.i.i, %if.end.i.i ], !dbg !2024
  %9 = phi ptr [ %.pre.i.i, %entry.if.end11_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ], !dbg !2009
  %idx.ext.i.i = zext i32 %8 to i64, !dbg !2025
  %add.ptr.i.i = getelementptr inbounds i8, ptr %9, i64 %idx.ext.i.i, !dbg !2025
  %conv14.i.i = zext i32 %2 to i64, !dbg !2026
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i.i, ptr readonly align 1 %4, i64 %conv14.i.i, i1 false), !dbg !2027
  store i32 %add.i.i, ptr %d_cur.i.i, align 8, !dbg !2028
  br label %if.end14.i, !dbg !2029

if.else.i:                                        ; preds = %if.end.i
  %conv.i = zext i32 %2 to i64, !dbg !2030
  %owner.i = getelementptr inbounds i8, ptr %1, i64 24, !dbg !2031
  %10 = load ptr, ptr %owner.i, align 8, !dbg !2031
  %11 = load ptr, ptr %10, align 8, !dbg !2032
  %call9.i = tail call i64 @fwrite(ptr noundef %4, i64 noundef %conv.i, i64 noundef 1, ptr noundef %11), !dbg !2033
  %cmp10.not.i = icmp eq i64 %call9.i, 1, !dbg !2034
  br i1 %cmp10.not.i, label %if.end14.i, label %return, !dbg !2035

if.end14.i:                                       ; preds = %if.else.i, %mk_append_context_data.exit.i
  store i32 0, ptr %d_cur.i, align 8, !dbg !2036
  br label %return, !dbg !2037

return:                                           ; preds = %do.end, %if.end14.i, %if.else.i, %while.end.i.i, %do.body, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ -1, %do.body ], [ 0, %do.end ], [ 0, %if.end14.i ], [ -1, %if.else.i ], [ -1, %while.end.i.i ], !dbg !1980
  ret i32 %retval.0, !dbg !2038
}

; Function Attrs: nofree nounwind
declare !dbg !2039 noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !2042 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @mk_write_id(ptr nocapture noundef %c, i32 noundef %id) unnamed_addr #0 !dbg !350 {
entry:
    #dbg_value(ptr %c, !349, !DIExpression(), !2045)
    #dbg_value(i32 %id, !354, !DIExpression(), !2045)
  %shr = lshr i32 %id, 24, !dbg !2046
  %conv = trunc nuw i32 %shr to i8, !dbg !2047
    #dbg_value(i8 %conv, !355, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !2045)
  %shr1 = lshr i32 %id, 16, !dbg !2048
  %conv2 = trunc i32 %shr1 to i8, !dbg !2049
    #dbg_value(i8 %conv2, !355, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !2045)
  %shr4 = lshr i32 %id, 8, !dbg !2050
  %conv5 = trunc i32 %shr4 to i8, !dbg !2051
    #dbg_value(i8 %conv5, !355, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !2045)
  %conv7 = trunc i32 %id to i8, !dbg !2052
    #dbg_value(i8 %conv7, !355, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !2045)
  %tobool.not = icmp ult i32 %id, 16777216, !dbg !2053
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !2055

if.then:                                          ; preds = %entry
    #dbg_value(ptr %c, !369, !DIExpression(), !2056)
    #dbg_value(ptr undef, !370, !DIExpression(), !2056)
    #dbg_value(i32 4, !371, !DIExpression(), !2056)
  %d_cur.i = getelementptr inbounds i8, ptr %c, i64 48, !dbg !2058
  %0 = load i32, ptr %d_cur.i, align 8, !dbg !2058
  %add.i = add i32 %0, 4, !dbg !2059
    #dbg_value(i32 %add.i, !372, !DIExpression(), !2056)
  %d_max.i = getelementptr inbounds i8, ptr %c, i64 52, !dbg !2060
  %1 = load i32, ptr %d_max.i, align 4, !dbg !2060
  %cmp.i = icmp ugt i32 %add.i, %1, !dbg !2061
  br i1 %cmp.i, label %if.then.i, label %entry.if.end11_crit_edge.i, !dbg !2062

entry.if.end11_crit_edge.i:                       ; preds = %if.then
  %data12.phi.trans.insert.i = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i = load ptr, ptr %data12.phi.trans.insert.i, align 8, !dbg !2063
  br label %if.end11.i, !dbg !2062

if.then.i:                                        ; preds = %if.then
  %tobool.not.i = icmp eq i32 %1, 0, !dbg !2064
  %shl.i = shl i32 %1, 1
  %spec.select.i = select i1 %tobool.not.i, i32 16, i32 %shl.i, !dbg !2064
    #dbg_value(i32 %spec.select.i, !375, !DIExpression(), !2065)
  br label %while.cond.i, !dbg !2066

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i ], [ %shl4.i, %while.cond.i ], !dbg !2065
    #dbg_value(i32 %dn.0.i, !375, !DIExpression(), !2065)
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i, !dbg !2067
  %shl4.i = shl i32 %dn.0.i, 1, !dbg !2068
    #dbg_value(i32 %shl4.i, !375, !DIExpression(), !2065)
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i, !dbg !2066, !llvm.loop !2069

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds i8, ptr %c, i64 40, !dbg !2071
  %2 = load ptr, ptr %data5.i, align 8, !dbg !2071
  %conv.i = zext i32 %dn.0.i to i64, !dbg !2072
  %call.i = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv.i) #12, !dbg !2073
    #dbg_value(ptr %call.i, !373, !DIExpression(), !2065)
  %tobool6.not.not.i = icmp eq ptr %call.i, null, !dbg !2074
  br i1 %tobool6.not.not.i, label %cleanup, label %if.end.i, !dbg !2075

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %data5.i, align 8, !dbg !2076
  store i32 %dn.0.i, ptr %d_max.i, align 4, !dbg !2077
  %.pre34.i = load i32, ptr %d_cur.i, align 8, !dbg !2078
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i, %entry.if.end11_crit_edge.i
  %3 = phi i32 [ %0, %entry.if.end11_crit_edge.i ], [ %.pre34.i, %if.end.i ], !dbg !2078
  %4 = phi ptr [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i ], !dbg !2063
  %idx.ext.i = zext i32 %3 to i64, !dbg !2079
  %add.ptr.i = getelementptr inbounds i8, ptr %4, i64 %idx.ext.i, !dbg !2079
  store i8 %conv, ptr %add.ptr.i, align 1, !dbg !2080
  %c_id.sroa.5.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i64 1, !dbg !2080
  store i8 %conv2, ptr %c_id.sroa.5.0.add.ptr.i.sroa_idx, align 1, !dbg !2080
  %c_id.sroa.8.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i64 2, !dbg !2080
  store i8 %conv5, ptr %c_id.sroa.8.0.add.ptr.i.sroa_idx, align 1, !dbg !2080
  %c_id.sroa.11.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i64 3, !dbg !2080
  store i8 %conv7, ptr %c_id.sroa.11.0.add.ptr.i.sroa_idx, align 1, !dbg !2080
  store i32 %add.i, ptr %d_cur.i, align 8, !dbg !2081
  br label %cleanup, !dbg !2082

if.end:                                           ; preds = %entry
  %tobool9.not = icmp eq i8 %conv2, 0, !dbg !2083
  %d_max.i86 = getelementptr inbounds i8, ptr %c, i64 52, !dbg !2085
  %5 = load i32, ptr %d_max.i86, align 4, !dbg !2085
  br i1 %tobool9.not, label %if.end13, label %if.then10, !dbg !2086

if.then10:                                        ; preds = %if.end
    #dbg_value(ptr %c, !369, !DIExpression(), !2087)
    #dbg_value(ptr undef, !370, !DIExpression(), !2087)
    #dbg_value(i32 3, !371, !DIExpression(), !2087)
  %d_cur.i30 = getelementptr inbounds i8, ptr %c, i64 48, !dbg !2089
  %6 = load i32, ptr %d_cur.i30, align 8, !dbg !2089
  %add.i31 = add i32 %6, 3, !dbg !2090
    #dbg_value(i32 %add.i31, !372, !DIExpression(), !2087)
  %cmp.i33 = icmp ugt i32 %add.i31, %5, !dbg !2091
  br i1 %cmp.i33, label %if.then.i41, label %entry.if.end11_crit_edge.i34, !dbg !2092

entry.if.end11_crit_edge.i34:                     ; preds = %if.then10
  %data12.phi.trans.insert.i35 = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i36 = load ptr, ptr %data12.phi.trans.insert.i35, align 8, !dbg !2093
  br label %if.end11.i37, !dbg !2092

if.then.i41:                                      ; preds = %if.then10
  %tobool.not.i42 = icmp eq i32 %5, 0, !dbg !2094
  %shl.i43 = shl i32 %5, 1
  %spec.select.i44 = select i1 %tobool.not.i42, i32 16, i32 %shl.i43, !dbg !2094
    #dbg_value(i32 %spec.select.i44, !375, !DIExpression(), !2095)
  br label %while.cond.i45, !dbg !2096

while.cond.i45:                                   ; preds = %while.cond.i45, %if.then.i41
  %dn.0.i46 = phi i32 [ %spec.select.i44, %if.then.i41 ], [ %shl4.i48, %while.cond.i45 ], !dbg !2095
    #dbg_value(i32 %dn.0.i46, !375, !DIExpression(), !2095)
  %cmp3.i47 = icmp ugt i32 %add.i31, %dn.0.i46, !dbg !2097
  %shl4.i48 = shl i32 %dn.0.i46, 1, !dbg !2098
    #dbg_value(i32 %shl4.i48, !375, !DIExpression(), !2095)
  br i1 %cmp3.i47, label %while.cond.i45, label %while.end.i49, !dbg !2096, !llvm.loop !2099

while.end.i49:                                    ; preds = %while.cond.i45
  %data5.i50 = getelementptr inbounds i8, ptr %c, i64 40, !dbg !2101
  %7 = load ptr, ptr %data5.i50, align 8, !dbg !2101
  %conv.i51 = zext i32 %dn.0.i46 to i64, !dbg !2102
  %call.i52 = tail call ptr @realloc(ptr noundef %7, i64 noundef %conv.i51) #12, !dbg !2103
    #dbg_value(ptr %call.i52, !373, !DIExpression(), !2095)
  %tobool6.not.not.i53 = icmp eq ptr %call.i52, null, !dbg !2104
  br i1 %tobool6.not.not.i53, label %cleanup, label %if.end.i54, !dbg !2105

if.end.i54:                                       ; preds = %while.end.i49
  store ptr %call.i52, ptr %data5.i50, align 8, !dbg !2106
  store i32 %dn.0.i46, ptr %d_max.i86, align 4, !dbg !2107
  %.pre34.i55 = load i32, ptr %d_cur.i30, align 8, !dbg !2108
  br label %if.end11.i37

if.end11.i37:                                     ; preds = %if.end.i54, %entry.if.end11_crit_edge.i34
  %8 = phi i32 [ %6, %entry.if.end11_crit_edge.i34 ], [ %.pre34.i55, %if.end.i54 ], !dbg !2108
  %9 = phi ptr [ %.pre.i36, %entry.if.end11_crit_edge.i34 ], [ %call.i52, %if.end.i54 ], !dbg !2093
  %idx.ext.i38 = zext i32 %8 to i64, !dbg !2109
  %add.ptr.i39 = getelementptr inbounds i8, ptr %9, i64 %idx.ext.i38, !dbg !2109
  store i8 %conv2, ptr %add.ptr.i39, align 1, !dbg !2110
  %c_id.sroa.8.1.add.ptr.i39.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i39, i64 1, !dbg !2110
  store i8 %conv5, ptr %c_id.sroa.8.1.add.ptr.i39.sroa_idx, align 1, !dbg !2110
  %c_id.sroa.11.1.add.ptr.i39.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i39, i64 2, !dbg !2110
  store i8 %conv7, ptr %c_id.sroa.11.1.add.ptr.i39.sroa_idx, align 1, !dbg !2110
  store i32 %add.i31, ptr %d_cur.i30, align 8, !dbg !2111
  br label %cleanup, !dbg !2112

if.end13:                                         ; preds = %if.end
  %tobool15.not = icmp eq i8 %conv5, 0, !dbg !2113
    #dbg_value(ptr %c, !369, !DIExpression(), !2114)
    #dbg_value(ptr %c, !369, !DIExpression(), !2116)
    #dbg_value(ptr undef, !370, !DIExpression(), !2114)
    #dbg_value(ptr undef, !370, !DIExpression(), !2116)
  %d_cur.i84 = getelementptr inbounds i8, ptr %c, i64 48, !dbg !2118
  %10 = load i32, ptr %d_cur.i84, align 8, !dbg !2118
  br i1 %tobool15.not, label %if.end20, label %if.then16, !dbg !2119

if.then16:                                        ; preds = %if.end13
    #dbg_value(i32 2, !371, !DIExpression(), !2116)
  %add.i58 = add i32 %10, 2, !dbg !2120
    #dbg_value(i32 %add.i58, !372, !DIExpression(), !2116)
  %cmp.i60 = icmp ugt i32 %add.i58, %5, !dbg !2121
  br i1 %cmp.i60, label %if.then.i68, label %entry.if.end11_crit_edge.i61, !dbg !2122

entry.if.end11_crit_edge.i61:                     ; preds = %if.then16
  %data12.phi.trans.insert.i62 = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i63 = load ptr, ptr %data12.phi.trans.insert.i62, align 8, !dbg !2123
  br label %if.end11.i64, !dbg !2122

if.then.i68:                                      ; preds = %if.then16
  %tobool.not.i69 = icmp eq i32 %5, 0, !dbg !2124
  %shl.i70 = shl i32 %5, 1
  %spec.select.i71 = select i1 %tobool.not.i69, i32 16, i32 %shl.i70, !dbg !2124
    #dbg_value(i32 %spec.select.i71, !375, !DIExpression(), !2125)
  br label %while.cond.i72, !dbg !2126

while.cond.i72:                                   ; preds = %while.cond.i72, %if.then.i68
  %dn.0.i73 = phi i32 [ %spec.select.i71, %if.then.i68 ], [ %shl4.i75, %while.cond.i72 ], !dbg !2125
    #dbg_value(i32 %dn.0.i73, !375, !DIExpression(), !2125)
  %cmp3.i74 = icmp ugt i32 %add.i58, %dn.0.i73, !dbg !2127
  %shl4.i75 = shl i32 %dn.0.i73, 1, !dbg !2128
    #dbg_value(i32 %shl4.i75, !375, !DIExpression(), !2125)
  br i1 %cmp3.i74, label %while.cond.i72, label %while.end.i76, !dbg !2126, !llvm.loop !2129

while.end.i76:                                    ; preds = %while.cond.i72
  %data5.i77 = getelementptr inbounds i8, ptr %c, i64 40, !dbg !2131
  %11 = load ptr, ptr %data5.i77, align 8, !dbg !2131
  %conv.i78 = zext i32 %dn.0.i73 to i64, !dbg !2132
  %call.i79 = tail call ptr @realloc(ptr noundef %11, i64 noundef %conv.i78) #12, !dbg !2133
    #dbg_value(ptr %call.i79, !373, !DIExpression(), !2125)
  %tobool6.not.not.i80 = icmp eq ptr %call.i79, null, !dbg !2134
  br i1 %tobool6.not.not.i80, label %cleanup, label %if.end.i81, !dbg !2135

if.end.i81:                                       ; preds = %while.end.i76
  store ptr %call.i79, ptr %data5.i77, align 8, !dbg !2136
  store i32 %dn.0.i73, ptr %d_max.i86, align 4, !dbg !2137
  %.pre34.i82 = load i32, ptr %d_cur.i84, align 8, !dbg !2138
  br label %if.end11.i64

if.end11.i64:                                     ; preds = %if.end.i81, %entry.if.end11_crit_edge.i61
  %12 = phi i32 [ %10, %entry.if.end11_crit_edge.i61 ], [ %.pre34.i82, %if.end.i81 ], !dbg !2138
  %13 = phi ptr [ %.pre.i63, %entry.if.end11_crit_edge.i61 ], [ %call.i79, %if.end.i81 ], !dbg !2123
  %idx.ext.i65 = zext i32 %12 to i64, !dbg !2139
  %add.ptr.i66 = getelementptr inbounds i8, ptr %13, i64 %idx.ext.i65, !dbg !2139
  store i8 %conv5, ptr %add.ptr.i66, align 1, !dbg !2140
  %c_id.sroa.11.2.add.ptr.i66.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i66, i64 1, !dbg !2140
  store i8 %conv7, ptr %c_id.sroa.11.2.add.ptr.i66.sroa_idx, align 1, !dbg !2140
  store i32 %add.i58, ptr %d_cur.i84, align 8, !dbg !2141
  br label %cleanup, !dbg !2142

if.end20:                                         ; preds = %if.end13
    #dbg_value(i32 1, !371, !DIExpression(), !2114)
  %add.i85 = add i32 %10, 1, !dbg !2143
    #dbg_value(i32 %add.i85, !372, !DIExpression(), !2114)
  %cmp.i87 = icmp ugt i32 %add.i85, %5, !dbg !2144
  br i1 %cmp.i87, label %if.then.i95, label %entry.if.end11_crit_edge.i88, !dbg !2145

entry.if.end11_crit_edge.i88:                     ; preds = %if.end20
  %data12.phi.trans.insert.i89 = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i90 = load ptr, ptr %data12.phi.trans.insert.i89, align 8, !dbg !2146
  br label %if.end11.i91, !dbg !2145

if.then.i95:                                      ; preds = %if.end20
  %tobool.not.i96 = icmp eq i32 %5, 0, !dbg !2147
  %shl.i97 = shl i32 %5, 1
  %spec.select.i98 = select i1 %tobool.not.i96, i32 16, i32 %shl.i97, !dbg !2147
    #dbg_value(i32 %spec.select.i98, !375, !DIExpression(), !2148)
  br label %while.cond.i99, !dbg !2149

while.cond.i99:                                   ; preds = %while.cond.i99, %if.then.i95
  %dn.0.i100 = phi i32 [ %spec.select.i98, %if.then.i95 ], [ %shl4.i102, %while.cond.i99 ], !dbg !2148
    #dbg_value(i32 %dn.0.i100, !375, !DIExpression(), !2148)
  %cmp3.i101 = icmp ugt i32 %add.i85, %dn.0.i100, !dbg !2150
  %shl4.i102 = shl i32 %dn.0.i100, 1, !dbg !2151
    #dbg_value(i32 %shl4.i102, !375, !DIExpression(), !2148)
  br i1 %cmp3.i101, label %while.cond.i99, label %while.end.i103, !dbg !2149, !llvm.loop !2152

while.end.i103:                                   ; preds = %while.cond.i99
  %data5.i104 = getelementptr inbounds i8, ptr %c, i64 40, !dbg !2154
  %14 = load ptr, ptr %data5.i104, align 8, !dbg !2154
  %conv.i105 = zext i32 %dn.0.i100 to i64, !dbg !2155
  %call.i106 = tail call ptr @realloc(ptr noundef %14, i64 noundef %conv.i105) #12, !dbg !2156
    #dbg_value(ptr %call.i106, !373, !DIExpression(), !2148)
  %tobool6.not.not.i107 = icmp eq ptr %call.i106, null, !dbg !2157
  br i1 %tobool6.not.not.i107, label %cleanup, label %if.end.i108, !dbg !2158

if.end.i108:                                      ; preds = %while.end.i103
  store ptr %call.i106, ptr %data5.i104, align 8, !dbg !2159
  store i32 %dn.0.i100, ptr %d_max.i86, align 4, !dbg !2160
  %.pre34.i109 = load i32, ptr %d_cur.i84, align 8, !dbg !2161
  br label %if.end11.i91

if.end11.i91:                                     ; preds = %if.end.i108, %entry.if.end11_crit_edge.i88
  %15 = phi i32 [ %10, %entry.if.end11_crit_edge.i88 ], [ %.pre34.i109, %if.end.i108 ], !dbg !2161
  %16 = phi ptr [ %.pre.i90, %entry.if.end11_crit_edge.i88 ], [ %call.i106, %if.end.i108 ], !dbg !2146
  %idx.ext.i92 = zext i32 %15 to i64, !dbg !2162
  %add.ptr.i93 = getelementptr inbounds i8, ptr %16, i64 %idx.ext.i92, !dbg !2162
  store i8 %conv7, ptr %add.ptr.i93, align 1, !dbg !2163
  store i32 %add.i85, ptr %d_cur.i84, align 8, !dbg !2164
  br label %cleanup, !dbg !2165

cleanup:                                          ; preds = %if.end11.i91, %while.end.i103, %if.end11.i64, %while.end.i76, %if.end11.i37, %while.end.i49, %if.end11.i, %while.end.i
  %retval.0 = phi i32 [ 0, %if.end11.i ], [ -1, %while.end.i ], [ 0, %if.end11.i37 ], [ -1, %while.end.i49 ], [ 0, %if.end11.i64 ], [ -1, %while.end.i76 ], [ 0, %if.end11.i91 ], [ -1, %while.end.i103 ], !dbg !2045
  ret i32 %retval.0, !dbg !2166
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @mk_write_size(ptr nocapture noundef %c, i32 noundef %size) unnamed_addr #0 !dbg !407 {
entry:
    #dbg_value(ptr %c, !406, !DIExpression(), !2167)
    #dbg_value(i32 %size, !409, !DIExpression(), !2167)
    #dbg_value(i8 8, !410, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !2167)
  %shr = lshr i32 %size, 24, !dbg !2168
  %conv = trunc nuw i32 %shr to i8, !dbg !2169
    #dbg_value(i8 %conv, !410, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !2167)
  %shr2 = lshr i32 %size, 16, !dbg !2170
  %conv3 = trunc i32 %shr2 to i8, !dbg !2171
    #dbg_value(i8 %conv3, !410, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !2167)
  %shr5 = lshr i32 %size, 8, !dbg !2172
  %conv6 = trunc i32 %shr5 to i8, !dbg !2173
    #dbg_value(i8 %conv6, !410, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !2167)
  %conv8 = trunc i32 %size to i8, !dbg !2174
    #dbg_value(i8 %conv8, !410, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !2167)
  %cmp = icmp ult i32 %size, 127, !dbg !2175
  br i1 %cmp, label %if.then, label %if.end, !dbg !2176

if.then:                                          ; preds = %entry
  %conv11 = or disjoint i8 %conv8, -128, !dbg !2177
    #dbg_value(i8 %conv11, !410, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !2167)
    #dbg_value(ptr %c, !369, !DIExpression(), !2178)
    #dbg_value(ptr undef, !370, !DIExpression(), !2178)
    #dbg_value(i32 1, !371, !DIExpression(), !2178)
  %d_cur.i = getelementptr inbounds i8, ptr %c, i64 48, !dbg !2180
  %0 = load i32, ptr %d_cur.i, align 8, !dbg !2180
  %add.i = add i32 %0, 1, !dbg !2181
    #dbg_value(i32 %add.i, !372, !DIExpression(), !2178)
  %d_max.i = getelementptr inbounds i8, ptr %c, i64 52, !dbg !2182
  %1 = load i32, ptr %d_max.i, align 4, !dbg !2182
  %cmp.i = icmp ugt i32 %add.i, %1, !dbg !2183
  br i1 %cmp.i, label %if.then.i, label %entry.if.end11_crit_edge.i, !dbg !2184

entry.if.end11_crit_edge.i:                       ; preds = %if.then
  %data12.phi.trans.insert.i = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i = load ptr, ptr %data12.phi.trans.insert.i, align 8, !dbg !2185
  br label %if.end11.i, !dbg !2184

if.then.i:                                        ; preds = %if.then
  %tobool.not.i = icmp eq i32 %1, 0, !dbg !2186
  %shl.i = shl i32 %1, 1
  %spec.select.i = select i1 %tobool.not.i, i32 16, i32 %shl.i, !dbg !2186
    #dbg_value(i32 %spec.select.i, !375, !DIExpression(), !2187)
  br label %while.cond.i, !dbg !2188

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i ], [ %shl4.i, %while.cond.i ], !dbg !2187
    #dbg_value(i32 %dn.0.i, !375, !DIExpression(), !2187)
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i, !dbg !2189
  %shl4.i = shl i32 %dn.0.i, 1, !dbg !2190
    #dbg_value(i32 %shl4.i, !375, !DIExpression(), !2187)
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i, !dbg !2188, !llvm.loop !2191

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds i8, ptr %c, i64 40, !dbg !2193
  %2 = load ptr, ptr %data5.i, align 8, !dbg !2193
  %conv.i = zext i32 %dn.0.i to i64, !dbg !2194
  %call.i = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv.i) #12, !dbg !2195
    #dbg_value(ptr %call.i, !373, !DIExpression(), !2187)
  %tobool6.not.not.i = icmp eq ptr %call.i, null, !dbg !2196
  br i1 %tobool6.not.not.i, label %cleanup, label %if.end.i, !dbg !2197

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %data5.i, align 8, !dbg !2198
  store i32 %dn.0.i, ptr %d_max.i, align 4, !dbg !2199
  %.pre34.i = load i32, ptr %d_cur.i, align 8, !dbg !2200
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i, %entry.if.end11_crit_edge.i
  %3 = phi i32 [ %0, %entry.if.end11_crit_edge.i ], [ %.pre34.i, %if.end.i ], !dbg !2200
  %4 = phi ptr [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i ], !dbg !2185
  %idx.ext.i = zext i32 %3 to i64, !dbg !2201
  %add.ptr.i = getelementptr inbounds i8, ptr %4, i64 %idx.ext.i, !dbg !2201
  store i8 %conv11, ptr %add.ptr.i, align 1, !dbg !2202
  store i32 %add.i, ptr %d_cur.i, align 8, !dbg !2203
  br label %cleanup, !dbg !2204

if.end:                                           ; preds = %entry
  %cmp12 = icmp ult i32 %size, 16383, !dbg !2205
  br i1 %cmp12, label %if.then14, label %if.end22, !dbg !2207

if.then14:                                        ; preds = %if.end
  %5 = or disjoint i8 %conv6, 64, !dbg !2208
    #dbg_value(i8 %5, !410, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !2167)
    #dbg_value(ptr %c, !369, !DIExpression(), !2210)
    #dbg_value(ptr undef, !370, !DIExpression(), !2210)
    #dbg_value(i32 2, !371, !DIExpression(), !2210)
  %d_cur.i58 = getelementptr inbounds i8, ptr %c, i64 48, !dbg !2212
  %6 = load i32, ptr %d_cur.i58, align 8, !dbg !2212
  %add.i59 = add i32 %6, 2, !dbg !2213
    #dbg_value(i32 %add.i59, !372, !DIExpression(), !2210)
  %d_max.i60 = getelementptr inbounds i8, ptr %c, i64 52, !dbg !2214
  %7 = load i32, ptr %d_max.i60, align 4, !dbg !2214
  %cmp.i61 = icmp ugt i32 %add.i59, %7, !dbg !2215
  br i1 %cmp.i61, label %if.then.i69, label %entry.if.end11_crit_edge.i62, !dbg !2216

entry.if.end11_crit_edge.i62:                     ; preds = %if.then14
  %data12.phi.trans.insert.i63 = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i64 = load ptr, ptr %data12.phi.trans.insert.i63, align 8, !dbg !2217
  br label %if.end11.i65, !dbg !2216

if.then.i69:                                      ; preds = %if.then14
  %tobool.not.i70 = icmp eq i32 %7, 0, !dbg !2218
  %shl.i71 = shl i32 %7, 1
  %spec.select.i72 = select i1 %tobool.not.i70, i32 16, i32 %shl.i71, !dbg !2218
    #dbg_value(i32 %spec.select.i72, !375, !DIExpression(), !2219)
  br label %while.cond.i73, !dbg !2220

while.cond.i73:                                   ; preds = %while.cond.i73, %if.then.i69
  %dn.0.i74 = phi i32 [ %spec.select.i72, %if.then.i69 ], [ %shl4.i76, %while.cond.i73 ], !dbg !2219
    #dbg_value(i32 %dn.0.i74, !375, !DIExpression(), !2219)
  %cmp3.i75 = icmp ugt i32 %add.i59, %dn.0.i74, !dbg !2221
  %shl4.i76 = shl i32 %dn.0.i74, 1, !dbg !2222
    #dbg_value(i32 %shl4.i76, !375, !DIExpression(), !2219)
  br i1 %cmp3.i75, label %while.cond.i73, label %while.end.i77, !dbg !2220, !llvm.loop !2223

while.end.i77:                                    ; preds = %while.cond.i73
  %data5.i78 = getelementptr inbounds i8, ptr %c, i64 40, !dbg !2225
  %8 = load ptr, ptr %data5.i78, align 8, !dbg !2225
  %conv.i79 = zext i32 %dn.0.i74 to i64, !dbg !2226
  %call.i80 = tail call ptr @realloc(ptr noundef %8, i64 noundef %conv.i79) #12, !dbg !2227
    #dbg_value(ptr %call.i80, !373, !DIExpression(), !2219)
  %tobool6.not.not.i81 = icmp eq ptr %call.i80, null, !dbg !2228
  br i1 %tobool6.not.not.i81, label %cleanup, label %if.end.i82, !dbg !2229

if.end.i82:                                       ; preds = %while.end.i77
  store ptr %call.i80, ptr %data5.i78, align 8, !dbg !2230
  store i32 %dn.0.i74, ptr %d_max.i60, align 4, !dbg !2231
  %.pre34.i83 = load i32, ptr %d_cur.i58, align 8, !dbg !2232
  br label %if.end11.i65

if.end11.i65:                                     ; preds = %if.end.i82, %entry.if.end11_crit_edge.i62
  %9 = phi i32 [ %6, %entry.if.end11_crit_edge.i62 ], [ %.pre34.i83, %if.end.i82 ], !dbg !2232
  %10 = phi ptr [ %.pre.i64, %entry.if.end11_crit_edge.i62 ], [ %call.i80, %if.end.i82 ], !dbg !2217
  %idx.ext.i66 = zext i32 %9 to i64, !dbg !2233
  %add.ptr.i67 = getelementptr inbounds i8, ptr %10, i64 %idx.ext.i66, !dbg !2233
  store i8 %5, ptr %add.ptr.i67, align 1, !dbg !2234
  %c_size.sroa.16.3.add.ptr.i67.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i67, i64 1, !dbg !2234
  store i8 %conv8, ptr %c_size.sroa.16.3.add.ptr.i67.sroa_idx, align 1, !dbg !2234
  store i32 %add.i59, ptr %d_cur.i58, align 8, !dbg !2235
  br label %cleanup, !dbg !2236

if.end22:                                         ; preds = %if.end
  %cmp23 = icmp ult i32 %size, 2097151, !dbg !2237
  br i1 %cmp23, label %if.then25, label %if.end33, !dbg !2239

if.then25:                                        ; preds = %if.end22
  %11 = or disjoint i8 %conv3, 32, !dbg !2240
    #dbg_value(i8 %11, !410, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !2167)
    #dbg_value(ptr %c, !369, !DIExpression(), !2242)
    #dbg_value(ptr undef, !370, !DIExpression(), !2242)
    #dbg_value(i32 3, !371, !DIExpression(), !2242)
  %d_cur.i85 = getelementptr inbounds i8, ptr %c, i64 48, !dbg !2244
  %12 = load i32, ptr %d_cur.i85, align 8, !dbg !2244
  %add.i86 = add i32 %12, 3, !dbg !2245
    #dbg_value(i32 %add.i86, !372, !DIExpression(), !2242)
  %d_max.i87 = getelementptr inbounds i8, ptr %c, i64 52, !dbg !2246
  %13 = load i32, ptr %d_max.i87, align 4, !dbg !2246
  %cmp.i88 = icmp ugt i32 %add.i86, %13, !dbg !2247
  br i1 %cmp.i88, label %if.then.i96, label %entry.if.end11_crit_edge.i89, !dbg !2248

entry.if.end11_crit_edge.i89:                     ; preds = %if.then25
  %data12.phi.trans.insert.i90 = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i91 = load ptr, ptr %data12.phi.trans.insert.i90, align 8, !dbg !2249
  br label %if.end11.i92, !dbg !2248

if.then.i96:                                      ; preds = %if.then25
  %tobool.not.i97 = icmp eq i32 %13, 0, !dbg !2250
  %shl.i98 = shl i32 %13, 1
  %spec.select.i99 = select i1 %tobool.not.i97, i32 16, i32 %shl.i98, !dbg !2250
    #dbg_value(i32 %spec.select.i99, !375, !DIExpression(), !2251)
  br label %while.cond.i100, !dbg !2252

while.cond.i100:                                  ; preds = %while.cond.i100, %if.then.i96
  %dn.0.i101 = phi i32 [ %spec.select.i99, %if.then.i96 ], [ %shl4.i103, %while.cond.i100 ], !dbg !2251
    #dbg_value(i32 %dn.0.i101, !375, !DIExpression(), !2251)
  %cmp3.i102 = icmp ugt i32 %add.i86, %dn.0.i101, !dbg !2253
  %shl4.i103 = shl i32 %dn.0.i101, 1, !dbg !2254
    #dbg_value(i32 %shl4.i103, !375, !DIExpression(), !2251)
  br i1 %cmp3.i102, label %while.cond.i100, label %while.end.i104, !dbg !2252, !llvm.loop !2255

while.end.i104:                                   ; preds = %while.cond.i100
  %data5.i105 = getelementptr inbounds i8, ptr %c, i64 40, !dbg !2257
  %14 = load ptr, ptr %data5.i105, align 8, !dbg !2257
  %conv.i106 = zext i32 %dn.0.i101 to i64, !dbg !2258
  %call.i107 = tail call ptr @realloc(ptr noundef %14, i64 noundef %conv.i106) #12, !dbg !2259
    #dbg_value(ptr %call.i107, !373, !DIExpression(), !2251)
  %tobool6.not.not.i108 = icmp eq ptr %call.i107, null, !dbg !2260
  br i1 %tobool6.not.not.i108, label %cleanup, label %if.end.i109, !dbg !2261

if.end.i109:                                      ; preds = %while.end.i104
  store ptr %call.i107, ptr %data5.i105, align 8, !dbg !2262
  store i32 %dn.0.i101, ptr %d_max.i87, align 4, !dbg !2263
  %.pre34.i110 = load i32, ptr %d_cur.i85, align 8, !dbg !2264
  br label %if.end11.i92

if.end11.i92:                                     ; preds = %if.end.i109, %entry.if.end11_crit_edge.i89
  %15 = phi i32 [ %12, %entry.if.end11_crit_edge.i89 ], [ %.pre34.i110, %if.end.i109 ], !dbg !2264
  %16 = phi ptr [ %.pre.i91, %entry.if.end11_crit_edge.i89 ], [ %call.i107, %if.end.i109 ], !dbg !2249
  %idx.ext.i93 = zext i32 %15 to i64, !dbg !2265
  %add.ptr.i94 = getelementptr inbounds i8, ptr %16, i64 %idx.ext.i93, !dbg !2265
  store i8 %11, ptr %add.ptr.i94, align 1, !dbg !2266
  %c_size.sroa.12.2.add.ptr.i94.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i94, i64 1, !dbg !2266
  store i8 %conv6, ptr %c_size.sroa.12.2.add.ptr.i94.sroa_idx, align 1, !dbg !2266
  %c_size.sroa.16.2.add.ptr.i94.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i94, i64 2, !dbg !2266
  store i8 %conv8, ptr %c_size.sroa.16.2.add.ptr.i94.sroa_idx, align 1, !dbg !2266
  store i32 %add.i86, ptr %d_cur.i85, align 8, !dbg !2267
  br label %cleanup, !dbg !2268

if.end33:                                         ; preds = %if.end22
  %cmp34 = icmp ult i32 %size, 268435455, !dbg !2269
  br i1 %cmp34, label %if.then36, label %if.end44, !dbg !2271

if.then36:                                        ; preds = %if.end33
  %17 = or disjoint i8 %conv, 16, !dbg !2272
    #dbg_value(i8 %17, !410, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !2167)
    #dbg_value(ptr %c, !369, !DIExpression(), !2274)
    #dbg_value(ptr undef, !370, !DIExpression(), !2274)
    #dbg_value(i32 4, !371, !DIExpression(), !2274)
  %d_cur.i112 = getelementptr inbounds i8, ptr %c, i64 48, !dbg !2276
  %18 = load i32, ptr %d_cur.i112, align 8, !dbg !2276
  %add.i113 = add i32 %18, 4, !dbg !2277
    #dbg_value(i32 %add.i113, !372, !DIExpression(), !2274)
  %d_max.i114 = getelementptr inbounds i8, ptr %c, i64 52, !dbg !2278
  %19 = load i32, ptr %d_max.i114, align 4, !dbg !2278
  %cmp.i115 = icmp ugt i32 %add.i113, %19, !dbg !2279
  br i1 %cmp.i115, label %if.then.i123, label %entry.if.end11_crit_edge.i116, !dbg !2280

entry.if.end11_crit_edge.i116:                    ; preds = %if.then36
  %data12.phi.trans.insert.i117 = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i118 = load ptr, ptr %data12.phi.trans.insert.i117, align 8, !dbg !2281
  br label %if.end11.i119, !dbg !2280

if.then.i123:                                     ; preds = %if.then36
  %tobool.not.i124 = icmp eq i32 %19, 0, !dbg !2282
  %shl.i125 = shl i32 %19, 1
  %spec.select.i126 = select i1 %tobool.not.i124, i32 16, i32 %shl.i125, !dbg !2282
    #dbg_value(i32 %spec.select.i126, !375, !DIExpression(), !2283)
  br label %while.cond.i127, !dbg !2284

while.cond.i127:                                  ; preds = %while.cond.i127, %if.then.i123
  %dn.0.i128 = phi i32 [ %spec.select.i126, %if.then.i123 ], [ %shl4.i130, %while.cond.i127 ], !dbg !2283
    #dbg_value(i32 %dn.0.i128, !375, !DIExpression(), !2283)
  %cmp3.i129 = icmp ugt i32 %add.i113, %dn.0.i128, !dbg !2285
  %shl4.i130 = shl i32 %dn.0.i128, 1, !dbg !2286
    #dbg_value(i32 %shl4.i130, !375, !DIExpression(), !2283)
  br i1 %cmp3.i129, label %while.cond.i127, label %while.end.i131, !dbg !2284, !llvm.loop !2287

while.end.i131:                                   ; preds = %while.cond.i127
  %data5.i132 = getelementptr inbounds i8, ptr %c, i64 40, !dbg !2289
  %20 = load ptr, ptr %data5.i132, align 8, !dbg !2289
  %conv.i133 = zext i32 %dn.0.i128 to i64, !dbg !2290
  %call.i134 = tail call ptr @realloc(ptr noundef %20, i64 noundef %conv.i133) #12, !dbg !2291
    #dbg_value(ptr %call.i134, !373, !DIExpression(), !2283)
  %tobool6.not.not.i135 = icmp eq ptr %call.i134, null, !dbg !2292
  br i1 %tobool6.not.not.i135, label %cleanup, label %if.end.i136, !dbg !2293

if.end.i136:                                      ; preds = %while.end.i131
  store ptr %call.i134, ptr %data5.i132, align 8, !dbg !2294
  store i32 %dn.0.i128, ptr %d_max.i114, align 4, !dbg !2295
  %.pre34.i137 = load i32, ptr %d_cur.i112, align 8, !dbg !2296
  br label %if.end11.i119

if.end11.i119:                                    ; preds = %if.end.i136, %entry.if.end11_crit_edge.i116
  %21 = phi i32 [ %18, %entry.if.end11_crit_edge.i116 ], [ %.pre34.i137, %if.end.i136 ], !dbg !2296
  %22 = phi ptr [ %.pre.i118, %entry.if.end11_crit_edge.i116 ], [ %call.i134, %if.end.i136 ], !dbg !2281
  %idx.ext.i120 = zext i32 %21 to i64, !dbg !2297
  %add.ptr.i121 = getelementptr inbounds i8, ptr %22, i64 %idx.ext.i120, !dbg !2297
  store i8 %17, ptr %add.ptr.i121, align 1, !dbg !2298
  %c_size.sroa.8.1.add.ptr.i121.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i121, i64 1, !dbg !2298
  store i8 %conv3, ptr %c_size.sroa.8.1.add.ptr.i121.sroa_idx, align 1, !dbg !2298
  %c_size.sroa.12.1.add.ptr.i121.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i121, i64 2, !dbg !2298
  store i8 %conv6, ptr %c_size.sroa.12.1.add.ptr.i121.sroa_idx, align 1, !dbg !2298
  %c_size.sroa.16.1.add.ptr.i121.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i121, i64 3, !dbg !2298
  store i8 %conv8, ptr %c_size.sroa.16.1.add.ptr.i121.sroa_idx, align 1, !dbg !2298
  store i32 %add.i113, ptr %d_cur.i112, align 8, !dbg !2299
  br label %cleanup, !dbg !2300

if.end44:                                         ; preds = %if.end33
    #dbg_value(ptr %c, !369, !DIExpression(), !2301)
    #dbg_value(ptr undef, !370, !DIExpression(), !2301)
    #dbg_value(i32 5, !371, !DIExpression(), !2301)
  %d_cur.i139 = getelementptr inbounds i8, ptr %c, i64 48, !dbg !2303
  %23 = load i32, ptr %d_cur.i139, align 8, !dbg !2303
  %add.i140 = add i32 %23, 5, !dbg !2304
    #dbg_value(i32 %add.i140, !372, !DIExpression(), !2301)
  %d_max.i141 = getelementptr inbounds i8, ptr %c, i64 52, !dbg !2305
  %24 = load i32, ptr %d_max.i141, align 4, !dbg !2305
  %cmp.i142 = icmp ugt i32 %add.i140, %24, !dbg !2306
  br i1 %cmp.i142, label %if.then.i150, label %entry.if.end11_crit_edge.i143, !dbg !2307

entry.if.end11_crit_edge.i143:                    ; preds = %if.end44
  %data12.phi.trans.insert.i144 = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i145 = load ptr, ptr %data12.phi.trans.insert.i144, align 8, !dbg !2308
  br label %if.end11.i146, !dbg !2307

if.then.i150:                                     ; preds = %if.end44
  %tobool.not.i151 = icmp eq i32 %24, 0, !dbg !2309
  %shl.i152 = shl i32 %24, 1
  %spec.select.i153 = select i1 %tobool.not.i151, i32 16, i32 %shl.i152, !dbg !2309
    #dbg_value(i32 %spec.select.i153, !375, !DIExpression(), !2310)
  br label %while.cond.i154, !dbg !2311

while.cond.i154:                                  ; preds = %while.cond.i154, %if.then.i150
  %dn.0.i155 = phi i32 [ %spec.select.i153, %if.then.i150 ], [ %shl4.i157, %while.cond.i154 ], !dbg !2310
    #dbg_value(i32 %dn.0.i155, !375, !DIExpression(), !2310)
  %cmp3.i156 = icmp ugt i32 %add.i140, %dn.0.i155, !dbg !2312
  %shl4.i157 = shl i32 %dn.0.i155, 1, !dbg !2313
    #dbg_value(i32 %shl4.i157, !375, !DIExpression(), !2310)
  br i1 %cmp3.i156, label %while.cond.i154, label %while.end.i158, !dbg !2311, !llvm.loop !2314

while.end.i158:                                   ; preds = %while.cond.i154
  %data5.i159 = getelementptr inbounds i8, ptr %c, i64 40, !dbg !2316
  %25 = load ptr, ptr %data5.i159, align 8, !dbg !2316
  %conv.i160 = zext i32 %dn.0.i155 to i64, !dbg !2317
  %call.i161 = tail call ptr @realloc(ptr noundef %25, i64 noundef %conv.i160) #12, !dbg !2318
    #dbg_value(ptr %call.i161, !373, !DIExpression(), !2310)
  %tobool6.not.not.i162 = icmp eq ptr %call.i161, null, !dbg !2319
  br i1 %tobool6.not.not.i162, label %cleanup, label %if.end.i163, !dbg !2320

if.end.i163:                                      ; preds = %while.end.i158
  store ptr %call.i161, ptr %data5.i159, align 8, !dbg !2321
  store i32 %dn.0.i155, ptr %d_max.i141, align 4, !dbg !2322
  %.pre34.i164 = load i32, ptr %d_cur.i139, align 8, !dbg !2323
  br label %if.end11.i146

if.end11.i146:                                    ; preds = %if.end.i163, %entry.if.end11_crit_edge.i143
  %26 = phi i32 [ %23, %entry.if.end11_crit_edge.i143 ], [ %.pre34.i164, %if.end.i163 ], !dbg !2323
  %27 = phi ptr [ %.pre.i145, %entry.if.end11_crit_edge.i143 ], [ %call.i161, %if.end.i163 ], !dbg !2308
  %idx.ext.i147 = zext i32 %26 to i64, !dbg !2324
  %add.ptr.i148 = getelementptr inbounds i8, ptr %27, i64 %idx.ext.i147, !dbg !2324
  store i8 8, ptr %add.ptr.i148, align 1, !dbg !2325
  %c_size.sroa.4.0.add.ptr.i148.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i148, i64 1, !dbg !2325
  store i8 %conv, ptr %c_size.sroa.4.0.add.ptr.i148.sroa_idx, align 1, !dbg !2325
  %c_size.sroa.8.0.add.ptr.i148.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i148, i64 2, !dbg !2325
  store i8 %conv3, ptr %c_size.sroa.8.0.add.ptr.i148.sroa_idx, align 1, !dbg !2325
  %c_size.sroa.12.0.add.ptr.i148.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i148, i64 3, !dbg !2325
  store i8 %conv6, ptr %c_size.sroa.12.0.add.ptr.i148.sroa_idx, align 1, !dbg !2325
  %c_size.sroa.16.0.add.ptr.i148.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i148, i64 4, !dbg !2325
  store i8 %conv8, ptr %c_size.sroa.16.0.add.ptr.i148.sroa_idx, align 1, !dbg !2325
  store i32 %add.i140, ptr %d_cur.i139, align 8, !dbg !2326
  br label %cleanup, !dbg !2327

cleanup:                                          ; preds = %if.end11.i146, %while.end.i158, %if.end11.i119, %while.end.i131, %if.end11.i92, %while.end.i104, %if.end11.i65, %while.end.i77, %if.end11.i, %while.end.i
  %retval.0 = phi i32 [ 0, %if.end11.i ], [ -1, %while.end.i ], [ 0, %if.end11.i65 ], [ -1, %while.end.i77 ], [ 0, %if.end11.i92 ], [ -1, %while.end.i104 ], [ 0, %if.end11.i119 ], [ -1, %while.end.i131 ], [ 0, %if.end11.i146 ], [ -1, %while.end.i158 ], !dbg !2167
  ret i32 %retval.0, !dbg !2328
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2329 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !2333 noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2338 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(1) }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 305, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "x264_src/output/matroska_ebml.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1fa174e60935636d7a8dc8807d29ae1b")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 3)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 352, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 25)
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !13, globals: !18, splitDebugInlining: false, nameTableKind: None)
!13 = !{!14, !15, !16, !17}
!14 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!15 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !{!19, !0, !24, !7}
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 302, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 2)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 340, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 9)
!29 = !{i32 7, !"Dwarf Version", i32 5}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 4}
!32 = !{i32 8, !"PIC Level", i32 2}
!33 = !{i32 7, !"PIE Level", i32 2}
!34 = !{i32 7, !"uwtable", i32 2}
!35 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!36 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!37 = distinct !DISubprogram(name: "mk_create_writer", scope: !2, file: !2, line: 287, type: !38, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !141)
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !139}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "mk_writer", file: !42, line: 24, baseType: !43)
!42 = !DIFile(filename: "x264_src/output/matroska_ebml.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1745c5eb41455b01e98496f56a8b1e8e")
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mk_writer", file: !2, line: 43, size: 832, elements: !44)
!44 = !{!45, !106, !108, !123, !124, !125, !126, !127, !131, !132, !133, !134, !135, !136, !137, !138}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !43, file: !2, line: 45, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !48, line: 7, baseType: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !50, line: 49, size: 1728, elements: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!51 = !{!52, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !68, !70, !71, !72, !76, !78, !80, !84, !87, !89, !92, !95, !96, !97, !101, !102}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !49, file: !50, line: 51, baseType: !53, size: 32)
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !49, file: !50, line: 54, baseType: !16, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !49, file: !50, line: 55, baseType: !16, size: 64, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !49, file: !50, line: 56, baseType: !16, size: 64, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !49, file: !50, line: 57, baseType: !16, size: 64, offset: 256)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !49, file: !50, line: 58, baseType: !16, size: 64, offset: 320)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !49, file: !50, line: 59, baseType: !16, size: 64, offset: 384)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !49, file: !50, line: 60, baseType: !16, size: 64, offset: 448)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !49, file: !50, line: 61, baseType: !16, size: 64, offset: 512)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !49, file: !50, line: 64, baseType: !16, size: 64, offset: 576)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !49, file: !50, line: 65, baseType: !16, size: 64, offset: 640)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !49, file: !50, line: 66, baseType: !16, size: 64, offset: 704)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !49, file: !50, line: 68, baseType: !66, size: 64, offset: 768)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !50, line: 36, flags: DIFlagFwdDecl)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !49, file: !50, line: 70, baseType: !69, size: 64, offset: 832)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !49, file: !50, line: 72, baseType: !53, size: 32, offset: 896)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !49, file: !50, line: 73, baseType: !53, size: 32, offset: 928)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !49, file: !50, line: 74, baseType: !73, size: 64, offset: 960)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !74, line: 152, baseType: !75)
!74 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!75 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !49, file: !50, line: 77, baseType: !77, size: 16, offset: 1024)
!77 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !49, file: !50, line: 78, baseType: !79, size: 8, offset: 1040)
!79 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !49, file: !50, line: 79, baseType: !81, size: 8, offset: 1048)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 1)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !49, file: !50, line: 81, baseType: !85, size: 64, offset: 1088)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !50, line: 43, baseType: null)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !49, file: !50, line: 89, baseType: !88, size: 64, offset: 1152)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !74, line: 153, baseType: !75)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !49, file: !50, line: 91, baseType: !90, size: 64, offset: 1216)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !50, line: 37, flags: DIFlagFwdDecl)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !49, file: !50, line: 92, baseType: !93, size: 64, offset: 1280)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !50, line: 38, flags: DIFlagFwdDecl)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !49, file: !50, line: 93, baseType: !69, size: 64, offset: 1344)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !49, file: !50, line: 94, baseType: !17, size: 64, offset: 1408)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !49, file: !50, line: 95, baseType: !98, size: 64, offset: 1472)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !99, line: 18, baseType: !100)
!99 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!100 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !49, file: !50, line: 96, baseType: !53, size: 32, offset: 1536)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !49, file: !50, line: 98, baseType: !103, size: 160, offset: 1568)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 20)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "duration_ptr", scope: !43, file: !2, line: 47, baseType: !107, size: 32, offset: 64)
!107 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !43, file: !2, line: 49, baseType: !109, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "mk_context", file: !2, line: 41, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mk_context", file: !2, line: 31, size: 448, elements: !112)
!112 = !{!113, !115, !117, !118, !119, !120, !121, !122}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !111, file: !2, line: 33, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !111, file: !2, line: 33, baseType: !116, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !111, file: !2, line: 33, baseType: !114, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !111, file: !2, line: 34, baseType: !40, size: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !111, file: !2, line: 35, baseType: !107, size: 32, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !111, file: !2, line: 37, baseType: !17, size: 64, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "d_cur", scope: !111, file: !2, line: 38, baseType: !107, size: 32, offset: 384)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "d_max", scope: !111, file: !2, line: 38, baseType: !107, size: 32, offset: 416)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "cluster", scope: !43, file: !2, line: 49, baseType: !109, size: 64, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !43, file: !2, line: 49, baseType: !109, size: 64, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !43, file: !2, line: 50, baseType: !109, size: 64, offset: 320)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "actlist", scope: !43, file: !2, line: 51, baseType: !109, size: 64, offset: 384)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "def_duration", scope: !43, file: !2, line: 53, baseType: !128, size: 64, offset: 448)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !129, line: 27, baseType: !130)
!129 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !74, line: 44, baseType: !75)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "timescale", scope: !43, file: !2, line: 54, baseType: !128, size: 64, offset: 512)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_tc_scaled", scope: !43, file: !2, line: 55, baseType: !128, size: 64, offset: 576)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "frame_tc", scope: !43, file: !2, line: 56, baseType: !128, size: 64, offset: 640)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "max_frame_tc", scope: !43, file: !2, line: 56, baseType: !128, size: 64, offset: 704)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "wrote_header", scope: !43, file: !2, line: 58, baseType: !79, size: 8, offset: 768)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "in_frame", scope: !43, file: !2, line: 58, baseType: !79, size: 8, offset: 776)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "keyframe", scope: !43, file: !2, line: 58, baseType: !79, size: 8, offset: 784)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "skippable", scope: !43, file: !2, line: 58, baseType: !79, size: 8, offset: 792)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!141 = !{!142, !143}
!142 = !DILocalVariable(name: "filename", arg: 1, scope: !37, file: !2, line: 287, type: !139)
!143 = !DILocalVariable(name: "w", scope: !37, file: !2, line: 289, type: !40)
!144 = !DILocation(line: 0, scope: !37)
!145 = !DILocation(line: 289, column: 20, scope: !37)
!146 = !DILocation(line: 290, column: 10, scope: !147)
!147 = distinct !DILexicalBlock(scope: !37, file: !2, line: 290, column: 9)
!148 = !DILocation(line: 290, column: 9, scope: !37)
!149 = !DILocalVariable(name: "w", arg: 1, scope: !150, file: !2, line: 61, type: !40)
!150 = distinct !DISubprogram(name: "mk_create_context", scope: !2, file: !2, line: 61, type: !151, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !153)
!151 = !DISubroutineType(types: !152)
!152 = !{!109, !40, !109, !107}
!153 = !{!149, !154, !155, !156}
!154 = !DILocalVariable(name: "parent", arg: 2, scope: !150, file: !2, line: 61, type: !109)
!155 = !DILocalVariable(name: "id", arg: 3, scope: !150, file: !2, line: 61, type: !107)
!156 = !DILocalVariable(name: "c", scope: !150, file: !2, line: 63, type: !109)
!157 = !DILocation(line: 0, scope: !150, inlinedAt: !158)
!158 = distinct !DILocation(line: 295, column: 15, scope: !37)
!159 = !DILocation(line: 65, column: 12, scope: !160, inlinedAt: !158)
!160 = distinct !DILexicalBlock(scope: !150, file: !2, line: 65, column: 9)
!161 = !DILocation(line: 72, column: 13, scope: !162, inlinedAt: !158)
!162 = distinct !DILexicalBlock(scope: !160, file: !2, line: 71, column: 5)
!163 = !DILocation(line: 73, column: 14, scope: !164, inlinedAt: !158)
!164 = distinct !DILexicalBlock(scope: !162, file: !2, line: 73, column: 13)
!165 = !DILocation(line: 73, column: 13, scope: !162, inlinedAt: !158)
!166 = !DILocation(line: 298, column: 9, scope: !167)
!167 = distinct !DILexicalBlock(scope: !168, file: !2, line: 297, column: 5)
!168 = distinct !DILexicalBlock(scope: !37, file: !2, line: 296, column: 9)
!169 = !DILocation(line: 299, column: 9, scope: !167)
!170 = !DILocation(line: 79, column: 8, scope: !150, inlinedAt: !158)
!171 = !DILocation(line: 79, column: 14, scope: !150, inlinedAt: !158)
!172 = !DILocation(line: 82, column: 19, scope: !173, inlinedAt: !158)
!173 = distinct !DILexicalBlock(scope: !150, file: !2, line: 82, column: 9)
!174 = !DILocation(line: 85, column: 8, scope: !150, inlinedAt: !158)
!175 = !DILocation(line: 85, column: 13, scope: !150, inlinedAt: !158)
!176 = !DILocation(line: 86, column: 23, scope: !150, inlinedAt: !158)
!177 = !DILocation(line: 295, column: 8, scope: !37)
!178 = !DILocation(line: 295, column: 13, scope: !37)
!179 = !DILocation(line: 302, column: 10, scope: !180)
!180 = distinct !DILexicalBlock(scope: !37, file: !2, line: 302, column: 9)
!181 = !DILocation(line: 302, column: 9, scope: !37)
!182 = !DILocation(line: 303, column: 17, scope: !180)
!183 = !DILocation(line: 303, column: 9, scope: !180)
!184 = !DILocation(line: 305, column: 17, scope: !180)
!185 = !DILocation(line: 0, scope: !180)
!186 = !DILocation(line: 306, column: 10, scope: !187)
!187 = distinct !DILexicalBlock(scope: !37, file: !2, line: 306, column: 9)
!188 = !DILocation(line: 306, column: 9, scope: !37)
!189 = !DILocalVariable(name: "w", arg: 1, scope: !190, file: !2, line: 209, type: !40)
!190 = distinct !DISubprogram(name: "mk_destroy_contexts", scope: !2, file: !2, line: 209, type: !191, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !193)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !40}
!193 = !{!189, !194, !195, !197}
!194 = !DILocalVariable(name: "next", scope: !190, file: !2, line: 211, type: !109)
!195 = !DILocalVariable(name: "cur", scope: !196, file: !2, line: 213, type: !109)
!196 = distinct !DILexicalBlock(scope: !190, file: !2, line: 213, column: 5)
!197 = !DILocalVariable(name: "cur", scope: !198, file: !2, line: 220, type: !109)
!198 = distinct !DILexicalBlock(scope: !190, file: !2, line: 220, column: 5)
!199 = !DILocation(line: 0, scope: !190, inlinedAt: !200)
!200 = distinct !DILocation(line: 308, column: 9, scope: !201)
!201 = distinct !DILexicalBlock(scope: !187, file: !2, line: 307, column: 5)
!202 = !DILocation(line: 213, column: 31, scope: !196, inlinedAt: !200)
!203 = !DILocation(line: 0, scope: !196, inlinedAt: !200)
!204 = !DILocation(line: 213, column: 5, scope: !196, inlinedAt: !200)
!205 = !DILocation(line: 220, column: 31, scope: !198, inlinedAt: !200)
!206 = !DILocation(line: 0, scope: !198, inlinedAt: !200)
!207 = !DILocation(line: 220, column: 5, scope: !198, inlinedAt: !200)
!208 = !DILocation(line: 215, column: 21, scope: !209, inlinedAt: !200)
!209 = distinct !DILexicalBlock(scope: !210, file: !2, line: 214, column: 5)
!210 = distinct !DILexicalBlock(scope: !196, file: !2, line: 213, column: 5)
!211 = !DILocation(line: 216, column: 20, scope: !209, inlinedAt: !200)
!212 = !DILocation(line: 216, column: 9, scope: !209, inlinedAt: !200)
!213 = !DILocation(line: 217, column: 9, scope: !209, inlinedAt: !200)
!214 = distinct !{!214, !204, !215}
!215 = !DILocation(line: 218, column: 5, scope: !196, inlinedAt: !200)
!216 = !DILocation(line: 222, column: 21, scope: !217, inlinedAt: !200)
!217 = distinct !DILexicalBlock(scope: !218, file: !2, line: 221, column: 5)
!218 = distinct !DILexicalBlock(scope: !198, file: !2, line: 220, column: 5)
!219 = !DILocation(line: 223, column: 20, scope: !217, inlinedAt: !200)
!220 = !DILocation(line: 223, column: 9, scope: !217, inlinedAt: !200)
!221 = !DILocation(line: 224, column: 9, scope: !217, inlinedAt: !200)
!222 = distinct !{!222, !207, !223}
!223 = !DILocation(line: 225, column: 5, scope: !198, inlinedAt: !200)
!224 = !DILocation(line: 309, column: 9, scope: !201)
!225 = !DILocation(line: 310, column: 9, scope: !201)
!226 = !DILocation(line: 313, column: 8, scope: !37)
!227 = !DILocation(line: 313, column: 18, scope: !37)
!228 = !DILocation(line: 315, column: 5, scope: !37)
!229 = !DILocation(line: 316, column: 1, scope: !37)
!230 = !DILocation(line: 0, scope: !150)
!231 = !DILocation(line: 65, column: 12, scope: !160)
!232 = !DILocation(line: 65, column: 9, scope: !160)
!233 = !DILocation(line: 65, column: 9, scope: !150)
!234 = !DILocation(line: 68, column: 36, scope: !235)
!235 = distinct !DILexicalBlock(scope: !160, file: !2, line: 66, column: 5)
!236 = !DILocation(line: 68, column: 21, scope: !235)
!237 = !DILocation(line: 69, column: 5, scope: !235)
!238 = !DILocation(line: 72, column: 13, scope: !162)
!239 = !DILocation(line: 73, column: 14, scope: !164)
!240 = !DILocation(line: 73, column: 13, scope: !162)
!241 = !DILocation(line: 0, scope: !160)
!242 = !DILocation(line: 78, column: 8, scope: !150)
!243 = !DILocation(line: 78, column: 15, scope: !150)
!244 = !DILocation(line: 79, column: 8, scope: !150)
!245 = !DILocation(line: 79, column: 14, scope: !150)
!246 = !DILocation(line: 80, column: 8, scope: !150)
!247 = !DILocation(line: 80, column: 11, scope: !150)
!248 = !DILocation(line: 82, column: 19, scope: !173)
!249 = !DILocation(line: 82, column: 9, scope: !173)
!250 = !DILocation(line: 82, column: 9, scope: !150)
!251 = !DILocation(line: 83, column: 28, scope: !173)
!252 = !DILocation(line: 83, column: 33, scope: !173)
!253 = !DILocation(line: 84, column: 18, scope: !150)
!254 = !DILocation(line: 84, column: 25, scope: !150)
!255 = !DILocation(line: 83, column: 9, scope: !173)
!256 = !DILocation(line: 84, column: 13, scope: !150)
!257 = !DILocation(line: 85, column: 8, scope: !150)
!258 = !DILocation(line: 85, column: 13, scope: !150)
!259 = !DILocation(line: 86, column: 23, scope: !150)
!260 = !DILocation(line: 88, column: 5, scope: !150)
!261 = !DILocation(line: 89, column: 1, scope: !150)
!262 = !DISubprogram(name: "free", scope: !263, file: !263, line: 555, type: !264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!263 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!264 = !DISubroutineType(types: !265)
!265 = !{null, !17}
!266 = !DISubprogram(name: "fopen", linkageName: "fopen64", scope: !267, file: !267, line: 270, type: !268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!267 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!268 = !DISubroutineType(types: !269)
!269 = !{!46, !270, !270}
!270 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !139)
!271 = distinct !DISubprogram(name: "mk_writeHeader", scope: !2, file: !2, line: 318, type: !272, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !276)
!272 = !DISubroutineType(types: !273)
!273 = !{!53, !40, !139, !139, !274, !107, !128, !128, !107, !107, !107, !107}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!276 = !{!277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290}
!277 = !DILocalVariable(name: "w", arg: 1, scope: !271, file: !2, line: 318, type: !40)
!278 = !DILocalVariable(name: "writing_app", arg: 2, scope: !271, file: !2, line: 318, type: !139)
!279 = !DILocalVariable(name: "codec_id", arg: 3, scope: !271, file: !2, line: 319, type: !139)
!280 = !DILocalVariable(name: "codec_private", arg: 4, scope: !271, file: !2, line: 320, type: !274)
!281 = !DILocalVariable(name: "codec_private_size", arg: 5, scope: !271, file: !2, line: 320, type: !107)
!282 = !DILocalVariable(name: "default_frame_duration", arg: 6, scope: !271, file: !2, line: 321, type: !128)
!283 = !DILocalVariable(name: "timescale", arg: 7, scope: !271, file: !2, line: 322, type: !128)
!284 = !DILocalVariable(name: "width", arg: 8, scope: !271, file: !2, line: 323, type: !107)
!285 = !DILocalVariable(name: "height", arg: 9, scope: !271, file: !2, line: 323, type: !107)
!286 = !DILocalVariable(name: "d_width", arg: 10, scope: !271, file: !2, line: 324, type: !107)
!287 = !DILocalVariable(name: "d_height", arg: 11, scope: !271, file: !2, line: 324, type: !107)
!288 = !DILocalVariable(name: "c", scope: !271, file: !2, line: 326, type: !109)
!289 = !DILocalVariable(name: "ti", scope: !271, file: !2, line: 326, type: !109)
!290 = !DILocalVariable(name: "v", scope: !271, file: !2, line: 326, type: !109)
!291 = !DILocation(line: 0, scope: !271)
!292 = !DILocation(line: 328, column: 12, scope: !293)
!293 = distinct !DILexicalBlock(scope: !271, file: !2, line: 328, column: 9)
!294 = !DILocation(line: 328, column: 9, scope: !293)
!295 = !DILocation(line: 328, column: 9, scope: !271)
!296 = !DILocation(line: 331, column: 8, scope: !271)
!297 = !DILocation(line: 331, column: 18, scope: !271)
!298 = !DILocation(line: 332, column: 8, scope: !271)
!299 = !DILocation(line: 332, column: 21, scope: !271)
!300 = !DILocation(line: 334, column: 40, scope: !301)
!301 = distinct !DILexicalBlock(scope: !271, file: !2, line: 334, column: 9)
!302 = !DILocation(line: 0, scope: !150, inlinedAt: !303)
!303 = distinct !DILocation(line: 334, column: 15, scope: !301)
!304 = !DILocation(line: 65, column: 12, scope: !160, inlinedAt: !303)
!305 = !DILocation(line: 65, column: 9, scope: !160, inlinedAt: !303)
!306 = !DILocation(line: 65, column: 9, scope: !150, inlinedAt: !303)
!307 = !DILocation(line: 68, column: 36, scope: !235, inlinedAt: !303)
!308 = !DILocation(line: 68, column: 21, scope: !235, inlinedAt: !303)
!309 = !DILocation(line: 69, column: 5, scope: !235, inlinedAt: !303)
!310 = !DILocation(line: 72, column: 13, scope: !162, inlinedAt: !303)
!311 = !DILocation(line: 73, column: 14, scope: !164, inlinedAt: !303)
!312 = !DILocation(line: 73, column: 13, scope: !162, inlinedAt: !303)
!313 = !DILocation(line: 0, scope: !160, inlinedAt: !303)
!314 = !DILocation(line: 78, column: 8, scope: !150, inlinedAt: !303)
!315 = !DILocation(line: 78, column: 15, scope: !150, inlinedAt: !303)
!316 = !DILocation(line: 79, column: 8, scope: !150, inlinedAt: !303)
!317 = !DILocation(line: 79, column: 14, scope: !150, inlinedAt: !303)
!318 = !DILocation(line: 80, column: 8, scope: !150, inlinedAt: !303)
!319 = !DILocation(line: 80, column: 11, scope: !150, inlinedAt: !303)
!320 = !DILocation(line: 82, column: 19, scope: !173, inlinedAt: !303)
!321 = !DILocation(line: 82, column: 9, scope: !173, inlinedAt: !303)
!322 = !DILocation(line: 82, column: 9, scope: !150, inlinedAt: !303)
!323 = !DILocation(line: 83, column: 28, scope: !173, inlinedAt: !303)
!324 = !DILocation(line: 83, column: 33, scope: !173, inlinedAt: !303)
!325 = !DILocation(line: 84, column: 18, scope: !150, inlinedAt: !303)
!326 = !DILocation(line: 84, column: 25, scope: !150, inlinedAt: !303)
!327 = !DILocation(line: 83, column: 9, scope: !173, inlinedAt: !303)
!328 = !DILocation(line: 84, column: 13, scope: !150, inlinedAt: !303)
!329 = !DILocation(line: 85, column: 8, scope: !150, inlinedAt: !303)
!330 = !DILocation(line: 85, column: 13, scope: !150, inlinedAt: !303)
!331 = !DILocation(line: 86, column: 23, scope: !150, inlinedAt: !303)
!332 = !DILocalVariable(name: "c", arg: 1, scope: !333, file: !2, line: 248, type: !109)
!333 = distinct !DISubprogram(name: "mk_write_uint", scope: !2, file: !2, line: 248, type: !334, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !336)
!334 = !DISubroutineType(types: !335)
!335 = !{!53, !109, !107, !128}
!336 = !{!332, !337, !338, !339, !344}
!337 = !DILocalVariable(name: "id", arg: 2, scope: !333, file: !2, line: 248, type: !107)
!338 = !DILocalVariable(name: "ui", arg: 3, scope: !333, file: !2, line: 248, type: !128)
!339 = !DILocalVariable(name: "c_ui", scope: !333, file: !2, line: 250, type: !340)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 64, elements: !342)
!341 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!342 = !{!343}
!343 = !DISubrange(count: 8)
!344 = !DILocalVariable(name: "i", scope: !333, file: !2, line: 251, type: !107)
!345 = !DILocation(line: 0, scope: !333, inlinedAt: !346)
!346 = distinct !DILocation(line: 336, column: 5, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !2, line: 336, column: 5)
!348 = distinct !DILexicalBlock(scope: !271, file: !2, line: 336, column: 5)
!349 = !DILocalVariable(name: "c", arg: 1, scope: !350, file: !2, line: 117, type: !109)
!350 = distinct !DISubprogram(name: "mk_write_id", scope: !2, file: !2, line: 117, type: !351, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !353)
!351 = !DISubroutineType(types: !352)
!352 = !{!53, !109, !107}
!353 = !{!349, !354, !355}
!354 = !DILocalVariable(name: "id", arg: 2, scope: !350, file: !2, line: 117, type: !107)
!355 = !DILocalVariable(name: "c_id", scope: !350, file: !2, line: 119, type: !356)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 32, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 4)
!359 = !DILocation(line: 0, scope: !350, inlinedAt: !360)
!360 = distinct !DILocation(line: 253, column: 5, scope: !361, inlinedAt: !346)
!361 = distinct !DILexicalBlock(scope: !362, file: !2, line: 253, column: 5)
!362 = distinct !DILexicalBlock(scope: !333, file: !2, line: 253, column: 5)
!363 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !376)
!364 = distinct !DILexicalBlock(scope: !365, file: !2, line: 95, column: 9)
!365 = distinct !DISubprogram(name: "mk_append_context_data", scope: !2, file: !2, line: 91, type: !366, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !368)
!366 = !DISubroutineType(types: !367)
!367 = !{!53, !109, !274, !107}
!368 = !{!369, !370, !371, !372, !373, !375}
!369 = !DILocalVariable(name: "c", arg: 1, scope: !365, file: !2, line: 91, type: !109)
!370 = !DILocalVariable(name: "data", arg: 2, scope: !365, file: !2, line: 91, type: !274)
!371 = !DILocalVariable(name: "size", arg: 3, scope: !365, file: !2, line: 91, type: !107)
!372 = !DILocalVariable(name: "ns", scope: !365, file: !2, line: 93, type: !107)
!373 = !DILocalVariable(name: "dp", scope: !374, file: !2, line: 97, type: !17)
!374 = distinct !DILexicalBlock(scope: !364, file: !2, line: 96, column: 5)
!375 = !DILocalVariable(name: "dn", scope: !374, file: !2, line: 98, type: !107)
!376 = distinct !DILocation(line: 0, scope: !350, inlinedAt: !360)
!377 = !DILocation(line: 0, scope: !365, inlinedAt: !378)
!378 = distinct !DILocation(line: 127, column: 12, scope: !350, inlinedAt: !360)
!379 = !DILocation(line: 0, scope: !365, inlinedAt: !380)
!380 = distinct !DILocation(line: 126, column: 16, scope: !381, inlinedAt: !360)
!381 = distinct !DILexicalBlock(scope: !350, file: !2, line: 125, column: 9)
!382 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !376)
!383 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !380)
!384 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !380)
!385 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !380)
!386 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !380)
!387 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !380)
!388 = !DILocation(line: 0, scope: !374, inlinedAt: !380)
!389 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !380)
!390 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !380)
!391 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !380)
!392 = distinct !{!392, !389, !393}
!393 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !380)
!394 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !380)
!395 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !380)
!396 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !380)
!397 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !380)
!398 = distinct !DILexicalBlock(scope: !374, file: !2, line: 103, column: 13)
!399 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !380)
!400 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !380)
!401 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !380)
!402 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !380)
!403 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !380)
!404 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !380)
!405 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !380)
!406 = !DILocalVariable(name: "c", arg: 1, scope: !407, file: !2, line: 130, type: !109)
!407 = distinct !DISubprogram(name: "mk_write_size", scope: !2, file: !2, line: 130, type: !351, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !408)
!408 = !{!406, !409, !410}
!409 = !DILocalVariable(name: "size", arg: 2, scope: !407, file: !2, line: 130, type: !107)
!410 = !DILocalVariable(name: "c_size", scope: !407, file: !2, line: 132, type: !411)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 40, elements: !412)
!412 = !{!413}
!413 = !DISubrange(count: 5)
!414 = !DILocation(line: 0, scope: !407, inlinedAt: !415)
!415 = distinct !DILocation(line: 256, column: 5, scope: !416, inlinedAt: !346)
!416 = distinct !DILexicalBlock(scope: !417, file: !2, line: 256, column: 5)
!417 = distinct !DILexicalBlock(scope: !333, file: !2, line: 256, column: 5)
!418 = !DILocation(line: 0, scope: !365, inlinedAt: !419)
!419 = distinct !DILocation(line: 137, column: 16, scope: !420, inlinedAt: !415)
!420 = distinct !DILexicalBlock(scope: !421, file: !2, line: 135, column: 5)
!421 = distinct !DILexicalBlock(scope: !407, file: !2, line: 134, column: 9)
!422 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !419)
!423 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !419)
!424 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !419)
!425 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !419)
!426 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !419)
!427 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !419)
!428 = !DILocation(line: 0, scope: !374, inlinedAt: !419)
!429 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !419)
!430 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !419)
!431 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !419)
!432 = distinct !{!432, !429, !433}
!433 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !419)
!434 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !419)
!435 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !419)
!436 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !419)
!437 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !419)
!438 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !419)
!439 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !419)
!440 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !419)
!441 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !419)
!442 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !419)
!443 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !419)
!444 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !419)
!445 = !DILocation(line: 0, scope: !365, inlinedAt: !446)
!446 = distinct !DILocation(line: 257, column: 5, scope: !447, inlinedAt: !346)
!447 = distinct !DILexicalBlock(scope: !448, file: !2, line: 257, column: 5)
!448 = distinct !DILexicalBlock(scope: !333, file: !2, line: 257, column: 5)
!449 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !446)
!450 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !446)
!451 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !446)
!452 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !446)
!453 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !446)
!454 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !446)
!455 = !DILocation(line: 0, scope: !374, inlinedAt: !446)
!456 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !446)
!457 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !446)
!458 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !446)
!459 = distinct !{!459, !456, !460}
!460 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !446)
!461 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !446)
!462 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !446)
!463 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !446)
!464 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !446)
!465 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !446)
!466 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !446)
!467 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !446)
!468 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !446)
!469 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !446)
!470 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !446)
!471 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !446)
!472 = !DILocation(line: 0, scope: !333, inlinedAt: !473)
!473 = distinct !DILocation(line: 337, column: 5, scope: !474)
!474 = distinct !DILexicalBlock(scope: !475, file: !2, line: 337, column: 5)
!475 = distinct !DILexicalBlock(scope: !271, file: !2, line: 337, column: 5)
!476 = !DILocation(line: 0, scope: !350, inlinedAt: !477)
!477 = distinct !DILocation(line: 253, column: 5, scope: !361, inlinedAt: !473)
!478 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !479)
!479 = distinct !DILocation(line: 0, scope: !350, inlinedAt: !477)
!480 = !DILocation(line: 0, scope: !365, inlinedAt: !481)
!481 = distinct !DILocation(line: 127, column: 12, scope: !350, inlinedAt: !477)
!482 = !DILocation(line: 0, scope: !365, inlinedAt: !483)
!483 = distinct !DILocation(line: 126, column: 16, scope: !381, inlinedAt: !477)
!484 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !483)
!485 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !483)
!486 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !483)
!487 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !483)
!488 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !483)
!489 = !DILocation(line: 0, scope: !374, inlinedAt: !483)
!490 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !483)
!491 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !483)
!492 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !483)
!493 = distinct !{!493, !490, !494}
!494 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !483)
!495 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !483)
!496 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !483)
!497 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !483)
!498 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !483)
!499 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !483)
!500 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !483)
!501 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !483)
!502 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !483)
!503 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !483)
!504 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !483)
!505 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !483)
!506 = !DILocation(line: 0, scope: !407, inlinedAt: !507)
!507 = distinct !DILocation(line: 256, column: 5, scope: !416, inlinedAt: !473)
!508 = !DILocation(line: 0, scope: !365, inlinedAt: !509)
!509 = distinct !DILocation(line: 137, column: 16, scope: !420, inlinedAt: !507)
!510 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !509)
!511 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !509)
!512 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !509)
!513 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !509)
!514 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !509)
!515 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !509)
!516 = !DILocation(line: 0, scope: !374, inlinedAt: !509)
!517 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !509)
!518 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !509)
!519 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !509)
!520 = distinct !{!520, !517, !521}
!521 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !509)
!522 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !509)
!523 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !509)
!524 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !509)
!525 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !509)
!526 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !509)
!527 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !509)
!528 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !509)
!529 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !509)
!530 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !509)
!531 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !509)
!532 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !509)
!533 = !DILocation(line: 0, scope: !365, inlinedAt: !534)
!534 = distinct !DILocation(line: 257, column: 5, scope: !447, inlinedAt: !473)
!535 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !534)
!536 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !534)
!537 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !534)
!538 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !534)
!539 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !534)
!540 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !534)
!541 = !DILocation(line: 0, scope: !374, inlinedAt: !534)
!542 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !534)
!543 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !534)
!544 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !534)
!545 = distinct !{!545, !542, !546}
!546 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !534)
!547 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !534)
!548 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !534)
!549 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !534)
!550 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !534)
!551 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !534)
!552 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !534)
!553 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !534)
!554 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !534)
!555 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !534)
!556 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !534)
!557 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !534)
!558 = !DILocation(line: 0, scope: !333, inlinedAt: !559)
!559 = distinct !DILocation(line: 338, column: 5, scope: !560)
!560 = distinct !DILexicalBlock(scope: !561, file: !2, line: 338, column: 5)
!561 = distinct !DILexicalBlock(scope: !271, file: !2, line: 338, column: 5)
!562 = !DILocation(line: 0, scope: !350, inlinedAt: !563)
!563 = distinct !DILocation(line: 253, column: 5, scope: !361, inlinedAt: !559)
!564 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !565)
!565 = distinct !DILocation(line: 0, scope: !350, inlinedAt: !563)
!566 = !DILocation(line: 0, scope: !365, inlinedAt: !567)
!567 = distinct !DILocation(line: 127, column: 12, scope: !350, inlinedAt: !563)
!568 = !DILocation(line: 0, scope: !365, inlinedAt: !569)
!569 = distinct !DILocation(line: 126, column: 16, scope: !381, inlinedAt: !563)
!570 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !569)
!571 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !569)
!572 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !569)
!573 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !569)
!574 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !569)
!575 = !DILocation(line: 0, scope: !374, inlinedAt: !569)
!576 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !569)
!577 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !569)
!578 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !569)
!579 = distinct !{!579, !576, !580}
!580 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !569)
!581 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !569)
!582 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !569)
!583 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !569)
!584 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !569)
!585 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !569)
!586 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !569)
!587 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !569)
!588 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !569)
!589 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !569)
!590 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !569)
!591 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !569)
!592 = !DILocation(line: 0, scope: !407, inlinedAt: !593)
!593 = distinct !DILocation(line: 256, column: 5, scope: !416, inlinedAt: !559)
!594 = !DILocation(line: 0, scope: !365, inlinedAt: !595)
!595 = distinct !DILocation(line: 137, column: 16, scope: !420, inlinedAt: !593)
!596 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !595)
!597 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !595)
!598 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !595)
!599 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !595)
!600 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !595)
!601 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !595)
!602 = !DILocation(line: 0, scope: !374, inlinedAt: !595)
!603 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !595)
!604 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !595)
!605 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !595)
!606 = distinct !{!606, !603, !607}
!607 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !595)
!608 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !595)
!609 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !595)
!610 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !595)
!611 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !595)
!612 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !595)
!613 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !595)
!614 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !595)
!615 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !595)
!616 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !595)
!617 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !595)
!618 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !595)
!619 = !DILocation(line: 0, scope: !365, inlinedAt: !620)
!620 = distinct !DILocation(line: 257, column: 5, scope: !447, inlinedAt: !559)
!621 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !620)
!622 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !620)
!623 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !620)
!624 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !620)
!625 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !620)
!626 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !620)
!627 = !DILocation(line: 0, scope: !374, inlinedAt: !620)
!628 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !620)
!629 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !620)
!630 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !620)
!631 = distinct !{!631, !628, !632}
!632 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !620)
!633 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !620)
!634 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !620)
!635 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !620)
!636 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !620)
!637 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !620)
!638 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !620)
!639 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !620)
!640 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !620)
!641 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !620)
!642 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !620)
!643 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !620)
!644 = !DILocation(line: 0, scope: !333, inlinedAt: !645)
!645 = distinct !DILocation(line: 339, column: 5, scope: !646)
!646 = distinct !DILexicalBlock(scope: !647, file: !2, line: 339, column: 5)
!647 = distinct !DILexicalBlock(scope: !271, file: !2, line: 339, column: 5)
!648 = !DILocation(line: 0, scope: !350, inlinedAt: !649)
!649 = distinct !DILocation(line: 253, column: 5, scope: !361, inlinedAt: !645)
!650 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !651)
!651 = distinct !DILocation(line: 0, scope: !350, inlinedAt: !649)
!652 = !DILocation(line: 0, scope: !365, inlinedAt: !653)
!653 = distinct !DILocation(line: 127, column: 12, scope: !350, inlinedAt: !649)
!654 = !DILocation(line: 0, scope: !365, inlinedAt: !655)
!655 = distinct !DILocation(line: 126, column: 16, scope: !381, inlinedAt: !649)
!656 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !655)
!657 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !655)
!658 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !655)
!659 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !655)
!660 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !655)
!661 = !DILocation(line: 0, scope: !374, inlinedAt: !655)
!662 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !655)
!663 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !655)
!664 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !655)
!665 = distinct !{!665, !662, !666}
!666 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !655)
!667 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !655)
!668 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !655)
!669 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !655)
!670 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !655)
!671 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !655)
!672 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !655)
!673 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !655)
!674 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !655)
!675 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !655)
!676 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !655)
!677 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !655)
!678 = !DILocation(line: 0, scope: !407, inlinedAt: !679)
!679 = distinct !DILocation(line: 256, column: 5, scope: !416, inlinedAt: !645)
!680 = !DILocation(line: 0, scope: !365, inlinedAt: !681)
!681 = distinct !DILocation(line: 137, column: 16, scope: !420, inlinedAt: !679)
!682 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !681)
!683 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !681)
!684 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !681)
!685 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !681)
!686 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !681)
!687 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !681)
!688 = !DILocation(line: 0, scope: !374, inlinedAt: !681)
!689 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !681)
!690 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !681)
!691 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !681)
!692 = distinct !{!692, !689, !693}
!693 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !681)
!694 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !681)
!695 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !681)
!696 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !681)
!697 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !681)
!698 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !681)
!699 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !681)
!700 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !681)
!701 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !681)
!702 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !681)
!703 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !681)
!704 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !681)
!705 = !DILocation(line: 0, scope: !365, inlinedAt: !706)
!706 = distinct !DILocation(line: 257, column: 5, scope: !447, inlinedAt: !645)
!707 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !706)
!708 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !706)
!709 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !706)
!710 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !706)
!711 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !706)
!712 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !706)
!713 = !DILocation(line: 0, scope: !374, inlinedAt: !706)
!714 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !706)
!715 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !706)
!716 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !706)
!717 = distinct !{!717, !714, !718}
!718 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !706)
!719 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !706)
!720 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !706)
!721 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !706)
!722 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !706)
!723 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !706)
!724 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !706)
!725 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !706)
!726 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !706)
!727 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !706)
!728 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !706)
!729 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !706)
!730 = !DILocalVariable(name: "c", arg: 1, scope: !731, file: !2, line: 230, type: !109)
!731 = distinct !DISubprogram(name: "mk_write_string", scope: !2, file: !2, line: 230, type: !732, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !734)
!732 = !DISubroutineType(types: !733)
!733 = !{!53, !109, !107, !139}
!734 = !{!730, !735, !736, !737}
!735 = !DILocalVariable(name: "id", arg: 2, scope: !731, file: !2, line: 230, type: !107)
!736 = !DILocalVariable(name: "str", arg: 3, scope: !731, file: !2, line: 230, type: !139)
!737 = !DILocalVariable(name: "len", scope: !731, file: !2, line: 232, type: !98)
!738 = !DILocation(line: 0, scope: !731, inlinedAt: !739)
!739 = distinct !DILocation(line: 340, column: 5, scope: !740)
!740 = distinct !DILexicalBlock(scope: !741, file: !2, line: 340, column: 5)
!741 = distinct !DILexicalBlock(scope: !271, file: !2, line: 340, column: 5)
!742 = !DILocation(line: 0, scope: !350, inlinedAt: !743)
!743 = distinct !DILocation(line: 234, column: 5, scope: !744, inlinedAt: !739)
!744 = distinct !DILexicalBlock(scope: !745, file: !2, line: 234, column: 5)
!745 = distinct !DILexicalBlock(scope: !731, file: !2, line: 234, column: 5)
!746 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !747)
!747 = distinct !DILocation(line: 0, scope: !350, inlinedAt: !743)
!748 = !DILocation(line: 0, scope: !365, inlinedAt: !749)
!749 = distinct !DILocation(line: 127, column: 12, scope: !350, inlinedAt: !743)
!750 = !DILocation(line: 0, scope: !365, inlinedAt: !751)
!751 = distinct !DILocation(line: 126, column: 16, scope: !381, inlinedAt: !743)
!752 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !751)
!753 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !751)
!754 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !751)
!755 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !751)
!756 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !751)
!757 = !DILocation(line: 0, scope: !374, inlinedAt: !751)
!758 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !751)
!759 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !751)
!760 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !751)
!761 = distinct !{!761, !758, !762}
!762 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !751)
!763 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !751)
!764 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !751)
!765 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !751)
!766 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !751)
!767 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !751)
!768 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !751)
!769 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !751)
!770 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !751)
!771 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !751)
!772 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !751)
!773 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !751)
!774 = !DILocation(line: 235, column: 5, scope: !775, inlinedAt: !739)
!775 = distinct !DILexicalBlock(scope: !776, file: !2, line: 235, column: 5)
!776 = distinct !DILexicalBlock(scope: !731, file: !2, line: 235, column: 5)
!777 = !DILocation(line: 235, column: 5, scope: !776, inlinedAt: !739)
!778 = !DILocation(line: 0, scope: !365, inlinedAt: !779)
!779 = distinct !DILocation(line: 236, column: 5, scope: !780, inlinedAt: !739)
!780 = distinct !DILexicalBlock(scope: !781, file: !2, line: 236, column: 5)
!781 = distinct !DILexicalBlock(scope: !731, file: !2, line: 236, column: 5)
!782 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !779)
!783 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !779)
!784 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !779)
!785 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !779)
!786 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !779)
!787 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !779)
!788 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !779)
!789 = !DILocation(line: 0, scope: !374, inlinedAt: !779)
!790 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !779)
!791 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !779)
!792 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !779)
!793 = distinct !{!793, !790, !794}
!794 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !779)
!795 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !779)
!796 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !779)
!797 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !779)
!798 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !779)
!799 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !779)
!800 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !779)
!801 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !779)
!802 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !779)
!803 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !779)
!804 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !779)
!805 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !779)
!806 = !DILocation(line: 0, scope: !333, inlinedAt: !807)
!807 = distinct !DILocation(line: 341, column: 5, scope: !808)
!808 = distinct !DILexicalBlock(scope: !809, file: !2, line: 341, column: 5)
!809 = distinct !DILexicalBlock(scope: !271, file: !2, line: 341, column: 5)
!810 = !DILocation(line: 0, scope: !350, inlinedAt: !811)
!811 = distinct !DILocation(line: 253, column: 5, scope: !361, inlinedAt: !807)
!812 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !813)
!813 = distinct !DILocation(line: 0, scope: !350, inlinedAt: !811)
!814 = !DILocation(line: 0, scope: !365, inlinedAt: !815)
!815 = distinct !DILocation(line: 127, column: 12, scope: !350, inlinedAt: !811)
!816 = !DILocation(line: 0, scope: !365, inlinedAt: !817)
!817 = distinct !DILocation(line: 126, column: 16, scope: !381, inlinedAt: !811)
!818 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !817)
!819 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !817)
!820 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !817)
!821 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !817)
!822 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !817)
!823 = !DILocation(line: 0, scope: !374, inlinedAt: !817)
!824 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !817)
!825 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !817)
!826 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !817)
!827 = distinct !{!827, !824, !828}
!828 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !817)
!829 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !817)
!830 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !817)
!831 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !817)
!832 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !817)
!833 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !817)
!834 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !817)
!835 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !817)
!836 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !817)
!837 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !817)
!838 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !817)
!839 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !817)
!840 = !DILocation(line: 256, column: 5, scope: !416, inlinedAt: !807)
!841 = !DILocation(line: 256, column: 5, scope: !417, inlinedAt: !807)
!842 = !DILocation(line: 0, scope: !365, inlinedAt: !843)
!843 = distinct !DILocation(line: 257, column: 5, scope: !447, inlinedAt: !807)
!844 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !843)
!845 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !843)
!846 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !843)
!847 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !843)
!848 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !843)
!849 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !843)
!850 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !843)
!851 = !DILocation(line: 0, scope: !374, inlinedAt: !843)
!852 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !843)
!853 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !843)
!854 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !843)
!855 = distinct !{!855, !852, !856}
!856 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !843)
!857 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !843)
!858 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !843)
!859 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !843)
!860 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !843)
!861 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !843)
!862 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !843)
!863 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !843)
!864 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !843)
!865 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !843)
!866 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !843)
!867 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !843)
!868 = !DILocation(line: 342, column: 5, scope: !869)
!869 = distinct !DILexicalBlock(scope: !870, file: !2, line: 342, column: 5)
!870 = distinct !DILexicalBlock(scope: !271, file: !2, line: 342, column: 5)
!871 = !DILocation(line: 342, column: 5, scope: !870)
!872 = !DILocation(line: 343, column: 5, scope: !873)
!873 = distinct !DILexicalBlock(scope: !874, file: !2, line: 343, column: 5)
!874 = distinct !DILexicalBlock(scope: !271, file: !2, line: 343, column: 5)
!875 = !DILocation(line: 343, column: 5, scope: !874)
!876 = !DILocation(line: 345, column: 40, scope: !877)
!877 = distinct !DILexicalBlock(scope: !271, file: !2, line: 345, column: 9)
!878 = !DILocation(line: 345, column: 15, scope: !877)
!879 = !DILocation(line: 345, column: 13, scope: !877)
!880 = !DILocation(line: 345, column: 9, scope: !271)
!881 = !DILocation(line: 347, column: 5, scope: !882)
!882 = distinct !DILexicalBlock(scope: !883, file: !2, line: 347, column: 5)
!883 = distinct !DILexicalBlock(scope: !271, file: !2, line: 347, column: 5)
!884 = !DILocation(line: 347, column: 5, scope: !883)
!885 = !DILocation(line: 348, column: 5, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !2, line: 348, column: 5)
!887 = distinct !DILexicalBlock(scope: !271, file: !2, line: 348, column: 5)
!888 = !DILocation(line: 348, column: 5, scope: !887)
!889 = !DILocation(line: 350, column: 40, scope: !890)
!890 = distinct !DILexicalBlock(scope: !271, file: !2, line: 350, column: 9)
!891 = !DILocation(line: 350, column: 15, scope: !890)
!892 = !DILocation(line: 350, column: 13, scope: !890)
!893 = !DILocation(line: 350, column: 9, scope: !271)
!894 = !DILocation(line: 352, column: 5, scope: !895)
!895 = distinct !DILexicalBlock(scope: !896, file: !2, line: 352, column: 5)
!896 = distinct !DILexicalBlock(scope: !271, file: !2, line: 352, column: 5)
!897 = !DILocation(line: 352, column: 5, scope: !896)
!898 = !DILocation(line: 353, column: 5, scope: !899)
!899 = distinct !DILexicalBlock(scope: !900, file: !2, line: 353, column: 5)
!900 = distinct !DILexicalBlock(scope: !271, file: !2, line: 353, column: 5)
!901 = !DILocation(line: 353, column: 5, scope: !900)
!902 = !DILocation(line: 354, column: 5, scope: !903)
!903 = distinct !DILexicalBlock(scope: !904, file: !2, line: 354, column: 5)
!904 = distinct !DILexicalBlock(scope: !271, file: !2, line: 354, column: 5)
!905 = !DILocation(line: 354, column: 5, scope: !904)
!906 = !DILocation(line: 355, column: 5, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !2, line: 355, column: 5)
!908 = distinct !DILexicalBlock(scope: !271, file: !2, line: 355, column: 5)
!909 = !DILocation(line: 355, column: 5, scope: !908)
!910 = !DILocation(line: 356, column: 26, scope: !271)
!911 = !DILocation(line: 356, column: 32, scope: !271)
!912 = !DILocation(line: 356, column: 8, scope: !271)
!913 = !DILocation(line: 356, column: 21, scope: !271)
!914 = !DILocation(line: 357, column: 5, scope: !915)
!915 = distinct !DILexicalBlock(scope: !916, file: !2, line: 357, column: 5)
!916 = distinct !DILexicalBlock(scope: !271, file: !2, line: 357, column: 5)
!917 = !DILocation(line: 357, column: 5, scope: !916)
!918 = !DILocation(line: 359, column: 40, scope: !919)
!919 = distinct !DILexicalBlock(scope: !271, file: !2, line: 359, column: 9)
!920 = !DILocation(line: 359, column: 15, scope: !919)
!921 = !DILocation(line: 359, column: 13, scope: !919)
!922 = !DILocation(line: 359, column: 9, scope: !271)
!923 = !DILocation(line: 361, column: 16, scope: !924)
!924 = distinct !DILexicalBlock(scope: !271, file: !2, line: 361, column: 9)
!925 = !DILocation(line: 361, column: 14, scope: !924)
!926 = !DILocation(line: 361, column: 9, scope: !271)
!927 = !DILocation(line: 363, column: 5, scope: !928)
!928 = distinct !DILexicalBlock(scope: !929, file: !2, line: 363, column: 5)
!929 = distinct !DILexicalBlock(scope: !271, file: !2, line: 363, column: 5)
!930 = !DILocation(line: 363, column: 5, scope: !929)
!931 = !DILocation(line: 364, column: 5, scope: !932)
!932 = distinct !DILexicalBlock(scope: !933, file: !2, line: 364, column: 5)
!933 = distinct !DILexicalBlock(scope: !271, file: !2, line: 364, column: 5)
!934 = !DILocation(line: 364, column: 5, scope: !933)
!935 = !DILocation(line: 365, column: 5, scope: !936)
!936 = distinct !DILexicalBlock(scope: !937, file: !2, line: 365, column: 5)
!937 = distinct !DILexicalBlock(scope: !271, file: !2, line: 365, column: 5)
!938 = !DILocation(line: 365, column: 5, scope: !937)
!939 = !DILocation(line: 366, column: 5, scope: !940)
!940 = distinct !DILexicalBlock(scope: !941, file: !2, line: 366, column: 5)
!941 = distinct !DILexicalBlock(scope: !271, file: !2, line: 366, column: 5)
!942 = !DILocation(line: 366, column: 5, scope: !941)
!943 = !DILocation(line: 367, column: 5, scope: !944)
!944 = distinct !DILexicalBlock(scope: !945, file: !2, line: 367, column: 5)
!945 = distinct !DILexicalBlock(scope: !271, file: !2, line: 367, column: 5)
!946 = !DILocation(line: 367, column: 5, scope: !945)
!947 = !DILocation(line: 368, column: 9, scope: !948)
!948 = distinct !DILexicalBlock(scope: !271, file: !2, line: 368, column: 9)
!949 = !DILocation(line: 368, column: 9, scope: !271)
!950 = !DILocation(line: 369, column: 9, scope: !951)
!951 = distinct !DILexicalBlock(scope: !952, file: !2, line: 369, column: 9)
!952 = distinct !DILexicalBlock(scope: !948, file: !2, line: 369, column: 9)
!953 = !DILocation(line: 369, column: 9, scope: !952)
!954 = !DILocation(line: 370, column: 9, scope: !955)
!955 = distinct !DILexicalBlock(scope: !271, file: !2, line: 370, column: 9)
!956 = !DILocation(line: 370, column: 9, scope: !271)
!957 = !DILocation(line: 371, column: 9, scope: !958)
!958 = distinct !DILexicalBlock(scope: !959, file: !2, line: 371, column: 9)
!959 = distinct !DILexicalBlock(scope: !955, file: !2, line: 371, column: 9)
!960 = !DILocation(line: 371, column: 9, scope: !959)
!961 = !DILocation(line: 373, column: 15, scope: !962)
!962 = distinct !DILexicalBlock(scope: !271, file: !2, line: 373, column: 9)
!963 = !DILocation(line: 373, column: 13, scope: !962)
!964 = !DILocation(line: 373, column: 9, scope: !271)
!965 = !DILocation(line: 375, column: 5, scope: !966)
!966 = distinct !DILexicalBlock(scope: !967, file: !2, line: 375, column: 5)
!967 = distinct !DILexicalBlock(scope: !271, file: !2, line: 375, column: 5)
!968 = !DILocation(line: 375, column: 5, scope: !967)
!969 = !DILocation(line: 376, column: 5, scope: !970)
!970 = distinct !DILexicalBlock(scope: !971, file: !2, line: 376, column: 5)
!971 = distinct !DILexicalBlock(scope: !271, file: !2, line: 376, column: 5)
!972 = !DILocation(line: 376, column: 5, scope: !971)
!973 = !DILocation(line: 377, column: 5, scope: !974)
!974 = distinct !DILexicalBlock(scope: !975, file: !2, line: 377, column: 5)
!975 = distinct !DILexicalBlock(scope: !271, file: !2, line: 377, column: 5)
!976 = !DILocation(line: 377, column: 5, scope: !975)
!977 = !DILocation(line: 378, column: 5, scope: !978)
!978 = distinct !DILexicalBlock(scope: !979, file: !2, line: 378, column: 5)
!979 = distinct !DILexicalBlock(scope: !271, file: !2, line: 378, column: 5)
!980 = !DILocation(line: 378, column: 5, scope: !979)
!981 = !DILocation(line: 379, column: 5, scope: !982)
!982 = distinct !DILexicalBlock(scope: !983, file: !2, line: 379, column: 5)
!983 = distinct !DILexicalBlock(scope: !271, file: !2, line: 379, column: 5)
!984 = !DILocation(line: 379, column: 5, scope: !983)
!985 = !DILocation(line: 381, column: 5, scope: !986)
!986 = distinct !DILexicalBlock(scope: !987, file: !2, line: 381, column: 5)
!987 = distinct !DILexicalBlock(scope: !271, file: !2, line: 381, column: 5)
!988 = !DILocation(line: 381, column: 5, scope: !987)
!989 = !DILocation(line: 383, column: 5, scope: !990)
!990 = distinct !DILexicalBlock(scope: !991, file: !2, line: 383, column: 5)
!991 = distinct !DILexicalBlock(scope: !271, file: !2, line: 383, column: 5)
!992 = !DILocation(line: 383, column: 5, scope: !991)
!993 = !DILocation(line: 385, column: 5, scope: !994)
!994 = distinct !DILexicalBlock(scope: !995, file: !2, line: 385, column: 5)
!995 = distinct !DILexicalBlock(scope: !271, file: !2, line: 385, column: 5)
!996 = !DILocation(line: 385, column: 5, scope: !995)
!997 = !DILocation(line: 387, column: 21, scope: !271)
!998 = !DILocation(line: 389, column: 5, scope: !271)
!999 = !DILocation(line: 390, column: 1, scope: !271)
!1000 = distinct !DIAssignID()
!1001 = !DILocation(line: 0, scope: !333)
!1002 = !DILocation(line: 250, column: 5, scope: !333)
!1003 = !DILocation(line: 250, column: 34, scope: !333)
!1004 = !DILocation(line: 250, column: 31, scope: !333)
!1005 = !DILocation(line: 250, column: 29, scope: !333)
!1006 = distinct !DIAssignID()
!1007 = !DILocation(line: 250, column: 44, scope: !333)
!1008 = !DILocation(line: 250, column: 41, scope: !333)
!1009 = distinct !DIAssignID()
!1010 = !DILocation(line: 250, column: 54, scope: !333)
!1011 = !DILocation(line: 250, column: 51, scope: !333)
!1012 = distinct !DIAssignID()
!1013 = !DILocation(line: 250, column: 64, scope: !333)
!1014 = !DILocation(line: 250, column: 61, scope: !333)
!1015 = distinct !DIAssignID()
!1016 = !DILocation(line: 250, column: 74, scope: !333)
!1017 = !DILocation(line: 250, column: 71, scope: !333)
!1018 = distinct !DIAssignID()
!1019 = !DILocation(line: 250, column: 84, scope: !333)
!1020 = !DILocation(line: 250, column: 81, scope: !333)
!1021 = distinct !DIAssignID()
!1022 = !DILocation(line: 250, column: 94, scope: !333)
!1023 = !DILocation(line: 250, column: 91, scope: !333)
!1024 = distinct !DIAssignID()
!1025 = !DILocation(line: 250, column: 100, scope: !333)
!1026 = distinct !DIAssignID()
!1027 = !DILocation(line: 253, column: 5, scope: !361)
!1028 = !DILocation(line: 253, column: 5, scope: !362)
!1029 = !DILocation(line: 254, column: 21, scope: !333)
!1030 = !DILocation(line: 254, column: 5, scope: !333)
!1031 = !DILocation(line: 256, column: 5, scope: !416)
!1032 = !DILocation(line: 256, column: 5, scope: !417)
!1033 = !DILocation(line: 257, column: 5, scope: !447)
!1034 = !DILocation(line: 0, scope: !365, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 257, column: 5, scope: !447)
!1036 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1035)
!1037 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1035)
!1038 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !1035)
!1039 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !1035)
!1040 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1035)
!1041 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1035)
!1042 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !1035)
!1043 = !DILocation(line: 0, scope: !374, inlinedAt: !1035)
!1044 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !1035)
!1045 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !1035)
!1046 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !1035)
!1047 = distinct !{!1047, !1044, !1048}
!1048 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !1035)
!1049 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !1035)
!1050 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !1035)
!1051 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !1035)
!1052 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !1035)
!1053 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !1035)
!1054 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !1035)
!1055 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !1035)
!1056 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1035)
!1057 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1035)
!1058 = !DILocation(line: 110, column: 46, scope: !365, inlinedAt: !1035)
!1059 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1035)
!1060 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1035)
!1061 = !DILocation(line: 259, column: 1, scope: !333)
!1062 = !DILocation(line: 0, scope: !731)
!1063 = !DILocation(line: 232, column: 18, scope: !731)
!1064 = !DILocation(line: 234, column: 5, scope: !744)
!1065 = !DILocation(line: 234, column: 5, scope: !745)
!1066 = !DILocation(line: 235, column: 5, scope: !775)
!1067 = !DILocation(line: 235, column: 5, scope: !776)
!1068 = !DILocation(line: 0, scope: !365, inlinedAt: !1069)
!1069 = distinct !DILocation(line: 236, column: 5, scope: !780)
!1070 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1069)
!1071 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1069)
!1072 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !1069)
!1073 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !1069)
!1074 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1069)
!1075 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1069)
!1076 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !1069)
!1077 = !DILocation(line: 0, scope: !374, inlinedAt: !1069)
!1078 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !1069)
!1079 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !1069)
!1080 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !1069)
!1081 = distinct !{!1081, !1078, !1082}
!1082 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !1069)
!1083 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !1069)
!1084 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !1069)
!1085 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !1069)
!1086 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !1069)
!1087 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !1069)
!1088 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !1069)
!1089 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !1069)
!1090 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1069)
!1091 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1069)
!1092 = !DILocation(line: 110, column: 46, scope: !365, inlinedAt: !1069)
!1093 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1069)
!1094 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1069)
!1095 = !DILocation(line: 238, column: 1, scope: !731)
!1096 = distinct !DISubprogram(name: "mk_close_context", scope: !2, file: !2, line: 187, type: !1097, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !1100)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!53, !109, !1099}
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!1100 = !{!1101, !1102}
!1101 = !DILocalVariable(name: "c", arg: 1, scope: !1096, file: !2, line: 187, type: !109)
!1102 = !DILocalVariable(name: "off", arg: 2, scope: !1096, file: !2, line: 187, type: !1099)
!1103 = !DILocation(line: 0, scope: !1096)
!1104 = !DILocation(line: 189, column: 12, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1096, file: !2, line: 189, column: 9)
!1106 = !DILocation(line: 189, column: 9, scope: !1105)
!1107 = !DILocation(line: 189, column: 9, scope: !1096)
!1108 = !DILocation(line: 191, column: 9, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !2, line: 191, column: 9)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !2, line: 191, column: 9)
!1111 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 190, column: 5)
!1112 = !DILocation(line: 191, column: 9, scope: !1110)
!1113 = !DILocation(line: 192, column: 9, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 192, column: 9)
!1115 = distinct !DILexicalBlock(scope: !1111, file: !2, line: 192, column: 9)
!1116 = !DILocation(line: 192, column: 9, scope: !1115)
!1117 = !DILocation(line: 195, column: 12, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1096, file: !2, line: 195, column: 9)
!1119 = !DILocation(line: 195, column: 9, scope: !1118)
!1120 = !DILocation(line: 195, column: 19, scope: !1118)
!1121 = !DILocation(line: 196, column: 28, scope: !1118)
!1122 = !DILocation(line: 196, column: 14, scope: !1118)
!1123 = !DILocation(line: 196, column: 9, scope: !1118)
!1124 = !DILocalVariable(name: "c", arg: 1, scope: !1125, file: !2, line: 172, type: !109)
!1125 = distinct !DISubprogram(name: "mk_flush_context_data", scope: !2, file: !2, line: 172, type: !1126, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !1128)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!53, !109}
!1128 = !{!1124}
!1129 = !DILocation(line: 0, scope: !1125, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 198, column: 5, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !2, line: 198, column: 5)
!1132 = distinct !DILexicalBlock(scope: !1096, file: !2, line: 198, column: 5)
!1133 = !DILocation(line: 174, column: 13, scope: !1134, inlinedAt: !1130)
!1134 = distinct !DILexicalBlock(scope: !1125, file: !2, line: 174, column: 9)
!1135 = !DILocation(line: 174, column: 10, scope: !1134, inlinedAt: !1130)
!1136 = !DILocation(line: 174, column: 9, scope: !1125, inlinedAt: !1130)
!1137 = !DILocation(line: 177, column: 12, scope: !1138, inlinedAt: !1130)
!1138 = distinct !DILexicalBlock(scope: !1125, file: !2, line: 177, column: 9)
!1139 = !DILocation(line: 177, column: 9, scope: !1138, inlinedAt: !1130)
!1140 = !DILocation(line: 0, scope: !1138, inlinedAt: !1130)
!1141 = !DILocation(line: 177, column: 9, scope: !1125, inlinedAt: !1130)
!1142 = !DILocation(line: 0, scope: !365, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 178, column: 9, scope: !1144, inlinedAt: !1130)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !2, line: 178, column: 9)
!1145 = distinct !DILexicalBlock(scope: !1138, file: !2, line: 178, column: 9)
!1146 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1143)
!1147 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1143)
!1148 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !1143)
!1149 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !1143)
!1150 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1143)
!1151 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1143)
!1152 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !1143)
!1153 = !DILocation(line: 0, scope: !374, inlinedAt: !1143)
!1154 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !1143)
!1155 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !1143)
!1156 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !1143)
!1157 = distinct !{!1157, !1154, !1158}
!1158 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !1143)
!1159 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !1143)
!1160 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !1143)
!1161 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !1143)
!1162 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !1143)
!1163 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !1143)
!1164 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !1143)
!1165 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !1143)
!1166 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1143)
!1167 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1143)
!1168 = !DILocation(line: 110, column: 46, scope: !365, inlinedAt: !1143)
!1169 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1143)
!1170 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1143)
!1171 = !DILocation(line: 178, column: 9, scope: !1145, inlinedAt: !1130)
!1172 = !DILocation(line: 179, column: 31, scope: !1173, inlinedAt: !1130)
!1173 = distinct !DILexicalBlock(scope: !1138, file: !2, line: 179, column: 14)
!1174 = !DILocation(line: 179, column: 47, scope: !1173, inlinedAt: !1130)
!1175 = !DILocation(line: 179, column: 54, scope: !1173, inlinedAt: !1130)
!1176 = !DILocation(line: 179, column: 14, scope: !1173, inlinedAt: !1130)
!1177 = !DILocation(line: 179, column: 59, scope: !1173, inlinedAt: !1130)
!1178 = !DILocation(line: 179, column: 14, scope: !1138, inlinedAt: !1130)
!1179 = !DILocation(line: 182, column: 14, scope: !1125, inlinedAt: !1130)
!1180 = !DILocation(line: 184, column: 5, scope: !1125, inlinedAt: !1130)
!1181 = !DILocation(line: 200, column: 12, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1096, file: !2, line: 200, column: 9)
!1183 = !DILocation(line: 200, column: 9, scope: !1182)
!1184 = !DILocation(line: 200, column: 9, scope: !1096)
!1185 = !DILocation(line: 201, column: 18, scope: !1182)
!1186 = !DILocation(line: 201, column: 23, scope: !1182)
!1187 = !DILocation(line: 202, column: 21, scope: !1096)
!1188 = !DILocation(line: 201, column: 9, scope: !1182)
!1189 = !DILocation(line: 202, column: 16, scope: !1096)
!1190 = !DILocation(line: 203, column: 18, scope: !1096)
!1191 = !DILocation(line: 203, column: 25, scope: !1096)
!1192 = !DILocation(line: 203, column: 13, scope: !1096)
!1193 = !DILocation(line: 204, column: 24, scope: !1096)
!1194 = !DILocation(line: 206, column: 5, scope: !1096)
!1195 = !DILocation(line: 207, column: 1, scope: !1096)
!1196 = distinct !DISubprogram(name: "mk_flush_context_id", scope: !2, file: !2, line: 157, type: !1126, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !1197)
!1197 = !{!1198, !1199}
!1198 = !DILocalVariable(name: "c", arg: 1, scope: !1196, file: !2, line: 157, type: !109)
!1199 = !DILocalVariable(name: "ff", scope: !1196, file: !2, line: 159, type: !341)
!1200 = !DILocation(line: 0, scope: !1196)
!1201 = !DILocation(line: 161, column: 13, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 161, column: 9)
!1203 = !DILocation(line: 161, column: 10, scope: !1202)
!1204 = !DILocation(line: 161, column: 9, scope: !1196)
!1205 = !DILocation(line: 164, column: 5, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !2, line: 164, column: 5)
!1207 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 164, column: 5)
!1208 = !DILocation(line: 164, column: 5, scope: !1207)
!1209 = !DILocation(line: 165, column: 5, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !2, line: 165, column: 5)
!1211 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 165, column: 5)
!1212 = !DILocation(line: 0, scope: !365, inlinedAt: !1213)
!1213 = distinct !DILocation(line: 165, column: 5, scope: !1210)
!1214 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1213)
!1215 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1213)
!1216 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !1213)
!1217 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !1213)
!1218 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1213)
!1219 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1213)
!1220 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !1213)
!1221 = !DILocation(line: 0, scope: !374, inlinedAt: !1213)
!1222 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !1213)
!1223 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !1213)
!1224 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !1213)
!1225 = distinct !{!1225, !1222, !1226}
!1226 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !1213)
!1227 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !1213)
!1228 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !1213)
!1229 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !1213)
!1230 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !1213)
!1231 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !1213)
!1232 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !1213)
!1233 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !1213)
!1234 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1213)
!1235 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1213)
!1236 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1213)
!1237 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1213)
!1238 = !DILocation(line: 167, column: 11, scope: !1196)
!1239 = !DILocation(line: 169, column: 5, scope: !1196)
!1240 = !DILocation(line: 170, column: 1, scope: !1196)
!1241 = distinct !DISubprogram(name: "mk_write_float", scope: !2, file: !2, line: 279, type: !1242, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !1244)
!1242 = !DISubroutineType(cc: DW_CC_nocall, types: !1243)
!1243 = !{!53, !109, !107, !14}
!1244 = !{!1245, !1246, !1247}
!1245 = !DILocalVariable(name: "c", arg: 1, scope: !1241, file: !2, line: 279, type: !109)
!1246 = !DILocalVariable(name: "id", arg: 2, scope: !1241, file: !2, line: 279, type: !107)
!1247 = !DILocalVariable(name: "f", arg: 3, scope: !1241, file: !2, line: 279, type: !14)
!1248 = !DILocation(line: 0, scope: !1241)
!1249 = !DILocation(line: 0, scope: !350, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 281, column: 5, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 281, column: 5)
!1252 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 281, column: 5)
!1253 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !1254)
!1254 = distinct !DILocation(line: 0, scope: !350, inlinedAt: !1250)
!1255 = !DILocation(line: 0, scope: !365, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 127, column: 12, scope: !350, inlinedAt: !1250)
!1257 = !DILocation(line: 0, scope: !365, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 126, column: 16, scope: !381, inlinedAt: !1250)
!1259 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1254)
!1260 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1258)
!1261 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !1258)
!1262 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1258)
!1263 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1258)
!1264 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !1258)
!1265 = !DILocation(line: 0, scope: !374, inlinedAt: !1258)
!1266 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !1258)
!1267 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !1258)
!1268 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !1258)
!1269 = distinct !{!1269, !1266, !1270}
!1270 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !1258)
!1271 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !1258)
!1272 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !1258)
!1273 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !1258)
!1274 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !1258)
!1275 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !1258)
!1276 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !1258)
!1277 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !1258)
!1278 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1258)
!1279 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1258)
!1280 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1258)
!1281 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1258)
!1282 = !DILocation(line: 0, scope: !407, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 282, column: 5, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 282, column: 5)
!1285 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 282, column: 5)
!1286 = !DILocation(line: 0, scope: !365, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 137, column: 16, scope: !420, inlinedAt: !1283)
!1288 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1287)
!1289 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !1287)
!1290 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !1287)
!1291 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1287)
!1292 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1287)
!1293 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !1287)
!1294 = !DILocation(line: 0, scope: !374, inlinedAt: !1287)
!1295 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !1287)
!1296 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !1287)
!1297 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !1287)
!1298 = distinct !{!1298, !1295, !1299}
!1299 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !1287)
!1300 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !1287)
!1301 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !1287)
!1302 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !1287)
!1303 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !1287)
!1304 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !1287)
!1305 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !1287)
!1306 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !1287)
!1307 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1287)
!1308 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1287)
!1309 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1287)
!1310 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1287)
!1311 = !DILocalVariable(name: "c", arg: 1, scope: !1312, file: !2, line: 261, type: !109)
!1312 = distinct !DISubprogram(name: "mk_write_float_raw", scope: !2, file: !2, line: 261, type: !1313, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !1315)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!53, !109, !14}
!1315 = !{!1311, !1316, !1317, !1322}
!1316 = !DILocalVariable(name: "f", arg: 2, scope: !1312, file: !2, line: 261, type: !14)
!1317 = !DILocalVariable(name: "u", scope: !1312, file: !2, line: 267, type: !1318)
!1318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1312, file: !2, line: 263, size: 32, elements: !1319)
!1319 = !{!1320, !1321}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1318, file: !2, line: 265, baseType: !14, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1318, file: !2, line: 266, baseType: !107, size: 32)
!1322 = !DILocalVariable(name: "c_f", scope: !1312, file: !2, line: 268, type: !356)
!1323 = !DILocation(line: 0, scope: !1312, inlinedAt: !1324)
!1324 = distinct !DILocation(line: 283, column: 5, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !2, line: 283, column: 5)
!1326 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 283, column: 5)
!1327 = !DILocation(line: 0, scope: !365, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 276, column: 12, scope: !1312, inlinedAt: !1324)
!1329 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1328)
!1330 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !1328)
!1331 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !1328)
!1332 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1328)
!1333 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1328)
!1334 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !1328)
!1335 = !DILocation(line: 0, scope: !374, inlinedAt: !1328)
!1336 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !1328)
!1337 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !1328)
!1338 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !1328)
!1339 = distinct !{!1339, !1336, !1340}
!1340 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !1328)
!1341 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !1328)
!1342 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !1328)
!1343 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !1328)
!1344 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !1328)
!1345 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !1328)
!1346 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !1328)
!1347 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !1328)
!1348 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1328)
!1349 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1328)
!1350 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1328)
!1351 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1328)
!1352 = !DILocation(line: 285, column: 1, scope: !1241)
!1353 = distinct !DISubprogram(name: "mk_write_bin", scope: !2, file: !2, line: 240, type: !1354, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !1356)
!1354 = !DISubroutineType(cc: DW_CC_nocall, types: !1355)
!1355 = !{!53, !109, !107, !274, !107}
!1356 = !{!1357, !1358, !1359, !1360}
!1357 = !DILocalVariable(name: "c", arg: 1, scope: !1353, file: !2, line: 240, type: !109)
!1358 = !DILocalVariable(name: "id", arg: 2, scope: !1353, file: !2, line: 240, type: !107)
!1359 = !DILocalVariable(name: "data", arg: 3, scope: !1353, file: !2, line: 240, type: !274)
!1360 = !DILocalVariable(name: "size", arg: 4, scope: !1353, file: !2, line: 240, type: !107)
!1361 = !DILocation(line: 0, scope: !1353)
!1362 = !DILocation(line: 0, scope: !350, inlinedAt: !1363)
!1363 = distinct !DILocation(line: 242, column: 5, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !2, line: 242, column: 5)
!1365 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 242, column: 5)
!1366 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 0, scope: !350, inlinedAt: !1363)
!1368 = !DILocation(line: 0, scope: !365, inlinedAt: !1369)
!1369 = distinct !DILocation(line: 127, column: 12, scope: !350, inlinedAt: !1363)
!1370 = !DILocation(line: 0, scope: !365, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 126, column: 16, scope: !381, inlinedAt: !1363)
!1372 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1367)
!1373 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1371)
!1374 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !1371)
!1375 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1371)
!1376 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1371)
!1377 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !1371)
!1378 = !DILocation(line: 0, scope: !374, inlinedAt: !1371)
!1379 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !1371)
!1380 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !1371)
!1381 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !1371)
!1382 = distinct !{!1382, !1379, !1383}
!1383 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !1371)
!1384 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !1371)
!1385 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !1371)
!1386 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !1371)
!1387 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !1371)
!1388 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !1371)
!1389 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !1371)
!1390 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !1371)
!1391 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1371)
!1392 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1371)
!1393 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1371)
!1394 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1371)
!1395 = !DILocation(line: 243, column: 5, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !2, line: 243, column: 5)
!1397 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 243, column: 5)
!1398 = !DILocation(line: 243, column: 5, scope: !1397)
!1399 = !DILocation(line: 0, scope: !365, inlinedAt: !1400)
!1400 = distinct !DILocation(line: 244, column: 5, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !2, line: 244, column: 5)
!1402 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 244, column: 5)
!1403 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1400)
!1404 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1400)
!1405 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !1400)
!1406 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !1400)
!1407 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1400)
!1408 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1400)
!1409 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !1400)
!1410 = !DILocation(line: 0, scope: !374, inlinedAt: !1400)
!1411 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !1400)
!1412 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !1400)
!1413 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !1400)
!1414 = distinct !{!1414, !1411, !1415}
!1415 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !1400)
!1416 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !1400)
!1417 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !1400)
!1418 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !1400)
!1419 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !1400)
!1420 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !1400)
!1421 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !1400)
!1422 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !1400)
!1423 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1400)
!1424 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1400)
!1425 = !DILocation(line: 110, column: 46, scope: !365, inlinedAt: !1400)
!1426 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1400)
!1427 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1400)
!1428 = !DILocation(line: 246, column: 1, scope: !1353)
!1429 = !DILocation(line: 0, scope: !1125)
!1430 = !DILocation(line: 174, column: 13, scope: !1134)
!1431 = !DILocation(line: 174, column: 10, scope: !1134)
!1432 = !DILocation(line: 174, column: 9, scope: !1125)
!1433 = !DILocation(line: 177, column: 12, scope: !1138)
!1434 = !DILocation(line: 177, column: 9, scope: !1138)
!1435 = !DILocation(line: 0, scope: !1138)
!1436 = !DILocation(line: 177, column: 9, scope: !1125)
!1437 = !DILocation(line: 0, scope: !365, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 178, column: 9, scope: !1144)
!1439 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1438)
!1440 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1438)
!1441 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !1438)
!1442 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !1438)
!1443 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1438)
!1444 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1438)
!1445 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !1438)
!1446 = !DILocation(line: 0, scope: !374, inlinedAt: !1438)
!1447 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !1438)
!1448 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !1438)
!1449 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !1438)
!1450 = distinct !{!1450, !1447, !1451}
!1451 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !1438)
!1452 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !1438)
!1453 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !1438)
!1454 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !1438)
!1455 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !1438)
!1456 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !1438)
!1457 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !1438)
!1458 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !1438)
!1459 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1438)
!1460 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1438)
!1461 = !DILocation(line: 110, column: 46, scope: !365, inlinedAt: !1438)
!1462 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1438)
!1463 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1438)
!1464 = !DILocation(line: 178, column: 9, scope: !1145)
!1465 = !DILocation(line: 179, column: 31, scope: !1173)
!1466 = !DILocation(line: 179, column: 47, scope: !1173)
!1467 = !DILocation(line: 179, column: 54, scope: !1173)
!1468 = !DILocation(line: 179, column: 14, scope: !1173)
!1469 = !DILocation(line: 179, column: 59, scope: !1173)
!1470 = !DILocation(line: 179, column: 14, scope: !1138)
!1471 = !DILocation(line: 182, column: 14, scope: !1125)
!1472 = !DILocation(line: 184, column: 5, scope: !1125)
!1473 = !DILocation(line: 185, column: 1, scope: !1125)
!1474 = distinct !DISubprogram(name: "mk_start_frame", scope: !2, file: !2, line: 451, type: !1475, scopeLine: 452, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !1477)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!53, !40}
!1477 = !{!1478}
!1478 = !DILocalVariable(name: "w", arg: 1, scope: !1474, file: !2, line: 451, type: !40)
!1479 = !DILocation(line: 0, scope: !1474)
!1480 = !DILocation(line: 453, column: 9, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1474, file: !2, line: 453, column: 9)
!1482 = !DILocation(line: 453, column: 29, scope: !1481)
!1483 = !DILocation(line: 453, column: 9, scope: !1474)
!1484 = !DILocation(line: 456, column: 8, scope: !1474)
!1485 = !DILocation(line: 456, column: 18, scope: !1474)
!1486 = !DILocation(line: 457, column: 8, scope: !1474)
!1487 = !DILocation(line: 457, column: 18, scope: !1474)
!1488 = !DILocation(line: 458, column: 8, scope: !1474)
!1489 = !DILocation(line: 458, column: 18, scope: !1474)
!1490 = !DILocation(line: 460, column: 5, scope: !1474)
!1491 = !DILocation(line: 461, column: 1, scope: !1474)
!1492 = distinct !DISubprogram(name: "mk_flush_frame", scope: !2, file: !2, line: 402, type: !1475, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !1493)
!1493 = !{!1494, !1495, !1496, !1497}
!1494 = !DILocalVariable(name: "w", arg: 1, scope: !1492, file: !2, line: 402, type: !40)
!1495 = !DILocalVariable(name: "delta", scope: !1492, file: !2, line: 404, type: !128)
!1496 = !DILocalVariable(name: "fsize", scope: !1492, file: !2, line: 405, type: !107)
!1497 = !DILocalVariable(name: "c_delta_flags", scope: !1492, file: !2, line: 406, type: !1498)
!1498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 24, elements: !5)
!1499 = !DILocation(line: 0, scope: !1492)
!1500 = !DILocation(line: 408, column: 13, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1492, file: !2, line: 408, column: 9)
!1502 = !DILocation(line: 408, column: 10, scope: !1501)
!1503 = !DILocation(line: 408, column: 9, scope: !1492)
!1504 = !DILocation(line: 411, column: 16, scope: !1492)
!1505 = !DILocation(line: 411, column: 28, scope: !1492)
!1506 = !DILocation(line: 411, column: 24, scope: !1492)
!1507 = !DILocation(line: 411, column: 43, scope: !1492)
!1508 = !DILocation(line: 411, column: 38, scope: !1492)
!1509 = !DILocation(line: 412, column: 25, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1492, file: !2, line: 412, column: 9)
!1511 = !DILocation(line: 413, column: 9, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !2, line: 413, column: 9)
!1513 = distinct !DILexicalBlock(scope: !1510, file: !2, line: 413, column: 9)
!1514 = !DILocation(line: 413, column: 9, scope: !1513)
!1515 = !DILocation(line: 415, column: 13, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1492, file: !2, line: 415, column: 9)
!1517 = !DILocation(line: 415, column: 10, scope: !1516)
!1518 = !DILocation(line: 415, column: 9, scope: !1492)
!1519 = !DILocation(line: 417, column: 35, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 416, column: 5)
!1521 = !DILocation(line: 417, column: 49, scope: !1520)
!1522 = !DILocation(line: 417, column: 44, scope: !1520)
!1523 = !DILocation(line: 417, column: 30, scope: !1520)
!1524 = !DILocation(line: 418, column: 47, scope: !1520)
!1525 = !DILocation(line: 0, scope: !150, inlinedAt: !1526)
!1526 = distinct !DILocation(line: 418, column: 22, scope: !1520)
!1527 = !DILocation(line: 65, column: 12, scope: !160, inlinedAt: !1526)
!1528 = !DILocation(line: 65, column: 9, scope: !160, inlinedAt: !1526)
!1529 = !DILocation(line: 65, column: 9, scope: !150, inlinedAt: !1526)
!1530 = !DILocation(line: 68, column: 36, scope: !235, inlinedAt: !1526)
!1531 = !DILocation(line: 68, column: 21, scope: !235, inlinedAt: !1526)
!1532 = !DILocation(line: 69, column: 5, scope: !235, inlinedAt: !1526)
!1533 = !DILocation(line: 72, column: 13, scope: !162, inlinedAt: !1526)
!1534 = !DILocation(line: 73, column: 14, scope: !164, inlinedAt: !1526)
!1535 = !DILocation(line: 73, column: 13, scope: !162, inlinedAt: !1526)
!1536 = !DILocation(line: 418, column: 20, scope: !1520)
!1537 = !DILocation(line: 419, column: 13, scope: !1520)
!1538 = !DILocation(line: 0, scope: !160, inlinedAt: !1526)
!1539 = !DILocation(line: 78, column: 8, scope: !150, inlinedAt: !1526)
!1540 = !DILocation(line: 78, column: 15, scope: !150, inlinedAt: !1526)
!1541 = !DILocation(line: 79, column: 8, scope: !150, inlinedAt: !1526)
!1542 = !DILocation(line: 79, column: 14, scope: !150, inlinedAt: !1526)
!1543 = !DILocation(line: 80, column: 8, scope: !150, inlinedAt: !1526)
!1544 = !DILocation(line: 80, column: 11, scope: !150, inlinedAt: !1526)
!1545 = !DILocation(line: 82, column: 19, scope: !173, inlinedAt: !1526)
!1546 = !DILocation(line: 82, column: 9, scope: !173, inlinedAt: !1526)
!1547 = !DILocation(line: 82, column: 9, scope: !150, inlinedAt: !1526)
!1548 = !DILocation(line: 83, column: 28, scope: !173, inlinedAt: !1526)
!1549 = !DILocation(line: 83, column: 33, scope: !173, inlinedAt: !1526)
!1550 = !DILocation(line: 84, column: 18, scope: !150, inlinedAt: !1526)
!1551 = !DILocation(line: 84, column: 25, scope: !150, inlinedAt: !1526)
!1552 = !DILocation(line: 83, column: 9, scope: !173, inlinedAt: !1526)
!1553 = !DILocation(line: 84, column: 13, scope: !150, inlinedAt: !1526)
!1554 = !DILocation(line: 85, column: 8, scope: !150, inlinedAt: !1526)
!1555 = !DILocation(line: 85, column: 13, scope: !150, inlinedAt: !1526)
!1556 = !DILocation(line: 86, column: 23, scope: !150, inlinedAt: !1526)
!1557 = !DILocation(line: 422, column: 9, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !2, line: 422, column: 9)
!1559 = distinct !DILexicalBlock(scope: !1520, file: !2, line: 422, column: 9)
!1560 = !DILocation(line: 422, column: 9, scope: !1559)
!1561 = !DILocation(line: 427, column: 16, scope: !1492)
!1562 = !DILocation(line: 427, column: 13, scope: !1492)
!1563 = !DILocation(line: 427, column: 34, scope: !1492)
!1564 = !DILocation(line: 430, column: 5, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !2, line: 430, column: 5)
!1566 = distinct !DILexicalBlock(scope: !1492, file: !2, line: 430, column: 5)
!1567 = !DILocation(line: 429, column: 5, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !2, line: 429, column: 5)
!1569 = distinct !DILexicalBlock(scope: !1492, file: !2, line: 429, column: 5)
!1570 = !DILocation(line: 0, scope: !350, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 429, column: 5, scope: !1568)
!1572 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !1573)
!1573 = distinct !DILocation(line: 0, scope: !350, inlinedAt: !1571)
!1574 = !DILocation(line: 0, scope: !365, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 127, column: 12, scope: !350, inlinedAt: !1571)
!1576 = !DILocation(line: 0, scope: !365, inlinedAt: !1577)
!1577 = distinct !DILocation(line: 126, column: 16, scope: !381, inlinedAt: !1571)
!1578 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1573)
!1579 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1575)
!1580 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !1575)
!1581 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1575)
!1582 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1575)
!1583 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !1575)
!1584 = !DILocation(line: 0, scope: !374, inlinedAt: !1575)
!1585 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !1575)
!1586 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !1575)
!1587 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !1575)
!1588 = distinct !{!1588, !1585, !1589}
!1589 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !1575)
!1590 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !1575)
!1591 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !1575)
!1592 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !1575)
!1593 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !1575)
!1594 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !1575)
!1595 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !1575)
!1596 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !1575)
!1597 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1575)
!1598 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1575)
!1599 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1575)
!1600 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1575)
!1601 = !DILocation(line: 430, column: 5, scope: !1566)
!1602 = !DILocation(line: 431, column: 5, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !2, line: 431, column: 5)
!1604 = distinct !DILexicalBlock(scope: !1492, file: !2, line: 431, column: 5)
!1605 = !DILocation(line: 0, scope: !407, inlinedAt: !1606)
!1606 = distinct !DILocation(line: 431, column: 5, scope: !1603)
!1607 = !DILocation(line: 0, scope: !365, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 137, column: 16, scope: !420, inlinedAt: !1606)
!1609 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1608)
!1610 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1608)
!1611 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !1608)
!1612 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !1608)
!1613 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1608)
!1614 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1608)
!1615 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !1608)
!1616 = !DILocation(line: 0, scope: !374, inlinedAt: !1608)
!1617 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !1608)
!1618 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !1608)
!1619 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !1608)
!1620 = distinct !{!1620, !1617, !1621}
!1621 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !1608)
!1622 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !1608)
!1623 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !1608)
!1624 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !1608)
!1625 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !1608)
!1626 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !1608)
!1627 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !1608)
!1628 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !1608)
!1629 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1608)
!1630 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1608)
!1631 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1608)
!1632 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1608)
!1633 = !DILocation(line: 433, column: 30, scope: !1492)
!1634 = !DILocation(line: 433, column: 24, scope: !1492)
!1635 = !DILocation(line: 434, column: 24, scope: !1492)
!1636 = !DILocation(line: 435, column: 28, scope: !1492)
!1637 = !DILocation(line: 435, column: 37, scope: !1492)
!1638 = !DILocation(line: 435, column: 48, scope: !1492)
!1639 = !DILocation(line: 435, column: 43, scope: !1492)
!1640 = !DILocation(line: 436, column: 5, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !2, line: 436, column: 5)
!1642 = distinct !DILexicalBlock(scope: !1492, file: !2, line: 436, column: 5)
!1643 = !DILocation(line: 0, scope: !365, inlinedAt: !1644)
!1644 = distinct !DILocation(line: 436, column: 5, scope: !1641)
!1645 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1644)
!1646 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1644)
!1647 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !1644)
!1648 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !1644)
!1649 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1644)
!1650 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1644)
!1651 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !1644)
!1652 = !DILocation(line: 0, scope: !374, inlinedAt: !1644)
!1653 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !1644)
!1654 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !1644)
!1655 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !1644)
!1656 = distinct !{!1656, !1653, !1657}
!1657 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !1644)
!1658 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !1644)
!1659 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !1644)
!1660 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !1644)
!1661 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !1644)
!1662 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !1644)
!1663 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !1644)
!1664 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !1644)
!1665 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1644)
!1666 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1644)
!1667 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1644)
!1668 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1644)
!1669 = !DILocation(line: 437, column: 12, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1492, file: !2, line: 437, column: 9)
!1671 = !DILocation(line: 437, column: 9, scope: !1670)
!1672 = !DILocation(line: 437, column: 9, scope: !1492)
!1673 = !DILocation(line: 439, column: 9, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !2, line: 439, column: 9)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 439, column: 9)
!1676 = distinct !DILexicalBlock(scope: !1670, file: !2, line: 438, column: 5)
!1677 = !DILocation(line: 0, scope: !365, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 439, column: 9, scope: !1674)
!1679 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1678)
!1680 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1678)
!1681 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !1678)
!1682 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !1678)
!1683 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1678)
!1684 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1678)
!1685 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !1678)
!1686 = !DILocation(line: 0, scope: !374, inlinedAt: !1678)
!1687 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !1678)
!1688 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !1678)
!1689 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !1678)
!1690 = distinct !{!1690, !1687, !1691}
!1691 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !1678)
!1692 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !1678)
!1693 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !1678)
!1694 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !1678)
!1695 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !1678)
!1696 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !1678)
!1697 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !1678)
!1698 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !1678)
!1699 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1678)
!1700 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1678)
!1701 = !DILocation(line: 110, column: 46, scope: !365, inlinedAt: !1678)
!1702 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1678)
!1703 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1678)
!1704 = !DILocation(line: 440, column: 12, scope: !1676)
!1705 = !DILocation(line: 440, column: 19, scope: !1676)
!1706 = !DILocation(line: 440, column: 25, scope: !1676)
!1707 = !DILocation(line: 441, column: 5, scope: !1676)
!1708 = !DILocation(line: 443, column: 17, scope: !1492)
!1709 = !DILocation(line: 445, column: 12, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1492, file: !2, line: 445, column: 9)
!1711 = !DILocation(line: 445, column: 21, scope: !1710)
!1712 = !DILocation(line: 445, column: 27, scope: !1710)
!1713 = !DILocation(line: 445, column: 9, scope: !1492)
!1714 = !DILocation(line: 446, column: 9, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !2, line: 446, column: 9)
!1716 = distinct !DILexicalBlock(scope: !1710, file: !2, line: 446, column: 9)
!1717 = !DILocation(line: 446, column: 9, scope: !1716)
!1718 = !DILocation(line: 448, column: 5, scope: !1492)
!1719 = !DILocation(line: 449, column: 1, scope: !1492)
!1720 = distinct !DISubprogram(name: "mk_set_frame_flags", scope: !2, file: !2, line: 463, type: !1721, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !1723)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!53, !40, !128, !53, !53}
!1723 = !{!1724, !1725, !1726, !1727}
!1724 = !DILocalVariable(name: "w", arg: 1, scope: !1720, file: !2, line: 463, type: !40)
!1725 = !DILocalVariable(name: "timestamp", arg: 2, scope: !1720, file: !2, line: 463, type: !128)
!1726 = !DILocalVariable(name: "keyframe", arg: 3, scope: !1720, file: !2, line: 463, type: !53)
!1727 = !DILocalVariable(name: "skippable", arg: 4, scope: !1720, file: !2, line: 463, type: !53)
!1728 = !DILocation(line: 0, scope: !1720)
!1729 = !DILocation(line: 465, column: 13, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1720, file: !2, line: 465, column: 9)
!1731 = !DILocation(line: 465, column: 10, scope: !1730)
!1732 = !DILocation(line: 465, column: 9, scope: !1720)
!1733 = !DILocation(line: 468, column: 8, scope: !1720)
!1734 = !DILocation(line: 468, column: 18, scope: !1720)
!1735 = !DILocation(line: 469, column: 30, scope: !1720)
!1736 = !DILocation(line: 469, column: 20, scope: !1720)
!1737 = !DILocation(line: 469, column: 8, scope: !1720)
!1738 = !DILocation(line: 469, column: 18, scope: !1720)
!1739 = !DILocation(line: 470, column: 30, scope: !1720)
!1740 = !DILocation(line: 470, column: 20, scope: !1720)
!1741 = !DILocation(line: 470, column: 8, scope: !1720)
!1742 = !DILocation(line: 470, column: 18, scope: !1720)
!1743 = !DILocation(line: 472, column: 12, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1720, file: !2, line: 472, column: 9)
!1745 = !DILocation(line: 472, column: 25, scope: !1744)
!1746 = !DILocation(line: 472, column: 9, scope: !1720)
!1747 = !DILocation(line: 473, column: 25, scope: !1744)
!1748 = !DILocation(line: 473, column: 9, scope: !1744)
!1749 = !DILocation(line: 476, column: 1, scope: !1720)
!1750 = distinct !DISubprogram(name: "mk_add_frame_data", scope: !2, file: !2, line: 478, type: !1751, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !1753)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!53, !40, !274, !107}
!1753 = !{!1754, !1755, !1756}
!1754 = !DILocalVariable(name: "w", arg: 1, scope: !1750, file: !2, line: 478, type: !40)
!1755 = !DILocalVariable(name: "data", arg: 2, scope: !1750, file: !2, line: 478, type: !274)
!1756 = !DILocalVariable(name: "size", arg: 3, scope: !1750, file: !2, line: 478, type: !107)
!1757 = !DILocation(line: 0, scope: !1750)
!1758 = !DILocation(line: 480, column: 13, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1750, file: !2, line: 480, column: 9)
!1760 = !DILocation(line: 480, column: 10, scope: !1759)
!1761 = !DILocation(line: 480, column: 9, scope: !1750)
!1762 = !DILocation(line: 483, column: 13, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1750, file: !2, line: 483, column: 9)
!1764 = !DILocation(line: 483, column: 10, scope: !1763)
!1765 = !DILocation(line: 483, column: 9, scope: !1750)
!1766 = !DILocation(line: 0, scope: !150, inlinedAt: !1767)
!1767 = distinct !DILocation(line: 484, column: 26, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1763, file: !2, line: 484, column: 13)
!1769 = !DILocation(line: 65, column: 12, scope: !160, inlinedAt: !1767)
!1770 = !DILocation(line: 65, column: 9, scope: !160, inlinedAt: !1767)
!1771 = !DILocation(line: 65, column: 9, scope: !150, inlinedAt: !1767)
!1772 = !DILocation(line: 68, column: 36, scope: !235, inlinedAt: !1767)
!1773 = !DILocation(line: 68, column: 21, scope: !235, inlinedAt: !1767)
!1774 = !DILocation(line: 69, column: 5, scope: !235, inlinedAt: !1767)
!1775 = !DILocation(line: 72, column: 13, scope: !162, inlinedAt: !1767)
!1776 = !DILocation(line: 73, column: 14, scope: !164, inlinedAt: !1767)
!1777 = !DILocation(line: 73, column: 13, scope: !162, inlinedAt: !1767)
!1778 = !DILocation(line: 484, column: 24, scope: !1768)
!1779 = !DILocation(line: 484, column: 13, scope: !1763)
!1780 = !DILocation(line: 0, scope: !160, inlinedAt: !1767)
!1781 = !DILocation(line: 78, column: 8, scope: !150, inlinedAt: !1767)
!1782 = !DILocation(line: 78, column: 15, scope: !150, inlinedAt: !1767)
!1783 = !DILocation(line: 79, column: 8, scope: !150, inlinedAt: !1767)
!1784 = !DILocation(line: 79, column: 14, scope: !150, inlinedAt: !1767)
!1785 = !DILocation(line: 80, column: 8, scope: !150, inlinedAt: !1767)
!1786 = !DILocation(line: 80, column: 11, scope: !150, inlinedAt: !1767)
!1787 = !DILocation(line: 82, column: 19, scope: !173, inlinedAt: !1767)
!1788 = !DILocation(line: 82, column: 9, scope: !173, inlinedAt: !1767)
!1789 = !DILocation(line: 82, column: 9, scope: !150, inlinedAt: !1767)
!1790 = !DILocation(line: 83, column: 28, scope: !173, inlinedAt: !1767)
!1791 = !DILocation(line: 83, column: 33, scope: !173, inlinedAt: !1767)
!1792 = !DILocation(line: 84, column: 18, scope: !150, inlinedAt: !1767)
!1793 = !DILocation(line: 84, column: 25, scope: !150, inlinedAt: !1767)
!1794 = !DILocation(line: 83, column: 9, scope: !173, inlinedAt: !1767)
!1795 = !DILocation(line: 84, column: 13, scope: !150, inlinedAt: !1767)
!1796 = !DILocation(line: 85, column: 8, scope: !150, inlinedAt: !1767)
!1797 = !DILocation(line: 85, column: 13, scope: !150, inlinedAt: !1767)
!1798 = !DILocation(line: 86, column: 23, scope: !150, inlinedAt: !1767)
!1799 = !DILocation(line: 487, column: 39, scope: !1750)
!1800 = !DILocation(line: 0, scope: !365, inlinedAt: !1801)
!1801 = distinct !DILocation(line: 487, column: 12, scope: !1750)
!1802 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1801)
!1803 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1801)
!1804 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !1801)
!1805 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !1801)
!1806 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1801)
!1807 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1801)
!1808 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !1801)
!1809 = !DILocation(line: 0, scope: !374, inlinedAt: !1801)
!1810 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !1801)
!1811 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !1801)
!1812 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !1801)
!1813 = distinct !{!1813, !1810, !1814}
!1814 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !1801)
!1815 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !1801)
!1816 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !1801)
!1817 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !1801)
!1818 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !1801)
!1819 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !1801)
!1820 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !1801)
!1821 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !1801)
!1822 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1801)
!1823 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1801)
!1824 = !DILocation(line: 110, column: 46, scope: !365, inlinedAt: !1801)
!1825 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1801)
!1826 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1801)
!1827 = !DILocation(line: 114, column: 5, scope: !365, inlinedAt: !1801)
!1828 = !DILocation(line: 488, column: 1, scope: !1750)
!1829 = distinct !DISubprogram(name: "mk_close", scope: !2, file: !2, line: 490, type: !1830, scopeLine: 491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !1832)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!53, !40, !128}
!1832 = !{!1833, !1834, !1835, !1836, !1839}
!1833 = !DILocalVariable(name: "w", arg: 1, scope: !1829, file: !2, line: 490, type: !40)
!1834 = !DILocalVariable(name: "last_delta", arg: 2, scope: !1829, file: !2, line: 490, type: !128)
!1835 = !DILocalVariable(name: "ret", scope: !1829, file: !2, line: 492, type: !53)
!1836 = !DILocalVariable(name: "last_frametime", scope: !1837, file: !2, line: 498, type: !128)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !2, line: 496, column: 5)
!1838 = distinct !DILexicalBlock(scope: !1829, file: !2, line: 495, column: 9)
!1839 = !DILocalVariable(name: "total_duration", scope: !1837, file: !2, line: 499, type: !128)
!1840 = !DILocation(line: 0, scope: !1829)
!1841 = !DILocation(line: 493, column: 9, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1829, file: !2, line: 493, column: 9)
!1843 = !DILocation(line: 493, column: 29, scope: !1842)
!1844 = !DILocation(line: 493, column: 33, scope: !1842)
!1845 = !DILocation(line: 493, column: 36, scope: !1842)
!1846 = !DILocation(line: 493, column: 58, scope: !1842)
!1847 = !DILocation(line: 493, column: 9, scope: !1829)
!1848 = !DILocation(line: 494, column: 9, scope: !1842)
!1849 = !DILocation(line: 495, column: 12, scope: !1838)
!1850 = !DILocation(line: 495, column: 9, scope: !1838)
!1851 = !DILocation(line: 495, column: 25, scope: !1838)
!1852 = !DILocation(line: 497, column: 19, scope: !1837)
!1853 = !DILocation(line: 497, column: 26, scope: !1837)
!1854 = !DILocation(line: 497, column: 23, scope: !1837)
!1855 = !DILocation(line: 497, column: 9, scope: !1837)
!1856 = !DILocation(line: 498, column: 37, scope: !1837)
!1857 = !DILocation(line: 498, column: 34, scope: !1837)
!1858 = !DILocation(line: 0, scope: !1837)
!1859 = !DILocation(line: 499, column: 37, scope: !1837)
!1860 = !DILocation(line: 499, column: 49, scope: !1837)
!1861 = !DILocation(line: 500, column: 36, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1837, file: !2, line: 500, column: 13)
!1863 = !DILocation(line: 500, column: 50, scope: !1862)
!1864 = !DILocation(line: 500, column: 78, scope: !1862)
!1865 = !DILocation(line: 500, column: 75, scope: !1862)
!1866 = !DILocation(line: 500, column: 73, scope: !1862)
!1867 = !DILocation(line: 500, column: 42, scope: !1862)
!1868 = !DILocation(line: 0, scope: !1312, inlinedAt: !1869)
!1869 = distinct !DILocation(line: 500, column: 13, scope: !1862)
!1870 = !DILocation(line: 271, column: 16, scope: !1312, inlinedAt: !1869)
!1871 = !DILocation(line: 271, column: 18, scope: !1312, inlinedAt: !1869)
!1872 = !DILocation(line: 271, column: 14, scope: !1312, inlinedAt: !1869)
!1873 = !DILocation(line: 272, column: 18, scope: !1312, inlinedAt: !1869)
!1874 = !DILocation(line: 272, column: 14, scope: !1312, inlinedAt: !1869)
!1875 = !DILocation(line: 273, column: 18, scope: !1312, inlinedAt: !1869)
!1876 = !DILocation(line: 273, column: 14, scope: !1312, inlinedAt: !1869)
!1877 = !DILocation(line: 274, column: 14, scope: !1312, inlinedAt: !1869)
!1878 = !DILocation(line: 0, scope: !365, inlinedAt: !1879)
!1879 = distinct !DILocation(line: 276, column: 12, scope: !1312, inlinedAt: !1869)
!1880 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1879)
!1881 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1879)
!1882 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !1879)
!1883 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !1879)
!1884 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1879)
!1885 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1879)
!1886 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !1879)
!1887 = !DILocation(line: 0, scope: !374, inlinedAt: !1879)
!1888 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !1879)
!1889 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !1879)
!1890 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !1879)
!1891 = distinct !{!1891, !1888, !1892}
!1892 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !1879)
!1893 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !1879)
!1894 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !1879)
!1895 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !1879)
!1896 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !1879)
!1897 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !1879)
!1898 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !1879)
!1899 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !1879)
!1900 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1879)
!1901 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1879)
!1902 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1879)
!1903 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1879)
!1904 = !DILocation(line: 501, column: 39, scope: !1862)
!1905 = !DILocation(line: 0, scope: !1125, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 501, column: 13, scope: !1862)
!1907 = !DILocation(line: 174, column: 13, scope: !1134, inlinedAt: !1906)
!1908 = !DILocation(line: 174, column: 10, scope: !1134, inlinedAt: !1906)
!1909 = !DILocation(line: 174, column: 9, scope: !1125, inlinedAt: !1906)
!1910 = !DILocation(line: 177, column: 12, scope: !1138, inlinedAt: !1906)
!1911 = !DILocation(line: 177, column: 9, scope: !1138, inlinedAt: !1906)
!1912 = !DILocation(line: 0, scope: !1138, inlinedAt: !1906)
!1913 = !DILocation(line: 177, column: 9, scope: !1125, inlinedAt: !1906)
!1914 = !DILocation(line: 0, scope: !365, inlinedAt: !1915)
!1915 = distinct !DILocation(line: 178, column: 9, scope: !1144, inlinedAt: !1906)
!1916 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !1915)
!1917 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !1915)
!1918 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !1915)
!1919 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !1915)
!1920 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !1915)
!1921 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !1915)
!1922 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !1915)
!1923 = !DILocation(line: 0, scope: !374, inlinedAt: !1915)
!1924 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !1915)
!1925 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !1915)
!1926 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !1915)
!1927 = distinct !{!1927, !1924, !1928}
!1928 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !1915)
!1929 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !1915)
!1930 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !1915)
!1931 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !1915)
!1932 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !1915)
!1933 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !1915)
!1934 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !1915)
!1935 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !1915)
!1936 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !1915)
!1937 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !1915)
!1938 = !DILocation(line: 110, column: 46, scope: !365, inlinedAt: !1915)
!1939 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !1915)
!1940 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !1915)
!1941 = !DILocation(line: 178, column: 9, scope: !1145, inlinedAt: !1906)
!1942 = !DILocation(line: 179, column: 31, scope: !1173, inlinedAt: !1906)
!1943 = !DILocation(line: 179, column: 47, scope: !1173, inlinedAt: !1906)
!1944 = !DILocation(line: 179, column: 54, scope: !1173, inlinedAt: !1906)
!1945 = !DILocation(line: 179, column: 14, scope: !1173, inlinedAt: !1906)
!1946 = !DILocation(line: 179, column: 59, scope: !1173, inlinedAt: !1906)
!1947 = !DILocation(line: 179, column: 14, scope: !1138, inlinedAt: !1906)
!1948 = !DILocation(line: 182, column: 14, scope: !1125, inlinedAt: !1906)
!1949 = !DILocation(line: 184, column: 5, scope: !1125, inlinedAt: !1906)
!1950 = !DILocation(line: 0, scope: !190, inlinedAt: !1951)
!1951 = distinct !DILocation(line: 504, column: 5, scope: !1829)
!1952 = !DILocation(line: 213, column: 31, scope: !196, inlinedAt: !1951)
!1953 = !DILocation(line: 0, scope: !196, inlinedAt: !1951)
!1954 = !DILocation(line: 213, column: 5, scope: !196, inlinedAt: !1951)
!1955 = !DILocation(line: 220, column: 31, scope: !198, inlinedAt: !1951)
!1956 = !DILocation(line: 0, scope: !198, inlinedAt: !1951)
!1957 = !DILocation(line: 220, column: 5, scope: !198, inlinedAt: !1951)
!1958 = !DILocation(line: 215, column: 21, scope: !209, inlinedAt: !1951)
!1959 = !DILocation(line: 216, column: 20, scope: !209, inlinedAt: !1951)
!1960 = !DILocation(line: 216, column: 9, scope: !209, inlinedAt: !1951)
!1961 = !DILocation(line: 217, column: 9, scope: !209, inlinedAt: !1951)
!1962 = distinct !{!1962, !1954, !1963}
!1963 = !DILocation(line: 218, column: 5, scope: !196, inlinedAt: !1951)
!1964 = !DILocation(line: 222, column: 21, scope: !217, inlinedAt: !1951)
!1965 = !DILocation(line: 223, column: 20, scope: !217, inlinedAt: !1951)
!1966 = !DILocation(line: 223, column: 9, scope: !217, inlinedAt: !1951)
!1967 = !DILocation(line: 224, column: 9, scope: !217, inlinedAt: !1951)
!1968 = distinct !{!1968, !1957, !1969}
!1969 = !DILocation(line: 225, column: 5, scope: !198, inlinedAt: !1951)
!1970 = !DILocation(line: 227, column: 35, scope: !190, inlinedAt: !1951)
!1971 = !DILocation(line: 227, column: 40, scope: !190, inlinedAt: !1951)
!1972 = !DILocation(line: 227, column: 30, scope: !190, inlinedAt: !1951)
!1973 = !DILocation(line: 505, column: 16, scope: !1829)
!1974 = !DILocation(line: 505, column: 5, scope: !1829)
!1975 = !DILocation(line: 506, column: 5, scope: !1829)
!1976 = !DILocation(line: 507, column: 5, scope: !1829)
!1977 = distinct !DISubprogram(name: "mk_close_cluster", scope: !2, file: !2, line: 392, type: !1475, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !1978)
!1978 = !{!1979}
!1979 = !DILocalVariable(name: "w", arg: 1, scope: !1977, file: !2, line: 392, type: !40)
!1980 = !DILocation(line: 0, scope: !1977)
!1981 = !DILocation(line: 394, column: 12, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1977, file: !2, line: 394, column: 9)
!1983 = !DILocation(line: 394, column: 20, scope: !1982)
!1984 = !DILocation(line: 394, column: 9, scope: !1977)
!1985 = !DILocation(line: 396, column: 5, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !2, line: 396, column: 5)
!1987 = distinct !DILexicalBlock(scope: !1977, file: !2, line: 396, column: 5)
!1988 = !DILocation(line: 396, column: 5, scope: !1987)
!1989 = !DILocation(line: 397, column: 16, scope: !1977)
!1990 = !DILocation(line: 398, column: 5, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !2, line: 398, column: 5)
!1992 = distinct !DILexicalBlock(scope: !1977, file: !2, line: 398, column: 5)
!1993 = !DILocation(line: 0, scope: !1125, inlinedAt: !1994)
!1994 = distinct !DILocation(line: 398, column: 5, scope: !1991)
!1995 = !DILocation(line: 174, column: 13, scope: !1134, inlinedAt: !1994)
!1996 = !DILocation(line: 174, column: 10, scope: !1134, inlinedAt: !1994)
!1997 = !DILocation(line: 174, column: 9, scope: !1125, inlinedAt: !1994)
!1998 = !DILocation(line: 177, column: 12, scope: !1138, inlinedAt: !1994)
!1999 = !DILocation(line: 177, column: 9, scope: !1138, inlinedAt: !1994)
!2000 = !DILocation(line: 0, scope: !1138, inlinedAt: !1994)
!2001 = !DILocation(line: 177, column: 9, scope: !1125, inlinedAt: !1994)
!2002 = !DILocation(line: 0, scope: !365, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 178, column: 9, scope: !1144, inlinedAt: !1994)
!2004 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !2003)
!2005 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !2003)
!2006 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !2003)
!2007 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !2003)
!2008 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !2003)
!2009 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !2003)
!2010 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !2003)
!2011 = !DILocation(line: 0, scope: !374, inlinedAt: !2003)
!2012 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !2003)
!2013 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !2003)
!2014 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !2003)
!2015 = distinct !{!2015, !2012, !2016}
!2016 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !2003)
!2017 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !2003)
!2018 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !2003)
!2019 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !2003)
!2020 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !2003)
!2021 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !2003)
!2022 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !2003)
!2023 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !2003)
!2024 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !2003)
!2025 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !2003)
!2026 = !DILocation(line: 110, column: 46, scope: !365, inlinedAt: !2003)
!2027 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !2003)
!2028 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !2003)
!2029 = !DILocation(line: 178, column: 9, scope: !1145, inlinedAt: !1994)
!2030 = !DILocation(line: 179, column: 31, scope: !1173, inlinedAt: !1994)
!2031 = !DILocation(line: 179, column: 47, scope: !1173, inlinedAt: !1994)
!2032 = !DILocation(line: 179, column: 54, scope: !1173, inlinedAt: !1994)
!2033 = !DILocation(line: 179, column: 14, scope: !1173, inlinedAt: !1994)
!2034 = !DILocation(line: 179, column: 59, scope: !1173, inlinedAt: !1994)
!2035 = !DILocation(line: 179, column: 14, scope: !1138, inlinedAt: !1994)
!2036 = !DILocation(line: 182, column: 14, scope: !1125, inlinedAt: !1994)
!2037 = !DILocation(line: 184, column: 5, scope: !1125, inlinedAt: !1994)
!2038 = !DILocation(line: 400, column: 1, scope: !1977)
!2039 = !DISubprogram(name: "fseek", scope: !267, file: !267, line: 713, type: !2040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!53, !46, !75, !53}
!2042 = !DISubprogram(name: "fclose", scope: !267, file: !267, line: 178, type: !2043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!53, !46}
!2045 = !DILocation(line: 0, scope: !350)
!2046 = !DILocation(line: 119, column: 34, scope: !350)
!2047 = !DILocation(line: 119, column: 31, scope: !350)
!2048 = !DILocation(line: 119, column: 44, scope: !350)
!2049 = !DILocation(line: 119, column: 41, scope: !350)
!2050 = !DILocation(line: 119, column: 54, scope: !350)
!2051 = !DILocation(line: 119, column: 51, scope: !350)
!2052 = !DILocation(line: 119, column: 60, scope: !350)
!2053 = !DILocation(line: 121, column: 9, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !350, file: !2, line: 121, column: 9)
!2055 = !DILocation(line: 121, column: 9, scope: !350)
!2056 = !DILocation(line: 0, scope: !365, inlinedAt: !2057)
!2057 = distinct !DILocation(line: 122, column: 16, scope: !2054)
!2058 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !2057)
!2059 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !2057)
!2060 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !2057)
!2061 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !2057)
!2062 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !2057)
!2063 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !2057)
!2064 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !2057)
!2065 = !DILocation(line: 0, scope: !374, inlinedAt: !2057)
!2066 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !2057)
!2067 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !2057)
!2068 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !2057)
!2069 = distinct !{!2069, !2066, !2070}
!2070 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !2057)
!2071 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !2057)
!2072 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !2057)
!2073 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !2057)
!2074 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !2057)
!2075 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !2057)
!2076 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !2057)
!2077 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !2057)
!2078 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !2057)
!2079 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !2057)
!2080 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !2057)
!2081 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !2057)
!2082 = !DILocation(line: 114, column: 5, scope: !365, inlinedAt: !2057)
!2083 = !DILocation(line: 123, column: 9, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !350, file: !2, line: 123, column: 9)
!2085 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !2045)
!2086 = !DILocation(line: 123, column: 9, scope: !350)
!2087 = !DILocation(line: 0, scope: !365, inlinedAt: !2088)
!2088 = distinct !DILocation(line: 124, column: 16, scope: !2084)
!2089 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !2088)
!2090 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !2088)
!2091 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !2088)
!2092 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !2088)
!2093 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !2088)
!2094 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !2088)
!2095 = !DILocation(line: 0, scope: !374, inlinedAt: !2088)
!2096 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !2088)
!2097 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !2088)
!2098 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !2088)
!2099 = distinct !{!2099, !2096, !2100}
!2100 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !2088)
!2101 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !2088)
!2102 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !2088)
!2103 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !2088)
!2104 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !2088)
!2105 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !2088)
!2106 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !2088)
!2107 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !2088)
!2108 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !2088)
!2109 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !2088)
!2110 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !2088)
!2111 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !2088)
!2112 = !DILocation(line: 114, column: 5, scope: !365, inlinedAt: !2088)
!2113 = !DILocation(line: 125, column: 9, scope: !381)
!2114 = !DILocation(line: 0, scope: !365, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 127, column: 12, scope: !350)
!2116 = !DILocation(line: 0, scope: !365, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 126, column: 16, scope: !381)
!2118 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !2045)
!2119 = !DILocation(line: 125, column: 9, scope: !350)
!2120 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !2117)
!2121 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !2117)
!2122 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !2117)
!2123 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !2117)
!2124 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !2117)
!2125 = !DILocation(line: 0, scope: !374, inlinedAt: !2117)
!2126 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !2117)
!2127 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !2117)
!2128 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !2117)
!2129 = distinct !{!2129, !2126, !2130}
!2130 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !2117)
!2131 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !2117)
!2132 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !2117)
!2133 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !2117)
!2134 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !2117)
!2135 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !2117)
!2136 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !2117)
!2137 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !2117)
!2138 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !2117)
!2139 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !2117)
!2140 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !2117)
!2141 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !2117)
!2142 = !DILocation(line: 114, column: 5, scope: !365, inlinedAt: !2117)
!2143 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !2115)
!2144 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !2115)
!2145 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !2115)
!2146 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !2115)
!2147 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !2115)
!2148 = !DILocation(line: 0, scope: !374, inlinedAt: !2115)
!2149 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !2115)
!2150 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !2115)
!2151 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !2115)
!2152 = distinct !{!2152, !2149, !2153}
!2153 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !2115)
!2154 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !2115)
!2155 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !2115)
!2156 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !2115)
!2157 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !2115)
!2158 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !2115)
!2159 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !2115)
!2160 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !2115)
!2161 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !2115)
!2162 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !2115)
!2163 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !2115)
!2164 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !2115)
!2165 = !DILocation(line: 114, column: 5, scope: !365, inlinedAt: !2115)
!2166 = !DILocation(line: 128, column: 1, scope: !350)
!2167 = !DILocation(line: 0, scope: !407)
!2168 = !DILocation(line: 132, column: 44, scope: !407)
!2169 = !DILocation(line: 132, column: 39, scope: !407)
!2170 = !DILocation(line: 132, column: 56, scope: !407)
!2171 = !DILocation(line: 132, column: 51, scope: !407)
!2172 = !DILocation(line: 132, column: 68, scope: !407)
!2173 = !DILocation(line: 132, column: 63, scope: !407)
!2174 = !DILocation(line: 132, column: 74, scope: !407)
!2175 = !DILocation(line: 134, column: 14, scope: !421)
!2176 = !DILocation(line: 134, column: 9, scope: !407)
!2177 = !DILocation(line: 136, column: 19, scope: !420)
!2178 = !DILocation(line: 0, scope: !365, inlinedAt: !2179)
!2179 = distinct !DILocation(line: 137, column: 16, scope: !420)
!2180 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !2179)
!2181 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !2179)
!2182 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !2179)
!2183 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !2179)
!2184 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !2179)
!2185 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !2179)
!2186 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !2179)
!2187 = !DILocation(line: 0, scope: !374, inlinedAt: !2179)
!2188 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !2179)
!2189 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !2179)
!2190 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !2179)
!2191 = distinct !{!2191, !2188, !2192}
!2192 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !2179)
!2193 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !2179)
!2194 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !2179)
!2195 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !2179)
!2196 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !2179)
!2197 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !2179)
!2198 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !2179)
!2199 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !2179)
!2200 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !2179)
!2201 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !2179)
!2202 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !2179)
!2203 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !2179)
!2204 = !DILocation(line: 114, column: 5, scope: !365, inlinedAt: !2179)
!2205 = !DILocation(line: 139, column: 14, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !407, file: !2, line: 139, column: 9)
!2207 = !DILocation(line: 139, column: 9, scope: !407)
!2208 = !DILocation(line: 141, column: 19, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2206, file: !2, line: 140, column: 5)
!2210 = !DILocation(line: 0, scope: !365, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 142, column: 16, scope: !2209)
!2212 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !2211)
!2213 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !2211)
!2214 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !2211)
!2215 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !2211)
!2216 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !2211)
!2217 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !2211)
!2218 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !2211)
!2219 = !DILocation(line: 0, scope: !374, inlinedAt: !2211)
!2220 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !2211)
!2221 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !2211)
!2222 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !2211)
!2223 = distinct !{!2223, !2220, !2224}
!2224 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !2211)
!2225 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !2211)
!2226 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !2211)
!2227 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !2211)
!2228 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !2211)
!2229 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !2211)
!2230 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !2211)
!2231 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !2211)
!2232 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !2211)
!2233 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !2211)
!2234 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !2211)
!2235 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !2211)
!2236 = !DILocation(line: 114, column: 5, scope: !365, inlinedAt: !2211)
!2237 = !DILocation(line: 144, column: 14, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !407, file: !2, line: 144, column: 9)
!2239 = !DILocation(line: 144, column: 9, scope: !407)
!2240 = !DILocation(line: 146, column: 19, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2238, file: !2, line: 145, column: 5)
!2242 = !DILocation(line: 0, scope: !365, inlinedAt: !2243)
!2243 = distinct !DILocation(line: 147, column: 16, scope: !2241)
!2244 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !2243)
!2245 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !2243)
!2246 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !2243)
!2247 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !2243)
!2248 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !2243)
!2249 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !2243)
!2250 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !2243)
!2251 = !DILocation(line: 0, scope: !374, inlinedAt: !2243)
!2252 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !2243)
!2253 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !2243)
!2254 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !2243)
!2255 = distinct !{!2255, !2252, !2256}
!2256 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !2243)
!2257 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !2243)
!2258 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !2243)
!2259 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !2243)
!2260 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !2243)
!2261 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !2243)
!2262 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !2243)
!2263 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !2243)
!2264 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !2243)
!2265 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !2243)
!2266 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !2243)
!2267 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !2243)
!2268 = !DILocation(line: 114, column: 5, scope: !365, inlinedAt: !2243)
!2269 = !DILocation(line: 149, column: 14, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !407, file: !2, line: 149, column: 9)
!2271 = !DILocation(line: 149, column: 9, scope: !407)
!2272 = !DILocation(line: 151, column: 19, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2270, file: !2, line: 150, column: 5)
!2274 = !DILocation(line: 0, scope: !365, inlinedAt: !2275)
!2275 = distinct !DILocation(line: 152, column: 16, scope: !2273)
!2276 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !2275)
!2277 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !2275)
!2278 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !2275)
!2279 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !2275)
!2280 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !2275)
!2281 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !2275)
!2282 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !2275)
!2283 = !DILocation(line: 0, scope: !374, inlinedAt: !2275)
!2284 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !2275)
!2285 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !2275)
!2286 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !2275)
!2287 = distinct !{!2287, !2284, !2288}
!2288 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !2275)
!2289 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !2275)
!2290 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !2275)
!2291 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !2275)
!2292 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !2275)
!2293 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !2275)
!2294 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !2275)
!2295 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !2275)
!2296 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !2275)
!2297 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !2275)
!2298 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !2275)
!2299 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !2275)
!2300 = !DILocation(line: 114, column: 5, scope: !365, inlinedAt: !2275)
!2301 = !DILocation(line: 0, scope: !365, inlinedAt: !2302)
!2302 = distinct !DILocation(line: 154, column: 12, scope: !407)
!2303 = !DILocation(line: 93, column: 22, scope: !365, inlinedAt: !2302)
!2304 = !DILocation(line: 93, column: 28, scope: !365, inlinedAt: !2302)
!2305 = !DILocation(line: 95, column: 17, scope: !364, inlinedAt: !2302)
!2306 = !DILocation(line: 95, column: 12, scope: !364, inlinedAt: !2302)
!2307 = !DILocation(line: 95, column: 9, scope: !365, inlinedAt: !2302)
!2308 = !DILocation(line: 110, column: 23, scope: !365, inlinedAt: !2302)
!2309 = !DILocation(line: 98, column: 23, scope: !374, inlinedAt: !2302)
!2310 = !DILocation(line: 0, scope: !374, inlinedAt: !2302)
!2311 = !DILocation(line: 99, column: 9, scope: !374, inlinedAt: !2302)
!2312 = !DILocation(line: 99, column: 19, scope: !374, inlinedAt: !2302)
!2313 = !DILocation(line: 100, column: 16, scope: !374, inlinedAt: !2302)
!2314 = distinct !{!2314, !2311, !2315}
!2315 = !DILocation(line: 100, column: 20, scope: !374, inlinedAt: !2302)
!2316 = !DILocation(line: 102, column: 26, scope: !374, inlinedAt: !2302)
!2317 = !DILocation(line: 102, column: 32, scope: !374, inlinedAt: !2302)
!2318 = !DILocation(line: 102, column: 14, scope: !374, inlinedAt: !2302)
!2319 = !DILocation(line: 103, column: 14, scope: !398, inlinedAt: !2302)
!2320 = !DILocation(line: 103, column: 13, scope: !374, inlinedAt: !2302)
!2321 = !DILocation(line: 106, column: 17, scope: !374, inlinedAt: !2302)
!2322 = !DILocation(line: 107, column: 18, scope: !374, inlinedAt: !2302)
!2323 = !DILocation(line: 110, column: 33, scope: !365, inlinedAt: !2302)
!2324 = !DILocation(line: 110, column: 28, scope: !365, inlinedAt: !2302)
!2325 = !DILocation(line: 110, column: 5, scope: !365, inlinedAt: !2302)
!2326 = !DILocation(line: 112, column: 14, scope: !365, inlinedAt: !2302)
!2327 = !DILocation(line: 114, column: 5, scope: !365, inlinedAt: !2302)
!2328 = !DILocation(line: 155, column: 1, scope: !407)
!2329 = !DISubprogram(name: "strlen", scope: !2330, file: !2330, line: 407, type: !2331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2330 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!100, !139}
!2333 = !DISubprogram(name: "fwrite", scope: !267, file: !267, line: 681, type: !2334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!100, !2336, !98, !98, !2337}
!2336 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !274)
!2337 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!2338 = !DISubprogram(name: "realloc", scope: !263, file: !263, line: 551, type: !2339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!17, !17, !98}
