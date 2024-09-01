; ModuleID = 'x264_src/output/flv_bytestream.c'
source_filename = "x264_src/output/flv_bytestream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1, !dbg !0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @dbl2int(double noundef %value) local_unnamed_addr #0 !dbg !47 {
entry:
    #dbg_value(double %value, !55, !DIExpression(), !61)
    #dbg_value(double %value, !56, !DIExpression(), !61)
  %0 = bitcast double %value to i64, !dbg !62
  ret i64 %0, !dbg !63
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_byte(ptr nocapture noundef %c, i8 noundef zeroext %b) local_unnamed_addr #1 !dbg !64 {
entry:
    #dbg_value(ptr %c, !137, !DIExpression(), !139)
    #dbg_value(i8 %b, !138, !DIExpression(), !139)
    #dbg_value(ptr %c, !140, !DIExpression(), !152)
    #dbg_value(ptr undef, !145, !DIExpression(), !152)
    #dbg_value(i32 1, !146, !DIExpression(), !152)
  %d_cur.i = getelementptr inbounds i8, ptr %c, i64 8, !dbg !154
  %0 = load i32, ptr %d_cur.i, align 8, !dbg !154
  %add.i = add i32 %0, 1, !dbg !155
    #dbg_value(i32 %add.i, !147, !DIExpression(), !152)
  %d_max.i = getelementptr inbounds i8, ptr %c, i64 12, !dbg !156
  %1 = load i32, ptr %d_max.i, align 4, !dbg !156
  %cmp.i = icmp ugt i32 %add.i, %1, !dbg !157
  br i1 %cmp.i, label %while.cond.i, label %entry.if.end7_crit_edge.i, !dbg !158

entry.if.end7_crit_edge.i:                        ; preds = %entry
  %.pre.i = load ptr, ptr %c, align 8, !dbg !159
  br label %if.end7.i, !dbg !158

while.cond.i:                                     ; preds = %entry, %while.cond.i
  %dn.0.i = phi i32 [ %shl.i, %while.cond.i ], [ 16, %entry ], !dbg !160
    #dbg_value(i32 %dn.0.i, !151, !DIExpression(), !160)
  %cmp1.i = icmp ugt i32 %add.i, %dn.0.i, !dbg !161
  %shl.i = shl i32 %dn.0.i, 1, !dbg !162
    #dbg_value(i32 %shl.i, !151, !DIExpression(), !160)
  br i1 %cmp1.i, label %while.cond.i, label %while.end.i, !dbg !163, !llvm.loop !164

while.end.i:                                      ; preds = %while.cond.i
  %2 = load ptr, ptr %c, align 8, !dbg !166
  %conv.i = zext i32 %dn.0.i to i64, !dbg !167
  %call.i = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv.i) #10, !dbg !168
    #dbg_value(ptr %call.i, !148, !DIExpression(), !160)
  %tobool.not.not.i = icmp eq ptr %call.i, null, !dbg !169
  br i1 %tobool.not.not.i, label %flv_append_data.exit, label %if.end.i, !dbg !171

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %c, align 8, !dbg !172
  store i32 %dn.0.i, ptr %d_max.i, align 4, !dbg !173
  %.pre27.i = load i32, ptr %d_cur.i, align 8, !dbg !174
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i, %entry.if.end7_crit_edge.i
  %3 = phi i32 [ %0, %entry.if.end7_crit_edge.i ], [ %.pre27.i, %if.end.i ], !dbg !174
  %4 = phi ptr [ %.pre.i, %entry.if.end7_crit_edge.i ], [ %call.i, %if.end.i ], !dbg !159
  %idx.ext.i = zext i32 %3 to i64, !dbg !175
  %add.ptr.i = getelementptr inbounds i8, ptr %4, i64 %idx.ext.i, !dbg !175
  store i8 %b, ptr %add.ptr.i, align 1, !dbg !176
  store i32 %add.i, ptr %d_cur.i, align 8, !dbg !177
  br label %flv_append_data.exit, !dbg !178

flv_append_data.exit:                             ; preds = %while.end.i, %if.end7.i
  ret void, !dbg !179
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @flv_append_data(ptr nocapture noundef %c, ptr nocapture noundef readonly %data, i32 noundef %size) local_unnamed_addr #1 !dbg !141 {
entry:
    #dbg_value(ptr %c, !140, !DIExpression(), !180)
    #dbg_value(ptr %data, !145, !DIExpression(), !180)
    #dbg_value(i32 %size, !146, !DIExpression(), !180)
  %d_cur = getelementptr inbounds i8, ptr %c, i64 8, !dbg !181
  %0 = load i32, ptr %d_cur, align 8, !dbg !181
  %add = add i32 %0, %size, !dbg !182
    #dbg_value(i32 %add, !147, !DIExpression(), !180)
  %d_max = getelementptr inbounds i8, ptr %c, i64 12, !dbg !183
  %1 = load i32, ptr %d_max, align 4, !dbg !183
  %cmp = icmp ugt i32 %add, %1, !dbg !184
  br i1 %cmp, label %while.cond, label %entry.if.end7_crit_edge, !dbg !185

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = load ptr, ptr %c, align 8, !dbg !186
  br label %if.end7, !dbg !185

while.cond:                                       ; preds = %entry, %while.cond
  %dn.0 = phi i32 [ %shl, %while.cond ], [ 16, %entry ], !dbg !187
    #dbg_value(i32 %dn.0, !151, !DIExpression(), !187)
  %cmp1 = icmp ugt i32 %add, %dn.0, !dbg !188
  %shl = shl i32 %dn.0, 1, !dbg !189
    #dbg_value(i32 %shl, !151, !DIExpression(), !187)
  br i1 %cmp1, label %while.cond, label %while.end, !dbg !190, !llvm.loop !191

while.end:                                        ; preds = %while.cond
  %2 = load ptr, ptr %c, align 8, !dbg !193
  %conv = zext i32 %dn.0 to i64, !dbg !194
  %call = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv) #10, !dbg !195
    #dbg_value(ptr %call, !148, !DIExpression(), !187)
  %tobool.not.not = icmp eq ptr %call, null, !dbg !196
  br i1 %tobool.not.not, label %cleanup12, label %if.end, !dbg !197

if.end:                                           ; preds = %while.end
  store ptr %call, ptr %c, align 8, !dbg !198
  store i32 %dn.0, ptr %d_max, align 4, !dbg !199
  %.pre27 = load i32, ptr %d_cur, align 8, !dbg !200
  br label %if.end7

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.end
  %3 = phi i32 [ %0, %entry.if.end7_crit_edge ], [ %.pre27, %if.end ], !dbg !200
  %4 = phi ptr [ %.pre, %entry.if.end7_crit_edge ], [ %call, %if.end ], !dbg !186
  %idx.ext = zext i32 %3 to i64, !dbg !201
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext, !dbg !201
  %conv10 = zext i32 %size to i64, !dbg !202
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %data, i64 %conv10, i1 false), !dbg !203
  store i32 %add, ptr %d_cur, align 8, !dbg !204
  br label %cleanup12, !dbg !205

cleanup12:                                        ; preds = %while.end, %if.end7
  %retval.1 = phi i32 [ 0, %if.end7 ], [ -1, %while.end ]
  ret i32 %retval.1, !dbg !206
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_be32(ptr nocapture noundef %c, i32 noundef %val) local_unnamed_addr #1 !dbg !207 {
entry:
    #dbg_value(ptr %c, !213, !DIExpression(), !215)
    #dbg_value(i32 %val, !214, !DIExpression(), !215)
  %shr = lshr i32 %val, 24, !dbg !216
  %conv = trunc nuw i32 %shr to i8, !dbg !217
    #dbg_value(ptr %c, !137, !DIExpression(), !218)
    #dbg_value(i8 %conv, !138, !DIExpression(), !218)
    #dbg_value(ptr %c, !140, !DIExpression(), !220)
    #dbg_value(ptr undef, !145, !DIExpression(), !220)
    #dbg_value(i32 1, !146, !DIExpression(), !220)
  %d_cur.i.i = getelementptr inbounds i8, ptr %c, i64 8, !dbg !222
  %0 = load i32, ptr %d_cur.i.i, align 8, !dbg !222
  %add.i.i = add i32 %0, 1, !dbg !223
    #dbg_value(i32 %add.i.i, !147, !DIExpression(), !220)
  %d_max.i.i = getelementptr inbounds i8, ptr %c, i64 12, !dbg !224
  %1 = load i32, ptr %d_max.i.i, align 4, !dbg !224
  %cmp.i.i = icmp ugt i32 %add.i.i, %1, !dbg !225
  br i1 %cmp.i.i, label %while.cond.i.i, label %entry.if.end7_crit_edge.i.i, !dbg !226

entry.if.end7_crit_edge.i.i:                      ; preds = %entry
  %.pre.i.i = load ptr, ptr %c, align 8, !dbg !227
  br label %if.end7.i.i, !dbg !226

while.cond.i.i:                                   ; preds = %entry, %while.cond.i.i
  %dn.0.i.i = phi i32 [ %shl.i.i, %while.cond.i.i ], [ 16, %entry ], !dbg !228
    #dbg_value(i32 %dn.0.i.i, !151, !DIExpression(), !228)
  %cmp1.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i, !dbg !229
  %shl.i.i = shl i32 %dn.0.i.i, 1, !dbg !230
    #dbg_value(i32 %shl.i.i, !151, !DIExpression(), !228)
  br i1 %cmp1.i.i, label %while.cond.i.i, label %while.end.i.i, !dbg !231, !llvm.loop !232

while.end.i.i:                                    ; preds = %while.cond.i.i
  %2 = load ptr, ptr %c, align 8, !dbg !234
  %conv.i.i = zext i32 %dn.0.i.i to i64, !dbg !235
  %call.i.i = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv.i.i) #10, !dbg !236
    #dbg_value(ptr %call.i.i, !148, !DIExpression(), !228)
  %tobool.not.not.i.i = icmp eq ptr %call.i.i, null, !dbg !237
  %.pre = load i32, ptr %d_cur.i.i, align 8, !dbg !238
  br i1 %tobool.not.not.i.i, label %x264_put_byte.exit, label %if.end.i.i, !dbg !241

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %c, align 8, !dbg !242
  store i32 %dn.0.i.i, ptr %d_max.i.i, align 4, !dbg !243
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i, %entry.if.end7_crit_edge.i.i
  %3 = phi i32 [ %0, %entry.if.end7_crit_edge.i.i ], [ %.pre, %if.end.i.i ], !dbg !244
  %4 = phi ptr [ %.pre.i.i, %entry.if.end7_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ], !dbg !227
  %idx.ext.i.i = zext i32 %3 to i64, !dbg !245
  %add.ptr.i.i = getelementptr inbounds i8, ptr %4, i64 %idx.ext.i.i, !dbg !245
  store i8 %conv, ptr %add.ptr.i.i, align 1, !dbg !246
  store i32 %add.i.i, ptr %d_cur.i.i, align 8, !dbg !247
  br label %x264_put_byte.exit, !dbg !248

x264_put_byte.exit:                               ; preds = %while.end.i.i, %if.end7.i.i
  %5 = phi i32 [ %.pre, %while.end.i.i ], [ %add.i.i, %if.end7.i.i ], !dbg !238
  %shr1 = lshr i32 %val, 16, !dbg !249
  %conv2 = trunc i32 %shr1 to i8, !dbg !250
    #dbg_value(ptr %c, !137, !DIExpression(), !251)
    #dbg_value(i8 %conv2, !138, !DIExpression(), !251)
    #dbg_value(ptr %c, !140, !DIExpression(), !252)
    #dbg_value(ptr undef, !145, !DIExpression(), !252)
    #dbg_value(i32 1, !146, !DIExpression(), !252)
  %add.i.i13 = add i32 %5, 1, !dbg !253
    #dbg_value(i32 %add.i.i13, !147, !DIExpression(), !252)
  %6 = load i32, ptr %d_max.i.i, align 4, !dbg !254
  %cmp.i.i15 = icmp ugt i32 %add.i.i13, %6, !dbg !255
  br i1 %cmp.i.i15, label %while.cond.i.i21, label %entry.if.end7_crit_edge.i.i16, !dbg !256

entry.if.end7_crit_edge.i.i16:                    ; preds = %x264_put_byte.exit
  %.pre.i.i17 = load ptr, ptr %c, align 8, !dbg !257
  br label %if.end7.i.i18, !dbg !256

while.cond.i.i21:                                 ; preds = %x264_put_byte.exit, %while.cond.i.i21
  %dn.0.i.i22 = phi i32 [ %shl.i.i24, %while.cond.i.i21 ], [ 16, %x264_put_byte.exit ], !dbg !258
    #dbg_value(i32 %dn.0.i.i22, !151, !DIExpression(), !258)
  %cmp1.i.i23 = icmp ugt i32 %add.i.i13, %dn.0.i.i22, !dbg !259
  %shl.i.i24 = shl i32 %dn.0.i.i22, 1, !dbg !260
    #dbg_value(i32 %shl.i.i24, !151, !DIExpression(), !258)
  br i1 %cmp1.i.i23, label %while.cond.i.i21, label %while.end.i.i25, !dbg !261, !llvm.loop !262

while.end.i.i25:                                  ; preds = %while.cond.i.i21
  %7 = load ptr, ptr %c, align 8, !dbg !264
  %conv.i.i26 = zext i32 %dn.0.i.i22 to i64, !dbg !265
  %call.i.i27 = tail call ptr @realloc(ptr noundef %7, i64 noundef %conv.i.i26) #10, !dbg !266
    #dbg_value(ptr %call.i.i27, !148, !DIExpression(), !258)
  %tobool.not.not.i.i28 = icmp eq ptr %call.i.i27, null, !dbg !267
  %.pre72 = load i32, ptr %d_cur.i.i, align 8, !dbg !268
  br i1 %tobool.not.not.i.i28, label %x264_put_byte.exit31, label %if.end.i.i29, !dbg !271

if.end.i.i29:                                     ; preds = %while.end.i.i25
  store ptr %call.i.i27, ptr %c, align 8, !dbg !272
  store i32 %dn.0.i.i22, ptr %d_max.i.i, align 4, !dbg !273
  br label %if.end7.i.i18

if.end7.i.i18:                                    ; preds = %if.end.i.i29, %entry.if.end7_crit_edge.i.i16
  %8 = phi i32 [ %5, %entry.if.end7_crit_edge.i.i16 ], [ %.pre72, %if.end.i.i29 ], !dbg !274
  %9 = phi ptr [ %.pre.i.i17, %entry.if.end7_crit_edge.i.i16 ], [ %call.i.i27, %if.end.i.i29 ], !dbg !257
  %idx.ext.i.i19 = zext i32 %8 to i64, !dbg !275
  %add.ptr.i.i20 = getelementptr inbounds i8, ptr %9, i64 %idx.ext.i.i19, !dbg !275
  store i8 %conv2, ptr %add.ptr.i.i20, align 1, !dbg !276
  store i32 %add.i.i13, ptr %d_cur.i.i, align 8, !dbg !277
  br label %x264_put_byte.exit31, !dbg !278

x264_put_byte.exit31:                             ; preds = %while.end.i.i25, %if.end7.i.i18
  %10 = phi i32 [ %.pre72, %while.end.i.i25 ], [ %add.i.i13, %if.end7.i.i18 ], !dbg !268
  %shr3 = lshr i32 %val, 8, !dbg !279
  %conv4 = trunc i32 %shr3 to i8, !dbg !280
    #dbg_value(ptr %c, !137, !DIExpression(), !281)
    #dbg_value(i8 %conv4, !138, !DIExpression(), !281)
    #dbg_value(ptr %c, !140, !DIExpression(), !282)
    #dbg_value(ptr undef, !145, !DIExpression(), !282)
    #dbg_value(i32 1, !146, !DIExpression(), !282)
  %add.i.i33 = add i32 %10, 1, !dbg !283
    #dbg_value(i32 %add.i.i33, !147, !DIExpression(), !282)
  %11 = load i32, ptr %d_max.i.i, align 4, !dbg !284
  %cmp.i.i35 = icmp ugt i32 %add.i.i33, %11, !dbg !285
  br i1 %cmp.i.i35, label %while.cond.i.i41, label %entry.if.end7_crit_edge.i.i36, !dbg !286

entry.if.end7_crit_edge.i.i36:                    ; preds = %x264_put_byte.exit31
  %.pre.i.i37 = load ptr, ptr %c, align 8, !dbg !287
  br label %if.end7.i.i38, !dbg !286

while.cond.i.i41:                                 ; preds = %x264_put_byte.exit31, %while.cond.i.i41
  %dn.0.i.i42 = phi i32 [ %shl.i.i44, %while.cond.i.i41 ], [ 16, %x264_put_byte.exit31 ], !dbg !288
    #dbg_value(i32 %dn.0.i.i42, !151, !DIExpression(), !288)
  %cmp1.i.i43 = icmp ugt i32 %add.i.i33, %dn.0.i.i42, !dbg !289
  %shl.i.i44 = shl i32 %dn.0.i.i42, 1, !dbg !290
    #dbg_value(i32 %shl.i.i44, !151, !DIExpression(), !288)
  br i1 %cmp1.i.i43, label %while.cond.i.i41, label %while.end.i.i45, !dbg !291, !llvm.loop !292

while.end.i.i45:                                  ; preds = %while.cond.i.i41
  %12 = load ptr, ptr %c, align 8, !dbg !294
  %conv.i.i46 = zext i32 %dn.0.i.i42 to i64, !dbg !295
  %call.i.i47 = tail call ptr @realloc(ptr noundef %12, i64 noundef %conv.i.i46) #10, !dbg !296
    #dbg_value(ptr %call.i.i47, !148, !DIExpression(), !288)
  %tobool.not.not.i.i48 = icmp eq ptr %call.i.i47, null, !dbg !297
  %.pre73 = load i32, ptr %d_cur.i.i, align 8, !dbg !298
  br i1 %tobool.not.not.i.i48, label %x264_put_byte.exit51, label %if.end.i.i49, !dbg !301

if.end.i.i49:                                     ; preds = %while.end.i.i45
  store ptr %call.i.i47, ptr %c, align 8, !dbg !302
  store i32 %dn.0.i.i42, ptr %d_max.i.i, align 4, !dbg !303
  br label %if.end7.i.i38

if.end7.i.i38:                                    ; preds = %if.end.i.i49, %entry.if.end7_crit_edge.i.i36
  %13 = phi i32 [ %10, %entry.if.end7_crit_edge.i.i36 ], [ %.pre73, %if.end.i.i49 ], !dbg !304
  %14 = phi ptr [ %.pre.i.i37, %entry.if.end7_crit_edge.i.i36 ], [ %call.i.i47, %if.end.i.i49 ], !dbg !287
  %idx.ext.i.i39 = zext i32 %13 to i64, !dbg !305
  %add.ptr.i.i40 = getelementptr inbounds i8, ptr %14, i64 %idx.ext.i.i39, !dbg !305
  store i8 %conv4, ptr %add.ptr.i.i40, align 1, !dbg !306
  store i32 %add.i.i33, ptr %d_cur.i.i, align 8, !dbg !307
  br label %x264_put_byte.exit51, !dbg !308

x264_put_byte.exit51:                             ; preds = %while.end.i.i45, %if.end7.i.i38
  %15 = phi i32 [ %.pre73, %while.end.i.i45 ], [ %add.i.i33, %if.end7.i.i38 ], !dbg !298
  %conv5 = trunc i32 %val to i8, !dbg !309
    #dbg_value(ptr %c, !137, !DIExpression(), !310)
    #dbg_value(i8 %conv5, !138, !DIExpression(), !310)
    #dbg_value(ptr %c, !140, !DIExpression(), !311)
    #dbg_value(ptr undef, !145, !DIExpression(), !311)
    #dbg_value(i32 1, !146, !DIExpression(), !311)
  %add.i.i53 = add i32 %15, 1, !dbg !312
    #dbg_value(i32 %add.i.i53, !147, !DIExpression(), !311)
  %16 = load i32, ptr %d_max.i.i, align 4, !dbg !313
  %cmp.i.i55 = icmp ugt i32 %add.i.i53, %16, !dbg !314
  br i1 %cmp.i.i55, label %while.cond.i.i61, label %entry.if.end7_crit_edge.i.i56, !dbg !315

entry.if.end7_crit_edge.i.i56:                    ; preds = %x264_put_byte.exit51
  %.pre.i.i57 = load ptr, ptr %c, align 8, !dbg !316
  br label %if.end7.i.i58, !dbg !315

while.cond.i.i61:                                 ; preds = %x264_put_byte.exit51, %while.cond.i.i61
  %dn.0.i.i62 = phi i32 [ %shl.i.i64, %while.cond.i.i61 ], [ 16, %x264_put_byte.exit51 ], !dbg !317
    #dbg_value(i32 %dn.0.i.i62, !151, !DIExpression(), !317)
  %cmp1.i.i63 = icmp ugt i32 %add.i.i53, %dn.0.i.i62, !dbg !318
  %shl.i.i64 = shl i32 %dn.0.i.i62, 1, !dbg !319
    #dbg_value(i32 %shl.i.i64, !151, !DIExpression(), !317)
  br i1 %cmp1.i.i63, label %while.cond.i.i61, label %while.end.i.i65, !dbg !320, !llvm.loop !321

while.end.i.i65:                                  ; preds = %while.cond.i.i61
  %17 = load ptr, ptr %c, align 8, !dbg !323
  %conv.i.i66 = zext i32 %dn.0.i.i62 to i64, !dbg !324
  %call.i.i67 = tail call ptr @realloc(ptr noundef %17, i64 noundef %conv.i.i66) #10, !dbg !325
    #dbg_value(ptr %call.i.i67, !148, !DIExpression(), !317)
  %tobool.not.not.i.i68 = icmp eq ptr %call.i.i67, null, !dbg !326
  br i1 %tobool.not.not.i.i68, label %x264_put_byte.exit71, label %if.end.i.i69, !dbg !327

if.end.i.i69:                                     ; preds = %while.end.i.i65
  store ptr %call.i.i67, ptr %c, align 8, !dbg !328
  store i32 %dn.0.i.i62, ptr %d_max.i.i, align 4, !dbg !329
  %.pre27.i.i70 = load i32, ptr %d_cur.i.i, align 8, !dbg !330
  br label %if.end7.i.i58

if.end7.i.i58:                                    ; preds = %if.end.i.i69, %entry.if.end7_crit_edge.i.i56
  %18 = phi i32 [ %15, %entry.if.end7_crit_edge.i.i56 ], [ %.pre27.i.i70, %if.end.i.i69 ], !dbg !330
  %19 = phi ptr [ %.pre.i.i57, %entry.if.end7_crit_edge.i.i56 ], [ %call.i.i67, %if.end.i.i69 ], !dbg !316
  %idx.ext.i.i59 = zext i32 %18 to i64, !dbg !331
  %add.ptr.i.i60 = getelementptr inbounds i8, ptr %19, i64 %idx.ext.i.i59, !dbg !331
  store i8 %conv5, ptr %add.ptr.i.i60, align 1, !dbg !332
  store i32 %add.i.i53, ptr %d_cur.i.i, align 8, !dbg !333
  br label %x264_put_byte.exit71, !dbg !334

x264_put_byte.exit71:                             ; preds = %while.end.i.i65, %if.end7.i.i58
  ret void, !dbg !335
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_be64(ptr nocapture noundef %c, i64 noundef %val) local_unnamed_addr #1 !dbg !336 {
entry:
    #dbg_value(ptr %c, !340, !DIExpression(), !342)
    #dbg_value(i64 %val, !341, !DIExpression(), !342)
  %shr = lshr i64 %val, 32, !dbg !343
  %conv = trunc nuw i64 %shr to i32, !dbg !344
  tail call void @x264_put_be32(ptr noundef %c, i32 noundef %conv), !dbg !345
  %conv1 = trunc i64 %val to i32, !dbg !346
  tail call void @x264_put_be32(ptr noundef %c, i32 noundef %conv1), !dbg !347
  ret void, !dbg !348
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_be16(ptr nocapture noundef %c, i16 noundef zeroext %val) local_unnamed_addr #1 !dbg !349 {
entry:
    #dbg_value(ptr %c, !355, !DIExpression(), !357)
    #dbg_value(i16 %val, !356, !DIExpression(), !357)
  %0 = lshr i16 %val, 8, !dbg !358
  %conv1 = trunc nuw i16 %0 to i8, !dbg !359
    #dbg_value(ptr %c, !137, !DIExpression(), !360)
    #dbg_value(i8 %conv1, !138, !DIExpression(), !360)
    #dbg_value(ptr %c, !140, !DIExpression(), !362)
    #dbg_value(ptr undef, !145, !DIExpression(), !362)
    #dbg_value(i32 1, !146, !DIExpression(), !362)
  %d_cur.i.i = getelementptr inbounds i8, ptr %c, i64 8, !dbg !364
  %1 = load i32, ptr %d_cur.i.i, align 8, !dbg !364
  %add.i.i = add i32 %1, 1, !dbg !365
    #dbg_value(i32 %add.i.i, !147, !DIExpression(), !362)
  %d_max.i.i = getelementptr inbounds i8, ptr %c, i64 12, !dbg !366
  %2 = load i32, ptr %d_max.i.i, align 4, !dbg !366
  %cmp.i.i = icmp ugt i32 %add.i.i, %2, !dbg !367
  br i1 %cmp.i.i, label %while.cond.i.i, label %entry.if.end7_crit_edge.i.i, !dbg !368

entry.if.end7_crit_edge.i.i:                      ; preds = %entry
  %.pre.i.i = load ptr, ptr %c, align 8, !dbg !369
  br label %if.end7.i.i, !dbg !368

while.cond.i.i:                                   ; preds = %entry, %while.cond.i.i
  %dn.0.i.i = phi i32 [ %shl.i.i, %while.cond.i.i ], [ 16, %entry ], !dbg !370
    #dbg_value(i32 %dn.0.i.i, !151, !DIExpression(), !370)
  %cmp1.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i, !dbg !371
  %shl.i.i = shl i32 %dn.0.i.i, 1, !dbg !372
    #dbg_value(i32 %shl.i.i, !151, !DIExpression(), !370)
  br i1 %cmp1.i.i, label %while.cond.i.i, label %while.end.i.i, !dbg !373, !llvm.loop !374

while.end.i.i:                                    ; preds = %while.cond.i.i
  %3 = load ptr, ptr %c, align 8, !dbg !376
  %conv.i.i = zext i32 %dn.0.i.i to i64, !dbg !377
  %call.i.i = tail call ptr @realloc(ptr noundef %3, i64 noundef %conv.i.i) #10, !dbg !378
    #dbg_value(ptr %call.i.i, !148, !DIExpression(), !370)
  %tobool.not.not.i.i = icmp eq ptr %call.i.i, null, !dbg !379
  %.pre = load i32, ptr %d_cur.i.i, align 8, !dbg !380
  br i1 %tobool.not.not.i.i, label %x264_put_byte.exit, label %if.end.i.i, !dbg !383

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %c, align 8, !dbg !384
  store i32 %dn.0.i.i, ptr %d_max.i.i, align 4, !dbg !385
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i, %entry.if.end7_crit_edge.i.i
  %4 = phi i32 [ %1, %entry.if.end7_crit_edge.i.i ], [ %.pre, %if.end.i.i ], !dbg !386
  %5 = phi ptr [ %.pre.i.i, %entry.if.end7_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ], !dbg !369
  %idx.ext.i.i = zext i32 %4 to i64, !dbg !387
  %add.ptr.i.i = getelementptr inbounds i8, ptr %5, i64 %idx.ext.i.i, !dbg !387
  store i8 %conv1, ptr %add.ptr.i.i, align 1, !dbg !388
  store i32 %add.i.i, ptr %d_cur.i.i, align 8, !dbg !389
  br label %x264_put_byte.exit, !dbg !390

x264_put_byte.exit:                               ; preds = %while.end.i.i, %if.end7.i.i
  %6 = phi i32 [ %.pre, %while.end.i.i ], [ %add.i.i, %if.end7.i.i ], !dbg !380
  %conv2 = trunc i16 %val to i8, !dbg !391
    #dbg_value(ptr %c, !137, !DIExpression(), !392)
    #dbg_value(i8 %conv2, !138, !DIExpression(), !392)
    #dbg_value(ptr %c, !140, !DIExpression(), !393)
    #dbg_value(ptr undef, !145, !DIExpression(), !393)
    #dbg_value(i32 1, !146, !DIExpression(), !393)
  %add.i.i6 = add i32 %6, 1, !dbg !394
    #dbg_value(i32 %add.i.i6, !147, !DIExpression(), !393)
  %7 = load i32, ptr %d_max.i.i, align 4, !dbg !395
  %cmp.i.i8 = icmp ugt i32 %add.i.i6, %7, !dbg !396
  br i1 %cmp.i.i8, label %while.cond.i.i14, label %entry.if.end7_crit_edge.i.i9, !dbg !397

entry.if.end7_crit_edge.i.i9:                     ; preds = %x264_put_byte.exit
  %.pre.i.i10 = load ptr, ptr %c, align 8, !dbg !398
  br label %if.end7.i.i11, !dbg !397

while.cond.i.i14:                                 ; preds = %x264_put_byte.exit, %while.cond.i.i14
  %dn.0.i.i15 = phi i32 [ %shl.i.i17, %while.cond.i.i14 ], [ 16, %x264_put_byte.exit ], !dbg !399
    #dbg_value(i32 %dn.0.i.i15, !151, !DIExpression(), !399)
  %cmp1.i.i16 = icmp ugt i32 %add.i.i6, %dn.0.i.i15, !dbg !400
  %shl.i.i17 = shl i32 %dn.0.i.i15, 1, !dbg !401
    #dbg_value(i32 %shl.i.i17, !151, !DIExpression(), !399)
  br i1 %cmp1.i.i16, label %while.cond.i.i14, label %while.end.i.i18, !dbg !402, !llvm.loop !403

while.end.i.i18:                                  ; preds = %while.cond.i.i14
  %8 = load ptr, ptr %c, align 8, !dbg !405
  %conv.i.i19 = zext i32 %dn.0.i.i15 to i64, !dbg !406
  %call.i.i20 = tail call ptr @realloc(ptr noundef %8, i64 noundef %conv.i.i19) #10, !dbg !407
    #dbg_value(ptr %call.i.i20, !148, !DIExpression(), !399)
  %tobool.not.not.i.i21 = icmp eq ptr %call.i.i20, null, !dbg !408
  br i1 %tobool.not.not.i.i21, label %x264_put_byte.exit24, label %if.end.i.i22, !dbg !409

if.end.i.i22:                                     ; preds = %while.end.i.i18
  store ptr %call.i.i20, ptr %c, align 8, !dbg !410
  store i32 %dn.0.i.i15, ptr %d_max.i.i, align 4, !dbg !411
  %.pre27.i.i23 = load i32, ptr %d_cur.i.i, align 8, !dbg !412
  br label %if.end7.i.i11

if.end7.i.i11:                                    ; preds = %if.end.i.i22, %entry.if.end7_crit_edge.i.i9
  %9 = phi i32 [ %6, %entry.if.end7_crit_edge.i.i9 ], [ %.pre27.i.i23, %if.end.i.i22 ], !dbg !412
  %10 = phi ptr [ %.pre.i.i10, %entry.if.end7_crit_edge.i.i9 ], [ %call.i.i20, %if.end.i.i22 ], !dbg !398
  %idx.ext.i.i12 = zext i32 %9 to i64, !dbg !413
  %add.ptr.i.i13 = getelementptr inbounds i8, ptr %10, i64 %idx.ext.i.i12, !dbg !413
  store i8 %conv2, ptr %add.ptr.i.i13, align 1, !dbg !414
  store i32 %add.i.i6, ptr %d_cur.i.i, align 8, !dbg !415
  br label %x264_put_byte.exit24, !dbg !416

x264_put_byte.exit24:                             ; preds = %while.end.i.i18, %if.end7.i.i11
  ret void, !dbg !417
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_be24(ptr nocapture noundef %c, i32 noundef %val) local_unnamed_addr #1 !dbg !418 {
entry:
    #dbg_value(ptr %c, !420, !DIExpression(), !422)
    #dbg_value(i32 %val, !421, !DIExpression(), !422)
  %shr = lshr i32 %val, 8, !dbg !423
    #dbg_value(ptr %c, !355, !DIExpression(), !424)
    #dbg_value(i32 %shr, !356, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !424)
  %0 = lshr i32 %val, 16, !dbg !426
  %conv1.i = trunc i32 %0 to i8, !dbg !426
    #dbg_value(ptr %c, !137, !DIExpression(), !427)
    #dbg_value(i8 %conv1.i, !138, !DIExpression(), !427)
    #dbg_value(ptr %c, !140, !DIExpression(), !429)
    #dbg_value(ptr undef, !145, !DIExpression(), !429)
    #dbg_value(i32 1, !146, !DIExpression(), !429)
  %d_cur.i.i.i = getelementptr inbounds i8, ptr %c, i64 8, !dbg !431
  %1 = load i32, ptr %d_cur.i.i.i, align 8, !dbg !431
  %add.i.i.i = add i32 %1, 1, !dbg !432
    #dbg_value(i32 %add.i.i.i, !147, !DIExpression(), !429)
  %d_max.i.i.i = getelementptr inbounds i8, ptr %c, i64 12, !dbg !433
  %2 = load i32, ptr %d_max.i.i.i, align 4, !dbg !433
  %cmp.i.i.i = icmp ugt i32 %add.i.i.i, %2, !dbg !434
  br i1 %cmp.i.i.i, label %while.cond.i.i.i, label %entry.if.end7_crit_edge.i.i.i, !dbg !435

entry.if.end7_crit_edge.i.i.i:                    ; preds = %entry
  %.pre.i.i.i = load ptr, ptr %c, align 8, !dbg !436
  br label %if.end7.i.i.i, !dbg !435

while.cond.i.i.i:                                 ; preds = %entry, %while.cond.i.i.i
  %dn.0.i.i.i = phi i32 [ %shl.i.i.i, %while.cond.i.i.i ], [ 16, %entry ], !dbg !437
    #dbg_value(i32 %dn.0.i.i.i, !151, !DIExpression(), !437)
  %cmp1.i.i.i = icmp ugt i32 %add.i.i.i, %dn.0.i.i.i, !dbg !438
  %shl.i.i.i = shl i32 %dn.0.i.i.i, 1, !dbg !439
    #dbg_value(i32 %shl.i.i.i, !151, !DIExpression(), !437)
  br i1 %cmp1.i.i.i, label %while.cond.i.i.i, label %while.end.i.i.i, !dbg !440, !llvm.loop !441

while.end.i.i.i:                                  ; preds = %while.cond.i.i.i
  %3 = load ptr, ptr %c, align 8, !dbg !443
  %conv.i.i.i = zext i32 %dn.0.i.i.i to i64, !dbg !444
  %call.i.i.i = tail call ptr @realloc(ptr noundef %3, i64 noundef %conv.i.i.i) #10, !dbg !445
    #dbg_value(ptr %call.i.i.i, !148, !DIExpression(), !437)
  %tobool.not.not.i.i.i = icmp eq ptr %call.i.i.i, null, !dbg !446
  %.pre.i = load i32, ptr %d_cur.i.i.i, align 8, !dbg !447
  br i1 %tobool.not.not.i.i.i, label %x264_put_byte.exit.i, label %if.end.i.i.i, !dbg !450

if.end.i.i.i:                                     ; preds = %while.end.i.i.i
  store ptr %call.i.i.i, ptr %c, align 8, !dbg !451
  store i32 %dn.0.i.i.i, ptr %d_max.i.i.i, align 4, !dbg !452
  br label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %if.end.i.i.i, %entry.if.end7_crit_edge.i.i.i
  %4 = phi i32 [ %1, %entry.if.end7_crit_edge.i.i.i ], [ %.pre.i, %if.end.i.i.i ], !dbg !453
  %5 = phi ptr [ %.pre.i.i.i, %entry.if.end7_crit_edge.i.i.i ], [ %call.i.i.i, %if.end.i.i.i ], !dbg !436
  %idx.ext.i.i.i = zext i32 %4 to i64, !dbg !454
  %add.ptr.i.i.i = getelementptr inbounds i8, ptr %5, i64 %idx.ext.i.i.i, !dbg !454
  store i8 %conv1.i, ptr %add.ptr.i.i.i, align 1, !dbg !455
  store i32 %add.i.i.i, ptr %d_cur.i.i.i, align 8, !dbg !456
  br label %x264_put_byte.exit.i, !dbg !457

x264_put_byte.exit.i:                             ; preds = %if.end7.i.i.i, %while.end.i.i.i
  %6 = phi i32 [ %.pre.i, %while.end.i.i.i ], [ %add.i.i.i, %if.end7.i.i.i ], !dbg !447
  %conv2.i = trunc i32 %shr to i8, !dbg !458
    #dbg_value(ptr %c, !137, !DIExpression(), !459)
    #dbg_value(i8 %conv2.i, !138, !DIExpression(), !459)
    #dbg_value(ptr %c, !140, !DIExpression(), !460)
    #dbg_value(ptr undef, !145, !DIExpression(), !460)
    #dbg_value(i32 1, !146, !DIExpression(), !460)
  %add.i.i6.i = add i32 %6, 1, !dbg !461
    #dbg_value(i32 %add.i.i6.i, !147, !DIExpression(), !460)
  %7 = load i32, ptr %d_max.i.i.i, align 4, !dbg !462
  %cmp.i.i8.i = icmp ugt i32 %add.i.i6.i, %7, !dbg !463
  br i1 %cmp.i.i8.i, label %while.cond.i.i14.i, label %entry.if.end7_crit_edge.i.i9.i, !dbg !464

entry.if.end7_crit_edge.i.i9.i:                   ; preds = %x264_put_byte.exit.i
  %.pre.i.i10.i = load ptr, ptr %c, align 8, !dbg !465
  br label %if.end7.i.i11.i, !dbg !464

while.cond.i.i14.i:                               ; preds = %x264_put_byte.exit.i, %while.cond.i.i14.i
  %dn.0.i.i15.i = phi i32 [ %shl.i.i17.i, %while.cond.i.i14.i ], [ 16, %x264_put_byte.exit.i ], !dbg !466
    #dbg_value(i32 %dn.0.i.i15.i, !151, !DIExpression(), !466)
  %cmp1.i.i16.i = icmp ugt i32 %add.i.i6.i, %dn.0.i.i15.i, !dbg !467
  %shl.i.i17.i = shl i32 %dn.0.i.i15.i, 1, !dbg !468
    #dbg_value(i32 %shl.i.i17.i, !151, !DIExpression(), !466)
  br i1 %cmp1.i.i16.i, label %while.cond.i.i14.i, label %while.end.i.i18.i, !dbg !469, !llvm.loop !470

while.end.i.i18.i:                                ; preds = %while.cond.i.i14.i
  %8 = load ptr, ptr %c, align 8, !dbg !472
  %conv.i.i19.i = zext i32 %dn.0.i.i15.i to i64, !dbg !473
  %call.i.i20.i = tail call ptr @realloc(ptr noundef %8, i64 noundef %conv.i.i19.i) #10, !dbg !474
    #dbg_value(ptr %call.i.i20.i, !148, !DIExpression(), !466)
  %tobool.not.not.i.i21.i = icmp eq ptr %call.i.i20.i, null, !dbg !475
  %.pre = load i32, ptr %d_cur.i.i.i, align 8, !dbg !476
  br i1 %tobool.not.not.i.i21.i, label %x264_put_be16.exit, label %if.end.i.i22.i, !dbg !479

if.end.i.i22.i:                                   ; preds = %while.end.i.i18.i
  store ptr %call.i.i20.i, ptr %c, align 8, !dbg !480
  store i32 %dn.0.i.i15.i, ptr %d_max.i.i.i, align 4, !dbg !481
  br label %if.end7.i.i11.i

if.end7.i.i11.i:                                  ; preds = %if.end.i.i22.i, %entry.if.end7_crit_edge.i.i9.i
  %9 = phi i32 [ %6, %entry.if.end7_crit_edge.i.i9.i ], [ %.pre, %if.end.i.i22.i ], !dbg !482
  %10 = phi ptr [ %.pre.i.i10.i, %entry.if.end7_crit_edge.i.i9.i ], [ %call.i.i20.i, %if.end.i.i22.i ], !dbg !465
  %idx.ext.i.i12.i = zext i32 %9 to i64, !dbg !483
  %add.ptr.i.i13.i = getelementptr inbounds i8, ptr %10, i64 %idx.ext.i.i12.i, !dbg !483
  store i8 %conv2.i, ptr %add.ptr.i.i13.i, align 1, !dbg !484
  store i32 %add.i.i6.i, ptr %d_cur.i.i.i, align 8, !dbg !485
  br label %x264_put_be16.exit, !dbg !486

x264_put_be16.exit:                               ; preds = %while.end.i.i18.i, %if.end7.i.i11.i
  %11 = phi i32 [ %.pre, %while.end.i.i18.i ], [ %add.i.i6.i, %if.end7.i.i11.i ], !dbg !476
  %conv1 = trunc i32 %val to i8, !dbg !487
    #dbg_value(ptr %c, !137, !DIExpression(), !488)
    #dbg_value(i8 %conv1, !138, !DIExpression(), !488)
    #dbg_value(ptr %c, !140, !DIExpression(), !489)
    #dbg_value(ptr undef, !145, !DIExpression(), !489)
    #dbg_value(i32 1, !146, !DIExpression(), !489)
  %add.i.i = add i32 %11, 1, !dbg !490
    #dbg_value(i32 %add.i.i, !147, !DIExpression(), !489)
  %12 = load i32, ptr %d_max.i.i.i, align 4, !dbg !491
  %cmp.i.i = icmp ugt i32 %add.i.i, %12, !dbg !492
  br i1 %cmp.i.i, label %while.cond.i.i, label %entry.if.end7_crit_edge.i.i, !dbg !493

entry.if.end7_crit_edge.i.i:                      ; preds = %x264_put_be16.exit
  %.pre.i.i = load ptr, ptr %c, align 8, !dbg !494
  br label %if.end7.i.i, !dbg !493

while.cond.i.i:                                   ; preds = %x264_put_be16.exit, %while.cond.i.i
  %dn.0.i.i = phi i32 [ %shl.i.i, %while.cond.i.i ], [ 16, %x264_put_be16.exit ], !dbg !495
    #dbg_value(i32 %dn.0.i.i, !151, !DIExpression(), !495)
  %cmp1.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i, !dbg !496
  %shl.i.i = shl i32 %dn.0.i.i, 1, !dbg !497
    #dbg_value(i32 %shl.i.i, !151, !DIExpression(), !495)
  br i1 %cmp1.i.i, label %while.cond.i.i, label %while.end.i.i, !dbg !498, !llvm.loop !499

while.end.i.i:                                    ; preds = %while.cond.i.i
  %13 = load ptr, ptr %c, align 8, !dbg !501
  %conv.i.i = zext i32 %dn.0.i.i to i64, !dbg !502
  %call.i.i = tail call ptr @realloc(ptr noundef %13, i64 noundef %conv.i.i) #10, !dbg !503
    #dbg_value(ptr %call.i.i, !148, !DIExpression(), !495)
  %tobool.not.not.i.i = icmp eq ptr %call.i.i, null, !dbg !504
  br i1 %tobool.not.not.i.i, label %x264_put_byte.exit, label %if.end.i.i, !dbg !505

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %c, align 8, !dbg !506
  store i32 %dn.0.i.i, ptr %d_max.i.i.i, align 4, !dbg !507
  %.pre27.i.i = load i32, ptr %d_cur.i.i.i, align 8, !dbg !508
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i, %entry.if.end7_crit_edge.i.i
  %14 = phi i32 [ %11, %entry.if.end7_crit_edge.i.i ], [ %.pre27.i.i, %if.end.i.i ], !dbg !508
  %15 = phi ptr [ %.pre.i.i, %entry.if.end7_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ], !dbg !494
  %idx.ext.i.i = zext i32 %14 to i64, !dbg !509
  %add.ptr.i.i = getelementptr inbounds i8, ptr %15, i64 %idx.ext.i.i, !dbg !509
  store i8 %conv1, ptr %add.ptr.i.i, align 1, !dbg !510
  store i32 %add.i.i, ptr %d_cur.i.i.i, align 8, !dbg !511
  br label %x264_put_byte.exit, !dbg !512

x264_put_byte.exit:                               ; preds = %while.end.i.i, %if.end7.i.i
  ret void, !dbg !513
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_tag(ptr nocapture noundef %c, ptr nocapture noundef readonly %tag) local_unnamed_addr #1 !dbg !514 {
entry:
    #dbg_value(ptr %c, !520, !DIExpression(), !522)
    #dbg_value(ptr %tag, !521, !DIExpression(), !522)
  %0 = load i8, ptr %tag, align 1, !dbg !523
  %tobool.not2 = icmp eq i8 %0, 0, !dbg !524
  br i1 %tobool.not2, label %while.end, label %while.body.lr.ph, !dbg !524

while.body.lr.ph:                                 ; preds = %entry
  %d_cur.i.i = getelementptr inbounds i8, ptr %c, i64 8
  %d_max.i.i = getelementptr inbounds i8, ptr %c, i64 12
  br label %while.body, !dbg !524

while.body:                                       ; preds = %while.body.lr.ph, %x264_put_byte.exit
  %1 = phi i8 [ %0, %while.body.lr.ph ], [ %7, %x264_put_byte.exit ]
  %tag.addr.03 = phi ptr [ %tag, %while.body.lr.ph ], [ %incdec.ptr, %x264_put_byte.exit ]
    #dbg_value(ptr %tag.addr.03, !521, !DIExpression(), !522)
  %incdec.ptr = getelementptr inbounds i8, ptr %tag.addr.03, i64 1, !dbg !525
    #dbg_value(ptr %incdec.ptr, !521, !DIExpression(), !522)
    #dbg_value(ptr %c, !137, !DIExpression(), !526)
    #dbg_value(i8 %1, !138, !DIExpression(), !526)
    #dbg_value(ptr %c, !140, !DIExpression(), !528)
    #dbg_value(ptr undef, !145, !DIExpression(), !528)
    #dbg_value(i32 1, !146, !DIExpression(), !528)
  %2 = load i32, ptr %d_cur.i.i, align 8, !dbg !530
  %add.i.i = add i32 %2, 1, !dbg !531
    #dbg_value(i32 %add.i.i, !147, !DIExpression(), !528)
  %3 = load i32, ptr %d_max.i.i, align 4, !dbg !532
  %cmp.i.i = icmp ugt i32 %add.i.i, %3, !dbg !533
  br i1 %cmp.i.i, label %while.cond.i.i, label %entry.if.end7_crit_edge.i.i, !dbg !534

entry.if.end7_crit_edge.i.i:                      ; preds = %while.body
  %.pre.i.i = load ptr, ptr %c, align 8, !dbg !535
  br label %if.end7.i.i, !dbg !534

while.cond.i.i:                                   ; preds = %while.body, %while.cond.i.i
  %dn.0.i.i = phi i32 [ %shl.i.i, %while.cond.i.i ], [ 16, %while.body ], !dbg !536
    #dbg_value(i32 %dn.0.i.i, !151, !DIExpression(), !536)
  %cmp1.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i, !dbg !537
  %shl.i.i = shl i32 %dn.0.i.i, 1, !dbg !538
    #dbg_value(i32 %shl.i.i, !151, !DIExpression(), !536)
  br i1 %cmp1.i.i, label %while.cond.i.i, label %while.end.i.i, !dbg !539, !llvm.loop !540

while.end.i.i:                                    ; preds = %while.cond.i.i
  %4 = load ptr, ptr %c, align 8, !dbg !542
  %conv.i.i = zext i32 %dn.0.i.i to i64, !dbg !543
  %call.i.i = tail call ptr @realloc(ptr noundef %4, i64 noundef %conv.i.i) #10, !dbg !544
    #dbg_value(ptr %call.i.i, !148, !DIExpression(), !536)
  %tobool.not.not.i.i = icmp eq ptr %call.i.i, null, !dbg !545
  br i1 %tobool.not.not.i.i, label %x264_put_byte.exit, label %if.end.i.i, !dbg !546

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %c, align 8, !dbg !547
  store i32 %dn.0.i.i, ptr %d_max.i.i, align 4, !dbg !548
  %.pre27.i.i = load i32, ptr %d_cur.i.i, align 8, !dbg !549
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i, %entry.if.end7_crit_edge.i.i
  %5 = phi i32 [ %2, %entry.if.end7_crit_edge.i.i ], [ %.pre27.i.i, %if.end.i.i ], !dbg !549
  %6 = phi ptr [ %.pre.i.i, %entry.if.end7_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ], !dbg !535
  %idx.ext.i.i = zext i32 %5 to i64, !dbg !550
  %add.ptr.i.i = getelementptr inbounds i8, ptr %6, i64 %idx.ext.i.i, !dbg !550
  store i8 %1, ptr %add.ptr.i.i, align 1, !dbg !551
  store i32 %add.i.i, ptr %d_cur.i.i, align 8, !dbg !552
  br label %x264_put_byte.exit, !dbg !553

x264_put_byte.exit:                               ; preds = %while.end.i.i, %if.end7.i.i
    #dbg_value(ptr %incdec.ptr, !521, !DIExpression(), !522)
  %7 = load i8, ptr %incdec.ptr, align 1, !dbg !523
  %tobool.not = icmp eq i8 %7, 0, !dbg !524
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !524, !llvm.loop !554

while.end:                                        ; preds = %x264_put_byte.exit, %entry
  ret void, !dbg !556
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_amf_string(ptr nocapture noundef %c, ptr nocapture noundef readonly %str) local_unnamed_addr #1 !dbg !557 {
entry:
    #dbg_value(ptr %c, !559, !DIExpression(), !562)
    #dbg_value(ptr %str, !560, !DIExpression(), !562)
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #11, !dbg !563
    #dbg_value(i64 %call, !561, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !562)
    #dbg_value(ptr %c, !355, !DIExpression(), !564)
    #dbg_value(i64 %call, !356, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !564)
  %0 = lshr i64 %call, 8, !dbg !566
  %conv1.i = trunc i64 %0 to i8, !dbg !566
    #dbg_value(ptr %c, !137, !DIExpression(), !567)
    #dbg_value(i8 %conv1.i, !138, !DIExpression(), !567)
    #dbg_value(ptr %c, !140, !DIExpression(), !569)
    #dbg_value(ptr undef, !145, !DIExpression(), !569)
    #dbg_value(i32 1, !146, !DIExpression(), !569)
  %d_cur.i.i.i = getelementptr inbounds i8, ptr %c, i64 8, !dbg !571
  %1 = load i32, ptr %d_cur.i.i.i, align 8, !dbg !571
  %add.i.i.i = add i32 %1, 1, !dbg !572
    #dbg_value(i32 %add.i.i.i, !147, !DIExpression(), !569)
  %d_max.i.i.i = getelementptr inbounds i8, ptr %c, i64 12, !dbg !573
  %2 = load i32, ptr %d_max.i.i.i, align 4, !dbg !573
  %cmp.i.i.i = icmp ugt i32 %add.i.i.i, %2, !dbg !574
  br i1 %cmp.i.i.i, label %while.cond.i.i.i, label %entry.if.end7_crit_edge.i.i.i, !dbg !575

entry.if.end7_crit_edge.i.i.i:                    ; preds = %entry
  %.pre.i.i.i = load ptr, ptr %c, align 8, !dbg !576
  br label %if.end7.i.i.i, !dbg !575

while.cond.i.i.i:                                 ; preds = %entry, %while.cond.i.i.i
  %dn.0.i.i.i = phi i32 [ %shl.i.i.i, %while.cond.i.i.i ], [ 16, %entry ], !dbg !577
    #dbg_value(i32 %dn.0.i.i.i, !151, !DIExpression(), !577)
  %cmp1.i.i.i = icmp ugt i32 %add.i.i.i, %dn.0.i.i.i, !dbg !578
  %shl.i.i.i = shl i32 %dn.0.i.i.i, 1, !dbg !579
    #dbg_value(i32 %shl.i.i.i, !151, !DIExpression(), !577)
  br i1 %cmp1.i.i.i, label %while.cond.i.i.i, label %while.end.i.i.i, !dbg !580, !llvm.loop !581

while.end.i.i.i:                                  ; preds = %while.cond.i.i.i
  %3 = load ptr, ptr %c, align 8, !dbg !583
  %conv.i.i.i = zext i32 %dn.0.i.i.i to i64, !dbg !584
  %call.i.i.i = tail call ptr @realloc(ptr noundef %3, i64 noundef %conv.i.i.i) #10, !dbg !585
    #dbg_value(ptr %call.i.i.i, !148, !DIExpression(), !577)
  %tobool.not.not.i.i.i = icmp eq ptr %call.i.i.i, null, !dbg !586
  %.pre.i = load i32, ptr %d_cur.i.i.i, align 8, !dbg !587
  br i1 %tobool.not.not.i.i.i, label %x264_put_byte.exit.i, label %if.end.i.i.i, !dbg !590

if.end.i.i.i:                                     ; preds = %while.end.i.i.i
  store ptr %call.i.i.i, ptr %c, align 8, !dbg !591
  store i32 %dn.0.i.i.i, ptr %d_max.i.i.i, align 4, !dbg !592
  br label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %if.end.i.i.i, %entry.if.end7_crit_edge.i.i.i
  %4 = phi i32 [ %1, %entry.if.end7_crit_edge.i.i.i ], [ %.pre.i, %if.end.i.i.i ], !dbg !593
  %5 = phi ptr [ %.pre.i.i.i, %entry.if.end7_crit_edge.i.i.i ], [ %call.i.i.i, %if.end.i.i.i ], !dbg !576
  %idx.ext.i.i.i = zext i32 %4 to i64, !dbg !594
  %add.ptr.i.i.i = getelementptr inbounds i8, ptr %5, i64 %idx.ext.i.i.i, !dbg !594
  store i8 %conv1.i, ptr %add.ptr.i.i.i, align 1, !dbg !595
  store i32 %add.i.i.i, ptr %d_cur.i.i.i, align 8, !dbg !596
  br label %x264_put_byte.exit.i, !dbg !597

x264_put_byte.exit.i:                             ; preds = %if.end7.i.i.i, %while.end.i.i.i
  %6 = phi i32 [ %.pre.i, %while.end.i.i.i ], [ %add.i.i.i, %if.end7.i.i.i ], !dbg !587
  %conv2.i = trunc i64 %call to i8, !dbg !598
    #dbg_value(ptr %c, !137, !DIExpression(), !599)
    #dbg_value(i8 %conv2.i, !138, !DIExpression(), !599)
    #dbg_value(ptr %c, !140, !DIExpression(), !600)
    #dbg_value(ptr undef, !145, !DIExpression(), !600)
    #dbg_value(i32 1, !146, !DIExpression(), !600)
  %add.i.i6.i = add i32 %6, 1, !dbg !601
    #dbg_value(i32 %add.i.i6.i, !147, !DIExpression(), !600)
  %7 = load i32, ptr %d_max.i.i.i, align 4, !dbg !602
  %cmp.i.i8.i = icmp ugt i32 %add.i.i6.i, %7, !dbg !603
  br i1 %cmp.i.i8.i, label %while.cond.i.i14.i, label %entry.if.end7_crit_edge.i.i9.i, !dbg !604

entry.if.end7_crit_edge.i.i9.i:                   ; preds = %x264_put_byte.exit.i
  %.pre.i.i10.i = load ptr, ptr %c, align 8, !dbg !605
  br label %if.end7.i.i11.i, !dbg !604

while.cond.i.i14.i:                               ; preds = %x264_put_byte.exit.i, %while.cond.i.i14.i
  %dn.0.i.i15.i = phi i32 [ %shl.i.i17.i, %while.cond.i.i14.i ], [ 16, %x264_put_byte.exit.i ], !dbg !606
    #dbg_value(i32 %dn.0.i.i15.i, !151, !DIExpression(), !606)
  %cmp1.i.i16.i = icmp ugt i32 %add.i.i6.i, %dn.0.i.i15.i, !dbg !607
  %shl.i.i17.i = shl i32 %dn.0.i.i15.i, 1, !dbg !608
    #dbg_value(i32 %shl.i.i17.i, !151, !DIExpression(), !606)
  br i1 %cmp1.i.i16.i, label %while.cond.i.i14.i, label %while.end.i.i18.i, !dbg !609, !llvm.loop !610

while.end.i.i18.i:                                ; preds = %while.cond.i.i14.i
  %8 = load ptr, ptr %c, align 8, !dbg !612
  %conv.i.i19.i = zext i32 %dn.0.i.i15.i to i64, !dbg !613
  %call.i.i20.i = tail call ptr @realloc(ptr noundef %8, i64 noundef %conv.i.i19.i) #10, !dbg !614
    #dbg_value(ptr %call.i.i20.i, !148, !DIExpression(), !606)
  %tobool.not.not.i.i21.i = icmp eq ptr %call.i.i20.i, null, !dbg !615
  %.pre = load i32, ptr %d_cur.i.i.i, align 8, !dbg !616
  br i1 %tobool.not.not.i.i21.i, label %x264_put_be16.exit, label %if.end.i.i22.i, !dbg !618

if.end.i.i22.i:                                   ; preds = %while.end.i.i18.i
  store ptr %call.i.i20.i, ptr %c, align 8, !dbg !619
  store i32 %dn.0.i.i15.i, ptr %d_max.i.i.i, align 4, !dbg !620
  br label %if.end7.i.i11.i

if.end7.i.i11.i:                                  ; preds = %if.end.i.i22.i, %entry.if.end7_crit_edge.i.i9.i
  %9 = phi i32 [ %6, %entry.if.end7_crit_edge.i.i9.i ], [ %.pre, %if.end.i.i22.i ], !dbg !621
  %10 = phi ptr [ %.pre.i.i10.i, %entry.if.end7_crit_edge.i.i9.i ], [ %call.i.i20.i, %if.end.i.i22.i ], !dbg !605
  %idx.ext.i.i12.i = zext i32 %9 to i64, !dbg !622
  %add.ptr.i.i13.i = getelementptr inbounds i8, ptr %10, i64 %idx.ext.i.i12.i, !dbg !622
  store i8 %conv2.i, ptr %add.ptr.i.i13.i, align 1, !dbg !623
  store i32 %add.i.i6.i, ptr %d_cur.i.i.i, align 8, !dbg !624
  br label %x264_put_be16.exit, !dbg !625

x264_put_be16.exit:                               ; preds = %while.end.i.i18.i, %if.end7.i.i11.i
  %11 = phi i32 [ %.pre, %while.end.i.i18.i ], [ %add.i.i6.i, %if.end7.i.i11.i ], !dbg !616
  %12 = trunc i64 %call to i32, !dbg !626
  %conv1 = and i32 %12, 65535, !dbg !626
    #dbg_value(ptr %c, !140, !DIExpression(), !627)
    #dbg_value(ptr %str, !145, !DIExpression(), !627)
    #dbg_value(i32 %conv1, !146, !DIExpression(), !627)
  %add.i = add i32 %11, %conv1, !dbg !628
    #dbg_value(i32 %add.i, !147, !DIExpression(), !627)
  %13 = load i32, ptr %d_max.i.i.i, align 4, !dbg !629
  %cmp.i = icmp ugt i32 %add.i, %13, !dbg !630
  br i1 %cmp.i, label %while.cond.i, label %entry.if.end7_crit_edge.i, !dbg !631

entry.if.end7_crit_edge.i:                        ; preds = %x264_put_be16.exit
  %.pre.i6 = load ptr, ptr %c, align 8, !dbg !632
  br label %if.end7.i, !dbg !631

while.cond.i:                                     ; preds = %x264_put_be16.exit, %while.cond.i
  %dn.0.i = phi i32 [ %shl.i, %while.cond.i ], [ 16, %x264_put_be16.exit ], !dbg !633
    #dbg_value(i32 %dn.0.i, !151, !DIExpression(), !633)
  %cmp1.i = icmp ugt i32 %add.i, %dn.0.i, !dbg !634
  %shl.i = shl i32 %dn.0.i, 1, !dbg !635
    #dbg_value(i32 %shl.i, !151, !DIExpression(), !633)
  br i1 %cmp1.i, label %while.cond.i, label %while.end.i, !dbg !636, !llvm.loop !637

while.end.i:                                      ; preds = %while.cond.i
  %14 = load ptr, ptr %c, align 8, !dbg !639
  %conv.i = zext i32 %dn.0.i to i64, !dbg !640
  %call.i = tail call ptr @realloc(ptr noundef %14, i64 noundef %conv.i) #10, !dbg !641
    #dbg_value(ptr %call.i, !148, !DIExpression(), !633)
  %tobool.not.not.i = icmp eq ptr %call.i, null, !dbg !642
  br i1 %tobool.not.not.i, label %flv_append_data.exit, label %if.end.i, !dbg !643

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %c, align 8, !dbg !644
  store i32 %dn.0.i, ptr %d_max.i.i.i, align 4, !dbg !645
  %.pre27.i = load i32, ptr %d_cur.i.i.i, align 8, !dbg !646
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i, %entry.if.end7_crit_edge.i
  %15 = phi i32 [ %11, %entry.if.end7_crit_edge.i ], [ %.pre27.i, %if.end.i ], !dbg !646
  %16 = phi ptr [ %.pre.i6, %entry.if.end7_crit_edge.i ], [ %call.i, %if.end.i ], !dbg !632
  %idx.ext.i = zext i32 %15 to i64, !dbg !647
  %add.ptr.i = getelementptr inbounds i8, ptr %16, i64 %idx.ext.i, !dbg !647
  %conv10.i = and i64 %call, 65535, !dbg !648
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i, ptr readonly align 1 %str, i64 %conv10.i, i1 false), !dbg !649
  store i32 %add.i, ptr %d_cur.i.i.i, align 8, !dbg !650
  br label %flv_append_data.exit, !dbg !651

flv_append_data.exit:                             ; preds = %while.end.i, %if.end7.i
  ret void, !dbg !652
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !653 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_amf_double(ptr nocapture noundef %c, double noundef %d) local_unnamed_addr #1 !dbg !657 {
entry:
    #dbg_value(ptr %c, !661, !DIExpression(), !663)
    #dbg_value(double %d, !662, !DIExpression(), !663)
    #dbg_value(ptr %c, !137, !DIExpression(), !664)
    #dbg_value(i8 0, !138, !DIExpression(), !664)
    #dbg_value(ptr %c, !140, !DIExpression(), !666)
    #dbg_value(ptr undef, !145, !DIExpression(), !666)
    #dbg_value(i32 1, !146, !DIExpression(), !666)
  %d_cur.i.i = getelementptr inbounds i8, ptr %c, i64 8, !dbg !668
  %0 = load i32, ptr %d_cur.i.i, align 8, !dbg !668
  %add.i.i = add i32 %0, 1, !dbg !669
    #dbg_value(i32 %add.i.i, !147, !DIExpression(), !666)
  %d_max.i.i = getelementptr inbounds i8, ptr %c, i64 12, !dbg !670
  %1 = load i32, ptr %d_max.i.i, align 4, !dbg !670
  %cmp.i.i = icmp ugt i32 %add.i.i, %1, !dbg !671
  br i1 %cmp.i.i, label %while.cond.i.i, label %entry.if.end7_crit_edge.i.i, !dbg !672

entry.if.end7_crit_edge.i.i:                      ; preds = %entry
  %.pre.i.i = load ptr, ptr %c, align 8, !dbg !673
  br label %if.end7.i.i, !dbg !672

while.cond.i.i:                                   ; preds = %entry, %while.cond.i.i
  %dn.0.i.i = phi i32 [ %shl.i.i, %while.cond.i.i ], [ 16, %entry ], !dbg !674
    #dbg_value(i32 %dn.0.i.i, !151, !DIExpression(), !674)
  %cmp1.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i, !dbg !675
  %shl.i.i = shl i32 %dn.0.i.i, 1, !dbg !676
    #dbg_value(i32 %shl.i.i, !151, !DIExpression(), !674)
  br i1 %cmp1.i.i, label %while.cond.i.i, label %while.end.i.i, !dbg !677, !llvm.loop !678

while.end.i.i:                                    ; preds = %while.cond.i.i
  %2 = load ptr, ptr %c, align 8, !dbg !680
  %conv.i.i = zext i32 %dn.0.i.i to i64, !dbg !681
  %call.i.i = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv.i.i) #10, !dbg !682
    #dbg_value(ptr %call.i.i, !148, !DIExpression(), !674)
  %tobool.not.not.i.i = icmp eq ptr %call.i.i, null, !dbg !683
  br i1 %tobool.not.not.i.i, label %x264_put_byte.exit, label %if.end.i.i, !dbg !684

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %c, align 8, !dbg !685
  store i32 %dn.0.i.i, ptr %d_max.i.i, align 4, !dbg !686
  %.pre27.i.i = load i32, ptr %d_cur.i.i, align 8, !dbg !687
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i, %entry.if.end7_crit_edge.i.i
  %3 = phi i32 [ %0, %entry.if.end7_crit_edge.i.i ], [ %.pre27.i.i, %if.end.i.i ], !dbg !687
  %4 = phi ptr [ %.pre.i.i, %entry.if.end7_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ], !dbg !673
  %idx.ext.i.i = zext i32 %3 to i64, !dbg !688
  %add.ptr.i.i = getelementptr inbounds i8, ptr %4, i64 %idx.ext.i.i, !dbg !688
  store i8 0, ptr %add.ptr.i.i, align 1, !dbg !689
  store i32 %add.i.i, ptr %d_cur.i.i, align 8, !dbg !690
  br label %x264_put_byte.exit, !dbg !691

x264_put_byte.exit:                               ; preds = %while.end.i.i, %if.end7.i.i
    #dbg_value(double %d, !55, !DIExpression(), !692)
    #dbg_value(double %d, !56, !DIExpression(), !692)
  %5 = bitcast double %d to i64, !dbg !694
    #dbg_value(ptr %c, !340, !DIExpression(), !695)
    #dbg_value(i64 %5, !341, !DIExpression(), !695)
  %shr.i = lshr i64 %5, 32, !dbg !697
  %conv.i = trunc nuw i64 %shr.i to i32, !dbg !698
  tail call void @x264_put_be32(ptr noundef nonnull %c, i32 noundef %conv.i), !dbg !699
  %conv1.i = trunc i64 %5 to i32, !dbg !700
  tail call void @x264_put_be32(ptr noundef nonnull %c, i32 noundef %conv1.i), !dbg !701
  ret void, !dbg !702
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @flv_create_writer(ptr nocapture noundef readonly %filename) local_unnamed_addr #1 !dbg !703 {
entry:
    #dbg_value(ptr %filename, !707, !DIExpression(), !709)
  %calloc = tail call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32), !dbg !710
    #dbg_value(ptr %calloc, !708, !DIExpression(), !709)
  %tobool.not = icmp eq ptr %calloc, null, !dbg !711
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !713

if.end:                                           ; preds = %entry
  %0 = load i8, ptr %filename, align 1
  %.not = icmp eq i8 %0, 45
  br i1 %.not, label %if.end.tail, label %if.else

if.end.tail:                                      ; preds = %if.end
  %1 = getelementptr inbounds i8, ptr %filename, i64 1
  %2 = load i8, ptr %1, align 1
  %3 = icmp eq i8 %2, 0, !dbg !714
  br i1 %3, label %if.then3, label %if.else, !dbg !716

if.then3:                                         ; preds = %if.end.tail
  %4 = load ptr, ptr @stdout, align 8, !dbg !717
  br label %if.end6, !dbg !718

if.else:                                          ; preds = %if.end, %if.end.tail
  %call4 = tail call noalias ptr @fopen64(ptr noundef nonnull %filename, ptr noundef nonnull @.str.1), !dbg !719
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %call4.sink = phi ptr [ %4, %if.then3 ], [ %call4, %if.else ], !dbg !720
  %5 = getelementptr inbounds i8, ptr %calloc, i64 16, !dbg !720
  store ptr %call4.sink, ptr %5, align 8, !dbg !720
  %tobool8.not = icmp eq ptr %call4.sink, null, !dbg !721
  br i1 %tobool8.not, label %if.then9, label %cleanup, !dbg !723

if.then9:                                         ; preds = %if.end6
  tail call void @free(ptr noundef nonnull %calloc) #12, !dbg !724
  br label %cleanup, !dbg !726

cleanup:                                          ; preds = %if.end6, %entry, %if.then9
  %retval.0 = phi ptr [ null, %if.then9 ], [ null, %entry ], [ %calloc, %if.end6 ], !dbg !709
  ret ptr %retval.0, !dbg !727
}

; Function Attrs: nofree nounwind
declare !dbg !728 noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !733 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !737 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @rewrite_amf_be24(ptr nocapture noundef readonly %c, i32 noundef %length, i32 noundef %start) local_unnamed_addr #7 !dbg !740 {
entry:
    #dbg_value(ptr %c, !744, !DIExpression(), !747)
    #dbg_value(i32 %length, !745, !DIExpression(), !747)
    #dbg_value(i32 %start, !746, !DIExpression(), !747)
  %shr = lshr i32 %length, 16, !dbg !748
  %conv = trunc i32 %shr to i8, !dbg !749
  %0 = load ptr, ptr %c, align 8, !dbg !750
  %idx.ext = zext i32 %start to i64, !dbg !751
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %idx.ext, !dbg !751
  store i8 %conv, ptr %add.ptr, align 1, !dbg !752
  %shr2 = lshr i32 %length, 8, !dbg !753
  %conv3 = trunc i32 %shr2 to i8, !dbg !754
  %1 = load ptr, ptr %c, align 8, !dbg !755
  %add.ptr6 = getelementptr inbounds i8, ptr %1, i64 %idx.ext, !dbg !756
  %add.ptr7 = getelementptr inbounds i8, ptr %add.ptr6, i64 1, !dbg !757
  store i8 %conv3, ptr %add.ptr7, align 1, !dbg !758
  %conv9 = trunc i32 %length to i8, !dbg !759
  %2 = load ptr, ptr %c, align 8, !dbg !760
  %add.ptr12 = getelementptr inbounds i8, ptr %2, i64 %idx.ext, !dbg !761
  %add.ptr13 = getelementptr inbounds i8, ptr %add.ptr12, i64 2, !dbg !762
  store i8 %conv9, ptr %add.ptr13, align 1, !dbg !763
  ret void, !dbg !764
}

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 -1, 1) i32 @flv_flush_data(ptr nocapture noundef %c) local_unnamed_addr #8 !dbg !765 {
entry:
    #dbg_value(ptr %c, !769, !DIExpression(), !770)
  %d_cur = getelementptr inbounds i8, ptr %c, i64 8, !dbg !771
  %0 = load i32, ptr %d_cur, align 8, !dbg !771
  %tobool.not = icmp eq i32 %0, 0, !dbg !773
  br i1 %tobool.not, label %return, label %if.end, !dbg !774

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %c, align 8, !dbg !775
  %conv = zext i32 %0 to i64, !dbg !777
  %fp = getelementptr inbounds i8, ptr %c, i64 16, !dbg !778
  %2 = load ptr, ptr %fp, align 8, !dbg !778
  %call = tail call i64 @fwrite(ptr noundef %1, i64 noundef %conv, i64 noundef 1, ptr noundef %2), !dbg !779
  %cmp.not = icmp eq i64 %call, 1, !dbg !780
  br i1 %cmp.not, label %if.end4, label %return, !dbg !781

if.end4:                                          ; preds = %if.end
  %3 = load i32, ptr %d_cur, align 8, !dbg !782
  %conv6 = zext i32 %3 to i64, !dbg !783
  %d_total = getelementptr inbounds i8, ptr %c, i64 24, !dbg !784
  %4 = load i64, ptr %d_total, align 8, !dbg !785
  %add = add i64 %4, %conv6, !dbg !785
  store i64 %add, ptr %d_total, align 8, !dbg !785
  store i32 0, ptr %d_cur, align 8, !dbg !786
  br label %return, !dbg !787

return:                                           ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ 0, %if.end4 ], [ 0, %entry ], [ -1, %if.end ], !dbg !770
  ret i32 %retval.0, !dbg !788
}

; Function Attrs: nofree nounwind
declare !dbg !789 noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #10 = { nounwind allocsize(1) }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "x264_src/output/flv_bytestream.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "754853b2670cdf5b3e2e77d5a393aff1")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 3)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !8, retainedTypes: !26, globals: !33, splitDebugInlining: false, nameTableKind: None)
!8 = !{!9}
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 92, baseType: !11, size: 32, elements: !12)
!10 = !DIFile(filename: "x264_src/output/flv_bytestream.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "7a2361cbd7a5379baf9a3e8d1b18ee49")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!13 = !DIEnumerator(name: "AMF_DATA_TYPE_NUMBER", value: 0)
!14 = !DIEnumerator(name: "AMF_DATA_TYPE_BOOL", value: 1)
!15 = !DIEnumerator(name: "AMF_DATA_TYPE_STRING", value: 2)
!16 = !DIEnumerator(name: "AMF_DATA_TYPE_OBJECT", value: 3)
!17 = !DIEnumerator(name: "AMF_DATA_TYPE_NULL", value: 5)
!18 = !DIEnumerator(name: "AMF_DATA_TYPE_UNDEFINED", value: 6)
!19 = !DIEnumerator(name: "AMF_DATA_TYPE_REFERENCE", value: 7)
!20 = !DIEnumerator(name: "AMF_DATA_TYPE_MIXEDARRAY", value: 8)
!21 = !DIEnumerator(name: "AMF_DATA_TYPE_OBJECT_END", value: 9)
!22 = !DIEnumerator(name: "AMF_DATA_TYPE_ARRAY", value: 10)
!23 = !DIEnumerator(name: "AMF_DATA_TYPE_DATE", value: 11)
!24 = !DIEnumerator(name: "AMF_DATA_TYPE_LONG_STRING", value: 12)
!25 = !DIEnumerator(name: "AMF_DATA_TYPE_UNSUPPORTED", value: 13)
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !29, line: 24, baseType: !30)
!29 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !31, line: 38, baseType: !32)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !{!34, !0}
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 101, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 2)
!39 = !{i32 7, !"Dwarf Version", i32 5}
!40 = !{i32 2, !"Debug Info Version", i32 3}
!41 = !{i32 1, !"wchar_size", i32 4}
!42 = !{i32 8, !"PIC Level", i32 2}
!43 = !{i32 7, !"PIE Level", i32 2}
!44 = !{i32 7, !"uwtable", i32 2}
!45 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!46 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!47 = distinct !DISubprogram(name: "dbl2int", scope: !2, file: !2, line: 24, type: !48, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !54)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !53}
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !29, line: 27, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !31, line: 45, baseType: !52)
!52 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!54 = !{!55, !56}
!55 = !DILocalVariable(name: "value", arg: 1, scope: !47, file: !2, line: 24, type: !53)
!56 = !DILocalVariable(name: "cvrt", scope: !47, file: !2, line: 31, type: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "dbl2int_cvrt", scope: !47, file: !2, line: 28, size: 64, elements: !58)
!58 = !{!59, !60}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !57, file: !2, line: 29, baseType: !53, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !57, file: !2, line: 30, baseType: !50, size: 64)
!61 = !DILocation(line: 0, scope: !47)
!62 = !DILocation(line: 33, column: 16, scope: !47)
!63 = !DILocation(line: 33, column: 4, scope: !47)
!64 = distinct !DISubprogram(name: "x264_put_byte", scope: !2, file: !2, line: 41, type: !65, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !136)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !67, !28}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "flv_buffer", file: !10, line: 116, baseType: !69)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "flv_buffer", file: !10, line: 109, size: 256, elements: !70)
!70 = !{!71, !72, !73, !74, !135}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !69, file: !10, line: 111, baseType: !27, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "d_cur", scope: !69, file: !10, line: 112, baseType: !11, size: 32, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "d_max", scope: !69, file: !10, line: 113, baseType: !11, size: 32, offset: 96)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !69, file: !10, line: 114, baseType: !75, size: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !77, line: 7, baseType: !78)
!77 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !79, line: 49, size: 1728, elements: !80)
!79 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!80 = !{!81, !83, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !98, !100, !101, !102, !105, !107, !109, !113, !116, !118, !121, !124, !125, !127, !130, !131}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !78, file: !79, line: 51, baseType: !82, size: 32)
!82 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !78, file: !79, line: 54, baseType: !84, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !78, file: !79, line: 55, baseType: !84, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !78, file: !79, line: 56, baseType: !84, size: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !78, file: !79, line: 57, baseType: !84, size: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !78, file: !79, line: 58, baseType: !84, size: 64, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !78, file: !79, line: 59, baseType: !84, size: 64, offset: 384)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !78, file: !79, line: 60, baseType: !84, size: 64, offset: 448)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !78, file: !79, line: 61, baseType: !84, size: 64, offset: 512)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !78, file: !79, line: 64, baseType: !84, size: 64, offset: 576)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !78, file: !79, line: 65, baseType: !84, size: 64, offset: 640)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !78, file: !79, line: 66, baseType: !84, size: 64, offset: 704)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !78, file: !79, line: 68, baseType: !96, size: 64, offset: 768)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !79, line: 36, flags: DIFlagFwdDecl)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !78, file: !79, line: 70, baseType: !99, size: 64, offset: 832)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !78, file: !79, line: 72, baseType: !82, size: 32, offset: 896)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !78, file: !79, line: 73, baseType: !82, size: 32, offset: 928)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !78, file: !79, line: 74, baseType: !103, size: 64, offset: 960)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !31, line: 152, baseType: !104)
!104 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !78, file: !79, line: 77, baseType: !106, size: 16, offset: 1024)
!106 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !78, file: !79, line: 78, baseType: !108, size: 8, offset: 1040)
!108 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !78, file: !79, line: 79, baseType: !110, size: 8, offset: 1048)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 1)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !78, file: !79, line: 81, baseType: !114, size: 64, offset: 1088)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !79, line: 43, baseType: null)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !78, file: !79, line: 89, baseType: !117, size: 64, offset: 1152)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !31, line: 153, baseType: !104)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !78, file: !79, line: 91, baseType: !119, size: 64, offset: 1216)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !79, line: 37, flags: DIFlagFwdDecl)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !78, file: !79, line: 92, baseType: !122, size: 64, offset: 1280)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !79, line: 38, flags: DIFlagFwdDecl)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !78, file: !79, line: 93, baseType: !99, size: 64, offset: 1344)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !78, file: !79, line: 94, baseType: !126, size: 64, offset: 1408)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !78, file: !79, line: 95, baseType: !128, size: 64, offset: 1472)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !129, line: 18, baseType: !52)
!129 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !78, file: !79, line: 96, baseType: !82, size: 32, offset: 1536)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !78, file: !79, line: 98, baseType: !132, size: 160, offset: 1568)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 20)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "d_total", scope: !69, file: !10, line: 115, baseType: !50, size: 64, offset: 192)
!136 = !{!137, !138}
!137 = !DILocalVariable(name: "c", arg: 1, scope: !64, file: !2, line: 41, type: !67)
!138 = !DILocalVariable(name: "b", arg: 2, scope: !64, file: !2, line: 41, type: !28)
!139 = !DILocation(line: 0, scope: !64)
!140 = !DILocalVariable(name: "c", arg: 1, scope: !141, file: !2, line: 114, type: !67)
!141 = distinct !DISubprogram(name: "flv_append_data", scope: !2, file: !2, line: 114, type: !142, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !144)
!142 = !DISubroutineType(types: !143)
!143 = !{!82, !67, !27, !11}
!144 = !{!140, !145, !146, !147, !148, !151}
!145 = !DILocalVariable(name: "data", arg: 2, scope: !141, file: !2, line: 114, type: !27)
!146 = !DILocalVariable(name: "size", arg: 3, scope: !141, file: !2, line: 114, type: !11)
!147 = !DILocalVariable(name: "ns", scope: !141, file: !2, line: 116, type: !11)
!148 = !DILocalVariable(name: "dp", scope: !149, file: !2, line: 120, type: !126)
!149 = distinct !DILexicalBlock(scope: !150, file: !2, line: 119, column: 5)
!150 = distinct !DILexicalBlock(scope: !141, file: !2, line: 118, column: 9)
!151 = !DILocalVariable(name: "dn", scope: !149, file: !2, line: 121, type: !11)
!152 = !DILocation(line: 0, scope: !141, inlinedAt: !153)
!153 = distinct !DILocation(line: 43, column: 5, scope: !64)
!154 = !DILocation(line: 116, column: 22, scope: !141, inlinedAt: !153)
!155 = !DILocation(line: 116, column: 28, scope: !141, inlinedAt: !153)
!156 = !DILocation(line: 118, column: 17, scope: !150, inlinedAt: !153)
!157 = !DILocation(line: 118, column: 12, scope: !150, inlinedAt: !153)
!158 = !DILocation(line: 118, column: 9, scope: !141, inlinedAt: !153)
!159 = !DILocation(line: 133, column: 16, scope: !141, inlinedAt: !153)
!160 = !DILocation(line: 0, scope: !149, inlinedAt: !153)
!161 = !DILocation(line: 122, column: 19, scope: !149, inlinedAt: !153)
!162 = !DILocation(line: 123, column: 16, scope: !149, inlinedAt: !153)
!163 = !DILocation(line: 122, column: 9, scope: !149, inlinedAt: !153)
!164 = distinct !{!164, !163, !165}
!165 = !DILocation(line: 123, column: 20, scope: !149, inlinedAt: !153)
!166 = !DILocation(line: 125, column: 26, scope: !149, inlinedAt: !153)
!167 = !DILocation(line: 125, column: 32, scope: !149, inlinedAt: !153)
!168 = !DILocation(line: 125, column: 14, scope: !149, inlinedAt: !153)
!169 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !153)
!170 = distinct !DILexicalBlock(scope: !149, file: !2, line: 126, column: 13)
!171 = !DILocation(line: 126, column: 13, scope: !149, inlinedAt: !153)
!172 = !DILocation(line: 129, column: 17, scope: !149, inlinedAt: !153)
!173 = !DILocation(line: 130, column: 18, scope: !149, inlinedAt: !153)
!174 = !DILocation(line: 133, column: 26, scope: !141, inlinedAt: !153)
!175 = !DILocation(line: 133, column: 21, scope: !141, inlinedAt: !153)
!176 = !DILocation(line: 133, column: 5, scope: !141, inlinedAt: !153)
!177 = !DILocation(line: 135, column: 14, scope: !141, inlinedAt: !153)
!178 = !DILocation(line: 137, column: 5, scope: !141, inlinedAt: !153)
!179 = !DILocation(line: 44, column: 1, scope: !64)
!180 = !DILocation(line: 0, scope: !141)
!181 = !DILocation(line: 116, column: 22, scope: !141)
!182 = !DILocation(line: 116, column: 28, scope: !141)
!183 = !DILocation(line: 118, column: 17, scope: !150)
!184 = !DILocation(line: 118, column: 12, scope: !150)
!185 = !DILocation(line: 118, column: 9, scope: !141)
!186 = !DILocation(line: 133, column: 16, scope: !141)
!187 = !DILocation(line: 0, scope: !149)
!188 = !DILocation(line: 122, column: 19, scope: !149)
!189 = !DILocation(line: 123, column: 16, scope: !149)
!190 = !DILocation(line: 122, column: 9, scope: !149)
!191 = distinct !{!191, !190, !192}
!192 = !DILocation(line: 123, column: 20, scope: !149)
!193 = !DILocation(line: 125, column: 26, scope: !149)
!194 = !DILocation(line: 125, column: 32, scope: !149)
!195 = !DILocation(line: 125, column: 14, scope: !149)
!196 = !DILocation(line: 126, column: 14, scope: !170)
!197 = !DILocation(line: 126, column: 13, scope: !149)
!198 = !DILocation(line: 129, column: 17, scope: !149)
!199 = !DILocation(line: 130, column: 18, scope: !149)
!200 = !DILocation(line: 133, column: 26, scope: !141)
!201 = !DILocation(line: 133, column: 21, scope: !141)
!202 = !DILocation(line: 133, column: 39, scope: !141)
!203 = !DILocation(line: 133, column: 5, scope: !141)
!204 = !DILocation(line: 135, column: 14, scope: !141)
!205 = !DILocation(line: 137, column: 5, scope: !141)
!206 = !DILocation(line: 138, column: 1, scope: !141)
!207 = distinct !DISubprogram(name: "x264_put_be32", scope: !2, file: !2, line: 46, type: !208, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !212)
!208 = !DISubroutineType(types: !209)
!209 = !{null, !67, !210}
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !29, line: 26, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !31, line: 42, baseType: !11)
!212 = !{!213, !214}
!213 = !DILocalVariable(name: "c", arg: 1, scope: !207, file: !2, line: 46, type: !67)
!214 = !DILocalVariable(name: "val", arg: 2, scope: !207, file: !2, line: 46, type: !210)
!215 = !DILocation(line: 0, scope: !207)
!216 = !DILocation(line: 48, column: 27, scope: !207)
!217 = !DILocation(line: 48, column: 23, scope: !207)
!218 = !DILocation(line: 0, scope: !64, inlinedAt: !219)
!219 = distinct !DILocation(line: 48, column: 5, scope: !207)
!220 = !DILocation(line: 0, scope: !141, inlinedAt: !221)
!221 = distinct !DILocation(line: 43, column: 5, scope: !64, inlinedAt: !219)
!222 = !DILocation(line: 116, column: 22, scope: !141, inlinedAt: !221)
!223 = !DILocation(line: 116, column: 28, scope: !141, inlinedAt: !221)
!224 = !DILocation(line: 118, column: 17, scope: !150, inlinedAt: !221)
!225 = !DILocation(line: 118, column: 12, scope: !150, inlinedAt: !221)
!226 = !DILocation(line: 118, column: 9, scope: !141, inlinedAt: !221)
!227 = !DILocation(line: 133, column: 16, scope: !141, inlinedAt: !221)
!228 = !DILocation(line: 0, scope: !149, inlinedAt: !221)
!229 = !DILocation(line: 122, column: 19, scope: !149, inlinedAt: !221)
!230 = !DILocation(line: 123, column: 16, scope: !149, inlinedAt: !221)
!231 = !DILocation(line: 122, column: 9, scope: !149, inlinedAt: !221)
!232 = distinct !{!232, !231, !233}
!233 = !DILocation(line: 123, column: 20, scope: !149, inlinedAt: !221)
!234 = !DILocation(line: 125, column: 26, scope: !149, inlinedAt: !221)
!235 = !DILocation(line: 125, column: 32, scope: !149, inlinedAt: !221)
!236 = !DILocation(line: 125, column: 14, scope: !149, inlinedAt: !221)
!237 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !221)
!238 = !DILocation(line: 116, column: 22, scope: !141, inlinedAt: !239)
!239 = distinct !DILocation(line: 43, column: 5, scope: !64, inlinedAt: !240)
!240 = distinct !DILocation(line: 49, column: 5, scope: !207)
!241 = !DILocation(line: 126, column: 13, scope: !149, inlinedAt: !221)
!242 = !DILocation(line: 129, column: 17, scope: !149, inlinedAt: !221)
!243 = !DILocation(line: 130, column: 18, scope: !149, inlinedAt: !221)
!244 = !DILocation(line: 133, column: 26, scope: !141, inlinedAt: !221)
!245 = !DILocation(line: 133, column: 21, scope: !141, inlinedAt: !221)
!246 = !DILocation(line: 133, column: 5, scope: !141, inlinedAt: !221)
!247 = !DILocation(line: 135, column: 14, scope: !141, inlinedAt: !221)
!248 = !DILocation(line: 137, column: 5, scope: !141, inlinedAt: !221)
!249 = !DILocation(line: 49, column: 27, scope: !207)
!250 = !DILocation(line: 49, column: 23, scope: !207)
!251 = !DILocation(line: 0, scope: !64, inlinedAt: !240)
!252 = !DILocation(line: 0, scope: !141, inlinedAt: !239)
!253 = !DILocation(line: 116, column: 28, scope: !141, inlinedAt: !239)
!254 = !DILocation(line: 118, column: 17, scope: !150, inlinedAt: !239)
!255 = !DILocation(line: 118, column: 12, scope: !150, inlinedAt: !239)
!256 = !DILocation(line: 118, column: 9, scope: !141, inlinedAt: !239)
!257 = !DILocation(line: 133, column: 16, scope: !141, inlinedAt: !239)
!258 = !DILocation(line: 0, scope: !149, inlinedAt: !239)
!259 = !DILocation(line: 122, column: 19, scope: !149, inlinedAt: !239)
!260 = !DILocation(line: 123, column: 16, scope: !149, inlinedAt: !239)
!261 = !DILocation(line: 122, column: 9, scope: !149, inlinedAt: !239)
!262 = distinct !{!262, !261, !263}
!263 = !DILocation(line: 123, column: 20, scope: !149, inlinedAt: !239)
!264 = !DILocation(line: 125, column: 26, scope: !149, inlinedAt: !239)
!265 = !DILocation(line: 125, column: 32, scope: !149, inlinedAt: !239)
!266 = !DILocation(line: 125, column: 14, scope: !149, inlinedAt: !239)
!267 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !239)
!268 = !DILocation(line: 116, column: 22, scope: !141, inlinedAt: !269)
!269 = distinct !DILocation(line: 43, column: 5, scope: !64, inlinedAt: !270)
!270 = distinct !DILocation(line: 50, column: 5, scope: !207)
!271 = !DILocation(line: 126, column: 13, scope: !149, inlinedAt: !239)
!272 = !DILocation(line: 129, column: 17, scope: !149, inlinedAt: !239)
!273 = !DILocation(line: 130, column: 18, scope: !149, inlinedAt: !239)
!274 = !DILocation(line: 133, column: 26, scope: !141, inlinedAt: !239)
!275 = !DILocation(line: 133, column: 21, scope: !141, inlinedAt: !239)
!276 = !DILocation(line: 133, column: 5, scope: !141, inlinedAt: !239)
!277 = !DILocation(line: 135, column: 14, scope: !141, inlinedAt: !239)
!278 = !DILocation(line: 137, column: 5, scope: !141, inlinedAt: !239)
!279 = !DILocation(line: 50, column: 27, scope: !207)
!280 = !DILocation(line: 50, column: 23, scope: !207)
!281 = !DILocation(line: 0, scope: !64, inlinedAt: !270)
!282 = !DILocation(line: 0, scope: !141, inlinedAt: !269)
!283 = !DILocation(line: 116, column: 28, scope: !141, inlinedAt: !269)
!284 = !DILocation(line: 118, column: 17, scope: !150, inlinedAt: !269)
!285 = !DILocation(line: 118, column: 12, scope: !150, inlinedAt: !269)
!286 = !DILocation(line: 118, column: 9, scope: !141, inlinedAt: !269)
!287 = !DILocation(line: 133, column: 16, scope: !141, inlinedAt: !269)
!288 = !DILocation(line: 0, scope: !149, inlinedAt: !269)
!289 = !DILocation(line: 122, column: 19, scope: !149, inlinedAt: !269)
!290 = !DILocation(line: 123, column: 16, scope: !149, inlinedAt: !269)
!291 = !DILocation(line: 122, column: 9, scope: !149, inlinedAt: !269)
!292 = distinct !{!292, !291, !293}
!293 = !DILocation(line: 123, column: 20, scope: !149, inlinedAt: !269)
!294 = !DILocation(line: 125, column: 26, scope: !149, inlinedAt: !269)
!295 = !DILocation(line: 125, column: 32, scope: !149, inlinedAt: !269)
!296 = !DILocation(line: 125, column: 14, scope: !149, inlinedAt: !269)
!297 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !269)
!298 = !DILocation(line: 116, column: 22, scope: !141, inlinedAt: !299)
!299 = distinct !DILocation(line: 43, column: 5, scope: !64, inlinedAt: !300)
!300 = distinct !DILocation(line: 51, column: 5, scope: !207)
!301 = !DILocation(line: 126, column: 13, scope: !149, inlinedAt: !269)
!302 = !DILocation(line: 129, column: 17, scope: !149, inlinedAt: !269)
!303 = !DILocation(line: 130, column: 18, scope: !149, inlinedAt: !269)
!304 = !DILocation(line: 133, column: 26, scope: !141, inlinedAt: !269)
!305 = !DILocation(line: 133, column: 21, scope: !141, inlinedAt: !269)
!306 = !DILocation(line: 133, column: 5, scope: !141, inlinedAt: !269)
!307 = !DILocation(line: 135, column: 14, scope: !141, inlinedAt: !269)
!308 = !DILocation(line: 137, column: 5, scope: !141, inlinedAt: !269)
!309 = !DILocation(line: 51, column: 23, scope: !207)
!310 = !DILocation(line: 0, scope: !64, inlinedAt: !300)
!311 = !DILocation(line: 0, scope: !141, inlinedAt: !299)
!312 = !DILocation(line: 116, column: 28, scope: !141, inlinedAt: !299)
!313 = !DILocation(line: 118, column: 17, scope: !150, inlinedAt: !299)
!314 = !DILocation(line: 118, column: 12, scope: !150, inlinedAt: !299)
!315 = !DILocation(line: 118, column: 9, scope: !141, inlinedAt: !299)
!316 = !DILocation(line: 133, column: 16, scope: !141, inlinedAt: !299)
!317 = !DILocation(line: 0, scope: !149, inlinedAt: !299)
!318 = !DILocation(line: 122, column: 19, scope: !149, inlinedAt: !299)
!319 = !DILocation(line: 123, column: 16, scope: !149, inlinedAt: !299)
!320 = !DILocation(line: 122, column: 9, scope: !149, inlinedAt: !299)
!321 = distinct !{!321, !320, !322}
!322 = !DILocation(line: 123, column: 20, scope: !149, inlinedAt: !299)
!323 = !DILocation(line: 125, column: 26, scope: !149, inlinedAt: !299)
!324 = !DILocation(line: 125, column: 32, scope: !149, inlinedAt: !299)
!325 = !DILocation(line: 125, column: 14, scope: !149, inlinedAt: !299)
!326 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !299)
!327 = !DILocation(line: 126, column: 13, scope: !149, inlinedAt: !299)
!328 = !DILocation(line: 129, column: 17, scope: !149, inlinedAt: !299)
!329 = !DILocation(line: 130, column: 18, scope: !149, inlinedAt: !299)
!330 = !DILocation(line: 133, column: 26, scope: !141, inlinedAt: !299)
!331 = !DILocation(line: 133, column: 21, scope: !141, inlinedAt: !299)
!332 = !DILocation(line: 133, column: 5, scope: !141, inlinedAt: !299)
!333 = !DILocation(line: 135, column: 14, scope: !141, inlinedAt: !299)
!334 = !DILocation(line: 137, column: 5, scope: !141, inlinedAt: !299)
!335 = !DILocation(line: 52, column: 1, scope: !207)
!336 = distinct !DISubprogram(name: "x264_put_be64", scope: !2, file: !2, line: 54, type: !337, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !339)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !67, !50}
!339 = !{!340, !341}
!340 = !DILocalVariable(name: "c", arg: 1, scope: !336, file: !2, line: 54, type: !67)
!341 = !DILocalVariable(name: "val", arg: 2, scope: !336, file: !2, line: 54, type: !50)
!342 = !DILocation(line: 0, scope: !336)
!343 = !DILocation(line: 56, column: 27, scope: !336)
!344 = !DILocation(line: 56, column: 23, scope: !336)
!345 = !DILocation(line: 56, column: 5, scope: !336)
!346 = !DILocation(line: 57, column: 23, scope: !336)
!347 = !DILocation(line: 57, column: 5, scope: !336)
!348 = !DILocation(line: 58, column: 1, scope: !336)
!349 = distinct !DISubprogram(name: "x264_put_be16", scope: !2, file: !2, line: 60, type: !350, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !354)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !67, !352}
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !29, line: 25, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !31, line: 40, baseType: !106)
!354 = !{!355, !356}
!355 = !DILocalVariable(name: "c", arg: 1, scope: !349, file: !2, line: 60, type: !67)
!356 = !DILocalVariable(name: "val", arg: 2, scope: !349, file: !2, line: 60, type: !352)
!357 = !DILocation(line: 0, scope: !349)
!358 = !DILocation(line: 62, column: 27, scope: !349)
!359 = !DILocation(line: 62, column: 23, scope: !349)
!360 = !DILocation(line: 0, scope: !64, inlinedAt: !361)
!361 = distinct !DILocation(line: 62, column: 5, scope: !349)
!362 = !DILocation(line: 0, scope: !141, inlinedAt: !363)
!363 = distinct !DILocation(line: 43, column: 5, scope: !64, inlinedAt: !361)
!364 = !DILocation(line: 116, column: 22, scope: !141, inlinedAt: !363)
!365 = !DILocation(line: 116, column: 28, scope: !141, inlinedAt: !363)
!366 = !DILocation(line: 118, column: 17, scope: !150, inlinedAt: !363)
!367 = !DILocation(line: 118, column: 12, scope: !150, inlinedAt: !363)
!368 = !DILocation(line: 118, column: 9, scope: !141, inlinedAt: !363)
!369 = !DILocation(line: 133, column: 16, scope: !141, inlinedAt: !363)
!370 = !DILocation(line: 0, scope: !149, inlinedAt: !363)
!371 = !DILocation(line: 122, column: 19, scope: !149, inlinedAt: !363)
!372 = !DILocation(line: 123, column: 16, scope: !149, inlinedAt: !363)
!373 = !DILocation(line: 122, column: 9, scope: !149, inlinedAt: !363)
!374 = distinct !{!374, !373, !375}
!375 = !DILocation(line: 123, column: 20, scope: !149, inlinedAt: !363)
!376 = !DILocation(line: 125, column: 26, scope: !149, inlinedAt: !363)
!377 = !DILocation(line: 125, column: 32, scope: !149, inlinedAt: !363)
!378 = !DILocation(line: 125, column: 14, scope: !149, inlinedAt: !363)
!379 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !363)
!380 = !DILocation(line: 116, column: 22, scope: !141, inlinedAt: !381)
!381 = distinct !DILocation(line: 43, column: 5, scope: !64, inlinedAt: !382)
!382 = distinct !DILocation(line: 63, column: 5, scope: !349)
!383 = !DILocation(line: 126, column: 13, scope: !149, inlinedAt: !363)
!384 = !DILocation(line: 129, column: 17, scope: !149, inlinedAt: !363)
!385 = !DILocation(line: 130, column: 18, scope: !149, inlinedAt: !363)
!386 = !DILocation(line: 133, column: 26, scope: !141, inlinedAt: !363)
!387 = !DILocation(line: 133, column: 21, scope: !141, inlinedAt: !363)
!388 = !DILocation(line: 133, column: 5, scope: !141, inlinedAt: !363)
!389 = !DILocation(line: 135, column: 14, scope: !141, inlinedAt: !363)
!390 = !DILocation(line: 137, column: 5, scope: !141, inlinedAt: !363)
!391 = !DILocation(line: 63, column: 23, scope: !349)
!392 = !DILocation(line: 0, scope: !64, inlinedAt: !382)
!393 = !DILocation(line: 0, scope: !141, inlinedAt: !381)
!394 = !DILocation(line: 116, column: 28, scope: !141, inlinedAt: !381)
!395 = !DILocation(line: 118, column: 17, scope: !150, inlinedAt: !381)
!396 = !DILocation(line: 118, column: 12, scope: !150, inlinedAt: !381)
!397 = !DILocation(line: 118, column: 9, scope: !141, inlinedAt: !381)
!398 = !DILocation(line: 133, column: 16, scope: !141, inlinedAt: !381)
!399 = !DILocation(line: 0, scope: !149, inlinedAt: !381)
!400 = !DILocation(line: 122, column: 19, scope: !149, inlinedAt: !381)
!401 = !DILocation(line: 123, column: 16, scope: !149, inlinedAt: !381)
!402 = !DILocation(line: 122, column: 9, scope: !149, inlinedAt: !381)
!403 = distinct !{!403, !402, !404}
!404 = !DILocation(line: 123, column: 20, scope: !149, inlinedAt: !381)
!405 = !DILocation(line: 125, column: 26, scope: !149, inlinedAt: !381)
!406 = !DILocation(line: 125, column: 32, scope: !149, inlinedAt: !381)
!407 = !DILocation(line: 125, column: 14, scope: !149, inlinedAt: !381)
!408 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !381)
!409 = !DILocation(line: 126, column: 13, scope: !149, inlinedAt: !381)
!410 = !DILocation(line: 129, column: 17, scope: !149, inlinedAt: !381)
!411 = !DILocation(line: 130, column: 18, scope: !149, inlinedAt: !381)
!412 = !DILocation(line: 133, column: 26, scope: !141, inlinedAt: !381)
!413 = !DILocation(line: 133, column: 21, scope: !141, inlinedAt: !381)
!414 = !DILocation(line: 133, column: 5, scope: !141, inlinedAt: !381)
!415 = !DILocation(line: 135, column: 14, scope: !141, inlinedAt: !381)
!416 = !DILocation(line: 137, column: 5, scope: !141, inlinedAt: !381)
!417 = !DILocation(line: 64, column: 1, scope: !349)
!418 = distinct !DISubprogram(name: "x264_put_be24", scope: !2, file: !2, line: 66, type: !208, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !419)
!419 = !{!420, !421}
!420 = !DILocalVariable(name: "c", arg: 1, scope: !418, file: !2, line: 66, type: !67)
!421 = !DILocalVariable(name: "val", arg: 2, scope: !418, file: !2, line: 66, type: !210)
!422 = !DILocation(line: 0, scope: !418)
!423 = !DILocation(line: 68, column: 27, scope: !418)
!424 = !DILocation(line: 0, scope: !349, inlinedAt: !425)
!425 = distinct !DILocation(line: 68, column: 5, scope: !418)
!426 = !DILocation(line: 62, column: 23, scope: !349, inlinedAt: !425)
!427 = !DILocation(line: 0, scope: !64, inlinedAt: !428)
!428 = distinct !DILocation(line: 62, column: 5, scope: !349, inlinedAt: !425)
!429 = !DILocation(line: 0, scope: !141, inlinedAt: !430)
!430 = distinct !DILocation(line: 43, column: 5, scope: !64, inlinedAt: !428)
!431 = !DILocation(line: 116, column: 22, scope: !141, inlinedAt: !430)
!432 = !DILocation(line: 116, column: 28, scope: !141, inlinedAt: !430)
!433 = !DILocation(line: 118, column: 17, scope: !150, inlinedAt: !430)
!434 = !DILocation(line: 118, column: 12, scope: !150, inlinedAt: !430)
!435 = !DILocation(line: 118, column: 9, scope: !141, inlinedAt: !430)
!436 = !DILocation(line: 133, column: 16, scope: !141, inlinedAt: !430)
!437 = !DILocation(line: 0, scope: !149, inlinedAt: !430)
!438 = !DILocation(line: 122, column: 19, scope: !149, inlinedAt: !430)
!439 = !DILocation(line: 123, column: 16, scope: !149, inlinedAt: !430)
!440 = !DILocation(line: 122, column: 9, scope: !149, inlinedAt: !430)
!441 = distinct !{!441, !440, !442}
!442 = !DILocation(line: 123, column: 20, scope: !149, inlinedAt: !430)
!443 = !DILocation(line: 125, column: 26, scope: !149, inlinedAt: !430)
!444 = !DILocation(line: 125, column: 32, scope: !149, inlinedAt: !430)
!445 = !DILocation(line: 125, column: 14, scope: !149, inlinedAt: !430)
!446 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !430)
!447 = !DILocation(line: 116, column: 22, scope: !141, inlinedAt: !448)
!448 = distinct !DILocation(line: 43, column: 5, scope: !64, inlinedAt: !449)
!449 = distinct !DILocation(line: 63, column: 5, scope: !349, inlinedAt: !425)
!450 = !DILocation(line: 126, column: 13, scope: !149, inlinedAt: !430)
!451 = !DILocation(line: 129, column: 17, scope: !149, inlinedAt: !430)
!452 = !DILocation(line: 130, column: 18, scope: !149, inlinedAt: !430)
!453 = !DILocation(line: 133, column: 26, scope: !141, inlinedAt: !430)
!454 = !DILocation(line: 133, column: 21, scope: !141, inlinedAt: !430)
!455 = !DILocation(line: 133, column: 5, scope: !141, inlinedAt: !430)
!456 = !DILocation(line: 135, column: 14, scope: !141, inlinedAt: !430)
!457 = !DILocation(line: 137, column: 5, scope: !141, inlinedAt: !430)
!458 = !DILocation(line: 63, column: 23, scope: !349, inlinedAt: !425)
!459 = !DILocation(line: 0, scope: !64, inlinedAt: !449)
!460 = !DILocation(line: 0, scope: !141, inlinedAt: !448)
!461 = !DILocation(line: 116, column: 28, scope: !141, inlinedAt: !448)
!462 = !DILocation(line: 118, column: 17, scope: !150, inlinedAt: !448)
!463 = !DILocation(line: 118, column: 12, scope: !150, inlinedAt: !448)
!464 = !DILocation(line: 118, column: 9, scope: !141, inlinedAt: !448)
!465 = !DILocation(line: 133, column: 16, scope: !141, inlinedAt: !448)
!466 = !DILocation(line: 0, scope: !149, inlinedAt: !448)
!467 = !DILocation(line: 122, column: 19, scope: !149, inlinedAt: !448)
!468 = !DILocation(line: 123, column: 16, scope: !149, inlinedAt: !448)
!469 = !DILocation(line: 122, column: 9, scope: !149, inlinedAt: !448)
!470 = distinct !{!470, !469, !471}
!471 = !DILocation(line: 123, column: 20, scope: !149, inlinedAt: !448)
!472 = !DILocation(line: 125, column: 26, scope: !149, inlinedAt: !448)
!473 = !DILocation(line: 125, column: 32, scope: !149, inlinedAt: !448)
!474 = !DILocation(line: 125, column: 14, scope: !149, inlinedAt: !448)
!475 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !448)
!476 = !DILocation(line: 116, column: 22, scope: !141, inlinedAt: !477)
!477 = distinct !DILocation(line: 43, column: 5, scope: !64, inlinedAt: !478)
!478 = distinct !DILocation(line: 69, column: 5, scope: !418)
!479 = !DILocation(line: 126, column: 13, scope: !149, inlinedAt: !448)
!480 = !DILocation(line: 129, column: 17, scope: !149, inlinedAt: !448)
!481 = !DILocation(line: 130, column: 18, scope: !149, inlinedAt: !448)
!482 = !DILocation(line: 133, column: 26, scope: !141, inlinedAt: !448)
!483 = !DILocation(line: 133, column: 21, scope: !141, inlinedAt: !448)
!484 = !DILocation(line: 133, column: 5, scope: !141, inlinedAt: !448)
!485 = !DILocation(line: 135, column: 14, scope: !141, inlinedAt: !448)
!486 = !DILocation(line: 137, column: 5, scope: !141, inlinedAt: !448)
!487 = !DILocation(line: 69, column: 23, scope: !418)
!488 = !DILocation(line: 0, scope: !64, inlinedAt: !478)
!489 = !DILocation(line: 0, scope: !141, inlinedAt: !477)
!490 = !DILocation(line: 116, column: 28, scope: !141, inlinedAt: !477)
!491 = !DILocation(line: 118, column: 17, scope: !150, inlinedAt: !477)
!492 = !DILocation(line: 118, column: 12, scope: !150, inlinedAt: !477)
!493 = !DILocation(line: 118, column: 9, scope: !141, inlinedAt: !477)
!494 = !DILocation(line: 133, column: 16, scope: !141, inlinedAt: !477)
!495 = !DILocation(line: 0, scope: !149, inlinedAt: !477)
!496 = !DILocation(line: 122, column: 19, scope: !149, inlinedAt: !477)
!497 = !DILocation(line: 123, column: 16, scope: !149, inlinedAt: !477)
!498 = !DILocation(line: 122, column: 9, scope: !149, inlinedAt: !477)
!499 = distinct !{!499, !498, !500}
!500 = !DILocation(line: 123, column: 20, scope: !149, inlinedAt: !477)
!501 = !DILocation(line: 125, column: 26, scope: !149, inlinedAt: !477)
!502 = !DILocation(line: 125, column: 32, scope: !149, inlinedAt: !477)
!503 = !DILocation(line: 125, column: 14, scope: !149, inlinedAt: !477)
!504 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !477)
!505 = !DILocation(line: 126, column: 13, scope: !149, inlinedAt: !477)
!506 = !DILocation(line: 129, column: 17, scope: !149, inlinedAt: !477)
!507 = !DILocation(line: 130, column: 18, scope: !149, inlinedAt: !477)
!508 = !DILocation(line: 133, column: 26, scope: !141, inlinedAt: !477)
!509 = !DILocation(line: 133, column: 21, scope: !141, inlinedAt: !477)
!510 = !DILocation(line: 133, column: 5, scope: !141, inlinedAt: !477)
!511 = !DILocation(line: 135, column: 14, scope: !141, inlinedAt: !477)
!512 = !DILocation(line: 137, column: 5, scope: !141, inlinedAt: !477)
!513 = !DILocation(line: 70, column: 1, scope: !418)
!514 = distinct !DISubprogram(name: "x264_put_tag", scope: !2, file: !2, line: 72, type: !515, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !519)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !67, !517}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!519 = !{!520, !521}
!520 = !DILocalVariable(name: "c", arg: 1, scope: !514, file: !2, line: 72, type: !67)
!521 = !DILocalVariable(name: "tag", arg: 2, scope: !514, file: !2, line: 72, type: !517)
!522 = !DILocation(line: 0, scope: !514)
!523 = !DILocation(line: 74, column: 12, scope: !514)
!524 = !DILocation(line: 74, column: 5, scope: !514)
!525 = !DILocation(line: 75, column: 31, scope: !514)
!526 = !DILocation(line: 0, scope: !64, inlinedAt: !527)
!527 = distinct !DILocation(line: 75, column: 9, scope: !514)
!528 = !DILocation(line: 0, scope: !141, inlinedAt: !529)
!529 = distinct !DILocation(line: 43, column: 5, scope: !64, inlinedAt: !527)
!530 = !DILocation(line: 116, column: 22, scope: !141, inlinedAt: !529)
!531 = !DILocation(line: 116, column: 28, scope: !141, inlinedAt: !529)
!532 = !DILocation(line: 118, column: 17, scope: !150, inlinedAt: !529)
!533 = !DILocation(line: 118, column: 12, scope: !150, inlinedAt: !529)
!534 = !DILocation(line: 118, column: 9, scope: !141, inlinedAt: !529)
!535 = !DILocation(line: 133, column: 16, scope: !141, inlinedAt: !529)
!536 = !DILocation(line: 0, scope: !149, inlinedAt: !529)
!537 = !DILocation(line: 122, column: 19, scope: !149, inlinedAt: !529)
!538 = !DILocation(line: 123, column: 16, scope: !149, inlinedAt: !529)
!539 = !DILocation(line: 122, column: 9, scope: !149, inlinedAt: !529)
!540 = distinct !{!540, !539, !541}
!541 = !DILocation(line: 123, column: 20, scope: !149, inlinedAt: !529)
!542 = !DILocation(line: 125, column: 26, scope: !149, inlinedAt: !529)
!543 = !DILocation(line: 125, column: 32, scope: !149, inlinedAt: !529)
!544 = !DILocation(line: 125, column: 14, scope: !149, inlinedAt: !529)
!545 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !529)
!546 = !DILocation(line: 126, column: 13, scope: !149, inlinedAt: !529)
!547 = !DILocation(line: 129, column: 17, scope: !149, inlinedAt: !529)
!548 = !DILocation(line: 130, column: 18, scope: !149, inlinedAt: !529)
!549 = !DILocation(line: 133, column: 26, scope: !141, inlinedAt: !529)
!550 = !DILocation(line: 133, column: 21, scope: !141, inlinedAt: !529)
!551 = !DILocation(line: 133, column: 5, scope: !141, inlinedAt: !529)
!552 = !DILocation(line: 135, column: 14, scope: !141, inlinedAt: !529)
!553 = !DILocation(line: 137, column: 5, scope: !141, inlinedAt: !529)
!554 = distinct !{!554, !524, !555}
!555 = !DILocation(line: 75, column: 34, scope: !514)
!556 = !DILocation(line: 76, column: 1, scope: !514)
!557 = distinct !DISubprogram(name: "x264_put_amf_string", scope: !2, file: !2, line: 78, type: !515, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !558)
!558 = !{!559, !560, !561}
!559 = !DILocalVariable(name: "c", arg: 1, scope: !557, file: !2, line: 78, type: !67)
!560 = !DILocalVariable(name: "str", arg: 2, scope: !557, file: !2, line: 78, type: !517)
!561 = !DILocalVariable(name: "len", scope: !557, file: !2, line: 80, type: !352)
!562 = !DILocation(line: 0, scope: !557)
!563 = !DILocation(line: 80, column: 20, scope: !557)
!564 = !DILocation(line: 0, scope: !349, inlinedAt: !565)
!565 = distinct !DILocation(line: 81, column: 5, scope: !557)
!566 = !DILocation(line: 62, column: 23, scope: !349, inlinedAt: !565)
!567 = !DILocation(line: 0, scope: !64, inlinedAt: !568)
!568 = distinct !DILocation(line: 62, column: 5, scope: !349, inlinedAt: !565)
!569 = !DILocation(line: 0, scope: !141, inlinedAt: !570)
!570 = distinct !DILocation(line: 43, column: 5, scope: !64, inlinedAt: !568)
!571 = !DILocation(line: 116, column: 22, scope: !141, inlinedAt: !570)
!572 = !DILocation(line: 116, column: 28, scope: !141, inlinedAt: !570)
!573 = !DILocation(line: 118, column: 17, scope: !150, inlinedAt: !570)
!574 = !DILocation(line: 118, column: 12, scope: !150, inlinedAt: !570)
!575 = !DILocation(line: 118, column: 9, scope: !141, inlinedAt: !570)
!576 = !DILocation(line: 133, column: 16, scope: !141, inlinedAt: !570)
!577 = !DILocation(line: 0, scope: !149, inlinedAt: !570)
!578 = !DILocation(line: 122, column: 19, scope: !149, inlinedAt: !570)
!579 = !DILocation(line: 123, column: 16, scope: !149, inlinedAt: !570)
!580 = !DILocation(line: 122, column: 9, scope: !149, inlinedAt: !570)
!581 = distinct !{!581, !580, !582}
!582 = !DILocation(line: 123, column: 20, scope: !149, inlinedAt: !570)
!583 = !DILocation(line: 125, column: 26, scope: !149, inlinedAt: !570)
!584 = !DILocation(line: 125, column: 32, scope: !149, inlinedAt: !570)
!585 = !DILocation(line: 125, column: 14, scope: !149, inlinedAt: !570)
!586 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !570)
!587 = !DILocation(line: 116, column: 22, scope: !141, inlinedAt: !588)
!588 = distinct !DILocation(line: 43, column: 5, scope: !64, inlinedAt: !589)
!589 = distinct !DILocation(line: 63, column: 5, scope: !349, inlinedAt: !565)
!590 = !DILocation(line: 126, column: 13, scope: !149, inlinedAt: !570)
!591 = !DILocation(line: 129, column: 17, scope: !149, inlinedAt: !570)
!592 = !DILocation(line: 130, column: 18, scope: !149, inlinedAt: !570)
!593 = !DILocation(line: 133, column: 26, scope: !141, inlinedAt: !570)
!594 = !DILocation(line: 133, column: 21, scope: !141, inlinedAt: !570)
!595 = !DILocation(line: 133, column: 5, scope: !141, inlinedAt: !570)
!596 = !DILocation(line: 135, column: 14, scope: !141, inlinedAt: !570)
!597 = !DILocation(line: 137, column: 5, scope: !141, inlinedAt: !570)
!598 = !DILocation(line: 63, column: 23, scope: !349, inlinedAt: !565)
!599 = !DILocation(line: 0, scope: !64, inlinedAt: !589)
!600 = !DILocation(line: 0, scope: !141, inlinedAt: !588)
!601 = !DILocation(line: 116, column: 28, scope: !141, inlinedAt: !588)
!602 = !DILocation(line: 118, column: 17, scope: !150, inlinedAt: !588)
!603 = !DILocation(line: 118, column: 12, scope: !150, inlinedAt: !588)
!604 = !DILocation(line: 118, column: 9, scope: !141, inlinedAt: !588)
!605 = !DILocation(line: 133, column: 16, scope: !141, inlinedAt: !588)
!606 = !DILocation(line: 0, scope: !149, inlinedAt: !588)
!607 = !DILocation(line: 122, column: 19, scope: !149, inlinedAt: !588)
!608 = !DILocation(line: 123, column: 16, scope: !149, inlinedAt: !588)
!609 = !DILocation(line: 122, column: 9, scope: !149, inlinedAt: !588)
!610 = distinct !{!610, !609, !611}
!611 = !DILocation(line: 123, column: 20, scope: !149, inlinedAt: !588)
!612 = !DILocation(line: 125, column: 26, scope: !149, inlinedAt: !588)
!613 = !DILocation(line: 125, column: 32, scope: !149, inlinedAt: !588)
!614 = !DILocation(line: 125, column: 14, scope: !149, inlinedAt: !588)
!615 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !588)
!616 = !DILocation(line: 116, column: 22, scope: !141, inlinedAt: !617)
!617 = distinct !DILocation(line: 82, column: 5, scope: !557)
!618 = !DILocation(line: 126, column: 13, scope: !149, inlinedAt: !588)
!619 = !DILocation(line: 129, column: 17, scope: !149, inlinedAt: !588)
!620 = !DILocation(line: 130, column: 18, scope: !149, inlinedAt: !588)
!621 = !DILocation(line: 133, column: 26, scope: !141, inlinedAt: !588)
!622 = !DILocation(line: 133, column: 21, scope: !141, inlinedAt: !588)
!623 = !DILocation(line: 133, column: 5, scope: !141, inlinedAt: !588)
!624 = !DILocation(line: 135, column: 14, scope: !141, inlinedAt: !588)
!625 = !DILocation(line: 137, column: 5, scope: !141, inlinedAt: !588)
!626 = !DILocation(line: 82, column: 40, scope: !557)
!627 = !DILocation(line: 0, scope: !141, inlinedAt: !617)
!628 = !DILocation(line: 116, column: 28, scope: !141, inlinedAt: !617)
!629 = !DILocation(line: 118, column: 17, scope: !150, inlinedAt: !617)
!630 = !DILocation(line: 118, column: 12, scope: !150, inlinedAt: !617)
!631 = !DILocation(line: 118, column: 9, scope: !141, inlinedAt: !617)
!632 = !DILocation(line: 133, column: 16, scope: !141, inlinedAt: !617)
!633 = !DILocation(line: 0, scope: !149, inlinedAt: !617)
!634 = !DILocation(line: 122, column: 19, scope: !149, inlinedAt: !617)
!635 = !DILocation(line: 123, column: 16, scope: !149, inlinedAt: !617)
!636 = !DILocation(line: 122, column: 9, scope: !149, inlinedAt: !617)
!637 = distinct !{!637, !636, !638}
!638 = !DILocation(line: 123, column: 20, scope: !149, inlinedAt: !617)
!639 = !DILocation(line: 125, column: 26, scope: !149, inlinedAt: !617)
!640 = !DILocation(line: 125, column: 32, scope: !149, inlinedAt: !617)
!641 = !DILocation(line: 125, column: 14, scope: !149, inlinedAt: !617)
!642 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !617)
!643 = !DILocation(line: 126, column: 13, scope: !149, inlinedAt: !617)
!644 = !DILocation(line: 129, column: 17, scope: !149, inlinedAt: !617)
!645 = !DILocation(line: 130, column: 18, scope: !149, inlinedAt: !617)
!646 = !DILocation(line: 133, column: 26, scope: !141, inlinedAt: !617)
!647 = !DILocation(line: 133, column: 21, scope: !141, inlinedAt: !617)
!648 = !DILocation(line: 133, column: 39, scope: !141, inlinedAt: !617)
!649 = !DILocation(line: 133, column: 5, scope: !141, inlinedAt: !617)
!650 = !DILocation(line: 135, column: 14, scope: !141, inlinedAt: !617)
!651 = !DILocation(line: 137, column: 5, scope: !141, inlinedAt: !617)
!652 = !DILocation(line: 83, column: 1, scope: !557)
!653 = !DISubprogram(name: "strlen", scope: !654, file: !654, line: 407, type: !655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!654 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!655 = !DISubroutineType(types: !656)
!656 = !{!52, !517}
!657 = distinct !DISubprogram(name: "x264_put_amf_double", scope: !2, file: !2, line: 85, type: !658, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !660)
!658 = !DISubroutineType(types: !659)
!659 = !{null, !67, !53}
!660 = !{!661, !662}
!661 = !DILocalVariable(name: "c", arg: 1, scope: !657, file: !2, line: 85, type: !67)
!662 = !DILocalVariable(name: "d", arg: 2, scope: !657, file: !2, line: 85, type: !53)
!663 = !DILocation(line: 0, scope: !657)
!664 = !DILocation(line: 0, scope: !64, inlinedAt: !665)
!665 = distinct !DILocation(line: 87, column: 5, scope: !657)
!666 = !DILocation(line: 0, scope: !141, inlinedAt: !667)
!667 = distinct !DILocation(line: 43, column: 5, scope: !64, inlinedAt: !665)
!668 = !DILocation(line: 116, column: 22, scope: !141, inlinedAt: !667)
!669 = !DILocation(line: 116, column: 28, scope: !141, inlinedAt: !667)
!670 = !DILocation(line: 118, column: 17, scope: !150, inlinedAt: !667)
!671 = !DILocation(line: 118, column: 12, scope: !150, inlinedAt: !667)
!672 = !DILocation(line: 118, column: 9, scope: !141, inlinedAt: !667)
!673 = !DILocation(line: 133, column: 16, scope: !141, inlinedAt: !667)
!674 = !DILocation(line: 0, scope: !149, inlinedAt: !667)
!675 = !DILocation(line: 122, column: 19, scope: !149, inlinedAt: !667)
!676 = !DILocation(line: 123, column: 16, scope: !149, inlinedAt: !667)
!677 = !DILocation(line: 122, column: 9, scope: !149, inlinedAt: !667)
!678 = distinct !{!678, !677, !679}
!679 = !DILocation(line: 123, column: 20, scope: !149, inlinedAt: !667)
!680 = !DILocation(line: 125, column: 26, scope: !149, inlinedAt: !667)
!681 = !DILocation(line: 125, column: 32, scope: !149, inlinedAt: !667)
!682 = !DILocation(line: 125, column: 14, scope: !149, inlinedAt: !667)
!683 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !667)
!684 = !DILocation(line: 126, column: 13, scope: !149, inlinedAt: !667)
!685 = !DILocation(line: 129, column: 17, scope: !149, inlinedAt: !667)
!686 = !DILocation(line: 130, column: 18, scope: !149, inlinedAt: !667)
!687 = !DILocation(line: 133, column: 26, scope: !141, inlinedAt: !667)
!688 = !DILocation(line: 133, column: 21, scope: !141, inlinedAt: !667)
!689 = !DILocation(line: 133, column: 5, scope: !141, inlinedAt: !667)
!690 = !DILocation(line: 135, column: 14, scope: !141, inlinedAt: !667)
!691 = !DILocation(line: 137, column: 5, scope: !141, inlinedAt: !667)
!692 = !DILocation(line: 0, scope: !47, inlinedAt: !693)
!693 = distinct !DILocation(line: 88, column: 23, scope: !657)
!694 = !DILocation(line: 33, column: 16, scope: !47, inlinedAt: !693)
!695 = !DILocation(line: 0, scope: !336, inlinedAt: !696)
!696 = distinct !DILocation(line: 88, column: 5, scope: !657)
!697 = !DILocation(line: 56, column: 27, scope: !336, inlinedAt: !696)
!698 = !DILocation(line: 56, column: 23, scope: !336, inlinedAt: !696)
!699 = !DILocation(line: 56, column: 5, scope: !336, inlinedAt: !696)
!700 = !DILocation(line: 57, column: 23, scope: !336, inlinedAt: !696)
!701 = !DILocation(line: 57, column: 5, scope: !336, inlinedAt: !696)
!702 = !DILocation(line: 89, column: 1, scope: !657)
!703 = distinct !DISubprogram(name: "flv_create_writer", scope: !2, file: !2, line: 93, type: !704, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !706)
!704 = !DISubroutineType(types: !705)
!705 = !{!67, !517}
!706 = !{!707, !708}
!707 = !DILocalVariable(name: "filename", arg: 1, scope: !703, file: !2, line: 93, type: !517)
!708 = !DILocalVariable(name: "c", scope: !703, file: !2, line: 95, type: !67)
!709 = !DILocation(line: 0, scope: !703)
!710 = !DILocation(line: 95, column: 21, scope: !703)
!711 = !DILocation(line: 97, column: 10, scope: !712)
!712 = distinct !DILexicalBlock(scope: !703, file: !2, line: 97, column: 9)
!713 = !DILocation(line: 97, column: 9, scope: !703)
!714 = !DILocation(line: 101, column: 10, scope: !715)
!715 = distinct !DILexicalBlock(scope: !703, file: !2, line: 101, column: 9)
!716 = !DILocation(line: 101, column: 9, scope: !703)
!717 = !DILocation(line: 102, column: 17, scope: !715)
!718 = !DILocation(line: 102, column: 9, scope: !715)
!719 = !DILocation(line: 104, column: 17, scope: !715)
!720 = !DILocation(line: 0, scope: !715)
!721 = !DILocation(line: 105, column: 10, scope: !722)
!722 = distinct !DILexicalBlock(scope: !703, file: !2, line: 105, column: 9)
!723 = !DILocation(line: 105, column: 9, scope: !703)
!724 = !DILocation(line: 107, column: 9, scope: !725)
!725 = distinct !DILexicalBlock(scope: !722, file: !2, line: 106, column: 5)
!726 = !DILocation(line: 108, column: 9, scope: !725)
!727 = !DILocation(line: 112, column: 1, scope: !703)
!728 = !DISubprogram(name: "fopen", linkageName: "fopen64", scope: !729, file: !729, line: 270, type: !730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!729 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!730 = !DISubroutineType(types: !731)
!731 = !{!75, !732, !732}
!732 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !517)
!733 = !DISubprogram(name: "free", scope: !734, file: !734, line: 555, type: !735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!734 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!735 = !DISubroutineType(types: !736)
!736 = !{null, !126}
!737 = !DISubprogram(name: "realloc", scope: !734, file: !734, line: 551, type: !738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!738 = !DISubroutineType(types: !739)
!739 = !{!126, !126, !128}
!740 = distinct !DISubprogram(name: "rewrite_amf_be24", scope: !2, file: !2, line: 140, type: !741, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !743)
!741 = !DISubroutineType(types: !742)
!742 = !{null, !67, !11, !11}
!743 = !{!744, !745, !746}
!744 = !DILocalVariable(name: "c", arg: 1, scope: !740, file: !2, line: 140, type: !67)
!745 = !DILocalVariable(name: "length", arg: 2, scope: !740, file: !2, line: 140, type: !11)
!746 = !DILocalVariable(name: "start", arg: 3, scope: !740, file: !2, line: 140, type: !11)
!747 = !DILocation(line: 0, scope: !740)
!748 = !DILocation(line: 142, column: 38, scope: !740)
!749 = !DILocation(line: 142, column: 31, scope: !740)
!750 = !DILocation(line: 142, column: 11, scope: !740)
!751 = !DILocation(line: 142, column: 16, scope: !740)
!752 = !DILocation(line: 142, column: 29, scope: !740)
!753 = !DILocation(line: 143, column: 38, scope: !740)
!754 = !DILocation(line: 143, column: 31, scope: !740)
!755 = !DILocation(line: 143, column: 11, scope: !740)
!756 = !DILocation(line: 143, column: 16, scope: !740)
!757 = !DILocation(line: 143, column: 24, scope: !740)
!758 = !DILocation(line: 143, column: 29, scope: !740)
!759 = !DILocation(line: 144, column: 31, scope: !740)
!760 = !DILocation(line: 144, column: 11, scope: !740)
!761 = !DILocation(line: 144, column: 16, scope: !740)
!762 = !DILocation(line: 144, column: 24, scope: !740)
!763 = !DILocation(line: 144, column: 29, scope: !740)
!764 = !DILocation(line: 145, column: 1, scope: !740)
!765 = distinct !DISubprogram(name: "flv_flush_data", scope: !2, file: !2, line: 147, type: !766, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !768)
!766 = !DISubroutineType(types: !767)
!767 = !{!82, !67}
!768 = !{!769}
!769 = !DILocalVariable(name: "c", arg: 1, scope: !765, file: !2, line: 147, type: !67)
!770 = !DILocation(line: 0, scope: !765)
!771 = !DILocation(line: 149, column: 13, scope: !772)
!772 = distinct !DILexicalBlock(scope: !765, file: !2, line: 149, column: 9)
!773 = !DILocation(line: 149, column: 10, scope: !772)
!774 = !DILocation(line: 149, column: 9, scope: !765)
!775 = !DILocation(line: 152, column: 20, scope: !776)
!776 = distinct !DILexicalBlock(scope: !765, file: !2, line: 152, column: 9)
!777 = !DILocation(line: 152, column: 26, scope: !776)
!778 = !DILocation(line: 152, column: 42, scope: !776)
!779 = !DILocation(line: 152, column: 9, scope: !776)
!780 = !DILocation(line: 152, column: 47, scope: !776)
!781 = !DILocation(line: 152, column: 9, scope: !765)
!782 = !DILocation(line: 155, column: 22, scope: !765)
!783 = !DILocation(line: 155, column: 19, scope: !765)
!784 = !DILocation(line: 155, column: 8, scope: !765)
!785 = !DILocation(line: 155, column: 16, scope: !765)
!786 = !DILocation(line: 157, column: 14, scope: !765)
!787 = !DILocation(line: 159, column: 5, scope: !765)
!788 = !DILocation(line: 160, column: 1, scope: !765)
!789 = !DISubprogram(name: "fwrite", scope: !729, file: !729, line: 681, type: !790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!790 = !DISubroutineType(types: !791)
!791 = !{!52, !792, !128, !128, !795}
!792 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !793)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!795 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
