; ModuleID = 'ldecod_src/mv_prediction.c'
source_filename = "ldecod_src/mv_prediction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MotionVector = type { i16, i16 }
%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }
%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }

@zero_mv = internal unnamed_addr constant %struct.MotionVector zeroinitializer, align 2, !dbg !0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @init_motion_vector_prediction(ptr nocapture noundef writeonly %currMB, i32 noundef %mb_aff_frame_flag) local_unnamed_addr #0 !dbg !70 {
entry:
    #dbg_value(ptr %currMB, !1250, !DIExpression(), !1252)
    #dbg_value(i32 %mb_aff_frame_flag, !1251, !DIExpression(), !1252)
  %tobool.not = icmp eq i32 %mb_aff_frame_flag, 0, !dbg !1253
  %spec.select = select i1 %tobool.not, ptr @GetMotionVectorPredictorNormal, ptr @GetMotionVectorPredictorMBAFF, !dbg !1255
  %0 = getelementptr inbounds i8, ptr %currMB, i64 448, !dbg !1256
  store ptr %spec.select, ptr %0, align 8, !dbg !1256
  ret void, !dbg !1257
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @GetMotionVectorPredictorMBAFF(ptr nocapture noundef readonly %currMB, ptr nocapture noundef readonly %block, ptr nocapture noundef writeonly %pmv, i16 noundef signext %ref_frame, ptr nocapture noundef readonly %mv_info, i32 noundef %list, i32 noundef %mb_x, i32 noundef %mb_y, i32 noundef %blockshape_x, i32 noundef %blockshape_y) #1 !dbg !1258 {
entry:
    #dbg_value(ptr %currMB, !1265, !DIExpression(), !1285)
    #dbg_value(ptr %block, !1266, !DIExpression(), !1285)
    #dbg_value(ptr %pmv, !1267, !DIExpression(), !1285)
    #dbg_value(i16 %ref_frame, !1268, !DIExpression(), !1285)
    #dbg_value(ptr %mv_info, !1269, !DIExpression(), !1285)
    #dbg_value(i32 %list, !1270, !DIExpression(), !1285)
    #dbg_value(i32 %mb_x, !1271, !DIExpression(), !1285)
    #dbg_value(i32 %mb_y, !1272, !DIExpression(), !1285)
    #dbg_value(i32 %blockshape_x, !1273, !DIExpression(), !1285)
    #dbg_value(i32 %blockshape_y, !1274, !DIExpression(), !1285)
    #dbg_value(i32 0, !1278, !DIExpression(), !1285)
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8, !dbg !1286
  %0 = load ptr, ptr %p_Vid1, align 8, !dbg !1286
    #dbg_value(ptr %0, !1284, !DIExpression(), !1285)
    #dbg_value(i32 0, !1279, !DIExpression(), !1285)
  %mb_field = getelementptr inbounds i8, ptr %currMB, i64 384, !dbg !1287
  %1 = load i32, ptr %mb_field, align 8, !dbg !1287
  %tobool.not = icmp eq i32 %1, 0, !dbg !1289
  %2 = load i32, ptr %block, align 4, !dbg !1290
  %tobool119.not = icmp eq i32 %2, 0, !dbg !1290
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1291

if.then:                                          ; preds = %entry
  br i1 %tobool119.not, label %cond.end29, label %cond.true, !dbg !1292

cond.true:                                        ; preds = %if.then
  %mb_data = getelementptr inbounds i8, ptr %0, i64 848888, !dbg !1294
  %3 = load ptr, ptr %mb_data, align 8, !dbg !1294
  %mb_addr = getelementptr inbounds i8, ptr %block, i64 4, !dbg !1295
  %4 = load i32, ptr %mb_addr, align 4, !dbg !1295
  %idxprom = sext i32 %4 to i64, !dbg !1296
  %mb_field5 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom, i32 45, !dbg !1297
  %5 = load i32, ptr %mb_field5, align 8, !dbg !1297
  %tobool6.not = icmp eq i32 %5, 0, !dbg !1296
  %pos_y17 = getelementptr inbounds i8, ptr %block, i64 14, !dbg !1298
  %6 = load i16, ptr %pos_y17, align 2, !dbg !1298
  %idxprom18 = sext i16 %6 to i64, !dbg !1298
  %arrayidx19 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom18, !dbg !1298
  %7 = load ptr, ptr %arrayidx19, align 8, !dbg !1298
  %pos_x21 = getelementptr inbounds i8, ptr %block, i64 12, !dbg !1298
  %8 = load i16, ptr %pos_x21, align 4, !dbg !1298
  %idxprom22 = sext i16 %8 to i64, !dbg !1298
  %idxprom25 = sext i32 %list to i64, !dbg !1298
  %arrayidx26 = getelementptr inbounds %struct.pic_motion_params, ptr %7, i64 %idxprom22, i32 2, i64 %idxprom25, !dbg !1298
  %9 = load i8, ptr %arrayidx26, align 1, !dbg !1298
  %conv27 = sext i8 %9 to i32, !dbg !1298
  %mul = zext i1 %tobool6.not to i32, !dbg !1296
  %spec.select882 = shl nsw i32 %conv27, %mul, !dbg !1296
  br label %cond.end29, !dbg !1296

cond.end29:                                       ; preds = %cond.true, %if.then
  %cond30 = phi i32 [ -1, %if.then ], [ %spec.select882, %cond.true ], !dbg !1292
    #dbg_value(i32 %cond30, !1280, !DIExpression(), !1285)
  %arrayidx31 = getelementptr inbounds i8, ptr %block, i64 16, !dbg !1299
  %10 = load i32, ptr %arrayidx31, align 4, !dbg !1300
  %tobool33.not = icmp eq i32 %10, 0, !dbg !1299
  br i1 %tobool33.not, label %cond.end72, label %cond.true34, !dbg !1299

cond.true34:                                      ; preds = %cond.end29
  %mb_data35 = getelementptr inbounds i8, ptr %0, i64 848888, !dbg !1301
  %11 = load ptr, ptr %mb_data35, align 8, !dbg !1301
  %mb_addr37 = getelementptr inbounds i8, ptr %block, i64 20, !dbg !1302
  %12 = load i32, ptr %mb_addr37, align 4, !dbg !1302
  %idxprom38 = sext i32 %12 to i64, !dbg !1303
  %mb_field40 = getelementptr inbounds %struct.macroblock, ptr %11, i64 %idxprom38, i32 45, !dbg !1304
  %13 = load i32, ptr %mb_field40, align 8, !dbg !1304
  %tobool41.not = icmp eq i32 %13, 0, !dbg !1303
  %pos_y57 = getelementptr inbounds i8, ptr %block, i64 30, !dbg !1298
  %14 = load i16, ptr %pos_y57, align 2, !dbg !1298
  %idxprom58 = sext i16 %14 to i64, !dbg !1298
  %arrayidx59 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom58, !dbg !1298
  %15 = load ptr, ptr %arrayidx59, align 8, !dbg !1298
  %pos_x61 = getelementptr inbounds i8, ptr %block, i64 28, !dbg !1298
  %16 = load i16, ptr %pos_x61, align 4, !dbg !1298
  %idxprom62 = sext i16 %16 to i64, !dbg !1298
  %idxprom65 = sext i32 %list to i64, !dbg !1298
  %arrayidx66 = getelementptr inbounds %struct.pic_motion_params, ptr %15, i64 %idxprom62, i32 2, i64 %idxprom65, !dbg !1298
  %17 = load i8, ptr %arrayidx66, align 1, !dbg !1298
  %conv67 = sext i8 %17 to i32, !dbg !1298
  %mul68 = zext i1 %tobool41.not to i32, !dbg !1303
  %spec.select883 = shl nsw i32 %conv67, %mul68, !dbg !1303
  br label %cond.end72, !dbg !1303

cond.end72:                                       ; preds = %cond.true34, %cond.end29
  %cond73 = phi i32 [ -1, %cond.end29 ], [ %spec.select883, %cond.true34 ], !dbg !1299
    #dbg_value(i32 %cond73, !1281, !DIExpression(), !1285)
  %arrayidx74 = getelementptr inbounds i8, ptr %block, i64 32, !dbg !1305
  %18 = load i32, ptr %arrayidx74, align 4, !dbg !1306
  %tobool76.not = icmp eq i32 %18, 0, !dbg !1305
  br i1 %tobool76.not, label %if.end, label %cond.true77, !dbg !1305

cond.true77:                                      ; preds = %cond.end72
  %mb_data78 = getelementptr inbounds i8, ptr %0, i64 848888, !dbg !1307
  %19 = load ptr, ptr %mb_data78, align 8, !dbg !1307
  %mb_addr80 = getelementptr inbounds i8, ptr %block, i64 36, !dbg !1308
  %20 = load i32, ptr %mb_addr80, align 4, !dbg !1308
  %idxprom81 = sext i32 %20 to i64, !dbg !1309
  %mb_field83 = getelementptr inbounds %struct.macroblock, ptr %19, i64 %idxprom81, i32 45, !dbg !1310
  %21 = load i32, ptr %mb_field83, align 8, !dbg !1310
  %tobool84.not = icmp eq i32 %21, 0, !dbg !1309
  %pos_y100 = getelementptr inbounds i8, ptr %block, i64 46, !dbg !1298
  %22 = load i16, ptr %pos_y100, align 2, !dbg !1298
  %idxprom101 = sext i16 %22 to i64, !dbg !1298
  %arrayidx102 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom101, !dbg !1298
  %23 = load ptr, ptr %arrayidx102, align 8, !dbg !1298
  %pos_x104 = getelementptr inbounds i8, ptr %block, i64 44, !dbg !1298
  %24 = load i16, ptr %pos_x104, align 4, !dbg !1298
  %idxprom105 = sext i16 %24 to i64, !dbg !1298
  %idxprom108 = sext i32 %list to i64, !dbg !1298
  %arrayidx109 = getelementptr inbounds %struct.pic_motion_params, ptr %23, i64 %idxprom105, i32 2, i64 %idxprom108, !dbg !1298
  %25 = load i8, ptr %arrayidx109, align 1, !dbg !1298
  %conv110 = sext i8 %25 to i32, !dbg !1298
  %mul111 = zext i1 %tobool84.not to i32, !dbg !1309
  %spec.select884 = shl nsw i32 %conv110, %mul111, !dbg !1309
  br label %if.end, !dbg !1309

if.else:                                          ; preds = %entry
  br i1 %tobool119.not, label %cond.end157, label %cond.true120, !dbg !1311

cond.true120:                                     ; preds = %if.else
  %mb_data121 = getelementptr inbounds i8, ptr %0, i64 848888, !dbg !1313
  %26 = load ptr, ptr %mb_data121, align 8, !dbg !1313
  %mb_addr123 = getelementptr inbounds i8, ptr %block, i64 4, !dbg !1314
  %27 = load i32, ptr %mb_addr123, align 4, !dbg !1314
  %idxprom124 = sext i32 %27 to i64, !dbg !1315
  %mb_field126 = getelementptr inbounds %struct.macroblock, ptr %26, i64 %idxprom124, i32 45, !dbg !1316
  %28 = load i32, ptr %mb_field126, align 8, !dbg !1316
  %tobool127.not = icmp eq i32 %28, 0, !dbg !1315
  %pos_y143 = getelementptr inbounds i8, ptr %block, i64 14, !dbg !1317
  %29 = load i16, ptr %pos_y143, align 2, !dbg !1317
  %idxprom144 = sext i16 %29 to i64, !dbg !1317
  %arrayidx145 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom144, !dbg !1317
  %30 = load ptr, ptr %arrayidx145, align 8, !dbg !1317
  %pos_x147 = getelementptr inbounds i8, ptr %block, i64 12, !dbg !1317
  %31 = load i16, ptr %pos_x147, align 4, !dbg !1317
  %idxprom148 = sext i16 %31 to i64, !dbg !1317
  %idxprom151 = sext i32 %list to i64, !dbg !1317
  %arrayidx152 = getelementptr inbounds %struct.pic_motion_params, ptr %30, i64 %idxprom148, i32 2, i64 %idxprom151, !dbg !1317
  %32 = load i8, ptr %arrayidx152, align 1, !dbg !1317
  br i1 %tobool127.not, label %cond.false141, label %cond.true128, !dbg !1315

cond.true128:                                     ; preds = %cond.true120
  %33 = ashr i8 %32, 1, !dbg !1318
  %shr = sext i8 %33 to i32, !dbg !1318
  br label %cond.end157, !dbg !1315

cond.false141:                                    ; preds = %cond.true120
  %conv153 = sext i8 %32 to i32, !dbg !1319
  br label %cond.end157, !dbg !1315

cond.end157:                                      ; preds = %if.else, %cond.true128, %cond.false141
  %cond158 = phi i32 [ %shr, %cond.true128 ], [ %conv153, %cond.false141 ], [ -1, %if.else ], !dbg !1311
    #dbg_value(i32 %cond158, !1280, !DIExpression(), !1285)
  %arrayidx159 = getelementptr inbounds i8, ptr %block, i64 16, !dbg !1320
  %34 = load i32, ptr %arrayidx159, align 4, !dbg !1321
  %tobool161.not = icmp eq i32 %34, 0, !dbg !1320
  br i1 %tobool161.not, label %cond.end200, label %cond.true162, !dbg !1320

cond.true162:                                     ; preds = %cond.end157
  %mb_data163 = getelementptr inbounds i8, ptr %0, i64 848888, !dbg !1322
  %35 = load ptr, ptr %mb_data163, align 8, !dbg !1322
  %mb_addr165 = getelementptr inbounds i8, ptr %block, i64 20, !dbg !1323
  %36 = load i32, ptr %mb_addr165, align 4, !dbg !1323
  %idxprom166 = sext i32 %36 to i64, !dbg !1324
  %mb_field168 = getelementptr inbounds %struct.macroblock, ptr %35, i64 %idxprom166, i32 45, !dbg !1325
  %37 = load i32, ptr %mb_field168, align 8, !dbg !1325
  %tobool169.not = icmp eq i32 %37, 0, !dbg !1324
  %pos_y186 = getelementptr inbounds i8, ptr %block, i64 30, !dbg !1317
  %38 = load i16, ptr %pos_y186, align 2, !dbg !1317
  %idxprom187 = sext i16 %38 to i64, !dbg !1317
  %arrayidx188 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom187, !dbg !1317
  %39 = load ptr, ptr %arrayidx188, align 8, !dbg !1317
  %pos_x190 = getelementptr inbounds i8, ptr %block, i64 28, !dbg !1317
  %40 = load i16, ptr %pos_x190, align 4, !dbg !1317
  %idxprom191 = sext i16 %40 to i64, !dbg !1317
  %idxprom194 = sext i32 %list to i64, !dbg !1317
  %arrayidx195 = getelementptr inbounds %struct.pic_motion_params, ptr %39, i64 %idxprom191, i32 2, i64 %idxprom194, !dbg !1317
  %41 = load i8, ptr %arrayidx195, align 1, !dbg !1317
  br i1 %tobool169.not, label %cond.false184, label %cond.true170, !dbg !1324

cond.true170:                                     ; preds = %cond.true162
  %42 = ashr i8 %41, 1, !dbg !1326
  %shr183 = sext i8 %42 to i32, !dbg !1326
  br label %cond.end200, !dbg !1324

cond.false184:                                    ; preds = %cond.true162
  %conv196 = sext i8 %41 to i32, !dbg !1327
  br label %cond.end200, !dbg !1324

cond.end200:                                      ; preds = %cond.end157, %cond.true170, %cond.false184
  %cond201 = phi i32 [ %shr183, %cond.true170 ], [ %conv196, %cond.false184 ], [ -1, %cond.end157 ], !dbg !1320
    #dbg_value(i32 %cond201, !1281, !DIExpression(), !1285)
  %arrayidx202 = getelementptr inbounds i8, ptr %block, i64 32, !dbg !1328
  %43 = load i32, ptr %arrayidx202, align 4, !dbg !1329
  %tobool204.not = icmp eq i32 %43, 0, !dbg !1328
  br i1 %tobool204.not, label %if.end, label %cond.true205, !dbg !1328

cond.true205:                                     ; preds = %cond.end200
  %mb_data206 = getelementptr inbounds i8, ptr %0, i64 848888, !dbg !1330
  %44 = load ptr, ptr %mb_data206, align 8, !dbg !1330
  %mb_addr208 = getelementptr inbounds i8, ptr %block, i64 36, !dbg !1331
  %45 = load i32, ptr %mb_addr208, align 4, !dbg !1331
  %idxprom209 = sext i32 %45 to i64, !dbg !1332
  %mb_field211 = getelementptr inbounds %struct.macroblock, ptr %44, i64 %idxprom209, i32 45, !dbg !1333
  %46 = load i32, ptr %mb_field211, align 8, !dbg !1333
  %tobool212.not = icmp eq i32 %46, 0, !dbg !1332
  %pos_y229 = getelementptr inbounds i8, ptr %block, i64 46, !dbg !1317
  %47 = load i16, ptr %pos_y229, align 2, !dbg !1317
  %idxprom230 = sext i16 %47 to i64, !dbg !1317
  %arrayidx231 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom230, !dbg !1317
  %48 = load ptr, ptr %arrayidx231, align 8, !dbg !1317
  %pos_x233 = getelementptr inbounds i8, ptr %block, i64 44, !dbg !1317
  %49 = load i16, ptr %pos_x233, align 4, !dbg !1317
  %idxprom234 = sext i16 %49 to i64, !dbg !1317
  %idxprom237 = sext i32 %list to i64, !dbg !1317
  %arrayidx238 = getelementptr inbounds %struct.pic_motion_params, ptr %48, i64 %idxprom234, i32 2, i64 %idxprom237, !dbg !1317
  %50 = load i8, ptr %arrayidx238, align 1, !dbg !1317
  br i1 %tobool212.not, label %cond.false227, label %cond.true213, !dbg !1332

cond.true213:                                     ; preds = %cond.true205
  %51 = ashr i8 %50, 1, !dbg !1334
  %shr226 = sext i8 %51 to i32, !dbg !1334
  br label %if.end, !dbg !1332

cond.false227:                                    ; preds = %cond.true205
  %conv239 = sext i8 %50 to i32, !dbg !1335
  br label %if.end, !dbg !1332

if.end:                                           ; preds = %cond.true77, %cond.false227, %cond.true213, %cond.end200, %cond.end72
  %tobool374.not = phi i1 [ true, %cond.end72 ], [ true, %cond.end200 ], [ false, %cond.true213 ], [ false, %cond.false227 ], [ false, %cond.true77 ]
  %52 = phi i32 [ %10, %cond.end72 ], [ %34, %cond.end200 ], [ %34, %cond.true213 ], [ %34, %cond.false227 ], [ %10, %cond.true77 ]
  %rFrameL.0 = phi i32 [ %cond30, %cond.end72 ], [ %cond158, %cond.end200 ], [ %cond158, %cond.true213 ], [ %cond158, %cond.false227 ], [ %cond30, %cond.true77 ], !dbg !1290
  %rFrameU.0 = phi i32 [ %cond73, %cond.end72 ], [ %cond201, %cond.end200 ], [ %cond201, %cond.true213 ], [ %cond201, %cond.false227 ], [ %cond73, %cond.true77 ], !dbg !1290
  %rFrameUR.0 = phi i32 [ -1, %cond.end72 ], [ -1, %cond.end200 ], [ %shr226, %cond.true213 ], [ %conv239, %cond.false227 ], [ %spec.select884, %cond.true77 ], !dbg !1290
    #dbg_value(i32 %rFrameUR.0, !1282, !DIExpression(), !1285)
    #dbg_value(i32 %rFrameU.0, !1281, !DIExpression(), !1285)
    #dbg_value(i32 %rFrameL.0, !1280, !DIExpression(), !1285)
  %conv245 = sext i16 %ref_frame to i32, !dbg !1336
  %cmp = icmp eq i32 %rFrameL.0, %conv245, !dbg !1338
  %cmp.not = xor i1 %cmp, true, !dbg !1339
  %cmp248.not = icmp eq i32 %rFrameU.0, %conv245
  %or.cond869 = select i1 %cmp.not, i1 true, i1 %cmp248.not, !dbg !1339
  %cmp252.not = icmp eq i32 %rFrameUR.0, %conv245
  %or.cond870 = select i1 %or.cond869, i1 true, i1 %cmp252.not, !dbg !1339
  br i1 %or.cond870, label %if.else255, label %if.end283, !dbg !1339

if.else255:                                       ; preds = %if.end
  %cmp248.not.not = xor i1 %cmp248.not, true, !dbg !1340
  %or.cond871.not = select i1 %cmp, i1 true, i1 %cmp248.not.not, !dbg !1340
  %or.cond872 = select i1 %or.cond871.not, i1 true, i1 %cmp252.not, !dbg !1340
  %or.cond872.not = xor i1 %or.cond872, true, !dbg !1340
  %brmerge = or i1 %cmp, %or.cond872.not, !dbg !1340
  %.mux = select i1 %or.cond872, i32 0, i32 2, !dbg !1340
  br i1 %brmerge, label %if.end283, label %land.lhs.true272, !dbg !1340

land.lhs.true272:                                 ; preds = %if.else255
  %cmp274.not = icmp ne i32 %rFrameU.0, %conv245, !dbg !1342
  %or.cond873 = select i1 %cmp274.not, i1 %cmp252.not, i1 false, !dbg !1344
  %spec.select877 = select i1 %or.cond873, i32 3, i32 0, !dbg !1344
  br label %if.end283, !dbg !1344

if.end283:                                        ; preds = %land.lhs.true272, %if.else255, %if.end
  %mvPredType.0 = phi i32 [ 1, %if.end ], [ %.mux, %if.else255 ], [ %spec.select877, %land.lhs.true272 ], !dbg !1285
    #dbg_value(i32 %mvPredType.0, !1279, !DIExpression(), !1285)
  %cmp284 = icmp eq i32 %blockshape_x, 8, !dbg !1345
  %cmp287 = icmp eq i32 %blockshape_y, 16
  %or.cond = and i1 %cmp284, %cmp287, !dbg !1347
  br i1 %or.cond, label %if.then289, label %if.else305, !dbg !1347

if.then289:                                       ; preds = %if.end283
  %cmp290 = icmp eq i32 %mb_x, 0, !dbg !1348
  br i1 %cmp290, label %if.then292, label %if.else298, !dbg !1351

if.then292:                                       ; preds = %if.then289
  %spec.select = select i1 %cmp, i32 1, i32 %mvPredType.0, !dbg !1352
  br label %if.then333, !dbg !1352

if.else298:                                       ; preds = %if.then289
  %spec.select874 = select i1 %cmp252.not, i32 3, i32 %mvPredType.0, !dbg !1354
  br label %if.then333, !dbg !1354

if.else305:                                       ; preds = %if.end283
  %cmp306 = icmp eq i32 %blockshape_x, 16, !dbg !1356
  %cmp309 = icmp eq i32 %blockshape_y, 8
  %or.cond688 = and i1 %cmp306, %cmp309, !dbg !1358
  br i1 %or.cond688, label %if.then311, label %if.then333, !dbg !1358

if.then311:                                       ; preds = %if.else305
  %cmp312 = icmp eq i32 %mb_y, 0, !dbg !1359
  br i1 %cmp312, label %if.then314, label %if.else320, !dbg !1362

if.then314:                                       ; preds = %if.then311
  %spec.select875 = select i1 %cmp248.not, i32 2, i32 %mvPredType.0, !dbg !1363
  br label %if.then333, !dbg !1363

if.else320:                                       ; preds = %if.then311
  %spec.select876 = select i1 %cmp, i32 1, i32 %mvPredType.0, !dbg !1365
  br label %if.then333, !dbg !1365

if.then333:                                       ; preds = %if.else305, %if.then292, %if.else298, %if.then314, %if.else320
  %mvPredType.1 = phi i32 [ %mvPredType.0, %if.else305 ], [ %spec.select, %if.then292 ], [ %spec.select874, %if.else298 ], [ %spec.select875, %if.then314 ], [ %spec.select876, %if.else320 ], !dbg !1285
    #dbg_value(i32 %mvPredType.1, !1279, !DIExpression(), !1285)
    #dbg_value(i32 0, !1283, !DIExpression(), !1285)
    #dbg_value(i32 poison, !1278, !DIExpression(), !1285)
  %mb_data400 = getelementptr inbounds i8, ptr %0, i64 848888
  %mb_addr402 = getelementptr inbounds i8, ptr %block, i64 4
  %pos_y409 = getelementptr inbounds i8, ptr %block, i64 14
  %pos_x413 = getelementptr inbounds i8, ptr %block, i64 12
  %idxprom417 = sext i32 %list to i64
  %arrayidx439 = getelementptr inbounds i8, ptr %block, i64 16
  %mb_addr445 = getelementptr inbounds i8, ptr %block, i64 20
  %pos_y452 = getelementptr inbounds i8, ptr %block, i64 30
  %pos_x456 = getelementptr inbounds i8, ptr %block, i64 28
  %arrayidx484 = getelementptr inbounds i8, ptr %block, i64 32
  %mb_addr490 = getelementptr inbounds i8, ptr %block, i64 36
  %pos_y497 = getelementptr inbounds i8, ptr %block, i64 46
  %pos_x501 = getelementptr inbounds i8, ptr %block, i64 44
  %tobool336.not = icmp eq i32 %2, 0, !dbg !1367
  br i1 %tobool336.not, label %cond.end350, label %cond.true337, !dbg !1367

cond.true337:                                     ; preds = %if.then333
  %53 = load i16, ptr %pos_y409, align 2, !dbg !1373
  %idxprom340 = sext i16 %53 to i64, !dbg !1374
  %arrayidx341 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom340, !dbg !1374
  %54 = load ptr, ptr %arrayidx341, align 8, !dbg !1374
  %55 = load i16, ptr %pos_x413, align 4, !dbg !1375
  %idxprom344 = sext i16 %55 to i64, !dbg !1374
  %arrayidx347 = getelementptr inbounds %struct.pic_motion_params, ptr %54, i64 %idxprom344, i32 1, i64 %idxprom417, !dbg !1374
  %56 = load i16, ptr %arrayidx347, align 4, !dbg !1376
  %conv348 = sext i16 %56 to i32, !dbg !1374
  br label %cond.end350, !dbg !1367

cond.end350:                                      ; preds = %if.then333, %cond.true337
  %cond351 = phi i32 [ %conv348, %cond.true337 ], [ 0, %if.then333 ], !dbg !1367
    #dbg_value(i32 %cond351, !1275, !DIExpression(), !1285)
  %tobool354.not = icmp eq i32 %52, 0, !dbg !1377
  br i1 %tobool354.not, label %cond.end370, label %cond.true355, !dbg !1377

cond.true355:                                     ; preds = %cond.end350
  %57 = load i16, ptr %pos_y452, align 2, !dbg !1378
  %idxprom358 = sext i16 %57 to i64, !dbg !1379
  %arrayidx359 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom358, !dbg !1379
  %58 = load ptr, ptr %arrayidx359, align 8, !dbg !1379
  %59 = load i16, ptr %pos_x456, align 4, !dbg !1380
  %idxprom362 = sext i16 %59 to i64, !dbg !1379
  %arrayidx366 = getelementptr inbounds %struct.pic_motion_params, ptr %58, i64 %idxprom362, i32 1, i64 %idxprom417, !dbg !1379
  %60 = load i16, ptr %arrayidx366, align 4, !dbg !1381
  %conv368 = sext i16 %60 to i32, !dbg !1379
  br label %cond.end370, !dbg !1377

cond.end370:                                      ; preds = %cond.end350, %cond.true355
  %cond371 = phi i32 [ %conv368, %cond.true355 ], [ 0, %cond.end350 ], !dbg !1377
    #dbg_value(i32 %cond371, !1276, !DIExpression(), !1285)
  br i1 %tobool374.not, label %if.end666, label %cond.true375, !dbg !1382

cond.true375:                                     ; preds = %cond.end370
  %61 = load i16, ptr %pos_y497, align 2, !dbg !1383
  %idxprom378 = sext i16 %61 to i64, !dbg !1384
  %arrayidx379 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom378, !dbg !1384
  %62 = load ptr, ptr %arrayidx379, align 8, !dbg !1384
  %63 = load i16, ptr %pos_x501, align 4, !dbg !1385
  %idxprom382 = sext i16 %63 to i64, !dbg !1384
  %arrayidx386 = getelementptr inbounds %struct.pic_motion_params, ptr %62, i64 %idxprom382, i32 1, i64 %idxprom417, !dbg !1384
  %64 = load i16, ptr %arrayidx386, align 4, !dbg !1386
  %conv388 = sext i16 %64 to i32, !dbg !1384
  br label %if.end666, !dbg !1382

if.end666:                                        ; preds = %cond.true375, %cond.end370
  %mv_c.0 = phi i32 [ 0, %cond.end370 ], [ %conv388, %cond.true375 ], !dbg !1387
    #dbg_value(i32 %cond351, !1275, !DIExpression(), !1285)
    #dbg_value(i32 %mv_c.0, !1277, !DIExpression(), !1285)
    #dbg_value(i32 %cond371, !1276, !DIExpression(), !1285)
  switch i32 %mvPredType.1, label %default.unreachable879 [
    i32 0, label %sw.bb
    i32 1, label %if.else392.1
    i32 2, label %sw.bb677
    i32 3, label %sw.bb678
  ], !dbg !1388

sw.bb:                                            ; preds = %if.end666
  %tobool669.not = icmp eq i32 %52, 0, !dbg !1389
  %brmerge880.not = and i1 %tobool669.not, %tobool374.not, !dbg !1392
  br i1 %brmerge880.not, label %if.else392.1, label %if.else674, !dbg !1392

if.else674:                                       ; preds = %sw.bb
    #dbg_value(i32 %cond351, !1393, !DIExpression(), !1401)
    #dbg_value(i32 %cond371, !1399, !DIExpression(), !1401)
    #dbg_value(i32 %mv_c.0, !1400, !DIExpression(), !1401)
  %cmp.i = icmp sgt i32 %cond351, %cond371, !dbg !1404
  br i1 %cmp.i, label %if.then.i, label %if.else6.i, !dbg !1406

if.then.i:                                        ; preds = %if.else674
  %cmp1.i = icmp sgt i32 %cond371, %mv_c.0, !dbg !1407
  br i1 %cmp1.i, label %if.else392.1, label %if.else.i, !dbg !1410

if.else.i:                                        ; preds = %if.then.i
  %c.a.i = tail call i32 @llvm.smin.i32(i32 %cond351, i32 %mv_c.0), !dbg !1411
  br label %if.else392.1, !dbg !1411

if.else6.i:                                       ; preds = %if.else674
  %cmp7.i = icmp sgt i32 %cond351, %mv_c.0, !dbg !1413
  br i1 %cmp7.i, label %if.else392.1, label %if.else9.i, !dbg !1416

if.else9.i:                                       ; preds = %if.else6.i
  %c.b.i = tail call i32 @llvm.smin.i32(i32 %cond371, i32 %mv_c.0), !dbg !1417
  br label %if.else392.1, !dbg !1417

sw.bb677:                                         ; preds = %if.end666
    #dbg_value(i32 %cond371, !1278, !DIExpression(), !1285)
  br label %if.else392.1, !dbg !1419

sw.bb678:                                         ; preds = %if.end666
    #dbg_value(i32 %mv_c.0, !1278, !DIExpression(), !1285)
  br label %if.else392.1, !dbg !1420

default.unreachable879:                           ; preds = %if.end666.1, %if.end666
  unreachable

if.else392.1:                                     ; preds = %sw.bb, %sw.bb677, %sw.bb678, %if.end666, %if.then.i, %if.else.i, %if.else6.i, %if.else9.i
  %pred_vec.1 = phi i32 [ %mv_c.0, %sw.bb678 ], [ %cond371, %sw.bb677 ], [ %cond351, %if.end666 ], [ %cond371, %if.then.i ], [ %c.a.i, %if.else.i ], [ %cond351, %if.else6.i ], [ %c.b.i, %if.else9.i ], [ %cond351, %sw.bb ], !dbg !1285
    #dbg_value(i32 %pred_vec.1, !1278, !DIExpression(), !1285)
  %conv682 = trunc nsw i32 %pred_vec.1 to i16, !dbg !1421
  store i16 %conv682, ptr %pmv, align 2, !dbg !1423
    #dbg_value(i32 1, !1283, !DIExpression(), !1285)
    #dbg_value(i32 poison, !1278, !DIExpression(), !1285)
  %65 = load i32, ptr %mb_field, align 8, !dbg !1424
  %tobool394.not.1 = icmp eq i32 %65, 0, !dbg !1427
  %66 = load i32, ptr %block, align 4, !dbg !1428
  %tobool532.not.1 = icmp eq i32 %66, 0, !dbg !1428
  br i1 %tobool394.not.1, label %if.else529.1, label %if.then395.1, !dbg !1429

if.then395.1:                                     ; preds = %if.else392.1
  br i1 %tobool532.not.1, label %cond.end437.1, label %cond.true399.1, !dbg !1430

cond.true399.1:                                   ; preds = %if.then395.1
  %67 = load ptr, ptr %mb_data400, align 8, !dbg !1432
  %68 = load i32, ptr %mb_addr402, align 4, !dbg !1433
  %idxprom403.1 = sext i32 %68 to i64, !dbg !1434
  %mb_field405.1 = getelementptr inbounds %struct.macroblock, ptr %67, i64 %idxprom403.1, i32 45, !dbg !1435
  %69 = load i32, ptr %mb_field405.1, align 8, !dbg !1435
  %tobool406.not.1 = icmp eq i32 %69, 0, !dbg !1434
  %70 = load i16, ptr %pos_y409, align 2, !dbg !1436
  %idxprom423.1 = sext i16 %70 to i64, !dbg !1436
  %arrayidx424.1 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom423.1, !dbg !1436
  %71 = load ptr, ptr %arrayidx424.1, align 8, !dbg !1436
  %72 = load i16, ptr %pos_x413, align 4, !dbg !1436
  %idxprom427.1 = sext i16 %72 to i64, !dbg !1436
  %mv_y432.1 = getelementptr inbounds %struct.pic_motion_params, ptr %71, i64 %idxprom427.1, i32 1, i64 %idxprom417, i32 1, !dbg !1436
  %73 = load i16, ptr %mv_y432.1, align 2, !dbg !1436
  br i1 %tobool406.not.1, label %cond.false420.1, label %cond.true407.1, !dbg !1434

cond.true407.1:                                   ; preds = %cond.true399.1
  %conv419.1 = sext i16 %73 to i32, !dbg !1437
  br label %cond.end437.1, !dbg !1434

cond.false420.1:                                  ; preds = %cond.true399.1
  %74 = sdiv i16 %73, 2, !dbg !1438
  %div.1 = sext i16 %74 to i32, !dbg !1438
  br label %cond.end437.1, !dbg !1434

cond.end437.1:                                    ; preds = %cond.false420.1, %cond.true407.1, %if.then395.1
  %cond438.1 = phi i32 [ %conv419.1, %cond.true407.1 ], [ %div.1, %cond.false420.1 ], [ 0, %if.then395.1 ], !dbg !1430
    #dbg_value(i32 %cond438.1, !1275, !DIExpression(), !1285)
  %75 = load i32, ptr %arrayidx439, align 4, !dbg !1439
  %tobool441.not.1 = icmp eq i32 %75, 0, !dbg !1440
  br i1 %tobool441.not.1, label %cond.end482.1, label %cond.true442.1, !dbg !1440

cond.true442.1:                                   ; preds = %cond.end437.1
  %76 = load ptr, ptr %mb_data400, align 8, !dbg !1441
  %77 = load i32, ptr %mb_addr445, align 4, !dbg !1442
  %idxprom446.1 = sext i32 %77 to i64, !dbg !1443
  %mb_field448.1 = getelementptr inbounds %struct.macroblock, ptr %76, i64 %idxprom446.1, i32 45, !dbg !1444
  %78 = load i32, ptr %mb_field448.1, align 8, !dbg !1444
  %tobool449.not.1 = icmp eq i32 %78, 0, !dbg !1443
  %79 = load i16, ptr %pos_y452, align 2, !dbg !1436
  %idxprom467.1 = sext i16 %79 to i64, !dbg !1436
  %arrayidx468.1 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom467.1, !dbg !1436
  %80 = load ptr, ptr %arrayidx468.1, align 8, !dbg !1436
  %81 = load i16, ptr %pos_x456, align 4, !dbg !1436
  %idxprom471.1 = sext i16 %81 to i64, !dbg !1436
  %mv_y476.1 = getelementptr inbounds %struct.pic_motion_params, ptr %80, i64 %idxprom471.1, i32 1, i64 %idxprom417, i32 1, !dbg !1436
  %82 = load i16, ptr %mv_y476.1, align 2, !dbg !1436
  br i1 %tobool449.not.1, label %cond.false464.1, label %cond.true450.1, !dbg !1443

cond.true450.1:                                   ; preds = %cond.true442.1
  %conv463.1 = sext i16 %82 to i32, !dbg !1445
  br label %cond.end482.1, !dbg !1443

cond.false464.1:                                  ; preds = %cond.true442.1
  %83 = sdiv i16 %82, 2, !dbg !1446
  %div478.1 = sext i16 %83 to i32, !dbg !1446
  br label %cond.end482.1, !dbg !1443

cond.end482.1:                                    ; preds = %cond.false464.1, %cond.true450.1, %cond.end437.1
  %cond483.1 = phi i32 [ %conv463.1, %cond.true450.1 ], [ %div478.1, %cond.false464.1 ], [ 0, %cond.end437.1 ], !dbg !1440
    #dbg_value(i32 %cond483.1, !1276, !DIExpression(), !1285)
  %84 = load i32, ptr %arrayidx484, align 4, !dbg !1447
  %tobool486.not.1 = icmp eq i32 %84, 0, !dbg !1448
  br i1 %tobool486.not.1, label %if.end666.1, label %cond.true487.1, !dbg !1448

cond.true487.1:                                   ; preds = %cond.end482.1
  %85 = load ptr, ptr %mb_data400, align 8, !dbg !1449
  %86 = load i32, ptr %mb_addr490, align 4, !dbg !1450
  %idxprom491.1 = sext i32 %86 to i64, !dbg !1451
  %mb_field493.1 = getelementptr inbounds %struct.macroblock, ptr %85, i64 %idxprom491.1, i32 45, !dbg !1452
  %87 = load i32, ptr %mb_field493.1, align 8, !dbg !1452
  %tobool494.not.1 = icmp eq i32 %87, 0, !dbg !1451
  %88 = load i16, ptr %pos_y497, align 2, !dbg !1436
  %idxprom512.1 = sext i16 %88 to i64, !dbg !1436
  %arrayidx513.1 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom512.1, !dbg !1436
  %89 = load ptr, ptr %arrayidx513.1, align 8, !dbg !1436
  %90 = load i16, ptr %pos_x501, align 4, !dbg !1436
  %idxprom516.1 = sext i16 %90 to i64, !dbg !1436
  %mv_y521.1 = getelementptr inbounds %struct.pic_motion_params, ptr %89, i64 %idxprom516.1, i32 1, i64 %idxprom417, i32 1, !dbg !1436
  %91 = load i16, ptr %mv_y521.1, align 2, !dbg !1436
  br i1 %tobool494.not.1, label %cond.false509.1, label %cond.true495.1, !dbg !1451

cond.true495.1:                                   ; preds = %cond.true487.1
  %conv508.1 = sext i16 %91 to i32, !dbg !1453
  br label %if.end666.1, !dbg !1451

cond.false509.1:                                  ; preds = %cond.true487.1
  %92 = sdiv i16 %91, 2, !dbg !1454
  %div523.1 = sext i16 %92 to i32, !dbg !1454
  br label %if.end666.1, !dbg !1451

if.else529.1:                                     ; preds = %if.else392.1
  br i1 %tobool532.not.1, label %cond.end573.1, label %cond.true533.1, !dbg !1455

cond.true533.1:                                   ; preds = %if.else529.1
  %93 = load ptr, ptr %mb_data400, align 8, !dbg !1457
  %94 = load i32, ptr %mb_addr402, align 4, !dbg !1458
  %idxprom537.1 = sext i32 %94 to i64, !dbg !1459
  %mb_field539.1 = getelementptr inbounds %struct.macroblock, ptr %93, i64 %idxprom537.1, i32 45, !dbg !1460
  %95 = load i32, ptr %mb_field539.1, align 8, !dbg !1460
  %tobool540.not.1 = icmp ne i32 %95, 0, !dbg !1459
  %96 = load i16, ptr %pos_y409, align 2, !dbg !1461
  %idxprom559.1 = sext i16 %96 to i64, !dbg !1461
  %arrayidx560.1 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom559.1, !dbg !1461
  %97 = load ptr, ptr %arrayidx560.1, align 8, !dbg !1461
  %98 = load i16, ptr %pos_x413, align 4, !dbg !1461
  %idxprom563.1 = sext i16 %98 to i64, !dbg !1461
  %mv_y568.1 = getelementptr inbounds %struct.pic_motion_params, ptr %97, i64 %idxprom563.1, i32 1, i64 %idxprom417, i32 1, !dbg !1461
  %99 = load i16, ptr %mv_y568.1, align 2, !dbg !1461
  %conv569.1 = sext i16 %99 to i32, !dbg !1461
  %mul555.1 = zext i1 %tobool540.not.1 to i32, !dbg !1459
  %spec.select885 = shl nsw i32 %conv569.1, %mul555.1, !dbg !1459
  br label %cond.end573.1, !dbg !1459

cond.end573.1:                                    ; preds = %cond.true533.1, %if.else529.1
  %cond574.1 = phi i32 [ 0, %if.else529.1 ], [ %spec.select885, %cond.true533.1 ], !dbg !1455
    #dbg_value(i32 %cond574.1, !1275, !DIExpression(), !1285)
  %100 = load i32, ptr %arrayidx439, align 4, !dbg !1462
  %tobool577.not.1 = icmp eq i32 %100, 0, !dbg !1463
  br i1 %tobool577.not.1, label %cond.end618.1, label %cond.true578.1, !dbg !1463

cond.true578.1:                                   ; preds = %cond.end573.1
  %101 = load ptr, ptr %mb_data400, align 8, !dbg !1464
  %102 = load i32, ptr %mb_addr445, align 4, !dbg !1465
  %idxprom582.1 = sext i32 %102 to i64, !dbg !1466
  %mb_field584.1 = getelementptr inbounds %struct.macroblock, ptr %101, i64 %idxprom582.1, i32 45, !dbg !1467
  %103 = load i32, ptr %mb_field584.1, align 8, !dbg !1467
  %tobool585.not.1 = icmp ne i32 %103, 0, !dbg !1466
  %104 = load i16, ptr %pos_y452, align 2, !dbg !1461
  %idxprom604.1 = sext i16 %104 to i64, !dbg !1461
  %arrayidx605.1 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom604.1, !dbg !1461
  %105 = load ptr, ptr %arrayidx605.1, align 8, !dbg !1461
  %106 = load i16, ptr %pos_x456, align 4, !dbg !1461
  %idxprom608.1 = sext i16 %106 to i64, !dbg !1461
  %mv_y613.1 = getelementptr inbounds %struct.pic_motion_params, ptr %105, i64 %idxprom608.1, i32 1, i64 %idxprom417, i32 1, !dbg !1461
  %107 = load i16, ptr %mv_y613.1, align 2, !dbg !1461
  %conv614.1 = sext i16 %107 to i32, !dbg !1461
  %mul600.1 = zext i1 %tobool585.not.1 to i32, !dbg !1466
  %spec.select886 = shl nsw i32 %conv614.1, %mul600.1, !dbg !1466
  br label %cond.end618.1, !dbg !1466

cond.end618.1:                                    ; preds = %cond.true578.1, %cond.end573.1
  %cond619.1 = phi i32 [ 0, %cond.end573.1 ], [ %spec.select886, %cond.true578.1 ], !dbg !1463
    #dbg_value(i32 %cond619.1, !1276, !DIExpression(), !1285)
  %108 = load i32, ptr %arrayidx484, align 4, !dbg !1468
  %tobool622.not.1 = icmp eq i32 %108, 0, !dbg !1469
  br i1 %tobool622.not.1, label %if.end666.1, label %cond.true623.1, !dbg !1469

cond.true623.1:                                   ; preds = %cond.end618.1
  %109 = load ptr, ptr %mb_data400, align 8, !dbg !1470
  %110 = load i32, ptr %mb_addr490, align 4, !dbg !1471
  %idxprom627.1 = sext i32 %110 to i64, !dbg !1472
  %mb_field629.1 = getelementptr inbounds %struct.macroblock, ptr %109, i64 %idxprom627.1, i32 45, !dbg !1473
  %111 = load i32, ptr %mb_field629.1, align 8, !dbg !1473
  %tobool630.not.1 = icmp ne i32 %111, 0, !dbg !1472
  %112 = load i16, ptr %pos_y497, align 2, !dbg !1461
  %idxprom649.1 = sext i16 %112 to i64, !dbg !1461
  %arrayidx650.1 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom649.1, !dbg !1461
  %113 = load ptr, ptr %arrayidx650.1, align 8, !dbg !1461
  %114 = load i16, ptr %pos_x501, align 4, !dbg !1461
  %idxprom653.1 = sext i16 %114 to i64, !dbg !1461
  %mv_y658.1 = getelementptr inbounds %struct.pic_motion_params, ptr %113, i64 %idxprom653.1, i32 1, i64 %idxprom417, i32 1, !dbg !1461
  %115 = load i16, ptr %mv_y658.1, align 2, !dbg !1461
  %conv659.1 = sext i16 %115 to i32, !dbg !1461
  %mul645.1 = zext i1 %tobool630.not.1 to i32, !dbg !1472
  %spec.select887 = shl nsw i32 %conv659.1, %mul645.1, !dbg !1472
  br label %if.end666.1, !dbg !1472

if.end666.1:                                      ; preds = %cond.true623.1, %cond.end618.1, %cond.false509.1, %cond.true495.1, %cond.end482.1
  %tobool672.not.1.not = phi i1 [ false, %cond.end482.1 ], [ true, %cond.true495.1 ], [ true, %cond.false509.1 ], [ false, %cond.end618.1 ], [ true, %cond.true623.1 ]
  %116 = phi i32 [ %75, %cond.end482.1 ], [ %75, %cond.true495.1 ], [ %75, %cond.false509.1 ], [ %100, %cond.end618.1 ], [ %100, %cond.true623.1 ]
  %mv_b.0.1 = phi i32 [ %cond483.1, %cond.end482.1 ], [ %cond483.1, %cond.true495.1 ], [ %cond483.1, %cond.false509.1 ], [ %cond619.1, %cond.end618.1 ], [ %cond619.1, %cond.true623.1 ], !dbg !1387
  %mv_c.0.1 = phi i32 [ 0, %cond.end482.1 ], [ %conv508.1, %cond.true495.1 ], [ %div523.1, %cond.false509.1 ], [ 0, %cond.end618.1 ], [ %spec.select887, %cond.true623.1 ], !dbg !1387
  %mv_a.0.1 = phi i32 [ %cond438.1, %cond.end482.1 ], [ %cond438.1, %cond.true495.1 ], [ %cond438.1, %cond.false509.1 ], [ %cond574.1, %cond.end618.1 ], [ %cond574.1, %cond.true623.1 ], !dbg !1387
    #dbg_value(i32 %mv_a.0.1, !1275, !DIExpression(), !1285)
    #dbg_value(i32 %mv_c.0.1, !1277, !DIExpression(), !1285)
    #dbg_value(i32 %mv_b.0.1, !1276, !DIExpression(), !1285)
  switch i32 %mvPredType.1, label %default.unreachable879 [
    i32 0, label %sw.bb.1
    i32 1, label %for.inc.1
    i32 2, label %sw.bb677.1
    i32 3, label %sw.bb678.1
  ], !dbg !1388

sw.bb678.1:                                       ; preds = %if.end666.1
    #dbg_value(i32 %mv_c.0.1, !1278, !DIExpression(), !1285)
  br label %for.inc.1, !dbg !1420

sw.bb677.1:                                       ; preds = %if.end666.1
    #dbg_value(i32 %mv_b.0.1, !1278, !DIExpression(), !1285)
  br label %for.inc.1, !dbg !1419

sw.bb.1:                                          ; preds = %if.end666.1
  %tobool669.not.1 = icmp ne i32 %116, 0, !dbg !1389
  %brmerge881 = or i1 %tobool669.not.1, %tobool672.not.1.not, !dbg !1392
  br i1 %brmerge881, label %if.else674.1, label %for.inc.1, !dbg !1392

if.else674.1:                                     ; preds = %sw.bb.1
    #dbg_value(i32 %mv_a.0.1, !1393, !DIExpression(), !1401)
    #dbg_value(i32 %mv_b.0.1, !1399, !DIExpression(), !1401)
    #dbg_value(i32 %mv_c.0.1, !1400, !DIExpression(), !1401)
  %cmp.i.1 = icmp sgt i32 %mv_a.0.1, %mv_b.0.1, !dbg !1404
  br i1 %cmp.i.1, label %if.then.i.1, label %if.else6.i.1, !dbg !1406

if.else6.i.1:                                     ; preds = %if.else674.1
  %cmp7.i.1 = icmp sgt i32 %mv_a.0.1, %mv_c.0.1, !dbg !1413
  br i1 %cmp7.i.1, label %for.inc.1, label %if.else9.i.1, !dbg !1416

if.else9.i.1:                                     ; preds = %if.else6.i.1
  %c.b.i.1 = tail call i32 @llvm.smin.i32(i32 %mv_b.0.1, i32 %mv_c.0.1), !dbg !1417
  br label %for.inc.1, !dbg !1417

if.then.i.1:                                      ; preds = %if.else674.1
  %cmp1.i.1 = icmp sgt i32 %mv_b.0.1, %mv_c.0.1, !dbg !1407
  br i1 %cmp1.i.1, label %for.inc.1, label %if.else.i.1, !dbg !1410

if.else.i.1:                                      ; preds = %if.then.i.1
  %c.a.i.1 = tail call i32 @llvm.smin.i32(i32 %mv_a.0.1, i32 %mv_c.0.1), !dbg !1411
  br label %for.inc.1, !dbg !1411

for.inc.1:                                        ; preds = %sw.bb.1, %if.else.i.1, %if.then.i.1, %if.else9.i.1, %if.else6.i.1, %sw.bb677.1, %sw.bb678.1, %if.end666.1
  %pred_vec.1.1 = phi i32 [ %mv_c.0.1, %sw.bb678.1 ], [ %mv_b.0.1, %sw.bb677.1 ], [ %mv_a.0.1, %if.end666.1 ], [ %mv_b.0.1, %if.then.i.1 ], [ %c.a.i.1, %if.else.i.1 ], [ %mv_a.0.1, %if.else6.i.1 ], [ %c.b.i.1, %if.else9.i.1 ], [ %mv_a.0.1, %sw.bb.1 ], !dbg !1285
  %mv_y686 = getelementptr inbounds i8, ptr %pmv, i64 2
    #dbg_value(i32 %pred_vec.1.1, !1278, !DIExpression(), !1285)
  %conv685.1 = trunc i32 %pred_vec.1.1 to i16, !dbg !1474
  store i16 %conv685.1, ptr %mv_y686, align 2, !dbg !1475
    #dbg_value(i32 2, !1283, !DIExpression(), !1285)
    #dbg_value(i32 poison, !1278, !DIExpression(), !1285)
  ret void, !dbg !1476
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @GetMotionVectorPredictorNormal(ptr nocapture readnone %currMB, ptr nocapture noundef readonly %block, ptr nocapture noundef writeonly %pmv, i16 noundef signext %ref_frame, ptr nocapture noundef readonly %mv_info, i32 noundef %list, i32 noundef %mb_x, i32 noundef %mb_y, i32 noundef %blockshape_x, i32 noundef %blockshape_y) #1 !dbg !1477 {
entry:
    #dbg_value(ptr poison, !1479, !DIExpression(), !1499)
    #dbg_value(ptr %block, !1480, !DIExpression(), !1499)
    #dbg_value(ptr %pmv, !1481, !DIExpression(), !1499)
    #dbg_value(i16 %ref_frame, !1482, !DIExpression(), !1499)
    #dbg_value(ptr %mv_info, !1483, !DIExpression(), !1499)
    #dbg_value(i32 %list, !1484, !DIExpression(), !1499)
    #dbg_value(i32 %mb_x, !1485, !DIExpression(), !1499)
    #dbg_value(i32 %mb_y, !1486, !DIExpression(), !1499)
    #dbg_value(i32 %blockshape_x, !1487, !DIExpression(), !1499)
    #dbg_value(i32 %blockshape_y, !1488, !DIExpression(), !1499)
    #dbg_value(i32 0, !1489, !DIExpression(), !1499)
  %0 = load i32, ptr %block, align 4, !dbg !1500
  %tobool.not = icmp eq i32 %0, 0, !dbg !1501
  br i1 %tobool.not, label %cond.end, label %cond.true, !dbg !1501

cond.true:                                        ; preds = %entry
  %pos_y = getelementptr inbounds i8, ptr %block, i64 14, !dbg !1502
  %1 = load i16, ptr %pos_y, align 2, !dbg !1502
  %idxprom = sext i16 %1 to i64, !dbg !1503
  %arrayidx2 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom, !dbg !1503
  %2 = load ptr, ptr %arrayidx2, align 8, !dbg !1503
  %pos_x = getelementptr inbounds i8, ptr %block, i64 12, !dbg !1504
  %3 = load i16, ptr %pos_x, align 4, !dbg !1504
  %idxprom4 = sext i16 %3 to i64, !dbg !1503
  %idxprom6 = sext i32 %list to i64, !dbg !1503
  %arrayidx7 = getelementptr inbounds %struct.pic_motion_params, ptr %2, i64 %idxprom4, i32 2, i64 %idxprom6, !dbg !1503
  %4 = load i8, ptr %arrayidx7, align 1, !dbg !1503
  %conv = sext i8 %4 to i32, !dbg !1503
  br label %cond.end, !dbg !1501

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ -1, %entry ], !dbg !1501
    #dbg_value(i32 %cond, !1490, !DIExpression(), !1499)
  %arrayidx8 = getelementptr inbounds i8, ptr %block, i64 16, !dbg !1505
  %5 = load i32, ptr %arrayidx8, align 4, !dbg !1506
  %tobool10.not.not = icmp eq i32 %5, 0, !dbg !1505
  br i1 %tobool10.not.not, label %cond.end25, label %cond.true11, !dbg !1505

cond.true11:                                      ; preds = %cond.end
  %pos_y13 = getelementptr inbounds i8, ptr %block, i64 30, !dbg !1507
  %6 = load i16, ptr %pos_y13, align 2, !dbg !1507
  %idxprom14 = sext i16 %6 to i64, !dbg !1508
  %arrayidx15 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom14, !dbg !1508
  %7 = load ptr, ptr %arrayidx15, align 8, !dbg !1508
  %pos_x17 = getelementptr inbounds i8, ptr %block, i64 28, !dbg !1509
  %8 = load i16, ptr %pos_x17, align 4, !dbg !1509
  %idxprom18 = sext i16 %8 to i64, !dbg !1508
  %idxprom21 = sext i32 %list to i64, !dbg !1508
  %arrayidx22 = getelementptr inbounds %struct.pic_motion_params, ptr %7, i64 %idxprom18, i32 2, i64 %idxprom21, !dbg !1508
  %9 = load i8, ptr %arrayidx22, align 1, !dbg !1508
  %conv23 = sext i8 %9 to i32, !dbg !1508
  br label %cond.end25, !dbg !1505

cond.end25:                                       ; preds = %cond.end, %cond.true11
  %cond26 = phi i32 [ %conv23, %cond.true11 ], [ -1, %cond.end ], !dbg !1505
    #dbg_value(i32 %cond26, !1491, !DIExpression(), !1499)
  %arrayidx27 = getelementptr inbounds i8, ptr %block, i64 32, !dbg !1510
  %10 = load i32, ptr %arrayidx27, align 4, !dbg !1511
  %tobool29.not.not = icmp eq i32 %10, 0, !dbg !1510
  br i1 %tobool29.not.not, label %cond.end44, label %cond.true30, !dbg !1510

cond.true30:                                      ; preds = %cond.end25
  %pos_y32 = getelementptr inbounds i8, ptr %block, i64 46, !dbg !1512
  %11 = load i16, ptr %pos_y32, align 2, !dbg !1512
  %idxprom33 = sext i16 %11 to i64, !dbg !1513
  %arrayidx34 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom33, !dbg !1513
  %12 = load ptr, ptr %arrayidx34, align 8, !dbg !1513
  %pos_x36 = getelementptr inbounds i8, ptr %block, i64 44, !dbg !1514
  %13 = load i16, ptr %pos_x36, align 4, !dbg !1514
  %idxprom37 = sext i16 %13 to i64, !dbg !1513
  %idxprom40 = sext i32 %list to i64, !dbg !1513
  %arrayidx41 = getelementptr inbounds %struct.pic_motion_params, ptr %12, i64 %idxprom37, i32 2, i64 %idxprom40, !dbg !1513
  %14 = load i8, ptr %arrayidx41, align 1, !dbg !1513
  %conv42 = sext i8 %14 to i32, !dbg !1513
  br label %cond.end44, !dbg !1510

cond.end44:                                       ; preds = %cond.end25, %cond.true30
  %cond45 = phi i32 [ %conv42, %cond.true30 ], [ -1, %cond.end25 ], !dbg !1510
    #dbg_value(i32 %cond45, !1492, !DIExpression(), !1499)
  %conv46 = sext i16 %ref_frame to i32, !dbg !1515
  %cmp = icmp eq i32 %cond, %conv46, !dbg !1517
  %cmp.not = xor i1 %cmp, true, !dbg !1518
  %cmp49.not = icmp eq i32 %cond26, %conv46
  %or.cond361 = select i1 %cmp.not, i1 true, i1 %cmp49.not, !dbg !1518
  %cmp53.not = icmp eq i32 %cond45, %conv46
  %or.cond362 = select i1 %or.cond361, i1 true, i1 %cmp53.not, !dbg !1518
  br i1 %or.cond362, label %if.else, label %if.end81, !dbg !1518

if.else:                                          ; preds = %cond.end44
  %cmp49.not.not = xor i1 %cmp49.not, true, !dbg !1519
  %or.cond363.not = select i1 %cmp, i1 true, i1 %cmp49.not.not, !dbg !1519
  %or.cond364 = select i1 %or.cond363.not, i1 true, i1 %cmp53.not, !dbg !1519
  %or.cond364.not = xor i1 %or.cond364, true, !dbg !1519
  %brmerge = or i1 %cmp, %or.cond364.not, !dbg !1519
  %.mux = select i1 %or.cond364, i32 0, i32 2, !dbg !1519
  br i1 %brmerge, label %if.end81, label %land.lhs.true71, !dbg !1519

land.lhs.true71:                                  ; preds = %if.else
  %cmp73.not = icmp ne i32 %cond26, %conv46, !dbg !1521
  %or.cond365 = select i1 %cmp73.not, i1 %cmp53.not, i1 false, !dbg !1523
  %spec.select369 = select i1 %or.cond365, i32 3, i32 0, !dbg !1523
  br label %if.end81, !dbg !1523

if.end81:                                         ; preds = %land.lhs.true71, %if.else, %cond.end44
  %mvPredType.0 = phi i32 [ 1, %cond.end44 ], [ %.mux, %if.else ], [ %spec.select369, %land.lhs.true71 ], !dbg !1499
    #dbg_value(i32 %mvPredType.0, !1489, !DIExpression(), !1499)
  %cmp82 = icmp eq i32 %blockshape_x, 8, !dbg !1524
  %cmp85 = icmp eq i32 %blockshape_y, 16
  %or.cond = and i1 %cmp82, %cmp85, !dbg !1526
  br i1 %or.cond, label %if.then87, label %if.else103, !dbg !1526

if.then87:                                        ; preds = %if.end81
  %cmp88 = icmp eq i32 %mb_x, 0, !dbg !1527
  br i1 %cmp88, label %if.then90, label %if.else96, !dbg !1530

if.then90:                                        ; preds = %if.then87
  br i1 %cmp, label %sw.bb221, label %if.end126, !dbg !1531

if.else96:                                        ; preds = %if.then87
  br i1 %cmp53.not, label %sw.bb257, label %if.end126, !dbg !1533

if.else103:                                       ; preds = %if.end81
  %cmp104 = icmp eq i32 %blockshape_x, 16, !dbg !1535
  %cmp107 = icmp eq i32 %blockshape_y, 8
  %or.cond275 = and i1 %cmp104, %cmp107, !dbg !1537
  br i1 %or.cond275, label %if.then109, label %if.end126, !dbg !1537

if.then109:                                       ; preds = %if.else103
  %cmp110 = icmp eq i32 %mb_y, 0, !dbg !1538
  br i1 %cmp110, label %if.then112, label %if.else118, !dbg !1541

if.then112:                                       ; preds = %if.then109
  br i1 %cmp49.not, label %sw.bb239, label %if.end126, !dbg !1542

if.else118:                                       ; preds = %if.then109
  br i1 %cmp, label %sw.bb221, label %if.end126, !dbg !1544

if.end126:                                        ; preds = %if.else118, %if.then112, %if.else96, %if.then90, %if.else103
    #dbg_value(i32 %mvPredType.0, !1489, !DIExpression(), !1499)
  switch i32 %mvPredType.0, label %default.unreachable390 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb221
    i32 2, label %sw.bb239
    i32 3, label %sw.bb257
  ], !dbg !1546

sw.bb:                                            ; preds = %if.end126
  %15 = or i32 %10, %5, !dbg !1547
  %brmerge389.not = icmp eq i32 %15, 0, !dbg !1547
  br i1 %brmerge389.not, label %if.then133, label %if.else150, !dbg !1547

if.then133:                                       ; preds = %sw.bb
  br i1 %tobool.not, label %if.else148, label %if.then137, !dbg !1548

if.then137:                                       ; preds = %if.then133
  %pos_y139 = getelementptr inbounds i8, ptr %block, i64 14, !dbg !1550
  %16 = load i16, ptr %pos_y139, align 2, !dbg !1550
  %idxprom140 = sext i16 %16 to i64, !dbg !1553
  %arrayidx141 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom140, !dbg !1553
  %17 = load ptr, ptr %arrayidx141, align 8, !dbg !1553
  %pos_x143 = getelementptr inbounds i8, ptr %block, i64 12, !dbg !1554
  %18 = load i16, ptr %pos_x143, align 4, !dbg !1554
  %idxprom144 = sext i16 %18 to i64, !dbg !1553
  %idxprom146 = sext i32 %list to i64, !dbg !1553
  %arrayidx147 = getelementptr inbounds %struct.pic_motion_params, ptr %17, i64 %idxprom144, i32 1, i64 %idxprom146, !dbg !1553
  %19 = load i32, ptr %arrayidx147, align 4, !dbg !1553
  store i32 %19, ptr %pmv, align 2, !dbg !1553
  br label %sw.epilog, !dbg !1555

if.else148:                                       ; preds = %if.then133
  store i32 0, ptr %pmv, align 2, !dbg !1556
  br label %sw.epilog

if.else150:                                       ; preds = %sw.bb
  br i1 %tobool.not, label %cond.end167, label %cond.true154, !dbg !1558

cond.true154:                                     ; preds = %if.else150
  %pos_y156 = getelementptr inbounds i8, ptr %block, i64 14, !dbg !1559
  %20 = load i16, ptr %pos_y156, align 2, !dbg !1559
  %idxprom157 = sext i16 %20 to i64, !dbg !1560
  %arrayidx158 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom157, !dbg !1560
  %21 = load ptr, ptr %arrayidx158, align 8, !dbg !1560
  %pos_x160 = getelementptr inbounds i8, ptr %block, i64 12, !dbg !1561
  %22 = load i16, ptr %pos_x160, align 4, !dbg !1561
  %idxprom161 = sext i16 %22 to i64, !dbg !1560
  %idxprom164 = sext i32 %list to i64, !dbg !1560
  %arrayidx165 = getelementptr inbounds %struct.pic_motion_params, ptr %21, i64 %idxprom161, i32 1, i64 %idxprom164, !dbg !1560
  br label %cond.end167, !dbg !1558

cond.end167:                                      ; preds = %if.else150, %cond.true154
  %cond168 = phi ptr [ %arrayidx165, %cond.true154 ], [ @zero_mv, %if.else150 ], !dbg !1558
    #dbg_value(ptr %cond168, !1493, !DIExpression(), !1562)
  br i1 %tobool10.not.not, label %cond.end185, label %cond.true172, !dbg !1563

cond.true172:                                     ; preds = %cond.end167
  %pos_y174 = getelementptr inbounds i8, ptr %block, i64 30, !dbg !1564
  %23 = load i16, ptr %pos_y174, align 2, !dbg !1564
  %idxprom175 = sext i16 %23 to i64, !dbg !1565
  %arrayidx176 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom175, !dbg !1565
  %24 = load ptr, ptr %arrayidx176, align 8, !dbg !1565
  %pos_x178 = getelementptr inbounds i8, ptr %block, i64 28, !dbg !1566
  %25 = load i16, ptr %pos_x178, align 4, !dbg !1566
  %idxprom179 = sext i16 %25 to i64, !dbg !1565
  %idxprom182 = sext i32 %list to i64, !dbg !1565
  %arrayidx183 = getelementptr inbounds %struct.pic_motion_params, ptr %24, i64 %idxprom179, i32 1, i64 %idxprom182, !dbg !1565
  br label %cond.end185, !dbg !1563

cond.end185:                                      ; preds = %cond.end167, %cond.true172
  %cond186 = phi ptr [ %arrayidx183, %cond.true172 ], [ @zero_mv, %cond.end167 ], !dbg !1563
    #dbg_value(ptr %cond186, !1497, !DIExpression(), !1562)
  br i1 %tobool29.not.not, label %cond.end203, label %cond.true190, !dbg !1567

cond.true190:                                     ; preds = %cond.end185
  %pos_y192 = getelementptr inbounds i8, ptr %block, i64 46, !dbg !1568
  %26 = load i16, ptr %pos_y192, align 2, !dbg !1568
  %idxprom193 = sext i16 %26 to i64, !dbg !1569
  %arrayidx194 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom193, !dbg !1569
  %27 = load ptr, ptr %arrayidx194, align 8, !dbg !1569
  %pos_x196 = getelementptr inbounds i8, ptr %block, i64 44, !dbg !1570
  %28 = load i16, ptr %pos_x196, align 4, !dbg !1570
  %idxprom197 = sext i16 %28 to i64, !dbg !1569
  %idxprom200 = sext i32 %list to i64, !dbg !1569
  %arrayidx201 = getelementptr inbounds %struct.pic_motion_params, ptr %27, i64 %idxprom197, i32 1, i64 %idxprom200, !dbg !1569
  br label %cond.end203, !dbg !1567

cond.end203:                                      ; preds = %cond.end185, %cond.true190
  %cond204 = phi ptr [ %arrayidx201, %cond.true190 ], [ @zero_mv, %cond.end185 ], !dbg !1567
    #dbg_value(ptr %cond204, !1498, !DIExpression(), !1562)
  %29 = load i16, ptr %cond168, align 2, !dbg !1571
  %conv205 = sext i16 %29 to i32, !dbg !1572
  %30 = load i16, ptr %cond186, align 2, !dbg !1573
  %conv207 = sext i16 %30 to i32, !dbg !1574
  %31 = load i16, ptr %cond204, align 2, !dbg !1575
  %conv209 = sext i16 %31 to i32, !dbg !1576
    #dbg_value(i32 %conv205, !1393, !DIExpression(), !1577)
    #dbg_value(i32 %conv207, !1399, !DIExpression(), !1577)
    #dbg_value(i32 %conv209, !1400, !DIExpression(), !1577)
  %cmp.i = icmp sgt i16 %29, %30, !dbg !1579
  br i1 %cmp.i, label %if.then.i, label %if.else6.i, !dbg !1580

if.then.i:                                        ; preds = %cond.end203
  %cmp1.i = icmp sgt i16 %30, %31, !dbg !1581
  br i1 %cmp1.i, label %imedian.exit, label %if.else.i, !dbg !1582

if.else.i:                                        ; preds = %if.then.i
  %c.a.i = tail call i32 @llvm.smin.i32(i32 %conv205, i32 %conv209), !dbg !1583
  br label %imedian.exit, !dbg !1583

if.else6.i:                                       ; preds = %cond.end203
  %cmp7.i = icmp sgt i16 %29, %31, !dbg !1584
  br i1 %cmp7.i, label %imedian.exit, label %if.else9.i, !dbg !1585

if.else9.i:                                       ; preds = %if.else6.i
  %c.b.i = tail call i32 @llvm.smin.i32(i32 %conv207, i32 %conv209), !dbg !1586
  br label %imedian.exit, !dbg !1586

imedian.exit:                                     ; preds = %if.then.i, %if.else.i, %if.else6.i, %if.else9.i
  %retval.0.i = phi i32 [ %conv207, %if.then.i ], [ %c.a.i, %if.else.i ], [ %conv205, %if.else6.i ], [ %c.b.i, %if.else9.i ], !dbg !1587
  %conv210 = trunc nsw i32 %retval.0.i to i16, !dbg !1588
  store i16 %conv210, ptr %pmv, align 2, !dbg !1589
  %mv_y = getelementptr inbounds i8, ptr %cond168, i64 2, !dbg !1590
  %32 = load i16, ptr %mv_y, align 2, !dbg !1590
  %conv212 = sext i16 %32 to i32, !dbg !1591
  %mv_y213 = getelementptr inbounds i8, ptr %cond186, i64 2, !dbg !1592
  %33 = load i16, ptr %mv_y213, align 2, !dbg !1592
  %conv214 = sext i16 %33 to i32, !dbg !1593
  %mv_y215 = getelementptr inbounds i8, ptr %cond204, i64 2, !dbg !1594
  %34 = load i16, ptr %mv_y215, align 2, !dbg !1594
  %conv216 = sext i16 %34 to i32, !dbg !1595
    #dbg_value(i32 %conv212, !1393, !DIExpression(), !1596)
    #dbg_value(i32 %conv214, !1399, !DIExpression(), !1596)
    #dbg_value(i32 %conv216, !1400, !DIExpression(), !1596)
  %cmp.i370 = icmp sgt i16 %32, %33, !dbg !1598
  br i1 %cmp.i370, label %if.then.i376, label %if.else6.i371, !dbg !1599

if.then.i376:                                     ; preds = %imedian.exit
  %cmp1.i377 = icmp sgt i16 %33, %34, !dbg !1600
  br i1 %cmp1.i377, label %imedian.exit380, label %if.else.i378, !dbg !1601

if.else.i378:                                     ; preds = %if.then.i376
  %c.a.i379 = tail call i32 @llvm.smin.i32(i32 %conv212, i32 %conv216), !dbg !1602
  br label %imedian.exit380, !dbg !1602

if.else6.i371:                                    ; preds = %imedian.exit
  %cmp7.i372 = icmp sgt i16 %32, %34, !dbg !1603
  br i1 %cmp7.i372, label %imedian.exit380, label %if.else9.i373, !dbg !1604

if.else9.i373:                                    ; preds = %if.else6.i371
  %c.b.i374 = tail call i32 @llvm.smin.i32(i32 %conv214, i32 %conv216), !dbg !1605
  br label %imedian.exit380, !dbg !1605

imedian.exit380:                                  ; preds = %if.then.i376, %if.else.i378, %if.else6.i371, %if.else9.i373
  %retval.0.i375 = phi i32 [ %conv214, %if.then.i376 ], [ %c.a.i379, %if.else.i378 ], [ %conv212, %if.else6.i371 ], [ %c.b.i374, %if.else9.i373 ], !dbg !1606
  %conv218 = trunc nsw i32 %retval.0.i375 to i16, !dbg !1607
  %mv_y219 = getelementptr inbounds i8, ptr %pmv, i64 2, !dbg !1608
  store i16 %conv218, ptr %mv_y219, align 2, !dbg !1609
  br label %sw.epilog

sw.bb221:                                         ; preds = %if.else118, %if.then90, %if.end126
  br i1 %tobool.not, label %if.else237, label %if.then225, !dbg !1610

if.then225:                                       ; preds = %sw.bb221
  %pos_y227 = getelementptr inbounds i8, ptr %block, i64 14, !dbg !1611
  %35 = load i16, ptr %pos_y227, align 2, !dbg !1611
  %idxprom228 = sext i16 %35 to i64, !dbg !1614
  %arrayidx229 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom228, !dbg !1614
  %36 = load ptr, ptr %arrayidx229, align 8, !dbg !1614
  %pos_x231 = getelementptr inbounds i8, ptr %block, i64 12, !dbg !1615
  %37 = load i16, ptr %pos_x231, align 4, !dbg !1615
  %idxprom232 = sext i16 %37 to i64, !dbg !1614
  %idxprom235 = sext i32 %list to i64, !dbg !1614
  %arrayidx236 = getelementptr inbounds %struct.pic_motion_params, ptr %36, i64 %idxprom232, i32 1, i64 %idxprom235, !dbg !1614
  %38 = load i32, ptr %arrayidx236, align 4, !dbg !1614
  store i32 %38, ptr %pmv, align 2, !dbg !1614
  br label %sw.epilog, !dbg !1616

if.else237:                                       ; preds = %sw.bb221
  store i32 0, ptr %pmv, align 2, !dbg !1617
  br label %sw.epilog

sw.bb239:                                         ; preds = %if.then112, %if.end126
  br i1 %tobool10.not.not, label %if.else255, label %if.then243, !dbg !1619

if.then243:                                       ; preds = %sw.bb239
  %pos_y245 = getelementptr inbounds i8, ptr %block, i64 30, !dbg !1620
  %39 = load i16, ptr %pos_y245, align 2, !dbg !1620
  %idxprom246 = sext i16 %39 to i64, !dbg !1623
  %arrayidx247 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom246, !dbg !1623
  %40 = load ptr, ptr %arrayidx247, align 8, !dbg !1623
  %pos_x249 = getelementptr inbounds i8, ptr %block, i64 28, !dbg !1624
  %41 = load i16, ptr %pos_x249, align 4, !dbg !1624
  %idxprom250 = sext i16 %41 to i64, !dbg !1623
  %idxprom253 = sext i32 %list to i64, !dbg !1623
  %arrayidx254 = getelementptr inbounds %struct.pic_motion_params, ptr %40, i64 %idxprom250, i32 1, i64 %idxprom253, !dbg !1623
  %42 = load i32, ptr %arrayidx254, align 4, !dbg !1623
  store i32 %42, ptr %pmv, align 2, !dbg !1623
  br label %sw.epilog, !dbg !1625

if.else255:                                       ; preds = %sw.bb239
  store i32 0, ptr %pmv, align 2, !dbg !1626
  br label %sw.epilog

sw.bb257:                                         ; preds = %if.else96, %if.end126
  br i1 %tobool29.not.not, label %if.else273, label %if.then261, !dbg !1628

if.then261:                                       ; preds = %sw.bb257
  %pos_y263 = getelementptr inbounds i8, ptr %block, i64 46, !dbg !1629
  %43 = load i16, ptr %pos_y263, align 2, !dbg !1629
  %idxprom264 = sext i16 %43 to i64, !dbg !1632
  %arrayidx265 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom264, !dbg !1632
  %44 = load ptr, ptr %arrayidx265, align 8, !dbg !1632
  %pos_x267 = getelementptr inbounds i8, ptr %block, i64 44, !dbg !1633
  %45 = load i16, ptr %pos_x267, align 4, !dbg !1633
  %idxprom268 = sext i16 %45 to i64, !dbg !1632
  %idxprom271 = sext i32 %list to i64, !dbg !1632
  %arrayidx272 = getelementptr inbounds %struct.pic_motion_params, ptr %44, i64 %idxprom268, i32 1, i64 %idxprom271, !dbg !1632
  %46 = load i32, ptr %arrayidx272, align 4, !dbg !1632
  store i32 %46, ptr %pmv, align 2, !dbg !1632
  br label %sw.epilog, !dbg !1634

if.else273:                                       ; preds = %sw.bb257
  store i32 0, ptr %pmv, align 2, !dbg !1635
  br label %sw.epilog

default.unreachable390:                           ; preds = %if.end126
  unreachable

sw.epilog:                                        ; preds = %if.then261, %if.else273, %if.then243, %if.else255, %if.then225, %if.else237, %imedian.exit380, %if.else148, %if.then137
  ret void, !dbg !1637
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "zero_mv", scope: !2, file: !55, line: 106, type: !61, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !51, globals: !60, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "ldecod_src/mv_prediction.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "14776f2ec3937b5cafc4138a85bb23c5")
!4 = !{!5, !14, !20, !29, !36, !44}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 22, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "ldecod_src/inc/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "fd6ca9e1c707932f749220576db72b57")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "CF_UNKNOWN", value: -1)
!10 = !DIEnumerator(name: "YUV400", value: 0)
!11 = !DIEnumerator(name: "YUV420", value: 1)
!12 = !DIEnumerator(name: "YUV422", value: 2)
!13 = !DIEnumerator(name: "YUV444", value: 3)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 15, baseType: !7, size: 32, elements: !15)
!15 = !{!16, !17, !18, !19}
!16 = !DIEnumerator(name: "CM_UNKNOWN", value: -1)
!17 = !DIEnumerator(name: "CM_YUV", value: 0)
!18 = !DIEnumerator(name: "CM_RGB", value: 1)
!19 = !DIEnumerator(name: "CM_XYZ", value: 2)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 25, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "ldecod_src/inc/io_video.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1141c07f1801ad27d87214c419749431")
!22 = !{!23, !24, !25, !26, !27, !28}
!23 = !DIEnumerator(name: "VIDEO_UNKNOWN", value: -1)
!24 = !DIEnumerator(name: "VIDEO_YUV", value: 0)
!25 = !DIEnumerator(name: "VIDEO_RGB", value: 1)
!26 = !DIEnumerator(name: "VIDEO_XYZ", value: 2)
!27 = !DIEnumerator(name: "VIDEO_TIFF", value: 3)
!28 = !DIEnumerator(name: "VIDEO_AVI", value: 4)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 135, baseType: !31, size: 32, elements: !32)
!30 = !DIFile(filename: "ldecod_src/inc/types.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "64f87bd13f2911471c7313b4ac17e90c")
!31 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!32 = !{!33, !34, !35}
!33 = !DIEnumerator(name: "FRAME", value: 0)
!34 = !DIEnumerator(name: "TOP_FIELD", value: 1)
!35 = !DIEnumerator(name: "BOTTOM_FIELD", value: 2)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 22, baseType: !31, size: 32, elements: !37)
!37 = !{!38, !39, !40, !41, !42, !43}
!38 = !DIEnumerator(name: "PLANE_Y", value: 0)
!39 = !DIEnumerator(name: "PLANE_U", value: 1)
!40 = !DIEnumerator(name: "PLANE_V", value: 2)
!41 = !DIEnumerator(name: "PLANE_G", value: 0)
!42 = !DIEnumerator(name: "PLANE_B", value: 1)
!43 = !DIEnumerator(name: "PLANE_R", value: 2)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 239, baseType: !31, size: 32, elements: !46)
!45 = !DIFile(filename: "ldecod_src/inc/defines.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "f06de374c735b286d10ba4ea0c8c0a5d")
!46 = !{!47, !48, !49, !50}
!47 = !DIEnumerator(name: "MVPRED_MEDIAN", value: 0)
!48 = !DIEnumerator(name: "MVPRED_L", value: 1)
!49 = !DIEnumerator(name: "MVPRED_U", value: 2)
!50 = !DIEnumerator(name: "MVPRED_UR", value: 3)
!51 = !{!52, !53}
!52 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionVector", file: !55, line: 104, baseType: !56)
!55 = !DIFile(filename: "ldecod_src/inc/global.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c4ca3c417c5616a2ff6b6266e7376fc1")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !55, line: 100, size: 32, elements: !57)
!57 = !{!58, !59}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "mv_x", scope: !56, file: !55, line: 102, baseType: !52, size: 16)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "mv_y", scope: !56, file: !55, line: 103, baseType: !52, size: 16, offset: 16)
!60 = !{!0}
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!62 = !{i32 7, !"Dwarf Version", i32 5}
!63 = !{i32 2, !"Debug Info Version", i32 3}
!64 = !{i32 1, !"wchar_size", i32 4}
!65 = !{i32 8, !"PIC Level", i32 2}
!66 = !{i32 7, !"PIE Level", i32 2}
!67 = !{i32 7, !"uwtable", i32 2}
!68 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!69 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!70 = distinct !DISubprogram(name: "init_motion_vector_prediction", scope: !3, file: !3, line: 306, type: !71, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1249)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !73, !7}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "Macroblock", file: !55, line: 273, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "macroblock", file: !55, line: 197, size: 3840, elements: !76)
!76 = !{!77, !1166, !1167, !1168, !1169, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1198, !1199, !1200, !1201, !1202, !1205, !1206, !1208, !1209, !1210, !1211, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1235, !1236, !1240, !1244, !1248}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "p_Slice", scope: !75, file: !55, line: 199, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slice", file: !55, line: 341, size: 109184, elements: !80)
!80 = !{!81, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !940, !942, !995, !1025, !1052, !1055, !1056, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1091, !1092, !1093, !1094, !1095, !1096, !1099, !1100, !1103, !1104, !1106, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1119, !1120, !1121, !1122, !1123, !1125, !1126, !1127, !1131, !1135, !1139, !1143, !1147, !1148, !1149, !1150, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !79, file: !55, line: 343, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_par", file: !55, line: 566, size: 6855040, elements: !84)
!84 = !{!85, !171, !228, !332, !334, !336, !394, !396, !397, !398, !399, !400, !403, !423, !435, !436, !437, !438, !439, !440, !444, !445, !447, !448, !449, !450, !451, !452, !454, !456, !459, !460, !462, !463, !464, !465, !466, !468, !469, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !586, !587, !591, !592, !593, !594, !595, !596, !597, !598, !599, !601, !602, !603, !738, !742, !743, !745, !746, !749, !752, !753, !754, !758, !761, !764, !765, !766, !767, !768, !769, !795, !796, !798, !802, !803, !804, !805, !808, !813, !827, !831, !835, !836, !841, !842, !846, !847, !851, !872, !873, !876, !877, !878, !879, !880, !881, !882, !883}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !83, file: !55, line: 568, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inp_par", file: !55, line: 850, size: 32128, elements: !88)
!88 = !{!89, !94, !95, !96, !97, !98, !99, !100, !101, !102, !132, !133, !134, !135, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "infile", scope: !87, file: !55, line: 852, baseType: !90, size: 2040)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 2040, elements: !92)
!91 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!92 = !{!93}
!93 = !DISubrange(count: 255)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "outfile", scope: !87, file: !55, line: 853, baseType: !90, size: 2040, offset: 2040)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "reffile", scope: !87, file: !55, line: 854, baseType: !90, size: 2040, offset: 4080)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "FileFormat", scope: !87, file: !55, line: 856, baseType: !7, size: 32, offset: 6144)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "ref_offset", scope: !87, file: !55, line: 857, baseType: !7, size: 32, offset: 6176)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "poc_scale", scope: !87, file: !55, line: 858, baseType: !7, size: 32, offset: 6208)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "write_uv", scope: !87, file: !55, line: 859, baseType: !7, size: 32, offset: 6240)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "silent", scope: !87, file: !55, line: 860, baseType: !7, size: 32, offset: 6272)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "intra_profile_deblocking", scope: !87, file: !55, line: 861, baseType: !7, size: 32, offset: 6304)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !87, file: !55, line: 864, baseType: !103, size: 1088, offset: 6336)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameFormat", file: !6, line: 52, baseType: !104)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_format", file: !6, line: 30, size: 1088, elements: !105)
!105 = !{!106, !108, !110, !112, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !104, file: !6, line: 32, baseType: !107, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorFormat", file: !6, line: 28, baseType: !5)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "color_model", scope: !104, file: !6, line: 33, baseType: !109, size: 32, offset: 32)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorModel", file: !6, line: 20, baseType: !14)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "frame_rate", scope: !104, file: !6, line: 34, baseType: !111, size: 64, offset: 64)
!111 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !104, file: !6, line: 35, baseType: !113, size: 96, offset: 128)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 3)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !104, file: !6, line: 36, baseType: !113, size: 96, offset: 224)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right", scope: !104, file: !6, line: 37, baseType: !7, size: 32, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom", scope: !104, file: !6, line: 38, baseType: !7, size: 32, offset: 352)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right_cr", scope: !104, file: !6, line: 39, baseType: !7, size: 32, offset: 384)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom_cr", scope: !104, file: !6, line: 40, baseType: !7, size: 32, offset: 416)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "width_crop", scope: !104, file: !6, line: 41, baseType: !7, size: 32, offset: 448)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "height_crop", scope: !104, file: !6, line: 42, baseType: !7, size: 32, offset: 480)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "mb_width", scope: !104, file: !6, line: 43, baseType: !7, size: 32, offset: 512)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "mb_height", scope: !104, file: !6, line: 44, baseType: !7, size: 32, offset: 544)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "size_cmp", scope: !104, file: !6, line: 45, baseType: !113, size: 96, offset: 576)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !104, file: !6, line: 46, baseType: !7, size: 32, offset: 672)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth", scope: !104, file: !6, line: 47, baseType: !113, size: 96, offset: 704)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !104, file: !6, line: 48, baseType: !113, size: 96, offset: 800)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "max_value_sq", scope: !104, file: !6, line: 49, baseType: !113, size: 96, offset: 896)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !104, file: !6, line: 50, baseType: !7, size: 32, offset: 992)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_shift3", scope: !104, file: !6, line: 51, baseType: !7, size: 32, offset: 1024)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !87, file: !55, line: 865, baseType: !103, size: 1088, offset: 7424)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "ProcessInput", scope: !87, file: !55, line: 867, baseType: !7, size: 32, offset: 8512)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "enable_32_pulldown", scope: !87, file: !55, line: 868, baseType: !7, size: 32, offset: 8544)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "input_file1", scope: !87, file: !55, line: 869, baseType: !136, size: 7744, offset: 8576)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoDataFile", file: !21, line: 60, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_data_file", file: !21, line: 34, size: 7744, elements: !138)
!138 = !{!139, !140, !141, !142, !143, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !137, file: !21, line: 37, baseType: !90, size: 2040)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "fhead", scope: !137, file: !21, line: 38, baseType: !90, size: 2040, offset: 2040)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "ftail", scope: !137, file: !21, line: 39, baseType: !90, size: 2040, offset: 4080)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "f_num", scope: !137, file: !21, line: 40, baseType: !7, size: 32, offset: 6144)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "vdtype", scope: !137, file: !21, line: 41, baseType: !144, size: 32, offset: 6176)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoFileType", file: !21, line: 32, baseType: !20)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !137, file: !21, line: 42, baseType: !103, size: 1088, offset: 6208)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "is_concatenated", scope: !137, file: !21, line: 43, baseType: !7, size: 32, offset: 7296)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "is_interleaved", scope: !137, file: !21, line: 44, baseType: !7, size: 32, offset: 7328)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "zero_pad", scope: !137, file: !21, line: 45, baseType: !7, size: 32, offset: 7360)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "num_digits", scope: !137, file: !21, line: 46, baseType: !7, size: 32, offset: 7392)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !137, file: !21, line: 47, baseType: !7, size: 32, offset: 7424)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "end_frame", scope: !137, file: !21, line: 48, baseType: !7, size: 32, offset: 7456)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nframes", scope: !137, file: !21, line: 49, baseType: !7, size: 32, offset: 7488)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_size", scope: !137, file: !21, line: 50, baseType: !7, size: 32, offset: 7520)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_size", scope: !137, file: !21, line: 51, baseType: !7, size: 32, offset: 7552)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_offset", scope: !137, file: !21, line: 52, baseType: !7, size: 32, offset: 7584)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_offset", scope: !137, file: !21, line: 53, baseType: !7, size: 32, offset: 7616)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "avi", scope: !137, file: !21, line: 56, baseType: !158, size: 64, offset: 7680)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "input_file2", scope: !87, file: !55, line: 870, baseType: !136, size: 7744, offset: 16320)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "input_file3", scope: !87, file: !55, line: 871, baseType: !136, size: 7744, offset: 24064)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "DecodeAllLayers", scope: !87, file: !55, line: 873, baseType: !7, size: 32, offset: 31808)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !87, file: !55, line: 884, baseType: !7, size: 32, offset: 31840)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !87, file: !55, line: 885, baseType: !7, size: 32, offset: 31872)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !87, file: !55, line: 886, baseType: !7, size: 32, offset: 31904)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !87, file: !55, line: 890, baseType: !7, size: 32, offset: 31936)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "stdRange", scope: !87, file: !55, line: 893, baseType: !7, size: 32, offset: 31968)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "videoCode", scope: !87, file: !55, line: 894, baseType: !7, size: 32, offset: 32000)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "export_views", scope: !87, file: !55, line: 895, baseType: !7, size: 32, offset: 32032)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "iDecFrmNum", scope: !87, file: !55, line: 897, baseType: !7, size: 32, offset: 32064)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "bDisplayDecParams", scope: !87, file: !55, line: 899, baseType: !7, size: 32, offset: 32096)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !83, file: !55, line: 569, baseType: !172, size: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !174, line: 138, baseType: !175)
!174 = !DIFile(filename: "ldecod_src/inc/parsetcommon.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d59d7e00f3aec3a23ed88314ae35b687")
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 94, size: 17728, elements: !176)
!176 = !{!177, !178, !179, !180, !181, !182, !183, !187, !192, !196, !199, !200, !201, !202, !203, !207, !208, !209, !210, !211, !212, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !175, file: !174, line: 96, baseType: !7, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !175, file: !174, line: 97, baseType: !31, size: 32, offset: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !175, file: !174, line: 98, baseType: !31, size: 32, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !175, file: !174, line: 99, baseType: !7, size: 32, offset: 96)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !175, file: !174, line: 100, baseType: !7, size: 32, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !175, file: !174, line: 102, baseType: !7, size: 32, offset: 160)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !175, file: !174, line: 103, baseType: !184, size: 384, offset: 192)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 384, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 12)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !175, file: !174, line: 104, baseType: !188, size: 3072, offset: 576)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3072, elements: !189)
!189 = !{!190, !191}
!190 = !DISubrange(count: 6)
!191 = !DISubrange(count: 16)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !175, file: !174, line: 105, baseType: !193, size: 12288, offset: 3648)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 12288, elements: !194)
!194 = !{!190, !195}
!195 = !DISubrange(count: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !175, file: !174, line: 106, baseType: !197, size: 192, offset: 15936)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 192, elements: !198)
!198 = !{!190}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !175, file: !174, line: 107, baseType: !197, size: 192, offset: 16128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_pic_order_in_frame_present_flag", scope: !175, file: !174, line: 110, baseType: !7, size: 32, offset: 16320)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !175, file: !174, line: 111, baseType: !31, size: 32, offset: 16352)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !175, file: !174, line: 112, baseType: !31, size: 32, offset: 16384)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !175, file: !174, line: 114, baseType: !204, size: 256, offset: 16416)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 256, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 8)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !175, file: !174, line: 116, baseType: !204, size: 256, offset: 16672)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !175, file: !174, line: 117, baseType: !204, size: 256, offset: 16928)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !175, file: !174, line: 119, baseType: !7, size: 32, offset: 17184)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !175, file: !174, line: 120, baseType: !31, size: 32, offset: 17216)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !175, file: !174, line: 122, baseType: !31, size: 32, offset: 17248)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !175, file: !174, line: 123, baseType: !213, size: 64, offset: 17280)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !215, line: 21, baseType: !216)
!215 = !DIFile(filename: "ldecod_src/inc/typedefs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1393d024b72e653f4e6dbeffdb0b154")
!216 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !175, file: !174, line: 125, baseType: !7, size: 32, offset: 17344)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !175, file: !174, line: 126, baseType: !7, size: 32, offset: 17376)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !175, file: !174, line: 127, baseType: !7, size: 32, offset: 17408)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !175, file: !174, line: 128, baseType: !31, size: 32, offset: 17440)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !175, file: !174, line: 129, baseType: !7, size: 32, offset: 17472)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !175, file: !174, line: 130, baseType: !7, size: 32, offset: 17504)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !175, file: !174, line: 131, baseType: !7, size: 32, offset: 17536)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "second_chroma_qp_index_offset", scope: !175, file: !174, line: 133, baseType: !7, size: 32, offset: 17568)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !175, file: !174, line: 135, baseType: !7, size: 32, offset: 17600)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !175, file: !174, line: 136, baseType: !7, size: 32, offset: 17632)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !175, file: !174, line: 137, baseType: !7, size: 32, offset: 17664)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !83, file: !55, line: 570, baseType: !229, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !174, line: 197, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 142, size: 33024, elements: !232)
!232 = !{!233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !330, !331}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !231, file: !174, line: 144, baseType: !7, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !231, file: !174, line: 146, baseType: !31, size: 32, offset: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !231, file: !174, line: 147, baseType: !7, size: 32, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !231, file: !174, line: 148, baseType: !7, size: 32, offset: 96)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !231, file: !174, line: 149, baseType: !7, size: 32, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !231, file: !174, line: 150, baseType: !7, size: 32, offset: 160)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set4_flag", scope: !231, file: !174, line: 152, baseType: !7, size: 32, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !231, file: !174, line: 154, baseType: !31, size: 32, offset: 224)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !231, file: !174, line: 155, baseType: !31, size: 32, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !231, file: !174, line: 156, baseType: !31, size: 32, offset: 288)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !231, file: !174, line: 158, baseType: !7, size: 32, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !231, file: !174, line: 159, baseType: !184, size: 384, offset: 352)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !231, file: !174, line: 160, baseType: !188, size: 3072, offset: 736)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !231, file: !174, line: 161, baseType: !193, size: 12288, offset: 3808)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !231, file: !174, line: 162, baseType: !197, size: 192, offset: 16096)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !231, file: !174, line: 163, baseType: !197, size: 192, offset: 16288)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !231, file: !174, line: 165, baseType: !31, size: 32, offset: 16480)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !231, file: !174, line: 166, baseType: !31, size: 32, offset: 16512)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !231, file: !174, line: 167, baseType: !31, size: 32, offset: 16544)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !231, file: !174, line: 168, baseType: !31, size: 32, offset: 16576)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !231, file: !174, line: 170, baseType: !31, size: 32, offset: 16608)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !231, file: !174, line: 172, baseType: !7, size: 32, offset: 16640)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !231, file: !174, line: 173, baseType: !7, size: 32, offset: 16672)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !231, file: !174, line: 174, baseType: !7, size: 32, offset: 16704)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !231, file: !174, line: 175, baseType: !31, size: 32, offset: 16736)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !231, file: !174, line: 177, baseType: !259, size: 8192, offset: 16768)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8192, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !231, file: !174, line: 178, baseType: !31, size: 32, offset: 24960)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !231, file: !174, line: 179, baseType: !7, size: 32, offset: 24992)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !231, file: !174, line: 180, baseType: !31, size: 32, offset: 25024)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !231, file: !174, line: 181, baseType: !31, size: 32, offset: 25056)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !231, file: !174, line: 182, baseType: !7, size: 32, offset: 25088)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !231, file: !174, line: 184, baseType: !7, size: 32, offset: 25120)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !231, file: !174, line: 185, baseType: !7, size: 32, offset: 25152)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !231, file: !174, line: 186, baseType: !7, size: 32, offset: 25184)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !231, file: !174, line: 187, baseType: !31, size: 32, offset: 25216)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !231, file: !174, line: 188, baseType: !31, size: 32, offset: 25248)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !231, file: !174, line: 189, baseType: !31, size: 32, offset: 25280)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !231, file: !174, line: 190, baseType: !31, size: 32, offset: 25312)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !231, file: !174, line: 191, baseType: !7, size: 32, offset: 25344)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !231, file: !174, line: 192, baseType: !276, size: 7584, offset: 25376)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !174, line: 90, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 53, size: 7584, elements: !278)
!278 = !{!279, !280, !281, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !277, file: !174, line: 55, baseType: !7, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !277, file: !174, line: 56, baseType: !31, size: 32, offset: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !277, file: !174, line: 57, baseType: !282, size: 16, offset: 64)
!282 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !277, file: !174, line: 58, baseType: !282, size: 16, offset: 80)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !277, file: !174, line: 59, baseType: !7, size: 32, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !277, file: !174, line: 60, baseType: !7, size: 32, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !277, file: !174, line: 61, baseType: !7, size: 32, offset: 160)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !277, file: !174, line: 62, baseType: !31, size: 32, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !277, file: !174, line: 63, baseType: !7, size: 32, offset: 224)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !277, file: !174, line: 64, baseType: !7, size: 32, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !277, file: !174, line: 65, baseType: !31, size: 32, offset: 288)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !277, file: !174, line: 66, baseType: !31, size: 32, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !277, file: !174, line: 67, baseType: !31, size: 32, offset: 352)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !277, file: !174, line: 68, baseType: !7, size: 32, offset: 384)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_top_field", scope: !277, file: !174, line: 69, baseType: !31, size: 32, offset: 416)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_bottom_field", scope: !277, file: !174, line: 70, baseType: !31, size: 32, offset: 448)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !277, file: !174, line: 71, baseType: !7, size: 32, offset: 480)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !277, file: !174, line: 72, baseType: !31, size: 32, offset: 512)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !277, file: !174, line: 73, baseType: !31, size: 32, offset: 544)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !277, file: !174, line: 74, baseType: !7, size: 32, offset: 576)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !277, file: !174, line: 75, baseType: !7, size: 32, offset: 608)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !277, file: !174, line: 76, baseType: !302, size: 3296, offset: 640)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !174, line: 50, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 38, size: 3296, elements: !304)
!304 = !{!305, !306, !307, !308, !312, !313, !314, !315, !316, !317}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !303, file: !174, line: 40, baseType: !31, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !303, file: !174, line: 41, baseType: !31, size: 32, offset: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !303, file: !174, line: 42, baseType: !31, size: 32, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !303, file: !174, line: 43, baseType: !309, size: 1024, offset: 96)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1024, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !303, file: !174, line: 44, baseType: !309, size: 1024, offset: 1120)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !303, file: !174, line: 45, baseType: !309, size: 1024, offset: 2144)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !303, file: !174, line: 46, baseType: !31, size: 32, offset: 3168)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !303, file: !174, line: 47, baseType: !31, size: 32, offset: 3200)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !303, file: !174, line: 48, baseType: !31, size: 32, offset: 3232)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !303, file: !174, line: 49, baseType: !31, size: 32, offset: 3264)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !277, file: !174, line: 77, baseType: !7, size: 32, offset: 3936)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !277, file: !174, line: 78, baseType: !302, size: 3296, offset: 3968)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !277, file: !174, line: 80, baseType: !7, size: 32, offset: 7264)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !277, file: !174, line: 81, baseType: !7, size: 32, offset: 7296)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !277, file: !174, line: 82, baseType: !7, size: 32, offset: 7328)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !277, file: !174, line: 83, baseType: !7, size: 32, offset: 7360)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !277, file: !174, line: 84, baseType: !31, size: 32, offset: 7392)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !277, file: !174, line: 85, baseType: !31, size: 32, offset: 7424)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !277, file: !174, line: 86, baseType: !31, size: 32, offset: 7456)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !277, file: !174, line: 87, baseType: !31, size: 32, offset: 7488)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "num_reorder_frames", scope: !277, file: !174, line: 88, baseType: !31, size: 32, offset: 7520)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !277, file: !174, line: 89, baseType: !31, size: 32, offset: 7552)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !231, file: !174, line: 193, baseType: !31, size: 32, offset: 32960)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !231, file: !174, line: 195, baseType: !7, size: 32, offset: 32992)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "SeqParSet", scope: !83, file: !55, line: 571, baseType: !333, size: 1056768, offset: 192)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 1056768, elements: !310)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "PicParSet", scope: !83, file: !55, line: 572, baseType: !335, size: 4538368, offset: 1056960)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 4538368, elements: !260)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "active_subset_sps", scope: !83, file: !55, line: 575, baseType: !337, size: 64, offset: 5595328)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "subset_seq_parameter_set_rbsp_t", file: !174, line: 256, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 228, size: 37312, elements: !340)
!340 = !{!341, !342, !343, !344, !345, !346, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !361, !362, !363, !364}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !339, file: !174, line: 230, baseType: !230, size: 33024)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "bit_equal_to_one", scope: !339, file: !174, line: 232, baseType: !31, size: 32, offset: 33024)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "num_views_minus1", scope: !339, file: !174, line: 233, baseType: !7, size: 32, offset: 33056)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !339, file: !174, line: 234, baseType: !158, size: 64, offset: 33088)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l0", scope: !339, file: !174, line: 235, baseType: !158, size: 64, offset: 33152)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l0", scope: !339, file: !174, line: 236, baseType: !347, size: 64, offset: 33216)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l1", scope: !339, file: !174, line: 237, baseType: !158, size: 64, offset: 33280)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l1", scope: !339, file: !174, line: 238, baseType: !347, size: 64, offset: 33344)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l0", scope: !339, file: !174, line: 240, baseType: !158, size: 64, offset: 33408)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l0", scope: !339, file: !174, line: 241, baseType: !347, size: 64, offset: 33472)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l1", scope: !339, file: !174, line: 242, baseType: !158, size: 64, offset: 33536)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l1", scope: !339, file: !174, line: 243, baseType: !347, size: 64, offset: 33600)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "num_level_values_signalled_minus1", scope: !339, file: !174, line: 245, baseType: !7, size: 32, offset: 33664)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !339, file: !174, line: 246, baseType: !158, size: 64, offset: 33728)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "num_applicable_ops_minus1", scope: !339, file: !174, line: 247, baseType: !158, size: 64, offset: 33792)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_temporal_id", scope: !339, file: !174, line: 248, baseType: !347, size: 64, offset: 33856)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_target_views_minus1", scope: !339, file: !174, line: 249, baseType: !347, size: 64, offset: 33920)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_target_view_id", scope: !339, file: !174, line: 250, baseType: !360, size: 64, offset: 33984)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_views_minus1", scope: !339, file: !174, line: 251, baseType: !347, size: 64, offset: 34048)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "mvc_vui_parameters_present_flag", scope: !339, file: !174, line: 253, baseType: !31, size: 32, offset: 34112)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !339, file: !174, line: 254, baseType: !7, size: 32, offset: 34144)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "MVCVUIParams", scope: !339, file: !174, line: 255, baseType: !365, size: 3136, offset: 34176)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "MVCVUI_t", file: !174, line: 226, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mvcvui_tag", file: !174, line: 200, size: 3136, elements: !367)
!367 = !{!368, !369, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !387, !388, !390, !391, !392, !393}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops_minus1", scope: !366, file: !174, line: 202, baseType: !7, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !366, file: !174, line: 203, baseType: !370, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "num_target_output_views_minus1", scope: !366, file: !174, line: 204, baseType: !158, size: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !366, file: !174, line: 205, baseType: !347, size: 64, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !366, file: !174, line: 206, baseType: !370, size: 64, offset: 256)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !366, file: !174, line: 207, baseType: !158, size: 64, offset: 320)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !366, file: !174, line: 208, baseType: !158, size: 64, offset: 384)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !366, file: !174, line: 209, baseType: !370, size: 64, offset: 448)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !366, file: !174, line: 210, baseType: !370, size: 64, offset: 512)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !366, file: !174, line: 211, baseType: !370, size: 64, offset: 576)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !366, file: !174, line: 212, baseType: !370, size: 64, offset: 640)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !366, file: !174, line: 213, baseType: !370, size: 64, offset: 704)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !366, file: !174, line: 216, baseType: !371, size: 8, offset: 768)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !366, file: !174, line: 217, baseType: !371, size: 8, offset: 776)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !366, file: !174, line: 218, baseType: !371, size: 8, offset: 784)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !366, file: !174, line: 219, baseType: !386, size: 1024, offset: 800)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, elements: !310)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !366, file: !174, line: 220, baseType: !386, size: 1024, offset: 1824)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !366, file: !174, line: 221, baseType: !389, size: 256, offset: 2848)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 256, elements: !310)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !366, file: !174, line: 222, baseType: !371, size: 8, offset: 3104)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !366, file: !174, line: 223, baseType: !371, size: 8, offset: 3112)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !366, file: !174, line: 224, baseType: !371, size: 8, offset: 3120)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !366, file: !174, line: 225, baseType: !371, size: 8, offset: 3128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "SubsetSeqParSet", scope: !83, file: !55, line: 577, baseType: !395, size: 1193984, offset: 5595392)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 1193984, elements: !310)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_width_in_mbs_minus1", scope: !83, file: !55, line: 578, baseType: !7, size: 32, offset: 6789376)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_height_in_map_units_minus1", scope: !83, file: !55, line: 579, baseType: !7, size: 32, offset: 6789408)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "last_max_dec_frame_buffering", scope: !83, file: !55, line: 580, baseType: !7, size: 32, offset: 6789440)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "last_profile_idc", scope: !83, file: !55, line: 581, baseType: !7, size: 32, offset: 6789472)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "p_SEI", scope: !83, file: !55, line: 584, baseType: !401, size: 64, offset: 6789504)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DICompositeType(tag: DW_TAG_structure_type, name: "sei_params", file: !55, line: 584, flags: DIFlagFwdDecl)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "old_slice", scope: !83, file: !55, line: 586, baseType: !404, size: 64, offset: 6789568)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_slice_par", file: !55, line: 902, size: 416, elements: !406)
!406 = !{!407, !408, !409, !410, !411, !412, !416, !417, !418, !419, !420, !421, !422}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !405, file: !55, line: 904, baseType: !31, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !405, file: !55, line: 905, baseType: !31, size: 32, offset: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "nal_ref_idc", scope: !405, file: !55, line: 906, baseType: !7, size: 32, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "pic_oder_cnt_lsb", scope: !405, file: !55, line: 907, baseType: !31, size: 32, offset: 96)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_oder_cnt_bottom", scope: !405, file: !55, line: 908, baseType: !7, size: 32, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !405, file: !55, line: 909, baseType: !413, size: 64, offset: 160)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !414)
!414 = !{!415}
!415 = !DISubrange(count: 2)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !405, file: !55, line: 910, baseType: !214, size: 8, offset: 224)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !405, file: !55, line: 911, baseType: !214, size: 8, offset: 232)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !405, file: !55, line: 912, baseType: !7, size: 32, offset: 256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "pps_id", scope: !405, file: !55, line: 913, baseType: !7, size: 32, offset: 288)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !405, file: !55, line: 915, baseType: !7, size: 32, offset: 320)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !405, file: !55, line: 916, baseType: !7, size: 32, offset: 352)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !405, file: !55, line: 917, baseType: !7, size: 32, offset: 384)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !83, file: !55, line: 587, baseType: !424, size: 64, offset: 6789632)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snr_par", file: !55, line: 839, size: 512, elements: !426)
!426 = !{!427, !428, !431, !432, !433, !434}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "frame_ctr", scope: !425, file: !55, line: 841, baseType: !7, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !425, file: !55, line: 842, baseType: !429, size: 96, offset: 32)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 96, elements: !114)
!430 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "snr1", scope: !425, file: !55, line: 843, baseType: !429, size: 96, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "snra", scope: !425, file: !55, line: 844, baseType: !429, size: 96, offset: 224)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "sse", scope: !425, file: !55, line: 845, baseType: !429, size: 96, offset: 320)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "msse", scope: !425, file: !55, line: 846, baseType: !429, size: 96, offset: 416)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !83, file: !55, line: 588, baseType: !7, size: 32, offset: 6789696)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !83, file: !55, line: 591, baseType: !31, size: 32, offset: 6789728)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "iSliceNumOfCurrPic", scope: !83, file: !55, line: 592, baseType: !7, size: 32, offset: 6789760)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesAllocated", scope: !83, file: !55, line: 593, baseType: !7, size: 32, offset: 6789792)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesDecoded", scope: !83, file: !55, line: 594, baseType: !7, size: 32, offset: 6789824)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "ppSliceList", scope: !83, file: !55, line: 595, baseType: !441, size: 64, offset: 6789888)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !55, line: 542, baseType: !79)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !83, file: !55, line: 596, baseType: !370, size: 64, offset: 6789952)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block_JV", scope: !83, file: !55, line: 597, baseType: !446, size: 192, offset: 6790016)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 192, elements: !114)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !83, file: !55, line: 601, baseType: !7, size: 32, offset: 6790208)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !83, file: !55, line: 602, baseType: !7, size: 32, offset: 6790240)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !83, file: !55, line: 603, baseType: !7, size: 32, offset: 6790272)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "width_cr", scope: !83, file: !55, line: 604, baseType: !7, size: 32, offset: 6790304)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "height_cr", scope: !83, file: !55, line: 605, baseType: !7, size: 32, offset: 6790336)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !83, file: !55, line: 607, baseType: !453, size: 64, offset: 6790400)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode_JV", scope: !83, file: !55, line: 608, baseType: !455, size: 192, offset: 6790464)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 192, elements: !114)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "nz_coeff", scope: !83, file: !55, line: 609, baseType: !457, size: 64, offset: 6790656)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !83, file: !55, line: 610, baseType: !347, size: 64, offset: 6790720)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "siblock_JV", scope: !83, file: !55, line: 611, baseType: !461, size: 192, offset: 6790784)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 192, elements: !114)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "newframe", scope: !83, file: !55, line: 613, baseType: !7, size: 32, offset: 6790976)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !83, file: !55, line: 614, baseType: !7, size: 32, offset: 6791008)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "pNextSlice", scope: !83, file: !55, line: 617, baseType: !442, size: 64, offset: 6791040)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !83, file: !55, line: 618, baseType: !73, size: 64, offset: 6791104)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data_JV", scope: !83, file: !55, line: 619, baseType: !467, size: 192, offset: 6791168)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 192, elements: !114)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "ChromaArrayType", scope: !83, file: !55, line: 621, baseType: !7, size: 32, offset: 6791360)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_head", scope: !83, file: !55, line: 626, baseType: !470, size: 64, offset: 6791424)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DICompositeType(tag: DW_TAG_structure_type, name: "concealment_node", file: !55, line: 626, flags: DIFlagFwdDecl)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_end", scope: !83, file: !55, line: 627, baseType: !470, size: 64, offset: 6791488)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "pre_frame_num", scope: !83, file: !55, line: 629, baseType: !31, size: 32, offset: 6791552)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "non_conforming_stream", scope: !83, file: !55, line: 630, baseType: !7, size: 32, offset: 6791584)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntMsb", scope: !83, file: !55, line: 634, baseType: !7, size: 32, offset: 6791616)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntLsb", scope: !83, file: !55, line: 635, baseType: !31, size: 32, offset: 6791648)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedPicOrderCnt", scope: !83, file: !55, line: 638, baseType: !7, size: 32, offset: 6791680)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntCycleCnt", scope: !83, file: !55, line: 638, baseType: !7, size: 32, offset: 6791712)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumInPicOrderCntCycle", scope: !83, file: !55, line: 638, baseType: !7, size: 32, offset: 6791744)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNum", scope: !83, file: !55, line: 639, baseType: !31, size: 32, offset: 6791776)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumOffset", scope: !83, file: !55, line: 639, baseType: !31, size: 32, offset: 6791808)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedDeltaPerPicOrderCntCycle", scope: !83, file: !55, line: 640, baseType: !7, size: 32, offset: 6791840)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !83, file: !55, line: 641, baseType: !7, size: 32, offset: 6791872)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNumOffset", scope: !83, file: !55, line: 642, baseType: !7, size: 32, offset: 6791904)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "MaxFrameNum", scope: !83, file: !55, line: 645, baseType: !7, size: 32, offset: 6791936)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !83, file: !55, line: 647, baseType: !31, size: 32, offset: 6791968)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMapUnits", scope: !83, file: !55, line: 648, baseType: !31, size: 32, offset: 6792000)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "FrameHeightInMbs", scope: !83, file: !55, line: 649, baseType: !31, size: 32, offset: 6792032)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMbs", scope: !83, file: !55, line: 650, baseType: !31, size: 32, offset: 6792064)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !83, file: !55, line: 651, baseType: !31, size: 32, offset: 6792096)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "FrameSizeInMbs", scope: !83, file: !55, line: 652, baseType: !31, size: 32, offset: 6792128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "oldFrameSizeInMbs", scope: !83, file: !55, line: 653, baseType: !31, size: 32, offset: 6792160)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !83, file: !55, line: 655, baseType: !7, size: 32, offset: 6792192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "last_has_mmco_5", scope: !83, file: !55, line: 657, baseType: !7, size: 32, offset: 6792224)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_bottom_field", scope: !83, file: !55, line: 658, baseType: !7, size: 32, offset: 6792256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_bitsize_on_disk", scope: !83, file: !55, line: 661, baseType: !7, size: 32, offset: 6792288)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma", scope: !83, file: !55, line: 662, baseType: !52, size: 16, offset: 6792320)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma", scope: !83, file: !55, line: 663, baseType: !52, size: 16, offset: 6792336)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_scale", scope: !83, file: !55, line: 664, baseType: !413, size: 64, offset: 6792352)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma_qp_scale", scope: !83, file: !55, line: 665, baseType: !7, size: 32, offset: 6792416)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma_qp_scale", scope: !83, file: !55, line: 666, baseType: !7, size: 32, offset: 6792448)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "dc_pred_value_comp", scope: !83, file: !55, line: 667, baseType: !503, size: 96, offset: 6792480)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 96, elements: !114)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "max_pel_value_comp", scope: !83, file: !55, line: 668, baseType: !113, size: 96, offset: 6792576)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !83, file: !55, line: 670, baseType: !7, size: 32, offset: 6792672)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !83, file: !55, line: 671, baseType: !7, size: 32, offset: 6792704)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "lossless_qpprime_flag", scope: !83, file: !55, line: 672, baseType: !7, size: 32, offset: 6792736)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "num_blk8x8_uv", scope: !83, file: !55, line: 673, baseType: !7, size: 32, offset: 6792768)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "num_uv_blocks", scope: !83, file: !55, line: 674, baseType: !7, size: 32, offset: 6792800)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "num_cdc_coeff", scope: !83, file: !55, line: 675, baseType: !7, size: 32, offset: 6792832)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x", scope: !83, file: !55, line: 676, baseType: !7, size: 32, offset: 6792864)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y", scope: !83, file: !55, line: 677, baseType: !7, size: 32, offset: 6792896)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x_blk", scope: !83, file: !55, line: 678, baseType: !7, size: 32, offset: 6792928)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y_blk", scope: !83, file: !55, line: 679, baseType: !7, size: 32, offset: 6792960)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size", scope: !83, file: !55, line: 680, baseType: !516, size: 192, offset: 6792992)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 192, elements: !517)
!517 = !{!115, !415}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_blk", scope: !83, file: !55, line: 681, baseType: !516, size: 192, offset: 6793184)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_shift", scope: !83, file: !55, line: 682, baseType: !516, size: 192, offset: 6793376)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_x", scope: !83, file: !55, line: 683, baseType: !7, size: 32, offset: 6793568)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_y", scope: !83, file: !55, line: 684, baseType: !7, size: 32, offset: 6793600)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_x", scope: !83, file: !55, line: 685, baseType: !7, size: 32, offset: 6793632)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_y", scope: !83, file: !55, line: 686, baseType: !7, size: 32, offset: 6793664)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "total_scale", scope: !83, file: !55, line: 687, baseType: !7, size: 32, offset: 6793696)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "max_vmv_r", scope: !83, file: !55, line: 689, baseType: !7, size: 32, offset: 6793728)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "idr_psnr_number", scope: !83, file: !55, line: 692, baseType: !7, size: 32, offset: 6793760)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "psnr_number", scope: !83, file: !55, line: 693, baseType: !7, size: 32, offset: 6793792)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "last_ref_pic_poc", scope: !83, file: !55, line: 700, baseType: !7, size: 32, offset: 6793824)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !83, file: !55, line: 701, baseType: !7, size: 32, offset: 6793856)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !83, file: !55, line: 702, baseType: !7, size: 32, offset: 6793888)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !83, file: !55, line: 703, baseType: !7, size: 32, offset: 6793920)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "earlier_missing_poc", scope: !83, file: !55, line: 704, baseType: !7, size: 32, offset: 6793952)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "frame_to_conceal", scope: !83, file: !55, line: 705, baseType: !31, size: 32, offset: 6793984)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "IDR_concealment_flag", scope: !83, file: !55, line: 706, baseType: !7, size: 32, offset: 6794016)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_slice_type", scope: !83, file: !55, line: 707, baseType: !7, size: 32, offset: 6794048)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point", scope: !83, file: !55, line: 710, baseType: !7, size: 32, offset: 6794080)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point_found", scope: !83, file: !55, line: 711, baseType: !7, size: 32, offset: 6794112)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_cnt", scope: !83, file: !55, line: 712, baseType: !7, size: 32, offset: 6794144)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_num", scope: !83, file: !55, line: 713, baseType: !7, size: 32, offset: 6794176)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_poc", scope: !83, file: !55, line: 714, baseType: !7, size: 32, offset: 6794208)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !83, file: !55, line: 716, baseType: !7, size: 32, offset: 6794240)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !83, file: !55, line: 717, baseType: !7, size: 32, offset: 6794272)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !83, file: !55, line: 719, baseType: !213, size: 64, offset: 6794304)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ibuf", scope: !83, file: !55, line: 720, baseType: !213, size: 64, offset: 6794368)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "imgData", scope: !83, file: !55, line: 722, baseType: !546, size: 2560, offset: 6794432)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageData", file: !547, line: 38, baseType: !548)
!547 = !DIFile(filename: "ldecod_src/inc/io_image.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "8caef624e6f5391b0c6ab2984e7f77c6")
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "image_data", file: !547, line: 20, size: 2560, elements: !549)
!549 = !{!550, !551, !557, !558, !559, !563, !564, !565, !566, !567}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !548, file: !547, line: 22, baseType: !103, size: 1088)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "frm_data", scope: !548, file: !547, line: 24, baseType: !552, size: 192, offset: 1088)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 192, elements: !114)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "imgpel", file: !215, line: 41, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !215, line: 23, baseType: !282)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "top_data", scope: !548, file: !547, line: 25, baseType: !552, size: 192, offset: 1280)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "bot_data", scope: !548, file: !547, line: 26, baseType: !552, size: 192, offset: 1472)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "frm_uint16", scope: !548, file: !547, line: 31, baseType: !560, size: 192, offset: 1664)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, size: 192, elements: !114)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "top_uint16", scope: !548, file: !547, line: 32, baseType: !560, size: 192, offset: 1856)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "bot_uint16", scope: !548, file: !547, line: 33, baseType: !560, size: 192, offset: 2048)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "frm_stride", scope: !548, file: !547, line: 35, baseType: !113, size: 96, offset: 2240)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "top_stride", scope: !548, file: !547, line: 36, baseType: !113, size: 96, offset: 2336)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "bot_stride", scope: !548, file: !547, line: 37, baseType: !113, size: 96, offset: 2432)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "imgData0", scope: !83, file: !55, line: 723, baseType: !546, size: 2560, offset: 6796992)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "imgData1", scope: !83, file: !55, line: 724, baseType: !546, size: 2560, offset: 6799552)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "imgData2", scope: !83, file: !55, line: 725, baseType: !546, size: 2560, offset: 6802112)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "imgData32", scope: !83, file: !55, line: 728, baseType: !546, size: 2560, offset: 6804672)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "imgData4", scope: !83, file: !55, line: 729, baseType: !546, size: 2560, offset: 6807232)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "imgData5", scope: !83, file: !55, line: 730, baseType: !546, size: 2560, offset: 6809792)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "imgData6", scope: !83, file: !55, line: 731, baseType: !546, size: 2560, offset: 6812352)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "previous_frame_num", scope: !83, file: !55, line: 735, baseType: !31, size: 32, offset: 6814912)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "Is_primary_correct", scope: !83, file: !55, line: 737, baseType: !7, size: 32, offset: 6814944)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "Is_redundant_correct", scope: !83, file: !55, line: 738, baseType: !7, size: 32, offset: 6814976)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "tot_time", scope: !83, file: !55, line: 741, baseType: !579, size: 64, offset: 6815040)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !580, line: 103, baseType: !581)
!580 = !DIFile(filename: "ldecod_src/inc/win32.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "100def0ffeee72ecdc377183538a04bb")
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !582, line: 27, baseType: !583)
!582 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !584, line: 44, baseType: !585)
!584 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!585 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "p_out", scope: !83, file: !55, line: 744, baseType: !7, size: 32, offset: 6815104)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "p_out_mvc", scope: !83, file: !55, line: 746, baseType: !588, size: 32768, offset: 6815136)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32768, elements: !589)
!589 = !{!590}
!590 = !DISubrange(count: 1024)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "p_ref", scope: !83, file: !55, line: 748, baseType: !7, size: 32, offset: 6847904)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "LastAccessUnitExists", scope: !83, file: !55, line: 751, baseType: !7, size: 32, offset: 6847936)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "NALUCount", scope: !83, file: !55, line: 752, baseType: !7, size: 32, offset: 6847968)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "Bframe_ctr", scope: !83, file: !55, line: 755, baseType: !7, size: 32, offset: 6848000)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "frame_no", scope: !83, file: !55, line: 756, baseType: !7, size: 32, offset: 6848032)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "g_nFrame", scope: !83, file: !55, line: 758, baseType: !7, size: 32, offset: 6848064)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "global_init_done", scope: !83, file: !55, line: 759, baseType: !7, size: 32, offset: 6848096)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "imgY_ref", scope: !83, file: !55, line: 762, baseType: !553, size: 64, offset: 6848128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV_ref", scope: !83, file: !55, line: 763, baseType: !600, size: 64, offset: 6848192)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "qp_per_matrix", scope: !83, file: !55, line: 765, baseType: !158, size: 64, offset: 6848256)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "qp_rem_matrix", scope: !83, file: !55, line: 766, baseType: !158, size: 64, offset: 6848320)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "last_out_fs", scope: !83, file: !55, line: 768, baseType: !604, size: 64, offset: 6848384)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_store", file: !606, line: 152, size: 768, elements: !607)
!606 = !DIFile(filename: "ldecod_src/inc/mbuffer.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1ba7faf5f978b0f36a8f480bbf7b3401")
!607 = !{!608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !733, !734, !735, !736, !737}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "is_used", scope: !605, file: !606, line: 154, baseType: !7, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "is_reference", scope: !605, file: !606, line: 155, baseType: !7, size: 32, offset: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !605, file: !606, line: 156, baseType: !7, size: 32, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "is_orig_reference", scope: !605, file: !606, line: 157, baseType: !7, size: 32, offset: 96)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "is_non_existent", scope: !605, file: !606, line: 159, baseType: !7, size: 32, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !605, file: !606, line: 161, baseType: !31, size: 32, offset: 160)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !605, file: !606, line: 162, baseType: !31, size: 32, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num_wrap", scope: !605, file: !606, line: 164, baseType: !7, size: 32, offset: 224)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !605, file: !606, line: 165, baseType: !7, size: 32, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !605, file: !606, line: 166, baseType: !7, size: 32, offset: 288)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !605, file: !606, line: 167, baseType: !7, size: 32, offset: 320)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_reference", scope: !605, file: !606, line: 170, baseType: !7, size: 32, offset: 352)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !605, file: !606, line: 172, baseType: !621, size: 64, offset: 384)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "StorablePicture", file: !606, line: 138, baseType: !623)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "storable_picture", file: !606, line: 46, size: 3328, elements: !624)
!624 = !{!625, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !673, !675, !679, !681, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !623, file: !606, line: 48, baseType: !626, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "PictureStructure", file: !30, line: 140, baseType: !29)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !623, file: !606, line: 50, baseType: !7, size: 32, offset: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "top_poc", scope: !623, file: !606, line: 51, baseType: !7, size: 32, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_poc", scope: !623, file: !606, line: 52, baseType: !7, size: 32, offset: 96)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "frame_poc", scope: !623, file: !606, line: 53, baseType: !7, size: 32, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !623, file: !606, line: 54, baseType: !31, size: 32, offset: 160)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !623, file: !606, line: 55, baseType: !31, size: 32, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "pic_num", scope: !623, file: !606, line: 57, baseType: !7, size: 32, offset: 224)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !623, file: !606, line: 58, baseType: !7, size: 32, offset: 256)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !623, file: !606, line: 59, baseType: !7, size: 32, offset: 288)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !623, file: !606, line: 61, baseType: !214, size: 8, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "used_for_reference", scope: !623, file: !606, line: 62, baseType: !7, size: 32, offset: 352)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !623, file: !606, line: 63, baseType: !7, size: 32, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "non_existing", scope: !623, file: !606, line: 64, baseType: !7, size: 32, offset: 416)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !623, file: !606, line: 65, baseType: !7, size: 32, offset: 448)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "max_slice_id", scope: !623, file: !606, line: 67, baseType: !52, size: 16, offset: 480)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "size_x", scope: !623, file: !606, line: 69, baseType: !7, size: 32, offset: 512)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "size_y", scope: !623, file: !606, line: 69, baseType: !7, size: 32, offset: 544)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr", scope: !623, file: !606, line: 69, baseType: !7, size: 32, offset: 576)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr", scope: !623, file: !606, line: 69, baseType: !7, size: 32, offset: 608)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_m1", scope: !623, file: !606, line: 70, baseType: !7, size: 32, offset: 640)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_m1", scope: !623, file: !606, line: 70, baseType: !7, size: 32, offset: 672)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr_m1", scope: !623, file: !606, line: 70, baseType: !7, size: 32, offset: 704)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr_m1", scope: !623, file: !606, line: 70, baseType: !7, size: 32, offset: 736)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "coded_frame", scope: !623, file: !606, line: 71, baseType: !7, size: 32, offset: 768)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !623, file: !606, line: 72, baseType: !7, size: 32, offset: 800)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !623, file: !606, line: 73, baseType: !31, size: 32, offset: 832)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !623, file: !606, line: 74, baseType: !31, size: 32, offset: 864)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !623, file: !606, line: 75, baseType: !7, size: 32, offset: 896)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !623, file: !606, line: 75, baseType: !7, size: 32, offset: 928)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !623, file: !606, line: 76, baseType: !7, size: 32, offset: 960)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !623, file: !606, line: 76, baseType: !7, size: 32, offset: 992)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "imgY", scope: !623, file: !606, line: 79, baseType: !553, size: 64, offset: 1024)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV", scope: !623, file: !606, line: 80, baseType: !600, size: 64, offset: 1088)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "img_comp", scope: !623, file: !606, line: 81, baseType: !600, size: 64, offset: 1152)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "mv_info", scope: !623, file: !606, line: 84, baseType: !662, size: 64, offset: 1216)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params", file: !606, line: 36, size: 256, elements: !665)
!665 = !{!666, !669, !671}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic", scope: !664, file: !606, line: 38, baseType: !667, size: 128)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 128, elements: !414)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !664, file: !606, line: 39, baseType: !670, size: 64, offset: 128)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 64, elements: !414)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "ref_idx", scope: !664, file: !606, line: 40, baseType: !672, size: 16, offset: 192)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 16, elements: !414)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "JVmv_info", scope: !623, file: !606, line: 85, baseType: !674, size: 192, offset: 1280)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !662, size: 192, elements: !114)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "motion", scope: !623, file: !606, line: 87, baseType: !676, size: 64, offset: 1472)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params_old", file: !606, line: 29, size: 64, elements: !677)
!677 = !{!678}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !676, file: !606, line: 31, baseType: !213, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "JVmotion", scope: !623, file: !606, line: 88, baseType: !680, size: 192, offset: 1536)
!680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 192, elements: !114)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "slice_id", scope: !623, file: !606, line: 90, baseType: !682, size: 64, offset: 1728)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !623, file: !606, line: 92, baseType: !668, size: 64, offset: 1792)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !623, file: !606, line: 93, baseType: !668, size: 64, offset: 1856)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !623, file: !606, line: 94, baseType: !668, size: 64, offset: 1920)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !623, file: !606, line: 96, baseType: !7, size: 32, offset: 1984)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !623, file: !606, line: 97, baseType: !7, size: 32, offset: 2016)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !623, file: !606, line: 98, baseType: !7, size: 32, offset: 2048)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !623, file: !606, line: 99, baseType: !7, size: 32, offset: 2080)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !623, file: !606, line: 100, baseType: !7, size: 32, offset: 2112)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !623, file: !606, line: 102, baseType: !7, size: 32, offset: 2144)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !623, file: !606, line: 103, baseType: !7, size: 32, offset: 2176)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !623, file: !606, line: 104, baseType: !7, size: 32, offset: 2208)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !623, file: !606, line: 105, baseType: !7, size: 32, offset: 2240)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !623, file: !606, line: 106, baseType: !7, size: 32, offset: 2272)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !623, file: !606, line: 107, baseType: !7, size: 32, offset: 2304)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !623, file: !606, line: 108, baseType: !7, size: 32, offset: 2336)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !623, file: !606, line: 109, baseType: !7, size: 32, offset: 2368)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_offset", scope: !623, file: !606, line: 110, baseType: !413, size: 64, offset: 2400)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !623, file: !606, line: 111, baseType: !7, size: 32, offset: 2464)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !623, file: !606, line: 112, baseType: !703, size: 64, offset: 2496)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecRefPicMarking_t", file: !55, line: 194, baseType: !705)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DecRefPicMarking_s", file: !55, line: 186, size: 256, elements: !706)
!706 = !{!707, !708, !709, !710, !711, !712}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "memory_management_control_operation", scope: !705, file: !55, line: 188, baseType: !7, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "difference_of_pic_nums_minus1", scope: !705, file: !55, line: 189, baseType: !7, size: 32, offset: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !705, file: !55, line: 190, baseType: !7, size: 32, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !705, file: !55, line: 191, baseType: !7, size: 32, offset: 96)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_frame_idx_plus1", scope: !705, file: !55, line: 192, baseType: !7, size: 32, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !705, file: !55, line: 193, baseType: !713, size: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "concealed_pic", scope: !623, file: !606, line: 115, baseType: !7, size: 32, offset: 2560)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "seiHasTone_mapping", scope: !623, file: !606, line: 118, baseType: !7, size: 32, offset: 2592)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_model_id", scope: !623, file: !606, line: 119, baseType: !7, size: 32, offset: 2624)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "tonemapped_bit_depth", scope: !623, file: !606, line: 120, baseType: !7, size: 32, offset: 2656)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_lut", scope: !623, file: !606, line: 121, baseType: !554, size: 64, offset: 2688)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !623, file: !606, line: 124, baseType: !7, size: 32, offset: 2752)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !623, file: !606, line: 125, baseType: !7, size: 32, offset: 2784)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !623, file: !606, line: 126, baseType: !7, size: 32, offset: 2816)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaStride", scope: !623, file: !606, line: 128, baseType: !7, size: 32, offset: 2848)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaStride", scope: !623, file: !606, line: 129, baseType: !7, size: 32, offset: 2880)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaExpandedHeight", scope: !623, file: !606, line: 130, baseType: !7, size: 32, offset: 2912)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaExpandedHeight", scope: !623, file: !606, line: 131, baseType: !7, size: 32, offset: 2944)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "cur_imgY", scope: !623, file: !606, line: 132, baseType: !553, size: 64, offset: 3008)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "no_ref", scope: !623, file: !606, line: 133, baseType: !7, size: 32, offset: 3072)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "iCodingType", scope: !623, file: !606, line: 134, baseType: !7, size: 32, offset: 3104)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !623, file: !606, line: 136, baseType: !672, size: 16, offset: 3136)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !623, file: !606, line: 137, baseType: !731, size: 128, offset: 3200)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !732, size: 128, elements: !414)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !605, file: !606, line: 173, baseType: !621, size: 64, offset: 448)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !605, file: !606, line: 174, baseType: !621, size: 64, offset: 512)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !605, file: !606, line: 177, baseType: !7, size: 32, offset: 576)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !605, file: !606, line: 178, baseType: !413, size: 64, offset: 608)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !605, file: !606, line: 179, baseType: !413, size: 64, offset: 672)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "pocs_in_dpb", scope: !83, file: !55, line: 769, baseType: !739, size: 3200, offset: 6848448)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3200, elements: !740)
!740 = !{!741}
!741 = !DISubrange(count: 100)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !83, file: !55, line: 771, baseType: !668, size: 64, offset: 6851648)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture_JV", scope: !83, file: !55, line: 772, baseType: !744, size: 192, offset: 6851712)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 192, elements: !114)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "no_reference_picture", scope: !83, file: !55, line: 773, baseType: !668, size: 64, offset: 6851904)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "erc_object_list", scope: !83, file: !55, line: 776, baseType: !747, size: 64, offset: 6851968)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DICompositeType(tag: DW_TAG_structure_type, name: "object_buffer", file: !55, line: 776, flags: DIFlagFwdDecl)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "erc_errorVar", scope: !83, file: !55, line: 777, baseType: !750, size: 64, offset: 6852032)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "ercVariables_s", file: !55, line: 777, flags: DIFlagFwdDecl)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !83, file: !55, line: 779, baseType: !7, size: 32, offset: 6852096)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "erc_img", scope: !83, file: !55, line: 780, baseType: !82, size: 64, offset: 6852160)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "ec_flag", scope: !83, file: !55, line: 781, baseType: !755, size: 640, offset: 6852224)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 640, elements: !756)
!756 = !{!757}
!757 = !DISubrange(count: 20)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "annex_b", scope: !83, file: !55, line: 783, baseType: !759, size: 64, offset: 6852864)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "annex_b_struct", file: !55, line: 783, flags: DIFlagFwdDecl)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "bitsfile", scope: !83, file: !55, line: 784, baseType: !762, size: 64, offset: 6852928)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DICompositeType(tag: DW_TAG_structure_type, name: "sBitsFile", file: !55, line: 784, flags: DIFlagFwdDecl)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "out_buffer", scope: !83, file: !55, line: 786, baseType: !604, size: 64, offset: 6852992)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output", scope: !83, file: !55, line: 788, baseType: !668, size: 64, offset: 6853056)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output_state", scope: !83, file: !55, line: 789, baseType: !7, size: 32, offset: 6853120)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_flag", scope: !83, file: !55, line: 790, baseType: !7, size: 32, offset: 6853152)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "BitStreamFile", scope: !83, file: !55, line: 792, baseType: !7, size: 32, offset: 6853184)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !83, file: !55, line: 794, baseType: !770, size: 64, offset: 6853248)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decoded_picture_buffer", file: !606, line: 186, size: 33408, elements: !772)
!772 = !{!773, !776, !779, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !771, file: !606, line: 188, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoParameters", file: !55, line: 836, baseType: !83)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !771, file: !606, line: 189, baseType: !777, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "InputParameters", file: !55, line: 900, baseType: !87)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !771, file: !606, line: 190, baseType: !780, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameStore", file: !606, line: 182, baseType: !605)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ref", scope: !771, file: !606, line: 191, baseType: !780, size: 64, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ltref", scope: !771, file: !606, line: 192, baseType: !780, size: 64, offset: 256)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !771, file: !606, line: 193, baseType: !31, size: 32, offset: 320)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "used_size", scope: !771, file: !606, line: 194, baseType: !31, size: 32, offset: 352)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ref_frames_in_buffer", scope: !771, file: !606, line: 195, baseType: !31, size: 32, offset: 384)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ltref_frames_in_buffer", scope: !771, file: !606, line: 196, baseType: !31, size: 32, offset: 416)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_poc", scope: !771, file: !606, line: 197, baseType: !7, size: 32, offset: 448)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_view_id", scope: !771, file: !606, line: 199, baseType: !7, size: 32, offset: 480)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_pic_idx", scope: !771, file: !606, line: 200, baseType: !588, size: 32768, offset: 512)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "init_done", scope: !771, file: !606, line: 205, baseType: !7, size: 32, offset: 33280)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !771, file: !606, line: 206, baseType: !7, size: 32, offset: 33312)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "last_picture", scope: !771, file: !606, line: 208, baseType: !781, size: 64, offset: 33344)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_legacy", scope: !83, file: !55, line: 795, baseType: !770, size: 64, offset: 6853312)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_layer", scope: !83, file: !55, line: 796, baseType: !797, size: 128, offset: 6853376)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, size: 128, elements: !414)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "cslice_type", scope: !83, file: !55, line: 800, baseType: !799, size: 72, offset: 6853504)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 72, elements: !800)
!800 = !{!801}
!801 = !DISubrange(count: 9)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "MbToSliceGroupMap", scope: !83, file: !55, line: 802, baseType: !158, size: 64, offset: 6853632)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "MapUnitToSliceGroupMap", scope: !83, file: !55, line: 803, baseType: !158, size: 64, offset: 6853696)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfSliceGroups", scope: !83, file: !55, line: 804, baseType: !7, size: 32, offset: 6853760)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "seiToneMapping", scope: !83, file: !55, line: 807, baseType: !806, size: 64, offset: 6853824)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "tone_mapping_struct_s", file: !55, line: 807, flags: DIFlagFwdDecl)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "buf2img", scope: !83, file: !55, line: 810, baseType: !809, size: 64, offset: 6853888)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !553, !812, !7, !7, !7, !7, !7, !7}
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "getNeighbour", scope: !83, file: !55, line: 811, baseType: !814, size: 64, offset: 6853952)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !73, !7, !7, !158, !817}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPos", file: !55, line: 85, baseType: !819)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pix_pos", file: !55, line: 77, size: 128, elements: !820)
!820 = !{!821, !822, !823, !824, !825, !826}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !819, file: !55, line: 79, baseType: !7, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "mb_addr", scope: !819, file: !55, line: 80, baseType: !7, size: 32, offset: 32)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !819, file: !55, line: 81, baseType: !52, size: 16, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !819, file: !55, line: 82, baseType: !52, size: 16, offset: 80)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "pos_x", scope: !819, file: !55, line: 83, baseType: !52, size: 16, offset: 96)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "pos_y", scope: !819, file: !55, line: 84, baseType: !52, size: 16, offset: 112)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "get_mb_block_pos", scope: !83, file: !55, line: 812, baseType: !828, size: 64, offset: 6854016)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{null, !7, !683, !683}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthVer", scope: !83, file: !55, line: 813, baseType: !832, size: 64, offset: 6854080)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !213, !73, !7, !7, !668}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthHor", scope: !83, file: !55, line: 814, baseType: !832, size: 64, offset: 6854144)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaVer", scope: !83, file: !55, line: 815, baseType: !837, size: 64, offset: 6854208)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !840, !553, !213, !73, !7, !668}
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorPlane", file: !30, line: 32, baseType: !36)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaHor", scope: !83, file: !55, line: 816, baseType: !837, size: 64, offset: 6854272)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaVer", scope: !83, file: !55, line: 817, baseType: !843, size: 64, offset: 6854336)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{null, !553, !213, !73, !7, !7, !668}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaHor", scope: !83, file: !55, line: 818, baseType: !843, size: 64, offset: 6854400)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "img2buf", scope: !83, file: !55, line: 819, baseType: !848, size: 64, offset: 6854464)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{null, !553, !812, !7, !7, !7, !7, !7, !7, !7, !7}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "pDecOuputPic", scope: !83, file: !55, line: 821, baseType: !852, size: 64, offset: 6854528)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodedPicList", file: !55, line: 561, baseType: !854)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decodedpic_t", file: !55, line: 544, size: 640, elements: !855)
!855 = !{!856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "bValid", scope: !854, file: !55, line: 546, baseType: !7, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "iViewId", scope: !854, file: !55, line: 547, baseType: !7, size: 32, offset: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "iPOC", scope: !854, file: !55, line: 548, baseType: !7, size: 32, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVFormat", scope: !854, file: !55, line: 549, baseType: !7, size: 32, offset: 96)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVStorageFormat", scope: !854, file: !55, line: 550, baseType: !7, size: 32, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "iBitDepth", scope: !854, file: !55, line: 551, baseType: !7, size: 32, offset: 160)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "pY", scope: !854, file: !55, line: 552, baseType: !213, size: 64, offset: 192)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "pU", scope: !854, file: !55, line: 553, baseType: !213, size: 64, offset: 256)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "pV", scope: !854, file: !55, line: 554, baseType: !213, size: 64, offset: 320)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "iWidth", scope: !854, file: !55, line: 555, baseType: !7, size: 32, offset: 384)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "iHeight", scope: !854, file: !55, line: 556, baseType: !7, size: 32, offset: 416)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "iYBufStride", scope: !854, file: !55, line: 557, baseType: !7, size: 32, offset: 448)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "iUVBufStride", scope: !854, file: !55, line: 558, baseType: !7, size: 32, offset: 480)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "iSkipPicNum", scope: !854, file: !55, line: 559, baseType: !7, size: 32, offset: 512)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "pNext", scope: !854, file: !55, line: 560, baseType: !871, size: 64, offset: 576)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "iDeblockMode", scope: !83, file: !55, line: 822, baseType: !7, size: 32, offset: 6854592)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "nalu", scope: !83, file: !55, line: 823, baseType: !874, size: 64, offset: 6854656)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DICompositeType(tag: DW_TAG_structure_type, name: "nalu_t", file: !55, line: 823, flags: DIFlagFwdDecl)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !83, file: !55, line: 824, baseType: !7, size: 32, offset: 6854720)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !83, file: !55, line: 825, baseType: !7, size: 32, offset: 6854752)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !83, file: !55, line: 826, baseType: !7, size: 32, offset: 6854784)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !83, file: !55, line: 827, baseType: !7, size: 32, offset: 6854816)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "bDeblockEnable", scope: !83, file: !55, line: 829, baseType: !7, size: 32, offset: 6854848)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "iPostProcess", scope: !83, file: !55, line: 830, baseType: !7, size: 32, offset: 6854880)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "bFrameInit", scope: !83, file: !55, line: 831, baseType: !7, size: 32, offset: 6854912)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "pNextPPS", scope: !83, file: !55, line: 835, baseType: !172, size: 64, offset: 6854976)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !79, file: !55, line: 344, baseType: !86, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !79, file: !55, line: 345, baseType: !172, size: 64, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !79, file: !55, line: 346, baseType: !229, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "svc_extension_flag", scope: !79, file: !55, line: 347, baseType: !7, size: 32, offset: 256)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !79, file: !55, line: 350, baseType: !770, size: 64, offset: 320)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !79, file: !55, line: 353, baseType: !7, size: 32, offset: 384)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !79, file: !55, line: 354, baseType: !7, size: 32, offset: 416)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !79, file: !55, line: 355, baseType: !7, size: 32, offset: 448)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "Transform8x8Mode", scope: !79, file: !55, line: 356, baseType: !7, size: 32, offset: 480)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "is_not_independent", scope: !79, file: !55, line: 357, baseType: !7, size: 32, offset: 512)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "toppoc", scope: !79, file: !55, line: 359, baseType: !7, size: 32, offset: 544)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "bottompoc", scope: !79, file: !55, line: 360, baseType: !7, size: 32, offset: 576)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "framepoc", scope: !79, file: !55, line: 361, baseType: !7, size: 32, offset: 608)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_lsb", scope: !79, file: !55, line: 365, baseType: !31, size: 32, offset: 640)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt_bottom", scope: !79, file: !55, line: 366, baseType: !7, size: 32, offset: 672)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !79, file: !55, line: 368, baseType: !413, size: 64, offset: 704)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntMsb", scope: !79, file: !55, line: 372, baseType: !7, size: 32, offset: 768)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "AbsFrameNum", scope: !79, file: !55, line: 378, baseType: !31, size: 32, offset: 800)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !79, file: !55, line: 379, baseType: !7, size: 32, offset: 832)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "current_mb_nr", scope: !79, file: !55, line: 387, baseType: !31, size: 32, offset: 864)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !79, file: !55, line: 388, baseType: !31, size: 32, offset: 896)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "current_slice_nr", scope: !79, file: !55, line: 389, baseType: !52, size: 16, offset: 928)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "cod_counter", scope: !79, file: !55, line: 396, baseType: !7, size: 32, offset: 960)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "allrefzero", scope: !79, file: !55, line: 397, baseType: !7, size: 32, offset: 992)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !79, file: !55, line: 400, baseType: !7, size: 32, offset: 1024)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "direct_spatial_mv_pred_flag", scope: !79, file: !55, line: 401, baseType: !7, size: 32, offset: 1056)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_active", scope: !79, file: !55, line: 402, baseType: !413, size: 64, offset: 1088)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !79, file: !55, line: 406, baseType: !7, size: 32, offset: 1152)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !79, file: !55, line: 407, baseType: !7, size: 32, offset: 1184)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !79, file: !55, line: 408, baseType: !7, size: 32, offset: 1216)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "qs", scope: !79, file: !55, line: 409, baseType: !7, size: 32, offset: 1248)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qs_delta", scope: !79, file: !55, line: 410, baseType: !7, size: 32, offset: 1280)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !79, file: !55, line: 411, baseType: !7, size: 32, offset: 1312)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "model_number", scope: !79, file: !55, line: 412, baseType: !7, size: 32, offset: 1344)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !79, file: !55, line: 413, baseType: !31, size: 32, offset: 1376)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !79, file: !55, line: 414, baseType: !31, size: 32, offset: 1408)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !79, file: !55, line: 415, baseType: !214, size: 8, offset: 1440)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !79, file: !55, line: 416, baseType: !626, size: 32, offset: 1472)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !79, file: !55, line: 417, baseType: !7, size: 32, offset: 1504)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "end_mb_nr_plus1", scope: !79, file: !55, line: 418, baseType: !7, size: 32, offset: 1536)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !79, file: !55, line: 419, baseType: !7, size: 32, offset: 1568)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "dp_mode", scope: !79, file: !55, line: 420, baseType: !7, size: 32, offset: 1600)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "current_header", scope: !79, file: !55, line: 421, baseType: !7, size: 32, offset: 1632)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "next_header", scope: !79, file: !55, line: 422, baseType: !7, size: 32, offset: 1664)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "last_dquant", scope: !79, file: !55, line: 423, baseType: !7, size: 32, offset: 1696)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "colour_plane_id", scope: !79, file: !55, line: 426, baseType: !7, size: 32, offset: 1728)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt", scope: !79, file: !55, line: 427, baseType: !7, size: 32, offset: 1760)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "sp_switch", scope: !79, file: !55, line: 428, baseType: !7, size: 32, offset: 1792)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_cycle", scope: !79, file: !55, line: 429, baseType: !7, size: 32, offset: 1824)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_slice_ref_idx", scope: !79, file: !55, line: 430, baseType: !7, size: 32, offset: 1856)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !79, file: !55, line: 431, baseType: !7, size: 32, offset: 1888)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !79, file: !55, line: 432, baseType: !7, size: 32, offset: 1920)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !79, file: !55, line: 433, baseType: !7, size: 32, offset: 1952)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !79, file: !55, line: 434, baseType: !703, size: 64, offset: 1984)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !79, file: !55, line: 436, baseType: !939, size: 48, offset: 2048)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 48, elements: !198)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !79, file: !55, line: 437, baseType: !941, size: 384, offset: 2112)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !732, size: 384, elements: !198)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !79, file: !55, line: 440, baseType: !943, size: 64, offset: 2496)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !55, line: 324, baseType: !945)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !55, line: 314, size: 384, elements: !946)
!946 = !{!947, !958, !967}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !945, file: !55, line: 317, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !55, line: 47, baseType: !950)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bit_stream", file: !55, line: 300, size: 256, elements: !951)
!951 = !{!952, !953, !954, !955, !956, !957}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "read_len", scope: !950, file: !55, line: 303, baseType: !7, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "code_len", scope: !950, file: !55, line: 304, baseType: !7, size: 32, offset: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "frame_bitoffset", scope: !950, file: !55, line: 306, baseType: !7, size: 32, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_length", scope: !950, file: !55, line: 307, baseType: !7, size: 32, offset: 96)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !950, file: !55, line: 309, baseType: !213, size: 64, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !950, file: !55, line: 310, baseType: !7, size: 32, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "de_cabac", scope: !945, file: !55, line: 318, baseType: !959, size: 256, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironment", file: !55, line: 95, baseType: !960)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !55, line: 88, size: 256, elements: !961)
!961 = !{!962, !963, !964, !965, !966}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "Drange", scope: !960, file: !55, line: 90, baseType: !31, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "Dvalue", scope: !960, file: !55, line: 91, baseType: !31, size: 32, offset: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "DbitsLeft", scope: !960, file: !55, line: 92, baseType: !7, size: 32, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm", scope: !960, file: !55, line: 93, baseType: !213, size: 64, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm_len", scope: !960, file: !55, line: 94, baseType: !158, size: 64, offset: 192)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "readSyntaxElement", scope: !945, file: !55, line: 320, baseType: !968, size: 64, offset: 320)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{!7, !73, !971, !994}
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !55, line: 296, baseType: !973)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !55, line: 276, size: 384, elements: !974)
!974 = !{!975, !976, !977, !978, !979, !980, !981, !982, !983, !987}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !973, file: !55, line: 278, baseType: !7, size: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !973, file: !55, line: 279, baseType: !7, size: 32, offset: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !973, file: !55, line: 280, baseType: !7, size: 32, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !973, file: !55, line: 281, baseType: !7, size: 32, offset: 96)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !973, file: !55, line: 282, baseType: !7, size: 32, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !973, file: !55, line: 283, baseType: !31, size: 32, offset: 160)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !973, file: !55, line: 284, baseType: !7, size: 32, offset: 192)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !973, file: !55, line: 285, baseType: !7, size: 32, offset: 224)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !973, file: !55, line: 293, baseType: !984, size: 64, offset: 256)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{null, !7, !7, !158, !158}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "reading", scope: !973, file: !55, line: 295, baseType: !988, size: 64, offset: 320)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{null, !73, !991, !992}
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironmentPtr", file: !55, line: 97, baseType: !993)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !79, file: !55, line: 441, baseType: !996, size: 64, offset: 2560)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !55, line: 153, baseType: !998)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !55, line: 145, size: 2912, elements: !999)
!999 = !{!1000, !1010, !1013, !1017, !1020, !1024}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !998, file: !55, line: 147, baseType: !1001, size: 1056)
!1001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1002, size: 1056, elements: !1008)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !55, line: 122, baseType: !1003)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !55, line: 117, size: 32, elements: !1004)
!1004 = !{!1005, !1006, !1007}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1003, file: !55, line: 119, baseType: !556, size: 16)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !1003, file: !55, line: 120, baseType: !216, size: 8, offset: 16)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !1003, file: !55, line: 121, baseType: !216, size: 8, offset: 24)
!1008 = !{!115, !1009}
!1009 = !DISubrange(count: 11)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !998, file: !55, line: 148, baseType: !1011, size: 576, offset: 1056)
!1011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1002, size: 576, elements: !1012)
!1012 = !{!415, !801}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !998, file: !55, line: 149, baseType: !1014, size: 640, offset: 1632)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1002, size: 640, elements: !1015)
!1015 = !{!415, !1016}
!1016 = !DISubrange(count: 10)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !998, file: !55, line: 150, baseType: !1018, size: 384, offset: 2272)
!1018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1002, size: 384, elements: !1019)
!1019 = !{!415, !190}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !998, file: !55, line: 151, baseType: !1021, size: 128, offset: 2656)
!1021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1002, size: 128, elements: !1022)
!1022 = !{!1023}
!1023 = !DISubrange(count: 4)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !998, file: !55, line: 152, baseType: !1021, size: 128, offset: 2784)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !79, file: !55, line: 442, baseType: !1026, size: 64, offset: 2624)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !55, line: 175, baseType: !1028)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !55, line: 164, size: 52768, elements: !1029)
!1029 = !{!1030, !1032, !1034, !1035, !1038, !1042, !1046, !1047, !1051}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !1028, file: !55, line: 166, baseType: !1031, size: 96)
!1031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1002, size: 96, elements: !114)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !1028, file: !55, line: 167, baseType: !1033, size: 64, offset: 96)
!1033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1002, size: 64, elements: !414)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !1028, file: !55, line: 168, baseType: !1021, size: 128, offset: 160)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !1028, file: !55, line: 169, baseType: !1036, size: 384, offset: 288)
!1036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1002, size: 384, elements: !1037)
!1037 = !{!115, !1023}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !1028, file: !55, line: 170, baseType: !1039, size: 2816, offset: 672)
!1039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1002, size: 2816, elements: !1040)
!1040 = !{!1041, !1023}
!1041 = !DISubrange(count: 22)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !1028, file: !55, line: 171, baseType: !1043, size: 21120, offset: 3488)
!1043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1002, size: 21120, elements: !1044)
!1044 = !{!415, !1041, !1045}
!1045 = !DISubrange(count: 15)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !1028, file: !55, line: 172, baseType: !1043, size: 21120, offset: 24608)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !1028, file: !55, line: 173, baseType: !1048, size: 3520, offset: 45728)
!1048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1002, size: 3520, elements: !1049)
!1049 = !{!1041, !1050}
!1050 = !DISubrange(count: 5)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !1028, file: !55, line: 174, baseType: !1048, size: 3520, offset: 49248)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "mvscale", scope: !79, file: !55, line: 444, baseType: !1053, size: 6144, offset: 2688)
!1053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 6144, elements: !1054)
!1054 = !{!190, !311}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag", scope: !79, file: !55, line: 446, baseType: !413, size: 64, offset: 8832)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "reordering_of_pic_nums_idc", scope: !79, file: !55, line: 447, baseType: !1057, size: 128, offset: 8896)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 128, elements: !414)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1", scope: !79, file: !55, line: 448, baseType: !1057, size: 128, offset: 9024)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx", scope: !79, file: !55, line: 449, baseType: !1057, size: 128, offset: 9152)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_view_idx_minus1", scope: !79, file: !55, line: 452, baseType: !1057, size: 128, offset: 9280)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !79, file: !55, line: 454, baseType: !7, size: 32, offset: 9408)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !79, file: !55, line: 455, baseType: !7, size: 32, offset: 9440)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !79, file: !55, line: 456, baseType: !7, size: 32, offset: 9472)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "NaluHeaderMVCExt", scope: !79, file: !55, line: 458, baseType: !1065, size: 256, offset: 9504)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALUnitHeaderMVCExt_t", file: !55, line: 337, baseType: !1066)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nalunitheadermvcext_tag", file: !55, line: 327, size: 256, elements: !1067)
!1067 = !{!1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "non_idr_flag", scope: !1066, file: !55, line: 329, baseType: !31, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "priority_id", scope: !1066, file: !55, line: 330, baseType: !31, size: 32, offset: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !1066, file: !55, line: 331, baseType: !31, size: 32, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !1066, file: !55, line: 332, baseType: !31, size: 32, offset: 96)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !1066, file: !55, line: 333, baseType: !31, size: 32, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !1066, file: !55, line: 334, baseType: !31, size: 32, offset: 160)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_one_bit", scope: !1066, file: !55, line: 335, baseType: !31, size: 32, offset: 192)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "iPrefixNALU", scope: !1066, file: !55, line: 336, baseType: !31, size: 32, offset: 224)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !79, file: !55, line: 461, baseType: !52, size: 16, offset: 9760)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !79, file: !55, line: 462, baseType: !52, size: 16, offset: 9776)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !79, file: !55, line: 463, baseType: !52, size: 16, offset: 9792)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !79, file: !55, line: 465, baseType: !7, size: 32, offset: 9824)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "dpB_NotPresent", scope: !79, file: !55, line: 467, baseType: !7, size: 32, offset: 9856)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "dpC_NotPresent", scope: !79, file: !55, line: 468, baseType: !7, size: 32, offset: 9888)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "is_reset_coeff", scope: !79, file: !55, line: 470, baseType: !7, size: 32, offset: 9920)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "mb_pred", scope: !79, file: !55, line: 471, baseType: !600, size: 64, offset: 9984)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rec", scope: !79, file: !55, line: 472, baseType: !600, size: 64, offset: 10048)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rres", scope: !79, file: !55, line: 473, baseType: !360, size: 64, offset: 10112)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "cof", scope: !79, file: !55, line: 474, baseType: !360, size: 64, offset: 10176)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "fcf", scope: !79, file: !55, line: 475, baseType: !360, size: 64, offset: 10240)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "cofu", scope: !79, file: !55, line: 477, baseType: !1089, size: 512, offset: 10304)
!1089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !1090)
!1090 = !{!191}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l0", scope: !79, file: !55, line: 479, baseType: !553, size: 64, offset: 10816)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l1", scope: !79, file: !55, line: 480, baseType: !553, size: 64, offset: 10880)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_res", scope: !79, file: !55, line: 481, baseType: !347, size: 64, offset: 10944)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l2", scope: !79, file: !55, line: 482, baseType: !553, size: 64, offset: 11008)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l3", scope: !79, file: !55, line: 483, baseType: !553, size: 64, offset: 11072)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Intra", scope: !79, file: !55, line: 486, baseType: !1097, size: 9216, offset: 11136)
!1097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 9216, elements: !1098)
!1098 = !{!115, !190, !1023, !1023}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Inter", scope: !79, file: !55, line: 487, baseType: !1097, size: 9216, offset: 20352)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Intra", scope: !79, file: !55, line: 488, baseType: !1101, size: 36864, offset: 29568)
!1101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 36864, elements: !1102)
!1102 = !{!115, !190, !206, !206}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Inter", scope: !79, file: !55, line: 489, baseType: !1101, size: 36864, offset: 66432)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "qmatrix", scope: !79, file: !55, line: 491, baseType: !1105, size: 768, offset: 103296)
!1105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 768, elements: !185)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "coeff", scope: !79, file: !55, line: 494, baseType: !1107, size: 2048, offset: 104064)
!1107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !1108)
!1108 = !{!195}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_ctr", scope: !79, file: !55, line: 495, baseType: !7, size: 32, offset: 106112)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !79, file: !55, line: 496, baseType: !7, size: 32, offset: 106144)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !79, file: !55, line: 500, baseType: !282, size: 16, offset: 106176)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !79, file: !55, line: 501, baseType: !282, size: 16, offset: 106192)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "luma_log2_weight_denom", scope: !79, file: !55, line: 503, baseType: !282, size: 16, offset: 106208)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_log2_weight_denom", scope: !79, file: !55, line: 504, baseType: !282, size: 16, offset: 106224)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "wp_weight", scope: !79, file: !55, line: 505, baseType: !360, size: 64, offset: 106240)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "wp_offset", scope: !79, file: !55, line: 506, baseType: !360, size: 64, offset: 106304)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "wbp_weight", scope: !79, file: !55, line: 507, baseType: !1118, size: 64, offset: 106368)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_luma", scope: !79, file: !55, line: 508, baseType: !52, size: 16, offset: 106432)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_chroma", scope: !79, file: !55, line: 509, baseType: !52, size: 16, offset: 106448)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx0", scope: !79, file: !55, line: 512, baseType: !7, size: 32, offset: 106464)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx1", scope: !79, file: !55, line: 513, baseType: !7, size: 32, offset: 106496)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview0", scope: !79, file: !55, line: 514, baseType: !1124, size: 64, offset: 106560)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview1", scope: !79, file: !55, line: 515, baseType: !1124, size: 64, offset: 106624)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "max_mb_vmv_r", scope: !79, file: !55, line: 520, baseType: !7, size: 32, offset: 106688)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "ref_flag", scope: !79, file: !55, line: 521, baseType: !1128, size: 544, offset: 106720)
!1128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 544, elements: !1129)
!1129 = !{!1130}
!1130 = !DISubrange(count: 17)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "read_CBP_and_coeffs_from_NAL", scope: !79, file: !55, line: 523, baseType: !1132, size: 64, offset: 107264)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{null, !73}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "decode_one_component", scope: !79, file: !55, line: 524, baseType: !1136, size: 64, offset: 107328)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!7, !73, !840, !553, !668}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "readSlice", scope: !79, file: !55, line: 525, baseType: !1140, size: 64, offset: 107392)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!7, !82, !86}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "nal_startcode_follows", scope: !79, file: !55, line: 526, baseType: !1144, size: 64, offset: 107456)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!7, !78, !7}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "read_motion_info_from_NAL", scope: !79, file: !55, line: 527, baseType: !1132, size: 64, offset: 107520)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "read_one_macroblock", scope: !79, file: !55, line: 528, baseType: !1132, size: 64, offset: 107584)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "interpret_mb_mode", scope: !79, file: !55, line: 529, baseType: !1132, size: 64, offset: 107648)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "init_lists", scope: !79, file: !55, line: 530, baseType: !1151, size: 64, offset: 107712)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{null, !78}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "intrapred_chroma", scope: !79, file: !55, line: 531, baseType: !1132, size: 64, offset: 107776)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_intra", scope: !79, file: !55, line: 532, baseType: !984, size: 64, offset: 107840)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_inter", scope: !79, file: !55, line: 533, baseType: !984, size: 64, offset: 107904)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "update_direct_mv_info", scope: !79, file: !55, line: 534, baseType: !1132, size: 64, offset: 107968)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !79, file: !55, line: 535, baseType: !7, size: 32, offset: 108032)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !79, file: !55, line: 536, baseType: !73, size: 64, offset: 108096)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !79, file: !55, line: 537, baseType: !668, size: 64, offset: 108160)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !79, file: !55, line: 538, baseType: !347, size: 64, offset: 108224)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !79, file: !55, line: 539, baseType: !453, size: 64, offset: 108288)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !79, file: !55, line: 540, baseType: !370, size: 64, offset: 108352)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_vector_adjustment", scope: !79, file: !55, line: 541, baseType: !1165, size: 768, offset: 108416)
!1165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 768, elements: !189)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !75, file: !55, line: 200, baseType: !82, size: 64, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !75, file: !55, line: 201, baseType: !86, size: 64, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrX", scope: !75, file: !55, line: 202, baseType: !7, size: 32, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !75, file: !55, line: 203, baseType: !1170, size: 32, offset: 224)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlockPos", file: !55, line: 112, baseType: !1171)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !55, line: 108, size: 32, elements: !1172)
!1172 = !{!1173, !1174}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1171, file: !55, line: 110, baseType: !52, size: 16)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1171, file: !55, line: 111, baseType: !52, size: 16, offset: 16)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "block_x", scope: !75, file: !55, line: 204, baseType: !7, size: 32, offset: 256)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "block_y", scope: !75, file: !55, line: 205, baseType: !7, size: 32, offset: 288)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "block_y_aff", scope: !75, file: !55, line: 206, baseType: !7, size: 32, offset: 320)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "pix_x", scope: !75, file: !55, line: 207, baseType: !7, size: 32, offset: 352)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "pix_y", scope: !75, file: !55, line: 208, baseType: !7, size: 32, offset: 384)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_x", scope: !75, file: !55, line: 209, baseType: !7, size: 32, offset: 416)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_y", scope: !75, file: !55, line: 210, baseType: !7, size: 32, offset: 448)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_x", scope: !75, file: !55, line: 212, baseType: !7, size: 32, offset: 480)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_y", scope: !75, file: !55, line: 213, baseType: !7, size: 32, offset: 512)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !75, file: !55, line: 215, baseType: !7, size: 32, offset: 544)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "qpc", scope: !75, file: !55, line: 216, baseType: !413, size: 64, offset: 576)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "qp_scaled", scope: !75, file: !55, line: 217, baseType: !113, size: 96, offset: 640)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "is_lossless", scope: !75, file: !55, line: 218, baseType: !7, size: 32, offset: 736)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "is_intra_block", scope: !75, file: !55, line: 219, baseType: !7, size: 32, offset: 768)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "is_v_block", scope: !75, file: !55, line: 220, baseType: !7, size: 32, offset: 800)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "DeblockCall", scope: !75, file: !55, line: 221, baseType: !7, size: 32, offset: 832)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "slice_nr", scope: !75, file: !55, line: 223, baseType: !52, size: 16, offset: 864)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !75, file: !55, line: 224, baseType: !371, size: 8, offset: 880)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "dpl_flag", scope: !75, file: !55, line: 225, baseType: !371, size: 8, offset: 888)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "delta_quant", scope: !75, file: !55, line: 226, baseType: !52, size: 16, offset: 896)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "list_offset", scope: !75, file: !55, line: 227, baseType: !52, size: 16, offset: 912)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "mb_up", scope: !75, file: !55, line: 229, baseType: !1197, size: 64, offset: 960)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "mb_left", scope: !75, file: !55, line: 230, baseType: !1197, size: 64, offset: 1024)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "mbup", scope: !75, file: !55, line: 232, baseType: !1197, size: 64, offset: 1088)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "mbleft", scope: !75, file: !55, line: 233, baseType: !1197, size: 64, offset: 1152)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !75, file: !55, line: 236, baseType: !52, size: 16, offset: 1216)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !75, file: !55, line: 237, baseType: !1203, size: 1024, offset: 1232)
!1203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 1024, elements: !1204)
!1204 = !{!415, !1023, !1023, !415}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !75, file: !55, line: 239, baseType: !7, size: 32, offset: 2272)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !75, file: !55, line: 240, baseType: !1207, size: 192, offset: 2304)
!1207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 192, elements: !114)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits", scope: !75, file: !55, line: 241, baseType: !1207, size: 192, offset: 2496)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits_8x8", scope: !75, file: !55, line: 242, baseType: !1207, size: 192, offset: 2688)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "i16mode", scope: !75, file: !55, line: 244, baseType: !7, size: 32, offset: 2880)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !75, file: !55, line: 245, baseType: !1212, size: 32, offset: 2912)
!1212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 32, elements: !1022)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !75, file: !55, line: 246, baseType: !1212, size: 32, offset: 2944)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ipmode_DPCM", scope: !75, file: !55, line: 247, baseType: !371, size: 8, offset: 2976)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !75, file: !55, line: 248, baseType: !371, size: 8, offset: 2984)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "skip_flag", scope: !75, file: !55, line: 249, baseType: !371, size: 8, offset: 2992)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !75, file: !55, line: 250, baseType: !52, size: 16, offset: 3008)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !75, file: !55, line: 251, baseType: !52, size: 16, offset: 3024)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !75, file: !55, line: 252, baseType: !52, size: 16, offset: 3040)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !75, file: !55, line: 254, baseType: !7, size: 32, offset: 3072)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrA", scope: !75, file: !55, line: 256, baseType: !7, size: 32, offset: 3104)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrB", scope: !75, file: !55, line: 256, baseType: !7, size: 32, offset: 3136)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrC", scope: !75, file: !55, line: 256, baseType: !7, size: 32, offset: 3168)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrD", scope: !75, file: !55, line: 256, baseType: !7, size: 32, offset: 3200)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailA", scope: !75, file: !55, line: 257, baseType: !7, size: 32, offset: 3232)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailB", scope: !75, file: !55, line: 257, baseType: !7, size: 32, offset: 3264)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailC", scope: !75, file: !55, line: 257, baseType: !7, size: 32, offset: 3296)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailD", scope: !75, file: !55, line: 257, baseType: !7, size: 32, offset: 3328)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !75, file: !55, line: 259, baseType: !7, size: 32, offset: 3360)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !75, file: !55, line: 260, baseType: !7, size: 32, offset: 3392)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_4x4", scope: !75, file: !55, line: 262, baseType: !1232, size: 64, offset: 3456)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{null, !1197, !840, !7, !7}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_8x8", scope: !75, file: !55, line: 263, baseType: !1232, size: 64, offset: 3520)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "GetMVPredictor", scope: !75, file: !55, line: 265, baseType: !1237, size: 64, offset: 3584)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{null, !1197, !817, !53, !52, !662, !7, !7, !7, !7, !7}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "read_and_store_CBP_block_bit", scope: !75, file: !55, line: 268, baseType: !1241, size: 64, offset: 3648)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!7, !1197, !992, !7}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "readRefPictureIdx", scope: !75, file: !55, line: 269, baseType: !1245, size: 64, offset: 3712)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!371, !1197, !991, !994, !371, !7}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "mixedModeEdgeFlag", scope: !75, file: !55, line: 272, baseType: !214, size: 8, offset: 3776)
!1249 = !{!1250, !1251}
!1250 = !DILocalVariable(name: "currMB", arg: 1, scope: !70, file: !3, line: 306, type: !73)
!1251 = !DILocalVariable(name: "mb_aff_frame_flag", arg: 2, scope: !70, file: !3, line: 306, type: !7)
!1252 = !DILocation(line: 0, scope: !70)
!1253 = !DILocation(line: 308, column: 7, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !70, file: !3, line: 308, column: 7)
!1255 = !DILocation(line: 308, column: 7, scope: !70)
!1256 = !DILocation(line: 0, scope: !1254)
!1257 = !DILocation(line: 312, column: 1, scope: !70)
!1258 = distinct !DISubprogram(name: "GetMotionVectorPredictorMBAFF", scope: !3, file: !3, line: 24, type: !1259, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1264)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{null, !73, !817, !53, !52, !1261, !7, !7, !7, !7, !7}
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "PicMotionParams", file: !606, line: 43, baseType: !664)
!1264 = !{!1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284}
!1265 = !DILocalVariable(name: "currMB", arg: 1, scope: !1258, file: !3, line: 24, type: !73)
!1266 = !DILocalVariable(name: "block", arg: 2, scope: !1258, file: !3, line: 25, type: !817)
!1267 = !DILocalVariable(name: "pmv", arg: 3, scope: !1258, file: !3, line: 26, type: !53)
!1268 = !DILocalVariable(name: "ref_frame", arg: 4, scope: !1258, file: !3, line: 27, type: !52)
!1269 = !DILocalVariable(name: "mv_info", arg: 5, scope: !1258, file: !3, line: 28, type: !1261)
!1270 = !DILocalVariable(name: "list", arg: 6, scope: !1258, file: !3, line: 29, type: !7)
!1271 = !DILocalVariable(name: "mb_x", arg: 7, scope: !1258, file: !3, line: 30, type: !7)
!1272 = !DILocalVariable(name: "mb_y", arg: 8, scope: !1258, file: !3, line: 31, type: !7)
!1273 = !DILocalVariable(name: "blockshape_x", arg: 9, scope: !1258, file: !3, line: 32, type: !7)
!1274 = !DILocalVariable(name: "blockshape_y", arg: 10, scope: !1258, file: !3, line: 33, type: !7)
!1275 = !DILocalVariable(name: "mv_a", scope: !1258, file: !3, line: 35, type: !7)
!1276 = !DILocalVariable(name: "mv_b", scope: !1258, file: !3, line: 35, type: !7)
!1277 = !DILocalVariable(name: "mv_c", scope: !1258, file: !3, line: 35, type: !7)
!1278 = !DILocalVariable(name: "pred_vec", scope: !1258, file: !3, line: 35, type: !7)
!1279 = !DILocalVariable(name: "mvPredType", scope: !1258, file: !3, line: 36, type: !7)
!1280 = !DILocalVariable(name: "rFrameL", scope: !1258, file: !3, line: 36, type: !7)
!1281 = !DILocalVariable(name: "rFrameU", scope: !1258, file: !3, line: 36, type: !7)
!1282 = !DILocalVariable(name: "rFrameUR", scope: !1258, file: !3, line: 36, type: !7)
!1283 = !DILocalVariable(name: "hv", scope: !1258, file: !3, line: 37, type: !7)
!1284 = !DILocalVariable(name: "p_Vid", scope: !1258, file: !3, line: 38, type: !774)
!1285 = !DILocation(line: 0, scope: !1258)
!1286 = !DILocation(line: 38, column: 36, scope: !1258)
!1287 = !DILocation(line: 43, column: 15, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 43, column: 7)
!1289 = !DILocation(line: 43, column: 7, scope: !1288)
!1290 = !DILocation(line: 0, scope: !1288)
!1291 = !DILocation(line: 43, column: 7, scope: !1258)
!1292 = !DILocation(line: 45, column: 16, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 44, column: 3)
!1294 = !DILocation(line: 46, column: 17, scope: !1293)
!1295 = !DILocation(line: 46, column: 34, scope: !1293)
!1296 = !DILocation(line: 46, column: 10, scope: !1293)
!1297 = !DILocation(line: 46, column: 43, scope: !1293)
!1298 = !DILocation(line: 0, scope: !1293)
!1299 = !DILocation(line: 49, column: 16, scope: !1293)
!1300 = !DILocation(line: 49, column: 25, scope: !1293)
!1301 = !DILocation(line: 50, column: 17, scope: !1293)
!1302 = !DILocation(line: 50, column: 34, scope: !1293)
!1303 = !DILocation(line: 50, column: 10, scope: !1293)
!1304 = !DILocation(line: 50, column: 43, scope: !1293)
!1305 = !DILocation(line: 53, column: 16, scope: !1293)
!1306 = !DILocation(line: 53, column: 25, scope: !1293)
!1307 = !DILocation(line: 54, column: 17, scope: !1293)
!1308 = !DILocation(line: 54, column: 34, scope: !1293)
!1309 = !DILocation(line: 54, column: 10, scope: !1293)
!1310 = !DILocation(line: 54, column: 43, scope: !1293)
!1311 = !DILocation(line: 60, column: 15, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 59, column: 3)
!1313 = !DILocation(line: 61, column: 17, scope: !1312)
!1314 = !DILocation(line: 61, column: 34, scope: !1312)
!1315 = !DILocation(line: 61, column: 10, scope: !1312)
!1316 = !DILocation(line: 61, column: 43, scope: !1312)
!1317 = !DILocation(line: 0, scope: !1312)
!1318 = !DILocation(line: 62, column: 63, scope: !1312)
!1319 = !DILocation(line: 63, column: 9, scope: !1312)
!1320 = !DILocation(line: 64, column: 16, scope: !1312)
!1321 = !DILocation(line: 64, column: 25, scope: !1312)
!1322 = !DILocation(line: 65, column: 17, scope: !1312)
!1323 = !DILocation(line: 65, column: 34, scope: !1312)
!1324 = !DILocation(line: 65, column: 10, scope: !1312)
!1325 = !DILocation(line: 65, column: 43, scope: !1312)
!1326 = !DILocation(line: 66, column: 63, scope: !1312)
!1327 = !DILocation(line: 67, column: 9, scope: !1312)
!1328 = !DILocation(line: 68, column: 16, scope: !1312)
!1329 = !DILocation(line: 68, column: 25, scope: !1312)
!1330 = !DILocation(line: 69, column: 17, scope: !1312)
!1331 = !DILocation(line: 69, column: 34, scope: !1312)
!1332 = !DILocation(line: 69, column: 10, scope: !1312)
!1333 = !DILocation(line: 69, column: 43, scope: !1312)
!1334 = !DILocation(line: 70, column: 63, scope: !1312)
!1335 = !DILocation(line: 71, column: 9, scope: !1312)
!1336 = !DILocation(line: 78, column: 17, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 78, column: 6)
!1338 = !DILocation(line: 78, column: 14, scope: !1337)
!1339 = !DILocation(line: 78, column: 27, scope: !1337)
!1340 = !DILocation(line: 80, column: 32, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 80, column: 11)
!1342 = !DILocation(line: 82, column: 43, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 82, column: 11)
!1344 = !DILocation(line: 82, column: 56, scope: !1343)
!1345 = !DILocation(line: 85, column: 19, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 85, column: 6)
!1347 = !DILocation(line: 85, column: 24, scope: !1346)
!1348 = !DILocation(line: 87, column: 13, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 87, column: 8)
!1350 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 86, column: 3)
!1351 = !DILocation(line: 87, column: 8, scope: !1350)
!1352 = !DILocation(line: 89, column: 10, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 88, column: 5)
!1354 = !DILocation(line: 94, column: 11, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 93, column: 5)
!1356 = !DILocation(line: 98, column: 24, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 98, column: 11)
!1358 = !DILocation(line: 98, column: 30, scope: !1357)
!1359 = !DILocation(line: 100, column: 13, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 100, column: 8)
!1361 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 99, column: 3)
!1362 = !DILocation(line: 100, column: 8, scope: !1361)
!1363 = !DILocation(line: 102, column: 10, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 101, column: 5)
!1365 = !DILocation(line: 107, column: 10, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 106, column: 5)
!1367 = !DILocation(line: 116, column: 14, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 115, column: 5)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 114, column: 9)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 113, column: 3)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 112, column: 3)
!1372 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 112, column: 3)
!1373 = !DILocation(line: 116, column: 52, scope: !1368)
!1374 = !DILocation(line: 116, column: 35, scope: !1368)
!1375 = !DILocation(line: 116, column: 68, scope: !1368)
!1376 = !DILocation(line: 116, column: 84, scope: !1368)
!1377 = !DILocation(line: 117, column: 14, scope: !1368)
!1378 = !DILocation(line: 117, column: 52, scope: !1368)
!1379 = !DILocation(line: 117, column: 35, scope: !1368)
!1380 = !DILocation(line: 117, column: 68, scope: !1368)
!1381 = !DILocation(line: 117, column: 84, scope: !1368)
!1382 = !DILocation(line: 118, column: 14, scope: !1368)
!1383 = !DILocation(line: 118, column: 52, scope: !1368)
!1384 = !DILocation(line: 118, column: 35, scope: !1368)
!1385 = !DILocation(line: 118, column: 68, scope: !1368)
!1386 = !DILocation(line: 118, column: 84, scope: !1368)
!1387 = !DILocation(line: 0, scope: !1369)
!1388 = !DILocation(line: 154, column: 5, scope: !1370)
!1389 = !DILocation(line: 157, column: 12, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 157, column: 10)
!1391 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 155, column: 5)
!1392 = !DILocation(line: 157, column: 31, scope: !1390)
!1393 = !DILocalVariable(name: "a", arg: 1, scope: !1394, file: !1395, line: 52, type: !7)
!1394 = distinct !DISubprogram(name: "imedian", scope: !1395, file: !1395, line: 52, type: !1396, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1398)
!1395 = !DIFile(filename: "ldecod_src/inc/ifunctions.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "279401589ed56df99e287ad9e5fc564b")
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!7, !7, !7, !7}
!1398 = !{!1393, !1399, !1400}
!1399 = !DILocalVariable(name: "b", arg: 2, scope: !1394, file: !1395, line: 52, type: !7)
!1400 = !DILocalVariable(name: "c", arg: 3, scope: !1394, file: !1395, line: 52, type: !7)
!1401 = !DILocation(line: 0, scope: !1394, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 163, column: 20, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 162, column: 7)
!1404 = !DILocation(line: 54, column: 9, scope: !1405, inlinedAt: !1402)
!1405 = distinct !DILexicalBlock(scope: !1394, file: !1395, line: 54, column: 7)
!1406 = !DILocation(line: 54, column: 7, scope: !1394, inlinedAt: !1402)
!1407 = !DILocation(line: 56, column: 11, scope: !1408, inlinedAt: !1402)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !1395, line: 56, column: 9)
!1409 = distinct !DILexicalBlock(scope: !1405, file: !1395, line: 55, column: 3)
!1410 = !DILocation(line: 56, column: 9, scope: !1409, inlinedAt: !1402)
!1411 = !DILocation(line: 0, scope: !1412, inlinedAt: !1402)
!1412 = distinct !DILexicalBlock(scope: !1408, file: !1395, line: 58, column: 14)
!1413 = !DILocation(line: 65, column: 11, scope: !1414, inlinedAt: !1402)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !1395, line: 65, column: 9)
!1415 = distinct !DILexicalBlock(scope: !1405, file: !1395, line: 64, column: 3)
!1416 = !DILocation(line: 65, column: 9, scope: !1415, inlinedAt: !1402)
!1417 = !DILocation(line: 0, scope: !1418, inlinedAt: !1402)
!1418 = distinct !DILexicalBlock(scope: !1414, file: !1395, line: 67, column: 14)
!1419 = !DILocation(line: 171, column: 7, scope: !1391)
!1420 = !DILocation(line: 174, column: 7, scope: !1391)
!1421 = !DILocation(line: 180, column: 19, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 179, column: 9)
!1423 = !DILocation(line: 180, column: 17, scope: !1422)
!1424 = !DILocation(line: 122, column: 19, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 122, column: 11)
!1426 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 121, column: 5)
!1427 = !DILocation(line: 122, column: 11, scope: !1425)
!1428 = !DILocation(line: 0, scope: !1425)
!1429 = !DILocation(line: 122, column: 11, scope: !1426)
!1430 = !DILocation(line: 124, column: 16, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 123, column: 7)
!1432 = !DILocation(line: 124, column: 45, scope: !1431)
!1433 = !DILocation(line: 124, column: 62, scope: !1431)
!1434 = !DILocation(line: 124, column: 38, scope: !1431)
!1435 = !DILocation(line: 124, column: 71, scope: !1431)
!1436 = !DILocation(line: 0, scope: !1431)
!1437 = !DILocation(line: 125, column: 13, scope: !1431)
!1438 = !DILocation(line: 126, column: 65, scope: !1431)
!1439 = !DILocation(line: 128, column: 25, scope: !1431)
!1440 = !DILocation(line: 128, column: 16, scope: !1431)
!1441 = !DILocation(line: 128, column: 45, scope: !1431)
!1442 = !DILocation(line: 128, column: 62, scope: !1431)
!1443 = !DILocation(line: 128, column: 38, scope: !1431)
!1444 = !DILocation(line: 128, column: 71, scope: !1431)
!1445 = !DILocation(line: 129, column: 13, scope: !1431)
!1446 = !DILocation(line: 130, column: 65, scope: !1431)
!1447 = !DILocation(line: 132, column: 25, scope: !1431)
!1448 = !DILocation(line: 132, column: 16, scope: !1431)
!1449 = !DILocation(line: 132, column: 45, scope: !1431)
!1450 = !DILocation(line: 132, column: 62, scope: !1431)
!1451 = !DILocation(line: 132, column: 38, scope: !1431)
!1452 = !DILocation(line: 132, column: 71, scope: !1431)
!1453 = !DILocation(line: 133, column: 13, scope: !1431)
!1454 = !DILocation(line: 134, column: 65, scope: !1431)
!1455 = !DILocation(line: 139, column: 16, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 138, column: 7)
!1457 = !DILocation(line: 139, column: 45, scope: !1456)
!1458 = !DILocation(line: 139, column: 62, scope: !1456)
!1459 = !DILocation(line: 139, column: 38, scope: !1456)
!1460 = !DILocation(line: 139, column: 71, scope: !1456)
!1461 = !DILocation(line: 0, scope: !1456)
!1462 = !DILocation(line: 143, column: 25, scope: !1456)
!1463 = !DILocation(line: 143, column: 16, scope: !1456)
!1464 = !DILocation(line: 143, column: 45, scope: !1456)
!1465 = !DILocation(line: 143, column: 62, scope: !1456)
!1466 = !DILocation(line: 143, column: 38, scope: !1456)
!1467 = !DILocation(line: 143, column: 71, scope: !1456)
!1468 = !DILocation(line: 147, column: 25, scope: !1456)
!1469 = !DILocation(line: 147, column: 16, scope: !1456)
!1470 = !DILocation(line: 147, column: 45, scope: !1456)
!1471 = !DILocation(line: 147, column: 62, scope: !1456)
!1472 = !DILocation(line: 147, column: 38, scope: !1456)
!1473 = !DILocation(line: 147, column: 71, scope: !1456)
!1474 = !DILocation(line: 182, column: 19, scope: !1422)
!1475 = !DILocation(line: 182, column: 17, scope: !1422)
!1476 = !DILocation(line: 184, column: 1, scope: !1258)
!1477 = distinct !DISubprogram(name: "GetMotionVectorPredictorNormal", scope: !3, file: !3, line: 192, type: !1259, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1478)
!1478 = !{!1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1497, !1498}
!1479 = !DILocalVariable(name: "currMB", arg: 1, scope: !1477, file: !3, line: 192, type: !73)
!1480 = !DILocalVariable(name: "block", arg: 2, scope: !1477, file: !3, line: 193, type: !817)
!1481 = !DILocalVariable(name: "pmv", arg: 3, scope: !1477, file: !3, line: 194, type: !53)
!1482 = !DILocalVariable(name: "ref_frame", arg: 4, scope: !1477, file: !3, line: 195, type: !52)
!1483 = !DILocalVariable(name: "mv_info", arg: 5, scope: !1477, file: !3, line: 196, type: !1261)
!1484 = !DILocalVariable(name: "list", arg: 6, scope: !1477, file: !3, line: 197, type: !7)
!1485 = !DILocalVariable(name: "mb_x", arg: 7, scope: !1477, file: !3, line: 198, type: !7)
!1486 = !DILocalVariable(name: "mb_y", arg: 8, scope: !1477, file: !3, line: 199, type: !7)
!1487 = !DILocalVariable(name: "blockshape_x", arg: 9, scope: !1477, file: !3, line: 200, type: !7)
!1488 = !DILocalVariable(name: "blockshape_y", arg: 10, scope: !1477, file: !3, line: 201, type: !7)
!1489 = !DILocalVariable(name: "mvPredType", scope: !1477, file: !3, line: 203, type: !7)
!1490 = !DILocalVariable(name: "rFrameL", scope: !1477, file: !3, line: 205, type: !7)
!1491 = !DILocalVariable(name: "rFrameU", scope: !1477, file: !3, line: 206, type: !7)
!1492 = !DILocalVariable(name: "rFrameUR", scope: !1477, file: !3, line: 207, type: !7)
!1493 = !DILocalVariable(name: "mv_a", scope: !1494, file: !3, line: 263, type: !53)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 262, column: 5)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 250, column: 8)
!1496 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 248, column: 3)
!1497 = !DILocalVariable(name: "mv_b", scope: !1494, file: !3, line: 264, type: !53)
!1498 = !DILocalVariable(name: "mv_c", scope: !1494, file: !3, line: 265, type: !53)
!1499 = !DILocation(line: 0, scope: !1477)
!1500 = !DILocation(line: 205, column: 29, scope: !1477)
!1501 = !DILocation(line: 205, column: 20, scope: !1477)
!1502 = !DILocation(line: 205, column: 58, scope: !1477)
!1503 = !DILocation(line: 205, column: 41, scope: !1477)
!1504 = !DILocation(line: 205, column: 74, scope: !1477)
!1505 = !DILocation(line: 206, column: 20, scope: !1477)
!1506 = !DILocation(line: 206, column: 29, scope: !1477)
!1507 = !DILocation(line: 206, column: 58, scope: !1477)
!1508 = !DILocation(line: 206, column: 41, scope: !1477)
!1509 = !DILocation(line: 206, column: 74, scope: !1477)
!1510 = !DILocation(line: 207, column: 20, scope: !1477)
!1511 = !DILocation(line: 207, column: 29, scope: !1477)
!1512 = !DILocation(line: 207, column: 58, scope: !1477)
!1513 = !DILocation(line: 207, column: 41, scope: !1477)
!1514 = !DILocation(line: 207, column: 74, scope: !1477)
!1515 = !DILocation(line: 212, column: 17, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 212, column: 6)
!1517 = !DILocation(line: 212, column: 14, scope: !1516)
!1518 = !DILocation(line: 212, column: 27, scope: !1516)
!1519 = !DILocation(line: 214, column: 32, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 214, column: 11)
!1521 = !DILocation(line: 216, column: 43, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 216, column: 11)
!1523 = !DILocation(line: 216, column: 56, scope: !1522)
!1524 = !DILocation(line: 220, column: 19, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 220, column: 6)
!1526 = !DILocation(line: 220, column: 24, scope: !1525)
!1527 = !DILocation(line: 222, column: 13, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 222, column: 8)
!1529 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 221, column: 3)
!1530 = !DILocation(line: 222, column: 8, scope: !1529)
!1531 = !DILocation(line: 224, column: 10, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 223, column: 5)
!1533 = !DILocation(line: 229, column: 10, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 228, column: 5)
!1535 = !DILocation(line: 233, column: 24, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 233, column: 11)
!1537 = !DILocation(line: 233, column: 30, scope: !1536)
!1538 = !DILocation(line: 235, column: 13, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 235, column: 8)
!1540 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 234, column: 3)
!1541 = !DILocation(line: 235, column: 8, scope: !1540)
!1542 = !DILocation(line: 237, column: 10, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 236, column: 5)
!1544 = !DILocation(line: 242, column: 10, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 241, column: 5)
!1546 = !DILocation(line: 247, column: 3, scope: !1477)
!1547 = !DILocation(line: 250, column: 29, scope: !1495)
!1548 = !DILocation(line: 252, column: 11, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 251, column: 5)
!1550 = !DILocation(line: 254, column: 33, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 253, column: 7)
!1552 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 252, column: 11)
!1553 = !DILocation(line: 254, column: 16, scope: !1551)
!1554 = !DILocation(line: 254, column: 49, scope: !1551)
!1555 = !DILocation(line: 255, column: 7, scope: !1551)
!1556 = !DILocation(line: 258, column: 16, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 257, column: 7)
!1558 = !DILocation(line: 263, column: 28, scope: !1494)
!1559 = !DILocation(line: 263, column: 67, scope: !1494)
!1560 = !DILocation(line: 263, column: 50, scope: !1494)
!1561 = !DILocation(line: 263, column: 83, scope: !1494)
!1562 = !DILocation(line: 0, scope: !1494)
!1563 = !DILocation(line: 264, column: 28, scope: !1494)
!1564 = !DILocation(line: 264, column: 67, scope: !1494)
!1565 = !DILocation(line: 264, column: 50, scope: !1494)
!1566 = !DILocation(line: 264, column: 83, scope: !1494)
!1567 = !DILocation(line: 265, column: 28, scope: !1494)
!1568 = !DILocation(line: 265, column: 67, scope: !1494)
!1569 = !DILocation(line: 265, column: 50, scope: !1494)
!1570 = !DILocation(line: 265, column: 83, scope: !1494)
!1571 = !DILocation(line: 267, column: 41, scope: !1494)
!1572 = !DILocation(line: 267, column: 35, scope: !1494)
!1573 = !DILocation(line: 267, column: 53, scope: !1494)
!1574 = !DILocation(line: 267, column: 47, scope: !1494)
!1575 = !DILocation(line: 267, column: 65, scope: !1494)
!1576 = !DILocation(line: 267, column: 59, scope: !1494)
!1577 = !DILocation(line: 0, scope: !1394, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 267, column: 27, scope: !1494)
!1579 = !DILocation(line: 54, column: 9, scope: !1405, inlinedAt: !1578)
!1580 = !DILocation(line: 54, column: 7, scope: !1394, inlinedAt: !1578)
!1581 = !DILocation(line: 56, column: 11, scope: !1408, inlinedAt: !1578)
!1582 = !DILocation(line: 56, column: 9, scope: !1409, inlinedAt: !1578)
!1583 = !DILocation(line: 0, scope: !1412, inlinedAt: !1578)
!1584 = !DILocation(line: 65, column: 11, scope: !1414, inlinedAt: !1578)
!1585 = !DILocation(line: 65, column: 9, scope: !1415, inlinedAt: !1578)
!1586 = !DILocation(line: 0, scope: !1418, inlinedAt: !1578)
!1587 = !DILocation(line: 0, scope: !1405, inlinedAt: !1578)
!1588 = !DILocation(line: 267, column: 19, scope: !1494)
!1589 = !DILocation(line: 267, column: 17, scope: !1494)
!1590 = !DILocation(line: 268, column: 41, scope: !1494)
!1591 = !DILocation(line: 268, column: 35, scope: !1494)
!1592 = !DILocation(line: 268, column: 53, scope: !1494)
!1593 = !DILocation(line: 268, column: 47, scope: !1494)
!1594 = !DILocation(line: 268, column: 65, scope: !1494)
!1595 = !DILocation(line: 268, column: 59, scope: !1494)
!1596 = !DILocation(line: 0, scope: !1394, inlinedAt: !1597)
!1597 = distinct !DILocation(line: 268, column: 27, scope: !1494)
!1598 = !DILocation(line: 54, column: 9, scope: !1405, inlinedAt: !1597)
!1599 = !DILocation(line: 54, column: 7, scope: !1394, inlinedAt: !1597)
!1600 = !DILocation(line: 56, column: 11, scope: !1408, inlinedAt: !1597)
!1601 = !DILocation(line: 56, column: 9, scope: !1409, inlinedAt: !1597)
!1602 = !DILocation(line: 0, scope: !1412, inlinedAt: !1597)
!1603 = !DILocation(line: 65, column: 11, scope: !1414, inlinedAt: !1597)
!1604 = !DILocation(line: 65, column: 9, scope: !1415, inlinedAt: !1597)
!1605 = !DILocation(line: 0, scope: !1418, inlinedAt: !1597)
!1606 = !DILocation(line: 0, scope: !1405, inlinedAt: !1597)
!1607 = !DILocation(line: 268, column: 19, scope: !1494)
!1608 = !DILocation(line: 268, column: 12, scope: !1494)
!1609 = !DILocation(line: 268, column: 17, scope: !1494)
!1610 = !DILocation(line: 272, column: 9, scope: !1496)
!1611 = !DILocation(line: 274, column: 31, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 273, column: 5)
!1613 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 272, column: 9)
!1614 = !DILocation(line: 274, column: 14, scope: !1612)
!1615 = !DILocation(line: 274, column: 47, scope: !1612)
!1616 = !DILocation(line: 275, column: 5, scope: !1612)
!1617 = !DILocation(line: 278, column: 14, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 277, column: 5)
!1619 = !DILocation(line: 282, column: 9, scope: !1496)
!1620 = !DILocation(line: 284, column: 31, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 283, column: 5)
!1622 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 282, column: 9)
!1623 = !DILocation(line: 284, column: 14, scope: !1621)
!1624 = !DILocation(line: 284, column: 47, scope: !1621)
!1625 = !DILocation(line: 285, column: 5, scope: !1621)
!1626 = !DILocation(line: 288, column: 14, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 287, column: 5)
!1628 = !DILocation(line: 292, column: 9, scope: !1496)
!1629 = !DILocation(line: 294, column: 31, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 293, column: 5)
!1631 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 292, column: 9)
!1632 = !DILocation(line: 294, column: 14, scope: !1630)
!1633 = !DILocation(line: 294, column: 47, scope: !1630)
!1634 = !DILocation(line: 295, column: 5, scope: !1630)
!1635 = !DILocation(line: 298, column: 14, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 297, column: 5)
!1637 = !DILocation(line: 304, column: 1, scope: !1477)
