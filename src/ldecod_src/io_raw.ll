; ModuleID = 'ldecod_src/io_raw.c'
source_filename = "ldecod_src/io_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errortext = external global [300 x i8], align 16
@.str = private unnamed_addr constant [75 x i8] c"read_one_frame: cannot advance file pointer in input file beyond frame %d\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [77 x i8] c"read_one_frame (NOT IMPLEMENTED): pic unit size on disk must be divided by 8\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [60 x i8] c"read_one_frame: cannot fseek to (Header size) in input file\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [79 x i8] c"read_one_frame (NOT IMPLEMENTED): pic unit size on disk must be divisible by 8\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [71 x i8] c"read_one_frame: cannot read %d bytes from input file, unexpected EOF!\0A\00", align 1, !dbg !22

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ReadFrameConcatenated(ptr nocapture noundef readonly %p_Inp, ptr nocapture noundef readonly %input_file, i32 noundef %FrameNoInFile, i32 noundef %HeaderSize, ptr nocapture noundef readonly %source, ptr nocapture noundef %buf) local_unnamed_addr #0 !dbg !62 {
entry:
    #dbg_value(ptr %p_Inp, !156, !DIExpression(), !178)
    #dbg_value(ptr %input_file, !157, !DIExpression(), !178)
    #dbg_value(i32 %FrameNoInFile, !158, !DIExpression(), !178)
    #dbg_value(i32 %HeaderSize, !159, !DIExpression(), !178)
    #dbg_value(ptr %source, !160, !DIExpression(), !178)
    #dbg_value(ptr %buf, !161, !DIExpression(), !178)
    #dbg_value(i32 0, !162, !DIExpression(), !178)
  %f_num = getelementptr inbounds i8, ptr %input_file, i64 768, !dbg !179
  %0 = load i32, ptr %f_num, align 8, !dbg !179
    #dbg_value(i32 %0, !163, !DIExpression(), !178)
  %pic_unit_size_shift3 = getelementptr inbounds i8, ptr %source, i64 128, !dbg !180
  %1 = load i32, ptr %pic_unit_size_shift3, align 8, !dbg !180
    #dbg_value(i32 %1, !164, !DIExpression(), !178)
  %size_cmp = getelementptr inbounds i8, ptr %source, i64 72, !dbg !181
  %2 = load i32, ptr %size_cmp, align 8, !dbg !182
    #dbg_value(!DIArgList(i32 %2, i32 %1), !166, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !178)
  %arrayidx2 = getelementptr inbounds i8, ptr %source, i64 76, !dbg !183
  %3 = load i32, ptr %arrayidx2, align 4, !dbg !183
    #dbg_value(i32 poison, !168, !DIExpression(), !178)
  %mul4 = shl i32 %3, 1, !dbg !184
  %reass.add = add i32 %mul4, %2
  %reass.mul = mul i32 %reass.add, %1, !dbg !185
  %conv = sext i32 %reass.mul to i64, !dbg !186
    #dbg_value(i64 %conv, !169, !DIExpression(), !178)
  %conv5 = sext i32 %HeaderSize to i64, !dbg !187
  %start_frame = getelementptr inbounds i8, ptr %p_Inp, i64 3992, !dbg !189
  %4 = load i32, ptr %start_frame, align 8, !dbg !189
  %add6 = add nsw i32 %4, %FrameNoInFile, !dbg !190
  %conv7 = sext i32 %add6 to i64, !dbg !191
  %mul8 = mul nsw i64 %conv, %conv7, !dbg !192
  %add9 = add nsw i64 %mul8, %conv5, !dbg !193
  %call = tail call i64 @lseek(i32 noundef %0, i64 noundef %add9, i32 noundef 0) #6, !dbg !194
  %cmp = icmp eq i64 %call, -1, !dbg !195
  br i1 %cmp, label %if.then, label %if.end, !dbg !196

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %start_frame, align 8, !dbg !197
  %add12 = add nsw i32 %5, %FrameNoInFile, !dbg !199
  %call13 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str, i32 noundef %add12) #6, !dbg !200
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef -1) #6, !dbg !201
  br label %if.end, !dbg !202

if.end:                                           ; preds = %if.then, %entry
  %pic_unit_size_on_disk = getelementptr inbounds i8, ptr %source, i64 124, !dbg !203
  %6 = load i32, ptr %pic_unit_size_on_disk, align 4, !dbg !203
  %and = and i32 %6, 7, !dbg !205
  %cmp14 = icmp eq i32 %and, 0, !dbg !206
  br i1 %cmp14, label %if.then16, label %if.else, !dbg !207

if.then16:                                        ; preds = %if.end
    #dbg_value(i32 %0, !208, !DIExpression(), !219)
    #dbg_value(ptr %source, !213, !DIExpression(), !219)
    #dbg_value(ptr %buf, !214, !DIExpression(), !219)
    #dbg_value(ptr %buf, !215, !DIExpression(), !219)
  %width.i = getelementptr inbounds i8, ptr %source, i64 16, !dbg !222
    #dbg_value(!DIArgList(i32 poison, i32 poison), !216, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !219)
    #dbg_value(i32 0, !217, !DIExpression(), !219)
  %height.i = getelementptr inbounds i8, ptr %source, i64 28
    #dbg_value(i32 0, !217, !DIExpression(), !219)
    #dbg_value(ptr %buf, !215, !DIExpression(), !219)
  %7 = load i32, ptr %height.i, align 4, !dbg !223
  %cmp70.i = icmp sgt i32 %7, 0, !dbg !226
  br i1 %cmp70.i, label %for.body.lr.ph.i, label %for.end.i, !dbg !227

for.body.lr.ph.i:                                 ; preds = %if.then16
  %8 = load i32, ptr %width.i, align 8, !dbg !228
  %9 = load i32, ptr %pic_unit_size_shift3, align 8, !dbg !229
    #dbg_value(!DIArgList(i32 %8, i32 %9), !216, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !219)
  %mul.i = mul nsw i32 %9, %8, !dbg !230
    #dbg_value(i32 %mul.i, !216, !DIExpression(), !219)
  %conv.i = sext i32 %mul.i to i64
  br label %for.body.i, !dbg !227

for.body.i:                                       ; preds = %if.end.i, %for.body.lr.ph.i
  %i.072.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i ]
  %cur_buf.071.i = phi ptr [ %buf, %for.body.lr.ph.i ], [ %add.ptr.i, %if.end.i ]
    #dbg_value(i32 %i.072.i, !217, !DIExpression(), !219)
    #dbg_value(ptr %cur_buf.071.i, !215, !DIExpression(), !219)
  %call.i = tail call i64 @read(i32 noundef %0, ptr noundef %cur_buf.071.i, i64 noundef %conv.i) #6, !dbg !231
  %cmp3.not.i = icmp eq i64 %call.i, %conv.i, !dbg !234
  br i1 %cmp3.not.i, label %if.end.i, label %cleanup.sink.split.i, !dbg !235

if.end.i:                                         ; preds = %for.body.i
  %add.ptr.i = getelementptr inbounds i8, ptr %cur_buf.071.i, i64 %conv.i, !dbg !236
    #dbg_value(ptr %add.ptr.i, !215, !DIExpression(), !219)
  %inc.i = add nuw nsw i32 %i.072.i, 1, !dbg !237
    #dbg_value(i32 %inc.i, !217, !DIExpression(), !219)
  %10 = load i32, ptr %height.i, align 4, !dbg !223
  %cmp.i = icmp slt i32 %inc.i, %10, !dbg !226
  br i1 %cmp.i, label %for.body.i, label %for.end.i, !dbg !227, !llvm.loop !238

for.end.i:                                        ; preds = %if.end.i, %if.then16
  %cur_buf.0.lcssa.i = phi ptr [ %buf, %if.then16 ], [ %add.ptr.i, %if.end.i ], !dbg !219
  %11 = load i32, ptr %source, align 8, !dbg !240
  %cmp8.not.i = icmp eq i32 %11, 0, !dbg !242
  br i1 %cmp8.not.i, label %ReadData.exit, label %if.then10.i, !dbg !243

if.then10.i:                                      ; preds = %for.end.i
  %12 = load i32, ptr %pic_unit_size_shift3, align 8, !dbg !244
  %arrayidx13.i = getelementptr inbounds i8, ptr %source, i64 20, !dbg !246
  %13 = load i32, ptr %arrayidx13.i, align 4, !dbg !246
  %mul14.i = mul nsw i32 %13, %12, !dbg !247
    #dbg_value(i32 %mul14.i, !216, !DIExpression(), !219)
    #dbg_value(i32 0, !218, !DIExpression(), !219)
  %arrayidx21.i = getelementptr inbounds i8, ptr %source, i64 32
    #dbg_value(ptr %cur_buf.0.lcssa.i, !215, !DIExpression(), !219)
  %conv25.i = sext i32 %mul14.i to i64
  %14 = load i32, ptr %arrayidx21.i, align 4, !dbg !248
  %15 = icmp sgt i32 %14, 0, !dbg !254
  br i1 %15, label %for.body24.i, label %ReadData.exit

for.body24.i:                                     ; preds = %if.then10.i, %if.end34.i
  %i.175.i = phi i32 [ %inc38.i, %if.end34.i ], [ 0, %if.then10.i ]
  %cur_buf.274.i = phi ptr [ %add.ptr36.i, %if.end34.i ], [ %cur_buf.0.lcssa.i, %if.then10.i ]
    #dbg_value(i32 %i.175.i, !217, !DIExpression(), !219)
    #dbg_value(ptr %cur_buf.274.i, !215, !DIExpression(), !219)
  %call26.i = tail call i64 @read(i32 noundef %0, ptr noundef %cur_buf.274.i, i64 noundef %conv25.i) #6, !dbg !255
  %cmp28.not.i = icmp eq i64 %call26.i, %conv25.i, !dbg !258
  br i1 %cmp28.not.i, label %if.end34.i, label %cleanup.sink.split.i, !dbg !259

if.end34.i:                                       ; preds = %for.body24.i
  %add.ptr36.i = getelementptr inbounds i8, ptr %cur_buf.274.i, i64 %conv25.i, !dbg !260
    #dbg_value(ptr %add.ptr36.i, !215, !DIExpression(), !219)
  %inc38.i = add nuw nsw i32 %i.175.i, 1, !dbg !261
    #dbg_value(i32 %inc38.i, !217, !DIExpression(), !219)
  %16 = load i32, ptr %arrayidx21.i, align 4, !dbg !248
  %cmp22.i = icmp slt i32 %inc38.i, %16, !dbg !254
  br i1 %cmp22.i, label %for.body24.i, label %for.inc40.i, !dbg !262, !llvm.loop !263

for.inc40.i:                                      ; preds = %if.end34.i
    #dbg_value(i32 1, !218, !DIExpression(), !219)
    #dbg_value(ptr %add.ptr36.i, !215, !DIExpression(), !219)
    #dbg_value(i32 0, !217, !DIExpression(), !219)
  %cmp2273.1.i = icmp sgt i32 %16, 0, !dbg !254
  br i1 %cmp2273.1.i, label %for.body24.1.i, label %ReadData.exit, !dbg !262

for.body24.1.i:                                   ; preds = %for.inc40.i, %if.end34.1.i
  %i.175.1.i = phi i32 [ %inc38.1.i, %if.end34.1.i ], [ 0, %for.inc40.i ]
  %cur_buf.274.1.i = phi ptr [ %add.ptr36.1.i, %if.end34.1.i ], [ %add.ptr36.i, %for.inc40.i ]
    #dbg_value(i32 %i.175.1.i, !217, !DIExpression(), !219)
    #dbg_value(ptr %cur_buf.274.1.i, !215, !DIExpression(), !219)
  %call26.1.i = tail call i64 @read(i32 noundef %0, ptr noundef %cur_buf.274.1.i, i64 noundef %conv25.i) #6, !dbg !255
  %cmp28.not.1.i = icmp eq i64 %call26.1.i, %conv25.i, !dbg !258
  br i1 %cmp28.not.1.i, label %if.end34.1.i, label %cleanup.sink.split.i, !dbg !259

if.end34.1.i:                                     ; preds = %for.body24.1.i
  %add.ptr36.1.i = getelementptr inbounds i8, ptr %cur_buf.274.1.i, i64 %conv25.i, !dbg !260
    #dbg_value(ptr %add.ptr36.1.i, !215, !DIExpression(), !219)
  %inc38.1.i = add nuw nsw i32 %i.175.1.i, 1, !dbg !261
    #dbg_value(i32 %inc38.1.i, !217, !DIExpression(), !219)
  %17 = load i32, ptr %arrayidx21.i, align 4, !dbg !248
  %cmp22.1.i = icmp slt i32 %inc38.1.i, %17, !dbg !254
  br i1 %cmp22.1.i, label %for.body24.1.i, label %ReadData.exit, !dbg !262, !llvm.loop !265

cleanup.sink.split.i:                             ; preds = %for.body.i, %for.body24.i, %for.body24.1.i
  %.sink.in.i = phi ptr [ %arrayidx13.i, %for.body24.1.i ], [ %arrayidx13.i, %for.body24.i ], [ %width.i, %for.body.i ]
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !dbg !219
  %call33.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %.sink.i), !dbg !219
  br label %ReadData.exit, !dbg !266

ReadData.exit:                                    ; preds = %if.end34.1.i, %for.end.i, %if.then10.i, %for.inc40.i, %cleanup.sink.split.i
  %retval.0.i = phi i32 [ 1, %for.end.i ], [ 1, %if.then10.i ], [ 1, %for.inc40.i ], [ 0, %cleanup.sink.split.i ], [ 1, %if.end34.1.i ], !dbg !219
    #dbg_value(i32 %retval.0.i, !162, !DIExpression(), !178)
  ret i32 %retval.0.i, !dbg !267

if.else:                                          ; preds = %if.end
  %call18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1), !dbg !268
  tail call void @exit(i32 noundef -1) #7, !dbg !270
  unreachable, !dbg !270
}

; Function Attrs: nounwind
declare !dbg !271 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare !dbg !276 noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare !dbg !288 void @error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !291 noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare !dbg !294 void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ReadFrameSeparate(ptr nocapture noundef readonly %p_Inp, ptr noundef %input_file, i32 noundef %FrameNoInFile, i32 noundef %HeaderSize, ptr nocapture noundef readonly %source, ptr nocapture noundef %buf) local_unnamed_addr #0 !dbg !298 {
entry:
    #dbg_value(ptr %p_Inp, !300, !DIExpression(), !308)
    #dbg_value(ptr %input_file, !301, !DIExpression(), !308)
    #dbg_value(i32 %FrameNoInFile, !302, !DIExpression(), !308)
    #dbg_value(i32 %HeaderSize, !303, !DIExpression(), !308)
    #dbg_value(ptr %source, !304, !DIExpression(), !308)
    #dbg_value(ptr %buf, !305, !DIExpression(), !308)
    #dbg_value(i32 0, !306, !DIExpression(), !308)
  %f_num = getelementptr inbounds i8, ptr %input_file, i64 768, !dbg !309
  %0 = load i32, ptr %f_num, align 8, !dbg !309
    #dbg_value(i32 %0, !307, !DIExpression(), !308)
  %start_frame = getelementptr inbounds i8, ptr %p_Inp, i64 3992, !dbg !310
  %1 = load i32, ptr %start_frame, align 8, !dbg !310
  %add = add nsw i32 %1, %FrameNoInFile, !dbg !311
  tail call void @OpenFrameFile(ptr noundef %input_file, i32 noundef %add) #6, !dbg !312
  %conv = sext i32 %HeaderSize to i64, !dbg !313
  %call = tail call i64 @lseek(i32 noundef %0, i64 noundef %conv, i32 noundef 0) #6, !dbg !315
  %cmp.not = icmp eq i64 %call, %conv, !dbg !316
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !317

if.then:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.2, i32 noundef -1) #6, !dbg !318
  br label %if.end, !dbg !320

if.end:                                           ; preds = %if.then, %entry
  %pic_unit_size_on_disk = getelementptr inbounds i8, ptr %source, i64 124, !dbg !321
  %2 = load i32, ptr %pic_unit_size_on_disk, align 4, !dbg !321
  %and = and i32 %2, 7, !dbg !323
  %cmp3 = icmp eq i32 %and, 0, !dbg !324
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !325

if.then5:                                         ; preds = %if.end
    #dbg_value(i32 %0, !208, !DIExpression(), !326)
    #dbg_value(ptr %source, !213, !DIExpression(), !326)
    #dbg_value(ptr %buf, !214, !DIExpression(), !326)
    #dbg_value(ptr %buf, !215, !DIExpression(), !326)
  %pic_unit_size_shift3.i = getelementptr inbounds i8, ptr %source, i64 128, !dbg !329
  %width.i = getelementptr inbounds i8, ptr %source, i64 16, !dbg !330
    #dbg_value(!DIArgList(i32 poison, i32 poison), !216, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !326)
    #dbg_value(i32 0, !217, !DIExpression(), !326)
  %height.i = getelementptr inbounds i8, ptr %source, i64 28
    #dbg_value(i32 0, !217, !DIExpression(), !326)
    #dbg_value(ptr %buf, !215, !DIExpression(), !326)
  %3 = load i32, ptr %height.i, align 4, !dbg !331
  %cmp70.i = icmp sgt i32 %3, 0, !dbg !332
  br i1 %cmp70.i, label %for.body.lr.ph.i, label %for.end.i, !dbg !333

for.body.lr.ph.i:                                 ; preds = %if.then5
  %4 = load i32, ptr %width.i, align 8, !dbg !334
  %5 = load i32, ptr %pic_unit_size_shift3.i, align 8, !dbg !329
    #dbg_value(!DIArgList(i32 %4, i32 %5), !216, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !326)
  %mul.i = mul nsw i32 %5, %4, !dbg !335
    #dbg_value(i32 %mul.i, !216, !DIExpression(), !326)
  %conv.i = sext i32 %mul.i to i64
  br label %for.body.i, !dbg !333

for.body.i:                                       ; preds = %if.end.i, %for.body.lr.ph.i
  %i.072.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i ]
  %cur_buf.071.i = phi ptr [ %buf, %for.body.lr.ph.i ], [ %add.ptr.i, %if.end.i ]
    #dbg_value(i32 %i.072.i, !217, !DIExpression(), !326)
    #dbg_value(ptr %cur_buf.071.i, !215, !DIExpression(), !326)
  %call.i = tail call i64 @read(i32 noundef %0, ptr noundef %cur_buf.071.i, i64 noundef %conv.i) #6, !dbg !336
  %cmp3.not.i = icmp eq i64 %call.i, %conv.i, !dbg !337
  br i1 %cmp3.not.i, label %if.end.i, label %cleanup.sink.split.i, !dbg !338

if.end.i:                                         ; preds = %for.body.i
  %add.ptr.i = getelementptr inbounds i8, ptr %cur_buf.071.i, i64 %conv.i, !dbg !339
    #dbg_value(ptr %add.ptr.i, !215, !DIExpression(), !326)
  %inc.i = add nuw nsw i32 %i.072.i, 1, !dbg !340
    #dbg_value(i32 %inc.i, !217, !DIExpression(), !326)
  %6 = load i32, ptr %height.i, align 4, !dbg !331
  %cmp.i = icmp slt i32 %inc.i, %6, !dbg !332
  br i1 %cmp.i, label %for.body.i, label %for.end.i, !dbg !333, !llvm.loop !341

for.end.i:                                        ; preds = %if.end.i, %if.then5
  %cur_buf.0.lcssa.i = phi ptr [ %buf, %if.then5 ], [ %add.ptr.i, %if.end.i ], !dbg !326
  %7 = load i32, ptr %source, align 8, !dbg !343
  %cmp8.not.i = icmp eq i32 %7, 0, !dbg !344
  br i1 %cmp8.not.i, label %ReadData.exit, label %if.then10.i, !dbg !345

if.then10.i:                                      ; preds = %for.end.i
  %8 = load i32, ptr %pic_unit_size_shift3.i, align 8, !dbg !346
  %arrayidx13.i = getelementptr inbounds i8, ptr %source, i64 20, !dbg !347
  %9 = load i32, ptr %arrayidx13.i, align 4, !dbg !347
  %mul14.i = mul nsw i32 %9, %8, !dbg !348
    #dbg_value(i32 %mul14.i, !216, !DIExpression(), !326)
    #dbg_value(i32 0, !218, !DIExpression(), !326)
  %arrayidx21.i = getelementptr inbounds i8, ptr %source, i64 32
    #dbg_value(ptr %cur_buf.0.lcssa.i, !215, !DIExpression(), !326)
  %conv25.i = sext i32 %mul14.i to i64
  %10 = load i32, ptr %arrayidx21.i, align 4, !dbg !349
  %11 = icmp sgt i32 %10, 0, !dbg !350
  br i1 %11, label %for.body24.i, label %ReadData.exit

for.body24.i:                                     ; preds = %if.then10.i, %if.end34.i
  %i.175.i = phi i32 [ %inc38.i, %if.end34.i ], [ 0, %if.then10.i ]
  %cur_buf.274.i = phi ptr [ %add.ptr36.i, %if.end34.i ], [ %cur_buf.0.lcssa.i, %if.then10.i ]
    #dbg_value(i32 %i.175.i, !217, !DIExpression(), !326)
    #dbg_value(ptr %cur_buf.274.i, !215, !DIExpression(), !326)
  %call26.i = tail call i64 @read(i32 noundef %0, ptr noundef %cur_buf.274.i, i64 noundef %conv25.i) #6, !dbg !351
  %cmp28.not.i = icmp eq i64 %call26.i, %conv25.i, !dbg !352
  br i1 %cmp28.not.i, label %if.end34.i, label %cleanup.sink.split.i, !dbg !353

if.end34.i:                                       ; preds = %for.body24.i
  %add.ptr36.i = getelementptr inbounds i8, ptr %cur_buf.274.i, i64 %conv25.i, !dbg !354
    #dbg_value(ptr %add.ptr36.i, !215, !DIExpression(), !326)
  %inc38.i = add nuw nsw i32 %i.175.i, 1, !dbg !355
    #dbg_value(i32 %inc38.i, !217, !DIExpression(), !326)
  %12 = load i32, ptr %arrayidx21.i, align 4, !dbg !349
  %cmp22.i = icmp slt i32 %inc38.i, %12, !dbg !350
  br i1 %cmp22.i, label %for.body24.i, label %for.inc40.i, !dbg !356, !llvm.loop !357

for.inc40.i:                                      ; preds = %if.end34.i
    #dbg_value(i32 1, !218, !DIExpression(), !326)
    #dbg_value(ptr %add.ptr36.i, !215, !DIExpression(), !326)
    #dbg_value(i32 0, !217, !DIExpression(), !326)
  %cmp2273.1.i = icmp sgt i32 %12, 0, !dbg !350
  br i1 %cmp2273.1.i, label %for.body24.1.i, label %ReadData.exit, !dbg !356

for.body24.1.i:                                   ; preds = %for.inc40.i, %if.end34.1.i
  %i.175.1.i = phi i32 [ %inc38.1.i, %if.end34.1.i ], [ 0, %for.inc40.i ]
  %cur_buf.274.1.i = phi ptr [ %add.ptr36.1.i, %if.end34.1.i ], [ %add.ptr36.i, %for.inc40.i ]
    #dbg_value(i32 %i.175.1.i, !217, !DIExpression(), !326)
    #dbg_value(ptr %cur_buf.274.1.i, !215, !DIExpression(), !326)
  %call26.1.i = tail call i64 @read(i32 noundef %0, ptr noundef %cur_buf.274.1.i, i64 noundef %conv25.i) #6, !dbg !351
  %cmp28.not.1.i = icmp eq i64 %call26.1.i, %conv25.i, !dbg !352
  br i1 %cmp28.not.1.i, label %if.end34.1.i, label %cleanup.sink.split.i, !dbg !353

if.end34.1.i:                                     ; preds = %for.body24.1.i
  %add.ptr36.1.i = getelementptr inbounds i8, ptr %cur_buf.274.1.i, i64 %conv25.i, !dbg !354
    #dbg_value(ptr %add.ptr36.1.i, !215, !DIExpression(), !326)
  %inc38.1.i = add nuw nsw i32 %i.175.1.i, 1, !dbg !355
    #dbg_value(i32 %inc38.1.i, !217, !DIExpression(), !326)
  %13 = load i32, ptr %arrayidx21.i, align 4, !dbg !349
  %cmp22.1.i = icmp slt i32 %inc38.1.i, %13, !dbg !350
  br i1 %cmp22.1.i, label %for.body24.1.i, label %ReadData.exit, !dbg !356, !llvm.loop !359

cleanup.sink.split.i:                             ; preds = %for.body.i, %for.body24.i, %for.body24.1.i
  %.sink.in.i = phi ptr [ %arrayidx13.i, %for.body24.1.i ], [ %arrayidx13.i, %for.body24.i ], [ %width.i, %for.body.i ]
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !dbg !326
  %call33.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %.sink.i), !dbg !326
  br label %ReadData.exit, !dbg !360

ReadData.exit:                                    ; preds = %if.end34.1.i, %for.end.i, %if.then10.i, %for.inc40.i, %cleanup.sink.split.i
  %retval.0.i = phi i32 [ 1, %for.end.i ], [ 1, %if.then10.i ], [ 1, %for.inc40.i ], [ 0, %cleanup.sink.split.i ], [ 1, %if.end34.1.i ], !dbg !326
    #dbg_value(i32 %retval.0.i, !306, !DIExpression(), !308)
  %cmp9.not = icmp eq i32 %0, -1, !dbg !361
  br i1 %cmp9.not, label %if.end13, label %if.then11, !dbg !363

if.else:                                          ; preds = %if.end
  %call7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3), !dbg !364
  tail call void @exit(i32 noundef -1) #7, !dbg !366
  unreachable, !dbg !366

if.then11:                                        ; preds = %ReadData.exit
  %call12 = tail call i32 @close(i32 noundef %0) #6, !dbg !367
  br label %if.end13, !dbg !367

if.end13:                                         ; preds = %if.then11, %ReadData.exit
  ret i32 %retval.0.i, !dbg !368
}

declare !dbg !369 void @OpenFrameFile(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !373 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare !dbg !376 noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.dbg.cu = !{!27}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "ldecod_src/io_raw.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "36ae9613fb3de4b8404ec72cc3e3c4c4")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 75)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 119, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 616, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 77)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 153, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 60)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 173, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 632, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 79)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 32, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 71)
!27 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !28, globals: !53, splitDebugInlining: false, nameTableKind: None)
!28 = !{!29, !38, !44}
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 22, baseType: !31, size: 32, elements: !32)
!30 = !DIFile(filename: "ldecod_src/inc/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "fd6ca9e1c707932f749220576db72b57")
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !{!33, !34, !35, !36, !37}
!33 = !DIEnumerator(name: "CF_UNKNOWN", value: -1)
!34 = !DIEnumerator(name: "YUV400", value: 0)
!35 = !DIEnumerator(name: "YUV420", value: 1)
!36 = !DIEnumerator(name: "YUV422", value: 2)
!37 = !DIEnumerator(name: "YUV444", value: 3)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 15, baseType: !31, size: 32, elements: !39)
!39 = !{!40, !41, !42, !43}
!40 = !DIEnumerator(name: "CM_UNKNOWN", value: -1)
!41 = !DIEnumerator(name: "CM_YUV", value: 0)
!42 = !DIEnumerator(name: "CM_RGB", value: 1)
!43 = !DIEnumerator(name: "CM_XYZ", value: 2)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 25, baseType: !31, size: 32, elements: !46)
!45 = !DIFile(filename: "ldecod_src/inc/io_video.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1141c07f1801ad27d87214c419749431")
!46 = !{!47, !48, !49, !50, !51, !52}
!47 = !DIEnumerator(name: "VIDEO_UNKNOWN", value: -1)
!48 = !DIEnumerator(name: "VIDEO_YUV", value: 0)
!49 = !DIEnumerator(name: "VIDEO_RGB", value: 1)
!50 = !DIEnumerator(name: "VIDEO_XYZ", value: 2)
!51 = !DIEnumerator(name: "VIDEO_TIFF", value: 3)
!52 = !DIEnumerator(name: "VIDEO_AVI", value: 4)
!53 = !{!0, !7, !12, !17, !22}
!54 = !{i32 7, !"Dwarf Version", i32 5}
!55 = !{i32 2, !"Debug Info Version", i32 3}
!56 = !{i32 1, !"wchar_size", i32 4}
!57 = !{i32 8, !"PIC Level", i32 2}
!58 = !{i32 7, !"PIE Level", i32 2}
!59 = !{i32 7, !"uwtable", i32 2}
!60 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!61 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!62 = distinct !DISubprogram(name: "ReadFrameConcatenated", scope: !2, file: !2, line: 90, type: !63, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !155)
!63 = !DISubroutineType(types: !64)
!64 = !{!31, !65, !151, !31, !31, !152, !153}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "InputParameters", file: !67, line: 900, baseType: !68)
!67 = !DIFile(filename: "ldecod_src/inc/global.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c4ca3c417c5616a2ff6b6266e7376fc1")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inp_par", file: !67, line: 850, size: 32128, elements: !69)
!69 = !{!70, !74, !75, !76, !77, !78, !79, !80, !81, !82, !112, !113, !114, !115, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "infile", scope: !68, file: !67, line: 852, baseType: !71, size: 2040)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2040, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 255)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "outfile", scope: !68, file: !67, line: 853, baseType: !71, size: 2040, offset: 2040)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "reffile", scope: !68, file: !67, line: 854, baseType: !71, size: 2040, offset: 4080)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "FileFormat", scope: !68, file: !67, line: 856, baseType: !31, size: 32, offset: 6144)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "ref_offset", scope: !68, file: !67, line: 857, baseType: !31, size: 32, offset: 6176)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "poc_scale", scope: !68, file: !67, line: 858, baseType: !31, size: 32, offset: 6208)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "write_uv", scope: !68, file: !67, line: 859, baseType: !31, size: 32, offset: 6240)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "silent", scope: !68, file: !67, line: 860, baseType: !31, size: 32, offset: 6272)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "intra_profile_deblocking", scope: !68, file: !67, line: 861, baseType: !31, size: 32, offset: 6304)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !68, file: !67, line: 864, baseType: !83, size: 1088, offset: 6336)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameFormat", file: !30, line: 52, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_format", file: !30, line: 30, size: 1088, elements: !85)
!85 = !{!86, !88, !90, !92, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !84, file: !30, line: 32, baseType: !87, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorFormat", file: !30, line: 28, baseType: !29)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "color_model", scope: !84, file: !30, line: 33, baseType: !89, size: 32, offset: 32)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorModel", file: !30, line: 20, baseType: !38)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "frame_rate", scope: !84, file: !30, line: 34, baseType: !91, size: 64, offset: 64)
!91 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !84, file: !30, line: 35, baseType: !93, size: 96, offset: 128)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 96, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 3)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !84, file: !30, line: 36, baseType: !93, size: 96, offset: 224)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right", scope: !84, file: !30, line: 37, baseType: !31, size: 32, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom", scope: !84, file: !30, line: 38, baseType: !31, size: 32, offset: 352)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right_cr", scope: !84, file: !30, line: 39, baseType: !31, size: 32, offset: 384)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom_cr", scope: !84, file: !30, line: 40, baseType: !31, size: 32, offset: 416)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "width_crop", scope: !84, file: !30, line: 41, baseType: !31, size: 32, offset: 448)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "height_crop", scope: !84, file: !30, line: 42, baseType: !31, size: 32, offset: 480)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "mb_width", scope: !84, file: !30, line: 43, baseType: !31, size: 32, offset: 512)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "mb_height", scope: !84, file: !30, line: 44, baseType: !31, size: 32, offset: 544)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "size_cmp", scope: !84, file: !30, line: 45, baseType: !93, size: 96, offset: 576)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !84, file: !30, line: 46, baseType: !31, size: 32, offset: 672)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth", scope: !84, file: !30, line: 47, baseType: !93, size: 96, offset: 704)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !84, file: !30, line: 48, baseType: !93, size: 96, offset: 800)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "max_value_sq", scope: !84, file: !30, line: 49, baseType: !93, size: 96, offset: 896)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !84, file: !30, line: 50, baseType: !31, size: 32, offset: 992)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_shift3", scope: !84, file: !30, line: 51, baseType: !31, size: 32, offset: 1024)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !68, file: !67, line: 865, baseType: !83, size: 1088, offset: 7424)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "ProcessInput", scope: !68, file: !67, line: 867, baseType: !31, size: 32, offset: 8512)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "enable_32_pulldown", scope: !68, file: !67, line: 868, baseType: !31, size: 32, offset: 8544)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "input_file1", scope: !68, file: !67, line: 869, baseType: !116, size: 7744, offset: 8576)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoDataFile", file: !45, line: 60, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_data_file", file: !45, line: 34, size: 7744, elements: !118)
!118 = !{!119, !120, !121, !122, !123, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !117, file: !45, line: 37, baseType: !71, size: 2040)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "fhead", scope: !117, file: !45, line: 38, baseType: !71, size: 2040, offset: 2040)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "ftail", scope: !117, file: !45, line: 39, baseType: !71, size: 2040, offset: 4080)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "f_num", scope: !117, file: !45, line: 40, baseType: !31, size: 32, offset: 6144)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "vdtype", scope: !117, file: !45, line: 41, baseType: !124, size: 32, offset: 6176)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoFileType", file: !45, line: 32, baseType: !44)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !117, file: !45, line: 42, baseType: !83, size: 1088, offset: 6208)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "is_concatenated", scope: !117, file: !45, line: 43, baseType: !31, size: 32, offset: 7296)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "is_interleaved", scope: !117, file: !45, line: 44, baseType: !31, size: 32, offset: 7328)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "zero_pad", scope: !117, file: !45, line: 45, baseType: !31, size: 32, offset: 7360)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "num_digits", scope: !117, file: !45, line: 46, baseType: !31, size: 32, offset: 7392)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !117, file: !45, line: 47, baseType: !31, size: 32, offset: 7424)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "end_frame", scope: !117, file: !45, line: 48, baseType: !31, size: 32, offset: 7456)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nframes", scope: !117, file: !45, line: 49, baseType: !31, size: 32, offset: 7488)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_size", scope: !117, file: !45, line: 50, baseType: !31, size: 32, offset: 7520)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_size", scope: !117, file: !45, line: 51, baseType: !31, size: 32, offset: 7552)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_offset", scope: !117, file: !45, line: 52, baseType: !31, size: 32, offset: 7584)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_offset", scope: !117, file: !45, line: 53, baseType: !31, size: 32, offset: 7616)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "avi", scope: !117, file: !45, line: 56, baseType: !138, size: 64, offset: 7680)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "input_file2", scope: !68, file: !67, line: 870, baseType: !116, size: 7744, offset: 16320)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "input_file3", scope: !68, file: !67, line: 871, baseType: !116, size: 7744, offset: 24064)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "DecodeAllLayers", scope: !68, file: !67, line: 873, baseType: !31, size: 32, offset: 31808)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !68, file: !67, line: 884, baseType: !31, size: 32, offset: 31840)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !68, file: !67, line: 885, baseType: !31, size: 32, offset: 31872)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !68, file: !67, line: 886, baseType: !31, size: 32, offset: 31904)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !68, file: !67, line: 890, baseType: !31, size: 32, offset: 31936)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "stdRange", scope: !68, file: !67, line: 893, baseType: !31, size: 32, offset: 31968)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "videoCode", scope: !68, file: !67, line: 894, baseType: !31, size: 32, offset: 32000)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "export_views", scope: !68, file: !67, line: 895, baseType: !31, size: 32, offset: 32032)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "iDecFrmNum", scope: !68, file: !67, line: 897, baseType: !31, size: 32, offset: 32064)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "bDisplayDecParams", scope: !68, file: !67, line: 899, baseType: !31, size: 32, offset: 32096)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!155 = !{!156, !157, !158, !159, !160, !161, !162, !163, !164, !166, !168, !169}
!156 = !DILocalVariable(name: "p_Inp", arg: 1, scope: !62, file: !2, line: 90, type: !65)
!157 = !DILocalVariable(name: "input_file", arg: 2, scope: !62, file: !2, line: 90, type: !151)
!158 = !DILocalVariable(name: "FrameNoInFile", arg: 3, scope: !62, file: !2, line: 90, type: !31)
!159 = !DILocalVariable(name: "HeaderSize", arg: 4, scope: !62, file: !2, line: 90, type: !31)
!160 = !DILocalVariable(name: "source", arg: 5, scope: !62, file: !2, line: 90, type: !152)
!161 = !DILocalVariable(name: "buf", arg: 6, scope: !62, file: !2, line: 90, type: !153)
!162 = !DILocalVariable(name: "file_read", scope: !62, file: !2, line: 92, type: !31)
!163 = !DILocalVariable(name: "vfile", scope: !62, file: !2, line: 93, type: !31)
!164 = !DILocalVariable(name: "symbol_size_in_bytes", scope: !62, file: !2, line: 94, type: !165)
!165 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!166 = !DILocalVariable(name: "bytes_y", scope: !62, file: !2, line: 96, type: !167)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!168 = !DILocalVariable(name: "bytes_uv", scope: !62, file: !2, line: 97, type: !167)
!169 = !DILocalVariable(name: "framesize_in_bytes", scope: !62, file: !2, line: 99, type: !170)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !172, line: 103, baseType: !173)
!172 = !DIFile(filename: "ldecod_src/inc/win32.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "100def0ffeee72ecdc377183538a04bb")
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !174, line: 27, baseType: !175)
!174 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !176, line: 44, baseType: !177)
!176 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!177 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!178 = !DILocation(line: 0, scope: !62)
!179 = !DILocation(line: 93, column: 27, scope: !62)
!180 = !DILocation(line: 94, column: 47, scope: !62)
!181 = !DILocation(line: 96, column: 31, scope: !62)
!182 = !DILocation(line: 96, column: 23, scope: !62)
!183 = !DILocation(line: 97, column: 24, scope: !62)
!184 = !DILocation(line: 99, column: 47, scope: !62)
!185 = !DILocation(line: 99, column: 44, scope: !62)
!186 = !DILocation(line: 99, column: 36, scope: !62)
!187 = !DILocation(line: 102, column: 21, scope: !188)
!188 = distinct !DILexicalBlock(scope: !62, file: !2, line: 102, column: 7)
!189 = !DILocation(line: 102, column: 79, scope: !188)
!190 = !DILocation(line: 102, column: 70, scope: !188)
!191 = !DILocation(line: 102, column: 55, scope: !188)
!192 = !DILocation(line: 102, column: 53, scope: !188)
!193 = !DILocation(line: 102, column: 32, scope: !188)
!194 = !DILocation(line: 102, column: 7, scope: !188)
!195 = !DILocation(line: 102, column: 103, scope: !188)
!196 = !DILocation(line: 102, column: 7, scope: !62)
!197 = !DILocation(line: 104, column: 120, scope: !198)
!198 = distinct !DILexicalBlock(scope: !188, file: !2, line: 103, column: 3)
!199 = !DILocation(line: 104, column: 132, scope: !198)
!200 = !DILocation(line: 104, column: 5, scope: !198)
!201 = !DILocation(line: 105, column: 5, scope: !198)
!202 = !DILocation(line: 106, column: 3, scope: !198)
!203 = !DILocation(line: 109, column: 16, scope: !204)
!204 = distinct !DILexicalBlock(scope: !62, file: !2, line: 109, column: 7)
!205 = !DILocation(line: 109, column: 38, scope: !204)
!206 = !DILocation(line: 109, column: 46, scope: !204)
!207 = !DILocation(line: 109, column: 7, scope: !62)
!208 = !DILocalVariable(name: "vfile", arg: 1, scope: !209, file: !2, line: 23, type: !31)
!209 = distinct !DISubprogram(name: "ReadData", scope: !2, file: !2, line: 23, type: !210, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !212)
!210 = !DISubroutineType(types: !211)
!211 = !{!31, !31, !152, !153}
!212 = !{!208, !213, !214, !215, !216, !217, !218}
!213 = !DILocalVariable(name: "source", arg: 2, scope: !209, file: !2, line: 23, type: !152)
!214 = !DILocalVariable(name: "buf", arg: 3, scope: !209, file: !2, line: 23, type: !153)
!215 = !DILocalVariable(name: "cur_buf", scope: !209, file: !2, line: 25, type: !153)
!216 = !DILocalVariable(name: "read_size", scope: !209, file: !2, line: 26, type: !31)
!217 = !DILocalVariable(name: "i", scope: !209, file: !2, line: 27, type: !31)
!218 = !DILocalVariable(name: "j", scope: !209, file: !2, line: 27, type: !31)
!219 = !DILocation(line: 0, scope: !209, inlinedAt: !220)
!220 = distinct !DILocation(line: 112, column: 17, scope: !221)
!221 = distinct !DILexicalBlock(scope: !204, file: !2, line: 110, column: 3)
!222 = !DILocation(line: 26, column: 58, scope: !209, inlinedAt: !220)
!223 = !DILocation(line: 28, column: 19, scope: !224, inlinedAt: !220)
!224 = distinct !DILexicalBlock(scope: !225, file: !2, line: 28, column: 3)
!225 = distinct !DILexicalBlock(scope: !209, file: !2, line: 28, column: 3)
!226 = !DILocation(line: 28, column: 17, scope: !224, inlinedAt: !220)
!227 = !DILocation(line: 28, column: 3, scope: !225, inlinedAt: !220)
!228 = !DILocation(line: 26, column: 50, scope: !209, inlinedAt: !220)
!229 = !DILocation(line: 26, column: 27, scope: !209, inlinedAt: !220)
!230 = !DILocation(line: 26, column: 48, scope: !209, inlinedAt: !220)
!231 = !DILocation(line: 30, column: 9, scope: !232, inlinedAt: !220)
!232 = distinct !DILexicalBlock(scope: !233, file: !2, line: 30, column: 9)
!233 = distinct !DILexicalBlock(scope: !224, file: !2, line: 29, column: 3)
!234 = !DILocation(line: 30, column: 41, scope: !232, inlinedAt: !220)
!235 = !DILocation(line: 30, column: 9, scope: !233, inlinedAt: !220)
!236 = !DILocation(line: 35, column: 13, scope: !233, inlinedAt: !220)
!237 = !DILocation(line: 28, column: 39, scope: !224, inlinedAt: !220)
!238 = distinct !{!238, !227, !239}
!239 = !DILocation(line: 36, column: 3, scope: !225, inlinedAt: !220)
!240 = !DILocation(line: 38, column: 15, scope: !241, inlinedAt: !220)
!241 = distinct !DILexicalBlock(scope: !209, file: !2, line: 38, column: 7)
!242 = !DILocation(line: 38, column: 26, scope: !241, inlinedAt: !220)
!243 = !DILocation(line: 38, column: 7, scope: !209, inlinedAt: !220)
!244 = !DILocation(line: 40, column: 25, scope: !245, inlinedAt: !220)
!245 = distinct !DILexicalBlock(scope: !241, file: !2, line: 39, column: 3)
!246 = !DILocation(line: 40, column: 48, scope: !245, inlinedAt: !220)
!247 = !DILocation(line: 40, column: 46, scope: !245, inlinedAt: !220)
!248 = !DILocation(line: 43, column: 23, scope: !249, inlinedAt: !220)
!249 = distinct !DILexicalBlock(scope: !250, file: !2, line: 43, column: 7)
!250 = distinct !DILexicalBlock(scope: !251, file: !2, line: 43, column: 7)
!251 = distinct !DILexicalBlock(scope: !252, file: !2, line: 42, column: 5)
!252 = distinct !DILexicalBlock(scope: !253, file: !2, line: 41, column: 5)
!253 = distinct !DILexicalBlock(scope: !245, file: !2, line: 41, column: 5)
!254 = !DILocation(line: 43, column: 21, scope: !249, inlinedAt: !220)
!255 = !DILocation(line: 45, column: 13, scope: !256, inlinedAt: !220)
!256 = distinct !DILexicalBlock(scope: !257, file: !2, line: 45, column: 13)
!257 = distinct !DILexicalBlock(scope: !249, file: !2, line: 44, column: 7)
!258 = !DILocation(line: 45, column: 45, scope: !256, inlinedAt: !220)
!259 = !DILocation(line: 45, column: 13, scope: !257, inlinedAt: !220)
!260 = !DILocation(line: 50, column: 17, scope: !257, inlinedAt: !220)
!261 = !DILocation(line: 43, column: 43, scope: !249, inlinedAt: !220)
!262 = !DILocation(line: 43, column: 7, scope: !250, inlinedAt: !220)
!263 = distinct !{!263, !262, !264}
!264 = !DILocation(line: 51, column: 7, scope: !250, inlinedAt: !220)
!265 = distinct !{!265, !262, !264}
!266 = !DILocation(line: 55, column: 1, scope: !209, inlinedAt: !220)
!267 = !DILocation(line: 122, column: 3, scope: !62)
!268 = !DILocation(line: 119, column: 5, scope: !269)
!269 = distinct !DILexicalBlock(scope: !204, file: !2, line: 118, column: 3)
!270 = !DILocation(line: 120, column: 5, scope: !269)
!271 = !DISubprogram(name: "lseek", scope: !272, file: !272, line: 339, type: !273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!272 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!273 = !DISubroutineType(types: !274)
!274 = !{!275, !31, !275, !31}
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !176, line: 152, baseType: !177)
!276 = !DISubprogram(name: "snprintf", scope: !277, file: !277, line: 378, type: !278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!277 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!278 = !DISubroutineType(types: !279)
!279 = !{!31, !280, !282, !285, null}
!280 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !283, line: 18, baseType: !284)
!283 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!284 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!285 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!288 = !DISubprogram(name: "error", scope: !67, file: !67, line: 940, type: !289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !281, !31}
!291 = !DISubprogram(name: "printf", scope: !277, file: !277, line: 356, type: !292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!292 = !DISubroutineType(types: !293)
!293 = !{!31, !285, null}
!294 = !DISubprogram(name: "exit", scope: !295, file: !295, line: 624, type: !296, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!295 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!296 = !DISubroutineType(types: !297)
!297 = !{null, !31}
!298 = distinct !DISubprogram(name: "ReadFrameSeparate", scope: !2, file: !2, line: 143, type: !63, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !299)
!299 = !{!300, !301, !302, !303, !304, !305, !306, !307}
!300 = !DILocalVariable(name: "p_Inp", arg: 1, scope: !298, file: !2, line: 143, type: !65)
!301 = !DILocalVariable(name: "input_file", arg: 2, scope: !298, file: !2, line: 143, type: !151)
!302 = !DILocalVariable(name: "FrameNoInFile", arg: 3, scope: !298, file: !2, line: 143, type: !31)
!303 = !DILocalVariable(name: "HeaderSize", arg: 4, scope: !298, file: !2, line: 143, type: !31)
!304 = !DILocalVariable(name: "source", arg: 5, scope: !298, file: !2, line: 143, type: !152)
!305 = !DILocalVariable(name: "buf", arg: 6, scope: !298, file: !2, line: 143, type: !153)
!306 = !DILocalVariable(name: "file_read", scope: !298, file: !2, line: 145, type: !31)
!307 = !DILocalVariable(name: "vfile", scope: !298, file: !2, line: 146, type: !31)
!308 = !DILocation(line: 0, scope: !298)
!309 = !DILocation(line: 146, column: 27, scope: !298)
!310 = !DILocation(line: 148, column: 53, scope: !298)
!311 = !DILocation(line: 148, column: 44, scope: !298)
!312 = !DILocation(line: 148, column: 3, scope: !298)
!313 = !DILocation(line: 151, column: 21, scope: !314)
!314 = distinct !DILexicalBlock(scope: !298, file: !2, line: 151, column: 7)
!315 = !DILocation(line: 151, column: 7, scope: !314)
!316 = !DILocation(line: 151, column: 43, scope: !314)
!317 = !DILocation(line: 151, column: 7, scope: !298)
!318 = !DILocation(line: 153, column: 5, scope: !319)
!319 = distinct !DILexicalBlock(scope: !314, file: !2, line: 152, column: 3)
!320 = !DILocation(line: 154, column: 3, scope: !319)
!321 = !DILocation(line: 157, column: 16, scope: !322)
!322 = distinct !DILexicalBlock(scope: !298, file: !2, line: 157, column: 7)
!323 = !DILocation(line: 157, column: 38, scope: !322)
!324 = !DILocation(line: 157, column: 46, scope: !322)
!325 = !DILocation(line: 157, column: 7, scope: !298)
!326 = !DILocation(line: 0, scope: !209, inlinedAt: !327)
!327 = distinct !DILocation(line: 160, column: 17, scope: !328)
!328 = distinct !DILexicalBlock(scope: !322, file: !2, line: 158, column: 3)
!329 = !DILocation(line: 26, column: 27, scope: !209, inlinedAt: !327)
!330 = !DILocation(line: 26, column: 58, scope: !209, inlinedAt: !327)
!331 = !DILocation(line: 28, column: 19, scope: !224, inlinedAt: !327)
!332 = !DILocation(line: 28, column: 17, scope: !224, inlinedAt: !327)
!333 = !DILocation(line: 28, column: 3, scope: !225, inlinedAt: !327)
!334 = !DILocation(line: 26, column: 50, scope: !209, inlinedAt: !327)
!335 = !DILocation(line: 26, column: 48, scope: !209, inlinedAt: !327)
!336 = !DILocation(line: 30, column: 9, scope: !232, inlinedAt: !327)
!337 = !DILocation(line: 30, column: 41, scope: !232, inlinedAt: !327)
!338 = !DILocation(line: 30, column: 9, scope: !233, inlinedAt: !327)
!339 = !DILocation(line: 35, column: 13, scope: !233, inlinedAt: !327)
!340 = !DILocation(line: 28, column: 39, scope: !224, inlinedAt: !327)
!341 = distinct !{!341, !333, !342}
!342 = !DILocation(line: 36, column: 3, scope: !225, inlinedAt: !327)
!343 = !DILocation(line: 38, column: 15, scope: !241, inlinedAt: !327)
!344 = !DILocation(line: 38, column: 26, scope: !241, inlinedAt: !327)
!345 = !DILocation(line: 38, column: 7, scope: !209, inlinedAt: !327)
!346 = !DILocation(line: 40, column: 25, scope: !245, inlinedAt: !327)
!347 = !DILocation(line: 40, column: 48, scope: !245, inlinedAt: !327)
!348 = !DILocation(line: 40, column: 46, scope: !245, inlinedAt: !327)
!349 = !DILocation(line: 43, column: 23, scope: !249, inlinedAt: !327)
!350 = !DILocation(line: 43, column: 21, scope: !249, inlinedAt: !327)
!351 = !DILocation(line: 45, column: 13, scope: !256, inlinedAt: !327)
!352 = !DILocation(line: 45, column: 45, scope: !256, inlinedAt: !327)
!353 = !DILocation(line: 45, column: 13, scope: !257, inlinedAt: !327)
!354 = !DILocation(line: 50, column: 17, scope: !257, inlinedAt: !327)
!355 = !DILocation(line: 43, column: 43, scope: !249, inlinedAt: !327)
!356 = !DILocation(line: 43, column: 7, scope: !250, inlinedAt: !327)
!357 = distinct !{!357, !356, !358}
!358 = !DILocation(line: 51, column: 7, scope: !250, inlinedAt: !327)
!359 = distinct !{!359, !356, !358}
!360 = !DILocation(line: 55, column: 1, scope: !209, inlinedAt: !327)
!361 = !DILocation(line: 177, column: 13, scope: !362)
!362 = distinct !DILexicalBlock(scope: !298, file: !2, line: 177, column: 7)
!363 = !DILocation(line: 177, column: 7, scope: !298)
!364 = !DILocation(line: 173, column: 5, scope: !365)
!365 = distinct !DILexicalBlock(scope: !322, file: !2, line: 172, column: 3)
!366 = !DILocation(line: 174, column: 5, scope: !365)
!367 = !DILocation(line: 178, column: 5, scope: !362)
!368 = !DILocation(line: 180, column: 3, scope: !298)
!369 = !DISubprogram(name: "OpenFrameFile", scope: !370, file: !370, line: 24, type: !371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!370 = !DIFile(filename: "ldecod_src/inc/img_io.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d16ea1a329b4cde317d55babdc8e5b45")
!371 = !DISubroutineType(types: !372)
!372 = !{null, !151, !31}
!373 = !DISubprogram(name: "close", scope: !272, file: !272, line: 358, type: !374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!374 = !DISubroutineType(types: !375)
!375 = !{!31, !31}
!376 = !DISubprogram(name: "read", scope: !272, file: !272, line: 371, type: !377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!377 = !DISubroutineType(types: !378)
!378 = !{!379, !31, !381, !282}
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !272, line: 220, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !176, line: 194, baseType: !177)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
