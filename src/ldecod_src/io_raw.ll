; ModuleID = 'ldecod_src/io_raw.c'
source_filename = "ldecod_src/io_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errortext = external global [300 x i8], align 16
@.str = private unnamed_addr constant [75 x i8] c"read_one_frame: cannot advance file pointer in input file beyond frame %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"read_one_frame (NOT IMPLEMENTED): pic unit size on disk must be divided by 8\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"read_one_frame: cannot fseek to (Header size) in input file\00", align 1
@.str.3 = private unnamed_addr constant [79 x i8] c"read_one_frame (NOT IMPLEMENTED): pic unit size on disk must be divisible by 8\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"read_one_frame: cannot read %d bytes from input file, unexpected EOF!\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ReadFrameConcatenated(ptr nocapture noundef readonly %p_Inp, ptr nocapture noundef readonly %input_file, i32 noundef %FrameNoInFile, i32 noundef %HeaderSize, ptr nocapture noundef readonly %source, ptr nocapture noundef %buf) local_unnamed_addr #0 {
entry:
  %f_num = getelementptr inbounds i8, ptr %input_file, i64 768
  %0 = load i32, ptr %f_num, align 8
  %pic_unit_size_shift3 = getelementptr inbounds i8, ptr %source, i64 128
  %1 = load i32, ptr %pic_unit_size_shift3, align 8
  %size_cmp = getelementptr inbounds i8, ptr %source, i64 72
  %2 = load i32, ptr %size_cmp, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %source, i64 76
  %3 = load i32, ptr %arrayidx2, align 4
  %mul4 = shl i32 %3, 1
  %reass.add = add i32 %mul4, %2
  %reass.mul = mul i32 %reass.add, %1
  %conv = sext i32 %reass.mul to i64
  %conv5 = sext i32 %HeaderSize to i64
  %start_frame = getelementptr inbounds i8, ptr %p_Inp, i64 3992
  %4 = load i32, ptr %start_frame, align 8
  %add6 = add nsw i32 %4, %FrameNoInFile
  %conv7 = sext i32 %add6 to i64
  %mul8 = mul nsw i64 %conv, %conv7
  %add9 = add nsw i64 %mul8, %conv5
  %call = tail call i64 @lseek(i32 noundef %0, i64 noundef %add9, i32 noundef 0) #6
  %cmp = icmp eq i64 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %start_frame, align 8
  %add12 = add nsw i32 %5, %FrameNoInFile
  %call13 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str, i32 noundef %add12) #6
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef -1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %pic_unit_size_on_disk = getelementptr inbounds i8, ptr %source, i64 124
  %6 = load i32, ptr %pic_unit_size_on_disk, align 4
  %and = and i32 %6, 7
  %cmp14 = icmp eq i32 %and, 0
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end
  %width.i = getelementptr inbounds i8, ptr %source, i64 16
  %height.i = getelementptr inbounds i8, ptr %source, i64 28
  %7 = load i32, ptr %height.i, align 4
  %cmp70.i = icmp sgt i32 %7, 0
  br i1 %cmp70.i, label %for.body.lr.ph.i, label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then16
  %8 = load i32, ptr %width.i, align 8
  %9 = load i32, ptr %pic_unit_size_shift3, align 8
  %mul.i = mul nsw i32 %9, %8
  %conv.i = sext i32 %mul.i to i64
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i, %for.body.lr.ph.i
  %i.072.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i ]
  %cur_buf.071.i = phi ptr [ %buf, %for.body.lr.ph.i ], [ %add.ptr.i, %if.end.i ]
  %call.i = tail call i64 @read(i32 noundef %0, ptr noundef %cur_buf.071.i, i64 noundef %conv.i) #6
  %cmp3.not.i = icmp eq i64 %call.i, %conv.i
  br i1 %cmp3.not.i, label %if.end.i, label %cleanup.sink.split.i

if.end.i:                                         ; preds = %for.body.i
  %add.ptr.i = getelementptr inbounds i8, ptr %cur_buf.071.i, i64 %conv.i
  %inc.i = add nuw nsw i32 %i.072.i, 1
  %10 = load i32, ptr %height.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %10
  br i1 %cmp.i, label %for.body.i, label %for.end.i

for.end.i:                                        ; preds = %if.end.i, %if.then16
  %cur_buf.0.lcssa.i = phi ptr [ %buf, %if.then16 ], [ %add.ptr.i, %if.end.i ]
  %11 = load i32, ptr %source, align 8
  %cmp8.not.i = icmp eq i32 %11, 0
  br i1 %cmp8.not.i, label %ReadData.exit, label %if.then10.i

if.then10.i:                                      ; preds = %for.end.i
  %12 = load i32, ptr %pic_unit_size_shift3, align 8
  %arrayidx13.i = getelementptr inbounds i8, ptr %source, i64 20
  %13 = load i32, ptr %arrayidx13.i, align 4
  %mul14.i = mul nsw i32 %13, %12
  %arrayidx21.i = getelementptr inbounds i8, ptr %source, i64 32
  %conv25.i = sext i32 %mul14.i to i64
  %14 = load i32, ptr %arrayidx21.i, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %for.body24.i, label %ReadData.exit

for.body24.i:                                     ; preds = %if.then10.i, %if.end34.i
  %i.175.i = phi i32 [ %inc38.i, %if.end34.i ], [ 0, %if.then10.i ]
  %cur_buf.274.i = phi ptr [ %add.ptr36.i, %if.end34.i ], [ %cur_buf.0.lcssa.i, %if.then10.i ]
  %call26.i = tail call i64 @read(i32 noundef %0, ptr noundef %cur_buf.274.i, i64 noundef %conv25.i) #6
  %cmp28.not.i = icmp eq i64 %call26.i, %conv25.i
  br i1 %cmp28.not.i, label %if.end34.i, label %cleanup.sink.split.i

if.end34.i:                                       ; preds = %for.body24.i
  %add.ptr36.i = getelementptr inbounds i8, ptr %cur_buf.274.i, i64 %conv25.i
  %inc38.i = add nuw nsw i32 %i.175.i, 1
  %16 = load i32, ptr %arrayidx21.i, align 4
  %cmp22.i = icmp slt i32 %inc38.i, %16
  br i1 %cmp22.i, label %for.body24.i, label %for.inc40.i

for.inc40.i:                                      ; preds = %if.end34.i
  %cmp2273.1.i = icmp sgt i32 %16, 0
  br i1 %cmp2273.1.i, label %for.body24.1.i, label %ReadData.exit

for.body24.1.i:                                   ; preds = %for.inc40.i, %if.end34.1.i
  %i.175.1.i = phi i32 [ %inc38.1.i, %if.end34.1.i ], [ 0, %for.inc40.i ]
  %cur_buf.274.1.i = phi ptr [ %add.ptr36.1.i, %if.end34.1.i ], [ %add.ptr36.i, %for.inc40.i ]
  %call26.1.i = tail call i64 @read(i32 noundef %0, ptr noundef %cur_buf.274.1.i, i64 noundef %conv25.i) #6
  %cmp28.not.1.i = icmp eq i64 %call26.1.i, %conv25.i
  br i1 %cmp28.not.1.i, label %if.end34.1.i, label %cleanup.sink.split.i

if.end34.1.i:                                     ; preds = %for.body24.1.i
  %add.ptr36.1.i = getelementptr inbounds i8, ptr %cur_buf.274.1.i, i64 %conv25.i
  %inc38.1.i = add nuw nsw i32 %i.175.1.i, 1
  %17 = load i32, ptr %arrayidx21.i, align 4
  %cmp22.1.i = icmp slt i32 %inc38.1.i, %17
  br i1 %cmp22.1.i, label %for.body24.1.i, label %ReadData.exit

cleanup.sink.split.i:                             ; preds = %for.body.i, %for.body24.i, %for.body24.1.i
  %.sink.in.i = phi ptr [ %arrayidx13.i, %for.body24.1.i ], [ %arrayidx13.i, %for.body24.i ], [ %width.i, %for.body.i ]
  %.sink.i = load i32, ptr %.sink.in.i, align 4
  %call33.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %.sink.i)
  br label %ReadData.exit

ReadData.exit:                                    ; preds = %if.end34.1.i, %for.end.i, %if.then10.i, %for.inc40.i, %cleanup.sink.split.i
  %retval.0.i = phi i32 [ 1, %for.end.i ], [ 1, %if.then10.i ], [ 1, %for.inc40.i ], [ 0, %cleanup.sink.split.i ], [ 1, %if.end34.1.i ]
  ret i32 %retval.0.i

if.else:                                          ; preds = %if.end
  %call18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  tail call void @exit(i32 noundef -1) #7
  unreachable
}

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ReadFrameSeparate(ptr nocapture noundef readonly %p_Inp, ptr noundef %input_file, i32 noundef %FrameNoInFile, i32 noundef %HeaderSize, ptr nocapture noundef readonly %source, ptr nocapture noundef %buf) local_unnamed_addr #0 {
entry:
  %f_num = getelementptr inbounds i8, ptr %input_file, i64 768
  %0 = load i32, ptr %f_num, align 8
  %start_frame = getelementptr inbounds i8, ptr %p_Inp, i64 3992
  %1 = load i32, ptr %start_frame, align 8
  %add = add nsw i32 %1, %FrameNoInFile
  tail call void @OpenFrameFile(ptr noundef %input_file, i32 noundef %add) #6
  %conv = sext i32 %HeaderSize to i64
  %call = tail call i64 @lseek(i32 noundef %0, i64 noundef %conv, i32 noundef 0) #6
  %cmp.not = icmp eq i64 %call, %conv
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.2, i32 noundef -1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %pic_unit_size_on_disk = getelementptr inbounds i8, ptr %source, i64 124
  %2 = load i32, ptr %pic_unit_size_on_disk, align 4
  %and = and i32 %2, 7
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %pic_unit_size_shift3.i = getelementptr inbounds i8, ptr %source, i64 128
  %width.i = getelementptr inbounds i8, ptr %source, i64 16
  %height.i = getelementptr inbounds i8, ptr %source, i64 28
  %3 = load i32, ptr %height.i, align 4
  %cmp70.i = icmp sgt i32 %3, 0
  br i1 %cmp70.i, label %for.body.lr.ph.i, label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then5
  %4 = load i32, ptr %width.i, align 8
  %5 = load i32, ptr %pic_unit_size_shift3.i, align 8
  %mul.i = mul nsw i32 %5, %4
  %conv.i = sext i32 %mul.i to i64
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i, %for.body.lr.ph.i
  %i.072.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i ]
  %cur_buf.071.i = phi ptr [ %buf, %for.body.lr.ph.i ], [ %add.ptr.i, %if.end.i ]
  %call.i = tail call i64 @read(i32 noundef %0, ptr noundef %cur_buf.071.i, i64 noundef %conv.i) #6
  %cmp3.not.i = icmp eq i64 %call.i, %conv.i
  br i1 %cmp3.not.i, label %if.end.i, label %cleanup.sink.split.i

if.end.i:                                         ; preds = %for.body.i
  %add.ptr.i = getelementptr inbounds i8, ptr %cur_buf.071.i, i64 %conv.i
  %inc.i = add nuw nsw i32 %i.072.i, 1
  %6 = load i32, ptr %height.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %6
  br i1 %cmp.i, label %for.body.i, label %for.end.i

for.end.i:                                        ; preds = %if.end.i, %if.then5
  %cur_buf.0.lcssa.i = phi ptr [ %buf, %if.then5 ], [ %add.ptr.i, %if.end.i ]
  %7 = load i32, ptr %source, align 8
  %cmp8.not.i = icmp eq i32 %7, 0
  br i1 %cmp8.not.i, label %ReadData.exit, label %if.then10.i

if.then10.i:                                      ; preds = %for.end.i
  %8 = load i32, ptr %pic_unit_size_shift3.i, align 8
  %arrayidx13.i = getelementptr inbounds i8, ptr %source, i64 20
  %9 = load i32, ptr %arrayidx13.i, align 4
  %mul14.i = mul nsw i32 %9, %8
  %arrayidx21.i = getelementptr inbounds i8, ptr %source, i64 32
  %conv25.i = sext i32 %mul14.i to i64
  %10 = load i32, ptr %arrayidx21.i, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %for.body24.i, label %ReadData.exit

for.body24.i:                                     ; preds = %if.then10.i, %if.end34.i
  %i.175.i = phi i32 [ %inc38.i, %if.end34.i ], [ 0, %if.then10.i ]
  %cur_buf.274.i = phi ptr [ %add.ptr36.i, %if.end34.i ], [ %cur_buf.0.lcssa.i, %if.then10.i ]
  %call26.i = tail call i64 @read(i32 noundef %0, ptr noundef %cur_buf.274.i, i64 noundef %conv25.i) #6
  %cmp28.not.i = icmp eq i64 %call26.i, %conv25.i
  br i1 %cmp28.not.i, label %if.end34.i, label %cleanup.sink.split.i

if.end34.i:                                       ; preds = %for.body24.i
  %add.ptr36.i = getelementptr inbounds i8, ptr %cur_buf.274.i, i64 %conv25.i
  %inc38.i = add nuw nsw i32 %i.175.i, 1
  %12 = load i32, ptr %arrayidx21.i, align 4
  %cmp22.i = icmp slt i32 %inc38.i, %12
  br i1 %cmp22.i, label %for.body24.i, label %for.inc40.i

for.inc40.i:                                      ; preds = %if.end34.i
  %cmp2273.1.i = icmp sgt i32 %12, 0
  br i1 %cmp2273.1.i, label %for.body24.1.i, label %ReadData.exit

for.body24.1.i:                                   ; preds = %for.inc40.i, %if.end34.1.i
  %i.175.1.i = phi i32 [ %inc38.1.i, %if.end34.1.i ], [ 0, %for.inc40.i ]
  %cur_buf.274.1.i = phi ptr [ %add.ptr36.1.i, %if.end34.1.i ], [ %add.ptr36.i, %for.inc40.i ]
  %call26.1.i = tail call i64 @read(i32 noundef %0, ptr noundef %cur_buf.274.1.i, i64 noundef %conv25.i) #6
  %cmp28.not.1.i = icmp eq i64 %call26.1.i, %conv25.i
  br i1 %cmp28.not.1.i, label %if.end34.1.i, label %cleanup.sink.split.i

if.end34.1.i:                                     ; preds = %for.body24.1.i
  %add.ptr36.1.i = getelementptr inbounds i8, ptr %cur_buf.274.1.i, i64 %conv25.i
  %inc38.1.i = add nuw nsw i32 %i.175.1.i, 1
  %13 = load i32, ptr %arrayidx21.i, align 4
  %cmp22.1.i = icmp slt i32 %inc38.1.i, %13
  br i1 %cmp22.1.i, label %for.body24.1.i, label %ReadData.exit

cleanup.sink.split.i:                             ; preds = %for.body.i, %for.body24.i, %for.body24.1.i
  %.sink.in.i = phi ptr [ %arrayidx13.i, %for.body24.1.i ], [ %arrayidx13.i, %for.body24.i ], [ %width.i, %for.body.i ]
  %.sink.i = load i32, ptr %.sink.in.i, align 4
  %call33.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %.sink.i)
  br label %ReadData.exit

ReadData.exit:                                    ; preds = %if.end34.1.i, %for.end.i, %if.then10.i, %for.inc40.i, %cleanup.sink.split.i
  %retval.0.i = phi i32 [ 1, %for.end.i ], [ 1, %if.then10.i ], [ 1, %for.inc40.i ], [ 0, %cleanup.sink.split.i ], [ 1, %if.end34.1.i ]
  %cmp9.not = icmp eq i32 %0, -1
  br i1 %cmp9.not, label %if.end13, label %if.then11

if.else:                                          ; preds = %if.end
  %call7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  tail call void @exit(i32 noundef -1) #7
  unreachable

if.then11:                                        ; preds = %ReadData.exit
  %call12 = tail call i32 @close(i32 noundef %0) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %ReadData.exit
  ret i32 %retval.0.i
}

declare void @OpenFrameFile(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
