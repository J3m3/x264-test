; ModuleID = 'x264_src/common/mc.c'
source_filename = "x264_src/common/mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x264_weight_t = type { [8 x i16], [8 x i16], i32, i32, i32, ptr, [8 x i8] }

@weight_none = dso_local local_unnamed_addr constant [3 x %struct.x264_weight_t] [%struct.x264_weight_t { [8 x i16] zeroinitializer, [8 x i16] zeroinitializer, i32 0, i32 0, i32 0, ptr null, [8 x i8] undef }, %struct.x264_weight_t zeroinitializer, %struct.x264_weight_t zeroinitializer], align 16
@x264_mc_weight_wtab = internal global [6 x ptr] [ptr @mc_weight_w2, ptr @mc_weight_w4, ptr @mc_weight_w8, ptr @mc_weight_w12, ptr @mc_weight_w16, ptr @mc_weight_w20], align 16
@hpel_ref0 = internal unnamed_addr constant [16 x i8] c"\00\01\01\01\00\01\01\01\02\03\03\03\00\01\01\01", align 16
@hpel_ref1 = internal unnamed_addr constant [16 x i8] c"\00\00\00\00\02\02\03\02\02\02\03\02\02\02\03\02", align 16

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_plane_copy_c(ptr nocapture noundef writeonly %dst, i32 noundef %i_dst, ptr nocapture noundef readonly %src, i32 noundef %i_src, i32 noundef %w, i32 noundef %h) #0 {
entry:
  %tobool.not5 = icmp eq i32 %h, 0
  br i1 %tobool.not5, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %conv = sext i32 %w to i64
  %idx.ext = sext i32 %i_dst to i64
  %idx.ext1 = sext i32 %i_src to i64
  %xtraiter = and i32 %h, 3
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %while.body.prol.loopexit, label %while.body.prol

while.body.prol:                                  ; preds = %while.body.lr.ph, %while.body.prol
  %h.addr.08.prol = phi i32 [ %dec.prol, %while.body.prol ], [ %h, %while.body.lr.ph ]
  %dst.addr.07.prol = phi ptr [ %add.ptr.prol, %while.body.prol ], [ %dst, %while.body.lr.ph ]
  %src.addr.06.prol = phi ptr [ %add.ptr2.prol, %while.body.prol ], [ %src, %while.body.lr.ph ]
  %prol.iter = phi i32 [ %prol.iter.next, %while.body.prol ], [ 0, %while.body.lr.ph ]
  %dec.prol = add nsw i32 %h.addr.08.prol, -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %dst.addr.07.prol, ptr align 1 %src.addr.06.prol, i64 %conv, i1 false)
  %add.ptr.prol = getelementptr inbounds i8, ptr %dst.addr.07.prol, i64 %idx.ext
  %add.ptr2.prol = getelementptr inbounds i8, ptr %src.addr.06.prol, i64 %idx.ext1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %while.body.prol.loopexit, label %while.body.prol, !llvm.loop !5

while.body.prol.loopexit:                         ; preds = %while.body.prol, %while.body.lr.ph
  %h.addr.08.unr = phi i32 [ %h, %while.body.lr.ph ], [ %dec.prol, %while.body.prol ]
  %dst.addr.07.unr = phi ptr [ %dst, %while.body.lr.ph ], [ %add.ptr.prol, %while.body.prol ]
  %src.addr.06.unr = phi ptr [ %src, %while.body.lr.ph ], [ %add.ptr2.prol, %while.body.prol ]
  %0 = icmp ult i32 %h, 4
  br i1 %0, label %while.end, label %while.body

while.body:                                       ; preds = %while.body.prol.loopexit, %while.body
  %h.addr.08 = phi i32 [ %dec.3, %while.body ], [ %h.addr.08.unr, %while.body.prol.loopexit ]
  %dst.addr.07 = phi ptr [ %add.ptr.3, %while.body ], [ %dst.addr.07.unr, %while.body.prol.loopexit ]
  %src.addr.06 = phi ptr [ %add.ptr2.3, %while.body ], [ %src.addr.06.unr, %while.body.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %dst.addr.07, ptr align 1 %src.addr.06, i64 %conv, i1 false)
  %add.ptr = getelementptr inbounds i8, ptr %dst.addr.07, i64 %idx.ext
  %add.ptr2 = getelementptr inbounds i8, ptr %src.addr.06, i64 %idx.ext1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %add.ptr2, i64 %conv, i1 false)
  %add.ptr.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext
  %add.ptr2.1 = getelementptr inbounds i8, ptr %add.ptr2, i64 %idx.ext1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.1, ptr align 1 %add.ptr2.1, i64 %conv, i1 false)
  %add.ptr.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 %idx.ext
  %add.ptr2.2 = getelementptr inbounds i8, ptr %add.ptr2.1, i64 %idx.ext1
  %dec.3 = add nsw i32 %h.addr.08, -4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.2, ptr align 1 %add.ptr2.2, i64 %conv, i1 false)
  %add.ptr.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 %idx.ext
  %add.ptr2.3 = getelementptr inbounds i8, ptr %add.ptr2.2, i64 %idx.ext1
  %tobool.not.3 = icmp eq i32 %dec.3, 0
  br i1 %tobool.not.3, label %while.end, label %while.body

while.end:                                        ; preds = %while.body.prol.loopexit, %while.body, %entry
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_frame_init_lowres(ptr nocapture noundef readonly %h, ptr noundef %frame) local_unnamed_addr #2 {
entry:
  %plane = getelementptr inbounds i8, ptr %frame, i64 152
  %0 = load ptr, ptr %plane, align 8
  %i_stride1 = getelementptr inbounds i8, ptr %frame, i64 104
  %1 = load i32, ptr %i_stride1, align 8
  %i_lines = getelementptr inbounds i8, ptr %frame, i64 128
  %2 = load i32, ptr %i_lines, align 16
  %i_width4 = getelementptr inbounds i8, ptr %frame, i64 116
  %3 = load i32, ptr %i_width4, align 4
  %cmp120 = icmp sgt i32 %2, 0
  br i1 %cmp120, label %for.body.lver.check, label %for.cond.cleanup

for.body.lver.check:                              ; preds = %entry
  %4 = sext i32 %1 to i64
  %5 = sext i32 %3 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  %6 = sext i32 %3 to i64
  %invariant.gep = getelementptr i8, ptr %0, i64 %6
  %invariant.gep155 = getelementptr i8, ptr %invariant.gep, i64 -1
  %invariant.gep157 = getelementptr i8, ptr %0, i64 %5
  %ident.check.not = icmp eq i32 %1, 1
  br i1 %ident.check.not, label %for.body.ph, label %for.body.lver.orig.preheader

for.body.lver.orig.preheader:                     ; preds = %for.body.lver.check
  %xtraiter = and i64 %wide.trip.count, 3
  %7 = icmp ult i32 %2, 4
  br i1 %7, label %for.cond.cleanup.loopexit165.unr-lcssa, label %for.body.lver.orig.preheader.new

for.body.lver.orig.preheader.new:                 ; preds = %for.body.lver.orig.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %for.body.lver.orig

for.body.lver.orig:                               ; preds = %for.body.lver.orig, %for.body.lver.orig.preheader.new
  %indvars.iv.lver.orig = phi i64 [ 0, %for.body.lver.orig.preheader.new ], [ %indvars.iv.next.lver.orig.3, %for.body.lver.orig ]
  %niter = phi i64 [ 0, %for.body.lver.orig.preheader.new ], [ %niter.next.3, %for.body.lver.orig ]
  %8 = mul nsw i64 %indvars.iv.lver.orig, %4
  %gep156.lver.orig = getelementptr i8, ptr %invariant.gep155, i64 %8
  %9 = load i8, ptr %gep156.lver.orig, align 1
  %gep.lver.orig = getelementptr i8, ptr %invariant.gep157, i64 %8
  store i8 %9, ptr %gep.lver.orig, align 1
  %indvars.iv.next.lver.orig = or disjoint i64 %indvars.iv.lver.orig, 1
  %10 = mul nsw i64 %indvars.iv.next.lver.orig, %4
  %gep156.lver.orig.1 = getelementptr i8, ptr %invariant.gep155, i64 %10
  %11 = load i8, ptr %gep156.lver.orig.1, align 1
  %gep.lver.orig.1 = getelementptr i8, ptr %invariant.gep157, i64 %10
  store i8 %11, ptr %gep.lver.orig.1, align 1
  %indvars.iv.next.lver.orig.1 = or disjoint i64 %indvars.iv.lver.orig, 2
  %12 = mul nsw i64 %indvars.iv.next.lver.orig.1, %4
  %gep156.lver.orig.2 = getelementptr i8, ptr %invariant.gep155, i64 %12
  %13 = load i8, ptr %gep156.lver.orig.2, align 1
  %gep.lver.orig.2 = getelementptr i8, ptr %invariant.gep157, i64 %12
  store i8 %13, ptr %gep.lver.orig.2, align 1
  %indvars.iv.next.lver.orig.2 = or disjoint i64 %indvars.iv.lver.orig, 3
  %14 = mul nsw i64 %indvars.iv.next.lver.orig.2, %4
  %gep156.lver.orig.3 = getelementptr i8, ptr %invariant.gep155, i64 %14
  %15 = load i8, ptr %gep156.lver.orig.3, align 1
  %gep.lver.orig.3 = getelementptr i8, ptr %invariant.gep157, i64 %14
  store i8 %15, ptr %gep.lver.orig.3, align 1
  %indvars.iv.next.lver.orig.3 = add nuw nsw i64 %indvars.iv.lver.orig, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.cond.cleanup.loopexit165.unr-lcssa, label %for.body.lver.orig

for.body.ph:                                      ; preds = %for.body.lver.check
  %load_initial = load i8, ptr %invariant.gep155, align 1
  %xtraiter166 = and i64 %wide.trip.count, 3
  %16 = icmp ult i32 %2, 4
  br i1 %16, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body.ph.new

for.body.ph.new:                                  ; preds = %for.body.ph
  %unroll_iter169 = and i64 %wide.trip.count, 2147483644
  br label %for.body

for.cond.cleanup.loopexit.unr-lcssa:              ; preds = %for.body, %for.body.ph
  %indvars.iv.unr = phi i64 [ 0, %for.body.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod168.not = icmp eq i64 %xtraiter166, 0
  br i1 %lcmp.mod168.not, label %for.cond.cleanup, label %for.body.epil

for.body.epil:                                    ; preds = %for.cond.cleanup.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.cond.cleanup.loopexit.unr-lcssa ]
  %epil.iter167 = phi i64 [ %epil.iter167.next, %for.body.epil ], [ 0, %for.cond.cleanup.loopexit.unr-lcssa ]
  %17 = mul nuw nsw i64 %indvars.iv.epil, %4
  %gep.epil = getelementptr i8, ptr %invariant.gep157, i64 %17
  store i8 %load_initial, ptr %gep.epil, align 1
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter167.next = add i64 %epil.iter167, 1
  %epil.iter167.cmp.not = icmp eq i64 %epil.iter167.next, %xtraiter166
  br i1 %epil.iter167.cmp.not, label %for.cond.cleanup, label %for.body.epil, !llvm.loop !7

for.cond.cleanup.loopexit165.unr-lcssa:           ; preds = %for.body.lver.orig, %for.body.lver.orig.preheader
  %indvars.iv.lver.orig.unr = phi i64 [ 0, %for.body.lver.orig.preheader ], [ %indvars.iv.next.lver.orig.3, %for.body.lver.orig ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.cond.cleanup, label %for.body.lver.orig.epil

for.body.lver.orig.epil:                          ; preds = %for.cond.cleanup.loopexit165.unr-lcssa, %for.body.lver.orig.epil
  %indvars.iv.lver.orig.epil = phi i64 [ %indvars.iv.next.lver.orig.epil, %for.body.lver.orig.epil ], [ %indvars.iv.lver.orig.unr, %for.cond.cleanup.loopexit165.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.lver.orig.epil ], [ 0, %for.cond.cleanup.loopexit165.unr-lcssa ]
  %18 = mul nsw i64 %indvars.iv.lver.orig.epil, %4
  %gep156.lver.orig.epil = getelementptr i8, ptr %invariant.gep155, i64 %18
  %19 = load i8, ptr %gep156.lver.orig.epil, align 1
  %gep.lver.orig.epil = getelementptr i8, ptr %invariant.gep157, i64 %18
  store i8 %19, ptr %gep.lver.orig.epil, align 1
  %indvars.iv.next.lver.orig.epil = add nuw nsw i64 %indvars.iv.lver.orig.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.cond.cleanup, label %for.body.lver.orig.epil, !llvm.loop !8

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit165.unr-lcssa, %for.body.lver.orig.epil, %for.cond.cleanup.loopexit.unr-lcssa, %for.body.epil, %entry
  %mul11 = mul nsw i32 %2, %1
  %idx.ext = sext i32 %mul11 to i64
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %idx.ext
  %sub12 = add nsw i32 %2, -1
  %mul13 = mul nsw i32 %sub12, %1
  %idx.ext14 = sext i32 %mul13 to i64
  %add.ptr15 = getelementptr inbounds i8, ptr %0, i64 %idx.ext14
  %add16 = add nsw i32 %3, 1
  %conv = sext i32 %add16 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %add.ptr15, i64 %conv, i1 false)
  %frame_init_lowres_core = getelementptr inbounds i8, ptr %h, i64 32864
  %20 = load ptr, ptr %frame_init_lowres_core, align 8
  %lowres = getelementptr inbounds i8, ptr %frame, i64 208
  %21 = load ptr, ptr %lowres, align 16
  %arrayidx19 = getelementptr inbounds i8, ptr %frame, i64 216
  %22 = load ptr, ptr %arrayidx19, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %frame, i64 224
  %23 = load ptr, ptr %arrayidx21, align 16
  %arrayidx23 = getelementptr inbounds i8, ptr %frame, i64 232
  %24 = load ptr, ptr %arrayidx23, align 8
  %i_stride_lowres = getelementptr inbounds i8, ptr %frame, i64 140
  %25 = load i32, ptr %i_stride_lowres, align 4
  %i_width_lowres = getelementptr inbounds i8, ptr %frame, i64 144
  %26 = load i32, ptr %i_width_lowres, align 16
  %i_lines_lowres = getelementptr inbounds i8, ptr %frame, i64 148
  %27 = load i32, ptr %i_lines_lowres, align 4
  tail call void %20(ptr noundef %0, ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %24, i32 noundef %1, i32 noundef %25, i32 noundef %26, i32 noundef %27) #13
  tail call void @x264_frame_expand_border_lowres(ptr noundef %frame) #13
  %i_cost_est = getelementptr inbounds i8, ptr %frame, i64 6868
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1296) %i_cost_est, i8 -1, i64 1296, i1 false)
  %i_bframe = getelementptr inbounds i8, ptr %h, i64 100
  %28 = load i32, ptr %i_bframe, align 4
  %cmp27126 = icmp sgt i32 %28, -2
  br i1 %cmp27126, label %for.cond31.preheader.preheader, label %for.cond.cleanup57

for.cond31.preheader.preheader:                   ; preds = %for.cond.cleanup
  %i_row_satds = getelementptr inbounds i8, ptr %frame, i64 9536
  br label %for.cond31.preheader

for.body:                                         ; preds = %for.body, %for.body.ph.new
  %indvars.iv = phi i64 [ 0, %for.body.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter170 = phi i64 [ 0, %for.body.ph.new ], [ %niter170.next.3, %for.body ]
  %29 = mul nuw nsw i64 %indvars.iv, %4
  %gep = getelementptr i8, ptr %invariant.gep157, i64 %29
  store i8 %load_initial, ptr %gep, align 1
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %30 = mul nuw nsw i64 %indvars.iv.next, %4
  %gep.1 = getelementptr i8, ptr %invariant.gep157, i64 %30
  store i8 %load_initial, ptr %gep.1, align 1
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %31 = mul nuw nsw i64 %indvars.iv.next.1, %4
  %gep.2 = getelementptr i8, ptr %invariant.gep157, i64 %31
  store i8 %load_initial, ptr %gep.2, align 1
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %32 = mul nuw nsw i64 %indvars.iv.next.2, %4
  %gep.3 = getelementptr i8, ptr %invariant.gep157, i64 %32
  store i8 %load_initial, ptr %gep.3, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter170.next.3 = add i64 %niter170, 4
  %niter170.ncmp.3 = icmp eq i64 %niter170.next.3, %unroll_iter169
  br i1 %niter170.ncmp.3, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body

for.cond31.preheader:                             ; preds = %for.cond31.preheader.preheader, %for.cond.cleanup37
  %33 = phi i32 [ %28, %for.cond31.preheader.preheader ], [ %35, %for.cond.cleanup37 ]
  %indvars.iv142 = phi i64 [ 0, %for.cond31.preheader.preheader ], [ %indvars.iv.next143, %for.cond.cleanup37 ]
  %cmp35123 = icmp sgt i32 %33, -2
  br i1 %cmp35123, label %for.body38, label %for.cond31.preheader.for.cond.cleanup37_crit_edge

for.cond31.preheader.for.cond.cleanup37_crit_edge: ; preds = %for.cond31.preheader
  %.pre = sext i32 %33 to i64
  br label %for.cond.cleanup37

for.cond51.preheader:                             ; preds = %for.cond.cleanup37
  %lowres_mvs = getelementptr inbounds i8, ptr %frame, i64 3576
  %34 = icmp slt i32 %35, 0
  br i1 %34, label %for.cond.cleanup57, label %for.body66

for.cond.cleanup37:                               ; preds = %for.body38, %for.cond31.preheader.for.cond.cleanup37_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond31.preheader.for.cond.cleanup37_crit_edge ], [ %38, %for.body38 ]
  %35 = phi i32 [ %33, %for.cond31.preheader.for.cond.cleanup37_crit_edge ], [ %37, %for.body38 ]
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1
  %cmp27.not = icmp sgt i64 %indvars.iv142, %.pre-phi
  br i1 %cmp27.not, label %for.cond51.preheader, label %for.cond31.preheader, !llvm.loop !9

for.body38:                                       ; preds = %for.cond31.preheader, %for.body38
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %for.body38 ], [ 0, %for.cond31.preheader ]
  %arrayidx42 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv142, i64 %indvars.iv139
  %36 = load ptr, ptr %arrayidx42, align 8
  store i32 -1, ptr %36, align 4
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1
  %37 = load i32, ptr %i_bframe, align 4
  %38 = sext i32 %37 to i64
  %cmp35.not = icmp sgt i64 %indvars.iv139, %38
  br i1 %cmp35.not, label %for.cond.cleanup37, label %for.body38

for.cond.cleanup57:                               ; preds = %for.body66.1, %for.cond.cleanup65, %for.cond.cleanup, %for.cond51.preheader
  ret void

for.cond.cleanup65:                               ; preds = %for.body66
  %tobool.not = icmp eq i32 %43, 0
  %cmp63.not128.1 = icmp slt i32 %43, 0
  %or.cond = or i1 %tobool.not, %cmp63.not128.1
  br i1 %or.cond, label %for.cond.cleanup57, label %for.body66.1, !llvm.loop !11

for.body66.1:                                     ; preds = %for.cond.cleanup65, %for.body66.1
  %indvars.iv145.1 = phi i64 [ %indvars.iv.next146.1, %for.body66.1 ], [ 0, %for.cond.cleanup65 ]
  %arrayidx70.1 = getelementptr inbounds [2 x [17 x ptr]], ptr %lowres_mvs, i64 0, i64 1, i64 %indvars.iv145.1
  %39 = load ptr, ptr %arrayidx70.1, align 8
  store i16 32767, ptr %39, align 2
  %indvars.iv.next146.1 = add nuw nsw i64 %indvars.iv145.1, 1
  %40 = load i32, ptr %i_bframe, align 4
  %41 = sext i32 %40 to i64
  %cmp63.not.not.1 = icmp slt i64 %indvars.iv145.1, %41
  br i1 %cmp63.not.not.1, label %for.body66.1, label %for.cond.cleanup57

for.body66:                                       ; preds = %for.cond51.preheader, %for.body66
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %for.body66 ], [ 0, %for.cond51.preheader ]
  %arrayidx70 = getelementptr inbounds [2 x [17 x ptr]], ptr %lowres_mvs, i64 0, i64 0, i64 %indvars.iv145
  %42 = load ptr, ptr %arrayidx70, align 8
  store i16 32767, ptr %42, align 2
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1
  %43 = load i32, ptr %i_bframe, align 4
  %44 = sext i32 %43 to i64
  %cmp63.not.not = icmp slt i64 %indvars.iv145, %44
  br i1 %cmp63.not.not, label %for.body66, label %for.cond.cleanup65
}

declare void @x264_frame_expand_border_lowres(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_mc_init(i32 noundef %cpu, ptr nocapture noundef writeonly %pf) local_unnamed_addr #5 {
entry:
  store ptr @mc_luma, ptr %pf, align 8
  %get_ref = getelementptr inbounds i8, ptr %pf, i64 8
  store ptr @get_ref, ptr %get_ref, align 8
  %mc_chroma = getelementptr inbounds i8, ptr %pf, i64 16
  store ptr @mc_chroma, ptr %mc_chroma, align 8
  %avg = getelementptr inbounds i8, ptr %pf, i64 24
  store ptr @pixel_avg_16x16, ptr %avg, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %pf, i64 32
  store ptr @pixel_avg_16x8, ptr %arrayidx2, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %pf, i64 40
  store ptr @pixel_avg_8x16, ptr %arrayidx4, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %pf, i64 48
  store ptr @pixel_avg_8x8, ptr %arrayidx6, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %pf, i64 56
  store ptr @pixel_avg_8x4, ptr %arrayidx8, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %pf, i64 64
  store ptr @pixel_avg_4x8, ptr %arrayidx10, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %pf, i64 72
  store ptr @pixel_avg_4x4, ptr %arrayidx12, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %pf, i64 80
  store ptr @pixel_avg_4x2, ptr %arrayidx14, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %pf, i64 88
  store ptr @pixel_avg_2x4, ptr %arrayidx16, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %pf, i64 96
  store ptr @pixel_avg_2x2, ptr %arrayidx18, align 8
  %weight = getelementptr inbounds i8, ptr %pf, i64 256
  store ptr @x264_mc_weight_wtab, ptr %weight, align 8
  %offsetadd = getelementptr inbounds i8, ptr %pf, i64 264
  store ptr @x264_mc_weight_wtab, ptr %offsetadd, align 8
  %offsetsub = getelementptr inbounds i8, ptr %pf, i64 272
  store ptr @x264_mc_weight_wtab, ptr %offsetsub, align 8
  %weight_cache = getelementptr inbounds i8, ptr %pf, i64 280
  store ptr @x264_weight_cache, ptr %weight_cache, align 8
  %copy_16x16_unaligned = getelementptr inbounds i8, ptr %pf, i64 160
  store ptr @mc_copy_w16, ptr %copy_16x16_unaligned, align 8
  %copy = getelementptr inbounds i8, ptr %pf, i64 104
  store ptr @mc_copy_w16, ptr %copy, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %pf, i64 128
  store ptr @mc_copy_w8, ptr %arrayidx21, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %pf, i64 152
  store ptr @mc_copy_w4, ptr %arrayidx23, align 8
  %plane_copy = getelementptr inbounds i8, ptr %pf, i64 168
  store ptr @x264_plane_copy_c, ptr %plane_copy, align 8
  %hpel_filter = getelementptr inbounds i8, ptr %pf, i64 176
  store ptr @hpel_filter, ptr %hpel_filter, align 8
  %prefetch_fenc = getelementptr inbounds i8, ptr %pf, i64 184
  store ptr @prefetch_fenc_null, ptr %prefetch_fenc, align 8
  %prefetch_ref = getelementptr inbounds i8, ptr %pf, i64 192
  store ptr @prefetch_ref_null, ptr %prefetch_ref, align 8
  %memcpy_aligned = getelementptr inbounds i8, ptr %pf, i64 200
  store ptr @memcpy, ptr %memcpy_aligned, align 8
  %memzero_aligned = getelementptr inbounds i8, ptr %pf, i64 208
  store ptr @memzero_aligned, ptr %memzero_aligned, align 8
  %frame_init_lowres_core = getelementptr inbounds i8, ptr %pf, i64 248
  store ptr @frame_init_lowres_core, ptr %frame_init_lowres_core, align 8
  %integral_init4h = getelementptr inbounds i8, ptr %pf, i64 216
  store ptr @integral_init4h, ptr %integral_init4h, align 8
  %integral_init8h = getelementptr inbounds i8, ptr %pf, i64 224
  store ptr @integral_init8h, ptr %integral_init8h, align 8
  %integral_init4v = getelementptr inbounds i8, ptr %pf, i64 232
  store ptr @integral_init4v, ptr %integral_init4v, align 8
  %integral_init8v = getelementptr inbounds i8, ptr %pf, i64 240
  store ptr @integral_init8v, ptr %integral_init8v, align 8
  %mbtree_propagate_cost = getelementptr inbounds i8, ptr %pf, i64 288
  store ptr @mbtree_propagate_cost, ptr %mbtree_propagate_cost, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_luma(ptr nocapture noundef %dst, i32 noundef %i_dst_stride, ptr nocapture noundef readonly %src, i32 noundef %i_src_stride, i32 noundef %mvx, i32 noundef %mvy, i32 noundef %i_width, i32 noundef %i_height, ptr nocapture noundef readonly %weight) #0 {
entry:
  %and = and i32 %mvy, 3
  %shl = shl nuw nsw i32 %and, 2
  %and1 = and i32 %mvx, 3
  %add = or disjoint i32 %shl, %and1
  %shr = ashr i32 %mvy, 2
  %mul = mul i32 %shr, %i_src_stride
  %shr2 = ashr i32 %mvx, 2
  %add3 = add i32 %mul, %shr2
  %idxprom = zext nneg i32 %add to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr @hpel_ref0, i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1
  %idxprom4 = zext i8 %0 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %src, i64 %idxprom4
  %1 = load ptr, ptr %arrayidx5, align 8
  %idx.ext = sext i32 %add3 to i64
  %add.ptr = getelementptr i8, ptr %1, i64 %idx.ext
  %cmp = icmp eq i32 %and, 3
  %mul7 = select i1 %cmp, i32 %i_src_stride, i32 0
  %idx.ext8 = sext i32 %mul7 to i64
  %add.ptr9 = getelementptr i8, ptr %add.ptr, i64 %idx.ext8
  %and10 = and i32 %add, 5
  %tobool.not = icmp eq i32 %and10, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx12 = getelementptr inbounds [16 x i8], ptr @hpel_ref1, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx12, align 1
  %idxprom13 = zext i8 %2 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %src, i64 %idxprom13
  %3 = load ptr, ptr %arrayidx14, align 8
  %add.ptr16 = getelementptr i8, ptr %3, i64 %idx.ext
  %cmp18 = icmp eq i32 %and1, 3
  %idx.ext20 = zext i1 %cmp18 to i64
  %add.ptr21 = getelementptr i8, ptr %add.ptr16, i64 %idx.ext20
  %cmp29.i = icmp sgt i32 %i_height, 0
  br i1 %cmp29.i, label %for.cond1.preheader.lr.ph.i, label %pixel_avg.exit

for.cond1.preheader.lr.ph.i:                      ; preds = %if.then
  %cmp227.i = icmp sgt i32 %i_width, 0
  %idx.ext.i = sext i32 %i_dst_stride to i64
  %idx.ext12.i = sext i32 %i_src_stride to i64
  br i1 %cmp227.i, label %for.cond1.preheader.us.preheader.i, label %pixel_avg.exit

for.cond1.preheader.us.preheader.i:               ; preds = %for.cond1.preheader.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %i_width to i64
  %4 = add nsw i32 %i_height, -1
  %5 = zext i32 %4 to i64
  %6 = mul nsw i64 %idx.ext.i, %5
  %7 = getelementptr i8, ptr %dst, i64 %6
  %scevgep = getelementptr i8, ptr %7, i64 %wide.trip.count.i
  %8 = mul nsw i64 %idx.ext12.i, %5
  %9 = getelementptr i8, ptr %1, i64 %8
  %10 = getelementptr i8, ptr %9, i64 %idx.ext8
  %11 = getelementptr i8, ptr %10, i64 %idx.ext
  %scevgep161 = getelementptr i8, ptr %11, i64 %wide.trip.count.i
  %12 = getelementptr i8, ptr %3, i64 %8
  %13 = getelementptr i8, ptr %12, i64 %idx.ext
  %14 = getelementptr i8, ptr %13, i64 %idx.ext20
  %scevgep162 = getelementptr i8, ptr %14, i64 %wide.trip.count.i
  %min.iters.check = icmp ult i32 %i_width, 8
  %bound0 = icmp ugt ptr %scevgep161, %dst
  %bound1 = icmp ult ptr %add.ptr9, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %15 = or i32 %i_dst_stride, %i_src_stride
  %16 = icmp slt i32 %15, 0
  %17 = or i1 %found.conflict, %16
  %bound0164 = icmp ugt ptr %scevgep162, %dst
  %bound1165 = icmp ult ptr %add.ptr21, %scevgep
  %found.conflict166 = and i1 %bound0164, %bound1165
  %18 = or i32 %i_dst_stride, %i_src_stride
  %19 = icmp slt i32 %18, 0
  %20 = or i1 %found.conflict166, %19
  %conflict.rdx = or i1 %17, %20
  %min.iters.check169 = icmp ult i32 %i_width, 64
  %n.vec = and i64 %wide.trip.count.i, 2147483584
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %n.vec.remaining = and i64 %wide.trip.count.i, 56
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  %n.vec178 = and i64 %wide.trip.count.i, 2147483640
  %cmp.n183 = icmp eq i64 %n.vec178, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %21 = add nsw i64 %wide.trip.count.i, -1
  br label %iter.check

iter.check:                                       ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %for.cond1.preheader.us.preheader.i
  %y.033.us.i = phi i32 [ %inc17.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ 0, %for.cond1.preheader.us.preheader.i ]
  %dst.addr.032.us.i = phi ptr [ %add.ptr.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %dst, %for.cond1.preheader.us.preheader.i ]
  %src1.addr.031.us.i = phi ptr [ %add.ptr13.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %add.ptr9, %for.cond1.preheader.us.preheader.i ]
  %src2.addr.030.us.i = phi ptr [ %add.ptr15.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %add.ptr21, %for.cond1.preheader.us.preheader.i ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %for.body4.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check169, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ]
  %22 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %index
  %23 = getelementptr inbounds i8, ptr %22, i64 16
  %24 = getelementptr inbounds i8, ptr %22, i64 32
  %25 = getelementptr inbounds i8, ptr %22, i64 48
  %wide.load = load <16 x i8>, ptr %22, align 1, !alias.scope !12
  %wide.load170 = load <16 x i8>, ptr %23, align 1, !alias.scope !12
  %wide.load171 = load <16 x i8>, ptr %24, align 1, !alias.scope !12
  %wide.load172 = load <16 x i8>, ptr %25, align 1, !alias.scope !12
  %26 = zext <16 x i8> %wide.load to <16 x i16>
  %27 = zext <16 x i8> %wide.load170 to <16 x i16>
  %28 = zext <16 x i8> %wide.load171 to <16 x i16>
  %29 = zext <16 x i8> %wide.load172 to <16 x i16>
  %30 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %index
  %31 = getelementptr inbounds i8, ptr %30, i64 16
  %32 = getelementptr inbounds i8, ptr %30, i64 32
  %33 = getelementptr inbounds i8, ptr %30, i64 48
  %wide.load173 = load <16 x i8>, ptr %30, align 1, !alias.scope !15
  %wide.load174 = load <16 x i8>, ptr %31, align 1, !alias.scope !15
  %wide.load175 = load <16 x i8>, ptr %32, align 1, !alias.scope !15
  %wide.load176 = load <16 x i8>, ptr %33, align 1, !alias.scope !15
  %34 = zext <16 x i8> %wide.load173 to <16 x i16>
  %35 = zext <16 x i8> %wide.load174 to <16 x i16>
  %36 = zext <16 x i8> %wide.load175 to <16 x i16>
  %37 = zext <16 x i8> %wide.load176 to <16 x i16>
  %38 = add nuw nsw <16 x i16> %26, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %39 = add nuw nsw <16 x i16> %27, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %40 = add nuw nsw <16 x i16> %28, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %41 = add nuw nsw <16 x i16> %29, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %42 = add nuw nsw <16 x i16> %38, %34
  %43 = add nuw nsw <16 x i16> %39, %35
  %44 = add nuw nsw <16 x i16> %40, %36
  %45 = add nuw nsw <16 x i16> %41, %37
  %46 = lshr <16 x i16> %42, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %47 = lshr <16 x i16> %43, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %48 = lshr <16 x i16> %44, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %49 = lshr <16 x i16> %45, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %50 = trunc <16 x i16> %46 to <16 x i8>
  %51 = trunc <16 x i16> %47 to <16 x i8>
  %52 = trunc <16 x i16> %48 to <16 x i8>
  %53 = trunc <16 x i16> %49 to <16 x i8>
  %54 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %index
  %55 = getelementptr inbounds i8, ptr %54, i64 16
  %56 = getelementptr inbounds i8, ptr %54, i64 32
  %57 = getelementptr inbounds i8, ptr %54, i64 48
  store <16 x i8> %50, ptr %54, align 1, !alias.scope !17, !noalias !19
  store <16 x i8> %51, ptr %55, align 1, !alias.scope !17, !noalias !19
  store <16 x i8> %52, ptr %56, align 1, !alias.scope !17, !noalias !19
  store <16 x i8> %53, ptr %57, align 1, !alias.scope !17, !noalias !19
  %index.next = add nuw i64 %index, 64
  %58 = icmp eq i64 %index.next, %n.vec
  br i1 %58, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond1.for.cond.cleanup3_crit_edge.us.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %for.body4.us.i.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index179 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next182, %vec.epilog.vector.body ]
  %59 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %index179
  %wide.load180 = load <8 x i8>, ptr %59, align 1, !alias.scope !23
  %60 = zext <8 x i8> %wide.load180 to <8 x i16>
  %61 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %index179
  %wide.load181 = load <8 x i8>, ptr %61, align 1, !alias.scope !26
  %62 = zext <8 x i8> %wide.load181 to <8 x i16>
  %63 = add nuw nsw <8 x i16> %60, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %64 = add nuw nsw <8 x i16> %63, %62
  %65 = lshr <8 x i16> %64, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %66 = trunc <8 x i16> %65 to <8 x i8>
  %67 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %index179
  store <8 x i8> %66, ptr %67, align 1, !alias.scope !28, !noalias !30
  %index.next182 = add nuw i64 %index179, 8
  %68 = icmp eq i64 %index.next182, %n.vec178
  br i1 %68, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n183, label %for.cond1.for.cond.cleanup3_crit_edge.us.i, label %for.body4.us.i.preheader

for.body4.us.i.preheader:                         ; preds = %iter.check, %vec.epilog.middle.block, %vec.epilog.iter.check
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec178, %vec.epilog.middle.block ]
  br i1 %lcmp.mod.not, label %for.body4.us.i.prol.loopexit, label %for.body4.us.i.prol

for.body4.us.i.prol:                              ; preds = %for.body4.us.i.preheader
  %arrayidx.us.i.prol = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %indvars.iv.i.ph
  %69 = load i8, ptr %arrayidx.us.i.prol, align 1
  %conv.us.i.prol = zext i8 %69 to i16
  %arrayidx6.us.i.prol = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %indvars.iv.i.ph
  %70 = load i8, ptr %arrayidx6.us.i.prol, align 1
  %conv7.us.i.prol = zext i8 %70 to i16
  %add.us.i.prol = add nuw nsw i16 %conv.us.i.prol, 1
  %add8.us.i.prol = add nuw nsw i16 %add.us.i.prol, %conv7.us.i.prol
  %shr.us.i.prol = lshr i16 %add8.us.i.prol, 1
  %conv9.us.i.prol = trunc nuw i16 %shr.us.i.prol to i8
  %arrayidx11.us.i.prol = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %indvars.iv.i.ph
  store i8 %conv9.us.i.prol, ptr %arrayidx11.us.i.prol, align 1
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %for.body4.us.i.prol.loopexit

for.body4.us.i.prol.loopexit:                     ; preds = %for.body4.us.i.prol, %for.body4.us.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %for.body4.us.i.preheader ], [ %indvars.iv.next.i.prol, %for.body4.us.i.prol ]
  %71 = icmp eq i64 %indvars.iv.i.ph, %21
  br i1 %71, label %for.cond1.for.cond.cleanup3_crit_edge.us.i, label %for.body4.us.i

for.body4.us.i:                                   ; preds = %for.body4.us.i.prol.loopexit, %for.body4.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %for.body4.us.i ], [ %indvars.iv.i.unr, %for.body4.us.i.prol.loopexit ]
  %arrayidx.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %indvars.iv.i
  %72 = load i8, ptr %arrayidx.us.i, align 1
  %conv.us.i = zext i8 %72 to i16
  %arrayidx6.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %indvars.iv.i
  %73 = load i8, ptr %arrayidx6.us.i, align 1
  %conv7.us.i = zext i8 %73 to i16
  %add.us.i = add nuw nsw i16 %conv.us.i, 1
  %add8.us.i = add nuw nsw i16 %add.us.i, %conv7.us.i
  %shr.us.i = lshr i16 %add8.us.i, 1
  %conv9.us.i = trunc nuw i16 %shr.us.i to i8
  %arrayidx11.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %indvars.iv.i
  store i8 %conv9.us.i, ptr %arrayidx11.us.i, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %arrayidx.us.i.1 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %indvars.iv.next.i
  %74 = load i8, ptr %arrayidx.us.i.1, align 1
  %conv.us.i.1 = zext i8 %74 to i16
  %arrayidx6.us.i.1 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %indvars.iv.next.i
  %75 = load i8, ptr %arrayidx6.us.i.1, align 1
  %conv7.us.i.1 = zext i8 %75 to i16
  %add.us.i.1 = add nuw nsw i16 %conv.us.i.1, 1
  %add8.us.i.1 = add nuw nsw i16 %add.us.i.1, %conv7.us.i.1
  %shr.us.i.1 = lshr i16 %add8.us.i.1, 1
  %conv9.us.i.1 = trunc nuw i16 %shr.us.i.1 to i8
  %arrayidx11.us.i.1 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %indvars.iv.next.i
  store i8 %conv9.us.i.1, ptr %arrayidx11.us.i.1, align 1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %for.cond1.for.cond.cleanup3_crit_edge.us.i, label %for.body4.us.i, !llvm.loop !32

for.cond1.for.cond.cleanup3_crit_edge.us.i:       ; preds = %for.body4.us.i.prol.loopexit, %for.body4.us.i, %vec.epilog.middle.block, %middle.block
  %add.ptr.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %idx.ext.i
  %add.ptr13.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %idx.ext12.i
  %add.ptr15.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %idx.ext12.i
  %inc17.us.i = add nuw nsw i32 %y.033.us.i, 1
  %exitcond36.not.i = icmp eq i32 %inc17.us.i, %i_height
  br i1 %exitcond36.not.i, label %pixel_avg.exit, label %iter.check

pixel_avg.exit:                                   ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %if.then, %for.cond1.preheader.lr.ph.i
  %weightfn = getelementptr inbounds i8, ptr %weight, i64 48
  %76 = load ptr, ptr %weightfn, align 16
  %tobool22.not = icmp eq ptr %76, null
  br i1 %tobool22.not, label %if.end29, label %if.then23

if.then23:                                        ; preds = %pixel_avg.exit
  %i_denom.i = getelementptr inbounds i8, ptr %weight, i64 32
  %77 = load i32, ptr %i_denom.i, align 16
  %cmp.i = icmp sgt i32 %77, 0
  br i1 %cmp.i, label %for.cond.preheader.i, label %for.cond17.preheader.i

for.cond17.preheader.i:                           ; preds = %if.then23
  br i1 %cmp29.i, label %for.cond23.preheader.lr.ph.i, label %if.end29

for.cond23.preheader.lr.ph.i:                     ; preds = %for.cond17.preheader.i
  %cmp2477.i = icmp sgt i32 %i_width, 0
  %i_scale31.i = getelementptr i8, ptr %weight, i64 36
  %i_offset33.i = getelementptr inbounds i8, ptr %weight, i64 40
  %idx.ext43.i = sext i32 %i_dst_stride to i64
  br i1 %cmp2477.i, label %for.cond23.preheader.us.preheader.i, label %if.end29

for.cond23.preheader.us.preheader.i:              ; preds = %for.cond23.preheader.lr.ph.i
  %wide.trip.count.i62 = zext nneg i32 %i_width to i64
  %78 = add nsw i32 %i_height, -1
  %79 = zext i32 %78 to i64
  %80 = mul nsw i64 %idx.ext43.i, %79
  %81 = getelementptr i8, ptr %dst, i64 %80
  %scevgep185 = getelementptr i8, ptr %81, i64 %wide.trip.count.i62
  %scevgep186 = getelementptr i8, ptr %weight, i64 44
  %min.iters.check192 = icmp ult i32 %i_width, 16
  %bound0187 = icmp ugt ptr %scevgep186, %dst
  %bound1188 = icmp ult ptr %i_scale31.i, %scevgep185
  %found.conflict189 = and i1 %bound0187, %bound1188
  %stride.check190 = icmp slt i32 %i_dst_stride, 0
  %82 = or i1 %found.conflict189, %stride.check190
  %n.vec195 = and i64 %wide.trip.count.i62, 2147483632
  %cmp.n218 = icmp eq i64 %n.vec195, %wide.trip.count.i62
  %xtraiter361 = and i64 %wide.trip.count.i62, 1
  %lcmp.mod362.not = icmp eq i64 %xtraiter361, 0
  %83 = add nsw i64 %wide.trip.count.i62, -1
  br label %for.cond23.preheader.us.i

for.cond23.preheader.us.i:                        ; preds = %for.cond23.for.cond.cleanup26_crit_edge.us.i, %for.cond23.preheader.us.preheader.i
  %y16.082.us.i = phi i32 [ %inc42.us.i, %for.cond23.for.cond.cleanup26_crit_edge.us.i ], [ 0, %for.cond23.preheader.us.preheader.i ]
  %dst.addr.181.us.i = phi ptr [ %add.ptr44.us.i, %for.cond23.for.cond.cleanup26_crit_edge.us.i ], [ %dst, %for.cond23.preheader.us.preheader.i ]
  %brmerge367 = select i1 %min.iters.check192, i1 true, i1 %82
  br i1 %brmerge367, label %for.body27.us.i.preheader, label %vector.ph193

vector.ph193:                                     ; preds = %for.cond23.preheader.us.i
  %84 = load i32, ptr %i_scale31.i, align 4, !alias.scope !33
  %broadcast.splatinsert207 = insertelement <4 x i32> poison, i32 %84, i64 0
  %broadcast.splat208 = shufflevector <4 x i32> %broadcast.splatinsert207, <4 x i32> poison, <4 x i32> zeroinitializer
  %85 = load i32, ptr %i_offset33.i, align 8, !alias.scope !33
  %broadcast.splatinsert215 = insertelement <4 x i32> poison, i32 %85, i64 0
  %broadcast.splat216 = shufflevector <4 x i32> %broadcast.splatinsert215, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph193
  %index198 = phi i64 [ 0, %vector.ph193 ], [ %index.next217, %vector.body197 ]
  %86 = getelementptr inbounds i8, ptr %dst.addr.181.us.i, i64 %index198
  %87 = getelementptr inbounds i8, ptr %86, i64 4
  %88 = getelementptr inbounds i8, ptr %86, i64 8
  %89 = getelementptr inbounds i8, ptr %86, i64 12
  %wide.load199 = load <4 x i8>, ptr %86, align 1, !alias.scope !36, !noalias !33
  %wide.load200 = load <4 x i8>, ptr %87, align 1, !alias.scope !36, !noalias !33
  %wide.load201 = load <4 x i8>, ptr %88, align 1, !alias.scope !36, !noalias !33
  %wide.load202 = load <4 x i8>, ptr %89, align 1, !alias.scope !36, !noalias !33
  %90 = zext <4 x i8> %wide.load199 to <4 x i32>
  %91 = zext <4 x i8> %wide.load200 to <4 x i32>
  %92 = zext <4 x i8> %wide.load201 to <4 x i32>
  %93 = zext <4 x i8> %wide.load202 to <4 x i32>
  %94 = mul nsw <4 x i32> %broadcast.splat208, %90
  %95 = mul nsw <4 x i32> %broadcast.splat208, %91
  %96 = mul nsw <4 x i32> %broadcast.splat208, %92
  %97 = mul nsw <4 x i32> %broadcast.splat208, %93
  %98 = add nsw <4 x i32> %94, %broadcast.splat216
  %99 = add nsw <4 x i32> %95, %broadcast.splat216
  %100 = add nsw <4 x i32> %96, %broadcast.splat216
  %101 = add nsw <4 x i32> %97, %broadcast.splat216
  %102 = icmp ult <4 x i32> %98, <i32 256, i32 256, i32 256, i32 256>
  %103 = icmp ult <4 x i32> %99, <i32 256, i32 256, i32 256, i32 256>
  %104 = icmp ult <4 x i32> %100, <i32 256, i32 256, i32 256, i32 256>
  %105 = icmp ult <4 x i32> %101, <i32 256, i32 256, i32 256, i32 256>
  %106 = icmp sgt <4 x i32> %98, zeroinitializer
  %107 = icmp sgt <4 x i32> %99, zeroinitializer
  %108 = icmp sgt <4 x i32> %100, zeroinitializer
  %109 = icmp sgt <4 x i32> %101, zeroinitializer
  %110 = sext <4 x i1> %106 to <4 x i32>
  %111 = sext <4 x i1> %107 to <4 x i32>
  %112 = sext <4 x i1> %108 to <4 x i32>
  %113 = sext <4 x i1> %109 to <4 x i32>
  %114 = select <4 x i1> %102, <4 x i32> %98, <4 x i32> %110
  %115 = select <4 x i1> %103, <4 x i32> %99, <4 x i32> %111
  %116 = select <4 x i1> %104, <4 x i32> %100, <4 x i32> %112
  %117 = select <4 x i1> %105, <4 x i32> %101, <4 x i32> %113
  %118 = trunc <4 x i32> %114 to <4 x i8>
  %119 = trunc <4 x i32> %115 to <4 x i8>
  %120 = trunc <4 x i32> %116 to <4 x i8>
  %121 = trunc <4 x i32> %117 to <4 x i8>
  store <4 x i8> %118, ptr %86, align 1, !alias.scope !36, !noalias !33
  store <4 x i8> %119, ptr %87, align 1, !alias.scope !36, !noalias !33
  store <4 x i8> %120, ptr %88, align 1, !alias.scope !36, !noalias !33
  store <4 x i8> %121, ptr %89, align 1, !alias.scope !36, !noalias !33
  %index.next217 = add nuw i64 %index198, 16
  %122 = icmp eq i64 %index.next217, %n.vec195
  br i1 %122, label %middle.block191, label %vector.body197, !llvm.loop !38

middle.block191:                                  ; preds = %vector.body197
  br i1 %cmp.n218, label %for.cond23.for.cond.cleanup26_crit_edge.us.i, label %for.body27.us.i.preheader

for.body27.us.i.preheader:                        ; preds = %for.cond23.preheader.us.i, %middle.block191
  %indvars.iv.i63.ph = phi i64 [ 0, %for.cond23.preheader.us.i ], [ %n.vec195, %middle.block191 ]
  br i1 %lcmp.mod362.not, label %for.body27.us.i.prol.loopexit, label %for.body27.us.i.prol

for.body27.us.i.prol:                             ; preds = %for.body27.us.i.preheader
  %arrayidx29.us.i.prol = getelementptr inbounds i8, ptr %dst.addr.181.us.i, i64 %indvars.iv.i63.ph
  %123 = load i8, ptr %arrayidx29.us.i.prol, align 1
  %conv30.us.i.prol = zext i8 %123 to i32
  %124 = load i32, ptr %i_scale31.i, align 4
  %mul32.us.i.prol = mul nsw i32 %124, %conv30.us.i.prol
  %125 = load i32, ptr %i_offset33.i, align 8
  %add34.us.i.prol = add nsw i32 %mul32.us.i.prol, %125
  %tobool.not.i72.us.i.prol = icmp ult i32 %add34.us.i.prol, 256
  %126 = icmp sgt i32 %add34.us.i.prol, 0
  %shr.i73.us.i.prol = sext i1 %126 to i32
  %cond.i74.us.i.prol = select i1 %tobool.not.i72.us.i.prol, i32 %add34.us.i.prol, i32 %shr.i73.us.i.prol
  %conv.i75.us.i.prol = trunc i32 %cond.i74.us.i.prol to i8
  store i8 %conv.i75.us.i.prol, ptr %arrayidx29.us.i.prol, align 1
  %indvars.iv.next.i64.prol = or disjoint i64 %indvars.iv.i63.ph, 1
  br label %for.body27.us.i.prol.loopexit

for.body27.us.i.prol.loopexit:                    ; preds = %for.body27.us.i.prol, %for.body27.us.i.preheader
  %indvars.iv.i63.unr = phi i64 [ %indvars.iv.i63.ph, %for.body27.us.i.preheader ], [ %indvars.iv.next.i64.prol, %for.body27.us.i.prol ]
  %127 = icmp eq i64 %indvars.iv.i63.ph, %83
  br i1 %127, label %for.cond23.for.cond.cleanup26_crit_edge.us.i, label %for.body27.us.i

for.body27.us.i:                                  ; preds = %for.body27.us.i.prol.loopexit, %for.body27.us.i
  %indvars.iv.i63 = phi i64 [ %indvars.iv.next.i64.1, %for.body27.us.i ], [ %indvars.iv.i63.unr, %for.body27.us.i.prol.loopexit ]
  %arrayidx29.us.i = getelementptr inbounds i8, ptr %dst.addr.181.us.i, i64 %indvars.iv.i63
  %128 = load i8, ptr %arrayidx29.us.i, align 1
  %conv30.us.i = zext i8 %128 to i32
  %129 = load i32, ptr %i_scale31.i, align 4
  %mul32.us.i = mul nsw i32 %129, %conv30.us.i
  %130 = load i32, ptr %i_offset33.i, align 8
  %add34.us.i = add nsw i32 %mul32.us.i, %130
  %tobool.not.i72.us.i = icmp ult i32 %add34.us.i, 256
  %131 = icmp sgt i32 %add34.us.i, 0
  %shr.i73.us.i = sext i1 %131 to i32
  %cond.i74.us.i = select i1 %tobool.not.i72.us.i, i32 %add34.us.i, i32 %shr.i73.us.i
  %conv.i75.us.i = trunc i32 %cond.i74.us.i to i8
  store i8 %conv.i75.us.i, ptr %arrayidx29.us.i, align 1
  %indvars.iv.next.i64 = add nuw nsw i64 %indvars.iv.i63, 1
  %arrayidx29.us.i.1 = getelementptr inbounds i8, ptr %dst.addr.181.us.i, i64 %indvars.iv.next.i64
  %132 = load i8, ptr %arrayidx29.us.i.1, align 1
  %conv30.us.i.1 = zext i8 %132 to i32
  %133 = load i32, ptr %i_scale31.i, align 4
  %mul32.us.i.1 = mul nsw i32 %133, %conv30.us.i.1
  %134 = load i32, ptr %i_offset33.i, align 8
  %add34.us.i.1 = add nsw i32 %mul32.us.i.1, %134
  %tobool.not.i72.us.i.1 = icmp ult i32 %add34.us.i.1, 256
  %135 = icmp sgt i32 %add34.us.i.1, 0
  %shr.i73.us.i.1 = sext i1 %135 to i32
  %cond.i74.us.i.1 = select i1 %tobool.not.i72.us.i.1, i32 %add34.us.i.1, i32 %shr.i73.us.i.1
  %conv.i75.us.i.1 = trunc i32 %cond.i74.us.i.1 to i8
  store i8 %conv.i75.us.i.1, ptr %arrayidx29.us.i.1, align 1
  %indvars.iv.next.i64.1 = add nuw nsw i64 %indvars.iv.i63, 2
  %exitcond.not.i65.1 = icmp eq i64 %indvars.iv.next.i64.1, %wide.trip.count.i62
  br i1 %exitcond.not.i65.1, label %for.cond23.for.cond.cleanup26_crit_edge.us.i, label %for.body27.us.i, !llvm.loop !39

for.cond23.for.cond.cleanup26_crit_edge.us.i:     ; preds = %for.body27.us.i.prol.loopexit, %for.body27.us.i, %middle.block191
  %inc42.us.i = add nuw nsw i32 %y16.082.us.i, 1
  %add.ptr44.us.i = getelementptr i8, ptr %dst.addr.181.us.i, i64 %idx.ext43.i
  %exitcond93.not.i = icmp eq i32 %inc42.us.i, %i_height
  br i1 %exitcond93.not.i, label %if.end29, label %for.cond23.preheader.us.i

for.cond.preheader.i:                             ; preds = %if.then23
  br i1 %cmp29.i, label %for.cond2.preheader.lr.ph.i, label %if.end29

for.cond2.preheader.lr.ph.i:                      ; preds = %for.cond.preheader.i
  %cmp383.i = icmp sgt i32 %i_width, 0
  %i_scale.i = getelementptr inbounds i8, ptr %weight, i64 36
  %i_offset.i = getelementptr inbounds i8, ptr %weight, i64 40
  %idx.ext.i66 = sext i32 %i_dst_stride to i64
  br i1 %cmp383.i, label %for.cond2.preheader.us.preheader.i, label %if.end29

for.cond2.preheader.us.preheader.i:               ; preds = %for.cond2.preheader.lr.ph.i
  %wide.trip.count97.i = zext nneg i32 %i_width to i64
  %136 = add nsw i32 %i_height, -1
  %137 = zext i32 %136 to i64
  %138 = mul nsw i64 %idx.ext.i66, %137
  %139 = getelementptr i8, ptr %dst, i64 %138
  %scevgep220 = getelementptr i8, ptr %139, i64 %wide.trip.count97.i
  %scevgep221 = getelementptr i8, ptr %weight, i64 44
  %min.iters.check228 = icmp ult i32 %i_width, 16
  %bound0222 = icmp ugt ptr %scevgep221, %dst
  %bound1223 = icmp ult ptr %i_denom.i, %scevgep220
  %found.conflict224 = and i1 %bound0222, %bound1223
  %stride.check225 = icmp slt i32 %i_dst_stride, 0
  %140 = or i1 %found.conflict224, %stride.check225
  %n.vec231 = and i64 %wide.trip.count97.i, 2147483632
  %cmp.n262 = icmp eq i64 %n.vec231, %wide.trip.count97.i
  br label %for.cond2.preheader.us.i

for.cond2.preheader.us.i:                         ; preds = %for.cond2.for.cond.cleanup4_crit_edge.us.i, %for.cond2.preheader.us.preheader.i
  %y.088.us.i = phi i32 [ %inc12.us.i, %for.cond2.for.cond.cleanup4_crit_edge.us.i ], [ 0, %for.cond2.preheader.us.preheader.i ]
  %dst.addr.087.us.i = phi ptr [ %add.ptr.us.i72, %for.cond2.for.cond.cleanup4_crit_edge.us.i ], [ %dst, %for.cond2.preheader.us.preheader.i ]
  %brmerge368 = select i1 %min.iters.check228, i1 true, i1 %140
  br i1 %brmerge368, label %for.body5.us.i.preheader, label %vector.ph229

vector.ph229:                                     ; preds = %for.cond2.preheader.us.i
  %141 = load i32, ptr %i_scale.i, align 4, !alias.scope !40
  %broadcast.splatinsert243 = insertelement <4 x i32> poison, i32 %141, i64 0
  %broadcast.splat244 = shufflevector <4 x i32> %broadcast.splatinsert243, <4 x i32> poison, <4 x i32> zeroinitializer
  %142 = load i32, ptr %i_denom.i, align 16, !alias.scope !40
  %broadcast.splatinsert251 = insertelement <4 x i32> poison, i32 %142, i64 0
  %broadcast.splat252 = shufflevector <4 x i32> %broadcast.splatinsert251, <4 x i32> poison, <4 x i32> zeroinitializer
  %143 = add nsw <4 x i32> %broadcast.splat252, <i32 -1, i32 -1, i32 -1, i32 -1>
  %144 = add nsw <4 x i32> %broadcast.splat252, <i32 -1, i32 -1, i32 -1, i32 -1>
  %145 = add nsw <4 x i32> %broadcast.splat252, <i32 -1, i32 -1, i32 -1, i32 -1>
  %146 = add nsw <4 x i32> %broadcast.splat252, <i32 -1, i32 -1, i32 -1, i32 -1>
  %147 = shl nuw <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %143
  %148 = shl nuw <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %144
  %149 = shl nuw <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %145
  %150 = shl nuw <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %146
  %151 = load i32, ptr %i_offset.i, align 8, !alias.scope !40
  %broadcast.splatinsert259 = insertelement <4 x i32> poison, i32 %151, i64 0
  %broadcast.splat260 = shufflevector <4 x i32> %broadcast.splatinsert259, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph229
  %index234 = phi i64 [ 0, %vector.ph229 ], [ %index.next261, %vector.body233 ]
  %152 = getelementptr inbounds i8, ptr %dst.addr.087.us.i, i64 %index234
  %153 = getelementptr inbounds i8, ptr %152, i64 4
  %154 = getelementptr inbounds i8, ptr %152, i64 8
  %155 = getelementptr inbounds i8, ptr %152, i64 12
  %wide.load235 = load <4 x i8>, ptr %152, align 1, !alias.scope !43, !noalias !40
  %wide.load236 = load <4 x i8>, ptr %153, align 1, !alias.scope !43, !noalias !40
  %wide.load237 = load <4 x i8>, ptr %154, align 1, !alias.scope !43, !noalias !40
  %wide.load238 = load <4 x i8>, ptr %155, align 1, !alias.scope !43, !noalias !40
  %156 = zext <4 x i8> %wide.load235 to <4 x i32>
  %157 = zext <4 x i8> %wide.load236 to <4 x i32>
  %158 = zext <4 x i8> %wide.load237 to <4 x i32>
  %159 = zext <4 x i8> %wide.load238 to <4 x i32>
  %160 = mul nsw <4 x i32> %broadcast.splat244, %156
  %161 = mul nsw <4 x i32> %broadcast.splat244, %157
  %162 = mul nsw <4 x i32> %broadcast.splat244, %158
  %163 = mul nsw <4 x i32> %broadcast.splat244, %159
  %164 = add nsw <4 x i32> %147, %160
  %165 = add nsw <4 x i32> %148, %161
  %166 = add nsw <4 x i32> %149, %162
  %167 = add nsw <4 x i32> %150, %163
  %168 = ashr <4 x i32> %164, %broadcast.splat252
  %169 = ashr <4 x i32> %165, %broadcast.splat252
  %170 = ashr <4 x i32> %166, %broadcast.splat252
  %171 = ashr <4 x i32> %167, %broadcast.splat252
  %172 = add nsw <4 x i32> %168, %broadcast.splat260
  %173 = add nsw <4 x i32> %169, %broadcast.splat260
  %174 = add nsw <4 x i32> %170, %broadcast.splat260
  %175 = add nsw <4 x i32> %171, %broadcast.splat260
  %176 = icmp ult <4 x i32> %172, <i32 256, i32 256, i32 256, i32 256>
  %177 = icmp ult <4 x i32> %173, <i32 256, i32 256, i32 256, i32 256>
  %178 = icmp ult <4 x i32> %174, <i32 256, i32 256, i32 256, i32 256>
  %179 = icmp ult <4 x i32> %175, <i32 256, i32 256, i32 256, i32 256>
  %180 = icmp sgt <4 x i32> %172, zeroinitializer
  %181 = icmp sgt <4 x i32> %173, zeroinitializer
  %182 = icmp sgt <4 x i32> %174, zeroinitializer
  %183 = icmp sgt <4 x i32> %175, zeroinitializer
  %184 = sext <4 x i1> %180 to <4 x i32>
  %185 = sext <4 x i1> %181 to <4 x i32>
  %186 = sext <4 x i1> %182 to <4 x i32>
  %187 = sext <4 x i1> %183 to <4 x i32>
  %188 = select <4 x i1> %176, <4 x i32> %172, <4 x i32> %184
  %189 = select <4 x i1> %177, <4 x i32> %173, <4 x i32> %185
  %190 = select <4 x i1> %178, <4 x i32> %174, <4 x i32> %186
  %191 = select <4 x i1> %179, <4 x i32> %175, <4 x i32> %187
  %192 = trunc <4 x i32> %188 to <4 x i8>
  %193 = trunc <4 x i32> %189 to <4 x i8>
  %194 = trunc <4 x i32> %190 to <4 x i8>
  %195 = trunc <4 x i32> %191 to <4 x i8>
  store <4 x i8> %192, ptr %152, align 1, !alias.scope !43, !noalias !40
  store <4 x i8> %193, ptr %153, align 1, !alias.scope !43, !noalias !40
  store <4 x i8> %194, ptr %154, align 1, !alias.scope !43, !noalias !40
  store <4 x i8> %195, ptr %155, align 1, !alias.scope !43, !noalias !40
  %index.next261 = add nuw i64 %index234, 16
  %196 = icmp eq i64 %index.next261, %n.vec231
  br i1 %196, label %middle.block226, label %vector.body233, !llvm.loop !45

middle.block226:                                  ; preds = %vector.body233
  br i1 %cmp.n262, label %for.cond2.for.cond.cleanup4_crit_edge.us.i, label %for.body5.us.i.preheader

for.body5.us.i.preheader:                         ; preds = %for.cond2.preheader.us.i, %middle.block226
  %indvars.iv94.i.ph = phi i64 [ 0, %for.cond2.preheader.us.i ], [ %n.vec231, %middle.block226 ]
  br label %for.body5.us.i

for.body5.us.i:                                   ; preds = %for.body5.us.i.preheader, %for.body5.us.i
  %indvars.iv94.i = phi i64 [ %indvars.iv.next95.i, %for.body5.us.i ], [ %indvars.iv94.i.ph, %for.body5.us.i.preheader ]
  %arrayidx.us.i67 = getelementptr inbounds i8, ptr %dst.addr.087.us.i, i64 %indvars.iv94.i
  %197 = load i8, ptr %arrayidx.us.i67, align 1
  %conv.us.i68 = zext i8 %197 to i32
  %198 = load i32, ptr %i_scale.i, align 4
  %mul.us.i = mul nsw i32 %198, %conv.us.i68
  %199 = load i32, ptr %i_denom.i, align 16
  %sub.us.i = add nsw i32 %199, -1
  %shl.us.i = shl nuw i32 1, %sub.us.i
  %add.us.i69 = add nsw i32 %shl.us.i, %mul.us.i
  %shr.us.i70 = ashr i32 %add.us.i69, %199
  %200 = load i32, ptr %i_offset.i, align 8
  %add8.us.i71 = add nsw i32 %shr.us.i70, %200
  %tobool.not.i.us.i = icmp ult i32 %add8.us.i71, 256
  %201 = icmp sgt i32 %add8.us.i71, 0
  %shr.i.us.i = sext i1 %201 to i32
  %cond.i.us.i = select i1 %tobool.not.i.us.i, i32 %add8.us.i71, i32 %shr.i.us.i
  %conv.i.us.i = trunc i32 %cond.i.us.i to i8
  store i8 %conv.i.us.i, ptr %arrayidx.us.i67, align 1
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1
  %exitcond98.not.i = icmp eq i64 %indvars.iv.next95.i, %wide.trip.count97.i
  br i1 %exitcond98.not.i, label %for.cond2.for.cond.cleanup4_crit_edge.us.i, label %for.body5.us.i, !llvm.loop !46

for.cond2.for.cond.cleanup4_crit_edge.us.i:       ; preds = %for.body5.us.i, %middle.block226
  %inc12.us.i = add nuw nsw i32 %y.088.us.i, 1
  %add.ptr.us.i72 = getelementptr i8, ptr %dst.addr.087.us.i, i64 %idx.ext.i66
  %exitcond99.not.i = icmp eq i32 %inc12.us.i, %i_height
  br i1 %exitcond99.not.i, label %if.end29, label %for.cond2.preheader.us.i

if.else:                                          ; preds = %entry
  %weightfn24 = getelementptr inbounds i8, ptr %weight, i64 48
  %202 = load ptr, ptr %weightfn24, align 16
  %tobool25.not = icmp eq ptr %202, null
  br i1 %tobool25.not, label %if.else27, label %if.then26

if.then26:                                        ; preds = %if.else
  %i_denom.i73 = getelementptr inbounds i8, ptr %weight, i64 32
  %203 = load i32, ptr %i_denom.i73, align 16
  %cmp.i74 = icmp sgt i32 %203, 0
  %cmp185.i75 = icmp sgt i32 %i_height, 0
  br i1 %cmp.i74, label %for.cond.preheader.i107, label %for.cond17.preheader.i76

for.cond17.preheader.i76:                         ; preds = %if.then26
  br i1 %cmp185.i75, label %for.cond23.preheader.lr.ph.i77, label %if.end29

for.cond23.preheader.lr.ph.i77:                   ; preds = %for.cond17.preheader.i76
  %cmp2477.i78 = icmp sgt i32 %i_width, 0
  %i_scale31.i79 = getelementptr i8, ptr %weight, i64 36
  %i_offset33.i80 = getelementptr inbounds i8, ptr %weight, i64 40
  %idx.ext43.i81 = sext i32 %i_dst_stride to i64
  %idx.ext45.i82 = sext i32 %i_src_stride to i64
  br i1 %cmp2477.i78, label %for.cond23.preheader.us.preheader.i83, label %if.end29

for.cond23.preheader.us.preheader.i83:            ; preds = %for.cond23.preheader.lr.ph.i77
  %wide.trip.count.i84 = zext nneg i32 %i_width to i64
  %204 = add nsw i32 %i_height, -1
  %205 = zext i32 %204 to i64
  %206 = mul nsw i64 %idx.ext43.i81, %205
  %207 = getelementptr i8, ptr %dst, i64 %206
  %scevgep264 = getelementptr i8, ptr %207, i64 %wide.trip.count.i84
  %208 = mul nsw i64 %idx.ext45.i82, %205
  %209 = getelementptr i8, ptr %1, i64 %208
  %210 = getelementptr i8, ptr %209, i64 %idx.ext8
  %211 = getelementptr i8, ptr %210, i64 %idx.ext
  %scevgep265 = getelementptr i8, ptr %211, i64 %wide.trip.count.i84
  %scevgep266 = getelementptr i8, ptr %weight, i64 44
  %min.iters.check279 = icmp ult i32 %i_width, 16
  %bound0267 = icmp ugt ptr %scevgep265, %dst
  %bound1268 = icmp ult ptr %add.ptr9, %scevgep264
  %found.conflict269 = and i1 %bound0267, %bound1268
  %212 = or i32 %i_dst_stride, %i_src_stride
  %213 = icmp slt i32 %212, 0
  %214 = or i1 %found.conflict269, %213
  %bound0272 = icmp ugt ptr %scevgep266, %dst
  %bound1273 = icmp ult ptr %i_scale31.i79, %scevgep264
  %found.conflict274 = and i1 %bound0272, %bound1273
  %stride.check275 = icmp slt i32 %i_dst_stride, 0
  %215 = or i1 %found.conflict274, %stride.check275
  %conflict.rdx276 = or i1 %214, %215
  %n.vec282 = and i64 %wide.trip.count.i84, 2147483632
  %cmp.n305 = icmp eq i64 %n.vec282, %wide.trip.count.i84
  %xtraiter363 = and i64 %wide.trip.count.i84, 1
  %lcmp.mod364.not = icmp eq i64 %xtraiter363, 0
  %216 = add nsw i64 %wide.trip.count.i84, -1
  br label %for.cond23.preheader.us.i85

for.cond23.preheader.us.i85:                      ; preds = %for.cond23.for.cond.cleanup26_crit_edge.us.i102, %for.cond23.preheader.us.preheader.i83
  %y16.082.us.i86 = phi i32 [ %inc42.us.i103, %for.cond23.for.cond.cleanup26_crit_edge.us.i102 ], [ 0, %for.cond23.preheader.us.preheader.i83 ]
  %dst.addr.181.us.i87 = phi ptr [ %add.ptr44.us.i104, %for.cond23.for.cond.cleanup26_crit_edge.us.i102 ], [ %dst, %for.cond23.preheader.us.preheader.i83 ]
  %src.addr.180.us.i88 = phi ptr [ %add.ptr46.us.i105, %for.cond23.for.cond.cleanup26_crit_edge.us.i102 ], [ %add.ptr9, %for.cond23.preheader.us.preheader.i83 ]
  %brmerge369 = select i1 %min.iters.check279, i1 true, i1 %conflict.rdx276
  br i1 %brmerge369, label %for.body27.us.i89.preheader, label %vector.ph280

vector.ph280:                                     ; preds = %for.cond23.preheader.us.i85
  %217 = load i32, ptr %i_scale31.i79, align 4, !alias.scope !47
  %broadcast.splatinsert294 = insertelement <4 x i32> poison, i32 %217, i64 0
  %broadcast.splat295 = shufflevector <4 x i32> %broadcast.splatinsert294, <4 x i32> poison, <4 x i32> zeroinitializer
  %218 = load i32, ptr %i_offset33.i80, align 8, !alias.scope !47
  %broadcast.splatinsert302 = insertelement <4 x i32> poison, i32 %218, i64 0
  %broadcast.splat303 = shufflevector <4 x i32> %broadcast.splatinsert302, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body284

vector.body284:                                   ; preds = %vector.body284, %vector.ph280
  %index285 = phi i64 [ 0, %vector.ph280 ], [ %index.next304, %vector.body284 ]
  %219 = getelementptr inbounds i8, ptr %src.addr.180.us.i88, i64 %index285
  %220 = getelementptr inbounds i8, ptr %219, i64 4
  %221 = getelementptr inbounds i8, ptr %219, i64 8
  %222 = getelementptr inbounds i8, ptr %219, i64 12
  %wide.load286 = load <4 x i8>, ptr %219, align 1, !alias.scope !50
  %wide.load287 = load <4 x i8>, ptr %220, align 1, !alias.scope !50
  %wide.load288 = load <4 x i8>, ptr %221, align 1, !alias.scope !50
  %wide.load289 = load <4 x i8>, ptr %222, align 1, !alias.scope !50
  %223 = zext <4 x i8> %wide.load286 to <4 x i32>
  %224 = zext <4 x i8> %wide.load287 to <4 x i32>
  %225 = zext <4 x i8> %wide.load288 to <4 x i32>
  %226 = zext <4 x i8> %wide.load289 to <4 x i32>
  %227 = mul nsw <4 x i32> %broadcast.splat295, %223
  %228 = mul nsw <4 x i32> %broadcast.splat295, %224
  %229 = mul nsw <4 x i32> %broadcast.splat295, %225
  %230 = mul nsw <4 x i32> %broadcast.splat295, %226
  %231 = add nsw <4 x i32> %227, %broadcast.splat303
  %232 = add nsw <4 x i32> %228, %broadcast.splat303
  %233 = add nsw <4 x i32> %229, %broadcast.splat303
  %234 = add nsw <4 x i32> %230, %broadcast.splat303
  %235 = icmp ult <4 x i32> %231, <i32 256, i32 256, i32 256, i32 256>
  %236 = icmp ult <4 x i32> %232, <i32 256, i32 256, i32 256, i32 256>
  %237 = icmp ult <4 x i32> %233, <i32 256, i32 256, i32 256, i32 256>
  %238 = icmp ult <4 x i32> %234, <i32 256, i32 256, i32 256, i32 256>
  %239 = icmp sgt <4 x i32> %231, zeroinitializer
  %240 = icmp sgt <4 x i32> %232, zeroinitializer
  %241 = icmp sgt <4 x i32> %233, zeroinitializer
  %242 = icmp sgt <4 x i32> %234, zeroinitializer
  %243 = sext <4 x i1> %239 to <4 x i32>
  %244 = sext <4 x i1> %240 to <4 x i32>
  %245 = sext <4 x i1> %241 to <4 x i32>
  %246 = sext <4 x i1> %242 to <4 x i32>
  %247 = select <4 x i1> %235, <4 x i32> %231, <4 x i32> %243
  %248 = select <4 x i1> %236, <4 x i32> %232, <4 x i32> %244
  %249 = select <4 x i1> %237, <4 x i32> %233, <4 x i32> %245
  %250 = select <4 x i1> %238, <4 x i32> %234, <4 x i32> %246
  %251 = trunc <4 x i32> %247 to <4 x i8>
  %252 = trunc <4 x i32> %248 to <4 x i8>
  %253 = trunc <4 x i32> %249 to <4 x i8>
  %254 = trunc <4 x i32> %250 to <4 x i8>
  %255 = getelementptr inbounds i8, ptr %dst.addr.181.us.i87, i64 %index285
  %256 = getelementptr inbounds i8, ptr %255, i64 4
  %257 = getelementptr inbounds i8, ptr %255, i64 8
  %258 = getelementptr inbounds i8, ptr %255, i64 12
  store <4 x i8> %251, ptr %255, align 1, !alias.scope !52, !noalias !54
  store <4 x i8> %252, ptr %256, align 1, !alias.scope !52, !noalias !54
  store <4 x i8> %253, ptr %257, align 1, !alias.scope !52, !noalias !54
  store <4 x i8> %254, ptr %258, align 1, !alias.scope !52, !noalias !54
  %index.next304 = add nuw i64 %index285, 16
  %259 = icmp eq i64 %index.next304, %n.vec282
  br i1 %259, label %middle.block277, label %vector.body284, !llvm.loop !55

middle.block277:                                  ; preds = %vector.body284
  br i1 %cmp.n305, label %for.cond23.for.cond.cleanup26_crit_edge.us.i102, label %for.body27.us.i89.preheader

for.body27.us.i89.preheader:                      ; preds = %for.cond23.preheader.us.i85, %middle.block277
  %indvars.iv.i90.ph = phi i64 [ 0, %for.cond23.preheader.us.i85 ], [ %n.vec282, %middle.block277 ]
  br i1 %lcmp.mod364.not, label %for.body27.us.i89.prol.loopexit, label %for.body27.us.i89.prol

for.body27.us.i89.prol:                           ; preds = %for.body27.us.i89.preheader
  %arrayidx29.us.i91.prol = getelementptr inbounds i8, ptr %src.addr.180.us.i88, i64 %indvars.iv.i90.ph
  %260 = load i8, ptr %arrayidx29.us.i91.prol, align 1
  %conv30.us.i92.prol = zext i8 %260 to i32
  %261 = load i32, ptr %i_scale31.i79, align 4
  %mul32.us.i93.prol = mul nsw i32 %261, %conv30.us.i92.prol
  %262 = load i32, ptr %i_offset33.i80, align 8
  %add34.us.i94.prol = add nsw i32 %mul32.us.i93.prol, %262
  %tobool.not.i72.us.i95.prol = icmp ult i32 %add34.us.i94.prol, 256
  %263 = icmp sgt i32 %add34.us.i94.prol, 0
  %shr.i73.us.i96.prol = sext i1 %263 to i32
  %cond.i74.us.i97.prol = select i1 %tobool.not.i72.us.i95.prol, i32 %add34.us.i94.prol, i32 %shr.i73.us.i96.prol
  %conv.i75.us.i98.prol = trunc i32 %cond.i74.us.i97.prol to i8
  %arrayidx37.us.i99.prol = getelementptr inbounds i8, ptr %dst.addr.181.us.i87, i64 %indvars.iv.i90.ph
  store i8 %conv.i75.us.i98.prol, ptr %arrayidx37.us.i99.prol, align 1
  %indvars.iv.next.i100.prol = or disjoint i64 %indvars.iv.i90.ph, 1
  br label %for.body27.us.i89.prol.loopexit

for.body27.us.i89.prol.loopexit:                  ; preds = %for.body27.us.i89.prol, %for.body27.us.i89.preheader
  %indvars.iv.i90.unr = phi i64 [ %indvars.iv.i90.ph, %for.body27.us.i89.preheader ], [ %indvars.iv.next.i100.prol, %for.body27.us.i89.prol ]
  %264 = icmp eq i64 %indvars.iv.i90.ph, %216
  br i1 %264, label %for.cond23.for.cond.cleanup26_crit_edge.us.i102, label %for.body27.us.i89

for.body27.us.i89:                                ; preds = %for.body27.us.i89.prol.loopexit, %for.body27.us.i89
  %indvars.iv.i90 = phi i64 [ %indvars.iv.next.i100.1, %for.body27.us.i89 ], [ %indvars.iv.i90.unr, %for.body27.us.i89.prol.loopexit ]
  %arrayidx29.us.i91 = getelementptr inbounds i8, ptr %src.addr.180.us.i88, i64 %indvars.iv.i90
  %265 = load i8, ptr %arrayidx29.us.i91, align 1
  %conv30.us.i92 = zext i8 %265 to i32
  %266 = load i32, ptr %i_scale31.i79, align 4
  %mul32.us.i93 = mul nsw i32 %266, %conv30.us.i92
  %267 = load i32, ptr %i_offset33.i80, align 8
  %add34.us.i94 = add nsw i32 %mul32.us.i93, %267
  %tobool.not.i72.us.i95 = icmp ult i32 %add34.us.i94, 256
  %268 = icmp sgt i32 %add34.us.i94, 0
  %shr.i73.us.i96 = sext i1 %268 to i32
  %cond.i74.us.i97 = select i1 %tobool.not.i72.us.i95, i32 %add34.us.i94, i32 %shr.i73.us.i96
  %conv.i75.us.i98 = trunc i32 %cond.i74.us.i97 to i8
  %arrayidx37.us.i99 = getelementptr inbounds i8, ptr %dst.addr.181.us.i87, i64 %indvars.iv.i90
  store i8 %conv.i75.us.i98, ptr %arrayidx37.us.i99, align 1
  %indvars.iv.next.i100 = add nuw nsw i64 %indvars.iv.i90, 1
  %arrayidx29.us.i91.1 = getelementptr inbounds i8, ptr %src.addr.180.us.i88, i64 %indvars.iv.next.i100
  %269 = load i8, ptr %arrayidx29.us.i91.1, align 1
  %conv30.us.i92.1 = zext i8 %269 to i32
  %270 = load i32, ptr %i_scale31.i79, align 4
  %mul32.us.i93.1 = mul nsw i32 %270, %conv30.us.i92.1
  %271 = load i32, ptr %i_offset33.i80, align 8
  %add34.us.i94.1 = add nsw i32 %mul32.us.i93.1, %271
  %tobool.not.i72.us.i95.1 = icmp ult i32 %add34.us.i94.1, 256
  %272 = icmp sgt i32 %add34.us.i94.1, 0
  %shr.i73.us.i96.1 = sext i1 %272 to i32
  %cond.i74.us.i97.1 = select i1 %tobool.not.i72.us.i95.1, i32 %add34.us.i94.1, i32 %shr.i73.us.i96.1
  %conv.i75.us.i98.1 = trunc i32 %cond.i74.us.i97.1 to i8
  %arrayidx37.us.i99.1 = getelementptr inbounds i8, ptr %dst.addr.181.us.i87, i64 %indvars.iv.next.i100
  store i8 %conv.i75.us.i98.1, ptr %arrayidx37.us.i99.1, align 1
  %indvars.iv.next.i100.1 = add nuw nsw i64 %indvars.iv.i90, 2
  %exitcond.not.i101.1 = icmp eq i64 %indvars.iv.next.i100.1, %wide.trip.count.i84
  br i1 %exitcond.not.i101.1, label %for.cond23.for.cond.cleanup26_crit_edge.us.i102, label %for.body27.us.i89, !llvm.loop !56

for.cond23.for.cond.cleanup26_crit_edge.us.i102:  ; preds = %for.body27.us.i89.prol.loopexit, %for.body27.us.i89, %middle.block277
  %inc42.us.i103 = add nuw nsw i32 %y16.082.us.i86, 1
  %add.ptr44.us.i104 = getelementptr inbounds i8, ptr %dst.addr.181.us.i87, i64 %idx.ext43.i81
  %add.ptr46.us.i105 = getelementptr inbounds i8, ptr %src.addr.180.us.i88, i64 %idx.ext45.i82
  %exitcond93.not.i106 = icmp eq i32 %inc42.us.i103, %i_height
  br i1 %exitcond93.not.i106, label %if.end29, label %for.cond23.preheader.us.i85

for.cond.preheader.i107:                          ; preds = %if.then26
  br i1 %cmp185.i75, label %for.cond2.preheader.lr.ph.i108, label %if.end29

for.cond2.preheader.lr.ph.i108:                   ; preds = %for.cond.preheader.i107
  %cmp383.i109 = icmp sgt i32 %i_width, 0
  %i_scale.i110 = getelementptr inbounds i8, ptr %weight, i64 36
  %i_offset.i111 = getelementptr inbounds i8, ptr %weight, i64 40
  %idx.ext.i112 = sext i32 %i_dst_stride to i64
  %idx.ext13.i113 = sext i32 %i_src_stride to i64
  br i1 %cmp383.i109, label %for.cond2.preheader.us.preheader.i114, label %if.end29

for.cond2.preheader.us.preheader.i114:            ; preds = %for.cond2.preheader.lr.ph.i108
  %wide.trip.count97.i115 = zext nneg i32 %i_width to i64
  %273 = add nsw i32 %i_height, -1
  %274 = zext i32 %273 to i64
  %275 = mul nsw i64 %idx.ext.i112, %274
  %276 = getelementptr i8, ptr %dst, i64 %275
  %scevgep307 = getelementptr i8, ptr %276, i64 %wide.trip.count97.i115
  %277 = mul nsw i64 %idx.ext13.i113, %274
  %278 = getelementptr i8, ptr %1, i64 %277
  %279 = getelementptr i8, ptr %278, i64 %idx.ext8
  %280 = getelementptr i8, ptr %279, i64 %idx.ext
  %scevgep308 = getelementptr i8, ptr %280, i64 %wide.trip.count97.i115
  %scevgep309 = getelementptr i8, ptr %weight, i64 44
  %min.iters.check322 = icmp ult i32 %i_width, 16
  %bound0310 = icmp ugt ptr %scevgep308, %dst
  %bound1311 = icmp ult ptr %add.ptr9, %scevgep307
  %found.conflict312 = and i1 %bound0310, %bound1311
  %281 = or i32 %i_dst_stride, %i_src_stride
  %282 = icmp slt i32 %281, 0
  %283 = or i1 %found.conflict312, %282
  %bound0315 = icmp ugt ptr %scevgep309, %dst
  %bound1316 = icmp ult ptr %i_denom.i73, %scevgep307
  %found.conflict317 = and i1 %bound0315, %bound1316
  %stride.check318 = icmp slt i32 %i_dst_stride, 0
  %284 = or i1 %found.conflict317, %stride.check318
  %conflict.rdx319 = or i1 %283, %284
  %n.vec325 = and i64 %wide.trip.count97.i115, 2147483632
  %cmp.n356 = icmp eq i64 %n.vec325, %wide.trip.count97.i115
  br label %for.cond2.preheader.us.i116

for.cond2.preheader.us.i116:                      ; preds = %for.cond2.for.cond.cleanup4_crit_edge.us.i137, %for.cond2.preheader.us.preheader.i114
  %y.088.us.i117 = phi i32 [ %inc12.us.i138, %for.cond2.for.cond.cleanup4_crit_edge.us.i137 ], [ 0, %for.cond2.preheader.us.preheader.i114 ]
  %dst.addr.087.us.i118 = phi ptr [ %add.ptr.us.i139, %for.cond2.for.cond.cleanup4_crit_edge.us.i137 ], [ %dst, %for.cond2.preheader.us.preheader.i114 ]
  %src.addr.086.us.i119 = phi ptr [ %add.ptr14.us.i140, %for.cond2.for.cond.cleanup4_crit_edge.us.i137 ], [ %add.ptr9, %for.cond2.preheader.us.preheader.i114 ]
  %brmerge370 = select i1 %min.iters.check322, i1 true, i1 %conflict.rdx319
  br i1 %brmerge370, label %for.body5.us.i120.preheader, label %vector.ph323

vector.ph323:                                     ; preds = %for.cond2.preheader.us.i116
  %285 = load i32, ptr %i_scale.i110, align 4, !alias.scope !57
  %broadcast.splatinsert337 = insertelement <4 x i32> poison, i32 %285, i64 0
  %broadcast.splat338 = shufflevector <4 x i32> %broadcast.splatinsert337, <4 x i32> poison, <4 x i32> zeroinitializer
  %286 = load i32, ptr %i_denom.i73, align 16, !alias.scope !57
  %broadcast.splatinsert345 = insertelement <4 x i32> poison, i32 %286, i64 0
  %broadcast.splat346 = shufflevector <4 x i32> %broadcast.splatinsert345, <4 x i32> poison, <4 x i32> zeroinitializer
  %287 = add nsw <4 x i32> %broadcast.splat346, <i32 -1, i32 -1, i32 -1, i32 -1>
  %288 = add nsw <4 x i32> %broadcast.splat346, <i32 -1, i32 -1, i32 -1, i32 -1>
  %289 = add nsw <4 x i32> %broadcast.splat346, <i32 -1, i32 -1, i32 -1, i32 -1>
  %290 = add nsw <4 x i32> %broadcast.splat346, <i32 -1, i32 -1, i32 -1, i32 -1>
  %291 = shl nuw <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %287
  %292 = shl nuw <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %288
  %293 = shl nuw <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %289
  %294 = shl nuw <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %290
  %295 = load i32, ptr %i_offset.i111, align 8, !alias.scope !57
  %broadcast.splatinsert353 = insertelement <4 x i32> poison, i32 %295, i64 0
  %broadcast.splat354 = shufflevector <4 x i32> %broadcast.splatinsert353, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body327

vector.body327:                                   ; preds = %vector.body327, %vector.ph323
  %index328 = phi i64 [ 0, %vector.ph323 ], [ %index.next355, %vector.body327 ]
  %296 = getelementptr inbounds i8, ptr %src.addr.086.us.i119, i64 %index328
  %297 = getelementptr inbounds i8, ptr %296, i64 4
  %298 = getelementptr inbounds i8, ptr %296, i64 8
  %299 = getelementptr inbounds i8, ptr %296, i64 12
  %wide.load329 = load <4 x i8>, ptr %296, align 1, !alias.scope !60
  %wide.load330 = load <4 x i8>, ptr %297, align 1, !alias.scope !60
  %wide.load331 = load <4 x i8>, ptr %298, align 1, !alias.scope !60
  %wide.load332 = load <4 x i8>, ptr %299, align 1, !alias.scope !60
  %300 = zext <4 x i8> %wide.load329 to <4 x i32>
  %301 = zext <4 x i8> %wide.load330 to <4 x i32>
  %302 = zext <4 x i8> %wide.load331 to <4 x i32>
  %303 = zext <4 x i8> %wide.load332 to <4 x i32>
  %304 = mul nsw <4 x i32> %broadcast.splat338, %300
  %305 = mul nsw <4 x i32> %broadcast.splat338, %301
  %306 = mul nsw <4 x i32> %broadcast.splat338, %302
  %307 = mul nsw <4 x i32> %broadcast.splat338, %303
  %308 = add nsw <4 x i32> %291, %304
  %309 = add nsw <4 x i32> %292, %305
  %310 = add nsw <4 x i32> %293, %306
  %311 = add nsw <4 x i32> %294, %307
  %312 = ashr <4 x i32> %308, %broadcast.splat346
  %313 = ashr <4 x i32> %309, %broadcast.splat346
  %314 = ashr <4 x i32> %310, %broadcast.splat346
  %315 = ashr <4 x i32> %311, %broadcast.splat346
  %316 = add nsw <4 x i32> %312, %broadcast.splat354
  %317 = add nsw <4 x i32> %313, %broadcast.splat354
  %318 = add nsw <4 x i32> %314, %broadcast.splat354
  %319 = add nsw <4 x i32> %315, %broadcast.splat354
  %320 = icmp ult <4 x i32> %316, <i32 256, i32 256, i32 256, i32 256>
  %321 = icmp ult <4 x i32> %317, <i32 256, i32 256, i32 256, i32 256>
  %322 = icmp ult <4 x i32> %318, <i32 256, i32 256, i32 256, i32 256>
  %323 = icmp ult <4 x i32> %319, <i32 256, i32 256, i32 256, i32 256>
  %324 = icmp sgt <4 x i32> %316, zeroinitializer
  %325 = icmp sgt <4 x i32> %317, zeroinitializer
  %326 = icmp sgt <4 x i32> %318, zeroinitializer
  %327 = icmp sgt <4 x i32> %319, zeroinitializer
  %328 = sext <4 x i1> %324 to <4 x i32>
  %329 = sext <4 x i1> %325 to <4 x i32>
  %330 = sext <4 x i1> %326 to <4 x i32>
  %331 = sext <4 x i1> %327 to <4 x i32>
  %332 = select <4 x i1> %320, <4 x i32> %316, <4 x i32> %328
  %333 = select <4 x i1> %321, <4 x i32> %317, <4 x i32> %329
  %334 = select <4 x i1> %322, <4 x i32> %318, <4 x i32> %330
  %335 = select <4 x i1> %323, <4 x i32> %319, <4 x i32> %331
  %336 = trunc <4 x i32> %332 to <4 x i8>
  %337 = trunc <4 x i32> %333 to <4 x i8>
  %338 = trunc <4 x i32> %334 to <4 x i8>
  %339 = trunc <4 x i32> %335 to <4 x i8>
  %340 = getelementptr inbounds i8, ptr %dst.addr.087.us.i118, i64 %index328
  %341 = getelementptr inbounds i8, ptr %340, i64 4
  %342 = getelementptr inbounds i8, ptr %340, i64 8
  %343 = getelementptr inbounds i8, ptr %340, i64 12
  store <4 x i8> %336, ptr %340, align 1, !alias.scope !62, !noalias !64
  store <4 x i8> %337, ptr %341, align 1, !alias.scope !62, !noalias !64
  store <4 x i8> %338, ptr %342, align 1, !alias.scope !62, !noalias !64
  store <4 x i8> %339, ptr %343, align 1, !alias.scope !62, !noalias !64
  %index.next355 = add nuw i64 %index328, 16
  %344 = icmp eq i64 %index.next355, %n.vec325
  br i1 %344, label %middle.block320, label %vector.body327, !llvm.loop !65

middle.block320:                                  ; preds = %vector.body327
  br i1 %cmp.n356, label %for.cond2.for.cond.cleanup4_crit_edge.us.i137, label %for.body5.us.i120.preheader

for.body5.us.i120.preheader:                      ; preds = %for.cond2.preheader.us.i116, %middle.block320
  %indvars.iv94.i121.ph = phi i64 [ 0, %for.cond2.preheader.us.i116 ], [ %n.vec325, %middle.block320 ]
  br label %for.body5.us.i120

for.body5.us.i120:                                ; preds = %for.body5.us.i120.preheader, %for.body5.us.i120
  %indvars.iv94.i121 = phi i64 [ %indvars.iv.next95.i135, %for.body5.us.i120 ], [ %indvars.iv94.i121.ph, %for.body5.us.i120.preheader ]
  %arrayidx.us.i122 = getelementptr inbounds i8, ptr %src.addr.086.us.i119, i64 %indvars.iv94.i121
  %345 = load i8, ptr %arrayidx.us.i122, align 1
  %conv.us.i123 = zext i8 %345 to i32
  %346 = load i32, ptr %i_scale.i110, align 4
  %mul.us.i124 = mul nsw i32 %346, %conv.us.i123
  %347 = load i32, ptr %i_denom.i73, align 16
  %sub.us.i125 = add nsw i32 %347, -1
  %shl.us.i126 = shl nuw i32 1, %sub.us.i125
  %add.us.i127 = add nsw i32 %shl.us.i126, %mul.us.i124
  %shr.us.i128 = ashr i32 %add.us.i127, %347
  %348 = load i32, ptr %i_offset.i111, align 8
  %add8.us.i129 = add nsw i32 %shr.us.i128, %348
  %tobool.not.i.us.i130 = icmp ult i32 %add8.us.i129, 256
  %349 = icmp sgt i32 %add8.us.i129, 0
  %shr.i.us.i131 = sext i1 %349 to i32
  %cond.i.us.i132 = select i1 %tobool.not.i.us.i130, i32 %add8.us.i129, i32 %shr.i.us.i131
  %conv.i.us.i133 = trunc i32 %cond.i.us.i132 to i8
  %arrayidx10.us.i134 = getelementptr inbounds i8, ptr %dst.addr.087.us.i118, i64 %indvars.iv94.i121
  store i8 %conv.i.us.i133, ptr %arrayidx10.us.i134, align 1
  %indvars.iv.next95.i135 = add nuw nsw i64 %indvars.iv94.i121, 1
  %exitcond98.not.i136 = icmp eq i64 %indvars.iv.next95.i135, %wide.trip.count97.i115
  br i1 %exitcond98.not.i136, label %for.cond2.for.cond.cleanup4_crit_edge.us.i137, label %for.body5.us.i120, !llvm.loop !66

for.cond2.for.cond.cleanup4_crit_edge.us.i137:    ; preds = %for.body5.us.i120, %middle.block320
  %inc12.us.i138 = add nuw nsw i32 %y.088.us.i117, 1
  %add.ptr.us.i139 = getelementptr inbounds i8, ptr %dst.addr.087.us.i118, i64 %idx.ext.i112
  %add.ptr14.us.i140 = getelementptr inbounds i8, ptr %src.addr.086.us.i119, i64 %idx.ext13.i113
  %exitcond99.not.i141 = icmp eq i32 %inc12.us.i138, %i_height
  br i1 %exitcond99.not.i141, label %if.end29, label %for.cond2.preheader.us.i116

if.else27:                                        ; preds = %if.else
  %cmp6.i = icmp sgt i32 %i_height, 0
  br i1 %cmp6.i, label %for.body.lr.ph.i, label %if.end29

for.body.lr.ph.i:                                 ; preds = %if.else27
  %conv.i = sext i32 %i_width to i64
  %idx.ext.i143 = sext i32 %i_src_stride to i64
  %idx.ext1.i = sext i32 %i_dst_stride to i64
  %xtraiter365 = and i32 %i_height, 3
  %350 = icmp ult i32 %i_height, 4
  br i1 %350, label %if.end29.loopexit.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = and i32 %i_height, 2147483644
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %src.addr.08.i = phi ptr [ %add.ptr9, %for.body.lr.ph.i.new ], [ %add.ptr.i.3, %for.body.i ]
  %dst.addr.07.i = phi ptr [ %dst, %for.body.lr.ph.i.new ], [ %add.ptr2.i.3, %for.body.i ]
  %niter = phi i32 [ 0, %for.body.lr.ph.i.new ], [ %niter.next.3, %for.body.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %dst.addr.07.i, ptr align 1 %src.addr.08.i, i64 %conv.i, i1 false)
  %add.ptr.i = getelementptr inbounds i8, ptr %src.addr.08.i, i64 %idx.ext.i143
  %add.ptr2.i = getelementptr inbounds i8, ptr %dst.addr.07.i, i64 %idx.ext1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr2.i, ptr align 1 %add.ptr.i, i64 %conv.i, i1 false)
  %add.ptr.i.1 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext.i143
  %add.ptr2.i.1 = getelementptr inbounds i8, ptr %add.ptr2.i, i64 %idx.ext1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr2.i.1, ptr align 1 %add.ptr.i.1, i64 %conv.i, i1 false)
  %add.ptr.i.2 = getelementptr inbounds i8, ptr %add.ptr.i.1, i64 %idx.ext.i143
  %add.ptr2.i.2 = getelementptr inbounds i8, ptr %add.ptr2.i.1, i64 %idx.ext1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr2.i.2, ptr align 1 %add.ptr.i.2, i64 %conv.i, i1 false)
  %add.ptr.i.3 = getelementptr inbounds i8, ptr %add.ptr.i.2, i64 %idx.ext.i143
  %add.ptr2.i.3 = getelementptr inbounds i8, ptr %add.ptr2.i.2, i64 %idx.ext1.i
  %niter.next.3 = add i32 %niter, 4
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %if.end29.loopexit.unr-lcssa, label %for.body.i

if.end29.loopexit.unr-lcssa:                      ; preds = %for.body.i, %for.body.lr.ph.i
  %src.addr.08.i.unr = phi ptr [ %add.ptr9, %for.body.lr.ph.i ], [ %add.ptr.i.3, %for.body.i ]
  %dst.addr.07.i.unr = phi ptr [ %dst, %for.body.lr.ph.i ], [ %add.ptr2.i.3, %for.body.i ]
  %lcmp.mod366.not = icmp eq i32 %xtraiter365, 0
  br i1 %lcmp.mod366.not, label %if.end29, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %if.end29.loopexit.unr-lcssa, %for.body.i.epil
  %src.addr.08.i.epil = phi ptr [ %add.ptr.i.epil, %for.body.i.epil ], [ %src.addr.08.i.unr, %if.end29.loopexit.unr-lcssa ]
  %dst.addr.07.i.epil = phi ptr [ %add.ptr2.i.epil, %for.body.i.epil ], [ %dst.addr.07.i.unr, %if.end29.loopexit.unr-lcssa ]
  %epil.iter = phi i32 [ %epil.iter.next, %for.body.i.epil ], [ 0, %if.end29.loopexit.unr-lcssa ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %dst.addr.07.i.epil, ptr align 1 %src.addr.08.i.epil, i64 %conv.i, i1 false)
  %add.ptr.i.epil = getelementptr inbounds i8, ptr %src.addr.08.i.epil, i64 %idx.ext.i143
  %add.ptr2.i.epil = getelementptr inbounds i8, ptr %dst.addr.07.i.epil, i64 %idx.ext1.i
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter365
  br i1 %epil.iter.cmp.not, label %if.end29, label %for.body.i.epil, !llvm.loop !67

if.end29:                                         ; preds = %for.cond23.for.cond.cleanup26_crit_edge.us.i, %for.cond2.for.cond.cleanup4_crit_edge.us.i, %for.cond23.for.cond.cleanup26_crit_edge.us.i102, %for.cond2.for.cond.cleanup4_crit_edge.us.i137, %if.end29.loopexit.unr-lcssa, %for.body.i.epil, %if.else27, %for.cond2.preheader.lr.ph.i108, %for.cond.preheader.i107, %for.cond23.preheader.lr.ph.i77, %for.cond17.preheader.i76, %for.cond2.preheader.lr.ph.i, %for.cond.preheader.i, %for.cond23.preheader.lr.ph.i, %for.cond17.preheader.i, %pixel_avg.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal ptr @get_ref(ptr noundef %dst, ptr nocapture noundef %i_dst_stride, ptr nocapture noundef readonly %src, i32 noundef %i_src_stride, i32 noundef %mvx, i32 noundef %mvy, i32 noundef %i_width, i32 noundef %i_height, ptr nocapture noundef readonly %weight) #0 {
entry:
  %and = and i32 %mvy, 3
  %shl = shl nuw nsw i32 %and, 2
  %and1 = and i32 %mvx, 3
  %add = or disjoint i32 %shl, %and1
  %shr = ashr i32 %mvy, 2
  %mul = mul i32 %shr, %i_src_stride
  %shr2 = ashr i32 %mvx, 2
  %add3 = add i32 %mul, %shr2
  %idxprom = zext nneg i32 %add to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr @hpel_ref0, i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1
  %idxprom4 = zext i8 %0 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %src, i64 %idxprom4
  %1 = load ptr, ptr %arrayidx5, align 8
  %idx.ext = sext i32 %add3 to i64
  %add.ptr = getelementptr i8, ptr %1, i64 %idx.ext
  %cmp = icmp eq i32 %and, 3
  %mul7 = select i1 %cmp, i32 %i_src_stride, i32 0
  %idx.ext8 = sext i32 %mul7 to i64
  %add.ptr9 = getelementptr i8, ptr %add.ptr, i64 %idx.ext8
  %and10 = and i32 %add, 5
  %tobool.not = icmp eq i32 %and10, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx12 = getelementptr inbounds [16 x i8], ptr @hpel_ref1, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx12, align 1
  %idxprom13 = zext i8 %2 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %src, i64 %idxprom13
  %3 = load ptr, ptr %arrayidx14, align 8
  %add.ptr16 = getelementptr i8, ptr %3, i64 %idx.ext
  %cmp18 = icmp eq i32 %and1, 3
  %idx.ext20 = zext i1 %cmp18 to i64
  %add.ptr21 = getelementptr i8, ptr %add.ptr16, i64 %idx.ext20
  %cmp29.i = icmp sgt i32 %i_height, 0
  br i1 %cmp29.i, label %for.cond1.preheader.lr.ph.i, label %pixel_avg.exit

for.cond1.preheader.lr.ph.i:                      ; preds = %if.then
  %4 = load i32, ptr %i_dst_stride, align 4
  %cmp227.i = icmp sgt i32 %i_width, 0
  %idx.ext.i = sext i32 %4 to i64
  %idx.ext12.i = sext i32 %i_src_stride to i64
  br i1 %cmp227.i, label %for.cond1.preheader.us.preheader.i, label %pixel_avg.exit

for.cond1.preheader.us.preheader.i:               ; preds = %for.cond1.preheader.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %i_width to i64
  %5 = add nsw i32 %i_height, -1
  %6 = zext i32 %5 to i64
  %7 = mul nsw i64 %idx.ext.i, %6
  %8 = getelementptr i8, ptr %dst, i64 %7
  %scevgep = getelementptr i8, ptr %8, i64 %wide.trip.count.i
  %9 = mul nsw i64 %idx.ext12.i, %6
  %10 = getelementptr i8, ptr %1, i64 %9
  %11 = getelementptr i8, ptr %10, i64 %idx.ext8
  %12 = getelementptr i8, ptr %11, i64 %idx.ext
  %scevgep154 = getelementptr i8, ptr %12, i64 %wide.trip.count.i
  %13 = getelementptr i8, ptr %3, i64 %9
  %14 = getelementptr i8, ptr %13, i64 %idx.ext
  %15 = getelementptr i8, ptr %14, i64 %idx.ext20
  %scevgep155 = getelementptr i8, ptr %15, i64 %wide.trip.count.i
  %min.iters.check = icmp ult i32 %i_width, 8
  %bound0 = icmp ugt ptr %scevgep154, %dst
  %bound1 = icmp ult ptr %add.ptr9, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %16 = or i32 %4, %i_src_stride
  %17 = icmp slt i32 %16, 0
  %18 = or i1 %found.conflict, %17
  %bound0157 = icmp ugt ptr %scevgep155, %dst
  %bound1158 = icmp ult ptr %add.ptr21, %scevgep
  %found.conflict159 = and i1 %bound0157, %bound1158
  %19 = or i32 %4, %i_src_stride
  %20 = icmp slt i32 %19, 0
  %21 = or i1 %found.conflict159, %20
  %conflict.rdx = or i1 %18, %21
  %min.iters.check162 = icmp ult i32 %i_width, 64
  %n.vec = and i64 %wide.trip.count.i, 2147483584
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %n.vec.remaining = and i64 %wide.trip.count.i, 56
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  %n.vec171 = and i64 %wide.trip.count.i, 2147483640
  %cmp.n176 = icmp eq i64 %n.vec171, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %22 = add nsw i64 %wide.trip.count.i, -1
  br label %iter.check

iter.check:                                       ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %for.cond1.preheader.us.preheader.i
  %y.033.us.i = phi i32 [ %inc17.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ 0, %for.cond1.preheader.us.preheader.i ]
  %dst.addr.032.us.i = phi ptr [ %add.ptr.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %dst, %for.cond1.preheader.us.preheader.i ]
  %src1.addr.031.us.i = phi ptr [ %add.ptr13.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %add.ptr9, %for.cond1.preheader.us.preheader.i ]
  %src2.addr.030.us.i = phi ptr [ %add.ptr15.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %add.ptr21, %for.cond1.preheader.us.preheader.i ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %for.body4.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check162, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ]
  %23 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %index
  %24 = getelementptr inbounds i8, ptr %23, i64 16
  %25 = getelementptr inbounds i8, ptr %23, i64 32
  %26 = getelementptr inbounds i8, ptr %23, i64 48
  %wide.load = load <16 x i8>, ptr %23, align 1, !alias.scope !68
  %wide.load163 = load <16 x i8>, ptr %24, align 1, !alias.scope !68
  %wide.load164 = load <16 x i8>, ptr %25, align 1, !alias.scope !68
  %wide.load165 = load <16 x i8>, ptr %26, align 1, !alias.scope !68
  %27 = zext <16 x i8> %wide.load to <16 x i16>
  %28 = zext <16 x i8> %wide.load163 to <16 x i16>
  %29 = zext <16 x i8> %wide.load164 to <16 x i16>
  %30 = zext <16 x i8> %wide.load165 to <16 x i16>
  %31 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %index
  %32 = getelementptr inbounds i8, ptr %31, i64 16
  %33 = getelementptr inbounds i8, ptr %31, i64 32
  %34 = getelementptr inbounds i8, ptr %31, i64 48
  %wide.load166 = load <16 x i8>, ptr %31, align 1, !alias.scope !71
  %wide.load167 = load <16 x i8>, ptr %32, align 1, !alias.scope !71
  %wide.load168 = load <16 x i8>, ptr %33, align 1, !alias.scope !71
  %wide.load169 = load <16 x i8>, ptr %34, align 1, !alias.scope !71
  %35 = zext <16 x i8> %wide.load166 to <16 x i16>
  %36 = zext <16 x i8> %wide.load167 to <16 x i16>
  %37 = zext <16 x i8> %wide.load168 to <16 x i16>
  %38 = zext <16 x i8> %wide.load169 to <16 x i16>
  %39 = add nuw nsw <16 x i16> %27, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %40 = add nuw nsw <16 x i16> %28, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %41 = add nuw nsw <16 x i16> %29, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %42 = add nuw nsw <16 x i16> %30, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %43 = add nuw nsw <16 x i16> %39, %35
  %44 = add nuw nsw <16 x i16> %40, %36
  %45 = add nuw nsw <16 x i16> %41, %37
  %46 = add nuw nsw <16 x i16> %42, %38
  %47 = lshr <16 x i16> %43, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %48 = lshr <16 x i16> %44, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %49 = lshr <16 x i16> %45, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %50 = lshr <16 x i16> %46, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %51 = trunc <16 x i16> %47 to <16 x i8>
  %52 = trunc <16 x i16> %48 to <16 x i8>
  %53 = trunc <16 x i16> %49 to <16 x i8>
  %54 = trunc <16 x i16> %50 to <16 x i8>
  %55 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %index
  %56 = getelementptr inbounds i8, ptr %55, i64 16
  %57 = getelementptr inbounds i8, ptr %55, i64 32
  %58 = getelementptr inbounds i8, ptr %55, i64 48
  store <16 x i8> %51, ptr %55, align 1, !alias.scope !73, !noalias !75
  store <16 x i8> %52, ptr %56, align 1, !alias.scope !73, !noalias !75
  store <16 x i8> %53, ptr %57, align 1, !alias.scope !73, !noalias !75
  store <16 x i8> %54, ptr %58, align 1, !alias.scope !73, !noalias !75
  %index.next = add nuw i64 %index, 64
  %59 = icmp eq i64 %index.next, %n.vec
  br i1 %59, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond1.for.cond.cleanup3_crit_edge.us.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %for.body4.us.i.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index172 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next175, %vec.epilog.vector.body ]
  %60 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %index172
  %wide.load173 = load <8 x i8>, ptr %60, align 1, !alias.scope !77
  %61 = zext <8 x i8> %wide.load173 to <8 x i16>
  %62 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %index172
  %wide.load174 = load <8 x i8>, ptr %62, align 1, !alias.scope !80
  %63 = zext <8 x i8> %wide.load174 to <8 x i16>
  %64 = add nuw nsw <8 x i16> %61, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %65 = add nuw nsw <8 x i16> %64, %63
  %66 = lshr <8 x i16> %65, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %67 = trunc <8 x i16> %66 to <8 x i8>
  %68 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %index172
  store <8 x i8> %67, ptr %68, align 1, !alias.scope !82, !noalias !84
  %index.next175 = add nuw i64 %index172, 8
  %69 = icmp eq i64 %index.next175, %n.vec171
  br i1 %69, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !85

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n176, label %for.cond1.for.cond.cleanup3_crit_edge.us.i, label %for.body4.us.i.preheader

for.body4.us.i.preheader:                         ; preds = %iter.check, %vec.epilog.middle.block, %vec.epilog.iter.check
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec171, %vec.epilog.middle.block ]
  br i1 %lcmp.mod.not, label %for.body4.us.i.prol.loopexit, label %for.body4.us.i.prol

for.body4.us.i.prol:                              ; preds = %for.body4.us.i.preheader
  %arrayidx.us.i.prol = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %indvars.iv.i.ph
  %70 = load i8, ptr %arrayidx.us.i.prol, align 1
  %conv.us.i.prol = zext i8 %70 to i16
  %arrayidx6.us.i.prol = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %indvars.iv.i.ph
  %71 = load i8, ptr %arrayidx6.us.i.prol, align 1
  %conv7.us.i.prol = zext i8 %71 to i16
  %add.us.i.prol = add nuw nsw i16 %conv.us.i.prol, 1
  %add8.us.i.prol = add nuw nsw i16 %add.us.i.prol, %conv7.us.i.prol
  %shr.us.i.prol = lshr i16 %add8.us.i.prol, 1
  %conv9.us.i.prol = trunc nuw i16 %shr.us.i.prol to i8
  %arrayidx11.us.i.prol = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %indvars.iv.i.ph
  store i8 %conv9.us.i.prol, ptr %arrayidx11.us.i.prol, align 1
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %for.body4.us.i.prol.loopexit

for.body4.us.i.prol.loopexit:                     ; preds = %for.body4.us.i.prol, %for.body4.us.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %for.body4.us.i.preheader ], [ %indvars.iv.next.i.prol, %for.body4.us.i.prol ]
  %72 = icmp eq i64 %indvars.iv.i.ph, %22
  br i1 %72, label %for.cond1.for.cond.cleanup3_crit_edge.us.i, label %for.body4.us.i

for.body4.us.i:                                   ; preds = %for.body4.us.i.prol.loopexit, %for.body4.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %for.body4.us.i ], [ %indvars.iv.i.unr, %for.body4.us.i.prol.loopexit ]
  %arrayidx.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %indvars.iv.i
  %73 = load i8, ptr %arrayidx.us.i, align 1
  %conv.us.i = zext i8 %73 to i16
  %arrayidx6.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %indvars.iv.i
  %74 = load i8, ptr %arrayidx6.us.i, align 1
  %conv7.us.i = zext i8 %74 to i16
  %add.us.i = add nuw nsw i16 %conv.us.i, 1
  %add8.us.i = add nuw nsw i16 %add.us.i, %conv7.us.i
  %shr.us.i = lshr i16 %add8.us.i, 1
  %conv9.us.i = trunc nuw i16 %shr.us.i to i8
  %arrayidx11.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %indvars.iv.i
  store i8 %conv9.us.i, ptr %arrayidx11.us.i, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %arrayidx.us.i.1 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %indvars.iv.next.i
  %75 = load i8, ptr %arrayidx.us.i.1, align 1
  %conv.us.i.1 = zext i8 %75 to i16
  %arrayidx6.us.i.1 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %indvars.iv.next.i
  %76 = load i8, ptr %arrayidx6.us.i.1, align 1
  %conv7.us.i.1 = zext i8 %76 to i16
  %add.us.i.1 = add nuw nsw i16 %conv.us.i.1, 1
  %add8.us.i.1 = add nuw nsw i16 %add.us.i.1, %conv7.us.i.1
  %shr.us.i.1 = lshr i16 %add8.us.i.1, 1
  %conv9.us.i.1 = trunc nuw i16 %shr.us.i.1 to i8
  %arrayidx11.us.i.1 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %indvars.iv.next.i
  store i8 %conv9.us.i.1, ptr %arrayidx11.us.i.1, align 1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %for.cond1.for.cond.cleanup3_crit_edge.us.i, label %for.body4.us.i, !llvm.loop !86

for.cond1.for.cond.cleanup3_crit_edge.us.i:       ; preds = %for.body4.us.i.prol.loopexit, %for.body4.us.i, %vec.epilog.middle.block, %middle.block
  %add.ptr.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %idx.ext.i
  %add.ptr13.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %idx.ext12.i
  %add.ptr15.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %idx.ext12.i
  %inc17.us.i = add nuw nsw i32 %y.033.us.i, 1
  %exitcond36.not.i = icmp eq i32 %inc17.us.i, %i_height
  br i1 %exitcond36.not.i, label %pixel_avg.exit, label %iter.check

pixel_avg.exit:                                   ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %if.then, %for.cond1.preheader.lr.ph.i
  %weightfn = getelementptr inbounds i8, ptr %weight, i64 48
  %77 = load ptr, ptr %weightfn, align 16
  %tobool22.not = icmp eq ptr %77, null
  br i1 %tobool22.not, label %cleanup, label %if.then23

if.then23:                                        ; preds = %pixel_avg.exit
  %78 = load i32, ptr %i_dst_stride, align 4
  %i_denom.i = getelementptr inbounds i8, ptr %weight, i64 32
  %79 = load i32, ptr %i_denom.i, align 16
  %cmp.i = icmp sgt i32 %79, 0
  br i1 %cmp.i, label %for.cond.preheader.i, label %for.cond17.preheader.i

for.cond17.preheader.i:                           ; preds = %if.then23
  br i1 %cmp29.i, label %for.cond23.preheader.lr.ph.i, label %cleanup

for.cond23.preheader.lr.ph.i:                     ; preds = %for.cond17.preheader.i
  %cmp2477.i = icmp sgt i32 %i_width, 0
  %i_scale31.i = getelementptr i8, ptr %weight, i64 36
  %i_offset33.i = getelementptr inbounds i8, ptr %weight, i64 40
  %idx.ext43.i = sext i32 %78 to i64
  br i1 %cmp2477.i, label %for.cond23.preheader.us.preheader.i, label %cleanup

for.cond23.preheader.us.preheader.i:              ; preds = %for.cond23.preheader.lr.ph.i
  %wide.trip.count.i61 = zext nneg i32 %i_width to i64
  %80 = add nsw i32 %i_height, -1
  %81 = zext i32 %80 to i64
  %82 = mul nsw i64 %idx.ext43.i, %81
  %83 = getelementptr i8, ptr %dst, i64 %82
  %scevgep178 = getelementptr i8, ptr %83, i64 %wide.trip.count.i61
  %scevgep179 = getelementptr i8, ptr %weight, i64 44
  %min.iters.check185 = icmp ult i32 %i_width, 16
  %bound0180 = icmp ugt ptr %scevgep179, %dst
  %bound1181 = icmp ult ptr %i_scale31.i, %scevgep178
  %found.conflict182 = and i1 %bound0180, %bound1181
  %stride.check183 = icmp slt i32 %78, 0
  %84 = or i1 %found.conflict182, %stride.check183
  %n.vec188 = and i64 %wide.trip.count.i61, 2147483632
  %cmp.n211 = icmp eq i64 %n.vec188, %wide.trip.count.i61
  %xtraiter353 = and i64 %wide.trip.count.i61, 1
  %lcmp.mod354.not = icmp eq i64 %xtraiter353, 0
  %85 = add nsw i64 %wide.trip.count.i61, -1
  br label %for.cond23.preheader.us.i

for.cond23.preheader.us.i:                        ; preds = %for.cond23.for.cond.cleanup26_crit_edge.us.i, %for.cond23.preheader.us.preheader.i
  %y16.082.us.i = phi i32 [ %inc42.us.i, %for.cond23.for.cond.cleanup26_crit_edge.us.i ], [ 0, %for.cond23.preheader.us.preheader.i ]
  %dst.addr.181.us.i = phi ptr [ %add.ptr44.us.i, %for.cond23.for.cond.cleanup26_crit_edge.us.i ], [ %dst, %for.cond23.preheader.us.preheader.i ]
  %brmerge357 = select i1 %min.iters.check185, i1 true, i1 %84
  br i1 %brmerge357, label %for.body27.us.i.preheader, label %vector.ph186

vector.ph186:                                     ; preds = %for.cond23.preheader.us.i
  %86 = load i32, ptr %i_scale31.i, align 4, !alias.scope !87
  %broadcast.splatinsert200 = insertelement <4 x i32> poison, i32 %86, i64 0
  %broadcast.splat201 = shufflevector <4 x i32> %broadcast.splatinsert200, <4 x i32> poison, <4 x i32> zeroinitializer
  %87 = load i32, ptr %i_offset33.i, align 8, !alias.scope !87
  %broadcast.splatinsert208 = insertelement <4 x i32> poison, i32 %87, i64 0
  %broadcast.splat209 = shufflevector <4 x i32> %broadcast.splatinsert208, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph186
  %index191 = phi i64 [ 0, %vector.ph186 ], [ %index.next210, %vector.body190 ]
  %88 = getelementptr inbounds i8, ptr %dst.addr.181.us.i, i64 %index191
  %89 = getelementptr inbounds i8, ptr %88, i64 4
  %90 = getelementptr inbounds i8, ptr %88, i64 8
  %91 = getelementptr inbounds i8, ptr %88, i64 12
  %wide.load192 = load <4 x i8>, ptr %88, align 1, !alias.scope !90, !noalias !87
  %wide.load193 = load <4 x i8>, ptr %89, align 1, !alias.scope !90, !noalias !87
  %wide.load194 = load <4 x i8>, ptr %90, align 1, !alias.scope !90, !noalias !87
  %wide.load195 = load <4 x i8>, ptr %91, align 1, !alias.scope !90, !noalias !87
  %92 = zext <4 x i8> %wide.load192 to <4 x i32>
  %93 = zext <4 x i8> %wide.load193 to <4 x i32>
  %94 = zext <4 x i8> %wide.load194 to <4 x i32>
  %95 = zext <4 x i8> %wide.load195 to <4 x i32>
  %96 = mul nsw <4 x i32> %broadcast.splat201, %92
  %97 = mul nsw <4 x i32> %broadcast.splat201, %93
  %98 = mul nsw <4 x i32> %broadcast.splat201, %94
  %99 = mul nsw <4 x i32> %broadcast.splat201, %95
  %100 = add nsw <4 x i32> %96, %broadcast.splat209
  %101 = add nsw <4 x i32> %97, %broadcast.splat209
  %102 = add nsw <4 x i32> %98, %broadcast.splat209
  %103 = add nsw <4 x i32> %99, %broadcast.splat209
  %104 = icmp ult <4 x i32> %100, <i32 256, i32 256, i32 256, i32 256>
  %105 = icmp ult <4 x i32> %101, <i32 256, i32 256, i32 256, i32 256>
  %106 = icmp ult <4 x i32> %102, <i32 256, i32 256, i32 256, i32 256>
  %107 = icmp ult <4 x i32> %103, <i32 256, i32 256, i32 256, i32 256>
  %108 = icmp sgt <4 x i32> %100, zeroinitializer
  %109 = icmp sgt <4 x i32> %101, zeroinitializer
  %110 = icmp sgt <4 x i32> %102, zeroinitializer
  %111 = icmp sgt <4 x i32> %103, zeroinitializer
  %112 = sext <4 x i1> %108 to <4 x i32>
  %113 = sext <4 x i1> %109 to <4 x i32>
  %114 = sext <4 x i1> %110 to <4 x i32>
  %115 = sext <4 x i1> %111 to <4 x i32>
  %116 = select <4 x i1> %104, <4 x i32> %100, <4 x i32> %112
  %117 = select <4 x i1> %105, <4 x i32> %101, <4 x i32> %113
  %118 = select <4 x i1> %106, <4 x i32> %102, <4 x i32> %114
  %119 = select <4 x i1> %107, <4 x i32> %103, <4 x i32> %115
  %120 = trunc <4 x i32> %116 to <4 x i8>
  %121 = trunc <4 x i32> %117 to <4 x i8>
  %122 = trunc <4 x i32> %118 to <4 x i8>
  %123 = trunc <4 x i32> %119 to <4 x i8>
  store <4 x i8> %120, ptr %88, align 1, !alias.scope !90, !noalias !87
  store <4 x i8> %121, ptr %89, align 1, !alias.scope !90, !noalias !87
  store <4 x i8> %122, ptr %90, align 1, !alias.scope !90, !noalias !87
  store <4 x i8> %123, ptr %91, align 1, !alias.scope !90, !noalias !87
  %index.next210 = add nuw i64 %index191, 16
  %124 = icmp eq i64 %index.next210, %n.vec188
  br i1 %124, label %middle.block184, label %vector.body190, !llvm.loop !92

middle.block184:                                  ; preds = %vector.body190
  br i1 %cmp.n211, label %for.cond23.for.cond.cleanup26_crit_edge.us.i, label %for.body27.us.i.preheader

for.body27.us.i.preheader:                        ; preds = %for.cond23.preheader.us.i, %middle.block184
  %indvars.iv.i62.ph = phi i64 [ 0, %for.cond23.preheader.us.i ], [ %n.vec188, %middle.block184 ]
  br i1 %lcmp.mod354.not, label %for.body27.us.i.prol.loopexit, label %for.body27.us.i.prol

for.body27.us.i.prol:                             ; preds = %for.body27.us.i.preheader
  %arrayidx29.us.i.prol = getelementptr inbounds i8, ptr %dst.addr.181.us.i, i64 %indvars.iv.i62.ph
  %125 = load i8, ptr %arrayidx29.us.i.prol, align 1
  %conv30.us.i.prol = zext i8 %125 to i32
  %126 = load i32, ptr %i_scale31.i, align 4
  %mul32.us.i.prol = mul nsw i32 %126, %conv30.us.i.prol
  %127 = load i32, ptr %i_offset33.i, align 8
  %add34.us.i.prol = add nsw i32 %mul32.us.i.prol, %127
  %tobool.not.i72.us.i.prol = icmp ult i32 %add34.us.i.prol, 256
  %128 = icmp sgt i32 %add34.us.i.prol, 0
  %shr.i73.us.i.prol = sext i1 %128 to i32
  %cond.i74.us.i.prol = select i1 %tobool.not.i72.us.i.prol, i32 %add34.us.i.prol, i32 %shr.i73.us.i.prol
  %conv.i75.us.i.prol = trunc i32 %cond.i74.us.i.prol to i8
  store i8 %conv.i75.us.i.prol, ptr %arrayidx29.us.i.prol, align 1
  %indvars.iv.next.i63.prol = or disjoint i64 %indvars.iv.i62.ph, 1
  br label %for.body27.us.i.prol.loopexit

for.body27.us.i.prol.loopexit:                    ; preds = %for.body27.us.i.prol, %for.body27.us.i.preheader
  %indvars.iv.i62.unr = phi i64 [ %indvars.iv.i62.ph, %for.body27.us.i.preheader ], [ %indvars.iv.next.i63.prol, %for.body27.us.i.prol ]
  %129 = icmp eq i64 %indvars.iv.i62.ph, %85
  br i1 %129, label %for.cond23.for.cond.cleanup26_crit_edge.us.i, label %for.body27.us.i

for.body27.us.i:                                  ; preds = %for.body27.us.i.prol.loopexit, %for.body27.us.i
  %indvars.iv.i62 = phi i64 [ %indvars.iv.next.i63.1, %for.body27.us.i ], [ %indvars.iv.i62.unr, %for.body27.us.i.prol.loopexit ]
  %arrayidx29.us.i = getelementptr inbounds i8, ptr %dst.addr.181.us.i, i64 %indvars.iv.i62
  %130 = load i8, ptr %arrayidx29.us.i, align 1
  %conv30.us.i = zext i8 %130 to i32
  %131 = load i32, ptr %i_scale31.i, align 4
  %mul32.us.i = mul nsw i32 %131, %conv30.us.i
  %132 = load i32, ptr %i_offset33.i, align 8
  %add34.us.i = add nsw i32 %mul32.us.i, %132
  %tobool.not.i72.us.i = icmp ult i32 %add34.us.i, 256
  %133 = icmp sgt i32 %add34.us.i, 0
  %shr.i73.us.i = sext i1 %133 to i32
  %cond.i74.us.i = select i1 %tobool.not.i72.us.i, i32 %add34.us.i, i32 %shr.i73.us.i
  %conv.i75.us.i = trunc i32 %cond.i74.us.i to i8
  store i8 %conv.i75.us.i, ptr %arrayidx29.us.i, align 1
  %indvars.iv.next.i63 = add nuw nsw i64 %indvars.iv.i62, 1
  %arrayidx29.us.i.1 = getelementptr inbounds i8, ptr %dst.addr.181.us.i, i64 %indvars.iv.next.i63
  %134 = load i8, ptr %arrayidx29.us.i.1, align 1
  %conv30.us.i.1 = zext i8 %134 to i32
  %135 = load i32, ptr %i_scale31.i, align 4
  %mul32.us.i.1 = mul nsw i32 %135, %conv30.us.i.1
  %136 = load i32, ptr %i_offset33.i, align 8
  %add34.us.i.1 = add nsw i32 %mul32.us.i.1, %136
  %tobool.not.i72.us.i.1 = icmp ult i32 %add34.us.i.1, 256
  %137 = icmp sgt i32 %add34.us.i.1, 0
  %shr.i73.us.i.1 = sext i1 %137 to i32
  %cond.i74.us.i.1 = select i1 %tobool.not.i72.us.i.1, i32 %add34.us.i.1, i32 %shr.i73.us.i.1
  %conv.i75.us.i.1 = trunc i32 %cond.i74.us.i.1 to i8
  store i8 %conv.i75.us.i.1, ptr %arrayidx29.us.i.1, align 1
  %indvars.iv.next.i63.1 = add nuw nsw i64 %indvars.iv.i62, 2
  %exitcond.not.i64.1 = icmp eq i64 %indvars.iv.next.i63.1, %wide.trip.count.i61
  br i1 %exitcond.not.i64.1, label %for.cond23.for.cond.cleanup26_crit_edge.us.i, label %for.body27.us.i, !llvm.loop !93

for.cond23.for.cond.cleanup26_crit_edge.us.i:     ; preds = %for.body27.us.i.prol.loopexit, %for.body27.us.i, %middle.block184
  %inc42.us.i = add nuw nsw i32 %y16.082.us.i, 1
  %add.ptr44.us.i = getelementptr i8, ptr %dst.addr.181.us.i, i64 %idx.ext43.i
  %exitcond93.not.i = icmp eq i32 %inc42.us.i, %i_height
  br i1 %exitcond93.not.i, label %cleanup, label %for.cond23.preheader.us.i

for.cond.preheader.i:                             ; preds = %if.then23
  br i1 %cmp29.i, label %for.cond2.preheader.lr.ph.i, label %cleanup

for.cond2.preheader.lr.ph.i:                      ; preds = %for.cond.preheader.i
  %cmp383.i = icmp sgt i32 %i_width, 0
  %i_scale.i = getelementptr inbounds i8, ptr %weight, i64 36
  %i_offset.i = getelementptr inbounds i8, ptr %weight, i64 40
  %idx.ext.i65 = sext i32 %78 to i64
  br i1 %cmp383.i, label %for.cond2.preheader.us.preheader.i, label %cleanup

for.cond2.preheader.us.preheader.i:               ; preds = %for.cond2.preheader.lr.ph.i
  %wide.trip.count97.i = zext nneg i32 %i_width to i64
  %138 = add nsw i32 %i_height, -1
  %139 = zext i32 %138 to i64
  %140 = mul nsw i64 %idx.ext.i65, %139
  %141 = getelementptr i8, ptr %dst, i64 %140
  %scevgep213 = getelementptr i8, ptr %141, i64 %wide.trip.count97.i
  %scevgep214 = getelementptr i8, ptr %weight, i64 44
  %min.iters.check221 = icmp ult i32 %i_width, 16
  %bound0215 = icmp ugt ptr %scevgep214, %dst
  %bound1216 = icmp ult ptr %i_denom.i, %scevgep213
  %found.conflict217 = and i1 %bound0215, %bound1216
  %stride.check218 = icmp slt i32 %78, 0
  %142 = or i1 %found.conflict217, %stride.check218
  %n.vec224 = and i64 %wide.trip.count97.i, 2147483632
  %cmp.n255 = icmp eq i64 %n.vec224, %wide.trip.count97.i
  br label %for.cond2.preheader.us.i

for.cond2.preheader.us.i:                         ; preds = %for.cond2.for.cond.cleanup4_crit_edge.us.i, %for.cond2.preheader.us.preheader.i
  %y.088.us.i = phi i32 [ %inc12.us.i, %for.cond2.for.cond.cleanup4_crit_edge.us.i ], [ 0, %for.cond2.preheader.us.preheader.i ]
  %dst.addr.087.us.i = phi ptr [ %add.ptr.us.i71, %for.cond2.for.cond.cleanup4_crit_edge.us.i ], [ %dst, %for.cond2.preheader.us.preheader.i ]
  %brmerge358 = select i1 %min.iters.check221, i1 true, i1 %142
  br i1 %brmerge358, label %for.body5.us.i.preheader, label %vector.ph222

vector.ph222:                                     ; preds = %for.cond2.preheader.us.i
  %143 = load i32, ptr %i_scale.i, align 4, !alias.scope !94
  %broadcast.splatinsert236 = insertelement <4 x i32> poison, i32 %143, i64 0
  %broadcast.splat237 = shufflevector <4 x i32> %broadcast.splatinsert236, <4 x i32> poison, <4 x i32> zeroinitializer
  %144 = load i32, ptr %i_denom.i, align 16, !alias.scope !94
  %broadcast.splatinsert244 = insertelement <4 x i32> poison, i32 %144, i64 0
  %broadcast.splat245 = shufflevector <4 x i32> %broadcast.splatinsert244, <4 x i32> poison, <4 x i32> zeroinitializer
  %145 = add nsw <4 x i32> %broadcast.splat245, <i32 -1, i32 -1, i32 -1, i32 -1>
  %146 = add nsw <4 x i32> %broadcast.splat245, <i32 -1, i32 -1, i32 -1, i32 -1>
  %147 = add nsw <4 x i32> %broadcast.splat245, <i32 -1, i32 -1, i32 -1, i32 -1>
  %148 = add nsw <4 x i32> %broadcast.splat245, <i32 -1, i32 -1, i32 -1, i32 -1>
  %149 = shl nuw <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %145
  %150 = shl nuw <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %146
  %151 = shl nuw <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %147
  %152 = shl nuw <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %148
  %153 = load i32, ptr %i_offset.i, align 8, !alias.scope !94
  %broadcast.splatinsert252 = insertelement <4 x i32> poison, i32 %153, i64 0
  %broadcast.splat253 = shufflevector <4 x i32> %broadcast.splatinsert252, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph222
  %index227 = phi i64 [ 0, %vector.ph222 ], [ %index.next254, %vector.body226 ]
  %154 = getelementptr inbounds i8, ptr %dst.addr.087.us.i, i64 %index227
  %155 = getelementptr inbounds i8, ptr %154, i64 4
  %156 = getelementptr inbounds i8, ptr %154, i64 8
  %157 = getelementptr inbounds i8, ptr %154, i64 12
  %wide.load228 = load <4 x i8>, ptr %154, align 1, !alias.scope !97, !noalias !94
  %wide.load229 = load <4 x i8>, ptr %155, align 1, !alias.scope !97, !noalias !94
  %wide.load230 = load <4 x i8>, ptr %156, align 1, !alias.scope !97, !noalias !94
  %wide.load231 = load <4 x i8>, ptr %157, align 1, !alias.scope !97, !noalias !94
  %158 = zext <4 x i8> %wide.load228 to <4 x i32>
  %159 = zext <4 x i8> %wide.load229 to <4 x i32>
  %160 = zext <4 x i8> %wide.load230 to <4 x i32>
  %161 = zext <4 x i8> %wide.load231 to <4 x i32>
  %162 = mul nsw <4 x i32> %broadcast.splat237, %158
  %163 = mul nsw <4 x i32> %broadcast.splat237, %159
  %164 = mul nsw <4 x i32> %broadcast.splat237, %160
  %165 = mul nsw <4 x i32> %broadcast.splat237, %161
  %166 = add nsw <4 x i32> %149, %162
  %167 = add nsw <4 x i32> %150, %163
  %168 = add nsw <4 x i32> %151, %164
  %169 = add nsw <4 x i32> %152, %165
  %170 = ashr <4 x i32> %166, %broadcast.splat245
  %171 = ashr <4 x i32> %167, %broadcast.splat245
  %172 = ashr <4 x i32> %168, %broadcast.splat245
  %173 = ashr <4 x i32> %169, %broadcast.splat245
  %174 = add nsw <4 x i32> %170, %broadcast.splat253
  %175 = add nsw <4 x i32> %171, %broadcast.splat253
  %176 = add nsw <4 x i32> %172, %broadcast.splat253
  %177 = add nsw <4 x i32> %173, %broadcast.splat253
  %178 = icmp ult <4 x i32> %174, <i32 256, i32 256, i32 256, i32 256>
  %179 = icmp ult <4 x i32> %175, <i32 256, i32 256, i32 256, i32 256>
  %180 = icmp ult <4 x i32> %176, <i32 256, i32 256, i32 256, i32 256>
  %181 = icmp ult <4 x i32> %177, <i32 256, i32 256, i32 256, i32 256>
  %182 = icmp sgt <4 x i32> %174, zeroinitializer
  %183 = icmp sgt <4 x i32> %175, zeroinitializer
  %184 = icmp sgt <4 x i32> %176, zeroinitializer
  %185 = icmp sgt <4 x i32> %177, zeroinitializer
  %186 = sext <4 x i1> %182 to <4 x i32>
  %187 = sext <4 x i1> %183 to <4 x i32>
  %188 = sext <4 x i1> %184 to <4 x i32>
  %189 = sext <4 x i1> %185 to <4 x i32>
  %190 = select <4 x i1> %178, <4 x i32> %174, <4 x i32> %186
  %191 = select <4 x i1> %179, <4 x i32> %175, <4 x i32> %187
  %192 = select <4 x i1> %180, <4 x i32> %176, <4 x i32> %188
  %193 = select <4 x i1> %181, <4 x i32> %177, <4 x i32> %189
  %194 = trunc <4 x i32> %190 to <4 x i8>
  %195 = trunc <4 x i32> %191 to <4 x i8>
  %196 = trunc <4 x i32> %192 to <4 x i8>
  %197 = trunc <4 x i32> %193 to <4 x i8>
  store <4 x i8> %194, ptr %154, align 1, !alias.scope !97, !noalias !94
  store <4 x i8> %195, ptr %155, align 1, !alias.scope !97, !noalias !94
  store <4 x i8> %196, ptr %156, align 1, !alias.scope !97, !noalias !94
  store <4 x i8> %197, ptr %157, align 1, !alias.scope !97, !noalias !94
  %index.next254 = add nuw i64 %index227, 16
  %198 = icmp eq i64 %index.next254, %n.vec224
  br i1 %198, label %middle.block219, label %vector.body226, !llvm.loop !99

middle.block219:                                  ; preds = %vector.body226
  br i1 %cmp.n255, label %for.cond2.for.cond.cleanup4_crit_edge.us.i, label %for.body5.us.i.preheader

for.body5.us.i.preheader:                         ; preds = %for.cond2.preheader.us.i, %middle.block219
  %indvars.iv94.i.ph = phi i64 [ 0, %for.cond2.preheader.us.i ], [ %n.vec224, %middle.block219 ]
  br label %for.body5.us.i

for.body5.us.i:                                   ; preds = %for.body5.us.i.preheader, %for.body5.us.i
  %indvars.iv94.i = phi i64 [ %indvars.iv.next95.i, %for.body5.us.i ], [ %indvars.iv94.i.ph, %for.body5.us.i.preheader ]
  %arrayidx.us.i66 = getelementptr inbounds i8, ptr %dst.addr.087.us.i, i64 %indvars.iv94.i
  %199 = load i8, ptr %arrayidx.us.i66, align 1
  %conv.us.i67 = zext i8 %199 to i32
  %200 = load i32, ptr %i_scale.i, align 4
  %mul.us.i = mul nsw i32 %200, %conv.us.i67
  %201 = load i32, ptr %i_denom.i, align 16
  %sub.us.i = add nsw i32 %201, -1
  %shl.us.i = shl nuw i32 1, %sub.us.i
  %add.us.i68 = add nsw i32 %shl.us.i, %mul.us.i
  %shr.us.i69 = ashr i32 %add.us.i68, %201
  %202 = load i32, ptr %i_offset.i, align 8
  %add8.us.i70 = add nsw i32 %shr.us.i69, %202
  %tobool.not.i.us.i = icmp ult i32 %add8.us.i70, 256
  %203 = icmp sgt i32 %add8.us.i70, 0
  %shr.i.us.i = sext i1 %203 to i32
  %cond.i.us.i = select i1 %tobool.not.i.us.i, i32 %add8.us.i70, i32 %shr.i.us.i
  %conv.i.us.i = trunc i32 %cond.i.us.i to i8
  store i8 %conv.i.us.i, ptr %arrayidx.us.i66, align 1
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1
  %exitcond98.not.i = icmp eq i64 %indvars.iv.next95.i, %wide.trip.count97.i
  br i1 %exitcond98.not.i, label %for.cond2.for.cond.cleanup4_crit_edge.us.i, label %for.body5.us.i, !llvm.loop !100

for.cond2.for.cond.cleanup4_crit_edge.us.i:       ; preds = %for.body5.us.i, %middle.block219
  %inc12.us.i = add nuw nsw i32 %y.088.us.i, 1
  %add.ptr.us.i71 = getelementptr i8, ptr %dst.addr.087.us.i, i64 %idx.ext.i65
  %exitcond99.not.i = icmp eq i32 %inc12.us.i, %i_height
  br i1 %exitcond99.not.i, label %cleanup, label %for.cond2.preheader.us.i

if.else:                                          ; preds = %entry
  %weightfn24 = getelementptr inbounds i8, ptr %weight, i64 48
  %204 = load ptr, ptr %weightfn24, align 16
  %tobool25.not = icmp eq ptr %204, null
  br i1 %tobool25.not, label %if.else27, label %if.then26

if.then26:                                        ; preds = %if.else
  %205 = load i32, ptr %i_dst_stride, align 4
  %i_denom.i72 = getelementptr inbounds i8, ptr %weight, i64 32
  %206 = load i32, ptr %i_denom.i72, align 16
  %cmp.i73 = icmp sgt i32 %206, 0
  %cmp185.i74 = icmp sgt i32 %i_height, 0
  br i1 %cmp.i73, label %for.cond.preheader.i106, label %for.cond17.preheader.i75

for.cond17.preheader.i75:                         ; preds = %if.then26
  br i1 %cmp185.i74, label %for.cond23.preheader.lr.ph.i76, label %cleanup

for.cond23.preheader.lr.ph.i76:                   ; preds = %for.cond17.preheader.i75
  %cmp2477.i77 = icmp sgt i32 %i_width, 0
  %i_scale31.i78 = getelementptr i8, ptr %weight, i64 36
  %i_offset33.i79 = getelementptr inbounds i8, ptr %weight, i64 40
  %idx.ext43.i80 = sext i32 %205 to i64
  %idx.ext45.i81 = sext i32 %i_src_stride to i64
  br i1 %cmp2477.i77, label %for.cond23.preheader.us.preheader.i82, label %cleanup

for.cond23.preheader.us.preheader.i82:            ; preds = %for.cond23.preheader.lr.ph.i76
  %wide.trip.count.i83 = zext nneg i32 %i_width to i64
  %207 = add nsw i32 %i_height, -1
  %208 = zext i32 %207 to i64
  %209 = mul nsw i64 %idx.ext43.i80, %208
  %210 = getelementptr i8, ptr %dst, i64 %209
  %scevgep257 = getelementptr i8, ptr %210, i64 %wide.trip.count.i83
  %211 = mul nsw i64 %idx.ext45.i81, %208
  %212 = getelementptr i8, ptr %1, i64 %211
  %213 = getelementptr i8, ptr %212, i64 %idx.ext8
  %214 = getelementptr i8, ptr %213, i64 %idx.ext
  %scevgep258 = getelementptr i8, ptr %214, i64 %wide.trip.count.i83
  %scevgep259 = getelementptr i8, ptr %weight, i64 44
  %min.iters.check272 = icmp ult i32 %i_width, 16
  %bound0260 = icmp ugt ptr %scevgep258, %dst
  %bound1261 = icmp ult ptr %add.ptr9, %scevgep257
  %found.conflict262 = and i1 %bound0260, %bound1261
  %215 = or i32 %205, %i_src_stride
  %216 = icmp slt i32 %215, 0
  %217 = or i1 %found.conflict262, %216
  %bound0265 = icmp ugt ptr %scevgep259, %dst
  %bound1266 = icmp ult ptr %i_scale31.i78, %scevgep257
  %found.conflict267 = and i1 %bound0265, %bound1266
  %stride.check268 = icmp slt i32 %205, 0
  %218 = or i1 %found.conflict267, %stride.check268
  %conflict.rdx269 = or i1 %217, %218
  %n.vec275 = and i64 %wide.trip.count.i83, 2147483632
  %cmp.n298 = icmp eq i64 %n.vec275, %wide.trip.count.i83
  %xtraiter355 = and i64 %wide.trip.count.i83, 1
  %lcmp.mod356.not = icmp eq i64 %xtraiter355, 0
  %219 = add nsw i64 %wide.trip.count.i83, -1
  br label %for.cond23.preheader.us.i84

for.cond23.preheader.us.i84:                      ; preds = %for.cond23.for.cond.cleanup26_crit_edge.us.i101, %for.cond23.preheader.us.preheader.i82
  %y16.082.us.i85 = phi i32 [ %inc42.us.i102, %for.cond23.for.cond.cleanup26_crit_edge.us.i101 ], [ 0, %for.cond23.preheader.us.preheader.i82 ]
  %dst.addr.181.us.i86 = phi ptr [ %add.ptr44.us.i103, %for.cond23.for.cond.cleanup26_crit_edge.us.i101 ], [ %dst, %for.cond23.preheader.us.preheader.i82 ]
  %src.addr.180.us.i87 = phi ptr [ %add.ptr46.us.i104, %for.cond23.for.cond.cleanup26_crit_edge.us.i101 ], [ %add.ptr9, %for.cond23.preheader.us.preheader.i82 ]
  %brmerge359 = select i1 %min.iters.check272, i1 true, i1 %conflict.rdx269
  br i1 %brmerge359, label %for.body27.us.i88.preheader, label %vector.ph273

vector.ph273:                                     ; preds = %for.cond23.preheader.us.i84
  %220 = load i32, ptr %i_scale31.i78, align 4, !alias.scope !101
  %broadcast.splatinsert287 = insertelement <4 x i32> poison, i32 %220, i64 0
  %broadcast.splat288 = shufflevector <4 x i32> %broadcast.splatinsert287, <4 x i32> poison, <4 x i32> zeroinitializer
  %221 = load i32, ptr %i_offset33.i79, align 8, !alias.scope !101
  %broadcast.splatinsert295 = insertelement <4 x i32> poison, i32 %221, i64 0
  %broadcast.splat296 = shufflevector <4 x i32> %broadcast.splatinsert295, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body277

vector.body277:                                   ; preds = %vector.body277, %vector.ph273
  %index278 = phi i64 [ 0, %vector.ph273 ], [ %index.next297, %vector.body277 ]
  %222 = getelementptr inbounds i8, ptr %src.addr.180.us.i87, i64 %index278
  %223 = getelementptr inbounds i8, ptr %222, i64 4
  %224 = getelementptr inbounds i8, ptr %222, i64 8
  %225 = getelementptr inbounds i8, ptr %222, i64 12
  %wide.load279 = load <4 x i8>, ptr %222, align 1, !alias.scope !104
  %wide.load280 = load <4 x i8>, ptr %223, align 1, !alias.scope !104
  %wide.load281 = load <4 x i8>, ptr %224, align 1, !alias.scope !104
  %wide.load282 = load <4 x i8>, ptr %225, align 1, !alias.scope !104
  %226 = zext <4 x i8> %wide.load279 to <4 x i32>
  %227 = zext <4 x i8> %wide.load280 to <4 x i32>
  %228 = zext <4 x i8> %wide.load281 to <4 x i32>
  %229 = zext <4 x i8> %wide.load282 to <4 x i32>
  %230 = mul nsw <4 x i32> %broadcast.splat288, %226
  %231 = mul nsw <4 x i32> %broadcast.splat288, %227
  %232 = mul nsw <4 x i32> %broadcast.splat288, %228
  %233 = mul nsw <4 x i32> %broadcast.splat288, %229
  %234 = add nsw <4 x i32> %230, %broadcast.splat296
  %235 = add nsw <4 x i32> %231, %broadcast.splat296
  %236 = add nsw <4 x i32> %232, %broadcast.splat296
  %237 = add nsw <4 x i32> %233, %broadcast.splat296
  %238 = icmp ult <4 x i32> %234, <i32 256, i32 256, i32 256, i32 256>
  %239 = icmp ult <4 x i32> %235, <i32 256, i32 256, i32 256, i32 256>
  %240 = icmp ult <4 x i32> %236, <i32 256, i32 256, i32 256, i32 256>
  %241 = icmp ult <4 x i32> %237, <i32 256, i32 256, i32 256, i32 256>
  %242 = icmp sgt <4 x i32> %234, zeroinitializer
  %243 = icmp sgt <4 x i32> %235, zeroinitializer
  %244 = icmp sgt <4 x i32> %236, zeroinitializer
  %245 = icmp sgt <4 x i32> %237, zeroinitializer
  %246 = sext <4 x i1> %242 to <4 x i32>
  %247 = sext <4 x i1> %243 to <4 x i32>
  %248 = sext <4 x i1> %244 to <4 x i32>
  %249 = sext <4 x i1> %245 to <4 x i32>
  %250 = select <4 x i1> %238, <4 x i32> %234, <4 x i32> %246
  %251 = select <4 x i1> %239, <4 x i32> %235, <4 x i32> %247
  %252 = select <4 x i1> %240, <4 x i32> %236, <4 x i32> %248
  %253 = select <4 x i1> %241, <4 x i32> %237, <4 x i32> %249
  %254 = trunc <4 x i32> %250 to <4 x i8>
  %255 = trunc <4 x i32> %251 to <4 x i8>
  %256 = trunc <4 x i32> %252 to <4 x i8>
  %257 = trunc <4 x i32> %253 to <4 x i8>
  %258 = getelementptr inbounds i8, ptr %dst.addr.181.us.i86, i64 %index278
  %259 = getelementptr inbounds i8, ptr %258, i64 4
  %260 = getelementptr inbounds i8, ptr %258, i64 8
  %261 = getelementptr inbounds i8, ptr %258, i64 12
  store <4 x i8> %254, ptr %258, align 1, !alias.scope !106, !noalias !108
  store <4 x i8> %255, ptr %259, align 1, !alias.scope !106, !noalias !108
  store <4 x i8> %256, ptr %260, align 1, !alias.scope !106, !noalias !108
  store <4 x i8> %257, ptr %261, align 1, !alias.scope !106, !noalias !108
  %index.next297 = add nuw i64 %index278, 16
  %262 = icmp eq i64 %index.next297, %n.vec275
  br i1 %262, label %middle.block270, label %vector.body277, !llvm.loop !109

middle.block270:                                  ; preds = %vector.body277
  br i1 %cmp.n298, label %for.cond23.for.cond.cleanup26_crit_edge.us.i101, label %for.body27.us.i88.preheader

for.body27.us.i88.preheader:                      ; preds = %for.cond23.preheader.us.i84, %middle.block270
  %indvars.iv.i89.ph = phi i64 [ 0, %for.cond23.preheader.us.i84 ], [ %n.vec275, %middle.block270 ]
  br i1 %lcmp.mod356.not, label %for.body27.us.i88.prol.loopexit, label %for.body27.us.i88.prol

for.body27.us.i88.prol:                           ; preds = %for.body27.us.i88.preheader
  %arrayidx29.us.i90.prol = getelementptr inbounds i8, ptr %src.addr.180.us.i87, i64 %indvars.iv.i89.ph
  %263 = load i8, ptr %arrayidx29.us.i90.prol, align 1
  %conv30.us.i91.prol = zext i8 %263 to i32
  %264 = load i32, ptr %i_scale31.i78, align 4
  %mul32.us.i92.prol = mul nsw i32 %264, %conv30.us.i91.prol
  %265 = load i32, ptr %i_offset33.i79, align 8
  %add34.us.i93.prol = add nsw i32 %mul32.us.i92.prol, %265
  %tobool.not.i72.us.i94.prol = icmp ult i32 %add34.us.i93.prol, 256
  %266 = icmp sgt i32 %add34.us.i93.prol, 0
  %shr.i73.us.i95.prol = sext i1 %266 to i32
  %cond.i74.us.i96.prol = select i1 %tobool.not.i72.us.i94.prol, i32 %add34.us.i93.prol, i32 %shr.i73.us.i95.prol
  %conv.i75.us.i97.prol = trunc i32 %cond.i74.us.i96.prol to i8
  %arrayidx37.us.i98.prol = getelementptr inbounds i8, ptr %dst.addr.181.us.i86, i64 %indvars.iv.i89.ph
  store i8 %conv.i75.us.i97.prol, ptr %arrayidx37.us.i98.prol, align 1
  %indvars.iv.next.i99.prol = or disjoint i64 %indvars.iv.i89.ph, 1
  br label %for.body27.us.i88.prol.loopexit

for.body27.us.i88.prol.loopexit:                  ; preds = %for.body27.us.i88.prol, %for.body27.us.i88.preheader
  %indvars.iv.i89.unr = phi i64 [ %indvars.iv.i89.ph, %for.body27.us.i88.preheader ], [ %indvars.iv.next.i99.prol, %for.body27.us.i88.prol ]
  %267 = icmp eq i64 %indvars.iv.i89.ph, %219
  br i1 %267, label %for.cond23.for.cond.cleanup26_crit_edge.us.i101, label %for.body27.us.i88

for.body27.us.i88:                                ; preds = %for.body27.us.i88.prol.loopexit, %for.body27.us.i88
  %indvars.iv.i89 = phi i64 [ %indvars.iv.next.i99.1, %for.body27.us.i88 ], [ %indvars.iv.i89.unr, %for.body27.us.i88.prol.loopexit ]
  %arrayidx29.us.i90 = getelementptr inbounds i8, ptr %src.addr.180.us.i87, i64 %indvars.iv.i89
  %268 = load i8, ptr %arrayidx29.us.i90, align 1
  %conv30.us.i91 = zext i8 %268 to i32
  %269 = load i32, ptr %i_scale31.i78, align 4
  %mul32.us.i92 = mul nsw i32 %269, %conv30.us.i91
  %270 = load i32, ptr %i_offset33.i79, align 8
  %add34.us.i93 = add nsw i32 %mul32.us.i92, %270
  %tobool.not.i72.us.i94 = icmp ult i32 %add34.us.i93, 256
  %271 = icmp sgt i32 %add34.us.i93, 0
  %shr.i73.us.i95 = sext i1 %271 to i32
  %cond.i74.us.i96 = select i1 %tobool.not.i72.us.i94, i32 %add34.us.i93, i32 %shr.i73.us.i95
  %conv.i75.us.i97 = trunc i32 %cond.i74.us.i96 to i8
  %arrayidx37.us.i98 = getelementptr inbounds i8, ptr %dst.addr.181.us.i86, i64 %indvars.iv.i89
  store i8 %conv.i75.us.i97, ptr %arrayidx37.us.i98, align 1
  %indvars.iv.next.i99 = add nuw nsw i64 %indvars.iv.i89, 1
  %arrayidx29.us.i90.1 = getelementptr inbounds i8, ptr %src.addr.180.us.i87, i64 %indvars.iv.next.i99
  %272 = load i8, ptr %arrayidx29.us.i90.1, align 1
  %conv30.us.i91.1 = zext i8 %272 to i32
  %273 = load i32, ptr %i_scale31.i78, align 4
  %mul32.us.i92.1 = mul nsw i32 %273, %conv30.us.i91.1
  %274 = load i32, ptr %i_offset33.i79, align 8
  %add34.us.i93.1 = add nsw i32 %mul32.us.i92.1, %274
  %tobool.not.i72.us.i94.1 = icmp ult i32 %add34.us.i93.1, 256
  %275 = icmp sgt i32 %add34.us.i93.1, 0
  %shr.i73.us.i95.1 = sext i1 %275 to i32
  %cond.i74.us.i96.1 = select i1 %tobool.not.i72.us.i94.1, i32 %add34.us.i93.1, i32 %shr.i73.us.i95.1
  %conv.i75.us.i97.1 = trunc i32 %cond.i74.us.i96.1 to i8
  %arrayidx37.us.i98.1 = getelementptr inbounds i8, ptr %dst.addr.181.us.i86, i64 %indvars.iv.next.i99
  store i8 %conv.i75.us.i97.1, ptr %arrayidx37.us.i98.1, align 1
  %indvars.iv.next.i99.1 = add nuw nsw i64 %indvars.iv.i89, 2
  %exitcond.not.i100.1 = icmp eq i64 %indvars.iv.next.i99.1, %wide.trip.count.i83
  br i1 %exitcond.not.i100.1, label %for.cond23.for.cond.cleanup26_crit_edge.us.i101, label %for.body27.us.i88, !llvm.loop !110

for.cond23.for.cond.cleanup26_crit_edge.us.i101:  ; preds = %for.body27.us.i88.prol.loopexit, %for.body27.us.i88, %middle.block270
  %inc42.us.i102 = add nuw nsw i32 %y16.082.us.i85, 1
  %add.ptr44.us.i103 = getelementptr inbounds i8, ptr %dst.addr.181.us.i86, i64 %idx.ext43.i80
  %add.ptr46.us.i104 = getelementptr inbounds i8, ptr %src.addr.180.us.i87, i64 %idx.ext45.i81
  %exitcond93.not.i105 = icmp eq i32 %inc42.us.i102, %i_height
  br i1 %exitcond93.not.i105, label %cleanup, label %for.cond23.preheader.us.i84

for.cond.preheader.i106:                          ; preds = %if.then26
  br i1 %cmp185.i74, label %for.cond2.preheader.lr.ph.i107, label %cleanup

for.cond2.preheader.lr.ph.i107:                   ; preds = %for.cond.preheader.i106
  %cmp383.i108 = icmp sgt i32 %i_width, 0
  %i_scale.i109 = getelementptr inbounds i8, ptr %weight, i64 36
  %i_offset.i110 = getelementptr inbounds i8, ptr %weight, i64 40
  %idx.ext.i111 = sext i32 %205 to i64
  %idx.ext13.i112 = sext i32 %i_src_stride to i64
  br i1 %cmp383.i108, label %for.cond2.preheader.us.preheader.i113, label %cleanup

for.cond2.preheader.us.preheader.i113:            ; preds = %for.cond2.preheader.lr.ph.i107
  %wide.trip.count97.i114 = zext nneg i32 %i_width to i64
  %276 = add nsw i32 %i_height, -1
  %277 = zext i32 %276 to i64
  %278 = mul nsw i64 %idx.ext.i111, %277
  %279 = getelementptr i8, ptr %dst, i64 %278
  %scevgep300 = getelementptr i8, ptr %279, i64 %wide.trip.count97.i114
  %280 = mul nsw i64 %idx.ext13.i112, %277
  %281 = getelementptr i8, ptr %1, i64 %280
  %282 = getelementptr i8, ptr %281, i64 %idx.ext8
  %283 = getelementptr i8, ptr %282, i64 %idx.ext
  %scevgep301 = getelementptr i8, ptr %283, i64 %wide.trip.count97.i114
  %scevgep302 = getelementptr i8, ptr %weight, i64 44
  %min.iters.check315 = icmp ult i32 %i_width, 16
  %bound0303 = icmp ugt ptr %scevgep301, %dst
  %bound1304 = icmp ult ptr %add.ptr9, %scevgep300
  %found.conflict305 = and i1 %bound0303, %bound1304
  %284 = or i32 %205, %i_src_stride
  %285 = icmp slt i32 %284, 0
  %286 = or i1 %found.conflict305, %285
  %bound0308 = icmp ugt ptr %scevgep302, %dst
  %bound1309 = icmp ult ptr %i_denom.i72, %scevgep300
  %found.conflict310 = and i1 %bound0308, %bound1309
  %stride.check311 = icmp slt i32 %205, 0
  %287 = or i1 %found.conflict310, %stride.check311
  %conflict.rdx312 = or i1 %286, %287
  %n.vec318 = and i64 %wide.trip.count97.i114, 2147483632
  %cmp.n349 = icmp eq i64 %n.vec318, %wide.trip.count97.i114
  br label %for.cond2.preheader.us.i115

for.cond2.preheader.us.i115:                      ; preds = %for.cond2.for.cond.cleanup4_crit_edge.us.i136, %for.cond2.preheader.us.preheader.i113
  %y.088.us.i116 = phi i32 [ %inc12.us.i137, %for.cond2.for.cond.cleanup4_crit_edge.us.i136 ], [ 0, %for.cond2.preheader.us.preheader.i113 ]
  %dst.addr.087.us.i117 = phi ptr [ %add.ptr.us.i138, %for.cond2.for.cond.cleanup4_crit_edge.us.i136 ], [ %dst, %for.cond2.preheader.us.preheader.i113 ]
  %src.addr.086.us.i118 = phi ptr [ %add.ptr14.us.i139, %for.cond2.for.cond.cleanup4_crit_edge.us.i136 ], [ %add.ptr9, %for.cond2.preheader.us.preheader.i113 ]
  %brmerge360 = select i1 %min.iters.check315, i1 true, i1 %conflict.rdx312
  br i1 %brmerge360, label %for.body5.us.i119.preheader, label %vector.ph316

vector.ph316:                                     ; preds = %for.cond2.preheader.us.i115
  %288 = load i32, ptr %i_scale.i109, align 4, !alias.scope !111
  %broadcast.splatinsert330 = insertelement <4 x i32> poison, i32 %288, i64 0
  %broadcast.splat331 = shufflevector <4 x i32> %broadcast.splatinsert330, <4 x i32> poison, <4 x i32> zeroinitializer
  %289 = load i32, ptr %i_denom.i72, align 16, !alias.scope !111
  %broadcast.splatinsert338 = insertelement <4 x i32> poison, i32 %289, i64 0
  %broadcast.splat339 = shufflevector <4 x i32> %broadcast.splatinsert338, <4 x i32> poison, <4 x i32> zeroinitializer
  %290 = add nsw <4 x i32> %broadcast.splat339, <i32 -1, i32 -1, i32 -1, i32 -1>
  %291 = add nsw <4 x i32> %broadcast.splat339, <i32 -1, i32 -1, i32 -1, i32 -1>
  %292 = add nsw <4 x i32> %broadcast.splat339, <i32 -1, i32 -1, i32 -1, i32 -1>
  %293 = add nsw <4 x i32> %broadcast.splat339, <i32 -1, i32 -1, i32 -1, i32 -1>
  %294 = shl nuw <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %290
  %295 = shl nuw <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %291
  %296 = shl nuw <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %292
  %297 = shl nuw <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %293
  %298 = load i32, ptr %i_offset.i110, align 8, !alias.scope !111
  %broadcast.splatinsert346 = insertelement <4 x i32> poison, i32 %298, i64 0
  %broadcast.splat347 = shufflevector <4 x i32> %broadcast.splatinsert346, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph316
  %index321 = phi i64 [ 0, %vector.ph316 ], [ %index.next348, %vector.body320 ]
  %299 = getelementptr inbounds i8, ptr %src.addr.086.us.i118, i64 %index321
  %300 = getelementptr inbounds i8, ptr %299, i64 4
  %301 = getelementptr inbounds i8, ptr %299, i64 8
  %302 = getelementptr inbounds i8, ptr %299, i64 12
  %wide.load322 = load <4 x i8>, ptr %299, align 1, !alias.scope !114
  %wide.load323 = load <4 x i8>, ptr %300, align 1, !alias.scope !114
  %wide.load324 = load <4 x i8>, ptr %301, align 1, !alias.scope !114
  %wide.load325 = load <4 x i8>, ptr %302, align 1, !alias.scope !114
  %303 = zext <4 x i8> %wide.load322 to <4 x i32>
  %304 = zext <4 x i8> %wide.load323 to <4 x i32>
  %305 = zext <4 x i8> %wide.load324 to <4 x i32>
  %306 = zext <4 x i8> %wide.load325 to <4 x i32>
  %307 = mul nsw <4 x i32> %broadcast.splat331, %303
  %308 = mul nsw <4 x i32> %broadcast.splat331, %304
  %309 = mul nsw <4 x i32> %broadcast.splat331, %305
  %310 = mul nsw <4 x i32> %broadcast.splat331, %306
  %311 = add nsw <4 x i32> %294, %307
  %312 = add nsw <4 x i32> %295, %308
  %313 = add nsw <4 x i32> %296, %309
  %314 = add nsw <4 x i32> %297, %310
  %315 = ashr <4 x i32> %311, %broadcast.splat339
  %316 = ashr <4 x i32> %312, %broadcast.splat339
  %317 = ashr <4 x i32> %313, %broadcast.splat339
  %318 = ashr <4 x i32> %314, %broadcast.splat339
  %319 = add nsw <4 x i32> %315, %broadcast.splat347
  %320 = add nsw <4 x i32> %316, %broadcast.splat347
  %321 = add nsw <4 x i32> %317, %broadcast.splat347
  %322 = add nsw <4 x i32> %318, %broadcast.splat347
  %323 = icmp ult <4 x i32> %319, <i32 256, i32 256, i32 256, i32 256>
  %324 = icmp ult <4 x i32> %320, <i32 256, i32 256, i32 256, i32 256>
  %325 = icmp ult <4 x i32> %321, <i32 256, i32 256, i32 256, i32 256>
  %326 = icmp ult <4 x i32> %322, <i32 256, i32 256, i32 256, i32 256>
  %327 = icmp sgt <4 x i32> %319, zeroinitializer
  %328 = icmp sgt <4 x i32> %320, zeroinitializer
  %329 = icmp sgt <4 x i32> %321, zeroinitializer
  %330 = icmp sgt <4 x i32> %322, zeroinitializer
  %331 = sext <4 x i1> %327 to <4 x i32>
  %332 = sext <4 x i1> %328 to <4 x i32>
  %333 = sext <4 x i1> %329 to <4 x i32>
  %334 = sext <4 x i1> %330 to <4 x i32>
  %335 = select <4 x i1> %323, <4 x i32> %319, <4 x i32> %331
  %336 = select <4 x i1> %324, <4 x i32> %320, <4 x i32> %332
  %337 = select <4 x i1> %325, <4 x i32> %321, <4 x i32> %333
  %338 = select <4 x i1> %326, <4 x i32> %322, <4 x i32> %334
  %339 = trunc <4 x i32> %335 to <4 x i8>
  %340 = trunc <4 x i32> %336 to <4 x i8>
  %341 = trunc <4 x i32> %337 to <4 x i8>
  %342 = trunc <4 x i32> %338 to <4 x i8>
  %343 = getelementptr inbounds i8, ptr %dst.addr.087.us.i117, i64 %index321
  %344 = getelementptr inbounds i8, ptr %343, i64 4
  %345 = getelementptr inbounds i8, ptr %343, i64 8
  %346 = getelementptr inbounds i8, ptr %343, i64 12
  store <4 x i8> %339, ptr %343, align 1, !alias.scope !116, !noalias !118
  store <4 x i8> %340, ptr %344, align 1, !alias.scope !116, !noalias !118
  store <4 x i8> %341, ptr %345, align 1, !alias.scope !116, !noalias !118
  store <4 x i8> %342, ptr %346, align 1, !alias.scope !116, !noalias !118
  %index.next348 = add nuw i64 %index321, 16
  %347 = icmp eq i64 %index.next348, %n.vec318
  br i1 %347, label %middle.block313, label %vector.body320, !llvm.loop !119

middle.block313:                                  ; preds = %vector.body320
  br i1 %cmp.n349, label %for.cond2.for.cond.cleanup4_crit_edge.us.i136, label %for.body5.us.i119.preheader

for.body5.us.i119.preheader:                      ; preds = %for.cond2.preheader.us.i115, %middle.block313
  %indvars.iv94.i120.ph = phi i64 [ 0, %for.cond2.preheader.us.i115 ], [ %n.vec318, %middle.block313 ]
  br label %for.body5.us.i119

for.body5.us.i119:                                ; preds = %for.body5.us.i119.preheader, %for.body5.us.i119
  %indvars.iv94.i120 = phi i64 [ %indvars.iv.next95.i134, %for.body5.us.i119 ], [ %indvars.iv94.i120.ph, %for.body5.us.i119.preheader ]
  %arrayidx.us.i121 = getelementptr inbounds i8, ptr %src.addr.086.us.i118, i64 %indvars.iv94.i120
  %348 = load i8, ptr %arrayidx.us.i121, align 1
  %conv.us.i122 = zext i8 %348 to i32
  %349 = load i32, ptr %i_scale.i109, align 4
  %mul.us.i123 = mul nsw i32 %349, %conv.us.i122
  %350 = load i32, ptr %i_denom.i72, align 16
  %sub.us.i124 = add nsw i32 %350, -1
  %shl.us.i125 = shl nuw i32 1, %sub.us.i124
  %add.us.i126 = add nsw i32 %shl.us.i125, %mul.us.i123
  %shr.us.i127 = ashr i32 %add.us.i126, %350
  %351 = load i32, ptr %i_offset.i110, align 8
  %add8.us.i128 = add nsw i32 %shr.us.i127, %351
  %tobool.not.i.us.i129 = icmp ult i32 %add8.us.i128, 256
  %352 = icmp sgt i32 %add8.us.i128, 0
  %shr.i.us.i130 = sext i1 %352 to i32
  %cond.i.us.i131 = select i1 %tobool.not.i.us.i129, i32 %add8.us.i128, i32 %shr.i.us.i130
  %conv.i.us.i132 = trunc i32 %cond.i.us.i131 to i8
  %arrayidx10.us.i133 = getelementptr inbounds i8, ptr %dst.addr.087.us.i117, i64 %indvars.iv94.i120
  store i8 %conv.i.us.i132, ptr %arrayidx10.us.i133, align 1
  %indvars.iv.next95.i134 = add nuw nsw i64 %indvars.iv94.i120, 1
  %exitcond98.not.i135 = icmp eq i64 %indvars.iv.next95.i134, %wide.trip.count97.i114
  br i1 %exitcond98.not.i135, label %for.cond2.for.cond.cleanup4_crit_edge.us.i136, label %for.body5.us.i119, !llvm.loop !120

for.cond2.for.cond.cleanup4_crit_edge.us.i136:    ; preds = %for.body5.us.i119, %middle.block313
  %inc12.us.i137 = add nuw nsw i32 %y.088.us.i116, 1
  %add.ptr.us.i138 = getelementptr inbounds i8, ptr %dst.addr.087.us.i117, i64 %idx.ext.i111
  %add.ptr14.us.i139 = getelementptr inbounds i8, ptr %src.addr.086.us.i118, i64 %idx.ext13.i112
  %exitcond99.not.i140 = icmp eq i32 %inc12.us.i137, %i_height
  br i1 %exitcond99.not.i140, label %cleanup, label %for.cond2.preheader.us.i115

if.else27:                                        ; preds = %if.else
  store i32 %i_src_stride, ptr %i_dst_stride, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.cond23.for.cond.cleanup26_crit_edge.us.i, %for.cond2.for.cond.cleanup4_crit_edge.us.i, %for.cond23.for.cond.cleanup26_crit_edge.us.i101, %for.cond2.for.cond.cleanup4_crit_edge.us.i136, %for.cond2.preheader.lr.ph.i107, %for.cond.preheader.i106, %for.cond23.preheader.lr.ph.i76, %for.cond17.preheader.i75, %for.cond2.preheader.lr.ph.i, %for.cond.preheader.i, %for.cond23.preheader.lr.ph.i, %for.cond17.preheader.i, %pixel_avg.exit, %if.else27
  %retval.0 = phi ptr [ %add.ptr9, %if.else27 ], [ %dst, %pixel_avg.exit ], [ %dst, %for.cond17.preheader.i ], [ %dst, %for.cond23.preheader.lr.ph.i ], [ %dst, %for.cond.preheader.i ], [ %dst, %for.cond2.preheader.lr.ph.i ], [ %dst, %for.cond17.preheader.i75 ], [ %dst, %for.cond23.preheader.lr.ph.i76 ], [ %dst, %for.cond.preheader.i106 ], [ %dst, %for.cond2.preheader.lr.ph.i107 ], [ %dst, %for.cond2.for.cond.cleanup4_crit_edge.us.i136 ], [ %dst, %for.cond23.for.cond.cleanup26_crit_edge.us.i101 ], [ %dst, %for.cond2.for.cond.cleanup4_crit_edge.us.i ], [ %dst, %for.cond23.for.cond.cleanup26_crit_edge.us.i ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_chroma(ptr nocapture noundef writeonly %dst, i32 noundef %i_dst_stride, ptr nocapture noundef readonly %src, i32 noundef %i_src_stride, i32 noundef %mvx, i32 noundef %mvy, i32 noundef %i_width, i32 noundef %i_height) #0 {
entry:
  %idxprom = sext i32 %i_src_stride to i64
  %cmp78 = icmp sgt i32 %i_height, 0
  br i1 %cmp78, label %for.cond10.preheader.lr.ph, label %for.cond.cleanup

for.cond10.preheader.lr.ph:                       ; preds = %entry
  %and1 = and i32 %mvy, 7
  %sub2 = sub nuw nsw i32 8, %and1
  %and = and i32 %mvx, 7
  %sub = sub nuw nsw i32 8, %and
  %0 = insertelement <4 x i32> poison, i32 %and, i64 0
  %1 = insertelement <4 x i32> %0, i32 %sub, i64 1
  %2 = shufflevector <4 x i32> %1, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %3 = insertelement <4 x i32> poison, i32 %sub2, i64 0
  %4 = insertelement <4 x i32> %3, i32 %and1, i64 1
  %5 = shufflevector <4 x i32> %4, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %6 = mul nuw nsw <4 x i32> %2, %5
  %cmp1175 = icmp sgt i32 %i_width, 0
  %idx.ext39 = sext i32 %i_dst_stride to i64
  br i1 %cmp1175, label %for.cond10.preheader.us.preheader, label %for.cond.cleanup

for.cond10.preheader.us.preheader:                ; preds = %for.cond10.preheader.lr.ph
  %shr = ashr i32 %mvy, 3
  %mul8 = mul i32 %shr, %i_src_stride
  %shr9 = ashr i32 %mvx, 3
  %add = add i32 %mul8, %shr9
  %idx.ext = sext i32 %add to i64
  %add.ptr = getelementptr i8, ptr %src, i64 %idx.ext
  %wide.trip.count = zext nneg i32 %i_width to i64
  %7 = add nsw i32 %i_height, -1
  %8 = zext i32 %7 to i64
  %9 = mul nsw i64 %idx.ext39, %8
  %10 = getelementptr i8, ptr %dst, i64 %9
  %scevgep = getelementptr i8, ptr %10, i64 %wide.trip.count
  %11 = getelementptr i8, ptr %src, i64 %idxprom
  %scevgep86 = getelementptr i8, ptr %11, i64 %idx.ext
  %12 = zext nneg i32 %i_height to i64
  %13 = mul nsw i64 %12, %idxprom
  %14 = getelementptr i8, ptr %src, i64 %13
  %15 = getelementptr i8, ptr %14, i64 %idx.ext
  %16 = getelementptr i8, ptr %15, i64 %wide.trip.count
  %scevgep87 = getelementptr i8, ptr %16, i64 1
  %17 = mul nsw i64 %idxprom, %8
  %18 = getelementptr i8, ptr %src, i64 %17
  %19 = getelementptr i8, ptr %18, i64 %idx.ext
  %20 = getelementptr i8, ptr %19, i64 %wide.trip.count
  %scevgep88 = getelementptr i8, ptr %20, i64 1
  %min.iters.check = icmp ult i32 %i_width, 8
  %bound0 = icmp ugt ptr %scevgep87, %dst
  %bound1 = icmp ult ptr %scevgep86, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %21 = or i32 %i_dst_stride, %i_src_stride
  %22 = icmp slt i32 %21, 0
  %23 = or i1 %found.conflict, %22
  %bound090 = icmp ugt ptr %scevgep88, %dst
  %bound191 = icmp ult ptr %add.ptr, %scevgep
  %found.conflict92 = and i1 %bound090, %bound191
  %24 = or i32 %i_dst_stride, %i_src_stride
  %25 = icmp slt i32 %24, 0
  %26 = or i1 %found.conflict92, %25
  %conflict.rdx = or i1 %23, %26
  %min.iters.check95 = icmp ult i32 %i_width, 64
  %n.vec = and i64 %wide.trip.count, 2147483584
  %broadcast.splat = shufflevector <4 x i32> %6, <4 x i32> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat104 = shufflevector <4 x i32> %6, <4 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splat110 = shufflevector <4 x i32> %6, <4 x i32> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat116 = shufflevector <4 x i32> %6, <4 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %n.vec.remaining = and i64 %wide.trip.count, 56
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  %n.vec118 = and i64 %wide.trip.count, 2147483640
  %broadcast.splat122 = shufflevector <4 x i32> %6, <4 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat125 = shufflevector <4 x i32> %6, <4 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat128 = shufflevector <4 x i32> %6, <4 x i32> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat131 = shufflevector <4 x i32> %6, <4 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %cmp.n133 = icmp eq i64 %n.vec118, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %for.cond10.preheader.us.preheader, %for.cond10.for.cond.cleanup12_crit_edge.us
  %y.081.us = phi i32 [ %inc44.us, %for.cond10.for.cond.cleanup12_crit_edge.us ], [ 0, %for.cond10.preheader.us.preheader ]
  %dst.addr.080.us = phi ptr [ %add.ptr40.us, %for.cond10.for.cond.cleanup12_crit_edge.us ], [ %dst, %for.cond10.preheader.us.preheader ]
  %src.addr.079.us = phi ptr [ %srcp.082.us, %for.cond10.for.cond.cleanup12_crit_edge.us ], [ %add.ptr, %for.cond10.preheader.us.preheader ]
  %srcp.082.us = getelementptr inbounds i8, ptr %src.addr.079.us, i64 %idxprom
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %for.body13.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check95, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ]
  %27 = getelementptr inbounds i8, ptr %src.addr.079.us, i64 %index
  %28 = getelementptr inbounds i8, ptr %27, i64 16
  %29 = getelementptr inbounds i8, ptr %27, i64 32
  %30 = getelementptr inbounds i8, ptr %27, i64 48
  %wide.load = load <16 x i8>, ptr %27, align 1, !alias.scope !121
  %wide.load96 = load <16 x i8>, ptr %28, align 1, !alias.scope !121
  %wide.load97 = load <16 x i8>, ptr %29, align 1, !alias.scope !121
  %wide.load98 = load <16 x i8>, ptr %30, align 1, !alias.scope !121
  %31 = zext <16 x i8> %wide.load to <16 x i32>
  %32 = zext <16 x i8> %wide.load96 to <16 x i32>
  %33 = zext <16 x i8> %wide.load97 to <16 x i32>
  %34 = zext <16 x i8> %wide.load98 to <16 x i32>
  %35 = mul nuw nsw <16 x i32> %broadcast.splat, %31
  %36 = mul nuw nsw <16 x i32> %broadcast.splat, %32
  %37 = mul nuw nsw <16 x i32> %broadcast.splat, %33
  %38 = mul nuw nsw <16 x i32> %broadcast.splat, %34
  %39 = or disjoint i64 %index, 1
  %40 = getelementptr inbounds i8, ptr %src.addr.079.us, i64 %39
  %41 = getelementptr inbounds i8, ptr %40, i64 16
  %42 = getelementptr inbounds i8, ptr %40, i64 32
  %43 = getelementptr inbounds i8, ptr %40, i64 48
  %wide.load99 = load <16 x i8>, ptr %40, align 1, !alias.scope !121
  %wide.load100 = load <16 x i8>, ptr %41, align 1, !alias.scope !121
  %wide.load101 = load <16 x i8>, ptr %42, align 1, !alias.scope !121
  %wide.load102 = load <16 x i8>, ptr %43, align 1, !alias.scope !121
  %44 = zext <16 x i8> %wide.load99 to <16 x i32>
  %45 = zext <16 x i8> %wide.load100 to <16 x i32>
  %46 = zext <16 x i8> %wide.load101 to <16 x i32>
  %47 = zext <16 x i8> %wide.load102 to <16 x i32>
  %48 = mul nuw nsw <16 x i32> %broadcast.splat104, %44
  %49 = mul nuw nsw <16 x i32> %broadcast.splat104, %45
  %50 = mul nuw nsw <16 x i32> %broadcast.splat104, %46
  %51 = mul nuw nsw <16 x i32> %broadcast.splat104, %47
  %52 = getelementptr inbounds i8, ptr %srcp.082.us, i64 %index
  %53 = getelementptr inbounds i8, ptr %52, i64 16
  %54 = getelementptr inbounds i8, ptr %52, i64 32
  %55 = getelementptr inbounds i8, ptr %52, i64 48
  %wide.load105 = load <16 x i8>, ptr %52, align 1, !alias.scope !124
  %wide.load106 = load <16 x i8>, ptr %53, align 1, !alias.scope !124
  %wide.load107 = load <16 x i8>, ptr %54, align 1, !alias.scope !124
  %wide.load108 = load <16 x i8>, ptr %55, align 1, !alias.scope !124
  %56 = zext <16 x i8> %wide.load105 to <16 x i32>
  %57 = zext <16 x i8> %wide.load106 to <16 x i32>
  %58 = zext <16 x i8> %wide.load107 to <16 x i32>
  %59 = zext <16 x i8> %wide.load108 to <16 x i32>
  %60 = mul nuw nsw <16 x i32> %broadcast.splat110, %56
  %61 = mul nuw nsw <16 x i32> %broadcast.splat110, %57
  %62 = mul nuw nsw <16 x i32> %broadcast.splat110, %58
  %63 = mul nuw nsw <16 x i32> %broadcast.splat110, %59
  %64 = getelementptr inbounds i8, ptr %srcp.082.us, i64 %39
  %65 = getelementptr inbounds i8, ptr %64, i64 16
  %66 = getelementptr inbounds i8, ptr %64, i64 32
  %67 = getelementptr inbounds i8, ptr %64, i64 48
  %wide.load111 = load <16 x i8>, ptr %64, align 1, !alias.scope !124
  %wide.load112 = load <16 x i8>, ptr %65, align 1, !alias.scope !124
  %wide.load113 = load <16 x i8>, ptr %66, align 1, !alias.scope !124
  %wide.load114 = load <16 x i8>, ptr %67, align 1, !alias.scope !124
  %68 = zext <16 x i8> %wide.load111 to <16 x i32>
  %69 = zext <16 x i8> %wide.load112 to <16 x i32>
  %70 = zext <16 x i8> %wide.load113 to <16 x i32>
  %71 = zext <16 x i8> %wide.load114 to <16 x i32>
  %72 = mul nuw nsw <16 x i32> %broadcast.splat116, %68
  %73 = mul nuw nsw <16 x i32> %broadcast.splat116, %69
  %74 = mul nuw nsw <16 x i32> %broadcast.splat116, %70
  %75 = mul nuw nsw <16 x i32> %broadcast.splat116, %71
  %76 = add nuw nsw <16 x i32> %72, %60
  %77 = add nuw nsw <16 x i32> %73, %61
  %78 = add nuw nsw <16 x i32> %74, %62
  %79 = add nuw nsw <16 x i32> %75, %63
  %80 = add nuw nsw <16 x i32> %48, %35
  %81 = add nuw nsw <16 x i32> %49, %36
  %82 = add nuw nsw <16 x i32> %50, %37
  %83 = add nuw nsw <16 x i32> %51, %38
  %84 = add nuw nsw <16 x i32> %80, <i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32>
  %85 = add nuw nsw <16 x i32> %81, <i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32>
  %86 = add nuw nsw <16 x i32> %82, <i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32>
  %87 = add nuw nsw <16 x i32> %83, <i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32>
  %88 = add nuw nsw <16 x i32> %84, %76
  %89 = add nuw nsw <16 x i32> %85, %77
  %90 = add nuw nsw <16 x i32> %86, %78
  %91 = add nuw nsw <16 x i32> %87, %79
  %92 = lshr <16 x i32> %88, <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %93 = lshr <16 x i32> %89, <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %94 = lshr <16 x i32> %90, <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %95 = lshr <16 x i32> %91, <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %96 = trunc <16 x i32> %92 to <16 x i8>
  %97 = trunc <16 x i32> %93 to <16 x i8>
  %98 = trunc <16 x i32> %94 to <16 x i8>
  %99 = trunc <16 x i32> %95 to <16 x i8>
  %100 = getelementptr inbounds i8, ptr %dst.addr.080.us, i64 %index
  %101 = getelementptr inbounds i8, ptr %100, i64 16
  %102 = getelementptr inbounds i8, ptr %100, i64 32
  %103 = getelementptr inbounds i8, ptr %100, i64 48
  store <16 x i8> %96, ptr %100, align 1, !alias.scope !126, !noalias !128
  store <16 x i8> %97, ptr %101, align 1, !alias.scope !126, !noalias !128
  store <16 x i8> %98, ptr %102, align 1, !alias.scope !126, !noalias !128
  store <16 x i8> %99, ptr %103, align 1, !alias.scope !126, !noalias !128
  %index.next = add nuw i64 %index, 64
  %104 = icmp eq i64 %index.next, %n.vec
  br i1 %104, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond10.for.cond.cleanup12_crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %for.body13.us.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index119 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next132, %vec.epilog.vector.body ]
  %105 = getelementptr inbounds i8, ptr %src.addr.079.us, i64 %index119
  %wide.load120 = load <8 x i8>, ptr %105, align 1, !alias.scope !130
  %106 = zext <8 x i8> %wide.load120 to <8 x i32>
  %107 = mul nuw nsw <8 x i32> %broadcast.splat122, %106
  %108 = or disjoint i64 %index119, 1
  %109 = getelementptr inbounds i8, ptr %src.addr.079.us, i64 %108
  %wide.load123 = load <8 x i8>, ptr %109, align 1, !alias.scope !130
  %110 = zext <8 x i8> %wide.load123 to <8 x i32>
  %111 = mul nuw nsw <8 x i32> %broadcast.splat125, %110
  %112 = getelementptr inbounds i8, ptr %srcp.082.us, i64 %index119
  %wide.load126 = load <8 x i8>, ptr %112, align 1, !alias.scope !133
  %113 = zext <8 x i8> %wide.load126 to <8 x i32>
  %114 = mul nuw nsw <8 x i32> %broadcast.splat128, %113
  %115 = getelementptr inbounds i8, ptr %srcp.082.us, i64 %108
  %wide.load129 = load <8 x i8>, ptr %115, align 1, !alias.scope !133
  %116 = zext <8 x i8> %wide.load129 to <8 x i32>
  %117 = mul nuw nsw <8 x i32> %broadcast.splat131, %116
  %118 = add nuw nsw <8 x i32> %117, %114
  %119 = add nuw nsw <8 x i32> %111, %107
  %120 = add nuw nsw <8 x i32> %119, <i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32>
  %121 = add nuw nsw <8 x i32> %120, %118
  %122 = lshr <8 x i32> %121, <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %123 = trunc <8 x i32> %122 to <8 x i8>
  %124 = getelementptr inbounds i8, ptr %dst.addr.080.us, i64 %index119
  store <8 x i8> %123, ptr %124, align 1, !alias.scope !135, !noalias !137
  %index.next132 = add nuw i64 %index119, 8
  %125 = icmp eq i64 %index.next132, %n.vec118
  br i1 %125, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !138

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n133, label %for.cond10.for.cond.cleanup12_crit_edge.us, label %for.body13.us.preheader

for.body13.us.preheader:                          ; preds = %iter.check, %vec.epilog.middle.block, %vec.epilog.iter.check
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec118, %vec.epilog.middle.block ]
  br label %for.body13.us

for.body13.us:                                    ; preds = %for.body13.us.preheader, %for.body13.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body13.us ], [ %indvars.iv.ph, %for.body13.us.preheader ]
  %arrayidx15.us = getelementptr inbounds i8, ptr %src.addr.079.us, i64 %indvars.iv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %126 = load <2 x i8>, ptr %arrayidx15.us, align 1
  %arrayidx24.us = getelementptr inbounds i8, ptr %srcp.082.us, i64 %indvars.iv
  %127 = load <2 x i8>, ptr %arrayidx24.us, align 1
  %128 = shufflevector <2 x i8> %126, <2 x i8> %127, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %129 = zext <4 x i8> %128 to <4 x i32>
  %130 = shufflevector <4 x i32> %129, <4 x i32> poison, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  %131 = mul nuw nsw <4 x i32> %6, %130
  %132 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %131)
  %op.rdx = add i32 %132, 32
  %shr35.us = lshr i32 %op.rdx, 6
  %conv36.us = trunc i32 %shr35.us to i8
  %arrayidx38.us = getelementptr inbounds i8, ptr %dst.addr.080.us, i64 %indvars.iv
  store i8 %conv36.us, ptr %arrayidx38.us, align 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond10.for.cond.cleanup12_crit_edge.us, label %for.body13.us, !llvm.loop !139

for.cond10.for.cond.cleanup12_crit_edge.us:       ; preds = %for.body13.us, %vec.epilog.middle.block, %middle.block
  %add.ptr40.us = getelementptr inbounds i8, ptr %dst.addr.080.us, i64 %idx.ext39
  %inc44.us = add nuw nsw i32 %y.081.us, 1
  %exitcond85.not = icmp eq i32 %inc44.us, %i_height
  br i1 %exitcond85.not, label %for.cond.cleanup, label %iter.check

for.cond.cleanup:                                 ; preds = %for.cond10.for.cond.cleanup12_crit_edge.us, %for.cond10.preheader.lr.ph, %entry
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_16x16(ptr nocapture noundef writeonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride_pix3, i32 noundef %weight) #0 {
entry:
  %cmp = icmp eq i32 %weight, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %idx.ext.i = sext i32 %i_stride_pix2 to i64
  %idx.ext12.i = sext i32 %i_stride_pix3 to i64
  %idx.ext14.i = sext i32 %i_stride_pix1 to i64
  br label %for.cond1.preheader.us.i

for.cond1.preheader.us.i:                         ; preds = %for.cond1.preheader.us.i, %if.then
  %y.033.us.i = phi i32 [ %inc17.us.i, %for.cond1.preheader.us.i ], [ 0, %if.then ]
  %dst.addr.032.us.i = phi ptr [ %add.ptr15.us.i, %for.cond1.preheader.us.i ], [ %pix1, %if.then ]
  %src1.addr.031.us.i = phi ptr [ %add.ptr.us.i, %for.cond1.preheader.us.i ], [ %pix2, %if.then ]
  %src2.addr.030.us.i = phi ptr [ %add.ptr13.us.i, %for.cond1.preheader.us.i ], [ %pix3, %if.then ]
  %0 = load i8, ptr %src1.addr.031.us.i, align 1
  %conv.us.i = zext i8 %0 to i16
  %1 = load i8, ptr %src2.addr.030.us.i, align 1
  %conv7.us.i = zext i8 %1 to i16
  %add.us.i = add nuw nsw i16 %conv.us.i, 1
  %add8.us.i = add nuw nsw i16 %add.us.i, %conv7.us.i
  %shr.us.i = lshr i16 %add8.us.i, 1
  %conv9.us.i = trunc nuw i16 %shr.us.i to i8
  store i8 %conv9.us.i, ptr %dst.addr.032.us.i, align 1
  %arrayidx.us.i.1 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 1
  %2 = load i8, ptr %arrayidx.us.i.1, align 1
  %conv.us.i.1 = zext i8 %2 to i16
  %arrayidx6.us.i.1 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 1
  %3 = load i8, ptr %arrayidx6.us.i.1, align 1
  %conv7.us.i.1 = zext i8 %3 to i16
  %add.us.i.1 = add nuw nsw i16 %conv.us.i.1, 1
  %add8.us.i.1 = add nuw nsw i16 %add.us.i.1, %conv7.us.i.1
  %shr.us.i.1 = lshr i16 %add8.us.i.1, 1
  %conv9.us.i.1 = trunc nuw i16 %shr.us.i.1 to i8
  %arrayidx11.us.i.1 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 1
  store i8 %conv9.us.i.1, ptr %arrayidx11.us.i.1, align 1
  %arrayidx.us.i.2 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 2
  %4 = load i8, ptr %arrayidx.us.i.2, align 1
  %conv.us.i.2 = zext i8 %4 to i16
  %arrayidx6.us.i.2 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 2
  %5 = load i8, ptr %arrayidx6.us.i.2, align 1
  %conv7.us.i.2 = zext i8 %5 to i16
  %add.us.i.2 = add nuw nsw i16 %conv.us.i.2, 1
  %add8.us.i.2 = add nuw nsw i16 %add.us.i.2, %conv7.us.i.2
  %shr.us.i.2 = lshr i16 %add8.us.i.2, 1
  %conv9.us.i.2 = trunc nuw i16 %shr.us.i.2 to i8
  %arrayidx11.us.i.2 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 2
  store i8 %conv9.us.i.2, ptr %arrayidx11.us.i.2, align 1
  %arrayidx.us.i.3 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 3
  %6 = load i8, ptr %arrayidx.us.i.3, align 1
  %conv.us.i.3 = zext i8 %6 to i16
  %arrayidx6.us.i.3 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 3
  %7 = load i8, ptr %arrayidx6.us.i.3, align 1
  %conv7.us.i.3 = zext i8 %7 to i16
  %add.us.i.3 = add nuw nsw i16 %conv.us.i.3, 1
  %add8.us.i.3 = add nuw nsw i16 %add.us.i.3, %conv7.us.i.3
  %shr.us.i.3 = lshr i16 %add8.us.i.3, 1
  %conv9.us.i.3 = trunc nuw i16 %shr.us.i.3 to i8
  %arrayidx11.us.i.3 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 3
  store i8 %conv9.us.i.3, ptr %arrayidx11.us.i.3, align 1
  %arrayidx.us.i.4 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 4
  %8 = load i8, ptr %arrayidx.us.i.4, align 1
  %conv.us.i.4 = zext i8 %8 to i16
  %arrayidx6.us.i.4 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 4
  %9 = load i8, ptr %arrayidx6.us.i.4, align 1
  %conv7.us.i.4 = zext i8 %9 to i16
  %add.us.i.4 = add nuw nsw i16 %conv.us.i.4, 1
  %add8.us.i.4 = add nuw nsw i16 %add.us.i.4, %conv7.us.i.4
  %shr.us.i.4 = lshr i16 %add8.us.i.4, 1
  %conv9.us.i.4 = trunc nuw i16 %shr.us.i.4 to i8
  %arrayidx11.us.i.4 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 4
  store i8 %conv9.us.i.4, ptr %arrayidx11.us.i.4, align 1
  %arrayidx.us.i.5 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 5
  %10 = load i8, ptr %arrayidx.us.i.5, align 1
  %conv.us.i.5 = zext i8 %10 to i16
  %arrayidx6.us.i.5 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 5
  %11 = load i8, ptr %arrayidx6.us.i.5, align 1
  %conv7.us.i.5 = zext i8 %11 to i16
  %add.us.i.5 = add nuw nsw i16 %conv.us.i.5, 1
  %add8.us.i.5 = add nuw nsw i16 %add.us.i.5, %conv7.us.i.5
  %shr.us.i.5 = lshr i16 %add8.us.i.5, 1
  %conv9.us.i.5 = trunc nuw i16 %shr.us.i.5 to i8
  %arrayidx11.us.i.5 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 5
  store i8 %conv9.us.i.5, ptr %arrayidx11.us.i.5, align 1
  %arrayidx.us.i.6 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 6
  %12 = load i8, ptr %arrayidx.us.i.6, align 1
  %conv.us.i.6 = zext i8 %12 to i16
  %arrayidx6.us.i.6 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 6
  %13 = load i8, ptr %arrayidx6.us.i.6, align 1
  %conv7.us.i.6 = zext i8 %13 to i16
  %add.us.i.6 = add nuw nsw i16 %conv.us.i.6, 1
  %add8.us.i.6 = add nuw nsw i16 %add.us.i.6, %conv7.us.i.6
  %shr.us.i.6 = lshr i16 %add8.us.i.6, 1
  %conv9.us.i.6 = trunc nuw i16 %shr.us.i.6 to i8
  %arrayidx11.us.i.6 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 6
  store i8 %conv9.us.i.6, ptr %arrayidx11.us.i.6, align 1
  %arrayidx.us.i.7 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 7
  %14 = load i8, ptr %arrayidx.us.i.7, align 1
  %conv.us.i.7 = zext i8 %14 to i16
  %arrayidx6.us.i.7 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 7
  %15 = load i8, ptr %arrayidx6.us.i.7, align 1
  %conv7.us.i.7 = zext i8 %15 to i16
  %add.us.i.7 = add nuw nsw i16 %conv.us.i.7, 1
  %add8.us.i.7 = add nuw nsw i16 %add.us.i.7, %conv7.us.i.7
  %shr.us.i.7 = lshr i16 %add8.us.i.7, 1
  %conv9.us.i.7 = trunc nuw i16 %shr.us.i.7 to i8
  %arrayidx11.us.i.7 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 7
  store i8 %conv9.us.i.7, ptr %arrayidx11.us.i.7, align 1
  %arrayidx.us.i.8 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 8
  %16 = load i8, ptr %arrayidx.us.i.8, align 1
  %conv.us.i.8 = zext i8 %16 to i16
  %arrayidx6.us.i.8 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 8
  %17 = load i8, ptr %arrayidx6.us.i.8, align 1
  %conv7.us.i.8 = zext i8 %17 to i16
  %add.us.i.8 = add nuw nsw i16 %conv.us.i.8, 1
  %add8.us.i.8 = add nuw nsw i16 %add.us.i.8, %conv7.us.i.8
  %shr.us.i.8 = lshr i16 %add8.us.i.8, 1
  %conv9.us.i.8 = trunc nuw i16 %shr.us.i.8 to i8
  %arrayidx11.us.i.8 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 8
  store i8 %conv9.us.i.8, ptr %arrayidx11.us.i.8, align 1
  %arrayidx.us.i.9 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 9
  %18 = load i8, ptr %arrayidx.us.i.9, align 1
  %conv.us.i.9 = zext i8 %18 to i16
  %arrayidx6.us.i.9 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 9
  %19 = load i8, ptr %arrayidx6.us.i.9, align 1
  %conv7.us.i.9 = zext i8 %19 to i16
  %add.us.i.9 = add nuw nsw i16 %conv.us.i.9, 1
  %add8.us.i.9 = add nuw nsw i16 %add.us.i.9, %conv7.us.i.9
  %shr.us.i.9 = lshr i16 %add8.us.i.9, 1
  %conv9.us.i.9 = trunc nuw i16 %shr.us.i.9 to i8
  %arrayidx11.us.i.9 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 9
  store i8 %conv9.us.i.9, ptr %arrayidx11.us.i.9, align 1
  %arrayidx.us.i.10 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 10
  %20 = load i8, ptr %arrayidx.us.i.10, align 1
  %conv.us.i.10 = zext i8 %20 to i16
  %arrayidx6.us.i.10 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 10
  %21 = load i8, ptr %arrayidx6.us.i.10, align 1
  %conv7.us.i.10 = zext i8 %21 to i16
  %add.us.i.10 = add nuw nsw i16 %conv.us.i.10, 1
  %add8.us.i.10 = add nuw nsw i16 %add.us.i.10, %conv7.us.i.10
  %shr.us.i.10 = lshr i16 %add8.us.i.10, 1
  %conv9.us.i.10 = trunc nuw i16 %shr.us.i.10 to i8
  %arrayidx11.us.i.10 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 10
  store i8 %conv9.us.i.10, ptr %arrayidx11.us.i.10, align 1
  %arrayidx.us.i.11 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 11
  %22 = load i8, ptr %arrayidx.us.i.11, align 1
  %conv.us.i.11 = zext i8 %22 to i16
  %arrayidx6.us.i.11 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 11
  %23 = load i8, ptr %arrayidx6.us.i.11, align 1
  %conv7.us.i.11 = zext i8 %23 to i16
  %add.us.i.11 = add nuw nsw i16 %conv.us.i.11, 1
  %add8.us.i.11 = add nuw nsw i16 %add.us.i.11, %conv7.us.i.11
  %shr.us.i.11 = lshr i16 %add8.us.i.11, 1
  %conv9.us.i.11 = trunc nuw i16 %shr.us.i.11 to i8
  %arrayidx11.us.i.11 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 11
  store i8 %conv9.us.i.11, ptr %arrayidx11.us.i.11, align 1
  %arrayidx.us.i.12 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 12
  %24 = load i8, ptr %arrayidx.us.i.12, align 1
  %conv.us.i.12 = zext i8 %24 to i16
  %arrayidx6.us.i.12 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 12
  %25 = load i8, ptr %arrayidx6.us.i.12, align 1
  %conv7.us.i.12 = zext i8 %25 to i16
  %add.us.i.12 = add nuw nsw i16 %conv.us.i.12, 1
  %add8.us.i.12 = add nuw nsw i16 %add.us.i.12, %conv7.us.i.12
  %shr.us.i.12 = lshr i16 %add8.us.i.12, 1
  %conv9.us.i.12 = trunc nuw i16 %shr.us.i.12 to i8
  %arrayidx11.us.i.12 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 12
  store i8 %conv9.us.i.12, ptr %arrayidx11.us.i.12, align 1
  %arrayidx.us.i.13 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 13
  %26 = load i8, ptr %arrayidx.us.i.13, align 1
  %conv.us.i.13 = zext i8 %26 to i16
  %arrayidx6.us.i.13 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 13
  %27 = load i8, ptr %arrayidx6.us.i.13, align 1
  %conv7.us.i.13 = zext i8 %27 to i16
  %add.us.i.13 = add nuw nsw i16 %conv.us.i.13, 1
  %add8.us.i.13 = add nuw nsw i16 %add.us.i.13, %conv7.us.i.13
  %shr.us.i.13 = lshr i16 %add8.us.i.13, 1
  %conv9.us.i.13 = trunc nuw i16 %shr.us.i.13 to i8
  %arrayidx11.us.i.13 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 13
  store i8 %conv9.us.i.13, ptr %arrayidx11.us.i.13, align 1
  %arrayidx.us.i.14 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 14
  %28 = load i8, ptr %arrayidx.us.i.14, align 1
  %conv.us.i.14 = zext i8 %28 to i16
  %arrayidx6.us.i.14 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 14
  %29 = load i8, ptr %arrayidx6.us.i.14, align 1
  %conv7.us.i.14 = zext i8 %29 to i16
  %add.us.i.14 = add nuw nsw i16 %conv.us.i.14, 1
  %add8.us.i.14 = add nuw nsw i16 %add.us.i.14, %conv7.us.i.14
  %shr.us.i.14 = lshr i16 %add8.us.i.14, 1
  %conv9.us.i.14 = trunc nuw i16 %shr.us.i.14 to i8
  %arrayidx11.us.i.14 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 14
  store i8 %conv9.us.i.14, ptr %arrayidx11.us.i.14, align 1
  %arrayidx.us.i.15 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 15
  %30 = load i8, ptr %arrayidx.us.i.15, align 1
  %conv.us.i.15 = zext i8 %30 to i16
  %arrayidx6.us.i.15 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 15
  %31 = load i8, ptr %arrayidx6.us.i.15, align 1
  %conv7.us.i.15 = zext i8 %31 to i16
  %add.us.i.15 = add nuw nsw i16 %conv.us.i.15, 1
  %add8.us.i.15 = add nuw nsw i16 %add.us.i.15, %conv7.us.i.15
  %shr.us.i.15 = lshr i16 %add8.us.i.15, 1
  %conv9.us.i.15 = trunc nuw i16 %shr.us.i.15 to i8
  %arrayidx11.us.i.15 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 15
  store i8 %conv9.us.i.15, ptr %arrayidx11.us.i.15, align 1
  %add.ptr.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %idx.ext.i
  %add.ptr13.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %idx.ext12.i
  %add.ptr15.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %idx.ext14.i
  %inc17.us.i = add nuw nsw i32 %y.033.us.i, 1
  %exitcond36.not.i = icmp eq i32 %inc17.us.i, 16
  br i1 %exitcond36.not.i, label %if.end, label %for.cond1.preheader.us.i

if.else:                                          ; preds = %entry
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %pix1, i32 noundef %i_stride_pix1, ptr noundef %pix2, i32 noundef %i_stride_pix2, ptr noundef %pix3, i32 noundef %i_stride_pix3, i32 noundef 16, i32 noundef 16, i32 noundef %weight)
  br label %if.end

if.end:                                           ; preds = %for.cond1.preheader.us.i, %if.else
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_16x8(ptr nocapture noundef writeonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride_pix3, i32 noundef %weight) #0 {
entry:
  %cmp = icmp eq i32 %weight, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %idx.ext.i = sext i32 %i_stride_pix2 to i64
  %idx.ext12.i = sext i32 %i_stride_pix3 to i64
  %idx.ext14.i = sext i32 %i_stride_pix1 to i64
  br label %for.cond1.preheader.us.i

for.cond1.preheader.us.i:                         ; preds = %for.cond1.preheader.us.i, %if.then
  %y.033.us.i = phi i32 [ %inc17.us.i, %for.cond1.preheader.us.i ], [ 0, %if.then ]
  %dst.addr.032.us.i = phi ptr [ %add.ptr15.us.i, %for.cond1.preheader.us.i ], [ %pix1, %if.then ]
  %src1.addr.031.us.i = phi ptr [ %add.ptr.us.i, %for.cond1.preheader.us.i ], [ %pix2, %if.then ]
  %src2.addr.030.us.i = phi ptr [ %add.ptr13.us.i, %for.cond1.preheader.us.i ], [ %pix3, %if.then ]
  %0 = load i8, ptr %src1.addr.031.us.i, align 1
  %conv.us.i = zext i8 %0 to i16
  %1 = load i8, ptr %src2.addr.030.us.i, align 1
  %conv7.us.i = zext i8 %1 to i16
  %add.us.i = add nuw nsw i16 %conv.us.i, 1
  %add8.us.i = add nuw nsw i16 %add.us.i, %conv7.us.i
  %shr.us.i = lshr i16 %add8.us.i, 1
  %conv9.us.i = trunc nuw i16 %shr.us.i to i8
  store i8 %conv9.us.i, ptr %dst.addr.032.us.i, align 1
  %arrayidx.us.i.1 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 1
  %2 = load i8, ptr %arrayidx.us.i.1, align 1
  %conv.us.i.1 = zext i8 %2 to i16
  %arrayidx6.us.i.1 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 1
  %3 = load i8, ptr %arrayidx6.us.i.1, align 1
  %conv7.us.i.1 = zext i8 %3 to i16
  %add.us.i.1 = add nuw nsw i16 %conv.us.i.1, 1
  %add8.us.i.1 = add nuw nsw i16 %add.us.i.1, %conv7.us.i.1
  %shr.us.i.1 = lshr i16 %add8.us.i.1, 1
  %conv9.us.i.1 = trunc nuw i16 %shr.us.i.1 to i8
  %arrayidx11.us.i.1 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 1
  store i8 %conv9.us.i.1, ptr %arrayidx11.us.i.1, align 1
  %arrayidx.us.i.2 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 2
  %4 = load i8, ptr %arrayidx.us.i.2, align 1
  %conv.us.i.2 = zext i8 %4 to i16
  %arrayidx6.us.i.2 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 2
  %5 = load i8, ptr %arrayidx6.us.i.2, align 1
  %conv7.us.i.2 = zext i8 %5 to i16
  %add.us.i.2 = add nuw nsw i16 %conv.us.i.2, 1
  %add8.us.i.2 = add nuw nsw i16 %add.us.i.2, %conv7.us.i.2
  %shr.us.i.2 = lshr i16 %add8.us.i.2, 1
  %conv9.us.i.2 = trunc nuw i16 %shr.us.i.2 to i8
  %arrayidx11.us.i.2 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 2
  store i8 %conv9.us.i.2, ptr %arrayidx11.us.i.2, align 1
  %arrayidx.us.i.3 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 3
  %6 = load i8, ptr %arrayidx.us.i.3, align 1
  %conv.us.i.3 = zext i8 %6 to i16
  %arrayidx6.us.i.3 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 3
  %7 = load i8, ptr %arrayidx6.us.i.3, align 1
  %conv7.us.i.3 = zext i8 %7 to i16
  %add.us.i.3 = add nuw nsw i16 %conv.us.i.3, 1
  %add8.us.i.3 = add nuw nsw i16 %add.us.i.3, %conv7.us.i.3
  %shr.us.i.3 = lshr i16 %add8.us.i.3, 1
  %conv9.us.i.3 = trunc nuw i16 %shr.us.i.3 to i8
  %arrayidx11.us.i.3 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 3
  store i8 %conv9.us.i.3, ptr %arrayidx11.us.i.3, align 1
  %arrayidx.us.i.4 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 4
  %8 = load i8, ptr %arrayidx.us.i.4, align 1
  %conv.us.i.4 = zext i8 %8 to i16
  %arrayidx6.us.i.4 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 4
  %9 = load i8, ptr %arrayidx6.us.i.4, align 1
  %conv7.us.i.4 = zext i8 %9 to i16
  %add.us.i.4 = add nuw nsw i16 %conv.us.i.4, 1
  %add8.us.i.4 = add nuw nsw i16 %add.us.i.4, %conv7.us.i.4
  %shr.us.i.4 = lshr i16 %add8.us.i.4, 1
  %conv9.us.i.4 = trunc nuw i16 %shr.us.i.4 to i8
  %arrayidx11.us.i.4 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 4
  store i8 %conv9.us.i.4, ptr %arrayidx11.us.i.4, align 1
  %arrayidx.us.i.5 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 5
  %10 = load i8, ptr %arrayidx.us.i.5, align 1
  %conv.us.i.5 = zext i8 %10 to i16
  %arrayidx6.us.i.5 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 5
  %11 = load i8, ptr %arrayidx6.us.i.5, align 1
  %conv7.us.i.5 = zext i8 %11 to i16
  %add.us.i.5 = add nuw nsw i16 %conv.us.i.5, 1
  %add8.us.i.5 = add nuw nsw i16 %add.us.i.5, %conv7.us.i.5
  %shr.us.i.5 = lshr i16 %add8.us.i.5, 1
  %conv9.us.i.5 = trunc nuw i16 %shr.us.i.5 to i8
  %arrayidx11.us.i.5 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 5
  store i8 %conv9.us.i.5, ptr %arrayidx11.us.i.5, align 1
  %arrayidx.us.i.6 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 6
  %12 = load i8, ptr %arrayidx.us.i.6, align 1
  %conv.us.i.6 = zext i8 %12 to i16
  %arrayidx6.us.i.6 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 6
  %13 = load i8, ptr %arrayidx6.us.i.6, align 1
  %conv7.us.i.6 = zext i8 %13 to i16
  %add.us.i.6 = add nuw nsw i16 %conv.us.i.6, 1
  %add8.us.i.6 = add nuw nsw i16 %add.us.i.6, %conv7.us.i.6
  %shr.us.i.6 = lshr i16 %add8.us.i.6, 1
  %conv9.us.i.6 = trunc nuw i16 %shr.us.i.6 to i8
  %arrayidx11.us.i.6 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 6
  store i8 %conv9.us.i.6, ptr %arrayidx11.us.i.6, align 1
  %arrayidx.us.i.7 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 7
  %14 = load i8, ptr %arrayidx.us.i.7, align 1
  %conv.us.i.7 = zext i8 %14 to i16
  %arrayidx6.us.i.7 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 7
  %15 = load i8, ptr %arrayidx6.us.i.7, align 1
  %conv7.us.i.7 = zext i8 %15 to i16
  %add.us.i.7 = add nuw nsw i16 %conv.us.i.7, 1
  %add8.us.i.7 = add nuw nsw i16 %add.us.i.7, %conv7.us.i.7
  %shr.us.i.7 = lshr i16 %add8.us.i.7, 1
  %conv9.us.i.7 = trunc nuw i16 %shr.us.i.7 to i8
  %arrayidx11.us.i.7 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 7
  store i8 %conv9.us.i.7, ptr %arrayidx11.us.i.7, align 1
  %arrayidx.us.i.8 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 8
  %16 = load i8, ptr %arrayidx.us.i.8, align 1
  %conv.us.i.8 = zext i8 %16 to i16
  %arrayidx6.us.i.8 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 8
  %17 = load i8, ptr %arrayidx6.us.i.8, align 1
  %conv7.us.i.8 = zext i8 %17 to i16
  %add.us.i.8 = add nuw nsw i16 %conv.us.i.8, 1
  %add8.us.i.8 = add nuw nsw i16 %add.us.i.8, %conv7.us.i.8
  %shr.us.i.8 = lshr i16 %add8.us.i.8, 1
  %conv9.us.i.8 = trunc nuw i16 %shr.us.i.8 to i8
  %arrayidx11.us.i.8 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 8
  store i8 %conv9.us.i.8, ptr %arrayidx11.us.i.8, align 1
  %arrayidx.us.i.9 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 9
  %18 = load i8, ptr %arrayidx.us.i.9, align 1
  %conv.us.i.9 = zext i8 %18 to i16
  %arrayidx6.us.i.9 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 9
  %19 = load i8, ptr %arrayidx6.us.i.9, align 1
  %conv7.us.i.9 = zext i8 %19 to i16
  %add.us.i.9 = add nuw nsw i16 %conv.us.i.9, 1
  %add8.us.i.9 = add nuw nsw i16 %add.us.i.9, %conv7.us.i.9
  %shr.us.i.9 = lshr i16 %add8.us.i.9, 1
  %conv9.us.i.9 = trunc nuw i16 %shr.us.i.9 to i8
  %arrayidx11.us.i.9 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 9
  store i8 %conv9.us.i.9, ptr %arrayidx11.us.i.9, align 1
  %arrayidx.us.i.10 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 10
  %20 = load i8, ptr %arrayidx.us.i.10, align 1
  %conv.us.i.10 = zext i8 %20 to i16
  %arrayidx6.us.i.10 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 10
  %21 = load i8, ptr %arrayidx6.us.i.10, align 1
  %conv7.us.i.10 = zext i8 %21 to i16
  %add.us.i.10 = add nuw nsw i16 %conv.us.i.10, 1
  %add8.us.i.10 = add nuw nsw i16 %add.us.i.10, %conv7.us.i.10
  %shr.us.i.10 = lshr i16 %add8.us.i.10, 1
  %conv9.us.i.10 = trunc nuw i16 %shr.us.i.10 to i8
  %arrayidx11.us.i.10 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 10
  store i8 %conv9.us.i.10, ptr %arrayidx11.us.i.10, align 1
  %arrayidx.us.i.11 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 11
  %22 = load i8, ptr %arrayidx.us.i.11, align 1
  %conv.us.i.11 = zext i8 %22 to i16
  %arrayidx6.us.i.11 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 11
  %23 = load i8, ptr %arrayidx6.us.i.11, align 1
  %conv7.us.i.11 = zext i8 %23 to i16
  %add.us.i.11 = add nuw nsw i16 %conv.us.i.11, 1
  %add8.us.i.11 = add nuw nsw i16 %add.us.i.11, %conv7.us.i.11
  %shr.us.i.11 = lshr i16 %add8.us.i.11, 1
  %conv9.us.i.11 = trunc nuw i16 %shr.us.i.11 to i8
  %arrayidx11.us.i.11 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 11
  store i8 %conv9.us.i.11, ptr %arrayidx11.us.i.11, align 1
  %arrayidx.us.i.12 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 12
  %24 = load i8, ptr %arrayidx.us.i.12, align 1
  %conv.us.i.12 = zext i8 %24 to i16
  %arrayidx6.us.i.12 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 12
  %25 = load i8, ptr %arrayidx6.us.i.12, align 1
  %conv7.us.i.12 = zext i8 %25 to i16
  %add.us.i.12 = add nuw nsw i16 %conv.us.i.12, 1
  %add8.us.i.12 = add nuw nsw i16 %add.us.i.12, %conv7.us.i.12
  %shr.us.i.12 = lshr i16 %add8.us.i.12, 1
  %conv9.us.i.12 = trunc nuw i16 %shr.us.i.12 to i8
  %arrayidx11.us.i.12 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 12
  store i8 %conv9.us.i.12, ptr %arrayidx11.us.i.12, align 1
  %arrayidx.us.i.13 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 13
  %26 = load i8, ptr %arrayidx.us.i.13, align 1
  %conv.us.i.13 = zext i8 %26 to i16
  %arrayidx6.us.i.13 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 13
  %27 = load i8, ptr %arrayidx6.us.i.13, align 1
  %conv7.us.i.13 = zext i8 %27 to i16
  %add.us.i.13 = add nuw nsw i16 %conv.us.i.13, 1
  %add8.us.i.13 = add nuw nsw i16 %add.us.i.13, %conv7.us.i.13
  %shr.us.i.13 = lshr i16 %add8.us.i.13, 1
  %conv9.us.i.13 = trunc nuw i16 %shr.us.i.13 to i8
  %arrayidx11.us.i.13 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 13
  store i8 %conv9.us.i.13, ptr %arrayidx11.us.i.13, align 1
  %arrayidx.us.i.14 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 14
  %28 = load i8, ptr %arrayidx.us.i.14, align 1
  %conv.us.i.14 = zext i8 %28 to i16
  %arrayidx6.us.i.14 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 14
  %29 = load i8, ptr %arrayidx6.us.i.14, align 1
  %conv7.us.i.14 = zext i8 %29 to i16
  %add.us.i.14 = add nuw nsw i16 %conv.us.i.14, 1
  %add8.us.i.14 = add nuw nsw i16 %add.us.i.14, %conv7.us.i.14
  %shr.us.i.14 = lshr i16 %add8.us.i.14, 1
  %conv9.us.i.14 = trunc nuw i16 %shr.us.i.14 to i8
  %arrayidx11.us.i.14 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 14
  store i8 %conv9.us.i.14, ptr %arrayidx11.us.i.14, align 1
  %arrayidx.us.i.15 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 15
  %30 = load i8, ptr %arrayidx.us.i.15, align 1
  %conv.us.i.15 = zext i8 %30 to i16
  %arrayidx6.us.i.15 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 15
  %31 = load i8, ptr %arrayidx6.us.i.15, align 1
  %conv7.us.i.15 = zext i8 %31 to i16
  %add.us.i.15 = add nuw nsw i16 %conv.us.i.15, 1
  %add8.us.i.15 = add nuw nsw i16 %add.us.i.15, %conv7.us.i.15
  %shr.us.i.15 = lshr i16 %add8.us.i.15, 1
  %conv9.us.i.15 = trunc nuw i16 %shr.us.i.15 to i8
  %arrayidx11.us.i.15 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 15
  store i8 %conv9.us.i.15, ptr %arrayidx11.us.i.15, align 1
  %add.ptr.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %idx.ext.i
  %add.ptr13.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %idx.ext12.i
  %add.ptr15.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %idx.ext14.i
  %inc17.us.i = add nuw nsw i32 %y.033.us.i, 1
  %exitcond36.not.i = icmp eq i32 %inc17.us.i, 8
  br i1 %exitcond36.not.i, label %if.end, label %for.cond1.preheader.us.i

if.else:                                          ; preds = %entry
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %pix1, i32 noundef %i_stride_pix1, ptr noundef %pix2, i32 noundef %i_stride_pix2, ptr noundef %pix3, i32 noundef %i_stride_pix3, i32 noundef 16, i32 noundef 8, i32 noundef %weight)
  br label %if.end

if.end:                                           ; preds = %for.cond1.preheader.us.i, %if.else
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_8x16(ptr nocapture noundef writeonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride_pix3, i32 noundef %weight) #0 {
entry:
  %cmp = icmp eq i32 %weight, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %idx.ext.i = sext i32 %i_stride_pix2 to i64
  %idx.ext12.i = sext i32 %i_stride_pix3 to i64
  %idx.ext14.i = sext i32 %i_stride_pix1 to i64
  br label %for.cond1.preheader.us.i

for.cond1.preheader.us.i:                         ; preds = %for.cond1.preheader.us.i, %if.then
  %y.033.us.i = phi i32 [ %inc17.us.i, %for.cond1.preheader.us.i ], [ 0, %if.then ]
  %dst.addr.032.us.i = phi ptr [ %add.ptr15.us.i, %for.cond1.preheader.us.i ], [ %pix1, %if.then ]
  %src1.addr.031.us.i = phi ptr [ %add.ptr.us.i, %for.cond1.preheader.us.i ], [ %pix2, %if.then ]
  %src2.addr.030.us.i = phi ptr [ %add.ptr13.us.i, %for.cond1.preheader.us.i ], [ %pix3, %if.then ]
  %0 = load i8, ptr %src1.addr.031.us.i, align 1
  %conv.us.i = zext i8 %0 to i16
  %1 = load i8, ptr %src2.addr.030.us.i, align 1
  %conv7.us.i = zext i8 %1 to i16
  %add.us.i = add nuw nsw i16 %conv.us.i, 1
  %add8.us.i = add nuw nsw i16 %add.us.i, %conv7.us.i
  %shr.us.i = lshr i16 %add8.us.i, 1
  %conv9.us.i = trunc nuw i16 %shr.us.i to i8
  store i8 %conv9.us.i, ptr %dst.addr.032.us.i, align 1
  %arrayidx.us.i.1 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 1
  %2 = load i8, ptr %arrayidx.us.i.1, align 1
  %conv.us.i.1 = zext i8 %2 to i16
  %arrayidx6.us.i.1 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 1
  %3 = load i8, ptr %arrayidx6.us.i.1, align 1
  %conv7.us.i.1 = zext i8 %3 to i16
  %add.us.i.1 = add nuw nsw i16 %conv.us.i.1, 1
  %add8.us.i.1 = add nuw nsw i16 %add.us.i.1, %conv7.us.i.1
  %shr.us.i.1 = lshr i16 %add8.us.i.1, 1
  %conv9.us.i.1 = trunc nuw i16 %shr.us.i.1 to i8
  %arrayidx11.us.i.1 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 1
  store i8 %conv9.us.i.1, ptr %arrayidx11.us.i.1, align 1
  %arrayidx.us.i.2 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 2
  %4 = load i8, ptr %arrayidx.us.i.2, align 1
  %conv.us.i.2 = zext i8 %4 to i16
  %arrayidx6.us.i.2 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 2
  %5 = load i8, ptr %arrayidx6.us.i.2, align 1
  %conv7.us.i.2 = zext i8 %5 to i16
  %add.us.i.2 = add nuw nsw i16 %conv.us.i.2, 1
  %add8.us.i.2 = add nuw nsw i16 %add.us.i.2, %conv7.us.i.2
  %shr.us.i.2 = lshr i16 %add8.us.i.2, 1
  %conv9.us.i.2 = trunc nuw i16 %shr.us.i.2 to i8
  %arrayidx11.us.i.2 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 2
  store i8 %conv9.us.i.2, ptr %arrayidx11.us.i.2, align 1
  %arrayidx.us.i.3 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 3
  %6 = load i8, ptr %arrayidx.us.i.3, align 1
  %conv.us.i.3 = zext i8 %6 to i16
  %arrayidx6.us.i.3 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 3
  %7 = load i8, ptr %arrayidx6.us.i.3, align 1
  %conv7.us.i.3 = zext i8 %7 to i16
  %add.us.i.3 = add nuw nsw i16 %conv.us.i.3, 1
  %add8.us.i.3 = add nuw nsw i16 %add.us.i.3, %conv7.us.i.3
  %shr.us.i.3 = lshr i16 %add8.us.i.3, 1
  %conv9.us.i.3 = trunc nuw i16 %shr.us.i.3 to i8
  %arrayidx11.us.i.3 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 3
  store i8 %conv9.us.i.3, ptr %arrayidx11.us.i.3, align 1
  %arrayidx.us.i.4 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 4
  %8 = load i8, ptr %arrayidx.us.i.4, align 1
  %conv.us.i.4 = zext i8 %8 to i16
  %arrayidx6.us.i.4 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 4
  %9 = load i8, ptr %arrayidx6.us.i.4, align 1
  %conv7.us.i.4 = zext i8 %9 to i16
  %add.us.i.4 = add nuw nsw i16 %conv.us.i.4, 1
  %add8.us.i.4 = add nuw nsw i16 %add.us.i.4, %conv7.us.i.4
  %shr.us.i.4 = lshr i16 %add8.us.i.4, 1
  %conv9.us.i.4 = trunc nuw i16 %shr.us.i.4 to i8
  %arrayidx11.us.i.4 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 4
  store i8 %conv9.us.i.4, ptr %arrayidx11.us.i.4, align 1
  %arrayidx.us.i.5 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 5
  %10 = load i8, ptr %arrayidx.us.i.5, align 1
  %conv.us.i.5 = zext i8 %10 to i16
  %arrayidx6.us.i.5 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 5
  %11 = load i8, ptr %arrayidx6.us.i.5, align 1
  %conv7.us.i.5 = zext i8 %11 to i16
  %add.us.i.5 = add nuw nsw i16 %conv.us.i.5, 1
  %add8.us.i.5 = add nuw nsw i16 %add.us.i.5, %conv7.us.i.5
  %shr.us.i.5 = lshr i16 %add8.us.i.5, 1
  %conv9.us.i.5 = trunc nuw i16 %shr.us.i.5 to i8
  %arrayidx11.us.i.5 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 5
  store i8 %conv9.us.i.5, ptr %arrayidx11.us.i.5, align 1
  %arrayidx.us.i.6 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 6
  %12 = load i8, ptr %arrayidx.us.i.6, align 1
  %conv.us.i.6 = zext i8 %12 to i16
  %arrayidx6.us.i.6 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 6
  %13 = load i8, ptr %arrayidx6.us.i.6, align 1
  %conv7.us.i.6 = zext i8 %13 to i16
  %add.us.i.6 = add nuw nsw i16 %conv.us.i.6, 1
  %add8.us.i.6 = add nuw nsw i16 %add.us.i.6, %conv7.us.i.6
  %shr.us.i.6 = lshr i16 %add8.us.i.6, 1
  %conv9.us.i.6 = trunc nuw i16 %shr.us.i.6 to i8
  %arrayidx11.us.i.6 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 6
  store i8 %conv9.us.i.6, ptr %arrayidx11.us.i.6, align 1
  %arrayidx.us.i.7 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 7
  %14 = load i8, ptr %arrayidx.us.i.7, align 1
  %conv.us.i.7 = zext i8 %14 to i16
  %arrayidx6.us.i.7 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 7
  %15 = load i8, ptr %arrayidx6.us.i.7, align 1
  %conv7.us.i.7 = zext i8 %15 to i16
  %add.us.i.7 = add nuw nsw i16 %conv.us.i.7, 1
  %add8.us.i.7 = add nuw nsw i16 %add.us.i.7, %conv7.us.i.7
  %shr.us.i.7 = lshr i16 %add8.us.i.7, 1
  %conv9.us.i.7 = trunc nuw i16 %shr.us.i.7 to i8
  %arrayidx11.us.i.7 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 7
  store i8 %conv9.us.i.7, ptr %arrayidx11.us.i.7, align 1
  %add.ptr.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %idx.ext.i
  %add.ptr13.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %idx.ext12.i
  %add.ptr15.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %idx.ext14.i
  %inc17.us.i = add nuw nsw i32 %y.033.us.i, 1
  %exitcond36.not.i = icmp eq i32 %inc17.us.i, 16
  br i1 %exitcond36.not.i, label %if.end, label %for.cond1.preheader.us.i

if.else:                                          ; preds = %entry
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %pix1, i32 noundef %i_stride_pix1, ptr noundef %pix2, i32 noundef %i_stride_pix2, ptr noundef %pix3, i32 noundef %i_stride_pix3, i32 noundef 8, i32 noundef 16, i32 noundef %weight)
  br label %if.end

if.end:                                           ; preds = %for.cond1.preheader.us.i, %if.else
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_8x8(ptr nocapture noundef writeonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride_pix3, i32 noundef %weight) #0 {
entry:
  %cmp = icmp eq i32 %weight, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %idx.ext.i = sext i32 %i_stride_pix2 to i64
  %idx.ext12.i = sext i32 %i_stride_pix3 to i64
  %idx.ext14.i = sext i32 %i_stride_pix1 to i64
  br label %for.cond1.preheader.us.i

for.cond1.preheader.us.i:                         ; preds = %for.cond1.preheader.us.i, %if.then
  %y.033.us.i = phi i32 [ %inc17.us.i, %for.cond1.preheader.us.i ], [ 0, %if.then ]
  %dst.addr.032.us.i = phi ptr [ %add.ptr15.us.i, %for.cond1.preheader.us.i ], [ %pix1, %if.then ]
  %src1.addr.031.us.i = phi ptr [ %add.ptr.us.i, %for.cond1.preheader.us.i ], [ %pix2, %if.then ]
  %src2.addr.030.us.i = phi ptr [ %add.ptr13.us.i, %for.cond1.preheader.us.i ], [ %pix3, %if.then ]
  %0 = load i8, ptr %src1.addr.031.us.i, align 1
  %conv.us.i = zext i8 %0 to i16
  %1 = load i8, ptr %src2.addr.030.us.i, align 1
  %conv7.us.i = zext i8 %1 to i16
  %add.us.i = add nuw nsw i16 %conv.us.i, 1
  %add8.us.i = add nuw nsw i16 %add.us.i, %conv7.us.i
  %shr.us.i = lshr i16 %add8.us.i, 1
  %conv9.us.i = trunc nuw i16 %shr.us.i to i8
  store i8 %conv9.us.i, ptr %dst.addr.032.us.i, align 1
  %arrayidx.us.i.1 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 1
  %2 = load i8, ptr %arrayidx.us.i.1, align 1
  %conv.us.i.1 = zext i8 %2 to i16
  %arrayidx6.us.i.1 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 1
  %3 = load i8, ptr %arrayidx6.us.i.1, align 1
  %conv7.us.i.1 = zext i8 %3 to i16
  %add.us.i.1 = add nuw nsw i16 %conv.us.i.1, 1
  %add8.us.i.1 = add nuw nsw i16 %add.us.i.1, %conv7.us.i.1
  %shr.us.i.1 = lshr i16 %add8.us.i.1, 1
  %conv9.us.i.1 = trunc nuw i16 %shr.us.i.1 to i8
  %arrayidx11.us.i.1 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 1
  store i8 %conv9.us.i.1, ptr %arrayidx11.us.i.1, align 1
  %arrayidx.us.i.2 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 2
  %4 = load i8, ptr %arrayidx.us.i.2, align 1
  %conv.us.i.2 = zext i8 %4 to i16
  %arrayidx6.us.i.2 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 2
  %5 = load i8, ptr %arrayidx6.us.i.2, align 1
  %conv7.us.i.2 = zext i8 %5 to i16
  %add.us.i.2 = add nuw nsw i16 %conv.us.i.2, 1
  %add8.us.i.2 = add nuw nsw i16 %add.us.i.2, %conv7.us.i.2
  %shr.us.i.2 = lshr i16 %add8.us.i.2, 1
  %conv9.us.i.2 = trunc nuw i16 %shr.us.i.2 to i8
  %arrayidx11.us.i.2 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 2
  store i8 %conv9.us.i.2, ptr %arrayidx11.us.i.2, align 1
  %arrayidx.us.i.3 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 3
  %6 = load i8, ptr %arrayidx.us.i.3, align 1
  %conv.us.i.3 = zext i8 %6 to i16
  %arrayidx6.us.i.3 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 3
  %7 = load i8, ptr %arrayidx6.us.i.3, align 1
  %conv7.us.i.3 = zext i8 %7 to i16
  %add.us.i.3 = add nuw nsw i16 %conv.us.i.3, 1
  %add8.us.i.3 = add nuw nsw i16 %add.us.i.3, %conv7.us.i.3
  %shr.us.i.3 = lshr i16 %add8.us.i.3, 1
  %conv9.us.i.3 = trunc nuw i16 %shr.us.i.3 to i8
  %arrayidx11.us.i.3 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 3
  store i8 %conv9.us.i.3, ptr %arrayidx11.us.i.3, align 1
  %arrayidx.us.i.4 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 4
  %8 = load i8, ptr %arrayidx.us.i.4, align 1
  %conv.us.i.4 = zext i8 %8 to i16
  %arrayidx6.us.i.4 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 4
  %9 = load i8, ptr %arrayidx6.us.i.4, align 1
  %conv7.us.i.4 = zext i8 %9 to i16
  %add.us.i.4 = add nuw nsw i16 %conv.us.i.4, 1
  %add8.us.i.4 = add nuw nsw i16 %add.us.i.4, %conv7.us.i.4
  %shr.us.i.4 = lshr i16 %add8.us.i.4, 1
  %conv9.us.i.4 = trunc nuw i16 %shr.us.i.4 to i8
  %arrayidx11.us.i.4 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 4
  store i8 %conv9.us.i.4, ptr %arrayidx11.us.i.4, align 1
  %arrayidx.us.i.5 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 5
  %10 = load i8, ptr %arrayidx.us.i.5, align 1
  %conv.us.i.5 = zext i8 %10 to i16
  %arrayidx6.us.i.5 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 5
  %11 = load i8, ptr %arrayidx6.us.i.5, align 1
  %conv7.us.i.5 = zext i8 %11 to i16
  %add.us.i.5 = add nuw nsw i16 %conv.us.i.5, 1
  %add8.us.i.5 = add nuw nsw i16 %add.us.i.5, %conv7.us.i.5
  %shr.us.i.5 = lshr i16 %add8.us.i.5, 1
  %conv9.us.i.5 = trunc nuw i16 %shr.us.i.5 to i8
  %arrayidx11.us.i.5 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 5
  store i8 %conv9.us.i.5, ptr %arrayidx11.us.i.5, align 1
  %arrayidx.us.i.6 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 6
  %12 = load i8, ptr %arrayidx.us.i.6, align 1
  %conv.us.i.6 = zext i8 %12 to i16
  %arrayidx6.us.i.6 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 6
  %13 = load i8, ptr %arrayidx6.us.i.6, align 1
  %conv7.us.i.6 = zext i8 %13 to i16
  %add.us.i.6 = add nuw nsw i16 %conv.us.i.6, 1
  %add8.us.i.6 = add nuw nsw i16 %add.us.i.6, %conv7.us.i.6
  %shr.us.i.6 = lshr i16 %add8.us.i.6, 1
  %conv9.us.i.6 = trunc nuw i16 %shr.us.i.6 to i8
  %arrayidx11.us.i.6 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 6
  store i8 %conv9.us.i.6, ptr %arrayidx11.us.i.6, align 1
  %arrayidx.us.i.7 = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 7
  %14 = load i8, ptr %arrayidx.us.i.7, align 1
  %conv.us.i.7 = zext i8 %14 to i16
  %arrayidx6.us.i.7 = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 7
  %15 = load i8, ptr %arrayidx6.us.i.7, align 1
  %conv7.us.i.7 = zext i8 %15 to i16
  %add.us.i.7 = add nuw nsw i16 %conv.us.i.7, 1
  %add8.us.i.7 = add nuw nsw i16 %add.us.i.7, %conv7.us.i.7
  %shr.us.i.7 = lshr i16 %add8.us.i.7, 1
  %conv9.us.i.7 = trunc nuw i16 %shr.us.i.7 to i8
  %arrayidx11.us.i.7 = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 7
  store i8 %conv9.us.i.7, ptr %arrayidx11.us.i.7, align 1
  %add.ptr.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %idx.ext.i
  %add.ptr13.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %idx.ext12.i
  %add.ptr15.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %idx.ext14.i
  %inc17.us.i = add nuw nsw i32 %y.033.us.i, 1
  %exitcond36.not.i = icmp eq i32 %inc17.us.i, 8
  br i1 %exitcond36.not.i, label %if.end, label %for.cond1.preheader.us.i

if.else:                                          ; preds = %entry
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %pix1, i32 noundef %i_stride_pix1, ptr noundef %pix2, i32 noundef %i_stride_pix2, ptr noundef %pix3, i32 noundef %i_stride_pix3, i32 noundef 8, i32 noundef 8, i32 noundef %weight)
  br label %if.end

if.end:                                           ; preds = %for.cond1.preheader.us.i, %if.else
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_8x4(ptr nocapture noundef writeonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride_pix3, i32 noundef %weight) #0 {
entry:
  %cmp = icmp eq i32 %weight, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %idx.ext.i = sext i32 %i_stride_pix2 to i64
  %idx.ext12.i = sext i32 %i_stride_pix3 to i64
  %idx.ext14.i = sext i32 %i_stride_pix1 to i64
  %0 = load i8, ptr %pix2, align 1
  %conv.us.i = zext i8 %0 to i16
  %1 = load i8, ptr %pix3, align 1
  %conv7.us.i = zext i8 %1 to i16
  %add.us.i = add nuw nsw i16 %conv.us.i, 1
  %add8.us.i = add nuw nsw i16 %add.us.i, %conv7.us.i
  %shr.us.i = lshr i16 %add8.us.i, 1
  %conv9.us.i = trunc nuw i16 %shr.us.i to i8
  store i8 %conv9.us.i, ptr %pix1, align 1
  %arrayidx.us.i.1 = getelementptr inbounds i8, ptr %pix2, i64 1
  %2 = load i8, ptr %arrayidx.us.i.1, align 1
  %conv.us.i.1 = zext i8 %2 to i16
  %arrayidx6.us.i.1 = getelementptr inbounds i8, ptr %pix3, i64 1
  %3 = load i8, ptr %arrayidx6.us.i.1, align 1
  %conv7.us.i.1 = zext i8 %3 to i16
  %add.us.i.1 = add nuw nsw i16 %conv.us.i.1, 1
  %add8.us.i.1 = add nuw nsw i16 %add.us.i.1, %conv7.us.i.1
  %shr.us.i.1 = lshr i16 %add8.us.i.1, 1
  %conv9.us.i.1 = trunc nuw i16 %shr.us.i.1 to i8
  %arrayidx11.us.i.1 = getelementptr inbounds i8, ptr %pix1, i64 1
  store i8 %conv9.us.i.1, ptr %arrayidx11.us.i.1, align 1
  %arrayidx.us.i.2 = getelementptr inbounds i8, ptr %pix2, i64 2
  %4 = load i8, ptr %arrayidx.us.i.2, align 1
  %conv.us.i.2 = zext i8 %4 to i16
  %arrayidx6.us.i.2 = getelementptr inbounds i8, ptr %pix3, i64 2
  %5 = load i8, ptr %arrayidx6.us.i.2, align 1
  %conv7.us.i.2 = zext i8 %5 to i16
  %add.us.i.2 = add nuw nsw i16 %conv.us.i.2, 1
  %add8.us.i.2 = add nuw nsw i16 %add.us.i.2, %conv7.us.i.2
  %shr.us.i.2 = lshr i16 %add8.us.i.2, 1
  %conv9.us.i.2 = trunc nuw i16 %shr.us.i.2 to i8
  %arrayidx11.us.i.2 = getelementptr inbounds i8, ptr %pix1, i64 2
  store i8 %conv9.us.i.2, ptr %arrayidx11.us.i.2, align 1
  %arrayidx.us.i.3 = getelementptr inbounds i8, ptr %pix2, i64 3
  %6 = load i8, ptr %arrayidx.us.i.3, align 1
  %conv.us.i.3 = zext i8 %6 to i16
  %arrayidx6.us.i.3 = getelementptr inbounds i8, ptr %pix3, i64 3
  %7 = load i8, ptr %arrayidx6.us.i.3, align 1
  %conv7.us.i.3 = zext i8 %7 to i16
  %add.us.i.3 = add nuw nsw i16 %conv.us.i.3, 1
  %add8.us.i.3 = add nuw nsw i16 %add.us.i.3, %conv7.us.i.3
  %shr.us.i.3 = lshr i16 %add8.us.i.3, 1
  %conv9.us.i.3 = trunc nuw i16 %shr.us.i.3 to i8
  %arrayidx11.us.i.3 = getelementptr inbounds i8, ptr %pix1, i64 3
  store i8 %conv9.us.i.3, ptr %arrayidx11.us.i.3, align 1
  %arrayidx.us.i.4 = getelementptr inbounds i8, ptr %pix2, i64 4
  %8 = load i8, ptr %arrayidx.us.i.4, align 1
  %conv.us.i.4 = zext i8 %8 to i16
  %arrayidx6.us.i.4 = getelementptr inbounds i8, ptr %pix3, i64 4
  %9 = load i8, ptr %arrayidx6.us.i.4, align 1
  %conv7.us.i.4 = zext i8 %9 to i16
  %add.us.i.4 = add nuw nsw i16 %conv.us.i.4, 1
  %add8.us.i.4 = add nuw nsw i16 %add.us.i.4, %conv7.us.i.4
  %shr.us.i.4 = lshr i16 %add8.us.i.4, 1
  %conv9.us.i.4 = trunc nuw i16 %shr.us.i.4 to i8
  %arrayidx11.us.i.4 = getelementptr inbounds i8, ptr %pix1, i64 4
  store i8 %conv9.us.i.4, ptr %arrayidx11.us.i.4, align 1
  %arrayidx.us.i.5 = getelementptr inbounds i8, ptr %pix2, i64 5
  %10 = load i8, ptr %arrayidx.us.i.5, align 1
  %conv.us.i.5 = zext i8 %10 to i16
  %arrayidx6.us.i.5 = getelementptr inbounds i8, ptr %pix3, i64 5
  %11 = load i8, ptr %arrayidx6.us.i.5, align 1
  %conv7.us.i.5 = zext i8 %11 to i16
  %add.us.i.5 = add nuw nsw i16 %conv.us.i.5, 1
  %add8.us.i.5 = add nuw nsw i16 %add.us.i.5, %conv7.us.i.5
  %shr.us.i.5 = lshr i16 %add8.us.i.5, 1
  %conv9.us.i.5 = trunc nuw i16 %shr.us.i.5 to i8
  %arrayidx11.us.i.5 = getelementptr inbounds i8, ptr %pix1, i64 5
  store i8 %conv9.us.i.5, ptr %arrayidx11.us.i.5, align 1
  %arrayidx.us.i.6 = getelementptr inbounds i8, ptr %pix2, i64 6
  %12 = load i8, ptr %arrayidx.us.i.6, align 1
  %conv.us.i.6 = zext i8 %12 to i16
  %arrayidx6.us.i.6 = getelementptr inbounds i8, ptr %pix3, i64 6
  %13 = load i8, ptr %arrayidx6.us.i.6, align 1
  %conv7.us.i.6 = zext i8 %13 to i16
  %add.us.i.6 = add nuw nsw i16 %conv.us.i.6, 1
  %add8.us.i.6 = add nuw nsw i16 %add.us.i.6, %conv7.us.i.6
  %shr.us.i.6 = lshr i16 %add8.us.i.6, 1
  %conv9.us.i.6 = trunc nuw i16 %shr.us.i.6 to i8
  %arrayidx11.us.i.6 = getelementptr inbounds i8, ptr %pix1, i64 6
  store i8 %conv9.us.i.6, ptr %arrayidx11.us.i.6, align 1
  %arrayidx.us.i.7 = getelementptr inbounds i8, ptr %pix2, i64 7
  %14 = load i8, ptr %arrayidx.us.i.7, align 1
  %conv.us.i.7 = zext i8 %14 to i16
  %arrayidx6.us.i.7 = getelementptr inbounds i8, ptr %pix3, i64 7
  %15 = load i8, ptr %arrayidx6.us.i.7, align 1
  %conv7.us.i.7 = zext i8 %15 to i16
  %add.us.i.7 = add nuw nsw i16 %conv.us.i.7, 1
  %add8.us.i.7 = add nuw nsw i16 %add.us.i.7, %conv7.us.i.7
  %shr.us.i.7 = lshr i16 %add8.us.i.7, 1
  %conv9.us.i.7 = trunc nuw i16 %shr.us.i.7 to i8
  %arrayidx11.us.i.7 = getelementptr inbounds i8, ptr %pix1, i64 7
  store i8 %conv9.us.i.7, ptr %arrayidx11.us.i.7, align 1
  %add.ptr.us.i = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext.i
  %add.ptr13.us.i = getelementptr inbounds i8, ptr %pix3, i64 %idx.ext12.i
  %add.ptr15.us.i = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext14.i
  %16 = load i8, ptr %add.ptr.us.i, align 1
  %conv.us.i.18 = zext i8 %16 to i16
  %17 = load i8, ptr %add.ptr13.us.i, align 1
  %conv7.us.i.19 = zext i8 %17 to i16
  %add.us.i.110 = add nuw nsw i16 %conv.us.i.18, 1
  %add8.us.i.111 = add nuw nsw i16 %add.us.i.110, %conv7.us.i.19
  %shr.us.i.112 = lshr i16 %add8.us.i.111, 1
  %conv9.us.i.113 = trunc nuw i16 %shr.us.i.112 to i8
  store i8 %conv9.us.i.113, ptr %add.ptr15.us.i, align 1
  %arrayidx.us.i.1.1 = getelementptr inbounds i8, ptr %add.ptr.us.i, i64 1
  %18 = load i8, ptr %arrayidx.us.i.1.1, align 1
  %conv.us.i.1.1 = zext i8 %18 to i16
  %arrayidx6.us.i.1.1 = getelementptr inbounds i8, ptr %add.ptr13.us.i, i64 1
  %19 = load i8, ptr %arrayidx6.us.i.1.1, align 1
  %conv7.us.i.1.1 = zext i8 %19 to i16
  %add.us.i.1.1 = add nuw nsw i16 %conv.us.i.1.1, 1
  %add8.us.i.1.1 = add nuw nsw i16 %add.us.i.1.1, %conv7.us.i.1.1
  %shr.us.i.1.1 = lshr i16 %add8.us.i.1.1, 1
  %conv9.us.i.1.1 = trunc nuw i16 %shr.us.i.1.1 to i8
  %arrayidx11.us.i.1.1 = getelementptr inbounds i8, ptr %add.ptr15.us.i, i64 1
  store i8 %conv9.us.i.1.1, ptr %arrayidx11.us.i.1.1, align 1
  %arrayidx.us.i.2.1 = getelementptr inbounds i8, ptr %add.ptr.us.i, i64 2
  %20 = load i8, ptr %arrayidx.us.i.2.1, align 1
  %conv.us.i.2.1 = zext i8 %20 to i16
  %arrayidx6.us.i.2.1 = getelementptr inbounds i8, ptr %add.ptr13.us.i, i64 2
  %21 = load i8, ptr %arrayidx6.us.i.2.1, align 1
  %conv7.us.i.2.1 = zext i8 %21 to i16
  %add.us.i.2.1 = add nuw nsw i16 %conv.us.i.2.1, 1
  %add8.us.i.2.1 = add nuw nsw i16 %add.us.i.2.1, %conv7.us.i.2.1
  %shr.us.i.2.1 = lshr i16 %add8.us.i.2.1, 1
  %conv9.us.i.2.1 = trunc nuw i16 %shr.us.i.2.1 to i8
  %arrayidx11.us.i.2.1 = getelementptr inbounds i8, ptr %add.ptr15.us.i, i64 2
  store i8 %conv9.us.i.2.1, ptr %arrayidx11.us.i.2.1, align 1
  %arrayidx.us.i.3.1 = getelementptr inbounds i8, ptr %add.ptr.us.i, i64 3
  %22 = load i8, ptr %arrayidx.us.i.3.1, align 1
  %conv.us.i.3.1 = zext i8 %22 to i16
  %arrayidx6.us.i.3.1 = getelementptr inbounds i8, ptr %add.ptr13.us.i, i64 3
  %23 = load i8, ptr %arrayidx6.us.i.3.1, align 1
  %conv7.us.i.3.1 = zext i8 %23 to i16
  %add.us.i.3.1 = add nuw nsw i16 %conv.us.i.3.1, 1
  %add8.us.i.3.1 = add nuw nsw i16 %add.us.i.3.1, %conv7.us.i.3.1
  %shr.us.i.3.1 = lshr i16 %add8.us.i.3.1, 1
  %conv9.us.i.3.1 = trunc nuw i16 %shr.us.i.3.1 to i8
  %arrayidx11.us.i.3.1 = getelementptr inbounds i8, ptr %add.ptr15.us.i, i64 3
  store i8 %conv9.us.i.3.1, ptr %arrayidx11.us.i.3.1, align 1
  %arrayidx.us.i.4.1 = getelementptr inbounds i8, ptr %add.ptr.us.i, i64 4
  %24 = load i8, ptr %arrayidx.us.i.4.1, align 1
  %conv.us.i.4.1 = zext i8 %24 to i16
  %arrayidx6.us.i.4.1 = getelementptr inbounds i8, ptr %add.ptr13.us.i, i64 4
  %25 = load i8, ptr %arrayidx6.us.i.4.1, align 1
  %conv7.us.i.4.1 = zext i8 %25 to i16
  %add.us.i.4.1 = add nuw nsw i16 %conv.us.i.4.1, 1
  %add8.us.i.4.1 = add nuw nsw i16 %add.us.i.4.1, %conv7.us.i.4.1
  %shr.us.i.4.1 = lshr i16 %add8.us.i.4.1, 1
  %conv9.us.i.4.1 = trunc nuw i16 %shr.us.i.4.1 to i8
  %arrayidx11.us.i.4.1 = getelementptr inbounds i8, ptr %add.ptr15.us.i, i64 4
  store i8 %conv9.us.i.4.1, ptr %arrayidx11.us.i.4.1, align 1
  %arrayidx.us.i.5.1 = getelementptr inbounds i8, ptr %add.ptr.us.i, i64 5
  %26 = load i8, ptr %arrayidx.us.i.5.1, align 1
  %conv.us.i.5.1 = zext i8 %26 to i16
  %arrayidx6.us.i.5.1 = getelementptr inbounds i8, ptr %add.ptr13.us.i, i64 5
  %27 = load i8, ptr %arrayidx6.us.i.5.1, align 1
  %conv7.us.i.5.1 = zext i8 %27 to i16
  %add.us.i.5.1 = add nuw nsw i16 %conv.us.i.5.1, 1
  %add8.us.i.5.1 = add nuw nsw i16 %add.us.i.5.1, %conv7.us.i.5.1
  %shr.us.i.5.1 = lshr i16 %add8.us.i.5.1, 1
  %conv9.us.i.5.1 = trunc nuw i16 %shr.us.i.5.1 to i8
  %arrayidx11.us.i.5.1 = getelementptr inbounds i8, ptr %add.ptr15.us.i, i64 5
  store i8 %conv9.us.i.5.1, ptr %arrayidx11.us.i.5.1, align 1
  %arrayidx.us.i.6.1 = getelementptr inbounds i8, ptr %add.ptr.us.i, i64 6
  %28 = load i8, ptr %arrayidx.us.i.6.1, align 1
  %conv.us.i.6.1 = zext i8 %28 to i16
  %arrayidx6.us.i.6.1 = getelementptr inbounds i8, ptr %add.ptr13.us.i, i64 6
  %29 = load i8, ptr %arrayidx6.us.i.6.1, align 1
  %conv7.us.i.6.1 = zext i8 %29 to i16
  %add.us.i.6.1 = add nuw nsw i16 %conv.us.i.6.1, 1
  %add8.us.i.6.1 = add nuw nsw i16 %add.us.i.6.1, %conv7.us.i.6.1
  %shr.us.i.6.1 = lshr i16 %add8.us.i.6.1, 1
  %conv9.us.i.6.1 = trunc nuw i16 %shr.us.i.6.1 to i8
  %arrayidx11.us.i.6.1 = getelementptr inbounds i8, ptr %add.ptr15.us.i, i64 6
  store i8 %conv9.us.i.6.1, ptr %arrayidx11.us.i.6.1, align 1
  %arrayidx.us.i.7.1 = getelementptr inbounds i8, ptr %add.ptr.us.i, i64 7
  %30 = load i8, ptr %arrayidx.us.i.7.1, align 1
  %conv.us.i.7.1 = zext i8 %30 to i16
  %arrayidx6.us.i.7.1 = getelementptr inbounds i8, ptr %add.ptr13.us.i, i64 7
  %31 = load i8, ptr %arrayidx6.us.i.7.1, align 1
  %conv7.us.i.7.1 = zext i8 %31 to i16
  %add.us.i.7.1 = add nuw nsw i16 %conv.us.i.7.1, 1
  %add8.us.i.7.1 = add nuw nsw i16 %add.us.i.7.1, %conv7.us.i.7.1
  %shr.us.i.7.1 = lshr i16 %add8.us.i.7.1, 1
  %conv9.us.i.7.1 = trunc nuw i16 %shr.us.i.7.1 to i8
  %arrayidx11.us.i.7.1 = getelementptr inbounds i8, ptr %add.ptr15.us.i, i64 7
  store i8 %conv9.us.i.7.1, ptr %arrayidx11.us.i.7.1, align 1
  %add.ptr.us.i.1 = getelementptr inbounds i8, ptr %add.ptr.us.i, i64 %idx.ext.i
  %add.ptr13.us.i.1 = getelementptr inbounds i8, ptr %add.ptr13.us.i, i64 %idx.ext12.i
  %add.ptr15.us.i.1 = getelementptr inbounds i8, ptr %add.ptr15.us.i, i64 %idx.ext14.i
  %32 = load i8, ptr %add.ptr.us.i.1, align 1
  %conv.us.i.214 = zext i8 %32 to i16
  %33 = load i8, ptr %add.ptr13.us.i.1, align 1
  %conv7.us.i.215 = zext i8 %33 to i16
  %add.us.i.216 = add nuw nsw i16 %conv.us.i.214, 1
  %add8.us.i.217 = add nuw nsw i16 %add.us.i.216, %conv7.us.i.215
  %shr.us.i.218 = lshr i16 %add8.us.i.217, 1
  %conv9.us.i.219 = trunc nuw i16 %shr.us.i.218 to i8
  store i8 %conv9.us.i.219, ptr %add.ptr15.us.i.1, align 1
  %arrayidx.us.i.1.2 = getelementptr inbounds i8, ptr %add.ptr.us.i.1, i64 1
  %34 = load i8, ptr %arrayidx.us.i.1.2, align 1
  %conv.us.i.1.2 = zext i8 %34 to i16
  %arrayidx6.us.i.1.2 = getelementptr inbounds i8, ptr %add.ptr13.us.i.1, i64 1
  %35 = load i8, ptr %arrayidx6.us.i.1.2, align 1
  %conv7.us.i.1.2 = zext i8 %35 to i16
  %add.us.i.1.2 = add nuw nsw i16 %conv.us.i.1.2, 1
  %add8.us.i.1.2 = add nuw nsw i16 %add.us.i.1.2, %conv7.us.i.1.2
  %shr.us.i.1.2 = lshr i16 %add8.us.i.1.2, 1
  %conv9.us.i.1.2 = trunc nuw i16 %shr.us.i.1.2 to i8
  %arrayidx11.us.i.1.2 = getelementptr inbounds i8, ptr %add.ptr15.us.i.1, i64 1
  store i8 %conv9.us.i.1.2, ptr %arrayidx11.us.i.1.2, align 1
  %arrayidx.us.i.2.2 = getelementptr inbounds i8, ptr %add.ptr.us.i.1, i64 2
  %36 = load i8, ptr %arrayidx.us.i.2.2, align 1
  %conv.us.i.2.2 = zext i8 %36 to i16
  %arrayidx6.us.i.2.2 = getelementptr inbounds i8, ptr %add.ptr13.us.i.1, i64 2
  %37 = load i8, ptr %arrayidx6.us.i.2.2, align 1
  %conv7.us.i.2.2 = zext i8 %37 to i16
  %add.us.i.2.2 = add nuw nsw i16 %conv.us.i.2.2, 1
  %add8.us.i.2.2 = add nuw nsw i16 %add.us.i.2.2, %conv7.us.i.2.2
  %shr.us.i.2.2 = lshr i16 %add8.us.i.2.2, 1
  %conv9.us.i.2.2 = trunc nuw i16 %shr.us.i.2.2 to i8
  %arrayidx11.us.i.2.2 = getelementptr inbounds i8, ptr %add.ptr15.us.i.1, i64 2
  store i8 %conv9.us.i.2.2, ptr %arrayidx11.us.i.2.2, align 1
  %arrayidx.us.i.3.2 = getelementptr inbounds i8, ptr %add.ptr.us.i.1, i64 3
  %38 = load i8, ptr %arrayidx.us.i.3.2, align 1
  %conv.us.i.3.2 = zext i8 %38 to i16
  %arrayidx6.us.i.3.2 = getelementptr inbounds i8, ptr %add.ptr13.us.i.1, i64 3
  %39 = load i8, ptr %arrayidx6.us.i.3.2, align 1
  %conv7.us.i.3.2 = zext i8 %39 to i16
  %add.us.i.3.2 = add nuw nsw i16 %conv.us.i.3.2, 1
  %add8.us.i.3.2 = add nuw nsw i16 %add.us.i.3.2, %conv7.us.i.3.2
  %shr.us.i.3.2 = lshr i16 %add8.us.i.3.2, 1
  %conv9.us.i.3.2 = trunc nuw i16 %shr.us.i.3.2 to i8
  %arrayidx11.us.i.3.2 = getelementptr inbounds i8, ptr %add.ptr15.us.i.1, i64 3
  store i8 %conv9.us.i.3.2, ptr %arrayidx11.us.i.3.2, align 1
  %arrayidx.us.i.4.2 = getelementptr inbounds i8, ptr %add.ptr.us.i.1, i64 4
  %40 = load i8, ptr %arrayidx.us.i.4.2, align 1
  %conv.us.i.4.2 = zext i8 %40 to i16
  %arrayidx6.us.i.4.2 = getelementptr inbounds i8, ptr %add.ptr13.us.i.1, i64 4
  %41 = load i8, ptr %arrayidx6.us.i.4.2, align 1
  %conv7.us.i.4.2 = zext i8 %41 to i16
  %add.us.i.4.2 = add nuw nsw i16 %conv.us.i.4.2, 1
  %add8.us.i.4.2 = add nuw nsw i16 %add.us.i.4.2, %conv7.us.i.4.2
  %shr.us.i.4.2 = lshr i16 %add8.us.i.4.2, 1
  %conv9.us.i.4.2 = trunc nuw i16 %shr.us.i.4.2 to i8
  %arrayidx11.us.i.4.2 = getelementptr inbounds i8, ptr %add.ptr15.us.i.1, i64 4
  store i8 %conv9.us.i.4.2, ptr %arrayidx11.us.i.4.2, align 1
  %arrayidx.us.i.5.2 = getelementptr inbounds i8, ptr %add.ptr.us.i.1, i64 5
  %42 = load i8, ptr %arrayidx.us.i.5.2, align 1
  %conv.us.i.5.2 = zext i8 %42 to i16
  %arrayidx6.us.i.5.2 = getelementptr inbounds i8, ptr %add.ptr13.us.i.1, i64 5
  %43 = load i8, ptr %arrayidx6.us.i.5.2, align 1
  %conv7.us.i.5.2 = zext i8 %43 to i16
  %add.us.i.5.2 = add nuw nsw i16 %conv.us.i.5.2, 1
  %add8.us.i.5.2 = add nuw nsw i16 %add.us.i.5.2, %conv7.us.i.5.2
  %shr.us.i.5.2 = lshr i16 %add8.us.i.5.2, 1
  %conv9.us.i.5.2 = trunc nuw i16 %shr.us.i.5.2 to i8
  %arrayidx11.us.i.5.2 = getelementptr inbounds i8, ptr %add.ptr15.us.i.1, i64 5
  store i8 %conv9.us.i.5.2, ptr %arrayidx11.us.i.5.2, align 1
  %arrayidx.us.i.6.2 = getelementptr inbounds i8, ptr %add.ptr.us.i.1, i64 6
  %44 = load i8, ptr %arrayidx.us.i.6.2, align 1
  %conv.us.i.6.2 = zext i8 %44 to i16
  %arrayidx6.us.i.6.2 = getelementptr inbounds i8, ptr %add.ptr13.us.i.1, i64 6
  %45 = load i8, ptr %arrayidx6.us.i.6.2, align 1
  %conv7.us.i.6.2 = zext i8 %45 to i16
  %add.us.i.6.2 = add nuw nsw i16 %conv.us.i.6.2, 1
  %add8.us.i.6.2 = add nuw nsw i16 %add.us.i.6.2, %conv7.us.i.6.2
  %shr.us.i.6.2 = lshr i16 %add8.us.i.6.2, 1
  %conv9.us.i.6.2 = trunc nuw i16 %shr.us.i.6.2 to i8
  %arrayidx11.us.i.6.2 = getelementptr inbounds i8, ptr %add.ptr15.us.i.1, i64 6
  store i8 %conv9.us.i.6.2, ptr %arrayidx11.us.i.6.2, align 1
  %arrayidx.us.i.7.2 = getelementptr inbounds i8, ptr %add.ptr.us.i.1, i64 7
  %46 = load i8, ptr %arrayidx.us.i.7.2, align 1
  %conv.us.i.7.2 = zext i8 %46 to i16
  %arrayidx6.us.i.7.2 = getelementptr inbounds i8, ptr %add.ptr13.us.i.1, i64 7
  %47 = load i8, ptr %arrayidx6.us.i.7.2, align 1
  %conv7.us.i.7.2 = zext i8 %47 to i16
  %add.us.i.7.2 = add nuw nsw i16 %conv.us.i.7.2, 1
  %add8.us.i.7.2 = add nuw nsw i16 %add.us.i.7.2, %conv7.us.i.7.2
  %shr.us.i.7.2 = lshr i16 %add8.us.i.7.2, 1
  %conv9.us.i.7.2 = trunc nuw i16 %shr.us.i.7.2 to i8
  %arrayidx11.us.i.7.2 = getelementptr inbounds i8, ptr %add.ptr15.us.i.1, i64 7
  store i8 %conv9.us.i.7.2, ptr %arrayidx11.us.i.7.2, align 1
  %add.ptr.us.i.2 = getelementptr inbounds i8, ptr %add.ptr.us.i.1, i64 %idx.ext.i
  %add.ptr13.us.i.2 = getelementptr inbounds i8, ptr %add.ptr13.us.i.1, i64 %idx.ext12.i
  %add.ptr15.us.i.2 = getelementptr inbounds i8, ptr %add.ptr15.us.i.1, i64 %idx.ext14.i
  %48 = load i8, ptr %add.ptr.us.i.2, align 1
  %conv.us.i.320 = zext i8 %48 to i16
  %49 = load i8, ptr %add.ptr13.us.i.2, align 1
  %conv7.us.i.321 = zext i8 %49 to i16
  %add.us.i.322 = add nuw nsw i16 %conv.us.i.320, 1
  %add8.us.i.323 = add nuw nsw i16 %add.us.i.322, %conv7.us.i.321
  %shr.us.i.324 = lshr i16 %add8.us.i.323, 1
  %conv9.us.i.325 = trunc nuw i16 %shr.us.i.324 to i8
  store i8 %conv9.us.i.325, ptr %add.ptr15.us.i.2, align 1
  %arrayidx.us.i.1.3 = getelementptr inbounds i8, ptr %add.ptr.us.i.2, i64 1
  %50 = load i8, ptr %arrayidx.us.i.1.3, align 1
  %conv.us.i.1.3 = zext i8 %50 to i16
  %arrayidx6.us.i.1.3 = getelementptr inbounds i8, ptr %add.ptr13.us.i.2, i64 1
  %51 = load i8, ptr %arrayidx6.us.i.1.3, align 1
  %conv7.us.i.1.3 = zext i8 %51 to i16
  %add.us.i.1.3 = add nuw nsw i16 %conv.us.i.1.3, 1
  %add8.us.i.1.3 = add nuw nsw i16 %add.us.i.1.3, %conv7.us.i.1.3
  %shr.us.i.1.3 = lshr i16 %add8.us.i.1.3, 1
  %conv9.us.i.1.3 = trunc nuw i16 %shr.us.i.1.3 to i8
  %arrayidx11.us.i.1.3 = getelementptr inbounds i8, ptr %add.ptr15.us.i.2, i64 1
  store i8 %conv9.us.i.1.3, ptr %arrayidx11.us.i.1.3, align 1
  %arrayidx.us.i.2.3 = getelementptr inbounds i8, ptr %add.ptr.us.i.2, i64 2
  %52 = load i8, ptr %arrayidx.us.i.2.3, align 1
  %conv.us.i.2.3 = zext i8 %52 to i16
  %arrayidx6.us.i.2.3 = getelementptr inbounds i8, ptr %add.ptr13.us.i.2, i64 2
  %53 = load i8, ptr %arrayidx6.us.i.2.3, align 1
  %conv7.us.i.2.3 = zext i8 %53 to i16
  %add.us.i.2.3 = add nuw nsw i16 %conv.us.i.2.3, 1
  %add8.us.i.2.3 = add nuw nsw i16 %add.us.i.2.3, %conv7.us.i.2.3
  %shr.us.i.2.3 = lshr i16 %add8.us.i.2.3, 1
  %conv9.us.i.2.3 = trunc nuw i16 %shr.us.i.2.3 to i8
  %arrayidx11.us.i.2.3 = getelementptr inbounds i8, ptr %add.ptr15.us.i.2, i64 2
  store i8 %conv9.us.i.2.3, ptr %arrayidx11.us.i.2.3, align 1
  %arrayidx.us.i.3.3 = getelementptr inbounds i8, ptr %add.ptr.us.i.2, i64 3
  %54 = load i8, ptr %arrayidx.us.i.3.3, align 1
  %conv.us.i.3.3 = zext i8 %54 to i16
  %arrayidx6.us.i.3.3 = getelementptr inbounds i8, ptr %add.ptr13.us.i.2, i64 3
  %55 = load i8, ptr %arrayidx6.us.i.3.3, align 1
  %conv7.us.i.3.3 = zext i8 %55 to i16
  %add.us.i.3.3 = add nuw nsw i16 %conv.us.i.3.3, 1
  %add8.us.i.3.3 = add nuw nsw i16 %add.us.i.3.3, %conv7.us.i.3.3
  %shr.us.i.3.3 = lshr i16 %add8.us.i.3.3, 1
  %conv9.us.i.3.3 = trunc nuw i16 %shr.us.i.3.3 to i8
  %arrayidx11.us.i.3.3 = getelementptr inbounds i8, ptr %add.ptr15.us.i.2, i64 3
  store i8 %conv9.us.i.3.3, ptr %arrayidx11.us.i.3.3, align 1
  %arrayidx.us.i.4.3 = getelementptr inbounds i8, ptr %add.ptr.us.i.2, i64 4
  %56 = load i8, ptr %arrayidx.us.i.4.3, align 1
  %conv.us.i.4.3 = zext i8 %56 to i16
  %arrayidx6.us.i.4.3 = getelementptr inbounds i8, ptr %add.ptr13.us.i.2, i64 4
  %57 = load i8, ptr %arrayidx6.us.i.4.3, align 1
  %conv7.us.i.4.3 = zext i8 %57 to i16
  %add.us.i.4.3 = add nuw nsw i16 %conv.us.i.4.3, 1
  %add8.us.i.4.3 = add nuw nsw i16 %add.us.i.4.3, %conv7.us.i.4.3
  %shr.us.i.4.3 = lshr i16 %add8.us.i.4.3, 1
  %conv9.us.i.4.3 = trunc nuw i16 %shr.us.i.4.3 to i8
  %arrayidx11.us.i.4.3 = getelementptr inbounds i8, ptr %add.ptr15.us.i.2, i64 4
  store i8 %conv9.us.i.4.3, ptr %arrayidx11.us.i.4.3, align 1
  %arrayidx.us.i.5.3 = getelementptr inbounds i8, ptr %add.ptr.us.i.2, i64 5
  %58 = load i8, ptr %arrayidx.us.i.5.3, align 1
  %conv.us.i.5.3 = zext i8 %58 to i16
  %arrayidx6.us.i.5.3 = getelementptr inbounds i8, ptr %add.ptr13.us.i.2, i64 5
  %59 = load i8, ptr %arrayidx6.us.i.5.3, align 1
  %conv7.us.i.5.3 = zext i8 %59 to i16
  %add.us.i.5.3 = add nuw nsw i16 %conv.us.i.5.3, 1
  %add8.us.i.5.3 = add nuw nsw i16 %add.us.i.5.3, %conv7.us.i.5.3
  %shr.us.i.5.3 = lshr i16 %add8.us.i.5.3, 1
  %conv9.us.i.5.3 = trunc nuw i16 %shr.us.i.5.3 to i8
  %arrayidx11.us.i.5.3 = getelementptr inbounds i8, ptr %add.ptr15.us.i.2, i64 5
  store i8 %conv9.us.i.5.3, ptr %arrayidx11.us.i.5.3, align 1
  %arrayidx.us.i.6.3 = getelementptr inbounds i8, ptr %add.ptr.us.i.2, i64 6
  %60 = load i8, ptr %arrayidx.us.i.6.3, align 1
  %conv.us.i.6.3 = zext i8 %60 to i16
  %arrayidx6.us.i.6.3 = getelementptr inbounds i8, ptr %add.ptr13.us.i.2, i64 6
  %61 = load i8, ptr %arrayidx6.us.i.6.3, align 1
  %conv7.us.i.6.3 = zext i8 %61 to i16
  %add.us.i.6.3 = add nuw nsw i16 %conv.us.i.6.3, 1
  %add8.us.i.6.3 = add nuw nsw i16 %add.us.i.6.3, %conv7.us.i.6.3
  %shr.us.i.6.3 = lshr i16 %add8.us.i.6.3, 1
  %conv9.us.i.6.3 = trunc nuw i16 %shr.us.i.6.3 to i8
  %arrayidx11.us.i.6.3 = getelementptr inbounds i8, ptr %add.ptr15.us.i.2, i64 6
  store i8 %conv9.us.i.6.3, ptr %arrayidx11.us.i.6.3, align 1
  %arrayidx.us.i.7.3 = getelementptr inbounds i8, ptr %add.ptr.us.i.2, i64 7
  %62 = load i8, ptr %arrayidx.us.i.7.3, align 1
  %conv.us.i.7.3 = zext i8 %62 to i16
  %arrayidx6.us.i.7.3 = getelementptr inbounds i8, ptr %add.ptr13.us.i.2, i64 7
  %63 = load i8, ptr %arrayidx6.us.i.7.3, align 1
  %conv7.us.i.7.3 = zext i8 %63 to i16
  %add.us.i.7.3 = add nuw nsw i16 %conv.us.i.7.3, 1
  %add8.us.i.7.3 = add nuw nsw i16 %add.us.i.7.3, %conv7.us.i.7.3
  %shr.us.i.7.3 = lshr i16 %add8.us.i.7.3, 1
  %conv9.us.i.7.3 = trunc nuw i16 %shr.us.i.7.3 to i8
  %arrayidx11.us.i.7.3 = getelementptr inbounds i8, ptr %add.ptr15.us.i.2, i64 7
  store i8 %conv9.us.i.7.3, ptr %arrayidx11.us.i.7.3, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %pix1, i32 noundef %i_stride_pix1, ptr noundef %pix2, i32 noundef %i_stride_pix2, ptr noundef %pix3, i32 noundef %i_stride_pix3, i32 noundef 8, i32 noundef 4, i32 noundef %weight)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.else
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_4x8(ptr nocapture noundef writeonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride_pix3, i32 noundef %weight) #0 {
entry:
  %cmp = icmp eq i32 %weight, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %idx.ext.i = sext i32 %i_stride_pix2 to i64
  %idx.ext12.i = sext i32 %i_stride_pix3 to i64
  %idx.ext14.i = sext i32 %i_stride_pix1 to i64
  %0 = load i8, ptr %pix2, align 1
  %conv.us.i = zext i8 %0 to i16
  %1 = load i8, ptr %pix3, align 1
  %conv7.us.i = zext i8 %1 to i16
  %add.us.i = add nuw nsw i16 %conv.us.i, 1
  %add8.us.i = add nuw nsw i16 %add.us.i, %conv7.us.i
  %shr.us.i = lshr i16 %add8.us.i, 1
  %conv9.us.i = trunc nuw i16 %shr.us.i to i8
  store i8 %conv9.us.i, ptr %pix1, align 1
  %arrayidx.us.i.1 = getelementptr inbounds i8, ptr %pix2, i64 1
  %2 = load i8, ptr %arrayidx.us.i.1, align 1
  %conv.us.i.1 = zext i8 %2 to i16
  %arrayidx6.us.i.1 = getelementptr inbounds i8, ptr %pix3, i64 1
  %3 = load i8, ptr %arrayidx6.us.i.1, align 1
  %conv7.us.i.1 = zext i8 %3 to i16
  %add.us.i.1 = add nuw nsw i16 %conv.us.i.1, 1
  %add8.us.i.1 = add nuw nsw i16 %add.us.i.1, %conv7.us.i.1
  %shr.us.i.1 = lshr i16 %add8.us.i.1, 1
  %conv9.us.i.1 = trunc nuw i16 %shr.us.i.1 to i8
  %arrayidx11.us.i.1 = getelementptr inbounds i8, ptr %pix1, i64 1
  store i8 %conv9.us.i.1, ptr %arrayidx11.us.i.1, align 1
  %arrayidx.us.i.2 = getelementptr inbounds i8, ptr %pix2, i64 2
  %4 = load i8, ptr %arrayidx.us.i.2, align 1
  %conv.us.i.2 = zext i8 %4 to i16
  %arrayidx6.us.i.2 = getelementptr inbounds i8, ptr %pix3, i64 2
  %5 = load i8, ptr %arrayidx6.us.i.2, align 1
  %conv7.us.i.2 = zext i8 %5 to i16
  %add.us.i.2 = add nuw nsw i16 %conv.us.i.2, 1
  %add8.us.i.2 = add nuw nsw i16 %add.us.i.2, %conv7.us.i.2
  %shr.us.i.2 = lshr i16 %add8.us.i.2, 1
  %conv9.us.i.2 = trunc nuw i16 %shr.us.i.2 to i8
  %arrayidx11.us.i.2 = getelementptr inbounds i8, ptr %pix1, i64 2
  store i8 %conv9.us.i.2, ptr %arrayidx11.us.i.2, align 1
  %arrayidx.us.i.3 = getelementptr inbounds i8, ptr %pix2, i64 3
  %6 = load i8, ptr %arrayidx.us.i.3, align 1
  %conv.us.i.3 = zext i8 %6 to i16
  %arrayidx6.us.i.3 = getelementptr inbounds i8, ptr %pix3, i64 3
  %7 = load i8, ptr %arrayidx6.us.i.3, align 1
  %conv7.us.i.3 = zext i8 %7 to i16
  %add.us.i.3 = add nuw nsw i16 %conv.us.i.3, 1
  %add8.us.i.3 = add nuw nsw i16 %add.us.i.3, %conv7.us.i.3
  %shr.us.i.3 = lshr i16 %add8.us.i.3, 1
  %conv9.us.i.3 = trunc nuw i16 %shr.us.i.3 to i8
  %arrayidx11.us.i.3 = getelementptr inbounds i8, ptr %pix1, i64 3
  store i8 %conv9.us.i.3, ptr %arrayidx11.us.i.3, align 1
  %add.ptr.us.i = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext.i
  %add.ptr13.us.i = getelementptr inbounds i8, ptr %pix3, i64 %idx.ext12.i
  %add.ptr15.us.i = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext14.i
  %8 = load i8, ptr %add.ptr.us.i, align 1
  %conv.us.i.112 = zext i8 %8 to i16
  %9 = load i8, ptr %add.ptr13.us.i, align 1
  %conv7.us.i.113 = zext i8 %9 to i16
  %add.us.i.114 = add nuw nsw i16 %conv.us.i.112, 1
  %add8.us.i.115 = add nuw nsw i16 %add.us.i.114, %conv7.us.i.113
  %shr.us.i.116 = lshr i16 %add8.us.i.115, 1
  %conv9.us.i.117 = trunc nuw i16 %shr.us.i.116 to i8
  store i8 %conv9.us.i.117, ptr %add.ptr15.us.i, align 1
  %arrayidx.us.i.1.1 = getelementptr inbounds i8, ptr %add.ptr.us.i, i64 1
  %10 = load i8, ptr %arrayidx.us.i.1.1, align 1
  %conv.us.i.1.1 = zext i8 %10 to i16
  %arrayidx6.us.i.1.1 = getelementptr inbounds i8, ptr %add.ptr13.us.i, i64 1
  %11 = load i8, ptr %arrayidx6.us.i.1.1, align 1
  %conv7.us.i.1.1 = zext i8 %11 to i16
  %add.us.i.1.1 = add nuw nsw i16 %conv.us.i.1.1, 1
  %add8.us.i.1.1 = add nuw nsw i16 %add.us.i.1.1, %conv7.us.i.1.1
  %shr.us.i.1.1 = lshr i16 %add8.us.i.1.1, 1
  %conv9.us.i.1.1 = trunc nuw i16 %shr.us.i.1.1 to i8
  %arrayidx11.us.i.1.1 = getelementptr inbounds i8, ptr %add.ptr15.us.i, i64 1
  store i8 %conv9.us.i.1.1, ptr %arrayidx11.us.i.1.1, align 1
  %arrayidx.us.i.2.1 = getelementptr inbounds i8, ptr %add.ptr.us.i, i64 2
  %12 = load i8, ptr %arrayidx.us.i.2.1, align 1
  %conv.us.i.2.1 = zext i8 %12 to i16
  %arrayidx6.us.i.2.1 = getelementptr inbounds i8, ptr %add.ptr13.us.i, i64 2
  %13 = load i8, ptr %arrayidx6.us.i.2.1, align 1
  %conv7.us.i.2.1 = zext i8 %13 to i16
  %add.us.i.2.1 = add nuw nsw i16 %conv.us.i.2.1, 1
  %add8.us.i.2.1 = add nuw nsw i16 %add.us.i.2.1, %conv7.us.i.2.1
  %shr.us.i.2.1 = lshr i16 %add8.us.i.2.1, 1
  %conv9.us.i.2.1 = trunc nuw i16 %shr.us.i.2.1 to i8
  %arrayidx11.us.i.2.1 = getelementptr inbounds i8, ptr %add.ptr15.us.i, i64 2
  store i8 %conv9.us.i.2.1, ptr %arrayidx11.us.i.2.1, align 1
  %arrayidx.us.i.3.1 = getelementptr inbounds i8, ptr %add.ptr.us.i, i64 3
  %14 = load i8, ptr %arrayidx.us.i.3.1, align 1
  %conv.us.i.3.1 = zext i8 %14 to i16
  %arrayidx6.us.i.3.1 = getelementptr inbounds i8, ptr %add.ptr13.us.i, i64 3
  %15 = load i8, ptr %arrayidx6.us.i.3.1, align 1
  %conv7.us.i.3.1 = zext i8 %15 to i16
  %add.us.i.3.1 = add nuw nsw i16 %conv.us.i.3.1, 1
  %add8.us.i.3.1 = add nuw nsw i16 %add.us.i.3.1, %conv7.us.i.3.1
  %shr.us.i.3.1 = lshr i16 %add8.us.i.3.1, 1
  %conv9.us.i.3.1 = trunc nuw i16 %shr.us.i.3.1 to i8
  %arrayidx11.us.i.3.1 = getelementptr inbounds i8, ptr %add.ptr15.us.i, i64 3
  store i8 %conv9.us.i.3.1, ptr %arrayidx11.us.i.3.1, align 1
  %add.ptr.us.i.1 = getelementptr inbounds i8, ptr %add.ptr.us.i, i64 %idx.ext.i
  %add.ptr13.us.i.1 = getelementptr inbounds i8, ptr %add.ptr13.us.i, i64 %idx.ext12.i
  %add.ptr15.us.i.1 = getelementptr inbounds i8, ptr %add.ptr15.us.i, i64 %idx.ext14.i
  %16 = load i8, ptr %add.ptr.us.i.1, align 1
  %conv.us.i.218 = zext i8 %16 to i16
  %17 = load i8, ptr %add.ptr13.us.i.1, align 1
  %conv7.us.i.219 = zext i8 %17 to i16
  %add.us.i.220 = add nuw nsw i16 %conv.us.i.218, 1
  %add8.us.i.221 = add nuw nsw i16 %add.us.i.220, %conv7.us.i.219
  %shr.us.i.222 = lshr i16 %add8.us.i.221, 1
  %conv9.us.i.223 = trunc nuw i16 %shr.us.i.222 to i8
  store i8 %conv9.us.i.223, ptr %add.ptr15.us.i.1, align 1
  %arrayidx.us.i.1.2 = getelementptr inbounds i8, ptr %add.ptr.us.i.1, i64 1
  %18 = load i8, ptr %arrayidx.us.i.1.2, align 1
  %conv.us.i.1.2 = zext i8 %18 to i16
  %arrayidx6.us.i.1.2 = getelementptr inbounds i8, ptr %add.ptr13.us.i.1, i64 1
  %19 = load i8, ptr %arrayidx6.us.i.1.2, align 1
  %conv7.us.i.1.2 = zext i8 %19 to i16
  %add.us.i.1.2 = add nuw nsw i16 %conv.us.i.1.2, 1
  %add8.us.i.1.2 = add nuw nsw i16 %add.us.i.1.2, %conv7.us.i.1.2
  %shr.us.i.1.2 = lshr i16 %add8.us.i.1.2, 1
  %conv9.us.i.1.2 = trunc nuw i16 %shr.us.i.1.2 to i8
  %arrayidx11.us.i.1.2 = getelementptr inbounds i8, ptr %add.ptr15.us.i.1, i64 1
  store i8 %conv9.us.i.1.2, ptr %arrayidx11.us.i.1.2, align 1
  %arrayidx.us.i.2.2 = getelementptr inbounds i8, ptr %add.ptr.us.i.1, i64 2
  %20 = load i8, ptr %arrayidx.us.i.2.2, align 1
  %conv.us.i.2.2 = zext i8 %20 to i16
  %arrayidx6.us.i.2.2 = getelementptr inbounds i8, ptr %add.ptr13.us.i.1, i64 2
  %21 = load i8, ptr %arrayidx6.us.i.2.2, align 1
  %conv7.us.i.2.2 = zext i8 %21 to i16
  %add.us.i.2.2 = add nuw nsw i16 %conv.us.i.2.2, 1
  %add8.us.i.2.2 = add nuw nsw i16 %add.us.i.2.2, %conv7.us.i.2.2
  %shr.us.i.2.2 = lshr i16 %add8.us.i.2.2, 1
  %conv9.us.i.2.2 = trunc nuw i16 %shr.us.i.2.2 to i8
  %arrayidx11.us.i.2.2 = getelementptr inbounds i8, ptr %add.ptr15.us.i.1, i64 2
  store i8 %conv9.us.i.2.2, ptr %arrayidx11.us.i.2.2, align 1
  %arrayidx.us.i.3.2 = getelementptr inbounds i8, ptr %add.ptr.us.i.1, i64 3
  %22 = load i8, ptr %arrayidx.us.i.3.2, align 1
  %conv.us.i.3.2 = zext i8 %22 to i16
  %arrayidx6.us.i.3.2 = getelementptr inbounds i8, ptr %add.ptr13.us.i.1, i64 3
  %23 = load i8, ptr %arrayidx6.us.i.3.2, align 1
  %conv7.us.i.3.2 = zext i8 %23 to i16
  %add.us.i.3.2 = add nuw nsw i16 %conv.us.i.3.2, 1
  %add8.us.i.3.2 = add nuw nsw i16 %add.us.i.3.2, %conv7.us.i.3.2
  %shr.us.i.3.2 = lshr i16 %add8.us.i.3.2, 1
  %conv9.us.i.3.2 = trunc nuw i16 %shr.us.i.3.2 to i8
  %arrayidx11.us.i.3.2 = getelementptr inbounds i8, ptr %add.ptr15.us.i.1, i64 3
  store i8 %conv9.us.i.3.2, ptr %arrayidx11.us.i.3.2, align 1
  %add.ptr.us.i.2 = getelementptr inbounds i8, ptr %add.ptr.us.i.1, i64 %idx.ext.i
  %add.ptr13.us.i.2 = getelementptr inbounds i8, ptr %add.ptr13.us.i.1, i64 %idx.ext12.i
  %add.ptr15.us.i.2 = getelementptr inbounds i8, ptr %add.ptr15.us.i.1, i64 %idx.ext14.i
  %24 = load i8, ptr %add.ptr.us.i.2, align 1
  %conv.us.i.324 = zext i8 %24 to i16
  %25 = load i8, ptr %add.ptr13.us.i.2, align 1
  %conv7.us.i.325 = zext i8 %25 to i16
  %add.us.i.326 = add nuw nsw i16 %conv.us.i.324, 1
  %add8.us.i.327 = add nuw nsw i16 %add.us.i.326, %conv7.us.i.325
  %shr.us.i.328 = lshr i16 %add8.us.i.327, 1
  %conv9.us.i.329 = trunc nuw i16 %shr.us.i.328 to i8
  store i8 %conv9.us.i.329, ptr %add.ptr15.us.i.2, align 1
  %arrayidx.us.i.1.3 = getelementptr inbounds i8, ptr %add.ptr.us.i.2, i64 1
  %26 = load i8, ptr %arrayidx.us.i.1.3, align 1
  %conv.us.i.1.3 = zext i8 %26 to i16
  %arrayidx6.us.i.1.3 = getelementptr inbounds i8, ptr %add.ptr13.us.i.2, i64 1
  %27 = load i8, ptr %arrayidx6.us.i.1.3, align 1
  %conv7.us.i.1.3 = zext i8 %27 to i16
  %add.us.i.1.3 = add nuw nsw i16 %conv.us.i.1.3, 1
  %add8.us.i.1.3 = add nuw nsw i16 %add.us.i.1.3, %conv7.us.i.1.3
  %shr.us.i.1.3 = lshr i16 %add8.us.i.1.3, 1
  %conv9.us.i.1.3 = trunc nuw i16 %shr.us.i.1.3 to i8
  %arrayidx11.us.i.1.3 = getelementptr inbounds i8, ptr %add.ptr15.us.i.2, i64 1
  store i8 %conv9.us.i.1.3, ptr %arrayidx11.us.i.1.3, align 1
  %arrayidx.us.i.2.3 = getelementptr inbounds i8, ptr %add.ptr.us.i.2, i64 2
  %28 = load i8, ptr %arrayidx.us.i.2.3, align 1
  %conv.us.i.2.3 = zext i8 %28 to i16
  %arrayidx6.us.i.2.3 = getelementptr inbounds i8, ptr %add.ptr13.us.i.2, i64 2
  %29 = load i8, ptr %arrayidx6.us.i.2.3, align 1
  %conv7.us.i.2.3 = zext i8 %29 to i16
  %add.us.i.2.3 = add nuw nsw i16 %conv.us.i.2.3, 1
  %add8.us.i.2.3 = add nuw nsw i16 %add.us.i.2.3, %conv7.us.i.2.3
  %shr.us.i.2.3 = lshr i16 %add8.us.i.2.3, 1
  %conv9.us.i.2.3 = trunc nuw i16 %shr.us.i.2.3 to i8
  %arrayidx11.us.i.2.3 = getelementptr inbounds i8, ptr %add.ptr15.us.i.2, i64 2
  store i8 %conv9.us.i.2.3, ptr %arrayidx11.us.i.2.3, align 1
  %arrayidx.us.i.3.3 = getelementptr inbounds i8, ptr %add.ptr.us.i.2, i64 3
  %30 = load i8, ptr %arrayidx.us.i.3.3, align 1
  %conv.us.i.3.3 = zext i8 %30 to i16
  %arrayidx6.us.i.3.3 = getelementptr inbounds i8, ptr %add.ptr13.us.i.2, i64 3
  %31 = load i8, ptr %arrayidx6.us.i.3.3, align 1
  %conv7.us.i.3.3 = zext i8 %31 to i16
  %add.us.i.3.3 = add nuw nsw i16 %conv.us.i.3.3, 1
  %add8.us.i.3.3 = add nuw nsw i16 %add.us.i.3.3, %conv7.us.i.3.3
  %shr.us.i.3.3 = lshr i16 %add8.us.i.3.3, 1
  %conv9.us.i.3.3 = trunc nuw i16 %shr.us.i.3.3 to i8
  %arrayidx11.us.i.3.3 = getelementptr inbounds i8, ptr %add.ptr15.us.i.2, i64 3
  store i8 %conv9.us.i.3.3, ptr %arrayidx11.us.i.3.3, align 1
  %add.ptr.us.i.3 = getelementptr inbounds i8, ptr %add.ptr.us.i.2, i64 %idx.ext.i
  %add.ptr13.us.i.3 = getelementptr inbounds i8, ptr %add.ptr13.us.i.2, i64 %idx.ext12.i
  %add.ptr15.us.i.3 = getelementptr inbounds i8, ptr %add.ptr15.us.i.2, i64 %idx.ext14.i
  %32 = load i8, ptr %add.ptr.us.i.3, align 1
  %conv.us.i.4 = zext i8 %32 to i16
  %33 = load i8, ptr %add.ptr13.us.i.3, align 1
  %conv7.us.i.4 = zext i8 %33 to i16
  %add.us.i.4 = add nuw nsw i16 %conv.us.i.4, 1
  %add8.us.i.4 = add nuw nsw i16 %add.us.i.4, %conv7.us.i.4
  %shr.us.i.4 = lshr i16 %add8.us.i.4, 1
  %conv9.us.i.4 = trunc nuw i16 %shr.us.i.4 to i8
  store i8 %conv9.us.i.4, ptr %add.ptr15.us.i.3, align 1
  %arrayidx.us.i.1.4 = getelementptr inbounds i8, ptr %add.ptr.us.i.3, i64 1
  %34 = load i8, ptr %arrayidx.us.i.1.4, align 1
  %conv.us.i.1.4 = zext i8 %34 to i16
  %arrayidx6.us.i.1.4 = getelementptr inbounds i8, ptr %add.ptr13.us.i.3, i64 1
  %35 = load i8, ptr %arrayidx6.us.i.1.4, align 1
  %conv7.us.i.1.4 = zext i8 %35 to i16
  %add.us.i.1.4 = add nuw nsw i16 %conv.us.i.1.4, 1
  %add8.us.i.1.4 = add nuw nsw i16 %add.us.i.1.4, %conv7.us.i.1.4
  %shr.us.i.1.4 = lshr i16 %add8.us.i.1.4, 1
  %conv9.us.i.1.4 = trunc nuw i16 %shr.us.i.1.4 to i8
  %arrayidx11.us.i.1.4 = getelementptr inbounds i8, ptr %add.ptr15.us.i.3, i64 1
  store i8 %conv9.us.i.1.4, ptr %arrayidx11.us.i.1.4, align 1
  %arrayidx.us.i.2.4 = getelementptr inbounds i8, ptr %add.ptr.us.i.3, i64 2
  %36 = load i8, ptr %arrayidx.us.i.2.4, align 1
  %conv.us.i.2.4 = zext i8 %36 to i16
  %arrayidx6.us.i.2.4 = getelementptr inbounds i8, ptr %add.ptr13.us.i.3, i64 2
  %37 = load i8, ptr %arrayidx6.us.i.2.4, align 1
  %conv7.us.i.2.4 = zext i8 %37 to i16
  %add.us.i.2.4 = add nuw nsw i16 %conv.us.i.2.4, 1
  %add8.us.i.2.4 = add nuw nsw i16 %add.us.i.2.4, %conv7.us.i.2.4
  %shr.us.i.2.4 = lshr i16 %add8.us.i.2.4, 1
  %conv9.us.i.2.4 = trunc nuw i16 %shr.us.i.2.4 to i8
  %arrayidx11.us.i.2.4 = getelementptr inbounds i8, ptr %add.ptr15.us.i.3, i64 2
  store i8 %conv9.us.i.2.4, ptr %arrayidx11.us.i.2.4, align 1
  %arrayidx.us.i.3.4 = getelementptr inbounds i8, ptr %add.ptr.us.i.3, i64 3
  %38 = load i8, ptr %arrayidx.us.i.3.4, align 1
  %conv.us.i.3.4 = zext i8 %38 to i16
  %arrayidx6.us.i.3.4 = getelementptr inbounds i8, ptr %add.ptr13.us.i.3, i64 3
  %39 = load i8, ptr %arrayidx6.us.i.3.4, align 1
  %conv7.us.i.3.4 = zext i8 %39 to i16
  %add.us.i.3.4 = add nuw nsw i16 %conv.us.i.3.4, 1
  %add8.us.i.3.4 = add nuw nsw i16 %add.us.i.3.4, %conv7.us.i.3.4
  %shr.us.i.3.4 = lshr i16 %add8.us.i.3.4, 1
  %conv9.us.i.3.4 = trunc nuw i16 %shr.us.i.3.4 to i8
  %arrayidx11.us.i.3.4 = getelementptr inbounds i8, ptr %add.ptr15.us.i.3, i64 3
  store i8 %conv9.us.i.3.4, ptr %arrayidx11.us.i.3.4, align 1
  %add.ptr.us.i.4 = getelementptr inbounds i8, ptr %add.ptr.us.i.3, i64 %idx.ext.i
  %add.ptr13.us.i.4 = getelementptr inbounds i8, ptr %add.ptr13.us.i.3, i64 %idx.ext12.i
  %add.ptr15.us.i.4 = getelementptr inbounds i8, ptr %add.ptr15.us.i.3, i64 %idx.ext14.i
  %40 = load i8, ptr %add.ptr.us.i.4, align 1
  %conv.us.i.5 = zext i8 %40 to i16
  %41 = load i8, ptr %add.ptr13.us.i.4, align 1
  %conv7.us.i.5 = zext i8 %41 to i16
  %add.us.i.5 = add nuw nsw i16 %conv.us.i.5, 1
  %add8.us.i.5 = add nuw nsw i16 %add.us.i.5, %conv7.us.i.5
  %shr.us.i.5 = lshr i16 %add8.us.i.5, 1
  %conv9.us.i.5 = trunc nuw i16 %shr.us.i.5 to i8
  store i8 %conv9.us.i.5, ptr %add.ptr15.us.i.4, align 1
  %arrayidx.us.i.1.5 = getelementptr inbounds i8, ptr %add.ptr.us.i.4, i64 1
  %42 = load i8, ptr %arrayidx.us.i.1.5, align 1
  %conv.us.i.1.5 = zext i8 %42 to i16
  %arrayidx6.us.i.1.5 = getelementptr inbounds i8, ptr %add.ptr13.us.i.4, i64 1
  %43 = load i8, ptr %arrayidx6.us.i.1.5, align 1
  %conv7.us.i.1.5 = zext i8 %43 to i16
  %add.us.i.1.5 = add nuw nsw i16 %conv.us.i.1.5, 1
  %add8.us.i.1.5 = add nuw nsw i16 %add.us.i.1.5, %conv7.us.i.1.5
  %shr.us.i.1.5 = lshr i16 %add8.us.i.1.5, 1
  %conv9.us.i.1.5 = trunc nuw i16 %shr.us.i.1.5 to i8
  %arrayidx11.us.i.1.5 = getelementptr inbounds i8, ptr %add.ptr15.us.i.4, i64 1
  store i8 %conv9.us.i.1.5, ptr %arrayidx11.us.i.1.5, align 1
  %arrayidx.us.i.2.5 = getelementptr inbounds i8, ptr %add.ptr.us.i.4, i64 2
  %44 = load i8, ptr %arrayidx.us.i.2.5, align 1
  %conv.us.i.2.5 = zext i8 %44 to i16
  %arrayidx6.us.i.2.5 = getelementptr inbounds i8, ptr %add.ptr13.us.i.4, i64 2
  %45 = load i8, ptr %arrayidx6.us.i.2.5, align 1
  %conv7.us.i.2.5 = zext i8 %45 to i16
  %add.us.i.2.5 = add nuw nsw i16 %conv.us.i.2.5, 1
  %add8.us.i.2.5 = add nuw nsw i16 %add.us.i.2.5, %conv7.us.i.2.5
  %shr.us.i.2.5 = lshr i16 %add8.us.i.2.5, 1
  %conv9.us.i.2.5 = trunc nuw i16 %shr.us.i.2.5 to i8
  %arrayidx11.us.i.2.5 = getelementptr inbounds i8, ptr %add.ptr15.us.i.4, i64 2
  store i8 %conv9.us.i.2.5, ptr %arrayidx11.us.i.2.5, align 1
  %arrayidx.us.i.3.5 = getelementptr inbounds i8, ptr %add.ptr.us.i.4, i64 3
  %46 = load i8, ptr %arrayidx.us.i.3.5, align 1
  %conv.us.i.3.5 = zext i8 %46 to i16
  %arrayidx6.us.i.3.5 = getelementptr inbounds i8, ptr %add.ptr13.us.i.4, i64 3
  %47 = load i8, ptr %arrayidx6.us.i.3.5, align 1
  %conv7.us.i.3.5 = zext i8 %47 to i16
  %add.us.i.3.5 = add nuw nsw i16 %conv.us.i.3.5, 1
  %add8.us.i.3.5 = add nuw nsw i16 %add.us.i.3.5, %conv7.us.i.3.5
  %shr.us.i.3.5 = lshr i16 %add8.us.i.3.5, 1
  %conv9.us.i.3.5 = trunc nuw i16 %shr.us.i.3.5 to i8
  %arrayidx11.us.i.3.5 = getelementptr inbounds i8, ptr %add.ptr15.us.i.4, i64 3
  store i8 %conv9.us.i.3.5, ptr %arrayidx11.us.i.3.5, align 1
  %add.ptr.us.i.5 = getelementptr inbounds i8, ptr %add.ptr.us.i.4, i64 %idx.ext.i
  %add.ptr13.us.i.5 = getelementptr inbounds i8, ptr %add.ptr13.us.i.4, i64 %idx.ext12.i
  %add.ptr15.us.i.5 = getelementptr inbounds i8, ptr %add.ptr15.us.i.4, i64 %idx.ext14.i
  %48 = load i8, ptr %add.ptr.us.i.5, align 1
  %conv.us.i.6 = zext i8 %48 to i16
  %49 = load i8, ptr %add.ptr13.us.i.5, align 1
  %conv7.us.i.6 = zext i8 %49 to i16
  %add.us.i.6 = add nuw nsw i16 %conv.us.i.6, 1
  %add8.us.i.6 = add nuw nsw i16 %add.us.i.6, %conv7.us.i.6
  %shr.us.i.6 = lshr i16 %add8.us.i.6, 1
  %conv9.us.i.6 = trunc nuw i16 %shr.us.i.6 to i8
  store i8 %conv9.us.i.6, ptr %add.ptr15.us.i.5, align 1
  %arrayidx.us.i.1.6 = getelementptr inbounds i8, ptr %add.ptr.us.i.5, i64 1
  %50 = load i8, ptr %arrayidx.us.i.1.6, align 1
  %conv.us.i.1.6 = zext i8 %50 to i16
  %arrayidx6.us.i.1.6 = getelementptr inbounds i8, ptr %add.ptr13.us.i.5, i64 1
  %51 = load i8, ptr %arrayidx6.us.i.1.6, align 1
  %conv7.us.i.1.6 = zext i8 %51 to i16
  %add.us.i.1.6 = add nuw nsw i16 %conv.us.i.1.6, 1
  %add8.us.i.1.6 = add nuw nsw i16 %add.us.i.1.6, %conv7.us.i.1.6
  %shr.us.i.1.6 = lshr i16 %add8.us.i.1.6, 1
  %conv9.us.i.1.6 = trunc nuw i16 %shr.us.i.1.6 to i8
  %arrayidx11.us.i.1.6 = getelementptr inbounds i8, ptr %add.ptr15.us.i.5, i64 1
  store i8 %conv9.us.i.1.6, ptr %arrayidx11.us.i.1.6, align 1
  %arrayidx.us.i.2.6 = getelementptr inbounds i8, ptr %add.ptr.us.i.5, i64 2
  %52 = load i8, ptr %arrayidx.us.i.2.6, align 1
  %conv.us.i.2.6 = zext i8 %52 to i16
  %arrayidx6.us.i.2.6 = getelementptr inbounds i8, ptr %add.ptr13.us.i.5, i64 2
  %53 = load i8, ptr %arrayidx6.us.i.2.6, align 1
  %conv7.us.i.2.6 = zext i8 %53 to i16
  %add.us.i.2.6 = add nuw nsw i16 %conv.us.i.2.6, 1
  %add8.us.i.2.6 = add nuw nsw i16 %add.us.i.2.6, %conv7.us.i.2.6
  %shr.us.i.2.6 = lshr i16 %add8.us.i.2.6, 1
  %conv9.us.i.2.6 = trunc nuw i16 %shr.us.i.2.6 to i8
  %arrayidx11.us.i.2.6 = getelementptr inbounds i8, ptr %add.ptr15.us.i.5, i64 2
  store i8 %conv9.us.i.2.6, ptr %arrayidx11.us.i.2.6, align 1
  %arrayidx.us.i.3.6 = getelementptr inbounds i8, ptr %add.ptr.us.i.5, i64 3
  %54 = load i8, ptr %arrayidx.us.i.3.6, align 1
  %conv.us.i.3.6 = zext i8 %54 to i16
  %arrayidx6.us.i.3.6 = getelementptr inbounds i8, ptr %add.ptr13.us.i.5, i64 3
  %55 = load i8, ptr %arrayidx6.us.i.3.6, align 1
  %conv7.us.i.3.6 = zext i8 %55 to i16
  %add.us.i.3.6 = add nuw nsw i16 %conv.us.i.3.6, 1
  %add8.us.i.3.6 = add nuw nsw i16 %add.us.i.3.6, %conv7.us.i.3.6
  %shr.us.i.3.6 = lshr i16 %add8.us.i.3.6, 1
  %conv9.us.i.3.6 = trunc nuw i16 %shr.us.i.3.6 to i8
  %arrayidx11.us.i.3.6 = getelementptr inbounds i8, ptr %add.ptr15.us.i.5, i64 3
  store i8 %conv9.us.i.3.6, ptr %arrayidx11.us.i.3.6, align 1
  %add.ptr.us.i.6 = getelementptr inbounds i8, ptr %add.ptr.us.i.5, i64 %idx.ext.i
  %add.ptr13.us.i.6 = getelementptr inbounds i8, ptr %add.ptr13.us.i.5, i64 %idx.ext12.i
  %add.ptr15.us.i.6 = getelementptr inbounds i8, ptr %add.ptr15.us.i.5, i64 %idx.ext14.i
  %56 = load i8, ptr %add.ptr.us.i.6, align 1
  %conv.us.i.7 = zext i8 %56 to i16
  %57 = load i8, ptr %add.ptr13.us.i.6, align 1
  %conv7.us.i.7 = zext i8 %57 to i16
  %add.us.i.7 = add nuw nsw i16 %conv.us.i.7, 1
  %add8.us.i.7 = add nuw nsw i16 %add.us.i.7, %conv7.us.i.7
  %shr.us.i.7 = lshr i16 %add8.us.i.7, 1
  %conv9.us.i.7 = trunc nuw i16 %shr.us.i.7 to i8
  store i8 %conv9.us.i.7, ptr %add.ptr15.us.i.6, align 1
  %arrayidx.us.i.1.7 = getelementptr inbounds i8, ptr %add.ptr.us.i.6, i64 1
  %58 = load i8, ptr %arrayidx.us.i.1.7, align 1
  %conv.us.i.1.7 = zext i8 %58 to i16
  %arrayidx6.us.i.1.7 = getelementptr inbounds i8, ptr %add.ptr13.us.i.6, i64 1
  %59 = load i8, ptr %arrayidx6.us.i.1.7, align 1
  %conv7.us.i.1.7 = zext i8 %59 to i16
  %add.us.i.1.7 = add nuw nsw i16 %conv.us.i.1.7, 1
  %add8.us.i.1.7 = add nuw nsw i16 %add.us.i.1.7, %conv7.us.i.1.7
  %shr.us.i.1.7 = lshr i16 %add8.us.i.1.7, 1
  %conv9.us.i.1.7 = trunc nuw i16 %shr.us.i.1.7 to i8
  %arrayidx11.us.i.1.7 = getelementptr inbounds i8, ptr %add.ptr15.us.i.6, i64 1
  store i8 %conv9.us.i.1.7, ptr %arrayidx11.us.i.1.7, align 1
  %arrayidx.us.i.2.7 = getelementptr inbounds i8, ptr %add.ptr.us.i.6, i64 2
  %60 = load i8, ptr %arrayidx.us.i.2.7, align 1
  %conv.us.i.2.7 = zext i8 %60 to i16
  %arrayidx6.us.i.2.7 = getelementptr inbounds i8, ptr %add.ptr13.us.i.6, i64 2
  %61 = load i8, ptr %arrayidx6.us.i.2.7, align 1
  %conv7.us.i.2.7 = zext i8 %61 to i16
  %add.us.i.2.7 = add nuw nsw i16 %conv.us.i.2.7, 1
  %add8.us.i.2.7 = add nuw nsw i16 %add.us.i.2.7, %conv7.us.i.2.7
  %shr.us.i.2.7 = lshr i16 %add8.us.i.2.7, 1
  %conv9.us.i.2.7 = trunc nuw i16 %shr.us.i.2.7 to i8
  %arrayidx11.us.i.2.7 = getelementptr inbounds i8, ptr %add.ptr15.us.i.6, i64 2
  store i8 %conv9.us.i.2.7, ptr %arrayidx11.us.i.2.7, align 1
  %arrayidx.us.i.3.7 = getelementptr inbounds i8, ptr %add.ptr.us.i.6, i64 3
  %62 = load i8, ptr %arrayidx.us.i.3.7, align 1
  %conv.us.i.3.7 = zext i8 %62 to i16
  %arrayidx6.us.i.3.7 = getelementptr inbounds i8, ptr %add.ptr13.us.i.6, i64 3
  %63 = load i8, ptr %arrayidx6.us.i.3.7, align 1
  %conv7.us.i.3.7 = zext i8 %63 to i16
  %add.us.i.3.7 = add nuw nsw i16 %conv.us.i.3.7, 1
  %add8.us.i.3.7 = add nuw nsw i16 %add.us.i.3.7, %conv7.us.i.3.7
  %shr.us.i.3.7 = lshr i16 %add8.us.i.3.7, 1
  %conv9.us.i.3.7 = trunc nuw i16 %shr.us.i.3.7 to i8
  %arrayidx11.us.i.3.7 = getelementptr inbounds i8, ptr %add.ptr15.us.i.6, i64 3
  store i8 %conv9.us.i.3.7, ptr %arrayidx11.us.i.3.7, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %sub.i = sub nsw i32 64, %weight
  %idx.ext.i8 = sext i32 %i_stride_pix1 to i64
  %idx.ext181.i = sext i32 %i_stride_pix2 to i64
  %idx.ext183.i = sext i32 %i_stride_pix3 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %if.else
  %y.0331.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %if.else ]
  %dst.addr.0330.i = phi ptr [ %add.ptr.i, %for.body.i ], [ %pix1, %if.else ]
  %src1.addr.0329.i = phi ptr [ %add.ptr182.i, %for.body.i ], [ %pix2, %if.else ]
  %src2.addr.0328.i = phi ptr [ %add.ptr184.i, %for.body.i ], [ %pix3, %if.else ]
  %64 = load i8, ptr %src1.addr.0329.i, align 1
  %conv.i = zext i8 %64 to i32
  %mul.i = mul nsw i32 %conv.i, %weight
  %65 = load i8, ptr %src2.addr.0328.i, align 1
  %conv2.i = zext i8 %65 to i32
  %mul3.i = mul nsw i32 %sub.i, %conv2.i
  %add.i = add i32 %mul.i, 32
  %add4.i = add i32 %add.i, %mul3.i
  %shr.i = ashr i32 %add4.i, 6
  %tobool.not.i.i = icmp ult i32 %shr.i, 256
  %66 = icmp sgt i32 %shr.i, 0
  %shr.i.i = sext i1 %66 to i32
  %cond.i.i = select i1 %tobool.not.i.i, i32 %shr.i, i32 %shr.i.i
  %conv.i.i = trunc i32 %cond.i.i to i8
  store i8 %conv.i.i, ptr %dst.addr.0330.i, align 1
  %arrayidx6.i = getelementptr inbounds i8, ptr %src1.addr.0329.i, i64 1
  %67 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %67 to i32
  %mul8.i = mul nsw i32 %conv7.i, %weight
  %arrayidx9.i = getelementptr inbounds i8, ptr %src2.addr.0328.i, i64 1
  %68 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %68 to i32
  %mul11.i = mul nsw i32 %sub.i, %conv10.i
  %add12.i = add i32 %mul8.i, 32
  %add13.i = add i32 %add12.i, %mul11.i
  %shr14.i = ashr i32 %add13.i, 6
  %tobool.not.i267.i = icmp ult i32 %shr14.i, 256
  %69 = icmp sgt i32 %shr14.i, 0
  %shr.i268.i = sext i1 %69 to i32
  %cond.i269.i = select i1 %tobool.not.i267.i, i32 %shr14.i, i32 %shr.i268.i
  %conv.i270.i = trunc i32 %cond.i269.i to i8
  %arrayidx16.i = getelementptr inbounds i8, ptr %dst.addr.0330.i, i64 1
  store i8 %conv.i270.i, ptr %arrayidx16.i, align 1
  %arrayidx19.i = getelementptr inbounds i8, ptr %src1.addr.0329.i, i64 2
  %70 = load i8, ptr %arrayidx19.i, align 1
  %conv20.i = zext i8 %70 to i32
  %mul21.i = mul nsw i32 %conv20.i, %weight
  %arrayidx22.i = getelementptr inbounds i8, ptr %src2.addr.0328.i, i64 2
  %71 = load i8, ptr %arrayidx22.i, align 1
  %conv23.i = zext i8 %71 to i32
  %mul24.i = mul nsw i32 %sub.i, %conv23.i
  %add25.i = add i32 %mul21.i, 32
  %add26.i = add i32 %add25.i, %mul24.i
  %shr27.i = ashr i32 %add26.i, 6
  %tobool.not.i271.i = icmp ult i32 %shr27.i, 256
  %72 = icmp sgt i32 %shr27.i, 0
  %shr.i272.i = sext i1 %72 to i32
  %cond.i273.i = select i1 %tobool.not.i271.i, i32 %shr27.i, i32 %shr.i272.i
  %conv.i274.i = trunc i32 %cond.i273.i to i8
  %arrayidx29.i = getelementptr inbounds i8, ptr %dst.addr.0330.i, i64 2
  store i8 %conv.i274.i, ptr %arrayidx29.i, align 1
  %arrayidx30.i = getelementptr inbounds i8, ptr %src1.addr.0329.i, i64 3
  %73 = load i8, ptr %arrayidx30.i, align 1
  %conv31.i = zext i8 %73 to i32
  %mul32.i = mul nsw i32 %conv31.i, %weight
  %arrayidx33.i = getelementptr inbounds i8, ptr %src2.addr.0328.i, i64 3
  %74 = load i8, ptr %arrayidx33.i, align 1
  %conv34.i = zext i8 %74 to i32
  %mul35.i = mul nsw i32 %sub.i, %conv34.i
  %add36.i = add i32 %mul32.i, 32
  %add37.i = add i32 %add36.i, %mul35.i
  %shr38.i = ashr i32 %add37.i, 6
  %tobool.not.i275.i = icmp ult i32 %shr38.i, 256
  %75 = icmp sgt i32 %shr38.i, 0
  %shr.i276.i = sext i1 %75 to i32
  %cond.i277.i = select i1 %tobool.not.i275.i, i32 %shr38.i, i32 %shr.i276.i
  %conv.i278.i = trunc i32 %cond.i277.i to i8
  %arrayidx40.i = getelementptr inbounds i8, ptr %dst.addr.0330.i, i64 3
  store i8 %conv.i278.i, ptr %arrayidx40.i, align 1
  %inc.i = add nuw nsw i32 %y.0331.i, 1
  %add.ptr.i = getelementptr inbounds i8, ptr %dst.addr.0330.i, i64 %idx.ext.i8
  %add.ptr182.i = getelementptr inbounds i8, ptr %src1.addr.0329.i, i64 %idx.ext181.i
  %add.ptr184.i = getelementptr inbounds i8, ptr %src2.addr.0328.i, i64 %idx.ext183.i
  %exitcond.not.i9 = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i9, label %if.end, label %for.body.i

if.end:                                           ; preds = %for.body.i, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_4x4(ptr nocapture noundef writeonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride_pix3, i32 noundef %weight) #6 {
entry:
  %cmp = icmp eq i32 %weight, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %idx.ext.i = sext i32 %i_stride_pix2 to i64
  %idx.ext12.i = sext i32 %i_stride_pix3 to i64
  %idx.ext14.i = sext i32 %i_stride_pix1 to i64
  %0 = load i8, ptr %pix2, align 1
  %conv.us.i = zext i8 %0 to i16
  %1 = load i8, ptr %pix3, align 1
  %conv7.us.i = zext i8 %1 to i16
  %add.us.i = add nuw nsw i16 %conv.us.i, 1
  %add8.us.i = add nuw nsw i16 %add.us.i, %conv7.us.i
  %shr.us.i = lshr i16 %add8.us.i, 1
  %conv9.us.i = trunc nuw i16 %shr.us.i to i8
  store i8 %conv9.us.i, ptr %pix1, align 1
  %arrayidx.us.i.1 = getelementptr inbounds i8, ptr %pix2, i64 1
  %2 = load i8, ptr %arrayidx.us.i.1, align 1
  %conv.us.i.1 = zext i8 %2 to i16
  %arrayidx6.us.i.1 = getelementptr inbounds i8, ptr %pix3, i64 1
  %3 = load i8, ptr %arrayidx6.us.i.1, align 1
  %conv7.us.i.1 = zext i8 %3 to i16
  %add.us.i.1 = add nuw nsw i16 %conv.us.i.1, 1
  %add8.us.i.1 = add nuw nsw i16 %add.us.i.1, %conv7.us.i.1
  %shr.us.i.1 = lshr i16 %add8.us.i.1, 1
  %conv9.us.i.1 = trunc nuw i16 %shr.us.i.1 to i8
  %arrayidx11.us.i.1 = getelementptr inbounds i8, ptr %pix1, i64 1
  store i8 %conv9.us.i.1, ptr %arrayidx11.us.i.1, align 1
  %arrayidx.us.i.2 = getelementptr inbounds i8, ptr %pix2, i64 2
  %4 = load i8, ptr %arrayidx.us.i.2, align 1
  %conv.us.i.2 = zext i8 %4 to i16
  %arrayidx6.us.i.2 = getelementptr inbounds i8, ptr %pix3, i64 2
  %5 = load i8, ptr %arrayidx6.us.i.2, align 1
  %conv7.us.i.2 = zext i8 %5 to i16
  %add.us.i.2 = add nuw nsw i16 %conv.us.i.2, 1
  %add8.us.i.2 = add nuw nsw i16 %add.us.i.2, %conv7.us.i.2
  %shr.us.i.2 = lshr i16 %add8.us.i.2, 1
  %conv9.us.i.2 = trunc nuw i16 %shr.us.i.2 to i8
  %arrayidx11.us.i.2 = getelementptr inbounds i8, ptr %pix1, i64 2
  store i8 %conv9.us.i.2, ptr %arrayidx11.us.i.2, align 1
  %arrayidx.us.i.3 = getelementptr inbounds i8, ptr %pix2, i64 3
  %6 = load i8, ptr %arrayidx.us.i.3, align 1
  %conv.us.i.3 = zext i8 %6 to i16
  %arrayidx6.us.i.3 = getelementptr inbounds i8, ptr %pix3, i64 3
  %7 = load i8, ptr %arrayidx6.us.i.3, align 1
  %conv7.us.i.3 = zext i8 %7 to i16
  %add.us.i.3 = add nuw nsw i16 %conv.us.i.3, 1
  %add8.us.i.3 = add nuw nsw i16 %add.us.i.3, %conv7.us.i.3
  %shr.us.i.3 = lshr i16 %add8.us.i.3, 1
  %conv9.us.i.3 = trunc nuw i16 %shr.us.i.3 to i8
  %arrayidx11.us.i.3 = getelementptr inbounds i8, ptr %pix1, i64 3
  store i8 %conv9.us.i.3, ptr %arrayidx11.us.i.3, align 1
  %add.ptr.us.i = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext.i
  %add.ptr13.us.i = getelementptr inbounds i8, ptr %pix3, i64 %idx.ext12.i
  %add.ptr15.us.i = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext14.i
  %8 = load i8, ptr %add.ptr.us.i, align 1
  %conv.us.i.112 = zext i8 %8 to i16
  %9 = load i8, ptr %add.ptr13.us.i, align 1
  %conv7.us.i.113 = zext i8 %9 to i16
  %add.us.i.114 = add nuw nsw i16 %conv.us.i.112, 1
  %add8.us.i.115 = add nuw nsw i16 %add.us.i.114, %conv7.us.i.113
  %shr.us.i.116 = lshr i16 %add8.us.i.115, 1
  %conv9.us.i.117 = trunc nuw i16 %shr.us.i.116 to i8
  store i8 %conv9.us.i.117, ptr %add.ptr15.us.i, align 1
  %arrayidx.us.i.1.1 = getelementptr inbounds i8, ptr %add.ptr.us.i, i64 1
  %10 = load i8, ptr %arrayidx.us.i.1.1, align 1
  %conv.us.i.1.1 = zext i8 %10 to i16
  %arrayidx6.us.i.1.1 = getelementptr inbounds i8, ptr %add.ptr13.us.i, i64 1
  %11 = load i8, ptr %arrayidx6.us.i.1.1, align 1
  %conv7.us.i.1.1 = zext i8 %11 to i16
  %add.us.i.1.1 = add nuw nsw i16 %conv.us.i.1.1, 1
  %add8.us.i.1.1 = add nuw nsw i16 %add.us.i.1.1, %conv7.us.i.1.1
  %shr.us.i.1.1 = lshr i16 %add8.us.i.1.1, 1
  %conv9.us.i.1.1 = trunc nuw i16 %shr.us.i.1.1 to i8
  %arrayidx11.us.i.1.1 = getelementptr inbounds i8, ptr %add.ptr15.us.i, i64 1
  store i8 %conv9.us.i.1.1, ptr %arrayidx11.us.i.1.1, align 1
  %arrayidx.us.i.2.1 = getelementptr inbounds i8, ptr %add.ptr.us.i, i64 2
  %12 = load i8, ptr %arrayidx.us.i.2.1, align 1
  %conv.us.i.2.1 = zext i8 %12 to i16
  %arrayidx6.us.i.2.1 = getelementptr inbounds i8, ptr %add.ptr13.us.i, i64 2
  %13 = load i8, ptr %arrayidx6.us.i.2.1, align 1
  %conv7.us.i.2.1 = zext i8 %13 to i16
  %add.us.i.2.1 = add nuw nsw i16 %conv.us.i.2.1, 1
  %add8.us.i.2.1 = add nuw nsw i16 %add.us.i.2.1, %conv7.us.i.2.1
  %shr.us.i.2.1 = lshr i16 %add8.us.i.2.1, 1
  %conv9.us.i.2.1 = trunc nuw i16 %shr.us.i.2.1 to i8
  %arrayidx11.us.i.2.1 = getelementptr inbounds i8, ptr %add.ptr15.us.i, i64 2
  store i8 %conv9.us.i.2.1, ptr %arrayidx11.us.i.2.1, align 1
  %arrayidx.us.i.3.1 = getelementptr inbounds i8, ptr %add.ptr.us.i, i64 3
  %14 = load i8, ptr %arrayidx.us.i.3.1, align 1
  %conv.us.i.3.1 = zext i8 %14 to i16
  %arrayidx6.us.i.3.1 = getelementptr inbounds i8, ptr %add.ptr13.us.i, i64 3
  %15 = load i8, ptr %arrayidx6.us.i.3.1, align 1
  %conv7.us.i.3.1 = zext i8 %15 to i16
  %add.us.i.3.1 = add nuw nsw i16 %conv.us.i.3.1, 1
  %add8.us.i.3.1 = add nuw nsw i16 %add.us.i.3.1, %conv7.us.i.3.1
  %shr.us.i.3.1 = lshr i16 %add8.us.i.3.1, 1
  %conv9.us.i.3.1 = trunc nuw i16 %shr.us.i.3.1 to i8
  %arrayidx11.us.i.3.1 = getelementptr inbounds i8, ptr %add.ptr15.us.i, i64 3
  store i8 %conv9.us.i.3.1, ptr %arrayidx11.us.i.3.1, align 1
  %add.ptr.us.i.1 = getelementptr inbounds i8, ptr %add.ptr.us.i, i64 %idx.ext.i
  %add.ptr13.us.i.1 = getelementptr inbounds i8, ptr %add.ptr13.us.i, i64 %idx.ext12.i
  %add.ptr15.us.i.1 = getelementptr inbounds i8, ptr %add.ptr15.us.i, i64 %idx.ext14.i
  %16 = load i8, ptr %add.ptr.us.i.1, align 1
  %conv.us.i.218 = zext i8 %16 to i16
  %17 = load i8, ptr %add.ptr13.us.i.1, align 1
  %conv7.us.i.219 = zext i8 %17 to i16
  %add.us.i.220 = add nuw nsw i16 %conv.us.i.218, 1
  %add8.us.i.221 = add nuw nsw i16 %add.us.i.220, %conv7.us.i.219
  %shr.us.i.222 = lshr i16 %add8.us.i.221, 1
  %conv9.us.i.223 = trunc nuw i16 %shr.us.i.222 to i8
  store i8 %conv9.us.i.223, ptr %add.ptr15.us.i.1, align 1
  %arrayidx.us.i.1.2 = getelementptr inbounds i8, ptr %add.ptr.us.i.1, i64 1
  %18 = load i8, ptr %arrayidx.us.i.1.2, align 1
  %conv.us.i.1.2 = zext i8 %18 to i16
  %arrayidx6.us.i.1.2 = getelementptr inbounds i8, ptr %add.ptr13.us.i.1, i64 1
  %19 = load i8, ptr %arrayidx6.us.i.1.2, align 1
  %conv7.us.i.1.2 = zext i8 %19 to i16
  %add.us.i.1.2 = add nuw nsw i16 %conv.us.i.1.2, 1
  %add8.us.i.1.2 = add nuw nsw i16 %add.us.i.1.2, %conv7.us.i.1.2
  %shr.us.i.1.2 = lshr i16 %add8.us.i.1.2, 1
  %conv9.us.i.1.2 = trunc nuw i16 %shr.us.i.1.2 to i8
  %arrayidx11.us.i.1.2 = getelementptr inbounds i8, ptr %add.ptr15.us.i.1, i64 1
  store i8 %conv9.us.i.1.2, ptr %arrayidx11.us.i.1.2, align 1
  %arrayidx.us.i.2.2 = getelementptr inbounds i8, ptr %add.ptr.us.i.1, i64 2
  %20 = load i8, ptr %arrayidx.us.i.2.2, align 1
  %conv.us.i.2.2 = zext i8 %20 to i16
  %arrayidx6.us.i.2.2 = getelementptr inbounds i8, ptr %add.ptr13.us.i.1, i64 2
  %21 = load i8, ptr %arrayidx6.us.i.2.2, align 1
  %conv7.us.i.2.2 = zext i8 %21 to i16
  %add.us.i.2.2 = add nuw nsw i16 %conv.us.i.2.2, 1
  %add8.us.i.2.2 = add nuw nsw i16 %add.us.i.2.2, %conv7.us.i.2.2
  %shr.us.i.2.2 = lshr i16 %add8.us.i.2.2, 1
  %conv9.us.i.2.2 = trunc nuw i16 %shr.us.i.2.2 to i8
  %arrayidx11.us.i.2.2 = getelementptr inbounds i8, ptr %add.ptr15.us.i.1, i64 2
  store i8 %conv9.us.i.2.2, ptr %arrayidx11.us.i.2.2, align 1
  %arrayidx.us.i.3.2 = getelementptr inbounds i8, ptr %add.ptr.us.i.1, i64 3
  %22 = load i8, ptr %arrayidx.us.i.3.2, align 1
  %conv.us.i.3.2 = zext i8 %22 to i16
  %arrayidx6.us.i.3.2 = getelementptr inbounds i8, ptr %add.ptr13.us.i.1, i64 3
  %23 = load i8, ptr %arrayidx6.us.i.3.2, align 1
  %conv7.us.i.3.2 = zext i8 %23 to i16
  %add.us.i.3.2 = add nuw nsw i16 %conv.us.i.3.2, 1
  %add8.us.i.3.2 = add nuw nsw i16 %add.us.i.3.2, %conv7.us.i.3.2
  %shr.us.i.3.2 = lshr i16 %add8.us.i.3.2, 1
  %conv9.us.i.3.2 = trunc nuw i16 %shr.us.i.3.2 to i8
  %arrayidx11.us.i.3.2 = getelementptr inbounds i8, ptr %add.ptr15.us.i.1, i64 3
  store i8 %conv9.us.i.3.2, ptr %arrayidx11.us.i.3.2, align 1
  %add.ptr.us.i.2 = getelementptr inbounds i8, ptr %add.ptr.us.i.1, i64 %idx.ext.i
  %add.ptr13.us.i.2 = getelementptr inbounds i8, ptr %add.ptr13.us.i.1, i64 %idx.ext12.i
  %add.ptr15.us.i.2 = getelementptr inbounds i8, ptr %add.ptr15.us.i.1, i64 %idx.ext14.i
  %24 = load i8, ptr %add.ptr.us.i.2, align 1
  %conv.us.i.324 = zext i8 %24 to i16
  %25 = load i8, ptr %add.ptr13.us.i.2, align 1
  %conv7.us.i.325 = zext i8 %25 to i16
  %add.us.i.326 = add nuw nsw i16 %conv.us.i.324, 1
  %add8.us.i.327 = add nuw nsw i16 %add.us.i.326, %conv7.us.i.325
  %shr.us.i.328 = lshr i16 %add8.us.i.327, 1
  %conv9.us.i.329 = trunc nuw i16 %shr.us.i.328 to i8
  store i8 %conv9.us.i.329, ptr %add.ptr15.us.i.2, align 1
  %arrayidx.us.i.1.3 = getelementptr inbounds i8, ptr %add.ptr.us.i.2, i64 1
  %26 = load i8, ptr %arrayidx.us.i.1.3, align 1
  %conv.us.i.1.3 = zext i8 %26 to i16
  %arrayidx6.us.i.1.3 = getelementptr inbounds i8, ptr %add.ptr13.us.i.2, i64 1
  %27 = load i8, ptr %arrayidx6.us.i.1.3, align 1
  %conv7.us.i.1.3 = zext i8 %27 to i16
  %add.us.i.1.3 = add nuw nsw i16 %conv.us.i.1.3, 1
  %add8.us.i.1.3 = add nuw nsw i16 %add.us.i.1.3, %conv7.us.i.1.3
  %shr.us.i.1.3 = lshr i16 %add8.us.i.1.3, 1
  %conv9.us.i.1.3 = trunc nuw i16 %shr.us.i.1.3 to i8
  %arrayidx11.us.i.1.3 = getelementptr inbounds i8, ptr %add.ptr15.us.i.2, i64 1
  store i8 %conv9.us.i.1.3, ptr %arrayidx11.us.i.1.3, align 1
  %arrayidx.us.i.2.3 = getelementptr inbounds i8, ptr %add.ptr.us.i.2, i64 2
  %28 = load i8, ptr %arrayidx.us.i.2.3, align 1
  %conv.us.i.2.3 = zext i8 %28 to i16
  %arrayidx6.us.i.2.3 = getelementptr inbounds i8, ptr %add.ptr13.us.i.2, i64 2
  %29 = load i8, ptr %arrayidx6.us.i.2.3, align 1
  %conv7.us.i.2.3 = zext i8 %29 to i16
  %add.us.i.2.3 = add nuw nsw i16 %conv.us.i.2.3, 1
  %add8.us.i.2.3 = add nuw nsw i16 %add.us.i.2.3, %conv7.us.i.2.3
  %shr.us.i.2.3 = lshr i16 %add8.us.i.2.3, 1
  %conv9.us.i.2.3 = trunc nuw i16 %shr.us.i.2.3 to i8
  %arrayidx11.us.i.2.3 = getelementptr inbounds i8, ptr %add.ptr15.us.i.2, i64 2
  store i8 %conv9.us.i.2.3, ptr %arrayidx11.us.i.2.3, align 1
  %arrayidx.us.i.3.3 = getelementptr inbounds i8, ptr %add.ptr.us.i.2, i64 3
  %30 = load i8, ptr %arrayidx.us.i.3.3, align 1
  %conv.us.i.3.3 = zext i8 %30 to i16
  %arrayidx6.us.i.3.3 = getelementptr inbounds i8, ptr %add.ptr13.us.i.2, i64 3
  %31 = load i8, ptr %arrayidx6.us.i.3.3, align 1
  %conv7.us.i.3.3 = zext i8 %31 to i16
  %add.us.i.3.3 = add nuw nsw i16 %conv.us.i.3.3, 1
  %add8.us.i.3.3 = add nuw nsw i16 %add.us.i.3.3, %conv7.us.i.3.3
  %shr.us.i.3.3 = lshr i16 %add8.us.i.3.3, 1
  %conv9.us.i.3.3 = trunc nuw i16 %shr.us.i.3.3 to i8
  br label %if.end

if.else:                                          ; preds = %entry
  %sub.i = sub nsw i32 64, %weight
  %idx.ext.i8 = sext i32 %i_stride_pix1 to i64
  %idx.ext181.i = sext i32 %i_stride_pix2 to i64
  %idx.ext183.i = sext i32 %i_stride_pix3 to i64
  %32 = load i8, ptr %pix2, align 1
  %conv.i = zext i8 %32 to i32
  %mul.i = mul nsw i32 %conv.i, %weight
  %33 = load i8, ptr %pix3, align 1
  %conv2.i = zext i8 %33 to i32
  %mul3.i = mul nsw i32 %sub.i, %conv2.i
  %add.i = add i32 %mul.i, 32
  %add4.i = add i32 %add.i, %mul3.i
  %shr.i = ashr i32 %add4.i, 6
  %tobool.not.i.i = icmp ult i32 %shr.i, 256
  %34 = icmp sgt i32 %shr.i, 0
  %shr.i.i = sext i1 %34 to i32
  %cond.i.i = select i1 %tobool.not.i.i, i32 %shr.i, i32 %shr.i.i
  %conv.i.i = trunc i32 %cond.i.i to i8
  store i8 %conv.i.i, ptr %pix1, align 1
  %arrayidx6.i = getelementptr inbounds i8, ptr %pix2, i64 1
  %35 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %35 to i32
  %mul8.i = mul nsw i32 %conv7.i, %weight
  %arrayidx9.i = getelementptr inbounds i8, ptr %pix3, i64 1
  %36 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %36 to i32
  %mul11.i = mul nsw i32 %sub.i, %conv10.i
  %add12.i = add i32 %mul8.i, 32
  %add13.i = add i32 %add12.i, %mul11.i
  %shr14.i = ashr i32 %add13.i, 6
  %tobool.not.i267.i = icmp ult i32 %shr14.i, 256
  %37 = icmp sgt i32 %shr14.i, 0
  %shr.i268.i = sext i1 %37 to i32
  %cond.i269.i = select i1 %tobool.not.i267.i, i32 %shr14.i, i32 %shr.i268.i
  %conv.i270.i = trunc i32 %cond.i269.i to i8
  %arrayidx16.i = getelementptr inbounds i8, ptr %pix1, i64 1
  store i8 %conv.i270.i, ptr %arrayidx16.i, align 1
  %arrayidx19.i = getelementptr inbounds i8, ptr %pix2, i64 2
  %38 = load i8, ptr %arrayidx19.i, align 1
  %conv20.i = zext i8 %38 to i32
  %mul21.i = mul nsw i32 %conv20.i, %weight
  %arrayidx22.i = getelementptr inbounds i8, ptr %pix3, i64 2
  %39 = load i8, ptr %arrayidx22.i, align 1
  %conv23.i = zext i8 %39 to i32
  %mul24.i = mul nsw i32 %sub.i, %conv23.i
  %add25.i = add i32 %mul21.i, 32
  %add26.i = add i32 %add25.i, %mul24.i
  %shr27.i = ashr i32 %add26.i, 6
  %tobool.not.i271.i = icmp ult i32 %shr27.i, 256
  %40 = icmp sgt i32 %shr27.i, 0
  %shr.i272.i = sext i1 %40 to i32
  %cond.i273.i = select i1 %tobool.not.i271.i, i32 %shr27.i, i32 %shr.i272.i
  %conv.i274.i = trunc i32 %cond.i273.i to i8
  %arrayidx29.i = getelementptr inbounds i8, ptr %pix1, i64 2
  store i8 %conv.i274.i, ptr %arrayidx29.i, align 1
  %arrayidx30.i = getelementptr inbounds i8, ptr %pix2, i64 3
  %41 = load i8, ptr %arrayidx30.i, align 1
  %conv31.i = zext i8 %41 to i32
  %mul32.i = mul nsw i32 %conv31.i, %weight
  %arrayidx33.i = getelementptr inbounds i8, ptr %pix3, i64 3
  %42 = load i8, ptr %arrayidx33.i, align 1
  %conv34.i = zext i8 %42 to i32
  %mul35.i = mul nsw i32 %sub.i, %conv34.i
  %add36.i = add i32 %mul32.i, 32
  %add37.i = add i32 %add36.i, %mul35.i
  %shr38.i = ashr i32 %add37.i, 6
  %tobool.not.i275.i = icmp ult i32 %shr38.i, 256
  %43 = icmp sgt i32 %shr38.i, 0
  %shr.i276.i = sext i1 %43 to i32
  %cond.i277.i = select i1 %tobool.not.i275.i, i32 %shr38.i, i32 %shr.i276.i
  %conv.i278.i = trunc i32 %cond.i277.i to i8
  %arrayidx40.i = getelementptr inbounds i8, ptr %pix1, i64 3
  store i8 %conv.i278.i, ptr %arrayidx40.i, align 1
  %add.ptr.i = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext.i8
  %add.ptr182.i = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext181.i
  %add.ptr184.i = getelementptr inbounds i8, ptr %pix3, i64 %idx.ext183.i
  %44 = load i8, ptr %add.ptr182.i, align 1
  %conv.i.1 = zext i8 %44 to i32
  %mul.i.1 = mul nsw i32 %conv.i.1, %weight
  %45 = load i8, ptr %add.ptr184.i, align 1
  %conv2.i.1 = zext i8 %45 to i32
  %mul3.i.1 = mul nsw i32 %sub.i, %conv2.i.1
  %add.i.1 = add i32 %mul.i.1, 32
  %add4.i.1 = add i32 %add.i.1, %mul3.i.1
  %shr.i.1 = ashr i32 %add4.i.1, 6
  %tobool.not.i.i.1 = icmp ult i32 %shr.i.1, 256
  %46 = icmp sgt i32 %shr.i.1, 0
  %shr.i.i.1 = sext i1 %46 to i32
  %cond.i.i.1 = select i1 %tobool.not.i.i.1, i32 %shr.i.1, i32 %shr.i.i.1
  %conv.i.i.1 = trunc i32 %cond.i.i.1 to i8
  store i8 %conv.i.i.1, ptr %add.ptr.i, align 1
  %arrayidx6.i.1 = getelementptr inbounds i8, ptr %add.ptr182.i, i64 1
  %47 = load i8, ptr %arrayidx6.i.1, align 1
  %conv7.i.1 = zext i8 %47 to i32
  %mul8.i.1 = mul nsw i32 %conv7.i.1, %weight
  %arrayidx9.i.1 = getelementptr inbounds i8, ptr %add.ptr184.i, i64 1
  %48 = load i8, ptr %arrayidx9.i.1, align 1
  %conv10.i.1 = zext i8 %48 to i32
  %mul11.i.1 = mul nsw i32 %sub.i, %conv10.i.1
  %add12.i.1 = add i32 %mul8.i.1, 32
  %add13.i.1 = add i32 %add12.i.1, %mul11.i.1
  %shr14.i.1 = ashr i32 %add13.i.1, 6
  %tobool.not.i267.i.1 = icmp ult i32 %shr14.i.1, 256
  %49 = icmp sgt i32 %shr14.i.1, 0
  %shr.i268.i.1 = sext i1 %49 to i32
  %cond.i269.i.1 = select i1 %tobool.not.i267.i.1, i32 %shr14.i.1, i32 %shr.i268.i.1
  %conv.i270.i.1 = trunc i32 %cond.i269.i.1 to i8
  %arrayidx16.i.1 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1
  store i8 %conv.i270.i.1, ptr %arrayidx16.i.1, align 1
  %arrayidx19.i.1 = getelementptr inbounds i8, ptr %add.ptr182.i, i64 2
  %50 = load i8, ptr %arrayidx19.i.1, align 1
  %conv20.i.1 = zext i8 %50 to i32
  %mul21.i.1 = mul nsw i32 %conv20.i.1, %weight
  %arrayidx22.i.1 = getelementptr inbounds i8, ptr %add.ptr184.i, i64 2
  %51 = load i8, ptr %arrayidx22.i.1, align 1
  %conv23.i.1 = zext i8 %51 to i32
  %mul24.i.1 = mul nsw i32 %sub.i, %conv23.i.1
  %add25.i.1 = add i32 %mul21.i.1, 32
  %add26.i.1 = add i32 %add25.i.1, %mul24.i.1
  %shr27.i.1 = ashr i32 %add26.i.1, 6
  %tobool.not.i271.i.1 = icmp ult i32 %shr27.i.1, 256
  %52 = icmp sgt i32 %shr27.i.1, 0
  %shr.i272.i.1 = sext i1 %52 to i32
  %cond.i273.i.1 = select i1 %tobool.not.i271.i.1, i32 %shr27.i.1, i32 %shr.i272.i.1
  %conv.i274.i.1 = trunc i32 %cond.i273.i.1 to i8
  %arrayidx29.i.1 = getelementptr inbounds i8, ptr %add.ptr.i, i64 2
  store i8 %conv.i274.i.1, ptr %arrayidx29.i.1, align 1
  %arrayidx30.i.1 = getelementptr inbounds i8, ptr %add.ptr182.i, i64 3
  %53 = load i8, ptr %arrayidx30.i.1, align 1
  %conv31.i.1 = zext i8 %53 to i32
  %mul32.i.1 = mul nsw i32 %conv31.i.1, %weight
  %arrayidx33.i.1 = getelementptr inbounds i8, ptr %add.ptr184.i, i64 3
  %54 = load i8, ptr %arrayidx33.i.1, align 1
  %conv34.i.1 = zext i8 %54 to i32
  %mul35.i.1 = mul nsw i32 %sub.i, %conv34.i.1
  %add36.i.1 = add i32 %mul32.i.1, 32
  %add37.i.1 = add i32 %add36.i.1, %mul35.i.1
  %shr38.i.1 = ashr i32 %add37.i.1, 6
  %tobool.not.i275.i.1 = icmp ult i32 %shr38.i.1, 256
  %55 = icmp sgt i32 %shr38.i.1, 0
  %shr.i276.i.1 = sext i1 %55 to i32
  %cond.i277.i.1 = select i1 %tobool.not.i275.i.1, i32 %shr38.i.1, i32 %shr.i276.i.1
  %conv.i278.i.1 = trunc i32 %cond.i277.i.1 to i8
  %arrayidx40.i.1 = getelementptr inbounds i8, ptr %add.ptr.i, i64 3
  store i8 %conv.i278.i.1, ptr %arrayidx40.i.1, align 1
  %add.ptr.i.1 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext.i8
  %add.ptr182.i.1 = getelementptr inbounds i8, ptr %add.ptr182.i, i64 %idx.ext181.i
  %add.ptr184.i.1 = getelementptr inbounds i8, ptr %add.ptr184.i, i64 %idx.ext183.i
  %56 = load i8, ptr %add.ptr182.i.1, align 1
  %conv.i.2 = zext i8 %56 to i32
  %mul.i.2 = mul nsw i32 %conv.i.2, %weight
  %57 = load i8, ptr %add.ptr184.i.1, align 1
  %conv2.i.2 = zext i8 %57 to i32
  %mul3.i.2 = mul nsw i32 %sub.i, %conv2.i.2
  %add.i.2 = add i32 %mul.i.2, 32
  %add4.i.2 = add i32 %add.i.2, %mul3.i.2
  %shr.i.2 = ashr i32 %add4.i.2, 6
  %tobool.not.i.i.2 = icmp ult i32 %shr.i.2, 256
  %58 = icmp sgt i32 %shr.i.2, 0
  %shr.i.i.2 = sext i1 %58 to i32
  %cond.i.i.2 = select i1 %tobool.not.i.i.2, i32 %shr.i.2, i32 %shr.i.i.2
  %conv.i.i.2 = trunc i32 %cond.i.i.2 to i8
  store i8 %conv.i.i.2, ptr %add.ptr.i.1, align 1
  %arrayidx6.i.2 = getelementptr inbounds i8, ptr %add.ptr182.i.1, i64 1
  %59 = load i8, ptr %arrayidx6.i.2, align 1
  %conv7.i.2 = zext i8 %59 to i32
  %mul8.i.2 = mul nsw i32 %conv7.i.2, %weight
  %arrayidx9.i.2 = getelementptr inbounds i8, ptr %add.ptr184.i.1, i64 1
  %60 = load i8, ptr %arrayidx9.i.2, align 1
  %conv10.i.2 = zext i8 %60 to i32
  %mul11.i.2 = mul nsw i32 %sub.i, %conv10.i.2
  %add12.i.2 = add i32 %mul8.i.2, 32
  %add13.i.2 = add i32 %add12.i.2, %mul11.i.2
  %shr14.i.2 = ashr i32 %add13.i.2, 6
  %tobool.not.i267.i.2 = icmp ult i32 %shr14.i.2, 256
  %61 = icmp sgt i32 %shr14.i.2, 0
  %shr.i268.i.2 = sext i1 %61 to i32
  %cond.i269.i.2 = select i1 %tobool.not.i267.i.2, i32 %shr14.i.2, i32 %shr.i268.i.2
  %conv.i270.i.2 = trunc i32 %cond.i269.i.2 to i8
  %arrayidx16.i.2 = getelementptr inbounds i8, ptr %add.ptr.i.1, i64 1
  store i8 %conv.i270.i.2, ptr %arrayidx16.i.2, align 1
  %arrayidx19.i.2 = getelementptr inbounds i8, ptr %add.ptr182.i.1, i64 2
  %62 = load i8, ptr %arrayidx19.i.2, align 1
  %conv20.i.2 = zext i8 %62 to i32
  %mul21.i.2 = mul nsw i32 %conv20.i.2, %weight
  %arrayidx22.i.2 = getelementptr inbounds i8, ptr %add.ptr184.i.1, i64 2
  %63 = load i8, ptr %arrayidx22.i.2, align 1
  %conv23.i.2 = zext i8 %63 to i32
  %mul24.i.2 = mul nsw i32 %sub.i, %conv23.i.2
  %add25.i.2 = add i32 %mul21.i.2, 32
  %add26.i.2 = add i32 %add25.i.2, %mul24.i.2
  %shr27.i.2 = ashr i32 %add26.i.2, 6
  %tobool.not.i271.i.2 = icmp ult i32 %shr27.i.2, 256
  %64 = icmp sgt i32 %shr27.i.2, 0
  %shr.i272.i.2 = sext i1 %64 to i32
  %cond.i273.i.2 = select i1 %tobool.not.i271.i.2, i32 %shr27.i.2, i32 %shr.i272.i.2
  %conv.i274.i.2 = trunc i32 %cond.i273.i.2 to i8
  %arrayidx29.i.2 = getelementptr inbounds i8, ptr %add.ptr.i.1, i64 2
  store i8 %conv.i274.i.2, ptr %arrayidx29.i.2, align 1
  %arrayidx30.i.2 = getelementptr inbounds i8, ptr %add.ptr182.i.1, i64 3
  %65 = load i8, ptr %arrayidx30.i.2, align 1
  %conv31.i.2 = zext i8 %65 to i32
  %mul32.i.2 = mul nsw i32 %conv31.i.2, %weight
  %arrayidx33.i.2 = getelementptr inbounds i8, ptr %add.ptr184.i.1, i64 3
  %66 = load i8, ptr %arrayidx33.i.2, align 1
  %conv34.i.2 = zext i8 %66 to i32
  %mul35.i.2 = mul nsw i32 %sub.i, %conv34.i.2
  %add36.i.2 = add i32 %mul32.i.2, 32
  %add37.i.2 = add i32 %add36.i.2, %mul35.i.2
  %shr38.i.2 = ashr i32 %add37.i.2, 6
  %tobool.not.i275.i.2 = icmp ult i32 %shr38.i.2, 256
  %67 = icmp sgt i32 %shr38.i.2, 0
  %shr.i276.i.2 = sext i1 %67 to i32
  %cond.i277.i.2 = select i1 %tobool.not.i275.i.2, i32 %shr38.i.2, i32 %shr.i276.i.2
  %conv.i278.i.2 = trunc i32 %cond.i277.i.2 to i8
  %arrayidx40.i.2 = getelementptr inbounds i8, ptr %add.ptr.i.1, i64 3
  store i8 %conv.i278.i.2, ptr %arrayidx40.i.2, align 1
  %add.ptr.i.2 = getelementptr inbounds i8, ptr %add.ptr.i.1, i64 %idx.ext.i8
  %add.ptr182.i.2 = getelementptr inbounds i8, ptr %add.ptr182.i.1, i64 %idx.ext181.i
  %add.ptr184.i.2 = getelementptr inbounds i8, ptr %add.ptr184.i.1, i64 %idx.ext183.i
  %68 = load i8, ptr %add.ptr182.i.2, align 1
  %conv.i.3 = zext i8 %68 to i32
  %mul.i.3 = mul nsw i32 %conv.i.3, %weight
  %69 = load i8, ptr %add.ptr184.i.2, align 1
  %conv2.i.3 = zext i8 %69 to i32
  %mul3.i.3 = mul nsw i32 %sub.i, %conv2.i.3
  %add.i.3 = add i32 %mul.i.3, 32
  %add4.i.3 = add i32 %add.i.3, %mul3.i.3
  %shr.i.3 = ashr i32 %add4.i.3, 6
  %tobool.not.i.i.3 = icmp ult i32 %shr.i.3, 256
  %70 = icmp sgt i32 %shr.i.3, 0
  %shr.i.i.3 = sext i1 %70 to i32
  %cond.i.i.3 = select i1 %tobool.not.i.i.3, i32 %shr.i.3, i32 %shr.i.i.3
  %conv.i.i.3 = trunc i32 %cond.i.i.3 to i8
  store i8 %conv.i.i.3, ptr %add.ptr.i.2, align 1
  %arrayidx6.i.3 = getelementptr inbounds i8, ptr %add.ptr182.i.2, i64 1
  %71 = load i8, ptr %arrayidx6.i.3, align 1
  %conv7.i.3 = zext i8 %71 to i32
  %mul8.i.3 = mul nsw i32 %conv7.i.3, %weight
  %arrayidx9.i.3 = getelementptr inbounds i8, ptr %add.ptr184.i.2, i64 1
  %72 = load i8, ptr %arrayidx9.i.3, align 1
  %conv10.i.3 = zext i8 %72 to i32
  %mul11.i.3 = mul nsw i32 %sub.i, %conv10.i.3
  %add12.i.3 = add i32 %mul8.i.3, 32
  %add13.i.3 = add i32 %add12.i.3, %mul11.i.3
  %shr14.i.3 = ashr i32 %add13.i.3, 6
  %tobool.not.i267.i.3 = icmp ult i32 %shr14.i.3, 256
  %73 = icmp sgt i32 %shr14.i.3, 0
  %shr.i268.i.3 = sext i1 %73 to i32
  %cond.i269.i.3 = select i1 %tobool.not.i267.i.3, i32 %shr14.i.3, i32 %shr.i268.i.3
  %conv.i270.i.3 = trunc i32 %cond.i269.i.3 to i8
  %arrayidx16.i.3 = getelementptr inbounds i8, ptr %add.ptr.i.2, i64 1
  store i8 %conv.i270.i.3, ptr %arrayidx16.i.3, align 1
  %arrayidx19.i.3 = getelementptr inbounds i8, ptr %add.ptr182.i.2, i64 2
  %74 = load i8, ptr %arrayidx19.i.3, align 1
  %conv20.i.3 = zext i8 %74 to i32
  %mul21.i.3 = mul nsw i32 %conv20.i.3, %weight
  %arrayidx22.i.3 = getelementptr inbounds i8, ptr %add.ptr184.i.2, i64 2
  %75 = load i8, ptr %arrayidx22.i.3, align 1
  %conv23.i.3 = zext i8 %75 to i32
  %mul24.i.3 = mul nsw i32 %sub.i, %conv23.i.3
  %add25.i.3 = add i32 %mul21.i.3, 32
  %add26.i.3 = add i32 %add25.i.3, %mul24.i.3
  %shr27.i.3 = ashr i32 %add26.i.3, 6
  %tobool.not.i271.i.3 = icmp ult i32 %shr27.i.3, 256
  %76 = icmp sgt i32 %shr27.i.3, 0
  %shr.i272.i.3 = sext i1 %76 to i32
  %cond.i273.i.3 = select i1 %tobool.not.i271.i.3, i32 %shr27.i.3, i32 %shr.i272.i.3
  %conv.i274.i.3 = trunc i32 %cond.i273.i.3 to i8
  %arrayidx29.i.3 = getelementptr inbounds i8, ptr %add.ptr.i.2, i64 2
  store i8 %conv.i274.i.3, ptr %arrayidx29.i.3, align 1
  %arrayidx30.i.3 = getelementptr inbounds i8, ptr %add.ptr182.i.2, i64 3
  %77 = load i8, ptr %arrayidx30.i.3, align 1
  %conv31.i.3 = zext i8 %77 to i32
  %mul32.i.3 = mul nsw i32 %conv31.i.3, %weight
  %arrayidx33.i.3 = getelementptr inbounds i8, ptr %add.ptr184.i.2, i64 3
  %78 = load i8, ptr %arrayidx33.i.3, align 1
  %conv34.i.3 = zext i8 %78 to i32
  %mul35.i.3 = mul nsw i32 %sub.i, %conv34.i.3
  %add36.i.3 = add i32 %mul32.i.3, 32
  %add37.i.3 = add i32 %add36.i.3, %mul35.i.3
  %shr38.i.3 = ashr i32 %add37.i.3, 6
  %tobool.not.i275.i.3 = icmp ult i32 %shr38.i.3, 256
  %79 = icmp sgt i32 %shr38.i.3, 0
  %shr.i276.i.3 = sext i1 %79 to i32
  %cond.i277.i.3 = select i1 %tobool.not.i275.i.3, i32 %shr38.i.3, i32 %shr.i276.i.3
  %conv.i278.i.3 = trunc i32 %cond.i277.i.3 to i8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %add.ptr.i.2.sink = phi ptr [ %add.ptr.i.2, %if.else ], [ %add.ptr15.us.i.2, %if.then ]
  %conv.i278.i.3.sink = phi i8 [ %conv.i278.i.3, %if.else ], [ %conv9.us.i.3.3, %if.then ]
  %arrayidx40.i.3 = getelementptr inbounds i8, ptr %add.ptr.i.2.sink, i64 3
  store i8 %conv.i278.i.3.sink, ptr %arrayidx40.i.3, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @pixel_avg_4x2(ptr nocapture noundef writeonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride_pix3, i32 noundef %weight) #7 {
entry:
  %cmp = icmp eq i32 %weight, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %idx.ext.i = sext i32 %i_stride_pix2 to i64
  %idx.ext12.i = sext i32 %i_stride_pix3 to i64
  %idx.ext14.i = sext i32 %i_stride_pix1 to i64
  %0 = load i8, ptr %pix2, align 1
  %conv.us.i = zext i8 %0 to i16
  %1 = load i8, ptr %pix3, align 1
  %conv7.us.i = zext i8 %1 to i16
  %add.us.i = add nuw nsw i16 %conv.us.i, 1
  %add8.us.i = add nuw nsw i16 %add.us.i, %conv7.us.i
  %shr.us.i = lshr i16 %add8.us.i, 1
  %conv9.us.i = trunc nuw i16 %shr.us.i to i8
  store i8 %conv9.us.i, ptr %pix1, align 1
  %arrayidx.us.i.1 = getelementptr inbounds i8, ptr %pix2, i64 1
  %2 = load i8, ptr %arrayidx.us.i.1, align 1
  %conv.us.i.1 = zext i8 %2 to i16
  %arrayidx6.us.i.1 = getelementptr inbounds i8, ptr %pix3, i64 1
  %3 = load i8, ptr %arrayidx6.us.i.1, align 1
  %conv7.us.i.1 = zext i8 %3 to i16
  %add.us.i.1 = add nuw nsw i16 %conv.us.i.1, 1
  %add8.us.i.1 = add nuw nsw i16 %add.us.i.1, %conv7.us.i.1
  %shr.us.i.1 = lshr i16 %add8.us.i.1, 1
  %conv9.us.i.1 = trunc nuw i16 %shr.us.i.1 to i8
  %arrayidx11.us.i.1 = getelementptr inbounds i8, ptr %pix1, i64 1
  store i8 %conv9.us.i.1, ptr %arrayidx11.us.i.1, align 1
  %arrayidx.us.i.2 = getelementptr inbounds i8, ptr %pix2, i64 2
  %4 = load i8, ptr %arrayidx.us.i.2, align 1
  %conv.us.i.2 = zext i8 %4 to i16
  %arrayidx6.us.i.2 = getelementptr inbounds i8, ptr %pix3, i64 2
  %5 = load i8, ptr %arrayidx6.us.i.2, align 1
  %conv7.us.i.2 = zext i8 %5 to i16
  %add.us.i.2 = add nuw nsw i16 %conv.us.i.2, 1
  %add8.us.i.2 = add nuw nsw i16 %add.us.i.2, %conv7.us.i.2
  %shr.us.i.2 = lshr i16 %add8.us.i.2, 1
  %conv9.us.i.2 = trunc nuw i16 %shr.us.i.2 to i8
  %arrayidx11.us.i.2 = getelementptr inbounds i8, ptr %pix1, i64 2
  store i8 %conv9.us.i.2, ptr %arrayidx11.us.i.2, align 1
  %arrayidx.us.i.3 = getelementptr inbounds i8, ptr %pix2, i64 3
  %6 = load i8, ptr %arrayidx.us.i.3, align 1
  %conv.us.i.3 = zext i8 %6 to i16
  %arrayidx6.us.i.3 = getelementptr inbounds i8, ptr %pix3, i64 3
  %7 = load i8, ptr %arrayidx6.us.i.3, align 1
  %conv7.us.i.3 = zext i8 %7 to i16
  %add.us.i.3 = add nuw nsw i16 %conv.us.i.3, 1
  %add8.us.i.3 = add nuw nsw i16 %add.us.i.3, %conv7.us.i.3
  %shr.us.i.3 = lshr i16 %add8.us.i.3, 1
  %conv9.us.i.3 = trunc nuw i16 %shr.us.i.3 to i8
  %arrayidx11.us.i.3 = getelementptr inbounds i8, ptr %pix1, i64 3
  store i8 %conv9.us.i.3, ptr %arrayidx11.us.i.3, align 1
  %add.ptr.us.i = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext.i
  %add.ptr13.us.i = getelementptr inbounds i8, ptr %pix3, i64 %idx.ext12.i
  %add.ptr15.us.i = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext14.i
  %8 = load i8, ptr %add.ptr.us.i, align 1
  %conv.us.i.112 = zext i8 %8 to i16
  %9 = load i8, ptr %add.ptr13.us.i, align 1
  %conv7.us.i.113 = zext i8 %9 to i16
  %add.us.i.114 = add nuw nsw i16 %conv.us.i.112, 1
  %add8.us.i.115 = add nuw nsw i16 %add.us.i.114, %conv7.us.i.113
  %shr.us.i.116 = lshr i16 %add8.us.i.115, 1
  %conv9.us.i.117 = trunc nuw i16 %shr.us.i.116 to i8
  store i8 %conv9.us.i.117, ptr %add.ptr15.us.i, align 1
  %arrayidx.us.i.1.1 = getelementptr inbounds i8, ptr %add.ptr.us.i, i64 1
  %10 = load i8, ptr %arrayidx.us.i.1.1, align 1
  %conv.us.i.1.1 = zext i8 %10 to i16
  %arrayidx6.us.i.1.1 = getelementptr inbounds i8, ptr %add.ptr13.us.i, i64 1
  %11 = load i8, ptr %arrayidx6.us.i.1.1, align 1
  %conv7.us.i.1.1 = zext i8 %11 to i16
  %add.us.i.1.1 = add nuw nsw i16 %conv.us.i.1.1, 1
  %add8.us.i.1.1 = add nuw nsw i16 %add.us.i.1.1, %conv7.us.i.1.1
  %shr.us.i.1.1 = lshr i16 %add8.us.i.1.1, 1
  %conv9.us.i.1.1 = trunc nuw i16 %shr.us.i.1.1 to i8
  %arrayidx11.us.i.1.1 = getelementptr inbounds i8, ptr %add.ptr15.us.i, i64 1
  store i8 %conv9.us.i.1.1, ptr %arrayidx11.us.i.1.1, align 1
  %arrayidx.us.i.2.1 = getelementptr inbounds i8, ptr %add.ptr.us.i, i64 2
  %12 = load i8, ptr %arrayidx.us.i.2.1, align 1
  %conv.us.i.2.1 = zext i8 %12 to i16
  %arrayidx6.us.i.2.1 = getelementptr inbounds i8, ptr %add.ptr13.us.i, i64 2
  %13 = load i8, ptr %arrayidx6.us.i.2.1, align 1
  %conv7.us.i.2.1 = zext i8 %13 to i16
  %add.us.i.2.1 = add nuw nsw i16 %conv.us.i.2.1, 1
  %add8.us.i.2.1 = add nuw nsw i16 %add.us.i.2.1, %conv7.us.i.2.1
  %shr.us.i.2.1 = lshr i16 %add8.us.i.2.1, 1
  %conv9.us.i.2.1 = trunc nuw i16 %shr.us.i.2.1 to i8
  %arrayidx11.us.i.2.1 = getelementptr inbounds i8, ptr %add.ptr15.us.i, i64 2
  store i8 %conv9.us.i.2.1, ptr %arrayidx11.us.i.2.1, align 1
  %arrayidx.us.i.3.1 = getelementptr inbounds i8, ptr %add.ptr.us.i, i64 3
  %14 = load i8, ptr %arrayidx.us.i.3.1, align 1
  %conv.us.i.3.1 = zext i8 %14 to i16
  %arrayidx6.us.i.3.1 = getelementptr inbounds i8, ptr %add.ptr13.us.i, i64 3
  %15 = load i8, ptr %arrayidx6.us.i.3.1, align 1
  %conv7.us.i.3.1 = zext i8 %15 to i16
  %add.us.i.3.1 = add nuw nsw i16 %conv.us.i.3.1, 1
  %add8.us.i.3.1 = add nuw nsw i16 %add.us.i.3.1, %conv7.us.i.3.1
  %shr.us.i.3.1 = lshr i16 %add8.us.i.3.1, 1
  %conv9.us.i.3.1 = trunc nuw i16 %shr.us.i.3.1 to i8
  br label %if.end

if.else:                                          ; preds = %entry
  %sub.i = sub nsw i32 64, %weight
  %idx.ext.i8 = sext i32 %i_stride_pix1 to i64
  %idx.ext181.i = sext i32 %i_stride_pix2 to i64
  %idx.ext183.i = sext i32 %i_stride_pix3 to i64
  %16 = load i8, ptr %pix2, align 1
  %conv.i = zext i8 %16 to i32
  %mul.i = mul nsw i32 %conv.i, %weight
  %17 = load i8, ptr %pix3, align 1
  %conv2.i = zext i8 %17 to i32
  %mul3.i = mul nsw i32 %sub.i, %conv2.i
  %add.i = add i32 %mul.i, 32
  %add4.i = add i32 %add.i, %mul3.i
  %shr.i = ashr i32 %add4.i, 6
  %tobool.not.i.i = icmp ult i32 %shr.i, 256
  %18 = icmp sgt i32 %shr.i, 0
  %shr.i.i = sext i1 %18 to i32
  %cond.i.i = select i1 %tobool.not.i.i, i32 %shr.i, i32 %shr.i.i
  %conv.i.i = trunc i32 %cond.i.i to i8
  store i8 %conv.i.i, ptr %pix1, align 1
  %arrayidx6.i = getelementptr inbounds i8, ptr %pix2, i64 1
  %19 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %19 to i32
  %mul8.i = mul nsw i32 %conv7.i, %weight
  %arrayidx9.i = getelementptr inbounds i8, ptr %pix3, i64 1
  %20 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %20 to i32
  %mul11.i = mul nsw i32 %sub.i, %conv10.i
  %add12.i = add i32 %mul8.i, 32
  %add13.i = add i32 %add12.i, %mul11.i
  %shr14.i = ashr i32 %add13.i, 6
  %tobool.not.i267.i = icmp ult i32 %shr14.i, 256
  %21 = icmp sgt i32 %shr14.i, 0
  %shr.i268.i = sext i1 %21 to i32
  %cond.i269.i = select i1 %tobool.not.i267.i, i32 %shr14.i, i32 %shr.i268.i
  %conv.i270.i = trunc i32 %cond.i269.i to i8
  %arrayidx16.i = getelementptr inbounds i8, ptr %pix1, i64 1
  store i8 %conv.i270.i, ptr %arrayidx16.i, align 1
  %arrayidx19.i = getelementptr inbounds i8, ptr %pix2, i64 2
  %22 = load i8, ptr %arrayidx19.i, align 1
  %conv20.i = zext i8 %22 to i32
  %mul21.i = mul nsw i32 %conv20.i, %weight
  %arrayidx22.i = getelementptr inbounds i8, ptr %pix3, i64 2
  %23 = load i8, ptr %arrayidx22.i, align 1
  %conv23.i = zext i8 %23 to i32
  %mul24.i = mul nsw i32 %sub.i, %conv23.i
  %add25.i = add i32 %mul21.i, 32
  %add26.i = add i32 %add25.i, %mul24.i
  %shr27.i = ashr i32 %add26.i, 6
  %tobool.not.i271.i = icmp ult i32 %shr27.i, 256
  %24 = icmp sgt i32 %shr27.i, 0
  %shr.i272.i = sext i1 %24 to i32
  %cond.i273.i = select i1 %tobool.not.i271.i, i32 %shr27.i, i32 %shr.i272.i
  %conv.i274.i = trunc i32 %cond.i273.i to i8
  %arrayidx29.i = getelementptr inbounds i8, ptr %pix1, i64 2
  store i8 %conv.i274.i, ptr %arrayidx29.i, align 1
  %arrayidx30.i = getelementptr inbounds i8, ptr %pix2, i64 3
  %25 = load i8, ptr %arrayidx30.i, align 1
  %conv31.i = zext i8 %25 to i32
  %mul32.i = mul nsw i32 %conv31.i, %weight
  %arrayidx33.i = getelementptr inbounds i8, ptr %pix3, i64 3
  %26 = load i8, ptr %arrayidx33.i, align 1
  %conv34.i = zext i8 %26 to i32
  %mul35.i = mul nsw i32 %sub.i, %conv34.i
  %add36.i = add i32 %mul32.i, 32
  %add37.i = add i32 %add36.i, %mul35.i
  %shr38.i = ashr i32 %add37.i, 6
  %tobool.not.i275.i = icmp ult i32 %shr38.i, 256
  %27 = icmp sgt i32 %shr38.i, 0
  %shr.i276.i = sext i1 %27 to i32
  %cond.i277.i = select i1 %tobool.not.i275.i, i32 %shr38.i, i32 %shr.i276.i
  %conv.i278.i = trunc i32 %cond.i277.i to i8
  %arrayidx40.i = getelementptr inbounds i8, ptr %pix1, i64 3
  store i8 %conv.i278.i, ptr %arrayidx40.i, align 1
  %add.ptr.i = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext.i8
  %add.ptr182.i = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext181.i
  %add.ptr184.i = getelementptr inbounds i8, ptr %pix3, i64 %idx.ext183.i
  %28 = load i8, ptr %add.ptr182.i, align 1
  %conv.i.1 = zext i8 %28 to i32
  %mul.i.1 = mul nsw i32 %conv.i.1, %weight
  %29 = load i8, ptr %add.ptr184.i, align 1
  %conv2.i.1 = zext i8 %29 to i32
  %mul3.i.1 = mul nsw i32 %sub.i, %conv2.i.1
  %add.i.1 = add i32 %mul.i.1, 32
  %add4.i.1 = add i32 %add.i.1, %mul3.i.1
  %shr.i.1 = ashr i32 %add4.i.1, 6
  %tobool.not.i.i.1 = icmp ult i32 %shr.i.1, 256
  %30 = icmp sgt i32 %shr.i.1, 0
  %shr.i.i.1 = sext i1 %30 to i32
  %cond.i.i.1 = select i1 %tobool.not.i.i.1, i32 %shr.i.1, i32 %shr.i.i.1
  %conv.i.i.1 = trunc i32 %cond.i.i.1 to i8
  store i8 %conv.i.i.1, ptr %add.ptr.i, align 1
  %arrayidx6.i.1 = getelementptr inbounds i8, ptr %add.ptr182.i, i64 1
  %31 = load i8, ptr %arrayidx6.i.1, align 1
  %conv7.i.1 = zext i8 %31 to i32
  %mul8.i.1 = mul nsw i32 %conv7.i.1, %weight
  %arrayidx9.i.1 = getelementptr inbounds i8, ptr %add.ptr184.i, i64 1
  %32 = load i8, ptr %arrayidx9.i.1, align 1
  %conv10.i.1 = zext i8 %32 to i32
  %mul11.i.1 = mul nsw i32 %sub.i, %conv10.i.1
  %add12.i.1 = add i32 %mul8.i.1, 32
  %add13.i.1 = add i32 %add12.i.1, %mul11.i.1
  %shr14.i.1 = ashr i32 %add13.i.1, 6
  %tobool.not.i267.i.1 = icmp ult i32 %shr14.i.1, 256
  %33 = icmp sgt i32 %shr14.i.1, 0
  %shr.i268.i.1 = sext i1 %33 to i32
  %cond.i269.i.1 = select i1 %tobool.not.i267.i.1, i32 %shr14.i.1, i32 %shr.i268.i.1
  %conv.i270.i.1 = trunc i32 %cond.i269.i.1 to i8
  %arrayidx16.i.1 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1
  store i8 %conv.i270.i.1, ptr %arrayidx16.i.1, align 1
  %arrayidx19.i.1 = getelementptr inbounds i8, ptr %add.ptr182.i, i64 2
  %34 = load i8, ptr %arrayidx19.i.1, align 1
  %conv20.i.1 = zext i8 %34 to i32
  %mul21.i.1 = mul nsw i32 %conv20.i.1, %weight
  %arrayidx22.i.1 = getelementptr inbounds i8, ptr %add.ptr184.i, i64 2
  %35 = load i8, ptr %arrayidx22.i.1, align 1
  %conv23.i.1 = zext i8 %35 to i32
  %mul24.i.1 = mul nsw i32 %sub.i, %conv23.i.1
  %add25.i.1 = add i32 %mul21.i.1, 32
  %add26.i.1 = add i32 %add25.i.1, %mul24.i.1
  %shr27.i.1 = ashr i32 %add26.i.1, 6
  %tobool.not.i271.i.1 = icmp ult i32 %shr27.i.1, 256
  %36 = icmp sgt i32 %shr27.i.1, 0
  %shr.i272.i.1 = sext i1 %36 to i32
  %cond.i273.i.1 = select i1 %tobool.not.i271.i.1, i32 %shr27.i.1, i32 %shr.i272.i.1
  %conv.i274.i.1 = trunc i32 %cond.i273.i.1 to i8
  %arrayidx29.i.1 = getelementptr inbounds i8, ptr %add.ptr.i, i64 2
  store i8 %conv.i274.i.1, ptr %arrayidx29.i.1, align 1
  %arrayidx30.i.1 = getelementptr inbounds i8, ptr %add.ptr182.i, i64 3
  %37 = load i8, ptr %arrayidx30.i.1, align 1
  %conv31.i.1 = zext i8 %37 to i32
  %mul32.i.1 = mul nsw i32 %conv31.i.1, %weight
  %arrayidx33.i.1 = getelementptr inbounds i8, ptr %add.ptr184.i, i64 3
  %38 = load i8, ptr %arrayidx33.i.1, align 1
  %conv34.i.1 = zext i8 %38 to i32
  %mul35.i.1 = mul nsw i32 %sub.i, %conv34.i.1
  %add36.i.1 = add i32 %mul32.i.1, 32
  %add37.i.1 = add i32 %add36.i.1, %mul35.i.1
  %shr38.i.1 = ashr i32 %add37.i.1, 6
  %tobool.not.i275.i.1 = icmp ult i32 %shr38.i.1, 256
  %39 = icmp sgt i32 %shr38.i.1, 0
  %shr.i276.i.1 = sext i1 %39 to i32
  %cond.i277.i.1 = select i1 %tobool.not.i275.i.1, i32 %shr38.i.1, i32 %shr.i276.i.1
  %conv.i278.i.1 = trunc i32 %cond.i277.i.1 to i8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %40 = phi i64 [ %idx.ext.i8, %if.else ], [ %idx.ext14.i, %if.then ]
  %conv.i278.i.1.sink = phi i8 [ %conv.i278.i.1, %if.else ], [ %conv9.us.i.3.1, %if.then ]
  %41 = getelementptr inbounds i8, ptr %pix1, i64 %40
  %arrayidx40.i.1 = getelementptr inbounds i8, ptr %41, i64 3
  store i8 %conv.i278.i.1.sink, ptr %arrayidx40.i.1, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_2x4(ptr nocapture noundef writeonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride_pix3, i32 noundef %weight) #6 {
entry:
  %cmp = icmp eq i32 %weight, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %idx.ext.i = sext i32 %i_stride_pix2 to i64
  %idx.ext12.i = sext i32 %i_stride_pix3 to i64
  %idx.ext14.i = sext i32 %i_stride_pix1 to i64
  %0 = load i8, ptr %pix2, align 1
  %conv.us.i = zext i8 %0 to i16
  %1 = load i8, ptr %pix3, align 1
  %conv7.us.i = zext i8 %1 to i16
  %add.us.i = add nuw nsw i16 %conv.us.i, 1
  %add8.us.i = add nuw nsw i16 %add.us.i, %conv7.us.i
  %shr.us.i = lshr i16 %add8.us.i, 1
  %conv9.us.i = trunc nuw i16 %shr.us.i to i8
  store i8 %conv9.us.i, ptr %pix1, align 1
  %arrayidx.us.i.1 = getelementptr inbounds i8, ptr %pix2, i64 1
  %2 = load i8, ptr %arrayidx.us.i.1, align 1
  %conv.us.i.1 = zext i8 %2 to i16
  %arrayidx6.us.i.1 = getelementptr inbounds i8, ptr %pix3, i64 1
  %3 = load i8, ptr %arrayidx6.us.i.1, align 1
  %conv7.us.i.1 = zext i8 %3 to i16
  %add.us.i.1 = add nuw nsw i16 %conv.us.i.1, 1
  %add8.us.i.1 = add nuw nsw i16 %add.us.i.1, %conv7.us.i.1
  %shr.us.i.1 = lshr i16 %add8.us.i.1, 1
  %conv9.us.i.1 = trunc nuw i16 %shr.us.i.1 to i8
  %arrayidx11.us.i.1 = getelementptr inbounds i8, ptr %pix1, i64 1
  store i8 %conv9.us.i.1, ptr %arrayidx11.us.i.1, align 1
  %add.ptr.us.i = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext.i
  %add.ptr13.us.i = getelementptr inbounds i8, ptr %pix3, i64 %idx.ext12.i
  %add.ptr15.us.i = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext14.i
  %4 = load i8, ptr %add.ptr.us.i, align 1
  %conv.us.i.117 = zext i8 %4 to i16
  %5 = load i8, ptr %add.ptr13.us.i, align 1
  %conv7.us.i.118 = zext i8 %5 to i16
  %add.us.i.119 = add nuw nsw i16 %conv.us.i.117, 1
  %add8.us.i.120 = add nuw nsw i16 %add.us.i.119, %conv7.us.i.118
  %shr.us.i.121 = lshr i16 %add8.us.i.120, 1
  %conv9.us.i.122 = trunc nuw i16 %shr.us.i.121 to i8
  store i8 %conv9.us.i.122, ptr %add.ptr15.us.i, align 1
  %arrayidx.us.i.1.1 = getelementptr inbounds i8, ptr %add.ptr.us.i, i64 1
  %6 = load i8, ptr %arrayidx.us.i.1.1, align 1
  %conv.us.i.1.1 = zext i8 %6 to i16
  %arrayidx6.us.i.1.1 = getelementptr inbounds i8, ptr %add.ptr13.us.i, i64 1
  %7 = load i8, ptr %arrayidx6.us.i.1.1, align 1
  %conv7.us.i.1.1 = zext i8 %7 to i16
  %add.us.i.1.1 = add nuw nsw i16 %conv.us.i.1.1, 1
  %add8.us.i.1.1 = add nuw nsw i16 %add.us.i.1.1, %conv7.us.i.1.1
  %shr.us.i.1.1 = lshr i16 %add8.us.i.1.1, 1
  %conv9.us.i.1.1 = trunc nuw i16 %shr.us.i.1.1 to i8
  %arrayidx11.us.i.1.1 = getelementptr inbounds i8, ptr %add.ptr15.us.i, i64 1
  store i8 %conv9.us.i.1.1, ptr %arrayidx11.us.i.1.1, align 1
  %add.ptr.us.i.1 = getelementptr inbounds i8, ptr %add.ptr.us.i, i64 %idx.ext.i
  %add.ptr13.us.i.1 = getelementptr inbounds i8, ptr %add.ptr13.us.i, i64 %idx.ext12.i
  %add.ptr15.us.i.1 = getelementptr inbounds i8, ptr %add.ptr15.us.i, i64 %idx.ext14.i
  %8 = load i8, ptr %add.ptr.us.i.1, align 1
  %conv.us.i.2 = zext i8 %8 to i16
  %9 = load i8, ptr %add.ptr13.us.i.1, align 1
  %conv7.us.i.2 = zext i8 %9 to i16
  %add.us.i.2 = add nuw nsw i16 %conv.us.i.2, 1
  %add8.us.i.2 = add nuw nsw i16 %add.us.i.2, %conv7.us.i.2
  %shr.us.i.2 = lshr i16 %add8.us.i.2, 1
  %conv9.us.i.2 = trunc nuw i16 %shr.us.i.2 to i8
  store i8 %conv9.us.i.2, ptr %add.ptr15.us.i.1, align 1
  %arrayidx.us.i.1.2 = getelementptr inbounds i8, ptr %add.ptr.us.i.1, i64 1
  %10 = load i8, ptr %arrayidx.us.i.1.2, align 1
  %conv.us.i.1.2 = zext i8 %10 to i16
  %arrayidx6.us.i.1.2 = getelementptr inbounds i8, ptr %add.ptr13.us.i.1, i64 1
  %11 = load i8, ptr %arrayidx6.us.i.1.2, align 1
  %conv7.us.i.1.2 = zext i8 %11 to i16
  %add.us.i.1.2 = add nuw nsw i16 %conv.us.i.1.2, 1
  %add8.us.i.1.2 = add nuw nsw i16 %add.us.i.1.2, %conv7.us.i.1.2
  %shr.us.i.1.2 = lshr i16 %add8.us.i.1.2, 1
  %conv9.us.i.1.2 = trunc nuw i16 %shr.us.i.1.2 to i8
  %arrayidx11.us.i.1.2 = getelementptr inbounds i8, ptr %add.ptr15.us.i.1, i64 1
  store i8 %conv9.us.i.1.2, ptr %arrayidx11.us.i.1.2, align 1
  %add.ptr.us.i.2 = getelementptr inbounds i8, ptr %add.ptr.us.i.1, i64 %idx.ext.i
  %add.ptr13.us.i.2 = getelementptr inbounds i8, ptr %add.ptr13.us.i.1, i64 %idx.ext12.i
  %add.ptr15.us.i.2 = getelementptr inbounds i8, ptr %add.ptr15.us.i.1, i64 %idx.ext14.i
  %12 = load i8, ptr %add.ptr.us.i.2, align 1
  %conv.us.i.3 = zext i8 %12 to i16
  %13 = load i8, ptr %add.ptr13.us.i.2, align 1
  %conv7.us.i.3 = zext i8 %13 to i16
  %add.us.i.3 = add nuw nsw i16 %conv.us.i.3, 1
  %add8.us.i.3 = add nuw nsw i16 %add.us.i.3, %conv7.us.i.3
  %shr.us.i.3 = lshr i16 %add8.us.i.3, 1
  %conv9.us.i.3 = trunc nuw i16 %shr.us.i.3 to i8
  store i8 %conv9.us.i.3, ptr %add.ptr15.us.i.2, align 1
  %arrayidx.us.i.1.3 = getelementptr inbounds i8, ptr %add.ptr.us.i.2, i64 1
  %14 = load i8, ptr %arrayidx.us.i.1.3, align 1
  %conv.us.i.1.3 = zext i8 %14 to i16
  %arrayidx6.us.i.1.3 = getelementptr inbounds i8, ptr %add.ptr13.us.i.2, i64 1
  %15 = load i8, ptr %arrayidx6.us.i.1.3, align 1
  %conv7.us.i.1.3 = zext i8 %15 to i16
  %add.us.i.1.3 = add nuw nsw i16 %conv.us.i.1.3, 1
  %add8.us.i.1.3 = add nuw nsw i16 %add.us.i.1.3, %conv7.us.i.1.3
  %shr.us.i.1.3 = lshr i16 %add8.us.i.1.3, 1
  %conv9.us.i.1.3 = trunc nuw i16 %shr.us.i.1.3 to i8
  br label %if.end

if.else:                                          ; preds = %entry
  %sub.i = sub nsw i32 64, %weight
  %idx.ext.i8 = sext i32 %i_stride_pix1 to i64
  %idx.ext181.i = sext i32 %i_stride_pix2 to i64
  %idx.ext183.i = sext i32 %i_stride_pix3 to i64
  %16 = load i8, ptr %pix2, align 1
  %conv.us.i9 = zext i8 %16 to i32
  %mul.us.i = mul nsw i32 %conv.us.i9, %weight
  %17 = load i8, ptr %pix3, align 1
  %conv2.us.i = zext i8 %17 to i32
  %mul3.us.i = mul nsw i32 %sub.i, %conv2.us.i
  %add.us.i10 = add i32 %mul.us.i, 32
  %add4.us.i = add i32 %add.us.i10, %mul3.us.i
  %shr.us.i11 = ashr i32 %add4.us.i, 6
  %tobool.not.i.us.i = icmp ult i32 %shr.us.i11, 256
  %18 = icmp sgt i32 %shr.us.i11, 0
  %shr.i.us.i = sext i1 %18 to i32
  %cond.i.us.i = select i1 %tobool.not.i.us.i, i32 %shr.us.i11, i32 %shr.i.us.i
  %conv.i.us.i = trunc i32 %cond.i.us.i to i8
  store i8 %conv.i.us.i, ptr %pix1, align 1
  %arrayidx6.us.i12 = getelementptr inbounds i8, ptr %pix2, i64 1
  %19 = load i8, ptr %arrayidx6.us.i12, align 1
  %conv7.us.i13 = zext i8 %19 to i32
  %mul8.us.i = mul nsw i32 %conv7.us.i13, %weight
  %arrayidx9.us.i = getelementptr inbounds i8, ptr %pix3, i64 1
  %20 = load i8, ptr %arrayidx9.us.i, align 1
  %conv10.us.i = zext i8 %20 to i32
  %mul11.us.i = mul nsw i32 %sub.i, %conv10.us.i
  %add12.us.i = add i32 %mul8.us.i, 32
  %add13.us.i = add i32 %add12.us.i, %mul11.us.i
  %shr14.us.i = ashr i32 %add13.us.i, 6
  %tobool.not.i267.us.i = icmp ult i32 %shr14.us.i, 256
  %21 = icmp sgt i32 %shr14.us.i, 0
  %shr.i268.us.i = sext i1 %21 to i32
  %cond.i269.us.i = select i1 %tobool.not.i267.us.i, i32 %shr14.us.i, i32 %shr.i268.us.i
  %conv.i270.us.i = trunc i32 %cond.i269.us.i to i8
  %arrayidx16.us.i = getelementptr inbounds i8, ptr %pix1, i64 1
  store i8 %conv.i270.us.i, ptr %arrayidx16.us.i, align 1
  %add.ptr.us.i14 = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext.i8
  %add.ptr182.us.i = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext181.i
  %add.ptr184.us.i = getelementptr inbounds i8, ptr %pix3, i64 %idx.ext183.i
  %22 = load i8, ptr %add.ptr182.us.i, align 1
  %conv.us.i9.1 = zext i8 %22 to i32
  %mul.us.i.1 = mul nsw i32 %conv.us.i9.1, %weight
  %23 = load i8, ptr %add.ptr184.us.i, align 1
  %conv2.us.i.1 = zext i8 %23 to i32
  %mul3.us.i.1 = mul nsw i32 %sub.i, %conv2.us.i.1
  %add.us.i10.1 = add i32 %mul.us.i.1, 32
  %add4.us.i.1 = add i32 %add.us.i10.1, %mul3.us.i.1
  %shr.us.i11.1 = ashr i32 %add4.us.i.1, 6
  %tobool.not.i.us.i.1 = icmp ult i32 %shr.us.i11.1, 256
  %24 = icmp sgt i32 %shr.us.i11.1, 0
  %shr.i.us.i.1 = sext i1 %24 to i32
  %cond.i.us.i.1 = select i1 %tobool.not.i.us.i.1, i32 %shr.us.i11.1, i32 %shr.i.us.i.1
  %conv.i.us.i.1 = trunc i32 %cond.i.us.i.1 to i8
  store i8 %conv.i.us.i.1, ptr %add.ptr.us.i14, align 1
  %arrayidx6.us.i12.1 = getelementptr inbounds i8, ptr %add.ptr182.us.i, i64 1
  %25 = load i8, ptr %arrayidx6.us.i12.1, align 1
  %conv7.us.i13.1 = zext i8 %25 to i32
  %mul8.us.i.1 = mul nsw i32 %conv7.us.i13.1, %weight
  %arrayidx9.us.i.1 = getelementptr inbounds i8, ptr %add.ptr184.us.i, i64 1
  %26 = load i8, ptr %arrayidx9.us.i.1, align 1
  %conv10.us.i.1 = zext i8 %26 to i32
  %mul11.us.i.1 = mul nsw i32 %sub.i, %conv10.us.i.1
  %add12.us.i.1 = add i32 %mul8.us.i.1, 32
  %add13.us.i.1 = add i32 %add12.us.i.1, %mul11.us.i.1
  %shr14.us.i.1 = ashr i32 %add13.us.i.1, 6
  %tobool.not.i267.us.i.1 = icmp ult i32 %shr14.us.i.1, 256
  %27 = icmp sgt i32 %shr14.us.i.1, 0
  %shr.i268.us.i.1 = sext i1 %27 to i32
  %cond.i269.us.i.1 = select i1 %tobool.not.i267.us.i.1, i32 %shr14.us.i.1, i32 %shr.i268.us.i.1
  %conv.i270.us.i.1 = trunc i32 %cond.i269.us.i.1 to i8
  %arrayidx16.us.i.1 = getelementptr inbounds i8, ptr %add.ptr.us.i14, i64 1
  store i8 %conv.i270.us.i.1, ptr %arrayidx16.us.i.1, align 1
  %add.ptr.us.i14.1 = getelementptr inbounds i8, ptr %add.ptr.us.i14, i64 %idx.ext.i8
  %add.ptr182.us.i.1 = getelementptr inbounds i8, ptr %add.ptr182.us.i, i64 %idx.ext181.i
  %add.ptr184.us.i.1 = getelementptr inbounds i8, ptr %add.ptr184.us.i, i64 %idx.ext183.i
  %28 = load i8, ptr %add.ptr182.us.i.1, align 1
  %conv.us.i9.2 = zext i8 %28 to i32
  %mul.us.i.2 = mul nsw i32 %conv.us.i9.2, %weight
  %29 = load i8, ptr %add.ptr184.us.i.1, align 1
  %conv2.us.i.2 = zext i8 %29 to i32
  %mul3.us.i.2 = mul nsw i32 %sub.i, %conv2.us.i.2
  %add.us.i10.2 = add i32 %mul.us.i.2, 32
  %add4.us.i.2 = add i32 %add.us.i10.2, %mul3.us.i.2
  %shr.us.i11.2 = ashr i32 %add4.us.i.2, 6
  %tobool.not.i.us.i.2 = icmp ult i32 %shr.us.i11.2, 256
  %30 = icmp sgt i32 %shr.us.i11.2, 0
  %shr.i.us.i.2 = sext i1 %30 to i32
  %cond.i.us.i.2 = select i1 %tobool.not.i.us.i.2, i32 %shr.us.i11.2, i32 %shr.i.us.i.2
  %conv.i.us.i.2 = trunc i32 %cond.i.us.i.2 to i8
  store i8 %conv.i.us.i.2, ptr %add.ptr.us.i14.1, align 1
  %arrayidx6.us.i12.2 = getelementptr inbounds i8, ptr %add.ptr182.us.i.1, i64 1
  %31 = load i8, ptr %arrayidx6.us.i12.2, align 1
  %conv7.us.i13.2 = zext i8 %31 to i32
  %mul8.us.i.2 = mul nsw i32 %conv7.us.i13.2, %weight
  %arrayidx9.us.i.2 = getelementptr inbounds i8, ptr %add.ptr184.us.i.1, i64 1
  %32 = load i8, ptr %arrayidx9.us.i.2, align 1
  %conv10.us.i.2 = zext i8 %32 to i32
  %mul11.us.i.2 = mul nsw i32 %sub.i, %conv10.us.i.2
  %add12.us.i.2 = add i32 %mul8.us.i.2, 32
  %add13.us.i.2 = add i32 %add12.us.i.2, %mul11.us.i.2
  %shr14.us.i.2 = ashr i32 %add13.us.i.2, 6
  %tobool.not.i267.us.i.2 = icmp ult i32 %shr14.us.i.2, 256
  %33 = icmp sgt i32 %shr14.us.i.2, 0
  %shr.i268.us.i.2 = sext i1 %33 to i32
  %cond.i269.us.i.2 = select i1 %tobool.not.i267.us.i.2, i32 %shr14.us.i.2, i32 %shr.i268.us.i.2
  %conv.i270.us.i.2 = trunc i32 %cond.i269.us.i.2 to i8
  %arrayidx16.us.i.2 = getelementptr inbounds i8, ptr %add.ptr.us.i14.1, i64 1
  store i8 %conv.i270.us.i.2, ptr %arrayidx16.us.i.2, align 1
  %add.ptr.us.i14.2 = getelementptr inbounds i8, ptr %add.ptr.us.i14.1, i64 %idx.ext.i8
  %add.ptr182.us.i.2 = getelementptr inbounds i8, ptr %add.ptr182.us.i.1, i64 %idx.ext181.i
  %add.ptr184.us.i.2 = getelementptr inbounds i8, ptr %add.ptr184.us.i.1, i64 %idx.ext183.i
  %34 = load i8, ptr %add.ptr182.us.i.2, align 1
  %conv.us.i9.3 = zext i8 %34 to i32
  %mul.us.i.3 = mul nsw i32 %conv.us.i9.3, %weight
  %35 = load i8, ptr %add.ptr184.us.i.2, align 1
  %conv2.us.i.3 = zext i8 %35 to i32
  %mul3.us.i.3 = mul nsw i32 %sub.i, %conv2.us.i.3
  %add.us.i10.3 = add i32 %mul.us.i.3, 32
  %add4.us.i.3 = add i32 %add.us.i10.3, %mul3.us.i.3
  %shr.us.i11.3 = ashr i32 %add4.us.i.3, 6
  %tobool.not.i.us.i.3 = icmp ult i32 %shr.us.i11.3, 256
  %36 = icmp sgt i32 %shr.us.i11.3, 0
  %shr.i.us.i.3 = sext i1 %36 to i32
  %cond.i.us.i.3 = select i1 %tobool.not.i.us.i.3, i32 %shr.us.i11.3, i32 %shr.i.us.i.3
  %conv.i.us.i.3 = trunc i32 %cond.i.us.i.3 to i8
  store i8 %conv.i.us.i.3, ptr %add.ptr.us.i14.2, align 1
  %arrayidx6.us.i12.3 = getelementptr inbounds i8, ptr %add.ptr182.us.i.2, i64 1
  %37 = load i8, ptr %arrayidx6.us.i12.3, align 1
  %conv7.us.i13.3 = zext i8 %37 to i32
  %mul8.us.i.3 = mul nsw i32 %conv7.us.i13.3, %weight
  %arrayidx9.us.i.3 = getelementptr inbounds i8, ptr %add.ptr184.us.i.2, i64 1
  %38 = load i8, ptr %arrayidx9.us.i.3, align 1
  %conv10.us.i.3 = zext i8 %38 to i32
  %mul11.us.i.3 = mul nsw i32 %sub.i, %conv10.us.i.3
  %add12.us.i.3 = add i32 %mul8.us.i.3, 32
  %add13.us.i.3 = add i32 %add12.us.i.3, %mul11.us.i.3
  %shr14.us.i.3 = ashr i32 %add13.us.i.3, 6
  %tobool.not.i267.us.i.3 = icmp ult i32 %shr14.us.i.3, 256
  %39 = icmp sgt i32 %shr14.us.i.3, 0
  %shr.i268.us.i.3 = sext i1 %39 to i32
  %cond.i269.us.i.3 = select i1 %tobool.not.i267.us.i.3, i32 %shr14.us.i.3, i32 %shr.i268.us.i.3
  %conv.i270.us.i.3 = trunc i32 %cond.i269.us.i.3 to i8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %add.ptr.us.i14.2.sink = phi ptr [ %add.ptr.us.i14.2, %if.else ], [ %add.ptr15.us.i.2, %if.then ]
  %conv.i270.us.i.3.sink = phi i8 [ %conv.i270.us.i.3, %if.else ], [ %conv9.us.i.1.3, %if.then ]
  %arrayidx16.us.i.3 = getelementptr inbounds i8, ptr %add.ptr.us.i14.2.sink, i64 1
  store i8 %conv.i270.us.i.3.sink, ptr %arrayidx16.us.i.3, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @pixel_avg_2x2(ptr nocapture noundef writeonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride_pix3, i32 noundef %weight) #7 {
entry:
  %cmp = icmp eq i32 %weight, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %idx.ext.i = sext i32 %i_stride_pix2 to i64
  %idx.ext12.i = sext i32 %i_stride_pix3 to i64
  %idx.ext14.i = sext i32 %i_stride_pix1 to i64
  %0 = load i8, ptr %pix2, align 1
  %conv.us.i = zext i8 %0 to i16
  %1 = load i8, ptr %pix3, align 1
  %conv7.us.i = zext i8 %1 to i16
  %add.us.i = add nuw nsw i16 %conv.us.i, 1
  %add8.us.i = add nuw nsw i16 %add.us.i, %conv7.us.i
  %shr.us.i = lshr i16 %add8.us.i, 1
  %conv9.us.i = trunc nuw i16 %shr.us.i to i8
  store i8 %conv9.us.i, ptr %pix1, align 1
  %arrayidx.us.i.1 = getelementptr inbounds i8, ptr %pix2, i64 1
  %2 = load i8, ptr %arrayidx.us.i.1, align 1
  %conv.us.i.1 = zext i8 %2 to i16
  %arrayidx6.us.i.1 = getelementptr inbounds i8, ptr %pix3, i64 1
  %3 = load i8, ptr %arrayidx6.us.i.1, align 1
  %conv7.us.i.1 = zext i8 %3 to i16
  %add.us.i.1 = add nuw nsw i16 %conv.us.i.1, 1
  %add8.us.i.1 = add nuw nsw i16 %add.us.i.1, %conv7.us.i.1
  %shr.us.i.1 = lshr i16 %add8.us.i.1, 1
  %conv9.us.i.1 = trunc nuw i16 %shr.us.i.1 to i8
  %arrayidx11.us.i.1 = getelementptr inbounds i8, ptr %pix1, i64 1
  store i8 %conv9.us.i.1, ptr %arrayidx11.us.i.1, align 1
  %add.ptr.us.i = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext.i
  %add.ptr13.us.i = getelementptr inbounds i8, ptr %pix3, i64 %idx.ext12.i
  %add.ptr15.us.i = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext14.i
  %4 = load i8, ptr %add.ptr.us.i, align 1
  %conv.us.i.117 = zext i8 %4 to i16
  %5 = load i8, ptr %add.ptr13.us.i, align 1
  %conv7.us.i.118 = zext i8 %5 to i16
  %add.us.i.119 = add nuw nsw i16 %conv.us.i.117, 1
  %add8.us.i.120 = add nuw nsw i16 %add.us.i.119, %conv7.us.i.118
  %shr.us.i.121 = lshr i16 %add8.us.i.120, 1
  %conv9.us.i.122 = trunc nuw i16 %shr.us.i.121 to i8
  store i8 %conv9.us.i.122, ptr %add.ptr15.us.i, align 1
  %arrayidx.us.i.1.1 = getelementptr inbounds i8, ptr %add.ptr.us.i, i64 1
  %6 = load i8, ptr %arrayidx.us.i.1.1, align 1
  %conv.us.i.1.1 = zext i8 %6 to i16
  %arrayidx6.us.i.1.1 = getelementptr inbounds i8, ptr %add.ptr13.us.i, i64 1
  %7 = load i8, ptr %arrayidx6.us.i.1.1, align 1
  %conv7.us.i.1.1 = zext i8 %7 to i16
  %add.us.i.1.1 = add nuw nsw i16 %conv.us.i.1.1, 1
  %add8.us.i.1.1 = add nuw nsw i16 %add.us.i.1.1, %conv7.us.i.1.1
  %shr.us.i.1.1 = lshr i16 %add8.us.i.1.1, 1
  %conv9.us.i.1.1 = trunc nuw i16 %shr.us.i.1.1 to i8
  br label %if.end

if.else:                                          ; preds = %entry
  %sub.i = sub nsw i32 64, %weight
  %idx.ext.i8 = sext i32 %i_stride_pix1 to i64
  %idx.ext181.i = sext i32 %i_stride_pix2 to i64
  %idx.ext183.i = sext i32 %i_stride_pix3 to i64
  %8 = load i8, ptr %pix2, align 1
  %conv.us.i9 = zext i8 %8 to i32
  %mul.us.i = mul nsw i32 %conv.us.i9, %weight
  %9 = load i8, ptr %pix3, align 1
  %conv2.us.i = zext i8 %9 to i32
  %mul3.us.i = mul nsw i32 %sub.i, %conv2.us.i
  %add.us.i10 = add i32 %mul.us.i, 32
  %add4.us.i = add i32 %add.us.i10, %mul3.us.i
  %shr.us.i11 = ashr i32 %add4.us.i, 6
  %tobool.not.i.us.i = icmp ult i32 %shr.us.i11, 256
  %10 = icmp sgt i32 %shr.us.i11, 0
  %shr.i.us.i = sext i1 %10 to i32
  %cond.i.us.i = select i1 %tobool.not.i.us.i, i32 %shr.us.i11, i32 %shr.i.us.i
  %conv.i.us.i = trunc i32 %cond.i.us.i to i8
  store i8 %conv.i.us.i, ptr %pix1, align 1
  %arrayidx6.us.i12 = getelementptr inbounds i8, ptr %pix2, i64 1
  %11 = load i8, ptr %arrayidx6.us.i12, align 1
  %conv7.us.i13 = zext i8 %11 to i32
  %mul8.us.i = mul nsw i32 %conv7.us.i13, %weight
  %arrayidx9.us.i = getelementptr inbounds i8, ptr %pix3, i64 1
  %12 = load i8, ptr %arrayidx9.us.i, align 1
  %conv10.us.i = zext i8 %12 to i32
  %mul11.us.i = mul nsw i32 %sub.i, %conv10.us.i
  %add12.us.i = add i32 %mul8.us.i, 32
  %add13.us.i = add i32 %add12.us.i, %mul11.us.i
  %shr14.us.i = ashr i32 %add13.us.i, 6
  %tobool.not.i267.us.i = icmp ult i32 %shr14.us.i, 256
  %13 = icmp sgt i32 %shr14.us.i, 0
  %shr.i268.us.i = sext i1 %13 to i32
  %cond.i269.us.i = select i1 %tobool.not.i267.us.i, i32 %shr14.us.i, i32 %shr.i268.us.i
  %conv.i270.us.i = trunc i32 %cond.i269.us.i to i8
  %arrayidx16.us.i = getelementptr inbounds i8, ptr %pix1, i64 1
  store i8 %conv.i270.us.i, ptr %arrayidx16.us.i, align 1
  %add.ptr.us.i14 = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext.i8
  %add.ptr182.us.i = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext181.i
  %add.ptr184.us.i = getelementptr inbounds i8, ptr %pix3, i64 %idx.ext183.i
  %14 = load i8, ptr %add.ptr182.us.i, align 1
  %conv.us.i9.1 = zext i8 %14 to i32
  %mul.us.i.1 = mul nsw i32 %conv.us.i9.1, %weight
  %15 = load i8, ptr %add.ptr184.us.i, align 1
  %conv2.us.i.1 = zext i8 %15 to i32
  %mul3.us.i.1 = mul nsw i32 %sub.i, %conv2.us.i.1
  %add.us.i10.1 = add i32 %mul.us.i.1, 32
  %add4.us.i.1 = add i32 %add.us.i10.1, %mul3.us.i.1
  %shr.us.i11.1 = ashr i32 %add4.us.i.1, 6
  %tobool.not.i.us.i.1 = icmp ult i32 %shr.us.i11.1, 256
  %16 = icmp sgt i32 %shr.us.i11.1, 0
  %shr.i.us.i.1 = sext i1 %16 to i32
  %cond.i.us.i.1 = select i1 %tobool.not.i.us.i.1, i32 %shr.us.i11.1, i32 %shr.i.us.i.1
  %conv.i.us.i.1 = trunc i32 %cond.i.us.i.1 to i8
  store i8 %conv.i.us.i.1, ptr %add.ptr.us.i14, align 1
  %arrayidx6.us.i12.1 = getelementptr inbounds i8, ptr %add.ptr182.us.i, i64 1
  %17 = load i8, ptr %arrayidx6.us.i12.1, align 1
  %conv7.us.i13.1 = zext i8 %17 to i32
  %mul8.us.i.1 = mul nsw i32 %conv7.us.i13.1, %weight
  %arrayidx9.us.i.1 = getelementptr inbounds i8, ptr %add.ptr184.us.i, i64 1
  %18 = load i8, ptr %arrayidx9.us.i.1, align 1
  %conv10.us.i.1 = zext i8 %18 to i32
  %mul11.us.i.1 = mul nsw i32 %sub.i, %conv10.us.i.1
  %add12.us.i.1 = add i32 %mul8.us.i.1, 32
  %add13.us.i.1 = add i32 %add12.us.i.1, %mul11.us.i.1
  %shr14.us.i.1 = ashr i32 %add13.us.i.1, 6
  %tobool.not.i267.us.i.1 = icmp ult i32 %shr14.us.i.1, 256
  %19 = icmp sgt i32 %shr14.us.i.1, 0
  %shr.i268.us.i.1 = sext i1 %19 to i32
  %cond.i269.us.i.1 = select i1 %tobool.not.i267.us.i.1, i32 %shr14.us.i.1, i32 %shr.i268.us.i.1
  %conv.i270.us.i.1 = trunc i32 %cond.i269.us.i.1 to i8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = phi i64 [ %idx.ext.i8, %if.else ], [ %idx.ext14.i, %if.then ]
  %conv.i270.us.i.1.sink = phi i8 [ %conv.i270.us.i.1, %if.else ], [ %conv9.us.i.1.1, %if.then ]
  %21 = getelementptr inbounds i8, ptr %pix1, i64 %20
  %arrayidx16.us.i.1 = getelementptr inbounds i8, ptr %21, i64 1
  store i8 %conv.i270.us.i.1.sink, ptr %arrayidx16.us.i.1, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @x264_weight_cache(ptr nocapture noundef readonly %h, ptr nocapture noundef writeonly %w) #7 {
entry:
  %weight = getelementptr inbounds i8, ptr %h, i64 32872
  %0 = load ptr, ptr %weight, align 8
  %weightfn = getelementptr inbounds i8, ptr %w, i64 48
  store ptr %0, ptr %weightfn, align 16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_copy_w16(ptr nocapture noundef writeonly %dst, i32 noundef %i_dst, ptr nocapture noundef readonly %src, i32 noundef %i_src, i32 noundef %i_height) #0 {
entry:
  %cmp6.i = icmp sgt i32 %i_height, 0
  br i1 %cmp6.i, label %for.body.lr.ph.i, label %mc_copy.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %idx.ext.i = sext i32 %i_src to i64
  %idx.ext1.i = sext i32 %i_dst to i64
  %xtraiter = and i32 %i_height, 3
  %0 = icmp ult i32 %i_height, 4
  br i1 %0, label %mc_copy.exit.loopexit.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = and i32 %i_height, 2147483644
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %src.addr.08.i = phi ptr [ %src, %for.body.lr.ph.i.new ], [ %add.ptr.i.3, %for.body.i ]
  %dst.addr.07.i = phi ptr [ %dst, %for.body.lr.ph.i.new ], [ %add.ptr2.i.3, %for.body.i ]
  %niter = phi i32 [ 0, %for.body.lr.ph.i.new ], [ %niter.next.3, %for.body.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %dst.addr.07.i, ptr noundef nonnull align 1 dereferenceable(16) %src.addr.08.i, i64 16, i1 false)
  %add.ptr.i = getelementptr inbounds i8, ptr %src.addr.08.i, i64 %idx.ext.i
  %add.ptr2.i = getelementptr inbounds i8, ptr %dst.addr.07.i, i64 %idx.ext1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %add.ptr2.i, ptr noundef nonnull align 1 dereferenceable(16) %add.ptr.i, i64 16, i1 false)
  %add.ptr.i.1 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext.i
  %add.ptr2.i.1 = getelementptr inbounds i8, ptr %add.ptr2.i, i64 %idx.ext1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %add.ptr2.i.1, ptr noundef nonnull align 1 dereferenceable(16) %add.ptr.i.1, i64 16, i1 false)
  %add.ptr.i.2 = getelementptr inbounds i8, ptr %add.ptr.i.1, i64 %idx.ext.i
  %add.ptr2.i.2 = getelementptr inbounds i8, ptr %add.ptr2.i.1, i64 %idx.ext1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %add.ptr2.i.2, ptr noundef nonnull align 1 dereferenceable(16) %add.ptr.i.2, i64 16, i1 false)
  %add.ptr.i.3 = getelementptr inbounds i8, ptr %add.ptr.i.2, i64 %idx.ext.i
  %add.ptr2.i.3 = getelementptr inbounds i8, ptr %add.ptr2.i.2, i64 %idx.ext1.i
  %niter.next.3 = add i32 %niter, 4
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %mc_copy.exit.loopexit.unr-lcssa, label %for.body.i

mc_copy.exit.loopexit.unr-lcssa:                  ; preds = %for.body.i, %for.body.lr.ph.i
  %src.addr.08.i.unr = phi ptr [ %src, %for.body.lr.ph.i ], [ %add.ptr.i.3, %for.body.i ]
  %dst.addr.07.i.unr = phi ptr [ %dst, %for.body.lr.ph.i ], [ %add.ptr2.i.3, %for.body.i ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %mc_copy.exit, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %mc_copy.exit.loopexit.unr-lcssa, %for.body.i.epil
  %src.addr.08.i.epil = phi ptr [ %add.ptr.i.epil, %for.body.i.epil ], [ %src.addr.08.i.unr, %mc_copy.exit.loopexit.unr-lcssa ]
  %dst.addr.07.i.epil = phi ptr [ %add.ptr2.i.epil, %for.body.i.epil ], [ %dst.addr.07.i.unr, %mc_copy.exit.loopexit.unr-lcssa ]
  %epil.iter = phi i32 [ %epil.iter.next, %for.body.i.epil ], [ 0, %mc_copy.exit.loopexit.unr-lcssa ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %dst.addr.07.i.epil, ptr noundef nonnull align 1 dereferenceable(16) %src.addr.08.i.epil, i64 16, i1 false)
  %add.ptr.i.epil = getelementptr inbounds i8, ptr %src.addr.08.i.epil, i64 %idx.ext.i
  %add.ptr2.i.epil = getelementptr inbounds i8, ptr %dst.addr.07.i.epil, i64 %idx.ext1.i
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %mc_copy.exit, label %for.body.i.epil, !llvm.loop !140

mc_copy.exit:                                     ; preds = %mc_copy.exit.loopexit.unr-lcssa, %for.body.i.epil, %entry
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_copy_w8(ptr nocapture noundef writeonly %dst, i32 noundef %i_dst, ptr nocapture noundef readonly %src, i32 noundef %i_src, i32 noundef %i_height) #0 {
entry:
  %cmp6.i = icmp sgt i32 %i_height, 0
  br i1 %cmp6.i, label %for.body.lr.ph.i, label %mc_copy.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %idx.ext.i = sext i32 %i_src to i64
  %idx.ext1.i = sext i32 %i_dst to i64
  %xtraiter = and i32 %i_height, 7
  %0 = icmp ult i32 %i_height, 8
  br i1 %0, label %mc_copy.exit.loopexit.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = and i32 %i_height, 2147483640
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %src.addr.08.i = phi ptr [ %src, %for.body.lr.ph.i.new ], [ %add.ptr.i.7, %for.body.i ]
  %dst.addr.07.i = phi ptr [ %dst, %for.body.lr.ph.i.new ], [ %add.ptr2.i.7, %for.body.i ]
  %niter = phi i32 [ 0, %for.body.lr.ph.i.new ], [ %niter.next.7, %for.body.i ]
  %1 = load i64, ptr %src.addr.08.i, align 1
  store i64 %1, ptr %dst.addr.07.i, align 1
  %add.ptr.i = getelementptr inbounds i8, ptr %src.addr.08.i, i64 %idx.ext.i
  %add.ptr2.i = getelementptr inbounds i8, ptr %dst.addr.07.i, i64 %idx.ext1.i
  %2 = load i64, ptr %add.ptr.i, align 1
  store i64 %2, ptr %add.ptr2.i, align 1
  %add.ptr.i.1 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext.i
  %add.ptr2.i.1 = getelementptr inbounds i8, ptr %add.ptr2.i, i64 %idx.ext1.i
  %3 = load i64, ptr %add.ptr.i.1, align 1
  store i64 %3, ptr %add.ptr2.i.1, align 1
  %add.ptr.i.2 = getelementptr inbounds i8, ptr %add.ptr.i.1, i64 %idx.ext.i
  %add.ptr2.i.2 = getelementptr inbounds i8, ptr %add.ptr2.i.1, i64 %idx.ext1.i
  %4 = load i64, ptr %add.ptr.i.2, align 1
  store i64 %4, ptr %add.ptr2.i.2, align 1
  %add.ptr.i.3 = getelementptr inbounds i8, ptr %add.ptr.i.2, i64 %idx.ext.i
  %add.ptr2.i.3 = getelementptr inbounds i8, ptr %add.ptr2.i.2, i64 %idx.ext1.i
  %5 = load i64, ptr %add.ptr.i.3, align 1
  store i64 %5, ptr %add.ptr2.i.3, align 1
  %add.ptr.i.4 = getelementptr inbounds i8, ptr %add.ptr.i.3, i64 %idx.ext.i
  %add.ptr2.i.4 = getelementptr inbounds i8, ptr %add.ptr2.i.3, i64 %idx.ext1.i
  %6 = load i64, ptr %add.ptr.i.4, align 1
  store i64 %6, ptr %add.ptr2.i.4, align 1
  %add.ptr.i.5 = getelementptr inbounds i8, ptr %add.ptr.i.4, i64 %idx.ext.i
  %add.ptr2.i.5 = getelementptr inbounds i8, ptr %add.ptr2.i.4, i64 %idx.ext1.i
  %7 = load i64, ptr %add.ptr.i.5, align 1
  store i64 %7, ptr %add.ptr2.i.5, align 1
  %add.ptr.i.6 = getelementptr inbounds i8, ptr %add.ptr.i.5, i64 %idx.ext.i
  %add.ptr2.i.6 = getelementptr inbounds i8, ptr %add.ptr2.i.5, i64 %idx.ext1.i
  %8 = load i64, ptr %add.ptr.i.6, align 1
  store i64 %8, ptr %add.ptr2.i.6, align 1
  %add.ptr.i.7 = getelementptr inbounds i8, ptr %add.ptr.i.6, i64 %idx.ext.i
  %add.ptr2.i.7 = getelementptr inbounds i8, ptr %add.ptr2.i.6, i64 %idx.ext1.i
  %niter.next.7 = add i32 %niter, 8
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %mc_copy.exit.loopexit.unr-lcssa, label %for.body.i

mc_copy.exit.loopexit.unr-lcssa:                  ; preds = %for.body.i, %for.body.lr.ph.i
  %src.addr.08.i.unr = phi ptr [ %src, %for.body.lr.ph.i ], [ %add.ptr.i.7, %for.body.i ]
  %dst.addr.07.i.unr = phi ptr [ %dst, %for.body.lr.ph.i ], [ %add.ptr2.i.7, %for.body.i ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %mc_copy.exit, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %mc_copy.exit.loopexit.unr-lcssa, %for.body.i.epil
  %src.addr.08.i.epil = phi ptr [ %add.ptr.i.epil, %for.body.i.epil ], [ %src.addr.08.i.unr, %mc_copy.exit.loopexit.unr-lcssa ]
  %dst.addr.07.i.epil = phi ptr [ %add.ptr2.i.epil, %for.body.i.epil ], [ %dst.addr.07.i.unr, %mc_copy.exit.loopexit.unr-lcssa ]
  %epil.iter = phi i32 [ %epil.iter.next, %for.body.i.epil ], [ 0, %mc_copy.exit.loopexit.unr-lcssa ]
  %9 = load i64, ptr %src.addr.08.i.epil, align 1
  store i64 %9, ptr %dst.addr.07.i.epil, align 1
  %add.ptr.i.epil = getelementptr inbounds i8, ptr %src.addr.08.i.epil, i64 %idx.ext.i
  %add.ptr2.i.epil = getelementptr inbounds i8, ptr %dst.addr.07.i.epil, i64 %idx.ext1.i
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %mc_copy.exit, label %for.body.i.epil, !llvm.loop !141

mc_copy.exit:                                     ; preds = %mc_copy.exit.loopexit.unr-lcssa, %for.body.i.epil, %entry
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_copy_w4(ptr nocapture noundef writeonly %dst, i32 noundef %i_dst, ptr nocapture noundef readonly %src, i32 noundef %i_src, i32 noundef %i_height) #0 {
entry:
  %cmp6.i = icmp sgt i32 %i_height, 0
  br i1 %cmp6.i, label %for.body.lr.ph.i, label %mc_copy.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %idx.ext.i = sext i32 %i_src to i64
  %idx.ext1.i = sext i32 %i_dst to i64
  %xtraiter = and i32 %i_height, 7
  %0 = icmp ult i32 %i_height, 8
  br i1 %0, label %mc_copy.exit.loopexit.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = and i32 %i_height, 2147483640
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %src.addr.08.i = phi ptr [ %src, %for.body.lr.ph.i.new ], [ %add.ptr.i.7, %for.body.i ]
  %dst.addr.07.i = phi ptr [ %dst, %for.body.lr.ph.i.new ], [ %add.ptr2.i.7, %for.body.i ]
  %niter = phi i32 [ 0, %for.body.lr.ph.i.new ], [ %niter.next.7, %for.body.i ]
  %1 = load i32, ptr %src.addr.08.i, align 1
  store i32 %1, ptr %dst.addr.07.i, align 1
  %add.ptr.i = getelementptr inbounds i8, ptr %src.addr.08.i, i64 %idx.ext.i
  %add.ptr2.i = getelementptr inbounds i8, ptr %dst.addr.07.i, i64 %idx.ext1.i
  %2 = load i32, ptr %add.ptr.i, align 1
  store i32 %2, ptr %add.ptr2.i, align 1
  %add.ptr.i.1 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext.i
  %add.ptr2.i.1 = getelementptr inbounds i8, ptr %add.ptr2.i, i64 %idx.ext1.i
  %3 = load i32, ptr %add.ptr.i.1, align 1
  store i32 %3, ptr %add.ptr2.i.1, align 1
  %add.ptr.i.2 = getelementptr inbounds i8, ptr %add.ptr.i.1, i64 %idx.ext.i
  %add.ptr2.i.2 = getelementptr inbounds i8, ptr %add.ptr2.i.1, i64 %idx.ext1.i
  %4 = load i32, ptr %add.ptr.i.2, align 1
  store i32 %4, ptr %add.ptr2.i.2, align 1
  %add.ptr.i.3 = getelementptr inbounds i8, ptr %add.ptr.i.2, i64 %idx.ext.i
  %add.ptr2.i.3 = getelementptr inbounds i8, ptr %add.ptr2.i.2, i64 %idx.ext1.i
  %5 = load i32, ptr %add.ptr.i.3, align 1
  store i32 %5, ptr %add.ptr2.i.3, align 1
  %add.ptr.i.4 = getelementptr inbounds i8, ptr %add.ptr.i.3, i64 %idx.ext.i
  %add.ptr2.i.4 = getelementptr inbounds i8, ptr %add.ptr2.i.3, i64 %idx.ext1.i
  %6 = load i32, ptr %add.ptr.i.4, align 1
  store i32 %6, ptr %add.ptr2.i.4, align 1
  %add.ptr.i.5 = getelementptr inbounds i8, ptr %add.ptr.i.4, i64 %idx.ext.i
  %add.ptr2.i.5 = getelementptr inbounds i8, ptr %add.ptr2.i.4, i64 %idx.ext1.i
  %7 = load i32, ptr %add.ptr.i.5, align 1
  store i32 %7, ptr %add.ptr2.i.5, align 1
  %add.ptr.i.6 = getelementptr inbounds i8, ptr %add.ptr.i.5, i64 %idx.ext.i
  %add.ptr2.i.6 = getelementptr inbounds i8, ptr %add.ptr2.i.5, i64 %idx.ext1.i
  %8 = load i32, ptr %add.ptr.i.6, align 1
  store i32 %8, ptr %add.ptr2.i.6, align 1
  %add.ptr.i.7 = getelementptr inbounds i8, ptr %add.ptr.i.6, i64 %idx.ext.i
  %add.ptr2.i.7 = getelementptr inbounds i8, ptr %add.ptr2.i.6, i64 %idx.ext1.i
  %niter.next.7 = add i32 %niter, 8
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %mc_copy.exit.loopexit.unr-lcssa, label %for.body.i

mc_copy.exit.loopexit.unr-lcssa:                  ; preds = %for.body.i, %for.body.lr.ph.i
  %src.addr.08.i.unr = phi ptr [ %src, %for.body.lr.ph.i ], [ %add.ptr.i.7, %for.body.i ]
  %dst.addr.07.i.unr = phi ptr [ %dst, %for.body.lr.ph.i ], [ %add.ptr2.i.7, %for.body.i ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %mc_copy.exit, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %mc_copy.exit.loopexit.unr-lcssa, %for.body.i.epil
  %src.addr.08.i.epil = phi ptr [ %add.ptr.i.epil, %for.body.i.epil ], [ %src.addr.08.i.unr, %mc_copy.exit.loopexit.unr-lcssa ]
  %dst.addr.07.i.epil = phi ptr [ %add.ptr2.i.epil, %for.body.i.epil ], [ %dst.addr.07.i.unr, %mc_copy.exit.loopexit.unr-lcssa ]
  %epil.iter = phi i32 [ %epil.iter.next, %for.body.i.epil ], [ 0, %mc_copy.exit.loopexit.unr-lcssa ]
  %9 = load i32, ptr %src.addr.08.i.epil, align 1
  store i32 %9, ptr %dst.addr.07.i.epil, align 1
  %add.ptr.i.epil = getelementptr inbounds i8, ptr %src.addr.08.i.epil, i64 %idx.ext.i
  %add.ptr2.i.epil = getelementptr inbounds i8, ptr %dst.addr.07.i.epil, i64 %idx.ext1.i
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %mc_copy.exit, label %for.body.i.epil, !llvm.loop !142

mc_copy.exit:                                     ; preds = %mc_copy.exit.loopexit.unr-lcssa, %for.body.i.epil, %entry
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @hpel_filter(ptr nocapture noundef writeonly %dsth, ptr nocapture noundef writeonly %dstv, ptr nocapture noundef writeonly %dstc, ptr nocapture noundef readonly %src, i32 noundef %stride, i32 noundef %width, i32 noundef %height, ptr nocapture noundef %buf) #0 {
entry:
  %cmp215 = icmp sgt i32 %height, 0
  br i1 %cmp215, label %for.cond1.preheader.lr.ph, label %for.cond.cleanup

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %invariant.gep = getelementptr i8, ptr %buf, i64 4
  %cmp2209 = icmp sgt i32 %width, -5
  %mul = shl i32 %stride, 1
  %mul5 = mul i32 %stride, 3
  %cmp42211 = icmp sgt i32 %width, 0
  %idx.ext = sext i32 %stride to i64
  %0 = sext i32 %mul to i64
  %1 = sext i32 %mul5 to i64
  %2 = add i32 %width, 2
  %smax = tail call i32 @llvm.smax.i32(i32 %2, i32 -2)
  %3 = add i32 %smax, 1
  %wide.trip.count = zext i32 %width to i64
  %wide.trip.count238 = zext nneg i32 %width to i64
  %4 = add nsw i32 %height, -1
  %5 = zext i32 %4 to i64
  %6 = mul nsw i64 %idx.ext, %5
  %7 = add i64 %6, %wide.trip.count
  %scevgep = getelementptr i8, ptr %dsth, i64 %7
  %scevgep241 = getelementptr i8, ptr %src, i64 -2
  %8 = getelementptr i8, ptr %src, i64 %7
  %scevgep242 = getelementptr i8, ptr %8, i64 3
  %9 = add nsw i32 %height, -1
  %10 = zext i32 %9 to i64
  %11 = mul nsw i64 %idx.ext, %10
  %12 = getelementptr i8, ptr %dstc, i64 %11
  %scevgep280 = getelementptr i8, ptr %12, i64 %wide.trip.count
  %13 = shl nuw nsw i64 %wide.trip.count, 1
  %14 = getelementptr i8, ptr %buf, i64 %13
  %scevgep281 = getelementptr i8, ptr %14, i64 10
  %scevgep321 = getelementptr i8, ptr %dstv, i64 -2
  %15 = add nsw i32 %height, -1
  %16 = zext i32 %15 to i64
  %17 = mul nsw i64 %idx.ext, %16
  %18 = add i32 %smax, 2
  %19 = zext i32 %18 to i64
  %20 = add i64 %17, %19
  %21 = add i64 %20, -1
  %scevgep322 = getelementptr i8, ptr %dstv, i64 %21
  %22 = shl nuw nsw i64 %19, 1
  %23 = getelementptr i8, ptr %buf, i64 %22
  %scevgep323 = getelementptr i8, ptr %23, i64 2
  %24 = getelementptr i8, ptr %src, i64 %idx.ext
  %scevgep324 = getelementptr i8, ptr %24, i64 -2
  %25 = zext nneg i32 %height to i64
  %26 = mul nsw i64 %25, %idx.ext
  %27 = getelementptr i8, ptr %src, i64 %26
  %28 = getelementptr i8, ptr %27, i64 %19
  %scevgep325 = getelementptr i8, ptr %28, i64 -1
  %scevgep326 = getelementptr i8, ptr %src, i64 -2
  %scevgep327 = getelementptr i8, ptr %src, i64 %21
  %29 = getelementptr i8, ptr %src, i64 %0
  %scevgep328 = getelementptr i8, ptr %29, i64 -2
  %30 = getelementptr i8, ptr %src, i64 %17
  %31 = getelementptr i8, ptr %30, i64 %0
  %32 = getelementptr i8, ptr %31, i64 %19
  %scevgep329 = getelementptr i8, ptr %32, i64 -1
  %33 = sub nsw i64 -2, %idx.ext
  %scevgep330 = getelementptr i8, ptr %src, i64 %33
  %34 = add nsw i64 %16, -1
  %35 = mul i64 %34, %idx.ext
  %36 = getelementptr i8, ptr %src, i64 %35
  %37 = getelementptr i8, ptr %36, i64 %19
  %scevgep331 = getelementptr i8, ptr %37, i64 -1
  %38 = getelementptr i8, ptr %src, i64 %1
  %scevgep332 = getelementptr i8, ptr %38, i64 -2
  %39 = getelementptr i8, ptr %src, i64 %17
  %40 = getelementptr i8, ptr %39, i64 %1
  %41 = getelementptr i8, ptr %40, i64 %19
  %scevgep333 = getelementptr i8, ptr %41, i64 -1
  %42 = sub nuw nsw i64 -2, %0
  %scevgep334 = getelementptr i8, ptr %src, i64 %42
  %43 = xor i64 %0, -1
  %44 = getelementptr i8, ptr %src, i64 %17
  %45 = getelementptr i8, ptr %44, i64 %19
  %scevgep335 = getelementptr i8, ptr %45, i64 %43
  %46 = add i32 %smax, 3
  %47 = zext i32 %46 to i64
  %min.iters.check407 = icmp ult i32 %46, 32
  %bound0336 = icmp ult ptr %scevgep321, %scevgep323
  %bound1337 = icmp ugt ptr %scevgep322, %buf
  %found.conflict338 = and i1 %bound0336, %bound1337
  %bound0340 = icmp ult ptr %scevgep321, %scevgep325
  %bound1341 = icmp ult ptr %scevgep324, %scevgep322
  %found.conflict342 = and i1 %bound0340, %bound1341
  %stride.check343 = icmp slt i32 %stride, 0
  %48 = or i1 %found.conflict342, %stride.check343
  %conflict.rdx = or i1 %found.conflict338, %48
  %bound0345 = icmp ult ptr %scevgep321, %scevgep327
  %bound1346 = icmp ult ptr %scevgep326, %scevgep322
  %found.conflict347 = and i1 %bound0345, %bound1346
  %conflict.rdx350 = or i1 %found.conflict347, %conflict.rdx
  %bound0351 = icmp ult ptr %scevgep321, %scevgep329
  %bound1352 = icmp ult ptr %scevgep328, %scevgep322
  %found.conflict353 = and i1 %bound0351, %bound1352
  %conflict.rdx356 = or i1 %found.conflict353, %conflict.rdx350
  %bound0357 = icmp ult ptr %scevgep321, %scevgep331
  %bound1358 = icmp ult ptr %scevgep330, %scevgep322
  %found.conflict359 = and i1 %bound0357, %bound1358
  %conflict.rdx362 = or i1 %found.conflict359, %conflict.rdx356
  %bound0363 = icmp ult ptr %scevgep321, %scevgep333
  %bound1364 = icmp ult ptr %scevgep332, %scevgep322
  %found.conflict365 = and i1 %bound0363, %bound1364
  %conflict.rdx368 = or i1 %found.conflict365, %conflict.rdx362
  %bound0369 = icmp ult ptr %scevgep321, %scevgep335
  %bound1370 = icmp ult ptr %scevgep334, %scevgep322
  %found.conflict371 = and i1 %bound0369, %bound1370
  %conflict.rdx374 = or i1 %found.conflict371, %conflict.rdx368
  %bound0375 = icmp ugt ptr %scevgep325, %buf
  %bound1376 = icmp ult ptr %scevgep324, %scevgep323
  %found.conflict377 = and i1 %bound0375, %bound1376
  %conflict.rdx379 = or i1 %found.conflict377, %conflict.rdx374
  %bound0380 = icmp ugt ptr %scevgep327, %buf
  %bound1381 = icmp ult ptr %scevgep326, %scevgep323
  %found.conflict382 = and i1 %bound0380, %bound1381
  %conflict.rdx384 = or i1 %found.conflict382, %conflict.rdx379
  %bound0385 = icmp ugt ptr %scevgep329, %buf
  %bound1386 = icmp ult ptr %scevgep328, %scevgep323
  %found.conflict387 = and i1 %bound0385, %bound1386
  %stride.check388 = icmp slt i32 %stride, 0
  %49 = or i1 %found.conflict387, %stride.check388
  %conflict.rdx389 = or i1 %conflict.rdx384, %49
  %bound0390 = icmp ugt ptr %scevgep331, %buf
  %bound1391 = icmp ult ptr %scevgep330, %scevgep323
  %found.conflict392 = and i1 %bound0390, %bound1391
  %conflict.rdx394 = or i1 %found.conflict392, %conflict.rdx389
  %bound0395 = icmp ugt ptr %scevgep333, %buf
  %bound1396 = icmp ult ptr %scevgep332, %scevgep323
  %found.conflict397 = and i1 %bound0395, %bound1396
  %conflict.rdx399 = or i1 %found.conflict397, %conflict.rdx394
  %bound0400 = icmp ugt ptr %scevgep335, %buf
  %bound1401 = icmp ult ptr %scevgep334, %scevgep323
  %found.conflict402 = and i1 %bound0400, %bound1401
  %conflict.rdx404 = or i1 %found.conflict402, %conflict.rdx399
  %n.vec410 = and i64 %47, 4294967264
  %ind.end = add nsw i64 %n.vec410, -2
  %cmp.n439 = icmp eq i64 %n.vec410, %47
  %min.iters.check287 = icmp ult i32 %width, 32
  %bound0282 = icmp ugt ptr %scevgep281, %dstc
  %bound1283 = icmp ugt ptr %scevgep280, %buf
  %found.conflict284 = and i1 %bound0282, %bound1283
  %stride.check285 = icmp slt i32 %stride, 0
  %50 = or i1 %found.conflict284, %stride.check285
  %n.vec290 = and i64 %wide.trip.count, 2147483616
  %cmp.n319 = icmp eq i64 %n.vec290, %wide.trip.count
  %min.iters.check = icmp ult i32 %width, 8
  %bound0 = icmp ugt ptr %scevgep242, %dsth
  %bound1 = icmp ult ptr %scevgep241, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %stride, 0
  %51 = or i1 %found.conflict, %stride.check
  %min.iters.check244 = icmp ult i32 %width, 64
  %n.vec = and i64 %wide.trip.count, 2147483584
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %n.vec.remaining = and i64 %wide.trip.count, 56
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  %n.vec269 = and i64 %wide.trip.count, 2147483640
  %cmp.n278 = icmp eq i64 %n.vec269, %wide.trip.count
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.cond.cleanup93
  %dsth.addr.0220 = phi ptr [ %dsth, %for.cond1.preheader.lr.ph ], [ %add.ptr133, %for.cond.cleanup93 ]
  %y.0219 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc141, %for.cond.cleanup93 ]
  %dstv.addr.0218 = phi ptr [ %dstv, %for.cond1.preheader.lr.ph ], [ %add.ptr135, %for.cond.cleanup93 ]
  %dstc.addr.0217 = phi ptr [ %dstc, %for.cond1.preheader.lr.ph ], [ %add.ptr137, %for.cond.cleanup93 ]
  %src.addr.0216 = phi ptr [ %src, %for.cond1.preheader.lr.ph ], [ %add.ptr139, %for.cond.cleanup93 ]
  br i1 %cmp2209, label %for.body4.preheader, label %for.cond.cleanup93

for.body4.preheader:                              ; preds = %for.cond1.preheader
  %brmerge = select i1 %min.iters.check407, i1 true, i1 %conflict.rdx404
  br i1 %brmerge, label %for.body4.preheader441, label %vector.body412

for.body4.preheader441:                           ; preds = %for.body4.preheader, %middle.block405
  %indvars.iv.ph = phi i64 [ -2, %for.body4.preheader ], [ %ind.end, %middle.block405 ]
  br label %for.body4

vector.body412:                                   ; preds = %for.body4.preheader, %vector.body412
  %index413 = phi i64 [ %index.next438, %vector.body412 ], [ 0, %for.body4.preheader ]
  %offset.idx = add i64 %index413, -2
  %52 = sub nsw i64 %offset.idx, %0
  %53 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %52
  %54 = getelementptr inbounds i8, ptr %53, i64 8
  %55 = getelementptr inbounds i8, ptr %53, i64 16
  %56 = getelementptr inbounds i8, ptr %53, i64 24
  %wide.load414 = load <8 x i8>, ptr %53, align 1, !alias.scope !143
  %wide.load415 = load <8 x i8>, ptr %54, align 1, !alias.scope !143
  %wide.load416 = load <8 x i8>, ptr %55, align 1, !alias.scope !143
  %wide.load417 = load <8 x i8>, ptr %56, align 1, !alias.scope !143
  %57 = zext <8 x i8> %wide.load414 to <8 x i32>
  %58 = zext <8 x i8> %wide.load415 to <8 x i32>
  %59 = zext <8 x i8> %wide.load416 to <8 x i32>
  %60 = zext <8 x i8> %wide.load417 to <8 x i32>
  %61 = add nsw i64 %offset.idx, %1
  %62 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %61
  %63 = getelementptr inbounds i8, ptr %62, i64 8
  %64 = getelementptr inbounds i8, ptr %62, i64 16
  %65 = getelementptr inbounds i8, ptr %62, i64 24
  %wide.load418 = load <8 x i8>, ptr %62, align 1, !alias.scope !146
  %wide.load419 = load <8 x i8>, ptr %63, align 1, !alias.scope !146
  %wide.load420 = load <8 x i8>, ptr %64, align 1, !alias.scope !146
  %wide.load421 = load <8 x i8>, ptr %65, align 1, !alias.scope !146
  %66 = zext <8 x i8> %wide.load418 to <8 x i32>
  %67 = zext <8 x i8> %wide.load419 to <8 x i32>
  %68 = zext <8 x i8> %wide.load420 to <8 x i32>
  %69 = zext <8 x i8> %wide.load421 to <8 x i32>
  %70 = add nuw nsw <8 x i32> %66, %57
  %71 = add nuw nsw <8 x i32> %67, %58
  %72 = add nuw nsw <8 x i32> %68, %59
  %73 = add nuw nsw <8 x i32> %69, %60
  %74 = sub nsw i64 %offset.idx, %idx.ext
  %75 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %74
  %76 = getelementptr inbounds i8, ptr %75, i64 8
  %77 = getelementptr inbounds i8, ptr %75, i64 16
  %78 = getelementptr inbounds i8, ptr %75, i64 24
  %wide.load422 = load <8 x i8>, ptr %75, align 1, !alias.scope !148
  %wide.load423 = load <8 x i8>, ptr %76, align 1, !alias.scope !148
  %wide.load424 = load <8 x i8>, ptr %77, align 1, !alias.scope !148
  %wide.load425 = load <8 x i8>, ptr %78, align 1, !alias.scope !148
  %79 = zext <8 x i8> %wide.load422 to <8 x i32>
  %80 = zext <8 x i8> %wide.load423 to <8 x i32>
  %81 = zext <8 x i8> %wide.load424 to <8 x i32>
  %82 = zext <8 x i8> %wide.load425 to <8 x i32>
  %83 = add nsw i64 %offset.idx, %0
  %84 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %83
  %85 = getelementptr inbounds i8, ptr %84, i64 8
  %86 = getelementptr inbounds i8, ptr %84, i64 16
  %87 = getelementptr inbounds i8, ptr %84, i64 24
  %wide.load426 = load <8 x i8>, ptr %84, align 1, !alias.scope !150
  %wide.load427 = load <8 x i8>, ptr %85, align 1, !alias.scope !150
  %wide.load428 = load <8 x i8>, ptr %86, align 1, !alias.scope !150
  %wide.load429 = load <8 x i8>, ptr %87, align 1, !alias.scope !150
  %88 = zext <8 x i8> %wide.load426 to <8 x i32>
  %89 = zext <8 x i8> %wide.load427 to <8 x i32>
  %90 = zext <8 x i8> %wide.load428 to <8 x i32>
  %91 = zext <8 x i8> %wide.load429 to <8 x i32>
  %92 = add nuw nsw <8 x i32> %88, %79
  %93 = add nuw nsw <8 x i32> %89, %80
  %94 = add nuw nsw <8 x i32> %90, %81
  %95 = add nuw nsw <8 x i32> %91, %82
  %96 = mul nsw <8 x i32> %92, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %97 = mul nsw <8 x i32> %93, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %98 = mul nsw <8 x i32> %94, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %99 = mul nsw <8 x i32> %95, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %100 = add nsw <8 x i32> %70, %96
  %101 = add nsw <8 x i32> %71, %97
  %102 = add nsw <8 x i32> %72, %98
  %103 = add nsw <8 x i32> %73, %99
  %104 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %offset.idx
  %105 = getelementptr inbounds i8, ptr %104, i64 8
  %106 = getelementptr inbounds i8, ptr %104, i64 16
  %107 = getelementptr inbounds i8, ptr %104, i64 24
  %wide.load430 = load <8 x i8>, ptr %104, align 1, !alias.scope !152
  %wide.load431 = load <8 x i8>, ptr %105, align 1, !alias.scope !152
  %wide.load432 = load <8 x i8>, ptr %106, align 1, !alias.scope !152
  %wide.load433 = load <8 x i8>, ptr %107, align 1, !alias.scope !152
  %108 = zext <8 x i8> %wide.load430 to <8 x i32>
  %109 = zext <8 x i8> %wide.load431 to <8 x i32>
  %110 = zext <8 x i8> %wide.load432 to <8 x i32>
  %111 = zext <8 x i8> %wide.load433 to <8 x i32>
  %112 = add nsw i64 %offset.idx, %idx.ext
  %113 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %112
  %114 = getelementptr inbounds i8, ptr %113, i64 8
  %115 = getelementptr inbounds i8, ptr %113, i64 16
  %116 = getelementptr inbounds i8, ptr %113, i64 24
  %wide.load434 = load <8 x i8>, ptr %113, align 1, !alias.scope !154
  %wide.load435 = load <8 x i8>, ptr %114, align 1, !alias.scope !154
  %wide.load436 = load <8 x i8>, ptr %115, align 1, !alias.scope !154
  %wide.load437 = load <8 x i8>, ptr %116, align 1, !alias.scope !154
  %117 = zext <8 x i8> %wide.load434 to <8 x i32>
  %118 = zext <8 x i8> %wide.load435 to <8 x i32>
  %119 = zext <8 x i8> %wide.load436 to <8 x i32>
  %120 = zext <8 x i8> %wide.load437 to <8 x i32>
  %121 = add nuw nsw <8 x i32> %117, %108
  %122 = add nuw nsw <8 x i32> %118, %109
  %123 = add nuw nsw <8 x i32> %119, %110
  %124 = add nuw nsw <8 x i32> %120, %111
  %125 = mul nuw nsw <8 x i32> %121, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %126 = mul nuw nsw <8 x i32> %122, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %127 = mul nuw nsw <8 x i32> %123, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %128 = mul nuw nsw <8 x i32> %124, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %129 = add nsw <8 x i32> %100, %125
  %130 = add nsw <8 x i32> %101, %126
  %131 = add nsw <8 x i32> %102, %127
  %132 = add nsw <8 x i32> %103, %128
  %133 = add nsw <8 x i32> %129, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %134 = add nsw <8 x i32> %130, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %135 = add nsw <8 x i32> %131, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %136 = add nsw <8 x i32> %132, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %137 = ashr <8 x i32> %133, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %138 = ashr <8 x i32> %134, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %139 = ashr <8 x i32> %135, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %140 = ashr <8 x i32> %136, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %141 = icmp ult <8 x i32> %137, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>
  %142 = icmp ult <8 x i32> %138, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>
  %143 = icmp ult <8 x i32> %139, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>
  %144 = icmp ult <8 x i32> %140, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>
  %145 = icmp sgt <8 x i32> %137, zeroinitializer
  %146 = icmp sgt <8 x i32> %138, zeroinitializer
  %147 = icmp sgt <8 x i32> %139, zeroinitializer
  %148 = icmp sgt <8 x i32> %140, zeroinitializer
  %149 = sext <8 x i1> %145 to <8 x i32>
  %150 = sext <8 x i1> %146 to <8 x i32>
  %151 = sext <8 x i1> %147 to <8 x i32>
  %152 = sext <8 x i1> %148 to <8 x i32>
  %153 = select <8 x i1> %141, <8 x i32> %137, <8 x i32> %149
  %154 = select <8 x i1> %142, <8 x i32> %138, <8 x i32> %150
  %155 = select <8 x i1> %143, <8 x i32> %139, <8 x i32> %151
  %156 = select <8 x i1> %144, <8 x i32> %140, <8 x i32> %152
  %157 = trunc <8 x i32> %153 to <8 x i8>
  %158 = trunc <8 x i32> %154 to <8 x i8>
  %159 = trunc <8 x i32> %155 to <8 x i8>
  %160 = trunc <8 x i32> %156 to <8 x i8>
  %161 = getelementptr inbounds i8, ptr %dstv.addr.0218, i64 %offset.idx
  %162 = getelementptr inbounds i8, ptr %161, i64 8
  %163 = getelementptr inbounds i8, ptr %161, i64 16
  %164 = getelementptr inbounds i8, ptr %161, i64 24
  store <8 x i8> %157, ptr %161, align 1, !alias.scope !156, !noalias !158
  store <8 x i8> %158, ptr %162, align 1, !alias.scope !156, !noalias !158
  store <8 x i8> %159, ptr %163, align 1, !alias.scope !156, !noalias !158
  store <8 x i8> %160, ptr %164, align 1, !alias.scope !156, !noalias !158
  %165 = trunc <8 x i32> %129 to <8 x i16>
  %166 = trunc <8 x i32> %130 to <8 x i16>
  %167 = trunc <8 x i32> %131 to <8 x i16>
  %168 = trunc <8 x i32> %132 to <8 x i16>
  %169 = getelementptr i16, ptr %buf, i64 %index413
  %170 = getelementptr i8, ptr %169, i64 16
  %171 = getelementptr i8, ptr %169, i64 32
  %172 = getelementptr i8, ptr %169, i64 48
  store <8 x i16> %165, ptr %169, align 2, !alias.scope !160, !noalias !161
  store <8 x i16> %166, ptr %170, align 2, !alias.scope !160, !noalias !161
  store <8 x i16> %167, ptr %171, align 2, !alias.scope !160, !noalias !161
  store <8 x i16> %168, ptr %172, align 2, !alias.scope !160, !noalias !161
  %index.next438 = add nuw i64 %index413, 32
  %173 = icmp eq i64 %index.next438, %n.vec410
  br i1 %173, label %middle.block405, label %vector.body412, !llvm.loop !162

middle.block405:                                  ; preds = %vector.body412
  br i1 %cmp.n439, label %for.cond41.preheader, label %for.body4.preheader441

for.cond.cleanup:                                 ; preds = %for.cond.cleanup93, %entry
  ret void

for.cond41.preheader:                             ; preds = %for.body4, %middle.block405
  br i1 %cmp42211, label %for.body45.preheader, label %for.cond.cleanup93

for.body45.preheader:                             ; preds = %for.cond41.preheader
  %brmerge442 = select i1 %min.iters.check287, i1 true, i1 %50
  br i1 %brmerge442, label %for.body45.preheader440, label %vector.body292

for.body45.preheader440:                          ; preds = %for.body45.preheader, %middle.block286
  %indvars.iv227.ph = phi i64 [ 0, %for.body45.preheader ], [ %n.vec290, %middle.block286 ]
  br label %for.body45

vector.body292:                                   ; preds = %for.body45.preheader, %vector.body292
  %index293 = phi i64 [ %index.next318, %vector.body292 ], [ 0, %for.body45.preheader ]
  %174 = getelementptr i16, ptr %invariant.gep, i64 %index293
  %175 = getelementptr i8, ptr %174, i64 -4
  %176 = getelementptr i8, ptr %174, i64 12
  %177 = getelementptr i8, ptr %174, i64 28
  %178 = getelementptr i8, ptr %174, i64 44
  %wide.load294 = load <8 x i16>, ptr %175, align 2, !alias.scope !163
  %wide.load295 = load <8 x i16>, ptr %176, align 2, !alias.scope !163
  %wide.load296 = load <8 x i16>, ptr %177, align 2, !alias.scope !163
  %wide.load297 = load <8 x i16>, ptr %178, align 2, !alias.scope !163
  %179 = sext <8 x i16> %wide.load294 to <8 x i32>
  %180 = sext <8 x i16> %wide.load295 to <8 x i32>
  %181 = sext <8 x i16> %wide.load296 to <8 x i32>
  %182 = sext <8 x i16> %wide.load297 to <8 x i32>
  %183 = getelementptr inbounds i8, ptr %174, i64 6
  %184 = getelementptr inbounds i8, ptr %174, i64 22
  %185 = getelementptr inbounds i8, ptr %174, i64 38
  %186 = getelementptr inbounds i8, ptr %174, i64 54
  %wide.load298 = load <8 x i16>, ptr %183, align 2, !alias.scope !163
  %wide.load299 = load <8 x i16>, ptr %184, align 2, !alias.scope !163
  %wide.load300 = load <8 x i16>, ptr %185, align 2, !alias.scope !163
  %wide.load301 = load <8 x i16>, ptr %186, align 2, !alias.scope !163
  %187 = sext <8 x i16> %wide.load298 to <8 x i32>
  %188 = sext <8 x i16> %wide.load299 to <8 x i32>
  %189 = sext <8 x i16> %wide.load300 to <8 x i32>
  %190 = sext <8 x i16> %wide.load301 to <8 x i32>
  %191 = getelementptr i8, ptr %174, i64 -2
  %192 = getelementptr i8, ptr %174, i64 14
  %193 = getelementptr i8, ptr %174, i64 30
  %194 = getelementptr i8, ptr %174, i64 46
  %wide.load302 = load <8 x i16>, ptr %191, align 2, !alias.scope !163
  %wide.load303 = load <8 x i16>, ptr %192, align 2, !alias.scope !163
  %wide.load304 = load <8 x i16>, ptr %193, align 2, !alias.scope !163
  %wide.load305 = load <8 x i16>, ptr %194, align 2, !alias.scope !163
  %195 = sext <8 x i16> %wide.load302 to <8 x i32>
  %196 = sext <8 x i16> %wide.load303 to <8 x i32>
  %197 = sext <8 x i16> %wide.load304 to <8 x i32>
  %198 = sext <8 x i16> %wide.load305 to <8 x i32>
  %199 = getelementptr inbounds i8, ptr %174, i64 4
  %200 = getelementptr inbounds i8, ptr %174, i64 20
  %201 = getelementptr inbounds i8, ptr %174, i64 36
  %202 = getelementptr inbounds i8, ptr %174, i64 52
  %wide.load306 = load <8 x i16>, ptr %199, align 2, !alias.scope !163
  %wide.load307 = load <8 x i16>, ptr %200, align 2, !alias.scope !163
  %wide.load308 = load <8 x i16>, ptr %201, align 2, !alias.scope !163
  %wide.load309 = load <8 x i16>, ptr %202, align 2, !alias.scope !163
  %203 = sext <8 x i16> %wide.load306 to <8 x i32>
  %204 = sext <8 x i16> %wide.load307 to <8 x i32>
  %205 = sext <8 x i16> %wide.load308 to <8 x i32>
  %206 = sext <8 x i16> %wide.load309 to <8 x i32>
  %207 = add nsw <8 x i32> %203, %195
  %208 = add nsw <8 x i32> %204, %196
  %209 = add nsw <8 x i32> %205, %197
  %210 = add nsw <8 x i32> %206, %198
  %211 = mul nsw <8 x i32> %207, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %212 = mul nsw <8 x i32> %208, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %213 = mul nsw <8 x i32> %209, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %214 = mul nsw <8 x i32> %210, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %215 = getelementptr i8, ptr %174, i64 16
  %216 = getelementptr i8, ptr %174, i64 32
  %217 = getelementptr i8, ptr %174, i64 48
  %wide.load310 = load <8 x i16>, ptr %174, align 2, !alias.scope !163
  %wide.load311 = load <8 x i16>, ptr %215, align 2, !alias.scope !163
  %wide.load312 = load <8 x i16>, ptr %216, align 2, !alias.scope !163
  %wide.load313 = load <8 x i16>, ptr %217, align 2, !alias.scope !163
  %218 = sext <8 x i16> %wide.load310 to <8 x i32>
  %219 = sext <8 x i16> %wide.load311 to <8 x i32>
  %220 = sext <8 x i16> %wide.load312 to <8 x i32>
  %221 = sext <8 x i16> %wide.load313 to <8 x i32>
  %222 = or disjoint i64 %index293, 1
  %223 = getelementptr inbounds i16, ptr %invariant.gep, i64 %222
  %224 = getelementptr inbounds i8, ptr %223, i64 16
  %225 = getelementptr inbounds i8, ptr %223, i64 32
  %226 = getelementptr inbounds i8, ptr %223, i64 48
  %wide.load314 = load <8 x i16>, ptr %223, align 2, !alias.scope !163
  %wide.load315 = load <8 x i16>, ptr %224, align 2, !alias.scope !163
  %wide.load316 = load <8 x i16>, ptr %225, align 2, !alias.scope !163
  %wide.load317 = load <8 x i16>, ptr %226, align 2, !alias.scope !163
  %227 = sext <8 x i16> %wide.load314 to <8 x i32>
  %228 = sext <8 x i16> %wide.load315 to <8 x i32>
  %229 = sext <8 x i16> %wide.load316 to <8 x i32>
  %230 = sext <8 x i16> %wide.load317 to <8 x i32>
  %231 = add nsw <8 x i32> %227, %218
  %232 = add nsw <8 x i32> %228, %219
  %233 = add nsw <8 x i32> %229, %220
  %234 = add nsw <8 x i32> %230, %221
  %235 = mul nsw <8 x i32> %231, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %236 = mul nsw <8 x i32> %232, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %237 = mul nsw <8 x i32> %233, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %238 = mul nsw <8 x i32> %234, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %239 = add nsw <8 x i32> %179, <i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512>
  %240 = add nsw <8 x i32> %180, <i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512>
  %241 = add nsw <8 x i32> %181, <i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512>
  %242 = add nsw <8 x i32> %182, <i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512>
  %243 = add nsw <8 x i32> %239, %187
  %244 = add nsw <8 x i32> %240, %188
  %245 = add nsw <8 x i32> %241, %189
  %246 = add nsw <8 x i32> %242, %190
  %247 = add nsw <8 x i32> %243, %211
  %248 = add nsw <8 x i32> %244, %212
  %249 = add nsw <8 x i32> %245, %213
  %250 = add nsw <8 x i32> %246, %214
  %251 = add nsw <8 x i32> %247, %235
  %252 = add nsw <8 x i32> %248, %236
  %253 = add nsw <8 x i32> %249, %237
  %254 = add nsw <8 x i32> %250, %238
  %255 = ashr <8 x i32> %251, <i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10>
  %256 = ashr <8 x i32> %252, <i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10>
  %257 = ashr <8 x i32> %253, <i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10>
  %258 = ashr <8 x i32> %254, <i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10>
  %259 = icmp ult <8 x i32> %255, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>
  %260 = icmp ult <8 x i32> %256, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>
  %261 = icmp ult <8 x i32> %257, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>
  %262 = icmp ult <8 x i32> %258, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>
  %263 = icmp sgt <8 x i32> %255, zeroinitializer
  %264 = icmp sgt <8 x i32> %256, zeroinitializer
  %265 = icmp sgt <8 x i32> %257, zeroinitializer
  %266 = icmp sgt <8 x i32> %258, zeroinitializer
  %267 = sext <8 x i1> %263 to <8 x i32>
  %268 = sext <8 x i1> %264 to <8 x i32>
  %269 = sext <8 x i1> %265 to <8 x i32>
  %270 = sext <8 x i1> %266 to <8 x i32>
  %271 = select <8 x i1> %259, <8 x i32> %255, <8 x i32> %267
  %272 = select <8 x i1> %260, <8 x i32> %256, <8 x i32> %268
  %273 = select <8 x i1> %261, <8 x i32> %257, <8 x i32> %269
  %274 = select <8 x i1> %262, <8 x i32> %258, <8 x i32> %270
  %275 = trunc <8 x i32> %271 to <8 x i8>
  %276 = trunc <8 x i32> %272 to <8 x i8>
  %277 = trunc <8 x i32> %273 to <8 x i8>
  %278 = trunc <8 x i32> %274 to <8 x i8>
  %279 = getelementptr inbounds i8, ptr %dstc.addr.0217, i64 %index293
  %280 = getelementptr inbounds i8, ptr %279, i64 8
  %281 = getelementptr inbounds i8, ptr %279, i64 16
  %282 = getelementptr inbounds i8, ptr %279, i64 24
  store <8 x i8> %275, ptr %279, align 1, !alias.scope !166, !noalias !163
  store <8 x i8> %276, ptr %280, align 1, !alias.scope !166, !noalias !163
  store <8 x i8> %277, ptr %281, align 1, !alias.scope !166, !noalias !163
  store <8 x i8> %278, ptr %282, align 1, !alias.scope !166, !noalias !163
  %index.next318 = add nuw i64 %index293, 32
  %283 = icmp eq i64 %index.next318, %n.vec290
  br i1 %283, label %middle.block286, label %vector.body292, !llvm.loop !168

middle.block286:                                  ; preds = %vector.body292
  br i1 %cmp.n319, label %for.cond90.preheader, label %for.body45.preheader440

for.body4:                                        ; preds = %for.body4.preheader441, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ %indvars.iv.ph, %for.body4.preheader441 ]
  %284 = sub nsw i64 %indvars.iv, %0
  %arrayidx = getelementptr inbounds i8, ptr %src.addr.0216, i64 %284
  %285 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %285 to i32
  %286 = add nsw i64 %indvars.iv, %1
  %arrayidx8 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %286
  %287 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %287 to i32
  %add10 = add nuw nsw i32 %conv9, %conv
  %288 = sub nsw i64 %indvars.iv, %idx.ext
  %arrayidx13 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %288
  %289 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %289 to i32
  %290 = add nsw i64 %indvars.iv, %0
  %arrayidx18 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %290
  %291 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %291 to i32
  %add20 = add nuw nsw i32 %conv19, %conv14
  %mul21.neg = mul nsw i32 %add20, -5
  %sub22 = add nsw i32 %add10, %mul21.neg
  %arrayidx24 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %indvars.iv
  %292 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %292 to i32
  %293 = add nsw i64 %indvars.iv, %idx.ext
  %arrayidx28 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %293
  %294 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %294 to i32
  %add30 = add nuw nsw i32 %conv29, %conv25
  %mul31 = mul nuw nsw i32 %add30, 20
  %add32 = add nsw i32 %sub22, %mul31
  %add33 = add nsw i32 %add32, 16
  %shr = ashr i32 %add33, 5
  %tobool.not.i = icmp ult i32 %shr, 256
  %295 = icmp sgt i32 %shr, 0
  %shr.i = sext i1 %295 to i32
  %cond.i = select i1 %tobool.not.i, i32 %shr, i32 %shr.i
  %conv.i = trunc i32 %cond.i to i8
  %arrayidx35 = getelementptr inbounds i8, ptr %dstv.addr.0218, i64 %indvars.iv
  store i8 %conv.i, ptr %arrayidx35, align 1
  %conv36 = trunc nsw i32 %add32 to i16
  %gep = getelementptr i16, ptr %invariant.gep, i64 %indvars.iv
  store i16 %conv36, ptr %gep, align 2
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %3, %lftr.wideiv
  br i1 %exitcond.not, label %for.cond41.preheader, label %for.body4, !llvm.loop !169

for.cond90.preheader:                             ; preds = %for.body45, %middle.block286
  br i1 %cmp42211, label %iter.check, label %for.cond.cleanup93

iter.check:                                       ; preds = %for.cond90.preheader
  %brmerge443 = select i1 %min.iters.check, i1 true, i1 %51
  br i1 %brmerge443, label %for.body94.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check244, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ]
  %296 = add nsw i64 %index, -2
  %297 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %296
  %298 = getelementptr inbounds i8, ptr %297, i64 16
  %299 = getelementptr inbounds i8, ptr %297, i64 32
  %300 = getelementptr inbounds i8, ptr %297, i64 48
  %wide.load = load <16 x i8>, ptr %297, align 1, !alias.scope !170
  %wide.load245 = load <16 x i8>, ptr %298, align 1, !alias.scope !170
  %wide.load246 = load <16 x i8>, ptr %299, align 1, !alias.scope !170
  %wide.load247 = load <16 x i8>, ptr %300, align 1, !alias.scope !170
  %301 = zext <16 x i8> %wide.load to <16 x i32>
  %302 = zext <16 x i8> %wide.load245 to <16 x i32>
  %303 = zext <16 x i8> %wide.load246 to <16 x i32>
  %304 = zext <16 x i8> %wide.load247 to <16 x i32>
  %305 = or disjoint i64 %index, 3
  %306 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %305
  %307 = getelementptr inbounds i8, ptr %306, i64 16
  %308 = getelementptr inbounds i8, ptr %306, i64 32
  %309 = getelementptr inbounds i8, ptr %306, i64 48
  %wide.load248 = load <16 x i8>, ptr %306, align 1, !alias.scope !170
  %wide.load249 = load <16 x i8>, ptr %307, align 1, !alias.scope !170
  %wide.load250 = load <16 x i8>, ptr %308, align 1, !alias.scope !170
  %wide.load251 = load <16 x i8>, ptr %309, align 1, !alias.scope !170
  %310 = zext <16 x i8> %wide.load248 to <16 x i32>
  %311 = zext <16 x i8> %wide.load249 to <16 x i32>
  %312 = zext <16 x i8> %wide.load250 to <16 x i32>
  %313 = zext <16 x i8> %wide.load251 to <16 x i32>
  %314 = add nsw i64 %index, -1
  %315 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %314
  %316 = getelementptr inbounds i8, ptr %315, i64 16
  %317 = getelementptr inbounds i8, ptr %315, i64 32
  %318 = getelementptr inbounds i8, ptr %315, i64 48
  %wide.load252 = load <16 x i8>, ptr %315, align 1, !alias.scope !170
  %wide.load253 = load <16 x i8>, ptr %316, align 1, !alias.scope !170
  %wide.load254 = load <16 x i8>, ptr %317, align 1, !alias.scope !170
  %wide.load255 = load <16 x i8>, ptr %318, align 1, !alias.scope !170
  %319 = zext <16 x i8> %wide.load252 to <16 x i32>
  %320 = zext <16 x i8> %wide.load253 to <16 x i32>
  %321 = zext <16 x i8> %wide.load254 to <16 x i32>
  %322 = zext <16 x i8> %wide.load255 to <16 x i32>
  %323 = or disjoint i64 %index, 2
  %324 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %323
  %325 = getelementptr inbounds i8, ptr %324, i64 16
  %326 = getelementptr inbounds i8, ptr %324, i64 32
  %327 = getelementptr inbounds i8, ptr %324, i64 48
  %wide.load256 = load <16 x i8>, ptr %324, align 1, !alias.scope !170
  %wide.load257 = load <16 x i8>, ptr %325, align 1, !alias.scope !170
  %wide.load258 = load <16 x i8>, ptr %326, align 1, !alias.scope !170
  %wide.load259 = load <16 x i8>, ptr %327, align 1, !alias.scope !170
  %328 = zext <16 x i8> %wide.load256 to <16 x i32>
  %329 = zext <16 x i8> %wide.load257 to <16 x i32>
  %330 = zext <16 x i8> %wide.load258 to <16 x i32>
  %331 = zext <16 x i8> %wide.load259 to <16 x i32>
  %332 = add nuw nsw <16 x i32> %328, %319
  %333 = add nuw nsw <16 x i32> %329, %320
  %334 = add nuw nsw <16 x i32> %330, %321
  %335 = add nuw nsw <16 x i32> %331, %322
  %336 = mul nsw <16 x i32> %332, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %337 = mul nsw <16 x i32> %333, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %338 = mul nsw <16 x i32> %334, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %339 = mul nsw <16 x i32> %335, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %340 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %index
  %341 = getelementptr inbounds i8, ptr %340, i64 16
  %342 = getelementptr inbounds i8, ptr %340, i64 32
  %343 = getelementptr inbounds i8, ptr %340, i64 48
  %wide.load260 = load <16 x i8>, ptr %340, align 1, !alias.scope !170
  %wide.load261 = load <16 x i8>, ptr %341, align 1, !alias.scope !170
  %wide.load262 = load <16 x i8>, ptr %342, align 1, !alias.scope !170
  %wide.load263 = load <16 x i8>, ptr %343, align 1, !alias.scope !170
  %344 = zext <16 x i8> %wide.load260 to <16 x i32>
  %345 = zext <16 x i8> %wide.load261 to <16 x i32>
  %346 = zext <16 x i8> %wide.load262 to <16 x i32>
  %347 = zext <16 x i8> %wide.load263 to <16 x i32>
  %348 = or disjoint i64 %index, 1
  %349 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %348
  %350 = getelementptr inbounds i8, ptr %349, i64 16
  %351 = getelementptr inbounds i8, ptr %349, i64 32
  %352 = getelementptr inbounds i8, ptr %349, i64 48
  %wide.load264 = load <16 x i8>, ptr %349, align 1, !alias.scope !170
  %wide.load265 = load <16 x i8>, ptr %350, align 1, !alias.scope !170
  %wide.load266 = load <16 x i8>, ptr %351, align 1, !alias.scope !170
  %wide.load267 = load <16 x i8>, ptr %352, align 1, !alias.scope !170
  %353 = zext <16 x i8> %wide.load264 to <16 x i32>
  %354 = zext <16 x i8> %wide.load265 to <16 x i32>
  %355 = zext <16 x i8> %wide.load266 to <16 x i32>
  %356 = zext <16 x i8> %wide.load267 to <16 x i32>
  %357 = add nuw nsw <16 x i32> %353, %344
  %358 = add nuw nsw <16 x i32> %354, %345
  %359 = add nuw nsw <16 x i32> %355, %346
  %360 = add nuw nsw <16 x i32> %356, %347
  %361 = mul nuw nsw <16 x i32> %357, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %362 = mul nuw nsw <16 x i32> %358, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %363 = mul nuw nsw <16 x i32> %359, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %364 = mul nuw nsw <16 x i32> %360, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %365 = add nuw nsw <16 x i32> %301, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %366 = add nuw nsw <16 x i32> %302, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %367 = add nuw nsw <16 x i32> %303, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %368 = add nuw nsw <16 x i32> %304, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %369 = add nuw nsw <16 x i32> %365, %310
  %370 = add nuw nsw <16 x i32> %366, %311
  %371 = add nuw nsw <16 x i32> %367, %312
  %372 = add nuw nsw <16 x i32> %368, %313
  %373 = add nsw <16 x i32> %369, %336
  %374 = add nsw <16 x i32> %370, %337
  %375 = add nsw <16 x i32> %371, %338
  %376 = add nsw <16 x i32> %372, %339
  %377 = add nsw <16 x i32> %373, %361
  %378 = add nsw <16 x i32> %374, %362
  %379 = add nsw <16 x i32> %375, %363
  %380 = add nsw <16 x i32> %376, %364
  %381 = ashr <16 x i32> %377, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %382 = ashr <16 x i32> %378, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %383 = ashr <16 x i32> %379, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %384 = ashr <16 x i32> %380, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %385 = icmp ult <16 x i32> %381, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>
  %386 = icmp ult <16 x i32> %382, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>
  %387 = icmp ult <16 x i32> %383, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>
  %388 = icmp ult <16 x i32> %384, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>
  %389 = icmp sgt <16 x i32> %381, zeroinitializer
  %390 = icmp sgt <16 x i32> %382, zeroinitializer
  %391 = icmp sgt <16 x i32> %383, zeroinitializer
  %392 = icmp sgt <16 x i32> %384, zeroinitializer
  %393 = sext <16 x i1> %389 to <16 x i32>
  %394 = sext <16 x i1> %390 to <16 x i32>
  %395 = sext <16 x i1> %391 to <16 x i32>
  %396 = sext <16 x i1> %392 to <16 x i32>
  %397 = select <16 x i1> %385, <16 x i32> %381, <16 x i32> %393
  %398 = select <16 x i1> %386, <16 x i32> %382, <16 x i32> %394
  %399 = select <16 x i1> %387, <16 x i32> %383, <16 x i32> %395
  %400 = select <16 x i1> %388, <16 x i32> %384, <16 x i32> %396
  %401 = trunc <16 x i32> %397 to <16 x i8>
  %402 = trunc <16 x i32> %398 to <16 x i8>
  %403 = trunc <16 x i32> %399 to <16 x i8>
  %404 = trunc <16 x i32> %400 to <16 x i8>
  %405 = getelementptr inbounds i8, ptr %dsth.addr.0220, i64 %index
  %406 = getelementptr inbounds i8, ptr %405, i64 16
  %407 = getelementptr inbounds i8, ptr %405, i64 32
  %408 = getelementptr inbounds i8, ptr %405, i64 48
  store <16 x i8> %401, ptr %405, align 1, !alias.scope !173, !noalias !170
  store <16 x i8> %402, ptr %406, align 1, !alias.scope !173, !noalias !170
  store <16 x i8> %403, ptr %407, align 1, !alias.scope !173, !noalias !170
  store <16 x i8> %404, ptr %408, align 1, !alias.scope !173, !noalias !170
  %index.next = add nuw i64 %index, 64
  %409 = icmp eq i64 %index.next, %n.vec
  br i1 %409, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond.cleanup93, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %for.body94.preheader, label %vec.epilog.ph

for.body94.preheader:                             ; preds = %iter.check, %vec.epilog.middle.block, %vec.epilog.iter.check
  %indvars.iv231.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec269, %vec.epilog.middle.block ]
  br label %for.body94

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index270 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next277, %vec.epilog.vector.body ]
  %410 = add nsw i64 %index270, -2
  %411 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %410
  %wide.load271 = load <8 x i8>, ptr %411, align 1, !alias.scope !176
  %412 = zext <8 x i8> %wide.load271 to <8 x i32>
  %413 = or disjoint i64 %index270, 3
  %414 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %413
  %wide.load272 = load <8 x i8>, ptr %414, align 1, !alias.scope !176
  %415 = zext <8 x i8> %wide.load272 to <8 x i32>
  %416 = add nsw i64 %index270, -1
  %417 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %416
  %wide.load273 = load <8 x i8>, ptr %417, align 1, !alias.scope !176
  %418 = zext <8 x i8> %wide.load273 to <8 x i32>
  %419 = or disjoint i64 %index270, 2
  %420 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %419
  %wide.load274 = load <8 x i8>, ptr %420, align 1, !alias.scope !176
  %421 = zext <8 x i8> %wide.load274 to <8 x i32>
  %422 = add nuw nsw <8 x i32> %421, %418
  %423 = mul nsw <8 x i32> %422, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %424 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %index270
  %wide.load275 = load <8 x i8>, ptr %424, align 1, !alias.scope !176
  %425 = zext <8 x i8> %wide.load275 to <8 x i32>
  %426 = or disjoint i64 %index270, 1
  %427 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %426
  %wide.load276 = load <8 x i8>, ptr %427, align 1, !alias.scope !176
  %428 = zext <8 x i8> %wide.load276 to <8 x i32>
  %429 = add nuw nsw <8 x i32> %428, %425
  %430 = mul nuw nsw <8 x i32> %429, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %431 = add nuw nsw <8 x i32> %412, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %432 = add nuw nsw <8 x i32> %431, %415
  %433 = add nsw <8 x i32> %432, %423
  %434 = add nsw <8 x i32> %433, %430
  %435 = ashr <8 x i32> %434, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %436 = icmp ult <8 x i32> %435, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>
  %437 = icmp sgt <8 x i32> %435, zeroinitializer
  %438 = sext <8 x i1> %437 to <8 x i32>
  %439 = select <8 x i1> %436, <8 x i32> %435, <8 x i32> %438
  %440 = trunc <8 x i32> %439 to <8 x i8>
  %441 = getelementptr inbounds i8, ptr %dsth.addr.0220, i64 %index270
  store <8 x i8> %440, ptr %441, align 1, !alias.scope !179, !noalias !176
  %index.next277 = add nuw i64 %index270, 8
  %442 = icmp eq i64 %index.next277, %n.vec269
  br i1 %442, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !181

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n278, label %for.cond.cleanup93, label %for.body94.preheader

for.body45:                                       ; preds = %for.body45.preheader440, %for.body45
  %indvars.iv227 = phi i64 [ %indvars.iv.next228, %for.body45 ], [ %indvars.iv227.ph, %for.body45.preheader440 ]
  %443 = getelementptr i16, ptr %invariant.gep, i64 %indvars.iv227
  %arrayidx48 = getelementptr i8, ptr %443, i64 -4
  %444 = load i16, ptr %arrayidx48, align 2
  %conv49 = sext i16 %444 to i32
  %arrayidx53 = getelementptr inbounds i8, ptr %443, i64 6
  %445 = load i16, ptr %arrayidx53, align 2
  %conv54 = sext i16 %445 to i32
  %arrayidx59 = getelementptr i8, ptr %443, i64 -2
  %446 = load i16, ptr %arrayidx59, align 2
  %conv60 = sext i16 %446 to i32
  %arrayidx64 = getelementptr inbounds i8, ptr %443, i64 4
  %447 = load i16, ptr %arrayidx64, align 2
  %conv65 = sext i16 %447 to i32
  %add66 = add nsw i32 %conv65, %conv60
  %mul67.neg = mul nsw i32 %add66, -5
  %448 = load i16, ptr %443, align 2
  %conv72 = sext i16 %448 to i32
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1
  %arrayidx76 = getelementptr inbounds i16, ptr %invariant.gep, i64 %indvars.iv.next228
  %449 = load i16, ptr %arrayidx76, align 2
  %conv77 = sext i16 %449 to i32
  %add78 = add nsw i32 %conv77, %conv72
  %mul79 = mul nsw i32 %add78, 20
  %add55 = add nsw i32 %conv49, 512
  %sub68 = add nsw i32 %add55, %conv54
  %add80 = add nsw i32 %sub68, %mul67.neg
  %add81 = add nsw i32 %add80, %mul79
  %shr82 = ashr i32 %add81, 10
  %tobool.not.i201 = icmp ult i32 %shr82, 256
  %450 = icmp sgt i32 %shr82, 0
  %shr.i202 = sext i1 %450 to i32
  %cond.i203 = select i1 %tobool.not.i201, i32 %shr82, i32 %shr.i202
  %conv.i204 = trunc i32 %cond.i203 to i8
  %arrayidx85 = getelementptr inbounds i8, ptr %dstc.addr.0217, i64 %indvars.iv227
  store i8 %conv.i204, ptr %arrayidx85, align 1
  %exitcond230.not = icmp eq i64 %indvars.iv.next228, %wide.trip.count
  br i1 %exitcond230.not, label %for.cond90.preheader, label %for.body45, !llvm.loop !182

for.cond.cleanup93:                               ; preds = %for.body94, %middle.block, %vec.epilog.middle.block, %for.cond1.preheader, %for.cond41.preheader, %for.cond90.preheader
  %add.ptr133 = getelementptr inbounds i8, ptr %dsth.addr.0220, i64 %idx.ext
  %add.ptr135 = getelementptr inbounds i8, ptr %dstv.addr.0218, i64 %idx.ext
  %add.ptr137 = getelementptr inbounds i8, ptr %dstc.addr.0217, i64 %idx.ext
  %add.ptr139 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %idx.ext
  %inc141 = add nuw nsw i32 %y.0219, 1
  %exitcond240.not = icmp eq i32 %inc141, %height
  br i1 %exitcond240.not, label %for.cond.cleanup, label %for.cond1.preheader

for.body94:                                       ; preds = %for.body94.preheader, %for.body94
  %indvars.iv231 = phi i64 [ %indvars.iv.next232, %for.body94 ], [ %indvars.iv231.ph, %for.body94.preheader ]
  %451 = add nsw i64 %indvars.iv231, -2
  %arrayidx97 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %451
  %452 = load i8, ptr %arrayidx97, align 1
  %conv98 = zext i8 %452 to i32
  %453 = add nuw nsw i64 %indvars.iv231, 3
  %arrayidx101 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %453
  %454 = load i8, ptr %arrayidx101, align 1
  %conv102 = zext i8 %454 to i32
  %455 = add nsw i64 %indvars.iv231, -1
  %arrayidx106 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %455
  %456 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %456 to i32
  %457 = add nuw nsw i64 %indvars.iv231, 2
  %arrayidx110 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %457
  %458 = load i8, ptr %arrayidx110, align 1
  %conv111 = zext i8 %458 to i32
  %add112 = add nuw nsw i32 %conv111, %conv107
  %mul113.neg = mul nsw i32 %add112, -5
  %arrayidx116 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %indvars.iv231
  %459 = load i8, ptr %arrayidx116, align 1
  %conv117 = zext i8 %459 to i32
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1
  %arrayidx120 = getelementptr inbounds i8, ptr %src.addr.0216, i64 %indvars.iv.next232
  %460 = load i8, ptr %arrayidx120, align 1
  %conv121 = zext i8 %460 to i32
  %add122 = add nuw nsw i32 %conv121, %conv117
  %mul123 = mul nuw nsw i32 %add122, 20
  %add103 = add nuw nsw i32 %conv98, 16
  %sub114 = add nuw nsw i32 %add103, %conv102
  %add124 = add nsw i32 %sub114, %mul113.neg
  %add125 = add nsw i32 %add124, %mul123
  %shr126 = ashr i32 %add125, 5
  %tobool.not.i205 = icmp ult i32 %shr126, 256
  %461 = icmp sgt i32 %shr126, 0
  %shr.i206 = sext i1 %461 to i32
  %cond.i207 = select i1 %tobool.not.i205, i32 %shr126, i32 %shr.i206
  %conv.i208 = trunc i32 %cond.i207 to i8
  %arrayidx129 = getelementptr inbounds i8, ptr %dsth.addr.0220, i64 %indvars.iv231
  store i8 %conv.i208, ptr %arrayidx129, align 1
  %exitcond239.not = icmp eq i64 %indvars.iv.next232, %wide.trip.count238
  br i1 %exitcond239.not, label %for.cond.cleanup93, label %for.body94, !llvm.loop !183
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @prefetch_fenc_null(ptr nocapture readnone %pix_y, i32 %stride_y, ptr nocapture readnone %pix_uv, i32 %stride_uv, i32 %mb_x) #8 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @prefetch_ref_null(ptr nocapture readnone %pix, i32 %stride, i32 %parity) #8 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @memcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @memzero_aligned(ptr nocapture noundef writeonly %dst, i32 noundef %n) #5 {
entry:
  %conv = sext i32 %n to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %dst, i8 0, i64 %conv, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @frame_init_lowres_core(ptr nocapture noundef readonly %src0, ptr nocapture noundef writeonly %dst0, ptr nocapture noundef writeonly %dsth, ptr nocapture noundef writeonly %dstv, ptr nocapture noundef writeonly %dstc, i32 noundef %src_stride, i32 noundef %dst_stride, i32 noundef %width, i32 noundef %height) #0 {
entry:
  %cmp188 = icmp sgt i32 %height, 0
  br i1 %cmp188, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %idx.ext = sext i32 %src_stride to i64
  %cmp4186 = icmp sgt i32 %width, 0
  %mul125 = shl i32 %src_stride, 1
  %idx.ext126 = sext i32 %mul125 to i64
  %idx.ext128 = sext i32 %dst_stride to i64
  br i1 %cmp4186, label %for.body.us.preheader, label %for.cond.cleanup

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %wide.trip.count = zext nneg i32 %width to i64
  %0 = add nsw i32 %height, -1
  %1 = zext i32 %0 to i64
  %2 = mul nsw i64 %idx.ext128, %1
  %3 = add i64 %2, %wide.trip.count
  %scevgep = getelementptr i8, ptr %dst0, i64 %3
  %scevgep201 = getelementptr i8, ptr %dsth, i64 %3
  %scevgep202 = getelementptr i8, ptr %dstv, i64 %3
  %scevgep203 = getelementptr i8, ptr %dstc, i64 %3
  %4 = shl nsw i64 %idx.ext, 1
  %scevgep204 = getelementptr i8, ptr %src0, i64 %4
  %5 = mul nsw i64 %idx.ext126, %1
  %6 = add i64 %5, %4
  %7 = shl nuw nsw i64 %wide.trip.count, 1
  %8 = add i64 %6, %7
  %9 = or disjoint i64 %8, 1
  %scevgep205 = getelementptr i8, ptr %src0, i64 %9
  %scevgep206 = getelementptr i8, ptr %src0, i64 %idx.ext
  %10 = add i64 %5, %7
  %11 = getelementptr i8, ptr %src0, i64 %10
  %12 = getelementptr i8, ptr %11, i64 %idx.ext
  %scevgep207 = getelementptr i8, ptr %12, i64 1
  %13 = or disjoint i64 %10, 1
  %scevgep208 = getelementptr i8, ptr %src0, i64 %13
  %min.iters.check = icmp ult i32 %width, 4
  %bound0 = icmp ugt ptr %scevgep201, %dst0
  %bound1 = icmp ugt ptr %scevgep, %dsth
  %found.conflict = and i1 %bound0, %bound1
  %bound0210 = icmp ugt ptr %scevgep202, %dst0
  %bound1211 = icmp ugt ptr %scevgep, %dstv
  %found.conflict212 = and i1 %bound0210, %bound1211
  %stride.check213 = icmp slt i32 %dst_stride, 0
  %bound0215 = icmp ugt ptr %scevgep203, %dst0
  %bound1216 = icmp ugt ptr %scevgep, %dstc
  %found.conflict217 = and i1 %bound0215, %bound1216
  %bound0221 = icmp ugt ptr %scevgep205, %dst0
  %bound1222 = icmp ult ptr %scevgep204, %scevgep
  %found.conflict223 = and i1 %bound0221, %bound1222
  %bound0227 = icmp ugt ptr %scevgep207, %dst0
  %bound1228 = icmp ult ptr %scevgep206, %scevgep
  %found.conflict229 = and i1 %bound0227, %bound1228
  %bound0233 = icmp ugt ptr %scevgep208, %dst0
  %bound1234 = icmp ugt ptr %scevgep, %src0
  %found.conflict235 = and i1 %bound0233, %bound1234
  %bound0239 = icmp ugt ptr %scevgep202, %dsth
  %bound1240 = icmp ugt ptr %scevgep201, %dstv
  %found.conflict241 = and i1 %bound0239, %bound1240
  %bound0245 = icmp ugt ptr %scevgep203, %dsth
  %bound1246 = icmp ugt ptr %scevgep201, %dstc
  %found.conflict247 = and i1 %bound0245, %bound1246
  %bound0251 = icmp ugt ptr %scevgep205, %dsth
  %bound1252 = icmp ult ptr %scevgep204, %scevgep201
  %found.conflict253 = and i1 %bound0251, %bound1252
  %bound0257 = icmp ugt ptr %scevgep207, %dsth
  %bound1258 = icmp ult ptr %scevgep206, %scevgep201
  %found.conflict259 = and i1 %bound0257, %bound1258
  %bound0263 = icmp ugt ptr %scevgep208, %dsth
  %bound1264 = icmp ugt ptr %scevgep201, %src0
  %found.conflict265 = and i1 %bound0263, %bound1264
  %bound0269 = icmp ugt ptr %scevgep203, %dstv
  %bound1270 = icmp ugt ptr %scevgep202, %dstc
  %found.conflict271 = and i1 %bound0269, %bound1270
  %bound0275 = icmp ugt ptr %scevgep205, %dstv
  %bound1276 = icmp ult ptr %scevgep204, %scevgep202
  %found.conflict277 = and i1 %bound0275, %bound1276
  %bound0281 = icmp ugt ptr %scevgep207, %dstv
  %bound1282 = icmp ult ptr %scevgep206, %scevgep202
  %found.conflict283 = and i1 %bound0281, %bound1282
  %bound0287 = icmp ugt ptr %scevgep208, %dstv
  %bound1288 = icmp ugt ptr %scevgep202, %src0
  %found.conflict289 = and i1 %bound0287, %bound1288
  %bound0293 = icmp ugt ptr %scevgep205, %dstc
  %bound1294 = icmp ult ptr %scevgep204, %scevgep203
  %found.conflict295 = and i1 %bound0293, %bound1294
  %bound0299 = icmp ugt ptr %scevgep207, %dstc
  %bound1300 = icmp ult ptr %scevgep206, %scevgep203
  %found.conflict301 = and i1 %bound0299, %bound1300
  %bound0305 = icmp ugt ptr %scevgep208, %dstc
  %bound1306 = icmp ugt ptr %scevgep203, %src0
  %found.conflict307 = and i1 %bound0305, %bound1306
  %14 = or i32 %mul125, %dst_stride
  %15 = or i32 %mul125, %dst_stride
  %16 = icmp slt i32 %15, 0
  %op.rdx311 = or i1 %16, %found.conflict212
  %op.rdx312 = or i1 %found.conflict, %found.conflict217
  %op.rdx313 = or i1 %found.conflict223, %found.conflict229
  %op.rdx314 = or i1 %found.conflict235, %found.conflict241
  %op.rdx315 = or i1 %found.conflict247, %found.conflict253
  %op.rdx316 = or i1 %found.conflict259, %found.conflict265
  %op.rdx317 = or i1 %found.conflict271, %found.conflict277
  %op.rdx318 = or i1 %found.conflict283, %found.conflict289
  %op.rdx319 = or i1 %found.conflict295, %found.conflict301
  %op.rdx320 = or i1 %found.conflict307, %stride.check213
  %op.rdx323 = or i1 %op.rdx311, %op.rdx312
  %op.rdx324 = or i1 %op.rdx313, %op.rdx314
  %op.rdx325 = or i1 %op.rdx315, %op.rdx316
  %op.rdx326 = or i1 %op.rdx317, %op.rdx318
  %op.rdx327 = or i1 %op.rdx319, %op.rdx320
  %op.rdx329 = or i1 %op.rdx323, %op.rdx324
  %op.rdx330 = or i1 %op.rdx325, %op.rdx326
  %op.rdx332 = or i1 %op.rdx329, %op.rdx330
  %17 = icmp slt i32 %14, 0
  %op.rdx333 = or i1 %op.rdx327, %17
  %op.rdx334 = or i1 %op.rdx332, %op.rdx333
  %n.vec = and i64 %wide.trip.count, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond3.for.cond.cleanup5_crit_edge.us
  %src0.addr.0194.us = phi ptr [ %add.ptr127.us, %for.cond3.for.cond.cleanup5_crit_edge.us ], [ %src0, %for.body.us.preheader ]
  %dst0.addr.0193.us = phi ptr [ %add.ptr129.us, %for.cond3.for.cond.cleanup5_crit_edge.us ], [ %dst0, %for.body.us.preheader ]
  %y.0192.us = phi i32 [ %inc137.us, %for.cond3.for.cond.cleanup5_crit_edge.us ], [ 0, %for.body.us.preheader ]
  %dsth.addr.0191.us = phi ptr [ %add.ptr131.us, %for.cond3.for.cond.cleanup5_crit_edge.us ], [ %dsth, %for.body.us.preheader ]
  %dstv.addr.0190.us = phi ptr [ %add.ptr133.us, %for.cond3.for.cond.cleanup5_crit_edge.us ], [ %dstv, %for.body.us.preheader ]
  %dstc.addr.0189.us = phi ptr [ %add.ptr135.us, %for.cond3.for.cond.cleanup5_crit_edge.us ], [ %dstc, %for.body.us.preheader ]
  %add.ptr.us = getelementptr inbounds i8, ptr %src0.addr.0194.us, i64 %idx.ext
  %add.ptr2.us = getelementptr inbounds i8, ptr %add.ptr.us, i64 %idx.ext
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx334
  br i1 %brmerge, label %for.body6.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.body.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.body.us ]
  %18 = or disjoint i64 %index, 1
  %19 = or disjoint i64 %index, 2
  %20 = or disjoint i64 %index, 3
  %21 = shl nuw nsw i64 %index, 1
  %22 = shl nuw nsw i64 %18, 1
  %23 = shl nuw nsw i64 %19, 1
  %24 = shl nuw nsw i64 %20, 1
  %25 = getelementptr inbounds i8, ptr %src0.addr.0194.us, i64 %21
  %26 = getelementptr inbounds i8, ptr %src0.addr.0194.us, i64 %22
  %27 = getelementptr inbounds i8, ptr %src0.addr.0194.us, i64 %23
  %28 = getelementptr inbounds i8, ptr %src0.addr.0194.us, i64 %24
  %29 = load i8, ptr %25, align 1, !alias.scope !184
  %30 = load i8, ptr %26, align 1, !alias.scope !184
  %31 = load i8, ptr %27, align 1, !alias.scope !184
  %32 = load i8, ptr %28, align 1, !alias.scope !184
  %33 = zext i8 %29 to i16
  %34 = zext i8 %30 to i16
  %35 = zext i8 %31 to i16
  %36 = zext i8 %32 to i16
  %37 = getelementptr inbounds i8, ptr %add.ptr.us, i64 %21
  %38 = getelementptr inbounds i8, ptr %add.ptr.us, i64 %22
  %39 = getelementptr inbounds i8, ptr %add.ptr.us, i64 %23
  %40 = getelementptr inbounds i8, ptr %add.ptr.us, i64 %24
  %41 = load i8, ptr %37, align 1, !alias.scope !187
  %42 = load i8, ptr %38, align 1, !alias.scope !187
  %43 = load i8, ptr %39, align 1, !alias.scope !187
  %44 = load i8, ptr %40, align 1, !alias.scope !187
  %45 = zext i8 %41 to i16
  %46 = zext i8 %42 to i16
  %47 = zext i8 %43 to i16
  %48 = zext i8 %44 to i16
  %49 = add nuw nsw i16 %33, 1
  %50 = add nuw nsw i16 %34, 1
  %51 = add nuw nsw i16 %35, 1
  %52 = add nuw nsw i16 %36, 1
  %53 = add nuw nsw i16 %49, %45
  %54 = add nuw nsw i16 %50, %46
  %55 = add nuw nsw i16 %51, %47
  %56 = add nuw nsw i16 %52, %48
  %57 = lshr i16 %53, 1
  %58 = lshr i16 %54, 1
  %59 = lshr i16 %55, 1
  %60 = lshr i16 %56, 1
  %61 = or disjoint i64 %21, 1
  %62 = or disjoint i64 %22, 1
  %63 = or disjoint i64 %23, 1
  %64 = or disjoint i64 %24, 1
  %65 = getelementptr inbounds i8, ptr %src0.addr.0194.us, i64 %61
  %66 = getelementptr inbounds i8, ptr %src0.addr.0194.us, i64 %62
  %67 = getelementptr inbounds i8, ptr %src0.addr.0194.us, i64 %63
  %68 = getelementptr inbounds i8, ptr %src0.addr.0194.us, i64 %64
  %69 = load i8, ptr %65, align 1, !alias.scope !184
  %70 = load i8, ptr %66, align 1, !alias.scope !184
  %71 = load i8, ptr %67, align 1, !alias.scope !184
  %72 = load i8, ptr %68, align 1, !alias.scope !184
  %73 = zext i8 %69 to i16
  %74 = zext i8 %70 to i16
  %75 = zext i8 %71 to i16
  %76 = zext i8 %72 to i16
  %77 = getelementptr inbounds i8, ptr %add.ptr.us, i64 %61
  %78 = getelementptr inbounds i8, ptr %add.ptr.us, i64 %62
  %79 = getelementptr inbounds i8, ptr %add.ptr.us, i64 %63
  %80 = getelementptr inbounds i8, ptr %add.ptr.us, i64 %64
  %81 = load i8, ptr %77, align 1, !alias.scope !187
  %82 = load i8, ptr %78, align 1, !alias.scope !187
  %83 = load i8, ptr %79, align 1, !alias.scope !187
  %84 = load i8, ptr %80, align 1, !alias.scope !187
  %85 = zext i8 %81 to i16
  %86 = zext i8 %82 to i16
  %87 = zext i8 %83 to i16
  %88 = zext i8 %84 to i16
  %89 = add nuw nsw i16 %73, 1
  %90 = add nuw nsw i16 %74, 1
  %91 = add nuw nsw i16 %75, 1
  %92 = add nuw nsw i16 %76, 1
  %93 = add nuw nsw i16 %89, %85
  %94 = add nuw nsw i16 %90, %86
  %95 = add nuw nsw i16 %91, %87
  %96 = add nuw nsw i16 %92, %88
  %97 = lshr i16 %93, 1
  %98 = lshr i16 %94, 1
  %99 = lshr i16 %95, 1
  %100 = lshr i16 %96, 1
  %101 = add nuw nsw i16 %57, 1
  %102 = add nuw nsw i16 %58, 1
  %103 = add nuw nsw i16 %59, 1
  %104 = add nuw nsw i16 %60, 1
  %105 = add nuw nsw i16 %101, %97
  %106 = add nuw nsw i16 %102, %98
  %107 = add nuw nsw i16 %103, %99
  %108 = add nuw nsw i16 %104, %100
  %109 = lshr i16 %105, 1
  %110 = lshr i16 %106, 1
  %111 = lshr i16 %107, 1
  %112 = lshr i16 %108, 1
  %113 = trunc nuw i16 %109 to i8
  %114 = trunc nuw i16 %110 to i8
  %115 = trunc nuw i16 %111 to i8
  %116 = trunc nuw i16 %112 to i8
  %117 = getelementptr inbounds i8, ptr %dst0.addr.0193.us, i64 %index
  %118 = getelementptr inbounds i8, ptr %dst0.addr.0193.us, i64 %18
  %119 = getelementptr inbounds i8, ptr %dst0.addr.0193.us, i64 %19
  %120 = getelementptr inbounds i8, ptr %dst0.addr.0193.us, i64 %20
  store i8 %113, ptr %117, align 1, !alias.scope !189, !noalias !191
  store i8 %114, ptr %118, align 1, !alias.scope !189, !noalias !191
  store i8 %115, ptr %119, align 1, !alias.scope !189, !noalias !191
  store i8 %116, ptr %120, align 1, !alias.scope !189, !noalias !191
  %121 = load i8, ptr %65, align 1, !alias.scope !184
  %122 = load i8, ptr %66, align 1, !alias.scope !184
  %123 = load i8, ptr %67, align 1, !alias.scope !184
  %124 = load i8, ptr %68, align 1, !alias.scope !184
  %125 = zext i8 %121 to i16
  %126 = zext i8 %122 to i16
  %127 = zext i8 %123 to i16
  %128 = zext i8 %124 to i16
  %129 = load i8, ptr %77, align 1, !alias.scope !187
  %130 = load i8, ptr %78, align 1, !alias.scope !187
  %131 = load i8, ptr %79, align 1, !alias.scope !187
  %132 = load i8, ptr %80, align 1, !alias.scope !187
  %133 = zext i8 %129 to i16
  %134 = zext i8 %130 to i16
  %135 = zext i8 %131 to i16
  %136 = zext i8 %132 to i16
  %137 = add nuw nsw i16 %125, 1
  %138 = add nuw nsw i16 %126, 1
  %139 = add nuw nsw i16 %127, 1
  %140 = add nuw nsw i16 %128, 1
  %141 = add nuw nsw i16 %137, %133
  %142 = add nuw nsw i16 %138, %134
  %143 = add nuw nsw i16 %139, %135
  %144 = add nuw nsw i16 %140, %136
  %145 = lshr i16 %141, 1
  %146 = lshr i16 %142, 1
  %147 = lshr i16 %143, 1
  %148 = lshr i16 %144, 1
  %149 = or disjoint i64 %21, 2
  %150 = add nuw nsw i64 %22, 2
  %151 = or disjoint i64 %23, 2
  %152 = add nuw nsw i64 %24, 2
  %153 = getelementptr inbounds i8, ptr %src0.addr.0194.us, i64 %149
  %154 = getelementptr inbounds i8, ptr %src0.addr.0194.us, i64 %150
  %155 = getelementptr inbounds i8, ptr %src0.addr.0194.us, i64 %151
  %156 = getelementptr inbounds i8, ptr %src0.addr.0194.us, i64 %152
  %157 = load i8, ptr %153, align 1, !alias.scope !184
  %158 = load i8, ptr %154, align 1, !alias.scope !184
  %159 = load i8, ptr %155, align 1, !alias.scope !184
  %160 = load i8, ptr %156, align 1, !alias.scope !184
  %161 = zext i8 %157 to i16
  %162 = zext i8 %158 to i16
  %163 = zext i8 %159 to i16
  %164 = zext i8 %160 to i16
  %165 = getelementptr inbounds i8, ptr %add.ptr.us, i64 %149
  %166 = getelementptr inbounds i8, ptr %add.ptr.us, i64 %150
  %167 = getelementptr inbounds i8, ptr %add.ptr.us, i64 %151
  %168 = getelementptr inbounds i8, ptr %add.ptr.us, i64 %152
  %169 = load i8, ptr %165, align 1, !alias.scope !187
  %170 = load i8, ptr %166, align 1, !alias.scope !187
  %171 = load i8, ptr %167, align 1, !alias.scope !187
  %172 = load i8, ptr %168, align 1, !alias.scope !187
  %173 = zext i8 %169 to i16
  %174 = zext i8 %170 to i16
  %175 = zext i8 %171 to i16
  %176 = zext i8 %172 to i16
  %177 = add nuw nsw i16 %161, 1
  %178 = add nuw nsw i16 %162, 1
  %179 = add nuw nsw i16 %163, 1
  %180 = add nuw nsw i16 %164, 1
  %181 = add nuw nsw i16 %177, %173
  %182 = add nuw nsw i16 %178, %174
  %183 = add nuw nsw i16 %179, %175
  %184 = add nuw nsw i16 %180, %176
  %185 = lshr i16 %181, 1
  %186 = lshr i16 %182, 1
  %187 = lshr i16 %183, 1
  %188 = lshr i16 %184, 1
  %189 = add nuw nsw i16 %145, 1
  %190 = add nuw nsw i16 %146, 1
  %191 = add nuw nsw i16 %147, 1
  %192 = add nuw nsw i16 %148, 1
  %193 = add nuw nsw i16 %189, %185
  %194 = add nuw nsw i16 %190, %186
  %195 = add nuw nsw i16 %191, %187
  %196 = add nuw nsw i16 %192, %188
  %197 = lshr i16 %193, 1
  %198 = lshr i16 %194, 1
  %199 = lshr i16 %195, 1
  %200 = lshr i16 %196, 1
  %201 = trunc nuw i16 %197 to i8
  %202 = trunc nuw i16 %198 to i8
  %203 = trunc nuw i16 %199 to i8
  %204 = trunc nuw i16 %200 to i8
  %205 = getelementptr inbounds i8, ptr %dsth.addr.0191.us, i64 %index
  %206 = getelementptr inbounds i8, ptr %dsth.addr.0191.us, i64 %18
  %207 = getelementptr inbounds i8, ptr %dsth.addr.0191.us, i64 %19
  %208 = getelementptr inbounds i8, ptr %dsth.addr.0191.us, i64 %20
  store i8 %201, ptr %205, align 1, !alias.scope !196, !noalias !197
  store i8 %202, ptr %206, align 1, !alias.scope !196, !noalias !197
  store i8 %203, ptr %207, align 1, !alias.scope !196, !noalias !197
  store i8 %204, ptr %208, align 1, !alias.scope !196, !noalias !197
  %209 = load i8, ptr %37, align 1, !alias.scope !187
  %210 = load i8, ptr %38, align 1, !alias.scope !187
  %211 = load i8, ptr %39, align 1, !alias.scope !187
  %212 = load i8, ptr %40, align 1, !alias.scope !187
  %213 = zext i8 %209 to i16
  %214 = zext i8 %210 to i16
  %215 = zext i8 %211 to i16
  %216 = zext i8 %212 to i16
  %217 = getelementptr inbounds i8, ptr %add.ptr2.us, i64 %21
  %218 = getelementptr inbounds i8, ptr %add.ptr2.us, i64 %22
  %219 = getelementptr inbounds i8, ptr %add.ptr2.us, i64 %23
  %220 = getelementptr inbounds i8, ptr %add.ptr2.us, i64 %24
  %221 = load i8, ptr %217, align 1, !alias.scope !198
  %222 = load i8, ptr %218, align 1, !alias.scope !198
  %223 = load i8, ptr %219, align 1, !alias.scope !198
  %224 = load i8, ptr %220, align 1, !alias.scope !198
  %225 = zext i8 %221 to i16
  %226 = zext i8 %222 to i16
  %227 = zext i8 %223 to i16
  %228 = zext i8 %224 to i16
  %229 = add nuw nsw i16 %213, 1
  %230 = add nuw nsw i16 %214, 1
  %231 = add nuw nsw i16 %215, 1
  %232 = add nuw nsw i16 %216, 1
  %233 = add nuw nsw i16 %229, %225
  %234 = add nuw nsw i16 %230, %226
  %235 = add nuw nsw i16 %231, %227
  %236 = add nuw nsw i16 %232, %228
  %237 = lshr i16 %233, 1
  %238 = lshr i16 %234, 1
  %239 = lshr i16 %235, 1
  %240 = lshr i16 %236, 1
  %241 = load i8, ptr %77, align 1, !alias.scope !187
  %242 = load i8, ptr %78, align 1, !alias.scope !187
  %243 = load i8, ptr %79, align 1, !alias.scope !187
  %244 = load i8, ptr %80, align 1, !alias.scope !187
  %245 = zext i8 %241 to i16
  %246 = zext i8 %242 to i16
  %247 = zext i8 %243 to i16
  %248 = zext i8 %244 to i16
  %249 = getelementptr inbounds i8, ptr %add.ptr2.us, i64 %61
  %250 = getelementptr inbounds i8, ptr %add.ptr2.us, i64 %62
  %251 = getelementptr inbounds i8, ptr %add.ptr2.us, i64 %63
  %252 = getelementptr inbounds i8, ptr %add.ptr2.us, i64 %64
  %253 = load i8, ptr %249, align 1, !alias.scope !198
  %254 = load i8, ptr %250, align 1, !alias.scope !198
  %255 = load i8, ptr %251, align 1, !alias.scope !198
  %256 = load i8, ptr %252, align 1, !alias.scope !198
  %257 = zext i8 %253 to i16
  %258 = zext i8 %254 to i16
  %259 = zext i8 %255 to i16
  %260 = zext i8 %256 to i16
  %261 = add nuw nsw i16 %245, 1
  %262 = add nuw nsw i16 %246, 1
  %263 = add nuw nsw i16 %247, 1
  %264 = add nuw nsw i16 %248, 1
  %265 = add nuw nsw i16 %261, %257
  %266 = add nuw nsw i16 %262, %258
  %267 = add nuw nsw i16 %263, %259
  %268 = add nuw nsw i16 %264, %260
  %269 = lshr i16 %265, 1
  %270 = lshr i16 %266, 1
  %271 = lshr i16 %267, 1
  %272 = lshr i16 %268, 1
  %273 = add nuw nsw i16 %237, 1
  %274 = add nuw nsw i16 %238, 1
  %275 = add nuw nsw i16 %239, 1
  %276 = add nuw nsw i16 %240, 1
  %277 = add nuw nsw i16 %273, %269
  %278 = add nuw nsw i16 %274, %270
  %279 = add nuw nsw i16 %275, %271
  %280 = add nuw nsw i16 %276, %272
  %281 = lshr i16 %277, 1
  %282 = lshr i16 %278, 1
  %283 = lshr i16 %279, 1
  %284 = lshr i16 %280, 1
  %285 = trunc nuw i16 %281 to i8
  %286 = trunc nuw i16 %282 to i8
  %287 = trunc nuw i16 %283 to i8
  %288 = trunc nuw i16 %284 to i8
  %289 = getelementptr inbounds i8, ptr %dstv.addr.0190.us, i64 %index
  %290 = getelementptr inbounds i8, ptr %dstv.addr.0190.us, i64 %18
  %291 = getelementptr inbounds i8, ptr %dstv.addr.0190.us, i64 %19
  %292 = getelementptr inbounds i8, ptr %dstv.addr.0190.us, i64 %20
  store i8 %285, ptr %289, align 1, !alias.scope !199, !noalias !200
  store i8 %286, ptr %290, align 1, !alias.scope !199, !noalias !200
  store i8 %287, ptr %291, align 1, !alias.scope !199, !noalias !200
  store i8 %288, ptr %292, align 1, !alias.scope !199, !noalias !200
  %293 = load i8, ptr %77, align 1, !alias.scope !187
  %294 = load i8, ptr %78, align 1, !alias.scope !187
  %295 = load i8, ptr %79, align 1, !alias.scope !187
  %296 = load i8, ptr %80, align 1, !alias.scope !187
  %297 = zext i8 %293 to i16
  %298 = zext i8 %294 to i16
  %299 = zext i8 %295 to i16
  %300 = zext i8 %296 to i16
  %301 = load i8, ptr %249, align 1, !alias.scope !198
  %302 = load i8, ptr %250, align 1, !alias.scope !198
  %303 = load i8, ptr %251, align 1, !alias.scope !198
  %304 = load i8, ptr %252, align 1, !alias.scope !198
  %305 = zext i8 %301 to i16
  %306 = zext i8 %302 to i16
  %307 = zext i8 %303 to i16
  %308 = zext i8 %304 to i16
  %309 = add nuw nsw i16 %297, 1
  %310 = add nuw nsw i16 %298, 1
  %311 = add nuw nsw i16 %299, 1
  %312 = add nuw nsw i16 %300, 1
  %313 = add nuw nsw i16 %309, %305
  %314 = add nuw nsw i16 %310, %306
  %315 = add nuw nsw i16 %311, %307
  %316 = add nuw nsw i16 %312, %308
  %317 = lshr i16 %313, 1
  %318 = lshr i16 %314, 1
  %319 = lshr i16 %315, 1
  %320 = lshr i16 %316, 1
  %321 = load i8, ptr %165, align 1, !alias.scope !187
  %322 = load i8, ptr %166, align 1, !alias.scope !187
  %323 = load i8, ptr %167, align 1, !alias.scope !187
  %324 = load i8, ptr %168, align 1, !alias.scope !187
  %325 = zext i8 %321 to i16
  %326 = zext i8 %322 to i16
  %327 = zext i8 %323 to i16
  %328 = zext i8 %324 to i16
  %329 = getelementptr inbounds i8, ptr %add.ptr2.us, i64 %149
  %330 = getelementptr inbounds i8, ptr %add.ptr2.us, i64 %150
  %331 = getelementptr inbounds i8, ptr %add.ptr2.us, i64 %151
  %332 = getelementptr inbounds i8, ptr %add.ptr2.us, i64 %152
  %333 = load i8, ptr %329, align 1, !alias.scope !198
  %334 = load i8, ptr %330, align 1, !alias.scope !198
  %335 = load i8, ptr %331, align 1, !alias.scope !198
  %336 = load i8, ptr %332, align 1, !alias.scope !198
  %337 = zext i8 %333 to i16
  %338 = zext i8 %334 to i16
  %339 = zext i8 %335 to i16
  %340 = zext i8 %336 to i16
  %341 = add nuw nsw i16 %325, 1
  %342 = add nuw nsw i16 %326, 1
  %343 = add nuw nsw i16 %327, 1
  %344 = add nuw nsw i16 %328, 1
  %345 = add nuw nsw i16 %341, %337
  %346 = add nuw nsw i16 %342, %338
  %347 = add nuw nsw i16 %343, %339
  %348 = add nuw nsw i16 %344, %340
  %349 = lshr i16 %345, 1
  %350 = lshr i16 %346, 1
  %351 = lshr i16 %347, 1
  %352 = lshr i16 %348, 1
  %353 = add nuw nsw i16 %317, 1
  %354 = add nuw nsw i16 %318, 1
  %355 = add nuw nsw i16 %319, 1
  %356 = add nuw nsw i16 %320, 1
  %357 = add nuw nsw i16 %353, %349
  %358 = add nuw nsw i16 %354, %350
  %359 = add nuw nsw i16 %355, %351
  %360 = add nuw nsw i16 %356, %352
  %361 = lshr i16 %357, 1
  %362 = lshr i16 %358, 1
  %363 = lshr i16 %359, 1
  %364 = lshr i16 %360, 1
  %365 = trunc nuw i16 %361 to i8
  %366 = trunc nuw i16 %362 to i8
  %367 = trunc nuw i16 %363 to i8
  %368 = trunc nuw i16 %364 to i8
  %369 = getelementptr inbounds i8, ptr %dstc.addr.0189.us, i64 %index
  %370 = getelementptr inbounds i8, ptr %dstc.addr.0189.us, i64 %18
  %371 = getelementptr inbounds i8, ptr %dstc.addr.0189.us, i64 %19
  %372 = getelementptr inbounds i8, ptr %dstc.addr.0189.us, i64 %20
  store i8 %365, ptr %369, align 1, !alias.scope !201, !noalias !202
  store i8 %366, ptr %370, align 1, !alias.scope !201, !noalias !202
  store i8 %367, ptr %371, align 1, !alias.scope !201, !noalias !202
  store i8 %368, ptr %372, align 1, !alias.scope !201, !noalias !202
  %index.next = add nuw i64 %index, 4
  %373 = icmp eq i64 %index.next, %n.vec
  br i1 %373, label %middle.block, label %vector.body, !llvm.loop !203

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond3.for.cond.cleanup5_crit_edge.us, label %for.body6.us.preheader

for.body6.us.preheader:                           ; preds = %for.body.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body.us ], [ %n.vec, %middle.block ]
  br label %for.body6.us

for.body6.us:                                     ; preds = %for.body6.us.preheader, %for.body6.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6.us ], [ %indvars.iv.ph, %for.body6.us.preheader ]
  %374 = shl nuw nsw i64 %indvars.iv, 1
  %arrayidx.us = getelementptr inbounds i8, ptr %src0.addr.0194.us, i64 %374
  %375 = load i8, ptr %arrayidx.us, align 1
  %conv.us = zext i8 %375 to i16
  %arrayidx9.us = getelementptr inbounds i8, ptr %add.ptr.us, i64 %374
  %376 = load i8, ptr %arrayidx9.us, align 1
  %conv10.us = zext i8 %376 to i16
  %add.us = add nuw nsw i16 %conv.us, 1
  %add11.us = add nuw nsw i16 %add.us, %conv10.us
  %shr.us = lshr i16 %add11.us, 1
  %377 = or disjoint i64 %374, 1
  %arrayidx15.us = getelementptr inbounds i8, ptr %src0.addr.0194.us, i64 %377
  %378 = load i8, ptr %arrayidx15.us, align 1
  %conv16.us = zext i8 %378 to i16
  %arrayidx20.us = getelementptr inbounds i8, ptr %add.ptr.us, i64 %377
  %379 = load i8, ptr %arrayidx20.us, align 1
  %conv21.us = zext i8 %379 to i16
  %add22.us = add nuw nsw i16 %conv16.us, 1
  %add23.us = add nuw nsw i16 %add22.us, %conv21.us
  %shr24.us = lshr i16 %add23.us, 1
  %add25.us = add nuw nsw i16 %shr.us, 1
  %add26.us = add nuw nsw i16 %add25.us, %shr24.us
  %shr27.us = lshr i16 %add26.us, 1
  %conv28.us = trunc nuw i16 %shr27.us to i8
  %arrayidx30.us = getelementptr inbounds i8, ptr %dst0.addr.0193.us, i64 %indvars.iv
  store i8 %conv28.us, ptr %arrayidx30.us, align 1
  %380 = load i8, ptr %arrayidx15.us, align 1
  %conv35.us = zext i8 %380 to i16
  %381 = load i8, ptr %arrayidx20.us, align 1
  %conv40.us = zext i8 %381 to i16
  %add41.us = add nuw nsw i16 %conv35.us, 1
  %add42.us = add nuw nsw i16 %add41.us, %conv40.us
  %shr43.us = lshr i16 %add42.us, 1
  %382 = add nuw nsw i64 %374, 2
  %arrayidx47.us = getelementptr inbounds i8, ptr %src0.addr.0194.us, i64 %382
  %383 = load i8, ptr %arrayidx47.us, align 1
  %conv48.us = zext i8 %383 to i16
  %arrayidx52.us = getelementptr inbounds i8, ptr %add.ptr.us, i64 %382
  %384 = load i8, ptr %arrayidx52.us, align 1
  %conv53.us = zext i8 %384 to i16
  %add54.us = add nuw nsw i16 %conv48.us, 1
  %add55.us = add nuw nsw i16 %add54.us, %conv53.us
  %shr56.us = lshr i16 %add55.us, 1
  %add57.us = add nuw nsw i16 %shr43.us, 1
  %add58.us = add nuw nsw i16 %add57.us, %shr56.us
  %shr59.us = lshr i16 %add58.us, 1
  %conv60.us = trunc nuw i16 %shr59.us to i8
  %arrayidx62.us = getelementptr inbounds i8, ptr %dsth.addr.0191.us, i64 %indvars.iv
  store i8 %conv60.us, ptr %arrayidx62.us, align 1
  %385 = load i8, ptr %arrayidx9.us, align 1
  %conv66.us = zext i8 %385 to i16
  %arrayidx69.us = getelementptr inbounds i8, ptr %add.ptr2.us, i64 %374
  %386 = load i8, ptr %arrayidx69.us, align 1
  %conv70.us = zext i8 %386 to i16
  %add71.us = add nuw nsw i16 %conv66.us, 1
  %add72.us = add nuw nsw i16 %add71.us, %conv70.us
  %shr73.us = lshr i16 %add72.us, 1
  %387 = load i8, ptr %arrayidx20.us, align 1
  %conv78.us = zext i8 %387 to i16
  %arrayidx82.us = getelementptr inbounds i8, ptr %add.ptr2.us, i64 %377
  %388 = load i8, ptr %arrayidx82.us, align 1
  %conv83.us = zext i8 %388 to i16
  %add84.us = add nuw nsw i16 %conv78.us, 1
  %add85.us = add nuw nsw i16 %add84.us, %conv83.us
  %shr86.us = lshr i16 %add85.us, 1
  %add87.us = add nuw nsw i16 %shr73.us, 1
  %add88.us = add nuw nsw i16 %add87.us, %shr86.us
  %shr89.us = lshr i16 %add88.us, 1
  %conv90.us = trunc nuw i16 %shr89.us to i8
  %arrayidx92.us = getelementptr inbounds i8, ptr %dstv.addr.0190.us, i64 %indvars.iv
  store i8 %conv90.us, ptr %arrayidx92.us, align 1
  %389 = load i8, ptr %arrayidx20.us, align 1
  %conv97.us = zext i8 %389 to i16
  %390 = load i8, ptr %arrayidx82.us, align 1
  %conv102.us = zext i8 %390 to i16
  %add103.us = add nuw nsw i16 %conv97.us, 1
  %add104.us = add nuw nsw i16 %add103.us, %conv102.us
  %shr105.us = lshr i16 %add104.us, 1
  %391 = load i8, ptr %arrayidx52.us, align 1
  %conv110.us = zext i8 %391 to i16
  %arrayidx114.us = getelementptr inbounds i8, ptr %add.ptr2.us, i64 %382
  %392 = load i8, ptr %arrayidx114.us, align 1
  %conv115.us = zext i8 %392 to i16
  %add116.us = add nuw nsw i16 %conv110.us, 1
  %add117.us = add nuw nsw i16 %add116.us, %conv115.us
  %shr118.us = lshr i16 %add117.us, 1
  %add119.us = add nuw nsw i16 %shr105.us, 1
  %add120.us = add nuw nsw i16 %add119.us, %shr118.us
  %shr121.us = lshr i16 %add120.us, 1
  %conv122.us = trunc nuw i16 %shr121.us to i8
  %arrayidx124.us = getelementptr inbounds i8, ptr %dstc.addr.0189.us, i64 %indvars.iv
  store i8 %conv122.us, ptr %arrayidx124.us, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond3.for.cond.cleanup5_crit_edge.us, label %for.body6.us, !llvm.loop !204

for.cond3.for.cond.cleanup5_crit_edge.us:         ; preds = %for.body6.us, %middle.block
  %add.ptr127.us = getelementptr inbounds i8, ptr %src0.addr.0194.us, i64 %idx.ext126
  %add.ptr129.us = getelementptr inbounds i8, ptr %dst0.addr.0193.us, i64 %idx.ext128
  %add.ptr131.us = getelementptr inbounds i8, ptr %dsth.addr.0191.us, i64 %idx.ext128
  %add.ptr133.us = getelementptr inbounds i8, ptr %dstv.addr.0190.us, i64 %idx.ext128
  %add.ptr135.us = getelementptr inbounds i8, ptr %dstc.addr.0189.us, i64 %idx.ext128
  %inc137.us = add nuw nsw i32 %y.0192.us, 1
  %exitcond200.not = icmp eq i32 %inc137.us, %height
  br i1 %exitcond200.not, label %for.cond.cleanup, label %for.body.us

for.cond.cleanup:                                 ; preds = %for.cond3.for.cond.cleanup5_crit_edge.us, %for.body.lr.ph, %entry
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @integral_init4h(ptr nocapture noundef %sum, ptr nocapture noundef readonly %pix, i32 noundef %stride) #10 {
entry:
  %cmp39 = icmp sgt i32 %stride, 4
  br i1 %cmp39, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  %sub = add nsw i32 %stride, -4
  %0 = load <4 x i8>, ptr %pix, align 1
  %1 = zext <4 x i8> %0 to <4 x i16>
  %2 = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %1)
  %3 = zext nneg i32 %stride to i64
  %wide.trip.count = zext nneg i32 %sub to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %4 = icmp eq i32 %sub, 1
  br i1 %4, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %for.body

for.cond.cleanup.loopexit.unr-lcssa:              ; preds = %for.body, %for.body.preheader
  %indvars.iv.unr = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next.1, %for.body ]
  %v.040.unr = phi i16 [ %2, %for.body.preheader ], [ %add25.1, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.cond.cleanup, label %for.body.epil

for.body.epil:                                    ; preds = %for.cond.cleanup.loopexit.unr-lcssa
  %5 = sub nsw i64 %indvars.iv.unr, %3
  %arrayidx11.epil = getelementptr inbounds i16, ptr %sum, i64 %5
  %6 = load i16, ptr %arrayidx11.epil, align 2
  %conv14.epil = add i16 %6, %v.040.unr
  %arrayidx16.epil = getelementptr inbounds i16, ptr %sum, i64 %indvars.iv.unr
  store i16 %conv14.epil, ptr %arrayidx16.epil, align 2
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body.epil, %for.cond.cleanup.loopexit.unr-lcssa, %entry
  ret void

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next.1, %for.body ]
  %v.040 = phi i16 [ %2, %for.body.preheader.new ], [ %add25.1, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.1, %for.body ]
  %7 = sub nsw i64 %indvars.iv, %3
  %arrayidx11 = getelementptr inbounds i16, ptr %sum, i64 %7
  %8 = load i16, ptr %arrayidx11, align 2
  %conv14 = add i16 %8, %v.040
  %arrayidx16 = getelementptr inbounds i16, ptr %sum, i64 %indvars.iv
  store i16 %conv14, ptr %arrayidx16, align 2
  %9 = getelementptr inbounds i8, ptr %pix, i64 %indvars.iv
  %arrayidx19 = getelementptr inbounds i8, ptr %9, i64 4
  %10 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %10 to i16
  %11 = load i8, ptr %9, align 1
  %conv23 = zext i8 %11 to i16
  %sub24 = add i16 %v.040, %conv20
  %add25 = sub i16 %sub24, %conv23
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %12 = sub nsw i64 %indvars.iv.next, %3
  %arrayidx11.1 = getelementptr inbounds i16, ptr %sum, i64 %12
  %13 = load i16, ptr %arrayidx11.1, align 2
  %conv14.1 = add i16 %13, %add25
  %arrayidx16.1 = getelementptr inbounds i16, ptr %sum, i64 %indvars.iv.next
  store i16 %conv14.1, ptr %arrayidx16.1, align 2
  %14 = getelementptr inbounds i8, ptr %pix, i64 %indvars.iv.next
  %arrayidx19.1 = getelementptr inbounds i8, ptr %14, i64 4
  %15 = load i8, ptr %arrayidx19.1, align 1
  %conv20.1 = zext i8 %15 to i16
  %16 = load i8, ptr %14, align 1
  %conv23.1 = zext i8 %16 to i16
  %sub24.1 = add i16 %add25, %conv20.1
  %add25.1 = sub i16 %sub24.1, %conv23.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @integral_init8h(ptr nocapture noundef %sum, ptr nocapture noundef readonly %pix, i32 noundef %stride) #10 {
entry:
  %cmp55 = icmp sgt i32 %stride, 8
  br i1 %cmp55, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  %sub = add nsw i32 %stride, -8
  %0 = load <8 x i8>, ptr %pix, align 1
  %1 = zext <8 x i8> %0 to <8 x i16>
  %2 = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %1)
  %3 = zext nneg i32 %stride to i64
  %wide.trip.count = zext nneg i32 %sub to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %4 = icmp eq i32 %sub, 1
  br i1 %4, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %for.body

for.cond.cleanup.loopexit.unr-lcssa:              ; preds = %for.body, %for.body.preheader
  %indvars.iv.unr = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next.1, %for.body ]
  %v.056.unr = phi i16 [ %2, %for.body.preheader ], [ %add37.1, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.cond.cleanup, label %for.body.epil

for.body.epil:                                    ; preds = %for.cond.cleanup.loopexit.unr-lcssa
  %5 = sub nsw i64 %indvars.iv.unr, %3
  %arrayidx23.epil = getelementptr inbounds i16, ptr %sum, i64 %5
  %6 = load i16, ptr %arrayidx23.epil, align 2
  %conv26.epil = add i16 %6, %v.056.unr
  %arrayidx28.epil = getelementptr inbounds i16, ptr %sum, i64 %indvars.iv.unr
  store i16 %conv26.epil, ptr %arrayidx28.epil, align 2
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body.epil, %for.cond.cleanup.loopexit.unr-lcssa, %entry
  ret void

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next.1, %for.body ]
  %v.056 = phi i16 [ %2, %for.body.preheader.new ], [ %add37.1, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.1, %for.body ]
  %7 = sub nsw i64 %indvars.iv, %3
  %arrayidx23 = getelementptr inbounds i16, ptr %sum, i64 %7
  %8 = load i16, ptr %arrayidx23, align 2
  %conv26 = add i16 %8, %v.056
  %arrayidx28 = getelementptr inbounds i16, ptr %sum, i64 %indvars.iv
  store i16 %conv26, ptr %arrayidx28, align 2
  %9 = getelementptr inbounds i8, ptr %pix, i64 %indvars.iv
  %arrayidx31 = getelementptr inbounds i8, ptr %9, i64 8
  %10 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %10 to i16
  %11 = load i8, ptr %9, align 1
  %conv35 = zext i8 %11 to i16
  %sub36 = add i16 %v.056, %conv32
  %add37 = sub i16 %sub36, %conv35
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %12 = sub nsw i64 %indvars.iv.next, %3
  %arrayidx23.1 = getelementptr inbounds i16, ptr %sum, i64 %12
  %13 = load i16, ptr %arrayidx23.1, align 2
  %conv26.1 = add i16 %13, %add37
  %arrayidx28.1 = getelementptr inbounds i16, ptr %sum, i64 %indvars.iv.next
  store i16 %conv26.1, ptr %arrayidx28.1, align 2
  %14 = getelementptr inbounds i8, ptr %pix, i64 %indvars.iv.next
  %arrayidx31.1 = getelementptr inbounds i8, ptr %14, i64 8
  %15 = load i8, ptr %arrayidx31.1, align 1
  %conv32.1 = zext i8 %15 to i16
  %16 = load i8, ptr %14, align 1
  %conv35.1 = zext i8 %16 to i16
  %sub36.1 = add i16 %add37, %conv32.1
  %add37.1 = sub i16 %sub36.1, %conv35.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @integral_init4v(ptr nocapture noundef %sum8, ptr nocapture noundef writeonly %sum4, i32 noundef %stride) #10 {
entry:
  %sum879 = ptrtoint ptr %sum8 to i64
  %sum478 = ptrtoint ptr %sum4 to i64
  %sub = add i32 %stride, -8
  %cmp64 = icmp sgt i32 %stride, 8
  br i1 %cmp64, label %for.body.lr.ph, label %for.cond.cleanup13

for.body.lr.ph:                                   ; preds = %entry
  %mul = shl nsw i32 %stride, 2
  %0 = zext nneg i32 %mul to i64
  %wide.trip.count = zext i32 %sub to i64
  %invariant.gep = getelementptr inbounds i16, ptr %sum8, i64 %0
  %min.iters.check = icmp ult i32 %sub, 32
  br i1 %min.iters.check, label %for.body.preheader, label %vector.memcheck

for.body.preheader:                               ; preds = %middle.block, %vector.memcheck, %for.body.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body.lr.ph ], [ %n.vec, %middle.block ]
  %xtraiter = and i64 %wide.trip.count, 3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body.prol ], [ %indvars.iv.ph, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %gep.prol = getelementptr inbounds i16, ptr %invariant.gep, i64 %indvars.iv.prol
  %1 = load i16, ptr %gep.prol, align 2
  %arrayidx2.prol = getelementptr inbounds i16, ptr %sum8, i64 %indvars.iv.prol
  %2 = load i16, ptr %arrayidx2.prol, align 2
  %sub4.prol = sub i16 %1, %2
  %arrayidx7.prol = getelementptr inbounds i16, ptr %sum4, i64 %indvars.iv.prol
  store i16 %sub4.prol, ptr %arrayidx7.prol, align 2
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !205

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body.preheader ], [ %indvars.iv.next.prol, %for.body.prol ]
  %3 = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %4 = icmp ugt i64 %3, -4
  br i1 %4, label %for.cond9.preheader, label %for.body

vector.memcheck:                                  ; preds = %for.body.lr.ph
  %5 = sub i64 %sum478, %sum879
  %diff.check = icmp ult i64 %5, 64
  %6 = shl nuw nsw i64 %0, 1
  %7 = sub i64 %5, %6
  %diff.check80 = icmp ult i64 %7, 64
  %conflict.rdx = or i1 %diff.check, %diff.check80
  br i1 %conflict.rdx, label %for.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483616
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %8 = getelementptr inbounds i16, ptr %invariant.gep, i64 %index
  %9 = getelementptr inbounds i8, ptr %8, i64 16
  %10 = getelementptr inbounds i8, ptr %8, i64 32
  %11 = getelementptr inbounds i8, ptr %8, i64 48
  %wide.load = load <8 x i16>, ptr %8, align 2
  %wide.load81 = load <8 x i16>, ptr %9, align 2
  %wide.load82 = load <8 x i16>, ptr %10, align 2
  %wide.load83 = load <8 x i16>, ptr %11, align 2
  %12 = getelementptr inbounds i16, ptr %sum8, i64 %index
  %13 = getelementptr inbounds i8, ptr %12, i64 16
  %14 = getelementptr inbounds i8, ptr %12, i64 32
  %15 = getelementptr inbounds i8, ptr %12, i64 48
  %wide.load84 = load <8 x i16>, ptr %12, align 2
  %wide.load85 = load <8 x i16>, ptr %13, align 2
  %wide.load86 = load <8 x i16>, ptr %14, align 2
  %wide.load87 = load <8 x i16>, ptr %15, align 2
  %16 = sub <8 x i16> %wide.load, %wide.load84
  %17 = sub <8 x i16> %wide.load81, %wide.load85
  %18 = sub <8 x i16> %wide.load82, %wide.load86
  %19 = sub <8 x i16> %wide.load83, %wide.load87
  %20 = getelementptr inbounds i16, ptr %sum4, i64 %index
  %21 = getelementptr inbounds i8, ptr %20, i64 16
  %22 = getelementptr inbounds i8, ptr %20, i64 32
  %23 = getelementptr inbounds i8, ptr %20, i64 48
  store <8 x i16> %16, ptr %20, align 2
  store <8 x i16> %17, ptr %21, align 2
  store <8 x i16> %18, ptr %22, align 2
  store <8 x i16> %19, ptr %23, align 2
  %index.next = add nuw i64 %index, 32
  %24 = icmp eq i64 %index.next, %n.vec
  br i1 %24, label %middle.block, label %vector.body, !llvm.loop !206

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond9.preheader, label %for.body.preheader

for.cond9.preheader:                              ; preds = %for.body.prol.loopexit, %for.body, %middle.block
  br i1 %cmp64, label %for.body14.lr.ph, label %for.cond.cleanup13

for.body14.lr.ph:                                 ; preds = %for.cond9.preheader
  %mul15 = shl nsw i32 %stride, 3
  %25 = zext nneg i32 %mul15 to i64
  %wide.trip.count74 = zext nneg i32 %sub to i64
  %invariant.gep76 = getelementptr inbounds i16, ptr %sum8, i64 %25
  %min.iters.check90 = icmp ult i32 %sub, 32
  br i1 %min.iters.check90, label %for.body14.preheader, label %vector.ph91

for.body14.preheader:                             ; preds = %middle.block88, %for.body14.lr.ph
  %indvars.iv70.ph = phi i64 [ 0, %for.body14.lr.ph ], [ %n.vec93, %middle.block88 ]
  br label %for.body14

vector.ph91:                                      ; preds = %for.body14.lr.ph
  %n.vec93 = and i64 %wide.trip.count, 2147483616
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph91
  %index96 = phi i64 [ 0, %vector.ph91 ], [ %index.next113, %vector.body95 ]
  %26 = getelementptr inbounds i16, ptr %invariant.gep76, i64 %index96
  %27 = getelementptr inbounds i8, ptr %26, i64 16
  %28 = getelementptr inbounds i8, ptr %26, i64 32
  %29 = getelementptr inbounds i8, ptr %26, i64 48
  %wide.load97 = load <8 x i16>, ptr %26, align 2
  %wide.load98 = load <8 x i16>, ptr %27, align 2
  %wide.load99 = load <8 x i16>, ptr %28, align 2
  %wide.load100 = load <8 x i16>, ptr %29, align 2
  %30 = getelementptr i8, ptr %26, i64 8
  %31 = getelementptr i8, ptr %26, i64 24
  %32 = getelementptr i8, ptr %26, i64 40
  %33 = getelementptr i8, ptr %26, i64 56
  %wide.load101 = load <8 x i16>, ptr %30, align 2
  %wide.load102 = load <8 x i16>, ptr %31, align 2
  %wide.load103 = load <8 x i16>, ptr %32, align 2
  %wide.load104 = load <8 x i16>, ptr %33, align 2
  %34 = getelementptr inbounds i16, ptr %sum8, i64 %index96
  %35 = getelementptr inbounds i8, ptr %34, i64 16
  %36 = getelementptr inbounds i8, ptr %34, i64 32
  %37 = getelementptr inbounds i8, ptr %34, i64 48
  %wide.load105 = load <8 x i16>, ptr %34, align 2
  %wide.load106 = load <8 x i16>, ptr %35, align 2
  %wide.load107 = load <8 x i16>, ptr %36, align 2
  %wide.load108 = load <8 x i16>, ptr %37, align 2
  %38 = getelementptr inbounds i8, ptr %34, i64 8
  %39 = getelementptr inbounds i8, ptr %34, i64 24
  %40 = getelementptr inbounds i8, ptr %34, i64 40
  %41 = getelementptr inbounds i8, ptr %34, i64 56
  %wide.load109 = load <8 x i16>, ptr %38, align 2
  %wide.load110 = load <8 x i16>, ptr %39, align 2
  %wide.load111 = load <8 x i16>, ptr %40, align 2
  %wide.load112 = load <8 x i16>, ptr %41, align 2
  %42 = add <8 x i16> %wide.load101, %wide.load97
  %43 = add <8 x i16> %wide.load102, %wide.load98
  %44 = add <8 x i16> %wide.load103, %wide.load99
  %45 = add <8 x i16> %wide.load104, %wide.load100
  %46 = add <8 x i16> %wide.load105, %wide.load109
  %47 = add <8 x i16> %wide.load106, %wide.load110
  %48 = add <8 x i16> %wide.load107, %wide.load111
  %49 = add <8 x i16> %wide.load108, %wide.load112
  %50 = sub <8 x i16> %42, %46
  %51 = sub <8 x i16> %43, %47
  %52 = sub <8 x i16> %44, %48
  %53 = sub <8 x i16> %45, %49
  store <8 x i16> %50, ptr %34, align 2
  store <8 x i16> %51, ptr %35, align 2
  store <8 x i16> %52, ptr %36, align 2
  store <8 x i16> %53, ptr %37, align 2
  %index.next113 = add nuw i64 %index96, 32
  %54 = icmp eq i64 %index.next113, %n.vec93
  br i1 %54, label %middle.block88, label %vector.body95, !llvm.loop !207

middle.block88:                                   ; preds = %vector.body95
  %cmp.n114 = icmp eq i64 %n.vec93, %wide.trip.count
  br i1 %cmp.n114, label %for.cond.cleanup13, label %for.body14.preheader

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %gep = getelementptr inbounds i16, ptr %invariant.gep, i64 %indvars.iv
  %55 = load i16, ptr %gep, align 2
  %arrayidx2 = getelementptr inbounds i16, ptr %sum8, i64 %indvars.iv
  %56 = load i16, ptr %arrayidx2, align 2
  %sub4 = sub i16 %55, %56
  %arrayidx7 = getelementptr inbounds i16, ptr %sum4, i64 %indvars.iv
  store i16 %sub4, ptr %arrayidx7, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %gep.1 = getelementptr inbounds i16, ptr %invariant.gep, i64 %indvars.iv.next
  %57 = load i16, ptr %gep.1, align 2
  %arrayidx2.1 = getelementptr inbounds i16, ptr %sum8, i64 %indvars.iv.next
  %58 = load i16, ptr %arrayidx2.1, align 2
  %sub4.1 = sub i16 %57, %58
  %arrayidx7.1 = getelementptr inbounds i16, ptr %sum4, i64 %indvars.iv.next
  store i16 %sub4.1, ptr %arrayidx7.1, align 2
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %gep.2 = getelementptr inbounds i16, ptr %invariant.gep, i64 %indvars.iv.next.1
  %59 = load i16, ptr %gep.2, align 2
  %arrayidx2.2 = getelementptr inbounds i16, ptr %sum8, i64 %indvars.iv.next.1
  %60 = load i16, ptr %arrayidx2.2, align 2
  %sub4.2 = sub i16 %59, %60
  %arrayidx7.2 = getelementptr inbounds i16, ptr %sum4, i64 %indvars.iv.next.1
  store i16 %sub4.2, ptr %arrayidx7.2, align 2
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %gep.3 = getelementptr inbounds i16, ptr %invariant.gep, i64 %indvars.iv.next.2
  %61 = load i16, ptr %gep.3, align 2
  %arrayidx2.3 = getelementptr inbounds i16, ptr %sum8, i64 %indvars.iv.next.2
  %62 = load i16, ptr %arrayidx2.3, align 2
  %sub4.3 = sub i16 %61, %62
  %arrayidx7.3 = getelementptr inbounds i16, ptr %sum4, i64 %indvars.iv.next.2
  store i16 %sub4.3, ptr %arrayidx7.3, align 2
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %for.cond9.preheader, label %for.body, !llvm.loop !208

for.cond.cleanup13:                               ; preds = %for.body14, %middle.block88, %entry, %for.cond9.preheader
  ret void

for.body14:                                       ; preds = %for.body14.preheader, %for.body14
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.body14 ], [ %indvars.iv70.ph, %for.body14.preheader ]
  %gep77 = getelementptr inbounds i16, ptr %invariant.gep76, i64 %indvars.iv70
  %63 = load i16, ptr %gep77, align 2
  %arrayidx24 = getelementptr i8, ptr %gep77, i64 8
  %64 = load i16, ptr %arrayidx24, align 2
  %arrayidx28 = getelementptr inbounds i16, ptr %sum8, i64 %indvars.iv70
  %65 = load i16, ptr %arrayidx28, align 2
  %arrayidx33 = getelementptr inbounds i8, ptr %arrayidx28, i64 8
  %66 = load i16, ptr %arrayidx33, align 2
  %.neg63 = add i16 %64, %63
  %67 = add i16 %65, %66
  %sub35 = sub i16 %.neg63, %67
  store i16 %sub35, ptr %arrayidx28, align 2
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  %exitcond75.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count74
  br i1 %exitcond75.not, label %for.cond.cleanup13, label %for.body14, !llvm.loop !209
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @integral_init8v(ptr nocapture noundef %sum8, i32 noundef %stride) #10 {
entry:
  %cmp15 = icmp sgt i32 %stride, 8
  br i1 %cmp15, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %sub = add nsw i32 %stride, -8
  %mul = shl nsw i32 %stride, 3
  %0 = zext nneg i32 %mul to i64
  %wide.trip.count = zext nneg i32 %sub to i64
  %invariant.gep = getelementptr inbounds i16, ptr %sum8, i64 %0
  %min.iters.check = icmp ult i32 %sub, 32
  br i1 %min.iters.check, label %for.body.preheader, label %vector.ph

for.body.preheader:                               ; preds = %middle.block, %for.body.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %for.body.lr.ph ], [ %n.vec, %middle.block ]
  br label %for.body

vector.ph:                                        ; preds = %for.body.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483616
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %1 = getelementptr inbounds i16, ptr %invariant.gep, i64 %index
  %2 = getelementptr inbounds i8, ptr %1, i64 16
  %3 = getelementptr inbounds i8, ptr %1, i64 32
  %4 = getelementptr inbounds i8, ptr %1, i64 48
  %wide.load = load <8 x i16>, ptr %1, align 2
  %wide.load19 = load <8 x i16>, ptr %2, align 2
  %wide.load20 = load <8 x i16>, ptr %3, align 2
  %wide.load21 = load <8 x i16>, ptr %4, align 2
  %5 = getelementptr inbounds i16, ptr %sum8, i64 %index
  %6 = getelementptr inbounds i8, ptr %5, i64 16
  %7 = getelementptr inbounds i8, ptr %5, i64 32
  %8 = getelementptr inbounds i8, ptr %5, i64 48
  %wide.load22 = load <8 x i16>, ptr %5, align 2
  %wide.load23 = load <8 x i16>, ptr %6, align 2
  %wide.load24 = load <8 x i16>, ptr %7, align 2
  %wide.load25 = load <8 x i16>, ptr %8, align 2
  %9 = sub <8 x i16> %wide.load, %wide.load22
  %10 = sub <8 x i16> %wide.load19, %wide.load23
  %11 = sub <8 x i16> %wide.load20, %wide.load24
  %12 = sub <8 x i16> %wide.load21, %wide.load25
  store <8 x i16> %9, ptr %5, align 2
  store <8 x i16> %10, ptr %6, align 2
  store <8 x i16> %11, ptr %7, align 2
  store <8 x i16> %12, ptr %8, align 2
  %index.next = add nuw i64 %index, 32
  %13 = icmp eq i64 %index.next, %n.vec
  br i1 %13, label %middle.block, label %vector.body, !llvm.loop !210

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond.cleanup, label %for.body.preheader

for.cond.cleanup:                                 ; preds = %for.body, %middle.block, %entry
  ret void

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %gep = getelementptr inbounds i16, ptr %invariant.gep, i64 %indvars.iv
  %14 = load i16, ptr %gep, align 2
  %arrayidx2 = getelementptr inbounds i16, ptr %sum8, i64 %indvars.iv
  %15 = load i16, ptr %arrayidx2, align 2
  %sub4 = sub i16 %14, %15
  store i16 %sub4, ptr %arrayidx2, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !211
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @mbtree_propagate_cost(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %propagate_in, ptr nocapture noundef readonly %intra_costs, ptr nocapture noundef readonly %inter_costs, ptr nocapture noundef readonly %inv_qscales, i32 noundef %len) #10 {
entry:
  %cmp33 = icmp sgt i32 %len, 0
  br i1 %cmp33, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext nneg i32 %len to i64
  %min.iters.check = icmp ult i32 %len, 4
  br i1 %min.iters.check, label %for.body.preheader51, label %vector.memcheck

for.body.preheader51:                             ; preds = %middle.block, %vector.memcheck, %for.body.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  br label %for.body

vector.memcheck:                                  ; preds = %for.body.preheader
  %0 = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep = getelementptr i8, ptr %dst, i64 %0
  %1 = shl nuw nsw i64 %wide.trip.count, 1
  %scevgep36 = getelementptr i8, ptr %propagate_in, i64 %1
  %scevgep37 = getelementptr i8, ptr %intra_costs, i64 %1
  %scevgep38 = getelementptr i8, ptr %inv_qscales, i64 %1
  %scevgep39 = getelementptr i8, ptr %inter_costs, i64 %1
  %bound0 = icmp ugt ptr %scevgep36, %dst
  %bound1 = icmp ugt ptr %scevgep, %propagate_in
  %found.conflict = and i1 %bound0, %bound1
  %bound040 = icmp ugt ptr %scevgep37, %dst
  %bound141 = icmp ugt ptr %scevgep, %intra_costs
  %found.conflict42 = and i1 %bound040, %bound141
  %conflict.rdx = or i1 %found.conflict, %found.conflict42
  %bound043 = icmp ugt ptr %scevgep38, %dst
  %bound144 = icmp ugt ptr %scevgep, %inv_qscales
  %found.conflict45 = and i1 %bound043, %bound144
  %conflict.rdx46 = or i1 %conflict.rdx, %found.conflict45
  %bound047 = icmp ugt ptr %scevgep39, %dst
  %bound148 = icmp ugt ptr %scevgep, %inter_costs
  %found.conflict49 = and i1 %bound047, %bound148
  %conflict.rdx50 = or i1 %conflict.rdx46, %found.conflict49
  br i1 %conflict.rdx50, label %for.body.preheader51, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %2 = or disjoint i64 %index, 1
  %3 = or disjoint i64 %index, 2
  %4 = or disjoint i64 %index, 3
  %5 = getelementptr inbounds i16, ptr %propagate_in, i64 %index
  %6 = getelementptr inbounds i16, ptr %propagate_in, i64 %2
  %7 = getelementptr inbounds i16, ptr %propagate_in, i64 %3
  %8 = getelementptr inbounds i16, ptr %propagate_in, i64 %4
  %9 = load i16, ptr %5, align 2, !alias.scope !212
  %10 = load i16, ptr %6, align 2, !alias.scope !212
  %11 = load i16, ptr %7, align 2, !alias.scope !212
  %12 = load i16, ptr %8, align 2, !alias.scope !212
  %13 = zext i16 %9 to i32
  %14 = zext i16 %10 to i32
  %15 = zext i16 %11 to i32
  %16 = zext i16 %12 to i32
  %17 = getelementptr inbounds i16, ptr %intra_costs, i64 %index
  %18 = getelementptr inbounds i16, ptr %intra_costs, i64 %2
  %19 = getelementptr inbounds i16, ptr %intra_costs, i64 %3
  %20 = getelementptr inbounds i16, ptr %intra_costs, i64 %4
  %21 = load i16, ptr %17, align 2, !alias.scope !215
  %22 = load i16, ptr %18, align 2, !alias.scope !215
  %23 = load i16, ptr %19, align 2, !alias.scope !215
  %24 = load i16, ptr %20, align 2, !alias.scope !215
  %25 = zext i16 %21 to i32
  %26 = zext i16 %22 to i32
  %27 = zext i16 %23 to i32
  %28 = zext i16 %24 to i32
  %29 = getelementptr inbounds i16, ptr %inv_qscales, i64 %index
  %30 = getelementptr inbounds i16, ptr %inv_qscales, i64 %2
  %31 = getelementptr inbounds i16, ptr %inv_qscales, i64 %3
  %32 = getelementptr inbounds i16, ptr %inv_qscales, i64 %4
  %33 = load i16, ptr %29, align 2, !alias.scope !217
  %34 = load i16, ptr %30, align 2, !alias.scope !217
  %35 = load i16, ptr %31, align 2, !alias.scope !217
  %36 = load i16, ptr %32, align 2, !alias.scope !217
  %37 = zext i16 %33 to i32
  %38 = zext i16 %34 to i32
  %39 = zext i16 %35 to i32
  %40 = zext i16 %36 to i32
  %41 = mul nuw nsw i32 %37, %25
  %42 = mul nuw nsw i32 %38, %26
  %43 = mul nuw nsw i32 %39, %27
  %44 = mul nuw nsw i32 %40, %28
  %45 = add nuw nsw i32 %41, 128
  %46 = add nuw nsw i32 %42, 128
  %47 = add nuw nsw i32 %43, 128
  %48 = add nuw nsw i32 %44, 128
  %49 = lshr i32 %45, 8
  %50 = lshr i32 %46, 8
  %51 = lshr i32 %47, 8
  %52 = lshr i32 %48, 8
  %53 = add nuw nsw i32 %49, %13
  %54 = add nuw nsw i32 %50, %14
  %55 = add nuw nsw i32 %51, %15
  %56 = add nuw nsw i32 %52, %16
  %57 = zext nneg i32 %53 to i64
  %58 = zext nneg i32 %54 to i64
  %59 = zext nneg i32 %55 to i64
  %60 = zext nneg i32 %56 to i64
  %61 = getelementptr inbounds i16, ptr %inter_costs, i64 %index
  %62 = getelementptr inbounds i16, ptr %inter_costs, i64 %2
  %63 = getelementptr inbounds i16, ptr %inter_costs, i64 %3
  %64 = getelementptr inbounds i16, ptr %inter_costs, i64 %4
  %65 = load i16, ptr %61, align 2, !alias.scope !219
  %66 = load i16, ptr %62, align 2, !alias.scope !219
  %67 = load i16, ptr %63, align 2, !alias.scope !219
  %68 = load i16, ptr %64, align 2, !alias.scope !219
  %69 = and i16 %65, 16383
  %70 = and i16 %66, 16383
  %71 = and i16 %67, 16383
  %72 = and i16 %68, 16383
  %73 = zext nneg i16 %69 to i32
  %74 = zext nneg i16 %70 to i32
  %75 = zext nneg i16 %71 to i32
  %76 = zext nneg i16 %72 to i32
  %77 = sub nsw i32 %25, %73
  %78 = sub nsw i32 %26, %74
  %79 = sub nsw i32 %27, %75
  %80 = sub nsw i32 %28, %76
  %81 = sext i32 %77 to i64
  %82 = sext i32 %78 to i64
  %83 = sext i32 %79 to i64
  %84 = sext i32 %80 to i64
  %85 = mul nsw i64 %57, %81
  %86 = mul nsw i64 %58, %82
  %87 = mul nsw i64 %59, %83
  %88 = mul nsw i64 %60, %84
  %89 = zext i16 %21 to i64
  %90 = zext i16 %22 to i64
  %91 = zext i16 %23 to i64
  %92 = zext i16 %24 to i64
  %93 = sdiv i64 %85, %89
  %94 = sdiv i64 %86, %90
  %95 = sdiv i64 %87, %91
  %96 = sdiv i64 %88, %92
  %97 = trunc i64 %93 to i32
  %98 = trunc i64 %94 to i32
  %99 = trunc i64 %95 to i32
  %100 = trunc i64 %96 to i32
  %101 = getelementptr inbounds i32, ptr %dst, i64 %index
  %102 = getelementptr inbounds i32, ptr %dst, i64 %2
  %103 = getelementptr inbounds i32, ptr %dst, i64 %3
  %104 = getelementptr inbounds i32, ptr %dst, i64 %4
  store i32 %97, ptr %101, align 4, !alias.scope !221, !noalias !223
  store i32 %98, ptr %102, align 4, !alias.scope !221, !noalias !223
  store i32 %99, ptr %103, align 4, !alias.scope !221, !noalias !223
  store i32 %100, ptr %104, align 4, !alias.scope !221, !noalias !223
  %index.next = add nuw i64 %index, 4
  %105 = icmp eq i64 %index.next, %n.vec
  br i1 %105, label %middle.block, label %vector.body, !llvm.loop !224

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond.cleanup, label %for.body.preheader51

for.cond.cleanup:                                 ; preds = %for.body, %middle.block, %entry
  ret void

for.body:                                         ; preds = %for.body.preheader51, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader51 ]
  %arrayidx = getelementptr inbounds i16, ptr %propagate_in, i64 %indvars.iv
  %106 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %106 to i32
  %arrayidx2 = getelementptr inbounds i16, ptr %intra_costs, i64 %indvars.iv
  %107 = load i16, ptr %arrayidx2, align 2
  %conv3 = zext i16 %107 to i32
  %arrayidx5 = getelementptr inbounds i16, ptr %inv_qscales, i64 %indvars.iv
  %108 = load i16, ptr %arrayidx5, align 2
  %conv6 = zext i16 %108 to i32
  %mul = mul nuw nsw i32 %conv6, %conv3
  %add = add nuw nsw i32 %mul, 128
  %shr = lshr i32 %add, 8
  %add7 = add nuw nsw i32 %shr, %conv
  %conv8 = zext nneg i32 %add7 to i64
  %arrayidx13 = getelementptr inbounds i16, ptr %inter_costs, i64 %indvars.iv
  %109 = load i16, ptr %arrayidx13, align 2
  %110 = and i16 %109, 16383
  %and = zext nneg i16 %110 to i32
  %sub = sub nsw i32 %conv3, %and
  %conv15 = sext i32 %sub to i64
  %mul16 = mul nsw i64 %conv8, %conv15
  %conv19 = zext i16 %107 to i64
  %div = sdiv i64 %mul16, %conv19
  %conv20 = trunc i64 %div to i32
  %arrayidx22 = getelementptr inbounds i32, ptr %dst, i64 %indvars.iv
  store i32 %conv20, ptr %arrayidx22, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !225
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_frame_filter(ptr nocapture noundef readonly %h, ptr nocapture noundef readonly %frame, i32 noundef %mb_y, i32 noundef %b_end) local_unnamed_addr #2 {
entry:
  %b_mbaff = getelementptr inbounds i8, ptr %h, i64 7268
  %0 = load i32, ptr %b_mbaff, align 4
  %i_stride = getelementptr inbounds i8, ptr %frame, i64 104
  %1 = load i32, ptr %i_stride, align 8
  %shl = shl i32 %1, %0
  %i_width = getelementptr inbounds i8, ptr %frame, i64 116
  %2 = load i32, ptr %i_width, align 4
  %mul = shl nsw i32 %mb_y, 4
  %shr = ashr i32 %mul, %0
  %sub = add nsw i32 %shr, -8
  %tobool.not = icmp eq i32 %b_end, 0
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %i_lines = getelementptr inbounds i8, ptr %frame, i64 128
  %3 = load i32, ptr %i_lines, align 16
  %.pre = ashr i32 %3, %0
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %shr4.pre-phi = phi i32 [ %shr, %entry ], [ %.pre, %cond.true ]
  %add = add nsw i32 %shr4.pre-phi, 8
  %and = and i32 %0, %mb_y
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end, label %cleanup

if.end:                                           ; preds = %cond.end
  %cmp.not155 = icmp slt i32 %0, 0
  br i1 %cmp.not155, label %for.cond.cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %mul5 = mul nsw i32 %sub, %shl
  %sub6 = add nsw i32 %mul5, -8
  %hpel_filter = getelementptr inbounds i8, ptr %h, i64 32792
  %arrayidx8 = getelementptr inbounds i8, ptr %frame, i64 184
  %arrayidx10 = getelementptr inbounds i8, ptr %frame, i64 192
  %arrayidx14 = getelementptr inbounds i8, ptr %frame, i64 200
  %plane = getelementptr inbounds i8, ptr %frame, i64 152
  %add20 = add nsw i32 %2, 16
  %sub21 = sub nsw i32 %add, %sub
  %scratch_buffer = getelementptr inbounds i8, ptr %h, i64 31176
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %if.end
  %integral = getelementptr inbounds i8, ptr %frame, i64 240
  %4 = load ptr, ptr %integral, align 16
  %tobool25.not = icmp eq ptr %4, null
  br i1 %tobool25.not, label %cleanup, label %if.then26

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %y.0157 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %offs.0156 = phi i32 [ %sub6, %for.body.lr.ph ], [ %add24, %for.body ]
  %5 = load ptr, ptr %hpel_filter, align 8
  %6 = load ptr, ptr %arrayidx8, align 8
  %idx.ext = sext i32 %offs.0156 to i64
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %idx.ext
  %7 = load ptr, ptr %arrayidx10, align 16
  %add.ptr12 = getelementptr inbounds i8, ptr %7, i64 %idx.ext
  %8 = load ptr, ptr %arrayidx14, align 8
  %add.ptr16 = getelementptr inbounds i8, ptr %8, i64 %idx.ext
  %9 = load ptr, ptr %plane, align 8
  %add.ptr19 = getelementptr inbounds i8, ptr %9, i64 %idx.ext
  %10 = load ptr, ptr %scratch_buffer, align 8
  tail call void %5(ptr noundef %add.ptr, ptr noundef %add.ptr12, ptr noundef %add.ptr16, ptr noundef %add.ptr19, i32 noundef %shl, i32 noundef %add20, i32 noundef %sub21, ptr noundef %10) #13
  %inc = add nuw i32 %y.0157, 1
  %11 = load i32, ptr %i_stride, align 8
  %add24 = add nsw i32 %11, %offs.0156
  %exitcond.not = icmp eq i32 %y.0157, %0
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body

if.then26:                                        ; preds = %for.cond.cleanup
  %cmp27 = icmp slt i32 %shr, 8
  br i1 %cmp27, label %if.then28, label %if.end35

if.then28:                                        ; preds = %if.then26
  %mul30 = shl nsw i32 %shl, 5
  %idx.ext31 = sext i32 %mul30 to i64
  %idx.neg = sub nsw i64 0, %idx.ext31
  %add.ptr32 = getelementptr inbounds i16, ptr %4, i64 %idx.neg
  %add.ptr33 = getelementptr inbounds i8, ptr %add.ptr32, i64 -64
  %conv = sext i32 %shl to i64
  %mul34 = shl nsw i64 %conv, 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %add.ptr33, i8 0, i64 %mul34, i1 false)
  br label %if.end35

if.end35:                                         ; preds = %if.then28, %if.then26
  %start.0 = phi i32 [ -32, %if.then28 ], [ %sub, %if.then26 ]
  %add38 = add nsw i32 %shr4.pre-phi, 31
  %spec.select = select i1 %tobool.not, i32 %add, i32 %add38
  %cmp42158 = icmp slt i32 %start.0, %spec.select
  br i1 %cmp42158, label %for.body45.lr.ph, label %cleanup

for.body45.lr.ph:                                 ; preds = %if.end35
  %plane46 = getelementptr inbounds i8, ptr %frame, i64 152
  %b_have_sub8x8_esa = getelementptr inbounds i8, ptr %h, i64 14676
  %integral_init4h = getelementptr inbounds i8, ptr %h, i64 32832
  %mul61 = shl nsw i32 %shl, 3
  %idx.ext62 = sext i32 %mul61 to i64
  %idx.neg63 = sub nsw i64 0, %idx.ext62
  %i_lines65 = getelementptr inbounds i8, ptr %frame, i64 128
  %integral_init4v = getelementptr inbounds i8, ptr %h, i64 32848
  %integral_init8h = getelementptr inbounds i8, ptr %h, i64 32840
  %integral_init8v = getelementptr inbounds i8, ptr %h, i64 32856
  %12 = sext i32 %start.0 to i64
  %13 = sext i32 %shl to i64
  br label %for.body45

for.body45:                                       ; preds = %for.body45.lr.ph, %if.end86
  %indvars.iv = phi i64 [ %12, %for.body45.lr.ph ], [ %indvars.iv.next, %if.end86 ]
  %14 = load ptr, ptr %plane46, align 8
  %15 = mul nsw i64 %indvars.iv, %13
  %add.ptr50 = getelementptr inbounds i8, ptr %14, i64 %15
  %add.ptr51 = getelementptr inbounds i8, ptr %add.ptr50, i64 -32
  %16 = load ptr, ptr %integral, align 16
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %17 = mul nsw i64 %indvars.iv.next, %13
  %add.ptr56 = getelementptr inbounds i16, ptr %16, i64 %17
  %add.ptr57 = getelementptr inbounds i8, ptr %add.ptr56, i64 -64
  %18 = load i32, ptr %b_have_sub8x8_esa, align 4
  %tobool58.not = icmp eq i32 %18, 0
  %cmp77 = icmp sgt i64 %indvars.iv, -25
  br i1 %tobool58.not, label %if.else, label %if.then59

if.then59:                                        ; preds = %for.body45
  %19 = load ptr, ptr %integral_init4h, align 8
  tail call void %19(ptr noundef nonnull %add.ptr57, ptr noundef nonnull %add.ptr51, i32 noundef %shl) #13
  br i1 %cmp77, label %if.then73, label %if.end86

if.then73:                                        ; preds = %if.then59
  %add.ptr64 = getelementptr inbounds i16, ptr %add.ptr57, i64 %idx.neg63
  %20 = load i32, ptr %i_lines65, align 16
  %add67 = add nsw i32 %20, 64
  %mul68 = mul nsw i32 %add67, %shl
  %idx.ext69 = sext i32 %mul68 to i64
  %add.ptr70 = getelementptr inbounds i16, ptr %add.ptr64, i64 %idx.ext69
  %21 = load ptr, ptr %integral_init4v, align 8
  tail call void %21(ptr noundef nonnull %add.ptr64, ptr noundef nonnull %add.ptr70, i32 noundef %shl) #13
  br label %if.end86

if.else:                                          ; preds = %for.body45
  %22 = load ptr, ptr %integral_init8h, align 8
  tail call void %22(ptr noundef nonnull %add.ptr57, ptr noundef nonnull %add.ptr51, i32 noundef %shl) #13
  br i1 %cmp77, label %if.then79, label %if.end86

if.then79:                                        ; preds = %if.else
  %23 = load ptr, ptr %integral_init8v, align 8
  %add.ptr84 = getelementptr inbounds i16, ptr %add.ptr57, i64 %idx.neg63
  tail call void %23(ptr noundef nonnull %add.ptr84, i32 noundef %shl) #13
  br label %if.end86

if.end86:                                         ; preds = %if.else, %if.then79, %if.then59, %if.then73
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond163.not = icmp eq i32 %spec.select, %lftr.wideiv
  br i1 %exitcond163.not, label %cleanup, label %for.body45

cleanup:                                          ; preds = %if.end86, %if.end35, %for.cond.cleanup, %cond.end
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @pixel_avg_weight_wxh(ptr nocapture noundef writeonly %dst, i32 noundef %i_dst, ptr nocapture noundef readonly %src1, i32 noundef %i_src1, ptr nocapture noundef readonly %src2, i32 noundef %i_src2, i32 noundef %width, i32 noundef %height, i32 noundef %i_weight1) unnamed_addr #11 {
entry:
  %sub = sub nsw i32 64, %i_weight1
  %cmp327 = icmp sgt i32 %height, 0
  br i1 %cmp327, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %cmp17 = icmp eq i32 %width, 2
  %cmp41 = icmp eq i32 %width, 4
  %cmp89 = icmp eq i32 %width, 8
  %idx.ext = sext i32 %i_dst to i64
  %idx.ext181 = sext i32 %i_src1 to i64
  %idx.ext183 = sext i32 %i_src2 to i64
  br i1 %cmp17, label %for.body.us, label %for.body

for.body.us:                                      ; preds = %for.body.lr.ph, %for.body.us
  %y.0331.us = phi i32 [ %inc.us, %for.body.us ], [ 0, %for.body.lr.ph ]
  %dst.addr.0330.us = phi ptr [ %add.ptr.us, %for.body.us ], [ %dst, %for.body.lr.ph ]
  %src1.addr.0329.us = phi ptr [ %add.ptr182.us, %for.body.us ], [ %src1, %for.body.lr.ph ]
  %src2.addr.0328.us = phi ptr [ %add.ptr184.us, %for.body.us ], [ %src2, %for.body.lr.ph ]
  %0 = load i8, ptr %src1.addr.0329.us, align 1
  %conv.us = zext i8 %0 to i32
  %mul.us = mul nsw i32 %conv.us, %i_weight1
  %1 = load i8, ptr %src2.addr.0328.us, align 1
  %conv2.us = zext i8 %1 to i32
  %mul3.us = mul nsw i32 %sub, %conv2.us
  %add.us = add i32 %mul.us, 32
  %add4.us = add i32 %add.us, %mul3.us
  %shr.us = ashr i32 %add4.us, 6
  %tobool.not.i.us = icmp ult i32 %shr.us, 256
  %2 = icmp sgt i32 %shr.us, 0
  %shr.i.us = sext i1 %2 to i32
  %cond.i.us = select i1 %tobool.not.i.us, i32 %shr.us, i32 %shr.i.us
  %conv.i.us = trunc i32 %cond.i.us to i8
  store i8 %conv.i.us, ptr %dst.addr.0330.us, align 1
  %arrayidx6.us = getelementptr inbounds i8, ptr %src1.addr.0329.us, i64 1
  %3 = load i8, ptr %arrayidx6.us, align 1
  %conv7.us = zext i8 %3 to i32
  %mul8.us = mul nsw i32 %conv7.us, %i_weight1
  %arrayidx9.us = getelementptr inbounds i8, ptr %src2.addr.0328.us, i64 1
  %4 = load i8, ptr %arrayidx9.us, align 1
  %conv10.us = zext i8 %4 to i32
  %mul11.us = mul nsw i32 %sub, %conv10.us
  %add12.us = add i32 %mul8.us, 32
  %add13.us = add i32 %add12.us, %mul11.us
  %shr14.us = ashr i32 %add13.us, 6
  %tobool.not.i267.us = icmp ult i32 %shr14.us, 256
  %5 = icmp sgt i32 %shr14.us, 0
  %shr.i268.us = sext i1 %5 to i32
  %cond.i269.us = select i1 %tobool.not.i267.us, i32 %shr14.us, i32 %shr.i268.us
  %conv.i270.us = trunc i32 %cond.i269.us to i8
  %arrayidx16.us = getelementptr inbounds i8, ptr %dst.addr.0330.us, i64 1
  store i8 %conv.i270.us, ptr %arrayidx16.us, align 1
  %inc.us = add nuw nsw i32 %y.0331.us, 1
  %add.ptr.us = getelementptr inbounds i8, ptr %dst.addr.0330.us, i64 %idx.ext
  %add.ptr182.us = getelementptr inbounds i8, ptr %src1.addr.0329.us, i64 %idx.ext181
  %add.ptr184.us = getelementptr inbounds i8, ptr %src2.addr.0328.us, i64 %idx.ext183
  %exitcond333.not = icmp eq i32 %inc.us, %height
  br i1 %exitcond333.not, label %for.cond.cleanup, label %for.body.us

for.cond.cleanup:                                 ; preds = %for.inc, %for.body.us, %entry
  ret void

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %y.0331 = phi i32 [ %inc, %for.inc ], [ 0, %for.body.lr.ph ]
  %dst.addr.0330 = phi ptr [ %add.ptr, %for.inc ], [ %dst, %for.body.lr.ph ]
  %src1.addr.0329 = phi ptr [ %add.ptr182, %for.inc ], [ %src1, %for.body.lr.ph ]
  %src2.addr.0328 = phi ptr [ %add.ptr184, %for.inc ], [ %src2, %for.body.lr.ph ]
  %6 = load i8, ptr %src1.addr.0329, align 1
  %conv = zext i8 %6 to i32
  %mul = mul nsw i32 %conv, %i_weight1
  %7 = load i8, ptr %src2.addr.0328, align 1
  %conv2 = zext i8 %7 to i32
  %mul3 = mul nsw i32 %sub, %conv2
  %add = add i32 %mul, 32
  %add4 = add i32 %add, %mul3
  %shr = ashr i32 %add4, 6
  %tobool.not.i = icmp ult i32 %shr, 256
  %8 = icmp sgt i32 %shr, 0
  %shr.i = sext i1 %8 to i32
  %cond.i = select i1 %tobool.not.i, i32 %shr, i32 %shr.i
  %conv.i = trunc i32 %cond.i to i8
  store i8 %conv.i, ptr %dst.addr.0330, align 1
  %arrayidx6 = getelementptr inbounds i8, ptr %src1.addr.0329, i64 1
  %9 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %9 to i32
  %mul8 = mul nsw i32 %conv7, %i_weight1
  %arrayidx9 = getelementptr inbounds i8, ptr %src2.addr.0328, i64 1
  %10 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %10 to i32
  %mul11 = mul nsw i32 %sub, %conv10
  %add12 = add i32 %mul8, 32
  %add13 = add i32 %add12, %mul11
  %shr14 = ashr i32 %add13, 6
  %tobool.not.i267 = icmp ult i32 %shr14, 256
  %11 = icmp sgt i32 %shr14, 0
  %shr.i268 = sext i1 %11 to i32
  %cond.i269 = select i1 %tobool.not.i267, i32 %shr14, i32 %shr.i268
  %conv.i270 = trunc i32 %cond.i269 to i8
  %arrayidx16 = getelementptr inbounds i8, ptr %dst.addr.0330, i64 1
  store i8 %conv.i270, ptr %arrayidx16, align 1
  %arrayidx19 = getelementptr inbounds i8, ptr %src1.addr.0329, i64 2
  %12 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %12 to i32
  %mul21 = mul nsw i32 %conv20, %i_weight1
  %arrayidx22 = getelementptr inbounds i8, ptr %src2.addr.0328, i64 2
  %13 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %13 to i32
  %mul24 = mul nsw i32 %sub, %conv23
  %add25 = add i32 %mul21, 32
  %add26 = add i32 %add25, %mul24
  %shr27 = ashr i32 %add26, 6
  %tobool.not.i271 = icmp ult i32 %shr27, 256
  %14 = icmp sgt i32 %shr27, 0
  %shr.i272 = sext i1 %14 to i32
  %cond.i273 = select i1 %tobool.not.i271, i32 %shr27, i32 %shr.i272
  %conv.i274 = trunc i32 %cond.i273 to i8
  %arrayidx29 = getelementptr inbounds i8, ptr %dst.addr.0330, i64 2
  store i8 %conv.i274, ptr %arrayidx29, align 1
  %arrayidx30 = getelementptr inbounds i8, ptr %src1.addr.0329, i64 3
  %15 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %15 to i32
  %mul32 = mul nsw i32 %conv31, %i_weight1
  %arrayidx33 = getelementptr inbounds i8, ptr %src2.addr.0328, i64 3
  %16 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %16 to i32
  %mul35 = mul nsw i32 %sub, %conv34
  %add36 = add i32 %mul32, 32
  %add37 = add i32 %add36, %mul35
  %shr38 = ashr i32 %add37, 6
  %tobool.not.i275 = icmp ult i32 %shr38, 256
  %17 = icmp sgt i32 %shr38, 0
  %shr.i276 = sext i1 %17 to i32
  %cond.i277 = select i1 %tobool.not.i275, i32 %shr38, i32 %shr.i276
  %conv.i278 = trunc i32 %cond.i277 to i8
  %arrayidx40 = getelementptr inbounds i8, ptr %dst.addr.0330, i64 3
  store i8 %conv.i278, ptr %arrayidx40, align 1
  br i1 %cmp41, label %for.inc, label %if.end44

if.end44:                                         ; preds = %for.body
  %arrayidx45 = getelementptr inbounds i8, ptr %src1.addr.0329, i64 4
  %18 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %18 to i32
  %mul47 = mul nsw i32 %conv46, %i_weight1
  %arrayidx48 = getelementptr inbounds i8, ptr %src2.addr.0328, i64 4
  %19 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %19 to i32
  %mul50 = mul nsw i32 %sub, %conv49
  %add51 = add i32 %mul47, 32
  %add52 = add i32 %add51, %mul50
  %shr53 = ashr i32 %add52, 6
  %tobool.not.i279 = icmp ult i32 %shr53, 256
  %20 = icmp sgt i32 %shr53, 0
  %shr.i280 = sext i1 %20 to i32
  %cond.i281 = select i1 %tobool.not.i279, i32 %shr53, i32 %shr.i280
  %conv.i282 = trunc i32 %cond.i281 to i8
  %arrayidx55 = getelementptr inbounds i8, ptr %dst.addr.0330, i64 4
  store i8 %conv.i282, ptr %arrayidx55, align 1
  %arrayidx56 = getelementptr inbounds i8, ptr %src1.addr.0329, i64 5
  %21 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %21 to i32
  %mul58 = mul nsw i32 %conv57, %i_weight1
  %arrayidx59 = getelementptr inbounds i8, ptr %src2.addr.0328, i64 5
  %22 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %22 to i32
  %mul61 = mul nsw i32 %sub, %conv60
  %add62 = add i32 %mul58, 32
  %add63 = add i32 %add62, %mul61
  %shr64 = ashr i32 %add63, 6
  %tobool.not.i283 = icmp ult i32 %shr64, 256
  %23 = icmp sgt i32 %shr64, 0
  %shr.i284 = sext i1 %23 to i32
  %cond.i285 = select i1 %tobool.not.i283, i32 %shr64, i32 %shr.i284
  %conv.i286 = trunc i32 %cond.i285 to i8
  %arrayidx66 = getelementptr inbounds i8, ptr %dst.addr.0330, i64 5
  store i8 %conv.i286, ptr %arrayidx66, align 1
  %arrayidx67 = getelementptr inbounds i8, ptr %src1.addr.0329, i64 6
  %24 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %24 to i32
  %mul69 = mul nsw i32 %conv68, %i_weight1
  %arrayidx70 = getelementptr inbounds i8, ptr %src2.addr.0328, i64 6
  %25 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %25 to i32
  %mul72 = mul nsw i32 %sub, %conv71
  %add73 = add i32 %mul69, 32
  %add74 = add i32 %add73, %mul72
  %shr75 = ashr i32 %add74, 6
  %tobool.not.i287 = icmp ult i32 %shr75, 256
  %26 = icmp sgt i32 %shr75, 0
  %shr.i288 = sext i1 %26 to i32
  %cond.i289 = select i1 %tobool.not.i287, i32 %shr75, i32 %shr.i288
  %conv.i290 = trunc i32 %cond.i289 to i8
  %arrayidx77 = getelementptr inbounds i8, ptr %dst.addr.0330, i64 6
  store i8 %conv.i290, ptr %arrayidx77, align 1
  %arrayidx78 = getelementptr inbounds i8, ptr %src1.addr.0329, i64 7
  %27 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %27 to i32
  %mul80 = mul nsw i32 %conv79, %i_weight1
  %arrayidx81 = getelementptr inbounds i8, ptr %src2.addr.0328, i64 7
  %28 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %28 to i32
  %mul83 = mul nsw i32 %sub, %conv82
  %add84 = add i32 %mul80, 32
  %add85 = add i32 %add84, %mul83
  %shr86 = ashr i32 %add85, 6
  %tobool.not.i291 = icmp ult i32 %shr86, 256
  %29 = icmp sgt i32 %shr86, 0
  %shr.i292 = sext i1 %29 to i32
  %cond.i293 = select i1 %tobool.not.i291, i32 %shr86, i32 %shr.i292
  %conv.i294 = trunc i32 %cond.i293 to i8
  %arrayidx88 = getelementptr inbounds i8, ptr %dst.addr.0330, i64 7
  store i8 %conv.i294, ptr %arrayidx88, align 1
  br i1 %cmp89, label %for.inc, label %if.end92

if.end92:                                         ; preds = %if.end44
  %arrayidx93 = getelementptr inbounds i8, ptr %src1.addr.0329, i64 8
  %30 = load i8, ptr %arrayidx93, align 1
  %conv94 = zext i8 %30 to i32
  %mul95 = mul nsw i32 %conv94, %i_weight1
  %arrayidx96 = getelementptr inbounds i8, ptr %src2.addr.0328, i64 8
  %31 = load i8, ptr %arrayidx96, align 1
  %conv97 = zext i8 %31 to i32
  %mul98 = mul nsw i32 %sub, %conv97
  %add99 = add i32 %mul95, 32
  %add100 = add i32 %add99, %mul98
  %shr101 = ashr i32 %add100, 6
  %tobool.not.i295 = icmp ult i32 %shr101, 256
  %32 = icmp sgt i32 %shr101, 0
  %shr.i296 = sext i1 %32 to i32
  %cond.i297 = select i1 %tobool.not.i295, i32 %shr101, i32 %shr.i296
  %conv.i298 = trunc i32 %cond.i297 to i8
  %arrayidx103 = getelementptr inbounds i8, ptr %dst.addr.0330, i64 8
  store i8 %conv.i298, ptr %arrayidx103, align 1
  %arrayidx104 = getelementptr inbounds i8, ptr %src1.addr.0329, i64 9
  %33 = load i8, ptr %arrayidx104, align 1
  %conv105 = zext i8 %33 to i32
  %mul106 = mul nsw i32 %conv105, %i_weight1
  %arrayidx107 = getelementptr inbounds i8, ptr %src2.addr.0328, i64 9
  %34 = load i8, ptr %arrayidx107, align 1
  %conv108 = zext i8 %34 to i32
  %mul109 = mul nsw i32 %sub, %conv108
  %add110 = add i32 %mul106, 32
  %add111 = add i32 %add110, %mul109
  %shr112 = ashr i32 %add111, 6
  %tobool.not.i299 = icmp ult i32 %shr112, 256
  %35 = icmp sgt i32 %shr112, 0
  %shr.i300 = sext i1 %35 to i32
  %cond.i301 = select i1 %tobool.not.i299, i32 %shr112, i32 %shr.i300
  %conv.i302 = trunc i32 %cond.i301 to i8
  %arrayidx114 = getelementptr inbounds i8, ptr %dst.addr.0330, i64 9
  store i8 %conv.i302, ptr %arrayidx114, align 1
  %arrayidx115 = getelementptr inbounds i8, ptr %src1.addr.0329, i64 10
  %36 = load i8, ptr %arrayidx115, align 1
  %conv116 = zext i8 %36 to i32
  %mul117 = mul nsw i32 %conv116, %i_weight1
  %arrayidx118 = getelementptr inbounds i8, ptr %src2.addr.0328, i64 10
  %37 = load i8, ptr %arrayidx118, align 1
  %conv119 = zext i8 %37 to i32
  %mul120 = mul nsw i32 %sub, %conv119
  %add121 = add i32 %mul117, 32
  %add122 = add i32 %add121, %mul120
  %shr123 = ashr i32 %add122, 6
  %tobool.not.i303 = icmp ult i32 %shr123, 256
  %38 = icmp sgt i32 %shr123, 0
  %shr.i304 = sext i1 %38 to i32
  %cond.i305 = select i1 %tobool.not.i303, i32 %shr123, i32 %shr.i304
  %conv.i306 = trunc i32 %cond.i305 to i8
  %arrayidx125 = getelementptr inbounds i8, ptr %dst.addr.0330, i64 10
  store i8 %conv.i306, ptr %arrayidx125, align 1
  %arrayidx126 = getelementptr inbounds i8, ptr %src1.addr.0329, i64 11
  %39 = load i8, ptr %arrayidx126, align 1
  %conv127 = zext i8 %39 to i32
  %mul128 = mul nsw i32 %conv127, %i_weight1
  %arrayidx129 = getelementptr inbounds i8, ptr %src2.addr.0328, i64 11
  %40 = load i8, ptr %arrayidx129, align 1
  %conv130 = zext i8 %40 to i32
  %mul131 = mul nsw i32 %sub, %conv130
  %add132 = add i32 %mul128, 32
  %add133 = add i32 %add132, %mul131
  %shr134 = ashr i32 %add133, 6
  %tobool.not.i307 = icmp ult i32 %shr134, 256
  %41 = icmp sgt i32 %shr134, 0
  %shr.i308 = sext i1 %41 to i32
  %cond.i309 = select i1 %tobool.not.i307, i32 %shr134, i32 %shr.i308
  %conv.i310 = trunc i32 %cond.i309 to i8
  %arrayidx136 = getelementptr inbounds i8, ptr %dst.addr.0330, i64 11
  store i8 %conv.i310, ptr %arrayidx136, align 1
  %arrayidx137 = getelementptr inbounds i8, ptr %src1.addr.0329, i64 12
  %42 = load i8, ptr %arrayidx137, align 1
  %conv138 = zext i8 %42 to i32
  %mul139 = mul nsw i32 %conv138, %i_weight1
  %arrayidx140 = getelementptr inbounds i8, ptr %src2.addr.0328, i64 12
  %43 = load i8, ptr %arrayidx140, align 1
  %conv141 = zext i8 %43 to i32
  %mul142 = mul nsw i32 %sub, %conv141
  %add143 = add i32 %mul139, 32
  %add144 = add i32 %add143, %mul142
  %shr145 = ashr i32 %add144, 6
  %tobool.not.i311 = icmp ult i32 %shr145, 256
  %44 = icmp sgt i32 %shr145, 0
  %shr.i312 = sext i1 %44 to i32
  %cond.i313 = select i1 %tobool.not.i311, i32 %shr145, i32 %shr.i312
  %conv.i314 = trunc i32 %cond.i313 to i8
  %arrayidx147 = getelementptr inbounds i8, ptr %dst.addr.0330, i64 12
  store i8 %conv.i314, ptr %arrayidx147, align 1
  %arrayidx148 = getelementptr inbounds i8, ptr %src1.addr.0329, i64 13
  %45 = load i8, ptr %arrayidx148, align 1
  %conv149 = zext i8 %45 to i32
  %mul150 = mul nsw i32 %conv149, %i_weight1
  %arrayidx151 = getelementptr inbounds i8, ptr %src2.addr.0328, i64 13
  %46 = load i8, ptr %arrayidx151, align 1
  %conv152 = zext i8 %46 to i32
  %mul153 = mul nsw i32 %sub, %conv152
  %add154 = add i32 %mul150, 32
  %add155 = add i32 %add154, %mul153
  %shr156 = ashr i32 %add155, 6
  %tobool.not.i315 = icmp ult i32 %shr156, 256
  %47 = icmp sgt i32 %shr156, 0
  %shr.i316 = sext i1 %47 to i32
  %cond.i317 = select i1 %tobool.not.i315, i32 %shr156, i32 %shr.i316
  %conv.i318 = trunc i32 %cond.i317 to i8
  %arrayidx158 = getelementptr inbounds i8, ptr %dst.addr.0330, i64 13
  store i8 %conv.i318, ptr %arrayidx158, align 1
  %arrayidx159 = getelementptr inbounds i8, ptr %src1.addr.0329, i64 14
  %48 = load i8, ptr %arrayidx159, align 1
  %conv160 = zext i8 %48 to i32
  %mul161 = mul nsw i32 %conv160, %i_weight1
  %arrayidx162 = getelementptr inbounds i8, ptr %src2.addr.0328, i64 14
  %49 = load i8, ptr %arrayidx162, align 1
  %conv163 = zext i8 %49 to i32
  %mul164 = mul nsw i32 %sub, %conv163
  %add165 = add i32 %mul161, 32
  %add166 = add i32 %add165, %mul164
  %shr167 = ashr i32 %add166, 6
  %tobool.not.i319 = icmp ult i32 %shr167, 256
  %50 = icmp sgt i32 %shr167, 0
  %shr.i320 = sext i1 %50 to i32
  %cond.i321 = select i1 %tobool.not.i319, i32 %shr167, i32 %shr.i320
  %conv.i322 = trunc i32 %cond.i321 to i8
  %arrayidx169 = getelementptr inbounds i8, ptr %dst.addr.0330, i64 14
  store i8 %conv.i322, ptr %arrayidx169, align 1
  %arrayidx170 = getelementptr inbounds i8, ptr %src1.addr.0329, i64 15
  %51 = load i8, ptr %arrayidx170, align 1
  %conv171 = zext i8 %51 to i32
  %mul172 = mul nsw i32 %conv171, %i_weight1
  %arrayidx173 = getelementptr inbounds i8, ptr %src2.addr.0328, i64 15
  %52 = load i8, ptr %arrayidx173, align 1
  %conv174 = zext i8 %52 to i32
  %mul175 = mul nsw i32 %sub, %conv174
  %add176 = add i32 %mul172, 32
  %add177 = add i32 %add176, %mul175
  %shr178 = ashr i32 %add177, 6
  %tobool.not.i323 = icmp ult i32 %shr178, 256
  %53 = icmp sgt i32 %shr178, 0
  %shr.i324 = sext i1 %53 to i32
  %cond.i325 = select i1 %tobool.not.i323, i32 %shr178, i32 %shr.i324
  %conv.i326 = trunc i32 %cond.i325 to i8
  %arrayidx180 = getelementptr inbounds i8, ptr %dst.addr.0330, i64 15
  store i8 %conv.i326, ptr %arrayidx180, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end44, %for.body, %if.end92
  %inc = add nuw nsw i32 %y.0331, 1
  %add.ptr = getelementptr inbounds i8, ptr %dst.addr.0330, i64 %idx.ext
  %add.ptr182 = getelementptr inbounds i8, ptr %src1.addr.0329, i64 %idx.ext181
  %add.ptr184 = getelementptr inbounds i8, ptr %src2.addr.0328, i64 %idx.ext183
  %exitcond.not = icmp eq i32 %inc, %height
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_weight_w2(ptr nocapture noundef writeonly %dst, i32 noundef %i_dst_stride, ptr nocapture noundef readonly %src, i32 noundef %i_src_stride, ptr nocapture noundef readonly %weight, i32 noundef %height) #0 {
entry:
  %i_denom = getelementptr inbounds i8, ptr %weight, i64 32
  %0 = load i32, ptr %i_denom, align 16
  %cmp = icmp sgt i32 %0, 0
  %cmp182 = icmp sgt i32 %height, 0
  br i1 %cmp, label %for.cond.preheader, label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %entry
  br i1 %cmp182, label %for.cond23.preheader.lr.ph, label %if.end

for.cond23.preheader.lr.ph:                       ; preds = %for.cond17.preheader
  %i_scale31 = getelementptr inbounds i8, ptr %weight, i64 36
  %i_offset33 = getelementptr inbounds i8, ptr %weight, i64 40
  %idx.ext43 = sext i32 %i_dst_stride to i64
  %idx.ext45 = sext i32 %i_src_stride to i64
  br label %for.cond23.preheader

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp182, label %for.cond2.preheader.lr.ph, label %if.end

for.cond2.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %i_scale = getelementptr inbounds i8, ptr %weight, i64 36
  %i_offset = getelementptr inbounds i8, ptr %weight, i64 40
  %idx.ext = sext i32 %i_dst_stride to i64
  %idx.ext13 = sext i32 %i_src_stride to i64
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond2.preheader.lr.ph, %for.cond2.preheader
  %y.085 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %inc12, %for.cond2.preheader ]
  %dst.addr.084 = phi ptr [ %dst, %for.cond2.preheader.lr.ph ], [ %add.ptr, %for.cond2.preheader ]
  %src.addr.083 = phi ptr [ %src, %for.cond2.preheader.lr.ph ], [ %add.ptr14, %for.cond2.preheader ]
  %1 = load i8, ptr %src.addr.083, align 1
  %conv = zext i8 %1 to i32
  %2 = load i32, ptr %i_scale, align 4
  %mul = mul nsw i32 %2, %conv
  %3 = load i32, ptr %i_denom, align 16
  %sub = add nsw i32 %3, -1
  %shl = shl nuw i32 1, %sub
  %add = add nsw i32 %shl, %mul
  %shr = ashr i32 %add, %3
  %4 = load i32, ptr %i_offset, align 8
  %add8 = add nsw i32 %shr, %4
  %tobool.not.i = icmp ult i32 %add8, 256
  %5 = icmp sgt i32 %add8, 0
  %shr.i = sext i1 %5 to i32
  %cond.i = select i1 %tobool.not.i, i32 %add8, i32 %shr.i
  %conv.i = trunc i32 %cond.i to i8
  store i8 %conv.i, ptr %dst.addr.084, align 1
  %arrayidx.1 = getelementptr inbounds i8, ptr %src.addr.083, i64 1
  %6 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %6 to i32
  %7 = load i32, ptr %i_scale, align 4
  %mul.1 = mul nsw i32 %7, %conv.1
  %8 = load i32, ptr %i_denom, align 16
  %sub.1 = add nsw i32 %8, -1
  %shl.1 = shl nuw i32 1, %sub.1
  %add.1 = add nsw i32 %shl.1, %mul.1
  %shr.1 = ashr i32 %add.1, %8
  %9 = load i32, ptr %i_offset, align 8
  %add8.1 = add nsw i32 %shr.1, %9
  %tobool.not.i.1 = icmp ult i32 %add8.1, 256
  %10 = icmp sgt i32 %add8.1, 0
  %shr.i.1 = sext i1 %10 to i32
  %cond.i.1 = select i1 %tobool.not.i.1, i32 %add8.1, i32 %shr.i.1
  %conv.i.1 = trunc i32 %cond.i.1 to i8
  %arrayidx10.1 = getelementptr inbounds i8, ptr %dst.addr.084, i64 1
  store i8 %conv.i.1, ptr %arrayidx10.1, align 1
  %inc12 = add nuw nsw i32 %y.085, 1
  %add.ptr = getelementptr inbounds i8, ptr %dst.addr.084, i64 %idx.ext
  %add.ptr14 = getelementptr inbounds i8, ptr %src.addr.083, i64 %idx.ext13
  %exitcond89.not = icmp eq i32 %inc12, %height
  br i1 %exitcond89.not, label %if.end, label %for.cond2.preheader

for.cond23.preheader:                             ; preds = %for.cond23.preheader.lr.ph, %for.cond23.preheader
  %y16.080 = phi i32 [ 0, %for.cond23.preheader.lr.ph ], [ %inc42, %for.cond23.preheader ]
  %dst.addr.179 = phi ptr [ %dst, %for.cond23.preheader.lr.ph ], [ %add.ptr44, %for.cond23.preheader ]
  %src.addr.178 = phi ptr [ %src, %for.cond23.preheader.lr.ph ], [ %add.ptr46, %for.cond23.preheader ]
  %11 = load i8, ptr %src.addr.178, align 1
  %conv30 = zext i8 %11 to i32
  %12 = load i32, ptr %i_scale31, align 4
  %mul32 = mul nsw i32 %12, %conv30
  %13 = load i32, ptr %i_offset33, align 8
  %add34 = add nsw i32 %mul32, %13
  %tobool.not.i71 = icmp ult i32 %add34, 256
  %14 = icmp sgt i32 %add34, 0
  %shr.i72 = sext i1 %14 to i32
  %cond.i73 = select i1 %tobool.not.i71, i32 %add34, i32 %shr.i72
  %conv.i74 = trunc i32 %cond.i73 to i8
  store i8 %conv.i74, ptr %dst.addr.179, align 1
  %arrayidx29.1 = getelementptr inbounds i8, ptr %src.addr.178, i64 1
  %15 = load i8, ptr %arrayidx29.1, align 1
  %conv30.1 = zext i8 %15 to i32
  %16 = load i32, ptr %i_scale31, align 4
  %mul32.1 = mul nsw i32 %16, %conv30.1
  %17 = load i32, ptr %i_offset33, align 8
  %add34.1 = add nsw i32 %mul32.1, %17
  %tobool.not.i71.1 = icmp ult i32 %add34.1, 256
  %18 = icmp sgt i32 %add34.1, 0
  %shr.i72.1 = sext i1 %18 to i32
  %cond.i73.1 = select i1 %tobool.not.i71.1, i32 %add34.1, i32 %shr.i72.1
  %conv.i74.1 = trunc i32 %cond.i73.1 to i8
  %arrayidx37.1 = getelementptr inbounds i8, ptr %dst.addr.179, i64 1
  store i8 %conv.i74.1, ptr %arrayidx37.1, align 1
  %inc42 = add nuw nsw i32 %y16.080, 1
  %add.ptr44 = getelementptr inbounds i8, ptr %dst.addr.179, i64 %idx.ext43
  %add.ptr46 = getelementptr inbounds i8, ptr %src.addr.178, i64 %idx.ext45
  %exitcond.not = icmp eq i32 %inc42, %height
  br i1 %exitcond.not, label %if.end, label %for.cond23.preheader

if.end:                                           ; preds = %for.cond23.preheader, %for.cond2.preheader, %for.cond17.preheader, %for.cond.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_weight_w4(ptr nocapture noundef writeonly %dst, i32 noundef %i_dst_stride, ptr nocapture noundef readonly %src, i32 noundef %i_src_stride, ptr nocapture noundef readonly %weight, i32 noundef %height) #0 {
entry:
  %i_denom = getelementptr inbounds i8, ptr %weight, i64 32
  %0 = load i32, ptr %i_denom, align 16
  %cmp = icmp sgt i32 %0, 0
  %cmp182 = icmp sgt i32 %height, 0
  br i1 %cmp, label %for.cond.preheader, label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %entry
  br i1 %cmp182, label %for.cond23.preheader.lr.ph, label %if.end

for.cond23.preheader.lr.ph:                       ; preds = %for.cond17.preheader
  %i_scale31 = getelementptr inbounds i8, ptr %weight, i64 36
  %i_offset33 = getelementptr inbounds i8, ptr %weight, i64 40
  %idx.ext43 = sext i32 %i_dst_stride to i64
  %idx.ext45 = sext i32 %i_src_stride to i64
  br label %for.cond23.preheader

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp182, label %for.cond2.preheader.lr.ph, label %if.end

for.cond2.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %i_scale = getelementptr inbounds i8, ptr %weight, i64 36
  %i_offset = getelementptr inbounds i8, ptr %weight, i64 40
  %idx.ext = sext i32 %i_dst_stride to i64
  %idx.ext13 = sext i32 %i_src_stride to i64
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond2.preheader.lr.ph, %for.cond2.preheader
  %y.085 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %inc12, %for.cond2.preheader ]
  %dst.addr.084 = phi ptr [ %dst, %for.cond2.preheader.lr.ph ], [ %add.ptr, %for.cond2.preheader ]
  %src.addr.083 = phi ptr [ %src, %for.cond2.preheader.lr.ph ], [ %add.ptr14, %for.cond2.preheader ]
  %1 = load i8, ptr %src.addr.083, align 1
  %conv = zext i8 %1 to i32
  %2 = load i32, ptr %i_scale, align 4
  %mul = mul nsw i32 %2, %conv
  %3 = load i32, ptr %i_denom, align 16
  %sub = add nsw i32 %3, -1
  %shl = shl nuw i32 1, %sub
  %add = add nsw i32 %shl, %mul
  %shr = ashr i32 %add, %3
  %4 = load i32, ptr %i_offset, align 8
  %add8 = add nsw i32 %shr, %4
  %tobool.not.i = icmp ult i32 %add8, 256
  %5 = icmp sgt i32 %add8, 0
  %shr.i = sext i1 %5 to i32
  %cond.i = select i1 %tobool.not.i, i32 %add8, i32 %shr.i
  %conv.i = trunc i32 %cond.i to i8
  store i8 %conv.i, ptr %dst.addr.084, align 1
  %arrayidx.1 = getelementptr inbounds i8, ptr %src.addr.083, i64 1
  %6 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %6 to i32
  %7 = load i32, ptr %i_scale, align 4
  %mul.1 = mul nsw i32 %7, %conv.1
  %8 = load i32, ptr %i_denom, align 16
  %sub.1 = add nsw i32 %8, -1
  %shl.1 = shl nuw i32 1, %sub.1
  %add.1 = add nsw i32 %shl.1, %mul.1
  %shr.1 = ashr i32 %add.1, %8
  %9 = load i32, ptr %i_offset, align 8
  %add8.1 = add nsw i32 %shr.1, %9
  %tobool.not.i.1 = icmp ult i32 %add8.1, 256
  %10 = icmp sgt i32 %add8.1, 0
  %shr.i.1 = sext i1 %10 to i32
  %cond.i.1 = select i1 %tobool.not.i.1, i32 %add8.1, i32 %shr.i.1
  %conv.i.1 = trunc i32 %cond.i.1 to i8
  %arrayidx10.1 = getelementptr inbounds i8, ptr %dst.addr.084, i64 1
  store i8 %conv.i.1, ptr %arrayidx10.1, align 1
  %arrayidx.2 = getelementptr inbounds i8, ptr %src.addr.083, i64 2
  %11 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %11 to i32
  %12 = load i32, ptr %i_scale, align 4
  %mul.2 = mul nsw i32 %12, %conv.2
  %13 = load i32, ptr %i_denom, align 16
  %sub.2 = add nsw i32 %13, -1
  %shl.2 = shl nuw i32 1, %sub.2
  %add.2 = add nsw i32 %shl.2, %mul.2
  %shr.2 = ashr i32 %add.2, %13
  %14 = load i32, ptr %i_offset, align 8
  %add8.2 = add nsw i32 %shr.2, %14
  %tobool.not.i.2 = icmp ult i32 %add8.2, 256
  %15 = icmp sgt i32 %add8.2, 0
  %shr.i.2 = sext i1 %15 to i32
  %cond.i.2 = select i1 %tobool.not.i.2, i32 %add8.2, i32 %shr.i.2
  %conv.i.2 = trunc i32 %cond.i.2 to i8
  %arrayidx10.2 = getelementptr inbounds i8, ptr %dst.addr.084, i64 2
  store i8 %conv.i.2, ptr %arrayidx10.2, align 1
  %arrayidx.3 = getelementptr inbounds i8, ptr %src.addr.083, i64 3
  %16 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %16 to i32
  %17 = load i32, ptr %i_scale, align 4
  %mul.3 = mul nsw i32 %17, %conv.3
  %18 = load i32, ptr %i_denom, align 16
  %sub.3 = add nsw i32 %18, -1
  %shl.3 = shl nuw i32 1, %sub.3
  %add.3 = add nsw i32 %shl.3, %mul.3
  %shr.3 = ashr i32 %add.3, %18
  %19 = load i32, ptr %i_offset, align 8
  %add8.3 = add nsw i32 %shr.3, %19
  %tobool.not.i.3 = icmp ult i32 %add8.3, 256
  %20 = icmp sgt i32 %add8.3, 0
  %shr.i.3 = sext i1 %20 to i32
  %cond.i.3 = select i1 %tobool.not.i.3, i32 %add8.3, i32 %shr.i.3
  %conv.i.3 = trunc i32 %cond.i.3 to i8
  %arrayidx10.3 = getelementptr inbounds i8, ptr %dst.addr.084, i64 3
  store i8 %conv.i.3, ptr %arrayidx10.3, align 1
  %inc12 = add nuw nsw i32 %y.085, 1
  %add.ptr = getelementptr inbounds i8, ptr %dst.addr.084, i64 %idx.ext
  %add.ptr14 = getelementptr inbounds i8, ptr %src.addr.083, i64 %idx.ext13
  %exitcond90.not = icmp eq i32 %inc12, %height
  br i1 %exitcond90.not, label %if.end, label %for.cond2.preheader

for.cond23.preheader:                             ; preds = %for.cond23.preheader.lr.ph, %for.cond23.preheader
  %y16.080 = phi i32 [ 0, %for.cond23.preheader.lr.ph ], [ %inc42, %for.cond23.preheader ]
  %dst.addr.179 = phi ptr [ %dst, %for.cond23.preheader.lr.ph ], [ %add.ptr44, %for.cond23.preheader ]
  %src.addr.178 = phi ptr [ %src, %for.cond23.preheader.lr.ph ], [ %add.ptr46, %for.cond23.preheader ]
  %21 = load i8, ptr %src.addr.178, align 1
  %conv30 = zext i8 %21 to i32
  %22 = load i32, ptr %i_scale31, align 4
  %mul32 = mul nsw i32 %22, %conv30
  %23 = load i32, ptr %i_offset33, align 8
  %add34 = add nsw i32 %mul32, %23
  %tobool.not.i71 = icmp ult i32 %add34, 256
  %24 = icmp sgt i32 %add34, 0
  %shr.i72 = sext i1 %24 to i32
  %cond.i73 = select i1 %tobool.not.i71, i32 %add34, i32 %shr.i72
  %conv.i74 = trunc i32 %cond.i73 to i8
  store i8 %conv.i74, ptr %dst.addr.179, align 1
  %arrayidx29.1 = getelementptr inbounds i8, ptr %src.addr.178, i64 1
  %25 = load i8, ptr %arrayidx29.1, align 1
  %conv30.1 = zext i8 %25 to i32
  %26 = load i32, ptr %i_scale31, align 4
  %mul32.1 = mul nsw i32 %26, %conv30.1
  %27 = load i32, ptr %i_offset33, align 8
  %add34.1 = add nsw i32 %mul32.1, %27
  %tobool.not.i71.1 = icmp ult i32 %add34.1, 256
  %28 = icmp sgt i32 %add34.1, 0
  %shr.i72.1 = sext i1 %28 to i32
  %cond.i73.1 = select i1 %tobool.not.i71.1, i32 %add34.1, i32 %shr.i72.1
  %conv.i74.1 = trunc i32 %cond.i73.1 to i8
  %arrayidx37.1 = getelementptr inbounds i8, ptr %dst.addr.179, i64 1
  store i8 %conv.i74.1, ptr %arrayidx37.1, align 1
  %arrayidx29.2 = getelementptr inbounds i8, ptr %src.addr.178, i64 2
  %29 = load i8, ptr %arrayidx29.2, align 1
  %conv30.2 = zext i8 %29 to i32
  %30 = load i32, ptr %i_scale31, align 4
  %mul32.2 = mul nsw i32 %30, %conv30.2
  %31 = load i32, ptr %i_offset33, align 8
  %add34.2 = add nsw i32 %mul32.2, %31
  %tobool.not.i71.2 = icmp ult i32 %add34.2, 256
  %32 = icmp sgt i32 %add34.2, 0
  %shr.i72.2 = sext i1 %32 to i32
  %cond.i73.2 = select i1 %tobool.not.i71.2, i32 %add34.2, i32 %shr.i72.2
  %conv.i74.2 = trunc i32 %cond.i73.2 to i8
  %arrayidx37.2 = getelementptr inbounds i8, ptr %dst.addr.179, i64 2
  store i8 %conv.i74.2, ptr %arrayidx37.2, align 1
  %arrayidx29.3 = getelementptr inbounds i8, ptr %src.addr.178, i64 3
  %33 = load i8, ptr %arrayidx29.3, align 1
  %conv30.3 = zext i8 %33 to i32
  %34 = load i32, ptr %i_scale31, align 4
  %mul32.3 = mul nsw i32 %34, %conv30.3
  %35 = load i32, ptr %i_offset33, align 8
  %add34.3 = add nsw i32 %mul32.3, %35
  %tobool.not.i71.3 = icmp ult i32 %add34.3, 256
  %36 = icmp sgt i32 %add34.3, 0
  %shr.i72.3 = sext i1 %36 to i32
  %cond.i73.3 = select i1 %tobool.not.i71.3, i32 %add34.3, i32 %shr.i72.3
  %conv.i74.3 = trunc i32 %cond.i73.3 to i8
  %arrayidx37.3 = getelementptr inbounds i8, ptr %dst.addr.179, i64 3
  store i8 %conv.i74.3, ptr %arrayidx37.3, align 1
  %inc42 = add nuw nsw i32 %y16.080, 1
  %add.ptr44 = getelementptr inbounds i8, ptr %dst.addr.179, i64 %idx.ext43
  %add.ptr46 = getelementptr inbounds i8, ptr %src.addr.178, i64 %idx.ext45
  %exitcond.not = icmp eq i32 %inc42, %height
  br i1 %exitcond.not, label %if.end, label %for.cond23.preheader

if.end:                                           ; preds = %for.cond23.preheader, %for.cond2.preheader, %for.cond17.preheader, %for.cond.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_weight_w8(ptr nocapture noundef writeonly %dst, i32 noundef %i_dst_stride, ptr nocapture noundef readonly %src, i32 noundef %i_src_stride, ptr nocapture noundef readonly %weight, i32 noundef %height) #0 {
entry:
  %i_denom = getelementptr inbounds i8, ptr %weight, i64 32
  %0 = load i32, ptr %i_denom, align 16
  %cmp = icmp sgt i32 %0, 0
  %cmp182 = icmp sgt i32 %height, 0
  br i1 %cmp, label %for.cond.preheader, label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %entry
  br i1 %cmp182, label %for.cond23.preheader.lr.ph, label %if.end

for.cond23.preheader.lr.ph:                       ; preds = %for.cond17.preheader
  %i_scale31 = getelementptr inbounds i8, ptr %weight, i64 36
  %i_offset33 = getelementptr inbounds i8, ptr %weight, i64 40
  %idx.ext43 = sext i32 %i_dst_stride to i64
  %idx.ext45 = sext i32 %i_src_stride to i64
  br label %for.cond23.preheader

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp182, label %for.cond2.preheader.lr.ph, label %if.end

for.cond2.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %i_scale = getelementptr inbounds i8, ptr %weight, i64 36
  %i_offset = getelementptr inbounds i8, ptr %weight, i64 40
  %idx.ext = sext i32 %i_dst_stride to i64
  %idx.ext13 = sext i32 %i_src_stride to i64
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond2.preheader.lr.ph, %for.cond2.preheader
  %y.085 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %inc12, %for.cond2.preheader ]
  %dst.addr.084 = phi ptr [ %dst, %for.cond2.preheader.lr.ph ], [ %add.ptr, %for.cond2.preheader ]
  %src.addr.083 = phi ptr [ %src, %for.cond2.preheader.lr.ph ], [ %add.ptr14, %for.cond2.preheader ]
  %1 = load i8, ptr %src.addr.083, align 1
  %conv = zext i8 %1 to i32
  %2 = load i32, ptr %i_scale, align 4
  %mul = mul nsw i32 %2, %conv
  %3 = load i32, ptr %i_denom, align 16
  %sub = add nsw i32 %3, -1
  %shl = shl nuw i32 1, %sub
  %add = add nsw i32 %shl, %mul
  %shr = ashr i32 %add, %3
  %4 = load i32, ptr %i_offset, align 8
  %add8 = add nsw i32 %shr, %4
  %tobool.not.i = icmp ult i32 %add8, 256
  %5 = icmp sgt i32 %add8, 0
  %shr.i = sext i1 %5 to i32
  %cond.i = select i1 %tobool.not.i, i32 %add8, i32 %shr.i
  %conv.i = trunc i32 %cond.i to i8
  store i8 %conv.i, ptr %dst.addr.084, align 1
  %arrayidx.1 = getelementptr inbounds i8, ptr %src.addr.083, i64 1
  %6 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %6 to i32
  %7 = load i32, ptr %i_scale, align 4
  %mul.1 = mul nsw i32 %7, %conv.1
  %8 = load i32, ptr %i_denom, align 16
  %sub.1 = add nsw i32 %8, -1
  %shl.1 = shl nuw i32 1, %sub.1
  %add.1 = add nsw i32 %shl.1, %mul.1
  %shr.1 = ashr i32 %add.1, %8
  %9 = load i32, ptr %i_offset, align 8
  %add8.1 = add nsw i32 %shr.1, %9
  %tobool.not.i.1 = icmp ult i32 %add8.1, 256
  %10 = icmp sgt i32 %add8.1, 0
  %shr.i.1 = sext i1 %10 to i32
  %cond.i.1 = select i1 %tobool.not.i.1, i32 %add8.1, i32 %shr.i.1
  %conv.i.1 = trunc i32 %cond.i.1 to i8
  %arrayidx10.1 = getelementptr inbounds i8, ptr %dst.addr.084, i64 1
  store i8 %conv.i.1, ptr %arrayidx10.1, align 1
  %arrayidx.2 = getelementptr inbounds i8, ptr %src.addr.083, i64 2
  %11 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %11 to i32
  %12 = load i32, ptr %i_scale, align 4
  %mul.2 = mul nsw i32 %12, %conv.2
  %13 = load i32, ptr %i_denom, align 16
  %sub.2 = add nsw i32 %13, -1
  %shl.2 = shl nuw i32 1, %sub.2
  %add.2 = add nsw i32 %shl.2, %mul.2
  %shr.2 = ashr i32 %add.2, %13
  %14 = load i32, ptr %i_offset, align 8
  %add8.2 = add nsw i32 %shr.2, %14
  %tobool.not.i.2 = icmp ult i32 %add8.2, 256
  %15 = icmp sgt i32 %add8.2, 0
  %shr.i.2 = sext i1 %15 to i32
  %cond.i.2 = select i1 %tobool.not.i.2, i32 %add8.2, i32 %shr.i.2
  %conv.i.2 = trunc i32 %cond.i.2 to i8
  %arrayidx10.2 = getelementptr inbounds i8, ptr %dst.addr.084, i64 2
  store i8 %conv.i.2, ptr %arrayidx10.2, align 1
  %arrayidx.3 = getelementptr inbounds i8, ptr %src.addr.083, i64 3
  %16 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %16 to i32
  %17 = load i32, ptr %i_scale, align 4
  %mul.3 = mul nsw i32 %17, %conv.3
  %18 = load i32, ptr %i_denom, align 16
  %sub.3 = add nsw i32 %18, -1
  %shl.3 = shl nuw i32 1, %sub.3
  %add.3 = add nsw i32 %shl.3, %mul.3
  %shr.3 = ashr i32 %add.3, %18
  %19 = load i32, ptr %i_offset, align 8
  %add8.3 = add nsw i32 %shr.3, %19
  %tobool.not.i.3 = icmp ult i32 %add8.3, 256
  %20 = icmp sgt i32 %add8.3, 0
  %shr.i.3 = sext i1 %20 to i32
  %cond.i.3 = select i1 %tobool.not.i.3, i32 %add8.3, i32 %shr.i.3
  %conv.i.3 = trunc i32 %cond.i.3 to i8
  %arrayidx10.3 = getelementptr inbounds i8, ptr %dst.addr.084, i64 3
  store i8 %conv.i.3, ptr %arrayidx10.3, align 1
  %arrayidx.4 = getelementptr inbounds i8, ptr %src.addr.083, i64 4
  %21 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %21 to i32
  %22 = load i32, ptr %i_scale, align 4
  %mul.4 = mul nsw i32 %22, %conv.4
  %23 = load i32, ptr %i_denom, align 16
  %sub.4 = add nsw i32 %23, -1
  %shl.4 = shl nuw i32 1, %sub.4
  %add.4 = add nsw i32 %shl.4, %mul.4
  %shr.4 = ashr i32 %add.4, %23
  %24 = load i32, ptr %i_offset, align 8
  %add8.4 = add nsw i32 %shr.4, %24
  %tobool.not.i.4 = icmp ult i32 %add8.4, 256
  %25 = icmp sgt i32 %add8.4, 0
  %shr.i.4 = sext i1 %25 to i32
  %cond.i.4 = select i1 %tobool.not.i.4, i32 %add8.4, i32 %shr.i.4
  %conv.i.4 = trunc i32 %cond.i.4 to i8
  %arrayidx10.4 = getelementptr inbounds i8, ptr %dst.addr.084, i64 4
  store i8 %conv.i.4, ptr %arrayidx10.4, align 1
  %arrayidx.5 = getelementptr inbounds i8, ptr %src.addr.083, i64 5
  %26 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %26 to i32
  %27 = load i32, ptr %i_scale, align 4
  %mul.5 = mul nsw i32 %27, %conv.5
  %28 = load i32, ptr %i_denom, align 16
  %sub.5 = add nsw i32 %28, -1
  %shl.5 = shl nuw i32 1, %sub.5
  %add.5 = add nsw i32 %shl.5, %mul.5
  %shr.5 = ashr i32 %add.5, %28
  %29 = load i32, ptr %i_offset, align 8
  %add8.5 = add nsw i32 %shr.5, %29
  %tobool.not.i.5 = icmp ult i32 %add8.5, 256
  %30 = icmp sgt i32 %add8.5, 0
  %shr.i.5 = sext i1 %30 to i32
  %cond.i.5 = select i1 %tobool.not.i.5, i32 %add8.5, i32 %shr.i.5
  %conv.i.5 = trunc i32 %cond.i.5 to i8
  %arrayidx10.5 = getelementptr inbounds i8, ptr %dst.addr.084, i64 5
  store i8 %conv.i.5, ptr %arrayidx10.5, align 1
  %arrayidx.6 = getelementptr inbounds i8, ptr %src.addr.083, i64 6
  %31 = load i8, ptr %arrayidx.6, align 1
  %conv.6 = zext i8 %31 to i32
  %32 = load i32, ptr %i_scale, align 4
  %mul.6 = mul nsw i32 %32, %conv.6
  %33 = load i32, ptr %i_denom, align 16
  %sub.6 = add nsw i32 %33, -1
  %shl.6 = shl nuw i32 1, %sub.6
  %add.6 = add nsw i32 %shl.6, %mul.6
  %shr.6 = ashr i32 %add.6, %33
  %34 = load i32, ptr %i_offset, align 8
  %add8.6 = add nsw i32 %shr.6, %34
  %tobool.not.i.6 = icmp ult i32 %add8.6, 256
  %35 = icmp sgt i32 %add8.6, 0
  %shr.i.6 = sext i1 %35 to i32
  %cond.i.6 = select i1 %tobool.not.i.6, i32 %add8.6, i32 %shr.i.6
  %conv.i.6 = trunc i32 %cond.i.6 to i8
  %arrayidx10.6 = getelementptr inbounds i8, ptr %dst.addr.084, i64 6
  store i8 %conv.i.6, ptr %arrayidx10.6, align 1
  %arrayidx.7 = getelementptr inbounds i8, ptr %src.addr.083, i64 7
  %36 = load i8, ptr %arrayidx.7, align 1
  %conv.7 = zext i8 %36 to i32
  %37 = load i32, ptr %i_scale, align 4
  %mul.7 = mul nsw i32 %37, %conv.7
  %38 = load i32, ptr %i_denom, align 16
  %sub.7 = add nsw i32 %38, -1
  %shl.7 = shl nuw i32 1, %sub.7
  %add.7 = add nsw i32 %shl.7, %mul.7
  %shr.7 = ashr i32 %add.7, %38
  %39 = load i32, ptr %i_offset, align 8
  %add8.7 = add nsw i32 %shr.7, %39
  %tobool.not.i.7 = icmp ult i32 %add8.7, 256
  %40 = icmp sgt i32 %add8.7, 0
  %shr.i.7 = sext i1 %40 to i32
  %cond.i.7 = select i1 %tobool.not.i.7, i32 %add8.7, i32 %shr.i.7
  %conv.i.7 = trunc i32 %cond.i.7 to i8
  %arrayidx10.7 = getelementptr inbounds i8, ptr %dst.addr.084, i64 7
  store i8 %conv.i.7, ptr %arrayidx10.7, align 1
  %inc12 = add nuw nsw i32 %y.085, 1
  %add.ptr = getelementptr inbounds i8, ptr %dst.addr.084, i64 %idx.ext
  %add.ptr14 = getelementptr inbounds i8, ptr %src.addr.083, i64 %idx.ext13
  %exitcond90.not = icmp eq i32 %inc12, %height
  br i1 %exitcond90.not, label %if.end, label %for.cond2.preheader

for.cond23.preheader:                             ; preds = %for.cond23.preheader.lr.ph, %for.cond23.preheader
  %y16.080 = phi i32 [ 0, %for.cond23.preheader.lr.ph ], [ %inc42, %for.cond23.preheader ]
  %dst.addr.179 = phi ptr [ %dst, %for.cond23.preheader.lr.ph ], [ %add.ptr44, %for.cond23.preheader ]
  %src.addr.178 = phi ptr [ %src, %for.cond23.preheader.lr.ph ], [ %add.ptr46, %for.cond23.preheader ]
  %41 = load i8, ptr %src.addr.178, align 1
  %conv30 = zext i8 %41 to i32
  %42 = load i32, ptr %i_scale31, align 4
  %mul32 = mul nsw i32 %42, %conv30
  %43 = load i32, ptr %i_offset33, align 8
  %add34 = add nsw i32 %mul32, %43
  %tobool.not.i71 = icmp ult i32 %add34, 256
  %44 = icmp sgt i32 %add34, 0
  %shr.i72 = sext i1 %44 to i32
  %cond.i73 = select i1 %tobool.not.i71, i32 %add34, i32 %shr.i72
  %conv.i74 = trunc i32 %cond.i73 to i8
  store i8 %conv.i74, ptr %dst.addr.179, align 1
  %arrayidx29.1 = getelementptr inbounds i8, ptr %src.addr.178, i64 1
  %45 = load i8, ptr %arrayidx29.1, align 1
  %conv30.1 = zext i8 %45 to i32
  %46 = load i32, ptr %i_scale31, align 4
  %mul32.1 = mul nsw i32 %46, %conv30.1
  %47 = load i32, ptr %i_offset33, align 8
  %add34.1 = add nsw i32 %mul32.1, %47
  %tobool.not.i71.1 = icmp ult i32 %add34.1, 256
  %48 = icmp sgt i32 %add34.1, 0
  %shr.i72.1 = sext i1 %48 to i32
  %cond.i73.1 = select i1 %tobool.not.i71.1, i32 %add34.1, i32 %shr.i72.1
  %conv.i74.1 = trunc i32 %cond.i73.1 to i8
  %arrayidx37.1 = getelementptr inbounds i8, ptr %dst.addr.179, i64 1
  store i8 %conv.i74.1, ptr %arrayidx37.1, align 1
  %arrayidx29.2 = getelementptr inbounds i8, ptr %src.addr.178, i64 2
  %49 = load i8, ptr %arrayidx29.2, align 1
  %conv30.2 = zext i8 %49 to i32
  %50 = load i32, ptr %i_scale31, align 4
  %mul32.2 = mul nsw i32 %50, %conv30.2
  %51 = load i32, ptr %i_offset33, align 8
  %add34.2 = add nsw i32 %mul32.2, %51
  %tobool.not.i71.2 = icmp ult i32 %add34.2, 256
  %52 = icmp sgt i32 %add34.2, 0
  %shr.i72.2 = sext i1 %52 to i32
  %cond.i73.2 = select i1 %tobool.not.i71.2, i32 %add34.2, i32 %shr.i72.2
  %conv.i74.2 = trunc i32 %cond.i73.2 to i8
  %arrayidx37.2 = getelementptr inbounds i8, ptr %dst.addr.179, i64 2
  store i8 %conv.i74.2, ptr %arrayidx37.2, align 1
  %arrayidx29.3 = getelementptr inbounds i8, ptr %src.addr.178, i64 3
  %53 = load i8, ptr %arrayidx29.3, align 1
  %conv30.3 = zext i8 %53 to i32
  %54 = load i32, ptr %i_scale31, align 4
  %mul32.3 = mul nsw i32 %54, %conv30.3
  %55 = load i32, ptr %i_offset33, align 8
  %add34.3 = add nsw i32 %mul32.3, %55
  %tobool.not.i71.3 = icmp ult i32 %add34.3, 256
  %56 = icmp sgt i32 %add34.3, 0
  %shr.i72.3 = sext i1 %56 to i32
  %cond.i73.3 = select i1 %tobool.not.i71.3, i32 %add34.3, i32 %shr.i72.3
  %conv.i74.3 = trunc i32 %cond.i73.3 to i8
  %arrayidx37.3 = getelementptr inbounds i8, ptr %dst.addr.179, i64 3
  store i8 %conv.i74.3, ptr %arrayidx37.3, align 1
  %arrayidx29.4 = getelementptr inbounds i8, ptr %src.addr.178, i64 4
  %57 = load i8, ptr %arrayidx29.4, align 1
  %conv30.4 = zext i8 %57 to i32
  %58 = load i32, ptr %i_scale31, align 4
  %mul32.4 = mul nsw i32 %58, %conv30.4
  %59 = load i32, ptr %i_offset33, align 8
  %add34.4 = add nsw i32 %mul32.4, %59
  %tobool.not.i71.4 = icmp ult i32 %add34.4, 256
  %60 = icmp sgt i32 %add34.4, 0
  %shr.i72.4 = sext i1 %60 to i32
  %cond.i73.4 = select i1 %tobool.not.i71.4, i32 %add34.4, i32 %shr.i72.4
  %conv.i74.4 = trunc i32 %cond.i73.4 to i8
  %arrayidx37.4 = getelementptr inbounds i8, ptr %dst.addr.179, i64 4
  store i8 %conv.i74.4, ptr %arrayidx37.4, align 1
  %arrayidx29.5 = getelementptr inbounds i8, ptr %src.addr.178, i64 5
  %61 = load i8, ptr %arrayidx29.5, align 1
  %conv30.5 = zext i8 %61 to i32
  %62 = load i32, ptr %i_scale31, align 4
  %mul32.5 = mul nsw i32 %62, %conv30.5
  %63 = load i32, ptr %i_offset33, align 8
  %add34.5 = add nsw i32 %mul32.5, %63
  %tobool.not.i71.5 = icmp ult i32 %add34.5, 256
  %64 = icmp sgt i32 %add34.5, 0
  %shr.i72.5 = sext i1 %64 to i32
  %cond.i73.5 = select i1 %tobool.not.i71.5, i32 %add34.5, i32 %shr.i72.5
  %conv.i74.5 = trunc i32 %cond.i73.5 to i8
  %arrayidx37.5 = getelementptr inbounds i8, ptr %dst.addr.179, i64 5
  store i8 %conv.i74.5, ptr %arrayidx37.5, align 1
  %arrayidx29.6 = getelementptr inbounds i8, ptr %src.addr.178, i64 6
  %65 = load i8, ptr %arrayidx29.6, align 1
  %conv30.6 = zext i8 %65 to i32
  %66 = load i32, ptr %i_scale31, align 4
  %mul32.6 = mul nsw i32 %66, %conv30.6
  %67 = load i32, ptr %i_offset33, align 8
  %add34.6 = add nsw i32 %mul32.6, %67
  %tobool.not.i71.6 = icmp ult i32 %add34.6, 256
  %68 = icmp sgt i32 %add34.6, 0
  %shr.i72.6 = sext i1 %68 to i32
  %cond.i73.6 = select i1 %tobool.not.i71.6, i32 %add34.6, i32 %shr.i72.6
  %conv.i74.6 = trunc i32 %cond.i73.6 to i8
  %arrayidx37.6 = getelementptr inbounds i8, ptr %dst.addr.179, i64 6
  store i8 %conv.i74.6, ptr %arrayidx37.6, align 1
  %arrayidx29.7 = getelementptr inbounds i8, ptr %src.addr.178, i64 7
  %69 = load i8, ptr %arrayidx29.7, align 1
  %conv30.7 = zext i8 %69 to i32
  %70 = load i32, ptr %i_scale31, align 4
  %mul32.7 = mul nsw i32 %70, %conv30.7
  %71 = load i32, ptr %i_offset33, align 8
  %add34.7 = add nsw i32 %mul32.7, %71
  %tobool.not.i71.7 = icmp ult i32 %add34.7, 256
  %72 = icmp sgt i32 %add34.7, 0
  %shr.i72.7 = sext i1 %72 to i32
  %cond.i73.7 = select i1 %tobool.not.i71.7, i32 %add34.7, i32 %shr.i72.7
  %conv.i74.7 = trunc i32 %cond.i73.7 to i8
  %arrayidx37.7 = getelementptr inbounds i8, ptr %dst.addr.179, i64 7
  store i8 %conv.i74.7, ptr %arrayidx37.7, align 1
  %inc42 = add nuw nsw i32 %y16.080, 1
  %add.ptr44 = getelementptr inbounds i8, ptr %dst.addr.179, i64 %idx.ext43
  %add.ptr46 = getelementptr inbounds i8, ptr %src.addr.178, i64 %idx.ext45
  %exitcond.not = icmp eq i32 %inc42, %height
  br i1 %exitcond.not, label %if.end, label %for.cond23.preheader

if.end:                                           ; preds = %for.cond23.preheader, %for.cond2.preheader, %for.cond17.preheader, %for.cond.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_weight_w12(ptr nocapture noundef writeonly %dst, i32 noundef %i_dst_stride, ptr nocapture noundef readonly %src, i32 noundef %i_src_stride, ptr nocapture noundef readonly %weight, i32 noundef %height) #0 {
entry:
  %i_denom = getelementptr inbounds i8, ptr %weight, i64 32
  %0 = load i32, ptr %i_denom, align 16
  %cmp = icmp sgt i32 %0, 0
  %cmp182 = icmp sgt i32 %height, 0
  br i1 %cmp, label %for.cond.preheader, label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %entry
  br i1 %cmp182, label %for.cond23.preheader.lr.ph, label %if.end

for.cond23.preheader.lr.ph:                       ; preds = %for.cond17.preheader
  %i_scale31 = getelementptr inbounds i8, ptr %weight, i64 36
  %i_offset33 = getelementptr inbounds i8, ptr %weight, i64 40
  %idx.ext43 = sext i32 %i_dst_stride to i64
  %idx.ext45 = sext i32 %i_src_stride to i64
  br label %for.cond23.preheader

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp182, label %for.cond2.preheader.lr.ph, label %if.end

for.cond2.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %i_scale = getelementptr inbounds i8, ptr %weight, i64 36
  %i_offset = getelementptr inbounds i8, ptr %weight, i64 40
  %idx.ext = sext i32 %i_dst_stride to i64
  %idx.ext13 = sext i32 %i_src_stride to i64
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond2.preheader.lr.ph, %for.cond2.preheader
  %y.085 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %inc12, %for.cond2.preheader ]
  %dst.addr.084 = phi ptr [ %dst, %for.cond2.preheader.lr.ph ], [ %add.ptr, %for.cond2.preheader ]
  %src.addr.083 = phi ptr [ %src, %for.cond2.preheader.lr.ph ], [ %add.ptr14, %for.cond2.preheader ]
  %1 = load i8, ptr %src.addr.083, align 1
  %conv = zext i8 %1 to i32
  %2 = load i32, ptr %i_scale, align 4
  %mul = mul nsw i32 %2, %conv
  %3 = load i32, ptr %i_denom, align 16
  %sub = add nsw i32 %3, -1
  %shl = shl nuw i32 1, %sub
  %add = add nsw i32 %shl, %mul
  %shr = ashr i32 %add, %3
  %4 = load i32, ptr %i_offset, align 8
  %add8 = add nsw i32 %shr, %4
  %tobool.not.i = icmp ult i32 %add8, 256
  %5 = icmp sgt i32 %add8, 0
  %shr.i = sext i1 %5 to i32
  %cond.i = select i1 %tobool.not.i, i32 %add8, i32 %shr.i
  %conv.i = trunc i32 %cond.i to i8
  store i8 %conv.i, ptr %dst.addr.084, align 1
  %arrayidx.1 = getelementptr inbounds i8, ptr %src.addr.083, i64 1
  %6 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %6 to i32
  %7 = load i32, ptr %i_scale, align 4
  %mul.1 = mul nsw i32 %7, %conv.1
  %8 = load i32, ptr %i_denom, align 16
  %sub.1 = add nsw i32 %8, -1
  %shl.1 = shl nuw i32 1, %sub.1
  %add.1 = add nsw i32 %shl.1, %mul.1
  %shr.1 = ashr i32 %add.1, %8
  %9 = load i32, ptr %i_offset, align 8
  %add8.1 = add nsw i32 %shr.1, %9
  %tobool.not.i.1 = icmp ult i32 %add8.1, 256
  %10 = icmp sgt i32 %add8.1, 0
  %shr.i.1 = sext i1 %10 to i32
  %cond.i.1 = select i1 %tobool.not.i.1, i32 %add8.1, i32 %shr.i.1
  %conv.i.1 = trunc i32 %cond.i.1 to i8
  %arrayidx10.1 = getelementptr inbounds i8, ptr %dst.addr.084, i64 1
  store i8 %conv.i.1, ptr %arrayidx10.1, align 1
  %arrayidx.2 = getelementptr inbounds i8, ptr %src.addr.083, i64 2
  %11 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %11 to i32
  %12 = load i32, ptr %i_scale, align 4
  %mul.2 = mul nsw i32 %12, %conv.2
  %13 = load i32, ptr %i_denom, align 16
  %sub.2 = add nsw i32 %13, -1
  %shl.2 = shl nuw i32 1, %sub.2
  %add.2 = add nsw i32 %shl.2, %mul.2
  %shr.2 = ashr i32 %add.2, %13
  %14 = load i32, ptr %i_offset, align 8
  %add8.2 = add nsw i32 %shr.2, %14
  %tobool.not.i.2 = icmp ult i32 %add8.2, 256
  %15 = icmp sgt i32 %add8.2, 0
  %shr.i.2 = sext i1 %15 to i32
  %cond.i.2 = select i1 %tobool.not.i.2, i32 %add8.2, i32 %shr.i.2
  %conv.i.2 = trunc i32 %cond.i.2 to i8
  %arrayidx10.2 = getelementptr inbounds i8, ptr %dst.addr.084, i64 2
  store i8 %conv.i.2, ptr %arrayidx10.2, align 1
  %arrayidx.3 = getelementptr inbounds i8, ptr %src.addr.083, i64 3
  %16 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %16 to i32
  %17 = load i32, ptr %i_scale, align 4
  %mul.3 = mul nsw i32 %17, %conv.3
  %18 = load i32, ptr %i_denom, align 16
  %sub.3 = add nsw i32 %18, -1
  %shl.3 = shl nuw i32 1, %sub.3
  %add.3 = add nsw i32 %shl.3, %mul.3
  %shr.3 = ashr i32 %add.3, %18
  %19 = load i32, ptr %i_offset, align 8
  %add8.3 = add nsw i32 %shr.3, %19
  %tobool.not.i.3 = icmp ult i32 %add8.3, 256
  %20 = icmp sgt i32 %add8.3, 0
  %shr.i.3 = sext i1 %20 to i32
  %cond.i.3 = select i1 %tobool.not.i.3, i32 %add8.3, i32 %shr.i.3
  %conv.i.3 = trunc i32 %cond.i.3 to i8
  %arrayidx10.3 = getelementptr inbounds i8, ptr %dst.addr.084, i64 3
  store i8 %conv.i.3, ptr %arrayidx10.3, align 1
  %arrayidx.4 = getelementptr inbounds i8, ptr %src.addr.083, i64 4
  %21 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %21 to i32
  %22 = load i32, ptr %i_scale, align 4
  %mul.4 = mul nsw i32 %22, %conv.4
  %23 = load i32, ptr %i_denom, align 16
  %sub.4 = add nsw i32 %23, -1
  %shl.4 = shl nuw i32 1, %sub.4
  %add.4 = add nsw i32 %shl.4, %mul.4
  %shr.4 = ashr i32 %add.4, %23
  %24 = load i32, ptr %i_offset, align 8
  %add8.4 = add nsw i32 %shr.4, %24
  %tobool.not.i.4 = icmp ult i32 %add8.4, 256
  %25 = icmp sgt i32 %add8.4, 0
  %shr.i.4 = sext i1 %25 to i32
  %cond.i.4 = select i1 %tobool.not.i.4, i32 %add8.4, i32 %shr.i.4
  %conv.i.4 = trunc i32 %cond.i.4 to i8
  %arrayidx10.4 = getelementptr inbounds i8, ptr %dst.addr.084, i64 4
  store i8 %conv.i.4, ptr %arrayidx10.4, align 1
  %arrayidx.5 = getelementptr inbounds i8, ptr %src.addr.083, i64 5
  %26 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %26 to i32
  %27 = load i32, ptr %i_scale, align 4
  %mul.5 = mul nsw i32 %27, %conv.5
  %28 = load i32, ptr %i_denom, align 16
  %sub.5 = add nsw i32 %28, -1
  %shl.5 = shl nuw i32 1, %sub.5
  %add.5 = add nsw i32 %shl.5, %mul.5
  %shr.5 = ashr i32 %add.5, %28
  %29 = load i32, ptr %i_offset, align 8
  %add8.5 = add nsw i32 %shr.5, %29
  %tobool.not.i.5 = icmp ult i32 %add8.5, 256
  %30 = icmp sgt i32 %add8.5, 0
  %shr.i.5 = sext i1 %30 to i32
  %cond.i.5 = select i1 %tobool.not.i.5, i32 %add8.5, i32 %shr.i.5
  %conv.i.5 = trunc i32 %cond.i.5 to i8
  %arrayidx10.5 = getelementptr inbounds i8, ptr %dst.addr.084, i64 5
  store i8 %conv.i.5, ptr %arrayidx10.5, align 1
  %arrayidx.6 = getelementptr inbounds i8, ptr %src.addr.083, i64 6
  %31 = load i8, ptr %arrayidx.6, align 1
  %conv.6 = zext i8 %31 to i32
  %32 = load i32, ptr %i_scale, align 4
  %mul.6 = mul nsw i32 %32, %conv.6
  %33 = load i32, ptr %i_denom, align 16
  %sub.6 = add nsw i32 %33, -1
  %shl.6 = shl nuw i32 1, %sub.6
  %add.6 = add nsw i32 %shl.6, %mul.6
  %shr.6 = ashr i32 %add.6, %33
  %34 = load i32, ptr %i_offset, align 8
  %add8.6 = add nsw i32 %shr.6, %34
  %tobool.not.i.6 = icmp ult i32 %add8.6, 256
  %35 = icmp sgt i32 %add8.6, 0
  %shr.i.6 = sext i1 %35 to i32
  %cond.i.6 = select i1 %tobool.not.i.6, i32 %add8.6, i32 %shr.i.6
  %conv.i.6 = trunc i32 %cond.i.6 to i8
  %arrayidx10.6 = getelementptr inbounds i8, ptr %dst.addr.084, i64 6
  store i8 %conv.i.6, ptr %arrayidx10.6, align 1
  %arrayidx.7 = getelementptr inbounds i8, ptr %src.addr.083, i64 7
  %36 = load i8, ptr %arrayidx.7, align 1
  %conv.7 = zext i8 %36 to i32
  %37 = load i32, ptr %i_scale, align 4
  %mul.7 = mul nsw i32 %37, %conv.7
  %38 = load i32, ptr %i_denom, align 16
  %sub.7 = add nsw i32 %38, -1
  %shl.7 = shl nuw i32 1, %sub.7
  %add.7 = add nsw i32 %shl.7, %mul.7
  %shr.7 = ashr i32 %add.7, %38
  %39 = load i32, ptr %i_offset, align 8
  %add8.7 = add nsw i32 %shr.7, %39
  %tobool.not.i.7 = icmp ult i32 %add8.7, 256
  %40 = icmp sgt i32 %add8.7, 0
  %shr.i.7 = sext i1 %40 to i32
  %cond.i.7 = select i1 %tobool.not.i.7, i32 %add8.7, i32 %shr.i.7
  %conv.i.7 = trunc i32 %cond.i.7 to i8
  %arrayidx10.7 = getelementptr inbounds i8, ptr %dst.addr.084, i64 7
  store i8 %conv.i.7, ptr %arrayidx10.7, align 1
  %arrayidx.8 = getelementptr inbounds i8, ptr %src.addr.083, i64 8
  %41 = load i8, ptr %arrayidx.8, align 1
  %conv.8 = zext i8 %41 to i32
  %42 = load i32, ptr %i_scale, align 4
  %mul.8 = mul nsw i32 %42, %conv.8
  %43 = load i32, ptr %i_denom, align 16
  %sub.8 = add nsw i32 %43, -1
  %shl.8 = shl nuw i32 1, %sub.8
  %add.8 = add nsw i32 %shl.8, %mul.8
  %shr.8 = ashr i32 %add.8, %43
  %44 = load i32, ptr %i_offset, align 8
  %add8.8 = add nsw i32 %shr.8, %44
  %tobool.not.i.8 = icmp ult i32 %add8.8, 256
  %45 = icmp sgt i32 %add8.8, 0
  %shr.i.8 = sext i1 %45 to i32
  %cond.i.8 = select i1 %tobool.not.i.8, i32 %add8.8, i32 %shr.i.8
  %conv.i.8 = trunc i32 %cond.i.8 to i8
  %arrayidx10.8 = getelementptr inbounds i8, ptr %dst.addr.084, i64 8
  store i8 %conv.i.8, ptr %arrayidx10.8, align 1
  %arrayidx.9 = getelementptr inbounds i8, ptr %src.addr.083, i64 9
  %46 = load i8, ptr %arrayidx.9, align 1
  %conv.9 = zext i8 %46 to i32
  %47 = load i32, ptr %i_scale, align 4
  %mul.9 = mul nsw i32 %47, %conv.9
  %48 = load i32, ptr %i_denom, align 16
  %sub.9 = add nsw i32 %48, -1
  %shl.9 = shl nuw i32 1, %sub.9
  %add.9 = add nsw i32 %shl.9, %mul.9
  %shr.9 = ashr i32 %add.9, %48
  %49 = load i32, ptr %i_offset, align 8
  %add8.9 = add nsw i32 %shr.9, %49
  %tobool.not.i.9 = icmp ult i32 %add8.9, 256
  %50 = icmp sgt i32 %add8.9, 0
  %shr.i.9 = sext i1 %50 to i32
  %cond.i.9 = select i1 %tobool.not.i.9, i32 %add8.9, i32 %shr.i.9
  %conv.i.9 = trunc i32 %cond.i.9 to i8
  %arrayidx10.9 = getelementptr inbounds i8, ptr %dst.addr.084, i64 9
  store i8 %conv.i.9, ptr %arrayidx10.9, align 1
  %arrayidx.10 = getelementptr inbounds i8, ptr %src.addr.083, i64 10
  %51 = load i8, ptr %arrayidx.10, align 1
  %conv.10 = zext i8 %51 to i32
  %52 = load i32, ptr %i_scale, align 4
  %mul.10 = mul nsw i32 %52, %conv.10
  %53 = load i32, ptr %i_denom, align 16
  %sub.10 = add nsw i32 %53, -1
  %shl.10 = shl nuw i32 1, %sub.10
  %add.10 = add nsw i32 %shl.10, %mul.10
  %shr.10 = ashr i32 %add.10, %53
  %54 = load i32, ptr %i_offset, align 8
  %add8.10 = add nsw i32 %shr.10, %54
  %tobool.not.i.10 = icmp ult i32 %add8.10, 256
  %55 = icmp sgt i32 %add8.10, 0
  %shr.i.10 = sext i1 %55 to i32
  %cond.i.10 = select i1 %tobool.not.i.10, i32 %add8.10, i32 %shr.i.10
  %conv.i.10 = trunc i32 %cond.i.10 to i8
  %arrayidx10.10 = getelementptr inbounds i8, ptr %dst.addr.084, i64 10
  store i8 %conv.i.10, ptr %arrayidx10.10, align 1
  %arrayidx.11 = getelementptr inbounds i8, ptr %src.addr.083, i64 11
  %56 = load i8, ptr %arrayidx.11, align 1
  %conv.11 = zext i8 %56 to i32
  %57 = load i32, ptr %i_scale, align 4
  %mul.11 = mul nsw i32 %57, %conv.11
  %58 = load i32, ptr %i_denom, align 16
  %sub.11 = add nsw i32 %58, -1
  %shl.11 = shl nuw i32 1, %sub.11
  %add.11 = add nsw i32 %shl.11, %mul.11
  %shr.11 = ashr i32 %add.11, %58
  %59 = load i32, ptr %i_offset, align 8
  %add8.11 = add nsw i32 %shr.11, %59
  %tobool.not.i.11 = icmp ult i32 %add8.11, 256
  %60 = icmp sgt i32 %add8.11, 0
  %shr.i.11 = sext i1 %60 to i32
  %cond.i.11 = select i1 %tobool.not.i.11, i32 %add8.11, i32 %shr.i.11
  %conv.i.11 = trunc i32 %cond.i.11 to i8
  %arrayidx10.11 = getelementptr inbounds i8, ptr %dst.addr.084, i64 11
  store i8 %conv.i.11, ptr %arrayidx10.11, align 1
  %inc12 = add nuw nsw i32 %y.085, 1
  %add.ptr = getelementptr inbounds i8, ptr %dst.addr.084, i64 %idx.ext
  %add.ptr14 = getelementptr inbounds i8, ptr %src.addr.083, i64 %idx.ext13
  %exitcond90.not = icmp eq i32 %inc12, %height
  br i1 %exitcond90.not, label %if.end, label %for.cond2.preheader

for.cond23.preheader:                             ; preds = %for.cond23.preheader.lr.ph, %for.cond23.preheader
  %y16.080 = phi i32 [ 0, %for.cond23.preheader.lr.ph ], [ %inc42, %for.cond23.preheader ]
  %dst.addr.179 = phi ptr [ %dst, %for.cond23.preheader.lr.ph ], [ %add.ptr44, %for.cond23.preheader ]
  %src.addr.178 = phi ptr [ %src, %for.cond23.preheader.lr.ph ], [ %add.ptr46, %for.cond23.preheader ]
  %61 = load i8, ptr %src.addr.178, align 1
  %conv30 = zext i8 %61 to i32
  %62 = load i32, ptr %i_scale31, align 4
  %mul32 = mul nsw i32 %62, %conv30
  %63 = load i32, ptr %i_offset33, align 8
  %add34 = add nsw i32 %mul32, %63
  %tobool.not.i71 = icmp ult i32 %add34, 256
  %64 = icmp sgt i32 %add34, 0
  %shr.i72 = sext i1 %64 to i32
  %cond.i73 = select i1 %tobool.not.i71, i32 %add34, i32 %shr.i72
  %conv.i74 = trunc i32 %cond.i73 to i8
  store i8 %conv.i74, ptr %dst.addr.179, align 1
  %arrayidx29.1 = getelementptr inbounds i8, ptr %src.addr.178, i64 1
  %65 = load i8, ptr %arrayidx29.1, align 1
  %conv30.1 = zext i8 %65 to i32
  %66 = load i32, ptr %i_scale31, align 4
  %mul32.1 = mul nsw i32 %66, %conv30.1
  %67 = load i32, ptr %i_offset33, align 8
  %add34.1 = add nsw i32 %mul32.1, %67
  %tobool.not.i71.1 = icmp ult i32 %add34.1, 256
  %68 = icmp sgt i32 %add34.1, 0
  %shr.i72.1 = sext i1 %68 to i32
  %cond.i73.1 = select i1 %tobool.not.i71.1, i32 %add34.1, i32 %shr.i72.1
  %conv.i74.1 = trunc i32 %cond.i73.1 to i8
  %arrayidx37.1 = getelementptr inbounds i8, ptr %dst.addr.179, i64 1
  store i8 %conv.i74.1, ptr %arrayidx37.1, align 1
  %arrayidx29.2 = getelementptr inbounds i8, ptr %src.addr.178, i64 2
  %69 = load i8, ptr %arrayidx29.2, align 1
  %conv30.2 = zext i8 %69 to i32
  %70 = load i32, ptr %i_scale31, align 4
  %mul32.2 = mul nsw i32 %70, %conv30.2
  %71 = load i32, ptr %i_offset33, align 8
  %add34.2 = add nsw i32 %mul32.2, %71
  %tobool.not.i71.2 = icmp ult i32 %add34.2, 256
  %72 = icmp sgt i32 %add34.2, 0
  %shr.i72.2 = sext i1 %72 to i32
  %cond.i73.2 = select i1 %tobool.not.i71.2, i32 %add34.2, i32 %shr.i72.2
  %conv.i74.2 = trunc i32 %cond.i73.2 to i8
  %arrayidx37.2 = getelementptr inbounds i8, ptr %dst.addr.179, i64 2
  store i8 %conv.i74.2, ptr %arrayidx37.2, align 1
  %arrayidx29.3 = getelementptr inbounds i8, ptr %src.addr.178, i64 3
  %73 = load i8, ptr %arrayidx29.3, align 1
  %conv30.3 = zext i8 %73 to i32
  %74 = load i32, ptr %i_scale31, align 4
  %mul32.3 = mul nsw i32 %74, %conv30.3
  %75 = load i32, ptr %i_offset33, align 8
  %add34.3 = add nsw i32 %mul32.3, %75
  %tobool.not.i71.3 = icmp ult i32 %add34.3, 256
  %76 = icmp sgt i32 %add34.3, 0
  %shr.i72.3 = sext i1 %76 to i32
  %cond.i73.3 = select i1 %tobool.not.i71.3, i32 %add34.3, i32 %shr.i72.3
  %conv.i74.3 = trunc i32 %cond.i73.3 to i8
  %arrayidx37.3 = getelementptr inbounds i8, ptr %dst.addr.179, i64 3
  store i8 %conv.i74.3, ptr %arrayidx37.3, align 1
  %arrayidx29.4 = getelementptr inbounds i8, ptr %src.addr.178, i64 4
  %77 = load i8, ptr %arrayidx29.4, align 1
  %conv30.4 = zext i8 %77 to i32
  %78 = load i32, ptr %i_scale31, align 4
  %mul32.4 = mul nsw i32 %78, %conv30.4
  %79 = load i32, ptr %i_offset33, align 8
  %add34.4 = add nsw i32 %mul32.4, %79
  %tobool.not.i71.4 = icmp ult i32 %add34.4, 256
  %80 = icmp sgt i32 %add34.4, 0
  %shr.i72.4 = sext i1 %80 to i32
  %cond.i73.4 = select i1 %tobool.not.i71.4, i32 %add34.4, i32 %shr.i72.4
  %conv.i74.4 = trunc i32 %cond.i73.4 to i8
  %arrayidx37.4 = getelementptr inbounds i8, ptr %dst.addr.179, i64 4
  store i8 %conv.i74.4, ptr %arrayidx37.4, align 1
  %arrayidx29.5 = getelementptr inbounds i8, ptr %src.addr.178, i64 5
  %81 = load i8, ptr %arrayidx29.5, align 1
  %conv30.5 = zext i8 %81 to i32
  %82 = load i32, ptr %i_scale31, align 4
  %mul32.5 = mul nsw i32 %82, %conv30.5
  %83 = load i32, ptr %i_offset33, align 8
  %add34.5 = add nsw i32 %mul32.5, %83
  %tobool.not.i71.5 = icmp ult i32 %add34.5, 256
  %84 = icmp sgt i32 %add34.5, 0
  %shr.i72.5 = sext i1 %84 to i32
  %cond.i73.5 = select i1 %tobool.not.i71.5, i32 %add34.5, i32 %shr.i72.5
  %conv.i74.5 = trunc i32 %cond.i73.5 to i8
  %arrayidx37.5 = getelementptr inbounds i8, ptr %dst.addr.179, i64 5
  store i8 %conv.i74.5, ptr %arrayidx37.5, align 1
  %arrayidx29.6 = getelementptr inbounds i8, ptr %src.addr.178, i64 6
  %85 = load i8, ptr %arrayidx29.6, align 1
  %conv30.6 = zext i8 %85 to i32
  %86 = load i32, ptr %i_scale31, align 4
  %mul32.6 = mul nsw i32 %86, %conv30.6
  %87 = load i32, ptr %i_offset33, align 8
  %add34.6 = add nsw i32 %mul32.6, %87
  %tobool.not.i71.6 = icmp ult i32 %add34.6, 256
  %88 = icmp sgt i32 %add34.6, 0
  %shr.i72.6 = sext i1 %88 to i32
  %cond.i73.6 = select i1 %tobool.not.i71.6, i32 %add34.6, i32 %shr.i72.6
  %conv.i74.6 = trunc i32 %cond.i73.6 to i8
  %arrayidx37.6 = getelementptr inbounds i8, ptr %dst.addr.179, i64 6
  store i8 %conv.i74.6, ptr %arrayidx37.6, align 1
  %arrayidx29.7 = getelementptr inbounds i8, ptr %src.addr.178, i64 7
  %89 = load i8, ptr %arrayidx29.7, align 1
  %conv30.7 = zext i8 %89 to i32
  %90 = load i32, ptr %i_scale31, align 4
  %mul32.7 = mul nsw i32 %90, %conv30.7
  %91 = load i32, ptr %i_offset33, align 8
  %add34.7 = add nsw i32 %mul32.7, %91
  %tobool.not.i71.7 = icmp ult i32 %add34.7, 256
  %92 = icmp sgt i32 %add34.7, 0
  %shr.i72.7 = sext i1 %92 to i32
  %cond.i73.7 = select i1 %tobool.not.i71.7, i32 %add34.7, i32 %shr.i72.7
  %conv.i74.7 = trunc i32 %cond.i73.7 to i8
  %arrayidx37.7 = getelementptr inbounds i8, ptr %dst.addr.179, i64 7
  store i8 %conv.i74.7, ptr %arrayidx37.7, align 1
  %arrayidx29.8 = getelementptr inbounds i8, ptr %src.addr.178, i64 8
  %93 = load i8, ptr %arrayidx29.8, align 1
  %conv30.8 = zext i8 %93 to i32
  %94 = load i32, ptr %i_scale31, align 4
  %mul32.8 = mul nsw i32 %94, %conv30.8
  %95 = load i32, ptr %i_offset33, align 8
  %add34.8 = add nsw i32 %mul32.8, %95
  %tobool.not.i71.8 = icmp ult i32 %add34.8, 256
  %96 = icmp sgt i32 %add34.8, 0
  %shr.i72.8 = sext i1 %96 to i32
  %cond.i73.8 = select i1 %tobool.not.i71.8, i32 %add34.8, i32 %shr.i72.8
  %conv.i74.8 = trunc i32 %cond.i73.8 to i8
  %arrayidx37.8 = getelementptr inbounds i8, ptr %dst.addr.179, i64 8
  store i8 %conv.i74.8, ptr %arrayidx37.8, align 1
  %arrayidx29.9 = getelementptr inbounds i8, ptr %src.addr.178, i64 9
  %97 = load i8, ptr %arrayidx29.9, align 1
  %conv30.9 = zext i8 %97 to i32
  %98 = load i32, ptr %i_scale31, align 4
  %mul32.9 = mul nsw i32 %98, %conv30.9
  %99 = load i32, ptr %i_offset33, align 8
  %add34.9 = add nsw i32 %mul32.9, %99
  %tobool.not.i71.9 = icmp ult i32 %add34.9, 256
  %100 = icmp sgt i32 %add34.9, 0
  %shr.i72.9 = sext i1 %100 to i32
  %cond.i73.9 = select i1 %tobool.not.i71.9, i32 %add34.9, i32 %shr.i72.9
  %conv.i74.9 = trunc i32 %cond.i73.9 to i8
  %arrayidx37.9 = getelementptr inbounds i8, ptr %dst.addr.179, i64 9
  store i8 %conv.i74.9, ptr %arrayidx37.9, align 1
  %arrayidx29.10 = getelementptr inbounds i8, ptr %src.addr.178, i64 10
  %101 = load i8, ptr %arrayidx29.10, align 1
  %conv30.10 = zext i8 %101 to i32
  %102 = load i32, ptr %i_scale31, align 4
  %mul32.10 = mul nsw i32 %102, %conv30.10
  %103 = load i32, ptr %i_offset33, align 8
  %add34.10 = add nsw i32 %mul32.10, %103
  %tobool.not.i71.10 = icmp ult i32 %add34.10, 256
  %104 = icmp sgt i32 %add34.10, 0
  %shr.i72.10 = sext i1 %104 to i32
  %cond.i73.10 = select i1 %tobool.not.i71.10, i32 %add34.10, i32 %shr.i72.10
  %conv.i74.10 = trunc i32 %cond.i73.10 to i8
  %arrayidx37.10 = getelementptr inbounds i8, ptr %dst.addr.179, i64 10
  store i8 %conv.i74.10, ptr %arrayidx37.10, align 1
  %arrayidx29.11 = getelementptr inbounds i8, ptr %src.addr.178, i64 11
  %105 = load i8, ptr %arrayidx29.11, align 1
  %conv30.11 = zext i8 %105 to i32
  %106 = load i32, ptr %i_scale31, align 4
  %mul32.11 = mul nsw i32 %106, %conv30.11
  %107 = load i32, ptr %i_offset33, align 8
  %add34.11 = add nsw i32 %mul32.11, %107
  %tobool.not.i71.11 = icmp ult i32 %add34.11, 256
  %108 = icmp sgt i32 %add34.11, 0
  %shr.i72.11 = sext i1 %108 to i32
  %cond.i73.11 = select i1 %tobool.not.i71.11, i32 %add34.11, i32 %shr.i72.11
  %conv.i74.11 = trunc i32 %cond.i73.11 to i8
  %arrayidx37.11 = getelementptr inbounds i8, ptr %dst.addr.179, i64 11
  store i8 %conv.i74.11, ptr %arrayidx37.11, align 1
  %inc42 = add nuw nsw i32 %y16.080, 1
  %add.ptr44 = getelementptr inbounds i8, ptr %dst.addr.179, i64 %idx.ext43
  %add.ptr46 = getelementptr inbounds i8, ptr %src.addr.178, i64 %idx.ext45
  %exitcond.not = icmp eq i32 %inc42, %height
  br i1 %exitcond.not, label %if.end, label %for.cond23.preheader

if.end:                                           ; preds = %for.cond23.preheader, %for.cond2.preheader, %for.cond17.preheader, %for.cond.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_weight_w16(ptr nocapture noundef writeonly %dst, i32 noundef %i_dst_stride, ptr nocapture noundef readonly %src, i32 noundef %i_src_stride, ptr nocapture noundef readonly %weight, i32 noundef %height) #0 {
entry:
  %i_denom = getelementptr inbounds i8, ptr %weight, i64 32
  %0 = load i32, ptr %i_denom, align 16
  %cmp = icmp sgt i32 %0, 0
  %cmp182 = icmp sgt i32 %height, 0
  br i1 %cmp, label %for.cond.preheader, label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %entry
  br i1 %cmp182, label %for.cond23.preheader.lr.ph, label %if.end

for.cond23.preheader.lr.ph:                       ; preds = %for.cond17.preheader
  %i_scale31 = getelementptr inbounds i8, ptr %weight, i64 36
  %i_offset33 = getelementptr inbounds i8, ptr %weight, i64 40
  %idx.ext43 = sext i32 %i_dst_stride to i64
  %idx.ext45 = sext i32 %i_src_stride to i64
  br label %for.cond23.preheader

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp182, label %for.cond2.preheader.lr.ph, label %if.end

for.cond2.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %i_scale = getelementptr inbounds i8, ptr %weight, i64 36
  %i_offset = getelementptr inbounds i8, ptr %weight, i64 40
  %idx.ext = sext i32 %i_dst_stride to i64
  %idx.ext13 = sext i32 %i_src_stride to i64
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond2.preheader.lr.ph, %for.cond2.preheader
  %y.085 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %inc12, %for.cond2.preheader ]
  %dst.addr.084 = phi ptr [ %dst, %for.cond2.preheader.lr.ph ], [ %add.ptr, %for.cond2.preheader ]
  %src.addr.083 = phi ptr [ %src, %for.cond2.preheader.lr.ph ], [ %add.ptr14, %for.cond2.preheader ]
  %1 = load i8, ptr %src.addr.083, align 1
  %conv = zext i8 %1 to i32
  %2 = load i32, ptr %i_scale, align 4
  %mul = mul nsw i32 %2, %conv
  %3 = load i32, ptr %i_denom, align 16
  %sub = add nsw i32 %3, -1
  %shl = shl nuw i32 1, %sub
  %add = add nsw i32 %shl, %mul
  %shr = ashr i32 %add, %3
  %4 = load i32, ptr %i_offset, align 8
  %add8 = add nsw i32 %shr, %4
  %tobool.not.i = icmp ult i32 %add8, 256
  %5 = icmp sgt i32 %add8, 0
  %shr.i = sext i1 %5 to i32
  %cond.i = select i1 %tobool.not.i, i32 %add8, i32 %shr.i
  %conv.i = trunc i32 %cond.i to i8
  store i8 %conv.i, ptr %dst.addr.084, align 1
  %arrayidx.1 = getelementptr inbounds i8, ptr %src.addr.083, i64 1
  %6 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %6 to i32
  %7 = load i32, ptr %i_scale, align 4
  %mul.1 = mul nsw i32 %7, %conv.1
  %8 = load i32, ptr %i_denom, align 16
  %sub.1 = add nsw i32 %8, -1
  %shl.1 = shl nuw i32 1, %sub.1
  %add.1 = add nsw i32 %shl.1, %mul.1
  %shr.1 = ashr i32 %add.1, %8
  %9 = load i32, ptr %i_offset, align 8
  %add8.1 = add nsw i32 %shr.1, %9
  %tobool.not.i.1 = icmp ult i32 %add8.1, 256
  %10 = icmp sgt i32 %add8.1, 0
  %shr.i.1 = sext i1 %10 to i32
  %cond.i.1 = select i1 %tobool.not.i.1, i32 %add8.1, i32 %shr.i.1
  %conv.i.1 = trunc i32 %cond.i.1 to i8
  %arrayidx10.1 = getelementptr inbounds i8, ptr %dst.addr.084, i64 1
  store i8 %conv.i.1, ptr %arrayidx10.1, align 1
  %arrayidx.2 = getelementptr inbounds i8, ptr %src.addr.083, i64 2
  %11 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %11 to i32
  %12 = load i32, ptr %i_scale, align 4
  %mul.2 = mul nsw i32 %12, %conv.2
  %13 = load i32, ptr %i_denom, align 16
  %sub.2 = add nsw i32 %13, -1
  %shl.2 = shl nuw i32 1, %sub.2
  %add.2 = add nsw i32 %shl.2, %mul.2
  %shr.2 = ashr i32 %add.2, %13
  %14 = load i32, ptr %i_offset, align 8
  %add8.2 = add nsw i32 %shr.2, %14
  %tobool.not.i.2 = icmp ult i32 %add8.2, 256
  %15 = icmp sgt i32 %add8.2, 0
  %shr.i.2 = sext i1 %15 to i32
  %cond.i.2 = select i1 %tobool.not.i.2, i32 %add8.2, i32 %shr.i.2
  %conv.i.2 = trunc i32 %cond.i.2 to i8
  %arrayidx10.2 = getelementptr inbounds i8, ptr %dst.addr.084, i64 2
  store i8 %conv.i.2, ptr %arrayidx10.2, align 1
  %arrayidx.3 = getelementptr inbounds i8, ptr %src.addr.083, i64 3
  %16 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %16 to i32
  %17 = load i32, ptr %i_scale, align 4
  %mul.3 = mul nsw i32 %17, %conv.3
  %18 = load i32, ptr %i_denom, align 16
  %sub.3 = add nsw i32 %18, -1
  %shl.3 = shl nuw i32 1, %sub.3
  %add.3 = add nsw i32 %shl.3, %mul.3
  %shr.3 = ashr i32 %add.3, %18
  %19 = load i32, ptr %i_offset, align 8
  %add8.3 = add nsw i32 %shr.3, %19
  %tobool.not.i.3 = icmp ult i32 %add8.3, 256
  %20 = icmp sgt i32 %add8.3, 0
  %shr.i.3 = sext i1 %20 to i32
  %cond.i.3 = select i1 %tobool.not.i.3, i32 %add8.3, i32 %shr.i.3
  %conv.i.3 = trunc i32 %cond.i.3 to i8
  %arrayidx10.3 = getelementptr inbounds i8, ptr %dst.addr.084, i64 3
  store i8 %conv.i.3, ptr %arrayidx10.3, align 1
  %arrayidx.4 = getelementptr inbounds i8, ptr %src.addr.083, i64 4
  %21 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %21 to i32
  %22 = load i32, ptr %i_scale, align 4
  %mul.4 = mul nsw i32 %22, %conv.4
  %23 = load i32, ptr %i_denom, align 16
  %sub.4 = add nsw i32 %23, -1
  %shl.4 = shl nuw i32 1, %sub.4
  %add.4 = add nsw i32 %shl.4, %mul.4
  %shr.4 = ashr i32 %add.4, %23
  %24 = load i32, ptr %i_offset, align 8
  %add8.4 = add nsw i32 %shr.4, %24
  %tobool.not.i.4 = icmp ult i32 %add8.4, 256
  %25 = icmp sgt i32 %add8.4, 0
  %shr.i.4 = sext i1 %25 to i32
  %cond.i.4 = select i1 %tobool.not.i.4, i32 %add8.4, i32 %shr.i.4
  %conv.i.4 = trunc i32 %cond.i.4 to i8
  %arrayidx10.4 = getelementptr inbounds i8, ptr %dst.addr.084, i64 4
  store i8 %conv.i.4, ptr %arrayidx10.4, align 1
  %arrayidx.5 = getelementptr inbounds i8, ptr %src.addr.083, i64 5
  %26 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %26 to i32
  %27 = load i32, ptr %i_scale, align 4
  %mul.5 = mul nsw i32 %27, %conv.5
  %28 = load i32, ptr %i_denom, align 16
  %sub.5 = add nsw i32 %28, -1
  %shl.5 = shl nuw i32 1, %sub.5
  %add.5 = add nsw i32 %shl.5, %mul.5
  %shr.5 = ashr i32 %add.5, %28
  %29 = load i32, ptr %i_offset, align 8
  %add8.5 = add nsw i32 %shr.5, %29
  %tobool.not.i.5 = icmp ult i32 %add8.5, 256
  %30 = icmp sgt i32 %add8.5, 0
  %shr.i.5 = sext i1 %30 to i32
  %cond.i.5 = select i1 %tobool.not.i.5, i32 %add8.5, i32 %shr.i.5
  %conv.i.5 = trunc i32 %cond.i.5 to i8
  %arrayidx10.5 = getelementptr inbounds i8, ptr %dst.addr.084, i64 5
  store i8 %conv.i.5, ptr %arrayidx10.5, align 1
  %arrayidx.6 = getelementptr inbounds i8, ptr %src.addr.083, i64 6
  %31 = load i8, ptr %arrayidx.6, align 1
  %conv.6 = zext i8 %31 to i32
  %32 = load i32, ptr %i_scale, align 4
  %mul.6 = mul nsw i32 %32, %conv.6
  %33 = load i32, ptr %i_denom, align 16
  %sub.6 = add nsw i32 %33, -1
  %shl.6 = shl nuw i32 1, %sub.6
  %add.6 = add nsw i32 %shl.6, %mul.6
  %shr.6 = ashr i32 %add.6, %33
  %34 = load i32, ptr %i_offset, align 8
  %add8.6 = add nsw i32 %shr.6, %34
  %tobool.not.i.6 = icmp ult i32 %add8.6, 256
  %35 = icmp sgt i32 %add8.6, 0
  %shr.i.6 = sext i1 %35 to i32
  %cond.i.6 = select i1 %tobool.not.i.6, i32 %add8.6, i32 %shr.i.6
  %conv.i.6 = trunc i32 %cond.i.6 to i8
  %arrayidx10.6 = getelementptr inbounds i8, ptr %dst.addr.084, i64 6
  store i8 %conv.i.6, ptr %arrayidx10.6, align 1
  %arrayidx.7 = getelementptr inbounds i8, ptr %src.addr.083, i64 7
  %36 = load i8, ptr %arrayidx.7, align 1
  %conv.7 = zext i8 %36 to i32
  %37 = load i32, ptr %i_scale, align 4
  %mul.7 = mul nsw i32 %37, %conv.7
  %38 = load i32, ptr %i_denom, align 16
  %sub.7 = add nsw i32 %38, -1
  %shl.7 = shl nuw i32 1, %sub.7
  %add.7 = add nsw i32 %shl.7, %mul.7
  %shr.7 = ashr i32 %add.7, %38
  %39 = load i32, ptr %i_offset, align 8
  %add8.7 = add nsw i32 %shr.7, %39
  %tobool.not.i.7 = icmp ult i32 %add8.7, 256
  %40 = icmp sgt i32 %add8.7, 0
  %shr.i.7 = sext i1 %40 to i32
  %cond.i.7 = select i1 %tobool.not.i.7, i32 %add8.7, i32 %shr.i.7
  %conv.i.7 = trunc i32 %cond.i.7 to i8
  %arrayidx10.7 = getelementptr inbounds i8, ptr %dst.addr.084, i64 7
  store i8 %conv.i.7, ptr %arrayidx10.7, align 1
  %arrayidx.8 = getelementptr inbounds i8, ptr %src.addr.083, i64 8
  %41 = load i8, ptr %arrayidx.8, align 1
  %conv.8 = zext i8 %41 to i32
  %42 = load i32, ptr %i_scale, align 4
  %mul.8 = mul nsw i32 %42, %conv.8
  %43 = load i32, ptr %i_denom, align 16
  %sub.8 = add nsw i32 %43, -1
  %shl.8 = shl nuw i32 1, %sub.8
  %add.8 = add nsw i32 %shl.8, %mul.8
  %shr.8 = ashr i32 %add.8, %43
  %44 = load i32, ptr %i_offset, align 8
  %add8.8 = add nsw i32 %shr.8, %44
  %tobool.not.i.8 = icmp ult i32 %add8.8, 256
  %45 = icmp sgt i32 %add8.8, 0
  %shr.i.8 = sext i1 %45 to i32
  %cond.i.8 = select i1 %tobool.not.i.8, i32 %add8.8, i32 %shr.i.8
  %conv.i.8 = trunc i32 %cond.i.8 to i8
  %arrayidx10.8 = getelementptr inbounds i8, ptr %dst.addr.084, i64 8
  store i8 %conv.i.8, ptr %arrayidx10.8, align 1
  %arrayidx.9 = getelementptr inbounds i8, ptr %src.addr.083, i64 9
  %46 = load i8, ptr %arrayidx.9, align 1
  %conv.9 = zext i8 %46 to i32
  %47 = load i32, ptr %i_scale, align 4
  %mul.9 = mul nsw i32 %47, %conv.9
  %48 = load i32, ptr %i_denom, align 16
  %sub.9 = add nsw i32 %48, -1
  %shl.9 = shl nuw i32 1, %sub.9
  %add.9 = add nsw i32 %shl.9, %mul.9
  %shr.9 = ashr i32 %add.9, %48
  %49 = load i32, ptr %i_offset, align 8
  %add8.9 = add nsw i32 %shr.9, %49
  %tobool.not.i.9 = icmp ult i32 %add8.9, 256
  %50 = icmp sgt i32 %add8.9, 0
  %shr.i.9 = sext i1 %50 to i32
  %cond.i.9 = select i1 %tobool.not.i.9, i32 %add8.9, i32 %shr.i.9
  %conv.i.9 = trunc i32 %cond.i.9 to i8
  %arrayidx10.9 = getelementptr inbounds i8, ptr %dst.addr.084, i64 9
  store i8 %conv.i.9, ptr %arrayidx10.9, align 1
  %arrayidx.10 = getelementptr inbounds i8, ptr %src.addr.083, i64 10
  %51 = load i8, ptr %arrayidx.10, align 1
  %conv.10 = zext i8 %51 to i32
  %52 = load i32, ptr %i_scale, align 4
  %mul.10 = mul nsw i32 %52, %conv.10
  %53 = load i32, ptr %i_denom, align 16
  %sub.10 = add nsw i32 %53, -1
  %shl.10 = shl nuw i32 1, %sub.10
  %add.10 = add nsw i32 %shl.10, %mul.10
  %shr.10 = ashr i32 %add.10, %53
  %54 = load i32, ptr %i_offset, align 8
  %add8.10 = add nsw i32 %shr.10, %54
  %tobool.not.i.10 = icmp ult i32 %add8.10, 256
  %55 = icmp sgt i32 %add8.10, 0
  %shr.i.10 = sext i1 %55 to i32
  %cond.i.10 = select i1 %tobool.not.i.10, i32 %add8.10, i32 %shr.i.10
  %conv.i.10 = trunc i32 %cond.i.10 to i8
  %arrayidx10.10 = getelementptr inbounds i8, ptr %dst.addr.084, i64 10
  store i8 %conv.i.10, ptr %arrayidx10.10, align 1
  %arrayidx.11 = getelementptr inbounds i8, ptr %src.addr.083, i64 11
  %56 = load i8, ptr %arrayidx.11, align 1
  %conv.11 = zext i8 %56 to i32
  %57 = load i32, ptr %i_scale, align 4
  %mul.11 = mul nsw i32 %57, %conv.11
  %58 = load i32, ptr %i_denom, align 16
  %sub.11 = add nsw i32 %58, -1
  %shl.11 = shl nuw i32 1, %sub.11
  %add.11 = add nsw i32 %shl.11, %mul.11
  %shr.11 = ashr i32 %add.11, %58
  %59 = load i32, ptr %i_offset, align 8
  %add8.11 = add nsw i32 %shr.11, %59
  %tobool.not.i.11 = icmp ult i32 %add8.11, 256
  %60 = icmp sgt i32 %add8.11, 0
  %shr.i.11 = sext i1 %60 to i32
  %cond.i.11 = select i1 %tobool.not.i.11, i32 %add8.11, i32 %shr.i.11
  %conv.i.11 = trunc i32 %cond.i.11 to i8
  %arrayidx10.11 = getelementptr inbounds i8, ptr %dst.addr.084, i64 11
  store i8 %conv.i.11, ptr %arrayidx10.11, align 1
  %arrayidx.12 = getelementptr inbounds i8, ptr %src.addr.083, i64 12
  %61 = load i8, ptr %arrayidx.12, align 1
  %conv.12 = zext i8 %61 to i32
  %62 = load i32, ptr %i_scale, align 4
  %mul.12 = mul nsw i32 %62, %conv.12
  %63 = load i32, ptr %i_denom, align 16
  %sub.12 = add nsw i32 %63, -1
  %shl.12 = shl nuw i32 1, %sub.12
  %add.12 = add nsw i32 %shl.12, %mul.12
  %shr.12 = ashr i32 %add.12, %63
  %64 = load i32, ptr %i_offset, align 8
  %add8.12 = add nsw i32 %shr.12, %64
  %tobool.not.i.12 = icmp ult i32 %add8.12, 256
  %65 = icmp sgt i32 %add8.12, 0
  %shr.i.12 = sext i1 %65 to i32
  %cond.i.12 = select i1 %tobool.not.i.12, i32 %add8.12, i32 %shr.i.12
  %conv.i.12 = trunc i32 %cond.i.12 to i8
  %arrayidx10.12 = getelementptr inbounds i8, ptr %dst.addr.084, i64 12
  store i8 %conv.i.12, ptr %arrayidx10.12, align 1
  %arrayidx.13 = getelementptr inbounds i8, ptr %src.addr.083, i64 13
  %66 = load i8, ptr %arrayidx.13, align 1
  %conv.13 = zext i8 %66 to i32
  %67 = load i32, ptr %i_scale, align 4
  %mul.13 = mul nsw i32 %67, %conv.13
  %68 = load i32, ptr %i_denom, align 16
  %sub.13 = add nsw i32 %68, -1
  %shl.13 = shl nuw i32 1, %sub.13
  %add.13 = add nsw i32 %shl.13, %mul.13
  %shr.13 = ashr i32 %add.13, %68
  %69 = load i32, ptr %i_offset, align 8
  %add8.13 = add nsw i32 %shr.13, %69
  %tobool.not.i.13 = icmp ult i32 %add8.13, 256
  %70 = icmp sgt i32 %add8.13, 0
  %shr.i.13 = sext i1 %70 to i32
  %cond.i.13 = select i1 %tobool.not.i.13, i32 %add8.13, i32 %shr.i.13
  %conv.i.13 = trunc i32 %cond.i.13 to i8
  %arrayidx10.13 = getelementptr inbounds i8, ptr %dst.addr.084, i64 13
  store i8 %conv.i.13, ptr %arrayidx10.13, align 1
  %arrayidx.14 = getelementptr inbounds i8, ptr %src.addr.083, i64 14
  %71 = load i8, ptr %arrayidx.14, align 1
  %conv.14 = zext i8 %71 to i32
  %72 = load i32, ptr %i_scale, align 4
  %mul.14 = mul nsw i32 %72, %conv.14
  %73 = load i32, ptr %i_denom, align 16
  %sub.14 = add nsw i32 %73, -1
  %shl.14 = shl nuw i32 1, %sub.14
  %add.14 = add nsw i32 %shl.14, %mul.14
  %shr.14 = ashr i32 %add.14, %73
  %74 = load i32, ptr %i_offset, align 8
  %add8.14 = add nsw i32 %shr.14, %74
  %tobool.not.i.14 = icmp ult i32 %add8.14, 256
  %75 = icmp sgt i32 %add8.14, 0
  %shr.i.14 = sext i1 %75 to i32
  %cond.i.14 = select i1 %tobool.not.i.14, i32 %add8.14, i32 %shr.i.14
  %conv.i.14 = trunc i32 %cond.i.14 to i8
  %arrayidx10.14 = getelementptr inbounds i8, ptr %dst.addr.084, i64 14
  store i8 %conv.i.14, ptr %arrayidx10.14, align 1
  %arrayidx.15 = getelementptr inbounds i8, ptr %src.addr.083, i64 15
  %76 = load i8, ptr %arrayidx.15, align 1
  %conv.15 = zext i8 %76 to i32
  %77 = load i32, ptr %i_scale, align 4
  %mul.15 = mul nsw i32 %77, %conv.15
  %78 = load i32, ptr %i_denom, align 16
  %sub.15 = add nsw i32 %78, -1
  %shl.15 = shl nuw i32 1, %sub.15
  %add.15 = add nsw i32 %shl.15, %mul.15
  %shr.15 = ashr i32 %add.15, %78
  %79 = load i32, ptr %i_offset, align 8
  %add8.15 = add nsw i32 %shr.15, %79
  %tobool.not.i.15 = icmp ult i32 %add8.15, 256
  %80 = icmp sgt i32 %add8.15, 0
  %shr.i.15 = sext i1 %80 to i32
  %cond.i.15 = select i1 %tobool.not.i.15, i32 %add8.15, i32 %shr.i.15
  %conv.i.15 = trunc i32 %cond.i.15 to i8
  %arrayidx10.15 = getelementptr inbounds i8, ptr %dst.addr.084, i64 15
  store i8 %conv.i.15, ptr %arrayidx10.15, align 1
  %inc12 = add nuw nsw i32 %y.085, 1
  %add.ptr = getelementptr inbounds i8, ptr %dst.addr.084, i64 %idx.ext
  %add.ptr14 = getelementptr inbounds i8, ptr %src.addr.083, i64 %idx.ext13
  %exitcond90.not = icmp eq i32 %inc12, %height
  br i1 %exitcond90.not, label %if.end, label %for.cond2.preheader

for.cond23.preheader:                             ; preds = %for.cond23.preheader.lr.ph, %for.cond23.preheader
  %y16.080 = phi i32 [ 0, %for.cond23.preheader.lr.ph ], [ %inc42, %for.cond23.preheader ]
  %dst.addr.179 = phi ptr [ %dst, %for.cond23.preheader.lr.ph ], [ %add.ptr44, %for.cond23.preheader ]
  %src.addr.178 = phi ptr [ %src, %for.cond23.preheader.lr.ph ], [ %add.ptr46, %for.cond23.preheader ]
  %81 = load i8, ptr %src.addr.178, align 1
  %conv30 = zext i8 %81 to i32
  %82 = load i32, ptr %i_scale31, align 4
  %mul32 = mul nsw i32 %82, %conv30
  %83 = load i32, ptr %i_offset33, align 8
  %add34 = add nsw i32 %mul32, %83
  %tobool.not.i71 = icmp ult i32 %add34, 256
  %84 = icmp sgt i32 %add34, 0
  %shr.i72 = sext i1 %84 to i32
  %cond.i73 = select i1 %tobool.not.i71, i32 %add34, i32 %shr.i72
  %conv.i74 = trunc i32 %cond.i73 to i8
  store i8 %conv.i74, ptr %dst.addr.179, align 1
  %arrayidx29.1 = getelementptr inbounds i8, ptr %src.addr.178, i64 1
  %85 = load i8, ptr %arrayidx29.1, align 1
  %conv30.1 = zext i8 %85 to i32
  %86 = load i32, ptr %i_scale31, align 4
  %mul32.1 = mul nsw i32 %86, %conv30.1
  %87 = load i32, ptr %i_offset33, align 8
  %add34.1 = add nsw i32 %mul32.1, %87
  %tobool.not.i71.1 = icmp ult i32 %add34.1, 256
  %88 = icmp sgt i32 %add34.1, 0
  %shr.i72.1 = sext i1 %88 to i32
  %cond.i73.1 = select i1 %tobool.not.i71.1, i32 %add34.1, i32 %shr.i72.1
  %conv.i74.1 = trunc i32 %cond.i73.1 to i8
  %arrayidx37.1 = getelementptr inbounds i8, ptr %dst.addr.179, i64 1
  store i8 %conv.i74.1, ptr %arrayidx37.1, align 1
  %arrayidx29.2 = getelementptr inbounds i8, ptr %src.addr.178, i64 2
  %89 = load i8, ptr %arrayidx29.2, align 1
  %conv30.2 = zext i8 %89 to i32
  %90 = load i32, ptr %i_scale31, align 4
  %mul32.2 = mul nsw i32 %90, %conv30.2
  %91 = load i32, ptr %i_offset33, align 8
  %add34.2 = add nsw i32 %mul32.2, %91
  %tobool.not.i71.2 = icmp ult i32 %add34.2, 256
  %92 = icmp sgt i32 %add34.2, 0
  %shr.i72.2 = sext i1 %92 to i32
  %cond.i73.2 = select i1 %tobool.not.i71.2, i32 %add34.2, i32 %shr.i72.2
  %conv.i74.2 = trunc i32 %cond.i73.2 to i8
  %arrayidx37.2 = getelementptr inbounds i8, ptr %dst.addr.179, i64 2
  store i8 %conv.i74.2, ptr %arrayidx37.2, align 1
  %arrayidx29.3 = getelementptr inbounds i8, ptr %src.addr.178, i64 3
  %93 = load i8, ptr %arrayidx29.3, align 1
  %conv30.3 = zext i8 %93 to i32
  %94 = load i32, ptr %i_scale31, align 4
  %mul32.3 = mul nsw i32 %94, %conv30.3
  %95 = load i32, ptr %i_offset33, align 8
  %add34.3 = add nsw i32 %mul32.3, %95
  %tobool.not.i71.3 = icmp ult i32 %add34.3, 256
  %96 = icmp sgt i32 %add34.3, 0
  %shr.i72.3 = sext i1 %96 to i32
  %cond.i73.3 = select i1 %tobool.not.i71.3, i32 %add34.3, i32 %shr.i72.3
  %conv.i74.3 = trunc i32 %cond.i73.3 to i8
  %arrayidx37.3 = getelementptr inbounds i8, ptr %dst.addr.179, i64 3
  store i8 %conv.i74.3, ptr %arrayidx37.3, align 1
  %arrayidx29.4 = getelementptr inbounds i8, ptr %src.addr.178, i64 4
  %97 = load i8, ptr %arrayidx29.4, align 1
  %conv30.4 = zext i8 %97 to i32
  %98 = load i32, ptr %i_scale31, align 4
  %mul32.4 = mul nsw i32 %98, %conv30.4
  %99 = load i32, ptr %i_offset33, align 8
  %add34.4 = add nsw i32 %mul32.4, %99
  %tobool.not.i71.4 = icmp ult i32 %add34.4, 256
  %100 = icmp sgt i32 %add34.4, 0
  %shr.i72.4 = sext i1 %100 to i32
  %cond.i73.4 = select i1 %tobool.not.i71.4, i32 %add34.4, i32 %shr.i72.4
  %conv.i74.4 = trunc i32 %cond.i73.4 to i8
  %arrayidx37.4 = getelementptr inbounds i8, ptr %dst.addr.179, i64 4
  store i8 %conv.i74.4, ptr %arrayidx37.4, align 1
  %arrayidx29.5 = getelementptr inbounds i8, ptr %src.addr.178, i64 5
  %101 = load i8, ptr %arrayidx29.5, align 1
  %conv30.5 = zext i8 %101 to i32
  %102 = load i32, ptr %i_scale31, align 4
  %mul32.5 = mul nsw i32 %102, %conv30.5
  %103 = load i32, ptr %i_offset33, align 8
  %add34.5 = add nsw i32 %mul32.5, %103
  %tobool.not.i71.5 = icmp ult i32 %add34.5, 256
  %104 = icmp sgt i32 %add34.5, 0
  %shr.i72.5 = sext i1 %104 to i32
  %cond.i73.5 = select i1 %tobool.not.i71.5, i32 %add34.5, i32 %shr.i72.5
  %conv.i74.5 = trunc i32 %cond.i73.5 to i8
  %arrayidx37.5 = getelementptr inbounds i8, ptr %dst.addr.179, i64 5
  store i8 %conv.i74.5, ptr %arrayidx37.5, align 1
  %arrayidx29.6 = getelementptr inbounds i8, ptr %src.addr.178, i64 6
  %105 = load i8, ptr %arrayidx29.6, align 1
  %conv30.6 = zext i8 %105 to i32
  %106 = load i32, ptr %i_scale31, align 4
  %mul32.6 = mul nsw i32 %106, %conv30.6
  %107 = load i32, ptr %i_offset33, align 8
  %add34.6 = add nsw i32 %mul32.6, %107
  %tobool.not.i71.6 = icmp ult i32 %add34.6, 256
  %108 = icmp sgt i32 %add34.6, 0
  %shr.i72.6 = sext i1 %108 to i32
  %cond.i73.6 = select i1 %tobool.not.i71.6, i32 %add34.6, i32 %shr.i72.6
  %conv.i74.6 = trunc i32 %cond.i73.6 to i8
  %arrayidx37.6 = getelementptr inbounds i8, ptr %dst.addr.179, i64 6
  store i8 %conv.i74.6, ptr %arrayidx37.6, align 1
  %arrayidx29.7 = getelementptr inbounds i8, ptr %src.addr.178, i64 7
  %109 = load i8, ptr %arrayidx29.7, align 1
  %conv30.7 = zext i8 %109 to i32
  %110 = load i32, ptr %i_scale31, align 4
  %mul32.7 = mul nsw i32 %110, %conv30.7
  %111 = load i32, ptr %i_offset33, align 8
  %add34.7 = add nsw i32 %mul32.7, %111
  %tobool.not.i71.7 = icmp ult i32 %add34.7, 256
  %112 = icmp sgt i32 %add34.7, 0
  %shr.i72.7 = sext i1 %112 to i32
  %cond.i73.7 = select i1 %tobool.not.i71.7, i32 %add34.7, i32 %shr.i72.7
  %conv.i74.7 = trunc i32 %cond.i73.7 to i8
  %arrayidx37.7 = getelementptr inbounds i8, ptr %dst.addr.179, i64 7
  store i8 %conv.i74.7, ptr %arrayidx37.7, align 1
  %arrayidx29.8 = getelementptr inbounds i8, ptr %src.addr.178, i64 8
  %113 = load i8, ptr %arrayidx29.8, align 1
  %conv30.8 = zext i8 %113 to i32
  %114 = load i32, ptr %i_scale31, align 4
  %mul32.8 = mul nsw i32 %114, %conv30.8
  %115 = load i32, ptr %i_offset33, align 8
  %add34.8 = add nsw i32 %mul32.8, %115
  %tobool.not.i71.8 = icmp ult i32 %add34.8, 256
  %116 = icmp sgt i32 %add34.8, 0
  %shr.i72.8 = sext i1 %116 to i32
  %cond.i73.8 = select i1 %tobool.not.i71.8, i32 %add34.8, i32 %shr.i72.8
  %conv.i74.8 = trunc i32 %cond.i73.8 to i8
  %arrayidx37.8 = getelementptr inbounds i8, ptr %dst.addr.179, i64 8
  store i8 %conv.i74.8, ptr %arrayidx37.8, align 1
  %arrayidx29.9 = getelementptr inbounds i8, ptr %src.addr.178, i64 9
  %117 = load i8, ptr %arrayidx29.9, align 1
  %conv30.9 = zext i8 %117 to i32
  %118 = load i32, ptr %i_scale31, align 4
  %mul32.9 = mul nsw i32 %118, %conv30.9
  %119 = load i32, ptr %i_offset33, align 8
  %add34.9 = add nsw i32 %mul32.9, %119
  %tobool.not.i71.9 = icmp ult i32 %add34.9, 256
  %120 = icmp sgt i32 %add34.9, 0
  %shr.i72.9 = sext i1 %120 to i32
  %cond.i73.9 = select i1 %tobool.not.i71.9, i32 %add34.9, i32 %shr.i72.9
  %conv.i74.9 = trunc i32 %cond.i73.9 to i8
  %arrayidx37.9 = getelementptr inbounds i8, ptr %dst.addr.179, i64 9
  store i8 %conv.i74.9, ptr %arrayidx37.9, align 1
  %arrayidx29.10 = getelementptr inbounds i8, ptr %src.addr.178, i64 10
  %121 = load i8, ptr %arrayidx29.10, align 1
  %conv30.10 = zext i8 %121 to i32
  %122 = load i32, ptr %i_scale31, align 4
  %mul32.10 = mul nsw i32 %122, %conv30.10
  %123 = load i32, ptr %i_offset33, align 8
  %add34.10 = add nsw i32 %mul32.10, %123
  %tobool.not.i71.10 = icmp ult i32 %add34.10, 256
  %124 = icmp sgt i32 %add34.10, 0
  %shr.i72.10 = sext i1 %124 to i32
  %cond.i73.10 = select i1 %tobool.not.i71.10, i32 %add34.10, i32 %shr.i72.10
  %conv.i74.10 = trunc i32 %cond.i73.10 to i8
  %arrayidx37.10 = getelementptr inbounds i8, ptr %dst.addr.179, i64 10
  store i8 %conv.i74.10, ptr %arrayidx37.10, align 1
  %arrayidx29.11 = getelementptr inbounds i8, ptr %src.addr.178, i64 11
  %125 = load i8, ptr %arrayidx29.11, align 1
  %conv30.11 = zext i8 %125 to i32
  %126 = load i32, ptr %i_scale31, align 4
  %mul32.11 = mul nsw i32 %126, %conv30.11
  %127 = load i32, ptr %i_offset33, align 8
  %add34.11 = add nsw i32 %mul32.11, %127
  %tobool.not.i71.11 = icmp ult i32 %add34.11, 256
  %128 = icmp sgt i32 %add34.11, 0
  %shr.i72.11 = sext i1 %128 to i32
  %cond.i73.11 = select i1 %tobool.not.i71.11, i32 %add34.11, i32 %shr.i72.11
  %conv.i74.11 = trunc i32 %cond.i73.11 to i8
  %arrayidx37.11 = getelementptr inbounds i8, ptr %dst.addr.179, i64 11
  store i8 %conv.i74.11, ptr %arrayidx37.11, align 1
  %arrayidx29.12 = getelementptr inbounds i8, ptr %src.addr.178, i64 12
  %129 = load i8, ptr %arrayidx29.12, align 1
  %conv30.12 = zext i8 %129 to i32
  %130 = load i32, ptr %i_scale31, align 4
  %mul32.12 = mul nsw i32 %130, %conv30.12
  %131 = load i32, ptr %i_offset33, align 8
  %add34.12 = add nsw i32 %mul32.12, %131
  %tobool.not.i71.12 = icmp ult i32 %add34.12, 256
  %132 = icmp sgt i32 %add34.12, 0
  %shr.i72.12 = sext i1 %132 to i32
  %cond.i73.12 = select i1 %tobool.not.i71.12, i32 %add34.12, i32 %shr.i72.12
  %conv.i74.12 = trunc i32 %cond.i73.12 to i8
  %arrayidx37.12 = getelementptr inbounds i8, ptr %dst.addr.179, i64 12
  store i8 %conv.i74.12, ptr %arrayidx37.12, align 1
  %arrayidx29.13 = getelementptr inbounds i8, ptr %src.addr.178, i64 13
  %133 = load i8, ptr %arrayidx29.13, align 1
  %conv30.13 = zext i8 %133 to i32
  %134 = load i32, ptr %i_scale31, align 4
  %mul32.13 = mul nsw i32 %134, %conv30.13
  %135 = load i32, ptr %i_offset33, align 8
  %add34.13 = add nsw i32 %mul32.13, %135
  %tobool.not.i71.13 = icmp ult i32 %add34.13, 256
  %136 = icmp sgt i32 %add34.13, 0
  %shr.i72.13 = sext i1 %136 to i32
  %cond.i73.13 = select i1 %tobool.not.i71.13, i32 %add34.13, i32 %shr.i72.13
  %conv.i74.13 = trunc i32 %cond.i73.13 to i8
  %arrayidx37.13 = getelementptr inbounds i8, ptr %dst.addr.179, i64 13
  store i8 %conv.i74.13, ptr %arrayidx37.13, align 1
  %arrayidx29.14 = getelementptr inbounds i8, ptr %src.addr.178, i64 14
  %137 = load i8, ptr %arrayidx29.14, align 1
  %conv30.14 = zext i8 %137 to i32
  %138 = load i32, ptr %i_scale31, align 4
  %mul32.14 = mul nsw i32 %138, %conv30.14
  %139 = load i32, ptr %i_offset33, align 8
  %add34.14 = add nsw i32 %mul32.14, %139
  %tobool.not.i71.14 = icmp ult i32 %add34.14, 256
  %140 = icmp sgt i32 %add34.14, 0
  %shr.i72.14 = sext i1 %140 to i32
  %cond.i73.14 = select i1 %tobool.not.i71.14, i32 %add34.14, i32 %shr.i72.14
  %conv.i74.14 = trunc i32 %cond.i73.14 to i8
  %arrayidx37.14 = getelementptr inbounds i8, ptr %dst.addr.179, i64 14
  store i8 %conv.i74.14, ptr %arrayidx37.14, align 1
  %arrayidx29.15 = getelementptr inbounds i8, ptr %src.addr.178, i64 15
  %141 = load i8, ptr %arrayidx29.15, align 1
  %conv30.15 = zext i8 %141 to i32
  %142 = load i32, ptr %i_scale31, align 4
  %mul32.15 = mul nsw i32 %142, %conv30.15
  %143 = load i32, ptr %i_offset33, align 8
  %add34.15 = add nsw i32 %mul32.15, %143
  %tobool.not.i71.15 = icmp ult i32 %add34.15, 256
  %144 = icmp sgt i32 %add34.15, 0
  %shr.i72.15 = sext i1 %144 to i32
  %cond.i73.15 = select i1 %tobool.not.i71.15, i32 %add34.15, i32 %shr.i72.15
  %conv.i74.15 = trunc i32 %cond.i73.15 to i8
  %arrayidx37.15 = getelementptr inbounds i8, ptr %dst.addr.179, i64 15
  store i8 %conv.i74.15, ptr %arrayidx37.15, align 1
  %inc42 = add nuw nsw i32 %y16.080, 1
  %add.ptr44 = getelementptr inbounds i8, ptr %dst.addr.179, i64 %idx.ext43
  %add.ptr46 = getelementptr inbounds i8, ptr %src.addr.178, i64 %idx.ext45
  %exitcond.not = icmp eq i32 %inc42, %height
  br i1 %exitcond.not, label %if.end, label %for.cond23.preheader

if.end:                                           ; preds = %for.cond23.preheader, %for.cond2.preheader, %for.cond17.preheader, %for.cond.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_weight_w20(ptr nocapture noundef writeonly %dst, i32 noundef %i_dst_stride, ptr nocapture noundef readonly %src, i32 noundef %i_src_stride, ptr nocapture noundef readonly %weight, i32 noundef %height) #0 {
entry:
  %i_denom = getelementptr inbounds i8, ptr %weight, i64 32
  %0 = load i32, ptr %i_denom, align 16
  %cmp = icmp sgt i32 %0, 0
  %cmp182 = icmp sgt i32 %height, 0
  br i1 %cmp, label %for.cond.preheader, label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %entry
  br i1 %cmp182, label %for.cond23.preheader.lr.ph, label %if.end

for.cond23.preheader.lr.ph:                       ; preds = %for.cond17.preheader
  %i_scale31 = getelementptr inbounds i8, ptr %weight, i64 36
  %i_offset33 = getelementptr inbounds i8, ptr %weight, i64 40
  %idx.ext43 = sext i32 %i_dst_stride to i64
  %idx.ext45 = sext i32 %i_src_stride to i64
  br label %for.cond23.preheader

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp182, label %for.cond2.preheader.lr.ph, label %if.end

for.cond2.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %i_scale = getelementptr inbounds i8, ptr %weight, i64 36
  %i_offset = getelementptr inbounds i8, ptr %weight, i64 40
  %idx.ext = sext i32 %i_dst_stride to i64
  %idx.ext13 = sext i32 %i_src_stride to i64
  %1 = add nsw i32 %height, -1
  %2 = zext i32 %1 to i64
  %3 = mul nsw i64 %idx.ext, %2
  %4 = getelementptr i8, ptr %dst, i64 %3
  %scevgep = getelementptr i8, ptr %4, i64 20
  %5 = mul nsw i64 %idx.ext13, %2
  %6 = getelementptr i8, ptr %src, i64 %5
  %scevgep93 = getelementptr i8, ptr %6, i64 20
  %scevgep94 = getelementptr i8, ptr %weight, i64 44
  %bound0 = icmp ugt ptr %scevgep93, %dst
  %bound1 = icmp ugt ptr %scevgep, %src
  %found.conflict = and i1 %bound0, %bound1
  %7 = or i32 %i_dst_stride, %i_src_stride
  %8 = icmp slt i32 %7, 0
  %9 = or i1 %found.conflict, %8
  %bound096 = icmp ugt ptr %scevgep94, %dst
  %bound197 = icmp ult ptr %i_denom, %scevgep
  %found.conflict98 = and i1 %bound096, %bound197
  %stride.check99 = icmp slt i32 %i_dst_stride, 0
  %10 = or i1 %found.conflict98, %stride.check99
  %conflict.rdx = or i1 %9, %10
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %for.cond.cleanup4, %for.cond2.preheader.lr.ph
  %y.085 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %inc12, %for.cond.cleanup4 ]
  %dst.addr.084 = phi ptr [ %dst, %for.cond2.preheader.lr.ph ], [ %add.ptr, %for.cond.cleanup4 ]
  %src.addr.083 = phi ptr [ %src, %for.cond2.preheader.lr.ph ], [ %add.ptr14, %for.cond.cleanup4 ]
  br i1 %conflict.rdx, label %for.body5.preheader, label %vector.body

for.body5.preheader:                              ; preds = %vector.body, %vector.memcheck
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 16, %vector.body ]
  br label %for.body5

vector.body:                                      ; preds = %vector.memcheck
  %11 = getelementptr inbounds i8, ptr %src.addr.083, i64 4
  %12 = getelementptr inbounds i8, ptr %src.addr.083, i64 8
  %13 = getelementptr inbounds i8, ptr %src.addr.083, i64 12
  %wide.load = load <4 x i8>, ptr %src.addr.083, align 1, !alias.scope !226
  %wide.load100 = load <4 x i8>, ptr %11, align 1, !alias.scope !226
  %wide.load101 = load <4 x i8>, ptr %12, align 1, !alias.scope !226
  %wide.load102 = load <4 x i8>, ptr %13, align 1, !alias.scope !226
  %14 = zext <4 x i8> %wide.load to <4 x i32>
  %15 = zext <4 x i8> %wide.load100 to <4 x i32>
  %16 = zext <4 x i8> %wide.load101 to <4 x i32>
  %17 = zext <4 x i8> %wide.load102 to <4 x i32>
  %18 = load i32, ptr %i_scale, align 4, !alias.scope !229
  %broadcast.splatinsert107 = insertelement <4 x i32> poison, i32 %18, i64 0
  %broadcast.splat108 = shufflevector <4 x i32> %broadcast.splatinsert107, <4 x i32> poison, <4 x i32> zeroinitializer
  %19 = mul nsw <4 x i32> %broadcast.splat108, %14
  %20 = mul nsw <4 x i32> %broadcast.splat108, %15
  %21 = mul nsw <4 x i32> %broadcast.splat108, %16
  %22 = mul nsw <4 x i32> %broadcast.splat108, %17
  %23 = load i32, ptr %i_denom, align 16, !alias.scope !229
  %broadcast.splatinsert115 = insertelement <4 x i32> poison, i32 %23, i64 0
  %broadcast.splat116 = shufflevector <4 x i32> %broadcast.splatinsert115, <4 x i32> poison, <4 x i32> zeroinitializer
  %24 = add nsw <4 x i32> %broadcast.splat116, <i32 -1, i32 -1, i32 -1, i32 -1>
  %25 = add nsw <4 x i32> %broadcast.splat116, <i32 -1, i32 -1, i32 -1, i32 -1>
  %26 = add nsw <4 x i32> %broadcast.splat116, <i32 -1, i32 -1, i32 -1, i32 -1>
  %27 = add nsw <4 x i32> %broadcast.splat116, <i32 -1, i32 -1, i32 -1, i32 -1>
  %28 = shl nuw <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %24
  %29 = shl nuw <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %25
  %30 = shl nuw <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %26
  %31 = shl nuw <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %27
  %32 = add nsw <4 x i32> %28, %19
  %33 = add nsw <4 x i32> %29, %20
  %34 = add nsw <4 x i32> %30, %21
  %35 = add nsw <4 x i32> %31, %22
  %36 = ashr <4 x i32> %32, %broadcast.splat116
  %37 = ashr <4 x i32> %33, %broadcast.splat116
  %38 = ashr <4 x i32> %34, %broadcast.splat116
  %39 = ashr <4 x i32> %35, %broadcast.splat116
  %40 = load i32, ptr %i_offset, align 8, !alias.scope !229
  %broadcast.splatinsert123 = insertelement <4 x i32> poison, i32 %40, i64 0
  %broadcast.splat124 = shufflevector <4 x i32> %broadcast.splatinsert123, <4 x i32> poison, <4 x i32> zeroinitializer
  %41 = add nsw <4 x i32> %36, %broadcast.splat124
  %42 = add nsw <4 x i32> %37, %broadcast.splat124
  %43 = add nsw <4 x i32> %38, %broadcast.splat124
  %44 = add nsw <4 x i32> %39, %broadcast.splat124
  %45 = icmp ult <4 x i32> %41, <i32 256, i32 256, i32 256, i32 256>
  %46 = icmp ult <4 x i32> %42, <i32 256, i32 256, i32 256, i32 256>
  %47 = icmp ult <4 x i32> %43, <i32 256, i32 256, i32 256, i32 256>
  %48 = icmp ult <4 x i32> %44, <i32 256, i32 256, i32 256, i32 256>
  %49 = icmp sgt <4 x i32> %41, zeroinitializer
  %50 = icmp sgt <4 x i32> %42, zeroinitializer
  %51 = icmp sgt <4 x i32> %43, zeroinitializer
  %52 = icmp sgt <4 x i32> %44, zeroinitializer
  %53 = sext <4 x i1> %49 to <4 x i32>
  %54 = sext <4 x i1> %50 to <4 x i32>
  %55 = sext <4 x i1> %51 to <4 x i32>
  %56 = sext <4 x i1> %52 to <4 x i32>
  %57 = select <4 x i1> %45, <4 x i32> %41, <4 x i32> %53
  %58 = select <4 x i1> %46, <4 x i32> %42, <4 x i32> %54
  %59 = select <4 x i1> %47, <4 x i32> %43, <4 x i32> %55
  %60 = select <4 x i1> %48, <4 x i32> %44, <4 x i32> %56
  %61 = trunc <4 x i32> %57 to <4 x i8>
  %62 = trunc <4 x i32> %58 to <4 x i8>
  %63 = trunc <4 x i32> %59 to <4 x i8>
  %64 = trunc <4 x i32> %60 to <4 x i8>
  %65 = getelementptr inbounds i8, ptr %dst.addr.084, i64 4
  %66 = getelementptr inbounds i8, ptr %dst.addr.084, i64 8
  %67 = getelementptr inbounds i8, ptr %dst.addr.084, i64 12
  store <4 x i8> %61, ptr %dst.addr.084, align 1, !alias.scope !231, !noalias !233
  store <4 x i8> %62, ptr %65, align 1, !alias.scope !231, !noalias !233
  store <4 x i8> %63, ptr %66, align 1, !alias.scope !231, !noalias !233
  store <4 x i8> %64, ptr %67, align 1, !alias.scope !231, !noalias !233
  br label %for.body5.preheader

for.cond.cleanup4:                                ; preds = %for.body5
  %inc12 = add nuw nsw i32 %y.085, 1
  %add.ptr = getelementptr inbounds i8, ptr %dst.addr.084, i64 %idx.ext
  %add.ptr14 = getelementptr inbounds i8, ptr %src.addr.083, i64 %idx.ext13
  %exitcond90.not = icmp eq i32 %inc12, %height
  br i1 %exitcond90.not, label %if.end, label %vector.memcheck

for.body5:                                        ; preds = %for.body5.preheader, %for.body5
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ %indvars.iv.ph, %for.body5.preheader ]
  %arrayidx = getelementptr inbounds i8, ptr %src.addr.083, i64 %indvars.iv
  %68 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %68 to i32
  %69 = load i32, ptr %i_scale, align 4
  %mul = mul nsw i32 %69, %conv
  %70 = load i32, ptr %i_denom, align 16
  %sub = add nsw i32 %70, -1
  %shl = shl nuw i32 1, %sub
  %add = add nsw i32 %shl, %mul
  %shr = ashr i32 %add, %70
  %71 = load i32, ptr %i_offset, align 8
  %add8 = add nsw i32 %shr, %71
  %tobool.not.i = icmp ult i32 %add8, 256
  %72 = icmp sgt i32 %add8, 0
  %shr.i = sext i1 %72 to i32
  %cond.i = select i1 %tobool.not.i, i32 %add8, i32 %shr.i
  %conv.i = trunc i32 %cond.i to i8
  %arrayidx10 = getelementptr inbounds i8, ptr %dst.addr.084, i64 %indvars.iv
  store i8 %conv.i, ptr %arrayidx10, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond89.not = icmp eq i64 %indvars.iv.next, 20
  br i1 %exitcond89.not, label %for.cond.cleanup4, label %for.body5, !llvm.loop !234

for.cond23.preheader:                             ; preds = %for.cond23.preheader.lr.ph, %for.cond23.preheader
  %y16.080 = phi i32 [ 0, %for.cond23.preheader.lr.ph ], [ %inc42, %for.cond23.preheader ]
  %dst.addr.179 = phi ptr [ %dst, %for.cond23.preheader.lr.ph ], [ %add.ptr44, %for.cond23.preheader ]
  %src.addr.178 = phi ptr [ %src, %for.cond23.preheader.lr.ph ], [ %add.ptr46, %for.cond23.preheader ]
  %73 = load i8, ptr %src.addr.178, align 1
  %conv30 = zext i8 %73 to i32
  %74 = load i32, ptr %i_scale31, align 4
  %mul32 = mul nsw i32 %74, %conv30
  %75 = load i32, ptr %i_offset33, align 8
  %add34 = add nsw i32 %mul32, %75
  %tobool.not.i71 = icmp ult i32 %add34, 256
  %76 = icmp sgt i32 %add34, 0
  %shr.i72 = sext i1 %76 to i32
  %cond.i73 = select i1 %tobool.not.i71, i32 %add34, i32 %shr.i72
  %conv.i74 = trunc i32 %cond.i73 to i8
  store i8 %conv.i74, ptr %dst.addr.179, align 1
  %arrayidx29.1 = getelementptr inbounds i8, ptr %src.addr.178, i64 1
  %77 = load i8, ptr %arrayidx29.1, align 1
  %conv30.1 = zext i8 %77 to i32
  %78 = load i32, ptr %i_scale31, align 4
  %mul32.1 = mul nsw i32 %78, %conv30.1
  %79 = load i32, ptr %i_offset33, align 8
  %add34.1 = add nsw i32 %mul32.1, %79
  %tobool.not.i71.1 = icmp ult i32 %add34.1, 256
  %80 = icmp sgt i32 %add34.1, 0
  %shr.i72.1 = sext i1 %80 to i32
  %cond.i73.1 = select i1 %tobool.not.i71.1, i32 %add34.1, i32 %shr.i72.1
  %conv.i74.1 = trunc i32 %cond.i73.1 to i8
  %arrayidx37.1 = getelementptr inbounds i8, ptr %dst.addr.179, i64 1
  store i8 %conv.i74.1, ptr %arrayidx37.1, align 1
  %arrayidx29.2 = getelementptr inbounds i8, ptr %src.addr.178, i64 2
  %81 = load i8, ptr %arrayidx29.2, align 1
  %conv30.2 = zext i8 %81 to i32
  %82 = load i32, ptr %i_scale31, align 4
  %mul32.2 = mul nsw i32 %82, %conv30.2
  %83 = load i32, ptr %i_offset33, align 8
  %add34.2 = add nsw i32 %mul32.2, %83
  %tobool.not.i71.2 = icmp ult i32 %add34.2, 256
  %84 = icmp sgt i32 %add34.2, 0
  %shr.i72.2 = sext i1 %84 to i32
  %cond.i73.2 = select i1 %tobool.not.i71.2, i32 %add34.2, i32 %shr.i72.2
  %conv.i74.2 = trunc i32 %cond.i73.2 to i8
  %arrayidx37.2 = getelementptr inbounds i8, ptr %dst.addr.179, i64 2
  store i8 %conv.i74.2, ptr %arrayidx37.2, align 1
  %arrayidx29.3 = getelementptr inbounds i8, ptr %src.addr.178, i64 3
  %85 = load i8, ptr %arrayidx29.3, align 1
  %conv30.3 = zext i8 %85 to i32
  %86 = load i32, ptr %i_scale31, align 4
  %mul32.3 = mul nsw i32 %86, %conv30.3
  %87 = load i32, ptr %i_offset33, align 8
  %add34.3 = add nsw i32 %mul32.3, %87
  %tobool.not.i71.3 = icmp ult i32 %add34.3, 256
  %88 = icmp sgt i32 %add34.3, 0
  %shr.i72.3 = sext i1 %88 to i32
  %cond.i73.3 = select i1 %tobool.not.i71.3, i32 %add34.3, i32 %shr.i72.3
  %conv.i74.3 = trunc i32 %cond.i73.3 to i8
  %arrayidx37.3 = getelementptr inbounds i8, ptr %dst.addr.179, i64 3
  store i8 %conv.i74.3, ptr %arrayidx37.3, align 1
  %arrayidx29.4 = getelementptr inbounds i8, ptr %src.addr.178, i64 4
  %89 = load i8, ptr %arrayidx29.4, align 1
  %conv30.4 = zext i8 %89 to i32
  %90 = load i32, ptr %i_scale31, align 4
  %mul32.4 = mul nsw i32 %90, %conv30.4
  %91 = load i32, ptr %i_offset33, align 8
  %add34.4 = add nsw i32 %mul32.4, %91
  %tobool.not.i71.4 = icmp ult i32 %add34.4, 256
  %92 = icmp sgt i32 %add34.4, 0
  %shr.i72.4 = sext i1 %92 to i32
  %cond.i73.4 = select i1 %tobool.not.i71.4, i32 %add34.4, i32 %shr.i72.4
  %conv.i74.4 = trunc i32 %cond.i73.4 to i8
  %arrayidx37.4 = getelementptr inbounds i8, ptr %dst.addr.179, i64 4
  store i8 %conv.i74.4, ptr %arrayidx37.4, align 1
  %arrayidx29.5 = getelementptr inbounds i8, ptr %src.addr.178, i64 5
  %93 = load i8, ptr %arrayidx29.5, align 1
  %conv30.5 = zext i8 %93 to i32
  %94 = load i32, ptr %i_scale31, align 4
  %mul32.5 = mul nsw i32 %94, %conv30.5
  %95 = load i32, ptr %i_offset33, align 8
  %add34.5 = add nsw i32 %mul32.5, %95
  %tobool.not.i71.5 = icmp ult i32 %add34.5, 256
  %96 = icmp sgt i32 %add34.5, 0
  %shr.i72.5 = sext i1 %96 to i32
  %cond.i73.5 = select i1 %tobool.not.i71.5, i32 %add34.5, i32 %shr.i72.5
  %conv.i74.5 = trunc i32 %cond.i73.5 to i8
  %arrayidx37.5 = getelementptr inbounds i8, ptr %dst.addr.179, i64 5
  store i8 %conv.i74.5, ptr %arrayidx37.5, align 1
  %arrayidx29.6 = getelementptr inbounds i8, ptr %src.addr.178, i64 6
  %97 = load i8, ptr %arrayidx29.6, align 1
  %conv30.6 = zext i8 %97 to i32
  %98 = load i32, ptr %i_scale31, align 4
  %mul32.6 = mul nsw i32 %98, %conv30.6
  %99 = load i32, ptr %i_offset33, align 8
  %add34.6 = add nsw i32 %mul32.6, %99
  %tobool.not.i71.6 = icmp ult i32 %add34.6, 256
  %100 = icmp sgt i32 %add34.6, 0
  %shr.i72.6 = sext i1 %100 to i32
  %cond.i73.6 = select i1 %tobool.not.i71.6, i32 %add34.6, i32 %shr.i72.6
  %conv.i74.6 = trunc i32 %cond.i73.6 to i8
  %arrayidx37.6 = getelementptr inbounds i8, ptr %dst.addr.179, i64 6
  store i8 %conv.i74.6, ptr %arrayidx37.6, align 1
  %arrayidx29.7 = getelementptr inbounds i8, ptr %src.addr.178, i64 7
  %101 = load i8, ptr %arrayidx29.7, align 1
  %conv30.7 = zext i8 %101 to i32
  %102 = load i32, ptr %i_scale31, align 4
  %mul32.7 = mul nsw i32 %102, %conv30.7
  %103 = load i32, ptr %i_offset33, align 8
  %add34.7 = add nsw i32 %mul32.7, %103
  %tobool.not.i71.7 = icmp ult i32 %add34.7, 256
  %104 = icmp sgt i32 %add34.7, 0
  %shr.i72.7 = sext i1 %104 to i32
  %cond.i73.7 = select i1 %tobool.not.i71.7, i32 %add34.7, i32 %shr.i72.7
  %conv.i74.7 = trunc i32 %cond.i73.7 to i8
  %arrayidx37.7 = getelementptr inbounds i8, ptr %dst.addr.179, i64 7
  store i8 %conv.i74.7, ptr %arrayidx37.7, align 1
  %arrayidx29.8 = getelementptr inbounds i8, ptr %src.addr.178, i64 8
  %105 = load i8, ptr %arrayidx29.8, align 1
  %conv30.8 = zext i8 %105 to i32
  %106 = load i32, ptr %i_scale31, align 4
  %mul32.8 = mul nsw i32 %106, %conv30.8
  %107 = load i32, ptr %i_offset33, align 8
  %add34.8 = add nsw i32 %mul32.8, %107
  %tobool.not.i71.8 = icmp ult i32 %add34.8, 256
  %108 = icmp sgt i32 %add34.8, 0
  %shr.i72.8 = sext i1 %108 to i32
  %cond.i73.8 = select i1 %tobool.not.i71.8, i32 %add34.8, i32 %shr.i72.8
  %conv.i74.8 = trunc i32 %cond.i73.8 to i8
  %arrayidx37.8 = getelementptr inbounds i8, ptr %dst.addr.179, i64 8
  store i8 %conv.i74.8, ptr %arrayidx37.8, align 1
  %arrayidx29.9 = getelementptr inbounds i8, ptr %src.addr.178, i64 9
  %109 = load i8, ptr %arrayidx29.9, align 1
  %conv30.9 = zext i8 %109 to i32
  %110 = load i32, ptr %i_scale31, align 4
  %mul32.9 = mul nsw i32 %110, %conv30.9
  %111 = load i32, ptr %i_offset33, align 8
  %add34.9 = add nsw i32 %mul32.9, %111
  %tobool.not.i71.9 = icmp ult i32 %add34.9, 256
  %112 = icmp sgt i32 %add34.9, 0
  %shr.i72.9 = sext i1 %112 to i32
  %cond.i73.9 = select i1 %tobool.not.i71.9, i32 %add34.9, i32 %shr.i72.9
  %conv.i74.9 = trunc i32 %cond.i73.9 to i8
  %arrayidx37.9 = getelementptr inbounds i8, ptr %dst.addr.179, i64 9
  store i8 %conv.i74.9, ptr %arrayidx37.9, align 1
  %arrayidx29.10 = getelementptr inbounds i8, ptr %src.addr.178, i64 10
  %113 = load i8, ptr %arrayidx29.10, align 1
  %conv30.10 = zext i8 %113 to i32
  %114 = load i32, ptr %i_scale31, align 4
  %mul32.10 = mul nsw i32 %114, %conv30.10
  %115 = load i32, ptr %i_offset33, align 8
  %add34.10 = add nsw i32 %mul32.10, %115
  %tobool.not.i71.10 = icmp ult i32 %add34.10, 256
  %116 = icmp sgt i32 %add34.10, 0
  %shr.i72.10 = sext i1 %116 to i32
  %cond.i73.10 = select i1 %tobool.not.i71.10, i32 %add34.10, i32 %shr.i72.10
  %conv.i74.10 = trunc i32 %cond.i73.10 to i8
  %arrayidx37.10 = getelementptr inbounds i8, ptr %dst.addr.179, i64 10
  store i8 %conv.i74.10, ptr %arrayidx37.10, align 1
  %arrayidx29.11 = getelementptr inbounds i8, ptr %src.addr.178, i64 11
  %117 = load i8, ptr %arrayidx29.11, align 1
  %conv30.11 = zext i8 %117 to i32
  %118 = load i32, ptr %i_scale31, align 4
  %mul32.11 = mul nsw i32 %118, %conv30.11
  %119 = load i32, ptr %i_offset33, align 8
  %add34.11 = add nsw i32 %mul32.11, %119
  %tobool.not.i71.11 = icmp ult i32 %add34.11, 256
  %120 = icmp sgt i32 %add34.11, 0
  %shr.i72.11 = sext i1 %120 to i32
  %cond.i73.11 = select i1 %tobool.not.i71.11, i32 %add34.11, i32 %shr.i72.11
  %conv.i74.11 = trunc i32 %cond.i73.11 to i8
  %arrayidx37.11 = getelementptr inbounds i8, ptr %dst.addr.179, i64 11
  store i8 %conv.i74.11, ptr %arrayidx37.11, align 1
  %arrayidx29.12 = getelementptr inbounds i8, ptr %src.addr.178, i64 12
  %121 = load i8, ptr %arrayidx29.12, align 1
  %conv30.12 = zext i8 %121 to i32
  %122 = load i32, ptr %i_scale31, align 4
  %mul32.12 = mul nsw i32 %122, %conv30.12
  %123 = load i32, ptr %i_offset33, align 8
  %add34.12 = add nsw i32 %mul32.12, %123
  %tobool.not.i71.12 = icmp ult i32 %add34.12, 256
  %124 = icmp sgt i32 %add34.12, 0
  %shr.i72.12 = sext i1 %124 to i32
  %cond.i73.12 = select i1 %tobool.not.i71.12, i32 %add34.12, i32 %shr.i72.12
  %conv.i74.12 = trunc i32 %cond.i73.12 to i8
  %arrayidx37.12 = getelementptr inbounds i8, ptr %dst.addr.179, i64 12
  store i8 %conv.i74.12, ptr %arrayidx37.12, align 1
  %arrayidx29.13 = getelementptr inbounds i8, ptr %src.addr.178, i64 13
  %125 = load i8, ptr %arrayidx29.13, align 1
  %conv30.13 = zext i8 %125 to i32
  %126 = load i32, ptr %i_scale31, align 4
  %mul32.13 = mul nsw i32 %126, %conv30.13
  %127 = load i32, ptr %i_offset33, align 8
  %add34.13 = add nsw i32 %mul32.13, %127
  %tobool.not.i71.13 = icmp ult i32 %add34.13, 256
  %128 = icmp sgt i32 %add34.13, 0
  %shr.i72.13 = sext i1 %128 to i32
  %cond.i73.13 = select i1 %tobool.not.i71.13, i32 %add34.13, i32 %shr.i72.13
  %conv.i74.13 = trunc i32 %cond.i73.13 to i8
  %arrayidx37.13 = getelementptr inbounds i8, ptr %dst.addr.179, i64 13
  store i8 %conv.i74.13, ptr %arrayidx37.13, align 1
  %arrayidx29.14 = getelementptr inbounds i8, ptr %src.addr.178, i64 14
  %129 = load i8, ptr %arrayidx29.14, align 1
  %conv30.14 = zext i8 %129 to i32
  %130 = load i32, ptr %i_scale31, align 4
  %mul32.14 = mul nsw i32 %130, %conv30.14
  %131 = load i32, ptr %i_offset33, align 8
  %add34.14 = add nsw i32 %mul32.14, %131
  %tobool.not.i71.14 = icmp ult i32 %add34.14, 256
  %132 = icmp sgt i32 %add34.14, 0
  %shr.i72.14 = sext i1 %132 to i32
  %cond.i73.14 = select i1 %tobool.not.i71.14, i32 %add34.14, i32 %shr.i72.14
  %conv.i74.14 = trunc i32 %cond.i73.14 to i8
  %arrayidx37.14 = getelementptr inbounds i8, ptr %dst.addr.179, i64 14
  store i8 %conv.i74.14, ptr %arrayidx37.14, align 1
  %arrayidx29.15 = getelementptr inbounds i8, ptr %src.addr.178, i64 15
  %133 = load i8, ptr %arrayidx29.15, align 1
  %conv30.15 = zext i8 %133 to i32
  %134 = load i32, ptr %i_scale31, align 4
  %mul32.15 = mul nsw i32 %134, %conv30.15
  %135 = load i32, ptr %i_offset33, align 8
  %add34.15 = add nsw i32 %mul32.15, %135
  %tobool.not.i71.15 = icmp ult i32 %add34.15, 256
  %136 = icmp sgt i32 %add34.15, 0
  %shr.i72.15 = sext i1 %136 to i32
  %cond.i73.15 = select i1 %tobool.not.i71.15, i32 %add34.15, i32 %shr.i72.15
  %conv.i74.15 = trunc i32 %cond.i73.15 to i8
  %arrayidx37.15 = getelementptr inbounds i8, ptr %dst.addr.179, i64 15
  store i8 %conv.i74.15, ptr %arrayidx37.15, align 1
  %arrayidx29.16 = getelementptr inbounds i8, ptr %src.addr.178, i64 16
  %137 = load i8, ptr %arrayidx29.16, align 1
  %conv30.16 = zext i8 %137 to i32
  %138 = load i32, ptr %i_scale31, align 4
  %mul32.16 = mul nsw i32 %138, %conv30.16
  %139 = load i32, ptr %i_offset33, align 8
  %add34.16 = add nsw i32 %mul32.16, %139
  %tobool.not.i71.16 = icmp ult i32 %add34.16, 256
  %140 = icmp sgt i32 %add34.16, 0
  %shr.i72.16 = sext i1 %140 to i32
  %cond.i73.16 = select i1 %tobool.not.i71.16, i32 %add34.16, i32 %shr.i72.16
  %conv.i74.16 = trunc i32 %cond.i73.16 to i8
  %arrayidx37.16 = getelementptr inbounds i8, ptr %dst.addr.179, i64 16
  store i8 %conv.i74.16, ptr %arrayidx37.16, align 1
  %arrayidx29.17 = getelementptr inbounds i8, ptr %src.addr.178, i64 17
  %141 = load i8, ptr %arrayidx29.17, align 1
  %conv30.17 = zext i8 %141 to i32
  %142 = load i32, ptr %i_scale31, align 4
  %mul32.17 = mul nsw i32 %142, %conv30.17
  %143 = load i32, ptr %i_offset33, align 8
  %add34.17 = add nsw i32 %mul32.17, %143
  %tobool.not.i71.17 = icmp ult i32 %add34.17, 256
  %144 = icmp sgt i32 %add34.17, 0
  %shr.i72.17 = sext i1 %144 to i32
  %cond.i73.17 = select i1 %tobool.not.i71.17, i32 %add34.17, i32 %shr.i72.17
  %conv.i74.17 = trunc i32 %cond.i73.17 to i8
  %arrayidx37.17 = getelementptr inbounds i8, ptr %dst.addr.179, i64 17
  store i8 %conv.i74.17, ptr %arrayidx37.17, align 1
  %arrayidx29.18 = getelementptr inbounds i8, ptr %src.addr.178, i64 18
  %145 = load i8, ptr %arrayidx29.18, align 1
  %conv30.18 = zext i8 %145 to i32
  %146 = load i32, ptr %i_scale31, align 4
  %mul32.18 = mul nsw i32 %146, %conv30.18
  %147 = load i32, ptr %i_offset33, align 8
  %add34.18 = add nsw i32 %mul32.18, %147
  %tobool.not.i71.18 = icmp ult i32 %add34.18, 256
  %148 = icmp sgt i32 %add34.18, 0
  %shr.i72.18 = sext i1 %148 to i32
  %cond.i73.18 = select i1 %tobool.not.i71.18, i32 %add34.18, i32 %shr.i72.18
  %conv.i74.18 = trunc i32 %cond.i73.18 to i8
  %arrayidx37.18 = getelementptr inbounds i8, ptr %dst.addr.179, i64 18
  store i8 %conv.i74.18, ptr %arrayidx37.18, align 1
  %arrayidx29.19 = getelementptr inbounds i8, ptr %src.addr.178, i64 19
  %149 = load i8, ptr %arrayidx29.19, align 1
  %conv30.19 = zext i8 %149 to i32
  %150 = load i32, ptr %i_scale31, align 4
  %mul32.19 = mul nsw i32 %150, %conv30.19
  %151 = load i32, ptr %i_offset33, align 8
  %add34.19 = add nsw i32 %mul32.19, %151
  %tobool.not.i71.19 = icmp ult i32 %add34.19, 256
  %152 = icmp sgt i32 %add34.19, 0
  %shr.i72.19 = sext i1 %152 to i32
  %cond.i73.19 = select i1 %tobool.not.i71.19, i32 %add34.19, i32 %shr.i72.19
  %conv.i74.19 = trunc i32 %cond.i73.19 to i8
  %arrayidx37.19 = getelementptr inbounds i8, ptr %dst.addr.179, i64 19
  store i8 %conv.i74.19, ptr %arrayidx37.19, align 1
  %inc42 = add nuw nsw i32 %y16.080, 1
  %add.ptr44 = getelementptr inbounds i8, ptr %dst.addr.179, i64 %idx.ext43
  %add.ptr46 = getelementptr inbounds i8, ptr %src.addr.178, i64 %idx.ext45
  %exitcond.not = icmp eq i32 %inc42, %height
  br i1 %exitcond.not, label %if.end, label %for.cond23.preheader

if.end:                                           ; preds = %for.cond23.preheader, %for.cond.cleanup4, %for.cond17.preheader, %for.cond.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v4i16(<4 x i16>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v8i16(<8 x i16>) #12

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unswitch.partial.disable"}
!11 = distinct !{!11, !10}
!12 = !{!13}
!13 = distinct !{!13, !14}
!14 = distinct !{!14, !"LVerDomain"}
!15 = !{!16}
!16 = distinct !{!16, !14}
!17 = !{!18}
!18 = distinct !{!18, !14}
!19 = !{!13, !16}
!20 = distinct !{!20, !21, !22}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = !{!24}
!24 = distinct !{!24, !25}
!25 = distinct !{!25, !"LVerDomain"}
!26 = !{!27}
!27 = distinct !{!27, !25}
!28 = !{!29}
!29 = distinct !{!29, !25}
!30 = !{!24, !27}
!31 = distinct !{!31, !21, !22}
!32 = distinct !{!32, !21}
!33 = !{!34}
!34 = distinct !{!34, !35}
!35 = distinct !{!35, !"LVerDomain"}
!36 = !{!37}
!37 = distinct !{!37, !35}
!38 = distinct !{!38, !21, !22}
!39 = distinct !{!39, !21}
!40 = !{!41}
!41 = distinct !{!41, !42}
!42 = distinct !{!42, !"LVerDomain"}
!43 = !{!44}
!44 = distinct !{!44, !42}
!45 = distinct !{!45, !21, !22}
!46 = distinct !{!46, !21}
!47 = !{!48}
!48 = distinct !{!48, !49}
!49 = distinct !{!49, !"LVerDomain"}
!50 = !{!51}
!51 = distinct !{!51, !49}
!52 = !{!53}
!53 = distinct !{!53, !49}
!54 = !{!51, !48}
!55 = distinct !{!55, !21, !22}
!56 = distinct !{!56, !21}
!57 = !{!58}
!58 = distinct !{!58, !59}
!59 = distinct !{!59, !"LVerDomain"}
!60 = !{!61}
!61 = distinct !{!61, !59}
!62 = !{!63}
!63 = distinct !{!63, !59}
!64 = !{!61, !58}
!65 = distinct !{!65, !21, !22}
!66 = distinct !{!66, !21}
!67 = distinct !{!67, !6}
!68 = !{!69}
!69 = distinct !{!69, !70}
!70 = distinct !{!70, !"LVerDomain"}
!71 = !{!72}
!72 = distinct !{!72, !70}
!73 = !{!74}
!74 = distinct !{!74, !70}
!75 = !{!69, !72}
!76 = distinct !{!76, !21, !22}
!77 = !{!78}
!78 = distinct !{!78, !79}
!79 = distinct !{!79, !"LVerDomain"}
!80 = !{!81}
!81 = distinct !{!81, !79}
!82 = !{!83}
!83 = distinct !{!83, !79}
!84 = !{!78, !81}
!85 = distinct !{!85, !21, !22}
!86 = distinct !{!86, !21}
!87 = !{!88}
!88 = distinct !{!88, !89}
!89 = distinct !{!89, !"LVerDomain"}
!90 = !{!91}
!91 = distinct !{!91, !89}
!92 = distinct !{!92, !21, !22}
!93 = distinct !{!93, !21}
!94 = !{!95}
!95 = distinct !{!95, !96}
!96 = distinct !{!96, !"LVerDomain"}
!97 = !{!98}
!98 = distinct !{!98, !96}
!99 = distinct !{!99, !21, !22}
!100 = distinct !{!100, !21}
!101 = !{!102}
!102 = distinct !{!102, !103}
!103 = distinct !{!103, !"LVerDomain"}
!104 = !{!105}
!105 = distinct !{!105, !103}
!106 = !{!107}
!107 = distinct !{!107, !103}
!108 = !{!105, !102}
!109 = distinct !{!109, !21, !22}
!110 = distinct !{!110, !21}
!111 = !{!112}
!112 = distinct !{!112, !113}
!113 = distinct !{!113, !"LVerDomain"}
!114 = !{!115}
!115 = distinct !{!115, !113}
!116 = !{!117}
!117 = distinct !{!117, !113}
!118 = !{!115, !112}
!119 = distinct !{!119, !21, !22}
!120 = distinct !{!120, !21}
!121 = !{!122}
!122 = distinct !{!122, !123}
!123 = distinct !{!123, !"LVerDomain"}
!124 = !{!125}
!125 = distinct !{!125, !123}
!126 = !{!127}
!127 = distinct !{!127, !123}
!128 = !{!125, !122}
!129 = distinct !{!129, !21, !22}
!130 = !{!131}
!131 = distinct !{!131, !132}
!132 = distinct !{!132, !"LVerDomain"}
!133 = !{!134}
!134 = distinct !{!134, !132}
!135 = !{!136}
!136 = distinct !{!136, !132}
!137 = !{!134, !131}
!138 = distinct !{!138, !21, !22}
!139 = distinct !{!139, !21}
!140 = distinct !{!140, !6}
!141 = distinct !{!141, !6}
!142 = distinct !{!142, !6}
!143 = !{!144}
!144 = distinct !{!144, !145}
!145 = distinct !{!145, !"LVerDomain"}
!146 = !{!147}
!147 = distinct !{!147, !145}
!148 = !{!149}
!149 = distinct !{!149, !145}
!150 = !{!151}
!151 = distinct !{!151, !145}
!152 = !{!153}
!153 = distinct !{!153, !145}
!154 = !{!155}
!155 = distinct !{!155, !145}
!156 = !{!157}
!157 = distinct !{!157, !145}
!158 = !{!159, !155, !153, !151, !149, !147, !144}
!159 = distinct !{!159, !145}
!160 = !{!159}
!161 = !{!155, !153, !151, !149, !147, !144}
!162 = distinct !{!162, !21, !22}
!163 = !{!164}
!164 = distinct !{!164, !165}
!165 = distinct !{!165, !"LVerDomain"}
!166 = !{!167}
!167 = distinct !{!167, !165}
!168 = distinct !{!168, !21, !22}
!169 = distinct !{!169, !21}
!170 = !{!171}
!171 = distinct !{!171, !172}
!172 = distinct !{!172, !"LVerDomain"}
!173 = !{!174}
!174 = distinct !{!174, !172}
!175 = distinct !{!175, !21, !22}
!176 = !{!177}
!177 = distinct !{!177, !178}
!178 = distinct !{!178, !"LVerDomain"}
!179 = !{!180}
!180 = distinct !{!180, !178}
!181 = distinct !{!181, !21, !22}
!182 = distinct !{!182, !21}
!183 = distinct !{!183, !21}
!184 = !{!185}
!185 = distinct !{!185, !186}
!186 = distinct !{!186, !"LVerDomain"}
!187 = !{!188}
!188 = distinct !{!188, !186}
!189 = !{!190}
!190 = distinct !{!190, !186}
!191 = !{!192, !193, !194, !195, !188, !185}
!192 = distinct !{!192, !186}
!193 = distinct !{!193, !186}
!194 = distinct !{!194, !186}
!195 = distinct !{!195, !186}
!196 = !{!192}
!197 = !{!193, !194, !195, !188, !185}
!198 = !{!195}
!199 = !{!193}
!200 = !{!194, !195, !188, !185}
!201 = !{!194}
!202 = !{!195, !188, !185}
!203 = distinct !{!203, !21, !22}
!204 = distinct !{!204, !21}
!205 = distinct !{!205, !6}
!206 = distinct !{!206, !21, !22}
!207 = distinct !{!207, !21, !22}
!208 = distinct !{!208, !21}
!209 = distinct !{!209, !22, !21}
!210 = distinct !{!210, !21, !22}
!211 = distinct !{!211, !22, !21}
!212 = !{!213}
!213 = distinct !{!213, !214}
!214 = distinct !{!214, !"LVerDomain"}
!215 = !{!216}
!216 = distinct !{!216, !214}
!217 = !{!218}
!218 = distinct !{!218, !214}
!219 = !{!220}
!220 = distinct !{!220, !214}
!221 = !{!222}
!222 = distinct !{!222, !214}
!223 = !{!213, !216, !218, !220}
!224 = distinct !{!224, !21, !22}
!225 = distinct !{!225, !21}
!226 = !{!227}
!227 = distinct !{!227, !228}
!228 = distinct !{!228, !"LVerDomain"}
!229 = !{!230}
!230 = distinct !{!230, !228}
!231 = !{!232}
!232 = distinct !{!232, !228}
!233 = !{!227, !230}
!234 = distinct !{!234, !21}
