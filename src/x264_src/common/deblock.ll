; ModuleID = 'x264_src/common/deblock.c'
source_filename = "x264_src/common/deblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i_alpha_table = internal unnamed_addr constant [76 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\04\05\06\07\08\09\0A\0C\0D\0F\11\14\16\19\1C $(-28?GPZeq\7F\90\A2\B6\CB\E2\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@i_beta_table = internal unnamed_addr constant [76 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\03\03\03\03\04\04\04\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D\0E\0E\0F\0F\10\10\11\11\12\12\12\12\12\12\12\12\12\12\12\12\12\12", align 16
@i_tc0_table = internal unnamed_addr constant [76 x [4 x i8]] [[4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\01", [4 x i8] c"\FF\00\00\01", [4 x i8] c"\FF\00\00\01", [4 x i8] c"\FF\00\00\01", [4 x i8] c"\FF\00\01\01", [4 x i8] c"\FF\00\01\01", [4 x i8] c"\FF\01\01\01", [4 x i8] c"\FF\01\01\01", [4 x i8] c"\FF\01\01\01", [4 x i8] c"\FF\01\01\01", [4 x i8] c"\FF\01\01\02", [4 x i8] c"\FF\01\01\02", [4 x i8] c"\FF\01\01\02", [4 x i8] c"\FF\01\01\02", [4 x i8] c"\FF\01\02\03", [4 x i8] c"\FF\01\02\03", [4 x i8] c"\FF\02\02\03", [4 x i8] c"\FF\02\02\04", [4 x i8] c"\FF\02\03\04", [4 x i8] c"\FF\02\03\04", [4 x i8] c"\FF\03\03\05", [4 x i8] c"\FF\03\04\06", [4 x i8] c"\FF\03\04\06", [4 x i8] c"\FF\04\05\07", [4 x i8] c"\FF\04\05\08", [4 x i8] c"\FF\04\06\09", [4 x i8] c"\FF\05\07\0A", [4 x i8] c"\FF\06\08\0B", [4 x i8] c"\FF\06\08\0D", [4 x i8] c"\FF\07\0A\0E", [4 x i8] c"\FF\08\0B\10", [4 x i8] c"\FF\09\0C\12", [4 x i8] c"\FF\0A\0D\14", [4 x i8] c"\FF\0B\0F\17", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19"], align 16

; Function Attrs: nounwind uwtable
define dso_local void @x264_frame_deblock_row(ptr noundef %h, i32 noundef %mb_y) local_unnamed_addr #0 {
entry:
  %tc.i1092 = alloca [4 x i8], align 1
  %tc.i1060 = alloca [4 x i8], align 1
  %tc.i1028 = alloca [4 x i8], align 1
  %tc.i996 = alloca [4 x i8], align 1
  %tc.i964 = alloca [4 x i8], align 1
  %tc.i932 = alloca [4 x i8], align 1
  %tc.i872 = alloca [4 x i8], align 1
  %tc.i840 = alloca [4 x i8], align 1
  %tc.i808 = alloca [4 x i8], align 1
  %tc.i776 = alloca [4 x i8], align 1
  %tc.i748 = alloca [4 x i8], align 1
  %tc.i = alloca [4 x i8], align 1
  %b_mbaff = getelementptr inbounds i8, ptr %h, i64 7268
  %0 = load i32, ptr %b_mbaff, align 4
  %i_alpha_c0_offset = getelementptr inbounds i8, ptr %h, i64 13888
  %1 = load i32, ptr %i_alpha_c0_offset, align 16
  %i_beta_offset = getelementptr inbounds i8, ptr %h, i64 13892
  %2 = load i32, ptr %i_beta_offset, align 4
  %. = tail call i32 @llvm.smin.i32(i32 %1, i32 %2)
  %i_chroma_qp_offset = getelementptr inbounds i8, ptr %h, i64 408
  %3 = load i32, ptr %i_chroma_qp_offset, align 8
  %cond14 = tail call i32 @llvm.smax.i32(i32 %3, i32 0)
  %4 = add i32 %., %cond14
  %sub15 = sub i32 15, %4
  %fdec = getelementptr inbounds i8, ptr %h, i64 14688
  %5 = load ptr, ptr %fdec, align 16
  %i_stride = getelementptr inbounds i8, ptr %5, i64 104
  %6 = load i32, ptr %i_stride, align 8
  %shl = shl i32 %6, %0
  %arrayidx18 = getelementptr inbounds i8, ptr %5, i64 108
  %7 = load i32, ptr %arrayidx18, align 4
  %shl19 = shl i32 %7, %0
  %scratch_buffer = getelementptr inbounds i8, ptr %h, i64 31176
  %8 = load ptr, ptr %scratch_buffer, align 8
  %pps = getelementptr inbounds i8, ptr %h, i64 3328
  %9 = load ptr, ptr %pps, align 16
  %b_cabac = getelementptr inbounds i8, ptr %9, i64 8
  %10 = load i32, ptr %b_cabac, align 8
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %b_transform_8x8_mode = getelementptr inbounds i8, ptr %9, i64 60
  %11 = load i32, ptr %b_transform_8x8_mode, align 4
  %tobool21.not = icmp eq i32 %11, 0
  br i1 %tobool21.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %non_zero_count.i1235 = getelementptr inbounds i8, ptr %h, i64 16656
  %12 = load ptr, ptr %non_zero_count.i1235, align 16
  %sps.i1236 = getelementptr inbounds i8, ptr %h, i64 3200
  %13 = load ptr, ptr %sps.i1236, align 16
  %i_mb_width.i1237 = getelementptr inbounds i8, ptr %13, i64 1084
  %14 = load i32, ptr %i_mb_width.i1237, align 4
  %mul.i1238 = mul nsw i32 %14, %mb_y
  %idx.ext.i1239 = sext i32 %mul.i1238 to i64
  %add.ptr.i1240 = getelementptr inbounds [6 x i32], ptr %12, i64 %idx.ext.i1239
  %mb_transform_size.i1241 = getelementptr inbounds i8, ptr %h, i64 17240
  %15 = load ptr, ptr %mb_transform_size.i1241, align 8
  %add.ptr6.i1242 = getelementptr inbounds i8, ptr %15, i64 %idx.ext.i1239
  %cmp79.i1243 = icmp sgt i32 %14, 0
  br i1 %cmp79.i1243, label %for.body.i1244, label %munge_cavlc_nnz_row.exit1272

for.body.i1244:                                   ; preds = %if.then, %for.inc.i1268
  %indvars.iv.i1245 = phi i64 [ %indvars.iv.next.i1269, %for.inc.i1268 ], [ 0, %if.then ]
  %add.ptr10.i1246 = getelementptr inbounds [16 x i8], ptr %8, i64 %indvars.iv.i1245
  %add.ptr12.i1247 = getelementptr inbounds [6 x i32], ptr %add.ptr.i1240, i64 %indvars.iv.i1245
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %add.ptr10.i1246, ptr noundef nonnull align 4 dereferenceable(16) %add.ptr12.i1247, i64 16, i1 false)
  %arrayidx.i1248 = getelementptr inbounds i8, ptr %add.ptr6.i1242, i64 %indvars.iv.i1245
  %16 = load i8, ptr %arrayidx.i1248, align 1
  %tobool.not.i1249 = icmp eq i8 %16, 0
  br i1 %tobool.not.i1249, label %for.inc.i1268, label %if.then.i1250

if.then.i1250:                                    ; preds = %for.body.i1244
  %17 = load i32, ptr %add.ptr12.i1247, align 4
  %arrayidx18.i1251 = getelementptr inbounds i8, ptr %add.ptr12.i1247, i64 4
  %18 = load i32, ptr %arrayidx18.i1251, align 4
  %or.i1252 = or i32 %18, %17
  %conv19.i1253 = and i32 %or.i1252, 65535
  %tobool20.not.i1254 = icmp eq i32 %conv19.i1253, 0
  %cond.i1255 = select i1 %tobool20.not.i1254, i32 0, i32 257
  %tobool21.not.i1256 = icmp ult i32 %or.i1252, 65536
  %cond22.i1257 = select i1 %tobool21.not.i1256, i32 0, i32 16842752
  %add.i1258 = or disjoint i32 %cond.i1255, %cond22.i1257
  store i32 %add.i1258, ptr %arrayidx18.i1251, align 4
  store i32 %add.i1258, ptr %add.ptr12.i1247, align 4
  %arrayidx31.i1259 = getelementptr inbounds i8, ptr %add.ptr12.i1247, i64 8
  %19 = load i32, ptr %arrayidx31.i1259, align 4
  %arrayidx34.i1260 = getelementptr inbounds i8, ptr %add.ptr12.i1247, i64 12
  %20 = load i32, ptr %arrayidx34.i1260, align 4
  %or35.i1261 = or i32 %20, %19
  %conv37.i1262 = and i32 %or35.i1261, 65535
  %tobool38.not.i1263 = icmp eq i32 %conv37.i1262, 0
  %cond39.i1264 = select i1 %tobool38.not.i1263, i32 0, i32 257
  %tobool41.not.i1265 = icmp ult i32 %or35.i1261, 65536
  %cond42.i1266 = select i1 %tobool41.not.i1265, i32 0, i32 16842752
  %add43.i1267 = or disjoint i32 %cond39.i1264, %cond42.i1266
  store i32 %add43.i1267, ptr %arrayidx34.i1260, align 4
  store i32 %add43.i1267, ptr %arrayidx31.i1259, align 4
  br label %for.inc.i1268

for.inc.i1268:                                    ; preds = %if.then.i1250, %for.body.i1244
  %indvars.iv.next.i1269 = add nuw nsw i64 %indvars.iv.i1245, 1
  %21 = load ptr, ptr %sps.i1236, align 16
  %i_mb_width8.i1270 = getelementptr inbounds i8, ptr %21, i64 1084
  %22 = load i32, ptr %i_mb_width8.i1270, align 4
  %23 = sext i32 %22 to i64
  %cmp.i1271 = icmp slt i64 %indvars.iv.next.i1269, %23
  br i1 %cmp.i1271, label %for.body.i1244, label %munge_cavlc_nnz_row.exit1272

munge_cavlc_nnz_row.exit1272:                     ; preds = %for.inc.i1268, %if.then
  %24 = phi i32 [ %14, %if.then ], [ %22, %for.inc.i1268 ]
  %25 = phi ptr [ %13, %if.then ], [ %21, %for.inc.i1268 ]
  %cmp.i = icmp sgt i32 %mb_y, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %munge_cavlc_nnz_row.exit1272
  %sub.i = add nsw i32 %mb_y, -1
  %idx.ext.i = sext i32 %24 to i64
  %add.ptr.i = getelementptr inbounds [16 x i8], ptr %8, i64 %idx.ext.i
  %26 = load ptr, ptr %non_zero_count.i1235, align 16
  %mul.i1200 = mul nsw i32 %24, %sub.i
  %idx.ext.i1201 = sext i32 %mul.i1200 to i64
  %add.ptr.i1202 = getelementptr inbounds [6 x i32], ptr %26, i64 %idx.ext.i1201
  %27 = load ptr, ptr %mb_transform_size.i1241, align 8
  %add.ptr6.i1204 = getelementptr inbounds i8, ptr %27, i64 %idx.ext.i1201
  %cmp79.i1205 = icmp sgt i32 %24, 0
  br i1 %cmp79.i1205, label %for.body.i1206, label %if.end.i

for.body.i1206:                                   ; preds = %if.then.i, %for.inc.i1230
  %indvars.iv.i1207 = phi i64 [ %indvars.iv.next.i1231, %for.inc.i1230 ], [ 0, %if.then.i ]
  %add.ptr10.i1208 = getelementptr inbounds [16 x i8], ptr %add.ptr.i, i64 %indvars.iv.i1207
  %add.ptr12.i1209 = getelementptr inbounds [6 x i32], ptr %add.ptr.i1202, i64 %indvars.iv.i1207
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %add.ptr10.i1208, ptr noundef nonnull align 4 dereferenceable(16) %add.ptr12.i1209, i64 16, i1 false)
  %arrayidx.i1210 = getelementptr inbounds i8, ptr %add.ptr6.i1204, i64 %indvars.iv.i1207
  %28 = load i8, ptr %arrayidx.i1210, align 1
  %tobool.not.i1211 = icmp eq i8 %28, 0
  br i1 %tobool.not.i1211, label %for.inc.i1230, label %if.then.i1212

if.then.i1212:                                    ; preds = %for.body.i1206
  %29 = load i32, ptr %add.ptr12.i1209, align 4
  %arrayidx18.i1213 = getelementptr inbounds i8, ptr %add.ptr12.i1209, i64 4
  %30 = load i32, ptr %arrayidx18.i1213, align 4
  %or.i1214 = or i32 %30, %29
  %conv19.i1215 = and i32 %or.i1214, 65535
  %tobool20.not.i1216 = icmp eq i32 %conv19.i1215, 0
  %cond.i1217 = select i1 %tobool20.not.i1216, i32 0, i32 257
  %tobool21.not.i1218 = icmp ult i32 %or.i1214, 65536
  %cond22.i1219 = select i1 %tobool21.not.i1218, i32 0, i32 16842752
  %add.i1220 = or disjoint i32 %cond.i1217, %cond22.i1219
  store i32 %add.i1220, ptr %arrayidx18.i1213, align 4
  store i32 %add.i1220, ptr %add.ptr12.i1209, align 4
  %arrayidx31.i1221 = getelementptr inbounds i8, ptr %add.ptr12.i1209, i64 8
  %31 = load i32, ptr %arrayidx31.i1221, align 4
  %arrayidx34.i1222 = getelementptr inbounds i8, ptr %add.ptr12.i1209, i64 12
  %32 = load i32, ptr %arrayidx34.i1222, align 4
  %or35.i1223 = or i32 %32, %31
  %conv37.i1224 = and i32 %or35.i1223, 65535
  %tobool38.not.i1225 = icmp eq i32 %conv37.i1224, 0
  %cond39.i1226 = select i1 %tobool38.not.i1225, i32 0, i32 257
  %tobool41.not.i1227 = icmp ult i32 %or35.i1223, 65536
  %cond42.i1228 = select i1 %tobool41.not.i1227, i32 0, i32 16842752
  %add43.i1229 = or disjoint i32 %cond39.i1226, %cond42.i1228
  store i32 %add43.i1229, ptr %arrayidx34.i1222, align 4
  store i32 %add43.i1229, ptr %arrayidx31.i1221, align 4
  br label %for.inc.i1230

for.inc.i1230:                                    ; preds = %if.then.i1212, %for.body.i1206
  %indvars.iv.next.i1231 = add nuw nsw i64 %indvars.iv.i1207, 1
  %33 = load ptr, ptr %sps.i1236, align 16
  %i_mb_width8.i1232 = getelementptr inbounds i8, ptr %33, i64 1084
  %34 = load i32, ptr %i_mb_width8.i1232, align 4
  %35 = sext i32 %34 to i64
  %cmp.i1233 = icmp slt i64 %indvars.iv.next.i1231, %35
  br i1 %cmp.i1233, label %for.body.i1206, label %if.end.i

if.end.i:                                         ; preds = %for.inc.i1230, %if.then.i, %munge_cavlc_nnz_row.exit1272
  %36 = phi ptr [ %25, %if.then.i ], [ %25, %munge_cavlc_nnz_row.exit1272 ], [ %33, %for.inc.i1230 ]
  %37 = load i32, ptr %b_mbaff, align 4
  %tobool.not.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i, label %if.end, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  %add.i = add nsw i32 %mb_y, 1
  %i_mb_width3.i = getelementptr inbounds i8, ptr %36, i64 1084
  %38 = load i32, ptr %i_mb_width3.i, align 4
  %mul.i = shl nsw i32 %38, 1
  %idx.ext4.i = sext i32 %mul.i to i64
  %add.ptr5.i = getelementptr inbounds [16 x i8], ptr %8, i64 %idx.ext4.i
  %39 = load ptr, ptr %non_zero_count.i1235, align 16
  %mul.i1162 = mul nsw i32 %38, %add.i
  %idx.ext.i1163 = sext i32 %mul.i1162 to i64
  %add.ptr.i1164 = getelementptr inbounds [6 x i32], ptr %39, i64 %idx.ext.i1163
  %40 = load ptr, ptr %mb_transform_size.i1241, align 8
  %add.ptr6.i1166 = getelementptr inbounds i8, ptr %40, i64 %idx.ext.i1163
  %cmp79.i1167 = icmp sgt i32 %38, 0
  br i1 %cmp79.i1167, label %for.body.i1168, label %munge_cavlc_nnz_row.exit1196

for.body.i1168:                                   ; preds = %if.then1.i, %for.inc.i1192
  %indvars.iv.i1169 = phi i64 [ %indvars.iv.next.i1193, %for.inc.i1192 ], [ 0, %if.then1.i ]
  %add.ptr10.i1170 = getelementptr inbounds [16 x i8], ptr %add.ptr5.i, i64 %indvars.iv.i1169
  %add.ptr12.i1171 = getelementptr inbounds [6 x i32], ptr %add.ptr.i1164, i64 %indvars.iv.i1169
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %add.ptr10.i1170, ptr noundef nonnull align 4 dereferenceable(16) %add.ptr12.i1171, i64 16, i1 false)
  %arrayidx.i1172 = getelementptr inbounds i8, ptr %add.ptr6.i1166, i64 %indvars.iv.i1169
  %41 = load i8, ptr %arrayidx.i1172, align 1
  %tobool.not.i1173 = icmp eq i8 %41, 0
  br i1 %tobool.not.i1173, label %for.inc.i1192, label %if.then.i1174

if.then.i1174:                                    ; preds = %for.body.i1168
  %42 = load i32, ptr %add.ptr12.i1171, align 4
  %arrayidx18.i1175 = getelementptr inbounds i8, ptr %add.ptr12.i1171, i64 4
  %43 = load i32, ptr %arrayidx18.i1175, align 4
  %or.i1176 = or i32 %43, %42
  %conv19.i1177 = and i32 %or.i1176, 65535
  %tobool20.not.i1178 = icmp eq i32 %conv19.i1177, 0
  %cond.i1179 = select i1 %tobool20.not.i1178, i32 0, i32 257
  %tobool21.not.i1180 = icmp ult i32 %or.i1176, 65536
  %cond22.i1181 = select i1 %tobool21.not.i1180, i32 0, i32 16842752
  %add.i1182 = or disjoint i32 %cond.i1179, %cond22.i1181
  store i32 %add.i1182, ptr %arrayidx18.i1175, align 4
  store i32 %add.i1182, ptr %add.ptr12.i1171, align 4
  %arrayidx31.i1183 = getelementptr inbounds i8, ptr %add.ptr12.i1171, i64 8
  %44 = load i32, ptr %arrayidx31.i1183, align 4
  %arrayidx34.i1184 = getelementptr inbounds i8, ptr %add.ptr12.i1171, i64 12
  %45 = load i32, ptr %arrayidx34.i1184, align 4
  %or35.i1185 = or i32 %45, %44
  %conv37.i1186 = and i32 %or35.i1185, 65535
  %tobool38.not.i1187 = icmp eq i32 %conv37.i1186, 0
  %cond39.i1188 = select i1 %tobool38.not.i1187, i32 0, i32 257
  %tobool41.not.i1189 = icmp ult i32 %or35.i1185, 65536
  %cond42.i1190 = select i1 %tobool41.not.i1189, i32 0, i32 16842752
  %add43.i1191 = or disjoint i32 %cond39.i1188, %cond42.i1190
  store i32 %add43.i1191, ptr %arrayidx34.i1184, align 4
  store i32 %add43.i1191, ptr %arrayidx31.i1183, align 4
  br label %for.inc.i1192

for.inc.i1192:                                    ; preds = %if.then.i1174, %for.body.i1168
  %indvars.iv.next.i1193 = add nuw nsw i64 %indvars.iv.i1169, 1
  %46 = load ptr, ptr %sps.i1236, align 16
  %i_mb_width8.i1194 = getelementptr inbounds i8, ptr %46, i64 1084
  %47 = load i32, ptr %i_mb_width8.i1194, align 4
  %48 = sext i32 %47 to i64
  %cmp.i1195 = icmp slt i64 %indvars.iv.next.i1193, %48
  br i1 %cmp.i1195, label %for.body.i1168, label %munge_cavlc_nnz_row.exit1196

munge_cavlc_nnz_row.exit1196:                     ; preds = %for.inc.i1192, %if.then1.i
  %49 = phi i32 [ %38, %if.then1.i ], [ %47, %for.inc.i1192 ]
  br i1 %cmp.i, label %if.then7.i, label %if.end

if.then7.i:                                       ; preds = %munge_cavlc_nnz_row.exit1196
  %sub8.i = add nsw i32 %mb_y, -2
  %mul11.i = mul nsw i32 %49, 3
  %idx.ext12.i = sext i32 %mul11.i to i64
  %add.ptr13.i = getelementptr inbounds [16 x i8], ptr %8, i64 %idx.ext12.i
  %50 = load ptr, ptr %non_zero_count.i1235, align 16
  %mul.i1150 = mul nsw i32 %49, %sub8.i
  %idx.ext.i1151 = sext i32 %mul.i1150 to i64
  %add.ptr.i1152 = getelementptr inbounds [6 x i32], ptr %50, i64 %idx.ext.i1151
  %51 = load ptr, ptr %mb_transform_size.i1241, align 8
  %add.ptr6.i = getelementptr inbounds i8, ptr %51, i64 %idx.ext.i1151
  %cmp79.i = icmp sgt i32 %49, 0
  br i1 %cmp79.i, label %for.body.i, label %if.end

for.body.i:                                       ; preds = %if.then7.i, %for.inc.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ 0, %if.then7.i ]
  %add.ptr10.i = getelementptr inbounds [16 x i8], ptr %add.ptr13.i, i64 %indvars.iv.i
  %add.ptr12.i = getelementptr inbounds [6 x i32], ptr %add.ptr.i1152, i64 %indvars.iv.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %add.ptr10.i, ptr noundef nonnull align 4 dereferenceable(16) %add.ptr12.i, i64 16, i1 false)
  %arrayidx.i1153 = getelementptr inbounds i8, ptr %add.ptr6.i, i64 %indvars.iv.i
  %52 = load i8, ptr %arrayidx.i1153, align 1
  %tobool.not.i1154 = icmp eq i8 %52, 0
  br i1 %tobool.not.i1154, label %for.inc.i, label %if.then.i1155

if.then.i1155:                                    ; preds = %for.body.i
  %53 = load i32, ptr %add.ptr12.i, align 4
  %arrayidx18.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 4
  %54 = load i32, ptr %arrayidx18.i, align 4
  %or.i = or i32 %54, %53
  %conv19.i1156 = and i32 %or.i, 65535
  %tobool20.not.i = icmp eq i32 %conv19.i1156, 0
  %cond.i = select i1 %tobool20.not.i, i32 0, i32 257
  %tobool21.not.i = icmp ult i32 %or.i, 65536
  %cond22.i = select i1 %tobool21.not.i, i32 0, i32 16842752
  %add.i1157 = or disjoint i32 %cond.i, %cond22.i
  store i32 %add.i1157, ptr %arrayidx18.i, align 4
  store i32 %add.i1157, ptr %add.ptr12.i, align 4
  %arrayidx31.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 8
  %55 = load i32, ptr %arrayidx31.i, align 4
  %arrayidx34.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 12
  %56 = load i32, ptr %arrayidx34.i, align 4
  %or35.i = or i32 %56, %55
  %conv37.i = and i32 %or35.i, 65535
  %tobool38.not.i = icmp eq i32 %conv37.i, 0
  %cond39.i = select i1 %tobool38.not.i, i32 0, i32 257
  %tobool41.not.i = icmp ult i32 %or35.i, 65536
  %cond42.i = select i1 %tobool41.not.i, i32 0, i32 16842752
  %add43.i = or disjoint i32 %cond39.i, %cond42.i
  store i32 %add43.i, ptr %arrayidx34.i, align 4
  store i32 %add43.i, ptr %arrayidx31.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i1155, %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %57 = load ptr, ptr %sps.i1236, align 16
  %i_mb_width8.i = getelementptr inbounds i8, ptr %57, i64 1084
  %58 = load i32, ptr %i_mb_width8.i, align 4
  %59 = sext i32 %58 to i64
  %cmp.i1158 = icmp slt i64 %indvars.iv.next.i, %59
  br i1 %cmp.i1158, label %for.body.i, label %if.end

if.end:                                           ; preds = %for.inc.i, %munge_cavlc_nnz_row.exit1196, %if.end.i, %if.then7.i, %land.lhs.true, %entry
  %sps = getelementptr inbounds i8, ptr %h, i64 3200
  %60 = load ptr, ptr %sps, align 16
  %i_mb_width1329 = getelementptr inbounds i8, ptr %60, i64 1084
  %61 = load i32, ptr %i_mb_width1329, align 4
  %cmp221330 = icmp sgt i32 %61, 0
  br i1 %cmp221330, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %i_mb_xy = getelementptr inbounds i8, ptr %h, i64 16392
  %mb_transform_size = getelementptr inbounds i8, ptr %h, i64 17240
  %type = getelementptr inbounds i8, ptr %h, i64 16616
  %deblock_strength = getelementptr inbounds i8, ptr %h, i64 31232
  %mul = shl i32 %6, 4
  %mul69 = shl i32 %7, 3
  %tobool86.not = icmp eq i32 %0, 0
  %mul91 = mul nsw i32 %6, 15
  %idx.ext92 = sext i32 %mul91 to i64
  %idx.neg = sub nsw i64 0, %idx.ext92
  %mul94 = mul nsw i32 %7, 7
  %idx.ext95 = sext i32 %mul94 to i64
  %idx.neg96 = sub nsw i64 0, %idx.ext95
  %qp104 = getelementptr inbounds i8, ptr %h, i64 16632
  %chroma_qp_table = getelementptr inbounds i8, ptr %h, i64 7216
  %i_neighbour = getelementptr inbounds i8, ptr %h, i64 16488
  %i_mb_left_xy = getelementptr inbounds i8, ptr %h, i64 16600
  %loopf207 = getelementptr inbounds i8, ptr %h, i64 33256
  %arrayidx30.i = getelementptr inbounds i8, ptr %tc.i, i64 1
  %arrayidx40.i = getelementptr inbounds i8, ptr %tc.i, i64 2
  %arrayidx50.i = getelementptr inbounds i8, ptr %tc.i, i64 3
  %deblock_chroma = getelementptr inbounds i8, ptr %h, i64 33272
  %arrayidx30.i769 = getelementptr inbounds i8, ptr %tc.i748, i64 1
  %arrayidx40.i772 = getelementptr inbounds i8, ptr %tc.i748, i64 2
  %arrayidx50.i774 = getelementptr inbounds i8, ptr %tc.i748, i64 3
  %deblock_luma_intra = getelementptr inbounds i8, ptr %h, i64 33288
  %deblock_chroma_intra = getelementptr inbounds i8, ptr %h, i64 33304
  %arrayidx30.i799 = getelementptr inbounds i8, ptr %tc.i776, i64 1
  %arrayidx40.i803 = getelementptr inbounds i8, ptr %tc.i776, i64 2
  %arrayidx50.i806 = getelementptr inbounds i8, ptr %tc.i776, i64 3
  %arrayidx30.i831 = getelementptr inbounds i8, ptr %tc.i808, i64 1
  %arrayidx40.i835 = getelementptr inbounds i8, ptr %tc.i808, i64 2
  %arrayidx50.i838 = getelementptr inbounds i8, ptr %tc.i808, i64 3
  %arrayidx30.i863 = getelementptr inbounds i8, ptr %tc.i840, i64 1
  %arrayidx40.i867 = getelementptr inbounds i8, ptr %tc.i840, i64 2
  %arrayidx50.i870 = getelementptr inbounds i8, ptr %tc.i840, i64 3
  %arrayidx30.i895 = getelementptr inbounds i8, ptr %tc.i872, i64 1
  %arrayidx40.i899 = getelementptr inbounds i8, ptr %tc.i872, i64 2
  %arrayidx50.i902 = getelementptr inbounds i8, ptr %tc.i872, i64 3
  %i_mb_top_xy = getelementptr inbounds i8, ptr %h, i64 16604
  %arrayidx379 = getelementptr inbounds i8, ptr %h, i64 33264
  %arrayidx30.i955 = getelementptr inbounds i8, ptr %tc.i932, i64 1
  %arrayidx40.i959 = getelementptr inbounds i8, ptr %tc.i932, i64 2
  %arrayidx50.i962 = getelementptr inbounds i8, ptr %tc.i932, i64 3
  %arrayidx391 = getelementptr inbounds i8, ptr %h, i64 33280
  %arrayidx30.i987 = getelementptr inbounds i8, ptr %tc.i964, i64 1
  %arrayidx40.i991 = getelementptr inbounds i8, ptr %tc.i964, i64 2
  %arrayidx50.i994 = getelementptr inbounds i8, ptr %tc.i964, i64 3
  %arrayidx348 = getelementptr inbounds i8, ptr %h, i64 33296
  %arrayidx360 = getelementptr inbounds i8, ptr %h, i64 33312
  %mul401 = shl nsw i32 %shl, 2
  %idx.ext402 = sext i32 %mul401 to i64
  %arrayidx30.i1019 = getelementptr inbounds i8, ptr %tc.i996, i64 1
  %arrayidx40.i1023 = getelementptr inbounds i8, ptr %tc.i996, i64 2
  %arrayidx50.i1026 = getelementptr inbounds i8, ptr %tc.i996, i64 3
  %mul414 = shl nsw i32 %shl, 3
  %idx.ext415 = sext i32 %mul414 to i64
  %arrayidx30.i1051 = getelementptr inbounds i8, ptr %tc.i1028, i64 1
  %arrayidx40.i1055 = getelementptr inbounds i8, ptr %tc.i1028, i64 2
  %arrayidx50.i1058 = getelementptr inbounds i8, ptr %tc.i1028, i64 3
  %mul423 = shl nsw i32 %shl19, 2
  %idx.ext424 = sext i32 %mul423 to i64
  %arrayidx30.i1083 = getelementptr inbounds i8, ptr %tc.i1060, i64 1
  %arrayidx40.i1087 = getelementptr inbounds i8, ptr %tc.i1060, i64 2
  %arrayidx50.i1090 = getelementptr inbounds i8, ptr %tc.i1060, i64 3
  %mul440 = mul nsw i32 %shl, 12
  %idx.ext441 = sext i32 %mul440 to i64
  %arrayidx30.i1115 = getelementptr inbounds i8, ptr %tc.i1092, i64 1
  %arrayidx40.i1119 = getelementptr inbounds i8, ptr %tc.i1092, i64 2
  %arrayidx50.i1122 = getelementptr inbounds i8, ptr %tc.i1092, i64 3
  %not = xor i32 %0, -1
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end452, %if.end
  %62 = phi ptr [ %60, %if.end ], [ %305, %if.end452 ]
  %mb_y.addr.0.lcssa = phi i32 [ %mb_y, %if.end ], [ %xor, %if.end452 ]
  %.lcssa = phi i32 [ %61, %if.end ], [ %306, %if.end452 ]
  %63 = load ptr, ptr %pps, align 16
  %b_cabac456 = getelementptr inbounds i8, ptr %63, i64 8
  %64 = load i32, ptr %b_cabac456, align 8
  %tobool457.not = icmp eq i32 %64, 0
  br i1 %tobool457.not, label %land.lhs.true458, label %if.end463

for.body:                                         ; preds = %for.body.lr.ph, %if.end452
  %mb_y.addr.01332 = phi i32 [ %mb_y, %for.body.lr.ph ], [ %xor, %if.end452 ]
  %mb_x.01331 = phi i32 [ 0, %for.body.lr.ph ], [ %add454, %if.end452 ]
  %65 = load ptr, ptr %fdec, align 16
  call void @x264_prefetch_fenc(ptr noundef nonnull %h, ptr noundef %65, i32 noundef %mb_x.01331, i32 noundef %mb_y.addr.01332) #12
  call void @x264_macroblock_cache_load_neighbours_deblock(ptr noundef nonnull %h, i32 noundef %mb_x.01331, i32 noundef %mb_y.addr.01332) #12
  %66 = load i32, ptr %i_mb_xy, align 8
  %67 = load ptr, ptr %mb_transform_size, align 8
  %idxprom = sext i32 %66 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %67, i64 %idxprom
  %68 = load i8, ptr %arrayidx27, align 1
  %69 = load ptr, ptr %type, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %69, i64 %idxprom
  %70 = load i8, ptr %arrayidx30, align 1
  %switch.selectcmp = icmp ult i8 %70, 4
  %and = and i32 %mb_y.addr.01332, %0
  %idxprom56 = sext i32 %and to i64
  %arrayidx57 = getelementptr inbounds [2 x ptr], ptr %deblock_strength, i64 0, i64 %idxprom56
  %71 = load ptr, ptr %arrayidx57, align 8
  %idxprom58 = zext nneg i32 %mb_x.01331 to i64
  %arrayidx59 = getelementptr inbounds [2 x [4 x [4 x i8]]], ptr %71, i64 %idxprom58
  %72 = load ptr, ptr %fdec, align 16
  %plane = getelementptr inbounds i8, ptr %72, i64 152
  %73 = load ptr, ptr %plane, align 8
  %mul62 = mul i32 %mul, %mb_y.addr.01332
  %idx.ext = sext i32 %mul62 to i64
  %add.ptr = getelementptr inbounds i8, ptr %73, i64 %idx.ext
  %mul63 = shl nsw i32 %mb_x.01331, 4
  %idx.ext64 = zext nneg i32 %mul63 to i64
  %add.ptr65 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext64
  %arrayidx68 = getelementptr inbounds i8, ptr %72, i64 160
  %74 = load ptr, ptr %arrayidx68, align 8
  %mul70 = mul i32 %mul69, %mb_y.addr.01332
  %idx.ext71 = sext i32 %mul70 to i64
  %add.ptr72 = getelementptr inbounds i8, ptr %74, i64 %idx.ext71
  %mul73 = shl nsw i32 %mb_x.01331, 3
  %idx.ext74 = zext nneg i32 %mul73 to i64
  %add.ptr75 = getelementptr inbounds i8, ptr %add.ptr72, i64 %idx.ext74
  %arrayidx78 = getelementptr inbounds i8, ptr %72, i64 168
  %75 = load ptr, ptr %arrayidx78, align 8
  %add.ptr82 = getelementptr inbounds i8, ptr %75, i64 %idx.ext71
  %add.ptr85 = getelementptr inbounds i8, ptr %add.ptr82, i64 %idx.ext74
  %and88 = and i32 %mb_y.addr.01332, 1
  %tobool89.not = icmp eq i32 %and88, 0
  %or.cond680 = or i1 %tobool86.not, %tobool89.not
  %pixv.0.idx = select i1 %or.cond680, i64 0, i64 %idx.neg96
  %pixv.0 = getelementptr inbounds i8, ptr %add.ptr85, i64 %pixv.0.idx
  %pixu.0 = getelementptr inbounds i8, ptr %add.ptr75, i64 %pixv.0.idx
  %pixy.0.idx = select i1 %or.cond680, i64 0, i64 %idx.neg
  %pixy.0 = getelementptr inbounds i8, ptr %add.ptr65, i64 %pixy.0.idx
  %76 = load ptr, ptr %qp104, align 8
  %arrayidx106 = getelementptr inbounds i8, ptr %76, i64 %idxprom
  %77 = load i8, ptr %arrayidx106, align 1
  %conv107 = sext i8 %77 to i32
  %78 = load ptr, ptr %chroma_qp_table, align 16
  %idxprom108 = sext i8 %77 to i64
  %arrayidx109 = getelementptr inbounds i8, ptr %78, i64 %idxprom108
  %79 = load i8, ptr %arrayidx109, align 1
  %conv110 = zext i8 %79 to i32
  %cmp116 = icmp eq i8 %70, 6
  %cmp119 = icmp sge i32 %sub15, %conv107
  %80 = or i1 %cmp116, %cmp119
  %81 = load i32, ptr %i_neighbour, align 8
  %and124 = and i32 %81, 1
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %if.end219, label %if.then126

if.then126:                                       ; preds = %for.body
  %82 = load i32, ptr %i_mb_left_xy, align 8
  %idxprom130 = sext i32 %82 to i64
  %arrayidx131 = getelementptr inbounds i8, ptr %76, i64 %idxprom130
  %83 = load i8, ptr %arrayidx131, align 1
  %conv132 = sext i8 %83 to i32
  %add = add nsw i32 %conv107, 1
  %add133 = add nsw i32 %add, %conv132
  %shr = ashr i32 %add133, 1
  %idxprom139 = sext i8 %83 to i64
  %arrayidx140 = getelementptr inbounds i8, ptr %78, i64 %idxprom139
  %84 = load i8, ptr %arrayidx140, align 1
  %conv141 = zext i8 %84 to i32
  %add142 = add nuw nsw i32 %conv110, 1
  %add143 = add nuw nsw i32 %add142, %conv141
  %shr144 = lshr i32 %add143, 1
  %arrayidx150 = getelementptr inbounds i8, ptr %69, i64 %idxprom130
  %85 = load i8, ptr %arrayidx150, align 1
  %switch.selectcmp685 = icmp ult i8 %85, 4
  %or.cond = or i1 %switch.selectcmp, %switch.selectcmp685
  br i1 %or.cond, label %do.body, label %do.body202

do.body:                                          ; preds = %if.then126
  %h.val693 = load i32, ptr %i_alpha_c0_offset, align 16
  %h.val694 = load i32, ptr %i_beta_offset, align 4
  %add.i719 = add nsw i32 %shr, 12
  %add1.i = add i32 %h.val693, %add.i719
  %idxprom.i = sext i32 %add1.i to i64
  %add4.i = add i32 %h.val694, %add.i719
  %idxprom5.i = sext i32 %add4.i to i64
  %86 = add nsw i64 %idxprom.i, -28
  %tobool.i = icmp ult i64 %86, 48
  %87 = add nsw i64 %idxprom5.i, -28
  %tobool8.i = icmp ult i64 %87, 48
  %or.cond.i = select i1 %tobool.i, i1 %tobool8.i, i1 false
  br i1 %or.cond.i, label %if.end.i720, label %deblock_edge_intra.exit

if.end.i720:                                      ; preds = %do.body
  %arrayidx6.i = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i
  %88 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %88 to i32
  %arrayidx.i = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i
  %89 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %89 to i32
  %90 = load ptr, ptr %deblock_luma_intra, align 8
  call void %90(ptr noundef %pixy.0, i32 noundef %shl, i32 noundef %conv.i, i32 noundef %conv7.i) #12
  %h.val691.pre = load i32, ptr %i_alpha_c0_offset, align 16
  %h.val692.pre = load i32, ptr %i_beta_offset, align 4
  br label %deblock_edge_intra.exit

deblock_edge_intra.exit:                          ; preds = %do.body, %if.end.i720
  %h.val692 = phi i32 [ %h.val694, %do.body ], [ %h.val692.pre, %if.end.i720 ]
  %h.val691 = phi i32 [ %h.val693, %do.body ], [ %h.val691.pre, %if.end.i720 ]
  %add.i721 = add nuw nsw i32 %shr144, 12
  %add1.i722 = add i32 %h.val691, %add.i721
  %idxprom.i723 = sext i32 %add1.i722 to i64
  %add4.i726 = add i32 %h.val692, %add.i721
  %idxprom5.i727 = sext i32 %add4.i726 to i64
  %91 = add nsw i64 %idxprom.i723, -28
  %tobool.i730 = icmp ult i64 %91, 48
  %92 = add nsw i64 %idxprom5.i727, -28
  %tobool8.i731 = icmp ult i64 %92, 48
  %or.cond.i732 = select i1 %tobool.i730, i1 %tobool8.i731, i1 false
  br i1 %or.cond.i732, label %if.end.i733, label %if.end219

if.end.i733:                                      ; preds = %deblock_edge_intra.exit
  %arrayidx6.i728 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i727
  %93 = load i8, ptr %arrayidx6.i728, align 1
  %conv7.i729 = zext i8 %93 to i32
  %arrayidx.i724 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i723
  %94 = load i8, ptr %arrayidx.i724, align 1
  %conv.i725 = zext i8 %94 to i32
  %95 = load ptr, ptr %deblock_chroma_intra, align 8
  call void %95(ptr noundef %pixu.0, i32 noundef %shl19, i32 noundef %conv.i725, i32 noundef %conv7.i729) #12
  call void %95(ptr noundef %pixv.0, i32 noundef %shl19, i32 noundef %conv.i725, i32 noundef %conv7.i729) #12
  br label %if.end219

do.body202:                                       ; preds = %if.then126
  %96 = load ptr, ptr %loopf207, align 8
  %h.val717 = load i32, ptr %i_alpha_c0_offset, align 16
  %h.val718 = load i32, ptr %i_beta_offset, align 4
  %add.i735 = add nsw i32 %shr, 12
  %add1.i736 = add i32 %h.val717, %add.i735
  %idxprom.i737 = sext i32 %add1.i736 to i64
  %arrayidx.i738 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i737
  %97 = load i8, ptr %arrayidx.i738, align 1
  %add4.i740 = add i32 %h.val718, %add.i735
  %idxprom5.i741 = sext i32 %add4.i740 to i64
  %arrayidx6.i742 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i741
  %98 = load i8, ptr %arrayidx6.i742, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i) #12
  %99 = load i32, ptr %arrayidx59, align 4
  %tobool.i744 = icmp ne i32 %99, 0
  %100 = add nsw i64 %idxprom.i737, -28
  %tobool8.i745 = icmp ult i64 %100, 48
  %or.cond.i746 = select i1 %tobool.i744, i1 %tobool8.i745, i1 false
  %101 = add nsw i64 %idxprom5.i741, -28
  %tobool10.i = icmp ult i64 %101, 48
  %or.cond58.i = select i1 %or.cond.i746, i1 %tobool10.i, i1 false
  br i1 %or.cond58.i, label %if.end.i747, label %deblock_edge.exit

if.end.i747:                                      ; preds = %do.body202
  %conv7.i743 = zext i8 %98 to i32
  %conv.i739 = zext i8 %97 to i32
  %102 = lshr i32 %99, 24
  %idxprom45.i = zext nneg i32 %102 to i64
  %103 = lshr i32 %99, 16
  %104 = lshr i32 %99, 8
  %105 = and i32 %99, 255
  %idxprom15.i = zext nneg i32 %105 to i64
  %arrayidx16.i = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i737, i64 %idxprom15.i
  %106 = load i8, ptr %arrayidx16.i, align 1
  store i8 %106, ptr %tc.i, align 1
  %107 = and i32 %104, 255
  %idxprom25.i = zext nneg i32 %107 to i64
  %arrayidx26.i = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i737, i64 %idxprom25.i
  %108 = load i8, ptr %arrayidx26.i, align 1
  store i8 %108, ptr %arrayidx30.i, align 1
  %109 = and i32 %103, 255
  %idxprom35.i = zext nneg i32 %109 to i64
  %arrayidx36.i = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i737, i64 %idxprom35.i
  %110 = load i8, ptr %arrayidx36.i, align 1
  store i8 %110, ptr %arrayidx40.i, align 1
  %arrayidx46.i = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i737, i64 %idxprom45.i
  %111 = load i8, ptr %arrayidx46.i, align 1
  store i8 %111, ptr %arrayidx50.i, align 1
  call void %96(ptr noundef %pixy.0, i32 noundef %shl, i32 noundef %conv.i739, i32 noundef %conv7.i743, ptr noundef nonnull %tc.i) #12
  %h.val715.pre = load i32, ptr %i_alpha_c0_offset, align 16
  %h.val716.pre = load i32, ptr %i_beta_offset, align 4
  br label %deblock_edge.exit

deblock_edge.exit:                                ; preds = %do.body202, %if.end.i747
  %h.val716 = phi i32 [ %h.val718, %do.body202 ], [ %h.val716.pre, %if.end.i747 ]
  %h.val715 = phi i32 [ %h.val717, %do.body202 ], [ %h.val715.pre, %if.end.i747 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i) #12
  %112 = load ptr, ptr %deblock_chroma, align 8
  %add.i749 = add nuw nsw i32 %shr144, 12
  %add1.i750 = add i32 %h.val715, %add.i749
  %idxprom.i751 = sext i32 %add1.i750 to i64
  %arrayidx.i752 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i751
  %113 = load i8, ptr %arrayidx.i752, align 1
  %add4.i754 = add i32 %h.val716, %add.i749
  %idxprom5.i755 = sext i32 %add4.i754 to i64
  %arrayidx6.i756 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i755
  %114 = load i8, ptr %arrayidx6.i756, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i748) #12
  %115 = load i32, ptr %arrayidx59, align 4
  %tobool.i758 = icmp ne i32 %115, 0
  %116 = add nsw i64 %idxprom.i751, -28
  %tobool8.i759 = icmp ult i64 %116, 48
  %or.cond.i760 = select i1 %tobool.i758, i1 %tobool8.i759, i1 false
  %117 = add nsw i64 %idxprom5.i755, -28
  %tobool10.i761 = icmp ult i64 %117, 48
  %or.cond58.i762 = select i1 %or.cond.i760, i1 %tobool10.i761, i1 false
  br i1 %or.cond58.i762, label %if.end.i763, label %deblock_edge.exit775

if.end.i763:                                      ; preds = %deblock_edge.exit
  %conv7.i757 = zext i8 %114 to i32
  %conv.i753 = zext i8 %113 to i32
  %118 = lshr i32 %115, 24
  %idxprom45.i764 = zext nneg i32 %118 to i64
  %119 = lshr i32 %115, 16
  %120 = lshr i32 %115, 8
  %121 = and i32 %115, 255
  %idxprom15.i765 = zext nneg i32 %121 to i64
  %arrayidx16.i766 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i751, i64 %idxprom15.i765
  %122 = load i8, ptr %arrayidx16.i766, align 1
  %conv19.i = add i8 %122, 1
  store i8 %conv19.i, ptr %tc.i748, align 1
  %123 = and i32 %120, 255
  %idxprom25.i767 = zext nneg i32 %123 to i64
  %arrayidx26.i768 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i751, i64 %idxprom25.i767
  %124 = load i8, ptr %arrayidx26.i768, align 1
  %conv29.i = add i8 %124, 1
  store i8 %conv29.i, ptr %arrayidx30.i769, align 1
  %125 = and i32 %119, 255
  %idxprom35.i770 = zext nneg i32 %125 to i64
  %arrayidx36.i771 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i751, i64 %idxprom35.i770
  %126 = load i8, ptr %arrayidx36.i771, align 1
  %conv39.i = add i8 %126, 1
  store i8 %conv39.i, ptr %arrayidx40.i772, align 1
  %arrayidx46.i773 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i751, i64 %idxprom45.i764
  %127 = load i8, ptr %arrayidx46.i773, align 1
  %conv49.i = add i8 %127, 1
  store i8 %conv49.i, ptr %arrayidx50.i774, align 1
  call void %112(ptr noundef %pixu.0, i32 noundef %shl19, i32 noundef %conv.i753, i32 noundef %conv7.i757, ptr noundef nonnull %tc.i748) #12
  call void %112(ptr noundef %pixv.0, i32 noundef %shl19, i32 noundef %conv.i753, i32 noundef %conv7.i757, ptr noundef nonnull %tc.i748) #12
  br label %deblock_edge.exit775

deblock_edge.exit775:                             ; preds = %deblock_edge.exit, %if.end.i763
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i748) #12
  br label %if.end219

if.end219:                                        ; preds = %if.end.i733, %deblock_edge_intra.exit, %deblock_edge.exit775, %for.body
  br i1 %80, label %if.end266, label %if.then221

if.then221:                                       ; preds = %if.end219
  %tobool222.not = icmp eq i8 %68, 0
  %.pre1339 = load ptr, ptr %loopf207, align 8
  %h.val711.pre1340 = load i32, ptr %i_alpha_c0_offset, align 16
  %h.val712.pre1342 = load i32, ptr %i_beta_offset, align 4
  br i1 %tobool222.not, label %do.body224, label %if.then221.do.body235_crit_edge

if.then221.do.body235_crit_edge:                  ; preds = %if.then221
  %.pre1366 = add nsw i32 %conv107, 12
  br label %do.body235

do.body224:                                       ; preds = %if.then221
  %arrayidx227 = getelementptr inbounds i8, ptr %arrayidx59, i64 4
  %add.i777 = add nsw i32 %conv107, 12
  %add1.i778 = add i32 %h.val711.pre1340, %add.i777
  %idxprom.i779 = sext i32 %add1.i778 to i64
  %arrayidx.i780 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i779
  %128 = load i8, ptr %arrayidx.i780, align 1
  %add4.i782 = add i32 %h.val712.pre1342, %add.i777
  %idxprom5.i783 = sext i32 %add4.i782 to i64
  %arrayidx6.i784 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i783
  %129 = load i8, ptr %arrayidx6.i784, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i776) #12
  %130 = load i32, ptr %arrayidx227, align 4
  %tobool.i786 = icmp ne i32 %130, 0
  %131 = add nsw i64 %idxprom.i779, -28
  %tobool8.i787 = icmp ult i64 %131, 48
  %or.cond.i788 = select i1 %tobool.i786, i1 %tobool8.i787, i1 false
  %132 = add nsw i64 %idxprom5.i783, -28
  %tobool10.i789 = icmp ult i64 %132, 48
  %or.cond58.i790 = select i1 %or.cond.i788, i1 %tobool10.i789, i1 false
  br i1 %or.cond58.i790, label %if.end.i791, label %deblock_edge.exit807

if.end.i791:                                      ; preds = %do.body224
  %conv7.i785 = zext i8 %129 to i32
  %conv.i781 = zext i8 %128 to i32
  %add.ptr225 = getelementptr inbounds i8, ptr %pixy.0, i64 4
  %133 = lshr i32 %130, 24
  %idxprom45.i792 = zext nneg i32 %133 to i64
  %134 = lshr i32 %130, 16
  %135 = lshr i32 %130, 8
  %136 = and i32 %130, 255
  %idxprom15.i793 = zext nneg i32 %136 to i64
  %arrayidx16.i794 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i779, i64 %idxprom15.i793
  %137 = load i8, ptr %arrayidx16.i794, align 1
  store i8 %137, ptr %tc.i776, align 1
  %138 = and i32 %135, 255
  %idxprom25.i796 = zext nneg i32 %138 to i64
  %arrayidx26.i797 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i779, i64 %idxprom25.i796
  %139 = load i8, ptr %arrayidx26.i797, align 1
  store i8 %139, ptr %arrayidx30.i799, align 1
  %140 = and i32 %134, 255
  %idxprom35.i800 = zext nneg i32 %140 to i64
  %arrayidx36.i801 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i779, i64 %idxprom35.i800
  %141 = load i8, ptr %arrayidx36.i801, align 1
  store i8 %141, ptr %arrayidx40.i803, align 1
  %arrayidx46.i804 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i779, i64 %idxprom45.i792
  %142 = load i8, ptr %arrayidx46.i804, align 1
  store i8 %142, ptr %arrayidx50.i806, align 1
  call void %.pre1339(ptr noundef nonnull %add.ptr225, i32 noundef %shl, i32 noundef %conv.i781, i32 noundef %conv7.i785, ptr noundef nonnull %tc.i776) #12
  %.pre.pre = load ptr, ptr %loopf207, align 8
  %h.val711.pre.pre = load i32, ptr %i_alpha_c0_offset, align 16
  %h.val712.pre.pre = load i32, ptr %i_beta_offset, align 4
  br label %deblock_edge.exit807

deblock_edge.exit807:                             ; preds = %do.body224, %if.end.i791
  %h.val712.pre = phi i32 [ %h.val712.pre1342, %do.body224 ], [ %h.val712.pre.pre, %if.end.i791 ]
  %h.val711.pre = phi i32 [ %h.val711.pre1340, %do.body224 ], [ %h.val711.pre.pre, %if.end.i791 ]
  %.pre = phi ptr [ %.pre1339, %do.body224 ], [ %.pre.pre, %if.end.i791 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i776) #12
  br label %do.body235

do.body235:                                       ; preds = %if.then221.do.body235_crit_edge, %deblock_edge.exit807
  %add.i809.pre-phi = phi i32 [ %.pre1366, %if.then221.do.body235_crit_edge ], [ %add.i777, %deblock_edge.exit807 ]
  %h.val712 = phi i32 [ %h.val712.pre1342, %if.then221.do.body235_crit_edge ], [ %h.val712.pre, %deblock_edge.exit807 ]
  %h.val711 = phi i32 [ %h.val711.pre1340, %if.then221.do.body235_crit_edge ], [ %h.val711.pre, %deblock_edge.exit807 ]
  %143 = phi ptr [ %.pre1339, %if.then221.do.body235_crit_edge ], [ %.pre, %deblock_edge.exit807 ]
  %arrayidx238 = getelementptr inbounds i8, ptr %arrayidx59, i64 8
  %add1.i810 = add i32 %h.val711, %add.i809.pre-phi
  %idxprom.i811 = sext i32 %add1.i810 to i64
  %arrayidx.i812 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i811
  %144 = load i8, ptr %arrayidx.i812, align 1
  %add4.i814 = add i32 %h.val712, %add.i809.pre-phi
  %idxprom5.i815 = sext i32 %add4.i814 to i64
  %arrayidx6.i816 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i815
  %145 = load i8, ptr %arrayidx6.i816, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i808) #12
  %146 = load i32, ptr %arrayidx238, align 4
  %tobool.i818 = icmp ne i32 %146, 0
  %147 = add nsw i64 %idxprom.i811, -28
  %tobool8.i819 = icmp ult i64 %147, 48
  %or.cond.i820 = select i1 %tobool.i818, i1 %tobool8.i819, i1 false
  %148 = add nsw i64 %idxprom5.i815, -28
  %tobool10.i821 = icmp ult i64 %148, 48
  %or.cond58.i822 = select i1 %or.cond.i820, i1 %tobool10.i821, i1 false
  br i1 %or.cond58.i822, label %if.end.i823, label %deblock_edge.exit839

if.end.i823:                                      ; preds = %do.body235
  %conv7.i817 = zext i8 %145 to i32
  %conv.i813 = zext i8 %144 to i32
  %add.ptr236 = getelementptr inbounds i8, ptr %pixy.0, i64 8
  %149 = lshr i32 %146, 24
  %idxprom45.i824 = zext nneg i32 %149 to i64
  %150 = lshr i32 %146, 16
  %151 = lshr i32 %146, 8
  %152 = and i32 %146, 255
  %idxprom15.i825 = zext nneg i32 %152 to i64
  %arrayidx16.i826 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i811, i64 %idxprom15.i825
  %153 = load i8, ptr %arrayidx16.i826, align 1
  store i8 %153, ptr %tc.i808, align 1
  %154 = and i32 %151, 255
  %idxprom25.i828 = zext nneg i32 %154 to i64
  %arrayidx26.i829 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i811, i64 %idxprom25.i828
  %155 = load i8, ptr %arrayidx26.i829, align 1
  store i8 %155, ptr %arrayidx30.i831, align 1
  %156 = and i32 %150, 255
  %idxprom35.i832 = zext nneg i32 %156 to i64
  %arrayidx36.i833 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i811, i64 %idxprom35.i832
  %157 = load i8, ptr %arrayidx36.i833, align 1
  store i8 %157, ptr %arrayidx40.i835, align 1
  %arrayidx46.i836 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i811, i64 %idxprom45.i824
  %158 = load i8, ptr %arrayidx46.i836, align 1
  store i8 %158, ptr %arrayidx50.i838, align 1
  call void %143(ptr noundef nonnull %add.ptr236, i32 noundef %shl, i32 noundef %conv.i813, i32 noundef %conv7.i817, ptr noundef nonnull %tc.i808) #12
  %h.val709.pre = load i32, ptr %i_alpha_c0_offset, align 16
  %h.val710.pre = load i32, ptr %i_beta_offset, align 4
  br label %deblock_edge.exit839

deblock_edge.exit839:                             ; preds = %do.body235, %if.end.i823
  %h.val710 = phi i32 [ %h.val712, %do.body235 ], [ %h.val710.pre, %if.end.i823 ]
  %h.val709 = phi i32 [ %h.val711, %do.body235 ], [ %h.val709.pre, %if.end.i823 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i808) #12
  %159 = load ptr, ptr %deblock_chroma, align 8
  %add.i841 = add nuw nsw i32 %conv110, 12
  %add1.i842 = add i32 %h.val709, %add.i841
  %idxprom.i843 = sext i32 %add1.i842 to i64
  %arrayidx.i844 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i843
  %160 = load i8, ptr %arrayidx.i844, align 1
  %add4.i846 = add i32 %h.val710, %add.i841
  %idxprom5.i847 = sext i32 %add4.i846 to i64
  %arrayidx6.i848 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i847
  %161 = load i8, ptr %arrayidx6.i848, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i840) #12
  %162 = load i32, ptr %arrayidx238, align 4
  %tobool.i850 = icmp ne i32 %162, 0
  %163 = add nsw i64 %idxprom.i843, -28
  %tobool8.i851 = icmp ult i64 %163, 48
  %or.cond.i852 = select i1 %tobool.i850, i1 %tobool8.i851, i1 false
  %164 = add nsw i64 %idxprom5.i847, -28
  %tobool10.i853 = icmp ult i64 %164, 48
  %or.cond58.i854 = select i1 %or.cond.i852, i1 %tobool10.i853, i1 false
  br i1 %or.cond58.i854, label %if.end.i855, label %deblock_edge.exit871

if.end.i855:                                      ; preds = %deblock_edge.exit839
  %conv7.i849 = zext i8 %161 to i32
  %conv.i845 = zext i8 %160 to i32
  %add.ptr244 = getelementptr inbounds i8, ptr %pixv.0, i64 4
  %add.ptr243 = getelementptr inbounds i8, ptr %pixu.0, i64 4
  %165 = lshr i32 %162, 24
  %idxprom45.i856 = zext nneg i32 %165 to i64
  %166 = lshr i32 %162, 16
  %167 = lshr i32 %162, 8
  %168 = and i32 %162, 255
  %idxprom15.i857 = zext nneg i32 %168 to i64
  %arrayidx16.i858 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i843, i64 %idxprom15.i857
  %169 = load i8, ptr %arrayidx16.i858, align 1
  %conv19.i859 = add i8 %169, 1
  store i8 %conv19.i859, ptr %tc.i840, align 1
  %170 = and i32 %167, 255
  %idxprom25.i860 = zext nneg i32 %170 to i64
  %arrayidx26.i861 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i843, i64 %idxprom25.i860
  %171 = load i8, ptr %arrayidx26.i861, align 1
  %conv29.i862 = add i8 %171, 1
  store i8 %conv29.i862, ptr %arrayidx30.i863, align 1
  %172 = and i32 %166, 255
  %idxprom35.i864 = zext nneg i32 %172 to i64
  %arrayidx36.i865 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i843, i64 %idxprom35.i864
  %173 = load i8, ptr %arrayidx36.i865, align 1
  %conv39.i866 = add i8 %173, 1
  store i8 %conv39.i866, ptr %arrayidx40.i867, align 1
  %arrayidx46.i868 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i843, i64 %idxprom45.i856
  %174 = load i8, ptr %arrayidx46.i868, align 1
  %conv49.i869 = add i8 %174, 1
  store i8 %conv49.i869, ptr %arrayidx50.i870, align 1
  call void %159(ptr noundef nonnull %add.ptr243, i32 noundef %shl19, i32 noundef %conv.i845, i32 noundef %conv7.i849, ptr noundef nonnull %tc.i840) #12
  call void %159(ptr noundef nonnull %add.ptr244, i32 noundef %shl19, i32 noundef %conv.i845, i32 noundef %conv7.i849, ptr noundef nonnull %tc.i840) #12
  br label %deblock_edge.exit871

deblock_edge.exit871:                             ; preds = %deblock_edge.exit839, %if.end.i855
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i840) #12
  br i1 %tobool222.not, label %do.body255, label %if.end266

do.body255:                                       ; preds = %deblock_edge.exit871
  %arrayidx258 = getelementptr inbounds i8, ptr %arrayidx59, i64 12
  %175 = load ptr, ptr %loopf207, align 8
  %h.val707 = load i32, ptr %i_alpha_c0_offset, align 16
  %h.val708 = load i32, ptr %i_beta_offset, align 4
  %add1.i874 = add i32 %h.val707, %add.i809.pre-phi
  %idxprom.i875 = sext i32 %add1.i874 to i64
  %arrayidx.i876 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i875
  %176 = load i8, ptr %arrayidx.i876, align 1
  %add4.i878 = add i32 %h.val708, %add.i809.pre-phi
  %idxprom5.i879 = sext i32 %add4.i878 to i64
  %arrayidx6.i880 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i879
  %177 = load i8, ptr %arrayidx6.i880, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i872) #12
  %178 = load i32, ptr %arrayidx258, align 4
  %tobool.i882 = icmp ne i32 %178, 0
  %179 = add nsw i64 %idxprom.i875, -28
  %tobool8.i883 = icmp ult i64 %179, 48
  %or.cond.i884 = select i1 %tobool.i882, i1 %tobool8.i883, i1 false
  %180 = add nsw i64 %idxprom5.i879, -28
  %tobool10.i885 = icmp ult i64 %180, 48
  %or.cond58.i886 = select i1 %or.cond.i884, i1 %tobool10.i885, i1 false
  br i1 %or.cond58.i886, label %if.end.i887, label %deblock_edge.exit903

if.end.i887:                                      ; preds = %do.body255
  %conv7.i881 = zext i8 %177 to i32
  %conv.i877 = zext i8 %176 to i32
  %add.ptr256 = getelementptr inbounds i8, ptr %pixy.0, i64 12
  %181 = lshr i32 %178, 24
  %idxprom45.i888 = zext nneg i32 %181 to i64
  %182 = lshr i32 %178, 16
  %183 = lshr i32 %178, 8
  %184 = and i32 %178, 255
  %idxprom15.i889 = zext nneg i32 %184 to i64
  %arrayidx16.i890 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i875, i64 %idxprom15.i889
  %185 = load i8, ptr %arrayidx16.i890, align 1
  store i8 %185, ptr %tc.i872, align 1
  %186 = and i32 %183, 255
  %idxprom25.i892 = zext nneg i32 %186 to i64
  %arrayidx26.i893 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i875, i64 %idxprom25.i892
  %187 = load i8, ptr %arrayidx26.i893, align 1
  store i8 %187, ptr %arrayidx30.i895, align 1
  %188 = and i32 %182, 255
  %idxprom35.i896 = zext nneg i32 %188 to i64
  %arrayidx36.i897 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i875, i64 %idxprom35.i896
  %189 = load i8, ptr %arrayidx36.i897, align 1
  store i8 %189, ptr %arrayidx40.i899, align 1
  %arrayidx46.i900 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i875, i64 %idxprom45.i888
  %190 = load i8, ptr %arrayidx46.i900, align 1
  store i8 %190, ptr %arrayidx50.i902, align 1
  call void %175(ptr noundef nonnull %add.ptr256, i32 noundef %shl, i32 noundef %conv.i877, i32 noundef %conv7.i881, ptr noundef nonnull %tc.i872) #12
  br label %deblock_edge.exit903

deblock_edge.exit903:                             ; preds = %do.body255, %if.end.i887
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i872) #12
  br label %if.end266

if.end266:                                        ; preds = %deblock_edge.exit871, %deblock_edge.exit903, %if.end219
  %191 = load i32, ptr %i_neighbour, align 8
  %and269 = and i32 %191, 2
  %tobool270.not = icmp eq i32 %and269, 0
  br i1 %tobool270.not, label %if.end395, label %if.then271

if.then271:                                       ; preds = %if.end266
  %192 = load ptr, ptr %qp104, align 8
  %193 = load i32, ptr %i_mb_top_xy, align 4
  %idxprom275 = sext i32 %193 to i64
  %arrayidx276 = getelementptr inbounds i8, ptr %192, i64 %idxprom275
  %194 = load i8, ptr %arrayidx276, align 1
  %conv277 = sext i8 %194 to i32
  %add278 = add nsw i32 %conv107, 1
  %add279 = add nsw i32 %add278, %conv277
  %shr280 = ashr i32 %add279, 1
  %195 = load ptr, ptr %chroma_qp_table, align 16
  %arrayidx283 = getelementptr inbounds i8, ptr %195, i64 %idxprom108
  %196 = load i8, ptr %arrayidx283, align 1
  %conv284 = zext i8 %196 to i32
  %idxprom286 = sext i8 %194 to i64
  %arrayidx287 = getelementptr inbounds i8, ptr %195, i64 %idxprom286
  %197 = load i8, ptr %arrayidx287, align 1
  %conv288 = zext i8 %197 to i32
  %add289 = add nuw nsw i32 %conv284, 1
  %add290 = add nuw nsw i32 %add289, %conv288
  %shr291 = lshr i32 %add290, 1
  %198 = load ptr, ptr %type, align 8
  %arrayidx297 = getelementptr inbounds i8, ptr %198, i64 %idxprom275
  %199 = load i8, ptr %arrayidx297, align 1
  %switch.selectcmp687 = icmp ult i8 %199, 4
  %or.cond464 = or i1 %switch.selectcmp, %switch.selectcmp687
  %or.cond683 = and i1 %tobool86.not, %or.cond464
  br i1 %or.cond683, label %do.body339, label %if.else363

do.body339:                                       ; preds = %if.then271
  %h.val689 = load i32, ptr %i_alpha_c0_offset, align 16
  %h.val690 = load i32, ptr %i_beta_offset, align 4
  %add.i904 = add nsw i32 %shr280, 12
  %add1.i905 = add i32 %h.val689, %add.i904
  %idxprom.i906 = sext i32 %add1.i905 to i64
  %add4.i909 = add i32 %h.val690, %add.i904
  %idxprom5.i910 = sext i32 %add4.i909 to i64
  %200 = add nsw i64 %idxprom.i906, -28
  %tobool.i913 = icmp ult i64 %200, 48
  %201 = add nsw i64 %idxprom5.i910, -28
  %tobool8.i914 = icmp ult i64 %201, 48
  %or.cond.i915 = select i1 %tobool.i913, i1 %tobool8.i914, i1 false
  br i1 %or.cond.i915, label %if.end.i916, label %deblock_edge_intra.exit917

if.end.i916:                                      ; preds = %do.body339
  %arrayidx6.i911 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i910
  %202 = load i8, ptr %arrayidx6.i911, align 1
  %conv7.i912 = zext i8 %202 to i32
  %arrayidx.i907 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i906
  %203 = load i8, ptr %arrayidx.i907, align 1
  %conv.i908 = zext i8 %203 to i32
  %204 = load ptr, ptr %arrayidx348, align 8
  call void %204(ptr noundef %pixy.0, i32 noundef %shl, i32 noundef %conv.i908, i32 noundef %conv7.i912) #12
  %h.val.pre = load i32, ptr %i_alpha_c0_offset, align 16
  %h.val688.pre = load i32, ptr %i_beta_offset, align 4
  br label %deblock_edge_intra.exit917

deblock_edge_intra.exit917:                       ; preds = %do.body339, %if.end.i916
  %h.val688 = phi i32 [ %h.val690, %do.body339 ], [ %h.val688.pre, %if.end.i916 ]
  %h.val = phi i32 [ %h.val689, %do.body339 ], [ %h.val.pre, %if.end.i916 ]
  %add.i918 = add nuw nsw i32 %shr291, 12
  %add1.i919 = add i32 %h.val, %add.i918
  %idxprom.i920 = sext i32 %add1.i919 to i64
  %add4.i923 = add i32 %h.val688, %add.i918
  %idxprom5.i924 = sext i32 %add4.i923 to i64
  %205 = add nsw i64 %idxprom.i920, -28
  %tobool.i927 = icmp ult i64 %205, 48
  %206 = add nsw i64 %idxprom5.i924, -28
  %tobool8.i928 = icmp ult i64 %206, 48
  %or.cond.i929 = select i1 %tobool.i927, i1 %tobool8.i928, i1 false
  br i1 %or.cond.i929, label %if.end.i930, label %if.end395

if.end.i930:                                      ; preds = %deblock_edge_intra.exit917
  %arrayidx6.i925 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i924
  %207 = load i8, ptr %arrayidx6.i925, align 1
  %conv7.i926 = zext i8 %207 to i32
  %arrayidx.i921 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i920
  %208 = load i8, ptr %arrayidx.i921, align 1
  %conv.i922 = zext i8 %208 to i32
  %209 = load ptr, ptr %arrayidx360, align 8
  call void %209(ptr noundef %pixu.0, i32 noundef %shl19, i32 noundef %conv.i922, i32 noundef %conv7.i926) #12
  call void %209(ptr noundef %pixv.0, i32 noundef %shl19, i32 noundef %conv.i922, i32 noundef %conv7.i926) #12
  br label %if.end395

if.else363:                                       ; preds = %if.then271
  %arrayidx366 = getelementptr inbounds i8, ptr %arrayidx59, i64 16
  br i1 %switch.selectcmp687, label %if.then365, label %if.else363.do.body370_crit_edge

if.else363.do.body370_crit_edge:                  ; preds = %if.else363
  %.pre1346 = load i32, ptr %arrayidx366, align 4
  br label %do.body370

if.then365:                                       ; preds = %if.else363
  store i32 50529027, ptr %arrayidx366, align 1
  br label %do.body370

do.body370:                                       ; preds = %if.else363.do.body370_crit_edge, %if.then365
  %210 = phi i32 [ %.pre1346, %if.else363.do.body370_crit_edge ], [ 50529027, %if.then365 ]
  %arrayidx374 = getelementptr inbounds i8, ptr %arrayidx59, i64 16
  %211 = load ptr, ptr %arrayidx379, align 8
  %h.val705 = load i32, ptr %i_alpha_c0_offset, align 16
  %h.val706 = load i32, ptr %i_beta_offset, align 4
  %add.i933 = add nsw i32 %shr280, 12
  %add1.i934 = add i32 %h.val705, %add.i933
  %idxprom.i935 = sext i32 %add1.i934 to i64
  %arrayidx.i936 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i935
  %212 = load i8, ptr %arrayidx.i936, align 1
  %add4.i938 = add i32 %h.val706, %add.i933
  %idxprom5.i939 = sext i32 %add4.i938 to i64
  %arrayidx6.i940 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i939
  %213 = load i8, ptr %arrayidx6.i940, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i932) #12
  %tobool.i942 = icmp ne i32 %210, 0
  %214 = add nsw i64 %idxprom.i935, -28
  %tobool8.i943 = icmp ult i64 %214, 48
  %or.cond.i944 = select i1 %tobool.i942, i1 %tobool8.i943, i1 false
  %215 = add nsw i64 %idxprom5.i939, -28
  %tobool10.i945 = icmp ult i64 %215, 48
  %or.cond58.i946 = select i1 %or.cond.i944, i1 %tobool10.i945, i1 false
  br i1 %or.cond58.i946, label %if.end.i947, label %deblock_edge.exit963

if.end.i947:                                      ; preds = %do.body370
  %conv7.i941 = zext i8 %213 to i32
  %conv.i937 = zext i8 %212 to i32
  %216 = lshr i32 %210, 24
  %idxprom45.i948 = zext nneg i32 %216 to i64
  %217 = lshr i32 %210, 16
  %218 = lshr i32 %210, 8
  %219 = and i32 %210, 255
  %idxprom15.i949 = zext nneg i32 %219 to i64
  %arrayidx16.i950 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i935, i64 %idxprom15.i949
  %220 = load i8, ptr %arrayidx16.i950, align 1
  store i8 %220, ptr %tc.i932, align 1
  %221 = and i32 %218, 255
  %idxprom25.i952 = zext nneg i32 %221 to i64
  %arrayidx26.i953 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i935, i64 %idxprom25.i952
  %222 = load i8, ptr %arrayidx26.i953, align 1
  store i8 %222, ptr %arrayidx30.i955, align 1
  %223 = and i32 %217, 255
  %idxprom35.i956 = zext nneg i32 %223 to i64
  %arrayidx36.i957 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i935, i64 %idxprom35.i956
  %224 = load i8, ptr %arrayidx36.i957, align 1
  store i8 %224, ptr %arrayidx40.i959, align 1
  %arrayidx46.i960 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i935, i64 %idxprom45.i948
  %225 = load i8, ptr %arrayidx46.i960, align 1
  store i8 %225, ptr %arrayidx50.i962, align 1
  call void %211(ptr noundef %pixy.0, i32 noundef %shl, i32 noundef %conv.i937, i32 noundef %conv7.i941, ptr noundef nonnull %tc.i932) #12
  %h.val703.pre = load i32, ptr %i_alpha_c0_offset, align 16
  %h.val704.pre = load i32, ptr %i_beta_offset, align 4
  br label %deblock_edge.exit963

deblock_edge.exit963:                             ; preds = %do.body370, %if.end.i947
  %h.val704 = phi i32 [ %h.val706, %do.body370 ], [ %h.val704.pre, %if.end.i947 ]
  %h.val703 = phi i32 [ %h.val705, %do.body370 ], [ %h.val703.pre, %if.end.i947 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i932) #12
  %226 = load ptr, ptr %arrayidx391, align 8
  %add.i965 = add nuw nsw i32 %shr291, 12
  %add1.i966 = add i32 %h.val703, %add.i965
  %idxprom.i967 = sext i32 %add1.i966 to i64
  %arrayidx.i968 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i967
  %227 = load i8, ptr %arrayidx.i968, align 1
  %add4.i970 = add i32 %h.val704, %add.i965
  %idxprom5.i971 = sext i32 %add4.i970 to i64
  %arrayidx6.i972 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i971
  %228 = load i8, ptr %arrayidx6.i972, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i964) #12
  %229 = load i32, ptr %arrayidx374, align 4
  %tobool.i974 = icmp ne i32 %229, 0
  %230 = add nsw i64 %idxprom.i967, -28
  %tobool8.i975 = icmp ult i64 %230, 48
  %or.cond.i976 = select i1 %tobool.i974, i1 %tobool8.i975, i1 false
  %231 = add nsw i64 %idxprom5.i971, -28
  %tobool10.i977 = icmp ult i64 %231, 48
  %or.cond58.i978 = select i1 %or.cond.i976, i1 %tobool10.i977, i1 false
  br i1 %or.cond58.i978, label %if.end.i979, label %deblock_edge.exit995

if.end.i979:                                      ; preds = %deblock_edge.exit963
  %conv7.i973 = zext i8 %228 to i32
  %conv.i969 = zext i8 %227 to i32
  %232 = lshr i32 %229, 24
  %idxprom45.i980 = zext nneg i32 %232 to i64
  %233 = lshr i32 %229, 16
  %234 = lshr i32 %229, 8
  %235 = and i32 %229, 255
  %idxprom15.i981 = zext nneg i32 %235 to i64
  %arrayidx16.i982 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i967, i64 %idxprom15.i981
  %236 = load i8, ptr %arrayidx16.i982, align 1
  %conv19.i983 = add i8 %236, 1
  store i8 %conv19.i983, ptr %tc.i964, align 1
  %237 = and i32 %234, 255
  %idxprom25.i984 = zext nneg i32 %237 to i64
  %arrayidx26.i985 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i967, i64 %idxprom25.i984
  %238 = load i8, ptr %arrayidx26.i985, align 1
  %conv29.i986 = add i8 %238, 1
  store i8 %conv29.i986, ptr %arrayidx30.i987, align 1
  %239 = and i32 %233, 255
  %idxprom35.i988 = zext nneg i32 %239 to i64
  %arrayidx36.i989 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i967, i64 %idxprom35.i988
  %240 = load i8, ptr %arrayidx36.i989, align 1
  %conv39.i990 = add i8 %240, 1
  store i8 %conv39.i990, ptr %arrayidx40.i991, align 1
  %arrayidx46.i992 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i967, i64 %idxprom45.i980
  %241 = load i8, ptr %arrayidx46.i992, align 1
  %conv49.i993 = add i8 %241, 1
  store i8 %conv49.i993, ptr %arrayidx50.i994, align 1
  call void %226(ptr noundef %pixu.0, i32 noundef %shl19, i32 noundef %conv.i969, i32 noundef %conv7.i973, ptr noundef nonnull %tc.i964) #12
  call void %226(ptr noundef %pixv.0, i32 noundef %shl19, i32 noundef %conv.i969, i32 noundef %conv7.i973, ptr noundef nonnull %tc.i964) #12
  br label %deblock_edge.exit995

deblock_edge.exit995:                             ; preds = %deblock_edge.exit963, %if.end.i979
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i964) #12
  br label %if.end395

if.end395:                                        ; preds = %if.end.i930, %deblock_edge_intra.exit917, %deblock_edge.exit995, %if.end266
  br i1 %80, label %if.end452, label %if.then397

if.then397:                                       ; preds = %if.end395
  %tobool398.not = icmp eq i8 %68, 0
  %.pre1352 = load ptr, ptr %arrayidx379, align 8
  %h.val699.pre1353 = load i32, ptr %i_alpha_c0_offset, align 16
  %h.val700.pre1355 = load i32, ptr %i_beta_offset, align 4
  br i1 %tobool398.not, label %do.body400, label %if.then397.do.body413_crit_edge

if.then397.do.body413_crit_edge:                  ; preds = %if.then397
  %.pre1365 = add nsw i32 %conv107, 12
  br label %do.body413

do.body400:                                       ; preds = %if.then397
  %arrayidx405 = getelementptr inbounds i8, ptr %arrayidx59, i64 20
  %add.i997 = add nsw i32 %conv107, 12
  %add1.i998 = add i32 %h.val699.pre1353, %add.i997
  %idxprom.i999 = sext i32 %add1.i998 to i64
  %arrayidx.i1000 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i999
  %242 = load i8, ptr %arrayidx.i1000, align 1
  %add4.i1002 = add i32 %h.val700.pre1355, %add.i997
  %idxprom5.i1003 = sext i32 %add4.i1002 to i64
  %arrayidx6.i1004 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i1003
  %243 = load i8, ptr %arrayidx6.i1004, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i996) #12
  %244 = load i32, ptr %arrayidx405, align 4
  %tobool.i1006 = icmp ne i32 %244, 0
  %245 = add nsw i64 %idxprom.i999, -28
  %tobool8.i1007 = icmp ult i64 %245, 48
  %or.cond.i1008 = select i1 %tobool.i1006, i1 %tobool8.i1007, i1 false
  %246 = add nsw i64 %idxprom5.i1003, -28
  %tobool10.i1009 = icmp ult i64 %246, 48
  %or.cond58.i1010 = select i1 %or.cond.i1008, i1 %tobool10.i1009, i1 false
  br i1 %or.cond58.i1010, label %if.end.i1011, label %deblock_edge.exit1027

if.end.i1011:                                     ; preds = %do.body400
  %conv7.i1005 = zext i8 %243 to i32
  %conv.i1001 = zext i8 %242 to i32
  %add.ptr403 = getelementptr inbounds i8, ptr %pixy.0, i64 %idx.ext402
  %247 = lshr i32 %244, 24
  %idxprom45.i1012 = zext nneg i32 %247 to i64
  %248 = lshr i32 %244, 16
  %249 = lshr i32 %244, 8
  %250 = and i32 %244, 255
  %idxprom15.i1013 = zext nneg i32 %250 to i64
  %arrayidx16.i1014 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i999, i64 %idxprom15.i1013
  %251 = load i8, ptr %arrayidx16.i1014, align 1
  store i8 %251, ptr %tc.i996, align 1
  %252 = and i32 %249, 255
  %idxprom25.i1016 = zext nneg i32 %252 to i64
  %arrayidx26.i1017 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i999, i64 %idxprom25.i1016
  %253 = load i8, ptr %arrayidx26.i1017, align 1
  store i8 %253, ptr %arrayidx30.i1019, align 1
  %254 = and i32 %248, 255
  %idxprom35.i1020 = zext nneg i32 %254 to i64
  %arrayidx36.i1021 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i999, i64 %idxprom35.i1020
  %255 = load i8, ptr %arrayidx36.i1021, align 1
  store i8 %255, ptr %arrayidx40.i1023, align 1
  %arrayidx46.i1024 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i999, i64 %idxprom45.i1012
  %256 = load i8, ptr %arrayidx46.i1024, align 1
  store i8 %256, ptr %arrayidx50.i1026, align 1
  call void %.pre1352(ptr noundef %add.ptr403, i32 noundef %shl, i32 noundef %conv.i1001, i32 noundef %conv7.i1005, ptr noundef nonnull %tc.i996) #12
  %.pre1351.pre = load ptr, ptr %arrayidx379, align 8
  %h.val699.pre.pre = load i32, ptr %i_alpha_c0_offset, align 16
  %h.val700.pre.pre = load i32, ptr %i_beta_offset, align 4
  br label %deblock_edge.exit1027

deblock_edge.exit1027:                            ; preds = %do.body400, %if.end.i1011
  %h.val700.pre = phi i32 [ %h.val700.pre1355, %do.body400 ], [ %h.val700.pre.pre, %if.end.i1011 ]
  %h.val699.pre = phi i32 [ %h.val699.pre1353, %do.body400 ], [ %h.val699.pre.pre, %if.end.i1011 ]
  %.pre1351 = phi ptr [ %.pre1352, %do.body400 ], [ %.pre1351.pre, %if.end.i1011 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i996) #12
  br label %do.body413

do.body413:                                       ; preds = %if.then397.do.body413_crit_edge, %deblock_edge.exit1027
  %add.i1029.pre-phi = phi i32 [ %.pre1365, %if.then397.do.body413_crit_edge ], [ %add.i997, %deblock_edge.exit1027 ]
  %h.val700 = phi i32 [ %h.val700.pre1355, %if.then397.do.body413_crit_edge ], [ %h.val700.pre, %deblock_edge.exit1027 ]
  %h.val699 = phi i32 [ %h.val699.pre1353, %if.then397.do.body413_crit_edge ], [ %h.val699.pre, %deblock_edge.exit1027 ]
  %257 = phi ptr [ %.pre1352, %if.then397.do.body413_crit_edge ], [ %.pre1351, %deblock_edge.exit1027 ]
  %arrayidx418 = getelementptr inbounds i8, ptr %arrayidx59, i64 24
  %add1.i1030 = add i32 %h.val699, %add.i1029.pre-phi
  %idxprom.i1031 = sext i32 %add1.i1030 to i64
  %arrayidx.i1032 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i1031
  %258 = load i8, ptr %arrayidx.i1032, align 1
  %add4.i1034 = add i32 %h.val700, %add.i1029.pre-phi
  %idxprom5.i1035 = sext i32 %add4.i1034 to i64
  %arrayidx6.i1036 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i1035
  %259 = load i8, ptr %arrayidx6.i1036, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i1028) #12
  %260 = load i32, ptr %arrayidx418, align 4
  %tobool.i1038 = icmp ne i32 %260, 0
  %261 = add nsw i64 %idxprom.i1031, -28
  %tobool8.i1039 = icmp ult i64 %261, 48
  %or.cond.i1040 = select i1 %tobool.i1038, i1 %tobool8.i1039, i1 false
  %262 = add nsw i64 %idxprom5.i1035, -28
  %tobool10.i1041 = icmp ult i64 %262, 48
  %or.cond58.i1042 = select i1 %or.cond.i1040, i1 %tobool10.i1041, i1 false
  br i1 %or.cond58.i1042, label %if.end.i1043, label %deblock_edge.exit1059

if.end.i1043:                                     ; preds = %do.body413
  %conv7.i1037 = zext i8 %259 to i32
  %conv.i1033 = zext i8 %258 to i32
  %add.ptr416 = getelementptr inbounds i8, ptr %pixy.0, i64 %idx.ext415
  %263 = lshr i32 %260, 24
  %idxprom45.i1044 = zext nneg i32 %263 to i64
  %264 = lshr i32 %260, 16
  %265 = lshr i32 %260, 8
  %266 = and i32 %260, 255
  %idxprom15.i1045 = zext nneg i32 %266 to i64
  %arrayidx16.i1046 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1031, i64 %idxprom15.i1045
  %267 = load i8, ptr %arrayidx16.i1046, align 1
  store i8 %267, ptr %tc.i1028, align 1
  %268 = and i32 %265, 255
  %idxprom25.i1048 = zext nneg i32 %268 to i64
  %arrayidx26.i1049 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1031, i64 %idxprom25.i1048
  %269 = load i8, ptr %arrayidx26.i1049, align 1
  store i8 %269, ptr %arrayidx30.i1051, align 1
  %270 = and i32 %264, 255
  %idxprom35.i1052 = zext nneg i32 %270 to i64
  %arrayidx36.i1053 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1031, i64 %idxprom35.i1052
  %271 = load i8, ptr %arrayidx36.i1053, align 1
  store i8 %271, ptr %arrayidx40.i1055, align 1
  %arrayidx46.i1056 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1031, i64 %idxprom45.i1044
  %272 = load i8, ptr %arrayidx46.i1056, align 1
  store i8 %272, ptr %arrayidx50.i1058, align 1
  call void %257(ptr noundef %add.ptr416, i32 noundef %shl, i32 noundef %conv.i1033, i32 noundef %conv7.i1037, ptr noundef nonnull %tc.i1028) #12
  %h.val697.pre = load i32, ptr %i_alpha_c0_offset, align 16
  %h.val698.pre = load i32, ptr %i_beta_offset, align 4
  br label %deblock_edge.exit1059

deblock_edge.exit1059:                            ; preds = %do.body413, %if.end.i1043
  %h.val698 = phi i32 [ %h.val700, %do.body413 ], [ %h.val698.pre, %if.end.i1043 ]
  %h.val697 = phi i32 [ %h.val699, %do.body413 ], [ %h.val697.pre, %if.end.i1043 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i1028) #12
  %273 = load ptr, ptr %arrayidx391, align 8
  %add.i1061 = add nuw nsw i32 %conv110, 12
  %add1.i1062 = add i32 %h.val697, %add.i1061
  %idxprom.i1063 = sext i32 %add1.i1062 to i64
  %arrayidx.i1064 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i1063
  %274 = load i8, ptr %arrayidx.i1064, align 1
  %add4.i1066 = add i32 %h.val698, %add.i1061
  %idxprom5.i1067 = sext i32 %add4.i1066 to i64
  %arrayidx6.i1068 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i1067
  %275 = load i8, ptr %arrayidx6.i1068, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i1060) #12
  %276 = load i32, ptr %arrayidx418, align 4
  %tobool.i1070 = icmp ne i32 %276, 0
  %277 = add nsw i64 %idxprom.i1063, -28
  %tobool8.i1071 = icmp ult i64 %277, 48
  %or.cond.i1072 = select i1 %tobool.i1070, i1 %tobool8.i1071, i1 false
  %278 = add nsw i64 %idxprom5.i1067, -28
  %tobool10.i1073 = icmp ult i64 %278, 48
  %or.cond58.i1074 = select i1 %or.cond.i1072, i1 %tobool10.i1073, i1 false
  br i1 %or.cond58.i1074, label %if.end.i1075, label %deblock_edge.exit1091

if.end.i1075:                                     ; preds = %deblock_edge.exit1059
  %conv7.i1069 = zext i8 %275 to i32
  %conv.i1065 = zext i8 %274 to i32
  %add.ptr428 = getelementptr inbounds i8, ptr %pixv.0, i64 %idx.ext424
  %add.ptr425 = getelementptr inbounds i8, ptr %pixu.0, i64 %idx.ext424
  %279 = lshr i32 %276, 24
  %idxprom45.i1076 = zext nneg i32 %279 to i64
  %280 = lshr i32 %276, 16
  %281 = lshr i32 %276, 8
  %282 = and i32 %276, 255
  %idxprom15.i1077 = zext nneg i32 %282 to i64
  %arrayidx16.i1078 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1063, i64 %idxprom15.i1077
  %283 = load i8, ptr %arrayidx16.i1078, align 1
  %conv19.i1079 = add i8 %283, 1
  store i8 %conv19.i1079, ptr %tc.i1060, align 1
  %284 = and i32 %281, 255
  %idxprom25.i1080 = zext nneg i32 %284 to i64
  %arrayidx26.i1081 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1063, i64 %idxprom25.i1080
  %285 = load i8, ptr %arrayidx26.i1081, align 1
  %conv29.i1082 = add i8 %285, 1
  store i8 %conv29.i1082, ptr %arrayidx30.i1083, align 1
  %286 = and i32 %280, 255
  %idxprom35.i1084 = zext nneg i32 %286 to i64
  %arrayidx36.i1085 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1063, i64 %idxprom35.i1084
  %287 = load i8, ptr %arrayidx36.i1085, align 1
  %conv39.i1086 = add i8 %287, 1
  store i8 %conv39.i1086, ptr %arrayidx40.i1087, align 1
  %arrayidx46.i1088 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1063, i64 %idxprom45.i1076
  %288 = load i8, ptr %arrayidx46.i1088, align 1
  %conv49.i1089 = add i8 %288, 1
  store i8 %conv49.i1089, ptr %arrayidx50.i1090, align 1
  call void %273(ptr noundef %add.ptr425, i32 noundef %shl19, i32 noundef %conv.i1065, i32 noundef %conv7.i1069, ptr noundef nonnull %tc.i1060) #12
  call void %273(ptr noundef %add.ptr428, i32 noundef %shl19, i32 noundef %conv.i1065, i32 noundef %conv7.i1069, ptr noundef nonnull %tc.i1060) #12
  br label %deblock_edge.exit1091

deblock_edge.exit1091:                            ; preds = %deblock_edge.exit1059, %if.end.i1075
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i1060) #12
  br i1 %tobool398.not, label %do.body439, label %if.end452

do.body439:                                       ; preds = %deblock_edge.exit1091
  %arrayidx444 = getelementptr inbounds i8, ptr %arrayidx59, i64 28
  %289 = load ptr, ptr %arrayidx379, align 8
  %h.val695 = load i32, ptr %i_alpha_c0_offset, align 16
  %h.val696 = load i32, ptr %i_beta_offset, align 4
  %add1.i1094 = add i32 %h.val695, %add.i1029.pre-phi
  %idxprom.i1095 = sext i32 %add1.i1094 to i64
  %arrayidx.i1096 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i1095
  %290 = load i8, ptr %arrayidx.i1096, align 1
  %add4.i1098 = add i32 %h.val696, %add.i1029.pre-phi
  %idxprom5.i1099 = sext i32 %add4.i1098 to i64
  %arrayidx6.i1100 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i1099
  %291 = load i8, ptr %arrayidx6.i1100, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i1092) #12
  %292 = load i32, ptr %arrayidx444, align 4
  %tobool.i1102 = icmp ne i32 %292, 0
  %293 = add nsw i64 %idxprom.i1095, -28
  %tobool8.i1103 = icmp ult i64 %293, 48
  %or.cond.i1104 = select i1 %tobool.i1102, i1 %tobool8.i1103, i1 false
  %294 = add nsw i64 %idxprom5.i1099, -28
  %tobool10.i1105 = icmp ult i64 %294, 48
  %or.cond58.i1106 = select i1 %or.cond.i1104, i1 %tobool10.i1105, i1 false
  br i1 %or.cond58.i1106, label %if.end.i1107, label %deblock_edge.exit1123

if.end.i1107:                                     ; preds = %do.body439
  %conv7.i1101 = zext i8 %291 to i32
  %conv.i1097 = zext i8 %290 to i32
  %add.ptr442 = getelementptr inbounds i8, ptr %pixy.0, i64 %idx.ext441
  %295 = lshr i32 %292, 24
  %idxprom45.i1108 = zext nneg i32 %295 to i64
  %296 = lshr i32 %292, 16
  %297 = lshr i32 %292, 8
  %298 = and i32 %292, 255
  %idxprom15.i1109 = zext nneg i32 %298 to i64
  %arrayidx16.i1110 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1095, i64 %idxprom15.i1109
  %299 = load i8, ptr %arrayidx16.i1110, align 1
  store i8 %299, ptr %tc.i1092, align 1
  %300 = and i32 %297, 255
  %idxprom25.i1112 = zext nneg i32 %300 to i64
  %arrayidx26.i1113 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1095, i64 %idxprom25.i1112
  %301 = load i8, ptr %arrayidx26.i1113, align 1
  store i8 %301, ptr %arrayidx30.i1115, align 1
  %302 = and i32 %296, 255
  %idxprom35.i1116 = zext nneg i32 %302 to i64
  %arrayidx36.i1117 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1095, i64 %idxprom35.i1116
  %303 = load i8, ptr %arrayidx36.i1117, align 1
  store i8 %303, ptr %arrayidx40.i1119, align 1
  %arrayidx46.i1120 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1095, i64 %idxprom45.i1108
  %304 = load i8, ptr %arrayidx46.i1120, align 1
  store i8 %304, ptr %arrayidx50.i1122, align 1
  call void %289(ptr noundef %add.ptr442, i32 noundef %shl, i32 noundef %conv.i1097, i32 noundef %conv7.i1101, ptr noundef nonnull %tc.i1092) #12
  br label %deblock_edge.exit1123

deblock_edge.exit1123:                            ; preds = %do.body439, %if.end.i1107
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i1092) #12
  br label %if.end452

if.end452:                                        ; preds = %deblock_edge.exit1091, %deblock_edge.exit1123, %if.end395
  %or = or i32 %mb_y.addr.01332, %not
  %and453 = and i32 %or, 1
  %add454 = add nuw nsw i32 %and453, %mb_x.01331
  %xor = xor i32 %mb_y.addr.01332, %0
  %305 = load ptr, ptr %sps, align 16
  %i_mb_width = getelementptr inbounds i8, ptr %305, i64 1084
  %306 = load i32, ptr %i_mb_width, align 4
  %cmp22 = icmp slt i32 %add454, %306
  br i1 %cmp22, label %for.body, label %for.cond.cleanup

land.lhs.true458:                                 ; preds = %for.cond.cleanup
  %b_transform_8x8_mode460 = getelementptr inbounds i8, ptr %63, i64 60
  %307 = load i32, ptr %b_transform_8x8_mode460, align 4
  %tobool461.not = icmp eq i32 %307, 0
  br i1 %tobool461.not, label %if.end463, label %if.then462

if.then462:                                       ; preds = %land.lhs.true458
  %non_zero_count.i1314 = getelementptr inbounds i8, ptr %h, i64 16656
  %308 = load ptr, ptr %non_zero_count.i1314, align 16
  %mul.i1317 = mul nsw i32 %.lcssa, %mb_y.addr.0.lcssa
  %idx.ext.i1318 = sext i32 %mul.i1317 to i64
  %add.ptr.i1319 = getelementptr inbounds [24 x i8], ptr %308, i64 %idx.ext.i1318
  %cmp13.i1320 = icmp sgt i32 %.lcssa, 0
  br i1 %cmp13.i1320, label %for.body.i1321, label %restore_cavlc_nnz_row.exit1328

for.body.i1321:                                   ; preds = %if.then462, %for.body.i1321
  %indvars.iv.i1322 = phi i64 [ %indvars.iv.next.i1325, %for.body.i1321 ], [ 0, %if.then462 ]
  %add.ptr4.i1323 = getelementptr inbounds [24 x i8], ptr %add.ptr.i1319, i64 %indvars.iv.i1322
  %add.ptr6.i1324 = getelementptr inbounds [16 x i8], ptr %8, i64 %indvars.iv.i1322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %add.ptr4.i1323, ptr noundef nonnull readonly align 1 dereferenceable(16) %add.ptr6.i1324, i64 16, i1 false)
  %indvars.iv.next.i1325 = add nuw nsw i64 %indvars.iv.i1322, 1
  %309 = load ptr, ptr %sps, align 16
  %i_mb_width2.i1326 = getelementptr inbounds i8, ptr %309, i64 1084
  %310 = load i32, ptr %i_mb_width2.i1326, align 4
  %311 = sext i32 %310 to i64
  %cmp.i1327 = icmp slt i64 %indvars.iv.next.i1325, %311
  br i1 %cmp.i1327, label %for.body.i1321, label %restore_cavlc_nnz_row.exit1328

restore_cavlc_nnz_row.exit1328:                   ; preds = %for.body.i1321, %if.then462
  %312 = phi ptr [ %62, %if.then462 ], [ %309, %for.body.i1321 ]
  %cmp.i1124 = icmp sgt i32 %mb_y.addr.0.lcssa, 0
  br i1 %cmp.i1124, label %if.then.i1141, label %if.end.i1125

if.then.i1141:                                    ; preds = %restore_cavlc_nnz_row.exit1328
  %sub.i1142 = add nsw i32 %mb_y.addr.0.lcssa, -1
  %i_mb_width.i1144 = getelementptr inbounds i8, ptr %312, i64 1084
  %313 = load i32, ptr %i_mb_width.i1144, align 4
  %idx.ext.i1145 = sext i32 %313 to i64
  %add.ptr.i1146 = getelementptr inbounds [16 x i8], ptr %8, i64 %idx.ext.i1145
  %314 = load ptr, ptr %non_zero_count.i1314, align 16
  %mul.i1302 = mul nsw i32 %313, %sub.i1142
  %idx.ext.i1303 = sext i32 %mul.i1302 to i64
  %add.ptr.i1304 = getelementptr inbounds [24 x i8], ptr %314, i64 %idx.ext.i1303
  %cmp13.i1305 = icmp sgt i32 %313, 0
  br i1 %cmp13.i1305, label %for.body.i1306, label %if.end.i1125

for.body.i1306:                                   ; preds = %if.then.i1141, %for.body.i1306
  %indvars.iv.i1307 = phi i64 [ %indvars.iv.next.i1310, %for.body.i1306 ], [ 0, %if.then.i1141 ]
  %add.ptr4.i1308 = getelementptr inbounds [24 x i8], ptr %add.ptr.i1304, i64 %indvars.iv.i1307
  %add.ptr6.i1309 = getelementptr inbounds [16 x i8], ptr %add.ptr.i1146, i64 %indvars.iv.i1307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %add.ptr4.i1308, ptr noundef nonnull readonly align 1 dereferenceable(16) %add.ptr6.i1309, i64 16, i1 false)
  %indvars.iv.next.i1310 = add nuw nsw i64 %indvars.iv.i1307, 1
  %315 = load ptr, ptr %sps, align 16
  %i_mb_width2.i1311 = getelementptr inbounds i8, ptr %315, i64 1084
  %316 = load i32, ptr %i_mb_width2.i1311, align 4
  %317 = sext i32 %316 to i64
  %cmp.i1312 = icmp slt i64 %indvars.iv.next.i1310, %317
  br i1 %cmp.i1312, label %for.body.i1306, label %if.end.i1125

if.end.i1125:                                     ; preds = %for.body.i1306, %if.then.i1141, %restore_cavlc_nnz_row.exit1328
  %318 = phi ptr [ %312, %if.then.i1141 ], [ %312, %restore_cavlc_nnz_row.exit1328 ], [ %315, %for.body.i1306 ]
  %319 = load i32, ptr %b_mbaff, align 4
  %tobool.not.i1127 = icmp eq i32 %319, 0
  br i1 %tobool.not.i1127, label %if.end463, label %if.then1.i1128

if.then1.i1128:                                   ; preds = %if.end.i1125
  %add.i1129 = add nsw i32 %mb_y.addr.0.lcssa, 1
  %i_mb_width3.i1131 = getelementptr inbounds i8, ptr %318, i64 1084
  %320 = load i32, ptr %i_mb_width3.i1131, align 4
  %mul.i1132 = shl nsw i32 %320, 1
  %idx.ext4.i1133 = sext i32 %mul.i1132 to i64
  %add.ptr5.i1134 = getelementptr inbounds [16 x i8], ptr %8, i64 %idx.ext4.i1133
  %321 = load ptr, ptr %non_zero_count.i1314, align 16
  %mul.i1287 = mul nsw i32 %320, %add.i1129
  %idx.ext.i1288 = sext i32 %mul.i1287 to i64
  %add.ptr.i1289 = getelementptr inbounds [24 x i8], ptr %321, i64 %idx.ext.i1288
  %cmp13.i1290 = icmp sgt i32 %320, 0
  br i1 %cmp13.i1290, label %for.body.i1291, label %restore_cavlc_nnz_row.exit1298

for.body.i1291:                                   ; preds = %if.then1.i1128, %for.body.i1291
  %indvars.iv.i1292 = phi i64 [ %indvars.iv.next.i1295, %for.body.i1291 ], [ 0, %if.then1.i1128 ]
  %add.ptr4.i1293 = getelementptr inbounds [24 x i8], ptr %add.ptr.i1289, i64 %indvars.iv.i1292
  %add.ptr6.i1294 = getelementptr inbounds [16 x i8], ptr %add.ptr5.i1134, i64 %indvars.iv.i1292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %add.ptr4.i1293, ptr noundef nonnull readonly align 1 dereferenceable(16) %add.ptr6.i1294, i64 16, i1 false)
  %indvars.iv.next.i1295 = add nuw nsw i64 %indvars.iv.i1292, 1
  %322 = load ptr, ptr %sps, align 16
  %i_mb_width2.i1296 = getelementptr inbounds i8, ptr %322, i64 1084
  %323 = load i32, ptr %i_mb_width2.i1296, align 4
  %324 = sext i32 %323 to i64
  %cmp.i1297 = icmp slt i64 %indvars.iv.next.i1295, %324
  br i1 %cmp.i1297, label %for.body.i1291, label %restore_cavlc_nnz_row.exit1298

restore_cavlc_nnz_row.exit1298:                   ; preds = %for.body.i1291, %if.then1.i1128
  %325 = phi i32 [ %320, %if.then1.i1128 ], [ %323, %for.body.i1291 ]
  br i1 %cmp.i1124, label %if.then7.i1135, label %if.end463

if.then7.i1135:                                   ; preds = %restore_cavlc_nnz_row.exit1298
  %sub8.i1136 = add nsw i32 %mb_y.addr.0.lcssa, -2
  %mul11.i1138 = mul nsw i32 %325, 3
  %idx.ext12.i1139 = sext i32 %mul11.i1138 to i64
  %add.ptr13.i1140 = getelementptr inbounds [16 x i8], ptr %8, i64 %idx.ext12.i1139
  %326 = load ptr, ptr %non_zero_count.i1314, align 16
  %mul.i1276 = mul nsw i32 %325, %sub8.i1136
  %idx.ext.i1277 = sext i32 %mul.i1276 to i64
  %add.ptr.i1278 = getelementptr inbounds [24 x i8], ptr %326, i64 %idx.ext.i1277
  %cmp13.i = icmp sgt i32 %325, 0
  br i1 %cmp13.i, label %for.body.i1279, label %if.end463

for.body.i1279:                                   ; preds = %if.then7.i1135, %for.body.i1279
  %indvars.iv.i1280 = phi i64 [ %indvars.iv.next.i1282, %for.body.i1279 ], [ 0, %if.then7.i1135 ]
  %add.ptr4.i = getelementptr inbounds [24 x i8], ptr %add.ptr.i1278, i64 %indvars.iv.i1280
  %add.ptr6.i1281 = getelementptr inbounds [16 x i8], ptr %add.ptr13.i1140, i64 %indvars.iv.i1280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %add.ptr4.i, ptr noundef nonnull readonly align 1 dereferenceable(16) %add.ptr6.i1281, i64 16, i1 false)
  %indvars.iv.next.i1282 = add nuw nsw i64 %indvars.iv.i1280, 1
  %327 = load ptr, ptr %sps, align 16
  %i_mb_width2.i = getelementptr inbounds i8, ptr %327, i64 1084
  %328 = load i32, ptr %i_mb_width2.i, align 4
  %329 = sext i32 %328 to i64
  %cmp.i1283 = icmp slt i64 %indvars.iv.next.i1282, %329
  br i1 %cmp.i1283, label %for.body.i1279, label %if.end463

if.end463:                                        ; preds = %for.body.i1279, %restore_cavlc_nnz_row.exit1298, %if.end.i1125, %if.then7.i1135, %land.lhs.true458, %for.cond.cleanup
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @x264_prefetch_fenc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_macroblock_cache_load_neighbours_deblock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_deblock_init(i32 noundef %cpu, ptr nocapture noundef writeonly %pf) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %pf, i64 8
  store ptr @deblock_v_luma_c, ptr %arrayidx, align 8
  store ptr @deblock_h_luma_c, ptr %pf, align 8
  %deblock_chroma = getelementptr inbounds i8, ptr %pf, i64 16
  %arrayidx3 = getelementptr inbounds i8, ptr %pf, i64 24
  store ptr @deblock_v_chroma_c, ptr %arrayidx3, align 8
  store ptr @deblock_h_chroma_c, ptr %deblock_chroma, align 8
  %deblock_luma_intra = getelementptr inbounds i8, ptr %pf, i64 32
  %arrayidx6 = getelementptr inbounds i8, ptr %pf, i64 40
  store ptr @deblock_v_luma_intra_c, ptr %arrayidx6, align 8
  store ptr @deblock_h_luma_intra_c, ptr %deblock_luma_intra, align 8
  %deblock_chroma_intra = getelementptr inbounds i8, ptr %pf, i64 48
  %arrayidx9 = getelementptr inbounds i8, ptr %pf, i64 56
  store ptr @deblock_v_chroma_intra_c, ptr %arrayidx9, align 8
  store ptr @deblock_h_chroma_intra_c, ptr %deblock_chroma_intra, align 8
  %deblock_strength = getelementptr inbounds i8, ptr %pf, i64 64
  store ptr @deblock_strength_c, ptr %deblock_strength, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_v_luma_c(ptr nocapture noundef %pix, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta, ptr nocapture noundef readonly %tc0) #4 {
entry:
  tail call fastcc void @deblock_luma_c(ptr noundef %pix, i32 noundef %stride, i32 noundef 1, i32 noundef %alpha, i32 noundef %beta, ptr noundef %tc0)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_h_luma_c(ptr nocapture noundef %pix, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta, ptr nocapture noundef readonly %tc0) #4 {
entry:
  tail call fastcc void @deblock_luma_c(ptr noundef %pix, i32 noundef 1, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta, ptr noundef %tc0)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_v_chroma_c(ptr nocapture noundef %pix, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta, ptr nocapture noundef readonly %tc0) #4 {
entry:
  tail call fastcc void @deblock_chroma_c(ptr noundef %pix, i32 noundef %stride, i32 noundef 1, i32 noundef %alpha, i32 noundef %beta, ptr noundef %tc0)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_h_chroma_c(ptr nocapture noundef %pix, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta, ptr nocapture noundef readonly %tc0) #4 {
entry:
  tail call fastcc void @deblock_chroma_c(ptr noundef %pix, i32 noundef 1, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta, ptr noundef %tc0)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_v_luma_intra_c(ptr nocapture noundef %pix, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta) #4 {
entry:
  tail call fastcc void @deblock_luma_intra_c(ptr noundef %pix, i32 noundef %stride, i32 noundef 1, i32 noundef %alpha, i32 noundef %beta)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_h_luma_intra_c(ptr nocapture noundef %pix, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta) #4 {
entry:
  tail call fastcc void @deblock_luma_intra_c(ptr noundef %pix, i32 noundef 1, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_v_chroma_intra_c(ptr nocapture noundef %pix, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta) #5 {
entry:
  tail call fastcc void @deblock_chroma_intra_c(ptr noundef %pix, i32 noundef %stride, i32 noundef 1, i32 noundef %alpha, i32 noundef %beta)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_h_chroma_intra_c(ptr nocapture noundef %pix, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta) #5 {
entry:
  tail call fastcc void @deblock_chroma_intra_c(ptr noundef %pix, i32 noundef 1, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @deblock_strength_c(ptr nocapture noundef readonly %nnz, ptr nocapture noundef readonly %ref, ptr nocapture noundef readonly %mv, ptr nocapture noundef writeonly %bs, i32 noundef %mvy_limit, i32 noundef %bframe) #6 {
entry:
  %tobool61.not = icmp eq i32 %bframe, 0
  %arrayidx62 = getelementptr inbounds i8, ptr %ref, i64 40
  %arrayidx73 = getelementptr inbounds i8, ptr %mv, i64 160
  br i1 %tobool61.not, label %for.body6.us.us, label %for.body

for.body6.us.us:                                  ; preds = %entry, %if.end114.us.us.us.3
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %if.end114.us.us.us.3 ], [ 0, %entry ]
  %add.us.us = shl i64 %indvars.iv192, 32
  %sext = add i64 %add.us.us, 51539607552
  %0 = ashr exact i64 %sext, 32
  %arrayidx.us.us.us = getelementptr inbounds i8, ptr %nnz, i64 %0
  %1 = load i8, ptr %arrayidx.us.us.us, align 1
  %tobool11.not.us.us.us = icmp eq i8 %1, 0
  br i1 %tobool11.not.us.us.us, label %lor.lhs.false.us.us.us, label %if.end114.us.us.us

lor.lhs.false.us.us.us:                           ; preds = %for.body6.us.us
  %2 = add nsw i64 %0, -1
  %arrayidx13.us.us.us = getelementptr inbounds i8, ptr %nnz, i64 %2
  %3 = load i8, ptr %arrayidx13.us.us.us, align 1
  %tobool15.not.us.us.us = icmp eq i8 %3, 0
  br i1 %tobool15.not.us.us.us, label %if.else.us.us.us, label %if.end114.us.us.us

if.else.us.us.us:                                 ; preds = %lor.lhs.false.us.us.us
  %arrayidx24.us.us.us = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %0
  %4 = load i8, ptr %arrayidx24.us.us.us, align 1
  %arrayidx28.us.us.us = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %2
  %5 = load i8, ptr %arrayidx28.us.us.us, align 1
  %cmp30.not.us.us.us = icmp eq i8 %4, %5
  br i1 %cmp30.not.us.us.us, label %lor.lhs.false32.us.us.us, label %if.then100.us.us.us

lor.lhs.false32.us.us.us:                         ; preds = %if.else.us.us.us
  %arrayidx35.us.us.us = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %0
  %6 = load i16, ptr %arrayidx35.us.us.us, align 2
  %conv37.us.us.us = sext i16 %6 to i32
  %arrayidx40.us.us.us = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %2
  %7 = load i16, ptr %arrayidx40.us.us.us, align 2
  %conv42.us.us.us = sext i16 %7 to i32
  %sub43.us.us.us = sub nsw i32 %conv37.us.us.us, %conv42.us.us.us
  %8 = tail call i32 @llvm.abs.i32(i32 %sub43.us.us.us, i1 true)
  %cmp44.us.us.us = icmp ugt i32 %8, 3
  br i1 %cmp44.us.us.us, label %if.then100.us.us.us, label %lor.lhs.false46.us.us.us

lor.lhs.false46.us.us.us:                         ; preds = %lor.lhs.false32.us.us.us
  %arrayidx50.us.us.us = getelementptr inbounds i8, ptr %arrayidx35.us.us.us, i64 2
  %9 = load i16, ptr %arrayidx50.us.us.us, align 2
  %conv51.us.us.us = sext i16 %9 to i32
  %arrayidx55.us.us.us = getelementptr inbounds i8, ptr %arrayidx40.us.us.us, i64 2
  %10 = load i16, ptr %arrayidx55.us.us.us, align 2
  %conv56.us.us.us = sext i16 %10 to i32
  %sub57.us.us.us = sub nsw i32 %conv51.us.us.us, %conv56.us.us.us
  %11 = tail call i32 @llvm.abs.i32(i32 %sub57.us.us.us, i1 true)
  %cmp58.not.us.us.us = icmp slt i32 %11, %mvy_limit
  br i1 %cmp58.not.us.us.us, label %if.end114.us.us.us, label %if.then100.us.us.us

if.then100.us.us.us:                              ; preds = %lor.lhs.false46.us.us.us, %lor.lhs.false32.us.us.us, %if.else.us.us.us
  br label %if.end114.us.us.us

if.end114.us.us.us:                               ; preds = %lor.lhs.false46.us.us.us, %for.body6.us.us, %lor.lhs.false.us.us.us, %if.then100.us.us.us
  %.sink = phi i8 [ 1, %if.then100.us.us.us ], [ 2, %lor.lhs.false.us.us.us ], [ 2, %for.body6.us.us ], [ 0, %lor.lhs.false46.us.us.us ]
  %arrayidx106.us.us.us = getelementptr inbounds [4 x [4 x i8]], ptr %bs, i64 0, i64 %indvars.iv192, i64 0
  store i8 %.sink, ptr %arrayidx106.us.us.us, align 1
  %indvars.iv.next184 = add nuw nsw i64 %0, 8
  %arrayidx.us.us.us.1 = getelementptr inbounds i8, ptr %nnz, i64 %indvars.iv.next184
  %12 = load i8, ptr %arrayidx.us.us.us.1, align 1
  %tobool11.not.us.us.us.1 = icmp eq i8 %12, 0
  br i1 %tobool11.not.us.us.us.1, label %lor.lhs.false.us.us.us.1, label %if.end114.us.us.us.1

lor.lhs.false.us.us.us.1:                         ; preds = %if.end114.us.us.us
  %13 = add nsw i64 %0, 7
  %arrayidx13.us.us.us.1 = getelementptr inbounds i8, ptr %nnz, i64 %13
  %14 = load i8, ptr %arrayidx13.us.us.us.1, align 1
  %tobool15.not.us.us.us.1 = icmp eq i8 %14, 0
  br i1 %tobool15.not.us.us.us.1, label %if.else.us.us.us.1, label %if.end114.us.us.us.1

if.else.us.us.us.1:                               ; preds = %lor.lhs.false.us.us.us.1
  %arrayidx24.us.us.us.1 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %indvars.iv.next184
  %15 = load i8, ptr %arrayidx24.us.us.us.1, align 1
  %arrayidx28.us.us.us.1 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %13
  %16 = load i8, ptr %arrayidx28.us.us.us.1, align 1
  %cmp30.not.us.us.us.1 = icmp eq i8 %15, %16
  br i1 %cmp30.not.us.us.us.1, label %lor.lhs.false32.us.us.us.1, label %if.then100.us.us.us.1

lor.lhs.false32.us.us.us.1:                       ; preds = %if.else.us.us.us.1
  %arrayidx35.us.us.us.1 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %indvars.iv.next184
  %17 = load i16, ptr %arrayidx35.us.us.us.1, align 2
  %conv37.us.us.us.1 = sext i16 %17 to i32
  %arrayidx40.us.us.us.1 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %13
  %18 = load i16, ptr %arrayidx40.us.us.us.1, align 2
  %conv42.us.us.us.1 = sext i16 %18 to i32
  %sub43.us.us.us.1 = sub nsw i32 %conv37.us.us.us.1, %conv42.us.us.us.1
  %19 = tail call i32 @llvm.abs.i32(i32 %sub43.us.us.us.1, i1 true)
  %cmp44.us.us.us.1 = icmp ugt i32 %19, 3
  br i1 %cmp44.us.us.us.1, label %if.then100.us.us.us.1, label %lor.lhs.false46.us.us.us.1

lor.lhs.false46.us.us.us.1:                       ; preds = %lor.lhs.false32.us.us.us.1
  %arrayidx50.us.us.us.1 = getelementptr inbounds i8, ptr %arrayidx35.us.us.us.1, i64 2
  %20 = load i16, ptr %arrayidx50.us.us.us.1, align 2
  %conv51.us.us.us.1 = sext i16 %20 to i32
  %arrayidx55.us.us.us.1 = getelementptr inbounds i8, ptr %arrayidx40.us.us.us.1, i64 2
  %21 = load i16, ptr %arrayidx55.us.us.us.1, align 2
  %conv56.us.us.us.1 = sext i16 %21 to i32
  %sub57.us.us.us.1 = sub nsw i32 %conv51.us.us.us.1, %conv56.us.us.us.1
  %22 = tail call i32 @llvm.abs.i32(i32 %sub57.us.us.us.1, i1 true)
  %cmp58.not.us.us.us.1 = icmp slt i32 %22, %mvy_limit
  br i1 %cmp58.not.us.us.us.1, label %if.end114.us.us.us.1, label %if.then100.us.us.us.1

if.then100.us.us.us.1:                            ; preds = %lor.lhs.false46.us.us.us.1, %lor.lhs.false32.us.us.us.1, %if.else.us.us.us.1
  br label %if.end114.us.us.us.1

if.end114.us.us.us.1:                             ; preds = %lor.lhs.false46.us.us.us.1, %if.end114.us.us.us, %lor.lhs.false.us.us.us.1, %if.then100.us.us.us.1
  %.sink200 = phi i8 [ 1, %if.then100.us.us.us.1 ], [ 2, %lor.lhs.false.us.us.us.1 ], [ 2, %if.end114.us.us.us ], [ 0, %lor.lhs.false46.us.us.us.1 ]
  %arrayidx106.us.us.us.1 = getelementptr inbounds [4 x [4 x i8]], ptr %bs, i64 0, i64 %indvars.iv192, i64 1
  store i8 %.sink200, ptr %arrayidx106.us.us.us.1, align 1
  %indvars.iv.next184.1 = add nuw nsw i64 %0, 16
  %arrayidx.us.us.us.2 = getelementptr inbounds i8, ptr %nnz, i64 %indvars.iv.next184.1
  %23 = load i8, ptr %arrayidx.us.us.us.2, align 1
  %tobool11.not.us.us.us.2 = icmp eq i8 %23, 0
  br i1 %tobool11.not.us.us.us.2, label %lor.lhs.false.us.us.us.2, label %if.end114.us.us.us.2

lor.lhs.false.us.us.us.2:                         ; preds = %if.end114.us.us.us.1
  %24 = add nsw i64 %0, 15
  %arrayidx13.us.us.us.2 = getelementptr inbounds i8, ptr %nnz, i64 %24
  %25 = load i8, ptr %arrayidx13.us.us.us.2, align 1
  %tobool15.not.us.us.us.2 = icmp eq i8 %25, 0
  br i1 %tobool15.not.us.us.us.2, label %if.else.us.us.us.2, label %if.end114.us.us.us.2

if.else.us.us.us.2:                               ; preds = %lor.lhs.false.us.us.us.2
  %arrayidx24.us.us.us.2 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %indvars.iv.next184.1
  %26 = load i8, ptr %arrayidx24.us.us.us.2, align 1
  %arrayidx28.us.us.us.2 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %24
  %27 = load i8, ptr %arrayidx28.us.us.us.2, align 1
  %cmp30.not.us.us.us.2 = icmp eq i8 %26, %27
  br i1 %cmp30.not.us.us.us.2, label %lor.lhs.false32.us.us.us.2, label %if.then100.us.us.us.2

lor.lhs.false32.us.us.us.2:                       ; preds = %if.else.us.us.us.2
  %arrayidx35.us.us.us.2 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %indvars.iv.next184.1
  %28 = load i16, ptr %arrayidx35.us.us.us.2, align 2
  %conv37.us.us.us.2 = sext i16 %28 to i32
  %arrayidx40.us.us.us.2 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %24
  %29 = load i16, ptr %arrayidx40.us.us.us.2, align 2
  %conv42.us.us.us.2 = sext i16 %29 to i32
  %sub43.us.us.us.2 = sub nsw i32 %conv37.us.us.us.2, %conv42.us.us.us.2
  %30 = tail call i32 @llvm.abs.i32(i32 %sub43.us.us.us.2, i1 true)
  %cmp44.us.us.us.2 = icmp ugt i32 %30, 3
  br i1 %cmp44.us.us.us.2, label %if.then100.us.us.us.2, label %lor.lhs.false46.us.us.us.2

lor.lhs.false46.us.us.us.2:                       ; preds = %lor.lhs.false32.us.us.us.2
  %arrayidx50.us.us.us.2 = getelementptr inbounds i8, ptr %arrayidx35.us.us.us.2, i64 2
  %31 = load i16, ptr %arrayidx50.us.us.us.2, align 2
  %conv51.us.us.us.2 = sext i16 %31 to i32
  %arrayidx55.us.us.us.2 = getelementptr inbounds i8, ptr %arrayidx40.us.us.us.2, i64 2
  %32 = load i16, ptr %arrayidx55.us.us.us.2, align 2
  %conv56.us.us.us.2 = sext i16 %32 to i32
  %sub57.us.us.us.2 = sub nsw i32 %conv51.us.us.us.2, %conv56.us.us.us.2
  %33 = tail call i32 @llvm.abs.i32(i32 %sub57.us.us.us.2, i1 true)
  %cmp58.not.us.us.us.2 = icmp slt i32 %33, %mvy_limit
  br i1 %cmp58.not.us.us.us.2, label %if.end114.us.us.us.2, label %if.then100.us.us.us.2

if.then100.us.us.us.2:                            ; preds = %lor.lhs.false46.us.us.us.2, %lor.lhs.false32.us.us.us.2, %if.else.us.us.us.2
  br label %if.end114.us.us.us.2

if.end114.us.us.us.2:                             ; preds = %lor.lhs.false46.us.us.us.2, %if.end114.us.us.us.1, %lor.lhs.false.us.us.us.2, %if.then100.us.us.us.2
  %.sink201 = phi i8 [ 1, %if.then100.us.us.us.2 ], [ 2, %lor.lhs.false.us.us.us.2 ], [ 2, %if.end114.us.us.us.1 ], [ 0, %lor.lhs.false46.us.us.us.2 ]
  %arrayidx106.us.us.us.2 = getelementptr inbounds [4 x [4 x i8]], ptr %bs, i64 0, i64 %indvars.iv192, i64 2
  store i8 %.sink201, ptr %arrayidx106.us.us.us.2, align 1
  %indvars.iv.next184.2 = add nuw nsw i64 %0, 24
  %arrayidx.us.us.us.3 = getelementptr inbounds i8, ptr %nnz, i64 %indvars.iv.next184.2
  %34 = load i8, ptr %arrayidx.us.us.us.3, align 1
  %tobool11.not.us.us.us.3 = icmp eq i8 %34, 0
  br i1 %tobool11.not.us.us.us.3, label %lor.lhs.false.us.us.us.3, label %if.end114.us.us.us.3

lor.lhs.false.us.us.us.3:                         ; preds = %if.end114.us.us.us.2
  %35 = add nsw i64 %0, 23
  %arrayidx13.us.us.us.3 = getelementptr inbounds i8, ptr %nnz, i64 %35
  %36 = load i8, ptr %arrayidx13.us.us.us.3, align 1
  %tobool15.not.us.us.us.3 = icmp eq i8 %36, 0
  br i1 %tobool15.not.us.us.us.3, label %if.else.us.us.us.3, label %if.end114.us.us.us.3

if.else.us.us.us.3:                               ; preds = %lor.lhs.false.us.us.us.3
  %arrayidx24.us.us.us.3 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %indvars.iv.next184.2
  %37 = load i8, ptr %arrayidx24.us.us.us.3, align 1
  %arrayidx28.us.us.us.3 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %35
  %38 = load i8, ptr %arrayidx28.us.us.us.3, align 1
  %cmp30.not.us.us.us.3 = icmp eq i8 %37, %38
  br i1 %cmp30.not.us.us.us.3, label %lor.lhs.false32.us.us.us.3, label %if.then100.us.us.us.3

lor.lhs.false32.us.us.us.3:                       ; preds = %if.else.us.us.us.3
  %arrayidx35.us.us.us.3 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %indvars.iv.next184.2
  %39 = load i16, ptr %arrayidx35.us.us.us.3, align 2
  %conv37.us.us.us.3 = sext i16 %39 to i32
  %arrayidx40.us.us.us.3 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %35
  %40 = load i16, ptr %arrayidx40.us.us.us.3, align 2
  %conv42.us.us.us.3 = sext i16 %40 to i32
  %sub43.us.us.us.3 = sub nsw i32 %conv37.us.us.us.3, %conv42.us.us.us.3
  %41 = tail call i32 @llvm.abs.i32(i32 %sub43.us.us.us.3, i1 true)
  %cmp44.us.us.us.3 = icmp ugt i32 %41, 3
  br i1 %cmp44.us.us.us.3, label %if.then100.us.us.us.3, label %lor.lhs.false46.us.us.us.3

lor.lhs.false46.us.us.us.3:                       ; preds = %lor.lhs.false32.us.us.us.3
  %arrayidx50.us.us.us.3 = getelementptr inbounds i8, ptr %arrayidx35.us.us.us.3, i64 2
  %42 = load i16, ptr %arrayidx50.us.us.us.3, align 2
  %conv51.us.us.us.3 = sext i16 %42 to i32
  %arrayidx55.us.us.us.3 = getelementptr inbounds i8, ptr %arrayidx40.us.us.us.3, i64 2
  %43 = load i16, ptr %arrayidx55.us.us.us.3, align 2
  %conv56.us.us.us.3 = sext i16 %43 to i32
  %sub57.us.us.us.3 = sub nsw i32 %conv51.us.us.us.3, %conv56.us.us.us.3
  %44 = tail call i32 @llvm.abs.i32(i32 %sub57.us.us.us.3, i1 true)
  %cmp58.not.us.us.us.3 = icmp slt i32 %44, %mvy_limit
  br i1 %cmp58.not.us.us.us.3, label %if.end114.us.us.us.3, label %if.then100.us.us.us.3

if.then100.us.us.us.3:                            ; preds = %lor.lhs.false46.us.us.us.3, %lor.lhs.false32.us.us.us.3, %if.else.us.us.us.3
  br label %if.end114.us.us.us.3

if.end114.us.us.us.3:                             ; preds = %lor.lhs.false46.us.us.us.3, %if.end114.us.us.us.2, %lor.lhs.false.us.us.us.3, %if.then100.us.us.us.3
  %.sink202 = phi i8 [ 1, %if.then100.us.us.us.3 ], [ 2, %lor.lhs.false.us.us.us.3 ], [ 2, %if.end114.us.us.us.2 ], [ 0, %lor.lhs.false46.us.us.us.3 ]
  %arrayidx106.us.us.us.3 = getelementptr inbounds [4 x [4 x i8]], ptr %bs, i64 0, i64 %indvars.iv192, i64 3
  store i8 %.sink202, ptr %arrayidx106.us.us.us.3, align 1
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1
  %exitcond195.not = icmp eq i64 %indvars.iv.next193, 4
  br i1 %exitcond195.not, label %for.body6.us.us.1, label %for.body6.us.us

for.body6.us.us.1:                                ; preds = %if.end114.us.us.us.3, %if.end114.us.us.us.3.1
  %indvars.iv192.1 = phi i64 [ %indvars.iv.next193.1, %if.end114.us.us.us.3.1 ], [ 0, %if.end114.us.us.us.3 ]
  %45 = trunc nuw nsw i64 %indvars.iv192.1 to i32
  %mul.us.us.1 = shl nuw nsw i32 %45, 3
  %add.us.us.1 = add nuw i32 %mul.us.us.1, 12
  %46 = sext i32 %add.us.us.1 to i64
  %arrayidx.us.us.us.1209 = getelementptr inbounds i8, ptr %nnz, i64 %46
  %47 = load i8, ptr %arrayidx.us.us.us.1209, align 1
  %tobool11.not.us.us.us.1210 = icmp eq i8 %47, 0
  br i1 %tobool11.not.us.us.us.1210, label %lor.lhs.false.us.us.us.1213, label %if.end114.us.us.us.1235

lor.lhs.false.us.us.us.1213:                      ; preds = %for.body6.us.us.1
  %48 = add nsw i64 %46, -8
  %arrayidx13.us.us.us.1211 = getelementptr inbounds i8, ptr %nnz, i64 %48
  %49 = load i8, ptr %arrayidx13.us.us.us.1211, align 1
  %tobool15.not.us.us.us.1212 = icmp eq i8 %49, 0
  br i1 %tobool15.not.us.us.us.1212, label %if.else.us.us.us.1217, label %if.end114.us.us.us.1235

if.else.us.us.us.1217:                            ; preds = %lor.lhs.false.us.us.us.1213
  %arrayidx24.us.us.us.1214 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %46
  %50 = load i8, ptr %arrayidx24.us.us.us.1214, align 1
  %arrayidx28.us.us.us.1215 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %48
  %51 = load i8, ptr %arrayidx28.us.us.us.1215, align 1
  %cmp30.not.us.us.us.1216 = icmp eq i8 %50, %51
  br i1 %cmp30.not.us.us.us.1216, label %lor.lhs.false32.us.us.us.1224, label %if.then100.us.us.us.1232

lor.lhs.false32.us.us.us.1224:                    ; preds = %if.else.us.us.us.1217
  %arrayidx35.us.us.us.1218 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %46
  %52 = load i16, ptr %arrayidx35.us.us.us.1218, align 2
  %conv37.us.us.us.1219 = sext i16 %52 to i32
  %arrayidx40.us.us.us.1220 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %48
  %53 = load i16, ptr %arrayidx40.us.us.us.1220, align 2
  %conv42.us.us.us.1221 = sext i16 %53 to i32
  %sub43.us.us.us.1222 = sub nsw i32 %conv37.us.us.us.1219, %conv42.us.us.us.1221
  %54 = tail call i32 @llvm.abs.i32(i32 %sub43.us.us.us.1222, i1 true)
  %cmp44.us.us.us.1223 = icmp ugt i32 %54, 3
  br i1 %cmp44.us.us.us.1223, label %if.then100.us.us.us.1232, label %lor.lhs.false46.us.us.us.1231

lor.lhs.false46.us.us.us.1231:                    ; preds = %lor.lhs.false32.us.us.us.1224
  %arrayidx50.us.us.us.1225 = getelementptr inbounds i8, ptr %arrayidx35.us.us.us.1218, i64 2
  %55 = load i16, ptr %arrayidx50.us.us.us.1225, align 2
  %conv51.us.us.us.1226 = sext i16 %55 to i32
  %arrayidx55.us.us.us.1227 = getelementptr inbounds i8, ptr %arrayidx40.us.us.us.1220, i64 2
  %56 = load i16, ptr %arrayidx55.us.us.us.1227, align 2
  %conv56.us.us.us.1228 = sext i16 %56 to i32
  %sub57.us.us.us.1229 = sub nsw i32 %conv51.us.us.us.1226, %conv56.us.us.us.1228
  %57 = tail call i32 @llvm.abs.i32(i32 %sub57.us.us.us.1229, i1 true)
  %cmp58.not.us.us.us.1230 = icmp slt i32 %57, %mvy_limit
  br i1 %cmp58.not.us.us.us.1230, label %if.end114.us.us.us.1235, label %if.then100.us.us.us.1232

if.then100.us.us.us.1232:                         ; preds = %lor.lhs.false46.us.us.us.1231, %lor.lhs.false32.us.us.us.1224, %if.else.us.us.us.1217
  br label %if.end114.us.us.us.1235

if.end114.us.us.us.1235:                          ; preds = %if.then100.us.us.us.1232, %lor.lhs.false46.us.us.us.1231, %lor.lhs.false.us.us.us.1213, %for.body6.us.us.1
  %.sink.1 = phi i8 [ 1, %if.then100.us.us.us.1232 ], [ 2, %lor.lhs.false.us.us.us.1213 ], [ 2, %for.body6.us.us.1 ], [ 0, %lor.lhs.false46.us.us.us.1231 ]
  %arrayidx106.us.us.us.1233 = getelementptr inbounds [4 x [4 x i8]], ptr %bs, i64 1, i64 %indvars.iv192.1, i64 0
  store i8 %.sink.1, ptr %arrayidx106.us.us.us.1233, align 1
  %indvars.iv.next184.1234 = or disjoint i64 %46, 1
  %arrayidx.us.us.us.1.1 = getelementptr inbounds i8, ptr %nnz, i64 %indvars.iv.next184.1234
  %58 = load i8, ptr %arrayidx.us.us.us.1.1, align 1
  %tobool11.not.us.us.us.1.1 = icmp eq i8 %58, 0
  br i1 %tobool11.not.us.us.us.1.1, label %lor.lhs.false.us.us.us.1.1, label %if.end114.us.us.us.1.1

lor.lhs.false.us.us.us.1.1:                       ; preds = %if.end114.us.us.us.1235
  %59 = add nsw i64 %46, -7
  %arrayidx13.us.us.us.1.1 = getelementptr inbounds i8, ptr %nnz, i64 %59
  %60 = load i8, ptr %arrayidx13.us.us.us.1.1, align 1
  %tobool15.not.us.us.us.1.1 = icmp eq i8 %60, 0
  br i1 %tobool15.not.us.us.us.1.1, label %if.else.us.us.us.1.1, label %if.end114.us.us.us.1.1

if.else.us.us.us.1.1:                             ; preds = %lor.lhs.false.us.us.us.1.1
  %arrayidx24.us.us.us.1.1 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %indvars.iv.next184.1234
  %61 = load i8, ptr %arrayidx24.us.us.us.1.1, align 1
  %arrayidx28.us.us.us.1.1 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %59
  %62 = load i8, ptr %arrayidx28.us.us.us.1.1, align 1
  %cmp30.not.us.us.us.1.1 = icmp eq i8 %61, %62
  br i1 %cmp30.not.us.us.us.1.1, label %lor.lhs.false32.us.us.us.1.1, label %if.then100.us.us.us.1.1

lor.lhs.false32.us.us.us.1.1:                     ; preds = %if.else.us.us.us.1.1
  %arrayidx35.us.us.us.1.1 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %indvars.iv.next184.1234
  %63 = load i16, ptr %arrayidx35.us.us.us.1.1, align 2
  %conv37.us.us.us.1.1 = sext i16 %63 to i32
  %arrayidx40.us.us.us.1.1 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %59
  %64 = load i16, ptr %arrayidx40.us.us.us.1.1, align 2
  %conv42.us.us.us.1.1 = sext i16 %64 to i32
  %sub43.us.us.us.1.1 = sub nsw i32 %conv37.us.us.us.1.1, %conv42.us.us.us.1.1
  %65 = tail call i32 @llvm.abs.i32(i32 %sub43.us.us.us.1.1, i1 true)
  %cmp44.us.us.us.1.1 = icmp ugt i32 %65, 3
  br i1 %cmp44.us.us.us.1.1, label %if.then100.us.us.us.1.1, label %lor.lhs.false46.us.us.us.1.1

lor.lhs.false46.us.us.us.1.1:                     ; preds = %lor.lhs.false32.us.us.us.1.1
  %arrayidx50.us.us.us.1.1 = getelementptr inbounds i8, ptr %arrayidx35.us.us.us.1.1, i64 2
  %66 = load i16, ptr %arrayidx50.us.us.us.1.1, align 2
  %conv51.us.us.us.1.1 = sext i16 %66 to i32
  %arrayidx55.us.us.us.1.1 = getelementptr inbounds i8, ptr %arrayidx40.us.us.us.1.1, i64 2
  %67 = load i16, ptr %arrayidx55.us.us.us.1.1, align 2
  %conv56.us.us.us.1.1 = sext i16 %67 to i32
  %sub57.us.us.us.1.1 = sub nsw i32 %conv51.us.us.us.1.1, %conv56.us.us.us.1.1
  %68 = tail call i32 @llvm.abs.i32(i32 %sub57.us.us.us.1.1, i1 true)
  %cmp58.not.us.us.us.1.1 = icmp slt i32 %68, %mvy_limit
  br i1 %cmp58.not.us.us.us.1.1, label %if.end114.us.us.us.1.1, label %if.then100.us.us.us.1.1

if.then100.us.us.us.1.1:                          ; preds = %lor.lhs.false46.us.us.us.1.1, %lor.lhs.false32.us.us.us.1.1, %if.else.us.us.us.1.1
  br label %if.end114.us.us.us.1.1

if.end114.us.us.us.1.1:                           ; preds = %if.then100.us.us.us.1.1, %lor.lhs.false46.us.us.us.1.1, %lor.lhs.false.us.us.us.1.1, %if.end114.us.us.us.1235
  %.sink200.1 = phi i8 [ 1, %if.then100.us.us.us.1.1 ], [ 2, %lor.lhs.false.us.us.us.1.1 ], [ 2, %if.end114.us.us.us.1235 ], [ 0, %lor.lhs.false46.us.us.us.1.1 ]
  %arrayidx106.us.us.us.1.1 = getelementptr inbounds [4 x [4 x i8]], ptr %bs, i64 1, i64 %indvars.iv192.1, i64 1
  store i8 %.sink200.1, ptr %arrayidx106.us.us.us.1.1, align 1
  %indvars.iv.next184.1.1 = or disjoint i64 %46, 2
  %arrayidx.us.us.us.2.1 = getelementptr inbounds i8, ptr %nnz, i64 %indvars.iv.next184.1.1
  %69 = load i8, ptr %arrayidx.us.us.us.2.1, align 1
  %tobool11.not.us.us.us.2.1 = icmp eq i8 %69, 0
  br i1 %tobool11.not.us.us.us.2.1, label %lor.lhs.false.us.us.us.2.1, label %if.end114.us.us.us.2.1

lor.lhs.false.us.us.us.2.1:                       ; preds = %if.end114.us.us.us.1.1
  %70 = add nsw i64 %46, -6
  %arrayidx13.us.us.us.2.1 = getelementptr inbounds i8, ptr %nnz, i64 %70
  %71 = load i8, ptr %arrayidx13.us.us.us.2.1, align 1
  %tobool15.not.us.us.us.2.1 = icmp eq i8 %71, 0
  br i1 %tobool15.not.us.us.us.2.1, label %if.else.us.us.us.2.1, label %if.end114.us.us.us.2.1

if.else.us.us.us.2.1:                             ; preds = %lor.lhs.false.us.us.us.2.1
  %arrayidx24.us.us.us.2.1 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %indvars.iv.next184.1.1
  %72 = load i8, ptr %arrayidx24.us.us.us.2.1, align 1
  %arrayidx28.us.us.us.2.1 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %70
  %73 = load i8, ptr %arrayidx28.us.us.us.2.1, align 1
  %cmp30.not.us.us.us.2.1 = icmp eq i8 %72, %73
  br i1 %cmp30.not.us.us.us.2.1, label %lor.lhs.false32.us.us.us.2.1, label %if.then100.us.us.us.2.1

lor.lhs.false32.us.us.us.2.1:                     ; preds = %if.else.us.us.us.2.1
  %arrayidx35.us.us.us.2.1 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %indvars.iv.next184.1.1
  %74 = load i16, ptr %arrayidx35.us.us.us.2.1, align 2
  %conv37.us.us.us.2.1 = sext i16 %74 to i32
  %arrayidx40.us.us.us.2.1 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %70
  %75 = load i16, ptr %arrayidx40.us.us.us.2.1, align 2
  %conv42.us.us.us.2.1 = sext i16 %75 to i32
  %sub43.us.us.us.2.1 = sub nsw i32 %conv37.us.us.us.2.1, %conv42.us.us.us.2.1
  %76 = tail call i32 @llvm.abs.i32(i32 %sub43.us.us.us.2.1, i1 true)
  %cmp44.us.us.us.2.1 = icmp ugt i32 %76, 3
  br i1 %cmp44.us.us.us.2.1, label %if.then100.us.us.us.2.1, label %lor.lhs.false46.us.us.us.2.1

lor.lhs.false46.us.us.us.2.1:                     ; preds = %lor.lhs.false32.us.us.us.2.1
  %arrayidx50.us.us.us.2.1 = getelementptr inbounds i8, ptr %arrayidx35.us.us.us.2.1, i64 2
  %77 = load i16, ptr %arrayidx50.us.us.us.2.1, align 2
  %conv51.us.us.us.2.1 = sext i16 %77 to i32
  %arrayidx55.us.us.us.2.1 = getelementptr inbounds i8, ptr %arrayidx40.us.us.us.2.1, i64 2
  %78 = load i16, ptr %arrayidx55.us.us.us.2.1, align 2
  %conv56.us.us.us.2.1 = sext i16 %78 to i32
  %sub57.us.us.us.2.1 = sub nsw i32 %conv51.us.us.us.2.1, %conv56.us.us.us.2.1
  %79 = tail call i32 @llvm.abs.i32(i32 %sub57.us.us.us.2.1, i1 true)
  %cmp58.not.us.us.us.2.1 = icmp slt i32 %79, %mvy_limit
  br i1 %cmp58.not.us.us.us.2.1, label %if.end114.us.us.us.2.1, label %if.then100.us.us.us.2.1

if.then100.us.us.us.2.1:                          ; preds = %lor.lhs.false46.us.us.us.2.1, %lor.lhs.false32.us.us.us.2.1, %if.else.us.us.us.2.1
  br label %if.end114.us.us.us.2.1

if.end114.us.us.us.2.1:                           ; preds = %if.then100.us.us.us.2.1, %lor.lhs.false46.us.us.us.2.1, %lor.lhs.false.us.us.us.2.1, %if.end114.us.us.us.1.1
  %.sink201.1 = phi i8 [ 1, %if.then100.us.us.us.2.1 ], [ 2, %lor.lhs.false.us.us.us.2.1 ], [ 2, %if.end114.us.us.us.1.1 ], [ 0, %lor.lhs.false46.us.us.us.2.1 ]
  %arrayidx106.us.us.us.2.1 = getelementptr inbounds [4 x [4 x i8]], ptr %bs, i64 1, i64 %indvars.iv192.1, i64 2
  store i8 %.sink201.1, ptr %arrayidx106.us.us.us.2.1, align 1
  %indvars.iv.next184.2.1 = or disjoint i64 %46, 3
  %arrayidx.us.us.us.3.1 = getelementptr inbounds i8, ptr %nnz, i64 %indvars.iv.next184.2.1
  %80 = load i8, ptr %arrayidx.us.us.us.3.1, align 1
  %tobool11.not.us.us.us.3.1 = icmp eq i8 %80, 0
  br i1 %tobool11.not.us.us.us.3.1, label %lor.lhs.false.us.us.us.3.1, label %if.end114.us.us.us.3.1

lor.lhs.false.us.us.us.3.1:                       ; preds = %if.end114.us.us.us.2.1
  %81 = add nsw i64 %46, -5
  %arrayidx13.us.us.us.3.1 = getelementptr inbounds i8, ptr %nnz, i64 %81
  %82 = load i8, ptr %arrayidx13.us.us.us.3.1, align 1
  %tobool15.not.us.us.us.3.1 = icmp eq i8 %82, 0
  br i1 %tobool15.not.us.us.us.3.1, label %if.else.us.us.us.3.1, label %if.end114.us.us.us.3.1

if.else.us.us.us.3.1:                             ; preds = %lor.lhs.false.us.us.us.3.1
  %arrayidx24.us.us.us.3.1 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %indvars.iv.next184.2.1
  %83 = load i8, ptr %arrayidx24.us.us.us.3.1, align 1
  %arrayidx28.us.us.us.3.1 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %81
  %84 = load i8, ptr %arrayidx28.us.us.us.3.1, align 1
  %cmp30.not.us.us.us.3.1 = icmp eq i8 %83, %84
  br i1 %cmp30.not.us.us.us.3.1, label %lor.lhs.false32.us.us.us.3.1, label %if.then100.us.us.us.3.1

lor.lhs.false32.us.us.us.3.1:                     ; preds = %if.else.us.us.us.3.1
  %arrayidx35.us.us.us.3.1 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %indvars.iv.next184.2.1
  %85 = load i16, ptr %arrayidx35.us.us.us.3.1, align 2
  %conv37.us.us.us.3.1 = sext i16 %85 to i32
  %arrayidx40.us.us.us.3.1 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %81
  %86 = load i16, ptr %arrayidx40.us.us.us.3.1, align 2
  %conv42.us.us.us.3.1 = sext i16 %86 to i32
  %sub43.us.us.us.3.1 = sub nsw i32 %conv37.us.us.us.3.1, %conv42.us.us.us.3.1
  %87 = tail call i32 @llvm.abs.i32(i32 %sub43.us.us.us.3.1, i1 true)
  %cmp44.us.us.us.3.1 = icmp ugt i32 %87, 3
  br i1 %cmp44.us.us.us.3.1, label %if.then100.us.us.us.3.1, label %lor.lhs.false46.us.us.us.3.1

lor.lhs.false46.us.us.us.3.1:                     ; preds = %lor.lhs.false32.us.us.us.3.1
  %arrayidx50.us.us.us.3.1 = getelementptr inbounds i8, ptr %arrayidx35.us.us.us.3.1, i64 2
  %88 = load i16, ptr %arrayidx50.us.us.us.3.1, align 2
  %conv51.us.us.us.3.1 = sext i16 %88 to i32
  %arrayidx55.us.us.us.3.1 = getelementptr inbounds i8, ptr %arrayidx40.us.us.us.3.1, i64 2
  %89 = load i16, ptr %arrayidx55.us.us.us.3.1, align 2
  %conv56.us.us.us.3.1 = sext i16 %89 to i32
  %sub57.us.us.us.3.1 = sub nsw i32 %conv51.us.us.us.3.1, %conv56.us.us.us.3.1
  %90 = tail call i32 @llvm.abs.i32(i32 %sub57.us.us.us.3.1, i1 true)
  %cmp58.not.us.us.us.3.1 = icmp slt i32 %90, %mvy_limit
  br i1 %cmp58.not.us.us.us.3.1, label %if.end114.us.us.us.3.1, label %if.then100.us.us.us.3.1

if.then100.us.us.us.3.1:                          ; preds = %lor.lhs.false46.us.us.us.3.1, %lor.lhs.false32.us.us.us.3.1, %if.else.us.us.us.3.1
  br label %if.end114.us.us.us.3.1

if.end114.us.us.us.3.1:                           ; preds = %if.then100.us.us.us.3.1, %lor.lhs.false46.us.us.us.3.1, %lor.lhs.false.us.us.us.3.1, %if.end114.us.us.us.2.1
  %.sink202.1 = phi i8 [ 1, %if.then100.us.us.us.3.1 ], [ 2, %lor.lhs.false.us.us.us.3.1 ], [ 2, %if.end114.us.us.us.2.1 ], [ 0, %lor.lhs.false46.us.us.us.3.1 ]
  %arrayidx106.us.us.us.3.1 = getelementptr inbounds [4 x [4 x i8]], ptr %bs, i64 1, i64 %indvars.iv192.1, i64 3
  store i8 %.sink202.1, ptr %arrayidx106.us.us.us.3.1, align 1
  %indvars.iv.next193.1 = add nuw nsw i64 %indvars.iv192.1, 1
  %exitcond195.not.1 = icmp eq i64 %indvars.iv.next193.1, 4
  br i1 %exitcond195.not.1, label %for.cond.cleanup, label %for.body6.us.us.1

for.cond.cleanup:                                 ; preds = %for.cond.cleanup5.split, %if.end114.us.us.us.3.1
  ret void

for.body:                                         ; preds = %entry, %for.cond.cleanup5.split
  %tobool.not = phi i1 [ false, %for.cond.cleanup5.split ], [ true, %entry ]
  %indvars.iv180 = phi i64 [ 1, %for.cond.cleanup5.split ], [ 0, %entry ]
  %91 = select i1 %tobool.not, i32 0, i32 3
  %92 = select i1 %tobool.not, i64 8, i64 1
  %93 = select i1 %tobool.not, i64 -1, i64 -8
  br label %for.body6

for.cond.cleanup5.split:                          ; preds = %if.end114.3
  br i1 %tobool.not, label %for.body, label %for.cond.cleanup

for.body6:                                        ; preds = %for.body, %if.end114.3
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next178, %if.end114.3 ]
  %94 = trunc nuw nsw i64 %indvars.iv to i32
  %mul = shl nuw nsw i32 %94, %91
  %add = add nuw i32 %mul, 12
  %95 = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %nnz, i64 %95
  %96 = load i8, ptr %arrayidx, align 1
  %tobool11.not = icmp eq i8 %96, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %if.end114

lor.lhs.false:                                    ; preds = %for.body6
  %97 = add nsw i64 %93, %95
  %arrayidx13 = getelementptr inbounds i8, ptr %nnz, i64 %97
  %98 = load i8, ptr %arrayidx13, align 1
  %tobool15.not = icmp eq i8 %98, 0
  br i1 %tobool15.not, label %if.else, label %if.end114

if.else:                                          ; preds = %lor.lhs.false
  %arrayidx24 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %95
  %99 = load i8, ptr %arrayidx24, align 1
  %arrayidx28 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %97
  %100 = load i8, ptr %arrayidx28, align 1
  %cmp30.not = icmp eq i8 %99, %100
  br i1 %cmp30.not, label %lor.lhs.false32, label %if.end114

lor.lhs.false32:                                  ; preds = %if.else
  %arrayidx35 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %95
  %101 = load i16, ptr %arrayidx35, align 2
  %conv37 = sext i16 %101 to i32
  %arrayidx40 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %97
  %102 = load i16, ptr %arrayidx40, align 2
  %conv42 = sext i16 %102 to i32
  %sub43 = sub nsw i32 %conv37, %conv42
  %103 = tail call i32 @llvm.abs.i32(i32 %sub43, i1 true)
  %cmp44 = icmp ugt i32 %103, 3
  br i1 %cmp44, label %if.end114, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false32
  %arrayidx50 = getelementptr inbounds i8, ptr %arrayidx35, i64 2
  %104 = load i16, ptr %arrayidx50, align 2
  %conv51 = sext i16 %104 to i32
  %arrayidx55 = getelementptr inbounds i8, ptr %arrayidx40, i64 2
  %105 = load i16, ptr %arrayidx55, align 2
  %conv56 = sext i16 %105 to i32
  %sub57 = sub nsw i32 %conv51, %conv56
  %106 = tail call i32 @llvm.abs.i32(i32 %sub57, i1 true)
  %cmp58.not = icmp slt i32 %106, %mvy_limit
  br i1 %cmp58.not, label %lor.lhs.false60, label %if.end114

lor.lhs.false60:                                  ; preds = %lor.lhs.false46
  %arrayidx64 = getelementptr inbounds [40 x i8], ptr %arrayidx62, i64 0, i64 %95
  %107 = load i8, ptr %arrayidx64, align 1
  %arrayidx68 = getelementptr inbounds [40 x i8], ptr %arrayidx62, i64 0, i64 %97
  %108 = load i8, ptr %arrayidx68, align 1
  %cmp70.not = icmp eq i8 %107, %108
  br i1 %cmp70.not, label %lor.lhs.false72, label %if.end114

lor.lhs.false72:                                  ; preds = %lor.lhs.false60
  %arrayidx75 = getelementptr inbounds [40 x [2 x i16]], ptr %arrayidx73, i64 0, i64 %95
  %109 = load i16, ptr %arrayidx75, align 2
  %conv77 = sext i16 %109 to i32
  %arrayidx80 = getelementptr inbounds [40 x [2 x i16]], ptr %arrayidx73, i64 0, i64 %97
  %110 = load i16, ptr %arrayidx80, align 2
  %conv82 = sext i16 %110 to i32
  %sub83 = sub nsw i32 %conv77, %conv82
  %111 = tail call i32 @llvm.abs.i32(i32 %sub83, i1 true)
  %cmp84 = icmp ugt i32 %111, 3
  br i1 %cmp84, label %if.end114, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %lor.lhs.false72
  %arrayidx90 = getelementptr inbounds i8, ptr %arrayidx75, i64 2
  %112 = load i16, ptr %arrayidx90, align 2
  %conv91 = sext i16 %112 to i32
  %arrayidx95 = getelementptr inbounds i8, ptr %arrayidx80, i64 2
  %113 = load i16, ptr %arrayidx95, align 2
  %conv96 = sext i16 %113 to i32
  %sub97 = sub nsw i32 %conv91, %conv96
  %114 = tail call i32 @llvm.abs.i32(i32 %sub97, i1 true)
  %cmp98.not = icmp uge i32 %114, %mvy_limit
  %spec.select = zext i1 %cmp98.not to i8
  br label %if.end114

if.end114:                                        ; preds = %lor.lhs.false86, %if.else, %lor.lhs.false32, %lor.lhs.false46, %lor.lhs.false60, %lor.lhs.false72, %for.body6, %lor.lhs.false
  %.sink203 = phi i8 [ 2, %lor.lhs.false ], [ 2, %for.body6 ], [ 1, %lor.lhs.false72 ], [ 1, %lor.lhs.false60 ], [ 1, %lor.lhs.false46 ], [ 1, %lor.lhs.false32 ], [ 1, %if.else ], [ %spec.select, %lor.lhs.false86 ]
  %arrayidx106 = getelementptr inbounds [4 x [4 x i8]], ptr %bs, i64 %indvars.iv180, i64 %indvars.iv, i64 0
  store i8 %.sink203, ptr %arrayidx106, align 1
  %indvars.iv.next = add nuw nsw i64 %92, %95
  %arrayidx.1 = getelementptr inbounds i8, ptr %nnz, i64 %indvars.iv.next
  %115 = load i8, ptr %arrayidx.1, align 1
  %tobool11.not.1 = icmp eq i8 %115, 0
  br i1 %tobool11.not.1, label %lor.lhs.false.1, label %if.end114.1

lor.lhs.false.1:                                  ; preds = %if.end114
  %116 = add nsw i64 %indvars.iv.next, %93
  %arrayidx13.1 = getelementptr inbounds i8, ptr %nnz, i64 %116
  %117 = load i8, ptr %arrayidx13.1, align 1
  %tobool15.not.1 = icmp eq i8 %117, 0
  br i1 %tobool15.not.1, label %if.else.1, label %if.end114.1

if.else.1:                                        ; preds = %lor.lhs.false.1
  %arrayidx24.1 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %indvars.iv.next
  %118 = load i8, ptr %arrayidx24.1, align 1
  %arrayidx28.1 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %116
  %119 = load i8, ptr %arrayidx28.1, align 1
  %cmp30.not.1 = icmp eq i8 %118, %119
  br i1 %cmp30.not.1, label %lor.lhs.false32.1, label %if.then100.1

lor.lhs.false32.1:                                ; preds = %if.else.1
  %arrayidx35.1 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %indvars.iv.next
  %120 = load i16, ptr %arrayidx35.1, align 2
  %conv37.1 = sext i16 %120 to i32
  %arrayidx40.1 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %116
  %121 = load i16, ptr %arrayidx40.1, align 2
  %conv42.1 = sext i16 %121 to i32
  %sub43.1 = sub nsw i32 %conv37.1, %conv42.1
  %122 = tail call i32 @llvm.abs.i32(i32 %sub43.1, i1 true)
  %cmp44.1 = icmp ugt i32 %122, 3
  br i1 %cmp44.1, label %if.then100.1, label %lor.lhs.false46.1

lor.lhs.false46.1:                                ; preds = %lor.lhs.false32.1
  %arrayidx50.1 = getelementptr inbounds i8, ptr %arrayidx35.1, i64 2
  %123 = load i16, ptr %arrayidx50.1, align 2
  %conv51.1 = sext i16 %123 to i32
  %arrayidx55.1 = getelementptr inbounds i8, ptr %arrayidx40.1, i64 2
  %124 = load i16, ptr %arrayidx55.1, align 2
  %conv56.1 = sext i16 %124 to i32
  %sub57.1 = sub nsw i32 %conv51.1, %conv56.1
  %125 = tail call i32 @llvm.abs.i32(i32 %sub57.1, i1 true)
  %cmp58.not.1 = icmp slt i32 %125, %mvy_limit
  br i1 %cmp58.not.1, label %lor.lhs.false60.1, label %if.then100.1

lor.lhs.false60.1:                                ; preds = %lor.lhs.false46.1
  %arrayidx64.1 = getelementptr inbounds [40 x i8], ptr %arrayidx62, i64 0, i64 %indvars.iv.next
  %126 = load i8, ptr %arrayidx64.1, align 1
  %arrayidx68.1 = getelementptr inbounds [40 x i8], ptr %arrayidx62, i64 0, i64 %116
  %127 = load i8, ptr %arrayidx68.1, align 1
  %cmp70.not.1 = icmp eq i8 %126, %127
  br i1 %cmp70.not.1, label %lor.lhs.false72.1, label %if.then100.1

lor.lhs.false72.1:                                ; preds = %lor.lhs.false60.1
  %arrayidx75.1 = getelementptr inbounds [40 x [2 x i16]], ptr %arrayidx73, i64 0, i64 %indvars.iv.next
  %128 = load i16, ptr %arrayidx75.1, align 2
  %conv77.1 = sext i16 %128 to i32
  %arrayidx80.1 = getelementptr inbounds [40 x [2 x i16]], ptr %arrayidx73, i64 0, i64 %116
  %129 = load i16, ptr %arrayidx80.1, align 2
  %conv82.1 = sext i16 %129 to i32
  %sub83.1 = sub nsw i32 %conv77.1, %conv82.1
  %130 = tail call i32 @llvm.abs.i32(i32 %sub83.1, i1 true)
  %cmp84.1 = icmp ugt i32 %130, 3
  br i1 %cmp84.1, label %if.then100.1, label %lor.lhs.false86.1

lor.lhs.false86.1:                                ; preds = %lor.lhs.false72.1
  %arrayidx90.1 = getelementptr inbounds i8, ptr %arrayidx75.1, i64 2
  %131 = load i16, ptr %arrayidx90.1, align 2
  %conv91.1 = sext i16 %131 to i32
  %arrayidx95.1 = getelementptr inbounds i8, ptr %arrayidx80.1, i64 2
  %132 = load i16, ptr %arrayidx95.1, align 2
  %conv96.1 = sext i16 %132 to i32
  %sub97.1 = sub nsw i32 %conv91.1, %conv96.1
  %133 = tail call i32 @llvm.abs.i32(i32 %sub97.1, i1 true)
  %cmp98.not.1 = icmp ult i32 %133, %mvy_limit
  br i1 %cmp98.not.1, label %if.end114.1, label %if.then100.1

if.then100.1:                                     ; preds = %lor.lhs.false86.1, %lor.lhs.false72.1, %lor.lhs.false60.1, %lor.lhs.false46.1, %lor.lhs.false32.1, %if.else.1
  br label %if.end114.1

if.end114.1:                                      ; preds = %lor.lhs.false86.1, %if.end114, %lor.lhs.false.1, %if.then100.1
  %.sink204 = phi i8 [ 1, %if.then100.1 ], [ 2, %lor.lhs.false.1 ], [ 2, %if.end114 ], [ 0, %lor.lhs.false86.1 ]
  %arrayidx106.1 = getelementptr inbounds [4 x [4 x i8]], ptr %bs, i64 %indvars.iv180, i64 %indvars.iv, i64 1
  store i8 %.sink204, ptr %arrayidx106.1, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, %92
  %arrayidx.2 = getelementptr inbounds i8, ptr %nnz, i64 %indvars.iv.next.1
  %134 = load i8, ptr %arrayidx.2, align 1
  %tobool11.not.2 = icmp eq i8 %134, 0
  br i1 %tobool11.not.2, label %lor.lhs.false.2, label %if.end114.2

lor.lhs.false.2:                                  ; preds = %if.end114.1
  %135 = add nsw i64 %indvars.iv.next.1, %93
  %arrayidx13.2 = getelementptr inbounds i8, ptr %nnz, i64 %135
  %136 = load i8, ptr %arrayidx13.2, align 1
  %tobool15.not.2 = icmp eq i8 %136, 0
  br i1 %tobool15.not.2, label %if.else.2, label %if.end114.2

if.else.2:                                        ; preds = %lor.lhs.false.2
  %arrayidx24.2 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %indvars.iv.next.1
  %137 = load i8, ptr %arrayidx24.2, align 1
  %arrayidx28.2 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %135
  %138 = load i8, ptr %arrayidx28.2, align 1
  %cmp30.not.2 = icmp eq i8 %137, %138
  br i1 %cmp30.not.2, label %lor.lhs.false32.2, label %if.then100.2

lor.lhs.false32.2:                                ; preds = %if.else.2
  %arrayidx35.2 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %indvars.iv.next.1
  %139 = load i16, ptr %arrayidx35.2, align 2
  %conv37.2 = sext i16 %139 to i32
  %arrayidx40.2 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %135
  %140 = load i16, ptr %arrayidx40.2, align 2
  %conv42.2 = sext i16 %140 to i32
  %sub43.2 = sub nsw i32 %conv37.2, %conv42.2
  %141 = tail call i32 @llvm.abs.i32(i32 %sub43.2, i1 true)
  %cmp44.2 = icmp ugt i32 %141, 3
  br i1 %cmp44.2, label %if.then100.2, label %lor.lhs.false46.2

lor.lhs.false46.2:                                ; preds = %lor.lhs.false32.2
  %arrayidx50.2 = getelementptr inbounds i8, ptr %arrayidx35.2, i64 2
  %142 = load i16, ptr %arrayidx50.2, align 2
  %conv51.2 = sext i16 %142 to i32
  %arrayidx55.2 = getelementptr inbounds i8, ptr %arrayidx40.2, i64 2
  %143 = load i16, ptr %arrayidx55.2, align 2
  %conv56.2 = sext i16 %143 to i32
  %sub57.2 = sub nsw i32 %conv51.2, %conv56.2
  %144 = tail call i32 @llvm.abs.i32(i32 %sub57.2, i1 true)
  %cmp58.not.2 = icmp slt i32 %144, %mvy_limit
  br i1 %cmp58.not.2, label %lor.lhs.false60.2, label %if.then100.2

lor.lhs.false60.2:                                ; preds = %lor.lhs.false46.2
  %arrayidx64.2 = getelementptr inbounds [40 x i8], ptr %arrayidx62, i64 0, i64 %indvars.iv.next.1
  %145 = load i8, ptr %arrayidx64.2, align 1
  %arrayidx68.2 = getelementptr inbounds [40 x i8], ptr %arrayidx62, i64 0, i64 %135
  %146 = load i8, ptr %arrayidx68.2, align 1
  %cmp70.not.2 = icmp eq i8 %145, %146
  br i1 %cmp70.not.2, label %lor.lhs.false72.2, label %if.then100.2

lor.lhs.false72.2:                                ; preds = %lor.lhs.false60.2
  %arrayidx75.2 = getelementptr inbounds [40 x [2 x i16]], ptr %arrayidx73, i64 0, i64 %indvars.iv.next.1
  %147 = load i16, ptr %arrayidx75.2, align 2
  %conv77.2 = sext i16 %147 to i32
  %arrayidx80.2 = getelementptr inbounds [40 x [2 x i16]], ptr %arrayidx73, i64 0, i64 %135
  %148 = load i16, ptr %arrayidx80.2, align 2
  %conv82.2 = sext i16 %148 to i32
  %sub83.2 = sub nsw i32 %conv77.2, %conv82.2
  %149 = tail call i32 @llvm.abs.i32(i32 %sub83.2, i1 true)
  %cmp84.2 = icmp ugt i32 %149, 3
  br i1 %cmp84.2, label %if.then100.2, label %lor.lhs.false86.2

lor.lhs.false86.2:                                ; preds = %lor.lhs.false72.2
  %arrayidx90.2 = getelementptr inbounds i8, ptr %arrayidx75.2, i64 2
  %150 = load i16, ptr %arrayidx90.2, align 2
  %conv91.2 = sext i16 %150 to i32
  %arrayidx95.2 = getelementptr inbounds i8, ptr %arrayidx80.2, i64 2
  %151 = load i16, ptr %arrayidx95.2, align 2
  %conv96.2 = sext i16 %151 to i32
  %sub97.2 = sub nsw i32 %conv91.2, %conv96.2
  %152 = tail call i32 @llvm.abs.i32(i32 %sub97.2, i1 true)
  %cmp98.not.2 = icmp ult i32 %152, %mvy_limit
  br i1 %cmp98.not.2, label %if.end114.2, label %if.then100.2

if.then100.2:                                     ; preds = %lor.lhs.false86.2, %lor.lhs.false72.2, %lor.lhs.false60.2, %lor.lhs.false46.2, %lor.lhs.false32.2, %if.else.2
  br label %if.end114.2

if.end114.2:                                      ; preds = %lor.lhs.false86.2, %if.end114.1, %lor.lhs.false.2, %if.then100.2
  %.sink205 = phi i8 [ 1, %if.then100.2 ], [ 2, %lor.lhs.false.2 ], [ 2, %if.end114.1 ], [ 0, %lor.lhs.false86.2 ]
  %arrayidx106.2 = getelementptr inbounds [4 x [4 x i8]], ptr %bs, i64 %indvars.iv180, i64 %indvars.iv, i64 2
  store i8 %.sink205, ptr %arrayidx106.2, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.next.1, %92
  %arrayidx.3 = getelementptr inbounds i8, ptr %nnz, i64 %indvars.iv.next.2
  %153 = load i8, ptr %arrayidx.3, align 1
  %tobool11.not.3 = icmp eq i8 %153, 0
  br i1 %tobool11.not.3, label %lor.lhs.false.3, label %if.end114.3

lor.lhs.false.3:                                  ; preds = %if.end114.2
  %154 = add nsw i64 %indvars.iv.next.2, %93
  %arrayidx13.3 = getelementptr inbounds i8, ptr %nnz, i64 %154
  %155 = load i8, ptr %arrayidx13.3, align 1
  %tobool15.not.3 = icmp eq i8 %155, 0
  br i1 %tobool15.not.3, label %if.else.3, label %if.end114.3

if.else.3:                                        ; preds = %lor.lhs.false.3
  %arrayidx24.3 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %indvars.iv.next.2
  %156 = load i8, ptr %arrayidx24.3, align 1
  %arrayidx28.3 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %154
  %157 = load i8, ptr %arrayidx28.3, align 1
  %cmp30.not.3 = icmp eq i8 %156, %157
  br i1 %cmp30.not.3, label %lor.lhs.false32.3, label %if.then100.3

lor.lhs.false32.3:                                ; preds = %if.else.3
  %arrayidx35.3 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %indvars.iv.next.2
  %158 = load i16, ptr %arrayidx35.3, align 2
  %conv37.3 = sext i16 %158 to i32
  %arrayidx40.3 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %154
  %159 = load i16, ptr %arrayidx40.3, align 2
  %conv42.3 = sext i16 %159 to i32
  %sub43.3 = sub nsw i32 %conv37.3, %conv42.3
  %160 = tail call i32 @llvm.abs.i32(i32 %sub43.3, i1 true)
  %cmp44.3 = icmp ugt i32 %160, 3
  br i1 %cmp44.3, label %if.then100.3, label %lor.lhs.false46.3

lor.lhs.false46.3:                                ; preds = %lor.lhs.false32.3
  %arrayidx50.3 = getelementptr inbounds i8, ptr %arrayidx35.3, i64 2
  %161 = load i16, ptr %arrayidx50.3, align 2
  %conv51.3 = sext i16 %161 to i32
  %arrayidx55.3 = getelementptr inbounds i8, ptr %arrayidx40.3, i64 2
  %162 = load i16, ptr %arrayidx55.3, align 2
  %conv56.3 = sext i16 %162 to i32
  %sub57.3 = sub nsw i32 %conv51.3, %conv56.3
  %163 = tail call i32 @llvm.abs.i32(i32 %sub57.3, i1 true)
  %cmp58.not.3 = icmp slt i32 %163, %mvy_limit
  br i1 %cmp58.not.3, label %lor.lhs.false60.3, label %if.then100.3

lor.lhs.false60.3:                                ; preds = %lor.lhs.false46.3
  %arrayidx64.3 = getelementptr inbounds [40 x i8], ptr %arrayidx62, i64 0, i64 %indvars.iv.next.2
  %164 = load i8, ptr %arrayidx64.3, align 1
  %arrayidx68.3 = getelementptr inbounds [40 x i8], ptr %arrayidx62, i64 0, i64 %154
  %165 = load i8, ptr %arrayidx68.3, align 1
  %cmp70.not.3 = icmp eq i8 %164, %165
  br i1 %cmp70.not.3, label %lor.lhs.false72.3, label %if.then100.3

lor.lhs.false72.3:                                ; preds = %lor.lhs.false60.3
  %arrayidx75.3 = getelementptr inbounds [40 x [2 x i16]], ptr %arrayidx73, i64 0, i64 %indvars.iv.next.2
  %166 = load i16, ptr %arrayidx75.3, align 2
  %conv77.3 = sext i16 %166 to i32
  %arrayidx80.3 = getelementptr inbounds [40 x [2 x i16]], ptr %arrayidx73, i64 0, i64 %154
  %167 = load i16, ptr %arrayidx80.3, align 2
  %conv82.3 = sext i16 %167 to i32
  %sub83.3 = sub nsw i32 %conv77.3, %conv82.3
  %168 = tail call i32 @llvm.abs.i32(i32 %sub83.3, i1 true)
  %cmp84.3 = icmp ugt i32 %168, 3
  br i1 %cmp84.3, label %if.then100.3, label %lor.lhs.false86.3

lor.lhs.false86.3:                                ; preds = %lor.lhs.false72.3
  %arrayidx90.3 = getelementptr inbounds i8, ptr %arrayidx75.3, i64 2
  %169 = load i16, ptr %arrayidx90.3, align 2
  %conv91.3 = sext i16 %169 to i32
  %arrayidx95.3 = getelementptr inbounds i8, ptr %arrayidx80.3, i64 2
  %170 = load i16, ptr %arrayidx95.3, align 2
  %conv96.3 = sext i16 %170 to i32
  %sub97.3 = sub nsw i32 %conv91.3, %conv96.3
  %171 = tail call i32 @llvm.abs.i32(i32 %sub97.3, i1 true)
  %cmp98.not.3 = icmp ult i32 %171, %mvy_limit
  br i1 %cmp98.not.3, label %if.end114.3, label %if.then100.3

if.then100.3:                                     ; preds = %lor.lhs.false86.3, %lor.lhs.false72.3, %lor.lhs.false60.3, %lor.lhs.false46.3, %lor.lhs.false32.3, %if.else.3
  br label %if.end114.3

if.end114.3:                                      ; preds = %lor.lhs.false86.3, %if.end114.2, %lor.lhs.false.3, %if.then100.3
  %.sink206 = phi i8 [ 1, %if.then100.3 ], [ 2, %lor.lhs.false.3 ], [ 2, %if.end114.2 ], [ 0, %lor.lhs.false86.3 ]
  %arrayidx106.3 = getelementptr inbounds [4 x [4 x i8]], ptr %bs, i64 %indvars.iv180, i64 %indvars.iv, i64 3
  store i8 %.sink206, ptr %arrayidx106.3, align 1
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next178, 4
  br i1 %exitcond.not, label %for.cond.cleanup5.split, label %for.body6
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @deblock_luma_c(ptr nocapture noundef %pix, i32 noundef %xstride, i32 noundef %ystride, i32 noundef %alpha, i32 noundef %beta, ptr nocapture noundef readonly %tc0) unnamed_addr #8 {
entry:
  %mul8 = mul nsw i32 %xstride, -3
  %idxprom9 = sext i32 %mul8 to i64
  %mul12 = mul nsw i32 %xstride, -2
  %idxprom13 = sext i32 %mul12 to i64
  %mul16 = sub nsw i32 0, %xstride
  %idxprom17 = sext i32 %mul16 to i64
  %idxprom25 = sext i32 %xstride to i64
  %mul28 = shl nsw i32 %xstride, 1
  %idxprom29 = sext i32 %mul28 to i64
  %idx.ext118 = sext i32 %ystride to i64
  %mul = shl nsw i32 %ystride, 2
  %idx.ext = sext i32 %mul to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.inc121
  ret void

for.body:                                         ; preds = %entry, %for.inc121
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc121 ]
  %pix.addr.0203 = phi ptr [ %pix, %entry ], [ %pix.addr.2, %for.inc121 ]
  %arrayidx = getelementptr inbounds i8, ptr %tc0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1
  %cmp1 = icmp slt i8 %0, 0
  br i1 %cmp1, label %if.then, label %for.body7

if.then:                                          ; preds = %for.body
  %add.ptr = getelementptr inbounds i8, ptr %pix.addr.0203, i64 %idx.ext
  br label %for.inc121

for.body7:                                        ; preds = %for.body, %if.end117
  %pix.addr.1201 = phi ptr [ %add.ptr119, %if.end117 ], [ %pix.addr.0203, %for.body ]
  %d.0200 = phi i32 [ %inc120, %if.end117 ], [ 0, %for.body ]
  %arrayidx10 = getelementptr inbounds i8, ptr %pix.addr.1201, i64 %idxprom9
  %1 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %1 to i32
  %arrayidx14 = getelementptr inbounds i8, ptr %pix.addr.1201, i64 %idxprom13
  %2 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %2 to i32
  %arrayidx18 = getelementptr inbounds i8, ptr %pix.addr.1201, i64 %idxprom17
  %3 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %3 to i32
  %4 = load i8, ptr %pix.addr.1201, align 1
  %conv23 = zext i8 %4 to i32
  %arrayidx26 = getelementptr inbounds i8, ptr %pix.addr.1201, i64 %idxprom25
  %5 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %5 to i32
  %arrayidx30 = getelementptr inbounds i8, ptr %pix.addr.1201, i64 %idxprom29
  %6 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %6 to i32
  %sub = sub nsw i32 %conv19, %conv23
  %7 = tail call i32 @llvm.abs.i32(i32 %sub, i1 true)
  %cmp32 = icmp slt i32 %7, %alpha
  br i1 %cmp32, label %land.lhs.true, label %if.end117

land.lhs.true:                                    ; preds = %for.body7
  %sub34 = sub nsw i32 %conv15, %conv19
  %8 = tail call i32 @llvm.abs.i32(i32 %sub34, i1 true)
  %cmp35 = icmp slt i32 %8, %beta
  br i1 %cmp35, label %land.lhs.true37, label %if.end117

land.lhs.true37:                                  ; preds = %land.lhs.true
  %sub38 = sub nsw i32 %conv27, %conv23
  %9 = tail call i32 @llvm.abs.i32(i32 %sub38, i1 true)
  %cmp39 = icmp ult i32 %9, %beta
  br i1 %cmp39, label %if.then41, label %if.end117

if.then41:                                        ; preds = %land.lhs.true37
  %10 = load i8, ptr %arrayidx, align 1
  %conv44 = sext i8 %10 to i32
  %sub45 = sub nsw i32 %conv11, %conv19
  %11 = tail call i32 @llvm.abs.i32(i32 %sub45, i1 true)
  %cmp46 = icmp ult i32 %11, %beta
  br i1 %cmp46, label %if.then48, label %if.end69

if.then48:                                        ; preds = %if.then41
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end68, label %if.then51

if.then51:                                        ; preds = %if.then48
  %add = add nuw nsw i32 %conv19, 1
  %add52 = add nuw nsw i32 %add, %conv23
  %shr = lshr i32 %add52, 1
  %add53 = add nuw nsw i32 %shr, %conv11
  %shr54 = lshr i32 %add53, 1
  %sub55 = sub nsw i32 %shr54, %conv15
  %sub59 = sub nsw i32 0, %conv44
  %cmp.i = icmp slt i32 %sub55, %sub59
  %cond.i = tail call i32 @llvm.smin.i32(i32 %sub55, i32 %conv44)
  %cond5.i = select i1 %cmp.i, i32 %sub59, i32 %cond.i
  %12 = trunc i32 %cond5.i to i8
  %conv64 = add i8 %2, %12
  store i8 %conv64, ptr %arrayidx14, align 1
  br label %if.end68

if.end68:                                         ; preds = %if.then51, %if.then48
  %inc = add nsw i32 %conv44, 1
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then41
  %tc.0 = phi i32 [ %inc, %if.end68 ], [ %conv44, %if.then41 ]
  %sub70 = sub nsw i32 %conv31, %conv23
  %13 = tail call i32 @llvm.abs.i32(i32 %sub70, i1 true)
  %cmp71 = icmp ult i32 %13, %beta
  br i1 %cmp71, label %if.then73, label %if.end99

if.then73:                                        ; preds = %if.end69
  %14 = load i8, ptr %arrayidx, align 1
  %tobool76.not = icmp eq i8 %14, 0
  br i1 %tobool76.not, label %if.end97, label %if.then77

if.then77:                                        ; preds = %if.then73
  %add78 = add nuw nsw i32 %conv19, 1
  %add79 = add nuw nsw i32 %add78, %conv23
  %shr80 = lshr i32 %add79, 1
  %add81 = add nuw nsw i32 %shr80, %conv31
  %shr82 = lshr i32 %add81, 1
  %sub83 = sub nsw i32 %shr82, %conv27
  %conv86 = sext i8 %14 to i32
  %sub87 = sub nsw i32 0, %conv86
  %cmp.i189 = icmp slt i32 %sub83, %sub87
  %cond.i190 = tail call i32 @llvm.smin.i32(i32 %sub83, i32 %conv86)
  %cond5.i191 = select i1 %cmp.i189, i32 %sub87, i32 %cond.i190
  %15 = trunc i32 %cond5.i191 to i8
  %conv93 = add i8 %5, %15
  store i8 %conv93, ptr %arrayidx26, align 1
  br label %if.end97

if.end97:                                         ; preds = %if.then77, %if.then73
  %inc98 = add nsw i32 %tc.0, 1
  br label %if.end99

if.end99:                                         ; preds = %if.end97, %if.end69
  %tc.1 = phi i32 [ %inc98, %if.end97 ], [ %tc.0, %if.end69 ]
  %sub100 = sub nsw i32 %conv23, %conv19
  %shl = shl nsw i32 %sub100, 2
  %sub101 = add nuw nsw i32 %conv15, 4
  %add102 = sub nsw i32 %sub101, %conv27
  %add103 = add nsw i32 %add102, %shl
  %shr104 = ashr i32 %add103, 3
  %sub105 = sub nsw i32 0, %tc.1
  %cmp.i192 = icmp slt i32 %shr104, %sub105
  %cond.i193 = tail call i32 @llvm.smin.i32(i32 %shr104, i32 %tc.1)
  %cond5.i194 = select i1 %cmp.i192, i32 %sub105, i32 %cond.i193
  %add107 = add nsw i32 %cond5.i194, %conv19
  %tobool.not.i = icmp ult i32 %add107, 256
  %16 = icmp sgt i32 %add107, 0
  %shr.i = sext i1 %16 to i32
  %cond.i195 = select i1 %tobool.not.i, i32 %add107, i32 %shr.i
  %conv.i = trunc i32 %cond.i195 to i8
  store i8 %conv.i, ptr %arrayidx18, align 1
  %sub112 = sub nsw i32 %conv23, %cond5.i194
  %tobool.not.i196 = icmp ult i32 %sub112, 256
  %17 = icmp sgt i32 %sub112, 0
  %shr.i197 = sext i1 %17 to i32
  %cond.i198 = select i1 %tobool.not.i196, i32 %sub112, i32 %shr.i197
  %conv.i199 = trunc i32 %cond.i198 to i8
  store i8 %conv.i199, ptr %pix.addr.1201, align 1
  br label %if.end117

if.end117:                                        ; preds = %if.end99, %land.lhs.true37, %land.lhs.true, %for.body7
  %add.ptr119 = getelementptr inbounds i8, ptr %pix.addr.1201, i64 %idx.ext118
  %inc120 = add nuw nsw i32 %d.0200, 1
  %exitcond.not = icmp eq i32 %inc120, 4
  br i1 %exitcond.not, label %for.inc121, label %for.body7

for.inc121:                                       ; preds = %if.end117, %if.then
  %pix.addr.2 = phi ptr [ %add.ptr, %if.then ], [ %add.ptr119, %if.end117 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond205.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond205.not, label %for.cond.cleanup, label %for.body
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @deblock_chroma_c(ptr nocapture noundef %pix, i32 noundef %xstride, i32 noundef %ystride, i32 noundef %alpha, i32 noundef %beta, ptr nocapture noundef readonly %tc0) unnamed_addr #8 {
entry:
  %mul8 = mul nsw i32 %xstride, -2
  %idxprom9 = sext i32 %mul8 to i64
  %mul12 = sub nsw i32 0, %xstride
  %idxprom13 = sext i32 %mul12 to i64
  %idxprom21 = sext i32 %xstride to i64
  %idx.ext49 = sext i32 %ystride to i64
  %mul = shl nsw i32 %ystride, 1
  %idx.ext = sext i32 %mul to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %cleanup
  ret void

for.body:                                         ; preds = %entry, %cleanup
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %cleanup ]
  %pix.addr.091 = phi ptr [ %pix, %entry ], [ %pix.addr.2, %cleanup ]
  %arrayidx = getelementptr inbounds i8, ptr %tc0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %0 to i32
  %cmp1 = icmp slt i8 %0, 1
  br i1 %cmp1, label %if.then, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.body
  %sub37 = sub nsw i32 0, %conv
  %arrayidx10 = getelementptr inbounds i8, ptr %pix.addr.091, i64 %idxprom9
  %1 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %1 to i32
  %arrayidx14 = getelementptr inbounds i8, ptr %pix.addr.091, i64 %idxprom13
  %2 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %2 to i32
  %3 = load i8, ptr %pix.addr.091, align 1
  %conv19 = zext i8 %3 to i32
  %arrayidx22 = getelementptr inbounds i8, ptr %pix.addr.091, i64 %idxprom21
  %4 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %4 to i32
  %sub = sub nsw i32 %conv15, %conv19
  %5 = tail call i32 @llvm.abs.i32(i32 %sub, i1 true)
  %cmp24 = icmp slt i32 %5, %alpha
  br i1 %cmp24, label %land.lhs.true, label %if.end48

if.then:                                          ; preds = %for.body
  %add.ptr = getelementptr inbounds i8, ptr %pix.addr.091, i64 %idx.ext
  br label %cleanup

land.lhs.true:                                    ; preds = %for.cond3.preheader
  %sub26 = sub nsw i32 %conv11, %conv15
  %6 = tail call i32 @llvm.abs.i32(i32 %sub26, i1 true)
  %cmp27 = icmp slt i32 %6, %beta
  br i1 %cmp27, label %land.lhs.true29, label %if.end48

land.lhs.true29:                                  ; preds = %land.lhs.true
  %sub30 = sub nsw i32 %conv23, %conv19
  %7 = tail call i32 @llvm.abs.i32(i32 %sub30, i1 true)
  %cmp31 = icmp ult i32 %7, %beta
  br i1 %cmp31, label %if.then33, label %if.end48

if.then33:                                        ; preds = %land.lhs.true29
  %sub34 = sub nsw i32 %conv19, %conv15
  %shl = shl nsw i32 %sub34, 2
  %sub35 = add nuw nsw i32 %conv11, 4
  %add = sub nsw i32 %sub35, %conv23
  %add36 = add nsw i32 %add, %shl
  %shr = ashr i32 %add36, 3
  %cmp.i = icmp slt i32 %shr, %sub37
  %cond.i = tail call i32 @llvm.smin.i32(i32 %shr, i32 %conv)
  %cond5.i = select i1 %cmp.i, i32 %sub37, i32 %cond.i
  %add38 = add nsw i32 %cond5.i, %conv15
  %tobool.not.i = icmp ult i32 %add38, 256
  %8 = icmp sgt i32 %add38, 0
  %shr.i = sext i1 %8 to i32
  %cond.i83 = select i1 %tobool.not.i, i32 %add38, i32 %shr.i
  %conv.i = trunc i32 %cond.i83 to i8
  store i8 %conv.i, ptr %arrayidx14, align 1
  %sub43 = sub nsw i32 %conv19, %cond5.i
  %tobool.not.i84 = icmp ult i32 %sub43, 256
  %9 = icmp sgt i32 %sub43, 0
  %shr.i85 = sext i1 %9 to i32
  %cond.i86 = select i1 %tobool.not.i84, i32 %sub43, i32 %shr.i85
  %conv.i87 = trunc i32 %cond.i86 to i8
  store i8 %conv.i87, ptr %pix.addr.091, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.then33, %land.lhs.true29, %land.lhs.true, %for.cond3.preheader
  %add.ptr50 = getelementptr inbounds i8, ptr %pix.addr.091, i64 %idx.ext49
  %arrayidx10.1 = getelementptr inbounds i8, ptr %add.ptr50, i64 %idxprom9
  %10 = load i8, ptr %arrayidx10.1, align 1
  %conv11.1 = zext i8 %10 to i32
  %arrayidx14.1 = getelementptr inbounds i8, ptr %add.ptr50, i64 %idxprom13
  %11 = load i8, ptr %arrayidx14.1, align 1
  %conv15.1 = zext i8 %11 to i32
  %12 = load i8, ptr %add.ptr50, align 1
  %conv19.1 = zext i8 %12 to i32
  %arrayidx22.1 = getelementptr inbounds i8, ptr %add.ptr50, i64 %idxprom21
  %13 = load i8, ptr %arrayidx22.1, align 1
  %conv23.1 = zext i8 %13 to i32
  %sub.1 = sub nsw i32 %conv15.1, %conv19.1
  %14 = tail call i32 @llvm.abs.i32(i32 %sub.1, i1 true)
  %cmp24.1 = icmp slt i32 %14, %alpha
  br i1 %cmp24.1, label %land.lhs.true.1, label %if.end48.1

land.lhs.true.1:                                  ; preds = %if.end48
  %sub26.1 = sub nsw i32 %conv11.1, %conv15.1
  %15 = tail call i32 @llvm.abs.i32(i32 %sub26.1, i1 true)
  %cmp27.1 = icmp slt i32 %15, %beta
  br i1 %cmp27.1, label %land.lhs.true29.1, label %if.end48.1

land.lhs.true29.1:                                ; preds = %land.lhs.true.1
  %sub30.1 = sub nsw i32 %conv23.1, %conv19.1
  %16 = tail call i32 @llvm.abs.i32(i32 %sub30.1, i1 true)
  %cmp31.1 = icmp ult i32 %16, %beta
  br i1 %cmp31.1, label %if.then33.1, label %if.end48.1

if.then33.1:                                      ; preds = %land.lhs.true29.1
  %sub34.1 = sub nsw i32 %conv19.1, %conv15.1
  %shl.1 = shl nsw i32 %sub34.1, 2
  %sub35.1 = add nuw nsw i32 %conv11.1, 4
  %add.1 = sub nsw i32 %sub35.1, %conv23.1
  %add36.1 = add nsw i32 %add.1, %shl.1
  %shr.1 = ashr i32 %add36.1, 3
  %cmp.i.1 = icmp slt i32 %shr.1, %sub37
  %cond.i.1 = tail call i32 @llvm.smin.i32(i32 %shr.1, i32 %conv)
  %cond5.i.1 = select i1 %cmp.i.1, i32 %sub37, i32 %cond.i.1
  %add38.1 = add nsw i32 %cond5.i.1, %conv15.1
  %tobool.not.i.1 = icmp ult i32 %add38.1, 256
  %17 = icmp sgt i32 %add38.1, 0
  %shr.i.1 = sext i1 %17 to i32
  %cond.i83.1 = select i1 %tobool.not.i.1, i32 %add38.1, i32 %shr.i.1
  %conv.i.1 = trunc i32 %cond.i83.1 to i8
  store i8 %conv.i.1, ptr %arrayidx14.1, align 1
  %sub43.1 = sub nsw i32 %conv19.1, %cond5.i.1
  %tobool.not.i84.1 = icmp ult i32 %sub43.1, 256
  %18 = icmp sgt i32 %sub43.1, 0
  %shr.i85.1 = sext i1 %18 to i32
  %cond.i86.1 = select i1 %tobool.not.i84.1, i32 %sub43.1, i32 %shr.i85.1
  %conv.i87.1 = trunc i32 %cond.i86.1 to i8
  store i8 %conv.i87.1, ptr %add.ptr50, align 1
  br label %if.end48.1

if.end48.1:                                       ; preds = %if.then33.1, %land.lhs.true29.1, %land.lhs.true.1, %if.end48
  %add.ptr50.1 = getelementptr inbounds i8, ptr %add.ptr50, i64 %idx.ext49
  br label %cleanup

cleanup:                                          ; preds = %if.end48.1, %if.then
  %pix.addr.2 = phi ptr [ %add.ptr, %if.then ], [ %add.ptr50.1, %if.end48.1 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @deblock_luma_intra_c(ptr nocapture noundef %pix, i32 noundef %xstride, i32 noundef %ystride, i32 noundef %alpha, i32 noundef %beta) unnamed_addr #8 {
entry:
  %mul = mul nsw i32 %xstride, -3
  %idxprom = sext i32 %mul to i64
  %mul1 = mul nsw i32 %xstride, -2
  %idxprom2 = sext i32 %mul1 to i64
  %mul5 = sub nsw i32 0, %xstride
  %idxprom6 = sext i32 %mul5 to i64
  %idxprom14 = sext i32 %xstride to i64
  %mul17 = shl nsw i32 %xstride, 1
  %idxprom18 = sext i32 %mul17 to i64
  %idx.ext = sext i32 %ystride to i64
  %shr = lshr i32 %alpha, 2
  %add = add nuw nsw i32 %shr, 2
  %mul38 = mul nsw i32 %xstride, -4
  %idxprom39 = sext i32 %mul38 to i64
  %mul89 = mul nsw i32 %xstride, 3
  %idxprom90 = sext i32 %mul89 to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end158
  ret void

for.body:                                         ; preds = %entry, %if.end158
  %pix.addr.0244 = phi ptr [ %pix, %entry ], [ %add.ptr, %if.end158 ]
  %d.0243 = phi i32 [ 0, %entry ], [ %inc, %if.end158 ]
  %arrayidx = getelementptr inbounds i8, ptr %pix.addr.0244, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %arrayidx3 = getelementptr inbounds i8, ptr %pix.addr.0244, i64 %idxprom2
  %1 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %1 to i32
  %arrayidx7 = getelementptr inbounds i8, ptr %pix.addr.0244, i64 %idxprom6
  %2 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %2 to i32
  %3 = load i8, ptr %pix.addr.0244, align 1
  %conv12 = zext i8 %3 to i32
  %arrayidx15 = getelementptr inbounds i8, ptr %pix.addr.0244, i64 %idxprom14
  %4 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %4 to i32
  %arrayidx19 = getelementptr inbounds i8, ptr %pix.addr.0244, i64 %idxprom18
  %5 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %5 to i32
  %sub = sub nsw i32 %conv8, %conv12
  %6 = tail call i32 @llvm.abs.i32(i32 %sub, i1 true)
  %cmp21 = icmp slt i32 %6, %alpha
  br i1 %cmp21, label %land.lhs.true, label %if.end158

land.lhs.true:                                    ; preds = %for.body
  %sub23 = sub nsw i32 %conv4, %conv8
  %7 = tail call i32 @llvm.abs.i32(i32 %sub23, i1 true)
  %cmp24 = icmp slt i32 %7, %beta
  br i1 %cmp24, label %land.lhs.true26, label %if.end158

land.lhs.true26:                                  ; preds = %land.lhs.true
  %sub27 = sub nsw i32 %conv16, %conv12
  %8 = tail call i32 @llvm.abs.i32(i32 %sub27, i1 true)
  %cmp28 = icmp ult i32 %8, %beta
  br i1 %cmp28, label %if.then, label %if.end158

if.then:                                          ; preds = %land.lhs.true26
  %cmp31 = icmp ult i32 %6, %add
  br i1 %cmp31, label %if.then33, label %if.else138

if.then33:                                        ; preds = %if.then
  %sub34 = sub nsw i32 %conv, %conv8
  %9 = tail call i32 @llvm.abs.i32(i32 %sub34, i1 true)
  %cmp35 = icmp ult i32 %9, %beta
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.then33
  %arrayidx40 = getelementptr inbounds i8, ptr %pix.addr.0244, i64 %idxprom39
  %10 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %10 to i32
  %11 = add nuw nsw i32 %conv12, %conv4
  %12 = add nuw nsw i32 %11, %conv8
  %13 = shl nuw nsw i32 %12, 1
  %add47 = add nuw nsw i32 %conv16, 4
  %add48 = add nuw nsw i32 %add47, %conv
  %add49 = add nuw nsw i32 %add48, %13
  %shr50 = lshr i32 %add49, 3
  %conv51 = trunc nuw i32 %shr50 to i8
  store i8 %conv51, ptr %arrayidx7, align 1
  %add56 = add nuw nsw i32 %11, 2
  %add57 = add nuw nsw i32 %add56, %conv
  %add58 = add nuw nsw i32 %add57, %conv8
  %shr59 = lshr i32 %add58, 2
  %conv60 = trunc nuw i32 %shr59 to i8
  store i8 %conv60, ptr %arrayidx3, align 1
  %mul64 = shl nuw nsw i32 %conv41, 1
  %mul65 = mul nuw nsw i32 %conv, 3
  %add66 = add nuw nsw i32 %mul65, 4
  %add67 = add nuw nsw i32 %add66, %conv4
  %add68 = add nuw nsw i32 %add67, %conv8
  %add69 = add nuw nsw i32 %add68, %conv12
  %add70 = add nuw nsw i32 %add69, %mul64
  %shr71 = lshr i32 %add70, 3
  br label %if.end

if.else:                                          ; preds = %if.then33
  %mul76 = shl nuw nsw i32 %conv4, 1
  %add77 = add nuw nsw i32 %conv8, 2
  %add78 = add nuw nsw i32 %add77, %mul76
  %add79 = add nuw nsw i32 %add78, %conv16
  %shr80 = lshr i32 %add79, 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then37
  %shr80.sink = phi i32 [ %shr80, %if.else ], [ %shr71, %if.then37 ]
  %arrayidx7.sink = phi ptr [ %arrayidx7, %if.else ], [ %arrayidx, %if.then37 ]
  %conv81 = trunc nuw i32 %shr80.sink to i8
  store i8 %conv81, ptr %arrayidx7.sink, align 1
  %sub85 = sub nsw i32 %conv20, %conv12
  %14 = tail call i32 @llvm.abs.i32(i32 %sub85, i1 true)
  %cmp86 = icmp ult i32 %14, %beta
  br i1 %cmp86, label %if.then88, label %if.else127

if.then88:                                        ; preds = %if.end
  %arrayidx91 = getelementptr inbounds i8, ptr %pix.addr.0244, i64 %idxprom90
  %15 = load i8, ptr %arrayidx91, align 1
  %conv92 = zext i8 %15 to i32
  %16 = add nuw nsw i32 %conv12, %conv8
  %17 = add nuw nsw i32 %16, %conv16
  %18 = shl nuw nsw i32 %17, 1
  %add98 = add nuw nsw i32 %conv4, 4
  %add99 = add nuw nsw i32 %add98, %conv20
  %add100 = add nuw nsw i32 %add99, %18
  %shr101 = lshr i32 %add100, 3
  %conv102 = trunc nuw i32 %shr101 to i8
  store i8 %conv102, ptr %pix.addr.0244, align 1
  %add108 = add nuw nsw i32 %conv20, 2
  %add109 = add nuw nsw i32 %add108, %17
  %shr110 = lshr i32 %add109, 2
  %conv111 = trunc nuw i32 %shr110 to i8
  store i8 %conv111, ptr %arrayidx15, align 1
  %mul115 = shl nuw nsw i32 %conv92, 1
  %mul116 = mul nuw nsw i32 %conv20, 3
  %add118 = add nuw nsw i32 %16, 4
  %add119 = add nuw nsw i32 %add118, %conv16
  %add120 = add nuw nsw i32 %add119, %mul116
  %add121 = add nuw nsw i32 %add120, %mul115
  %shr122 = lshr i32 %add121, 3
  br label %if.end158.sink.split

if.else127:                                       ; preds = %if.end
  %mul128 = shl nuw nsw i32 %conv16, 1
  %add129 = add nuw nsw i32 %conv12, %conv4
  %add130 = add nuw nsw i32 %add129, 2
  %add131 = add nuw nsw i32 %add130, %mul128
  %shr132 = lshr i32 %add131, 2
  br label %if.end158.sink.split

if.else138:                                       ; preds = %if.then
  %mul139 = shl nuw nsw i32 %conv4, 1
  %add140 = add nuw nsw i32 %conv8, 2
  %add141 = add nuw nsw i32 %add140, %mul139
  %add142 = add nuw nsw i32 %add141, %conv16
  %shr143 = lshr i32 %add142, 2
  %conv144 = trunc nuw i32 %shr143 to i8
  store i8 %conv144, ptr %arrayidx7, align 1
  %mul148 = shl nuw nsw i32 %conv16, 1
  %add149 = add nuw nsw i32 %conv12, %conv4
  %add150 = add nuw nsw i32 %add149, 2
  %add151 = add nuw nsw i32 %add150, %mul148
  %shr152 = lshr i32 %add151, 2
  br label %if.end158.sink.split

if.end158.sink.split:                             ; preds = %if.then88, %if.else127, %if.else138
  %shr152.sink = phi i32 [ %shr152, %if.else138 ], [ %shr132, %if.else127 ], [ %shr122, %if.then88 ]
  %pix.addr.0244.sink = phi ptr [ %pix.addr.0244, %if.else138 ], [ %pix.addr.0244, %if.else127 ], [ %arrayidx19, %if.then88 ]
  %conv153 = trunc nuw i32 %shr152.sink to i8
  store i8 %conv153, ptr %pix.addr.0244.sink, align 1
  br label %if.end158

if.end158:                                        ; preds = %if.end158.sink.split, %land.lhs.true26, %land.lhs.true, %for.body
  %add.ptr = getelementptr inbounds i8, ptr %pix.addr.0244, i64 %idx.ext
  %inc = add nuw nsw i32 %d.0243, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @deblock_chroma_intra_c(ptr nocapture noundef %pix, i32 noundef %xstride, i32 noundef %ystride, i32 noundef %alpha, i32 noundef %beta) unnamed_addr #10 {
entry:
  %mul = mul nsw i32 %xstride, -2
  %idxprom = sext i32 %mul to i64
  %mul1 = sub nsw i32 0, %xstride
  %idxprom2 = sext i32 %mul1 to i64
  %idxprom10 = sext i32 %xstride to i64
  %idx.ext = sext i32 %ystride to i64
  %arrayidx = getelementptr inbounds i8, ptr %pix, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %arrayidx3 = getelementptr inbounds i8, ptr %pix, i64 %idxprom2
  %1 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %1 to i32
  %2 = load i8, ptr %pix, align 1
  %conv8 = zext i8 %2 to i32
  %arrayidx11 = getelementptr inbounds i8, ptr %pix, i64 %idxprom10
  %3 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %3 to i32
  %sub = sub nsw i32 %conv4, %conv8
  %4 = tail call i32 @llvm.abs.i32(i32 %sub, i1 true)
  %cmp13 = icmp slt i32 %4, %alpha
  br i1 %cmp13, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %sub15 = sub nsw i32 %conv, %conv4
  %5 = tail call i32 @llvm.abs.i32(i32 %sub15, i1 true)
  %cmp16 = icmp slt i32 %5, %beta
  br i1 %cmp16, label %land.lhs.true18, label %if.end

land.lhs.true18:                                  ; preds = %land.lhs.true
  %sub19 = sub nsw i32 %conv12, %conv8
  %6 = tail call i32 @llvm.abs.i32(i32 %sub19, i1 true)
  %cmp20 = icmp ult i32 %6, %beta
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true18
  %mul22 = shl nuw nsw i32 %conv, 1
  %add = add nuw nsw i32 %conv4, 2
  %add23 = add nuw nsw i32 %add, %mul22
  %add24 = add nuw nsw i32 %add23, %conv12
  %shr = lshr i32 %add24, 2
  %conv25 = trunc nuw i32 %shr to i8
  store i8 %conv25, ptr %arrayidx3, align 1
  %mul29 = shl nuw nsw i32 %conv12, 1
  %add30 = add nuw nsw i32 %conv, 2
  %add31 = add nuw nsw i32 %add30, %conv8
  %add32 = add nuw nsw i32 %add31, %mul29
  %shr33 = lshr i32 %add32, 2
  %conv34 = trunc nuw i32 %shr33 to i8
  store i8 %conv34, ptr %pix, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true18, %land.lhs.true, %entry
  %add.ptr = getelementptr inbounds i8, ptr %pix, i64 %idx.ext
  %arrayidx.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idxprom
  %7 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %7 to i32
  %arrayidx3.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idxprom2
  %8 = load i8, ptr %arrayidx3.1, align 1
  %conv4.1 = zext i8 %8 to i32
  %9 = load i8, ptr %add.ptr, align 1
  %conv8.1 = zext i8 %9 to i32
  %arrayidx11.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idxprom10
  %10 = load i8, ptr %arrayidx11.1, align 1
  %conv12.1 = zext i8 %10 to i32
  %sub.1 = sub nsw i32 %conv4.1, %conv8.1
  %11 = tail call i32 @llvm.abs.i32(i32 %sub.1, i1 true)
  %cmp13.1 = icmp slt i32 %11, %alpha
  br i1 %cmp13.1, label %land.lhs.true.1, label %if.end.1

land.lhs.true.1:                                  ; preds = %if.end
  %sub15.1 = sub nsw i32 %conv.1, %conv4.1
  %12 = tail call i32 @llvm.abs.i32(i32 %sub15.1, i1 true)
  %cmp16.1 = icmp slt i32 %12, %beta
  br i1 %cmp16.1, label %land.lhs.true18.1, label %if.end.1

land.lhs.true18.1:                                ; preds = %land.lhs.true.1
  %sub19.1 = sub nsw i32 %conv12.1, %conv8.1
  %13 = tail call i32 @llvm.abs.i32(i32 %sub19.1, i1 true)
  %cmp20.1 = icmp ult i32 %13, %beta
  br i1 %cmp20.1, label %if.then.1, label %if.end.1

if.then.1:                                        ; preds = %land.lhs.true18.1
  %mul22.1 = shl nuw nsw i32 %conv.1, 1
  %add.1 = add nuw nsw i32 %conv4.1, 2
  %add23.1 = add nuw nsw i32 %add.1, %mul22.1
  %add24.1 = add nuw nsw i32 %add23.1, %conv12.1
  %shr.1 = lshr i32 %add24.1, 2
  %conv25.1 = trunc nuw i32 %shr.1 to i8
  store i8 %conv25.1, ptr %arrayidx3.1, align 1
  %mul29.1 = shl nuw nsw i32 %conv12.1, 1
  %add30.1 = add nuw nsw i32 %conv.1, 2
  %add31.1 = add nuw nsw i32 %add30.1, %conv8.1
  %add32.1 = add nuw nsw i32 %add31.1, %mul29.1
  %shr33.1 = lshr i32 %add32.1, 2
  %conv34.1 = trunc nuw i32 %shr33.1 to i8
  store i8 %conv34.1, ptr %add.ptr, align 1
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %land.lhs.true18.1, %land.lhs.true.1, %if.end
  %add.ptr.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext
  %arrayidx.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 %idxprom
  %14 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %14 to i32
  %arrayidx3.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 %idxprom2
  %15 = load i8, ptr %arrayidx3.2, align 1
  %conv4.2 = zext i8 %15 to i32
  %16 = load i8, ptr %add.ptr.1, align 1
  %conv8.2 = zext i8 %16 to i32
  %arrayidx11.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 %idxprom10
  %17 = load i8, ptr %arrayidx11.2, align 1
  %conv12.2 = zext i8 %17 to i32
  %sub.2 = sub nsw i32 %conv4.2, %conv8.2
  %18 = tail call i32 @llvm.abs.i32(i32 %sub.2, i1 true)
  %cmp13.2 = icmp slt i32 %18, %alpha
  br i1 %cmp13.2, label %land.lhs.true.2, label %if.end.2

land.lhs.true.2:                                  ; preds = %if.end.1
  %sub15.2 = sub nsw i32 %conv.2, %conv4.2
  %19 = tail call i32 @llvm.abs.i32(i32 %sub15.2, i1 true)
  %cmp16.2 = icmp slt i32 %19, %beta
  br i1 %cmp16.2, label %land.lhs.true18.2, label %if.end.2

land.lhs.true18.2:                                ; preds = %land.lhs.true.2
  %sub19.2 = sub nsw i32 %conv12.2, %conv8.2
  %20 = tail call i32 @llvm.abs.i32(i32 %sub19.2, i1 true)
  %cmp20.2 = icmp ult i32 %20, %beta
  br i1 %cmp20.2, label %if.then.2, label %if.end.2

if.then.2:                                        ; preds = %land.lhs.true18.2
  %mul22.2 = shl nuw nsw i32 %conv.2, 1
  %add.2 = add nuw nsw i32 %conv4.2, 2
  %add23.2 = add nuw nsw i32 %add.2, %mul22.2
  %add24.2 = add nuw nsw i32 %add23.2, %conv12.2
  %shr.2 = lshr i32 %add24.2, 2
  %conv25.2 = trunc nuw i32 %shr.2 to i8
  store i8 %conv25.2, ptr %arrayidx3.2, align 1
  %mul29.2 = shl nuw nsw i32 %conv12.2, 1
  %add30.2 = add nuw nsw i32 %conv.2, 2
  %add31.2 = add nuw nsw i32 %add30.2, %conv8.2
  %add32.2 = add nuw nsw i32 %add31.2, %mul29.2
  %shr33.2 = lshr i32 %add32.2, 2
  %conv34.2 = trunc nuw i32 %shr33.2 to i8
  store i8 %conv34.2, ptr %add.ptr.1, align 1
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %land.lhs.true18.2, %land.lhs.true.2, %if.end.1
  %add.ptr.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 %idx.ext
  %arrayidx.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 %idxprom
  %21 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %21 to i32
  %arrayidx3.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 %idxprom2
  %22 = load i8, ptr %arrayidx3.3, align 1
  %conv4.3 = zext i8 %22 to i32
  %23 = load i8, ptr %add.ptr.2, align 1
  %conv8.3 = zext i8 %23 to i32
  %arrayidx11.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 %idxprom10
  %24 = load i8, ptr %arrayidx11.3, align 1
  %conv12.3 = zext i8 %24 to i32
  %sub.3 = sub nsw i32 %conv4.3, %conv8.3
  %25 = tail call i32 @llvm.abs.i32(i32 %sub.3, i1 true)
  %cmp13.3 = icmp slt i32 %25, %alpha
  br i1 %cmp13.3, label %land.lhs.true.3, label %if.end.3

land.lhs.true.3:                                  ; preds = %if.end.2
  %sub15.3 = sub nsw i32 %conv.3, %conv4.3
  %26 = tail call i32 @llvm.abs.i32(i32 %sub15.3, i1 true)
  %cmp16.3 = icmp slt i32 %26, %beta
  br i1 %cmp16.3, label %land.lhs.true18.3, label %if.end.3

land.lhs.true18.3:                                ; preds = %land.lhs.true.3
  %sub19.3 = sub nsw i32 %conv12.3, %conv8.3
  %27 = tail call i32 @llvm.abs.i32(i32 %sub19.3, i1 true)
  %cmp20.3 = icmp ult i32 %27, %beta
  br i1 %cmp20.3, label %if.then.3, label %if.end.3

if.then.3:                                        ; preds = %land.lhs.true18.3
  %mul22.3 = shl nuw nsw i32 %conv.3, 1
  %add.3 = add nuw nsw i32 %conv4.3, 2
  %add23.3 = add nuw nsw i32 %add.3, %mul22.3
  %add24.3 = add nuw nsw i32 %add23.3, %conv12.3
  %shr.3 = lshr i32 %add24.3, 2
  %conv25.3 = trunc nuw i32 %shr.3 to i8
  store i8 %conv25.3, ptr %arrayidx3.3, align 1
  %mul29.3 = shl nuw nsw i32 %conv12.3, 1
  %add30.3 = add nuw nsw i32 %conv.3, 2
  %add31.3 = add nuw nsw i32 %add30.3, %conv8.3
  %add32.3 = add nuw nsw i32 %add31.3, %mul29.3
  %shr33.3 = lshr i32 %add32.3, 2
  %conv34.3 = trunc nuw i32 %shr33.3 to i8
  store i8 %conv34.3, ptr %add.ptr.2, align 1
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %land.lhs.true18.3, %land.lhs.true.3, %if.end.2
  %add.ptr.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 %idx.ext
  %arrayidx.4 = getelementptr inbounds i8, ptr %add.ptr.3, i64 %idxprom
  %28 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %28 to i32
  %arrayidx3.4 = getelementptr inbounds i8, ptr %add.ptr.3, i64 %idxprom2
  %29 = load i8, ptr %arrayidx3.4, align 1
  %conv4.4 = zext i8 %29 to i32
  %30 = load i8, ptr %add.ptr.3, align 1
  %conv8.4 = zext i8 %30 to i32
  %arrayidx11.4 = getelementptr inbounds i8, ptr %add.ptr.3, i64 %idxprom10
  %31 = load i8, ptr %arrayidx11.4, align 1
  %conv12.4 = zext i8 %31 to i32
  %sub.4 = sub nsw i32 %conv4.4, %conv8.4
  %32 = tail call i32 @llvm.abs.i32(i32 %sub.4, i1 true)
  %cmp13.4 = icmp slt i32 %32, %alpha
  br i1 %cmp13.4, label %land.lhs.true.4, label %if.end.4

land.lhs.true.4:                                  ; preds = %if.end.3
  %sub15.4 = sub nsw i32 %conv.4, %conv4.4
  %33 = tail call i32 @llvm.abs.i32(i32 %sub15.4, i1 true)
  %cmp16.4 = icmp slt i32 %33, %beta
  br i1 %cmp16.4, label %land.lhs.true18.4, label %if.end.4

land.lhs.true18.4:                                ; preds = %land.lhs.true.4
  %sub19.4 = sub nsw i32 %conv12.4, %conv8.4
  %34 = tail call i32 @llvm.abs.i32(i32 %sub19.4, i1 true)
  %cmp20.4 = icmp ult i32 %34, %beta
  br i1 %cmp20.4, label %if.then.4, label %if.end.4

if.then.4:                                        ; preds = %land.lhs.true18.4
  %mul22.4 = shl nuw nsw i32 %conv.4, 1
  %add.4 = add nuw nsw i32 %conv4.4, 2
  %add23.4 = add nuw nsw i32 %add.4, %mul22.4
  %add24.4 = add nuw nsw i32 %add23.4, %conv12.4
  %shr.4 = lshr i32 %add24.4, 2
  %conv25.4 = trunc nuw i32 %shr.4 to i8
  store i8 %conv25.4, ptr %arrayidx3.4, align 1
  %mul29.4 = shl nuw nsw i32 %conv12.4, 1
  %add30.4 = add nuw nsw i32 %conv.4, 2
  %add31.4 = add nuw nsw i32 %add30.4, %conv8.4
  %add32.4 = add nuw nsw i32 %add31.4, %mul29.4
  %shr33.4 = lshr i32 %add32.4, 2
  %conv34.4 = trunc nuw i32 %shr33.4 to i8
  store i8 %conv34.4, ptr %add.ptr.3, align 1
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.4, %land.lhs.true18.4, %land.lhs.true.4, %if.end.3
  %add.ptr.4 = getelementptr inbounds i8, ptr %add.ptr.3, i64 %idx.ext
  %arrayidx.5 = getelementptr inbounds i8, ptr %add.ptr.4, i64 %idxprom
  %35 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %35 to i32
  %arrayidx3.5 = getelementptr inbounds i8, ptr %add.ptr.4, i64 %idxprom2
  %36 = load i8, ptr %arrayidx3.5, align 1
  %conv4.5 = zext i8 %36 to i32
  %37 = load i8, ptr %add.ptr.4, align 1
  %conv8.5 = zext i8 %37 to i32
  %arrayidx11.5 = getelementptr inbounds i8, ptr %add.ptr.4, i64 %idxprom10
  %38 = load i8, ptr %arrayidx11.5, align 1
  %conv12.5 = zext i8 %38 to i32
  %sub.5 = sub nsw i32 %conv4.5, %conv8.5
  %39 = tail call i32 @llvm.abs.i32(i32 %sub.5, i1 true)
  %cmp13.5 = icmp slt i32 %39, %alpha
  br i1 %cmp13.5, label %land.lhs.true.5, label %if.end.5

land.lhs.true.5:                                  ; preds = %if.end.4
  %sub15.5 = sub nsw i32 %conv.5, %conv4.5
  %40 = tail call i32 @llvm.abs.i32(i32 %sub15.5, i1 true)
  %cmp16.5 = icmp slt i32 %40, %beta
  br i1 %cmp16.5, label %land.lhs.true18.5, label %if.end.5

land.lhs.true18.5:                                ; preds = %land.lhs.true.5
  %sub19.5 = sub nsw i32 %conv12.5, %conv8.5
  %41 = tail call i32 @llvm.abs.i32(i32 %sub19.5, i1 true)
  %cmp20.5 = icmp ult i32 %41, %beta
  br i1 %cmp20.5, label %if.then.5, label %if.end.5

if.then.5:                                        ; preds = %land.lhs.true18.5
  %mul22.5 = shl nuw nsw i32 %conv.5, 1
  %add.5 = add nuw nsw i32 %conv4.5, 2
  %add23.5 = add nuw nsw i32 %add.5, %mul22.5
  %add24.5 = add nuw nsw i32 %add23.5, %conv12.5
  %shr.5 = lshr i32 %add24.5, 2
  %conv25.5 = trunc nuw i32 %shr.5 to i8
  store i8 %conv25.5, ptr %arrayidx3.5, align 1
  %mul29.5 = shl nuw nsw i32 %conv12.5, 1
  %add30.5 = add nuw nsw i32 %conv.5, 2
  %add31.5 = add nuw nsw i32 %add30.5, %conv8.5
  %add32.5 = add nuw nsw i32 %add31.5, %mul29.5
  %shr33.5 = lshr i32 %add32.5, 2
  %conv34.5 = trunc nuw i32 %shr33.5 to i8
  store i8 %conv34.5, ptr %add.ptr.4, align 1
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.5, %land.lhs.true18.5, %land.lhs.true.5, %if.end.4
  %add.ptr.5 = getelementptr inbounds i8, ptr %add.ptr.4, i64 %idx.ext
  %arrayidx.6 = getelementptr inbounds i8, ptr %add.ptr.5, i64 %idxprom
  %42 = load i8, ptr %arrayidx.6, align 1
  %conv.6 = zext i8 %42 to i32
  %arrayidx3.6 = getelementptr inbounds i8, ptr %add.ptr.5, i64 %idxprom2
  %43 = load i8, ptr %arrayidx3.6, align 1
  %conv4.6 = zext i8 %43 to i32
  %44 = load i8, ptr %add.ptr.5, align 1
  %conv8.6 = zext i8 %44 to i32
  %arrayidx11.6 = getelementptr inbounds i8, ptr %add.ptr.5, i64 %idxprom10
  %45 = load i8, ptr %arrayidx11.6, align 1
  %conv12.6 = zext i8 %45 to i32
  %sub.6 = sub nsw i32 %conv4.6, %conv8.6
  %46 = tail call i32 @llvm.abs.i32(i32 %sub.6, i1 true)
  %cmp13.6 = icmp slt i32 %46, %alpha
  br i1 %cmp13.6, label %land.lhs.true.6, label %if.end.6

land.lhs.true.6:                                  ; preds = %if.end.5
  %sub15.6 = sub nsw i32 %conv.6, %conv4.6
  %47 = tail call i32 @llvm.abs.i32(i32 %sub15.6, i1 true)
  %cmp16.6 = icmp slt i32 %47, %beta
  br i1 %cmp16.6, label %land.lhs.true18.6, label %if.end.6

land.lhs.true18.6:                                ; preds = %land.lhs.true.6
  %sub19.6 = sub nsw i32 %conv12.6, %conv8.6
  %48 = tail call i32 @llvm.abs.i32(i32 %sub19.6, i1 true)
  %cmp20.6 = icmp ult i32 %48, %beta
  br i1 %cmp20.6, label %if.then.6, label %if.end.6

if.then.6:                                        ; preds = %land.lhs.true18.6
  %mul22.6 = shl nuw nsw i32 %conv.6, 1
  %add.6 = add nuw nsw i32 %conv4.6, 2
  %add23.6 = add nuw nsw i32 %add.6, %mul22.6
  %add24.6 = add nuw nsw i32 %add23.6, %conv12.6
  %shr.6 = lshr i32 %add24.6, 2
  %conv25.6 = trunc nuw i32 %shr.6 to i8
  store i8 %conv25.6, ptr %arrayidx3.6, align 1
  %mul29.6 = shl nuw nsw i32 %conv12.6, 1
  %add30.6 = add nuw nsw i32 %conv.6, 2
  %add31.6 = add nuw nsw i32 %add30.6, %conv8.6
  %add32.6 = add nuw nsw i32 %add31.6, %mul29.6
  %shr33.6 = lshr i32 %add32.6, 2
  %conv34.6 = trunc nuw i32 %shr33.6 to i8
  store i8 %conv34.6, ptr %add.ptr.5, align 1
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.6, %land.lhs.true18.6, %land.lhs.true.6, %if.end.5
  %add.ptr.6 = getelementptr inbounds i8, ptr %add.ptr.5, i64 %idx.ext
  %arrayidx.7 = getelementptr inbounds i8, ptr %add.ptr.6, i64 %idxprom
  %49 = load i8, ptr %arrayidx.7, align 1
  %conv.7 = zext i8 %49 to i32
  %arrayidx3.7 = getelementptr inbounds i8, ptr %add.ptr.6, i64 %idxprom2
  %50 = load i8, ptr %arrayidx3.7, align 1
  %conv4.7 = zext i8 %50 to i32
  %51 = load i8, ptr %add.ptr.6, align 1
  %conv8.7 = zext i8 %51 to i32
  %arrayidx11.7 = getelementptr inbounds i8, ptr %add.ptr.6, i64 %idxprom10
  %52 = load i8, ptr %arrayidx11.7, align 1
  %conv12.7 = zext i8 %52 to i32
  %sub.7 = sub nsw i32 %conv4.7, %conv8.7
  %53 = tail call i32 @llvm.abs.i32(i32 %sub.7, i1 true)
  %cmp13.7 = icmp slt i32 %53, %alpha
  br i1 %cmp13.7, label %land.lhs.true.7, label %if.end.7

land.lhs.true.7:                                  ; preds = %if.end.6
  %sub15.7 = sub nsw i32 %conv.7, %conv4.7
  %54 = tail call i32 @llvm.abs.i32(i32 %sub15.7, i1 true)
  %cmp16.7 = icmp slt i32 %54, %beta
  br i1 %cmp16.7, label %land.lhs.true18.7, label %if.end.7

land.lhs.true18.7:                                ; preds = %land.lhs.true.7
  %sub19.7 = sub nsw i32 %conv12.7, %conv8.7
  %55 = tail call i32 @llvm.abs.i32(i32 %sub19.7, i1 true)
  %cmp20.7 = icmp ult i32 %55, %beta
  br i1 %cmp20.7, label %if.then.7, label %if.end.7

if.then.7:                                        ; preds = %land.lhs.true18.7
  %mul22.7 = shl nuw nsw i32 %conv.7, 1
  %add.7 = add nuw nsw i32 %conv4.7, 2
  %add23.7 = add nuw nsw i32 %add.7, %mul22.7
  %add24.7 = add nuw nsw i32 %add23.7, %conv12.7
  %shr.7 = lshr i32 %add24.7, 2
  %conv25.7 = trunc nuw i32 %shr.7 to i8
  store i8 %conv25.7, ptr %arrayidx3.7, align 1
  %mul29.7 = shl nuw nsw i32 %conv12.7, 1
  %add30.7 = add nuw nsw i32 %conv.7, 2
  %add31.7 = add nuw nsw i32 %add30.7, %conv8.7
  %add32.7 = add nuw nsw i32 %add31.7, %mul29.7
  %shr33.7 = lshr i32 %add32.7, 2
  %conv34.7 = trunc nuw i32 %shr33.7 to i8
  store i8 %conv34.7, ptr %add.ptr.6, align 1
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.7, %land.lhs.true18.7, %land.lhs.true.7, %if.end.6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
