; ModuleID = 'ldecod_src/decoder_test.c'
source_filename = "ldecod_src/decoder_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inp_par = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, i32, i32, i32, i32, %struct.frame_format, %struct.frame_format, i32, i32, %struct.video_data_file, %struct.video_data_file, %struct.video_data_file, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.video_data_file = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, %struct.frame_format, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [28 x i8] c"Open encoder failed: 0x%x!\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Error in decoding process: 0x%x\0A\00", align 1
@p_Dec = external local_unnamed_addr global ptr, align 8
@cfgparams = dso_local local_unnamed_addr global %struct.inp_par zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"test.264\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"test_dec.yuv\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"test_rec.yuv\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [70 x i8] c"----------------------------- JM %s %s -----------------------------\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"17.1\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"(FRExt)\00", align 1
@.str.8 = private unnamed_addr constant [76 x i8] c"--------------------------------------------------------------------------\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c" Input H.264 bitstream                  : %s \0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c" Output decoded YUV                     : %s \0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c" Input reference file                   : %s \0A\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"POC must = frame# or field# for SNRs to be correct\0A\00", align 1
@.str.13 = private unnamed_addr constant [76 x i8] c"  Frame          POC  Pic#   QP    SnrY     SnrU     SnrV   Y:U:V Time(ms)\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @main(i32 noundef %argc, ptr noundef %argv) local_unnamed_addr #0 {
entry:
  %pDecPicList = alloca ptr, align 8
  %InputParams = alloca %struct.inp_par, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pDecPicList) #7
  call void @llvm.lifetime.start.p0(i64 4016, ptr nonnull %InputParams) #7
  %0 = getelementptr inbounds i8, ptr %InputParams, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4007) %0, i8 0, i64 4007, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %InputParams, ptr noundef nonnull align 1 dereferenceable(9) @.str.2, i64 9, i1 false) #7
  %outfile.i = getelementptr inbounds i8, ptr %InputParams, i64 255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %outfile.i, ptr noundef nonnull align 1 dereferenceable(13) @.str.3, i64 13, i1 false) #7
  %reffile.i = getelementptr inbounds i8, ptr %InputParams, i64 510
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(13) %reffile.i, ptr noundef nonnull align 1 dereferenceable(13) @.str.4, i64 13, i1 false) #7
  %poc_scale.i = getelementptr inbounds i8, ptr %InputParams, i64 776
  store i32 2, ptr %poc_scale.i, align 8
  %silent.i = getelementptr inbounds i8, ptr %InputParams, i64 784
  %write_uv.i = getelementptr inbounds i8, ptr %InputParams, i64 780
  store i32 1, ptr %write_uv.i, align 4
  %ref_poc_gap.i = getelementptr inbounds i8, ptr %InputParams, i64 3984
  store i32 2, ptr %ref_poc_gap.i, align 8
  %poc_gap.i = getelementptr inbounds i8, ptr %InputParams, i64 3988
  store i32 2, ptr %poc_gap.i, align 4
  call void @ParseCommand(ptr noundef nonnull %InputParams, i32 noundef %argc, ptr noundef %argv) #7
  %1 = load ptr, ptr @stdout, align 8
  %call5.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #7
  %bDisplayDecParams.i = getelementptr inbounds i8, ptr %InputParams, i64 4012
  %2 = load i32, ptr %bDisplayDecParams.i, align 4
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %3 = load ptr, ptr @stdout, align 8
  %4 = call i64 @fwrite(ptr nonnull @.str.8, i64 75, i64 1, ptr %3)
  %5 = load ptr, ptr @stdout, align 8
  %call9.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.9, ptr noundef nonnull %InputParams) #7
  %6 = load ptr, ptr @stdout, align 8
  %call12.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.10, ptr noundef nonnull %outfile.i) #7
  %7 = load ptr, ptr @stdout, align 8
  %call15.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.11, ptr noundef nonnull %reffile.i) #7
  %8 = load ptr, ptr @stdout, align 8
  %9 = call i64 @fwrite(ptr nonnull @.str.8, i64 75, i64 1, ptr %8)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry
  %10 = load i32, ptr %silent.i, align 8
  %tobool18.not.i = icmp eq i32 %10, 0
  br i1 %tobool18.not.i, label %if.then19.i, label %Configure.exit

if.then19.i:                                      ; preds = %if.end.i
  %11 = load ptr, ptr @stdout, align 8
  %12 = call i64 @fwrite(ptr nonnull @.str.12, i64 51, i64 1, ptr %11)
  %13 = load ptr, ptr @stdout, align 8
  %14 = call i64 @fwrite(ptr nonnull @.str.8, i64 75, i64 1, ptr %13)
  %15 = load ptr, ptr @stdout, align 8
  %16 = call i64 @fwrite(ptr nonnull @.str.13, i64 75, i64 1, ptr %15)
  %17 = load ptr, ptr @stdout, align 8
  %18 = call i64 @fwrite(ptr nonnull @.str.8, i64 75, i64 1, ptr %17)
  br label %Configure.exit

Configure.exit:                                   ; preds = %if.end.i, %if.then19.i
  %call = call i32 @OpenDecoder(ptr noundef nonnull %InputParams) #7
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %do.body, label %if.then

if.then:                                          ; preds = %Configure.exit
  %19 = load ptr, ptr @stderr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str, i32 noundef %call) #8
  br label %cleanup

do.body:                                          ; preds = %Configure.exit, %land.rhs
  %iFramesDecoded.0 = phi i32 [ %inc, %land.rhs ], [ 0, %Configure.exit ]
  %call2 = call i32 @DecodeOneFrame(ptr noundef nonnull %pDecPicList) #7
  %cmp4 = icmp eq i32 %call2, 0
  %or.cond = icmp ult i32 %call2, 2
  br i1 %or.cond, label %if.then5, label %do.cond.thread

if.then5:                                         ; preds = %do.body
  %20 = load ptr, ptr %pDecPicList, align 8
  %tobool.not.i46 = icmp eq ptr %20, null
  br i1 %tobool.not.i46, label %do.cond, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then5
  %iYUVStorageFormat.i = getelementptr inbounds i8, ptr %20, i64 16
  %21 = load i32, ptr %iYUVStorageFormat.i, align 8
  %cmp.i = icmp eq i32 %21, 2
  %22 = load i32, ptr %20, align 8
  br i1 %cmp.i, label %land.lhs.true1.i, label %land.lhs.true5.i

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %cmp2.i = icmp eq i32 %22, 3
  br i1 %cmp2.i, label %if.then.i47, label %do.cond

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %cmp7.i = icmp eq i32 %22, 1
  br i1 %cmp7.i, label %if.then.i47, label %do.cond

if.then.i47:                                      ; preds = %land.lhs.true5.i, %land.lhs.true1.i
  store i32 0, ptr %20, align 8
  br label %do.cond

do.cond.thread:                                   ; preds = %do.body
  %23 = load ptr, ptr @stderr, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.1, i32 noundef %call2) #8
  br label %do.end

do.cond:                                          ; preds = %if.then.i47, %land.lhs.true5.i, %land.lhs.true1.i, %if.then5
  br i1 %cmp4, label %land.rhs, label %do.end

land.rhs:                                         ; preds = %do.cond
  %inc = add nuw nsw i32 %iFramesDecoded.0, 1
  %24 = load ptr, ptr @p_Dec, align 8
  %25 = load ptr, ptr %24, align 8
  %iDecFrmNum = getelementptr inbounds i8, ptr %25, i64 4008
  %26 = load i32, ptr %iDecFrmNum, align 8
  %cmp10 = icmp eq i32 %26, 0
  %cmp13 = icmp slt i32 %inc, %26
  %or.cond45 = select i1 %cmp10, i1 true, i1 %cmp13
  br i1 %or.cond45, label %do.body, label %do.end

do.end:                                           ; preds = %land.rhs, %do.cond, %do.cond.thread
  %call14 = call i32 @FinitDecoder(ptr noundef nonnull %pDecPicList) #7
  %27 = load ptr, ptr %pDecPicList, align 8
  %tobool.not.i48 = icmp eq ptr %27, null
  br i1 %tobool.not.i48, label %WriteOneFrame.exit57, label %land.lhs.true.i49

land.lhs.true.i49:                                ; preds = %do.end
  %iYUVStorageFormat.i50 = getelementptr inbounds i8, ptr %27, i64 16
  %28 = load i32, ptr %iYUVStorageFormat.i50, align 8
  %cmp.i51 = icmp eq i32 %28, 2
  %29 = load i32, ptr %27, align 8
  br i1 %cmp.i51, label %land.lhs.true1.i55, label %land.lhs.true5.i52

land.lhs.true1.i55:                               ; preds = %land.lhs.true.i49
  %cmp2.i56 = icmp eq i32 %29, 3
  br i1 %cmp2.i56, label %do.body.i.preheader, label %WriteOneFrame.exit57

land.lhs.true5.i52:                               ; preds = %land.lhs.true.i49
  %cmp7.i53 = icmp eq i32 %29, 1
  br i1 %cmp7.i53, label %do.body.i.preheader, label %WriteOneFrame.exit57

do.body.i.preheader:                              ; preds = %land.lhs.true5.i52, %land.lhs.true1.i55
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.preheader, %land.lhs.true141.i
  %pPic.0.i = phi ptr [ %30, %land.lhs.true141.i ], [ %27, %do.body.i.preheader ]
  store i32 0, ptr %pPic.0.i, align 8
  %pNext.i = getelementptr inbounds i8, ptr %pPic.0.i, i64 72
  %30 = load ptr, ptr %pNext.i, align 8
  %cmp139.not.i = icmp eq ptr %30, null
  br i1 %cmp139.not.i, label %WriteOneFrame.exit57, label %land.lhs.true141.i

land.lhs.true141.i:                               ; preds = %do.body.i
  %31 = load i32, ptr %30, align 8
  %tobool143.not.i = icmp eq i32 %31, 0
  br i1 %tobool143.not.i, label %WriteOneFrame.exit57, label %do.body.i

WriteOneFrame.exit57:                             ; preds = %do.body.i, %land.lhs.true141.i, %do.end, %land.lhs.true1.i55, %land.lhs.true5.i52
  %call17 = call i32 (...) @CloseDecoder() #7
  br label %cleanup

cleanup:                                          ; preds = %WriteOneFrame.exit57, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %WriteOneFrame.exit57 ]
  call void @llvm.lifetime.end.p0(i64 4016, ptr nonnull %InputParams) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pDecPicList) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @OpenDecoder(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare i32 @DecodeOneFrame(ptr noundef) local_unnamed_addr #2

declare i32 @FinitDecoder(ptr noundef) local_unnamed_addr #2

declare i32 @CloseDecoder(...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare void @ParseCommand(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
