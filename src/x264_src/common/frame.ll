; ModuleID = 'x264_src/common/frame.c'
source_filename = "x264_src/common/frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"Invalid input colorspace\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Input picture width is greater than stride\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @x264_frame_new(ptr nocapture noundef readonly %h, i32 noundef %b_fdec) local_unnamed_addr #0 {
entry:
  %mb = getelementptr inbounds i8, ptr %h, i64 16368
  %0 = load i32, ptr %mb, align 16
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 136
  %1 = load i32, ptr %b_interlaced, align 8
  %shl = shl i32 32, %1
  %2 = load i32, ptr %h, align 16
  %call = tail call ptr @x264_malloc(i32 noundef 15632) #11
  %tobool9.not = icmp eq ptr %call, null
  br i1 %tobool9.not, label %fail, label %do.end

do.end:                                           ; preds = %entry
  %and = and i32 %2, 2
  %tobool.not = icmp eq i32 %and, 0
  %and5 = and i32 %2, 1
  %tobool6.not = icmp eq i32 %and5, 0
  %cond = select i1 %tobool6.not, i32 16, i32 32
  %cond7 = select i1 %tobool.not, i32 %cond, i32 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(15632) %call, i8 0, i64 15632, i1 false)
  %i_width13 = getelementptr inbounds i8, ptr %h, i64 20
  %3 = load i32, ptr %i_width13, align 4
  %add = add nsw i32 %3, 15
  %and14 = and i32 %add, -16
  %sub = add nsw i32 %cond7, -1
  %add15 = add nuw nsw i32 %cond7, 63
  %add16 = add i32 %add15, %and14
  %not = sub nsw i32 0, %cond7
  %and18 = and i32 %add16, %not
  %i_height = getelementptr inbounds i8, ptr %h, i64 24
  %4 = load i32, ptr %i_height, align 8
  %5 = load i32, ptr %b_interlaced, align 8
  %shl22 = shl i32 16, %5
  %sub23 = add i32 %4, -1
  %add24 = add i32 %sub23, %shl22
  %not29 = sub i32 0, %shl22
  %and30 = and i32 %add24, %not29
  %i_plane = getelementptr inbounds i8, ptr %call, i64 100
  store i32 3, ptr %i_plane, align 4
  %i_stride38 = getelementptr inbounds i8, ptr %call, i64 104
  %i_width45 = getelementptr inbounds i8, ptr %call, i64 116
  %i_lines54 = getelementptr inbounds i8, ptr %call, i64 128
  %add34 = add nsw i32 %and18, %sub
  %and37 = and i32 %add34, %not
  store i32 %and37, ptr %i_stride38, align 4
  store i32 %and14, ptr %i_width45, align 4
  store i32 %and30, ptr %i_lines54, align 4
  %shr.1 = ashr exact i32 %and18, 1
  %add34.1 = add nsw i32 %shr.1, %sub
  %and37.1 = and i32 %add34.1, %not
  %arrayidx.1 = getelementptr inbounds i8, ptr %call, i64 108
  store i32 %and37.1, ptr %arrayidx.1, align 4
  %shr44.1 = ashr exact i32 %and14, 1
  %arrayidx47.1 = getelementptr inbounds i8, ptr %call, i64 120
  store i32 %shr44.1, ptr %arrayidx47.1, align 4
  %shr53.1 = ashr exact i32 %and30, 1
  %arrayidx56.1 = getelementptr inbounds i8, ptr %call, i64 132
  store i32 %shr53.1, ptr %arrayidx56.1, align 4
  %arrayidx.2 = getelementptr inbounds i8, ptr %call, i64 112
  store i32 %and37.1, ptr %arrayidx.2, align 4
  %arrayidx47.2 = getelementptr inbounds i8, ptr %call, i64 124
  store i32 %shr44.1, ptr %arrayidx47.2, align 4
  %arrayidx56.2 = getelementptr inbounds i8, ptr %call, i64 136
  store i32 %shr53.1, ptr %arrayidx56.2, align 4
  %mul = shl i32 64, %1
  %add61 = add nsw i32 %and30, %mul
  %mul62 = mul nsw i32 %add61, %and37
  %add68 = add nsw i32 %shr53.1, %mul
  %mul69 = mul nsw i32 %add68, %and37.1
  %buffer = getelementptr inbounds i8, ptr %call, i64 248
  %plane = getelementptr inbounds i8, ptr %call, i64 152
  %call76 = tail call ptr @x264_malloc(i32 noundef %mul69) #11
  %arrayidx78 = getelementptr inbounds i8, ptr %call, i64 256
  store ptr %call76, ptr %arrayidx78, align 8
  %tobool82.not = icmp eq ptr %call76, null
  br i1 %tobool82.not, label %fail, label %do.end86

for.cond107.preheader.preheader:                  ; preds = %do.end86.1
  %mul116 = ashr exact i32 %and30, 2
  %i_row_satds = getelementptr inbounds i8, ptr %call, i64 9536
  br label %for.cond107.preheader

do.end86:                                         ; preds = %do.end
  %6 = load i32, ptr %arrayidx.1, align 4
  %mul93 = mul nsw i32 %6, %shl
  %add94 = add nsw i32 %mul93, 32
  %div = ashr exact i32 %add94, 1
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds i8, ptr %call76, i64 %idx.ext
  %arrayidx96 = getelementptr inbounds i8, ptr %call, i64 160
  store ptr %add.ptr, ptr %arrayidx96, align 8
  %call76.1 = tail call ptr @x264_malloc(i32 noundef %mul69) #11
  %arrayidx78.1 = getelementptr inbounds i8, ptr %call, i64 264
  store ptr %call76.1, ptr %arrayidx78.1, align 8
  %tobool82.not.1 = icmp eq ptr %call76.1, null
  br i1 %tobool82.not.1, label %fail, label %do.end86.1

do.end86.1:                                       ; preds = %do.end86
  %7 = load i32, ptr %arrayidx.2, align 4
  %mul93.1 = mul nsw i32 %7, %shl
  %add94.1 = add nsw i32 %mul93.1, 32
  %div.1 = ashr exact i32 %add94.1, 1
  %idx.ext.1 = sext i32 %div.1 to i64
  %add.ptr.1 = getelementptr inbounds i8, ptr %call76.1, i64 %idx.ext.1
  %arrayidx96.1 = getelementptr inbounds i8, ptr %call, i64 168
  store ptr %add.ptr.1, ptr %arrayidx96.1, align 8
  %i_bframe = getelementptr inbounds i8, ptr %h, i64 100
  %8 = load i32, ptr %i_bframe, align 4
  %cmp104890 = icmp sgt i32 %8, -2
  br i1 %cmp104890, label %for.cond107.preheader.preheader, label %for.end142

for.cond107.preheader:                            ; preds = %for.cond107.preheader.preheader, %for.inc138
  %9 = phi i32 [ %8, %for.cond107.preheader.preheader ], [ %12, %for.inc138 ]
  %indvars.iv914 = phi i64 [ 0, %for.cond107.preheader.preheader ], [ %indvars.iv.next915, %for.inc138 ]
  %cmp111.not887 = icmp sgt i32 %9, -2
  br i1 %cmp111.not887, label %do.body114, label %for.cond107.preheader.for.inc138_crit_edge

for.cond107.preheader.for.inc138_crit_edge:       ; preds = %for.cond107.preheader
  %.pre = sext i32 %9 to i64
  br label %for.inc138

for.cond107:                                      ; preds = %do.body114
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %10 = load i32, ptr %i_bframe, align 4
  %11 = sext i32 %10 to i64
  %cmp111.not.not = icmp sgt i64 %indvars.iv, %11
  br i1 %cmp111.not.not, label %for.inc138, label %do.body114

do.body114:                                       ; preds = %for.cond107.preheader, %for.cond107
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond107 ], [ 0, %for.cond107.preheader ]
  %call118 = tail call ptr @x264_malloc(i32 noundef %mul116) #11
  %arrayidx122 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv914, i64 %indvars.iv
  store ptr %call118, ptr %arrayidx122, align 8
  %tobool128.not = icmp eq ptr %call118, null
  br i1 %tobool128.not, label %fail, label %for.cond107

for.inc138:                                       ; preds = %for.cond107, %for.cond107.preheader.for.inc138_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond107.preheader.for.inc138_crit_edge ], [ %11, %for.cond107 ]
  %12 = phi i32 [ %9, %for.cond107.preheader.for.inc138_crit_edge ], [ %10, %for.cond107 ]
  %indvars.iv.next915 = add nuw nsw i64 %indvars.iv914, 1
  %cmp104.not = icmp sgt i64 %indvars.iv914, %.pre-phi
  br i1 %cmp104.not, label %for.end142, label %for.cond107.preheader, !llvm.loop !5

for.end142:                                       ; preds = %for.inc138, %do.end86.1
  store i32 -1, ptr %call, align 16
  %i_type = getelementptr inbounds i8, ptr %call, i64 4
  store i32 0, ptr %i_type, align 4
  %i_qpplus1 = getelementptr inbounds i8, ptr %call, i64 8
  store i32 0, ptr %i_qpplus1, align 8
  %i_pts = getelementptr inbounds i8, ptr %call, i64 16
  store i64 -1, ptr %i_pts, align 16
  %i_frame = getelementptr inbounds i8, ptr %call, i64 56
  store i32 -1, ptr %i_frame, align 8
  %i_frame_num = getelementptr inbounds i8, ptr %call, i64 68
  store i32 -1, ptr %i_frame_num, align 4
  %i_lines_completed = getelementptr inbounds i8, ptr %call, i64 15592
  store i32 -1, ptr %i_lines_completed, align 8
  %conv143 = trunc i32 %b_fdec to i8
  %b_fdec144 = getelementptr inbounds i8, ptr %call, i64 84
  store i8 %conv143, ptr %b_fdec144, align 4
  %i_pic_struct = getelementptr inbounds i8, ptr %call, i64 76
  store i32 0, ptr %i_pic_struct, align 4
  %i_field_cnt = getelementptr inbounds i8, ptr %call, i64 64
  store i32 -1, ptr %i_field_cnt, align 16
  %i_duration = getelementptr inbounds i8, ptr %call, i64 32
  %i_cpb_delay_lookahead = getelementptr inbounds i8, ptr %call, i64 15588
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i_duration, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i_cpb_delay_lookahead, align 4
  %i_coded_fields_lookahead = getelementptr inbounds i8, ptr %call, i64 15584
  store i32 -1, ptr %i_coded_fields_lookahead, align 16
  %orig = getelementptr inbounds i8, ptr %call, i64 3528
  store ptr %call, ptr %orig, align 8
  %i_subpel_refine = getelementptr inbounds i8, ptr %h, i64 428
  %13 = load i32, ptr %i_subpel_refine, align 4
  %tobool146 = icmp ne i32 %13, 0
  %tobool147 = icmp ne i32 %b_fdec, 0
  %or.cond = and i1 %tobool147, %tobool146
  br i1 %or.cond, label %do.body149, label %do.body188

do.body149:                                       ; preds = %for.end142
  %mul150 = shl nsw i32 %mul62, 2
  %call151 = tail call ptr @x264_malloc(i32 noundef %mul150) #11
  store ptr %call151, ptr %buffer, align 8
  %tobool156.not = icmp eq ptr %call151, null
  br i1 %tobool156.not, label %fail, label %if.end211.thread

if.end211.thread:                                 ; preds = %do.body149
  %filtered = getelementptr inbounds i8, ptr %call, i64 176
  %14 = sext i32 %mul62 to i64
  %15 = load i32, ptr %i_stride38, align 8
  %mul174 = mul nsw i32 %15, %shl
  %idx.ext175 = sext i32 %mul174 to i64
  %add.ptr176 = getelementptr inbounds i8, ptr %call151, i64 %idx.ext175
  %add.ptr177 = getelementptr inbounds i8, ptr %add.ptr176, i64 32
  store ptr %add.ptr177, ptr %filtered, align 8
  %add.ptr171.1 = getelementptr inbounds i8, ptr %call151, i64 %14
  %add.ptr176.1 = getelementptr inbounds i8, ptr %add.ptr171.1, i64 %idx.ext175
  %add.ptr177.1 = getelementptr inbounds i8, ptr %add.ptr176.1, i64 32
  %arrayidx179.1 = getelementptr inbounds i8, ptr %call, i64 184
  store ptr %add.ptr177.1, ptr %arrayidx179.1, align 8
  %16 = shl nsw i64 %14, 1
  %add.ptr171.2 = getelementptr inbounds i8, ptr %call151, i64 %16
  %add.ptr176.2 = getelementptr inbounds i8, ptr %add.ptr171.2, i64 %idx.ext175
  %add.ptr177.2 = getelementptr inbounds i8, ptr %add.ptr176.2, i64 32
  %arrayidx179.2 = getelementptr inbounds i8, ptr %call, i64 192
  store ptr %add.ptr177.2, ptr %arrayidx179.2, align 8
  %17 = mul nsw i64 %14, 3
  %add.ptr171.3 = getelementptr inbounds i8, ptr %call151, i64 %17
  %add.ptr176.3 = getelementptr inbounds i8, ptr %add.ptr171.3, i64 %idx.ext175
  %add.ptr177.3 = getelementptr inbounds i8, ptr %add.ptr176.3, i64 32
  %arrayidx179.3 = getelementptr inbounds i8, ptr %call, i64 200
  store ptr %add.ptr177.3, ptr %arrayidx179.3, align 8
  store ptr %add.ptr177, ptr %plane, align 8
  %b_duplicate939 = getelementptr inbounds i8, ptr %call, i64 3520
  store i32 0, ptr %b_duplicate939, align 16
  br label %do.body214

do.body188:                                       ; preds = %for.end142
  %call189 = tail call ptr @x264_malloc(i32 noundef %mul62) #11
  store ptr %call189, ptr %buffer, align 8
  %tobool194.not = icmp eq ptr %call189, null
  br i1 %tobool194.not, label %fail, label %if.end211

if.end211:                                        ; preds = %do.body188
  %18 = load i32, ptr %i_stride38, align 8
  %mul203 = mul nsw i32 %18, %shl
  %idx.ext204 = sext i32 %mul203 to i64
  %add.ptr205 = getelementptr inbounds i8, ptr %call189, i64 %idx.ext204
  %add.ptr206 = getelementptr inbounds i8, ptr %add.ptr205, i64 32
  store ptr %add.ptr206, ptr %plane, align 8
  %filtered209 = getelementptr inbounds i8, ptr %call, i64 176
  store ptr %add.ptr206, ptr %filtered209, align 16
  %b_duplicate = getelementptr inbounds i8, ptr %call, i64 3520
  store i32 0, ptr %b_duplicate, align 16
  br i1 %tobool147, label %do.body214, label %if.else376

do.body214:                                       ; preds = %if.end211.thread, %if.end211
  %call218 = tail call ptr @x264_malloc(i32 noundef %0) #11
  %mb_type = getelementptr inbounds i8, ptr %call, i64 3536
  store ptr %call218, ptr %mb_type, align 16
  %tobool220.not = icmp eq ptr %call218, null
  br i1 %tobool220.not, label %fail, label %do.body225

do.body225:                                       ; preds = %do.body214
  %call229 = tail call ptr @x264_malloc(i32 noundef %0) #11
  %mb_partition = getelementptr inbounds i8, ptr %call, i64 3544
  store ptr %call229, ptr %mb_partition, align 8
  %tobool231.not = icmp eq ptr %call229, null
  br i1 %tobool231.not, label %fail, label %do.body236

do.body236:                                       ; preds = %do.body225
  %mul237 = shl i32 %0, 6
  %call241 = tail call ptr @x264_malloc(i32 noundef %mul237) #11
  %mv = getelementptr inbounds i8, ptr %call, i64 3552
  store ptr %call241, ptr %mv, align 16
  %tobool245.not = icmp eq ptr %call241, null
  br i1 %tobool245.not, label %fail, label %do.body250

do.body250:                                       ; preds = %do.body236
  %mul251 = shl i32 %0, 2
  %call255 = tail call ptr @x264_malloc(i32 noundef %mul251) #11
  %mv16x16 = getelementptr inbounds i8, ptr %call, i64 3568
  store ptr %call255, ptr %mv16x16, align 16
  %tobool257.not = icmp eq ptr %call255, null
  br i1 %tobool257.not, label %fail, label %do.body262

do.body262:                                       ; preds = %do.body250
  %call267 = tail call ptr @x264_malloc(i32 noundef %mul251) #11
  %ref = getelementptr inbounds i8, ptr %call, i64 6712
  store ptr %call267, ptr %ref, align 8
  %tobool271.not = icmp eq ptr %call267, null
  br i1 %tobool271.not, label %fail, label %do.end275

do.end275:                                        ; preds = %do.body262
  %19 = load i32, ptr %i_bframe, align 4
  %tobool278.not = icmp eq i32 %19, 0
  br i1 %tobool278.not, label %if.else310, label %do.body280

do.body280:                                       ; preds = %do.end275
  %call285 = tail call ptr @x264_malloc(i32 noundef %mul237) #11
  %arrayidx287 = getelementptr inbounds i8, ptr %call, i64 3560
  store ptr %call285, ptr %arrayidx287, align 8
  %tobool290.not = icmp eq ptr %call285, null
  br i1 %tobool290.not, label %fail, label %do.body295

do.body295:                                       ; preds = %do.body280
  %call300 = tail call ptr @x264_malloc(i32 noundef %mul251) #11
  %arrayidx302 = getelementptr inbounds i8, ptr %call, i64 6720
  store ptr %call300, ptr %arrayidx302, align 8
  %tobool305.not = icmp eq ptr %call300, null
  br i1 %tobool305.not, label %fail, label %do.body316

if.else310:                                       ; preds = %do.end275
  %arrayidx312 = getelementptr inbounds i8, ptr %call, i64 3560
  store ptr null, ptr %arrayidx312, align 8
  %arrayidx314 = getelementptr inbounds i8, ptr %call, i64 6720
  store ptr null, ptr %arrayidx314, align 8
  br label %do.body316

do.body316:                                       ; preds = %if.else310, %do.body295
  %mul319 = ashr exact i32 %and30, 2
  %call321 = tail call ptr @x264_malloc(i32 noundef %mul319) #11
  %i_row_bits = getelementptr inbounds i8, ptr %call, i64 12136
  store ptr %call321, ptr %i_row_bits, align 8
  %tobool323.not = icmp eq ptr %call321, null
  br i1 %tobool323.not, label %fail, label %do.body328

do.body328:                                       ; preds = %do.body316
  %call333 = tail call ptr @x264_malloc(i32 noundef %mul319) #11
  %f_row_qp = getelementptr inbounds i8, ptr %call, i64 12144
  store ptr %call333, ptr %f_row_qp, align 16
  %tobool335.not = icmp eq ptr %call333, null
  br i1 %tobool335.not, label %fail, label %do.end339

do.end339:                                        ; preds = %do.body328
  %i_me_method = getelementptr inbounds i8, ptr %h, i64 412
  %20 = load i32, ptr %i_me_method, align 4
  %cmp342 = icmp sgt i32 %20, 2
  br i1 %cmp342, label %do.body345, label %cleanup646

do.body345:                                       ; preds = %do.end339
  %21 = load i32, ptr %i_stride38, align 8
  %22 = load i32, ptr %i_lines54, align 16
  %add351 = add nsw i32 %22, %mul
  %mul352 = mul nsw i32 %add351, %21
  %conv353 = sext i32 %mul352 to i64
  %mul354 = shl nsw i64 %conv353, 1
  %b_have_sub8x8_esa = getelementptr inbounds i8, ptr %h, i64 14676
  %23 = load i32, ptr %b_have_sub8x8_esa, align 4
  %sh_prom = zext nneg i32 %23 to i64
  %shl355 = shl i64 %mul354, %sh_prom
  %conv356 = trunc i64 %shl355 to i32
  %call357 = tail call ptr @x264_malloc(i32 noundef %conv356) #11
  %arrayidx359 = getelementptr inbounds i8, ptr %call, i64 272
  store ptr %call357, ptr %arrayidx359, align 8
  %tobool362.not = icmp eq ptr %call357, null
  br i1 %tobool362.not, label %fail, label %do.end366

do.end366:                                        ; preds = %do.body345
  %24 = load i32, ptr %i_stride38, align 8
  %mul371 = mul nsw i32 %24, %shl
  %idx.ext372 = sext i32 %mul371 to i64
  %add.ptr373 = getelementptr inbounds i16, ptr %call357, i64 %idx.ext372
  %add.ptr374 = getelementptr inbounds i8, ptr %add.ptr373, i64 64
  %integral = getelementptr inbounds i8, ptr %call, i64 240
  store ptr %add.ptr374, ptr %integral, align 16
  br label %cleanup646

if.else376:                                       ; preds = %if.end211
  %b_have_lowres = getelementptr inbounds i8, ptr %h, i64 14672
  %25 = load i32, ptr %b_have_lowres, align 16
  %tobool378.not = icmp eq i32 %25, 0
  br i1 %tobool378.not, label %if.end586, label %if.then379

if.then379:                                       ; preds = %if.else376
  %26 = load i32, ptr %i_width45, align 4
  %div382 = sdiv i32 %26, 2
  %i_width_lowres = getelementptr inbounds i8, ptr %call, i64 144
  store i32 %div382, ptr %i_width_lowres, align 16
  %add386 = add nsw i32 %add15, %div382
  %and389 = and i32 %add386, %not
  %i_stride_lowres = getelementptr inbounds i8, ptr %call, i64 140
  store i32 %and389, ptr %i_stride_lowres, align 4
  %27 = load i32, ptr %i_lines54, align 16
  %div392 = sdiv i32 %27, 2
  %i_lines_lowres = getelementptr inbounds i8, ptr %call, i64 148
  store i32 %div392, ptr %i_lines_lowres, align 4
  %add397 = add nsw i32 %div392, 64
  %mul398 = mul nsw i32 %add397, %and389
  %mul400 = shl nsw i32 %mul398, 2
  %call401 = tail call ptr @x264_malloc(i32 noundef %mul400) #11
  %buffer_lowres = getelementptr inbounds i8, ptr %call, i64 280
  store ptr %call401, ptr %buffer_lowres, align 8
  %tobool405.not = icmp eq ptr %call401, null
  br i1 %tobool405.not, label %fail, label %for.cond411.preheader

for.cond411.preheader:                            ; preds = %if.then379
  %lowres = getelementptr inbounds i8, ptr %call, i64 208
  %28 = sext i32 %mul398 to i64
  %29 = load i32, ptr %i_stride_lowres, align 4
  %mul419 = shl nsw i32 %29, 5
  %30 = sext i32 %mul419 to i64
  %31 = getelementptr i8, ptr %call401, i64 %30
  %add.ptr422 = getelementptr i8, ptr %31, i64 32
  store ptr %add.ptr422, ptr %lowres, align 8
  %add.ptr425.1 = getelementptr inbounds i8, ptr %add.ptr422, i64 %28
  %arrayidx427.1 = getelementptr inbounds i8, ptr %call, i64 216
  store ptr %add.ptr425.1, ptr %arrayidx427.1, align 8
  %32 = shl nsw i64 %28, 1
  %add.ptr425.2 = getelementptr inbounds i8, ptr %add.ptr422, i64 %32
  %arrayidx427.2 = getelementptr inbounds i8, ptr %call, i64 224
  store ptr %add.ptr425.2, ptr %arrayidx427.2, align 8
  %33 = mul nsw i64 %28, 3
  %add.ptr425.3 = getelementptr inbounds i8, ptr %add.ptr422, i64 %33
  %arrayidx427.3 = getelementptr inbounds i8, ptr %call, i64 232
  store ptr %add.ptr425.3, ptr %arrayidx427.3, align 8
  %lowres_mvs = getelementptr inbounds i8, ptr %call, i64 3576
  %lowres_mv_costs = getelementptr inbounds i8, ptr %call, i64 6440
  %34 = load i32, ptr %i_bframe, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %do.body519, label %for.cond446.preheader

for.cond446.preheader:                            ; preds = %for.cond411.preheader, %for.inc514
  %36 = phi i32 [ %43, %for.inc514 ], [ %34, %for.cond411.preheader ]
  %37 = phi i1 [ false, %for.inc514 ], [ true, %for.cond411.preheader ]
  %indvars.iv928 = phi i64 [ 1, %for.inc514 ], [ 0, %for.cond411.preheader ]
  %cmp449.not894 = icmp slt i32 %36, 0
  br i1 %cmp449.not894, label %for.inc514, label %do.body454

for.cond446:                                      ; preds = %do.end475
  %indvars.iv.next926 = add nuw nsw i64 %indvars.iv925, 1
  %38 = load i32, ptr %i_bframe, align 4
  %39 = sext i32 %38 to i64
  %cmp449.not.not = icmp slt i64 %indvars.iv925, %39
  br i1 %cmp449.not.not, label %do.body454, label %for.inc514

do.body454:                                       ; preds = %for.cond446.preheader, %for.cond446
  %indvars.iv925 = phi i64 [ %indvars.iv.next926, %for.cond446 ], [ 0, %for.cond446.preheader ]
  %40 = load i32, ptr %mb, align 16
  %mul457 = shl i32 %40, 2
  %call461 = tail call ptr @x264_malloc(i32 noundef %mul457) #11
  %arrayidx465 = getelementptr inbounds [2 x [17 x ptr]], ptr %lowres_mvs, i64 0, i64 %indvars.iv928, i64 %indvars.iv925
  store ptr %call461, ptr %arrayidx465, align 8
  %tobool471.not = icmp eq ptr %call461, null
  br i1 %tobool471.not, label %fail, label %do.end475

do.end475:                                        ; preds = %do.body454
  %41 = load i32, ptr %mb, align 16
  %mul483 = shl nsw i32 %41, 1
  %conv484 = sext i32 %mul483 to i64
  %mul485 = shl nsw i64 %conv484, 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %call461, i8 0, i64 %mul485, i1 false)
  %42 = load i32, ptr %mb, align 16
  %mul492 = shl i32 %42, 2
  %call494 = tail call ptr @x264_malloc(i32 noundef %mul492) #11
  %arrayidx498 = getelementptr inbounds [2 x [17 x ptr]], ptr %lowres_mv_costs, i64 0, i64 %indvars.iv928, i64 %indvars.iv925
  store ptr %call494, ptr %arrayidx498, align 8
  %tobool504.not = icmp eq ptr %call494, null
  br i1 %tobool504.not, label %fail, label %for.cond446

for.inc514:                                       ; preds = %for.cond446, %for.cond446.preheader
  %43 = phi i32 [ %36, %for.cond446.preheader ], [ %38, %for.cond446 ]
  %tobool436 = icmp ne i32 %43, 0
  %cmp441.not.not = and i1 %37, %tobool436
  br i1 %cmp441.not.not, label %for.cond446.preheader, label %do.body519, !llvm.loop !7

do.body519:                                       ; preds = %for.inc514, %for.cond411.preheader
  %add520 = add nsw i32 %0, 3
  %conv521 = sext i32 %add520 to i64
  %mul522 = shl nsw i64 %conv521, 1
  %conv523 = trunc i64 %mul522 to i32
  %call524 = tail call ptr @x264_malloc(i32 noundef %conv523) #11
  %i_propagate_cost = getelementptr inbounds i8, ptr %call, i64 12184
  store ptr %call524, ptr %i_propagate_cost, align 8
  %tobool526.not = icmp eq ptr %call524, null
  br i1 %tobool526.not, label %fail, label %for.cond532.preheader

for.cond532.preheader:                            ; preds = %do.body519
  %44 = load i32, ptr %i_bframe, align 4
  %cmp536.not903 = icmp slt i32 %44, -1
  br i1 %cmp536.not903, label %for.end578, label %for.cond541.preheader.preheader

for.cond541.preheader.preheader:                  ; preds = %for.cond532.preheader
  %lowres_costs = getelementptr inbounds i8, ptr %call, i64 3848
  br label %for.cond541.preheader

for.cond541.preheader:                            ; preds = %for.cond541.preheader.preheader, %for.inc574
  %45 = phi i32 [ %44, %for.cond541.preheader.preheader ], [ %48, %for.inc574 ]
  %indvars.iv934 = phi i64 [ 0, %for.cond541.preheader.preheader ], [ %indvars.iv.next935, %for.inc574 ]
  %cmp545.not900 = icmp slt i32 %45, -1
  br i1 %cmp545.not900, label %for.cond541.preheader.for.inc574_crit_edge, label %do.body549

for.cond541.preheader.for.inc574_crit_edge:       ; preds = %for.cond541.preheader
  %.pre937 = sext i32 %45 to i64
  br label %for.inc574

for.cond541:                                      ; preds = %do.body549
  %indvars.iv.next932 = add nuw nsw i64 %indvars.iv931, 1
  %46 = load i32, ptr %i_bframe, align 4
  %47 = sext i32 %46 to i64
  %cmp545.not = icmp sgt i64 %indvars.iv931, %47
  br i1 %cmp545.not, label %for.inc574, label %do.body549

do.body549:                                       ; preds = %for.cond541.preheader, %for.cond541
  %indvars.iv931 = phi i64 [ %indvars.iv.next932, %for.cond541 ], [ 0, %for.cond541.preheader ]
  %call554 = tail call ptr @x264_malloc(i32 noundef %conv523) #11
  %arrayidx558 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv934, i64 %indvars.iv931
  store ptr %call554, ptr %arrayidx558, align 8
  %tobool564.not = icmp eq ptr %call554, null
  br i1 %tobool564.not, label %fail, label %for.cond541

for.inc574:                                       ; preds = %for.cond541, %for.cond541.preheader.for.inc574_crit_edge
  %.pre-phi938 = phi i64 [ %.pre937, %for.cond541.preheader.for.inc574_crit_edge ], [ %47, %for.cond541 ]
  %48 = phi i32 [ %45, %for.cond541.preheader.for.inc574_crit_edge ], [ %46, %for.cond541 ]
  %indvars.iv.next935 = add nuw nsw i64 %indvars.iv934, 1
  %cmp536.not = icmp sgt i64 %indvars.iv934, %.pre-phi938
  br i1 %cmp536.not, label %for.end578, label %for.cond541.preheader, !llvm.loop !8

for.end578:                                       ; preds = %for.inc574, %for.cond532.preheader
  %lowres_costs579 = getelementptr inbounds i8, ptr %call, i64 3848
  %49 = load ptr, ptr %lowres_costs579, align 8
  %i_intra_cost = getelementptr inbounds i8, ptr %call, i64 12176
  store ptr %49, ptr %i_intra_cost, align 16
  tail call void @llvm.memset.p0.i64(ptr align 2 %49, i8 -1, i64 %mul522, i1 false)
  br label %if.end586

if.end586:                                        ; preds = %for.end578, %if.else376
  %i_aq_mode = getelementptr inbounds i8, ptr %h, i64 544
  %50 = load i32, ptr %i_aq_mode, align 8
  %tobool588.not = icmp eq i32 %50, 0
  br i1 %tobool588.not, label %cleanup646, label %do.body590

do.body590:                                       ; preds = %if.end586
  %51 = load i32, ptr %mb, align 16
  %mul594 = shl i32 %51, 2
  %call596 = tail call ptr @x264_malloc(i32 noundef %mul594) #11
  %f_qp_offset = getelementptr inbounds i8, ptr %call, i64 12152
  store ptr %call596, ptr %f_qp_offset, align 8
  %tobool598.not = icmp eq ptr %call596, null
  br i1 %tobool598.not, label %fail, label %do.body603

do.body603:                                       ; preds = %do.body590
  %52 = load i32, ptr %mb, align 16
  %mul607 = shl i32 %52, 2
  %call609 = tail call ptr @x264_malloc(i32 noundef %mul607) #11
  %f_qp_offset_aq = getelementptr inbounds i8, ptr %call, i64 12160
  store ptr %call609, ptr %f_qp_offset_aq, align 16
  %tobool611.not = icmp eq ptr %call609, null
  br i1 %tobool611.not, label %fail, label %do.end615

do.end615:                                        ; preds = %do.body603
  %53 = load i32, ptr %b_have_lowres, align 16
  %tobool618.not = icmp eq i32 %53, 0
  br i1 %tobool618.not, label %cleanup646, label %do.body621

do.body621:                                       ; preds = %do.end615
  %54 = load i32, ptr %mb, align 16
  %add624 = shl i32 %54, 1
  %mul626 = add i32 %add624, 6
  %call628 = tail call ptr @x264_malloc(i32 noundef %mul626) #11
  %i_inv_qscale_factor = getelementptr inbounds i8, ptr %call, i64 12192
  store ptr %call628, ptr %i_inv_qscale_factor, align 16
  %tobool630.not = icmp eq ptr %call628, null
  br i1 %tobool630.not, label %fail, label %do.end634

do.end634:                                        ; preds = %do.body621
  %55 = load i32, ptr %mb, align 16
  %add638 = add nsw i32 %55, 3
  %conv639 = sext i32 %add638 to i64
  %mul640 = shl nsw i64 %conv639, 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %call628, i8 0, i64 %mul640, i1 false)
  br label %cleanup646

fail:                                             ; preds = %do.body114, %do.body454, %do.end475, %do.body549, %do.end, %do.end86, %do.body621, %do.body603, %do.body590, %do.body519, %if.then379, %do.body345, %do.body328, %do.body316, %do.body295, %do.body280, %do.body262, %do.body250, %do.body236, %do.body225, %do.body214, %do.body188, %do.body149, %entry
  tail call void @x264_free(ptr noundef %call) #11
  br label %cleanup646

cleanup646:                                       ; preds = %do.end366, %do.end339, %do.end615, %do.end634, %if.end586, %fail
  %retval.0 = phi ptr [ null, %fail ], [ %call, %if.end586 ], [ %call, %do.end634 ], [ %call, %do.end615 ], [ %call, %do.end339 ], [ %call, %do.end366 ]
  ret ptr %retval.0
}

declare ptr @x264_malloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare void @x264_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_frame_delete(ptr noundef %frame) local_unnamed_addr #0 {
entry:
  %b_duplicate = getelementptr inbounds i8, ptr %frame, i64 3520
  %0 = load i32, ptr %b_duplicate, align 16
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.end

for.cond.preheader:                               ; preds = %entry
  %buffer = getelementptr inbounds i8, ptr %frame, i64 248
  %1 = load ptr, ptr %buffer, align 8
  tail call void @x264_free(ptr noundef %1) #11
  %arrayidx.1 = getelementptr inbounds i8, ptr %frame, i64 256
  %2 = load ptr, ptr %arrayidx.1, align 8
  tail call void @x264_free(ptr noundef %2) #11
  %arrayidx.2 = getelementptr inbounds i8, ptr %frame, i64 264
  %3 = load ptr, ptr %arrayidx.2, align 8
  tail call void @x264_free(ptr noundef %3) #11
  %arrayidx.3 = getelementptr inbounds i8, ptr %frame, i64 272
  %4 = load ptr, ptr %arrayidx.3, align 8
  tail call void @x264_free(ptr noundef %4) #11
  %buffer_lowres = getelementptr inbounds i8, ptr %frame, i64 280
  %5 = load ptr, ptr %buffer_lowres, align 8
  tail call void @x264_free(ptr noundef %5) #11
  %arrayidx7.1 = getelementptr inbounds i8, ptr %frame, i64 288
  %6 = load ptr, ptr %arrayidx7.1, align 8
  tail call void @x264_free(ptr noundef %6) #11
  %arrayidx7.2 = getelementptr inbounds i8, ptr %frame, i64 296
  %7 = load ptr, ptr %arrayidx7.2, align 8
  tail call void @x264_free(ptr noundef %7) #11
  %arrayidx7.3 = getelementptr inbounds i8, ptr %frame, i64 304
  %8 = load ptr, ptr %arrayidx7.3, align 8
  tail call void @x264_free(ptr noundef %8) #11
  %i_row_satds = getelementptr inbounds i8, ptr %frame, i64 9536
  br label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.cond.preheader, %for.cond16.preheader
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.cond16.preheader ]
  %arrayidx23 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 0
  %9 = load ptr, ptr %arrayidx23, align 8
  tail call void @x264_free(ptr noundef %9) #11
  %arrayidx23.1 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 1
  %10 = load ptr, ptr %arrayidx23.1, align 8
  tail call void @x264_free(ptr noundef %10) #11
  %arrayidx23.2 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 2
  %11 = load ptr, ptr %arrayidx23.2, align 8
  tail call void @x264_free(ptr noundef %11) #11
  %arrayidx23.3 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 3
  %12 = load ptr, ptr %arrayidx23.3, align 8
  tail call void @x264_free(ptr noundef %12) #11
  %arrayidx23.4 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 4
  %13 = load ptr, ptr %arrayidx23.4, align 8
  tail call void @x264_free(ptr noundef %13) #11
  %arrayidx23.5 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 5
  %14 = load ptr, ptr %arrayidx23.5, align 8
  tail call void @x264_free(ptr noundef %14) #11
  %arrayidx23.6 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 6
  %15 = load ptr, ptr %arrayidx23.6, align 8
  tail call void @x264_free(ptr noundef %15) #11
  %arrayidx23.7 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 7
  %16 = load ptr, ptr %arrayidx23.7, align 8
  tail call void @x264_free(ptr noundef %16) #11
  %arrayidx23.8 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 8
  %17 = load ptr, ptr %arrayidx23.8, align 8
  tail call void @x264_free(ptr noundef %17) #11
  %arrayidx23.9 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 9
  %18 = load ptr, ptr %arrayidx23.9, align 8
  tail call void @x264_free(ptr noundef %18) #11
  %arrayidx23.10 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 10
  %19 = load ptr, ptr %arrayidx23.10, align 8
  tail call void @x264_free(ptr noundef %19) #11
  %arrayidx23.11 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 11
  %20 = load ptr, ptr %arrayidx23.11, align 8
  tail call void @x264_free(ptr noundef %20) #11
  %arrayidx23.12 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 12
  %21 = load ptr, ptr %arrayidx23.12, align 8
  tail call void @x264_free(ptr noundef %21) #11
  %arrayidx23.13 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 13
  %22 = load ptr, ptr %arrayidx23.13, align 8
  tail call void @x264_free(ptr noundef %22) #11
  %arrayidx23.14 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 14
  %23 = load ptr, ptr %arrayidx23.14, align 8
  tail call void @x264_free(ptr noundef %23) #11
  %arrayidx23.15 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 15
  %24 = load ptr, ptr %arrayidx23.15, align 8
  tail call void @x264_free(ptr noundef %24) #11
  %arrayidx23.16 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 16
  %25 = load ptr, ptr %arrayidx23.16, align 8
  tail call void @x264_free(ptr noundef %25) #11
  %arrayidx23.17 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 17
  %26 = load ptr, ptr %arrayidx23.17, align 8
  tail call void @x264_free(ptr noundef %26) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 18
  br i1 %exitcond.not, label %for.cond31.preheader, label %for.cond16.preheader

for.cond31.preheader:                             ; preds = %for.cond16.preheader
  %lowres_mvs = getelementptr inbounds i8, ptr %frame, i64 3576
  %lowres_mv_costs = getelementptr inbounds i8, ptr %frame, i64 6440
  %27 = load ptr, ptr %lowres_mvs, align 8
  tail call void @x264_free(ptr noundef %27) #11
  %28 = load ptr, ptr %lowres_mv_costs, align 8
  tail call void @x264_free(ptr noundef %28) #11
  %arrayidx43.1 = getelementptr inbounds i8, ptr %frame, i64 3584
  %29 = load ptr, ptr %arrayidx43.1, align 8
  tail call void @x264_free(ptr noundef %29) #11
  %arrayidx47.1 = getelementptr inbounds i8, ptr %frame, i64 6448
  %30 = load ptr, ptr %arrayidx47.1, align 8
  tail call void @x264_free(ptr noundef %30) #11
  %arrayidx43.2 = getelementptr inbounds i8, ptr %frame, i64 3592
  %31 = load ptr, ptr %arrayidx43.2, align 8
  tail call void @x264_free(ptr noundef %31) #11
  %arrayidx47.2 = getelementptr inbounds i8, ptr %frame, i64 6456
  %32 = load ptr, ptr %arrayidx47.2, align 8
  tail call void @x264_free(ptr noundef %32) #11
  %arrayidx43.3 = getelementptr inbounds i8, ptr %frame, i64 3600
  %33 = load ptr, ptr %arrayidx43.3, align 8
  tail call void @x264_free(ptr noundef %33) #11
  %arrayidx47.3 = getelementptr inbounds i8, ptr %frame, i64 6464
  %34 = load ptr, ptr %arrayidx47.3, align 8
  tail call void @x264_free(ptr noundef %34) #11
  %arrayidx43.4 = getelementptr inbounds i8, ptr %frame, i64 3608
  %35 = load ptr, ptr %arrayidx43.4, align 8
  tail call void @x264_free(ptr noundef %35) #11
  %arrayidx47.4 = getelementptr inbounds i8, ptr %frame, i64 6472
  %36 = load ptr, ptr %arrayidx47.4, align 8
  tail call void @x264_free(ptr noundef %36) #11
  %arrayidx43.5 = getelementptr inbounds i8, ptr %frame, i64 3616
  %37 = load ptr, ptr %arrayidx43.5, align 8
  tail call void @x264_free(ptr noundef %37) #11
  %arrayidx47.5 = getelementptr inbounds i8, ptr %frame, i64 6480
  %38 = load ptr, ptr %arrayidx47.5, align 8
  tail call void @x264_free(ptr noundef %38) #11
  %arrayidx43.6 = getelementptr inbounds i8, ptr %frame, i64 3624
  %39 = load ptr, ptr %arrayidx43.6, align 8
  tail call void @x264_free(ptr noundef %39) #11
  %arrayidx47.6 = getelementptr inbounds i8, ptr %frame, i64 6488
  %40 = load ptr, ptr %arrayidx47.6, align 8
  tail call void @x264_free(ptr noundef %40) #11
  %arrayidx43.7 = getelementptr inbounds i8, ptr %frame, i64 3632
  %41 = load ptr, ptr %arrayidx43.7, align 8
  tail call void @x264_free(ptr noundef %41) #11
  %arrayidx47.7 = getelementptr inbounds i8, ptr %frame, i64 6496
  %42 = load ptr, ptr %arrayidx47.7, align 8
  tail call void @x264_free(ptr noundef %42) #11
  %arrayidx43.8 = getelementptr inbounds i8, ptr %frame, i64 3640
  %43 = load ptr, ptr %arrayidx43.8, align 8
  tail call void @x264_free(ptr noundef %43) #11
  %arrayidx47.8 = getelementptr inbounds i8, ptr %frame, i64 6504
  %44 = load ptr, ptr %arrayidx47.8, align 8
  tail call void @x264_free(ptr noundef %44) #11
  %arrayidx43.9 = getelementptr inbounds i8, ptr %frame, i64 3648
  %45 = load ptr, ptr %arrayidx43.9, align 8
  tail call void @x264_free(ptr noundef %45) #11
  %arrayidx47.9 = getelementptr inbounds i8, ptr %frame, i64 6512
  %46 = load ptr, ptr %arrayidx47.9, align 8
  tail call void @x264_free(ptr noundef %46) #11
  %arrayidx43.10 = getelementptr inbounds i8, ptr %frame, i64 3656
  %47 = load ptr, ptr %arrayidx43.10, align 8
  tail call void @x264_free(ptr noundef %47) #11
  %arrayidx47.10 = getelementptr inbounds i8, ptr %frame, i64 6520
  %48 = load ptr, ptr %arrayidx47.10, align 8
  tail call void @x264_free(ptr noundef %48) #11
  %arrayidx43.11 = getelementptr inbounds i8, ptr %frame, i64 3664
  %49 = load ptr, ptr %arrayidx43.11, align 8
  tail call void @x264_free(ptr noundef %49) #11
  %arrayidx47.11 = getelementptr inbounds i8, ptr %frame, i64 6528
  %50 = load ptr, ptr %arrayidx47.11, align 8
  tail call void @x264_free(ptr noundef %50) #11
  %arrayidx43.12 = getelementptr inbounds i8, ptr %frame, i64 3672
  %51 = load ptr, ptr %arrayidx43.12, align 8
  tail call void @x264_free(ptr noundef %51) #11
  %arrayidx47.12 = getelementptr inbounds i8, ptr %frame, i64 6536
  %52 = load ptr, ptr %arrayidx47.12, align 8
  tail call void @x264_free(ptr noundef %52) #11
  %arrayidx43.13 = getelementptr inbounds i8, ptr %frame, i64 3680
  %53 = load ptr, ptr %arrayidx43.13, align 8
  tail call void @x264_free(ptr noundef %53) #11
  %arrayidx47.13 = getelementptr inbounds i8, ptr %frame, i64 6544
  %54 = load ptr, ptr %arrayidx47.13, align 8
  tail call void @x264_free(ptr noundef %54) #11
  %arrayidx43.14 = getelementptr inbounds i8, ptr %frame, i64 3688
  %55 = load ptr, ptr %arrayidx43.14, align 8
  tail call void @x264_free(ptr noundef %55) #11
  %arrayidx47.14 = getelementptr inbounds i8, ptr %frame, i64 6552
  %56 = load ptr, ptr %arrayidx47.14, align 8
  tail call void @x264_free(ptr noundef %56) #11
  %arrayidx43.15 = getelementptr inbounds i8, ptr %frame, i64 3696
  %57 = load ptr, ptr %arrayidx43.15, align 8
  tail call void @x264_free(ptr noundef %57) #11
  %arrayidx47.15 = getelementptr inbounds i8, ptr %frame, i64 6560
  %58 = load ptr, ptr %arrayidx47.15, align 8
  tail call void @x264_free(ptr noundef %58) #11
  %arrayidx43.16 = getelementptr inbounds i8, ptr %frame, i64 3704
  %59 = load ptr, ptr %arrayidx43.16, align 8
  tail call void @x264_free(ptr noundef %59) #11
  %arrayidx47.16 = getelementptr inbounds i8, ptr %frame, i64 6568
  %60 = load ptr, ptr %arrayidx47.16, align 8
  tail call void @x264_free(ptr noundef %60) #11
  %arrayidx43.1137 = getelementptr inbounds i8, ptr %frame, i64 3712
  %61 = load ptr, ptr %arrayidx43.1137, align 8
  tail call void @x264_free(ptr noundef %61) #11
  %arrayidx47.1138 = getelementptr inbounds i8, ptr %frame, i64 6576
  %62 = load ptr, ptr %arrayidx47.1138, align 8
  tail call void @x264_free(ptr noundef %62) #11
  %arrayidx43.1.1 = getelementptr inbounds i8, ptr %frame, i64 3720
  %63 = load ptr, ptr %arrayidx43.1.1, align 8
  tail call void @x264_free(ptr noundef %63) #11
  %arrayidx47.1.1 = getelementptr inbounds i8, ptr %frame, i64 6584
  %64 = load ptr, ptr %arrayidx47.1.1, align 8
  tail call void @x264_free(ptr noundef %64) #11
  %arrayidx43.2.1 = getelementptr inbounds i8, ptr %frame, i64 3728
  %65 = load ptr, ptr %arrayidx43.2.1, align 8
  tail call void @x264_free(ptr noundef %65) #11
  %arrayidx47.2.1 = getelementptr inbounds i8, ptr %frame, i64 6592
  %66 = load ptr, ptr %arrayidx47.2.1, align 8
  tail call void @x264_free(ptr noundef %66) #11
  %arrayidx43.3.1 = getelementptr inbounds i8, ptr %frame, i64 3736
  %67 = load ptr, ptr %arrayidx43.3.1, align 8
  tail call void @x264_free(ptr noundef %67) #11
  %arrayidx47.3.1 = getelementptr inbounds i8, ptr %frame, i64 6600
  %68 = load ptr, ptr %arrayidx47.3.1, align 8
  tail call void @x264_free(ptr noundef %68) #11
  %arrayidx43.4.1 = getelementptr inbounds i8, ptr %frame, i64 3744
  %69 = load ptr, ptr %arrayidx43.4.1, align 8
  tail call void @x264_free(ptr noundef %69) #11
  %arrayidx47.4.1 = getelementptr inbounds i8, ptr %frame, i64 6608
  %70 = load ptr, ptr %arrayidx47.4.1, align 8
  tail call void @x264_free(ptr noundef %70) #11
  %arrayidx43.5.1 = getelementptr inbounds i8, ptr %frame, i64 3752
  %71 = load ptr, ptr %arrayidx43.5.1, align 8
  tail call void @x264_free(ptr noundef %71) #11
  %arrayidx47.5.1 = getelementptr inbounds i8, ptr %frame, i64 6616
  %72 = load ptr, ptr %arrayidx47.5.1, align 8
  tail call void @x264_free(ptr noundef %72) #11
  %arrayidx43.6.1 = getelementptr inbounds i8, ptr %frame, i64 3760
  %73 = load ptr, ptr %arrayidx43.6.1, align 8
  tail call void @x264_free(ptr noundef %73) #11
  %arrayidx47.6.1 = getelementptr inbounds i8, ptr %frame, i64 6624
  %74 = load ptr, ptr %arrayidx47.6.1, align 8
  tail call void @x264_free(ptr noundef %74) #11
  %arrayidx43.7.1 = getelementptr inbounds i8, ptr %frame, i64 3768
  %75 = load ptr, ptr %arrayidx43.7.1, align 8
  tail call void @x264_free(ptr noundef %75) #11
  %arrayidx47.7.1 = getelementptr inbounds i8, ptr %frame, i64 6632
  %76 = load ptr, ptr %arrayidx47.7.1, align 8
  tail call void @x264_free(ptr noundef %76) #11
  %arrayidx43.8.1 = getelementptr inbounds i8, ptr %frame, i64 3776
  %77 = load ptr, ptr %arrayidx43.8.1, align 8
  tail call void @x264_free(ptr noundef %77) #11
  %arrayidx47.8.1 = getelementptr inbounds i8, ptr %frame, i64 6640
  %78 = load ptr, ptr %arrayidx47.8.1, align 8
  tail call void @x264_free(ptr noundef %78) #11
  %arrayidx43.9.1 = getelementptr inbounds i8, ptr %frame, i64 3784
  %79 = load ptr, ptr %arrayidx43.9.1, align 8
  tail call void @x264_free(ptr noundef %79) #11
  %arrayidx47.9.1 = getelementptr inbounds i8, ptr %frame, i64 6648
  %80 = load ptr, ptr %arrayidx47.9.1, align 8
  tail call void @x264_free(ptr noundef %80) #11
  %arrayidx43.10.1 = getelementptr inbounds i8, ptr %frame, i64 3792
  %81 = load ptr, ptr %arrayidx43.10.1, align 8
  tail call void @x264_free(ptr noundef %81) #11
  %arrayidx47.10.1 = getelementptr inbounds i8, ptr %frame, i64 6656
  %82 = load ptr, ptr %arrayidx47.10.1, align 8
  tail call void @x264_free(ptr noundef %82) #11
  %arrayidx43.11.1 = getelementptr inbounds i8, ptr %frame, i64 3800
  %83 = load ptr, ptr %arrayidx43.11.1, align 8
  tail call void @x264_free(ptr noundef %83) #11
  %arrayidx47.11.1 = getelementptr inbounds i8, ptr %frame, i64 6664
  %84 = load ptr, ptr %arrayidx47.11.1, align 8
  tail call void @x264_free(ptr noundef %84) #11
  %arrayidx43.12.1 = getelementptr inbounds i8, ptr %frame, i64 3808
  %85 = load ptr, ptr %arrayidx43.12.1, align 8
  tail call void @x264_free(ptr noundef %85) #11
  %arrayidx47.12.1 = getelementptr inbounds i8, ptr %frame, i64 6672
  %86 = load ptr, ptr %arrayidx47.12.1, align 8
  tail call void @x264_free(ptr noundef %86) #11
  %arrayidx43.13.1 = getelementptr inbounds i8, ptr %frame, i64 3816
  %87 = load ptr, ptr %arrayidx43.13.1, align 8
  tail call void @x264_free(ptr noundef %87) #11
  %arrayidx47.13.1 = getelementptr inbounds i8, ptr %frame, i64 6680
  %88 = load ptr, ptr %arrayidx47.13.1, align 8
  tail call void @x264_free(ptr noundef %88) #11
  %arrayidx43.14.1 = getelementptr inbounds i8, ptr %frame, i64 3824
  %89 = load ptr, ptr %arrayidx43.14.1, align 8
  tail call void @x264_free(ptr noundef %89) #11
  %arrayidx47.14.1 = getelementptr inbounds i8, ptr %frame, i64 6688
  %90 = load ptr, ptr %arrayidx47.14.1, align 8
  tail call void @x264_free(ptr noundef %90) #11
  %arrayidx43.15.1 = getelementptr inbounds i8, ptr %frame, i64 3832
  %91 = load ptr, ptr %arrayidx43.15.1, align 8
  tail call void @x264_free(ptr noundef %91) #11
  %arrayidx47.15.1 = getelementptr inbounds i8, ptr %frame, i64 6696
  %92 = load ptr, ptr %arrayidx47.15.1, align 8
  tail call void @x264_free(ptr noundef %92) #11
  %arrayidx43.16.1 = getelementptr inbounds i8, ptr %frame, i64 3840
  %93 = load ptr, ptr %arrayidx43.16.1, align 8
  tail call void @x264_free(ptr noundef %93) #11
  %arrayidx47.16.1 = getelementptr inbounds i8, ptr %frame, i64 6704
  %94 = load ptr, ptr %arrayidx47.16.1, align 8
  tail call void @x264_free(ptr noundef %94) #11
  %i_propagate_cost = getelementptr inbounds i8, ptr %frame, i64 12184
  %95 = load ptr, ptr %i_propagate_cost, align 8
  tail call void @x264_free(ptr noundef %95) #11
  %lowres_costs = getelementptr inbounds i8, ptr %frame, i64 3848
  br label %for.cond60.preheader

for.cond60.preheader:                             ; preds = %for.cond31.preheader, %for.cond60.preheader
  %indvars.iv143 = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next144, %for.cond60.preheader ]
  %arrayidx67 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 0
  %96 = load ptr, ptr %arrayidx67, align 8
  tail call void @x264_free(ptr noundef %96) #11
  %arrayidx67.1 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 1
  %97 = load ptr, ptr %arrayidx67.1, align 8
  tail call void @x264_free(ptr noundef %97) #11
  %arrayidx67.2 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 2
  %98 = load ptr, ptr %arrayidx67.2, align 8
  tail call void @x264_free(ptr noundef %98) #11
  %arrayidx67.3 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 3
  %99 = load ptr, ptr %arrayidx67.3, align 8
  tail call void @x264_free(ptr noundef %99) #11
  %arrayidx67.4 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 4
  %100 = load ptr, ptr %arrayidx67.4, align 8
  tail call void @x264_free(ptr noundef %100) #11
  %arrayidx67.5 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 5
  %101 = load ptr, ptr %arrayidx67.5, align 8
  tail call void @x264_free(ptr noundef %101) #11
  %arrayidx67.6 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 6
  %102 = load ptr, ptr %arrayidx67.6, align 8
  tail call void @x264_free(ptr noundef %102) #11
  %arrayidx67.7 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 7
  %103 = load ptr, ptr %arrayidx67.7, align 8
  tail call void @x264_free(ptr noundef %103) #11
  %arrayidx67.8 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 8
  %104 = load ptr, ptr %arrayidx67.8, align 8
  tail call void @x264_free(ptr noundef %104) #11
  %arrayidx67.9 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 9
  %105 = load ptr, ptr %arrayidx67.9, align 8
  tail call void @x264_free(ptr noundef %105) #11
  %arrayidx67.10 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 10
  %106 = load ptr, ptr %arrayidx67.10, align 8
  tail call void @x264_free(ptr noundef %106) #11
  %arrayidx67.11 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 11
  %107 = load ptr, ptr %arrayidx67.11, align 8
  tail call void @x264_free(ptr noundef %107) #11
  %arrayidx67.12 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 12
  %108 = load ptr, ptr %arrayidx67.12, align 8
  tail call void @x264_free(ptr noundef %108) #11
  %arrayidx67.13 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 13
  %109 = load ptr, ptr %arrayidx67.13, align 8
  tail call void @x264_free(ptr noundef %109) #11
  %arrayidx67.14 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 14
  %110 = load ptr, ptr %arrayidx67.14, align 8
  tail call void @x264_free(ptr noundef %110) #11
  %arrayidx67.15 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 15
  %111 = load ptr, ptr %arrayidx67.15, align 8
  tail call void @x264_free(ptr noundef %111) #11
  %arrayidx67.16 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 16
  %112 = load ptr, ptr %arrayidx67.16, align 8
  tail call void @x264_free(ptr noundef %112) #11
  %arrayidx67.17 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 17
  %113 = load ptr, ptr %arrayidx67.17, align 8
  tail call void @x264_free(ptr noundef %113) #11
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1
  %exitcond146.not = icmp eq i64 %indvars.iv.next144, 18
  br i1 %exitcond146.not, label %for.cond.cleanup57, label %for.cond60.preheader

for.cond.cleanup57:                               ; preds = %for.cond60.preheader
  %f_qp_offset = getelementptr inbounds i8, ptr %frame, i64 12152
  %114 = load ptr, ptr %f_qp_offset, align 8
  tail call void @x264_free(ptr noundef %114) #11
  %f_qp_offset_aq = getelementptr inbounds i8, ptr %frame, i64 12160
  %115 = load ptr, ptr %f_qp_offset_aq, align 16
  tail call void @x264_free(ptr noundef %115) #11
  %i_inv_qscale_factor = getelementptr inbounds i8, ptr %frame, i64 12192
  %116 = load ptr, ptr %i_inv_qscale_factor, align 16
  tail call void @x264_free(ptr noundef %116) #11
  %i_row_bits = getelementptr inbounds i8, ptr %frame, i64 12136
  %117 = load ptr, ptr %i_row_bits, align 8
  tail call void @x264_free(ptr noundef %117) #11
  %f_row_qp = getelementptr inbounds i8, ptr %frame, i64 12144
  %118 = load ptr, ptr %f_row_qp, align 16
  tail call void @x264_free(ptr noundef %118) #11
  %mb_type = getelementptr inbounds i8, ptr %frame, i64 3536
  %119 = load ptr, ptr %mb_type, align 16
  tail call void @x264_free(ptr noundef %119) #11
  %mb_partition = getelementptr inbounds i8, ptr %frame, i64 3544
  %120 = load ptr, ptr %mb_partition, align 8
  tail call void @x264_free(ptr noundef %120) #11
  %mv = getelementptr inbounds i8, ptr %frame, i64 3552
  %121 = load ptr, ptr %mv, align 16
  tail call void @x264_free(ptr noundef %121) #11
  %arrayidx76 = getelementptr inbounds i8, ptr %frame, i64 3560
  %122 = load ptr, ptr %arrayidx76, align 8
  tail call void @x264_free(ptr noundef %122) #11
  %mv16x16 = getelementptr inbounds i8, ptr %frame, i64 3568
  %123 = load ptr, ptr %mv16x16, align 16
  tail call void @x264_free(ptr noundef %123) #11
  %ref = getelementptr inbounds i8, ptr %frame, i64 6712
  %124 = load ptr, ptr %ref, align 8
  tail call void @x264_free(ptr noundef %124) #11
  %arrayidx79 = getelementptr inbounds i8, ptr %frame, i64 6720
  %125 = load ptr, ptr %arrayidx79, align 8
  tail call void @x264_free(ptr noundef %125) #11
  br label %if.end

if.end:                                           ; preds = %for.cond.cleanup57, %entry
  tail call void @x264_free(ptr noundef nonnull %frame) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @x264_frame_copy_picture(ptr noundef %h, ptr nocapture noundef %dst, ptr nocapture noundef readonly %src) local_unnamed_addr #0 {
entry:
  %img = getelementptr inbounds i8, ptr %src, i64 40
  %0 = load i32, ptr %img, align 8
  %.fr = freeze i32 %0
  %trunc = trunc i32 %.fr to i8
  switch i8 %trunc, label %if.then [
    i8 4, label %if.end
    i8 1, label %if.end
  ]

if.then:                                          ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %h, i32 noundef 0, ptr noundef nonnull @.str) #11
  br label %cleanup48

if.end:                                           ; preds = %entry, %entry
  %and = and i32 %.fr, 255
  %1 = load i32, ptr %src, align 8
  %i_type3 = getelementptr inbounds i8, ptr %dst, i64 4
  store i32 %1, ptr %i_type3, align 4
  %i_qpplus1 = getelementptr inbounds i8, ptr %src, i64 4
  %2 = load i32, ptr %i_qpplus1, align 4
  %i_qpplus14 = getelementptr inbounds i8, ptr %dst, i64 8
  store i32 %2, ptr %i_qpplus14, align 8
  %i_pts = getelementptr inbounds i8, ptr %src, i64 16
  %3 = load i64, ptr %i_pts, align 8
  %i_reordered_pts = getelementptr inbounds i8, ptr %dst, i64 24
  store i64 %3, ptr %i_reordered_pts, align 8
  %i_pts5 = getelementptr inbounds i8, ptr %dst, i64 16
  store i64 %3, ptr %i_pts5, align 16
  %param = getelementptr inbounds i8, ptr %src, i64 32
  %4 = load ptr, ptr %param, align 8
  %param6 = getelementptr inbounds i8, ptr %dst, i64 48
  store ptr %4, ptr %param6, align 16
  %i_pic_struct = getelementptr inbounds i8, ptr %src, i64 8
  %5 = load i32, ptr %i_pic_struct, align 8
  %i_pic_struct7 = getelementptr inbounds i8, ptr %dst, i64 76
  store i32 %5, ptr %i_pic_struct7, align 4
  %cmp9 = icmp eq i32 %and, 4
  %i_stride = getelementptr inbounds i8, ptr %src, i64 48
  %i_width = getelementptr inbounds i8, ptr %h, i64 20
  %plane12 = getelementptr inbounds i8, ptr %src, i64 64
  %i_height = getelementptr inbounds i8, ptr %h, i64 24
  %plane_copy = getelementptr inbounds i8, ptr %h, i64 32784
  %plane36 = getelementptr inbounds i8, ptr %dst, i64 152
  %i_stride39 = getelementptr inbounds i8, ptr %dst, i64 104
  %6 = load i32, ptr %i_stride, align 4
  %7 = load i32, ptr %i_width, align 4
  %8 = tail call i32 @llvm.abs.i32(i32 %6, i1 true)
  %cmp33.not = icmp sgt i32 %7, %8
  br i1 %cmp9, label %for.body.preheader, label %if.end.split.us

for.body.preheader:                               ; preds = %if.end
  br i1 %cmp33.not, label %cleanup.thread, label %for.inc

if.end.split.us:                                  ; preds = %if.end
  br i1 %cmp33.not, label %cleanup.thread, label %for.inc.us.preheader

for.inc.us.preheader:                             ; preds = %if.end.split.us
  %9 = load i32, ptr %img, align 8
  %and28.us = and i32 %9, 4096
  %tobool29.not.us = icmp eq i32 %and28.us, 0
  %sub31.us = sub nsw i32 0, %6
  %stride.0.us = select i1 %tobool29.not.us, i32 %6, i32 %sub31.us
  %10 = load ptr, ptr %plane12, align 8
  %11 = load i32, ptr %i_height, align 8
  %sub.us = add nsw i32 %11, -1
  %mul.us = mul nsw i32 %sub.us, %6
  %narrow.us = select i1 %tobool29.not.us, i32 0, i32 %mul.us
  %plane.0.idx.us = sext i32 %narrow.us to i64
  %plane.0.us = getelementptr inbounds i8, ptr %10, i64 %plane.0.idx.us
  %12 = load ptr, ptr %plane_copy, align 8
  %13 = load ptr, ptr %plane36, align 8
  %14 = load i32, ptr %i_stride39, align 4
  tail call void %12(ptr noundef %13, i32 noundef %14, ptr noundef %plane.0.us, i32 noundef %stride.0.us, i32 noundef %7, i32 noundef %11) #11
  %arrayidx15.us = getelementptr inbounds i8, ptr %src, i64 52
  %15 = load i32, ptr %arrayidx15.us, align 4
  %16 = load i32, ptr %i_width, align 4
  %shr.us = ashr i32 %16, 1
  %17 = tail call i32 @llvm.abs.i32(i32 %15, i1 true)
  %cmp33.not.us = icmp sgt i32 %shr.us, %17
  br i1 %cmp33.not.us, label %cleanup.thread, label %for.inc.us.1

for.inc.us.1:                                     ; preds = %for.inc.us.preheader
  %18 = load i32, ptr %img, align 8
  %and28.us.1 = and i32 %18, 4096
  %tobool29.not.us.1 = icmp eq i32 %and28.us.1, 0
  %sub31.us.1 = sub nsw i32 0, %15
  %stride.0.us.1 = select i1 %tobool29.not.us.1, i32 %15, i32 %sub31.us.1
  %arrayidx.us.1 = getelementptr inbounds i8, ptr %src, i64 72
  %19 = load ptr, ptr %arrayidx.us.1, align 8
  %20 = load i32, ptr %i_height, align 8
  %shr25.us.1 = ashr i32 %20, 1
  %sub.us.1 = add nsw i32 %shr25.us.1, -1
  %mul.us.1 = mul nsw i32 %sub.us.1, %15
  %narrow.us.1 = select i1 %tobool29.not.us.1, i32 0, i32 %mul.us.1
  %plane.0.idx.us.1 = sext i32 %narrow.us.1 to i64
  %plane.0.us.1 = getelementptr inbounds i8, ptr %19, i64 %plane.0.idx.us.1
  %21 = load ptr, ptr %plane_copy, align 8
  %arrayidx38.us.1 = getelementptr inbounds i8, ptr %dst, i64 160
  %22 = load ptr, ptr %arrayidx38.us.1, align 8
  %arrayidx41.us.1 = getelementptr inbounds i8, ptr %dst, i64 108
  %23 = load i32, ptr %arrayidx41.us.1, align 4
  tail call void %21(ptr noundef %22, i32 noundef %23, ptr noundef %plane.0.us.1, i32 noundef %stride.0.us.1, i32 noundef %shr.us, i32 noundef %shr25.us.1) #11
  %arrayidx15.us.1 = getelementptr inbounds i8, ptr %src, i64 56
  %24 = load i32, ptr %arrayidx15.us.1, align 4
  %25 = load i32, ptr %i_width, align 4
  %shr.us.1 = ashr i32 %25, 1
  %26 = tail call i32 @llvm.abs.i32(i32 %24, i1 true)
  %cmp33.not.us.1 = icmp sgt i32 %shr.us.1, %26
  br i1 %cmp33.not.us.1, label %cleanup.thread, label %cleanup46.loopexit100

cleanup.thread:                                   ; preds = %for.inc.us.preheader, %for.inc.us.1, %for.body.preheader, %for.inc, %for.inc.1, %if.end.split.us
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.1) #11
  br label %cleanup48

for.inc:                                          ; preds = %for.body.preheader
  %27 = load i32, ptr %img, align 8
  %and28 = and i32 %27, 4096
  %tobool29.not = icmp eq i32 %and28, 0
  %sub31 = sub nsw i32 0, %6
  %stride.0 = select i1 %tobool29.not, i32 %6, i32 %sub31
  %28 = load ptr, ptr %plane12, align 8
  %29 = load i32, ptr %i_height, align 8
  %sub = add nsw i32 %29, -1
  %mul = mul nsw i32 %sub, %6
  %narrow = select i1 %tobool29.not, i32 0, i32 %mul
  %plane.0.idx = sext i32 %narrow to i64
  %plane.0 = getelementptr inbounds i8, ptr %28, i64 %plane.0.idx
  %30 = load ptr, ptr %plane_copy, align 8
  %31 = load ptr, ptr %plane36, align 8
  %32 = load i32, ptr %i_stride39, align 4
  tail call void %30(ptr noundef %31, i32 noundef %32, ptr noundef %plane.0, i32 noundef %stride.0, i32 noundef %7, i32 noundef %29) #11
  %arrayidx15.1 = getelementptr inbounds i8, ptr %src, i64 56
  %33 = load i32, ptr %arrayidx15.1, align 4
  %34 = load i32, ptr %i_width, align 4
  %shr.1 = ashr i32 %34, 1
  %35 = tail call i32 @llvm.abs.i32(i32 %33, i1 true)
  %cmp33.not.1 = icmp sgt i32 %shr.1, %35
  br i1 %cmp33.not.1, label %cleanup.thread, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %36 = load i32, ptr %img, align 8
  %and28.1 = and i32 %36, 4096
  %tobool29.not.1 = icmp eq i32 %and28.1, 0
  %sub31.1 = sub nsw i32 0, %33
  %stride.0.1 = select i1 %tobool29.not.1, i32 %33, i32 %sub31.1
  %arrayidx.1 = getelementptr inbounds i8, ptr %src, i64 80
  %37 = load ptr, ptr %arrayidx.1, align 8
  %38 = load i32, ptr %i_height, align 8
  %shr25.1 = ashr i32 %38, 1
  %sub.1 = add nsw i32 %shr25.1, -1
  %mul.1 = mul nsw i32 %sub.1, %33
  %narrow.1 = select i1 %tobool29.not.1, i32 0, i32 %mul.1
  %plane.0.idx.1 = sext i32 %narrow.1 to i64
  %plane.0.1 = getelementptr inbounds i8, ptr %37, i64 %plane.0.idx.1
  %39 = load ptr, ptr %plane_copy, align 8
  %arrayidx38.1 = getelementptr inbounds i8, ptr %dst, i64 160
  %40 = load ptr, ptr %arrayidx38.1, align 8
  %arrayidx41.1 = getelementptr inbounds i8, ptr %dst, i64 108
  %41 = load i32, ptr %arrayidx41.1, align 4
  tail call void %39(ptr noundef %40, i32 noundef %41, ptr noundef %plane.0.1, i32 noundef %stride.0.1, i32 noundef %shr.1, i32 noundef %shr25.1) #11
  %arrayidx15.2 = getelementptr inbounds i8, ptr %src, i64 52
  %42 = load i32, ptr %arrayidx15.2, align 4
  %43 = load i32, ptr %i_width, align 4
  %shr.2 = ashr i32 %43, 1
  %44 = tail call i32 @llvm.abs.i32(i32 %42, i1 true)
  %cmp33.not.2 = icmp sgt i32 %shr.2, %44
  br i1 %cmp33.not.2, label %cleanup.thread, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %45 = load i32, ptr %img, align 8
  %and28.2 = and i32 %45, 4096
  %tobool29.not.2 = icmp eq i32 %and28.2, 0
  %sub31.2 = sub nsw i32 0, %42
  %stride.0.2 = select i1 %tobool29.not.2, i32 %42, i32 %sub31.2
  %arrayidx.2 = getelementptr inbounds i8, ptr %src, i64 72
  %46 = load ptr, ptr %arrayidx.2, align 8
  %47 = load i32, ptr %i_height, align 8
  %shr25.2 = ashr i32 %47, 1
  %sub.2 = add nsw i32 %shr25.2, -1
  %mul.2 = mul nsw i32 %sub.2, %42
  %narrow.2 = select i1 %tobool29.not.2, i32 0, i32 %mul.2
  %plane.0.idx.2 = sext i32 %narrow.2 to i64
  %plane.0.2 = getelementptr inbounds i8, ptr %46, i64 %plane.0.idx.2
  %48 = load ptr, ptr %plane_copy, align 8
  %arrayidx38.2 = getelementptr inbounds i8, ptr %dst, i64 168
  %49 = load ptr, ptr %arrayidx38.2, align 8
  %arrayidx41.2 = getelementptr inbounds i8, ptr %dst, i64 112
  %50 = load i32, ptr %arrayidx41.2, align 4
  tail call void %48(ptr noundef %49, i32 noundef %50, ptr noundef %plane.0.2, i32 noundef %stride.0.2, i32 noundef %shr.2, i32 noundef %shr25.2) #11
  br label %cleanup48

cleanup46.loopexit100:                            ; preds = %for.inc.us.1
  %51 = load i32, ptr %img, align 8
  %and28.us.2 = and i32 %51, 4096
  %tobool29.not.us.2 = icmp eq i32 %and28.us.2, 0
  %sub31.us.2 = sub nsw i32 0, %24
  %stride.0.us.2 = select i1 %tobool29.not.us.2, i32 %24, i32 %sub31.us.2
  %arrayidx.us.2 = getelementptr inbounds i8, ptr %src, i64 80
  %52 = load ptr, ptr %arrayidx.us.2, align 8
  %53 = load i32, ptr %i_height, align 8
  %shr25.us.2 = ashr i32 %53, 1
  %sub.us.2 = add nsw i32 %shr25.us.2, -1
  %mul.us.2 = mul nsw i32 %sub.us.2, %24
  %narrow.us.2 = select i1 %tobool29.not.us.2, i32 0, i32 %mul.us.2
  %plane.0.idx.us.2 = sext i32 %narrow.us.2 to i64
  %plane.0.us.2 = getelementptr inbounds i8, ptr %52, i64 %plane.0.idx.us.2
  %54 = load ptr, ptr %plane_copy, align 8
  %arrayidx38.us.2 = getelementptr inbounds i8, ptr %dst, i64 168
  %55 = load ptr, ptr %arrayidx38.us.2, align 8
  %arrayidx41.us.2 = getelementptr inbounds i8, ptr %dst, i64 112
  %56 = load i32, ptr %arrayidx41.us.2, align 4
  tail call void %54(ptr noundef %55, i32 noundef %56, ptr noundef %plane.0.us.2, i32 noundef %stride.0.us.2, i32 noundef %shr.us.1, i32 noundef %shr25.us.2) #11
  br label %cleanup48

cleanup48:                                        ; preds = %cleanup.thread, %for.inc.2, %cleanup46.loopexit100, %if.then
  %retval.3 = phi i32 [ -1, %if.then ], [ -1, %cleanup.thread ], [ 0, %for.inc.2 ], [ 0, %cleanup46.loopexit100 ]
  ret i32 %retval.3
}

declare void @x264_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_frame_expand_border(ptr nocapture noundef readonly %h, ptr nocapture noundef readonly %frame, i32 noundef %mb_y, i32 noundef %b_end) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq i32 %mb_y, 0
  %b_mbaff = getelementptr inbounds i8, ptr %h, i64 7268
  %0 = load i32, ptr %b_mbaff, align 4
  %and = and i32 %0, %mb_y
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %entry
  %i_plane = getelementptr inbounds i8, ptr %frame, i64 100
  %1 = load i32, ptr %i_plane, align 4
  %cmp227 = icmp sgt i32 %1, 0
  br i1 %cmp227, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %i_stride = getelementptr inbounds i8, ptr %frame, i64 104
  %sps = getelementptr inbounds i8, ptr %h, i64 3200
  %tobool7.not = icmp eq i32 %b_end, 0
  %plane = getelementptr inbounds i8, ptr %frame, i64 152
  %mul33 = shl nsw i32 %mb_y, 4
  %sub34 = add nsw i32 %mul33, -4
  %or.cond = or i1 %tobool.not, %tobool7.not
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end77
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end77 ]
  %arrayidx = getelementptr inbounds [3 x i32], ptr %i_stride, i64 0, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx, align 4
  %3 = load ptr, ptr %sps, align 16
  %i_mb_width = getelementptr inbounds i8, ptr %3, i64 1084
  %4 = load i32, ptr %i_mb_width, align 4
  %mul = shl nsw i32 %4, 4
  %tobool2 = icmp ne i64 %indvars.iv, 0
  %lnot.ext6 = zext i1 %tobool2 to i32
  %shr = ashr exact i32 %mul, %lnot.ext6
  br i1 %tobool7.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %for.body
  %i_mb_height = getelementptr inbounds i8, ptr %3, i64 1088
  %5 = load i32, ptr %i_mb_height, align 4
  %sub = sub nsw i32 %5, %mb_y
  %mul9 = shl nsw i32 %sub, 4
  %6 = load i32, ptr %b_mbaff, align 4
  %shr12 = ashr i32 %mul9, %6
  br label %cond.end

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi i32 [ %shr12, %cond.true ], [ 16, %for.body ]
  %shr18 = ashr i32 %cond, %lnot.ext6
  %shr24 = lshr exact i32 32, %lnot.ext6
  %arrayidx32 = getelementptr inbounds [3 x ptr], ptr %plane, i64 0, i64 %indvars.iv
  %7 = load ptr, ptr %arrayidx32, align 8
  %mul35 = mul nsw i32 %2, %sub34
  %shr41 = ashr exact i32 %mul35, %lnot.ext6
  %spec.select = tail call i32 @llvm.smax.i32(i32 %shr41, i32 0)
  %idx.ext = zext nneg i32 %spec.select to i64
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %idx.ext
  %.pr = load i32, ptr %b_mbaff, align 4
  %add = add nsw i32 %.pr, %lnot.ext6
  %shr66 = lshr i32 4, %add
  %add67 = select i1 %or.cond, i32 0, i32 %shr66
  %height.0 = add nsw i32 %shr18, %add67
  %tobool71.not = icmp eq i32 %.pr, 0
  br i1 %tobool71.not, label %if.else, label %if.then72

if.then72:                                        ; preds = %cond.end
  %mul73 = shl nsw i32 %2, 1
  %cmp113.i = icmp sgt i32 %height.0, 0
  br i1 %cmp113.i, label %for.body.lr.ph.i, label %for.cond.cleanup.i

for.body.lr.ph.i:                                 ; preds = %if.then72
  %sub.i = sub nsw i32 0, %shr24
  %idx.ext.i = sext i32 %sub.i to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext.i
  %conv7.i = zext nneg i32 %shr24 to i64
  %idx.ext8.i = sext i32 %shr to i64
  %add.ptr9.i = getelementptr i8, ptr %add.ptr, i64 %idx.ext8.i
  %add.ptr15.i = getelementptr i8, ptr %add.ptr9.i, i64 -1
  %8 = sext i32 %mul73 to i64
  %wide.trip.count.i = zext nneg i32 %height.0 to i64
  %xtraiter = and i64 %wide.trip.count.i, 3
  %9 = icmp ult i32 %height.0, 4
  br i1 %9, label %for.cond.cleanup.i.loopexit.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %for.body.i

for.cond.cleanup.i.loopexit.unr-lcssa:            ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i.3, %for.body.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.cond.cleanup.i, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %for.cond.cleanup.i.loopexit.unr-lcssa, %for.body.i.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %for.body.i.epil ], [ %indvars.iv.i.unr, %for.cond.cleanup.i.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.i.epil ], [ 0, %for.cond.cleanup.i.loopexit.unr-lcssa ]
  %10 = mul nsw i64 %indvars.iv.i.epil, %8
  %add.ptr2.i.epil = getelementptr inbounds i8, ptr %add.ptr.i, i64 %10
  %add.ptr6.i.epil = getelementptr inbounds i8, ptr %add.ptr, i64 %10
  %11 = load i8, ptr %add.ptr6.i.epil, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i.epil, i8 %11, i64 %conv7.i, i1 false)
  %add.ptr12.i.epil = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %10
  %add.ptr18.i.epil = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %10
  %12 = load i8, ptr %add.ptr18.i.epil, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i.epil, i8 %12, i64 %conv7.i, i1 false)
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.cond.cleanup.i, label %for.body.i.epil, !llvm.loop !9

for.cond.cleanup.i:                               ; preds = %for.cond.cleanup.i.loopexit.unr-lcssa, %for.body.i.epil, %if.then72
  br i1 %tobool.not, label %for.body27.lr.ph.i, label %if.end.i

for.body27.lr.ph.i:                               ; preds = %for.cond.cleanup.i
  %sub28.i = sub nsw i32 0, %shr24
  %idx.ext29.i = sext i32 %sub28.i to i64
  %add.ptr30.i = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext29.i
  %mul42.i = shl nuw nsw i32 %shr24, 1
  %add.i = add nsw i32 %shr, %mul42.i
  %conv43.i = sext i32 %add.i to i64
  %13 = sext i32 %mul73 to i64
  %wide.trip.count127.i = zext nneg i32 %shr24 to i64
  br label %for.body27.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %indvars.iv.next.i.3, %for.body.i ]
  %niter = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %niter.next.3, %for.body.i ]
  %14 = mul nsw i64 %indvars.iv.i, %8
  %add.ptr2.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %14
  %add.ptr6.i = getelementptr inbounds i8, ptr %add.ptr, i64 %14
  %15 = load i8, ptr %add.ptr6.i, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i, i8 %15, i64 %conv7.i, i1 false)
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %14
  %add.ptr18.i = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %14
  %16 = load i8, ptr %add.ptr18.i, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i, i8 %16, i64 %conv7.i, i1 false)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %17 = mul nsw i64 %indvars.iv.next.i, %8
  %add.ptr2.i.1 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %17
  %add.ptr6.i.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %17
  %18 = load i8, ptr %add.ptr6.i.1, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i.1, i8 %18, i64 %conv7.i, i1 false)
  %add.ptr12.i.1 = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %17
  %add.ptr18.i.1 = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %17
  %19 = load i8, ptr %add.ptr18.i.1, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i.1, i8 %19, i64 %conv7.i, i1 false)
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2
  %20 = mul nsw i64 %indvars.iv.next.i.1, %8
  %add.ptr2.i.2 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %20
  %add.ptr6.i.2 = getelementptr inbounds i8, ptr %add.ptr, i64 %20
  %21 = load i8, ptr %add.ptr6.i.2, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i.2, i8 %21, i64 %conv7.i, i1 false)
  %add.ptr12.i.2 = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %20
  %add.ptr18.i.2 = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %20
  %22 = load i8, ptr %add.ptr18.i.2, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i.2, i8 %22, i64 %conv7.i, i1 false)
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3
  %23 = mul nsw i64 %indvars.iv.next.i.2, %8
  %add.ptr2.i.3 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %23
  %add.ptr6.i.3 = getelementptr inbounds i8, ptr %add.ptr, i64 %23
  %24 = load i8, ptr %add.ptr6.i.3, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i.3, i8 %24, i64 %conv7.i, i1 false)
  %add.ptr12.i.3 = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %23
  %add.ptr18.i.3 = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %23
  %25 = load i8, ptr %add.ptr18.i.3, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i.3, i8 %25, i64 %conv7.i, i1 false)
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.cond.cleanup.i.loopexit.unr-lcssa, label %for.body.i

for.body27.i:                                     ; preds = %for.body27.i, %for.body27.lr.ph.i
  %indvars.iv122.i = phi i64 [ 0, %for.body27.lr.ph.i ], [ %indvars.iv.next123.i.1, %for.body27.i ]
  %26 = xor i64 %indvars.iv122.i, -1
  %27 = mul nsw i64 %26, %13
  %add.ptr35.i = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %27
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %28 = xor i64 %indvars.iv122.i, -2
  %29 = mul nsw i64 %28, %13
  %add.ptr35.i.1 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %29
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.1, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %indvars.iv.next123.i.1 = add nuw nsw i64 %indvars.iv122.i, 2
  %exitcond128.not.i.1 = icmp eq i64 %indvars.iv.next123.i.1, %wide.trip.count127.i
  br i1 %exitcond128.not.i.1, label %if.end.i, label %for.body27.i

if.end.i:                                         ; preds = %for.body27.i, %for.cond.cleanup.i
  br i1 %tobool7.not, label %plane_expand_border.exit, label %for.body54.lr.ph.i

for.body54.lr.ph.i:                               ; preds = %if.end.i
  %sub55.i = sub nsw i32 0, %shr24
  %idx.ext56.i = sext i32 %sub55.i to i64
  %add.ptr57.i = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext56.i
  %sub65.i = add nsw i32 %height.0, -1
  %mul66.i = mul nsw i32 %sub65.i, %mul73
  %idx.ext67.i = sext i32 %mul66.i to i64
  %add.ptr68.i = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %idx.ext67.i
  %mul69.i = shl nuw nsw i32 %shr24, 1
  %add70.i = add nsw i32 %shr, %mul69.i
  %conv71.i = sext i32 %add70.i to i64
  %30 = sext i32 %height.0 to i64
  %31 = sext i32 %mul73 to i64
  %wide.trip.count134.i = zext nneg i32 %shr24 to i64
  br label %for.body54.i

for.body54.i:                                     ; preds = %for.body54.i, %for.body54.lr.ph.i
  %indvars.iv129.i = phi i64 [ 0, %for.body54.lr.ph.i ], [ %indvars.iv.next130.i.1, %for.body54.i ]
  %32 = add nsw i64 %indvars.iv129.i, %30
  %33 = mul nsw i64 %32, %31
  %add.ptr61.i = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %33
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i, ptr nonnull align 1 %add.ptr68.i, i64 %conv71.i, i1 false)
  %indvars.iv.next130.i = or disjoint i64 %indvars.iv129.i, 1
  %34 = add nsw i64 %indvars.iv.next130.i, %30
  %35 = mul nsw i64 %34, %31
  %add.ptr61.i.1 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %35
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.1, ptr nonnull align 1 %add.ptr68.i, i64 %conv71.i, i1 false)
  %indvars.iv.next130.i.1 = add nuw nsw i64 %indvars.iv129.i, 2
  %exitcond135.not.i.1 = icmp eq i64 %indvars.iv.next130.i.1, %wide.trip.count134.i
  br i1 %exitcond135.not.i.1, label %plane_expand_border.exit, label %for.body54.i

plane_expand_border.exit:                         ; preds = %for.body54.i, %if.end.i
  %idx.ext74 = sext i32 %2 to i64
  %add.ptr75 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext74
  br i1 %cmp113.i, label %for.body.lr.ph.i156, label %for.cond.cleanup.i123

for.body.lr.ph.i156:                              ; preds = %plane_expand_border.exit
  %sub.i157 = sub nsw i32 0, %shr24
  %idx.ext.i158 = sext i32 %sub.i157 to i64
  %add.ptr.i159 = getelementptr inbounds i8, ptr %add.ptr75, i64 %idx.ext.i158
  %conv7.i160 = zext nneg i32 %shr24 to i64
  %idx.ext8.i161 = sext i32 %shr to i64
  %add.ptr9.i162 = getelementptr i8, ptr %add.ptr75, i64 %idx.ext8.i161
  %add.ptr15.i163 = getelementptr i8, ptr %add.ptr9.i162, i64 -1
  %36 = sext i32 %mul73 to i64
  %wide.trip.count.i164 = zext nneg i32 %height.0 to i64
  %xtraiter234 = and i64 %wide.trip.count.i164, 3
  %37 = icmp ult i32 %height.0, 4
  br i1 %37, label %for.cond.cleanup.i123.loopexit.unr-lcssa, label %for.body.lr.ph.i156.new

for.body.lr.ph.i156.new:                          ; preds = %for.body.lr.ph.i156
  %unroll_iter237 = and i64 %wide.trip.count.i164, 2147483644
  br label %for.body.i165

for.cond.cleanup.i123.loopexit.unr-lcssa:         ; preds = %for.body.i165, %for.body.lr.ph.i156
  %indvars.iv.i166.unr = phi i64 [ 0, %for.body.lr.ph.i156 ], [ %indvars.iv.next.i171.3, %for.body.i165 ]
  %lcmp.mod236.not = icmp eq i64 %xtraiter234, 0
  br i1 %lcmp.mod236.not, label %for.cond.cleanup.i123, label %for.body.i165.epil

for.body.i165.epil:                               ; preds = %for.cond.cleanup.i123.loopexit.unr-lcssa, %for.body.i165.epil
  %indvars.iv.i166.epil = phi i64 [ %indvars.iv.next.i171.epil, %for.body.i165.epil ], [ %indvars.iv.i166.unr, %for.cond.cleanup.i123.loopexit.unr-lcssa ]
  %epil.iter235 = phi i64 [ %epil.iter235.next, %for.body.i165.epil ], [ 0, %for.cond.cleanup.i123.loopexit.unr-lcssa ]
  %38 = mul nsw i64 %indvars.iv.i166.epil, %36
  %add.ptr2.i167.epil = getelementptr inbounds i8, ptr %add.ptr.i159, i64 %38
  %add.ptr6.i168.epil = getelementptr inbounds i8, ptr %add.ptr75, i64 %38
  %39 = load i8, ptr %add.ptr6.i168.epil, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i167.epil, i8 %39, i64 %conv7.i160, i1 false)
  %add.ptr12.i169.epil = getelementptr inbounds i8, ptr %add.ptr9.i162, i64 %38
  %add.ptr18.i170.epil = getelementptr inbounds i8, ptr %add.ptr15.i163, i64 %38
  %40 = load i8, ptr %add.ptr18.i170.epil, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i169.epil, i8 %40, i64 %conv7.i160, i1 false)
  %indvars.iv.next.i171.epil = add nuw nsw i64 %indvars.iv.i166.epil, 1
  %epil.iter235.next = add i64 %epil.iter235, 1
  %epil.iter235.cmp.not = icmp eq i64 %epil.iter235.next, %xtraiter234
  br i1 %epil.iter235.cmp.not, label %for.cond.cleanup.i123, label %for.body.i165.epil, !llvm.loop !11

for.cond.cleanup.i123:                            ; preds = %for.cond.cleanup.i123.loopexit.unr-lcssa, %for.body.i165.epil, %plane_expand_border.exit
  br i1 %tobool.not, label %for.body27.lr.ph.i143, label %if.end.i124

for.body27.lr.ph.i143:                            ; preds = %for.cond.cleanup.i123
  %sub28.i144 = sub nsw i32 0, %shr24
  %idx.ext29.i145 = sext i32 %sub28.i144 to i64
  %add.ptr30.i146 = getelementptr inbounds i8, ptr %add.ptr75, i64 %idx.ext29.i145
  %mul42.i147 = shl nuw nsw i32 %shr24, 1
  %add.i148 = add nsw i32 %shr, %mul42.i147
  %conv43.i149 = sext i32 %add.i148 to i64
  %41 = sext i32 %mul73 to i64
  %wide.trip.count127.i150 = zext nneg i32 %shr24 to i64
  br label %for.body27.i151

for.body.i165:                                    ; preds = %for.body.i165, %for.body.lr.ph.i156.new
  %indvars.iv.i166 = phi i64 [ 0, %for.body.lr.ph.i156.new ], [ %indvars.iv.next.i171.3, %for.body.i165 ]
  %niter238 = phi i64 [ 0, %for.body.lr.ph.i156.new ], [ %niter238.next.3, %for.body.i165 ]
  %42 = mul nsw i64 %indvars.iv.i166, %36
  %add.ptr2.i167 = getelementptr inbounds i8, ptr %add.ptr.i159, i64 %42
  %add.ptr6.i168 = getelementptr inbounds i8, ptr %add.ptr75, i64 %42
  %43 = load i8, ptr %add.ptr6.i168, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i167, i8 %43, i64 %conv7.i160, i1 false)
  %add.ptr12.i169 = getelementptr inbounds i8, ptr %add.ptr9.i162, i64 %42
  %add.ptr18.i170 = getelementptr inbounds i8, ptr %add.ptr15.i163, i64 %42
  %44 = load i8, ptr %add.ptr18.i170, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i169, i8 %44, i64 %conv7.i160, i1 false)
  %indvars.iv.next.i171 = or disjoint i64 %indvars.iv.i166, 1
  %45 = mul nsw i64 %indvars.iv.next.i171, %36
  %add.ptr2.i167.1 = getelementptr inbounds i8, ptr %add.ptr.i159, i64 %45
  %add.ptr6.i168.1 = getelementptr inbounds i8, ptr %add.ptr75, i64 %45
  %46 = load i8, ptr %add.ptr6.i168.1, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i167.1, i8 %46, i64 %conv7.i160, i1 false)
  %add.ptr12.i169.1 = getelementptr inbounds i8, ptr %add.ptr9.i162, i64 %45
  %add.ptr18.i170.1 = getelementptr inbounds i8, ptr %add.ptr15.i163, i64 %45
  %47 = load i8, ptr %add.ptr18.i170.1, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i169.1, i8 %47, i64 %conv7.i160, i1 false)
  %indvars.iv.next.i171.1 = or disjoint i64 %indvars.iv.i166, 2
  %48 = mul nsw i64 %indvars.iv.next.i171.1, %36
  %add.ptr2.i167.2 = getelementptr inbounds i8, ptr %add.ptr.i159, i64 %48
  %add.ptr6.i168.2 = getelementptr inbounds i8, ptr %add.ptr75, i64 %48
  %49 = load i8, ptr %add.ptr6.i168.2, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i167.2, i8 %49, i64 %conv7.i160, i1 false)
  %add.ptr12.i169.2 = getelementptr inbounds i8, ptr %add.ptr9.i162, i64 %48
  %add.ptr18.i170.2 = getelementptr inbounds i8, ptr %add.ptr15.i163, i64 %48
  %50 = load i8, ptr %add.ptr18.i170.2, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i169.2, i8 %50, i64 %conv7.i160, i1 false)
  %indvars.iv.next.i171.2 = or disjoint i64 %indvars.iv.i166, 3
  %51 = mul nsw i64 %indvars.iv.next.i171.2, %36
  %add.ptr2.i167.3 = getelementptr inbounds i8, ptr %add.ptr.i159, i64 %51
  %add.ptr6.i168.3 = getelementptr inbounds i8, ptr %add.ptr75, i64 %51
  %52 = load i8, ptr %add.ptr6.i168.3, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i167.3, i8 %52, i64 %conv7.i160, i1 false)
  %add.ptr12.i169.3 = getelementptr inbounds i8, ptr %add.ptr9.i162, i64 %51
  %add.ptr18.i170.3 = getelementptr inbounds i8, ptr %add.ptr15.i163, i64 %51
  %53 = load i8, ptr %add.ptr18.i170.3, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i169.3, i8 %53, i64 %conv7.i160, i1 false)
  %indvars.iv.next.i171.3 = add nuw nsw i64 %indvars.iv.i166, 4
  %niter238.next.3 = add i64 %niter238, 4
  %niter238.ncmp.3 = icmp eq i64 %niter238.next.3, %unroll_iter237
  br i1 %niter238.ncmp.3, label %for.cond.cleanup.i123.loopexit.unr-lcssa, label %for.body.i165

for.body27.i151:                                  ; preds = %for.body27.i151, %for.body27.lr.ph.i143
  %indvars.iv122.i152 = phi i64 [ 0, %for.body27.lr.ph.i143 ], [ %indvars.iv.next123.i154.1, %for.body27.i151 ]
  %54 = xor i64 %indvars.iv122.i152, -1
  %55 = mul nsw i64 %54, %41
  %add.ptr35.i153 = getelementptr inbounds i8, ptr %add.ptr30.i146, i64 %55
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i153, ptr nonnull align 1 %add.ptr30.i146, i64 %conv43.i149, i1 false)
  %56 = xor i64 %indvars.iv122.i152, -2
  %57 = mul nsw i64 %56, %41
  %add.ptr35.i153.1 = getelementptr inbounds i8, ptr %add.ptr30.i146, i64 %57
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i153.1, ptr nonnull align 1 %add.ptr30.i146, i64 %conv43.i149, i1 false)
  %indvars.iv.next123.i154.1 = add nuw nsw i64 %indvars.iv122.i152, 2
  %exitcond128.not.i155.1 = icmp eq i64 %indvars.iv.next123.i154.1, %wide.trip.count127.i150
  br i1 %exitcond128.not.i155.1, label %if.end.i124, label %for.body27.i151

if.end.i124:                                      ; preds = %for.body27.i151, %for.cond.cleanup.i123
  br i1 %tobool7.not, label %if.end77, label %for.body54.lr.ph.i126

for.body54.lr.ph.i126:                            ; preds = %if.end.i124
  %sub55.i127 = sub nsw i32 0, %shr24
  %idx.ext56.i128 = sext i32 %sub55.i127 to i64
  %add.ptr57.i129 = getelementptr inbounds i8, ptr %add.ptr75, i64 %idx.ext56.i128
  %sub65.i130 = add nsw i32 %height.0, -1
  %mul66.i131 = mul nsw i32 %sub65.i130, %mul73
  %idx.ext67.i132 = sext i32 %mul66.i131 to i64
  %add.ptr68.i133 = getelementptr inbounds i8, ptr %add.ptr57.i129, i64 %idx.ext67.i132
  %mul69.i134 = shl nuw nsw i32 %shr24, 1
  %add70.i135 = add nsw i32 %shr, %mul69.i134
  %conv71.i136 = sext i32 %add70.i135 to i64
  %58 = sext i32 %height.0 to i64
  %59 = sext i32 %mul73 to i64
  %wide.trip.count134.i137 = zext nneg i32 %shr24 to i64
  br label %for.body54.i138

for.body54.i138:                                  ; preds = %for.body54.i138, %for.body54.lr.ph.i126
  %indvars.iv129.i139 = phi i64 [ 0, %for.body54.lr.ph.i126 ], [ %indvars.iv.next130.i141.1, %for.body54.i138 ]
  %60 = add nsw i64 %indvars.iv129.i139, %58
  %61 = mul nsw i64 %60, %59
  %add.ptr61.i140 = getelementptr inbounds i8, ptr %add.ptr57.i129, i64 %61
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i140, ptr nonnull align 1 %add.ptr68.i133, i64 %conv71.i136, i1 false)
  %indvars.iv.next130.i141 = or disjoint i64 %indvars.iv129.i139, 1
  %62 = add nsw i64 %indvars.iv.next130.i141, %58
  %63 = mul nsw i64 %62, %59
  %add.ptr61.i140.1 = getelementptr inbounds i8, ptr %add.ptr57.i129, i64 %63
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i140.1, ptr nonnull align 1 %add.ptr68.i133, i64 %conv71.i136, i1 false)
  %indvars.iv.next130.i141.1 = add nuw nsw i64 %indvars.iv129.i139, 2
  %exitcond135.not.i142.1 = icmp eq i64 %indvars.iv.next130.i141.1, %wide.trip.count134.i137
  br i1 %exitcond135.not.i142.1, label %if.end77, label %for.body54.i138

if.else:                                          ; preds = %cond.end
  %cmp113.i174 = icmp sgt i32 %height.0, 0
  br i1 %cmp113.i174, label %for.body.lr.ph.i208, label %for.cond.cleanup.i175

for.body.lr.ph.i208:                              ; preds = %if.else
  %sub.i209 = sub nsw i32 0, %shr24
  %idx.ext.i210 = sext i32 %sub.i209 to i64
  %add.ptr.i211 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext.i210
  %conv7.i212 = zext nneg i32 %shr24 to i64
  %idx.ext8.i213 = sext i32 %shr to i64
  %add.ptr9.i214 = getelementptr i8, ptr %add.ptr, i64 %idx.ext8.i213
  %add.ptr15.i215 = getelementptr i8, ptr %add.ptr9.i214, i64 -1
  %64 = sext i32 %2 to i64
  %wide.trip.count.i216 = zext nneg i32 %height.0 to i64
  %xtraiter239 = and i64 %wide.trip.count.i216, 3
  %65 = icmp ult i32 %height.0, 4
  br i1 %65, label %for.cond.cleanup.i175.loopexit.unr-lcssa, label %for.body.lr.ph.i208.new

for.body.lr.ph.i208.new:                          ; preds = %for.body.lr.ph.i208
  %unroll_iter242 = and i64 %wide.trip.count.i216, 2147483644
  br label %for.body.i217

for.cond.cleanup.i175.loopexit.unr-lcssa:         ; preds = %for.body.i217, %for.body.lr.ph.i208
  %indvars.iv.i218.unr = phi i64 [ 0, %for.body.lr.ph.i208 ], [ %indvars.iv.next.i223.3, %for.body.i217 ]
  %lcmp.mod241.not = icmp eq i64 %xtraiter239, 0
  br i1 %lcmp.mod241.not, label %for.cond.cleanup.i175, label %for.body.i217.epil

for.body.i217.epil:                               ; preds = %for.cond.cleanup.i175.loopexit.unr-lcssa, %for.body.i217.epil
  %indvars.iv.i218.epil = phi i64 [ %indvars.iv.next.i223.epil, %for.body.i217.epil ], [ %indvars.iv.i218.unr, %for.cond.cleanup.i175.loopexit.unr-lcssa ]
  %epil.iter240 = phi i64 [ %epil.iter240.next, %for.body.i217.epil ], [ 0, %for.cond.cleanup.i175.loopexit.unr-lcssa ]
  %66 = mul nsw i64 %indvars.iv.i218.epil, %64
  %add.ptr2.i219.epil = getelementptr inbounds i8, ptr %add.ptr.i211, i64 %66
  %add.ptr6.i220.epil = getelementptr inbounds i8, ptr %add.ptr, i64 %66
  %67 = load i8, ptr %add.ptr6.i220.epil, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i219.epil, i8 %67, i64 %conv7.i212, i1 false)
  %add.ptr12.i221.epil = getelementptr inbounds i8, ptr %add.ptr9.i214, i64 %66
  %add.ptr18.i222.epil = getelementptr inbounds i8, ptr %add.ptr15.i215, i64 %66
  %68 = load i8, ptr %add.ptr18.i222.epil, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i221.epil, i8 %68, i64 %conv7.i212, i1 false)
  %indvars.iv.next.i223.epil = add nuw nsw i64 %indvars.iv.i218.epil, 1
  %epil.iter240.next = add i64 %epil.iter240, 1
  %epil.iter240.cmp.not = icmp eq i64 %epil.iter240.next, %xtraiter239
  br i1 %epil.iter240.cmp.not, label %for.cond.cleanup.i175, label %for.body.i217.epil, !llvm.loop !12

for.cond.cleanup.i175:                            ; preds = %for.cond.cleanup.i175.loopexit.unr-lcssa, %for.body.i217.epil, %if.else
  br i1 %tobool.not, label %for.body27.lr.ph.i195, label %if.end.i176

for.body27.lr.ph.i195:                            ; preds = %for.cond.cleanup.i175
  %sub28.i196 = sub nsw i32 0, %shr24
  %idx.ext29.i197 = sext i32 %sub28.i196 to i64
  %add.ptr30.i198 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext29.i197
  %mul42.i199 = shl nuw nsw i32 %shr24, 1
  %add.i200 = add nsw i32 %shr, %mul42.i199
  %conv43.i201 = sext i32 %add.i200 to i64
  %69 = sext i32 %2 to i64
  %wide.trip.count127.i202 = zext nneg i32 %shr24 to i64
  br label %for.body27.i203

for.body.i217:                                    ; preds = %for.body.i217, %for.body.lr.ph.i208.new
  %indvars.iv.i218 = phi i64 [ 0, %for.body.lr.ph.i208.new ], [ %indvars.iv.next.i223.3, %for.body.i217 ]
  %niter243 = phi i64 [ 0, %for.body.lr.ph.i208.new ], [ %niter243.next.3, %for.body.i217 ]
  %70 = mul nsw i64 %indvars.iv.i218, %64
  %add.ptr2.i219 = getelementptr inbounds i8, ptr %add.ptr.i211, i64 %70
  %add.ptr6.i220 = getelementptr inbounds i8, ptr %add.ptr, i64 %70
  %71 = load i8, ptr %add.ptr6.i220, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i219, i8 %71, i64 %conv7.i212, i1 false)
  %add.ptr12.i221 = getelementptr inbounds i8, ptr %add.ptr9.i214, i64 %70
  %add.ptr18.i222 = getelementptr inbounds i8, ptr %add.ptr15.i215, i64 %70
  %72 = load i8, ptr %add.ptr18.i222, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i221, i8 %72, i64 %conv7.i212, i1 false)
  %indvars.iv.next.i223 = or disjoint i64 %indvars.iv.i218, 1
  %73 = mul nsw i64 %indvars.iv.next.i223, %64
  %add.ptr2.i219.1 = getelementptr inbounds i8, ptr %add.ptr.i211, i64 %73
  %add.ptr6.i220.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %73
  %74 = load i8, ptr %add.ptr6.i220.1, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i219.1, i8 %74, i64 %conv7.i212, i1 false)
  %add.ptr12.i221.1 = getelementptr inbounds i8, ptr %add.ptr9.i214, i64 %73
  %add.ptr18.i222.1 = getelementptr inbounds i8, ptr %add.ptr15.i215, i64 %73
  %75 = load i8, ptr %add.ptr18.i222.1, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i221.1, i8 %75, i64 %conv7.i212, i1 false)
  %indvars.iv.next.i223.1 = or disjoint i64 %indvars.iv.i218, 2
  %76 = mul nsw i64 %indvars.iv.next.i223.1, %64
  %add.ptr2.i219.2 = getelementptr inbounds i8, ptr %add.ptr.i211, i64 %76
  %add.ptr6.i220.2 = getelementptr inbounds i8, ptr %add.ptr, i64 %76
  %77 = load i8, ptr %add.ptr6.i220.2, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i219.2, i8 %77, i64 %conv7.i212, i1 false)
  %add.ptr12.i221.2 = getelementptr inbounds i8, ptr %add.ptr9.i214, i64 %76
  %add.ptr18.i222.2 = getelementptr inbounds i8, ptr %add.ptr15.i215, i64 %76
  %78 = load i8, ptr %add.ptr18.i222.2, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i221.2, i8 %78, i64 %conv7.i212, i1 false)
  %indvars.iv.next.i223.2 = or disjoint i64 %indvars.iv.i218, 3
  %79 = mul nsw i64 %indvars.iv.next.i223.2, %64
  %add.ptr2.i219.3 = getelementptr inbounds i8, ptr %add.ptr.i211, i64 %79
  %add.ptr6.i220.3 = getelementptr inbounds i8, ptr %add.ptr, i64 %79
  %80 = load i8, ptr %add.ptr6.i220.3, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i219.3, i8 %80, i64 %conv7.i212, i1 false)
  %add.ptr12.i221.3 = getelementptr inbounds i8, ptr %add.ptr9.i214, i64 %79
  %add.ptr18.i222.3 = getelementptr inbounds i8, ptr %add.ptr15.i215, i64 %79
  %81 = load i8, ptr %add.ptr18.i222.3, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i221.3, i8 %81, i64 %conv7.i212, i1 false)
  %indvars.iv.next.i223.3 = add nuw nsw i64 %indvars.iv.i218, 4
  %niter243.next.3 = add i64 %niter243, 4
  %niter243.ncmp.3 = icmp eq i64 %niter243.next.3, %unroll_iter242
  br i1 %niter243.ncmp.3, label %for.cond.cleanup.i175.loopexit.unr-lcssa, label %for.body.i217

for.body27.i203:                                  ; preds = %for.body27.i203, %for.body27.lr.ph.i195
  %indvars.iv122.i204 = phi i64 [ 0, %for.body27.lr.ph.i195 ], [ %indvars.iv.next123.i206.1, %for.body27.i203 ]
  %82 = xor i64 %indvars.iv122.i204, -1
  %83 = mul nsw i64 %82, %69
  %add.ptr35.i205 = getelementptr inbounds i8, ptr %add.ptr30.i198, i64 %83
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i205, ptr nonnull align 1 %add.ptr30.i198, i64 %conv43.i201, i1 false)
  %84 = xor i64 %indvars.iv122.i204, -2
  %85 = mul nsw i64 %84, %69
  %add.ptr35.i205.1 = getelementptr inbounds i8, ptr %add.ptr30.i198, i64 %85
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i205.1, ptr nonnull align 1 %add.ptr30.i198, i64 %conv43.i201, i1 false)
  %indvars.iv.next123.i206.1 = add nuw nsw i64 %indvars.iv122.i204, 2
  %exitcond128.not.i207.1 = icmp eq i64 %indvars.iv.next123.i206.1, %wide.trip.count127.i202
  br i1 %exitcond128.not.i207.1, label %if.end.i176, label %for.body27.i203

if.end.i176:                                      ; preds = %for.body27.i203, %for.cond.cleanup.i175
  br i1 %tobool7.not, label %if.end77, label %for.body54.lr.ph.i178

for.body54.lr.ph.i178:                            ; preds = %if.end.i176
  %sub55.i179 = sub nsw i32 0, %shr24
  %idx.ext56.i180 = sext i32 %sub55.i179 to i64
  %add.ptr57.i181 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext56.i180
  %sub65.i182 = add nsw i32 %height.0, -1
  %mul66.i183 = mul nsw i32 %sub65.i182, %2
  %idx.ext67.i184 = sext i32 %mul66.i183 to i64
  %add.ptr68.i185 = getelementptr inbounds i8, ptr %add.ptr57.i181, i64 %idx.ext67.i184
  %mul69.i186 = shl nuw nsw i32 %shr24, 1
  %add70.i187 = add nsw i32 %shr, %mul69.i186
  %conv71.i188 = sext i32 %add70.i187 to i64
  %86 = sext i32 %height.0 to i64
  %87 = sext i32 %2 to i64
  %wide.trip.count134.i189 = zext nneg i32 %shr24 to i64
  br label %for.body54.i190

for.body54.i190:                                  ; preds = %for.body54.i190, %for.body54.lr.ph.i178
  %indvars.iv129.i191 = phi i64 [ 0, %for.body54.lr.ph.i178 ], [ %indvars.iv.next130.i193.1, %for.body54.i190 ]
  %88 = add nsw i64 %indvars.iv129.i191, %86
  %89 = mul nsw i64 %88, %87
  %add.ptr61.i192 = getelementptr inbounds i8, ptr %add.ptr57.i181, i64 %89
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i192, ptr nonnull align 1 %add.ptr68.i185, i64 %conv71.i188, i1 false)
  %indvars.iv.next130.i193 = or disjoint i64 %indvars.iv129.i191, 1
  %90 = add nsw i64 %indvars.iv.next130.i193, %86
  %91 = mul nsw i64 %90, %87
  %add.ptr61.i192.1 = getelementptr inbounds i8, ptr %add.ptr57.i181, i64 %91
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i192.1, ptr nonnull align 1 %add.ptr68.i185, i64 %conv71.i188, i1 false)
  %indvars.iv.next130.i193.1 = add nuw nsw i64 %indvars.iv129.i191, 2
  %exitcond135.not.i194.1 = icmp eq i64 %indvars.iv.next130.i193.1, %wide.trip.count134.i189
  br i1 %exitcond135.not.i194.1, label %if.end77, label %for.body54.i190

if.end77:                                         ; preds = %for.body54.i138, %for.body54.i190, %if.end.i176, %if.end.i124
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %92 = load i32, ptr %i_plane, align 4
  %93 = sext i32 %92 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %93
  br i1 %cmp, label %for.body, label %cleanup

cleanup:                                          ; preds = %if.end77, %for.cond.preheader, %entry
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_frame_expand_border_filtered(ptr nocapture noundef readonly %h, ptr nocapture noundef readonly %frame, i32 noundef %mb_y, i32 noundef %b_end) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq i32 %mb_y, 0
  %i_stride = getelementptr inbounds i8, ptr %frame, i64 104
  %0 = load i32, ptr %i_stride, align 8
  %sps = getelementptr inbounds i8, ptr %h, i64 3200
  %1 = load ptr, ptr %sps, align 16
  %i_mb_width = getelementptr inbounds i8, ptr %1, i64 1084
  %2 = load i32, ptr %i_mb_width, align 4
  %mul = shl nsw i32 %2, 4
  %add = or disjoint i32 %mul, 8
  %tobool1.not = icmp eq i32 %b_end, 0
  br i1 %tobool1.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %i_mb_height = getelementptr inbounds i8, ptr %1, i64 1088
  %3 = load i32, ptr %i_mb_height, align 4
  %sub = sub nsw i32 %3, %mb_y
  %mul3 = shl nsw i32 %sub, 4
  %b_mbaff = getelementptr inbounds i8, ptr %h, i64 7268
  %4 = load i32, ptr %b_mbaff, align 4
  %shr = ashr i32 %mul3, %4
  %add4 = add nsw i32 %shr, 16
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %add4, %cond.true ], [ 16, %entry ]
  %filtered = getelementptr inbounds i8, ptr %frame, i64 176
  %mul6 = shl nsw i32 %mb_y, 4
  %b_mbaff8 = getelementptr inbounds i8, ptr %h, i64 7268
  %mul15 = shl nsw i32 %0, 1
  %cmp113.i = icmp sgt i32 %cond, 0
  %idx.ext8.i = sext i32 %add to i64
  %5 = sext i32 %mul15 to i64
  %wide.trip.count.i = zext i32 %cond to i64
  %add.i = add nsw i32 %mul, 64
  %conv43.i = sext i32 %add.i to i64
  %sub65.i = add nsw i32 %cond, -1
  %mul66.i = mul nsw i32 %sub65.i, %mul15
  %idx.ext67.i = sext i32 %mul66.i to i64
  %6 = sext i32 %cond to i64
  %idx.ext16 = sext i32 %0 to i64
  %mul66.i95 = mul nsw i32 %sub65.i, %0
  %idx.ext67.i96 = sext i32 %mul66.i95 to i64
  %7 = sub nsw i64 0, %5
  %8 = mul nsw i64 %5, -2
  %9 = mul nsw i64 %5, -3
  %10 = mul nsw i64 %5, -4
  %11 = mul nsw i64 %5, -5
  %12 = mul nsw i64 %5, -6
  %13 = mul nsw i64 %5, -7
  %14 = mul nsw i64 %5, -8
  %15 = mul nsw i64 %5, -9
  %16 = mul nsw i64 %5, -10
  %17 = mul nsw i64 %5, -11
  %18 = mul nsw i64 %5, -12
  %19 = mul nsw i64 %5, -13
  %20 = mul nsw i64 %5, -14
  %21 = mul nsw i64 %5, -15
  %22 = mul nsw i64 %5, -16
  %23 = mul nsw i64 %5, -17
  %24 = mul nsw i64 %5, -18
  %25 = mul nsw i64 %5, -19
  %26 = mul nsw i64 %5, -20
  %27 = mul nsw i64 %5, -21
  %28 = mul nsw i64 %5, -22
  %29 = mul nsw i64 %5, -23
  %30 = mul nsw i64 %5, -24
  %31 = mul nsw i64 %6, %5
  %32 = add nsw i64 %6, 1
  %33 = mul nsw i64 %32, %5
  %34 = add nsw i64 %6, 2
  %35 = mul nsw i64 %34, %5
  %36 = add nsw i64 %6, 3
  %37 = mul nsw i64 %36, %5
  %38 = add nsw i64 %6, 4
  %39 = mul nsw i64 %38, %5
  %40 = add nsw i64 %6, 5
  %41 = mul nsw i64 %40, %5
  %42 = add nsw i64 %6, 6
  %43 = mul nsw i64 %42, %5
  %44 = add nsw i64 %6, 7
  %45 = mul nsw i64 %44, %5
  %46 = add nsw i64 %6, 8
  %47 = mul nsw i64 %46, %5
  %48 = add nsw i64 %6, 9
  %49 = mul nsw i64 %48, %5
  %50 = add nsw i64 %6, 10
  %51 = mul nsw i64 %50, %5
  %52 = add nsw i64 %6, 11
  %53 = mul nsw i64 %52, %5
  %54 = add nsw i64 %6, 12
  %55 = mul nsw i64 %54, %5
  %56 = add nsw i64 %6, 13
  %57 = mul nsw i64 %56, %5
  %58 = add nsw i64 %6, 14
  %59 = mul nsw i64 %58, %5
  %60 = add nsw i64 %6, 15
  %61 = mul nsw i64 %60, %5
  %62 = add nsw i64 %6, 16
  %63 = mul nsw i64 %62, %5
  %64 = add nsw i64 %6, 17
  %65 = mul nsw i64 %64, %5
  %66 = add nsw i64 %6, 18
  %67 = mul nsw i64 %66, %5
  %68 = add nsw i64 %6, 19
  %69 = mul nsw i64 %68, %5
  %70 = add nsw i64 %6, 20
  %71 = mul nsw i64 %70, %5
  %72 = add nsw i64 %6, 21
  %73 = mul nsw i64 %72, %5
  %74 = add nsw i64 %6, 22
  %75 = mul nsw i64 %74, %5
  %76 = add nsw i64 %6, 23
  %77 = mul nsw i64 %76, %5
  %78 = sub nsw i64 0, %5
  %79 = mul nsw i64 %5, -2
  %80 = mul nsw i64 %5, -3
  %81 = mul nsw i64 %5, -4
  %82 = mul nsw i64 %5, -5
  %83 = mul nsw i64 %5, -6
  %84 = mul nsw i64 %5, -7
  %85 = mul nsw i64 %5, -8
  %86 = mul nsw i64 %5, -9
  %87 = mul nsw i64 %5, -10
  %88 = mul nsw i64 %5, -11
  %89 = mul nsw i64 %5, -12
  %90 = mul nsw i64 %5, -13
  %91 = mul nsw i64 %5, -14
  %92 = mul nsw i64 %5, -15
  %93 = mul nsw i64 %5, -16
  %94 = mul nsw i64 %5, -17
  %95 = mul nsw i64 %5, -18
  %96 = mul nsw i64 %5, -19
  %97 = mul nsw i64 %5, -20
  %98 = mul nsw i64 %5, -21
  %99 = mul nsw i64 %5, -22
  %100 = mul nsw i64 %5, -23
  %101 = mul nsw i64 %5, -24
  %102 = mul nsw i64 %6, %5
  %103 = add nsw i64 %6, 1
  %104 = mul nsw i64 %103, %5
  %105 = add nsw i64 %6, 2
  %106 = mul nsw i64 %105, %5
  %107 = add nsw i64 %6, 3
  %108 = mul nsw i64 %107, %5
  %109 = add nsw i64 %6, 4
  %110 = mul nsw i64 %109, %5
  %111 = add nsw i64 %6, 5
  %112 = mul nsw i64 %111, %5
  %113 = add nsw i64 %6, 6
  %114 = mul nsw i64 %113, %5
  %115 = add nsw i64 %6, 7
  %116 = mul nsw i64 %115, %5
  %117 = add nsw i64 %6, 8
  %118 = mul nsw i64 %117, %5
  %119 = add nsw i64 %6, 9
  %120 = mul nsw i64 %119, %5
  %121 = add nsw i64 %6, 10
  %122 = mul nsw i64 %121, %5
  %123 = add nsw i64 %6, 11
  %124 = mul nsw i64 %123, %5
  %125 = add nsw i64 %6, 12
  %126 = mul nsw i64 %125, %5
  %127 = add nsw i64 %6, 13
  %128 = mul nsw i64 %127, %5
  %129 = add nsw i64 %6, 14
  %130 = mul nsw i64 %129, %5
  %131 = add nsw i64 %6, 15
  %132 = mul nsw i64 %131, %5
  %133 = add nsw i64 %6, 16
  %134 = mul nsw i64 %133, %5
  %135 = add nsw i64 %6, 17
  %136 = mul nsw i64 %135, %5
  %137 = add nsw i64 %6, 18
  %138 = mul nsw i64 %137, %5
  %139 = add nsw i64 %6, 19
  %140 = mul nsw i64 %139, %5
  %141 = add nsw i64 %6, 20
  %142 = mul nsw i64 %141, %5
  %143 = add nsw i64 %6, 21
  %144 = mul nsw i64 %143, %5
  %145 = add nsw i64 %6, 22
  %146 = mul nsw i64 %145, %5
  %147 = add nsw i64 %6, 23
  %148 = mul nsw i64 %147, %5
  %149 = sub nsw i64 0, %idx.ext16
  %150 = mul nsw i64 %idx.ext16, -2
  %151 = mul nsw i64 %idx.ext16, -3
  %152 = mul nsw i64 %idx.ext16, -4
  %153 = mul nsw i64 %idx.ext16, -5
  %154 = mul nsw i64 %idx.ext16, -6
  %155 = mul nsw i64 %idx.ext16, -7
  %156 = mul nsw i64 %idx.ext16, -8
  %157 = mul nsw i64 %idx.ext16, -9
  %158 = mul nsw i64 %idx.ext16, -10
  %159 = mul nsw i64 %idx.ext16, -11
  %160 = mul nsw i64 %idx.ext16, -12
  %161 = mul nsw i64 %idx.ext16, -13
  %162 = mul nsw i64 %idx.ext16, -14
  %163 = mul nsw i64 %idx.ext16, -15
  %164 = mul nsw i64 %idx.ext16, -16
  %165 = mul nsw i64 %idx.ext16, -17
  %166 = mul nsw i64 %idx.ext16, -18
  %167 = mul nsw i64 %idx.ext16, -19
  %168 = mul nsw i64 %idx.ext16, -20
  %169 = mul nsw i64 %idx.ext16, -21
  %170 = mul nsw i64 %idx.ext16, -22
  %171 = mul nsw i64 %idx.ext16, -23
  %172 = mul nsw i64 %idx.ext16, -24
  %173 = mul nsw i64 %6, %idx.ext16
  %174 = add nsw i64 %6, 1
  %175 = mul nsw i64 %174, %idx.ext16
  %176 = add nsw i64 %6, 2
  %177 = mul nsw i64 %176, %idx.ext16
  %178 = add nsw i64 %6, 3
  %179 = mul nsw i64 %178, %idx.ext16
  %180 = add nsw i64 %6, 4
  %181 = mul nsw i64 %180, %idx.ext16
  %182 = add nsw i64 %6, 5
  %183 = mul nsw i64 %182, %idx.ext16
  %184 = add nsw i64 %6, 6
  %185 = mul nsw i64 %184, %idx.ext16
  %186 = add nsw i64 %6, 7
  %187 = mul nsw i64 %186, %idx.ext16
  %188 = add nsw i64 %6, 8
  %189 = mul nsw i64 %188, %idx.ext16
  %190 = add nsw i64 %6, 9
  %191 = mul nsw i64 %190, %idx.ext16
  %192 = add nsw i64 %6, 10
  %193 = mul nsw i64 %192, %idx.ext16
  %194 = add nsw i64 %6, 11
  %195 = mul nsw i64 %194, %idx.ext16
  %196 = add nsw i64 %6, 12
  %197 = mul nsw i64 %196, %idx.ext16
  %198 = add nsw i64 %6, 13
  %199 = mul nsw i64 %198, %idx.ext16
  %200 = add nsw i64 %6, 14
  %201 = mul nsw i64 %200, %idx.ext16
  %202 = add nsw i64 %6, 15
  %203 = mul nsw i64 %202, %idx.ext16
  %204 = add nsw i64 %6, 16
  %205 = mul nsw i64 %204, %idx.ext16
  %206 = add nsw i64 %6, 17
  %207 = mul nsw i64 %206, %idx.ext16
  %208 = add nsw i64 %6, 18
  %209 = mul nsw i64 %208, %idx.ext16
  %210 = add nsw i64 %6, 19
  %211 = mul nsw i64 %210, %idx.ext16
  %212 = add nsw i64 %6, 20
  %213 = mul nsw i64 %212, %idx.ext16
  %214 = add nsw i64 %6, 21
  %215 = mul nsw i64 %214, %idx.ext16
  %216 = add nsw i64 %6, 22
  %217 = mul nsw i64 %216, %idx.ext16
  %218 = add nsw i64 %6, 23
  %219 = mul nsw i64 %218, %idx.ext16
  %xtraiter = and i64 %wide.trip.count.i, 3
  %220 = icmp ult i32 %cond, 4
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %xtraiter133 = and i64 %wide.trip.count.i, 3
  %221 = icmp ult i32 %cond, 4
  %unroll_iter136 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod135.not = icmp eq i64 %xtraiter133, 0
  %xtraiter138 = and i64 %wide.trip.count.i, 3
  %222 = icmp ult i32 %cond, 4
  %unroll_iter141 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod140.not = icmp eq i64 %xtraiter138, 0
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end
  ret void

for.body:                                         ; preds = %cond.end, %if.end
  %indvars.iv = phi i64 [ 1, %cond.end ], [ %indvars.iv.next, %if.end ]
  %arrayidx5 = getelementptr inbounds [4 x ptr], ptr %filtered, i64 0, i64 %indvars.iv
  %223 = load ptr, ptr %arrayidx5, align 8
  %224 = load i32, ptr %b_mbaff8, align 4
  %shl.neg = shl i32 -8, %224
  %sub9 = add i32 %shl.neg, %mul6
  %mul10 = mul nsw i32 %sub9, %0
  %idx.ext = sext i32 %mul10 to i64
  %add.ptr = getelementptr inbounds i8, ptr %223, i64 %idx.ext
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr, i64 -4
  %tobool14.not = icmp eq i32 %224, 0
  br i1 %tobool14.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  br i1 %cmp113.i, label %for.body.lr.ph.i, label %for.cond.cleanup.i

for.body.lr.ph.i:                                 ; preds = %if.then
  %add.ptr.i = getelementptr inbounds i8, ptr %add.ptr, i64 -32
  %add.ptr9.i = getelementptr i8, ptr %add.ptr11, i64 %idx.ext8.i
  %add.ptr15.i = getelementptr i8, ptr %add.ptr9.i, i64 -1
  br i1 %220, label %for.cond.cleanup.i.loopexit.unr-lcssa, label %for.body.i

for.cond.cleanup.i.loopexit.unr-lcssa:            ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i.3, %for.body.i ]
  br i1 %lcmp.mod.not, label %for.cond.cleanup.i, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %for.cond.cleanup.i.loopexit.unr-lcssa, %for.body.i.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %for.body.i.epil ], [ %indvars.iv.i.unr, %for.cond.cleanup.i.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.i.epil ], [ 0, %for.cond.cleanup.i.loopexit.unr-lcssa ]
  %225 = mul nsw i64 %indvars.iv.i.epil, %5
  %add.ptr2.i.epil = getelementptr inbounds i8, ptr %add.ptr.i, i64 %225
  %add.ptr6.i.epil = getelementptr inbounds i8, ptr %add.ptr11, i64 %225
  %226 = load i8, ptr %add.ptr6.i.epil, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i.epil, i8 %226, i64 28, i1 false)
  %add.ptr12.i.epil = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %225
  %add.ptr18.i.epil = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %225
  %227 = load i8, ptr %add.ptr18.i.epil, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i.epil, i8 %227, i64 28, i1 false)
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.cond.cleanup.i, label %for.body.i.epil, !llvm.loop !13

for.cond.cleanup.i:                               ; preds = %for.cond.cleanup.i.loopexit.unr-lcssa, %for.body.i.epil, %if.then
  br i1 %tobool.not, label %for.body27.lr.ph.i, label %if.end.i

for.body27.lr.ph.i:                               ; preds = %for.cond.cleanup.i
  %add.ptr30.i = getelementptr inbounds i8, ptr %add.ptr, i64 -32
  %add.ptr35.i = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %add.ptr35.i.1 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.1, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %add.ptr35.i.2 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.2, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %add.ptr35.i.3 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.3, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %add.ptr35.i.4 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %11
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.4, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %add.ptr35.i.5 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.5, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %add.ptr35.i.6 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.6, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %add.ptr35.i.7 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.7, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %add.ptr35.i.8 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %15
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.8, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %add.ptr35.i.9 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.9, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %add.ptr35.i.10 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.10, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %add.ptr35.i.11 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.11, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %add.ptr35.i.12 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.12, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %add.ptr35.i.13 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.13, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %add.ptr35.i.14 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.14, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %add.ptr35.i.15 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.15, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %add.ptr35.i.16 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.16, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %add.ptr35.i.17 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.17, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %add.ptr35.i.18 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.18, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %add.ptr35.i.19 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %26
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.19, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %add.ptr35.i.20 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %27
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.20, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %add.ptr35.i.21 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %28
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.21, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %add.ptr35.i.22 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %29
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.22, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %add.ptr35.i.23 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %30
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.23, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  br label %if.end.i

for.body.i:                                       ; preds = %for.body.lr.ph.i, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %for.body.i ], [ 0, %for.body.lr.ph.i ]
  %niter = phi i64 [ %niter.next.3, %for.body.i ], [ 0, %for.body.lr.ph.i ]
  %228 = mul nsw i64 %indvars.iv.i, %5
  %add.ptr2.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %228
  %add.ptr6.i = getelementptr inbounds i8, ptr %add.ptr11, i64 %228
  %229 = load i8, ptr %add.ptr6.i, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i, i8 %229, i64 28, i1 false)
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %228
  %add.ptr18.i = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %228
  %230 = load i8, ptr %add.ptr18.i, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i, i8 %230, i64 28, i1 false)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %231 = mul nsw i64 %indvars.iv.next.i, %5
  %add.ptr2.i.1 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %231
  %add.ptr6.i.1 = getelementptr inbounds i8, ptr %add.ptr11, i64 %231
  %232 = load i8, ptr %add.ptr6.i.1, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i.1, i8 %232, i64 28, i1 false)
  %add.ptr12.i.1 = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %231
  %add.ptr18.i.1 = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %231
  %233 = load i8, ptr %add.ptr18.i.1, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i.1, i8 %233, i64 28, i1 false)
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2
  %234 = mul nsw i64 %indvars.iv.next.i.1, %5
  %add.ptr2.i.2 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %234
  %add.ptr6.i.2 = getelementptr inbounds i8, ptr %add.ptr11, i64 %234
  %235 = load i8, ptr %add.ptr6.i.2, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i.2, i8 %235, i64 28, i1 false)
  %add.ptr12.i.2 = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %234
  %add.ptr18.i.2 = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %234
  %236 = load i8, ptr %add.ptr18.i.2, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i.2, i8 %236, i64 28, i1 false)
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3
  %237 = mul nsw i64 %indvars.iv.next.i.2, %5
  %add.ptr2.i.3 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %237
  %add.ptr6.i.3 = getelementptr inbounds i8, ptr %add.ptr11, i64 %237
  %238 = load i8, ptr %add.ptr6.i.3, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i.3, i8 %238, i64 28, i1 false)
  %add.ptr12.i.3 = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %237
  %add.ptr18.i.3 = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %237
  %239 = load i8, ptr %add.ptr18.i.3, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i.3, i8 %239, i64 28, i1 false)
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.cond.cleanup.i.loopexit.unr-lcssa, label %for.body.i

if.end.i:                                         ; preds = %for.body27.lr.ph.i, %for.cond.cleanup.i
  br i1 %tobool1.not, label %plane_expand_border.exit, label %for.body54.lr.ph.i

for.body54.lr.ph.i:                               ; preds = %if.end.i
  %add.ptr57.i = getelementptr inbounds i8, ptr %add.ptr, i64 -32
  %add.ptr68.i = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %idx.ext67.i
  %add.ptr61.i = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %31
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %add.ptr61.i.1 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %33
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.1, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %add.ptr61.i.2 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %35
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.2, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %add.ptr61.i.3 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %37
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.3, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %add.ptr61.i.4 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %39
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.4, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %add.ptr61.i.5 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %41
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.5, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %add.ptr61.i.6 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %43
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.6, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %add.ptr61.i.7 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %45
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.7, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %add.ptr61.i.8 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %47
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.8, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %add.ptr61.i.9 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %49
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.9, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %add.ptr61.i.10 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %51
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.10, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %add.ptr61.i.11 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %53
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.11, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %add.ptr61.i.12 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %55
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.12, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %add.ptr61.i.13 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %57
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.13, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %add.ptr61.i.14 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %59
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.14, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %add.ptr61.i.15 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %61
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.15, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %add.ptr61.i.16 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %63
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.16, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %add.ptr61.i.17 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %65
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.17, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %add.ptr61.i.18 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %67
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.18, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %add.ptr61.i.19 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %69
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.19, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %add.ptr61.i.20 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %71
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.20, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %add.ptr61.i.21 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %73
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.21, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %add.ptr61.i.22 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %75
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.22, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %add.ptr61.i.23 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %77
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.23, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  br label %plane_expand_border.exit

plane_expand_border.exit:                         ; preds = %for.body54.lr.ph.i, %if.end.i
  %add.ptr17 = getelementptr inbounds i8, ptr %add.ptr11, i64 %idx.ext16
  br i1 %cmp113.i, label %for.body.lr.ph.i73, label %for.cond.cleanup.i48

for.body.lr.ph.i73:                               ; preds = %plane_expand_border.exit
  %add.ptr.i74 = getelementptr inbounds i8, ptr %add.ptr17, i64 -28
  %add.ptr9.i76 = getelementptr i8, ptr %add.ptr17, i64 %idx.ext8.i
  %add.ptr15.i77 = getelementptr i8, ptr %add.ptr9.i76, i64 -1
  br i1 %221, label %for.cond.cleanup.i48.loopexit.unr-lcssa, label %for.body.i79

for.cond.cleanup.i48.loopexit.unr-lcssa:          ; preds = %for.body.i79, %for.body.lr.ph.i73
  %indvars.iv.i80.unr = phi i64 [ 0, %for.body.lr.ph.i73 ], [ %indvars.iv.next.i85.3, %for.body.i79 ]
  br i1 %lcmp.mod135.not, label %for.cond.cleanup.i48, label %for.body.i79.epil

for.body.i79.epil:                                ; preds = %for.cond.cleanup.i48.loopexit.unr-lcssa, %for.body.i79.epil
  %indvars.iv.i80.epil = phi i64 [ %indvars.iv.next.i85.epil, %for.body.i79.epil ], [ %indvars.iv.i80.unr, %for.cond.cleanup.i48.loopexit.unr-lcssa ]
  %epil.iter134 = phi i64 [ %epil.iter134.next, %for.body.i79.epil ], [ 0, %for.cond.cleanup.i48.loopexit.unr-lcssa ]
  %240 = mul nsw i64 %indvars.iv.i80.epil, %5
  %add.ptr2.i81.epil = getelementptr inbounds i8, ptr %add.ptr.i74, i64 %240
  %add.ptr6.i82.epil = getelementptr inbounds i8, ptr %add.ptr17, i64 %240
  %241 = load i8, ptr %add.ptr6.i82.epil, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i81.epil, i8 %241, i64 28, i1 false)
  %add.ptr12.i83.epil = getelementptr inbounds i8, ptr %add.ptr9.i76, i64 %240
  %add.ptr18.i84.epil = getelementptr inbounds i8, ptr %add.ptr15.i77, i64 %240
  %242 = load i8, ptr %add.ptr18.i84.epil, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i83.epil, i8 %242, i64 28, i1 false)
  %indvars.iv.next.i85.epil = add nuw nsw i64 %indvars.iv.i80.epil, 1
  %epil.iter134.next = add i64 %epil.iter134, 1
  %epil.iter134.cmp.not = icmp eq i64 %epil.iter134.next, %xtraiter133
  br i1 %epil.iter134.cmp.not, label %for.cond.cleanup.i48, label %for.body.i79.epil, !llvm.loop !14

for.cond.cleanup.i48:                             ; preds = %for.cond.cleanup.i48.loopexit.unr-lcssa, %for.body.i79.epil, %plane_expand_border.exit
  br i1 %tobool.not, label %for.body27.lr.ph.i64, label %if.end.i49

for.body27.lr.ph.i64:                             ; preds = %for.cond.cleanup.i48
  %add.ptr30.i65 = getelementptr inbounds i8, ptr %add.ptr17, i64 -28
  %add.ptr35.i70 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %78
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false)
  %add.ptr35.i70.1 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %79
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.1, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false)
  %add.ptr35.i70.2 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.2, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false)
  %add.ptr35.i70.3 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %81
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.3, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false)
  %add.ptr35.i70.4 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %82
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.4, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false)
  %add.ptr35.i70.5 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %83
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.5, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false)
  %add.ptr35.i70.6 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %84
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.6, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false)
  %add.ptr35.i70.7 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %85
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.7, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false)
  %add.ptr35.i70.8 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %86
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.8, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false)
  %add.ptr35.i70.9 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %87
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.9, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false)
  %add.ptr35.i70.10 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %88
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.10, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false)
  %add.ptr35.i70.11 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %89
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.11, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false)
  %add.ptr35.i70.12 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %90
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.12, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false)
  %add.ptr35.i70.13 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %91
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.13, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false)
  %add.ptr35.i70.14 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %92
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.14, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false)
  %add.ptr35.i70.15 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %93
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.15, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false)
  %add.ptr35.i70.16 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %94
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.16, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false)
  %add.ptr35.i70.17 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %95
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.17, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false)
  %add.ptr35.i70.18 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %96
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.18, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false)
  %add.ptr35.i70.19 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %97
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.19, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false)
  %add.ptr35.i70.20 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %98
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.20, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false)
  %add.ptr35.i70.21 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %99
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.21, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false)
  %add.ptr35.i70.22 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %100
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.22, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false)
  %add.ptr35.i70.23 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %101
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.23, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false)
  br label %if.end.i49

for.body.i79:                                     ; preds = %for.body.lr.ph.i73, %for.body.i79
  %indvars.iv.i80 = phi i64 [ %indvars.iv.next.i85.3, %for.body.i79 ], [ 0, %for.body.lr.ph.i73 ]
  %niter137 = phi i64 [ %niter137.next.3, %for.body.i79 ], [ 0, %for.body.lr.ph.i73 ]
  %243 = mul nsw i64 %indvars.iv.i80, %5
  %add.ptr2.i81 = getelementptr inbounds i8, ptr %add.ptr.i74, i64 %243
  %add.ptr6.i82 = getelementptr inbounds i8, ptr %add.ptr17, i64 %243
  %244 = load i8, ptr %add.ptr6.i82, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i81, i8 %244, i64 28, i1 false)
  %add.ptr12.i83 = getelementptr inbounds i8, ptr %add.ptr9.i76, i64 %243
  %add.ptr18.i84 = getelementptr inbounds i8, ptr %add.ptr15.i77, i64 %243
  %245 = load i8, ptr %add.ptr18.i84, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i83, i8 %245, i64 28, i1 false)
  %indvars.iv.next.i85 = or disjoint i64 %indvars.iv.i80, 1
  %246 = mul nsw i64 %indvars.iv.next.i85, %5
  %add.ptr2.i81.1 = getelementptr inbounds i8, ptr %add.ptr.i74, i64 %246
  %add.ptr6.i82.1 = getelementptr inbounds i8, ptr %add.ptr17, i64 %246
  %247 = load i8, ptr %add.ptr6.i82.1, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i81.1, i8 %247, i64 28, i1 false)
  %add.ptr12.i83.1 = getelementptr inbounds i8, ptr %add.ptr9.i76, i64 %246
  %add.ptr18.i84.1 = getelementptr inbounds i8, ptr %add.ptr15.i77, i64 %246
  %248 = load i8, ptr %add.ptr18.i84.1, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i83.1, i8 %248, i64 28, i1 false)
  %indvars.iv.next.i85.1 = or disjoint i64 %indvars.iv.i80, 2
  %249 = mul nsw i64 %indvars.iv.next.i85.1, %5
  %add.ptr2.i81.2 = getelementptr inbounds i8, ptr %add.ptr.i74, i64 %249
  %add.ptr6.i82.2 = getelementptr inbounds i8, ptr %add.ptr17, i64 %249
  %250 = load i8, ptr %add.ptr6.i82.2, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i81.2, i8 %250, i64 28, i1 false)
  %add.ptr12.i83.2 = getelementptr inbounds i8, ptr %add.ptr9.i76, i64 %249
  %add.ptr18.i84.2 = getelementptr inbounds i8, ptr %add.ptr15.i77, i64 %249
  %251 = load i8, ptr %add.ptr18.i84.2, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i83.2, i8 %251, i64 28, i1 false)
  %indvars.iv.next.i85.2 = or disjoint i64 %indvars.iv.i80, 3
  %252 = mul nsw i64 %indvars.iv.next.i85.2, %5
  %add.ptr2.i81.3 = getelementptr inbounds i8, ptr %add.ptr.i74, i64 %252
  %add.ptr6.i82.3 = getelementptr inbounds i8, ptr %add.ptr17, i64 %252
  %253 = load i8, ptr %add.ptr6.i82.3, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i81.3, i8 %253, i64 28, i1 false)
  %add.ptr12.i83.3 = getelementptr inbounds i8, ptr %add.ptr9.i76, i64 %252
  %add.ptr18.i84.3 = getelementptr inbounds i8, ptr %add.ptr15.i77, i64 %252
  %254 = load i8, ptr %add.ptr18.i84.3, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i83.3, i8 %254, i64 28, i1 false)
  %indvars.iv.next.i85.3 = add nuw nsw i64 %indvars.iv.i80, 4
  %niter137.next.3 = add i64 %niter137, 4
  %niter137.ncmp.3 = icmp eq i64 %niter137.next.3, %unroll_iter136
  br i1 %niter137.ncmp.3, label %for.cond.cleanup.i48.loopexit.unr-lcssa, label %for.body.i79

if.end.i49:                                       ; preds = %for.body27.lr.ph.i64, %for.cond.cleanup.i48
  br i1 %tobool1.not, label %if.end, label %for.body54.lr.ph.i51

for.body54.lr.ph.i51:                             ; preds = %if.end.i49
  %add.ptr57.i52 = getelementptr inbounds i8, ptr %add.ptr17, i64 -28
  %add.ptr68.i56 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %idx.ext67.i
  %add.ptr61.i61 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %102
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false)
  %add.ptr61.i61.1 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %104
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.1, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false)
  %add.ptr61.i61.2 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %106
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.2, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false)
  %add.ptr61.i61.3 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %108
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.3, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false)
  %add.ptr61.i61.4 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %110
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.4, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false)
  %add.ptr61.i61.5 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %112
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.5, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false)
  %add.ptr61.i61.6 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %114
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.6, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false)
  %add.ptr61.i61.7 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %116
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.7, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false)
  %add.ptr61.i61.8 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %118
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.8, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false)
  %add.ptr61.i61.9 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %120
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.9, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false)
  %add.ptr61.i61.10 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %122
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.10, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false)
  %add.ptr61.i61.11 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %124
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.11, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false)
  %add.ptr61.i61.12 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %126
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.12, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false)
  %add.ptr61.i61.13 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %128
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.13, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false)
  %add.ptr61.i61.14 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %130
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.14, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false)
  %add.ptr61.i61.15 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %132
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.15, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false)
  %add.ptr61.i61.16 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %134
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.16, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false)
  %add.ptr61.i61.17 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %136
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.17, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false)
  %add.ptr61.i61.18 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %138
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.18, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false)
  %add.ptr61.i61.19 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %140
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.19, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false)
  %add.ptr61.i61.20 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %142
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.20, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false)
  %add.ptr61.i61.21 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.21, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false)
  %add.ptr61.i61.22 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %146
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.22, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false)
  %add.ptr61.i61.23 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %148
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.23, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false)
  br label %if.end

if.else:                                          ; preds = %for.body
  br i1 %cmp113.i, label %for.body.lr.ph.i114, label %for.cond.cleanup.i89

for.body.lr.ph.i114:                              ; preds = %if.else
  %add.ptr.i115 = getelementptr inbounds i8, ptr %add.ptr, i64 -32
  %add.ptr9.i117 = getelementptr i8, ptr %add.ptr11, i64 %idx.ext8.i
  %add.ptr15.i118 = getelementptr i8, ptr %add.ptr9.i117, i64 -1
  br i1 %222, label %for.cond.cleanup.i89.loopexit.unr-lcssa, label %for.body.i120

for.cond.cleanup.i89.loopexit.unr-lcssa:          ; preds = %for.body.i120, %for.body.lr.ph.i114
  %indvars.iv.i121.unr = phi i64 [ 0, %for.body.lr.ph.i114 ], [ %indvars.iv.next.i126.3, %for.body.i120 ]
  br i1 %lcmp.mod140.not, label %for.cond.cleanup.i89, label %for.body.i120.epil

for.body.i120.epil:                               ; preds = %for.cond.cleanup.i89.loopexit.unr-lcssa, %for.body.i120.epil
  %indvars.iv.i121.epil = phi i64 [ %indvars.iv.next.i126.epil, %for.body.i120.epil ], [ %indvars.iv.i121.unr, %for.cond.cleanup.i89.loopexit.unr-lcssa ]
  %epil.iter139 = phi i64 [ %epil.iter139.next, %for.body.i120.epil ], [ 0, %for.cond.cleanup.i89.loopexit.unr-lcssa ]
  %255 = mul nsw i64 %indvars.iv.i121.epil, %idx.ext16
  %add.ptr2.i122.epil = getelementptr inbounds i8, ptr %add.ptr.i115, i64 %255
  %add.ptr6.i123.epil = getelementptr inbounds i8, ptr %add.ptr11, i64 %255
  %256 = load i8, ptr %add.ptr6.i123.epil, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i122.epil, i8 %256, i64 28, i1 false)
  %add.ptr12.i124.epil = getelementptr inbounds i8, ptr %add.ptr9.i117, i64 %255
  %add.ptr18.i125.epil = getelementptr inbounds i8, ptr %add.ptr15.i118, i64 %255
  %257 = load i8, ptr %add.ptr18.i125.epil, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i124.epil, i8 %257, i64 28, i1 false)
  %indvars.iv.next.i126.epil = add nuw nsw i64 %indvars.iv.i121.epil, 1
  %epil.iter139.next = add i64 %epil.iter139, 1
  %epil.iter139.cmp.not = icmp eq i64 %epil.iter139.next, %xtraiter138
  br i1 %epil.iter139.cmp.not, label %for.cond.cleanup.i89, label %for.body.i120.epil, !llvm.loop !15

for.cond.cleanup.i89:                             ; preds = %for.cond.cleanup.i89.loopexit.unr-lcssa, %for.body.i120.epil, %if.else
  br i1 %tobool.not, label %for.body27.lr.ph.i105, label %if.end.i90

for.body27.lr.ph.i105:                            ; preds = %for.cond.cleanup.i89
  %add.ptr30.i106 = getelementptr inbounds i8, ptr %add.ptr, i64 -32
  %add.ptr35.i111 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %149
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false)
  %add.ptr35.i111.1 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %150
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.1, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false)
  %add.ptr35.i111.2 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %151
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.2, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false)
  %add.ptr35.i111.3 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %152
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.3, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false)
  %add.ptr35.i111.4 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %153
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.4, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false)
  %add.ptr35.i111.5 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %154
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.5, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false)
  %add.ptr35.i111.6 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %155
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.6, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false)
  %add.ptr35.i111.7 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %156
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.7, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false)
  %add.ptr35.i111.8 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %157
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.8, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false)
  %add.ptr35.i111.9 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %158
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.9, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false)
  %add.ptr35.i111.10 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %159
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.10, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false)
  %add.ptr35.i111.11 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %160
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.11, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false)
  %add.ptr35.i111.12 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %161
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.12, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false)
  %add.ptr35.i111.13 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %162
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.13, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false)
  %add.ptr35.i111.14 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %163
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.14, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false)
  %add.ptr35.i111.15 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %164
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.15, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false)
  %add.ptr35.i111.16 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %165
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.16, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false)
  %add.ptr35.i111.17 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %166
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.17, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false)
  %add.ptr35.i111.18 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %167
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.18, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false)
  %add.ptr35.i111.19 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %168
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.19, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false)
  %add.ptr35.i111.20 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %169
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.20, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false)
  %add.ptr35.i111.21 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %170
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.21, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false)
  %add.ptr35.i111.22 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %171
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.22, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false)
  %add.ptr35.i111.23 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %172
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.23, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false)
  br label %if.end.i90

for.body.i120:                                    ; preds = %for.body.lr.ph.i114, %for.body.i120
  %indvars.iv.i121 = phi i64 [ %indvars.iv.next.i126.3, %for.body.i120 ], [ 0, %for.body.lr.ph.i114 ]
  %niter142 = phi i64 [ %niter142.next.3, %for.body.i120 ], [ 0, %for.body.lr.ph.i114 ]
  %258 = mul nsw i64 %indvars.iv.i121, %idx.ext16
  %add.ptr2.i122 = getelementptr inbounds i8, ptr %add.ptr.i115, i64 %258
  %add.ptr6.i123 = getelementptr inbounds i8, ptr %add.ptr11, i64 %258
  %259 = load i8, ptr %add.ptr6.i123, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i122, i8 %259, i64 28, i1 false)
  %add.ptr12.i124 = getelementptr inbounds i8, ptr %add.ptr9.i117, i64 %258
  %add.ptr18.i125 = getelementptr inbounds i8, ptr %add.ptr15.i118, i64 %258
  %260 = load i8, ptr %add.ptr18.i125, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i124, i8 %260, i64 28, i1 false)
  %indvars.iv.next.i126 = or disjoint i64 %indvars.iv.i121, 1
  %261 = mul nsw i64 %indvars.iv.next.i126, %idx.ext16
  %add.ptr2.i122.1 = getelementptr inbounds i8, ptr %add.ptr.i115, i64 %261
  %add.ptr6.i123.1 = getelementptr inbounds i8, ptr %add.ptr11, i64 %261
  %262 = load i8, ptr %add.ptr6.i123.1, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i122.1, i8 %262, i64 28, i1 false)
  %add.ptr12.i124.1 = getelementptr inbounds i8, ptr %add.ptr9.i117, i64 %261
  %add.ptr18.i125.1 = getelementptr inbounds i8, ptr %add.ptr15.i118, i64 %261
  %263 = load i8, ptr %add.ptr18.i125.1, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i124.1, i8 %263, i64 28, i1 false)
  %indvars.iv.next.i126.1 = or disjoint i64 %indvars.iv.i121, 2
  %264 = mul nsw i64 %indvars.iv.next.i126.1, %idx.ext16
  %add.ptr2.i122.2 = getelementptr inbounds i8, ptr %add.ptr.i115, i64 %264
  %add.ptr6.i123.2 = getelementptr inbounds i8, ptr %add.ptr11, i64 %264
  %265 = load i8, ptr %add.ptr6.i123.2, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i122.2, i8 %265, i64 28, i1 false)
  %add.ptr12.i124.2 = getelementptr inbounds i8, ptr %add.ptr9.i117, i64 %264
  %add.ptr18.i125.2 = getelementptr inbounds i8, ptr %add.ptr15.i118, i64 %264
  %266 = load i8, ptr %add.ptr18.i125.2, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i124.2, i8 %266, i64 28, i1 false)
  %indvars.iv.next.i126.2 = or disjoint i64 %indvars.iv.i121, 3
  %267 = mul nsw i64 %indvars.iv.next.i126.2, %idx.ext16
  %add.ptr2.i122.3 = getelementptr inbounds i8, ptr %add.ptr.i115, i64 %267
  %add.ptr6.i123.3 = getelementptr inbounds i8, ptr %add.ptr11, i64 %267
  %268 = load i8, ptr %add.ptr6.i123.3, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i122.3, i8 %268, i64 28, i1 false)
  %add.ptr12.i124.3 = getelementptr inbounds i8, ptr %add.ptr9.i117, i64 %267
  %add.ptr18.i125.3 = getelementptr inbounds i8, ptr %add.ptr15.i118, i64 %267
  %269 = load i8, ptr %add.ptr18.i125.3, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i124.3, i8 %269, i64 28, i1 false)
  %indvars.iv.next.i126.3 = add nuw nsw i64 %indvars.iv.i121, 4
  %niter142.next.3 = add i64 %niter142, 4
  %niter142.ncmp.3 = icmp eq i64 %niter142.next.3, %unroll_iter141
  br i1 %niter142.ncmp.3, label %for.cond.cleanup.i89.loopexit.unr-lcssa, label %for.body.i120

if.end.i90:                                       ; preds = %for.body27.lr.ph.i105, %for.cond.cleanup.i89
  br i1 %tobool1.not, label %if.end, label %for.body54.lr.ph.i92

for.body54.lr.ph.i92:                             ; preds = %if.end.i90
  %add.ptr57.i93 = getelementptr inbounds i8, ptr %add.ptr, i64 -32
  %add.ptr68.i97 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %idx.ext67.i96
  %add.ptr61.i102 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %173
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false)
  %add.ptr61.i102.1 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %175
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.1, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false)
  %add.ptr61.i102.2 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %177
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.2, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false)
  %add.ptr61.i102.3 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %179
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.3, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false)
  %add.ptr61.i102.4 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %181
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.4, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false)
  %add.ptr61.i102.5 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %183
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.5, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false)
  %add.ptr61.i102.6 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %185
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.6, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false)
  %add.ptr61.i102.7 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %187
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.7, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false)
  %add.ptr61.i102.8 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %189
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.8, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false)
  %add.ptr61.i102.9 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %191
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.9, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false)
  %add.ptr61.i102.10 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %193
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.10, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false)
  %add.ptr61.i102.11 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %195
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.11, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false)
  %add.ptr61.i102.12 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %197
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.12, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false)
  %add.ptr61.i102.13 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %199
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.13, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false)
  %add.ptr61.i102.14 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %201
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.14, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false)
  %add.ptr61.i102.15 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %203
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.15, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false)
  %add.ptr61.i102.16 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %205
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.16, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false)
  %add.ptr61.i102.17 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %207
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.17, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false)
  %add.ptr61.i102.18 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %209
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.18, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false)
  %add.ptr61.i102.19 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %211
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.19, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false)
  %add.ptr61.i102.20 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %213
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.20, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false)
  %add.ptr61.i102.21 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %215
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.21, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false)
  %add.ptr61.i102.22 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %217
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.22, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false)
  %add.ptr61.i102.23 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %219
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.23, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false)
  br label %if.end

if.end:                                           ; preds = %for.body54.lr.ph.i51, %for.body54.lr.ph.i92, %if.end.i90, %if.end.i49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_frame_expand_border_lowres(ptr nocapture noundef readonly %frame) local_unnamed_addr #4 {
entry:
  %lowres = getelementptr inbounds i8, ptr %frame, i64 208
  %i_stride_lowres = getelementptr inbounds i8, ptr %frame, i64 140
  %i_width_lowres = getelementptr inbounds i8, ptr %frame, i64 144
  %i_lines_lowres = getelementptr inbounds i8, ptr %frame, i64 148
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.i
  ret void

for.body:                                         ; preds = %entry, %for.cond.cleanup.i
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond.cleanup.i ]
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %lowres, i64 0, i64 %indvars.iv
  %0 = load ptr, ptr %arrayidx, align 8
  %1 = load i32, ptr %i_stride_lowres, align 4
  %2 = load i32, ptr %i_width_lowres, align 16
  %3 = load i32, ptr %i_lines_lowres, align 4
  %cmp113.i = icmp sgt i32 %3, 0
  br i1 %cmp113.i, label %for.body.lr.ph.i, label %for.body.for.cond.cleanup.i_crit_edge

for.body.for.cond.cleanup.i_crit_edge:            ; preds = %for.body
  %.pre = sext i32 %1 to i64
  br label %for.cond.cleanup.i

for.body.lr.ph.i:                                 ; preds = %for.body
  %add.ptr.i = getelementptr inbounds i8, ptr %0, i64 -32
  %idx.ext8.i = sext i32 %2 to i64
  %add.ptr9.i = getelementptr i8, ptr %0, i64 %idx.ext8.i
  %add.ptr15.i = getelementptr i8, ptr %add.ptr9.i, i64 -1
  %4 = sext i32 %1 to i64
  %wide.trip.count.i = zext nneg i32 %3 to i64
  %xtraiter = and i64 %wide.trip.count.i, 3
  %5 = icmp ult i32 %3, 4
  br i1 %5, label %for.cond.cleanup.i.loopexit.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %for.body.i

for.cond.cleanup.i.loopexit.unr-lcssa:            ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i.3, %for.body.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.cond.cleanup.i, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %for.cond.cleanup.i.loopexit.unr-lcssa, %for.body.i.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %for.body.i.epil ], [ %indvars.iv.i.unr, %for.cond.cleanup.i.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.i.epil ], [ 0, %for.cond.cleanup.i.loopexit.unr-lcssa ]
  %6 = mul nsw i64 %indvars.iv.i.epil, %4
  %add.ptr2.i.epil = getelementptr inbounds i8, ptr %add.ptr.i, i64 %6
  %add.ptr6.i.epil = getelementptr inbounds i8, ptr %0, i64 %6
  %7 = load i8, ptr %add.ptr6.i.epil, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %add.ptr2.i.epil, i8 %7, i64 32, i1 false)
  %add.ptr12.i.epil = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %6
  %add.ptr18.i.epil = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %6
  %8 = load i8, ptr %add.ptr18.i.epil, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %add.ptr12.i.epil, i8 %8, i64 32, i1 false)
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.cond.cleanup.i, label %for.body.i.epil, !llvm.loop !16

for.cond.cleanup.i:                               ; preds = %for.cond.cleanup.i.loopexit.unr-lcssa, %for.body.i.epil, %for.body.for.cond.cleanup.i_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.body.for.cond.cleanup.i_crit_edge ], [ %4, %for.body.i.epil ], [ %4, %for.cond.cleanup.i.loopexit.unr-lcssa ]
  %add.ptr30.i = getelementptr inbounds i8, ptr %0, i64 -32
  %add.i = add nsw i32 %2, 64
  %conv43.i = sext i32 %add.i to i64
  %9 = sub nsw i64 0, %.pre-phi
  %add.ptr35.i = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %10 = mul nsw i64 %.pre-phi, -2
  %add.ptr35.i.1 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.1, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %11 = mul nsw i64 %.pre-phi, -3
  %add.ptr35.i.2 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %11
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.2, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %12 = mul nsw i64 %.pre-phi, -4
  %add.ptr35.i.3 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.3, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %13 = mul nsw i64 %.pre-phi, -5
  %add.ptr35.i.4 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.4, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %14 = mul nsw i64 %.pre-phi, -6
  %add.ptr35.i.5 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.5, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %15 = mul nsw i64 %.pre-phi, -7
  %add.ptr35.i.6 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %15
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.6, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %16 = mul nsw i64 %.pre-phi, -8
  %add.ptr35.i.7 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.7, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %17 = mul nsw i64 %.pre-phi, -9
  %add.ptr35.i.8 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.8, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %18 = mul nsw i64 %.pre-phi, -10
  %add.ptr35.i.9 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.9, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %19 = mul nsw i64 %.pre-phi, -11
  %add.ptr35.i.10 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.10, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %20 = mul nsw i64 %.pre-phi, -12
  %add.ptr35.i.11 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.11, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %21 = mul nsw i64 %.pre-phi, -13
  %add.ptr35.i.12 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.12, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %22 = mul nsw i64 %.pre-phi, -14
  %add.ptr35.i.13 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.13, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %23 = mul nsw i64 %.pre-phi, -15
  %add.ptr35.i.14 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.14, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %24 = mul nsw i64 %.pre-phi, -16
  %add.ptr35.i.15 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.15, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %25 = mul nsw i64 %.pre-phi, -17
  %add.ptr35.i.16 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.16, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %26 = mul nsw i64 %.pre-phi, -18
  %add.ptr35.i.17 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %26
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.17, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %27 = mul nsw i64 %.pre-phi, -19
  %add.ptr35.i.18 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %27
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.18, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %28 = mul nsw i64 %.pre-phi, -20
  %add.ptr35.i.19 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %28
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.19, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %29 = mul nsw i64 %.pre-phi, -21
  %add.ptr35.i.20 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %29
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.20, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %30 = mul nsw i64 %.pre-phi, -22
  %add.ptr35.i.21 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %30
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.21, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %31 = mul nsw i64 %.pre-phi, -23
  %add.ptr35.i.22 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %31
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.22, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %32 = mul nsw i64 %.pre-phi, -24
  %add.ptr35.i.23 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.23, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %33 = mul nsw i64 %.pre-phi, -25
  %add.ptr35.i.24 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %33
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.24, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %34 = mul nsw i64 %.pre-phi, -26
  %add.ptr35.i.25 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %34
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.25, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %35 = mul nsw i64 %.pre-phi, -27
  %add.ptr35.i.26 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %35
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.26, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %36 = mul nsw i64 %.pre-phi, -28
  %add.ptr35.i.27 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %36
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.27, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %37 = mul nsw i64 %.pre-phi, -29
  %add.ptr35.i.28 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %37
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.28, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %38 = mul nsw i64 %.pre-phi, -30
  %add.ptr35.i.29 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %38
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.29, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %39 = mul nsw i64 %.pre-phi, -31
  %add.ptr35.i.30 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %39
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.30, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %40 = mul nsw i64 %.pre-phi, -32
  %add.ptr35.i.31 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.31, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false)
  %sub65.i = add nsw i32 %3, -1
  %mul66.i = mul nsw i32 %sub65.i, %1
  %idx.ext67.i = sext i32 %mul66.i to i64
  %add.ptr68.i = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %idx.ext67.i
  %41 = sext i32 %3 to i64
  %42 = mul nsw i64 %.pre-phi, %41
  %add.ptr61.i = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %42
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %43 = add nsw i64 %41, 1
  %44 = mul nsw i64 %43, %.pre-phi
  %add.ptr61.i.1 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %44
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.1, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %45 = add nsw i64 %41, 2
  %46 = mul nsw i64 %45, %.pre-phi
  %add.ptr61.i.2 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %46
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.2, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %47 = add nsw i64 %41, 3
  %48 = mul nsw i64 %47, %.pre-phi
  %add.ptr61.i.3 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.3, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %49 = add nsw i64 %41, 4
  %50 = mul nsw i64 %49, %.pre-phi
  %add.ptr61.i.4 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %50
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.4, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %51 = add nsw i64 %41, 5
  %52 = mul nsw i64 %51, %.pre-phi
  %add.ptr61.i.5 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %52
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.5, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %53 = add nsw i64 %41, 6
  %54 = mul nsw i64 %53, %.pre-phi
  %add.ptr61.i.6 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %54
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.6, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %55 = add nsw i64 %41, 7
  %56 = mul nsw i64 %55, %.pre-phi
  %add.ptr61.i.7 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.7, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %57 = add nsw i64 %41, 8
  %58 = mul nsw i64 %57, %.pre-phi
  %add.ptr61.i.8 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %58
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.8, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %59 = add nsw i64 %41, 9
  %60 = mul nsw i64 %59, %.pre-phi
  %add.ptr61.i.9 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %60
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.9, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %61 = add nsw i64 %41, 10
  %62 = mul nsw i64 %61, %.pre-phi
  %add.ptr61.i.10 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %62
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.10, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %63 = add nsw i64 %41, 11
  %64 = mul nsw i64 %63, %.pre-phi
  %add.ptr61.i.11 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.11, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %65 = add nsw i64 %41, 12
  %66 = mul nsw i64 %65, %.pre-phi
  %add.ptr61.i.12 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %66
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.12, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %67 = add nsw i64 %41, 13
  %68 = mul nsw i64 %67, %.pre-phi
  %add.ptr61.i.13 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %68
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.13, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %69 = add nsw i64 %41, 14
  %70 = mul nsw i64 %69, %.pre-phi
  %add.ptr61.i.14 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %70
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.14, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %71 = add nsw i64 %41, 15
  %72 = mul nsw i64 %71, %.pre-phi
  %add.ptr61.i.15 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %72
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.15, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %73 = add nsw i64 %41, 16
  %74 = mul nsw i64 %73, %.pre-phi
  %add.ptr61.i.16 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %74
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.16, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %75 = add nsw i64 %41, 17
  %76 = mul nsw i64 %75, %.pre-phi
  %add.ptr61.i.17 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %76
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.17, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %77 = add nsw i64 %41, 18
  %78 = mul nsw i64 %77, %.pre-phi
  %add.ptr61.i.18 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %78
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.18, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %79 = add nsw i64 %41, 19
  %80 = mul nsw i64 %79, %.pre-phi
  %add.ptr61.i.19 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.19, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %81 = add nsw i64 %41, 20
  %82 = mul nsw i64 %81, %.pre-phi
  %add.ptr61.i.20 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %82
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.20, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %83 = add nsw i64 %41, 21
  %84 = mul nsw i64 %83, %.pre-phi
  %add.ptr61.i.21 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %84
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.21, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %85 = add nsw i64 %41, 22
  %86 = mul nsw i64 %85, %.pre-phi
  %add.ptr61.i.22 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %86
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.22, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %87 = add nsw i64 %41, 23
  %88 = mul nsw i64 %87, %.pre-phi
  %add.ptr61.i.23 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %88
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.23, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %89 = add nsw i64 %41, 24
  %90 = mul nsw i64 %89, %.pre-phi
  %add.ptr61.i.24 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %90
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.24, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %91 = add nsw i64 %41, 25
  %92 = mul nsw i64 %91, %.pre-phi
  %add.ptr61.i.25 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %92
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.25, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %93 = add nsw i64 %41, 26
  %94 = mul nsw i64 %93, %.pre-phi
  %add.ptr61.i.26 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %94
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.26, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %95 = add nsw i64 %41, 27
  %96 = mul nsw i64 %95, %.pre-phi
  %add.ptr61.i.27 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %96
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.27, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %97 = add nsw i64 %41, 28
  %98 = mul nsw i64 %97, %.pre-phi
  %add.ptr61.i.28 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %98
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.28, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %99 = add nsw i64 %41, 29
  %100 = mul nsw i64 %99, %.pre-phi
  %add.ptr61.i.29 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %100
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.29, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %101 = add nsw i64 %41, 30
  %102 = mul nsw i64 %101, %.pre-phi
  %add.ptr61.i.30 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %102
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.30, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %103 = add nsw i64 %41, 31
  %104 = mul nsw i64 %103, %.pre-phi
  %add.ptr61.i.31 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %104
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.31, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %indvars.iv.next.i.3, %for.body.i ]
  %niter = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %niter.next.3, %for.body.i ]
  %105 = mul nsw i64 %indvars.iv.i, %4
  %add.ptr2.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %105
  %add.ptr6.i = getelementptr inbounds i8, ptr %0, i64 %105
  %106 = load i8, ptr %add.ptr6.i, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %add.ptr2.i, i8 %106, i64 32, i1 false)
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %105
  %add.ptr18.i = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %105
  %107 = load i8, ptr %add.ptr18.i, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %add.ptr12.i, i8 %107, i64 32, i1 false)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %108 = mul nsw i64 %indvars.iv.next.i, %4
  %add.ptr2.i.1 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %108
  %add.ptr6.i.1 = getelementptr inbounds i8, ptr %0, i64 %108
  %109 = load i8, ptr %add.ptr6.i.1, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %add.ptr2.i.1, i8 %109, i64 32, i1 false)
  %add.ptr12.i.1 = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %108
  %add.ptr18.i.1 = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %108
  %110 = load i8, ptr %add.ptr18.i.1, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %add.ptr12.i.1, i8 %110, i64 32, i1 false)
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2
  %111 = mul nsw i64 %indvars.iv.next.i.1, %4
  %add.ptr2.i.2 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %111
  %add.ptr6.i.2 = getelementptr inbounds i8, ptr %0, i64 %111
  %112 = load i8, ptr %add.ptr6.i.2, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %add.ptr2.i.2, i8 %112, i64 32, i1 false)
  %add.ptr12.i.2 = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %111
  %add.ptr18.i.2 = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %111
  %113 = load i8, ptr %add.ptr18.i.2, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %add.ptr12.i.2, i8 %113, i64 32, i1 false)
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3
  %114 = mul nsw i64 %indvars.iv.next.i.2, %4
  %add.ptr2.i.3 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %114
  %add.ptr6.i.3 = getelementptr inbounds i8, ptr %0, i64 %114
  %115 = load i8, ptr %add.ptr6.i.3, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %add.ptr2.i.3, i8 %115, i64 32, i1 false)
  %add.ptr12.i.3 = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %114
  %add.ptr18.i.3 = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %114
  %116 = load i8, ptr %add.ptr18.i.3, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %add.ptr12.i.3, i8 %116, i64 32, i1 false)
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.cond.cleanup.i.loopexit.unr-lcssa, label %for.body.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_frame_expand_border_mod16(ptr nocapture noundef readonly %h, ptr nocapture noundef readonly %frame) local_unnamed_addr #4 {
entry:
  %i_plane = getelementptr inbounds i8, ptr %frame, i64 100
  %0 = load i32, ptr %i_plane, align 4
  %cmp120 = icmp sgt i32 %0, 0
  br i1 %cmp120, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %i_width1 = getelementptr inbounds i8, ptr %h, i64 20
  %i_height3 = getelementptr inbounds i8, ptr %h, i64 24
  %sps = getelementptr inbounds i8, ptr %h, i64 3200
  %plane = getelementptr inbounds i8, ptr %frame, i64 152
  %i_stride = getelementptr inbounds i8, ptr %frame, i64 104
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 136
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end71, %entry
  ret void

for.body:                                         ; preds = %for.body.lr.ph, %if.end71
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end71 ]
  %tobool.not = icmp ne i64 %indvars.iv, 0
  %cond = zext i1 %tobool.not to i32
  %1 = load i32, ptr %i_width1, align 4
  %shr = ashr i32 %1, %cond
  %2 = load i32, ptr %i_height3, align 8
  %shr4 = ashr i32 %2, %cond
  %3 = load ptr, ptr %sps, align 16
  %i_mb_width = getelementptr inbounds i8, ptr %3, i64 1084
  %4 = load i32, ptr %i_mb_width, align 4
  %mul = shl nsw i32 %4, 4
  %sub = sub nsw i32 %mul, %1
  %shr7 = ashr i32 %sub, %cond
  %i_mb_height = getelementptr inbounds i8, ptr %3, i64 1088
  %5 = load i32, ptr %i_mb_height, align 4
  %mul9 = shl nsw i32 %5, 4
  %sub12 = sub nsw i32 %mul9, %2
  %shr13 = ashr i32 %sub12, %cond
  %tobool14.not = icmp ne i32 %shr7, 0
  %cmp16116 = icmp sgt i32 %shr4, 0
  %or.cond = select i1 %tobool14.not, i1 %cmp16116, i1 false
  br i1 %or.cond, label %for.body18.lr.ph, label %if.end

for.body18.lr.ph:                                 ; preds = %for.body
  %arrayidx = getelementptr inbounds [3 x ptr], ptr %plane, i64 0, i64 %indvars.iv
  %arrayidx20 = getelementptr inbounds [3 x i32], ptr %i_stride, i64 0, i64 %indvars.iv
  %conv35 = sext i32 %shr7 to i64
  %xtraiter = and i32 %shr4, 1
  %6 = icmp eq i32 %shr4, 1
  br i1 %6, label %if.end.loopexit.unr-lcssa, label %for.body18.lr.ph.new

for.body18.lr.ph.new:                             ; preds = %for.body18.lr.ph
  %unroll_iter = and i32 %shr4, 2147483646
  br label %for.body18

for.body18:                                       ; preds = %for.body18, %for.body18.lr.ph.new
  %y.0117 = phi i32 [ 0, %for.body18.lr.ph.new ], [ %inc.1, %for.body18 ]
  %niter = phi i32 [ 0, %for.body18.lr.ph.new ], [ %niter.next.1, %for.body18 ]
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = load i32, ptr %arrayidx20, align 4
  %mul21 = mul nsw i32 %8, %y.0117
  %add = add nsw i32 %mul21, %shr
  %idxprom22 = sext i32 %add to i64
  %arrayidx23 = getelementptr i8, ptr %7, i64 %idxprom22
  %arrayidx34 = getelementptr i8, ptr %arrayidx23, i64 -1
  %9 = load i8, ptr %arrayidx34, align 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %arrayidx23, i8 %9, i64 %conv35, i1 false)
  %inc = or disjoint i32 %y.0117, 1
  %10 = load ptr, ptr %arrayidx, align 8
  %11 = load i32, ptr %arrayidx20, align 4
  %mul21.1 = mul nsw i32 %11, %inc
  %add.1 = add nsw i32 %mul21.1, %shr
  %idxprom22.1 = sext i32 %add.1 to i64
  %arrayidx23.1 = getelementptr i8, ptr %10, i64 %idxprom22.1
  %arrayidx34.1 = getelementptr i8, ptr %arrayidx23.1, i64 -1
  %12 = load i8, ptr %arrayidx34.1, align 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %arrayidx23.1, i8 %12, i64 %conv35, i1 false)
  %inc.1 = add nuw nsw i32 %y.0117, 2
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %if.end.loopexit.unr-lcssa, label %for.body18

if.end.loopexit.unr-lcssa:                        ; preds = %for.body18, %for.body18.lr.ph
  %y.0117.unr = phi i32 [ 0, %for.body18.lr.ph ], [ %inc.1, %for.body18 ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %if.end, label %for.body18.epil

for.body18.epil:                                  ; preds = %if.end.loopexit.unr-lcssa
  %13 = load ptr, ptr %arrayidx, align 8
  %14 = load i32, ptr %arrayidx20, align 4
  %mul21.epil = mul nsw i32 %14, %y.0117.unr
  %add.epil = add nsw i32 %mul21.epil, %shr
  %idxprom22.epil = sext i32 %add.epil to i64
  %arrayidx23.epil = getelementptr i8, ptr %13, i64 %idxprom22.epil
  %arrayidx34.epil = getelementptr i8, ptr %arrayidx23.epil, i64 -1
  %15 = load i8, ptr %arrayidx34.epil, align 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %arrayidx23.epil, i8 %15, i64 %conv35, i1 false)
  br label %if.end

if.end:                                           ; preds = %for.body18.epil, %if.end.loopexit.unr-lcssa, %for.body
  %tobool36.not = icmp eq i32 %shr13, 0
  br i1 %tobool36.not, label %if.end71, label %for.cond39.preheader

for.cond39.preheader:                             ; preds = %if.end
  %add40 = add nsw i32 %shr13, %shr4
  %cmp41118 = icmp sgt i32 %shr13, 0
  br i1 %cmp41118, label %for.body44.lr.ph, label %if.end71

for.body44.lr.ph:                                 ; preds = %for.cond39.preheader
  %arrayidx47 = getelementptr inbounds [3 x ptr], ptr %plane, i64 0, i64 %indvars.iv
  %arrayidx50 = getelementptr inbounds [3 x i32], ptr %i_stride, i64 0, i64 %indvars.iv
  %add66 = add nsw i32 %shr7, %shr
  %conv67 = sext i32 %add66 to i64
  br label %for.body44

for.body44:                                       ; preds = %for.body44.lr.ph, %for.body44
  %y38.0119 = phi i32 [ %shr4, %for.body44.lr.ph ], [ %inc69, %for.body44 ]
  %16 = load ptr, ptr %arrayidx47, align 8
  %17 = load i32, ptr %arrayidx50, align 4
  %mul51 = mul nsw i32 %17, %y38.0119
  %idxprom52 = sext i32 %mul51 to i64
  %arrayidx53 = getelementptr inbounds i8, ptr %16, i64 %idxprom52
  %18 = load i32, ptr %b_interlaced, align 8
  %.not = xor i32 %18, -1
  %19 = or i32 %y38.0119, %.not
  %sub59 = add i32 %19, %shr4
  %mul63 = mul nsw i32 %sub59, %17
  %idxprom64 = sext i32 %mul63 to i64
  %arrayidx65 = getelementptr inbounds i8, ptr %16, i64 %idxprom64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx53, ptr align 1 %arrayidx65, i64 %conv67, i1 false)
  %inc69 = add nsw i32 %y38.0119, 1
  %cmp41 = icmp slt i32 %inc69, %add40
  br i1 %cmp41, label %for.body44, label %if.end71

if.end71:                                         ; preds = %for.body44, %for.cond39.preheader, %if.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %20 = load i32, ptr %i_plane, align 4
  %21 = sext i32 %20 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %21
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_frame_cond_broadcast(ptr nocapture noundef writeonly %frame, i32 noundef %i_lines_completed) local_unnamed_addr #6 {
entry:
  %i_lines_completed1 = getelementptr inbounds i8, ptr %frame, i64 15592
  store i32 %i_lines_completed, ptr %i_lines_completed1, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local void @x264_frame_cond_wait(ptr nocapture noundef readonly %frame, i32 noundef %i_lines_completed) local_unnamed_addr #7 {
entry:
  %i_lines_completed1 = getelementptr inbounds i8, ptr %frame, i64 15592
  %0 = load i32, ptr %i_lines_completed1, align 8
  %cmp = icmp slt i32 %0, %i_lines_completed
  br i1 %cmp, label %while.cond, label %while.end

while.cond:                                       ; preds = %entry, %while.cond
  br label %while.cond

while.end:                                        ; preds = %entry
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @x264_frame_push(ptr nocapture noundef %list, ptr noundef %frame) local_unnamed_addr #8 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv
  %0 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %0, null
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %tobool.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  %arrayidx.le = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv
  store ptr %frame, ptr %arrayidx.le, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local ptr @x264_frame_pop(ptr nocapture noundef %list) local_unnamed_addr #8 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 0, %entry ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv.next
  %0 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  %idxprom1 = and i64 %indvars.iv, 4294967295
  %arrayidx2 = getelementptr inbounds ptr, ptr %list, i64 %idxprom1
  %1 = load ptr, ptr %arrayidx2, align 8
  store ptr null, ptr %arrayidx2, align 8
  ret ptr %1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @x264_frame_unshift(ptr nocapture noundef %list, ptr noundef %frame) local_unnamed_addr #8 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv
  %0 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %0, null
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %tobool.not, label %while.cond1.preheader, label %while.cond

while.cond1.preheader:                            ; preds = %while.cond
  %tobool2.not17 = icmp eq i64 %indvars.iv, 0
  br i1 %tobool2.not17, label %while.end8, label %while.body3.preheader

while.body3.preheader:                            ; preds = %while.cond1.preheader
  %min.iters.check = icmp ult i64 %indvars.iv, 8
  br i1 %min.iters.check, label %while.body3.preheader36, label %vector.ph

vector.ph:                                        ; preds = %while.body3.preheader
  %n.vec = and i64 %indvars.iv, 9223372036854775800
  %ind.end = and i64 %indvars.iv, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = sub i64 %indvars.iv, %index
  %1 = getelementptr ptr, ptr %list, i64 %offset.idx
  %2 = getelementptr i8, ptr %1, i64 -16
  %3 = getelementptr i8, ptr %1, i64 -32
  %4 = getelementptr i8, ptr %1, i64 -48
  %5 = getelementptr i8, ptr %1, i64 -64
  %wide.load = load <2 x ptr>, ptr %2, align 8
  %wide.load26 = load <2 x ptr>, ptr %3, align 8
  %wide.load28 = load <2 x ptr>, ptr %4, align 8
  %wide.load30 = load <2 x ptr>, ptr %5, align 8
  %6 = getelementptr inbounds ptr, ptr %list, i64 %offset.idx
  %7 = getelementptr inbounds i8, ptr %6, i64 -8
  %8 = getelementptr inbounds i8, ptr %6, i64 -24
  %9 = getelementptr inbounds i8, ptr %6, i64 -40
  %10 = getelementptr inbounds i8, ptr %6, i64 -56
  store <2 x ptr> %wide.load, ptr %7, align 8
  store <2 x ptr> %wide.load26, ptr %8, align 8
  store <2 x ptr> %wide.load28, ptr %9, align 8
  store <2 x ptr> %wide.load30, ptr %10, align 8
  %index.next = add nuw i64 %index, 8
  %11 = icmp eq i64 %index.next, %n.vec
  br i1 %11, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv, %n.vec
  br i1 %cmp.n, label %while.end8, label %while.body3.preheader36

while.body3.preheader36:                          ; preds = %middle.block, %while.body3.preheader
  %indvars.iv23.ph = phi i64 [ %indvars.iv, %while.body3.preheader ], [ %ind.end, %middle.block ]
  br label %while.body3

while.body3:                                      ; preds = %while.body3.preheader36, %while.body3
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %while.body3 ], [ %indvars.iv23.ph, %while.body3.preheader36 ]
  %indvars.iv.next24 = add nsw i64 %indvars.iv23, -1
  %arrayidx5 = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv.next24
  %12 = load ptr, ptr %arrayidx5, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv23
  store ptr %12, ptr %arrayidx7, align 8
  %13 = icmp eq i64 %indvars.iv.next24, 0
  br i1 %13, label %while.end8, label %while.body3, !llvm.loop !20

while.end8:                                       ; preds = %while.body3, %middle.block, %while.cond1.preheader
  store ptr %frame, ptr %list, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local ptr @x264_frame_shift(ptr nocapture noundef %list) local_unnamed_addr #8 {
entry:
  %0 = load ptr, ptr %list, align 8
  %tobool.not12 = icmp eq ptr %0, null
  br i1 %tobool.not12, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx114 = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx3 = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv.next
  %1 = load ptr, ptr %arrayidx3, align 8
  store ptr %1, ptr %arrayidx114, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_frame_push_unused(ptr nocapture noundef readonly %h, ptr noundef %frame) local_unnamed_addr #4 {
entry:
  %i_reference_count = getelementptr inbounds i8, ptr %frame, i64 15600
  %0 = load i32, ptr %i_reference_count, align 16
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %i_reference_count, align 16
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %unused = getelementptr inbounds i8, ptr %h, i64 14424
  %b_fdec = getelementptr inbounds i8, ptr %frame, i64 84
  %1 = load i8, ptr %b_fdec, align 4
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %unused, i64 0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.then
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %while.cond.i ], [ 0, %if.then ]
  %arrayidx.i = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv.i
  %3 = load ptr, ptr %arrayidx.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %tobool.not.i, label %x264_frame_push.exit, label %while.cond.i

x264_frame_push.exit:                             ; preds = %while.cond.i
  %arrayidx.i.le = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv.i
  store ptr %frame, ptr %arrayidx.i.le, align 8
  br label %if.end

if.end:                                           ; preds = %x264_frame_push.exit, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @x264_frame_pop_unused(ptr nocapture noundef readonly %h, i32 noundef %b_fdec) local_unnamed_addr #0 {
entry:
  %unused = getelementptr inbounds i8, ptr %h, i64 14424
  %idxprom = sext i32 %b_fdec to i64
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %unused, i64 0, i64 %idxprom
  %0 = load ptr, ptr %arrayidx, align 8
  %1 = load ptr, ptr %0, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %while.cond.i

while.cond.i:                                     ; preds = %entry, %while.cond.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %while.cond.i ], [ 0, %entry ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %arrayidx.i = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv.next.i
  %2 = load ptr, ptr %arrayidx.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %x264_frame_pop.exit, label %while.cond.i

x264_frame_pop.exit:                              ; preds = %while.cond.i
  %idxprom1.i = and i64 %indvars.iv.i, 4294967295
  %arrayidx2.i = getelementptr inbounds ptr, ptr %0, i64 %idxprom1.i
  %3 = load ptr, ptr %arrayidx2.i, align 8
  store ptr null, ptr %arrayidx2.i, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call6 = tail call ptr @x264_frame_new(ptr noundef nonnull %h, i32 noundef %b_fdec)
  br label %if.end

if.end:                                           ; preds = %if.else, %x264_frame_pop.exit
  %frame.0 = phi ptr [ %3, %x264_frame_pop.exit ], [ %call6, %if.else ]
  %tobool7.not = icmp eq ptr %frame.0, null
  br i1 %tobool7.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end
  %b_last_minigop_bframe = getelementptr inbounds i8, ptr %frame.0, i64 85
  store i8 0, ptr %b_last_minigop_bframe, align 1
  %i_reference_count = getelementptr inbounds i8, ptr %frame.0, i64 15600
  store i32 1, ptr %i_reference_count, align 16
  %b_intra_calculated = getelementptr inbounds i8, ptr %frame.0, i64 12168
  store i32 0, ptr %b_intra_calculated, align 8
  %b_scenecut = getelementptr inbounds i8, ptr %frame.0, i64 12200
  store i32 1, ptr %b_scenecut, align 8
  %b_keyframe = getelementptr inbounds i8, ptr %frame.0, i64 80
  store i32 0, ptr %b_keyframe, align 16
  %weight = getelementptr inbounds i8, ptr %frame.0, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3072) %weight, i8 0, i64 3072, i1 false)
  %f_weighted_cost_delta = getelementptr inbounds i8, ptr %frame.0, i64 12204
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %f_weighted_cost_delta, i8 0, i64 72, i1 false)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end9
  ret ptr %frame.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_frame_push_blank_unused(ptr nocapture noundef readonly %h, ptr noundef %frame) local_unnamed_addr #4 {
entry:
  %i_reference_count = getelementptr inbounds i8, ptr %frame, i64 15600
  %0 = load i32, ptr %i_reference_count, align 16
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %i_reference_count, align 16
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %blank_unused = getelementptr inbounds i8, ptr %h, i64 14440
  %1 = load ptr, ptr %blank_unused, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.then
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %while.cond.i ], [ 0, %if.then ]
  %arrayidx.i = getelementptr inbounds ptr, ptr %1, i64 %indvars.iv.i
  %2 = load ptr, ptr %arrayidx.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %tobool.not.i, label %x264_frame_push.exit, label %while.cond.i

x264_frame_push.exit:                             ; preds = %while.cond.i
  %arrayidx.i.le = getelementptr inbounds ptr, ptr %1, i64 %indvars.iv.i
  store ptr %frame, ptr %arrayidx.i.le, align 8
  br label %if.end

if.end:                                           ; preds = %x264_frame_push.exit, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @x264_frame_pop_blank_unused(ptr nocapture noundef readonly %h) local_unnamed_addr #0 {
entry:
  %blank_unused = getelementptr inbounds i8, ptr %h, i64 14440
  %0 = load ptr, ptr %blank_unused, align 8
  %1 = load ptr, ptr %0, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %while.cond.i

while.cond.i:                                     ; preds = %entry, %while.cond.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %while.cond.i ], [ 0, %entry ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %arrayidx.i = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv.next.i
  %2 = load ptr, ptr %arrayidx.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %x264_frame_pop.exit, label %while.cond.i

x264_frame_pop.exit:                              ; preds = %while.cond.i
  %idxprom1.i = and i64 %indvars.iv.i, 4294967295
  %arrayidx2.i = getelementptr inbounds ptr, ptr %0, i64 %idxprom1.i
  %3 = load ptr, ptr %arrayidx2.i, align 8
  store ptr null, ptr %arrayidx2.i, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = tail call ptr @x264_malloc(i32 noundef 15632) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %x264_frame_pop.exit
  %frame.0 = phi ptr [ %3, %x264_frame_pop.exit ], [ %call3, %if.else ]
  %tobool4.not = icmp eq ptr %frame.0, null
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %b_duplicate = getelementptr inbounds i8, ptr %frame.0, i64 3520
  store i32 1, ptr %b_duplicate, align 16
  %i_reference_count = getelementptr inbounds i8, ptr %frame.0, i64 15600
  store i32 1, ptr %i_reference_count, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6
  ret ptr %frame.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_frame_sort(ptr nocapture noundef %list, i32 noundef %b_dts) local_unnamed_addr #4 {
entry:
  %arrayidx52 = getelementptr inbounds i8, ptr %list, i64 8
  %tobool14.not = icmp eq i32 %b_dts, 0
  %0 = load ptr, ptr %arrayidx52, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %do.end32, label %for.body.lr.ph

do.bodythread-pre-split:                          ; preds = %for.cond.cleanup
  %.pr = load ptr, ptr %arrayidx52, align 8
  %tobool.not53 = icmp eq ptr %.pr, null
  br i1 %tobool.not53, label %do.end32, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry, %do.bodythread-pre-split
  %2 = phi ptr [ %.pr, %do.bodythread-pre-split ], [ %0, %entry ]
  br i1 %tobool14.not, label %for.body.us, label %for.body

for.body.us:                                      ; preds = %for.body.lr.ph, %if.end.us
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %if.end.us ], [ 0, %for.body.lr.ph ]
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %if.end.us ], [ 1, %for.body.lr.ph ]
  %3 = phi ptr [ %7, %if.end.us ], [ %2, %for.body.lr.ph ]
  %arrayidx57.us = phi ptr [ %arrayidx.us, %if.end.us ], [ %arrayidx52, %for.body.lr.ph ]
  %b_ok.055.us = phi i32 [ %b_ok.1.us, %if.end.us ], [ 1, %for.body.lr.ph ]
  %arrayidx2.us = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv66
  %4 = load ptr, ptr %arrayidx2.us, align 8
  %i_frame.us = getelementptr inbounds i8, ptr %4, i64 56
  %5 = load i32, ptr %i_frame.us, align 8
  %i_frame12.us = getelementptr inbounds i8, ptr %3, i64 56
  %6 = load i32, ptr %i_frame12.us, align 8
  %cmp17.us = icmp sgt i32 %5, %6
  br i1 %cmp17.us, label %do.body19.us, label %if.end.us

do.body19.us:                                     ; preds = %for.body.us
  store ptr %3, ptr %arrayidx2.us, align 8
  store ptr %4, ptr %arrayidx57.us, align 8
  br label %if.end.us

if.end.us:                                        ; preds = %do.body19.us, %for.body.us
  %b_ok.1.us = phi i32 [ 0, %do.body19.us ], [ %b_ok.055.us, %for.body.us ]
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %arrayidx.us = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv.next65
  %7 = load ptr, ptr %arrayidx.us, align 8
  %tobool.not.us = icmp eq ptr %7, null
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br i1 %tobool.not.us, label %for.cond.cleanup, label %for.body.us

for.cond.cleanup:                                 ; preds = %if.end, %if.end.us
  %b_ok.0.lcssa = phi i32 [ %b_ok.1.us, %if.end.us ], [ %b_ok.1, %if.end ]
  %tobool31.not = icmp eq i32 %b_ok.0.lcssa, 0
  br i1 %tobool31.not, label %do.bodythread-pre-split, label %do.end32, !llvm.loop !21

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %if.end ], [ 0, %for.body.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 1, %for.body.lr.ph ]
  %8 = phi ptr [ %15, %if.end ], [ %2, %for.body.lr.ph ]
  %arrayidx57 = phi ptr [ %arrayidx, %if.end ], [ %arrayidx52, %for.body.lr.ph ]
  %b_ok.055 = phi i32 [ %b_ok.1, %if.end ], [ 1, %for.body.lr.ph ]
  %arrayidx2 = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv59
  %9 = load ptr, ptr %arrayidx2, align 8
  %i_type = getelementptr inbounds i8, ptr %9, i64 4
  %10 = load i32, ptr %i_type, align 4
  %i_type6 = getelementptr inbounds i8, ptr %8, i64 4
  %11 = load i32, ptr %i_type6, align 4
  %cmp = icmp sgt i32 %10, %11
  br i1 %cmp, label %do.body19, label %cond.end

cond.end:                                         ; preds = %for.body
  %i_frame = getelementptr inbounds i8, ptr %9, i64 56
  %12 = load i32, ptr %i_frame, align 8
  %i_frame12 = getelementptr inbounds i8, ptr %8, i64 56
  %13 = load i32, ptr %i_frame12, align 8
  %cmp15 = icmp eq i32 %10, %11
  %cmp16 = icmp sgt i32 %12, %13
  %14 = select i1 %cmp15, i1 %cmp16, i1 false
  br i1 %14, label %do.body19, label %if.end

do.body19:                                        ; preds = %for.body, %cond.end
  store ptr %8, ptr %arrayidx2, align 8
  store ptr %9, ptr %arrayidx57, align 8
  br label %if.end

if.end:                                           ; preds = %do.body19, %cond.end
  %b_ok.1 = phi i32 [ 0, %do.body19 ], [ %b_ok.055, %cond.end ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv.next
  %15 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %15, null
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  br i1 %tobool.not, label %for.cond.cleanup, label %for.body

do.end32:                                         ; preds = %do.bodythread-pre-split, %for.cond.cleanup, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_weight_scale_plane(ptr nocapture noundef readnone %h, ptr noundef %dst, i32 noundef %i_dst_stride, ptr noundef %src, i32 noundef %i_src_stride, i32 noundef %i_width, i32 noundef %i_height, ptr noundef %w) local_unnamed_addr #0 {
entry:
  %cmp23 = icmp sgt i32 %i_height, 0
  br i1 %cmp23, label %for.cond.preheader.lr.ph, label %while.end

for.cond.preheader.lr.ph:                         ; preds = %entry
  %cmp121 = icmp sgt i32 %i_width, 0
  %weightfn = getelementptr inbounds i8, ptr %w, i64 48
  %mul = shl nsw i32 %i_dst_stride, 4
  %idx.ext5 = sext i32 %mul to i64
  %mul7 = shl nsw i32 %i_src_stride, 4
  %idx.ext8 = sext i32 %mul7 to i64
  br i1 %cmp121, label %for.cond.preheader.us, label %while.end

for.cond.preheader.us:                            ; preds = %for.cond.preheader.lr.ph, %for.cond.for.cond.cleanup_crit_edge.us
  %dst.addr.026.us = phi ptr [ %add.ptr6.us, %for.cond.for.cond.cleanup_crit_edge.us ], [ %dst, %for.cond.preheader.lr.ph ]
  %i_height.addr.025.us = phi i32 [ %sub.us, %for.cond.for.cond.cleanup_crit_edge.us ], [ %i_height, %for.cond.preheader.lr.ph ]
  %src.addr.024.us = phi ptr [ %add.ptr9.us, %for.cond.for.cond.cleanup_crit_edge.us ], [ %src, %for.cond.preheader.lr.ph ]
  %0 = tail call i32 @llvm.umin.i32(i32 %i_height.addr.025.us, i32 16)
  br label %for.body.us

for.body.us:                                      ; preds = %for.cond.preheader.us, %for.body.us
  %indvars.iv = phi i64 [ 0, %for.cond.preheader.us ], [ %indvars.iv.next, %for.body.us ]
  %1 = load ptr, ptr %weightfn, align 16
  %arrayidx.us = getelementptr inbounds i8, ptr %1, i64 32
  %2 = load ptr, ptr %arrayidx.us, align 8
  %add.ptr.us = getelementptr inbounds i8, ptr %dst.addr.026.us, i64 %indvars.iv
  %add.ptr3.us = getelementptr inbounds i8, ptr %src.addr.024.us, i64 %indvars.iv
  tail call void %2(ptr noundef %add.ptr.us, i32 noundef %i_dst_stride, ptr noundef %add.ptr3.us, i32 noundef %i_src_stride, ptr noundef %w, i32 noundef %0) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16
  %3 = trunc nuw i64 %indvars.iv.next to i32
  %cmp1.us = icmp slt i32 %3, %i_width
  br i1 %cmp1.us, label %for.body.us, label %for.cond.for.cond.cleanup_crit_edge.us

for.cond.for.cond.cleanup_crit_edge.us:           ; preds = %for.body.us
  %sub.us = add nsw i32 %i_height.addr.025.us, -16
  %add.ptr6.us = getelementptr inbounds i8, ptr %dst.addr.026.us, i64 %idx.ext5
  %add.ptr9.us = getelementptr inbounds i8, ptr %src.addr.024.us, i64 %idx.ext8
  %cmp.us = icmp sgt i32 %i_height.addr.025.us, 16
  br i1 %cmp.us, label %for.cond.preheader.us, label %while.end

while.end:                                        ; preds = %for.cond.for.cond.cleanup_crit_edge.us, %for.cond.preheader.lr.ph, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_frame_delete_list(ptr noundef %list) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %list, null
  br i1 %tobool.not, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %0 = load ptr, ptr %list, align 8
  %tobool1.not8 = icmp eq ptr %0, null
  br i1 %tobool1.not8, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ 0, %while.cond.preheader ]
  %1 = phi ptr [ %2, %while.body ], [ %0, %while.cond.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  tail call void @x264_frame_delete(ptr noundef nonnull %1)
  %arrayidx = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv.next
  %2 = load ptr, ptr %arrayidx, align 8
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %while.cond.preheader
  tail call void @x264_free(ptr noundef nonnull %list) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @x264_synch_frame_list_init(ptr nocapture noundef writeonly %slist, i32 noundef %max_size) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %max_size, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %i_max_size = getelementptr inbounds i8, ptr %slist, i64 8
  store i32 %max_size, ptr %i_max_size, align 8
  %i_size = getelementptr inbounds i8, ptr %slist, i64 12
  store i32 0, ptr %i_size, align 4
  %add = add nuw nsw i32 %max_size, 1
  %conv = zext nneg i32 %add to i64
  %mul = shl nuw nsw i64 %conv, 3
  %conv2 = trunc i64 %mul to i32
  %call = tail call ptr @x264_malloc(i32 noundef %conv2) #11
  store ptr %call, ptr %slist, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %return, label %do.end

do.end:                                           ; preds = %if.end
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %call, i8 0, i64 %mul, i1 false)
  br label %return

return:                                           ; preds = %if.end, %entry, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ -1, %entry ], [ -1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_synch_frame_list_delete(ptr nocapture noundef readonly %slist) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %slist, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %x264_frame_delete_list.exit, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %entry
  %1 = load ptr, ptr %0, align 8
  %tobool1.not8.i = icmp eq ptr %1, null
  br i1 %tobool1.not8.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.preheader.i, %while.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %while.body.i ], [ 0, %while.cond.preheader.i ]
  %2 = phi ptr [ %3, %while.body.i ], [ %1, %while.cond.preheader.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  tail call void @x264_frame_delete(ptr noundef nonnull %2)
  %arrayidx.i = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv.next.i
  %3 = load ptr, ptr %arrayidx.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.end.i, label %while.body.i

while.end.i:                                      ; preds = %while.body.i, %while.cond.preheader.i
  tail call void @x264_free(ptr noundef nonnull %0) #11
  br label %x264_frame_delete_list.exit

x264_frame_delete_list.exit:                      ; preds = %entry, %while.end.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_synch_frame_list_push(ptr nocapture noundef %slist, ptr noundef %frame) local_unnamed_addr #9 {
entry:
  %i_size = getelementptr inbounds i8, ptr %slist, i64 12
  %0 = load i32, ptr %i_size, align 4
  %i_max_size = getelementptr inbounds i8, ptr %slist, i64 8
  %1 = load i32, ptr %i_max_size, align 8
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %while.cond, label %while.end

while.cond:                                       ; preds = %entry, %while.cond
  br label %while.cond

while.end:                                        ; preds = %entry
  %2 = load ptr, ptr %slist, align 8
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i_size, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom
  store ptr %frame, ptr %arrayidx, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unswitch.partial.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !18, !19}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !19, !18}
!21 = distinct !{!21, !6}
