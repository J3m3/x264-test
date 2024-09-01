; ModuleID = 'ldecod_src/img_io.c'
source_filename = "ldecod_src/img_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_size = type { ptr, i32, i32 }

@.str.2 = private unnamed_addr constant [3 x i8] c"_.\00", align 1, !dbg !0
@.str.3 = private unnamed_addr constant [3 x i8] c"ip\00", align 1, !dbg !7
@VideoRes = internal unnamed_addr constant [12 x %struct.video_size] [%struct.video_size { ptr @.str.15, i32 176, i32 144 }, %struct.video_size { ptr @.str.16, i32 160, i32 128 }, %struct.video_size { ptr @.str.17, i32 320, i32 240 }, %struct.video_size { ptr @.str.18, i32 352, i32 240 }, %struct.video_size { ptr @.str.19, i32 352, i32 288 }, %struct.video_size { ptr @.str.20, i32 640, i32 480 }, %struct.video_size { ptr @.str.21, i32 720, i32 480 }, %struct.video_size { ptr @.str.22, i32 704, i32 576 }, %struct.video_size { ptr @.str.23, i32 720, i32 576 }, %struct.video_size { ptr @.str.24, i32 1280, i32 720 }, %struct.video_size { ptr @.str.25, i32 1920, i32 1080 }, %struct.video_size zeroinitializer], align 16, !dbg !9
@.str.6 = private unnamed_addr constant [5 x i8] c"%0*d\00", align 1, !dbg !51
@.str.7 = private unnamed_addr constant [4 x i8] c"%*d\00", align 1, !dbg !56
@.str.8 = private unnamed_addr constant [36 x i8] c"OpenFrameFile: cannot open file %s\0A\00", align 1, !dbg !61
@errortext = external global [300 x i8], align 16
@.str.9 = private unnamed_addr constant [60 x i8] c"No input sequence name was provided. Please check settings.\00", align 1, !dbg !66
@.str.10 = private unnamed_addr constant [29 x i8] c"Input file %s does not exist\00", align 1, !dbg !71
@.str.11 = private unnamed_addr constant [4 x i8] c"yuv\00", align 1, !dbg !76
@.str.12 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1, !dbg !78
@.str.13 = private unnamed_addr constant [4 x i8] c"tif\00", align 1, !dbg !80
@.str.14 = private unnamed_addr constant [4 x i8] c"avi\00", align 1, !dbg !82
@.str.15 = private unnamed_addr constant [5 x i8] c"qcif\00", align 1, !dbg !84
@.str.16 = private unnamed_addr constant [6 x i8] c"qqvga\00", align 1, !dbg !86
@.str.17 = private unnamed_addr constant [5 x i8] c"qvga\00", align 1, !dbg !91
@.str.18 = private unnamed_addr constant [4 x i8] c"sif\00", align 1, !dbg !93
@.str.19 = private unnamed_addr constant [4 x i8] c"cif\00", align 1, !dbg !95
@.str.20 = private unnamed_addr constant [4 x i8] c"vga\00", align 1, !dbg !97
@.str.21 = private unnamed_addr constant [4 x i8] c"sd1\00", align 1, !dbg !99
@.str.22 = private unnamed_addr constant [4 x i8] c"sd2\00", align 1, !dbg !101
@.str.23 = private unnamed_addr constant [4 x i8] c"sd3\00", align 1, !dbg !103
@.str.24 = private unnamed_addr constant [5 x i8] c"720p\00", align 1, !dbg !105
@.str.25 = private unnamed_addr constant [6 x i8] c"1080p\00", align 1, !dbg !107

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 2) i32 @ParseSizeFromString(ptr noundef %input_file, ptr nocapture noundef %x_size, ptr nocapture noundef %y_size, ptr nocapture noundef writeonly %fps) local_unnamed_addr #0 !dbg !128 {
entry:
  %tail = alloca ptr, align 8, !DIAssignID !197
    #dbg_assign(i1 undef, !193, !DIExpression(), !197, ptr %tail, !DIExpression(), !198)
    #dbg_value(ptr %input_file, !187, !DIExpression(), !198)
    #dbg_value(ptr %x_size, !188, !DIExpression(), !198)
    #dbg_value(ptr %y_size, !189, !DIExpression(), !198)
    #dbg_value(ptr %fps, !190, !DIExpression(), !198)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tail) #12, !dbg !199
    #dbg_value(ptr %input_file, !194, !DIExpression(), !198)
    #dbg_value(i32 0, !196, !DIExpression(), !198)
  store i32 -1, ptr %y_size, align 4, !dbg !200
  store i32 -1, ptr %x_size, align 4, !dbg !201
    #dbg_value(ptr %input_file, !192, !DIExpression(), !198)
    #dbg_value(ptr %input_file, !191, !DIExpression(), !198)
  %cmp124.not = icmp eq ptr %input_file, null, !dbg !202
  br i1 %cmp124.not, label %for.body.preheader, label %while.body.preheader, !dbg !203

while.body.preheader:                             ; preds = %entry
    #dbg_value(ptr %input_file, !191, !DIExpression(), !198)
    #dbg_value(ptr poison, !192, !DIExpression(), !198)
  %strchr146 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %input_file, i32 95), !dbg !204
  %cmp2147 = icmp eq ptr %strchr146, null, !dbg !206
  br i1 %cmp2147, label %while.end.loopexit, label %if.end, !dbg !208

if.end:                                           ; preds = %while.body.preheader, %while.cond.backedge
  %cmp2149 = phi i1 [ %cmp2, %while.cond.backedge ], [ %cmp2147, %while.body.preheader ]
  %strchr148 = phi ptr [ %strchr, %while.cond.backedge ], [ %strchr146, %while.body.preheader ]
  %strchr122 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %strchr148, i32 120), !dbg !209
    #dbg_value(ptr %strchr122, !192, !DIExpression(), !198)
  %cmp4 = icmp eq ptr %strchr122, null, !dbg !210
  br i1 %cmp4, label %while.end.loopexit, label %if.end6, !dbg !212

if.end6:                                          ; preds = %if.end
  store i8 0, ptr %strchr122, align 1, !dbg !213
  %add.ptr = getelementptr inbounds i8, ptr %strchr148, i64 1, !dbg !214
  %call7 = call i64 @strtol(ptr noundef nonnull %add.ptr, ptr noundef nonnull %tail, i32 noundef 10) #12, !dbg !215
  %conv = trunc i64 %call7 to i32, !dbg !215
  store i32 %conv, ptr %x_size, align 4, !dbg !216
  %0 = load ptr, ptr %tail, align 8, !dbg !217
  %1 = load i8, ptr %0, align 1, !dbg !219
  %cmp9.not = icmp eq i8 %1, 0, !dbg !220
  br i1 %cmp9.not, label %lor.lhs.false, label %if.then15, !dbg !221

lor.lhs.false:                                    ; preds = %if.end6
  %2 = load i8, ptr %add.ptr, align 1, !dbg !222
  %cmp13 = icmp eq i8 %2, 0, !dbg !223
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !224

if.then15:                                        ; preds = %lor.lhs.false, %if.end6
  store i8 120, ptr %strchr122, align 1, !dbg !225
    #dbg_value(ptr %0, !191, !DIExpression(), !198)
  br label %while.cond.backedge, !dbg !227

while.cond.backedge:                              ; preds = %if.then15, %if.then35, %if.then53, %if.end16
  %p1.0.be = phi ptr [ %0, %if.then15 ], [ %4, %if.then35 ], [ %8, %if.then53 ], [ %add.ptr17, %if.end16 ]
    #dbg_value(ptr %p1.0.be, !191, !DIExpression(), !198)
    #dbg_value(ptr poison, !192, !DIExpression(), !198)
  %strchr = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %p1.0.be, i32 95), !dbg !204
    #dbg_value(ptr %strchr, !191, !DIExpression(), !198)
  %cmp2 = icmp eq ptr %strchr, null, !dbg !206
  br i1 %cmp2, label %while.end.loopexit, label %if.end, !dbg !208

if.end16:                                         ; preds = %lor.lhs.false
  store i8 120, ptr %strchr122, align 1, !dbg !228
  %add.ptr17 = getelementptr inbounds i8, ptr %strchr122, i64 1, !dbg !229
  %call18 = tail call ptr @strpbrk(ptr noundef nonnull %add.ptr17, ptr noundef nonnull @.str.2) #13, !dbg !230
    #dbg_value(ptr %call18, !191, !DIExpression(), !198)
  %cmp19 = icmp eq ptr %call18, null, !dbg !231
  br i1 %cmp19, label %while.cond.backedge, label %if.end23, !dbg !233

if.end23:                                         ; preds = %if.end16
  %3 = load i8, ptr %call18, align 1, !dbg !234
    #dbg_value(i8 %3, !195, !DIExpression(), !198)
  store i8 0, ptr %call18, align 1, !dbg !235
  %call25 = call i64 @strtol(ptr noundef nonnull %add.ptr17, ptr noundef nonnull %tail, i32 noundef 10) #12, !dbg !236
  %conv26 = trunc i64 %call25 to i32, !dbg !236
  store i32 %conv26, ptr %y_size, align 4, !dbg !237
  %4 = load ptr, ptr %tail, align 8, !dbg !238
  %5 = load i8, ptr %4, align 1, !dbg !240
  %cmp28.not = icmp eq i8 %5, 0, !dbg !241
  br i1 %cmp28.not, label %lor.lhs.false30, label %if.then35, !dbg !242

lor.lhs.false30:                                  ; preds = %if.end23
  %6 = load i8, ptr %add.ptr17, align 1, !dbg !243
  %cmp33 = icmp eq i8 %6, 0, !dbg !244
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !245

if.then35:                                        ; preds = %lor.lhs.false30, %if.end23
  store i8 %3, ptr %call18, align 1, !dbg !246
    #dbg_value(ptr %4, !191, !DIExpression(), !198)
  br label %while.cond.backedge, !dbg !248

if.end36:                                         ; preds = %lor.lhs.false30
  store i8 %3, ptr %call18, align 1, !dbg !249
  %add.ptr37 = getelementptr inbounds i8, ptr %call18, i64 1, !dbg !250
  %call38 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %add.ptr37, ptr noundef nonnull dereferenceable(1) @.str.3) #13, !dbg !251
    #dbg_value(ptr %call38, !192, !DIExpression(), !198)
  %cmp39 = icmp eq ptr %call38, null, !dbg !252
  br i1 %cmp39, label %while.end.loopexit, label %if.end42, !dbg !254

if.end42:                                         ; preds = %if.end36
  %7 = load i8, ptr %call38, align 1, !dbg !255
    #dbg_value(i8 %7, !195, !DIExpression(), !198)
  store i8 0, ptr %call38, align 1, !dbg !256
  %call44 = call double @strtod(ptr noundef nonnull %add.ptr37, ptr noundef nonnull %tail) #12, !dbg !257
  store double %call44, ptr %fps, align 8, !dbg !258
  %8 = load ptr, ptr %tail, align 8, !dbg !259
  %9 = load i8, ptr %8, align 1, !dbg !261
  %cmp46.not = icmp eq i8 %9, 0, !dbg !262
  br i1 %cmp46.not, label %lor.lhs.false48, label %if.then53, !dbg !263

lor.lhs.false48:                                  ; preds = %if.end42
  %10 = load i8, ptr %add.ptr37, align 1, !dbg !264
  %cmp51 = icmp eq i8 %10, 0, !dbg !265
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !266

if.then53:                                        ; preds = %lor.lhs.false48, %if.end42
  store i8 %7, ptr %call38, align 1, !dbg !267
    #dbg_value(ptr %8, !191, !DIExpression(), !198)
  br label %while.cond.backedge, !dbg !269

if.end54:                                         ; preds = %lor.lhs.false48
  store i8 %7, ptr %call38, align 1, !dbg !270
  br label %while.end, !dbg !271

while.end.loopexit:                               ; preds = %while.cond.backedge, %if.end, %if.end36, %while.body.preheader
  %cmp2.lcssa = phi i1 [ %cmp2147, %while.body.preheader ], [ %cmp2, %while.cond.backedge ], [ %cmp2149, %if.end ], [ %cmp2149, %if.end36 ], !dbg !206
  %p2.1.ph.ph = xor i1 %cmp2.lcssa, true
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end54
  %cmp2145 = phi i1 [ %cmp2149, %if.end54 ], [ %cmp2.lcssa, %while.end.loopexit ]
  %p2.1 = phi i1 [ false, %if.end54 ], [ %p2.1.ph.ph, %while.end.loopexit ], !dbg !198
    #dbg_value(ptr poison, !191, !DIExpression(), !198)
    #dbg_value(ptr poison, !192, !DIExpression(), !198)
  %or.cond = or i1 %p2.1, %cmp2145, !dbg !272
  br i1 %or.cond, label %for.body.preheader, label %if.end75, !dbg !272

for.body.preheader:                               ; preds = %entry, %while.end
    #dbg_value(i64 0, !196, !DIExpression(), !198)
  %call66 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %input_file, ptr noundef nonnull dereferenceable(5) @.str.15) #13, !dbg !274
  %tobool.not = icmp eq i32 %call66, 0, !dbg !274
    #dbg_value(i64 0, !196, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !198)
  br i1 %tobool.not, label %for.cond, label %if.then67, !dbg !280

for.cond:                                         ; preds = %for.body.preheader
    #dbg_value(i64 1, !196, !DIExpression(), !198)
  %call66.1 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %input_file, ptr noundef nonnull dereferenceable(6) @.str.16) #13, !dbg !274
  %tobool.not.1 = icmp eq i32 %call66.1, 0, !dbg !274
    #dbg_value(i64 1, !196, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !198)
  br i1 %tobool.not.1, label %for.cond.1, label %if.then67, !dbg !280

for.cond.1:                                       ; preds = %for.cond
    #dbg_value(i64 2, !196, !DIExpression(), !198)
  %call66.2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %input_file, ptr noundef nonnull dereferenceable(5) @.str.17) #13, !dbg !274
  %tobool.not.2 = icmp eq i32 %call66.2, 0, !dbg !274
    #dbg_value(i64 2, !196, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !198)
  br i1 %tobool.not.2, label %for.cond.2, label %if.then67, !dbg !280

for.cond.2:                                       ; preds = %for.cond.1
    #dbg_value(i64 3, !196, !DIExpression(), !198)
  %call66.3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %input_file, ptr noundef nonnull dereferenceable(4) @.str.18) #13, !dbg !274
  %tobool.not.3 = icmp eq i32 %call66.3, 0, !dbg !274
    #dbg_value(i64 3, !196, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !198)
  br i1 %tobool.not.3, label %for.cond.3, label %if.then67, !dbg !280

for.cond.3:                                       ; preds = %for.cond.2
    #dbg_value(i64 4, !196, !DIExpression(), !198)
  %call66.4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %input_file, ptr noundef nonnull dereferenceable(4) @.str.19) #13, !dbg !274
  %tobool.not.4 = icmp eq i32 %call66.4, 0, !dbg !274
    #dbg_value(i64 4, !196, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !198)
  br i1 %tobool.not.4, label %for.cond.4, label %if.then67, !dbg !280

for.cond.4:                                       ; preds = %for.cond.3
    #dbg_value(i64 5, !196, !DIExpression(), !198)
  %call66.5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %input_file, ptr noundef nonnull dereferenceable(4) @.str.20) #13, !dbg !274
  %tobool.not.5 = icmp eq i32 %call66.5, 0, !dbg !274
    #dbg_value(i64 5, !196, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !198)
  br i1 %tobool.not.5, label %for.cond.5, label %if.then67, !dbg !280

for.cond.5:                                       ; preds = %for.cond.4
    #dbg_value(i64 6, !196, !DIExpression(), !198)
  %call66.6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %input_file, ptr noundef nonnull dereferenceable(4) @.str.21) #13, !dbg !274
  %tobool.not.6 = icmp eq i32 %call66.6, 0, !dbg !274
    #dbg_value(i64 6, !196, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !198)
  br i1 %tobool.not.6, label %for.cond.6, label %if.then67, !dbg !280

for.cond.6:                                       ; preds = %for.cond.5
    #dbg_value(i64 7, !196, !DIExpression(), !198)
  %call66.7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %input_file, ptr noundef nonnull dereferenceable(4) @.str.22) #13, !dbg !274
  %tobool.not.7 = icmp eq i32 %call66.7, 0, !dbg !274
    #dbg_value(i64 7, !196, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !198)
  br i1 %tobool.not.7, label %for.cond.7, label %if.then67, !dbg !280

for.cond.7:                                       ; preds = %for.cond.6
    #dbg_value(i64 8, !196, !DIExpression(), !198)
  %call66.8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %input_file, ptr noundef nonnull dereferenceable(4) @.str.23) #13, !dbg !274
  %tobool.not.8 = icmp eq i32 %call66.8, 0, !dbg !274
    #dbg_value(i64 8, !196, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !198)
  br i1 %tobool.not.8, label %for.cond.8, label %if.then67, !dbg !280

for.cond.8:                                       ; preds = %for.cond.7
    #dbg_value(i64 9, !196, !DIExpression(), !198)
  %call66.9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %input_file, ptr noundef nonnull dereferenceable(5) @.str.24) #13, !dbg !274
  %tobool.not.9 = icmp eq i32 %call66.9, 0, !dbg !274
    #dbg_value(i64 9, !196, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !198)
  br i1 %tobool.not.9, label %for.cond.9, label %if.then67, !dbg !280

for.cond.9:                                       ; preds = %for.cond.8
    #dbg_value(i64 10, !196, !DIExpression(), !198)
  %call66.10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %input_file, ptr noundef nonnull dereferenceable(6) @.str.25) #13, !dbg !274
  %tobool.not.10 = icmp eq i32 %call66.10, 0, !dbg !274
    #dbg_value(i64 10, !196, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !198)
  br i1 %tobool.not.10, label %if.end75, label %if.then67, !dbg !280

if.then67:                                        ; preds = %for.cond.9, %for.cond.8, %for.cond.7, %for.cond.6, %for.cond.5, %for.cond.4, %for.cond.3, %for.cond.2, %for.cond.1, %for.cond, %for.body.preheader
  %arrayidx136.lcssa = phi ptr [ @VideoRes, %for.body.preheader ], [ getelementptr inbounds (i8, ptr @VideoRes, i64 16), %for.cond ], [ getelementptr inbounds (i8, ptr @VideoRes, i64 32), %for.cond.1 ], [ getelementptr inbounds (i8, ptr @VideoRes, i64 48), %for.cond.2 ], [ getelementptr inbounds (i8, ptr @VideoRes, i64 64), %for.cond.3 ], [ getelementptr inbounds (i8, ptr @VideoRes, i64 80), %for.cond.4 ], [ getelementptr inbounds (i8, ptr @VideoRes, i64 96), %for.cond.5 ], [ getelementptr inbounds (i8, ptr @VideoRes, i64 112), %for.cond.6 ], [ getelementptr inbounds (i8, ptr @VideoRes, i64 128), %for.cond.7 ], [ getelementptr inbounds (i8, ptr @VideoRes, i64 144), %for.cond.8 ], [ getelementptr inbounds (i8, ptr @VideoRes, i64 160), %for.cond.9 ]
  %x_size70 = getelementptr inbounds i8, ptr %arrayidx136.lcssa, i64 8, !dbg !281
  %11 = load i32, ptr %x_size70, align 8, !dbg !281
  store i32 %11, ptr %x_size, align 4, !dbg !283
  %y_size73 = getelementptr inbounds i8, ptr %arrayidx136.lcssa, i64 12, !dbg !284
  %12 = load i32, ptr %y_size73, align 4, !dbg !284
  store i32 %12, ptr %y_size, align 4, !dbg !285
  br label %if.end75, !dbg !286

if.end75:                                         ; preds = %for.cond.9, %if.then67, %while.end
  %13 = load i32, ptr %x_size, align 4, !dbg !287
  %cmp76 = icmp eq i32 %13, -1, !dbg !288
  br i1 %cmp76, label %lor.end, label %lor.rhs, !dbg !289

lor.rhs:                                          ; preds = %if.end75
  %14 = load i32, ptr %y_size, align 4, !dbg !290
  %cmp78 = icmp ne i32 %14, -1, !dbg !291
  %15 = zext i1 %cmp78 to i32, !dbg !292
  br label %lor.end, !dbg !289

lor.end:                                          ; preds = %lor.rhs, %if.end75
  %not. = phi i32 [ 0, %if.end75 ], [ %15, %lor.rhs ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tail) #12, !dbg !293
  ret i32 %not., !dbg !294
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !295 ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !301 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !309 ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !310 double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !313 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @ParseFrameNoFormatFromString(ptr noundef %input_file) local_unnamed_addr #0 !dbg !316 {
while.body.lr.ph:
  %tail = alloca ptr, align 8, !DIAssignID !329
    #dbg_assign(i1 undef, !323, !DIExpression(), !329, ptr %tail, !DIExpression(), !330)
    #dbg_value(ptr %input_file, !320, !DIExpression(), !330)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tail) #12, !dbg !331
    #dbg_value(ptr %input_file, !324, !DIExpression(), !330)
  %fhead1 = getelementptr inbounds i8, ptr %input_file, i64 255, !dbg !332
    #dbg_value(ptr %fhead1, !325, !DIExpression(), !330)
  %ftail3 = getelementptr inbounds i8, ptr %input_file, i64 510, !dbg !333
    #dbg_value(ptr %ftail3, !326, !DIExpression(), !330)
  %zero_pad5 = getelementptr inbounds i8, ptr %input_file, i64 920, !dbg !334
    #dbg_value(ptr %zero_pad5, !327, !DIExpression(), !330)
  %num_digits6 = getelementptr inbounds i8, ptr %input_file, i64 924, !dbg !335
    #dbg_value(ptr %num_digits6, !328, !DIExpression(), !330)
  store i32 0, ptr %zero_pad5, align 4, !dbg !336
  store i32 -1, ptr %num_digits6, align 4, !dbg !337
    #dbg_value(ptr %input_file, !321, !DIExpression(), !330)
    #dbg_value(ptr poison, !322, !DIExpression(), !330)
  %sub.ptr.rhs.cast = ptrtoint ptr %input_file to i64
    #dbg_value(ptr %input_file, !321, !DIExpression(), !330)
  %strchr66 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %input_file, i32 37), !dbg !338
  %cmp867 = icmp eq ptr %strchr66, null, !dbg !340
  br i1 %cmp867, label %while.end, label %if.end, !dbg !342

if.end:                                           ; preds = %while.body.lr.ph, %if.then28
  %strchr68 = phi ptr [ %strchr, %if.then28 ], [ %strchr66, %while.body.lr.ph ]
  %sub.ptr.lhs.cast = ptrtoint ptr %strchr68 to i64, !dbg !343
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !343
  %call9 = tail call ptr @strncpy(ptr noundef nonnull %fhead1, ptr noundef nonnull %input_file, i64 noundef %sub.ptr.sub) #12, !dbg !344
  %strchr64 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %strchr68, i32 100), !dbg !345
    #dbg_value(ptr %strchr64, !322, !DIExpression(), !330)
  %cmp11 = icmp eq ptr %strchr64, null, !dbg !346
  br i1 %cmp11, label %while.end, label %if.end13, !dbg !348

if.end13:                                         ; preds = %if.end
  store i8 0, ptr %strchr64, align 1, !dbg !349
  %add.ptr = getelementptr inbounds i8, ptr %strchr68, i64 1, !dbg !350
  %0 = load i8, ptr %add.ptr, align 1, !dbg !352
  %cmp14 = icmp eq i8 %0, 48, !dbg !353
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !354

if.then16:                                        ; preds = %if.end13
  store i32 1, ptr %zero_pad5, align 4, !dbg !355
  br label %if.end17, !dbg !356

if.end17:                                         ; preds = %if.then16, %if.end13
  %call19 = call i64 @strtol(ptr noundef nonnull %add.ptr, ptr noundef nonnull %tail, i32 noundef 10) #12, !dbg !357
  %conv20 = trunc i64 %call19 to i32, !dbg !357
  store i32 %conv20, ptr %num_digits6, align 4, !dbg !358
  %1 = load ptr, ptr %tail, align 8, !dbg !359
  %2 = load i8, ptr %1, align 1, !dbg !361
  %cmp22.not = icmp eq i8 %2, 0, !dbg !362
  br i1 %cmp22.not, label %lor.lhs.false, label %if.then28, !dbg !363

lor.lhs.false:                                    ; preds = %if.end17
  %3 = load i8, ptr %add.ptr, align 1, !dbg !364
  %cmp26 = icmp eq i8 %3, 0, !dbg !365
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !366

if.then28:                                        ; preds = %lor.lhs.false, %if.end17
  store i8 100, ptr %strchr64, align 1, !dbg !367
    #dbg_value(ptr poison, !322, !DIExpression(), !330)
    #dbg_value(ptr %1, !321, !DIExpression(), !330)
  %strchr = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 37), !dbg !338
    #dbg_value(ptr %strchr, !321, !DIExpression(), !330)
  %cmp8 = icmp eq ptr %strchr, null, !dbg !340
  br i1 %cmp8, label %while.end, label %if.end, !dbg !342, !llvm.loop !369

if.end29:                                         ; preds = %lor.lhs.false
  store i8 100, ptr %strchr64, align 1, !dbg !372
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i64 1, !dbg !373
    #dbg_assign(ptr %incdec.ptr, !323, !DIExpression(), !374, ptr %tail, !DIExpression(), !330)
  %call30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %incdec.ptr) #13, !dbg !375
  %sext = shl i64 %call30, 32, !dbg !376
  %conv32 = ashr exact i64 %sext, 32, !dbg !376
  %call33 = tail call ptr @strncpy(ptr noundef nonnull %ftail3, ptr noundef nonnull %incdec.ptr, i64 noundef %conv32) #12, !dbg !377
  br label %while.end, !dbg !378

while.end:                                        ; preds = %if.end, %if.then28, %while.body.lr.ph, %if.end29
  %vdtype = getelementptr inbounds i8, ptr %input_file, i64 772, !dbg !379
  %4 = load i32, ptr %vdtype, align 4, !dbg !379
  %cmp34 = icmp eq i32 %4, 3, !dbg !381
  br i1 %cmp34, label %if.end40, label %if.else, !dbg !382

if.else:                                          ; preds = %while.end
  %5 = load i32, ptr %num_digits6, align 4, !dbg !383
  %cmp37 = icmp eq i32 %5, -1, !dbg !384
  %cond = zext i1 %cmp37 to i32, !dbg !385
  br label %if.end40

if.end40:                                         ; preds = %while.end, %if.else
  %cond.sink = phi i32 [ %cond, %if.else ], [ 0, %while.end ], !dbg !386
  %6 = getelementptr inbounds i8, ptr %input_file, i64 912, !dbg !386
  store i32 %cond.sink, ptr %6, align 8, !dbg !386
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tail) #12, !dbg !387
  ret void, !dbg !387
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare !dbg !388 ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !395 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @OpenFrameFile(ptr nocapture noundef %input_file, i32 noundef %FrameNumberInFile) local_unnamed_addr #5 !dbg !398 {
entry:
  %infile = alloca [255 x i8], align 16, !DIAssignID !410
    #dbg_assign(i1 undef, !404, !DIExpression(), !410, ptr %infile, !DIExpression(), !411)
  %in_number = alloca [16 x i8], align 16, !DIAssignID !412
    #dbg_assign(i1 undef, !405, !DIExpression(), !412, ptr %in_number, !DIExpression(), !411)
    #dbg_value(ptr %input_file, !402, !DIExpression(), !411)
    #dbg_value(i32 %FrameNumberInFile, !403, !DIExpression(), !411)
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %infile) #12, !dbg !413
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in_number) #12, !dbg !413
    #dbg_value(i32 0, !409, !DIExpression(), !411)
  store i8 0, ptr %in_number, align 16, !dbg !414
  %fhead = getelementptr inbounds i8, ptr %input_file, i64 255, !dbg !415
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %fhead) #13, !dbg !416
    #dbg_value(i64 %call, !409, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !411)
  %sext = shl i64 %call, 32, !dbg !417
  %conv4 = ashr exact i64 %sext, 32, !dbg !417
  %call5 = call ptr @strncpy(ptr noundef nonnull %infile, ptr noundef nonnull %fhead, i64 noundef %conv4) #12, !dbg !418
  %arrayidx7 = getelementptr inbounds [255 x i8], ptr %infile, i64 0, i64 %conv4, !dbg !419
  store i8 0, ptr %arrayidx7, align 1, !dbg !420
  %zero_pad = getelementptr inbounds i8, ptr %input_file, i64 920, !dbg !421
  %0 = load i32, ptr %zero_pad, align 8, !dbg !421
  %tobool.not = icmp eq i32 %0, 0, !dbg !423
  %num_digits11 = getelementptr inbounds i8, ptr %input_file, i64 924, !dbg !424
  %1 = load i32, ptr %num_digits11, align 4, !dbg !424
  %.str.7..str.6 = select i1 %tobool.not, ptr @.str.7, ptr @.str.6
  %call12 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %in_number, i64 noundef 16, ptr noundef nonnull %.str.7..str.6, i32 noundef %1, i32 noundef %FrameNumberInFile) #12, !dbg !424
  %call15 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %infile, ptr noundef nonnull dereferenceable(1) %in_number, i64 noundef 16) #12, !dbg !425
  %2 = trunc i64 %call to i32, !dbg !426
  %conv17 = add i32 %2, 16, !dbg !426
    #dbg_value(i32 %conv17, !409, !DIExpression(), !411)
  %idxprom18 = sext i32 %conv17 to i64, !dbg !427
  %arrayidx19 = getelementptr inbounds [255 x i8], ptr %infile, i64 0, i64 %idxprom18, !dbg !427
  store i8 0, ptr %arrayidx19, align 1, !dbg !428
  %ftail = getelementptr inbounds i8, ptr %input_file, i64 510, !dbg !429
  %call24 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %ftail) #13, !dbg !430
  %call25 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %infile, ptr noundef nonnull %ftail, i64 noundef %call24) #12, !dbg !431
  %conv29 = trunc i64 %call24 to i32, !dbg !432
  %add30 = add nsw i32 %conv17, %conv29, !dbg !433
    #dbg_value(i32 %add30, !409, !DIExpression(), !411)
  %idxprom31 = sext i32 %add30 to i64, !dbg !434
  %arrayidx32 = getelementptr inbounds [255 x i8], ptr %infile, i64 0, i64 %idxprom31, !dbg !434
  store i8 0, ptr %arrayidx32, align 1, !dbg !435
  %call34 = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %infile, i32 noundef 0) #12, !dbg !436
  %f_num = getelementptr inbounds i8, ptr %input_file, i64 768, !dbg !438
  store i32 %call34, ptr %f_num, align 8, !dbg !439
  %cmp = icmp eq i32 %call34, -1, !dbg !440
  br i1 %cmp, label %if.then36, label %if.end39, !dbg !441

if.then36:                                        ; preds = %entry
  %call38 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull %infile), !dbg !442
  call void @report_stats_on_error() #12, !dbg !444
  br label %if.end39, !dbg !445

if.end39:                                         ; preds = %if.then36, %entry
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in_number) #12, !dbg !446
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %infile) #12, !dbg !446
  ret void, !dbg !446
}

; Function Attrs: nofree nounwind
declare !dbg !447 noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare !dbg !451 ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare !dbg !452 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !456 noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare !dbg !459 void @report_stats_on_error() local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @OpenFiles(ptr noundef %input_file) local_unnamed_addr #5 !dbg !463 {
entry:
    #dbg_value(ptr %input_file, !465, !DIExpression(), !466)
  %is_concatenated = getelementptr inbounds i8, ptr %input_file, i64 912, !dbg !467
  %0 = load i32, ptr %is_concatenated, align 8, !dbg !467
  %cmp = icmp eq i32 %0, 1, !dbg !469
  br i1 %cmp, label %if.then, label %if.end15, !dbg !470

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %input_file) #13, !dbg !471
  %1 = and i64 %call, 4294967295, !dbg !474
  %cmp1 = icmp eq i64 %1, 0, !dbg !474
  br i1 %cmp1, label %if.then3, label %if.end, !dbg !475

if.then3:                                         ; preds = %if.then
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) @errortext, ptr noundef nonnull align 1 dereferenceable(60) @.str.9, i64 60, i1 false), !dbg !476
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 500) #12, !dbg !478
  br label %if.end, !dbg !479

if.end:                                           ; preds = %if.then3, %if.then
  %call7 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %input_file, i32 noundef 0) #12, !dbg !480
  %f_num = getelementptr inbounds i8, ptr %input_file, i64 768, !dbg !482
  store i32 %call7, ptr %f_num, align 8, !dbg !483
  %cmp8 = icmp eq i32 %call7, -1, !dbg !484
  br i1 %cmp8, label %if.then10, label %if.end15, !dbg !485

if.then10:                                        ; preds = %if.end
  %call13 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.10, ptr noundef nonnull %input_file) #12, !dbg !486
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 500) #12, !dbg !488
  br label %if.end15, !dbg !489

if.end15:                                         ; preds = %if.end, %if.then10, %entry
  ret void, !dbg !490
}

declare !dbg !491 void @error(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @CloseFiles(ptr nocapture noundef %input_file) local_unnamed_addr #5 !dbg !495 {
entry:
    #dbg_value(ptr %input_file, !497, !DIExpression(), !498)
  %f_num = getelementptr inbounds i8, ptr %input_file, i64 768, !dbg !499
  %0 = load i32, ptr %f_num, align 8, !dbg !499
  %cmp.not = icmp eq i32 %0, -1, !dbg !501
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !502

if.then:                                          ; preds = %entry
  %call = tail call i32 @close(i32 noundef %0) #12, !dbg !503
  br label %if.end, !dbg !503

if.end:                                           ; preds = %if.then, %entry
  store i32 -1, ptr %f_num, align 8, !dbg !504
  ret void, !dbg !505
}

declare !dbg !506 i32 @close(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @ParseVideoType(ptr nocapture noundef %input_file) local_unnamed_addr #9 !dbg !510 {
entry:
    #dbg_value(ptr %input_file, !514, !DIExpression(), !516)
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %input_file) #13, !dbg !517
  %sext = shl i64 %call, 32, !dbg !518
  %idx.ext = ashr exact i64 %sext, 32, !dbg !518
  %add.ptr = getelementptr inbounds i8, ptr %input_file, i64 %idx.ext, !dbg !518
  %add.ptr3 = getelementptr inbounds i8, ptr %add.ptr, i64 -3, !dbg !519
    #dbg_value(ptr %add.ptr3, !515, !DIExpression(), !516)
  %call4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr3, ptr noundef nonnull dereferenceable(4) @.str.11) #13, !dbg !520
  %cmp = icmp eq i32 %call4, 0, !dbg !522
  br i1 %cmp, label %if.then, label %if.else, !dbg !523

if.then:                                          ; preds = %entry
  %vdtype = getelementptr inbounds i8, ptr %input_file, i64 772, !dbg !524
  store i32 0, ptr %vdtype, align 4, !dbg !526
  %format6 = getelementptr inbounds i8, ptr %input_file, i64 776, !dbg !527
  store i32 1, ptr %format6, align 8, !dbg !528
  %avi = getelementptr inbounds i8, ptr %input_file, i64 960, !dbg !529
  store ptr null, ptr %avi, align 8, !dbg !530
  br label %if.end35, !dbg !531

if.else:                                          ; preds = %entry
  %call7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr3, ptr noundef nonnull dereferenceable(4) @.str.12) #13, !dbg !532
  %cmp8 = icmp eq i32 %call7, 0, !dbg !534
  br i1 %cmp8, label %if.then10, label %if.else15, !dbg !535

if.then10:                                        ; preds = %if.else
  %vdtype11 = getelementptr inbounds i8, ptr %input_file, i64 772, !dbg !536
  store i32 1, ptr %vdtype11, align 4, !dbg !538
  %format12 = getelementptr inbounds i8, ptr %input_file, i64 776, !dbg !539
  store i32 3, ptr %format12, align 8, !dbg !540
  %avi14 = getelementptr inbounds i8, ptr %input_file, i64 960, !dbg !541
  store ptr null, ptr %avi14, align 8, !dbg !542
  br label %if.end35, !dbg !543

if.else15:                                        ; preds = %if.else
  %call16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr3, ptr noundef nonnull dereferenceable(4) @.str.13) #13, !dbg !544
  %cmp17 = icmp eq i32 %call16, 0, !dbg !546
  br i1 %cmp17, label %if.then19, label %if.else22, !dbg !547

if.then19:                                        ; preds = %if.else15
  %vdtype20 = getelementptr inbounds i8, ptr %input_file, i64 772, !dbg !548
  store i32 3, ptr %vdtype20, align 4, !dbg !550
  %avi21 = getelementptr inbounds i8, ptr %input_file, i64 960, !dbg !551
  store ptr null, ptr %avi21, align 8, !dbg !552
  br label %if.end35, !dbg !553

if.else22:                                        ; preds = %if.else15
  %call23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr3, ptr noundef nonnull dereferenceable(4) @.str.14) #13, !dbg !554
  %cmp24 = icmp eq i32 %call23, 0, !dbg !556
  %vdtype27 = getelementptr inbounds i8, ptr %input_file, i64 772, !dbg !557
  br i1 %cmp24, label %if.then26, label %if.else28, !dbg !558

if.then26:                                        ; preds = %if.else22
  store i32 4, ptr %vdtype27, align 4, !dbg !559
  br label %if.end35, !dbg !561

if.else28:                                        ; preds = %if.else22
  store i32 0, ptr %vdtype27, align 4, !dbg !562
  %format30 = getelementptr inbounds i8, ptr %input_file, i64 776, !dbg !564
  store i32 1, ptr %format30, align 8, !dbg !565
  %avi32 = getelementptr inbounds i8, ptr %input_file, i64 960, !dbg !566
  store ptr null, ptr %avi32, align 8, !dbg !567
  br label %if.end35

if.end35:                                         ; preds = %if.then10, %if.then26, %if.else28, %if.then19, %if.then
  %0 = phi i32 [ 1, %if.then10 ], [ 4, %if.then26 ], [ 0, %if.else28 ], [ 3, %if.then19 ], [ 0, %if.then ], !dbg !568
  ret i32 %0, !dbg !569
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!11}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "ldecod_src/img_io.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "99569d59820f92ac88e001283c87e3c7")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 3)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "VideoRes", scope: !11, file: !2, line: 24, type: !109, isLocal: true, isDefinition: true)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !12, retainedTypes: !37, globals: !39, splitDebugInlining: false, nameTableKind: None)
!12 = !{!13, !23, !31}
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 25, baseType: !15, size: 32, elements: !16)
!14 = !DIFile(filename: "ldecod_src/inc/io_video.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1141c07f1801ad27d87214c419749431")
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{!17, !18, !19, !20, !21, !22}
!17 = !DIEnumerator(name: "VIDEO_UNKNOWN", value: -1)
!18 = !DIEnumerator(name: "VIDEO_YUV", value: 0)
!19 = !DIEnumerator(name: "VIDEO_RGB", value: 1)
!20 = !DIEnumerator(name: "VIDEO_XYZ", value: 2)
!21 = !DIEnumerator(name: "VIDEO_TIFF", value: 3)
!22 = !DIEnumerator(name: "VIDEO_AVI", value: 4)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !24, line: 22, baseType: !15, size: 32, elements: !25)
!24 = !DIFile(filename: "ldecod_src/inc/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "fd6ca9e1c707932f749220576db72b57")
!25 = !{!26, !27, !28, !29, !30}
!26 = !DIEnumerator(name: "CF_UNKNOWN", value: -1)
!27 = !DIEnumerator(name: "YUV400", value: 0)
!28 = !DIEnumerator(name: "YUV420", value: 1)
!29 = !DIEnumerator(name: "YUV422", value: 2)
!30 = !DIEnumerator(name: "YUV444", value: 3)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !24, line: 15, baseType: !15, size: 32, elements: !32)
!32 = !{!33, !34, !35, !36}
!33 = !DIEnumerator(name: "CM_UNKNOWN", value: -1)
!34 = !DIEnumerator(name: "CM_YUV", value: 0)
!35 = !DIEnumerator(name: "CM_RGB", value: 1)
!36 = !DIEnumerator(name: "CM_XYZ", value: 2)
!37 = !{!38, !15}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!39 = !{!40, !45, !0, !7, !47, !49, !51, !56, !61, !66, !71, !76, !78, !80, !82, !84, !86, !91, !93, !95, !97, !99, !101, !103, !105, !107, !9}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 2)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !42, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 174, type: !42, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 181, type: !42, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 234, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 5)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 236, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 4)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !2, line: 247, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 36)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 264, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 60)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 270, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 29)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !2, line: 301, type: !58, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 307, type: !58, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !2, line: 313, type: !58, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !2, line: 318, type: !58, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !53, isLocal: true, isDefinition: true)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !88, isLocal: true, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 6)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !2, line: 27, type: !53, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 28, type: !58, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !2, line: 29, type: !58, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 30, type: !58, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !58, isLocal: true, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(scope: null, file: !2, line: 32, type: !58, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !58, isLocal: true, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !53, isLocal: true, isDefinition: true)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !2, line: 35, type: !88, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 1536, elements: !118)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "VIDEO_SIZE", file: !14, line: 23, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_size", file: !14, line: 19, size: 128, elements: !113)
!113 = !{!114, !116, !117}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !112, file: !14, line: 20, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "x_size", scope: !112, file: !14, line: 21, baseType: !15, size: 32, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "y_size", scope: !112, file: !14, line: 22, baseType: !15, size: 32, offset: 96)
!118 = !{!119}
!119 = !DISubrange(count: 12)
!120 = !{i32 7, !"Dwarf Version", i32 5}
!121 = !{i32 2, !"Debug Info Version", i32 3}
!122 = !{i32 1, !"wchar_size", i32 4}
!123 = !{i32 8, !"PIC Level", i32 2}
!124 = !{i32 7, !"PIE Level", i32 2}
!125 = !{i32 7, !"uwtable", i32 2}
!126 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!127 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!128 = distinct !DISubprogram(name: "ParseSizeFromString", scope: !2, file: !2, line: 46, type: !129, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !186)
!129 = !DISubroutineType(types: !130)
!130 = !{!15, !131, !184, !184, !185}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoDataFile", file: !14, line: 60, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_data_file", file: !14, line: 34, size: 7744, elements: !134)
!134 = !{!135, !139, !140, !141, !142, !144, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !133, file: !14, line: 37, baseType: !136, size: 2040)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2040, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 255)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "fhead", scope: !133, file: !14, line: 38, baseType: !136, size: 2040, offset: 2040)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "ftail", scope: !133, file: !14, line: 39, baseType: !136, size: 2040, offset: 4080)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "f_num", scope: !133, file: !14, line: 40, baseType: !15, size: 32, offset: 6144)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "vdtype", scope: !133, file: !14, line: 41, baseType: !143, size: 32, offset: 6176)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoFileType", file: !14, line: 32, baseType: !13)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !133, file: !14, line: 42, baseType: !145, size: 1088, offset: 6208)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameFormat", file: !24, line: 52, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_format", file: !24, line: 30, size: 1088, elements: !147)
!147 = !{!148, !150, !152, !154, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !146, file: !24, line: 32, baseType: !149, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorFormat", file: !24, line: 28, baseType: !23)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "color_model", scope: !146, file: !24, line: 33, baseType: !151, size: 32, offset: 32)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorModel", file: !24, line: 20, baseType: !31)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "frame_rate", scope: !146, file: !24, line: 34, baseType: !153, size: 64, offset: 64)
!153 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !146, file: !24, line: 35, baseType: !155, size: 96, offset: 128)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 96, elements: !5)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !146, file: !24, line: 36, baseType: !155, size: 96, offset: 224)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right", scope: !146, file: !24, line: 37, baseType: !15, size: 32, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom", scope: !146, file: !24, line: 38, baseType: !15, size: 32, offset: 352)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right_cr", scope: !146, file: !24, line: 39, baseType: !15, size: 32, offset: 384)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom_cr", scope: !146, file: !24, line: 40, baseType: !15, size: 32, offset: 416)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "width_crop", scope: !146, file: !24, line: 41, baseType: !15, size: 32, offset: 448)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "height_crop", scope: !146, file: !24, line: 42, baseType: !15, size: 32, offset: 480)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "mb_width", scope: !146, file: !24, line: 43, baseType: !15, size: 32, offset: 512)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "mb_height", scope: !146, file: !24, line: 44, baseType: !15, size: 32, offset: 544)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "size_cmp", scope: !146, file: !24, line: 45, baseType: !155, size: 96, offset: 576)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !146, file: !24, line: 46, baseType: !15, size: 32, offset: 672)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth", scope: !146, file: !24, line: 47, baseType: !155, size: 96, offset: 704)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !146, file: !24, line: 48, baseType: !155, size: 96, offset: 800)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "max_value_sq", scope: !146, file: !24, line: 49, baseType: !155, size: 96, offset: 896)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !146, file: !24, line: 50, baseType: !15, size: 32, offset: 992)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_shift3", scope: !146, file: !24, line: 51, baseType: !15, size: 32, offset: 1024)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "is_concatenated", scope: !133, file: !14, line: 43, baseType: !15, size: 32, offset: 7296)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "is_interleaved", scope: !133, file: !14, line: 44, baseType: !15, size: 32, offset: 7328)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "zero_pad", scope: !133, file: !14, line: 45, baseType: !15, size: 32, offset: 7360)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "num_digits", scope: !133, file: !14, line: 46, baseType: !15, size: 32, offset: 7392)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !133, file: !14, line: 47, baseType: !15, size: 32, offset: 7424)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "end_frame", scope: !133, file: !14, line: 48, baseType: !15, size: 32, offset: 7456)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nframes", scope: !133, file: !14, line: 49, baseType: !15, size: 32, offset: 7488)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_size", scope: !133, file: !14, line: 50, baseType: !15, size: 32, offset: 7520)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_size", scope: !133, file: !14, line: 51, baseType: !15, size: 32, offset: 7552)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_offset", scope: !133, file: !14, line: 52, baseType: !15, size: 32, offset: 7584)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_offset", scope: !133, file: !14, line: 53, baseType: !15, size: 32, offset: 7616)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "avi", scope: !133, file: !14, line: 56, baseType: !184, size: 64, offset: 7680)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!186 = !{!187, !188, !189, !190, !191, !192, !193, !194, !195, !196}
!187 = !DILocalVariable(name: "input_file", arg: 1, scope: !128, file: !2, line: 46, type: !131)
!188 = !DILocalVariable(name: "x_size", arg: 2, scope: !128, file: !2, line: 46, type: !184)
!189 = !DILocalVariable(name: "y_size", arg: 3, scope: !128, file: !2, line: 46, type: !184)
!190 = !DILocalVariable(name: "fps", arg: 4, scope: !128, file: !2, line: 46, type: !185)
!191 = !DILocalVariable(name: "p1", scope: !128, file: !2, line: 48, type: !115)
!192 = !DILocalVariable(name: "p2", scope: !128, file: !2, line: 48, type: !115)
!193 = !DILocalVariable(name: "tail", scope: !128, file: !2, line: 48, type: !115)
!194 = !DILocalVariable(name: "fn", scope: !128, file: !2, line: 49, type: !115)
!195 = !DILocalVariable(name: "c", scope: !128, file: !2, line: 50, type: !4)
!196 = !DILocalVariable(name: "i", scope: !128, file: !2, line: 51, type: !15)
!197 = distinct !DIAssignID()
!198 = !DILocation(line: 0, scope: !128)
!199 = !DILocation(line: 48, column: 3, scope: !128)
!200 = !DILocation(line: 53, column: 21, scope: !128)
!201 = !DILocation(line: 53, column: 11, scope: !128)
!202 = !DILocation(line: 55, column: 13, scope: !128)
!203 = !DILocation(line: 55, column: 3, scope: !128)
!204 = !DILocation(line: 58, column: 10, scope: !205)
!205 = distinct !DILexicalBlock(scope: !128, file: !2, line: 56, column: 3)
!206 = !DILocation(line: 59, column: 12, scope: !207)
!207 = distinct !DILexicalBlock(scope: !205, file: !2, line: 59, column: 9)
!208 = !DILocation(line: 59, column: 9, scope: !205)
!209 = !DILocation(line: 63, column: 10, scope: !205)
!210 = !DILocation(line: 66, column: 12, scope: !211)
!211 = distinct !DILexicalBlock(scope: !205, file: !2, line: 66, column: 9)
!212 = !DILocation(line: 66, column: 9, scope: !205)
!213 = !DILocation(line: 70, column: 9, scope: !205)
!214 = !DILocation(line: 71, column: 26, scope: !205)
!215 = !DILocation(line: 71, column: 15, scope: !205)
!216 = !DILocation(line: 71, column: 13, scope: !205)
!217 = !DILocation(line: 74, column: 10, scope: !218)
!218 = distinct !DILexicalBlock(scope: !205, file: !2, line: 74, column: 9)
!219 = !DILocation(line: 74, column: 9, scope: !218)
!220 = !DILocation(line: 74, column: 15, scope: !218)
!221 = !DILocation(line: 74, column: 23, scope: !218)
!222 = !DILocation(line: 74, column: 26, scope: !218)
!223 = !DILocation(line: 74, column: 36, scope: !218)
!224 = !DILocation(line: 74, column: 9, scope: !205)
!225 = !DILocation(line: 76, column: 11, scope: !226)
!226 = distinct !DILexicalBlock(scope: !218, file: !2, line: 75, column: 5)
!227 = !DILocation(line: 78, column: 7, scope: !226)
!228 = !DILocation(line: 82, column: 9, scope: !205)
!229 = !DILocation(line: 85, column: 22, scope: !205)
!230 = !DILocation(line: 85, column: 10, scope: !205)
!231 = !DILocation(line: 87, column: 12, scope: !232)
!232 = distinct !DILexicalBlock(scope: !205, file: !2, line: 87, column: 9)
!233 = !DILocation(line: 87, column: 9, scope: !205)
!234 = !DILocation(line: 94, column: 9, scope: !205)
!235 = !DILocation(line: 95, column: 9, scope: !205)
!236 = !DILocation(line: 96, column: 15, scope: !205)
!237 = !DILocation(line: 96, column: 13, scope: !205)
!238 = !DILocation(line: 99, column: 10, scope: !239)
!239 = distinct !DILexicalBlock(scope: !205, file: !2, line: 99, column: 9)
!240 = !DILocation(line: 99, column: 9, scope: !239)
!241 = !DILocation(line: 99, column: 15, scope: !239)
!242 = !DILocation(line: 99, column: 23, scope: !239)
!243 = !DILocation(line: 99, column: 26, scope: !239)
!244 = !DILocation(line: 99, column: 36, scope: !239)
!245 = !DILocation(line: 99, column: 9, scope: !205)
!246 = !DILocation(line: 101, column: 11, scope: !247)
!247 = distinct !DILexicalBlock(scope: !239, file: !2, line: 100, column: 5)
!248 = !DILocation(line: 103, column: 7, scope: !247)
!249 = !DILocation(line: 107, column: 9, scope: !205)
!250 = !DILocation(line: 110, column: 21, scope: !205)
!251 = !DILocation(line: 110, column: 10, scope: !205)
!252 = !DILocation(line: 113, column: 12, scope: !253)
!253 = distinct !DILexicalBlock(scope: !205, file: !2, line: 113, column: 9)
!254 = !DILocation(line: 113, column: 9, scope: !205)
!255 = !DILocation(line: 117, column: 9, scope: !205)
!256 = !DILocation(line: 118, column: 9, scope: !205)
!257 = !DILocation(line: 119, column: 12, scope: !205)
!258 = !DILocation(line: 119, column: 10, scope: !205)
!259 = !DILocation(line: 122, column: 10, scope: !260)
!260 = distinct !DILexicalBlock(scope: !205, file: !2, line: 122, column: 9)
!261 = !DILocation(line: 122, column: 9, scope: !260)
!262 = !DILocation(line: 122, column: 15, scope: !260)
!263 = !DILocation(line: 122, column: 23, scope: !260)
!264 = !DILocation(line: 122, column: 26, scope: !260)
!265 = !DILocation(line: 122, column: 36, scope: !260)
!266 = !DILocation(line: 122, column: 9, scope: !205)
!267 = !DILocation(line: 124, column: 11, scope: !268)
!268 = distinct !DILexicalBlock(scope: !260, file: !2, line: 123, column: 5)
!269 = !DILocation(line: 126, column: 7, scope: !268)
!270 = !DILocation(line: 130, column: 9, scope: !205)
!271 = !DILocation(line: 131, column: 5, scope: !205)
!272 = !DILocation(line: 135, column: 18, scope: !273)
!273 = distinct !DILexicalBlock(scope: !128, file: !2, line: 135, column: 7)
!274 = !DILocation(line: 139, column: 11, scope: !275)
!275 = distinct !DILexicalBlock(scope: !276, file: !2, line: 139, column: 11)
!276 = distinct !DILexicalBlock(scope: !277, file: !2, line: 138, column: 5)
!277 = distinct !DILexicalBlock(scope: !278, file: !2, line: 137, column: 5)
!278 = distinct !DILexicalBlock(scope: !279, file: !2, line: 137, column: 5)
!279 = distinct !DILexicalBlock(scope: !273, file: !2, line: 136, column: 3)
!280 = !DILocation(line: 139, column: 11, scope: !276)
!281 = !DILocation(line: 141, column: 31, scope: !282)
!282 = distinct !DILexicalBlock(scope: !275, file: !2, line: 140, column: 7)
!283 = !DILocation(line: 141, column: 17, scope: !282)
!284 = !DILocation(line: 142, column: 31, scope: !282)
!285 = !DILocation(line: 142, column: 17, scope: !282)
!286 = !DILocation(line: 144, column: 9, scope: !282)
!287 = !DILocation(line: 149, column: 11, scope: !128)
!288 = !DILocation(line: 149, column: 19, scope: !128)
!289 = !DILocation(line: 149, column: 25, scope: !128)
!290 = !DILocation(line: 149, column: 28, scope: !128)
!291 = !DILocation(line: 149, column: 36, scope: !128)
!292 = !DILocation(line: 149, column: 10, scope: !128)
!293 = !DILocation(line: 150, column: 1, scope: !128)
!294 = !DILocation(line: 149, column: 3, scope: !128)
!295 = !DISubprogram(name: "strstr", scope: !296, file: !296, line: 350, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!296 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!297 = !DISubroutineType(types: !298)
!298 = !{!115, !299, !299}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!301 = !DISubprogram(name: "strtol", scope: !302, file: !302, line: 177, type: !303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!302 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!303 = !DISubroutineType(types: !304)
!304 = !{!305, !306, !307, !15}
!305 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!306 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !299)
!307 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!309 = !DISubprogram(name: "strpbrk", scope: !296, file: !296, line: 323, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!310 = !DISubprogram(name: "strtod", scope: !302, file: !302, line: 118, type: !311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!311 = !DISubroutineType(types: !312)
!312 = !{!153, !306, !307}
!313 = !DISubprogram(name: "strcmp", scope: !296, file: !296, line: 156, type: !314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!314 = !DISubroutineType(types: !315)
!315 = !{!15, !299, !299}
!316 = distinct !DISubprogram(name: "ParseFrameNoFormatFromString", scope: !2, file: !2, line: 159, type: !317, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !319)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !131}
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328}
!320 = !DILocalVariable(name: "input_file", arg: 1, scope: !316, file: !2, line: 159, type: !131)
!321 = !DILocalVariable(name: "p1", scope: !316, file: !2, line: 161, type: !115)
!322 = !DILocalVariable(name: "p2", scope: !316, file: !2, line: 161, type: !115)
!323 = !DILocalVariable(name: "tail", scope: !316, file: !2, line: 161, type: !115)
!324 = !DILocalVariable(name: "fn", scope: !316, file: !2, line: 162, type: !115)
!325 = !DILocalVariable(name: "fhead", scope: !316, file: !2, line: 163, type: !115)
!326 = !DILocalVariable(name: "ftail", scope: !316, file: !2, line: 164, type: !115)
!327 = !DILocalVariable(name: "zero_pad", scope: !316, file: !2, line: 165, type: !184)
!328 = !DILocalVariable(name: "num_digits", scope: !316, file: !2, line: 166, type: !184)
!329 = distinct !DIAssignID()
!330 = !DILocation(line: 0, scope: !316)
!331 = !DILocation(line: 161, column: 3, scope: !316)
!332 = !DILocation(line: 163, column: 34, scope: !316)
!333 = !DILocation(line: 164, column: 34, scope: !316)
!334 = !DILocation(line: 165, column: 35, scope: !316)
!335 = !DILocation(line: 166, column: 35, scope: !316)
!336 = !DILocation(line: 168, column: 13, scope: !316)
!337 = !DILocation(line: 169, column: 15, scope: !316)
!338 = !DILocation(line: 174, column: 10, scope: !339)
!339 = distinct !DILexicalBlock(scope: !316, file: !2, line: 172, column: 3)
!340 = !DILocation(line: 175, column: 12, scope: !341)
!341 = distinct !DILexicalBlock(scope: !339, file: !2, line: 175, column: 9)
!342 = !DILocation(line: 175, column: 9, scope: !339)
!343 = !DILocation(line: 178, column: 27, scope: !339)
!344 = !DILocation(line: 178, column: 5, scope: !339)
!345 = !DILocation(line: 181, column: 10, scope: !339)
!346 = !DILocation(line: 184, column: 12, scope: !347)
!347 = distinct !DILexicalBlock(scope: !339, file: !2, line: 184, column: 9)
!348 = !DILocation(line: 184, column: 9, scope: !339)
!349 = !DILocation(line: 188, column: 9, scope: !339)
!350 = !DILocation(line: 190, column: 14, scope: !351)
!351 = distinct !DILexicalBlock(scope: !339, file: !2, line: 190, column: 9)
!352 = !DILocation(line: 190, column: 9, scope: !351)
!353 = !DILocation(line: 190, column: 19, scope: !351)
!354 = !DILocation(line: 190, column: 9, scope: !339)
!355 = !DILocation(line: 191, column: 17, scope: !351)
!356 = !DILocation(line: 191, column: 7, scope: !351)
!357 = !DILocation(line: 193, column: 19, scope: !339)
!358 = !DILocation(line: 193, column: 17, scope: !339)
!359 = !DILocation(line: 196, column: 10, scope: !360)
!360 = distinct !DILexicalBlock(scope: !339, file: !2, line: 196, column: 9)
!361 = !DILocation(line: 196, column: 9, scope: !360)
!362 = !DILocation(line: 196, column: 15, scope: !360)
!363 = !DILocation(line: 196, column: 23, scope: !360)
!364 = !DILocation(line: 196, column: 26, scope: !360)
!365 = !DILocation(line: 196, column: 36, scope: !360)
!366 = !DILocation(line: 196, column: 9, scope: !339)
!367 = !DILocation(line: 198, column: 11, scope: !368)
!368 = distinct !DILexicalBlock(scope: !360, file: !2, line: 197, column: 5)
!369 = distinct !{!369, !370, !371}
!370 = !DILocation(line: 171, column: 3, scope: !316)
!371 = !DILocation(line: 209, column: 3, scope: !316)
!372 = !DILocation(line: 204, column: 9, scope: !339)
!373 = !DILocation(line: 206, column: 9, scope: !339)
!374 = distinct !DIAssignID()
!375 = !DILocation(line: 207, column: 32, scope: !339)
!376 = !DILocation(line: 207, column: 26, scope: !339)
!377 = !DILocation(line: 207, column: 5, scope: !339)
!378 = !DILocation(line: 208, column: 5, scope: !339)
!379 = !DILocation(line: 211, column: 19, scope: !380)
!380 = distinct !DILexicalBlock(scope: !316, file: !2, line: 211, column: 7)
!381 = !DILocation(line: 211, column: 26, scope: !380)
!382 = !DILocation(line: 211, column: 7, scope: !316)
!383 = !DILocation(line: 216, column: 36, scope: !380)
!384 = !DILocation(line: 216, column: 48, scope: !380)
!385 = !DILocation(line: 216, column: 35, scope: !380)
!386 = !DILocation(line: 0, scope: !380)
!387 = !DILocation(line: 217, column: 1, scope: !316)
!388 = !DISubprogram(name: "strncpy", scope: !296, file: !296, line: 144, type: !389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!389 = !DISubroutineType(types: !390)
!390 = !{!115, !391, !306, !392}
!391 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !115)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !393, line: 18, baseType: !394)
!393 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!394 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!395 = !DISubprogram(name: "strlen", scope: !296, file: !296, line: 407, type: !396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!396 = !DISubroutineType(types: !397)
!397 = !{!394, !299}
!398 = distinct !DISubprogram(name: "OpenFrameFile", scope: !2, file: !2, line: 225, type: !399, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !401)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !131, !15}
!401 = !{!402, !403, !404, !405, !409}
!402 = !DILocalVariable(name: "input_file", arg: 1, scope: !398, file: !2, line: 225, type: !131)
!403 = !DILocalVariable(name: "FrameNumberInFile", arg: 2, scope: !398, file: !2, line: 225, type: !15)
!404 = !DILocalVariable(name: "infile", scope: !398, file: !2, line: 227, type: !136)
!405 = !DILocalVariable(name: "in_number", scope: !398, file: !2, line: 227, type: !406)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 16)
!409 = !DILocalVariable(name: "length", scope: !398, file: !2, line: 228, type: !15)
!410 = distinct !DIAssignID()
!411 = !DILocation(line: 0, scope: !398)
!412 = distinct !DIAssignID()
!413 = !DILocation(line: 227, column: 3, scope: !398)
!414 = !DILocation(line: 229, column: 20, scope: !398)
!415 = !DILocation(line: 230, column: 37, scope: !398)
!416 = !DILocation(line: 230, column: 18, scope: !398)
!417 = !DILocation(line: 231, column: 38, scope: !398)
!418 = !DILocation(line: 231, column: 3, scope: !398)
!419 = !DILocation(line: 232, column: 3, scope: !398)
!420 = !DILocation(line: 232, column: 17, scope: !398)
!421 = !DILocation(line: 233, column: 19, scope: !422)
!422 = distinct !DILexicalBlock(scope: !398, file: !2, line: 233, column: 7)
!423 = !DILocation(line: 233, column: 7, scope: !422)
!424 = !DILocation(line: 0, scope: !422)
!425 = !DILocation(line: 238, column: 3, scope: !398)
!426 = !DILocation(line: 239, column: 10, scope: !398)
!427 = !DILocation(line: 240, column: 3, scope: !398)
!428 = !DILocation(line: 240, column: 17, scope: !398)
!429 = !DILocation(line: 241, column: 31, scope: !398)
!430 = !DILocation(line: 241, column: 38, scope: !398)
!431 = !DILocation(line: 241, column: 3, scope: !398)
!432 = !DILocation(line: 242, column: 13, scope: !398)
!433 = !DILocation(line: 242, column: 10, scope: !398)
!434 = !DILocation(line: 243, column: 3, scope: !398)
!435 = !DILocation(line: 243, column: 17, scope: !398)
!436 = !DILocation(line: 245, column: 28, scope: !437)
!437 = distinct !DILexicalBlock(scope: !398, file: !2, line: 245, column: 7)
!438 = !DILocation(line: 245, column: 20, scope: !437)
!439 = !DILocation(line: 245, column: 26, scope: !437)
!440 = !DILocation(line: 245, column: 58, scope: !437)
!441 = !DILocation(line: 245, column: 7, scope: !398)
!442 = !DILocation(line: 247, column: 5, scope: !443)
!443 = distinct !DILexicalBlock(scope: !437, file: !2, line: 246, column: 3)
!444 = !DILocation(line: 248, column: 5, scope: !443)
!445 = !DILocation(line: 249, column: 3, scope: !443)
!446 = !DILocation(line: 250, column: 1, scope: !398)
!447 = !DISubprogram(name: "snprintf", scope: !448, file: !448, line: 378, type: !449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!448 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!449 = !DISubroutineType(types: !450)
!450 = !{!15, !391, !392, !306, null}
!451 = !DISubprogram(name: "strncat", scope: !296, file: !296, line: 152, type: !389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!452 = !DISubprogram(name: "open", scope: !453, file: !453, line: 181, type: !454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!453 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!454 = !DISubroutineType(types: !455)
!455 = !{!15, !299, !15, null}
!456 = !DISubprogram(name: "printf", scope: !448, file: !448, line: 356, type: !457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!457 = !DISubroutineType(types: !458)
!458 = !{!15, !306, null}
!459 = !DISubprogram(name: "report_stats_on_error", scope: !460, file: !460, line: 22, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!460 = !DIFile(filename: "ldecod_src/inc/report.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "a98963f4c391ce641c06f3255ae22ee2")
!461 = !DISubroutineType(types: !462)
!462 = !{null}
!463 = distinct !DISubprogram(name: "OpenFiles", scope: !2, file: !2, line: 258, type: !317, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !464)
!464 = !{!465}
!465 = !DILocalVariable(name: "input_file", arg: 1, scope: !463, file: !2, line: 258, type: !131)
!466 = !DILocation(line: 0, scope: !463)
!467 = !DILocation(line: 260, column: 19, scope: !468)
!468 = distinct !DILexicalBlock(scope: !463, file: !2, line: 260, column: 7)
!469 = !DILocation(line: 260, column: 35, scope: !468)
!470 = !DILocation(line: 260, column: 7, scope: !463)
!471 = !DILocation(line: 262, column: 15, scope: !472)
!472 = distinct !DILexicalBlock(scope: !473, file: !2, line: 262, column: 9)
!473 = distinct !DILexicalBlock(scope: !468, file: !2, line: 261, column: 3)
!474 = !DILocation(line: 262, column: 41, scope: !472)
!475 = !DILocation(line: 262, column: 9, scope: !473)
!476 = !DILocation(line: 264, column: 7, scope: !477)
!477 = distinct !DILexicalBlock(scope: !472, file: !2, line: 263, column: 5)
!478 = !DILocation(line: 265, column: 7, scope: !477)
!479 = !DILocation(line: 266, column: 5, scope: !477)
!480 = !DILocation(line: 268, column: 30, scope: !481)
!481 = distinct !DILexicalBlock(scope: !473, file: !2, line: 268, column: 9)
!482 = !DILocation(line: 268, column: 22, scope: !481)
!483 = !DILocation(line: 268, column: 28, scope: !481)
!484 = !DILocation(line: 268, column: 71, scope: !481)
!485 = !DILocation(line: 268, column: 9, scope: !473)
!486 = !DILocation(line: 270, column: 7, scope: !487)
!487 = distinct !DILexicalBlock(scope: !481, file: !2, line: 269, column: 5)
!488 = !DILocation(line: 271, column: 7, scope: !487)
!489 = !DILocation(line: 272, column: 5, scope: !487)
!490 = !DILocation(line: 274, column: 1, scope: !463)
!491 = !DISubprogram(name: "error", scope: !492, file: !492, line: 940, type: !493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!492 = !DIFile(filename: "ldecod_src/inc/global.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c4ca3c417c5616a2ff6b6266e7376fc1")
!493 = !DISubroutineType(types: !494)
!494 = !{null, !115, !15}
!495 = distinct !DISubprogram(name: "CloseFiles", scope: !2, file: !2, line: 282, type: !317, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !496)
!496 = !{!497}
!497 = !DILocalVariable(name: "input_file", arg: 1, scope: !495, file: !2, line: 282, type: !131)
!498 = !DILocation(line: 0, scope: !495)
!499 = !DILocation(line: 284, column: 19, scope: !500)
!500 = distinct !DILexicalBlock(scope: !495, file: !2, line: 284, column: 7)
!501 = !DILocation(line: 284, column: 25, scope: !500)
!502 = !DILocation(line: 284, column: 7, scope: !495)
!503 = !DILocation(line: 285, column: 5, scope: !500)
!504 = !DILocation(line: 286, column: 21, scope: !495)
!505 = !DILocation(line: 287, column: 1, scope: !495)
!506 = !DISubprogram(name: "close", scope: !507, file: !507, line: 358, type: !508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!507 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!508 = !DISubroutineType(types: !509)
!509 = !{!15, !15}
!510 = distinct !DISubprogram(name: "ParseVideoType", scope: !2, file: !2, line: 295, type: !511, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !513)
!511 = !DISubroutineType(types: !512)
!512 = !{!143, !131}
!513 = !{!514, !515}
!514 = !DILocalVariable(name: "input_file", arg: 1, scope: !510, file: !2, line: 295, type: !131)
!515 = !DILocalVariable(name: "format", scope: !510, file: !2, line: 297, type: !115)
!516 = !DILocation(line: 0, scope: !510)
!517 = !DILocation(line: 299, column: 38, scope: !510)
!518 = !DILocation(line: 299, column: 30, scope: !510)
!519 = !DILocation(line: 299, column: 64, scope: !510)
!520 = !DILocation(line: 301, column: 7, scope: !521)
!521 = distinct !DILexicalBlock(scope: !510, file: !2, line: 301, column: 7)
!522 = !DILocation(line: 301, column: 30, scope: !521)
!523 = !DILocation(line: 301, column: 7, scope: !510)
!524 = !DILocation(line: 303, column: 17, scope: !525)
!525 = distinct !DILexicalBlock(scope: !521, file: !2, line: 302, column: 3)
!526 = !DILocation(line: 303, column: 24, scope: !525)
!527 = !DILocation(line: 304, column: 17, scope: !525)
!528 = !DILocation(line: 304, column: 35, scope: !525)
!529 = !DILocation(line: 305, column: 17, scope: !525)
!530 = !DILocation(line: 305, column: 21, scope: !525)
!531 = !DILocation(line: 306, column: 3, scope: !525)
!532 = !DILocation(line: 307, column: 12, scope: !533)
!533 = distinct !DILexicalBlock(scope: !521, file: !2, line: 307, column: 12)
!534 = !DILocation(line: 307, column: 35, scope: !533)
!535 = !DILocation(line: 307, column: 12, scope: !521)
!536 = !DILocation(line: 309, column: 17, scope: !537)
!537 = distinct !DILexicalBlock(scope: !533, file: !2, line: 308, column: 3)
!538 = !DILocation(line: 309, column: 24, scope: !537)
!539 = !DILocation(line: 310, column: 17, scope: !537)
!540 = !DILocation(line: 310, column: 35, scope: !537)
!541 = !DILocation(line: 311, column: 17, scope: !537)
!542 = !DILocation(line: 311, column: 21, scope: !537)
!543 = !DILocation(line: 312, column: 3, scope: !537)
!544 = !DILocation(line: 313, column: 12, scope: !545)
!545 = distinct !DILexicalBlock(scope: !533, file: !2, line: 313, column: 12)
!546 = !DILocation(line: 313, column: 35, scope: !545)
!547 = !DILocation(line: 313, column: 12, scope: !533)
!548 = !DILocation(line: 315, column: 17, scope: !549)
!549 = distinct !DILexicalBlock(scope: !545, file: !2, line: 314, column: 3)
!550 = !DILocation(line: 315, column: 24, scope: !549)
!551 = !DILocation(line: 316, column: 17, scope: !549)
!552 = !DILocation(line: 316, column: 21, scope: !549)
!553 = !DILocation(line: 317, column: 3, scope: !549)
!554 = !DILocation(line: 318, column: 12, scope: !555)
!555 = distinct !DILexicalBlock(scope: !545, file: !2, line: 318, column: 12)
!556 = !DILocation(line: 318, column: 35, scope: !555)
!557 = !DILocation(line: 0, scope: !555)
!558 = !DILocation(line: 318, column: 12, scope: !545)
!559 = !DILocation(line: 320, column: 24, scope: !560)
!560 = distinct !DILexicalBlock(scope: !555, file: !2, line: 319, column: 3)
!561 = !DILocation(line: 321, column: 3, scope: !560)
!562 = !DILocation(line: 326, column: 24, scope: !563)
!563 = distinct !DILexicalBlock(scope: !555, file: !2, line: 323, column: 3)
!564 = !DILocation(line: 327, column: 17, scope: !563)
!565 = !DILocation(line: 327, column: 35, scope: !563)
!566 = !DILocation(line: 328, column: 17, scope: !563)
!567 = !DILocation(line: 328, column: 21, scope: !563)
!568 = !DILocation(line: 331, column: 22, scope: !510)
!569 = !DILocation(line: 331, column: 3, scope: !510)
