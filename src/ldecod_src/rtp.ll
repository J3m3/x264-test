; ModuleID = 'ldecod_src/rtp.c'
source_filename = "ldecod_src/rtp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errortext = external global [300 x i8], align 16
@.str = private unnamed_addr constant [26 x i8] c"Cannot open RTP file '%s'\00", align 1
@GetRTPNALU.first_call = internal unnamed_addr global i1 false, align 2
@GetRTPNALU.old_seq = internal unnamed_addr global i16 0, align 2
@.str.1 = private unnamed_addr constant [13 x i8] c"GetRTPNALU-1\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"GetRTPNALU-2\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"GetRTPNALU-3\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Version (V): %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Padding (P): %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Extension (X): %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"CSRC count (CC): %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Marker bit (M): %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Payload Type (PT): %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Sequence Number: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Timestamp: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"SSRC: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [57 x i8] c"RTPReadPacket: File corruption, could not read %d bytes\0A\00", align 1
@str = private unnamed_addr constant [52 x i8] c"Warning: RTP sequence number discontinuity detected\00", align 1
@str.19 = private unnamed_addr constant [63 x i8] c"RTPReadPacket: File corruption, could not read Timestamp, exit\00", align 1
@str.20 = private unnamed_addr constant [72 x i8] c"ERROR: we're in DecompseRTPpacket which shouldn't be called in SPEC CPU\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @OpenRTPFile(ptr nocapture noundef writeonly %p_Vid, ptr noundef %fn) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, i32, ...) @open(ptr noundef %fn, i32 noundef 0) #12
  %BitStreamFile = getelementptr inbounds i8, ptr %p_Vid, i64 856648
  store i32 %call, ptr %BitStreamFile, align 8
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str, ptr noundef %fn) #12
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 500) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @CloseRTPFile(ptr nocapture noundef %p_Vid) local_unnamed_addr #0 {
entry:
  %BitStreamFile = getelementptr inbounds i8, ptr %p_Vid, i64 856648
  %0 = load i32, ptr %BitStreamFile, align 8
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @close(i32 noundef %0) #12
  store i32 -1, ptr %BitStreamFile, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @GetRTPNALU(ptr nocapture noundef readonly %p_Vid, ptr nocapture noundef %nalu) local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #13
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call noalias dereferenceable_or_null(65508) ptr @malloc(i64 noundef 65508) #13
  %packet = getelementptr inbounds i8, ptr %call, i64 56
  store ptr %call1, ptr %packet, align 8
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #12
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %call5 = tail call noalias dereferenceable_or_null(65508) ptr @malloc(i64 noundef 65508) #13
  %payload = getelementptr inbounds i8, ptr %call, i64 40
  store ptr %call5, ptr %payload, align 8
  %cmp6 = icmp eq ptr %call5, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4
  %BitStreamFile = getelementptr inbounds i8, ptr %p_Vid, i64 856648
  %0 = load i32, ptr %BitStreamFile, align 8
  %call9 = tail call i32 @RTPReadPacket(ptr noundef nonnull %call, i32 noundef %0)
  %forbidden_bit = getelementptr inbounds i8, ptr %nalu, i64 12
  store i32 1, ptr %forbidden_bit, align 4
  %len = getelementptr inbounds i8, ptr %nalu, i64 4
  store i32 0, ptr %len, align 4
  %cmp10 = icmp sgt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.else.critedge

if.then11:                                        ; preds = %if.end8
  %.b = load i1, ptr @GetRTPNALU.first_call, align 2
  br i1 %.b, label %if.then11.if.end14_crit_edge, label %if.then12

if.then11.if.end14_crit_edge:                     ; preds = %if.then11
  %seq15.phi.trans.insert = getelementptr inbounds i8, ptr %call, i64 24
  %.pre = load i16, ptr %seq15.phi.trans.insert, align 8
  %.pre75 = load i16, ptr @GetRTPNALU.old_seq, align 2
  br label %if.end14

if.then12:                                        ; preds = %if.then11
  store i1 true, ptr @GetRTPNALU.first_call, align 2
  %seq = getelementptr inbounds i8, ptr %call, i64 24
  %1 = load i16, ptr %seq, align 8
  %sub = add i16 %1, -1
  br label %if.end14

if.end14:                                         ; preds = %if.then11.if.end14_crit_edge, %if.then12
  %2 = phi i16 [ %.pre75, %if.then11.if.end14_crit_edge ], [ %sub, %if.then12 ]
  %3 = phi i16 [ %.pre, %if.then11.if.end14_crit_edge ], [ %1, %if.then12 ]
  %add.neg = xor i16 %2, -1
  %sub18 = add i16 %3, %add.neg
  %lost_packets = getelementptr inbounds i8, ptr %nalu, i64 32
  store i16 %sub18, ptr %lost_packets, align 8
  store i16 %3, ptr @GetRTPNALU.old_seq, align 2
  %paylen = getelementptr inbounds i8, ptr %call, i64 48
  %4 = load i32, ptr %paylen, align 8
  store i32 %4, ptr %len, align 4
  %buf = getelementptr inbounds i8, ptr %nalu, i64 24
  %5 = load ptr, ptr %buf, align 8
  %6 = load ptr, ptr %payload, align 8
  %conv24 = zext i32 %4 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %6, i64 %conv24, i1 false)
  %7 = load ptr, ptr %buf, align 8
  %8 = load i8, ptr %7, align 1
  %9 = lshr i8 %8, 7
  %shr = zext nneg i8 %9 to i32
  store i32 %shr, ptr %forbidden_bit, align 4
  %10 = load i8, ptr %7, align 1
  %11 = lshr i8 %10, 5
  %12 = and i8 %11, 3
  %and32 = zext nneg i8 %12 to i32
  %nal_reference_idc = getelementptr inbounds i8, ptr %nalu, i64 20
  store i32 %and32, ptr %nal_reference_idc, align 4
  %13 = load i8, ptr %7, align 1
  %14 = and i8 %13, 31
  %and36 = zext nneg i8 %14 to i32
  %nal_unit_type = getelementptr inbounds i8, ptr %nalu, i64 16
  store i32 %and36, ptr %nal_unit_type, align 8
  %15 = load i16, ptr %lost_packets, align 8
  %tobool38.not = icmp eq i16 %15, 0
  br i1 %tobool38.not, label %if.then47, label %if.then39

if.then39:                                        ; preds = %if.end14
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %if.then47

if.then47:                                        ; preds = %if.then39, %if.end14
  tail call void @free(ptr noundef %6) #12
  %16 = load ptr, ptr %packet, align 8
  tail call void @free(ptr noundef %16) #12
  tail call void @free(ptr noundef nonnull %call) #12
  %17 = load i32, ptr %len, align 4
  br label %cleanup

if.else.critedge:                                 ; preds = %if.end8
  %18 = load ptr, ptr %payload, align 8
  tail call void @free(ptr noundef %18) #12
  %19 = load ptr, ptr %packet, align 8
  tail call void @free(ptr noundef %19) #12
  tail call void @free(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else.critedge, %if.then47
  %retval.0 = phi i32 [ %17, %if.then47 ], [ %call9, %if.else.critedge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @RTPReadPacket(ptr nocapture noundef %p, i32 noundef %bitstream) local_unnamed_addr #0 {
entry:
  %intime = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intime) #12
  %call = tail call i64 @lseek(i32 noundef %bitstream, i64 noundef 0, i32 noundef 1) #12
  %packlen = getelementptr inbounds i8, ptr %p, i64 64
  %call1 = tail call i64 @read(i32 noundef %bitstream, ptr noundef nonnull %packlen, i64 noundef 4) #12
  %cmp.not = icmp eq i64 %call1, 4
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i64 @read(i32 noundef %bitstream, ptr noundef nonnull %intime, i64 noundef 4) #12
  %cmp3.not = icmp eq i64 %call2, 4
  br i1 %cmp3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = tail call i64 @lseek(i32 noundef %bitstream, i64 noundef %call, i32 noundef 0) #12
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19)
  tail call void @exit(i32 noundef -1) #14
  unreachable

if.end7:                                          ; preds = %if.end
  %0 = load i32, ptr %packlen, align 8
  %packet = getelementptr inbounds i8, ptr %p, i64 56
  %1 = load ptr, ptr %packet, align 8
  %conv = zext i32 %0 to i64
  %call10 = tail call i64 @read(i32 noundef %bitstream, ptr noundef %1, i64 noundef %conv) #12
  %conv11 = trunc i64 %call10 to i32
  %cmp12.not = icmp eq i32 %0, %conv11
  br i1 %cmp12.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end7
  %2 = load i32, ptr %packlen, align 8
  %call16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %2)
  tail call void @exit(i32 noundef -1) #14
  unreachable

if.end17:                                         ; preds = %if.end7
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.20)
  %3 = load i32, ptr %packlen, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end17
  %retval.0 = phi i32 [ %3, %if.end17 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intime) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @DecomposeRTPpacket(ptr nocapture noundef readnone %p) local_unnamed_addr #8 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.20)
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @DumpRTPHeader(ptr nocapture noundef readonly %p) local_unnamed_addr #8 {
entry:
  %packet = getelementptr inbounds i8, ptr %p, i64 56
  %0 = load ptr, ptr %packet, align 8
  %1 = load i8, ptr %0, align 1
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv)
  %2 = load ptr, ptr %packet, align 8
  %arrayidx.1 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %3 to i32
  %call.1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.1)
  %4 = load ptr, ptr %packet, align 8
  %arrayidx.2 = getelementptr inbounds i8, ptr %4, i64 2
  %5 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %5 to i32
  %call.2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.2)
  %6 = load ptr, ptr %packet, align 8
  %arrayidx.3 = getelementptr inbounds i8, ptr %6, i64 3
  %7 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %7 to i32
  %call.3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.3)
  %8 = load ptr, ptr %packet, align 8
  %arrayidx.4 = getelementptr inbounds i8, ptr %8, i64 4
  %9 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %9 to i32
  %call.4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.4)
  %10 = load ptr, ptr %packet, align 8
  %arrayidx.5 = getelementptr inbounds i8, ptr %10, i64 5
  %11 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %11 to i32
  %call.5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.5)
  %12 = load ptr, ptr %packet, align 8
  %arrayidx.6 = getelementptr inbounds i8, ptr %12, i64 6
  %13 = load i8, ptr %arrayidx.6, align 1
  %conv.6 = zext i8 %13 to i32
  %call.6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.6)
  %14 = load ptr, ptr %packet, align 8
  %arrayidx.7 = getelementptr inbounds i8, ptr %14, i64 7
  %15 = load i8, ptr %arrayidx.7, align 1
  %conv.7 = zext i8 %15 to i32
  %call.7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.7)
  %16 = load ptr, ptr %packet, align 8
  %arrayidx.8 = getelementptr inbounds i8, ptr %16, i64 8
  %17 = load i8, ptr %arrayidx.8, align 1
  %conv.8 = zext i8 %17 to i32
  %call.8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.8)
  %18 = load ptr, ptr %packet, align 8
  %arrayidx.9 = getelementptr inbounds i8, ptr %18, i64 9
  %19 = load i8, ptr %arrayidx.9, align 1
  %conv.9 = zext i8 %19 to i32
  %call.9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.9)
  %20 = load ptr, ptr %packet, align 8
  %arrayidx.10 = getelementptr inbounds i8, ptr %20, i64 10
  %21 = load i8, ptr %arrayidx.10, align 1
  %conv.10 = zext i8 %21 to i32
  %call.10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.10)
  %22 = load ptr, ptr %packet, align 8
  %arrayidx.11 = getelementptr inbounds i8, ptr %22, i64 11
  %23 = load i8, ptr %arrayidx.11, align 1
  %conv.11 = zext i8 %23 to i32
  %call.11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.11)
  %24 = load ptr, ptr %packet, align 8
  %arrayidx.12 = getelementptr inbounds i8, ptr %24, i64 12
  %25 = load i8, ptr %arrayidx.12, align 1
  %conv.12 = zext i8 %25 to i32
  %call.12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.12)
  %26 = load ptr, ptr %packet, align 8
  %arrayidx.13 = getelementptr inbounds i8, ptr %26, i64 13
  %27 = load i8, ptr %arrayidx.13, align 1
  %conv.13 = zext i8 %27 to i32
  %call.13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.13)
  %28 = load ptr, ptr %packet, align 8
  %arrayidx.14 = getelementptr inbounds i8, ptr %28, i64 14
  %29 = load i8, ptr %arrayidx.14, align 1
  %conv.14 = zext i8 %29 to i32
  %call.14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.14)
  %30 = load ptr, ptr %packet, align 8
  %arrayidx.15 = getelementptr inbounds i8, ptr %30, i64 15
  %31 = load i8, ptr %arrayidx.15, align 1
  %conv.15 = zext i8 %31 to i32
  %call.15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.15)
  %32 = load ptr, ptr %packet, align 8
  %arrayidx.16 = getelementptr inbounds i8, ptr %32, i64 16
  %33 = load i8, ptr %arrayidx.16, align 1
  %conv.16 = zext i8 %33 to i32
  %call.16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.16)
  %34 = load ptr, ptr %packet, align 8
  %arrayidx.17 = getelementptr inbounds i8, ptr %34, i64 17
  %35 = load i8, ptr %arrayidx.17, align 1
  %conv.17 = zext i8 %35 to i32
  %call.17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.17)
  %36 = load ptr, ptr %packet, align 8
  %arrayidx.18 = getelementptr inbounds i8, ptr %36, i64 18
  %37 = load i8, ptr %arrayidx.18, align 1
  %conv.18 = zext i8 %37 to i32
  %call.18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.18)
  %38 = load ptr, ptr %packet, align 8
  %arrayidx.19 = getelementptr inbounds i8, ptr %38, i64 19
  %39 = load i8, ptr %arrayidx.19, align 1
  %conv.19 = zext i8 %39 to i32
  %call.19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.19)
  %40 = load ptr, ptr %packet, align 8
  %arrayidx.20 = getelementptr inbounds i8, ptr %40, i64 20
  %41 = load i8, ptr %arrayidx.20, align 1
  %conv.20 = zext i8 %41 to i32
  %call.20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.20)
  %42 = load ptr, ptr %packet, align 8
  %arrayidx.21 = getelementptr inbounds i8, ptr %42, i64 21
  %43 = load i8, ptr %arrayidx.21, align 1
  %conv.21 = zext i8 %43 to i32
  %call.21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.21)
  %44 = load ptr, ptr %packet, align 8
  %arrayidx.22 = getelementptr inbounds i8, ptr %44, i64 22
  %45 = load i8, ptr %arrayidx.22, align 1
  %conv.22 = zext i8 %45 to i32
  %call.22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.22)
  %46 = load ptr, ptr %packet, align 8
  %arrayidx.23 = getelementptr inbounds i8, ptr %46, i64 23
  %47 = load i8, ptr %arrayidx.23, align 1
  %conv.23 = zext i8 %47 to i32
  %call.23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.23)
  %48 = load ptr, ptr %packet, align 8
  %arrayidx.24 = getelementptr inbounds i8, ptr %48, i64 24
  %49 = load i8, ptr %arrayidx.24, align 1
  %conv.24 = zext i8 %49 to i32
  %call.24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.24)
  %50 = load ptr, ptr %packet, align 8
  %arrayidx.25 = getelementptr inbounds i8, ptr %50, i64 25
  %51 = load i8, ptr %arrayidx.25, align 1
  %conv.25 = zext i8 %51 to i32
  %call.25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.25)
  %52 = load ptr, ptr %packet, align 8
  %arrayidx.26 = getelementptr inbounds i8, ptr %52, i64 26
  %53 = load i8, ptr %arrayidx.26, align 1
  %conv.26 = zext i8 %53 to i32
  %call.26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.26)
  %54 = load ptr, ptr %packet, align 8
  %arrayidx.27 = getelementptr inbounds i8, ptr %54, i64 27
  %55 = load i8, ptr %arrayidx.27, align 1
  %conv.27 = zext i8 %55 to i32
  %call.27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.27)
  %56 = load ptr, ptr %packet, align 8
  %arrayidx.28 = getelementptr inbounds i8, ptr %56, i64 28
  %57 = load i8, ptr %arrayidx.28, align 1
  %conv.28 = zext i8 %57 to i32
  %call.28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.28)
  %58 = load ptr, ptr %packet, align 8
  %arrayidx.29 = getelementptr inbounds i8, ptr %58, i64 29
  %59 = load i8, ptr %arrayidx.29, align 1
  %conv.29 = zext i8 %59 to i32
  %call.29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %conv.29)
  %60 = load i32, ptr %p, align 8
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %60)
  %p2 = getelementptr inbounds i8, ptr %p, i64 4
  %61 = load i32, ptr %p2, align 4
  %call3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %61)
  %x = getelementptr inbounds i8, ptr %p, i64 8
  %62 = load i32, ptr %x, align 8
  %call4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %62)
  %cc = getelementptr inbounds i8, ptr %p, i64 12
  %63 = load i32, ptr %cc, align 4
  %call5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %63)
  %m = getelementptr inbounds i8, ptr %p, i64 16
  %64 = load i32, ptr %m, align 8
  %call6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %64)
  %pt = getelementptr inbounds i8, ptr %p, i64 20
  %65 = load i32, ptr %pt, align 4
  %call7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %65)
  %seq = getelementptr inbounds i8, ptr %p, i64 24
  %66 = load i16, ptr %seq, align 8
  %conv8 = zext i16 %66 to i32
  %call9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %conv8)
  %timestamp = getelementptr inbounds i8, ptr %p, i64 28
  %67 = load i32, ptr %timestamp, align 4
  %call10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %67)
  %ssrc = getelementptr inbounds i8, ptr %p, i64 32
  %68 = load i32, ptr %ssrc, align 8
  %call11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %68)
  ret void
}

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
