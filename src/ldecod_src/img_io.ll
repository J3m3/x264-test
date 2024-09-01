; ModuleID = 'ldecod_src/img_io.c'
source_filename = "ldecod_src/img_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_size = type { ptr, i32, i32 }

@.str.2 = private unnamed_addr constant [3 x i8] c"_.\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@VideoRes = internal unnamed_addr constant [12 x %struct.video_size] [%struct.video_size { ptr @.str.15, i32 176, i32 144 }, %struct.video_size { ptr @.str.16, i32 160, i32 128 }, %struct.video_size { ptr @.str.17, i32 320, i32 240 }, %struct.video_size { ptr @.str.18, i32 352, i32 240 }, %struct.video_size { ptr @.str.19, i32 352, i32 288 }, %struct.video_size { ptr @.str.20, i32 640, i32 480 }, %struct.video_size { ptr @.str.21, i32 720, i32 480 }, %struct.video_size { ptr @.str.22, i32 704, i32 576 }, %struct.video_size { ptr @.str.23, i32 720, i32 576 }, %struct.video_size { ptr @.str.24, i32 1280, i32 720 }, %struct.video_size { ptr @.str.25, i32 1920, i32 1080 }, %struct.video_size zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [5 x i8] c"%0*d\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%*d\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"OpenFrameFile: cannot open file %s\0A\00", align 1
@errortext = external global [300 x i8], align 16
@.str.9 = private unnamed_addr constant [60 x i8] c"No input sequence name was provided. Please check settings.\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Input file %s does not exist\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"yuv\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"tif\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"avi\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"qcif\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"qqvga\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"qvga\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"sif\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"cif\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"vga\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"sd1\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"sd2\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"sd3\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"720p\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"1080p\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 2) i32 @ParseSizeFromString(ptr noundef %input_file, ptr nocapture noundef %x_size, ptr nocapture noundef %y_size, ptr nocapture noundef writeonly %fps) local_unnamed_addr #0 {
entry:
  %tail = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tail) #12
  store i32 -1, ptr %y_size, align 4
  store i32 -1, ptr %x_size, align 4
  %cmp124.not = icmp eq ptr %input_file, null
  br i1 %cmp124.not, label %for.body.preheader, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  %strchr146 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %input_file, i32 95)
  %cmp2147 = icmp eq ptr %strchr146, null
  br i1 %cmp2147, label %while.end.loopexit, label %if.end

if.end:                                           ; preds = %while.body.preheader, %while.cond.backedge
  %cmp2149 = phi i1 [ %cmp2, %while.cond.backedge ], [ %cmp2147, %while.body.preheader ]
  %strchr148 = phi ptr [ %strchr, %while.cond.backedge ], [ %strchr146, %while.body.preheader ]
  %strchr122 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %strchr148, i32 120)
  %cmp4 = icmp eq ptr %strchr122, null
  br i1 %cmp4, label %while.end.loopexit, label %if.end6

if.end6:                                          ; preds = %if.end
  store i8 0, ptr %strchr122, align 1
  %add.ptr = getelementptr inbounds i8, ptr %strchr148, i64 1
  %call7 = call i64 @strtol(ptr noundef nonnull %add.ptr, ptr noundef nonnull %tail, i32 noundef 10) #12
  %conv = trunc i64 %call7 to i32
  store i32 %conv, ptr %x_size, align 4
  %0 = load ptr, ptr %tail, align 8
  %1 = load i8, ptr %0, align 1
  %cmp9.not = icmp eq i8 %1, 0
  br i1 %cmp9.not, label %lor.lhs.false, label %if.then15

lor.lhs.false:                                    ; preds = %if.end6
  %2 = load i8, ptr %add.ptr, align 1
  %cmp13 = icmp eq i8 %2, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %lor.lhs.false, %if.end6
  store i8 120, ptr %strchr122, align 1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then15, %if.then35, %if.then53, %if.end16
  %p1.0.be = phi ptr [ %0, %if.then15 ], [ %4, %if.then35 ], [ %8, %if.then53 ], [ %add.ptr17, %if.end16 ]
  %strchr = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %p1.0.be, i32 95)
  %cmp2 = icmp eq ptr %strchr, null
  br i1 %cmp2, label %while.end.loopexit, label %if.end

if.end16:                                         ; preds = %lor.lhs.false
  store i8 120, ptr %strchr122, align 1
  %add.ptr17 = getelementptr inbounds i8, ptr %strchr122, i64 1
  %call18 = tail call ptr @strpbrk(ptr noundef nonnull %add.ptr17, ptr noundef nonnull @.str.2) #13
  %cmp19 = icmp eq ptr %call18, null
  br i1 %cmp19, label %while.cond.backedge, label %if.end23

if.end23:                                         ; preds = %if.end16
  %3 = load i8, ptr %call18, align 1
  store i8 0, ptr %call18, align 1
  %call25 = call i64 @strtol(ptr noundef nonnull %add.ptr17, ptr noundef nonnull %tail, i32 noundef 10) #12
  %conv26 = trunc i64 %call25 to i32
  store i32 %conv26, ptr %y_size, align 4
  %4 = load ptr, ptr %tail, align 8
  %5 = load i8, ptr %4, align 1
  %cmp28.not = icmp eq i8 %5, 0
  br i1 %cmp28.not, label %lor.lhs.false30, label %if.then35

lor.lhs.false30:                                  ; preds = %if.end23
  %6 = load i8, ptr %add.ptr17, align 1
  %cmp33 = icmp eq i8 %6, 0
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %lor.lhs.false30, %if.end23
  store i8 %3, ptr %call18, align 1
  br label %while.cond.backedge

if.end36:                                         ; preds = %lor.lhs.false30
  store i8 %3, ptr %call18, align 1
  %add.ptr37 = getelementptr inbounds i8, ptr %call18, i64 1
  %call38 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %add.ptr37, ptr noundef nonnull dereferenceable(1) @.str.3) #13
  %cmp39 = icmp eq ptr %call38, null
  br i1 %cmp39, label %while.end.loopexit, label %if.end42

if.end42:                                         ; preds = %if.end36
  %7 = load i8, ptr %call38, align 1
  store i8 0, ptr %call38, align 1
  %call44 = call double @strtod(ptr noundef nonnull %add.ptr37, ptr noundef nonnull %tail) #12
  store double %call44, ptr %fps, align 8
  %8 = load ptr, ptr %tail, align 8
  %9 = load i8, ptr %8, align 1
  %cmp46.not = icmp eq i8 %9, 0
  br i1 %cmp46.not, label %lor.lhs.false48, label %if.then53

lor.lhs.false48:                                  ; preds = %if.end42
  %10 = load i8, ptr %add.ptr37, align 1
  %cmp51 = icmp eq i8 %10, 0
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %lor.lhs.false48, %if.end42
  store i8 %7, ptr %call38, align 1
  br label %while.cond.backedge

if.end54:                                         ; preds = %lor.lhs.false48
  store i8 %7, ptr %call38, align 1
  br label %while.end

while.end.loopexit:                               ; preds = %while.cond.backedge, %if.end, %if.end36, %while.body.preheader
  %cmp2.lcssa = phi i1 [ %cmp2147, %while.body.preheader ], [ %cmp2, %while.cond.backedge ], [ %cmp2149, %if.end ], [ %cmp2149, %if.end36 ]
  %p2.1.ph.ph = xor i1 %cmp2.lcssa, true
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end54
  %cmp2145 = phi i1 [ %cmp2149, %if.end54 ], [ %cmp2.lcssa, %while.end.loopexit ]
  %p2.1 = phi i1 [ false, %if.end54 ], [ %p2.1.ph.ph, %while.end.loopexit ]
  %or.cond = or i1 %p2.1, %cmp2145
  br i1 %or.cond, label %for.body.preheader, label %if.end75

for.body.preheader:                               ; preds = %entry, %while.end
  %call66 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %input_file, ptr noundef nonnull dereferenceable(5) @.str.15) #13
  %tobool.not = icmp eq i32 %call66, 0
  br i1 %tobool.not, label %for.cond, label %if.then67

for.cond:                                         ; preds = %for.body.preheader
  %call66.1 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %input_file, ptr noundef nonnull dereferenceable(6) @.str.16) #13
  %tobool.not.1 = icmp eq i32 %call66.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %if.then67

for.cond.1:                                       ; preds = %for.cond
  %call66.2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %input_file, ptr noundef nonnull dereferenceable(5) @.str.17) #13
  %tobool.not.2 = icmp eq i32 %call66.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %if.then67

for.cond.2:                                       ; preds = %for.cond.1
  %call66.3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %input_file, ptr noundef nonnull dereferenceable(4) @.str.18) #13
  %tobool.not.3 = icmp eq i32 %call66.3, 0
  br i1 %tobool.not.3, label %for.cond.3, label %if.then67

for.cond.3:                                       ; preds = %for.cond.2
  %call66.4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %input_file, ptr noundef nonnull dereferenceable(4) @.str.19) #13
  %tobool.not.4 = icmp eq i32 %call66.4, 0
  br i1 %tobool.not.4, label %for.cond.4, label %if.then67

for.cond.4:                                       ; preds = %for.cond.3
  %call66.5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %input_file, ptr noundef nonnull dereferenceable(4) @.str.20) #13
  %tobool.not.5 = icmp eq i32 %call66.5, 0
  br i1 %tobool.not.5, label %for.cond.5, label %if.then67

for.cond.5:                                       ; preds = %for.cond.4
  %call66.6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %input_file, ptr noundef nonnull dereferenceable(4) @.str.21) #13
  %tobool.not.6 = icmp eq i32 %call66.6, 0
  br i1 %tobool.not.6, label %for.cond.6, label %if.then67

for.cond.6:                                       ; preds = %for.cond.5
  %call66.7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %input_file, ptr noundef nonnull dereferenceable(4) @.str.22) #13
  %tobool.not.7 = icmp eq i32 %call66.7, 0
  br i1 %tobool.not.7, label %for.cond.7, label %if.then67

for.cond.7:                                       ; preds = %for.cond.6
  %call66.8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %input_file, ptr noundef nonnull dereferenceable(4) @.str.23) #13
  %tobool.not.8 = icmp eq i32 %call66.8, 0
  br i1 %tobool.not.8, label %for.cond.8, label %if.then67

for.cond.8:                                       ; preds = %for.cond.7
  %call66.9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %input_file, ptr noundef nonnull dereferenceable(5) @.str.24) #13
  %tobool.not.9 = icmp eq i32 %call66.9, 0
  br i1 %tobool.not.9, label %for.cond.9, label %if.then67

for.cond.9:                                       ; preds = %for.cond.8
  %call66.10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %input_file, ptr noundef nonnull dereferenceable(6) @.str.25) #13
  %tobool.not.10 = icmp eq i32 %call66.10, 0
  br i1 %tobool.not.10, label %if.end75, label %if.then67

if.then67:                                        ; preds = %for.cond.9, %for.cond.8, %for.cond.7, %for.cond.6, %for.cond.5, %for.cond.4, %for.cond.3, %for.cond.2, %for.cond.1, %for.cond, %for.body.preheader
  %arrayidx136.lcssa = phi ptr [ @VideoRes, %for.body.preheader ], [ getelementptr inbounds (i8, ptr @VideoRes, i64 16), %for.cond ], [ getelementptr inbounds (i8, ptr @VideoRes, i64 32), %for.cond.1 ], [ getelementptr inbounds (i8, ptr @VideoRes, i64 48), %for.cond.2 ], [ getelementptr inbounds (i8, ptr @VideoRes, i64 64), %for.cond.3 ], [ getelementptr inbounds (i8, ptr @VideoRes, i64 80), %for.cond.4 ], [ getelementptr inbounds (i8, ptr @VideoRes, i64 96), %for.cond.5 ], [ getelementptr inbounds (i8, ptr @VideoRes, i64 112), %for.cond.6 ], [ getelementptr inbounds (i8, ptr @VideoRes, i64 128), %for.cond.7 ], [ getelementptr inbounds (i8, ptr @VideoRes, i64 144), %for.cond.8 ], [ getelementptr inbounds (i8, ptr @VideoRes, i64 160), %for.cond.9 ]
  %x_size70 = getelementptr inbounds i8, ptr %arrayidx136.lcssa, i64 8
  %11 = load i32, ptr %x_size70, align 8
  store i32 %11, ptr %x_size, align 4
  %y_size73 = getelementptr inbounds i8, ptr %arrayidx136.lcssa, i64 12
  %12 = load i32, ptr %y_size73, align 4
  store i32 %12, ptr %y_size, align 4
  br label %if.end75

if.end75:                                         ; preds = %for.cond.9, %if.then67, %while.end
  %13 = load i32, ptr %x_size, align 4
  %cmp76 = icmp eq i32 %13, -1
  br i1 %cmp76, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end75
  %14 = load i32, ptr %y_size, align 4
  %cmp78 = icmp ne i32 %14, -1
  %15 = zext i1 %cmp78 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end75
  %not. = phi i32 [ 0, %if.end75 ], [ %15, %lor.rhs ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tail) #12
  ret i32 %not.
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @ParseFrameNoFormatFromString(ptr noundef %input_file) local_unnamed_addr #0 {
while.body.lr.ph:
  %tail = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tail) #12
  %fhead1 = getelementptr inbounds i8, ptr %input_file, i64 255
  %ftail3 = getelementptr inbounds i8, ptr %input_file, i64 510
  %zero_pad5 = getelementptr inbounds i8, ptr %input_file, i64 920
  %num_digits6 = getelementptr inbounds i8, ptr %input_file, i64 924
  store i32 0, ptr %zero_pad5, align 4
  store i32 -1, ptr %num_digits6, align 4
  %sub.ptr.rhs.cast = ptrtoint ptr %input_file to i64
  %strchr66 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %input_file, i32 37)
  %cmp867 = icmp eq ptr %strchr66, null
  br i1 %cmp867, label %while.end, label %if.end

if.end:                                           ; preds = %while.body.lr.ph, %if.then28
  %strchr68 = phi ptr [ %strchr, %if.then28 ], [ %strchr66, %while.body.lr.ph ]
  %sub.ptr.lhs.cast = ptrtoint ptr %strchr68 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call9 = tail call ptr @strncpy(ptr noundef nonnull %fhead1, ptr noundef nonnull %input_file, i64 noundef %sub.ptr.sub) #12
  %strchr64 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %strchr68, i32 100)
  %cmp11 = icmp eq ptr %strchr64, null
  br i1 %cmp11, label %while.end, label %if.end13

if.end13:                                         ; preds = %if.end
  store i8 0, ptr %strchr64, align 1
  %add.ptr = getelementptr inbounds i8, ptr %strchr68, i64 1
  %0 = load i8, ptr %add.ptr, align 1
  %cmp14 = icmp eq i8 %0, 48
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  store i32 1, ptr %zero_pad5, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13
  %call19 = call i64 @strtol(ptr noundef nonnull %add.ptr, ptr noundef nonnull %tail, i32 noundef 10) #12
  %conv20 = trunc i64 %call19 to i32
  store i32 %conv20, ptr %num_digits6, align 4
  %1 = load ptr, ptr %tail, align 8
  %2 = load i8, ptr %1, align 1
  %cmp22.not = icmp eq i8 %2, 0
  br i1 %cmp22.not, label %lor.lhs.false, label %if.then28

lor.lhs.false:                                    ; preds = %if.end17
  %3 = load i8, ptr %add.ptr, align 1
  %cmp26 = icmp eq i8 %3, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %lor.lhs.false, %if.end17
  store i8 100, ptr %strchr64, align 1
  %strchr = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 37)
  %cmp8 = icmp eq ptr %strchr, null
  br i1 %cmp8, label %while.end, label %if.end

if.end29:                                         ; preds = %lor.lhs.false
  store i8 100, ptr %strchr64, align 1
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i64 1
  %call30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %incdec.ptr) #13
  %sext = shl i64 %call30, 32
  %conv32 = ashr exact i64 %sext, 32
  %call33 = tail call ptr @strncpy(ptr noundef nonnull %ftail3, ptr noundef nonnull %incdec.ptr, i64 noundef %conv32) #12
  br label %while.end

while.end:                                        ; preds = %if.end, %if.then28, %while.body.lr.ph, %if.end29
  %vdtype = getelementptr inbounds i8, ptr %input_file, i64 772
  %4 = load i32, ptr %vdtype, align 4
  %cmp34 = icmp eq i32 %4, 3
  br i1 %cmp34, label %if.end40, label %if.else

if.else:                                          ; preds = %while.end
  %5 = load i32, ptr %num_digits6, align 4
  %cmp37 = icmp eq i32 %5, -1
  %cond = zext i1 %cmp37 to i32
  br label %if.end40

if.end40:                                         ; preds = %while.end, %if.else
  %cond.sink = phi i32 [ %cond, %if.else ], [ 0, %while.end ]
  %6 = getelementptr inbounds i8, ptr %input_file, i64 912
  store i32 %cond.sink, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tail) #12
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @OpenFrameFile(ptr nocapture noundef %input_file, i32 noundef %FrameNumberInFile) local_unnamed_addr #5 {
entry:
  %infile = alloca [255 x i8], align 16
  %in_number = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %infile) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in_number) #12
  store i8 0, ptr %in_number, align 16
  %fhead = getelementptr inbounds i8, ptr %input_file, i64 255
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %fhead) #13
  %sext = shl i64 %call, 32
  %conv4 = ashr exact i64 %sext, 32
  %call5 = call ptr @strncpy(ptr noundef nonnull %infile, ptr noundef nonnull %fhead, i64 noundef %conv4) #12
  %arrayidx7 = getelementptr inbounds [255 x i8], ptr %infile, i64 0, i64 %conv4
  store i8 0, ptr %arrayidx7, align 1
  %zero_pad = getelementptr inbounds i8, ptr %input_file, i64 920
  %0 = load i32, ptr %zero_pad, align 8
  %tobool.not = icmp eq i32 %0, 0
  %num_digits11 = getelementptr inbounds i8, ptr %input_file, i64 924
  %1 = load i32, ptr %num_digits11, align 4
  %.str.7..str.6 = select i1 %tobool.not, ptr @.str.7, ptr @.str.6
  %call12 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %in_number, i64 noundef 16, ptr noundef nonnull %.str.7..str.6, i32 noundef %1, i32 noundef %FrameNumberInFile) #12
  %call15 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %infile, ptr noundef nonnull dereferenceable(1) %in_number, i64 noundef 16) #12
  %2 = trunc i64 %call to i32
  %conv17 = add i32 %2, 16
  %idxprom18 = sext i32 %conv17 to i64
  %arrayidx19 = getelementptr inbounds [255 x i8], ptr %infile, i64 0, i64 %idxprom18
  store i8 0, ptr %arrayidx19, align 1
  %ftail = getelementptr inbounds i8, ptr %input_file, i64 510
  %call24 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %ftail) #13
  %call25 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %infile, ptr noundef nonnull %ftail, i64 noundef %call24) #12
  %conv29 = trunc i64 %call24 to i32
  %add30 = add nsw i32 %conv17, %conv29
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds [255 x i8], ptr %infile, i64 0, i64 %idxprom31
  store i8 0, ptr %arrayidx32, align 1
  %call34 = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %infile, i32 noundef 0) #12
  %f_num = getelementptr inbounds i8, ptr %input_file, i64 768
  store i32 %call34, ptr %f_num, align 8
  %cmp = icmp eq i32 %call34, -1
  br i1 %cmp, label %if.then36, label %if.end39

if.then36:                                        ; preds = %entry
  %call38 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull %infile)
  call void @report_stats_on_error() #12
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %entry
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in_number) #12
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %infile) #12
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare void @report_stats_on_error() local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @OpenFiles(ptr noundef %input_file) local_unnamed_addr #5 {
entry:
  %is_concatenated = getelementptr inbounds i8, ptr %input_file, i64 912
  %0 = load i32, ptr %is_concatenated, align 8
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %input_file) #13
  %1 = and i64 %call, 4294967295
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) @errortext, ptr noundef nonnull align 1 dereferenceable(60) @.str.9, i64 60, i1 false)
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 500) #12
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %call7 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %input_file, i32 noundef 0) #12
  %f_num = getelementptr inbounds i8, ptr %input_file, i64 768
  store i32 %call7, ptr %f_num, align 8
  %cmp8 = icmp eq i32 %call7, -1
  br i1 %cmp8, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.end
  %call13 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.10, ptr noundef nonnull %input_file) #12
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 500) #12
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then10, %entry
  ret void
}

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @CloseFiles(ptr nocapture noundef %input_file) local_unnamed_addr #5 {
entry:
  %f_num = getelementptr inbounds i8, ptr %input_file, i64 768
  %0 = load i32, ptr %f_num, align 8
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @close(i32 noundef %0) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 -1, ptr %f_num, align 8
  ret void
}

declare i32 @close(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @ParseVideoType(ptr nocapture noundef %input_file) local_unnamed_addr #9 {
entry:
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %input_file) #13
  %sext = shl i64 %call, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr inbounds i8, ptr %input_file, i64 %idx.ext
  %add.ptr3 = getelementptr inbounds i8, ptr %add.ptr, i64 -3
  %call4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr3, ptr noundef nonnull dereferenceable(4) @.str.11) #13
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %vdtype = getelementptr inbounds i8, ptr %input_file, i64 772
  store i32 0, ptr %vdtype, align 4
  %format6 = getelementptr inbounds i8, ptr %input_file, i64 776
  store i32 1, ptr %format6, align 8
  %avi = getelementptr inbounds i8, ptr %input_file, i64 960
  store ptr null, ptr %avi, align 8
  br label %if.end35

if.else:                                          ; preds = %entry
  %call7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr3, ptr noundef nonnull dereferenceable(4) @.str.12) #13
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.else15

if.then10:                                        ; preds = %if.else
  %vdtype11 = getelementptr inbounds i8, ptr %input_file, i64 772
  store i32 1, ptr %vdtype11, align 4
  %format12 = getelementptr inbounds i8, ptr %input_file, i64 776
  store i32 3, ptr %format12, align 8
  %avi14 = getelementptr inbounds i8, ptr %input_file, i64 960
  store ptr null, ptr %avi14, align 8
  br label %if.end35

if.else15:                                        ; preds = %if.else
  %call16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr3, ptr noundef nonnull dereferenceable(4) @.str.13) #13
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.else22

if.then19:                                        ; preds = %if.else15
  %vdtype20 = getelementptr inbounds i8, ptr %input_file, i64 772
  store i32 3, ptr %vdtype20, align 4
  %avi21 = getelementptr inbounds i8, ptr %input_file, i64 960
  store ptr null, ptr %avi21, align 8
  br label %if.end35

if.else22:                                        ; preds = %if.else15
  %call23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr3, ptr noundef nonnull dereferenceable(4) @.str.14) #13
  %cmp24 = icmp eq i32 %call23, 0
  %vdtype27 = getelementptr inbounds i8, ptr %input_file, i64 772
  br i1 %cmp24, label %if.then26, label %if.else28

if.then26:                                        ; preds = %if.else22
  store i32 4, ptr %vdtype27, align 4
  br label %if.end35

if.else28:                                        ; preds = %if.else22
  store i32 0, ptr %vdtype27, align 4
  %format30 = getelementptr inbounds i8, ptr %input_file, i64 776
  store i32 1, ptr %format30, align 8
  %avi32 = getelementptr inbounds i8, ptr %input_file, i64 960
  store ptr null, ptr %avi32, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then10, %if.then26, %if.else28, %if.then19, %if.then
  %0 = phi i32 [ 1, %if.then10 ], [ 4, %if.then26 ], [ 0, %if.else28 ], [ 3, %if.then19 ], [ 0, %if.then ]
  ret i32 %0
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
