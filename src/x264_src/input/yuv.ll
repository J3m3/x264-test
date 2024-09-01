; ModuleID = 'x264_src/input/yuv.c'
source_filename = "x264_src/input/yuv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_input_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@yuv_input = dso_local local_unnamed_addr constant %struct.cli_input_t { ptr @open_file, ptr @get_frame_total, ptr @x264_picture_alloc, ptr @read_frame, ptr null, ptr @x264_picture_clean, ptr @close_file }, align 8
@.str = private unnamed_addr constant [6 x i8] c"%dx%d\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"yuv [error]: rawyuv input requires a resolution.\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: nofree nounwind uwtable
define internal range(i32 -1, 1) i32 @open_file(ptr nocapture noundef readonly %psz_filename, ptr nocapture noundef writeonly %p_handle, ptr noundef %info, ptr nocapture noundef readonly %opt) #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup42, label %if.end

if.end:                                           ; preds = %entry
  %resolution = getelementptr inbounds i8, ptr %opt, i64 8
  %0 = load ptr, ptr %resolution, align 8
  %tobool1.not = icmp eq ptr %0, null
  %width = getelementptr inbounds i8, ptr %info, i64 44
  %height = getelementptr inbounds i8, ptr %info, i64 12
  br i1 %tobool1.not, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.end
  %1 = load i8, ptr %psz_filename, align 1
  %tobool3.not66 = icmp eq i8 %1, 0
  br i1 %tobool3.not66, label %if.end18, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %2 = phi i8 [ %4, %for.inc ], [ %1, %for.cond.preheader ]
  %p.067 = phi ptr [ %incdec.ptr, %for.inc ], [ %psz_filename, %for.cond.preheader ]
  %3 = add i8 %2, -48
  %or.cond = icmp ult i8 %3, 10
  br i1 %or.cond, label %land.lhs.true8, label %for.inc

land.lhs.true8:                                   ; preds = %for.body
  %call9 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %p.067, ptr noundef nonnull @.str, ptr noundef nonnull %width, ptr noundef nonnull %height) #8
  %cmp10 = icmp eq i32 %call9, 2
  br i1 %cmp10, label %if.end18, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true8
  %incdec.ptr = getelementptr inbounds i8, ptr %p.067, i64 1
  %4 = load i8, ptr %incdec.ptr, align 1
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %if.end18, label %for.body

if.else:                                          ; preds = %if.end
  %call17 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %0, ptr noundef nonnull @.str, ptr noundef nonnull %width, ptr noundef nonnull %height) #8
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true8, %for.inc, %for.cond.preheader, %if.else
  %width19 = getelementptr inbounds i8, ptr %info, i64 44
  %5 = load i32, ptr %width19, align 4
  %tobool20.not = icmp eq i32 %5, 0
  br i1 %tobool20.not, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end18
  %height21 = getelementptr inbounds i8, ptr %info, i64 12
  %6 = load i32, ptr %height21, align 4
  %tobool22.not = icmp eq i32 %6, 0
  br i1 %tobool22.not, label %if.then23, label %if.end25

if.then23:                                        ; preds = %lor.lhs.false, %if.end18
  %7 = load ptr, ptr @stderr, align 8
  %8 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 49, i64 1, ptr %7) #9
  br label %cleanup42

if.end25:                                         ; preds = %lor.lhs.false
  %next_frame = getelementptr inbounds i8, ptr %call, i64 16
  store i32 0, ptr %next_frame, align 8
  %vfr = getelementptr inbounds i8, ptr %info, i64 40
  store i32 0, ptr %vfr, align 4
  %width27 = getelementptr inbounds i8, ptr %call, i64 8
  store i32 %5, ptr %width27, align 8
  %height29 = getelementptr inbounds i8, ptr %call, i64 12
  store i32 %6, ptr %height29, align 4
  %9 = load i8, ptr %psz_filename, align 1
  %.not = icmp eq i8 %9, 45
  br i1 %.not, label %if.end25.tail, label %if.else33

if.end25.tail:                                    ; preds = %if.end25
  %10 = getelementptr inbounds i8, ptr %psz_filename, i64 1
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.end25.tail
  %13 = load ptr, ptr @stdin, align 8
  br label %if.end36

if.else33:                                        ; preds = %if.end25, %if.end25.tail
  %call34 = tail call noalias ptr @fopen64(ptr noundef nonnull %psz_filename, ptr noundef nonnull @.str.3)
  br label %if.end36

if.end36:                                         ; preds = %if.else33, %if.then32
  %storemerge = phi ptr [ %13, %if.then32 ], [ %call34, %if.else33 ]
  store ptr %storemerge, ptr %call, align 8
  %cmp38 = icmp eq ptr %storemerge, null
  br i1 %cmp38, label %cleanup42, label %if.end41

if.end41:                                         ; preds = %if.end36
  store ptr %call, ptr %p_handle, align 8
  br label %cleanup42

cleanup42:                                        ; preds = %if.end36, %entry, %if.end41, %if.then23
  %retval.0 = phi i32 [ 0, %if.end41 ], [ -1, %if.then23 ], [ -1, %entry ], [ -1, %if.end36 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @get_frame_total(ptr nocapture noundef readonly %handle) #0 {
entry:
  %0 = load ptr, ptr %handle, align 8
  %call2 = tail call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 2)
  %1 = load ptr, ptr %handle, align 8
  %call4 = tail call i64 @ftell(ptr noundef %1)
  %2 = load ptr, ptr %handle, align 8
  %call6 = tail call i32 @fseek(ptr noundef %2, i64 noundef 0, i32 noundef 0)
  %width = getelementptr inbounds i8, ptr %handle, i64 8
  %3 = load i32, ptr %width, align 8
  %height = getelementptr inbounds i8, ptr %handle, i64 12
  %4 = load i32, ptr %height, align 4
  %mul = mul i32 %3, 3
  %mul7 = mul i32 %mul, %4
  %div = sdiv i32 %mul7, 2
  %conv = sext i32 %div to i64
  %div8 = udiv i64 %call4, %conv
  %conv9 = trunc i64 %div8 to i32
  ret i32 %conv9
}

declare i32 @x264_picture_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nofree nounwind uwtable
define internal range(i32 -1, 1) i32 @read_frame(ptr nocapture noundef readonly %p_pic, ptr nocapture noundef %handle, i32 noundef %i_frame) #0 {
entry:
  %next_frame = getelementptr inbounds i8, ptr %handle, i64 16
  %0 = load i32, ptr %next_frame, align 8
  %cmp = icmp slt i32 %0, %i_frame
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %handle, align 8
  %conv = sext i32 %i_frame to i64
  %width = getelementptr inbounds i8, ptr %handle, i64 8
  %2 = load i32, ptr %width, align 8
  %conv3 = sext i32 %2 to i64
  %height = getelementptr inbounds i8, ptr %handle, i64 12
  %3 = load i32, ptr %height, align 4
  %conv4 = sext i32 %3 to i64
  %mul = mul nsw i64 %conv, 3
  %mul5 = mul i64 %mul, %conv3
  %mul6 = mul i64 %mul5, %conv4
  %div35 = lshr i64 %mul6, 1
  %call7 = tail call i32 @fseek(ptr noundef %1, i64 noundef %div35, i32 noundef 0)
  br label %if.end16

if.end16:                                         ; preds = %if.then, %entry
  %plane.i = getelementptr inbounds i8, ptr %p_pic, i64 64
  %4 = load ptr, ptr %plane.i, align 8
  %width.i = getelementptr inbounds i8, ptr %handle, i64 8
  %5 = load i32, ptr %width.i, align 8
  %height.i = getelementptr inbounds i8, ptr %handle, i64 12
  %6 = load i32, ptr %height.i, align 4
  %mul.i = mul nsw i32 %6, %5
  %conv.i = sext i32 %mul.i to i64
  %7 = load ptr, ptr %handle, align 8
  %call.i = tail call i64 @fread(ptr noundef %4, i64 noundef %conv.i, i64 noundef 1, ptr noundef %7)
  %cmp.i = icmp eq i64 %call.i, 0
  br i1 %cmp.i, label %cleanup, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end16
  %arrayidx4.i = getelementptr inbounds i8, ptr %p_pic, i64 72
  %8 = load ptr, ptr %arrayidx4.i, align 8
  %9 = load i32, ptr %width.i, align 8
  %10 = load i32, ptr %height.i, align 4
  %mul7.i = mul nsw i32 %10, %9
  %div.i = sdiv i32 %mul7.i, 4
  %conv8.i = sext i32 %div.i to i64
  %11 = load ptr, ptr %handle, align 8
  %call10.i = tail call i64 @fread(ptr noundef %8, i64 noundef %conv8.i, i64 noundef 1, ptr noundef %11)
  %cmp11.i = icmp eq i64 %call10.i, 0
  br i1 %cmp11.i, label %cleanup, label %read_frame_internal.exit

read_frame_internal.exit:                         ; preds = %lor.lhs.false.i
  %arrayidx15.i = getelementptr inbounds i8, ptr %p_pic, i64 80
  %12 = load ptr, ptr %arrayidx15.i, align 8
  %13 = load i32, ptr %width.i, align 8
  %14 = load i32, ptr %height.i, align 4
  %mul18.i = mul nsw i32 %14, %13
  %div19.i = sdiv i32 %mul18.i, 4
  %conv20.i = sext i32 %div19.i to i64
  %15 = load ptr, ptr %handle, align 8
  %call22.i = tail call i64 @fread(ptr noundef %12, i64 noundef %conv20.i, i64 noundef 1, ptr noundef %15)
  %cmp23.i.not = icmp eq i64 %call22.i, 0
  br i1 %cmp23.i.not, label %cleanup, label %if.end20

if.end20:                                         ; preds = %read_frame_internal.exit
  %add = add nsw i32 %i_frame, 1
  store i32 %add, ptr %next_frame, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %lor.lhs.false.i, %read_frame_internal.exit, %if.end20
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -1, %read_frame_internal.exit ], [ -1, %lor.lhs.false.i ], [ -1, %if.end16 ]
  ret i32 %retval.0
}

declare void @x264_picture_clean(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @close_file(ptr noundef %handle) #2 {
entry:
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %handle, align 8
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @fclose(ptr noundef nonnull %0)
  tail call void @free(ptr noundef nonnull %handle) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
