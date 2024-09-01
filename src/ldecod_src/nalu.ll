; ModuleID = 'ldecod_src/nalu.c'
source_filename = "ldecod_src/nalu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"initBitsFile : p_Vid->bitsfile\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"initBitsFile: Unknown bitstream file mode\00", align 1
@errortext = external global [300 x i8], align 16
@.str.2 = private unnamed_addr constant [54 x i8] c"Error while getting the NALU in file format %s, exit\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Annex B\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"RTP\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Invalid startcode emulation prevention found.\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Found NALU with forbidden_bit set, bit error?\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"non_idr_flag\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"priority_id\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"view_id\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"temporal_id\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"anchor_pic_flag\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"inter_view_flag\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"reserved_one_bit\00", align 1
@str = private unnamed_addr constant [31 x i8] c"Warning: zero_byte shall exist\00", align 1
@str.17 = private unnamed_addr constant [31 x i8] c"warning: zero_byte shall exist\00", align 1
@str.18 = private unnamed_addr constant [54 x i8] c"Nalu Header MVC Extension: reserved_one_bit is not 1!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @initBitsFile(ptr noundef %p_Vid, i32 noundef %filemode) local_unnamed_addr #0 {
entry:
  switch i32 %filemode, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %call = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #7
  %bitsfile = getelementptr inbounds i8, ptr %p_Vid, i64 856616
  store ptr %call, ptr %bitsfile, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #8
  %.pre24 = load ptr, ptr %bitsfile, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %0 = phi ptr [ %.pre24, %if.then ], [ %call, %sw.bb ]
  store ptr @OpenAnnexBFile, ptr %0, align 8
  %1 = load ptr, ptr %bitsfile, align 8
  %CloseBitsFile = getelementptr inbounds i8, ptr %1, i64 8
  store ptr @CloseAnnexBFile, ptr %CloseBitsFile, align 8
  %2 = load ptr, ptr %bitsfile, align 8
  %GetNALU = getelementptr inbounds i8, ptr %2, i64 16
  store ptr @GetAnnexbNALU, ptr %GetNALU, align 8
  tail call void @malloc_annex_b(ptr noundef nonnull %p_Vid) #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %call5 = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #7
  %bitsfile6 = getelementptr inbounds i8, ptr %p_Vid, i64 856616
  store ptr %call5, ptr %bitsfile6, align 8
  %cmp7 = icmp eq ptr %call5, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %sw.bb4
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #8
  %.pre = load ptr, ptr %bitsfile6, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %sw.bb4
  %3 = phi ptr [ %.pre, %if.then8 ], [ %call5, %sw.bb4 ]
  store ptr @OpenRTPFile, ptr %3, align 8
  %4 = load ptr, ptr %bitsfile6, align 8
  %CloseBitsFile13 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr @CloseRTPFile, ptr %CloseBitsFile13, align 8
  %5 = load ptr, ptr %bitsfile6, align 8
  %GetNALU15 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr @GetRTPNALU, ptr %GetNALU15, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 255) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end9, %if.end
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #2

declare void @OpenAnnexBFile(ptr noundef, ptr noundef) #2

declare void @CloseAnnexBFile(ptr noundef) #2

declare i32 @GetAnnexbNALU(ptr noundef, ptr noundef) #2

declare void @malloc_annex_b(ptr noundef) local_unnamed_addr #2

declare void @OpenRTPFile(ptr noundef, ptr noundef) #2

declare void @CloseRTPFile(ptr noundef) #2

declare i32 @GetRTPNALU(ptr noundef, ptr noundef) #2

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @read_next_nalu(ptr noundef %p_Vid, ptr noundef %nalu) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %p_Vid, align 8
  %bitsfile = getelementptr inbounds i8, ptr %p_Vid, i64 856616
  %1 = load ptr, ptr %bitsfile, align 8
  %GetNALU = getelementptr inbounds i8, ptr %1, i64 16
  %2 = load ptr, ptr %GetNALU, align 8
  %call = tail call i32 %2(ptr noundef nonnull %p_Vid, ptr noundef %nalu) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  %FileFormat = getelementptr inbounds i8, ptr %0, i64 768
  %3 = load i32, ptr %FileFormat, align 8
  %cmp2 = icmp eq i32 %3, 0
  %cond = select i1 %cmp2, ptr @.str.3, ptr @.str.4
  %call3 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.2, ptr noundef nonnull %cond) #8
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 601) #8
  br label %if.end6

if.end:                                           ; preds = %entry
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end.thread, %if.end
  %nal_unit_type.i = getelementptr inbounds i8, ptr %nalu, i64 16
  %4 = load i32, ptr %nal_unit_type.i, align 8
  %5 = add i32 %4, -1
  %or.cond.i = icmp ult i32 %5, 5
  br i1 %or.cond.i, label %CheckZeroByteNonVCL.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end6
  %6 = add i32 %4, -9
  %switch.i = icmp ult i32 %6, -2
  switch i32 %4, label %if.end30.i [
    i32 18, label %if.then26.i
    i32 17, label %if.then26.i
    i32 16, label %if.then26.i
    i32 15, label %if.then26.i
    i32 14, label %if.then26.i
    i32 13, label %if.then26.i
    i32 9, label %if.then26.i
    i32 8, label %if.then26.i
    i32 7, label %if.then26.i
    i32 6, label %if.then26.i
  ]

if.then26.i:                                      ; preds = %if.end.i, %if.end.i, %if.end.i, %if.end.i, %if.end.i, %if.end.i, %if.end.i, %if.end.i, %if.end.i, %if.end.i
  %LastAccessUnitExists.i = getelementptr inbounds i8, ptr %p_Vid, i64 855992
  %7 = load i32, ptr %LastAccessUnitExists.i, align 8
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end30.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.then26.i
  store i32 0, ptr %LastAccessUnitExists.i, align 8
  %NALUCount.i = getelementptr inbounds i8, ptr %p_Vid, i64 855996
  store i32 0, ptr %NALUCount.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then27.i, %if.then26.i, %if.end.i
  %NALUCount31.i = getelementptr inbounds i8, ptr %p_Vid, i64 855996
  %8 = load i32, ptr %NALUCount31.i, align 4
  %inc.i = add nsw i32 %8, 1
  store i32 %inc.i, ptr %NALUCount31.i, align 4
  %cmp33.i = icmp ne i32 %8, 0
  %narrow.not.i = and i1 %switch.i, %cmp33.i
  br i1 %narrow.not.i, label %CheckZeroByteNonVCL.exit, label %land.lhs.true37.i

land.lhs.true37.i:                                ; preds = %if.end30.i
  %9 = load i32, ptr %nalu, align 8
  %cmp38.i = icmp eq i32 %9, 3
  br i1 %cmp38.i, label %if.then39.i, label %CheckZeroByteNonVCL.exit

if.then39.i:                                      ; preds = %land.lhs.true37.i
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %CheckZeroByteNonVCL.exit

CheckZeroByteNonVCL.exit:                         ; preds = %if.end6, %if.end30.i, %land.lhs.true37.i, %if.then39.i
  %buf.i = getelementptr inbounds i8, ptr %nalu, i64 24
  %10 = load ptr, ptr %buf.i, align 8
  %len.i = getelementptr inbounds i8, ptr %nalu, i64 4
  %11 = load i32, ptr %len.i, align 4
  %call.i = tail call i32 @EBSPtoRBSP(ptr noundef %10, i32 noundef %11, i32 noundef 1) #8
  store i32 %call.i, ptr %len.i, align 4
  %cmp8 = icmp slt i32 %call.i, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %CheckZeroByteNonVCL.exit
  tail call void @error(ptr noundef nonnull @.str.5, i32 noundef 602) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %CheckZeroByteNonVCL.exit
  %forbidden_bit = getelementptr inbounds i8, ptr %nalu, i64 12
  %12 = load i32, ptr %forbidden_bit, align 4
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end10
  tail call void @error(ptr noundef nonnull @.str.6, i32 noundef 603) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end10
  %13 = load i32, ptr %len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end12
  %retval.0 = phi i32 [ %13, %if.end12 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local void @CheckZeroByteNonVCL(ptr nocapture noundef %p_Vid, ptr nocapture noundef readonly %nalu) local_unnamed_addr #4 {
entry:
  %nal_unit_type = getelementptr inbounds i8, ptr %nalu, i64 16
  %0 = load i32, ptr %nal_unit_type, align 8
  %1 = add i32 %0, -1
  %or.cond = icmp ult i32 %1, 5
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = add i32 %0, -9
  %switch = icmp ult i32 %2, -2
  switch i32 %0, label %if.end30 [
    i32 18, label %if.then26
    i32 17, label %if.then26
    i32 16, label %if.then26
    i32 15, label %if.then26
    i32 14, label %if.then26
    i32 13, label %if.then26
    i32 9, label %if.then26
    i32 8, label %if.then26
    i32 7, label %if.then26
    i32 6, label %if.then26
  ]

if.then26:                                        ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %LastAccessUnitExists = getelementptr inbounds i8, ptr %p_Vid, i64 855992
  %3 = load i32, ptr %LastAccessUnitExists, align 8
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end30, label %if.then27

if.then27:                                        ; preds = %if.then26
  store i32 0, ptr %LastAccessUnitExists, align 8
  %NALUCount = getelementptr inbounds i8, ptr %p_Vid, i64 855996
  store i32 0, ptr %NALUCount, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end, %if.then26, %if.then27
  %NALUCount31 = getelementptr inbounds i8, ptr %p_Vid, i64 855996
  %4 = load i32, ptr %NALUCount31, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %NALUCount31, align 4
  %cmp33 = icmp ne i32 %4, 0
  %narrow.not = and i1 %switch, %cmp33
  br i1 %narrow.not, label %cleanup, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %if.end30
  %5 = load i32, ptr %nalu, align 8
  %cmp38 = icmp eq i32 %5, 3
  br i1 %cmp38, label %if.then39, label %cleanup

if.then39:                                        ; preds = %land.lhs.true37
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %land.lhs.true37, %if.then39, %entry
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @CheckZeroByteVCL(ptr nocapture noundef %p_Vid, ptr nocapture noundef readonly %nalu) local_unnamed_addr #4 {
entry:
  %nal_unit_type = getelementptr inbounds i8, ptr %nalu, i64 16
  %0 = load i32, ptr %nal_unit_type, align 8
  %1 = add i32 %0, -1
  %or.cond = icmp ult i32 %1, 5
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %LastAccessUnitExists = getelementptr inbounds i8, ptr %p_Vid, i64 855992
  %2 = load i32, ptr %LastAccessUnitExists, align 8
  %tobool.not = icmp eq i32 %2, 0
  %NALUCount5.phi.trans.insert = getelementptr inbounds i8, ptr %p_Vid, i64 855996
  br i1 %tobool.not, label %if.end4, label %if.end4.thread

if.end4.thread:                                   ; preds = %if.end
  store i32 1, ptr %NALUCount5.phi.trans.insert, align 4
  store i32 1, ptr %LastAccessUnitExists, align 8
  br label %land.lhs.true12

if.end4:                                          ; preds = %if.end
  %.pre = load i32, ptr %NALUCount5.phi.trans.insert, align 4
  %NALUCount5 = getelementptr inbounds i8, ptr %p_Vid, i64 855996
  %inc = add nsw i32 %.pre, 1
  store i32 %inc, ptr %NALUCount5, align 4
  %cmp7.not = icmp eq i32 %.pre, 0
  store i32 1, ptr %LastAccessUnitExists, align 8
  br i1 %cmp7.not, label %land.lhs.true12, label %cleanup

land.lhs.true12:                                  ; preds = %if.end4.thread, %if.end4
  %3 = load i32, ptr %nalu, align 8
  %cmp13 = icmp eq i32 %3, 3
  br i1 %cmp13, label %if.then14, label %cleanup

if.then14:                                        ; preds = %land.lhs.true12
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %land.lhs.true12, %if.then14, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @nal_unit_header_mvc_extension(ptr nocapture noundef writeonly %NaluHeaderMVCExt, ptr noundef %s) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @u_v(i32 noundef 1, ptr noundef nonnull @.str.9, ptr noundef %s) #8
  store i32 %call, ptr %NaluHeaderMVCExt, align 4
  %call1 = tail call i32 @u_v(i32 noundef 6, ptr noundef nonnull @.str.10, ptr noundef %s) #8
  %priority_id = getelementptr inbounds i8, ptr %NaluHeaderMVCExt, i64 4
  store i32 %call1, ptr %priority_id, align 4
  %call2 = tail call i32 @u_v(i32 noundef 10, ptr noundef nonnull @.str.11, ptr noundef %s) #8
  %view_id = getelementptr inbounds i8, ptr %NaluHeaderMVCExt, i64 8
  store i32 %call2, ptr %view_id, align 4
  %call3 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.12, ptr noundef %s) #8
  %temporal_id = getelementptr inbounds i8, ptr %NaluHeaderMVCExt, i64 12
  store i32 %call3, ptr %temporal_id, align 4
  %call4 = tail call i32 @u_v(i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef %s) #8
  %anchor_pic_flag = getelementptr inbounds i8, ptr %NaluHeaderMVCExt, i64 16
  store i32 %call4, ptr %anchor_pic_flag, align 4
  %call5 = tail call i32 @u_v(i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef %s) #8
  %inter_view_flag = getelementptr inbounds i8, ptr %NaluHeaderMVCExt, i64 20
  store i32 %call5, ptr %inter_view_flag, align 4
  %call6 = tail call i32 @u_v(i32 noundef 1, ptr noundef nonnull @.str.15, ptr noundef %s) #8
  %reserved_one_bit = getelementptr inbounds i8, ptr %NaluHeaderMVCExt, i64 24
  store i32 %call6, ptr %reserved_one_bit, align 4
  %cmp.not = icmp eq i32 %call6, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @u_v(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @nal_unit_header_svc_extension() local_unnamed_addr #5 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @prefix_nal_unit_svc() local_unnamed_addr #5 {
entry:
  ret void
}

declare i32 @EBSPtoRBSP(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind allocsize(0,1) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
