; ModuleID = 'ldecod_src/configfile.c'
source_filename = "ldecod_src/configfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inp_par = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, i32, i32, i32, i32, %struct.frame_format, %struct.frame_format, i32, i32, %struct.video_data_file, %struct.video_data_file, %struct.video_data_file, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.video_data_file = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, %struct.frame_format, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.Mapping = type { ptr, ptr, i32, double, i32, double, double, i32 }

@.str = private unnamed_addr constant [10 x i8] c"InputFile\00", align 1, !dbg !0
@cfgparams = dso_local global %struct.inp_par zeroinitializer, align 8, !dbg !7
@.str.1 = private unnamed_addr constant [11 x i8] c"OutputFile\00", align 1, !dbg !39
@.str.2 = private unnamed_addr constant [8 x i8] c"RefFile\00", align 1, !dbg !44
@.str.3 = private unnamed_addr constant [8 x i8] c"WriteUV\00", align 1, !dbg !49
@.str.4 = private unnamed_addr constant [11 x i8] c"FileFormat\00", align 1, !dbg !51
@.str.5 = private unnamed_addr constant [10 x i8] c"RefOffset\00", align 1, !dbg !53
@.str.6 = private unnamed_addr constant [9 x i8] c"POCScale\00", align 1, !dbg !55
@.str.7 = private unnamed_addr constant [17 x i8] c"DisplayDecParams\00", align 1, !dbg !60
@.str.8 = private unnamed_addr constant [12 x i8] c"ConcealMode\00", align 1, !dbg !65
@.str.9 = private unnamed_addr constant [10 x i8] c"RefPOCGap\00", align 1, !dbg !70
@.str.10 = private unnamed_addr constant [7 x i8] c"POCGap\00", align 1, !dbg !72
@.str.11 = private unnamed_addr constant [7 x i8] c"Silent\00", align 1, !dbg !77
@.str.12 = private unnamed_addr constant [23 x i8] c"IntraProfileDeblocking\00", align 1, !dbg !79
@.str.13 = private unnamed_addr constant [10 x i8] c"DecFrmNum\00", align 1, !dbg !84
@.str.14 = private unnamed_addr constant [16 x i8] c"DecodeAllLayers\00", align 1, !dbg !86
@Map = dso_local global [16 x %struct.Mapping] [%struct.Mapping { ptr @.str, ptr @cfgparams, i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00, i32 255 }, %struct.Mapping { ptr @.str.1, ptr getelementptr (i8, ptr @cfgparams, i64 255), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00, i32 255 }, %struct.Mapping { ptr @.str.2, ptr getelementptr (i8, ptr @cfgparams, i64 510), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00, i32 255 }, %struct.Mapping { ptr @.str.3, ptr getelementptr (i8, ptr @cfgparams, i64 780), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00, i32 0 }, %struct.Mapping { ptr @.str.4, ptr getelementptr (i8, ptr @cfgparams, i64 768), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00, i32 0 }, %struct.Mapping { ptr @.str.5, ptr getelementptr (i8, ptr @cfgparams, i64 772), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.560000e+02, i32 0 }, %struct.Mapping { ptr @.str.6, ptr getelementptr (i8, ptr @cfgparams, i64 776), i32 0, double 2.000000e+00, i32 1, double 1.000000e+00, double 1.000000e+01, i32 0 }, %struct.Mapping { ptr @.str.7, ptr getelementptr (i8, ptr @cfgparams, i64 4012), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00, i32 0 }, %struct.Mapping { ptr @.str.8, ptr getelementptr (i8, ptr @cfgparams, i64 3980), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00, i32 0 }, %struct.Mapping { ptr @.str.9, ptr getelementptr (i8, ptr @cfgparams, i64 3984), i32 0, double 2.000000e+00, i32 1, double 0.000000e+00, double 4.000000e+00, i32 0 }, %struct.Mapping { ptr @.str.10, ptr getelementptr (i8, ptr @cfgparams, i64 3988), i32 0, double 2.000000e+00, i32 1, double 0.000000e+00, double 4.000000e+00, i32 0 }, %struct.Mapping { ptr @.str.11, ptr getelementptr (i8, ptr @cfgparams, i64 784), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00, i32 0 }, %struct.Mapping { ptr @.str.12, ptr getelementptr (i8, ptr @cfgparams, i64 788), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00, i32 0 }, %struct.Mapping { ptr @.str.13, ptr getelementptr (i8, ptr @cfgparams, i64 4008), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00, i32 0 }, %struct.Mapping { ptr @.str.14, ptr getelementptr (i8, ptr @cfgparams, i64 3976), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00, i32 0 }, %struct.Mapping { ptr null, ptr null, i32 -1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00, i32 0 }], align 16, !dbg !91
@stderr = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [807 x i8] c"\0A   ldecod [-h] [-d defdec.cfg] {[-f curenc1.cfg]...[-f curencN.cfg]} {[-p EncParam1=EncValue1]..[-p EncParamM=EncValueM]}\0A\0A## Parameters\0A\0A## Options\0A   -h :  prints function usage\0A   -d :  use <defdec.cfg> as default file for parameter initializations.\0A         If not used then file defaults to encoder.cfg in local directory.\0A   -f :  read <curencM.cfg> for reseting selected encoder parameters.\0A         Multiple files could be used that set different parameters\0A   -p :  Set parameter <DecParamM> to <DecValueM>.\0A         See default decoder.cfg file for description of all parameters.\0A\0A## Examples of usage:\0A   ldecod\0A   ldecod  -h\0A   ldecod  -d default.cfg\0A   ldecod  -f curenc1.cfg\0A   ldecod  -f curenc1.cfg -p InputFile=\22e:\\data\\container_qcif_30.264\22 -p OutputFile=\22dec.yuv\22 -p RefFile=\22Rec.yuv\22\0A\00", align 1, !dbg !108
@.str.16 = private unnamed_addr constant [12 x i8] c"decoder.cfg\00", align 1, !dbg !113
@.str.22 = private unnamed_addr constant [5 x i8] c"null\00", align 1, !dbg !134
@.str.23 = private unnamed_addr constant [23 x i8] c"Parsing Configfile %s\0A\00", align 1, !dbg !139
@errortext = external global [300 x i8], align 16
@.str.27 = private unnamed_addr constant [22 x i8] c"Parsing Configfile %s\00", align 1, !dbg !150
@.str.38 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !dbg !175
@.str.39 = private unnamed_addr constant [5 x i8] c"-mpr\00", align 1, !dbg !177
@.str.40 = private unnamed_addr constant [5 x i8] c"-MPR\00", align 1, !dbg !179
@.str.43 = private unnamed_addr constant [19 x i8] c"Configure: content\00", align 1, !dbg !185
@.str.44 = private unnamed_addr constant [33 x i8] c"Parsing command line string '%s'\00", align 1, !dbg !190
@.str.45 = private unnamed_addr constant [79 x i8] c"Error in command line, ac %d, around string '%s', missing -f or -p parameters?\00", align 1, !dbg !195
@.str.46 = private unnamed_addr constant [19 x i8] c"Decoder Parameters\00", align 1, !dbg !200
@.str.47 = private unnamed_addr constant [42 x i8] c"init_conf: error reading from config file\00", align 1, !dbg !202
@str = private unnamed_addr constant [30 x i8] c"Setting Default Parameters...\00", align 1
@str.48 = private unnamed_addr constant [14 x i8] c"JM 17 (FRExt)\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @JMDecHelpExit() local_unnamed_addr #0 !dbg !297 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !dbg !300
  %1 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 806, i64 1, ptr %0) #12, !dbg !301
  tail call void @exit(i32 noundef -1) #13, !dbg !302
  unreachable, !dbg !302
}

; Function Attrs: noreturn nounwind
declare !dbg !303 void @exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ParseCommand(ptr noundef %p_Inp, i32 noundef %ac, ptr nocapture noundef readonly %av) local_unnamed_addr #2 !dbg !307 {
entry:
    #dbg_value(ptr %p_Inp, !313, !DIExpression(), !334)
    #dbg_value(i32 %ac, !314, !DIExpression(), !334)
    #dbg_value(ptr %av, !315, !DIExpression(), !334)
    #dbg_value(ptr null, !316, !DIExpression(), !334)
    #dbg_value(ptr @.str.16, !320, !DIExpression(), !334)
  %cmp = icmp eq i32 %ac, 2, !dbg !335
  br i1 %cmp, label %if.then, label %if.end9, !dbg !337

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds i8, ptr %av, i64 8, !dbg !338
  %0 = load ptr, ptr %arrayidx, align 8, !dbg !338
  %1 = load i8, ptr %0, align 1
  %.not = icmp eq i8 %1, 45
  br i1 %.not, label %if.then.tail, label %if.end9

if.then.tail:                                     ; preds = %if.then
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 118, !dbg !341
  br i1 %4, label %if.then2, label %if.end.tail, !dbg !342

if.then2:                                         ; preds = %if.then.tail
  %puts385 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.48), !dbg !343
  tail call void @exit(i32 noundef -1) #13, !dbg !345
  unreachable, !dbg !345

if.end.tail:                                      ; preds = %if.then.tail
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 104, !dbg !346
  br i1 %7, label %if.then7, label %if.end9, !dbg !348

if.then7:                                         ; preds = %if.end.tail
  %8 = load ptr, ptr @stderr, align 8, !dbg !349
  %9 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 806, i64 1, ptr %8) #12, !dbg !352
  tail call void @exit(i32 noundef -1) #13, !dbg !353
  unreachable, !dbg !353

if.end9:                                          ; preds = %if.then, %if.end.tail, %entry
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4016) @cfgparams, i8 0, i64 4016, i1 false), !dbg !354
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str), !dbg !355
  %call11 = tail call i32 @InitParams(ptr noundef nonnull @Map) #14, !dbg !356
    #dbg_value(i32 1, !317, !DIExpression(), !334)
  %cmp12 = icmp sgt i32 %ac, 2, !dbg !357
  br i1 %cmp12, label %if.then13, label %if.then31, !dbg !359

if.then13:                                        ; preds = %if.end9
  %arrayidx14 = getelementptr inbounds i8, ptr %av, i64 8, !dbg !360
  %10 = load ptr, ptr %arrayidx14, align 8, !dbg !360
  %11 = load i8, ptr %10, align 1
  %.not463 = icmp eq i8 %11, 45
  br i1 %.not463, label %if.then13.tail, label %if.then31

if.then13.tail:                                   ; preds = %if.then13
  %12 = getelementptr inbounds i8, ptr %10, i64 1
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 100, !dbg !363
  br i1 %14, label %if.then17, label %if.end24.tail, !dbg !364

if.then17:                                        ; preds = %if.then13.tail
  %arrayidx18 = getelementptr inbounds i8, ptr %av, i64 16, !dbg !365
  %15 = load ptr, ptr %arrayidx18, align 8, !dbg !365
  %call19 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(5) @.str.22, i64 noundef 4) #15, !dbg !368
  %cmp20 = icmp eq i32 %call19, 0, !dbg !369
  %. = select i1 %cmp20, ptr null, ptr %15
    #dbg_value(ptr %., !320, !DIExpression(), !334)
    #dbg_value(i32 3, !317, !DIExpression(), !334)
  br label %if.end24.tail, !dbg !370

if.end24.tail:                                    ; preds = %if.then17, %if.then13.tail
  %CLcount.0.ph = phi i32 [ 1, %if.then13.tail ], [ 3, %if.then17 ]
  %filename.1.ph = phi ptr [ @.str.16, %if.then13.tail ], [ %., %if.then17 ]
    #dbg_value(ptr %filename.1.ph, !320, !DIExpression(), !334)
    #dbg_value(i32 %CLcount.0.ph, !317, !DIExpression(), !334)
  %16 = getelementptr inbounds i8, ptr %10, i64 1
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 104, !dbg !371
  br i1 %18, label %if.then28, label %if.end30, !dbg !373

if.then28:                                        ; preds = %if.end24.tail
  %19 = load ptr, ptr @stderr, align 8, !dbg !374
  %20 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 806, i64 1, ptr %19) #12, !dbg !377
  tail call void @exit(i32 noundef -1) #13, !dbg !378
  unreachable, !dbg !378

if.end30:                                         ; preds = %if.end24.tail
    #dbg_value(ptr %filename.1.ph, !320, !DIExpression(), !334)
    #dbg_value(i32 %CLcount.0.ph, !317, !DIExpression(), !334)
  %tobool.not = icmp eq ptr %filename.1.ph, null, !dbg !379
  br i1 %tobool.not, label %if.end39, label %if.then31, !dbg !381

if.then31:                                        ; preds = %if.then13, %if.end9, %if.end30
  %filename.2396 = phi ptr [ %filename.1.ph, %if.end30 ], [ @.str.16, %if.end9 ], [ @.str.16, %if.then13 ]
  %CLcount.1394 = phi i32 [ %CLcount.0.ph, %if.end30 ], [ 1, %if.end9 ], [ 1, %if.then13 ]
  %call32 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %filename.2396), !dbg !382
  %call33 = tail call ptr @GetConfigFileContent(ptr noundef nonnull %filename.2396) #14, !dbg !384
    #dbg_value(ptr %call33, !316, !DIExpression(), !334)
  %cmp34.not = icmp eq ptr %call33, null, !dbg !385
  br i1 %cmp34.not, label %if.end39, label %if.then35, !dbg !387

if.then35:                                        ; preds = %if.then31
  %call36 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call33) #15, !dbg !388
  %conv = trunc i64 %call36 to i32, !dbg !390
  tail call void @ParseContent(ptr noundef %p_Inp, ptr noundef nonnull @Map, ptr noundef nonnull %call33, i32 noundef %conv) #14, !dbg !391
  %putchar = tail call i32 @putchar(i32 10), !dbg !392
  tail call void @free(ptr noundef nonnull %call33) #14, !dbg !393
  br label %if.end39, !dbg !394

if.end39:                                         ; preds = %if.then31, %if.then35, %if.end30
  %CLcount.1395 = phi i32 [ %CLcount.1394, %if.then31 ], [ %CLcount.1394, %if.then35 ], [ %CLcount.0.ph, %if.end30 ]
    #dbg_value(i32 %CLcount.1395, !317, !DIExpression(), !334)
  %cmp40460 = icmp slt i32 %CLcount.1395, %ac, !dbg !395
  br i1 %cmp40460, label %while.body.lr.ph, label %while.end262, !dbg !396

while.body.lr.ph:                                 ; preds = %if.end39
  %DecodeAllLayers = getelementptr inbounds i8, ptr %p_Inp, i64 3976
  %iDecFrmNum = getelementptr inbounds i8, ptr %p_Inp, i64 4008
  %silent = getelementptr inbounds i8, ptr %p_Inp, i64 784
  %outfile = getelementptr inbounds i8, ptr %p_Inp, i64 255
  %reffile = getelementptr inbounds i8, ptr %p_Inp, i64 510
  br label %while.body, !dbg !396

while.body:                                       ; preds = %while.body.lr.ph, %if.end261
  %CLcount.2461 = phi i32 [ %CLcount.1395, %while.body.lr.ph ], [ %CLcount.4, %if.end261 ]
    #dbg_value(i32 %CLcount.2461, !317, !DIExpression(), !334)
  %idxprom = sext i32 %CLcount.2461 to i64, !dbg !397
  %arrayidx42 = getelementptr inbounds ptr, ptr %av, i64 %idxprom, !dbg !397
  %21 = load ptr, ptr %arrayidx42, align 8, !dbg !397
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = add nsw i32 %23, -45
  %.not465 = icmp eq i32 %24, 0
  br i1 %.not465, label %while.body.tail, label %lor.lhs.false150.tail

while.body.tail:                                  ; preds = %while.body
  %25 = getelementptr inbounds i8, ptr %21, i64 1
  %26 = load i8, ptr %25, align 1
  %cmp44 = icmp eq i8 %26, 104, !dbg !399
  br i1 %cmp44, label %if.then46, label %if.end47.tail.thread, !dbg !400

if.then46:                                        ; preds = %while.body.tail
  %27 = load ptr, ptr @stderr, align 8, !dbg !401
  %28 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 806, i64 1, ptr %27) #12, !dbg !404
  tail call void @exit(i32 noundef -1) #13, !dbg !405
  unreachable, !dbg !405

if.end47.tail.thread:                             ; preds = %while.body.tail
  %29 = getelementptr inbounds i8, ptr %21, i64 1
  %30 = load i8, ptr %29, align 1
  %cmp51504 = icmp eq i8 %30, 102, !dbg !406
  br i1 %cmp51504, label %if.then58, label %lor.lhs.false.tail.thread, !dbg !407

lor.lhs.false.tail.thread:                        ; preds = %if.end47.tail.thread
  %31 = getelementptr inbounds i8, ptr %21, i64 1
  %32 = load i8, ptr %31, align 1
  %cmp56505 = icmp eq i8 %32, 70, !dbg !408
  br i1 %cmp56505, label %if.then58, label %if.else74.tail.thread, !dbg !409

if.then58:                                        ; preds = %lor.lhs.false.tail.thread, %if.end47.tail.thread
  %arrayidx60 = getelementptr i8, ptr %arrayidx42, i64 8, !dbg !410
  %33 = load ptr, ptr %arrayidx60, align 8, !dbg !410
  %call61 = tail call ptr @GetConfigFileContent(ptr noundef %33) #14, !dbg !412
    #dbg_value(ptr %call61, !316, !DIExpression(), !334)
  %cmp62 = icmp eq ptr %call61, null, !dbg !413
  br i1 %cmp62, label %if.then64, label %if.end65, !dbg !415

if.then64:                                        ; preds = %if.then58
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 300) #14, !dbg !416
  br label %if.end65, !dbg !416

if.end65:                                         ; preds = %if.then64, %if.then58
  %34 = load ptr, ptr %arrayidx60, align 8, !dbg !417
  %call69 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef %34), !dbg !418
  %call70 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call61) #15, !dbg !419
  %conv71 = trunc i64 %call70 to i32, !dbg !420
  tail call void @ParseContent(ptr noundef %p_Inp, ptr noundef nonnull @Map, ptr noundef %call61, i32 noundef %conv71) #14, !dbg !421
  %putchar384 = tail call i32 @putchar(i32 10), !dbg !422
  tail call void @free(ptr noundef %call61) #14, !dbg !423
  %add73 = add nsw i32 %CLcount.2461, 2, !dbg !424
    #dbg_value(i32 %add73, !317, !DIExpression(), !334)
  br label %if.end261, !dbg !425

if.else74.tail.thread:                            ; preds = %lor.lhs.false.tail.thread
  %35 = getelementptr inbounds i8, ptr %21, i64 1
  %36 = load i8, ptr %35, align 1
  %cmp78506 = icmp eq i8 %36, 105, !dbg !426
  br i1 %cmp78506, label %if.then86, label %lor.lhs.false80.tail.thread, !dbg !427

lor.lhs.false80.tail.thread:                      ; preds = %if.else74.tail.thread
  %37 = getelementptr inbounds i8, ptr %21, i64 1
  %38 = load i8, ptr %37, align 1
  %cmp84507 = icmp eq i8 %38, 73, !dbg !428
  br i1 %cmp84507, label %if.then86, label %if.else92.tail.thread, !dbg !429

if.then86:                                        ; preds = %lor.lhs.false80.tail.thread, %if.else74.tail.thread
  %arrayidx89 = getelementptr i8, ptr %arrayidx42, i64 8, !dbg !430
  %39 = load ptr, ptr %arrayidx89, align 8, !dbg !430
  %call90 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %p_Inp, ptr noundef nonnull dereferenceable(1) %39, i64 noundef 255) #14, !dbg !432
  %add91 = add nsw i32 %CLcount.2461, 2, !dbg !433
    #dbg_value(i32 %add91, !317, !DIExpression(), !334)
  br label %if.end261, !dbg !434

if.else92.tail.thread:                            ; preds = %lor.lhs.false80.tail.thread
  %40 = getelementptr inbounds i8, ptr %21, i64 1
  %41 = load i8, ptr %40, align 1
  %cmp96508 = icmp eq i8 %41, 114, !dbg !435
  br i1 %cmp96508, label %if.then104, label %lor.lhs.false98.tail.thread, !dbg !436

lor.lhs.false98.tail.thread:                      ; preds = %if.else92.tail.thread
  %42 = getelementptr inbounds i8, ptr %21, i64 1
  %43 = load i8, ptr %42, align 1
  %cmp102509 = icmp eq i8 %43, 82, !dbg !437
  br i1 %cmp102509, label %if.then104, label %if.else111.tail.thread, !dbg !438

if.then104:                                       ; preds = %lor.lhs.false98.tail.thread, %if.else92.tail.thread
  %arrayidx108 = getelementptr i8, ptr %arrayidx42, i64 8, !dbg !439
  %44 = load ptr, ptr %arrayidx108, align 8, !dbg !439
  %call109 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %reffile, ptr noundef nonnull dereferenceable(1) %44, i64 noundef 255) #14, !dbg !441
  %add110 = add nsw i32 %CLcount.2461, 2, !dbg !442
    #dbg_value(i32 %add110, !317, !DIExpression(), !334)
  br label %if.end261, !dbg !443

if.else111.tail.thread:                           ; preds = %lor.lhs.false98.tail.thread
  %45 = getelementptr inbounds i8, ptr %21, i64 1
  %46 = load i8, ptr %45, align 1
  %cmp115510 = icmp eq i8 %46, 111, !dbg !444
  br i1 %cmp115510, label %if.then123, label %lor.lhs.false117.tail.thread, !dbg !445

lor.lhs.false117.tail.thread:                     ; preds = %if.else111.tail.thread
  %47 = getelementptr inbounds i8, ptr %21, i64 1
  %48 = load i8, ptr %47, align 1
  %cmp121511 = icmp eq i8 %48, 79, !dbg !446
  br i1 %cmp121511, label %if.then123, label %if.else130.tail.thread, !dbg !447

if.then123:                                       ; preds = %lor.lhs.false117.tail.thread, %if.else111.tail.thread
  %arrayidx127 = getelementptr i8, ptr %arrayidx42, i64 8, !dbg !448
  %49 = load ptr, ptr %arrayidx127, align 8, !dbg !448
  %call128 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %outfile, ptr noundef nonnull dereferenceable(1) %49, i64 noundef 255) #14, !dbg !450
  %add129 = add nsw i32 %CLcount.2461, 2, !dbg !451
    #dbg_value(i32 %add129, !317, !DIExpression(), !334)
  br label %if.end261, !dbg !452

if.else130.tail.thread:                           ; preds = %lor.lhs.false117.tail.thread
  %50 = getelementptr inbounds i8, ptr %21, i64 1
  %51 = load i8, ptr %50, align 1
  %cmp134512 = icmp eq i8 %51, 115, !dbg !453
  br i1 %cmp134512, label %if.then142, label %lor.lhs.false136.tail.thread, !dbg !454

lor.lhs.false136.tail.thread:                     ; preds = %if.else130.tail.thread
  %52 = getelementptr inbounds i8, ptr %21, i64 1
  %53 = load i8, ptr %52, align 1
  %cmp140513 = icmp eq i8 %53, 83, !dbg !455
  br i1 %cmp140513, label %if.then142, label %if.else144.tail.thread, !dbg !456

if.then142:                                       ; preds = %lor.lhs.false136.tail.thread, %if.else130.tail.thread
  store i32 1, ptr %silent, align 8, !dbg !457
  %add143 = add nsw i32 %CLcount.2461, 1, !dbg !459
    #dbg_value(i32 %add143, !317, !DIExpression(), !334)
  br label %if.end261, !dbg !460

if.else144.tail.thread:                           ; preds = %lor.lhs.false136.tail.thread
  %54 = getelementptr inbounds i8, ptr %21, i64 1
  %55 = load i8, ptr %54, align 1
  %cmp148514 = icmp eq i8 %55, 110, !dbg !461
  br i1 %cmp148514, label %if.then156, label %sub_1443, !dbg !462

sub_1443:                                         ; preds = %if.else144.tail.thread
  %56 = getelementptr inbounds i8, ptr %21, i64 1
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = add nsw i32 %58, -78
  br label %lor.lhs.false150.tail

lor.lhs.false150.tail:                            ; preds = %while.body, %sub_1443
  %60 = phi i32 [ %59, %sub_1443 ], [ %24, %while.body ]
  %cmp154 = icmp eq i32 %60, 0, !dbg !463
  br i1 %cmp154, label %if.then156, label %if.else162, !dbg !464

if.then156:                                       ; preds = %if.else144.tail.thread, %lor.lhs.false150.tail
  %arrayidx159 = getelementptr i8, ptr %arrayidx42, i64 8, !dbg !465
  %61 = load ptr, ptr %arrayidx159, align 8, !dbg !465
  %call160 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %61, ptr noundef nonnull @.str.38, ptr noundef nonnull %iDecFrmNum) #14, !dbg !467
    #dbg_value(i32 %call160, !468, !DIExpression(), !474)
    #dbg_value(i32 1, !473, !DIExpression(), !474)
  %cmp.not.i = icmp eq i32 %call160, 1, !dbg !476
  br i1 %cmp.not.i, label %conf_read_check.exit, label %if.then.i, !dbg !478

if.then.i:                                        ; preds = %if.then156
  tail call void @error(ptr noundef nonnull @.str.47, i32 noundef 500) #14, !dbg !479
  br label %conf_read_check.exit, !dbg !481

conf_read_check.exit:                             ; preds = %if.then156, %if.then.i
  %add161 = add nsw i32 %CLcount.2461, 2, !dbg !482
    #dbg_value(i32 %add161, !317, !DIExpression(), !334)
  br label %if.end261, !dbg !483

if.else162:                                       ; preds = %lor.lhs.false150.tail
  %call165 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(5) @.str.39, i64 noundef 4) #15, !dbg !484
  %cmp166 = icmp eq i32 %call165, 0, !dbg !485
  br i1 %cmp166, label %if.then174, label %lor.lhs.false168, !dbg !486

lor.lhs.false168:                                 ; preds = %if.else162
  %call171 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(5) @.str.40, i64 noundef 4) #15, !dbg !487
  %cmp172 = icmp eq i32 %call171, 0, !dbg !488
  br i1 %cmp172, label %if.then174, label %sub_0445, !dbg !489

if.then174:                                       ; preds = %lor.lhs.false168, %if.else162
  %arrayidx177 = getelementptr i8, ptr %arrayidx42, i64 8, !dbg !490
  %62 = load ptr, ptr %arrayidx177, align 8, !dbg !490
  %call178 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %62, ptr noundef nonnull @.str.38, ptr noundef nonnull %DecodeAllLayers) #14, !dbg !492
    #dbg_value(i32 %call178, !468, !DIExpression(), !493)
    #dbg_value(i32 1, !473, !DIExpression(), !493)
  %cmp.not.i388 = icmp eq i32 %call178, 1, !dbg !495
  br i1 %cmp.not.i388, label %conf_read_check.exit390, label %if.then.i389, !dbg !496

if.then.i389:                                     ; preds = %if.then174
  tail call void @error(ptr noundef nonnull @.str.47, i32 noundef 500) #14, !dbg !497
  br label %conf_read_check.exit390, !dbg !498

conf_read_check.exit390:                          ; preds = %if.then174, %if.then.i389
  %add179 = add nsw i32 %CLcount.2461, 2, !dbg !499
    #dbg_value(i32 %add179, !317, !DIExpression(), !334)
  br label %if.end261, !dbg !500

sub_0445:                                         ; preds = %lor.lhs.false168
  br i1 %.not465, label %if.else180.tail, label %lor.lhs.false186.tail

if.else180.tail:                                  ; preds = %sub_0445
  %63 = getelementptr inbounds i8, ptr %21, i64 1
  %64 = load i8, ptr %63, align 1
  %cmp184 = icmp eq i8 %64, 112, !dbg !501
  br i1 %cmp184, label %if.then192, label %sub_1449, !dbg !502

sub_1449:                                         ; preds = %if.else180.tail
  %65 = getelementptr inbounds i8, ptr %21, i64 1
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = add nsw i32 %67, -80
  br label %lor.lhs.false186.tail

lor.lhs.false186.tail:                            ; preds = %sub_0445, %sub_1449
  %69 = phi i32 [ %68, %sub_1449 ], [ %24, %sub_0445 ]
  %cmp190 = icmp eq i32 %69, 0, !dbg !503
  br i1 %cmp190, label %if.then192, label %if.else250, !dbg !504

if.then192:                                       ; preds = %lor.lhs.false186.tail, %if.else180.tail
  %inc = add nsw i32 %CLcount.2461, 1, !dbg !505
    #dbg_value(i32 %inc, !317, !DIExpression(), !334)
    #dbg_value(i32 0, !318, !DIExpression(), !334)
    #dbg_value(i32 %inc, !319, !DIExpression(), !334)
  %cmp194451 = icmp slt i32 %inc, %ac, !dbg !506
  br i1 %cmp194451, label %land.rhs.preheader, label %while.end, !dbg !507

land.rhs.preheader:                               ; preds = %if.then192
  %70 = sext i32 %inc to i64, !dbg !508
  br label %land.rhs, !dbg !508

land.rhs:                                         ; preds = %land.rhs.preheader, %while.body202
  %indvars.iv = phi i64 [ %70, %land.rhs.preheader ], [ %indvars.iv.next, %while.body202 ]
  %ContentLen.0452 = phi i32 [ 0, %land.rhs.preheader ], [ %add208, %while.body202 ]
    #dbg_value(i64 %indvars.iv, !319, !DIExpression(), !334)
    #dbg_value(i32 %ContentLen.0452, !318, !DIExpression(), !334)
  %arrayidx197 = getelementptr inbounds ptr, ptr %av, i64 %indvars.iv, !dbg !509
  %71 = load ptr, ptr %arrayidx197, align 8, !dbg !509
  %72 = load i8, ptr %71, align 1, !dbg !509
  %cmp200.not = icmp eq i8 %72, 45, !dbg !510
  br i1 %cmp200.not, label %while.end.loopexit.split.loop.exit516, label %while.body202, !dbg !508

while.body202:                                    ; preds = %land.rhs
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !511
    #dbg_value(i64 %indvars.iv.next, !319, !DIExpression(), !334)
  %call206 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %71) #15, !dbg !512
  %conv207 = trunc i64 %call206 to i32, !dbg !513
  %add208 = add nsw i32 %ContentLen.0452, %conv207, !dbg !514
    #dbg_value(i32 %add208, !318, !DIExpression(), !334)
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !506
  %exitcond.not = icmp eq i32 %lftr.wideiv, %ac, !dbg !506
  br i1 %exitcond.not, label %while.end, label %land.rhs, !dbg !507, !llvm.loop !515

while.end.loopexit.split.loop.exit516:            ; preds = %land.rhs
  %73 = trunc nsw i64 %indvars.iv to i32
  br label %while.end, !dbg !517

while.end:                                        ; preds = %while.body202, %while.end.loopexit.split.loop.exit516, %if.then192
  %ContentLen.0.lcssa = phi i32 [ 0, %if.then192 ], [ %ContentLen.0452, %while.end.loopexit.split.loop.exit516 ], [ %add208, %while.body202 ], !dbg !518
  %NumberParams.0.lcssa = phi i32 [ %inc, %if.then192 ], [ %73, %while.end.loopexit.split.loop.exit516 ], [ %ac, %while.body202 ], !dbg !518
  %add209 = add nsw i32 %ContentLen.0.lcssa, 1000, !dbg !517
    #dbg_value(i32 %add209, !318, !DIExpression(), !334)
  %conv210 = sext i32 %add209 to i64, !dbg !519
  %call211 = tail call noalias ptr @malloc(i64 noundef %conv210) #16, !dbg !521
    #dbg_value(ptr %call211, !316, !DIExpression(), !334)
  %cmp212 = icmp eq ptr %call211, null, !dbg !522
  br i1 %cmp212, label %if.then214, label %if.end215, !dbg !523

if.then214:                                       ; preds = %while.end
  tail call void @no_mem_exit(ptr noundef nonnull @.str.43) #14, !dbg !524
  br label %if.end215, !dbg !524

if.end215:                                        ; preds = %if.then214, %while.end
  store i8 0, ptr %call211, align 1, !dbg !525
    #dbg_value(i32 %inc, !317, !DIExpression(), !334)
  %cmp218457 = icmp slt i32 %inc, %NumberParams.0.lcssa, !dbg !526
  br i1 %cmp218457, label %while.body220.preheader, label %while.end245, !dbg !527

while.body220.preheader:                          ; preds = %if.end215
  %74 = sext i32 %inc to i64, !dbg !527
  br label %while.body220, !dbg !527

while.body220:                                    ; preds = %while.body220.preheader, %while.end243
  %indvars.iv481 = phi i64 [ %74, %while.body220.preheader ], [ %indvars.iv.next482, %while.end243 ]
    #dbg_value(i64 %indvars.iv481, !317, !DIExpression(), !334)
  %arrayidx222 = getelementptr inbounds ptr, ptr %av, i64 %indvars.iv481, !dbg !528
  %75 = load ptr, ptr %arrayidx222, align 8, !dbg !528
    #dbg_value(ptr %75, !321, !DIExpression(), !529)
  %call224 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call211) #15, !dbg !530
  %sext = shl i64 %call224, 32, !dbg !531
  %idxprom226 = ashr exact i64 %sext, 32, !dbg !531
  %arrayidx227 = getelementptr inbounds i8, ptr %call211, i64 %idxprom226, !dbg !531
    #dbg_value(ptr %arrayidx227, !333, !DIExpression(), !529)
  br label %while.cond228, !dbg !532

while.cond228:                                    ; preds = %if.end241, %while.body220
  %source.0 = phi ptr [ %75, %while.body220 ], [ %incdec.ptr242, %if.end241 ], !dbg !529
  %destin.0 = phi ptr [ %arrayidx227, %while.body220 ], [ %destin.1, %if.end241 ], !dbg !529
    #dbg_value(ptr %destin.0, !333, !DIExpression(), !529)
    #dbg_value(ptr %source.0, !321, !DIExpression(), !529)
  %76 = load i8, ptr %source.0, align 1, !dbg !533
  switch i8 %76, label %if.else239 [
    i8 0, label %while.end243
    i8 61, label %if.then236
  ], !dbg !532

if.then236:                                       ; preds = %while.cond228
  %incdec.ptr = getelementptr inbounds i8, ptr %destin.0, i64 1, !dbg !534
    #dbg_value(ptr %incdec.ptr, !333, !DIExpression(), !529)
  store i8 32, ptr %destin.0, align 1, !dbg !538
  %incdec.ptr237 = getelementptr inbounds i8, ptr %destin.0, i64 2, !dbg !539
    #dbg_value(ptr %incdec.ptr237, !333, !DIExpression(), !529)
  store i8 61, ptr %incdec.ptr, align 1, !dbg !540
  %incdec.ptr238 = getelementptr inbounds i8, ptr %destin.0, i64 3, !dbg !541
    #dbg_value(ptr %incdec.ptr238, !333, !DIExpression(), !529)
  store i8 32, ptr %incdec.ptr237, align 1, !dbg !542
  br label %if.end241, !dbg !543

if.else239:                                       ; preds = %while.cond228
  %incdec.ptr240 = getelementptr inbounds i8, ptr %destin.0, i64 1, !dbg !544
    #dbg_value(ptr %incdec.ptr240, !333, !DIExpression(), !529)
  store i8 %76, ptr %destin.0, align 1, !dbg !545
  br label %if.end241

if.end241:                                        ; preds = %if.else239, %if.then236
  %destin.1 = phi ptr [ %incdec.ptr238, %if.then236 ], [ %incdec.ptr240, %if.else239 ], !dbg !546
    #dbg_value(ptr %destin.1, !333, !DIExpression(), !529)
  %incdec.ptr242 = getelementptr inbounds i8, ptr %source.0, i64 1, !dbg !547
    #dbg_value(ptr %incdec.ptr242, !321, !DIExpression(), !529)
  br label %while.cond228, !dbg !532, !llvm.loop !548

while.end243:                                     ; preds = %while.cond228
  store i8 0, ptr %destin.0, align 1, !dbg !550
  %indvars.iv.next482 = add nsw i64 %indvars.iv481, 1, !dbg !551
    #dbg_value(i64 %indvars.iv.next482, !317, !DIExpression(), !334)
  %lftr.wideiv484 = trunc i64 %indvars.iv.next482 to i32, !dbg !526
  %exitcond485.not = icmp eq i32 %NumberParams.0.lcssa, %lftr.wideiv484, !dbg !526
  br i1 %exitcond485.not, label %while.end245, label %while.body220, !dbg !527, !llvm.loop !552

while.end245:                                     ; preds = %while.end243, %if.end215
  %CLcount.3.lcssa = phi i32 [ %inc, %if.end215 ], [ %NumberParams.0.lcssa, %while.end243 ], !dbg !518
  %call246 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, ptr noundef nonnull %call211), !dbg !554
  %call247 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call211) #15, !dbg !555
  %conv248 = trunc i64 %call247 to i32, !dbg !556
  tail call void @ParseContent(ptr noundef %p_Inp, ptr noundef nonnull @Map, ptr noundef nonnull %call211, i32 noundef %conv248) #14, !dbg !557
  tail call void @free(ptr noundef %call211) #14, !dbg !558
  %putchar383 = tail call i32 @putchar(i32 10), !dbg !559
  br label %if.end261, !dbg !560

if.else250:                                       ; preds = %lor.lhs.false186.tail
  %call253 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.45, i32 noundef %CLcount.2461, ptr noundef nonnull %21) #14, !dbg !561
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 300) #14, !dbg !563
  br label %if.end261

if.end261:                                        ; preds = %if.then86, %if.then123, %conf_read_check.exit, %while.end245, %if.else250, %conf_read_check.exit390, %if.then142, %if.then104, %if.end65
  %CLcount.4 = phi i32 [ %add73, %if.end65 ], [ %add91, %if.then86 ], [ %add110, %if.then104 ], [ %add129, %if.then123 ], [ %add143, %if.then142 ], [ %add161, %conf_read_check.exit ], [ %add179, %conf_read_check.exit390 ], [ %CLcount.3.lcssa, %while.end245 ], [ %CLcount.2461, %if.else250 ], !dbg !334
    #dbg_value(i32 %CLcount.4, !317, !DIExpression(), !334)
  %cmp40 = icmp slt i32 %CLcount.4, %ac, !dbg !395
  br i1 %cmp40, label %while.body, label %while.end262, !dbg !396, !llvm.loop !564

while.end262:                                     ; preds = %if.end261, %if.end39
  %putchar382 = tail call i32 @putchar(i32 10), !dbg !566
    #dbg_value(ptr undef, !567, !DIExpression(), !572)
  %call.i = tail call i32 @TestParams(ptr noundef nonnull @Map, ptr noundef null) #14, !dbg !574
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4016) @cfgparams, ptr noundef nonnull align 8 dereferenceable(4016) %p_Inp, i64 4016, i1 false), !dbg !575
  %enable_32_pulldown = getelementptr inbounds i8, ptr %p_Inp, i64 1068, !dbg !576
  store i32 0, ptr %enable_32_pulldown, align 4, !dbg !577
  %bDisplayDecParams = getelementptr inbounds i8, ptr %p_Inp, i64 4012, !dbg !578
  %77 = load i32, ptr %bDisplayDecParams, align 4, !dbg !578
  %tobool264.not = icmp eq i32 %77, 0, !dbg !580
  br i1 %tobool264.not, label %if.end267, label %if.then265, !dbg !581

if.then265:                                       ; preds = %while.end262
  %call266 = tail call i32 @DisplayParams(ptr noundef nonnull @Map, ptr noundef nonnull @.str.46) #14, !dbg !582
  br label %if.end267, !dbg !582

if.end267:                                        ; preds = %if.then265, %while.end262
  ret void, !dbg !583
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !584 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !593 noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare !dbg !598 i32 @InitParams(ptr noundef) local_unnamed_addr #6

declare !dbg !602 ptr @GetConfigFileContent(ptr noundef) local_unnamed_addr #6

declare !dbg !605 void @ParseContent(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !608 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !611 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

declare !dbg !614 void @error(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare !dbg !617 ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !621 noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !624 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

declare !dbg !627 void @no_mem_exit(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !631 noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

declare !dbg !634 i32 @DisplayParams(ptr noundef, ptr noundef) local_unnamed_addr #6

declare !dbg !637 i32 @TestParams(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #11

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nofree nounwind }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!289, !290, !291, !292, !293, !294, !295}
!llvm.ident = !{!296}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 30, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "ldecod_src/inc/configfile.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "23faa11f5f7f05b8e96bfb34b9b764b7")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "cfgparams", scope: !9, file: !2, line: 21, type: !207, isLocal: false, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !36, globals: !38, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "ldecod_src/configfile.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "4b1bea72b1693d3be1a9580da56d0eca")
!11 = !{!12, !21, !27}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 22, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "ldecod_src/inc/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "fd6ca9e1c707932f749220576db72b57")
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{!16, !17, !18, !19, !20}
!16 = !DIEnumerator(name: "CF_UNKNOWN", value: -1)
!17 = !DIEnumerator(name: "YUV400", value: 0)
!18 = !DIEnumerator(name: "YUV420", value: 1)
!19 = !DIEnumerator(name: "YUV422", value: 2)
!20 = !DIEnumerator(name: "YUV444", value: 3)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 15, baseType: !14, size: 32, elements: !22)
!22 = !{!23, !24, !25, !26}
!23 = !DIEnumerator(name: "CM_UNKNOWN", value: -1)
!24 = !DIEnumerator(name: "CM_YUV", value: 0)
!25 = !DIEnumerator(name: "CM_RGB", value: 1)
!26 = !DIEnumerator(name: "CM_XYZ", value: 2)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 25, baseType: !14, size: 32, elements: !29)
!28 = !DIFile(filename: "ldecod_src/inc/io_video.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1141c07f1801ad27d87214c419749431")
!29 = !{!30, !31, !32, !33, !34, !35}
!30 = !DIEnumerator(name: "VIDEO_UNKNOWN", value: -1)
!31 = !DIEnumerator(name: "VIDEO_YUV", value: 0)
!32 = !DIEnumerator(name: "VIDEO_RGB", value: 1)
!33 = !DIEnumerator(name: "VIDEO_XYZ", value: 2)
!34 = !DIEnumerator(name: "VIDEO_TIFF", value: 3)
!35 = !DIEnumerator(name: "VIDEO_AVI", value: 4)
!36 = !{!37, !14}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!38 = !{!0, !39, !44, !49, !51, !53, !55, !60, !65, !70, !72, !77, !79, !84, !86, !91, !108, !113, !115, !120, !125, !127, !132, !134, !139, !141, !146, !148, !150, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !190, !195, !200, !7, !202}
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 11)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 32, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 8)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !46, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !41, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 35, type: !3, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !2, line: 36, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 9)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 17)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 12)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !3, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 7)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !74, isLocal: true, isDefinition: true)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 48, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 23)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !3, isLocal: true, isDefinition: true)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !88, isLocal: true, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 16)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "Map", scope: !9, file: !2, line: 29, type: !93, isLocal: false, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 8192, elements: !89)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "Mapping", file: !95, line: 28, baseType: !96)
!95 = !DIFile(filename: "ldecod_src/inc/config_common.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "fd4f7fd23ee5c729db940751b9f760f9")
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 19, size: 512, elements: !97)
!97 = !{!98, !100, !101, !102, !104, !105, !106, !107}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "TokenName", scope: !96, file: !95, line: 20, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "Place", scope: !96, file: !95, line: 21, baseType: !37, size: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !96, file: !95, line: 22, baseType: !14, size: 32, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "Default", scope: !96, file: !95, line: 23, baseType: !103, size: 64, offset: 192)
!103 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "param_limits", scope: !96, file: !95, line: 24, baseType: !14, size: 32, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "min_limit", scope: !96, file: !95, line: 25, baseType: !103, size: 64, offset: 320)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "max_limit", scope: !96, file: !95, line: 26, baseType: !103, size: 64, offset: 384)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "char_size", scope: !96, file: !95, line: 27, baseType: !14, size: 32, offset: 448)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !10, line: 79, type: !110, isLocal: true, isDefinition: true)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 6456, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 807)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !10, line: 135, type: !67, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !10, line: 139, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 3)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !10, line: 144, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 15)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !10, line: 149, type: !117, isLocal: true, isDefinition: true)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !10, line: 157, type: !129, isLocal: true, isDefinition: true)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 31)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !10, line: 165, type: !117, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !10, line: 167, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 5)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !10, line: 180, type: !81, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !10, line: 186, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 2)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !10, line: 199, type: !117, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !10, line: 199, type: !117, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !10, line: 204, type: !152, isLocal: true, isDefinition: true)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 22)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !10, line: 210, type: !117, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !10, line: 210, type: !117, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !10, line: 215, type: !117, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !10, line: 215, type: !117, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !10, line: 220, type: !117, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !10, line: 220, type: !117, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !10, line: 225, type: !117, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !10, line: 225, type: !117, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !10, line: 230, type: !117, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !10, line: 230, type: !117, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !10, line: 232, type: !117, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !10, line: 236, type: !136, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !10, line: 236, type: !136, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !10, line: 242, type: !117, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !10, line: 242, type: !117, isLocal: true, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !10, line: 257, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 19)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !10, line: 280, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 33)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !10, line: 287, type: !197, isLocal: true, isDefinition: true)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 632, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 79)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !10, line: 297, type: !187, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !10, line: 113, type: !204, isLocal: true, isDefinition: true)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 42)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "InputParameters", file: !208, line: 900, baseType: !209)
!208 = !DIFile(filename: "ldecod_src/inc/global.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c4ca3c417c5616a2ff6b6266e7376fc1")
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inp_par", file: !208, line: 850, size: 32128, elements: !210)
!210 = !{!211, !215, !216, !217, !218, !219, !220, !221, !222, !223, !250, !251, !252, !253, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "infile", scope: !209, file: !208, line: 852, baseType: !212, size: 2040)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2040, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 255)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "outfile", scope: !209, file: !208, line: 853, baseType: !212, size: 2040, offset: 2040)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "reffile", scope: !209, file: !208, line: 854, baseType: !212, size: 2040, offset: 4080)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "FileFormat", scope: !209, file: !208, line: 856, baseType: !14, size: 32, offset: 6144)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "ref_offset", scope: !209, file: !208, line: 857, baseType: !14, size: 32, offset: 6176)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "poc_scale", scope: !209, file: !208, line: 858, baseType: !14, size: 32, offset: 6208)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "write_uv", scope: !209, file: !208, line: 859, baseType: !14, size: 32, offset: 6240)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "silent", scope: !209, file: !208, line: 860, baseType: !14, size: 32, offset: 6272)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "intra_profile_deblocking", scope: !209, file: !208, line: 861, baseType: !14, size: 32, offset: 6304)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !209, file: !208, line: 864, baseType: !224, size: 1088, offset: 6336)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameFormat", file: !13, line: 52, baseType: !225)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_format", file: !13, line: 30, size: 1088, elements: !226)
!226 = !{!227, !229, !231, !232, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !225, file: !13, line: 32, baseType: !228, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorFormat", file: !13, line: 28, baseType: !12)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "color_model", scope: !225, file: !13, line: 33, baseType: !230, size: 32, offset: 32)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorModel", file: !13, line: 20, baseType: !21)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "frame_rate", scope: !225, file: !13, line: 34, baseType: !103, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !225, file: !13, line: 35, baseType: !233, size: 96, offset: 128)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 96, elements: !118)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !225, file: !13, line: 36, baseType: !233, size: 96, offset: 224)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right", scope: !225, file: !13, line: 37, baseType: !14, size: 32, offset: 320)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom", scope: !225, file: !13, line: 38, baseType: !14, size: 32, offset: 352)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right_cr", scope: !225, file: !13, line: 39, baseType: !14, size: 32, offset: 384)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom_cr", scope: !225, file: !13, line: 40, baseType: !14, size: 32, offset: 416)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "width_crop", scope: !225, file: !13, line: 41, baseType: !14, size: 32, offset: 448)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "height_crop", scope: !225, file: !13, line: 42, baseType: !14, size: 32, offset: 480)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "mb_width", scope: !225, file: !13, line: 43, baseType: !14, size: 32, offset: 512)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "mb_height", scope: !225, file: !13, line: 44, baseType: !14, size: 32, offset: 544)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "size_cmp", scope: !225, file: !13, line: 45, baseType: !233, size: 96, offset: 576)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !225, file: !13, line: 46, baseType: !14, size: 32, offset: 672)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth", scope: !225, file: !13, line: 47, baseType: !233, size: 96, offset: 704)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !225, file: !13, line: 48, baseType: !233, size: 96, offset: 800)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "max_value_sq", scope: !225, file: !13, line: 49, baseType: !233, size: 96, offset: 896)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !225, file: !13, line: 50, baseType: !14, size: 32, offset: 992)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_shift3", scope: !225, file: !13, line: 51, baseType: !14, size: 32, offset: 1024)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !209, file: !208, line: 865, baseType: !224, size: 1088, offset: 7424)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ProcessInput", scope: !209, file: !208, line: 867, baseType: !14, size: 32, offset: 8512)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "enable_32_pulldown", scope: !209, file: !208, line: 868, baseType: !14, size: 32, offset: 8544)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "input_file1", scope: !209, file: !208, line: 869, baseType: !254, size: 7744, offset: 8576)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoDataFile", file: !28, line: 60, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_data_file", file: !28, line: 34, size: 7744, elements: !256)
!256 = !{!257, !258, !259, !260, !261, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !255, file: !28, line: 37, baseType: !212, size: 2040)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "fhead", scope: !255, file: !28, line: 38, baseType: !212, size: 2040, offset: 2040)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "ftail", scope: !255, file: !28, line: 39, baseType: !212, size: 2040, offset: 4080)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "f_num", scope: !255, file: !28, line: 40, baseType: !14, size: 32, offset: 6144)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "vdtype", scope: !255, file: !28, line: 41, baseType: !262, size: 32, offset: 6176)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoFileType", file: !28, line: 32, baseType: !27)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !255, file: !28, line: 42, baseType: !224, size: 1088, offset: 6208)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "is_concatenated", scope: !255, file: !28, line: 43, baseType: !14, size: 32, offset: 7296)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "is_interleaved", scope: !255, file: !28, line: 44, baseType: !14, size: 32, offset: 7328)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "zero_pad", scope: !255, file: !28, line: 45, baseType: !14, size: 32, offset: 7360)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "num_digits", scope: !255, file: !28, line: 46, baseType: !14, size: 32, offset: 7392)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !255, file: !28, line: 47, baseType: !14, size: 32, offset: 7424)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "end_frame", scope: !255, file: !28, line: 48, baseType: !14, size: 32, offset: 7456)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "nframes", scope: !255, file: !28, line: 49, baseType: !14, size: 32, offset: 7488)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_size", scope: !255, file: !28, line: 50, baseType: !14, size: 32, offset: 7520)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_size", scope: !255, file: !28, line: 51, baseType: !14, size: 32, offset: 7552)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_offset", scope: !255, file: !28, line: 52, baseType: !14, size: 32, offset: 7584)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_offset", scope: !255, file: !28, line: 53, baseType: !14, size: 32, offset: 7616)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "avi", scope: !255, file: !28, line: 56, baseType: !276, size: 64, offset: 7680)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "input_file2", scope: !209, file: !208, line: 870, baseType: !254, size: 7744, offset: 16320)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "input_file3", scope: !209, file: !208, line: 871, baseType: !254, size: 7744, offset: 24064)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "DecodeAllLayers", scope: !209, file: !208, line: 873, baseType: !14, size: 32, offset: 31808)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !209, file: !208, line: 884, baseType: !14, size: 32, offset: 31840)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !209, file: !208, line: 885, baseType: !14, size: 32, offset: 31872)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !209, file: !208, line: 886, baseType: !14, size: 32, offset: 31904)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !209, file: !208, line: 890, baseType: !14, size: 32, offset: 31936)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "stdRange", scope: !209, file: !208, line: 893, baseType: !14, size: 32, offset: 31968)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "videoCode", scope: !209, file: !208, line: 894, baseType: !14, size: 32, offset: 32000)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "export_views", scope: !209, file: !208, line: 895, baseType: !14, size: 32, offset: 32032)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "iDecFrmNum", scope: !209, file: !208, line: 897, baseType: !14, size: 32, offset: 32064)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "bDisplayDecParams", scope: !209, file: !208, line: 899, baseType: !14, size: 32, offset: 32096)
!289 = !{i32 7, !"Dwarf Version", i32 5}
!290 = !{i32 2, !"Debug Info Version", i32 3}
!291 = !{i32 1, !"wchar_size", i32 4}
!292 = !{i32 8, !"PIC Level", i32 2}
!293 = !{i32 7, !"PIE Level", i32 2}
!294 = !{i32 7, !"uwtable", i32 2}
!295 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!296 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!297 = distinct !DISubprogram(name: "JMDecHelpExit", scope: !10, file: !10, line: 77, type: !298, scopeLine: 78, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!298 = !DISubroutineType(types: !299)
!299 = !{null}
!300 = !DILocation(line: 79, column: 12, scope: !297)
!301 = !DILocation(line: 79, column: 3, scope: !297)
!302 = !DILocation(line: 99, column: 3, scope: !297)
!303 = !DISubprogram(name: "exit", scope: !304, file: !304, line: 624, type: !305, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!304 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!305 = !DISubroutineType(types: !306)
!306 = !{null, !14}
!307 = distinct !DISubprogram(name: "ParseCommand", scope: !10, file: !10, line: 131, type: !308, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !312)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !310, !14, !311}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!312 = !{!313, !314, !315, !316, !317, !318, !319, !320, !321, !333}
!313 = !DILocalVariable(name: "p_Inp", arg: 1, scope: !307, file: !10, line: 131, type: !310)
!314 = !DILocalVariable(name: "ac", arg: 2, scope: !307, file: !10, line: 131, type: !14)
!315 = !DILocalVariable(name: "av", arg: 3, scope: !307, file: !10, line: 131, type: !311)
!316 = !DILocalVariable(name: "content", scope: !307, file: !10, line: 133, type: !99)
!317 = !DILocalVariable(name: "CLcount", scope: !307, file: !10, line: 134, type: !14)
!318 = !DILocalVariable(name: "ContentLen", scope: !307, file: !10, line: 134, type: !14)
!319 = !DILocalVariable(name: "NumberParams", scope: !307, file: !10, line: 134, type: !14)
!320 = !DILocalVariable(name: "filename", scope: !307, file: !10, line: 135, type: !99)
!321 = !DILocalVariable(name: "source", scope: !322, file: !10, line: 264, type: !99)
!322 = distinct !DILexicalBlock(scope: !323, file: !10, line: 263, column: 7)
!323 = distinct !DILexicalBlock(scope: !324, file: !10, line: 243, column: 5)
!324 = distinct !DILexicalBlock(scope: !325, file: !10, line: 242, column: 14)
!325 = distinct !DILexicalBlock(scope: !326, file: !10, line: 236, column: 14)
!326 = distinct !DILexicalBlock(scope: !327, file: !10, line: 230, column: 14)
!327 = distinct !DILexicalBlock(scope: !328, file: !10, line: 225, column: 14)
!328 = distinct !DILexicalBlock(scope: !329, file: !10, line: 220, column: 14)
!329 = distinct !DILexicalBlock(scope: !330, file: !10, line: 215, column: 14)
!330 = distinct !DILexicalBlock(scope: !331, file: !10, line: 210, column: 14)
!331 = distinct !DILexicalBlock(scope: !332, file: !10, line: 199, column: 9)
!332 = distinct !DILexicalBlock(scope: !307, file: !10, line: 193, column: 3)
!333 = !DILocalVariable(name: "destin", scope: !322, file: !10, line: 265, type: !99)
!334 = !DILocation(line: 0, scope: !307)
!335 = !DILocation(line: 137, column: 9, scope: !336)
!336 = distinct !DILexicalBlock(scope: !307, file: !10, line: 137, column: 7)
!337 = !DILocation(line: 137, column: 7, scope: !307)
!338 = !DILocation(line: 139, column: 23, scope: !339)
!339 = distinct !DILexicalBlock(scope: !340, file: !10, line: 139, column: 9)
!340 = distinct !DILexicalBlock(scope: !336, file: !10, line: 138, column: 3)
!341 = !DILocation(line: 139, column: 11, scope: !339)
!342 = !DILocation(line: 139, column: 9, scope: !340)
!343 = !DILocation(line: 144, column: 7, scope: !344)
!344 = distinct !DILexicalBlock(scope: !339, file: !10, line: 140, column: 5)
!345 = !DILocation(line: 146, column: 7, scope: !344)
!346 = !DILocation(line: 149, column: 11, scope: !347)
!347 = distinct !DILexicalBlock(scope: !340, file: !10, line: 149, column: 9)
!348 = !DILocation(line: 149, column: 9, scope: !340)
!349 = !DILocation(line: 79, column: 12, scope: !297, inlinedAt: !350)
!350 = distinct !DILocation(line: 151, column: 7, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !10, line: 150, column: 5)
!352 = !DILocation(line: 79, column: 3, scope: !297, inlinedAt: !350)
!353 = !DILocation(line: 99, column: 3, scope: !297, inlinedAt: !350)
!354 = !DILocation(line: 155, column: 3, scope: !307)
!355 = !DILocation(line: 157, column: 3, scope: !307)
!356 = !DILocation(line: 158, column: 3, scope: !307)
!357 = !DILocation(line: 163, column: 9, scope: !358)
!358 = distinct !DILexicalBlock(scope: !307, file: !10, line: 163, column: 7)
!359 = !DILocation(line: 163, column: 7, scope: !307)
!360 = !DILocation(line: 165, column: 23, scope: !361)
!361 = distinct !DILexicalBlock(scope: !362, file: !10, line: 165, column: 9)
!362 = distinct !DILexicalBlock(scope: !358, file: !10, line: 164, column: 3)
!363 = !DILocation(line: 165, column: 11, scope: !361)
!364 = !DILocation(line: 165, column: 9, scope: !362)
!365 = !DILocation(line: 167, column: 24, scope: !366)
!366 = distinct !DILexicalBlock(scope: !367, file: !10, line: 167, column: 10)
!367 = distinct !DILexicalBlock(scope: !361, file: !10, line: 166, column: 5)
!368 = !DILocation(line: 167, column: 15, scope: !366)
!369 = !DILocation(line: 167, column: 12, scope: !366)
!370 = !DILocation(line: 172, column: 5, scope: !367)
!371 = !DILocation(line: 173, column: 11, scope: !372)
!372 = distinct !DILexicalBlock(scope: !362, file: !10, line: 173, column: 9)
!373 = !DILocation(line: 173, column: 9, scope: !362)
!374 = !DILocation(line: 79, column: 12, scope: !297, inlinedAt: !375)
!375 = distinct !DILocation(line: 175, column: 7, scope: !376)
!376 = distinct !DILexicalBlock(scope: !372, file: !10, line: 174, column: 5)
!377 = !DILocation(line: 79, column: 3, scope: !297, inlinedAt: !375)
!378 = !DILocation(line: 99, column: 3, scope: !297, inlinedAt: !375)
!379 = !DILocation(line: 178, column: 6, scope: !380)
!380 = distinct !DILexicalBlock(scope: !307, file: !10, line: 178, column: 6)
!381 = !DILocation(line: 178, column: 6, scope: !307)
!382 = !DILocation(line: 180, column: 5, scope: !383)
!383 = distinct !DILexicalBlock(scope: !380, file: !10, line: 179, column: 3)
!384 = !DILocation(line: 181, column: 15, scope: !383)
!385 = !DILocation(line: 182, column: 14, scope: !386)
!386 = distinct !DILexicalBlock(scope: !383, file: !10, line: 182, column: 9)
!387 = !DILocation(line: 182, column: 9, scope: !383)
!388 = !DILocation(line: 185, column: 48, scope: !389)
!389 = distinct !DILexicalBlock(scope: !386, file: !10, line: 183, column: 5)
!390 = !DILocation(line: 185, column: 42, scope: !389)
!391 = !DILocation(line: 185, column: 7, scope: !389)
!392 = !DILocation(line: 186, column: 7, scope: !389)
!393 = !DILocation(line: 187, column: 7, scope: !389)
!394 = !DILocation(line: 188, column: 5, scope: !389)
!395 = !DILocation(line: 192, column: 18, scope: !307)
!396 = !DILocation(line: 192, column: 3, scope: !307)
!397 = !DILocation(line: 194, column: 23, scope: !398)
!398 = distinct !DILexicalBlock(scope: !332, file: !10, line: 194, column: 9)
!399 = !DILocation(line: 194, column: 11, scope: !398)
!400 = !DILocation(line: 194, column: 9, scope: !332)
!401 = !DILocation(line: 79, column: 12, scope: !297, inlinedAt: !402)
!402 = distinct !DILocation(line: 196, column: 7, scope: !403)
!403 = distinct !DILexicalBlock(scope: !398, file: !10, line: 195, column: 5)
!404 = !DILocation(line: 79, column: 3, scope: !297, inlinedAt: !402)
!405 = !DILocation(line: 99, column: 3, scope: !297, inlinedAt: !402)
!406 = !DILocation(line: 199, column: 11, scope: !331)
!407 = !DILocation(line: 199, column: 45, scope: !331)
!408 = !DILocation(line: 199, column: 50, scope: !331)
!409 = !DILocation(line: 199, column: 9, scope: !332)
!410 = !DILocation(line: 201, column: 39, scope: !411)
!411 = distinct !DILexicalBlock(scope: !331, file: !10, line: 200, column: 5)
!412 = !DILocation(line: 201, column: 17, scope: !411)
!413 = !DILocation(line: 202, column: 15, scope: !414)
!414 = distinct !DILexicalBlock(scope: !411, file: !10, line: 202, column: 11)
!415 = !DILocation(line: 202, column: 11, scope: !411)
!416 = !DILocation(line: 203, column: 9, scope: !414)
!417 = !DILocation(line: 204, column: 40, scope: !411)
!418 = !DILocation(line: 204, column: 7, scope: !411)
!419 = !DILocation(line: 205, column: 48, scope: !411)
!420 = !DILocation(line: 205, column: 42, scope: !411)
!421 = !DILocation(line: 205, column: 7, scope: !411)
!422 = !DILocation(line: 206, column: 7, scope: !411)
!423 = !DILocation(line: 207, column: 7, scope: !411)
!424 = !DILocation(line: 208, column: 15, scope: !411)
!425 = !DILocation(line: 209, column: 5, scope: !411)
!426 = !DILocation(line: 210, column: 16, scope: !330)
!427 = !DILocation(line: 210, column: 50, scope: !330)
!428 = !DILocation(line: 210, column: 55, scope: !330)
!429 = !DILocation(line: 210, column: 14, scope: !331)
!430 = !DILocation(line: 212, column: 30, scope: !431)
!431 = distinct !DILexicalBlock(scope: !330, file: !10, line: 211, column: 5)
!432 = !DILocation(line: 212, column: 7, scope: !431)
!433 = !DILocation(line: 213, column: 15, scope: !431)
!434 = !DILocation(line: 214, column: 5, scope: !431)
!435 = !DILocation(line: 215, column: 16, scope: !329)
!436 = !DILocation(line: 215, column: 50, scope: !329)
!437 = !DILocation(line: 215, column: 55, scope: !329)
!438 = !DILocation(line: 215, column: 14, scope: !330)
!439 = !DILocation(line: 217, column: 31, scope: !440)
!440 = distinct !DILexicalBlock(scope: !329, file: !10, line: 216, column: 5)
!441 = !DILocation(line: 217, column: 7, scope: !440)
!442 = !DILocation(line: 218, column: 15, scope: !440)
!443 = !DILocation(line: 219, column: 5, scope: !440)
!444 = !DILocation(line: 220, column: 16, scope: !328)
!445 = !DILocation(line: 220, column: 50, scope: !328)
!446 = !DILocation(line: 220, column: 55, scope: !328)
!447 = !DILocation(line: 220, column: 14, scope: !329)
!448 = !DILocation(line: 222, column: 31, scope: !449)
!449 = distinct !DILexicalBlock(scope: !328, file: !10, line: 221, column: 5)
!450 = !DILocation(line: 222, column: 7, scope: !449)
!451 = !DILocation(line: 223, column: 15, scope: !449)
!452 = !DILocation(line: 224, column: 5, scope: !449)
!453 = !DILocation(line: 225, column: 16, scope: !327)
!454 = !DILocation(line: 225, column: 50, scope: !327)
!455 = !DILocation(line: 225, column: 55, scope: !327)
!456 = !DILocation(line: 225, column: 14, scope: !328)
!457 = !DILocation(line: 227, column: 21, scope: !458)
!458 = distinct !DILexicalBlock(scope: !327, file: !10, line: 226, column: 5)
!459 = !DILocation(line: 228, column: 15, scope: !458)
!460 = !DILocation(line: 229, column: 5, scope: !458)
!461 = !DILocation(line: 230, column: 16, scope: !326)
!462 = !DILocation(line: 230, column: 50, scope: !326)
!463 = !DILocation(line: 230, column: 55, scope: !326)
!464 = !DILocation(line: 230, column: 14, scope: !327)
!465 = !DILocation(line: 232, column: 31, scope: !466)
!466 = distinct !DILexicalBlock(scope: !326, file: !10, line: 231, column: 5)
!467 = !DILocation(line: 232, column: 24, scope: !466)
!468 = !DILocalVariable(name: "val", arg: 1, scope: !469, file: !10, line: 109, type: !14)
!469 = distinct !DISubprogram(name: "conf_read_check", scope: !10, file: !10, line: 109, type: !470, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !472)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !14, !14}
!472 = !{!468, !473}
!473 = !DILocalVariable(name: "expected", arg: 2, scope: !469, file: !10, line: 109, type: !14)
!474 = !DILocation(line: 0, scope: !469, inlinedAt: !475)
!475 = distinct !DILocation(line: 232, column: 7, scope: !466)
!476 = !DILocation(line: 111, column: 11, scope: !477, inlinedAt: !475)
!477 = distinct !DILexicalBlock(scope: !469, file: !10, line: 111, column: 7)
!478 = !DILocation(line: 111, column: 7, scope: !469, inlinedAt: !475)
!479 = !DILocation(line: 113, column: 5, scope: !480, inlinedAt: !475)
!480 = distinct !DILexicalBlock(scope: !477, file: !10, line: 112, column: 3)
!481 = !DILocation(line: 114, column: 3, scope: !480, inlinedAt: !475)
!482 = !DILocation(line: 233, column: 15, scope: !466)
!483 = !DILocation(line: 234, column: 5, scope: !466)
!484 = !DILocation(line: 236, column: 19, scope: !325)
!485 = !DILocation(line: 236, column: 16, scope: !325)
!486 = !DILocation(line: 236, column: 52, scope: !325)
!487 = !DILocation(line: 236, column: 60, scope: !325)
!488 = !DILocation(line: 236, column: 57, scope: !325)
!489 = !DILocation(line: 236, column: 14, scope: !326)
!490 = !DILocation(line: 238, column: 31, scope: !491)
!491 = distinct !DILexicalBlock(scope: !325, file: !10, line: 237, column: 5)
!492 = !DILocation(line: 238, column: 24, scope: !491)
!493 = !DILocation(line: 0, scope: !469, inlinedAt: !494)
!494 = distinct !DILocation(line: 238, column: 7, scope: !491)
!495 = !DILocation(line: 111, column: 11, scope: !477, inlinedAt: !494)
!496 = !DILocation(line: 111, column: 7, scope: !469, inlinedAt: !494)
!497 = !DILocation(line: 113, column: 5, scope: !480, inlinedAt: !494)
!498 = !DILocation(line: 114, column: 3, scope: !480, inlinedAt: !494)
!499 = !DILocation(line: 239, column: 15, scope: !491)
!500 = !DILocation(line: 240, column: 5, scope: !491)
!501 = !DILocation(line: 242, column: 16, scope: !324)
!502 = !DILocation(line: 242, column: 50, scope: !324)
!503 = !DILocation(line: 242, column: 55, scope: !324)
!504 = !DILocation(line: 242, column: 14, scope: !325)
!505 = !DILocation(line: 247, column: 7, scope: !323)
!506 = !DILocation(line: 252, column: 27, scope: !323)
!507 = !DILocation(line: 252, column: 32, scope: !323)
!508 = !DILocation(line: 252, column: 7, scope: !323)
!509 = !DILocation(line: 252, column: 35, scope: !323)
!510 = !DILocation(line: 252, column: 55, scope: !323)
!511 = !DILocation(line: 253, column: 52, scope: !323)
!512 = !DILocation(line: 253, column: 29, scope: !323)
!513 = !DILocation(line: 253, column: 23, scope: !323)
!514 = !DILocation(line: 253, column: 20, scope: !323)
!515 = distinct !{!515, !508, !516}
!516 = !DILocation(line: 253, column: 55, scope: !323)
!517 = !DILocation(line: 254, column: 18, scope: !323)
!518 = !DILocation(line: 0, scope: !323)
!519 = !DILocation(line: 257, column: 30, scope: !520)
!520 = distinct !DILexicalBlock(scope: !323, file: !10, line: 257, column: 11)
!521 = !DILocation(line: 257, column: 22, scope: !520)
!522 = !DILocation(line: 257, column: 42, scope: !520)
!523 = !DILocation(line: 257, column: 11, scope: !323)
!524 = !DILocation(line: 257, column: 50, scope: !520)
!525 = !DILocation(line: 258, column: 18, scope: !323)
!526 = !DILocation(line: 262, column: 22, scope: !323)
!527 = !DILocation(line: 262, column: 7, scope: !323)
!528 = !DILocation(line: 264, column: 25, scope: !322)
!529 = !DILocation(line: 0, scope: !322)
!530 = !DILocation(line: 265, column: 39, scope: !322)
!531 = !DILocation(line: 265, column: 25, scope: !322)
!532 = !DILocation(line: 267, column: 9, scope: !322)
!533 = !DILocation(line: 267, column: 16, scope: !322)
!534 = !DILocation(line: 271, column: 20, scope: !535)
!535 = distinct !DILexicalBlock(scope: !536, file: !10, line: 270, column: 11)
!536 = distinct !DILexicalBlock(scope: !537, file: !10, line: 269, column: 15)
!537 = distinct !DILexicalBlock(scope: !322, file: !10, line: 268, column: 9)
!538 = !DILocation(line: 271, column: 22, scope: !535)
!539 = !DILocation(line: 271, column: 35, scope: !535)
!540 = !DILocation(line: 271, column: 37, scope: !535)
!541 = !DILocation(line: 271, column: 50, scope: !535)
!542 = !DILocation(line: 271, column: 52, scope: !535)
!543 = !DILocation(line: 272, column: 11, scope: !535)
!544 = !DILocation(line: 274, column: 20, scope: !536)
!545 = !DILocation(line: 274, column: 22, scope: !536)
!546 = !DILocation(line: 0, scope: !536)
!547 = !DILocation(line: 275, column: 17, scope: !537)
!548 = distinct !{!548, !532, !549}
!549 = !DILocation(line: 276, column: 9, scope: !322)
!550 = !DILocation(line: 277, column: 17, scope: !322)
!551 = !DILocation(line: 278, column: 16, scope: !322)
!552 = distinct !{!552, !527, !553}
!553 = !DILocation(line: 279, column: 7, scope: !323)
!554 = !DILocation(line: 280, column: 7, scope: !323)
!555 = !DILocation(line: 281, column: 48, scope: !323)
!556 = !DILocation(line: 281, column: 42, scope: !323)
!557 = !DILocation(line: 281, column: 7, scope: !323)
!558 = !DILocation(line: 282, column: 7, scope: !323)
!559 = !DILocation(line: 283, column: 7, scope: !323)
!560 = !DILocation(line: 284, column: 5, scope: !323)
!561 = !DILocation(line: 287, column: 7, scope: !562)
!562 = distinct !DILexicalBlock(scope: !324, file: !10, line: 286, column: 5)
!563 = !DILocation(line: 288, column: 7, scope: !562)
!564 = distinct !{!564, !396, !565}
!565 = !DILocation(line: 290, column: 3, scope: !307)
!566 = !DILocation(line: 291, column: 3, scope: !307)
!567 = !DILocalVariable(name: "p_Inp", arg: 1, scope: !568, file: !10, line: 307, type: !310)
!568 = distinct !DISubprogram(name: "PatchInp", scope: !10, file: !10, line: 307, type: !569, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !571)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !310}
!571 = !{!567}
!572 = !DILocation(line: 0, scope: !568, inlinedAt: !573)
!573 = distinct !DILocation(line: 293, column: 3, scope: !307)
!574 = !DILocation(line: 312, column: 3, scope: !568, inlinedAt: !573)
!575 = !DILocation(line: 294, column: 15, scope: !307)
!576 = !DILocation(line: 295, column: 10, scope: !307)
!577 = !DILocation(line: 295, column: 29, scope: !307)
!578 = !DILocation(line: 296, column: 14, scope: !579)
!579 = distinct !DILexicalBlock(scope: !307, file: !10, line: 296, column: 7)
!580 = !DILocation(line: 296, column: 7, scope: !579)
!581 = !DILocation(line: 296, column: 7, scope: !307)
!582 = !DILocation(line: 297, column: 5, scope: !579)
!583 = !DILocation(line: 298, column: 1, scope: !307)
!584 = !DISubprogram(name: "strncmp", scope: !585, file: !585, line: 159, type: !586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!585 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!586 = !DISubroutineType(types: !587)
!587 = !{!14, !588, !588, !590}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !591, line: 18, baseType: !592)
!591 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!592 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!593 = !DISubprogram(name: "printf", scope: !594, file: !594, line: 356, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!594 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!595 = !DISubroutineType(types: !596)
!596 = !{!14, !597, null}
!597 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !588)
!598 = !DISubprogram(name: "InitParams", scope: !95, file: !95, line: 31, type: !599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!599 = !DISubroutineType(types: !600)
!600 = !{!14, !601}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!602 = !DISubprogram(name: "GetConfigFileContent", scope: !95, file: !95, line: 30, type: !603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!603 = !DISubroutineType(types: !604)
!604 = !{!99, !99}
!605 = !DISubprogram(name: "ParseContent", scope: !95, file: !95, line: 34, type: !606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !310, !601, !99, !14}
!608 = !DISubprogram(name: "strlen", scope: !585, file: !585, line: 407, type: !609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!609 = !DISubroutineType(types: !610)
!610 = !{!592, !588}
!611 = !DISubprogram(name: "free", scope: !304, file: !304, line: 555, type: !612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!612 = !DISubroutineType(types: !613)
!613 = !{null, !37}
!614 = !DISubprogram(name: "error", scope: !208, file: !208, line: 940, type: !615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !99, !14}
!617 = !DISubprogram(name: "strncpy", scope: !585, file: !585, line: 144, type: !618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!618 = !DISubroutineType(types: !619)
!619 = !{!99, !620, !597, !590}
!620 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !99)
!621 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !594, file: !594, line: 439, type: !622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!622 = !DISubroutineType(types: !623)
!623 = !{!14, !597, !597, null}
!624 = !DISubprogram(name: "malloc", scope: !304, file: !304, line: 540, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!625 = !DISubroutineType(types: !626)
!626 = !{!37, !590}
!627 = !DISubprogram(name: "no_mem_exit", scope: !628, file: !628, line: 180, type: !629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!628 = !DIFile(filename: "ldecod_src/inc/memalloc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "88776e97a131c37d03036121c7c9e0ac")
!629 = !DISubroutineType(types: !630)
!630 = !{null, !99}
!631 = !DISubprogram(name: "snprintf", scope: !594, file: !594, line: 378, type: !632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!632 = !DISubroutineType(types: !633)
!633 = !{!14, !620, !590, !597, null}
!634 = !DISubprogram(name: "DisplayParams", scope: !95, file: !95, line: 33, type: !635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!635 = !DISubroutineType(types: !636)
!636 = !{!14, !601, !99}
!637 = !DISubprogram(name: "TestParams", scope: !95, file: !95, line: 32, type: !638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!638 = !DISubroutineType(types: !639)
!639 = !{!14, !601, !276}
