; ModuleID = 'ldecod_src/config_common.c'
source_filename = "ldecod_src/config_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inp_par = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, i32, i32, i32, i32, %struct.frame_format, %struct.frame_format, i32, i32, %struct.video_data_file, %struct.video_data_file, %struct.video_data_file, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.video_data_file = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, %struct.frame_format, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.Mapping = type { ptr, ptr, i32, double, i32, double, double, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errortext = external global [300 x i8], align 16
@.str.1 = private unnamed_addr constant [35 x i8] c"Cannot open configuration file %s.\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Cannot fseek in configuration file %s.\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"Unreasonable Filesize %ld reported by ftell for configuration file %s.\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"GetConfigFileContent: buf\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"\0A\09Parsing error in config file: Parameter Name '%s' not recognized.\00", align 1
@.str.7 = private unnamed_addr constant [78 x i8] c" Parsing error in config file: '=' expected as the second token in each line.\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.9 = private unnamed_addr constant [74 x i8] c" Parsing error: Expected numerical value for Parameter of %s, found '%s'.\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"Unknown value type in the map definition of configfile.h\00", align 1
@cfgparams = dso_local local_unnamed_addr global %struct.inp_par zeroinitializer, align 8
@.str.13 = private unnamed_addr constant [90 x i8] c"Error in input parameter %s. Check configuration file. Value should be in [%d, %d] range.\00", align 1
@.str.14 = private unnamed_addr constant [94 x i8] c"Error in input parameter %s. Check configuration file. Value should be in [%.2f, %.2f] range.\00", align 1
@.str.15 = private unnamed_addr constant [92 x i8] c"Error in input parameter %s. Check configuration file. Value should not be smaller than %d.\00", align 1
@.str.16 = private unnamed_addr constant [94 x i8] c"Error in input parameter %s. Check configuration file. Value should not be smaller than %2.f.\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"*               %s                   *\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Parameter %s = %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Parameter %s = %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"Parameter %s = %.2f\0A\00", align 1
@str.23 = private unnamed_addr constant [55 x i8] c"******************************************************\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @GetConfigFileContent(ptr noundef %Filename) local_unnamed_addr #0 {
entry:
  %call = tail call noalias ptr @fopen(ptr noundef %Filename, ptr noundef nonnull @.str)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.1, ptr noundef %Filename) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @fseek(ptr noundef nonnull %call, i64 noundef 0, i32 noundef 2)
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.2, ptr noundef %Filename) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i64 @ftell(ptr noundef nonnull %call)
  %or.cond = icmp ugt i64 %call7, 100000
  br i1 %or.cond, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  %call11 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.3, i64 noundef %call7, ptr noundef %Filename) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %call13 = tail call i32 @fseek(ptr noundef nonnull %call, i64 noundef 0, i32 noundef 0)
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end12
  %call16 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.2, ptr noundef %Filename) #12
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %add = add nuw nsw i64 %call7, 1
  %call18 = tail call noalias ptr @malloc(i64 noundef %add) #13
  %cmp19 = icmp eq ptr %call18, null
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #12
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17
  %call22 = tail call i64 @fread(ptr noundef %call18, i64 noundef 1, i64 noundef %call7, ptr noundef nonnull %call)
  %arrayidx = getelementptr inbounds i8, ptr %call18, i64 %call22
  store i8 0, ptr %arrayidx, align 1
  %call23 = tail call i32 @fclose(ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then15, %if.then10, %if.then4, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ null, %if.then4 ], [ null, %if.then10 ], [ null, %if.then15 ], [ %call18, %if.end21 ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @ParseContent(ptr nocapture noundef writeonly %p_Inp, ptr nocapture noundef readonly %Map, ptr noundef %buf, i32 noundef %bufsize) local_unnamed_addr #0 {
entry:
  %items = alloca [10000 x ptr], align 16
  %IntContent = alloca i32, align 4
  %DoubleContent = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 80000, ptr nonnull %items) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80000) %items, i8 0, i64 80000, i1 false)
  %idxprom = sext i32 %bufsize to i64
  %arrayidx = getelementptr inbounds i8, ptr %buf, i64 %idxprom
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %IntContent) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %DoubleContent) #12
  %cmp173 = icmp sgt i32 %bufsize, 0
  br i1 %cmp173, label %while.body, label %for.end

while.body:                                       ; preds = %entry, %sw.epilog
  %item.0177 = phi i32 [ %item.3, %sw.epilog ], [ 0, %entry ]
  %p.0176 = phi ptr [ %p.2, %sw.epilog ], [ %buf, %entry ]
  %InItem.0175 = phi i32 [ %InItem.3, %sw.epilog ], [ 0, %entry ]
  %InString.0174 = phi i32 [ %InString.1, %sw.epilog ], [ 0, %entry ]
  %0 = load i8, ptr %p.0176, align 1
  switch i8 %0, label %sw.default [
    i8 13, label %sw.bb
    i8 35, label %sw.bb1
    i8 10, label %sw.bb10
    i8 32, label %sw.bb12
    i8 9, label %sw.bb12
    i8 34, label %sw.bb15
  ]

sw.bb:                                            ; preds = %while.body
  %incdec.ptr = getelementptr inbounds i8, ptr %p.0176, i64 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %while.body
  store i8 0, ptr %p.0176, align 1
  br label %while.cond2

while.cond2:                                      ; preds = %while.cond2, %sw.bb1
  %p.1 = phi ptr [ %p.0176, %sw.bb1 ], [ %incdec.ptr9, %while.cond2 ]
  %1 = load i8, ptr %p.1, align 1
  %cmp4 = icmp ne i8 %1, 10
  %cmp6 = icmp ult ptr %p.1, %arrayidx
  %2 = and i1 %cmp6, %cmp4
  %incdec.ptr9 = getelementptr inbounds i8, ptr %p.1, i64 1
  br i1 %2, label %while.cond2, label %sw.epilog

sw.bb10:                                          ; preds = %while.body
  %incdec.ptr11 = getelementptr inbounds i8, ptr %p.0176, i64 1
  store i8 0, ptr %p.0176, align 1
  br label %sw.epilog

sw.bb12:                                          ; preds = %while.body, %while.body
  %tobool.not = icmp eq i32 %InString.0174, 0
  %incdec.ptr14 = getelementptr inbounds i8, ptr %p.0176, i64 1
  br i1 %tobool.not, label %if.else, label %sw.epilog

if.else:                                          ; preds = %sw.bb12
  store i8 0, ptr %p.0176, align 1
  br label %sw.epilog

sw.bb15:                                          ; preds = %while.body
  %incdec.ptr16 = getelementptr inbounds i8, ptr %p.0176, i64 1
  store i8 0, ptr %p.0176, align 1
  %tobool17.not = icmp eq i32 %InString.0174, 0
  br i1 %tobool17.not, label %if.then18, label %if.end22

if.then18:                                        ; preds = %sw.bb15
  %inc = add nsw i32 %item.0177, 1
  %idxprom19 = sext i32 %item.0177 to i64
  %arrayidx20 = getelementptr inbounds [10000 x ptr], ptr %items, i64 0, i64 %idxprom19
  store ptr %incdec.ptr16, ptr %arrayidx20, align 8
  %not = xor i32 %InItem.0175, -1
  br label %if.end22

if.end22:                                         ; preds = %sw.bb15, %if.then18
  %InItem.1 = phi i32 [ %not, %if.then18 ], [ 0, %sw.bb15 ]
  %item.1 = phi i32 [ %inc, %if.then18 ], [ %item.0177, %sw.bb15 ]
  %not23 = xor i32 %InString.0174, -1
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %tobool24.not = icmp eq i32 %InItem.0175, 0
  br i1 %tobool24.not, label %if.then25, label %if.end30

if.then25:                                        ; preds = %sw.default
  %inc26 = add nsw i32 %item.0177, 1
  %idxprom27 = sext i32 %item.0177 to i64
  %arrayidx28 = getelementptr inbounds [10000 x ptr], ptr %items, i64 0, i64 %idxprom27
  store ptr %p.0176, ptr %arrayidx28, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %sw.default
  %item.2 = phi i32 [ %item.0177, %sw.default ], [ %inc26, %if.then25 ]
  %incdec.ptr31 = getelementptr inbounds i8, ptr %p.0176, i64 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.cond2, %sw.bb12, %if.else, %if.end30, %if.end22, %sw.bb10, %sw.bb
  %InString.1 = phi i32 [ %InString.0174, %if.end30 ], [ %not23, %if.end22 ], [ 0, %if.else ], [ 0, %sw.bb10 ], [ %InString.0174, %sw.bb ], [ -1, %sw.bb12 ], [ 0, %while.cond2 ]
  %InItem.3 = phi i32 [ -1, %if.end30 ], [ %InItem.1, %if.end22 ], [ 0, %if.else ], [ 0, %sw.bb10 ], [ %InItem.0175, %sw.bb ], [ %InItem.0175, %sw.bb12 ], [ 0, %while.cond2 ]
  %p.2 = phi ptr [ %incdec.ptr31, %if.end30 ], [ %incdec.ptr16, %if.end22 ], [ %incdec.ptr14, %if.else ], [ %incdec.ptr11, %sw.bb10 ], [ %incdec.ptr, %sw.bb ], [ %incdec.ptr14, %sw.bb12 ], [ %p.1, %while.cond2 ]
  %item.3 = phi i32 [ %item.2, %if.end30 ], [ %item.1, %if.end22 ], [ %item.0177, %if.else ], [ %item.0177, %sw.bb10 ], [ %item.0177, %sw.bb ], [ %item.0177, %sw.bb12 ], [ %item.0177, %while.cond2 ]
  %cmp = icmp ult ptr %p.2, %arrayidx
  br i1 %cmp, label %while.body, label %while.end32

while.end32:                                      ; preds = %sw.epilog
  %dec = add nsw i32 %item.3, -1
  %cmp33178 = icmp sgt i32 %item.3, 1
  br i1 %cmp33178, label %for.body, label %for.end

for.body:                                         ; preds = %while.end32, %for.inc
  %i.0179 = phi i32 [ %add119, %for.inc ], [ 0, %while.end32 ]
  %idxprom35 = sext i32 %i.0179 to i64
  %arrayidx36 = getelementptr inbounds [10000 x ptr], ptr %items, i64 0, i64 %idxprom35
  %3 = load ptr, ptr %arrayidx36, align 8
  %4 = load ptr, ptr %Map, align 8
  %cmp.not9.i = icmp eq ptr %4, null
  br i1 %cmp.not9.i, label %if.then39, label %while.body.i

while.body.i:                                     ; preds = %for.body, %if.else.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %if.else.i ], [ 0, %for.body ]
  %5 = phi ptr [ %6, %if.else.i ], [ %4, %for.body ]
  %call.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull readonly dereferenceable(1) %3) #14
  %cmp4.i = icmp eq i32 %call.i, 0
  br i1 %cmp4.i, label %if.end43, label %if.else.i

if.else.i:                                        ; preds = %while.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %arrayidx.i = getelementptr inbounds %struct.Mapping, ptr %Map, i64 %indvars.iv.next.i
  %6 = load ptr, ptr %arrayidx.i, align 8
  %cmp.not.i = icmp eq ptr %6, null
  br i1 %cmp.not.i, label %if.then39, label %while.body.i

if.then39:                                        ; preds = %if.else.i, %for.body
  %call42 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef %3)
  %sub = add nsw i32 %i.0179, -2
  br label %for.inc

if.end43:                                         ; preds = %while.body.i
  %add = add nsw i32 %i.0179, 1
  %idxprom44 = sext i32 %add to i64
  %arrayidx45 = getelementptr inbounds [10000 x ptr], ptr %items, i64 0, i64 %idxprom44
  %7 = load ptr, ptr %arrayidx45, align 8
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = sub nsw i32 61, %9
  %.not = icmp eq i8 %8, 61
  br i1 %.not, label %sub_1, label %if.end43.tail

sub_1:                                            ; preds = %if.end43
  %11 = getelementptr inbounds i8, ptr %7, i64 1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = sub nsw i32 0, %13
  br label %if.end43.tail

if.end43.tail:                                    ; preds = %if.end43, %sub_1
  %15 = phi i32 [ %10, %if.end43 ], [ %14, %sub_1 ]
  %tobool47.not = icmp eq i32 %15, 0
  br i1 %tobool47.not, label %if.end50, label %if.then48

if.then48:                                        ; preds = %if.end43.tail
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(78) @errortext, ptr noundef nonnull align 1 dereferenceable(78) @.str.7, i64 78, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef 300) #12
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end43.tail
  %idxprom51 = and i64 %indvars.iv.i, 4294967295
  %arrayidx52 = getelementptr inbounds %struct.Mapping, ptr %Map, i64 %idxprom51
  %Type = getelementptr inbounds i8, ptr %arrayidx52, i64 16
  %16 = load i32, ptr %Type, align 8
  switch i32 %16, label %sw.default117 [
    i32 0, label %sw.bb53
    i32 1, label %sw.bb71
    i32 2, label %sw.bb98
  ]

sw.bb53:                                          ; preds = %if.end50
  %add54 = add nsw i32 %i.0179, 2
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds [10000 x ptr], ptr %items, i64 0, i64 %idxprom55
  %17 = load ptr, ptr %arrayidx56, align 8
  %call57 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %17, ptr noundef nonnull @.str.8, ptr noundef nonnull %IntContent) #12
  %cmp58.not = icmp eq i32 %call57, 1
  br i1 %cmp58.not, label %if.end67, label %if.then60

if.then60:                                        ; preds = %sw.bb53
  %call66 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.9, ptr noundef %3, ptr noundef %17) #12
  call void @error(ptr noundef nonnull @errortext, i32 noundef 300) #12
  br label %if.end67

if.end67:                                         ; preds = %if.then60, %sw.bb53
  %18 = load i32, ptr %IntContent, align 4
  %Place = getelementptr inbounds i8, ptr %arrayidx52, i64 8
  %19 = load ptr, ptr %Place, align 8
  store i32 %18, ptr %19, align 4
  %putchar169 = call i32 @putchar(i32 46)
  br label %for.inc

sw.bb71:                                          ; preds = %if.end50
  %add72 = add nsw i32 %i.0179, 2
  %idxprom73 = sext i32 %add72 to i64
  %arrayidx74 = getelementptr inbounds [10000 x ptr], ptr %items, i64 0, i64 %idxprom73
  %20 = load ptr, ptr %arrayidx74, align 8
  %cmp75 = icmp eq ptr %20, null
  %Place80 = getelementptr inbounds i8, ptr %arrayidx52, i64 8
  %21 = load ptr, ptr %Place80, align 8
  %char_size = getelementptr inbounds i8, ptr %arrayidx52, i64 56
  %22 = load i32, ptr %char_size, align 8
  %conv83 = sext i32 %22 to i64
  br i1 %cmp75, label %if.then77, label %if.else84

if.then77:                                        ; preds = %sw.bb71
  call void @llvm.memset.p0.i64(ptr align 1 %21, i8 0, i64 %conv83, i1 false)
  br label %if.end96

if.else84:                                        ; preds = %sw.bb71
  %call95 = call ptr @strncpy(ptr noundef %21, ptr noundef nonnull %20, i64 noundef %conv83) #12
  br label %if.end96

if.end96:                                         ; preds = %if.else84, %if.then77
  %putchar168 = call i32 @putchar(i32 46)
  br label %for.inc

sw.bb98:                                          ; preds = %if.end50
  %add99 = add nsw i32 %i.0179, 2
  %idxprom100 = sext i32 %add99 to i64
  %arrayidx101 = getelementptr inbounds [10000 x ptr], ptr %items, i64 0, i64 %idxprom100
  %23 = load ptr, ptr %arrayidx101, align 8
  %call102 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %23, ptr noundef nonnull @.str.11, ptr noundef nonnull %DoubleContent) #12
  %cmp103.not = icmp eq i32 %call102, 1
  br i1 %cmp103.not, label %if.end112, label %if.then105

if.then105:                                       ; preds = %sw.bb98
  %call111 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.9, ptr noundef %3, ptr noundef %23) #12
  call void @error(ptr noundef nonnull @errortext, i32 noundef 300) #12
  br label %if.end112

if.end112:                                        ; preds = %if.then105, %sw.bb98
  %24 = load double, ptr %DoubleContent, align 8
  %Place115 = getelementptr inbounds i8, ptr %arrayidx52, i64 8
  %25 = load ptr, ptr %Place115, align 8
  store double %24, ptr %25, align 8
  %putchar = call i32 @putchar(i32 46)
  br label %for.inc

sw.default117:                                    ; preds = %if.end50
  call void @error(ptr noundef nonnull @.str.12, i32 noundef -1) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end67, %if.end96, %if.end112, %sw.default117, %if.then39
  %i.1 = phi i32 [ %sub, %if.then39 ], [ %i.0179, %sw.default117 ], [ %i.0179, %if.end112 ], [ %i.0179, %if.end96 ], [ %i.0179, %if.end67 ]
  %add119 = add nsw i32 %i.1, 3
  %cmp33 = icmp slt i32 %add119, %dec
  br i1 %cmp33, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry, %while.end32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4016) %p_Inp, ptr noundef nonnull align 8 dereferenceable(4016) @cfgparams, i64 4016, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %DoubleContent) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %IntContent) #12
  call void @llvm.lifetime.end.p0(i64 80000, ptr nonnull %items) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @InitParams(ptr nocapture noundef readonly %Map) local_unnamed_addr #9 {
entry:
  %0 = load ptr, ptr %Map, align 8
  %cmp.not34 = icmp eq ptr %0, null
  br i1 %cmp.not34, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end20
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end20 ], [ 0, %entry ]
  %arrayidx36 = getelementptr inbounds %struct.Mapping, ptr %Map, i64 %indvars.iv
  %Type = getelementptr inbounds i8, ptr %arrayidx36, i64 16
  %1 = load i32, ptr %Type, align 8
  switch i32 %1, label %if.end20 [
    i32 0, label %if.then
    i32 2, label %if.then13
  ]

if.then:                                          ; preds = %while.body
  %Default = getelementptr inbounds i8, ptr %arrayidx36, i64 24
  %2 = load double, ptr %Default, align 8
  %conv = fptosi double %2 to i32
  %Place = getelementptr inbounds i8, ptr %arrayidx36, i64 8
  %3 = load ptr, ptr %Place, align 8
  store i32 %conv, ptr %3, align 4
  br label %if.end20

if.then13:                                        ; preds = %while.body
  %Default16 = getelementptr inbounds i8, ptr %arrayidx36, i64 24
  %4 = load double, ptr %Default16, align 8
  %Place19 = getelementptr inbounds i8, ptr %arrayidx36, i64 8
  %5 = load ptr, ptr %Place19, align 8
  store double %4, ptr %5, align 8
  br label %if.end20

if.end20:                                         ; preds = %while.body, %if.then13, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds %struct.Mapping, ptr %Map, i64 %indvars.iv.next
  %6 = load ptr, ptr %arrayidx, align 8
  %cmp.not = icmp eq ptr %6, null
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end20, %entry
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @TestParams(ptr nocapture noundef readonly %Map, ptr noundef readonly %bitdepth_qp_scale) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %Map, align 8
  %cmp.not250 = icmp eq ptr %0, null
  br i1 %cmp.not250, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %tobool.not = icmp eq ptr %bitdepth_qp_scale, null
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end169
  %indvars.iv = phi i64 [ 0, %while.body.lr.ph ], [ %indvars.iv.next, %if.end169 ]
  %1 = phi ptr [ %0, %while.body.lr.ph ], [ %23, %if.end169 ]
  %arrayidx252 = getelementptr inbounds %struct.Mapping, ptr %Map, i64 %indvars.iv
  %param_limits = getelementptr inbounds i8, ptr %arrayidx252, i64 32
  %2 = load i32, ptr %param_limits, align 8
  switch i32 %2, label %if.end169 [
    i32 1, label %if.then
    i32 2, label %if.then77
    i32 3, label %if.then135
  ]

if.then:                                          ; preds = %while.body
  %Type = getelementptr inbounds i8, ptr %arrayidx252, i64 16
  %3 = load i32, ptr %Type, align 8
  switch i32 %3, label %if.end169 [
    i32 0, label %if.then7
    i32 2, label %if.then39
  ]

if.then7:                                         ; preds = %if.then
  %Place = getelementptr inbounds i8, ptr %arrayidx252, i64 8
  %4 = load ptr, ptr %Place, align 8
  %5 = load i32, ptr %4, align 4
  %min_limit = getelementptr inbounds i8, ptr %arrayidx252, i64 40
  %6 = load double, ptr %min_limit, align 8
  %conv = fptosi double %6 to i32
  %cmp12 = icmp slt i32 %5, %conv
  %max_limit32.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx252, i64 48
  %.pre254 = load double, ptr %max_limit32.phi.trans.insert, align 8
  %.pre255 = fptosi double %.pre254 to i32
  %cmp20 = icmp sgt i32 %5, %.pre255
  %or.cond256 = select i1 %cmp12, i1 true, i1 %cmp20
  br i1 %or.cond256, label %if.then22, label %if.end169

if.then22:                                        ; preds = %if.then7
  %call = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.13, ptr noundef nonnull %1, i32 noundef %conv, i32 noundef %.pre255) #12
  br label %if.end169.sink.split

if.then39:                                        ; preds = %if.then
  %Place42 = getelementptr inbounds i8, ptr %arrayidx252, i64 8
  %7 = load ptr, ptr %Place42, align 8
  %8 = load double, ptr %7, align 8
  %min_limit45 = getelementptr inbounds i8, ptr %arrayidx252, i64 40
  %9 = load double, ptr %min_limit45, align 8
  %cmp46 = fcmp olt double %8, %9
  %max_limit66.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx252, i64 48
  %.pre = load double, ptr %max_limit66.phi.trans.insert, align 8
  %cmp55 = fcmp ogt double %8, %.pre
  %or.cond257 = select i1 %cmp46, i1 true, i1 %cmp55
  br i1 %or.cond257, label %if.then57, label %if.end169

if.then57:                                        ; preds = %if.then39
  %call67 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.14, ptr noundef nonnull %1, double noundef %9, double noundef %.pre) #12
  br label %if.end169.sink.split

if.then77:                                        ; preds = %while.body
  %Type80 = getelementptr inbounds i8, ptr %arrayidx252, i64 16
  %10 = load i32, ptr %Type80, align 8
  switch i32 %10, label %if.end169 [
    i32 0, label %if.then83
    i32 2, label %if.then109
  ]

if.then83:                                        ; preds = %if.then77
  %Place86 = getelementptr inbounds i8, ptr %arrayidx252, i64 8
  %11 = load ptr, ptr %Place86, align 8
  %12 = load i32, ptr %11, align 4
  %min_limit89 = getelementptr inbounds i8, ptr %arrayidx252, i64 40
  %13 = load double, ptr %min_limit89, align 8
  %conv90 = fptosi double %13 to i32
  %cmp91 = icmp slt i32 %12, %conv90
  br i1 %cmp91, label %if.then93, label %if.end169

if.then93:                                        ; preds = %if.then83
  %call101 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.15, ptr noundef nonnull %1, i32 noundef %conv90) #12
  br label %if.end169.sink.split

if.then109:                                       ; preds = %if.then77
  %Place112 = getelementptr inbounds i8, ptr %arrayidx252, i64 8
  %14 = load ptr, ptr %Place112, align 8
  %15 = load double, ptr %14, align 8
  %min_limit115 = getelementptr inbounds i8, ptr %arrayidx252, i64 40
  %16 = load double, ptr %min_limit115, align 8
  %cmp116 = fcmp olt double %15, %16
  br i1 %cmp116, label %if.then118, label %if.end169

if.then118:                                       ; preds = %if.then109
  %call125 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.16, ptr noundef nonnull %1, double noundef %16) #12
  br label %if.end169.sink.split

if.then135:                                       ; preds = %while.body
  %Type138 = getelementptr inbounds i8, ptr %arrayidx252, i64 16
  %17 = load i32, ptr %Type138, align 8
  %cmp139 = icmp eq i32 %17, 0
  br i1 %cmp139, label %if.then141, label %if.end169

if.then141:                                       ; preds = %if.then135
  %Place144 = getelementptr inbounds i8, ptr %arrayidx252, i64 8
  %18 = load ptr, ptr %Place144, align 8
  %19 = load i32, ptr %18, align 4
  %min_limit147 = getelementptr inbounds i8, ptr %arrayidx252, i64 40
  %20 = load double, ptr %min_limit147, align 8
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then141
  %21 = load i32, ptr %bitdepth_qp_scale, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.then141, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ 0, %if.then141 ]
  %conv149 = sitofp i32 %cond to double
  %sub = fsub double %20, %conv149
  %conv150 = fptosi double %sub to i32
  %max_limit153 = getelementptr inbounds i8, ptr %arrayidx252, i64 48
  %22 = load double, ptr %max_limit153, align 8
  %conv154 = fptosi double %22 to i32
  %cmp155 = icmp slt i32 %19, %conv150
  %cmp158 = icmp sgt i32 %19, %conv154
  %or.cond = select i1 %cmp155, i1 true, i1 %cmp158
  br i1 %or.cond, label %if.then160, label %if.end169

if.then160:                                       ; preds = %cond.end
  %call164 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.13, ptr noundef nonnull %1, i32 noundef %conv150, i32 noundef %conv154) #12
  br label %if.end169.sink.split

if.end169.sink.split:                             ; preds = %if.then57, %if.then22, %if.then93, %if.then118, %if.then160
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 400) #12
  br label %if.end169

if.end169:                                        ; preds = %if.end169.sink.split, %if.then39, %if.then7, %cond.end, %while.body, %if.then77, %if.then, %if.then109, %if.then83, %if.then135
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds %struct.Mapping, ptr %Map, i64 %indvars.iv.next
  %23 = load ptr, ptr %arrayidx, align 8
  %cmp.not = icmp eq ptr %23, null
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end169, %entry
  ret i32 -1
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @DisplayParams(ptr nocapture noundef readonly %Map, ptr noundef %message) local_unnamed_addr #10 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.23)
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef %message)
  %puts61 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.23)
  %0 = load ptr, ptr %Map, align 8
  %cmp.not63 = icmp eq ptr %0, null
  br i1 %cmp.not63, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end38
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end38 ], [ 0, %entry ]
  %1 = phi ptr [ %8, %if.end38 ], [ %0, %entry ]
  %arrayidx65 = getelementptr inbounds %struct.Mapping, ptr %Map, i64 %indvars.iv
  %Type = getelementptr inbounds i8, ptr %arrayidx65, i64 16
  %2 = load i32, ptr %Type, align 8
  switch i32 %2, label %if.end38 [
    i32 0, label %if.then
    i32 1, label %if.then16
    i32 2, label %if.then29
  ]

if.then:                                          ; preds = %while.body
  %Place = getelementptr inbounds i8, ptr %arrayidx65, i64 8
  %3 = load ptr, ptr %Place, align 8
  %4 = load i32, ptr %3, align 4
  %call11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, ptr noundef nonnull %1, i32 noundef %4)
  br label %if.end38

if.then16:                                        ; preds = %while.body
  %Place22 = getelementptr inbounds i8, ptr %arrayidx65, i64 8
  %5 = load ptr, ptr %Place22, align 8
  %call23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, ptr noundef nonnull %1, ptr noundef %5)
  br label %if.end38

if.then29:                                        ; preds = %while.body
  %Place35 = getelementptr inbounds i8, ptr %arrayidx65, i64 8
  %6 = load ptr, ptr %Place35, align 8
  %7 = load double, ptr %6, align 8
  %call36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef nonnull %1, double noundef %7)
  br label %if.end38

if.end38:                                         ; preds = %while.body, %if.then16, %if.then29, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds %struct.Mapping, ptr %Map, i64 %indvars.iv.next
  %8 = load ptr, ptr %arrayidx, align 8
  %cmp.not = icmp eq ptr %8, null
  br i1 %cmp.not, label %while.end.loopexit, label %while.body

while.end.loopexit:                               ; preds = %if.end38
  %9 = trunc nuw i64 %indvars.iv.next to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry
  %i.0.lcssa = phi i32 [ 0, %entry ], [ %9, %while.end.loopexit ]
  %puts62 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.23)
  ret i32 %i.0.lcssa
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
