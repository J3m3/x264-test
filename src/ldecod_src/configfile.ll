; ModuleID = 'ldecod_src/configfile.c'
source_filename = "ldecod_src/configfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inp_par = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, i32, i32, i32, i32, %struct.frame_format, %struct.frame_format, i32, i32, %struct.video_data_file, %struct.video_data_file, %struct.video_data_file, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.video_data_file = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, %struct.frame_format, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.Mapping = type { ptr, ptr, i32, double, i32, double, double, i32 }

@.str = private unnamed_addr constant [10 x i8] c"InputFile\00", align 1
@cfgparams = dso_local global %struct.inp_par zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"OutputFile\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"RefFile\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"WriteUV\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"FileFormat\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"RefOffset\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"POCScale\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"DisplayDecParams\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"ConcealMode\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"RefPOCGap\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"POCGap\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Silent\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"IntraProfileDeblocking\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"DecFrmNum\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"DecodeAllLayers\00", align 1
@Map = dso_local global [16 x %struct.Mapping] [%struct.Mapping { ptr @.str, ptr @cfgparams, i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00, i32 255 }, %struct.Mapping { ptr @.str.1, ptr getelementptr (i8, ptr @cfgparams, i64 255), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00, i32 255 }, %struct.Mapping { ptr @.str.2, ptr getelementptr (i8, ptr @cfgparams, i64 510), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00, i32 255 }, %struct.Mapping { ptr @.str.3, ptr getelementptr (i8, ptr @cfgparams, i64 780), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00, i32 0 }, %struct.Mapping { ptr @.str.4, ptr getelementptr (i8, ptr @cfgparams, i64 768), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00, i32 0 }, %struct.Mapping { ptr @.str.5, ptr getelementptr (i8, ptr @cfgparams, i64 772), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.560000e+02, i32 0 }, %struct.Mapping { ptr @.str.6, ptr getelementptr (i8, ptr @cfgparams, i64 776), i32 0, double 2.000000e+00, i32 1, double 1.000000e+00, double 1.000000e+01, i32 0 }, %struct.Mapping { ptr @.str.7, ptr getelementptr (i8, ptr @cfgparams, i64 4012), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00, i32 0 }, %struct.Mapping { ptr @.str.8, ptr getelementptr (i8, ptr @cfgparams, i64 3980), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00, i32 0 }, %struct.Mapping { ptr @.str.9, ptr getelementptr (i8, ptr @cfgparams, i64 3984), i32 0, double 2.000000e+00, i32 1, double 0.000000e+00, double 4.000000e+00, i32 0 }, %struct.Mapping { ptr @.str.10, ptr getelementptr (i8, ptr @cfgparams, i64 3988), i32 0, double 2.000000e+00, i32 1, double 0.000000e+00, double 4.000000e+00, i32 0 }, %struct.Mapping { ptr @.str.11, ptr getelementptr (i8, ptr @cfgparams, i64 784), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00, i32 0 }, %struct.Mapping { ptr @.str.12, ptr getelementptr (i8, ptr @cfgparams, i64 788), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00, i32 0 }, %struct.Mapping { ptr @.str.13, ptr getelementptr (i8, ptr @cfgparams, i64 4008), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00, i32 0 }, %struct.Mapping { ptr @.str.14, ptr getelementptr (i8, ptr @cfgparams, i64 3976), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00, i32 0 }, %struct.Mapping { ptr null, ptr null, i32 -1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00, i32 0 }], align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [807 x i8] c"\0A   ldecod [-h] [-d defdec.cfg] {[-f curenc1.cfg]...[-f curencN.cfg]} {[-p EncParam1=EncValue1]..[-p EncParamM=EncValueM]}\0A\0A## Parameters\0A\0A## Options\0A   -h :  prints function usage\0A   -d :  use <defdec.cfg> as default file for parameter initializations.\0A         If not used then file defaults to encoder.cfg in local directory.\0A   -f :  read <curencM.cfg> for reseting selected encoder parameters.\0A         Multiple files could be used that set different parameters\0A   -p :  Set parameter <DecParamM> to <DecValueM>.\0A         See default decoder.cfg file for description of all parameters.\0A\0A## Examples of usage:\0A   ldecod\0A   ldecod  -h\0A   ldecod  -d default.cfg\0A   ldecod  -f curenc1.cfg\0A   ldecod  -f curenc1.cfg -p InputFile=\22e:\\data\\container_qcif_30.264\22 -p OutputFile=\22dec.yuv\22 -p RefFile=\22Rec.yuv\22\0A\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"decoder.cfg\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"Parsing Configfile %s\0A\00", align 1
@errortext = external global [300 x i8], align 16
@.str.27 = private unnamed_addr constant [22 x i8] c"Parsing Configfile %s\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"-mpr\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"-MPR\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"Configure: content\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"Parsing command line string '%s'\00", align 1
@.str.45 = private unnamed_addr constant [79 x i8] c"Error in command line, ac %d, around string '%s', missing -f or -p parameters?\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"Decoder Parameters\00", align 1
@.str.47 = private unnamed_addr constant [42 x i8] c"init_conf: error reading from config file\00", align 1
@str = private unnamed_addr constant [30 x i8] c"Setting Default Parameters...\00", align 1
@str.48 = private unnamed_addr constant [14 x i8] c"JM 17 (FRExt)\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @JMDecHelpExit() local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @stderr, align 8
  %1 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 806, i64 1, ptr %0) #12
  tail call void @exit(i32 noundef -1) #13
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ParseCommand(ptr noundef %p_Inp, i32 noundef %ac, ptr nocapture noundef readonly %av) local_unnamed_addr #2 {
entry:
  %cmp = icmp eq i32 %ac, 2
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds i8, ptr %av, i64 8
  %0 = load ptr, ptr %arrayidx, align 8
  %1 = load i8, ptr %0, align 1
  %.not = icmp eq i8 %1, 45
  br i1 %.not, label %if.then.tail, label %if.end9

if.then.tail:                                     ; preds = %if.then
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 118
  br i1 %4, label %if.then2, label %if.end.tail

if.then2:                                         ; preds = %if.then.tail
  %puts385 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.48)
  tail call void @exit(i32 noundef -1) #13
  unreachable

if.end.tail:                                      ; preds = %if.then.tail
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 104
  br i1 %7, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end.tail
  %8 = load ptr, ptr @stderr, align 8
  %9 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 806, i64 1, ptr %8) #12
  tail call void @exit(i32 noundef -1) #13
  unreachable

if.end9:                                          ; preds = %if.then, %if.end.tail, %entry
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4016) @cfgparams, i8 0, i64 4016, i1 false)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %call11 = tail call i32 @InitParams(ptr noundef nonnull @Map) #14
  %cmp12 = icmp sgt i32 %ac, 2
  br i1 %cmp12, label %if.then13, label %if.then31

if.then13:                                        ; preds = %if.end9
  %arrayidx14 = getelementptr inbounds i8, ptr %av, i64 8
  %10 = load ptr, ptr %arrayidx14, align 8
  %11 = load i8, ptr %10, align 1
  %.not463 = icmp eq i8 %11, 45
  br i1 %.not463, label %if.then13.tail, label %if.then31

if.then13.tail:                                   ; preds = %if.then13
  %12 = getelementptr inbounds i8, ptr %10, i64 1
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 100
  br i1 %14, label %if.then17, label %if.end24.tail

if.then17:                                        ; preds = %if.then13.tail
  %arrayidx18 = getelementptr inbounds i8, ptr %av, i64 16
  %15 = load ptr, ptr %arrayidx18, align 8
  %call19 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(5) @.str.22, i64 noundef 4) #15
  %cmp20 = icmp eq i32 %call19, 0
  %. = select i1 %cmp20, ptr null, ptr %15
  br label %if.end24.tail

if.end24.tail:                                    ; preds = %if.then17, %if.then13.tail
  %CLcount.0.ph = phi i32 [ 1, %if.then13.tail ], [ 3, %if.then17 ]
  %filename.1.ph = phi ptr [ @.str.16, %if.then13.tail ], [ %., %if.then17 ]
  %16 = getelementptr inbounds i8, ptr %10, i64 1
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 104
  br i1 %18, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end24.tail
  %19 = load ptr, ptr @stderr, align 8
  %20 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 806, i64 1, ptr %19) #12
  tail call void @exit(i32 noundef -1) #13
  unreachable

if.end30:                                         ; preds = %if.end24.tail
  %tobool.not = icmp eq ptr %filename.1.ph, null
  br i1 %tobool.not, label %if.end39, label %if.then31

if.then31:                                        ; preds = %if.then13, %if.end9, %if.end30
  %filename.2396 = phi ptr [ %filename.1.ph, %if.end30 ], [ @.str.16, %if.end9 ], [ @.str.16, %if.then13 ]
  %CLcount.1394 = phi i32 [ %CLcount.0.ph, %if.end30 ], [ 1, %if.end9 ], [ 1, %if.then13 ]
  %call32 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %filename.2396)
  %call33 = tail call ptr @GetConfigFileContent(ptr noundef nonnull %filename.2396) #14
  %cmp34.not = icmp eq ptr %call33, null
  br i1 %cmp34.not, label %if.end39, label %if.then35

if.then35:                                        ; preds = %if.then31
  %call36 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call33) #15
  %conv = trunc i64 %call36 to i32
  tail call void @ParseContent(ptr noundef %p_Inp, ptr noundef nonnull @Map, ptr noundef nonnull %call33, i32 noundef %conv) #14
  %putchar = tail call i32 @putchar(i32 10)
  tail call void @free(ptr noundef nonnull %call33) #14
  br label %if.end39

if.end39:                                         ; preds = %if.then31, %if.then35, %if.end30
  %CLcount.1395 = phi i32 [ %CLcount.1394, %if.then31 ], [ %CLcount.1394, %if.then35 ], [ %CLcount.0.ph, %if.end30 ]
  %cmp40460 = icmp slt i32 %CLcount.1395, %ac
  br i1 %cmp40460, label %while.body.lr.ph, label %while.end262

while.body.lr.ph:                                 ; preds = %if.end39
  %DecodeAllLayers = getelementptr inbounds i8, ptr %p_Inp, i64 3976
  %iDecFrmNum = getelementptr inbounds i8, ptr %p_Inp, i64 4008
  %silent = getelementptr inbounds i8, ptr %p_Inp, i64 784
  %outfile = getelementptr inbounds i8, ptr %p_Inp, i64 255
  %reffile = getelementptr inbounds i8, ptr %p_Inp, i64 510
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end261
  %CLcount.2461 = phi i32 [ %CLcount.1395, %while.body.lr.ph ], [ %CLcount.4, %if.end261 ]
  %idxprom = sext i32 %CLcount.2461 to i64
  %arrayidx42 = getelementptr inbounds ptr, ptr %av, i64 %idxprom
  %21 = load ptr, ptr %arrayidx42, align 8
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = add nsw i32 %23, -45
  %.not465 = icmp eq i32 %24, 0
  br i1 %.not465, label %while.body.tail, label %lor.lhs.false150.tail

while.body.tail:                                  ; preds = %while.body
  %25 = getelementptr inbounds i8, ptr %21, i64 1
  %26 = load i8, ptr %25, align 1
  %cmp44 = icmp eq i8 %26, 104
  br i1 %cmp44, label %if.then46, label %if.end47.tail.thread

if.then46:                                        ; preds = %while.body.tail
  %27 = load ptr, ptr @stderr, align 8
  %28 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 806, i64 1, ptr %27) #12
  tail call void @exit(i32 noundef -1) #13
  unreachable

if.end47.tail.thread:                             ; preds = %while.body.tail
  %29 = getelementptr inbounds i8, ptr %21, i64 1
  %30 = load i8, ptr %29, align 1
  %cmp51504 = icmp eq i8 %30, 102
  br i1 %cmp51504, label %if.then58, label %lor.lhs.false.tail.thread

lor.lhs.false.tail.thread:                        ; preds = %if.end47.tail.thread
  %31 = getelementptr inbounds i8, ptr %21, i64 1
  %32 = load i8, ptr %31, align 1
  %cmp56505 = icmp eq i8 %32, 70
  br i1 %cmp56505, label %if.then58, label %if.else74.tail.thread

if.then58:                                        ; preds = %lor.lhs.false.tail.thread, %if.end47.tail.thread
  %arrayidx60 = getelementptr i8, ptr %arrayidx42, i64 8
  %33 = load ptr, ptr %arrayidx60, align 8
  %call61 = tail call ptr @GetConfigFileContent(ptr noundef %33) #14
  %cmp62 = icmp eq ptr %call61, null
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.then58
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 300) #14
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.then58
  %34 = load ptr, ptr %arrayidx60, align 8
  %call69 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef %34)
  %call70 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call61) #15
  %conv71 = trunc i64 %call70 to i32
  tail call void @ParseContent(ptr noundef %p_Inp, ptr noundef nonnull @Map, ptr noundef %call61, i32 noundef %conv71) #14
  %putchar384 = tail call i32 @putchar(i32 10)
  tail call void @free(ptr noundef %call61) #14
  %add73 = add nsw i32 %CLcount.2461, 2
  br label %if.end261

if.else74.tail.thread:                            ; preds = %lor.lhs.false.tail.thread
  %35 = getelementptr inbounds i8, ptr %21, i64 1
  %36 = load i8, ptr %35, align 1
  %cmp78506 = icmp eq i8 %36, 105
  br i1 %cmp78506, label %if.then86, label %lor.lhs.false80.tail.thread

lor.lhs.false80.tail.thread:                      ; preds = %if.else74.tail.thread
  %37 = getelementptr inbounds i8, ptr %21, i64 1
  %38 = load i8, ptr %37, align 1
  %cmp84507 = icmp eq i8 %38, 73
  br i1 %cmp84507, label %if.then86, label %if.else92.tail.thread

if.then86:                                        ; preds = %lor.lhs.false80.tail.thread, %if.else74.tail.thread
  %arrayidx89 = getelementptr i8, ptr %arrayidx42, i64 8
  %39 = load ptr, ptr %arrayidx89, align 8
  %call90 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %p_Inp, ptr noundef nonnull dereferenceable(1) %39, i64 noundef 255) #14
  %add91 = add nsw i32 %CLcount.2461, 2
  br label %if.end261

if.else92.tail.thread:                            ; preds = %lor.lhs.false80.tail.thread
  %40 = getelementptr inbounds i8, ptr %21, i64 1
  %41 = load i8, ptr %40, align 1
  %cmp96508 = icmp eq i8 %41, 114
  br i1 %cmp96508, label %if.then104, label %lor.lhs.false98.tail.thread

lor.lhs.false98.tail.thread:                      ; preds = %if.else92.tail.thread
  %42 = getelementptr inbounds i8, ptr %21, i64 1
  %43 = load i8, ptr %42, align 1
  %cmp102509 = icmp eq i8 %43, 82
  br i1 %cmp102509, label %if.then104, label %if.else111.tail.thread

if.then104:                                       ; preds = %lor.lhs.false98.tail.thread, %if.else92.tail.thread
  %arrayidx108 = getelementptr i8, ptr %arrayidx42, i64 8
  %44 = load ptr, ptr %arrayidx108, align 8
  %call109 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %reffile, ptr noundef nonnull dereferenceable(1) %44, i64 noundef 255) #14
  %add110 = add nsw i32 %CLcount.2461, 2
  br label %if.end261

if.else111.tail.thread:                           ; preds = %lor.lhs.false98.tail.thread
  %45 = getelementptr inbounds i8, ptr %21, i64 1
  %46 = load i8, ptr %45, align 1
  %cmp115510 = icmp eq i8 %46, 111
  br i1 %cmp115510, label %if.then123, label %lor.lhs.false117.tail.thread

lor.lhs.false117.tail.thread:                     ; preds = %if.else111.tail.thread
  %47 = getelementptr inbounds i8, ptr %21, i64 1
  %48 = load i8, ptr %47, align 1
  %cmp121511 = icmp eq i8 %48, 79
  br i1 %cmp121511, label %if.then123, label %if.else130.tail.thread

if.then123:                                       ; preds = %lor.lhs.false117.tail.thread, %if.else111.tail.thread
  %arrayidx127 = getelementptr i8, ptr %arrayidx42, i64 8
  %49 = load ptr, ptr %arrayidx127, align 8
  %call128 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %outfile, ptr noundef nonnull dereferenceable(1) %49, i64 noundef 255) #14
  %add129 = add nsw i32 %CLcount.2461, 2
  br label %if.end261

if.else130.tail.thread:                           ; preds = %lor.lhs.false117.tail.thread
  %50 = getelementptr inbounds i8, ptr %21, i64 1
  %51 = load i8, ptr %50, align 1
  %cmp134512 = icmp eq i8 %51, 115
  br i1 %cmp134512, label %if.then142, label %lor.lhs.false136.tail.thread

lor.lhs.false136.tail.thread:                     ; preds = %if.else130.tail.thread
  %52 = getelementptr inbounds i8, ptr %21, i64 1
  %53 = load i8, ptr %52, align 1
  %cmp140513 = icmp eq i8 %53, 83
  br i1 %cmp140513, label %if.then142, label %if.else144.tail.thread

if.then142:                                       ; preds = %lor.lhs.false136.tail.thread, %if.else130.tail.thread
  store i32 1, ptr %silent, align 8
  %add143 = add nsw i32 %CLcount.2461, 1
  br label %if.end261

if.else144.tail.thread:                           ; preds = %lor.lhs.false136.tail.thread
  %54 = getelementptr inbounds i8, ptr %21, i64 1
  %55 = load i8, ptr %54, align 1
  %cmp148514 = icmp eq i8 %55, 110
  br i1 %cmp148514, label %if.then156, label %sub_1443

sub_1443:                                         ; preds = %if.else144.tail.thread
  %56 = getelementptr inbounds i8, ptr %21, i64 1
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = add nsw i32 %58, -78
  br label %lor.lhs.false150.tail

lor.lhs.false150.tail:                            ; preds = %while.body, %sub_1443
  %60 = phi i32 [ %59, %sub_1443 ], [ %24, %while.body ]
  %cmp154 = icmp eq i32 %60, 0
  br i1 %cmp154, label %if.then156, label %if.else162

if.then156:                                       ; preds = %if.else144.tail.thread, %lor.lhs.false150.tail
  %arrayidx159 = getelementptr i8, ptr %arrayidx42, i64 8
  %61 = load ptr, ptr %arrayidx159, align 8
  %call160 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %61, ptr noundef nonnull @.str.38, ptr noundef nonnull %iDecFrmNum) #14
  %cmp.not.i = icmp eq i32 %call160, 1
  br i1 %cmp.not.i, label %conf_read_check.exit, label %if.then.i

if.then.i:                                        ; preds = %if.then156
  tail call void @error(ptr noundef nonnull @.str.47, i32 noundef 500) #14
  br label %conf_read_check.exit

conf_read_check.exit:                             ; preds = %if.then156, %if.then.i
  %add161 = add nsw i32 %CLcount.2461, 2
  br label %if.end261

if.else162:                                       ; preds = %lor.lhs.false150.tail
  %call165 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(5) @.str.39, i64 noundef 4) #15
  %cmp166 = icmp eq i32 %call165, 0
  br i1 %cmp166, label %if.then174, label %lor.lhs.false168

lor.lhs.false168:                                 ; preds = %if.else162
  %call171 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(5) @.str.40, i64 noundef 4) #15
  %cmp172 = icmp eq i32 %call171, 0
  br i1 %cmp172, label %if.then174, label %sub_0445

if.then174:                                       ; preds = %lor.lhs.false168, %if.else162
  %arrayidx177 = getelementptr i8, ptr %arrayidx42, i64 8
  %62 = load ptr, ptr %arrayidx177, align 8
  %call178 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %62, ptr noundef nonnull @.str.38, ptr noundef nonnull %DecodeAllLayers) #14
  %cmp.not.i388 = icmp eq i32 %call178, 1
  br i1 %cmp.not.i388, label %conf_read_check.exit390, label %if.then.i389

if.then.i389:                                     ; preds = %if.then174
  tail call void @error(ptr noundef nonnull @.str.47, i32 noundef 500) #14
  br label %conf_read_check.exit390

conf_read_check.exit390:                          ; preds = %if.then174, %if.then.i389
  %add179 = add nsw i32 %CLcount.2461, 2
  br label %if.end261

sub_0445:                                         ; preds = %lor.lhs.false168
  br i1 %.not465, label %if.else180.tail, label %lor.lhs.false186.tail

if.else180.tail:                                  ; preds = %sub_0445
  %63 = getelementptr inbounds i8, ptr %21, i64 1
  %64 = load i8, ptr %63, align 1
  %cmp184 = icmp eq i8 %64, 112
  br i1 %cmp184, label %if.then192, label %sub_1449

sub_1449:                                         ; preds = %if.else180.tail
  %65 = getelementptr inbounds i8, ptr %21, i64 1
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = add nsw i32 %67, -80
  br label %lor.lhs.false186.tail

lor.lhs.false186.tail:                            ; preds = %sub_0445, %sub_1449
  %69 = phi i32 [ %68, %sub_1449 ], [ %24, %sub_0445 ]
  %cmp190 = icmp eq i32 %69, 0
  br i1 %cmp190, label %if.then192, label %if.else250

if.then192:                                       ; preds = %lor.lhs.false186.tail, %if.else180.tail
  %inc = add nsw i32 %CLcount.2461, 1
  %cmp194451 = icmp slt i32 %inc, %ac
  br i1 %cmp194451, label %land.rhs.preheader, label %while.end

land.rhs.preheader:                               ; preds = %if.then192
  %70 = sext i32 %inc to i64
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %while.body202
  %indvars.iv = phi i64 [ %70, %land.rhs.preheader ], [ %indvars.iv.next, %while.body202 ]
  %ContentLen.0452 = phi i32 [ 0, %land.rhs.preheader ], [ %add208, %while.body202 ]
  %arrayidx197 = getelementptr inbounds ptr, ptr %av, i64 %indvars.iv
  %71 = load ptr, ptr %arrayidx197, align 8
  %72 = load i8, ptr %71, align 1
  %cmp200.not = icmp eq i8 %72, 45
  br i1 %cmp200.not, label %while.end.loopexit.split.loop.exit516, label %while.body202

while.body202:                                    ; preds = %land.rhs
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %call206 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %71) #15
  %conv207 = trunc i64 %call206 to i32
  %add208 = add nsw i32 %ContentLen.0452, %conv207
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %ac
  br i1 %exitcond.not, label %while.end, label %land.rhs

while.end.loopexit.split.loop.exit516:            ; preds = %land.rhs
  %73 = trunc nsw i64 %indvars.iv to i32
  br label %while.end

while.end:                                        ; preds = %while.body202, %while.end.loopexit.split.loop.exit516, %if.then192
  %ContentLen.0.lcssa = phi i32 [ 0, %if.then192 ], [ %ContentLen.0452, %while.end.loopexit.split.loop.exit516 ], [ %add208, %while.body202 ]
  %NumberParams.0.lcssa = phi i32 [ %inc, %if.then192 ], [ %73, %while.end.loopexit.split.loop.exit516 ], [ %ac, %while.body202 ]
  %add209 = add nsw i32 %ContentLen.0.lcssa, 1000
  %conv210 = sext i32 %add209 to i64
  %call211 = tail call noalias ptr @malloc(i64 noundef %conv210) #16
  %cmp212 = icmp eq ptr %call211, null
  br i1 %cmp212, label %if.then214, label %if.end215

if.then214:                                       ; preds = %while.end
  tail call void @no_mem_exit(ptr noundef nonnull @.str.43) #14
  br label %if.end215

if.end215:                                        ; preds = %if.then214, %while.end
  store i8 0, ptr %call211, align 1
  %cmp218457 = icmp slt i32 %inc, %NumberParams.0.lcssa
  br i1 %cmp218457, label %while.body220.preheader, label %while.end245

while.body220.preheader:                          ; preds = %if.end215
  %74 = sext i32 %inc to i64
  br label %while.body220

while.body220:                                    ; preds = %while.body220.preheader, %while.end243
  %indvars.iv481 = phi i64 [ %74, %while.body220.preheader ], [ %indvars.iv.next482, %while.end243 ]
  %arrayidx222 = getelementptr inbounds ptr, ptr %av, i64 %indvars.iv481
  %75 = load ptr, ptr %arrayidx222, align 8
  %call224 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call211) #15
  %sext = shl i64 %call224, 32
  %idxprom226 = ashr exact i64 %sext, 32
  %arrayidx227 = getelementptr inbounds i8, ptr %call211, i64 %idxprom226
  br label %while.cond228

while.cond228:                                    ; preds = %if.end241, %while.body220
  %source.0 = phi ptr [ %75, %while.body220 ], [ %incdec.ptr242, %if.end241 ]
  %destin.0 = phi ptr [ %arrayidx227, %while.body220 ], [ %destin.1, %if.end241 ]
  %76 = load i8, ptr %source.0, align 1
  switch i8 %76, label %if.else239 [
    i8 0, label %while.end243
    i8 61, label %if.then236
  ]

if.then236:                                       ; preds = %while.cond228
  %incdec.ptr = getelementptr inbounds i8, ptr %destin.0, i64 1
  store i8 32, ptr %destin.0, align 1
  %incdec.ptr237 = getelementptr inbounds i8, ptr %destin.0, i64 2
  store i8 61, ptr %incdec.ptr, align 1
  %incdec.ptr238 = getelementptr inbounds i8, ptr %destin.0, i64 3
  store i8 32, ptr %incdec.ptr237, align 1
  br label %if.end241

if.else239:                                       ; preds = %while.cond228
  %incdec.ptr240 = getelementptr inbounds i8, ptr %destin.0, i64 1
  store i8 %76, ptr %destin.0, align 1
  br label %if.end241

if.end241:                                        ; preds = %if.else239, %if.then236
  %destin.1 = phi ptr [ %incdec.ptr238, %if.then236 ], [ %incdec.ptr240, %if.else239 ]
  %incdec.ptr242 = getelementptr inbounds i8, ptr %source.0, i64 1
  br label %while.cond228

while.end243:                                     ; preds = %while.cond228
  store i8 0, ptr %destin.0, align 1
  %indvars.iv.next482 = add nsw i64 %indvars.iv481, 1
  %lftr.wideiv484 = trunc i64 %indvars.iv.next482 to i32
  %exitcond485.not = icmp eq i32 %NumberParams.0.lcssa, %lftr.wideiv484
  br i1 %exitcond485.not, label %while.end245, label %while.body220

while.end245:                                     ; preds = %while.end243, %if.end215
  %CLcount.3.lcssa = phi i32 [ %inc, %if.end215 ], [ %NumberParams.0.lcssa, %while.end243 ]
  %call246 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, ptr noundef nonnull %call211)
  %call247 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call211) #15
  %conv248 = trunc i64 %call247 to i32
  tail call void @ParseContent(ptr noundef %p_Inp, ptr noundef nonnull @Map, ptr noundef nonnull %call211, i32 noundef %conv248) #14
  tail call void @free(ptr noundef %call211) #14
  %putchar383 = tail call i32 @putchar(i32 10)
  br label %if.end261

if.else250:                                       ; preds = %lor.lhs.false186.tail
  %call253 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.45, i32 noundef %CLcount.2461, ptr noundef nonnull %21) #14
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 300) #14
  br label %if.end261

if.end261:                                        ; preds = %if.then86, %if.then123, %conf_read_check.exit, %while.end245, %if.else250, %conf_read_check.exit390, %if.then142, %if.then104, %if.end65
  %CLcount.4 = phi i32 [ %add73, %if.end65 ], [ %add91, %if.then86 ], [ %add110, %if.then104 ], [ %add129, %if.then123 ], [ %add143, %if.then142 ], [ %add161, %conf_read_check.exit ], [ %add179, %conf_read_check.exit390 ], [ %CLcount.3.lcssa, %while.end245 ], [ %CLcount.2461, %if.else250 ]
  %cmp40 = icmp slt i32 %CLcount.4, %ac
  br i1 %cmp40, label %while.body, label %while.end262

while.end262:                                     ; preds = %if.end261, %if.end39
  %putchar382 = tail call i32 @putchar(i32 10)
  %call.i = tail call i32 @TestParams(ptr noundef nonnull @Map, ptr noundef null) #14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4016) @cfgparams, ptr noundef nonnull align 8 dereferenceable(4016) %p_Inp, i64 4016, i1 false)
  %enable_32_pulldown = getelementptr inbounds i8, ptr %p_Inp, i64 1068
  store i32 0, ptr %enable_32_pulldown, align 4
  %bDisplayDecParams = getelementptr inbounds i8, ptr %p_Inp, i64 4012
  %77 = load i32, ptr %bDisplayDecParams, align 4
  %tobool264.not = icmp eq i32 %77, 0
  br i1 %tobool264.not, label %if.end267, label %if.then265

if.then265:                                       ; preds = %while.end262
  %call266 = tail call i32 @DisplayParams(ptr noundef nonnull @Map, ptr noundef nonnull @.str.46) #14
  br label %if.end267

if.end267:                                        ; preds = %if.then265, %while.end262
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare i32 @InitParams(ptr noundef) local_unnamed_addr #6

declare ptr @GetConfigFileContent(ptr noundef) local_unnamed_addr #6

declare void @ParseContent(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

declare i32 @DisplayParams(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @TestParams(ptr noundef, ptr noundef) local_unnamed_addr #6

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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
