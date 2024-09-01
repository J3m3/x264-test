; ModuleID = 'ldecod_src/mb_access.c'
source_filename = "ldecod_src/mb_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }

@PicPos = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @mb_is_available(i32 noundef %mbAddr, ptr nocapture noundef readonly %currMB) local_unnamed_addr #0 !dbg !52 {
entry:
    #dbg_value(i32 %mbAddr, !1239, !DIExpression(), !1241)
    #dbg_value(ptr %currMB, !1240, !DIExpression(), !1241)
  %cmp = icmp slt i32 %mbAddr, 0, !dbg !1242
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !1244

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %currMB, align 8, !dbg !1245
  %dec_picture = getelementptr inbounds i8, ptr %0, i64 13520, !dbg !1246
  %1 = load ptr, ptr %dec_picture, align 8, !dbg !1246
  %PicSizeInMbs = getelementptr inbounds i8, ptr %1, i64 108, !dbg !1247
  %2 = load i32, ptr %PicSizeInMbs, align 4, !dbg !1247
  %cmp1.not = icmp sgt i32 %2, %mbAddr, !dbg !1248
  br i1 %cmp1.not, label %if.end, label %return, !dbg !1249

if.end:                                           ; preds = %lor.lhs.false
  %DeblockCall = getelementptr inbounds i8, ptr %currMB, i64 104, !dbg !1250
  %3 = load i32, ptr %DeblockCall, align 8, !dbg !1250
  %tobool.not = icmp eq i32 %3, 0, !dbg !1252
  br i1 %tobool.not, label %if.then2, label %if.end10, !dbg !1253

if.then2:                                         ; preds = %if.end
  %mb_data = getelementptr inbounds i8, ptr %0, i64 13512, !dbg !1254
  %4 = load ptr, ptr %mb_data, align 8, !dbg !1254
  %idxprom = zext nneg i32 %mbAddr to i64, !dbg !1257
  %slice_nr = getelementptr inbounds %struct.macroblock, ptr %4, i64 %idxprom, i32 21, !dbg !1258
  %5 = load i16, ptr %slice_nr, align 4, !dbg !1258
  %slice_nr4 = getelementptr inbounds i8, ptr %currMB, i64 108, !dbg !1259
  %6 = load i16, ptr %slice_nr4, align 4, !dbg !1259
  %cmp6.not = icmp eq i16 %5, %6, !dbg !1260
  br i1 %cmp6.not, label %if.end10, label %return, !dbg !1261

if.end10:                                         ; preds = %if.then2, %if.end
  br label %return, !dbg !1262

return:                                           ; preds = %if.then2, %entry, %lor.lhs.false, %if.end10
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.then2 ], !dbg !1241
  ret i32 %retval.0, !dbg !1263
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CheckAvailabilityOfNeighbors(ptr nocapture noundef %currMB) local_unnamed_addr #1 !dbg !1264 {
entry:
    #dbg_value(ptr %currMB, !1266, !DIExpression(), !1273)
  %0 = load ptr, ptr %currMB, align 8, !dbg !1274
  %dec_picture1 = getelementptr inbounds i8, ptr %0, i64 13520, !dbg !1275
  %1 = load ptr, ptr %dec_picture1, align 8, !dbg !1275
    #dbg_value(ptr %1, !1267, !DIExpression(), !1273)
  %mbAddrX = getelementptr inbounds i8, ptr %currMB, i64 24, !dbg !1276
  %2 = load i32, ptr %mbAddrX, align 8, !dbg !1276
    #dbg_value(i32 %2, !1268, !DIExpression(), !1273)
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %1, i64 100, !dbg !1277
  %3 = load i32, ptr %mb_aff_frame_flag, align 4, !dbg !1277
  %tobool.not = icmp eq i32 %3, 0, !dbg !1278
  %mbAddrB49 = getelementptr inbounds i8, ptr %currMB, i64 392, !dbg !1279
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1280

if.then:                                          ; preds = %entry
  %shr = ashr i32 %2, 1, !dbg !1281
    #dbg_value(i32 %shr, !1270, !DIExpression(), !1282)
  %sub = and i32 %2, -2, !dbg !1283
  %mul = add i32 %sub, -2, !dbg !1283
  %mbAddrA = getelementptr inbounds i8, ptr %currMB, i64 388, !dbg !1284
  store i32 %mul, ptr %mbAddrA, align 4, !dbg !1285
  %PicWidthInMbs = getelementptr inbounds i8, ptr %1, i64 104, !dbg !1286
  %4 = load i32, ptr %PicWidthInMbs, align 8, !dbg !1286
  %sub2 = sub i32 %shr, %4, !dbg !1287
  %mul3 = shl i32 %sub2, 1, !dbg !1288
  store i32 %mul3, ptr %mbAddrB49, align 8, !dbg !1289
  %5 = load i32, ptr %PicWidthInMbs, align 8, !dbg !1290
  %sub5 = sub i32 %shr, %5, !dbg !1291
  %add = shl i32 %sub5, 1, !dbg !1292
  %mul6 = add i32 %add, 2, !dbg !1292
  %mbAddrC = getelementptr inbounds i8, ptr %currMB, i64 396, !dbg !1293
  store i32 %mul6, ptr %mbAddrC, align 4, !dbg !1294
  %6 = load i32, ptr %PicWidthInMbs, align 8, !dbg !1295
  %7 = xor i32 %6, -1, !dbg !1296
  %sub9 = add i32 %shr, %7, !dbg !1296
  %mul10 = shl i32 %sub9, 1, !dbg !1297
  %mbAddrD = getelementptr inbounds i8, ptr %currMB, i64 400, !dbg !1298
  store i32 %mul10, ptr %mbAddrD, align 8, !dbg !1299
    #dbg_value(i32 %mul, !1239, !DIExpression(), !1300)
    #dbg_value(ptr %currMB, !1240, !DIExpression(), !1300)
  %cmp.i = icmp slt i32 %mul, 0, !dbg !1302
  br i1 %cmp.i, label %land.end, label %lor.lhs.false.i, !dbg !1303

lor.lhs.false.i:                                  ; preds = %if.then
  %8 = load ptr, ptr %dec_picture1, align 8, !dbg !1304
  %PicSizeInMbs.i = getelementptr inbounds i8, ptr %8, i64 108, !dbg !1305
  %9 = load i32, ptr %PicSizeInMbs.i, align 4, !dbg !1305
  %cmp1.not.i = icmp sgt i32 %9, %mul, !dbg !1306
  br i1 %cmp1.not.i, label %if.end.i, label %land.end, !dbg !1307

if.end.i:                                         ; preds = %lor.lhs.false.i
  %DeblockCall.i = getelementptr inbounds i8, ptr %currMB, i64 104, !dbg !1308
  %10 = load i32, ptr %DeblockCall.i, align 8, !dbg !1308
  %tobool.not.i = icmp eq i32 %10, 0, !dbg !1309
  br i1 %tobool.not.i, label %if.then2.i, label %land.rhs, !dbg !1310

if.then2.i:                                       ; preds = %if.end.i
  %mb_data.i = getelementptr inbounds i8, ptr %0, i64 13512, !dbg !1311
  %11 = load ptr, ptr %mb_data.i, align 8, !dbg !1311
  %idxprom.i = zext nneg i32 %mul to i64, !dbg !1312
  %slice_nr.i = getelementptr inbounds %struct.macroblock, ptr %11, i64 %idxprom.i, i32 21, !dbg !1313
  %12 = load i16, ptr %slice_nr.i, align 4, !dbg !1313
  %slice_nr4.i = getelementptr inbounds i8, ptr %currMB, i64 108, !dbg !1314
  %13 = load i16, ptr %slice_nr4.i, align 4, !dbg !1314
  %cmp6.not.i = icmp eq i16 %12, %13, !dbg !1315
  br i1 %cmp6.not.i, label %land.rhs, label %land.end, !dbg !1316

land.rhs:                                         ; preds = %if.then2.i, %if.end.i
  %14 = load ptr, ptr @PicPos, align 8, !dbg !1317
  %idxprom = sext i32 %shr to i64, !dbg !1317
  %arrayidx = getelementptr inbounds %struct.BlockPos, ptr %14, i64 %idxprom, !dbg !1317
  %15 = load i16, ptr %arrayidx, align 2, !dbg !1318
  %cmp = icmp ne i16 %15, 0, !dbg !1319
  %16 = zext i1 %cmp to i32, !dbg !1320
  br label %land.end

land.end:                                         ; preds = %if.then2.i, %if.then, %lor.lhs.false.i, %land.rhs
  %land.ext = phi i32 [ %16, %land.rhs ], [ 0, %lor.lhs.false.i ], [ 0, %if.then ], [ 0, %if.then2.i ], !dbg !1282
  %mbAvailA = getelementptr inbounds i8, ptr %currMB, i64 404, !dbg !1321
  store i32 %land.ext, ptr %mbAvailA, align 4, !dbg !1322
    #dbg_value(i32 %mul3, !1239, !DIExpression(), !1323)
    #dbg_value(ptr %currMB, !1240, !DIExpression(), !1323)
  %cmp.i171 = icmp slt i32 %mul3, 0, !dbg !1325
  br i1 %cmp.i171, label %mb_is_available.exit187, label %lor.lhs.false.i172, !dbg !1326

lor.lhs.false.i172:                               ; preds = %land.end
  %17 = load ptr, ptr %dec_picture1, align 8, !dbg !1327
  %PicSizeInMbs.i174 = getelementptr inbounds i8, ptr %17, i64 108, !dbg !1328
  %18 = load i32, ptr %PicSizeInMbs.i174, align 4, !dbg !1328
  %cmp1.not.i175 = icmp sgt i32 %18, %mul3, !dbg !1329
  br i1 %cmp1.not.i175, label %if.end.i177, label %mb_is_available.exit187, !dbg !1330

if.end.i177:                                      ; preds = %lor.lhs.false.i172
  %DeblockCall.i178 = getelementptr inbounds i8, ptr %currMB, i64 104, !dbg !1331
  %19 = load i32, ptr %DeblockCall.i178, align 8, !dbg !1331
  %tobool.not.i179 = icmp eq i32 %19, 0, !dbg !1332
  br i1 %tobool.not.i179, label %if.then2.i181, label %if.end10.i180, !dbg !1333

if.then2.i181:                                    ; preds = %if.end.i177
  %mb_data.i182 = getelementptr inbounds i8, ptr %0, i64 13512, !dbg !1334
  %20 = load ptr, ptr %mb_data.i182, align 8, !dbg !1334
  %idxprom.i183 = zext nneg i32 %mul3 to i64, !dbg !1335
  %slice_nr.i184 = getelementptr inbounds %struct.macroblock, ptr %20, i64 %idxprom.i183, i32 21, !dbg !1336
  %21 = load i16, ptr %slice_nr.i184, align 4, !dbg !1336
  %slice_nr4.i185 = getelementptr inbounds i8, ptr %currMB, i64 108, !dbg !1337
  %22 = load i16, ptr %slice_nr4.i185, align 4, !dbg !1337
  %cmp6.not.i186 = icmp eq i16 %21, %22, !dbg !1338
  br i1 %cmp6.not.i186, label %if.end10.i180, label %mb_is_available.exit187, !dbg !1339

if.end10.i180:                                    ; preds = %if.then2.i181, %if.end.i177
  br label %mb_is_available.exit187, !dbg !1340

mb_is_available.exit187:                          ; preds = %land.end, %lor.lhs.false.i172, %if.then2.i181, %if.end10.i180
  %retval.0.i176 = phi i32 [ 1, %if.end10.i180 ], [ 0, %lor.lhs.false.i172 ], [ 0, %land.end ], [ 0, %if.then2.i181 ], !dbg !1323
  %mbAvailB = getelementptr inbounds i8, ptr %currMB, i64 408, !dbg !1341
  store i32 %retval.0.i176, ptr %mbAvailB, align 8, !dbg !1342
    #dbg_value(i32 %mul6, !1239, !DIExpression(), !1343)
    #dbg_value(ptr %currMB, !1240, !DIExpression(), !1343)
  %cmp.i188 = icmp slt i32 %mul6, 0, !dbg !1345
  br i1 %cmp.i188, label %land.end27, label %lor.lhs.false.i189, !dbg !1346

lor.lhs.false.i189:                               ; preds = %mb_is_available.exit187
  %23 = load ptr, ptr %dec_picture1, align 8, !dbg !1347
  %PicSizeInMbs.i191 = getelementptr inbounds i8, ptr %23, i64 108, !dbg !1348
  %24 = load i32, ptr %PicSizeInMbs.i191, align 4, !dbg !1348
  %cmp1.not.i192 = icmp sgt i32 %24, %mul6, !dbg !1349
  br i1 %cmp1.not.i192, label %if.end.i194, label %land.end27, !dbg !1350

if.end.i194:                                      ; preds = %lor.lhs.false.i189
  %DeblockCall.i195 = getelementptr inbounds i8, ptr %currMB, i64 104, !dbg !1351
  %25 = load i32, ptr %DeblockCall.i195, align 8, !dbg !1351
  %tobool.not.i196 = icmp eq i32 %25, 0, !dbg !1352
  br i1 %tobool.not.i196, label %if.then2.i198, label %land.rhs19, !dbg !1353

if.then2.i198:                                    ; preds = %if.end.i194
  %mb_data.i199 = getelementptr inbounds i8, ptr %0, i64 13512, !dbg !1354
  %26 = load ptr, ptr %mb_data.i199, align 8, !dbg !1354
  %idxprom.i200 = zext nneg i32 %mul6 to i64, !dbg !1355
  %slice_nr.i201 = getelementptr inbounds %struct.macroblock, ptr %26, i64 %idxprom.i200, i32 21, !dbg !1356
  %27 = load i16, ptr %slice_nr.i201, align 4, !dbg !1356
  %slice_nr4.i202 = getelementptr inbounds i8, ptr %currMB, i64 108, !dbg !1357
  %28 = load i16, ptr %slice_nr4.i202, align 4, !dbg !1357
  %cmp6.not.i203 = icmp eq i16 %27, %28, !dbg !1358
  br i1 %cmp6.not.i203, label %land.rhs19, label %land.end27, !dbg !1359

land.rhs19:                                       ; preds = %if.then2.i198, %if.end.i194
  %29 = load ptr, ptr @PicPos, align 8, !dbg !1360
  %30 = sext i32 %shr to i64, !dbg !1360
  %31 = getelementptr %struct.BlockPos, ptr %29, i64 %30, !dbg !1360
  %arrayidx22 = getelementptr i8, ptr %31, i64 4, !dbg !1360
  %32 = load i16, ptr %arrayidx22, align 2, !dbg !1361
  %cmp25 = icmp ne i16 %32, 0, !dbg !1362
  %33 = zext i1 %cmp25 to i32, !dbg !1363
  br label %land.end27

land.end27:                                       ; preds = %if.then2.i198, %mb_is_available.exit187, %lor.lhs.false.i189, %land.rhs19
  %land.ext28 = phi i32 [ %33, %land.rhs19 ], [ 0, %lor.lhs.false.i189 ], [ 0, %mb_is_available.exit187 ], [ 0, %if.then2.i198 ], !dbg !1282
  %mbAvailC = getelementptr inbounds i8, ptr %currMB, i64 412, !dbg !1364
  store i32 %land.ext28, ptr %mbAvailC, align 4, !dbg !1365
    #dbg_value(i32 %mul10, !1239, !DIExpression(), !1366)
    #dbg_value(ptr %currMB, !1240, !DIExpression(), !1366)
  %cmp.i205 = icmp slt i32 %mul10, 0, !dbg !1368
  br i1 %cmp.i205, label %if.end, label %lor.lhs.false.i206, !dbg !1369

lor.lhs.false.i206:                               ; preds = %land.end27
  %34 = load ptr, ptr %dec_picture1, align 8, !dbg !1370
  %PicSizeInMbs.i208 = getelementptr inbounds i8, ptr %34, i64 108, !dbg !1371
  %35 = load i32, ptr %PicSizeInMbs.i208, align 4, !dbg !1371
  %cmp1.not.i209 = icmp sgt i32 %35, %mul10, !dbg !1372
  br i1 %cmp1.not.i209, label %if.end.i211, label %if.end, !dbg !1373

if.end.i211:                                      ; preds = %lor.lhs.false.i206
  %DeblockCall.i212 = getelementptr inbounds i8, ptr %currMB, i64 104, !dbg !1374
  %36 = load i32, ptr %DeblockCall.i212, align 8, !dbg !1374
  %tobool.not.i213 = icmp eq i32 %36, 0, !dbg !1375
  br i1 %tobool.not.i213, label %if.then2.i215, label %land.rhs32, !dbg !1376

if.then2.i215:                                    ; preds = %if.end.i211
  %mb_data.i216 = getelementptr inbounds i8, ptr %0, i64 13512, !dbg !1377
  %37 = load ptr, ptr %mb_data.i216, align 8, !dbg !1377
  %idxprom.i217 = zext nneg i32 %mul10 to i64, !dbg !1378
  %slice_nr.i218 = getelementptr inbounds %struct.macroblock, ptr %37, i64 %idxprom.i217, i32 21, !dbg !1379
  %38 = load i16, ptr %slice_nr.i218, align 4, !dbg !1379
  %slice_nr4.i219 = getelementptr inbounds i8, ptr %currMB, i64 108, !dbg !1380
  %39 = load i16, ptr %slice_nr4.i219, align 4, !dbg !1380
  %cmp6.not.i220 = icmp eq i16 %38, %39, !dbg !1381
  br i1 %cmp6.not.i220, label %land.rhs32, label %if.end, !dbg !1382

land.rhs32:                                       ; preds = %if.then2.i215, %if.end.i211
  %40 = load ptr, ptr @PicPos, align 8, !dbg !1383
  %idxprom33 = sext i32 %shr to i64, !dbg !1383
  %arrayidx34 = getelementptr inbounds %struct.BlockPos, ptr %40, i64 %idxprom33, !dbg !1383
  %41 = load i16, ptr %arrayidx34, align 2, !dbg !1384
  %cmp37 = icmp ne i16 %41, 0, !dbg !1385
  %42 = zext i1 %cmp37 to i32, !dbg !1386
  br label %if.end

if.else:                                          ; preds = %entry
  %sub41 = add nsw i32 %2, -1, !dbg !1387
  %mbAddrA42 = getelementptr inbounds i8, ptr %currMB, i64 388, !dbg !1389
  store i32 %sub41, ptr %mbAddrA42, align 4, !dbg !1390
  %PicWidthInMbs43 = getelementptr inbounds i8, ptr %1, i64 104, !dbg !1391
  %43 = load i32, ptr %PicWidthInMbs43, align 8, !dbg !1391
  %sub44 = sub i32 %2, %43, !dbg !1392
  %sub45 = add i32 %sub44, -1, !dbg !1393
  %mbAddrD46 = getelementptr inbounds i8, ptr %currMB, i64 400, !dbg !1394
  store i32 %sub45, ptr %mbAddrD46, align 8, !dbg !1395
  store i32 %sub44, ptr %mbAddrB49, align 8, !dbg !1396
  %add51 = add nsw i32 %sub44, 1, !dbg !1397
  %mbAddrC52 = getelementptr inbounds i8, ptr %currMB, i64 396, !dbg !1398
  store i32 %add51, ptr %mbAddrC52, align 4, !dbg !1399
    #dbg_value(i32 %sub41, !1239, !DIExpression(), !1400)
    #dbg_value(ptr %currMB, !1240, !DIExpression(), !1400)
  %cmp.i222 = icmp slt i32 %2, 1, !dbg !1402
  br i1 %cmp.i222, label %land.end63, label %lor.lhs.false.i223, !dbg !1403

lor.lhs.false.i223:                               ; preds = %if.else
  %44 = load ptr, ptr %dec_picture1, align 8, !dbg !1404
  %PicSizeInMbs.i225 = getelementptr inbounds i8, ptr %44, i64 108, !dbg !1405
  %45 = load i32, ptr %PicSizeInMbs.i225, align 4, !dbg !1405
  %cmp1.not.i226.not = icmp slt i32 %45, %2, !dbg !1406
  br i1 %cmp1.not.i226.not, label %land.end63, label %if.end.i228, !dbg !1407

if.end.i228:                                      ; preds = %lor.lhs.false.i223
  %DeblockCall.i229 = getelementptr inbounds i8, ptr %currMB, i64 104, !dbg !1408
  %46 = load i32, ptr %DeblockCall.i229, align 8, !dbg !1408
  %tobool.not.i230 = icmp eq i32 %46, 0, !dbg !1409
  br i1 %tobool.not.i230, label %if.then2.i232, label %land.rhs56, !dbg !1410

if.then2.i232:                                    ; preds = %if.end.i228
  %mb_data.i233 = getelementptr inbounds i8, ptr %0, i64 13512, !dbg !1411
  %47 = load ptr, ptr %mb_data.i233, align 8, !dbg !1411
  %idxprom.i234 = zext nneg i32 %sub41 to i64, !dbg !1412
  %slice_nr.i235 = getelementptr inbounds %struct.macroblock, ptr %47, i64 %idxprom.i234, i32 21, !dbg !1413
  %48 = load i16, ptr %slice_nr.i235, align 4, !dbg !1413
  %slice_nr4.i236 = getelementptr inbounds i8, ptr %currMB, i64 108, !dbg !1414
  %49 = load i16, ptr %slice_nr4.i236, align 4, !dbg !1414
  %cmp6.not.i237 = icmp eq i16 %48, %49, !dbg !1415
  br i1 %cmp6.not.i237, label %land.rhs56, label %land.end63, !dbg !1416

land.rhs56:                                       ; preds = %if.then2.i232, %if.end.i228
  %50 = load ptr, ptr @PicPos, align 8, !dbg !1417
  %idxprom57 = zext nneg i32 %2 to i64, !dbg !1417
  %arrayidx58 = getelementptr inbounds %struct.BlockPos, ptr %50, i64 %idxprom57, !dbg !1417
  %51 = load i16, ptr %arrayidx58, align 2, !dbg !1418
  %cmp61 = icmp ne i16 %51, 0, !dbg !1419
  %52 = zext i1 %cmp61 to i32, !dbg !1420
  br label %land.end63

land.end63:                                       ; preds = %if.then2.i232, %if.else, %lor.lhs.false.i223, %land.rhs56
  %land.ext64 = phi i32 [ %52, %land.rhs56 ], [ 0, %lor.lhs.false.i223 ], [ 0, %if.else ], [ 0, %if.then2.i232 ], !dbg !1421
  %mbAvailA65 = getelementptr inbounds i8, ptr %currMB, i64 404, !dbg !1422
  store i32 %land.ext64, ptr %mbAvailA65, align 4, !dbg !1423
    #dbg_value(i32 %sub45, !1239, !DIExpression(), !1424)
    #dbg_value(ptr %currMB, !1240, !DIExpression(), !1424)
  %cmp.i239 = icmp slt i32 %sub45, 0, !dbg !1426
  br i1 %cmp.i239, label %land.end76, label %lor.lhs.false.i240, !dbg !1427

lor.lhs.false.i240:                               ; preds = %land.end63
  %53 = load ptr, ptr %dec_picture1, align 8, !dbg !1428
  %PicSizeInMbs.i242 = getelementptr inbounds i8, ptr %53, i64 108, !dbg !1429
  %54 = load i32, ptr %PicSizeInMbs.i242, align 4, !dbg !1429
  %cmp1.not.i243 = icmp sgt i32 %54, %sub45, !dbg !1430
  br i1 %cmp1.not.i243, label %if.end.i245, label %land.end76, !dbg !1431

if.end.i245:                                      ; preds = %lor.lhs.false.i240
  %DeblockCall.i246 = getelementptr inbounds i8, ptr %currMB, i64 104, !dbg !1432
  %55 = load i32, ptr %DeblockCall.i246, align 8, !dbg !1432
  %tobool.not.i247 = icmp eq i32 %55, 0, !dbg !1433
  br i1 %tobool.not.i247, label %if.then2.i249, label %land.rhs69, !dbg !1434

if.then2.i249:                                    ; preds = %if.end.i245
  %mb_data.i250 = getelementptr inbounds i8, ptr %0, i64 13512, !dbg !1435
  %56 = load ptr, ptr %mb_data.i250, align 8, !dbg !1435
  %idxprom.i251 = zext nneg i32 %sub45 to i64, !dbg !1436
  %slice_nr.i252 = getelementptr inbounds %struct.macroblock, ptr %56, i64 %idxprom.i251, i32 21, !dbg !1437
  %57 = load i16, ptr %slice_nr.i252, align 4, !dbg !1437
  %slice_nr4.i253 = getelementptr inbounds i8, ptr %currMB, i64 108, !dbg !1438
  %58 = load i16, ptr %slice_nr4.i253, align 4, !dbg !1438
  %cmp6.not.i254 = icmp eq i16 %57, %58, !dbg !1439
  br i1 %cmp6.not.i254, label %land.rhs69, label %land.end76.thread, !dbg !1440

land.rhs69:                                       ; preds = %if.then2.i249, %if.end.i245
  %59 = load ptr, ptr @PicPos, align 8, !dbg !1441
  %idxprom70 = sext i32 %2 to i64, !dbg !1441
  %arrayidx71 = getelementptr inbounds %struct.BlockPos, ptr %59, i64 %idxprom70, !dbg !1441
  %60 = load i16, ptr %arrayidx71, align 2, !dbg !1442
  %cmp74 = icmp ne i16 %60, 0, !dbg !1443
  %61 = zext i1 %cmp74 to i32, !dbg !1444
  br label %land.end76.thread

land.end76.thread:                                ; preds = %if.then2.i249, %land.rhs69
  %land.ext77.ph = phi i32 [ 0, %if.then2.i249 ], [ %61, %land.rhs69 ]
  %mbAvailD78303 = getelementptr inbounds i8, ptr %currMB, i64 416, !dbg !1445
  store i32 %land.ext77.ph, ptr %mbAvailD78303, align 8, !dbg !1446
    #dbg_value(i32 %add51, !1239, !DIExpression(), !1447)
    #dbg_value(ptr %currMB, !1240, !DIExpression(), !1447)
  br label %lor.lhs.false.i257, !dbg !1449

land.end76:                                       ; preds = %land.end63, %lor.lhs.false.i240
  %mbAvailD78 = getelementptr inbounds i8, ptr %currMB, i64 416, !dbg !1445
  store i32 0, ptr %mbAvailD78, align 8, !dbg !1446
    #dbg_value(i32 %add51, !1239, !DIExpression(), !1447)
    #dbg_value(ptr %currMB, !1240, !DIExpression(), !1447)
  %cmp.i256 = icmp slt i32 %sub44, -1, !dbg !1450
  br i1 %cmp.i256, label %land.end90.thread, label %lor.lhs.false.i257, !dbg !1449

land.end90.thread:                                ; preds = %land.end76
  %mbAvailC92306 = getelementptr inbounds i8, ptr %currMB, i64 412, !dbg !1451
  store i32 0, ptr %mbAvailC92306, align 4, !dbg !1452
    #dbg_value(i32 %sub44, !1239, !DIExpression(), !1453)
    #dbg_value(ptr %currMB, !1240, !DIExpression(), !1453)
  br label %if.end, !dbg !1455

lor.lhs.false.i257:                               ; preds = %land.end76.thread, %land.end76
  %62 = load ptr, ptr %dec_picture1, align 8, !dbg !1456
  %PicSizeInMbs.i259 = getelementptr inbounds i8, ptr %62, i64 108, !dbg !1457
  %63 = load i32, ptr %PicSizeInMbs.i259, align 4, !dbg !1457
  %cmp1.not.i260 = icmp sgt i32 %63, %add51, !dbg !1458
  br i1 %cmp1.not.i260, label %if.end.i262, label %land.end90, !dbg !1459

if.end.i262:                                      ; preds = %lor.lhs.false.i257
  %DeblockCall.i263 = getelementptr inbounds i8, ptr %currMB, i64 104, !dbg !1460
  %64 = load i32, ptr %DeblockCall.i263, align 8, !dbg !1460
  %tobool.not.i264 = icmp eq i32 %64, 0, !dbg !1461
  br i1 %tobool.not.i264, label %if.then2.i266, label %land.rhs82, !dbg !1462

if.then2.i266:                                    ; preds = %if.end.i262
  %mb_data.i267 = getelementptr inbounds i8, ptr %0, i64 13512, !dbg !1463
  %65 = load ptr, ptr %mb_data.i267, align 8, !dbg !1463
  %idxprom.i268 = zext nneg i32 %add51 to i64, !dbg !1464
  %slice_nr.i269 = getelementptr inbounds %struct.macroblock, ptr %65, i64 %idxprom.i268, i32 21, !dbg !1465
  %66 = load i16, ptr %slice_nr.i269, align 4, !dbg !1465
  %slice_nr4.i270 = getelementptr inbounds i8, ptr %currMB, i64 108, !dbg !1466
  %67 = load i16, ptr %slice_nr4.i270, align 4, !dbg !1466
  %cmp6.not.i271 = icmp eq i16 %66, %67, !dbg !1467
  br i1 %cmp6.not.i271, label %land.rhs82, label %land.end90, !dbg !1468

land.rhs82:                                       ; preds = %if.then2.i266, %if.end.i262
  %68 = load ptr, ptr @PicPos, align 8, !dbg !1469
  %69 = sext i32 %2 to i64, !dbg !1469
  %70 = getelementptr %struct.BlockPos, ptr %68, i64 %69, !dbg !1469
  %arrayidx85 = getelementptr i8, ptr %70, i64 4, !dbg !1469
  %71 = load i16, ptr %arrayidx85, align 2, !dbg !1470
  %cmp88 = icmp ne i16 %71, 0, !dbg !1471
  %72 = zext i1 %cmp88 to i32, !dbg !1472
  br label %land.end90

land.end90:                                       ; preds = %if.then2.i266, %lor.lhs.false.i257, %land.rhs82
  %land.ext91 = phi i32 [ %72, %land.rhs82 ], [ 0, %lor.lhs.false.i257 ], [ 0, %if.then2.i266 ], !dbg !1421
  %mbAvailC92 = getelementptr inbounds i8, ptr %currMB, i64 412, !dbg !1451
  store i32 %land.ext91, ptr %mbAvailC92, align 4, !dbg !1452
    #dbg_value(i32 %sub44, !1239, !DIExpression(), !1453)
    #dbg_value(ptr %currMB, !1240, !DIExpression(), !1453)
  %cmp.i273 = icmp slt i32 %sub44, 0, !dbg !1473
  br i1 %cmp.i273, label %if.end, label %lor.lhs.false.i274, !dbg !1455

lor.lhs.false.i274:                               ; preds = %land.end90
  %73 = load ptr, ptr %dec_picture1, align 8, !dbg !1474
  %PicSizeInMbs.i276 = getelementptr inbounds i8, ptr %73, i64 108, !dbg !1475
  %74 = load i32, ptr %PicSizeInMbs.i276, align 4, !dbg !1475
  %cmp1.not.i277 = icmp sgt i32 %74, %sub44, !dbg !1476
  br i1 %cmp1.not.i277, label %if.end.i279, label %if.end, !dbg !1477

if.end.i279:                                      ; preds = %lor.lhs.false.i274
  %DeblockCall.i280 = getelementptr inbounds i8, ptr %currMB, i64 104, !dbg !1478
  %75 = load i32, ptr %DeblockCall.i280, align 8, !dbg !1478
  %tobool.not.i281 = icmp eq i32 %75, 0, !dbg !1479
  br i1 %tobool.not.i281, label %if.then2.i283, label %if.end10.i282, !dbg !1480

if.then2.i283:                                    ; preds = %if.end.i279
  %mb_data.i284 = getelementptr inbounds i8, ptr %0, i64 13512, !dbg !1481
  %76 = load ptr, ptr %mb_data.i284, align 8, !dbg !1481
  %idxprom.i285 = zext nneg i32 %sub44 to i64, !dbg !1482
  %slice_nr.i286 = getelementptr inbounds %struct.macroblock, ptr %76, i64 %idxprom.i285, i32 21, !dbg !1483
  %77 = load i16, ptr %slice_nr.i286, align 4, !dbg !1483
  %slice_nr4.i287 = getelementptr inbounds i8, ptr %currMB, i64 108, !dbg !1484
  %78 = load i16, ptr %slice_nr4.i287, align 4, !dbg !1484
  %cmp6.not.i288 = icmp eq i16 %77, %78, !dbg !1485
  br i1 %cmp6.not.i288, label %if.end10.i282, label %if.end, !dbg !1486

if.end10.i282:                                    ; preds = %if.then2.i283, %if.end.i279
  br label %if.end, !dbg !1487

if.end:                                           ; preds = %if.end10.i282, %if.then2.i283, %lor.lhs.false.i274, %land.end90, %land.end90.thread, %land.rhs32, %lor.lhs.false.i206, %land.end27, %if.then2.i215
  %.sink = phi i64 [ 416, %if.then2.i215 ], [ 416, %land.end27 ], [ 416, %lor.lhs.false.i206 ], [ 416, %land.rhs32 ], [ 408, %land.end90.thread ], [ 408, %land.end90 ], [ 408, %lor.lhs.false.i274 ], [ 408, %if.then2.i283 ], [ 408, %if.end10.i282 ]
  %retval.0.i278.sink = phi i32 [ 0, %if.then2.i215 ], [ 0, %land.end27 ], [ 0, %lor.lhs.false.i206 ], [ %42, %land.rhs32 ], [ 0, %land.end90.thread ], [ 0, %land.end90 ], [ 0, %lor.lhs.false.i274 ], [ 0, %if.then2.i283 ], [ 1, %if.end10.i282 ]
  %79 = phi i32 [ %mul3, %if.then2.i215 ], [ %mul3, %land.end27 ], [ %mul3, %lor.lhs.false.i206 ], [ %mul3, %land.rhs32 ], [ %sub44, %land.end90.thread ], [ %sub44, %land.end90 ], [ %sub44, %lor.lhs.false.i274 ], [ %sub44, %if.then2.i283 ], [ %sub44, %if.end10.i282 ]
  %80 = phi i32 [ %retval.0.i176, %if.then2.i215 ], [ %retval.0.i176, %land.end27 ], [ %retval.0.i176, %lor.lhs.false.i206 ], [ %retval.0.i176, %land.rhs32 ], [ 0, %land.end90.thread ], [ 0, %land.end90 ], [ 0, %lor.lhs.false.i274 ], [ 0, %if.then2.i283 ], [ 1, %if.end10.i282 ]
  %81 = phi i32 [ %mul, %if.then2.i215 ], [ %mul, %land.end27 ], [ %mul, %lor.lhs.false.i206 ], [ %mul, %land.rhs32 ], [ %sub41, %land.end90.thread ], [ %sub41, %land.end90 ], [ %sub41, %lor.lhs.false.i274 ], [ %sub41, %if.then2.i283 ], [ %sub41, %if.end10.i282 ]
  %82 = phi i32 [ %land.ext, %if.then2.i215 ], [ %land.ext, %land.end27 ], [ %land.ext, %lor.lhs.false.i206 ], [ %land.ext, %land.rhs32 ], [ %land.ext64, %land.end90.thread ], [ %land.ext64, %land.end90 ], [ %land.ext64, %lor.lhs.false.i274 ], [ %land.ext64, %if.then2.i283 ], [ %land.ext64, %if.end10.i282 ], !dbg !1488
  %mbAvailB95 = getelementptr inbounds i8, ptr %currMB, i64 %.sink, !dbg !1279
  store i32 %retval.0.i278.sink, ptr %mbAvailB95, align 8, !dbg !1279
  %tobool97.not = icmp eq i32 %82, 0, !dbg !1489
  br i1 %tobool97.not, label %cond.end, label %cond.true, !dbg !1489

cond.true:                                        ; preds = %if.end
  %mb_data = getelementptr inbounds i8, ptr %0, i64 13512, !dbg !1490
  %83 = load ptr, ptr %mb_data, align 8, !dbg !1490
  %idxprom100 = sext i32 %81 to i64, !dbg !1491
  %arrayidx101 = getelementptr inbounds %struct.macroblock, ptr %83, i64 %idxprom100, !dbg !1491
  br label %cond.end, !dbg !1489

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi ptr [ %arrayidx101, %cond.true ], [ null, %if.end ], !dbg !1489
  %mb_left = getelementptr inbounds i8, ptr %currMB, i64 128, !dbg !1492
  store ptr %cond, ptr %mb_left, align 8, !dbg !1493
  %tobool103.not = icmp eq i32 %80, 0, !dbg !1494
  br i1 %tobool103.not, label %cond.end111, label %cond.true104, !dbg !1494

cond.true104:                                     ; preds = %cond.end
  %mb_data106 = getelementptr inbounds i8, ptr %0, i64 13512, !dbg !1495
  %84 = load ptr, ptr %mb_data106, align 8, !dbg !1495
  %idxprom108 = sext i32 %79 to i64, !dbg !1496
  %arrayidx109 = getelementptr inbounds %struct.macroblock, ptr %84, i64 %idxprom108, !dbg !1496
  br label %cond.end111, !dbg !1494

cond.end111:                                      ; preds = %cond.end, %cond.true104
  %cond112 = phi ptr [ %arrayidx109, %cond.true104 ], [ null, %cond.end ], !dbg !1494
  %mb_up = getelementptr inbounds i8, ptr %currMB, i64 120, !dbg !1497
  store ptr %cond112, ptr %mb_up, align 8, !dbg !1498
  ret void, !dbg !1499
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @get_mb_block_pos_normal(i32 noundef %mb_addr, ptr nocapture noundef writeonly %x, ptr nocapture noundef writeonly %y) local_unnamed_addr #1 !dbg !1500 {
entry:
    #dbg_value(i32 %mb_addr, !1502, !DIExpression(), !1507)
    #dbg_value(ptr %x, !1503, !DIExpression(), !1507)
    #dbg_value(ptr %y, !1504, !DIExpression(), !1507)
  %0 = load ptr, ptr @PicPos, align 8, !dbg !1508
  %idxprom = sext i32 %mb_addr to i64, !dbg !1508
  %arrayidx = getelementptr inbounds %struct.BlockPos, ptr %0, i64 %idxprom, !dbg !1508
    #dbg_value(ptr %arrayidx, !1505, !DIExpression(), !1507)
  %1 = load i16, ptr %arrayidx, align 2, !dbg !1509
  store i16 %1, ptr %x, align 2, !dbg !1510
  %y2 = getelementptr inbounds i8, ptr %arrayidx, i64 2, !dbg !1511
  %2 = load i16, ptr %y2, align 2, !dbg !1511
  store i16 %2, ptr %y, align 2, !dbg !1512
  ret void, !dbg !1513
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @get_mb_block_pos_mbaff(i32 noundef %mb_addr, ptr nocapture noundef writeonly %x, ptr nocapture noundef writeonly %y) local_unnamed_addr #1 !dbg !1514 {
entry:
    #dbg_value(i32 %mb_addr, !1516, !DIExpression(), !1520)
    #dbg_value(ptr %x, !1517, !DIExpression(), !1520)
    #dbg_value(ptr %y, !1518, !DIExpression(), !1520)
  %0 = load ptr, ptr @PicPos, align 8, !dbg !1521
  %shr = ashr i32 %mb_addr, 1, !dbg !1522
  %idxprom = sext i32 %shr to i64, !dbg !1521
  %arrayidx = getelementptr inbounds %struct.BlockPos, ptr %0, i64 %idxprom, !dbg !1521
    #dbg_value(ptr %arrayidx, !1519, !DIExpression(), !1520)
  %1 = load i16, ptr %arrayidx, align 2, !dbg !1523
  store i16 %1, ptr %x, align 2, !dbg !1524
  %y2 = getelementptr inbounds i8, ptr %arrayidx, i64 2, !dbg !1525
  %2 = load i16, ptr %y2, align 2, !dbg !1525
  %conv = sext i16 %2 to i32, !dbg !1526
  %shl = shl nsw i32 %conv, 1, !dbg !1527
  %and = and i32 %mb_addr, 1, !dbg !1528
  %add = or disjoint i32 %shl, %and, !dbg !1529
  %conv3 = trunc i32 %add to i16, !dbg !1530
  store i16 %conv3, ptr %y, align 2, !dbg !1531
  ret void, !dbg !1532
}

; Function Attrs: nounwind uwtable
define dso_local void @get_mb_pos(ptr nocapture noundef readonly %p_Vid, i32 noundef %mb_addr, ptr nocapture noundef readonly %mb_size, ptr noundef %x, ptr noundef %y) local_unnamed_addr #2 !dbg !1533 {
entry:
    #dbg_value(ptr %p_Vid, !1537, !DIExpression(), !1542)
    #dbg_value(i32 %mb_addr, !1538, !DIExpression(), !1542)
    #dbg_value(ptr %mb_size, !1539, !DIExpression(), !1542)
    #dbg_value(ptr %x, !1540, !DIExpression(), !1542)
    #dbg_value(ptr %y, !1541, !DIExpression(), !1542)
  %get_mb_block_pos = getelementptr inbounds i8, ptr %p_Vid, i64 856752, !dbg !1543
  %0 = load ptr, ptr %get_mb_block_pos, align 8, !dbg !1543
  tail call void %0(i32 noundef %mb_addr, ptr noundef %x, ptr noundef %y) #3, !dbg !1544
  %1 = load i16, ptr %x, align 2, !dbg !1545
  %2 = load i32, ptr %mb_size, align 4, !dbg !1546
  %3 = trunc i32 %2 to i16, !dbg !1547
  %conv1 = mul i16 %1, %3, !dbg !1547
  store i16 %conv1, ptr %x, align 2, !dbg !1548
  %4 = load i16, ptr %y, align 2, !dbg !1549
  %arrayidx3 = getelementptr inbounds i8, ptr %mb_size, i64 4, !dbg !1550
  %5 = load i32, ptr %arrayidx3, align 4, !dbg !1550
  %6 = trunc i32 %5 to i16, !dbg !1551
  %conv5 = mul i16 %4, %6, !dbg !1551
  store i16 %conv5, ptr %y, align 2, !dbg !1552
  ret void, !dbg !1553
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @getNonAffNeighbour(ptr nocapture noundef readonly %currMB, i32 noundef %xN, i32 noundef %yN, ptr nocapture noundef readonly %mb_size, ptr nocapture noundef %pix) local_unnamed_addr #1 !dbg !1554 {
entry:
    #dbg_value(ptr %currMB, !1556, !DIExpression(), !1566)
    #dbg_value(i32 %xN, !1557, !DIExpression(), !1566)
    #dbg_value(i32 %yN, !1558, !DIExpression(), !1566)
    #dbg_value(ptr %mb_size, !1559, !DIExpression(), !1566)
    #dbg_value(ptr %pix, !1560, !DIExpression(), !1566)
  %0 = load i32, ptr %mb_size, align 4, !dbg !1567
    #dbg_value(i32 %0, !1561, !DIExpression(), !1566)
  %arrayidx1 = getelementptr inbounds i8, ptr %mb_size, i64 4, !dbg !1568
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !1568
    #dbg_value(i32 %1, !1562, !DIExpression(), !1566)
  %cmp = icmp slt i32 %xN, 0, !dbg !1569
  br i1 %cmp, label %if.then, label %if.else11, !dbg !1571

if.then:                                          ; preds = %entry
  %cmp2 = icmp slt i32 %yN, 0, !dbg !1572
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !1575

if.then3:                                         ; preds = %if.then
  %mbAddrD = getelementptr inbounds i8, ptr %currMB, i64 400, !dbg !1576
  br label %if.end37, !dbg !1578

if.else:                                          ; preds = %if.then
  %cmp4 = icmp sgt i32 %1, %yN, !dbg !1579
  br i1 %cmp4, label %if.then5, label %lor.lhs.false.sink.split, !dbg !1581

if.then5:                                         ; preds = %if.else
  %mbAddrA = getelementptr inbounds i8, ptr %currMB, i64 388, !dbg !1582
  br label %if.end37, !dbg !1584

if.else11:                                        ; preds = %entry
  %cmp12 = icmp sgt i32 %0, %xN, !dbg !1585
  %cmp14 = icmp slt i32 %yN, 0
  br i1 %cmp12, label %if.then13, label %if.else27, !dbg !1587

if.then13:                                        ; preds = %if.else11
  br i1 %cmp14, label %if.then15, label %if.else18, !dbg !1588

if.then15:                                        ; preds = %if.then13
  %mbAddrB = getelementptr inbounds i8, ptr %currMB, i64 392, !dbg !1590
  br label %if.end37, !dbg !1593

if.else18:                                        ; preds = %if.then13
  %cmp19 = icmp sgt i32 %1, %yN, !dbg !1594
  br i1 %cmp19, label %if.end37.thread105, label %lor.lhs.false.sink.split, !dbg !1596

if.end37.thread105:                               ; preds = %if.else18
  %mbAddrX = getelementptr inbounds i8, ptr %currMB, i64 24, !dbg !1597
  %2 = load i32, ptr %mbAddrX, align 8, !dbg !1597
  %mb_addr21 = getelementptr inbounds i8, ptr %pix, i64 4, !dbg !1599
  store i32 %2, ptr %mb_addr21, align 4, !dbg !1600
  store i32 1, ptr %pix, align 4, !dbg !1601
  br label %if.then40, !dbg !1602

if.else27:                                        ; preds = %if.else11
  br i1 %cmp14, label %if.then30, label %lor.lhs.false.sink.split, !dbg !1603

if.then30:                                        ; preds = %if.else27
  %mbAddrC = getelementptr inbounds i8, ptr %currMB, i64 396, !dbg !1605
  br label %if.end37, !dbg !1607

if.end37:                                         ; preds = %if.then15, %if.then30, %if.then3, %if.then5
  %.sink108.in = phi ptr [ %mbAddrB, %if.then15 ], [ %mbAddrC, %if.then30 ], [ %mbAddrD, %if.then3 ], [ %mbAddrA, %if.then5 ]
  %.sink107 = phi i64 [ 408, %if.then15 ], [ 412, %if.then30 ], [ 416, %if.then3 ], [ 404, %if.then5 ]
  %.sink108 = load i32, ptr %.sink108.in, align 4, !dbg !1608
  %mb_addr16 = getelementptr inbounds i8, ptr %pix, i64 4, !dbg !1608
  store i32 %.sink108, ptr %mb_addr16, align 4, !dbg !1608
  %mbAvailB = getelementptr inbounds i8, ptr %currMB, i64 %.sink107, !dbg !1608
  %.sink = load i32, ptr %mbAvailB, align 4, !dbg !1608
  store i32 %.sink, ptr %pix, align 4, !dbg !1608
  %tobool.not = icmp eq i32 %.sink, 0, !dbg !1609
  br i1 %tobool.not, label %lor.lhs.false, label %if.then40, !dbg !1602

lor.lhs.false.sink.split:                         ; preds = %if.else27, %if.else18, %if.else
  store i32 0, ptr %pix, align 4, !dbg !1608
  br label %lor.lhs.false, !dbg !1610

lor.lhs.false:                                    ; preds = %lor.lhs.false.sink.split, %if.end37
  %DeblockCall = getelementptr inbounds i8, ptr %currMB, i64 104, !dbg !1610
  %3 = load i32, ptr %DeblockCall, align 8, !dbg !1610
  %tobool39.not = icmp eq i32 %3, 0, !dbg !1611
  br i1 %tobool39.not, label %if.end58, label %lor.lhs.false.if.then40_crit_edge, !dbg !1612

lor.lhs.false.if.then40_crit_edge:                ; preds = %lor.lhs.false
  %mb_addr41.phi.trans.insert = getelementptr inbounds i8, ptr %pix, i64 4
  %.pre = load i32, ptr %mb_addr41.phi.trans.insert, align 4, !dbg !1613
  br label %if.then40, !dbg !1612

if.then40:                                        ; preds = %lor.lhs.false.if.then40_crit_edge, %if.end37.thread105, %if.end37
  %4 = phi i32 [ %.pre, %lor.lhs.false.if.then40_crit_edge ], [ %2, %if.end37.thread105 ], [ %.sink108, %if.end37 ], !dbg !1613
  %5 = load ptr, ptr @PicPos, align 8, !dbg !1614
  %idxprom = sext i32 %4 to i64, !dbg !1614
  %arrayidx42 = getelementptr inbounds %struct.BlockPos, ptr %5, i64 %idxprom, !dbg !1614
    #dbg_value(ptr %arrayidx42, !1563, !DIExpression(), !1615)
  %sub = add i32 %0, 65535, !dbg !1616
  %and = and i32 %sub, %xN, !dbg !1617
  %conv = trunc i32 %and to i16, !dbg !1618
  %x = getelementptr inbounds i8, ptr %pix, i64 8, !dbg !1619
  store i16 %conv, ptr %x, align 4, !dbg !1620
  %sub43 = add i32 %1, 65535, !dbg !1621
  %and44 = and i32 %sub43, %yN, !dbg !1622
  %conv45 = trunc i32 %and44 to i16, !dbg !1623
  %y = getelementptr inbounds i8, ptr %pix, i64 10, !dbg !1624
  store i16 %conv45, ptr %y, align 2, !dbg !1625
  %6 = load i16, ptr %arrayidx42, align 2, !dbg !1626
  %conv49 = zext i16 %6 to i32, !dbg !1627
  %mul = mul i32 %0, %conv49, !dbg !1628
  %add = add i32 %mul, %and, !dbg !1629
  %conv50 = trunc i32 %add to i16, !dbg !1630
  %pos_x = getelementptr inbounds i8, ptr %pix, i64 12, !dbg !1631
  store i16 %conv50, ptr %pos_x, align 4, !dbg !1632
  %y53 = getelementptr inbounds i8, ptr %arrayidx42, i64 2, !dbg !1633
  %7 = load i16, ptr %y53, align 2, !dbg !1633
  %8 = trunc i32 %1 to i16, !dbg !1634
  %9 = mul i16 %7, %8, !dbg !1634
  %conv57 = add i16 %9, %conv45, !dbg !1634
  %pos_y = getelementptr inbounds i8, ptr %pix, i64 14, !dbg !1635
  store i16 %conv57, ptr %pos_y, align 2, !dbg !1636
  br label %if.end58, !dbg !1637

if.end58:                                         ; preds = %if.then40, %lor.lhs.false
  ret void, !dbg !1638
}

; Function Attrs: nounwind uwtable
define dso_local void @getAffNeighbour(ptr nocapture noundef readonly %currMB, i32 noundef %xN, i32 noundef %yN, ptr nocapture noundef readonly %mb_size, ptr noundef %pix) local_unnamed_addr #2 !dbg !1639 {
entry:
    #dbg_value(ptr %currMB, !1641, !DIExpression(), !1650)
    #dbg_value(i32 %xN, !1642, !DIExpression(), !1650)
    #dbg_value(i32 %yN, !1643, !DIExpression(), !1650)
    #dbg_value(ptr %mb_size, !1644, !DIExpression(), !1650)
    #dbg_value(ptr %pix, !1645, !DIExpression(), !1650)
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8, !dbg !1651
  %0 = load ptr, ptr %p_Vid1, align 8, !dbg !1651
    #dbg_value(ptr %0, !1646, !DIExpression(), !1650)
    #dbg_value(i32 -1, !1649, !DIExpression(), !1650)
  %1 = load i32, ptr %mb_size, align 4, !dbg !1652
    #dbg_value(i32 %1, !1647, !DIExpression(), !1650)
  %arrayidx2 = getelementptr inbounds i8, ptr %mb_size, i64 4, !dbg !1653
  %2 = load i32, ptr %arrayidx2, align 4, !dbg !1653
    #dbg_value(i32 %2, !1648, !DIExpression(), !1650)
  store i32 0, ptr %pix, align 4, !dbg !1654
  %sub = add i32 %2, 65535, !dbg !1655
  %cmp.not = icmp sgt i32 %2, %yN, !dbg !1657
  br i1 %cmp.not, label %if.end, label %cleanup, !dbg !1658

if.end:                                           ; preds = %entry
  %sub3 = add i32 %1, 65535, !dbg !1659
  %cmp4 = icmp sle i32 %1, %xN, !dbg !1661
  %cmp5 = icmp sgt i32 %yN, -1
  %or.cond = and i1 %cmp5, %cmp4, !dbg !1662
  br i1 %or.cond, label %cleanup, label %if.end9, !dbg !1662

if.end9:                                          ; preds = %if.end
  %cmp10 = icmp slt i32 %xN, 0, !dbg !1663
  br i1 %cmp10, label %if.then11, label %land.lhs.true201, !dbg !1665

if.then11:                                        ; preds = %if.end9
  %cmp12 = icmp slt i32 %yN, 0, !dbg !1666
  %mb_field = getelementptr inbounds i8, ptr %currMB, i64 384, !dbg !1669
  %3 = load i32, ptr %mb_field, align 8, !dbg !1669
  %tobool.not = icmp eq i32 %3, 0, !dbg !1669
  %mbAddrX = getelementptr inbounds i8, ptr %currMB, i64 24, !dbg !1669
  %4 = load i32, ptr %mbAddrX, align 8, !dbg !1669
  %and = and i32 %4, 1, !dbg !1669
  %cmp15 = icmp eq i32 %and, 0, !dbg !1669
  br i1 %cmp12, label %if.then13, label %if.then70, !dbg !1670

if.then13:                                        ; preds = %if.then11
  br i1 %tobool.not, label %if.then14, label %if.else34, !dbg !1671

if.then14:                                        ; preds = %if.then13
  br i1 %cmp15, label %if.then16, label %if.else, !dbg !1673

if.then16:                                        ; preds = %if.then14
  %mbAddrD = getelementptr inbounds i8, ptr %currMB, i64 400, !dbg !1676
  %5 = load i32, ptr %mbAddrD, align 8, !dbg !1676
  %add = add nsw i32 %5, 1, !dbg !1679
  %mb_addr = getelementptr inbounds i8, ptr %pix, i64 4, !dbg !1680
  store i32 %add, ptr %mb_addr, align 4, !dbg !1681
  %mbAvailD = getelementptr inbounds i8, ptr %currMB, i64 416, !dbg !1682
  %6 = load i32, ptr %mbAvailD, align 8, !dbg !1682
    #dbg_value(i32 %yN, !1649, !DIExpression(), !1650)
  br label %if.end355, !dbg !1683

if.else:                                          ; preds = %if.then14
  %mbAddrA = getelementptr inbounds i8, ptr %currMB, i64 388, !dbg !1684
  %7 = load i32, ptr %mbAddrA, align 4, !dbg !1684
  %mb_addr18 = getelementptr inbounds i8, ptr %pix, i64 4, !dbg !1686
  store i32 %7, ptr %mb_addr18, align 4, !dbg !1687
  %mbAvailA = getelementptr inbounds i8, ptr %currMB, i64 404, !dbg !1688
  %8 = load i32, ptr %mbAvailA, align 4, !dbg !1688
  store i32 %8, ptr %pix, align 4, !dbg !1689
  %tobool21.not = icmp eq i32 %8, 0, !dbg !1690
  br i1 %tobool21.not, label %lor.lhs.false, label %if.then22, !dbg !1692

if.then22:                                        ; preds = %if.else
  %mb_data = getelementptr inbounds i8, ptr %0, i64 848888, !dbg !1693
  %9 = load ptr, ptr %mb_data, align 8, !dbg !1693
  %10 = load i32, ptr %mbAddrA, align 4, !dbg !1696
  %idxprom = sext i32 %10 to i64, !dbg !1697
  %mb_field25 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %idxprom, i32 45, !dbg !1698
  %11 = load i32, ptr %mb_field25, align 8, !dbg !1698
  %tobool26.not = icmp eq i32 %11, 0, !dbg !1697
  br i1 %tobool26.not, label %if.then360, label %if.else28, !dbg !1699

if.else28:                                        ; preds = %if.then22
  %inc = add nsw i32 %7, 1, !dbg !1700
  store i32 %inc, ptr %mb_addr18, align 4, !dbg !1700
  %add30 = add nsw i32 %2, %yN, !dbg !1702
  %shr = ashr i32 %add30, 1, !dbg !1703
    #dbg_value(i32 %shr, !1649, !DIExpression(), !1650)
  br label %if.then360

if.else34:                                        ; preds = %if.then13
  %mbAddrD39 = getelementptr inbounds i8, ptr %currMB, i64 400, !dbg !1704
  %12 = load i32, ptr %mbAddrD39, align 8, !dbg !1704
  br i1 %cmp15, label %if.then38, label %if.else58, !dbg !1707

if.then38:                                        ; preds = %if.else34
  %mb_addr40 = getelementptr inbounds i8, ptr %pix, i64 4, !dbg !1708
  store i32 %12, ptr %mb_addr40, align 4, !dbg !1710
  %mbAvailD41 = getelementptr inbounds i8, ptr %currMB, i64 416, !dbg !1711
  %13 = load i32, ptr %mbAvailD41, align 8, !dbg !1711
  store i32 %13, ptr %pix, align 4, !dbg !1712
  %tobool44.not = icmp eq i32 %13, 0, !dbg !1713
  br i1 %tobool44.not, label %lor.lhs.false, label %if.then45, !dbg !1715

if.then45:                                        ; preds = %if.then38
  %mb_data46 = getelementptr inbounds i8, ptr %0, i64 848888, !dbg !1716
  %14 = load ptr, ptr %mb_data46, align 8, !dbg !1716
  %15 = load i32, ptr %mbAddrD39, align 8, !dbg !1719
  %idxprom48 = sext i32 %15 to i64, !dbg !1720
  %mb_field50 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %idxprom48, i32 45, !dbg !1721
  %16 = load i32, ptr %mb_field50, align 8, !dbg !1721
  %tobool51.not = icmp eq i32 %16, 0, !dbg !1720
  br i1 %tobool51.not, label %if.then52, label %if.then360, !dbg !1722

if.then52:                                        ; preds = %if.then45
  %inc54 = add nsw i32 %12, 1, !dbg !1723
  store i32 %inc54, ptr %mb_addr40, align 4, !dbg !1723
  %mul = shl nsw i32 %yN, 1, !dbg !1725
    #dbg_value(i32 %mul, !1649, !DIExpression(), !1650)
  br label %if.then360, !dbg !1726

if.else58:                                        ; preds = %if.else34
  %add60 = add nsw i32 %12, 1, !dbg !1727
  %mb_addr61 = getelementptr inbounds i8, ptr %pix, i64 4, !dbg !1729
  store i32 %add60, ptr %mb_addr61, align 4, !dbg !1730
  %mbAvailD62 = getelementptr inbounds i8, ptr %currMB, i64 416, !dbg !1731
  %17 = load i32, ptr %mbAvailD62, align 8, !dbg !1731
    #dbg_value(i32 %yN, !1649, !DIExpression(), !1650)
  br label %if.end355

if.then70:                                        ; preds = %if.then11
  %mbAddrA78 = getelementptr inbounds i8, ptr %currMB, i64 388, !dbg !1732
  %18 = load i32, ptr %mbAddrA78, align 4, !dbg !1732
  %mb_addr79 = getelementptr inbounds i8, ptr %pix, i64 4, !dbg !1732
  store i32 %18, ptr %mb_addr79, align 4, !dbg !1732
  %mbAvailA80 = getelementptr inbounds i8, ptr %currMB, i64 404, !dbg !1732
  %19 = load i32, ptr %mbAvailA80, align 4, !dbg !1732
  store i32 %19, ptr %pix, align 4, !dbg !1732
  %tobool83.not = icmp eq i32 %19, 0, !dbg !1732
  br i1 %tobool.not, label %if.then73, label %if.else128, !dbg !1737

if.then73:                                        ; preds = %if.then70
  br i1 %cmp15, label %if.then77, label %if.else100, !dbg !1738

if.then77:                                        ; preds = %if.then73
  br i1 %tobool83.not, label %lor.lhs.false, label %if.then84, !dbg !1740

if.then84:                                        ; preds = %if.then77
  %mb_data85 = getelementptr inbounds i8, ptr %0, i64 848888, !dbg !1743
  %20 = load ptr, ptr %mb_data85, align 8, !dbg !1743
  %21 = load i32, ptr %mbAddrA78, align 4, !dbg !1747
  %idxprom87 = sext i32 %21 to i64, !dbg !1748
  %mb_field89 = getelementptr inbounds %struct.macroblock, ptr %20, i64 %idxprom87, i32 45, !dbg !1749
  %22 = load i32, ptr %mb_field89, align 8, !dbg !1749
  %tobool90.not = icmp eq i32 %22, 0, !dbg !1748
  br i1 %tobool90.not, label %if.then360, label %if.else92, !dbg !1750

if.else92:                                        ; preds = %if.then84
  %and93 = and i32 %yN, 1, !dbg !1751
  %add96 = add nsw i32 %18, %and93, !dbg !1753
  store i32 %add96, ptr %mb_addr79, align 4, !dbg !1753
  %shr97 = lshr i32 %yN, 1, !dbg !1754
    #dbg_value(i32 %shr97, !1649, !DIExpression(), !1650)
  br label %if.then360

if.else100:                                       ; preds = %if.then73
  br i1 %tobool83.not, label %lor.lhs.false, label %if.then107, !dbg !1755

if.then107:                                       ; preds = %if.else100
  %mb_data108 = getelementptr inbounds i8, ptr %0, i64 848888, !dbg !1757
  %23 = load ptr, ptr %mb_data108, align 8, !dbg !1757
  %24 = load i32, ptr %mbAddrA78, align 4, !dbg !1761
  %idxprom110 = sext i32 %24 to i64, !dbg !1762
  %mb_field112 = getelementptr inbounds %struct.macroblock, ptr %23, i64 %idxprom110, i32 45, !dbg !1763
  %25 = load i32, ptr %mb_field112, align 8, !dbg !1763
  %tobool113.not = icmp eq i32 %25, 0, !dbg !1762
  br i1 %tobool113.not, label %if.then114, label %if.else117, !dbg !1764

if.then114:                                       ; preds = %if.then107
  %inc116 = add nsw i32 %18, 1, !dbg !1765
  store i32 %inc116, ptr %mb_addr79, align 4, !dbg !1765
    #dbg_value(i32 %yN, !1649, !DIExpression(), !1650)
  br label %if.then360, !dbg !1767

if.else117:                                       ; preds = %if.then107
  %and118 = and i32 %yN, 1, !dbg !1768
  %add122 = add nsw i32 %18, %and118, !dbg !1770
  store i32 %add122, ptr %mb_addr79, align 4, !dbg !1770
  %add123 = add nuw nsw i32 %2, %yN, !dbg !1771
  %shr124 = lshr i32 %add123, 1, !dbg !1772
    #dbg_value(i32 %shr124, !1649, !DIExpression(), !1650)
  br label %if.then360

if.else128:                                       ; preds = %if.then70
  br i1 %cmp15, label %if.then133, label %if.else161, !dbg !1773

if.then133:                                       ; preds = %if.else128
  br i1 %tobool83.not, label %lor.lhs.false, label %if.then140, !dbg !1775

if.then140:                                       ; preds = %if.then133
  %mb_data141 = getelementptr inbounds i8, ptr %0, i64 848888, !dbg !1778
  %26 = load ptr, ptr %mb_data141, align 8, !dbg !1778
  %27 = load i32, ptr %mbAddrA78, align 4, !dbg !1782
  %idxprom143 = sext i32 %27 to i64, !dbg !1783
  %mb_field145 = getelementptr inbounds %struct.macroblock, ptr %26, i64 %idxprom143, i32 45, !dbg !1784
  %28 = load i32, ptr %mb_field145, align 8, !dbg !1784
  %tobool146.not = icmp eq i32 %28, 0, !dbg !1783
  br i1 %tobool146.not, label %if.then147, label %if.then360, !dbg !1785

if.then147:                                       ; preds = %if.then140
  %shr148 = lshr i32 %2, 1, !dbg !1786
  %cmp149 = icmp ugt i32 %shr148, %yN, !dbg !1789
  br i1 %cmp149, label %if.then151, label %if.else152, !dbg !1790

if.then151:                                       ; preds = %if.then147
  %shl = shl nuw nsw i32 %yN, 1, !dbg !1791
    #dbg_value(i32 %shl, !1649, !DIExpression(), !1650)
  br label %if.then360, !dbg !1793

if.else152:                                       ; preds = %if.then147
  %inc154 = add nsw i32 %18, 1, !dbg !1794
  store i32 %inc154, ptr %mb_addr79, align 4, !dbg !1794
  %shl155 = shl nuw i32 %yN, 1, !dbg !1796
  %sub156 = sub nsw i32 %shl155, %2, !dbg !1797
    #dbg_value(i32 %sub156, !1649, !DIExpression(), !1650)
  br label %if.then360

if.else161:                                       ; preds = %if.else128
  br i1 %tobool83.not, label %lor.lhs.false, label %if.then168, !dbg !1798

if.then168:                                       ; preds = %if.else161
  %mb_data169 = getelementptr inbounds i8, ptr %0, i64 848888, !dbg !1800
  %29 = load ptr, ptr %mb_data169, align 8, !dbg !1800
  %30 = load i32, ptr %mbAddrA78, align 4, !dbg !1804
  %idxprom171 = sext i32 %30 to i64, !dbg !1805
  %mb_field173 = getelementptr inbounds %struct.macroblock, ptr %29, i64 %idxprom171, i32 45, !dbg !1806
  %31 = load i32, ptr %mb_field173, align 8, !dbg !1806
  %tobool174.not = icmp eq i32 %31, 0, !dbg !1805
  br i1 %tobool174.not, label %if.then175, label %if.else189, !dbg !1807

if.then175:                                       ; preds = %if.then168
  %shr176 = lshr i32 %2, 1, !dbg !1808
  %cmp177 = icmp ugt i32 %shr176, %yN, !dbg !1811
  br i1 %cmp177, label %if.then179, label %if.else182, !dbg !1812

if.then179:                                       ; preds = %if.then175
  %shl180 = shl nuw nsw i32 %yN, 1, !dbg !1813
  %add181 = or disjoint i32 %shl180, 1, !dbg !1815
    #dbg_value(i32 %add181, !1649, !DIExpression(), !1650)
  br label %if.then360, !dbg !1816

if.else182:                                       ; preds = %if.then175
  %inc184 = add nsw i32 %18, 1, !dbg !1817
  store i32 %inc184, ptr %mb_addr79, align 4, !dbg !1817
  %shl185 = shl nuw i32 %yN, 1, !dbg !1819
  %add186 = or disjoint i32 %shl185, 1, !dbg !1820
  %sub187 = sub i32 %add186, %2, !dbg !1821
    #dbg_value(i32 %sub187, !1649, !DIExpression(), !1650)
  br label %if.then360

if.else189:                                       ; preds = %if.then168
  %inc191 = add nsw i32 %18, 1, !dbg !1822
  store i32 %inc191, ptr %mb_addr79, align 4, !dbg !1822
    #dbg_value(i32 %yN, !1649, !DIExpression(), !1650)
  br label %if.then360

land.lhs.true201:                                 ; preds = %if.end9
  %cmp202 = icmp sgt i32 %1, %xN, !dbg !1824
  %cmp205 = icmp slt i32 %yN, 0, !dbg !1827
  br i1 %cmp202, label %if.then204, label %if.else301, !dbg !1828

if.then204:                                       ; preds = %land.lhs.true201
  br i1 %cmp205, label %if.then207, label %if.else275, !dbg !1829

if.then207:                                       ; preds = %if.then204
  %mb_field208 = getelementptr inbounds i8, ptr %currMB, i64 384, !dbg !1831
  %32 = load i32, ptr %mb_field208, align 8, !dbg !1831
  %tobool209.not = icmp eq i32 %32, 0, !dbg !1835
  %mbAddrX211 = getelementptr inbounds i8, ptr %currMB, i64 24, !dbg !1836
  %33 = load i32, ptr %mbAddrX211, align 8, !dbg !1836
  %and212 = and i32 %33, 1, !dbg !1836
  %cmp213 = icmp eq i32 %and212, 0, !dbg !1836
  br i1 %tobool209.not, label %if.then210, label %if.else241, !dbg !1837

if.then210:                                       ; preds = %if.then207
  br i1 %cmp213, label %if.then215, label %if.else235, !dbg !1838

if.then215:                                       ; preds = %if.then210
  %mbAddrB = getelementptr inbounds i8, ptr %currMB, i64 392, !dbg !1840
  %34 = load i32, ptr %mbAddrB, align 8, !dbg !1840
  %mb_addr216 = getelementptr inbounds i8, ptr %pix, i64 4, !dbg !1843
  store i32 %34, ptr %mb_addr216, align 4, !dbg !1844
  %mbAvailB = getelementptr inbounds i8, ptr %currMB, i64 408, !dbg !1845
  %35 = load i32, ptr %mbAvailB, align 8, !dbg !1845
  %tobool217.not = icmp eq i32 %35, 0, !dbg !1847
  br i1 %tobool217.not, label %if.end355, label %if.then218, !dbg !1848

if.then218:                                       ; preds = %if.then215
  %DeblockCall = getelementptr inbounds i8, ptr %currMB, i64 104, !dbg !1849
  %36 = load i32, ptr %DeblockCall, align 8, !dbg !1849
  %cmp219 = icmp eq i32 %36, 1, !dbg !1852
  br i1 %cmp219, label %land.lhs.true221, label %if.then228, !dbg !1853

land.lhs.true221:                                 ; preds = %if.then218
  %mb_data222 = getelementptr inbounds i8, ptr %0, i64 848888, !dbg !1854
  %37 = load ptr, ptr %mb_data222, align 8, !dbg !1854
  %idxprom224 = sext i32 %34 to i64, !dbg !1855
  %mb_field226 = getelementptr inbounds %struct.macroblock, ptr %37, i64 %idxprom224, i32 45, !dbg !1856
  %38 = load i32, ptr %mb_field226, align 8, !dbg !1856
  %tobool227.not = icmp eq i32 %38, 0, !dbg !1857
  br i1 %tobool227.not, label %if.then228, label %if.end355, !dbg !1858

if.then228:                                       ; preds = %land.lhs.true221, %if.then218
  %add230 = add nsw i32 %34, 1, !dbg !1859
  store i32 %add230, ptr %mb_addr216, align 4, !dbg !1859
  %.pre = load i32, ptr %mbAvailB, align 8, !dbg !1860
  br label %if.end355, !dbg !1861

if.else235:                                       ; preds = %if.then210
  %sub237 = add nsw i32 %33, -1, !dbg !1862
  %mb_addr238 = getelementptr inbounds i8, ptr %pix, i64 4, !dbg !1864
  store i32 %sub237, ptr %mb_addr238, align 4, !dbg !1865
  store i32 1, ptr %pix, align 4, !dbg !1866
    #dbg_value(i32 %yN, !1649, !DIExpression(), !1650)
  br label %if.then360

if.else241:                                       ; preds = %if.then207
  %mbAddrB247 = getelementptr inbounds i8, ptr %currMB, i64 392, !dbg !1867
  %39 = load i32, ptr %mbAddrB247, align 8, !dbg !1867
  br i1 %cmp213, label %if.then246, label %if.else267, !dbg !1870

if.then246:                                       ; preds = %if.else241
  %mb_addr248 = getelementptr inbounds i8, ptr %pix, i64 4, !dbg !1871
  store i32 %39, ptr %mb_addr248, align 4, !dbg !1873
  %mbAvailB249 = getelementptr inbounds i8, ptr %currMB, i64 408, !dbg !1874
  %40 = load i32, ptr %mbAvailB249, align 8, !dbg !1874
  store i32 %40, ptr %pix, align 4, !dbg !1875
  %tobool252.not = icmp eq i32 %40, 0, !dbg !1876
  br i1 %tobool252.not, label %lor.lhs.false, label %if.then253, !dbg !1878

if.then253:                                       ; preds = %if.then246
  %mb_data254 = getelementptr inbounds i8, ptr %0, i64 848888, !dbg !1879
  %41 = load ptr, ptr %mb_data254, align 8, !dbg !1879
  %42 = load i32, ptr %mbAddrB247, align 8, !dbg !1882
  %idxprom256 = sext i32 %42 to i64, !dbg !1883
  %mb_field258 = getelementptr inbounds %struct.macroblock, ptr %41, i64 %idxprom256, i32 45, !dbg !1884
  %43 = load i32, ptr %mb_field258, align 8, !dbg !1884
  %tobool259.not = icmp eq i32 %43, 0, !dbg !1883
  br i1 %tobool259.not, label %if.then260, label %if.then360, !dbg !1885

if.then260:                                       ; preds = %if.then253
  %inc262 = add nsw i32 %39, 1, !dbg !1886
  store i32 %inc262, ptr %mb_addr248, align 4, !dbg !1886
  %mul263 = shl nsw i32 %yN, 1, !dbg !1888
    #dbg_value(i32 %mul263, !1649, !DIExpression(), !1650)
  br label %if.then360, !dbg !1889

if.else267:                                       ; preds = %if.else241
  %add269 = add nsw i32 %39, 1, !dbg !1890
  %mb_addr270 = getelementptr inbounds i8, ptr %pix, i64 4, !dbg !1892
  store i32 %add269, ptr %mb_addr270, align 4, !dbg !1893
  %mbAvailB271 = getelementptr inbounds i8, ptr %currMB, i64 408, !dbg !1894
  %44 = load i32, ptr %mbAvailB271, align 8, !dbg !1894
    #dbg_value(i32 %yN, !1649, !DIExpression(), !1650)
  br label %if.end355

if.else275:                                       ; preds = %if.then204
  %cmp276 = icmp eq i32 %yN, 0, !dbg !1895
  br i1 %cmp276, label %land.lhs.true278, label %if.then294, !dbg !1898

land.lhs.true278:                                 ; preds = %if.else275
  %DeblockCall279 = getelementptr inbounds i8, ptr %currMB, i64 104, !dbg !1899
  %45 = load i32, ptr %DeblockCall279, align 8, !dbg !1899
  %cmp280 = icmp eq i32 %45, 2, !dbg !1900
  br i1 %cmp280, label %if.then282, label %if.then294, !dbg !1901

if.then282:                                       ; preds = %land.lhs.true278
  %mbAddrB283 = getelementptr inbounds i8, ptr %currMB, i64 392, !dbg !1902
  %46 = load i32, ptr %mbAddrB283, align 8, !dbg !1902
  %add284 = add nsw i32 %46, 1, !dbg !1904
  %mb_addr285 = getelementptr inbounds i8, ptr %pix, i64 4, !dbg !1905
  store i32 %add284, ptr %mb_addr285, align 4, !dbg !1906
  store i32 1, ptr %pix, align 4, !dbg !1907
    #dbg_value(i32 -1, !1649, !DIExpression(), !1650)
  br label %if.then360, !dbg !1908

if.then294:                                       ; preds = %if.else275, %land.lhs.true278
  %mbAddrX295 = getelementptr inbounds i8, ptr %currMB, i64 24, !dbg !1909
  %47 = load i32, ptr %mbAddrX295, align 8, !dbg !1909
  %mb_addr296 = getelementptr inbounds i8, ptr %pix, i64 4, !dbg !1912
  store i32 %47, ptr %mb_addr296, align 4, !dbg !1913
  store i32 1, ptr %pix, align 4, !dbg !1914
    #dbg_value(i32 %yN, !1649, !DIExpression(), !1650)
  br label %if.then360, !dbg !1915

if.else301:                                       ; preds = %land.lhs.true201
  br i1 %cmp205, label %if.then304, label %lor.lhs.false, !dbg !1916

if.then304:                                       ; preds = %if.else301
  %mb_field305 = getelementptr inbounds i8, ptr %currMB, i64 384, !dbg !1918
  %48 = load i32, ptr %mb_field305, align 8, !dbg !1918
  %tobool306.not = icmp eq i32 %48, 0, !dbg !1922
  %mbAddrX308 = getelementptr inbounds i8, ptr %currMB, i64 24, !dbg !1923
  %49 = load i32, ptr %mbAddrX308, align 8, !dbg !1923
  %and309 = and i32 %49, 1, !dbg !1923
  %cmp310 = icmp eq i32 %and309, 0, !dbg !1923
  br i1 %tobool306.not, label %if.then307, label %if.else319, !dbg !1924

if.then307:                                       ; preds = %if.then304
  br i1 %cmp310, label %if.then312, label %lor.lhs.false, !dbg !1925

if.then312:                                       ; preds = %if.then307
  %mbAddrC = getelementptr inbounds i8, ptr %currMB, i64 396, !dbg !1927
  %50 = load i32, ptr %mbAddrC, align 4, !dbg !1927
  %add313 = add nsw i32 %50, 1, !dbg !1930
  %mb_addr314 = getelementptr inbounds i8, ptr %pix, i64 4, !dbg !1931
  store i32 %add313, ptr %mb_addr314, align 4, !dbg !1932
  %mbAvailC = getelementptr inbounds i8, ptr %currMB, i64 412, !dbg !1933
  %51 = load i32, ptr %mbAvailC, align 4, !dbg !1933
    #dbg_value(i32 %yN, !1649, !DIExpression(), !1650)
  br label %if.end355, !dbg !1934

if.else319:                                       ; preds = %if.then304
  %mbAddrC325 = getelementptr inbounds i8, ptr %currMB, i64 396, !dbg !1935
  %52 = load i32, ptr %mbAddrC325, align 4, !dbg !1935
  br i1 %cmp310, label %if.then324, label %if.else345, !dbg !1938

if.then324:                                       ; preds = %if.else319
  %mb_addr326 = getelementptr inbounds i8, ptr %pix, i64 4, !dbg !1939
  store i32 %52, ptr %mb_addr326, align 4, !dbg !1941
  %mbAvailC327 = getelementptr inbounds i8, ptr %currMB, i64 412, !dbg !1942
  %53 = load i32, ptr %mbAvailC327, align 4, !dbg !1942
  store i32 %53, ptr %pix, align 4, !dbg !1943
  %tobool330.not = icmp eq i32 %53, 0, !dbg !1944
  br i1 %tobool330.not, label %lor.lhs.false, label %if.then331, !dbg !1946

if.then331:                                       ; preds = %if.then324
  %mb_data332 = getelementptr inbounds i8, ptr %0, i64 848888, !dbg !1947
  %54 = load ptr, ptr %mb_data332, align 8, !dbg !1947
  %55 = load i32, ptr %mbAddrC325, align 4, !dbg !1950
  %idxprom334 = sext i32 %55 to i64, !dbg !1951
  %mb_field336 = getelementptr inbounds %struct.macroblock, ptr %54, i64 %idxprom334, i32 45, !dbg !1952
  %56 = load i32, ptr %mb_field336, align 8, !dbg !1952
  %tobool337.not = icmp eq i32 %56, 0, !dbg !1951
  br i1 %tobool337.not, label %if.then338, label %if.then360, !dbg !1953

if.then338:                                       ; preds = %if.then331
  %inc340 = add nsw i32 %52, 1, !dbg !1954
  store i32 %inc340, ptr %mb_addr326, align 4, !dbg !1954
  %mul341 = shl nsw i32 %yN, 1, !dbg !1956
    #dbg_value(i32 %mul341, !1649, !DIExpression(), !1650)
  br label %if.then360, !dbg !1957

if.else345:                                       ; preds = %if.else319
  %add347 = add nsw i32 %52, 1, !dbg !1958
  %mb_addr348 = getelementptr inbounds i8, ptr %pix, i64 4, !dbg !1960
  store i32 %add347, ptr %mb_addr348, align 4, !dbg !1961
  %mbAvailC349 = getelementptr inbounds i8, ptr %currMB, i64 412, !dbg !1962
  %57 = load i32, ptr %mbAvailC349, align 4, !dbg !1962
    #dbg_value(i32 %yN, !1649, !DIExpression(), !1650)
  br label %if.end355

if.end355:                                        ; preds = %if.then215, %if.then228, %land.lhs.true221, %if.else267, %if.then312, %if.else345, %if.else58, %if.then16
  %.sink = phi i32 [ %44, %if.else267 ], [ %51, %if.then312 ], [ %57, %if.else345 ], [ %17, %if.else58 ], [ %6, %if.then16 ], [ %35, %land.lhs.true221 ], [ %.pre, %if.then228 ], [ 0, %if.then215 ]
  store i32 %.sink, ptr %pix, align 4, !dbg !1963
    #dbg_value(i32 %yN, !1649, !DIExpression(), !1650)
  %tobool357.not = icmp eq i32 %.sink, 0, !dbg !1964
  br i1 %tobool357.not, label %lor.lhs.false, label %if.then360, !dbg !1966

lor.lhs.false:                                    ; preds = %if.then307, %if.else301, %if.then133, %if.else161, %if.then77, %if.else100, %if.else, %if.then38, %if.then324, %if.then246, %if.end355
  %yM.0585 = phi i32 [ %yN, %if.end355 ], [ -1, %if.then246 ], [ -1, %if.then324 ], [ -1, %if.then38 ], [ -1, %if.else ], [ -1, %if.else100 ], [ -1, %if.then77 ], [ -1, %if.else161 ], [ -1, %if.then133 ], [ -1, %if.else301 ], [ -1, %if.then307 ]
  %DeblockCall358 = getelementptr inbounds i8, ptr %currMB, i64 104, !dbg !1967
  %58 = load i32, ptr %DeblockCall358, align 8, !dbg !1967
  %tobool359.not = icmp eq i32 %58, 0, !dbg !1968
  br i1 %tobool359.not, label %cleanup, label %if.then360, !dbg !1969

if.then360:                                       ; preds = %if.then52, %if.else28, %if.then151, %if.else152, %if.else189, %if.then179, %if.else182, %if.else92, %if.else117, %if.then114, %if.then260, %if.then338, %if.then22, %if.then45, %if.then84, %if.then140, %if.then253, %if.then331, %if.else235, %if.then294, %if.then282, %lor.lhs.false, %if.end355
  %yM.0581 = phi i32 [ %yM.0585, %lor.lhs.false ], [ %yN, %if.end355 ], [ %yN, %if.then294 ], [ -1, %if.then282 ], [ %yN, %if.else235 ], [ %mul, %if.then52 ], [ %shr, %if.else28 ], [ %shl, %if.then151 ], [ %sub156, %if.else152 ], [ %yN, %if.else189 ], [ %add181, %if.then179 ], [ %sub187, %if.else182 ], [ %shr97, %if.else92 ], [ %shr124, %if.else117 ], [ %yN, %if.then114 ], [ %mul263, %if.then260 ], [ %mul341, %if.then338 ], [ %yN, %if.then22 ], [ %yN, %if.then45 ], [ %yN, %if.then84 ], [ %yN, %if.then140 ], [ %yN, %if.then253 ], [ %yN, %if.then331 ]
  %and362 = and i32 %sub3, %xN, !dbg !1970
  %conv363 = trunc i32 %and362 to i16, !dbg !1972
  %x = getelementptr inbounds i8, ptr %pix, i64 8, !dbg !1973
  store i16 %conv363, ptr %x, align 4, !dbg !1974
  %and365 = and i32 %yM.0581, %sub, !dbg !1975
  %conv366 = trunc i32 %and365 to i16, !dbg !1976
  %y = getelementptr inbounds i8, ptr %pix, i64 10, !dbg !1977
  store i16 %conv366, ptr %y, align 2, !dbg !1978
  %mb_addr367 = getelementptr inbounds i8, ptr %pix, i64 4, !dbg !1979
  %59 = load i32, ptr %mb_addr367, align 4, !dbg !1979
  %pos_x = getelementptr inbounds i8, ptr %pix, i64 12, !dbg !1980
  %pos_y = getelementptr inbounds i8, ptr %pix, i64 14, !dbg !1981
    #dbg_value(ptr %0, !1537, !DIExpression(), !1982)
    #dbg_value(i32 %59, !1538, !DIExpression(), !1982)
    #dbg_value(ptr %mb_size, !1539, !DIExpression(), !1982)
    #dbg_value(ptr %pos_x, !1540, !DIExpression(), !1982)
    #dbg_value(ptr %pos_y, !1541, !DIExpression(), !1982)
  %get_mb_block_pos.i = getelementptr inbounds i8, ptr %0, i64 856752, !dbg !1984
  %60 = load ptr, ptr %get_mb_block_pos.i, align 8, !dbg !1984
  tail call void %60(i32 noundef %59, ptr noundef nonnull %pos_x, ptr noundef nonnull %pos_y) #3, !dbg !1985
  %61 = load i16, ptr %pos_x, align 2, !dbg !1986
  %62 = load i32, ptr %mb_size, align 4, !dbg !1987
  %63 = trunc i32 %62 to i16, !dbg !1988
  %64 = load i16, ptr %pos_y, align 2, !dbg !1989
  %conv1.i = mul i16 %61, %63, !dbg !1988
  store i16 %conv1.i, ptr %pos_x, align 2, !dbg !1990
  %65 = load i32, ptr %arrayidx2, align 4, !dbg !1991
  %66 = trunc i32 %65 to i16, !dbg !1992
  %conv5.i = mul i16 %64, %66, !dbg !1992
  %67 = load <2 x i16>, ptr %x, align 4, !dbg !1993
  %68 = insertelement <2 x i16> poison, i16 %conv1.i, i64 0, !dbg !1994
  %69 = insertelement <2 x i16> %68, i16 %conv5.i, i64 1, !dbg !1994
  %70 = add <2 x i16> %67, %69, !dbg !1994
  store <2 x i16> %70, ptr %pos_x, align 4, !dbg !1995
  br label %cleanup, !dbg !1996

cleanup:                                          ; preds = %lor.lhs.false, %if.then360, %if.end, %entry
  ret void, !dbg !1997
}

; Function Attrs: nounwind uwtable
define dso_local void @get4x4Neighbour(ptr noundef %currMB, i32 noundef %block_x, i32 noundef %block_y, ptr noundef %mb_size, ptr noundef %pix) local_unnamed_addr #2 !dbg !1998 {
entry:
    #dbg_value(ptr %currMB, !2000, !DIExpression(), !2005)
    #dbg_value(i32 %block_x, !2001, !DIExpression(), !2005)
    #dbg_value(i32 %block_y, !2002, !DIExpression(), !2005)
    #dbg_value(ptr %mb_size, !2003, !DIExpression(), !2005)
    #dbg_value(ptr %pix, !2004, !DIExpression(), !2005)
  %p_Vid = getelementptr inbounds i8, ptr %currMB, i64 8, !dbg !2006
  %0 = load ptr, ptr %p_Vid, align 8, !dbg !2006
  %getNeighbour = getelementptr inbounds i8, ptr %0, i64 856744, !dbg !2007
  %1 = load ptr, ptr %getNeighbour, align 8, !dbg !2007
  tail call void %1(ptr noundef %currMB, i32 noundef %block_x, i32 noundef %block_y, ptr noundef %mb_size, ptr noundef %pix) #3, !dbg !2008
  %2 = load i32, ptr %pix, align 4, !dbg !2009
  %tobool.not = icmp eq i32 %2, 0, !dbg !2011
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !2012

if.then:                                          ; preds = %entry
  %x = getelementptr inbounds i8, ptr %pix, i64 8, !dbg !2013
  %3 = load <4 x i16>, ptr %x, align 4, !dbg !2015
  %4 = ashr <4 x i16> %3, <i16 2, i16 2, i16 2, i16 2>, !dbg !2015
  store <4 x i16> %4, ptr %x, align 4, !dbg !2015
  br label %if.end, !dbg !2016

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2017
}

; Function Attrs: nounwind uwtable
define dso_local void @get4x4NeighbourBase(ptr noundef %currMB, i32 noundef %block_x, i32 noundef %block_y, ptr noundef %mb_size, ptr noundef %pix) local_unnamed_addr #2 !dbg !2018 {
entry:
    #dbg_value(ptr %currMB, !2020, !DIExpression(), !2025)
    #dbg_value(i32 %block_x, !2021, !DIExpression(), !2025)
    #dbg_value(i32 %block_y, !2022, !DIExpression(), !2025)
    #dbg_value(ptr %mb_size, !2023, !DIExpression(), !2025)
    #dbg_value(ptr %pix, !2024, !DIExpression(), !2025)
  %p_Vid = getelementptr inbounds i8, ptr %currMB, i64 8, !dbg !2026
  %0 = load ptr, ptr %p_Vid, align 8, !dbg !2026
  %getNeighbour = getelementptr inbounds i8, ptr %0, i64 856744, !dbg !2027
  %1 = load ptr, ptr %getNeighbour, align 8, !dbg !2027
  tail call void %1(ptr noundef %currMB, i32 noundef %block_x, i32 noundef %block_y, ptr noundef %mb_size, ptr noundef %pix) #3, !dbg !2028
  %2 = load i32, ptr %pix, align 4, !dbg !2029
  %tobool.not = icmp eq i32 %2, 0, !dbg !2031
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !2032

if.then:                                          ; preds = %entry
  %x = getelementptr inbounds i8, ptr %pix, i64 8, !dbg !2033
  %3 = load <2 x i16>, ptr %x, align 4, !dbg !2035
  %4 = ashr <2 x i16> %3, <i16 2, i16 2>, !dbg !2035
  store <2 x i16> %4, ptr %x, align 4, !dbg !2035
  br label %if.end, !dbg !2036

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2037
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !42, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "ldecod_src/mb_access.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "650e93ef06875af5c7ac44f4893389a7")
!2 = !{!3, !12, !18, !27, !34}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 22, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "ldecod_src/inc/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "fd6ca9e1c707932f749220576db72b57")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10, !11}
!7 = !DIEnumerator(name: "CF_UNKNOWN", value: -1)
!8 = !DIEnumerator(name: "YUV400", value: 0)
!9 = !DIEnumerator(name: "YUV420", value: 1)
!10 = !DIEnumerator(name: "YUV422", value: 2)
!11 = !DIEnumerator(name: "YUV444", value: 3)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 15, baseType: !5, size: 32, elements: !13)
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "CM_UNKNOWN", value: -1)
!15 = !DIEnumerator(name: "CM_YUV", value: 0)
!16 = !DIEnumerator(name: "CM_RGB", value: 1)
!17 = !DIEnumerator(name: "CM_XYZ", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 25, baseType: !5, size: 32, elements: !20)
!19 = !DIFile(filename: "ldecod_src/inc/io_video.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1141c07f1801ad27d87214c419749431")
!20 = !{!21, !22, !23, !24, !25, !26}
!21 = !DIEnumerator(name: "VIDEO_UNKNOWN", value: -1)
!22 = !DIEnumerator(name: "VIDEO_YUV", value: 0)
!23 = !DIEnumerator(name: "VIDEO_RGB", value: 1)
!24 = !DIEnumerator(name: "VIDEO_XYZ", value: 2)
!25 = !DIEnumerator(name: "VIDEO_TIFF", value: 3)
!26 = !DIEnumerator(name: "VIDEO_AVI", value: 4)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 135, baseType: !29, size: 32, elements: !30)
!28 = !DIFile(filename: "ldecod_src/inc/types.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "64f87bd13f2911471c7313b4ac17e90c")
!29 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!30 = !{!31, !32, !33}
!31 = !DIEnumerator(name: "FRAME", value: 0)
!32 = !DIEnumerator(name: "TOP_FIELD", value: 1)
!33 = !DIEnumerator(name: "BOTTOM_FIELD", value: 2)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 22, baseType: !29, size: 32, elements: !35)
!35 = !{!36, !37, !38, !39, !40, !41}
!36 = !DIEnumerator(name: "PLANE_Y", value: 0)
!37 = !DIEnumerator(name: "PLANE_U", value: 1)
!38 = !DIEnumerator(name: "PLANE_V", value: 2)
!39 = !DIEnumerator(name: "PLANE_G", value: 0)
!40 = !DIEnumerator(name: "PLANE_B", value: 1)
!41 = !DIEnumerator(name: "PLANE_R", value: 2)
!42 = !{!5, !43}
!43 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!44 = !{i32 7, !"Dwarf Version", i32 5}
!45 = !{i32 2, !"Debug Info Version", i32 3}
!46 = !{i32 1, !"wchar_size", i32 4}
!47 = !{i32 8, !"PIC Level", i32 2}
!48 = !{i32 7, !"PIE Level", i32 2}
!49 = !{i32 7, !"uwtable", i32 2}
!50 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!51 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!52 = distinct !DISubprogram(name: "mb_is_available", scope: !1, file: !1, line: 25, type: !53, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1238)
!53 = !DISubroutineType(types: !54)
!54 = !{!5, !5, !55}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "Macroblock", file: !57, line: 273, baseType: !58)
!57 = !DIFile(filename: "ldecod_src/inc/global.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c4ca3c417c5616a2ff6b6266e7376fc1")
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "macroblock", file: !57, line: 197, size: 3840, elements: !59)
!59 = !{!60, !1154, !1155, !1156, !1157, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1186, !1187, !1188, !1189, !1190, !1193, !1194, !1196, !1197, !1198, !1199, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1223, !1224, !1229, !1233, !1237}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "p_Slice", scope: !58, file: !57, line: 199, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slice", file: !57, line: 341, size: 109184, elements: !63)
!63 = !{!64, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !928, !930, !983, !1013, !1040, !1043, !1044, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1079, !1080, !1081, !1082, !1083, !1084, !1087, !1088, !1091, !1092, !1094, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1107, !1108, !1109, !1110, !1111, !1113, !1114, !1115, !1119, !1123, !1127, !1131, !1135, !1136, !1137, !1138, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !62, file: !57, line: 343, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_par", file: !57, line: 566, size: 6855040, elements: !67)
!67 = !{!68, !154, !211, !315, !317, !319, !377, !379, !380, !381, !382, !383, !386, !406, !418, !419, !420, !421, !422, !423, !427, !428, !430, !431, !432, !433, !434, !435, !437, !439, !442, !443, !445, !446, !447, !448, !449, !451, !452, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !569, !570, !574, !575, !576, !577, !578, !579, !580, !581, !582, !584, !585, !586, !726, !730, !731, !733, !734, !737, !740, !741, !742, !746, !749, !752, !753, !754, !755, !756, !757, !783, !784, !786, !790, !791, !792, !793, !796, !801, !815, !819, !823, !824, !829, !830, !834, !835, !839, !860, !861, !864, !865, !866, !867, !868, !869, !870, !871}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !66, file: !57, line: 568, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inp_par", file: !57, line: 850, size: 32128, elements: !71)
!71 = !{!72, !77, !78, !79, !80, !81, !82, !83, !84, !85, !115, !116, !117, !118, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "infile", scope: !70, file: !57, line: 852, baseType: !73, size: 2040)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 2040, elements: !75)
!74 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!75 = !{!76}
!76 = !DISubrange(count: 255)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "outfile", scope: !70, file: !57, line: 853, baseType: !73, size: 2040, offset: 2040)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "reffile", scope: !70, file: !57, line: 854, baseType: !73, size: 2040, offset: 4080)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "FileFormat", scope: !70, file: !57, line: 856, baseType: !5, size: 32, offset: 6144)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "ref_offset", scope: !70, file: !57, line: 857, baseType: !5, size: 32, offset: 6176)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "poc_scale", scope: !70, file: !57, line: 858, baseType: !5, size: 32, offset: 6208)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "write_uv", scope: !70, file: !57, line: 859, baseType: !5, size: 32, offset: 6240)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "silent", scope: !70, file: !57, line: 860, baseType: !5, size: 32, offset: 6272)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "intra_profile_deblocking", scope: !70, file: !57, line: 861, baseType: !5, size: 32, offset: 6304)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !70, file: !57, line: 864, baseType: !86, size: 1088, offset: 6336)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameFormat", file: !4, line: 52, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_format", file: !4, line: 30, size: 1088, elements: !88)
!88 = !{!89, !91, !93, !95, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !87, file: !4, line: 32, baseType: !90, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorFormat", file: !4, line: 28, baseType: !3)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "color_model", scope: !87, file: !4, line: 33, baseType: !92, size: 32, offset: 32)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorModel", file: !4, line: 20, baseType: !12)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "frame_rate", scope: !87, file: !4, line: 34, baseType: !94, size: 64, offset: 64)
!94 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !87, file: !4, line: 35, baseType: !96, size: 96, offset: 128)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 96, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 3)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !87, file: !4, line: 36, baseType: !96, size: 96, offset: 224)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right", scope: !87, file: !4, line: 37, baseType: !5, size: 32, offset: 320)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom", scope: !87, file: !4, line: 38, baseType: !5, size: 32, offset: 352)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right_cr", scope: !87, file: !4, line: 39, baseType: !5, size: 32, offset: 384)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom_cr", scope: !87, file: !4, line: 40, baseType: !5, size: 32, offset: 416)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "width_crop", scope: !87, file: !4, line: 41, baseType: !5, size: 32, offset: 448)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "height_crop", scope: !87, file: !4, line: 42, baseType: !5, size: 32, offset: 480)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "mb_width", scope: !87, file: !4, line: 43, baseType: !5, size: 32, offset: 512)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "mb_height", scope: !87, file: !4, line: 44, baseType: !5, size: 32, offset: 544)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "size_cmp", scope: !87, file: !4, line: 45, baseType: !96, size: 96, offset: 576)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !87, file: !4, line: 46, baseType: !5, size: 32, offset: 672)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth", scope: !87, file: !4, line: 47, baseType: !96, size: 96, offset: 704)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !87, file: !4, line: 48, baseType: !96, size: 96, offset: 800)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "max_value_sq", scope: !87, file: !4, line: 49, baseType: !96, size: 96, offset: 896)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !87, file: !4, line: 50, baseType: !5, size: 32, offset: 992)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_shift3", scope: !87, file: !4, line: 51, baseType: !5, size: 32, offset: 1024)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !70, file: !57, line: 865, baseType: !86, size: 1088, offset: 7424)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ProcessInput", scope: !70, file: !57, line: 867, baseType: !5, size: 32, offset: 8512)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "enable_32_pulldown", scope: !70, file: !57, line: 868, baseType: !5, size: 32, offset: 8544)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "input_file1", scope: !70, file: !57, line: 869, baseType: !119, size: 7744, offset: 8576)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoDataFile", file: !19, line: 60, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_data_file", file: !19, line: 34, size: 7744, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !120, file: !19, line: 37, baseType: !73, size: 2040)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "fhead", scope: !120, file: !19, line: 38, baseType: !73, size: 2040, offset: 2040)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "ftail", scope: !120, file: !19, line: 39, baseType: !73, size: 2040, offset: 4080)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "f_num", scope: !120, file: !19, line: 40, baseType: !5, size: 32, offset: 6144)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "vdtype", scope: !120, file: !19, line: 41, baseType: !127, size: 32, offset: 6176)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoFileType", file: !19, line: 32, baseType: !18)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !120, file: !19, line: 42, baseType: !86, size: 1088, offset: 6208)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "is_concatenated", scope: !120, file: !19, line: 43, baseType: !5, size: 32, offset: 7296)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "is_interleaved", scope: !120, file: !19, line: 44, baseType: !5, size: 32, offset: 7328)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "zero_pad", scope: !120, file: !19, line: 45, baseType: !5, size: 32, offset: 7360)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "num_digits", scope: !120, file: !19, line: 46, baseType: !5, size: 32, offset: 7392)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !120, file: !19, line: 47, baseType: !5, size: 32, offset: 7424)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "end_frame", scope: !120, file: !19, line: 48, baseType: !5, size: 32, offset: 7456)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nframes", scope: !120, file: !19, line: 49, baseType: !5, size: 32, offset: 7488)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_size", scope: !120, file: !19, line: 50, baseType: !5, size: 32, offset: 7520)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_size", scope: !120, file: !19, line: 51, baseType: !5, size: 32, offset: 7552)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_offset", scope: !120, file: !19, line: 52, baseType: !5, size: 32, offset: 7584)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_offset", scope: !120, file: !19, line: 53, baseType: !5, size: 32, offset: 7616)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "avi", scope: !120, file: !19, line: 56, baseType: !141, size: 64, offset: 7680)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "input_file2", scope: !70, file: !57, line: 870, baseType: !119, size: 7744, offset: 16320)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "input_file3", scope: !70, file: !57, line: 871, baseType: !119, size: 7744, offset: 24064)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "DecodeAllLayers", scope: !70, file: !57, line: 873, baseType: !5, size: 32, offset: 31808)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !70, file: !57, line: 884, baseType: !5, size: 32, offset: 31840)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !70, file: !57, line: 885, baseType: !5, size: 32, offset: 31872)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !70, file: !57, line: 886, baseType: !5, size: 32, offset: 31904)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !70, file: !57, line: 890, baseType: !5, size: 32, offset: 31936)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "stdRange", scope: !70, file: !57, line: 893, baseType: !5, size: 32, offset: 31968)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "videoCode", scope: !70, file: !57, line: 894, baseType: !5, size: 32, offset: 32000)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "export_views", scope: !70, file: !57, line: 895, baseType: !5, size: 32, offset: 32032)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "iDecFrmNum", scope: !70, file: !57, line: 897, baseType: !5, size: 32, offset: 32064)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "bDisplayDecParams", scope: !70, file: !57, line: 899, baseType: !5, size: 32, offset: 32096)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !66, file: !57, line: 569, baseType: !155, size: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !157, line: 138, baseType: !158)
!157 = !DIFile(filename: "ldecod_src/inc/parsetcommon.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d59d7e00f3aec3a23ed88314ae35b687")
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !157, line: 94, size: 17728, elements: !159)
!159 = !{!160, !161, !162, !163, !164, !165, !166, !170, !175, !179, !182, !183, !184, !185, !186, !190, !191, !192, !193, !194, !195, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !158, file: !157, line: 96, baseType: !5, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !158, file: !157, line: 97, baseType: !29, size: 32, offset: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !158, file: !157, line: 98, baseType: !29, size: 32, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !158, file: !157, line: 99, baseType: !5, size: 32, offset: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !158, file: !157, line: 100, baseType: !5, size: 32, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !158, file: !157, line: 102, baseType: !5, size: 32, offset: 160)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !158, file: !157, line: 103, baseType: !167, size: 384, offset: 192)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 384, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 12)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !158, file: !157, line: 104, baseType: !171, size: 3072, offset: 576)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 3072, elements: !172)
!172 = !{!173, !174}
!173 = !DISubrange(count: 6)
!174 = !DISubrange(count: 16)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !158, file: !157, line: 105, baseType: !176, size: 12288, offset: 3648)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 12288, elements: !177)
!177 = !{!173, !178}
!178 = !DISubrange(count: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !158, file: !157, line: 106, baseType: !180, size: 192, offset: 15936)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 192, elements: !181)
!181 = !{!173}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !158, file: !157, line: 107, baseType: !180, size: 192, offset: 16128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_pic_order_in_frame_present_flag", scope: !158, file: !157, line: 110, baseType: !5, size: 32, offset: 16320)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !158, file: !157, line: 111, baseType: !29, size: 32, offset: 16352)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !158, file: !157, line: 112, baseType: !29, size: 32, offset: 16384)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !158, file: !157, line: 114, baseType: !187, size: 256, offset: 16416)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 256, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 8)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !158, file: !157, line: 116, baseType: !187, size: 256, offset: 16672)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !158, file: !157, line: 117, baseType: !187, size: 256, offset: 16928)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !158, file: !157, line: 119, baseType: !5, size: 32, offset: 17184)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !158, file: !157, line: 120, baseType: !29, size: 32, offset: 17216)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !158, file: !157, line: 122, baseType: !29, size: 32, offset: 17248)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !158, file: !157, line: 123, baseType: !196, size: 64, offset: 17280)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !198, line: 21, baseType: !199)
!198 = !DIFile(filename: "ldecod_src/inc/typedefs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1393d024b72e653f4e6dbeffdb0b154")
!199 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !158, file: !157, line: 125, baseType: !5, size: 32, offset: 17344)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !158, file: !157, line: 126, baseType: !5, size: 32, offset: 17376)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !158, file: !157, line: 127, baseType: !5, size: 32, offset: 17408)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !158, file: !157, line: 128, baseType: !29, size: 32, offset: 17440)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !158, file: !157, line: 129, baseType: !5, size: 32, offset: 17472)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !158, file: !157, line: 130, baseType: !5, size: 32, offset: 17504)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !158, file: !157, line: 131, baseType: !5, size: 32, offset: 17536)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "second_chroma_qp_index_offset", scope: !158, file: !157, line: 133, baseType: !5, size: 32, offset: 17568)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !158, file: !157, line: 135, baseType: !5, size: 32, offset: 17600)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !158, file: !157, line: 136, baseType: !5, size: 32, offset: 17632)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !158, file: !157, line: 137, baseType: !5, size: 32, offset: 17664)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !66, file: !57, line: 570, baseType: !212, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !157, line: 197, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !157, line: 142, size: 33024, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !313, !314}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !214, file: !157, line: 144, baseType: !5, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !214, file: !157, line: 146, baseType: !29, size: 32, offset: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !214, file: !157, line: 147, baseType: !5, size: 32, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !214, file: !157, line: 148, baseType: !5, size: 32, offset: 96)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !214, file: !157, line: 149, baseType: !5, size: 32, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !214, file: !157, line: 150, baseType: !5, size: 32, offset: 160)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set4_flag", scope: !214, file: !157, line: 152, baseType: !5, size: 32, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !214, file: !157, line: 154, baseType: !29, size: 32, offset: 224)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !214, file: !157, line: 155, baseType: !29, size: 32, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !214, file: !157, line: 156, baseType: !29, size: 32, offset: 288)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !214, file: !157, line: 158, baseType: !5, size: 32, offset: 320)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !214, file: !157, line: 159, baseType: !167, size: 384, offset: 352)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !214, file: !157, line: 160, baseType: !171, size: 3072, offset: 736)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !214, file: !157, line: 161, baseType: !176, size: 12288, offset: 3808)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !214, file: !157, line: 162, baseType: !180, size: 192, offset: 16096)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !214, file: !157, line: 163, baseType: !180, size: 192, offset: 16288)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !214, file: !157, line: 165, baseType: !29, size: 32, offset: 16480)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !214, file: !157, line: 166, baseType: !29, size: 32, offset: 16512)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !214, file: !157, line: 167, baseType: !29, size: 32, offset: 16544)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !214, file: !157, line: 168, baseType: !29, size: 32, offset: 16576)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !214, file: !157, line: 170, baseType: !29, size: 32, offset: 16608)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !214, file: !157, line: 172, baseType: !5, size: 32, offset: 16640)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !214, file: !157, line: 173, baseType: !5, size: 32, offset: 16672)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !214, file: !157, line: 174, baseType: !5, size: 32, offset: 16704)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !214, file: !157, line: 175, baseType: !29, size: 32, offset: 16736)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !214, file: !157, line: 177, baseType: !242, size: 8192, offset: 16768)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8192, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 256)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !214, file: !157, line: 178, baseType: !29, size: 32, offset: 24960)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !214, file: !157, line: 179, baseType: !5, size: 32, offset: 24992)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !214, file: !157, line: 180, baseType: !29, size: 32, offset: 25024)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !214, file: !157, line: 181, baseType: !29, size: 32, offset: 25056)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !214, file: !157, line: 182, baseType: !5, size: 32, offset: 25088)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !214, file: !157, line: 184, baseType: !5, size: 32, offset: 25120)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !214, file: !157, line: 185, baseType: !5, size: 32, offset: 25152)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !214, file: !157, line: 186, baseType: !5, size: 32, offset: 25184)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !214, file: !157, line: 187, baseType: !29, size: 32, offset: 25216)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !214, file: !157, line: 188, baseType: !29, size: 32, offset: 25248)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !214, file: !157, line: 189, baseType: !29, size: 32, offset: 25280)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !214, file: !157, line: 190, baseType: !29, size: 32, offset: 25312)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !214, file: !157, line: 191, baseType: !5, size: 32, offset: 25344)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !214, file: !157, line: 192, baseType: !259, size: 7584, offset: 25376)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !157, line: 90, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !157, line: 53, size: 7584, elements: !261)
!261 = !{!262, !263, !264, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !260, file: !157, line: 55, baseType: !5, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !260, file: !157, line: 56, baseType: !29, size: 32, offset: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !260, file: !157, line: 57, baseType: !265, size: 16, offset: 64)
!265 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !260, file: !157, line: 58, baseType: !265, size: 16, offset: 80)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !260, file: !157, line: 59, baseType: !5, size: 32, offset: 96)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !260, file: !157, line: 60, baseType: !5, size: 32, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !260, file: !157, line: 61, baseType: !5, size: 32, offset: 160)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !260, file: !157, line: 62, baseType: !29, size: 32, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !260, file: !157, line: 63, baseType: !5, size: 32, offset: 224)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !260, file: !157, line: 64, baseType: !5, size: 32, offset: 256)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !260, file: !157, line: 65, baseType: !29, size: 32, offset: 288)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !260, file: !157, line: 66, baseType: !29, size: 32, offset: 320)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !260, file: !157, line: 67, baseType: !29, size: 32, offset: 352)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !260, file: !157, line: 68, baseType: !5, size: 32, offset: 384)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_top_field", scope: !260, file: !157, line: 69, baseType: !29, size: 32, offset: 416)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_bottom_field", scope: !260, file: !157, line: 70, baseType: !29, size: 32, offset: 448)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !260, file: !157, line: 71, baseType: !5, size: 32, offset: 480)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !260, file: !157, line: 72, baseType: !29, size: 32, offset: 512)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !260, file: !157, line: 73, baseType: !29, size: 32, offset: 544)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !260, file: !157, line: 74, baseType: !5, size: 32, offset: 576)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !260, file: !157, line: 75, baseType: !5, size: 32, offset: 608)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !260, file: !157, line: 76, baseType: !285, size: 3296, offset: 640)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !157, line: 50, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !157, line: 38, size: 3296, elements: !287)
!287 = !{!288, !289, !290, !291, !295, !296, !297, !298, !299, !300}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !286, file: !157, line: 40, baseType: !29, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !286, file: !157, line: 41, baseType: !29, size: 32, offset: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !286, file: !157, line: 42, baseType: !29, size: 32, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !286, file: !157, line: 43, baseType: !292, size: 1024, offset: 96)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 1024, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !286, file: !157, line: 44, baseType: !292, size: 1024, offset: 1120)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !286, file: !157, line: 45, baseType: !292, size: 1024, offset: 2144)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !286, file: !157, line: 46, baseType: !29, size: 32, offset: 3168)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !286, file: !157, line: 47, baseType: !29, size: 32, offset: 3200)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !286, file: !157, line: 48, baseType: !29, size: 32, offset: 3232)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !286, file: !157, line: 49, baseType: !29, size: 32, offset: 3264)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !260, file: !157, line: 77, baseType: !5, size: 32, offset: 3936)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !260, file: !157, line: 78, baseType: !285, size: 3296, offset: 3968)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !260, file: !157, line: 80, baseType: !5, size: 32, offset: 7264)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !260, file: !157, line: 81, baseType: !5, size: 32, offset: 7296)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !260, file: !157, line: 82, baseType: !5, size: 32, offset: 7328)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !260, file: !157, line: 83, baseType: !5, size: 32, offset: 7360)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !260, file: !157, line: 84, baseType: !29, size: 32, offset: 7392)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !260, file: !157, line: 85, baseType: !29, size: 32, offset: 7424)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !260, file: !157, line: 86, baseType: !29, size: 32, offset: 7456)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !260, file: !157, line: 87, baseType: !29, size: 32, offset: 7488)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "num_reorder_frames", scope: !260, file: !157, line: 88, baseType: !29, size: 32, offset: 7520)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !260, file: !157, line: 89, baseType: !29, size: 32, offset: 7552)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !214, file: !157, line: 193, baseType: !29, size: 32, offset: 32960)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !214, file: !157, line: 195, baseType: !5, size: 32, offset: 32992)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "SeqParSet", scope: !66, file: !57, line: 571, baseType: !316, size: 1056768, offset: 192)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 1056768, elements: !293)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "PicParSet", scope: !66, file: !57, line: 572, baseType: !318, size: 4538368, offset: 1056960)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 4538368, elements: !243)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "active_subset_sps", scope: !66, file: !57, line: 575, baseType: !320, size: 64, offset: 5595328)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "subset_seq_parameter_set_rbsp_t", file: !157, line: 256, baseType: !322)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !157, line: 228, size: 37312, elements: !323)
!323 = !{!324, !325, !326, !327, !328, !329, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !344, !345, !346, !347}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !322, file: !157, line: 230, baseType: !213, size: 33024)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "bit_equal_to_one", scope: !322, file: !157, line: 232, baseType: !29, size: 32, offset: 33024)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "num_views_minus1", scope: !322, file: !157, line: 233, baseType: !5, size: 32, offset: 33056)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !322, file: !157, line: 234, baseType: !141, size: 64, offset: 33088)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l0", scope: !322, file: !157, line: 235, baseType: !141, size: 64, offset: 33152)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l0", scope: !322, file: !157, line: 236, baseType: !330, size: 64, offset: 33216)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l1", scope: !322, file: !157, line: 237, baseType: !141, size: 64, offset: 33280)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l1", scope: !322, file: !157, line: 238, baseType: !330, size: 64, offset: 33344)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l0", scope: !322, file: !157, line: 240, baseType: !141, size: 64, offset: 33408)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l0", scope: !322, file: !157, line: 241, baseType: !330, size: 64, offset: 33472)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l1", scope: !322, file: !157, line: 242, baseType: !141, size: 64, offset: 33536)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l1", scope: !322, file: !157, line: 243, baseType: !330, size: 64, offset: 33600)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "num_level_values_signalled_minus1", scope: !322, file: !157, line: 245, baseType: !5, size: 32, offset: 33664)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !322, file: !157, line: 246, baseType: !141, size: 64, offset: 33728)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "num_applicable_ops_minus1", scope: !322, file: !157, line: 247, baseType: !141, size: 64, offset: 33792)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_temporal_id", scope: !322, file: !157, line: 248, baseType: !330, size: 64, offset: 33856)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_target_views_minus1", scope: !322, file: !157, line: 249, baseType: !330, size: 64, offset: 33920)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_target_view_id", scope: !322, file: !157, line: 250, baseType: !343, size: 64, offset: 33984)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_views_minus1", scope: !322, file: !157, line: 251, baseType: !330, size: 64, offset: 34048)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "mvc_vui_parameters_present_flag", scope: !322, file: !157, line: 253, baseType: !29, size: 32, offset: 34112)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !322, file: !157, line: 254, baseType: !5, size: 32, offset: 34144)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "MVCVUIParams", scope: !322, file: !157, line: 255, baseType: !348, size: 3136, offset: 34176)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "MVCVUI_t", file: !157, line: 226, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mvcvui_tag", file: !157, line: 200, size: 3136, elements: !350)
!350 = !{!351, !352, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !370, !371, !373, !374, !375, !376}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops_minus1", scope: !349, file: !157, line: 202, baseType: !5, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !349, file: !157, line: 203, baseType: !353, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "num_target_output_views_minus1", scope: !349, file: !157, line: 204, baseType: !141, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !349, file: !157, line: 205, baseType: !330, size: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !349, file: !157, line: 206, baseType: !353, size: 64, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !349, file: !157, line: 207, baseType: !141, size: 64, offset: 320)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !349, file: !157, line: 208, baseType: !141, size: 64, offset: 384)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !349, file: !157, line: 209, baseType: !353, size: 64, offset: 448)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !349, file: !157, line: 210, baseType: !353, size: 64, offset: 512)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !349, file: !157, line: 211, baseType: !353, size: 64, offset: 576)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !349, file: !157, line: 212, baseType: !353, size: 64, offset: 640)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !349, file: !157, line: 213, baseType: !353, size: 64, offset: 704)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !349, file: !157, line: 216, baseType: !354, size: 8, offset: 768)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !349, file: !157, line: 217, baseType: !354, size: 8, offset: 776)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !349, file: !157, line: 218, baseType: !354, size: 8, offset: 784)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !349, file: !157, line: 219, baseType: !369, size: 1024, offset: 800)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 1024, elements: !293)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !349, file: !157, line: 220, baseType: !369, size: 1024, offset: 1824)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !349, file: !157, line: 221, baseType: !372, size: 256, offset: 2848)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 256, elements: !293)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !349, file: !157, line: 222, baseType: !354, size: 8, offset: 3104)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !349, file: !157, line: 223, baseType: !354, size: 8, offset: 3112)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !349, file: !157, line: 224, baseType: !354, size: 8, offset: 3120)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !349, file: !157, line: 225, baseType: !354, size: 8, offset: 3128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "SubsetSeqParSet", scope: !66, file: !57, line: 577, baseType: !378, size: 1193984, offset: 5595392)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 1193984, elements: !293)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_width_in_mbs_minus1", scope: !66, file: !57, line: 578, baseType: !5, size: 32, offset: 6789376)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_height_in_map_units_minus1", scope: !66, file: !57, line: 579, baseType: !5, size: 32, offset: 6789408)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "last_max_dec_frame_buffering", scope: !66, file: !57, line: 580, baseType: !5, size: 32, offset: 6789440)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "last_profile_idc", scope: !66, file: !57, line: 581, baseType: !5, size: 32, offset: 6789472)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "p_SEI", scope: !66, file: !57, line: 584, baseType: !384, size: 64, offset: 6789504)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DICompositeType(tag: DW_TAG_structure_type, name: "sei_params", file: !57, line: 584, flags: DIFlagFwdDecl)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "old_slice", scope: !66, file: !57, line: 586, baseType: !387, size: 64, offset: 6789568)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_slice_par", file: !57, line: 902, size: 416, elements: !389)
!389 = !{!390, !391, !392, !393, !394, !395, !399, !400, !401, !402, !403, !404, !405}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !388, file: !57, line: 904, baseType: !29, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !388, file: !57, line: 905, baseType: !29, size: 32, offset: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "nal_ref_idc", scope: !388, file: !57, line: 906, baseType: !5, size: 32, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "pic_oder_cnt_lsb", scope: !388, file: !57, line: 907, baseType: !29, size: 32, offset: 96)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_oder_cnt_bottom", scope: !388, file: !57, line: 908, baseType: !5, size: 32, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !388, file: !57, line: 909, baseType: !396, size: 64, offset: 160)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 2)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !388, file: !57, line: 910, baseType: !197, size: 8, offset: 224)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !388, file: !57, line: 911, baseType: !197, size: 8, offset: 232)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !388, file: !57, line: 912, baseType: !5, size: 32, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "pps_id", scope: !388, file: !57, line: 913, baseType: !5, size: 32, offset: 288)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !388, file: !57, line: 915, baseType: !5, size: 32, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !388, file: !57, line: 916, baseType: !5, size: 32, offset: 352)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !388, file: !57, line: 917, baseType: !5, size: 32, offset: 384)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !66, file: !57, line: 587, baseType: !407, size: 64, offset: 6789632)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snr_par", file: !57, line: 839, size: 512, elements: !409)
!409 = !{!410, !411, !414, !415, !416, !417}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "frame_ctr", scope: !408, file: !57, line: 841, baseType: !5, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !408, file: !57, line: 842, baseType: !412, size: 96, offset: 32)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 96, elements: !97)
!413 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "snr1", scope: !408, file: !57, line: 843, baseType: !412, size: 96, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "snra", scope: !408, file: !57, line: 844, baseType: !412, size: 96, offset: 224)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "sse", scope: !408, file: !57, line: 845, baseType: !412, size: 96, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "msse", scope: !408, file: !57, line: 846, baseType: !412, size: 96, offset: 416)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !66, file: !57, line: 588, baseType: !5, size: 32, offset: 6789696)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !66, file: !57, line: 591, baseType: !29, size: 32, offset: 6789728)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "iSliceNumOfCurrPic", scope: !66, file: !57, line: 592, baseType: !5, size: 32, offset: 6789760)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesAllocated", scope: !66, file: !57, line: 593, baseType: !5, size: 32, offset: 6789792)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesDecoded", scope: !66, file: !57, line: 594, baseType: !5, size: 32, offset: 6789824)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "ppSliceList", scope: !66, file: !57, line: 595, baseType: !424, size: 64, offset: 6789888)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !57, line: 542, baseType: !62)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !66, file: !57, line: 596, baseType: !353, size: 64, offset: 6789952)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block_JV", scope: !66, file: !57, line: 597, baseType: !429, size: 192, offset: 6790016)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 192, elements: !97)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !66, file: !57, line: 601, baseType: !5, size: 32, offset: 6790208)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !66, file: !57, line: 602, baseType: !5, size: 32, offset: 6790240)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !66, file: !57, line: 603, baseType: !5, size: 32, offset: 6790272)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "width_cr", scope: !66, file: !57, line: 604, baseType: !5, size: 32, offset: 6790304)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "height_cr", scope: !66, file: !57, line: 605, baseType: !5, size: 32, offset: 6790336)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !66, file: !57, line: 607, baseType: !436, size: 64, offset: 6790400)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode_JV", scope: !66, file: !57, line: 608, baseType: !438, size: 192, offset: 6790464)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 192, elements: !97)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "nz_coeff", scope: !66, file: !57, line: 609, baseType: !440, size: 64, offset: 6790656)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !66, file: !57, line: 610, baseType: !330, size: 64, offset: 6790720)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "siblock_JV", scope: !66, file: !57, line: 611, baseType: !444, size: 192, offset: 6790784)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 192, elements: !97)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "newframe", scope: !66, file: !57, line: 613, baseType: !5, size: 32, offset: 6790976)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !66, file: !57, line: 614, baseType: !5, size: 32, offset: 6791008)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "pNextSlice", scope: !66, file: !57, line: 617, baseType: !425, size: 64, offset: 6791040)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !66, file: !57, line: 618, baseType: !55, size: 64, offset: 6791104)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data_JV", scope: !66, file: !57, line: 619, baseType: !450, size: 192, offset: 6791168)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 192, elements: !97)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "ChromaArrayType", scope: !66, file: !57, line: 621, baseType: !5, size: 32, offset: 6791360)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_head", scope: !66, file: !57, line: 626, baseType: !453, size: 64, offset: 6791424)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DICompositeType(tag: DW_TAG_structure_type, name: "concealment_node", file: !57, line: 626, flags: DIFlagFwdDecl)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_end", scope: !66, file: !57, line: 627, baseType: !453, size: 64, offset: 6791488)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "pre_frame_num", scope: !66, file: !57, line: 629, baseType: !29, size: 32, offset: 6791552)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "non_conforming_stream", scope: !66, file: !57, line: 630, baseType: !5, size: 32, offset: 6791584)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntMsb", scope: !66, file: !57, line: 634, baseType: !5, size: 32, offset: 6791616)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntLsb", scope: !66, file: !57, line: 635, baseType: !29, size: 32, offset: 6791648)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedPicOrderCnt", scope: !66, file: !57, line: 638, baseType: !5, size: 32, offset: 6791680)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntCycleCnt", scope: !66, file: !57, line: 638, baseType: !5, size: 32, offset: 6791712)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumInPicOrderCntCycle", scope: !66, file: !57, line: 638, baseType: !5, size: 32, offset: 6791744)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNum", scope: !66, file: !57, line: 639, baseType: !29, size: 32, offset: 6791776)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumOffset", scope: !66, file: !57, line: 639, baseType: !29, size: 32, offset: 6791808)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedDeltaPerPicOrderCntCycle", scope: !66, file: !57, line: 640, baseType: !5, size: 32, offset: 6791840)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !66, file: !57, line: 641, baseType: !5, size: 32, offset: 6791872)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNumOffset", scope: !66, file: !57, line: 642, baseType: !5, size: 32, offset: 6791904)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "MaxFrameNum", scope: !66, file: !57, line: 645, baseType: !5, size: 32, offset: 6791936)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !66, file: !57, line: 647, baseType: !29, size: 32, offset: 6791968)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMapUnits", scope: !66, file: !57, line: 648, baseType: !29, size: 32, offset: 6792000)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "FrameHeightInMbs", scope: !66, file: !57, line: 649, baseType: !29, size: 32, offset: 6792032)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMbs", scope: !66, file: !57, line: 650, baseType: !29, size: 32, offset: 6792064)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !66, file: !57, line: 651, baseType: !29, size: 32, offset: 6792096)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "FrameSizeInMbs", scope: !66, file: !57, line: 652, baseType: !29, size: 32, offset: 6792128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "oldFrameSizeInMbs", scope: !66, file: !57, line: 653, baseType: !29, size: 32, offset: 6792160)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !66, file: !57, line: 655, baseType: !5, size: 32, offset: 6792192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "last_has_mmco_5", scope: !66, file: !57, line: 657, baseType: !5, size: 32, offset: 6792224)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_bottom_field", scope: !66, file: !57, line: 658, baseType: !5, size: 32, offset: 6792256)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_bitsize_on_disk", scope: !66, file: !57, line: 661, baseType: !5, size: 32, offset: 6792288)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma", scope: !66, file: !57, line: 662, baseType: !43, size: 16, offset: 6792320)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma", scope: !66, file: !57, line: 663, baseType: !43, size: 16, offset: 6792336)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_scale", scope: !66, file: !57, line: 664, baseType: !396, size: 64, offset: 6792352)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma_qp_scale", scope: !66, file: !57, line: 665, baseType: !5, size: 32, offset: 6792416)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma_qp_scale", scope: !66, file: !57, line: 666, baseType: !5, size: 32, offset: 6792448)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "dc_pred_value_comp", scope: !66, file: !57, line: 667, baseType: !486, size: 96, offset: 6792480)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 96, elements: !97)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "max_pel_value_comp", scope: !66, file: !57, line: 668, baseType: !96, size: 96, offset: 6792576)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !66, file: !57, line: 670, baseType: !5, size: 32, offset: 6792672)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !66, file: !57, line: 671, baseType: !5, size: 32, offset: 6792704)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "lossless_qpprime_flag", scope: !66, file: !57, line: 672, baseType: !5, size: 32, offset: 6792736)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "num_blk8x8_uv", scope: !66, file: !57, line: 673, baseType: !5, size: 32, offset: 6792768)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "num_uv_blocks", scope: !66, file: !57, line: 674, baseType: !5, size: 32, offset: 6792800)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "num_cdc_coeff", scope: !66, file: !57, line: 675, baseType: !5, size: 32, offset: 6792832)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x", scope: !66, file: !57, line: 676, baseType: !5, size: 32, offset: 6792864)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y", scope: !66, file: !57, line: 677, baseType: !5, size: 32, offset: 6792896)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x_blk", scope: !66, file: !57, line: 678, baseType: !5, size: 32, offset: 6792928)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y_blk", scope: !66, file: !57, line: 679, baseType: !5, size: 32, offset: 6792960)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size", scope: !66, file: !57, line: 680, baseType: !499, size: 192, offset: 6792992)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 192, elements: !500)
!500 = !{!98, !398}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_blk", scope: !66, file: !57, line: 681, baseType: !499, size: 192, offset: 6793184)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_shift", scope: !66, file: !57, line: 682, baseType: !499, size: 192, offset: 6793376)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_x", scope: !66, file: !57, line: 683, baseType: !5, size: 32, offset: 6793568)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_y", scope: !66, file: !57, line: 684, baseType: !5, size: 32, offset: 6793600)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_x", scope: !66, file: !57, line: 685, baseType: !5, size: 32, offset: 6793632)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_y", scope: !66, file: !57, line: 686, baseType: !5, size: 32, offset: 6793664)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "total_scale", scope: !66, file: !57, line: 687, baseType: !5, size: 32, offset: 6793696)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "max_vmv_r", scope: !66, file: !57, line: 689, baseType: !5, size: 32, offset: 6793728)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "idr_psnr_number", scope: !66, file: !57, line: 692, baseType: !5, size: 32, offset: 6793760)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "psnr_number", scope: !66, file: !57, line: 693, baseType: !5, size: 32, offset: 6793792)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "last_ref_pic_poc", scope: !66, file: !57, line: 700, baseType: !5, size: 32, offset: 6793824)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !66, file: !57, line: 701, baseType: !5, size: 32, offset: 6793856)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !66, file: !57, line: 702, baseType: !5, size: 32, offset: 6793888)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !66, file: !57, line: 703, baseType: !5, size: 32, offset: 6793920)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "earlier_missing_poc", scope: !66, file: !57, line: 704, baseType: !5, size: 32, offset: 6793952)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "frame_to_conceal", scope: !66, file: !57, line: 705, baseType: !29, size: 32, offset: 6793984)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "IDR_concealment_flag", scope: !66, file: !57, line: 706, baseType: !5, size: 32, offset: 6794016)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_slice_type", scope: !66, file: !57, line: 707, baseType: !5, size: 32, offset: 6794048)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point", scope: !66, file: !57, line: 710, baseType: !5, size: 32, offset: 6794080)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point_found", scope: !66, file: !57, line: 711, baseType: !5, size: 32, offset: 6794112)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_cnt", scope: !66, file: !57, line: 712, baseType: !5, size: 32, offset: 6794144)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_num", scope: !66, file: !57, line: 713, baseType: !5, size: 32, offset: 6794176)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_poc", scope: !66, file: !57, line: 714, baseType: !5, size: 32, offset: 6794208)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !66, file: !57, line: 716, baseType: !5, size: 32, offset: 6794240)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !66, file: !57, line: 717, baseType: !5, size: 32, offset: 6794272)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !66, file: !57, line: 719, baseType: !196, size: 64, offset: 6794304)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ibuf", scope: !66, file: !57, line: 720, baseType: !196, size: 64, offset: 6794368)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "imgData", scope: !66, file: !57, line: 722, baseType: !529, size: 2560, offset: 6794432)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageData", file: !530, line: 38, baseType: !531)
!530 = !DIFile(filename: "ldecod_src/inc/io_image.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "8caef624e6f5391b0c6ab2984e7f77c6")
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "image_data", file: !530, line: 20, size: 2560, elements: !532)
!532 = !{!533, !534, !540, !541, !542, !546, !547, !548, !549, !550}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !531, file: !530, line: 22, baseType: !86, size: 1088)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "frm_data", scope: !531, file: !530, line: 24, baseType: !535, size: 192, offset: 1088)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 192, elements: !97)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "imgpel", file: !198, line: 41, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !198, line: 23, baseType: !265)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "top_data", scope: !531, file: !530, line: 25, baseType: !535, size: 192, offset: 1280)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "bot_data", scope: !531, file: !530, line: 26, baseType: !535, size: 192, offset: 1472)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "frm_uint16", scope: !531, file: !530, line: 31, baseType: !543, size: 192, offset: 1664)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !544, size: 192, elements: !97)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "top_uint16", scope: !531, file: !530, line: 32, baseType: !543, size: 192, offset: 1856)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "bot_uint16", scope: !531, file: !530, line: 33, baseType: !543, size: 192, offset: 2048)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "frm_stride", scope: !531, file: !530, line: 35, baseType: !96, size: 96, offset: 2240)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "top_stride", scope: !531, file: !530, line: 36, baseType: !96, size: 96, offset: 2336)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "bot_stride", scope: !531, file: !530, line: 37, baseType: !96, size: 96, offset: 2432)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "imgData0", scope: !66, file: !57, line: 723, baseType: !529, size: 2560, offset: 6796992)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "imgData1", scope: !66, file: !57, line: 724, baseType: !529, size: 2560, offset: 6799552)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "imgData2", scope: !66, file: !57, line: 725, baseType: !529, size: 2560, offset: 6802112)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "imgData32", scope: !66, file: !57, line: 728, baseType: !529, size: 2560, offset: 6804672)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "imgData4", scope: !66, file: !57, line: 729, baseType: !529, size: 2560, offset: 6807232)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "imgData5", scope: !66, file: !57, line: 730, baseType: !529, size: 2560, offset: 6809792)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "imgData6", scope: !66, file: !57, line: 731, baseType: !529, size: 2560, offset: 6812352)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "previous_frame_num", scope: !66, file: !57, line: 735, baseType: !29, size: 32, offset: 6814912)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "Is_primary_correct", scope: !66, file: !57, line: 737, baseType: !5, size: 32, offset: 6814944)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "Is_redundant_correct", scope: !66, file: !57, line: 738, baseType: !5, size: 32, offset: 6814976)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "tot_time", scope: !66, file: !57, line: 741, baseType: !562, size: 64, offset: 6815040)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !563, line: 103, baseType: !564)
!563 = !DIFile(filename: "ldecod_src/inc/win32.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "100def0ffeee72ecdc377183538a04bb")
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !565, line: 27, baseType: !566)
!565 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !567, line: 44, baseType: !568)
!567 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!568 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "p_out", scope: !66, file: !57, line: 744, baseType: !5, size: 32, offset: 6815104)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "p_out_mvc", scope: !66, file: !57, line: 746, baseType: !571, size: 32768, offset: 6815136)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32768, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 1024)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "p_ref", scope: !66, file: !57, line: 748, baseType: !5, size: 32, offset: 6847904)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "LastAccessUnitExists", scope: !66, file: !57, line: 751, baseType: !5, size: 32, offset: 6847936)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "NALUCount", scope: !66, file: !57, line: 752, baseType: !5, size: 32, offset: 6847968)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "Bframe_ctr", scope: !66, file: !57, line: 755, baseType: !5, size: 32, offset: 6848000)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "frame_no", scope: !66, file: !57, line: 756, baseType: !5, size: 32, offset: 6848032)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "g_nFrame", scope: !66, file: !57, line: 758, baseType: !5, size: 32, offset: 6848064)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "global_init_done", scope: !66, file: !57, line: 759, baseType: !5, size: 32, offset: 6848096)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "imgY_ref", scope: !66, file: !57, line: 762, baseType: !536, size: 64, offset: 6848128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV_ref", scope: !66, file: !57, line: 763, baseType: !583, size: 64, offset: 6848192)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "qp_per_matrix", scope: !66, file: !57, line: 765, baseType: !141, size: 64, offset: 6848256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "qp_rem_matrix", scope: !66, file: !57, line: 766, baseType: !141, size: 64, offset: 6848320)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "last_out_fs", scope: !66, file: !57, line: 768, baseType: !587, size: 64, offset: 6848384)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_store", file: !589, line: 152, size: 768, elements: !590)
!589 = !DIFile(filename: "ldecod_src/inc/mbuffer.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1ba7faf5f978b0f36a8f480bbf7b3401")
!590 = !{!591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !721, !722, !723, !724, !725}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "is_used", scope: !588, file: !589, line: 154, baseType: !5, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "is_reference", scope: !588, file: !589, line: 155, baseType: !5, size: 32, offset: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !588, file: !589, line: 156, baseType: !5, size: 32, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "is_orig_reference", scope: !588, file: !589, line: 157, baseType: !5, size: 32, offset: 96)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "is_non_existent", scope: !588, file: !589, line: 159, baseType: !5, size: 32, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !588, file: !589, line: 161, baseType: !29, size: 32, offset: 160)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !588, file: !589, line: 162, baseType: !29, size: 32, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num_wrap", scope: !588, file: !589, line: 164, baseType: !5, size: 32, offset: 224)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !588, file: !589, line: 165, baseType: !5, size: 32, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !588, file: !589, line: 166, baseType: !5, size: 32, offset: 288)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !588, file: !589, line: 167, baseType: !5, size: 32, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_reference", scope: !588, file: !589, line: 170, baseType: !5, size: 32, offset: 352)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !588, file: !589, line: 172, baseType: !604, size: 64, offset: 384)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "StorablePicture", file: !589, line: 138, baseType: !606)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "storable_picture", file: !589, line: 46, size: 3328, elements: !607)
!607 = !{!608, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !661, !663, !667, !669, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !606, file: !589, line: 48, baseType: !609, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "PictureStructure", file: !28, line: 140, baseType: !27)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !606, file: !589, line: 50, baseType: !5, size: 32, offset: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "top_poc", scope: !606, file: !589, line: 51, baseType: !5, size: 32, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_poc", scope: !606, file: !589, line: 52, baseType: !5, size: 32, offset: 96)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "frame_poc", scope: !606, file: !589, line: 53, baseType: !5, size: 32, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !606, file: !589, line: 54, baseType: !29, size: 32, offset: 160)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !606, file: !589, line: 55, baseType: !29, size: 32, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "pic_num", scope: !606, file: !589, line: 57, baseType: !5, size: 32, offset: 224)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !606, file: !589, line: 58, baseType: !5, size: 32, offset: 256)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !606, file: !589, line: 59, baseType: !5, size: 32, offset: 288)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !606, file: !589, line: 61, baseType: !197, size: 8, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "used_for_reference", scope: !606, file: !589, line: 62, baseType: !5, size: 32, offset: 352)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !606, file: !589, line: 63, baseType: !5, size: 32, offset: 384)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "non_existing", scope: !606, file: !589, line: 64, baseType: !5, size: 32, offset: 416)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !606, file: !589, line: 65, baseType: !5, size: 32, offset: 448)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "max_slice_id", scope: !606, file: !589, line: 67, baseType: !43, size: 16, offset: 480)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "size_x", scope: !606, file: !589, line: 69, baseType: !5, size: 32, offset: 512)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "size_y", scope: !606, file: !589, line: 69, baseType: !5, size: 32, offset: 544)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr", scope: !606, file: !589, line: 69, baseType: !5, size: 32, offset: 576)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr", scope: !606, file: !589, line: 69, baseType: !5, size: 32, offset: 608)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_m1", scope: !606, file: !589, line: 70, baseType: !5, size: 32, offset: 640)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_m1", scope: !606, file: !589, line: 70, baseType: !5, size: 32, offset: 672)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr_m1", scope: !606, file: !589, line: 70, baseType: !5, size: 32, offset: 704)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr_m1", scope: !606, file: !589, line: 70, baseType: !5, size: 32, offset: 736)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "coded_frame", scope: !606, file: !589, line: 71, baseType: !5, size: 32, offset: 768)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !606, file: !589, line: 72, baseType: !5, size: 32, offset: 800)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !606, file: !589, line: 73, baseType: !29, size: 32, offset: 832)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !606, file: !589, line: 74, baseType: !29, size: 32, offset: 864)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !606, file: !589, line: 75, baseType: !5, size: 32, offset: 896)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !606, file: !589, line: 75, baseType: !5, size: 32, offset: 928)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !606, file: !589, line: 76, baseType: !5, size: 32, offset: 960)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !606, file: !589, line: 76, baseType: !5, size: 32, offset: 992)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "imgY", scope: !606, file: !589, line: 79, baseType: !536, size: 64, offset: 1024)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV", scope: !606, file: !589, line: 80, baseType: !583, size: 64, offset: 1088)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "img_comp", scope: !606, file: !589, line: 81, baseType: !583, size: 64, offset: 1152)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "mv_info", scope: !606, file: !589, line: 84, baseType: !645, size: 64, offset: 1216)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params", file: !589, line: 36, size: 256, elements: !648)
!648 = !{!649, !652, !659}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic", scope: !647, file: !589, line: 38, baseType: !650, size: 128)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 128, elements: !397)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !647, file: !589, line: 39, baseType: !653, size: 64, offset: 128)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !654, size: 64, elements: !397)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionVector", file: !57, line: 104, baseType: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !57, line: 100, size: 32, elements: !656)
!656 = !{!657, !658}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "mv_x", scope: !655, file: !57, line: 102, baseType: !43, size: 16)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "mv_y", scope: !655, file: !57, line: 103, baseType: !43, size: 16, offset: 16)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "ref_idx", scope: !647, file: !589, line: 40, baseType: !660, size: 16, offset: 192)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 16, elements: !397)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "JVmv_info", scope: !606, file: !589, line: 85, baseType: !662, size: 192, offset: 1280)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 192, elements: !97)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "motion", scope: !606, file: !589, line: 87, baseType: !664, size: 64, offset: 1472)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params_old", file: !589, line: 29, size: 64, elements: !665)
!665 = !{!666}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !664, file: !589, line: 31, baseType: !196, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "JVmotion", scope: !606, file: !589, line: 88, baseType: !668, size: 192, offset: 1536)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !664, size: 192, elements: !97)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "slice_id", scope: !606, file: !589, line: 90, baseType: !670, size: 64, offset: 1728)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !606, file: !589, line: 92, baseType: !651, size: 64, offset: 1792)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !606, file: !589, line: 93, baseType: !651, size: 64, offset: 1856)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !606, file: !589, line: 94, baseType: !651, size: 64, offset: 1920)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !606, file: !589, line: 96, baseType: !5, size: 32, offset: 1984)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !606, file: !589, line: 97, baseType: !5, size: 32, offset: 2016)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !606, file: !589, line: 98, baseType: !5, size: 32, offset: 2048)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !606, file: !589, line: 99, baseType: !5, size: 32, offset: 2080)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !606, file: !589, line: 100, baseType: !5, size: 32, offset: 2112)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !606, file: !589, line: 102, baseType: !5, size: 32, offset: 2144)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !606, file: !589, line: 103, baseType: !5, size: 32, offset: 2176)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !606, file: !589, line: 104, baseType: !5, size: 32, offset: 2208)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !606, file: !589, line: 105, baseType: !5, size: 32, offset: 2240)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !606, file: !589, line: 106, baseType: !5, size: 32, offset: 2272)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !606, file: !589, line: 107, baseType: !5, size: 32, offset: 2304)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !606, file: !589, line: 108, baseType: !5, size: 32, offset: 2336)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !606, file: !589, line: 109, baseType: !5, size: 32, offset: 2368)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_offset", scope: !606, file: !589, line: 110, baseType: !396, size: 64, offset: 2400)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !606, file: !589, line: 111, baseType: !5, size: 32, offset: 2464)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !606, file: !589, line: 112, baseType: !691, size: 64, offset: 2496)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecRefPicMarking_t", file: !57, line: 194, baseType: !693)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DecRefPicMarking_s", file: !57, line: 186, size: 256, elements: !694)
!694 = !{!695, !696, !697, !698, !699, !700}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "memory_management_control_operation", scope: !693, file: !57, line: 188, baseType: !5, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "difference_of_pic_nums_minus1", scope: !693, file: !57, line: 189, baseType: !5, size: 32, offset: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !693, file: !57, line: 190, baseType: !5, size: 32, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !693, file: !57, line: 191, baseType: !5, size: 32, offset: 96)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_frame_idx_plus1", scope: !693, file: !57, line: 192, baseType: !5, size: 32, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !693, file: !57, line: 193, baseType: !701, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "concealed_pic", scope: !606, file: !589, line: 115, baseType: !5, size: 32, offset: 2560)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "seiHasTone_mapping", scope: !606, file: !589, line: 118, baseType: !5, size: 32, offset: 2592)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_model_id", scope: !606, file: !589, line: 119, baseType: !5, size: 32, offset: 2624)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "tonemapped_bit_depth", scope: !606, file: !589, line: 120, baseType: !5, size: 32, offset: 2656)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_lut", scope: !606, file: !589, line: 121, baseType: !537, size: 64, offset: 2688)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !606, file: !589, line: 124, baseType: !5, size: 32, offset: 2752)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !606, file: !589, line: 125, baseType: !5, size: 32, offset: 2784)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !606, file: !589, line: 126, baseType: !5, size: 32, offset: 2816)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaStride", scope: !606, file: !589, line: 128, baseType: !5, size: 32, offset: 2848)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaStride", scope: !606, file: !589, line: 129, baseType: !5, size: 32, offset: 2880)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaExpandedHeight", scope: !606, file: !589, line: 130, baseType: !5, size: 32, offset: 2912)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaExpandedHeight", scope: !606, file: !589, line: 131, baseType: !5, size: 32, offset: 2944)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "cur_imgY", scope: !606, file: !589, line: 132, baseType: !536, size: 64, offset: 3008)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "no_ref", scope: !606, file: !589, line: 133, baseType: !5, size: 32, offset: 3072)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "iCodingType", scope: !606, file: !589, line: 134, baseType: !5, size: 32, offset: 3104)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !606, file: !589, line: 136, baseType: !660, size: 16, offset: 3136)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !606, file: !589, line: 137, baseType: !719, size: 128, offset: 3200)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 128, elements: !397)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !588, file: !589, line: 173, baseType: !604, size: 64, offset: 448)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !588, file: !589, line: 174, baseType: !604, size: 64, offset: 512)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !588, file: !589, line: 177, baseType: !5, size: 32, offset: 576)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !588, file: !589, line: 178, baseType: !396, size: 64, offset: 608)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !588, file: !589, line: 179, baseType: !396, size: 64, offset: 672)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "pocs_in_dpb", scope: !66, file: !57, line: 769, baseType: !727, size: 3200, offset: 6848448)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 3200, elements: !728)
!728 = !{!729}
!729 = !DISubrange(count: 100)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !66, file: !57, line: 771, baseType: !651, size: 64, offset: 6851648)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture_JV", scope: !66, file: !57, line: 772, baseType: !732, size: 192, offset: 6851712)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 192, elements: !97)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "no_reference_picture", scope: !66, file: !57, line: 773, baseType: !651, size: 64, offset: 6851904)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "erc_object_list", scope: !66, file: !57, line: 776, baseType: !735, size: 64, offset: 6851968)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DICompositeType(tag: DW_TAG_structure_type, name: "object_buffer", file: !57, line: 776, flags: DIFlagFwdDecl)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "erc_errorVar", scope: !66, file: !57, line: 777, baseType: !738, size: 64, offset: 6852032)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DICompositeType(tag: DW_TAG_structure_type, name: "ercVariables_s", file: !57, line: 777, flags: DIFlagFwdDecl)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !66, file: !57, line: 779, baseType: !5, size: 32, offset: 6852096)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "erc_img", scope: !66, file: !57, line: 780, baseType: !65, size: 64, offset: 6852160)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "ec_flag", scope: !66, file: !57, line: 781, baseType: !743, size: 640, offset: 6852224)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 640, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 20)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "annex_b", scope: !66, file: !57, line: 783, baseType: !747, size: 64, offset: 6852864)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DICompositeType(tag: DW_TAG_structure_type, name: "annex_b_struct", file: !57, line: 783, flags: DIFlagFwdDecl)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "bitsfile", scope: !66, file: !57, line: 784, baseType: !750, size: 64, offset: 6852928)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "sBitsFile", file: !57, line: 784, flags: DIFlagFwdDecl)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "out_buffer", scope: !66, file: !57, line: 786, baseType: !587, size: 64, offset: 6852992)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output", scope: !66, file: !57, line: 788, baseType: !651, size: 64, offset: 6853056)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output_state", scope: !66, file: !57, line: 789, baseType: !5, size: 32, offset: 6853120)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_flag", scope: !66, file: !57, line: 790, baseType: !5, size: 32, offset: 6853152)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "BitStreamFile", scope: !66, file: !57, line: 792, baseType: !5, size: 32, offset: 6853184)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !66, file: !57, line: 794, baseType: !758, size: 64, offset: 6853248)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decoded_picture_buffer", file: !589, line: 186, size: 33408, elements: !760)
!760 = !{!761, !764, !767, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !759, file: !589, line: 188, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoParameters", file: !57, line: 836, baseType: !66)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !759, file: !589, line: 189, baseType: !765, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "InputParameters", file: !57, line: 900, baseType: !70)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !759, file: !589, line: 190, baseType: !768, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameStore", file: !589, line: 182, baseType: !588)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ref", scope: !759, file: !589, line: 191, baseType: !768, size: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ltref", scope: !759, file: !589, line: 192, baseType: !768, size: 64, offset: 256)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !759, file: !589, line: 193, baseType: !29, size: 32, offset: 320)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "used_size", scope: !759, file: !589, line: 194, baseType: !29, size: 32, offset: 352)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "ref_frames_in_buffer", scope: !759, file: !589, line: 195, baseType: !29, size: 32, offset: 384)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ltref_frames_in_buffer", scope: !759, file: !589, line: 196, baseType: !29, size: 32, offset: 416)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_poc", scope: !759, file: !589, line: 197, baseType: !5, size: 32, offset: 448)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_view_id", scope: !759, file: !589, line: 199, baseType: !5, size: 32, offset: 480)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_pic_idx", scope: !759, file: !589, line: 200, baseType: !571, size: 32768, offset: 512)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "init_done", scope: !759, file: !589, line: 205, baseType: !5, size: 32, offset: 33280)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !759, file: !589, line: 206, baseType: !5, size: 32, offset: 33312)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "last_picture", scope: !759, file: !589, line: 208, baseType: !769, size: 64, offset: 33344)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_legacy", scope: !66, file: !57, line: 795, baseType: !758, size: 64, offset: 6853312)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_layer", scope: !66, file: !57, line: 796, baseType: !785, size: 128, offset: 6853376)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !758, size: 128, elements: !397)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "cslice_type", scope: !66, file: !57, line: 800, baseType: !787, size: 72, offset: 6853504)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 72, elements: !788)
!788 = !{!789}
!789 = !DISubrange(count: 9)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "MbToSliceGroupMap", scope: !66, file: !57, line: 802, baseType: !141, size: 64, offset: 6853632)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "MapUnitToSliceGroupMap", scope: !66, file: !57, line: 803, baseType: !141, size: 64, offset: 6853696)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfSliceGroups", scope: !66, file: !57, line: 804, baseType: !5, size: 32, offset: 6853760)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "seiToneMapping", scope: !66, file: !57, line: 807, baseType: !794, size: 64, offset: 6853824)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DICompositeType(tag: DW_TAG_structure_type, name: "tone_mapping_struct_s", file: !57, line: 807, flags: DIFlagFwdDecl)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "buf2img", scope: !66, file: !57, line: 810, baseType: !797, size: 64, offset: 6853888)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !536, !800, !5, !5, !5, !5, !5, !5}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "getNeighbour", scope: !66, file: !57, line: 811, baseType: !802, size: 64, offset: 6853952)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{null, !55, !5, !5, !141, !805}
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPos", file: !57, line: 85, baseType: !807)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pix_pos", file: !57, line: 77, size: 128, elements: !808)
!808 = !{!809, !810, !811, !812, !813, !814}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !807, file: !57, line: 79, baseType: !5, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "mb_addr", scope: !807, file: !57, line: 80, baseType: !5, size: 32, offset: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !807, file: !57, line: 81, baseType: !43, size: 16, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !807, file: !57, line: 82, baseType: !43, size: 16, offset: 80)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "pos_x", scope: !807, file: !57, line: 83, baseType: !43, size: 16, offset: 96)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "pos_y", scope: !807, file: !57, line: 84, baseType: !43, size: 16, offset: 112)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "get_mb_block_pos", scope: !66, file: !57, line: 812, baseType: !816, size: 64, offset: 6854016)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{null, !5, !671, !671}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthVer", scope: !66, file: !57, line: 813, baseType: !820, size: 64, offset: 6854080)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{null, !196, !55, !5, !5, !651}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthHor", scope: !66, file: !57, line: 814, baseType: !820, size: 64, offset: 6854144)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaVer", scope: !66, file: !57, line: 815, baseType: !825, size: 64, offset: 6854208)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !828, !536, !196, !55, !5, !651}
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorPlane", file: !28, line: 32, baseType: !34)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaHor", scope: !66, file: !57, line: 816, baseType: !825, size: 64, offset: 6854272)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaVer", scope: !66, file: !57, line: 817, baseType: !831, size: 64, offset: 6854336)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{null, !536, !196, !55, !5, !5, !651}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaHor", scope: !66, file: !57, line: 818, baseType: !831, size: 64, offset: 6854400)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "img2buf", scope: !66, file: !57, line: 819, baseType: !836, size: 64, offset: 6854464)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !536, !800, !5, !5, !5, !5, !5, !5, !5, !5}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "pDecOuputPic", scope: !66, file: !57, line: 821, baseType: !840, size: 64, offset: 6854528)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodedPicList", file: !57, line: 561, baseType: !842)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decodedpic_t", file: !57, line: 544, size: 640, elements: !843)
!843 = !{!844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "bValid", scope: !842, file: !57, line: 546, baseType: !5, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "iViewId", scope: !842, file: !57, line: 547, baseType: !5, size: 32, offset: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "iPOC", scope: !842, file: !57, line: 548, baseType: !5, size: 32, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVFormat", scope: !842, file: !57, line: 549, baseType: !5, size: 32, offset: 96)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVStorageFormat", scope: !842, file: !57, line: 550, baseType: !5, size: 32, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "iBitDepth", scope: !842, file: !57, line: 551, baseType: !5, size: 32, offset: 160)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "pY", scope: !842, file: !57, line: 552, baseType: !196, size: 64, offset: 192)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "pU", scope: !842, file: !57, line: 553, baseType: !196, size: 64, offset: 256)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "pV", scope: !842, file: !57, line: 554, baseType: !196, size: 64, offset: 320)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "iWidth", scope: !842, file: !57, line: 555, baseType: !5, size: 32, offset: 384)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "iHeight", scope: !842, file: !57, line: 556, baseType: !5, size: 32, offset: 416)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "iYBufStride", scope: !842, file: !57, line: 557, baseType: !5, size: 32, offset: 448)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "iUVBufStride", scope: !842, file: !57, line: 558, baseType: !5, size: 32, offset: 480)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "iSkipPicNum", scope: !842, file: !57, line: 559, baseType: !5, size: 32, offset: 512)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "pNext", scope: !842, file: !57, line: 560, baseType: !859, size: 64, offset: 576)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "iDeblockMode", scope: !66, file: !57, line: 822, baseType: !5, size: 32, offset: 6854592)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "nalu", scope: !66, file: !57, line: 823, baseType: !862, size: 64, offset: 6854656)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DICompositeType(tag: DW_TAG_structure_type, name: "nalu_t", file: !57, line: 823, flags: DIFlagFwdDecl)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !66, file: !57, line: 824, baseType: !5, size: 32, offset: 6854720)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !66, file: !57, line: 825, baseType: !5, size: 32, offset: 6854752)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !66, file: !57, line: 826, baseType: !5, size: 32, offset: 6854784)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !66, file: !57, line: 827, baseType: !5, size: 32, offset: 6854816)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "bDeblockEnable", scope: !66, file: !57, line: 829, baseType: !5, size: 32, offset: 6854848)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "iPostProcess", scope: !66, file: !57, line: 830, baseType: !5, size: 32, offset: 6854880)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "bFrameInit", scope: !66, file: !57, line: 831, baseType: !5, size: 32, offset: 6854912)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "pNextPPS", scope: !66, file: !57, line: 835, baseType: !155, size: 64, offset: 6854976)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !62, file: !57, line: 344, baseType: !69, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !62, file: !57, line: 345, baseType: !155, size: 64, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !62, file: !57, line: 346, baseType: !212, size: 64, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "svc_extension_flag", scope: !62, file: !57, line: 347, baseType: !5, size: 32, offset: 256)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !62, file: !57, line: 350, baseType: !758, size: 64, offset: 320)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !62, file: !57, line: 353, baseType: !5, size: 32, offset: 384)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !62, file: !57, line: 354, baseType: !5, size: 32, offset: 416)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !62, file: !57, line: 355, baseType: !5, size: 32, offset: 448)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "Transform8x8Mode", scope: !62, file: !57, line: 356, baseType: !5, size: 32, offset: 480)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "is_not_independent", scope: !62, file: !57, line: 357, baseType: !5, size: 32, offset: 512)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "toppoc", scope: !62, file: !57, line: 359, baseType: !5, size: 32, offset: 544)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "bottompoc", scope: !62, file: !57, line: 360, baseType: !5, size: 32, offset: 576)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "framepoc", scope: !62, file: !57, line: 361, baseType: !5, size: 32, offset: 608)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_lsb", scope: !62, file: !57, line: 365, baseType: !29, size: 32, offset: 640)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt_bottom", scope: !62, file: !57, line: 366, baseType: !5, size: 32, offset: 672)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !62, file: !57, line: 368, baseType: !396, size: 64, offset: 704)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntMsb", scope: !62, file: !57, line: 372, baseType: !5, size: 32, offset: 768)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "AbsFrameNum", scope: !62, file: !57, line: 378, baseType: !29, size: 32, offset: 800)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !62, file: !57, line: 379, baseType: !5, size: 32, offset: 832)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "current_mb_nr", scope: !62, file: !57, line: 387, baseType: !29, size: 32, offset: 864)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !62, file: !57, line: 388, baseType: !29, size: 32, offset: 896)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "current_slice_nr", scope: !62, file: !57, line: 389, baseType: !43, size: 16, offset: 928)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "cod_counter", scope: !62, file: !57, line: 396, baseType: !5, size: 32, offset: 960)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "allrefzero", scope: !62, file: !57, line: 397, baseType: !5, size: 32, offset: 992)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !62, file: !57, line: 400, baseType: !5, size: 32, offset: 1024)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "direct_spatial_mv_pred_flag", scope: !62, file: !57, line: 401, baseType: !5, size: 32, offset: 1056)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_active", scope: !62, file: !57, line: 402, baseType: !396, size: 64, offset: 1088)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !62, file: !57, line: 406, baseType: !5, size: 32, offset: 1152)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !62, file: !57, line: 407, baseType: !5, size: 32, offset: 1184)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !62, file: !57, line: 408, baseType: !5, size: 32, offset: 1216)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "qs", scope: !62, file: !57, line: 409, baseType: !5, size: 32, offset: 1248)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qs_delta", scope: !62, file: !57, line: 410, baseType: !5, size: 32, offset: 1280)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !62, file: !57, line: 411, baseType: !5, size: 32, offset: 1312)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "model_number", scope: !62, file: !57, line: 412, baseType: !5, size: 32, offset: 1344)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !62, file: !57, line: 413, baseType: !29, size: 32, offset: 1376)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !62, file: !57, line: 414, baseType: !29, size: 32, offset: 1408)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !62, file: !57, line: 415, baseType: !197, size: 8, offset: 1440)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !62, file: !57, line: 416, baseType: !609, size: 32, offset: 1472)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !62, file: !57, line: 417, baseType: !5, size: 32, offset: 1504)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "end_mb_nr_plus1", scope: !62, file: !57, line: 418, baseType: !5, size: 32, offset: 1536)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !62, file: !57, line: 419, baseType: !5, size: 32, offset: 1568)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "dp_mode", scope: !62, file: !57, line: 420, baseType: !5, size: 32, offset: 1600)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "current_header", scope: !62, file: !57, line: 421, baseType: !5, size: 32, offset: 1632)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "next_header", scope: !62, file: !57, line: 422, baseType: !5, size: 32, offset: 1664)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "last_dquant", scope: !62, file: !57, line: 423, baseType: !5, size: 32, offset: 1696)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "colour_plane_id", scope: !62, file: !57, line: 426, baseType: !5, size: 32, offset: 1728)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt", scope: !62, file: !57, line: 427, baseType: !5, size: 32, offset: 1760)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "sp_switch", scope: !62, file: !57, line: 428, baseType: !5, size: 32, offset: 1792)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_cycle", scope: !62, file: !57, line: 429, baseType: !5, size: 32, offset: 1824)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_slice_ref_idx", scope: !62, file: !57, line: 430, baseType: !5, size: 32, offset: 1856)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !62, file: !57, line: 431, baseType: !5, size: 32, offset: 1888)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !62, file: !57, line: 432, baseType: !5, size: 32, offset: 1920)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !62, file: !57, line: 433, baseType: !5, size: 32, offset: 1952)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !62, file: !57, line: 434, baseType: !691, size: 64, offset: 1984)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !62, file: !57, line: 436, baseType: !927, size: 48, offset: 2048)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 48, elements: !181)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !62, file: !57, line: 437, baseType: !929, size: 384, offset: 2112)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 384, elements: !181)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !62, file: !57, line: 440, baseType: !931, size: 64, offset: 2496)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !57, line: 324, baseType: !933)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !57, line: 314, size: 384, elements: !934)
!934 = !{!935, !946, !955}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !933, file: !57, line: 317, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !57, line: 47, baseType: !938)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bit_stream", file: !57, line: 300, size: 256, elements: !939)
!939 = !{!940, !941, !942, !943, !944, !945}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "read_len", scope: !938, file: !57, line: 303, baseType: !5, size: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "code_len", scope: !938, file: !57, line: 304, baseType: !5, size: 32, offset: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "frame_bitoffset", scope: !938, file: !57, line: 306, baseType: !5, size: 32, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_length", scope: !938, file: !57, line: 307, baseType: !5, size: 32, offset: 96)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !938, file: !57, line: 309, baseType: !196, size: 64, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !938, file: !57, line: 310, baseType: !5, size: 32, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "de_cabac", scope: !933, file: !57, line: 318, baseType: !947, size: 256, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironment", file: !57, line: 95, baseType: !948)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !57, line: 88, size: 256, elements: !949)
!949 = !{!950, !951, !952, !953, !954}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "Drange", scope: !948, file: !57, line: 90, baseType: !29, size: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "Dvalue", scope: !948, file: !57, line: 91, baseType: !29, size: 32, offset: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "DbitsLeft", scope: !948, file: !57, line: 92, baseType: !5, size: 32, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm", scope: !948, file: !57, line: 93, baseType: !196, size: 64, offset: 128)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm_len", scope: !948, file: !57, line: 94, baseType: !141, size: 64, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "readSyntaxElement", scope: !933, file: !57, line: 320, baseType: !956, size: 64, offset: 320)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{!5, !55, !959, !982}
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !57, line: 296, baseType: !961)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !57, line: 276, size: 384, elements: !962)
!962 = !{!963, !964, !965, !966, !967, !968, !969, !970, !971, !975}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !961, file: !57, line: 278, baseType: !5, size: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !961, file: !57, line: 279, baseType: !5, size: 32, offset: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !961, file: !57, line: 280, baseType: !5, size: 32, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !961, file: !57, line: 281, baseType: !5, size: 32, offset: 96)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !961, file: !57, line: 282, baseType: !5, size: 32, offset: 128)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !961, file: !57, line: 283, baseType: !29, size: 32, offset: 160)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !961, file: !57, line: 284, baseType: !5, size: 32, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !961, file: !57, line: 285, baseType: !5, size: 32, offset: 224)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !961, file: !57, line: 293, baseType: !972, size: 64, offset: 256)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{null, !5, !5, !141, !141}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "reading", scope: !961, file: !57, line: 295, baseType: !976, size: 64, offset: 320)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{null, !55, !979, !980}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironmentPtr", file: !57, line: 97, baseType: !981)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !62, file: !57, line: 441, baseType: !984, size: 64, offset: 2560)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !57, line: 153, baseType: !986)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !57, line: 145, size: 2912, elements: !987)
!987 = !{!988, !998, !1001, !1005, !1008, !1012}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !986, file: !57, line: 147, baseType: !989, size: 1056)
!989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 1056, elements: !996)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !57, line: 122, baseType: !991)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !57, line: 117, size: 32, elements: !992)
!992 = !{!993, !994, !995}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !991, file: !57, line: 119, baseType: !539, size: 16)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !991, file: !57, line: 120, baseType: !199, size: 8, offset: 16)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !991, file: !57, line: 121, baseType: !199, size: 8, offset: 24)
!996 = !{!98, !997}
!997 = !DISubrange(count: 11)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !986, file: !57, line: 148, baseType: !999, size: 576, offset: 1056)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 576, elements: !1000)
!1000 = !{!398, !789}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !986, file: !57, line: 149, baseType: !1002, size: 640, offset: 1632)
!1002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 640, elements: !1003)
!1003 = !{!398, !1004}
!1004 = !DISubrange(count: 10)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !986, file: !57, line: 150, baseType: !1006, size: 384, offset: 2272)
!1006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 384, elements: !1007)
!1007 = !{!398, !173}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !986, file: !57, line: 151, baseType: !1009, size: 128, offset: 2656)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 128, elements: !1010)
!1010 = !{!1011}
!1011 = !DISubrange(count: 4)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !986, file: !57, line: 152, baseType: !1009, size: 128, offset: 2784)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !62, file: !57, line: 442, baseType: !1014, size: 64, offset: 2624)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !57, line: 175, baseType: !1016)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !57, line: 164, size: 52768, elements: !1017)
!1017 = !{!1018, !1020, !1022, !1023, !1026, !1030, !1034, !1035, !1039}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !1016, file: !57, line: 166, baseType: !1019, size: 96)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 96, elements: !97)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !1016, file: !57, line: 167, baseType: !1021, size: 64, offset: 96)
!1021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 64, elements: !397)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !1016, file: !57, line: 168, baseType: !1009, size: 128, offset: 160)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !1016, file: !57, line: 169, baseType: !1024, size: 384, offset: 288)
!1024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 384, elements: !1025)
!1025 = !{!98, !1011}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !1016, file: !57, line: 170, baseType: !1027, size: 2816, offset: 672)
!1027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 2816, elements: !1028)
!1028 = !{!1029, !1011}
!1029 = !DISubrange(count: 22)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !1016, file: !57, line: 171, baseType: !1031, size: 21120, offset: 3488)
!1031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 21120, elements: !1032)
!1032 = !{!398, !1029, !1033}
!1033 = !DISubrange(count: 15)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !1016, file: !57, line: 172, baseType: !1031, size: 21120, offset: 24608)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !1016, file: !57, line: 173, baseType: !1036, size: 3520, offset: 45728)
!1036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 3520, elements: !1037)
!1037 = !{!1029, !1038}
!1038 = !DISubrange(count: 5)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !1016, file: !57, line: 174, baseType: !1036, size: 3520, offset: 49248)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "mvscale", scope: !62, file: !57, line: 444, baseType: !1041, size: 6144, offset: 2688)
!1041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 6144, elements: !1042)
!1042 = !{!173, !294}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag", scope: !62, file: !57, line: 446, baseType: !396, size: 64, offset: 8832)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "reordering_of_pic_nums_idc", scope: !62, file: !57, line: 447, baseType: !1045, size: 128, offset: 8896)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 128, elements: !397)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1", scope: !62, file: !57, line: 448, baseType: !1045, size: 128, offset: 9024)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx", scope: !62, file: !57, line: 449, baseType: !1045, size: 128, offset: 9152)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_view_idx_minus1", scope: !62, file: !57, line: 452, baseType: !1045, size: 128, offset: 9280)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !62, file: !57, line: 454, baseType: !5, size: 32, offset: 9408)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !62, file: !57, line: 455, baseType: !5, size: 32, offset: 9440)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !62, file: !57, line: 456, baseType: !5, size: 32, offset: 9472)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "NaluHeaderMVCExt", scope: !62, file: !57, line: 458, baseType: !1053, size: 256, offset: 9504)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALUnitHeaderMVCExt_t", file: !57, line: 337, baseType: !1054)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nalunitheadermvcext_tag", file: !57, line: 327, size: 256, elements: !1055)
!1055 = !{!1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "non_idr_flag", scope: !1054, file: !57, line: 329, baseType: !29, size: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "priority_id", scope: !1054, file: !57, line: 330, baseType: !29, size: 32, offset: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !1054, file: !57, line: 331, baseType: !29, size: 32, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !1054, file: !57, line: 332, baseType: !29, size: 32, offset: 96)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !1054, file: !57, line: 333, baseType: !29, size: 32, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !1054, file: !57, line: 334, baseType: !29, size: 32, offset: 160)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_one_bit", scope: !1054, file: !57, line: 335, baseType: !29, size: 32, offset: 192)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "iPrefixNALU", scope: !1054, file: !57, line: 336, baseType: !29, size: 32, offset: 224)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !62, file: !57, line: 461, baseType: !43, size: 16, offset: 9760)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !62, file: !57, line: 462, baseType: !43, size: 16, offset: 9776)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !62, file: !57, line: 463, baseType: !43, size: 16, offset: 9792)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !62, file: !57, line: 465, baseType: !5, size: 32, offset: 9824)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "dpB_NotPresent", scope: !62, file: !57, line: 467, baseType: !5, size: 32, offset: 9856)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "dpC_NotPresent", scope: !62, file: !57, line: 468, baseType: !5, size: 32, offset: 9888)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "is_reset_coeff", scope: !62, file: !57, line: 470, baseType: !5, size: 32, offset: 9920)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "mb_pred", scope: !62, file: !57, line: 471, baseType: !583, size: 64, offset: 9984)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rec", scope: !62, file: !57, line: 472, baseType: !583, size: 64, offset: 10048)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rres", scope: !62, file: !57, line: 473, baseType: !343, size: 64, offset: 10112)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "cof", scope: !62, file: !57, line: 474, baseType: !343, size: 64, offset: 10176)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "fcf", scope: !62, file: !57, line: 475, baseType: !343, size: 64, offset: 10240)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "cofu", scope: !62, file: !57, line: 477, baseType: !1077, size: 512, offset: 10304)
!1077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 512, elements: !1078)
!1078 = !{!174}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l0", scope: !62, file: !57, line: 479, baseType: !536, size: 64, offset: 10816)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l1", scope: !62, file: !57, line: 480, baseType: !536, size: 64, offset: 10880)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_res", scope: !62, file: !57, line: 481, baseType: !330, size: 64, offset: 10944)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l2", scope: !62, file: !57, line: 482, baseType: !536, size: 64, offset: 11008)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l3", scope: !62, file: !57, line: 483, baseType: !536, size: 64, offset: 11072)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Intra", scope: !62, file: !57, line: 486, baseType: !1085, size: 9216, offset: 11136)
!1085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 9216, elements: !1086)
!1086 = !{!98, !173, !1011, !1011}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Inter", scope: !62, file: !57, line: 487, baseType: !1085, size: 9216, offset: 20352)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Intra", scope: !62, file: !57, line: 488, baseType: !1089, size: 36864, offset: 29568)
!1089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 36864, elements: !1090)
!1090 = !{!98, !173, !189, !189}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Inter", scope: !62, file: !57, line: 489, baseType: !1089, size: 36864, offset: 66432)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "qmatrix", scope: !62, file: !57, line: 491, baseType: !1093, size: 768, offset: 103296)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 768, elements: !168)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "coeff", scope: !62, file: !57, line: 494, baseType: !1095, size: 2048, offset: 104064)
!1095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 2048, elements: !1096)
!1096 = !{!178}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_ctr", scope: !62, file: !57, line: 495, baseType: !5, size: 32, offset: 106112)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !62, file: !57, line: 496, baseType: !5, size: 32, offset: 106144)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !62, file: !57, line: 500, baseType: !265, size: 16, offset: 106176)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !62, file: !57, line: 501, baseType: !265, size: 16, offset: 106192)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "luma_log2_weight_denom", scope: !62, file: !57, line: 503, baseType: !265, size: 16, offset: 106208)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_log2_weight_denom", scope: !62, file: !57, line: 504, baseType: !265, size: 16, offset: 106224)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "wp_weight", scope: !62, file: !57, line: 505, baseType: !343, size: 64, offset: 106240)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "wp_offset", scope: !62, file: !57, line: 506, baseType: !343, size: 64, offset: 106304)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "wbp_weight", scope: !62, file: !57, line: 507, baseType: !1106, size: 64, offset: 106368)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_luma", scope: !62, file: !57, line: 508, baseType: !43, size: 16, offset: 106432)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_chroma", scope: !62, file: !57, line: 509, baseType: !43, size: 16, offset: 106448)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx0", scope: !62, file: !57, line: 512, baseType: !5, size: 32, offset: 106464)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx1", scope: !62, file: !57, line: 513, baseType: !5, size: 32, offset: 106496)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview0", scope: !62, file: !57, line: 514, baseType: !1112, size: 64, offset: 106560)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview1", scope: !62, file: !57, line: 515, baseType: !1112, size: 64, offset: 106624)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "max_mb_vmv_r", scope: !62, file: !57, line: 520, baseType: !5, size: 32, offset: 106688)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ref_flag", scope: !62, file: !57, line: 521, baseType: !1116, size: 544, offset: 106720)
!1116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 544, elements: !1117)
!1117 = !{!1118}
!1118 = !DISubrange(count: 17)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "read_CBP_and_coeffs_from_NAL", scope: !62, file: !57, line: 523, baseType: !1120, size: 64, offset: 107264)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{null, !55}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "decode_one_component", scope: !62, file: !57, line: 524, baseType: !1124, size: 64, offset: 107328)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!5, !55, !828, !536, !651}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "readSlice", scope: !62, file: !57, line: 525, baseType: !1128, size: 64, offset: 107392)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!5, !65, !69}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "nal_startcode_follows", scope: !62, file: !57, line: 526, baseType: !1132, size: 64, offset: 107456)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!5, !61, !5}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "read_motion_info_from_NAL", scope: !62, file: !57, line: 527, baseType: !1120, size: 64, offset: 107520)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "read_one_macroblock", scope: !62, file: !57, line: 528, baseType: !1120, size: 64, offset: 107584)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "interpret_mb_mode", scope: !62, file: !57, line: 529, baseType: !1120, size: 64, offset: 107648)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "init_lists", scope: !62, file: !57, line: 530, baseType: !1139, size: 64, offset: 107712)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null, !61}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "intrapred_chroma", scope: !62, file: !57, line: 531, baseType: !1120, size: 64, offset: 107776)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_intra", scope: !62, file: !57, line: 532, baseType: !972, size: 64, offset: 107840)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_inter", scope: !62, file: !57, line: 533, baseType: !972, size: 64, offset: 107904)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "update_direct_mv_info", scope: !62, file: !57, line: 534, baseType: !1120, size: 64, offset: 107968)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !62, file: !57, line: 535, baseType: !5, size: 32, offset: 108032)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !62, file: !57, line: 536, baseType: !55, size: 64, offset: 108096)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !62, file: !57, line: 537, baseType: !651, size: 64, offset: 108160)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !62, file: !57, line: 538, baseType: !330, size: 64, offset: 108224)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !62, file: !57, line: 539, baseType: !436, size: 64, offset: 108288)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !62, file: !57, line: 540, baseType: !353, size: 64, offset: 108352)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_vector_adjustment", scope: !62, file: !57, line: 541, baseType: !1153, size: 768, offset: 108416)
!1153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 768, elements: !172)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !58, file: !57, line: 200, baseType: !65, size: 64, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !58, file: !57, line: 201, baseType: !69, size: 64, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrX", scope: !58, file: !57, line: 202, baseType: !5, size: 32, offset: 192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !58, file: !57, line: 203, baseType: !1158, size: 32, offset: 224)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlockPos", file: !57, line: 112, baseType: !1159)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !57, line: 108, size: 32, elements: !1160)
!1160 = !{!1161, !1162}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1159, file: !57, line: 110, baseType: !43, size: 16)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1159, file: !57, line: 111, baseType: !43, size: 16, offset: 16)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "block_x", scope: !58, file: !57, line: 204, baseType: !5, size: 32, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "block_y", scope: !58, file: !57, line: 205, baseType: !5, size: 32, offset: 288)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "block_y_aff", scope: !58, file: !57, line: 206, baseType: !5, size: 32, offset: 320)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "pix_x", scope: !58, file: !57, line: 207, baseType: !5, size: 32, offset: 352)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "pix_y", scope: !58, file: !57, line: 208, baseType: !5, size: 32, offset: 384)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_x", scope: !58, file: !57, line: 209, baseType: !5, size: 32, offset: 416)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_y", scope: !58, file: !57, line: 210, baseType: !5, size: 32, offset: 448)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_x", scope: !58, file: !57, line: 212, baseType: !5, size: 32, offset: 480)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_y", scope: !58, file: !57, line: 213, baseType: !5, size: 32, offset: 512)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !58, file: !57, line: 215, baseType: !5, size: 32, offset: 544)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "qpc", scope: !58, file: !57, line: 216, baseType: !396, size: 64, offset: 576)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "qp_scaled", scope: !58, file: !57, line: 217, baseType: !96, size: 96, offset: 640)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "is_lossless", scope: !58, file: !57, line: 218, baseType: !5, size: 32, offset: 736)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "is_intra_block", scope: !58, file: !57, line: 219, baseType: !5, size: 32, offset: 768)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "is_v_block", scope: !58, file: !57, line: 220, baseType: !5, size: 32, offset: 800)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "DeblockCall", scope: !58, file: !57, line: 221, baseType: !5, size: 32, offset: 832)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "slice_nr", scope: !58, file: !57, line: 223, baseType: !43, size: 16, offset: 864)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !58, file: !57, line: 224, baseType: !354, size: 8, offset: 880)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "dpl_flag", scope: !58, file: !57, line: 225, baseType: !354, size: 8, offset: 888)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "delta_quant", scope: !58, file: !57, line: 226, baseType: !43, size: 16, offset: 896)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "list_offset", scope: !58, file: !57, line: 227, baseType: !43, size: 16, offset: 912)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "mb_up", scope: !58, file: !57, line: 229, baseType: !1185, size: 64, offset: 960)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "mb_left", scope: !58, file: !57, line: 230, baseType: !1185, size: 64, offset: 1024)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "mbup", scope: !58, file: !57, line: 232, baseType: !1185, size: 64, offset: 1088)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "mbleft", scope: !58, file: !57, line: 233, baseType: !1185, size: 64, offset: 1152)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !58, file: !57, line: 236, baseType: !43, size: 16, offset: 1216)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !58, file: !57, line: 237, baseType: !1191, size: 1024, offset: 1232)
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 1024, elements: !1192)
!1192 = !{!398, !1011, !1011, !398}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !58, file: !57, line: 239, baseType: !5, size: 32, offset: 2272)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !58, file: !57, line: 240, baseType: !1195, size: 192, offset: 2304)
!1195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 192, elements: !97)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits", scope: !58, file: !57, line: 241, baseType: !1195, size: 192, offset: 2496)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits_8x8", scope: !58, file: !57, line: 242, baseType: !1195, size: 192, offset: 2688)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "i16mode", scope: !58, file: !57, line: 244, baseType: !5, size: 32, offset: 2880)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !58, file: !57, line: 245, baseType: !1200, size: 32, offset: 2912)
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 32, elements: !1010)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !58, file: !57, line: 246, baseType: !1200, size: 32, offset: 2944)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "ipmode_DPCM", scope: !58, file: !57, line: 247, baseType: !354, size: 8, offset: 2976)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !58, file: !57, line: 248, baseType: !354, size: 8, offset: 2984)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "skip_flag", scope: !58, file: !57, line: 249, baseType: !354, size: 8, offset: 2992)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !58, file: !57, line: 250, baseType: !43, size: 16, offset: 3008)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !58, file: !57, line: 251, baseType: !43, size: 16, offset: 3024)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !58, file: !57, line: 252, baseType: !43, size: 16, offset: 3040)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !58, file: !57, line: 254, baseType: !5, size: 32, offset: 3072)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrA", scope: !58, file: !57, line: 256, baseType: !5, size: 32, offset: 3104)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrB", scope: !58, file: !57, line: 256, baseType: !5, size: 32, offset: 3136)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrC", scope: !58, file: !57, line: 256, baseType: !5, size: 32, offset: 3168)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrD", scope: !58, file: !57, line: 256, baseType: !5, size: 32, offset: 3200)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailA", scope: !58, file: !57, line: 257, baseType: !5, size: 32, offset: 3232)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailB", scope: !58, file: !57, line: 257, baseType: !5, size: 32, offset: 3264)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailC", scope: !58, file: !57, line: 257, baseType: !5, size: 32, offset: 3296)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailD", scope: !58, file: !57, line: 257, baseType: !5, size: 32, offset: 3328)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !58, file: !57, line: 259, baseType: !5, size: 32, offset: 3360)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !58, file: !57, line: 260, baseType: !5, size: 32, offset: 3392)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_4x4", scope: !58, file: !57, line: 262, baseType: !1220, size: 64, offset: 3456)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{null, !1185, !828, !5, !5}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_8x8", scope: !58, file: !57, line: 263, baseType: !1220, size: 64, offset: 3520)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "GetMVPredictor", scope: !58, file: !57, line: 265, baseType: !1225, size: 64, offset: 3584)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{null, !1185, !805, !1228, !43, !645, !5, !5, !5, !5, !5}
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "read_and_store_CBP_block_bit", scope: !58, file: !57, line: 268, baseType: !1230, size: 64, offset: 3648)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!5, !1185, !980, !5}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "readRefPictureIdx", scope: !58, file: !57, line: 269, baseType: !1234, size: 64, offset: 3712)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!354, !1185, !979, !982, !354, !5}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "mixedModeEdgeFlag", scope: !58, file: !57, line: 272, baseType: !197, size: 8, offset: 3776)
!1238 = !{!1239, !1240}
!1239 = !DILocalVariable(name: "mbAddr", arg: 1, scope: !52, file: !1, line: 25, type: !5)
!1240 = !DILocalVariable(name: "currMB", arg: 2, scope: !52, file: !1, line: 25, type: !55)
!1241 = !DILocation(line: 0, scope: !52)
!1242 = !DILocation(line: 28, column: 15, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !52, file: !1, line: 28, column: 7)
!1244 = !DILocation(line: 28, column: 20, scope: !1243)
!1245 = !DILocation(line: 28, column: 47, scope: !1243)
!1246 = !DILocation(line: 28, column: 56, scope: !1243)
!1247 = !DILocation(line: 28, column: 69, scope: !1243)
!1248 = !DILocation(line: 28, column: 31, scope: !1243)
!1249 = !DILocation(line: 28, column: 7, scope: !52)
!1250 = !DILocation(line: 32, column: 16, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !52, file: !1, line: 32, column: 7)
!1252 = !DILocation(line: 32, column: 8, scope: !1251)
!1253 = !DILocation(line: 32, column: 7, scope: !52)
!1254 = !DILocation(line: 35, column: 26, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !1, line: 35, column: 9)
!1256 = distinct !DILexicalBlock(scope: !1251, file: !1, line: 33, column: 3)
!1257 = !DILocation(line: 35, column: 9, scope: !1255)
!1258 = !DILocation(line: 35, column: 42, scope: !1255)
!1259 = !DILocation(line: 35, column: 62, scope: !1255)
!1260 = !DILocation(line: 35, column: 51, scope: !1255)
!1261 = !DILocation(line: 35, column: 9, scope: !1256)
!1262 = !DILocation(line: 39, column: 3, scope: !52)
!1263 = !DILocation(line: 40, column: 1, scope: !52)
!1264 = distinct !DISubprogram(name: "CheckAvailabilityOfNeighbors", scope: !1, file: !1, line: 50, type: !1121, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1265)
!1265 = !{!1266, !1267, !1268, !1270}
!1266 = !DILocalVariable(name: "currMB", arg: 1, scope: !1264, file: !1, line: 50, type: !55)
!1267 = !DILocalVariable(name: "dec_picture", scope: !1264, file: !1, line: 53, type: !604)
!1268 = !DILocalVariable(name: "mb_nr", scope: !1264, file: !1, line: 54, type: !1269)
!1269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!1270 = !DILocalVariable(name: "cur_mb_pair", scope: !1271, file: !1, line: 58, type: !5)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 57, column: 3)
!1272 = distinct !DILexicalBlock(scope: !1264, file: !1, line: 56, column: 7)
!1273 = !DILocation(line: 0, scope: !1264)
!1274 = !DILocation(line: 53, column: 42, scope: !1264)
!1275 = !DILocation(line: 53, column: 51, scope: !1264)
!1276 = !DILocation(line: 54, column: 29, scope: !1264)
!1277 = !DILocation(line: 56, column: 20, scope: !1272)
!1278 = !DILocation(line: 56, column: 7, scope: !1272)
!1279 = !DILocation(line: 0, scope: !1272)
!1280 = !DILocation(line: 56, column: 7, scope: !1264)
!1281 = !DILocation(line: 58, column: 29, scope: !1271)
!1282 = !DILocation(line: 0, scope: !1271)
!1283 = !DILocation(line: 59, column: 25, scope: !1271)
!1284 = !DILocation(line: 59, column: 13, scope: !1271)
!1285 = !DILocation(line: 59, column: 21, scope: !1271)
!1286 = !DILocation(line: 60, column: 55, scope: !1271)
!1287 = !DILocation(line: 60, column: 40, scope: !1271)
!1288 = !DILocation(line: 60, column: 25, scope: !1271)
!1289 = !DILocation(line: 60, column: 21, scope: !1271)
!1290 = !DILocation(line: 61, column: 55, scope: !1271)
!1291 = !DILocation(line: 61, column: 40, scope: !1271)
!1292 = !DILocation(line: 61, column: 25, scope: !1271)
!1293 = !DILocation(line: 61, column: 13, scope: !1271)
!1294 = !DILocation(line: 61, column: 21, scope: !1271)
!1295 = !DILocation(line: 62, column: 55, scope: !1271)
!1296 = !DILocation(line: 62, column: 69, scope: !1271)
!1297 = !DILocation(line: 62, column: 25, scope: !1271)
!1298 = !DILocation(line: 62, column: 13, scope: !1271)
!1299 = !DILocation(line: 62, column: 21, scope: !1271)
!1300 = !DILocation(line: 0, scope: !52, inlinedAt: !1301)
!1301 = distinct !DILocation(line: 64, column: 35, scope: !1271)
!1302 = !DILocation(line: 28, column: 15, scope: !1243, inlinedAt: !1301)
!1303 = !DILocation(line: 28, column: 20, scope: !1243, inlinedAt: !1301)
!1304 = !DILocation(line: 28, column: 56, scope: !1243, inlinedAt: !1301)
!1305 = !DILocation(line: 28, column: 69, scope: !1243, inlinedAt: !1301)
!1306 = !DILocation(line: 28, column: 31, scope: !1243, inlinedAt: !1301)
!1307 = !DILocation(line: 28, column: 7, scope: !52, inlinedAt: !1301)
!1308 = !DILocation(line: 32, column: 16, scope: !1251, inlinedAt: !1301)
!1309 = !DILocation(line: 32, column: 8, scope: !1251, inlinedAt: !1301)
!1310 = !DILocation(line: 32, column: 7, scope: !52, inlinedAt: !1301)
!1311 = !DILocation(line: 35, column: 26, scope: !1255, inlinedAt: !1301)
!1312 = !DILocation(line: 35, column: 9, scope: !1255, inlinedAt: !1301)
!1313 = !DILocation(line: 35, column: 42, scope: !1255, inlinedAt: !1301)
!1314 = !DILocation(line: 35, column: 62, scope: !1255, inlinedAt: !1301)
!1315 = !DILocation(line: 35, column: 51, scope: !1255, inlinedAt: !1301)
!1316 = !DILocation(line: 35, column: 9, scope: !1256, inlinedAt: !1301)
!1317 = !DILocation(line: 64, column: 81, scope: !1271)
!1318 = !DILocation(line: 64, column: 105, scope: !1271)
!1319 = !DILocation(line: 64, column: 107, scope: !1271)
!1320 = !DILocation(line: 64, column: 76, scope: !1271)
!1321 = !DILocation(line: 64, column: 13, scope: !1271)
!1322 = !DILocation(line: 64, column: 22, scope: !1271)
!1323 = !DILocation(line: 0, scope: !52, inlinedAt: !1324)
!1324 = distinct !DILocation(line: 65, column: 35, scope: !1271)
!1325 = !DILocation(line: 28, column: 15, scope: !1243, inlinedAt: !1324)
!1326 = !DILocation(line: 28, column: 20, scope: !1243, inlinedAt: !1324)
!1327 = !DILocation(line: 28, column: 56, scope: !1243, inlinedAt: !1324)
!1328 = !DILocation(line: 28, column: 69, scope: !1243, inlinedAt: !1324)
!1329 = !DILocation(line: 28, column: 31, scope: !1243, inlinedAt: !1324)
!1330 = !DILocation(line: 28, column: 7, scope: !52, inlinedAt: !1324)
!1331 = !DILocation(line: 32, column: 16, scope: !1251, inlinedAt: !1324)
!1332 = !DILocation(line: 32, column: 8, scope: !1251, inlinedAt: !1324)
!1333 = !DILocation(line: 32, column: 7, scope: !52, inlinedAt: !1324)
!1334 = !DILocation(line: 35, column: 26, scope: !1255, inlinedAt: !1324)
!1335 = !DILocation(line: 35, column: 9, scope: !1255, inlinedAt: !1324)
!1336 = !DILocation(line: 35, column: 42, scope: !1255, inlinedAt: !1324)
!1337 = !DILocation(line: 35, column: 62, scope: !1255, inlinedAt: !1324)
!1338 = !DILocation(line: 35, column: 51, scope: !1255, inlinedAt: !1324)
!1339 = !DILocation(line: 35, column: 9, scope: !1256, inlinedAt: !1324)
!1340 = !DILocation(line: 39, column: 3, scope: !52, inlinedAt: !1324)
!1341 = !DILocation(line: 65, column: 13, scope: !1271)
!1342 = !DILocation(line: 65, column: 22, scope: !1271)
!1343 = !DILocation(line: 0, scope: !52, inlinedAt: !1344)
!1344 = distinct !DILocation(line: 66, column: 35, scope: !1271)
!1345 = !DILocation(line: 28, column: 15, scope: !1243, inlinedAt: !1344)
!1346 = !DILocation(line: 28, column: 20, scope: !1243, inlinedAt: !1344)
!1347 = !DILocation(line: 28, column: 56, scope: !1243, inlinedAt: !1344)
!1348 = !DILocation(line: 28, column: 69, scope: !1243, inlinedAt: !1344)
!1349 = !DILocation(line: 28, column: 31, scope: !1243, inlinedAt: !1344)
!1350 = !DILocation(line: 28, column: 7, scope: !52, inlinedAt: !1344)
!1351 = !DILocation(line: 32, column: 16, scope: !1251, inlinedAt: !1344)
!1352 = !DILocation(line: 32, column: 8, scope: !1251, inlinedAt: !1344)
!1353 = !DILocation(line: 32, column: 7, scope: !52, inlinedAt: !1344)
!1354 = !DILocation(line: 35, column: 26, scope: !1255, inlinedAt: !1344)
!1355 = !DILocation(line: 35, column: 9, scope: !1255, inlinedAt: !1344)
!1356 = !DILocation(line: 35, column: 42, scope: !1255, inlinedAt: !1344)
!1357 = !DILocation(line: 35, column: 62, scope: !1255, inlinedAt: !1344)
!1358 = !DILocation(line: 35, column: 51, scope: !1255, inlinedAt: !1344)
!1359 = !DILocation(line: 35, column: 9, scope: !1256, inlinedAt: !1344)
!1360 = !DILocation(line: 66, column: 81, scope: !1271)
!1361 = !DILocation(line: 66, column: 105, scope: !1271)
!1362 = !DILocation(line: 66, column: 107, scope: !1271)
!1363 = !DILocation(line: 66, column: 76, scope: !1271)
!1364 = !DILocation(line: 66, column: 13, scope: !1271)
!1365 = !DILocation(line: 66, column: 22, scope: !1271)
!1366 = !DILocation(line: 0, scope: !52, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 67, column: 35, scope: !1271)
!1368 = !DILocation(line: 28, column: 15, scope: !1243, inlinedAt: !1367)
!1369 = !DILocation(line: 28, column: 20, scope: !1243, inlinedAt: !1367)
!1370 = !DILocation(line: 28, column: 56, scope: !1243, inlinedAt: !1367)
!1371 = !DILocation(line: 28, column: 69, scope: !1243, inlinedAt: !1367)
!1372 = !DILocation(line: 28, column: 31, scope: !1243, inlinedAt: !1367)
!1373 = !DILocation(line: 28, column: 7, scope: !52, inlinedAt: !1367)
!1374 = !DILocation(line: 32, column: 16, scope: !1251, inlinedAt: !1367)
!1375 = !DILocation(line: 32, column: 8, scope: !1251, inlinedAt: !1367)
!1376 = !DILocation(line: 32, column: 7, scope: !52, inlinedAt: !1367)
!1377 = !DILocation(line: 35, column: 26, scope: !1255, inlinedAt: !1367)
!1378 = !DILocation(line: 35, column: 9, scope: !1255, inlinedAt: !1367)
!1379 = !DILocation(line: 35, column: 42, scope: !1255, inlinedAt: !1367)
!1380 = !DILocation(line: 35, column: 62, scope: !1255, inlinedAt: !1367)
!1381 = !DILocation(line: 35, column: 51, scope: !1255, inlinedAt: !1367)
!1382 = !DILocation(line: 35, column: 9, scope: !1256, inlinedAt: !1367)
!1383 = !DILocation(line: 67, column: 81, scope: !1271)
!1384 = !DILocation(line: 67, column: 105, scope: !1271)
!1385 = !DILocation(line: 67, column: 107, scope: !1271)
!1386 = !DILocation(line: 67, column: 76, scope: !1271)
!1387 = !DILocation(line: 71, column: 29, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 70, column: 3)
!1389 = !DILocation(line: 71, column: 13, scope: !1388)
!1390 = !DILocation(line: 71, column: 21, scope: !1388)
!1391 = !DILocation(line: 72, column: 44, scope: !1388)
!1392 = !DILocation(line: 72, column: 29, scope: !1388)
!1393 = !DILocation(line: 72, column: 58, scope: !1388)
!1394 = !DILocation(line: 72, column: 13, scope: !1388)
!1395 = !DILocation(line: 72, column: 21, scope: !1388)
!1396 = !DILocation(line: 73, column: 21, scope: !1388)
!1397 = !DILocation(line: 74, column: 39, scope: !1388)
!1398 = !DILocation(line: 74, column: 13, scope: !1388)
!1399 = !DILocation(line: 74, column: 21, scope: !1388)
!1400 = !DILocation(line: 0, scope: !52, inlinedAt: !1401)
!1401 = distinct !DILocation(line: 77, column: 35, scope: !1388)
!1402 = !DILocation(line: 28, column: 15, scope: !1243, inlinedAt: !1401)
!1403 = !DILocation(line: 28, column: 20, scope: !1243, inlinedAt: !1401)
!1404 = !DILocation(line: 28, column: 56, scope: !1243, inlinedAt: !1401)
!1405 = !DILocation(line: 28, column: 69, scope: !1243, inlinedAt: !1401)
!1406 = !DILocation(line: 28, column: 31, scope: !1243, inlinedAt: !1401)
!1407 = !DILocation(line: 28, column: 7, scope: !52, inlinedAt: !1401)
!1408 = !DILocation(line: 32, column: 16, scope: !1251, inlinedAt: !1401)
!1409 = !DILocation(line: 32, column: 8, scope: !1251, inlinedAt: !1401)
!1410 = !DILocation(line: 32, column: 7, scope: !52, inlinedAt: !1401)
!1411 = !DILocation(line: 35, column: 26, scope: !1255, inlinedAt: !1401)
!1412 = !DILocation(line: 35, column: 9, scope: !1255, inlinedAt: !1401)
!1413 = !DILocation(line: 35, column: 42, scope: !1255, inlinedAt: !1401)
!1414 = !DILocation(line: 35, column: 62, scope: !1255, inlinedAt: !1401)
!1415 = !DILocation(line: 35, column: 51, scope: !1255, inlinedAt: !1401)
!1416 = !DILocation(line: 35, column: 9, scope: !1256, inlinedAt: !1401)
!1417 = !DILocation(line: 77, column: 81, scope: !1388)
!1418 = !DILocation(line: 77, column: 99, scope: !1388)
!1419 = !DILocation(line: 77, column: 101, scope: !1388)
!1420 = !DILocation(line: 77, column: 76, scope: !1388)
!1421 = !DILocation(line: 0, scope: !1388)
!1422 = !DILocation(line: 77, column: 13, scope: !1388)
!1423 = !DILocation(line: 77, column: 22, scope: !1388)
!1424 = !DILocation(line: 0, scope: !52, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 78, column: 35, scope: !1388)
!1426 = !DILocation(line: 28, column: 15, scope: !1243, inlinedAt: !1425)
!1427 = !DILocation(line: 28, column: 20, scope: !1243, inlinedAt: !1425)
!1428 = !DILocation(line: 28, column: 56, scope: !1243, inlinedAt: !1425)
!1429 = !DILocation(line: 28, column: 69, scope: !1243, inlinedAt: !1425)
!1430 = !DILocation(line: 28, column: 31, scope: !1243, inlinedAt: !1425)
!1431 = !DILocation(line: 28, column: 7, scope: !52, inlinedAt: !1425)
!1432 = !DILocation(line: 32, column: 16, scope: !1251, inlinedAt: !1425)
!1433 = !DILocation(line: 32, column: 8, scope: !1251, inlinedAt: !1425)
!1434 = !DILocation(line: 32, column: 7, scope: !52, inlinedAt: !1425)
!1435 = !DILocation(line: 35, column: 26, scope: !1255, inlinedAt: !1425)
!1436 = !DILocation(line: 35, column: 9, scope: !1255, inlinedAt: !1425)
!1437 = !DILocation(line: 35, column: 42, scope: !1255, inlinedAt: !1425)
!1438 = !DILocation(line: 35, column: 62, scope: !1255, inlinedAt: !1425)
!1439 = !DILocation(line: 35, column: 51, scope: !1255, inlinedAt: !1425)
!1440 = !DILocation(line: 35, column: 9, scope: !1256, inlinedAt: !1425)
!1441 = !DILocation(line: 78, column: 81, scope: !1388)
!1442 = !DILocation(line: 78, column: 99, scope: !1388)
!1443 = !DILocation(line: 78, column: 101, scope: !1388)
!1444 = !DILocation(line: 78, column: 76, scope: !1388)
!1445 = !DILocation(line: 78, column: 13, scope: !1388)
!1446 = !DILocation(line: 78, column: 22, scope: !1388)
!1447 = !DILocation(line: 0, scope: !52, inlinedAt: !1448)
!1448 = distinct !DILocation(line: 79, column: 35, scope: !1388)
!1449 = !DILocation(line: 28, column: 20, scope: !1243, inlinedAt: !1448)
!1450 = !DILocation(line: 28, column: 15, scope: !1243, inlinedAt: !1448)
!1451 = !DILocation(line: 79, column: 13, scope: !1388)
!1452 = !DILocation(line: 79, column: 22, scope: !1388)
!1453 = !DILocation(line: 0, scope: !52, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 80, column: 35, scope: !1388)
!1455 = !DILocation(line: 28, column: 20, scope: !1243, inlinedAt: !1454)
!1456 = !DILocation(line: 28, column: 56, scope: !1243, inlinedAt: !1448)
!1457 = !DILocation(line: 28, column: 69, scope: !1243, inlinedAt: !1448)
!1458 = !DILocation(line: 28, column: 31, scope: !1243, inlinedAt: !1448)
!1459 = !DILocation(line: 28, column: 7, scope: !52, inlinedAt: !1448)
!1460 = !DILocation(line: 32, column: 16, scope: !1251, inlinedAt: !1448)
!1461 = !DILocation(line: 32, column: 8, scope: !1251, inlinedAt: !1448)
!1462 = !DILocation(line: 32, column: 7, scope: !52, inlinedAt: !1448)
!1463 = !DILocation(line: 35, column: 26, scope: !1255, inlinedAt: !1448)
!1464 = !DILocation(line: 35, column: 9, scope: !1255, inlinedAt: !1448)
!1465 = !DILocation(line: 35, column: 42, scope: !1255, inlinedAt: !1448)
!1466 = !DILocation(line: 35, column: 62, scope: !1255, inlinedAt: !1448)
!1467 = !DILocation(line: 35, column: 51, scope: !1255, inlinedAt: !1448)
!1468 = !DILocation(line: 35, column: 9, scope: !1256, inlinedAt: !1448)
!1469 = !DILocation(line: 79, column: 81, scope: !1388)
!1470 = !DILocation(line: 79, column: 99, scope: !1388)
!1471 = !DILocation(line: 79, column: 101, scope: !1388)
!1472 = !DILocation(line: 79, column: 76, scope: !1388)
!1473 = !DILocation(line: 28, column: 15, scope: !1243, inlinedAt: !1454)
!1474 = !DILocation(line: 28, column: 56, scope: !1243, inlinedAt: !1454)
!1475 = !DILocation(line: 28, column: 69, scope: !1243, inlinedAt: !1454)
!1476 = !DILocation(line: 28, column: 31, scope: !1243, inlinedAt: !1454)
!1477 = !DILocation(line: 28, column: 7, scope: !52, inlinedAt: !1454)
!1478 = !DILocation(line: 32, column: 16, scope: !1251, inlinedAt: !1454)
!1479 = !DILocation(line: 32, column: 8, scope: !1251, inlinedAt: !1454)
!1480 = !DILocation(line: 32, column: 7, scope: !52, inlinedAt: !1454)
!1481 = !DILocation(line: 35, column: 26, scope: !1255, inlinedAt: !1454)
!1482 = !DILocation(line: 35, column: 9, scope: !1255, inlinedAt: !1454)
!1483 = !DILocation(line: 35, column: 42, scope: !1255, inlinedAt: !1454)
!1484 = !DILocation(line: 35, column: 62, scope: !1255, inlinedAt: !1454)
!1485 = !DILocation(line: 35, column: 51, scope: !1255, inlinedAt: !1454)
!1486 = !DILocation(line: 35, column: 9, scope: !1256, inlinedAt: !1454)
!1487 = !DILocation(line: 39, column: 3, scope: !52, inlinedAt: !1454)
!1488 = !DILocation(line: 83, column: 30, scope: !1264)
!1489 = !DILocation(line: 83, column: 21, scope: !1264)
!1490 = !DILocation(line: 83, column: 61, scope: !1264)
!1491 = !DILocation(line: 83, column: 44, scope: !1264)
!1492 = !DILocation(line: 83, column: 11, scope: !1264)
!1493 = !DILocation(line: 83, column: 19, scope: !1264)
!1494 = !DILocation(line: 84, column: 21, scope: !1264)
!1495 = !DILocation(line: 84, column: 61, scope: !1264)
!1496 = !DILocation(line: 84, column: 44, scope: !1264)
!1497 = !DILocation(line: 84, column: 11, scope: !1264)
!1498 = !DILocation(line: 84, column: 19, scope: !1264)
!1499 = !DILocation(line: 85, column: 1, scope: !1264)
!1500 = distinct !DISubprogram(name: "get_mb_block_pos_normal", scope: !1, file: !1, line: 94, type: !817, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1501)
!1501 = !{!1502, !1503, !1504, !1505}
!1502 = !DILocalVariable(name: "mb_addr", arg: 1, scope: !1500, file: !1, line: 94, type: !5)
!1503 = !DILocalVariable(name: "x", arg: 2, scope: !1500, file: !1, line: 94, type: !671)
!1504 = !DILocalVariable(name: "y", arg: 3, scope: !1500, file: !1, line: 94, type: !671)
!1505 = !DILocalVariable(name: "pPos", scope: !1500, file: !1, line: 96, type: !1506)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1507 = !DILocation(line: 0, scope: !1500)
!1508 = !DILocation(line: 96, column: 21, scope: !1500)
!1509 = !DILocation(line: 97, column: 22, scope: !1500)
!1510 = !DILocation(line: 97, column: 6, scope: !1500)
!1511 = !DILocation(line: 98, column: 22, scope: !1500)
!1512 = !DILocation(line: 98, column: 6, scope: !1500)
!1513 = !DILocation(line: 99, column: 1, scope: !1500)
!1514 = distinct !DISubprogram(name: "get_mb_block_pos_mbaff", scope: !1, file: !1, line: 108, type: !817, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1515)
!1515 = !{!1516, !1517, !1518, !1519}
!1516 = !DILocalVariable(name: "mb_addr", arg: 1, scope: !1514, file: !1, line: 108, type: !5)
!1517 = !DILocalVariable(name: "x", arg: 2, scope: !1514, file: !1, line: 108, type: !671)
!1518 = !DILocalVariable(name: "y", arg: 3, scope: !1514, file: !1, line: 108, type: !671)
!1519 = !DILocalVariable(name: "pPos", scope: !1514, file: !1, line: 110, type: !1506)
!1520 = !DILocation(line: 0, scope: !1514)
!1521 = !DILocation(line: 110, column: 21, scope: !1514)
!1522 = !DILocation(line: 110, column: 37, scope: !1514)
!1523 = !DILocation(line: 111, column: 23, scope: !1514)
!1524 = !DILocation(line: 111, column: 6, scope: !1514)
!1525 = !DILocation(line: 112, column: 24, scope: !1514)
!1526 = !DILocation(line: 112, column: 18, scope: !1514)
!1527 = !DILocation(line: 112, column: 26, scope: !1514)
!1528 = !DILocation(line: 112, column: 43, scope: !1514)
!1529 = !DILocation(line: 112, column: 32, scope: !1514)
!1530 = !DILocation(line: 112, column: 8, scope: !1514)
!1531 = !DILocation(line: 112, column: 6, scope: !1514)
!1532 = !DILocation(line: 113, column: 1, scope: !1514)
!1533 = distinct !DISubprogram(name: "get_mb_pos", scope: !1, file: !1, line: 121, type: !1534, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1536)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{null, !762, !5, !141, !671, !671}
!1536 = !{!1537, !1538, !1539, !1540, !1541}
!1537 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !1533, file: !1, line: 121, type: !762)
!1538 = !DILocalVariable(name: "mb_addr", arg: 2, scope: !1533, file: !1, line: 121, type: !5)
!1539 = !DILocalVariable(name: "mb_size", arg: 3, scope: !1533, file: !1, line: 121, type: !141)
!1540 = !DILocalVariable(name: "x", arg: 4, scope: !1533, file: !1, line: 121, type: !671)
!1541 = !DILocalVariable(name: "y", arg: 5, scope: !1533, file: !1, line: 121, type: !671)
!1542 = !DILocation(line: 0, scope: !1533)
!1543 = !DILocation(line: 123, column: 10, scope: !1533)
!1544 = !DILocation(line: 123, column: 3, scope: !1533)
!1545 = !DILocation(line: 125, column: 20, scope: !1533)
!1546 = !DILocation(line: 125, column: 26, scope: !1533)
!1547 = !DILocation(line: 125, column: 10, scope: !1533)
!1548 = !DILocation(line: 125, column: 8, scope: !1533)
!1549 = !DILocation(line: 126, column: 20, scope: !1533)
!1550 = !DILocation(line: 126, column: 26, scope: !1533)
!1551 = !DILocation(line: 126, column: 10, scope: !1533)
!1552 = !DILocation(line: 126, column: 8, scope: !1533)
!1553 = !DILocation(line: 127, column: 1, scope: !1533)
!1554 = distinct !DISubprogram(name: "getNonAffNeighbour", scope: !1, file: !1, line: 146, type: !803, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1555)
!1555 = !{!1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563}
!1556 = !DILocalVariable(name: "currMB", arg: 1, scope: !1554, file: !1, line: 146, type: !55)
!1557 = !DILocalVariable(name: "xN", arg: 2, scope: !1554, file: !1, line: 146, type: !5)
!1558 = !DILocalVariable(name: "yN", arg: 3, scope: !1554, file: !1, line: 146, type: !5)
!1559 = !DILocalVariable(name: "mb_size", arg: 4, scope: !1554, file: !1, line: 146, type: !141)
!1560 = !DILocalVariable(name: "pix", arg: 5, scope: !1554, file: !1, line: 146, type: !805)
!1561 = !DILocalVariable(name: "maxW", scope: !1554, file: !1, line: 148, type: !5)
!1562 = !DILocalVariable(name: "maxH", scope: !1554, file: !1, line: 148, type: !5)
!1563 = !DILocalVariable(name: "CurPos", scope: !1564, file: !1, line: 196, type: !1506)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !1, line: 195, column: 3)
!1565 = distinct !DILexicalBlock(scope: !1554, file: !1, line: 194, column: 7)
!1566 = !DILocation(line: 0, scope: !1554)
!1567 = !DILocation(line: 148, column: 14, scope: !1554)
!1568 = !DILocation(line: 148, column: 33, scope: !1554)
!1569 = !DILocation(line: 150, column: 10, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1554, file: !1, line: 150, column: 7)
!1571 = !DILocation(line: 150, column: 7, scope: !1554)
!1572 = !DILocation(line: 152, column: 12, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !1, line: 152, column: 9)
!1574 = distinct !DILexicalBlock(scope: !1570, file: !1, line: 151, column: 3)
!1575 = !DILocation(line: 152, column: 9, scope: !1574)
!1576 = !DILocation(line: 154, column: 32, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1573, file: !1, line: 153, column: 5)
!1578 = !DILocation(line: 156, column: 5, scope: !1577)
!1579 = !DILocation(line: 157, column: 17, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1573, file: !1, line: 157, column: 14)
!1581 = !DILocation(line: 157, column: 14, scope: !1573)
!1582 = !DILocation(line: 159, column: 32, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1580, file: !1, line: 158, column: 5)
!1584 = !DILocation(line: 161, column: 5, scope: !1583)
!1585 = !DILocation(line: 167, column: 15, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1570, file: !1, line: 167, column: 12)
!1587 = !DILocation(line: 167, column: 12, scope: !1570)
!1588 = !DILocation(line: 169, column: 9, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1586, file: !1, line: 168, column: 3)
!1590 = !DILocation(line: 171, column: 32, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !1, line: 170, column: 5)
!1592 = distinct !DILexicalBlock(scope: !1589, file: !1, line: 169, column: 9)
!1593 = !DILocation(line: 173, column: 5, scope: !1591)
!1594 = !DILocation(line: 174, column: 17, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1592, file: !1, line: 174, column: 14)
!1596 = !DILocation(line: 174, column: 14, scope: !1592)
!1597 = !DILocation(line: 176, column: 32, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1595, file: !1, line: 175, column: 5)
!1599 = !DILocation(line: 176, column: 12, scope: !1598)
!1600 = !DILocation(line: 176, column: 22, scope: !1598)
!1601 = !DILocation(line: 177, column: 22, scope: !1598)
!1602 = !DILocation(line: 194, column: 22, scope: !1565)
!1603 = !DILocation(line: 184, column: 25, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1586, file: !1, line: 184, column: 12)
!1605 = !DILocation(line: 186, column: 30, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1604, file: !1, line: 185, column: 3)
!1607 = !DILocation(line: 188, column: 3, scope: !1606)
!1608 = !DILocation(line: 0, scope: !1570)
!1609 = !DILocation(line: 194, column: 7, scope: !1565)
!1610 = !DILocation(line: 194, column: 33, scope: !1565)
!1611 = !DILocation(line: 194, column: 25, scope: !1565)
!1612 = !DILocation(line: 194, column: 7, scope: !1554)
!1613 = !DILocation(line: 196, column: 38, scope: !1564)
!1614 = !DILocation(line: 196, column: 25, scope: !1564)
!1615 = !DILocation(line: 0, scope: !1564)
!1616 = !DILocation(line: 197, column: 38, scope: !1564)
!1617 = !DILocation(line: 197, column: 30, scope: !1564)
!1618 = !DILocation(line: 197, column: 18, scope: !1564)
!1619 = !DILocation(line: 197, column: 10, scope: !1564)
!1620 = !DILocation(line: 197, column: 16, scope: !1564)
!1621 = !DILocation(line: 198, column: 38, scope: !1564)
!1622 = !DILocation(line: 198, column: 30, scope: !1564)
!1623 = !DILocation(line: 198, column: 18, scope: !1564)
!1624 = !DILocation(line: 198, column: 10, scope: !1564)
!1625 = !DILocation(line: 198, column: 16, scope: !1564)
!1626 = !DILocation(line: 199, column: 44, scope: !1564)
!1627 = !DILocation(line: 199, column: 36, scope: !1564)
!1628 = !DILocation(line: 199, column: 46, scope: !1564)
!1629 = !DILocation(line: 199, column: 34, scope: !1564)
!1630 = !DILocation(line: 199, column: 18, scope: !1564)
!1631 = !DILocation(line: 199, column: 10, scope: !1564)
!1632 = !DILocation(line: 199, column: 16, scope: !1564)
!1633 = !DILocation(line: 200, column: 44, scope: !1564)
!1634 = !DILocation(line: 200, column: 18, scope: !1564)
!1635 = !DILocation(line: 200, column: 10, scope: !1564)
!1636 = !DILocation(line: 200, column: 16, scope: !1564)
!1637 = !DILocation(line: 201, column: 3, scope: !1564)
!1638 = !DILocation(line: 202, column: 1, scope: !1554)
!1639 = distinct !DISubprogram(name: "getAffNeighbour", scope: !1, file: !1, line: 220, type: !803, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1640)
!1640 = !{!1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649}
!1641 = !DILocalVariable(name: "currMB", arg: 1, scope: !1639, file: !1, line: 220, type: !55)
!1642 = !DILocalVariable(name: "xN", arg: 2, scope: !1639, file: !1, line: 220, type: !5)
!1643 = !DILocalVariable(name: "yN", arg: 3, scope: !1639, file: !1, line: 220, type: !5)
!1644 = !DILocalVariable(name: "mb_size", arg: 4, scope: !1639, file: !1, line: 220, type: !141)
!1645 = !DILocalVariable(name: "pix", arg: 5, scope: !1639, file: !1, line: 220, type: !805)
!1646 = !DILocalVariable(name: "p_Vid", scope: !1639, file: !1, line: 222, type: !762)
!1647 = !DILocalVariable(name: "maxW", scope: !1639, file: !1, line: 223, type: !5)
!1648 = !DILocalVariable(name: "maxH", scope: !1639, file: !1, line: 223, type: !5)
!1649 = !DILocalVariable(name: "yM", scope: !1639, file: !1, line: 224, type: !5)
!1650 = !DILocation(line: 0, scope: !1639)
!1651 = !DILocation(line: 222, column: 36, scope: !1639)
!1652 = !DILocation(line: 226, column: 10, scope: !1639)
!1653 = !DILocation(line: 227, column: 10, scope: !1639)
!1654 = !DILocation(line: 230, column: 18, scope: !1639)
!1655 = !DILocation(line: 232, column: 17, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1639, file: !1, line: 232, column: 6)
!1657 = !DILocation(line: 232, column: 9, scope: !1656)
!1658 = !DILocation(line: 232, column: 6, scope: !1639)
!1659 = !DILocation(line: 236, column: 18, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1639, file: !1, line: 236, column: 7)
!1661 = !DILocation(line: 236, column: 10, scope: !1660)
!1662 = !DILocation(line: 236, column: 23, scope: !1660)
!1663 = !DILocation(line: 241, column: 10, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1639, file: !1, line: 241, column: 7)
!1665 = !DILocation(line: 241, column: 7, scope: !1639)
!1666 = !DILocation(line: 243, column: 12, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !1, line: 243, column: 9)
!1668 = distinct !DILexicalBlock(scope: !1664, file: !1, line: 242, column: 3)
!1669 = !DILocation(line: 0, scope: !1667)
!1670 = !DILocation(line: 243, column: 9, scope: !1668)
!1671 = !DILocation(line: 245, column: 10, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1667, file: !1, line: 244, column: 5)
!1673 = !DILocation(line: 248, column: 13, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !1, line: 246, column: 7)
!1675 = distinct !DILexicalBlock(scope: !1672, file: !1, line: 245, column: 10)
!1676 = !DILocation(line: 251, column: 36, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !1, line: 249, column: 9)
!1678 = distinct !DILexicalBlock(scope: !1674, file: !1, line: 248, column: 13)
!1679 = !DILocation(line: 251, column: 45, scope: !1677)
!1680 = !DILocation(line: 251, column: 16, scope: !1677)
!1681 = !DILocation(line: 251, column: 26, scope: !1677)
!1682 = !DILocation(line: 252, column: 36, scope: !1677)
!1683 = !DILocation(line: 254, column: 9, scope: !1677)
!1684 = !DILocation(line: 258, column: 36, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1678, file: !1, line: 256, column: 9)
!1686 = !DILocation(line: 258, column: 16, scope: !1685)
!1687 = !DILocation(line: 258, column: 26, scope: !1685)
!1688 = !DILocation(line: 259, column: 36, scope: !1685)
!1689 = !DILocation(line: 259, column: 26, scope: !1685)
!1690 = !DILocation(line: 260, column: 15, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1685, file: !1, line: 260, column: 15)
!1692 = !DILocation(line: 260, column: 15, scope: !1685)
!1693 = !DILocation(line: 262, column: 24, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !1, line: 262, column: 16)
!1695 = distinct !DILexicalBlock(scope: !1691, file: !1, line: 261, column: 11)
!1696 = !DILocation(line: 262, column: 40, scope: !1694)
!1697 = !DILocation(line: 262, column: 17, scope: !1694)
!1698 = !DILocation(line: 262, column: 49, scope: !1694)
!1699 = !DILocation(line: 262, column: 16, scope: !1695)
!1700 = !DILocation(line: 268, column: 29, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1694, file: !1, line: 267, column: 13)
!1702 = !DILocation(line: 269, column: 25, scope: !1701)
!1703 = !DILocation(line: 269, column: 33, scope: !1701)
!1704 = !DILocation(line: 0, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !1, line: 277, column: 13)
!1706 = distinct !DILexicalBlock(scope: !1675, file: !1, line: 275, column: 7)
!1707 = !DILocation(line: 277, column: 13, scope: !1706)
!1708 = !DILocation(line: 280, column: 16, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1705, file: !1, line: 278, column: 9)
!1710 = !DILocation(line: 280, column: 26, scope: !1709)
!1711 = !DILocation(line: 281, column: 36, scope: !1709)
!1712 = !DILocation(line: 281, column: 26, scope: !1709)
!1713 = !DILocation(line: 282, column: 15, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1709, file: !1, line: 282, column: 15)
!1715 = !DILocation(line: 282, column: 15, scope: !1709)
!1716 = !DILocation(line: 284, column: 24, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !1, line: 284, column: 16)
!1718 = distinct !DILexicalBlock(scope: !1714, file: !1, line: 283, column: 11)
!1719 = !DILocation(line: 284, column: 40, scope: !1717)
!1720 = !DILocation(line: 284, column: 17, scope: !1717)
!1721 = !DILocation(line: 284, column: 49, scope: !1717)
!1722 = !DILocation(line: 284, column: 16, scope: !1718)
!1723 = !DILocation(line: 286, column: 29, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1717, file: !1, line: 285, column: 13)
!1725 = !DILocation(line: 287, column: 23, scope: !1724)
!1726 = !DILocation(line: 288, column: 13, scope: !1724)
!1727 = !DILocation(line: 298, column: 43, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1705, file: !1, line: 296, column: 9)
!1729 = !DILocation(line: 298, column: 16, scope: !1728)
!1730 = !DILocation(line: 298, column: 26, scope: !1728)
!1731 = !DILocation(line: 299, column: 36, scope: !1728)
!1732 = !DILocation(line: 0, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !1, line: 308, column: 13)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !1, line: 307, column: 7)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !1, line: 306, column: 11)
!1736 = distinct !DILexicalBlock(scope: !1667, file: !1, line: 305, column: 5)
!1737 = !DILocation(line: 308, column: 13, scope: !1734)
!1738 = !DILocation(line: 311, column: 15, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1733, file: !1, line: 309, column: 9)
!1740 = !DILocation(line: 316, column: 17, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !1, line: 312, column: 11)
!1742 = distinct !DILexicalBlock(scope: !1739, file: !1, line: 311, column: 15)
!1743 = !DILocation(line: 318, column: 26, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !1, line: 318, column: 18)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !1, line: 317, column: 13)
!1746 = distinct !DILexicalBlock(scope: !1741, file: !1, line: 316, column: 17)
!1747 = !DILocation(line: 318, column: 42, scope: !1744)
!1748 = !DILocation(line: 318, column: 19, scope: !1744)
!1749 = !DILocation(line: 318, column: 51, scope: !1744)
!1750 = !DILocation(line: 318, column: 18, scope: !1745)
!1751 = !DILocation(line: 324, column: 39, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1744, file: !1, line: 323, column: 15)
!1753 = !DILocation(line: 324, column: 31, scope: !1752)
!1754 = !DILocation(line: 325, column: 25, scope: !1752)
!1755 = !DILocation(line: 334, column: 17, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1742, file: !1, line: 330, column: 11)
!1757 = !DILocation(line: 336, column: 26, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !1, line: 336, column: 18)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !1, line: 335, column: 13)
!1760 = distinct !DILexicalBlock(scope: !1756, file: !1, line: 334, column: 17)
!1761 = !DILocation(line: 336, column: 42, scope: !1758)
!1762 = !DILocation(line: 336, column: 19, scope: !1758)
!1763 = !DILocation(line: 336, column: 51, scope: !1758)
!1764 = !DILocation(line: 336, column: 18, scope: !1759)
!1765 = !DILocation(line: 338, column: 31, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1758, file: !1, line: 337, column: 15)
!1767 = !DILocation(line: 340, column: 15, scope: !1766)
!1768 = !DILocation(line: 343, column: 39, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1758, file: !1, line: 342, column: 15)
!1770 = !DILocation(line: 343, column: 31, scope: !1769)
!1771 = !DILocation(line: 344, column: 26, scope: !1769)
!1772 = !DILocation(line: 344, column: 34, scope: !1769)
!1773 = !DILocation(line: 352, column: 15, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1733, file: !1, line: 350, column: 9)
!1775 = !DILocation(line: 357, column: 17, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !1, line: 353, column: 11)
!1777 = distinct !DILexicalBlock(scope: !1774, file: !1, line: 352, column: 15)
!1778 = !DILocation(line: 359, column: 26, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !1, line: 359, column: 18)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !1, line: 358, column: 13)
!1781 = distinct !DILexicalBlock(scope: !1776, file: !1, line: 357, column: 17)
!1782 = !DILocation(line: 359, column: 42, scope: !1779)
!1783 = !DILocation(line: 359, column: 19, scope: !1779)
!1784 = !DILocation(line: 359, column: 51, scope: !1779)
!1785 = !DILocation(line: 359, column: 18, scope: !1780)
!1786 = !DILocation(line: 361, column: 32, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !1, line: 361, column: 21)
!1788 = distinct !DILexicalBlock(scope: !1779, file: !1, line: 360, column: 15)
!1789 = !DILocation(line: 361, column: 24, scope: !1787)
!1790 = !DILocation(line: 361, column: 21, scope: !1788)
!1791 = !DILocation(line: 363, column: 28, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1787, file: !1, line: 362, column: 17)
!1793 = !DILocation(line: 364, column: 17, scope: !1792)
!1794 = !DILocation(line: 367, column: 33, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1787, file: !1, line: 366, column: 17)
!1796 = !DILocation(line: 368, column: 29, scope: !1795)
!1797 = !DILocation(line: 368, column: 36, scope: !1795)
!1798 = !DILocation(line: 382, column: 17, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1777, file: !1, line: 378, column: 11)
!1800 = !DILocation(line: 384, column: 26, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !1, line: 384, column: 18)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !1, line: 383, column: 13)
!1803 = distinct !DILexicalBlock(scope: !1799, file: !1, line: 382, column: 17)
!1804 = !DILocation(line: 384, column: 42, scope: !1801)
!1805 = !DILocation(line: 384, column: 19, scope: !1801)
!1806 = !DILocation(line: 384, column: 51, scope: !1801)
!1807 = !DILocation(line: 384, column: 18, scope: !1802)
!1808 = !DILocation(line: 386, column: 32, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !1, line: 386, column: 21)
!1810 = distinct !DILexicalBlock(scope: !1801, file: !1, line: 385, column: 15)
!1811 = !DILocation(line: 386, column: 24, scope: !1809)
!1812 = !DILocation(line: 386, column: 21, scope: !1810)
!1813 = !DILocation(line: 388, column: 28, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1809, file: !1, line: 387, column: 17)
!1815 = !DILocation(line: 388, column: 34, scope: !1814)
!1816 = !DILocation(line: 389, column: 17, scope: !1814)
!1817 = !DILocation(line: 392, column: 33, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1809, file: !1, line: 391, column: 17)
!1819 = !DILocation(line: 393, column: 29, scope: !1818)
!1820 = !DILocation(line: 393, column: 36, scope: !1818)
!1821 = !DILocation(line: 393, column: 40, scope: !1818)
!1822 = !DILocation(line: 398, column: 31, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1801, file: !1, line: 397, column: 15)
!1824 = !DILocation(line: 409, column: 23, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !1, line: 409, column: 9)
!1826 = distinct !DILexicalBlock(scope: !1664, file: !1, line: 408, column: 3)
!1827 = !DILocation(line: 0, scope: !1825)
!1828 = !DILocation(line: 409, column: 9, scope: !1826)
!1829 = !DILocation(line: 411, column: 11, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1825, file: !1, line: 410, column: 5)
!1831 = !DILocation(line: 413, column: 22, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !1, line: 413, column: 13)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !1, line: 412, column: 7)
!1834 = distinct !DILexicalBlock(scope: !1830, file: !1, line: 411, column: 11)
!1835 = !DILocation(line: 413, column: 14, scope: !1832)
!1836 = !DILocation(line: 0, scope: !1832)
!1837 = !DILocation(line: 413, column: 13, scope: !1833)
!1838 = !DILocation(line: 416, column: 15, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1832, file: !1, line: 414, column: 9)
!1840 = !DILocation(line: 419, column: 37, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !1, line: 417, column: 11)
!1842 = distinct !DILexicalBlock(scope: !1839, file: !1, line: 416, column: 15)
!1843 = !DILocation(line: 419, column: 18, scope: !1841)
!1844 = !DILocation(line: 419, column: 27, scope: !1841)
!1845 = !DILocation(line: 422, column: 25, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1841, file: !1, line: 422, column: 17)
!1847 = !DILocation(line: 422, column: 17, scope: !1846)
!1848 = !DILocation(line: 422, column: 17, scope: !1841)
!1849 = !DILocation(line: 424, column: 29, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !1, line: 424, column: 19)
!1851 = distinct !DILexicalBlock(scope: !1846, file: !1, line: 423, column: 13)
!1852 = !DILocation(line: 424, column: 41, scope: !1850)
!1853 = !DILocation(line: 424, column: 46, scope: !1850)
!1854 = !DILocation(line: 424, column: 57, scope: !1850)
!1855 = !DILocation(line: 424, column: 50, scope: !1850)
!1856 = !DILocation(line: 424, column: 83, scope: !1850)
!1857 = !DILocation(line: 424, column: 49, scope: !1850)
!1858 = !DILocation(line: 424, column: 19, scope: !1851)
!1859 = !DILocation(line: 425, column: 31, scope: !1850)
!1860 = !DILocation(line: 428, column: 38, scope: !1841)
!1861 = !DILocation(line: 425, column: 17, scope: !1850)
!1862 = !DILocation(line: 434, column: 46, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1842, file: !1, line: 432, column: 11)
!1864 = !DILocation(line: 434, column: 18, scope: !1863)
!1865 = !DILocation(line: 434, column: 28, scope: !1863)
!1866 = !DILocation(line: 435, column: 28, scope: !1863)
!1867 = !DILocation(line: 0, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !1, line: 442, column: 15)
!1869 = distinct !DILexicalBlock(scope: !1832, file: !1, line: 440, column: 9)
!1870 = !DILocation(line: 442, column: 15, scope: !1869)
!1871 = !DILocation(line: 445, column: 18, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1868, file: !1, line: 443, column: 11)
!1873 = !DILocation(line: 445, column: 28, scope: !1872)
!1874 = !DILocation(line: 446, column: 38, scope: !1872)
!1875 = !DILocation(line: 446, column: 28, scope: !1872)
!1876 = !DILocation(line: 447, column: 17, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1872, file: !1, line: 447, column: 17)
!1878 = !DILocation(line: 447, column: 17, scope: !1872)
!1879 = !DILocation(line: 449, column: 26, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !1, line: 449, column: 18)
!1881 = distinct !DILexicalBlock(scope: !1877, file: !1, line: 448, column: 13)
!1882 = !DILocation(line: 449, column: 42, scope: !1880)
!1883 = !DILocation(line: 449, column: 19, scope: !1880)
!1884 = !DILocation(line: 449, column: 51, scope: !1880)
!1885 = !DILocation(line: 449, column: 18, scope: !1881)
!1886 = !DILocation(line: 451, column: 31, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1880, file: !1, line: 450, column: 15)
!1888 = !DILocation(line: 452, column: 24, scope: !1887)
!1889 = !DILocation(line: 453, column: 15, scope: !1887)
!1890 = !DILocation(line: 463, column: 46, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1868, file: !1, line: 461, column: 11)
!1892 = !DILocation(line: 463, column: 18, scope: !1891)
!1893 = !DILocation(line: 463, column: 28, scope: !1891)
!1894 = !DILocation(line: 464, column: 38, scope: !1891)
!1895 = !DILocation(line: 473, column: 16, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !1, line: 473, column: 13)
!1897 = distinct !DILexicalBlock(scope: !1834, file: !1, line: 470, column: 7)
!1898 = !DILocation(line: 473, column: 21, scope: !1896)
!1899 = !DILocation(line: 473, column: 32, scope: !1896)
!1900 = !DILocation(line: 473, column: 44, scope: !1896)
!1901 = !DILocation(line: 473, column: 13, scope: !1897)
!1902 = !DILocation(line: 475, column: 35, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1896, file: !1, line: 474, column: 9)
!1904 = !DILocation(line: 475, column: 43, scope: !1903)
!1905 = !DILocation(line: 475, column: 16, scope: !1903)
!1906 = !DILocation(line: 475, column: 25, scope: !1903)
!1907 = !DILocation(line: 476, column: 26, scope: !1903)
!1908 = !DILocation(line: 478, column: 9, scope: !1903)
!1909 = !DILocation(line: 482, column: 36, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !1, line: 481, column: 9)
!1911 = distinct !DILexicalBlock(scope: !1896, file: !1, line: 480, column: 18)
!1912 = !DILocation(line: 482, column: 16, scope: !1910)
!1913 = !DILocation(line: 482, column: 26, scope: !1910)
!1914 = !DILocation(line: 483, column: 26, scope: !1910)
!1915 = !DILocation(line: 485, column: 9, scope: !1910)
!1916 = !DILocation(line: 490, column: 10, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1825, file: !1, line: 489, column: 5)
!1918 = !DILocation(line: 492, column: 22, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !1, line: 492, column: 13)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !1, line: 491, column: 7)
!1921 = distinct !DILexicalBlock(scope: !1917, file: !1, line: 490, column: 10)
!1922 = !DILocation(line: 492, column: 14, scope: !1919)
!1923 = !DILocation(line: 0, scope: !1919)
!1924 = !DILocation(line: 492, column: 13, scope: !1920)
!1925 = !DILocation(line: 495, column: 15, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1919, file: !1, line: 493, column: 9)
!1927 = !DILocation(line: 498, column: 37, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !1, line: 496, column: 11)
!1929 = distinct !DILexicalBlock(scope: !1926, file: !1, line: 495, column: 15)
!1930 = !DILocation(line: 498, column: 45, scope: !1928)
!1931 = !DILocation(line: 498, column: 18, scope: !1928)
!1932 = !DILocation(line: 498, column: 27, scope: !1928)
!1933 = !DILocation(line: 499, column: 38, scope: !1928)
!1934 = !DILocation(line: 501, column: 11, scope: !1928)
!1935 = !DILocation(line: 0, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !1, line: 511, column: 15)
!1937 = distinct !DILexicalBlock(scope: !1919, file: !1, line: 509, column: 9)
!1938 = !DILocation(line: 511, column: 15, scope: !1937)
!1939 = !DILocation(line: 514, column: 18, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1936, file: !1, line: 512, column: 11)
!1941 = !DILocation(line: 514, column: 28, scope: !1940)
!1942 = !DILocation(line: 515, column: 38, scope: !1940)
!1943 = !DILocation(line: 515, column: 28, scope: !1940)
!1944 = !DILocation(line: 516, column: 17, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1940, file: !1, line: 516, column: 17)
!1946 = !DILocation(line: 516, column: 17, scope: !1940)
!1947 = !DILocation(line: 518, column: 26, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !1, line: 518, column: 18)
!1949 = distinct !DILexicalBlock(scope: !1945, file: !1, line: 517, column: 13)
!1950 = !DILocation(line: 518, column: 42, scope: !1948)
!1951 = !DILocation(line: 518, column: 19, scope: !1948)
!1952 = !DILocation(line: 518, column: 51, scope: !1948)
!1953 = !DILocation(line: 518, column: 18, scope: !1949)
!1954 = !DILocation(line: 520, column: 31, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1948, file: !1, line: 519, column: 15)
!1956 = !DILocation(line: 521, column: 24, scope: !1955)
!1957 = !DILocation(line: 522, column: 15, scope: !1955)
!1958 = !DILocation(line: 532, column: 46, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1936, file: !1, line: 530, column: 11)
!1960 = !DILocation(line: 532, column: 18, scope: !1959)
!1961 = !DILocation(line: 532, column: 28, scope: !1959)
!1962 = !DILocation(line: 533, column: 38, scope: !1959)
!1963 = !DILocation(line: 0, scope: !1664)
!1964 = !DILocation(line: 540, column: 7, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1639, file: !1, line: 540, column: 7)
!1966 = !DILocation(line: 540, column: 22, scope: !1965)
!1967 = !DILocation(line: 540, column: 33, scope: !1965)
!1968 = !DILocation(line: 540, column: 25, scope: !1965)
!1969 = !DILocation(line: 540, column: 7, scope: !1639)
!1970 = !DILocation(line: 542, column: 26, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1965, file: !1, line: 541, column: 3)
!1972 = !DILocation(line: 542, column: 14, scope: !1971)
!1973 = !DILocation(line: 542, column: 10, scope: !1971)
!1974 = !DILocation(line: 542, column: 12, scope: !1971)
!1975 = !DILocation(line: 543, column: 26, scope: !1971)
!1976 = !DILocation(line: 543, column: 14, scope: !1971)
!1977 = !DILocation(line: 543, column: 10, scope: !1971)
!1978 = !DILocation(line: 543, column: 12, scope: !1971)
!1979 = !DILocation(line: 544, column: 28, scope: !1971)
!1980 = !DILocation(line: 544, column: 53, scope: !1971)
!1981 = !DILocation(line: 544, column: 68, scope: !1971)
!1982 = !DILocation(line: 0, scope: !1533, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 544, column: 5, scope: !1971)
!1984 = !DILocation(line: 123, column: 10, scope: !1533, inlinedAt: !1983)
!1985 = !DILocation(line: 123, column: 3, scope: !1533, inlinedAt: !1983)
!1986 = !DILocation(line: 125, column: 20, scope: !1533, inlinedAt: !1983)
!1987 = !DILocation(line: 125, column: 26, scope: !1533, inlinedAt: !1983)
!1988 = !DILocation(line: 125, column: 10, scope: !1533, inlinedAt: !1983)
!1989 = !DILocation(line: 126, column: 20, scope: !1533, inlinedAt: !1983)
!1990 = !DILocation(line: 125, column: 8, scope: !1533, inlinedAt: !1983)
!1991 = !DILocation(line: 126, column: 26, scope: !1533, inlinedAt: !1983)
!1992 = !DILocation(line: 126, column: 10, scope: !1533, inlinedAt: !1983)
!1993 = !DILocation(line: 545, column: 36, scope: !1971)
!1994 = !DILocation(line: 545, column: 29, scope: !1971)
!1995 = !DILocation(line: 545, column: 16, scope: !1971)
!1996 = !DILocation(line: 547, column: 3, scope: !1971)
!1997 = !DILocation(line: 548, column: 1, scope: !1639)
!1998 = distinct !DISubprogram(name: "get4x4Neighbour", scope: !1, file: !1, line: 567, type: !803, scopeLine: 568, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1999)
!1999 = !{!2000, !2001, !2002, !2003, !2004}
!2000 = !DILocalVariable(name: "currMB", arg: 1, scope: !1998, file: !1, line: 567, type: !55)
!2001 = !DILocalVariable(name: "block_x", arg: 2, scope: !1998, file: !1, line: 567, type: !5)
!2002 = !DILocalVariable(name: "block_y", arg: 3, scope: !1998, file: !1, line: 567, type: !5)
!2003 = !DILocalVariable(name: "mb_size", arg: 4, scope: !1998, file: !1, line: 567, type: !141)
!2004 = !DILocalVariable(name: "pix", arg: 5, scope: !1998, file: !1, line: 567, type: !805)
!2005 = !DILocation(line: 0, scope: !1998)
!2006 = !DILocation(line: 569, column: 11, scope: !1998)
!2007 = !DILocation(line: 569, column: 18, scope: !1998)
!2008 = !DILocation(line: 569, column: 3, scope: !1998)
!2009 = !DILocation(line: 571, column: 12, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1998, file: !1, line: 571, column: 7)
!2011 = !DILocation(line: 571, column: 7, scope: !2010)
!2012 = !DILocation(line: 571, column: 7, scope: !1998)
!2013 = !DILocation(line: 573, column: 10, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2010, file: !1, line: 572, column: 3)
!2015 = !DILocation(line: 573, column: 12, scope: !2014)
!2016 = !DILocation(line: 577, column: 3, scope: !2014)
!2017 = !DILocation(line: 578, column: 1, scope: !1998)
!2018 = distinct !DISubprogram(name: "get4x4NeighbourBase", scope: !1, file: !1, line: 596, type: !803, scopeLine: 597, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2019)
!2019 = !{!2020, !2021, !2022, !2023, !2024}
!2020 = !DILocalVariable(name: "currMB", arg: 1, scope: !2018, file: !1, line: 596, type: !55)
!2021 = !DILocalVariable(name: "block_x", arg: 2, scope: !2018, file: !1, line: 596, type: !5)
!2022 = !DILocalVariable(name: "block_y", arg: 3, scope: !2018, file: !1, line: 596, type: !5)
!2023 = !DILocalVariable(name: "mb_size", arg: 4, scope: !2018, file: !1, line: 596, type: !141)
!2024 = !DILocalVariable(name: "pix", arg: 5, scope: !2018, file: !1, line: 596, type: !805)
!2025 = !DILocation(line: 0, scope: !2018)
!2026 = !DILocation(line: 598, column: 11, scope: !2018)
!2027 = !DILocation(line: 598, column: 18, scope: !2018)
!2028 = !DILocation(line: 598, column: 3, scope: !2018)
!2029 = !DILocation(line: 600, column: 12, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2018, file: !1, line: 600, column: 7)
!2031 = !DILocation(line: 600, column: 7, scope: !2030)
!2032 = !DILocation(line: 600, column: 7, scope: !2018)
!2033 = !DILocation(line: 602, column: 10, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2030, file: !1, line: 601, column: 3)
!2035 = !DILocation(line: 602, column: 12, scope: !2034)
!2036 = !DILocation(line: 604, column: 3, scope: !2034)
!2037 = !DILocation(line: 605, column: 1, scope: !2018)
