; ModuleID = 'ldecod_src/decoder_test.c'
source_filename = "ldecod_src/decoder_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inp_par = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, i32, i32, i32, i32, %struct.frame_format, %struct.frame_format, i32, i32, %struct.video_data_file, %struct.video_data_file, %struct.video_data_file, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.video_data_file = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, %struct.frame_format, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [28 x i8] c"Open encoder failed: 0x%x!\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [33 x i8] c"Error in decoding process: 0x%x\0A\00", align 1, !dbg !7
@p_Dec = external local_unnamed_addr global ptr, align 8
@cfgparams = dso_local local_unnamed_addr global %struct.inp_par zeroinitializer, align 8, !dbg !12
@.str.2 = private unnamed_addr constant [9 x i8] c"test.264\00", align 1, !dbg !60
@.str.3 = private unnamed_addr constant [13 x i8] c"test_dec.yuv\00", align 1, !dbg !65
@.str.4 = private unnamed_addr constant [13 x i8] c"test_rec.yuv\00", align 1, !dbg !70
@stdout = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [70 x i8] c"----------------------------- JM %s %s -----------------------------\0A\00", align 1, !dbg !72
@.str.6 = private unnamed_addr constant [5 x i8] c"17.1\00", align 1, !dbg !77
@.str.7 = private unnamed_addr constant [8 x i8] c"(FRExt)\00", align 1, !dbg !82
@.str.8 = private unnamed_addr constant [76 x i8] c"--------------------------------------------------------------------------\0A\00", align 1, !dbg !87
@.str.9 = private unnamed_addr constant [47 x i8] c" Input H.264 bitstream                  : %s \0A\00", align 1, !dbg !92
@.str.10 = private unnamed_addr constant [47 x i8] c" Output decoded YUV                     : %s \0A\00", align 1, !dbg !97
@.str.11 = private unnamed_addr constant [47 x i8] c" Input reference file                   : %s \0A\00", align 1, !dbg !99
@.str.12 = private unnamed_addr constant [52 x i8] c"POC must = frame# or field# for SNRs to be correct\0A\00", align 1, !dbg !101
@.str.13 = private unnamed_addr constant [76 x i8] c"  Frame          POC  Pic#   QP    SnrY     SnrU     SnrV   Y:U:V Time(ms)\0A\00", align 1, !dbg !106

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @main(i32 noundef %argc, ptr noundef %argv) local_unnamed_addr #0 !dbg !202 {
entry:
  %pDecPicList = alloca ptr, align 8, !DIAssignID !241
    #dbg_assign(i1 undef, !211, !DIExpression(), !241, ptr %pDecPicList, !DIExpression(), !242)
  %InputParams = alloca %struct.inp_par, align 8, !DIAssignID !243
    #dbg_assign(i1 undef, !240, !DIExpression(), !243, ptr %InputParams, !DIExpression(), !242)
    #dbg_value(i32 %argc, !208, !DIExpression(), !242)
    #dbg_value(ptr %argv, !209, !DIExpression(), !242)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDecPicList) #7, !dbg !244
    #dbg_value(i32 -1, !236, !DIExpression(), !242)
    #dbg_value(i32 -1, !237, !DIExpression(), !242)
    #dbg_value(i32 0, !238, !DIExpression(), !242)
    #dbg_value(i32 0, !239, !DIExpression(), !242)
  call void @llvm.lifetime.start.p0(i64 4016, ptr nonnull %InputParams) #7, !dbg !245
    #dbg_value(ptr %InputParams, !246, !DIExpression(), !254)
    #dbg_value(i32 %argc, !252, !DIExpression(), !254)
    #dbg_value(ptr %argv, !253, !DIExpression(), !254)
  %0 = getelementptr inbounds i8, ptr %InputParams, i64 9, !dbg !256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4007) %0, i8 0, i64 4007, i1 false), !dbg !256, !DIAssignID !257
    #dbg_assign(i8 0, !240, !DIExpression(DW_OP_LLVM_fragment, 72, 32056), !257, ptr %0, !DIExpression(), !242)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %InputParams, ptr noundef nonnull align 1 dereferenceable(9) @.str.2, i64 9, i1 false) #7, !dbg !258, !DIAssignID !259
    #dbg_assign(i1 undef, !240, !DIExpression(DW_OP_LLVM_fragment, 0, 72), !259, ptr %InputParams, !DIExpression(), !242)
  %outfile.i = getelementptr inbounds i8, ptr %InputParams, i64 255, !dbg !260
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %outfile.i, ptr noundef nonnull align 1 dereferenceable(13) @.str.3, i64 13, i1 false) #7, !dbg !261, !DIAssignID !262
    #dbg_assign(i1 undef, !240, !DIExpression(DW_OP_LLVM_fragment, 2040, 104), !262, ptr %outfile.i, !DIExpression(), !242)
  %reffile.i = getelementptr inbounds i8, ptr %InputParams, i64 510, !dbg !263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(13) %reffile.i, ptr noundef nonnull align 1 dereferenceable(13) @.str.4, i64 13, i1 false) #7, !dbg !264, !DIAssignID !265
    #dbg_assign(i1 undef, !240, !DIExpression(DW_OP_LLVM_fragment, 4080, 104), !265, ptr %reffile.i, !DIExpression(), !242)
    #dbg_assign(i32 0, !240, !DIExpression(DW_OP_LLVM_fragment, 6176, 32), !266, ptr %InputParams, !DIExpression(DW_OP_plus_uconst, 772), !242)
  %poc_scale.i = getelementptr inbounds i8, ptr %InputParams, i64 776, !dbg !267
  store i32 2, ptr %poc_scale.i, align 8, !dbg !268, !DIAssignID !269
    #dbg_assign(i32 2, !240, !DIExpression(DW_OP_LLVM_fragment, 6208, 32), !269, ptr %poc_scale.i, !DIExpression(), !242)
  %silent.i = getelementptr inbounds i8, ptr %InputParams, i64 784, !dbg !270
    #dbg_assign(i32 0, !240, !DIExpression(DW_OP_LLVM_fragment, 6304, 32), !271, ptr %InputParams, !DIExpression(DW_OP_plus_uconst, 788), !242)
  %write_uv.i = getelementptr inbounds i8, ptr %InputParams, i64 780, !dbg !272
  store i32 1, ptr %write_uv.i, align 4, !dbg !273, !DIAssignID !274
    #dbg_assign(i32 1, !240, !DIExpression(DW_OP_LLVM_fragment, 6240, 32), !274, ptr %write_uv.i, !DIExpression(), !242)
  %ref_poc_gap.i = getelementptr inbounds i8, ptr %InputParams, i64 3984, !dbg !275
  store i32 2, ptr %ref_poc_gap.i, align 8, !dbg !276, !DIAssignID !277
    #dbg_assign(i32 2, !240, !DIExpression(DW_OP_LLVM_fragment, 31872, 32), !277, ptr %ref_poc_gap.i, !DIExpression(), !242)
  %poc_gap.i = getelementptr inbounds i8, ptr %InputParams, i64 3988, !dbg !278
  store i32 2, ptr %poc_gap.i, align 4, !dbg !279, !DIAssignID !280
    #dbg_assign(i32 2, !240, !DIExpression(DW_OP_LLVM_fragment, 31904, 32), !280, ptr %poc_gap.i, !DIExpression(), !242)
  call void @ParseCommand(ptr noundef nonnull %InputParams, i32 noundef %argc, ptr noundef %argv) #7, !dbg !281
  %1 = load ptr, ptr @stdout, align 8, !dbg !282
  %call5.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #7, !dbg !283
  %bDisplayDecParams.i = getelementptr inbounds i8, ptr %InputParams, i64 4012, !dbg !284
  %2 = load i32, ptr %bDisplayDecParams.i, align 4, !dbg !284
  %tobool.not.i = icmp eq i32 %2, 0, !dbg !286
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i, !dbg !287

if.then.i:                                        ; preds = %entry
  %3 = load ptr, ptr @stdout, align 8, !dbg !288
  %4 = call i64 @fwrite(ptr nonnull @.str.8, i64 75, i64 1, ptr %3), !dbg !290
  %5 = load ptr, ptr @stdout, align 8, !dbg !291
  %call9.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.9, ptr noundef nonnull %InputParams) #7, !dbg !292
  %6 = load ptr, ptr @stdout, align 8, !dbg !293
  %call12.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.10, ptr noundef nonnull %outfile.i) #7, !dbg !294
  %7 = load ptr, ptr @stdout, align 8, !dbg !295
  %call15.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.11, ptr noundef nonnull %reffile.i) #7, !dbg !296
  %8 = load ptr, ptr @stdout, align 8, !dbg !297
  %9 = call i64 @fwrite(ptr nonnull @.str.8, i64 75, i64 1, ptr %8), !dbg !298
  br label %if.end.i, !dbg !299

if.end.i:                                         ; preds = %if.then.i, %entry
  %10 = load i32, ptr %silent.i, align 8, !dbg !300
  %tobool18.not.i = icmp eq i32 %10, 0, !dbg !302
  br i1 %tobool18.not.i, label %if.then19.i, label %Configure.exit, !dbg !303

if.then19.i:                                      ; preds = %if.end.i
  %11 = load ptr, ptr @stdout, align 8, !dbg !304
  %12 = call i64 @fwrite(ptr nonnull @.str.12, i64 51, i64 1, ptr %11), !dbg !306
  %13 = load ptr, ptr @stdout, align 8, !dbg !307
  %14 = call i64 @fwrite(ptr nonnull @.str.8, i64 75, i64 1, ptr %13), !dbg !308
  %15 = load ptr, ptr @stdout, align 8, !dbg !309
  %16 = call i64 @fwrite(ptr nonnull @.str.13, i64 75, i64 1, ptr %15), !dbg !310
  %17 = load ptr, ptr @stdout, align 8, !dbg !311
  %18 = call i64 @fwrite(ptr nonnull @.str.8, i64 75, i64 1, ptr %17), !dbg !312
  br label %Configure.exit, !dbg !313

Configure.exit:                                   ; preds = %if.end.i, %if.then19.i
  %call = call i32 @OpenDecoder(ptr noundef nonnull %InputParams) #7, !dbg !314
    #dbg_value(i32 %call, !210, !DIExpression(), !242)
  %cmp.not = icmp eq i32 %call, 0, !dbg !315
  br i1 %cmp.not, label %do.body, label %if.then, !dbg !317

if.then:                                          ; preds = %Configure.exit
  %19 = load ptr, ptr @stderr, align 8, !dbg !318
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str, i32 noundef %call) #8, !dbg !320
  br label %cleanup, !dbg !321

do.body:                                          ; preds = %Configure.exit, %land.rhs
  %iFramesDecoded.0 = phi i32 [ %inc, %land.rhs ], [ 0, %Configure.exit ], !dbg !242
    #dbg_value(i32 %iFramesDecoded.0, !239, !DIExpression(), !242)
    #dbg_value(i32 0, !238, !DIExpression(), !242)
  %call2 = call i32 @DecodeOneFrame(ptr noundef nonnull %pDecPicList) #7, !dbg !322
    #dbg_value(i32 %call2, !210, !DIExpression(), !242)
  %cmp4 = icmp eq i32 %call2, 0
  %or.cond = icmp ult i32 %call2, 2, !dbg !324
  br i1 %or.cond, label %if.then5, label %do.cond.thread, !dbg !324

if.then5:                                         ; preds = %do.body
  %20 = load ptr, ptr %pDecPicList, align 8, !dbg !326
    #dbg_value(ptr %20, !328, !DIExpression(), !355)
    #dbg_value(i32 -1, !333, !DIExpression(), !355)
    #dbg_value(i32 -1, !334, !DIExpression(), !355)
    #dbg_value(i32 0, !335, !DIExpression(), !355)
    #dbg_value(i32 0, !336, !DIExpression(), !355)
    #dbg_value(ptr %20, !337, !DIExpression(), !355)
  %tobool.not.i46 = icmp eq ptr %20, null, !dbg !357
  br i1 %tobool.not.i46, label %do.cond, label %land.lhs.true.i, !dbg !358

land.lhs.true.i:                                  ; preds = %if.then5
  %iYUVStorageFormat.i = getelementptr inbounds i8, ptr %20, i64 16, !dbg !359
  %21 = load i32, ptr %iYUVStorageFormat.i, align 8, !dbg !359
  %cmp.i = icmp eq i32 %21, 2, !dbg !360
  %22 = load i32, ptr %20, align 8, !dbg !361
  br i1 %cmp.i, label %land.lhs.true1.i, label %land.lhs.true5.i, !dbg !362

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %cmp2.i = icmp eq i32 %22, 3, !dbg !363
  br i1 %cmp2.i, label %if.then.i47, label %do.cond, !dbg !364

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %cmp7.i = icmp eq i32 %22, 1, !dbg !365
  br i1 %cmp7.i, label %if.then.i47, label %do.cond, !dbg !366

if.then.i47:                                      ; preds = %land.lhs.true5.i, %land.lhs.true1.i
    #dbg_value(!DIArgList(i32 poison, i32 poison), !341, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 7, DW_OP_constu, 3, DW_OP_shra, DW_OP_mul, DW_OP_stack_value), !367)
    #dbg_value(i32 poison, !342, !DIExpression(), !367)
    #dbg_value(i32 poison, !343, !DIExpression(), !367)
    #dbg_value(i32 poison, !344, !DIExpression(), !367)
    #dbg_value(i32 poison, !345, !DIExpression(), !367)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !344, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 7, DW_OP_constu, 3, DW_OP_shra, DW_OP_mul, DW_OP_stack_value), !367)
    #dbg_value(i32 poison, !346, !DIExpression(), !367)
    #dbg_value(i32 0, !336, !DIExpression(), !355)
    #dbg_value(ptr %20, !337, !DIExpression(), !355)
    #dbg_value(i32 -1, !348, !DIExpression(), !367)
  store i32 0, ptr %20, align 8, !dbg !368
    #dbg_value(ptr poison, !337, !DIExpression(), !355)
  br label %do.cond, !dbg !369

do.cond.thread:                                   ; preds = %do.body
  %23 = load ptr, ptr @stderr, align 8, !dbg !370
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.1, i32 noundef %call2) #8, !dbg !372
    #dbg_value(i32 poison, !239, !DIExpression(), !242)
    #dbg_value(i32 0, !238, !DIExpression(), !242)
  br label %do.end, !dbg !373

do.cond:                                          ; preds = %if.then.i47, %land.lhs.true5.i, %land.lhs.true1.i, %if.then5
    #dbg_value(i32 0, !336, !DIExpression(), !355)
    #dbg_value(i32 0, !238, !DIExpression(), !242)
    #dbg_value(i32 %iFramesDecoded.0, !239, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !242)
  br i1 %cmp4, label %land.rhs, label %do.end, !dbg !373

land.rhs:                                         ; preds = %do.cond
  %inc = add nuw nsw i32 %iFramesDecoded.0, 1, !dbg !374
    #dbg_value(i32 %inc, !239, !DIExpression(), !242)
  %24 = load ptr, ptr @p_Dec, align 8, !dbg !375
  %25 = load ptr, ptr %24, align 8, !dbg !376
  %iDecFrmNum = getelementptr inbounds i8, ptr %25, i64 4008, !dbg !377
  %26 = load i32, ptr %iDecFrmNum, align 8, !dbg !377
  %cmp10 = icmp eq i32 %26, 0, !dbg !378
  %cmp13 = icmp slt i32 %inc, %26
  %or.cond45 = select i1 %cmp10, i1 true, i1 %cmp13, !dbg !379
  br i1 %or.cond45, label %do.body, label %do.end, !dbg !379, !llvm.loop !380

do.end:                                           ; preds = %land.rhs, %do.cond, %do.cond.thread
  %call14 = call i32 @FinitDecoder(ptr noundef nonnull %pDecPicList) #7, !dbg !383
    #dbg_value(i32 %call14, !210, !DIExpression(), !242)
  %27 = load ptr, ptr %pDecPicList, align 8, !dbg !384
    #dbg_value(ptr %27, !328, !DIExpression(), !385)
    #dbg_value(i32 -1, !333, !DIExpression(), !385)
    #dbg_value(i32 -1, !334, !DIExpression(), !385)
    #dbg_value(i32 1, !335, !DIExpression(), !385)
    #dbg_value(i32 0, !336, !DIExpression(), !385)
    #dbg_value(ptr %27, !337, !DIExpression(), !385)
  %tobool.not.i48 = icmp eq ptr %27, null, !dbg !387
  br i1 %tobool.not.i48, label %WriteOneFrame.exit57, label %land.lhs.true.i49, !dbg !388

land.lhs.true.i49:                                ; preds = %do.end
  %iYUVStorageFormat.i50 = getelementptr inbounds i8, ptr %27, i64 16, !dbg !389
  %28 = load i32, ptr %iYUVStorageFormat.i50, align 8, !dbg !389
  %cmp.i51 = icmp eq i32 %28, 2, !dbg !390
  %29 = load i32, ptr %27, align 8, !dbg !391
  br i1 %cmp.i51, label %land.lhs.true1.i55, label %land.lhs.true5.i52, !dbg !392

land.lhs.true1.i55:                               ; preds = %land.lhs.true.i49
  %cmp2.i56 = icmp eq i32 %29, 3, !dbg !393
  br i1 %cmp2.i56, label %do.body.i.preheader, label %WriteOneFrame.exit57, !dbg !394

land.lhs.true5.i52:                               ; preds = %land.lhs.true.i49
  %cmp7.i53 = icmp eq i32 %29, 1, !dbg !395
  br i1 %cmp7.i53, label %do.body.i.preheader, label %WriteOneFrame.exit57, !dbg !396

do.body.i.preheader:                              ; preds = %land.lhs.true5.i52, %land.lhs.true1.i55
  br label %do.body.i, !dbg !397

do.body.i:                                        ; preds = %do.body.i.preheader, %land.lhs.true141.i
  %pPic.0.i = phi ptr [ %30, %land.lhs.true141.i ], [ %27, %do.body.i.preheader ], !dbg !385
    #dbg_value(i32 0, !336, !DIExpression(), !385)
    #dbg_value(ptr %pPic.0.i, !337, !DIExpression(), !385)
    #dbg_value(i32 -1, !348, !DIExpression(), !398)
  store i32 0, ptr %pPic.0.i, align 8, !dbg !399
  %pNext.i = getelementptr inbounds i8, ptr %pPic.0.i, i64 72, !dbg !400
  %30 = load ptr, ptr %pNext.i, align 8, !dbg !400
    #dbg_value(ptr %30, !337, !DIExpression(), !385)
  %cmp139.not.i = icmp eq ptr %30, null, !dbg !401
  br i1 %cmp139.not.i, label %WriteOneFrame.exit57, label %land.lhs.true141.i, !dbg !402

land.lhs.true141.i:                               ; preds = %do.body.i
  %31 = load i32, ptr %30, align 8, !dbg !403
  %tobool143.not.i = icmp eq i32 %31, 0, !dbg !404
  br i1 %tobool143.not.i, label %WriteOneFrame.exit57, label %do.body.i, !dbg !405, !llvm.loop !406

WriteOneFrame.exit57:                             ; preds = %do.body.i, %land.lhs.true141.i, %do.end, %land.lhs.true1.i55, %land.lhs.true5.i52
    #dbg_value(i32 0, !336, !DIExpression(), !385)
    #dbg_value(!DIArgList(i32 0, i32 0), !238, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !242)
  %call17 = call i32 (...) @CloseDecoder() #7, !dbg !408
    #dbg_value(i32 %call17, !210, !DIExpression(), !242)
  br label %cleanup, !dbg !409

cleanup:                                          ; preds = %WriteOneFrame.exit57, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %WriteOneFrame.exit57 ], !dbg !242
  call void @llvm.lifetime.end.p0(i64 4016, ptr nonnull %InputParams) #7, !dbg !410
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDecPicList) #7, !dbg !410
  ret i32 %retval.0, !dbg !410
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !411 i32 @OpenDecoder(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !414 noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare !dbg !481 i32 @DecodeOneFrame(ptr noundef) local_unnamed_addr #2

declare !dbg !485 i32 @FinitDecoder(ptr noundef) local_unnamed_addr #2

declare !dbg !486 i32 @CloseDecoder(...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare !dbg !489 void @ParseCommand(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!194, !195, !196, !197, !198, !199, !200}
!llvm.ident = !{!201}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 221, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "ldecod_src/decoder_test.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "21559adf8d06c0550632b7557bb7eaeb")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 28)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 238, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "cfgparams", scope: !14, file: !108, line: 21, type: !109, isLocal: false, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !57, globals: !59, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16, !25, !31, !40, !52}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 22, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "ldecod_src/inc/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "fd6ca9e1c707932f749220576db72b57")
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{!20, !21, !22, !23, !24}
!20 = !DIEnumerator(name: "CF_UNKNOWN", value: -1)
!21 = !DIEnumerator(name: "YUV400", value: 0)
!22 = !DIEnumerator(name: "YUV420", value: 1)
!23 = !DIEnumerator(name: "YUV422", value: 2)
!24 = !DIEnumerator(name: "YUV444", value: 3)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 15, baseType: !18, size: 32, elements: !26)
!26 = !{!27, !28, !29, !30}
!27 = !DIEnumerator(name: "CM_UNKNOWN", value: -1)
!28 = !DIEnumerator(name: "CM_YUV", value: 0)
!29 = !DIEnumerator(name: "CM_RGB", value: 1)
!30 = !DIEnumerator(name: "CM_XYZ", value: 2)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !32, line: 25, baseType: !18, size: 32, elements: !33)
!32 = !DIFile(filename: "ldecod_src/inc/io_video.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1141c07f1801ad27d87214c419749431")
!33 = !{!34, !35, !36, !37, !38, !39}
!34 = !DIEnumerator(name: "VIDEO_UNKNOWN", value: -1)
!35 = !DIEnumerator(name: "VIDEO_YUV", value: 0)
!36 = !DIEnumerator(name: "VIDEO_RGB", value: 1)
!37 = !DIEnumerator(name: "VIDEO_XYZ", value: 2)
!38 = !DIEnumerator(name: "VIDEO_TIFF", value: 3)
!39 = !DIEnumerator(name: "VIDEO_AVI", value: 4)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 19, baseType: !42, size: 32, elements: !43)
!41 = !DIFile(filename: "ldecod_src/inc/h264decoder.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "ba430f541025e478510e78b4ed3faeb6")
!42 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51}
!44 = !DIEnumerator(name: "DEC_GEN_NOERR", value: 0)
!45 = !DIEnumerator(name: "DEC_OPEN_NOERR", value: 0)
!46 = !DIEnumerator(name: "DEC_CLOSE_NOERR", value: 0)
!47 = !DIEnumerator(name: "DEC_SUCCEED", value: 0)
!48 = !DIEnumerator(name: "DEC_EOS", value: 1)
!49 = !DIEnumerator(name: "DEC_NEED_DATA", value: 2)
!50 = !DIEnumerator(name: "DEC_INVALID_PARAM", value: 3)
!51 = !DIEnumerator(name: "DEC_ERRMASK", value: 32768)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !53, line: 70, baseType: !42, size: 32, elements: !54)
!53 = !DIFile(filename: "ldecod_src/inc/types.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "64f87bd13f2911471c7313b4ac17e90c")
!54 = !{!55, !56}
!55 = !DIEnumerator(name: "PAR_OF_ANNEXB", value: 0)
!56 = !DIEnumerator(name: "PAR_OF_RTP", value: 1)
!57 = !{!58}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!59 = !{!0, !7, !12, !60, !65, !70, !72, !77, !82, !87, !92, !97, !99, !101, !106}
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 9)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 13)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !67, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 560, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 70)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 5)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 8)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 608, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 76)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 47)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !94, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !94, isLocal: true, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !103, isLocal: true, isDefinition: true)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 52)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !89, isLocal: true, isDefinition: true)
!108 = !DIFile(filename: "ldecod_src/inc/configfile.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "23faa11f5f7f05b8e96bfb34b9b764b7")
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "InputParameters", file: !110, line: 900, baseType: !111)
!110 = !DIFile(filename: "ldecod_src/inc/global.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c4ca3c417c5616a2ff6b6266e7376fc1")
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inp_par", file: !110, line: 850, size: 32128, elements: !112)
!112 = !{!113, !117, !118, !119, !120, !121, !122, !123, !124, !125, !155, !156, !157, !158, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "infile", scope: !111, file: !110, line: 852, baseType: !114, size: 2040)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2040, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 255)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "outfile", scope: !111, file: !110, line: 853, baseType: !114, size: 2040, offset: 2040)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "reffile", scope: !111, file: !110, line: 854, baseType: !114, size: 2040, offset: 4080)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "FileFormat", scope: !111, file: !110, line: 856, baseType: !18, size: 32, offset: 6144)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "ref_offset", scope: !111, file: !110, line: 857, baseType: !18, size: 32, offset: 6176)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "poc_scale", scope: !111, file: !110, line: 858, baseType: !18, size: 32, offset: 6208)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "write_uv", scope: !111, file: !110, line: 859, baseType: !18, size: 32, offset: 6240)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "silent", scope: !111, file: !110, line: 860, baseType: !18, size: 32, offset: 6272)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "intra_profile_deblocking", scope: !111, file: !110, line: 861, baseType: !18, size: 32, offset: 6304)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !111, file: !110, line: 864, baseType: !126, size: 1088, offset: 6336)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameFormat", file: !17, line: 52, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_format", file: !17, line: 30, size: 1088, elements: !128)
!128 = !{!129, !131, !133, !135, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !127, file: !17, line: 32, baseType: !130, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorFormat", file: !17, line: 28, baseType: !16)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "color_model", scope: !127, file: !17, line: 33, baseType: !132, size: 32, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorModel", file: !17, line: 20, baseType: !25)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "frame_rate", scope: !127, file: !17, line: 34, baseType: !134, size: 64, offset: 64)
!134 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !127, file: !17, line: 35, baseType: !136, size: 96, offset: 128)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 96, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 3)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !127, file: !17, line: 36, baseType: !136, size: 96, offset: 224)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right", scope: !127, file: !17, line: 37, baseType: !18, size: 32, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom", scope: !127, file: !17, line: 38, baseType: !18, size: 32, offset: 352)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right_cr", scope: !127, file: !17, line: 39, baseType: !18, size: 32, offset: 384)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom_cr", scope: !127, file: !17, line: 40, baseType: !18, size: 32, offset: 416)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "width_crop", scope: !127, file: !17, line: 41, baseType: !18, size: 32, offset: 448)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "height_crop", scope: !127, file: !17, line: 42, baseType: !18, size: 32, offset: 480)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "mb_width", scope: !127, file: !17, line: 43, baseType: !18, size: 32, offset: 512)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "mb_height", scope: !127, file: !17, line: 44, baseType: !18, size: 32, offset: 544)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "size_cmp", scope: !127, file: !17, line: 45, baseType: !136, size: 96, offset: 576)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !127, file: !17, line: 46, baseType: !18, size: 32, offset: 672)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth", scope: !127, file: !17, line: 47, baseType: !136, size: 96, offset: 704)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !127, file: !17, line: 48, baseType: !136, size: 96, offset: 800)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "max_value_sq", scope: !127, file: !17, line: 49, baseType: !136, size: 96, offset: 896)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !127, file: !17, line: 50, baseType: !18, size: 32, offset: 992)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_shift3", scope: !127, file: !17, line: 51, baseType: !18, size: 32, offset: 1024)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !111, file: !110, line: 865, baseType: !126, size: 1088, offset: 7424)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ProcessInput", scope: !111, file: !110, line: 867, baseType: !18, size: 32, offset: 8512)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "enable_32_pulldown", scope: !111, file: !110, line: 868, baseType: !18, size: 32, offset: 8544)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "input_file1", scope: !111, file: !110, line: 869, baseType: !159, size: 7744, offset: 8576)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoDataFile", file: !32, line: 60, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_data_file", file: !32, line: 34, size: 7744, elements: !161)
!161 = !{!162, !163, !164, !165, !166, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !160, file: !32, line: 37, baseType: !114, size: 2040)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "fhead", scope: !160, file: !32, line: 38, baseType: !114, size: 2040, offset: 2040)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "ftail", scope: !160, file: !32, line: 39, baseType: !114, size: 2040, offset: 4080)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "f_num", scope: !160, file: !32, line: 40, baseType: !18, size: 32, offset: 6144)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "vdtype", scope: !160, file: !32, line: 41, baseType: !167, size: 32, offset: 6176)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoFileType", file: !32, line: 32, baseType: !31)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !160, file: !32, line: 42, baseType: !126, size: 1088, offset: 6208)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "is_concatenated", scope: !160, file: !32, line: 43, baseType: !18, size: 32, offset: 7296)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "is_interleaved", scope: !160, file: !32, line: 44, baseType: !18, size: 32, offset: 7328)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "zero_pad", scope: !160, file: !32, line: 45, baseType: !18, size: 32, offset: 7360)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "num_digits", scope: !160, file: !32, line: 46, baseType: !18, size: 32, offset: 7392)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !160, file: !32, line: 47, baseType: !18, size: 32, offset: 7424)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "end_frame", scope: !160, file: !32, line: 48, baseType: !18, size: 32, offset: 7456)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nframes", scope: !160, file: !32, line: 49, baseType: !18, size: 32, offset: 7488)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_size", scope: !160, file: !32, line: 50, baseType: !18, size: 32, offset: 7520)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_size", scope: !160, file: !32, line: 51, baseType: !18, size: 32, offset: 7552)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_offset", scope: !160, file: !32, line: 52, baseType: !18, size: 32, offset: 7584)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_offset", scope: !160, file: !32, line: 53, baseType: !18, size: 32, offset: 7616)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "avi", scope: !160, file: !32, line: 56, baseType: !181, size: 64, offset: 7680)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "input_file2", scope: !111, file: !110, line: 870, baseType: !159, size: 7744, offset: 16320)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "input_file3", scope: !111, file: !110, line: 871, baseType: !159, size: 7744, offset: 24064)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "DecodeAllLayers", scope: !111, file: !110, line: 873, baseType: !18, size: 32, offset: 31808)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !111, file: !110, line: 884, baseType: !18, size: 32, offset: 31840)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !111, file: !110, line: 885, baseType: !18, size: 32, offset: 31872)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !111, file: !110, line: 886, baseType: !18, size: 32, offset: 31904)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !111, file: !110, line: 890, baseType: !18, size: 32, offset: 31936)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "stdRange", scope: !111, file: !110, line: 893, baseType: !18, size: 32, offset: 31968)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "videoCode", scope: !111, file: !110, line: 894, baseType: !18, size: 32, offset: 32000)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "export_views", scope: !111, file: !110, line: 895, baseType: !18, size: 32, offset: 32032)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "iDecFrmNum", scope: !111, file: !110, line: 897, baseType: !18, size: 32, offset: 32064)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "bDisplayDecParams", scope: !111, file: !110, line: 899, baseType: !18, size: 32, offset: 32096)
!194 = !{i32 7, !"Dwarf Version", i32 5}
!195 = !{i32 2, !"Debug Info Version", i32 3}
!196 = !{i32 1, !"wchar_size", i32 4}
!197 = !{i32 8, !"PIC Level", i32 2}
!198 = !{i32 7, !"PIE Level", i32 2}
!199 = !{i32 7, !"uwtable", i32 2}
!200 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!201 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!202 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 200, type: !203, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !207)
!203 = !DISubroutineType(types: !204)
!204 = !{!18, !18, !205}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!207 = !{!208, !209, !210, !211, !236, !237, !238, !239, !240}
!208 = !DILocalVariable(name: "argc", arg: 1, scope: !202, file: !2, line: 200, type: !18)
!209 = !DILocalVariable(name: "argv", arg: 2, scope: !202, file: !2, line: 200, type: !205)
!210 = !DILocalVariable(name: "iRet", scope: !202, file: !2, line: 202, type: !18)
!211 = !DILocalVariable(name: "pDecPicList", scope: !202, file: !2, line: 203, type: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodedPicList", file: !110, line: 561, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decodedpic_t", file: !110, line: 544, size: 640, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !221, !222, !227, !228, !229, !230, !231, !232, !233, !234}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "bValid", scope: !214, file: !110, line: 546, baseType: !18, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "iViewId", scope: !214, file: !110, line: 547, baseType: !18, size: 32, offset: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "iPOC", scope: !214, file: !110, line: 548, baseType: !18, size: 32, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVFormat", scope: !214, file: !110, line: 549, baseType: !18, size: 32, offset: 96)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVStorageFormat", scope: !214, file: !110, line: 550, baseType: !18, size: 32, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "iBitDepth", scope: !214, file: !110, line: 551, baseType: !18, size: 32, offset: 160)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "pY", scope: !214, file: !110, line: 552, baseType: !223, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !225, line: 21, baseType: !226)
!225 = !DIFile(filename: "ldecod_src/inc/typedefs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1393d024b72e653f4e6dbeffdb0b154")
!226 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "pU", scope: !214, file: !110, line: 553, baseType: !223, size: 64, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "pV", scope: !214, file: !110, line: 554, baseType: !223, size: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "iWidth", scope: !214, file: !110, line: 555, baseType: !18, size: 32, offset: 384)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "iHeight", scope: !214, file: !110, line: 556, baseType: !18, size: 32, offset: 416)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "iYBufStride", scope: !214, file: !110, line: 557, baseType: !18, size: 32, offset: 448)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "iUVBufStride", scope: !214, file: !110, line: 558, baseType: !18, size: 32, offset: 480)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "iSkipPicNum", scope: !214, file: !110, line: 559, baseType: !18, size: 32, offset: 512)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "pNext", scope: !214, file: !110, line: 560, baseType: !235, size: 64, offset: 576)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!236 = !DILocalVariable(name: "hFileDecOutput0", scope: !202, file: !2, line: 204, type: !18)
!237 = !DILocalVariable(name: "hFileDecOutput1", scope: !202, file: !2, line: 204, type: !18)
!238 = !DILocalVariable(name: "iFramesOutput", scope: !202, file: !2, line: 205, type: !18)
!239 = !DILocalVariable(name: "iFramesDecoded", scope: !202, file: !2, line: 205, type: !18)
!240 = !DILocalVariable(name: "InputParams", scope: !202, file: !2, line: 206, type: !109)
!241 = distinct !DIAssignID()
!242 = !DILocation(line: 0, scope: !202)
!243 = distinct !DIAssignID()
!244 = !DILocation(line: 203, column: 3, scope: !202)
!245 = !DILocation(line: 206, column: 3, scope: !202)
!246 = !DILocalVariable(name: "p_Inp", arg: 1, scope: !247, file: !2, line: 32, type: !250)
!247 = distinct !DISubprogram(name: "Configure", scope: !2, file: !2, line: 32, type: !248, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !251)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !250, !18, !205}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!251 = !{!246, !252, !253}
!252 = !DILocalVariable(name: "ac", arg: 2, scope: !247, file: !2, line: 32, type: !18)
!253 = !DILocalVariable(name: "av", arg: 3, scope: !247, file: !2, line: 32, type: !205)
!254 = !DILocation(line: 0, scope: !247, inlinedAt: !255)
!255 = distinct !DILocation(line: 216, column: 3, scope: !202)
!256 = !DILocation(line: 36, column: 3, scope: !247, inlinedAt: !255)
!257 = distinct !DIAssignID()
!258 = !DILocation(line: 37, column: 3, scope: !247, inlinedAt: !255)
!259 = distinct !DIAssignID()
!260 = !DILocation(line: 38, column: 17, scope: !247, inlinedAt: !255)
!261 = !DILocation(line: 38, column: 3, scope: !247, inlinedAt: !255)
!262 = distinct !DIAssignID()
!263 = !DILocation(line: 39, column: 17, scope: !247, inlinedAt: !255)
!264 = !DILocation(line: 39, column: 3, scope: !247, inlinedAt: !255)
!265 = distinct !DIAssignID()
!266 = distinct !DIAssignID()
!267 = !DILocation(line: 43, column: 10, scope: !247, inlinedAt: !255)
!268 = !DILocation(line: 43, column: 19, scope: !247, inlinedAt: !255)
!269 = distinct !DIAssignID()
!270 = !DILocation(line: 44, column: 10, scope: !247, inlinedAt: !255)
!271 = distinct !DIAssignID()
!272 = !DILocation(line: 55, column: 10, scope: !247, inlinedAt: !255)
!273 = !DILocation(line: 55, column: 18, scope: !247, inlinedAt: !255)
!274 = distinct !DIAssignID()
!275 = !DILocation(line: 58, column: 10, scope: !247, inlinedAt: !255)
!276 = !DILocation(line: 58, column: 22, scope: !247, inlinedAt: !255)
!277 = distinct !DIAssignID()
!278 = !DILocation(line: 59, column: 10, scope: !247, inlinedAt: !255)
!279 = !DILocation(line: 59, column: 18, scope: !247, inlinedAt: !255)
!280 = distinct !DIAssignID()
!281 = !DILocation(line: 61, column: 3, scope: !247, inlinedAt: !255)
!282 = !DILocation(line: 63, column: 11, scope: !247, inlinedAt: !255)
!283 = !DILocation(line: 63, column: 3, scope: !247, inlinedAt: !255)
!284 = !DILocation(line: 65, column: 14, scope: !285, inlinedAt: !255)
!285 = distinct !DILexicalBlock(scope: !247, file: !2, line: 65, column: 6)
!286 = !DILocation(line: 65, column: 7, scope: !285, inlinedAt: !255)
!287 = !DILocation(line: 65, column: 6, scope: !247, inlinedAt: !255)
!288 = !DILocation(line: 67, column: 13, scope: !289, inlinedAt: !255)
!289 = distinct !DILexicalBlock(scope: !285, file: !2, line: 66, column: 3)
!290 = !DILocation(line: 67, column: 5, scope: !289, inlinedAt: !255)
!291 = !DILocation(line: 68, column: 13, scope: !289, inlinedAt: !255)
!292 = !DILocation(line: 68, column: 5, scope: !289, inlinedAt: !255)
!293 = !DILocation(line: 69, column: 13, scope: !289, inlinedAt: !255)
!294 = !DILocation(line: 69, column: 5, scope: !289, inlinedAt: !255)
!295 = !DILocation(line: 71, column: 13, scope: !289, inlinedAt: !255)
!296 = !DILocation(line: 71, column: 5, scope: !289, inlinedAt: !255)
!297 = !DILocation(line: 73, column: 13, scope: !289, inlinedAt: !255)
!298 = !DILocation(line: 73, column: 5, scope: !289, inlinedAt: !255)
!299 = !DILocation(line: 82, column: 3, scope: !289, inlinedAt: !255)
!300 = !DILocation(line: 84, column: 15, scope: !301, inlinedAt: !255)
!301 = distinct !DILexicalBlock(scope: !247, file: !2, line: 84, column: 7)
!302 = !DILocation(line: 84, column: 8, scope: !301, inlinedAt: !255)
!303 = !DILocation(line: 84, column: 7, scope: !247, inlinedAt: !255)
!304 = !DILocation(line: 86, column: 13, scope: !305, inlinedAt: !255)
!305 = distinct !DILexicalBlock(scope: !301, file: !2, line: 85, column: 3)
!306 = !DILocation(line: 86, column: 5, scope: !305, inlinedAt: !255)
!307 = !DILocation(line: 87, column: 13, scope: !305, inlinedAt: !255)
!308 = !DILocation(line: 87, column: 5, scope: !305, inlinedAt: !255)
!309 = !DILocation(line: 88, column: 13, scope: !305, inlinedAt: !255)
!310 = !DILocation(line: 88, column: 5, scope: !305, inlinedAt: !255)
!311 = !DILocation(line: 89, column: 13, scope: !305, inlinedAt: !255)
!312 = !DILocation(line: 89, column: 5, scope: !305, inlinedAt: !255)
!313 = !DILocation(line: 90, column: 3, scope: !305, inlinedAt: !255)
!314 = !DILocation(line: 218, column: 10, scope: !202)
!315 = !DILocation(line: 219, column: 11, scope: !316)
!316 = distinct !DILexicalBlock(scope: !202, file: !2, line: 219, column: 6)
!317 = !DILocation(line: 219, column: 6, scope: !202)
!318 = !DILocation(line: 221, column: 13, scope: !319)
!319 = distinct !DILexicalBlock(scope: !316, file: !2, line: 220, column: 3)
!320 = !DILocation(line: 221, column: 5, scope: !319)
!321 = !DILocation(line: 222, column: 5, scope: !319)
!322 = !DILocation(line: 228, column: 12, scope: !323)
!323 = distinct !DILexicalBlock(scope: !202, file: !2, line: 227, column: 3)
!324 = !DILocation(line: 229, column: 22, scope: !325)
!325 = distinct !DILexicalBlock(scope: !323, file: !2, line: 229, column: 8)
!326 = !DILocation(line: 232, column: 38, scope: !327)
!327 = distinct !DILexicalBlock(scope: !325, file: !2, line: 230, column: 5)
!328 = !DILocalVariable(name: "pDecPic", arg: 1, scope: !329, file: !2, line: 98, type: !212)
!329 = distinct !DISubprogram(name: "WriteOneFrame", scope: !2, file: !2, line: 98, type: !330, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !332)
!330 = !DISubroutineType(types: !331)
!331 = !{!18, !212, !18, !18, !18}
!332 = !{!328, !333, !334, !335, !336, !337, !338, !341, !342, !343, !344, !345, !346, !347, !348, !349}
!333 = !DILocalVariable(name: "hFileOutput0", arg: 2, scope: !329, file: !2, line: 98, type: !18)
!334 = !DILocalVariable(name: "hFileOutput1", arg: 3, scope: !329, file: !2, line: 98, type: !18)
!335 = !DILocalVariable(name: "bOutputAllFrames", arg: 4, scope: !329, file: !2, line: 98, type: !18)
!336 = !DILocalVariable(name: "iOutputFrame", scope: !329, file: !2, line: 100, type: !18)
!337 = !DILocalVariable(name: "pPic", scope: !329, file: !2, line: 101, type: !212)
!338 = !DILocalVariable(name: "i", scope: !339, file: !2, line: 105, type: !18)
!339 = distinct !DILexicalBlock(scope: !340, file: !2, line: 104, column: 3)
!340 = distinct !DILexicalBlock(scope: !329, file: !2, line: 103, column: 6)
!341 = !DILocalVariable(name: "iWidth", scope: !339, file: !2, line: 105, type: !18)
!342 = !DILocalVariable(name: "iHeight", scope: !339, file: !2, line: 105, type: !18)
!343 = !DILocalVariable(name: "iStride", scope: !339, file: !2, line: 105, type: !18)
!344 = !DILocalVariable(name: "iWidthUV", scope: !339, file: !2, line: 105, type: !18)
!345 = !DILocalVariable(name: "iHeightUV", scope: !339, file: !2, line: 105, type: !18)
!346 = !DILocalVariable(name: "iStrideUV", scope: !339, file: !2, line: 105, type: !18)
!347 = !DILocalVariable(name: "pbBuf", scope: !339, file: !2, line: 106, type: !223)
!348 = !DILocalVariable(name: "hFileOutput", scope: !339, file: !2, line: 107, type: !18)
!349 = !DILocalVariable(name: "iPicSize", scope: !350, file: !2, line: 156, type: !18)
!350 = distinct !DILexicalBlock(scope: !351, file: !2, line: 155, column: 9)
!351 = distinct !DILexicalBlock(scope: !352, file: !2, line: 154, column: 12)
!352 = distinct !DILexicalBlock(scope: !353, file: !2, line: 152, column: 7)
!353 = distinct !DILexicalBlock(scope: !354, file: !2, line: 151, column: 10)
!354 = distinct !DILexicalBlock(scope: !339, file: !2, line: 124, column: 5)
!355 = !DILocation(line: 0, scope: !329, inlinedAt: !356)
!356 = distinct !DILocation(line: 232, column: 24, scope: !327)
!357 = !DILocation(line: 103, column: 6, scope: !340, inlinedAt: !356)
!358 = !DILocation(line: 103, column: 11, scope: !340, inlinedAt: !356)
!359 = !DILocation(line: 103, column: 23, scope: !340, inlinedAt: !356)
!360 = !DILocation(line: 103, column: 40, scope: !340, inlinedAt: !356)
!361 = !DILocation(line: 103, scope: !340, inlinedAt: !356)
!362 = !DILocation(line: 103, column: 45, scope: !340, inlinedAt: !356)
!363 = !DILocation(line: 103, column: 60, scope: !340, inlinedAt: !356)
!364 = !DILocation(line: 103, column: 65, scope: !340, inlinedAt: !356)
!365 = !DILocation(line: 103, column: 113, scope: !340, inlinedAt: !356)
!366 = !DILocation(line: 103, column: 6, scope: !329, inlinedAt: !356)
!367 = !DILocation(line: 0, scope: !339, inlinedAt: !356)
!368 = !DILocation(line: 182, column: 20, scope: !354, inlinedAt: !356)
!369 = !DILocation(line: 191, column: 3, scope: !329, inlinedAt: !356)
!370 = !DILocation(line: 238, column: 15, scope: !371)
!371 = distinct !DILexicalBlock(scope: !325, file: !2, line: 236, column: 5)
!372 = !DILocation(line: 238, column: 7, scope: !371)
!373 = !DILocation(line: 240, column: 32, scope: !202)
!374 = !DILocation(line: 233, column: 21, scope: !327)
!375 = !DILocation(line: 240, column: 37, scope: !202)
!376 = !DILocation(line: 240, column: 44, scope: !202)
!377 = !DILocation(line: 240, column: 51, scope: !202)
!378 = !DILocation(line: 240, column: 61, scope: !202)
!379 = !DILocation(line: 240, column: 66, scope: !202)
!380 = distinct !{!380, !381, !382}
!381 = !DILocation(line: 226, column: 3, scope: !202)
!382 = !DILocation(line: 240, column: 111, scope: !202)
!383 = !DILocation(line: 242, column: 10, scope: !202)
!384 = !DILocation(line: 243, column: 34, scope: !202)
!385 = !DILocation(line: 0, scope: !329, inlinedAt: !386)
!386 = distinct !DILocation(line: 243, column: 20, scope: !202)
!387 = !DILocation(line: 103, column: 6, scope: !340, inlinedAt: !386)
!388 = !DILocation(line: 103, column: 11, scope: !340, inlinedAt: !386)
!389 = !DILocation(line: 103, column: 23, scope: !340, inlinedAt: !386)
!390 = !DILocation(line: 103, column: 40, scope: !340, inlinedAt: !386)
!391 = !DILocation(line: 103, scope: !340, inlinedAt: !386)
!392 = !DILocation(line: 103, column: 45, scope: !340, inlinedAt: !386)
!393 = !DILocation(line: 103, column: 60, scope: !340, inlinedAt: !386)
!394 = !DILocation(line: 103, column: 65, scope: !340, inlinedAt: !386)
!395 = !DILocation(line: 103, column: 113, scope: !340, inlinedAt: !386)
!396 = !DILocation(line: 103, column: 6, scope: !329, inlinedAt: !386)
!397 = !DILocation(line: 123, column: 5, scope: !339, inlinedAt: !386)
!398 = !DILocation(line: 0, scope: !339, inlinedAt: !386)
!399 = !DILocation(line: 182, column: 20, scope: !354, inlinedAt: !386)
!400 = !DILocation(line: 183, column: 20, scope: !354, inlinedAt: !386)
!401 = !DILocation(line: 184, column: 17, scope: !339, inlinedAt: !386)
!402 = !DILocation(line: 184, column: 25, scope: !339, inlinedAt: !386)
!403 = !DILocation(line: 184, column: 34, scope: !339, inlinedAt: !386)
!404 = !DILocation(line: 184, column: 28, scope: !339, inlinedAt: !386)
!405 = !DILocation(line: 184, column: 41, scope: !339, inlinedAt: !386)
!406 = distinct !{!406, !397, !407}
!407 = !DILocation(line: 184, column: 60, scope: !339, inlinedAt: !386)
!408 = !DILocation(line: 244, column: 10, scope: !202)
!409 = !DILocation(line: 258, column: 3, scope: !202)
!410 = !DILocation(line: 259, column: 1, scope: !202)
!411 = !DISubprogram(name: "OpenDecoder", scope: !41, file: !41, line: 45, type: !412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!412 = !DISubroutineType(types: !413)
!413 = !{!18, !250}
!414 = !DISubprogram(name: "fprintf", scope: !415, file: !415, line: 350, type: !416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!415 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!416 = !DISubroutineType(types: !417)
!417 = !{!18, !418, !478, null}
!418 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !421, line: 7, baseType: !422)
!421 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !423, line: 49, size: 1728, elements: !424)
!423 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!424 = !{!425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !440, !442, !443, !444, !448, !450, !452, !456, !459, !461, !464, !467, !468, !469, !473, !474}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !422, file: !423, line: 51, baseType: !18, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !422, file: !423, line: 54, baseType: !206, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !422, file: !423, line: 55, baseType: !206, size: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !422, file: !423, line: 56, baseType: !206, size: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !422, file: !423, line: 57, baseType: !206, size: 64, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !422, file: !423, line: 58, baseType: !206, size: 64, offset: 320)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !422, file: !423, line: 59, baseType: !206, size: 64, offset: 384)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !422, file: !423, line: 60, baseType: !206, size: 64, offset: 448)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !422, file: !423, line: 61, baseType: !206, size: 64, offset: 512)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !422, file: !423, line: 64, baseType: !206, size: 64, offset: 576)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !422, file: !423, line: 65, baseType: !206, size: 64, offset: 640)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !422, file: !423, line: 66, baseType: !206, size: 64, offset: 704)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !422, file: !423, line: 68, baseType: !438, size: 64, offset: 768)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !423, line: 36, flags: DIFlagFwdDecl)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !422, file: !423, line: 70, baseType: !441, size: 64, offset: 832)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !422, file: !423, line: 72, baseType: !18, size: 32, offset: 896)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !422, file: !423, line: 73, baseType: !18, size: 32, offset: 928)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !422, file: !423, line: 74, baseType: !445, size: 64, offset: 960)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !446, line: 152, baseType: !447)
!446 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!447 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !422, file: !423, line: 77, baseType: !449, size: 16, offset: 1024)
!449 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !422, file: !423, line: 78, baseType: !451, size: 8, offset: 1040)
!451 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !422, file: !423, line: 79, baseType: !453, size: 8, offset: 1048)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 1)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !422, file: !423, line: 81, baseType: !457, size: 64, offset: 1088)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !423, line: 43, baseType: null)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !422, file: !423, line: 89, baseType: !460, size: 64, offset: 1152)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !446, line: 153, baseType: !447)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !422, file: !423, line: 91, baseType: !462, size: 64, offset: 1216)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !423, line: 37, flags: DIFlagFwdDecl)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !422, file: !423, line: 92, baseType: !465, size: 64, offset: 1280)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !423, line: 38, flags: DIFlagFwdDecl)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !422, file: !423, line: 93, baseType: !441, size: 64, offset: 1344)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !422, file: !423, line: 94, baseType: !58, size: 64, offset: 1408)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !422, file: !423, line: 95, baseType: !470, size: 64, offset: 1472)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !471, line: 18, baseType: !472)
!471 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!472 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !422, file: !423, line: 96, baseType: !18, size: 32, offset: 1536)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !422, file: !423, line: 98, baseType: !475, size: 160, offset: 1568)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !476)
!476 = !{!477}
!477 = !DISubrange(count: 20)
!478 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!481 = !DISubprogram(name: "DecodeOneFrame", scope: !41, file: !41, line: 46, type: !482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!482 = !DISubroutineType(types: !483)
!483 = !{!18, !484}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!485 = !DISubprogram(name: "FinitDecoder", scope: !41, file: !41, line: 47, type: !482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!486 = !DISubprogram(name: "CloseDecoder", scope: !41, file: !41, line: 48, type: !487, spFlags: DISPFlagOptimized)
!487 = !DISubroutineType(types: !488)
!488 = !{!18}
!489 = !DISubprogram(name: "ParseCommand", scope: !108, file: !108, line: 61, type: !248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
