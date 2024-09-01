; ModuleID = 'x264_src/encoder/me.c'
source_filename = "x264_src/encoder/me.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }
%struct.x264_weight_t = type { [8 x i16], [8 x i16], i32, i32, i32, ptr, [8 x i8] }
%struct.mvsad_t = type { i32, [2 x i16] }

@x264_pixel_size = internal unnamed_addr constant [7 x %struct.anon] [%struct.anon { i32 16, i32 16 }, %struct.anon { i32 16, i32 8 }, %struct.anon { i32 8, i32 16 }, %struct.anon { i32 8, i32 8 }, %struct.anon { i32 8, i32 4 }, %struct.anon { i32 4, i32 8 }, %struct.anon { i32 4, i32 4 }], align 16, !dbg !0
@hex2 = internal unnamed_addr constant [8 x [2 x i8]] [[2 x i8] c"\FF\FE", [2 x i8] c"\FE\00", [2 x i8] c"\FF\02", [2 x i8] c"\01\02", [2 x i8] c"\02\00", [2 x i8] c"\01\FE", [2 x i8] c"\FF\FE", [2 x i8] c"\FE\00"], align 16, !dbg !1702
@mod6m1 = internal unnamed_addr constant [8 x i8] c"\05\00\01\02\03\04\05\00", align 1, !dbg !1705
@square1 = internal unnamed_addr constant [9 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\00\FF", [2 x i8] c"\00\01", [2 x i8] c"\FF\00", [2 x i8] c"\01\00", [2 x i8] c"\FF\FF", [2 x i8] c"\FF\01", [2 x i8] c"\01\FF", [2 x i8] c"\01\01"], align 16, !dbg !1708
@x264_me_search_ref.x264_pixel_size_shift = internal unnamed_addr constant [7 x i8] c"\00\01\01\02\03\03\04", align 1, !dbg !81
@x264_me_search_ref.range_mul = internal unnamed_addr constant [4 x [4 x i8]] [[4 x i8] c"\03\03\04\04", [4 x i8] c"\03\04\04\04", [4 x i8] c"\04\04\04\05", [4 x i8] c"\04\04\05\06"], align 16, !dbg !1688
@x264_me_search_ref.hex4 = internal unnamed_addr constant [16 x [2 x i8]] [[2 x i8] c"\00\FC", [2 x i8] c"\00\04", [2 x i8] c"\FE\FD", [2 x i8] c"\02\FD", [2 x i8] c"\FC\FE", [2 x i8] c"\04\FE", [2 x i8] c"\FC\FF", [2 x i8] c"\04\FF", [2 x i8] c"\FC\00", [2 x i8] c"\04\00", [2 x i8] c"\FC\01", [2 x i8] c"\04\01", [2 x i8] c"\FC\02", [2 x i8] c"\04\02", [2 x i8] c"\FE\03", [2 x i8] c"\02\03"], align 16, !dbg !1691
@x264_me_search_ref.zero = internal global [128 x i8] zeroinitializer, align 16, !dbg !1695
@x264_lambda_tab = external local_unnamed_addr constant [52 x i8], align 16
@subpel_iterations = internal unnamed_addr constant [11 x [4 x i8]] [[4 x i8] zeroinitializer, [4 x i8] c"\01\01\00\00", [4 x i8] c"\00\01\01\00", [4 x i8] c"\00\02\01\00", [4 x i8] c"\00\02\01\01", [4 x i8] c"\00\02\01\02", [4 x i8] c"\00\00\02\02", [4 x i8] c"\00\00\02\02", [4 x i8] c"\00\00\04\0A", [4 x i8] c"\00\00\04\0A", [4 x i8] c"\00\00\04\0A"], align 16, !dbg !1712
@x264_iter_kludge = dso_local local_unnamed_addr global i32 0, align 4, !dbg !1700
@x264_scan8 = internal unnamed_addr constant [27 x i32] [i32 12, i32 13, i32 20, i32 21, i32 14, i32 15, i32 22, i32 23, i32 28, i32 29, i32 36, i32 37, i32 30, i32 31, i32 38, i32 39, i32 9, i32 10, i32 17, i32 18, i32 33, i32 34, i32 41, i32 42, i32 44, i32 46, i32 47], align 16, !dbg !1814
@block_idx_xy_fdec = internal unnamed_addr constant [16 x i16] [i16 0, i16 4, i16 128, i16 132, i16 8, i16 12, i16 136, i16 140, i16 256, i16 260, i16 384, i16 388, i16 264, i16 268, i16 392, i16 396], align 16, !dbg !1819
@block_idx_x = internal unnamed_addr constant [16 x i8] c"\00\01\00\01\02\03\02\03\00\01\00\01\02\03\02\03", align 16, !dbg !1823
@block_idx_y = internal unnamed_addr constant [16 x i8] c"\00\00\01\01\00\00\01\01\02\02\03\03\02\02\03\03", align 16, !dbg !1826
@x264_me_refine_bidir.dia4d = internal unnamed_addr constant [33 x [4 x i8]] [[4 x i8] zeroinitializer, [4 x i8] c"\00\00\00\01", [4 x i8] c"\00\00\00\FF", [4 x i8] c"\00\00\01\00", [4 x i8] c"\00\00\FF\00", [4 x i8] c"\00\01\00\00", [4 x i8] c"\00\FF\00\00", [4 x i8] c"\01\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\00\00\01\01", [4 x i8] c"\00\00\FF\FF", [4 x i8] c"\00\01\01\00", [4 x i8] c"\00\FF\FF\00", [4 x i8] c"\01\01\00\00", [4 x i8] c"\FF\FF\00\00", [4 x i8] c"\01\00\00\01", [4 x i8] c"\FF\00\00\FF", [4 x i8] c"\00\01\00\01", [4 x i8] c"\00\FF\00\FF", [4 x i8] c"\01\00\01\00", [4 x i8] c"\FF\00\FF\00", [4 x i8] c"\00\00\FF\01", [4 x i8] c"\00\00\01\FF", [4 x i8] c"\00\FF\01\00", [4 x i8] c"\00\01\FF\00", [4 x i8] c"\FF\01\00\00", [4 x i8] c"\01\FF\00\00", [4 x i8] c"\01\00\00\FF", [4 x i8] c"\FF\00\00\01", [4 x i8] c"\00\FF\00\01", [4 x i8] c"\00\01\00\FF", [4 x i8] c"\FF\00\01\00", [4 x i8] c"\01\00\FF\00"], align 8, !dbg !1717
@weight_none = external constant [3 x %struct.x264_weight_t], align 16

; Function Attrs: nounwind uwtable
define dso_local void @x264_me_search_ref(ptr noundef readonly %h, ptr noundef %m, ptr nocapture noundef readonly %mvc, i32 noundef %i_mvc, ptr noundef %p_halfpel_thresh) local_unnamed_addr #0 !dbg !83 {
entry:
  %pix = alloca [256 x i8], align 16, !DIAssignID !1842
    #dbg_assign(i1 undef, !1415, !DIExpression(), !1842, ptr %pix, !DIExpression(), !1843)
  %costs = alloca [16 x i32], align 16, !DIAssignID !1844
    #dbg_assign(i1 undef, !1416, !DIExpression(), !1844, ptr %costs, !DIExpression(), !1843)
  %stride2 = alloca i32, align 4, !DIAssignID !1845
    #dbg_assign(i1 undef, !1432, !DIExpression(), !1845, ptr %stride2, !DIExpression(), !1846)
  %stride291 = alloca i32, align 4, !DIAssignID !1847
    #dbg_assign(i1 undef, !1447, !DIExpression(), !1847, ptr %stride291, !DIExpression(), !1848)
  %mvc_fpel = alloca [16 x [2 x i16]], align 8, !DIAssignID !1849
    #dbg_assign(i1 undef, !1453, !DIExpression(), !1849, ptr %mvc_fpel, !DIExpression(), !1850)
  %enc_dc = alloca [4 x i32], align 16, !DIAssignID !1851
    #dbg_assign(i1 undef, !1619, !DIExpression(), !1851, ptr %enc_dc, !DIExpression(), !1852)
  %sads = alloca [3 x i32], align 4, !DIAssignID !1853
    #dbg_assign(i1 undef, !1642, !DIExpression(), !1853, ptr %sads, !DIExpression(), !1854)
    #dbg_value(ptr %h, !1392, !DIExpression(), !1843)
    #dbg_value(ptr %m, !1393, !DIExpression(), !1843)
    #dbg_value(ptr %mvc, !1394, !DIExpression(), !1843)
    #dbg_value(i32 %i_mvc, !1395, !DIExpression(), !1843)
    #dbg_value(ptr %p_halfpel_thresh, !1396, !DIExpression(), !1843)
  %0 = load i32, ptr %m, align 16, !dbg !1855
  %idxprom = sext i32 %0 to i64, !dbg !1856
  %arrayidx = getelementptr inbounds [7 x %struct.anon], ptr @x264_pixel_size, i64 0, i64 %idxprom, !dbg !1856
  %1 = load i32, ptr %arrayidx, align 8, !dbg !1857
    #dbg_value(i32 %1, !1397, !DIExpression(), !1843)
  %h4 = getelementptr inbounds i8, ptr %arrayidx, i64 4, !dbg !1858
  %2 = load i32, ptr %h4, align 4, !dbg !1858
    #dbg_value(i32 %2, !1399, !DIExpression(), !1843)
    #dbg_value(i32 %0, !1400, !DIExpression(), !1843)
  %i_stride = getelementptr inbounds i8, ptr %m, i64 120, !dbg !1859
  %3 = load i32, ptr %i_stride, align 8, !dbg !1860
    #dbg_value(i32 %3, !1401, !DIExpression(), !1843)
  %i_me_range8 = getelementptr inbounds i8, ptr %h, i64 416, !dbg !1861
  %4 = load i32, ptr %i_me_range8, align 16, !dbg !1861
    #dbg_value(i32 %4, !1402, !DIExpression(), !1843)
    #dbg_value(i32 0, !1406, !DIExpression(), !1843)
    #dbg_value(i32 0, !1407, !DIExpression(), !1843)
    #dbg_value(i32 268435456, !1408, !DIExpression(), !1843)
  %p_fenc9 = getelementptr inbounds i8, ptr %m, i64 88, !dbg !1862
  %5 = load ptr, ptr %p_fenc9, align 8, !dbg !1863
    #dbg_value(ptr %5, !1413, !DIExpression(), !1843)
  %p_fref_w11 = getelementptr inbounds i8, ptr %m, i64 80, !dbg !1864
  %6 = load ptr, ptr %p_fref_w11, align 16, !dbg !1864
    #dbg_value(ptr %6, !1414, !DIExpression(), !1843)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %pix) #6, !dbg !1865
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %costs) #6, !dbg !1866
  %mv_min_fpel = getelementptr inbounds i8, ptr %h, i64 16472, !dbg !1867
    #dbg_value(i32 poison, !1417, !DIExpression(), !1843)
    #dbg_value(i32 poison, !1418, !DIExpression(), !1843)
  %mv_max_fpel = getelementptr inbounds i8, ptr %h, i64 16480, !dbg !1868
    #dbg_value(i32 poison, !1419, !DIExpression(), !1843)
  %7 = load <2 x i32>, ptr %mv_min_fpel, align 8, !dbg !1869
  %8 = load <2 x i32>, ptr %mv_max_fpel, align 16, !dbg !1870
  %9 = extractelement <2 x i32> %7, i64 0, !dbg !1871
    #dbg_value(i32 poison, !1420, !DIExpression(), !1843)
  %shl = shl i32 %9, 2, !dbg !1872
    #dbg_value(i32 %shl, !1421, !DIExpression(), !1843)
  %10 = extractelement <2 x i32> %7, i64 1, !dbg !1873
  %shl21 = shl i32 %10, 2, !dbg !1873
    #dbg_value(i32 %shl21, !1422, !DIExpression(), !1843)
  %11 = extractelement <2 x i32> %8, i64 0, !dbg !1874
  %shl22 = shl i32 %11, 2, !dbg !1874
    #dbg_value(i32 %shl22, !1423, !DIExpression(), !1843)
  %12 = extractelement <2 x i32> %8, i64 1, !dbg !1875
  %shl23 = shl i32 %12, 2, !dbg !1875
    #dbg_value(i32 %shl23, !1424, !DIExpression(), !1843)
  %.neg = mul i32 %9, -65536, !dbg !1871
  %sub25 = sub nsw i32 0, %10, !dbg !1871
  %and = and i32 %sub25, 32767, !dbg !1871
  %or = or disjoint i32 %and, %.neg, !dbg !1871
    #dbg_value(i32 %or, !1425, !DIExpression(), !1843)
  %shl26 = shl i32 %11, 16, !dbg !1876
  %and27 = and i32 %12, 32767, !dbg !1876
  %or28 = or disjoint i32 %and27, %shl26, !dbg !1876
  %or29 = or disjoint i32 %or28, 32768, !dbg !1877
    #dbg_value(i32 %or29, !1426, !DIExpression(), !1843)
  %p_cost_mv = getelementptr inbounds i8, ptr %m, i64 8, !dbg !1878
  %13 = load ptr, ptr %p_cost_mv, align 8, !dbg !1878
  %mvp = getelementptr inbounds i8, ptr %m, i64 128, !dbg !1879
  %14 = load i16, ptr %mvp, align 16, !dbg !1880
  %conv = sext i16 %14 to i32, !dbg !1880
  %idx.ext = sext i16 %14 to i64, !dbg !1881
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !1881
  %add.ptr = getelementptr inbounds i16, ptr %13, i64 %idx.neg, !dbg !1881
    #dbg_value(ptr %add.ptr, !1427, !DIExpression(), !1843)
  %arrayidx33 = getelementptr inbounds i8, ptr %m, i64 130, !dbg !1882
  %15 = load i16, ptr %arrayidx33, align 2, !dbg !1882
  %idx.ext35 = sext i16 %15 to i64, !dbg !1883
  %idx.neg36 = sub nsw i64 0, %idx.ext35, !dbg !1883
  %add.ptr37 = getelementptr inbounds i16, ptr %13, i64 %idx.neg36, !dbg !1883
    #dbg_value(ptr %add.ptr37, !1430, !DIExpression(), !1843)
    #dbg_value(i32 %conv, !1884, !DIExpression(), !1891)
    #dbg_value(i32 %shl, !1889, !DIExpression(), !1891)
    #dbg_value(i32 %shl22, !1890, !DIExpression(), !1891)
  %cmp.i = icmp sgt i32 %shl, %conv, !dbg !1893
  %cond.i = tail call i32 @llvm.smin.i32(i32 %conv, i32 %shl22), !dbg !1894
  %cond5.i = select i1 %cmp.i, i32 %shl, i32 %cond.i, !dbg !1894
    #dbg_value(i32 %cond5.i, !1403, !DIExpression(), !1843)
  %conv43 = sext i16 %15 to i32, !dbg !1895
    #dbg_value(i32 %conv43, !1884, !DIExpression(), !1896)
    #dbg_value(i32 %shl21, !1889, !DIExpression(), !1896)
    #dbg_value(i32 %shl23, !1890, !DIExpression(), !1896)
  %cmp.i6193 = icmp sgt i32 %shl21, %conv43, !dbg !1898
  %cond.i6194 = tail call i32 @llvm.smin.i32(i32 %conv43, i32 %shl23), !dbg !1899
  %cond5.i6195 = select i1 %cmp.i6193, i32 %shl21, i32 %cond.i6194, !dbg !1899
    #dbg_value(i32 %cond5.i6195, !1404, !DIExpression(), !1843)
  %add = add nsw i32 %cond5.i, 2, !dbg !1900
  %shr = ashr i32 %add, 2, !dbg !1901
    #dbg_value(i32 %shr, !1411, !DIExpression(), !1843)
  %add45 = add nsw i32 %cond5.i6195, 2, !dbg !1902
  %shr46 = ashr i32 %add45, 2, !dbg !1903
    #dbg_value(i32 %shr46, !1412, !DIExpression(), !1843)
    #dbg_value(i32 268435456, !1405, !DIExpression(), !1843)
  %i_subpel_refine = getelementptr inbounds i8, ptr %h, i64 16408, !dbg !1904
  %16 = load i32, ptr %i_subpel_refine, align 8, !dbg !1904
  %cmp = icmp sgt i32 %16, 2, !dbg !1905
  br i1 %cmp, label %if.then, label %if.else, !dbg !1906

if.then:                                          ; preds = %entry
    #dbg_value(i32 %cond5.i, !1907, !DIExpression(), !1913)
    #dbg_value(i32 %cond5.i6195, !1912, !DIExpression(), !1913)
  %and.i = and i32 %cond5.i, 65535, !dbg !1915
  %shl.i = shl i32 %cond5.i6195, 16, !dbg !1916
  %add.i = or disjoint i32 %shl.i, %and.i, !dbg !1917
    #dbg_value(i32 %add.i, !1431, !DIExpression(), !1843)
  %tobool.not = icmp eq i32 %i_mvc, 0, !dbg !1918
  br i1 %tobool.not, label %for.cond.cleanup, label %if.end68, !dbg !1919

if.end68:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride2) #6, !dbg !1920
  store i32 16, ptr %stride2, align 4, !dbg !1920, !DIAssignID !1921
    #dbg_assign(i32 16, !1432, !DIExpression(), !1921, ptr %stride2, !DIExpression(), !1846)
  %get_ref = getelementptr inbounds i8, ptr %h, i64 32624, !dbg !1920
  %17 = load ptr, ptr %get_ref, align 8, !dbg !1920
  %p_fref = getelementptr inbounds i8, ptr %m, i64 32, !dbg !1920
  %weight = getelementptr inbounds i8, ptr %m, i64 24, !dbg !1920
  %18 = load ptr, ptr %weight, align 8, !dbg !1920
  %call53 = call ptr %17(ptr noundef nonnull %pix, ptr noundef nonnull %stride2, ptr noundef nonnull %p_fref, i32 noundef %3, i32 noundef %cond5.i, i32 noundef %cond5.i6195, i32 noundef %1, i32 noundef %2, ptr noundef %18) #6, !dbg !1920
    #dbg_value(ptr %call53, !1437, !DIExpression(), !1846)
  %fpelcmp = getelementptr inbounds i8, ptr %h, i64 31928, !dbg !1920
  %arrayidx55 = getelementptr inbounds [7 x ptr], ptr %fpelcmp, i64 0, i64 %idxprom, !dbg !1920
  %19 = load ptr, ptr %arrayidx55, align 8, !dbg !1920
  %20 = load i32, ptr %stride2, align 4, !dbg !1920
  %call56 = call i32 %19(ptr noundef %5, i32 noundef 16, ptr noundef %call53, i32 noundef %20) #6, !dbg !1920
  %idxprom57 = sext i32 %cond5.i to i64, !dbg !1920
  %arrayidx58 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom57, !dbg !1920
  %21 = load i16, ptr %arrayidx58, align 2, !dbg !1920
  %conv59 = zext i16 %21 to i32, !dbg !1920
  %add60 = add nsw i32 %call56, %conv59, !dbg !1920
  %idxprom61 = sext i32 %cond5.i6195 to i64, !dbg !1920
  %arrayidx62 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom61, !dbg !1920
  %22 = load i16, ptr %arrayidx62, align 2, !dbg !1920
  %conv63 = zext i16 %22 to i32, !dbg !1920
  %add64 = add nsw i32 %add60, %conv63, !dbg !1920
    #dbg_value(i32 %add64, !1438, !DIExpression(), !1846)
  %cmp65 = icmp slt i32 %add64, 268435456, !dbg !1922
  %bpred_cost.0 = call i32 @llvm.smin.i32(i32 %add64, i32 268435456), !dbg !1920
  %bpred_my.0 = select i1 %cmp65, i32 %cond5.i6195, i32 0, !dbg !1920
  %bpred_mx.0 = select i1 %cmp65, i32 %cond5.i, i32 0, !dbg !1920
    #dbg_value(i32 %bpred_mx.0, !1406, !DIExpression(), !1843)
    #dbg_value(i32 %bpred_my.0, !1407, !DIExpression(), !1843)
    #dbg_value(i32 %bpred_cost.0, !1408, !DIExpression(), !1843)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride2) #6, !dbg !1924
    #dbg_value(i32 0, !1439, !DIExpression(), !1925)
  %cmp696246 = icmp sgt i32 %i_mvc, 0, !dbg !1926
  br i1 %cmp696246, label %for.body.lr.ph, label %for.cond.cleanup, !dbg !1927

for.body.lr.ph:                                   ; preds = %if.end68
  %get_ref94 = getelementptr inbounds i8, ptr %h, i64 32624
  %p_fref96 = getelementptr inbounds i8, ptr %m, i64 32
  %weight98 = getelementptr inbounds i8, ptr %m, i64 24
  %fpelcmp103 = getelementptr inbounds i8, ptr %h, i64 31928
  %arrayidx105 = getelementptr inbounds [7 x ptr], ptr %fpelcmp103, i64 0, i64 %idxprom
  %wide.trip.count6430 = zext nneg i32 %i_mvc to i64, !dbg !1926
  br label %for.body, !dbg !1927

for.cond.cleanup:                                 ; preds = %for.inc, %if.then, %if.end68
  %bpred_cost.2.lcssa = phi i32 [ %bpred_cost.0, %if.end68 ], [ 268435456, %if.then ], [ %bpred_cost.4, %for.inc ], !dbg !1928
  %bpred_my.2.lcssa = phi i32 [ %bpred_my.0, %if.end68 ], [ 0, %if.then ], [ %bpred_my.4, %for.inc ], !dbg !1928
  %bpred_mx.2.lcssa = phi i32 [ %bpred_mx.0, %if.end68 ], [ 0, %if.then ], [ %bpred_mx.4, %for.inc ], !dbg !1928
  %add120 = add nsw i32 %bpred_mx.2.lcssa, 2, !dbg !1929
  %shr121 = ashr i32 %add120, 2, !dbg !1930
    #dbg_value(i32 %shr121, !1403, !DIExpression(), !1843)
  %add122 = add nsw i32 %bpred_my.2.lcssa, 2, !dbg !1931
  %shr123 = ashr i32 %add122, 2, !dbg !1932
    #dbg_value(i32 %shr123, !1404, !DIExpression(), !1843)
  %fpelcmp126 = getelementptr inbounds i8, ptr %h, i64 31928, !dbg !1933
  %arrayidx128 = getelementptr inbounds [7 x ptr], ptr %fpelcmp126, i64 0, i64 %idxprom, !dbg !1933
  %23 = load ptr, ptr %arrayidx128, align 8, !dbg !1933
  %mul = mul nsw i32 %shr123, %3, !dbg !1933
  %add129 = add nsw i32 %mul, %shr121, !dbg !1933
  %idxprom130 = sext i32 %add129 to i64, !dbg !1933
  %arrayidx131 = getelementptr inbounds i8, ptr %6, i64 %idxprom130, !dbg !1933
  %call132 = call i32 %23(ptr noundef %5, i32 noundef 16, ptr noundef %arrayidx131, i32 noundef %3) #6, !dbg !1933
  %shl133 = and i32 %add120, -4, !dbg !1933
  %idxprom134 = sext i32 %shl133 to i64, !dbg !1933
  %arrayidx135 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom134, !dbg !1933
  %24 = load i16, ptr %arrayidx135, align 2, !dbg !1933
  %conv136 = zext i16 %24 to i32, !dbg !1933
  %shl137 = and i32 %add122, -4, !dbg !1933
  %idxprom138 = sext i32 %shl137 to i64, !dbg !1933
  %arrayidx139 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom138, !dbg !1933
  %25 = load i16, ptr %arrayidx139, align 2, !dbg !1933
  %conv140 = zext i16 %25 to i32, !dbg !1933
  %add141 = add i32 %call132, %conv136, !dbg !1933
  %add142 = add i32 %add141, %conv140, !dbg !1933
    #dbg_value(i32 %add142, !1451, !DIExpression(), !1934)
  %spec.select = call i32 @llvm.smin.i32(i32 %add142, i32 268435456), !dbg !1933
    #dbg_value(i32 %spec.select, !1405, !DIExpression(), !1843)
  br label %if.end241, !dbg !1935

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv6427 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next6428, %for.inc ]
  %bpred_mx.26250 = phi i32 [ %bpred_mx.0, %for.body.lr.ph ], [ %bpred_mx.4, %for.inc ]
  %bpred_my.26249 = phi i32 [ %bpred_my.0, %for.body.lr.ph ], [ %bpred_my.4, %for.inc ]
  %bpred_cost.26248 = phi i32 [ %bpred_cost.0, %for.body.lr.ph ], [ %bpred_cost.4, %for.inc ]
    #dbg_value(i32 %bpred_mx.26250, !1406, !DIExpression(), !1843)
    #dbg_value(i32 %bpred_my.26249, !1407, !DIExpression(), !1843)
    #dbg_value(i32 %bpred_cost.26248, !1408, !DIExpression(), !1843)
    #dbg_value(i64 %indvars.iv6427, !1439, !DIExpression(), !1925)
  %arrayidx72 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %indvars.iv6427, !dbg !1936
  %26 = load i32, ptr %arrayidx72, align 4, !dbg !1936
  %tobool74.not = icmp eq i32 %26, 0, !dbg !1936
  %cmp78.not = icmp eq i32 %add.i, %26
  %or.cond6169 = select i1 %tobool74.not, i1 true, i1 %cmp78.not, !dbg !1937
  br i1 %or.cond6169, label %for.inc, label %if.then80, !dbg !1937

if.then80:                                        ; preds = %for.body
  %sext6580 = shl i32 %26, 16, !dbg !1938
  %conv84 = ashr exact i32 %sext6580, 16, !dbg !1938
    #dbg_value(i32 %conv84, !1884, !DIExpression(), !1939)
    #dbg_value(i32 %shl, !1889, !DIExpression(), !1939)
    #dbg_value(i32 %shl22, !1890, !DIExpression(), !1939)
  %cmp.i6196 = icmp sgt i32 %shl, %conv84, !dbg !1941
  %cond.i6197 = call i32 @llvm.smin.i32(i32 %conv84, i32 %shl22), !dbg !1942
  %cond5.i6198 = select i1 %cmp.i6196, i32 %shl, i32 %cond.i6197, !dbg !1942
    #dbg_value(i32 %cond5.i6198, !1441, !DIExpression(), !1943)
  %conv89 = ashr i32 %26, 16, !dbg !1944
    #dbg_value(i32 %conv89, !1884, !DIExpression(), !1945)
    #dbg_value(i32 %shl21, !1889, !DIExpression(), !1945)
    #dbg_value(i32 %shl23, !1890, !DIExpression(), !1945)
  %cmp.i6199 = icmp sgt i32 %shl21, %conv89, !dbg !1947
  %cond.i6200 = call i32 @llvm.smin.i32(i32 %conv89, i32 %shl23), !dbg !1948
  %cond5.i6201 = select i1 %cmp.i6199, i32 %shl21, i32 %cond.i6200, !dbg !1948
    #dbg_value(i32 %cond5.i6201, !1446, !DIExpression(), !1943)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride291) #6, !dbg !1949
  store i32 16, ptr %stride291, align 4, !dbg !1949, !DIAssignID !1950
    #dbg_assign(i32 16, !1447, !DIExpression(), !1950, ptr %stride291, !DIExpression(), !1848)
  %27 = load ptr, ptr %get_ref94, align 8, !dbg !1949
  %28 = load ptr, ptr %weight98, align 8, !dbg !1949
  %call100 = call ptr %27(ptr noundef nonnull %pix, ptr noundef nonnull %stride291, ptr noundef nonnull %p_fref96, i32 noundef %3, i32 noundef %cond5.i6198, i32 noundef %cond5.i6201, i32 noundef %1, i32 noundef %2, ptr noundef %28) #6, !dbg !1949
    #dbg_value(ptr %call100, !1449, !DIExpression(), !1848)
  %29 = load ptr, ptr %arrayidx105, align 8, !dbg !1949
  %30 = load i32, ptr %stride291, align 4, !dbg !1949
  %call106 = call i32 %29(ptr noundef %5, i32 noundef 16, ptr noundef %call100, i32 noundef %30) #6, !dbg !1949
  %idxprom107 = sext i32 %cond5.i6198 to i64, !dbg !1949
  %arrayidx108 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom107, !dbg !1949
  %31 = load i16, ptr %arrayidx108, align 2, !dbg !1949
  %conv109 = zext i16 %31 to i32, !dbg !1949
  %add110 = add nsw i32 %call106, %conv109, !dbg !1949
  %idxprom111 = sext i32 %cond5.i6201 to i64, !dbg !1949
  %arrayidx112 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom111, !dbg !1949
  %32 = load i16, ptr %arrayidx112, align 2, !dbg !1949
  %conv113 = zext i16 %32 to i32, !dbg !1949
  %add114 = add nsw i32 %add110, %conv113, !dbg !1949
    #dbg_value(i32 %add114, !1450, !DIExpression(), !1848)
  %cmp115 = icmp slt i32 %add114, %bpred_cost.26248, !dbg !1951
  %bpred_cost.3 = call i32 @llvm.smin.i32(i32 %add114, i32 %bpred_cost.26248), !dbg !1949
  %bpred_my.3 = select i1 %cmp115, i32 %cond5.i6201, i32 %bpred_my.26249, !dbg !1949
  %bpred_mx.3 = select i1 %cmp115, i32 %cond5.i6198, i32 %bpred_mx.26250, !dbg !1949
    #dbg_value(i32 %bpred_mx.3, !1406, !DIExpression(), !1843)
    #dbg_value(i32 %bpred_my.3, !1407, !DIExpression(), !1843)
    #dbg_value(i32 %bpred_cost.3, !1408, !DIExpression(), !1843)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride291) #6, !dbg !1953
  br label %for.inc, !dbg !1954

for.inc:                                          ; preds = %for.body, %if.then80
  %bpred_cost.4 = phi i32 [ %bpred_cost.3, %if.then80 ], [ %bpred_cost.26248, %for.body ], !dbg !1928
  %bpred_my.4 = phi i32 [ %bpred_my.3, %if.then80 ], [ %bpred_my.26249, %for.body ], !dbg !1928
  %bpred_mx.4 = phi i32 [ %bpred_mx.3, %if.then80 ], [ %bpred_mx.26250, %for.body ], !dbg !1928
    #dbg_value(i32 %bpred_mx.4, !1406, !DIExpression(), !1843)
    #dbg_value(i32 %bpred_my.4, !1407, !DIExpression(), !1843)
    #dbg_value(i32 %bpred_cost.4, !1408, !DIExpression(), !1843)
  %indvars.iv.next6428 = add nuw nsw i64 %indvars.iv6427, 1, !dbg !1955
    #dbg_value(i64 %indvars.iv.next6428, !1439, !DIExpression(), !1925)
  %exitcond6431.not = icmp eq i64 %indvars.iv.next6428, %wide.trip.count6430, !dbg !1926
  br i1 %exitcond6431.not, label %for.cond.cleanup, label %for.body, !dbg !1927, !llvm.loop !1956

if.else:                                          ; preds = %entry
    #dbg_value(i32 %shr, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %shr46, !1404, !DIExpression(), !1843)
  %fpelcmp148 = getelementptr inbounds i8, ptr %h, i64 31928, !dbg !1958
  %arrayidx150 = getelementptr inbounds [7 x ptr], ptr %fpelcmp148, i64 0, i64 %idxprom, !dbg !1959
  %33 = load ptr, ptr %arrayidx150, align 8, !dbg !1959
  %mul151 = mul nsw i32 %shr46, %3, !dbg !1960
  %add152 = add nsw i32 %mul151, %shr, !dbg !1961
  %idxprom153 = sext i32 %add152 to i64, !dbg !1962
  %arrayidx154 = getelementptr inbounds i8, ptr %6, i64 %idxprom153, !dbg !1962
  %call155 = tail call i32 %33(ptr noundef %5, i32 noundef 16, ptr noundef %arrayidx154, i32 noundef %3) #6, !dbg !1959
    #dbg_value(i32 %call155, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %shr, !1907, !DIExpression(), !1963)
    #dbg_value(i32 %shr46, !1912, !DIExpression(), !1963)
  %and.i6202 = and i32 %shr, 65535, !dbg !1965
  %shl.i6203 = shl i32 %shr46, 16, !dbg !1966
  %add.i6204 = or disjoint i32 %shl.i6203, %and.i6202, !dbg !1967
    #dbg_value(i32 %add.i6204, !1431, !DIExpression(), !1843)
  %cmp157 = icmp sgt i32 %i_mvc, 0, !dbg !1968
  br i1 %cmp157, label %for.body.preheader.i, label %if.end241, !dbg !1969

for.body.preheader.i:                             ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %mvc_fpel) #6, !dbg !1970
    #dbg_value(ptr %mvc_fpel, !1971, !DIExpression(), !1988)
    #dbg_value(ptr %mvc, !1976, !DIExpression(), !1988)
    #dbg_value(i32 %i_mvc, !1977, !DIExpression(), !1988)
    #dbg_value(i32 poison, !1978, !DIExpression(), !1988)
    #dbg_value(i32 poison, !1979, !DIExpression(), !1988)
    #dbg_value(i32 poison, !1980, !DIExpression(), !1988)
    #dbg_value(i32 poison, !1981, !DIExpression(), !1988)
    #dbg_value(i32 0, !1982, !DIExpression(), !1990)
  %wide.trip.count.i = zext nneg i32 %i_mvc to i64, !dbg !1991
  %min.iters.check = icmp ult i32 %i_mvc, 16, !dbg !1992
  br i1 %min.iters.check, label %for.body.i.preheader, label %vector.ph, !dbg !1992

vector.ph:                                        ; preds = %for.body.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483632, !dbg !1992
  %broadcast.splat = shufflevector <2 x i32> %7, <2 x i32> poison, <4 x i32> zeroinitializer, !dbg !1992
  %broadcast.splat6639 = shufflevector <2 x i32> %8, <2 x i32> poison, <4 x i32> zeroinitializer, !dbg !1992
  %broadcast.splat6641 = shufflevector <2 x i32> %7, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>, !dbg !1992
  %broadcast.splat6643 = shufflevector <2 x i32> %8, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>, !dbg !1992
  br label %vector.body, !dbg !1992

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !1993
  %34 = or disjoint i64 %index, 4, !dbg !1992
  %35 = or disjoint i64 %index, 8, !dbg !1992
  %36 = or disjoint i64 %index, 12, !dbg !1992
  %37 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %index, !dbg !1994
  %38 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %34, !dbg !1994
  %39 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %35, !dbg !1994
  %40 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %36, !dbg !1994
  %wide.vec = load <8 x i16>, ptr %37, align 2, !dbg !1994
  %wide.vec6628 = load <8 x i16>, ptr %38, align 2, !dbg !1994
  %wide.vec6629 = load <8 x i16>, ptr %39, align 2, !dbg !1994
  %wide.vec6630 = load <8 x i16>, ptr %40, align 2, !dbg !1994
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>, !dbg !1994
  %strided.vec6631 = shufflevector <8 x i16> %wide.vec6628, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>, !dbg !1994
  %strided.vec6632 = shufflevector <8 x i16> %wide.vec6629, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>, !dbg !1994
  %strided.vec6633 = shufflevector <8 x i16> %wide.vec6630, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>, !dbg !1994
  %strided.vec6634 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>, !dbg !1994
  %strided.vec6635 = shufflevector <8 x i16> %wide.vec6628, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>, !dbg !1994
  %strided.vec6636 = shufflevector <8 x i16> %wide.vec6629, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>, !dbg !1994
  %strided.vec6637 = shufflevector <8 x i16> %wide.vec6630, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>, !dbg !1994
  %41 = sext <4 x i16> %strided.vec to <4 x i32>, !dbg !1994
  %42 = sext <4 x i16> %strided.vec6631 to <4 x i32>, !dbg !1994
  %43 = sext <4 x i16> %strided.vec6632 to <4 x i32>, !dbg !1994
  %44 = sext <4 x i16> %strided.vec6633 to <4 x i32>, !dbg !1994
  %45 = add nsw <4 x i32> %41, <i32 2, i32 2, i32 2, i32 2>, !dbg !1995
  %46 = add nsw <4 x i32> %42, <i32 2, i32 2, i32 2, i32 2>, !dbg !1995
  %47 = add nsw <4 x i32> %43, <i32 2, i32 2, i32 2, i32 2>, !dbg !1995
  %48 = add nsw <4 x i32> %44, <i32 2, i32 2, i32 2, i32 2>, !dbg !1995
  %49 = ashr <4 x i32> %45, <i32 2, i32 2, i32 2, i32 2>, !dbg !1996
  %50 = ashr <4 x i32> %46, <i32 2, i32 2, i32 2, i32 2>, !dbg !1996
  %51 = ashr <4 x i32> %47, <i32 2, i32 2, i32 2, i32 2>, !dbg !1996
  %52 = ashr <4 x i32> %48, <i32 2, i32 2, i32 2, i32 2>, !dbg !1996
  %53 = sext <4 x i16> %strided.vec6634 to <4 x i32>, !dbg !1997
  %54 = sext <4 x i16> %strided.vec6635 to <4 x i32>, !dbg !1997
  %55 = sext <4 x i16> %strided.vec6636 to <4 x i32>, !dbg !1997
  %56 = sext <4 x i16> %strided.vec6637 to <4 x i32>, !dbg !1997
  %57 = add nsw <4 x i32> %53, <i32 2, i32 2, i32 2, i32 2>, !dbg !1998
  %58 = add nsw <4 x i32> %54, <i32 2, i32 2, i32 2, i32 2>, !dbg !1998
  %59 = add nsw <4 x i32> %55, <i32 2, i32 2, i32 2, i32 2>, !dbg !1998
  %60 = add nsw <4 x i32> %56, <i32 2, i32 2, i32 2, i32 2>, !dbg !1998
  %61 = ashr <4 x i32> %57, <i32 2, i32 2, i32 2, i32 2>, !dbg !1999
  %62 = ashr <4 x i32> %58, <i32 2, i32 2, i32 2, i32 2>, !dbg !1999
  %63 = ashr <4 x i32> %59, <i32 2, i32 2, i32 2, i32 2>, !dbg !1999
  %64 = ashr <4 x i32> %60, <i32 2, i32 2, i32 2, i32 2>, !dbg !1999
  %65 = icmp slt <4 x i32> %49, %broadcast.splat, !dbg !2000
  %66 = icmp slt <4 x i32> %50, %broadcast.splat, !dbg !2000
  %67 = icmp slt <4 x i32> %51, %broadcast.splat, !dbg !2000
  %68 = icmp slt <4 x i32> %52, %broadcast.splat, !dbg !2000
  %69 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %49, <4 x i32> %broadcast.splat6639), !dbg !2002
  %70 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %50, <4 x i32> %broadcast.splat6639), !dbg !2002
  %71 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %51, <4 x i32> %broadcast.splat6639), !dbg !2002
  %72 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %52, <4 x i32> %broadcast.splat6639), !dbg !2002
  %73 = select <4 x i1> %65, <4 x i32> %broadcast.splat, <4 x i32> %69, !dbg !2002
  %74 = select <4 x i1> %66, <4 x i32> %broadcast.splat, <4 x i32> %70, !dbg !2002
  %75 = select <4 x i1> %67, <4 x i32> %broadcast.splat, <4 x i32> %71, !dbg !2002
  %76 = select <4 x i1> %68, <4 x i32> %broadcast.splat, <4 x i32> %72, !dbg !2002
  %77 = icmp slt <4 x i32> %61, %broadcast.splat6641, !dbg !2003
  %78 = icmp slt <4 x i32> %62, %broadcast.splat6641, !dbg !2003
  %79 = icmp slt <4 x i32> %63, %broadcast.splat6641, !dbg !2003
  %80 = icmp slt <4 x i32> %64, %broadcast.splat6641, !dbg !2003
  %81 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %61, <4 x i32> %broadcast.splat6643), !dbg !2005
  %82 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %62, <4 x i32> %broadcast.splat6643), !dbg !2005
  %83 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %63, <4 x i32> %broadcast.splat6643), !dbg !2005
  %84 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %64, <4 x i32> %broadcast.splat6643), !dbg !2005
  %85 = select <4 x i1> %77, <4 x i32> %broadcast.splat6641, <4 x i32> %81, !dbg !2005
  %86 = select <4 x i1> %78, <4 x i32> %broadcast.splat6641, <4 x i32> %82, !dbg !2005
  %87 = select <4 x i1> %79, <4 x i32> %broadcast.splat6641, <4 x i32> %83, !dbg !2005
  %88 = select <4 x i1> %80, <4 x i32> %broadcast.splat6641, <4 x i32> %84, !dbg !2005
  %89 = getelementptr inbounds [2 x i16], ptr %mvc_fpel, i64 %index, !dbg !2006
  %90 = getelementptr inbounds [2 x i16], ptr %mvc_fpel, i64 %34, !dbg !2006
  %91 = getelementptr inbounds [2 x i16], ptr %mvc_fpel, i64 %35, !dbg !2006
  %92 = getelementptr inbounds [2 x i16], ptr %mvc_fpel, i64 %36, !dbg !2006
  %93 = shufflevector <4 x i32> %73, <4 x i32> %85, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>, !dbg !2007
  %interleaved.vec = trunc <8 x i32> %93 to <8 x i16>, !dbg !2007
  store <8 x i16> %interleaved.vec, ptr %89, align 8, !dbg !2007
  %94 = shufflevector <4 x i32> %74, <4 x i32> %86, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>, !dbg !2007
  %interleaved.vec6644 = trunc <8 x i32> %94 to <8 x i16>, !dbg !2007
  store <8 x i16> %interleaved.vec6644, ptr %90, align 8, !dbg !2007
  %95 = shufflevector <4 x i32> %75, <4 x i32> %87, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>, !dbg !2007
  %interleaved.vec6645 = trunc <8 x i32> %95 to <8 x i16>, !dbg !2007
  store <8 x i16> %interleaved.vec6645, ptr %91, align 8, !dbg !2007
  %96 = shufflevector <4 x i32> %76, <4 x i32> %88, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>, !dbg !2007
  %interleaved.vec6646 = trunc <8 x i32> %96 to <8 x i16>, !dbg !2007
  store <8 x i16> %interleaved.vec6646, ptr %92, align 8, !dbg !2007
  %index.next = add nuw i64 %index, 16, !dbg !1993
  %97 = icmp eq i64 %index.next, %n.vec, !dbg !1993
  br i1 %97, label %middle.block, label %vector.body, !dbg !1993, !llvm.loop !2008

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i, !dbg !1992
  br i1 %cmp.n, label %for.body167.preheader, label %for.body.i.preheader, !dbg !1992

for.body.i.preheader:                             ; preds = %middle.block, %for.body.preheader.i
  %indvars.iv.i.ph = phi i64 [ 0, %for.body.preheader.i ], [ %n.vec, %middle.block ]
  br label %for.body.i, !dbg !1992

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ %indvars.iv.i.ph, %for.body.i.preheader ]
    #dbg_value(i64 %indvars.iv.i, !1982, !DIExpression(), !1990)
  %arrayidx.i = getelementptr inbounds [2 x i16], ptr %mvc, i64 %indvars.iv.i, !dbg !1994
    #dbg_value(i16 poison, !1984, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shra, DW_OP_stack_value), !2012)
    #dbg_value(i16 poison, !1987, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shra, DW_OP_stack_value), !2012)
    #dbg_value(i16 poison, !1884, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shra, DW_OP_stack_value), !2013)
    #dbg_value(i32 poison, !1889, !DIExpression(), !2013)
    #dbg_value(i32 poison, !1890, !DIExpression(), !2013)
  %arrayidx10.i = getelementptr inbounds [2 x i16], ptr %mvc_fpel, i64 %indvars.iv.i, !dbg !2014
    #dbg_value(i16 poison, !1884, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shra, DW_OP_stack_value), !2015)
    #dbg_value(i32 poison, !1889, !DIExpression(), !2015)
    #dbg_value(i32 poison, !1890, !DIExpression(), !2015)
  %98 = load <2 x i16>, ptr %arrayidx.i, align 2, !dbg !1994
  %99 = sext <2 x i16> %98 to <2 x i32>, !dbg !1994
  %100 = add nsw <2 x i32> %99, <i32 2, i32 2>, !dbg !1995
  %101 = ashr <2 x i32> %100, <i32 2, i32 2>, !dbg !1996
  %102 = icmp slt <2 x i32> %101, %7, !dbg !2000
  %103 = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %101, <2 x i32> %8), !dbg !2002
  %104 = select <2 x i1> %102, <2 x i32> %7, <2 x i32> %103, !dbg !2002
  %105 = trunc <2 x i32> %104 to <2 x i16>, !dbg !2016
  store <2 x i16> %105, ptr %arrayidx10.i, align 4, !dbg !2017
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !1993
    #dbg_value(i64 %indvars.iv.next.i, !1982, !DIExpression(), !1990)
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i, !dbg !1991
  br i1 %exitcond.not.i, label %for.body167.preheader, label %for.body.i, !dbg !1992, !llvm.loop !2018

for.body167.preheader:                            ; preds = %for.body.i, %middle.block
    #dbg_value(i32 %call155, !1405, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_stack_value), !1843)
    #dbg_value(i32 1, !1459, !DIExpression(), !2019)
  %shl161 = shl i32 %call155, 4, !dbg !2020
    #dbg_value(i32 %shl161, !1405, !DIExpression(), !1843)
  %106 = add nuw i32 %i_mvc, 1, !dbg !2021
  %wide.trip.count = zext i32 %106 to i64, !dbg !2022
  br label %for.body167, !dbg !2021

for.cond.cleanup166:                              ; preds = %for.inc220
  %and223 = and i32 %bcost.3, 15, !dbg !2023
  %tobool224.not = icmp eq i32 %and223, 0, !dbg !2023
  br i1 %tobool224.not, label %if.end238, label %if.then225, !dbg !2025

for.body167:                                      ; preds = %for.body167.preheader, %for.inc220
  %indvars.iv = phi i64 [ 1, %for.body167.preheader ], [ %indvars.iv.next, %for.inc220 ]
  %bcost.16245 = phi i32 [ %shl161, %for.body167.preheader ], [ %bcost.3, %for.inc220 ]
    #dbg_value(i32 %bcost.16245, !1405, !DIExpression(), !1843)
    #dbg_value(i64 %indvars.iv, !1459, !DIExpression(), !2019)
  %107 = add nsw i64 %indvars.iv, -1, !dbg !2026
  %arrayidx170 = getelementptr inbounds [16 x [2 x i16]], ptr %mvc_fpel, i64 0, i64 %107, !dbg !2026
  %108 = load i32, ptr %arrayidx170, align 4, !dbg !2026
  %tobool172.not = icmp eq i32 %108, 0, !dbg !2026
  br i1 %tobool172.not, label %for.inc220, label %land.lhs.true173, !dbg !2027

land.lhs.true173:                                 ; preds = %for.body167
  %arrayidx176 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %107, !dbg !2028
  %109 = load i32, ptr %arrayidx176, align 4, !dbg !2028
  %cmp178.not = icmp eq i32 %add.i6204, %109, !dbg !2029
  br i1 %cmp178.not, label %for.inc220, label %if.then180, !dbg !2030

if.then180:                                       ; preds = %land.lhs.true173
  %sext = shl i32 %108, 16, !dbg !2031
  %conv186 = ashr exact i32 %sext, 16, !dbg !2031
    #dbg_value(i32 %conv186, !1461, !DIExpression(), !2032)
  %conv192 = ashr i32 %108, 16, !dbg !2033
    #dbg_value(i32 %conv192, !1466, !DIExpression(), !2032)
  %110 = load ptr, ptr %arrayidx150, align 8, !dbg !2034
  %mul198 = mul nsw i32 %3, %conv192, !dbg !2035
  %add199 = add nsw i32 %mul198, %conv186, !dbg !2036
  %idxprom200 = sext i32 %add199 to i64, !dbg !2037
  %arrayidx201 = getelementptr inbounds i8, ptr %6, i64 %idxprom200, !dbg !2037
  %call202 = tail call i32 %110(ptr noundef %5, i32 noundef 16, ptr noundef %arrayidx201, i32 noundef %3) #6, !dbg !2034
  %shl203 = ashr exact i32 %sext, 14, !dbg !2038
  %idxprom204 = sext i32 %shl203 to i64, !dbg !2038
  %arrayidx205 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom204, !dbg !2038
  %111 = load i16, ptr %arrayidx205, align 2, !dbg !2038
  %conv206 = zext i16 %111 to i32, !dbg !2038
  %shl207 = shl nsw i32 %conv192, 2, !dbg !2038
  %idxprom208 = sext i32 %shl207 to i64, !dbg !2038
  %arrayidx209 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom208, !dbg !2038
  %112 = load i16, ptr %arrayidx209, align 2, !dbg !2038
  %conv210 = zext i16 %112 to i32, !dbg !2038
  %add211 = add i32 %call202, %conv206, !dbg !2038
  %add212 = add i32 %add211, %conv210, !dbg !2039
    #dbg_value(i32 %add212, !1467, !DIExpression(), !2032)
  %shl213 = shl i32 %add212, 4, !dbg !2040
  %113 = trunc nuw nsw i64 %indvars.iv to i32, !dbg !2041
  %add214 = add nsw i32 %shl213, %113, !dbg !2041
    #dbg_value(i32 %add214, !1467, !DIExpression(), !2032)
  %spec.select6170 = tail call i32 @llvm.smin.i32(i32 %add214, i32 %bcost.16245), !dbg !2042
    #dbg_value(i32 %spec.select6170, !1405, !DIExpression(), !1843)
  br label %for.inc220, !dbg !2043

for.inc220:                                       ; preds = %for.body167, %land.lhs.true173, %if.then180
  %bcost.3 = phi i32 [ %spec.select6170, %if.then180 ], [ %bcost.16245, %land.lhs.true173 ], [ %bcost.16245, %for.body167 ], !dbg !1850
    #dbg_value(i32 %bcost.3, !1405, !DIExpression(), !1843)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2044
    #dbg_value(i64 %indvars.iv.next, !1459, !DIExpression(), !2019)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !2022
  br i1 %exitcond.not, label %for.cond.cleanup166, label %for.body167, !dbg !2021, !llvm.loop !2045

if.then225:                                       ; preds = %for.cond.cleanup166
  %sub227 = add nsw i32 %and223, -1, !dbg !2047
  %idxprom228 = zext nneg i32 %sub227 to i64, !dbg !2049
  %arrayidx229 = getelementptr inbounds [16 x [2 x i16]], ptr %mvc_fpel, i64 0, i64 %idxprom228, !dbg !2049
  %114 = load i16, ptr %arrayidx229, align 4, !dbg !2049
  %conv231 = sext i16 %114 to i32, !dbg !2049
    #dbg_value(i32 %conv231, !1403, !DIExpression(), !1843)
  %arrayidx236 = getelementptr inbounds i8, ptr %arrayidx229, i64 2, !dbg !2050
  %115 = load i16, ptr %arrayidx236, align 2, !dbg !2050
  %conv237 = sext i16 %115 to i32, !dbg !2050
    #dbg_value(i32 %conv237, !1404, !DIExpression(), !1843)
  br label %if.end238, !dbg !2051

if.end238:                                        ; preds = %if.then225, %for.cond.cleanup166
  %bmy.1 = phi i32 [ %conv237, %if.then225 ], [ %shr46, %for.cond.cleanup166 ], !dbg !2052
  %bmx.1 = phi i32 [ %conv231, %if.then225 ], [ %shr, %for.cond.cleanup166 ], !dbg !2052
    #dbg_value(i32 %bmx.1, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.1, !1404, !DIExpression(), !1843)
  %shr239 = ashr i32 %bcost.3, 4, !dbg !2053
    #dbg_value(i32 %shr239, !1405, !DIExpression(), !1843)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %mvc_fpel) #6, !dbg !2054
  br label %if.end241, !dbg !2055

if.end241:                                        ; preds = %if.else, %if.end238, %for.cond.cleanup
  %pmv.0 = phi i32 [ %add.i, %for.cond.cleanup ], [ %add.i6204, %if.end238 ], [ %add.i6204, %if.else ], !dbg !2056
  %bpred_cost.5 = phi i32 [ %bpred_cost.2.lcssa, %for.cond.cleanup ], [ 268435456, %if.end238 ], [ 268435456, %if.else ], !dbg !1843
  %bpred_my.5 = phi i32 [ %bpred_my.2.lcssa, %for.cond.cleanup ], [ 0, %if.end238 ], [ 0, %if.else ], !dbg !1843
  %bpred_mx.5 = phi i32 [ %bpred_mx.2.lcssa, %for.cond.cleanup ], [ 0, %if.end238 ], [ 0, %if.else ], !dbg !1843
  %bcost.4 = phi i32 [ %spec.select, %for.cond.cleanup ], [ %shr239, %if.end238 ], [ %call155, %if.else ], !dbg !2056
  %bmy.2 = phi i32 [ %shr123, %for.cond.cleanup ], [ %bmy.1, %if.end238 ], [ %shr46, %if.else ], !dbg !2056
  %bmx.2 = phi i32 [ %shr121, %for.cond.cleanup ], [ %bmx.1, %if.end238 ], [ %shr, %if.else ], !dbg !2056
    #dbg_value(i32 %bmx.2, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.2, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.4, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %bpred_mx.5, !1406, !DIExpression(), !1843)
    #dbg_value(i32 %bpred_my.5, !1407, !DIExpression(), !1843)
    #dbg_value(i32 %bpred_cost.5, !1408, !DIExpression(), !1843)
    #dbg_value(i32 %pmv.0, !1431, !DIExpression(), !1843)
  %tobool242.not = icmp eq i32 %pmv.0, 0, !dbg !2057
  br i1 %tobool242.not, label %if.end264, label %if.then243, !dbg !2058

if.then243:                                       ; preds = %if.end241
  %fpelcmp246 = getelementptr inbounds i8, ptr %h, i64 31928, !dbg !2059
  %arrayidx248 = getelementptr inbounds [7 x ptr], ptr %fpelcmp246, i64 0, i64 %idxprom, !dbg !2059
  %116 = load ptr, ptr %arrayidx248, align 8, !dbg !2059
  %call253 = call i32 %116(ptr noundef %5, i32 noundef 16, ptr noundef %6, i32 noundef %3) #6, !dbg !2059
  %117 = load i16, ptr %add.ptr, align 2, !dbg !2059
  %conv255 = zext i16 %117 to i32, !dbg !2059
  %118 = load i16, ptr %add.ptr37, align 2, !dbg !2059
  %conv257 = zext i16 %118 to i32, !dbg !2059
  %add258 = add i32 %call253, %conv255, !dbg !2059
  %add259 = add i32 %add258, %conv257, !dbg !2059
    #dbg_value(i32 %add259, !1468, !DIExpression(), !2060)
  %cmp260 = icmp slt i32 %add259, %bcost.4, !dbg !2061
  %bcost.5 = call i32 @llvm.smin.i32(i32 %add259, i32 %bcost.4), !dbg !2059
  %bmy.3 = select i1 %cmp260, i32 0, i32 %bmy.2, !dbg !2059
  %bmx.3 = select i1 %cmp260, i32 0, i32 %bmx.2, !dbg !2059
    #dbg_value(i32 %bmx.3, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.3, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.5, !1405, !DIExpression(), !1843)
  br label %if.end264, !dbg !2059

if.end264:                                        ; preds = %if.then243, %if.end241
  %bcost.6 = phi i32 [ %bcost.5, %if.then243 ], [ %bcost.4, %if.end241 ], !dbg !1843
  %bmy.4 = phi i32 [ %bmy.3, %if.then243 ], [ %bmy.2, %if.end241 ], !dbg !1843
  %bmx.4 = phi i32 [ %bmx.3, %if.then243 ], [ %bmx.2, %if.end241 ], !dbg !1843
    #dbg_value(i32 %bmx.4, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.4, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.6, !1405, !DIExpression(), !1843)
  %i_me_method = getelementptr inbounds i8, ptr %h, i64 16404, !dbg !2063
  %119 = load i32, ptr %i_me_method, align 4, !dbg !2063
  switch i32 %119, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %me_hex2
    i32 2, label %sw.bb1041
    i32 3, label %sw.bb3557
    i32 4, label %sw.bb3557
  ], !dbg !2064

sw.bb:                                            ; preds = %if.end264
  %shl266 = shl i32 %bcost.6, 4, !dbg !2065
    #dbg_value(i32 %shl266, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %4, !1471, !DIExpression(), !2066)
  %fpelcmp_x4 = getelementptr inbounds i8, ptr %h, i64 32040
  %arrayidx275 = getelementptr inbounds [7 x ptr], ptr %fpelcmp_x4, i64 0, i64 %idxprom
  %mul277 = sub nsw i32 0, %3
  %idx.ext278 = sext i32 %mul277 to i64
  %idx.ext282 = sext i32 %3 to i64
  %arrayidx317 = getelementptr inbounds i8, ptr %costs, i64 4
  %arrayidx330 = getelementptr inbounds i8, ptr %costs, i64 8
  %arrayidx343 = getelementptr inbounds i8, ptr %costs, i64 12
  br label %do.body, !dbg !2067

do.body:                                          ; preds = %land.rhs, %sw.bb
  %i267.0 = phi i32 [ %4, %sw.bb ], [ %dec, %land.rhs ], !dbg !2066
  %bcost.7 = phi i32 [ %shl266, %sw.bb ], [ %and395, %land.rhs ], !dbg !2066
  %bmy.5 = phi i32 [ %bmy.4, %sw.bb ], [ %sub394, %land.rhs ], !dbg !1843
  %bmx.5 = phi i32 [ %bmx.4, %sw.bb ], [ %sub391, %land.rhs ], !dbg !1843
    #dbg_value(i32 %bmx.5, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.5, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.7, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %i267.0, !1471, !DIExpression(), !2066)
  %idx.ext268 = sext i32 %bmx.5 to i64, !dbg !2068
  %add.ptr269 = getelementptr inbounds i8, ptr %6, i64 %idx.ext268, !dbg !2068
  %mul270 = mul nsw i32 %bmy.5, %3, !dbg !2068
  %idx.ext271 = sext i32 %mul270 to i64, !dbg !2068
  %add.ptr272 = getelementptr inbounds i8, ptr %add.ptr269, i64 %idx.ext271, !dbg !2068
    #dbg_value(ptr %add.ptr272, !1474, !DIExpression(), !2069)
  %120 = load ptr, ptr %arrayidx275, align 8, !dbg !2068
  %add.ptr279 = getelementptr inbounds i8, ptr %add.ptr272, i64 %idx.ext278, !dbg !2068
  %add.ptr283 = getelementptr inbounds i8, ptr %add.ptr272, i64 %idx.ext282, !dbg !2068
  %add.ptr284 = getelementptr inbounds i8, ptr %add.ptr272, i64 -1, !dbg !2068
  %add.ptr288 = getelementptr inbounds i8, ptr %add.ptr272, i64 1, !dbg !2068
  call void %120(ptr noundef %5, ptr noundef %add.ptr279, ptr noundef %add.ptr283, ptr noundef nonnull %add.ptr284, ptr noundef nonnull %add.ptr288, i32 noundef %3, ptr noundef nonnull %costs) #6, !dbg !2068
  %shl294 = shl i32 %bmx.5, 2, !dbg !2068
  %idxprom295 = sext i32 %shl294 to i64, !dbg !2068
  %arrayidx296 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom295, !dbg !2068
  %121 = load i16, ptr %arrayidx296, align 2, !dbg !2068
  %conv297 = zext i16 %121 to i32, !dbg !2068
  %add298 = shl i32 %bmy.5, 2, !dbg !2068
  %shl299 = add i32 %add298, -4, !dbg !2068
  %idxprom300 = sext i32 %shl299 to i64, !dbg !2068
  %arrayidx301 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom300, !dbg !2068
  %122 = load i16, ptr %arrayidx301, align 2, !dbg !2068
  %conv302 = zext i16 %122 to i32, !dbg !2068
  %add303 = add nuw nsw i32 %conv302, %conv297, !dbg !2068
  %123 = load i32, ptr %costs, align 16, !dbg !2068
  %add305 = add nsw i32 %add303, %123, !dbg !2068
  store i32 %add305, ptr %costs, align 16, !dbg !2068, !DIAssignID !2070
    #dbg_assign(i32 %add305, !1416, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2070, ptr %costs, !DIExpression(), !1843)
  %124 = load i16, ptr %arrayidx296, align 2, !dbg !2068
  %conv310 = zext i16 %124 to i32, !dbg !2068
  %shl312 = add i32 %add298, 4, !dbg !2068
  %idxprom313 = sext i32 %shl312 to i64, !dbg !2068
  %arrayidx314 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom313, !dbg !2068
  %125 = load i16, ptr %arrayidx314, align 2, !dbg !2068
  %conv315 = zext i16 %125 to i32, !dbg !2068
  %add316 = add nuw nsw i32 %conv315, %conv310, !dbg !2068
  %126 = load i32, ptr %arrayidx317, align 4, !dbg !2068
  %add318 = add nsw i32 %add316, %126, !dbg !2068
  store i32 %add318, ptr %arrayidx317, align 4, !dbg !2068, !DIAssignID !2071
    #dbg_assign(i32 %add318, !1416, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2071, ptr %arrayidx317, !DIExpression(), !1843)
  %shl320 = add i32 %shl294, -4, !dbg !2068
  %idxprom321 = sext i32 %shl320 to i64, !dbg !2068
  %arrayidx322 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom321, !dbg !2068
  %127 = load i16, ptr %arrayidx322, align 2, !dbg !2068
  %conv323 = zext i16 %127 to i32, !dbg !2068
  %idxprom326 = sext i32 %add298 to i64, !dbg !2068
  %arrayidx327 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom326, !dbg !2068
  %128 = load i16, ptr %arrayidx327, align 2, !dbg !2068
  %conv328 = zext i16 %128 to i32, !dbg !2068
  %add329 = add nuw nsw i32 %conv328, %conv323, !dbg !2068
  %129 = load i32, ptr %arrayidx330, align 8, !dbg !2068
  %add331 = add nsw i32 %add329, %129, !dbg !2068
  store i32 %add331, ptr %arrayidx330, align 8, !dbg !2068, !DIAssignID !2072
    #dbg_assign(i32 %add331, !1416, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2072, ptr %arrayidx330, !DIExpression(), !1843)
  %shl333 = add i32 %shl294, 4, !dbg !2068
  %idxprom334 = sext i32 %shl333 to i64, !dbg !2068
  %arrayidx335 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom334, !dbg !2068
  %130 = load i16, ptr %arrayidx335, align 2, !dbg !2068
  %conv336 = zext i16 %130 to i32, !dbg !2068
  %131 = load i16, ptr %arrayidx327, align 2, !dbg !2068
  %conv341 = zext i16 %131 to i32, !dbg !2068
  %add342 = add nuw nsw i32 %conv341, %conv336, !dbg !2068
  %132 = load i32, ptr %arrayidx343, align 4, !dbg !2068
  %add344 = add nsw i32 %add342, %132, !dbg !2068
  store i32 %add344, ptr %arrayidx343, align 4, !dbg !2068, !DIAssignID !2073
    #dbg_assign(i32 %add344, !1416, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !2073, ptr %arrayidx343, !DIExpression(), !1843)
  %shl346 = shl i32 %add305, 4, !dbg !2074
  %add347 = or disjoint i32 %shl346, 1, !dbg !2074
  %spec.select6171 = call i32 @llvm.smin.i32(i32 %add347, i32 %bcost.7), !dbg !2076
    #dbg_value(i32 %spec.select6171, !1405, !DIExpression(), !1843)
  %shl356 = shl i32 %add318, 4, !dbg !2077
  %add357 = or disjoint i32 %shl356, 3, !dbg !2077
  %bcost.9 = call i32 @llvm.smin.i32(i32 %add357, i32 %spec.select6171), !dbg !2079
    #dbg_value(i32 %bcost.9, !1405, !DIExpression(), !1843)
  %shl366 = shl i32 %add331, 4, !dbg !2080
  %add367 = or disjoint i32 %shl366, 4, !dbg !2080
  %bcost.10 = call i32 @llvm.smin.i32(i32 %add367, i32 %bcost.9), !dbg !2082
    #dbg_value(i32 %bcost.10, !1405, !DIExpression(), !1843)
  %shl376 = shl i32 %add344, 4, !dbg !2083
  %add377 = or disjoint i32 %shl376, 12, !dbg !2083
  %bcost.11 = call i32 @llvm.smin.i32(i32 %add377, i32 %bcost.10), !dbg !2085
    #dbg_value(i32 %bcost.11, !1405, !DIExpression(), !1843)
  %and385 = and i32 %bcost.11, 15, !dbg !2086
  %tobool386.not = icmp eq i32 %and385, 0, !dbg !2086
  br i1 %tobool386.not, label %do.end, label %if.end388, !dbg !2088

if.end388:                                        ; preds = %do.body
  %shl389 = shl i32 %bcost.11, 28, !dbg !2089
  %shr390 = ashr i32 %shl389, 30, !dbg !2090
  %sub391 = sub nsw i32 %bmx.5, %shr390, !dbg !2091
    #dbg_value(i32 %sub391, !1403, !DIExpression(), !1843)
  %shl392 = shl i32 %bcost.11, 30, !dbg !2092
  %shr393 = ashr exact i32 %shl392, 30, !dbg !2093
  %sub394 = sub nsw i32 %bmy.5, %shr393, !dbg !2094
    #dbg_value(i32 %sub394, !1404, !DIExpression(), !1843)
  %and395 = and i32 %bcost.11, -16, !dbg !2095
    #dbg_value(i32 %and395, !1405, !DIExpression(), !1843)
  %dec = add nsw i32 %i267.0, -1, !dbg !2096
    #dbg_value(i32 %dec, !1471, !DIExpression(), !2066)
  %tobool396.not = icmp eq i32 %dec, 0, !dbg !2096
  br i1 %tobool396.not, label %do.end, label %land.rhs, !dbg !2097

land.rhs:                                         ; preds = %if.end388
  %shl397 = shl i32 %sub391, 16, !dbg !2098
  %and398 = and i32 %sub394, 32767, !dbg !2098
  %or399 = or disjoint i32 %shl397, %and398, !dbg !2098
  %add400 = add i32 %or399, %or, !dbg !2098
  %sub404 = sub i32 %or29, %or399, !dbg !2098
  %or405 = or i32 %add400, %sub404, !dbg !2098
  %and406 = and i32 %or405, -2147467264, !dbg !2098
  %tobool407.not = icmp eq i32 %and406, 0, !dbg !2098
  br i1 %tobool407.not, label %do.body, label %do.end, !dbg !2099, !llvm.loop !2100

do.end:                                           ; preds = %if.end388, %do.body, %land.rhs
  %bcost.12 = phi i32 [ %and395, %land.rhs ], [ %and395, %if.end388 ], [ %bcost.11, %do.body ], !dbg !2102
  %bmy.6 = phi i32 [ %sub394, %land.rhs ], [ %sub394, %if.end388 ], [ %bmy.5, %do.body ], !dbg !1843
  %bmx.6 = phi i32 [ %sub391, %land.rhs ], [ %sub391, %if.end388 ], [ %bmx.5, %do.body ], !dbg !1843
    #dbg_value(i32 %bmx.6, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.6, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.12, !1405, !DIExpression(), !1843)
  %shr408 = ashr i32 %bcost.12, 4, !dbg !2103
    #dbg_value(i32 %shr408, !1405, !DIExpression(), !1843)
  br label %sw.epilog

me_hex2:                                          ; preds = %if.end1267, %cleanup3553, %if.end264
  %bcost.13 = phi i32 [ %bcost.133, %cleanup3553 ], [ %bcost.6, %if.end264 ], [ %bcost.42, %if.end1267 ], !dbg !1843
  %bmy.7 = phi i32 [ %bmy.94, %cleanup3553 ], [ %bmy.4, %if.end264 ], [ %bmy.18, %if.end1267 ], !dbg !1843
  %bmx.7 = phi i32 [ %bmx.94, %cleanup3553 ], [ %bmx.4, %if.end264 ], [ %bmx.18, %if.end1267 ], !dbg !1843
  %i_me_range.0 = phi i32 [ %i_me_range.1, %cleanup3553 ], [ %4, %if.end264 ], [ %4, %if.end1267 ], !dbg !2104
    #dbg_value(i32 %i_me_range.0, !1402, !DIExpression(), !1843)
    #dbg_value(i32 %bmx.7, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.7, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.13, !1405, !DIExpression(), !1843)
    #dbg_label(!1477, !2105)
  %idx.ext411 = sext i32 %bmx.7 to i64, !dbg !2106
  %add.ptr412 = getelementptr inbounds i8, ptr %6, i64 %idx.ext411, !dbg !2106
  %mul413 = mul nsw i32 %bmy.7, %3, !dbg !2106
  %idx.ext414 = sext i32 %mul413 to i64, !dbg !2106
  %add.ptr415 = getelementptr inbounds i8, ptr %add.ptr412, i64 %idx.ext414, !dbg !2106
    #dbg_value(ptr %add.ptr415, !1479, !DIExpression(), !2107)
  %fpelcmp_x3 = getelementptr inbounds i8, ptr %h, i64 31984, !dbg !2106
  %arrayidx418 = getelementptr inbounds [7 x ptr], ptr %fpelcmp_x3, i64 0, i64 %idxprom, !dbg !2106
  %133 = load ptr, ptr %arrayidx418, align 8, !dbg !2106
  %add.ptr419 = getelementptr inbounds i8, ptr %add.ptr415, i64 -2, !dbg !2106
  %add.ptr423 = getelementptr inbounds i8, ptr %add.ptr415, i64 -1, !dbg !2106
  %mul424 = shl nsw i32 %3, 1, !dbg !2106
  %idx.ext425 = sext i32 %mul424 to i64, !dbg !2106
  %add.ptr426 = getelementptr inbounds i8, ptr %add.ptr423, i64 %idx.ext425, !dbg !2106
  %add.ptr427 = getelementptr inbounds i8, ptr %add.ptr415, i64 1, !dbg !2106
  %add.ptr430 = getelementptr inbounds i8, ptr %add.ptr427, i64 %idx.ext425, !dbg !2106
  call void %133(ptr noundef %5, ptr noundef nonnull %add.ptr419, ptr noundef nonnull %add.ptr426, ptr noundef nonnull %add.ptr430, i32 noundef %3, ptr noundef nonnull %costs) #6, !dbg !2106
  %add432 = shl i32 %bmx.7, 2, !dbg !2106
  %shl433 = add i32 %add432, -8, !dbg !2106
  %idxprom434 = sext i32 %shl433 to i64, !dbg !2106
  %arrayidx435 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom434, !dbg !2106
  %134 = load i16, ptr %arrayidx435, align 2, !dbg !2106
  %conv436 = zext i16 %134 to i32, !dbg !2106
  %shl438 = shl i32 %bmy.7, 2, !dbg !2106
  %idxprom439 = sext i32 %shl438 to i64, !dbg !2106
  %arrayidx440 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom439, !dbg !2106
  %135 = load i16, ptr %arrayidx440, align 2, !dbg !2106
  %conv441 = zext i16 %135 to i32, !dbg !2106
  %add442 = add nuw nsw i32 %conv441, %conv436, !dbg !2106
  %136 = load i32, ptr %costs, align 16, !dbg !2106
  %add444 = add nsw i32 %add442, %136, !dbg !2106
  store i32 %add444, ptr %costs, align 16, !dbg !2106, !DIAssignID !2108
    #dbg_assign(i32 %add444, !1416, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2108, ptr %costs, !DIExpression(), !1843)
  %shl446 = add i32 %add432, -4, !dbg !2106
  %idxprom447 = sext i32 %shl446 to i64, !dbg !2106
  %arrayidx448 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom447, !dbg !2106
  %137 = load i16, ptr %arrayidx448, align 2, !dbg !2106
  %conv449 = zext i16 %137 to i32, !dbg !2106
  %shl451 = add i32 %shl438, 8, !dbg !2106
  %idxprom452 = sext i32 %shl451 to i64, !dbg !2106
  %arrayidx453 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom452, !dbg !2106
  %138 = load i16, ptr %arrayidx453, align 2, !dbg !2106
  %conv454 = zext i16 %138 to i32, !dbg !2106
  %add455 = add nuw nsw i32 %conv454, %conv449, !dbg !2106
  %arrayidx456 = getelementptr inbounds i8, ptr %costs, i64 4, !dbg !2106
  %139 = load i32, ptr %arrayidx456, align 4, !dbg !2106
  %add457 = add nsw i32 %add455, %139, !dbg !2106
  store i32 %add457, ptr %arrayidx456, align 4, !dbg !2106, !DIAssignID !2109
    #dbg_assign(i32 %add457, !1416, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2109, ptr %arrayidx456, !DIExpression(), !1843)
  %shl459 = add i32 %add432, 4, !dbg !2106
  %idxprom460 = sext i32 %shl459 to i64, !dbg !2106
  %arrayidx461 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom460, !dbg !2106
  %140 = load i16, ptr %arrayidx461, align 2, !dbg !2106
  %conv462 = zext i16 %140 to i32, !dbg !2106
  %141 = load i16, ptr %arrayidx453, align 2, !dbg !2106
  %conv467 = zext i16 %141 to i32, !dbg !2106
  %add468 = add nuw nsw i32 %conv467, %conv462, !dbg !2106
  %arrayidx469 = getelementptr inbounds i8, ptr %costs, i64 8, !dbg !2106
  %142 = load i32, ptr %arrayidx469, align 8, !dbg !2106
  %add470 = add nsw i32 %add468, %142, !dbg !2106
  store i32 %add470, ptr %arrayidx469, align 8, !dbg !2106, !DIAssignID !2110
    #dbg_assign(i32 %add470, !1416, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2110, ptr %arrayidx469, !DIExpression(), !1843)
    #dbg_value(ptr %add.ptr415, !1481, !DIExpression(), !2111)
  %143 = load ptr, ptr %arrayidx418, align 8, !dbg !2112
  %add.ptr481 = getelementptr inbounds i8, ptr %add.ptr415, i64 2, !dbg !2112
  %mul486 = mul nsw i32 %3, -2, !dbg !2112
  %idx.ext487 = sext i32 %mul486 to i64, !dbg !2112
  %add.ptr488 = getelementptr inbounds i8, ptr %add.ptr427, i64 %idx.ext487, !dbg !2112
  %add.ptr492 = getelementptr inbounds i8, ptr %add.ptr423, i64 %idx.ext487, !dbg !2112
  %add.ptr494 = getelementptr inbounds i8, ptr %costs, i64 12, !dbg !2112
  call void %143(ptr noundef %5, ptr noundef nonnull %add.ptr481, ptr noundef nonnull %add.ptr488, ptr noundef nonnull %add.ptr492, i32 noundef %3, ptr noundef nonnull %add.ptr494) #6, !dbg !2112
  %shl496 = add i32 %add432, 8, !dbg !2112
  %idxprom497 = sext i32 %shl496 to i64, !dbg !2112
  %arrayidx498 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom497, !dbg !2112
  %144 = load i16, ptr %arrayidx498, align 2, !dbg !2112
  %conv499 = zext i16 %144 to i32, !dbg !2112
  %145 = load i16, ptr %arrayidx440, align 2, !dbg !2112
  %conv504 = zext i16 %145 to i32, !dbg !2112
  %add505 = add nuw nsw i32 %conv504, %conv499, !dbg !2112
  %146 = load i32, ptr %add.ptr494, align 4, !dbg !2112
  %add509 = add nsw i32 %add505, %146, !dbg !2112
  store i32 %add509, ptr %add.ptr494, align 4, !dbg !2112, !DIAssignID !2113
    #dbg_assign(i32 %add509, !1416, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !2113, ptr %add.ptr494, !DIExpression(), !1843)
  %147 = load i16, ptr %arrayidx461, align 2, !dbg !2112
  %conv514 = zext i16 %147 to i32, !dbg !2112
  %shl516 = add i32 %shl438, -8, !dbg !2112
  %idxprom517 = sext i32 %shl516 to i64, !dbg !2112
  %arrayidx518 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom517, !dbg !2112
  %148 = load i16, ptr %arrayidx518, align 2, !dbg !2112
  %conv519 = zext i16 %148 to i32, !dbg !2112
  %add520 = add nuw nsw i32 %conv519, %conv514, !dbg !2112
  %arrayidx523 = getelementptr inbounds i8, ptr %costs, i64 16, !dbg !2112
  %149 = load i32, ptr %arrayidx523, align 16, !dbg !2112
  %add524 = add nsw i32 %add520, %149, !dbg !2112
  store i32 %add524, ptr %arrayidx523, align 16, !dbg !2112, !DIAssignID !2114
    #dbg_assign(i32 %add524, !1416, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !2114, ptr %arrayidx523, !DIExpression(), !1843)
  %150 = load i16, ptr %arrayidx448, align 2, !dbg !2112
  %conv529 = zext i16 %150 to i32, !dbg !2112
  %151 = load i16, ptr %arrayidx518, align 2, !dbg !2112
  %conv534 = zext i16 %151 to i32, !dbg !2112
  %add535 = add nuw nsw i32 %conv534, %conv529, !dbg !2112
  %arrayidx538 = getelementptr inbounds i8, ptr %costs, i64 20, !dbg !2112
  %152 = load i32, ptr %arrayidx538, align 4, !dbg !2112
  %add539 = add nsw i32 %add535, %152, !dbg !2112
  store i32 %add539, ptr %arrayidx538, align 4, !dbg !2112, !DIAssignID !2115
    #dbg_assign(i32 %add539, !1416, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !2115, ptr %arrayidx538, !DIExpression(), !1843)
  %shl540 = shl i32 %bcost.13, 3, !dbg !2116
    #dbg_value(i32 %shl540, !1405, !DIExpression(), !1843)
  %153 = load i32, ptr %costs, align 16, !dbg !2117
  %shl542 = shl i32 %153, 3, !dbg !2117
  %add543 = or disjoint i32 %shl542, 2, !dbg !2117
  %spec.select6172 = call i32 @llvm.smin.i32(i32 %add543, i32 %shl540), !dbg !2119
    #dbg_value(i32 %spec.select6172, !1405, !DIExpression(), !1843)
  %154 = load i32, ptr %arrayidx456, align 4, !dbg !2120
  %shl552 = shl i32 %154, 3, !dbg !2120
  %add553 = or disjoint i32 %shl552, 3, !dbg !2120
  %bcost.15 = call i32 @llvm.smin.i32(i32 %add553, i32 %spec.select6172), !dbg !2122
    #dbg_value(i32 %bcost.15, !1405, !DIExpression(), !1843)
  %155 = load i32, ptr %arrayidx469, align 8, !dbg !2123
  %shl562 = shl i32 %155, 3, !dbg !2123
  %add563 = or disjoint i32 %shl562, 4, !dbg !2123
  %bcost.16 = call i32 @llvm.smin.i32(i32 %add563, i32 %bcost.15), !dbg !2125
    #dbg_value(i32 %bcost.16, !1405, !DIExpression(), !1843)
  %shl572 = shl i32 %add509, 3, !dbg !2126
  %add573 = or disjoint i32 %shl572, 5, !dbg !2126
  %bcost.17 = call i32 @llvm.smin.i32(i32 %add573, i32 %bcost.16), !dbg !2128
    #dbg_value(i32 %bcost.17, !1405, !DIExpression(), !1843)
  %shl582 = shl i32 %add524, 3, !dbg !2129
  %add583 = or disjoint i32 %shl582, 6, !dbg !2129
  %bcost.18 = call i32 @llvm.smin.i32(i32 %add583, i32 %bcost.17), !dbg !2131
    #dbg_value(i32 %bcost.18, !1405, !DIExpression(), !1843)
  %shl592 = shl i32 %add539, 3, !dbg !2132
  %add593 = or disjoint i32 %shl592, 7, !dbg !2132
  %bcost.19 = call i32 @llvm.smin.i32(i32 %add593, i32 %bcost.18), !dbg !2134
    #dbg_value(i32 %bcost.19, !1405, !DIExpression(), !1843)
  %and601 = and i32 %bcost.19, 7, !dbg !2135
  %tobool602.not = icmp eq i32 %and601, 0, !dbg !2135
  br i1 %tobool602.not, label %if.end822, label %if.then603, !dbg !2136

if.then603:                                       ; preds = %me_hex2
    #dbg_value(i32 %and601, !1483, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !2137)
  %add606 = add nsw i32 %and601, -1, !dbg !2138
  %idxprom607 = zext nneg i32 %add606 to i64, !dbg !2139
  %arrayidx608 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %idxprom607, !dbg !2139
  %156 = load i8, ptr %arrayidx608, align 2, !dbg !2139
  %conv610 = sext i8 %156 to i32, !dbg !2139
  %add611 = add nsw i32 %bmx.7, %conv610, !dbg !2140
    #dbg_value(i32 %add611, !1403, !DIExpression(), !1843)
  %arrayidx615 = getelementptr inbounds i8, ptr %arrayidx608, i64 1, !dbg !2141
  %157 = load i8, ptr %arrayidx615, align 1, !dbg !2141
  %conv616 = sext i8 %157 to i32, !dbg !2141
  %add617 = add nsw i32 %bmy.7, %conv616, !dbg !2142
    #dbg_value(i32 %add617, !1404, !DIExpression(), !1843)
  %shr619 = ashr i32 %i_me_range.0, 1, !dbg !2143
    #dbg_value(i32 %shr619, !1486, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2144)
  %cmp6226409 = icmp sgt i32 %shr619, 1, !dbg !2145
  br i1 %cmp6226409, label %land.rhs624.preheader, label %if.end822, !dbg !2146

land.rhs624.preheader:                            ; preds = %if.then603
  %sub605 = add nsw i32 %and601, -2, !dbg !2147
    #dbg_value(i32 %sub605, !1483, !DIExpression(), !2137)
  br label %land.rhs624, !dbg !2148

land.rhs624:                                      ; preds = %land.rhs624.preheader, %if.end799
  %158 = phi i8 [ %176, %if.end799 ], [ %157, %land.rhs624.preheader ]
  %159 = phi i8 [ %175, %if.end799 ], [ %156, %land.rhs624.preheader ]
  %i618.06414.in = phi i32 [ %i618.06414, %if.end799 ], [ %shr619, %land.rhs624.preheader ]
  %bmx.86413 = phi i32 [ %add812, %if.end799 ], [ %add611, %land.rhs624.preheader ]
  %bmy.86412 = phi i32 [ %add818, %if.end799 ], [ %add617, %land.rhs624.preheader ]
  %bcost.206411 = phi i32 [ %bcost.23, %if.end799 ], [ %bcost.19, %land.rhs624.preheader ]
  %dir.06410 = phi i32 [ %conv806, %if.end799 ], [ %sub605, %land.rhs624.preheader ]
  %i618.06414 = add nsw i32 %i618.06414.in, -1, !dbg !2149
    #dbg_value(i32 %bmx.86413, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.86412, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.206411, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %dir.06410, !1483, !DIExpression(), !2137)
  %shl625 = shl i32 %bmx.86413, 16, !dbg !2150
  %and626 = and i32 %bmy.86412, 32767, !dbg !2150
  %or627 = or disjoint i32 %shl625, %and626, !dbg !2150
  %add628 = add i32 %or627, %or, !dbg !2150
  %sub632 = sub i32 %or29, %or627, !dbg !2150
  %or633 = or i32 %add628, %sub632, !dbg !2150
  %and634 = and i32 %or633, -2147467264, !dbg !2150
  %tobool635.not = icmp eq i32 %and634, 0, !dbg !2150
  br i1 %tobool635.not, label %for.body639, label %if.end822, !dbg !2148

for.body639:                                      ; preds = %land.rhs624
  %idx.ext641 = sext i32 %bmx.86413 to i64, !dbg !2151
  %add.ptr642 = getelementptr inbounds i8, ptr %6, i64 %idx.ext641, !dbg !2151
  %mul643 = mul nsw i32 %bmy.86412, %3, !dbg !2151
  %idx.ext644 = sext i32 %mul643 to i64, !dbg !2151
  %add.ptr645 = getelementptr inbounds i8, ptr %add.ptr642, i64 %idx.ext644, !dbg !2151
    #dbg_value(ptr %add.ptr645, !1488, !DIExpression(), !2152)
  %160 = load ptr, ptr %arrayidx418, align 8, !dbg !2151
  %idxprom651 = sext i32 %dir.06410 to i64, !dbg !2151
  %arrayidx652 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %idxprom651, !dbg !2151
  %161 = load i8, ptr %arrayidx652, align 2, !dbg !2151
  %idx.ext655 = sext i8 %161 to i64, !dbg !2151
  %add.ptr656 = getelementptr inbounds i8, ptr %add.ptr645, i64 %idx.ext655, !dbg !2151
  %arrayidx660 = getelementptr inbounds i8, ptr %arrayidx652, i64 1, !dbg !2151
  %162 = load i8, ptr %arrayidx660, align 1, !dbg !2151
  %conv661 = sext i8 %162 to i32, !dbg !2151
  %mul662 = mul nsw i32 %3, %conv661, !dbg !2151
  %idx.ext663 = sext i32 %mul662 to i64, !dbg !2151
  %add.ptr664 = getelementptr inbounds i8, ptr %add.ptr656, i64 %idx.ext663, !dbg !2151
  %idx.ext670 = sext i8 %159 to i64, !dbg !2151
  %add.ptr671 = getelementptr inbounds i8, ptr %add.ptr645, i64 %idx.ext670, !dbg !2151
  %conv676 = sext i8 %158 to i32, !dbg !2151
  %mul677 = mul nsw i32 %3, %conv676, !dbg !2151
  %idx.ext678 = sext i32 %mul677 to i64, !dbg !2151
  %add.ptr679 = getelementptr inbounds i8, ptr %add.ptr671, i64 %idx.ext678, !dbg !2151
  %add680 = add nsw i32 %dir.06410, 2, !dbg !2151
  %idxprom681 = zext nneg i32 %add680 to i64, !dbg !2151
  %arrayidx682 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %idxprom681, !dbg !2151
  %163 = load i8, ptr %arrayidx682, align 2, !dbg !2151
  %idx.ext685 = sext i8 %163 to i64, !dbg !2151
  %add.ptr686 = getelementptr inbounds i8, ptr %add.ptr645, i64 %idx.ext685, !dbg !2151
  %arrayidx690 = getelementptr inbounds i8, ptr %arrayidx682, i64 1, !dbg !2151
  %164 = load i8, ptr %arrayidx690, align 1, !dbg !2151
  %conv691 = sext i8 %164 to i32, !dbg !2151
  %mul692 = mul nsw i32 %3, %conv691, !dbg !2151
  %idx.ext693 = sext i32 %mul692 to i64, !dbg !2151
  %add.ptr694 = getelementptr inbounds i8, ptr %add.ptr686, i64 %idx.ext693, !dbg !2151
  call void %160(ptr noundef %5, ptr noundef %add.ptr664, ptr noundef %add.ptr679, ptr noundef %add.ptr694, i32 noundef %3, ptr noundef nonnull %costs) #6, !dbg !2151
  %conv700 = sext i8 %161 to i32, !dbg !2151
  %add701 = add nsw i32 %bmx.86413, %conv700, !dbg !2151
  %shl702 = shl i32 %add701, 2, !dbg !2151
  %idxprom703 = sext i32 %shl702 to i64, !dbg !2151
  %arrayidx704 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom703, !dbg !2151
  %165 = load i16, ptr %arrayidx704, align 2, !dbg !2151
  %conv705 = zext i16 %165 to i32, !dbg !2151
  %add711 = add nsw i32 %bmy.86412, %conv661, !dbg !2151
  %shl712 = shl i32 %add711, 2, !dbg !2151
  %idxprom713 = sext i32 %shl712 to i64, !dbg !2151
  %arrayidx714 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom713, !dbg !2151
  %166 = load i16, ptr %arrayidx714, align 2, !dbg !2151
  %conv715 = zext i16 %166 to i32, !dbg !2151
  %add716 = add nuw nsw i32 %conv715, %conv705, !dbg !2151
  %167 = load i32, ptr %costs, align 16, !dbg !2151
  %add718 = add nsw i32 %add716, %167, !dbg !2151
  store i32 %add718, ptr %costs, align 16, !dbg !2151, !DIAssignID !2153
    #dbg_assign(i32 %add718, !1416, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2153, ptr %costs, !DIExpression(), !1843)
  %conv723 = sext i8 %159 to i32, !dbg !2151
  %add724 = add nsw i32 %bmx.86413, %conv723, !dbg !2151
  %shl725 = shl i32 %add724, 2, !dbg !2151
  %idxprom726 = sext i32 %shl725 to i64, !dbg !2151
  %arrayidx727 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom726, !dbg !2151
  %168 = load i16, ptr %arrayidx727, align 2, !dbg !2151
  %conv728 = zext i16 %168 to i32, !dbg !2151
  %add734 = add nsw i32 %bmy.86412, %conv676, !dbg !2151
  %shl735 = shl i32 %add734, 2, !dbg !2151
  %idxprom736 = sext i32 %shl735 to i64, !dbg !2151
  %arrayidx737 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom736, !dbg !2151
  %169 = load i16, ptr %arrayidx737, align 2, !dbg !2151
  %conv738 = zext i16 %169 to i32, !dbg !2151
  %add739 = add nuw nsw i32 %conv738, %conv728, !dbg !2151
  %170 = load i32, ptr %arrayidx456, align 4, !dbg !2151
  %add741 = add nsw i32 %add739, %170, !dbg !2151
  store i32 %add741, ptr %arrayidx456, align 4, !dbg !2151, !DIAssignID !2154
    #dbg_assign(i32 %add741, !1416, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2154, ptr %arrayidx456, !DIExpression(), !1843)
  %conv746 = sext i8 %163 to i32, !dbg !2151
  %add747 = add nsw i32 %bmx.86413, %conv746, !dbg !2151
  %shl748 = shl i32 %add747, 2, !dbg !2151
  %idxprom749 = sext i32 %shl748 to i64, !dbg !2151
  %arrayidx750 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom749, !dbg !2151
  %171 = load i16, ptr %arrayidx750, align 2, !dbg !2151
  %conv751 = zext i16 %171 to i32, !dbg !2151
  %add757 = add nsw i32 %bmy.86412, %conv691, !dbg !2151
  %shl758 = shl i32 %add757, 2, !dbg !2151
  %idxprom759 = sext i32 %shl758 to i64, !dbg !2151
  %arrayidx760 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom759, !dbg !2151
  %172 = load i16, ptr %arrayidx760, align 2, !dbg !2151
  %conv761 = zext i16 %172 to i32, !dbg !2151
  %add762 = add nuw nsw i32 %conv761, %conv751, !dbg !2151
  %173 = load i32, ptr %arrayidx469, align 8, !dbg !2151
  %add764 = add nsw i32 %add762, %173, !dbg !2151
  store i32 %add764, ptr %arrayidx469, align 8, !dbg !2151, !DIAssignID !2155
    #dbg_assign(i32 %add764, !1416, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2155, ptr %arrayidx469, !DIExpression(), !1843)
  %and765 = and i32 %bcost.206411, -8, !dbg !2156
    #dbg_value(i32 %and765, !1405, !DIExpression(), !1843)
  %shl767 = shl i32 %add718, 3, !dbg !2157
  %add768 = or disjoint i32 %shl767, 1, !dbg !2157
  %spec.select6173 = call i32 @llvm.smin.i32(i32 %add768, i32 %and765), !dbg !2159
    #dbg_value(i32 %spec.select6173, !1405, !DIExpression(), !1843)
  %shl777 = shl i32 %add741, 3, !dbg !2160
  %add778 = or disjoint i32 %shl777, 2, !dbg !2160
  %bcost.22 = call i32 @llvm.smin.i32(i32 %add778, i32 %spec.select6173), !dbg !2162
    #dbg_value(i32 %bcost.22, !1405, !DIExpression(), !1843)
  %shl787 = shl i32 %add764, 3, !dbg !2163
  %add788 = or disjoint i32 %shl787, 3, !dbg !2163
  %bcost.23 = call i32 @llvm.smin.i32(i32 %add788, i32 %bcost.22), !dbg !2165
    #dbg_value(i32 %bcost.23, !1405, !DIExpression(), !1843)
  %and796 = and i32 %bcost.23, 3, !dbg !2166
  %tobool797.not = icmp eq i32 %and796, 0, !dbg !2166
  br i1 %tobool797.not, label %if.end822, label %if.end799, !dbg !2168

if.end799:                                        ; preds = %for.body639
    #dbg_value(i32 poison, !1483, !DIExpression(), !2137)
  %add802 = add nsw i32 %dir.06410, -1, !dbg !2169
  %add803 = add nsw i32 %add802, %and796, !dbg !2170
  %idxprom804 = sext i32 %add803 to i64, !dbg !2171
  %arrayidx805 = getelementptr inbounds [8 x i8], ptr @mod6m1, i64 0, i64 %idxprom804, !dbg !2171
  %174 = load i8, ptr %arrayidx805, align 1, !dbg !2171
  %conv806 = zext i8 %174 to i32, !dbg !2171
    #dbg_value(i32 %conv806, !1483, !DIExpression(), !2137)
  %add807 = add nuw nsw i32 %conv806, 1, !dbg !2172
  %idxprom808 = zext nneg i32 %add807 to i64, !dbg !2173
  %arrayidx809 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %idxprom808, !dbg !2173
  %175 = load i8, ptr %arrayidx809, align 2, !dbg !2173
  %conv811 = sext i8 %175 to i32, !dbg !2173
  %add812 = add nsw i32 %bmx.86413, %conv811, !dbg !2174
    #dbg_value(i32 %add812, !1403, !DIExpression(), !1843)
  %arrayidx816 = getelementptr inbounds i8, ptr %arrayidx809, i64 1, !dbg !2175
  %176 = load i8, ptr %arrayidx816, align 1, !dbg !2175
  %conv817 = sext i8 %176 to i32, !dbg !2175
  %add818 = add nsw i32 %bmy.86412, %conv817, !dbg !2176
    #dbg_value(i32 %add818, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.23, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %i618.06414, !1486, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2144)
  %cmp622 = icmp ugt i32 %i618.06414.in, 2, !dbg !2145
  br i1 %cmp622, label %land.rhs624, label %if.end822, !dbg !2146, !llvm.loop !2177

if.end822:                                        ; preds = %for.body639, %land.rhs624, %if.end799, %if.then603, %me_hex2
  %bcost.25 = phi i32 [ %bcost.19, %me_hex2 ], [ %bcost.19, %if.then603 ], [ %bcost.23, %for.body639 ], [ %bcost.206411, %land.rhs624 ], [ %bcost.23, %if.end799 ], !dbg !2179
  %bmy.9 = phi i32 [ %bmy.7, %me_hex2 ], [ %add617, %if.then603 ], [ %bmy.86412, %for.body639 ], [ %bmy.86412, %land.rhs624 ], [ %add818, %if.end799 ], !dbg !2180
  %bmx.9 = phi i32 [ %bmx.7, %me_hex2 ], [ %add611, %if.then603 ], [ %bmx.86413, %for.body639 ], [ %bmx.86413, %land.rhs624 ], [ %add812, %if.end799 ], !dbg !2180
    #dbg_value(i32 %bmx.9, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.9, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.25, !1405, !DIExpression(), !1843)
  %shr823 = ashr i32 %bcost.25, 3, !dbg !2181
    #dbg_value(i32 %shr823, !1405, !DIExpression(), !1843)
    #dbg_value(i32 0, !1492, !DIExpression(), !2179)
  %idx.ext826 = sext i32 %bmx.9 to i64, !dbg !2182
  %add.ptr827 = getelementptr inbounds i8, ptr %6, i64 %idx.ext826, !dbg !2182
  %mul828 = mul nsw i32 %bmy.9, %3, !dbg !2182
  %idx.ext829 = sext i32 %mul828 to i64, !dbg !2182
  %add.ptr830 = getelementptr inbounds i8, ptr %add.ptr827, i64 %idx.ext829, !dbg !2182
    #dbg_value(ptr %add.ptr830, !1493, !DIExpression(), !2183)
  %fpelcmp_x4832 = getelementptr inbounds i8, ptr %h, i64 32040, !dbg !2182
  %arrayidx834 = getelementptr inbounds [7 x ptr], ptr %fpelcmp_x4832, i64 0, i64 %idxprom, !dbg !2182
  %177 = load ptr, ptr %arrayidx834, align 8, !dbg !2182
  %mul836 = sub nsw i32 0, %3, !dbg !2182
  %idx.ext837 = sext i32 %mul836 to i64, !dbg !2182
  %add.ptr838 = getelementptr inbounds i8, ptr %add.ptr830, i64 %idx.ext837, !dbg !2182
  %idx.ext841 = sext i32 %3 to i64, !dbg !2182
  %add.ptr842 = getelementptr inbounds i8, ptr %add.ptr830, i64 %idx.ext841, !dbg !2182
  %add.ptr843 = getelementptr inbounds i8, ptr %add.ptr830, i64 -1, !dbg !2182
  %add.ptr847 = getelementptr inbounds i8, ptr %add.ptr830, i64 1, !dbg !2182
  call void %177(ptr noundef %5, ptr noundef %add.ptr838, ptr noundef %add.ptr842, ptr noundef nonnull %add.ptr843, ptr noundef nonnull %add.ptr847, i32 noundef %3, ptr noundef nonnull %costs) #6, !dbg !2182
  %shl853 = shl i32 %bmx.9, 2, !dbg !2182
  %idxprom854 = sext i32 %shl853 to i64, !dbg !2182
  %arrayidx855 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom854, !dbg !2182
  %178 = load i16, ptr %arrayidx855, align 2, !dbg !2182
  %conv856 = zext i16 %178 to i32, !dbg !2182
  %add857 = shl i32 %bmy.9, 2, !dbg !2182
  %shl858 = add i32 %add857, -4, !dbg !2182
  %idxprom859 = sext i32 %shl858 to i64, !dbg !2182
  %arrayidx860 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom859, !dbg !2182
  %179 = load i16, ptr %arrayidx860, align 2, !dbg !2182
  %conv861 = zext i16 %179 to i32, !dbg !2182
  %add862 = add nuw nsw i32 %conv861, %conv856, !dbg !2182
  %180 = load i32, ptr %costs, align 16, !dbg !2182
  %add864 = add nsw i32 %add862, %180, !dbg !2182
  store i32 %add864, ptr %costs, align 16, !dbg !2182, !DIAssignID !2184
    #dbg_assign(i32 %add864, !1416, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2184, ptr %costs, !DIExpression(), !1843)
  %181 = load i16, ptr %arrayidx855, align 2, !dbg !2182
  %conv869 = zext i16 %181 to i32, !dbg !2182
  %shl871 = add i32 %add857, 4, !dbg !2182
  %idxprom872 = sext i32 %shl871 to i64, !dbg !2182
  %arrayidx873 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom872, !dbg !2182
  %182 = load i16, ptr %arrayidx873, align 2, !dbg !2182
  %conv874 = zext i16 %182 to i32, !dbg !2182
  %add875 = add nuw nsw i32 %conv874, %conv869, !dbg !2182
  %183 = load i32, ptr %arrayidx456, align 4, !dbg !2182
  %add877 = add nsw i32 %add875, %183, !dbg !2182
  store i32 %add877, ptr %arrayidx456, align 4, !dbg !2182, !DIAssignID !2185
    #dbg_assign(i32 %add877, !1416, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2185, ptr %arrayidx456, !DIExpression(), !1843)
  %shl879 = add i32 %shl853, -4, !dbg !2182
  %idxprom880 = sext i32 %shl879 to i64, !dbg !2182
  %arrayidx881 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom880, !dbg !2182
  %184 = load i16, ptr %arrayidx881, align 2, !dbg !2182
  %conv882 = zext i16 %184 to i32, !dbg !2182
  %idxprom885 = sext i32 %add857 to i64, !dbg !2182
  %arrayidx886 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom885, !dbg !2182
  %185 = load i16, ptr %arrayidx886, align 2, !dbg !2182
  %conv887 = zext i16 %185 to i32, !dbg !2182
  %add888 = add nuw nsw i32 %conv887, %conv882, !dbg !2182
  %186 = load i32, ptr %arrayidx469, align 8, !dbg !2182
  %add890 = add nsw i32 %add888, %186, !dbg !2182
  store i32 %add890, ptr %arrayidx469, align 8, !dbg !2182, !DIAssignID !2186
    #dbg_assign(i32 %add890, !1416, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2186, ptr %arrayidx469, !DIExpression(), !1843)
  %shl892 = add i32 %shl853, 4, !dbg !2182
  %idxprom893 = sext i32 %shl892 to i64, !dbg !2182
  %arrayidx894 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom893, !dbg !2182
  %187 = load i16, ptr %arrayidx894, align 2, !dbg !2182
  %conv895 = zext i16 %187 to i32, !dbg !2182
  %188 = load i16, ptr %arrayidx886, align 2, !dbg !2182
  %conv900 = zext i16 %188 to i32, !dbg !2182
  %add901 = add nuw nsw i32 %conv900, %conv895, !dbg !2182
  %189 = load i32, ptr %add.ptr494, align 4, !dbg !2182
  %add903 = add nsw i32 %add901, %189, !dbg !2182
  store i32 %add903, ptr %add.ptr494, align 4, !dbg !2182, !DIAssignID !2187
    #dbg_assign(i32 %add903, !1416, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !2187, ptr %add.ptr494, !DIExpression(), !1843)
  %cmp905 = icmp slt i32 %add864, %shr823, !dbg !2188
  %spec.select6174 = zext i1 %cmp905 to i64, !dbg !2190
  %spec.select6175 = call i32 @llvm.smin.i32(i32 %add864, i32 %shr823), !dbg !2190
    #dbg_value(i32 %spec.select6175, !1405, !DIExpression(), !1843)
    #dbg_value(i32 poison, !1492, !DIExpression(), !2179)
  %cmp911 = icmp slt i32 %add877, %spec.select6175, !dbg !2191
  %dir824.1 = select i1 %cmp911, i64 2, i64 %spec.select6174, !dbg !2193
  %bcost.27 = call i32 @llvm.smin.i32(i32 %add877, i32 %spec.select6175), !dbg !2193
    #dbg_value(i32 %bcost.27, !1405, !DIExpression(), !1843)
  %cmp917 = icmp slt i32 %add890, %bcost.27, !dbg !2194
  %dir824.2 = select i1 %cmp917, i64 3, i64 %dir824.1, !dbg !2196
  %bcost.28 = call i32 @llvm.smin.i32(i32 %add890, i32 %bcost.27), !dbg !2196
    #dbg_value(i32 %bcost.28, !1405, !DIExpression(), !1843)
  %cmp923 = icmp slt i32 %add903, %bcost.28, !dbg !2197
  %dir824.3 = select i1 %cmp923, i64 4, i64 %dir824.2, !dbg !2199
  %bcost.29 = call i32 @llvm.smin.i32(i32 %add903, i32 %bcost.28), !dbg !2199
    #dbg_value(i32 %bcost.29, !1405, !DIExpression(), !1843)
    #dbg_value(ptr %add.ptr830, !1495, !DIExpression(), !2200)
  %190 = load ptr, ptr %arrayidx834, align 8, !dbg !2201
  %add.ptr941 = getelementptr inbounds i8, ptr %add.ptr843, i64 %idx.ext837, !dbg !2201
  %add.ptr945 = getelementptr inbounds i8, ptr %add.ptr843, i64 %idx.ext841, !dbg !2201
  %add.ptr949 = getelementptr inbounds i8, ptr %add.ptr847, i64 %idx.ext837, !dbg !2201
  %add.ptr953 = getelementptr inbounds i8, ptr %add.ptr847, i64 %idx.ext841, !dbg !2201
  call void %190(ptr noundef %5, ptr noundef nonnull %add.ptr941, ptr noundef nonnull %add.ptr945, ptr noundef nonnull %add.ptr949, ptr noundef nonnull %add.ptr953, i32 noundef %3, ptr noundef nonnull %costs) #6, !dbg !2201
  %191 = load i16, ptr %arrayidx881, align 2, !dbg !2201
  %conv959 = zext i16 %191 to i32, !dbg !2201
  %192 = load i16, ptr %arrayidx860, align 2, !dbg !2201
  %conv964 = zext i16 %192 to i32, !dbg !2201
  %add965 = add nuw nsw i32 %conv964, %conv959, !dbg !2201
  %193 = load i32, ptr %costs, align 16, !dbg !2201
  %add967 = add nsw i32 %add965, %193, !dbg !2201
  store i32 %add967, ptr %costs, align 16, !dbg !2201, !DIAssignID !2202
    #dbg_assign(i32 %add967, !1416, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2202, ptr %costs, !DIExpression(), !1843)
  %194 = load i16, ptr %arrayidx881, align 2, !dbg !2201
  %conv972 = zext i16 %194 to i32, !dbg !2201
  %195 = load i16, ptr %arrayidx873, align 2, !dbg !2201
  %conv977 = zext i16 %195 to i32, !dbg !2201
  %add978 = add nuw nsw i32 %conv977, %conv972, !dbg !2201
  %196 = load i32, ptr %arrayidx456, align 4, !dbg !2201
  %add980 = add nsw i32 %add978, %196, !dbg !2201
  store i32 %add980, ptr %arrayidx456, align 4, !dbg !2201, !DIAssignID !2203
    #dbg_assign(i32 %add980, !1416, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2203, ptr %arrayidx456, !DIExpression(), !1843)
  %197 = load i16, ptr %arrayidx894, align 2, !dbg !2201
  %conv985 = zext i16 %197 to i32, !dbg !2201
  %198 = load i16, ptr %arrayidx860, align 2, !dbg !2201
  %conv990 = zext i16 %198 to i32, !dbg !2201
  %add991 = add nuw nsw i32 %conv990, %conv985, !dbg !2201
  %199 = load i32, ptr %arrayidx469, align 8, !dbg !2201
  %add993 = add nsw i32 %add991, %199, !dbg !2201
  store i32 %add993, ptr %arrayidx469, align 8, !dbg !2201, !DIAssignID !2204
    #dbg_assign(i32 %add993, !1416, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2204, ptr %arrayidx469, !DIExpression(), !1843)
  %200 = load i16, ptr %arrayidx894, align 2, !dbg !2201
  %conv998 = zext i16 %200 to i32, !dbg !2201
  %201 = load i16, ptr %arrayidx873, align 2, !dbg !2201
  %conv1003 = zext i16 %201 to i32, !dbg !2201
  %add1004 = add nuw nsw i32 %conv1003, %conv998, !dbg !2201
  %202 = load i32, ptr %add.ptr494, align 4, !dbg !2201
  %add1006 = add nsw i32 %add1004, %202, !dbg !2201
  store i32 %add1006, ptr %add.ptr494, align 4, !dbg !2201, !DIAssignID !2205
    #dbg_assign(i32 %add1006, !1416, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !2205, ptr %add.ptr494, !DIExpression(), !1843)
  %cmp1008 = icmp slt i32 %add967, %bcost.29, !dbg !2206
  %dir824.4 = select i1 %cmp1008, i64 5, i64 %dir824.3, !dbg !2208
  %bcost.30 = call i32 @llvm.smin.i32(i32 %add967, i32 %bcost.29), !dbg !2208
    #dbg_value(i32 %bcost.30, !1405, !DIExpression(), !1843)
  %cmp1014 = icmp slt i32 %add980, %bcost.30, !dbg !2209
  %dir824.5 = select i1 %cmp1014, i64 6, i64 %dir824.4, !dbg !2211
  %bcost.31 = call i32 @llvm.smin.i32(i32 %add980, i32 %bcost.30), !dbg !2211
    #dbg_value(i32 %bcost.31, !1405, !DIExpression(), !1843)
  %cmp1020 = icmp slt i32 %add993, %bcost.31, !dbg !2212
  %dir824.6 = select i1 %cmp1020, i64 7, i64 %dir824.5, !dbg !2214
  %bcost.32 = call i32 @llvm.smin.i32(i32 %add993, i32 %bcost.31), !dbg !2214
    #dbg_value(i32 %bcost.32, !1405, !DIExpression(), !1843)
  %cmp1026 = icmp slt i32 %add1006, %bcost.32, !dbg !2215
  %dir824.7 = select i1 %cmp1026, i64 8, i64 %dir824.6, !dbg !2217
  %bcost.33 = call i32 @llvm.smin.i32(i32 %add1006, i32 %bcost.32), !dbg !2217
    #dbg_value(i32 %bcost.33, !1405, !DIExpression(), !1843)
  %arrayidx1032 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %dir824.7, !dbg !2218
  %203 = load i8, ptr %arrayidx1032, align 2, !dbg !2218
  %conv1034 = sext i8 %203 to i32, !dbg !2218
  %add1035 = add nsw i32 %bmx.9, %conv1034, !dbg !2219
    #dbg_value(i32 %add1035, !1403, !DIExpression(), !1843)
  %arrayidx1038 = getelementptr inbounds i8, ptr %arrayidx1032, i64 1, !dbg !2220
  %204 = load i8, ptr %arrayidx1038, align 1, !dbg !2220
  %conv1039 = sext i8 %204 to i32, !dbg !2220
  %add1040 = add nsw i32 %bmy.9, %conv1039, !dbg !2221
    #dbg_value(i32 %add1040, !1404, !DIExpression(), !1843)
  br label %sw.epilog, !dbg !2222

sw.bb1041:                                        ; preds = %if.end264
    #dbg_value(i32 1, !1500, !DIExpression(), !2223)
    #dbg_value(i32 %bcost.6, !1497, !DIExpression(), !2223)
    #dbg_value(i32 %shr, !1409, !DIExpression(), !1843)
    #dbg_value(i32 %shr46, !1410, !DIExpression(), !1843)
  %idx.ext1043 = sext i32 %shr to i64, !dbg !2224
  %add.ptr1044 = getelementptr inbounds i8, ptr %6, i64 %idx.ext1043, !dbg !2224
  %mul1045 = mul nsw i32 %shr46, %3, !dbg !2224
  %idx.ext1046 = sext i32 %mul1045 to i64, !dbg !2224
  %add.ptr1047 = getelementptr inbounds i8, ptr %add.ptr1044, i64 %idx.ext1046, !dbg !2224
    #dbg_value(ptr %add.ptr1047, !1501, !DIExpression(), !2225)
  %fpelcmp_x41049 = getelementptr inbounds i8, ptr %h, i64 32040, !dbg !2224
  %arrayidx1051 = getelementptr inbounds [7 x ptr], ptr %fpelcmp_x41049, i64 0, i64 %idxprom, !dbg !2224
  %205 = load ptr, ptr %arrayidx1051, align 8, !dbg !2224
  %mul1053 = sub nsw i32 0, %3, !dbg !2224
  %idx.ext1054 = sext i32 %mul1053 to i64, !dbg !2224
  %add.ptr1055 = getelementptr inbounds i8, ptr %add.ptr1047, i64 %idx.ext1054, !dbg !2224
  %idx.ext1058 = sext i32 %3 to i64, !dbg !2224
  %add.ptr1059 = getelementptr inbounds i8, ptr %add.ptr1047, i64 %idx.ext1058, !dbg !2224
  %add.ptr1060 = getelementptr inbounds i8, ptr %add.ptr1047, i64 -1, !dbg !2224
  %add.ptr1064 = getelementptr inbounds i8, ptr %add.ptr1047, i64 1, !dbg !2224
  call void %205(ptr noundef %5, ptr noundef %add.ptr1055, ptr noundef %add.ptr1059, ptr noundef nonnull %add.ptr1060, ptr noundef nonnull %add.ptr1064, i32 noundef %3, ptr noundef nonnull %costs) #6, !dbg !2224
  %shl1070 = and i32 %add, -4, !dbg !2224
  %idxprom1071 = sext i32 %shl1070 to i64, !dbg !2224
  %arrayidx1072 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1071, !dbg !2224
  %206 = load i16, ptr %arrayidx1072, align 2, !dbg !2224
  %conv1073 = zext i16 %206 to i32, !dbg !2224
  %add1074 = add nsw i32 %shr46, -1, !dbg !2224
  %shl1075 = shl i32 %add1074, 2, !dbg !2224
  %idxprom1076 = sext i32 %shl1075 to i64, !dbg !2224
  %arrayidx1077 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1076, !dbg !2224
  %207 = load i16, ptr %arrayidx1077, align 2, !dbg !2224
  %conv1078 = zext i16 %207 to i32, !dbg !2224
  %add1079 = add nuw nsw i32 %conv1078, %conv1073, !dbg !2224
  %208 = load i32, ptr %costs, align 16, !dbg !2224
  %add1081 = add nsw i32 %add1079, %208, !dbg !2224
  store i32 %add1081, ptr %costs, align 16, !dbg !2224, !DIAssignID !2226
    #dbg_assign(i32 %add1081, !1416, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2226, ptr %costs, !DIExpression(), !1843)
  %209 = load i16, ptr %arrayidx1072, align 2, !dbg !2224
  %conv1086 = zext i16 %209 to i32, !dbg !2224
  %add1087 = add nsw i32 %shr46, 1, !dbg !2224
  %shl1088 = shl i32 %add1087, 2, !dbg !2224
  %idxprom1089 = sext i32 %shl1088 to i64, !dbg !2224
  %arrayidx1090 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1089, !dbg !2224
  %210 = load i16, ptr %arrayidx1090, align 2, !dbg !2224
  %conv1091 = zext i16 %210 to i32, !dbg !2224
  %add1092 = add nuw nsw i32 %conv1091, %conv1086, !dbg !2224
  %arrayidx1093 = getelementptr inbounds i8, ptr %costs, i64 4, !dbg !2224
  %211 = load i32, ptr %arrayidx1093, align 4, !dbg !2224
  %add1094 = add nsw i32 %add1092, %211, !dbg !2224
  store i32 %add1094, ptr %arrayidx1093, align 4, !dbg !2224, !DIAssignID !2227
    #dbg_assign(i32 %add1094, !1416, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2227, ptr %arrayidx1093, !DIExpression(), !1843)
  %add1095 = add nsw i32 %shr, -1, !dbg !2224
  %shl1096 = shl i32 %add1095, 2, !dbg !2224
  %idxprom1097 = sext i32 %shl1096 to i64, !dbg !2224
  %arrayidx1098 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1097, !dbg !2224
  %212 = load i16, ptr %arrayidx1098, align 2, !dbg !2224
  %conv1099 = zext i16 %212 to i32, !dbg !2224
  %shl1101 = and i32 %add45, -4, !dbg !2224
  %idxprom1102 = sext i32 %shl1101 to i64, !dbg !2224
  %arrayidx1103 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1102, !dbg !2224
  %213 = load i16, ptr %arrayidx1103, align 2, !dbg !2224
  %conv1104 = zext i16 %213 to i32, !dbg !2224
  %add1105 = add nuw nsw i32 %conv1104, %conv1099, !dbg !2224
  %arrayidx1106 = getelementptr inbounds i8, ptr %costs, i64 8, !dbg !2224
  %214 = load i32, ptr %arrayidx1106, align 8, !dbg !2224
  %add1107 = add nsw i32 %add1105, %214, !dbg !2224
  store i32 %add1107, ptr %arrayidx1106, align 8, !dbg !2224, !DIAssignID !2228
    #dbg_assign(i32 %add1107, !1416, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2228, ptr %arrayidx1106, !DIExpression(), !1843)
  %add1108 = add nsw i32 %shr, 1, !dbg !2224
  %shl1109 = shl i32 %add1108, 2, !dbg !2224
  %idxprom1110 = sext i32 %shl1109 to i64, !dbg !2224
  %arrayidx1111 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1110, !dbg !2224
  %215 = load i16, ptr %arrayidx1111, align 2, !dbg !2224
  %conv1112 = zext i16 %215 to i32, !dbg !2224
  %216 = load i16, ptr %arrayidx1103, align 2, !dbg !2224
  %conv1117 = zext i16 %216 to i32, !dbg !2224
  %add1118 = add nuw nsw i32 %conv1117, %conv1112, !dbg !2224
  %arrayidx1119 = getelementptr inbounds i8, ptr %costs, i64 12, !dbg !2224
  %217 = load i32, ptr %arrayidx1119, align 4, !dbg !2224
  %add1120 = add nsw i32 %add1118, %217, !dbg !2224
  store i32 %add1120, ptr %arrayidx1119, align 4, !dbg !2224, !DIAssignID !2229
    #dbg_assign(i32 %add1120, !1416, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !2229, ptr %arrayidx1119, !DIExpression(), !1843)
  %cmp1122 = icmp slt i32 %add1081, %bcost.6, !dbg !2230
  %bcost.34 = call i32 @llvm.smin.i32(i32 %add1081, i32 %bcost.6), !dbg !2224
  %bmy.10 = select i1 %cmp1122, i32 %add1074, i32 %bmy.4, !dbg !2224
    #dbg_value(i32 poison, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.10, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.34, !1405, !DIExpression(), !1843)
  %cmp1130 = icmp slt i32 %add1094, %bcost.34, !dbg !2232
  %bcost.35 = call i32 @llvm.smin.i32(i32 %add1094, i32 %bcost.34), !dbg !2224
  %bmy.11 = select i1 %cmp1130, i32 %add1087, i32 %bmy.10, !dbg !2224
  %218 = or i1 %cmp1122, %cmp1130, !dbg !2224
  %bmx.11 = select i1 %218, i32 %shr, i32 %bmx.4, !dbg !2224
    #dbg_value(i32 %bmx.11, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.11, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.35, !1405, !DIExpression(), !1843)
  %cmp1138 = icmp slt i32 %add1107, %bcost.35, !dbg !2234
  %bcost.36 = call i32 @llvm.smin.i32(i32 %add1107, i32 %bcost.35), !dbg !2224
  %bmx.12 = select i1 %cmp1138, i32 %add1095, i32 %bmx.11, !dbg !2224
    #dbg_value(i32 %bmx.12, !1403, !DIExpression(), !1843)
    #dbg_value(i32 poison, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.36, !1405, !DIExpression(), !1843)
  %cmp1146 = icmp slt i32 %add1120, %bcost.36, !dbg !2236
  %bcost.37 = call i32 @llvm.smin.i32(i32 %add1120, i32 %bcost.36), !dbg !2224
  %219 = or i1 %cmp1138, %cmp1146, !dbg !2224
  %bmy.13 = select i1 %219, i32 %shr46, i32 %bmy.11, !dbg !2224
  %bmx.13 = select i1 %cmp1146, i32 %add1108, i32 %bmx.12, !dbg !2224
    #dbg_value(i32 %bmx.13, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.13, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.37, !1405, !DIExpression(), !1843)
  %or1153 = or i32 %shr46, %shr, !dbg !2238
  %tobool1154.not = icmp eq i32 %or1153, 0, !dbg !2238
  br i1 %tobool1154.not, label %if.end1267, label %if.then1155, !dbg !2239

if.then1155:                                      ; preds = %sw.bb1041
    #dbg_value(i32 0, !1409, !DIExpression(), !1843)
    #dbg_value(i32 0, !1410, !DIExpression(), !1843)
    #dbg_value(ptr %6, !1504, !DIExpression(), !2240)
  %220 = load ptr, ptr %arrayidx1051, align 8, !dbg !2241
  %add.ptr1169 = getelementptr inbounds i8, ptr %6, i64 %idx.ext1054, !dbg !2241
  %add.ptr1173 = getelementptr inbounds i8, ptr %6, i64 %idx.ext1058, !dbg !2241
  %add.ptr1174 = getelementptr inbounds i8, ptr %6, i64 -1, !dbg !2241
  %add.ptr1178 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !2241
  call void %220(ptr noundef %5, ptr noundef %add.ptr1169, ptr noundef %add.ptr1173, ptr noundef nonnull %add.ptr1174, ptr noundef nonnull %add.ptr1178, i32 noundef %3, ptr noundef nonnull %costs) #6, !dbg !2241
  %221 = load i16, ptr %add.ptr, align 2, !dbg !2241
  %conv1187 = zext i16 %221 to i32, !dbg !2241
  %arrayidx1191 = getelementptr inbounds i8, ptr %add.ptr37, i64 -8, !dbg !2241
  %222 = load i16, ptr %arrayidx1191, align 2, !dbg !2241
  %conv1192 = zext i16 %222 to i32, !dbg !2241
  %add1193 = add nuw nsw i32 %conv1192, %conv1187, !dbg !2241
  %223 = load i32, ptr %costs, align 16, !dbg !2241
  %add1195 = add nsw i32 %add1193, %223, !dbg !2241
  store i32 %add1195, ptr %costs, align 16, !dbg !2241, !DIAssignID !2242
    #dbg_assign(i32 %add1195, !1416, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2242, ptr %costs, !DIExpression(), !1843)
  %224 = load i16, ptr %add.ptr, align 2, !dbg !2241
  %conv1200 = zext i16 %224 to i32, !dbg !2241
  %arrayidx1204 = getelementptr inbounds i8, ptr %add.ptr37, i64 8, !dbg !2241
  %225 = load i16, ptr %arrayidx1204, align 2, !dbg !2241
  %conv1205 = zext i16 %225 to i32, !dbg !2241
  %add1206 = add nuw nsw i32 %conv1205, %conv1200, !dbg !2241
  %226 = load i32, ptr %arrayidx1093, align 4, !dbg !2241
  %add1208 = add nsw i32 %add1206, %226, !dbg !2241
  store i32 %add1208, ptr %arrayidx1093, align 4, !dbg !2241, !DIAssignID !2243
    #dbg_assign(i32 %add1208, !1416, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2243, ptr %arrayidx1093, !DIExpression(), !1843)
  %arrayidx1212 = getelementptr inbounds i8, ptr %add.ptr, i64 -8, !dbg !2241
  %227 = load i16, ptr %arrayidx1212, align 2, !dbg !2241
  %conv1213 = zext i16 %227 to i32, !dbg !2241
  %228 = load i16, ptr %add.ptr37, align 2, !dbg !2241
  %conv1218 = zext i16 %228 to i32, !dbg !2241
  %add1219 = add nuw nsw i32 %conv1218, %conv1213, !dbg !2241
  %229 = load i32, ptr %arrayidx1106, align 8, !dbg !2241
  %add1221 = add nsw i32 %add1219, %229, !dbg !2241
  store i32 %add1221, ptr %arrayidx1106, align 8, !dbg !2241, !DIAssignID !2244
    #dbg_assign(i32 %add1221, !1416, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2244, ptr %arrayidx1106, !DIExpression(), !1843)
  %arrayidx1225 = getelementptr inbounds i8, ptr %add.ptr, i64 8, !dbg !2241
  %230 = load i16, ptr %arrayidx1225, align 2, !dbg !2241
  %conv1226 = zext i16 %230 to i32, !dbg !2241
  %231 = load i16, ptr %add.ptr37, align 2, !dbg !2241
  %conv1231 = zext i16 %231 to i32, !dbg !2241
  %add1232 = add nuw nsw i32 %conv1231, %conv1226, !dbg !2241
  %232 = load i32, ptr %arrayidx1119, align 4, !dbg !2241
  %add1234 = add nsw i32 %add1232, %232, !dbg !2241
  store i32 %add1234, ptr %arrayidx1119, align 4, !dbg !2241, !DIAssignID !2245
    #dbg_assign(i32 %add1234, !1416, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !2245, ptr %arrayidx1119, !DIExpression(), !1843)
  %cmp1236 = icmp slt i32 %add1195, %bcost.37, !dbg !2246
  %bcost.38 = call i32 @llvm.smin.i32(i32 %add1195, i32 %bcost.37), !dbg !2241
  %bmy.14 = select i1 %cmp1236, i32 -1, i32 %bmy.13, !dbg !2241
    #dbg_value(i32 poison, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.14, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.38, !1405, !DIExpression(), !1843)
  %cmp1244 = icmp slt i32 %add1208, %bcost.38, !dbg !2248
  %bcost.39 = call i32 @llvm.smin.i32(i32 %add1208, i32 %bcost.38), !dbg !2241
  %bmy.15 = select i1 %cmp1244, i32 1, i32 %bmy.14, !dbg !2241
  %233 = or i1 %cmp1236, %cmp1244, !dbg !2241
  %bmx.15 = select i1 %233, i32 0, i32 %bmx.13, !dbg !2241
    #dbg_value(i32 %bmx.15, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.15, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.39, !1405, !DIExpression(), !1843)
  %cmp1252 = icmp slt i32 %add1221, %bcost.39, !dbg !2250
  %bcost.40 = call i32 @llvm.smin.i32(i32 %add1221, i32 %bcost.39), !dbg !2241
  %bmx.16 = select i1 %cmp1252, i32 -1, i32 %bmx.15, !dbg !2241
    #dbg_value(i32 %bmx.16, !1403, !DIExpression(), !1843)
    #dbg_value(i32 poison, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.40, !1405, !DIExpression(), !1843)
  %cmp1260 = icmp slt i32 %add1234, %bcost.40, !dbg !2252
  %bcost.41 = call i32 @llvm.smin.i32(i32 %add1234, i32 %bcost.40), !dbg !2241
  %234 = or i1 %cmp1252, %cmp1260, !dbg !2241
  %bmy.17 = select i1 %234, i32 0, i32 %bmy.15, !dbg !2241
  %bmx.17 = select i1 %cmp1260, i32 1, i32 %bmx.16, !dbg !2241
    #dbg_value(i32 %bmx.17, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.17, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.41, !1405, !DIExpression(), !1843)
  br label %if.end1267, !dbg !2254

if.end1267:                                       ; preds = %if.then1155, %sw.bb1041
  %bcost.42 = phi i32 [ %bcost.41, %if.then1155 ], [ %bcost.37, %sw.bb1041 ], !dbg !2223
  %bmy.18 = phi i32 [ %bmy.17, %if.then1155 ], [ %bmy.13, %sw.bb1041 ], !dbg !2223
  %bmx.18 = phi i32 [ %bmx.17, %if.then1155 ], [ %bmx.13, %sw.bb1041 ], !dbg !2223
    #dbg_value(i32 %bmx.18, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.18, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.42, !1405, !DIExpression(), !1843)
  %cmp1268 = icmp eq i32 %0, 6, !dbg !2255
  br i1 %cmp1268, label %me_hex2, label %if.end1271, !dbg !2257

if.end1271:                                       ; preds = %if.end1267
    #dbg_value(i32 %bcost.42, !1499, !DIExpression(), !2223)
  %or1272 = or i32 %bmx.18, %bmy.18, !dbg !2258
  %tobool1273.not = icmp eq i32 %or1272, 0, !dbg !2258
  br i1 %tobool1273.not, label %land.lhs.true1398, label %land.lhs.true1274, !dbg !2259

land.lhs.true1274:                                ; preds = %if.end1271
  %235 = icmp eq i32 %bmx.18, %shr, !dbg !2260
  %236 = icmp eq i32 %bmy.18, %shr46, !dbg !2260
  %tobool1278.not = and i1 %236, %235, !dbg !2260
  br i1 %tobool1278.not, label %land.lhs.true1398, label %if.end1391, !dbg !2261

if.end1391:                                       ; preds = %land.lhs.true1274
    #dbg_value(i32 %bmx.18, !1409, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.18, !1410, !DIExpression(), !1843)
  %idx.ext1281 = sext i32 %bmx.18 to i64, !dbg !2262
  %add.ptr1282 = getelementptr inbounds i8, ptr %6, i64 %idx.ext1281, !dbg !2262
  %mul1283 = mul nsw i32 %bmy.18, %3, !dbg !2262
  %idx.ext1284 = sext i32 %mul1283 to i64, !dbg !2262
  %add.ptr1285 = getelementptr inbounds i8, ptr %add.ptr1282, i64 %idx.ext1284, !dbg !2262
    #dbg_value(ptr %add.ptr1285, !1508, !DIExpression(), !2263)
  %237 = load ptr, ptr %arrayidx1051, align 8, !dbg !2262
  %add.ptr1293 = getelementptr inbounds i8, ptr %add.ptr1285, i64 %idx.ext1054, !dbg !2262
  %add.ptr1297 = getelementptr inbounds i8, ptr %add.ptr1285, i64 %idx.ext1058, !dbg !2262
  %add.ptr1298 = getelementptr inbounds i8, ptr %add.ptr1285, i64 -1, !dbg !2262
  %add.ptr1302 = getelementptr inbounds i8, ptr %add.ptr1285, i64 1, !dbg !2262
  call void %237(ptr noundef %5, ptr noundef %add.ptr1293, ptr noundef %add.ptr1297, ptr noundef nonnull %add.ptr1298, ptr noundef nonnull %add.ptr1302, i32 noundef %3, ptr noundef nonnull %costs) #6, !dbg !2262
  %shl1308 = shl i32 %bmx.18, 2, !dbg !2262
  %idxprom1309 = sext i32 %shl1308 to i64, !dbg !2262
  %arrayidx1310 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1309, !dbg !2262
  %238 = load i16, ptr %arrayidx1310, align 2, !dbg !2262
  %conv1311 = zext i16 %238 to i32, !dbg !2262
  %add1312 = add nsw i32 %bmy.18, -1, !dbg !2262
  %shl1313 = shl i32 %add1312, 2, !dbg !2262
  %idxprom1314 = sext i32 %shl1313 to i64, !dbg !2262
  %arrayidx1315 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1314, !dbg !2262
  %239 = load i16, ptr %arrayidx1315, align 2, !dbg !2262
  %conv1316 = zext i16 %239 to i32, !dbg !2262
  %add1317 = add nuw nsw i32 %conv1316, %conv1311, !dbg !2262
  %240 = load i32, ptr %costs, align 16, !dbg !2262
  %add1319 = add nsw i32 %add1317, %240, !dbg !2262
  store i32 %add1319, ptr %costs, align 16, !dbg !2262, !DIAssignID !2264
    #dbg_assign(i32 %add1319, !1416, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2264, ptr %costs, !DIExpression(), !1843)
  %241 = load i16, ptr %arrayidx1310, align 2, !dbg !2262
  %conv1324 = zext i16 %241 to i32, !dbg !2262
  %add1325 = add nsw i32 %bmy.18, 1, !dbg !2262
  %shl1326 = shl i32 %add1325, 2, !dbg !2262
  %idxprom1327 = sext i32 %shl1326 to i64, !dbg !2262
  %arrayidx1328 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1327, !dbg !2262
  %242 = load i16, ptr %arrayidx1328, align 2, !dbg !2262
  %conv1329 = zext i16 %242 to i32, !dbg !2262
  %add1330 = add nuw nsw i32 %conv1329, %conv1324, !dbg !2262
  %243 = load i32, ptr %arrayidx1093, align 4, !dbg !2262
  %add1332 = add nsw i32 %add1330, %243, !dbg !2262
  store i32 %add1332, ptr %arrayidx1093, align 4, !dbg !2262, !DIAssignID !2265
    #dbg_assign(i32 %add1332, !1416, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2265, ptr %arrayidx1093, !DIExpression(), !1843)
  %add1333 = add nsw i32 %bmx.18, -1, !dbg !2262
  %shl1334 = shl i32 %add1333, 2, !dbg !2262
  %idxprom1335 = sext i32 %shl1334 to i64, !dbg !2262
  %arrayidx1336 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1335, !dbg !2262
  %244 = load i16, ptr %arrayidx1336, align 2, !dbg !2262
  %conv1337 = zext i16 %244 to i32, !dbg !2262
  %shl1339 = shl i32 %bmy.18, 2, !dbg !2262
  %idxprom1340 = sext i32 %shl1339 to i64, !dbg !2262
  %arrayidx1341 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1340, !dbg !2262
  %245 = load i16, ptr %arrayidx1341, align 2, !dbg !2262
  %conv1342 = zext i16 %245 to i32, !dbg !2262
  %add1343 = add nuw nsw i32 %conv1342, %conv1337, !dbg !2262
  %246 = load i32, ptr %arrayidx1106, align 8, !dbg !2262
  %add1345 = add nsw i32 %add1343, %246, !dbg !2262
  store i32 %add1345, ptr %arrayidx1106, align 8, !dbg !2262, !DIAssignID !2266
    #dbg_assign(i32 %add1345, !1416, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2266, ptr %arrayidx1106, !DIExpression(), !1843)
  %add1346 = add nsw i32 %bmx.18, 1, !dbg !2262
  %shl1347 = shl i32 %add1346, 2, !dbg !2262
  %idxprom1348 = sext i32 %shl1347 to i64, !dbg !2262
  %arrayidx1349 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1348, !dbg !2262
  %247 = load i16, ptr %arrayidx1349, align 2, !dbg !2262
  %conv1350 = zext i16 %247 to i32, !dbg !2262
  %248 = load i16, ptr %arrayidx1341, align 2, !dbg !2262
  %conv1355 = zext i16 %248 to i32, !dbg !2262
  %add1356 = add nuw nsw i32 %conv1355, %conv1350, !dbg !2262
  %249 = load i32, ptr %arrayidx1119, align 4, !dbg !2262
  %add1358 = add nsw i32 %add1356, %249, !dbg !2262
  store i32 %add1358, ptr %arrayidx1119, align 4, !dbg !2262, !DIAssignID !2267
    #dbg_assign(i32 %add1358, !1416, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !2267, ptr %arrayidx1119, !DIExpression(), !1843)
  %cmp1360 = icmp slt i32 %add1319, %bcost.42, !dbg !2268
  %spec.select6176 = call i32 @llvm.smin.i32(i32 %add1319, i32 %bcost.42), !dbg !2262
  %spec.select6177 = select i1 %cmp1360, i32 %add1312, i32 %bmy.18, !dbg !2262
    #dbg_value(i32 %bmx.18, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %spec.select6177, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %spec.select6176, !1405, !DIExpression(), !1843)
  %cmp1368 = icmp slt i32 %add1332, %spec.select6176, !dbg !2270
  %bcost.44 = call i32 @llvm.smin.i32(i32 %add1332, i32 %spec.select6176), !dbg !2262
  %bmy.20 = select i1 %cmp1368, i32 %add1325, i32 %spec.select6177, !dbg !2262
    #dbg_value(i32 %bmy.20, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.44, !1405, !DIExpression(), !1843)
  %cmp1376 = icmp slt i32 %add1345, %bcost.44, !dbg !2272
  %bcost.45 = call i32 @llvm.smin.i32(i32 %add1345, i32 %bcost.44), !dbg !2262
  %bmx.21 = select i1 %cmp1376, i32 %add1333, i32 %bmx.18, !dbg !2262
    #dbg_value(i32 %bmx.21, !1403, !DIExpression(), !1843)
    #dbg_value(i32 poison, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.45, !1405, !DIExpression(), !1843)
  %cmp1384 = icmp slt i32 %add1358, %bcost.45, !dbg !2274
  %bcost.46 = call i32 @llvm.smin.i32(i32 %add1358, i32 %bcost.45), !dbg !2262
  %250 = or i1 %cmp1376, %cmp1384, !dbg !2262
  %bmy.22 = select i1 %250, i32 %bmy.18, i32 %bmy.20, !dbg !2262
  %bmx.22 = select i1 %cmp1384, i32 %add1346, i32 %bmx.21, !dbg !2262
    #dbg_value(i32 %bmx.22, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.22, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.46, !1405, !DIExpression(), !1843)
  %cmp1392 = icmp eq i32 %bcost.46, %bcost.42, !dbg !2276
    #dbg_value(i32 poison, !1500, !DIExpression(), !2223)
    #dbg_value(i32 %bmx.22, !1409, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.22, !1410, !DIExpression(), !1843)
  br i1 %cmp1392, label %land.lhs.true1398, label %if.end2306, !dbg !2278

land.lhs.true1398:                                ; preds = %if.end1271, %land.lhs.true1274, %if.end1391
  %bmx.236220 = phi i32 [ %bmx.22, %if.end1391 ], [ %shr, %land.lhs.true1274 ], [ %bmx.18, %if.end1271 ]
  %bmy.236218 = phi i32 [ %bmy.22, %if.end1391 ], [ %shr46, %land.lhs.true1274 ], [ %bmy.18, %if.end1271 ]
  %arrayidx1400 = getelementptr inbounds [7 x i8], ptr @x264_me_search_ref.x264_pixel_size_shift, i64 0, i64 %idxprom, !dbg !2279
  %251 = load i8, ptr %arrayidx1400, align 1, !dbg !2279
  %conv1401 = zext nneg i8 %251 to i32, !dbg !2279
  %shr1402 = lshr i32 2000, %conv1401, !dbg !2279
  %cmp1403 = icmp slt i32 %bcost.42, %shr1402, !dbg !2279
  br i1 %cmp1403, label %if.then1405, label %if.end2306, !dbg !2280

if.then1405:                                      ; preds = %land.lhs.true1398
  %idx.ext1407 = sext i32 %bmx.236220 to i64, !dbg !2281
  %add.ptr1408 = getelementptr inbounds i8, ptr %6, i64 %idx.ext1407, !dbg !2281
  %mul1409 = mul nsw i32 %bmy.236218, %3, !dbg !2281
  %idx.ext1410 = sext i32 %mul1409 to i64, !dbg !2281
  %add.ptr1411 = getelementptr inbounds i8, ptr %add.ptr1408, i64 %idx.ext1410, !dbg !2281
    #dbg_value(ptr %add.ptr1411, !1512, !DIExpression(), !2282)
  %252 = load ptr, ptr %arrayidx1051, align 8, !dbg !2281
  %mul1417 = mul nsw i32 %3, -2, !dbg !2281
  %idx.ext1418 = sext i32 %mul1417 to i64, !dbg !2281
  %add.ptr1419 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %idx.ext1418, !dbg !2281
  %add.ptr1420 = getelementptr inbounds i8, ptr %add.ptr1411, i64 -1, !dbg !2281
  %add.ptr1423 = getelementptr inbounds i8, ptr %add.ptr1420, i64 %idx.ext1054, !dbg !2281
  %add.ptr1424 = getelementptr inbounds i8, ptr %add.ptr1411, i64 1, !dbg !2281
  %add.ptr1427 = getelementptr inbounds i8, ptr %add.ptr1424, i64 %idx.ext1054, !dbg !2281
  %add.ptr1428 = getelementptr inbounds i8, ptr %add.ptr1411, i64 -2, !dbg !2281
  call void %252(ptr noundef %5, ptr noundef %add.ptr1419, ptr noundef nonnull %add.ptr1423, ptr noundef nonnull %add.ptr1427, ptr noundef nonnull %add.ptr1428, i32 noundef %3, ptr noundef nonnull %costs) #6, !dbg !2281
  %shl1434 = shl i32 %bmx.236220, 2, !dbg !2281
  %idxprom1435 = sext i32 %shl1434 to i64, !dbg !2281
  %arrayidx1436 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1435, !dbg !2281
  %253 = load i16, ptr %arrayidx1436, align 2, !dbg !2281
  %conv1437 = zext i16 %253 to i32, !dbg !2281
  %add1438 = add nsw i32 %bmy.236218, -2, !dbg !2281
  %shl1439 = shl i32 %add1438, 2, !dbg !2281
  %idxprom1440 = sext i32 %shl1439 to i64, !dbg !2281
  %arrayidx1441 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1440, !dbg !2281
  %254 = load i16, ptr %arrayidx1441, align 2, !dbg !2281
  %conv1442 = zext i16 %254 to i32, !dbg !2281
  %add1443 = add nuw nsw i32 %conv1442, %conv1437, !dbg !2281
  %255 = load i32, ptr %costs, align 16, !dbg !2281
  %add1445 = add nsw i32 %add1443, %255, !dbg !2281
  store i32 %add1445, ptr %costs, align 16, !dbg !2281, !DIAssignID !2283
    #dbg_assign(i32 %add1445, !1416, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2283, ptr %costs, !DIExpression(), !1843)
  %add1446 = add nsw i32 %bmx.236220, -1, !dbg !2281
  %shl1447 = shl i32 %add1446, 2, !dbg !2281
  %idxprom1448 = sext i32 %shl1447 to i64, !dbg !2281
  %arrayidx1449 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1448, !dbg !2281
  %256 = load i16, ptr %arrayidx1449, align 2, !dbg !2281
  %conv1450 = zext i16 %256 to i32, !dbg !2281
  %add1451 = add nsw i32 %bmy.236218, -1, !dbg !2281
  %shl1452 = shl i32 %add1451, 2, !dbg !2281
  %idxprom1453 = sext i32 %shl1452 to i64, !dbg !2281
  %arrayidx1454 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1453, !dbg !2281
  %257 = load i16, ptr %arrayidx1454, align 2, !dbg !2281
  %conv1455 = zext i16 %257 to i32, !dbg !2281
  %add1456 = add nuw nsw i32 %conv1455, %conv1450, !dbg !2281
  %258 = load i32, ptr %arrayidx1093, align 4, !dbg !2281
  %add1458 = add nsw i32 %add1456, %258, !dbg !2281
  store i32 %add1458, ptr %arrayidx1093, align 4, !dbg !2281, !DIAssignID !2284
    #dbg_assign(i32 %add1458, !1416, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2284, ptr %arrayidx1093, !DIExpression(), !1843)
  %add1459 = add nsw i32 %bmx.236220, 1, !dbg !2281
  %shl1460 = shl i32 %add1459, 2, !dbg !2281
  %idxprom1461 = sext i32 %shl1460 to i64, !dbg !2281
  %arrayidx1462 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1461, !dbg !2281
  %259 = load i16, ptr %arrayidx1462, align 2, !dbg !2281
  %conv1463 = zext i16 %259 to i32, !dbg !2281
  %260 = load i16, ptr %arrayidx1454, align 2, !dbg !2281
  %conv1468 = zext i16 %260 to i32, !dbg !2281
  %add1469 = add nuw nsw i32 %conv1468, %conv1463, !dbg !2281
  %261 = load i32, ptr %arrayidx1106, align 8, !dbg !2281
  %add1471 = add nsw i32 %add1469, %261, !dbg !2281
  store i32 %add1471, ptr %arrayidx1106, align 8, !dbg !2281, !DIAssignID !2285
    #dbg_assign(i32 %add1471, !1416, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2285, ptr %arrayidx1106, !DIExpression(), !1843)
  %add1472 = add nsw i32 %bmx.236220, -2, !dbg !2281
  %shl1473 = shl i32 %add1472, 2, !dbg !2281
  %idxprom1474 = sext i32 %shl1473 to i64, !dbg !2281
  %arrayidx1475 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1474, !dbg !2281
  %262 = load i16, ptr %arrayidx1475, align 2, !dbg !2281
  %conv1476 = zext i16 %262 to i32, !dbg !2281
  %shl1478 = shl i32 %bmy.236218, 2, !dbg !2281
  %idxprom1479 = sext i32 %shl1478 to i64, !dbg !2281
  %arrayidx1480 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1479, !dbg !2281
  %263 = load i16, ptr %arrayidx1480, align 2, !dbg !2281
  %conv1481 = zext i16 %263 to i32, !dbg !2281
  %add1482 = add nuw nsw i32 %conv1481, %conv1476, !dbg !2281
  %264 = load i32, ptr %arrayidx1119, align 4, !dbg !2281
  %add1484 = add nsw i32 %add1482, %264, !dbg !2281
  store i32 %add1484, ptr %arrayidx1119, align 4, !dbg !2281, !DIAssignID !2286
    #dbg_assign(i32 %add1484, !1416, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !2286, ptr %arrayidx1119, !DIExpression(), !1843)
  %cmp1486 = icmp slt i32 %add1445, %bcost.42, !dbg !2287
  %spec.select6179 = call i32 @llvm.smin.i32(i32 %add1445, i32 %bcost.42), !dbg !2281
  %spec.select6180 = select i1 %cmp1486, i32 %add1438, i32 %bmy.236218, !dbg !2281
    #dbg_value(i32 %bmx.236220, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %spec.select6180, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %spec.select6179, !1405, !DIExpression(), !1843)
  %cmp1494 = icmp slt i32 %add1458, %spec.select6179, !dbg !2289
  %bcost.49 = call i32 @llvm.smin.i32(i32 %add1458, i32 %spec.select6179), !dbg !2281
  %bmx.25 = select i1 %cmp1494, i32 %add1446, i32 %bmx.236220, !dbg !2281
    #dbg_value(i32 %bmx.25, !1403, !DIExpression(), !1843)
    #dbg_value(i32 poison, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.49, !1405, !DIExpression(), !1843)
  %cmp1502 = icmp slt i32 %add1471, %bcost.49, !dbg !2291
  %bcost.50 = call i32 @llvm.smin.i32(i32 %add1471, i32 %bcost.49), !dbg !2281
  %265 = or i1 %cmp1494, %cmp1502, !dbg !2281
  %bmy.26 = select i1 %265, i32 %add1451, i32 %spec.select6180, !dbg !2281
  %bmx.26 = select i1 %cmp1502, i32 %add1459, i32 %bmx.25, !dbg !2281
    #dbg_value(i32 %bmx.26, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.26, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.50, !1405, !DIExpression(), !1843)
  %cmp1510 = icmp slt i32 %add1484, %bcost.50, !dbg !2293
  %bcost.51 = call i32 @llvm.smin.i32(i32 %add1484, i32 %bcost.50), !dbg !2281
  %bmx.27 = select i1 %cmp1510, i32 %add1472, i32 %bmx.26, !dbg !2281
    #dbg_value(i32 %bmx.27, !1403, !DIExpression(), !1843)
    #dbg_value(i32 poison, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.51, !1405, !DIExpression(), !1843)
    #dbg_value(ptr %add.ptr1411, !1516, !DIExpression(), !2295)
  %266 = load ptr, ptr %arrayidx1051, align 8, !dbg !2296
  %add.ptr1527 = getelementptr inbounds i8, ptr %add.ptr1411, i64 2, !dbg !2296
  %add.ptr1534 = getelementptr inbounds i8, ptr %add.ptr1420, i64 %idx.ext1058, !dbg !2296
  %add.ptr1538 = getelementptr inbounds i8, ptr %add.ptr1424, i64 %idx.ext1058, !dbg !2296
  %mul1540 = shl nsw i32 %3, 1, !dbg !2296
  %idx.ext1541 = sext i32 %mul1540 to i64, !dbg !2296
  %add.ptr1542 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %idx.ext1541, !dbg !2296
  call void %266(ptr noundef %5, ptr noundef nonnull %add.ptr1527, ptr noundef nonnull %add.ptr1534, ptr noundef nonnull %add.ptr1538, ptr noundef %add.ptr1542, i32 noundef %3, ptr noundef nonnull %costs) #6, !dbg !2296
  %add1544 = add nsw i32 %bmx.236220, 2, !dbg !2296
  %shl1545 = shl i32 %add1544, 2, !dbg !2296
  %idxprom1546 = sext i32 %shl1545 to i64, !dbg !2296
  %arrayidx1547 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1546, !dbg !2296
  %267 = load i16, ptr %arrayidx1547, align 2, !dbg !2296
  %conv1548 = zext i16 %267 to i32, !dbg !2296
  %268 = load i16, ptr %arrayidx1480, align 2, !dbg !2296
  %conv1553 = zext i16 %268 to i32, !dbg !2296
  %add1554 = add nuw nsw i32 %conv1553, %conv1548, !dbg !2296
  %269 = load i32, ptr %costs, align 16, !dbg !2296
  %add1556 = add nsw i32 %add1554, %269, !dbg !2296
  store i32 %add1556, ptr %costs, align 16, !dbg !2296, !DIAssignID !2297
    #dbg_assign(i32 %add1556, !1416, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2297, ptr %costs, !DIExpression(), !1843)
  %270 = load i16, ptr %arrayidx1449, align 2, !dbg !2296
  %conv1561 = zext i16 %270 to i32, !dbg !2296
  %add1562 = add nsw i32 %bmy.236218, 1, !dbg !2296
  %shl1563 = shl i32 %add1562, 2, !dbg !2296
  %idxprom1564 = sext i32 %shl1563 to i64, !dbg !2296
  %arrayidx1565 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1564, !dbg !2296
  %271 = load i16, ptr %arrayidx1565, align 2, !dbg !2296
  %conv1566 = zext i16 %271 to i32, !dbg !2296
  %add1567 = add nuw nsw i32 %conv1566, %conv1561, !dbg !2296
  %272 = load i32, ptr %arrayidx1093, align 4, !dbg !2296
  %add1569 = add nsw i32 %add1567, %272, !dbg !2296
  store i32 %add1569, ptr %arrayidx1093, align 4, !dbg !2296, !DIAssignID !2298
    #dbg_assign(i32 %add1569, !1416, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2298, ptr %arrayidx1093, !DIExpression(), !1843)
  %273 = load i16, ptr %arrayidx1462, align 2, !dbg !2296
  %conv1574 = zext i16 %273 to i32, !dbg !2296
  %274 = load i16, ptr %arrayidx1565, align 2, !dbg !2296
  %conv1579 = zext i16 %274 to i32, !dbg !2296
  %add1580 = add nuw nsw i32 %conv1579, %conv1574, !dbg !2296
  %275 = load i32, ptr %arrayidx1106, align 8, !dbg !2296
  %add1582 = add nsw i32 %add1580, %275, !dbg !2296
  store i32 %add1582, ptr %arrayidx1106, align 8, !dbg !2296, !DIAssignID !2299
    #dbg_assign(i32 %add1582, !1416, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2299, ptr %arrayidx1106, !DIExpression(), !1843)
  %276 = load i16, ptr %arrayidx1436, align 2, !dbg !2296
  %conv1587 = zext i16 %276 to i32, !dbg !2296
  %add1588 = add nsw i32 %bmy.236218, 2, !dbg !2296
  %shl1589 = shl i32 %add1588, 2, !dbg !2296
  %idxprom1590 = sext i32 %shl1589 to i64, !dbg !2296
  %arrayidx1591 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1590, !dbg !2296
  %277 = load i16, ptr %arrayidx1591, align 2, !dbg !2296
  %conv1592 = zext i16 %277 to i32, !dbg !2296
  %add1593 = add nuw nsw i32 %conv1592, %conv1587, !dbg !2296
  %278 = load i32, ptr %arrayidx1119, align 4, !dbg !2296
  %add1595 = add nsw i32 %add1593, %278, !dbg !2296
  store i32 %add1595, ptr %arrayidx1119, align 4, !dbg !2296, !DIAssignID !2300
    #dbg_assign(i32 %add1595, !1416, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !2300, ptr %arrayidx1119, !DIExpression(), !1843)
  %cmp1597 = icmp slt i32 %add1556, %bcost.51, !dbg !2301
  %bcost.52 = call i32 @llvm.smin.i32(i32 %add1556, i32 %bcost.51), !dbg !2296
  %279 = or i1 %cmp1510, %cmp1597, !dbg !2296
  %bmy.28 = select i1 %279, i32 %bmy.236218, i32 %bmy.26, !dbg !2296
  %bmx.28 = select i1 %cmp1597, i32 %add1544, i32 %bmx.27, !dbg !2296
    #dbg_value(i32 %bmx.28, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.28, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.52, !1405, !DIExpression(), !1843)
  %cmp1605 = icmp slt i32 %add1569, %bcost.52, !dbg !2303
  %bcost.53 = call i32 @llvm.smin.i32(i32 %add1569, i32 %bcost.52), !dbg !2296
  %bmx.29 = select i1 %cmp1605, i32 %add1446, i32 %bmx.28, !dbg !2296
    #dbg_value(i32 %bmx.29, !1403, !DIExpression(), !1843)
    #dbg_value(i32 poison, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.53, !1405, !DIExpression(), !1843)
  %cmp1613 = icmp slt i32 %add1582, %bcost.53, !dbg !2305
  %bcost.54 = call i32 @llvm.smin.i32(i32 %add1582, i32 %bcost.53), !dbg !2296
  %280 = or i1 %cmp1605, %cmp1613, !dbg !2296
  %bmy.30 = select i1 %280, i32 %add1562, i32 %bmy.28, !dbg !2296
  %bmx.30 = select i1 %cmp1613, i32 %add1459, i32 %bmx.29, !dbg !2296
    #dbg_value(i32 %bmx.30, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.30, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.54, !1405, !DIExpression(), !1843)
  %cmp1621 = icmp slt i32 %add1595, %bcost.54, !dbg !2307
  %bcost.55 = call i32 @llvm.smin.i32(i32 %add1595, i32 %bcost.54), !dbg !2296
  %bmy.31 = select i1 %cmp1621, i32 %add1588, i32 %bmy.30, !dbg !2296
  %bmx.31 = select i1 %cmp1621, i32 %bmx.236220, i32 %bmx.30, !dbg !2296
    #dbg_value(i32 %bmx.31, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.31, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.55, !1405, !DIExpression(), !1843)
  %cmp1628 = icmp eq i32 %bcost.55, %bcost.6, !dbg !2309
  %shr1634 = lshr i32 500, %conv1401
  %cmp1635 = icmp slt i32 %bcost.55, %shr1634
  %or.cond6239 = select i1 %cmp1628, i1 %cmp1635, i1 false, !dbg !2311
  br i1 %or.cond6239, label %sw.epilog, label %if.end1638, !dbg !2311

if.end1638:                                       ; preds = %if.then1405
  %cmp1639 = icmp eq i32 %bcost.55, %bcost.42, !dbg !2312
  br i1 %cmp1639, label %if.then1641, label %if.end2306, !dbg !2313

if.then1641:                                      ; preds = %if.end1638
  %shr1642 = ashr i32 %4, 1, !dbg !2314
  %or1643 = or i32 %shr1642, 1, !dbg !2315
    #dbg_value(i32 %or1643, !1518, !DIExpression(), !2316)
    #dbg_value(i32 3, !1521, !DIExpression(), !2317)
  %sub1645 = sub nsw i32 %11, %bmx.236220, !dbg !2318
  %sub1646 = sub nsw i32 %bmx.236220, %9, !dbg !2318
  %sub1645.sub1646 = call i32 @llvm.smin.i32(i32 %sub1645, i32 %sub1646), !dbg !2318
  %cmp1651.not = icmp sle i32 %or1643, %sub1645.sub1646, !dbg !2318
    #dbg_value(i32 %bmx.31, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.31, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.55, !1405, !DIExpression(), !1843)
  %cmp16566336 = icmp sgt i32 %or1643, 5
  %or.cond6622 = and i1 %cmp1651.not, %cmp16566336, !dbg !2319
  br i1 %or.cond6622, label %for.body1658.preheader, label %if.end1789, !dbg !2319

for.body1658.preheader:                           ; preds = %if.then1641
  %sub1655 = add nsw i32 %or1643, -2
  %281 = zext nneg i32 %sub1655 to i64, !dbg !2320
  br label %for.body1658, !dbg !2320

for.body1658:                                     ; preds = %for.body1658.preheader, %for.body1658
  %indvars.iv6479 = phi i64 [ 3, %for.body1658.preheader ], [ %indvars.iv.next6480, %for.body1658 ]
  %bmx.326340 = phi i32 [ %bmx.31, %for.body1658.preheader ], [ %bmx.36, %for.body1658 ]
  %bmy.326339 = phi i32 [ %bmy.31, %for.body1658.preheader ], [ %bmy.36, %for.body1658 ]
  %bcost.566338 = phi i32 [ %bcost.42, %for.body1658.preheader ], [ %bcost.60, %for.body1658 ]
    #dbg_value(i32 %bmx.326340, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.326339, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.566338, !1405, !DIExpression(), !1843)
    #dbg_value(i64 %indvars.iv6479, !1521, !DIExpression(), !2317)
    #dbg_value(ptr %add.ptr1411, !1523, !DIExpression(), !2321)
  %282 = load ptr, ptr %arrayidx1051, align 8, !dbg !2322
  %add.ptr1670 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %indvars.iv6479, !dbg !2322
  %283 = sub nsw i64 0, %indvars.iv6479, !dbg !2322
  %add.ptr1676 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %283, !dbg !2322
  %284 = add nuw nsw i64 %indvars.iv6479, 2, !dbg !2322
  %add.ptr1682 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %284, !dbg !2322
  %285 = sub nuw nsw i64 -2, %indvars.iv6479, !dbg !2322
  %add.ptr1689 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %285, !dbg !2322
  call void %282(ptr noundef %5, ptr noundef nonnull %add.ptr1670, ptr noundef nonnull %add.ptr1676, ptr noundef nonnull %add.ptr1682, ptr noundef nonnull %add.ptr1689, i32 noundef %3, ptr noundef nonnull %costs) #6, !dbg !2322
  %286 = trunc i64 %indvars.iv6479 to i32, !dbg !2322
  %287 = add i32 %bmx.236220, %286, !dbg !2322
  %shl1695 = shl i32 %287, 2, !dbg !2322
  %idxprom1696 = sext i32 %shl1695 to i64, !dbg !2322
  %arrayidx1697 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1696, !dbg !2322
  %288 = load i16, ptr %arrayidx1697, align 2, !dbg !2322
  %conv1698 = zext i16 %288 to i32, !dbg !2322
  %289 = load i16, ptr %arrayidx1480, align 2, !dbg !2322
  %conv1703 = zext i16 %289 to i32, !dbg !2322
  %add1704 = add nuw nsw i32 %conv1703, %conv1698, !dbg !2322
  %290 = load i32, ptr %costs, align 16, !dbg !2322
  %add1706 = add nsw i32 %add1704, %290, !dbg !2322
  store i32 %add1706, ptr %costs, align 16, !dbg !2322, !DIAssignID !2323
    #dbg_assign(i32 %add1706, !1416, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2323, ptr %costs, !DIExpression(), !1843)
  %291 = trunc nuw nsw i64 %indvars.iv6479 to i32, !dbg !2322
  %add1708 = sub i32 %bmx.236220, %291, !dbg !2322
  %shl1709 = shl i32 %add1708, 2, !dbg !2322
  %idxprom1710 = sext i32 %shl1709 to i64, !dbg !2322
  %arrayidx1711 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1710, !dbg !2322
  %292 = load i16, ptr %arrayidx1711, align 2, !dbg !2322
  %conv1712 = zext i16 %292 to i32, !dbg !2322
  %293 = load i16, ptr %arrayidx1480, align 2, !dbg !2322
  %conv1717 = zext i16 %293 to i32, !dbg !2322
  %add1718 = add nuw nsw i32 %conv1717, %conv1712, !dbg !2322
  %294 = load i32, ptr %arrayidx1093, align 4, !dbg !2322
  %add1720 = add nsw i32 %add1718, %294, !dbg !2322
  store i32 %add1720, ptr %arrayidx1093, align 4, !dbg !2322, !DIAssignID !2324
    #dbg_assign(i32 %add1720, !1416, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2324, ptr %arrayidx1093, !DIExpression(), !1843)
  %295 = trunc i64 %284 to i32, !dbg !2322
  %296 = add i32 %bmx.236220, %295, !dbg !2322
  %shl1723 = shl i32 %296, 2, !dbg !2322
  %idxprom1724 = sext i32 %shl1723 to i64, !dbg !2322
  %arrayidx1725 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1724, !dbg !2322
  %297 = load i16, ptr %arrayidx1725, align 2, !dbg !2322
  %conv1726 = zext i16 %297 to i32, !dbg !2322
  %298 = load i16, ptr %arrayidx1480, align 2, !dbg !2322
  %conv1731 = zext i16 %298 to i32, !dbg !2322
  %add1732 = add nuw nsw i32 %conv1731, %conv1726, !dbg !2322
  %299 = load i32, ptr %arrayidx1106, align 8, !dbg !2322
  %add1734 = add nsw i32 %add1732, %299, !dbg !2322
  store i32 %add1734, ptr %arrayidx1106, align 8, !dbg !2322, !DIAssignID !2325
    #dbg_assign(i32 %add1734, !1416, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2325, ptr %arrayidx1106, !DIExpression(), !1843)
  %300 = trunc i64 %285 to i32, !dbg !2322
  %301 = add i32 %bmx.236220, %300, !dbg !2322
  %shl1738 = shl i32 %301, 2, !dbg !2322
  %idxprom1739 = sext i32 %shl1738 to i64, !dbg !2322
  %arrayidx1740 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1739, !dbg !2322
  %302 = load i16, ptr %arrayidx1740, align 2, !dbg !2322
  %conv1741 = zext i16 %302 to i32, !dbg !2322
  %303 = load i16, ptr %arrayidx1480, align 2, !dbg !2322
  %conv1746 = zext i16 %303 to i32, !dbg !2322
  %add1747 = add nuw nsw i32 %conv1746, %conv1741, !dbg !2322
  %304 = load i32, ptr %arrayidx1119, align 4, !dbg !2322
  %add1749 = add nsw i32 %add1747, %304, !dbg !2322
  store i32 %add1749, ptr %arrayidx1119, align 4, !dbg !2322, !DIAssignID !2326
    #dbg_assign(i32 %add1749, !1416, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !2326, ptr %arrayidx1119, !DIExpression(), !1843)
  %cmp1751 = icmp slt i32 %add1706, %bcost.566338, !dbg !2327
  %bcost.57 = call i32 @llvm.smin.i32(i32 %add1706, i32 %bcost.566338), !dbg !2322
  %bmx.33 = select i1 %cmp1751, i32 %287, i32 %bmx.326340, !dbg !2322
    #dbg_value(i32 %bmx.33, !1403, !DIExpression(), !1843)
    #dbg_value(i32 poison, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.57, !1405, !DIExpression(), !1843)
  %cmp1759 = icmp slt i32 %add1720, %bcost.57, !dbg !2329
  %bcost.58 = call i32 @llvm.smin.i32(i32 %add1720, i32 %bcost.57), !dbg !2322
  %305 = or i1 %cmp1751, %cmp1759, !dbg !2322
  %bmx.34 = select i1 %cmp1759, i32 %add1708, i32 %bmx.33, !dbg !2322
    #dbg_value(i32 %bmx.34, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.58, !1405, !DIExpression(), !1843)
  %cmp1768 = icmp slt i32 %add1734, %bcost.58, !dbg !2331
  %bcost.59 = call i32 @llvm.smin.i32(i32 %add1734, i32 %bcost.58), !dbg !2322
  %bmx.35 = select i1 %cmp1768, i32 %296, i32 %bmx.34, !dbg !2322
    #dbg_value(i32 %bmx.35, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.59, !1405, !DIExpression(), !1843)
  %cmp1777 = icmp slt i32 %add1749, %bcost.59, !dbg !2333
  %bcost.60 = call i32 @llvm.smin.i32(i32 %add1749, i32 %bcost.59), !dbg !2322
  %306 = or i1 %cmp1768, %cmp1777, !dbg !2322
  %307 = select i1 %306, i1 true, i1 %305, !dbg !2322
  %bmy.36 = select i1 %307, i32 %bmy.236218, i32 %bmy.326339, !dbg !2322
  %bmx.36 = select i1 %cmp1777, i32 %301, i32 %bmx.35, !dbg !2322
    #dbg_value(i32 %bmx.36, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.36, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.60, !1405, !DIExpression(), !1843)
  %indvars.iv.next6480 = add nuw nsw i64 %indvars.iv6479, 4, !dbg !2335
    #dbg_value(i64 %indvars.iv.next6480, !1521, !DIExpression(), !2317)
  %cmp1656 = icmp ult i64 %indvars.iv.next6480, %281, !dbg !2335
  br i1 %cmp1656, label %for.body1658, label %if.end1789.loopexit, !dbg !2320, !llvm.loop !2336

if.end1789.loopexit:                              ; preds = %for.body1658
  %308 = trunc nuw nsw i64 %indvars.iv.next6480 to i32, !dbg !2337
  br label %if.end1789, !dbg !2337

if.end1789:                                       ; preds = %if.end1789.loopexit, %if.then1641
  %i1644.1 = phi i32 [ 3, %if.then1641 ], [ %308, %if.end1789.loopexit ], !dbg !2319
  %bcost.61 = phi i32 [ %bcost.42, %if.then1641 ], [ %bcost.60, %if.end1789.loopexit ], !dbg !2338
  %bmy.37 = phi i32 [ %bmy.31, %if.then1641 ], [ %bmy.36, %if.end1789.loopexit ], !dbg !2338
  %bmx.37 = phi i32 [ %bmx.31, %if.then1641 ], [ %bmx.36, %if.end1789.loopexit ], !dbg !2338
    #dbg_value(i32 %bmx.37, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.37, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.61, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %i1644.1, !1521, !DIExpression(), !2317)
  %cmp17916345 = icmp slt i32 %i1644.1, %or1643, !dbg !2337
  br i1 %cmp17916345, label %for.body1793.lr.ph, label %for.end1860, !dbg !2340

for.body1793.lr.ph:                               ; preds = %if.end1789
  %fpelcmp1800 = getelementptr inbounds i8, ptr %h, i64 31928
  %arrayidx1802 = getelementptr inbounds [7 x ptr], ptr %fpelcmp1800, i64 0, i64 %idxprom
  %309 = zext nneg i32 %i1644.1 to i64, !dbg !2340
  %310 = sext i32 %11 to i64, !dbg !2340
  %311 = sext i32 %9 to i64, !dbg !2340
  %312 = sext i32 %or1643 to i64, !dbg !2340
  %invariant.gep6606 = getelementptr i8, ptr %6, i64 %idx.ext1410, !dbg !2340
  %invariant.gep6608 = getelementptr i8, ptr %6, i64 %idx.ext1410, !dbg !2340
  br label %for.body1793, !dbg !2340

for.body1793:                                     ; preds = %for.body1793.lr.ph, %for.inc1858
  %indvars.iv6488 = phi i64 [ %309, %for.body1793.lr.ph ], [ %indvars.iv.next6489, %for.inc1858 ]
  %bmx.386349 = phi i32 [ %bmx.37, %for.body1793.lr.ph ], [ %bmx.42, %for.inc1858 ]
  %bmy.386348 = phi i32 [ %bmy.37, %for.body1793.lr.ph ], [ %bmy.42, %for.inc1858 ]
  %bcost.626347 = phi i32 [ %bcost.61, %for.body1793.lr.ph ], [ %bcost.66, %for.inc1858 ]
    #dbg_value(i32 %bmx.386349, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.386348, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.626347, !1405, !DIExpression(), !1843)
    #dbg_value(i64 %indvars.iv6488, !1521, !DIExpression(), !2317)
  %313 = add nsw i64 %indvars.iv6488, %idx.ext1407, !dbg !2341
  %cmp1795.not = icmp sgt i64 %313, %310, !dbg !2341
  br i1 %cmp1795.not, label %if.end1825, label %if.then1797, !dbg !2342

if.then1797:                                      ; preds = %for.body1793
  %314 = load ptr, ptr %arrayidx1802, align 8, !dbg !2343
  %gep6607 = getelementptr i8, ptr %invariant.gep6606, i64 %313, !dbg !2343
  %call1808 = call i32 %314(ptr noundef %5, i32 noundef 16, ptr noundef %gep6607, i32 noundef %3) #6, !dbg !2343
  %315 = trunc nsw i64 %313 to i32, !dbg !2343
  %shl1810 = shl i32 %315, 2, !dbg !2343
  %idxprom1811 = sext i32 %shl1810 to i64, !dbg !2343
  %arrayidx1812 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1811, !dbg !2343
  %316 = load i16, ptr %arrayidx1812, align 2, !dbg !2343
  %conv1813 = zext i16 %316 to i32, !dbg !2343
  %317 = load i16, ptr %arrayidx1480, align 2, !dbg !2343
  %conv1817 = zext i16 %317 to i32, !dbg !2343
  %add1818 = add i32 %call1808, %conv1813, !dbg !2343
  %add1819 = add i32 %add1818, %conv1817, !dbg !2343
    #dbg_value(i32 %add1819, !1528, !DIExpression(), !2344)
  %cmp1820 = icmp slt i32 %add1819, %bcost.626347, !dbg !2345
  %bcost.63 = call i32 @llvm.smin.i32(i32 %add1819, i32 %bcost.626347), !dbg !2343
  %bmy.39 = select i1 %cmp1820, i32 %bmy.236218, i32 %bmy.386348, !dbg !2343
  %bmx.39 = select i1 %cmp1820, i32 %315, i32 %bmx.386349, !dbg !2343
    #dbg_value(i32 %bmx.39, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.39, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.63, !1405, !DIExpression(), !1843)
  br label %if.end1825, !dbg !2343

if.end1825:                                       ; preds = %if.then1797, %for.body1793
  %bcost.64 = phi i32 [ %bcost.63, %if.then1797 ], [ %bcost.626347, %for.body1793 ], !dbg !2347
  %bmy.40 = phi i32 [ %bmy.39, %if.then1797 ], [ %bmy.386348, %for.body1793 ], !dbg !2347
  %bmx.40 = phi i32 [ %bmx.39, %if.then1797 ], [ %bmx.386349, %for.body1793 ], !dbg !2347
    #dbg_value(i32 %bmx.40, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.40, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.64, !1405, !DIExpression(), !1843)
  %318 = sub nsw i64 %idx.ext1407, %indvars.iv6488, !dbg !2348
  %cmp1827.not = icmp slt i64 %318, %311, !dbg !2348
  br i1 %cmp1827.not, label %for.inc1858, label %if.then1829, !dbg !2342

if.then1829:                                      ; preds = %if.end1825
  %319 = load ptr, ptr %arrayidx1802, align 8, !dbg !2349
  %gep6609 = getelementptr i8, ptr %invariant.gep6608, i64 %318, !dbg !2349
  %call1840 = call i32 %319(ptr noundef %5, i32 noundef 16, ptr noundef %gep6609, i32 noundef %3) #6, !dbg !2349
  %320 = trunc nsw i64 %318 to i32, !dbg !2349
  %shl1842 = shl i32 %320, 2, !dbg !2349
  %idxprom1843 = sext i32 %shl1842 to i64, !dbg !2349
  %arrayidx1844 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1843, !dbg !2349
  %321 = load i16, ptr %arrayidx1844, align 2, !dbg !2349
  %conv1845 = zext i16 %321 to i32, !dbg !2349
  %322 = load i16, ptr %arrayidx1480, align 2, !dbg !2349
  %conv1849 = zext i16 %322 to i32, !dbg !2349
  %add1850 = add i32 %call1840, %conv1845, !dbg !2349
  %add1851 = add i32 %add1850, %conv1849, !dbg !2349
    #dbg_value(i32 %add1851, !1534, !DIExpression(), !2350)
  %cmp1852 = icmp slt i32 %add1851, %bcost.64, !dbg !2351
  %bcost.65 = call i32 @llvm.smin.i32(i32 %add1851, i32 %bcost.64), !dbg !2349
  %bmy.41 = select i1 %cmp1852, i32 %bmy.236218, i32 %bmy.40, !dbg !2349
  %bmx.41 = select i1 %cmp1852, i32 %320, i32 %bmx.40, !dbg !2349
    #dbg_value(i32 %bmx.41, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.41, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.65, !1405, !DIExpression(), !1843)
  br label %for.inc1858, !dbg !2349

for.inc1858:                                      ; preds = %if.end1825, %if.then1829
  %bcost.66 = phi i32 [ %bcost.65, %if.then1829 ], [ %bcost.64, %if.end1825 ], !dbg !2342
  %bmy.42 = phi i32 [ %bmy.41, %if.then1829 ], [ %bmy.40, %if.end1825 ], !dbg !2342
  %bmx.42 = phi i32 [ %bmx.41, %if.then1829 ], [ %bmx.40, %if.end1825 ], !dbg !2342
    #dbg_value(i32 %bmx.42, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.42, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.66, !1405, !DIExpression(), !1843)
  %indvars.iv.next6489 = add nuw nsw i64 %indvars.iv6488, 2, !dbg !2337
    #dbg_value(i64 %indvars.iv.next6489, !1521, !DIExpression(), !2317)
  %cmp1791 = icmp slt i64 %indvars.iv.next6489, %312, !dbg !2337
  br i1 %cmp1791, label %for.body1793, label %for.end1860, !dbg !2340, !llvm.loop !2353

for.end1860:                                      ; preds = %for.inc1858, %if.end1789
  %bcost.62.lcssa = phi i32 [ %bcost.61, %if.end1789 ], [ %bcost.66, %for.inc1858 ], !dbg !2347
  %bmy.38.lcssa = phi i32 [ %bmy.37, %if.end1789 ], [ %bmy.42, %for.inc1858 ], !dbg !2347
  %bmx.38.lcssa = phi i32 [ %bmx.37, %if.end1789 ], [ %bmx.42, %for.inc1858 ], !dbg !2347
    #dbg_value(i32 3, !1521, !DIExpression(), !2317)
  %sub1861 = sub nsw i32 %12, %bmy.236218, !dbg !2354
  %sub1862 = sub nsw i32 %bmy.236218, %10, !dbg !2354
  %sub1861.sub1862 = call i32 @llvm.smin.i32(i32 %sub1861, i32 %sub1862), !dbg !2354
  %cmp1871.not = icmp sle i32 %or1643, %sub1861.sub1862, !dbg !2354
    #dbg_value(i32 %bmx.38.lcssa, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.38.lcssa, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.62.lcssa, !1405, !DIExpression(), !1843)
  %cmp18766353 = icmp sgt i32 %or1643, 5
  %or.cond6623 = and i1 %cmp1871.not, %cmp18766353, !dbg !2319
  br i1 %or.cond6623, label %for.body1878.preheader, label %if.end2005, !dbg !2319

for.body1878.preheader:                           ; preds = %for.end1860
  %sub1875 = add nsw i32 %or1643, -2
  %323 = zext nneg i32 %sub1875 to i64, !dbg !2355
  br label %for.body1878, !dbg !2355

for.body1878:                                     ; preds = %for.body1878.preheader, %for.body1878
  %indvars.iv6495 = phi i64 [ 3, %for.body1878.preheader ], [ %indvars.iv.next6496, %for.body1878 ]
  %bmx.436357 = phi i32 [ %bmx.38.lcssa, %for.body1878.preheader ], [ %bmx.47, %for.body1878 ]
  %bmy.436356 = phi i32 [ %bmy.38.lcssa, %for.body1878.preheader ], [ %bmy.47, %for.body1878 ]
  %bcost.676355 = phi i32 [ %bcost.62.lcssa, %for.body1878.preheader ], [ %bcost.71, %for.body1878 ]
    #dbg_value(i32 %bmx.436357, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.436356, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.676355, !1405, !DIExpression(), !1843)
    #dbg_value(i64 %indvars.iv6495, !1521, !DIExpression(), !2317)
    #dbg_value(ptr %add.ptr1411, !1537, !DIExpression(), !2356)
  %324 = load ptr, ptr %arrayidx1051, align 8, !dbg !2357
  %325 = mul nsw i64 %indvars.iv6495, %idx.ext1058, !dbg !2357
  %add.ptr1892 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %325, !dbg !2357
  %.neg6583 = mul i64 %325, -4294967296, !dbg !2357
  %idx.ext1896 = ashr exact i64 %.neg6583, 32, !dbg !2357
  %add.ptr1897 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %idx.ext1896, !dbg !2357
  %326 = add nuw nsw i64 %indvars.iv6495, 2, !dbg !2357
  %327 = mul nsw i64 %326, %idx.ext1058, !dbg !2357
  %add.ptr1902 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %327, !dbg !2357
  %328 = sub nuw nsw i64 -2, %indvars.iv6495, !dbg !2357
  %329 = mul nsw i64 %328, %idx.ext1058, !dbg !2357
  %add.ptr1908 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %329, !dbg !2357
  call void %324(ptr noundef %5, ptr noundef %add.ptr1892, ptr noundef %add.ptr1897, ptr noundef %add.ptr1902, ptr noundef %add.ptr1908, i32 noundef %3, ptr noundef nonnull %costs) #6, !dbg !2357
  %330 = load i16, ptr %arrayidx1436, align 2, !dbg !2357
  %conv1914 = zext i16 %330 to i32, !dbg !2357
  %331 = trunc i64 %indvars.iv6495 to i32, !dbg !2357
  %332 = add i32 %bmy.236218, %331, !dbg !2357
  %shl1916 = shl i32 %332, 2, !dbg !2357
  %idxprom1917 = sext i32 %shl1916 to i64, !dbg !2357
  %arrayidx1918 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1917, !dbg !2357
  %333 = load i16, ptr %arrayidx1918, align 2, !dbg !2357
  %conv1919 = zext i16 %333 to i32, !dbg !2357
  %add1920 = add nuw nsw i32 %conv1919, %conv1914, !dbg !2357
  %334 = load i32, ptr %costs, align 16, !dbg !2357
  %add1922 = add nsw i32 %add1920, %334, !dbg !2357
  store i32 %add1922, ptr %costs, align 16, !dbg !2357, !DIAssignID !2358
    #dbg_assign(i32 %add1922, !1416, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2358, ptr %costs, !DIExpression(), !1843)
  %335 = load i16, ptr %arrayidx1436, align 2, !dbg !2357
  %conv1927 = zext i16 %335 to i32, !dbg !2357
  %336 = trunc nuw nsw i64 %indvars.iv6495 to i32, !dbg !2357
  %add1929 = sub i32 %bmy.236218, %336, !dbg !2357
  %shl1930 = shl i32 %add1929, 2, !dbg !2357
  %idxprom1931 = sext i32 %shl1930 to i64, !dbg !2357
  %arrayidx1932 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1931, !dbg !2357
  %337 = load i16, ptr %arrayidx1932, align 2, !dbg !2357
  %conv1933 = zext i16 %337 to i32, !dbg !2357
  %add1934 = add nuw nsw i32 %conv1933, %conv1927, !dbg !2357
  %338 = load i32, ptr %arrayidx1093, align 4, !dbg !2357
  %add1936 = add nsw i32 %add1934, %338, !dbg !2357
  store i32 %add1936, ptr %arrayidx1093, align 4, !dbg !2357, !DIAssignID !2359
    #dbg_assign(i32 %add1936, !1416, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2359, ptr %arrayidx1093, !DIExpression(), !1843)
  %339 = load i16, ptr %arrayidx1436, align 2, !dbg !2357
  %conv1941 = zext i16 %339 to i32, !dbg !2357
  %340 = trunc i64 %326 to i32, !dbg !2357
  %341 = add i32 %bmy.236218, %340, !dbg !2357
  %shl1944 = shl i32 %341, 2, !dbg !2357
  %idxprom1945 = sext i32 %shl1944 to i64, !dbg !2357
  %arrayidx1946 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1945, !dbg !2357
  %342 = load i16, ptr %arrayidx1946, align 2, !dbg !2357
  %conv1947 = zext i16 %342 to i32, !dbg !2357
  %add1948 = add nuw nsw i32 %conv1947, %conv1941, !dbg !2357
  %343 = load i32, ptr %arrayidx1106, align 8, !dbg !2357
  %add1950 = add nsw i32 %add1948, %343, !dbg !2357
  store i32 %add1950, ptr %arrayidx1106, align 8, !dbg !2357, !DIAssignID !2360
    #dbg_assign(i32 %add1950, !1416, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2360, ptr %arrayidx1106, !DIExpression(), !1843)
  %344 = load i16, ptr %arrayidx1436, align 2, !dbg !2357
  %conv1955 = zext i16 %344 to i32, !dbg !2357
  %345 = trunc i64 %328 to i32, !dbg !2357
  %346 = add i32 %bmy.236218, %345, !dbg !2357
  %shl1959 = shl i32 %346, 2, !dbg !2357
  %idxprom1960 = sext i32 %shl1959 to i64, !dbg !2357
  %arrayidx1961 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1960, !dbg !2357
  %347 = load i16, ptr %arrayidx1961, align 2, !dbg !2357
  %conv1962 = zext i16 %347 to i32, !dbg !2357
  %add1963 = add nuw nsw i32 %conv1962, %conv1955, !dbg !2357
  %348 = load i32, ptr %arrayidx1119, align 4, !dbg !2357
  %add1965 = add nsw i32 %add1963, %348, !dbg !2357
  store i32 %add1965, ptr %arrayidx1119, align 4, !dbg !2357, !DIAssignID !2361
    #dbg_assign(i32 %add1965, !1416, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !2361, ptr %arrayidx1119, !DIExpression(), !1843)
  %cmp1967 = icmp slt i32 %add1922, %bcost.676355, !dbg !2362
  %bcost.68 = call i32 @llvm.smin.i32(i32 %add1922, i32 %bcost.676355), !dbg !2357
  %bmy.44 = select i1 %cmp1967, i32 %332, i32 %bmy.436356, !dbg !2357
    #dbg_value(i32 poison, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.44, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.68, !1405, !DIExpression(), !1843)
  %cmp1975 = icmp slt i32 %add1936, %bcost.68, !dbg !2364
  %bcost.69 = call i32 @llvm.smin.i32(i32 %add1936, i32 %bcost.68), !dbg !2357
  %bmy.45 = select i1 %cmp1975, i32 %add1929, i32 %bmy.44, !dbg !2357
  %349 = or i1 %cmp1967, %cmp1975, !dbg !2357
    #dbg_value(i32 %bmy.45, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.69, !1405, !DIExpression(), !1843)
  %cmp1984 = icmp slt i32 %add1950, %bcost.69, !dbg !2366
  %bcost.70 = call i32 @llvm.smin.i32(i32 %add1950, i32 %bcost.69), !dbg !2357
  %bmy.46 = select i1 %cmp1984, i32 %341, i32 %bmy.45, !dbg !2357
    #dbg_value(i32 %bmy.46, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.70, !1405, !DIExpression(), !1843)
  %cmp1993 = icmp slt i32 %add1965, %bcost.70, !dbg !2368
  %bcost.71 = call i32 @llvm.smin.i32(i32 %add1965, i32 %bcost.70), !dbg !2357
  %bmy.47 = select i1 %cmp1993, i32 %346, i32 %bmy.46, !dbg !2357
  %350 = or i1 %cmp1984, %cmp1993, !dbg !2357
  %351 = select i1 %350, i1 true, i1 %349, !dbg !2357
  %bmx.47 = select i1 %351, i32 %bmx.236220, i32 %bmx.436357, !dbg !2357
    #dbg_value(i32 %bmx.47, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.47, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.71, !1405, !DIExpression(), !1843)
  %indvars.iv.next6496 = add nuw nsw i64 %indvars.iv6495, 4, !dbg !2370
    #dbg_value(i64 %indvars.iv.next6496, !1521, !DIExpression(), !2317)
  %cmp1876 = icmp ult i64 %indvars.iv.next6496, %323, !dbg !2370
  br i1 %cmp1876, label %for.body1878, label %if.end2005.loopexit, !dbg !2355, !llvm.loop !2371

if.end2005.loopexit:                              ; preds = %for.body1878
  %352 = trunc nuw nsw i64 %indvars.iv.next6496 to i32, !dbg !2372
  br label %if.end2005, !dbg !2372

if.end2005:                                       ; preds = %if.end2005.loopexit, %for.end1860
  %i1644.4 = phi i32 [ 3, %for.end1860 ], [ %352, %if.end2005.loopexit ], !dbg !2319
  %bcost.72 = phi i32 [ %bcost.62.lcssa, %for.end1860 ], [ %bcost.71, %if.end2005.loopexit ], !dbg !2338
  %bmy.48 = phi i32 [ %bmy.38.lcssa, %for.end1860 ], [ %bmy.47, %if.end2005.loopexit ], !dbg !2338
  %bmx.48 = phi i32 [ %bmx.38.lcssa, %for.end1860 ], [ %bmx.47, %if.end2005.loopexit ], !dbg !2338
    #dbg_value(i32 %bmx.48, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.48, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.72, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %i1644.4, !1521, !DIExpression(), !2317)
  %cmp20076362 = icmp slt i32 %i1644.4, %or1643, !dbg !2372
  br i1 %cmp20076362, label %for.body2009.lr.ph, label %for.end2076, !dbg !2373

for.body2009.lr.ph:                               ; preds = %if.end2005
  %fpelcmp2016 = getelementptr inbounds i8, ptr %h, i64 31928
  %arrayidx2018 = getelementptr inbounds [7 x ptr], ptr %fpelcmp2016, i64 0, i64 %idxprom
  %353 = zext nneg i32 %i1644.4 to i64, !dbg !2373
  %354 = sext i32 %bmy.236218 to i64, !dbg !2373
  %355 = sext i32 %12 to i64, !dbg !2373
  %356 = sext i32 %10 to i64, !dbg !2373
  %357 = sext i32 %or1643 to i64, !dbg !2373
  %invariant.gep6610 = getelementptr i8, ptr %6, i64 %idx.ext1407, !dbg !2373
  %invariant.gep6612 = getelementptr i8, ptr %6, i64 %idx.ext1407, !dbg !2373
  br label %for.body2009, !dbg !2373

for.body2009:                                     ; preds = %for.body2009.lr.ph, %for.inc2074
  %indvars.iv6506 = phi i64 [ %353, %for.body2009.lr.ph ], [ %indvars.iv.next6507, %for.inc2074 ]
  %bmx.496366 = phi i32 [ %bmx.48, %for.body2009.lr.ph ], [ %bmx.53, %for.inc2074 ]
  %bmy.496365 = phi i32 [ %bmy.48, %for.body2009.lr.ph ], [ %bmy.53, %for.inc2074 ]
  %bcost.736364 = phi i32 [ %bcost.72, %for.body2009.lr.ph ], [ %bcost.77, %for.inc2074 ]
    #dbg_value(i32 %bmx.496366, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.496365, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.736364, !1405, !DIExpression(), !1843)
    #dbg_value(i64 %indvars.iv6506, !1521, !DIExpression(), !2317)
  %358 = add nsw i64 %indvars.iv6506, %354, !dbg !2374
  %cmp2011.not = icmp sgt i64 %358, %355, !dbg !2374
  br i1 %cmp2011.not, label %if.end2041, label %if.then2013, !dbg !2375

if.then2013:                                      ; preds = %for.body2009
  %359 = load ptr, ptr %arrayidx2018, align 8, !dbg !2376
  %360 = mul nsw i64 %358, %idx.ext1058, !dbg !2376
  %gep6611 = getelementptr i8, ptr %invariant.gep6610, i64 %360, !dbg !2376
  %call2024 = call i32 %359(ptr noundef %5, i32 noundef 16, ptr noundef %gep6611, i32 noundef %3) #6, !dbg !2376
  %361 = load i16, ptr %arrayidx1436, align 2, !dbg !2376
  %conv2028 = zext i16 %361 to i32, !dbg !2376
  %362 = trunc nsw i64 %358 to i32, !dbg !2376
  %shl2030 = shl i32 %362, 2, !dbg !2376
  %idxprom2031 = sext i32 %shl2030 to i64, !dbg !2376
  %arrayidx2032 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2031, !dbg !2376
  %363 = load i16, ptr %arrayidx2032, align 2, !dbg !2376
  %conv2033 = zext i16 %363 to i32, !dbg !2376
  %add2034 = add i32 %call2024, %conv2028, !dbg !2376
  %add2035 = add i32 %add2034, %conv2033, !dbg !2376
    #dbg_value(i32 %add2035, !1542, !DIExpression(), !2377)
  %cmp2036 = icmp slt i32 %add2035, %bcost.736364, !dbg !2378
  %bcost.74 = call i32 @llvm.smin.i32(i32 %add2035, i32 %bcost.736364), !dbg !2376
  %bmy.50 = select i1 %cmp2036, i32 %362, i32 %bmy.496365, !dbg !2376
  %bmx.50 = select i1 %cmp2036, i32 %bmx.236220, i32 %bmx.496366, !dbg !2376
    #dbg_value(i32 %bmx.50, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.50, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.74, !1405, !DIExpression(), !1843)
  br label %if.end2041, !dbg !2376

if.end2041:                                       ; preds = %if.then2013, %for.body2009
  %bcost.75 = phi i32 [ %bcost.74, %if.then2013 ], [ %bcost.736364, %for.body2009 ], !dbg !2347
  %bmy.51 = phi i32 [ %bmy.50, %if.then2013 ], [ %bmy.496365, %for.body2009 ], !dbg !2347
  %bmx.51 = phi i32 [ %bmx.50, %if.then2013 ], [ %bmx.496366, %for.body2009 ], !dbg !2347
    #dbg_value(i32 %bmx.51, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.51, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.75, !1405, !DIExpression(), !1843)
  %364 = sub nsw i64 %354, %indvars.iv6506, !dbg !2380
  %cmp2043.not = icmp slt i64 %364, %356, !dbg !2380
  br i1 %cmp2043.not, label %for.inc2074, label %if.then2045, !dbg !2375

if.then2045:                                      ; preds = %if.end2041
  %365 = load ptr, ptr %arrayidx2018, align 8, !dbg !2381
  %366 = mul nsw i64 %364, %idx.ext1058, !dbg !2381
  %gep6613 = getelementptr i8, ptr %invariant.gep6612, i64 %366, !dbg !2381
  %call2056 = call i32 %365(ptr noundef %5, i32 noundef 16, ptr noundef %gep6613, i32 noundef %3) #6, !dbg !2381
  %367 = load i16, ptr %arrayidx1436, align 2, !dbg !2381
  %conv2060 = zext i16 %367 to i32, !dbg !2381
  %368 = trunc nsw i64 %364 to i32, !dbg !2381
  %shl2062 = shl i32 %368, 2, !dbg !2381
  %idxprom2063 = sext i32 %shl2062 to i64, !dbg !2381
  %arrayidx2064 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2063, !dbg !2381
  %369 = load i16, ptr %arrayidx2064, align 2, !dbg !2381
  %conv2065 = zext i16 %369 to i32, !dbg !2381
  %add2066 = add i32 %call2056, %conv2060, !dbg !2381
  %add2067 = add i32 %add2066, %conv2065, !dbg !2381
    #dbg_value(i32 %add2067, !1548, !DIExpression(), !2382)
  %cmp2068 = icmp slt i32 %add2067, %bcost.75, !dbg !2383
  %bcost.76 = call i32 @llvm.smin.i32(i32 %add2067, i32 %bcost.75), !dbg !2381
  %bmy.52 = select i1 %cmp2068, i32 %368, i32 %bmy.51, !dbg !2381
  %bmx.52 = select i1 %cmp2068, i32 %bmx.236220, i32 %bmx.51, !dbg !2381
    #dbg_value(i32 %bmx.52, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.52, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.76, !1405, !DIExpression(), !1843)
  br label %for.inc2074, !dbg !2381

for.inc2074:                                      ; preds = %if.end2041, %if.then2045
  %bcost.77 = phi i32 [ %bcost.76, %if.then2045 ], [ %bcost.75, %if.end2041 ], !dbg !2375
  %bmy.53 = phi i32 [ %bmy.52, %if.then2045 ], [ %bmy.51, %if.end2041 ], !dbg !2375
  %bmx.53 = phi i32 [ %bmx.52, %if.then2045 ], [ %bmx.51, %if.end2041 ], !dbg !2375
    #dbg_value(i32 %bmx.53, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.53, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.77, !1405, !DIExpression(), !1843)
  %indvars.iv.next6507 = add nuw nsw i64 %indvars.iv6506, 2, !dbg !2372
    #dbg_value(i64 %indvars.iv.next6507, !1521, !DIExpression(), !2317)
  %cmp2007 = icmp slt i64 %indvars.iv.next6507, %357, !dbg !2372
  br i1 %cmp2007, label %for.body2009, label %for.end2076, !dbg !2373, !llvm.loop !2385

for.end2076:                                      ; preds = %for.inc2074, %if.end2005
  %bcost.73.lcssa = phi i32 [ %bcost.72, %if.end2005 ], [ %bcost.77, %for.inc2074 ], !dbg !2347
  %bmy.49.lcssa = phi i32 [ %bmy.48, %if.end2005 ], [ %bmy.53, %for.inc2074 ], !dbg !2347
  %bmx.49.lcssa = phi i32 [ %bmx.48, %if.end2005 ], [ %bmx.53, %for.inc2074 ], !dbg !2347
    #dbg_value(ptr %add.ptr1411, !1551, !DIExpression(), !2386)
  %370 = load ptr, ptr %arrayidx1051, align 8, !dbg !2387
  %add.ptr2090 = getelementptr inbounds i8, ptr %add.ptr1420, i64 %idx.ext1418, !dbg !2387
  %add.ptr2094 = getelementptr inbounds i8, ptr %add.ptr1424, i64 %idx.ext1418, !dbg !2387
  %add.ptr2098 = getelementptr inbounds i8, ptr %add.ptr1428, i64 %idx.ext1054, !dbg !2387
  %add.ptr2102 = getelementptr inbounds i8, ptr %add.ptr1527, i64 %idx.ext1054, !dbg !2387
  call void %370(ptr noundef %5, ptr noundef nonnull %add.ptr2090, ptr noundef nonnull %add.ptr2094, ptr noundef nonnull %add.ptr2098, ptr noundef nonnull %add.ptr2102, i32 noundef %3, ptr noundef nonnull %costs) #6, !dbg !2387
  %371 = load i16, ptr %arrayidx1449, align 2, !dbg !2387
  %conv2108 = zext i16 %371 to i32, !dbg !2387
  %372 = load i16, ptr %arrayidx1441, align 2, !dbg !2387
  %conv2113 = zext i16 %372 to i32, !dbg !2387
  %add2114 = add nuw nsw i32 %conv2113, %conv2108, !dbg !2387
  %373 = load i32, ptr %costs, align 16, !dbg !2387
  %add2116 = add nsw i32 %add2114, %373, !dbg !2387
  store i32 %add2116, ptr %costs, align 16, !dbg !2387, !DIAssignID !2388
    #dbg_assign(i32 %add2116, !1416, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2388, ptr %costs, !DIExpression(), !1843)
  %374 = load i16, ptr %arrayidx1462, align 2, !dbg !2387
  %conv2121 = zext i16 %374 to i32, !dbg !2387
  %375 = load i16, ptr %arrayidx1441, align 2, !dbg !2387
  %conv2126 = zext i16 %375 to i32, !dbg !2387
  %add2127 = add nuw nsw i32 %conv2126, %conv2121, !dbg !2387
  %376 = load i32, ptr %arrayidx1093, align 4, !dbg !2387
  %add2129 = add nsw i32 %add2127, %376, !dbg !2387
  store i32 %add2129, ptr %arrayidx1093, align 4, !dbg !2387, !DIAssignID !2389
    #dbg_assign(i32 %add2129, !1416, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2389, ptr %arrayidx1093, !DIExpression(), !1843)
  %377 = load i16, ptr %arrayidx1475, align 2, !dbg !2387
  %conv2134 = zext i16 %377 to i32, !dbg !2387
  %378 = load i16, ptr %arrayidx1454, align 2, !dbg !2387
  %conv2139 = zext i16 %378 to i32, !dbg !2387
  %add2140 = add nuw nsw i32 %conv2139, %conv2134, !dbg !2387
  %379 = load i32, ptr %arrayidx1106, align 8, !dbg !2387
  %add2142 = add nsw i32 %add2140, %379, !dbg !2387
  store i32 %add2142, ptr %arrayidx1106, align 8, !dbg !2387, !DIAssignID !2390
    #dbg_assign(i32 %add2142, !1416, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2390, ptr %arrayidx1106, !DIExpression(), !1843)
  %380 = load i16, ptr %arrayidx1547, align 2, !dbg !2387
  %conv2147 = zext i16 %380 to i32, !dbg !2387
  %381 = load i16, ptr %arrayidx1454, align 2, !dbg !2387
  %conv2152 = zext i16 %381 to i32, !dbg !2387
  %add2153 = add nuw nsw i32 %conv2152, %conv2147, !dbg !2387
  %382 = load i32, ptr %arrayidx1119, align 4, !dbg !2387
  %add2155 = add nsw i32 %add2153, %382, !dbg !2387
  store i32 %add2155, ptr %arrayidx1119, align 4, !dbg !2387, !DIAssignID !2391
    #dbg_assign(i32 %add2155, !1416, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !2391, ptr %arrayidx1119, !DIExpression(), !1843)
  %cmp2157 = icmp slt i32 %add2116, %bcost.73.lcssa, !dbg !2392
  %bcost.78 = call i32 @llvm.smin.i32(i32 %add2116, i32 %bcost.73.lcssa), !dbg !2387
  %bmx.54 = select i1 %cmp2157, i32 %add1446, i32 %bmx.49.lcssa, !dbg !2387
    #dbg_value(i32 %bmx.54, !1403, !DIExpression(), !1843)
    #dbg_value(i32 poison, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.78, !1405, !DIExpression(), !1843)
  %cmp2165 = icmp slt i32 %add2129, %bcost.78, !dbg !2394
  %bcost.79 = call i32 @llvm.smin.i32(i32 %add2129, i32 %bcost.78), !dbg !2387
  %383 = or i1 %cmp2157, %cmp2165, !dbg !2387
  %bmy.55 = select i1 %383, i32 %add1438, i32 %bmy.49.lcssa, !dbg !2387
  %bmx.55 = select i1 %cmp2165, i32 %add1459, i32 %bmx.54, !dbg !2387
    #dbg_value(i32 %bmx.55, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.55, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.79, !1405, !DIExpression(), !1843)
  %cmp2173 = icmp slt i32 %add2142, %bcost.79, !dbg !2396
  %bcost.80 = call i32 @llvm.smin.i32(i32 %add2142, i32 %bcost.79), !dbg !2387
  %bmx.56 = select i1 %cmp2173, i32 %add1472, i32 %bmx.55, !dbg !2387
    #dbg_value(i32 %bmx.56, !1403, !DIExpression(), !1843)
    #dbg_value(i32 poison, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.80, !1405, !DIExpression(), !1843)
  %cmp2181 = icmp slt i32 %add2155, %bcost.80, !dbg !2398
  %bcost.81 = call i32 @llvm.smin.i32(i32 %add2155, i32 %bcost.80), !dbg !2387
  %384 = or i1 %cmp2173, %cmp2181, !dbg !2387
  %bmy.57 = select i1 %384, i32 %add1451, i32 %bmy.55, !dbg !2387
  %bmx.57 = select i1 %cmp2181, i32 %add1544, i32 %bmx.56, !dbg !2387
    #dbg_value(i32 %bmx.57, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.57, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.81, !1405, !DIExpression(), !1843)
    #dbg_value(ptr %add.ptr1411, !1553, !DIExpression(), !2400)
  %385 = load ptr, ptr %arrayidx1051, align 8, !dbg !2401
  %add.ptr2201 = getelementptr inbounds i8, ptr %add.ptr1428, i64 %idx.ext1058, !dbg !2401
  %add.ptr2205 = getelementptr inbounds i8, ptr %add.ptr1527, i64 %idx.ext1058, !dbg !2401
  %add.ptr2209 = getelementptr inbounds i8, ptr %add.ptr1420, i64 %idx.ext1541, !dbg !2401
  %add.ptr2213 = getelementptr inbounds i8, ptr %add.ptr1424, i64 %idx.ext1541, !dbg !2401
  call void %385(ptr noundef %5, ptr noundef nonnull %add.ptr2201, ptr noundef nonnull %add.ptr2205, ptr noundef nonnull %add.ptr2209, ptr noundef nonnull %add.ptr2213, i32 noundef %3, ptr noundef nonnull %costs) #6, !dbg !2401
  %386 = load i16, ptr %arrayidx1475, align 2, !dbg !2401
  %conv2219 = zext i16 %386 to i32, !dbg !2401
  %387 = load i16, ptr %arrayidx1565, align 2, !dbg !2401
  %conv2224 = zext i16 %387 to i32, !dbg !2401
  %add2225 = add nuw nsw i32 %conv2224, %conv2219, !dbg !2401
  %388 = load i32, ptr %costs, align 16, !dbg !2401
  %add2227 = add nsw i32 %add2225, %388, !dbg !2401
  store i32 %add2227, ptr %costs, align 16, !dbg !2401, !DIAssignID !2402
    #dbg_assign(i32 %add2227, !1416, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2402, ptr %costs, !DIExpression(), !1843)
  %389 = load i16, ptr %arrayidx1547, align 2, !dbg !2401
  %conv2232 = zext i16 %389 to i32, !dbg !2401
  %390 = load i16, ptr %arrayidx1565, align 2, !dbg !2401
  %conv2237 = zext i16 %390 to i32, !dbg !2401
  %add2238 = add nuw nsw i32 %conv2237, %conv2232, !dbg !2401
  %391 = load i32, ptr %arrayidx1093, align 4, !dbg !2401
  %add2240 = add nsw i32 %add2238, %391, !dbg !2401
  store i32 %add2240, ptr %arrayidx1093, align 4, !dbg !2401, !DIAssignID !2403
    #dbg_assign(i32 %add2240, !1416, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2403, ptr %arrayidx1093, !DIExpression(), !1843)
  %392 = load i16, ptr %arrayidx1449, align 2, !dbg !2401
  %conv2245 = zext i16 %392 to i32, !dbg !2401
  %393 = load i16, ptr %arrayidx1591, align 2, !dbg !2401
  %conv2250 = zext i16 %393 to i32, !dbg !2401
  %add2251 = add nuw nsw i32 %conv2250, %conv2245, !dbg !2401
  %394 = load i32, ptr %arrayidx1106, align 8, !dbg !2401
  %add2253 = add nsw i32 %add2251, %394, !dbg !2401
  store i32 %add2253, ptr %arrayidx1106, align 8, !dbg !2401, !DIAssignID !2404
    #dbg_assign(i32 %add2253, !1416, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2404, ptr %arrayidx1106, !DIExpression(), !1843)
  %395 = load i16, ptr %arrayidx1462, align 2, !dbg !2401
  %conv2258 = zext i16 %395 to i32, !dbg !2401
  %396 = load i16, ptr %arrayidx1591, align 2, !dbg !2401
  %conv2263 = zext i16 %396 to i32, !dbg !2401
  %add2264 = add nuw nsw i32 %conv2263, %conv2258, !dbg !2401
  %397 = load i32, ptr %arrayidx1119, align 4, !dbg !2401
  %add2266 = add nsw i32 %add2264, %397, !dbg !2401
  store i32 %add2266, ptr %arrayidx1119, align 4, !dbg !2401, !DIAssignID !2405
    #dbg_assign(i32 %add2266, !1416, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !2405, ptr %arrayidx1119, !DIExpression(), !1843)
  %cmp2268 = icmp slt i32 %add2227, %bcost.81, !dbg !2406
  %bcost.82 = call i32 @llvm.smin.i32(i32 %add2227, i32 %bcost.81), !dbg !2401
  %bmx.58 = select i1 %cmp2268, i32 %add1472, i32 %bmx.57, !dbg !2401
    #dbg_value(i32 %bmx.58, !1403, !DIExpression(), !1843)
    #dbg_value(i32 poison, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.82, !1405, !DIExpression(), !1843)
  %cmp2276 = icmp slt i32 %add2240, %bcost.82, !dbg !2408
  %bcost.83 = call i32 @llvm.smin.i32(i32 %add2240, i32 %bcost.82), !dbg !2401
  %398 = or i1 %cmp2268, %cmp2276, !dbg !2401
  %bmy.59 = select i1 %398, i32 %add1562, i32 %bmy.57, !dbg !2401
  %bmx.59 = select i1 %cmp2276, i32 %add1544, i32 %bmx.58, !dbg !2401
    #dbg_value(i32 %bmx.59, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.59, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.83, !1405, !DIExpression(), !1843)
  %cmp2284 = icmp slt i32 %add2253, %bcost.83, !dbg !2410
  %bcost.84 = call i32 @llvm.smin.i32(i32 %add2253, i32 %bcost.83), !dbg !2401
  %bmx.60 = select i1 %cmp2284, i32 %add1446, i32 %bmx.59, !dbg !2401
    #dbg_value(i32 %bmx.60, !1403, !DIExpression(), !1843)
    #dbg_value(i32 poison, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.84, !1405, !DIExpression(), !1843)
  %cmp2292 = icmp slt i32 %add2266, %bcost.84, !dbg !2412
  %bcost.85 = call i32 @llvm.smin.i32(i32 %add2266, i32 %bcost.84), !dbg !2401
  %399 = or i1 %cmp2284, %cmp2292, !dbg !2401
  %bmy.61 = select i1 %399, i32 %add1588, i32 %bmy.59, !dbg !2401
  %bmx.61 = select i1 %cmp2292, i32 %add1459, i32 %bmx.60, !dbg !2401
    #dbg_value(i32 %bmx.61, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.61, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.85, !1405, !DIExpression(), !1843)
  %cmp2299.not = icmp eq i32 %bcost.85, %bcost.42, !dbg !2414
  %add2303 = add nsw i32 %or1643, 2, !dbg !2416
    #dbg_value(i32 undef, !1500, !DIExpression(), !2223)
  br i1 %cmp2299.not, label %sw.epilog, label %if.end2306

if.end2306:                                       ; preds = %if.end1638, %for.end2076, %land.lhs.true1398, %if.end1391
  %bmx.236221 = phi i32 [ %bmx.236220, %for.end2076 ], [ %bmx.236220, %if.end1638 ], [ %bmx.236220, %land.lhs.true1398 ], [ %bmx.22, %if.end1391 ]
  %bmy.236219 = phi i32 [ %bmy.236218, %for.end2076 ], [ %bmy.236218, %if.end1638 ], [ %bmy.236218, %land.lhs.true1398 ], [ %bmy.22, %if.end1391 ]
  %cross_start.2 = phi i32 [ %add2303, %for.end2076 ], [ 3, %if.end1638 ], [ 3, %land.lhs.true1398 ], [ 1, %if.end1391 ], !dbg !2417
  %bcost.86 = phi i32 [ %bcost.85, %for.end2076 ], [ %bcost.55, %if.end1638 ], [ %bcost.42, %land.lhs.true1398 ], [ %bcost.46, %if.end1391 ], !dbg !2223
  %bmy.62 = phi i32 [ %bmy.61, %for.end2076 ], [ %bmy.31, %if.end1638 ], [ %bmy.236218, %land.lhs.true1398 ], [ %bmy.22, %if.end1391 ], !dbg !2223
  %bmx.62 = phi i32 [ %bmx.61, %for.end2076 ], [ %bmx.31, %if.end1638 ], [ %bmx.236220, %land.lhs.true1398 ], [ %bmx.22, %if.end1391 ], !dbg !2223
    #dbg_value(i32 %bmx.62, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.62, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.86, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %cross_start.2, !1500, !DIExpression(), !2223)
  switch i32 %i_mvc, label %if.else2332 [
    i32 0, label %if.end2410
    i32 1, label %if.then2311
  ], !dbg !2418

if.then2311:                                      ; preds = %if.end2306
  %cmp2312 = icmp eq i32 %0, 0, !dbg !2419
  br i1 %cmp2312, label %if.end2357, label %if.else2315, !dbg !2423

if.else2315:                                      ; preds = %if.then2311
  %400 = load i16, ptr %mvp, align 16, !dbg !2424
  %conv2318 = sext i16 %400 to i32, !dbg !2424
  %401 = load i16, ptr %mvc, align 2, !dbg !2425
  %conv2321 = sext i16 %401 to i32, !dbg !2425
  %sub2322 = sub nsw i32 %conv2318, %conv2321, !dbg !2426
  %402 = call i32 @llvm.abs.i32(i32 %sub2322, i1 true), !dbg !2427
  %403 = load i16, ptr %arrayidx33, align 2, !dbg !2428
  %conv2325 = sext i16 %403 to i32, !dbg !2428
  %arrayidx2327 = getelementptr inbounds i8, ptr %mvc, i64 2, !dbg !2429
  %404 = load i16, ptr %arrayidx2327, align 2, !dbg !2429
  %conv2328 = sext i16 %404 to i32, !dbg !2429
  %sub2329 = sub nsw i32 %conv2325, %conv2328, !dbg !2430
  %405 = call i32 @llvm.abs.i32(i32 %sub2329, i1 true), !dbg !2431
  %add2330 = add nuw nsw i32 %405, %402, !dbg !2432
    #dbg_value(i32 %add2330, !1555, !DIExpression(), !2433)
  br label %if.end2357

if.else2332:                                      ; preds = %if.end2306
  %sub2333 = add nsw i32 %i_mvc, -1, !dbg !2434
    #dbg_value(i32 %sub2333, !1560, !DIExpression(), !2433)
    #dbg_value(i32 0, !1555, !DIExpression(), !2433)
  %cmp2334.not = icmp eq i32 %0, 0, !dbg !2436
  br i1 %cmp2334.not, label %if.end2353, label %if.then2336, !dbg !2438

if.then2336:                                      ; preds = %if.else2332
  %406 = load i16, ptr %mvp, align 16, !dbg !2439
  %conv2339 = sext i16 %406 to i32, !dbg !2439
  %407 = load i16, ptr %mvc, align 2, !dbg !2441
  %conv2342 = sext i16 %407 to i32, !dbg !2441
  %sub2343 = sub nsw i32 %conv2339, %conv2342, !dbg !2442
  %408 = call i32 @llvm.abs.i32(i32 %sub2343, i1 true), !dbg !2443
  %409 = load i16, ptr %arrayidx33, align 2, !dbg !2444
  %conv2346 = sext i16 %409 to i32, !dbg !2444
  %arrayidx2348 = getelementptr inbounds i8, ptr %mvc, i64 2, !dbg !2445
  %410 = load i16, ptr %arrayidx2348, align 2, !dbg !2445
  %conv2349 = sext i16 %410 to i32, !dbg !2445
  %sub2350 = sub nsw i32 %conv2346, %conv2349, !dbg !2446
  %411 = call i32 @llvm.abs.i32(i32 %sub2350, i1 true), !dbg !2447
  %add2351 = add nuw nsw i32 %411, %408, !dbg !2448
    #dbg_value(i32 %add2351, !1555, !DIExpression(), !2433)
    #dbg_value(i32 %i_mvc, !1560, !DIExpression(), !2433)
  br label %if.end2353, !dbg !2449

if.end2353:                                       ; preds = %if.then2336, %if.else2332
  %denom.0 = phi i32 [ %i_mvc, %if.then2336 ], [ %sub2333, %if.else2332 ], !dbg !2450
  %mvd.0 = phi i32 [ %add2351, %if.then2336 ], [ 0, %if.else2332 ], !dbg !2450
    #dbg_value(i32 %mvd.0, !1555, !DIExpression(), !2433)
    #dbg_value(i32 %denom.0, !1560, !DIExpression(), !2433)
    #dbg_value(ptr %mvc, !2451, !DIExpression(), !2460)
    #dbg_value(i32 %i_mvc, !2456, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !2460)
    #dbg_value(i32 0, !2458, !DIExpression(), !2462)
    #dbg_value(i32 0, !2457, !DIExpression(), !2460)
  %cmp30.i = icmp sgt i32 %i_mvc, 1, !dbg !2463
  br i1 %cmp30.i, label %for.body.preheader.i6206, label %x264_predictor_difference.exit, !dbg !2465

for.body.preheader.i6206:                         ; preds = %if.end2353
    #dbg_value(i32 %i_mvc, !2456, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !2460)
  %.pre.i = load i16, ptr %mvc, align 2, !dbg !2466
  %arrayidx11.phi.trans.insert.i = getelementptr inbounds i8, ptr %mvc, i64 2
  %.pre35.i = load i16, ptr %arrayidx11.phi.trans.insert.i, align 2, !dbg !2468
  %narrow = add nsw i32 %i_mvc, -2
  %412 = zext nneg i32 %narrow to i64
  %413 = add nuw nsw i64 %412, 1, !dbg !2465
  %min.iters.check6649 = icmp ult i32 %narrow, 15, !dbg !2465
  br i1 %min.iters.check6649, label %for.body.i6207.preheader, label %vector.ph6650, !dbg !2465

vector.ph6650:                                    ; preds = %for.body.preheader.i6206
  %n.vec6652 = and i64 %413, 4294967280, !dbg !2465
  %vector.recur.init = insertelement <4 x i16> poison, i16 %.pre35.i, i64 3, !dbg !2465
  %vector.recur.init6656 = insertelement <4 x i16> poison, i16 %.pre.i, i64 3, !dbg !2465
  br label %vector.body6654, !dbg !2465

vector.body6654:                                  ; preds = %vector.body6654, %vector.ph6650
  %index6655 = phi i64 [ 0, %vector.ph6650 ], [ %index.next6673, %vector.body6654 ], !dbg !2469
  %vector.recur = phi <4 x i16> [ %vector.recur.init, %vector.ph6650 ], [ %strided.vec6672, %vector.body6654 ]
  %vector.recur6657 = phi <4 x i16> [ %vector.recur.init6656, %vector.ph6650 ], [ %strided.vec6668, %vector.body6654 ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph6650 ], [ %466, %vector.body6654 ]
  %vec.phi6658 = phi <4 x i32> [ zeroinitializer, %vector.ph6650 ], [ %467, %vector.body6654 ]
  %vec.phi6659 = phi <4 x i32> [ zeroinitializer, %vector.ph6650 ], [ %468, %vector.body6654 ]
  %vec.phi6660 = phi <4 x i32> [ zeroinitializer, %vector.ph6650 ], [ %469, %vector.body6654 ]
  %414 = or disjoint i64 %index6655, 1, !dbg !2469
  %415 = or disjoint i64 %index6655, 5, !dbg !2469
  %416 = or disjoint i64 %index6655, 9, !dbg !2469
  %417 = or disjoint i64 %index6655, 13, !dbg !2469
  %418 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %414, !dbg !2470
  %419 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %415, !dbg !2470
  %420 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %416, !dbg !2470
  %421 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %417, !dbg !2470
  %wide.vec6661 = load <8 x i16>, ptr %418, align 2, !dbg !2470
  %wide.vec6662 = load <8 x i16>, ptr %419, align 2, !dbg !2470
  %wide.vec6663 = load <8 x i16>, ptr %420, align 2, !dbg !2470
  %wide.vec6664 = load <8 x i16>, ptr %421, align 2, !dbg !2470
  %strided.vec6665 = shufflevector <8 x i16> %wide.vec6661, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>, !dbg !2470
  %strided.vec6666 = shufflevector <8 x i16> %wide.vec6662, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>, !dbg !2470
  %strided.vec6667 = shufflevector <8 x i16> %wide.vec6663, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>, !dbg !2470
  %strided.vec6668 = shufflevector <8 x i16> %wide.vec6664, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>, !dbg !2470
  %strided.vec6669 = shufflevector <8 x i16> %wide.vec6661, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>, !dbg !2470
  %strided.vec6670 = shufflevector <8 x i16> %wide.vec6662, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>, !dbg !2470
  %strided.vec6671 = shufflevector <8 x i16> %wide.vec6663, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>, !dbg !2470
  %strided.vec6672 = shufflevector <8 x i16> %wide.vec6664, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>, !dbg !2470
  %422 = shufflevector <4 x i16> %vector.recur6657, <4 x i16> %strided.vec6665, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %423 = shufflevector <4 x i16> %strided.vec6665, <4 x i16> %strided.vec6666, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %424 = shufflevector <4 x i16> %strided.vec6666, <4 x i16> %strided.vec6667, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %425 = shufflevector <4 x i16> %strided.vec6667, <4 x i16> %strided.vec6668, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %426 = sext <4 x i16> %422 to <4 x i32>, !dbg !2466
  %427 = sext <4 x i16> %423 to <4 x i32>, !dbg !2466
  %428 = sext <4 x i16> %424 to <4 x i32>, !dbg !2466
  %429 = sext <4 x i16> %425 to <4 x i32>, !dbg !2466
  %430 = shufflevector <4 x i16> %vector.recur, <4 x i16> %strided.vec6669, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %431 = shufflevector <4 x i16> %strided.vec6669, <4 x i16> %strided.vec6670, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %432 = shufflevector <4 x i16> %strided.vec6670, <4 x i16> %strided.vec6671, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %433 = shufflevector <4 x i16> %strided.vec6671, <4 x i16> %strided.vec6672, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %434 = sext <4 x i16> %strided.vec6665 to <4 x i32>, !dbg !2470
  %435 = sext <4 x i16> %strided.vec6666 to <4 x i32>, !dbg !2470
  %436 = sext <4 x i16> %strided.vec6667 to <4 x i32>, !dbg !2470
  %437 = sext <4 x i16> %strided.vec6668 to <4 x i32>, !dbg !2470
  %438 = sub nsw <4 x i32> %426, %434, !dbg !2471
  %439 = sub nsw <4 x i32> %427, %435, !dbg !2471
  %440 = sub nsw <4 x i32> %428, %436, !dbg !2471
  %441 = sub nsw <4 x i32> %429, %437, !dbg !2471
  %442 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %438, i1 true), !dbg !2472
  %443 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %439, i1 true), !dbg !2472
  %444 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %440, i1 true), !dbg !2472
  %445 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %441, i1 true), !dbg !2472
  %446 = sext <4 x i16> %430 to <4 x i32>, !dbg !2468
  %447 = sext <4 x i16> %431 to <4 x i32>, !dbg !2468
  %448 = sext <4 x i16> %432 to <4 x i32>, !dbg !2468
  %449 = sext <4 x i16> %433 to <4 x i32>, !dbg !2468
  %450 = sext <4 x i16> %strided.vec6669 to <4 x i32>, !dbg !2473
  %451 = sext <4 x i16> %strided.vec6670 to <4 x i32>, !dbg !2473
  %452 = sext <4 x i16> %strided.vec6671 to <4 x i32>, !dbg !2473
  %453 = sext <4 x i16> %strided.vec6672 to <4 x i32>, !dbg !2473
  %454 = sub nsw <4 x i32> %446, %450, !dbg !2474
  %455 = sub nsw <4 x i32> %447, %451, !dbg !2474
  %456 = sub nsw <4 x i32> %448, %452, !dbg !2474
  %457 = sub nsw <4 x i32> %449, %453, !dbg !2474
  %458 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %454, i1 true), !dbg !2475
  %459 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %455, i1 true), !dbg !2475
  %460 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %456, i1 true), !dbg !2475
  %461 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %457, i1 true), !dbg !2475
  %462 = add <4 x i32> %442, %vec.phi, !dbg !2476
  %463 = add <4 x i32> %443, %vec.phi6658, !dbg !2476
  %464 = add <4 x i32> %444, %vec.phi6659, !dbg !2476
  %465 = add <4 x i32> %445, %vec.phi6660, !dbg !2476
  %466 = add <4 x i32> %462, %458, !dbg !2477
  %467 = add <4 x i32> %463, %459, !dbg !2477
  %468 = add <4 x i32> %464, %460, !dbg !2477
  %469 = add <4 x i32> %465, %461, !dbg !2477
  %index.next6673 = add nuw i64 %index6655, 16, !dbg !2469
  %470 = icmp eq i64 %index.next6673, %n.vec6652, !dbg !2469
  br i1 %470, label %middle.block6647, label %vector.body6654, !dbg !2469, !llvm.loop !2478

middle.block6647:                                 ; preds = %vector.body6654
  %bin.rdx = add <4 x i32> %467, %466, !dbg !2465
  %bin.rdx6674 = add <4 x i32> %468, %bin.rdx, !dbg !2465
  %bin.rdx6675 = add <4 x i32> %469, %bin.rdx6674, !dbg !2465
  %471 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx6675), !dbg !2465
  %vector.recur.extract = extractelement <8 x i16> %wide.vec6664, i64 7
  %vector.recur.extract6676 = extractelement <8 x i16> %wide.vec6664, i64 6
  %cmp.n6677 = icmp eq i64 %413, %n.vec6652, !dbg !2465
  br i1 %cmp.n6677, label %x264_predictor_difference.exit, label %for.body.i6207.preheader, !dbg !2465

for.body.i6207.preheader:                         ; preds = %middle.block6647, %for.body.preheader.i6206
  %.ph = phi i16 [ %.pre35.i, %for.body.preheader.i6206 ], [ %vector.recur.extract, %middle.block6647 ]
  %.ph6679 = phi i16 [ %.pre.i, %for.body.preheader.i6206 ], [ %vector.recur.extract6676, %middle.block6647 ]
  %indvars.iv.i6208.ph = phi i64 [ 0, %for.body.preheader.i6206 ], [ %n.vec6652, %middle.block6647 ]
  %sum.031.i.ph = phi i32 [ 0, %for.body.preheader.i6206 ], [ %471, %middle.block6647 ]
  br label %for.body.i6207, !dbg !2465

for.body.i6207:                                   ; preds = %for.body.i6207.preheader, %for.body.i6207
  %472 = phi i16 [ %476, %for.body.i6207 ], [ %.ph, %for.body.i6207.preheader ], !dbg !2468
  %473 = phi i16 [ %474, %for.body.i6207 ], [ %.ph6679, %for.body.i6207.preheader ], !dbg !2466
  %indvars.iv.i6208 = phi i64 [ %indvars.iv.next.i6209, %for.body.i6207 ], [ %indvars.iv.i6208.ph, %for.body.i6207.preheader ]
  %sum.031.i = phi i32 [ %add20.i, %for.body.i6207 ], [ %sum.031.i.ph, %for.body.i6207.preheader ]
    #dbg_value(i64 %indvars.iv.i6208, !2458, !DIExpression(), !2462)
    #dbg_value(i32 %sum.031.i, !2457, !DIExpression(), !2460)
  %conv3.i = sext i16 %473 to i32, !dbg !2466
  %indvars.iv.next.i6209 = add nuw nsw i64 %indvars.iv.i6208, 1, !dbg !2469
  %arrayidx5.i = getelementptr inbounds [2 x i16], ptr %mvc, i64 %indvars.iv.next.i6209, !dbg !2470
  %474 = load i16, ptr %arrayidx5.i, align 2, !dbg !2470
  %conv7.i = sext i16 %474 to i32, !dbg !2470
  %sub8.i = sub nsw i32 %conv3.i, %conv7.i, !dbg !2471
  %475 = call i32 @llvm.abs.i32(i32 %sub8.i, i1 true), !dbg !2472
  %conv12.i = sext i16 %472 to i32, !dbg !2468
  %arrayidx16.i6210 = getelementptr inbounds i8, ptr %arrayidx5.i, i64 2, !dbg !2473
  %476 = load i16, ptr %arrayidx16.i6210, align 2, !dbg !2473
  %conv17.i = sext i16 %476 to i32, !dbg !2473
  %sub18.i = sub nsw i32 %conv12.i, %conv17.i, !dbg !2474
  %477 = call i32 @llvm.abs.i32(i32 %sub18.i, i1 true), !dbg !2475
  %add19.i = add nuw nsw i32 %475, %sum.031.i, !dbg !2476
  %add20.i = add nuw nsw i32 %add19.i, %477, !dbg !2477
    #dbg_value(i64 %indvars.iv.next.i6209, !2458, !DIExpression(), !2462)
    #dbg_value(i32 %add20.i, !2457, !DIExpression(), !2460)
  %exitcond.not.i6211 = icmp eq i64 %indvars.iv.i6208, %412, !dbg !2463
  br i1 %exitcond.not.i6211, label %x264_predictor_difference.exit, label %for.body.i6207, !dbg !2465, !llvm.loop !2480

x264_predictor_difference.exit:                   ; preds = %for.body.i6207, %middle.block6647, %if.end2353
  %sum.0.lcssa.i = phi i32 [ 0, %if.end2353 ], [ %471, %middle.block6647 ], [ %add20.i, %for.body.i6207 ], !dbg !2460
  %add2356 = add nsw i32 %sum.0.lcssa.i, %mvd.0, !dbg !2481
    #dbg_value(i32 %add2356, !1555, !DIExpression(), !2433)
  br label %if.end2357

if.end2357:                                       ; preds = %if.then2311, %if.else2315, %x264_predictor_difference.exit
  %denom.1 = phi i32 [ 1, %if.else2315 ], [ %denom.0, %x264_predictor_difference.exit ], [ 1, %if.then2311 ], !dbg !2433
  %mvd.1 = phi i32 [ %add2330, %if.else2315 ], [ %add2356, %x264_predictor_difference.exit ], [ 25, %if.then2311 ], !dbg !2482
    #dbg_value(i32 %mvd.1, !1555, !DIExpression(), !2433)
    #dbg_value(i32 %denom.1, !1560, !DIExpression(), !2433)
  %arrayidx2359 = getelementptr inbounds [7 x i8], ptr @x264_me_search_ref.x264_pixel_size_shift, i64 0, i64 %idxprom, !dbg !2483
  %478 = load i8, ptr %arrayidx2359, align 1, !dbg !2483
  %conv2360 = zext i8 %478 to i32, !dbg !2483
  %shr2361 = lshr i32 1000, %conv2360, !dbg !2483
  %cmp2362 = icmp slt i32 %bcost.86, %shr2361, !dbg !2483
  br i1 %cmp2362, label %cond.end2383, label %cond.false2365, !dbg !2483

cond.false2365:                                   ; preds = %if.end2357
  %shr2369 = lshr i32 2000, %conv2360, !dbg !2484
  %cmp2370 = icmp ult i32 %bcost.86, %shr2369, !dbg !2484
  br i1 %cmp2370, label %cond.end2383, label %cond.false2373, !dbg !2484

cond.false2373:                                   ; preds = %cond.false2365
  %shr2377 = lshr i32 4000, %conv2360, !dbg !2485
  %cmp2378 = icmp ult i32 %bcost.86, %shr2377, !dbg !2485
  %cond2380 = select i1 %cmp2378, i64 2, i64 3, !dbg !2485
  br label %cond.end2383, !dbg !2484

cond.end2383:                                     ; preds = %cond.false2373, %cond.false2365, %if.end2357
  %cond2384 = phi i64 [ 0, %if.end2357 ], [ %cond2380, %cond.false2373 ], [ 1, %cond.false2365 ], !dbg !2483
    #dbg_value(i32 poison, !1558, !DIExpression(), !2433)
  %mul2385 = mul nsw i32 %denom.1, 10, !dbg !2486
  %cmp2386 = icmp slt i32 %mvd.1, %mul2385, !dbg !2487
  br i1 %cmp2386, label %cond.end2401, label %cond.false2389, !dbg !2488

cond.false2389:                                   ; preds = %cond.end2383
  %mul2390 = mul nsw i32 %denom.1, 20, !dbg !2489
  %cmp2391 = icmp slt i32 %mvd.1, %mul2390, !dbg !2490
  br i1 %cmp2391, label %cond.end2401, label %cond.false2394, !dbg !2491

cond.false2394:                                   ; preds = %cond.false2389
  %mul2395 = mul nsw i32 %denom.1, 40, !dbg !2492
  %cmp2396 = icmp slt i32 %mvd.1, %mul2395, !dbg !2493
  %cond2398 = select i1 %cmp2396, i64 2, i64 3, !dbg !2494
  br label %cond.end2401, !dbg !2491

cond.end2401:                                     ; preds = %cond.false2394, %cond.false2389, %cond.end2383
  %cond2402 = phi i64 [ 0, %cond.end2383 ], [ %cond2398, %cond.false2394 ], [ 1, %cond.false2389 ], !dbg !2488
    #dbg_value(i64 %cond2402, !1559, !DIExpression(), !2433)
  %arrayidx2406 = getelementptr inbounds [4 x [4 x i8]], ptr @x264_me_search_ref.range_mul, i64 0, i64 %cond2402, i64 %cond2384, !dbg !2495
  %479 = load i8, ptr %arrayidx2406, align 1, !dbg !2495
  %conv2407 = zext i8 %479 to i32, !dbg !2495
  %mul2408 = mul nsw i32 %4, %conv2407, !dbg !2496
  %shr2409 = ashr i32 %mul2408, 2, !dbg !2497
    #dbg_value(i32 %shr2409, !1402, !DIExpression(), !1843)
  br label %if.end2410, !dbg !2498

if.end2410:                                       ; preds = %if.end2306, %cond.end2401
  %i_me_range.1 = phi i32 [ %shr2409, %cond.end2401 ], [ %4, %if.end2306 ], !dbg !1843
    #dbg_value(i32 %i_me_range.1, !1402, !DIExpression(), !1843)
    #dbg_value(i32 %cross_start.2, !1561, !DIExpression(), !2499)
  %sub2412 = sub nsw i32 %11, %bmx.236221, !dbg !2500
  %sub2413 = sub nsw i32 %bmx.236221, %9, !dbg !2500
  %sub2412.sub2413 = call i32 @llvm.smin.i32(i32 %sub2412, i32 %sub2413), !dbg !2500
  %cmp2422.not = icmp sgt i32 %i_me_range.1, %sub2412.sub2413, !dbg !2500
  br i1 %cmp2422.not, label %if.end2560, label %for.cond2425.preheader, !dbg !2501

for.cond2425.preheader:                           ; preds = %if.end2410
  %sub2426 = add nsw i32 %i_me_range.1, -2
    #dbg_value(i32 %bmx.62, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.62, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.86, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %cross_start.2, !1561, !DIExpression(), !2499)
  %cmp24276370 = icmp slt i32 %cross_start.2, %sub2426, !dbg !2502
  br i1 %cmp24276370, label %for.body2429.lr.ph, label %if.end2560, !dbg !2503

for.body2429.lr.ph:                               ; preds = %for.cond2425.preheader
  %idx.ext2431 = sext i32 %bmx.236221 to i64
  %add.ptr2432 = getelementptr inbounds i8, ptr %6, i64 %idx.ext2431
  %mul2433 = mul nsw i32 %bmy.236219, %3
  %idx.ext2434 = sext i32 %mul2433 to i64
  %add.ptr2435 = getelementptr inbounds i8, ptr %add.ptr2432, i64 %idx.ext2434
  %shl2471 = shl i32 %bmy.236219, 2
  %idxprom2472 = sext i32 %shl2471 to i64
  %arrayidx2473 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2472
  %480 = sext i32 %cross_start.2 to i64, !dbg !2503
  %481 = sext i32 %sub2426 to i64, !dbg !2503
  br label %for.body2429, !dbg !2503

for.body2429:                                     ; preds = %for.body2429.lr.ph, %for.body2429
  %indvars.iv6515 = phi i64 [ %480, %for.body2429.lr.ph ], [ %indvars.iv.next6516, %for.body2429 ]
  %bmx.636374 = phi i32 [ %bmx.62, %for.body2429.lr.ph ], [ %bmx.67, %for.body2429 ]
  %bmy.636373 = phi i32 [ %bmy.62, %for.body2429.lr.ph ], [ %bmy.67, %for.body2429 ]
  %bcost.876372 = phi i32 [ %bcost.86, %for.body2429.lr.ph ], [ %bcost.91, %for.body2429 ]
    #dbg_value(i32 %bmx.636374, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.636373, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.876372, !1405, !DIExpression(), !1843)
    #dbg_value(i64 %indvars.iv6515, !1561, !DIExpression(), !2499)
    #dbg_value(ptr %add.ptr2435, !1563, !DIExpression(), !2504)
  %482 = load ptr, ptr %arrayidx1051, align 8, !dbg !2505
  %add.ptr2441 = getelementptr inbounds i8, ptr %add.ptr2435, i64 %indvars.iv6515, !dbg !2505
  %483 = sub nsw i64 0, %indvars.iv6515, !dbg !2505
  %add.ptr2447 = getelementptr inbounds i8, ptr %add.ptr2435, i64 %483, !dbg !2505
  %484 = add nsw i64 %indvars.iv6515, 2, !dbg !2505
  %add.ptr2453 = getelementptr inbounds i8, ptr %add.ptr2435, i64 %484, !dbg !2505
  %485 = sub nsw i64 -2, %indvars.iv6515, !dbg !2505
  %add.ptr2460 = getelementptr inbounds i8, ptr %add.ptr2435, i64 %485, !dbg !2505
  call void %482(ptr noundef %5, ptr noundef %add.ptr2441, ptr noundef %add.ptr2447, ptr noundef %add.ptr2453, ptr noundef %add.ptr2460, i32 noundef %3, ptr noundef nonnull %costs) #6, !dbg !2505
  %486 = trunc i64 %indvars.iv6515 to i32, !dbg !2505
  %487 = add i32 %bmx.236221, %486, !dbg !2505
  %shl2466 = shl i32 %487, 2, !dbg !2505
  %idxprom2467 = sext i32 %shl2466 to i64, !dbg !2505
  %arrayidx2468 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2467, !dbg !2505
  %488 = load i16, ptr %arrayidx2468, align 2, !dbg !2505
  %conv2469 = zext i16 %488 to i32, !dbg !2505
  %489 = load i16, ptr %arrayidx2473, align 2, !dbg !2505
  %conv2474 = zext i16 %489 to i32, !dbg !2505
  %add2475 = add nuw nsw i32 %conv2474, %conv2469, !dbg !2505
  %490 = load i32, ptr %costs, align 16, !dbg !2505
  %add2477 = add nsw i32 %add2475, %490, !dbg !2505
  store i32 %add2477, ptr %costs, align 16, !dbg !2505, !DIAssignID !2506
    #dbg_assign(i32 %add2477, !1416, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2506, ptr %costs, !DIExpression(), !1843)
  %491 = trunc nsw i64 %indvars.iv6515 to i32, !dbg !2505
  %add2479 = sub i32 %bmx.236221, %491, !dbg !2505
  %shl2480 = shl i32 %add2479, 2, !dbg !2505
  %idxprom2481 = sext i32 %shl2480 to i64, !dbg !2505
  %arrayidx2482 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2481, !dbg !2505
  %492 = load i16, ptr %arrayidx2482, align 2, !dbg !2505
  %conv2483 = zext i16 %492 to i32, !dbg !2505
  %493 = load i16, ptr %arrayidx2473, align 2, !dbg !2505
  %conv2488 = zext i16 %493 to i32, !dbg !2505
  %add2489 = add nuw nsw i32 %conv2488, %conv2483, !dbg !2505
  %494 = load i32, ptr %arrayidx1093, align 4, !dbg !2505
  %add2491 = add nsw i32 %add2489, %494, !dbg !2505
  store i32 %add2491, ptr %arrayidx1093, align 4, !dbg !2505, !DIAssignID !2507
    #dbg_assign(i32 %add2491, !1416, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2507, ptr %arrayidx1093, !DIExpression(), !1843)
  %495 = trunc i64 %484 to i32, !dbg !2505
  %496 = add i32 %bmx.236221, %495, !dbg !2505
  %shl2494 = shl i32 %496, 2, !dbg !2505
  %idxprom2495 = sext i32 %shl2494 to i64, !dbg !2505
  %arrayidx2496 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2495, !dbg !2505
  %497 = load i16, ptr %arrayidx2496, align 2, !dbg !2505
  %conv2497 = zext i16 %497 to i32, !dbg !2505
  %498 = load i16, ptr %arrayidx2473, align 2, !dbg !2505
  %conv2502 = zext i16 %498 to i32, !dbg !2505
  %add2503 = add nuw nsw i32 %conv2502, %conv2497, !dbg !2505
  %499 = load i32, ptr %arrayidx1106, align 8, !dbg !2505
  %add2505 = add nsw i32 %add2503, %499, !dbg !2505
  store i32 %add2505, ptr %arrayidx1106, align 8, !dbg !2505, !DIAssignID !2508
    #dbg_assign(i32 %add2505, !1416, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2508, ptr %arrayidx1106, !DIExpression(), !1843)
  %500 = trunc i64 %485 to i32, !dbg !2505
  %501 = add i32 %bmx.236221, %500, !dbg !2505
  %shl2509 = shl i32 %501, 2, !dbg !2505
  %idxprom2510 = sext i32 %shl2509 to i64, !dbg !2505
  %arrayidx2511 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2510, !dbg !2505
  %502 = load i16, ptr %arrayidx2511, align 2, !dbg !2505
  %conv2512 = zext i16 %502 to i32, !dbg !2505
  %503 = load i16, ptr %arrayidx2473, align 2, !dbg !2505
  %conv2517 = zext i16 %503 to i32, !dbg !2505
  %add2518 = add nuw nsw i32 %conv2517, %conv2512, !dbg !2505
  %504 = load i32, ptr %arrayidx1119, align 4, !dbg !2505
  %add2520 = add nsw i32 %add2518, %504, !dbg !2505
  store i32 %add2520, ptr %arrayidx1119, align 4, !dbg !2505, !DIAssignID !2509
    #dbg_assign(i32 %add2520, !1416, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !2509, ptr %arrayidx1119, !DIExpression(), !1843)
  %cmp2522 = icmp slt i32 %add2477, %bcost.876372, !dbg !2510
  %bcost.88 = call i32 @llvm.smin.i32(i32 %add2477, i32 %bcost.876372), !dbg !2505
  %bmx.64 = select i1 %cmp2522, i32 %487, i32 %bmx.636374, !dbg !2505
    #dbg_value(i32 %bmx.64, !1403, !DIExpression(), !1843)
    #dbg_value(i32 poison, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.88, !1405, !DIExpression(), !1843)
  %cmp2530 = icmp slt i32 %add2491, %bcost.88, !dbg !2512
  %bcost.89 = call i32 @llvm.smin.i32(i32 %add2491, i32 %bcost.88), !dbg !2505
  %505 = or i1 %cmp2522, %cmp2530, !dbg !2505
  %bmx.65 = select i1 %cmp2530, i32 %add2479, i32 %bmx.64, !dbg !2505
    #dbg_value(i32 %bmx.65, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.89, !1405, !DIExpression(), !1843)
  %cmp2539 = icmp slt i32 %add2505, %bcost.89, !dbg !2514
  %bcost.90 = call i32 @llvm.smin.i32(i32 %add2505, i32 %bcost.89), !dbg !2505
  %bmx.66 = select i1 %cmp2539, i32 %496, i32 %bmx.65, !dbg !2505
    #dbg_value(i32 %bmx.66, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.90, !1405, !DIExpression(), !1843)
  %cmp2548 = icmp slt i32 %add2520, %bcost.90, !dbg !2516
  %bcost.91 = call i32 @llvm.smin.i32(i32 %add2520, i32 %bcost.90), !dbg !2505
  %506 = or i1 %cmp2539, %cmp2548, !dbg !2505
  %507 = select i1 %506, i1 true, i1 %505, !dbg !2505
  %bmy.67 = select i1 %507, i32 %bmy.236219, i32 %bmy.636373, !dbg !2505
  %bmx.67 = select i1 %cmp2548, i32 %501, i32 %bmx.66, !dbg !2505
    #dbg_value(i32 %bmx.67, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.67, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.91, !1405, !DIExpression(), !1843)
  %indvars.iv.next6516 = add nsw i64 %indvars.iv6515, 4, !dbg !2502
    #dbg_value(i64 %indvars.iv.next6516, !1561, !DIExpression(), !2499)
  %cmp2427 = icmp slt i64 %indvars.iv.next6516, %481, !dbg !2502
  br i1 %cmp2427, label %for.body2429, label %if.end2560.loopexit, !dbg !2503, !llvm.loop !2518

if.end2560.loopexit:                              ; preds = %for.body2429
  %508 = trunc nsw i64 %indvars.iv.next6516 to i32, !dbg !2519
  br label %if.end2560, !dbg !2519

if.end2560:                                       ; preds = %if.end2560.loopexit, %for.cond2425.preheader, %if.end2410
  %i2411.1 = phi i32 [ %cross_start.2, %if.end2410 ], [ %cross_start.2, %for.cond2425.preheader ], [ %508, %if.end2560.loopexit ], !dbg !2501
  %bcost.92 = phi i32 [ %bcost.86, %if.end2410 ], [ %bcost.86, %for.cond2425.preheader ], [ %bcost.91, %if.end2560.loopexit ], !dbg !2520
  %bmy.68 = phi i32 [ %bmy.62, %if.end2410 ], [ %bmy.62, %for.cond2425.preheader ], [ %bmy.67, %if.end2560.loopexit ], !dbg !2520
  %bmx.68 = phi i32 [ %bmx.62, %if.end2410 ], [ %bmx.62, %for.cond2425.preheader ], [ %bmx.67, %if.end2560.loopexit ], !dbg !2520
    #dbg_value(i32 %bmx.68, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.68, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.92, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %i2411.1, !1561, !DIExpression(), !2499)
  %cmp25626379 = icmp slt i32 %i2411.1, %i_me_range.1, !dbg !2519
  br i1 %cmp25626379, label %for.body2564.lr.ph, label %for.end2631, !dbg !2522

for.body2564.lr.ph:                               ; preds = %if.end2560
  %fpelcmp2571 = getelementptr inbounds i8, ptr %h, i64 31928
  %arrayidx2573 = getelementptr inbounds [7 x ptr], ptr %fpelcmp2571, i64 0, i64 %idxprom
  %mul2574 = mul nsw i32 %bmy.236219, %3
  %shl2585 = shl i32 %bmy.236219, 2
  %idxprom2586 = sext i32 %shl2585 to i64
  %arrayidx2587 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2586
  %509 = sext i32 %i2411.1 to i64, !dbg !2522
  %510 = sext i32 %bmx.236221 to i64, !dbg !2522
  %511 = sext i32 %11 to i64, !dbg !2522
  %512 = sext i32 %mul2574 to i64, !dbg !2522
  %513 = sext i32 %9 to i64, !dbg !2522
  %514 = sext i32 %i_me_range.1 to i64, !dbg !2522
  %invariant.gep6614 = getelementptr i8, ptr %6, i64 %512, !dbg !2522
  %invariant.gep6616 = getelementptr i8, ptr %6, i64 %512, !dbg !2522
  br label %for.body2564, !dbg !2522

for.body2564:                                     ; preds = %for.body2564.lr.ph, %for.inc2629
  %indvars.iv6524 = phi i64 [ %509, %for.body2564.lr.ph ], [ %indvars.iv.next6525, %for.inc2629 ]
  %bmx.696383 = phi i32 [ %bmx.68, %for.body2564.lr.ph ], [ %bmx.73, %for.inc2629 ]
  %bmy.696382 = phi i32 [ %bmy.68, %for.body2564.lr.ph ], [ %bmy.73, %for.inc2629 ]
  %bcost.936381 = phi i32 [ %bcost.92, %for.body2564.lr.ph ], [ %bcost.97, %for.inc2629 ]
    #dbg_value(i32 %bmx.696383, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.696382, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.936381, !1405, !DIExpression(), !1843)
    #dbg_value(i64 %indvars.iv6524, !1561, !DIExpression(), !2499)
  %515 = add nsw i64 %indvars.iv6524, %510, !dbg !2523
  %cmp2566.not = icmp sgt i64 %515, %511, !dbg !2523
  br i1 %cmp2566.not, label %if.end2596, label %if.then2568, !dbg !2524

if.then2568:                                      ; preds = %for.body2564
  %516 = load ptr, ptr %arrayidx2573, align 8, !dbg !2525
  %gep6615 = getelementptr i8, ptr %invariant.gep6614, i64 %515, !dbg !2525
  %call2579 = call i32 %516(ptr noundef %5, i32 noundef 16, ptr noundef %gep6615, i32 noundef %3) #6, !dbg !2525
  %517 = trunc nsw i64 %515 to i32, !dbg !2525
  %shl2581 = shl i32 %517, 2, !dbg !2525
  %idxprom2582 = sext i32 %shl2581 to i64, !dbg !2525
  %arrayidx2583 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2582, !dbg !2525
  %518 = load i16, ptr %arrayidx2583, align 2, !dbg !2525
  %conv2584 = zext i16 %518 to i32, !dbg !2525
  %519 = load i16, ptr %arrayidx2587, align 2, !dbg !2525
  %conv2588 = zext i16 %519 to i32, !dbg !2525
  %add2589 = add i32 %call2579, %conv2584, !dbg !2525
  %add2590 = add i32 %add2589, %conv2588, !dbg !2525
    #dbg_value(i32 %add2590, !1568, !DIExpression(), !2526)
  %cmp2591 = icmp slt i32 %add2590, %bcost.936381, !dbg !2527
  %bcost.94 = call i32 @llvm.smin.i32(i32 %add2590, i32 %bcost.936381), !dbg !2525
  %bmy.70 = select i1 %cmp2591, i32 %bmy.236219, i32 %bmy.696382, !dbg !2525
  %bmx.70 = select i1 %cmp2591, i32 %517, i32 %bmx.696383, !dbg !2525
    #dbg_value(i32 %bmx.70, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.70, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.94, !1405, !DIExpression(), !1843)
  br label %if.end2596, !dbg !2525

if.end2596:                                       ; preds = %if.then2568, %for.body2564
  %bcost.95 = phi i32 [ %bcost.94, %if.then2568 ], [ %bcost.936381, %for.body2564 ], !dbg !2223
  %bmy.71 = phi i32 [ %bmy.70, %if.then2568 ], [ %bmy.696382, %for.body2564 ], !dbg !2223
  %bmx.71 = phi i32 [ %bmx.70, %if.then2568 ], [ %bmx.696383, %for.body2564 ], !dbg !2223
    #dbg_value(i32 %bmx.71, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.71, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.95, !1405, !DIExpression(), !1843)
  %520 = sub nsw i64 %510, %indvars.iv6524, !dbg !2529
  %cmp2598.not = icmp slt i64 %520, %513, !dbg !2529
  br i1 %cmp2598.not, label %for.inc2629, label %if.then2600, !dbg !2524

if.then2600:                                      ; preds = %if.end2596
  %521 = load ptr, ptr %arrayidx2573, align 8, !dbg !2530
  %gep6617 = getelementptr i8, ptr %invariant.gep6616, i64 %520, !dbg !2530
  %call2611 = call i32 %521(ptr noundef %5, i32 noundef 16, ptr noundef %gep6617, i32 noundef %3) #6, !dbg !2530
  %522 = trunc nsw i64 %520 to i32, !dbg !2530
  %shl2613 = shl i32 %522, 2, !dbg !2530
  %idxprom2614 = sext i32 %shl2613 to i64, !dbg !2530
  %arrayidx2615 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2614, !dbg !2530
  %523 = load i16, ptr %arrayidx2615, align 2, !dbg !2530
  %conv2616 = zext i16 %523 to i32, !dbg !2530
  %524 = load i16, ptr %arrayidx2587, align 2, !dbg !2530
  %conv2620 = zext i16 %524 to i32, !dbg !2530
  %add2621 = add i32 %call2611, %conv2616, !dbg !2530
  %add2622 = add i32 %add2621, %conv2620, !dbg !2530
    #dbg_value(i32 %add2622, !1574, !DIExpression(), !2531)
  %cmp2623 = icmp slt i32 %add2622, %bcost.95, !dbg !2532
  %bcost.96 = call i32 @llvm.smin.i32(i32 %add2622, i32 %bcost.95), !dbg !2530
  %bmy.72 = select i1 %cmp2623, i32 %bmy.236219, i32 %bmy.71, !dbg !2530
  %bmx.72 = select i1 %cmp2623, i32 %522, i32 %bmx.71, !dbg !2530
    #dbg_value(i32 %bmx.72, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.72, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.96, !1405, !DIExpression(), !1843)
  br label %for.inc2629, !dbg !2530

for.inc2629:                                      ; preds = %if.end2596, %if.then2600
  %bcost.97 = phi i32 [ %bcost.96, %if.then2600 ], [ %bcost.95, %if.end2596 ], !dbg !2524
  %bmy.73 = phi i32 [ %bmy.72, %if.then2600 ], [ %bmy.71, %if.end2596 ], !dbg !2524
  %bmx.73 = phi i32 [ %bmx.72, %if.then2600 ], [ %bmx.71, %if.end2596 ], !dbg !2524
    #dbg_value(i32 %bmx.73, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.73, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.97, !1405, !DIExpression(), !1843)
  %indvars.iv.next6525 = add nsw i64 %indvars.iv6524, 2, !dbg !2519
    #dbg_value(i64 %indvars.iv.next6525, !1561, !DIExpression(), !2499)
  %cmp2562 = icmp slt i64 %indvars.iv.next6525, %514, !dbg !2519
  br i1 %cmp2562, label %for.body2564, label %for.end2631, !dbg !2522, !llvm.loop !2534

for.end2631:                                      ; preds = %for.inc2629, %if.end2560
  %bcost.93.lcssa = phi i32 [ %bcost.92, %if.end2560 ], [ %bcost.97, %for.inc2629 ], !dbg !2223
  %bmy.69.lcssa = phi i32 [ %bmy.68, %if.end2560 ], [ %bmy.73, %for.inc2629 ], !dbg !2223
  %bmx.69.lcssa = phi i32 [ %bmx.68, %if.end2560 ], [ %bmx.73, %for.inc2629 ], !dbg !2223
    #dbg_value(i32 %cross_start.2, !1561, !DIExpression(), !2499)
  %shr2632 = ashr i32 %i_me_range.1, 1, !dbg !2535
  %sub2633 = sub nsw i32 %12, %bmy.236219, !dbg !2535
  %sub2634 = sub nsw i32 %bmy.236219, %10, !dbg !2535
  %sub2633.sub2634 = call i32 @llvm.smin.i32(i32 %sub2633, i32 %sub2634), !dbg !2535
  %cmp2643.not = icmp sgt i32 %shr2632, %sub2633.sub2634, !dbg !2535
  br i1 %cmp2643.not, label %if.end2778, label %for.cond2646.preheader, !dbg !2501

for.cond2646.preheader:                           ; preds = %for.end2631
  %sub2648 = add nsw i32 %shr2632, -2
    #dbg_value(i32 %bmx.69.lcssa, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.69.lcssa, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.93.lcssa, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %cross_start.2, !1561, !DIExpression(), !2499)
  %cmp26496387 = icmp slt i32 %cross_start.2, %sub2648, !dbg !2536
  br i1 %cmp26496387, label %for.body2651.lr.ph, label %if.end2778, !dbg !2537

for.body2651.lr.ph:                               ; preds = %for.cond2646.preheader
  %idx.ext2653 = sext i32 %bmx.236221 to i64
  %add.ptr2654 = getelementptr inbounds i8, ptr %6, i64 %idx.ext2653
  %mul2655 = mul nsw i32 %bmy.236219, %3
  %idx.ext2656 = sext i32 %mul2655 to i64
  %add.ptr2657 = getelementptr inbounds i8, ptr %add.ptr2654, i64 %idx.ext2656
  %shl2684 = shl i32 %bmx.236221, 2
  %idxprom2685 = sext i32 %shl2684 to i64
  %arrayidx2686 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2685
  %525 = sext i32 %cross_start.2 to i64, !dbg !2537
  %526 = sext i32 %sub2648 to i64, !dbg !2537
  br label %for.body2651, !dbg !2537

for.body2651:                                     ; preds = %for.body2651.lr.ph, %for.body2651
  %indvars.iv6531 = phi i64 [ %525, %for.body2651.lr.ph ], [ %indvars.iv.next6532, %for.body2651 ]
  %bmx.746391 = phi i32 [ %bmx.69.lcssa, %for.body2651.lr.ph ], [ %bmx.78, %for.body2651 ]
  %bmy.746390 = phi i32 [ %bmy.69.lcssa, %for.body2651.lr.ph ], [ %bmy.78, %for.body2651 ]
  %bcost.986389 = phi i32 [ %bcost.93.lcssa, %for.body2651.lr.ph ], [ %bcost.102, %for.body2651 ]
    #dbg_value(i32 %bmx.746391, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.746390, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.986389, !1405, !DIExpression(), !1843)
    #dbg_value(i64 %indvars.iv6531, !1561, !DIExpression(), !2499)
    #dbg_value(ptr %add.ptr2657, !1577, !DIExpression(), !2538)
  %527 = load ptr, ptr %arrayidx1051, align 8, !dbg !2539
  %528 = mul nsw i64 %indvars.iv6531, %idx.ext1058, !dbg !2539
  %add.ptr2665 = getelementptr inbounds i8, ptr %add.ptr2657, i64 %528, !dbg !2539
  %.neg6585 = mul i64 %528, -4294967296, !dbg !2539
  %idx.ext2669 = ashr exact i64 %.neg6585, 32, !dbg !2539
  %add.ptr2670 = getelementptr inbounds i8, ptr %add.ptr2657, i64 %idx.ext2669, !dbg !2539
  %529 = add nsw i64 %indvars.iv6531, 2, !dbg !2539
  %530 = mul nsw i64 %529, %idx.ext1058, !dbg !2539
  %add.ptr2675 = getelementptr inbounds i8, ptr %add.ptr2657, i64 %530, !dbg !2539
  %531 = sub nsw i64 -2, %indvars.iv6531, !dbg !2539
  %532 = mul nsw i64 %531, %idx.ext1058, !dbg !2539
  %add.ptr2681 = getelementptr inbounds i8, ptr %add.ptr2657, i64 %532, !dbg !2539
  call void %527(ptr noundef %5, ptr noundef %add.ptr2665, ptr noundef %add.ptr2670, ptr noundef %add.ptr2675, ptr noundef %add.ptr2681, i32 noundef %3, ptr noundef nonnull %costs) #6, !dbg !2539
  %533 = load i16, ptr %arrayidx2686, align 2, !dbg !2539
  %conv2687 = zext i16 %533 to i32, !dbg !2539
  %534 = trunc i64 %indvars.iv6531 to i32, !dbg !2539
  %535 = add i32 %bmy.236219, %534, !dbg !2539
  %shl2689 = shl i32 %535, 2, !dbg !2539
  %idxprom2690 = sext i32 %shl2689 to i64, !dbg !2539
  %arrayidx2691 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2690, !dbg !2539
  %536 = load i16, ptr %arrayidx2691, align 2, !dbg !2539
  %conv2692 = zext i16 %536 to i32, !dbg !2539
  %add2693 = add nuw nsw i32 %conv2692, %conv2687, !dbg !2539
  %537 = load i32, ptr %costs, align 16, !dbg !2539
  %add2695 = add nsw i32 %add2693, %537, !dbg !2539
  store i32 %add2695, ptr %costs, align 16, !dbg !2539, !DIAssignID !2540
    #dbg_assign(i32 %add2695, !1416, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2540, ptr %costs, !DIExpression(), !1843)
  %538 = load i16, ptr %arrayidx2686, align 2, !dbg !2539
  %conv2700 = zext i16 %538 to i32, !dbg !2539
  %539 = trunc nsw i64 %indvars.iv6531 to i32, !dbg !2539
  %add2702 = sub i32 %bmy.236219, %539, !dbg !2539
  %shl2703 = shl i32 %add2702, 2, !dbg !2539
  %idxprom2704 = sext i32 %shl2703 to i64, !dbg !2539
  %arrayidx2705 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2704, !dbg !2539
  %540 = load i16, ptr %arrayidx2705, align 2, !dbg !2539
  %conv2706 = zext i16 %540 to i32, !dbg !2539
  %add2707 = add nuw nsw i32 %conv2706, %conv2700, !dbg !2539
  %541 = load i32, ptr %arrayidx1093, align 4, !dbg !2539
  %add2709 = add nsw i32 %add2707, %541, !dbg !2539
  store i32 %add2709, ptr %arrayidx1093, align 4, !dbg !2539, !DIAssignID !2541
    #dbg_assign(i32 %add2709, !1416, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2541, ptr %arrayidx1093, !DIExpression(), !1843)
  %542 = load i16, ptr %arrayidx2686, align 2, !dbg !2539
  %conv2714 = zext i16 %542 to i32, !dbg !2539
  %543 = trunc i64 %529 to i32, !dbg !2539
  %544 = add i32 %bmy.236219, %543, !dbg !2539
  %shl2717 = shl i32 %544, 2, !dbg !2539
  %idxprom2718 = sext i32 %shl2717 to i64, !dbg !2539
  %arrayidx2719 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2718, !dbg !2539
  %545 = load i16, ptr %arrayidx2719, align 2, !dbg !2539
  %conv2720 = zext i16 %545 to i32, !dbg !2539
  %add2721 = add nuw nsw i32 %conv2720, %conv2714, !dbg !2539
  %546 = load i32, ptr %arrayidx1106, align 8, !dbg !2539
  %add2723 = add nsw i32 %add2721, %546, !dbg !2539
  store i32 %add2723, ptr %arrayidx1106, align 8, !dbg !2539, !DIAssignID !2542
    #dbg_assign(i32 %add2723, !1416, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2542, ptr %arrayidx1106, !DIExpression(), !1843)
  %547 = load i16, ptr %arrayidx2686, align 2, !dbg !2539
  %conv2728 = zext i16 %547 to i32, !dbg !2539
  %548 = trunc i64 %531 to i32, !dbg !2539
  %549 = add i32 %bmy.236219, %548, !dbg !2539
  %shl2732 = shl i32 %549, 2, !dbg !2539
  %idxprom2733 = sext i32 %shl2732 to i64, !dbg !2539
  %arrayidx2734 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2733, !dbg !2539
  %550 = load i16, ptr %arrayidx2734, align 2, !dbg !2539
  %conv2735 = zext i16 %550 to i32, !dbg !2539
  %add2736 = add nuw nsw i32 %conv2735, %conv2728, !dbg !2539
  %551 = load i32, ptr %arrayidx1119, align 4, !dbg !2539
  %add2738 = add nsw i32 %add2736, %551, !dbg !2539
  store i32 %add2738, ptr %arrayidx1119, align 4, !dbg !2539, !DIAssignID !2543
    #dbg_assign(i32 %add2738, !1416, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !2543, ptr %arrayidx1119, !DIExpression(), !1843)
  %cmp2740 = icmp slt i32 %add2695, %bcost.986389, !dbg !2544
  %bcost.99 = call i32 @llvm.smin.i32(i32 %add2695, i32 %bcost.986389), !dbg !2539
  %bmy.75 = select i1 %cmp2740, i32 %535, i32 %bmy.746390, !dbg !2539
    #dbg_value(i32 poison, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.75, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.99, !1405, !DIExpression(), !1843)
  %cmp2748 = icmp slt i32 %add2709, %bcost.99, !dbg !2546
  %bcost.100 = call i32 @llvm.smin.i32(i32 %add2709, i32 %bcost.99), !dbg !2539
  %bmy.76 = select i1 %cmp2748, i32 %add2702, i32 %bmy.75, !dbg !2539
  %552 = or i1 %cmp2740, %cmp2748, !dbg !2539
    #dbg_value(i32 %bmy.76, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.100, !1405, !DIExpression(), !1843)
  %cmp2757 = icmp slt i32 %add2723, %bcost.100, !dbg !2548
  %bcost.101 = call i32 @llvm.smin.i32(i32 %add2723, i32 %bcost.100), !dbg !2539
  %bmy.77 = select i1 %cmp2757, i32 %544, i32 %bmy.76, !dbg !2539
    #dbg_value(i32 %bmy.77, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.101, !1405, !DIExpression(), !1843)
  %cmp2766 = icmp slt i32 %add2738, %bcost.101, !dbg !2550
  %bcost.102 = call i32 @llvm.smin.i32(i32 %add2738, i32 %bcost.101), !dbg !2539
  %bmy.78 = select i1 %cmp2766, i32 %549, i32 %bmy.77, !dbg !2539
  %553 = or i1 %cmp2757, %cmp2766, !dbg !2539
  %554 = select i1 %553, i1 true, i1 %552, !dbg !2539
  %bmx.78 = select i1 %554, i32 %bmx.236221, i32 %bmx.746391, !dbg !2539
    #dbg_value(i32 %bmx.78, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.78, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.102, !1405, !DIExpression(), !1843)
  %indvars.iv.next6532 = add nsw i64 %indvars.iv6531, 4, !dbg !2536
    #dbg_value(i64 %indvars.iv.next6532, !1561, !DIExpression(), !2499)
  %cmp2649 = icmp slt i64 %indvars.iv.next6532, %526, !dbg !2536
  br i1 %cmp2649, label %for.body2651, label %if.end2778.loopexit, !dbg !2537, !llvm.loop !2552

if.end2778.loopexit:                              ; preds = %for.body2651
  %555 = trunc nsw i64 %indvars.iv.next6532 to i32, !dbg !2553
  br label %if.end2778, !dbg !2553

if.end2778:                                       ; preds = %if.end2778.loopexit, %for.cond2646.preheader, %for.end2631
  %i2411.4 = phi i32 [ %cross_start.2, %for.end2631 ], [ %cross_start.2, %for.cond2646.preheader ], [ %555, %if.end2778.loopexit ], !dbg !2501
  %bcost.103 = phi i32 [ %bcost.93.lcssa, %for.end2631 ], [ %bcost.93.lcssa, %for.cond2646.preheader ], [ %bcost.102, %if.end2778.loopexit ], !dbg !2520
  %bmy.79 = phi i32 [ %bmy.69.lcssa, %for.end2631 ], [ %bmy.69.lcssa, %for.cond2646.preheader ], [ %bmy.78, %if.end2778.loopexit ], !dbg !2520
  %bmx.79 = phi i32 [ %bmx.69.lcssa, %for.end2631 ], [ %bmx.69.lcssa, %for.cond2646.preheader ], [ %bmx.78, %if.end2778.loopexit ], !dbg !2520
    #dbg_value(i32 %bmx.79, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.79, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.103, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %i2411.4, !1561, !DIExpression(), !2499)
  %cmp27816396 = icmp slt i32 %i2411.4, %shr2632, !dbg !2553
  br i1 %cmp27816396, label %for.body2783.lr.ph, label %if.end2778.for.end2850_crit_edge, !dbg !2554

if.end2778.for.end2850_crit_edge:                 ; preds = %if.end2778
  %.pre6578 = sext i32 %bmx.236221 to i64, !dbg !2555
  br label %for.end2850, !dbg !2554

for.body2783.lr.ph:                               ; preds = %if.end2778
  %fpelcmp2790 = getelementptr inbounds i8, ptr %h, i64 31928
  %arrayidx2792 = getelementptr inbounds [7 x ptr], ptr %fpelcmp2790, i64 0, i64 %idxprom
  %shl2799 = shl i32 %bmx.236221, 2
  %idxprom2800 = sext i32 %shl2799 to i64
  %arrayidx2801 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2800
  %556 = sext i32 %i2411.4 to i64, !dbg !2554
  %557 = sext i32 %bmy.236219 to i64, !dbg !2554
  %558 = sext i32 %12 to i64, !dbg !2554
  %559 = sext i32 %bmx.236221 to i64, !dbg !2554
  %560 = sext i32 %10 to i64, !dbg !2554
  %561 = sext i32 %shr2632 to i64, !dbg !2554
  %invariant.gep6618 = getelementptr i8, ptr %6, i64 %559, !dbg !2554
  %invariant.gep6620 = getelementptr i8, ptr %6, i64 %559, !dbg !2554
  br label %for.body2783, !dbg !2554

for.body2783:                                     ; preds = %for.body2783.lr.ph, %for.inc2848
  %indvars.iv6542 = phi i64 [ %556, %for.body2783.lr.ph ], [ %indvars.iv.next6543, %for.inc2848 ]
  %bmx.806400 = phi i32 [ %bmx.79, %for.body2783.lr.ph ], [ %bmx.84, %for.inc2848 ]
  %bmy.806399 = phi i32 [ %bmy.79, %for.body2783.lr.ph ], [ %bmy.84, %for.inc2848 ]
  %bcost.1046398 = phi i32 [ %bcost.103, %for.body2783.lr.ph ], [ %bcost.108, %for.inc2848 ]
    #dbg_value(i32 %bmx.806400, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.806399, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.1046398, !1405, !DIExpression(), !1843)
    #dbg_value(i64 %indvars.iv6542, !1561, !DIExpression(), !2499)
  %562 = add nsw i64 %indvars.iv6542, %557, !dbg !2556
  %cmp2785.not = icmp sgt i64 %562, %558, !dbg !2556
  br i1 %cmp2785.not, label %if.end2815, label %if.then2787, !dbg !2557

if.then2787:                                      ; preds = %for.body2783
  %563 = load ptr, ptr %arrayidx2792, align 8, !dbg !2558
  %564 = mul nsw i64 %562, %idx.ext1058, !dbg !2558
  %gep6619 = getelementptr i8, ptr %invariant.gep6618, i64 %564, !dbg !2558
  %call2798 = call i32 %563(ptr noundef %5, i32 noundef 16, ptr noundef %gep6619, i32 noundef %3) #6, !dbg !2558
  %565 = load i16, ptr %arrayidx2801, align 2, !dbg !2558
  %conv2802 = zext i16 %565 to i32, !dbg !2558
  %566 = trunc nsw i64 %562 to i32, !dbg !2558
  %shl2804 = shl i32 %566, 2, !dbg !2558
  %idxprom2805 = sext i32 %shl2804 to i64, !dbg !2558
  %arrayidx2806 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2805, !dbg !2558
  %567 = load i16, ptr %arrayidx2806, align 2, !dbg !2558
  %conv2807 = zext i16 %567 to i32, !dbg !2558
  %add2808 = add i32 %call2798, %conv2802, !dbg !2558
  %add2809 = add i32 %add2808, %conv2807, !dbg !2558
    #dbg_value(i32 %add2809, !1582, !DIExpression(), !2559)
  %cmp2810 = icmp slt i32 %add2809, %bcost.1046398, !dbg !2560
  %bcost.105 = call i32 @llvm.smin.i32(i32 %add2809, i32 %bcost.1046398), !dbg !2558
  %bmy.81 = select i1 %cmp2810, i32 %566, i32 %bmy.806399, !dbg !2558
  %bmx.81 = select i1 %cmp2810, i32 %bmx.236221, i32 %bmx.806400, !dbg !2558
    #dbg_value(i32 %bmx.81, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.81, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.105, !1405, !DIExpression(), !1843)
  br label %if.end2815, !dbg !2558

if.end2815:                                       ; preds = %if.then2787, %for.body2783
  %bcost.106 = phi i32 [ %bcost.105, %if.then2787 ], [ %bcost.1046398, %for.body2783 ], !dbg !2223
  %bmy.82 = phi i32 [ %bmy.81, %if.then2787 ], [ %bmy.806399, %for.body2783 ], !dbg !2223
  %bmx.82 = phi i32 [ %bmx.81, %if.then2787 ], [ %bmx.806400, %for.body2783 ], !dbg !2223
    #dbg_value(i32 %bmx.82, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.82, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.106, !1405, !DIExpression(), !1843)
  %568 = sub nsw i64 %557, %indvars.iv6542, !dbg !2562
  %cmp2817.not = icmp slt i64 %568, %560, !dbg !2562
  br i1 %cmp2817.not, label %for.inc2848, label %if.then2819, !dbg !2557

if.then2819:                                      ; preds = %if.end2815
  %569 = load ptr, ptr %arrayidx2792, align 8, !dbg !2563
  %570 = mul nsw i64 %568, %idx.ext1058, !dbg !2563
  %gep6621 = getelementptr i8, ptr %invariant.gep6620, i64 %570, !dbg !2563
  %call2830 = call i32 %569(ptr noundef %5, i32 noundef 16, ptr noundef %gep6621, i32 noundef %3) #6, !dbg !2563
  %571 = load i16, ptr %arrayidx2801, align 2, !dbg !2563
  %conv2834 = zext i16 %571 to i32, !dbg !2563
  %572 = trunc nsw i64 %568 to i32, !dbg !2563
  %shl2836 = shl i32 %572, 2, !dbg !2563
  %idxprom2837 = sext i32 %shl2836 to i64, !dbg !2563
  %arrayidx2838 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2837, !dbg !2563
  %573 = load i16, ptr %arrayidx2838, align 2, !dbg !2563
  %conv2839 = zext i16 %573 to i32, !dbg !2563
  %add2840 = add i32 %call2830, %conv2834, !dbg !2563
  %add2841 = add i32 %add2840, %conv2839, !dbg !2563
    #dbg_value(i32 %add2841, !1588, !DIExpression(), !2564)
  %cmp2842 = icmp slt i32 %add2841, %bcost.106, !dbg !2565
  %bcost.107 = call i32 @llvm.smin.i32(i32 %add2841, i32 %bcost.106), !dbg !2563
  %bmy.83 = select i1 %cmp2842, i32 %572, i32 %bmy.82, !dbg !2563
  %bmx.83 = select i1 %cmp2842, i32 %bmx.236221, i32 %bmx.82, !dbg !2563
    #dbg_value(i32 %bmx.83, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.83, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.107, !1405, !DIExpression(), !1843)
  br label %for.inc2848, !dbg !2563

for.inc2848:                                      ; preds = %if.end2815, %if.then2819
  %bcost.108 = phi i32 [ %bcost.107, %if.then2819 ], [ %bcost.106, %if.end2815 ], !dbg !2557
  %bmy.84 = phi i32 [ %bmy.83, %if.then2819 ], [ %bmy.82, %if.end2815 ], !dbg !2557
  %bmx.84 = phi i32 [ %bmx.83, %if.then2819 ], [ %bmx.82, %if.end2815 ], !dbg !2557
    #dbg_value(i32 %bmx.84, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.84, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.108, !1405, !DIExpression(), !1843)
  %indvars.iv.next6543 = add nsw i64 %indvars.iv6542, 2, !dbg !2553
    #dbg_value(i64 %indvars.iv.next6543, !1561, !DIExpression(), !2499)
  %cmp2781 = icmp slt i64 %indvars.iv.next6543, %561, !dbg !2553
  br i1 %cmp2781, label %for.body2783, label %for.end2850, !dbg !2554, !llvm.loop !2567

for.end2850:                                      ; preds = %for.inc2848, %if.end2778.for.end2850_crit_edge
  %idx.ext2852.pre-phi = phi i64 [ %.pre6578, %if.end2778.for.end2850_crit_edge ], [ %559, %for.inc2848 ], !dbg !2555
  %bcost.104.lcssa = phi i32 [ %bcost.103, %if.end2778.for.end2850_crit_edge ], [ %bcost.108, %for.inc2848 ], !dbg !2223
  %bmy.80.lcssa = phi i32 [ %bmy.79, %if.end2778.for.end2850_crit_edge ], [ %bmy.84, %for.inc2848 ], !dbg !2223
  %bmx.80.lcssa = phi i32 [ %bmx.79, %if.end2778.for.end2850_crit_edge ], [ %bmx.84, %for.inc2848 ], !dbg !2223
  %add.ptr2853 = getelementptr inbounds i8, ptr %6, i64 %idx.ext2852.pre-phi, !dbg !2555
  %mul2854 = mul nsw i32 %bmy.236219, %3, !dbg !2555
  %idx.ext2855 = sext i32 %mul2854 to i64, !dbg !2555
  %add.ptr2856 = getelementptr inbounds i8, ptr %add.ptr2853, i64 %idx.ext2855, !dbg !2555
    #dbg_value(ptr %add.ptr2856, !1591, !DIExpression(), !2568)
  %574 = load ptr, ptr %arrayidx1051, align 8, !dbg !2555
  %add.ptr2861 = getelementptr inbounds i8, ptr %add.ptr2856, i64 -2, !dbg !2555
  %mul2862 = mul nsw i32 %3, -2, !dbg !2555
  %idx.ext2863 = sext i32 %mul2862 to i64, !dbg !2555
  %add.ptr2864 = getelementptr inbounds i8, ptr %add.ptr2861, i64 %idx.ext2863, !dbg !2555
  %mul2866 = shl nsw i32 %3, 1, !dbg !2555
  %idx.ext2867 = sext i32 %mul2866 to i64, !dbg !2555
  %add.ptr2868 = getelementptr inbounds i8, ptr %add.ptr2861, i64 %idx.ext2867, !dbg !2555
  %add.ptr2869 = getelementptr inbounds i8, ptr %add.ptr2856, i64 2, !dbg !2555
  %add.ptr2872 = getelementptr inbounds i8, ptr %add.ptr2869, i64 %idx.ext2863, !dbg !2555
  %add.ptr2876 = getelementptr inbounds i8, ptr %add.ptr2869, i64 %idx.ext2867, !dbg !2555
  call void %574(ptr noundef %5, ptr noundef nonnull %add.ptr2864, ptr noundef nonnull %add.ptr2868, ptr noundef nonnull %add.ptr2872, ptr noundef nonnull %add.ptr2876, i32 noundef %3, ptr noundef nonnull %costs) #6, !dbg !2555
  %add2878 = add nsw i32 %bmx.236221, -2, !dbg !2555
  %shl2879 = shl i32 %add2878, 2, !dbg !2555
  %idxprom2880 = sext i32 %shl2879 to i64, !dbg !2555
  %arrayidx2881 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2880, !dbg !2555
  %575 = load i16, ptr %arrayidx2881, align 2, !dbg !2555
  %conv2882 = zext i16 %575 to i32, !dbg !2555
  %add2883 = add nsw i32 %bmy.236219, -2, !dbg !2555
  %shl2884 = shl i32 %add2883, 2, !dbg !2555
  %idxprom2885 = sext i32 %shl2884 to i64, !dbg !2555
  %arrayidx2886 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2885, !dbg !2555
  %576 = load i16, ptr %arrayidx2886, align 2, !dbg !2555
  %conv2887 = zext i16 %576 to i32, !dbg !2555
  %add2888 = add nuw nsw i32 %conv2887, %conv2882, !dbg !2555
  %577 = load i32, ptr %costs, align 16, !dbg !2555
  %add2890 = add nsw i32 %add2888, %577, !dbg !2555
  store i32 %add2890, ptr %costs, align 16, !dbg !2555, !DIAssignID !2569
    #dbg_assign(i32 %add2890, !1416, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2569, ptr %costs, !DIExpression(), !1843)
  %578 = load i16, ptr %arrayidx2881, align 2, !dbg !2555
  %conv2895 = zext i16 %578 to i32, !dbg !2555
  %add2896 = add nsw i32 %bmy.236219, 2, !dbg !2555
  %shl2897 = shl i32 %add2896, 2, !dbg !2555
  %idxprom2898 = sext i32 %shl2897 to i64, !dbg !2555
  %arrayidx2899 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2898, !dbg !2555
  %579 = load i16, ptr %arrayidx2899, align 2, !dbg !2555
  %conv2900 = zext i16 %579 to i32, !dbg !2555
  %add2901 = add nuw nsw i32 %conv2900, %conv2895, !dbg !2555
  %580 = load i32, ptr %arrayidx1093, align 4, !dbg !2555
  %add2903 = add nsw i32 %add2901, %580, !dbg !2555
  store i32 %add2903, ptr %arrayidx1093, align 4, !dbg !2555, !DIAssignID !2570
    #dbg_assign(i32 %add2903, !1416, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2570, ptr %arrayidx1093, !DIExpression(), !1843)
  %add2904 = add nsw i32 %bmx.236221, 2, !dbg !2555
  %shl2905 = shl i32 %add2904, 2, !dbg !2555
  %idxprom2906 = sext i32 %shl2905 to i64, !dbg !2555
  %arrayidx2907 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2906, !dbg !2555
  %581 = load i16, ptr %arrayidx2907, align 2, !dbg !2555
  %conv2908 = zext i16 %581 to i32, !dbg !2555
  %582 = load i16, ptr %arrayidx2886, align 2, !dbg !2555
  %conv2913 = zext i16 %582 to i32, !dbg !2555
  %add2914 = add nuw nsw i32 %conv2913, %conv2908, !dbg !2555
  %583 = load i32, ptr %arrayidx1106, align 8, !dbg !2555
  %add2916 = add nsw i32 %add2914, %583, !dbg !2555
  store i32 %add2916, ptr %arrayidx1106, align 8, !dbg !2555, !DIAssignID !2571
    #dbg_assign(i32 %add2916, !1416, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2571, ptr %arrayidx1106, !DIExpression(), !1843)
  %584 = load i16, ptr %arrayidx2907, align 2, !dbg !2555
  %conv2921 = zext i16 %584 to i32, !dbg !2555
  %585 = load i16, ptr %arrayidx2899, align 2, !dbg !2555
  %conv2926 = zext i16 %585 to i32, !dbg !2555
  %add2927 = add nuw nsw i32 %conv2926, %conv2921, !dbg !2555
  %586 = load i32, ptr %arrayidx1119, align 4, !dbg !2555
  %add2929 = add nsw i32 %add2927, %586, !dbg !2555
  store i32 %add2929, ptr %arrayidx1119, align 4, !dbg !2555, !DIAssignID !2572
    #dbg_assign(i32 %add2929, !1416, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !2572, ptr %arrayidx1119, !DIExpression(), !1843)
  %cmp2931 = icmp slt i32 %add2890, %bcost.104.lcssa, !dbg !2573
  %bcost.109 = call i32 @llvm.smin.i32(i32 %add2890, i32 %bcost.104.lcssa), !dbg !2555
  %bmy.85 = select i1 %cmp2931, i32 %add2883, i32 %bmy.80.lcssa, !dbg !2555
    #dbg_value(i32 poison, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.85, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.109, !1405, !DIExpression(), !1843)
  %cmp2939 = icmp slt i32 %add2903, %bcost.109, !dbg !2575
  %bcost.110 = call i32 @llvm.smin.i32(i32 %add2903, i32 %bcost.109), !dbg !2555
  %bmy.86 = select i1 %cmp2939, i32 %add2896, i32 %bmy.85, !dbg !2555
  %587 = or i1 %cmp2931, %cmp2939, !dbg !2555
  %bmx.86 = select i1 %587, i32 %add2878, i32 %bmx.80.lcssa, !dbg !2555
    #dbg_value(i32 %bmx.86, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.86, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.110, !1405, !DIExpression(), !1843)
  %cmp2947 = icmp slt i32 %add2916, %bcost.110, !dbg !2577
  %bcost.111 = call i32 @llvm.smin.i32(i32 %add2916, i32 %bcost.110), !dbg !2555
  %bmy.87 = select i1 %cmp2947, i32 %add2883, i32 %bmy.86, !dbg !2555
    #dbg_value(i32 poison, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.87, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.111, !1405, !DIExpression(), !1843)
  %cmp2955 = icmp slt i32 %add2929, %bcost.111, !dbg !2579
  %bcost.112 = call i32 @llvm.smin.i32(i32 %add2929, i32 %bcost.111), !dbg !2555
  %bmy.88 = select i1 %cmp2955, i32 %add2896, i32 %bmy.87, !dbg !2555
  %588 = or i1 %cmp2947, %cmp2955, !dbg !2555
  %bmx.88 = select i1 %588, i32 %add2904, i32 %bmx.86, !dbg !2555
    #dbg_value(i32 %bmx.88, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.88, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.112, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %bmx.88, !1409, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.88, !1410, !DIExpression(), !1843)
  %mul2962 = shl nsw i32 %bmx.88, 2, !dbg !2581
  %idx.ext2963 = sext i32 %mul2962 to i64, !dbg !2582
  %add.ptr2964 = getelementptr inbounds i16, ptr %add.ptr, i64 %idx.ext2963, !dbg !2582
    #dbg_value(ptr %add.ptr2964, !1593, !DIExpression(), !2223)
  %mul2965 = shl nsw i32 %bmy.88, 2, !dbg !2583
  %idx.ext2966 = sext i32 %mul2965 to i64, !dbg !2584
  %add.ptr2967 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idx.ext2966, !dbg !2584
    #dbg_value(ptr %add.ptr2967, !1594, !DIExpression(), !2223)
    #dbg_value(i32 1, !1595, !DIExpression(), !2223)
  %sub2971 = sub nsw i32 %11, %bmx.88
  %sub2972 = sub nsw i32 %bmx.88, %9
  %sub2973 = sub nsw i32 %12, %bmy.88
  %sub2974 = sub nsw i32 %bmy.88, %10
  %sub2973.sub2974 = call i32 @llvm.smin.i32(i32 %sub2973, i32 %sub2974)
  %cond2999 = call i32 @llvm.smin.i32(i32 %sub2972, i32 %sub2973.sub2974)
  %cond3034 = call i32 @llvm.smin.i32(i32 %sub2971, i32 %cond2999)
  %idx.ext3101 = sext i32 %bmx.88 to i64
  %add.ptr3102 = getelementptr inbounds i8, ptr %6, i64 %idx.ext3101
  %add.ptr3174 = getelementptr inbounds i8, ptr %costs, i64 16
  %add.ptr3209 = getelementptr inbounds i8, ptr %costs, i64 32
  %add.ptr3244 = getelementptr inbounds i8, ptr %costs, i64 48
  %arrayidx3312 = getelementptr inbounds i8, ptr %costs, i64 20
  %arrayidx3323 = getelementptr inbounds i8, ptr %costs, i64 24
  %arrayidx3334 = getelementptr inbounds i8, ptr %costs, i64 28
  %arrayidx3356 = getelementptr inbounds i8, ptr %costs, i64 36
  %arrayidx3367 = getelementptr inbounds i8, ptr %costs, i64 40
  %arrayidx3378 = getelementptr inbounds i8, ptr %costs, i64 44
  %arrayidx3400 = getelementptr inbounds i8, ptr %costs, i64 52
  %arrayidx3411 = getelementptr inbounds i8, ptr %costs, i64 56
  %arrayidx3422 = getelementptr inbounds i8, ptr %costs, i64 60
  %fpelcmp3071 = getelementptr inbounds i8, ptr %h, i64 31928
  %arrayidx3073 = getelementptr inbounds [7 x ptr], ptr %fpelcmp3071, i64 0, i64 %idxprom
  %shr3533 = ashr i32 %i_me_range.1, 2
  %589 = sext i32 %bmy.88 to i64, !dbg !2585
  %590 = sext i32 %cond3034 to i64, !dbg !2585
  %591 = mul nsw i64 %589, %idx.ext1058, !dbg !2585
  %592 = getelementptr i8, ptr %6, i64 %591, !dbg !2585
  %scevgep = getelementptr i8, ptr %592, i64 %idx.ext3101, !dbg !2585
  %smax6572 = call i32 @llvm.smax.i32(i32 %shr3533, i32 1), !dbg !2585
  %593 = add nuw nsw i32 %smax6572, 1, !dbg !2585
  %wide.trip.count6573 = zext nneg i32 %593 to i64, !dbg !2586
  br label %do.body2969, !dbg !2585

do.body2969:                                      ; preds = %do.cond3531, %for.end2850
  %indvars.iv6555 = phi i64 [ %indvars.iv.next6556, %do.cond3531 ], [ 1, %for.end2850 ], !dbg !2223
  %bcost.113 = phi i32 [ %bcost.133, %do.cond3531 ], [ %bcost.112, %for.end2850 ], !dbg !2587
  %bmy.89 = phi i32 [ %bmy.94, %do.cond3531 ], [ %bmy.88, %for.end2850 ], !dbg !2587
  %bmx.89 = phi i32 [ %bmx.94, %do.cond3531 ], [ %bmx.88, %for.end2850 ], !dbg !2587
    #dbg_value(i32 %bmx.89, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.89, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.113, !1405, !DIExpression(), !1843)
    #dbg_value(i64 %indvars.iv6555, !1595, !DIExpression(), !2223)
  %594 = shl nsw i64 %indvars.iv6555, 2, !dbg !2589
  %cmp3035 = icmp sgt i64 %594, %590, !dbg !2590
  br i1 %cmp3035, label %for.body3042.preheader, label %if.else3098, !dbg !2591

for.body3042.preheader:                           ; preds = %do.body2969
  %595 = trunc nuw nsw i64 %indvars.iv6555 to i32
  br label %for.body3042, !dbg !2592

for.body3042:                                     ; preds = %for.body3042.preheader, %if.end3093
  %indvars.iv6551 = phi i64 [ 0, %for.body3042.preheader ], [ %indvars.iv.next6552, %if.end3093 ]
  %bmx.906407 = phi i32 [ %bmx.89, %for.body3042.preheader ], [ %bmx.92, %if.end3093 ]
  %bmy.906406 = phi i32 [ %bmy.89, %for.body3042.preheader ], [ %bmy.92, %if.end3093 ]
  %bcost.1146405 = phi i32 [ %bcost.113, %for.body3042.preheader ], [ %bcost.116, %if.end3093 ]
    #dbg_value(i32 %bmx.906407, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.906406, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.1146405, !1405, !DIExpression(), !1843)
    #dbg_value(i64 %indvars.iv6551, !1596, !DIExpression(), !2593)
  %arrayidx3045 = getelementptr inbounds [16 x [2 x i8]], ptr @x264_me_search_ref.hex4, i64 0, i64 %indvars.iv6551, !dbg !2594
  %596 = load i8, ptr %arrayidx3045, align 2, !dbg !2594
  %conv3047 = sext i8 %596 to i32, !dbg !2594
  %mul3048 = mul nsw i32 %595, %conv3047, !dbg !2595
  %add3049 = add nsw i32 %mul3048, %bmx.88, !dbg !2596
    #dbg_value(i32 %add3049, !1601, !DIExpression(), !2597)
  %arrayidx3053 = getelementptr inbounds i8, ptr %arrayidx3045, i64 1, !dbg !2598
  %597 = load i8, ptr %arrayidx3053, align 1, !dbg !2598
  %conv3054 = sext i8 %597 to i32, !dbg !2598
  %mul3055 = mul nsw i32 %595, %conv3054, !dbg !2599
  %add3056 = add nsw i32 %mul3055, %bmy.88, !dbg !2600
    #dbg_value(i32 %add3056, !1604, !DIExpression(), !2597)
  %shl3057 = shl i32 %add3049, 16, !dbg !2601
  %and3058 = and i32 %add3056, 32767, !dbg !2601
  %or3059 = or disjoint i32 %and3058, %shl3057, !dbg !2601
  %add3060 = add i32 %or3059, %or, !dbg !2601
  %sub3064 = sub i32 %or29, %or3059, !dbg !2601
  %or3065 = or i32 %add3060, %sub3064, !dbg !2601
  %and3066 = and i32 %or3065, -2147467264, !dbg !2601
  %tobool3067.not = icmp eq i32 %and3066, 0, !dbg !2601
  br i1 %tobool3067.not, label %if.then3068, label %if.end3093, !dbg !2602

if.then3068:                                      ; preds = %for.body3042
  %598 = load ptr, ptr %arrayidx3073, align 8, !dbg !2603
  %mul3074 = mul nsw i32 %add3056, %3, !dbg !2603
  %add3075 = add nsw i32 %mul3074, %add3049, !dbg !2603
  %idxprom3076 = sext i32 %add3075 to i64, !dbg !2603
  %arrayidx3077 = getelementptr inbounds i8, ptr %6, i64 %idxprom3076, !dbg !2603
  %call3078 = call i32 %598(ptr noundef %5, i32 noundef 16, ptr noundef %arrayidx3077, i32 noundef %3) #6, !dbg !2603
  %shl3079 = shl i32 %add3049, 2, !dbg !2603
  %idxprom3080 = sext i32 %shl3079 to i64, !dbg !2603
  %arrayidx3081 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom3080, !dbg !2603
  %599 = load i16, ptr %arrayidx3081, align 2, !dbg !2603
  %conv3082 = zext i16 %599 to i32, !dbg !2603
  %shl3083 = shl i32 %add3056, 2, !dbg !2603
  %idxprom3084 = sext i32 %shl3083 to i64, !dbg !2603
  %arrayidx3085 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom3084, !dbg !2603
  %600 = load i16, ptr %arrayidx3085, align 2, !dbg !2603
  %conv3086 = zext i16 %600 to i32, !dbg !2603
  %add3087 = add i32 %call3078, %conv3082, !dbg !2603
  %add3088 = add i32 %add3087, %conv3086, !dbg !2603
    #dbg_value(i32 %add3088, !1605, !DIExpression(), !2604)
  %cmp3089 = icmp slt i32 %add3088, %bcost.1146405, !dbg !2605
  %bcost.115 = call i32 @llvm.smin.i32(i32 %add3088, i32 %bcost.1146405), !dbg !2603
  %bmy.91 = select i1 %cmp3089, i32 %add3056, i32 %bmy.906406, !dbg !2603
  %bmx.91 = select i1 %cmp3089, i32 %add3049, i32 %bmx.906407, !dbg !2603
    #dbg_value(i32 %bmx.91, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.91, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.115, !1405, !DIExpression(), !1843)
  br label %if.end3093, !dbg !2603

if.end3093:                                       ; preds = %if.then3068, %for.body3042
  %bcost.116 = phi i32 [ %bcost.1146405, %for.body3042 ], [ %bcost.115, %if.then3068 ], !dbg !2223
  %bmy.92 = phi i32 [ %bmy.906406, %for.body3042 ], [ %bmy.91, %if.then3068 ], !dbg !2223
  %bmx.92 = phi i32 [ %bmx.906407, %for.body3042 ], [ %bmx.91, %if.then3068 ], !dbg !2223
    #dbg_value(i32 %bmx.92, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.92, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.116, !1405, !DIExpression(), !1843)
  %indvars.iv.next6552 = add nuw nsw i64 %indvars.iv6551, 1, !dbg !2607
    #dbg_value(i64 %indvars.iv.next6552, !1596, !DIExpression(), !2593)
  %exitcond6554.not = icmp eq i64 %indvars.iv.next6552, 16, !dbg !2608
  br i1 %exitcond6554.not, label %do.cond3531, label %for.body3042, !dbg !2592, !llvm.loop !2609

if.else3098:                                      ; preds = %do.body2969
    #dbg_value(i32 0, !1608, !DIExpression(), !2611)
  %601 = sub nsw i64 %589, %594, !dbg !2612
  %602 = mul nsw i64 %601, %idx.ext1058, !dbg !2613
  %add.ptr3107 = getelementptr inbounds i8, ptr %add.ptr3102, i64 %602, !dbg !2614
    #dbg_value(ptr %add.ptr3107, !1610, !DIExpression(), !2611)
  %603 = mul nsw i64 %indvars.iv6555, %idx.ext1058, !dbg !2615
    #dbg_value(i64 %603, !1611, !DIExpression(), !2611)
  %604 = load ptr, ptr %arrayidx1051, align 8, !dbg !2616
  %605 = shl nsw i64 %603, 3, !dbg !2616
  %add.ptr3124 = getelementptr inbounds i8, ptr %add.ptr3107, i64 %605, !dbg !2616
  %606 = shl nuw nsw i64 %indvars.iv6555, 1, !dbg !2616
  %idx.neg3127 = sub nsw i64 0, %606, !dbg !2616
  %add.ptr3128 = getelementptr inbounds i8, ptr %add.ptr3107, i64 %idx.neg3127, !dbg !2616
  %add.ptr3131 = getelementptr inbounds i8, ptr %add.ptr3128, i64 %603, !dbg !2616
  %add.ptr3134 = getelementptr inbounds i8, ptr %add.ptr3107, i64 %606, !dbg !2616
  %add.ptr3137 = getelementptr inbounds i8, ptr %add.ptr3134, i64 %603, !dbg !2616
  call void %604(ptr noundef %5, ptr noundef %add.ptr3107, ptr noundef %add.ptr3124, ptr noundef nonnull %add.ptr3131, ptr noundef nonnull %add.ptr3137, i32 noundef %3, ptr noundef nonnull %costs) #6, !dbg !2616
  %607 = shl nsw i64 %603, 1, !dbg !2616
  %add.ptr3142 = getelementptr inbounds i8, ptr %add.ptr3107, i64 %607, !dbg !2616
    #dbg_value(ptr %add.ptr3142, !1610, !DIExpression(), !2611)
  %608 = load ptr, ptr %arrayidx1051, align 8, !dbg !2617
  %idx.neg3149 = sub nsw i64 0, %594, !dbg !2617
  %add.ptr3150 = getelementptr inbounds i8, ptr %add.ptr3142, i64 %idx.neg3149, !dbg !2617
  %add.ptr3156 = getelementptr inbounds i8, ptr %add.ptr3142, i64 %594, !dbg !2617
  %add.ptr3166 = getelementptr inbounds i8, ptr %add.ptr3150, i64 %603, !dbg !2617
  %add.ptr3172 = getelementptr inbounds i8, ptr %add.ptr3156, i64 %603, !dbg !2617
  call void %608(ptr noundef %5, ptr noundef nonnull %add.ptr3150, ptr noundef nonnull %add.ptr3156, ptr noundef nonnull %add.ptr3166, ptr noundef nonnull %add.ptr3172, i32 noundef %3, ptr noundef nonnull %add.ptr3174) #6, !dbg !2617
    #dbg_value(ptr %scevgep, !1610, !DIExpression(), !2611)
  %609 = load ptr, ptr %arrayidx1051, align 8, !dbg !2618
  %add.ptr3185 = getelementptr inbounds i8, ptr %scevgep, i64 %idx.neg3149, !dbg !2618
  %add.ptr3191 = getelementptr inbounds i8, ptr %scevgep, i64 %594, !dbg !2618
  %add.ptr3201 = getelementptr inbounds i8, ptr %add.ptr3185, i64 %603, !dbg !2618
  %add.ptr3207 = getelementptr inbounds i8, ptr %add.ptr3191, i64 %603, !dbg !2618
  call void %609(ptr noundef %5, ptr noundef nonnull %add.ptr3185, ptr noundef nonnull %add.ptr3191, ptr noundef nonnull %add.ptr3201, ptr noundef nonnull %add.ptr3207, i32 noundef %3, ptr noundef nonnull %add.ptr3209) #6, !dbg !2618
  %add.ptr3212 = getelementptr inbounds i8, ptr %scevgep, i64 %607, !dbg !2618
    #dbg_value(ptr %add.ptr3212, !1610, !DIExpression(), !2611)
  %610 = load ptr, ptr %arrayidx1051, align 8, !dbg !2619
  %add.ptr3220 = getelementptr inbounds i8, ptr %add.ptr3212, i64 %idx.neg3149, !dbg !2619
  %add.ptr3226 = getelementptr inbounds i8, ptr %add.ptr3212, i64 %594, !dbg !2619
  %add.ptr3233 = getelementptr inbounds i8, ptr %add.ptr3212, i64 %idx.neg3127, !dbg !2619
  %add.ptr3236 = getelementptr inbounds i8, ptr %add.ptr3233, i64 %603, !dbg !2619
  %add.ptr3239 = getelementptr inbounds i8, ptr %add.ptr3212, i64 %606, !dbg !2619
  %add.ptr3242 = getelementptr inbounds i8, ptr %add.ptr3239, i64 %603, !dbg !2619
  call void %610(ptr noundef %5, ptr noundef nonnull %add.ptr3220, ptr noundef nonnull %add.ptr3226, ptr noundef nonnull %add.ptr3236, ptr noundef nonnull %add.ptr3242, i32 noundef %3, ptr noundef nonnull %add.ptr3244) #6, !dbg !2619
    #dbg_value(!DIArgList(ptr %add.ptr3212, i64 %607), !1610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2611)
  %611 = load i16, ptr %add.ptr2964, align 2, !dbg !2620
  %conv3251 = zext i16 %611 to i32, !dbg !2620
  %612 = mul nsw i64 %indvars.iv6555, -16, !dbg !2620
  %arrayidx3254 = getelementptr inbounds i16, ptr %add.ptr2967, i64 %612, !dbg !2620
  %613 = load i16, ptr %arrayidx3254, align 2, !dbg !2620
  %conv3255 = zext i16 %613 to i32, !dbg !2620
  %add3256 = add nuw nsw i32 %conv3255, %conv3251, !dbg !2620
  %614 = load i32, ptr %costs, align 16, !dbg !2620
  %add3258 = add nsw i32 %add3256, %614, !dbg !2620
  store i32 %add3258, ptr %costs, align 16, !dbg !2620, !DIAssignID !2621
    #dbg_assign(i32 %add3258, !1416, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2621, ptr %costs, !DIExpression(), !1843)
  %615 = load i16, ptr %add.ptr2964, align 2, !dbg !2622
  %conv3262 = zext i16 %615 to i32, !dbg !2622
  %616 = shl nsw i64 %indvars.iv6555, 4, !dbg !2622
  %arrayidx3265 = getelementptr inbounds i16, ptr %add.ptr2967, i64 %616, !dbg !2622
  %617 = load i16, ptr %arrayidx3265, align 2, !dbg !2622
  %conv3266 = zext i16 %617 to i32, !dbg !2622
  %add3267 = add nuw nsw i32 %conv3266, %conv3262, !dbg !2622
  %618 = load i32, ptr %arrayidx1093, align 4, !dbg !2622
  %add3269 = add nsw i32 %add3267, %618, !dbg !2622
  store i32 %add3269, ptr %arrayidx1093, align 4, !dbg !2622, !DIAssignID !2623
    #dbg_assign(i32 %add3269, !1416, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2623, ptr %arrayidx1093, !DIExpression(), !1843)
  %619 = mul nsw i64 %indvars.iv6555, -8, !dbg !2624
  %arrayidx3272 = getelementptr inbounds i16, ptr %add.ptr2964, i64 %619, !dbg !2624
  %620 = load i16, ptr %arrayidx3272, align 2, !dbg !2624
  %conv3273 = zext i16 %620 to i32, !dbg !2624
  %arrayidx3276.idx = mul i64 %indvars.iv6555, -24, !dbg !2624
  %arrayidx3276 = getelementptr inbounds i8, ptr %add.ptr2967, i64 %arrayidx3276.idx, !dbg !2624
  %621 = load i16, ptr %arrayidx3276, align 2, !dbg !2624
  %conv3277 = zext i16 %621 to i32, !dbg !2624
  %add3278 = add nuw nsw i32 %conv3277, %conv3273, !dbg !2624
  %622 = load i32, ptr %arrayidx1106, align 8, !dbg !2624
  %add3280 = add nsw i32 %add3278, %622, !dbg !2624
  store i32 %add3280, ptr %arrayidx1106, align 8, !dbg !2624, !DIAssignID !2625
    #dbg_assign(i32 %add3280, !1416, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2625, ptr %arrayidx1106, !DIExpression(), !1843)
  %623 = shl nsw i64 %indvars.iv6555, 3, !dbg !2626
  %arrayidx3283 = getelementptr inbounds i16, ptr %add.ptr2964, i64 %623, !dbg !2626
  %624 = load i16, ptr %arrayidx3283, align 2, !dbg !2626
  %conv3284 = zext i16 %624 to i32, !dbg !2626
  %625 = load i16, ptr %arrayidx3276, align 2, !dbg !2626
  %conv3288 = zext i16 %625 to i32, !dbg !2626
  %add3289 = add nuw nsw i32 %conv3288, %conv3284, !dbg !2626
  %626 = load i32, ptr %arrayidx1119, align 4, !dbg !2626
  %add3291 = add nsw i32 %add3289, %626, !dbg !2626
  store i32 %add3291, ptr %arrayidx1119, align 4, !dbg !2626, !DIAssignID !2627
    #dbg_assign(i32 %add3291, !1416, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !2627, ptr %arrayidx1119, !DIExpression(), !1843)
  %arrayidx3294 = getelementptr inbounds i16, ptr %add.ptr2964, i64 %612, !dbg !2628
  %627 = load i16, ptr %arrayidx3294, align 2, !dbg !2628
  %conv3295 = zext i16 %627 to i32, !dbg !2628
  %arrayidx3298 = getelementptr inbounds i16, ptr %add.ptr2967, i64 %619, !dbg !2628
  %628 = load i16, ptr %arrayidx3298, align 2, !dbg !2628
  %conv3299 = zext i16 %628 to i32, !dbg !2628
  %add3300 = add nuw nsw i32 %conv3299, %conv3295, !dbg !2628
  %629 = load i32, ptr %add.ptr3174, align 16, !dbg !2628
  %add3302 = add nsw i32 %add3300, %629, !dbg !2628
  store i32 %add3302, ptr %add.ptr3174, align 16, !dbg !2628, !DIAssignID !2629
    #dbg_assign(i32 %add3302, !1416, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !2629, ptr %add.ptr3174, !DIExpression(), !1843)
  %arrayidx3305 = getelementptr inbounds i16, ptr %add.ptr2964, i64 %616, !dbg !2630
  %630 = load i16, ptr %arrayidx3305, align 2, !dbg !2630
  %conv3306 = zext i16 %630 to i32, !dbg !2630
  %631 = load i16, ptr %arrayidx3298, align 2, !dbg !2630
  %conv3310 = zext i16 %631 to i32, !dbg !2630
  %add3311 = add nuw nsw i32 %conv3310, %conv3306, !dbg !2630
  %632 = load i32, ptr %arrayidx3312, align 4, !dbg !2630
  %add3313 = add nsw i32 %add3311, %632, !dbg !2630
  store i32 %add3313, ptr %arrayidx3312, align 4, !dbg !2630, !DIAssignID !2631
    #dbg_assign(i32 %add3313, !1416, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !2631, ptr %arrayidx3312, !DIExpression(), !1843)
  %633 = load i16, ptr %arrayidx3294, align 2, !dbg !2632
  %conv3317 = zext i16 %633 to i32, !dbg !2632
  %arrayidx3320.idx = mul i64 %indvars.iv6555, -8, !dbg !2632
  %arrayidx3320 = getelementptr inbounds i8, ptr %add.ptr2967, i64 %arrayidx3320.idx, !dbg !2632
  %634 = load i16, ptr %arrayidx3320, align 2, !dbg !2632
  %conv3321 = zext i16 %634 to i32, !dbg !2632
  %add3322 = add nuw nsw i32 %conv3321, %conv3317, !dbg !2632
  %635 = load i32, ptr %arrayidx3323, align 8, !dbg !2632
  %add3324 = add nsw i32 %add3322, %635, !dbg !2632
  store i32 %add3324, ptr %arrayidx3323, align 8, !dbg !2632, !DIAssignID !2633
    #dbg_assign(i32 %add3324, !1416, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !2633, ptr %arrayidx3323, !DIExpression(), !1843)
  %636 = load i16, ptr %arrayidx3305, align 2, !dbg !2634
  %conv3328 = zext i16 %636 to i32, !dbg !2634
  %637 = load i16, ptr %arrayidx3320, align 2, !dbg !2634
  %conv3332 = zext i16 %637 to i32, !dbg !2634
  %add3333 = add nuw nsw i32 %conv3332, %conv3328, !dbg !2634
  %638 = load i32, ptr %arrayidx3334, align 4, !dbg !2634
  %add3335 = add nsw i32 %add3333, %638, !dbg !2634
  store i32 %add3335, ptr %arrayidx3334, align 4, !dbg !2634, !DIAssignID !2635
    #dbg_assign(i32 %add3335, !1416, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !2635, ptr %arrayidx3334, !DIExpression(), !1843)
  %639 = load i16, ptr %arrayidx3294, align 2, !dbg !2636
  %conv3339 = zext i16 %639 to i32, !dbg !2636
  %640 = load i16, ptr %add.ptr2967, align 2, !dbg !2636
  %conv3343 = zext i16 %640 to i32, !dbg !2636
  %add3344 = add nuw nsw i32 %conv3343, %conv3339, !dbg !2636
  %641 = load i32, ptr %add.ptr3209, align 16, !dbg !2636
  %add3346 = add nsw i32 %add3344, %641, !dbg !2636
  store i32 %add3346, ptr %add.ptr3209, align 16, !dbg !2636, !DIAssignID !2637
    #dbg_assign(i32 %add3346, !1416, !DIExpression(DW_OP_LLVM_fragment, 256, 32), !2637, ptr %add.ptr3209, !DIExpression(), !1843)
  %642 = load i16, ptr %arrayidx3305, align 2, !dbg !2638
  %conv3350 = zext i16 %642 to i32, !dbg !2638
  %643 = load i16, ptr %add.ptr2967, align 2, !dbg !2638
  %conv3354 = zext i16 %643 to i32, !dbg !2638
  %add3355 = add nuw nsw i32 %conv3354, %conv3350, !dbg !2638
  %644 = load i32, ptr %arrayidx3356, align 4, !dbg !2638
  %add3357 = add nsw i32 %add3355, %644, !dbg !2638
  store i32 %add3357, ptr %arrayidx3356, align 4, !dbg !2638, !DIAssignID !2639
    #dbg_assign(i32 %add3357, !1416, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !2639, ptr %arrayidx3356, !DIExpression(), !1843)
  %645 = load i16, ptr %arrayidx3294, align 2, !dbg !2640
  %conv3361 = zext i16 %645 to i32, !dbg !2640
  %arrayidx3364 = getelementptr inbounds i16, ptr %add.ptr2967, i64 %594, !dbg !2640
  %646 = load i16, ptr %arrayidx3364, align 2, !dbg !2640
  %conv3365 = zext i16 %646 to i32, !dbg !2640
  %add3366 = add nuw nsw i32 %conv3365, %conv3361, !dbg !2640
  %647 = load i32, ptr %arrayidx3367, align 8, !dbg !2640
  %add3368 = add nsw i32 %add3366, %647, !dbg !2640
  store i32 %add3368, ptr %arrayidx3367, align 8, !dbg !2640, !DIAssignID !2641
    #dbg_assign(i32 %add3368, !1416, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !2641, ptr %arrayidx3367, !DIExpression(), !1843)
  %648 = load i16, ptr %arrayidx3305, align 2, !dbg !2642
  %conv3372 = zext i16 %648 to i32, !dbg !2642
  %649 = load i16, ptr %arrayidx3364, align 2, !dbg !2642
  %conv3376 = zext i16 %649 to i32, !dbg !2642
  %add3377 = add nuw nsw i32 %conv3376, %conv3372, !dbg !2642
  %650 = load i32, ptr %arrayidx3378, align 4, !dbg !2642
  %add3379 = add nsw i32 %add3377, %650, !dbg !2642
  store i32 %add3379, ptr %arrayidx3378, align 4, !dbg !2642, !DIAssignID !2643
    #dbg_assign(i32 %add3379, !1416, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !2643, ptr %arrayidx3378, !DIExpression(), !1843)
  %651 = load i16, ptr %arrayidx3294, align 2, !dbg !2644
  %conv3383 = zext i16 %651 to i32, !dbg !2644
  %arrayidx3386 = getelementptr inbounds i16, ptr %add.ptr2967, i64 %623, !dbg !2644
  %652 = load i16, ptr %arrayidx3386, align 2, !dbg !2644
  %conv3387 = zext i16 %652 to i32, !dbg !2644
  %add3388 = add nuw nsw i32 %conv3387, %conv3383, !dbg !2644
  %653 = load i32, ptr %add.ptr3244, align 16, !dbg !2644
  %add3390 = add nsw i32 %add3388, %653, !dbg !2644
  store i32 %add3390, ptr %add.ptr3244, align 16, !dbg !2644, !DIAssignID !2645
    #dbg_assign(i32 %add3390, !1416, !DIExpression(DW_OP_LLVM_fragment, 384, 32), !2645, ptr %add.ptr3244, !DIExpression(), !1843)
  %654 = load i16, ptr %arrayidx3305, align 2, !dbg !2646
  %conv3394 = zext i16 %654 to i32, !dbg !2646
  %655 = load i16, ptr %arrayidx3386, align 2, !dbg !2646
  %conv3398 = zext i16 %655 to i32, !dbg !2646
  %add3399 = add nuw nsw i32 %conv3398, %conv3394, !dbg !2646
  %656 = load i32, ptr %arrayidx3400, align 4, !dbg !2646
  %add3401 = add nsw i32 %add3399, %656, !dbg !2646
  store i32 %add3401, ptr %arrayidx3400, align 4, !dbg !2646, !DIAssignID !2647
    #dbg_assign(i32 %add3401, !1416, !DIExpression(DW_OP_LLVM_fragment, 416, 32), !2647, ptr %arrayidx3400, !DIExpression(), !1843)
  %657 = load i16, ptr %arrayidx3272, align 2, !dbg !2648
  %conv3405 = zext i16 %657 to i32, !dbg !2648
  %arrayidx3408.idx = mul i64 %indvars.iv6555, 24, !dbg !2648
  %arrayidx3408 = getelementptr inbounds i8, ptr %add.ptr2967, i64 %arrayidx3408.idx, !dbg !2648
  %658 = load i16, ptr %arrayidx3408, align 2, !dbg !2648
  %conv3409 = zext i16 %658 to i32, !dbg !2648
  %add3410 = add nuw nsw i32 %conv3409, %conv3405, !dbg !2648
  %659 = load i32, ptr %arrayidx3411, align 8, !dbg !2648
  %add3412 = add nsw i32 %add3410, %659, !dbg !2648
  store i32 %add3412, ptr %arrayidx3411, align 8, !dbg !2648, !DIAssignID !2649
    #dbg_assign(i32 %add3412, !1416, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !2649, ptr %arrayidx3411, !DIExpression(), !1843)
  %660 = load i16, ptr %arrayidx3283, align 2, !dbg !2650
  %conv3416 = zext i16 %660 to i32, !dbg !2650
  %661 = load i16, ptr %arrayidx3408, align 2, !dbg !2650
  %conv3420 = zext i16 %661 to i32, !dbg !2650
  %add3421 = add nuw nsw i32 %conv3420, %conv3416, !dbg !2650
  %662 = load i32, ptr %arrayidx3422, align 4, !dbg !2650
  %add3423 = add nsw i32 %add3421, %662, !dbg !2650
  store i32 %add3423, ptr %arrayidx3422, align 4, !dbg !2650, !DIAssignID !2651
    #dbg_assign(i32 %add3423, !1416, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !2651, ptr %arrayidx3422, !DIExpression(), !1843)
  %cmp3425 = icmp slt i32 %add3258, %bcost.113, !dbg !2652
  %spec.select6184 = select i1 %cmp3425, i32 12, i32 0, !dbg !2654
  %spec.select6185 = call i32 @llvm.smin.i32(i32 %add3258, i32 %bcost.113), !dbg !2654
    #dbg_value(i32 %spec.select6185, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %spec.select6184, !1608, !DIExpression(), !2611)
  %cmp3431 = icmp slt i32 %add3269, %spec.select6185, !dbg !2655
  %dir3099.1 = select i1 %cmp3431, i32 4, i32 %spec.select6184, !dbg !2657
  %bcost.118 = call i32 @llvm.smin.i32(i32 %add3269, i32 %spec.select6185), !dbg !2657
    #dbg_value(i32 %bcost.118, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %dir3099.1, !1608, !DIExpression(), !2611)
  %cmp3437 = icmp slt i32 %add3280, %bcost.118, !dbg !2658
  %dir3099.2 = select i1 %cmp3437, i32 -19, i32 %dir3099.1, !dbg !2660
  %bcost.119 = call i32 @llvm.smin.i32(i32 %add3280, i32 %bcost.118), !dbg !2660
    #dbg_value(i32 %bcost.119, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %dir3099.2, !1608, !DIExpression(), !2611)
  %cmp3443 = icmp slt i32 %add3291, %bcost.119, !dbg !2661
  %dir3099.3 = select i1 %cmp3443, i32 45, i32 %dir3099.2, !dbg !2663
  %bcost.120 = call i32 @llvm.smin.i32(i32 %add3291, i32 %bcost.119), !dbg !2663
    #dbg_value(i32 %bcost.120, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %dir3099.3, !1608, !DIExpression(), !2611)
  %cmp3449 = icmp slt i32 %add3302, %bcost.120, !dbg !2664
  %dir3099.4 = select i1 %cmp3449, i32 -50, i32 %dir3099.3, !dbg !2666
  %bcost.121 = call i32 @llvm.smin.i32(i32 %add3302, i32 %bcost.120), !dbg !2666
    #dbg_value(i32 %bcost.121, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %dir3099.4, !1608, !DIExpression(), !2611)
  %cmp3455 = icmp slt i32 %add3313, %bcost.121, !dbg !2667
  %dir3099.5 = select i1 %cmp3455, i32 78, i32 %dir3099.4, !dbg !2669
  %bcost.122 = call i32 @llvm.smin.i32(i32 %add3313, i32 %bcost.121), !dbg !2669
    #dbg_value(i32 %bcost.122, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %dir3099.5, !1608, !DIExpression(), !2611)
  %cmp3461 = icmp slt i32 %add3324, %bcost.122, !dbg !2670
  %dir3099.6 = select i1 %cmp3461, i32 -49, i32 %dir3099.5, !dbg !2672
  %bcost.123 = call i32 @llvm.smin.i32(i32 %add3324, i32 %bcost.122), !dbg !2672
    #dbg_value(i32 %bcost.123, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %dir3099.6, !1608, !DIExpression(), !2611)
  %cmp3467 = icmp slt i32 %add3335, %bcost.123, !dbg !2673
  %dir3099.7 = select i1 %cmp3467, i32 79, i32 %dir3099.6, !dbg !2675
  %bcost.124 = call i32 @llvm.smin.i32(i32 %add3335, i32 %bcost.123), !dbg !2675
    #dbg_value(i32 %bcost.124, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %dir3099.7, !1608, !DIExpression(), !2611)
  %cmp3473 = icmp slt i32 %add3346, %bcost.124, !dbg !2676
  %dir3099.8 = select i1 %cmp3473, i32 -64, i32 %dir3099.7, !dbg !2678
  %bcost.125 = call i32 @llvm.smin.i32(i32 %add3346, i32 %bcost.124), !dbg !2678
    #dbg_value(i32 %bcost.125, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %dir3099.8, !1608, !DIExpression(), !2611)
  %cmp3479 = icmp slt i32 %add3357, %bcost.125, !dbg !2679
  %dir3099.9 = select i1 %cmp3479, i32 64, i32 %dir3099.8, !dbg !2681
  %bcost.126 = call i32 @llvm.smin.i32(i32 %add3357, i32 %bcost.125), !dbg !2681
    #dbg_value(i32 %bcost.126, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %dir3099.9, !1608, !DIExpression(), !2611)
  %cmp3485 = icmp slt i32 %add3368, %bcost.126, !dbg !2682
  %dir3099.10 = select i1 %cmp3485, i32 -63, i32 %dir3099.9, !dbg !2684
  %bcost.127 = call i32 @llvm.smin.i32(i32 %add3368, i32 %bcost.126), !dbg !2684
    #dbg_value(i32 %bcost.127, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %dir3099.10, !1608, !DIExpression(), !2611)
  %cmp3491 = icmp slt i32 %add3379, %bcost.127, !dbg !2685
  %dir3099.11 = select i1 %cmp3491, i32 65, i32 %dir3099.10, !dbg !2687
  %bcost.128 = call i32 @llvm.smin.i32(i32 %add3379, i32 %bcost.127), !dbg !2687
    #dbg_value(i32 %bcost.128, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %dir3099.11, !1608, !DIExpression(), !2611)
  %cmp3497 = icmp slt i32 %add3390, %bcost.128, !dbg !2688
  %dir3099.12 = select i1 %cmp3497, i32 -62, i32 %dir3099.11, !dbg !2690
  %bcost.129 = call i32 @llvm.smin.i32(i32 %add3390, i32 %bcost.128), !dbg !2690
    #dbg_value(i32 %bcost.129, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %dir3099.12, !1608, !DIExpression(), !2611)
  %cmp3503 = icmp slt i32 %add3401, %bcost.129, !dbg !2691
  %dir3099.13 = select i1 %cmp3503, i32 66, i32 %dir3099.12, !dbg !2693
  %bcost.130 = call i32 @llvm.smin.i32(i32 %add3401, i32 %bcost.129), !dbg !2693
    #dbg_value(i32 %bcost.130, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %dir3099.13, !1608, !DIExpression(), !2611)
  %cmp3509 = icmp slt i32 %add3412, %bcost.130, !dbg !2694
  %dir3099.14 = select i1 %cmp3509, i32 -29, i32 %dir3099.13, !dbg !2696
  %bcost.131 = call i32 @llvm.smin.i32(i32 %add3412, i32 %bcost.130), !dbg !2696
    #dbg_value(i32 %bcost.131, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %dir3099.14, !1608, !DIExpression(), !2611)
  %cmp3515 = icmp slt i32 %add3423, %bcost.131, !dbg !2697
  %dir3099.15 = select i1 %cmp3515, i32 35, i32 %dir3099.14, !dbg !2699
  %bcost.132 = call i32 @llvm.smin.i32(i32 %add3423, i32 %bcost.131), !dbg !2699
    #dbg_value(i32 %bcost.132, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %dir3099.15, !1608, !DIExpression(), !2611)
  %tobool3520.not = icmp eq i32 %dir3099.15, 0, !dbg !2700
  br i1 %tobool3520.not, label %do.cond3531, label %if.then3521, !dbg !2702

if.then3521:                                      ; preds = %if.else3098
  %shr3522 = ashr i32 %dir3099.15, 4, !dbg !2703
  %663 = trunc nuw nsw i64 %indvars.iv6555 to i32, !dbg !2705
  %mul3523 = mul nsw i32 %shr3522, %663, !dbg !2705
  %add3524 = add nsw i32 %mul3523, %bmx.88, !dbg !2706
    #dbg_value(i32 %add3524, !1403, !DIExpression(), !1843)
  %shl3525 = shl i32 %dir3099.15, 28, !dbg !2707
  %shr3526 = ashr exact i32 %shl3525, 28, !dbg !2708
  %mul3527 = mul nsw i32 %shr3526, %663, !dbg !2709
  %add3528 = add nsw i32 %mul3527, %bmy.88, !dbg !2710
    #dbg_value(i32 %add3528, !1404, !DIExpression(), !1843)
  br label %do.cond3531, !dbg !2711

do.cond3531:                                      ; preds = %if.end3093, %if.else3098, %if.then3521
  %bcost.133 = phi i32 [ %bcost.132, %if.then3521 ], [ %bcost.132, %if.else3098 ], [ %bcost.116, %if.end3093 ], !dbg !2223
  %bmy.94 = phi i32 [ %add3528, %if.then3521 ], [ %bmy.89, %if.else3098 ], [ %bmy.92, %if.end3093 ], !dbg !2223
  %bmx.94 = phi i32 [ %add3524, %if.then3521 ], [ %bmx.89, %if.else3098 ], [ %bmx.92, %if.end3093 ], !dbg !2223
    #dbg_value(i32 %bmx.94, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.94, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.133, !1405, !DIExpression(), !1843)
  %indvars.iv.next6556 = add nuw nsw i64 %indvars.iv6555, 1, !dbg !2712
    #dbg_value(i64 %indvars.iv.next6556, !1595, !DIExpression(), !2223)
  %exitcond6574.not = icmp eq i64 %indvars.iv.next6556, %wide.trip.count6573, !dbg !2586
  br i1 %exitcond6574.not, label %cleanup3553, label %do.body2969, !dbg !2713, !llvm.loop !2714

cleanup3553:                                      ; preds = %do.cond3531
  %cmp3537.not = icmp sle i32 %bmy.94, %12, !dbg !2716
  %cmp3540.not = icmp sge i32 %bmy.94, %10
  %or.cond6186.not6241 = select i1 %cmp3537.not, i1 %cmp3540.not, i1 false
  %cmp3543.not = icmp sle i32 %bmx.94, %11
  %or.cond6187.not6240 = select i1 %or.cond6186.not6241, i1 %cmp3543.not, i1 false
  %cmp3546.not = icmp sge i32 %bmx.94, %9
  %or.cond6188.not = select i1 %or.cond6187.not6240, i1 %cmp3546.not, i1 false
    #dbg_value(i32 %i_me_range.1, !1402, !DIExpression(), !1843)
    #dbg_value(i32 %bmx.94, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.94, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.133, !1405, !DIExpression(), !1843)
  br i1 %or.cond6188.not, label %me_hex2, label %sw.epilog

sw.bb3557:                                        ; preds = %if.end264, %if.end264
  %sub3558 = sub nsw i32 %bmx.4, %4, !dbg !2718
  %cond3565 = call i32 @llvm.smax.i32(i32 %sub3558, i32 %9), !dbg !2718
    #dbg_value(i32 %cond3565, !1612, !DIExpression(), !1852)
  %sub3566 = sub i32 %bmy.4, %4, !dbg !2719
  %cond3573 = call i32 @llvm.smax.i32(i32 %sub3566, i32 %10), !dbg !2719
    #dbg_value(i32 %cond3573, !1614, !DIExpression(), !1852)
  %add3574 = add nsw i32 %bmx.4, %4, !dbg !2720
  %cond3581 = call i32 @llvm.smin.i32(i32 %add3574, i32 %11), !dbg !2720
    #dbg_value(i32 %cond3581, !1615, !DIExpression(), !1852)
  %add3582 = add i32 %bmy.4, %4, !dbg !2721
  %cond3589 = call i32 @llvm.smin.i32(i32 %add3582, i32 %12), !dbg !2721
    #dbg_value(i32 %cond3589, !1616, !DIExpression(), !1852)
  %reass.sub = sub i32 %cond3581, %cond3565, !dbg !2722
  %add3591 = add i32 %reass.sub, 3, !dbg !2722
  %and3592 = and i32 %add3591, -4, !dbg !2723
    #dbg_value(i32 %and3592, !1617, !DIExpression(), !1852)
  %integral = getelementptr inbounds i8, ptr %m, i64 112, !dbg !2724
  %664 = load ptr, ptr %integral, align 16, !dbg !2724
    #dbg_value(ptr %664, !1618, !DIExpression(), !1852)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %enc_dc) #6, !dbg !2725
  %cmp3593.inv = icmp sgt i32 %0, 3, !dbg !2726
  %cond3595 = select i1 %cmp3593.inv, i64 6, i64 3, !dbg !2726
    #dbg_value(i64 %cond3595, !1620, !DIExpression(), !1852)
  %arrayidx3597 = getelementptr inbounds [7 x %struct.anon], ptr @x264_pixel_size, i64 0, i64 %cond3595, !dbg !2727
  %665 = load i32, ptr %arrayidx3597, align 8, !dbg !2728
    #dbg_value(i32 %665, !1621, !DIExpression(), !1852)
  %scratch_buffer = getelementptr inbounds i8, ptr %h, i64 31176, !dbg !2729
  %666 = load ptr, ptr %scratch_buffer, align 8, !dbg !2729
    #dbg_value(ptr %666, !1622, !DIExpression(), !1852)
  %cost_mv_fpel = getelementptr inbounds i8, ptr %h, i64 4272, !dbg !2730
  %i_qp = getelementptr inbounds i8, ptr %h, i64 25792, !dbg !2731
  %667 = load i32, ptr %i_qp, align 16, !dbg !2731
  %idxprom3600 = sext i32 %667 to i64, !dbg !2732
  %arrayidx3601 = getelementptr inbounds [52 x i8], ptr @x264_lambda_tab, i64 0, i64 %idxprom3600, !dbg !2732
  %668 = load i8, ptr %arrayidx3601, align 1, !dbg !2732
  %idxprom3602 = zext i8 %668 to i64, !dbg !2733
  %669 = load i16, ptr %mvp, align 16, !dbg !2734
  %conv3606 = sext i16 %669 to i32, !dbg !2734
  %sub3607 = sub nsw i32 0, %conv3606, !dbg !2735
  %and3608 = and i32 %sub3607, 3, !dbg !2736
  %idxprom3609 = zext nneg i32 %and3608 to i64, !dbg !2733
  %arrayidx3610 = getelementptr inbounds [92 x [4 x ptr]], ptr %cost_mv_fpel, i64 0, i64 %idxprom3602, i64 %idxprom3609, !dbg !2733
  %670 = load ptr, ptr %arrayidx3610, align 8, !dbg !2733
  %shr3615 = ashr i32 %sub3607, 2, !dbg !2737
  %idx.ext3616 = sext i32 %shr3615 to i64, !dbg !2738
  %add.ptr3617 = getelementptr inbounds i16, ptr %670, i64 %idx.ext3616, !dbg !2738
    #dbg_value(ptr %add.ptr3617, !1624, !DIExpression(), !1852)
  %pixf3618 = getelementptr inbounds i8, ptr %h, i64 31560, !dbg !2739
  %sad_x4 = getelementptr inbounds i8, ptr %h, i64 32296, !dbg !2740
  %arrayidx3620 = getelementptr inbounds [7 x ptr], ptr %sad_x4, i64 0, i64 %cond3595, !dbg !2741
  %671 = load ptr, ptr %arrayidx3620, align 8, !dbg !2741
  %idx.ext3621 = sext i32 %665 to i64, !dbg !2742
  %add.ptr3622 = getelementptr inbounds i8, ptr %5, i64 %idx.ext3621, !dbg !2742
  %mul3623 = shl nsw i32 %665, 4, !dbg !2743
  %idx.ext3624 = sext i32 %mul3623 to i64, !dbg !2744
  %add.ptr3625 = getelementptr inbounds i8, ptr %5, i64 %idx.ext3624, !dbg !2744
  %add.ptr3630 = getelementptr inbounds i8, ptr %add.ptr3622, i64 %idx.ext3624, !dbg !2745
  call void %671(ptr noundef nonnull @x264_me_search_ref.zero, ptr noundef %5, ptr noundef %add.ptr3622, ptr noundef %add.ptr3625, ptr noundef %add.ptr3630, i32 noundef 16, ptr noundef nonnull %enc_dc) #6, !dbg !2741
  %cmp3632 = icmp eq i32 %665, 4, !dbg !2746
  br i1 %cmp3632, label %if.then3634, label %if.end3640, !dbg !2748

if.then3634:                                      ; preds = %sw.bb3557
  %fenc = getelementptr inbounds i8, ptr %h, i64 14680, !dbg !2749
  %672 = load ptr, ptr %fenc, align 8, !dbg !2749
  %i_lines = getelementptr inbounds i8, ptr %672, i64 128, !dbg !2750
  %673 = load i32, ptr %i_lines, align 16, !dbg !2751
  %add3636 = add nsw i32 %673, 64, !dbg !2752
  %mul3637 = mul nsw i32 %add3636, %3, !dbg !2753
  %idx.ext3638 = sext i32 %mul3637 to i64, !dbg !2754
  %add.ptr3639 = getelementptr inbounds i16, ptr %664, i64 %idx.ext3638, !dbg !2754
    #dbg_value(ptr %add.ptr3639, !1618, !DIExpression(), !1852)
  br label %if.end3640, !dbg !2755

if.end3640:                                       ; preds = %if.then3634, %sw.bb3557
  %sums_base.0 = phi ptr [ %add.ptr3639, %if.then3634 ], [ %664, %sw.bb3557 ], !dbg !1852
    #dbg_value(ptr %sums_base.0, !1618, !DIExpression(), !1852)
  switch i32 %0, label %if.end3650 [
    i32 5, label %if.then3648
    i32 2, label %if.then3648
    i32 0, label %if.then3648
  ], !dbg !2756

if.then3648:                                      ; preds = %if.end3640, %if.end3640, %if.end3640
  %mul3649 = mul nsw i32 %665, %3, !dbg !2758
    #dbg_value(i32 %mul3649, !1621, !DIExpression(), !1852)
  br label %if.end3650, !dbg !2759

if.end3650:                                       ; preds = %if.end3640, %if.then3648
  %delta.0 = phi i32 [ %mul3649, %if.then3648 ], [ %665, %if.end3640 ], !dbg !1852
    #dbg_value(i32 %delta.0, !1621, !DIExpression(), !1852)
  switch i32 %0, label %if.end3659 [
    i32 5, label %if.then3656
    i32 2, label %if.then3656
  ], !dbg !2760

if.then3656:                                      ; preds = %if.end3650, %if.end3650
  %arrayidx3657 = getelementptr inbounds i8, ptr %enc_dc, i64 8, !dbg !2762
  %674 = load i32, ptr %arrayidx3657, align 8, !dbg !2762
  %arrayidx3658 = getelementptr inbounds i8, ptr %enc_dc, i64 4, !dbg !2763
  store i32 %674, ptr %arrayidx3658, align 4, !dbg !2764, !DIAssignID !2765
    #dbg_assign(i32 %674, !1619, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2765, ptr %arrayidx3658, !DIExpression(), !1852)
  br label %if.end3659, !dbg !2763

if.end3659:                                       ; preds = %if.end3650, %if.then3656
  %675 = load i32, ptr %i_me_method, align 4, !dbg !2766
  %cmp3662 = icmp eq i32 %675, 4, !dbg !2767
  br i1 %cmp3662, label %if.then3664, label %for.cond4015.preheader, !dbg !2768

for.cond4015.preheader:                           ; preds = %if.end3659
    #dbg_value(i32 %bmx.4, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.4, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.6, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %cond3573, !1672, !DIExpression(), !2769)
  %cmp4016.not6275 = icmp sgt i32 %cond3573, %cond3589, !dbg !2770
  br i1 %cmp4016.not6275, label %if.end4202, label %for.body4019.lr.ph, !dbg !2771

for.body4019.lr.ph:                               ; preds = %for.cond4015.preheader
  %ads4032 = getelementptr inbounds i8, ptr %h, i64 32464
  %arrayidx4034 = getelementptr inbounds [7 x ptr], ptr %ads4032, i64 0, i64 %idxprom
  %idx.ext4036 = sext i32 %cond3565 to i64
  %add.ptr4037 = getelementptr inbounds i16, ptr %sums_base.0, i64 %idx.ext4036
  %add.ptr4042 = getelementptr inbounds i16, ptr %add.ptr3617, i64 %idx.ext4036
  %fpelcmp_x34050 = getelementptr inbounds i8, ptr %h, i64 31984
  %arrayidx4052 = getelementptr inbounds [7 x ptr], ptr %fpelcmp_x34050, i64 0, i64 %idxprom
  %arrayidx4102 = getelementptr inbounds i8, ptr %costs, i64 4
  %arrayidx4113 = getelementptr inbounds i8, ptr %costs, i64 8
  %fpelcmp4157 = getelementptr inbounds i8, ptr %h, i64 31928
  %arrayidx4159 = getelementptr inbounds [7 x ptr], ptr %fpelcmp4157, i64 0, i64 %idxprom
  %676 = call i32 @llvm.smax.i32(i32 %10, i32 %sub3566), !dbg !2771
  %smax = sext i32 %676 to i64, !dbg !2771
  %677 = sext i32 %3 to i64, !dbg !2771
  %678 = add i32 %cond3589, %676, !dbg !2771
  %679 = add i32 %678, 1, !dbg !2771
  %680 = sub i32 %679, %cond3573, !dbg !2771
  br label %for.body4019, !dbg !2771

if.then3664:                                      ; preds = %if.end3659
  %add3665 = add nsw i32 %and3592, 15, !dbg !2772
  %and3666 = and i32 %add3665, -16, !dbg !2773
  %idx.ext3667 = sext i32 %and3666 to i64, !dbg !2774
  %add.ptr3668 = getelementptr inbounds i16, ptr %666, i64 %idx.ext3667, !dbg !2774
    #dbg_value(ptr %add.ptr3668, !1625, !DIExpression(), !2775)
    #dbg_value(i32 0, !1628, !DIExpression(), !2775)
  %cmp3669 = icmp slt i32 %4, 17, !dbg !2776
  %cmp3673 = icmp slt i32 %4, 25, !dbg !2777
  %cond3675 = select i1 %cmp3673, i32 11, i32 12, !dbg !2777
  %cond3677 = select i1 %cmp3669, i32 10, i32 %cond3675, !dbg !2777
    #dbg_value(i32 %cond3677, !1630, !DIExpression(), !2775)
  %arrayidx3680 = getelementptr inbounds [7 x ptr], ptr %pixf3618, i64 0, i64 %idxprom, !dbg !2778
  %681 = load ptr, ptr %arrayidx3680, align 8, !dbg !2778
  %mul3681 = mul nsw i32 %bmy.4, %3, !dbg !2779
  %idx.ext3682 = sext i32 %mul3681 to i64, !dbg !2780
  %add.ptr3683 = getelementptr inbounds i8, ptr %6, i64 %idx.ext3682, !dbg !2780
  %idx.ext3684 = sext i32 %bmx.4 to i64, !dbg !2781
  %add.ptr3685 = getelementptr inbounds i8, ptr %add.ptr3683, i64 %idx.ext3684, !dbg !2781
  %call3686 = call i32 %681(ptr noundef %5, i32 noundef 16, ptr noundef %add.ptr3685, i32 noundef %3) #6, !dbg !2778
  %shl3687 = shl nsw i32 %bmx.4, 2, !dbg !2782
  %idxprom3688 = sext i32 %shl3687 to i64, !dbg !2782
  %arrayidx3689 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom3688, !dbg !2782
  %682 = load i16, ptr %arrayidx3689, align 2, !dbg !2782
  %conv3690 = zext i16 %682 to i32, !dbg !2782
  %shl3691 = shl nsw i32 %bmy.4, 2, !dbg !2782
  %idxprom3692 = sext i32 %shl3691 to i64, !dbg !2782
  %arrayidx3693 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom3692, !dbg !2782
  %683 = load i16, ptr %arrayidx3693, align 2, !dbg !2782
  %conv3694 = zext i16 %683 to i32, !dbg !2782
  %add3695 = add i32 %call3686, %conv3690, !dbg !2782
  %add3696 = add i32 %add3695, %conv3694, !dbg !2783
    #dbg_value(i32 %add3696, !1631, !DIExpression(), !2775)
    #dbg_value(i32 %cond3573, !1632, !DIExpression(), !2784)
  %cmp3699.not6302 = icmp sgt i32 %cond3573, %cond3589, !dbg !2785
  br i1 %cmp3699.not6302, label %for.cond.cleanup3701, label %for.body3702.lr.ph, !dbg !2786

for.body3702.lr.ph:                               ; preds = %if.then3664
  %ads = getelementptr inbounds i8, ptr %h, i64 32464
  %arrayidx3715 = getelementptr inbounds [7 x ptr], ptr %ads, i64 0, i64 %idxprom
  %idx.ext3717 = sext i32 %cond3565 to i64
  %add.ptr3718 = getelementptr inbounds i16, ptr %sums_base.0, i64 %idx.ext3717
  %add.ptr3723 = getelementptr inbounds i16, ptr %add.ptr3617, i64 %idx.ext3717
  %add.ptr3732 = getelementptr inbounds i8, ptr %6, i64 %idx.ext3717
  %sad_x3 = getelementptr inbounds i8, ptr %h, i64 32240
  %arrayidx3738 = getelementptr inbounds [7 x ptr], ptr %sad_x3, i64 0, i64 %idxprom
  %684 = trunc i32 %cond3565 to i16
  %685 = call i32 @llvm.smax.i32(i32 %10, i32 %sub3566), !dbg !2786
  %smax6453 = sext i32 %685 to i64, !dbg !2786
  %686 = sext i32 %3 to i64, !dbg !2786
  %687 = add i32 %cond3589, %685, !dbg !2786
  %688 = add i32 %687, 1, !dbg !2786
  %689 = sub i32 %688, %cond3573, !dbg !2786
  %arrayidx3765.1 = getelementptr inbounds i8, ptr %sads, i64 4
  %invariant.gep6602 = getelementptr inbounds i8, ptr %666, i64 2
  %arrayidx3765.2 = getelementptr inbounds i8, ptr %sads, i64 8
  %invariant.gep6604 = getelementptr inbounds i8, ptr %666, i64 4
  br label %for.body3702, !dbg !2786

for.cond.cleanup3701:                             ; preds = %cleanup3864, %if.then3664
  %nmvsad.0.lcssa = phi i32 [ 0, %if.then3664 ], [ %nmvsad.6, %cleanup3864 ], !dbg !2787
  %bsad.0.lcssa = phi i32 [ %add3696, %if.then3664 ], [ %bsad.8, %cleanup3864 ], !dbg !2788
  %shr3872 = ashr i32 %4, 1, !dbg !2789
    #dbg_value(i32 %shr3872, !1629, !DIExpression(), !2775)
  %mul3873 = mul nsw i32 %bsad.0.lcssa, %cond3677, !dbg !2790
  %shr3874 = ashr i32 %mul3873, 3, !dbg !2791
    #dbg_value(i32 %shr3874, !1630, !DIExpression(), !2775)
  %mul3875 = and i32 %4, -2
    #dbg_value(i32 %nmvsad.0.lcssa, !1628, !DIExpression(), !2775)
  %cmp38766316 = icmp sgt i32 %nmvsad.0.lcssa, %mul3875, !dbg !2792
  %cmp38796317 = icmp sgt i32 %shr3874, %bsad.0.lcssa, !dbg !2793
  %690 = select i1 %cmp38766316, i1 %cmp38796317, i1 false, !dbg !2793
  br i1 %690, label %while.body.preheader, label %while.cond3919.preheader, !dbg !2794

while.body.preheader:                             ; preds = %for.cond.cleanup3701
  %invariant.gep6698 = getelementptr i8, ptr %add.ptr3668, i64 8
  br label %while.body, !dbg !2794

for.body3702:                                     ; preds = %for.body3702.lr.ph, %cleanup3864
  %indvars.iv6454 = phi i64 [ %smax6453, %for.body3702.lr.ph ], [ %indvars.iv.next6455, %cleanup3864 ]
  %bsad.06304 = phi i32 [ %add3696, %for.body3702.lr.ph ], [ %bsad.8, %cleanup3864 ]
  %nmvsad.06303 = phi i32 [ 0, %for.body3702.lr.ph ], [ %nmvsad.6, %cleanup3864 ]
    #dbg_value(i64 %indvars.iv6454, !1632, !DIExpression(), !2784)
    #dbg_value(i32 %bsad.06304, !1631, !DIExpression(), !2775)
    #dbg_value(i32 %nmvsad.06303, !1628, !DIExpression(), !2775)
  %691 = trunc nsw i64 %indvars.iv6454 to i32, !dbg !2795
  %shl3704 = shl i32 %691, 2, !dbg !2795
  %idxprom3705 = sext i32 %shl3704 to i64, !dbg !2796
  %arrayidx3706 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom3705, !dbg !2796
  %692 = load i16, ptr %arrayidx3706, align 2, !dbg !2796
  %conv3707 = zext i16 %692 to i32, !dbg !2796
    #dbg_value(i32 %conv3707, !1637, !DIExpression(), !2797)
  %cmp3708.not = icmp sgt i32 %bsad.06304, %conv3707, !dbg !2798
  br i1 %cmp3708.not, label %if.end3711, label %cleanup3864, !dbg !2800

if.end3711:                                       ; preds = %for.body3702
  %sub3712 = sub nsw i32 %bsad.06304, %conv3707, !dbg !2801
    #dbg_value(i32 %sub3712, !1631, !DIExpression(), !2775)
  %693 = load ptr, ptr %arrayidx3715, align 8, !dbg !2802
  %694 = mul nsw i64 %indvars.iv6454, %686, !dbg !2803
  %add.ptr3721 = getelementptr inbounds i16, ptr %add.ptr3718, i64 %694, !dbg !2804
  %mul3724 = mul nsw i32 %sub3712, 17, !dbg !2805
  %div = sdiv i32 %mul3724, 16, !dbg !2806
  %call3725 = call i32 %693(ptr noundef nonnull %enc_dc, ptr noundef %add.ptr3721, i32 noundef %delta.0, ptr noundef %add.ptr3723, ptr noundef %666, i32 noundef %and3592, i32 noundef %div) #6, !dbg !2802
    #dbg_value(i32 %call3725, !1623, !DIExpression(), !1852)
    #dbg_value(i32 0, !1634, !DIExpression(), !2797)
  %sub3727 = add nsw i32 %call3725, -2
    #dbg_value(i32 %nmvsad.06303, !1628, !DIExpression(), !2775)
  %cmp37286287 = icmp sgt i32 %call3725, 2, !dbg !2807
  br i1 %cmp37286287, label %for.body3730.lr.ph, label %for.cond3809.preheader, !dbg !2808

for.body3730.lr.ph:                               ; preds = %if.end3711
  %add.ptr3735 = getelementptr inbounds i8, ptr %add.ptr3732, i64 %694
  %conv3795 = trunc i64 %indvars.iv6454 to i16
  br label %for.body3730, !dbg !2808

for.cond3809.preheader:                           ; preds = %if.end3801.2, %if.end3711
  %nmvsad.1.lcssa = phi i32 [ %nmvsad.06303, %if.end3711 ], [ %nmvsad.3.2, %if.end3801.2 ], !dbg !2787
  %bsad.1.lcssa = phi i32 [ %sub3712, %if.end3711 ], [ %bsad.4.2, %if.end3801.2 ], !dbg !2801
  %i3703.0.lcssa = phi i32 [ 0, %if.end3711 ], [ %712, %if.end3801.2 ], !dbg !2809
  %invariant.gep6294 = getelementptr i8, ptr %6, i64 %694, !dbg !2810
    #dbg_value(i32 %i3703.0.lcssa, !1634, !DIExpression(), !2797)
    #dbg_value(i32 %bsad.1.lcssa, !1631, !DIExpression(), !2775)
    #dbg_value(i32 %nmvsad.1.lcssa, !1628, !DIExpression(), !2775)
  %cmp38106296 = icmp slt i32 %i3703.0.lcssa, %call3725, !dbg !2811
  br i1 %cmp38106296, label %for.body3812.lr.ph, label %for.end3862, !dbg !2810

for.body3812.lr.ph:                               ; preds = %for.cond3809.preheader
  %conv3853 = trunc i64 %indvars.iv6454 to i16
  %695 = zext i32 %i3703.0.lcssa to i64, !dbg !2810
  br label %for.body3812, !dbg !2810

for.body3730:                                     ; preds = %for.body3730.lr.ph, %if.end3801.2
  %indvars.iv6447 = phi i64 [ 0, %for.body3730.lr.ph ], [ %indvars.iv.next6448, %if.end3801.2 ]
  %bsad.16289 = phi i32 [ %sub3712, %for.body3730.lr.ph ], [ %bsad.4.2, %if.end3801.2 ]
  %nmvsad.16288 = phi i32 [ %nmvsad.06303, %for.body3730.lr.ph ], [ %nmvsad.3.2, %if.end3801.2 ]
    #dbg_value(i64 %indvars.iv6447, !1634, !DIExpression(), !2797)
    #dbg_value(i32 %bsad.16289, !1631, !DIExpression(), !2775)
    #dbg_value(i32 %nmvsad.16288, !1628, !DIExpression(), !2775)
    #dbg_value(ptr %add.ptr3735, !1638, !DIExpression(), !1854)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sads) #6, !dbg !2812
  %696 = load ptr, ptr %arrayidx3738, align 8, !dbg !2813
  %arrayidx3740 = getelementptr inbounds i16, ptr %666, i64 %indvars.iv6447, !dbg !2814
  %697 = load i16, ptr %arrayidx3740, align 2, !dbg !2814
  %idx.ext3742 = sext i16 %697 to i64, !dbg !2815
  %add.ptr3743 = getelementptr inbounds i8, ptr %add.ptr3735, i64 %idx.ext3742, !dbg !2815
  %arrayidx3746 = getelementptr inbounds i8, ptr %arrayidx3740, i64 2, !dbg !2816
  %698 = load i16, ptr %arrayidx3746, align 2, !dbg !2816
  %idx.ext3748 = sext i16 %698 to i64, !dbg !2817
  %add.ptr3749 = getelementptr inbounds i8, ptr %add.ptr3735, i64 %idx.ext3748, !dbg !2817
  %arrayidx3752 = getelementptr inbounds i8, ptr %arrayidx3740, i64 4, !dbg !2818
  %699 = load i16, ptr %arrayidx3752, align 2, !dbg !2818
  %idx.ext3754 = sext i16 %699 to i64, !dbg !2819
  %add.ptr3755 = getelementptr inbounds i8, ptr %add.ptr3735, i64 %idx.ext3754, !dbg !2819
  call void %696(ptr noundef %5, ptr noundef %add.ptr3743, ptr noundef %add.ptr3749, ptr noundef %add.ptr3755, i32 noundef %3, ptr noundef nonnull %sads) #6, !dbg !2813
    #dbg_value(i64 0, !1643, !DIExpression(), !2820)
  %700 = load i32, ptr %sads, align 4, !dbg !2821
  %701 = load i16, ptr %arrayidx3740, align 2, !dbg !2822
  %idxprom3769 = sext i16 %701 to i64, !dbg !2823
  %arrayidx3770 = getelementptr inbounds i16, ptr %add.ptr3617, i64 %idxprom3769, !dbg !2823
  %702 = load i16, ptr %arrayidx3770, align 2, !dbg !2823
  %conv3771 = zext i16 %702 to i32, !dbg !2823
  %add3772 = add nsw i32 %700, %conv3771, !dbg !2824
    #dbg_value(i32 %add3772, !1645, !DIExpression(), !2825)
  %mul3773 = mul nsw i32 %bsad.16289, %cond3677, !dbg !2826
  %shr3774 = ashr i32 %mul3773, 3, !dbg !2828
  %cmp3775 = icmp slt i32 %add3772, %shr3774, !dbg !2829
  br i1 %cmp3775, label %if.then3777, label %if.end3801, !dbg !2830

if.then3777:                                      ; preds = %for.body3730
  %spec.select6189 = call i32 @llvm.smin.i32(i32 %add3772, i32 %bsad.16289), !dbg !2831
    #dbg_value(i32 %spec.select6189, !1631, !DIExpression(), !2775)
  %add3782 = add nsw i32 %add3772, %conv3707, !dbg !2833
  %idxprom3783 = sext i32 %nmvsad.16288 to i64, !dbg !2834
  %arrayidx3784 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %idxprom3783, !dbg !2834
  store i32 %add3782, ptr %arrayidx3784, align 4, !dbg !2835
  %703 = load i16, ptr %arrayidx3740, align 2, !dbg !2836
  %conv3791 = add i16 %703, %684, !dbg !2837
  %mv = getelementptr inbounds i8, ptr %arrayidx3784, i64 4, !dbg !2838
  store i16 %conv3791, ptr %mv, align 4, !dbg !2839
  %arrayidx3799 = getelementptr inbounds i8, ptr %arrayidx3784, i64 6, !dbg !2840
  store i16 %conv3795, ptr %arrayidx3799, align 2, !dbg !2841
  %inc3800 = add nsw i32 %nmvsad.16288, 1, !dbg !2842
    #dbg_value(i32 %inc3800, !1628, !DIExpression(), !2775)
  %.pre = mul nsw i32 %spec.select6189, %cond3677, !dbg !2826
  %.pre6575 = ashr i32 %.pre, 3, !dbg !2828
  br label %if.end3801, !dbg !2843

if.end3801:                                       ; preds = %if.then3777, %for.body3730
  %shr3774.1.pre-phi = phi i32 [ %.pre6575, %if.then3777 ], [ %shr3774, %for.body3730 ], !dbg !2828
  %nmvsad.3 = phi i32 [ %inc3800, %if.then3777 ], [ %nmvsad.16288, %for.body3730 ], !dbg !2775
  %bsad.4 = phi i32 [ %spec.select6189, %if.then3777 ], [ %bsad.16289, %for.body3730 ], !dbg !2797
    #dbg_value(i32 %bsad.4, !1631, !DIExpression(), !2775)
    #dbg_value(i32 %nmvsad.3, !1628, !DIExpression(), !2775)
    #dbg_value(i64 1, !1643, !DIExpression(), !2820)
  %704 = load i32, ptr %arrayidx3765.1, align 4, !dbg !2821
  %gep6603 = getelementptr inbounds i16, ptr %invariant.gep6602, i64 %indvars.iv6447, !dbg !2822
  %705 = load i16, ptr %gep6603, align 2, !dbg !2822
  %idxprom3769.1 = sext i16 %705 to i64, !dbg !2823
  %arrayidx3770.1 = getelementptr inbounds i16, ptr %add.ptr3617, i64 %idxprom3769.1, !dbg !2823
  %706 = load i16, ptr %arrayidx3770.1, align 2, !dbg !2823
  %conv3771.1 = zext i16 %706 to i32, !dbg !2823
  %add3772.1 = add nsw i32 %704, %conv3771.1, !dbg !2824
    #dbg_value(i32 %add3772.1, !1645, !DIExpression(), !2825)
  %cmp3775.1 = icmp slt i32 %add3772.1, %shr3774.1.pre-phi, !dbg !2829
  br i1 %cmp3775.1, label %if.then3777.1, label %if.end3801.1, !dbg !2830

if.then3777.1:                                    ; preds = %if.end3801
  %spec.select6189.1 = call i32 @llvm.smin.i32(i32 %add3772.1, i32 %bsad.4), !dbg !2831
    #dbg_value(i32 %spec.select6189.1, !1631, !DIExpression(), !2775)
  %add3782.1 = add nsw i32 %add3772.1, %conv3707, !dbg !2833
  %idxprom3783.1 = sext i32 %nmvsad.3 to i64, !dbg !2834
  %arrayidx3784.1 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %idxprom3783.1, !dbg !2834
  store i32 %add3782.1, ptr %arrayidx3784.1, align 4, !dbg !2835
  %707 = load i16, ptr %gep6603, align 2, !dbg !2836
  %conv3791.1 = add i16 %707, %684, !dbg !2837
  %mv.1 = getelementptr inbounds i8, ptr %arrayidx3784.1, i64 4, !dbg !2838
  store i16 %conv3791.1, ptr %mv.1, align 4, !dbg !2839
  %arrayidx3799.1 = getelementptr inbounds i8, ptr %arrayidx3784.1, i64 6, !dbg !2840
  store i16 %conv3795, ptr %arrayidx3799.1, align 2, !dbg !2841
  %inc3800.1 = add nsw i32 %nmvsad.3, 1, !dbg !2842
    #dbg_value(i32 %inc3800.1, !1628, !DIExpression(), !2775)
  %.pre6576 = mul nsw i32 %spec.select6189.1, %cond3677, !dbg !2826
  %.pre6577 = ashr i32 %.pre6576, 3, !dbg !2828
  br label %if.end3801.1, !dbg !2843

if.end3801.1:                                     ; preds = %if.then3777.1, %if.end3801
  %shr3774.2.pre-phi = phi i32 [ %.pre6577, %if.then3777.1 ], [ %shr3774.1.pre-phi, %if.end3801 ], !dbg !2828
  %nmvsad.3.1 = phi i32 [ %inc3800.1, %if.then3777.1 ], [ %nmvsad.3, %if.end3801 ], !dbg !2775
  %bsad.4.1 = phi i32 [ %spec.select6189.1, %if.then3777.1 ], [ %bsad.4, %if.end3801 ], !dbg !2797
    #dbg_value(i32 %bsad.4.1, !1631, !DIExpression(), !2775)
    #dbg_value(i32 %nmvsad.3.1, !1628, !DIExpression(), !2775)
    #dbg_value(i64 2, !1643, !DIExpression(), !2820)
  %708 = load i32, ptr %arrayidx3765.2, align 4, !dbg !2821
  %gep6605 = getelementptr inbounds i16, ptr %invariant.gep6604, i64 %indvars.iv6447, !dbg !2822
  %709 = load i16, ptr %gep6605, align 2, !dbg !2822
  %idxprom3769.2 = sext i16 %709 to i64, !dbg !2823
  %arrayidx3770.2 = getelementptr inbounds i16, ptr %add.ptr3617, i64 %idxprom3769.2, !dbg !2823
  %710 = load i16, ptr %arrayidx3770.2, align 2, !dbg !2823
  %conv3771.2 = zext i16 %710 to i32, !dbg !2823
  %add3772.2 = add nsw i32 %708, %conv3771.2, !dbg !2824
    #dbg_value(i32 %add3772.2, !1645, !DIExpression(), !2825)
  %cmp3775.2 = icmp slt i32 %add3772.2, %shr3774.2.pre-phi, !dbg !2829
  br i1 %cmp3775.2, label %if.then3777.2, label %if.end3801.2, !dbg !2830

if.then3777.2:                                    ; preds = %if.end3801.1
  %spec.select6189.2 = call i32 @llvm.smin.i32(i32 %add3772.2, i32 %bsad.4.1), !dbg !2831
    #dbg_value(i32 %spec.select6189.2, !1631, !DIExpression(), !2775)
  %add3782.2 = add nsw i32 %add3772.2, %conv3707, !dbg !2833
  %idxprom3783.2 = sext i32 %nmvsad.3.1 to i64, !dbg !2834
  %arrayidx3784.2 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %idxprom3783.2, !dbg !2834
  store i32 %add3782.2, ptr %arrayidx3784.2, align 4, !dbg !2835
  %711 = load i16, ptr %gep6605, align 2, !dbg !2836
  %conv3791.2 = add i16 %711, %684, !dbg !2837
  %mv.2 = getelementptr inbounds i8, ptr %arrayidx3784.2, i64 4, !dbg !2838
  store i16 %conv3791.2, ptr %mv.2, align 4, !dbg !2839
  %arrayidx3799.2 = getelementptr inbounds i8, ptr %arrayidx3784.2, i64 6, !dbg !2840
  store i16 %conv3795, ptr %arrayidx3799.2, align 2, !dbg !2841
  %inc3800.2 = add nsw i32 %nmvsad.3.1, 1, !dbg !2842
    #dbg_value(i32 %inc3800.2, !1628, !DIExpression(), !2775)
  br label %if.end3801.2, !dbg !2843

if.end3801.2:                                     ; preds = %if.then3777.2, %if.end3801.1
  %nmvsad.3.2 = phi i32 [ %inc3800.2, %if.then3777.2 ], [ %nmvsad.3.1, %if.end3801.1 ], !dbg !2775
  %bsad.4.2 = phi i32 [ %spec.select6189.2, %if.then3777.2 ], [ %bsad.4.1, %if.end3801.1 ], !dbg !2797
    #dbg_value(i32 %bsad.4.2, !1631, !DIExpression(), !2775)
    #dbg_value(i32 %nmvsad.3.2, !1628, !DIExpression(), !2775)
    #dbg_value(i64 3, !1643, !DIExpression(), !2820)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sads) #6, !dbg !2844
  %indvars.iv.next6448 = add nuw nsw i64 %indvars.iv6447, 3, !dbg !2845
    #dbg_value(i64 %indvars.iv.next6448, !1634, !DIExpression(), !2797)
  %712 = trunc nuw i64 %indvars.iv.next6448 to i32, !dbg !2807
  %cmp3728 = icmp sgt i32 %sub3727, %712, !dbg !2807
  br i1 %cmp3728, label %for.body3730, label %for.cond3809.preheader, !dbg !2808, !llvm.loop !2846

for.body3812:                                     ; preds = %for.body3812.lr.ph, %if.end3859
  %indvars.iv6450 = phi i64 [ %695, %for.body3812.lr.ph ], [ %indvars.iv.next6451, %if.end3859 ]
  %bsad.56298 = phi i32 [ %bsad.1.lcssa, %for.body3812.lr.ph ], [ %bsad.7, %if.end3859 ]
  %nmvsad.46297 = phi i32 [ %nmvsad.1.lcssa, %for.body3812.lr.ph ], [ %nmvsad.5, %if.end3859 ]
    #dbg_value(i64 %indvars.iv6450, !1634, !DIExpression(), !2797)
    #dbg_value(i32 %bsad.56298, !1631, !DIExpression(), !2775)
    #dbg_value(i32 %nmvsad.46297, !1628, !DIExpression(), !2775)
  %arrayidx3815 = getelementptr inbounds i16, ptr %666, i64 %indvars.iv6450, !dbg !2848
  %713 = load i16, ptr %arrayidx3815, align 2, !dbg !2848
  %conv3816 = sext i16 %713 to i32, !dbg !2848
  %add3817 = add nsw i32 %cond3565, %conv3816, !dbg !2849
    #dbg_value(i32 %add3817, !1648, !DIExpression(), !2850)
  %714 = load ptr, ptr %arrayidx3680, align 8, !dbg !2851
  %idx.ext3823 = sext i32 %add3817 to i64, !dbg !2852
  %gep6295 = getelementptr i8, ptr %invariant.gep6294, i64 %idx.ext3823, !dbg !2853
  %call3828 = call i32 %714(ptr noundef %5, i32 noundef 16, ptr noundef %gep6295, i32 noundef %3) #6, !dbg !2851
  %715 = load i16, ptr %arrayidx3815, align 2, !dbg !2854
  %idxprom3831 = sext i16 %715 to i64, !dbg !2855
  %arrayidx3832 = getelementptr inbounds i16, ptr %add.ptr3617, i64 %idxprom3831, !dbg !2855
  %716 = load i16, ptr %arrayidx3832, align 2, !dbg !2855
  %conv3833 = zext i16 %716 to i32, !dbg !2855
  %add3834 = add nsw i32 %call3828, %conv3833, !dbg !2856
    #dbg_value(i32 %add3834, !1652, !DIExpression(), !2850)
  %mul3835 = mul nsw i32 %bsad.56298, %cond3677, !dbg !2857
  %shr3836 = ashr i32 %mul3835, 3, !dbg !2859
  %cmp3837 = icmp slt i32 %add3834, %shr3836, !dbg !2860
  br i1 %cmp3837, label %if.then3839, label %if.end3859, !dbg !2861

if.then3839:                                      ; preds = %for.body3812
  %spec.select6190 = call i32 @llvm.smin.i32(i32 %add3834, i32 %bsad.56298), !dbg !2862
    #dbg_value(i32 %spec.select6190, !1631, !DIExpression(), !2775)
  %add3844 = add nsw i32 %add3834, %conv3707, !dbg !2864
  %idxprom3845 = sext i32 %nmvsad.46297 to i64, !dbg !2865
  %arrayidx3846 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %idxprom3845, !dbg !2865
  store i32 %add3844, ptr %arrayidx3846, align 4, !dbg !2866
  %conv3848 = trunc i32 %add3817 to i16, !dbg !2867
  %mv3851 = getelementptr inbounds i8, ptr %arrayidx3846, i64 4, !dbg !2868
  store i16 %conv3848, ptr %mv3851, align 4, !dbg !2869
  %arrayidx3857 = getelementptr inbounds i8, ptr %arrayidx3846, i64 6, !dbg !2870
  store i16 %conv3853, ptr %arrayidx3857, align 2, !dbg !2871
  %inc3858 = add nsw i32 %nmvsad.46297, 1, !dbg !2872
    #dbg_value(i32 %inc3858, !1628, !DIExpression(), !2775)
  br label %if.end3859, !dbg !2873

if.end3859:                                       ; preds = %if.then3839, %for.body3812
  %nmvsad.5 = phi i32 [ %inc3858, %if.then3839 ], [ %nmvsad.46297, %for.body3812 ], !dbg !2775
  %bsad.7 = phi i32 [ %spec.select6190, %if.then3839 ], [ %bsad.56298, %for.body3812 ], !dbg !2797
    #dbg_value(i32 %bsad.7, !1631, !DIExpression(), !2775)
    #dbg_value(i32 %nmvsad.5, !1628, !DIExpression(), !2775)
  %indvars.iv.next6451 = add nuw nsw i64 %indvars.iv6450, 1, !dbg !2874
    #dbg_value(i64 %indvars.iv.next6451, !1634, !DIExpression(), !2797)
  %717 = trunc nuw i64 %indvars.iv.next6451 to i32, !dbg !2811
  %cmp3810 = icmp sgt i32 %call3725, %717, !dbg !2811
  br i1 %cmp3810, label %for.body3812, label %for.end3862, !dbg !2810, !llvm.loop !2875

for.end3862:                                      ; preds = %if.end3859, %for.cond3809.preheader
  %nmvsad.4.lcssa = phi i32 [ %nmvsad.1.lcssa, %for.cond3809.preheader ], [ %nmvsad.5, %if.end3859 ], !dbg !2775
  %bsad.5.lcssa = phi i32 [ %bsad.1.lcssa, %for.cond3809.preheader ], [ %bsad.7, %if.end3859 ], !dbg !2797
  %add3863 = add nsw i32 %bsad.5.lcssa, %conv3707, !dbg !2877
    #dbg_value(i32 %add3863, !1631, !DIExpression(), !2775)
  br label %cleanup3864, !dbg !2878

cleanup3864:                                      ; preds = %for.body3702, %for.end3862
  %nmvsad.6 = phi i32 [ %nmvsad.4.lcssa, %for.end3862 ], [ %nmvsad.06303, %for.body3702 ], !dbg !2787
  %bsad.8 = phi i32 [ %add3863, %for.end3862 ], [ %bsad.06304, %for.body3702 ], !dbg !2775
    #dbg_value(i32 %bsad.8, !1631, !DIExpression(), !2775)
    #dbg_value(i32 %nmvsad.6, !1628, !DIExpression(), !2775)
  %indvars.iv.next6455 = add nsw i64 %indvars.iv6454, 1, !dbg !2879
    #dbg_value(i64 %indvars.iv.next6455, !1632, !DIExpression(), !2784)
  %lftr.wideiv6457 = trunc i64 %indvars.iv.next6455 to i32, !dbg !2785
  %exitcond6458.not = icmp eq i32 %689, %lftr.wideiv6457, !dbg !2785
  br i1 %exitcond6458.not, label %for.cond.cleanup3701, label %for.body3702, !dbg !2786, !llvm.loop !2880

while.cond.loopexit:                              ; preds = %for.inc3896, %for.body3904.prol.loopexit, %for.body3904, %for.end3898
  %i3882.1.lcssa = phi i32 [ %i3882.0.lcssa, %for.end3898 ], [ %add3914.lcssa.unr, %for.body3904.prol.loopexit ], [ %add3914.1, %for.body3904 ], [ %nmvsad.76318, %for.inc3896 ], !dbg !2882
    #dbg_value(i32 %shr3884, !1630, !DIExpression(), !2775)
    #dbg_value(i32 %i3882.1.lcssa, !1628, !DIExpression(), !2775)
  %cmp3876 = icmp sgt i32 %i3882.1.lcssa, %mul3875, !dbg !2792
  %cmp3879 = icmp sgt i32 %shr3884, %bsad.0.lcssa, !dbg !2793
  %718 = select i1 %cmp3876, i1 %cmp3879, i1 false, !dbg !2793
  br i1 %718, label %while.body, label %while.cond3919.preheader, !dbg !2794, !llvm.loop !2883

while.cond3919.preheader:                         ; preds = %while.cond.loopexit, %for.cond.cleanup3701
  %nmvsad.7.lcssa = phi i32 [ %nmvsad.0.lcssa, %for.cond.cleanup3701 ], [ %i3882.1.lcssa, %while.cond.loopexit ], !dbg !2775
    #dbg_value(i32 %nmvsad.7.lcssa, !1628, !DIExpression(), !2775)
  %cmp39206325 = icmp sgt i32 %nmvsad.7.lcssa, %shr3872, !dbg !2885
  br i1 %cmp39206325, label %for.cond3924.preheader.preheader, label %for.cond3950.preheader, !dbg !2886

for.cond3924.preheader.preheader:                 ; preds = %while.cond3919.preheader
  %719 = sext i32 %nmvsad.7.lcssa to i64, !dbg !2886
  %720 = sext i32 %shr3872 to i64, !dbg !2886
  br label %for.cond3924.preheader, !dbg !2886

while.body:                                       ; preds = %while.body.preheader, %while.cond.loopexit
  %sad_thresh.06319 = phi i32 [ %shr3884, %while.cond.loopexit ], [ %shr3874, %while.body.preheader ]
  %nmvsad.76318 = phi i32 [ %i3882.1.lcssa, %while.cond.loopexit ], [ %nmvsad.0.lcssa, %while.body.preheader ]
    #dbg_value(i32 %sad_thresh.06319, !1630, !DIExpression(), !2775)
    #dbg_value(i32 %nmvsad.76318, !1628, !DIExpression(), !2775)
  %add3883 = add nsw i32 %sad_thresh.06319, %bsad.0.lcssa, !dbg !2887
  %shr3884 = ashr i32 %add3883, 1, !dbg !2888
    #dbg_value(i32 %shr3884, !1630, !DIExpression(), !2775)
    #dbg_value(i32 0, !1653, !DIExpression(), !2882)
  %cmp38866308 = icmp sgt i32 %nmvsad.76318, 0, !dbg !2889
  br i1 %cmp38866308, label %land.rhs3888.preheader, label %for.end3898, !dbg !2892

land.rhs3888.preheader:                           ; preds = %while.body
  %721 = zext nneg i32 %nmvsad.76318 to i64, !dbg !2893
  br label %land.rhs3888, !dbg !2893

land.rhs3888:                                     ; preds = %land.rhs3888.preheader, %for.inc3896
  %indvars.iv6459 = phi i64 [ 0, %land.rhs3888.preheader ], [ %indvars.iv.next6460, %for.inc3896 ]
    #dbg_value(i64 %indvars.iv6459, !1653, !DIExpression(), !2882)
  %arrayidx3890 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %indvars.iv6459, !dbg !2894
  %722 = load i32, ptr %arrayidx3890, align 4, !dbg !2895
  %cmp3892.not = icmp sgt i32 %722, %shr3884, !dbg !2896
  br i1 %cmp3892.not, label %for.end3898.loopexit, label %for.inc3896, !dbg !2893

for.inc3896:                                      ; preds = %land.rhs3888
  %indvars.iv.next6460 = add nuw nsw i64 %indvars.iv6459, 1, !dbg !2897
    #dbg_value(i64 %indvars.iv.next6460, !1653, !DIExpression(), !2882)
  %exitcond6462.not = icmp eq i64 %indvars.iv.next6460, %721, !dbg !2889
  br i1 %exitcond6462.not, label %while.cond.loopexit, label %land.rhs3888, !dbg !2892, !llvm.loop !2898

for.end3898.loopexit:                             ; preds = %land.rhs3888
  %723 = trunc nuw nsw i64 %indvars.iv6459 to i32
  br label %for.end3898, !dbg !2900

for.end3898:                                      ; preds = %for.end3898.loopexit, %while.body
  %i3882.0.lcssa = phi i32 [ 0, %while.body ], [ %723, %for.end3898.loopexit ], !dbg !2901
    #dbg_value(i32 %i3882.0.lcssa, !1655, !DIExpression(), !2902)
    #dbg_value(i32 %i3882.0.lcssa, !1653, !DIExpression(), !2882)
  %cmp39016312 = icmp slt i32 %i3882.0.lcssa, %nmvsad.76318, !dbg !2900
  br i1 %cmp39016312, label %for.body3904.lr.ph, label %while.cond.loopexit, !dbg !2903

for.body3904.lr.ph:                               ; preds = %for.end3898
  %add3911.neg = xor i32 %shr3884, -1
  %724 = zext i32 %i3882.0.lcssa to i64, !dbg !2903
  %725 = sub i32 %nmvsad.76318, %i3882.0.lcssa, !dbg !2903
  %.neg6691 = add i32 %i3882.0.lcssa, 1, !dbg !2903
  %xtraiter = and i32 %725, 1, !dbg !2903
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !2903
  br i1 %lcmp.mod.not, label %for.body3904.prol.loopexit, label %for.body3904.prol, !dbg !2903

for.body3904.prol:                                ; preds = %for.body3904.lr.ph
    #dbg_value(i64 %724, !1655, !DIExpression(), !2902)
    #dbg_value(i32 %i3882.0.lcssa, !1653, !DIExpression(), !2882)
  %arrayidx3907.prol = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %724, !dbg !2904
  %726 = load i64, ptr %arrayidx3907.prol, align 8, !dbg !2904
  %idxprom3908.prol = sext i32 %i3882.0.lcssa to i64, !dbg !2905
  %arrayidx3909.prol = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %idxprom3908.prol, !dbg !2905
  store i64 %726, ptr %arrayidx3909.prol, align 8, !dbg !2906
    #dbg_value(i64 %726, !1660, !DIExpression(), !2907)
  %conv3910.prol = trunc i64 %726 to i32, !dbg !2908
    #dbg_value(i32 %conv3910.prol, !1657, !DIExpression(), !2909)
  %sub3912.prol = add i32 %conv3910.prol, %add3911.neg, !dbg !2910
  %shr3913.prol = lshr i32 %sub3912.prol, 31, !dbg !2911
  %add3914.prol = add i32 %shr3913.prol, %i3882.0.lcssa, !dbg !2912
    #dbg_value(i32 %add3914.prol, !1653, !DIExpression(), !2882)
  %indvars.iv.next6464.prol = add nuw nsw i64 %724, 1, !dbg !2913
    #dbg_value(i64 %indvars.iv.next6464.prol, !1655, !DIExpression(), !2902)
  br label %for.body3904.prol.loopexit, !dbg !2903

for.body3904.prol.loopexit:                       ; preds = %for.body3904.prol, %for.body3904.lr.ph
  %indvars.iv6463.unr = phi i64 [ %724, %for.body3904.lr.ph ], [ %indvars.iv.next6464.prol, %for.body3904.prol ]
  %i3882.16313.unr = phi i32 [ %i3882.0.lcssa, %for.body3904.lr.ph ], [ %add3914.prol, %for.body3904.prol ]
  %add3914.lcssa.unr = phi i32 [ poison, %for.body3904.lr.ph ], [ %add3914.prol, %for.body3904.prol ]
  %727 = icmp eq i32 %nmvsad.76318, %.neg6691, !dbg !2903
  br i1 %727, label %while.cond.loopexit, label %for.body3904, !dbg !2903

for.body3904:                                     ; preds = %for.body3904.prol.loopexit, %for.body3904
  %indvars.iv6463 = phi i64 [ %indvars.iv.next6464.1, %for.body3904 ], [ %indvars.iv6463.unr, %for.body3904.prol.loopexit ]
  %i3882.16313 = phi i32 [ %add3914.1, %for.body3904 ], [ %i3882.16313.unr, %for.body3904.prol.loopexit ]
    #dbg_value(i64 %indvars.iv6463, !1655, !DIExpression(), !2902)
    #dbg_value(i32 %i3882.16313, !1653, !DIExpression(), !2882)
  %arrayidx3907 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %indvars.iv6463, !dbg !2904
  %728 = load i64, ptr %arrayidx3907, align 8, !dbg !2904
  %idxprom3908 = sext i32 %i3882.16313 to i64, !dbg !2905
  %arrayidx3909 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %idxprom3908, !dbg !2905
  store i64 %728, ptr %arrayidx3909, align 8, !dbg !2906
    #dbg_value(i64 %728, !1660, !DIExpression(), !2907)
  %conv3910 = trunc i64 %728 to i32, !dbg !2908
    #dbg_value(i32 %conv3910, !1657, !DIExpression(), !2909)
  %sub3912 = add i32 %conv3910, %add3911.neg, !dbg !2910
  %shr3913 = lshr i32 %sub3912, 31, !dbg !2911
  %add3914 = add i32 %shr3913, %i3882.16313, !dbg !2912
    #dbg_value(i32 %add3914, !1653, !DIExpression(), !2882)
    #dbg_value(i64 %indvars.iv6463, !1655, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2902)
  %gep6699 = getelementptr %struct.mvsad_t, ptr %invariant.gep6698, i64 %indvars.iv6463, !dbg !2904
  %729 = load i64, ptr %gep6699, align 8, !dbg !2904
  %idxprom3908.1 = sext i32 %add3914 to i64, !dbg !2905
  %arrayidx3909.1 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %idxprom3908.1, !dbg !2905
  store i64 %729, ptr %arrayidx3909.1, align 8, !dbg !2906
    #dbg_value(i64 %729, !1660, !DIExpression(), !2907)
  %conv3910.1 = trunc i64 %729 to i32, !dbg !2908
    #dbg_value(i32 %conv3910.1, !1657, !DIExpression(), !2909)
  %sub3912.1 = add i32 %conv3910.1, %add3911.neg, !dbg !2910
  %shr3913.1 = lshr i32 %sub3912.1, 31, !dbg !2911
  %add3914.1 = add i32 %shr3913.1, %add3914, !dbg !2912
    #dbg_value(i32 %add3914.1, !1653, !DIExpression(), !2882)
  %indvars.iv.next6464.1 = add nuw nsw i64 %indvars.iv6463, 2, !dbg !2913
    #dbg_value(i64 %indvars.iv.next6464.1, !1655, !DIExpression(), !2902)
  %730 = trunc nuw i64 %indvars.iv.next6464.1 to i32, !dbg !2900
  %cmp3901.1 = icmp sgt i32 %nmvsad.76318, %730, !dbg !2900
  br i1 %cmp3901.1, label %for.body3904, label %while.cond.loopexit, !dbg !2903, !llvm.loop !2914

for.cond3924.preheader:                           ; preds = %for.cond3924.preheader.preheader, %for.cond.cleanup3927
  %indvar = phi i32 [ 0, %for.cond3924.preheader.preheader ], [ %indvar.next, %for.cond.cleanup3927 ]
  %indvars.iv6471 = phi i64 [ %719, %for.cond3924.preheader.preheader ], [ %indvars.iv.next6472, %for.cond.cleanup3927 ]
  %731 = sub i32 %nmvsad.7.lcssa, %indvar, !dbg !2916
  %732 = zext i32 %731 to i64, !dbg !2916
  %733 = add nsw i64 %732, -1, !dbg !2916
    #dbg_value(i64 %indvars.iv6471, !1628, !DIExpression(), !2775)
    #dbg_value(i32 1, !1665, !DIExpression(), !2918)
    #dbg_value(i32 0, !1663, !DIExpression(), !2919)
  %cmp39256321 = icmp sgt i64 %indvars.iv6471, 1, !dbg !2916
  br i1 %cmp39256321, label %for.body3928.preheader, label %for.cond.cleanup3927, !dbg !2920

for.body3928.preheader:                           ; preds = %for.cond3924.preheader
  %734 = add nsw i64 %732, -2, !dbg !2916
  %xtraiter6688 = and i64 %733, 3, !dbg !2920
  %735 = icmp ult i64 %734, 3, !dbg !2920
  br i1 %735, label %for.cond.cleanup3927.loopexit.unr-lcssa, label %for.body3928.preheader.new, !dbg !2920

for.body3928.preheader.new:                       ; preds = %for.body3928.preheader
  %unroll_iter = and i64 %733, -4, !dbg !2920
  br label %for.body3928, !dbg !2920

for.cond3950.preheader.loopexit:                  ; preds = %for.cond.cleanup3927
  %736 = trunc nsw i64 %indvars.iv.next6472 to i32, !dbg !2921
  br label %for.cond3950.preheader, !dbg !2921

for.cond3950.preheader:                           ; preds = %for.cond3950.preheader.loopexit, %while.cond3919.preheader
  %nmvsad.8.lcssa = phi i32 [ %nmvsad.7.lcssa, %while.cond3919.preheader ], [ %736, %for.cond3950.preheader.loopexit ], !dbg !2775
    #dbg_value(i32 %bmx.4, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.4, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.6, !1405, !DIExpression(), !1843)
    #dbg_value(i32 0, !1667, !DIExpression(), !2922)
  %cmp39516328 = icmp sgt i32 %nmvsad.8.lcssa, 0, !dbg !2921
  br i1 %cmp39516328, label %for.body3954.lr.ph, label %if.end4202, !dbg !2923

for.body3954.lr.ph:                               ; preds = %for.cond3950.preheader
  %fpelcmp3957 = getelementptr inbounds i8, ptr %h, i64 31928
  %arrayidx3959 = getelementptr inbounds [7 x ptr], ptr %fpelcmp3957, i64 0, i64 %idxprom
  %wide.trip.count6477 = zext nneg i32 %nmvsad.8.lcssa to i64, !dbg !2921
  br label %for.body3954, !dbg !2923

for.cond.cleanup3927.loopexit.unr-lcssa:          ; preds = %for.body3928, %for.body3928.preheader
  %spec.select6191.lcssa.ph = phi i32 [ poison, %for.body3928.preheader ], [ %spec.select6191.3, %for.body3928 ]
  %indvars.iv6466.unr = phi i64 [ 1, %for.body3928.preheader ], [ %indvars.iv.next6467.3, %for.body3928 ]
  %bi.06322.unr = phi i32 [ 0, %for.body3928.preheader ], [ %spec.select6191.3, %for.body3928 ]
  %lcmp.mod6689.not = icmp eq i64 %xtraiter6688, 0, !dbg !2920
  br i1 %lcmp.mod6689.not, label %for.cond.cleanup3927, label %for.body3928.epil, !dbg !2920

for.body3928.epil:                                ; preds = %for.cond.cleanup3927.loopexit.unr-lcssa, %for.body3928.epil
  %indvars.iv6466.epil = phi i64 [ %indvars.iv.next6467.epil, %for.body3928.epil ], [ %indvars.iv6466.unr, %for.cond.cleanup3927.loopexit.unr-lcssa ]
  %bi.06322.epil = phi i32 [ %spec.select6191.epil, %for.body3928.epil ], [ %bi.06322.unr, %for.cond.cleanup3927.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body3928.epil ], [ 0, %for.cond.cleanup3927.loopexit.unr-lcssa ]
    #dbg_value(i64 %indvars.iv6466.epil, !1665, !DIExpression(), !2918)
    #dbg_value(i32 %bi.06322.epil, !1663, !DIExpression(), !2919)
  %arrayidx3930.epil = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %indvars.iv6466.epil, !dbg !2924
  %737 = load i32, ptr %arrayidx3930.epil, align 4, !dbg !2926
  %idxprom3932.epil = sext i32 %bi.06322.epil to i64, !dbg !2927
  %arrayidx3933.epil = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %idxprom3932.epil, !dbg !2927
  %738 = load i32, ptr %arrayidx3933.epil, align 4, !dbg !2928
  %cmp3935.epil = icmp sgt i32 %737, %738, !dbg !2929
  %739 = trunc nuw nsw i64 %indvars.iv6466.epil to i32, !dbg !2930
  %spec.select6191.epil = select i1 %cmp3935.epil, i32 %739, i32 %bi.06322.epil, !dbg !2930
    #dbg_value(i32 %spec.select6191.epil, !1663, !DIExpression(), !2919)
  %indvars.iv.next6467.epil = add nuw nsw i64 %indvars.iv6466.epil, 1, !dbg !2931
    #dbg_value(i64 %indvars.iv.next6467.epil, !1665, !DIExpression(), !2918)
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !2920
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter6688, !dbg !2920
  br i1 %epil.iter.cmp.not, label %for.cond.cleanup3927, label %for.body3928.epil, !dbg !2920, !llvm.loop !2932

for.cond.cleanup3927:                             ; preds = %for.cond.cleanup3927.loopexit.unr-lcssa, %for.body3928.epil, %for.cond3924.preheader
  %bi.0.lcssa = phi i32 [ 0, %for.cond3924.preheader ], [ %spec.select6191.lcssa.ph, %for.cond.cleanup3927.loopexit.unr-lcssa ], [ %spec.select6191.epil, %for.body3928.epil ], !dbg !2919
  %indvars.iv.next6472 = add nsw i64 %indvars.iv6471, -1, !dbg !2934
    #dbg_value(i64 %indvars.iv.next6472, !1628, !DIExpression(), !2775)
  %arrayidx3945 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %indvars.iv.next6472, !dbg !2935
  %740 = load i64, ptr %arrayidx3945, align 8, !dbg !2935
  %idxprom3946 = sext i32 %bi.0.lcssa to i64, !dbg !2935
  %arrayidx3947 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %idxprom3946, !dbg !2935
  store i64 %740, ptr %arrayidx3947, align 8, !dbg !2935
  %cmp3920 = icmp sgt i64 %indvars.iv.next6472, %720, !dbg !2885
  %indvar.next = add i32 %indvar, 1, !dbg !2886
  br i1 %cmp3920, label %for.cond3924.preheader, label %for.cond3950.preheader.loopexit, !dbg !2886, !llvm.loop !2937

for.body3928:                                     ; preds = %for.body3928, %for.body3928.preheader.new
  %indvars.iv6466 = phi i64 [ 1, %for.body3928.preheader.new ], [ %indvars.iv.next6467.3, %for.body3928 ]
  %bi.06322 = phi i32 [ 0, %for.body3928.preheader.new ], [ %spec.select6191.3, %for.body3928 ]
  %niter = phi i64 [ 0, %for.body3928.preheader.new ], [ %niter.next.3, %for.body3928 ]
    #dbg_value(i64 %indvars.iv6466, !1665, !DIExpression(), !2918)
    #dbg_value(i32 %bi.06322, !1663, !DIExpression(), !2919)
  %arrayidx3930 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %indvars.iv6466, !dbg !2924
  %741 = load i32, ptr %arrayidx3930, align 4, !dbg !2926
  %idxprom3932 = sext i32 %bi.06322 to i64, !dbg !2927
  %arrayidx3933 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %idxprom3932, !dbg !2927
  %742 = load i32, ptr %arrayidx3933, align 4, !dbg !2928
  %cmp3935 = icmp sgt i32 %741, %742, !dbg !2929
  %743 = trunc nuw nsw i64 %indvars.iv6466 to i32, !dbg !2930
  %spec.select6191 = select i1 %cmp3935, i32 %743, i32 %bi.06322, !dbg !2930
    #dbg_value(i32 %spec.select6191, !1663, !DIExpression(), !2919)
  %indvars.iv.next6467 = add nuw nsw i64 %indvars.iv6466, 1, !dbg !2931
    #dbg_value(i64 %indvars.iv.next6467, !1665, !DIExpression(), !2918)
  %arrayidx3930.1 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %indvars.iv.next6467, !dbg !2924
  %744 = load i32, ptr %arrayidx3930.1, align 4, !dbg !2926
  %idxprom3932.1 = sext i32 %spec.select6191 to i64, !dbg !2927
  %arrayidx3933.1 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %idxprom3932.1, !dbg !2927
  %745 = load i32, ptr %arrayidx3933.1, align 4, !dbg !2928
  %cmp3935.1 = icmp sgt i32 %744, %745, !dbg !2929
  %746 = trunc nuw nsw i64 %indvars.iv.next6467 to i32, !dbg !2930
  %spec.select6191.1 = select i1 %cmp3935.1, i32 %746, i32 %spec.select6191, !dbg !2930
    #dbg_value(i32 %spec.select6191.1, !1663, !DIExpression(), !2919)
  %indvars.iv.next6467.1 = add nuw nsw i64 %indvars.iv6466, 2, !dbg !2931
    #dbg_value(i64 %indvars.iv.next6467.1, !1665, !DIExpression(), !2918)
  %arrayidx3930.2 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %indvars.iv.next6467.1, !dbg !2924
  %747 = load i32, ptr %arrayidx3930.2, align 4, !dbg !2926
  %idxprom3932.2 = sext i32 %spec.select6191.1 to i64, !dbg !2927
  %arrayidx3933.2 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %idxprom3932.2, !dbg !2927
  %748 = load i32, ptr %arrayidx3933.2, align 4, !dbg !2928
  %cmp3935.2 = icmp sgt i32 %747, %748, !dbg !2929
  %749 = trunc nuw nsw i64 %indvars.iv.next6467.1 to i32, !dbg !2930
  %spec.select6191.2 = select i1 %cmp3935.2, i32 %749, i32 %spec.select6191.1, !dbg !2930
    #dbg_value(i32 %spec.select6191.2, !1663, !DIExpression(), !2919)
  %indvars.iv.next6467.2 = add nuw nsw i64 %indvars.iv6466, 3, !dbg !2931
    #dbg_value(i64 %indvars.iv.next6467.2, !1665, !DIExpression(), !2918)
  %arrayidx3930.3 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %indvars.iv.next6467.2, !dbg !2924
  %750 = load i32, ptr %arrayidx3930.3, align 4, !dbg !2926
  %idxprom3932.3 = sext i32 %spec.select6191.2 to i64, !dbg !2927
  %arrayidx3933.3 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %idxprom3932.3, !dbg !2927
  %751 = load i32, ptr %arrayidx3933.3, align 4, !dbg !2928
  %cmp3935.3 = icmp sgt i32 %750, %751, !dbg !2929
  %752 = trunc nuw nsw i64 %indvars.iv.next6467.2 to i32, !dbg !2930
  %spec.select6191.3 = select i1 %cmp3935.3, i32 %752, i32 %spec.select6191.2, !dbg !2930
    #dbg_value(i32 %spec.select6191.3, !1663, !DIExpression(), !2919)
  %indvars.iv.next6467.3 = add nuw nsw i64 %indvars.iv6466, 4, !dbg !2931
    #dbg_value(i64 %indvars.iv.next6467.3, !1665, !DIExpression(), !2918)
  %niter.next.3 = add i64 %niter, 4, !dbg !2920
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !2920
  br i1 %niter.ncmp.3, label %for.cond.cleanup3927.loopexit.unr-lcssa, label %for.body3928, !dbg !2920, !llvm.loop !2939

for.body3954:                                     ; preds = %for.body3954.lr.ph, %for.body3954
  %indvars.iv6474 = phi i64 [ 0, %for.body3954.lr.ph ], [ %indvars.iv.next6475, %for.body3954 ]
  %bmx.966332 = phi i32 [ %bmx.4, %for.body3954.lr.ph ], [ %bmx.97, %for.body3954 ]
  %bmy.966331 = phi i32 [ %bmy.4, %for.body3954.lr.ph ], [ %bmy.97, %for.body3954 ]
  %bcost.1356330 = phi i32 [ %bcost.6, %for.body3954.lr.ph ], [ %bcost.136, %for.body3954 ]
    #dbg_value(i32 %bmx.966332, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.966331, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.1356330, !1405, !DIExpression(), !1843)
    #dbg_value(i64 %indvars.iv6474, !1667, !DIExpression(), !2922)
  %753 = load ptr, ptr %arrayidx3959, align 8, !dbg !2941
  %mv3962 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %indvars.iv6474, i32 1, !dbg !2941
  %arrayidx3963 = getelementptr inbounds i8, ptr %mv3962, i64 2, !dbg !2941
  %754 = load i16, ptr %arrayidx3963, align 2, !dbg !2941
  %conv3964 = sext i16 %754 to i32, !dbg !2941
  %mul3965 = mul nsw i32 %3, %conv3964, !dbg !2941
  %755 = load i16, ptr %mv3962, align 4, !dbg !2941
  %conv3970 = sext i16 %755 to i32, !dbg !2941
  %add3971 = add nsw i32 %mul3965, %conv3970, !dbg !2941
  %idxprom3972 = sext i32 %add3971 to i64, !dbg !2941
  %arrayidx3973 = getelementptr inbounds i8, ptr %6, i64 %idxprom3972, !dbg !2941
  %call3974 = call i32 %753(ptr noundef %5, i32 noundef 16, ptr noundef %arrayidx3973, i32 noundef %3) #6, !dbg !2941
  %756 = load i16, ptr %mv3962, align 4, !dbg !2941
  %conv3979 = sext i16 %756 to i32, !dbg !2941
  %shl3980 = shl nsw i32 %conv3979, 2, !dbg !2941
  %idxprom3981 = sext i32 %shl3980 to i64, !dbg !2941
  %arrayidx3982 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom3981, !dbg !2941
  %757 = load i16, ptr %arrayidx3982, align 2, !dbg !2941
  %conv3983 = zext i16 %757 to i32, !dbg !2941
  %758 = load i16, ptr %arrayidx3963, align 2, !dbg !2941
  %conv3988 = sext i16 %758 to i32, !dbg !2941
  %shl3989 = shl nsw i32 %conv3988, 2, !dbg !2941
  %idxprom3990 = sext i32 %shl3989 to i64, !dbg !2941
  %arrayidx3991 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom3990, !dbg !2941
  %759 = load i16, ptr %arrayidx3991, align 2, !dbg !2941
  %conv3992 = zext i16 %759 to i32, !dbg !2941
  %add3993 = add i32 %call3974, %conv3983, !dbg !2941
  %add3994 = add i32 %add3993, %conv3992, !dbg !2941
    #dbg_value(i32 %add3994, !1669, !DIExpression(), !2942)
  %cmp3995 = icmp slt i32 %add3994, %bcost.1356330, !dbg !2943
  %bcost.136 = call i32 @llvm.smin.i32(i32 %add3994, i32 %bcost.1356330), !dbg !2941
  %bmy.97 = select i1 %cmp3995, i32 %conv3988, i32 %bmy.966331, !dbg !2941
  %bmx.97 = select i1 %cmp3995, i32 %conv3979, i32 %bmx.966332, !dbg !2941
    #dbg_value(i32 %bmx.97, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.97, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.136, !1405, !DIExpression(), !1843)
  %indvars.iv.next6475 = add nuw nsw i64 %indvars.iv6474, 1, !dbg !2945
    #dbg_value(i64 %indvars.iv.next6475, !1667, !DIExpression(), !2922)
  %exitcond6478.not = icmp eq i64 %indvars.iv.next6475, %wide.trip.count6477, !dbg !2921
  br i1 %exitcond6478.not, label %if.end4202, label %for.body3954, !dbg !2923, !llvm.loop !2946

for.body4019:                                     ; preds = %for.body4019.lr.ph, %cleanup4194
  %indvars.iv6438 = phi i64 [ %smax, %for.body4019.lr.ph ], [ %indvars.iv.next6439, %cleanup4194 ]
  %bmx.986280 = phi i32 [ %bmx.4, %for.body4019.lr.ph ], [ %bmx.105, %cleanup4194 ]
  %bmy.986279 = phi i32 [ %bmy.4, %for.body4019.lr.ph ], [ %bmy.105, %cleanup4194 ]
  %bcost.1376278 = phi i32 [ %bcost.6, %for.body4019.lr.ph ], [ %bcost.144, %cleanup4194 ]
    #dbg_value(i32 %bmx.986280, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.986279, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.1376278, !1405, !DIExpression(), !1843)
    #dbg_value(i64 %indvars.iv6438, !1672, !DIExpression(), !2769)
  %760 = trunc nsw i64 %indvars.iv6438 to i32, !dbg !2948
  %shl4022 = shl i32 %760, 2, !dbg !2948
  %idxprom4023 = sext i32 %shl4022 to i64, !dbg !2949
  %arrayidx4024 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom4023, !dbg !2949
  %761 = load i16, ptr %arrayidx4024, align 2, !dbg !2949
  %conv4025 = zext i16 %761 to i32, !dbg !2949
    #dbg_value(i32 %conv4025, !1678, !DIExpression(), !2950)
  %cmp4026.not = icmp sgt i32 %bcost.1376278, %conv4025, !dbg !2951
  br i1 %cmp4026.not, label %if.end4029, label %cleanup4194, !dbg !2953

if.end4029:                                       ; preds = %for.body4019
  %sub4030 = sub nsw i32 %bcost.1376278, %conv4025, !dbg !2954
    #dbg_value(i32 %sub4030, !1405, !DIExpression(), !1843)
  %762 = load ptr, ptr %arrayidx4034, align 8, !dbg !2955
  %763 = mul nsw i64 %indvars.iv6438, %677, !dbg !2956
  %add.ptr4040 = getelementptr inbounds i16, ptr %add.ptr4037, i64 %763, !dbg !2957
  %call4043 = call i32 %762(ptr noundef nonnull %enc_dc, ptr noundef %add.ptr4040, i32 noundef %delta.0, ptr noundef %add.ptr4042, ptr noundef %666, i32 noundef %and3592, i32 noundef %sub4030) #6, !dbg !2955
    #dbg_value(i32 %call4043, !1623, !DIExpression(), !1852)
    #dbg_value(i32 0, !1675, !DIExpression(), !2950)
  %sub4045 = add nsw i32 %call4043, -2
  %invariant.gep = getelementptr i8, ptr %6, i64 %763, !dbg !2958
    #dbg_value(i32 %bmx.986280, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.986279, !1404, !DIExpression(), !1843)
  %cmp40466258 = icmp sgt i32 %call4043, 2, !dbg !2960
  br i1 %cmp40466258, label %for.body4048, label %for.end4149, !dbg !2962

for.body4048:                                     ; preds = %if.end4029, %for.inc4147
  %indvars.iv6432 = phi i64 [ %indvars.iv.next6433, %for.inc4147 ], [ 0, %if.end4029 ]
  %bmx.996262 = phi i32 [ %bmx.102, %for.inc4147 ], [ %bmx.986280, %if.end4029 ]
  %bmy.996261 = phi i32 [ %bmy.102, %for.inc4147 ], [ %bmy.986279, %if.end4029 ]
  %bcost.1386260 = phi i32 [ %bcost.141, %for.inc4147 ], [ %sub4030, %if.end4029 ]
    #dbg_value(i32 %bmx.996262, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.996261, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.1386260, !1405, !DIExpression(), !1843)
    #dbg_value(i64 %indvars.iv6432, !1675, !DIExpression(), !2950)
  %764 = load ptr, ptr %arrayidx4052, align 8, !dbg !2963
  %arrayidx4054 = getelementptr inbounds i16, ptr %666, i64 %indvars.iv6432, !dbg !2963
  %765 = load i16, ptr %arrayidx4054, align 2, !dbg !2963
  %conv4055 = sext i16 %765 to i32, !dbg !2963
  %add4056 = add nsw i32 %cond3565, %conv4055, !dbg !2963
  %idx.ext4057 = sext i32 %add4056 to i64, !dbg !2963
  %gep = getelementptr i8, ptr %invariant.gep, i64 %idx.ext4057, !dbg !2963
  %arrayidx4064 = getelementptr inbounds i8, ptr %arrayidx4054, i64 2, !dbg !2963
  %766 = load i16, ptr %arrayidx4064, align 2, !dbg !2963
  %conv4065 = sext i16 %766 to i32, !dbg !2963
  %add4066 = add nsw i32 %cond3565, %conv4065, !dbg !2963
  %idx.ext4067 = sext i32 %add4066 to i64, !dbg !2963
  %gep6255 = getelementptr i8, ptr %invariant.gep, i64 %idx.ext4067, !dbg !2963
  %arrayidx4074 = getelementptr inbounds i8, ptr %arrayidx4054, i64 4, !dbg !2963
  %767 = load i16, ptr %arrayidx4074, align 2, !dbg !2963
  %conv4075 = sext i16 %767 to i32, !dbg !2963
  %add4076 = add nsw i32 %cond3565, %conv4075, !dbg !2963
  %idx.ext4077 = sext i32 %add4076 to i64, !dbg !2963
  %gep6257 = getelementptr i8, ptr %invariant.gep, i64 %idx.ext4077, !dbg !2963
  call void %764(ptr noundef %5, ptr noundef %gep, ptr noundef %gep6255, ptr noundef %gep6257, i32 noundef %3, ptr noundef nonnull %costs) #6, !dbg !2963
  %768 = load i16, ptr %arrayidx4054, align 2, !dbg !2963
  %conv4085 = sext i16 %768 to i32, !dbg !2963
  %add4086 = add nsw i32 %cond3565, %conv4085, !dbg !2963
  %shl4087 = shl i32 %add4086, 2, !dbg !2963
  %idxprom4088 = sext i32 %shl4087 to i64, !dbg !2963
  %arrayidx4089 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom4088, !dbg !2963
  %769 = load i16, ptr %arrayidx4089, align 2, !dbg !2963
  %conv4090 = zext i16 %769 to i32, !dbg !2963
  %770 = load i32, ptr %costs, align 16, !dbg !2963
  %add4092 = add nsw i32 %770, %conv4090, !dbg !2963
  store i32 %add4092, ptr %costs, align 16, !dbg !2963, !DIAssignID !2965
    #dbg_assign(i32 %add4092, !1416, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2965, ptr %costs, !DIExpression(), !1843)
  %771 = load i16, ptr %arrayidx4064, align 2, !dbg !2963
  %conv4096 = sext i16 %771 to i32, !dbg !2963
  %add4097 = add nsw i32 %cond3565, %conv4096, !dbg !2963
  %shl4098 = shl i32 %add4097, 2, !dbg !2963
  %idxprom4099 = sext i32 %shl4098 to i64, !dbg !2963
  %arrayidx4100 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom4099, !dbg !2963
  %772 = load i16, ptr %arrayidx4100, align 2, !dbg !2963
  %conv4101 = zext i16 %772 to i32, !dbg !2963
  %773 = load i32, ptr %arrayidx4102, align 4, !dbg !2963
  %add4103 = add nsw i32 %773, %conv4101, !dbg !2963
  store i32 %add4103, ptr %arrayidx4102, align 4, !dbg !2963, !DIAssignID !2966
    #dbg_assign(i32 %add4103, !1416, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2966, ptr %arrayidx4102, !DIExpression(), !1843)
  %774 = load i16, ptr %arrayidx4074, align 2, !dbg !2963
  %conv4107 = sext i16 %774 to i32, !dbg !2963
  %add4108 = add nsw i32 %cond3565, %conv4107, !dbg !2963
  %shl4109 = shl i32 %add4108, 2, !dbg !2963
  %idxprom4110 = sext i32 %shl4109 to i64, !dbg !2963
  %arrayidx4111 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom4110, !dbg !2963
  %775 = load i16, ptr %arrayidx4111, align 2, !dbg !2963
  %conv4112 = zext i16 %775 to i32, !dbg !2963
  %776 = load i32, ptr %arrayidx4113, align 8, !dbg !2963
  %add4114 = add nsw i32 %776, %conv4112, !dbg !2963
  store i32 %add4114, ptr %arrayidx4113, align 8, !dbg !2963, !DIAssignID !2967
    #dbg_assign(i32 %add4114, !1416, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2967, ptr %arrayidx4113, !DIExpression(), !1843)
  %cmp4116 = icmp slt i32 %add4092, %bcost.1386260, !dbg !2968
  br i1 %cmp4116, label %if.then4118, label %if.end4124, !dbg !2963

if.then4118:                                      ; preds = %for.body4048
    #dbg_value(i32 %add4092, !1405, !DIExpression(), !1843)
  %777 = load i16, ptr %arrayidx4054, align 2, !dbg !2970
  %conv4122 = sext i16 %777 to i32, !dbg !2970
  %add4123 = add nsw i32 %cond3565, %conv4122, !dbg !2970
    #dbg_value(i32 %add4123, !1403, !DIExpression(), !1843)
    #dbg_value(i64 %indvars.iv6438, !1404, !DIExpression(), !1843)
  br label %if.end4124, !dbg !2970

if.end4124:                                       ; preds = %if.then4118, %for.body4048
  %bcost.139 = phi i32 [ %add4092, %if.then4118 ], [ %bcost.1386260, %for.body4048 ], !dbg !2950
  %bmy.100 = phi i32 [ %760, %if.then4118 ], [ %bmy.996261, %for.body4048 ], !dbg !1843
  %bmx.100 = phi i32 [ %add4123, %if.then4118 ], [ %bmx.996262, %for.body4048 ], !dbg !1843
    #dbg_value(i32 %bmx.100, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.100, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.139, !1405, !DIExpression(), !1843)
  %cmp4126 = icmp slt i32 %add4103, %bcost.139, !dbg !2972
  br i1 %cmp4126, label %if.then4128, label %if.end4135, !dbg !2963

if.then4128:                                      ; preds = %if.end4124
    #dbg_value(i32 %add4103, !1405, !DIExpression(), !1843)
  %778 = load i16, ptr %arrayidx4064, align 2, !dbg !2974
  %conv4133 = sext i16 %778 to i32, !dbg !2974
  %add4134 = add nsw i32 %cond3565, %conv4133, !dbg !2974
    #dbg_value(i32 %add4134, !1403, !DIExpression(), !1843)
    #dbg_value(i64 %indvars.iv6438, !1404, !DIExpression(), !1843)
  br label %if.end4135, !dbg !2974

if.end4135:                                       ; preds = %if.then4128, %if.end4124
  %bcost.140 = phi i32 [ %add4103, %if.then4128 ], [ %bcost.139, %if.end4124 ], !dbg !2963
  %bmy.101 = phi i32 [ %760, %if.then4128 ], [ %bmy.100, %if.end4124 ], !dbg !2963
  %bmx.101 = phi i32 [ %add4134, %if.then4128 ], [ %bmx.100, %if.end4124 ], !dbg !2963
    #dbg_value(i32 %bmx.101, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.101, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.140, !1405, !DIExpression(), !1843)
  %cmp4137 = icmp slt i32 %add4114, %bcost.140, !dbg !2976
  br i1 %cmp4137, label %if.then4139, label %for.inc4147, !dbg !2963

if.then4139:                                      ; preds = %if.end4135
    #dbg_value(i32 %add4114, !1405, !DIExpression(), !1843)
  %779 = load i16, ptr %arrayidx4074, align 2, !dbg !2978
  %conv4144 = sext i16 %779 to i32, !dbg !2978
  %add4145 = add nsw i32 %cond3565, %conv4144, !dbg !2978
    #dbg_value(i32 %add4145, !1403, !DIExpression(), !1843)
    #dbg_value(i64 %indvars.iv6438, !1404, !DIExpression(), !1843)
  br label %for.inc4147, !dbg !2978

for.inc4147:                                      ; preds = %if.end4135, %if.then4139
  %bcost.141 = phi i32 [ %add4114, %if.then4139 ], [ %bcost.140, %if.end4135 ], !dbg !2963
  %bmy.102 = phi i32 [ %760, %if.then4139 ], [ %bmy.101, %if.end4135 ], !dbg !2963
  %bmx.102 = phi i32 [ %add4145, %if.then4139 ], [ %bmx.101, %if.end4135 ], !dbg !2963
    #dbg_value(i32 %bmx.102, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.102, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.141, !1405, !DIExpression(), !1843)
  %indvars.iv.next6433 = add nuw nsw i64 %indvars.iv6432, 3, !dbg !2980
    #dbg_value(i64 %indvars.iv.next6433, !1675, !DIExpression(), !2950)
  %780 = trunc nuw i64 %indvars.iv.next6433 to i32, !dbg !2960
  %cmp4046 = icmp sgt i32 %sub4045, %780, !dbg !2960
  br i1 %cmp4046, label %for.body4048, label %for.end4149, !dbg !2962, !llvm.loop !2981

for.end4149:                                      ; preds = %for.inc4147, %if.end4029
  %i4020.0.lcssa = phi i32 [ 0, %if.end4029 ], [ %780, %for.inc4147 ], !dbg !2983
  %bcost.138.lcssa = phi i32 [ %sub4030, %if.end4029 ], [ %bcost.141, %for.inc4147 ], !dbg !2950
  %bmy.99.lcssa = phi i32 [ %bmy.986279, %if.end4029 ], [ %bmy.102, %for.inc4147 ], !dbg !1843
  %bmx.99.lcssa = phi i32 [ %bmx.986280, %if.end4029 ], [ %bmx.102, %for.inc4147 ], !dbg !1843
  %add4150 = add nsw i32 %bcost.138.lcssa, %conv4025, !dbg !2984
    #dbg_value(i32 %add4150, !1405, !DIExpression(), !1843)
    #dbg_value(i32 %bmx.99.lcssa, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.99.lcssa, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %i4020.0.lcssa, !1675, !DIExpression(), !2950)
  %cmp41526267 = icmp slt i32 %i4020.0.lcssa, %call4043, !dbg !2985
  br i1 %cmp41526267, label %for.body4154.lr.ph, label %cleanup4194, !dbg !2986

for.body4154.lr.ph:                               ; preds = %for.end4149
  %781 = trunc nsw i64 %763 to i32
  %add4164 = add i32 %cond3565, %781
  %782 = zext i32 %i4020.0.lcssa to i64, !dbg !2986
  br label %for.body4154, !dbg !2986

for.body4154:                                     ; preds = %for.body4154.lr.ph, %for.body4154
  %indvars.iv6435 = phi i64 [ %782, %for.body4154.lr.ph ], [ %indvars.iv.next6436, %for.body4154 ]
  %bmx.1036271 = phi i32 [ %bmx.99.lcssa, %for.body4154.lr.ph ], [ %bmx.104, %for.body4154 ]
  %bmy.1036270 = phi i32 [ %bmy.99.lcssa, %for.body4154.lr.ph ], [ %bmy.104, %for.body4154 ]
  %bcost.1426269 = phi i32 [ %add4150, %for.body4154.lr.ph ], [ %bcost.143, %for.body4154 ]
    #dbg_value(i32 %bmx.1036271, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.1036270, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.1426269, !1405, !DIExpression(), !1843)
    #dbg_value(i64 %indvars.iv6435, !1675, !DIExpression(), !2950)
  %783 = load ptr, ptr %arrayidx4159, align 8, !dbg !2987
  %arrayidx4162 = getelementptr inbounds i16, ptr %666, i64 %indvars.iv6435, !dbg !2987
  %784 = load i16, ptr %arrayidx4162, align 2, !dbg !2987
  %conv4163 = sext i16 %784 to i32, !dbg !2987
  %add4165 = add i32 %add4164, %conv4163, !dbg !2987
  %idxprom4166 = sext i32 %add4165 to i64, !dbg !2987
  %arrayidx4167 = getelementptr inbounds i8, ptr %6, i64 %idxprom4166, !dbg !2987
  %call4168 = call i32 %783(ptr noundef %5, i32 noundef 16, ptr noundef %arrayidx4167, i32 noundef %3) #6, !dbg !2987
  %785 = load i16, ptr %arrayidx4162, align 2, !dbg !2987
  %conv4171 = sext i16 %785 to i32, !dbg !2987
  %add4172 = add nsw i32 %cond3565, %conv4171, !dbg !2987
  %shl4173 = shl i32 %add4172, 2, !dbg !2987
  %idxprom4174 = sext i32 %shl4173 to i64, !dbg !2987
  %arrayidx4175 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom4174, !dbg !2987
  %786 = load i16, ptr %arrayidx4175, align 2, !dbg !2987
  %conv4176 = zext i16 %786 to i32, !dbg !2987
  %787 = load i16, ptr %arrayidx4024, align 2, !dbg !2987
  %conv4180 = zext i16 %787 to i32, !dbg !2987
  %add4181 = add i32 %call4168, %conv4176, !dbg !2987
  %add4182 = add i32 %add4181, %conv4180, !dbg !2987
    #dbg_value(i32 %add4182, !1679, !DIExpression(), !2988)
  %cmp4183 = icmp slt i32 %add4182, %bcost.1426269, !dbg !2989
  %bcost.143 = call i32 @llvm.smin.i32(i32 %add4182, i32 %bcost.1426269), !dbg !2987
  %bmy.104 = select i1 %cmp4183, i32 %760, i32 %bmy.1036270, !dbg !2987
  %bmx.104 = select i1 %cmp4183, i32 %add4172, i32 %bmx.1036271, !dbg !2987
    #dbg_value(i32 %bmx.104, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.104, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.143, !1405, !DIExpression(), !1843)
  %indvars.iv.next6436 = add nuw nsw i64 %indvars.iv6435, 1, !dbg !2991
    #dbg_value(i64 %indvars.iv.next6436, !1675, !DIExpression(), !2950)
  %788 = trunc nuw i64 %indvars.iv.next6436 to i32, !dbg !2985
  %cmp4152 = icmp sgt i32 %call4043, %788, !dbg !2985
  br i1 %cmp4152, label %for.body4154, label %cleanup4194, !dbg !2986, !llvm.loop !2992

cleanup4194:                                      ; preds = %for.body4154, %for.end4149, %for.body4019
  %bcost.144 = phi i32 [ %bcost.1376278, %for.body4019 ], [ %add4150, %for.end4149 ], [ %bcost.143, %for.body4154 ], !dbg !1843
  %bmy.105 = phi i32 [ %bmy.986279, %for.body4019 ], [ %bmy.99.lcssa, %for.end4149 ], [ %bmy.104, %for.body4154 ], !dbg !2994
  %bmx.105 = phi i32 [ %bmx.986280, %for.body4019 ], [ %bmx.99.lcssa, %for.end4149 ], [ %bmx.104, %for.body4154 ], !dbg !2994
    #dbg_value(i32 %bmx.105, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.105, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.144, !1405, !DIExpression(), !1843)
  %indvars.iv.next6439 = add nsw i64 %indvars.iv6438, 1, !dbg !2996
    #dbg_value(i64 %indvars.iv.next6439, !1672, !DIExpression(), !2769)
  %lftr.wideiv = trunc i64 %indvars.iv.next6439 to i32, !dbg !2770
  %exitcond6441.not = icmp eq i32 %680, %lftr.wideiv, !dbg !2770
  br i1 %exitcond6441.not, label %if.end4202, label %for.body4019, !dbg !2771, !llvm.loop !2997

if.end4202:                                       ; preds = %cleanup4194, %for.body3954, %for.cond4015.preheader, %for.cond3950.preheader
  %bcost.145 = phi i32 [ %bcost.6, %for.cond3950.preheader ], [ %bcost.6, %for.cond4015.preheader ], [ %bcost.136, %for.body3954 ], [ %bcost.144, %cleanup4194 ], !dbg !2994
  %bmy.106 = phi i32 [ %bmy.4, %for.cond3950.preheader ], [ %bmy.4, %for.cond4015.preheader ], [ %bmy.97, %for.body3954 ], [ %bmy.105, %cleanup4194 ], !dbg !2994
  %bmx.106 = phi i32 [ %bmx.4, %for.cond3950.preheader ], [ %bmx.4, %for.cond4015.preheader ], [ %bmx.97, %for.body3954 ], [ %bmx.105, %cleanup4194 ], !dbg !2994
    #dbg_value(i32 %bmx.106, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.106, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.145, !1405, !DIExpression(), !1843)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %enc_dc) #6, !dbg !2999
  br label %sw.epilog, !dbg !3000

sw.epilog:                                        ; preds = %for.end2076, %if.then1405, %cleanup3553, %if.end264, %if.end4202, %if.end822, %do.end
  %bcost.146 = phi i32 [ %bcost.6, %if.end264 ], [ %bcost.145, %if.end4202 ], [ %bcost.133, %cleanup3553 ], [ %bcost.33, %if.end822 ], [ %shr408, %do.end ], [ %bcost.6, %if.then1405 ], [ %bcost.42, %for.end2076 ], !dbg !1843
  %bmy.107 = phi i32 [ %bmy.4, %if.end264 ], [ %bmy.106, %if.end4202 ], [ %bmy.94, %cleanup3553 ], [ %add1040, %if.end822 ], [ %bmy.6, %do.end ], [ %bmy.31, %if.then1405 ], [ %bmy.61, %for.end2076 ], !dbg !1843
  %bmx.107 = phi i32 [ %bmx.4, %if.end264 ], [ %bmx.106, %if.end4202 ], [ %bmx.94, %cleanup3553 ], [ %add1035, %if.end822 ], [ %bmx.6, %do.end ], [ %bmx.31, %if.then1405 ], [ %bmx.61, %for.end2076 ], !dbg !1843
    #dbg_value(i32 %bmx.107, !1403, !DIExpression(), !1843)
    #dbg_value(i32 %bmy.107, !1404, !DIExpression(), !1843)
    #dbg_value(i32 %bcost.146, !1405, !DIExpression(), !1843)
  %cmp4203 = icmp slt i32 %bpred_cost.5, %bcost.146, !dbg !3001
  %conv4206 = trunc i32 %bpred_mx.5 to i16, !dbg !3003
  %conv4209 = trunc i32 %bpred_my.5 to i16, !dbg !3003
  %bmx.107.tr = trunc i32 %bmx.107 to i16, !dbg !3003
  %conv4215 = shl i16 %bmx.107.tr, 2, !dbg !3003
  %bmy.107.tr = trunc i32 %bmy.107 to i16, !dbg !3003
  %conv4219 = shl i16 %bmy.107.tr, 2, !dbg !3003
  %conv4215.sink = select i1 %cmp4203, i16 %conv4206, i16 %conv4215, !dbg !3003
  %conv4219.sink = select i1 %cmp4203, i16 %conv4209, i16 %conv4219, !dbg !3003
  %789 = call i32 @llvm.smin.i32(i32 %bpred_cost.5, i32 %bcost.146), !dbg !3003
  %790 = getelementptr inbounds i8, ptr %m, i64 140, !dbg !3004
  store i16 %conv4215.sink, ptr %790, align 4, !dbg !3004
  %791 = getelementptr inbounds i8, ptr %m, i64 142, !dbg !3004
  store i16 %conv4219.sink, ptr %791, align 2, !dbg !3004
  %792 = getelementptr inbounds i8, ptr %m, i64 136, !dbg !3004
  store i32 %789, ptr %792, align 8, !dbg !3004
  %idxprom4226 = sext i16 %conv4215.sink to i64, !dbg !3005
  %arrayidx4227 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom4226, !dbg !3005
  %793 = load i16, ptr %arrayidx4227, align 2, !dbg !3005
  %conv4228 = zext i16 %793 to i32, !dbg !3005
  %idxprom4231 = sext i16 %conv4219.sink to i64, !dbg !3006
  %arrayidx4232 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom4231, !dbg !3006
  %794 = load i16, ptr %arrayidx4232, align 2, !dbg !3006
  %conv4233 = zext i16 %794 to i32, !dbg !3006
  %add4234 = add nuw nsw i32 %conv4233, %conv4228, !dbg !3007
  %cost_mv = getelementptr inbounds i8, ptr %m, i64 132, !dbg !3008
  store i32 %add4234, ptr %cost_mv, align 4, !dbg !3009
  %cmp4235 = icmp eq i32 %bmx.107, %shr, !dbg !3010
  %cmp4238 = icmp eq i32 %bmy.107, %shr46
  %or.cond = select i1 %cmp4235, i1 %cmp4238, i1 false, !dbg !3012
  br i1 %or.cond, label %land.lhs.true4240, label %if.end4249, !dbg !3012

land.lhs.true4240:                                ; preds = %sw.epilog
  %795 = load i32, ptr %i_subpel_refine, align 8, !dbg !3013
  %cmp4243 = icmp slt i32 %795, 3, !dbg !3014
  br i1 %cmp4243, label %if.then4245, label %if.then4254, !dbg !3015

if.then4245:                                      ; preds = %land.lhs.true4240
  %add4248 = add nsw i32 %789, %add4234, !dbg !3016
  store i32 %add4248, ptr %792, align 8, !dbg !3016
  br label %if.end4249, !dbg !3017

if.end4249:                                       ; preds = %if.then4245, %sw.epilog
  %.pr = load i32, ptr %i_subpel_refine, align 8, !dbg !3018
  %cmp4252 = icmp sgt i32 %.pr, 1, !dbg !3019
  br i1 %cmp4252, label %if.then4254, label %if.end4267, !dbg !3020

if.then4254:                                      ; preds = %land.lhs.true4240, %if.end4249
  %796 = phi i32 [ %.pr, %if.end4249 ], [ %795, %land.lhs.true4240 ]
  %idxprom4257 = zext nneg i32 %796 to i64, !dbg !3021
  %arrayidx4258 = getelementptr inbounds [11 x [4 x i8]], ptr @subpel_iterations, i64 0, i64 %idxprom4257, !dbg !3021
  %arrayidx4259 = getelementptr inbounds i8, ptr %arrayidx4258, i64 2, !dbg !3021
  %797 = load i8, ptr %arrayidx4259, align 2, !dbg !3021
  %conv4260 = zext i8 %797 to i32, !dbg !3021
    #dbg_value(i32 %conv4260, !1683, !DIExpression(), !3022)
  %arrayidx4265 = getelementptr inbounds i8, ptr %arrayidx4258, i64 3, !dbg !3023
  %798 = load i8, ptr %arrayidx4265, align 1, !dbg !3023
  %conv4266 = zext i8 %798 to i32, !dbg !3023
    #dbg_value(i32 %conv4266, !1686, !DIExpression(), !3022)
  call fastcc void @refine_subpel(ptr noundef nonnull %h, ptr noundef nonnull %m, i32 noundef %conv4260, i32 noundef %conv4266, ptr noundef %p_halfpel_thresh, i32 noundef 0), !dbg !3024
  br label %if.end4267, !dbg !3025

if.end4267:                                       ; preds = %if.then4254, %if.end4249
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %costs) #6, !dbg !3026
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %pix) #6, !dbg !3026
  ret void, !dbg !3026
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @refine_subpel(ptr nocapture noundef readonly %h, ptr noundef %m, i32 noundef %hpel_iters, i32 noundef %qpel_iters, ptr noundef %p_halfpel_thresh, i32 noundef %b_refine_qpel) unnamed_addr #0 !dbg !3027 {
entry:
  %pix = alloca [1152 x i8], align 16, !DIAssignID !3114
    #dbg_assign(i1 undef, !3044, !DIExpression(), !3114, ptr %pix, !DIExpression(), !3115)
  %stride = alloca i32, align 4, !DIAssignID !3116
    #dbg_assign(i1 undef, !3057, !DIExpression(), !3116, ptr %stride, !DIExpression(), !3117)
  %costs = alloca [4 x i32], align 16, !DIAssignID !3118
    #dbg_assign(i1 undef, !3068, !DIExpression(), !3118, ptr %costs, !DIExpression(), !3119)
  %stride78 = alloca i32, align 4, !DIAssignID !3120
    #dbg_assign(i1 undef, !3069, !DIExpression(), !3120, ptr %stride78, !DIExpression(), !3119)
  %stride245 = alloca i32, align 4, !DIAssignID !3121
    #dbg_assign(i1 undef, !3074, !DIExpression(), !3121, ptr %stride245, !DIExpression(), !3122)
  %stride433 = alloca i32, align 4, !DIAssignID !3123
    #dbg_assign(i1 undef, !3089, !DIExpression(), !3123, ptr %stride433, !DIExpression(), !3124)
  %stride572 = alloca i32, align 4, !DIAssignID !3125
    #dbg_assign(i1 undef, !3094, !DIExpression(), !3125, ptr %stride572, !DIExpression(), !3126)
  %stride711 = alloca i32, align 4, !DIAssignID !3127
    #dbg_assign(i1 undef, !3099, !DIExpression(), !3127, ptr %stride711, !DIExpression(), !3128)
  %stride850 = alloca i32, align 4, !DIAssignID !3129
    #dbg_assign(i1 undef, !3104, !DIExpression(), !3129, ptr %stride850, !DIExpression(), !3130)
  %costs1025 = alloca [4 x i32], align 16, !DIAssignID !3131
    #dbg_assign(i1 undef, !3109, !DIExpression(), !3131, ptr %costs1025, !DIExpression(), !3132)
    #dbg_value(ptr %h, !3031, !DIExpression(), !3115)
    #dbg_value(ptr %m, !3032, !DIExpression(), !3115)
    #dbg_value(i32 %hpel_iters, !3033, !DIExpression(), !3115)
    #dbg_value(i32 %qpel_iters, !3034, !DIExpression(), !3115)
    #dbg_value(ptr %p_halfpel_thresh, !3035, !DIExpression(), !3115)
    #dbg_value(i32 %b_refine_qpel, !3036, !DIExpression(), !3115)
  %0 = load i32, ptr %m, align 16, !dbg !3133
  %idxprom = sext i32 %0 to i64, !dbg !3134
  %arrayidx = getelementptr inbounds [7 x %struct.anon], ptr @x264_pixel_size, i64 0, i64 %idxprom, !dbg !3134
  %1 = load i32, ptr %arrayidx, align 8, !dbg !3135
    #dbg_value(i32 %1, !3037, !DIExpression(), !3115)
  %h4 = getelementptr inbounds i8, ptr %arrayidx, i64 4, !dbg !3136
  %2 = load i32, ptr %h4, align 4, !dbg !3136
    #dbg_value(i32 %2, !3038, !DIExpression(), !3115)
  %p_cost_mv = getelementptr inbounds i8, ptr %m, i64 8, !dbg !3137
  %3 = load ptr, ptr %p_cost_mv, align 8, !dbg !3137
  %mvp = getelementptr inbounds i8, ptr %m, i64 128, !dbg !3138
  %4 = load i16, ptr %mvp, align 16, !dbg !3139
  %idx.ext = sext i16 %4 to i64, !dbg !3140
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !3140
  %add.ptr = getelementptr inbounds i16, ptr %3, i64 %idx.neg, !dbg !3140
    #dbg_value(ptr %add.ptr, !3039, !DIExpression(), !3115)
  %arrayidx8 = getelementptr inbounds i8, ptr %m, i64 130, !dbg !3141
  %5 = load i16, ptr %arrayidx8, align 2, !dbg !3141
  %idx.ext10 = sext i16 %5 to i64, !dbg !3142
  %idx.neg11 = sub nsw i64 0, %idx.ext10, !dbg !3142
  %add.ptr12 = getelementptr inbounds i16, ptr %3, i64 %idx.neg11, !dbg !3142
    #dbg_value(ptr %add.ptr12, !3040, !DIExpression(), !3115)
    #dbg_value(i32 %0, !3041, !DIExpression(), !3115)
  %b_chroma_me15 = getelementptr inbounds i8, ptr %h, i64 16412, !dbg !3143
  %6 = load i32, ptr %b_chroma_me15, align 4, !dbg !3143
  %tobool = icmp ne i32 %6, 0, !dbg !3144
  %cmp = icmp slt i32 %0, 4, !dbg !3145
  %7 = and i1 %cmp, %tobool, !dbg !3145
    #dbg_value(i1 %7, !3042, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3115)
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436, !dbg !3146
  %8 = load i32, ptr %b_interlaced, align 4, !dbg !3146
  %i_ref = getelementptr inbounds i8, ptr %m, i64 20, !dbg !3147
  %9 = load i32, ptr %i_ref, align 4, !dbg !3147
  %and = and i32 %9, %8, !dbg !3148
  %tobool18.not = icmp eq i32 %and, 0, !dbg !3148
  br i1 %tobool18.not, label %cond.end, label %cond.true, !dbg !3149

cond.true:                                        ; preds = %entry
  %i_mb_y = getelementptr inbounds i8, ptr %h, i64 16388, !dbg !3150
  %10 = load i32, ptr %i_mb_y, align 4, !dbg !3150
  %and20 = shl i32 %10, 2, !dbg !3151
  %mul = and i32 %and20, 4, !dbg !3151
  %sub = add nsw i32 %mul, -2, !dbg !3152
  br label %cond.end, !dbg !3149

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %entry ], !dbg !3149
    #dbg_value(i32 %cond, !3043, !DIExpression(), !3115)
  call void @llvm.lifetime.start.p0(i64 1152, ptr nonnull %pix) #6, !dbg !3153
  %mv = getelementptr inbounds i8, ptr %m, i64 140, !dbg !3154
  %11 = load i16, ptr %mv, align 4, !dbg !3155
  %conv22 = sext i16 %11 to i32, !dbg !3155
    #dbg_value(i32 %conv22, !3048, !DIExpression(), !3115)
  %arrayidx24 = getelementptr inbounds i8, ptr %m, i64 142, !dbg !3156
  %12 = load i16, ptr %arrayidx24, align 2, !dbg !3156
  %conv25 = sext i16 %12 to i32, !dbg !3156
    #dbg_value(i32 %conv25, !3049, !DIExpression(), !3115)
  %cost = getelementptr inbounds i8, ptr %m, i64 136, !dbg !3157
  %13 = load i32, ptr %cost, align 8, !dbg !3157
    #dbg_value(i32 %13, !3050, !DIExpression(), !3115)
    #dbg_value(i32 -1, !3051, !DIExpression(), !3115)
  %tobool26.not = icmp eq i32 %hpel_iters, 0, !dbg !3158
  br i1 %tobool26.not, label %cleanup228, label %land.lhs.true, !dbg !3159

land.lhs.true:                                    ; preds = %cond.end
  %i_subpel_refine = getelementptr inbounds i8, ptr %h, i64 16408, !dbg !3160
  %14 = load i32, ptr %i_subpel_refine, align 8, !dbg !3160
  %cmp28 = icmp slt i32 %14, 3, !dbg !3161
  br i1 %cmp28, label %if.then, label %if.end75, !dbg !3162

if.then:                                          ; preds = %land.lhs.true
  %conv32 = sext i16 %4 to i32, !dbg !3163
  %mv_min_spel = getelementptr inbounds i8, ptr %h, i64 16456, !dbg !3164
  %15 = load i32, ptr %mv_min_spel, align 8, !dbg !3165
  %add = add nsw i32 %15, 2, !dbg !3166
  %mv_max_spel = getelementptr inbounds i8, ptr %h, i64 16464, !dbg !3167
  %16 = load i32, ptr %mv_max_spel, align 16, !dbg !3168
  %sub37 = add nsw i32 %16, -2, !dbg !3169
    #dbg_value(i32 %conv32, !1884, !DIExpression(), !3170)
    #dbg_value(i32 %add, !1889, !DIExpression(), !3170)
    #dbg_value(i32 %sub37, !1890, !DIExpression(), !3170)
  %cmp.i = icmp sgt i32 %add, %conv32, !dbg !3172
  %cond.i = tail call i32 @llvm.smin.i32(i32 %conv32, i32 %sub37), !dbg !3173
  %cond5.i = select i1 %cmp.i, i32 %add, i32 %cond.i, !dbg !3173
    #dbg_value(i32 %cond5.i, !3053, !DIExpression(), !3174)
  %conv40 = sext i16 %5 to i32, !dbg !3175
  %arrayidx43 = getelementptr inbounds i8, ptr %h, i64 16460, !dbg !3176
  %17 = load i32, ptr %arrayidx43, align 4, !dbg !3176
  %add44 = add nsw i32 %17, 2, !dbg !3177
  %arrayidx47 = getelementptr inbounds i8, ptr %h, i64 16468, !dbg !3178
  %18 = load i32, ptr %arrayidx47, align 4, !dbg !3178
  %sub48 = add nsw i32 %18, -2, !dbg !3179
    #dbg_value(i32 %conv40, !1884, !DIExpression(), !3180)
    #dbg_value(i32 %add44, !1889, !DIExpression(), !3180)
    #dbg_value(i32 %sub48, !1890, !DIExpression(), !3180)
  %cmp.i1770 = icmp sgt i32 %add44, %conv40, !dbg !3182
  %cond.i1771 = tail call i32 @llvm.smin.i32(i32 %conv40, i32 %sub48), !dbg !3183
  %cond5.i1772 = select i1 %cmp.i1770, i32 %add44, i32 %cond.i1771, !dbg !3183
    #dbg_value(i32 %cond5.i1772, !3056, !DIExpression(), !3174)
  %19 = icmp eq i32 %cond5.i, %conv22, !dbg !3184
  %20 = icmp eq i32 %cond5.i1772, %conv25, !dbg !3184
  %tobool52.not = and i1 %19, %20, !dbg !3184
  br i1 %tobool52.not, label %if.end75, label %if.then53, !dbg !3185

if.then53:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride) #6, !dbg !3186
  store i32 16, ptr %stride, align 4, !dbg !3186, !DIAssignID !3187
    #dbg_assign(i32 16, !3057, !DIExpression(), !3187, ptr %stride, !DIExpression(), !3117)
  %get_ref = getelementptr inbounds i8, ptr %h, i64 32624, !dbg !3186
  %21 = load ptr, ptr %get_ref, align 8, !dbg !3186
  %p_fref = getelementptr inbounds i8, ptr %m, i64 32, !dbg !3186
  %i_stride = getelementptr inbounds i8, ptr %m, i64 120, !dbg !3186
  %22 = load i32, ptr %i_stride, align 8, !dbg !3186
  %weight = getelementptr inbounds i8, ptr %m, i64 24, !dbg !3186
  %23 = load ptr, ptr %weight, align 8, !dbg !3186
  %call57 = call ptr %21(ptr noundef nonnull %pix, ptr noundef nonnull %stride, ptr noundef nonnull %p_fref, i32 noundef %22, i32 noundef %cond5.i, i32 noundef %cond5.i1772, i32 noundef %1, i32 noundef %2, ptr noundef %23) #6, !dbg !3186
    #dbg_value(ptr %call57, !3060, !DIExpression(), !3117)
  %fpelcmp = getelementptr inbounds i8, ptr %h, i64 31928, !dbg !3186
  %arrayidx60 = getelementptr inbounds [7 x ptr], ptr %fpelcmp, i64 0, i64 %idxprom, !dbg !3186
  %24 = load ptr, ptr %arrayidx60, align 8, !dbg !3186
  %p_fenc = getelementptr inbounds i8, ptr %m, i64 88, !dbg !3186
  %25 = load ptr, ptr %p_fenc, align 8, !dbg !3186
  %26 = load i32, ptr %stride, align 4, !dbg !3186
  %call62 = call i32 %24(ptr noundef %25, i32 noundef 16, ptr noundef %call57, i32 noundef %26) #6, !dbg !3186
  %idxprom63 = sext i32 %cond5.i to i64, !dbg !3186
  %arrayidx64 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom63, !dbg !3186
  %27 = load i16, ptr %arrayidx64, align 2, !dbg !3186
  %conv65 = zext i16 %27 to i32, !dbg !3186
  %add66 = add nsw i32 %call62, %conv65, !dbg !3186
  %idxprom67 = sext i32 %cond5.i1772 to i64, !dbg !3186
  %arrayidx68 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom67, !dbg !3186
  %28 = load i16, ptr %arrayidx68, align 2, !dbg !3186
  %conv69 = zext i16 %28 to i32, !dbg !3186
  %add70 = add nsw i32 %add66, %conv69, !dbg !3186
    #dbg_value(i32 %add70, !3061, !DIExpression(), !3117)
  %cmp71 = icmp slt i32 %add70, %13, !dbg !3188
  %bcost.0 = call i32 @llvm.smin.i32(i32 %add70, i32 %13), !dbg !3186
  %bmy.0 = select i1 %cmp71, i32 %cond5.i1772, i32 %conv25, !dbg !3186
  %bmx.0 = select i1 %cmp71, i32 %cond5.i, i32 %conv22, !dbg !3186
    #dbg_value(i32 %bmx.0, !3048, !DIExpression(), !3115)
    #dbg_value(i32 %bmy.0, !3049, !DIExpression(), !3115)
    #dbg_value(i32 %bcost.0, !3050, !DIExpression(), !3115)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride) #6, !dbg !3190
  br label %if.end75, !dbg !3186

if.end75:                                         ; preds = %if.then, %if.then53, %land.lhs.true
  %bcost.2 = phi i32 [ %13, %land.lhs.true ], [ %bcost.0, %if.then53 ], [ %13, %if.then ], !dbg !3115
  %bmy.2 = phi i32 [ %conv25, %land.lhs.true ], [ %bmy.0, %if.then53 ], [ %conv25, %if.then ], !dbg !3115
  %bmx.2 = phi i32 [ %conv22, %land.lhs.true ], [ %bmx.0, %if.then53 ], [ %conv22, %if.then ], !dbg !3115
    #dbg_value(i32 %bmx.2, !3048, !DIExpression(), !3115)
    #dbg_value(i32 %bmy.2, !3049, !DIExpression(), !3115)
    #dbg_value(i32 %bcost.2, !3050, !DIExpression(), !3115)
    #dbg_value(i32 %hpel_iters, !3062, !DIExpression(), !3191)
  %cmp761799 = icmp sgt i32 %hpel_iters, 0, !dbg !3192
  br i1 %cmp761799, label %for.body.lr.ph, label %cleanup228, !dbg !3193

for.body.lr.ph:                                   ; preds = %if.end75
  %get_ref80 = getelementptr inbounds i8, ptr %h, i64 32624
  %p_fref82 = getelementptr inbounds i8, ptr %m, i64 32
  %i_stride84 = getelementptr inbounds i8, ptr %m, i64 120
  %add87 = add nsw i32 %2, 1
  %weight88 = getelementptr inbounds i8, ptr %m, i64 24
  %add.ptr94 = getelementptr inbounds i8, ptr %pix, i64 32
  %add100 = add nsw i32 %1, 4
  %fpelcmp_x4 = getelementptr inbounds i8, ptr %h, i64 32040
  %arrayidx109 = getelementptr inbounds [7 x ptr], ptr %fpelcmp_x4, i64 0, i64 %idxprom
  %p_fenc110 = getelementptr inbounds i8, ptr %m, i64 88
  %arrayidx138 = getelementptr inbounds i8, ptr %costs, i64 4
  %arrayidx163 = getelementptr inbounds i8, ptr %costs, i64 8
  %arrayidx188 = getelementptr inbounds i8, ptr %costs, i64 12
  br label %for.body, !dbg !3193

for.cond:                                         ; preds = %for.body
  %dec = add nsw i32 %i.01800, -1, !dbg !3194
    #dbg_value(i32 %bmx.5, !3048, !DIExpression(), !3115)
    #dbg_value(i32 %bmy.7, !3049, !DIExpression(), !3115)
    #dbg_value(i32 %bcost.7, !3050, !DIExpression(), !3115)
    #dbg_value(i32 %dec, !3062, !DIExpression(), !3191)
  %cmp76 = icmp sgt i32 %i.01800, 1, !dbg !3192
  br i1 %cmp76, label %for.body, label %cleanup228, !dbg !3193, !llvm.loop !3195

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %bmx.31803 = phi i32 [ %bmx.2, %for.body.lr.ph ], [ %bmx.5, %for.cond ]
  %bmy.31802 = phi i32 [ %bmy.2, %for.body.lr.ph ], [ %bmy.7, %for.cond ]
  %bcost.31801 = phi i32 [ %bcost.2, %for.body.lr.ph ], [ %bcost.7, %for.cond ]
  %i.01800 = phi i32 [ %hpel_iters, %for.body.lr.ph ], [ %dec, %for.cond ]
    #dbg_value(i32 %bmx.31803, !3048, !DIExpression(), !3115)
    #dbg_value(i32 %bmy.31802, !3049, !DIExpression(), !3115)
    #dbg_value(i32 %bcost.31801, !3050, !DIExpression(), !3115)
    #dbg_value(i32 %i.01800, !3062, !DIExpression(), !3191)
    #dbg_value(i32 %bmx.31803, !3064, !DIExpression(), !3119)
    #dbg_value(i32 %bmy.31802, !3067, !DIExpression(), !3119)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %costs) #6, !dbg !3197
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride78) #6, !dbg !3198
  store i32 64, ptr %stride78, align 4, !dbg !3199, !DIAssignID !3200
    #dbg_assign(i32 64, !3069, !DIExpression(), !3200, ptr %stride78, !DIExpression(), !3119)
  %29 = load ptr, ptr %get_ref80, align 8, !dbg !3201
  %30 = load i32, ptr %i_stride84, align 8, !dbg !3202
  %sub86 = add nsw i32 %bmy.31802, -2, !dbg !3203
  %31 = load ptr, ptr %weight88, align 8, !dbg !3204
  %call90 = call ptr %29(ptr noundef nonnull %pix, ptr noundef nonnull %stride78, ptr noundef nonnull %p_fref82, i32 noundef %30, i32 noundef %bmx.31803, i32 noundef %sub86, i32 noundef %1, i32 noundef %add87, ptr noundef %31) #6, !dbg !3205
    #dbg_value(ptr %call90, !3070, !DIExpression(), !3119)
  %32 = load ptr, ptr %get_ref80, align 8, !dbg !3206
  %33 = load i32, ptr %i_stride84, align 8, !dbg !3207
  %sub99 = add nsw i32 %bmx.31803, -2, !dbg !3208
  %34 = load ptr, ptr %weight88, align 8, !dbg !3209
  %call103 = call ptr %32(ptr noundef nonnull %add.ptr94, ptr noundef nonnull %stride78, ptr noundef nonnull %p_fref82, i32 noundef %33, i32 noundef %sub99, i32 noundef %bmy.31802, i32 noundef %add100, i32 noundef %2, ptr noundef %34) #6, !dbg !3210
    #dbg_value(ptr %call103, !3072, !DIExpression(), !3119)
  %35 = load i32, ptr %stride78, align 4, !dbg !3211
  %idx.ext104 = sext i32 %35 to i64, !dbg !3212
  %add.ptr105 = getelementptr inbounds i8, ptr %call90, i64 %idx.ext104, !dbg !3212
    #dbg_value(ptr %add.ptr105, !3071, !DIExpression(), !3119)
  %add.ptr106 = getelementptr inbounds i8, ptr %call103, i64 1, !dbg !3213
    #dbg_value(ptr %add.ptr106, !3073, !DIExpression(), !3119)
  %36 = load ptr, ptr %arrayidx109, align 8, !dbg !3214
  %37 = load ptr, ptr %p_fenc110, align 8, !dbg !3215
  call void %36(ptr noundef %37, ptr noundef %call90, ptr noundef %add.ptr105, ptr noundef %call103, ptr noundef nonnull %add.ptr106, i32 noundef %35, ptr noundef nonnull %costs) #6, !dbg !3214
  %38 = load i32, ptr %costs, align 16, !dbg !3216
  %idxprom114 = sext i32 %bmx.31803 to i64, !dbg !3216
  %arrayidx115 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom114, !dbg !3216
  %39 = load i16, ptr %arrayidx115, align 2, !dbg !3216
  %conv116 = zext i16 %39 to i32, !dbg !3216
  %add117 = add nsw i32 %38, %conv116, !dbg !3216
  %idxprom119 = sext i32 %sub86 to i64, !dbg !3216
  %arrayidx120 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom119, !dbg !3216
  %40 = load i16, ptr %arrayidx120, align 2, !dbg !3216
  %conv121 = zext i16 %40 to i32, !dbg !3216
  %add122 = add nsw i32 %add117, %conv121, !dbg !3216
  %cmp123 = icmp slt i32 %add122, %bcost.31801, !dbg !3216
  %spec.select = call i32 @llvm.smin.i32(i32 %add122, i32 %bcost.31801), !dbg !3218
  %spec.select1761 = select i1 %cmp123, i32 %sub86, i32 %bmy.31802, !dbg !3218
    #dbg_value(i32 %spec.select1761, !3049, !DIExpression(), !3115)
    #dbg_value(i32 %spec.select, !3050, !DIExpression(), !3115)
  %41 = load i32, ptr %arrayidx138, align 4, !dbg !3219
  %add142 = add nsw i32 %41, %conv116, !dbg !3219
  %add143 = add nsw i32 %bmy.31802, 2, !dbg !3219
  %idxprom144 = sext i32 %add143 to i64, !dbg !3219
  %arrayidx145 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom144, !dbg !3219
  %42 = load i16, ptr %arrayidx145, align 2, !dbg !3219
  %conv146 = zext i16 %42 to i32, !dbg !3219
  %add147 = add nsw i32 %add142, %conv146, !dbg !3219
  %cmp148 = icmp slt i32 %add147, %spec.select, !dbg !3219
  %bcost.5 = call i32 @llvm.smin.i32(i32 %add147, i32 %spec.select), !dbg !3221
  %bmy.5 = select i1 %cmp148, i32 %add143, i32 %spec.select1761, !dbg !3221
    #dbg_value(i32 %bmy.5, !3049, !DIExpression(), !3115)
    #dbg_value(i32 %bcost.5, !3050, !DIExpression(), !3115)
  %43 = load i32, ptr %arrayidx163, align 8, !dbg !3222
  %idxprom165 = sext i32 %sub99 to i64, !dbg !3222
  %arrayidx166 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom165, !dbg !3222
  %44 = load i16, ptr %arrayidx166, align 2, !dbg !3222
  %conv167 = zext i16 %44 to i32, !dbg !3222
  %add168 = add nsw i32 %43, %conv167, !dbg !3222
  %idxprom169 = sext i32 %bmy.31802 to i64, !dbg !3222
  %arrayidx170 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom169, !dbg !3222
  %45 = load i16, ptr %arrayidx170, align 2, !dbg !3222
  %conv171 = zext i16 %45 to i32, !dbg !3222
  %add172 = add nsw i32 %add168, %conv171, !dbg !3222
  %cmp173 = icmp slt i32 %add172, %bcost.5, !dbg !3222
  %bcost.6 = call i32 @llvm.smin.i32(i32 %add172, i32 %bcost.5), !dbg !3224
  %bmx.4 = select i1 %cmp173, i32 %sub99, i32 %bmx.31803, !dbg !3224
    #dbg_value(i32 %bmx.4, !3048, !DIExpression(), !3115)
    #dbg_value(i32 poison, !3049, !DIExpression(), !3115)
    #dbg_value(i32 %bcost.6, !3050, !DIExpression(), !3115)
  %46 = load i32, ptr %arrayidx188, align 4, !dbg !3225
  %add189 = add nsw i32 %bmx.31803, 2, !dbg !3225
  %idxprom190 = sext i32 %add189 to i64, !dbg !3225
  %arrayidx191 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom190, !dbg !3225
  %47 = load i16, ptr %arrayidx191, align 2, !dbg !3225
  %conv192 = zext i16 %47 to i32, !dbg !3225
  %add193 = add i32 %46, %conv171, !dbg !3225
  %add197 = add i32 %add193, %conv192, !dbg !3225
  %cmp198 = icmp slt i32 %add197, %bcost.6, !dbg !3225
  %bcost.7 = call i32 @llvm.smin.i32(i32 %add197, i32 %bcost.6), !dbg !3227
  %48 = or i1 %cmp173, %cmp198, !dbg !3227
  %bmy.7 = select i1 %48, i32 %bmy.31802, i32 %bmy.5, !dbg !3227
  %bmx.5 = select i1 %cmp198, i32 %add189, i32 %bmx.4, !dbg !3227
    #dbg_value(i32 %bmx.5, !3048, !DIExpression(), !3115)
    #dbg_value(i32 %bmy.7, !3049, !DIExpression(), !3115)
    #dbg_value(i32 %bcost.7, !3050, !DIExpression(), !3115)
  %cmp215 = icmp ne i32 %bmy.7, %bmy.31802, !dbg !3228
  %49 = or i1 %cmp173, %cmp215, !dbg !3230
  %and2171759.not = or i1 %cmp198, %49, !dbg !3230
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride78) #6, !dbg !3231
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %costs) #6, !dbg !3231
    #dbg_value(i32 %i.01800, !3062, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3191)
  br i1 %and2171759.not, label %for.cond, label %cleanup228

cleanup228:                                       ; preds = %for.body, %for.cond, %cond.end, %if.end75
  %bcost.8 = phi i32 [ %bcost.2, %if.end75 ], [ %13, %cond.end ], [ %bcost.7, %for.cond ], [ %bcost.7, %for.body ], !dbg !3115
  %bmy.8 = phi i32 [ %bmy.2, %if.end75 ], [ %conv25, %cond.end ], [ %bmy.31802, %for.body ], [ %bmy.7, %for.cond ], !dbg !3115
  %bmx.6 = phi i32 [ %bmx.2, %if.end75 ], [ %conv22, %cond.end ], [ %bmx.5, %for.cond ], [ %bmx.5, %for.body ], !dbg !3115
    #dbg_value(i32 %bmx.6, !3048, !DIExpression(), !3115)
    #dbg_value(i32 %bmy.8, !3049, !DIExpression(), !3115)
    #dbg_value(i32 %bcost.8, !3050, !DIExpression(), !3115)
  %tobool229 = icmp ne i32 %b_refine_qpel, 0, !dbg !3232
  br i1 %tobool229, label %if.end369, label %land.lhs.true230, !dbg !3233

land.lhs.true230:                                 ; preds = %cleanup228
  %mbcmp_unaligned = getelementptr inbounds i8, ptr %h, i64 31872, !dbg !3234
  %50 = load ptr, ptr %mbcmp_unaligned, align 8, !dbg !3235
  %fpelcmp234 = getelementptr inbounds i8, ptr %h, i64 31928, !dbg !3236
  %51 = load ptr, ptr %fpelcmp234, align 8, !dbg !3237
  %cmp236 = icmp ne ptr %50, %51, !dbg !3238
  %or.cond = select i1 %cmp236, i1 true, i1 %7, !dbg !3239
  br i1 %or.cond, label %if.then244, label %if.end369, !dbg !3239

if.then244:                                       ; preds = %land.lhs.true230
    #dbg_value(i32 268435456, !3050, !DIExpression(), !3115)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride245) #6, !dbg !3240
  store i32 16, ptr %stride245, align 4, !dbg !3240, !DIAssignID !3241
    #dbg_assign(i32 16, !3074, !DIExpression(), !3241, ptr %stride245, !DIExpression(), !3122)
  %get_ref248 = getelementptr inbounds i8, ptr %h, i64 32624, !dbg !3240
  %52 = load ptr, ptr %get_ref248, align 8, !dbg !3240
  %p_fref250 = getelementptr inbounds i8, ptr %m, i64 32, !dbg !3240
  %i_stride252 = getelementptr inbounds i8, ptr %m, i64 120, !dbg !3240
  %53 = load i32, ptr %i_stride252, align 8, !dbg !3240
  %weight254 = getelementptr inbounds i8, ptr %m, i64 24, !dbg !3240
  %54 = load ptr, ptr %weight254, align 8, !dbg !3240
  %call256 = call ptr %52(ptr noundef nonnull %pix, ptr noundef nonnull %stride245, ptr noundef nonnull %p_fref250, i32 noundef %53, i32 noundef %bmx.6, i32 noundef %bmy.8, i32 noundef %1, i32 noundef %2, ptr noundef %54) #6, !dbg !3240
    #dbg_value(ptr %call256, !3079, !DIExpression(), !3122)
  %arrayidx261 = getelementptr inbounds [7 x ptr], ptr %mbcmp_unaligned, i64 0, i64 %idxprom, !dbg !3240
  %55 = load ptr, ptr %arrayidx261, align 8, !dbg !3240
  %p_fenc262 = getelementptr inbounds i8, ptr %m, i64 88, !dbg !3240
  %56 = load ptr, ptr %p_fenc262, align 8, !dbg !3240
  %57 = load i32, ptr %stride245, align 4, !dbg !3240
  %call264 = call i32 %55(ptr noundef %56, i32 noundef 16, ptr noundef %call256, i32 noundef %57) #6, !dbg !3240
  %idxprom265 = sext i32 %bmx.6 to i64, !dbg !3240
  %arrayidx266 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom265, !dbg !3240
  %58 = load i16, ptr %arrayidx266, align 2, !dbg !3240
  %conv267 = zext i16 %58 to i32, !dbg !3240
  %add268 = add nsw i32 %call264, %conv267, !dbg !3240
  %idxprom269 = sext i32 %bmy.8 to i64, !dbg !3240
  %arrayidx270 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom269, !dbg !3240
  %59 = load i16, ptr %arrayidx270, align 2, !dbg !3240
  %conv271 = zext i16 %59 to i32, !dbg !3240
  %add272 = add nsw i32 %add268, %conv271, !dbg !3240
    #dbg_value(i32 %add272, !3080, !DIExpression(), !3122)
  %cmp275 = icmp slt i32 %add272, 268435456, !dbg !3242
  %or.cond1762 = select i1 %7, i1 %cmp275, i1 false, !dbg !3242
  br i1 %or.cond1762, label %if.then277, label %if.end363, !dbg !3242

if.then277:                                       ; preds = %if.then244
  %mc_chroma = getelementptr inbounds i8, ptr %h, i64 32632, !dbg !3244
  %60 = load ptr, ptr %mc_chroma, align 8, !dbg !3244
  %arrayidx281 = getelementptr inbounds i8, ptr %m, i64 64, !dbg !3244
  %61 = load ptr, ptr %arrayidx281, align 16, !dbg !3244
  %arrayidx283 = getelementptr inbounds i8, ptr %m, i64 124, !dbg !3244
  %62 = load i32, ptr %arrayidx283, align 4, !dbg !3244
  %add284 = add nsw i32 %bmy.8, %cond, !dbg !3244
  %div = sdiv i32 %1, 2, !dbg !3244
  %div285 = sdiv i32 %2, 2, !dbg !3244
  call void %60(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %61, i32 noundef %62, i32 noundef %bmx.6, i32 noundef %add284, i32 noundef %div, i32 noundef %div285) #6, !dbg !3244
  %63 = load ptr, ptr %weight254, align 8, !dbg !3246
  %weightfn = getelementptr inbounds i8, ptr %63, i64 112, !dbg !3246
  %64 = load ptr, ptr %weightfn, align 16, !dbg !3246
  %tobool288.not = icmp eq ptr %64, null, !dbg !3246
  br i1 %tobool288.not, label %if.end306, label %if.then289, !dbg !3244

if.then289:                                       ; preds = %if.then277
  %arrayidx287 = getelementptr inbounds i8, ptr %63, i64 64, !dbg !3246
  %shr = ashr i32 %1, 3, !dbg !3246
  %idxprom296 = sext i32 %shr to i64, !dbg !3246
  %arrayidx297 = getelementptr inbounds ptr, ptr %64, i64 %idxprom296, !dbg !3246
  %65 = load ptr, ptr %arrayidx297, align 8, !dbg !3246
  %shr305 = ashr i32 %2, 1, !dbg !3246
  call void %65(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx287, i32 noundef %shr305) #6, !dbg !3246
  br label %if.end306, !dbg !3246

if.end306:                                        ; preds = %if.then289, %if.then277
  %mbcmp = getelementptr inbounds i8, ptr %h, i64 31816, !dbg !3244
  %add308 = add nsw i32 %0, 3, !dbg !3244
  %idxprom309 = sext i32 %add308 to i64, !dbg !3244
  %arrayidx310 = getelementptr inbounds [7 x ptr], ptr %mbcmp, i64 0, i64 %idxprom309, !dbg !3244
  %66 = load ptr, ptr %arrayidx310, align 8, !dbg !3244
  %arrayidx312 = getelementptr inbounds i8, ptr %m, i64 96, !dbg !3244
  %67 = load ptr, ptr %arrayidx312, align 8, !dbg !3244
  %call314 = call i32 %66(ptr noundef %67, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #6, !dbg !3244
  %add315 = add nsw i32 %call314, %add272, !dbg !3244
    #dbg_value(i32 %add315, !3080, !DIExpression(), !3122)
  %cmp316 = icmp slt i32 %add315, 268435456, !dbg !3248
  br i1 %cmp316, label %if.then318, label %if.end363, !dbg !3244

if.then318:                                       ; preds = %if.end306
  %68 = load ptr, ptr %mc_chroma, align 8, !dbg !3250
  %arrayidx323 = getelementptr inbounds i8, ptr %m, i64 72, !dbg !3250
  %69 = load ptr, ptr %arrayidx323, align 8, !dbg !3250
  %70 = load i32, ptr %arrayidx283, align 4, !dbg !3250
  call void %68(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %69, i32 noundef %70, i32 noundef %bmx.6, i32 noundef %add284, i32 noundef %div, i32 noundef %div285) #6, !dbg !3250
  %71 = load ptr, ptr %weight254, align 8, !dbg !3252
  %weightfn331 = getelementptr inbounds i8, ptr %71, i64 176, !dbg !3252
  %72 = load ptr, ptr %weightfn331, align 16, !dbg !3252
  %tobool332.not = icmp eq ptr %72, null, !dbg !3252
  br i1 %tobool332.not, label %if.end351, label %if.then333, !dbg !3250

if.then333:                                       ; preds = %if.then318
  %arrayidx330 = getelementptr inbounds i8, ptr %71, i64 128, !dbg !3252
  %shr340 = ashr i32 %1, 3, !dbg !3252
  %idxprom341 = sext i32 %shr340 to i64, !dbg !3252
  %arrayidx342 = getelementptr inbounds ptr, ptr %72, i64 %idxprom341, !dbg !3252
  %73 = load ptr, ptr %arrayidx342, align 8, !dbg !3252
  %shr350 = ashr i32 %2, 1, !dbg !3252
  call void %73(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx330, i32 noundef %shr350) #6, !dbg !3252
  br label %if.end351, !dbg !3252

if.end351:                                        ; preds = %if.then333, %if.then318
  %74 = load ptr, ptr %arrayidx310, align 8, !dbg !3250
  %arrayidx358 = getelementptr inbounds i8, ptr %m, i64 104, !dbg !3250
  %75 = load ptr, ptr %arrayidx358, align 8, !dbg !3250
  %call360 = call i32 %74(ptr noundef %75, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #6, !dbg !3250
  %add361 = add nsw i32 %call360, %add315, !dbg !3250
    #dbg_value(i32 %add361, !3080, !DIExpression(), !3122)
  br label %if.end363, !dbg !3250

if.end363:                                        ; preds = %if.end306, %if.end351, %if.then244
  %cost257.0 = phi i32 [ %add361, %if.end351 ], [ %add315, %if.end306 ], [ %add272, %if.then244 ], !dbg !3240
    #dbg_value(i32 %cost257.0, !3080, !DIExpression(), !3122)
  %spec.select1763 = call i32 @llvm.smin.i32(i32 %cost257.0, i32 268435456), !dbg !3240
    #dbg_value(i32 %bmx.6, !3048, !DIExpression(), !3115)
    #dbg_value(i32 %bmy.8, !3049, !DIExpression(), !3115)
    #dbg_value(i32 %spec.select1763, !3050, !DIExpression(), !3115)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride245) #6, !dbg !3254
  br label %if.end369, !dbg !3240

if.end369:                                        ; preds = %if.end363, %land.lhs.true230, %cleanup228
  %bcost.10 = phi i32 [ %bcost.8, %cleanup228 ], [ %spec.select1763, %if.end363 ], [ %bcost.8, %land.lhs.true230 ], !dbg !3115
    #dbg_value(i32 %bmx.6, !3048, !DIExpression(), !3115)
    #dbg_value(i32 %bmy.8, !3049, !DIExpression(), !3115)
    #dbg_value(i32 %bcost.10, !3050, !DIExpression(), !3115)
  %tobool370.not = icmp eq ptr %p_halfpel_thresh, null, !dbg !3255
  br i1 %tobool370.not, label %if.end389, label %if.then371, !dbg !3257

if.then371:                                       ; preds = %if.end369
  %mul372 = mul nsw i32 %bcost.10, 7, !dbg !3258
  %shr373 = ashr i32 %mul372, 3, !dbg !3261
  %76 = load i32, ptr %p_halfpel_thresh, align 4, !dbg !3262
  %cmp374 = icmp sgt i32 %shr373, %76, !dbg !3263
  br i1 %cmp374, label %if.then376, label %if.else, !dbg !3264

if.then376:                                       ; preds = %if.then371
  store i32 %bcost.10, ptr %cost, align 8, !dbg !3265
  %conv378 = trunc i32 %bmx.6 to i16, !dbg !3267
  store i16 %conv378, ptr %mv, align 4, !dbg !3268
  %conv381 = trunc i32 %bmy.8 to i16, !dbg !3269
  store i16 %conv381, ptr %arrayidx24, align 2, !dbg !3270
  br label %cleanup1200, !dbg !3271

if.else:                                          ; preds = %if.then371
  %cmp384 = icmp slt i32 %bcost.10, %76, !dbg !3272
  br i1 %cmp384, label %if.then386, label %if.end389, !dbg !3274

if.then386:                                       ; preds = %if.else
  store i32 %bcost.10, ptr %p_halfpel_thresh, align 4, !dbg !3275
  br label %if.end389, !dbg !3276

if.end389:                                        ; preds = %if.then386, %if.else, %if.end369
  %i_subpel_refine391 = getelementptr inbounds i8, ptr %h, i64 16408, !dbg !3277
  %77 = load i32, ptr %i_subpel_refine391, align 8, !dbg !3277
  %cmp392 = icmp sgt i32 %77, 1, !dbg !3278
  %mv_min_spel402 = getelementptr inbounds i8, ptr %h, i64 16456, !dbg !3279
  %arrayidx403 = getelementptr inbounds i8, ptr %h, i64 16460, !dbg !3279
  br i1 %cmp392, label %for.cond396.preheader, label %if.else1000, !dbg !3280

for.cond396.preheader:                            ; preds = %if.end389
  %mv_max_spel408 = getelementptr inbounds i8, ptr %h, i64 16464, !dbg !3281
  %arrayidx409 = getelementptr inbounds i8, ptr %h, i64 16468, !dbg !3283
    #dbg_value(i32 %bmx.6, !3048, !DIExpression(), !3115)
    #dbg_value(i32 %bmy.8, !3049, !DIExpression(), !3115)
    #dbg_value(i32 %bcost.10, !3050, !DIExpression(), !3115)
    #dbg_value(i32 -1, !3052, !DIExpression(), !3115)
    #dbg_value(i32 %qpel_iters, !3081, !DIExpression(), !3284)
  %cmp3971809 = icmp sgt i32 %qpel_iters, 0, !dbg !3285
  br i1 %cmp3971809, label %for.body400.lr.ph, label %if.end1185, !dbg !3286

for.body400.lr.ph:                                ; preds = %for.cond396.preheader
  %get_ref436 = getelementptr inbounds i8, ptr %h, i64 32624
  %p_fref438 = getelementptr inbounds i8, ptr %m, i64 32
  %i_stride440 = getelementptr inbounds i8, ptr %m, i64 120
  %weight443 = getelementptr inbounds i8, ptr %m, i64 24
  %mbcmp_unaligned448 = getelementptr inbounds i8, ptr %h, i64 31872
  %arrayidx450 = getelementptr inbounds [7 x ptr], ptr %mbcmp_unaligned448, i64 0, i64 %idxprom
  %p_fenc451 = getelementptr inbounds i8, ptr %m, i64 88
  %mc_chroma469 = getelementptr inbounds i8, ptr %h, i64 32632
  %arrayidx472 = getelementptr inbounds i8, ptr %m, i64 64
  %arrayidx474 = getelementptr inbounds i8, ptr %m, i64 124
  %div477 = sdiv i32 %1, 2
  %div478 = sdiv i32 %2, 2
  %shr490 = ashr i32 %1, 3
  %idxprom491 = sext i32 %shr490 to i64
  %shr500 = ashr i32 %2, 1
  %mbcmp503 = getelementptr inbounds i8, ptr %h, i64 31816
  %add504 = add nsw i32 %0, 3
  %idxprom505 = sext i32 %add504 to i64
  %arrayidx506 = getelementptr inbounds [7 x ptr], ptr %mbcmp503, i64 0, i64 %idxprom505
  %arrayidx508 = getelementptr inbounds i8, ptr %m, i64 96
  %arrayidx519 = getelementptr inbounds i8, ptr %m, i64 72
  %arrayidx555 = getelementptr inbounds i8, ptr %m, i64 104
  br label %for.body400, !dbg !3286

for.cond396:                                      ; preds = %if.end983
  %dec997 = add nsw i32 %i395.01810, -1, !dbg !3287
    #dbg_value(i32 %bmx.17, !3048, !DIExpression(), !3115)
    #dbg_value(i32 %bmy.19, !3049, !DIExpression(), !3115)
    #dbg_value(i32 %bcost.19, !3050, !DIExpression(), !3115)
    #dbg_value(i32 %bdir.8, !3052, !DIExpression(), !3115)
    #dbg_value(i32 %dec997, !3081, !DIExpression(), !3284)
  %cmp397 = icmp sgt i32 %i395.01810, 1, !dbg !3285
  br i1 %cmp397, label %for.body400, label %if.end1185, !dbg !3286, !llvm.loop !3288

for.body400:                                      ; preds = %for.body400.lr.ph, %for.cond396
  %bmx.91817 = phi i32 [ %bmx.6, %for.body400.lr.ph ], [ %bmx.17, %for.cond396 ]
  %bmy.111814 = phi i32 [ %bmy.8, %for.body400.lr.ph ], [ %bmy.19, %for.cond396 ]
  %bcost.111813 = phi i32 [ %bcost.10, %for.body400.lr.ph ], [ %bcost.19, %for.cond396 ]
  %bdir.01811 = phi i32 [ -1, %for.body400.lr.ph ], [ %bdir.8, %for.cond396 ]
  %i395.01810 = phi i32 [ %qpel_iters, %for.body400.lr.ph ], [ %dec997, %for.cond396 ]
    #dbg_value(i32 %bmx.91817, !3048, !DIExpression(), !3115)
    #dbg_value(i32 %bmy.111814, !3049, !DIExpression(), !3115)
    #dbg_value(i32 %bcost.111813, !3050, !DIExpression(), !3115)
    #dbg_value(i32 %bdir.01811, !3052, !DIExpression(), !3115)
    #dbg_value(i32 %i395.01810, !3081, !DIExpression(), !3284)
  %78 = load i32, ptr %arrayidx403, align 4, !dbg !3290
  %cmp404.not = icmp sgt i32 %bmy.111814, %78, !dbg !3291
  br i1 %cmp404.not, label %lor.lhs.false406, label %if.end1185, !dbg !3292

lor.lhs.false406:                                 ; preds = %for.body400
  %79 = load i32, ptr %arrayidx409, align 4, !dbg !3283
  %cmp410.not = icmp slt i32 %bmy.111814, %79, !dbg !3293
  br i1 %cmp410.not, label %lor.lhs.false412, label %if.end1185, !dbg !3294

lor.lhs.false412:                                 ; preds = %lor.lhs.false406
  %80 = load i32, ptr %mv_min_spel402, align 8, !dbg !3295
  %cmp416.not = icmp sgt i32 %bmx.91817, %80, !dbg !3296
  br i1 %cmp416.not, label %lor.lhs.false418, label %if.end1185, !dbg !3297

lor.lhs.false418:                                 ; preds = %lor.lhs.false412
  %81 = load i32, ptr %mv_max_spel408, align 16, !dbg !3298
  %cmp422.not = icmp slt i32 %bmx.91817, %81, !dbg !3299
  br i1 %cmp422.not, label %if.end425, label %if.end1185, !dbg !3300

if.end425:                                        ; preds = %lor.lhs.false418
    #dbg_value(i32 %bdir.01811, !3051, !DIExpression(), !3115)
    #dbg_value(i32 %bmx.91817, !3085, !DIExpression(), !3301)
    #dbg_value(i32 %bmy.111814, !3088, !DIExpression(), !3301)
  %cmp430 = icmp ne i32 %bdir.01811, 1, !dbg !3302
  %or.cond1218 = select i1 %tobool229, i1 true, i1 %cmp430, !dbg !3302
  br i1 %or.cond1218, label %if.then432, label %if.end425.if.then571_crit_edge, !dbg !3302

if.end425.if.then571_crit_edge:                   ; preds = %if.end425
  %.pre = sext i32 %bmx.91817 to i64, !dbg !3303
  br label %if.then571, !dbg !3302

if.then432:                                       ; preds = %if.end425
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride433) #6, !dbg !3304
  store i32 16, ptr %stride433, align 4, !dbg !3304, !DIAssignID !3305
    #dbg_assign(i32 16, !3089, !DIExpression(), !3305, ptr %stride433, !DIExpression(), !3124)
  %82 = load ptr, ptr %get_ref436, align 8, !dbg !3304
  %83 = load i32, ptr %i_stride440, align 8, !dbg !3304
  %sub442 = add nsw i32 %bmy.111814, -1, !dbg !3304
  %84 = load ptr, ptr %weight443, align 8, !dbg !3304
  %call445 = call ptr %82(ptr noundef nonnull %pix, ptr noundef nonnull %stride433, ptr noundef nonnull %p_fref438, i32 noundef %83, i32 noundef %bmx.91817, i32 noundef %sub442, i32 noundef %1, i32 noundef %2, ptr noundef %84) #6, !dbg !3304
    #dbg_value(ptr %call445, !3092, !DIExpression(), !3124)
  %85 = load ptr, ptr %arrayidx450, align 8, !dbg !3304
  %86 = load ptr, ptr %p_fenc451, align 8, !dbg !3304
  %87 = load i32, ptr %stride433, align 4, !dbg !3304
  %call453 = call i32 %85(ptr noundef %86, i32 noundef 16, ptr noundef %call445, i32 noundef %87) #6, !dbg !3304
  %idxprom454 = sext i32 %bmx.91817 to i64, !dbg !3304
  %arrayidx455 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom454, !dbg !3304
  %88 = load i16, ptr %arrayidx455, align 2, !dbg !3304
  %conv456 = zext i16 %88 to i32, !dbg !3304
  %add457 = add nsw i32 %call453, %conv456, !dbg !3304
  %idxprom459 = sext i32 %sub442 to i64, !dbg !3304
  %arrayidx460 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom459, !dbg !3304
  %89 = load i16, ptr %arrayidx460, align 2, !dbg !3304
  %conv461 = zext i16 %89 to i32, !dbg !3304
  %add462 = add nsw i32 %add457, %conv461, !dbg !3304
    #dbg_value(i32 %add462, !3093, !DIExpression(), !3124)
  %cmp465 = icmp slt i32 %add462, %bcost.111813, !dbg !3306
  %or.cond1764 = select i1 %7, i1 %cmp465, i1 false, !dbg !3306
  br i1 %or.cond1764, label %if.then467, label %if.end566, !dbg !3306

if.then467:                                       ; preds = %if.then432
  %90 = load ptr, ptr %mc_chroma469, align 8, !dbg !3308
  %91 = load ptr, ptr %arrayidx472, align 16, !dbg !3308
  %92 = load i32, ptr %arrayidx474, align 4, !dbg !3308
  %add476 = add nsw i32 %sub442, %cond, !dbg !3308
  call void %90(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %91, i32 noundef %92, i32 noundef %bmx.91817, i32 noundef %add476, i32 noundef %div477, i32 noundef %div478) #6, !dbg !3308
  %93 = load ptr, ptr %weight443, align 8, !dbg !3310
  %weightfn481 = getelementptr inbounds i8, ptr %93, i64 112, !dbg !3310
  %94 = load ptr, ptr %weightfn481, align 16, !dbg !3310
  %tobool482.not = icmp eq ptr %94, null, !dbg !3310
  br i1 %tobool482.not, label %if.end501, label %if.then483, !dbg !3308

if.then483:                                       ; preds = %if.then467
  %arrayidx480 = getelementptr inbounds i8, ptr %93, i64 64, !dbg !3310
  %arrayidx492 = getelementptr inbounds ptr, ptr %94, i64 %idxprom491, !dbg !3310
  %95 = load ptr, ptr %arrayidx492, align 8, !dbg !3310
  call void %95(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx480, i32 noundef %shr500) #6, !dbg !3310
  br label %if.end501, !dbg !3310

if.end501:                                        ; preds = %if.then483, %if.then467
  %96 = load ptr, ptr %arrayidx506, align 8, !dbg !3308
  %97 = load ptr, ptr %arrayidx508, align 8, !dbg !3308
  %call510 = call i32 %96(ptr noundef %97, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #6, !dbg !3308
  %add511 = add nsw i32 %call510, %add462, !dbg !3308
    #dbg_value(i32 %add511, !3093, !DIExpression(), !3124)
  %cmp512 = icmp slt i32 %add511, %bcost.111813, !dbg !3312
  br i1 %cmp512, label %if.then514, label %if.end566, !dbg !3308

if.then514:                                       ; preds = %if.end501
  %98 = load ptr, ptr %mc_chroma469, align 8, !dbg !3314
  %99 = load ptr, ptr %arrayidx519, align 8, !dbg !3314
  %100 = load i32, ptr %arrayidx474, align 4, !dbg !3314
  call void %98(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %99, i32 noundef %100, i32 noundef %bmx.91817, i32 noundef %add476, i32 noundef %div477, i32 noundef %div478) #6, !dbg !3314
  %101 = load ptr, ptr %weight443, align 8, !dbg !3316
  %weightfn528 = getelementptr inbounds i8, ptr %101, i64 176, !dbg !3316
  %102 = load ptr, ptr %weightfn528, align 16, !dbg !3316
  %tobool529.not = icmp eq ptr %102, null, !dbg !3316
  br i1 %tobool529.not, label %if.end548, label %if.then530, !dbg !3314

if.then530:                                       ; preds = %if.then514
  %arrayidx527 = getelementptr inbounds i8, ptr %101, i64 128, !dbg !3316
  %arrayidx539 = getelementptr inbounds ptr, ptr %102, i64 %idxprom491, !dbg !3316
  %103 = load ptr, ptr %arrayidx539, align 8, !dbg !3316
  call void %103(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx527, i32 noundef %shr500) #6, !dbg !3316
  br label %if.end548, !dbg !3316

if.end548:                                        ; preds = %if.then530, %if.then514
  %104 = load ptr, ptr %arrayidx506, align 8, !dbg !3314
  %105 = load ptr, ptr %arrayidx555, align 8, !dbg !3314
  %call557 = call i32 %104(ptr noundef %105, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #6, !dbg !3314
  %add558 = add nsw i32 %call557, %add511, !dbg !3314
    #dbg_value(i32 %add558, !3093, !DIExpression(), !3124)
  br label %if.end566, !dbg !3314

if.end566:                                        ; preds = %if.then432, %if.end548, %if.end501
  %cost446.0 = phi i32 [ %add558, %if.end548 ], [ %add511, %if.end501 ], [ %add462, %if.then432 ], !dbg !3304
    #dbg_value(i32 %cost446.0, !3093, !DIExpression(), !3124)
  %cmp561 = icmp slt i32 %cost446.0, %bcost.111813, !dbg !3318
  %bdir.1 = select i1 %cmp561, i32 0, i32 %bdir.01811, !dbg !3304
  %bcost.12 = call i32 @llvm.smin.i32(i32 %cost446.0, i32 %bcost.111813), !dbg !3304
  %bmy.12 = select i1 %cmp561, i32 %sub442, i32 %bmy.111814, !dbg !3304
    #dbg_value(i32 %bmx.91817, !3048, !DIExpression(), !3115)
    #dbg_value(i32 %bmy.12, !3049, !DIExpression(), !3115)
    #dbg_value(i32 %bcost.12, !3050, !DIExpression(), !3115)
    #dbg_value(i32 %bdir.1, !3052, !DIExpression(), !3115)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride433) #6, !dbg !3302
  %cmp569 = icmp ne i32 %bdir.01811, 0, !dbg !3320
  %or.cond1219 = select i1 %tobool229, i1 true, i1 %cmp569, !dbg !3320
  br i1 %or.cond1219, label %if.then571, label %if.then710, !dbg !3320

if.then571:                                       ; preds = %if.end425.if.then571_crit_edge, %if.end566
  %idxprom593.pre-phi = phi i64 [ %.pre, %if.end425.if.then571_crit_edge ], [ %idxprom454, %if.end566 ], !dbg !3303
  %bmy.131780 = phi i32 [ %bmy.111814, %if.end425.if.then571_crit_edge ], [ %bmy.12, %if.end566 ]
  %bcost.131779 = phi i32 [ %bcost.111813, %if.end425.if.then571_crit_edge ], [ %bcost.12, %if.end566 ]
  %bdir.21778 = phi i32 [ 1, %if.end425.if.then571_crit_edge ], [ %bdir.1, %if.end566 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride572) #6, !dbg !3303
  store i32 16, ptr %stride572, align 4, !dbg !3303, !DIAssignID !3321
    #dbg_assign(i32 16, !3094, !DIExpression(), !3321, ptr %stride572, !DIExpression(), !3126)
  %106 = load ptr, ptr %get_ref436, align 8, !dbg !3303
  %107 = load i32, ptr %i_stride440, align 8, !dbg !3303
  %add581 = add nsw i32 %bmy.111814, 1, !dbg !3303
  %108 = load ptr, ptr %weight443, align 8, !dbg !3303
  %call584 = call ptr %106(ptr noundef nonnull %pix, ptr noundef nonnull %stride572, ptr noundef nonnull %p_fref438, i32 noundef %107, i32 noundef %bmx.91817, i32 noundef %add581, i32 noundef %1, i32 noundef %2, ptr noundef %108) #6, !dbg !3303
    #dbg_value(ptr %call584, !3097, !DIExpression(), !3126)
  %109 = load ptr, ptr %arrayidx450, align 8, !dbg !3303
  %110 = load ptr, ptr %p_fenc451, align 8, !dbg !3303
  %111 = load i32, ptr %stride572, align 4, !dbg !3303
  %call592 = call i32 %109(ptr noundef %110, i32 noundef 16, ptr noundef %call584, i32 noundef %111) #6, !dbg !3303
  %arrayidx594 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom593.pre-phi, !dbg !3303
  %112 = load i16, ptr %arrayidx594, align 2, !dbg !3303
  %conv595 = zext i16 %112 to i32, !dbg !3303
  %add596 = add nsw i32 %call592, %conv595, !dbg !3303
  %idxprom598 = sext i32 %add581 to i64, !dbg !3303
  %arrayidx599 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom598, !dbg !3303
  %113 = load i16, ptr %arrayidx599, align 2, !dbg !3303
  %conv600 = zext i16 %113 to i32, !dbg !3303
  %add601 = add nsw i32 %add596, %conv600, !dbg !3303
    #dbg_value(i32 %add601, !3098, !DIExpression(), !3126)
  %cmp604 = icmp slt i32 %add601, %bcost.131779, !dbg !3322
  %or.cond1765 = select i1 %7, i1 %cmp604, i1 false, !dbg !3322
  br i1 %or.cond1765, label %if.then606, label %if.end705, !dbg !3322

if.then606:                                       ; preds = %if.then571
  %114 = load ptr, ptr %mc_chroma469, align 8, !dbg !3324
  %115 = load ptr, ptr %arrayidx472, align 16, !dbg !3324
  %116 = load i32, ptr %arrayidx474, align 4, !dbg !3324
  %add615 = add nsw i32 %add581, %cond, !dbg !3324
  call void %114(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %115, i32 noundef %116, i32 noundef %bmx.91817, i32 noundef %add615, i32 noundef %div477, i32 noundef %div478) #6, !dbg !3324
  %117 = load ptr, ptr %weight443, align 8, !dbg !3326
  %weightfn620 = getelementptr inbounds i8, ptr %117, i64 112, !dbg !3326
  %118 = load ptr, ptr %weightfn620, align 16, !dbg !3326
  %tobool621.not = icmp eq ptr %118, null, !dbg !3326
  br i1 %tobool621.not, label %if.end640, label %if.then622, !dbg !3324

if.then622:                                       ; preds = %if.then606
  %arrayidx619 = getelementptr inbounds i8, ptr %117, i64 64, !dbg !3326
  %arrayidx631 = getelementptr inbounds ptr, ptr %118, i64 %idxprom491, !dbg !3326
  %119 = load ptr, ptr %arrayidx631, align 8, !dbg !3326
  call void %119(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx619, i32 noundef %shr500) #6, !dbg !3326
  br label %if.end640, !dbg !3326

if.end640:                                        ; preds = %if.then622, %if.then606
  %120 = load ptr, ptr %arrayidx506, align 8, !dbg !3324
  %121 = load ptr, ptr %arrayidx508, align 8, !dbg !3324
  %call649 = call i32 %120(ptr noundef %121, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #6, !dbg !3324
  %add650 = add nsw i32 %call649, %add601, !dbg !3324
    #dbg_value(i32 %add650, !3098, !DIExpression(), !3126)
  %cmp651 = icmp slt i32 %add650, %bcost.131779, !dbg !3328
  br i1 %cmp651, label %if.then653, label %if.end705, !dbg !3324

if.then653:                                       ; preds = %if.end640
  %122 = load ptr, ptr %mc_chroma469, align 8, !dbg !3330
  %123 = load ptr, ptr %arrayidx519, align 8, !dbg !3330
  %124 = load i32, ptr %arrayidx474, align 4, !dbg !3330
  call void %122(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %123, i32 noundef %124, i32 noundef %bmx.91817, i32 noundef %add615, i32 noundef %div477, i32 noundef %div478) #6, !dbg !3330
  %125 = load ptr, ptr %weight443, align 8, !dbg !3332
  %weightfn667 = getelementptr inbounds i8, ptr %125, i64 176, !dbg !3332
  %126 = load ptr, ptr %weightfn667, align 16, !dbg !3332
  %tobool668.not = icmp eq ptr %126, null, !dbg !3332
  br i1 %tobool668.not, label %if.end687, label %if.then669, !dbg !3330

if.then669:                                       ; preds = %if.then653
  %arrayidx666 = getelementptr inbounds i8, ptr %125, i64 128, !dbg !3332
  %arrayidx678 = getelementptr inbounds ptr, ptr %126, i64 %idxprom491, !dbg !3332
  %127 = load ptr, ptr %arrayidx678, align 8, !dbg !3332
  call void %127(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx666, i32 noundef %shr500) #6, !dbg !3332
  br label %if.end687, !dbg !3332

if.end687:                                        ; preds = %if.then669, %if.then653
  %128 = load ptr, ptr %arrayidx506, align 8, !dbg !3330
  %129 = load ptr, ptr %arrayidx555, align 8, !dbg !3330
  %call696 = call i32 %128(ptr noundef %129, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #6, !dbg !3330
  %add697 = add nsw i32 %call696, %add650, !dbg !3330
    #dbg_value(i32 %add697, !3098, !DIExpression(), !3126)
  br label %if.end705, !dbg !3330

if.end705:                                        ; preds = %if.then571, %if.end687, %if.end640
  %cost585.0 = phi i32 [ %add697, %if.end687 ], [ %add650, %if.end640 ], [ %add601, %if.then571 ], !dbg !3303
    #dbg_value(i32 %cost585.0, !3098, !DIExpression(), !3126)
  %cmp700 = icmp slt i32 %cost585.0, %bcost.131779, !dbg !3334
  %bdir.3 = select i1 %cmp700, i32 1, i32 %bdir.21778, !dbg !3303
  %bcost.14 = call i32 @llvm.smin.i32(i32 %cost585.0, i32 %bcost.131779), !dbg !3303
  %bmy.14 = select i1 %cmp700, i32 %add581, i32 %bmy.131780, !dbg !3303
    #dbg_value(i32 %bmx.91817, !3048, !DIExpression(), !3115)
    #dbg_value(i32 %bmy.14, !3049, !DIExpression(), !3115)
    #dbg_value(i32 %bcost.14, !3050, !DIExpression(), !3115)
    #dbg_value(i32 %bdir.3, !3052, !DIExpression(), !3115)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride572) #6, !dbg !3320
  %cmp708 = icmp ne i32 %bdir.01811, 3, !dbg !3336
  %or.cond1220 = select i1 %tobool229, i1 true, i1 %cmp708, !dbg !3336
  br i1 %or.cond1220, label %if.then710, label %if.end705.if.then849_crit_edge, !dbg !3336

if.end705.if.then849_crit_edge:                   ; preds = %if.end705
  %.pre1836 = sext i32 %bmy.111814 to i64, !dbg !3337
  br label %if.then849, !dbg !3336

if.then710:                                       ; preds = %if.end566, %if.end705
  %bmy.151788 = phi i32 [ %bmy.14, %if.end705 ], [ %bmy.12, %if.end566 ]
  %bcost.151787 = phi i32 [ %bcost.14, %if.end705 ], [ %bcost.12, %if.end566 ]
  %bdir.41786 = phi i32 [ %bdir.3, %if.end705 ], [ %bdir.1, %if.end566 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride711) #6, !dbg !3338
  store i32 16, ptr %stride711, align 4, !dbg !3338, !DIAssignID !3339
    #dbg_assign(i32 16, !3099, !DIExpression(), !3339, ptr %stride711, !DIExpression(), !3128)
  %130 = load ptr, ptr %get_ref436, align 8, !dbg !3338
  %131 = load i32, ptr %i_stride440, align 8, !dbg !3338
  %sub720 = add nsw i32 %bmx.91817, -1, !dbg !3338
  %132 = load ptr, ptr %weight443, align 8, !dbg !3338
  %call723 = call ptr %130(ptr noundef nonnull %pix, ptr noundef nonnull %stride711, ptr noundef nonnull %p_fref438, i32 noundef %131, i32 noundef %sub720, i32 noundef %bmy.111814, i32 noundef %1, i32 noundef %2, ptr noundef %132) #6, !dbg !3338
    #dbg_value(ptr %call723, !3102, !DIExpression(), !3128)
  %133 = load ptr, ptr %arrayidx450, align 8, !dbg !3338
  %134 = load ptr, ptr %p_fenc451, align 8, !dbg !3338
  %135 = load i32, ptr %stride711, align 4, !dbg !3338
  %call731 = call i32 %133(ptr noundef %134, i32 noundef 16, ptr noundef %call723, i32 noundef %135) #6, !dbg !3338
  %idxprom733 = sext i32 %sub720 to i64, !dbg !3338
  %arrayidx734 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom733, !dbg !3338
  %136 = load i16, ptr %arrayidx734, align 2, !dbg !3338
  %conv735 = zext i16 %136 to i32, !dbg !3338
  %add736 = add nsw i32 %call731, %conv735, !dbg !3338
  %idxprom737 = sext i32 %bmy.111814 to i64, !dbg !3338
  %arrayidx738 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom737, !dbg !3338
  %137 = load i16, ptr %arrayidx738, align 2, !dbg !3338
  %conv739 = zext i16 %137 to i32, !dbg !3338
  %add740 = add nsw i32 %add736, %conv739, !dbg !3338
    #dbg_value(i32 %add740, !3103, !DIExpression(), !3128)
  %cmp743 = icmp slt i32 %add740, %bcost.151787, !dbg !3340
  %or.cond1766 = select i1 %7, i1 %cmp743, i1 false, !dbg !3340
  br i1 %or.cond1766, label %if.then745, label %if.end838, !dbg !3340

if.then745:                                       ; preds = %if.then710
  %138 = load ptr, ptr %mc_chroma469, align 8, !dbg !3342
  %139 = load ptr, ptr %arrayidx472, align 16, !dbg !3342
  %140 = load i32, ptr %arrayidx474, align 4, !dbg !3342
  %add754 = add nsw i32 %bmy.111814, %cond, !dbg !3342
  call void %138(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %139, i32 noundef %140, i32 noundef %sub720, i32 noundef %add754, i32 noundef %div477, i32 noundef %div478) #6, !dbg !3342
  %141 = load ptr, ptr %weight443, align 8, !dbg !3344
  %weightfn759 = getelementptr inbounds i8, ptr %141, i64 112, !dbg !3344
  %142 = load ptr, ptr %weightfn759, align 16, !dbg !3344
  %tobool760.not = icmp eq ptr %142, null, !dbg !3344
  br i1 %tobool760.not, label %if.end779, label %if.then761, !dbg !3342

if.then761:                                       ; preds = %if.then745
  %arrayidx758 = getelementptr inbounds i8, ptr %141, i64 64, !dbg !3344
  %arrayidx770 = getelementptr inbounds ptr, ptr %142, i64 %idxprom491, !dbg !3344
  %143 = load ptr, ptr %arrayidx770, align 8, !dbg !3344
  call void %143(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx758, i32 noundef %shr500) #6, !dbg !3344
  br label %if.end779, !dbg !3344

if.end779:                                        ; preds = %if.then761, %if.then745
  %144 = load ptr, ptr %arrayidx506, align 8, !dbg !3342
  %145 = load ptr, ptr %arrayidx508, align 8, !dbg !3342
  %call788 = call i32 %144(ptr noundef %145, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #6, !dbg !3342
  %add789 = add nsw i32 %call788, %add740, !dbg !3342
    #dbg_value(i32 %add789, !3103, !DIExpression(), !3128)
  %cmp790 = icmp slt i32 %add789, %bcost.151787, !dbg !3346
  br i1 %cmp790, label %if.then792, label %if.end838, !dbg !3342

if.then792:                                       ; preds = %if.end779
  %146 = load ptr, ptr %mc_chroma469, align 8, !dbg !3348
  %147 = load ptr, ptr %arrayidx519, align 8, !dbg !3348
  %148 = load i32, ptr %arrayidx474, align 4, !dbg !3348
  call void %146(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %147, i32 noundef %148, i32 noundef %sub720, i32 noundef %add754, i32 noundef %div477, i32 noundef %div478) #6, !dbg !3348
  %149 = load ptr, ptr %weight443, align 8, !dbg !3350
  %weightfn806 = getelementptr inbounds i8, ptr %149, i64 176, !dbg !3350
  %150 = load ptr, ptr %weightfn806, align 16, !dbg !3350
  %tobool807.not = icmp eq ptr %150, null, !dbg !3350
  br i1 %tobool807.not, label %if.end826, label %if.then808, !dbg !3348

if.then808:                                       ; preds = %if.then792
  %arrayidx805 = getelementptr inbounds i8, ptr %149, i64 128, !dbg !3350
  %arrayidx817 = getelementptr inbounds ptr, ptr %150, i64 %idxprom491, !dbg !3350
  %151 = load ptr, ptr %arrayidx817, align 8, !dbg !3350
  call void %151(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx805, i32 noundef %shr500) #6, !dbg !3350
  br label %if.end826, !dbg !3350

if.end826:                                        ; preds = %if.then808, %if.then792
  %152 = load ptr, ptr %arrayidx506, align 8, !dbg !3348
  %153 = load ptr, ptr %arrayidx555, align 8, !dbg !3348
  %call835 = call i32 %152(ptr noundef %153, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #6, !dbg !3348
  %add836 = add nsw i32 %call835, %add789, !dbg !3348
    #dbg_value(i32 %add836, !3103, !DIExpression(), !3128)
  br label %if.end838, !dbg !3348

if.end838:                                        ; preds = %if.end779, %if.end826, %if.then710
  %cost724.0 = phi i32 [ %add836, %if.end826 ], [ %add789, %if.end779 ], [ %add740, %if.then710 ], !dbg !3338
    #dbg_value(i32 %cost724.0, !3103, !DIExpression(), !3128)
  %cmp839 = icmp slt i32 %cost724.0, %bcost.151787, !dbg !3352
  br i1 %cmp839, label %if.then841, label %if.end844, !dbg !3338

if.then841:                                       ; preds = %if.end838
    #dbg_value(i32 %cost724.0, !3050, !DIExpression(), !3115)
    #dbg_value(i32 %sub720, !3048, !DIExpression(), !3115)
    #dbg_value(i32 %bmy.111814, !3049, !DIExpression(), !3115)
    #dbg_value(i32 2, !3052, !DIExpression(), !3115)
  br label %if.end844, !dbg !3354

if.end844:                                        ; preds = %if.end838, %if.then841
  %bdir.5 = phi i32 [ 2, %if.then841 ], [ %bdir.41786, %if.end838 ], !dbg !3301
  %bcost.16 = phi i32 [ %cost724.0, %if.then841 ], [ %bcost.151787, %if.end838 ], !dbg !3301
  %bmy.16 = phi i32 [ %bmy.111814, %if.then841 ], [ %bmy.151788, %if.end838 ], !dbg !3301
  %bmx.14 = phi i32 [ %sub720, %if.then841 ], [ %bmx.91817, %if.end838 ], !dbg !3301
    #dbg_value(i32 %bmx.14, !3048, !DIExpression(), !3115)
    #dbg_value(i32 %bmy.16, !3049, !DIExpression(), !3115)
    #dbg_value(i32 %bcost.16, !3050, !DIExpression(), !3115)
    #dbg_value(i32 %bdir.5, !3052, !DIExpression(), !3115)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride711) #6, !dbg !3336
  %cmp847 = icmp ne i32 %bdir.01811, 2, !dbg !3356
  %or.cond1221 = select i1 %tobool229, i1 true, i1 %cmp847, !dbg !3356
  br i1 %or.cond1221, label %if.then849, label %if.end983, !dbg !3356

if.then849:                                       ; preds = %if.end705.if.then849_crit_edge, %if.end844
  %idxprom876.pre-phi = phi i64 [ %.pre1836, %if.end705.if.then849_crit_edge ], [ %idxprom737, %if.end844 ], !dbg !3337
  %bmx.151798 = phi i32 [ %bmx.91817, %if.end705.if.then849_crit_edge ], [ %bmx.14, %if.end844 ]
  %bmy.171797 = phi i32 [ %bmy.14, %if.end705.if.then849_crit_edge ], [ %bmy.16, %if.end844 ]
  %bcost.171796 = phi i32 [ %bcost.14, %if.end705.if.then849_crit_edge ], [ %bcost.16, %if.end844 ]
  %bdir.61795 = phi i32 [ %bdir.3, %if.end705.if.then849_crit_edge ], [ %bdir.5, %if.end844 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride850) #6, !dbg !3337
  store i32 16, ptr %stride850, align 4, !dbg !3337, !DIAssignID !3357
    #dbg_assign(i32 16, !3104, !DIExpression(), !3357, ptr %stride850, !DIExpression(), !3130)
  %154 = load ptr, ptr %get_ref436, align 8, !dbg !3337
  %155 = load i32, ptr %i_stride440, align 8, !dbg !3337
  %add859 = add nsw i32 %bmx.91817, 1, !dbg !3337
  %156 = load ptr, ptr %weight443, align 8, !dbg !3337
  %call862 = call ptr %154(ptr noundef nonnull %pix, ptr noundef nonnull %stride850, ptr noundef nonnull %p_fref438, i32 noundef %155, i32 noundef %add859, i32 noundef %bmy.111814, i32 noundef %1, i32 noundef %2, ptr noundef %156) #6, !dbg !3337
    #dbg_value(ptr %call862, !3107, !DIExpression(), !3130)
  %157 = load ptr, ptr %arrayidx450, align 8, !dbg !3337
  %158 = load ptr, ptr %p_fenc451, align 8, !dbg !3337
  %159 = load i32, ptr %stride850, align 4, !dbg !3337
  %call870 = call i32 %157(ptr noundef %158, i32 noundef 16, ptr noundef %call862, i32 noundef %159) #6, !dbg !3337
  %idxprom872 = sext i32 %add859 to i64, !dbg !3337
  %arrayidx873 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom872, !dbg !3337
  %160 = load i16, ptr %arrayidx873, align 2, !dbg !3337
  %conv874 = zext i16 %160 to i32, !dbg !3337
  %add875 = add nsw i32 %call870, %conv874, !dbg !3337
  %arrayidx877 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom876.pre-phi, !dbg !3337
  %161 = load i16, ptr %arrayidx877, align 2, !dbg !3337
  %conv878 = zext i16 %161 to i32, !dbg !3337
  %add879 = add nsw i32 %add875, %conv878, !dbg !3337
    #dbg_value(i32 %add879, !3108, !DIExpression(), !3130)
  %cmp882 = icmp slt i32 %add879, %bcost.171796, !dbg !3358
  %or.cond1767 = select i1 %7, i1 %cmp882, i1 false, !dbg !3358
  br i1 %or.cond1767, label %if.then884, label %if.end977, !dbg !3358

if.then884:                                       ; preds = %if.then849
  %162 = load ptr, ptr %mc_chroma469, align 8, !dbg !3360
  %163 = load ptr, ptr %arrayidx472, align 16, !dbg !3360
  %164 = load i32, ptr %arrayidx474, align 4, !dbg !3360
  %add893 = add nsw i32 %bmy.111814, %cond, !dbg !3360
  call void %162(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %163, i32 noundef %164, i32 noundef %add859, i32 noundef %add893, i32 noundef %div477, i32 noundef %div478) #6, !dbg !3360
  %165 = load ptr, ptr %weight443, align 8, !dbg !3362
  %weightfn898 = getelementptr inbounds i8, ptr %165, i64 112, !dbg !3362
  %166 = load ptr, ptr %weightfn898, align 16, !dbg !3362
  %tobool899.not = icmp eq ptr %166, null, !dbg !3362
  br i1 %tobool899.not, label %if.end918, label %if.then900, !dbg !3360

if.then900:                                       ; preds = %if.then884
  %arrayidx897 = getelementptr inbounds i8, ptr %165, i64 64, !dbg !3362
  %arrayidx909 = getelementptr inbounds ptr, ptr %166, i64 %idxprom491, !dbg !3362
  %167 = load ptr, ptr %arrayidx909, align 8, !dbg !3362
  call void %167(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx897, i32 noundef %shr500) #6, !dbg !3362
  br label %if.end918, !dbg !3362

if.end918:                                        ; preds = %if.then900, %if.then884
  %168 = load ptr, ptr %arrayidx506, align 8, !dbg !3360
  %169 = load ptr, ptr %arrayidx508, align 8, !dbg !3360
  %call927 = call i32 %168(ptr noundef %169, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #6, !dbg !3360
  %add928 = add nsw i32 %call927, %add879, !dbg !3360
    #dbg_value(i32 %add928, !3108, !DIExpression(), !3130)
  %cmp929 = icmp slt i32 %add928, %bcost.171796, !dbg !3364
  br i1 %cmp929, label %if.then931, label %if.end977, !dbg !3360

if.then931:                                       ; preds = %if.end918
  %170 = load ptr, ptr %mc_chroma469, align 8, !dbg !3366
  %171 = load ptr, ptr %arrayidx519, align 8, !dbg !3366
  %172 = load i32, ptr %arrayidx474, align 4, !dbg !3366
  call void %170(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %171, i32 noundef %172, i32 noundef %add859, i32 noundef %add893, i32 noundef %div477, i32 noundef %div478) #6, !dbg !3366
  %173 = load ptr, ptr %weight443, align 8, !dbg !3368
  %weightfn945 = getelementptr inbounds i8, ptr %173, i64 176, !dbg !3368
  %174 = load ptr, ptr %weightfn945, align 16, !dbg !3368
  %tobool946.not = icmp eq ptr %174, null, !dbg !3368
  br i1 %tobool946.not, label %if.end965, label %if.then947, !dbg !3366

if.then947:                                       ; preds = %if.then931
  %arrayidx944 = getelementptr inbounds i8, ptr %173, i64 128, !dbg !3368
  %arrayidx956 = getelementptr inbounds ptr, ptr %174, i64 %idxprom491, !dbg !3368
  %175 = load ptr, ptr %arrayidx956, align 8, !dbg !3368
  call void %175(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx944, i32 noundef %shr500) #6, !dbg !3368
  br label %if.end965, !dbg !3368

if.end965:                                        ; preds = %if.then947, %if.then931
  %176 = load ptr, ptr %arrayidx506, align 8, !dbg !3366
  %177 = load ptr, ptr %arrayidx555, align 8, !dbg !3366
  %call974 = call i32 %176(ptr noundef %177, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #6, !dbg !3366
  %add975 = add nsw i32 %call974, %add928, !dbg !3366
    #dbg_value(i32 %add975, !3108, !DIExpression(), !3130)
  br label %if.end977, !dbg !3366

if.end977:                                        ; preds = %if.end918, %if.end965, %if.then849
  %cost863.0 = phi i32 [ %add975, %if.end965 ], [ %add928, %if.end918 ], [ %add879, %if.then849 ], !dbg !3337
    #dbg_value(i32 %cost863.0, !3108, !DIExpression(), !3130)
  %cmp978 = icmp slt i32 %cost863.0, %bcost.171796, !dbg !3370
  br i1 %cmp978, label %if.then980, label %if.end982, !dbg !3337

if.then980:                                       ; preds = %if.end977
    #dbg_value(i32 %cost863.0, !3050, !DIExpression(), !3115)
    #dbg_value(i32 %add859, !3048, !DIExpression(), !3115)
    #dbg_value(i32 %bmy.111814, !3049, !DIExpression(), !3115)
    #dbg_value(i32 3, !3052, !DIExpression(), !3115)
  br label %if.end982, !dbg !3372

if.end982:                                        ; preds = %if.then980, %if.end977
  %bdir.7 = phi i32 [ 3, %if.then980 ], [ %bdir.61795, %if.end977 ], !dbg !3301
  %bcost.18 = phi i32 [ %cost863.0, %if.then980 ], [ %bcost.171796, %if.end977 ], !dbg !3301
  %bmy.18 = phi i32 [ %bmy.111814, %if.then980 ], [ %bmy.171797, %if.end977 ], !dbg !3301
  %bmx.16 = phi i32 [ %add859, %if.then980 ], [ %bmx.151798, %if.end977 ], !dbg !3301
    #dbg_value(i32 %bmx.16, !3048, !DIExpression(), !3115)
    #dbg_value(i32 %bmy.18, !3049, !DIExpression(), !3115)
    #dbg_value(i32 %bcost.18, !3050, !DIExpression(), !3115)
    #dbg_value(i32 %bdir.7, !3052, !DIExpression(), !3115)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride850) #6, !dbg !3356
  br label %if.end983, !dbg !3337

if.end983:                                        ; preds = %if.end844, %if.end982
  %bdir.8 = phi i32 [ %bdir.7, %if.end982 ], [ %bdir.5, %if.end844 ], !dbg !3301
  %bcost.19 = phi i32 [ %bcost.18, %if.end982 ], [ %bcost.16, %if.end844 ], !dbg !3301
  %bmy.19 = phi i32 [ %bmy.18, %if.end982 ], [ %bmy.16, %if.end844 ], !dbg !3301
  %bmx.17 = phi i32 [ %bmx.16, %if.end982 ], [ %bmx.14, %if.end844 ], !dbg !3301
    #dbg_value(i32 %bmx.17, !3048, !DIExpression(), !3115)
    #dbg_value(i32 %bmy.19, !3049, !DIExpression(), !3115)
    #dbg_value(i32 %bcost.19, !3050, !DIExpression(), !3115)
    #dbg_value(i32 %bdir.8, !3052, !DIExpression(), !3115)
  %cmp984 = icmp ne i32 %bmx.17, %bmx.91817, !dbg !3374
  %cmp986 = icmp ne i32 %bmy.19, %bmy.111814, !dbg !3376
  %and9881760.not = or i1 %cmp986, %cmp984, !dbg !3377
    #dbg_value(i32 %i395.01810, !3081, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3284)
  br i1 %and9881760.not, label %for.cond396, label %if.end1185

if.else1000:                                      ; preds = %if.end389
  %178 = load i32, ptr %arrayidx403, align 4, !dbg !3378
  %cmp1004 = icmp sgt i32 %bmy.8, %178, !dbg !3379
  br i1 %cmp1004, label %land.lhs.true1006, label %if.end1185, !dbg !3380

land.lhs.true1006:                                ; preds = %if.else1000
  %mv_max_spel1008 = getelementptr inbounds i8, ptr %h, i64 16464, !dbg !3381
  %arrayidx1009 = getelementptr inbounds i8, ptr %h, i64 16468, !dbg !3382
  %179 = load i32, ptr %arrayidx1009, align 4, !dbg !3382
  %cmp1010 = icmp slt i32 %bmy.8, %179, !dbg !3383
  br i1 %cmp1010, label %land.lhs.true1012, label %if.end1185, !dbg !3384

land.lhs.true1012:                                ; preds = %land.lhs.true1006
  %180 = load i32, ptr %mv_min_spel402, align 8, !dbg !3385
  %cmp1016 = icmp sgt i32 %bmx.6, %180, !dbg !3386
  br i1 %cmp1016, label %land.lhs.true1018, label %if.end1185, !dbg !3387

land.lhs.true1018:                                ; preds = %land.lhs.true1012
  %181 = load i32, ptr %mv_max_spel1008, align 16, !dbg !3388
  %cmp1022 = icmp slt i32 %bmx.6, %181, !dbg !3389
  br i1 %cmp1022, label %if.then1024, label %if.end1185, !dbg !3390

if.then1024:                                      ; preds = %land.lhs.true1018
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %costs1025) #6, !dbg !3391
    #dbg_value(i32 %bmx.6, !3112, !DIExpression(), !3132)
    #dbg_value(i32 %bmy.8, !3113, !DIExpression(), !3132)
  %mc1028 = getelementptr inbounds i8, ptr %h, i64 32616, !dbg !3392
  %182 = load ptr, ptr %mc1028, align 8, !dbg !3393
  %p_fref1030 = getelementptr inbounds i8, ptr %m, i64 32, !dbg !3394
  %i_stride1032 = getelementptr inbounds i8, ptr %m, i64 120, !dbg !3395
  %183 = load i32, ptr %i_stride1032, align 8, !dbg !3396
  %sub1034 = add nsw i32 %bmy.8, -1, !dbg !3397
  %weight1035 = getelementptr inbounds i8, ptr %m, i64 24, !dbg !3398
  %184 = load ptr, ptr %weight1035, align 8, !dbg !3398
  call void %182(ptr noundef nonnull %pix, i32 noundef 64, ptr noundef nonnull %p_fref1030, i32 noundef %183, i32 noundef %bmx.6, i32 noundef %sub1034, i32 noundef %1, i32 noundef %2, ptr noundef %184) #6, !dbg !3399
  %185 = load ptr, ptr %mc1028, align 8, !dbg !3400
  %add.ptr1040 = getelementptr inbounds i8, ptr %pix, i64 16, !dbg !3401
  %186 = load i32, ptr %i_stride1032, align 8, !dbg !3402
  %add1045 = add nsw i32 %bmy.8, 1, !dbg !3403
  %187 = load ptr, ptr %weight1035, align 8, !dbg !3404
  call void %185(ptr noundef nonnull %add.ptr1040, i32 noundef 64, ptr noundef nonnull %p_fref1030, i32 noundef %186, i32 noundef %bmx.6, i32 noundef %add1045, i32 noundef %1, i32 noundef %2, ptr noundef %187) #6, !dbg !3405
  %188 = load ptr, ptr %mc1028, align 8, !dbg !3406
  %add.ptr1051 = getelementptr inbounds i8, ptr %pix, i64 32, !dbg !3407
  %189 = load i32, ptr %i_stride1032, align 8, !dbg !3408
  %sub1056 = add nsw i32 %bmx.6, -1, !dbg !3409
  %190 = load ptr, ptr %weight1035, align 8, !dbg !3410
  call void %188(ptr noundef nonnull %add.ptr1051, i32 noundef 64, ptr noundef nonnull %p_fref1030, i32 noundef %189, i32 noundef %sub1056, i32 noundef %bmy.8, i32 noundef %1, i32 noundef %2, ptr noundef %190) #6, !dbg !3411
  %191 = load ptr, ptr %mc1028, align 8, !dbg !3412
  %add.ptr1062 = getelementptr inbounds i8, ptr %pix, i64 48, !dbg !3413
  %192 = load i32, ptr %i_stride1032, align 8, !dbg !3414
  %add1067 = add nsw i32 %bmx.6, 1, !dbg !3415
  %193 = load ptr, ptr %weight1035, align 8, !dbg !3416
  call void %191(ptr noundef nonnull %add.ptr1062, i32 noundef 64, ptr noundef nonnull %p_fref1030, i32 noundef %192, i32 noundef %add1067, i32 noundef %bmy.8, i32 noundef %1, i32 noundef %2, ptr noundef %193) #6, !dbg !3417
  %fpelcmp_x41071 = getelementptr inbounds i8, ptr %h, i64 32040, !dbg !3418
  %arrayidx1073 = getelementptr inbounds [7 x ptr], ptr %fpelcmp_x41071, i64 0, i64 %idxprom, !dbg !3419
  %194 = load ptr, ptr %arrayidx1073, align 8, !dbg !3419
  %p_fenc1074 = getelementptr inbounds i8, ptr %m, i64 88, !dbg !3420
  %195 = load ptr, ptr %p_fenc1074, align 8, !dbg !3421
  call void %194(ptr noundef %195, ptr noundef nonnull %pix, ptr noundef nonnull %add.ptr1040, ptr noundef nonnull %add.ptr1051, ptr noundef nonnull %add.ptr1062, i32 noundef 64, ptr noundef nonnull %costs1025) #6, !dbg !3419
  %196 = load i32, ptr %costs1025, align 16, !dbg !3422
  %idxprom1085 = sext i32 %bmx.6 to i64, !dbg !3422
  %arrayidx1086 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1085, !dbg !3422
  %197 = load i16, ptr %arrayidx1086, align 2, !dbg !3422
  %conv1087 = zext i16 %197 to i32, !dbg !3422
  %add1088 = add nsw i32 %196, %conv1087, !dbg !3422
  %idxprom1090 = sext i32 %sub1034 to i64, !dbg !3422
  %arrayidx1091 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom1090, !dbg !3422
  %198 = load i16, ptr %arrayidx1091, align 2, !dbg !3422
  %conv1092 = zext i16 %198 to i32, !dbg !3422
  %add1093 = add nsw i32 %add1088, %conv1092, !dbg !3422
  %cmp1094 = icmp slt i32 %add1093, %bcost.10, !dbg !3422
  %spec.select1768 = call i32 @llvm.smin.i32(i32 %add1093, i32 %bcost.10), !dbg !3424
  %spec.select1769 = select i1 %cmp1094, i32 %sub1034, i32 %bmy.8, !dbg !3424
    #dbg_value(i32 %spec.select1769, !3049, !DIExpression(), !3115)
    #dbg_value(i32 %spec.select1768, !3050, !DIExpression(), !3115)
  %arrayidx1109 = getelementptr inbounds i8, ptr %costs1025, i64 4, !dbg !3425
  %199 = load i32, ptr %arrayidx1109, align 4, !dbg !3425
  %add1113 = add nsw i32 %199, %conv1087, !dbg !3425
  %idxprom1115 = sext i32 %add1045 to i64, !dbg !3425
  %arrayidx1116 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom1115, !dbg !3425
  %200 = load i16, ptr %arrayidx1116, align 2, !dbg !3425
  %conv1117 = zext i16 %200 to i32, !dbg !3425
  %add1118 = add nsw i32 %add1113, %conv1117, !dbg !3425
  %cmp1119 = icmp slt i32 %add1118, %spec.select1768, !dbg !3425
  %bcost.22 = call i32 @llvm.smin.i32(i32 %add1118, i32 %spec.select1768), !dbg !3427
  %bmy.22 = select i1 %cmp1119, i32 %add1045, i32 %spec.select1769, !dbg !3427
    #dbg_value(i32 %bmy.22, !3049, !DIExpression(), !3115)
    #dbg_value(i32 %bcost.22, !3050, !DIExpression(), !3115)
  %arrayidx1134 = getelementptr inbounds i8, ptr %costs1025, i64 8, !dbg !3428
  %201 = load i32, ptr %arrayidx1134, align 8, !dbg !3428
  %idxprom1136 = sext i32 %sub1056 to i64, !dbg !3428
  %arrayidx1137 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1136, !dbg !3428
  %202 = load i16, ptr %arrayidx1137, align 2, !dbg !3428
  %conv1138 = zext i16 %202 to i32, !dbg !3428
  %add1139 = add nsw i32 %201, %conv1138, !dbg !3428
  %idxprom1140 = sext i32 %bmy.8 to i64, !dbg !3428
  %arrayidx1141 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom1140, !dbg !3428
  %203 = load i16, ptr %arrayidx1141, align 2, !dbg !3428
  %conv1142 = zext i16 %203 to i32, !dbg !3428
  %add1143 = add nsw i32 %add1139, %conv1142, !dbg !3428
  %cmp1144 = icmp slt i32 %add1143, %bcost.22, !dbg !3428
  %bcost.23 = call i32 @llvm.smin.i32(i32 %add1143, i32 %bcost.22), !dbg !3430
  %bmx.19 = select i1 %cmp1144, i32 %sub1056, i32 %bmx.6, !dbg !3430
    #dbg_value(i32 %bmx.19, !3048, !DIExpression(), !3115)
    #dbg_value(i32 poison, !3049, !DIExpression(), !3115)
    #dbg_value(i32 %bcost.23, !3050, !DIExpression(), !3115)
  %arrayidx1159 = getelementptr inbounds i8, ptr %costs1025, i64 12, !dbg !3431
  %204 = load i32, ptr %arrayidx1159, align 4, !dbg !3431
  %idxprom1161 = sext i32 %add1067 to i64, !dbg !3431
  %arrayidx1162 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1161, !dbg !3431
  %205 = load i16, ptr %arrayidx1162, align 2, !dbg !3431
  %conv1163 = zext i16 %205 to i32, !dbg !3431
  %add1164 = add i32 %204, %conv1142, !dbg !3431
  %add1168 = add i32 %add1164, %conv1163, !dbg !3431
  %cmp1169 = icmp slt i32 %add1168, %bcost.23, !dbg !3431
  %bcost.24 = call i32 @llvm.smin.i32(i32 %add1168, i32 %bcost.23), !dbg !3433
  %206 = or i1 %cmp1144, %cmp1169, !dbg !3433
  %bmy.24 = select i1 %206, i32 %bmy.8, i32 %bmy.22, !dbg !3433
  %bmx.20 = select i1 %cmp1169, i32 %add1067, i32 %bmx.19, !dbg !3433
    #dbg_value(i32 %bmx.20, !3048, !DIExpression(), !3115)
    #dbg_value(i32 %bmy.24, !3049, !DIExpression(), !3115)
    #dbg_value(i32 %bcost.24, !3050, !DIExpression(), !3115)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %costs1025) #6, !dbg !3434
  br label %if.end1185, !dbg !3435

if.end1185:                                       ; preds = %for.body400, %lor.lhs.false406, %lor.lhs.false412, %lor.lhs.false418, %for.cond396, %if.end983, %for.cond396.preheader, %if.else1000, %land.lhs.true1006, %land.lhs.true1012, %land.lhs.true1018, %if.then1024
  %bcost.25 = phi i32 [ %bcost.24, %if.then1024 ], [ %bcost.10, %land.lhs.true1018 ], [ %bcost.10, %land.lhs.true1012 ], [ %bcost.10, %land.lhs.true1006 ], [ %bcost.10, %if.else1000 ], [ %bcost.10, %for.cond396.preheader ], [ %bcost.111813, %for.body400 ], [ %bcost.111813, %lor.lhs.false406 ], [ %bcost.111813, %lor.lhs.false412 ], [ %bcost.111813, %lor.lhs.false418 ], [ %bcost.19, %for.cond396 ], [ %bcost.19, %if.end983 ], !dbg !3115
  %bmy.25 = phi i32 [ %bmy.24, %if.then1024 ], [ %bmy.8, %land.lhs.true1018 ], [ %bmy.8, %land.lhs.true1012 ], [ %bmy.8, %land.lhs.true1006 ], [ %bmy.8, %if.else1000 ], [ %bmy.8, %for.cond396.preheader ], [ %bmy.111814, %for.body400 ], [ %bmy.111814, %lor.lhs.false406 ], [ %bmy.111814, %lor.lhs.false412 ], [ %bmy.111814, %lor.lhs.false418 ], [ %bmy.19, %for.cond396 ], [ %bmy.111814, %if.end983 ], !dbg !3115
  %bmx.21 = phi i32 [ %bmx.20, %if.then1024 ], [ %bmx.6, %land.lhs.true1018 ], [ %bmx.6, %land.lhs.true1012 ], [ %bmx.6, %land.lhs.true1006 ], [ %bmx.6, %if.else1000 ], [ %bmx.6, %for.cond396.preheader ], [ %bmx.91817, %for.body400 ], [ %bmx.91817, %lor.lhs.false406 ], [ %bmx.91817, %lor.lhs.false412 ], [ %bmx.91817, %lor.lhs.false418 ], [ %bmx.17, %for.cond396 ], [ %bmx.91817, %if.end983 ], !dbg !3115
    #dbg_value(i32 %bmx.21, !3048, !DIExpression(), !3115)
    #dbg_value(i32 %bmy.25, !3049, !DIExpression(), !3115)
    #dbg_value(i32 %bcost.25, !3050, !DIExpression(), !3115)
  store i32 %bcost.25, ptr %cost, align 8, !dbg !3436
  %conv1187 = trunc i32 %bmx.21 to i16, !dbg !3437
  store i16 %conv1187, ptr %mv, align 4, !dbg !3438
  %conv1190 = trunc i32 %bmy.25 to i16, !dbg !3439
  store i16 %conv1190, ptr %arrayidx24, align 2, !dbg !3440
  %idxprom1193 = sext i32 %bmx.21 to i64, !dbg !3441
  %arrayidx1194 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1193, !dbg !3441
  %207 = load i16, ptr %arrayidx1194, align 2, !dbg !3441
  %conv1195 = zext i16 %207 to i32, !dbg !3441
  %idxprom1196 = sext i32 %bmy.25 to i64, !dbg !3442
  %arrayidx1197 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom1196, !dbg !3442
  %208 = load i16, ptr %arrayidx1197, align 2, !dbg !3442
  %conv1198 = zext i16 %208 to i32, !dbg !3442
  %add1199 = add nuw nsw i32 %conv1198, %conv1195, !dbg !3443
  %cost_mv = getelementptr inbounds i8, ptr %m, i64 132, !dbg !3444
  store i32 %add1199, ptr %cost_mv, align 4, !dbg !3445
  br label %cleanup1200, !dbg !3446

cleanup1200:                                      ; preds = %if.end1185, %if.then376
  call void @llvm.lifetime.end.p0(i64 1152, ptr nonnull %pix) #6, !dbg !3446
  ret void, !dbg !3446
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_me_refine_qpel(ptr nocapture noundef readonly %h, ptr noundef %m) local_unnamed_addr #0 !dbg !3447 {
entry:
    #dbg_value(ptr %h, !3451, !DIExpression(), !3455)
    #dbg_value(ptr %m, !3452, !DIExpression(), !3455)
  %i_subpel_refine = getelementptr inbounds i8, ptr %h, i64 16408, !dbg !3456
  %0 = load i32, ptr %i_subpel_refine, align 8, !dbg !3456
  %idxprom = sext i32 %0 to i64, !dbg !3457
  %arrayidx = getelementptr inbounds [11 x [4 x i8]], ptr @subpel_iterations, i64 0, i64 %idxprom, !dbg !3457
  %1 = load i8, ptr %arrayidx, align 4, !dbg !3457
    #dbg_value(i8 %1, !3453, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3455)
  %arrayidx6 = getelementptr inbounds i8, ptr %arrayidx, i64 1, !dbg !3458
  %2 = load i8, ptr %arrayidx6, align 1, !dbg !3458
    #dbg_value(i8 %2, !3454, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3455)
  %3 = load i32, ptr %m, align 16, !dbg !3459
  %cmp = icmp slt i32 %3, 4, !dbg !3461
  br i1 %cmp, label %if.then, label %if.end, !dbg !3462

if.then:                                          ; preds = %entry
  %i_ref_cost = getelementptr inbounds i8, ptr %m, i64 16, !dbg !3463
  %4 = load i32, ptr %i_ref_cost, align 16, !dbg !3463
  %cost = getelementptr inbounds i8, ptr %m, i64 136, !dbg !3464
  %5 = load i32, ptr %cost, align 8, !dbg !3465
  %sub = sub nsw i32 %5, %4, !dbg !3465
  store i32 %sub, ptr %cost, align 8, !dbg !3465
  br label %if.end, !dbg !3466

if.end:                                           ; preds = %if.then, %entry
  %conv7 = zext i8 %2 to i32, !dbg !3458
    #dbg_value(i32 %conv7, !3454, !DIExpression(), !3455)
  %conv = zext i8 %1 to i32, !dbg !3457
    #dbg_value(i32 %conv, !3453, !DIExpression(), !3455)
  tail call fastcc void @refine_subpel(ptr noundef nonnull %h, ptr noundef nonnull %m, i32 noundef %conv, i32 noundef %conv7, ptr noundef null, i32 noundef 1), !dbg !3467
  ret void, !dbg !3468
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_me_refine_qpel_refdupe(ptr nocapture noundef readonly %h, ptr noundef %m, ptr noundef %p_halfpel_thresh) local_unnamed_addr #0 !dbg !3469 {
entry:
    #dbg_value(ptr %h, !3473, !DIExpression(), !3476)
    #dbg_value(ptr %m, !3474, !DIExpression(), !3476)
    #dbg_value(ptr %p_halfpel_thresh, !3475, !DIExpression(), !3476)
  %i_subpel_refine = getelementptr inbounds i8, ptr %h, i64 16408, !dbg !3477
  %0 = load i32, ptr %i_subpel_refine, align 8, !dbg !3477
  %idxprom = sext i32 %0 to i64, !dbg !3477
  %1 = add nsw i64 %idxprom, -8, !dbg !3477
  %cmp = icmp ult i64 %1, 3, !dbg !3477
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !3477

cond.false:                                       ; preds = %entry
  %arrayidx1 = getelementptr inbounds [11 x [4 x i8]], ptr @subpel_iterations, i64 0, i64 %idxprom, i64 3, !dbg !3477
  %2 = load i8, ptr %arrayidx1, align 1, !dbg !3477
  %conv = zext i8 %2 to i32, !dbg !3477
  br label %cond.end, !dbg !3477

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %conv, %cond.false ], [ 2, %entry ], !dbg !3477
  tail call fastcc void @refine_subpel(ptr noundef nonnull %h, ptr noundef %m, i32 noundef 0, i32 noundef %cond, ptr noundef %p_halfpel_thresh, i32 noundef 0), !dbg !3478
  ret void, !dbg !3479
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_me_refine_bidir_satd(ptr noundef %h, ptr noundef %m0, ptr noundef %m1, i32 noundef %i_weight) local_unnamed_addr #0 !dbg !3480 {
entry:
    #dbg_value(ptr %h, !3484, !DIExpression(), !3488)
    #dbg_value(ptr %m0, !3485, !DIExpression(), !3488)
    #dbg_value(ptr %m1, !3486, !DIExpression(), !3488)
    #dbg_value(i32 %i_weight, !3487, !DIExpression(), !3488)
  tail call fastcc void @x264_me_refine_bidir(ptr noundef %h, ptr noundef %m0, ptr noundef %m1, i32 noundef %i_weight, i32 noundef 0, i32 noundef 0, i32 noundef 0), !dbg !3489
  ret void, !dbg !3490
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @x264_me_refine_bidir(ptr noundef %h, ptr noundef %m0, ptr noundef %m1, i32 noundef %i_weight, i32 noundef %i8, i32 noundef %i_lambda2, i32 noundef %rd) unnamed_addr #3 !dbg !1719 {
entry:
  %pixy_buf = alloca [2 x [9 x [256 x i8]]], align 16, !DIAssignID !3491
    #dbg_assign(i1 undef, !1735, !DIExpression(), !3491, ptr %pixy_buf, !DIExpression(), !3492)
  %pixu_buf = alloca [2 x [9 x [64 x i8]]], align 8, !DIAssignID !3493
    #dbg_assign(i1 undef, !1738, !DIExpression(), !3493, ptr %pixu_buf, !DIExpression(), !3492)
  %pixv_buf = alloca [2 x [9 x [64 x i8]]], align 8, !DIAssignID !3494
    #dbg_assign(i1 undef, !1741, !DIExpression(), !3494, ptr %pixv_buf, !DIExpression(), !3492)
  %src = alloca [2 x [9 x ptr]], align 16, !DIAssignID !3495
    #dbg_assign(i1 undef, !1742, !DIExpression(), !3495, ptr %src, !DIExpression(), !3492)
  %stride = alloca [2 x [9 x i32]], align 16, !DIAssignID !3496
    #dbg_assign(i1 undef, !1752, !DIExpression(), !3496, ptr %stride, !DIExpression(), !3492)
  %visited = alloca [8 x [8 x [8 x i8]]], align 16, !DIAssignID !3497
    #dbg_assign(i1 undef, !1763, !DIExpression(), !3497, ptr %visited, !DIExpression(), !3492)
    #dbg_value(ptr %h, !1723, !DIExpression(), !3492)
    #dbg_value(ptr %m0, !1724, !DIExpression(), !3492)
    #dbg_value(ptr %m1, !1725, !DIExpression(), !3492)
    #dbg_value(i32 %i_weight, !1726, !DIExpression(), !3492)
    #dbg_value(i32 %i8, !1727, !DIExpression(), !3492)
    #dbg_value(i32 %i_lambda2, !1728, !DIExpression(), !3492)
    #dbg_value(i32 %rd, !1729, !DIExpression(), !3492)
  %mv = getelementptr inbounds i8, ptr %h, i64 25200, !dbg !3498
  %mul = shl nsw i32 %i8, 2, !dbg !3499
  %idxprom = sext i32 %mul to i64, !dbg !3500
  %arrayidx1 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom, !dbg !3500
  %0 = load i32, ptr %arrayidx1, align 16, !dbg !3500
  %idxprom2 = sext i32 %0 to i64, !dbg !3501
  %arrayidx3 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %idxprom2, !dbg !3501
    #dbg_value(ptr %arrayidx3, !1730, !DIExpression(), !3492)
  %arrayidx7 = getelementptr inbounds i8, ptr %h, i64 25360, !dbg !3502
  %arrayidx12 = getelementptr inbounds [40 x [2 x i16]], ptr %arrayidx7, i64 0, i64 %idxprom2, !dbg !3502
    #dbg_value(ptr %arrayidx12, !1731, !DIExpression(), !3492)
  %1 = load i32, ptr %m0, align 16, !dbg !3503
    #dbg_value(i32 %1, !1732, !DIExpression(), !3492)
  %idxprom15 = sext i32 %1 to i64, !dbg !3504
  %arrayidx16 = getelementptr inbounds [7 x %struct.anon], ptr @x264_pixel_size, i64 0, i64 %idxprom15, !dbg !3504
  %2 = load i32, ptr %arrayidx16, align 8, !dbg !3505
    #dbg_value(i32 %2, !1733, !DIExpression(), !3492)
  %h19 = getelementptr inbounds i8, ptr %arrayidx16, i64 4, !dbg !3506
  %3 = load i32, ptr %h19, align 4, !dbg !3506
    #dbg_value(i32 %3, !1734, !DIExpression(), !3492)
  call void @llvm.lifetime.start.p0(i64 4608, ptr nonnull %pixy_buf) #6, !dbg !3507
  call void @llvm.lifetime.start.p0(i64 1152, ptr nonnull %pixu_buf) #6, !dbg !3508
  call void @llvm.lifetime.start.p0(i64 1152, ptr nonnull %pixv_buf) #6, !dbg !3509
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %src) #6, !dbg !3510
  %p_fdec = getelementptr inbounds i8, ptr %h, i64 21392, !dbg !3511
  %4 = load ptr, ptr %p_fdec, align 16, !dbg !3512
  %shr = ashr i32 %i8, 1, !dbg !3513
  %mul23 = shl nsw i32 %shr, 8, !dbg !3514
  %and = and i32 %i8, 1, !dbg !3515
  %mul24 = shl nuw nsw i32 %and, 3, !dbg !3516
  %add = or disjoint i32 %mul23, %mul24, !dbg !3517
  %idxprom25 = sext i32 %add to i64, !dbg !3512
  %arrayidx26 = getelementptr inbounds i8, ptr %4, i64 %idxprom25, !dbg !3512
    #dbg_value(ptr %arrayidx26, !1745, !DIExpression(), !3492)
  %arrayidx30 = getelementptr inbounds i8, ptr %h, i64 21400, !dbg !3518
  %5 = load ptr, ptr %arrayidx30, align 8, !dbg !3518
  %mul33 = shl nsw i32 %shr, 7, !dbg !3519
  %mul35 = shl nuw nsw i32 %and, 2, !dbg !3520
  %add36 = or disjoint i32 %mul33, %mul35, !dbg !3521
  %idxprom37 = sext i32 %add36 to i64, !dbg !3518
  %arrayidx38 = getelementptr inbounds i8, ptr %5, i64 %idxprom37, !dbg !3518
    #dbg_value(ptr %arrayidx38, !1746, !DIExpression(), !3492)
  %arrayidx42 = getelementptr inbounds i8, ptr %h, i64 21408, !dbg !3522
  %6 = load ptr, ptr %arrayidx42, align 16, !dbg !3522
  %arrayidx50 = getelementptr inbounds i8, ptr %6, i64 %idxprom37, !dbg !3522
    #dbg_value(ptr %arrayidx50, !1747, !DIExpression(), !3492)
  %ref = getelementptr inbounds i8, ptr %h, i64 25120, !dbg !3523
  %arrayidx58 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %idxprom2, !dbg !3524
  %7 = load i8, ptr %arrayidx58, align 1, !dbg !3524
  %conv = sext i8 %7 to i32, !dbg !3524
    #dbg_value(i32 %conv, !1748, !DIExpression(), !3492)
  %arrayidx62 = getelementptr inbounds i8, ptr %h, i64 25160, !dbg !3525
  %arrayidx67 = getelementptr inbounds [40 x i8], ptr %arrayidx62, i64 0, i64 %idxprom2, !dbg !3525
  %8 = load i8, ptr %arrayidx67, align 1, !dbg !3525
  %conv68 = sext i8 %8 to i32, !dbg !3525
    #dbg_value(i32 %conv68, !1749, !DIExpression(), !3492)
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436, !dbg !3526
  %9 = load i32, ptr %b_interlaced, align 4, !dbg !3526
  %and70 = and i32 %9, %conv, !dbg !3527
  %tobool.not = icmp eq i32 %and70, 0, !dbg !3527
  br i1 %tobool.not, label %cond.end, label %cond.true, !dbg !3528

cond.true:                                        ; preds = %entry
  %i_mb_y = getelementptr inbounds i8, ptr %h, i64 16388, !dbg !3529
  %10 = load i32, ptr %i_mb_y, align 4, !dbg !3529
  %and72 = shl i32 %10, 2, !dbg !3530
  %mul73 = and i32 %and72, 4, !dbg !3530
  %sub = add nsw i32 %mul73, -2, !dbg !3531
  br label %cond.end, !dbg !3528

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %entry ], !dbg !3528
    #dbg_value(i32 %cond, !1750, !DIExpression(), !3492)
  %and76 = and i32 %9, %conv68, !dbg !3532
  %tobool77.not = icmp eq i32 %and76, 0, !dbg !3532
  br i1 %tobool77.not, label %cond.end85, label %cond.true78, !dbg !3533

cond.true78:                                      ; preds = %cond.end
  %i_mb_y80 = getelementptr inbounds i8, ptr %h, i64 16388, !dbg !3534
  %11 = load i32, ptr %i_mb_y80, align 4, !dbg !3534
  %and81 = shl i32 %11, 2, !dbg !3535
  %mul82 = and i32 %and81, 4, !dbg !3535
  %sub83 = add nsw i32 %mul82, -2, !dbg !3536
  br label %cond.end85, !dbg !3533

cond.end85:                                       ; preds = %cond.end, %cond.true78
  %cond86 = phi i32 [ %sub83, %cond.true78 ], [ 0, %cond.end ], !dbg !3533
    #dbg_value(i32 %cond86, !1751, !DIExpression(), !3492)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %stride) #6, !dbg !3537
  %mv87 = getelementptr inbounds i8, ptr %m0, i64 140, !dbg !3538
  %12 = load i16, ptr %mv87, align 4, !dbg !3539
  %conv89 = sext i16 %12 to i32, !dbg !3539
    #dbg_value(i32 %conv89, !1754, !DIExpression(), !3492)
  %arrayidx91 = getelementptr inbounds i8, ptr %m0, i64 142, !dbg !3540
  %13 = load i16, ptr %arrayidx91, align 2, !dbg !3540
  %conv92 = sext i16 %13 to i32, !dbg !3540
    #dbg_value(i32 %conv92, !1755, !DIExpression(), !3492)
  %mv93 = getelementptr inbounds i8, ptr %m1, i64 140, !dbg !3541
  %14 = load i16, ptr %mv93, align 4, !dbg !3542
  %conv95 = sext i16 %14 to i32, !dbg !3542
    #dbg_value(i32 %conv95, !1756, !DIExpression(), !3492)
  %arrayidx97 = getelementptr inbounds i8, ptr %m1, i64 142, !dbg !3543
  %15 = load i16, ptr %arrayidx97, align 2, !dbg !3543
  %conv98 = sext i16 %15 to i32, !dbg !3543
    #dbg_value(i32 %conv98, !1757, !DIExpression(), !3492)
    #dbg_value(i32 268435456, !1758, !DIExpression(), !3492)
    #dbg_value(i32 1, !1759, !DIExpression(), !3492)
    #dbg_value(i32 1, !1760, !DIExpression(), !3492)
    #dbg_value(i64 1152921504606846976, !1761, !DIExpression(), !3492)
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %visited) #6, !dbg !3544
  %mv_min_spel = getelementptr inbounds i8, ptr %h, i64 16456, !dbg !3545
  %arrayidx100 = getelementptr inbounds i8, ptr %h, i64 16460, !dbg !3547
  %16 = load i32, ptr %arrayidx100, align 4, !dbg !3547
  %add101 = add nsw i32 %16, 8, !dbg !3548
  %cmp = icmp sgt i32 %add101, %conv92, !dbg !3549
  %cmp107 = icmp sgt i32 %add101, %conv98
  %or.cond932 = select i1 %cmp, i1 true, i1 %cmp107, !dbg !3550
  br i1 %or.cond932, label %cleanup659, label %lor.lhs.false109, !dbg !3550

lor.lhs.false109:                                 ; preds = %cond.end85
  %mv_max_spel = getelementptr inbounds i8, ptr %h, i64 16464, !dbg !3551
  %arrayidx111 = getelementptr inbounds i8, ptr %h, i64 16468, !dbg !3552
  %17 = load i32, ptr %arrayidx111, align 4, !dbg !3552
  %sub112 = add nsw i32 %17, -8, !dbg !3553
  %cmp113 = icmp slt i32 %sub112, %conv92, !dbg !3554
  %cmp120 = icmp slt i32 %sub112, %conv98
  %or.cond933 = select i1 %cmp113, i1 true, i1 %cmp120, !dbg !3555
  br i1 %or.cond933, label %cleanup659, label %lor.lhs.false122, !dbg !3555

lor.lhs.false122:                                 ; preds = %lor.lhs.false109
  %18 = load i32, ptr %mv_min_spel, align 8, !dbg !3556
  %add126 = add nsw i32 %18, 8, !dbg !3557
  %cmp127 = icmp sgt i32 %add126, %conv89, !dbg !3558
  %cmp134 = icmp sgt i32 %add126, %conv95
  %or.cond934 = select i1 %cmp127, i1 true, i1 %cmp134, !dbg !3559
  br i1 %or.cond934, label %cleanup659, label %lor.lhs.false136, !dbg !3559

lor.lhs.false136:                                 ; preds = %lor.lhs.false122
  %19 = load i32, ptr %mv_max_spel, align 16, !dbg !3560
  %sub140 = add nsw i32 %19, -8, !dbg !3561
  %cmp141 = icmp slt i32 %sub140, %conv89, !dbg !3562
  %cmp148 = icmp slt i32 %sub140, %conv95
  %or.cond935 = select i1 %cmp141, i1 true, i1 %cmp148, !dbg !3563
  br i1 %or.cond935, label %cleanup659, label %if.end, !dbg !3563

if.end:                                           ; preds = %lor.lhs.false136
  %tobool150.not = icmp eq i32 %rd, 0, !dbg !3564
  br i1 %tobool150.not, label %if.end164, label %land.lhs.true, !dbg !3566

land.lhs.true:                                    ; preds = %if.end
  %cmp152 = icmp ne i32 %1, 0, !dbg !3567
  %cmp155 = icmp ne i32 %i8, 0
  %or.cond = and i1 %cmp155, %cmp152, !dbg !3568
  br i1 %or.cond, label %if.then157, label %if.end164, !dbg !3568

if.then157:                                       ; preds = %land.lhs.true
  %shr158 = ashr i32 %2, 2, !dbg !3569
  %mvp = getelementptr inbounds i8, ptr %m0, i64 128, !dbg !3571
  tail call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %mul, i32 noundef %shr158, ptr noundef nonnull %mvp) #6, !dbg !3572
  %mvp162 = getelementptr inbounds i8, ptr %m1, i64 128, !dbg !3573
  tail call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 1, i32 noundef %mul, i32 noundef %shr158, ptr noundef nonnull %mvp162) #6, !dbg !3574
  br label %if.end164, !dbg !3575

if.end164:                                        ; preds = %if.then157, %land.lhs.true, %if.end
  %p_cost_mv = getelementptr inbounds i8, ptr %m0, i64 8, !dbg !3576
  %20 = load ptr, ptr %p_cost_mv, align 8, !dbg !3576
  %mvp165 = getelementptr inbounds i8, ptr %m0, i64 128, !dbg !3577
  %21 = load i16, ptr %mvp165, align 16, !dbg !3578
  %idx.ext = sext i16 %21 to i64, !dbg !3579
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !3579
  %add.ptr = getelementptr inbounds i16, ptr %20, i64 %idx.neg, !dbg !3579
    #dbg_value(ptr %add.ptr, !1766, !DIExpression(), !3492)
  %arrayidx170 = getelementptr inbounds i8, ptr %m0, i64 130, !dbg !3580
  %22 = load i16, ptr %arrayidx170, align 2, !dbg !3580
  %idx.ext172 = sext i16 %22 to i64, !dbg !3581
  %idx.neg173 = sub nsw i64 0, %idx.ext172, !dbg !3581
  %add.ptr174 = getelementptr inbounds i16, ptr %20, i64 %idx.neg173, !dbg !3581
    #dbg_value(ptr %add.ptr174, !1767, !DIExpression(), !3492)
  %p_cost_mv175 = getelementptr inbounds i8, ptr %m1, i64 8, !dbg !3582
  %23 = load ptr, ptr %p_cost_mv175, align 8, !dbg !3582
  %mvp176 = getelementptr inbounds i8, ptr %m1, i64 128, !dbg !3583
  %24 = load i16, ptr %mvp176, align 16, !dbg !3584
  %idx.ext179 = sext i16 %24 to i64, !dbg !3585
  %idx.neg180 = sub nsw i64 0, %idx.ext179, !dbg !3585
  %add.ptr181 = getelementptr inbounds i16, ptr %23, i64 %idx.neg180, !dbg !3585
    #dbg_value(ptr %add.ptr181, !1768, !DIExpression(), !3492)
  %arrayidx184 = getelementptr inbounds i8, ptr %m1, i64 130, !dbg !3586
  %25 = load i16, ptr %arrayidx184, align 2, !dbg !3586
  %idx.ext186 = sext i16 %25 to i64, !dbg !3587
  %idx.neg187 = sub nsw i64 0, %idx.ext186, !dbg !3587
  %add.ptr188 = getelementptr inbounds i16, ptr %23, i64 %idx.neg187, !dbg !3587
    #dbg_value(ptr %add.ptr188, !1769, !DIExpression(), !3492)
  %memzero_aligned = getelementptr inbounds i8, ptr %h, i64 32824, !dbg !3588
  %26 = load ptr, ptr %memzero_aligned, align 8, !dbg !3588
  call void %26(ptr noundef nonnull %visited, i32 noundef 512) #6, !dbg !3589
    #dbg_value(i32 0, !1770, !DIExpression(), !3590)
    #dbg_value(i32 %conv89, !1754, !DIExpression(), !3492)
    #dbg_value(i32 %conv92, !1755, !DIExpression(), !3492)
    #dbg_value(i32 %conv95, !1756, !DIExpression(), !3492)
    #dbg_value(i32 %conv98, !1757, !DIExpression(), !3492)
    #dbg_value(i32 268435456, !1758, !DIExpression(), !3492)
    #dbg_value(i32 1, !1759, !DIExpression(), !3492)
    #dbg_value(i32 1, !1760, !DIExpression(), !3492)
    #dbg_value(i64 1152921504606846976, !1761, !DIExpression(), !3492)
  %get_ref = getelementptr inbounds i8, ptr %h, i64 32624
  %p_fref = getelementptr inbounds i8, ptr %m0, i64 32
  %i_stride = getelementptr inbounds i8, ptr %m0, i64 120
  %mc_chroma = getelementptr inbounds i8, ptr %h, i64 32632
  %arrayidx244 = getelementptr inbounds i8, ptr %m0, i64 64
  %arrayidx246 = getelementptr inbounds i8, ptr %m0, i64 124
  %shr248 = ashr i32 %2, 1
  %shr249 = ashr i32 %3, 1
  %arrayidx257 = getelementptr inbounds i8, ptr %m0, i64 72
  %arrayidx298 = getelementptr inbounds i8, ptr %stride, i64 36
  %arrayidx303 = getelementptr inbounds i8, ptr %pixy_buf, i64 2304
  %p_fref310 = getelementptr inbounds i8, ptr %m1, i64 32
  %i_stride312 = getelementptr inbounds i8, ptr %m1, i64 120
  %arrayidx315 = getelementptr inbounds i8, ptr %src, i64 72
  %arrayidx322 = getelementptr inbounds i8, ptr %pixu_buf, i64 576
  %arrayidx327 = getelementptr inbounds i8, ptr %m1, i64 64
  %arrayidx329 = getelementptr inbounds i8, ptr %m1, i64 124
  %arrayidx335 = getelementptr inbounds i8, ptr %pixv_buf, i64 576
  %arrayidx340 = getelementptr inbounds i8, ptr %m1, i64 72
  %avg = getelementptr inbounds i8, ptr %h, i64 32640
  %arrayidx433 = getelementptr inbounds [10 x ptr], ptr %avg, i64 0, i64 %idxprom15
  %mbcmp = getelementptr inbounds i8, ptr %h, i64 31816
  %arrayidx447 = getelementptr inbounds [7 x ptr], ptr %mbcmp, i64 0, i64 %idxprom15
  %p_fenc = getelementptr inbounds i8, ptr %m0, i64 88
  %add482 = add nsw i32 %1, 3
  %idxprom483 = sext i32 %add482 to i64
  %arrayidx484 = getelementptr inbounds [10 x ptr], ptr %avg, i64 0, i64 %idxprom483
  br label %for.body, !dbg !3591

for.body:                                         ; preds = %if.end164, %for.inc554
  %bm0x.01087 = phi i32 [ %conv89, %if.end164 ], [ %add530, %for.inc554 ]
  %bm0y.01086 = phi i32 [ %conv92, %if.end164 ], [ %add535, %for.inc554 ]
  %bm1x.01085 = phi i32 [ %conv95, %if.end164 ], [ %add540, %for.inc554 ]
  %bm1y.01084 = phi i32 [ %conv98, %if.end164 ], [ %add545, %for.inc554 ]
  %bcost.01083 = phi i32 [ 268435456, %if.end164 ], [ %bcost.3, %for.inc554 ]
  %mc_list0.01082 = phi i32 [ 1, %if.end164 ], [ %conv549, %for.inc554 ]
  %mc_list1.01081 = phi i32 [ 1, %if.end164 ], [ %conv553, %for.inc554 ]
  %bcostrd.01080 = phi i64 [ 1152921504606846976, %if.end164 ], [ %bcostrd.4, %for.inc554 ]
  %pass.01079 = phi i32 [ 0, %if.end164 ], [ %inc555, %for.inc554 ]
    #dbg_value(i32 %bm0x.01087, !1754, !DIExpression(), !3492)
    #dbg_value(i32 %bm0y.01086, !1755, !DIExpression(), !3492)
    #dbg_value(i32 %bm1x.01085, !1756, !DIExpression(), !3492)
    #dbg_value(i32 %bm1y.01084, !1757, !DIExpression(), !3492)
    #dbg_value(i32 %bcost.01083, !1758, !DIExpression(), !3492)
    #dbg_value(i32 %mc_list0.01082, !1759, !DIExpression(), !3492)
    #dbg_value(i32 %mc_list1.01081, !1760, !DIExpression(), !3492)
    #dbg_value(i64 %bcostrd.01080, !1761, !DIExpression(), !3492)
    #dbg_value(i32 %pass.01079, !1770, !DIExpression(), !3590)
    #dbg_value(i32 0, !1772, !DIExpression(), !3592)
  %tobool192.not = icmp ne i32 %mc_list0.01082, 0, !dbg !3593
  %27 = load i32, ptr @x264_iter_kludge, align 4
    #dbg_value(i32 %27, !1775, !DIExpression(), !3594)
  %cmp1951071 = icmp slt i32 %27, 9
  %or.cond1088 = select i1 %tobool192.not, i1 %cmp1951071, i1 false, !dbg !3595
  br i1 %or.cond1088, label %for.body198.preheader, label %if.end264, !dbg !3595

for.body198.preheader:                            ; preds = %for.body
  %28 = sext i32 %27 to i64, !dbg !3596
  br label %for.body198, !dbg !3596

for.body198:                                      ; preds = %for.body198.preheader, %if.end263
  %indvars.iv = phi i64 [ %28, %for.body198.preheader ], [ %indvars.iv.next, %if.end263 ]
    #dbg_value(i64 %indvars.iv, !1775, !DIExpression(), !3594)
    #dbg_value(ptr %m0, !1778, !DIExpression(), !3597)
  %arrayidx200 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %indvars.iv, !dbg !3598
  %29 = load i8, ptr %arrayidx200, align 2, !dbg !3598
  %conv202 = sext i8 %29 to i32, !dbg !3598
  %mul203 = mul nsw i32 %conv202, 3, !dbg !3598
  %add204 = add nsw i32 %mul203, 4, !dbg !3598
  %arrayidx207 = getelementptr inbounds i8, ptr %arrayidx200, i64 1, !dbg !3598
  %30 = load i8, ptr %arrayidx207, align 1, !dbg !3598
  %conv208 = sext i8 %30 to i32, !dbg !3598
  %add209 = add nsw i32 %add204, %conv208, !dbg !3598
    #dbg_value(i32 %add209, !1781, !DIExpression(), !3597)
  %add214 = add nsw i32 %bm0x.01087, %conv202, !dbg !3598
    #dbg_value(i32 %add214, !1782, !DIExpression(), !3597)
  %add219 = add nsw i32 %bm0y.01086, %conv208, !dbg !3598
    #dbg_value(i32 %add219, !1783, !DIExpression(), !3597)
  %idxprom221 = sext i32 %add209 to i64, !dbg !3598
  %arrayidx222 = getelementptr inbounds [9 x i32], ptr %stride, i64 0, i64 %idxprom221, !dbg !3598
  store i32 %2, ptr %arrayidx222, align 4, !dbg !3598
  %31 = load ptr, ptr %get_ref, align 8, !dbg !3598
  %arrayidx226 = getelementptr inbounds [9 x [256 x i8]], ptr %pixy_buf, i64 0, i64 %idxprom221, !dbg !3598
  %32 = load i32, ptr %i_stride, align 8, !dbg !3598
  %call = call ptr %31(ptr noundef nonnull %arrayidx226, ptr noundef nonnull %arrayidx222, ptr noundef nonnull %p_fref, i32 noundef %32, i32 noundef %add214, i32 noundef %add219, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @weight_none) #6, !dbg !3598
  %arrayidx235 = getelementptr inbounds [9 x ptr], ptr %src, i64 0, i64 %idxprom221, !dbg !3598
  store ptr %call, ptr %arrayidx235, align 8, !dbg !3598
  br i1 %tobool150.not, label %if.end263, label %if.then237, !dbg !3598

if.then237:                                       ; preds = %for.body198
  %33 = load ptr, ptr %mc_chroma, align 8, !dbg !3599
  %arrayidx241 = getelementptr inbounds [9 x [64 x i8]], ptr %pixu_buf, i64 0, i64 %idxprom221, !dbg !3599
  %34 = load ptr, ptr %arrayidx244, align 16, !dbg !3599
  %35 = load i32, ptr %arrayidx246, align 4, !dbg !3599
  %add247 = add nsw i32 %add219, %cond, !dbg !3599
  call void %33(ptr noundef nonnull %arrayidx241, i32 noundef 8, ptr noundef %34, i32 noundef %35, i32 noundef %add214, i32 noundef %add247, i32 noundef %shr248, i32 noundef %shr249) #6, !dbg !3599
  %36 = load ptr, ptr %mc_chroma, align 8, !dbg !3599
  %arrayidx254 = getelementptr inbounds [9 x [64 x i8]], ptr %pixv_buf, i64 0, i64 %idxprom221, !dbg !3599
  %37 = load ptr, ptr %arrayidx257, align 8, !dbg !3599
  %38 = load i32, ptr %arrayidx246, align 4, !dbg !3599
  call void %36(ptr noundef nonnull %arrayidx254, i32 noundef 8, ptr noundef %37, i32 noundef %38, i32 noundef %add214, i32 noundef %add247, i32 noundef %shr248, i32 noundef %shr249) #6, !dbg !3599
  br label %if.end263, !dbg !3599

if.end263:                                        ; preds = %if.then237, %for.body198
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !3602
    #dbg_value(i64 %indvars.iv.next, !1775, !DIExpression(), !3594)
  %39 = and i64 %indvars.iv.next, 4294967295, !dbg !3603
  %exitcond.not = icmp eq i64 %39, 9, !dbg !3603
  br i1 %exitcond.not, label %if.end264.loopexit, label %for.body198, !dbg !3596, !llvm.loop !3604

if.end264.loopexit:                               ; preds = %if.end263
  %.pre = load i32, ptr @x264_iter_kludge, align 4
  br label %if.end264, !dbg !3606

if.end264:                                        ; preds = %if.end264.loopexit, %for.body
  %40 = phi i32 [ %.pre, %if.end264.loopexit ], [ %27, %for.body ]
  %tobool265.not = icmp ne i32 %mc_list1.01081, 0, !dbg !3606
    #dbg_value(i32 %40, !1784, !DIExpression(), !3607)
  %cmp2691073 = icmp slt i32 %40, 9
  %or.cond1089 = select i1 %tobool265.not, i1 %cmp2691073, i1 false, !dbg !3608
  br i1 %or.cond1089, label %for.body272.preheader, label %if.end350, !dbg !3608

for.body272.preheader:                            ; preds = %if.end264
  %41 = sext i32 %40 to i64, !dbg !3609
  br label %for.body272, !dbg !3609

for.body272:                                      ; preds = %for.body272.preheader, %if.end346
  %indvars.iv1091 = phi i64 [ %41, %for.body272.preheader ], [ %indvars.iv.next1092, %if.end346 ]
    #dbg_value(i64 %indvars.iv1091, !1784, !DIExpression(), !3607)
    #dbg_value(ptr %m1, !1787, !DIExpression(), !3610)
  %arrayidx276 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %indvars.iv1091, !dbg !3611
  %42 = load i8, ptr %arrayidx276, align 2, !dbg !3611
  %conv278 = sext i8 %42 to i32, !dbg !3611
  %mul279 = mul nsw i32 %conv278, 3, !dbg !3611
  %add280 = add nsw i32 %mul279, 4, !dbg !3611
  %arrayidx283 = getelementptr inbounds i8, ptr %arrayidx276, i64 1, !dbg !3611
  %43 = load i8, ptr %arrayidx283, align 1, !dbg !3611
  %conv284 = sext i8 %43 to i32, !dbg !3611
  %add285 = add nsw i32 %add280, %conv284, !dbg !3611
    #dbg_value(i32 %add285, !1790, !DIExpression(), !3610)
  %add291 = add nsw i32 %bm1x.01085, %conv278, !dbg !3611
    #dbg_value(i32 %add291, !1791, !DIExpression(), !3610)
  %add297 = add nsw i32 %bm1y.01084, %conv284, !dbg !3611
    #dbg_value(i32 %add297, !1792, !DIExpression(), !3610)
  %idxprom299 = sext i32 %add285 to i64, !dbg !3611
  %arrayidx300 = getelementptr inbounds [9 x i32], ptr %arrayidx298, i64 0, i64 %idxprom299, !dbg !3611
  store i32 %2, ptr %arrayidx300, align 4, !dbg !3611
  %44 = load ptr, ptr %get_ref, align 8, !dbg !3611
  %arrayidx305 = getelementptr inbounds [9 x [256 x i8]], ptr %arrayidx303, i64 0, i64 %idxprom299, !dbg !3611
  %45 = load i32, ptr %i_stride312, align 8, !dbg !3611
  %call314 = call ptr %44(ptr noundef nonnull %arrayidx305, ptr noundef nonnull %arrayidx300, ptr noundef nonnull %p_fref310, i32 noundef %45, i32 noundef %add291, i32 noundef %add297, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @weight_none) #6, !dbg !3611
  %arrayidx317 = getelementptr inbounds [9 x ptr], ptr %arrayidx315, i64 0, i64 %idxprom299, !dbg !3611
  store ptr %call314, ptr %arrayidx317, align 8, !dbg !3611
  br i1 %tobool150.not, label %if.end346, label %if.then319, !dbg !3611

if.then319:                                       ; preds = %for.body272
  %46 = load ptr, ptr %mc_chroma, align 8, !dbg !3612
  %arrayidx324 = getelementptr inbounds [9 x [64 x i8]], ptr %arrayidx322, i64 0, i64 %idxprom299, !dbg !3612
  %47 = load ptr, ptr %arrayidx327, align 16, !dbg !3612
  %48 = load i32, ptr %arrayidx329, align 4, !dbg !3612
  %add330 = add nsw i32 %add297, %cond86, !dbg !3612
  call void %46(ptr noundef nonnull %arrayidx324, i32 noundef 8, ptr noundef %47, i32 noundef %48, i32 noundef %add291, i32 noundef %add330, i32 noundef %shr248, i32 noundef %shr249) #6, !dbg !3612
  %49 = load ptr, ptr %mc_chroma, align 8, !dbg !3612
  %arrayidx337 = getelementptr inbounds [9 x [64 x i8]], ptr %arrayidx335, i64 0, i64 %idxprom299, !dbg !3612
  %50 = load ptr, ptr %arrayidx340, align 8, !dbg !3612
  %51 = load i32, ptr %arrayidx329, align 4, !dbg !3612
  call void %49(ptr noundef nonnull %arrayidx337, i32 noundef 8, ptr noundef %50, i32 noundef %51, i32 noundef %add291, i32 noundef %add330, i32 noundef %shr248, i32 noundef %shr249) #6, !dbg !3612
  br label %if.end346, !dbg !3612

if.end346:                                        ; preds = %if.then319, %for.body272
  %indvars.iv.next1092 = add nsw i64 %indvars.iv1091, 1, !dbg !3615
    #dbg_value(i64 %indvars.iv.next1092, !1784, !DIExpression(), !3607)
  %52 = and i64 %indvars.iv.next1092, 4294967295, !dbg !3616
  %exitcond1095.not = icmp eq i64 %52, 9, !dbg !3616
  br i1 %exitcond1095.not, label %if.end350, label %for.body272, !dbg !3609, !llvm.loop !3617

if.end350:                                        ; preds = %if.end346, %if.end264
  %tobool352 = icmp ne i32 %pass.01079, 0, !dbg !3619
    #dbg_value(i1 %tobool352, !1793, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3620)
    #dbg_value(i32 %bcost.01083, !1758, !DIExpression(), !3492)
    #dbg_value(i64 %bcostrd.01080, !1761, !DIExpression(), !3492)
    #dbg_value(i32 0, !1772, !DIExpression(), !3592)
  %53 = zext i1 %tobool352 to i64, !dbg !3621
  br label %for.body358, !dbg !3621

for.cond.cleanup357:                              ; preds = %if.end519
  %tobool523.not.not = icmp eq i32 %bestj.3, 0, !dbg !3622
  br i1 %tobool523.not.not, label %cleanup556, label %for.inc554, !dbg !3624

for.body358:                                      ; preds = %if.end350, %if.end519
  %indvars.iv1096 = phi i64 [ %53, %if.end350 ], [ %indvars.iv.next1097, %if.end519 ]
  %bcost.11078 = phi i32 [ %bcost.01083, %if.end350 ], [ %bcost.3, %if.end519 ]
  %bcostrd.11077 = phi i64 [ %bcostrd.01080, %if.end350 ], [ %bcostrd.4, %if.end519 ]
  %bestj.01075 = phi i32 [ 0, %if.end350 ], [ %bestj.3, %if.end519 ]
    #dbg_value(i32 %bcost.11078, !1758, !DIExpression(), !3492)
    #dbg_value(i64 %bcostrd.11077, !1761, !DIExpression(), !3492)
    #dbg_value(i64 %indvars.iv1096, !1793, !DIExpression(), !3620)
    #dbg_value(i32 %bestj.01075, !1772, !DIExpression(), !3592)
  %arrayidx360 = getelementptr inbounds [33 x [4 x i8]], ptr @x264_me_refine_bidir.dia4d, i64 0, i64 %indvars.iv1096, !dbg !3625
  %54 = load i8, ptr %arrayidx360, align 4, !dbg !3625
  %conv362 = sext i8 %54 to i32, !dbg !3625
  %add363 = add nsw i32 %bm0x.01087, %conv362, !dbg !3626
    #dbg_value(i32 %add363, !1795, !DIExpression(), !3627)
  %arrayidx366 = getelementptr inbounds i8, ptr %arrayidx360, i64 1, !dbg !3628
  %55 = load i8, ptr %arrayidx366, align 1, !dbg !3628
  %conv367 = sext i8 %55 to i32, !dbg !3628
  %add368 = add nsw i32 %bm0y.01086, %conv367, !dbg !3629
    #dbg_value(i32 %add368, !1798, !DIExpression(), !3627)
  %arrayidx371 = getelementptr inbounds i8, ptr %arrayidx360, i64 2, !dbg !3630
  %56 = load i8, ptr %arrayidx371, align 2, !dbg !3630
  %conv372 = sext i8 %56 to i32, !dbg !3630
  %add373 = add nsw i32 %bm1x.01085, %conv372, !dbg !3631
    #dbg_value(i32 %add373, !1799, !DIExpression(), !3627)
  %arrayidx376 = getelementptr inbounds i8, ptr %arrayidx360, i64 3, !dbg !3632
  %57 = load i8, ptr %arrayidx376, align 1, !dbg !3632
  %conv377 = sext i8 %57 to i32, !dbg !3632
  %add378 = add nsw i32 %bm1y.01084, %conv377, !dbg !3633
    #dbg_value(i32 %add378, !1800, !DIExpression(), !3627)
  br i1 %tobool352, label %lor.lhs.false380, label %for.body358.if.then395_crit_edge, !dbg !3634

for.body358.if.then395_crit_edge:                 ; preds = %for.body358
  %.pre1101 = and i32 %add378, 7, !dbg !3635
  %.pre1102 = shl nuw nsw i32 1, %.pre1101, !dbg !3636
  %.pre1103 = and i32 %add363, 7, !dbg !3637
  %.pre1104 = zext nneg i32 %.pre1103 to i64, !dbg !3638
  %.pre1105 = and i32 %add368, 7, !dbg !3639
  %.pre1106 = zext nneg i32 %.pre1105 to i64, !dbg !3638
  %.pre1107 = and i32 %add373, 7, !dbg !3640
  %.pre1108 = zext nneg i32 %.pre1107 to i64, !dbg !3638
  br label %if.then395, !dbg !3634

lor.lhs.false380:                                 ; preds = %for.body358
  %and381 = and i32 %add363, 7, !dbg !3641
  %idxprom382 = zext nneg i32 %and381 to i64, !dbg !3642
  %and384 = and i32 %add368, 7, !dbg !3643
  %idxprom385 = zext nneg i32 %and384 to i64, !dbg !3642
  %and387 = and i32 %add373, 7, !dbg !3644
  %idxprom388 = zext nneg i32 %and387 to i64, !dbg !3642
  %arrayidx389 = getelementptr inbounds [8 x [8 x [8 x i8]]], ptr %visited, i64 0, i64 %idxprom382, i64 %idxprom385, i64 %idxprom388, !dbg !3642
  %58 = load i8, ptr %arrayidx389, align 1, !dbg !3642
  %conv390 = zext i8 %58 to i32, !dbg !3642
  %and391 = and i32 %add378, 7, !dbg !3645
  %shl392 = shl nuw nsw i32 1, %and391, !dbg !3646
  %and393 = and i32 %shl392, %conv390, !dbg !3647
  %tobool394.not = icmp eq i32 %and393, 0, !dbg !3647
  br i1 %tobool394.not, label %if.then395, label %if.end519, !dbg !3648

if.then395:                                       ; preds = %for.body358.if.then395_crit_edge, %lor.lhs.false380
  %idxprom427.pre-phi = phi i64 [ %.pre1108, %for.body358.if.then395_crit_edge ], [ %idxprom388, %lor.lhs.false380 ], !dbg !3638
  %idxprom424.pre-phi = phi i64 [ %.pre1106, %for.body358.if.then395_crit_edge ], [ %idxprom385, %lor.lhs.false380 ], !dbg !3638
  %idxprom421.pre-phi = phi i64 [ %.pre1104, %for.body358.if.then395_crit_edge ], [ %idxprom382, %lor.lhs.false380 ], !dbg !3638
  %shl419.pre-phi = phi i32 [ %.pre1102, %for.body358.if.then395_crit_edge ], [ %shl392, %lor.lhs.false380 ], !dbg !3636
  %conv399 = sext i8 %54 to i64, !dbg !3649
  %mul400 = mul nsw i64 %conv399, 3, !dbg !3650
  %add401 = add nsw i64 %mul400, 4, !dbg !3651
  %conv405 = sext i8 %55 to i64, !dbg !3652
  %add406 = add nsw i64 %add401, %conv405, !dbg !3653
    #dbg_value(!DIArgList(i8 %54, i8 %55), !1801, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 3, DW_OP_mul, DW_OP_plus_uconst, 4, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !3654)
  %conv410 = sext i8 %56 to i64, !dbg !3655
  %mul411 = mul nsw i64 %conv410, 3, !dbg !3656
  %add412 = add nsw i64 %mul411, 4, !dbg !3657
  %conv416 = sext i8 %57 to i64, !dbg !3658
  %add417 = add nsw i64 %add412, %conv416, !dbg !3659
    #dbg_value(!DIArgList(i8 %56, i8 %57), !1804, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 3, DW_OP_mul, DW_OP_plus_uconst, 4, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !3654)
  %arrayidx428 = getelementptr inbounds [8 x [8 x [8 x i8]]], ptr %visited, i64 0, i64 %idxprom421.pre-phi, i64 %idxprom424.pre-phi, i64 %idxprom427.pre-phi, !dbg !3638
  %59 = load i8, ptr %arrayidx428, align 1, !dbg !3660
  %60 = trunc nuw i32 %shl419.pre-phi to i8, !dbg !3660
  %conv430 = or i8 %59, %60, !dbg !3660
  store i8 %conv430, ptr %arrayidx428, align 1, !dbg !3660
  %61 = load ptr, ptr %arrayidx433, align 8, !dbg !3661
  %arrayidx436 = getelementptr inbounds [9 x ptr], ptr %src, i64 0, i64 %add406, !dbg !3662
  %62 = load ptr, ptr %arrayidx436, align 8, !dbg !3662
  %arrayidx439 = getelementptr inbounds [9 x i32], ptr %stride, i64 0, i64 %add406, !dbg !3663
  %63 = load i32, ptr %arrayidx439, align 4, !dbg !3663
  %arrayidx442 = getelementptr inbounds [9 x ptr], ptr %arrayidx315, i64 0, i64 %add417, !dbg !3664
  %64 = load ptr, ptr %arrayidx442, align 8, !dbg !3664
  %arrayidx445 = getelementptr inbounds [9 x i32], ptr %arrayidx298, i64 0, i64 %add417, !dbg !3665
  %65 = load i32, ptr %arrayidx445, align 4, !dbg !3665
  call void %61(ptr noundef %arrayidx26, i32 noundef 32, ptr noundef %62, i32 noundef %63, ptr noundef %64, i32 noundef %65, i32 noundef %i_weight) #6, !dbg !3661
  %66 = load ptr, ptr %arrayidx447, align 8, !dbg !3666
  %67 = load ptr, ptr %p_fenc, align 8, !dbg !3667
  %call449 = call i32 %66(ptr noundef %67, i32 noundef 16, ptr noundef %arrayidx26, i32 noundef 32) #6, !dbg !3666
  %idxprom450 = sext i32 %add363 to i64, !dbg !3668
  %arrayidx451 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom450, !dbg !3668
  %68 = load i16, ptr %arrayidx451, align 2, !dbg !3668
  %conv452 = zext i16 %68 to i32, !dbg !3668
  %add453 = add nsw i32 %call449, %conv452, !dbg !3669
  %idxprom454 = sext i32 %add368 to i64, !dbg !3670
  %arrayidx455 = getelementptr inbounds i16, ptr %add.ptr174, i64 %idxprom454, !dbg !3670
  %69 = load i16, ptr %arrayidx455, align 2, !dbg !3670
  %conv456 = zext i16 %69 to i32, !dbg !3670
  %add457 = add nsw i32 %add453, %conv456, !dbg !3671
  %idxprom458 = sext i32 %add373 to i64, !dbg !3672
  %arrayidx459 = getelementptr inbounds i16, ptr %add.ptr181, i64 %idxprom458, !dbg !3672
  %70 = load i16, ptr %arrayidx459, align 2, !dbg !3672
  %conv460 = zext i16 %70 to i32, !dbg !3672
  %add461 = add nsw i32 %add457, %conv460, !dbg !3673
  %idxprom462 = sext i32 %add378 to i64, !dbg !3674
  %arrayidx463 = getelementptr inbounds i16, ptr %add.ptr188, i64 %idxprom462, !dbg !3674
  %71 = load i16, ptr %arrayidx463, align 2, !dbg !3674
  %conv464 = zext i16 %71 to i32, !dbg !3674
  %add465 = add nsw i32 %add461, %conv464, !dbg !3675
    #dbg_value(i32 %add465, !1805, !DIExpression(), !3654)
  br i1 %tobool150.not, label %if.else, label %if.then467, !dbg !3676

if.then467:                                       ; preds = %if.then395
  %mul468 = mul nsw i32 %bcost.11078, 17, !dbg !3677
  %div = sdiv i32 %mul468, 16, !dbg !3678
  %cmp469 = icmp slt i32 %add465, %div, !dbg !3679
  br i1 %cmp469, label %if.then471, label %if.end519, !dbg !3680

if.then471:                                       ; preds = %if.then467
  %cond477 = call i32 @llvm.smin.i32(i32 %add465, i32 %bcost.11078), !dbg !3681
    #dbg_value(i32 %cond477, !1758, !DIExpression(), !3492)
    #dbg_value(i32 %add363, !1907, !DIExpression(), !3682)
    #dbg_value(i32 %add368, !1912, !DIExpression(), !3682)
  %and.i = and i32 %add363, 65535, !dbg !3684
  %shl.i = shl i32 %add368, 16, !dbg !3685
  %add.i = or disjoint i32 %shl.i, %and.i, !dbg !3686
  store i32 %add.i, ptr %arrayidx3, align 4, !dbg !3687
    #dbg_value(i32 %add373, !1907, !DIExpression(), !3688)
    #dbg_value(i32 %add378, !1912, !DIExpression(), !3688)
  %and.i940 = and i32 %add373, 65535, !dbg !3690
  %shl.i941 = shl i32 %add378, 16, !dbg !3691
  %add.i942 = or disjoint i32 %shl.i941, %and.i940, !dbg !3692
  store i32 %add.i942, ptr %arrayidx12, align 4, !dbg !3693
  %72 = load ptr, ptr %arrayidx484, align 8, !dbg !3694
  %arrayidx487 = getelementptr inbounds [9 x [64 x i8]], ptr %pixu_buf, i64 0, i64 %add406, !dbg !3695
  %arrayidx491 = getelementptr inbounds [9 x [64 x i8]], ptr %arrayidx322, i64 0, i64 %add417, !dbg !3696
  call void %72(ptr noundef %arrayidx38, i32 noundef 32, ptr noundef nonnull %arrayidx487, i32 noundef 8, ptr noundef nonnull %arrayidx491, i32 noundef 8, i32 noundef %i_weight) #6, !dbg !3694
  %73 = load ptr, ptr %arrayidx484, align 8, !dbg !3697
  %arrayidx500 = getelementptr inbounds [9 x [64 x i8]], ptr %pixv_buf, i64 0, i64 %add406, !dbg !3698
  %arrayidx504 = getelementptr inbounds [9 x [64 x i8]], ptr %arrayidx335, i64 0, i64 %add417, !dbg !3699
  call void %73(ptr noundef %arrayidx50, i32 noundef 32, ptr noundef nonnull %arrayidx500, i32 noundef 8, ptr noundef nonnull %arrayidx504, i32 noundef 8, i32 noundef %i_weight) #6, !dbg !3697
  %74 = load i32, ptr %m0, align 16, !dbg !3700
  %call508 = call i64 @x264_rd_cost_part(ptr noundef nonnull %h, i32 noundef %i_lambda2, i32 noundef %mul, i32 noundef %74) #6, !dbg !3701
    #dbg_value(i64 %call508, !1806, !DIExpression(), !3702)
  %cmp509 = icmp ult i64 %call508, %bcostrd.11077, !dbg !3703
  %75 = trunc nuw nsw i64 %indvars.iv1096 to i32, !dbg !3705
  %spec.select = select i1 %cmp509, i32 %75, i32 %bestj.01075, !dbg !3705
  %spec.select936 = call i64 @llvm.umin.i64(i64 %call508, i64 %bcostrd.11077), !dbg !3705
    #dbg_value(i64 %spec.select936, !1761, !DIExpression(), !3492)
    #dbg_value(i32 %spec.select, !1772, !DIExpression(), !3592)
  br label %if.end519, !dbg !3706

if.else:                                          ; preds = %if.then395
  %cmp514 = icmp slt i32 %add465, %bcost.11078, !dbg !3707
  %76 = trunc nuw nsw i64 %indvars.iv1096 to i32, !dbg !3709
  %spec.select937 = select i1 %cmp514, i32 %76, i32 %bestj.01075, !dbg !3709
  %spec.select938 = call i32 @llvm.smin.i32(i32 %add465, i32 %bcost.11078), !dbg !3709
  br label %if.end519, !dbg !3709

if.end519:                                        ; preds = %if.else, %if.then471, %if.then467, %lor.lhs.false380
  %bestj.3 = phi i32 [ %bestj.01075, %lor.lhs.false380 ], [ %spec.select, %if.then471 ], [ %bestj.01075, %if.then467 ], [ %spec.select937, %if.else ], !dbg !3592
  %bcostrd.4 = phi i64 [ %bcostrd.11077, %lor.lhs.false380 ], [ %spec.select936, %if.then471 ], [ %bcostrd.11077, %if.then467 ], [ %bcostrd.11077, %if.else ], !dbg !3492
  %bcost.3 = phi i32 [ %bcost.11078, %lor.lhs.false380 ], [ %cond477, %if.then471 ], [ %bcost.11078, %if.then467 ], [ %spec.select938, %if.else ], !dbg !3492
    #dbg_value(i32 %bcost.3, !1758, !DIExpression(), !3492)
    #dbg_value(i64 %bcostrd.4, !1761, !DIExpression(), !3492)
    #dbg_value(i32 %bestj.3, !1772, !DIExpression(), !3592)
  %indvars.iv.next1097 = add nuw nsw i64 %indvars.iv1096, 1, !dbg !3710
    #dbg_value(i64 %indvars.iv.next1097, !1793, !DIExpression(), !3620)
  %exitcond1099.not = icmp eq i64 %indvars.iv.next1097, 33, !dbg !3711
  br i1 %exitcond1099.not, label %for.cond.cleanup357, label %for.body358, !dbg !3621, !llvm.loop !3712

for.inc554:                                       ; preds = %for.cond.cleanup357
  %idxprom526 = sext i32 %bestj.3 to i64, !dbg !3714
  %arrayidx527 = getelementptr inbounds [33 x [4 x i8]], ptr @x264_me_refine_bidir.dia4d, i64 0, i64 %idxprom526, !dbg !3714
  %77 = load i8, ptr %arrayidx527, align 4, !dbg !3714
  %conv529 = sext i8 %77 to i32, !dbg !3714
  %add530 = add nsw i32 %bm0x.01087, %conv529, !dbg !3715
    #dbg_value(i32 %add530, !1754, !DIExpression(), !3492)
  %arrayidx533 = getelementptr inbounds i8, ptr %arrayidx527, i64 1, !dbg !3716
  %78 = load i8, ptr %arrayidx533, align 1, !dbg !3716
  %conv534 = sext i8 %78 to i32, !dbg !3716
  %add535 = add nsw i32 %bm0y.01086, %conv534, !dbg !3717
    #dbg_value(i32 %add535, !1755, !DIExpression(), !3492)
  %arrayidx538 = getelementptr inbounds i8, ptr %arrayidx527, i64 2, !dbg !3718
  %79 = load i8, ptr %arrayidx538, align 2, !dbg !3718
  %conv539 = sext i8 %79 to i32, !dbg !3718
  %add540 = add nsw i32 %bm1x.01085, %conv539, !dbg !3719
    #dbg_value(i32 %add540, !1756, !DIExpression(), !3492)
  %arrayidx543 = getelementptr inbounds i8, ptr %arrayidx527, i64 3, !dbg !3720
  %80 = load i8, ptr %arrayidx543, align 1, !dbg !3720
  %conv544 = sext i8 %80 to i32, !dbg !3720
  %add545 = add nsw i32 %bm1y.01084, %conv544, !dbg !3721
    #dbg_value(i32 %add545, !1757, !DIExpression(), !3492)
  %81 = load i16, ptr %arrayidx527, align 4, !dbg !3722
  %conv549 = zext i16 %81 to i32, !dbg !3722
    #dbg_value(i32 %conv549, !1759, !DIExpression(), !3492)
  %82 = load i16, ptr %arrayidx538, align 2, !dbg !3723
  %conv553 = zext i16 %82 to i32, !dbg !3723
    #dbg_value(i32 %conv553, !1760, !DIExpression(), !3492)
  %inc555 = add nuw nsw i32 %pass.01079, 1, !dbg !3724
    #dbg_value(i32 %bcost.3, !1758, !DIExpression(), !3492)
    #dbg_value(i64 %bcostrd.4, !1761, !DIExpression(), !3492)
    #dbg_value(i32 %inc555, !1770, !DIExpression(), !3590)
  %exitcond1100.not = icmp eq i32 %inc555, 8, !dbg !3725
  br i1 %exitcond1100.not, label %cleanup556, label %for.body, !dbg !3591, !llvm.loop !3726

cleanup556:                                       ; preds = %for.cond.cleanup357, %for.inc554
  %bm1y.0.lcssa = phi i32 [ %bm1y.01084, %for.cond.cleanup357 ], [ %add545, %for.inc554 ], !dbg !3492
  %bm1x.0.lcssa = phi i32 [ %bm1x.01085, %for.cond.cleanup357 ], [ %add540, %for.inc554 ], !dbg !3492
  %bm0y.0.lcssa = phi i32 [ %bm0y.01086, %for.cond.cleanup357 ], [ %add535, %for.inc554 ], !dbg !3492
  %bm0x.0.lcssa = phi i32 [ %bm0x.01087, %for.cond.cleanup357 ], [ %add530, %for.inc554 ], !dbg !3492
    #dbg_value(i32 %bm0x.0.lcssa, !1754, !DIExpression(), !3492)
    #dbg_value(i32 %bm0y.0.lcssa, !1755, !DIExpression(), !3492)
    #dbg_value(i32 %bm1x.0.lcssa, !1756, !DIExpression(), !3492)
    #dbg_value(i32 %bm1y.0.lcssa, !1757, !DIExpression(), !3492)
  br i1 %tobool150.not, label %if.end646, label %if.then559, !dbg !3728

if.then559:                                       ; preds = %cleanup556
  %mul561 = shl nuw nsw i32 %and, 1, !dbg !3729
  %shr564 = ashr i32 %2, 2, !dbg !3732
  %shr565 = ashr i32 %3, 2, !dbg !3733
    #dbg_value(i32 %bm0x.0.lcssa, !1907, !DIExpression(), !3734)
    #dbg_value(i32 %bm0y.0.lcssa, !1912, !DIExpression(), !3734)
  %and.i943 = and i32 %bm0x.0.lcssa, 65535, !dbg !3736
  %shl.i944 = shl i32 %bm0y.0.lcssa, 16, !dbg !3737
  %add.i945 = or disjoint i32 %and.i943, %shl.i944, !dbg !3738
    #dbg_value(ptr %h, !3739, !DIExpression(), !3752)
    #dbg_value(i32 %mul561, !3745, !DIExpression(), !3752)
    #dbg_value(i32 %i8, !3746, !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value), !3752)
    #dbg_value(i32 %shr564, !3747, !DIExpression(), !3752)
    #dbg_value(i32 %shr565, !3748, !DIExpression(), !3752)
    #dbg_value(i32 0, !3749, !DIExpression(), !3752)
    #dbg_value(i32 %add.i945, !3750, !DIExpression(), !3752)
  %mul563 = shl i32 %i8, 3, !dbg !3754
  %add.i946 = or disjoint i32 %mul561, %mul563, !dbg !3755
  %add2.i = or i32 %add.i946, 12, !dbg !3755
  %idxprom3.i = sext i32 %add2.i to i64, !dbg !3756
  %arrayidx4.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv, i64 0, i64 0, i64 %idxprom3.i, !dbg !3756
    #dbg_value(ptr %arrayidx4.i, !3751, !DIExpression(), !3752)
  %mul5.i = and i32 %2, -4, !dbg !3757
    #dbg_value(ptr %arrayidx4.i, !3759, !DIExpression(), !3772)
    #dbg_value(i32 %mul5.i, !3764, !DIExpression(), !3772)
    #dbg_value(i32 %shr565, !3765, !DIExpression(), !3772)
    #dbg_value(i32 4, !3766, !DIExpression(), !3772)
    #dbg_value(i32 %add.i945, !3767, !DIExpression(), !3772)
    #dbg_value(ptr %arrayidx4.i, !3768, !DIExpression(), !3772)
    #dbg_value(i32 %add.i945, !3769, !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !3772)
    #dbg_value(i32 %add.i945, !3770, !DIExpression(), !3772)
  %conv15.i.i = zext i32 %add.i945 to i64, !dbg !3774
  %add.i.i = mul nuw i64 %conv15.i.i, 4294967297, !dbg !3775
    #dbg_value(i64 %add.i.i, !3771, !DIExpression(), !3772)
    #dbg_value(i32 32, !3766, !DIExpression(), !3772)
  %83 = add i32 %mul5.i, -2, !dbg !3776
  %84 = call i32 @llvm.fshl.i32(i32 2, i32 %83, i32 31), !dbg !3776
  switch i32 %84, label %x264_macroblock_cache_mv.exit [
    i32 7, label %do.body.i.i.preheader
    i32 1, label %if.then39.i.i
    i32 3, label %if.then63.i.i
  ], !dbg !3776

do.body.i.i.preheader:                            ; preds = %if.then559
  %85 = add nsw i32 %shr565, -2, !dbg !3777
  %86 = lshr i32 %85, 1, !dbg !3777
  %narrow = add nuw i32 %86, 1, !dbg !3777
  %87 = zext i32 %narrow to i64, !dbg !3777
  %min.iters.check = icmp ult i32 %85, 6, !dbg !3777
  br i1 %min.iters.check, label %do.body.i.i.preheader1180, label %vector.ph, !dbg !3777

do.body.i.i.preheader1180:                        ; preds = %middle.block, %do.body.i.i.preheader
  %d.0.i.i.ph = phi ptr [ %arrayidx4.i, %do.body.i.i.preheader ], [ %ind.end, %middle.block ]
  %h.addr.0.i.i.ph = phi i32 [ %shr565, %do.body.i.i.preheader ], [ %ind.end1109, %middle.block ]
  %88 = add nsw i32 %h.addr.0.i.i.ph, -2, !dbg !3777
  %89 = lshr i32 %88, 1, !dbg !3777
  %90 = add nuw i32 %89, 1, !dbg !3777
  %xtraiter = and i32 %90, 3, !dbg !3777
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !3777
  br i1 %lcmp.mod.not, label %do.body.i.i.prol.loopexit, label %do.body.i.i.prol, !dbg !3777

do.body.i.i.prol:                                 ; preds = %do.body.i.i.preheader1180, %do.body.i.i.prol
  %d.0.i.i.prol = phi ptr [ %add.ptr106.i.i.prol, %do.body.i.i.prol ], [ %d.0.i.i.ph, %do.body.i.i.preheader1180 ], !dbg !3772
  %h.addr.0.i.i.prol = phi i32 [ %sub.i.i.prol, %do.body.i.i.prol ], [ %h.addr.0.i.i.ph, %do.body.i.i.preheader1180 ]
  %prol.iter = phi i32 [ %prol.iter.next, %do.body.i.i.prol ], [ 0, %do.body.i.i.preheader1180 ]
    #dbg_value(i32 %h.addr.0.i.i.prol, !3765, !DIExpression(), !3772)
    #dbg_value(ptr %d.0.i.i.prol, !3768, !DIExpression(), !3772)
  store i64 %add.i.i, ptr %d.0.i.i.prol, align 8, !dbg !3785
  %add.ptr95.i.i.prol = getelementptr inbounds i8, ptr %d.0.i.i.prol, i64 8, !dbg !3787
  store i64 %add.i.i, ptr %add.ptr95.i.i.prol, align 8, !dbg !3788
  %add.ptr98.i.i.prol = getelementptr inbounds i8, ptr %d.0.i.i.prol, i64 32, !dbg !3789
  store i64 %add.i.i, ptr %add.ptr98.i.i.prol, align 8, !dbg !3790
  %add.ptr103.i.i.prol = getelementptr inbounds i8, ptr %d.0.i.i.prol, i64 40, !dbg !3791
  store i64 %add.i.i, ptr %add.ptr103.i.i.prol, align 8, !dbg !3792
  %sub.i.i.prol = add nsw i32 %h.addr.0.i.i.prol, -2, !dbg !3793
    #dbg_value(i32 %sub.i.i.prol, !3765, !DIExpression(), !3772)
  %add.ptr106.i.i.prol = getelementptr inbounds i8, ptr %d.0.i.i.prol, i64 64, !dbg !3794
    #dbg_value(ptr %add.ptr106.i.i.prol, !3768, !DIExpression(), !3772)
  %prol.iter.next = add i32 %prol.iter, 1, !dbg !3795
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter, !dbg !3795
  br i1 %prol.iter.cmp.not, label %do.body.i.i.prol.loopexit, label %do.body.i.i.prol, !dbg !3795, !llvm.loop !3796

do.body.i.i.prol.loopexit:                        ; preds = %do.body.i.i.prol, %do.body.i.i.preheader1180
  %d.0.i.i.unr = phi ptr [ %d.0.i.i.ph, %do.body.i.i.preheader1180 ], [ %add.ptr106.i.i.prol, %do.body.i.i.prol ]
  %h.addr.0.i.i.unr = phi i32 [ %h.addr.0.i.i.ph, %do.body.i.i.preheader1180 ], [ %sub.i.i.prol, %do.body.i.i.prol ]
  %91 = icmp ult i32 %88, 6, !dbg !3777
  br i1 %91, label %x264_macroblock_cache_mv.exit, label %do.body.i.i, !dbg !3777

vector.ph:                                        ; preds = %do.body.i.i.preheader
  %n.vec = and i64 %87, 4294967292, !dbg !3777
  %92 = shl nuw nsw i64 %n.vec, 6, !dbg !3777
  %ind.end = getelementptr i8, ptr %arrayidx4.i, i64 %92, !dbg !3777
  %.cast = trunc nuw i64 %n.vec to i32, !dbg !3777
  %93 = shl i32 %.cast, 1, !dbg !3777
  %ind.end1109 = sub i32 %shr565, %93, !dbg !3777
  br label %vector.body, !dbg !3777

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 6, !dbg !3777
  %94 = or disjoint i64 %offset.idx, 64, !dbg !3777
  %95 = or disjoint i64 %offset.idx, 128, !dbg !3777
  %96 = or disjoint i64 %offset.idx, 192, !dbg !3777
  %next.gep = getelementptr i8, ptr %arrayidx4.i, i64 %offset.idx
  %next.gep1111 = getelementptr i8, ptr %arrayidx4.i, i64 %94
  %next.gep1112 = getelementptr i8, ptr %arrayidx4.i, i64 %95
  %next.gep1113 = getelementptr i8, ptr %arrayidx4.i, i64 %96
  store i64 %add.i.i, ptr %next.gep, align 8, !dbg !3785
  store i64 %add.i.i, ptr %next.gep1111, align 8, !dbg !3785
  store i64 %add.i.i, ptr %next.gep1112, align 8, !dbg !3785
  store i64 %add.i.i, ptr %next.gep1113, align 8, !dbg !3785
  %97 = getelementptr inbounds i8, ptr %next.gep, i64 8, !dbg !3787
  %98 = getelementptr inbounds i8, ptr %next.gep1111, i64 8, !dbg !3787
  %99 = getelementptr inbounds i8, ptr %next.gep1112, i64 8, !dbg !3787
  %100 = getelementptr inbounds i8, ptr %next.gep1113, i64 8, !dbg !3787
  store i64 %add.i.i, ptr %97, align 8, !dbg !3788
  store i64 %add.i.i, ptr %98, align 8, !dbg !3788
  store i64 %add.i.i, ptr %99, align 8, !dbg !3788
  store i64 %add.i.i, ptr %100, align 8, !dbg !3788
  %101 = getelementptr inbounds i8, ptr %next.gep, i64 32, !dbg !3789
  %102 = getelementptr inbounds i8, ptr %next.gep1111, i64 32, !dbg !3789
  %103 = getelementptr inbounds i8, ptr %next.gep1112, i64 32, !dbg !3789
  %104 = getelementptr inbounds i8, ptr %next.gep1113, i64 32, !dbg !3789
  store i64 %add.i.i, ptr %101, align 8, !dbg !3790
  store i64 %add.i.i, ptr %102, align 8, !dbg !3790
  store i64 %add.i.i, ptr %103, align 8, !dbg !3790
  store i64 %add.i.i, ptr %104, align 8, !dbg !3790
  %105 = getelementptr inbounds i8, ptr %next.gep, i64 40, !dbg !3791
  %106 = getelementptr inbounds i8, ptr %next.gep1111, i64 40, !dbg !3791
  %107 = getelementptr inbounds i8, ptr %next.gep1112, i64 40, !dbg !3791
  %108 = getelementptr inbounds i8, ptr %next.gep1113, i64 40, !dbg !3791
  store i64 %add.i.i, ptr %105, align 8, !dbg !3792
  store i64 %add.i.i, ptr %106, align 8, !dbg !3792
  store i64 %add.i.i, ptr %107, align 8, !dbg !3792
  store i64 %add.i.i, ptr %108, align 8, !dbg !3792
  %index.next = add nuw i64 %index, 4
  %109 = icmp eq i64 %index.next, %n.vec
  br i1 %109, label %middle.block, label %vector.body, !llvm.loop !3797

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %87, !dbg !3795
  br i1 %cmp.n, label %x264_macroblock_cache_mv.exit, label %do.body.i.i.preheader1180, !dbg !3795

if.then39.i.i:                                    ; preds = %if.then559
  store i32 %add.i945, ptr %arrayidx4.i, align 4, !dbg !3799
  %cmp43.i.i = icmp eq i32 %shr565, 1, !dbg !3801
  br i1 %cmp43.i.i, label %x264_macroblock_cache_mv.exit, label %if.end46.i.i, !dbg !3803

if.end46.i.i:                                     ; preds = %if.then39.i.i
  %add.ptr49.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 32, !dbg !3804
  store i32 %add.i945, ptr %add.ptr49.i.i, align 4, !dbg !3805
  %cmp50.i.i = icmp eq i32 %shr565, 2, !dbg !3806
  br i1 %cmp50.i.i, label %x264_macroblock_cache_mv.exit, label %if.end53.i.i, !dbg !3808

if.end53.i.i:                                     ; preds = %if.end46.i.i
  %add.ptr56.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 64, !dbg !3809
  store i32 %add.i945, ptr %add.ptr56.i.i, align 4, !dbg !3810
  %add.ptr59.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 96, !dbg !3811
  store i32 %add.i945, ptr %add.ptr59.i.i, align 4, !dbg !3812
  br label %x264_macroblock_cache_mv.exit, !dbg !3813

if.then63.i.i:                                    ; preds = %if.then559
  store i64 %add.i.i, ptr %arrayidx4.i, align 8, !dbg !3814
  %cmp67.i.i = icmp eq i32 %shr565, 1, !dbg !3818
  br i1 %cmp67.i.i, label %x264_macroblock_cache_mv.exit, label %if.end70.i.i, !dbg !3820

if.end70.i.i:                                     ; preds = %if.then63.i.i
  %add.ptr73.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 32, !dbg !3821
  store i64 %add.i.i, ptr %add.ptr73.i.i, align 8, !dbg !3822
  %cmp74.i.i = icmp eq i32 %shr565, 2, !dbg !3823
  br i1 %cmp74.i.i, label %x264_macroblock_cache_mv.exit, label %if.end77.i.i, !dbg !3825

if.end77.i.i:                                     ; preds = %if.end70.i.i
  %add.ptr80.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 64, !dbg !3826
  store i64 %add.i.i, ptr %add.ptr80.i.i, align 8, !dbg !3827
  %add.ptr83.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 96, !dbg !3828
  store i64 %add.i.i, ptr %add.ptr83.i.i, align 8, !dbg !3829
  br label %x264_macroblock_cache_mv.exit, !dbg !3830

do.body.i.i:                                      ; preds = %do.body.i.i.prol.loopexit, %do.body.i.i
  %d.0.i.i = phi ptr [ %add.ptr106.i.i.3, %do.body.i.i ], [ %d.0.i.i.unr, %do.body.i.i.prol.loopexit ], !dbg !3772
  %h.addr.0.i.i = phi i32 [ %sub.i.i.3, %do.body.i.i ], [ %h.addr.0.i.i.unr, %do.body.i.i.prol.loopexit ]
    #dbg_value(i32 %h.addr.0.i.i, !3765, !DIExpression(), !3772)
    #dbg_value(ptr %d.0.i.i, !3768, !DIExpression(), !3772)
  store i64 %add.i.i, ptr %d.0.i.i, align 8, !dbg !3785
  %add.ptr95.i.i = getelementptr inbounds i8, ptr %d.0.i.i, i64 8, !dbg !3787
  store i64 %add.i.i, ptr %add.ptr95.i.i, align 8, !dbg !3788
  %add.ptr98.i.i = getelementptr inbounds i8, ptr %d.0.i.i, i64 32, !dbg !3789
  store i64 %add.i.i, ptr %add.ptr98.i.i, align 8, !dbg !3790
  %add.ptr103.i.i = getelementptr inbounds i8, ptr %d.0.i.i, i64 40, !dbg !3791
  store i64 %add.i.i, ptr %add.ptr103.i.i, align 8, !dbg !3792
    #dbg_value(i32 %h.addr.0.i.i, !3765, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !3772)
  %add.ptr106.i.i = getelementptr inbounds i8, ptr %d.0.i.i, i64 64, !dbg !3794
    #dbg_value(ptr %add.ptr106.i.i, !3768, !DIExpression(), !3772)
  store i64 %add.i.i, ptr %add.ptr106.i.i, align 8, !dbg !3785
  %add.ptr95.i.i.1 = getelementptr inbounds i8, ptr %d.0.i.i, i64 72, !dbg !3787
  store i64 %add.i.i, ptr %add.ptr95.i.i.1, align 8, !dbg !3788
  %add.ptr98.i.i.1 = getelementptr inbounds i8, ptr %d.0.i.i, i64 96, !dbg !3789
  store i64 %add.i.i, ptr %add.ptr98.i.i.1, align 8, !dbg !3790
  %add.ptr103.i.i.1 = getelementptr inbounds i8, ptr %d.0.i.i, i64 104, !dbg !3791
  store i64 %add.i.i, ptr %add.ptr103.i.i.1, align 8, !dbg !3792
    #dbg_value(i32 %h.addr.0.i.i, !3765, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value), !3772)
  %add.ptr106.i.i.1 = getelementptr inbounds i8, ptr %d.0.i.i, i64 128, !dbg !3794
    #dbg_value(ptr %add.ptr106.i.i.1, !3768, !DIExpression(), !3772)
  store i64 %add.i.i, ptr %add.ptr106.i.i.1, align 8, !dbg !3785
  %add.ptr95.i.i.2 = getelementptr inbounds i8, ptr %d.0.i.i, i64 136, !dbg !3787
  store i64 %add.i.i, ptr %add.ptr95.i.i.2, align 8, !dbg !3788
  %add.ptr98.i.i.2 = getelementptr inbounds i8, ptr %d.0.i.i, i64 160, !dbg !3789
  store i64 %add.i.i, ptr %add.ptr98.i.i.2, align 8, !dbg !3790
  %add.ptr103.i.i.2 = getelementptr inbounds i8, ptr %d.0.i.i, i64 168, !dbg !3791
  store i64 %add.i.i, ptr %add.ptr103.i.i.2, align 8, !dbg !3792
    #dbg_value(i32 %h.addr.0.i.i, !3765, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value), !3772)
  %add.ptr106.i.i.2 = getelementptr inbounds i8, ptr %d.0.i.i, i64 192, !dbg !3794
    #dbg_value(ptr %add.ptr106.i.i.2, !3768, !DIExpression(), !3772)
  store i64 %add.i.i, ptr %add.ptr106.i.i.2, align 8, !dbg !3785
  %add.ptr95.i.i.3 = getelementptr inbounds i8, ptr %d.0.i.i, i64 200, !dbg !3787
  store i64 %add.i.i, ptr %add.ptr95.i.i.3, align 8, !dbg !3788
  %add.ptr98.i.i.3 = getelementptr inbounds i8, ptr %d.0.i.i, i64 224, !dbg !3789
  store i64 %add.i.i, ptr %add.ptr98.i.i.3, align 8, !dbg !3790
  %add.ptr103.i.i.3 = getelementptr inbounds i8, ptr %d.0.i.i, i64 232, !dbg !3791
  store i64 %add.i.i, ptr %add.ptr103.i.i.3, align 8, !dbg !3792
  %sub.i.i.3 = add nsw i32 %h.addr.0.i.i, -8, !dbg !3793
    #dbg_value(i32 %sub.i.i.3, !3765, !DIExpression(), !3772)
  %add.ptr106.i.i.3 = getelementptr inbounds i8, ptr %d.0.i.i, i64 256, !dbg !3794
    #dbg_value(ptr %add.ptr106.i.i.3, !3768, !DIExpression(), !3772)
  %tobool.not.i.i.3 = icmp eq i32 %sub.i.i.3, 0, !dbg !3795
  br i1 %tobool.not.i.i.3, label %x264_macroblock_cache_mv.exit, label %do.body.i.i, !dbg !3795, !llvm.loop !3831

x264_macroblock_cache_mv.exit:                    ; preds = %do.body.i.i.prol.loopexit, %do.body.i.i, %middle.block, %if.then559, %if.then39.i.i, %if.end46.i.i, %if.end53.i.i, %if.then63.i.i, %if.end70.i.i, %if.end77.i.i
  %110 = load i16, ptr %mvp165, align 16, !dbg !3832
  %conv569 = sext i16 %110 to i32, !dbg !3832
  %sub570 = sub nsw i32 %bm0x.0.lcssa, %conv569, !dbg !3832
  %111 = call i32 @llvm.abs.i32(i32 %sub570, i1 true), !dbg !3832
  %spec.select939 = call i32 @llvm.umin.i32(i32 %111, i32 33), !dbg !3832
  %112 = load i16, ptr %arrayidx170, align 2, !dbg !3833
  %conv583 = sext i16 %112 to i32, !dbg !3833
  %sub584 = sub nsw i32 %bm0y.0.lcssa, %conv583, !dbg !3833
  %113 = call i32 @llvm.abs.i32(i32 %sub584, i1 true), !dbg !3833
  %cond594 = call i32 @llvm.umin.i32(i32 %113, i32 33), !dbg !3833
    #dbg_value(i32 %spec.select939, !3834, !DIExpression(), !3838)
    #dbg_value(i32 %cond594, !3837, !DIExpression(), !3838)
  %shl.i947 = shl nuw nsw i32 %cond594, 8, !dbg !3840
  %add.i948 = or disjoint i32 %shl.i947, %spec.select939, !dbg !3841
  %conv596 = trunc nuw nsw i32 %add.i948 to i16, !dbg !3842
    #dbg_value(i16 %conv596, !1762, !DIExpression(), !3492)
    #dbg_value(ptr %h, !3843, !DIExpression(), !3855)
    #dbg_value(i32 %mul561, !3848, !DIExpression(), !3855)
    #dbg_value(i32 %i8, !3849, !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value), !3855)
    #dbg_value(i32 %shr564, !3850, !DIExpression(), !3855)
    #dbg_value(i32 %shr565, !3851, !DIExpression(), !3855)
    #dbg_value(i32 0, !3852, !DIExpression(), !3855)
    #dbg_value(i16 %conv596, !3853, !DIExpression(), !3855)
  %mvd1.i = getelementptr inbounds i8, ptr %h, i64 25520, !dbg !3857
  %arrayidx4.i953 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd1.i, i64 0, i64 0, i64 %idxprom3.i, !dbg !3858
    #dbg_value(ptr %arrayidx4.i953, !3854, !DIExpression(), !3855)
    #dbg_value(ptr %arrayidx4.i953, !3759, !DIExpression(), !3859)
    #dbg_value(i32 %shr564, !3764, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !3859)
    #dbg_value(i32 %shr565, !3765, !DIExpression(), !3859)
    #dbg_value(i32 2, !3766, !DIExpression(), !3859)
    #dbg_value(i32 %add.i948, !3767, !DIExpression(), !3859)
    #dbg_value(ptr %arrayidx4.i953, !3768, !DIExpression(), !3859)
    #dbg_value(i16 %conv596, !3769, !DIExpression(), !3859)
  %cond14.i.i = mul nuw nsw i32 %add.i948, 65537, !dbg !3862
    #dbg_value(i32 %cond14.i.i, !3770, !DIExpression(), !3859)
  %conv15.i.i954 = zext nneg i32 %cond14.i.i to i64, !dbg !3863
  %add.i.i955 = mul nuw nsw i64 %conv15.i.i954, 4294967297, !dbg !3864
    #dbg_value(i64 %add.i.i955, !3771, !DIExpression(), !3859)
    #dbg_value(i32 16, !3766, !DIExpression(), !3859)
  %114 = add i32 %shr564, 2147483647, !dbg !3865
  %115 = and i32 %114, 2147483647, !dbg !3865
  switch i32 %115, label %x264_macroblock_cache_mvd.exit [
    i32 0, label %if.then.i.i
    i32 1, label %if.then39.i.i973
    i32 3, label %if.then63.i.i965
    i32 7, label %do.body.i.i956.preheader
  ], !dbg !3865

do.body.i.i956.preheader:                         ; preds = %x264_macroblock_cache_mv.exit
  %116 = add nsw i32 %shr565, -2, !dbg !3866
  %117 = lshr i32 %116, 1, !dbg !3866
  %narrow1174 = add nuw i32 %117, 1, !dbg !3866
  %118 = zext i32 %narrow1174 to i64, !dbg !3866
  %min.iters.check1116 = icmp ult i32 %116, 6, !dbg !3866
  br i1 %min.iters.check1116, label %do.body.i.i956.preheader1179, label %vector.ph1117, !dbg !3866

do.body.i.i956.preheader1179:                     ; preds = %middle.block1114, %do.body.i.i956.preheader
  %d.0.i.i957.ph = phi ptr [ %arrayidx4.i953, %do.body.i.i956.preheader ], [ %ind.end1120, %middle.block1114 ]
  %h.addr.0.i.i958.ph = phi i32 [ %shr565, %do.body.i.i956.preheader ], [ %ind.end1123, %middle.block1114 ]
  %119 = add nsw i32 %h.addr.0.i.i958.ph, -2, !dbg !3866
  %120 = lshr i32 %119, 1, !dbg !3866
  %121 = add nuw i32 %120, 1, !dbg !3866
  %xtraiter1181 = and i32 %121, 3, !dbg !3866
  %lcmp.mod1182.not = icmp eq i32 %xtraiter1181, 0, !dbg !3866
  br i1 %lcmp.mod1182.not, label %do.body.i.i956.prol.loopexit, label %do.body.i.i956.prol, !dbg !3866

do.body.i.i956.prol:                              ; preds = %do.body.i.i956.preheader1179, %do.body.i.i956.prol
  %d.0.i.i957.prol = phi ptr [ %add.ptr106.i.i963.prol, %do.body.i.i956.prol ], [ %d.0.i.i957.ph, %do.body.i.i956.preheader1179 ], !dbg !3859
  %h.addr.0.i.i958.prol = phi i32 [ %sub.i.i962.prol, %do.body.i.i956.prol ], [ %h.addr.0.i.i958.ph, %do.body.i.i956.preheader1179 ]
  %prol.iter1183 = phi i32 [ %prol.iter1183.next, %do.body.i.i956.prol ], [ 0, %do.body.i.i956.preheader1179 ]
    #dbg_value(i32 %h.addr.0.i.i958.prol, !3765, !DIExpression(), !3859)
    #dbg_value(ptr %d.0.i.i957.prol, !3768, !DIExpression(), !3859)
  store i64 %add.i.i955, ptr %d.0.i.i957.prol, align 8, !dbg !3867
  %add.ptr95.i.i959.prol = getelementptr inbounds i8, ptr %d.0.i.i957.prol, i64 8, !dbg !3868
  store i64 %add.i.i955, ptr %add.ptr95.i.i959.prol, align 8, !dbg !3869
  %add.ptr98.i.i960.prol = getelementptr inbounds i8, ptr %d.0.i.i957.prol, i64 16, !dbg !3870
  store i64 %add.i.i955, ptr %add.ptr98.i.i960.prol, align 8, !dbg !3871
  %add.ptr103.i.i961.prol = getelementptr inbounds i8, ptr %d.0.i.i957.prol, i64 24, !dbg !3872
  store i64 %add.i.i955, ptr %add.ptr103.i.i961.prol, align 8, !dbg !3873
  %sub.i.i962.prol = add nsw i32 %h.addr.0.i.i958.prol, -2, !dbg !3874
    #dbg_value(i32 %sub.i.i962.prol, !3765, !DIExpression(), !3859)
  %add.ptr106.i.i963.prol = getelementptr inbounds i8, ptr %d.0.i.i957.prol, i64 32, !dbg !3875
    #dbg_value(ptr %add.ptr106.i.i963.prol, !3768, !DIExpression(), !3859)
  %prol.iter1183.next = add i32 %prol.iter1183, 1, !dbg !3876
  %prol.iter1183.cmp.not = icmp eq i32 %prol.iter1183.next, %xtraiter1181, !dbg !3876
  br i1 %prol.iter1183.cmp.not, label %do.body.i.i956.prol.loopexit, label %do.body.i.i956.prol, !dbg !3876, !llvm.loop !3877

do.body.i.i956.prol.loopexit:                     ; preds = %do.body.i.i956.prol, %do.body.i.i956.preheader1179
  %d.0.i.i957.unr = phi ptr [ %d.0.i.i957.ph, %do.body.i.i956.preheader1179 ], [ %add.ptr106.i.i963.prol, %do.body.i.i956.prol ]
  %h.addr.0.i.i958.unr = phi i32 [ %h.addr.0.i.i958.ph, %do.body.i.i956.preheader1179 ], [ %sub.i.i962.prol, %do.body.i.i956.prol ]
  %122 = icmp ult i32 %119, 6, !dbg !3866
  br i1 %122, label %x264_macroblock_cache_mvd.exit, label %do.body.i.i956, !dbg !3866

vector.ph1117:                                    ; preds = %do.body.i.i956.preheader
  %n.vec1119 = and i64 %118, 4294967292, !dbg !3866
  %123 = shl nuw nsw i64 %n.vec1119, 5, !dbg !3866
  %ind.end1120 = getelementptr i8, ptr %arrayidx4.i953, i64 %123, !dbg !3866
  %.cast1122 = trunc nuw i64 %n.vec1119 to i32, !dbg !3866
  %124 = shl i32 %.cast1122, 1, !dbg !3866
  %ind.end1123 = sub i32 %shr565, %124, !dbg !3866
  br label %vector.body1125, !dbg !3866

vector.body1125:                                  ; preds = %vector.body1125, %vector.ph1117
  %index1126 = phi i64 [ 0, %vector.ph1117 ], [ %index.next1132, %vector.body1125 ]
  %offset.idx1127 = shl i64 %index1126, 5, !dbg !3866
  %125 = or disjoint i64 %offset.idx1127, 32, !dbg !3866
  %126 = or disjoint i64 %offset.idx1127, 64, !dbg !3866
  %127 = or disjoint i64 %offset.idx1127, 96, !dbg !3866
  %next.gep1128 = getelementptr i8, ptr %arrayidx4.i953, i64 %offset.idx1127
  %next.gep1129 = getelementptr i8, ptr %arrayidx4.i953, i64 %125
  %next.gep1130 = getelementptr i8, ptr %arrayidx4.i953, i64 %126
  %next.gep1131 = getelementptr i8, ptr %arrayidx4.i953, i64 %127
  store i64 %add.i.i955, ptr %next.gep1128, align 8, !dbg !3867
  store i64 %add.i.i955, ptr %next.gep1129, align 8, !dbg !3867
  store i64 %add.i.i955, ptr %next.gep1130, align 8, !dbg !3867
  store i64 %add.i.i955, ptr %next.gep1131, align 8, !dbg !3867
  %128 = getelementptr inbounds i8, ptr %next.gep1128, i64 8, !dbg !3868
  %129 = getelementptr inbounds i8, ptr %next.gep1129, i64 8, !dbg !3868
  %130 = getelementptr inbounds i8, ptr %next.gep1130, i64 8, !dbg !3868
  %131 = getelementptr inbounds i8, ptr %next.gep1131, i64 8, !dbg !3868
  store i64 %add.i.i955, ptr %128, align 8, !dbg !3869
  store i64 %add.i.i955, ptr %129, align 8, !dbg !3869
  store i64 %add.i.i955, ptr %130, align 8, !dbg !3869
  store i64 %add.i.i955, ptr %131, align 8, !dbg !3869
  %132 = getelementptr inbounds i8, ptr %next.gep1128, i64 16, !dbg !3870
  %133 = getelementptr inbounds i8, ptr %next.gep1129, i64 16, !dbg !3870
  %134 = getelementptr inbounds i8, ptr %next.gep1130, i64 16, !dbg !3870
  %135 = getelementptr inbounds i8, ptr %next.gep1131, i64 16, !dbg !3870
  store i64 %add.i.i955, ptr %132, align 8, !dbg !3871
  store i64 %add.i.i955, ptr %133, align 8, !dbg !3871
  store i64 %add.i.i955, ptr %134, align 8, !dbg !3871
  store i64 %add.i.i955, ptr %135, align 8, !dbg !3871
  %136 = getelementptr inbounds i8, ptr %next.gep1128, i64 24, !dbg !3872
  %137 = getelementptr inbounds i8, ptr %next.gep1129, i64 24, !dbg !3872
  %138 = getelementptr inbounds i8, ptr %next.gep1130, i64 24, !dbg !3872
  %139 = getelementptr inbounds i8, ptr %next.gep1131, i64 24, !dbg !3872
  store i64 %add.i.i955, ptr %136, align 8, !dbg !3873
  store i64 %add.i.i955, ptr %137, align 8, !dbg !3873
  store i64 %add.i.i955, ptr %138, align 8, !dbg !3873
  store i64 %add.i.i955, ptr %139, align 8, !dbg !3873
  %index.next1132 = add nuw i64 %index1126, 4
  %140 = icmp eq i64 %index.next1132, %n.vec1119
  br i1 %140, label %middle.block1114, label %vector.body1125, !llvm.loop !3878

middle.block1114:                                 ; preds = %vector.body1125
  %cmp.n1133 = icmp eq i64 %n.vec1119, %118, !dbg !3876
  br i1 %cmp.n1133, label %x264_macroblock_cache_mvd.exit, label %do.body.i.i956.preheader1179, !dbg !3876

if.then.i.i:                                      ; preds = %x264_macroblock_cache_mv.exit
  store i16 %conv596, ptr %arrayidx4.i953, align 2, !dbg !3880
  %cmp21.i.i = icmp eq i32 %shr565, 1, !dbg !3882
  br i1 %cmp21.i.i, label %x264_macroblock_cache_mvd.exit, label %if.end.i.i, !dbg !3884

if.end.i.i:                                       ; preds = %if.then.i.i
  %add.ptr26.i.i = getelementptr inbounds i8, ptr %arrayidx4.i953, i64 16, !dbg !3885
  store i16 %conv596, ptr %add.ptr26.i.i, align 2, !dbg !3886
  %cmp27.i.i = icmp eq i32 %shr565, 2, !dbg !3887
  br i1 %cmp27.i.i, label %x264_macroblock_cache_mvd.exit, label %if.end30.i.i, !dbg !3889

if.end30.i.i:                                     ; preds = %if.end.i.i
  %add.ptr33.i.i = getelementptr inbounds i8, ptr %arrayidx4.i953, i64 32, !dbg !3890
  store i16 %conv596, ptr %add.ptr33.i.i, align 2, !dbg !3891
  %add.ptr36.i.i = getelementptr inbounds i8, ptr %arrayidx4.i953, i64 48, !dbg !3892
  store i16 %conv596, ptr %add.ptr36.i.i, align 2, !dbg !3893
  br label %x264_macroblock_cache_mvd.exit, !dbg !3894

if.then39.i.i973:                                 ; preds = %x264_macroblock_cache_mv.exit
  store i32 %cond14.i.i, ptr %arrayidx4.i953, align 4, !dbg !3895
  %cmp43.i.i974 = icmp eq i32 %shr565, 1, !dbg !3896
  br i1 %cmp43.i.i974, label %x264_macroblock_cache_mvd.exit, label %if.end46.i.i975, !dbg !3897

if.end46.i.i975:                                  ; preds = %if.then39.i.i973
  %add.ptr49.i.i976 = getelementptr inbounds i8, ptr %arrayidx4.i953, i64 16, !dbg !3898
  store i32 %cond14.i.i, ptr %add.ptr49.i.i976, align 4, !dbg !3899
  %cmp50.i.i977 = icmp eq i32 %shr565, 2, !dbg !3900
  br i1 %cmp50.i.i977, label %x264_macroblock_cache_mvd.exit, label %if.end53.i.i978, !dbg !3901

if.end53.i.i978:                                  ; preds = %if.end46.i.i975
  %add.ptr56.i.i979 = getelementptr inbounds i8, ptr %arrayidx4.i953, i64 32, !dbg !3902
  store i32 %cond14.i.i, ptr %add.ptr56.i.i979, align 4, !dbg !3903
  %add.ptr59.i.i980 = getelementptr inbounds i8, ptr %arrayidx4.i953, i64 48, !dbg !3904
  store i32 %cond14.i.i, ptr %add.ptr59.i.i980, align 4, !dbg !3905
  br label %x264_macroblock_cache_mvd.exit, !dbg !3906

if.then63.i.i965:                                 ; preds = %x264_macroblock_cache_mv.exit
  store i64 %add.i.i955, ptr %arrayidx4.i953, align 8, !dbg !3907
  %cmp67.i.i966 = icmp eq i32 %shr565, 1, !dbg !3908
  br i1 %cmp67.i.i966, label %x264_macroblock_cache_mvd.exit, label %if.end70.i.i967, !dbg !3909

if.end70.i.i967:                                  ; preds = %if.then63.i.i965
  %add.ptr73.i.i968 = getelementptr inbounds i8, ptr %arrayidx4.i953, i64 16, !dbg !3910
  store i64 %add.i.i955, ptr %add.ptr73.i.i968, align 8, !dbg !3911
  %cmp74.i.i969 = icmp eq i32 %shr565, 2, !dbg !3912
  br i1 %cmp74.i.i969, label %x264_macroblock_cache_mvd.exit, label %if.end77.i.i970, !dbg !3913

if.end77.i.i970:                                  ; preds = %if.end70.i.i967
  %add.ptr80.i.i971 = getelementptr inbounds i8, ptr %arrayidx4.i953, i64 32, !dbg !3914
  store i64 %add.i.i955, ptr %add.ptr80.i.i971, align 8, !dbg !3915
  %add.ptr83.i.i972 = getelementptr inbounds i8, ptr %arrayidx4.i953, i64 48, !dbg !3916
  store i64 %add.i.i955, ptr %add.ptr83.i.i972, align 8, !dbg !3917
  br label %x264_macroblock_cache_mvd.exit, !dbg !3918

do.body.i.i956:                                   ; preds = %do.body.i.i956.prol.loopexit, %do.body.i.i956
  %d.0.i.i957 = phi ptr [ %add.ptr106.i.i963.3, %do.body.i.i956 ], [ %d.0.i.i957.unr, %do.body.i.i956.prol.loopexit ], !dbg !3859
  %h.addr.0.i.i958 = phi i32 [ %sub.i.i962.3, %do.body.i.i956 ], [ %h.addr.0.i.i958.unr, %do.body.i.i956.prol.loopexit ]
    #dbg_value(i32 %h.addr.0.i.i958, !3765, !DIExpression(), !3859)
    #dbg_value(ptr %d.0.i.i957, !3768, !DIExpression(), !3859)
  store i64 %add.i.i955, ptr %d.0.i.i957, align 8, !dbg !3867
  %add.ptr95.i.i959 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 8, !dbg !3868
  store i64 %add.i.i955, ptr %add.ptr95.i.i959, align 8, !dbg !3869
  %add.ptr98.i.i960 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 16, !dbg !3870
  store i64 %add.i.i955, ptr %add.ptr98.i.i960, align 8, !dbg !3871
  %add.ptr103.i.i961 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 24, !dbg !3872
  store i64 %add.i.i955, ptr %add.ptr103.i.i961, align 8, !dbg !3873
    #dbg_value(i32 %h.addr.0.i.i958, !3765, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !3859)
  %add.ptr106.i.i963 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 32, !dbg !3875
    #dbg_value(ptr %add.ptr106.i.i963, !3768, !DIExpression(), !3859)
  store i64 %add.i.i955, ptr %add.ptr106.i.i963, align 8, !dbg !3867
  %add.ptr95.i.i959.1 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 40, !dbg !3868
  store i64 %add.i.i955, ptr %add.ptr95.i.i959.1, align 8, !dbg !3869
  %add.ptr98.i.i960.1 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 48, !dbg !3870
  store i64 %add.i.i955, ptr %add.ptr98.i.i960.1, align 8, !dbg !3871
  %add.ptr103.i.i961.1 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 56, !dbg !3872
  store i64 %add.i.i955, ptr %add.ptr103.i.i961.1, align 8, !dbg !3873
    #dbg_value(i32 %h.addr.0.i.i958, !3765, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value), !3859)
  %add.ptr106.i.i963.1 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 64, !dbg !3875
    #dbg_value(ptr %add.ptr106.i.i963.1, !3768, !DIExpression(), !3859)
  store i64 %add.i.i955, ptr %add.ptr106.i.i963.1, align 8, !dbg !3867
  %add.ptr95.i.i959.2 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 72, !dbg !3868
  store i64 %add.i.i955, ptr %add.ptr95.i.i959.2, align 8, !dbg !3869
  %add.ptr98.i.i960.2 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 80, !dbg !3870
  store i64 %add.i.i955, ptr %add.ptr98.i.i960.2, align 8, !dbg !3871
  %add.ptr103.i.i961.2 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 88, !dbg !3872
  store i64 %add.i.i955, ptr %add.ptr103.i.i961.2, align 8, !dbg !3873
    #dbg_value(i32 %h.addr.0.i.i958, !3765, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value), !3859)
  %add.ptr106.i.i963.2 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 96, !dbg !3875
    #dbg_value(ptr %add.ptr106.i.i963.2, !3768, !DIExpression(), !3859)
  store i64 %add.i.i955, ptr %add.ptr106.i.i963.2, align 8, !dbg !3867
  %add.ptr95.i.i959.3 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 104, !dbg !3868
  store i64 %add.i.i955, ptr %add.ptr95.i.i959.3, align 8, !dbg !3869
  %add.ptr98.i.i960.3 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 112, !dbg !3870
  store i64 %add.i.i955, ptr %add.ptr98.i.i960.3, align 8, !dbg !3871
  %add.ptr103.i.i961.3 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 120, !dbg !3872
  store i64 %add.i.i955, ptr %add.ptr103.i.i961.3, align 8, !dbg !3873
  %sub.i.i962.3 = add nsw i32 %h.addr.0.i.i958, -8, !dbg !3874
    #dbg_value(i32 %sub.i.i962.3, !3765, !DIExpression(), !3859)
  %add.ptr106.i.i963.3 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 128, !dbg !3875
    #dbg_value(ptr %add.ptr106.i.i963.3, !3768, !DIExpression(), !3859)
  %tobool.not.i.i964.3 = icmp eq i32 %sub.i.i962.3, 0, !dbg !3876
  br i1 %tobool.not.i.i964.3, label %x264_macroblock_cache_mvd.exit, label %do.body.i.i956, !dbg !3876, !llvm.loop !3919

x264_macroblock_cache_mvd.exit:                   ; preds = %do.body.i.i956.prol.loopexit, %do.body.i.i956, %middle.block1114, %x264_macroblock_cache_mv.exit, %if.then.i.i, %if.end.i.i, %if.end30.i.i, %if.then39.i.i973, %if.end46.i.i975, %if.end53.i.i978, %if.then63.i.i965, %if.end70.i.i967, %if.end77.i.i970
    #dbg_value(i32 %bm1x.0.lcssa, !1907, !DIExpression(), !3920)
    #dbg_value(i32 %bm1y.0.lcssa, !1912, !DIExpression(), !3920)
  %and.i981 = and i32 %bm1x.0.lcssa, 65535, !dbg !3922
  %shl.i982 = shl i32 %bm1y.0.lcssa, 16, !dbg !3923
  %add.i983 = or disjoint i32 %and.i981, %shl.i982, !dbg !3924
    #dbg_value(ptr %h, !3739, !DIExpression(), !3925)
    #dbg_value(i32 %mul561, !3745, !DIExpression(), !3925)
    #dbg_value(i32 %i8, !3746, !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value), !3925)
    #dbg_value(i32 %shr564, !3747, !DIExpression(), !3925)
    #dbg_value(i32 %shr565, !3748, !DIExpression(), !3925)
    #dbg_value(i32 1, !3749, !DIExpression(), !3925)
    #dbg_value(i32 %add.i983, !3750, !DIExpression(), !3925)
  %arrayidx4.i989 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv, i64 0, i64 1, i64 %idxprom3.i, !dbg !3927
    #dbg_value(ptr %arrayidx4.i989, !3751, !DIExpression(), !3925)
    #dbg_value(ptr %arrayidx4.i989, !3759, !DIExpression(), !3928)
    #dbg_value(i32 %mul5.i, !3764, !DIExpression(), !3928)
    #dbg_value(i32 %shr565, !3765, !DIExpression(), !3928)
    #dbg_value(i32 4, !3766, !DIExpression(), !3928)
    #dbg_value(i32 %add.i983, !3767, !DIExpression(), !3928)
    #dbg_value(ptr %arrayidx4.i989, !3768, !DIExpression(), !3928)
    #dbg_value(i32 %add.i983, !3769, !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !3928)
    #dbg_value(i32 %add.i983, !3770, !DIExpression(), !3928)
  %conv15.i.i991 = zext i32 %add.i983 to i64, !dbg !3930
  %add.i.i992 = mul nuw i64 %conv15.i.i991, 4294967297, !dbg !3931
    #dbg_value(i64 %add.i.i992, !3771, !DIExpression(), !3928)
    #dbg_value(i32 32, !3766, !DIExpression(), !3928)
  switch i32 %84, label %x264_macroblock_cache_mv.exit1018 [
    i32 7, label %do.body.i.i1009.preheader
    i32 1, label %if.then39.i.i1001
    i32 3, label %if.then63.i.i993
  ], !dbg !3932

do.body.i.i1009.preheader:                        ; preds = %x264_macroblock_cache_mvd.exit
  %141 = add nsw i32 %shr565, -2, !dbg !3933
  %142 = lshr i32 %141, 1, !dbg !3933
  %narrow1175 = add nuw i32 %142, 1, !dbg !3933
  %143 = zext i32 %narrow1175 to i64, !dbg !3933
  %min.iters.check1136 = icmp ult i32 %141, 6, !dbg !3933
  br i1 %min.iters.check1136, label %do.body.i.i1009.preheader1178, label %vector.ph1137, !dbg !3933

do.body.i.i1009.preheader1178:                    ; preds = %middle.block1134, %do.body.i.i1009.preheader
  %d.0.i.i1010.ph = phi ptr [ %arrayidx4.i989, %do.body.i.i1009.preheader ], [ %ind.end1140, %middle.block1134 ]
  %h.addr.0.i.i1011.ph = phi i32 [ %shr565, %do.body.i.i1009.preheader ], [ %ind.end1143, %middle.block1134 ]
  %144 = add nsw i32 %h.addr.0.i.i1011.ph, -2, !dbg !3933
  %145 = lshr i32 %144, 1, !dbg !3933
  %146 = add nuw i32 %145, 1, !dbg !3933
  %xtraiter1184 = and i32 %146, 3, !dbg !3933
  %lcmp.mod1185.not = icmp eq i32 %xtraiter1184, 0, !dbg !3933
  br i1 %lcmp.mod1185.not, label %do.body.i.i1009.prol.loopexit, label %do.body.i.i1009.prol, !dbg !3933

do.body.i.i1009.prol:                             ; preds = %do.body.i.i1009.preheader1178, %do.body.i.i1009.prol
  %d.0.i.i1010.prol = phi ptr [ %add.ptr106.i.i1016.prol, %do.body.i.i1009.prol ], [ %d.0.i.i1010.ph, %do.body.i.i1009.preheader1178 ], !dbg !3928
  %h.addr.0.i.i1011.prol = phi i32 [ %sub.i.i1015.prol, %do.body.i.i1009.prol ], [ %h.addr.0.i.i1011.ph, %do.body.i.i1009.preheader1178 ]
  %prol.iter1186 = phi i32 [ %prol.iter1186.next, %do.body.i.i1009.prol ], [ 0, %do.body.i.i1009.preheader1178 ]
    #dbg_value(i32 %h.addr.0.i.i1011.prol, !3765, !DIExpression(), !3928)
    #dbg_value(ptr %d.0.i.i1010.prol, !3768, !DIExpression(), !3928)
  store i64 %add.i.i992, ptr %d.0.i.i1010.prol, align 8, !dbg !3934
  %add.ptr95.i.i1012.prol = getelementptr inbounds i8, ptr %d.0.i.i1010.prol, i64 8, !dbg !3935
  store i64 %add.i.i992, ptr %add.ptr95.i.i1012.prol, align 8, !dbg !3936
  %add.ptr98.i.i1013.prol = getelementptr inbounds i8, ptr %d.0.i.i1010.prol, i64 32, !dbg !3937
  store i64 %add.i.i992, ptr %add.ptr98.i.i1013.prol, align 8, !dbg !3938
  %add.ptr103.i.i1014.prol = getelementptr inbounds i8, ptr %d.0.i.i1010.prol, i64 40, !dbg !3939
  store i64 %add.i.i992, ptr %add.ptr103.i.i1014.prol, align 8, !dbg !3940
  %sub.i.i1015.prol = add nsw i32 %h.addr.0.i.i1011.prol, -2, !dbg !3941
    #dbg_value(i32 %sub.i.i1015.prol, !3765, !DIExpression(), !3928)
  %add.ptr106.i.i1016.prol = getelementptr inbounds i8, ptr %d.0.i.i1010.prol, i64 64, !dbg !3942
    #dbg_value(ptr %add.ptr106.i.i1016.prol, !3768, !DIExpression(), !3928)
  %prol.iter1186.next = add i32 %prol.iter1186, 1, !dbg !3943
  %prol.iter1186.cmp.not = icmp eq i32 %prol.iter1186.next, %xtraiter1184, !dbg !3943
  br i1 %prol.iter1186.cmp.not, label %do.body.i.i1009.prol.loopexit, label %do.body.i.i1009.prol, !dbg !3943, !llvm.loop !3944

do.body.i.i1009.prol.loopexit:                    ; preds = %do.body.i.i1009.prol, %do.body.i.i1009.preheader1178
  %d.0.i.i1010.unr = phi ptr [ %d.0.i.i1010.ph, %do.body.i.i1009.preheader1178 ], [ %add.ptr106.i.i1016.prol, %do.body.i.i1009.prol ]
  %h.addr.0.i.i1011.unr = phi i32 [ %h.addr.0.i.i1011.ph, %do.body.i.i1009.preheader1178 ], [ %sub.i.i1015.prol, %do.body.i.i1009.prol ]
  %147 = icmp ult i32 %144, 6, !dbg !3933
  br i1 %147, label %x264_macroblock_cache_mv.exit1018, label %do.body.i.i1009, !dbg !3933

vector.ph1137:                                    ; preds = %do.body.i.i1009.preheader
  %n.vec1139 = and i64 %143, 4294967292, !dbg !3933
  %148 = shl nuw nsw i64 %n.vec1139, 6, !dbg !3933
  %ind.end1140 = getelementptr i8, ptr %arrayidx4.i989, i64 %148, !dbg !3933
  %.cast1142 = trunc nuw i64 %n.vec1139 to i32, !dbg !3933
  %149 = shl i32 %.cast1142, 1, !dbg !3933
  %ind.end1143 = sub i32 %shr565, %149, !dbg !3933
  br label %vector.body1145, !dbg !3933

vector.body1145:                                  ; preds = %vector.body1145, %vector.ph1137
  %index1146 = phi i64 [ 0, %vector.ph1137 ], [ %index.next1152, %vector.body1145 ]
  %offset.idx1147 = shl i64 %index1146, 6, !dbg !3933
  %150 = or disjoint i64 %offset.idx1147, 64, !dbg !3933
  %151 = or disjoint i64 %offset.idx1147, 128, !dbg !3933
  %152 = or disjoint i64 %offset.idx1147, 192, !dbg !3933
  %next.gep1148 = getelementptr i8, ptr %arrayidx4.i989, i64 %offset.idx1147
  %next.gep1149 = getelementptr i8, ptr %arrayidx4.i989, i64 %150
  %next.gep1150 = getelementptr i8, ptr %arrayidx4.i989, i64 %151
  %next.gep1151 = getelementptr i8, ptr %arrayidx4.i989, i64 %152
  store i64 %add.i.i992, ptr %next.gep1148, align 8, !dbg !3934
  store i64 %add.i.i992, ptr %next.gep1149, align 8, !dbg !3934
  store i64 %add.i.i992, ptr %next.gep1150, align 8, !dbg !3934
  store i64 %add.i.i992, ptr %next.gep1151, align 8, !dbg !3934
  %153 = getelementptr inbounds i8, ptr %next.gep1148, i64 8, !dbg !3935
  %154 = getelementptr inbounds i8, ptr %next.gep1149, i64 8, !dbg !3935
  %155 = getelementptr inbounds i8, ptr %next.gep1150, i64 8, !dbg !3935
  %156 = getelementptr inbounds i8, ptr %next.gep1151, i64 8, !dbg !3935
  store i64 %add.i.i992, ptr %153, align 8, !dbg !3936
  store i64 %add.i.i992, ptr %154, align 8, !dbg !3936
  store i64 %add.i.i992, ptr %155, align 8, !dbg !3936
  store i64 %add.i.i992, ptr %156, align 8, !dbg !3936
  %157 = getelementptr inbounds i8, ptr %next.gep1148, i64 32, !dbg !3937
  %158 = getelementptr inbounds i8, ptr %next.gep1149, i64 32, !dbg !3937
  %159 = getelementptr inbounds i8, ptr %next.gep1150, i64 32, !dbg !3937
  %160 = getelementptr inbounds i8, ptr %next.gep1151, i64 32, !dbg !3937
  store i64 %add.i.i992, ptr %157, align 8, !dbg !3938
  store i64 %add.i.i992, ptr %158, align 8, !dbg !3938
  store i64 %add.i.i992, ptr %159, align 8, !dbg !3938
  store i64 %add.i.i992, ptr %160, align 8, !dbg !3938
  %161 = getelementptr inbounds i8, ptr %next.gep1148, i64 40, !dbg !3939
  %162 = getelementptr inbounds i8, ptr %next.gep1149, i64 40, !dbg !3939
  %163 = getelementptr inbounds i8, ptr %next.gep1150, i64 40, !dbg !3939
  %164 = getelementptr inbounds i8, ptr %next.gep1151, i64 40, !dbg !3939
  store i64 %add.i.i992, ptr %161, align 8, !dbg !3940
  store i64 %add.i.i992, ptr %162, align 8, !dbg !3940
  store i64 %add.i.i992, ptr %163, align 8, !dbg !3940
  store i64 %add.i.i992, ptr %164, align 8, !dbg !3940
  %index.next1152 = add nuw i64 %index1146, 4
  %165 = icmp eq i64 %index.next1152, %n.vec1139
  br i1 %165, label %middle.block1134, label %vector.body1145, !llvm.loop !3945

middle.block1134:                                 ; preds = %vector.body1145
  %cmp.n1153 = icmp eq i64 %n.vec1139, %143, !dbg !3943
  br i1 %cmp.n1153, label %x264_macroblock_cache_mv.exit1018, label %do.body.i.i1009.preheader1178, !dbg !3943

if.then39.i.i1001:                                ; preds = %x264_macroblock_cache_mvd.exit
  store i32 %add.i983, ptr %arrayidx4.i989, align 4, !dbg !3947
  %cmp43.i.i1002 = icmp eq i32 %shr565, 1, !dbg !3948
  br i1 %cmp43.i.i1002, label %x264_macroblock_cache_mv.exit1018, label %if.end46.i.i1003, !dbg !3949

if.end46.i.i1003:                                 ; preds = %if.then39.i.i1001
  %add.ptr49.i.i1004 = getelementptr inbounds i8, ptr %arrayidx4.i989, i64 32, !dbg !3950
  store i32 %add.i983, ptr %add.ptr49.i.i1004, align 4, !dbg !3951
  %cmp50.i.i1005 = icmp eq i32 %shr565, 2, !dbg !3952
  br i1 %cmp50.i.i1005, label %x264_macroblock_cache_mv.exit1018, label %if.end53.i.i1006, !dbg !3953

if.end53.i.i1006:                                 ; preds = %if.end46.i.i1003
  %add.ptr56.i.i1007 = getelementptr inbounds i8, ptr %arrayidx4.i989, i64 64, !dbg !3954
  store i32 %add.i983, ptr %add.ptr56.i.i1007, align 4, !dbg !3955
  %add.ptr59.i.i1008 = getelementptr inbounds i8, ptr %arrayidx4.i989, i64 96, !dbg !3956
  store i32 %add.i983, ptr %add.ptr59.i.i1008, align 4, !dbg !3957
  br label %x264_macroblock_cache_mv.exit1018, !dbg !3958

if.then63.i.i993:                                 ; preds = %x264_macroblock_cache_mvd.exit
  store i64 %add.i.i992, ptr %arrayidx4.i989, align 8, !dbg !3959
  %cmp67.i.i994 = icmp eq i32 %shr565, 1, !dbg !3960
  br i1 %cmp67.i.i994, label %x264_macroblock_cache_mv.exit1018, label %if.end70.i.i995, !dbg !3961

if.end70.i.i995:                                  ; preds = %if.then63.i.i993
  %add.ptr73.i.i996 = getelementptr inbounds i8, ptr %arrayidx4.i989, i64 32, !dbg !3962
  store i64 %add.i.i992, ptr %add.ptr73.i.i996, align 8, !dbg !3963
  %cmp74.i.i997 = icmp eq i32 %shr565, 2, !dbg !3964
  br i1 %cmp74.i.i997, label %x264_macroblock_cache_mv.exit1018, label %if.end77.i.i998, !dbg !3965

if.end77.i.i998:                                  ; preds = %if.end70.i.i995
  %add.ptr80.i.i999 = getelementptr inbounds i8, ptr %arrayidx4.i989, i64 64, !dbg !3966
  store i64 %add.i.i992, ptr %add.ptr80.i.i999, align 8, !dbg !3967
  %add.ptr83.i.i1000 = getelementptr inbounds i8, ptr %arrayidx4.i989, i64 96, !dbg !3968
  store i64 %add.i.i992, ptr %add.ptr83.i.i1000, align 8, !dbg !3969
  br label %x264_macroblock_cache_mv.exit1018, !dbg !3970

do.body.i.i1009:                                  ; preds = %do.body.i.i1009.prol.loopexit, %do.body.i.i1009
  %d.0.i.i1010 = phi ptr [ %add.ptr106.i.i1016.3, %do.body.i.i1009 ], [ %d.0.i.i1010.unr, %do.body.i.i1009.prol.loopexit ], !dbg !3928
  %h.addr.0.i.i1011 = phi i32 [ %sub.i.i1015.3, %do.body.i.i1009 ], [ %h.addr.0.i.i1011.unr, %do.body.i.i1009.prol.loopexit ]
    #dbg_value(i32 %h.addr.0.i.i1011, !3765, !DIExpression(), !3928)
    #dbg_value(ptr %d.0.i.i1010, !3768, !DIExpression(), !3928)
  store i64 %add.i.i992, ptr %d.0.i.i1010, align 8, !dbg !3934
  %add.ptr95.i.i1012 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 8, !dbg !3935
  store i64 %add.i.i992, ptr %add.ptr95.i.i1012, align 8, !dbg !3936
  %add.ptr98.i.i1013 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 32, !dbg !3937
  store i64 %add.i.i992, ptr %add.ptr98.i.i1013, align 8, !dbg !3938
  %add.ptr103.i.i1014 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 40, !dbg !3939
  store i64 %add.i.i992, ptr %add.ptr103.i.i1014, align 8, !dbg !3940
    #dbg_value(i32 %h.addr.0.i.i1011, !3765, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !3928)
  %add.ptr106.i.i1016 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 64, !dbg !3942
    #dbg_value(ptr %add.ptr106.i.i1016, !3768, !DIExpression(), !3928)
  store i64 %add.i.i992, ptr %add.ptr106.i.i1016, align 8, !dbg !3934
  %add.ptr95.i.i1012.1 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 72, !dbg !3935
  store i64 %add.i.i992, ptr %add.ptr95.i.i1012.1, align 8, !dbg !3936
  %add.ptr98.i.i1013.1 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 96, !dbg !3937
  store i64 %add.i.i992, ptr %add.ptr98.i.i1013.1, align 8, !dbg !3938
  %add.ptr103.i.i1014.1 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 104, !dbg !3939
  store i64 %add.i.i992, ptr %add.ptr103.i.i1014.1, align 8, !dbg !3940
    #dbg_value(i32 %h.addr.0.i.i1011, !3765, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value), !3928)
  %add.ptr106.i.i1016.1 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 128, !dbg !3942
    #dbg_value(ptr %add.ptr106.i.i1016.1, !3768, !DIExpression(), !3928)
  store i64 %add.i.i992, ptr %add.ptr106.i.i1016.1, align 8, !dbg !3934
  %add.ptr95.i.i1012.2 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 136, !dbg !3935
  store i64 %add.i.i992, ptr %add.ptr95.i.i1012.2, align 8, !dbg !3936
  %add.ptr98.i.i1013.2 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 160, !dbg !3937
  store i64 %add.i.i992, ptr %add.ptr98.i.i1013.2, align 8, !dbg !3938
  %add.ptr103.i.i1014.2 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 168, !dbg !3939
  store i64 %add.i.i992, ptr %add.ptr103.i.i1014.2, align 8, !dbg !3940
    #dbg_value(i32 %h.addr.0.i.i1011, !3765, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value), !3928)
  %add.ptr106.i.i1016.2 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 192, !dbg !3942
    #dbg_value(ptr %add.ptr106.i.i1016.2, !3768, !DIExpression(), !3928)
  store i64 %add.i.i992, ptr %add.ptr106.i.i1016.2, align 8, !dbg !3934
  %add.ptr95.i.i1012.3 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 200, !dbg !3935
  store i64 %add.i.i992, ptr %add.ptr95.i.i1012.3, align 8, !dbg !3936
  %add.ptr98.i.i1013.3 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 224, !dbg !3937
  store i64 %add.i.i992, ptr %add.ptr98.i.i1013.3, align 8, !dbg !3938
  %add.ptr103.i.i1014.3 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 232, !dbg !3939
  store i64 %add.i.i992, ptr %add.ptr103.i.i1014.3, align 8, !dbg !3940
  %sub.i.i1015.3 = add nsw i32 %h.addr.0.i.i1011, -8, !dbg !3941
    #dbg_value(i32 %sub.i.i1015.3, !3765, !DIExpression(), !3928)
  %add.ptr106.i.i1016.3 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 256, !dbg !3942
    #dbg_value(ptr %add.ptr106.i.i1016.3, !3768, !DIExpression(), !3928)
  %tobool.not.i.i1017.3 = icmp eq i32 %sub.i.i1015.3, 0, !dbg !3943
  br i1 %tobool.not.i.i1017.3, label %x264_macroblock_cache_mv.exit1018, label %do.body.i.i1009, !dbg !3943, !llvm.loop !3971

x264_macroblock_cache_mv.exit1018:                ; preds = %do.body.i.i1009.prol.loopexit, %do.body.i.i1009, %middle.block1134, %x264_macroblock_cache_mvd.exit, %if.then39.i.i1001, %if.end46.i.i1003, %if.end53.i.i1006, %if.then63.i.i993, %if.end70.i.i995, %if.end77.i.i998
  %166 = load i16, ptr %mvp176, align 16, !dbg !3972
  %conv612 = sext i16 %166 to i32, !dbg !3972
  %sub613 = sub nsw i32 %bm1x.0.lcssa, %conv612, !dbg !3972
  %167 = call i32 @llvm.abs.i32(i32 %sub613, i1 true), !dbg !3972
  %cond623 = call i32 @llvm.umin.i32(i32 %167, i32 33), !dbg !3972
  %168 = load i16, ptr %arrayidx184, align 2, !dbg !3973
  %conv626 = sext i16 %168 to i32, !dbg !3973
  %sub627 = sub nsw i32 %bm1y.0.lcssa, %conv626, !dbg !3973
  %169 = call i32 @llvm.abs.i32(i32 %sub627, i1 true), !dbg !3973
  %cond637 = call i32 @llvm.umin.i32(i32 %169, i32 33), !dbg !3973
    #dbg_value(i32 %cond623, !3834, !DIExpression(), !3974)
    #dbg_value(i32 %cond637, !3837, !DIExpression(), !3974)
  %shl.i1019 = shl nuw nsw i32 %cond637, 8, !dbg !3976
  %add.i1020 = or disjoint i32 %shl.i1019, %cond623, !dbg !3977
  %conv639 = trunc nuw nsw i32 %add.i1020 to i16, !dbg !3978
    #dbg_value(i16 %conv639, !1762, !DIExpression(), !3492)
    #dbg_value(ptr %h, !3843, !DIExpression(), !3979)
    #dbg_value(i32 %mul561, !3848, !DIExpression(), !3979)
    #dbg_value(i32 %i8, !3849, !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value), !3979)
    #dbg_value(i32 %shr564, !3850, !DIExpression(), !3979)
    #dbg_value(i32 %shr565, !3851, !DIExpression(), !3979)
    #dbg_value(i32 1, !3852, !DIExpression(), !3979)
    #dbg_value(i16 %conv639, !3853, !DIExpression(), !3979)
  %arrayidx4.i1026 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd1.i, i64 0, i64 1, i64 %idxprom3.i, !dbg !3981
    #dbg_value(ptr %arrayidx4.i1026, !3854, !DIExpression(), !3979)
    #dbg_value(ptr %arrayidx4.i1026, !3759, !DIExpression(), !3982)
    #dbg_value(i32 %shr564, !3764, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !3982)
    #dbg_value(i32 %shr565, !3765, !DIExpression(), !3982)
    #dbg_value(i32 2, !3766, !DIExpression(), !3982)
    #dbg_value(i32 %add.i1020, !3767, !DIExpression(), !3982)
    #dbg_value(ptr %arrayidx4.i1026, !3768, !DIExpression(), !3982)
    #dbg_value(i16 %conv639, !3769, !DIExpression(), !3982)
  %cond14.i.i1028 = mul nuw nsw i32 %add.i1020, 65537, !dbg !3984
    #dbg_value(i32 %cond14.i.i1028, !3770, !DIExpression(), !3982)
  %conv15.i.i1029 = zext nneg i32 %cond14.i.i1028 to i64, !dbg !3985
  %add.i.i1030 = mul nuw nsw i64 %conv15.i.i1029, 4294967297, !dbg !3986
    #dbg_value(i64 %add.i.i1030, !3771, !DIExpression(), !3982)
    #dbg_value(i32 16, !3766, !DIExpression(), !3982)
  switch i32 %115, label %if.end646 [
    i32 0, label %if.then.i.i1056
    i32 1, label %if.then39.i.i1048
    i32 3, label %if.then63.i.i1040
    i32 7, label %do.body.i.i1031.preheader
  ], !dbg !3987

do.body.i.i1031.preheader:                        ; preds = %x264_macroblock_cache_mv.exit1018
  %170 = add nsw i32 %shr565, -2, !dbg !3988
  %171 = lshr i32 %170, 1, !dbg !3988
  %narrow1176 = add nuw i32 %171, 1, !dbg !3988
  %172 = zext i32 %narrow1176 to i64, !dbg !3988
  %min.iters.check1156 = icmp ult i32 %170, 6, !dbg !3988
  br i1 %min.iters.check1156, label %do.body.i.i1031.preheader1177, label %vector.ph1157, !dbg !3988

do.body.i.i1031.preheader1177:                    ; preds = %middle.block1154, %do.body.i.i1031.preheader
  %d.0.i.i1032.ph = phi ptr [ %arrayidx4.i1026, %do.body.i.i1031.preheader ], [ %ind.end1160, %middle.block1154 ]
  %h.addr.0.i.i1033.ph = phi i32 [ %shr565, %do.body.i.i1031.preheader ], [ %ind.end1163, %middle.block1154 ]
  %173 = add nsw i32 %h.addr.0.i.i1033.ph, -2, !dbg !3988
  %174 = lshr i32 %173, 1, !dbg !3988
  %175 = add nuw i32 %174, 1, !dbg !3988
  %xtraiter1187 = and i32 %175, 3, !dbg !3988
  %lcmp.mod1188.not = icmp eq i32 %xtraiter1187, 0, !dbg !3988
  br i1 %lcmp.mod1188.not, label %do.body.i.i1031.prol.loopexit, label %do.body.i.i1031.prol, !dbg !3988

do.body.i.i1031.prol:                             ; preds = %do.body.i.i1031.preheader1177, %do.body.i.i1031.prol
  %d.0.i.i1032.prol = phi ptr [ %add.ptr106.i.i1038.prol, %do.body.i.i1031.prol ], [ %d.0.i.i1032.ph, %do.body.i.i1031.preheader1177 ], !dbg !3982
  %h.addr.0.i.i1033.prol = phi i32 [ %sub.i.i1037.prol, %do.body.i.i1031.prol ], [ %h.addr.0.i.i1033.ph, %do.body.i.i1031.preheader1177 ]
  %prol.iter1189 = phi i32 [ %prol.iter1189.next, %do.body.i.i1031.prol ], [ 0, %do.body.i.i1031.preheader1177 ]
    #dbg_value(i32 %h.addr.0.i.i1033.prol, !3765, !DIExpression(), !3982)
    #dbg_value(ptr %d.0.i.i1032.prol, !3768, !DIExpression(), !3982)
  store i64 %add.i.i1030, ptr %d.0.i.i1032.prol, align 8, !dbg !3989
  %add.ptr95.i.i1034.prol = getelementptr inbounds i8, ptr %d.0.i.i1032.prol, i64 8, !dbg !3990
  store i64 %add.i.i1030, ptr %add.ptr95.i.i1034.prol, align 8, !dbg !3991
  %add.ptr98.i.i1035.prol = getelementptr inbounds i8, ptr %d.0.i.i1032.prol, i64 16, !dbg !3992
  store i64 %add.i.i1030, ptr %add.ptr98.i.i1035.prol, align 8, !dbg !3993
  %add.ptr103.i.i1036.prol = getelementptr inbounds i8, ptr %d.0.i.i1032.prol, i64 24, !dbg !3994
  store i64 %add.i.i1030, ptr %add.ptr103.i.i1036.prol, align 8, !dbg !3995
  %sub.i.i1037.prol = add nsw i32 %h.addr.0.i.i1033.prol, -2, !dbg !3996
    #dbg_value(i32 %sub.i.i1037.prol, !3765, !DIExpression(), !3982)
  %add.ptr106.i.i1038.prol = getelementptr inbounds i8, ptr %d.0.i.i1032.prol, i64 32, !dbg !3997
    #dbg_value(ptr %add.ptr106.i.i1038.prol, !3768, !DIExpression(), !3982)
  %prol.iter1189.next = add i32 %prol.iter1189, 1, !dbg !3998
  %prol.iter1189.cmp.not = icmp eq i32 %prol.iter1189.next, %xtraiter1187, !dbg !3998
  br i1 %prol.iter1189.cmp.not, label %do.body.i.i1031.prol.loopexit, label %do.body.i.i1031.prol, !dbg !3998, !llvm.loop !3999

do.body.i.i1031.prol.loopexit:                    ; preds = %do.body.i.i1031.prol, %do.body.i.i1031.preheader1177
  %d.0.i.i1032.unr = phi ptr [ %d.0.i.i1032.ph, %do.body.i.i1031.preheader1177 ], [ %add.ptr106.i.i1038.prol, %do.body.i.i1031.prol ]
  %h.addr.0.i.i1033.unr = phi i32 [ %h.addr.0.i.i1033.ph, %do.body.i.i1031.preheader1177 ], [ %sub.i.i1037.prol, %do.body.i.i1031.prol ]
  %176 = icmp ult i32 %173, 6, !dbg !3988
  br i1 %176, label %if.end646, label %do.body.i.i1031, !dbg !3988

vector.ph1157:                                    ; preds = %do.body.i.i1031.preheader
  %n.vec1159 = and i64 %172, 4294967292, !dbg !3988
  %177 = shl nuw nsw i64 %n.vec1159, 5, !dbg !3988
  %ind.end1160 = getelementptr i8, ptr %arrayidx4.i1026, i64 %177, !dbg !3988
  %.cast1162 = trunc nuw i64 %n.vec1159 to i32, !dbg !3988
  %178 = shl i32 %.cast1162, 1, !dbg !3988
  %ind.end1163 = sub i32 %shr565, %178, !dbg !3988
  br label %vector.body1165, !dbg !3988

vector.body1165:                                  ; preds = %vector.body1165, %vector.ph1157
  %index1166 = phi i64 [ 0, %vector.ph1157 ], [ %index.next1172, %vector.body1165 ]
  %offset.idx1167 = shl i64 %index1166, 5, !dbg !3988
  %179 = or disjoint i64 %offset.idx1167, 32, !dbg !3988
  %180 = or disjoint i64 %offset.idx1167, 64, !dbg !3988
  %181 = or disjoint i64 %offset.idx1167, 96, !dbg !3988
  %next.gep1168 = getelementptr i8, ptr %arrayidx4.i1026, i64 %offset.idx1167
  %next.gep1169 = getelementptr i8, ptr %arrayidx4.i1026, i64 %179
  %next.gep1170 = getelementptr i8, ptr %arrayidx4.i1026, i64 %180
  %next.gep1171 = getelementptr i8, ptr %arrayidx4.i1026, i64 %181
  store i64 %add.i.i1030, ptr %next.gep1168, align 8, !dbg !3989
  store i64 %add.i.i1030, ptr %next.gep1169, align 8, !dbg !3989
  store i64 %add.i.i1030, ptr %next.gep1170, align 8, !dbg !3989
  store i64 %add.i.i1030, ptr %next.gep1171, align 8, !dbg !3989
  %182 = getelementptr inbounds i8, ptr %next.gep1168, i64 8, !dbg !3990
  %183 = getelementptr inbounds i8, ptr %next.gep1169, i64 8, !dbg !3990
  %184 = getelementptr inbounds i8, ptr %next.gep1170, i64 8, !dbg !3990
  %185 = getelementptr inbounds i8, ptr %next.gep1171, i64 8, !dbg !3990
  store i64 %add.i.i1030, ptr %182, align 8, !dbg !3991
  store i64 %add.i.i1030, ptr %183, align 8, !dbg !3991
  store i64 %add.i.i1030, ptr %184, align 8, !dbg !3991
  store i64 %add.i.i1030, ptr %185, align 8, !dbg !3991
  %186 = getelementptr inbounds i8, ptr %next.gep1168, i64 16, !dbg !3992
  %187 = getelementptr inbounds i8, ptr %next.gep1169, i64 16, !dbg !3992
  %188 = getelementptr inbounds i8, ptr %next.gep1170, i64 16, !dbg !3992
  %189 = getelementptr inbounds i8, ptr %next.gep1171, i64 16, !dbg !3992
  store i64 %add.i.i1030, ptr %186, align 8, !dbg !3993
  store i64 %add.i.i1030, ptr %187, align 8, !dbg !3993
  store i64 %add.i.i1030, ptr %188, align 8, !dbg !3993
  store i64 %add.i.i1030, ptr %189, align 8, !dbg !3993
  %190 = getelementptr inbounds i8, ptr %next.gep1168, i64 24, !dbg !3994
  %191 = getelementptr inbounds i8, ptr %next.gep1169, i64 24, !dbg !3994
  %192 = getelementptr inbounds i8, ptr %next.gep1170, i64 24, !dbg !3994
  %193 = getelementptr inbounds i8, ptr %next.gep1171, i64 24, !dbg !3994
  store i64 %add.i.i1030, ptr %190, align 8, !dbg !3995
  store i64 %add.i.i1030, ptr %191, align 8, !dbg !3995
  store i64 %add.i.i1030, ptr %192, align 8, !dbg !3995
  store i64 %add.i.i1030, ptr %193, align 8, !dbg !3995
  %index.next1172 = add nuw i64 %index1166, 4
  %194 = icmp eq i64 %index.next1172, %n.vec1159
  br i1 %194, label %middle.block1154, label %vector.body1165, !llvm.loop !4000

middle.block1154:                                 ; preds = %vector.body1165
  %cmp.n1173 = icmp eq i64 %n.vec1159, %172, !dbg !3998
  br i1 %cmp.n1173, label %if.end646, label %do.body.i.i1031.preheader1177, !dbg !3998

if.then.i.i1056:                                  ; preds = %x264_macroblock_cache_mv.exit1018
  store i16 %conv639, ptr %arrayidx4.i1026, align 2, !dbg !4002
  %cmp21.i.i1057 = icmp eq i32 %shr565, 1, !dbg !4003
  br i1 %cmp21.i.i1057, label %if.end646, label %if.end.i.i1058, !dbg !4004

if.end.i.i1058:                                   ; preds = %if.then.i.i1056
  %add.ptr26.i.i1059 = getelementptr inbounds i8, ptr %arrayidx4.i1026, i64 16, !dbg !4005
  store i16 %conv639, ptr %add.ptr26.i.i1059, align 2, !dbg !4006
  %cmp27.i.i1060 = icmp eq i32 %shr565, 2, !dbg !4007
  br i1 %cmp27.i.i1060, label %if.end646, label %if.end30.i.i1061, !dbg !4008

if.end30.i.i1061:                                 ; preds = %if.end.i.i1058
  %add.ptr33.i.i1062 = getelementptr inbounds i8, ptr %arrayidx4.i1026, i64 32, !dbg !4009
  store i16 %conv639, ptr %add.ptr33.i.i1062, align 2, !dbg !4010
  %add.ptr36.i.i1063 = getelementptr inbounds i8, ptr %arrayidx4.i1026, i64 48, !dbg !4011
  store i16 %conv639, ptr %add.ptr36.i.i1063, align 2, !dbg !4012
  br label %if.end646, !dbg !4013

if.then39.i.i1048:                                ; preds = %x264_macroblock_cache_mv.exit1018
  store i32 %cond14.i.i1028, ptr %arrayidx4.i1026, align 4, !dbg !4014
  %cmp43.i.i1049 = icmp eq i32 %shr565, 1, !dbg !4015
  br i1 %cmp43.i.i1049, label %if.end646, label %if.end46.i.i1050, !dbg !4016

if.end46.i.i1050:                                 ; preds = %if.then39.i.i1048
  %add.ptr49.i.i1051 = getelementptr inbounds i8, ptr %arrayidx4.i1026, i64 16, !dbg !4017
  store i32 %cond14.i.i1028, ptr %add.ptr49.i.i1051, align 4, !dbg !4018
  %cmp50.i.i1052 = icmp eq i32 %shr565, 2, !dbg !4019
  br i1 %cmp50.i.i1052, label %if.end646, label %if.end53.i.i1053, !dbg !4020

if.end53.i.i1053:                                 ; preds = %if.end46.i.i1050
  %add.ptr56.i.i1054 = getelementptr inbounds i8, ptr %arrayidx4.i1026, i64 32, !dbg !4021
  store i32 %cond14.i.i1028, ptr %add.ptr56.i.i1054, align 4, !dbg !4022
  %add.ptr59.i.i1055 = getelementptr inbounds i8, ptr %arrayidx4.i1026, i64 48, !dbg !4023
  store i32 %cond14.i.i1028, ptr %add.ptr59.i.i1055, align 4, !dbg !4024
  br label %if.end646, !dbg !4025

if.then63.i.i1040:                                ; preds = %x264_macroblock_cache_mv.exit1018
  store i64 %add.i.i1030, ptr %arrayidx4.i1026, align 8, !dbg !4026
  %cmp67.i.i1041 = icmp eq i32 %shr565, 1, !dbg !4027
  br i1 %cmp67.i.i1041, label %if.end646, label %if.end70.i.i1042, !dbg !4028

if.end70.i.i1042:                                 ; preds = %if.then63.i.i1040
  %add.ptr73.i.i1043 = getelementptr inbounds i8, ptr %arrayidx4.i1026, i64 16, !dbg !4029
  store i64 %add.i.i1030, ptr %add.ptr73.i.i1043, align 8, !dbg !4030
  %cmp74.i.i1044 = icmp eq i32 %shr565, 2, !dbg !4031
  br i1 %cmp74.i.i1044, label %if.end646, label %if.end77.i.i1045, !dbg !4032

if.end77.i.i1045:                                 ; preds = %if.end70.i.i1042
  %add.ptr80.i.i1046 = getelementptr inbounds i8, ptr %arrayidx4.i1026, i64 32, !dbg !4033
  store i64 %add.i.i1030, ptr %add.ptr80.i.i1046, align 8, !dbg !4034
  %add.ptr83.i.i1047 = getelementptr inbounds i8, ptr %arrayidx4.i1026, i64 48, !dbg !4035
  store i64 %add.i.i1030, ptr %add.ptr83.i.i1047, align 8, !dbg !4036
  br label %if.end646, !dbg !4037

do.body.i.i1031:                                  ; preds = %do.body.i.i1031.prol.loopexit, %do.body.i.i1031
  %d.0.i.i1032 = phi ptr [ %add.ptr106.i.i1038.3, %do.body.i.i1031 ], [ %d.0.i.i1032.unr, %do.body.i.i1031.prol.loopexit ], !dbg !3982
  %h.addr.0.i.i1033 = phi i32 [ %sub.i.i1037.3, %do.body.i.i1031 ], [ %h.addr.0.i.i1033.unr, %do.body.i.i1031.prol.loopexit ]
    #dbg_value(i32 %h.addr.0.i.i1033, !3765, !DIExpression(), !3982)
    #dbg_value(ptr %d.0.i.i1032, !3768, !DIExpression(), !3982)
  store i64 %add.i.i1030, ptr %d.0.i.i1032, align 8, !dbg !3989
  %add.ptr95.i.i1034 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 8, !dbg !3990
  store i64 %add.i.i1030, ptr %add.ptr95.i.i1034, align 8, !dbg !3991
  %add.ptr98.i.i1035 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 16, !dbg !3992
  store i64 %add.i.i1030, ptr %add.ptr98.i.i1035, align 8, !dbg !3993
  %add.ptr103.i.i1036 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 24, !dbg !3994
  store i64 %add.i.i1030, ptr %add.ptr103.i.i1036, align 8, !dbg !3995
    #dbg_value(i32 %h.addr.0.i.i1033, !3765, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !3982)
  %add.ptr106.i.i1038 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 32, !dbg !3997
    #dbg_value(ptr %add.ptr106.i.i1038, !3768, !DIExpression(), !3982)
  store i64 %add.i.i1030, ptr %add.ptr106.i.i1038, align 8, !dbg !3989
  %add.ptr95.i.i1034.1 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 40, !dbg !3990
  store i64 %add.i.i1030, ptr %add.ptr95.i.i1034.1, align 8, !dbg !3991
  %add.ptr98.i.i1035.1 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 48, !dbg !3992
  store i64 %add.i.i1030, ptr %add.ptr98.i.i1035.1, align 8, !dbg !3993
  %add.ptr103.i.i1036.1 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 56, !dbg !3994
  store i64 %add.i.i1030, ptr %add.ptr103.i.i1036.1, align 8, !dbg !3995
    #dbg_value(i32 %h.addr.0.i.i1033, !3765, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value), !3982)
  %add.ptr106.i.i1038.1 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 64, !dbg !3997
    #dbg_value(ptr %add.ptr106.i.i1038.1, !3768, !DIExpression(), !3982)
  store i64 %add.i.i1030, ptr %add.ptr106.i.i1038.1, align 8, !dbg !3989
  %add.ptr95.i.i1034.2 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 72, !dbg !3990
  store i64 %add.i.i1030, ptr %add.ptr95.i.i1034.2, align 8, !dbg !3991
  %add.ptr98.i.i1035.2 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 80, !dbg !3992
  store i64 %add.i.i1030, ptr %add.ptr98.i.i1035.2, align 8, !dbg !3993
  %add.ptr103.i.i1036.2 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 88, !dbg !3994
  store i64 %add.i.i1030, ptr %add.ptr103.i.i1036.2, align 8, !dbg !3995
    #dbg_value(i32 %h.addr.0.i.i1033, !3765, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value), !3982)
  %add.ptr106.i.i1038.2 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 96, !dbg !3997
    #dbg_value(ptr %add.ptr106.i.i1038.2, !3768, !DIExpression(), !3982)
  store i64 %add.i.i1030, ptr %add.ptr106.i.i1038.2, align 8, !dbg !3989
  %add.ptr95.i.i1034.3 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 104, !dbg !3990
  store i64 %add.i.i1030, ptr %add.ptr95.i.i1034.3, align 8, !dbg !3991
  %add.ptr98.i.i1035.3 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 112, !dbg !3992
  store i64 %add.i.i1030, ptr %add.ptr98.i.i1035.3, align 8, !dbg !3993
  %add.ptr103.i.i1036.3 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 120, !dbg !3994
  store i64 %add.i.i1030, ptr %add.ptr103.i.i1036.3, align 8, !dbg !3995
  %sub.i.i1037.3 = add nsw i32 %h.addr.0.i.i1033, -8, !dbg !3996
    #dbg_value(i32 %sub.i.i1037.3, !3765, !DIExpression(), !3982)
  %add.ptr106.i.i1038.3 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 128, !dbg !3997
    #dbg_value(ptr %add.ptr106.i.i1038.3, !3768, !DIExpression(), !3982)
  %tobool.not.i.i1039.3 = icmp eq i32 %sub.i.i1037.3, 0, !dbg !3998
  br i1 %tobool.not.i.i1039.3, label %if.end646, label %do.body.i.i1031, !dbg !3998, !llvm.loop !4038

if.end646:                                        ; preds = %do.body.i.i1031.prol.loopexit, %do.body.i.i1031, %middle.block1154, %if.end77.i.i1045, %if.end70.i.i1042, %if.then63.i.i1040, %if.end53.i.i1053, %if.end46.i.i1050, %if.then39.i.i1048, %if.end30.i.i1061, %if.end.i.i1058, %if.then.i.i1056, %x264_macroblock_cache_mv.exit1018, %cleanup556
  %conv647 = trunc i32 %bm0x.0.lcssa to i16, !dbg !4039
  store i16 %conv647, ptr %mv87, align 4, !dbg !4040
  %conv650 = trunc i32 %bm0y.0.lcssa to i16, !dbg !4041
  store i16 %conv650, ptr %arrayidx91, align 2, !dbg !4042
  %conv653 = trunc i32 %bm1x.0.lcssa to i16, !dbg !4043
  store i16 %conv653, ptr %mv93, align 4, !dbg !4044
  %conv656 = trunc i32 %bm1y.0.lcssa to i16, !dbg !4045
  store i16 %conv656, ptr %arrayidx97, align 2, !dbg !4046
  br label %cleanup659, !dbg !4047

cleanup659:                                       ; preds = %cond.end85, %lor.lhs.false109, %lor.lhs.false122, %lor.lhs.false136, %if.end646
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %visited) #6, !dbg !4047
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %stride) #6, !dbg !4047
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %src) #6, !dbg !4047
  call void @llvm.lifetime.end.p0(i64 1152, ptr nonnull %pixv_buf) #6, !dbg !4047
  call void @llvm.lifetime.end.p0(i64 1152, ptr nonnull %pixu_buf) #6, !dbg !4047
  call void @llvm.lifetime.end.p0(i64 4608, ptr nonnull %pixy_buf) #6, !dbg !4047
  ret void, !dbg !4047
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_me_refine_bidir_rd(ptr noundef %h, ptr noundef %m0, ptr noundef %m1, i32 noundef %i_weight, i32 noundef %i8, i32 noundef %i_lambda2) local_unnamed_addr #0 !dbg !4048 {
entry:
    #dbg_value(ptr %h, !4052, !DIExpression(), !4058)
    #dbg_value(ptr %m0, !4053, !DIExpression(), !4058)
    #dbg_value(ptr %m1, !4054, !DIExpression(), !4058)
    #dbg_value(i32 %i_weight, !4055, !DIExpression(), !4058)
    #dbg_value(i32 %i8, !4056, !DIExpression(), !4058)
    #dbg_value(i32 %i_lambda2, !4057, !DIExpression(), !4058)
  %b_skip_mc = getelementptr inbounds i8, ptr %h, i64 17420, !dbg !4059
  store i32 1, ptr %b_skip_mc, align 4, !dbg !4060
  tail call fastcc void @x264_me_refine_bidir(ptr noundef %h, ptr noundef %m0, ptr noundef %m1, i32 noundef %i_weight, i32 noundef %i8, i32 noundef %i_lambda2, i32 noundef 1), !dbg !4061
  store i32 0, ptr %b_skip_mc, align 4, !dbg !4062
  ret void, !dbg !4063
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_me_refine_qpel_rd(ptr noundef %h, ptr noundef %m, i32 noundef %i_lambda2, i32 noundef %i4, i32 noundef %i_list) local_unnamed_addr #0 !dbg !4064 {
entry:
    #dbg_value(ptr %h, !4068, !DIExpression(), !4137)
    #dbg_value(ptr %m, !4069, !DIExpression(), !4137)
    #dbg_value(i32 %i_lambda2, !4070, !DIExpression(), !4137)
    #dbg_value(i32 %i4, !4071, !DIExpression(), !4137)
    #dbg_value(i32 %i_list, !4072, !DIExpression(), !4137)
  %mv = getelementptr inbounds i8, ptr %h, i64 25200, !dbg !4138
  %idxprom = sext i32 %i_list to i64, !dbg !4139
  %idxprom1 = sext i32 %i4 to i64, !dbg !4140
  %arrayidx2 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom1, !dbg !4140
  %0 = load i32, ptr %arrayidx2, align 4, !dbg !4140
  %idxprom3 = sext i32 %0 to i64, !dbg !4139
  %arrayidx4 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv, i64 0, i64 %idxprom, i64 %idxprom3, !dbg !4139
    #dbg_value(ptr %arrayidx4, !4073, !DIExpression(), !4137)
  %1 = load i32, ptr %m, align 16, !dbg !4141
  %idxprom5 = sext i32 %1 to i64, !dbg !4142
  %arrayidx6 = getelementptr inbounds [7 x %struct.anon], ptr @x264_pixel_size, i64 0, i64 %idxprom5, !dbg !4142
  %2 = load i32, ptr %arrayidx6, align 8, !dbg !4143
    #dbg_value(i32 %2, !4076, !DIExpression(), !4137)
  %h10 = getelementptr inbounds i8, ptr %arrayidx6, i64 4, !dbg !4144
  %3 = load i32, ptr %h10, align 4, !dbg !4144
    #dbg_value(i32 %3, !4077, !DIExpression(), !4137)
    #dbg_value(i32 %1, !4078, !DIExpression(), !4137)
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436, !dbg !4145
  %4 = load i32, ptr %b_interlaced, align 4, !dbg !4145
  %i_ref = getelementptr inbounds i8, ptr %m, i64 20, !dbg !4146
  %5 = load i32, ptr %i_ref, align 4, !dbg !4146
  %and = and i32 %5, %4, !dbg !4147
  %tobool.not = icmp eq i32 %and, 0, !dbg !4147
  br i1 %tobool.not, label %cond.end, label %cond.true, !dbg !4148

cond.true:                                        ; preds = %entry
  %i_mb_y = getelementptr inbounds i8, ptr %h, i64 16388, !dbg !4149
  %6 = load i32, ptr %i_mb_y, align 4, !dbg !4149
  %and15 = shl i32 %6, 2, !dbg !4150
  %mul = and i32 %and15, 4, !dbg !4150
  %sub = add nsw i32 %mul, -2, !dbg !4151
  br label %cond.end, !dbg !4148

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %entry ], !dbg !4148
    #dbg_value(i32 %cond, !4079, !DIExpression(), !4137)
    #dbg_value(i64 1152921504606846976, !4080, !DIExpression(), !4137)
  %mv16 = getelementptr inbounds i8, ptr %m, i64 140, !dbg !4152
  %7 = load i16, ptr %mv16, align 4, !dbg !4153
  %conv = sext i16 %7 to i32, !dbg !4153
    #dbg_value(i32 %conv, !4081, !DIExpression(), !4137)
  %arrayidx19 = getelementptr inbounds i8, ptr %m, i64 142, !dbg !4154
  %8 = load i16, ptr %arrayidx19, align 2, !dbg !4154
  %conv20 = sext i16 %8 to i32, !dbg !4154
    #dbg_value(i32 %conv20, !4082, !DIExpression(), !4137)
    #dbg_value(i32 -2, !4089, !DIExpression(), !4137)
    #dbg_value(i32 %i4, !4090, !DIExpression(DW_OP_constu, 2, DW_OP_shra, DW_OP_stack_value), !4137)
  %p_fdec = getelementptr inbounds i8, ptr %h, i64 21392, !dbg !4155
  %9 = load ptr, ptr %p_fdec, align 16, !dbg !4156
  %arrayidx24 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %idxprom1, !dbg !4157
  %10 = load i16, ptr %arrayidx24, align 2, !dbg !4157
  %idxprom25 = zext i16 %10 to i64, !dbg !4156
  %arrayidx26 = getelementptr inbounds i8, ptr %9, i64 %idxprom25, !dbg !4156
    #dbg_value(ptr %arrayidx26, !4092, !DIExpression(), !4137)
  %arrayidx30 = getelementptr inbounds i8, ptr %h, i64 21400, !dbg !4158
  %11 = load ptr, ptr %arrayidx30, align 8, !dbg !4158
  %12 = shl i32 %i4, 4, !dbg !4159
  %mul33 = and i32 %12, -128, !dbg !4159
  %and34 = and i32 %i4, 4, !dbg !4160
  %add = or disjoint i32 %mul33, %and34, !dbg !4161
  %idxprom36 = sext i32 %add to i64, !dbg !4158
  %arrayidx37 = getelementptr inbounds i8, ptr %11, i64 %idxprom36, !dbg !4158
    #dbg_value(ptr %arrayidx37, !4093, !DIExpression(), !4137)
  %arrayidx41 = getelementptr inbounds i8, ptr %h, i64 21408, !dbg !4162
  %13 = load ptr, ptr %arrayidx41, align 16, !dbg !4162
  %arrayidx49 = getelementptr inbounds i8, ptr %13, i64 %idxprom36, !dbg !4162
    #dbg_value(ptr %arrayidx49, !4094, !DIExpression(), !4137)
  %b_skip_mc = getelementptr inbounds i8, ptr %h, i64 17420, !dbg !4163
  store i32 1, ptr %b_skip_mc, align 4, !dbg !4164
  %14 = load i32, ptr %m, align 16, !dbg !4165
  %cmp = icmp ne i32 %14, 0, !dbg !4167
  %cmp53 = icmp ne i32 %i4, 0
  %or.cond = and i1 %cmp53, %cmp, !dbg !4168
  br i1 %or.cond, label %if.then, label %if.end, !dbg !4168

if.then:                                          ; preds = %cond.end
  %shr55 = ashr i32 %2, 2, !dbg !4169
  %mvp = getelementptr inbounds i8, ptr %m, i64 128, !dbg !4170
  tail call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef %i_list, i32 noundef %i4, i32 noundef %shr55, ptr noundef nonnull %mvp) #6, !dbg !4171
  br label %if.end, !dbg !4171

if.end:                                           ; preds = %if.then, %cond.end
  %mvp57 = getelementptr inbounds i8, ptr %m, i64 128, !dbg !4172
  %15 = load i16, ptr %mvp57, align 16, !dbg !4173
  %conv59 = sext i16 %15 to i32, !dbg !4173
    #dbg_value(i32 %conv59, !4085, !DIExpression(), !4137)
  %arrayidx61 = getelementptr inbounds i8, ptr %m, i64 130, !dbg !4174
  %16 = load i16, ptr %arrayidx61, align 2, !dbg !4174
  %conv62 = sext i16 %16 to i32, !dbg !4174
    #dbg_value(i32 %conv62, !4086, !DIExpression(), !4137)
  %p_cost_mv = getelementptr inbounds i8, ptr %m, i64 8, !dbg !4175
  %17 = load ptr, ptr %p_cost_mv, align 8, !dbg !4175
  %idx.ext = sext i16 %15 to i64, !dbg !4176
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !4176
  %add.ptr = getelementptr inbounds i16, ptr %17, i64 %idx.neg, !dbg !4176
    #dbg_value(ptr %add.ptr, !4074, !DIExpression(), !4137)
  %idx.ext64 = sext i16 %16 to i64, !dbg !4177
  %idx.neg65 = sub nsw i64 0, %idx.ext64, !dbg !4177
  %add.ptr66 = getelementptr inbounds i16, ptr %17, i64 %idx.neg65, !dbg !4177
    #dbg_value(ptr %add.ptr66, !4075, !DIExpression(), !4137)
  %mc = getelementptr inbounds i8, ptr %h, i64 32616, !dbg !4178
  %18 = load ptr, ptr %mc, align 8, !dbg !4178
  %p_fref = getelementptr inbounds i8, ptr %m, i64 32, !dbg !4178
  %i_stride = getelementptr inbounds i8, ptr %m, i64 120, !dbg !4178
  %19 = load i32, ptr %i_stride, align 8, !dbg !4178
  %weight = getelementptr inbounds i8, ptr %m, i64 24, !dbg !4178
  %20 = load ptr, ptr %weight, align 8, !dbg !4178
  tail call void %18(ptr noundef %arrayidx26, i32 noundef 32, ptr noundef nonnull %p_fref, i32 noundef %19, i32 noundef %conv, i32 noundef %conv20, i32 noundef %2, i32 noundef %3, ptr noundef %20) #6, !dbg !4178
  %mbcmp = getelementptr inbounds i8, ptr %h, i64 31816, !dbg !4178
  %arrayidx71 = getelementptr inbounds [7 x ptr], ptr %mbcmp, i64 0, i64 %idxprom5, !dbg !4178
  %21 = load ptr, ptr %arrayidx71, align 8, !dbg !4178
  %p_fenc = getelementptr inbounds i8, ptr %m, i64 88, !dbg !4178
  %22 = load ptr, ptr %p_fenc, align 8, !dbg !4178
  %call = tail call i32 %21(ptr noundef %22, i32 noundef 16, ptr noundef %arrayidx26, i32 noundef 32) #6, !dbg !4178
  %idxprom73 = sext i16 %7 to i64, !dbg !4178
  %arrayidx74 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom73, !dbg !4178
  %23 = load i16, ptr %arrayidx74, align 2, !dbg !4178
  %conv75 = zext i16 %23 to i32, !dbg !4178
  %add76 = add nsw i32 %call, %conv75, !dbg !4178
  %idxprom77 = sext i16 %8 to i64, !dbg !4178
  %arrayidx78 = getelementptr inbounds i16, ptr %add.ptr66, i64 %idxprom77, !dbg !4178
  %24 = load i16, ptr %arrayidx78, align 2, !dbg !4178
  %conv79 = zext i16 %24 to i32, !dbg !4178
  %add80 = add nsw i32 %add76, %conv79, !dbg !4178
    #dbg_value(i32 %add80, !4087, !DIExpression(), !4137)
  %25 = load i32, ptr %m, align 16, !dbg !4182
  %cmp86.not = icmp eq i32 %25, 0, !dbg !4183
  br i1 %cmp86.not, label %if.else, label %if.then88, !dbg !4184

if.then88:                                        ; preds = %if.end
  %cmp90 = icmp sgt i32 %add80, -1, !dbg !4185
  br i1 %cmp90, label %if.then92, label %if.end125, !dbg !4186

if.then92:                                        ; preds = %if.then88
    #dbg_value(i32 %conv, !1907, !DIExpression(), !4187)
    #dbg_value(i32 %conv20, !1912, !DIExpression(), !4187)
  %and.i = and i32 %conv, 65535, !dbg !4189
  %shl.i = shl nsw i32 %conv20, 16, !dbg !4190
  %add.i = or disjoint i32 %shl.i, %and.i, !dbg !4191
  store i32 %add.i, ptr %arrayidx4, align 4, !dbg !4192
  %26 = load i32, ptr %m, align 16, !dbg !4193
  %cmp95 = icmp slt i32 %26, 4, !dbg !4193
  br i1 %cmp95, label %if.then97, label %if.end115, !dbg !4192

if.then97:                                        ; preds = %if.then92
  %mc_chroma = getelementptr inbounds i8, ptr %h, i64 32632, !dbg !4195
  %27 = load ptr, ptr %mc_chroma, align 8, !dbg !4195
  %arrayidx100 = getelementptr inbounds i8, ptr %m, i64 64, !dbg !4195
  %28 = load ptr, ptr %arrayidx100, align 16, !dbg !4195
  %arrayidx102 = getelementptr inbounds i8, ptr %m, i64 124, !dbg !4195
  %29 = load i32, ptr %arrayidx102, align 4, !dbg !4195
  %add103 = add nsw i32 %cond, %conv20, !dbg !4195
  %shr104 = ashr i32 %2, 1, !dbg !4195
  %shr105 = ashr i32 %3, 1, !dbg !4195
  tail call void %27(ptr noundef %arrayidx37, i32 noundef 32, ptr noundef %28, i32 noundef %29, i32 noundef %conv, i32 noundef %add103, i32 noundef %shr104, i32 noundef %shr105) #6, !dbg !4195
  %30 = load ptr, ptr %mc_chroma, align 8, !dbg !4195
  %arrayidx109 = getelementptr inbounds i8, ptr %m, i64 72, !dbg !4195
  %31 = load ptr, ptr %arrayidx109, align 8, !dbg !4195
  %32 = load i32, ptr %arrayidx102, align 4, !dbg !4195
  tail call void %30(ptr noundef %arrayidx49, i32 noundef 32, ptr noundef %31, i32 noundef %32, i32 noundef %conv, i32 noundef %add103, i32 noundef %shr104, i32 noundef %shr105) #6, !dbg !4195
  %.pre = load i32, ptr %m, align 16, !dbg !4192
  br label %if.end115, !dbg !4195

if.end115:                                        ; preds = %if.then97, %if.then92
  %33 = phi i32 [ %.pre, %if.then97 ], [ %26, %if.then92 ], !dbg !4192
  %call117 = tail call i64 @x264_rd_cost_part(ptr noundef nonnull %h, i32 noundef %i_lambda2, i32 noundef %i4, i32 noundef %33) #6, !dbg !4192
    #dbg_value(i64 %call117, !4095, !DIExpression(), !4197)
  %spec.select = tail call i64 @llvm.umin.i64(i64 %call117, i64 1152921504606846976), !dbg !4192
    #dbg_value(i64 %spec.select, !4080, !DIExpression(), !4137)
    #dbg_value(i32 %conv, !4081, !DIExpression(), !4137)
    #dbg_value(i32 %conv20, !4082, !DIExpression(), !4137)
    #dbg_value(i32 -2, !4089, !DIExpression(), !4137)
  br label %if.end125, !dbg !4192

if.else:                                          ; preds = %if.end
  %cost123 = getelementptr inbounds i8, ptr %m, i64 136, !dbg !4198
  %34 = load i32, ptr %cost123, align 8, !dbg !4198
  %conv124 = sext i32 %34 to i64, !dbg !4199
    #dbg_value(i64 %conv124, !4080, !DIExpression(), !4137)
  br label %if.end125

if.end125:                                        ; preds = %if.then88, %if.end115, %if.else
  %bcost.1 = phi i64 [ %spec.select, %if.end115 ], [ 1152921504606846976, %if.then88 ], [ %conv124, %if.else ], !dbg !4137
    #dbg_value(i64 %bcost.1, !4080, !DIExpression(), !4137)
    #dbg_value(i32 %conv, !4081, !DIExpression(), !4137)
    #dbg_value(i32 %conv20, !4082, !DIExpression(), !4137)
    #dbg_value(i32 -2, !4089, !DIExpression(), !4137)
  %cmp126.not = icmp eq i16 %7, %15, !dbg !4200
  %cmp128.not = icmp eq i16 %8, %16
  %or.cond1288 = select i1 %cmp126.not, i1 %cmp128.not, i1 false, !dbg !4201
  br i1 %or.cond1288, label %if.end230, label %land.lhs.true130, !dbg !4201

land.lhs.true130:                                 ; preds = %if.end125
  %mv_min_spel = getelementptr inbounds i8, ptr %h, i64 16456, !dbg !4202
  %35 = load i32, ptr %mv_min_spel, align 8, !dbg !4203
  %cmp133.not = icmp sgt i32 %35, %conv59, !dbg !4204
  br i1 %cmp133.not, label %if.end230, label %land.lhs.true135, !dbg !4205

land.lhs.true135:                                 ; preds = %land.lhs.true130
  %mv_max_spel = getelementptr inbounds i8, ptr %h, i64 16464, !dbg !4206
  %36 = load i32, ptr %mv_max_spel, align 16, !dbg !4207
  %cmp138.not = icmp slt i32 %36, %conv59, !dbg !4208
  br i1 %cmp138.not, label %if.end230, label %land.lhs.true140, !dbg !4209

land.lhs.true140:                                 ; preds = %land.lhs.true135
  %arrayidx143 = getelementptr inbounds i8, ptr %h, i64 16460, !dbg !4210
  %37 = load i32, ptr %arrayidx143, align 4, !dbg !4210
  %cmp144.not = icmp sgt i32 %37, %conv62, !dbg !4211
  br i1 %cmp144.not, label %if.end230, label %land.lhs.true146, !dbg !4212

land.lhs.true146:                                 ; preds = %land.lhs.true140
  %arrayidx149 = getelementptr inbounds i8, ptr %h, i64 16468, !dbg !4213
  %38 = load i32, ptr %arrayidx149, align 4, !dbg !4213
  %cmp150.not = icmp slt i32 %38, %conv62, !dbg !4214
  br i1 %cmp150.not, label %if.end230, label %if.then152, !dbg !4215

if.then152:                                       ; preds = %land.lhs.true146
  %39 = load ptr, ptr %mc, align 8, !dbg !4216
  %40 = load i32, ptr %i_stride, align 8, !dbg !4216
  %41 = load ptr, ptr %weight, align 8, !dbg !4216
  tail call void %39(ptr noundef %arrayidx26, i32 noundef 32, ptr noundef nonnull %p_fref, i32 noundef %40, i32 noundef %conv59, i32 noundef %conv62, i32 noundef %2, i32 noundef %3, ptr noundef %41) #6, !dbg !4216
  %42 = load ptr, ptr %arrayidx71, align 8, !dbg !4216
  %43 = load ptr, ptr %p_fenc, align 8, !dbg !4216
  %call167 = tail call i32 %42(ptr noundef %43, i32 noundef 16, ptr noundef %arrayidx26, i32 noundef 32) #6, !dbg !4216
  %44 = load i16, ptr %17, align 2, !dbg !4216
  %conv170 = zext i16 %44 to i32, !dbg !4216
  %reass.add = shl nuw nsw i32 %conv170, 1, !dbg !4216
  %add175 = add i32 %reass.add, %call167, !dbg !4216
    #dbg_value(i32 %add175, !4088, !DIExpression(), !4137)
  %spec.select1289 = tail call i32 @llvm.smin.i32(i32 %add175, i32 %add80), !dbg !4216
    #dbg_value(i32 %spec.select1289, !4087, !DIExpression(), !4137)
  %mul180 = mul nsw i32 %spec.select1289, 17, !dbg !4220
  %div181 = sdiv i32 %mul180, 16, !dbg !4220
  %cmp182.not = icmp sgt i32 %add175, %div181, !dbg !4220
  br i1 %cmp182.not, label %if.end216, label %if.then184, !dbg !4221

if.then184:                                       ; preds = %if.then152
    #dbg_value(i32 %conv59, !1907, !DIExpression(), !4222)
    #dbg_value(i32 %conv62, !1912, !DIExpression(), !4222)
  %and.i1295 = and i32 %conv59, 65535, !dbg !4224
  %shl.i1296 = shl nsw i32 %conv62, 16, !dbg !4225
  %add.i1297 = or disjoint i32 %shl.i1296, %and.i1295, !dbg !4226
  store i32 %add.i1297, ptr %arrayidx4, align 4, !dbg !4227
  %45 = load i32, ptr %m, align 16, !dbg !4228
  %cmp188 = icmp slt i32 %45, 4, !dbg !4228
  br i1 %cmp188, label %if.then190, label %if.end209, !dbg !4227

if.then190:                                       ; preds = %if.then184
  %mc_chroma192 = getelementptr inbounds i8, ptr %h, i64 32632, !dbg !4230
  %46 = load ptr, ptr %mc_chroma192, align 8, !dbg !4230
  %arrayidx194 = getelementptr inbounds i8, ptr %m, i64 64, !dbg !4230
  %47 = load ptr, ptr %arrayidx194, align 16, !dbg !4230
  %arrayidx196 = getelementptr inbounds i8, ptr %m, i64 124, !dbg !4230
  %48 = load i32, ptr %arrayidx196, align 4, !dbg !4230
  %add197 = add nsw i32 %cond, %conv62, !dbg !4230
  %shr198 = ashr i32 %2, 1, !dbg !4230
  %shr199 = ashr i32 %3, 1, !dbg !4230
  tail call void %46(ptr noundef %arrayidx37, i32 noundef 32, ptr noundef %47, i32 noundef %48, i32 noundef %conv59, i32 noundef %add197, i32 noundef %shr198, i32 noundef %shr199) #6, !dbg !4230
  %49 = load ptr, ptr %mc_chroma192, align 8, !dbg !4230
  %arrayidx203 = getelementptr inbounds i8, ptr %m, i64 72, !dbg !4230
  %50 = load ptr, ptr %arrayidx203, align 8, !dbg !4230
  %51 = load i32, ptr %arrayidx196, align 4, !dbg !4230
  tail call void %49(ptr noundef %arrayidx49, i32 noundef 32, ptr noundef %50, i32 noundef %51, i32 noundef %conv59, i32 noundef %add197, i32 noundef %shr198, i32 noundef %shr199) #6, !dbg !4230
  %.pre1405 = load i32, ptr %m, align 16, !dbg !4227
  br label %if.end209, !dbg !4230

if.end209:                                        ; preds = %if.then190, %if.then184
  %52 = phi i32 [ %.pre1405, %if.then190 ], [ %45, %if.then184 ], !dbg !4227
  %call211 = tail call i64 @x264_rd_cost_part(ptr noundef nonnull %h, i32 noundef %i_lambda2, i32 noundef %i4, i32 noundef %52) #6, !dbg !4227
    #dbg_value(i64 %call211, !4100, !DIExpression(), !4232)
  %cmp212 = icmp ult i64 %call211, %bcost.1, !dbg !4233
  %bmy.2 = select i1 %cmp212, i32 %conv62, i32 %conv20, !dbg !4227
  %bmx.2 = select i1 %cmp212, i32 %conv59, i32 %conv, !dbg !4227
  %bcost.2 = tail call i64 @llvm.umin.i64(i64 %call211, i64 %bcost.1), !dbg !4227
    #dbg_value(i64 %bcost.2, !4080, !DIExpression(), !4137)
    #dbg_value(i32 %bmx.2, !4081, !DIExpression(), !4137)
    #dbg_value(i32 %bmy.2, !4082, !DIExpression(), !4137)
  br label %if.end216, !dbg !4227

if.end216:                                        ; preds = %if.end209, %if.then152
  %bmy.3 = phi i32 [ %bmy.2, %if.end209 ], [ %conv20, %if.then152 ], !dbg !4137
  %bmx.3 = phi i32 [ %bmx.2, %if.end209 ], [ %conv, %if.then152 ], !dbg !4137
  %bcost.3 = phi i64 [ %bcost.2, %if.end209 ], [ %bcost.1, %if.then152 ], !dbg !4137
    #dbg_value(i64 %bcost.3, !4080, !DIExpression(), !4137)
    #dbg_value(i32 %bmx.3, !4081, !DIExpression(), !4137)
    #dbg_value(i32 %bmy.3, !4082, !DIExpression(), !4137)
  %cmp217 = icmp eq i32 %bmx.3, %conv59, !dbg !4235
  %cmp220 = icmp eq i32 %bmy.3, %conv62
  %or.cond1290 = select i1 %cmp217, i1 %cmp220, i1 false, !dbg !4237
  br i1 %or.cond1290, label %if.then222, label %if.end230, !dbg !4237

if.then222:                                       ; preds = %if.end216
  %53 = load i16, ptr %mv16, align 4, !dbg !4238
  %conv225 = sext i16 %53 to i32, !dbg !4238
    #dbg_value(i32 %conv225, !4085, !DIExpression(), !4137)
  %54 = load i16, ptr %arrayidx19, align 2, !dbg !4240
  %conv228 = sext i16 %54 to i32, !dbg !4240
    #dbg_value(i32 %conv228, !4086, !DIExpression(), !4137)
  br label %if.end230, !dbg !4241

if.end230:                                        ; preds = %if.end125, %if.end216, %if.then222, %land.lhs.true146, %land.lhs.true140, %land.lhs.true135, %land.lhs.true130
  %bsatd.2 = phi i32 [ %spec.select1289, %if.then222 ], [ %spec.select1289, %if.end216 ], [ %add80, %land.lhs.true146 ], [ %add80, %land.lhs.true140 ], [ %add80, %land.lhs.true135 ], [ %add80, %land.lhs.true130 ], [ %add80, %if.end125 ], !dbg !4137
  %pmy.0 = phi i32 [ %conv228, %if.then222 ], [ %conv62, %if.end216 ], [ %conv62, %land.lhs.true146 ], [ %conv62, %land.lhs.true140 ], [ %conv62, %land.lhs.true135 ], [ %conv62, %land.lhs.true130 ], [ %conv62, %if.end125 ], !dbg !4137
  %pmx.0 = phi i32 [ %conv225, %if.then222 ], [ %conv59, %if.end216 ], [ %conv59, %land.lhs.true146 ], [ %conv59, %land.lhs.true140 ], [ %conv59, %land.lhs.true135 ], [ %conv59, %land.lhs.true130 ], [ %conv59, %if.end125 ], !dbg !4137
  %bmy.4 = phi i32 [ %conv62, %if.then222 ], [ %bmy.3, %if.end216 ], [ %conv20, %land.lhs.true146 ], [ %conv20, %land.lhs.true140 ], [ %conv20, %land.lhs.true135 ], [ %conv20, %land.lhs.true130 ], [ %conv20, %if.end125 ], !dbg !4137
  %bmx.4 = phi i32 [ %conv59, %if.then222 ], [ %bmx.3, %if.end216 ], [ %conv, %land.lhs.true146 ], [ %conv, %land.lhs.true140 ], [ %conv, %land.lhs.true135 ], [ %conv, %land.lhs.true130 ], [ %conv, %if.end125 ], !dbg !4137
  %bcost.4 = phi i64 [ %bcost.3, %if.then222 ], [ %bcost.3, %if.end216 ], [ %bcost.1, %land.lhs.true146 ], [ %bcost.1, %land.lhs.true140 ], [ %bcost.1, %land.lhs.true135 ], [ %bcost.1, %land.lhs.true130 ], [ %bcost.1, %if.end125 ], !dbg !4137
    #dbg_value(i64 %bcost.4, !4080, !DIExpression(), !4137)
    #dbg_value(i32 %bmx.4, !4081, !DIExpression(), !4137)
    #dbg_value(i32 %bmy.4, !4082, !DIExpression(), !4137)
    #dbg_value(i32 %pmx.0, !4085, !DIExpression(), !4137)
    #dbg_value(i32 %pmy.0, !4086, !DIExpression(), !4137)
    #dbg_value(i32 %bsatd.2, !4087, !DIExpression(), !4137)
  %mv_min_spel232 = getelementptr inbounds i8, ptr %h, i64 16456, !dbg !4242
  %arrayidx233 = getelementptr inbounds i8, ptr %h, i64 16460, !dbg !4244
  %55 = load i32, ptr %arrayidx233, align 4, !dbg !4244
  %add234 = add nsw i32 %55, 3, !dbg !4245
  %cmp235 = icmp slt i32 %bmy.4, %add234, !dbg !4246
  br i1 %cmp235, label %cleanup846, label %lor.lhs.false237, !dbg !4247

lor.lhs.false237:                                 ; preds = %if.end230
  %mv_max_spel239 = getelementptr inbounds i8, ptr %h, i64 16464, !dbg !4248
  %arrayidx240 = getelementptr inbounds i8, ptr %h, i64 16468, !dbg !4249
  %56 = load i32, ptr %arrayidx240, align 4, !dbg !4249
  %sub241 = add nsw i32 %56, -3, !dbg !4250
  %cmp242 = icmp sgt i32 %bmy.4, %sub241, !dbg !4251
  br i1 %cmp242, label %cleanup846, label %lor.lhs.false244, !dbg !4252

lor.lhs.false244:                                 ; preds = %lor.lhs.false237
  %57 = load i32, ptr %mv_min_spel232, align 8, !dbg !4253
  %add248 = add nsw i32 %57, 3, !dbg !4254
  %cmp249 = icmp slt i32 %bmx.4, %add248, !dbg !4255
  br i1 %cmp249, label %cleanup846, label %lor.lhs.false251, !dbg !4256

lor.lhs.false251:                                 ; preds = %lor.lhs.false244
  %58 = load i32, ptr %mv_max_spel239, align 16, !dbg !4257
  %sub255 = add nsw i32 %58, -3, !dbg !4258
  %cmp256 = icmp sgt i32 %bmx.4, %sub255, !dbg !4259
  br i1 %cmp256, label %cleanup846, label %for.cond.preheader, !dbg !4260

for.cond.preheader:                               ; preds = %lor.lhs.false251
    #dbg_value(i64 %bcost.4, !4080, !DIExpression(), !4137)
    #dbg_value(i32 %bmx.4, !4081, !DIExpression(), !4137)
    #dbg_value(i32 %bmy.4, !4082, !DIExpression(), !4137)
    #dbg_value(i32 0, !4106, !DIExpression(), !4261)
    #dbg_value(i32 %bsatd.2, !4087, !DIExpression(), !4137)
    #dbg_value(i32 -2, !4089, !DIExpression(), !4137)
  %mc_chroma359 = getelementptr inbounds i8, ptr %h, i64 32632
  %arrayidx361 = getelementptr inbounds i8, ptr %m, i64 64
  %arrayidx363 = getelementptr inbounds i8, ptr %m, i64 124
  %shr377 = ashr i32 %2, 1
  %shr378 = ashr i32 %3, 1
  %arrayidx382 = getelementptr inbounds i8, ptr %m, i64 72
  br label %for.body, !dbg !4262

for.cond.cleanup:                                 ; preds = %for.inc
  %cmp420.not = icmp eq i32 %dir.4, -2, !dbg !4263
  br i1 %cmp420.not, label %if.end622, label %for.body427, !dbg !4264

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ]
  %bcost.51375 = phi i64 [ %bcost.4, %for.cond.preheader ], [ %bcost.7, %for.inc ]
  %bmx.51374 = phi i32 [ %bmx.4, %for.cond.preheader ], [ %bmx.7, %for.inc ]
  %bmy.51373 = phi i32 [ %bmy.4, %for.cond.preheader ], [ %bmy.7, %for.inc ]
  %bsatd.31371 = phi i32 [ %bsatd.2, %for.cond.preheader ], [ %bsatd.41351, %for.inc ]
  %dir.21370 = phi i32 [ -2, %for.cond.preheader ], [ %dir.4, %for.inc ]
    #dbg_value(i64 %bcost.51375, !4080, !DIExpression(), !4137)
    #dbg_value(i32 %bmx.51374, !4081, !DIExpression(), !4137)
    #dbg_value(i32 %bmy.51373, !4082, !DIExpression(), !4137)
    #dbg_value(i64 %indvars.iv, !4106, !DIExpression(), !4261)
    #dbg_value(i32 %bsatd.31371, !4087, !DIExpression(), !4137)
    #dbg_value(i32 %dir.21370, !4089, !DIExpression(), !4137)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4265
  %arrayidx266 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %indvars.iv.next, !dbg !4265
  %59 = load i8, ptr %arrayidx266, align 2, !dbg !4265
  %conv268 = sext i8 %59 to i32, !dbg !4265
  %add269 = add nsw i32 %bmx.4, %conv268, !dbg !4265
  %cmp270 = icmp eq i32 %add269, %pmx.0, !dbg !4265
  %arrayidx276 = getelementptr inbounds i8, ptr %arrayidx266, i64 1
  %60 = load i8, ptr %arrayidx276, align 1, !dbg !4265
  %conv277 = sext i8 %60 to i32, !dbg !4265
  %add278 = add nsw i32 %bmy.4, %conv277, !dbg !4265
  %cmp279 = icmp eq i32 %add278, %pmy.0, !dbg !4265
  %or.cond1437 = select i1 %cmp270, i1 %cmp279, i1 false, !dbg !4265
  br i1 %or.cond1437, label %for.inc, label %if.end334, !dbg !4265

if.end334:                                        ; preds = %for.body
  %61 = load ptr, ptr %mc, align 8, !dbg !4268
  %62 = load i32, ptr %i_stride, align 8, !dbg !4268
  %63 = load ptr, ptr %weight, align 8, !dbg !4268
  tail call void %61(ptr noundef %arrayidx26, i32 noundef 32, ptr noundef nonnull %p_fref, i32 noundef %62, i32 noundef %add269, i32 noundef %add278, i32 noundef %2, i32 noundef %3, ptr noundef %63) #6, !dbg !4268
  %64 = load ptr, ptr %arrayidx71, align 8, !dbg !4268
  %65 = load ptr, ptr %p_fenc, align 8, !dbg !4268
  %call308 = tail call i32 %64(ptr noundef %65, i32 noundef 16, ptr noundef %arrayidx26, i32 noundef 32) #6, !dbg !4268
  %idxprom315 = sext i32 %add269 to i64, !dbg !4268
  %arrayidx316 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom315, !dbg !4268
  %66 = load i16, ptr %arrayidx316, align 2, !dbg !4268
  %conv317 = zext i16 %66 to i32, !dbg !4268
  %add318 = add nsw i32 %call308, %conv317, !dbg !4268
  %idxprom325 = sext i32 %add278 to i64, !dbg !4268
  %arrayidx326 = getelementptr inbounds i16, ptr %add.ptr66, i64 %idxprom325, !dbg !4268
  %67 = load i16, ptr %arrayidx326, align 2, !dbg !4268
  %conv327 = zext i16 %67 to i32, !dbg !4268
  %add328 = add nsw i32 %add318, %conv327, !dbg !4268
    #dbg_value(i32 %add328, !4088, !DIExpression(), !4137)
  %spec.select1291 = tail call i32 @llvm.smin.i32(i32 %add328, i32 %bsatd.31371), !dbg !4268
    #dbg_value(i32 %spec.select1291, !4087, !DIExpression(), !4137)
  %mul335 = mul nsw i32 %spec.select1291, 17, !dbg !4270
  %div336 = sdiv i32 %mul335, 16, !dbg !4270
  %cmp337.not = icmp sgt i32 %add328, %div336, !dbg !4270
  br i1 %cmp337.not, label %for.inc, label %if.then339, !dbg !4271

if.then339:                                       ; preds = %if.end334
    #dbg_value(i32 %add269, !1907, !DIExpression(), !4272)
    #dbg_value(i32 %add278, !1912, !DIExpression(), !4272)
  %and.i1298 = and i32 %add269, 65535, !dbg !4274
  %shl.i1299 = shl i32 %add278, 16, !dbg !4275
  %add.i1300 = or disjoint i32 %shl.i1299, %and.i1298, !dbg !4276
  store i32 %add.i1300, ptr %arrayidx4, align 4, !dbg !4277
  %68 = load i32, ptr %m, align 16, !dbg !4278
  %cmp355 = icmp slt i32 %68, 4, !dbg !4278
  br i1 %cmp355, label %if.then357, label %if.end400, !dbg !4277

if.then357:                                       ; preds = %if.then339
  %69 = load ptr, ptr %mc_chroma359, align 8, !dbg !4280
  %70 = load ptr, ptr %arrayidx361, align 16, !dbg !4280
  %71 = load i32, ptr %arrayidx363, align 4, !dbg !4280
  %add376 = add nsw i32 %add278, %cond, !dbg !4280
  tail call void %69(ptr noundef %arrayidx37, i32 noundef 32, ptr noundef %70, i32 noundef %71, i32 noundef %add269, i32 noundef %add376, i32 noundef %shr377, i32 noundef %shr378) #6, !dbg !4280
  %72 = load ptr, ptr %mc_chroma359, align 8, !dbg !4280
  %73 = load ptr, ptr %arrayidx382, align 8, !dbg !4280
  %74 = load i32, ptr %arrayidx363, align 4, !dbg !4280
  tail call void %72(ptr noundef %arrayidx49, i32 noundef 32, ptr noundef %73, i32 noundef %74, i32 noundef %add269, i32 noundef %add376, i32 noundef %shr377, i32 noundef %shr378) #6, !dbg !4280
  %.pre1407 = load i32, ptr %m, align 16, !dbg !4277
  br label %if.end400, !dbg !4280

if.end400:                                        ; preds = %if.then357, %if.then339
  %75 = phi i32 [ %.pre1407, %if.then357 ], [ %68, %if.then339 ], !dbg !4277
  %call402 = tail call i64 @x264_rd_cost_part(ptr noundef nonnull %h, i32 noundef %i_lambda2, i32 noundef %i4, i32 noundef %75) #6, !dbg !4277
    #dbg_value(i64 %call402, !4108, !DIExpression(), !4282)
  %cmp403 = icmp ult i64 %call402, %bcost.51375, !dbg !4283
  br i1 %cmp403, label %if.then405, label %for.inc, !dbg !4277

if.then405:                                       ; preds = %if.end400
    #dbg_value(i64 %call402, !4080, !DIExpression(), !4137)
    #dbg_value(i32 %add269, !4081, !DIExpression(), !4137)
    #dbg_value(i32 %add278, !4082, !DIExpression(), !4137)
    #dbg_value(i64 %indvars.iv, !4089, !DIExpression(), !4137)
  %76 = trunc nuw nsw i64 %indvars.iv to i32, !dbg !4285
  br label %for.inc, !dbg !4285

for.inc:                                          ; preds = %for.body, %if.end400, %if.then405, %if.end334
  %bsatd.41351 = phi i32 [ %spec.select1291, %if.end334 ], [ %spec.select1291, %if.then405 ], [ %spec.select1291, %if.end400 ], [ %bsatd.31371, %for.body ]
  %dir.4 = phi i32 [ %dir.21370, %if.end334 ], [ %76, %if.then405 ], [ %dir.21370, %if.end400 ], [ %dir.21370, %for.body ], !dbg !4137
  %bmy.7 = phi i32 [ %bmy.51373, %if.end334 ], [ %add278, %if.then405 ], [ %bmy.51373, %if.end400 ], [ %bmy.51373, %for.body ], !dbg !4137
  %bmx.7 = phi i32 [ %bmx.51374, %if.end334 ], [ %add269, %if.then405 ], [ %bmx.51374, %if.end400 ], [ %bmx.51374, %for.body ], !dbg !4137
  %bcost.7 = phi i64 [ %bcost.51375, %if.end334 ], [ %call402, %if.then405 ], [ %bcost.51375, %if.end400 ], [ %bcost.51375, %for.body ], !dbg !4137
    #dbg_value(i64 %bcost.7, !4080, !DIExpression(), !4137)
    #dbg_value(i32 %bmx.7, !4081, !DIExpression(), !4137)
    #dbg_value(i32 %bmy.7, !4082, !DIExpression(), !4137)
    #dbg_value(i64 %indvars.iv.next, !4106, !DIExpression(), !4261)
    #dbg_value(i32 %bsatd.41351, !4087, !DIExpression(), !4137)
    #dbg_value(i32 %dir.4, !4089, !DIExpression(), !4137)
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6, !dbg !4287
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !4262, !llvm.loop !4288

for.cond423:                                      ; preds = %for.inc611.2.thread, %for.inc611.2
  %bcost.11.21436 = phi i64 [ %call591.2, %for.inc611.2.thread ], [ %bcost.11.1, %for.inc611.2 ]
  %bmx.11.21435 = phi i32 [ %add458.2, %for.inc611.2.thread ], [ %bmx.11.1, %for.inc611.2 ]
  %bmy.11.21434 = phi i32 [ %add467.2, %for.inc611.2.thread ], [ %bmy.11.1, %for.inc611.2 ]
  %dir.8.21433 = phi i32 [ %134, %for.inc611.2.thread ], [ %dir.8.1, %for.inc611.2 ]
  %bsatd.71357.21432 = phi i32 [ %spec.select1292.2, %for.inc611.2.thread ], [ %bsatd.71357.2, %for.inc611.2 ]
  %inc619 = add nuw nsw i32 %i.01384, 1, !dbg !4290
    #dbg_value(i64 %bcost.11.21436, !4080, !DIExpression(), !4137)
    #dbg_value(i32 %bmx.11.21435, !4081, !DIExpression(), !4137)
    #dbg_value(i32 %bmy.11.21434, !4082, !DIExpression(), !4137)
    #dbg_value(i32 %inc619, !4114, !DIExpression(), !4291)
    #dbg_value(i32 %bsatd.71357.21432, !4087, !DIExpression(), !4137)
    #dbg_value(i32 %dir.8.21433, !4089, !DIExpression(), !4137)
  %exitcond1400.not = icmp eq i32 %inc619, 10, !dbg !4292
  br i1 %exitcond1400.not, label %if.end622, label %for.body427, !dbg !4293, !llvm.loop !4294

for.body427:                                      ; preds = %for.cond.cleanup, %for.cond423
  %bcost.81387 = phi i64 [ %bcost.11.21436, %for.cond423 ], [ %bcost.7, %for.cond.cleanup ]
  %bmx.81386 = phi i32 [ %bmx.11.21435, %for.cond423 ], [ %bmx.7, %for.cond.cleanup ]
  %bmy.81385 = phi i32 [ %bmy.11.21434, %for.cond423 ], [ %bmy.7, %for.cond.cleanup ]
  %i.01384 = phi i32 [ %inc619, %for.cond423 ], [ 1, %for.cond.cleanup ]
  %bsatd.51383 = phi i32 [ %bsatd.71357.21432, %for.cond423 ], [ %bsatd.41351, %for.cond.cleanup ]
  %dir.51382 = phi i32 [ %dir.8.21433, %for.cond423 ], [ %dir.4, %for.cond.cleanup ]
    #dbg_value(i64 %bcost.81387, !4080, !DIExpression(), !4137)
    #dbg_value(i32 %bmx.81386, !4081, !DIExpression(), !4137)
    #dbg_value(i32 %bmy.81385, !4082, !DIExpression(), !4137)
    #dbg_value(i32 %i.01384, !4114, !DIExpression(), !4291)
    #dbg_value(i32 %bsatd.51383, !4087, !DIExpression(), !4137)
    #dbg_value(i32 %dir.51382, !4089, !DIExpression(), !4137)
  %add428 = add nsw i32 %dir.51382, 1, !dbg !4296
  %idxprom429 = sext i32 %add428 to i64, !dbg !4297
  %arrayidx430 = getelementptr inbounds [8 x i8], ptr @mod6m1, i64 0, i64 %idxprom429, !dbg !4297
  %77 = load i8, ptr %arrayidx430, align 1, !dbg !4297
  %conv431 = zext i8 %77 to i32, !dbg !4297
    #dbg_value(i32 %conv431, !4118, !DIExpression(), !4298)
  %78 = load i32, ptr %arrayidx233, align 4, !dbg !4299
  %add435 = add nsw i32 %78, 3, !dbg !4301
  %cmp436 = icmp slt i32 %bmy.81385, %add435, !dbg !4302
  br i1 %cmp436, label %if.end622, label %lor.lhs.false438, !dbg !4303

lor.lhs.false438:                                 ; preds = %for.body427
  %79 = load i32, ptr %arrayidx240, align 4, !dbg !4304
  %sub442 = add nsw i32 %79, -3, !dbg !4305
  %cmp443 = icmp sgt i32 %bmy.81385, %sub442, !dbg !4306
  br i1 %cmp443, label %if.end622, label %for.cond448.preheader, !dbg !4307

for.cond448.preheader:                            ; preds = %lor.lhs.false438
    #dbg_value(i64 %bcost.81387, !4080, !DIExpression(), !4137)
    #dbg_value(i32 %bmx.81386, !4081, !DIExpression(), !4137)
    #dbg_value(i32 0, !4121, !DIExpression(), !4308)
    #dbg_value(i32 %bmy.81385, !4082, !DIExpression(), !4137)
    #dbg_value(i32 %bsatd.51383, !4087, !DIExpression(), !4137)
    #dbg_value(i32 -2, !4089, !DIExpression(), !4137)
  %sub607 = add nsw i32 %conv431, -1
  %80 = zext i8 %77 to i64, !dbg !4309
    #dbg_value(i64 0, !4121, !DIExpression(), !4308)
  %arrayidx455 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %80, !dbg !4310
  %81 = load i8, ptr %arrayidx455, align 2, !dbg !4310
  %conv457 = sext i8 %81 to i32, !dbg !4310
  %add458 = add nsw i32 %bmx.81386, %conv457, !dbg !4310
  %cmp459 = icmp eq i32 %add458, %pmx.0, !dbg !4310
  %arrayidx465 = getelementptr inbounds i8, ptr %arrayidx455, i64 1
  %82 = load i8, ptr %arrayidx465, align 1, !dbg !4310
  %conv466 = sext i8 %82 to i32, !dbg !4310
  %add467 = add nsw i32 %bmy.81385, %conv466, !dbg !4310
  %cmp468 = icmp eq i32 %add467, %pmy.0, !dbg !4310
  %or.cond1438 = select i1 %cmp459, i1 %cmp468, i1 false, !dbg !4310
  br i1 %or.cond1438, label %for.inc611, label %if.end523, !dbg !4310

if.end523:                                        ; preds = %for.cond448.preheader
  %83 = load ptr, ptr %mc, align 8, !dbg !4313
  %84 = load i32, ptr %i_stride, align 8, !dbg !4313
  %85 = load ptr, ptr %weight, align 8, !dbg !4313
  tail call void %83(ptr noundef %arrayidx26, i32 noundef 32, ptr noundef nonnull %p_fref, i32 noundef %84, i32 noundef %add458, i32 noundef %add467, i32 noundef %2, i32 noundef %3, ptr noundef %85) #6, !dbg !4313
  %86 = load ptr, ptr %arrayidx71, align 8, !dbg !4313
  %87 = load ptr, ptr %p_fenc, align 8, !dbg !4313
  %call497 = tail call i32 %86(ptr noundef %87, i32 noundef 16, ptr noundef %arrayidx26, i32 noundef 32) #6, !dbg !4313
  %idxprom504 = sext i32 %add458 to i64, !dbg !4313
  %arrayidx505 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom504, !dbg !4313
  %88 = load i16, ptr %arrayidx505, align 2, !dbg !4313
  %conv506 = zext i16 %88 to i32, !dbg !4313
  %add507 = add nsw i32 %call497, %conv506, !dbg !4313
  %idxprom514 = sext i32 %add467 to i64, !dbg !4313
  %arrayidx515 = getelementptr inbounds i16, ptr %add.ptr66, i64 %idxprom514, !dbg !4313
  %89 = load i16, ptr %arrayidx515, align 2, !dbg !4313
  %conv516 = zext i16 %89 to i32, !dbg !4313
  %add517 = add nsw i32 %add507, %conv516, !dbg !4313
    #dbg_value(i32 %add517, !4088, !DIExpression(), !4137)
  %spec.select1292 = tail call i32 @llvm.smin.i32(i32 %add517, i32 %bsatd.51383), !dbg !4313
    #dbg_value(i32 %spec.select1292, !4087, !DIExpression(), !4137)
  %mul524 = mul nsw i32 %spec.select1292, 17, !dbg !4315
  %div525 = sdiv i32 %mul524, 16, !dbg !4315
  %cmp526.not = icmp sgt i32 %add517, %div525, !dbg !4315
  br i1 %cmp526.not, label %for.inc611, label %if.then528, !dbg !4316

if.then528:                                       ; preds = %if.end523
    #dbg_value(i32 %add458, !1907, !DIExpression(), !4317)
    #dbg_value(i32 %add467, !1912, !DIExpression(), !4317)
  %and.i1301 = and i32 %add458, 65535, !dbg !4319
  %shl.i1302 = shl i32 %add467, 16, !dbg !4320
  %add.i1303 = or disjoint i32 %shl.i1302, %and.i1301, !dbg !4321
  store i32 %add.i1303, ptr %arrayidx4, align 4, !dbg !4322
  %90 = load i32, ptr %m, align 16, !dbg !4323
  %cmp544 = icmp slt i32 %90, 4, !dbg !4323
  br i1 %cmp544, label %if.then546, label %if.end589, !dbg !4322

if.then546:                                       ; preds = %if.then528
  %91 = load ptr, ptr %mc_chroma359, align 8, !dbg !4325
  %92 = load ptr, ptr %arrayidx361, align 16, !dbg !4325
  %93 = load i32, ptr %arrayidx363, align 4, !dbg !4325
  %add565 = add nsw i32 %add467, %cond, !dbg !4325
  tail call void %91(ptr noundef %arrayidx37, i32 noundef 32, ptr noundef %92, i32 noundef %93, i32 noundef %add458, i32 noundef %add565, i32 noundef %shr377, i32 noundef %shr378) #6, !dbg !4325
  %94 = load ptr, ptr %mc_chroma359, align 8, !dbg !4325
  %95 = load ptr, ptr %arrayidx382, align 8, !dbg !4325
  %96 = load i32, ptr %arrayidx363, align 4, !dbg !4325
  tail call void %94(ptr noundef %arrayidx49, i32 noundef 32, ptr noundef %95, i32 noundef %96, i32 noundef %add458, i32 noundef %add565, i32 noundef %shr377, i32 noundef %shr378) #6, !dbg !4325
  %.pre1409 = load i32, ptr %m, align 16, !dbg !4322
  br label %if.end589, !dbg !4325

if.end589:                                        ; preds = %if.then546, %if.then528
  %97 = phi i32 [ %.pre1409, %if.then546 ], [ %90, %if.then528 ], !dbg !4322
  %call591 = tail call i64 @x264_rd_cost_part(ptr noundef nonnull %h, i32 noundef %i_lambda2, i32 noundef %i4, i32 noundef %97) #6, !dbg !4322
    #dbg_value(i64 %call591, !4123, !DIExpression(), !4327)
  %cmp592 = icmp ult i64 %call591, %bcost.81387, !dbg !4328
  br i1 %cmp592, label %if.then594, label %for.inc611, !dbg !4322

if.then594:                                       ; preds = %if.end589
    #dbg_value(i64 %call591, !4080, !DIExpression(), !4137)
    #dbg_value(i32 %add458, !4081, !DIExpression(), !4137)
    #dbg_value(i32 %add467, !4082, !DIExpression(), !4137)
    #dbg_value(i32 %sub607, !4089, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4137)
  br label %for.inc611, !dbg !4330

for.inc611:                                       ; preds = %for.cond448.preheader, %if.end589, %if.then594, %if.end523
  %bsatd.71357 = phi i32 [ %spec.select1292, %if.end523 ], [ %spec.select1292, %if.then594 ], [ %spec.select1292, %if.end589 ], [ %bsatd.51383, %for.cond448.preheader ]
  %dir.8 = phi i32 [ -2, %if.end523 ], [ %sub607, %if.then594 ], [ -2, %if.end589 ], [ -2, %for.cond448.preheader ], !dbg !4298
  %bmy.11 = phi i32 [ %bmy.81385, %if.end523 ], [ %add467, %if.then594 ], [ %bmy.81385, %if.end589 ], [ %bmy.81385, %for.cond448.preheader ], !dbg !4137
  %bmx.11 = phi i32 [ %bmx.81386, %if.end523 ], [ %add458, %if.then594 ], [ %bmx.81386, %if.end589 ], [ %bmx.81386, %for.cond448.preheader ], !dbg !4137
  %bcost.11 = phi i64 [ %bcost.81387, %if.end523 ], [ %call591, %if.then594 ], [ %bcost.81387, %if.end589 ], [ %bcost.81387, %for.cond448.preheader ], !dbg !4137
    #dbg_value(i64 %bcost.11, !4080, !DIExpression(), !4137)
    #dbg_value(i32 %bmx.11, !4081, !DIExpression(), !4137)
    #dbg_value(i32 %bmy.11, !4082, !DIExpression(), !4137)
    #dbg_value(i32 %dir.8, !4089, !DIExpression(), !4137)
    #dbg_value(i64 1, !4121, !DIExpression(), !4308)
    #dbg_value(i32 %bsatd.71357, !4087, !DIExpression(), !4137)
  %98 = add nuw nsw i64 %80, 1, !dbg !4310
  %arrayidx455.1 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %98, !dbg !4310
  %99 = load i8, ptr %arrayidx455.1, align 2, !dbg !4310
  %conv457.1 = sext i8 %99 to i32, !dbg !4310
  %add458.1 = add nsw i32 %bmx.81386, %conv457.1, !dbg !4310
  %cmp459.1 = icmp eq i32 %add458.1, %pmx.0, !dbg !4310
  %arrayidx465.1 = getelementptr inbounds i8, ptr %arrayidx455.1, i64 1
  %100 = load i8, ptr %arrayidx465.1, align 1, !dbg !4310
  %conv466.1 = sext i8 %100 to i32, !dbg !4310
  %add467.1 = add nsw i32 %bmy.81385, %conv466.1, !dbg !4310
  %cmp468.1 = icmp eq i32 %add467.1, %pmy.0, !dbg !4310
  %or.cond1439 = select i1 %cmp459.1, i1 %cmp468.1, i1 false, !dbg !4310
  br i1 %or.cond1439, label %for.inc611.1, label %if.end523.1, !dbg !4310

if.end523.1:                                      ; preds = %for.inc611
  %101 = load ptr, ptr %mc, align 8, !dbg !4313
  %102 = load i32, ptr %i_stride, align 8, !dbg !4313
  %103 = load ptr, ptr %weight, align 8, !dbg !4313
  tail call void %101(ptr noundef %arrayidx26, i32 noundef 32, ptr noundef nonnull %p_fref, i32 noundef %102, i32 noundef %add458.1, i32 noundef %add467.1, i32 noundef %2, i32 noundef %3, ptr noundef %103) #6, !dbg !4313
  %104 = load ptr, ptr %arrayidx71, align 8, !dbg !4313
  %105 = load ptr, ptr %p_fenc, align 8, !dbg !4313
  %call497.1 = tail call i32 %104(ptr noundef %105, i32 noundef 16, ptr noundef %arrayidx26, i32 noundef 32) #6, !dbg !4313
  %idxprom504.1 = sext i32 %add458.1 to i64, !dbg !4313
  %arrayidx505.1 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom504.1, !dbg !4313
  %106 = load i16, ptr %arrayidx505.1, align 2, !dbg !4313
  %conv506.1 = zext i16 %106 to i32, !dbg !4313
  %add507.1 = add nsw i32 %call497.1, %conv506.1, !dbg !4313
  %idxprom514.1 = sext i32 %add467.1 to i64, !dbg !4313
  %arrayidx515.1 = getelementptr inbounds i16, ptr %add.ptr66, i64 %idxprom514.1, !dbg !4313
  %107 = load i16, ptr %arrayidx515.1, align 2, !dbg !4313
  %conv516.1 = zext i16 %107 to i32, !dbg !4313
  %add517.1 = add nsw i32 %add507.1, %conv516.1, !dbg !4313
    #dbg_value(i32 %add517.1, !4088, !DIExpression(), !4137)
  %spec.select1292.1 = tail call i32 @llvm.smin.i32(i32 %add517.1, i32 %bsatd.71357), !dbg !4313
    #dbg_value(i32 %spec.select1292.1, !4087, !DIExpression(), !4137)
  %mul524.1 = mul nsw i32 %spec.select1292.1, 17, !dbg !4315
  %div525.1 = sdiv i32 %mul524.1, 16, !dbg !4315
  %cmp526.not.1 = icmp sgt i32 %add517.1, %div525.1, !dbg !4315
  br i1 %cmp526.not.1, label %for.inc611.1, label %if.then528.1, !dbg !4316

if.then528.1:                                     ; preds = %if.end523.1
    #dbg_value(i32 %add458.1, !1907, !DIExpression(), !4317)
    #dbg_value(i32 %add467.1, !1912, !DIExpression(), !4317)
  %and.i1301.1 = and i32 %add458.1, 65535, !dbg !4319
  %shl.i1302.1 = shl i32 %add467.1, 16, !dbg !4320
  %add.i1303.1 = or disjoint i32 %shl.i1302.1, %and.i1301.1, !dbg !4321
  store i32 %add.i1303.1, ptr %arrayidx4, align 4, !dbg !4322
  %108 = load i32, ptr %m, align 16, !dbg !4323
  %cmp544.1 = icmp slt i32 %108, 4, !dbg !4323
  br i1 %cmp544.1, label %if.then546.1, label %if.end589.1, !dbg !4322

if.then546.1:                                     ; preds = %if.then528.1
  %109 = load ptr, ptr %mc_chroma359, align 8, !dbg !4325
  %110 = load ptr, ptr %arrayidx361, align 16, !dbg !4325
  %111 = load i32, ptr %arrayidx363, align 4, !dbg !4325
  %add565.1 = add nsw i32 %add467.1, %cond, !dbg !4325
  tail call void %109(ptr noundef %arrayidx37, i32 noundef 32, ptr noundef %110, i32 noundef %111, i32 noundef %add458.1, i32 noundef %add565.1, i32 noundef %shr377, i32 noundef %shr378) #6, !dbg !4325
  %112 = load ptr, ptr %mc_chroma359, align 8, !dbg !4325
  %113 = load ptr, ptr %arrayidx382, align 8, !dbg !4325
  %114 = load i32, ptr %arrayidx363, align 4, !dbg !4325
  tail call void %112(ptr noundef %arrayidx49, i32 noundef 32, ptr noundef %113, i32 noundef %114, i32 noundef %add458.1, i32 noundef %add565.1, i32 noundef %shr377, i32 noundef %shr378) #6, !dbg !4325
  %.pre1411 = load i32, ptr %m, align 16, !dbg !4322
  br label %if.end589.1, !dbg !4325

if.end589.1:                                      ; preds = %if.then546.1, %if.then528.1
  %115 = phi i32 [ %.pre1411, %if.then546.1 ], [ %108, %if.then528.1 ], !dbg !4322
  %call591.1 = tail call i64 @x264_rd_cost_part(ptr noundef nonnull %h, i32 noundef %i_lambda2, i32 noundef %i4, i32 noundef %115) #6, !dbg !4322
    #dbg_value(i64 %call591.1, !4123, !DIExpression(), !4327)
  %cmp592.1 = icmp ult i64 %call591.1, %bcost.11, !dbg !4328
  br i1 %cmp592.1, label %if.then594.1, label %for.inc611.1, !dbg !4322

if.then594.1:                                     ; preds = %if.end589.1
    #dbg_value(i64 %call591.1, !4080, !DIExpression(), !4137)
    #dbg_value(i32 %add458.1, !4081, !DIExpression(), !4137)
    #dbg_value(i32 %add467.1, !4082, !DIExpression(), !4137)
    #dbg_value(i32 %sub607, !4089, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus_uconst, 1, DW_OP_stack_value), !4137)
  br label %for.inc611.1, !dbg !4330

for.inc611.1:                                     ; preds = %for.inc611, %if.then594.1, %if.end589.1, %if.end523.1
  %bsatd.71357.1 = phi i32 [ %spec.select1292.1, %if.end523.1 ], [ %spec.select1292.1, %if.then594.1 ], [ %spec.select1292.1, %if.end589.1 ], [ %bsatd.71357, %for.inc611 ]
  %dir.8.1 = phi i32 [ %dir.8, %if.end523.1 ], [ %conv431, %if.then594.1 ], [ %dir.8, %if.end589.1 ], [ %dir.8, %for.inc611 ], !dbg !4298
  %bmy.11.1 = phi i32 [ %bmy.11, %if.end523.1 ], [ %add467.1, %if.then594.1 ], [ %bmy.11, %if.end589.1 ], [ %bmy.11, %for.inc611 ], !dbg !4137
  %bmx.11.1 = phi i32 [ %bmx.11, %if.end523.1 ], [ %add458.1, %if.then594.1 ], [ %bmx.11, %if.end589.1 ], [ %bmx.11, %for.inc611 ], !dbg !4137
  %bcost.11.1 = phi i64 [ %bcost.11, %if.end523.1 ], [ %call591.1, %if.then594.1 ], [ %bcost.11, %if.end589.1 ], [ %bcost.11, %for.inc611 ], !dbg !4137
    #dbg_value(i64 %bcost.11.1, !4080, !DIExpression(), !4137)
    #dbg_value(i32 %bmx.11.1, !4081, !DIExpression(), !4137)
    #dbg_value(i32 %bmy.11.1, !4082, !DIExpression(), !4137)
    #dbg_value(i32 %dir.8.1, !4089, !DIExpression(), !4137)
    #dbg_value(i64 2, !4121, !DIExpression(), !4308)
    #dbg_value(i32 %bsatd.71357.1, !4087, !DIExpression(), !4137)
  %116 = add nuw nsw i64 %80, 2, !dbg !4310
  %arrayidx455.2 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %116, !dbg !4310
  %117 = load i8, ptr %arrayidx455.2, align 2, !dbg !4310
  %conv457.2 = sext i8 %117 to i32, !dbg !4310
  %add458.2 = add nsw i32 %bmx.81386, %conv457.2, !dbg !4310
  %cmp459.2 = icmp eq i32 %add458.2, %pmx.0, !dbg !4310
  %arrayidx465.2 = getelementptr inbounds i8, ptr %arrayidx455.2, i64 1
  %118 = load i8, ptr %arrayidx465.2, align 1, !dbg !4310
  %conv466.2 = sext i8 %118 to i32, !dbg !4310
  %add467.2 = add nsw i32 %bmy.81385, %conv466.2, !dbg !4310
  %cmp468.2 = icmp eq i32 %add467.2, %pmy.0, !dbg !4310
  %or.cond1440 = select i1 %cmp459.2, i1 %cmp468.2, i1 false, !dbg !4310
  br i1 %or.cond1440, label %for.inc611.2, label %if.end523.2, !dbg !4310

if.end523.2:                                      ; preds = %for.inc611.1
  %119 = load ptr, ptr %mc, align 8, !dbg !4313
  %120 = load i32, ptr %i_stride, align 8, !dbg !4313
  %121 = load ptr, ptr %weight, align 8, !dbg !4313
  tail call void %119(ptr noundef %arrayidx26, i32 noundef 32, ptr noundef nonnull %p_fref, i32 noundef %120, i32 noundef %add458.2, i32 noundef %add467.2, i32 noundef %2, i32 noundef %3, ptr noundef %121) #6, !dbg !4313
  %122 = load ptr, ptr %arrayidx71, align 8, !dbg !4313
  %123 = load ptr, ptr %p_fenc, align 8, !dbg !4313
  %call497.2 = tail call i32 %122(ptr noundef %123, i32 noundef 16, ptr noundef %arrayidx26, i32 noundef 32) #6, !dbg !4313
  %idxprom504.2 = sext i32 %add458.2 to i64, !dbg !4313
  %arrayidx505.2 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom504.2, !dbg !4313
  %124 = load i16, ptr %arrayidx505.2, align 2, !dbg !4313
  %conv506.2 = zext i16 %124 to i32, !dbg !4313
  %add507.2 = add nsw i32 %call497.2, %conv506.2, !dbg !4313
  %idxprom514.2 = sext i32 %add467.2 to i64, !dbg !4313
  %arrayidx515.2 = getelementptr inbounds i16, ptr %add.ptr66, i64 %idxprom514.2, !dbg !4313
  %125 = load i16, ptr %arrayidx515.2, align 2, !dbg !4313
  %conv516.2 = zext i16 %125 to i32, !dbg !4313
  %add517.2 = add nsw i32 %add507.2, %conv516.2, !dbg !4313
    #dbg_value(i32 %add517.2, !4088, !DIExpression(), !4137)
  %spec.select1292.2 = tail call i32 @llvm.smin.i32(i32 %add517.2, i32 %bsatd.71357.1), !dbg !4313
    #dbg_value(i32 %spec.select1292.2, !4087, !DIExpression(), !4137)
  %mul524.2 = mul nsw i32 %spec.select1292.2, 17, !dbg !4315
  %div525.2 = sdiv i32 %mul524.2, 16, !dbg !4315
  %cmp526.not.2 = icmp sgt i32 %add517.2, %div525.2, !dbg !4315
  br i1 %cmp526.not.2, label %for.inc611.2, label %if.then528.2, !dbg !4316

if.then528.2:                                     ; preds = %if.end523.2
    #dbg_value(i32 %add458.2, !1907, !DIExpression(), !4317)
    #dbg_value(i32 %add467.2, !1912, !DIExpression(), !4317)
  %and.i1301.2 = and i32 %add458.2, 65535, !dbg !4319
  %shl.i1302.2 = shl i32 %add467.2, 16, !dbg !4320
  %add.i1303.2 = or disjoint i32 %shl.i1302.2, %and.i1301.2, !dbg !4321
  store i32 %add.i1303.2, ptr %arrayidx4, align 4, !dbg !4322
  %126 = load i32, ptr %m, align 16, !dbg !4323
  %cmp544.2 = icmp slt i32 %126, 4, !dbg !4323
  br i1 %cmp544.2, label %if.then546.2, label %if.end589.2, !dbg !4322

if.then546.2:                                     ; preds = %if.then528.2
  %127 = load ptr, ptr %mc_chroma359, align 8, !dbg !4325
  %128 = load ptr, ptr %arrayidx361, align 16, !dbg !4325
  %129 = load i32, ptr %arrayidx363, align 4, !dbg !4325
  %add565.2 = add nsw i32 %add467.2, %cond, !dbg !4325
  tail call void %127(ptr noundef %arrayidx37, i32 noundef 32, ptr noundef %128, i32 noundef %129, i32 noundef %add458.2, i32 noundef %add565.2, i32 noundef %shr377, i32 noundef %shr378) #6, !dbg !4325
  %130 = load ptr, ptr %mc_chroma359, align 8, !dbg !4325
  %131 = load ptr, ptr %arrayidx382, align 8, !dbg !4325
  %132 = load i32, ptr %arrayidx363, align 4, !dbg !4325
  tail call void %130(ptr noundef %arrayidx49, i32 noundef 32, ptr noundef %131, i32 noundef %132, i32 noundef %add458.2, i32 noundef %add565.2, i32 noundef %shr377, i32 noundef %shr378) #6, !dbg !4325
  %.pre1413 = load i32, ptr %m, align 16, !dbg !4322
  br label %if.end589.2, !dbg !4325

if.end589.2:                                      ; preds = %if.then546.2, %if.then528.2
  %133 = phi i32 [ %.pre1413, %if.then546.2 ], [ %126, %if.then528.2 ], !dbg !4322
  %call591.2 = tail call i64 @x264_rd_cost_part(ptr noundef nonnull %h, i32 noundef %i_lambda2, i32 noundef %i4, i32 noundef %133) #6, !dbg !4322
    #dbg_value(i64 %call591.2, !4123, !DIExpression(), !4327)
  %cmp592.2 = icmp ult i64 %call591.2, %bcost.11.1, !dbg !4328
  br i1 %cmp592.2, label %for.inc611.2.thread, label %for.inc611.2, !dbg !4322

for.inc611.2.thread:                              ; preds = %if.end589.2
    #dbg_value(i64 %call591.2, !4080, !DIExpression(), !4137)
    #dbg_value(i32 %add458.2, !4081, !DIExpression(), !4137)
    #dbg_value(i32 %add467.2, !4082, !DIExpression(), !4137)
  %134 = add nuw nsw i32 %conv431, 1, !dbg !4330
    #dbg_value(i32 %134, !4089, !DIExpression(), !4137)
    #dbg_value(i64 3, !4121, !DIExpression(), !4308)
    #dbg_value(i32 %spec.select1292.2, !4087, !DIExpression(), !4137)
    #dbg_value(i32 %i.01384, !4114, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4291)
  br label %for.cond423

for.inc611.2:                                     ; preds = %for.inc611.1, %if.end589.2, %if.end523.2
  %bsatd.71357.2 = phi i32 [ %spec.select1292.2, %if.end523.2 ], [ %spec.select1292.2, %if.end589.2 ], [ %bsatd.71357.1, %for.inc611.1 ]
    #dbg_value(i64 %bcost.11.1, !4080, !DIExpression(), !4137)
    #dbg_value(i32 %bmx.11.1, !4081, !DIExpression(), !4137)
    #dbg_value(i32 %bmy.11.1, !4082, !DIExpression(), !4137)
    #dbg_value(i32 %dir.8.1, !4089, !DIExpression(), !4137)
    #dbg_value(i64 3, !4121, !DIExpression(), !4308)
    #dbg_value(i32 %bsatd.71357.2, !4087, !DIExpression(), !4137)
  %cmp614.not = icmp eq i32 %dir.8.1, -2, !dbg !4332
    #dbg_value(i32 %i.01384, !4114, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4291)
  br i1 %cmp614.not, label %if.end622, label %for.cond423

if.end622:                                        ; preds = %for.body427, %lor.lhs.false438, %for.inc611.2, %for.cond423, %for.cond.cleanup
  %bsatd.10 = phi i32 [ %bsatd.41351, %for.cond.cleanup ], [ %bsatd.51383, %for.body427 ], [ %bsatd.51383, %lor.lhs.false438 ], [ %bsatd.71357.21432, %for.cond423 ], [ %bsatd.71357.2, %for.inc611.2 ], !dbg !4334
  %bmy.14 = phi i32 [ %bmy.7, %for.cond.cleanup ], [ %bmy.81385, %for.body427 ], [ %bmy.81385, %lor.lhs.false438 ], [ %bmy.11.21434, %for.cond423 ], [ %bmy.11.1, %for.inc611.2 ], !dbg !4336
  %bmx.14 = phi i32 [ %bmx.7, %for.cond.cleanup ], [ %bmx.81386, %for.body427 ], [ %bmx.81386, %lor.lhs.false438 ], [ %bmx.11.21435, %for.cond423 ], [ %bmx.11.1, %for.inc611.2 ], !dbg !4336
  %bcost.14 = phi i64 [ %bcost.7, %for.cond.cleanup ], [ %bcost.81387, %for.body427 ], [ %bcost.81387, %lor.lhs.false438 ], [ %bcost.11.21436, %for.cond423 ], [ %bcost.11.1, %for.inc611.2 ], !dbg !4336
    #dbg_value(i64 %bcost.14, !4080, !DIExpression(), !4137)
    #dbg_value(i32 %bmx.14, !4081, !DIExpression(), !4137)
    #dbg_value(i32 %bmy.14, !4082, !DIExpression(), !4137)
    #dbg_value(i32 %bsatd.10, !4087, !DIExpression(), !4137)
    #dbg_value(i32 poison, !4089, !DIExpression(), !4137)
    #dbg_value(i32 %bmx.14, !4083, !DIExpression(), !4137)
    #dbg_value(i32 %bmy.14, !4084, !DIExpression(), !4137)
    #dbg_value(i32 0, !4129, !DIExpression(), !4338)
  br label %for.body628, !dbg !4339

for.cond.cleanup627:                              ; preds = %for.inc785
  %conv789 = trunc i64 %bcost.17 to i32, !dbg !4340
  %cost790 = getelementptr inbounds i8, ptr %m, i64 136, !dbg !4341
  store i32 %conv789, ptr %cost790, align 8, !dbg !4342
  %conv791 = trunc i32 %bmx.17 to i16, !dbg !4343
  store i16 %conv791, ptr %mv16, align 4, !dbg !4344
  %conv794 = trunc i32 %bmy.17 to i16, !dbg !4345
  store i16 %conv794, ptr %arrayidx19, align 2, !dbg !4346
  %arrayidx798 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %idxprom1, !dbg !4347
  %135 = load i8, ptr %arrayidx798, align 1, !dbg !4347
  %conv799 = zext i8 %135 to i64, !dbg !4347
  %arrayidx801 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %idxprom1, !dbg !4348
  %136 = load i8, ptr %arrayidx801, align 1, !dbg !4348
  %conv802 = zext i8 %136 to i64, !dbg !4348
  %shr803 = ashr i32 %2, 2, !dbg !4349
  %shr804 = ashr i32 %3, 2, !dbg !4350
    #dbg_value(i32 %bmx.17, !1907, !DIExpression(), !4351)
    #dbg_value(i32 %bmy.17, !1912, !DIExpression(), !4351)
  %and.i1304 = and i32 %bmx.17, 65535, !dbg !4353
  %shl.i1305 = shl i32 %bmy.17, 16, !dbg !4354
  %add.i1306 = or disjoint i32 %and.i1304, %shl.i1305, !dbg !4355
    #dbg_value(ptr %h, !3739, !DIExpression(), !4356)
    #dbg_value(i8 %135, !3745, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !4356)
    #dbg_value(i8 %136, !3746, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !4356)
    #dbg_value(i32 %shr803, !3747, !DIExpression(), !4356)
    #dbg_value(i32 %shr804, !3748, !DIExpression(), !4356)
    #dbg_value(i32 %i_list, !3749, !DIExpression(), !4356)
    #dbg_value(i32 %add.i1306, !3750, !DIExpression(), !4356)
  %add.i1307 = add nuw nsw i64 %conv799, 12, !dbg !4358
  %mul.i = shl nuw nsw i64 %conv802, 3, !dbg !4359
  %add2.i = add nuw nsw i64 %add.i1307, %mul.i, !dbg !4360
  %arrayidx4.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv, i64 0, i64 %idxprom, i64 %add2.i, !dbg !4361
    #dbg_value(ptr %arrayidx4.i, !3751, !DIExpression(), !4356)
  %mul5.i = and i32 %2, -4, !dbg !4362
    #dbg_value(ptr %arrayidx4.i, !3759, !DIExpression(), !4363)
    #dbg_value(i32 %mul5.i, !3764, !DIExpression(), !4363)
    #dbg_value(i32 %shr804, !3765, !DIExpression(), !4363)
    #dbg_value(i32 4, !3766, !DIExpression(), !4363)
    #dbg_value(i32 %add.i1306, !3767, !DIExpression(), !4363)
    #dbg_value(ptr %arrayidx4.i, !3768, !DIExpression(), !4363)
    #dbg_value(i32 %add.i1306, !3769, !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !4363)
    #dbg_value(i32 %add.i1306, !3770, !DIExpression(), !4363)
  %conv15.i.i = zext i32 %add.i1306 to i64, !dbg !4365
  %add.i.i = mul nuw i64 %conv15.i.i, 4294967297, !dbg !4366
    #dbg_value(i64 %add.i.i, !3771, !DIExpression(), !4363)
    #dbg_value(i32 32, !3766, !DIExpression(), !4363)
  %137 = add i32 %mul5.i, -2, !dbg !4367
  %138 = tail call i32 @llvm.fshl.i32(i32 2, i32 %137, i32 31), !dbg !4367
  switch i32 %138, label %x264_macroblock_cache_mv.exit [
    i32 7, label %do.body.i.i.preheader
    i32 1, label %if.then39.i.i
    i32 3, label %if.then63.i.i
  ], !dbg !4367

do.body.i.i.preheader:                            ; preds = %for.cond.cleanup627
  %139 = add nsw i32 %shr804, -2, !dbg !4368
  %140 = lshr i32 %139, 1, !dbg !4368
  %narrow = add nuw i32 %140, 1, !dbg !4368
  %141 = zext i32 %narrow to i64, !dbg !4368
  %min.iters.check = icmp ult i32 %139, 6, !dbg !4368
  br i1 %min.iters.check, label %do.body.i.i.preheader1469, label %vector.ph, !dbg !4368

do.body.i.i.preheader1469:                        ; preds = %middle.block, %do.body.i.i.preheader
  %d.0.i.i.ph = phi ptr [ %arrayidx4.i, %do.body.i.i.preheader ], [ %ind.end, %middle.block ]
  %h.addr.0.i.i.ph = phi i32 [ %shr804, %do.body.i.i.preheader ], [ %ind.end1442, %middle.block ]
  %142 = add nsw i32 %h.addr.0.i.i.ph, -2, !dbg !4368
  %143 = lshr i32 %142, 1, !dbg !4368
  %144 = add nuw i32 %143, 1, !dbg !4368
  %xtraiter = and i32 %144, 3, !dbg !4368
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !4368
  br i1 %lcmp.mod.not, label %do.body.i.i.prol.loopexit, label %do.body.i.i.prol, !dbg !4368

do.body.i.i.prol:                                 ; preds = %do.body.i.i.preheader1469, %do.body.i.i.prol
  %d.0.i.i.prol = phi ptr [ %add.ptr106.i.i.prol, %do.body.i.i.prol ], [ %d.0.i.i.ph, %do.body.i.i.preheader1469 ], !dbg !4363
  %h.addr.0.i.i.prol = phi i32 [ %sub.i.i.prol, %do.body.i.i.prol ], [ %h.addr.0.i.i.ph, %do.body.i.i.preheader1469 ]
  %prol.iter = phi i32 [ %prol.iter.next, %do.body.i.i.prol ], [ 0, %do.body.i.i.preheader1469 ]
    #dbg_value(i32 %h.addr.0.i.i.prol, !3765, !DIExpression(), !4363)
    #dbg_value(ptr %d.0.i.i.prol, !3768, !DIExpression(), !4363)
  store i64 %add.i.i, ptr %d.0.i.i.prol, align 8, !dbg !4369
  %add.ptr95.i.i.prol = getelementptr inbounds i8, ptr %d.0.i.i.prol, i64 8, !dbg !4370
  store i64 %add.i.i, ptr %add.ptr95.i.i.prol, align 8, !dbg !4371
  %add.ptr98.i.i.prol = getelementptr inbounds i8, ptr %d.0.i.i.prol, i64 32, !dbg !4372
  store i64 %add.i.i, ptr %add.ptr98.i.i.prol, align 8, !dbg !4373
  %add.ptr103.i.i.prol = getelementptr inbounds i8, ptr %d.0.i.i.prol, i64 40, !dbg !4374
  store i64 %add.i.i, ptr %add.ptr103.i.i.prol, align 8, !dbg !4375
  %sub.i.i.prol = add nsw i32 %h.addr.0.i.i.prol, -2, !dbg !4376
    #dbg_value(i32 %sub.i.i.prol, !3765, !DIExpression(), !4363)
  %add.ptr106.i.i.prol = getelementptr inbounds i8, ptr %d.0.i.i.prol, i64 64, !dbg !4377
    #dbg_value(ptr %add.ptr106.i.i.prol, !3768, !DIExpression(), !4363)
  %prol.iter.next = add i32 %prol.iter, 1, !dbg !4378
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter, !dbg !4378
  br i1 %prol.iter.cmp.not, label %do.body.i.i.prol.loopexit, label %do.body.i.i.prol, !dbg !4378, !llvm.loop !4379

do.body.i.i.prol.loopexit:                        ; preds = %do.body.i.i.prol, %do.body.i.i.preheader1469
  %d.0.i.i.unr = phi ptr [ %d.0.i.i.ph, %do.body.i.i.preheader1469 ], [ %add.ptr106.i.i.prol, %do.body.i.i.prol ]
  %h.addr.0.i.i.unr = phi i32 [ %h.addr.0.i.i.ph, %do.body.i.i.preheader1469 ], [ %sub.i.i.prol, %do.body.i.i.prol ]
  %145 = icmp ult i32 %142, 6, !dbg !4368
  br i1 %145, label %x264_macroblock_cache_mv.exit, label %do.body.i.i, !dbg !4368

vector.ph:                                        ; preds = %do.body.i.i.preheader
  %n.vec = and i64 %141, 4294967292, !dbg !4368
  %146 = shl nuw nsw i64 %n.vec, 6, !dbg !4368
  %ind.end = getelementptr i8, ptr %arrayidx4.i, i64 %146, !dbg !4368
  %.cast = trunc nuw i64 %n.vec to i32, !dbg !4368
  %147 = shl i32 %.cast, 1, !dbg !4368
  %ind.end1442 = sub i32 %shr804, %147, !dbg !4368
  br label %vector.body, !dbg !4368

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 6, !dbg !4368
  %148 = or disjoint i64 %offset.idx, 64, !dbg !4368
  %149 = or disjoint i64 %offset.idx, 128, !dbg !4368
  %150 = or disjoint i64 %offset.idx, 192, !dbg !4368
  %next.gep = getelementptr i8, ptr %arrayidx4.i, i64 %offset.idx
  %next.gep1444 = getelementptr i8, ptr %arrayidx4.i, i64 %148
  %next.gep1445 = getelementptr i8, ptr %arrayidx4.i, i64 %149
  %next.gep1446 = getelementptr i8, ptr %arrayidx4.i, i64 %150
  store i64 %add.i.i, ptr %next.gep, align 8, !dbg !4369
  store i64 %add.i.i, ptr %next.gep1444, align 8, !dbg !4369
  store i64 %add.i.i, ptr %next.gep1445, align 8, !dbg !4369
  store i64 %add.i.i, ptr %next.gep1446, align 8, !dbg !4369
  %151 = getelementptr inbounds i8, ptr %next.gep, i64 8, !dbg !4370
  %152 = getelementptr inbounds i8, ptr %next.gep1444, i64 8, !dbg !4370
  %153 = getelementptr inbounds i8, ptr %next.gep1445, i64 8, !dbg !4370
  %154 = getelementptr inbounds i8, ptr %next.gep1446, i64 8, !dbg !4370
  store i64 %add.i.i, ptr %151, align 8, !dbg !4371
  store i64 %add.i.i, ptr %152, align 8, !dbg !4371
  store i64 %add.i.i, ptr %153, align 8, !dbg !4371
  store i64 %add.i.i, ptr %154, align 8, !dbg !4371
  %155 = getelementptr inbounds i8, ptr %next.gep, i64 32, !dbg !4372
  %156 = getelementptr inbounds i8, ptr %next.gep1444, i64 32, !dbg !4372
  %157 = getelementptr inbounds i8, ptr %next.gep1445, i64 32, !dbg !4372
  %158 = getelementptr inbounds i8, ptr %next.gep1446, i64 32, !dbg !4372
  store i64 %add.i.i, ptr %155, align 8, !dbg !4373
  store i64 %add.i.i, ptr %156, align 8, !dbg !4373
  store i64 %add.i.i, ptr %157, align 8, !dbg !4373
  store i64 %add.i.i, ptr %158, align 8, !dbg !4373
  %159 = getelementptr inbounds i8, ptr %next.gep, i64 40, !dbg !4374
  %160 = getelementptr inbounds i8, ptr %next.gep1444, i64 40, !dbg !4374
  %161 = getelementptr inbounds i8, ptr %next.gep1445, i64 40, !dbg !4374
  %162 = getelementptr inbounds i8, ptr %next.gep1446, i64 40, !dbg !4374
  store i64 %add.i.i, ptr %159, align 8, !dbg !4375
  store i64 %add.i.i, ptr %160, align 8, !dbg !4375
  store i64 %add.i.i, ptr %161, align 8, !dbg !4375
  store i64 %add.i.i, ptr %162, align 8, !dbg !4375
  %index.next = add nuw i64 %index, 4
  %163 = icmp eq i64 %index.next, %n.vec
  br i1 %163, label %middle.block, label %vector.body, !llvm.loop !4380

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %141, !dbg !4378
  br i1 %cmp.n, label %x264_macroblock_cache_mv.exit, label %do.body.i.i.preheader1469, !dbg !4378

if.then39.i.i:                                    ; preds = %for.cond.cleanup627
  store i32 %add.i1306, ptr %arrayidx4.i, align 4, !dbg !4382
  %cmp43.i.i = icmp eq i32 %shr804, 1, !dbg !4383
  br i1 %cmp43.i.i, label %x264_macroblock_cache_mv.exit, label %if.end46.i.i, !dbg !4384

if.end46.i.i:                                     ; preds = %if.then39.i.i
  %add.ptr49.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 32, !dbg !4385
  store i32 %add.i1306, ptr %add.ptr49.i.i, align 4, !dbg !4386
  %cmp50.i.i = icmp eq i32 %shr804, 2, !dbg !4387
  br i1 %cmp50.i.i, label %x264_macroblock_cache_mv.exit, label %if.end53.i.i, !dbg !4388

if.end53.i.i:                                     ; preds = %if.end46.i.i
  %add.ptr56.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 64, !dbg !4389
  store i32 %add.i1306, ptr %add.ptr56.i.i, align 4, !dbg !4390
  %add.ptr59.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 96, !dbg !4391
  store i32 %add.i1306, ptr %add.ptr59.i.i, align 4, !dbg !4392
  br label %x264_macroblock_cache_mv.exit, !dbg !4393

if.then63.i.i:                                    ; preds = %for.cond.cleanup627
  store i64 %add.i.i, ptr %arrayidx4.i, align 8, !dbg !4394
  %cmp67.i.i = icmp eq i32 %shr804, 1, !dbg !4395
  br i1 %cmp67.i.i, label %x264_macroblock_cache_mv.exit, label %if.end70.i.i, !dbg !4396

if.end70.i.i:                                     ; preds = %if.then63.i.i
  %add.ptr73.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 32, !dbg !4397
  store i64 %add.i.i, ptr %add.ptr73.i.i, align 8, !dbg !4398
  %cmp74.i.i = icmp eq i32 %shr804, 2, !dbg !4399
  br i1 %cmp74.i.i, label %x264_macroblock_cache_mv.exit, label %if.end77.i.i, !dbg !4400

if.end77.i.i:                                     ; preds = %if.end70.i.i
  %add.ptr80.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 64, !dbg !4401
  store i64 %add.i.i, ptr %add.ptr80.i.i, align 8, !dbg !4402
  %add.ptr83.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 96, !dbg !4403
  store i64 %add.i.i, ptr %add.ptr83.i.i, align 8, !dbg !4404
  br label %x264_macroblock_cache_mv.exit, !dbg !4405

do.body.i.i:                                      ; preds = %do.body.i.i.prol.loopexit, %do.body.i.i
  %d.0.i.i = phi ptr [ %add.ptr106.i.i.3, %do.body.i.i ], [ %d.0.i.i.unr, %do.body.i.i.prol.loopexit ], !dbg !4363
  %h.addr.0.i.i = phi i32 [ %sub.i.i.3, %do.body.i.i ], [ %h.addr.0.i.i.unr, %do.body.i.i.prol.loopexit ]
    #dbg_value(i32 %h.addr.0.i.i, !3765, !DIExpression(), !4363)
    #dbg_value(ptr %d.0.i.i, !3768, !DIExpression(), !4363)
  store i64 %add.i.i, ptr %d.0.i.i, align 8, !dbg !4369
  %add.ptr95.i.i = getelementptr inbounds i8, ptr %d.0.i.i, i64 8, !dbg !4370
  store i64 %add.i.i, ptr %add.ptr95.i.i, align 8, !dbg !4371
  %add.ptr98.i.i = getelementptr inbounds i8, ptr %d.0.i.i, i64 32, !dbg !4372
  store i64 %add.i.i, ptr %add.ptr98.i.i, align 8, !dbg !4373
  %add.ptr103.i.i = getelementptr inbounds i8, ptr %d.0.i.i, i64 40, !dbg !4374
  store i64 %add.i.i, ptr %add.ptr103.i.i, align 8, !dbg !4375
    #dbg_value(i32 %h.addr.0.i.i, !3765, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !4363)
  %add.ptr106.i.i = getelementptr inbounds i8, ptr %d.0.i.i, i64 64, !dbg !4377
    #dbg_value(ptr %add.ptr106.i.i, !3768, !DIExpression(), !4363)
  store i64 %add.i.i, ptr %add.ptr106.i.i, align 8, !dbg !4369
  %add.ptr95.i.i.1 = getelementptr inbounds i8, ptr %d.0.i.i, i64 72, !dbg !4370
  store i64 %add.i.i, ptr %add.ptr95.i.i.1, align 8, !dbg !4371
  %add.ptr98.i.i.1 = getelementptr inbounds i8, ptr %d.0.i.i, i64 96, !dbg !4372
  store i64 %add.i.i, ptr %add.ptr98.i.i.1, align 8, !dbg !4373
  %add.ptr103.i.i.1 = getelementptr inbounds i8, ptr %d.0.i.i, i64 104, !dbg !4374
  store i64 %add.i.i, ptr %add.ptr103.i.i.1, align 8, !dbg !4375
    #dbg_value(i32 %h.addr.0.i.i, !3765, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value), !4363)
  %add.ptr106.i.i.1 = getelementptr inbounds i8, ptr %d.0.i.i, i64 128, !dbg !4377
    #dbg_value(ptr %add.ptr106.i.i.1, !3768, !DIExpression(), !4363)
  store i64 %add.i.i, ptr %add.ptr106.i.i.1, align 8, !dbg !4369
  %add.ptr95.i.i.2 = getelementptr inbounds i8, ptr %d.0.i.i, i64 136, !dbg !4370
  store i64 %add.i.i, ptr %add.ptr95.i.i.2, align 8, !dbg !4371
  %add.ptr98.i.i.2 = getelementptr inbounds i8, ptr %d.0.i.i, i64 160, !dbg !4372
  store i64 %add.i.i, ptr %add.ptr98.i.i.2, align 8, !dbg !4373
  %add.ptr103.i.i.2 = getelementptr inbounds i8, ptr %d.0.i.i, i64 168, !dbg !4374
  store i64 %add.i.i, ptr %add.ptr103.i.i.2, align 8, !dbg !4375
    #dbg_value(i32 %h.addr.0.i.i, !3765, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value), !4363)
  %add.ptr106.i.i.2 = getelementptr inbounds i8, ptr %d.0.i.i, i64 192, !dbg !4377
    #dbg_value(ptr %add.ptr106.i.i.2, !3768, !DIExpression(), !4363)
  store i64 %add.i.i, ptr %add.ptr106.i.i.2, align 8, !dbg !4369
  %add.ptr95.i.i.3 = getelementptr inbounds i8, ptr %d.0.i.i, i64 200, !dbg !4370
  store i64 %add.i.i, ptr %add.ptr95.i.i.3, align 8, !dbg !4371
  %add.ptr98.i.i.3 = getelementptr inbounds i8, ptr %d.0.i.i, i64 224, !dbg !4372
  store i64 %add.i.i, ptr %add.ptr98.i.i.3, align 8, !dbg !4373
  %add.ptr103.i.i.3 = getelementptr inbounds i8, ptr %d.0.i.i, i64 232, !dbg !4374
  store i64 %add.i.i, ptr %add.ptr103.i.i.3, align 8, !dbg !4375
  %sub.i.i.3 = add nsw i32 %h.addr.0.i.i, -8, !dbg !4376
    #dbg_value(i32 %sub.i.i.3, !3765, !DIExpression(), !4363)
  %add.ptr106.i.i.3 = getelementptr inbounds i8, ptr %d.0.i.i, i64 256, !dbg !4377
    #dbg_value(ptr %add.ptr106.i.i.3, !3768, !DIExpression(), !4363)
  %tobool.not.i.i.3 = icmp eq i32 %sub.i.i.3, 0, !dbg !4378
  br i1 %tobool.not.i.i.3, label %x264_macroblock_cache_mv.exit, label %do.body.i.i, !dbg !4378, !llvm.loop !4406

x264_macroblock_cache_mv.exit:                    ; preds = %do.body.i.i.prol.loopexit, %do.body.i.i, %middle.block, %for.cond.cleanup627, %if.then39.i.i, %if.end46.i.i, %if.end53.i.i, %if.then63.i.i, %if.end70.i.i, %if.end77.i.i
  %164 = load i16, ptr %mvp57, align 16, !dbg !4407
  %conv808 = sext i16 %164 to i32, !dbg !4407
  %sub809 = sub nsw i32 %bmx.17, %conv808, !dbg !4407
  %165 = tail call i32 @llvm.abs.i32(i32 %sub809, i1 true), !dbg !4407
  %spec.select1293 = tail call i32 @llvm.umin.i32(i32 %165, i32 33), !dbg !4407
  %166 = load i16, ptr %arrayidx61, align 2, !dbg !4408
  %conv822 = sext i16 %166 to i32, !dbg !4408
  %sub823 = sub nsw i32 %bmy.17, %conv822, !dbg !4408
  %167 = tail call i32 @llvm.abs.i32(i32 %sub823, i1 true), !dbg !4408
  %cond833 = tail call i32 @llvm.umin.i32(i32 %167, i32 33), !dbg !4408
    #dbg_value(i32 %spec.select1293, !3834, !DIExpression(), !4409)
    #dbg_value(i32 %cond833, !3837, !DIExpression(), !4409)
  %shl.i1308 = shl nuw nsw i32 %cond833, 8, !dbg !4411
  %add.i1309 = or disjoint i32 %shl.i1308, %spec.select1293, !dbg !4412
  %conv835 = trunc nuw nsw i32 %add.i1309 to i16, !dbg !4413
    #dbg_value(i16 %conv835, !4091, !DIExpression(), !4137)
    #dbg_value(ptr %h, !3843, !DIExpression(), !4414)
    #dbg_value(i8 %135, !3848, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !4414)
    #dbg_value(i8 %136, !3849, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !4414)
    #dbg_value(i32 %shr803, !3850, !DIExpression(), !4414)
    #dbg_value(i32 %shr804, !3851, !DIExpression(), !4414)
    #dbg_value(i32 %i_list, !3852, !DIExpression(), !4414)
    #dbg_value(i16 %conv835, !3853, !DIExpression(), !4414)
  %mvd1.i = getelementptr inbounds i8, ptr %h, i64 25520, !dbg !4416
  %arrayidx4.i1315 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd1.i, i64 0, i64 %idxprom, i64 %add2.i, !dbg !4417
    #dbg_value(ptr %arrayidx4.i1315, !3854, !DIExpression(), !4414)
    #dbg_value(ptr %arrayidx4.i1315, !3759, !DIExpression(), !4418)
    #dbg_value(i32 %shr803, !3764, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !4418)
    #dbg_value(i32 %shr804, !3765, !DIExpression(), !4418)
    #dbg_value(i32 2, !3766, !DIExpression(), !4418)
    #dbg_value(i32 %add.i1309, !3767, !DIExpression(), !4418)
    #dbg_value(ptr %arrayidx4.i1315, !3768, !DIExpression(), !4418)
    #dbg_value(i16 %conv835, !3769, !DIExpression(), !4418)
  %cond14.i.i = mul nuw nsw i32 %add.i1309, 65537, !dbg !4420
    #dbg_value(i32 %cond14.i.i, !3770, !DIExpression(), !4418)
  %conv15.i.i1316 = zext nneg i32 %cond14.i.i to i64, !dbg !4421
  %add.i.i1317 = mul nuw nsw i64 %conv15.i.i1316, 4294967297, !dbg !4422
    #dbg_value(i64 %add.i.i1317, !3771, !DIExpression(), !4418)
    #dbg_value(i32 16, !3766, !DIExpression(), !4418)
  %168 = add i32 %shr803, 2147483647, !dbg !4423
  %169 = and i32 %168, 2147483647, !dbg !4423
  switch i32 %169, label %cleanup846 [
    i32 0, label %if.then.i.i
    i32 1, label %if.then39.i.i1335
    i32 3, label %if.then63.i.i1327
    i32 7, label %do.body.i.i1318.preheader
  ], !dbg !4423

do.body.i.i1318.preheader:                        ; preds = %x264_macroblock_cache_mv.exit
  %170 = add nsw i32 %shr804, -2, !dbg !4424
  %171 = lshr i32 %170, 1, !dbg !4424
  %narrow1467 = add nuw i32 %171, 1, !dbg !4424
  %172 = zext i32 %narrow1467 to i64, !dbg !4424
  %min.iters.check1449 = icmp ult i32 %170, 6, !dbg !4424
  br i1 %min.iters.check1449, label %do.body.i.i1318.preheader1468, label %vector.ph1450, !dbg !4424

do.body.i.i1318.preheader1468:                    ; preds = %middle.block1447, %do.body.i.i1318.preheader
  %d.0.i.i1319.ph = phi ptr [ %arrayidx4.i1315, %do.body.i.i1318.preheader ], [ %ind.end1453, %middle.block1447 ]
  %h.addr.0.i.i1320.ph = phi i32 [ %shr804, %do.body.i.i1318.preheader ], [ %ind.end1456, %middle.block1447 ]
  %173 = add nsw i32 %h.addr.0.i.i1320.ph, -2, !dbg !4424
  %174 = lshr i32 %173, 1, !dbg !4424
  %175 = add nuw i32 %174, 1, !dbg !4424
  %xtraiter1470 = and i32 %175, 3, !dbg !4424
  %lcmp.mod1471.not = icmp eq i32 %xtraiter1470, 0, !dbg !4424
  br i1 %lcmp.mod1471.not, label %do.body.i.i1318.prol.loopexit, label %do.body.i.i1318.prol, !dbg !4424

do.body.i.i1318.prol:                             ; preds = %do.body.i.i1318.preheader1468, %do.body.i.i1318.prol
  %d.0.i.i1319.prol = phi ptr [ %add.ptr106.i.i1325.prol, %do.body.i.i1318.prol ], [ %d.0.i.i1319.ph, %do.body.i.i1318.preheader1468 ], !dbg !4418
  %h.addr.0.i.i1320.prol = phi i32 [ %sub.i.i1324.prol, %do.body.i.i1318.prol ], [ %h.addr.0.i.i1320.ph, %do.body.i.i1318.preheader1468 ]
  %prol.iter1472 = phi i32 [ %prol.iter1472.next, %do.body.i.i1318.prol ], [ 0, %do.body.i.i1318.preheader1468 ]
    #dbg_value(i32 %h.addr.0.i.i1320.prol, !3765, !DIExpression(), !4418)
    #dbg_value(ptr %d.0.i.i1319.prol, !3768, !DIExpression(), !4418)
  store i64 %add.i.i1317, ptr %d.0.i.i1319.prol, align 8, !dbg !4425
  %add.ptr95.i.i1321.prol = getelementptr inbounds i8, ptr %d.0.i.i1319.prol, i64 8, !dbg !4426
  store i64 %add.i.i1317, ptr %add.ptr95.i.i1321.prol, align 8, !dbg !4427
  %add.ptr98.i.i1322.prol = getelementptr inbounds i8, ptr %d.0.i.i1319.prol, i64 16, !dbg !4428
  store i64 %add.i.i1317, ptr %add.ptr98.i.i1322.prol, align 8, !dbg !4429
  %add.ptr103.i.i1323.prol = getelementptr inbounds i8, ptr %d.0.i.i1319.prol, i64 24, !dbg !4430
  store i64 %add.i.i1317, ptr %add.ptr103.i.i1323.prol, align 8, !dbg !4431
  %sub.i.i1324.prol = add nsw i32 %h.addr.0.i.i1320.prol, -2, !dbg !4432
    #dbg_value(i32 %sub.i.i1324.prol, !3765, !DIExpression(), !4418)
  %add.ptr106.i.i1325.prol = getelementptr inbounds i8, ptr %d.0.i.i1319.prol, i64 32, !dbg !4433
    #dbg_value(ptr %add.ptr106.i.i1325.prol, !3768, !DIExpression(), !4418)
  %prol.iter1472.next = add i32 %prol.iter1472, 1, !dbg !4434
  %prol.iter1472.cmp.not = icmp eq i32 %prol.iter1472.next, %xtraiter1470, !dbg !4434
  br i1 %prol.iter1472.cmp.not, label %do.body.i.i1318.prol.loopexit, label %do.body.i.i1318.prol, !dbg !4434, !llvm.loop !4435

do.body.i.i1318.prol.loopexit:                    ; preds = %do.body.i.i1318.prol, %do.body.i.i1318.preheader1468
  %d.0.i.i1319.unr = phi ptr [ %d.0.i.i1319.ph, %do.body.i.i1318.preheader1468 ], [ %add.ptr106.i.i1325.prol, %do.body.i.i1318.prol ]
  %h.addr.0.i.i1320.unr = phi i32 [ %h.addr.0.i.i1320.ph, %do.body.i.i1318.preheader1468 ], [ %sub.i.i1324.prol, %do.body.i.i1318.prol ]
  %176 = icmp ult i32 %173, 6, !dbg !4424
  br i1 %176, label %cleanup846, label %do.body.i.i1318, !dbg !4424

vector.ph1450:                                    ; preds = %do.body.i.i1318.preheader
  %n.vec1452 = and i64 %172, 4294967292, !dbg !4424
  %177 = shl nuw nsw i64 %n.vec1452, 5, !dbg !4424
  %ind.end1453 = getelementptr i8, ptr %arrayidx4.i1315, i64 %177, !dbg !4424
  %.cast1455 = trunc nuw i64 %n.vec1452 to i32, !dbg !4424
  %178 = shl i32 %.cast1455, 1, !dbg !4424
  %ind.end1456 = sub i32 %shr804, %178, !dbg !4424
  br label %vector.body1458, !dbg !4424

vector.body1458:                                  ; preds = %vector.body1458, %vector.ph1450
  %index1459 = phi i64 [ 0, %vector.ph1450 ], [ %index.next1465, %vector.body1458 ]
  %offset.idx1460 = shl i64 %index1459, 5, !dbg !4424
  %179 = or disjoint i64 %offset.idx1460, 32, !dbg !4424
  %180 = or disjoint i64 %offset.idx1460, 64, !dbg !4424
  %181 = or disjoint i64 %offset.idx1460, 96, !dbg !4424
  %next.gep1461 = getelementptr i8, ptr %arrayidx4.i1315, i64 %offset.idx1460
  %next.gep1462 = getelementptr i8, ptr %arrayidx4.i1315, i64 %179
  %next.gep1463 = getelementptr i8, ptr %arrayidx4.i1315, i64 %180
  %next.gep1464 = getelementptr i8, ptr %arrayidx4.i1315, i64 %181
  store i64 %add.i.i1317, ptr %next.gep1461, align 8, !dbg !4425
  store i64 %add.i.i1317, ptr %next.gep1462, align 8, !dbg !4425
  store i64 %add.i.i1317, ptr %next.gep1463, align 8, !dbg !4425
  store i64 %add.i.i1317, ptr %next.gep1464, align 8, !dbg !4425
  %182 = getelementptr inbounds i8, ptr %next.gep1461, i64 8, !dbg !4426
  %183 = getelementptr inbounds i8, ptr %next.gep1462, i64 8, !dbg !4426
  %184 = getelementptr inbounds i8, ptr %next.gep1463, i64 8, !dbg !4426
  %185 = getelementptr inbounds i8, ptr %next.gep1464, i64 8, !dbg !4426
  store i64 %add.i.i1317, ptr %182, align 8, !dbg !4427
  store i64 %add.i.i1317, ptr %183, align 8, !dbg !4427
  store i64 %add.i.i1317, ptr %184, align 8, !dbg !4427
  store i64 %add.i.i1317, ptr %185, align 8, !dbg !4427
  %186 = getelementptr inbounds i8, ptr %next.gep1461, i64 16, !dbg !4428
  %187 = getelementptr inbounds i8, ptr %next.gep1462, i64 16, !dbg !4428
  %188 = getelementptr inbounds i8, ptr %next.gep1463, i64 16, !dbg !4428
  %189 = getelementptr inbounds i8, ptr %next.gep1464, i64 16, !dbg !4428
  store i64 %add.i.i1317, ptr %186, align 8, !dbg !4429
  store i64 %add.i.i1317, ptr %187, align 8, !dbg !4429
  store i64 %add.i.i1317, ptr %188, align 8, !dbg !4429
  store i64 %add.i.i1317, ptr %189, align 8, !dbg !4429
  %190 = getelementptr inbounds i8, ptr %next.gep1461, i64 24, !dbg !4430
  %191 = getelementptr inbounds i8, ptr %next.gep1462, i64 24, !dbg !4430
  %192 = getelementptr inbounds i8, ptr %next.gep1463, i64 24, !dbg !4430
  %193 = getelementptr inbounds i8, ptr %next.gep1464, i64 24, !dbg !4430
  store i64 %add.i.i1317, ptr %190, align 8, !dbg !4431
  store i64 %add.i.i1317, ptr %191, align 8, !dbg !4431
  store i64 %add.i.i1317, ptr %192, align 8, !dbg !4431
  store i64 %add.i.i1317, ptr %193, align 8, !dbg !4431
  %index.next1465 = add nuw i64 %index1459, 4
  %194 = icmp eq i64 %index.next1465, %n.vec1452
  br i1 %194, label %middle.block1447, label %vector.body1458, !llvm.loop !4436

middle.block1447:                                 ; preds = %vector.body1458
  %cmp.n1466 = icmp eq i64 %n.vec1452, %172, !dbg !4434
  br i1 %cmp.n1466, label %cleanup846, label %do.body.i.i1318.preheader1468, !dbg !4434

if.then.i.i:                                      ; preds = %x264_macroblock_cache_mv.exit
  store i16 %conv835, ptr %arrayidx4.i1315, align 2, !dbg !4438
  %cmp21.i.i = icmp eq i32 %shr804, 1, !dbg !4439
  br i1 %cmp21.i.i, label %cleanup846, label %if.end.i.i, !dbg !4440

if.end.i.i:                                       ; preds = %if.then.i.i
  %add.ptr26.i.i = getelementptr inbounds i8, ptr %arrayidx4.i1315, i64 16, !dbg !4441
  store i16 %conv835, ptr %add.ptr26.i.i, align 2, !dbg !4442
  %cmp27.i.i = icmp eq i32 %shr804, 2, !dbg !4443
  br i1 %cmp27.i.i, label %cleanup846, label %if.end30.i.i, !dbg !4444

if.end30.i.i:                                     ; preds = %if.end.i.i
  %add.ptr33.i.i = getelementptr inbounds i8, ptr %arrayidx4.i1315, i64 32, !dbg !4445
  store i16 %conv835, ptr %add.ptr33.i.i, align 2, !dbg !4446
  %add.ptr36.i.i = getelementptr inbounds i8, ptr %arrayidx4.i1315, i64 48, !dbg !4447
  store i16 %conv835, ptr %add.ptr36.i.i, align 2, !dbg !4448
  br label %cleanup846, !dbg !4449

if.then39.i.i1335:                                ; preds = %x264_macroblock_cache_mv.exit
  store i32 %cond14.i.i, ptr %arrayidx4.i1315, align 4, !dbg !4450
  %cmp43.i.i1336 = icmp eq i32 %shr804, 1, !dbg !4451
  br i1 %cmp43.i.i1336, label %cleanup846, label %if.end46.i.i1337, !dbg !4452

if.end46.i.i1337:                                 ; preds = %if.then39.i.i1335
  %add.ptr49.i.i1338 = getelementptr inbounds i8, ptr %arrayidx4.i1315, i64 16, !dbg !4453
  store i32 %cond14.i.i, ptr %add.ptr49.i.i1338, align 4, !dbg !4454
  %cmp50.i.i1339 = icmp eq i32 %shr804, 2, !dbg !4455
  br i1 %cmp50.i.i1339, label %cleanup846, label %if.end53.i.i1340, !dbg !4456

if.end53.i.i1340:                                 ; preds = %if.end46.i.i1337
  %add.ptr56.i.i1341 = getelementptr inbounds i8, ptr %arrayidx4.i1315, i64 32, !dbg !4457
  store i32 %cond14.i.i, ptr %add.ptr56.i.i1341, align 4, !dbg !4458
  %add.ptr59.i.i1342 = getelementptr inbounds i8, ptr %arrayidx4.i1315, i64 48, !dbg !4459
  store i32 %cond14.i.i, ptr %add.ptr59.i.i1342, align 4, !dbg !4460
  br label %cleanup846, !dbg !4461

if.then63.i.i1327:                                ; preds = %x264_macroblock_cache_mv.exit
  store i64 %add.i.i1317, ptr %arrayidx4.i1315, align 8, !dbg !4462
  %cmp67.i.i1328 = icmp eq i32 %shr804, 1, !dbg !4463
  br i1 %cmp67.i.i1328, label %cleanup846, label %if.end70.i.i1329, !dbg !4464

if.end70.i.i1329:                                 ; preds = %if.then63.i.i1327
  %add.ptr73.i.i1330 = getelementptr inbounds i8, ptr %arrayidx4.i1315, i64 16, !dbg !4465
  store i64 %add.i.i1317, ptr %add.ptr73.i.i1330, align 8, !dbg !4466
  %cmp74.i.i1331 = icmp eq i32 %shr804, 2, !dbg !4467
  br i1 %cmp74.i.i1331, label %cleanup846, label %if.end77.i.i1332, !dbg !4468

if.end77.i.i1332:                                 ; preds = %if.end70.i.i1329
  %add.ptr80.i.i1333 = getelementptr inbounds i8, ptr %arrayidx4.i1315, i64 32, !dbg !4469
  store i64 %add.i.i1317, ptr %add.ptr80.i.i1333, align 8, !dbg !4470
  %add.ptr83.i.i1334 = getelementptr inbounds i8, ptr %arrayidx4.i1315, i64 48, !dbg !4471
  store i64 %add.i.i1317, ptr %add.ptr83.i.i1334, align 8, !dbg !4472
  br label %cleanup846, !dbg !4473

do.body.i.i1318:                                  ; preds = %do.body.i.i1318.prol.loopexit, %do.body.i.i1318
  %d.0.i.i1319 = phi ptr [ %add.ptr106.i.i1325.3, %do.body.i.i1318 ], [ %d.0.i.i1319.unr, %do.body.i.i1318.prol.loopexit ], !dbg !4418
  %h.addr.0.i.i1320 = phi i32 [ %sub.i.i1324.3, %do.body.i.i1318 ], [ %h.addr.0.i.i1320.unr, %do.body.i.i1318.prol.loopexit ]
    #dbg_value(i32 %h.addr.0.i.i1320, !3765, !DIExpression(), !4418)
    #dbg_value(ptr %d.0.i.i1319, !3768, !DIExpression(), !4418)
  store i64 %add.i.i1317, ptr %d.0.i.i1319, align 8, !dbg !4425
  %add.ptr95.i.i1321 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 8, !dbg !4426
  store i64 %add.i.i1317, ptr %add.ptr95.i.i1321, align 8, !dbg !4427
  %add.ptr98.i.i1322 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 16, !dbg !4428
  store i64 %add.i.i1317, ptr %add.ptr98.i.i1322, align 8, !dbg !4429
  %add.ptr103.i.i1323 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 24, !dbg !4430
  store i64 %add.i.i1317, ptr %add.ptr103.i.i1323, align 8, !dbg !4431
    #dbg_value(i32 %h.addr.0.i.i1320, !3765, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !4418)
  %add.ptr106.i.i1325 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 32, !dbg !4433
    #dbg_value(ptr %add.ptr106.i.i1325, !3768, !DIExpression(), !4418)
  store i64 %add.i.i1317, ptr %add.ptr106.i.i1325, align 8, !dbg !4425
  %add.ptr95.i.i1321.1 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 40, !dbg !4426
  store i64 %add.i.i1317, ptr %add.ptr95.i.i1321.1, align 8, !dbg !4427
  %add.ptr98.i.i1322.1 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 48, !dbg !4428
  store i64 %add.i.i1317, ptr %add.ptr98.i.i1322.1, align 8, !dbg !4429
  %add.ptr103.i.i1323.1 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 56, !dbg !4430
  store i64 %add.i.i1317, ptr %add.ptr103.i.i1323.1, align 8, !dbg !4431
    #dbg_value(i32 %h.addr.0.i.i1320, !3765, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value), !4418)
  %add.ptr106.i.i1325.1 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 64, !dbg !4433
    #dbg_value(ptr %add.ptr106.i.i1325.1, !3768, !DIExpression(), !4418)
  store i64 %add.i.i1317, ptr %add.ptr106.i.i1325.1, align 8, !dbg !4425
  %add.ptr95.i.i1321.2 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 72, !dbg !4426
  store i64 %add.i.i1317, ptr %add.ptr95.i.i1321.2, align 8, !dbg !4427
  %add.ptr98.i.i1322.2 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 80, !dbg !4428
  store i64 %add.i.i1317, ptr %add.ptr98.i.i1322.2, align 8, !dbg !4429
  %add.ptr103.i.i1323.2 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 88, !dbg !4430
  store i64 %add.i.i1317, ptr %add.ptr103.i.i1323.2, align 8, !dbg !4431
    #dbg_value(i32 %h.addr.0.i.i1320, !3765, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value), !4418)
  %add.ptr106.i.i1325.2 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 96, !dbg !4433
    #dbg_value(ptr %add.ptr106.i.i1325.2, !3768, !DIExpression(), !4418)
  store i64 %add.i.i1317, ptr %add.ptr106.i.i1325.2, align 8, !dbg !4425
  %add.ptr95.i.i1321.3 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 104, !dbg !4426
  store i64 %add.i.i1317, ptr %add.ptr95.i.i1321.3, align 8, !dbg !4427
  %add.ptr98.i.i1322.3 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 112, !dbg !4428
  store i64 %add.i.i1317, ptr %add.ptr98.i.i1322.3, align 8, !dbg !4429
  %add.ptr103.i.i1323.3 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 120, !dbg !4430
  store i64 %add.i.i1317, ptr %add.ptr103.i.i1323.3, align 8, !dbg !4431
  %sub.i.i1324.3 = add nsw i32 %h.addr.0.i.i1320, -8, !dbg !4432
    #dbg_value(i32 %sub.i.i1324.3, !3765, !DIExpression(), !4418)
  %add.ptr106.i.i1325.3 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 128, !dbg !4433
    #dbg_value(ptr %add.ptr106.i.i1325.3, !3768, !DIExpression(), !4418)
  %tobool.not.i.i1326.3 = icmp eq i32 %sub.i.i1324.3, 0, !dbg !4434
  br i1 %tobool.not.i.i1326.3, label %cleanup846, label %do.body.i.i1318, !dbg !4434, !llvm.loop !4474

for.body628:                                      ; preds = %if.end622, %for.inc785
  %indvars.iv1401 = phi i64 [ 0, %if.end622 ], [ %indvars.iv.next1402, %for.inc785 ]
  %bcost.151392 = phi i64 [ %bcost.14, %if.end622 ], [ %bcost.17, %for.inc785 ]
  %bmx.151390 = phi i32 [ %bmx.14, %if.end622 ], [ %bmx.17, %for.inc785 ]
  %bmy.151389 = phi i32 [ %bmy.14, %if.end622 ], [ %bmy.17, %for.inc785 ]
  %bsatd.111388 = phi i32 [ %bsatd.10, %if.end622 ], [ %bsatd.121369, %for.inc785 ]
    #dbg_value(i64 %bcost.151392, !4080, !DIExpression(), !4137)
    #dbg_value(i64 %indvars.iv1401, !4129, !DIExpression(), !4338)
    #dbg_value(i32 %bmx.151390, !4081, !DIExpression(), !4137)
    #dbg_value(i32 %bmy.151389, !4082, !DIExpression(), !4137)
    #dbg_value(i32 %bsatd.111388, !4087, !DIExpression(), !4137)
  %indvars.iv.next1402 = add nuw nsw i64 %indvars.iv1401, 1, !dbg !4475
  %arrayidx631 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %indvars.iv.next1402, !dbg !4475
  %195 = load i8, ptr %arrayidx631, align 2, !dbg !4475
  %conv633 = sext i8 %195 to i32, !dbg !4475
  %add634 = add nsw i32 %bmx.14, %conv633, !dbg !4475
  %cmp635 = icmp eq i32 %add634, %pmx.0, !dbg !4475
  %arrayidx641 = getelementptr inbounds i8, ptr %arrayidx631, i64 1
  %196 = load i8, ptr %arrayidx641, align 1, !dbg !4475
  %conv642 = sext i8 %196 to i32, !dbg !4475
  %add643 = add nsw i32 %bmy.14, %conv642, !dbg !4475
  %cmp644 = icmp eq i32 %add643, %pmy.0, !dbg !4475
  %or.cond1441 = select i1 %cmp635, i1 %cmp644, i1 false, !dbg !4475
  br i1 %or.cond1441, label %for.inc785, label %if.end699, !dbg !4475

if.end699:                                        ; preds = %for.body628
  %197 = load ptr, ptr %mc, align 8, !dbg !4478
  %198 = load i32, ptr %i_stride, align 8, !dbg !4478
  %199 = load ptr, ptr %weight, align 8, !dbg !4478
  tail call void %197(ptr noundef %arrayidx26, i32 noundef 32, ptr noundef nonnull %p_fref, i32 noundef %198, i32 noundef %add634, i32 noundef %add643, i32 noundef %2, i32 noundef %3, ptr noundef %199) #6, !dbg !4478
  %200 = load ptr, ptr %arrayidx71, align 8, !dbg !4478
  %201 = load ptr, ptr %p_fenc, align 8, !dbg !4478
  %call673 = tail call i32 %200(ptr noundef %201, i32 noundef 16, ptr noundef %arrayidx26, i32 noundef 32) #6, !dbg !4478
  %idxprom680 = sext i32 %add634 to i64, !dbg !4478
  %arrayidx681 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom680, !dbg !4478
  %202 = load i16, ptr %arrayidx681, align 2, !dbg !4478
  %conv682 = zext i16 %202 to i32, !dbg !4478
  %add683 = add nsw i32 %call673, %conv682, !dbg !4478
  %idxprom690 = sext i32 %add643 to i64, !dbg !4478
  %arrayidx691 = getelementptr inbounds i16, ptr %add.ptr66, i64 %idxprom690, !dbg !4478
  %203 = load i16, ptr %arrayidx691, align 2, !dbg !4478
  %conv692 = zext i16 %203 to i32, !dbg !4478
  %add693 = add nsw i32 %add683, %conv692, !dbg !4478
    #dbg_value(i32 %add693, !4088, !DIExpression(), !4137)
  %spec.select1294 = tail call i32 @llvm.smin.i32(i32 %add693, i32 %bsatd.111388), !dbg !4478
    #dbg_value(i32 %spec.select1294, !4087, !DIExpression(), !4137)
  %mul700 = mul nsw i32 %spec.select1294, 17, !dbg !4480
  %div701 = sdiv i32 %mul700, 16, !dbg !4480
  %cmp702.not = icmp sgt i32 %add693, %div701, !dbg !4480
  br i1 %cmp702.not, label %for.inc785, label %if.then704, !dbg !4481

if.then704:                                       ; preds = %if.end699
    #dbg_value(i32 %add634, !1907, !DIExpression(), !4482)
    #dbg_value(i32 %add643, !1912, !DIExpression(), !4482)
  %and.i1343 = and i32 %add634, 65535, !dbg !4484
  %shl.i1344 = shl i32 %add643, 16, !dbg !4485
  %add.i1345 = or disjoint i32 %shl.i1344, %and.i1343, !dbg !4486
  store i32 %add.i1345, ptr %arrayidx4, align 4, !dbg !4487
  %204 = load i32, ptr %m, align 16, !dbg !4488
  %cmp720 = icmp slt i32 %204, 4, !dbg !4488
  br i1 %cmp720, label %if.then722, label %if.end765, !dbg !4487

if.then722:                                       ; preds = %if.then704
  %205 = load ptr, ptr %mc_chroma359, align 8, !dbg !4490
  %206 = load ptr, ptr %arrayidx361, align 16, !dbg !4490
  %207 = load i32, ptr %arrayidx363, align 4, !dbg !4490
  %add741 = add nsw i32 %add643, %cond, !dbg !4490
  tail call void %205(ptr noundef %arrayidx37, i32 noundef 32, ptr noundef %206, i32 noundef %207, i32 noundef %add634, i32 noundef %add741, i32 noundef %shr377, i32 noundef %shr378) #6, !dbg !4490
  %208 = load ptr, ptr %mc_chroma359, align 8, !dbg !4490
  %209 = load ptr, ptr %arrayidx382, align 8, !dbg !4490
  %210 = load i32, ptr %arrayidx363, align 4, !dbg !4490
  tail call void %208(ptr noundef %arrayidx49, i32 noundef 32, ptr noundef %209, i32 noundef %210, i32 noundef %add634, i32 noundef %add741, i32 noundef %shr377, i32 noundef %shr378) #6, !dbg !4490
  %.pre1415 = load i32, ptr %m, align 16, !dbg !4487
  br label %if.end765, !dbg !4490

if.end765:                                        ; preds = %if.then722, %if.then704
  %211 = phi i32 [ %.pre1415, %if.then722 ], [ %204, %if.then704 ], !dbg !4487
  %call767 = tail call i64 @x264_rd_cost_part(ptr noundef nonnull %h, i32 noundef %i_lambda2, i32 noundef %i4, i32 noundef %211) #6, !dbg !4487
    #dbg_value(i64 %call767, !4131, !DIExpression(), !4492)
  %cmp768 = icmp ult i64 %call767, %bcost.151392, !dbg !4493
  br i1 %cmp768, label %if.then770, label %for.inc785, !dbg !4487

if.then770:                                       ; preds = %if.end765
    #dbg_value(i64 %call767, !4080, !DIExpression(), !4137)
    #dbg_value(i32 %add634, !4081, !DIExpression(), !4137)
    #dbg_value(i32 %add643, !4082, !DIExpression(), !4137)
    #dbg_value(i32 poison, !4089, !DIExpression(), !4137)
  br label %for.inc785, !dbg !4495

for.inc785:                                       ; preds = %for.body628, %if.end765, %if.then770, %if.end699
  %bsatd.121369 = phi i32 [ %spec.select1294, %if.end699 ], [ %spec.select1294, %if.then770 ], [ %spec.select1294, %if.end765 ], [ %bsatd.111388, %for.body628 ]
  %bmy.17 = phi i32 [ %bmy.151389, %if.end699 ], [ %add643, %if.then770 ], [ %bmy.151389, %if.end765 ], [ %bmy.151389, %for.body628 ], !dbg !4137
  %bmx.17 = phi i32 [ %bmx.151390, %if.end699 ], [ %add634, %if.then770 ], [ %bmx.151390, %if.end765 ], [ %bmx.151390, %for.body628 ], !dbg !4137
  %bcost.17 = phi i64 [ %bcost.151392, %if.end699 ], [ %call767, %if.then770 ], [ %bcost.151392, %if.end765 ], [ %bcost.151392, %for.body628 ], !dbg !4137
    #dbg_value(i64 %bcost.17, !4080, !DIExpression(), !4137)
    #dbg_value(i64 %indvars.iv.next1402, !4129, !DIExpression(), !4338)
    #dbg_value(i32 %bmx.17, !4081, !DIExpression(), !4137)
    #dbg_value(i32 %bmy.17, !4082, !DIExpression(), !4137)
    #dbg_value(i32 %bsatd.121369, !4087, !DIExpression(), !4137)
    #dbg_value(i32 poison, !4089, !DIExpression(), !4137)
  %exitcond1404.not = icmp eq i64 %indvars.iv.next1402, 8, !dbg !4497
  br i1 %exitcond1404.not, label %for.cond.cleanup627, label %for.body628, !dbg !4339, !llvm.loop !4498

cleanup846:                                       ; preds = %do.body.i.i1318.prol.loopexit, %do.body.i.i1318, %middle.block1447, %if.end77.i.i1332, %if.end70.i.i1329, %if.then63.i.i1327, %if.end53.i.i1340, %if.end46.i.i1337, %if.then39.i.i1335, %if.end30.i.i, %if.end.i.i, %if.then.i.i, %x264_macroblock_cache_mv.exit, %if.end230, %lor.lhs.false237, %lor.lhs.false244, %lor.lhs.false251
  store i32 0, ptr %b_skip_mc, align 4, !dbg !4137
  ret void, !dbg !4500
}

declare !dbg !4501 void @x264_mb_predict_mv(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !4504 i64 @x264_rd_cost_part(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1834, !1835, !1836, !1837, !1838, !1839, !1840}
!llvm.ident = !{!1841}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x264_pixel_size", scope: !2, file: !6, line: 47, type: !1828, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !80, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "x264_src/encoder/me.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "f207a98fe290f3dc3c9af0aa958dfc24")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 30, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "x264_src/common/pixel.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e9056d80edbb4dc2514d271d596c298e")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!9 = !DIEnumerator(name: "PIXEL_16x16", value: 0)
!10 = !DIEnumerator(name: "PIXEL_16x8", value: 1)
!11 = !DIEnumerator(name: "PIXEL_8x16", value: 2)
!12 = !DIEnumerator(name: "PIXEL_8x8", value: 3)
!13 = !DIEnumerator(name: "PIXEL_8x4", value: 4)
!14 = !DIEnumerator(name: "PIXEL_4x8", value: 5)
!15 = !DIEnumerator(name: "PIXEL_4x4", value: 6)
!16 = !DIEnumerator(name: "PIXEL_4x2", value: 7)
!17 = !DIEnumerator(name: "PIXEL_2x4", value: 8)
!18 = !DIEnumerator(name: "PIXEL_2x2", value: 9)
!19 = !{!20, !44, !57, !73, !62}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union32_t", file: !22, line: 89, baseType: !23)
!22 = !DIFile(filename: "x264_src/common/common.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!23 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !22, line: 89, size: 32, elements: !24)
!24 = !{!25, !30, !37}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !23, file: !22, line: 89, baseType: !26, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !27, line: 26, baseType: !28)
!27 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !29, line: 42, baseType: !7)
!29 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!30 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !23, file: !22, line: 89, baseType: !31, size: 32)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 32, elements: !35)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !27, line: 25, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !29, line: 40, baseType: !34)
!34 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!35 = !{!36}
!36 = !DISubrange(count: 2)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !23, file: !22, line: 89, baseType: !38, size: 32)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 32, elements: !42)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !27, line: 24, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !29, line: 38, baseType: !41)
!41 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!42 = !{!43}
!43 = !DISubrange(count: 4)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "mvsad_t", file: !46, line: 58, baseType: !47)
!46 = !DIFile(filename: "x264_src/encoder/me.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "9ed8adb24d2511c1244c72a9a0793ae7")
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 55, size: 64, elements: !48)
!48 = !{!49, !51}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !47, file: !46, line: 56, baseType: !50, size: 32)
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !47, file: !46, line: 57, baseType: !52, size: 32, offset: 32)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 32, elements: !35)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !54, line: 25, baseType: !55)
!54 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !29, line: 39, baseType: !56)
!56 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union64_t", file: !22, line: 90, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !22, line: 90, size: 64, elements: !60)
!60 = !{!61, !65, !67, !69}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !59, file: !22, line: 90, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !27, line: 27, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !29, line: 45, baseType: !64)
!64 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !59, file: !22, line: 90, baseType: !66, size: 64)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 64, elements: !35)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !59, file: !22, line: 90, baseType: !68, size: 64)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 64, elements: !42)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !59, file: !22, line: 90, baseType: !70, size: 64)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 8)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union16_t", file: !22, line: 88, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !22, line: 88, size: 16, elements: !76)
!76 = !{!77, !78}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !75, file: !22, line: 88, baseType: !32, size: 16)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !75, file: !22, line: 88, baseType: !79, size: 16)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 16, elements: !35)
!80 = !{!81, !1688, !1691, !1695, !1700, !0, !1702, !1705, !1708, !1712, !1717, !1814, !1819, !1823, !1826}
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "x264_pixel_size_shift", scope: !83, file: !3, line: 380, type: !1687, isLocal: true, isDefinition: true)
!83 = distinct !DISubprogram(name: "x264_me_search_ref", scope: !3, file: !3, line: 173, type: !84, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1391)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !86, !1372, !626, !50, !638}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !88, line: 46, baseType: !89)
!88 = !DIFile(filename: "x264_src/x264.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !22, line: 381, size: 266752, elements: !90)
!90 = !{!91, !259, !263, !264, !265, !266, !267, !268, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !404, !406, !434, !436, !437, !438, !442, !446, !447, !448, !452, !456, !457, !458, !463, !466, !467, !540, !557, !717, !718, !719, !720, !724, !725, !726, !727, !728, !729, !730, !745, !938, !942, !1003, !1006, !1008, !1009, !1010, !1013, !1018, !1027, !1028, !1036, !1038, !1043, !1118, !1204, !1248, !1270, !1319, !1348}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !89, file: !22, line: 384, baseType: !92, size: 5632)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !88, line: 376, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !88, line: 176, size: 5632, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !138, !142, !143, !144, !145, !149, !150, !164, !165, !166, !167, !168, !197, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !93, file: !88, line: 179, baseType: !7, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !93, file: !88, line: 180, baseType: !50, size: 32, offset: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !93, file: !88, line: 181, baseType: !50, size: 32, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !93, file: !88, line: 182, baseType: !50, size: 32, offset: 96)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !93, file: !88, line: 183, baseType: !50, size: 32, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !93, file: !88, line: 186, baseType: !50, size: 32, offset: 160)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !93, file: !88, line: 187, baseType: !50, size: 32, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !93, file: !88, line: 188, baseType: !50, size: 32, offset: 224)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !93, file: !88, line: 189, baseType: !50, size: 32, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !93, file: !88, line: 190, baseType: !50, size: 32, offset: 288)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !93, file: !88, line: 198, baseType: !50, size: 32, offset: 320)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !93, file: !88, line: 215, baseType: !107, size: 288, offset: 352)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !88, line: 200, size: 288, elements: !108)
!108 = !{!109, !110, !111, !112, !113, !114, !115, !116, !117}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !107, file: !88, line: 203, baseType: !50, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !107, file: !88, line: 204, baseType: !50, size: 32, offset: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !107, file: !88, line: 206, baseType: !50, size: 32, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !107, file: !88, line: 209, baseType: !50, size: 32, offset: 96)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !107, file: !88, line: 210, baseType: !50, size: 32, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !107, file: !88, line: 211, baseType: !50, size: 32, offset: 160)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !107, file: !88, line: 212, baseType: !50, size: 32, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !107, file: !88, line: 213, baseType: !50, size: 32, offset: 224)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !107, file: !88, line: 214, baseType: !50, size: 32, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !93, file: !88, line: 218, baseType: !50, size: 32, offset: 640)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !93, file: !88, line: 219, baseType: !50, size: 32, offset: 672)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !93, file: !88, line: 220, baseType: !50, size: 32, offset: 704)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !93, file: !88, line: 221, baseType: !50, size: 32, offset: 736)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !93, file: !88, line: 222, baseType: !50, size: 32, offset: 768)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !93, file: !88, line: 224, baseType: !50, size: 32, offset: 800)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !93, file: !88, line: 225, baseType: !50, size: 32, offset: 832)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !93, file: !88, line: 226, baseType: !50, size: 32, offset: 864)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !93, file: !88, line: 227, baseType: !50, size: 32, offset: 896)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !93, file: !88, line: 229, baseType: !50, size: 32, offset: 928)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !93, file: !88, line: 230, baseType: !50, size: 32, offset: 960)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !93, file: !88, line: 231, baseType: !50, size: 32, offset: 992)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !93, file: !88, line: 233, baseType: !50, size: 32, offset: 1024)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !93, file: !88, line: 234, baseType: !50, size: 32, offset: 1056)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !93, file: !88, line: 236, baseType: !50, size: 32, offset: 1088)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !93, file: !88, line: 237, baseType: !50, size: 32, offset: 1120)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !93, file: !88, line: 239, baseType: !50, size: 32, offset: 1152)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !93, file: !88, line: 240, baseType: !136, size: 64, offset: 1216)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !93, file: !88, line: 241, baseType: !139, size: 128, offset: 1280)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 128, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 16)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !93, file: !88, line: 242, baseType: !139, size: 128, offset: 1408)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !93, file: !88, line: 243, baseType: !139, size: 128, offset: 1536)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !93, file: !88, line: 244, baseType: !139, size: 128, offset: 1664)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !93, file: !88, line: 245, baseType: !146, size: 512, offset: 1792)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 512, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !93, file: !88, line: 246, baseType: !146, size: 512, offset: 2304)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !93, file: !88, line: 249, baseType: !151, size: 64, offset: 2816)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{null, !154, !50, !155, !157}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !159)
!159 = !{!160, !161, !162, !163}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !158, file: !3, baseType: !7, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !158, file: !3, baseType: !7, size: 32, offset: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !158, file: !3, baseType: !154, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !158, file: !3, baseType: !154, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !93, file: !88, line: 250, baseType: !154, size: 64, offset: 2880)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !93, file: !88, line: 251, baseType: !50, size: 32, offset: 2944)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !93, file: !88, line: 252, baseType: !50, size: 32, offset: 2976)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !93, file: !88, line: 253, baseType: !136, size: 64, offset: 3008)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !93, file: !88, line: 287, baseType: !169, size: 800, offset: 3072)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !88, line: 256, size: 800, elements: !170)
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !191, !192, !193, !195, !196}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !169, file: !88, line: 258, baseType: !7, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !169, file: !88, line: 259, baseType: !7, size: 32, offset: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !169, file: !88, line: 261, baseType: !50, size: 32, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !169, file: !88, line: 262, baseType: !50, size: 32, offset: 96)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !169, file: !88, line: 263, baseType: !50, size: 32, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !169, file: !88, line: 264, baseType: !50, size: 32, offset: 160)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !169, file: !88, line: 265, baseType: !50, size: 32, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !169, file: !88, line: 267, baseType: !50, size: 32, offset: 224)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !169, file: !88, line: 268, baseType: !50, size: 32, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !169, file: !88, line: 269, baseType: !50, size: 32, offset: 288)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !169, file: !88, line: 270, baseType: !50, size: 32, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !169, file: !88, line: 271, baseType: !50, size: 32, offset: 352)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !169, file: !88, line: 272, baseType: !50, size: 32, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !169, file: !88, line: 273, baseType: !50, size: 32, offset: 416)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !169, file: !88, line: 274, baseType: !50, size: 32, offset: 448)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !169, file: !88, line: 275, baseType: !50, size: 32, offset: 480)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !169, file: !88, line: 276, baseType: !50, size: 32, offset: 512)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !169, file: !88, line: 277, baseType: !50, size: 32, offset: 544)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !169, file: !88, line: 278, baseType: !190, size: 32, offset: 576)
!190 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !169, file: !88, line: 279, baseType: !190, size: 32, offset: 608)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !169, file: !88, line: 280, baseType: !50, size: 32, offset: 640)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !169, file: !88, line: 283, baseType: !194, size: 64, offset: 672)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 64, elements: !35)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !169, file: !88, line: 285, baseType: !50, size: 32, offset: 736)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !169, file: !88, line: 286, baseType: !50, size: 32, offset: 768)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !93, file: !88, line: 327, baseType: !198, size: 1152, offset: 3904)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !88, line: 290, size: 1152, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !237, !238}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !198, file: !88, line: 292, baseType: !50, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !198, file: !88, line: 294, baseType: !50, size: 32, offset: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !198, file: !88, line: 295, baseType: !50, size: 32, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !198, file: !88, line: 296, baseType: !50, size: 32, offset: 96)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !198, file: !88, line: 297, baseType: !50, size: 32, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !198, file: !88, line: 299, baseType: !50, size: 32, offset: 160)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !198, file: !88, line: 300, baseType: !190, size: 32, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !198, file: !88, line: 301, baseType: !190, size: 32, offset: 224)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !198, file: !88, line: 302, baseType: !190, size: 32, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !198, file: !88, line: 303, baseType: !50, size: 32, offset: 288)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !198, file: !88, line: 304, baseType: !50, size: 32, offset: 320)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !198, file: !88, line: 305, baseType: !190, size: 32, offset: 352)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !198, file: !88, line: 306, baseType: !190, size: 32, offset: 384)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !198, file: !88, line: 307, baseType: !190, size: 32, offset: 416)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !198, file: !88, line: 309, baseType: !50, size: 32, offset: 448)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !198, file: !88, line: 310, baseType: !190, size: 32, offset: 480)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !198, file: !88, line: 311, baseType: !50, size: 32, offset: 512)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !198, file: !88, line: 312, baseType: !50, size: 32, offset: 544)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !198, file: !88, line: 315, baseType: !50, size: 32, offset: 576)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !198, file: !88, line: 316, baseType: !136, size: 64, offset: 640)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !198, file: !88, line: 317, baseType: !50, size: 32, offset: 704)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !198, file: !88, line: 318, baseType: !136, size: 64, offset: 768)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !198, file: !88, line: 321, baseType: !190, size: 32, offset: 832)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !198, file: !88, line: 322, baseType: !190, size: 32, offset: 864)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !198, file: !88, line: 323, baseType: !190, size: 32, offset: 896)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !198, file: !88, line: 324, baseType: !226, size: 64, offset: 960)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !88, line: 174, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 167, size: 256, elements: !229)
!229 = !{!230, !231, !232, !233, !234, !235}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !228, file: !88, line: 169, baseType: !50, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !228, file: !88, line: 169, baseType: !50, size: 32, offset: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !228, file: !88, line: 170, baseType: !50, size: 32, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !228, file: !88, line: 171, baseType: !50, size: 32, offset: 96)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !228, file: !88, line: 172, baseType: !190, size: 32, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !228, file: !88, line: 173, baseType: !236, size: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !198, file: !88, line: 325, baseType: !50, size: 32, offset: 1024)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !198, file: !88, line: 326, baseType: !136, size: 64, offset: 1088)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !93, file: !88, line: 330, baseType: !50, size: 32, offset: 5056)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !93, file: !88, line: 331, baseType: !50, size: 32, offset: 5088)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !93, file: !88, line: 332, baseType: !50, size: 32, offset: 5120)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !93, file: !88, line: 334, baseType: !50, size: 32, offset: 5152)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !93, file: !88, line: 335, baseType: !50, size: 32, offset: 5184)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !93, file: !88, line: 336, baseType: !26, size: 32, offset: 5216)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !93, file: !88, line: 337, baseType: !26, size: 32, offset: 5248)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !93, file: !88, line: 338, baseType: !26, size: 32, offset: 5280)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !93, file: !88, line: 339, baseType: !26, size: 32, offset: 5312)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !93, file: !88, line: 340, baseType: !50, size: 32, offset: 5344)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !93, file: !88, line: 344, baseType: !50, size: 32, offset: 5376)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !93, file: !88, line: 356, baseType: !50, size: 32, offset: 5408)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !93, file: !88, line: 364, baseType: !50, size: 32, offset: 5440)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !93, file: !88, line: 367, baseType: !50, size: 32, offset: 5472)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !93, file: !88, line: 368, baseType: !50, size: 32, offset: 5504)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !93, file: !88, line: 369, baseType: !50, size: 32, offset: 5536)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !93, file: !88, line: 375, baseType: !256, size: 64, offset: 5568)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !154}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !89, file: !22, line: 386, baseType: !260, size: 8256, offset: 5632)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 8256, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 129)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !89, file: !22, line: 387, baseType: !50, size: 32, offset: 13888)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !89, file: !22, line: 388, baseType: !50, size: 32, offset: 13920)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !89, file: !22, line: 389, baseType: !50, size: 32, offset: 13952)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_start", scope: !89, file: !22, line: 390, baseType: !50, size: 32, offset: 13984)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_end", scope: !89, file: !22, line: 391, baseType: !50, size: 32, offset: 14016)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !89, file: !22, line: 402, baseType: !269, size: 576, offset: 14080)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !22, line: 394, size: 576, elements: !270)
!270 = !{!271, !272, !273, !283, !284, !285}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !269, file: !22, line: 396, baseType: !50, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "i_nals_allocated", scope: !269, file: !22, line: 397, baseType: !50, size: 32, offset: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !269, file: !22, line: 398, baseType: !274, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !88, line: 604, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 593, size: 192, elements: !277)
!277 = !{!278, !279, !280, !281}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !276, file: !88, line: 595, baseType: !50, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !276, file: !88, line: 596, baseType: !50, size: 32, offset: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !276, file: !88, line: 599, baseType: !50, size: 32, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !276, file: !88, line: 603, baseType: !282, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !269, file: !22, line: 399, baseType: !50, size: 32, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !269, file: !22, line: 400, baseType: !282, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !269, file: !22, line: 401, baseType: !286, size: 320, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !287, line: 56, baseType: !288)
!287 = !DIFile(filename: "x264_src/common/bs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5e3e135f4389fadb006d4bc4f2055a86")
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !287, line: 47, size: 320, elements: !289)
!289 = !{!290, !291, !292, !293, !297, !298}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !288, file: !287, line: 49, baseType: !282, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !288, file: !287, line: 50, baseType: !282, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !288, file: !287, line: 51, baseType: !282, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !288, file: !287, line: 53, baseType: !294, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !295, line: 87, baseType: !296)
!295 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!296 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !288, file: !287, line: 54, baseType: !50, size: 32, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !288, file: !287, line: 55, baseType: !50, size: 32, offset: 288)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer", scope: !89, file: !22, line: 404, baseType: !282, size: 64, offset: 14656)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer_size", scope: !89, file: !22, line: 405, baseType: !50, size: 32, offset: 14720)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !89, file: !22, line: 410, baseType: !50, size: 32, offset: 14752)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !89, file: !22, line: 411, baseType: !50, size: 32, offset: 14784)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_frames", scope: !89, file: !22, line: 413, baseType: !50, size: 32, offset: 14816)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !89, file: !22, line: 415, baseType: !50, size: 32, offset: 14848)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !89, file: !22, line: 416, baseType: !50, size: 32, offset: 14880)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields", scope: !89, file: !22, line: 418, baseType: !50, size: 32, offset: 14912)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields_last_frame", scope: !89, file: !22, line: 419, baseType: !50, size: 32, offset: 14944)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_duration", scope: !89, file: !22, line: 420, baseType: !50, size: 32, offset: 14976)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields", scope: !89, file: !22, line: 421, baseType: !50, size: 32, offset: 15008)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !89, file: !22, line: 422, baseType: !50, size: 32, offset: 15040)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !89, file: !22, line: 424, baseType: !50, size: 32, offset: 15072)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !89, file: !22, line: 425, baseType: !50, size: 32, offset: 15104)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "b_queued_intra_refresh", scope: !89, file: !22, line: 427, baseType: !50, size: 32, offset: 15136)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !89, file: !22, line: 430, baseType: !315, size: 10400, offset: 15168)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 10400, elements: !402)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !317, line: 154, baseType: !318)
!317 = !DIFile(filename: "x264_src/common/set.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "36bc2db0356ac829288e85d371259e00")
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !317, line: 52, size: 10400, elements: !319)
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !337, !338, !339, !340, !341, !342, !343, !344, !345, !352, !353, !401}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !318, file: !317, line: 54, baseType: !50, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !318, file: !317, line: 56, baseType: !50, size: 32, offset: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !318, file: !317, line: 57, baseType: !50, size: 32, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !318, file: !317, line: 59, baseType: !50, size: 32, offset: 96)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !318, file: !317, line: 60, baseType: !50, size: 32, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !318, file: !317, line: 61, baseType: !50, size: 32, offset: 160)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !318, file: !317, line: 63, baseType: !50, size: 32, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !318, file: !317, line: 65, baseType: !50, size: 32, offset: 224)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !318, file: !317, line: 67, baseType: !50, size: 32, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !318, file: !317, line: 69, baseType: !50, size: 32, offset: 288)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !318, file: !317, line: 70, baseType: !50, size: 32, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !318, file: !317, line: 71, baseType: !50, size: 32, offset: 352)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !318, file: !317, line: 72, baseType: !50, size: 32, offset: 384)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !318, file: !317, line: 73, baseType: !334, size: 8192, offset: 416)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 8192, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !318, file: !317, line: 75, baseType: !50, size: 32, offset: 8608)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !318, file: !317, line: 76, baseType: !50, size: 32, offset: 8640)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !318, file: !317, line: 77, baseType: !50, size: 32, offset: 8672)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !318, file: !317, line: 78, baseType: !50, size: 32, offset: 8704)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !318, file: !317, line: 79, baseType: !50, size: 32, offset: 8736)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !318, file: !317, line: 80, baseType: !50, size: 32, offset: 8768)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !318, file: !317, line: 81, baseType: !50, size: 32, offset: 8800)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !318, file: !317, line: 83, baseType: !50, size: 32, offset: 8832)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !318, file: !317, line: 90, baseType: !346, size: 128, offset: 8864)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !318, file: !317, line: 84, size: 128, elements: !347)
!347 = !{!348, !349, !350, !351}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !346, file: !317, line: 86, baseType: !50, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !346, file: !317, line: 87, baseType: !50, size: 32, offset: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !346, file: !317, line: 88, baseType: !50, size: 32, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !346, file: !317, line: 89, baseType: !50, size: 32, offset: 96)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !318, file: !317, line: 92, baseType: !50, size: 32, offset: 8992)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !318, file: !317, line: 150, baseType: !354, size: 1344, offset: 9024)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !318, file: !317, line: 93, size: 1344, elements: !355)
!355 = !{!356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !392, !393, !394, !395, !396, !397, !398, !399, !400}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !354, file: !317, line: 95, baseType: !50, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !354, file: !317, line: 96, baseType: !50, size: 32, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !354, file: !317, line: 97, baseType: !50, size: 32, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !354, file: !317, line: 99, baseType: !50, size: 32, offset: 96)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !354, file: !317, line: 100, baseType: !50, size: 32, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !354, file: !317, line: 102, baseType: !50, size: 32, offset: 160)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !354, file: !317, line: 103, baseType: !50, size: 32, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !354, file: !317, line: 104, baseType: !50, size: 32, offset: 224)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !354, file: !317, line: 105, baseType: !50, size: 32, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !354, file: !317, line: 106, baseType: !50, size: 32, offset: 288)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !354, file: !317, line: 107, baseType: !50, size: 32, offset: 320)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !354, file: !317, line: 108, baseType: !50, size: 32, offset: 352)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !354, file: !317, line: 110, baseType: !50, size: 32, offset: 384)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !354, file: !317, line: 111, baseType: !50, size: 32, offset: 416)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !354, file: !317, line: 112, baseType: !50, size: 32, offset: 448)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !354, file: !317, line: 114, baseType: !50, size: 32, offset: 480)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !354, file: !317, line: 115, baseType: !26, size: 32, offset: 512)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !354, file: !317, line: 116, baseType: !26, size: 32, offset: 544)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !354, file: !317, line: 117, baseType: !50, size: 32, offset: 576)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "b_nal_hrd_parameters_present", scope: !354, file: !317, line: 119, baseType: !50, size: 32, offset: 608)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "b_vcl_hrd_parameters_present", scope: !354, file: !317, line: 120, baseType: !50, size: 32, offset: 640)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "hrd", scope: !354, file: !317, line: 137, baseType: !378, size: 384, offset: 672)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !354, file: !317, line: 122, size: 384, elements: !379)
!379 = !{!380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_cnt", scope: !378, file: !317, line: 124, baseType: !50, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_scale", scope: !378, file: !317, line: 125, baseType: !50, size: 32, offset: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_scale", scope: !378, file: !317, line: 126, baseType: !50, size: 32, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_value", scope: !378, file: !317, line: 127, baseType: !50, size: 32, offset: 96)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_value", scope: !378, file: !317, line: 128, baseType: !50, size: 32, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_unscaled", scope: !378, file: !317, line: 129, baseType: !50, size: 32, offset: 160)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_unscaled", scope: !378, file: !317, line: 130, baseType: !50, size: 32, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "b_cbr_hrd", scope: !378, file: !317, line: 131, baseType: !50, size: 32, offset: 224)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "i_initial_cpb_removal_delay_length", scope: !378, file: !317, line: 133, baseType: !50, size: 32, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_removal_delay_length", scope: !378, file: !317, line: 134, baseType: !50, size: 32, offset: 288)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay_length", scope: !378, file: !317, line: 135, baseType: !50, size: 32, offset: 320)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_offset_length", scope: !378, file: !317, line: 136, baseType: !50, size: 32, offset: 352)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct_present", scope: !354, file: !317, line: 139, baseType: !50, size: 32, offset: 1056)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !354, file: !317, line: 140, baseType: !50, size: 32, offset: 1088)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !354, file: !317, line: 141, baseType: !50, size: 32, offset: 1120)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !354, file: !317, line: 142, baseType: !50, size: 32, offset: 1152)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !354, file: !317, line: 143, baseType: !50, size: 32, offset: 1184)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !354, file: !317, line: 144, baseType: !50, size: 32, offset: 1216)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !354, file: !317, line: 145, baseType: !50, size: 32, offset: 1248)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !354, file: !317, line: 146, baseType: !50, size: 32, offset: 1280)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !354, file: !317, line: 147, baseType: !50, size: 32, offset: 1312)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !318, file: !317, line: 152, baseType: !50, size: 32, offset: 10368)
!402 = !{!403}
!403 = !DISubrange(count: 1)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !89, file: !22, line: 431, baseType: !405, size: 64, offset: 25600)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !89, file: !22, line: 432, baseType: !407, size: 960, offset: 25664)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 960, elements: !402)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !317, line: 186, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !317, line: 156, size: 960, elements: !410)
!410 = !{!411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !409, file: !317, line: 158, baseType: !50, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !409, file: !317, line: 159, baseType: !50, size: 32, offset: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !409, file: !317, line: 161, baseType: !50, size: 32, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !409, file: !317, line: 163, baseType: !50, size: 32, offset: 96)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !409, file: !317, line: 164, baseType: !50, size: 32, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_default_active", scope: !409, file: !317, line: 166, baseType: !50, size: 32, offset: 160)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_default_active", scope: !409, file: !317, line: 167, baseType: !50, size: 32, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !409, file: !317, line: 169, baseType: !50, size: 32, offset: 224)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !409, file: !317, line: 170, baseType: !50, size: 32, offset: 256)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !409, file: !317, line: 172, baseType: !50, size: 32, offset: 288)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !409, file: !317, line: 173, baseType: !50, size: 32, offset: 320)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !409, file: !317, line: 175, baseType: !50, size: 32, offset: 352)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !409, file: !317, line: 177, baseType: !50, size: 32, offset: 384)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !409, file: !317, line: 178, baseType: !50, size: 32, offset: 416)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !409, file: !317, line: 179, baseType: !50, size: 32, offset: 448)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !409, file: !317, line: 181, baseType: !50, size: 32, offset: 480)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !409, file: !317, line: 183, baseType: !50, size: 32, offset: 512)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !409, file: !317, line: 184, baseType: !429, size: 384, offset: 576)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 384, elements: !432)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!432 = !{!433}
!433 = !DISubrange(count: 6)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !89, file: !22, line: 433, baseType: !435, size: 64, offset: 26624)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !89, file: !22, line: 434, baseType: !50, size: 32, offset: 26688)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts_compress_multiplier", scope: !89, file: !22, line: 437, baseType: !50, size: 32, offset: 26720)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !89, file: !22, line: 440, baseType: !439, size: 256, offset: 26752)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 256, elements: !42)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 512, elements: !140)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !89, file: !22, line: 441, baseType: !443, size: 128, offset: 27008)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 128, elements: !35)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 2048, elements: !147)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !89, file: !22, line: 443, baseType: !439, size: 256, offset: 27136)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !89, file: !22, line: 444, baseType: !443, size: 128, offset: 27392)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !89, file: !22, line: 446, baseType: !449, size: 256, offset: 27520)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 256, elements: !42)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 256, elements: !140)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !89, file: !22, line: 447, baseType: !453, size: 128, offset: 27776)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 128, elements: !35)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 1024, elements: !147)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !89, file: !22, line: 448, baseType: !449, size: 256, offset: 27904)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !89, file: !22, line: 449, baseType: !453, size: 128, offset: 28160)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv", scope: !89, file: !22, line: 454, baseType: !459, size: 5888, offset: 28288)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 5888, elements: !461)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!461 = !{!462}
!462 = !DISubrange(count: 92)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv_fpel", scope: !89, file: !22, line: 455, baseType: !464, size: 23552, offset: 34176)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 23552, elements: !465)
!465 = !{!462, !43}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !89, file: !22, line: 457, baseType: !430, size: 64, offset: 57728)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !89, file: !22, line: 460, baseType: !468, size: 53376, offset: 57856)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !22, line: 364, baseType: !469)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 302, size: 53376, elements: !470)
!470 = !{!471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !499, !524, !525, !526, !532, !533, !534, !535, !536, !537, !538, !539}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !469, file: !22, line: 304, baseType: !405, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !469, file: !22, line: 305, baseType: !435, size: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !469, file: !22, line: 307, baseType: !50, size: 32, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !469, file: !22, line: 308, baseType: !50, size: 32, offset: 160)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !469, file: !22, line: 309, baseType: !50, size: 32, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !469, file: !22, line: 311, baseType: !50, size: 32, offset: 224)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !469, file: !22, line: 313, baseType: !50, size: 32, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !469, file: !22, line: 315, baseType: !50, size: 32, offset: 288)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !469, file: !22, line: 316, baseType: !50, size: 32, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !469, file: !22, line: 317, baseType: !50, size: 32, offset: 352)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !469, file: !22, line: 319, baseType: !50, size: 32, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !469, file: !22, line: 321, baseType: !50, size: 32, offset: 416)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !469, file: !22, line: 322, baseType: !50, size: 32, offset: 448)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !469, file: !22, line: 324, baseType: !194, size: 64, offset: 480)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !469, file: !22, line: 325, baseType: !50, size: 32, offset: 544)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !469, file: !22, line: 327, baseType: !50, size: 32, offset: 576)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !469, file: !22, line: 329, baseType: !50, size: 32, offset: 608)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !469, file: !22, line: 330, baseType: !50, size: 32, offset: 640)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !469, file: !22, line: 331, baseType: !50, size: 32, offset: 672)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !469, file: !22, line: 333, baseType: !50, size: 32, offset: 704)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !469, file: !22, line: 334, baseType: !50, size: 32, offset: 736)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !469, file: !22, line: 339, baseType: !493, size: 2048, offset: 768)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 2048, elements: !498)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !469, file: !22, line: 335, size: 64, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !494, file: !22, line: 337, baseType: !50, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !494, file: !22, line: 338, baseType: !50, size: 32, offset: 32)
!498 = !{!36, !141}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !469, file: !22, line: 342, baseType: !500, size: 49152, align: 128, offset: 2816)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 49152, align: 128, elements: !521)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_weight_t", file: !502, line: 36, baseType: !503, align: 128)
!502 = !DIFile(filename: "x264_src/common/mc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "04d0fbb98b637fe4174e4cc20d723861")
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_weight_t", file: !502, line: 26, size: 512, elements: !504)
!504 = !{!505, !507, !508, !511, !512, !513}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "cachea", scope: !503, file: !502, line: 30, baseType: !506, size: 128, align: 128)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 128, elements: !71)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "cacheb", scope: !503, file: !502, line: 31, baseType: !506, size: 128, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "i_denom", scope: !503, file: !502, line: 32, baseType: !509, size: 32, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !54, line: 26, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !29, line: 41, baseType: !50)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "i_scale", scope: !503, file: !502, line: 33, baseType: !509, size: 32, offset: 288)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset", scope: !503, file: !502, line: 34, baseType: !509, size: 32, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "weightfn", scope: !503, file: !502, line: 35, baseType: !514, size: 64, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "weight_fn_t", file: !502, line: 25, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !282, !50, !282, !50, !519, !50}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!521 = !{!522, !523}
!522 = !DISubrange(count: 32)
!523 = !DISubrange(count: 3)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_remove_from_end", scope: !469, file: !22, line: 344, baseType: !50, size: 32, offset: 51968)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_command_count", scope: !469, file: !22, line: 345, baseType: !50, size: 32, offset: 52000)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "mmco", scope: !469, file: !22, line: 350, baseType: !527, size: 1024, offset: 52032)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 1024, elements: !140)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !469, file: !22, line: 346, size: 64, elements: !529)
!529 = !{!530, !531}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "i_difference_of_pic_nums", scope: !528, file: !22, line: 348, baseType: !50, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !528, file: !22, line: 349, baseType: !50, size: 32, offset: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !469, file: !22, line: 352, baseType: !50, size: 32, offset: 53056)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !469, file: !22, line: 354, baseType: !50, size: 32, offset: 53088)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !469, file: !22, line: 355, baseType: !50, size: 32, offset: 53120)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !469, file: !22, line: 356, baseType: !50, size: 32, offset: 53152)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !469, file: !22, line: 357, baseType: !50, size: 32, offset: 53184)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !469, file: !22, line: 360, baseType: !50, size: 32, offset: 53216)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !469, file: !22, line: 361, baseType: !50, size: 32, offset: 53248)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !469, file: !22, line: 362, baseType: !50, size: 32, offset: 53280)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !89, file: !22, line: 463, baseType: !541, size: 4096, offset: 111232)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !542, line: 46, baseType: !543)
!542 = !DIFile(filename: "x264_src/common/cabac.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "22d062fb0f207ca9dcf17e0003a54ffb")
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !542, line: 27, size: 4096, elements: !544)
!544 = !{!545, !546, !547, !548, !549, !550, !551, !552, !553}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !543, file: !542, line: 30, baseType: !50, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !543, file: !542, line: 31, baseType: !50, size: 32, offset: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !543, file: !542, line: 34, baseType: !50, size: 32, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !543, file: !542, line: 35, baseType: !50, size: 32, offset: 96)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !543, file: !542, line: 37, baseType: !282, size: 64, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !543, file: !542, line: 38, baseType: !282, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !543, file: !542, line: 39, baseType: !282, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !543, file: !542, line: 42, baseType: !50, size: 32, align: 128, offset: 384)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !543, file: !542, line: 45, baseType: !554, size: 3680, offset: 416)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 3680, elements: !555)
!555 = !{!556}
!556 = !DISubrange(count: 460)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !89, file: !22, line: 494, baseType: !558, size: 2112, offset: 115328)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !22, line: 465, size: 2112, elements: !559)
!559 = !{!560, !697, !699, !700, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !713, !714, !715, !716}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !558, file: !22, line: 468, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !564, line: 146, baseType: !565)
!564 = !DIFile(filename: "x264_src/common/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "4a274a9291201f03b4af1f57e6a86f6f")
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_frame", file: !564, line: 31, size: 125056, elements: !566)
!566 = !{!567, !568, !569, !570, !573, !574, !575, !576, !577, !578, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !597, !598, !599, !600, !601, !602, !604, !606, !607, !608, !609, !610, !613, !615, !616, !618, !623, !624, !627, !628, !632, !636, !639, !641, !642, !644, !645, !647, !648, !649, !652, !654, !655, !656, !658, !659, !660, !661, !662, !663, !664, !665, !667, !668, !669, !678, !682, !684, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !565, file: !564, line: 34, baseType: !50, size: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !565, file: !564, line: 35, baseType: !50, size: 32, offset: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !565, file: !564, line: 36, baseType: !50, size: 32, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !565, file: !564, line: 37, baseType: !571, size: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !54, line: 27, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !29, line: 44, baseType: !296)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts", scope: !565, file: !564, line: 38, baseType: !571, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "i_duration", scope: !565, file: !564, line: 39, baseType: !50, size: 32, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_duration", scope: !565, file: !564, line: 40, baseType: !50, size: 32, offset: 288)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !565, file: !564, line: 41, baseType: !50, size: 32, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay", scope: !565, file: !564, line: 42, baseType: !50, size: 32, offset: 352)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !565, file: !564, line: 43, baseType: !579, size: 64, offset: 384)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !565, file: !564, line: 45, baseType: !50, size: 32, offset: 448)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded", scope: !565, file: !564, line: 46, baseType: !50, size: 32, offset: 480)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "i_field_cnt", scope: !565, file: !564, line: 47, baseType: !50, size: 32, offset: 512)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !565, file: !564, line: 48, baseType: !50, size: 32, offset: 544)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !565, file: !564, line: 49, baseType: !50, size: 32, offset: 576)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !565, file: !564, line: 50, baseType: !50, size: 32, offset: 608)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !565, file: !564, line: 51, baseType: !50, size: 32, offset: 640)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "b_fdec", scope: !565, file: !564, line: 52, baseType: !39, size: 8, offset: 672)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "b_last_minigop_bframe", scope: !565, file: !564, line: 53, baseType: !39, size: 8, offset: 680)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframes", scope: !565, file: !564, line: 54, baseType: !39, size: 8, offset: 688)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !565, file: !564, line: 55, baseType: !190, size: 32, offset: 704)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !565, file: !564, line: 56, baseType: !190, size: 32, offset: 736)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_l0ref0", scope: !565, file: !564, line: 57, baseType: !50, size: 32, offset: 768)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !565, file: !564, line: 60, baseType: !50, size: 32, offset: 800)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !565, file: !564, line: 61, baseType: !595, size: 96, offset: 832)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 96, elements: !596)
!596 = !{!523}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !565, file: !564, line: 62, baseType: !595, size: 96, offset: 928)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !565, file: !564, line: 63, baseType: !595, size: 96, offset: 1024)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !565, file: !564, line: 64, baseType: !50, size: 32, offset: 1120)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !565, file: !564, line: 65, baseType: !50, size: 32, offset: 1152)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !565, file: !564, line: 66, baseType: !50, size: 32, offset: 1184)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !565, file: !564, line: 67, baseType: !603, size: 192, offset: 1216)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 192, elements: !596)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !565, file: !564, line: 68, baseType: !605, size: 256, offset: 1408)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 256, elements: !42)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !565, file: !564, line: 69, baseType: !605, size: 256, offset: 1664)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !565, file: !564, line: 70, baseType: !460, size: 64, offset: 1920)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !565, file: !564, line: 74, baseType: !605, size: 256, offset: 1984)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !565, file: !564, line: 75, baseType: !605, size: 256, offset: 2240)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !565, file: !564, line: 77, baseType: !611, size: 24576, align: 128, offset: 2560)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 24576, align: 128, elements: !612)
!612 = !{!141, !523}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "weighted", scope: !565, file: !564, line: 78, baseType: !614, size: 1024, offset: 27136)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 1024, elements: !140)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "b_duplicate", scope: !565, file: !564, line: 79, baseType: !50, size: 32, offset: 28160)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !565, file: !564, line: 80, baseType: !617, size: 64, offset: 28224)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !565, file: !564, line: 83, baseType: !619, size: 64, offset: 28288)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !54, line: 24, baseType: !621)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !29, line: 37, baseType: !622)
!622 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "mb_partition", scope: !565, file: !564, line: 84, baseType: !282, size: 64, offset: 28352)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !565, file: !564, line: 85, baseType: !625, size: 128, offset: 28416)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !626, size: 128, elements: !35)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "mv16x16", scope: !565, file: !564, line: 86, baseType: !626, size: 64, offset: 28544)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !565, file: !564, line: 87, baseType: !629, size: 2176, offset: 28608)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !626, size: 2176, elements: !630)
!630 = !{!36, !631}
!631 = !DISubrange(count: 17)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_costs", scope: !565, file: !564, line: 92, baseType: !633, size: 20736, offset: 30784)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 20736, elements: !634)
!634 = !{!635, !635}
!635 = !DISubrange(count: 18)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !565, file: !564, line: 96, baseType: !637, size: 2176, offset: 51520)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !638, size: 2176, elements: !630)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !565, file: !564, line: 97, baseType: !640, size: 128, offset: 53696)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 128, elements: !35)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !565, file: !564, line: 98, baseType: !194, size: 64, offset: 53824)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !565, file: !564, line: 99, baseType: !643, size: 1024, offset: 53888)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 1024, elements: !498)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !565, file: !564, line: 100, baseType: !52, size: 32, offset: 54912)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !565, file: !564, line: 105, baseType: !646, size: 10368, offset: 54944)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 10368, elements: !634)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !565, file: !564, line: 106, baseType: !646, size: 10368, offset: 65312)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !565, file: !564, line: 107, baseType: !50, size: 32, offset: 75680)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !565, file: !564, line: 108, baseType: !650, size: 576, offset: 75712)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 576, elements: !651)
!651 = !{!635}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !565, file: !564, line: 109, baseType: !653, size: 20736, offset: 76288)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !638, size: 20736, elements: !634)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !565, file: !564, line: 110, baseType: !638, size: 64, offset: 97024)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !565, file: !564, line: 111, baseType: !638, size: 64, offset: 97088)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "f_row_qp", scope: !565, file: !564, line: 112, baseType: !657, size: 64, offset: 97152)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !565, file: !564, line: 113, baseType: !657, size: 64, offset: 97216)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset_aq", scope: !565, file: !564, line: 114, baseType: !657, size: 64, offset: 97280)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !565, file: !564, line: 115, baseType: !50, size: 32, offset: 97344)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !565, file: !564, line: 116, baseType: !460, size: 64, offset: 97408)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "i_propagate_cost", scope: !565, file: !564, line: 117, baseType: !460, size: 64, offset: 97472)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !565, file: !564, line: 118, baseType: !460, size: 64, offset: 97536)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "b_scenecut", scope: !565, file: !564, line: 119, baseType: !50, size: 32, offset: 97600)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "f_weighted_cost_delta", scope: !565, file: !564, line: 120, baseType: !666, size: 576, offset: 97632)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 576, elements: !651)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_sum", scope: !565, file: !564, line: 121, baseType: !26, size: 32, offset: 98208)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_ssd", scope: !565, file: !564, line: 122, baseType: !62, size: 64, offset: 98240)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !565, file: !564, line: 125, baseType: !670, size: 256, offset: 98304)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !88, line: 503, baseType: !671)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 496, size: 256, elements: !672)
!672 = !{!673, !675, !676, !677}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !671, file: !88, line: 498, baseType: !674, size: 64)
!674 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !671, file: !88, line: 499, baseType: !674, size: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !671, file: !88, line: 500, baseType: !674, size: 64, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !671, file: !88, line: 502, baseType: !674, size: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_type", scope: !565, file: !564, line: 128, baseType: !679, size: 2008, offset: 98560)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 2008, elements: !680)
!680 = !{!681}
!681 = !DISubrange(count: 251)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_satd", scope: !565, file: !564, line: 129, baseType: !683, size: 8032, offset: 100576)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 8032, elements: !680)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "f_planned_cpb_duration", scope: !565, file: !564, line: 130, baseType: !685, size: 16064, offset: 108608)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 16064, elements: !680)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !565, file: !564, line: 131, baseType: !50, size: 32, offset: 124672)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !565, file: !564, line: 132, baseType: !50, size: 32, offset: 124704)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !565, file: !564, line: 135, baseType: !50, size: 32, offset: 124736)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_weighted", scope: !565, file: !564, line: 136, baseType: !50, size: 32, offset: 124768)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !565, file: !564, line: 137, baseType: !50, size: 32, offset: 124800)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !565, file: !564, line: 138, baseType: !50, size: 32, offset: 124832)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !565, file: !564, line: 139, baseType: !50, size: 32, offset: 124864)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "f_pir_position", scope: !565, file: !564, line: 142, baseType: !190, size: 32, offset: 124896)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_start_col", scope: !565, file: !564, line: 143, baseType: !50, size: 32, offset: 124928)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_end_col", scope: !565, file: !564, line: 144, baseType: !50, size: 32, offset: 124960)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_frames_since_pir", scope: !565, file: !564, line: 145, baseType: !50, size: 32, offset: 124992)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !558, file: !22, line: 470, baseType: !698, size: 128, offset: 64)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, size: 128, elements: !35)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "blank_unused", scope: !558, file: !22, line: 473, baseType: !561, size: 64, offset: 192)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !558, file: !22, line: 476, baseType: !701, size: 1152, offset: 256)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 1152, elements: !651)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !558, file: !22, line: 478, baseType: !50, size: 32, offset: 1408)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !558, file: !22, line: 480, baseType: !50, size: 32, offset: 1440)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !558, file: !22, line: 482, baseType: !50, size: 32, offset: 1472)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !558, file: !22, line: 483, baseType: !50, size: 32, offset: 1504)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !558, file: !22, line: 484, baseType: !50, size: 32, offset: 1536)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !558, file: !22, line: 485, baseType: !50, size: 32, offset: 1568)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay", scope: !558, file: !22, line: 486, baseType: !50, size: 32, offset: 1600)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay_time", scope: !558, file: !22, line: 487, baseType: !571, size: 64, offset: 1664)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "i_init_delta", scope: !558, file: !22, line: 488, baseType: !571, size: 64, offset: 1728)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_reordered_pts", scope: !558, file: !22, line: 489, baseType: !712, size: 128, offset: 1792)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 128, elements: !35)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "i_largest_pts", scope: !558, file: !22, line: 490, baseType: !571, size: 64, offset: 1920)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "i_second_largest_pts", scope: !558, file: !22, line: 491, baseType: !571, size: 64, offset: 1984)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !558, file: !22, line: 492, baseType: !50, size: 32, offset: 2048)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_sub8x8_esa", scope: !558, file: !22, line: 493, baseType: !50, size: 32, offset: 2080)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !89, file: !22, line: 497, baseType: !562, size: 64, offset: 117440)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !89, file: !22, line: 500, baseType: !562, size: 64, offset: 117504)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !89, file: !22, line: 503, baseType: !50, size: 32, offset: 117568)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !89, file: !22, line: 504, baseType: !721, size: 1216, offset: 117632)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 1216, elements: !722)
!722 = !{!723}
!723 = !DISubrange(count: 19)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !89, file: !22, line: 505, baseType: !50, size: 32, offset: 118848)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !89, file: !22, line: 506, baseType: !721, size: 1216, offset: 118912)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !89, file: !22, line: 507, baseType: !194, size: 64, offset: 120128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay", scope: !89, file: !22, line: 510, baseType: !50, size: 32, offset: 120192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_offset", scope: !89, file: !22, line: 511, baseType: !50, size: 32, offset: 120224)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts_delay", scope: !89, file: !22, line: 512, baseType: !571, size: 64, offset: 120256)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !89, file: !22, line: 522, baseType: !731, size: 10624, offset: 120320)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !22, line: 515, size: 10624, elements: !732)
!732 = !{!733, !735, !738, !741}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !731, file: !22, line: 517, baseType: !734, size: 256, align: 128)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 256, elements: !140)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !731, file: !22, line: 518, baseType: !736, size: 128, align: 128, offset: 256)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 128, elements: !737)
!737 = !{!36, !43}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !731, file: !22, line: 520, baseType: !739, size: 4096, align: 128, offset: 384)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 4096, elements: !740)
!740 = !{!43, !148}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !731, file: !22, line: 521, baseType: !742, size: 6144, align: 128, offset: 4480)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 6144, elements: !743)
!743 = !{!744, !141}
!744 = !DISubrange(count: 24)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !89, file: !22, line: 732, baseType: !746, size: 82688, offset: 130944)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !22, line: 525, size: 82688, elements: !747)
!747 = !{!748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !775, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !793, !796, !800, !801, !802, !807, !808, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !876, !907, !908, !909, !910, !911, !912, !913, !914, !915, !918, !919, !920, !923, !926, !928, !931, !933, !934}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !746, file: !22, line: 527, baseType: !50, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !746, file: !22, line: 530, baseType: !50, size: 32, offset: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !746, file: !22, line: 531, baseType: !50, size: 32, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !746, file: !22, line: 532, baseType: !50, size: 32, offset: 96)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !746, file: !22, line: 535, baseType: !50, size: 32, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !746, file: !22, line: 536, baseType: !50, size: 32, offset: 160)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !746, file: !22, line: 537, baseType: !50, size: 32, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !746, file: !22, line: 538, baseType: !50, size: 32, offset: 224)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !746, file: !22, line: 539, baseType: !50, size: 32, offset: 256)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !746, file: !22, line: 542, baseType: !50, size: 32, offset: 288)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !746, file: !22, line: 543, baseType: !50, size: 32, offset: 320)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !746, file: !22, line: 544, baseType: !50, size: 32, offset: 352)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !746, file: !22, line: 545, baseType: !50, size: 32, offset: 384)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !746, file: !22, line: 546, baseType: !50, size: 32, offset: 416)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !746, file: !22, line: 547, baseType: !50, size: 32, offset: 448)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !746, file: !22, line: 548, baseType: !50, size: 32, offset: 480)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !746, file: !22, line: 549, baseType: !50, size: 32, offset: 512)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !746, file: !22, line: 551, baseType: !50, size: 32, offset: 544)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !746, file: !22, line: 554, baseType: !194, size: 64, offset: 576)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !746, file: !22, line: 555, baseType: !194, size: 64, offset: 640)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !746, file: !22, line: 558, baseType: !194, size: 64, offset: 704)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !746, file: !22, line: 559, baseType: !194, size: 64, offset: 768)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !746, file: !22, line: 561, baseType: !194, size: 64, offset: 832)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !746, file: !22, line: 562, baseType: !194, size: 64, offset: 896)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !746, file: !22, line: 565, baseType: !7, size: 32, offset: 960)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !746, file: !22, line: 566, baseType: !774, size: 128, offset: 992)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !42)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !746, file: !22, line: 567, baseType: !776, size: 512, offset: 1120)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !140)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_intra", scope: !746, file: !22, line: 568, baseType: !7, size: 32, offset: 1632)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_frame", scope: !746, file: !22, line: 569, baseType: !7, size: 32, offset: 1664)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !746, file: !22, line: 570, baseType: !50, size: 32, offset: 1696)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !746, file: !22, line: 571, baseType: !50, size: 32, offset: 1728)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !746, file: !22, line: 572, baseType: !50, size: 32, offset: 1760)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !746, file: !22, line: 573, baseType: !50, size: 32, offset: 1792)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !746, file: !22, line: 574, baseType: !50, size: 32, offset: 1824)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_left_xy", scope: !746, file: !22, line: 575, baseType: !50, size: 32, offset: 1856)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !746, file: !22, line: 576, baseType: !50, size: 32, offset: 1888)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topleft_xy", scope: !746, file: !22, line: 577, baseType: !50, size: 32, offset: 1920)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topright_xy", scope: !746, file: !22, line: 578, baseType: !50, size: 32, offset: 1952)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !746, file: !22, line: 585, baseType: !619, size: 64, offset: 1984)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !746, file: !22, line: 586, baseType: !282, size: 64, offset: 2048)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !746, file: !22, line: 587, baseType: !619, size: 64, offset: 2112)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !746, file: !22, line: 588, baseType: !792, size: 64, offset: 2176)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !746, file: !22, line: 589, baseType: !794, size: 64, offset: 2240)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, size: 64, elements: !71)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !746, file: !22, line: 591, baseType: !797, size: 64, offset: 2304)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 192, elements: !799)
!799 = !{!744}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !746, file: !22, line: 592, baseType: !619, size: 64, offset: 2368)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !746, file: !22, line: 593, baseType: !625, size: 128, offset: 2432)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !746, file: !22, line: 594, baseType: !803, size: 128, offset: 2560)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, size: 128, elements: !35)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 128, elements: !806)
!806 = !{!72, !36}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !746, file: !22, line: 595, baseType: !640, size: 128, offset: 2688)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !746, file: !22, line: 596, baseType: !809, size: 4096, offset: 2816)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !626, size: 4096, elements: !810)
!810 = !{!36, !522}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !746, file: !22, line: 597, baseType: !619, size: 64, offset: 6912)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !746, file: !22, line: 598, baseType: !619, size: 64, offset: 6976)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "slice_table", scope: !746, file: !22, line: 599, baseType: !460, size: 64, offset: 7040)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "p_weight_buf", scope: !746, file: !22, line: 603, baseType: !614, size: 1024, offset: 7104)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !746, file: !22, line: 606, baseType: !50, size: 32, offset: 8128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !746, file: !22, line: 607, baseType: !50, size: 32, offset: 8160)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !746, file: !22, line: 608, baseType: !38, size: 32, align: 32, offset: 8192)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !746, file: !22, line: 609, baseType: !50, size: 32, offset: 8224)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !746, file: !22, line: 611, baseType: !50, size: 32, offset: 8256)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !746, file: !22, line: 612, baseType: !50, size: 32, offset: 8288)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !746, file: !22, line: 614, baseType: !50, size: 32, offset: 8320)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !746, file: !22, line: 615, baseType: !50, size: 32, offset: 8352)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !746, file: !22, line: 621, baseType: !50, size: 32, offset: 8384)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !746, file: !22, line: 624, baseType: !50, size: 32, offset: 8416)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "b_reencode_mb", scope: !746, file: !22, line: 626, baseType: !50, size: 32, offset: 8448)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "ip_offset", scope: !746, file: !22, line: 627, baseType: !50, size: 32, offset: 8480)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !746, file: !22, line: 671, baseType: !828, size: 60672, offset: 8576)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !746, file: !22, line: 629, size: 60672, elements: !829)
!829 = !{!830, !834, !838, !840, !841, !844, !848, !850, !851, !852, !853, !854, !857, !861, !864, !865, !866, !867, !868, !871, !873, !875}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !828, file: !22, line: 634, baseType: !831, size: 3072, align: 128)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 3072, elements: !832)
!832 = !{!833}
!833 = !DISubrange(count: 384)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !828, file: !22, line: 635, baseType: !835, size: 6912, align: 128, offset: 3072)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 6912, elements: !836)
!836 = !{!837}
!837 = !DISubrange(count: 864)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !828, file: !22, line: 638, baseType: !839, size: 2048, align: 128, offset: 9984)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 2048, elements: !335)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !828, file: !22, line: 639, baseType: !839, size: 2048, align: 128, offset: 12032)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !828, file: !22, line: 640, baseType: !842, size: 3072, align: 128, offset: 14080)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 3072, elements: !843)
!843 = !{!523, !148}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !828, file: !22, line: 641, baseType: !845, size: 3840, align: 128, offset: 17152)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 3840, elements: !846)
!846 = !{!847, !141}
!847 = !DISubrange(count: 15)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_nnz_buf", scope: !828, file: !22, line: 642, baseType: !849, size: 128, offset: 20992)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 128, elements: !42)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_nnz_buf", scope: !828, file: !22, line: 643, baseType: !849, size: 128, offset: 21120)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_cbp", scope: !828, file: !22, line: 644, baseType: !50, size: 32, offset: 21248)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_cbp", scope: !828, file: !22, line: 645, baseType: !50, size: 32, offset: 21280)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !828, file: !22, line: 648, baseType: !739, size: 4096, align: 128, offset: 21376)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !828, file: !22, line: 649, baseType: !855, size: 4096, align: 128, offset: 25472)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 4096, elements: !856)
!856 = !{!141, !141}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_hadamard_cache", scope: !828, file: !22, line: 652, baseType: !858, size: 576, align: 128, offset: 29568)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 576, elements: !859)
!859 = !{!860}
!860 = !DISubrange(count: 9)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_cache", scope: !828, file: !22, line: 653, baseType: !862, size: 1024, align: 128, offset: 30208)
!862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 1024, elements: !863)
!863 = !{!522}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !828, file: !22, line: 656, baseType: !603, size: 192, offset: 31232)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !828, file: !22, line: 658, baseType: !603, size: 192, offset: 31424)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !828, file: !22, line: 661, baseType: !603, size: 192, offset: 31616)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !828, file: !22, line: 664, baseType: !194, size: 64, offset: 31808)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !828, file: !22, line: 665, baseType: !869, size: 24576, offset: 31872)
!869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 24576, elements: !870)
!870 = !{!36, !522, !433}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref_w", scope: !828, file: !22, line: 666, baseType: !872, size: 2048, offset: 56448)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 2048, elements: !863)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !828, file: !22, line: 667, baseType: !874, size: 2048, offset: 58496)
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 2048, elements: !498)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !828, file: !22, line: 670, baseType: !595, size: 96, offset: 60544)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !746, file: !22, line: 704, baseType: !877, size: 6144, offset: 69248)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !746, file: !22, line: 674, size: 6144, elements: !878)
!878 = !{!879, !883, !887, !890, !893, !895, !896, !899, !901, !902, !903, !904, !905, !906}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !877, file: !22, line: 677, baseType: !880, size: 320, align: 64)
!880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, size: 320, elements: !881)
!881 = !{!882}
!882 = !DISubrange(count: 40)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !877, file: !22, line: 680, baseType: !884, size: 384, align: 128, offset: 384)
!884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 384, elements: !885)
!885 = !{!886}
!886 = !DISubrange(count: 48)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !877, file: !22, line: 683, baseType: !888, size: 640, align: 32, offset: 768)
!888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, size: 640, elements: !889)
!889 = !{!36, !882}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !877, file: !22, line: 686, baseType: !891, size: 2560, align: 128, offset: 1408)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 2560, elements: !892)
!892 = !{!36, !882, !36}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !877, file: !22, line: 687, baseType: !894, size: 1280, align: 64, offset: 3968)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 1280, elements: !892)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !877, file: !22, line: 690, baseType: !880, size: 320, align: 32, offset: 5248)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !877, file: !22, line: 692, baseType: !897, size: 256, align: 32, offset: 5568)
!897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 256, elements: !898)
!898 = !{!36, !43, !36}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !877, file: !22, line: 693, baseType: !900, size: 64, align: 32, offset: 5824)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, size: 64, elements: !737)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "direct_partition", scope: !877, file: !22, line: 694, baseType: !50, size: 32, offset: 5888)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !877, file: !22, line: 695, baseType: !52, size: 32, align: 32, offset: 5920)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !877, file: !22, line: 698, baseType: !50, size: 32, offset: 5952)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !877, file: !22, line: 699, baseType: !50, size: 32, offset: 5984)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_top", scope: !877, file: !22, line: 702, baseType: !50, size: 32, offset: 6016)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_left", scope: !877, file: !22, line: 703, baseType: !50, size: 32, offset: 6048)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !746, file: !22, line: 707, baseType: !50, size: 32, offset: 75392)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !746, file: !22, line: 708, baseType: !50, size: 32, offset: 75424)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !746, file: !22, line: 709, baseType: !50, size: 32, offset: 75456)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !746, file: !22, line: 710, baseType: !50, size: 32, offset: 75488)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !746, file: !22, line: 711, baseType: !50, size: 32, offset: 75520)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !746, file: !22, line: 712, baseType: !50, size: 32, offset: 75552)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !746, file: !22, line: 713, baseType: !50, size: 32, offset: 75584)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !746, file: !22, line: 714, baseType: !50, size: 32, offset: 75616)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis_lambda2", scope: !746, file: !22, line: 717, baseType: !916, size: 128, offset: 75648)
!916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 128, elements: !917)
!917 = !{!36, !36}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd_lambda", scope: !746, file: !22, line: 718, baseType: !50, size: 32, offset: 75776)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_lambda2_offset", scope: !746, file: !22, line: 719, baseType: !50, size: 32, offset: 75808)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor_buf", scope: !746, file: !22, line: 722, baseType: !921, size: 4096, offset: 75840)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 4096, elements: !922)
!922 = !{!36, !522, !43}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !746, file: !22, line: 723, baseType: !924, size: 64, offset: 79936)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 64, elements: !42)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight_buf", scope: !746, file: !22, line: 724, baseType: !927, size: 2048, offset: 80000)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, size: 2048, elements: !922)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !746, file: !22, line: 725, baseType: !929, size: 64, offset: 82048)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, size: 32, elements: !42)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !746, file: !22, line: 728, baseType: !932, size: 144, offset: 82112)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, size: 144, elements: !651)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "ref_blind_dupe", scope: !746, file: !22, line: 729, baseType: !50, size: 32, offset: 82272)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_ref_table", scope: !746, file: !22, line: 730, baseType: !935, size: 272, offset: 82304)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, size: 272, elements: !936)
!936 = !{!937}
!937 = !DISubrange(count: 34)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !89, file: !22, line: 735, baseType: !939, size: 64, offset: 213632)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !22, line: 379, baseType: !941)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !22, line: 379, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !89, file: !22, line: 793, baseType: !943, size: 29504, offset: 213696)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !22, line: 738, size: 29504, elements: !944)
!944 = !{!945, !972, !976, !978, !980, !981, !982, !983, !984, !985, !986, !987, !990, !992, !993, !996, !998, !1000, !1001, !1002}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !943, file: !22, line: 764, baseType: !946, size: 5632)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !943, file: !22, line: 741, size: 5632, elements: !947)
!947 = !{!948, !949, !950, !951, !953, !954, !955, !956, !957, !959, !962, !964, !968, !969, !971}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !946, file: !22, line: 744, baseType: !50, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !946, file: !22, line: 746, baseType: !50, size: 32, offset: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !946, file: !22, line: 748, baseType: !50, size: 32, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !946, file: !22, line: 750, baseType: !952, size: 608, offset: 96)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 608, elements: !722)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !946, file: !22, line: 751, baseType: !50, size: 32, offset: 704)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !946, file: !22, line: 752, baseType: !50, size: 32, offset: 736)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !946, file: !22, line: 753, baseType: !50, size: 32, offset: 768)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !946, file: !22, line: 754, baseType: !194, size: 64, offset: 800)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !946, file: !22, line: 755, baseType: !958, size: 2048, offset: 864)
!958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 2048, elements: !810)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !946, file: !22, line: 756, baseType: !960, size: 544, offset: 2912)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 544, elements: !961)
!961 = !{!631}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !946, file: !22, line: 757, baseType: !963, size: 192, offset: 3456)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 192, elements: !432)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !946, file: !22, line: 758, baseType: !965, size: 1664, offset: 3648)
!965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 1664, elements: !966)
!966 = !{!43, !967}
!967 = !DISubrange(count: 13)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !946, file: !22, line: 760, baseType: !194, size: 64, offset: 5312)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !946, file: !22, line: 762, baseType: !970, size: 192, offset: 5376)
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 192, elements: !596)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !946, file: !22, line: 763, baseType: !674, size: 64, offset: 5568)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_count", scope: !943, file: !22, line: 769, baseType: !973, size: 160, offset: 5632)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 160, elements: !974)
!974 = !{!975}
!975 = !DISubrange(count: 5)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !943, file: !22, line: 770, baseType: !977, size: 320, offset: 5824)
!977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 320, elements: !974)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "f_frame_qp", scope: !943, file: !22, line: 771, baseType: !979, size: 320, offset: 6144)
!979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 320, elements: !974)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !943, file: !22, line: 772, baseType: !960, size: 544, offset: 6464)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !943, file: !22, line: 774, baseType: !977, size: 320, offset: 7040)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !943, file: !22, line: 775, baseType: !979, size: 320, offset: 7360)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !943, file: !22, line: 776, baseType: !979, size: 320, offset: 7680)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !943, file: !22, line: 777, baseType: !979, size: 320, offset: 8000)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !943, file: !22, line: 778, baseType: !979, size: 320, offset: 8320)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !943, file: !22, line: 779, baseType: !979, size: 320, offset: 8640)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !943, file: !22, line: 781, baseType: !988, size: 6080, offset: 8960)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 6080, elements: !989)
!989 = !{!975, !723}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !943, file: !22, line: 782, baseType: !991, size: 2176, offset: 15040)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 2176, elements: !630)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !943, file: !22, line: 783, baseType: !712, size: 128, offset: 17216)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !943, file: !22, line: 784, baseType: !994, size: 8192, offset: 17344)
!994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 8192, elements: !995)
!995 = !{!36, !36, !522}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !943, file: !22, line: 785, baseType: !997, size: 384, offset: 25536)
!997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 384, elements: !432)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !943, file: !22, line: 786, baseType: !999, size: 3328, offset: 25920)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 3328, elements: !966)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !943, file: !22, line: 788, baseType: !194, size: 64, offset: 29248)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !943, file: !22, line: 789, baseType: !194, size: 64, offset: 29312)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "i_wpred", scope: !943, file: !22, line: 791, baseType: !595, size: 96, offset: 29376)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !89, file: !22, line: 795, baseType: !1004, size: 4096, align: 128, offset: 243200)
!1004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 4096, elements: !1005)
!1005 = !{!36, !148}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !89, file: !22, line: 796, baseType: !1007, size: 2048, align: 128, offset: 247296)
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 2048, elements: !1005)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !89, file: !22, line: 797, baseType: !66, size: 64, offset: 249344)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_buffer", scope: !89, file: !22, line: 800, baseType: !154, size: 64, offset: 249408)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !89, file: !22, line: 801, baseType: !1011, size: 384, offset: 249472)
!1011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 384, elements: !1012)
!1012 = !{!36, !523}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !89, file: !22, line: 802, baseType: !1014, size: 128, offset: 249856)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1015, size: 128, elements: !35)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, elements: !1017)
!1017 = !{!36, !43, !43}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !89, file: !22, line: 805, baseType: !1019, size: 448, offset: 249984)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1020, size: 448, elements: !1025)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !1021, line: 27, baseType: !1022)
!1021 = !DIFile(filename: "x264_src/common/predict.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5f9c3dfea82ca04aa9f99900c2f3609a")
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{null, !282}
!1025 = !{!1026}
!1026 = !DISubrange(count: 7)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !89, file: !22, line: 806, baseType: !1019, size: 448, offset: 250432)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !89, file: !22, line: 807, baseType: !1029, size: 768, offset: 250880)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1030, size: 768, elements: !1034)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !1021, line: 28, baseType: !1031)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{null, !282, !282}
!1034 = !{!1035}
!1035 = !DISubrange(count: 12)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !89, file: !22, line: 808, baseType: !1037, size: 768, offset: 251648)
!1037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1020, size: 768, elements: !1034)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8_filter", scope: !89, file: !22, line: 809, baseType: !1039, size: 64, offset: 252416)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_8x8_filter_t", file: !1021, line: 29, baseType: !1040)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{null, !282, !282, !50, !50}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !89, file: !22, line: 811, baseType: !1044, size: 8448, offset: 252480)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !6, line: 110, baseType: !1045)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 63, size: 8448, elements: !1046)
!1046 = !{!1047, !1053, !1054, !1055, !1056, !1058, !1059, !1060, !1061, !1067, !1073, !1074, !1078, !1083, !1084, !1090, !1094, !1095, !1096, !1097, !1098, !1103, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !1045, file: !6, line: 65, baseType: !1048, size: 448)
!1048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1049, size: 448, elements: !1025)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !6, line: 26, baseType: !1050)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!50, !282, !50, !282, !50}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !1045, file: !6, line: 66, baseType: !1048, size: 448, offset: 448)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !1045, file: !6, line: 67, baseType: !1048, size: 448, offset: 896)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !1045, file: !6, line: 68, baseType: !1048, size: 448, offset: 1344)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !1045, file: !6, line: 69, baseType: !1057, size: 256, offset: 1792)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1049, size: 256, elements: !42)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !1045, file: !6, line: 70, baseType: !1048, size: 448, offset: 2048)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !1045, file: !6, line: 71, baseType: !1048, size: 448, offset: 2496)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !1045, file: !6, line: 72, baseType: !1048, size: 448, offset: 2944)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !1045, file: !6, line: 73, baseType: !1062, size: 448, offset: 3392)
!1062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1063, size: 448, elements: !1025)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !6, line: 27, baseType: !1064)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{null, !282, !282, !282, !282, !50, !638}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !1045, file: !6, line: 74, baseType: !1068, size: 448, offset: 3840)
!1068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1069, size: 448, elements: !1025)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !6, line: 28, baseType: !1070)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{null, !282, !282, !282, !282, !282, !50, !638}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !1045, file: !6, line: 75, baseType: !1048, size: 448, offset: 4288)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "var2_8x8", scope: !1045, file: !6, line: 76, baseType: !1075, size: 64, offset: 4736)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!50, !282, !50, !282, !50, !638}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1045, file: !6, line: 78, baseType: !1079, size: 256, offset: 4800)
!1079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1080, size: 256, elements: !42)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!62, !282, !50}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !1045, file: !6, line: 79, baseType: !1079, size: 256, offset: 5056)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !1045, file: !6, line: 81, baseType: !1085, size: 64, offset: 5312)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{null, !430, !50, !430, !50, !1088}
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 128, elements: !42)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !1045, file: !6, line: 83, baseType: !1091, size: 64, offset: 5376)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!190, !1088, !1088, !50}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !1045, file: !6, line: 86, baseType: !1062, size: 448, offset: 5440)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !1045, file: !6, line: 87, baseType: !1068, size: 448, offset: 5888)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !1045, file: !6, line: 88, baseType: !1062, size: 448, offset: 6336)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !1045, file: !6, line: 89, baseType: !1068, size: 448, offset: 6784)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !1045, file: !6, line: 93, baseType: !1099, size: 448, offset: 7232)
!1099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1100, size: 448, elements: !1025)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!50, !638, !460, !50, !460, !792, !50, !50}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !1045, file: !6, line: 98, baseType: !1104, size: 64, offset: 7680)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{null, !282, !282, !638}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !1045, file: !6, line: 99, baseType: !1104, size: 64, offset: 7744)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !1045, file: !6, line: 100, baseType: !1104, size: 64, offset: 7808)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8c", scope: !1045, file: !6, line: 101, baseType: !1104, size: 64, offset: 7872)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !1045, file: !6, line: 102, baseType: !1104, size: 64, offset: 7936)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8c", scope: !1045, file: !6, line: 103, baseType: !1104, size: 64, offset: 8000)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_4x4", scope: !1045, file: !6, line: 104, baseType: !1104, size: 64, offset: 8064)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !1045, file: !6, line: 105, baseType: !1104, size: 64, offset: 8128)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_4x4", scope: !1045, file: !6, line: 106, baseType: !1104, size: 64, offset: 8192)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8", scope: !1045, file: !6, line: 107, baseType: !1104, size: 64, offset: 8256)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !1045, file: !6, line: 108, baseType: !1104, size: 64, offset: 8320)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8", scope: !1045, file: !6, line: 109, baseType: !1104, size: 64, offset: 8384)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !89, file: !22, line: 812, baseType: !1119, size: 2368, offset: 260928)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !502, line: 111, baseType: !1120)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !502, line: 58, size: 2368, elements: !1121)
!1121 = !{!1122, !1129, !1133, !1137, !1144, !1149, !1150, !1154, !1158, !1159, !1163, !1171, !1175, !1179, !1180, !1184, !1188, !1192, !1193, !1194, !1195, !1200}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !1120, file: !502, line: 60, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{null, !282, !50, !1126, !50, !50, !50, !50, !50, !1127}
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !501)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !1120, file: !502, line: 65, baseType: !1130, size: 64, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!282, !282, !638, !1126, !50, !50, !50, !50, !50, !1127}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !1120, file: !502, line: 71, baseType: !1134, size: 64, offset: 128)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{null, !282, !50, !282, !50, !50, !50, !50, !50}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1120, file: !502, line: 75, baseType: !1138, size: 640, offset: 192)
!1138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1139, size: 640, elements: !1142)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null, !282, !50, !282, !50, !282, !50, !50}
!1142 = !{!1143}
!1143 = !DISubrange(count: 10)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1120, file: !502, line: 78, baseType: !1145, size: 448, offset: 832)
!1145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1146, size: 448, elements: !1025)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{null, !282, !50, !282, !50, !50}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !1120, file: !502, line: 79, baseType: !1146, size: 64, offset: 1280)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !1120, file: !502, line: 81, baseType: !1151, size: 64, offset: 1344)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{null, !282, !50, !282, !50, !50, !50}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !1120, file: !502, line: 84, baseType: !1155, size: 64, offset: 1408)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{null, !282, !282, !282, !282, !50, !50, !50, !792}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !1120, file: !502, line: 88, baseType: !1146, size: 64, offset: 1472)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !1120, file: !502, line: 91, baseType: !1160, size: 64, offset: 1536)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{null, !282, !50, !50}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !1120, file: !502, line: 93, baseType: !1164, size: 64, offset: 1600)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!154, !154, !1167, !1169}
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1170, line: 18, baseType: !64)
!1170 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !1120, file: !502, line: 94, baseType: !1172, size: 64, offset: 1664)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{null, !154, !50}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4h", scope: !1120, file: !502, line: 97, baseType: !1176, size: 64, offset: 1728)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !460, !282, !50}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8h", scope: !1120, file: !502, line: 98, baseType: !1176, size: 64, offset: 1792)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4v", scope: !1120, file: !502, line: 99, baseType: !1181, size: 64, offset: 1856)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{null, !460, !460, !50}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8v", scope: !1120, file: !502, line: 100, baseType: !1185, size: 64, offset: 1920)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{null, !460, !50}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !1120, file: !502, line: 102, baseType: !1189, size: 64, offset: 1984)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{null, !282, !282, !282, !282, !282, !50, !50, !50, !50}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1120, file: !502, line: 104, baseType: !514, size: 64, offset: 2048)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "offsetadd", scope: !1120, file: !502, line: 105, baseType: !514, size: 64, offset: 2112)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsub", scope: !1120, file: !502, line: 106, baseType: !514, size: 64, offset: 2176)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "weight_cache", scope: !1120, file: !502, line: 107, baseType: !1196, size: 64, offset: 2240)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{null, !86, !1199}
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "mbtree_propagate_cost", scope: !1120, file: !502, line: 109, baseType: !1201, size: 64, offset: 2304)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{null, !638, !460, !460, !460, !460, !50}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !89, file: !22, line: 813, baseType: !1205, size: 960, offset: 263296)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !1206, line: 115, baseType: !1207)
!1206 = !DIFile(filename: "x264_src/common/dct.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d983c98245ed7221137d0c4902e9385f")
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1206, line: 89, size: 960, elements: !1208)
!1208 = !{!1209, !1213, !1217, !1222, !1223, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1239, !1243, !1247}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1207, file: !1206, line: 94, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{null, !792, !282, !282}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1207, file: !1206, line: 95, baseType: !1214, size: 64, offset: 64)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{null, !282, !792}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1207, file: !1206, line: 97, baseType: !1218, size: 64, offset: 128)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{null, !1221, !282, !282}
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct_dc", scope: !1207, file: !1206, line: 98, baseType: !1210, size: 64, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1207, file: !1206, line: 99, baseType: !1224, size: 64, offset: 256)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null, !282, !1221}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct_dc", scope: !1207, file: !1206, line: 100, baseType: !1214, size: 64, offset: 320)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1207, file: !1206, line: 102, baseType: !1218, size: 64, offset: 384)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1207, file: !1206, line: 103, baseType: !1224, size: 64, offset: 448)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct_dc", scope: !1207, file: !1206, line: 104, baseType: !1214, size: 64, offset: 512)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1207, file: !1206, line: 106, baseType: !1210, size: 64, offset: 576)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1207, file: !1206, line: 107, baseType: !1214, size: 64, offset: 640)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1207, file: !1206, line: 109, baseType: !1234, size: 64, offset: 704)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{null, !1237, !282, !282}
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 1024, elements: !147)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1207, file: !1206, line: 110, baseType: !1240, size: 64, offset: 768)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{null, !282, !1237}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1207, file: !1206, line: 112, baseType: !1244, size: 64, offset: 832)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{null, !792}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1207, file: !1206, line: 113, baseType: !1244, size: 64, offset: 896)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !89, file: !22, line: 814, baseType: !1249, size: 384, offset: 264256)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !1206, line: 126, baseType: !1250)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1206, line: 117, size: 384, elements: !1251)
!1251 = !{!1252, !1256, !1257, !1261, !1262, !1266}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1250, file: !1206, line: 119, baseType: !1253, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{null, !792, !792}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1250, file: !1206, line: 120, baseType: !1253, size: 64, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1250, file: !1206, line: 121, baseType: !1258, size: 64, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!50, !792, !430, !282}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1250, file: !1206, line: 122, baseType: !1258, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4ac", scope: !1250, file: !1206, line: 123, baseType: !1263, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!50, !792, !430, !282, !792}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1250, file: !1206, line: 124, baseType: !1267, size: 64, offset: 320)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{null, !792, !792, !282}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !89, file: !22, line: 815, baseType: !1271, size: 1408, offset: 264640)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1272, line: 44, baseType: !1273)
!1272 = !DIFile(filename: "x264_src/common/quant.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d1558a6947b2031223cf5868b45335f7")
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1272, line: 26, size: 1408, elements: !1274)
!1274 = !{!1275, !1279, !1280, !1284, !1285, !1289, !1293, !1294, !1299, !1303, !1304, !1305, !1307}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1273, file: !1272, line: 28, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!50, !792, !460, !460}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1273, file: !1272, line: 29, baseType: !1276, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1273, file: !1272, line: 30, baseType: !1281, size: 64, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!50, !792, !50, !50}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1273, file: !1272, line: 31, baseType: !1281, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1273, file: !1272, line: 33, baseType: !1286, size: 64, offset: 256)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{null, !792, !444, !50}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1273, file: !1272, line: 34, baseType: !1290, size: 64, offset: 320)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{null, !792, !440, !50}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1273, file: !1272, line: 35, baseType: !1290, size: 64, offset: 384)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1273, file: !1272, line: 37, baseType: !1295, size: 64, offset: 448)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{null, !792, !1298, !460, !50}
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1273, file: !1272, line: 39, baseType: !1300, size: 64, offset: 512)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!50, !792}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1273, file: !1272, line: 40, baseType: !1300, size: 64, offset: 576)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1273, file: !1272, line: 41, baseType: !1300, size: 64, offset: 640)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1273, file: !1272, line: 42, baseType: !1306, size: 384, offset: 704)
!1306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1300, size: 384, elements: !432)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_level_run", scope: !1273, file: !1272, line: 43, baseType: !1308, size: 320, offset: 1088)
!1308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1309, size: 320, elements: !974)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!50, !792, !1312}
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_run_level_t", file: !287, line: 63, baseType: !1314)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !287, line: 58, size: 416, elements: !1315)
!1315 = !{!1316, !1317, !1318}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1314, file: !287, line: 60, baseType: !50, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1314, file: !287, line: 61, baseType: !734, size: 256, offset: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1314, file: !287, line: 62, baseType: !139, size: 128, offset: 288)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !89, file: !22, line: 816, baseType: !1320, size: 576, offset: 266048)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !564, line: 170, baseType: !1321)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !564, line: 161, size: 576, elements: !1322)
!1322 = !{!1323, !1329, !1330, !1336, !1337}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma", scope: !1321, file: !564, line: 163, baseType: !1324, size: 128)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1325, size: 128, elements: !35)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !564, line: 159, baseType: !1326)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{null, !282, !50, !50, !50, !619}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma", scope: !1321, file: !564, line: 164, baseType: !1324, size: 128, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma_intra", scope: !1321, file: !564, line: 165, baseType: !1331, size: 128, offset: 256)
!1331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1332, size: 128, elements: !35)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !564, line: 160, baseType: !1333)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{null, !282, !50, !50, !50}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma_intra", scope: !1321, file: !564, line: 166, baseType: !1331, size: 128, offset: 384)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !1321, file: !564, line: 167, baseType: !1338, size: 64, offset: 512)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{null, !282, !1341, !1342, !1345, !50, !50}
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 1280, elements: !1344)
!1344 = !{!882, !36}
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 128, elements: !1347)
!1347 = !{!43, !43}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !89, file: !22, line: 821, baseType: !1349, size: 64, offset: 266624)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_lookahead_t", file: !22, line: 377, baseType: !1351)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_lookahead_t", file: !22, line: 366, size: 960, elements: !1352)
!1352 = !{!1353, !1355, !1356, !1357, !1358, !1359, !1360, !1370, !1371}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "b_exit_thread", scope: !1351, file: !22, line: 368, baseType: !1354, size: 8)
!1354 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !1351, file: !22, line: 369, baseType: !39, size: 8, offset: 8)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "b_analyse_keyframe", scope: !1351, file: !22, line: 370, baseType: !39, size: 8, offset: 16)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !1351, file: !22, line: 371, baseType: !50, size: 32, offset: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "i_slicetype_length", scope: !1351, file: !22, line: 372, baseType: !50, size: 32, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !1351, file: !22, line: 373, baseType: !562, size: 64, offset: 128)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "ifbuf", scope: !1351, file: !22, line: 374, baseType: !1361, size: 256, offset: 192)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_synch_frame_list_t", file: !564, line: 157, baseType: !1362)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !564, line: 149, size: 256, elements: !1363)
!1363 = !{!1364, !1365, !1366, !1367, !1368, !1369}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1362, file: !564, line: 151, baseType: !561, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_size", scope: !1362, file: !564, line: 152, baseType: !50, size: 32, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1362, file: !564, line: 153, baseType: !50, size: 32, offset: 96)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1362, file: !564, line: 154, baseType: !50, size: 32, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "cv_fill", scope: !1362, file: !564, line: 155, baseType: !50, size: 32, offset: 160)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "cv_empty", scope: !1362, file: !564, line: 156, baseType: !50, size: 32, offset: 192)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1351, file: !22, line: 375, baseType: !1361, size: 256, offset: 448)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "ofbuf", scope: !1351, file: !22, line: 376, baseType: !1361, size: 256, offset: 704)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_me_t", file: !46, line: 53, baseType: !1374, align: 128)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 30, size: 1152, elements: !1375)
!1375 = !{!1376, !1377, !1378, !1379, !1380, !1381, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel", scope: !1374, file: !46, line: 35, baseType: !50, size: 32, align: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "p_cost_mv", scope: !1374, file: !46, line: 36, baseType: !460, size: 64, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_cost", scope: !1374, file: !46, line: 37, baseType: !50, size: 32, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !1374, file: !46, line: 38, baseType: !50, size: 32, offset: 160)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1374, file: !46, line: 39, baseType: !1127, size: 64, offset: 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !1374, file: !46, line: 41, baseType: !1382, size: 384, offset: 256)
!1382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 384, elements: !432)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref_w", scope: !1374, file: !46, line: 42, baseType: !282, size: 64, offset: 640)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !1374, file: !46, line: 43, baseType: !603, size: 192, offset: 704)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !1374, file: !46, line: 44, baseType: !460, size: 64, offset: 896)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !1374, file: !46, line: 45, baseType: !194, size: 64, offset: 960)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "mvp", scope: !1374, file: !46, line: 47, baseType: !52, size: 32, align: 32, offset: 1024)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv", scope: !1374, file: !46, line: 50, baseType: !50, size: 32, offset: 1056)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !1374, file: !46, line: 51, baseType: !50, size: 32, offset: 1088)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !1374, file: !46, line: 52, baseType: !52, size: 32, align: 32, offset: 1120)
!1391 = !{!1392, !1393, !1394, !1395, !1396, !1397, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1430, !1431, !1432, !1437, !1438, !1439, !1441, !1446, !1447, !1449, !1450, !1451, !1453, !1459, !1461, !1466, !1467, !1468, !1471, !1474, !1477, !1479, !1481, !1483, !1486, !1488, !1492, !1493, !1495, !1497, !1499, !1500, !1501, !1504, !1508, !1512, !1516, !1518, !1521, !1523, !1528, !1534, !1537, !1542, !1548, !1551, !1553, !1555, !1558, !1559, !1560, !1561, !1563, !1568, !1574, !1577, !1582, !1588, !1591, !1593, !1594, !1595, !1596, !1601, !1604, !1605, !1608, !1610, !1611, !1612, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1628, !1629, !1630, !1631, !1632, !1634, !1637, !1638, !1642, !1643, !1645, !1648, !1652, !1653, !1655, !1657, !1660, !1663, !1665, !1667, !1669, !1672, !1675, !1678, !1679, !1683, !1686}
!1392 = !DILocalVariable(name: "h", arg: 1, scope: !83, file: !3, line: 173, type: !86)
!1393 = !DILocalVariable(name: "m", arg: 2, scope: !83, file: !3, line: 173, type: !1372)
!1394 = !DILocalVariable(name: "mvc", arg: 3, scope: !83, file: !3, line: 173, type: !626)
!1395 = !DILocalVariable(name: "i_mvc", arg: 4, scope: !83, file: !3, line: 173, type: !50)
!1396 = !DILocalVariable(name: "p_halfpel_thresh", arg: 5, scope: !83, file: !3, line: 173, type: !638)
!1397 = !DILocalVariable(name: "bw", scope: !83, file: !3, line: 175, type: !1398)
!1398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!1399 = !DILocalVariable(name: "bh", scope: !83, file: !3, line: 176, type: !1398)
!1400 = !DILocalVariable(name: "i_pixel", scope: !83, file: !3, line: 177, type: !1398)
!1401 = !DILocalVariable(name: "stride", scope: !83, file: !3, line: 178, type: !1398)
!1402 = !DILocalVariable(name: "i_me_range", scope: !83, file: !3, line: 179, type: !50)
!1403 = !DILocalVariable(name: "bmx", scope: !83, file: !3, line: 180, type: !50)
!1404 = !DILocalVariable(name: "bmy", scope: !83, file: !3, line: 180, type: !50)
!1405 = !DILocalVariable(name: "bcost", scope: !83, file: !3, line: 180, type: !50)
!1406 = !DILocalVariable(name: "bpred_mx", scope: !83, file: !3, line: 181, type: !50)
!1407 = !DILocalVariable(name: "bpred_my", scope: !83, file: !3, line: 181, type: !50)
!1408 = !DILocalVariable(name: "bpred_cost", scope: !83, file: !3, line: 181, type: !50)
!1409 = !DILocalVariable(name: "omx", scope: !83, file: !3, line: 182, type: !50)
!1410 = !DILocalVariable(name: "omy", scope: !83, file: !3, line: 182, type: !50)
!1411 = !DILocalVariable(name: "pmx", scope: !83, file: !3, line: 182, type: !50)
!1412 = !DILocalVariable(name: "pmy", scope: !83, file: !3, line: 182, type: !50)
!1413 = !DILocalVariable(name: "p_fenc", scope: !83, file: !3, line: 183, type: !282)
!1414 = !DILocalVariable(name: "p_fref_w", scope: !83, file: !3, line: 184, type: !282)
!1415 = !DILocalVariable(name: "pix", scope: !83, file: !3, line: 185, type: !839, align: 128)
!1416 = !DILocalVariable(name: "costs", scope: !83, file: !3, line: 187, type: !441)
!1417 = !DILocalVariable(name: "mv_x_min", scope: !83, file: !3, line: 189, type: !50)
!1418 = !DILocalVariable(name: "mv_y_min", scope: !83, file: !3, line: 190, type: !50)
!1419 = !DILocalVariable(name: "mv_x_max", scope: !83, file: !3, line: 191, type: !50)
!1420 = !DILocalVariable(name: "mv_y_max", scope: !83, file: !3, line: 192, type: !50)
!1421 = !DILocalVariable(name: "mv_x_min_qpel", scope: !83, file: !3, line: 193, type: !50)
!1422 = !DILocalVariable(name: "mv_y_min_qpel", scope: !83, file: !3, line: 194, type: !50)
!1423 = !DILocalVariable(name: "mv_x_max_qpel", scope: !83, file: !3, line: 195, type: !50)
!1424 = !DILocalVariable(name: "mv_y_max_qpel", scope: !83, file: !3, line: 196, type: !50)
!1425 = !DILocalVariable(name: "mv_min", scope: !83, file: !3, line: 199, type: !26)
!1426 = !DILocalVariable(name: "mv_max", scope: !83, file: !3, line: 200, type: !26)
!1427 = !DILocalVariable(name: "p_cost_mvx", scope: !83, file: !3, line: 204, type: !1428)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!1430 = !DILocalVariable(name: "p_cost_mvy", scope: !83, file: !3, line: 205, type: !1428)
!1431 = !DILocalVariable(name: "pmv", scope: !83, file: !3, line: 207, type: !26)
!1432 = !DILocalVariable(name: "stride2", scope: !1433, file: !3, line: 219, type: !50)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 219, column: 13)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 218, column: 13)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 216, column: 5)
!1436 = distinct !DILexicalBlock(scope: !83, file: !3, line: 215, column: 9)
!1437 = !DILocalVariable(name: "src", scope: !1433, file: !3, line: 219, type: !282)
!1438 = !DILocalVariable(name: "cost", scope: !1433, file: !3, line: 219, type: !50)
!1439 = !DILocalVariable(name: "i", scope: !1440, file: !3, line: 220, type: !50)
!1440 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 220, column: 9)
!1441 = !DILocalVariable(name: "mx", scope: !1442, file: !3, line: 224, type: !50)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 223, column: 13)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 222, column: 17)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 221, column: 9)
!1445 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 220, column: 9)
!1446 = !DILocalVariable(name: "my", scope: !1442, file: !3, line: 225, type: !50)
!1447 = !DILocalVariable(name: "stride2", scope: !1448, file: !3, line: 226, type: !50)
!1448 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 226, column: 17)
!1449 = !DILocalVariable(name: "src", scope: !1448, file: !3, line: 226, type: !282)
!1450 = !DILocalVariable(name: "cost", scope: !1448, file: !3, line: 226, type: !50)
!1451 = !DILocalVariable(name: "cost", scope: !1452, file: !3, line: 231, type: !50)
!1452 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 231, column: 9)
!1453 = !DILocalVariable(name: "mvc_fpel", scope: !1454, file: !3, line: 248, type: !1457, align: 64)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 247, column: 9)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 246, column: 13)
!1456 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 234, column: 5)
!1457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 512, elements: !1458)
!1458 = !{!141, !36}
!1459 = !DILocalVariable(name: "i", scope: !1460, file: !3, line: 251, type: !50)
!1460 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 251, column: 13)
!1461 = !DILocalVariable(name: "mx", scope: !1462, file: !3, line: 255, type: !50)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 254, column: 17)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 253, column: 21)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 252, column: 13)
!1465 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 251, column: 13)
!1466 = !DILocalVariable(name: "my", scope: !1462, file: !3, line: 256, type: !50)
!1467 = !DILocalVariable(name: "cost", scope: !1462, file: !3, line: 257, type: !50)
!1468 = !DILocalVariable(name: "cost", scope: !1469, file: !3, line: 272, type: !50)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 272, column: 9)
!1470 = distinct !DILexicalBlock(scope: !83, file: !3, line: 271, column: 9)
!1471 = !DILocalVariable(name: "i", scope: !1472, file: !3, line: 280, type: !50)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 277, column: 9)
!1473 = distinct !DILexicalBlock(scope: !83, file: !3, line: 275, column: 5)
!1474 = !DILocalVariable(name: "pix_base", scope: !1475, file: !3, line: 283, type: !282)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 283, column: 17)
!1476 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 282, column: 13)
!1477 = !DILabel(scope: !1478, name: "me_hex2", file: !3, line: 300)
!1478 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 299, column: 13)
!1479 = !DILocalVariable(name: "pix_base", scope: !1480, file: !3, line: 321, type: !282)
!1480 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 321, column: 13)
!1481 = !DILocalVariable(name: "pix_base", scope: !1482, file: !3, line: 322, type: !282)
!1482 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 322, column: 13)
!1483 = !DILocalVariable(name: "dir", scope: !1484, file: !3, line: 333, type: !50)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 332, column: 13)
!1485 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 331, column: 17)
!1486 = !DILocalVariable(name: "i", scope: !1487, file: !3, line: 338, type: !50)
!1487 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 338, column: 17)
!1488 = !DILocalVariable(name: "pix_base", scope: !1489, file: !3, line: 340, type: !282)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 340, column: 21)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 339, column: 17)
!1491 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 338, column: 17)
!1492 = !DILocalVariable(name: "dir", scope: !1478, file: !3, line: 359, type: !50)
!1493 = !DILocalVariable(name: "pix_base", scope: !1494, file: !3, line: 360, type: !282)
!1494 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 360, column: 13)
!1495 = !DILocalVariable(name: "pix_base", scope: !1496, file: !3, line: 365, type: !282)
!1496 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 365, column: 13)
!1497 = !DILocalVariable(name: "ucost1", scope: !1498, file: !3, line: 382, type: !50)
!1498 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 376, column: 9)
!1499 = !DILocalVariable(name: "ucost2", scope: !1498, file: !3, line: 382, type: !50)
!1500 = !DILocalVariable(name: "cross_start", scope: !1498, file: !3, line: 383, type: !50)
!1501 = !DILocalVariable(name: "pix_base", scope: !1502, file: !3, line: 387, type: !282)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 387, column: 13)
!1503 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 387, column: 13)
!1504 = !DILocalVariable(name: "pix_base", scope: !1505, file: !3, line: 389, type: !282)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 389, column: 17)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 389, column: 17)
!1507 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 388, column: 17)
!1508 = !DILocalVariable(name: "pix_base", scope: !1509, file: !3, line: 396, type: !282)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 396, column: 17)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 396, column: 17)
!1511 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 395, column: 17)
!1512 = !DILocalVariable(name: "pix_base", scope: !1513, file: !3, line: 405, type: !282)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 405, column: 17)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 404, column: 13)
!1515 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 403, column: 17)
!1516 = !DILocalVariable(name: "pix_base", scope: !1517, file: !3, line: 406, type: !282)
!1517 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 406, column: 17)
!1518 = !DILocalVariable(name: "range", scope: !1519, file: !3, line: 411, type: !50)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 410, column: 17)
!1520 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 409, column: 21)
!1521 = !DILocalVariable(name: "i", scope: !1522, file: !3, line: 412, type: !50)
!1522 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 412, column: 21)
!1523 = !DILocalVariable(name: "pix_base", scope: !1524, file: !3, line: 412, type: !282)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 412, column: 21)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 412, column: 21)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 412, column: 21)
!1527 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 412, column: 21)
!1528 = !DILocalVariable(name: "cost", scope: !1529, file: !3, line: 412, type: !50)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 412, column: 21)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 412, column: 21)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 412, column: 21)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 412, column: 21)
!1533 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 412, column: 21)
!1534 = !DILocalVariable(name: "cost", scope: !1535, file: !3, line: 412, type: !50)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 412, column: 21)
!1536 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 412, column: 21)
!1537 = !DILocalVariable(name: "pix_base", scope: !1538, file: !3, line: 412, type: !282)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 412, column: 21)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 412, column: 21)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 412, column: 21)
!1541 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 412, column: 21)
!1542 = !DILocalVariable(name: "cost", scope: !1543, file: !3, line: 412, type: !50)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 412, column: 21)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 412, column: 21)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 412, column: 21)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 412, column: 21)
!1547 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 412, column: 21)
!1548 = !DILocalVariable(name: "cost", scope: !1549, file: !3, line: 412, type: !50)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 412, column: 21)
!1550 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 412, column: 21)
!1551 = !DILocalVariable(name: "pix_base", scope: !1552, file: !3, line: 413, type: !282)
!1552 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 413, column: 21)
!1553 = !DILocalVariable(name: "pix_base", scope: !1554, file: !3, line: 414, type: !282)
!1554 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 414, column: 21)
!1555 = !DILocalVariable(name: "mvd", scope: !1556, file: !3, line: 434, type: !50)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 423, column: 13)
!1557 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 422, column: 17)
!1558 = !DILocalVariable(name: "sad_ctx", scope: !1556, file: !3, line: 435, type: !50)
!1559 = !DILocalVariable(name: "mvd_ctx", scope: !1556, file: !3, line: 435, type: !50)
!1560 = !DILocalVariable(name: "denom", scope: !1556, file: !3, line: 436, type: !50)
!1561 = !DILocalVariable(name: "i", scope: !1562, file: !3, line: 476, type: !50)
!1562 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 476, column: 13)
!1563 = !DILocalVariable(name: "pix_base", scope: !1564, file: !3, line: 476, type: !282)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 476, column: 13)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 476, column: 13)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 476, column: 13)
!1567 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 476, column: 13)
!1568 = !DILocalVariable(name: "cost", scope: !1569, file: !3, line: 476, type: !50)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 476, column: 13)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 476, column: 13)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 476, column: 13)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 476, column: 13)
!1573 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 476, column: 13)
!1574 = !DILocalVariable(name: "cost", scope: !1575, file: !3, line: 476, type: !50)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 476, column: 13)
!1576 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 476, column: 13)
!1577 = !DILocalVariable(name: "pix_base", scope: !1578, file: !3, line: 476, type: !282)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 476, column: 13)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 476, column: 13)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 476, column: 13)
!1581 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 476, column: 13)
!1582 = !DILocalVariable(name: "cost", scope: !1583, file: !3, line: 476, type: !50)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 476, column: 13)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 476, column: 13)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 476, column: 13)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 476, column: 13)
!1587 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 476, column: 13)
!1588 = !DILocalVariable(name: "cost", scope: !1589, file: !3, line: 476, type: !50)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 476, column: 13)
!1590 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 476, column: 13)
!1591 = !DILocalVariable(name: "pix_base", scope: !1592, file: !3, line: 478, type: !282)
!1592 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 478, column: 13)
!1593 = !DILocalVariable(name: "p_cost_omvx", scope: !1498, file: !3, line: 482, type: !1428)
!1594 = !DILocalVariable(name: "p_cost_omvy", scope: !1498, file: !3, line: 483, type: !1428)
!1595 = !DILocalVariable(name: "i", scope: !1498, file: !3, line: 484, type: !50)
!1596 = !DILocalVariable(name: "j", scope: !1597, file: !3, line: 497, type: !50)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 497, column: 21)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 496, column: 17)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 494, column: 21)
!1600 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 486, column: 13)
!1601 = !DILocalVariable(name: "mx", scope: !1602, file: !3, line: 499, type: !50)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 498, column: 21)
!1603 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 497, column: 21)
!1604 = !DILocalVariable(name: "my", scope: !1602, file: !3, line: 500, type: !50)
!1605 = !DILocalVariable(name: "cost", scope: !1606, file: !3, line: 502, type: !50)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 502, column: 29)
!1607 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 501, column: 29)
!1608 = !DILocalVariable(name: "dir", scope: !1609, file: !3, line: 507, type: !50)
!1609 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 506, column: 17)
!1610 = !DILocalVariable(name: "pix_base", scope: !1609, file: !3, line: 508, type: !282)
!1611 = !DILocalVariable(name: "dy", scope: !1609, file: !3, line: 509, type: !50)
!1612 = !DILocalVariable(name: "min_x", scope: !1613, file: !3, line: 574, type: !1398)
!1613 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 573, column: 9)
!1614 = !DILocalVariable(name: "min_y", scope: !1613, file: !3, line: 575, type: !1398)
!1615 = !DILocalVariable(name: "max_x", scope: !1613, file: !3, line: 576, type: !1398)
!1616 = !DILocalVariable(name: "max_y", scope: !1613, file: !3, line: 577, type: !1398)
!1617 = !DILocalVariable(name: "width", scope: !1613, file: !3, line: 579, type: !1398)
!1618 = !DILocalVariable(name: "sums_base", scope: !1613, file: !3, line: 588, type: !460)
!1619 = !DILocalVariable(name: "enc_dc", scope: !1613, file: !3, line: 592, type: !1089, align: 128)
!1620 = !DILocalVariable(name: "sad_size", scope: !1613, file: !3, line: 593, type: !50)
!1621 = !DILocalVariable(name: "delta", scope: !1613, file: !3, line: 594, type: !50)
!1622 = !DILocalVariable(name: "xs", scope: !1613, file: !3, line: 595, type: !792)
!1623 = !DILocalVariable(name: "xn", scope: !1613, file: !3, line: 596, type: !50)
!1624 = !DILocalVariable(name: "cost_fpel_mvx", scope: !1613, file: !3, line: 597, type: !460)
!1625 = !DILocalVariable(name: "mvsads", scope: !1626, file: !3, line: 612, type: !44)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 610, column: 13)
!1627 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 609, column: 17)
!1628 = !DILocalVariable(name: "nmvsad", scope: !1626, file: !3, line: 613, type: !50)
!1629 = !DILocalVariable(name: "limit", scope: !1626, file: !3, line: 613, type: !50)
!1630 = !DILocalVariable(name: "sad_thresh", scope: !1626, file: !3, line: 614, type: !50)
!1631 = !DILocalVariable(name: "bsad", scope: !1626, file: !3, line: 615, type: !50)
!1632 = !DILocalVariable(name: "my", scope: !1633, file: !3, line: 617, type: !50)
!1633 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 617, column: 17)
!1634 = !DILocalVariable(name: "i", scope: !1635, file: !3, line: 619, type: !50)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 618, column: 17)
!1636 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 617, column: 17)
!1637 = !DILocalVariable(name: "ycost", scope: !1635, file: !3, line: 620, type: !50)
!1638 = !DILocalVariable(name: "ref", scope: !1639, file: !3, line: 628, type: !282)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 627, column: 21)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 626, column: 21)
!1641 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 626, column: 21)
!1642 = !DILocalVariable(name: "sads", scope: !1639, file: !3, line: 629, type: !595)
!1643 = !DILocalVariable(name: "j", scope: !1644, file: !3, line: 631, type: !50)
!1644 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 631, column: 25)
!1645 = !DILocalVariable(name: "sad", scope: !1646, file: !3, line: 633, type: !50)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 632, column: 25)
!1647 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 631, column: 25)
!1648 = !DILocalVariable(name: "mx", scope: !1649, file: !3, line: 646, type: !50)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 645, column: 21)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 644, column: 21)
!1651 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 644, column: 21)
!1652 = !DILocalVariable(name: "sad", scope: !1649, file: !3, line: 647, type: !50)
!1653 = !DILocalVariable(name: "i", scope: !1654, file: !3, line: 665, type: !50)
!1654 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 664, column: 17)
!1655 = !DILocalVariable(name: "j", scope: !1656, file: !3, line: 669, type: !50)
!1656 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 669, column: 21)
!1657 = !DILocalVariable(name: "sad", scope: !1658, file: !3, line: 671, type: !26)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 670, column: 21)
!1659 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 669, column: 21)
!1660 = !DILocalVariable(name: "mvsad", scope: !1661, file: !3, line: 674, type: !62)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 673, column: 25)
!1662 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 672, column: 29)
!1663 = !DILocalVariable(name: "bi", scope: !1664, file: !3, line: 692, type: !50)
!1664 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 691, column: 17)
!1665 = !DILocalVariable(name: "i", scope: !1666, file: !3, line: 693, type: !50)
!1666 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 693, column: 21)
!1667 = !DILocalVariable(name: "i", scope: !1668, file: !3, line: 702, type: !50)
!1668 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 702, column: 17)
!1669 = !DILocalVariable(name: "cost", scope: !1670, file: !3, line: 703, type: !50)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 703, column: 21)
!1671 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 702, column: 17)
!1672 = !DILocalVariable(name: "my", scope: !1673, file: !3, line: 708, type: !50)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 708, column: 17)
!1674 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 706, column: 13)
!1675 = !DILocalVariable(name: "i", scope: !1676, file: !3, line: 710, type: !50)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 709, column: 17)
!1677 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 708, column: 17)
!1678 = !DILocalVariable(name: "ycost", scope: !1676, file: !3, line: 711, type: !50)
!1679 = !DILocalVariable(name: "cost", scope: !1680, file: !3, line: 721, type: !50)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 721, column: 25)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 720, column: 21)
!1682 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 720, column: 21)
!1683 = !DILocalVariable(name: "hpel", scope: !1684, file: !3, line: 751, type: !50)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 750, column: 5)
!1685 = distinct !DILexicalBlock(scope: !83, file: !3, line: 749, column: 9)
!1686 = !DILocalVariable(name: "qpel", scope: !1684, file: !3, line: 752, type: !50)
!1687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 56, elements: !1025)
!1688 = !DIGlobalVariableExpression(var: !1689, expr: !DIExpression())
!1689 = distinct !DIGlobalVariable(name: "range_mul", scope: !83, file: !3, line: 427, type: !1690, isLocal: true, isDefinition: true)
!1690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 128, elements: !1347)
!1691 = !DIGlobalVariableExpression(var: !1692, expr: !DIExpression())
!1692 = distinct !DIGlobalVariable(name: "hex4", scope: !83, file: !3, line: 487, type: !1693, isLocal: true, isDefinition: true)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1694, size: 256, elements: !1458)
!1694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !620)
!1695 = !DIGlobalVariableExpression(var: !1696, expr: !DIExpression())
!1696 = distinct !DIGlobalVariable(name: "zero", scope: !83, file: !3, line: 591, type: !1697, isLocal: true, isDefinition: true, align: 128)
!1697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 1024, elements: !1698)
!1698 = !{!1699}
!1699 = !DISubrange(count: 128)
!1700 = !DIGlobalVariableExpression(var: !1701, expr: !DIExpression())
!1701 = distinct !DIGlobalVariable(name: "x264_iter_kludge", scope: !2, file: !3, line: 936, type: !50, isLocal: false, isDefinition: true)
!1702 = !DIGlobalVariableExpression(var: !1703, expr: !DIExpression())
!1703 = distinct !DIGlobalVariable(name: "hex2", scope: !2, file: !3, line: 51, type: !1704, isLocal: true, isDefinition: true)
!1704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1694, size: 128, elements: !806)
!1705 = !DIGlobalVariableExpression(var: !1706, expr: !DIExpression())
!1706 = distinct !DIGlobalVariable(name: "mod6m1", scope: !2, file: !3, line: 49, type: !1707, isLocal: true, isDefinition: true)
!1707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 64, elements: !71)
!1708 = !DIGlobalVariableExpression(var: !1709, expr: !DIExpression())
!1709 = distinct !DIGlobalVariable(name: "square1", scope: !2, file: !3, line: 52, type: !1710, isLocal: true, isDefinition: true)
!1710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1694, size: 144, elements: !1711)
!1711 = !{!860, !36}
!1712 = !DIGlobalVariableExpression(var: !1713, expr: !DIExpression())
!1713 = distinct !DIGlobalVariable(name: "subpel_iterations", scope: !2, file: !3, line: 35, type: !1714, isLocal: true, isDefinition: true)
!1714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 352, elements: !1715)
!1715 = !{!1716, !43}
!1716 = !DISubrange(count: 11)
!1717 = !DIGlobalVariableExpression(var: !1718, expr: !DIExpression())
!1718 = distinct !DIGlobalVariable(name: "dia4d", scope: !1719, file: !3, line: 972, type: !1811, isLocal: true, isDefinition: true, align: 64)
!1719 = distinct !DISubprogram(name: "x264_me_refine_bidir", scope: !3, file: !3, line: 938, type: !1720, scopeLine: 939, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1722)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{null, !86, !1372, !1372, !50, !50, !50, !50}
!1722 = !{!1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1738, !1741, !1742, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1766, !1767, !1768, !1769, !1770, !1772, !1775, !1778, !1781, !1782, !1783, !1784, !1787, !1790, !1791, !1792, !1793, !1795, !1798, !1799, !1800, !1801, !1804, !1805, !1806}
!1723 = !DILocalVariable(name: "h", arg: 1, scope: !1719, file: !3, line: 938, type: !86)
!1724 = !DILocalVariable(name: "m0", arg: 2, scope: !1719, file: !3, line: 938, type: !1372)
!1725 = !DILocalVariable(name: "m1", arg: 3, scope: !1719, file: !3, line: 938, type: !1372)
!1726 = !DILocalVariable(name: "i_weight", arg: 4, scope: !1719, file: !3, line: 938, type: !50)
!1727 = !DILocalVariable(name: "i8", arg: 5, scope: !1719, file: !3, line: 938, type: !50)
!1728 = !DILocalVariable(name: "i_lambda2", arg: 6, scope: !1719, file: !3, line: 938, type: !50)
!1729 = !DILocalVariable(name: "rd", arg: 7, scope: !1719, file: !3, line: 938, type: !50)
!1730 = !DILocalVariable(name: "cache0_mv", scope: !1719, file: !3, line: 940, type: !792)
!1731 = !DILocalVariable(name: "cache1_mv", scope: !1719, file: !3, line: 941, type: !792)
!1732 = !DILocalVariable(name: "i_pixel", scope: !1719, file: !3, line: 942, type: !1398)
!1733 = !DILocalVariable(name: "bw", scope: !1719, file: !3, line: 943, type: !1398)
!1734 = !DILocalVariable(name: "bh", scope: !1719, file: !3, line: 944, type: !1398)
!1735 = !DILocalVariable(name: "pixy_buf", scope: !1719, file: !3, line: 945, type: !1736, align: 128)
!1736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 36864, elements: !1737)
!1737 = !{!36, !860, !336}
!1738 = !DILocalVariable(name: "pixu_buf", scope: !1719, file: !3, line: 946, type: !1739, align: 64)
!1739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 9216, elements: !1740)
!1740 = !{!36, !860, !148}
!1741 = !DILocalVariable(name: "pixv_buf", scope: !1719, file: !3, line: 947, type: !1739, align: 64)
!1742 = !DILocalVariable(name: "src", scope: !1719, file: !3, line: 948, type: !1743)
!1743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 1152, elements: !1744)
!1744 = !{!36, !860}
!1745 = !DILocalVariable(name: "pix", scope: !1719, file: !3, line: 949, type: !282)
!1746 = !DILocalVariable(name: "pixu", scope: !1719, file: !3, line: 950, type: !282)
!1747 = !DILocalVariable(name: "pixv", scope: !1719, file: !3, line: 951, type: !282)
!1748 = !DILocalVariable(name: "ref0", scope: !1719, file: !3, line: 952, type: !1398)
!1749 = !DILocalVariable(name: "ref1", scope: !1719, file: !3, line: 953, type: !1398)
!1750 = !DILocalVariable(name: "mv0y_offset", scope: !1719, file: !3, line: 954, type: !1398)
!1751 = !DILocalVariable(name: "mv1y_offset", scope: !1719, file: !3, line: 955, type: !1398)
!1752 = !DILocalVariable(name: "stride", scope: !1719, file: !3, line: 956, type: !1753)
!1753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 576, elements: !1744)
!1754 = !DILocalVariable(name: "bm0x", scope: !1719, file: !3, line: 957, type: !50)
!1755 = !DILocalVariable(name: "bm0y", scope: !1719, file: !3, line: 958, type: !50)
!1756 = !DILocalVariable(name: "bm1x", scope: !1719, file: !3, line: 959, type: !50)
!1757 = !DILocalVariable(name: "bm1y", scope: !1719, file: !3, line: 960, type: !50)
!1758 = !DILocalVariable(name: "bcost", scope: !1719, file: !3, line: 961, type: !50)
!1759 = !DILocalVariable(name: "mc_list0", scope: !1719, file: !3, line: 962, type: !50)
!1760 = !DILocalVariable(name: "mc_list1", scope: !1719, file: !3, line: 962, type: !50)
!1761 = !DILocalVariable(name: "bcostrd", scope: !1719, file: !3, line: 963, type: !62)
!1762 = !DILocalVariable(name: "amvd", scope: !1719, file: !3, line: 964, type: !32)
!1763 = !DILocalVariable(name: "visited", scope: !1719, file: !3, line: 966, type: !1764, align: 128)
!1764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 4096, elements: !1765)
!1765 = !{!72, !72, !72}
!1766 = !DILocalVariable(name: "p_cost_m0x", scope: !1719, file: !3, line: 998, type: !1428)
!1767 = !DILocalVariable(name: "p_cost_m0y", scope: !1719, file: !3, line: 999, type: !1428)
!1768 = !DILocalVariable(name: "p_cost_m1x", scope: !1719, file: !3, line: 1000, type: !1428)
!1769 = !DILocalVariable(name: "p_cost_m1y", scope: !1719, file: !3, line: 1001, type: !1428)
!1770 = !DILocalVariable(name: "pass", scope: !1771, file: !3, line: 1005, type: !50)
!1771 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 1005, column: 5)
!1772 = !DILocalVariable(name: "bestj", scope: !1773, file: !3, line: 1007, type: !50)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !3, line: 1006, column: 5)
!1774 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 1005, column: 5)
!1775 = !DILocalVariable(name: "j", scope: !1776, file: !3, line: 1013, type: !50)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 1013, column: 13)
!1777 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 1012, column: 13)
!1778 = !DILocalVariable(name: "m", scope: !1779, file: !3, line: 1014, type: !1372)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 1014, column: 17)
!1780 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 1013, column: 13)
!1781 = !DILocalVariable(name: "i", scope: !1779, file: !3, line: 1014, type: !50)
!1782 = !DILocalVariable(name: "mvx", scope: !1779, file: !3, line: 1014, type: !50)
!1783 = !DILocalVariable(name: "mvy", scope: !1779, file: !3, line: 1014, type: !50)
!1784 = !DILocalVariable(name: "j", scope: !1785, file: !3, line: 1017, type: !50)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 1017, column: 13)
!1786 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 1016, column: 13)
!1787 = !DILocalVariable(name: "m", scope: !1788, file: !3, line: 1018, type: !1372)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 1018, column: 17)
!1789 = distinct !DILexicalBlock(scope: !1785, file: !3, line: 1017, column: 13)
!1790 = !DILocalVariable(name: "i", scope: !1788, file: !3, line: 1018, type: !50)
!1791 = !DILocalVariable(name: "mvx", scope: !1788, file: !3, line: 1018, type: !50)
!1792 = !DILocalVariable(name: "mvy", scope: !1788, file: !3, line: 1018, type: !50)
!1793 = !DILocalVariable(name: "j", scope: !1794, file: !3, line: 1020, type: !50)
!1794 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 1020, column: 9)
!1795 = !DILocalVariable(name: "m0x", scope: !1796, file: !3, line: 1022, type: !50)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 1021, column: 9)
!1797 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 1020, column: 9)
!1798 = !DILocalVariable(name: "m0y", scope: !1796, file: !3, line: 1023, type: !50)
!1799 = !DILocalVariable(name: "m1x", scope: !1796, file: !3, line: 1024, type: !50)
!1800 = !DILocalVariable(name: "m1y", scope: !1796, file: !3, line: 1025, type: !50)
!1801 = !DILocalVariable(name: "i0", scope: !1802, file: !3, line: 1028, type: !50)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 1027, column: 13)
!1803 = distinct !DILexicalBlock(scope: !1796, file: !3, line: 1026, column: 17)
!1804 = !DILocalVariable(name: "i1", scope: !1802, file: !3, line: 1029, type: !50)
!1805 = !DILocalVariable(name: "cost", scope: !1802, file: !3, line: 1032, type: !50)
!1806 = !DILocalVariable(name: "costrd", scope: !1807, file: !3, line: 1043, type: !62)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 1037, column: 21)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !3, line: 1036, column: 25)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 1035, column: 17)
!1810 = distinct !DILexicalBlock(scope: !1802, file: !3, line: 1034, column: 21)
!1811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1694, size: 1056, elements: !1812)
!1812 = !{!1813, !43}
!1813 = !DISubrange(count: 33)
!1814 = !DIGlobalVariableExpression(var: !1815, expr: !DIExpression())
!1815 = distinct !DIGlobalVariable(name: "x264_scan8", scope: !2, file: !22, line: 125, type: !1816, isLocal: true, isDefinition: true)
!1816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1398, size: 864, elements: !1817)
!1817 = !{!1818}
!1818 = !DISubrange(count: 27)
!1819 = !DIGlobalVariableExpression(var: !1820, expr: !DIExpression())
!1820 = distinct !DIGlobalVariable(name: "block_idx_xy_fdec", scope: !2, file: !1821, line: 234, type: !1822, isLocal: true, isDefinition: true)
!1821 = !DIFile(filename: "x264_src/common/macroblock.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "15f4a9c1d53f4196a5f2b80807bb8b1a")
!1822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1429, size: 256, elements: !140)
!1823 = !DIGlobalVariableExpression(var: !1824, expr: !DIExpression())
!1824 = distinct !DIGlobalVariable(name: "block_idx_x", scope: !2, file: !1821, line: 200, type: !1825, isLocal: true, isDefinition: true)
!1825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 128, elements: !140)
!1826 = !DIGlobalVariableExpression(var: !1827, expr: !DIExpression())
!1827 = distinct !DIGlobalVariable(name: "block_idx_y", scope: !2, file: !1821, line: 204, type: !1825, isLocal: true, isDefinition: true)
!1828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1829, size: 448, elements: !1025)
!1829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1830)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 44, size: 64, elements: !1831)
!1831 = !{!1832, !1833}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !1830, file: !6, line: 45, baseType: !50, size: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !1830, file: !6, line: 46, baseType: !50, size: 32, offset: 32)
!1834 = !{i32 7, !"Dwarf Version", i32 5}
!1835 = !{i32 2, !"Debug Info Version", i32 3}
!1836 = !{i32 1, !"wchar_size", i32 4}
!1837 = !{i32 8, !"PIC Level", i32 2}
!1838 = !{i32 7, !"PIE Level", i32 2}
!1839 = !{i32 7, !"uwtable", i32 2}
!1840 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!1841 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!1842 = distinct !DIAssignID()
!1843 = !DILocation(line: 0, scope: !83)
!1844 = distinct !DIAssignID()
!1845 = distinct !DIAssignID()
!1846 = !DILocation(line: 0, scope: !1433)
!1847 = distinct !DIAssignID()
!1848 = !DILocation(line: 0, scope: !1448)
!1849 = distinct !DIAssignID()
!1850 = !DILocation(line: 0, scope: !1454)
!1851 = distinct !DIAssignID()
!1852 = !DILocation(line: 0, scope: !1613)
!1853 = distinct !DIAssignID()
!1854 = !DILocation(line: 0, scope: !1639)
!1855 = !DILocation(line: 175, column: 39, scope: !83)
!1856 = !DILocation(line: 175, column: 20, scope: !83)
!1857 = !DILocation(line: 175, column: 48, scope: !83)
!1858 = !DILocation(line: 176, column: 48, scope: !83)
!1859 = !DILocation(line: 178, column: 27, scope: !83)
!1860 = !DILocation(line: 178, column: 24, scope: !83)
!1861 = !DILocation(line: 179, column: 39, scope: !83)
!1862 = !DILocation(line: 183, column: 26, scope: !83)
!1863 = !DILocation(line: 183, column: 23, scope: !83)
!1864 = !DILocation(line: 184, column: 28, scope: !83)
!1865 = !DILocation(line: 185, column: 5, scope: !83)
!1866 = !DILocation(line: 187, column: 5, scope: !83)
!1867 = !DILocation(line: 189, column: 26, scope: !83)
!1868 = !DILocation(line: 191, column: 26, scope: !83)
!1869 = !DILocation(line: 189, column: 20, scope: !83)
!1870 = !DILocation(line: 191, column: 20, scope: !83)
!1871 = !DILocation(line: 199, column: 23, scope: !83)
!1872 = !DILocation(line: 193, column: 34, scope: !83)
!1873 = !DILocation(line: 194, column: 34, scope: !83)
!1874 = !DILocation(line: 195, column: 34, scope: !83)
!1875 = !DILocation(line: 196, column: 34, scope: !83)
!1876 = !DILocation(line: 200, column: 23, scope: !83)
!1877 = !DILocation(line: 200, column: 61, scope: !83)
!1878 = !DILocation(line: 204, column: 37, scope: !83)
!1879 = !DILocation(line: 204, column: 52, scope: !83)
!1880 = !DILocation(line: 204, column: 49, scope: !83)
!1881 = !DILocation(line: 204, column: 47, scope: !83)
!1882 = !DILocation(line: 205, column: 49, scope: !83)
!1883 = !DILocation(line: 205, column: 47, scope: !83)
!1884 = !DILocalVariable(name: "v", arg: 1, scope: !1885, file: !22, line: 200, type: !50)
!1885 = distinct !DISubprogram(name: "x264_clip3", scope: !22, file: !22, line: 200, type: !1886, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1888)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!50, !50, !50, !50}
!1888 = !{!1884, !1889, !1890}
!1889 = !DILocalVariable(name: "i_min", arg: 2, scope: !1885, file: !22, line: 200, type: !50)
!1890 = !DILocalVariable(name: "i_max", arg: 3, scope: !1885, file: !22, line: 200, type: !50)
!1891 = !DILocation(line: 0, scope: !1885, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 208, column: 11, scope: !83)
!1893 = !DILocation(line: 202, column: 17, scope: !1885, inlinedAt: !1892)
!1894 = !DILocation(line: 202, column: 14, scope: !1885, inlinedAt: !1892)
!1895 = !DILocation(line: 209, column: 23, scope: !83)
!1896 = !DILocation(line: 0, scope: !1885, inlinedAt: !1897)
!1897 = distinct !DILocation(line: 209, column: 11, scope: !83)
!1898 = !DILocation(line: 202, column: 17, scope: !1885, inlinedAt: !1897)
!1899 = !DILocation(line: 202, column: 14, scope: !1885, inlinedAt: !1897)
!1900 = !DILocation(line: 210, column: 17, scope: !83)
!1901 = !DILocation(line: 210, column: 23, scope: !83)
!1902 = !DILocation(line: 211, column: 17, scope: !83)
!1903 = !DILocation(line: 211, column: 23, scope: !83)
!1904 = !DILocation(line: 215, column: 15, scope: !1436)
!1905 = !DILocation(line: 215, column: 31, scope: !1436)
!1906 = !DILocation(line: 215, column: 9, scope: !83)
!1907 = !DILocalVariable(name: "a", arg: 1, scope: !1908, file: !1821, line: 340, type: !50)
!1908 = distinct !DISubprogram(name: "pack16to32_mask", scope: !1821, file: !1821, line: 340, type: !1909, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1911)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!26, !50, !50}
!1911 = !{!1907, !1912}
!1912 = !DILocalVariable(name: "b", arg: 2, scope: !1908, file: !1821, line: 340, type: !50)
!1913 = !DILocation(line: 0, scope: !1908, inlinedAt: !1914)
!1914 = distinct !DILocation(line: 217, column: 15, scope: !1435)
!1915 = !DILocation(line: 345, column: 13, scope: !1908, inlinedAt: !1914)
!1916 = !DILocation(line: 345, column: 26, scope: !1908, inlinedAt: !1914)
!1917 = !DILocation(line: 345, column: 22, scope: !1908, inlinedAt: !1914)
!1918 = !DILocation(line: 218, column: 13, scope: !1434)
!1919 = !DILocation(line: 218, column: 13, scope: !1435)
!1920 = !DILocation(line: 219, column: 13, scope: !1433)
!1921 = distinct !DIAssignID()
!1922 = !DILocation(line: 219, column: 13, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 219, column: 13)
!1924 = !DILocation(line: 219, column: 13, scope: !1434)
!1925 = !DILocation(line: 0, scope: !1440)
!1926 = !DILocation(line: 220, column: 27, scope: !1445)
!1927 = !DILocation(line: 220, column: 9, scope: !1440)
!1928 = !DILocation(line: 0, scope: !1435)
!1929 = !DILocation(line: 229, column: 26, scope: !1435)
!1930 = !DILocation(line: 229, column: 32, scope: !1435)
!1931 = !DILocation(line: 230, column: 26, scope: !1435)
!1932 = !DILocation(line: 230, column: 32, scope: !1435)
!1933 = !DILocation(line: 231, column: 9, scope: !1452)
!1934 = !DILocation(line: 0, scope: !1452)
!1935 = !DILocation(line: 232, column: 5, scope: !1435)
!1936 = !DILocation(line: 222, column: 17, scope: !1443)
!1937 = !DILocation(line: 222, column: 31, scope: !1443)
!1938 = !DILocation(line: 224, column: 38, scope: !1442)
!1939 = !DILocation(line: 0, scope: !1885, inlinedAt: !1940)
!1940 = distinct !DILocation(line: 224, column: 26, scope: !1442)
!1941 = !DILocation(line: 202, column: 17, scope: !1885, inlinedAt: !1940)
!1942 = !DILocation(line: 202, column: 14, scope: !1885, inlinedAt: !1940)
!1943 = !DILocation(line: 0, scope: !1442)
!1944 = !DILocation(line: 225, column: 38, scope: !1442)
!1945 = !DILocation(line: 0, scope: !1885, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 225, column: 26, scope: !1442)
!1947 = !DILocation(line: 202, column: 17, scope: !1885, inlinedAt: !1946)
!1948 = !DILocation(line: 202, column: 14, scope: !1885, inlinedAt: !1946)
!1949 = !DILocation(line: 226, column: 17, scope: !1448)
!1950 = distinct !DIAssignID()
!1951 = !DILocation(line: 226, column: 17, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 226, column: 17)
!1953 = !DILocation(line: 226, column: 17, scope: !1442)
!1954 = !DILocation(line: 227, column: 13, scope: !1442)
!1955 = !DILocation(line: 220, column: 37, scope: !1445)
!1956 = distinct !{!1956, !1927, !1957}
!1957 = !DILocation(line: 228, column: 9, scope: !1440)
!1958 = !DILocation(line: 244, column: 25, scope: !1456)
!1959 = !DILocation(line: 244, column: 17, scope: !1456)
!1960 = !DILocation(line: 244, column: 77, scope: !1456)
!1961 = !DILocation(line: 244, column: 84, scope: !1456)
!1962 = !DILocation(line: 244, column: 65, scope: !1456)
!1963 = !DILocation(line: 0, scope: !1908, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 245, column: 15, scope: !1456)
!1965 = !DILocation(line: 345, column: 13, scope: !1908, inlinedAt: !1964)
!1966 = !DILocation(line: 345, column: 26, scope: !1908, inlinedAt: !1964)
!1967 = !DILocation(line: 345, column: 22, scope: !1908, inlinedAt: !1964)
!1968 = !DILocation(line: 246, column: 19, scope: !1455)
!1969 = !DILocation(line: 246, column: 13, scope: !1456)
!1970 = !DILocation(line: 248, column: 13, scope: !1454)
!1971 = !DILocalVariable(name: "dst", arg: 1, scope: !1972, file: !22, line: 246, type: !626)
!1972 = distinct !DISubprogram(name: "x264_predictor_roundclip", scope: !22, file: !22, line: 246, type: !1973, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1975)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{null, !626, !626, !50, !50, !50, !50, !50}
!1975 = !{!1971, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1984, !1987}
!1976 = !DILocalVariable(name: "mvc", arg: 2, scope: !1972, file: !22, line: 246, type: !626)
!1977 = !DILocalVariable(name: "i_mvc", arg: 3, scope: !1972, file: !22, line: 246, type: !50)
!1978 = !DILocalVariable(name: "mv_x_min", arg: 4, scope: !1972, file: !22, line: 246, type: !50)
!1979 = !DILocalVariable(name: "mv_x_max", arg: 5, scope: !1972, file: !22, line: 246, type: !50)
!1980 = !DILocalVariable(name: "mv_y_min", arg: 6, scope: !1972, file: !22, line: 246, type: !50)
!1981 = !DILocalVariable(name: "mv_y_max", arg: 7, scope: !1972, file: !22, line: 246, type: !50)
!1982 = !DILocalVariable(name: "i", scope: !1983, file: !22, line: 248, type: !50)
!1983 = distinct !DILexicalBlock(scope: !1972, file: !22, line: 248, column: 5)
!1984 = !DILocalVariable(name: "mx", scope: !1985, file: !22, line: 250, type: !50)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !22, line: 249, column: 5)
!1986 = distinct !DILexicalBlock(scope: !1983, file: !22, line: 248, column: 5)
!1987 = !DILocalVariable(name: "my", scope: !1985, file: !22, line: 251, type: !50)
!1988 = !DILocation(line: 0, scope: !1972, inlinedAt: !1989)
!1989 = distinct !DILocation(line: 249, column: 13, scope: !1454)
!1990 = !DILocation(line: 0, scope: !1983, inlinedAt: !1989)
!1991 = !DILocation(line: 248, column: 23, scope: !1986, inlinedAt: !1989)
!1992 = !DILocation(line: 248, column: 5, scope: !1983, inlinedAt: !1989)
!1993 = !DILocation(line: 248, column: 33, scope: !1986, inlinedAt: !1989)
!1994 = !DILocation(line: 250, column: 19, scope: !1985, inlinedAt: !1989)
!1995 = !DILocation(line: 250, column: 29, scope: !1985, inlinedAt: !1989)
!1996 = !DILocation(line: 250, column: 34, scope: !1985, inlinedAt: !1989)
!1997 = !DILocation(line: 251, column: 19, scope: !1985, inlinedAt: !1989)
!1998 = !DILocation(line: 251, column: 29, scope: !1985, inlinedAt: !1989)
!1999 = !DILocation(line: 251, column: 34, scope: !1985, inlinedAt: !1989)
!2000 = !DILocation(line: 202, column: 17, scope: !1885, inlinedAt: !2001)
!2001 = distinct !DILocation(line: 252, column: 21, scope: !1985, inlinedAt: !1989)
!2002 = !DILocation(line: 202, column: 14, scope: !1885, inlinedAt: !2001)
!2003 = !DILocation(line: 202, column: 17, scope: !1885, inlinedAt: !2004)
!2004 = distinct !DILocation(line: 253, column: 21, scope: !1985, inlinedAt: !1989)
!2005 = !DILocation(line: 202, column: 14, scope: !1885, inlinedAt: !2004)
!2006 = !DILocation(line: 253, column: 9, scope: !1985, inlinedAt: !1989)
!2007 = !DILocation(line: 253, column: 19, scope: !1985, inlinedAt: !1989)
!2008 = distinct !{!2008, !1992, !2009, !2010, !2011}
!2009 = !DILocation(line: 254, column: 5, scope: !1983, inlinedAt: !1989)
!2010 = !{!"llvm.loop.isvectorized", i32 1}
!2011 = !{!"llvm.loop.unroll.runtime.disable"}
!2012 = !DILocation(line: 0, scope: !1985, inlinedAt: !1989)
!2013 = !DILocation(line: 0, scope: !1885, inlinedAt: !2001)
!2014 = !DILocation(line: 252, column: 9, scope: !1985, inlinedAt: !1989)
!2015 = !DILocation(line: 0, scope: !1885, inlinedAt: !2004)
!2016 = !DILocation(line: 252, column: 21, scope: !1985, inlinedAt: !1989)
!2017 = !DILocation(line: 252, column: 19, scope: !1985, inlinedAt: !1989)
!2018 = distinct !{!2018, !1992, !2009, !2011, !2010}
!2019 = !DILocation(line: 0, scope: !1460)
!2020 = !DILocation(line: 250, column: 19, scope: !1454)
!2021 = !DILocation(line: 251, column: 13, scope: !1460)
!2022 = !DILocation(line: 251, column: 31, scope: !1465)
!2023 = !DILocation(line: 262, column: 22, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 262, column: 17)
!2025 = !DILocation(line: 262, column: 17, scope: !1454)
!2026 = !DILocation(line: 253, column: 21, scope: !1463)
!2027 = !DILocation(line: 253, column: 42, scope: !1463)
!2028 = !DILocation(line: 253, column: 53, scope: !1463)
!2029 = !DILocation(line: 253, column: 50, scope: !1463)
!2030 = !DILocation(line: 253, column: 21, scope: !1464)
!2031 = !DILocation(line: 255, column: 30, scope: !1462)
!2032 = !DILocation(line: 0, scope: !1462)
!2033 = !DILocation(line: 256, column: 30, scope: !1462)
!2034 = !DILocation(line: 257, column: 32, scope: !1462)
!2035 = !DILocation(line: 257, column: 91, scope: !1462)
!2036 = !DILocation(line: 257, column: 98, scope: !1462)
!2037 = !DILocation(line: 257, column: 80, scope: !1462)
!2038 = !DILocation(line: 257, column: 115, scope: !1462)
!2039 = !DILocation(line: 257, column: 113, scope: !1462)
!2040 = !DILocation(line: 258, column: 34, scope: !1462)
!2041 = !DILocation(line: 258, column: 40, scope: !1462)
!2042 = !DILocation(line: 259, column: 21, scope: !1462)
!2043 = !DILocation(line: 260, column: 17, scope: !1462)
!2044 = !DILocation(line: 251, column: 42, scope: !1465)
!2045 = distinct !{!2045, !2021, !2046}
!2046 = !DILocation(line: 261, column: 13, scope: !1460)
!2047 = !DILocation(line: 264, column: 42, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 263, column: 13)
!2049 = !DILocation(line: 264, column: 23, scope: !2048)
!2050 = !DILocation(line: 265, column: 23, scope: !2048)
!2051 = !DILocation(line: 266, column: 13, scope: !2048)
!2052 = !DILocation(line: 0, scope: !1456)
!2053 = !DILocation(line: 267, column: 19, scope: !1454)
!2054 = !DILocation(line: 268, column: 9, scope: !1455)
!2055 = !DILocation(line: 268, column: 9, scope: !1454)
!2056 = !DILocation(line: 0, scope: !1436)
!2057 = !DILocation(line: 271, column: 9, scope: !1470)
!2058 = !DILocation(line: 271, column: 9, scope: !83)
!2059 = !DILocation(line: 272, column: 9, scope: !1469)
!2060 = !DILocation(line: 0, scope: !1469)
!2061 = !DILocation(line: 272, column: 9, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 272, column: 9)
!2063 = !DILocation(line: 274, column: 19, scope: !83)
!2064 = !DILocation(line: 274, column: 5, scope: !83)
!2065 = !DILocation(line: 279, column: 19, scope: !1472)
!2066 = !DILocation(line: 0, scope: !1472)
!2067 = !DILocation(line: 281, column: 13, scope: !1472)
!2068 = !DILocation(line: 283, column: 17, scope: !1475)
!2069 = !DILocation(line: 0, scope: !1475)
!2070 = distinct !DIAssignID()
!2071 = distinct !DIAssignID()
!2072 = distinct !DIAssignID()
!2073 = distinct !DIAssignID()
!2074 = !DILocation(line: 284, column: 17, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 284, column: 17)
!2076 = !DILocation(line: 284, column: 17, scope: !1476)
!2077 = !DILocation(line: 285, column: 17, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 285, column: 17)
!2079 = !DILocation(line: 285, column: 17, scope: !1476)
!2080 = !DILocation(line: 286, column: 17, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 286, column: 17)
!2082 = !DILocation(line: 286, column: 17, scope: !1476)
!2083 = !DILocation(line: 287, column: 17, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 287, column: 17)
!2085 = !DILocation(line: 287, column: 17, scope: !1476)
!2086 = !DILocation(line: 288, column: 28, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 288, column: 21)
!2088 = !DILocation(line: 288, column: 21, scope: !1476)
!2089 = !DILocation(line: 290, column: 30, scope: !1476)
!2090 = !DILocation(line: 290, column: 35, scope: !1476)
!2091 = !DILocation(line: 290, column: 21, scope: !1476)
!2092 = !DILocation(line: 291, column: 30, scope: !1476)
!2093 = !DILocation(line: 291, column: 35, scope: !1476)
!2094 = !DILocation(line: 291, column: 21, scope: !1476)
!2095 = !DILocation(line: 292, column: 23, scope: !1476)
!2096 = !DILocation(line: 293, column: 22, scope: !1472)
!2097 = !DILocation(line: 293, column: 26, scope: !1472)
!2098 = !DILocation(line: 293, column: 29, scope: !1472)
!2099 = !DILocation(line: 293, column: 13, scope: !1476)
!2100 = distinct !{!2100, !2067, !2101}
!2101 = !DILocation(line: 293, column: 53, scope: !1472)
!2102 = !DILocation(line: 0, scope: !1476)
!2103 = !DILocation(line: 294, column: 19, scope: !1472)
!2104 = !DILocation(line: 179, column: 9, scope: !83)
!2105 = !DILocation(line: 300, column: 5, scope: !1478)
!2106 = !DILocation(line: 321, column: 13, scope: !1480)
!2107 = !DILocation(line: 0, scope: !1480)
!2108 = distinct !DIAssignID()
!2109 = distinct !DIAssignID()
!2110 = distinct !DIAssignID()
!2111 = !DILocation(line: 0, scope: !1482)
!2112 = !DILocation(line: 322, column: 13, scope: !1482)
!2113 = distinct !DIAssignID()
!2114 = distinct !DIAssignID()
!2115 = distinct !DIAssignID()
!2116 = !DILocation(line: 323, column: 19, scope: !1478)
!2117 = !DILocation(line: 324, column: 13, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 324, column: 13)
!2119 = !DILocation(line: 324, column: 13, scope: !1478)
!2120 = !DILocation(line: 325, column: 13, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 325, column: 13)
!2122 = !DILocation(line: 325, column: 13, scope: !1478)
!2123 = !DILocation(line: 326, column: 13, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 326, column: 13)
!2125 = !DILocation(line: 326, column: 13, scope: !1478)
!2126 = !DILocation(line: 327, column: 13, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 327, column: 13)
!2128 = !DILocation(line: 327, column: 13, scope: !1478)
!2129 = !DILocation(line: 328, column: 13, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 328, column: 13)
!2131 = !DILocation(line: 328, column: 13, scope: !1478)
!2132 = !DILocation(line: 329, column: 13, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 329, column: 13)
!2134 = !DILocation(line: 329, column: 13, scope: !1478)
!2135 = !DILocation(line: 331, column: 22, scope: !1485)
!2136 = !DILocation(line: 331, column: 17, scope: !1478)
!2137 = !DILocation(line: 0, scope: !1484)
!2138 = !DILocation(line: 334, column: 32, scope: !1484)
!2139 = !DILocation(line: 334, column: 24, scope: !1484)
!2140 = !DILocation(line: 334, column: 21, scope: !1484)
!2141 = !DILocation(line: 335, column: 24, scope: !1484)
!2142 = !DILocation(line: 335, column: 21, scope: !1484)
!2143 = !DILocation(line: 338, column: 41, scope: !1487)
!2144 = !DILocation(line: 0, scope: !1487)
!2145 = !DILocation(line: 338, column: 53, scope: !1491)
!2146 = !DILocation(line: 338, column: 57, scope: !1491)
!2147 = !DILocation(line: 333, column: 36, scope: !1484)
!2148 = !DILocation(line: 338, column: 17, scope: !1487)
!2149 = !DILocation(line: 338, scope: !1487)
!2150 = !DILocation(line: 338, column: 60, scope: !1491)
!2151 = !DILocation(line: 340, column: 21, scope: !1489)
!2152 = !DILocation(line: 0, scope: !1489)
!2153 = distinct !DIAssignID()
!2154 = distinct !DIAssignID()
!2155 = distinct !DIAssignID()
!2156 = !DILocation(line: 344, column: 27, scope: !1490)
!2157 = !DILocation(line: 345, column: 21, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 345, column: 21)
!2159 = !DILocation(line: 345, column: 21, scope: !1490)
!2160 = !DILocation(line: 346, column: 21, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 346, column: 21)
!2162 = !DILocation(line: 346, column: 21, scope: !1490)
!2163 = !DILocation(line: 347, column: 21, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 347, column: 21)
!2165 = !DILocation(line: 347, column: 21, scope: !1490)
!2166 = !DILocation(line: 348, column: 32, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 348, column: 25)
!2168 = !DILocation(line: 348, column: 25, scope: !1490)
!2169 = !DILocation(line: 350, column: 25, scope: !1490)
!2170 = !DILocation(line: 351, column: 37, scope: !1490)
!2171 = !DILocation(line: 351, column: 27, scope: !1490)
!2172 = !DILocation(line: 352, column: 36, scope: !1490)
!2173 = !DILocation(line: 352, column: 28, scope: !1490)
!2174 = !DILocation(line: 352, column: 25, scope: !1490)
!2175 = !DILocation(line: 353, column: 28, scope: !1490)
!2176 = !DILocation(line: 353, column: 25, scope: !1490)
!2177 = distinct !{!2177, !2148, !2178}
!2178 = !DILocation(line: 354, column: 17, scope: !1487)
!2179 = !DILocation(line: 0, scope: !1478)
!2180 = !DILocation(line: 0, scope: !1473)
!2181 = !DILocation(line: 356, column: 19, scope: !1478)
!2182 = !DILocation(line: 360, column: 13, scope: !1494)
!2183 = !DILocation(line: 0, scope: !1494)
!2184 = distinct !DIAssignID()
!2185 = distinct !DIAssignID()
!2186 = distinct !DIAssignID()
!2187 = distinct !DIAssignID()
!2188 = !DILocation(line: 361, column: 13, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 361, column: 13)
!2190 = !DILocation(line: 361, column: 13, scope: !1478)
!2191 = !DILocation(line: 362, column: 13, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 362, column: 13)
!2193 = !DILocation(line: 362, column: 13, scope: !1478)
!2194 = !DILocation(line: 363, column: 13, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 363, column: 13)
!2196 = !DILocation(line: 363, column: 13, scope: !1478)
!2197 = !DILocation(line: 364, column: 13, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 364, column: 13)
!2199 = !DILocation(line: 364, column: 13, scope: !1478)
!2200 = !DILocation(line: 0, scope: !1496)
!2201 = !DILocation(line: 365, column: 13, scope: !1496)
!2202 = distinct !DIAssignID()
!2203 = distinct !DIAssignID()
!2204 = distinct !DIAssignID()
!2205 = distinct !DIAssignID()
!2206 = !DILocation(line: 366, column: 13, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 366, column: 13)
!2208 = !DILocation(line: 366, column: 13, scope: !1478)
!2209 = !DILocation(line: 367, column: 13, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 367, column: 13)
!2211 = !DILocation(line: 367, column: 13, scope: !1478)
!2212 = !DILocation(line: 368, column: 13, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 368, column: 13)
!2214 = !DILocation(line: 368, column: 13, scope: !1478)
!2215 = !DILocation(line: 369, column: 13, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 369, column: 13)
!2217 = !DILocation(line: 369, column: 13, scope: !1478)
!2218 = !DILocation(line: 370, column: 20, scope: !1478)
!2219 = !DILocation(line: 370, column: 17, scope: !1478)
!2220 = !DILocation(line: 371, column: 20, scope: !1478)
!2221 = !DILocation(line: 371, column: 17, scope: !1478)
!2222 = !DILocation(line: 372, column: 13, scope: !1478)
!2223 = !DILocation(line: 0, scope: !1498)
!2224 = !DILocation(line: 387, column: 13, scope: !1502)
!2225 = !DILocation(line: 0, scope: !1502)
!2226 = distinct !DIAssignID()
!2227 = distinct !DIAssignID()
!2228 = distinct !DIAssignID()
!2229 = distinct !DIAssignID()
!2230 = !DILocation(line: 387, column: 13, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 387, column: 13)
!2232 = !DILocation(line: 387, column: 13, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 387, column: 13)
!2234 = !DILocation(line: 387, column: 13, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 387, column: 13)
!2236 = !DILocation(line: 387, column: 13, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 387, column: 13)
!2238 = !DILocation(line: 388, column: 21, scope: !1507)
!2239 = !DILocation(line: 388, column: 17, scope: !1498)
!2240 = !DILocation(line: 0, scope: !1505)
!2241 = !DILocation(line: 389, column: 17, scope: !1505)
!2242 = distinct !DIAssignID()
!2243 = distinct !DIAssignID()
!2244 = distinct !DIAssignID()
!2245 = distinct !DIAssignID()
!2246 = !DILocation(line: 389, column: 17, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 389, column: 17)
!2248 = !DILocation(line: 389, column: 17, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 389, column: 17)
!2250 = !DILocation(line: 389, column: 17, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 389, column: 17)
!2252 = !DILocation(line: 389, column: 17, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 389, column: 17)
!2254 = !DILocation(line: 389, column: 17, scope: !1506)
!2255 = !DILocation(line: 391, column: 25, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 391, column: 17)
!2257 = !DILocation(line: 391, column: 17, scope: !1498)
!2258 = !DILocation(line: 395, column: 22, scope: !1511)
!2259 = !DILocation(line: 395, column: 29, scope: !1511)
!2260 = !DILocation(line: 395, column: 43, scope: !1511)
!2261 = !DILocation(line: 395, column: 17, scope: !1498)
!2262 = !DILocation(line: 396, column: 17, scope: !1509)
!2263 = !DILocation(line: 0, scope: !1509)
!2264 = distinct !DIAssignID()
!2265 = distinct !DIAssignID()
!2266 = distinct !DIAssignID()
!2267 = distinct !DIAssignID()
!2268 = !DILocation(line: 396, column: 17, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 396, column: 17)
!2270 = !DILocation(line: 396, column: 17, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 396, column: 17)
!2272 = !DILocation(line: 396, column: 17, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 396, column: 17)
!2274 = !DILocation(line: 396, column: 17, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 396, column: 17)
!2276 = !DILocation(line: 397, column: 23, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 397, column: 17)
!2278 = !DILocation(line: 403, column: 33, scope: !1515)
!2279 = !DILocation(line: 403, column: 36, scope: !1515)
!2280 = !DILocation(line: 403, column: 17, scope: !1498)
!2281 = !DILocation(line: 405, column: 17, scope: !1513)
!2282 = !DILocation(line: 0, scope: !1513)
!2283 = distinct !DIAssignID()
!2284 = distinct !DIAssignID()
!2285 = distinct !DIAssignID()
!2286 = distinct !DIAssignID()
!2287 = !DILocation(line: 405, column: 17, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 405, column: 17)
!2289 = !DILocation(line: 405, column: 17, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 405, column: 17)
!2291 = !DILocation(line: 405, column: 17, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 405, column: 17)
!2293 = !DILocation(line: 405, column: 17, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 405, column: 17)
!2295 = !DILocation(line: 0, scope: !1517)
!2296 = !DILocation(line: 406, column: 17, scope: !1517)
!2297 = distinct !DIAssignID()
!2298 = distinct !DIAssignID()
!2299 = distinct !DIAssignID()
!2300 = distinct !DIAssignID()
!2301 = !DILocation(line: 406, column: 17, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 406, column: 17)
!2303 = !DILocation(line: 406, column: 17, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 406, column: 17)
!2305 = !DILocation(line: 406, column: 17, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 406, column: 17)
!2307 = !DILocation(line: 406, column: 17, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 406, column: 17)
!2309 = !DILocation(line: 407, column: 27, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 407, column: 21)
!2311 = !DILocation(line: 407, column: 37, scope: !2310)
!2312 = !DILocation(line: 409, column: 27, scope: !1520)
!2313 = !DILocation(line: 409, column: 21, scope: !1514)
!2314 = !DILocation(line: 411, column: 44, scope: !1519)
!2315 = !DILocation(line: 411, column: 49, scope: !1519)
!2316 = !DILocation(line: 0, scope: !1519)
!2317 = !DILocation(line: 0, scope: !1522)
!2318 = !DILocation(line: 412, column: 21, scope: !1527)
!2319 = !DILocation(line: 412, column: 21, scope: !1522)
!2320 = !DILocation(line: 412, column: 21, scope: !1526)
!2321 = !DILocation(line: 0, scope: !1524)
!2322 = !DILocation(line: 412, column: 21, scope: !1524)
!2323 = distinct !DIAssignID()
!2324 = distinct !DIAssignID()
!2325 = distinct !DIAssignID()
!2326 = distinct !DIAssignID()
!2327 = !DILocation(line: 412, column: 21, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 412, column: 21)
!2329 = !DILocation(line: 412, column: 21, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 412, column: 21)
!2331 = !DILocation(line: 412, column: 21, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 412, column: 21)
!2333 = !DILocation(line: 412, column: 21, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 412, column: 21)
!2335 = !DILocation(line: 412, column: 21, scope: !1525)
!2336 = distinct !{!2336, !2320, !2320}
!2337 = !DILocation(line: 412, column: 21, scope: !1532)
!2338 = !DILocation(line: 406, column: 17, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2308, file: !3, line: 406, column: 17)
!2340 = !DILocation(line: 412, column: 21, scope: !1533)
!2341 = !DILocation(line: 412, column: 21, scope: !1530)
!2342 = !DILocation(line: 412, column: 21, scope: !1531)
!2343 = !DILocation(line: 412, column: 21, scope: !1529)
!2344 = !DILocation(line: 0, scope: !1529)
!2345 = !DILocation(line: 412, column: 21, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 412, column: 21)
!2347 = !DILocation(line: 0, scope: !1514)
!2348 = !DILocation(line: 412, column: 21, scope: !1536)
!2349 = !DILocation(line: 412, column: 21, scope: !1535)
!2350 = !DILocation(line: 0, scope: !1535)
!2351 = !DILocation(line: 412, column: 21, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 412, column: 21)
!2353 = distinct !{!2353, !2340, !2340}
!2354 = !DILocation(line: 412, column: 21, scope: !1541)
!2355 = !DILocation(line: 412, column: 21, scope: !1540)
!2356 = !DILocation(line: 0, scope: !1538)
!2357 = !DILocation(line: 412, column: 21, scope: !1538)
!2358 = distinct !DIAssignID()
!2359 = distinct !DIAssignID()
!2360 = distinct !DIAssignID()
!2361 = distinct !DIAssignID()
!2362 = !DILocation(line: 412, column: 21, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 412, column: 21)
!2364 = !DILocation(line: 412, column: 21, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 412, column: 21)
!2366 = !DILocation(line: 412, column: 21, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 412, column: 21)
!2368 = !DILocation(line: 412, column: 21, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 412, column: 21)
!2370 = !DILocation(line: 412, column: 21, scope: !1539)
!2371 = distinct !{!2371, !2355, !2355}
!2372 = !DILocation(line: 412, column: 21, scope: !1546)
!2373 = !DILocation(line: 412, column: 21, scope: !1547)
!2374 = !DILocation(line: 412, column: 21, scope: !1544)
!2375 = !DILocation(line: 412, column: 21, scope: !1545)
!2376 = !DILocation(line: 412, column: 21, scope: !1543)
!2377 = !DILocation(line: 0, scope: !1543)
!2378 = !DILocation(line: 412, column: 21, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 412, column: 21)
!2380 = !DILocation(line: 412, column: 21, scope: !1550)
!2381 = !DILocation(line: 412, column: 21, scope: !1549)
!2382 = !DILocation(line: 0, scope: !1549)
!2383 = !DILocation(line: 412, column: 21, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 412, column: 21)
!2385 = distinct !{!2385, !2373, !2373}
!2386 = !DILocation(line: 0, scope: !1552)
!2387 = !DILocation(line: 413, column: 21, scope: !1552)
!2388 = distinct !DIAssignID()
!2389 = distinct !DIAssignID()
!2390 = distinct !DIAssignID()
!2391 = distinct !DIAssignID()
!2392 = !DILocation(line: 413, column: 21, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 413, column: 21)
!2394 = !DILocation(line: 413, column: 21, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 413, column: 21)
!2396 = !DILocation(line: 413, column: 21, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 413, column: 21)
!2398 = !DILocation(line: 413, column: 21, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 413, column: 21)
!2400 = !DILocation(line: 0, scope: !1554)
!2401 = !DILocation(line: 414, column: 21, scope: !1554)
!2402 = distinct !DIAssignID()
!2403 = distinct !DIAssignID()
!2404 = distinct !DIAssignID()
!2405 = distinct !DIAssignID()
!2406 = !DILocation(line: 414, column: 21, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 414, column: 21)
!2408 = !DILocation(line: 414, column: 21, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 414, column: 21)
!2410 = !DILocation(line: 414, column: 21, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 414, column: 21)
!2412 = !DILocation(line: 414, column: 21, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 414, column: 21)
!2414 = !DILocation(line: 415, column: 31, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 415, column: 25)
!2416 = !DILocation(line: 415, column: 25, scope: !1519)
!2417 = !DILocation(line: 398, column: 29, scope: !2277)
!2418 = !DILocation(line: 422, column: 17, scope: !1498)
!2419 = !DILocation(line: 440, column: 33, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 440, column: 25)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 439, column: 17)
!2422 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 438, column: 21)
!2423 = !DILocation(line: 440, column: 25, scope: !2421)
!2424 = !DILocation(line: 445, column: 36, scope: !2420)
!2425 = !DILocation(line: 445, column: 48, scope: !2420)
!2426 = !DILocation(line: 445, column: 46, scope: !2420)
!2427 = !DILocation(line: 445, column: 31, scope: !2420)
!2428 = !DILocation(line: 446, column: 36, scope: !2420)
!2429 = !DILocation(line: 446, column: 48, scope: !2420)
!2430 = !DILocation(line: 446, column: 46, scope: !2420)
!2431 = !DILocation(line: 446, column: 31, scope: !2420)
!2432 = !DILocation(line: 446, column: 29, scope: !2420)
!2433 = !DILocation(line: 0, scope: !1556)
!2434 = !DILocation(line: 453, column: 35, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 449, column: 17)
!2436 = !DILocation(line: 455, column: 33, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 455, column: 25)
!2438 = !DILocation(line: 455, column: 25, scope: !2435)
!2439 = !DILocation(line: 457, column: 36, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 456, column: 21)
!2441 = !DILocation(line: 457, column: 48, scope: !2440)
!2442 = !DILocation(line: 457, column: 46, scope: !2440)
!2443 = !DILocation(line: 457, column: 31, scope: !2440)
!2444 = !DILocation(line: 458, column: 36, scope: !2440)
!2445 = !DILocation(line: 458, column: 48, scope: !2440)
!2446 = !DILocation(line: 458, column: 46, scope: !2440)
!2447 = !DILocation(line: 458, column: 31, scope: !2440)
!2448 = !DILocation(line: 458, column: 29, scope: !2440)
!2449 = !DILocation(line: 460, column: 21, scope: !2440)
!2450 = !DILocation(line: 0, scope: !2435)
!2451 = !DILocalVariable(name: "mvc", arg: 1, scope: !2452, file: !22, line: 226, type: !626)
!2452 = distinct !DISubprogram(name: "x264_predictor_difference", scope: !22, file: !22, line: 226, type: !2453, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2455)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!50, !626, !294}
!2455 = !{!2451, !2456, !2457, !2458}
!2456 = !DILocalVariable(name: "i_mvc", arg: 2, scope: !2452, file: !22, line: 226, type: !294)
!2457 = !DILocalVariable(name: "sum", scope: !2452, file: !22, line: 228, type: !50)
!2458 = !DILocalVariable(name: "i", scope: !2459, file: !22, line: 229, type: !50)
!2459 = distinct !DILexicalBlock(scope: !2452, file: !22, line: 229, column: 5)
!2460 = !DILocation(line: 0, scope: !2452, inlinedAt: !2461)
!2461 = distinct !DILocation(line: 461, column: 28, scope: !2435)
!2462 = !DILocation(line: 0, scope: !2459, inlinedAt: !2461)
!2463 = !DILocation(line: 229, column: 23, scope: !2464, inlinedAt: !2461)
!2464 = distinct !DILexicalBlock(scope: !2459, file: !22, line: 229, column: 5)
!2465 = !DILocation(line: 229, column: 5, scope: !2459, inlinedAt: !2461)
!2466 = !DILocation(line: 231, column: 21, scope: !2467, inlinedAt: !2461)
!2467 = distinct !DILexicalBlock(scope: !2464, file: !22, line: 230, column: 5)
!2468 = !DILocation(line: 232, column: 21, scope: !2467, inlinedAt: !2461)
!2469 = !DILocation(line: 231, column: 38, scope: !2467, inlinedAt: !2461)
!2470 = !DILocation(line: 231, column: 33, scope: !2467, inlinedAt: !2461)
!2471 = !DILocation(line: 231, column: 31, scope: !2467, inlinedAt: !2461)
!2472 = !DILocation(line: 231, column: 16, scope: !2467, inlinedAt: !2461)
!2473 = !DILocation(line: 232, column: 33, scope: !2467, inlinedAt: !2461)
!2474 = !DILocation(line: 232, column: 31, scope: !2467, inlinedAt: !2461)
!2475 = !DILocation(line: 232, column: 16, scope: !2467, inlinedAt: !2461)
!2476 = !DILocation(line: 232, column: 14, scope: !2467, inlinedAt: !2461)
!2477 = !DILocation(line: 231, column: 13, scope: !2467, inlinedAt: !2461)
!2478 = distinct !{!2478, !2465, !2479, !2010, !2011}
!2479 = !DILocation(line: 233, column: 5, scope: !2459, inlinedAt: !2461)
!2480 = distinct !{!2480, !2465, !2479, !2011, !2010}
!2481 = !DILocation(line: 461, column: 25, scope: !2435)
!2482 = !DILocation(line: 0, scope: !2422)
!2483 = !DILocation(line: 464, column: 27, scope: !1556)
!2484 = !DILocation(line: 465, column: 27, scope: !1556)
!2485 = !DILocation(line: 466, column: 27, scope: !1556)
!2486 = !DILocation(line: 467, column: 35, scope: !1556)
!2487 = !DILocation(line: 467, column: 31, scope: !1556)
!2488 = !DILocation(line: 467, column: 27, scope: !1556)
!2489 = !DILocation(line: 468, column: 35, scope: !1556)
!2490 = !DILocation(line: 468, column: 31, scope: !1556)
!2491 = !DILocation(line: 468, column: 27, scope: !1556)
!2492 = !DILocation(line: 469, column: 35, scope: !1556)
!2493 = !DILocation(line: 469, column: 31, scope: !1556)
!2494 = !DILocation(line: 469, column: 27, scope: !1556)
!2495 = !DILocation(line: 471, column: 43, scope: !1556)
!2496 = !DILocation(line: 471, column: 41, scope: !1556)
!2497 = !DILocation(line: 471, column: 71, scope: !1556)
!2498 = !DILocation(line: 472, column: 13, scope: !1556)
!2499 = !DILocation(line: 0, scope: !1562)
!2500 = !DILocation(line: 476, column: 13, scope: !1567)
!2501 = !DILocation(line: 476, column: 13, scope: !1562)
!2502 = !DILocation(line: 476, column: 13, scope: !1565)
!2503 = !DILocation(line: 476, column: 13, scope: !1566)
!2504 = !DILocation(line: 0, scope: !1564)
!2505 = !DILocation(line: 476, column: 13, scope: !1564)
!2506 = distinct !DIAssignID()
!2507 = distinct !DIAssignID()
!2508 = distinct !DIAssignID()
!2509 = distinct !DIAssignID()
!2510 = !DILocation(line: 476, column: 13, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 476, column: 13)
!2512 = !DILocation(line: 476, column: 13, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 476, column: 13)
!2514 = !DILocation(line: 476, column: 13, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 476, column: 13)
!2516 = !DILocation(line: 476, column: 13, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 476, column: 13)
!2518 = distinct !{!2518, !2503, !2503}
!2519 = !DILocation(line: 476, column: 13, scope: !1572)
!2520 = !DILocation(line: 414, column: 21, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 414, column: 21)
!2522 = !DILocation(line: 476, column: 13, scope: !1573)
!2523 = !DILocation(line: 476, column: 13, scope: !1570)
!2524 = !DILocation(line: 476, column: 13, scope: !1571)
!2525 = !DILocation(line: 476, column: 13, scope: !1569)
!2526 = !DILocation(line: 0, scope: !1569)
!2527 = !DILocation(line: 476, column: 13, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 476, column: 13)
!2529 = !DILocation(line: 476, column: 13, scope: !1576)
!2530 = !DILocation(line: 476, column: 13, scope: !1575)
!2531 = !DILocation(line: 0, scope: !1575)
!2532 = !DILocation(line: 476, column: 13, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 476, column: 13)
!2534 = distinct !{!2534, !2522, !2522}
!2535 = !DILocation(line: 476, column: 13, scope: !1581)
!2536 = !DILocation(line: 476, column: 13, scope: !1579)
!2537 = !DILocation(line: 476, column: 13, scope: !1580)
!2538 = !DILocation(line: 0, scope: !1578)
!2539 = !DILocation(line: 476, column: 13, scope: !1578)
!2540 = distinct !DIAssignID()
!2541 = distinct !DIAssignID()
!2542 = distinct !DIAssignID()
!2543 = distinct !DIAssignID()
!2544 = !DILocation(line: 476, column: 13, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 476, column: 13)
!2546 = !DILocation(line: 476, column: 13, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 476, column: 13)
!2548 = !DILocation(line: 476, column: 13, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 476, column: 13)
!2550 = !DILocation(line: 476, column: 13, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 476, column: 13)
!2552 = distinct !{!2552, !2537, !2537}
!2553 = !DILocation(line: 476, column: 13, scope: !1586)
!2554 = !DILocation(line: 476, column: 13, scope: !1587)
!2555 = !DILocation(line: 478, column: 13, scope: !1592)
!2556 = !DILocation(line: 476, column: 13, scope: !1584)
!2557 = !DILocation(line: 476, column: 13, scope: !1585)
!2558 = !DILocation(line: 476, column: 13, scope: !1583)
!2559 = !DILocation(line: 0, scope: !1583)
!2560 = !DILocation(line: 476, column: 13, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 476, column: 13)
!2562 = !DILocation(line: 476, column: 13, scope: !1590)
!2563 = !DILocation(line: 476, column: 13, scope: !1589)
!2564 = !DILocation(line: 0, scope: !1589)
!2565 = !DILocation(line: 476, column: 13, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 476, column: 13)
!2567 = distinct !{!2567, !2554, !2554}
!2568 = !DILocation(line: 0, scope: !1592)
!2569 = distinct !DIAssignID()
!2570 = distinct !DIAssignID()
!2571 = distinct !DIAssignID()
!2572 = distinct !DIAssignID()
!2573 = !DILocation(line: 478, column: 13, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 478, column: 13)
!2575 = !DILocation(line: 478, column: 13, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 478, column: 13)
!2577 = !DILocation(line: 478, column: 13, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 478, column: 13)
!2579 = !DILocation(line: 478, column: 13, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 478, column: 13)
!2581 = !DILocation(line: 482, column: 59, scope: !1498)
!2582 = !DILocation(line: 482, column: 54, scope: !1498)
!2583 = !DILocation(line: 483, column: 59, scope: !1498)
!2584 = !DILocation(line: 483, column: 54, scope: !1498)
!2585 = !DILocation(line: 485, column: 13, scope: !1498)
!2586 = !DILocation(line: 565, column: 26, scope: !1498)
!2587 = !DILocation(line: 478, column: 13, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 478, column: 13)
!2589 = !DILocation(line: 494, column: 22, scope: !1599)
!2590 = !DILocation(line: 494, column: 25, scope: !1599)
!2591 = !DILocation(line: 494, column: 21, scope: !1600)
!2592 = !DILocation(line: 497, column: 21, scope: !1597)
!2593 = !DILocation(line: 0, scope: !1597)
!2594 = !DILocation(line: 499, column: 40, scope: !1602)
!2595 = !DILocation(line: 499, column: 50, scope: !1602)
!2596 = !DILocation(line: 499, column: 38, scope: !1602)
!2597 = !DILocation(line: 0, scope: !1602)
!2598 = !DILocation(line: 500, column: 40, scope: !1602)
!2599 = !DILocation(line: 500, column: 50, scope: !1602)
!2600 = !DILocation(line: 500, column: 38, scope: !1602)
!2601 = !DILocation(line: 501, column: 29, scope: !1607)
!2602 = !DILocation(line: 501, column: 29, scope: !1602)
!2603 = !DILocation(line: 502, column: 29, scope: !1606)
!2604 = !DILocation(line: 0, scope: !1606)
!2605 = !DILocation(line: 502, column: 29, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 502, column: 29)
!2607 = !DILocation(line: 497, column: 46, scope: !1603)
!2608 = !DILocation(line: 497, column: 39, scope: !1603)
!2609 = distinct !{!2609, !2592, !2610}
!2610 = !DILocation(line: 503, column: 21, scope: !1597)
!2611 = !DILocation(line: 0, scope: !1609)
!2612 = !DILocation(line: 508, column: 62, scope: !1609)
!2613 = !DILocation(line: 508, column: 67, scope: !1609)
!2614 = !DILocation(line: 508, column: 56, scope: !1609)
!2615 = !DILocation(line: 509, column: 31, scope: !1609)
!2616 = !DILocation(line: 520, column: 21, scope: !1609)
!2617 = !DILocation(line: 521, column: 21, scope: !1609)
!2618 = !DILocation(line: 522, column: 21, scope: !1609)
!2619 = !DILocation(line: 523, column: 21, scope: !1609)
!2620 = !DILocation(line: 524, column: 21, scope: !1609)
!2621 = distinct !DIAssignID()
!2622 = !DILocation(line: 525, column: 21, scope: !1609)
!2623 = distinct !DIAssignID()
!2624 = !DILocation(line: 526, column: 21, scope: !1609)
!2625 = distinct !DIAssignID()
!2626 = !DILocation(line: 527, column: 21, scope: !1609)
!2627 = distinct !DIAssignID()
!2628 = !DILocation(line: 528, column: 21, scope: !1609)
!2629 = distinct !DIAssignID()
!2630 = !DILocation(line: 529, column: 21, scope: !1609)
!2631 = distinct !DIAssignID()
!2632 = !DILocation(line: 530, column: 21, scope: !1609)
!2633 = distinct !DIAssignID()
!2634 = !DILocation(line: 531, column: 21, scope: !1609)
!2635 = distinct !DIAssignID()
!2636 = !DILocation(line: 532, column: 21, scope: !1609)
!2637 = distinct !DIAssignID()
!2638 = !DILocation(line: 533, column: 21, scope: !1609)
!2639 = distinct !DIAssignID()
!2640 = !DILocation(line: 534, column: 21, scope: !1609)
!2641 = distinct !DIAssignID()
!2642 = !DILocation(line: 535, column: 21, scope: !1609)
!2643 = distinct !DIAssignID()
!2644 = !DILocation(line: 536, column: 21, scope: !1609)
!2645 = distinct !DIAssignID()
!2646 = !DILocation(line: 537, column: 21, scope: !1609)
!2647 = distinct !DIAssignID()
!2648 = !DILocation(line: 538, column: 21, scope: !1609)
!2649 = distinct !DIAssignID()
!2650 = !DILocation(line: 539, column: 21, scope: !1609)
!2651 = distinct !DIAssignID()
!2652 = !DILocation(line: 540, column: 21, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 540, column: 21)
!2654 = !DILocation(line: 540, column: 21, scope: !1609)
!2655 = !DILocation(line: 541, column: 21, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 541, column: 21)
!2657 = !DILocation(line: 541, column: 21, scope: !1609)
!2658 = !DILocation(line: 542, column: 21, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 542, column: 21)
!2660 = !DILocation(line: 542, column: 21, scope: !1609)
!2661 = !DILocation(line: 543, column: 21, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 543, column: 21)
!2663 = !DILocation(line: 543, column: 21, scope: !1609)
!2664 = !DILocation(line: 544, column: 21, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 544, column: 21)
!2666 = !DILocation(line: 544, column: 21, scope: !1609)
!2667 = !DILocation(line: 545, column: 21, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 545, column: 21)
!2669 = !DILocation(line: 545, column: 21, scope: !1609)
!2670 = !DILocation(line: 546, column: 21, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 546, column: 21)
!2672 = !DILocation(line: 546, column: 21, scope: !1609)
!2673 = !DILocation(line: 547, column: 21, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 547, column: 21)
!2675 = !DILocation(line: 547, column: 21, scope: !1609)
!2676 = !DILocation(line: 548, column: 21, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 548, column: 21)
!2678 = !DILocation(line: 548, column: 21, scope: !1609)
!2679 = !DILocation(line: 549, column: 21, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 549, column: 21)
!2681 = !DILocation(line: 549, column: 21, scope: !1609)
!2682 = !DILocation(line: 550, column: 21, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 550, column: 21)
!2684 = !DILocation(line: 550, column: 21, scope: !1609)
!2685 = !DILocation(line: 551, column: 21, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 551, column: 21)
!2687 = !DILocation(line: 551, column: 21, scope: !1609)
!2688 = !DILocation(line: 552, column: 21, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 552, column: 21)
!2690 = !DILocation(line: 552, column: 21, scope: !1609)
!2691 = !DILocation(line: 553, column: 21, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 553, column: 21)
!2693 = !DILocation(line: 553, column: 21, scope: !1609)
!2694 = !DILocation(line: 554, column: 21, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 554, column: 21)
!2696 = !DILocation(line: 554, column: 21, scope: !1609)
!2697 = !DILocation(line: 555, column: 21, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 555, column: 21)
!2699 = !DILocation(line: 555, column: 21, scope: !1609)
!2700 = !DILocation(line: 559, column: 24, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 559, column: 24)
!2702 = !DILocation(line: 559, column: 24, scope: !1609)
!2703 = !DILocation(line: 561, column: 43, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 560, column: 21)
!2705 = !DILocation(line: 561, column: 38, scope: !2704)
!2706 = !DILocation(line: 561, column: 35, scope: !2704)
!2707 = !DILocation(line: 562, column: 44, scope: !2704)
!2708 = !DILocation(line: 562, column: 49, scope: !2704)
!2709 = !DILocation(line: 562, column: 38, scope: !2704)
!2710 = !DILocation(line: 562, column: 35, scope: !2704)
!2711 = !DILocation(line: 563, column: 21, scope: !2704)
!2712 = !DILocation(line: 565, column: 22, scope: !1498)
!2713 = !DILocation(line: 565, column: 13, scope: !1600)
!2714 = distinct !{!2714, !2585, !2715}
!2715 = !DILocation(line: 565, column: 43, scope: !1498)
!2716 = !DILocation(line: 566, column: 21, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 566, column: 17)
!2718 = !DILocation(line: 574, column: 31, scope: !1613)
!2719 = !DILocation(line: 575, column: 31, scope: !1613)
!2720 = !DILocation(line: 576, column: 31, scope: !1613)
!2721 = !DILocation(line: 577, column: 31, scope: !1613)
!2722 = !DILocation(line: 579, column: 46, scope: !1613)
!2723 = !DILocation(line: 579, column: 51, scope: !1613)
!2724 = !DILocation(line: 588, column: 38, scope: !1613)
!2725 = !DILocation(line: 592, column: 13, scope: !1613)
!2726 = !DILocation(line: 593, column: 28, scope: !1613)
!2727 = !DILocation(line: 594, column: 25, scope: !1613)
!2728 = !DILocation(line: 594, column: 51, scope: !1613)
!2729 = !DILocation(line: 595, column: 30, scope: !1613)
!2730 = !DILocation(line: 597, column: 42, scope: !1613)
!2731 = !DILocation(line: 597, column: 77, scope: !1613)
!2732 = !DILocation(line: 597, column: 55, scope: !1613)
!2733 = !DILocation(line: 597, column: 39, scope: !1613)
!2734 = !DILocation(line: 597, column: 85, scope: !1613)
!2735 = !DILocation(line: 597, column: 84, scope: !1613)
!2736 = !DILocation(line: 597, column: 94, scope: !1613)
!2737 = !DILocation(line: 597, column: 111, scope: !1613)
!2738 = !DILocation(line: 597, column: 98, scope: !1613)
!2739 = !DILocation(line: 599, column: 16, scope: !1613)
!2740 = !DILocation(line: 599, column: 21, scope: !1613)
!2741 = !DILocation(line: 599, column: 13, scope: !1613)
!2742 = !DILocation(line: 599, column: 59, scope: !1613)
!2743 = !DILocation(line: 600, column: 29, scope: !1613)
!2744 = !DILocation(line: 600, column: 23, scope: !1613)
!2745 = !DILocation(line: 600, column: 55, scope: !1613)
!2746 = !DILocation(line: 602, column: 23, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 602, column: 17)
!2748 = !DILocation(line: 602, column: 17, scope: !1613)
!2749 = !DILocation(line: 603, column: 43, scope: !2747)
!2750 = !DILocation(line: 603, column: 49, scope: !2747)
!2751 = !DILocation(line: 603, column: 40, scope: !2747)
!2752 = !DILocation(line: 603, column: 60, scope: !2747)
!2753 = !DILocation(line: 603, column: 37, scope: !2747)
!2754 = !DILocation(line: 603, column: 27, scope: !2747)
!2755 = !DILocation(line: 603, column: 17, scope: !2747)
!2756 = !DILocation(line: 604, column: 40, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 604, column: 17)
!2758 = !DILocation(line: 605, column: 23, scope: !2757)
!2759 = !DILocation(line: 605, column: 17, scope: !2757)
!2760 = !DILocation(line: 606, column: 39, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 606, column: 17)
!2762 = !DILocation(line: 607, column: 29, scope: !2761)
!2763 = !DILocation(line: 607, column: 17, scope: !2761)
!2764 = !DILocation(line: 607, column: 27, scope: !2761)
!2765 = distinct !DIAssignID()
!2766 = !DILocation(line: 609, column: 23, scope: !1627)
!2767 = !DILocation(line: 609, column: 35, scope: !1627)
!2768 = !DILocation(line: 609, column: 17, scope: !1613)
!2769 = !DILocation(line: 0, scope: !1673)
!2770 = !DILocation(line: 708, column: 41, scope: !1677)
!2771 = !DILocation(line: 708, column: 17, scope: !1673)
!2772 = !DILocation(line: 612, column: 59, scope: !1626)
!2773 = !DILocation(line: 612, column: 63, scope: !1626)
!2774 = !DILocation(line: 612, column: 50, scope: !1626)
!2775 = !DILocation(line: 0, scope: !1626)
!2776 = !DILocation(line: 614, column: 45, scope: !1626)
!2777 = !DILocation(line: 614, column: 34, scope: !1626)
!2778 = !DILocation(line: 615, column: 28, scope: !1626)
!2779 = !DILocation(line: 615, column: 83, scope: !1626)
!2780 = !DILocation(line: 615, column: 79, scope: !1626)
!2781 = !DILocation(line: 615, column: 90, scope: !1626)
!2782 = !DILocation(line: 616, column: 28, scope: !1626)
!2783 = !DILocation(line: 616, column: 26, scope: !1626)
!2784 = !DILocation(line: 0, scope: !1633)
!2785 = !DILocation(line: 617, column: 41, scope: !1636)
!2786 = !DILocation(line: 617, column: 17, scope: !1633)
!2787 = !DILocation(line: 613, column: 21, scope: !1626)
!2788 = !DILocation(line: 615, column: 21, scope: !1626)
!2789 = !DILocation(line: 661, column: 36, scope: !1626)
!2790 = !DILocation(line: 662, column: 34, scope: !1626)
!2791 = !DILocation(line: 662, column: 45, scope: !1626)
!2792 = !DILocation(line: 663, column: 31, scope: !1626)
!2793 = !DILocation(line: 663, column: 41, scope: !1626)
!2794 = !DILocation(line: 663, column: 17, scope: !1626)
!2795 = !DILocation(line: 620, column: 46, scope: !1635)
!2796 = !DILocation(line: 620, column: 33, scope: !1635)
!2797 = !DILocation(line: 0, scope: !1635)
!2798 = !DILocation(line: 621, column: 30, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 621, column: 25)
!2800 = !DILocation(line: 621, column: 25, scope: !1635)
!2801 = !DILocation(line: 623, column: 26, scope: !1635)
!2802 = !DILocation(line: 624, column: 26, scope: !1635)
!2803 = !DILocation(line: 624, column: 79, scope: !1635)
!2804 = !DILocation(line: 624, column: 74, scope: !1635)
!2805 = !DILocation(line: 625, column: 84, scope: !1635)
!2806 = !DILocation(line: 625, column: 87, scope: !1635)
!2807 = !DILocation(line: 626, column: 35, scope: !1640)
!2808 = !DILocation(line: 626, column: 21, scope: !1641)
!2809 = !DILocation(line: 626, scope: !1641)
!2810 = !DILocation(line: 644, column: 21, scope: !1651)
!2811 = !DILocation(line: 644, column: 30, scope: !1650)
!2812 = !DILocation(line: 629, column: 25, scope: !1639)
!2813 = !DILocation(line: 630, column: 25, scope: !1639)
!2814 = !DILocation(line: 630, column: 62, scope: !1639)
!2815 = !DILocation(line: 630, column: 61, scope: !1639)
!2816 = !DILocation(line: 630, column: 73, scope: !1639)
!2817 = !DILocation(line: 630, column: 72, scope: !1639)
!2818 = !DILocation(line: 630, column: 86, scope: !1639)
!2819 = !DILocation(line: 630, column: 85, scope: !1639)
!2820 = !DILocation(line: 0, scope: !1644)
!2821 = !DILocation(line: 633, column: 39, scope: !1646)
!2822 = !DILocation(line: 633, column: 63, scope: !1646)
!2823 = !DILocation(line: 633, column: 49, scope: !1646)
!2824 = !DILocation(line: 633, column: 47, scope: !1646)
!2825 = !DILocation(line: 0, scope: !1646)
!2826 = !DILocation(line: 634, column: 43, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 634, column: 33)
!2828 = !DILocation(line: 634, column: 54, scope: !2827)
!2829 = !DILocation(line: 634, column: 37, scope: !2827)
!2830 = !DILocation(line: 634, column: 33, scope: !1646)
!2831 = !DILocation(line: 636, column: 33, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 635, column: 29)
!2833 = !DILocation(line: 637, column: 58, scope: !2832)
!2834 = !DILocation(line: 637, column: 33, scope: !2832)
!2835 = !DILocation(line: 637, column: 52, scope: !2832)
!2836 = !DILocation(line: 638, column: 62, scope: !2832)
!2837 = !DILocation(line: 638, column: 56, scope: !2832)
!2838 = !DILocation(line: 638, column: 48, scope: !2832)
!2839 = !DILocation(line: 638, column: 54, scope: !2832)
!2840 = !DILocation(line: 639, column: 33, scope: !2832)
!2841 = !DILocation(line: 639, column: 54, scope: !2832)
!2842 = !DILocation(line: 640, column: 39, scope: !2832)
!2843 = !DILocation(line: 641, column: 29, scope: !2832)
!2844 = !DILocation(line: 643, column: 21, scope: !1640)
!2845 = !DILocation(line: 626, column: 45, scope: !1640)
!2846 = distinct !{!2846, !2808, !2847}
!2847 = !DILocation(line: 643, column: 21, scope: !1641)
!2848 = !DILocation(line: 646, column: 40, scope: !1649)
!2849 = !DILocation(line: 646, column: 39, scope: !1649)
!2850 = !DILocation(line: 0, scope: !1649)
!2851 = !DILocation(line: 647, column: 35, scope: !1649)
!2852 = !DILocation(line: 647, column: 86, scope: !1649)
!2853 = !DILocation(line: 647, column: 89, scope: !1649)
!2854 = !DILocation(line: 648, column: 49, scope: !1649)
!2855 = !DILocation(line: 648, column: 35, scope: !1649)
!2856 = !DILocation(line: 648, column: 33, scope: !1649)
!2857 = !DILocation(line: 649, column: 39, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 649, column: 29)
!2859 = !DILocation(line: 649, column: 50, scope: !2858)
!2860 = !DILocation(line: 649, column: 33, scope: !2858)
!2861 = !DILocation(line: 649, column: 29, scope: !1649)
!2862 = !DILocation(line: 651, column: 29, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2858, file: !3, line: 650, column: 25)
!2864 = !DILocation(line: 652, column: 54, scope: !2863)
!2865 = !DILocation(line: 652, column: 29, scope: !2863)
!2866 = !DILocation(line: 652, column: 48, scope: !2863)
!2867 = !DILocation(line: 653, column: 52, scope: !2863)
!2868 = !DILocation(line: 653, column: 44, scope: !2863)
!2869 = !DILocation(line: 653, column: 50, scope: !2863)
!2870 = !DILocation(line: 654, column: 29, scope: !2863)
!2871 = !DILocation(line: 654, column: 50, scope: !2863)
!2872 = !DILocation(line: 655, column: 35, scope: !2863)
!2873 = !DILocation(line: 656, column: 25, scope: !2863)
!2874 = !DILocation(line: 644, column: 37, scope: !1650)
!2875 = distinct !{!2875, !2810, !2876}
!2876 = !DILocation(line: 657, column: 21, scope: !1651)
!2877 = !DILocation(line: 658, column: 26, scope: !1635)
!2878 = !DILocation(line: 659, column: 17, scope: !1636)
!2879 = !DILocation(line: 617, column: 53, scope: !1636)
!2880 = distinct !{!2880, !2786, !2881}
!2881 = !DILocation(line: 659, column: 17, scope: !1633)
!2882 = !DILocation(line: 0, scope: !1654)
!2883 = distinct !{!2883, !2794, !2884}
!2884 = !DILocation(line: 689, column: 17, scope: !1626)
!2885 = !DILocation(line: 690, column: 31, scope: !1626)
!2886 = !DILocation(line: 690, column: 17, scope: !1626)
!2887 = !DILocation(line: 667, column: 46, scope: !1654)
!2888 = !DILocation(line: 667, column: 54, scope: !1654)
!2889 = !DILocation(line: 668, column: 35, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !3, line: 668, column: 21)
!2891 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 668, column: 21)
!2892 = !DILocation(line: 668, column: 44, scope: !2890)
!2893 = !DILocation(line: 668, column: 21, scope: !2891)
!2894 = !DILocation(line: 668, column: 47, scope: !2890)
!2895 = !DILocation(line: 668, column: 57, scope: !2890)
!2896 = !DILocation(line: 668, column: 61, scope: !2890)
!2897 = !DILocation(line: 668, column: 77, scope: !2890)
!2898 = distinct !{!2898, !2893, !2899}
!2899 = !DILocation(line: 668, column: 81, scope: !2891)
!2900 = !DILocation(line: 669, column: 39, scope: !1659)
!2901 = !DILocation(line: 668, scope: !2891)
!2902 = !DILocation(line: 0, scope: !1656)
!2903 = !DILocation(line: 669, column: 21, scope: !1656)
!2904 = !DILocation(line: 674, column: 66, scope: !1661)
!2905 = !DILocation(line: 674, column: 46, scope: !1661)
!2906 = !DILocation(line: 674, column: 64, scope: !1661)
!2907 = !DILocation(line: 0, scope: !1661)
!2908 = !DILocation(line: 678, column: 35, scope: !1661)
!2909 = !DILocation(line: 0, scope: !1658)
!2910 = !DILocation(line: 686, column: 35, scope: !1658)
!2911 = !DILocation(line: 686, column: 53, scope: !1658)
!2912 = !DILocation(line: 686, column: 27, scope: !1658)
!2913 = !DILocation(line: 669, column: 50, scope: !1659)
!2914 = distinct !{!2914, !2903, !2915}
!2915 = !DILocation(line: 687, column: 21, scope: !1656)
!2916 = !DILocation(line: 693, column: 39, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !1666, file: !3, line: 693, column: 21)
!2918 = !DILocation(line: 0, scope: !1666)
!2919 = !DILocation(line: 0, scope: !1664)
!2920 = !DILocation(line: 693, column: 21, scope: !1666)
!2921 = !DILocation(line: 702, column: 35, scope: !1671)
!2922 = !DILocation(line: 0, scope: !1668)
!2923 = !DILocation(line: 702, column: 17, scope: !1668)
!2924 = !DILocation(line: 694, column: 29, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 694, column: 29)
!2926 = !DILocation(line: 694, column: 39, scope: !2925)
!2927 = !DILocation(line: 694, column: 45, scope: !2925)
!2928 = !DILocation(line: 694, column: 56, scope: !2925)
!2929 = !DILocation(line: 694, column: 43, scope: !2925)
!2930 = !DILocation(line: 694, column: 29, scope: !2917)
!2931 = !DILocation(line: 693, column: 50, scope: !2917)
!2932 = distinct !{!2932, !2933}
!2933 = !{!"llvm.loop.unroll.disable"}
!2934 = !DILocation(line: 696, column: 27, scope: !1664)
!2935 = !DILocation(line: 698, column: 25, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 697, column: 25)
!2937 = distinct !{!2937, !2886, !2938}
!2938 = !DILocation(line: 701, column: 17, scope: !1626)
!2939 = distinct !{!2939, !2920, !2940}
!2940 = !DILocation(line: 695, column: 34, scope: !1666)
!2941 = !DILocation(line: 703, column: 21, scope: !1670)
!2942 = !DILocation(line: 0, scope: !1670)
!2943 = !DILocation(line: 703, column: 21, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 703, column: 21)
!2945 = !DILocation(line: 702, column: 46, scope: !1671)
!2946 = distinct !{!2946, !2923, !2947}
!2947 = !DILocation(line: 703, column: 21, scope: !1668)
!2948 = !DILocation(line: 711, column: 46, scope: !1676)
!2949 = !DILocation(line: 711, column: 33, scope: !1676)
!2950 = !DILocation(line: 0, scope: !1676)
!2951 = !DILocation(line: 712, column: 31, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 712, column: 25)
!2953 = !DILocation(line: 712, column: 25, scope: !1676)
!2954 = !DILocation(line: 714, column: 27, scope: !1676)
!2955 = !DILocation(line: 715, column: 26, scope: !1676)
!2956 = !DILocation(line: 715, column: 79, scope: !1676)
!2957 = !DILocation(line: 715, column: 74, scope: !1676)
!2958 = !DILocation(line: 717, column: 26, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 717, column: 21)
!2960 = !DILocation(line: 717, column: 35, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 717, column: 21)
!2962 = !DILocation(line: 717, column: 21, scope: !2959)
!2963 = !DILocation(line: 718, column: 25, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2961, file: !3, line: 718, column: 25)
!2965 = distinct !DIAssignID()
!2966 = distinct !DIAssignID()
!2967 = distinct !DIAssignID()
!2968 = !DILocation(line: 718, column: 25, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 718, column: 25)
!2970 = !DILocation(line: 718, column: 25, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 718, column: 25)
!2972 = !DILocation(line: 718, column: 25, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 718, column: 25)
!2974 = !DILocation(line: 718, column: 25, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2973, file: !3, line: 718, column: 25)
!2976 = !DILocation(line: 718, column: 25, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 718, column: 25)
!2978 = !DILocation(line: 718, column: 25, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2977, file: !3, line: 718, column: 25)
!2980 = !DILocation(line: 717, column: 45, scope: !2961)
!2981 = distinct !{!2981, !2962, !2982}
!2982 = !DILocation(line: 718, column: 25, scope: !2959)
!2983 = !DILocation(line: 717, scope: !2959)
!2984 = !DILocation(line: 719, column: 27, scope: !1676)
!2985 = !DILocation(line: 720, column: 30, scope: !1681)
!2986 = !DILocation(line: 720, column: 21, scope: !1682)
!2987 = !DILocation(line: 721, column: 25, scope: !1680)
!2988 = !DILocation(line: 0, scope: !1680)
!2989 = !DILocation(line: 721, column: 25, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 721, column: 25)
!2991 = !DILocation(line: 720, column: 37, scope: !1681)
!2992 = distinct !{!2992, !2986, !2993}
!2993 = !DILocation(line: 721, column: 25, scope: !1682)
!2994 = !DILocation(line: 272, column: 9, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 272, column: 9)
!2996 = !DILocation(line: 708, column: 53, scope: !1677)
!2997 = distinct !{!2997, !2771, !2998}
!2998 = !DILocation(line: 722, column: 17, scope: !1673)
!2999 = !DILocation(line: 725, column: 9, scope: !1473)
!3000 = !DILocation(line: 726, column: 9, scope: !1473)
!3001 = !DILocation(line: 730, column: 20, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !83, file: !3, line: 730, column: 9)
!3003 = !DILocation(line: 730, column: 9, scope: !83)
!3004 = !DILocation(line: 0, scope: !3002)
!3005 = !DILocation(line: 744, column: 18, scope: !83)
!3006 = !DILocation(line: 744, column: 43, scope: !83)
!3007 = !DILocation(line: 744, column: 41, scope: !83)
!3008 = !DILocation(line: 744, column: 8, scope: !83)
!3009 = !DILocation(line: 744, column: 16, scope: !83)
!3010 = !DILocation(line: 745, column: 13, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !83, file: !3, line: 745, column: 9)
!3012 = !DILocation(line: 745, column: 20, scope: !3011)
!3013 = !DILocation(line: 745, column: 43, scope: !3011)
!3014 = !DILocation(line: 745, column: 59, scope: !3011)
!3015 = !DILocation(line: 745, column: 9, scope: !83)
!3016 = !DILocation(line: 746, column: 17, scope: !3011)
!3017 = !DILocation(line: 746, column: 9, scope: !3011)
!3018 = !DILocation(line: 749, column: 15, scope: !1685)
!3019 = !DILocation(line: 749, column: 31, scope: !1685)
!3020 = !DILocation(line: 749, column: 9, scope: !83)
!3021 = !DILocation(line: 751, column: 20, scope: !1684)
!3022 = !DILocation(line: 0, scope: !1684)
!3023 = !DILocation(line: 752, column: 20, scope: !1684)
!3024 = !DILocation(line: 753, column: 9, scope: !1684)
!3025 = !DILocation(line: 754, column: 5, scope: !1684)
!3026 = !DILocation(line: 755, column: 1, scope: !83)
!3027 = distinct !DISubprogram(name: "refine_subpel", scope: !3, file: !3, line: 809, type: !3028, scopeLine: 810, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3030)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{null, !86, !1372, !50, !50, !638, !50}
!3030 = !{!3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3048, !3049, !3050, !3051, !3052, !3053, !3056, !3057, !3060, !3061, !3062, !3064, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3079, !3080, !3081, !3085, !3088, !3089, !3092, !3093, !3094, !3097, !3098, !3099, !3102, !3103, !3104, !3107, !3108, !3109, !3112, !3113}
!3031 = !DILocalVariable(name: "h", arg: 1, scope: !3027, file: !3, line: 809, type: !86)
!3032 = !DILocalVariable(name: "m", arg: 2, scope: !3027, file: !3, line: 809, type: !1372)
!3033 = !DILocalVariable(name: "hpel_iters", arg: 3, scope: !3027, file: !3, line: 809, type: !50)
!3034 = !DILocalVariable(name: "qpel_iters", arg: 4, scope: !3027, file: !3, line: 809, type: !50)
!3035 = !DILocalVariable(name: "p_halfpel_thresh", arg: 5, scope: !3027, file: !3, line: 809, type: !638)
!3036 = !DILocalVariable(name: "b_refine_qpel", arg: 6, scope: !3027, file: !3, line: 809, type: !50)
!3037 = !DILocalVariable(name: "bw", scope: !3027, file: !3, line: 811, type: !1398)
!3038 = !DILocalVariable(name: "bh", scope: !3027, file: !3, line: 812, type: !1398)
!3039 = !DILocalVariable(name: "p_cost_mvx", scope: !3027, file: !3, line: 813, type: !1428)
!3040 = !DILocalVariable(name: "p_cost_mvy", scope: !3027, file: !3, line: 814, type: !1428)
!3041 = !DILocalVariable(name: "i_pixel", scope: !3027, file: !3, line: 815, type: !1398)
!3042 = !DILocalVariable(name: "b_chroma_me", scope: !3027, file: !3, line: 816, type: !1398)
!3043 = !DILocalVariable(name: "mvy_offset", scope: !3027, file: !3, line: 817, type: !1398)
!3044 = !DILocalVariable(name: "pix", scope: !3027, file: !3, line: 819, type: !3045, align: 128)
!3045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 9216, elements: !3046)
!3046 = !{!3047}
!3047 = !DISubrange(count: 1152)
!3048 = !DILocalVariable(name: "bmx", scope: !3027, file: !3, line: 821, type: !50)
!3049 = !DILocalVariable(name: "bmy", scope: !3027, file: !3, line: 822, type: !50)
!3050 = !DILocalVariable(name: "bcost", scope: !3027, file: !3, line: 823, type: !50)
!3051 = !DILocalVariable(name: "odir", scope: !3027, file: !3, line: 824, type: !50)
!3052 = !DILocalVariable(name: "bdir", scope: !3027, file: !3, line: 824, type: !50)
!3053 = !DILocalVariable(name: "mx", scope: !3054, file: !3, line: 829, type: !50)
!3054 = distinct !DILexicalBlock(scope: !3055, file: !3, line: 828, column: 5)
!3055 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 827, column: 9)
!3056 = !DILocalVariable(name: "my", scope: !3054, file: !3, line: 830, type: !50)
!3057 = !DILocalVariable(name: "stride", scope: !3058, file: !3, line: 832, type: !50)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !3, line: 832, column: 13)
!3059 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 831, column: 13)
!3060 = !DILocalVariable(name: "src", scope: !3058, file: !3, line: 832, type: !282)
!3061 = !DILocalVariable(name: "cost", scope: !3058, file: !3, line: 832, type: !50)
!3062 = !DILocalVariable(name: "i", scope: !3063, file: !3, line: 836, type: !50)
!3063 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 836, column: 5)
!3064 = !DILocalVariable(name: "omx", scope: !3065, file: !3, line: 838, type: !50)
!3065 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 837, column: 5)
!3066 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 836, column: 5)
!3067 = !DILocalVariable(name: "omy", scope: !3065, file: !3, line: 838, type: !50)
!3068 = !DILocalVariable(name: "costs", scope: !3065, file: !3, line: 839, type: !1089)
!3069 = !DILocalVariable(name: "stride", scope: !3065, file: !3, line: 840, type: !50)
!3070 = !DILocalVariable(name: "src0", scope: !3065, file: !3, line: 841, type: !282)
!3071 = !DILocalVariable(name: "src1", scope: !3065, file: !3, line: 841, type: !282)
!3072 = !DILocalVariable(name: "src2", scope: !3065, file: !3, line: 841, type: !282)
!3073 = !DILocalVariable(name: "src3", scope: !3065, file: !3, line: 841, type: !282)
!3074 = !DILocalVariable(name: "stride", scope: !3075, file: !3, line: 858, type: !50)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 858, column: 9)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !3, line: 858, column: 9)
!3077 = distinct !DILexicalBlock(scope: !3078, file: !3, line: 856, column: 5)
!3078 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 855, column: 9)
!3079 = !DILocalVariable(name: "src", scope: !3075, file: !3, line: 858, type: !282)
!3080 = !DILocalVariable(name: "cost", scope: !3075, file: !3, line: 858, type: !50)
!3081 = !DILocalVariable(name: "i", scope: !3082, file: !3, line: 880, type: !50)
!3082 = distinct !DILexicalBlock(scope: !3083, file: !3, line: 880, column: 9)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 878, column: 5)
!3084 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 877, column: 9)
!3085 = !DILocalVariable(name: "omx", scope: !3086, file: !3, line: 885, type: !50)
!3086 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 881, column: 9)
!3087 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 880, column: 9)
!3088 = !DILocalVariable(name: "omy", scope: !3086, file: !3, line: 885, type: !50)
!3089 = !DILocalVariable(name: "stride", scope: !3090, file: !3, line: 886, type: !50)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 886, column: 13)
!3091 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 886, column: 13)
!3092 = !DILocalVariable(name: "src", scope: !3090, file: !3, line: 886, type: !282)
!3093 = !DILocalVariable(name: "cost", scope: !3090, file: !3, line: 886, type: !50)
!3094 = !DILocalVariable(name: "stride", scope: !3095, file: !3, line: 887, type: !50)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 887, column: 13)
!3096 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 887, column: 13)
!3097 = !DILocalVariable(name: "src", scope: !3095, file: !3, line: 887, type: !282)
!3098 = !DILocalVariable(name: "cost", scope: !3095, file: !3, line: 887, type: !50)
!3099 = !DILocalVariable(name: "stride", scope: !3100, file: !3, line: 888, type: !50)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !3, line: 888, column: 13)
!3101 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 888, column: 13)
!3102 = !DILocalVariable(name: "src", scope: !3100, file: !3, line: 888, type: !282)
!3103 = !DILocalVariable(name: "cost", scope: !3100, file: !3, line: 888, type: !50)
!3104 = !DILocalVariable(name: "stride", scope: !3105, file: !3, line: 889, type: !50)
!3105 = distinct !DILexicalBlock(scope: !3106, file: !3, line: 889, column: 13)
!3106 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 889, column: 13)
!3107 = !DILocalVariable(name: "src", scope: !3105, file: !3, line: 889, type: !282)
!3108 = !DILocalVariable(name: "cost", scope: !3105, file: !3, line: 889, type: !50)
!3109 = !DILocalVariable(name: "costs", scope: !3110, file: !3, line: 897, type: !1089)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !3, line: 896, column: 5)
!3111 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 895, column: 14)
!3112 = !DILocalVariable(name: "omx", scope: !3110, file: !3, line: 898, type: !50)
!3113 = !DILocalVariable(name: "omy", scope: !3110, file: !3, line: 898, type: !50)
!3114 = distinct !DIAssignID()
!3115 = !DILocation(line: 0, scope: !3027)
!3116 = distinct !DIAssignID()
!3117 = !DILocation(line: 0, scope: !3058)
!3118 = distinct !DIAssignID()
!3119 = !DILocation(line: 0, scope: !3065)
!3120 = distinct !DIAssignID()
!3121 = distinct !DIAssignID()
!3122 = !DILocation(line: 0, scope: !3075)
!3123 = distinct !DIAssignID()
!3124 = !DILocation(line: 0, scope: !3090)
!3125 = distinct !DIAssignID()
!3126 = !DILocation(line: 0, scope: !3095)
!3127 = distinct !DIAssignID()
!3128 = !DILocation(line: 0, scope: !3100)
!3129 = distinct !DIAssignID()
!3130 = !DILocation(line: 0, scope: !3105)
!3131 = distinct !DIAssignID()
!3132 = !DILocation(line: 0, scope: !3110)
!3133 = !DILocation(line: 811, column: 39, scope: !3027)
!3134 = !DILocation(line: 811, column: 20, scope: !3027)
!3135 = !DILocation(line: 811, column: 48, scope: !3027)
!3136 = !DILocation(line: 812, column: 48, scope: !3027)
!3137 = !DILocation(line: 813, column: 37, scope: !3027)
!3138 = !DILocation(line: 813, column: 52, scope: !3027)
!3139 = !DILocation(line: 813, column: 49, scope: !3027)
!3140 = !DILocation(line: 813, column: 47, scope: !3027)
!3141 = !DILocation(line: 814, column: 49, scope: !3027)
!3142 = !DILocation(line: 814, column: 47, scope: !3027)
!3143 = !DILocation(line: 816, column: 35, scope: !3027)
!3144 = !DILocation(line: 816, column: 29, scope: !3027)
!3145 = !DILocation(line: 816, column: 47, scope: !3027)
!3146 = !DILocation(line: 817, column: 34, scope: !3027)
!3147 = !DILocation(line: 817, column: 52, scope: !3027)
!3148 = !DILocation(line: 817, column: 47, scope: !3027)
!3149 = !DILocation(line: 817, column: 28, scope: !3027)
!3150 = !DILocation(line: 817, column: 67, scope: !3027)
!3151 = !DILocation(line: 817, column: 78, scope: !3027)
!3152 = !DILocation(line: 817, column: 81, scope: !3027)
!3153 = !DILocation(line: 819, column: 5, scope: !3027)
!3154 = !DILocation(line: 821, column: 18, scope: !3027)
!3155 = !DILocation(line: 821, column: 15, scope: !3027)
!3156 = !DILocation(line: 822, column: 15, scope: !3027)
!3157 = !DILocation(line: 823, column: 20, scope: !3027)
!3158 = !DILocation(line: 827, column: 9, scope: !3055)
!3159 = !DILocation(line: 827, column: 20, scope: !3055)
!3160 = !DILocation(line: 827, column: 29, scope: !3055)
!3161 = !DILocation(line: 827, column: 45, scope: !3055)
!3162 = !DILocation(line: 827, column: 9, scope: !3027)
!3163 = !DILocation(line: 829, column: 30, scope: !3054)
!3164 = !DILocation(line: 829, column: 47, scope: !3054)
!3165 = !DILocation(line: 829, column: 41, scope: !3054)
!3166 = !DILocation(line: 829, column: 61, scope: !3054)
!3167 = !DILocation(line: 829, column: 71, scope: !3054)
!3168 = !DILocation(line: 829, column: 65, scope: !3054)
!3169 = !DILocation(line: 829, column: 85, scope: !3054)
!3170 = !DILocation(line: 0, scope: !1885, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 829, column: 18, scope: !3054)
!3172 = !DILocation(line: 202, column: 17, scope: !1885, inlinedAt: !3171)
!3173 = !DILocation(line: 202, column: 14, scope: !1885, inlinedAt: !3171)
!3174 = !DILocation(line: 0, scope: !3054)
!3175 = !DILocation(line: 830, column: 30, scope: !3054)
!3176 = !DILocation(line: 830, column: 41, scope: !3054)
!3177 = !DILocation(line: 830, column: 61, scope: !3054)
!3178 = !DILocation(line: 830, column: 65, scope: !3054)
!3179 = !DILocation(line: 830, column: 85, scope: !3054)
!3180 = !DILocation(line: 0, scope: !1885, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 830, column: 18, scope: !3054)
!3182 = !DILocation(line: 202, column: 17, scope: !1885, inlinedAt: !3181)
!3183 = !DILocation(line: 202, column: 14, scope: !1885, inlinedAt: !3181)
!3184 = !DILocation(line: 831, column: 21, scope: !3059)
!3185 = !DILocation(line: 831, column: 13, scope: !3054)
!3186 = !DILocation(line: 832, column: 13, scope: !3058)
!3187 = distinct !DIAssignID()
!3188 = !DILocation(line: 832, column: 13, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 832, column: 13)
!3190 = !DILocation(line: 832, column: 13, scope: !3059)
!3191 = !DILocation(line: 0, scope: !3063)
!3192 = !DILocation(line: 836, column: 32, scope: !3066)
!3193 = !DILocation(line: 836, column: 5, scope: !3063)
!3194 = !DILocation(line: 836, column: 38, scope: !3066)
!3195 = distinct !{!3195, !3193, !3196}
!3196 = !DILocation(line: 853, column: 5, scope: !3063)
!3197 = !DILocation(line: 839, column: 9, scope: !3065)
!3198 = !DILocation(line: 840, column: 9, scope: !3065)
!3199 = !DILocation(line: 840, column: 13, scope: !3065)
!3200 = distinct !DIAssignID()
!3201 = !DILocation(line: 842, column: 22, scope: !3065)
!3202 = !DILocation(line: 842, column: 59, scope: !3065)
!3203 = !DILocation(line: 842, column: 83, scope: !3065)
!3204 = !DILocation(line: 842, column: 101, scope: !3065)
!3205 = !DILocation(line: 842, column: 16, scope: !3065)
!3206 = !DILocation(line: 843, column: 22, scope: !3065)
!3207 = !DILocation(line: 843, column: 59, scope: !3065)
!3208 = !DILocation(line: 843, column: 78, scope: !3065)
!3209 = !DILocation(line: 843, column: 101, scope: !3065)
!3210 = !DILocation(line: 843, column: 16, scope: !3065)
!3211 = !DILocation(line: 844, column: 23, scope: !3065)
!3212 = !DILocation(line: 844, column: 21, scope: !3065)
!3213 = !DILocation(line: 845, column: 21, scope: !3065)
!3214 = !DILocation(line: 846, column: 9, scope: !3065)
!3215 = !DILocation(line: 846, column: 38, scope: !3065)
!3216 = !DILocation(line: 847, column: 9, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3065, file: !3, line: 847, column: 9)
!3218 = !DILocation(line: 847, column: 9, scope: !3065)
!3219 = !DILocation(line: 848, column: 9, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3065, file: !3, line: 848, column: 9)
!3221 = !DILocation(line: 848, column: 9, scope: !3065)
!3222 = !DILocation(line: 849, column: 9, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3065, file: !3, line: 849, column: 9)
!3224 = !DILocation(line: 849, column: 9, scope: !3065)
!3225 = !DILocation(line: 850, column: 9, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3065, file: !3, line: 850, column: 9)
!3227 = !DILocation(line: 850, column: 9, scope: !3065)
!3228 = !DILocation(line: 851, column: 33, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3065, file: !3, line: 851, column: 13)
!3230 = !DILocation(line: 851, column: 13, scope: !3065)
!3231 = !DILocation(line: 853, column: 5, scope: !3066)
!3232 = !DILocation(line: 855, column: 10, scope: !3078)
!3233 = !DILocation(line: 855, column: 24, scope: !3078)
!3234 = !DILocation(line: 855, column: 36, scope: !3078)
!3235 = !DILocation(line: 855, column: 28, scope: !3078)
!3236 = !DILocation(line: 855, column: 66, scope: !3078)
!3237 = !DILocation(line: 855, column: 58, scope: !3078)
!3238 = !DILocation(line: 855, column: 55, scope: !3078)
!3239 = !DILocation(line: 855, column: 77, scope: !3078)
!3240 = !DILocation(line: 858, column: 9, scope: !3075)
!3241 = distinct !DIAssignID()
!3242 = !DILocation(line: 858, column: 9, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 858, column: 9)
!3244 = !DILocation(line: 858, column: 9, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3243, file: !3, line: 858, column: 9)
!3246 = !DILocation(line: 858, column: 9, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 858, column: 9)
!3248 = !DILocation(line: 858, column: 9, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 858, column: 9)
!3250 = !DILocation(line: 858, column: 9, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3249, file: !3, line: 858, column: 9)
!3252 = !DILocation(line: 858, column: 9, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3251, file: !3, line: 858, column: 9)
!3254 = !DILocation(line: 858, column: 9, scope: !3076)
!3255 = !DILocation(line: 862, column: 9, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 862, column: 9)
!3257 = !DILocation(line: 862, column: 9, scope: !3027)
!3258 = !DILocation(line: 864, column: 19, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3260, file: !3, line: 864, column: 13)
!3260 = distinct !DILexicalBlock(scope: !3256, file: !3, line: 863, column: 5)
!3261 = !DILocation(line: 864, column: 22, scope: !3259)
!3262 = !DILocation(line: 864, column: 28, scope: !3259)
!3263 = !DILocation(line: 864, column: 26, scope: !3259)
!3264 = !DILocation(line: 864, column: 13, scope: !3260)
!3265 = !DILocation(line: 866, column: 21, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3259, file: !3, line: 865, column: 9)
!3267 = !DILocation(line: 867, column: 24, scope: !3266)
!3268 = !DILocation(line: 867, column: 22, scope: !3266)
!3269 = !DILocation(line: 868, column: 24, scope: !3266)
!3270 = !DILocation(line: 868, column: 22, scope: !3266)
!3271 = !DILocation(line: 870, column: 13, scope: !3266)
!3272 = !DILocation(line: 872, column: 24, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3259, file: !3, line: 872, column: 18)
!3274 = !DILocation(line: 872, column: 18, scope: !3259)
!3275 = !DILocation(line: 873, column: 31, scope: !3273)
!3276 = !DILocation(line: 873, column: 13, scope: !3273)
!3277 = !DILocation(line: 877, column: 15, scope: !3084)
!3278 = !DILocation(line: 877, column: 31, scope: !3084)
!3279 = !DILocation(line: 0, scope: !3084)
!3280 = !DILocation(line: 877, column: 9, scope: !3027)
!3281 = !DILocation(line: 882, column: 61, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 882, column: 17)
!3283 = !DILocation(line: 882, column: 55, scope: !3282)
!3284 = !DILocation(line: 0, scope: !3082)
!3285 = !DILocation(line: 880, column: 36, scope: !3087)
!3286 = !DILocation(line: 880, column: 9, scope: !3082)
!3287 = !DILocation(line: 880, column: 42, scope: !3087)
!3288 = distinct !{!3288, !3286, !3289}
!3289 = !DILocation(line: 892, column: 9, scope: !3082)
!3290 = !DILocation(line: 882, column: 24, scope: !3282)
!3291 = !DILocation(line: 882, column: 21, scope: !3282)
!3292 = !DILocation(line: 882, column: 45, scope: !3282)
!3293 = !DILocation(line: 882, column: 52, scope: !3282)
!3294 = !DILocation(line: 882, column: 76, scope: !3282)
!3295 = !DILocation(line: 882, column: 86, scope: !3282)
!3296 = !DILocation(line: 882, column: 83, scope: !3282)
!3297 = !DILocation(line: 882, column: 107, scope: !3282)
!3298 = !DILocation(line: 882, column: 117, scope: !3282)
!3299 = !DILocation(line: 882, column: 114, scope: !3282)
!3300 = !DILocation(line: 882, column: 17, scope: !3086)
!3301 = !DILocation(line: 0, scope: !3086)
!3302 = !DILocation(line: 886, column: 13, scope: !3091)
!3303 = !DILocation(line: 887, column: 13, scope: !3095)
!3304 = !DILocation(line: 886, column: 13, scope: !3090)
!3305 = distinct !DIAssignID()
!3306 = !DILocation(line: 886, column: 13, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 886, column: 13)
!3308 = !DILocation(line: 886, column: 13, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3307, file: !3, line: 886, column: 13)
!3310 = !DILocation(line: 886, column: 13, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3309, file: !3, line: 886, column: 13)
!3312 = !DILocation(line: 886, column: 13, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3309, file: !3, line: 886, column: 13)
!3314 = !DILocation(line: 886, column: 13, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3313, file: !3, line: 886, column: 13)
!3316 = !DILocation(line: 886, column: 13, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 886, column: 13)
!3318 = !DILocation(line: 886, column: 13, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 886, column: 13)
!3320 = !DILocation(line: 887, column: 13, scope: !3096)
!3321 = distinct !DIAssignID()
!3322 = !DILocation(line: 887, column: 13, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 887, column: 13)
!3324 = !DILocation(line: 887, column: 13, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 887, column: 13)
!3326 = !DILocation(line: 887, column: 13, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 887, column: 13)
!3328 = !DILocation(line: 887, column: 13, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 887, column: 13)
!3330 = !DILocation(line: 887, column: 13, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 887, column: 13)
!3332 = !DILocation(line: 887, column: 13, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3331, file: !3, line: 887, column: 13)
!3334 = !DILocation(line: 887, column: 13, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 887, column: 13)
!3336 = !DILocation(line: 888, column: 13, scope: !3101)
!3337 = !DILocation(line: 889, column: 13, scope: !3105)
!3338 = !DILocation(line: 888, column: 13, scope: !3100)
!3339 = distinct !DIAssignID()
!3340 = !DILocation(line: 888, column: 13, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 888, column: 13)
!3342 = !DILocation(line: 888, column: 13, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 888, column: 13)
!3344 = !DILocation(line: 888, column: 13, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3343, file: !3, line: 888, column: 13)
!3346 = !DILocation(line: 888, column: 13, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3343, file: !3, line: 888, column: 13)
!3348 = !DILocation(line: 888, column: 13, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 888, column: 13)
!3350 = !DILocation(line: 888, column: 13, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3349, file: !3, line: 888, column: 13)
!3352 = !DILocation(line: 888, column: 13, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 888, column: 13)
!3354 = !DILocation(line: 888, column: 13, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3353, file: !3, line: 888, column: 13)
!3356 = !DILocation(line: 889, column: 13, scope: !3106)
!3357 = distinct !DIAssignID()
!3358 = !DILocation(line: 889, column: 13, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 889, column: 13)
!3360 = !DILocation(line: 889, column: 13, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3359, file: !3, line: 889, column: 13)
!3362 = !DILocation(line: 889, column: 13, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3361, file: !3, line: 889, column: 13)
!3364 = !DILocation(line: 889, column: 13, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3361, file: !3, line: 889, column: 13)
!3366 = !DILocation(line: 889, column: 13, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3365, file: !3, line: 889, column: 13)
!3368 = !DILocation(line: 889, column: 13, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3367, file: !3, line: 889, column: 13)
!3370 = !DILocation(line: 889, column: 13, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 889, column: 13)
!3372 = !DILocation(line: 889, column: 13, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3371, file: !3, line: 889, column: 13)
!3374 = !DILocation(line: 890, column: 22, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 890, column: 17)
!3376 = !DILocation(line: 890, column: 37, scope: !3375)
!3377 = !DILocation(line: 890, column: 17, scope: !3086)
!3378 = !DILocation(line: 895, column: 20, scope: !3111)
!3379 = !DILocation(line: 895, column: 18, scope: !3111)
!3380 = !DILocation(line: 895, column: 41, scope: !3111)
!3381 = !DILocation(line: 895, column: 56, scope: !3111)
!3382 = !DILocation(line: 895, column: 50, scope: !3111)
!3383 = !DILocation(line: 895, column: 48, scope: !3111)
!3384 = !DILocation(line: 895, column: 71, scope: !3111)
!3385 = !DILocation(line: 895, column: 80, scope: !3111)
!3386 = !DILocation(line: 895, column: 78, scope: !3111)
!3387 = !DILocation(line: 895, column: 101, scope: !3111)
!3388 = !DILocation(line: 895, column: 110, scope: !3111)
!3389 = !DILocation(line: 895, column: 108, scope: !3111)
!3390 = !DILocation(line: 895, column: 14, scope: !3084)
!3391 = !DILocation(line: 897, column: 9, scope: !3110)
!3392 = !DILocation(line: 900, column: 12, scope: !3110)
!3393 = !DILocation(line: 900, column: 15, scope: !3110)
!3394 = !DILocation(line: 900, column: 39, scope: !3110)
!3395 = !DILocation(line: 900, column: 50, scope: !3110)
!3396 = !DILocation(line: 900, column: 47, scope: !3110)
!3397 = !DILocation(line: 900, column: 71, scope: !3110)
!3398 = !DILocation(line: 900, column: 87, scope: !3110)
!3399 = !DILocation(line: 900, column: 9, scope: !3110)
!3400 = !DILocation(line: 901, column: 15, scope: !3110)
!3401 = !DILocation(line: 901, column: 27, scope: !3110)
!3402 = !DILocation(line: 901, column: 47, scope: !3110)
!3403 = !DILocation(line: 901, column: 71, scope: !3110)
!3404 = !DILocation(line: 901, column: 87, scope: !3110)
!3405 = !DILocation(line: 901, column: 9, scope: !3110)
!3406 = !DILocation(line: 902, column: 15, scope: !3110)
!3407 = !DILocation(line: 902, column: 27, scope: !3110)
!3408 = !DILocation(line: 902, column: 47, scope: !3110)
!3409 = !DILocation(line: 902, column: 66, scope: !3110)
!3410 = !DILocation(line: 902, column: 87, scope: !3110)
!3411 = !DILocation(line: 902, column: 9, scope: !3110)
!3412 = !DILocation(line: 903, column: 15, scope: !3110)
!3413 = !DILocation(line: 903, column: 27, scope: !3110)
!3414 = !DILocation(line: 903, column: 47, scope: !3110)
!3415 = !DILocation(line: 903, column: 66, scope: !3110)
!3416 = !DILocation(line: 903, column: 87, scope: !3110)
!3417 = !DILocation(line: 903, column: 9, scope: !3110)
!3418 = !DILocation(line: 904, column: 17, scope: !3110)
!3419 = !DILocation(line: 904, column: 9, scope: !3110)
!3420 = !DILocation(line: 904, column: 41, scope: !3110)
!3421 = !DILocation(line: 904, column: 38, scope: !3110)
!3422 = !DILocation(line: 905, column: 9, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3110, file: !3, line: 905, column: 9)
!3424 = !DILocation(line: 905, column: 9, scope: !3110)
!3425 = !DILocation(line: 906, column: 9, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3110, file: !3, line: 906, column: 9)
!3427 = !DILocation(line: 906, column: 9, scope: !3110)
!3428 = !DILocation(line: 907, column: 9, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3110, file: !3, line: 907, column: 9)
!3430 = !DILocation(line: 907, column: 9, scope: !3110)
!3431 = !DILocation(line: 908, column: 9, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3110, file: !3, line: 908, column: 9)
!3433 = !DILocation(line: 908, column: 9, scope: !3110)
!3434 = !DILocation(line: 909, column: 5, scope: !3111)
!3435 = !DILocation(line: 909, column: 5, scope: !3110)
!3436 = !DILocation(line: 911, column: 13, scope: !3027)
!3437 = !DILocation(line: 912, column: 16, scope: !3027)
!3438 = !DILocation(line: 912, column: 14, scope: !3027)
!3439 = !DILocation(line: 913, column: 16, scope: !3027)
!3440 = !DILocation(line: 913, column: 14, scope: !3027)
!3441 = !DILocation(line: 914, column: 18, scope: !3027)
!3442 = !DILocation(line: 914, column: 36, scope: !3027)
!3443 = !DILocation(line: 914, column: 34, scope: !3027)
!3444 = !DILocation(line: 914, column: 8, scope: !3027)
!3445 = !DILocation(line: 914, column: 16, scope: !3027)
!3446 = !DILocation(line: 915, column: 1, scope: !3027)
!3447 = distinct !DISubprogram(name: "x264_me_refine_qpel", scope: !3, file: !3, line: 758, type: !3448, scopeLine: 759, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3450)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{null, !86, !1372}
!3450 = !{!3451, !3452, !3453, !3454}
!3451 = !DILocalVariable(name: "h", arg: 1, scope: !3447, file: !3, line: 758, type: !86)
!3452 = !DILocalVariable(name: "m", arg: 2, scope: !3447, file: !3, line: 758, type: !1372)
!3453 = !DILocalVariable(name: "hpel", scope: !3447, file: !3, line: 760, type: !50)
!3454 = !DILocalVariable(name: "qpel", scope: !3447, file: !3, line: 761, type: !50)
!3455 = !DILocation(line: 0, scope: !3447)
!3456 = !DILocation(line: 760, column: 40, scope: !3447)
!3457 = !DILocation(line: 760, column: 16, scope: !3447)
!3458 = !DILocation(line: 761, column: 16, scope: !3447)
!3459 = !DILocation(line: 763, column: 12, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 763, column: 9)
!3461 = !DILocation(line: 763, column: 20, scope: !3460)
!3462 = !DILocation(line: 763, column: 9, scope: !3447)
!3463 = !DILocation(line: 764, column: 23, scope: !3460)
!3464 = !DILocation(line: 764, column: 12, scope: !3460)
!3465 = !DILocation(line: 764, column: 17, scope: !3460)
!3466 = !DILocation(line: 764, column: 9, scope: !3460)
!3467 = !DILocation(line: 766, column: 5, scope: !3447)
!3468 = !DILocation(line: 767, column: 1, scope: !3447)
!3469 = distinct !DISubprogram(name: "x264_me_refine_qpel_refdupe", scope: !3, file: !3, line: 769, type: !3470, scopeLine: 770, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3472)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{null, !86, !1372, !638}
!3472 = !{!3473, !3474, !3475}
!3473 = !DILocalVariable(name: "h", arg: 1, scope: !3469, file: !3, line: 769, type: !86)
!3474 = !DILocalVariable(name: "m", arg: 2, scope: !3469, file: !3, line: 769, type: !1372)
!3475 = !DILocalVariable(name: "p_halfpel_thresh", arg: 3, scope: !3469, file: !3, line: 769, type: !638)
!3476 = !DILocation(line: 0, scope: !3469)
!3477 = !DILocation(line: 771, column: 29, scope: !3469)
!3478 = !DILocation(line: 771, column: 5, scope: !3469)
!3479 = !DILocation(line: 772, column: 1, scope: !3469)
!3480 = distinct !DISubprogram(name: "x264_me_refine_bidir_satd", scope: !3, file: !3, line: 1081, type: !3481, scopeLine: 1082, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3483)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{null, !86, !1372, !1372, !50}
!3483 = !{!3484, !3485, !3486, !3487}
!3484 = !DILocalVariable(name: "h", arg: 1, scope: !3480, file: !3, line: 1081, type: !86)
!3485 = !DILocalVariable(name: "m0", arg: 2, scope: !3480, file: !3, line: 1081, type: !1372)
!3486 = !DILocalVariable(name: "m1", arg: 3, scope: !3480, file: !3, line: 1081, type: !1372)
!3487 = !DILocalVariable(name: "i_weight", arg: 4, scope: !3480, file: !3, line: 1081, type: !50)
!3488 = !DILocation(line: 0, scope: !3480)
!3489 = !DILocation(line: 1083, column: 5, scope: !3480)
!3490 = !DILocation(line: 1084, column: 1, scope: !3480)
!3491 = distinct !DIAssignID()
!3492 = !DILocation(line: 0, scope: !1719)
!3493 = distinct !DIAssignID()
!3494 = distinct !DIAssignID()
!3495 = distinct !DIAssignID()
!3496 = distinct !DIAssignID()
!3497 = distinct !DIAssignID()
!3498 = !DILocation(line: 940, column: 38, scope: !1719)
!3499 = !DILocation(line: 940, column: 57, scope: !1719)
!3500 = !DILocation(line: 940, column: 44, scope: !1719)
!3501 = !DILocation(line: 940, column: 26, scope: !1719)
!3502 = !DILocation(line: 941, column: 26, scope: !1719)
!3503 = !DILocation(line: 942, column: 29, scope: !1719)
!3504 = !DILocation(line: 943, column: 20, scope: !1719)
!3505 = !DILocation(line: 943, column: 45, scope: !1719)
!3506 = !DILocation(line: 944, column: 45, scope: !1719)
!3507 = !DILocation(line: 945, column: 5, scope: !1719)
!3508 = !DILocation(line: 946, column: 5, scope: !1719)
!3509 = !DILocation(line: 947, column: 5, scope: !1719)
!3510 = !DILocation(line: 948, column: 5, scope: !1719)
!3511 = !DILocation(line: 949, column: 32, scope: !1719)
!3512 = !DILocation(line: 949, column: 22, scope: !1719)
!3513 = !DILocation(line: 949, column: 45, scope: !1719)
!3514 = !DILocation(line: 949, column: 51, scope: !1719)
!3515 = !DILocation(line: 949, column: 67, scope: !1719)
!3516 = !DILocation(line: 949, column: 70, scope: !1719)
!3517 = !DILocation(line: 949, column: 63, scope: !1719)
!3518 = !DILocation(line: 950, column: 22, scope: !1719)
!3519 = !DILocation(line: 950, column: 51, scope: !1719)
!3520 = !DILocation(line: 950, column: 70, scope: !1719)
!3521 = !DILocation(line: 950, column: 63, scope: !1719)
!3522 = !DILocation(line: 951, column: 22, scope: !1719)
!3523 = !DILocation(line: 952, column: 34, scope: !1719)
!3524 = !DILocation(line: 952, column: 22, scope: !1719)
!3525 = !DILocation(line: 953, column: 22, scope: !1719)
!3526 = !DILocation(line: 954, column: 35, scope: !1719)
!3527 = !DILocation(line: 954, column: 48, scope: !1719)
!3528 = !DILocation(line: 954, column: 29, scope: !1719)
!3529 = !DILocation(line: 954, column: 64, scope: !1719)
!3530 = !DILocation(line: 954, column: 75, scope: !1719)
!3531 = !DILocation(line: 954, column: 78, scope: !1719)
!3532 = !DILocation(line: 955, column: 48, scope: !1719)
!3533 = !DILocation(line: 955, column: 29, scope: !1719)
!3534 = !DILocation(line: 955, column: 64, scope: !1719)
!3535 = !DILocation(line: 955, column: 75, scope: !1719)
!3536 = !DILocation(line: 955, column: 78, scope: !1719)
!3537 = !DILocation(line: 956, column: 5, scope: !1719)
!3538 = !DILocation(line: 957, column: 20, scope: !1719)
!3539 = !DILocation(line: 957, column: 16, scope: !1719)
!3540 = !DILocation(line: 958, column: 16, scope: !1719)
!3541 = !DILocation(line: 959, column: 20, scope: !1719)
!3542 = !DILocation(line: 959, column: 16, scope: !1719)
!3543 = !DILocation(line: 960, column: 16, scope: !1719)
!3544 = !DILocation(line: 966, column: 5, scope: !1719)
!3545 = !DILocation(line: 986, column: 22, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 986, column: 9)
!3547 = !DILocation(line: 986, column: 16, scope: !3546)
!3548 = !DILocation(line: 986, column: 37, scope: !3546)
!3549 = !DILocation(line: 986, column: 14, scope: !3546)
!3550 = !DILocation(line: 986, column: 41, scope: !3546)
!3551 = !DILocation(line: 987, column: 22, scope: !3546)
!3552 = !DILocation(line: 987, column: 16, scope: !3546)
!3553 = !DILocation(line: 987, column: 37, scope: !3546)
!3554 = !DILocation(line: 987, column: 14, scope: !3546)
!3555 = !DILocation(line: 987, column: 41, scope: !3546)
!3556 = !DILocation(line: 988, column: 16, scope: !3546)
!3557 = !DILocation(line: 988, column: 37, scope: !3546)
!3558 = !DILocation(line: 988, column: 14, scope: !3546)
!3559 = !DILocation(line: 988, column: 41, scope: !3546)
!3560 = !DILocation(line: 989, column: 16, scope: !3546)
!3561 = !DILocation(line: 989, column: 37, scope: !3546)
!3562 = !DILocation(line: 989, column: 14, scope: !3546)
!3563 = !DILocation(line: 989, column: 41, scope: !3546)
!3564 = !DILocation(line: 992, column: 9, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 992, column: 9)
!3566 = !DILocation(line: 992, column: 12, scope: !3565)
!3567 = !DILocation(line: 992, column: 27, scope: !3565)
!3568 = !DILocation(line: 992, column: 42, scope: !3565)
!3569 = !DILocation(line: 994, column: 44, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3565, file: !3, line: 993, column: 5)
!3571 = !DILocation(line: 994, column: 53, scope: !3570)
!3572 = !DILocation(line: 994, column: 9, scope: !3570)
!3573 = !DILocation(line: 995, column: 53, scope: !3570)
!3574 = !DILocation(line: 995, column: 9, scope: !3570)
!3575 = !DILocation(line: 996, column: 5, scope: !3570)
!3576 = !DILocation(line: 998, column: 38, scope: !1719)
!3577 = !DILocation(line: 998, column: 54, scope: !1719)
!3578 = !DILocation(line: 998, column: 50, scope: !1719)
!3579 = !DILocation(line: 998, column: 48, scope: !1719)
!3580 = !DILocation(line: 999, column: 50, scope: !1719)
!3581 = !DILocation(line: 999, column: 48, scope: !1719)
!3582 = !DILocation(line: 1000, column: 38, scope: !1719)
!3583 = !DILocation(line: 1000, column: 54, scope: !1719)
!3584 = !DILocation(line: 1000, column: 50, scope: !1719)
!3585 = !DILocation(line: 1000, column: 48, scope: !1719)
!3586 = !DILocation(line: 1001, column: 50, scope: !1719)
!3587 = !DILocation(line: 1001, column: 48, scope: !1719)
!3588 = !DILocation(line: 1003, column: 11, scope: !1719)
!3589 = !DILocation(line: 1003, column: 5, scope: !1719)
!3590 = !DILocation(line: 0, scope: !1771)
!3591 = !DILocation(line: 1005, column: 5, scope: !1771)
!3592 = !DILocation(line: 0, scope: !1773)
!3593 = !DILocation(line: 1012, column: 13, scope: !1777)
!3594 = !DILocation(line: 0, scope: !1776)
!3595 = !DILocation(line: 1012, column: 13, scope: !1773)
!3596 = !DILocation(line: 1013, column: 13, scope: !1776)
!3597 = !DILocation(line: 0, scope: !1779)
!3598 = !DILocation(line: 1014, column: 17, scope: !1779)
!3599 = !DILocation(line: 1014, column: 17, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 1014, column: 17)
!3601 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 1014, column: 17)
!3602 = !DILocation(line: 1013, column: 52, scope: !1780)
!3603 = !DILocation(line: 1013, column: 46, scope: !1780)
!3604 = distinct !{!3604, !3596, !3605}
!3605 = !DILocation(line: 1014, column: 17, scope: !1776)
!3606 = !DILocation(line: 1016, column: 13, scope: !1786)
!3607 = !DILocation(line: 0, scope: !1785)
!3608 = !DILocation(line: 1016, column: 13, scope: !1773)
!3609 = !DILocation(line: 1017, column: 13, scope: !1785)
!3610 = !DILocation(line: 0, scope: !1788)
!3611 = !DILocation(line: 1018, column: 17, scope: !1788)
!3612 = !DILocation(line: 1018, column: 17, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3614, file: !3, line: 1018, column: 17)
!3614 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 1018, column: 17)
!3615 = !DILocation(line: 1017, column: 52, scope: !1789)
!3616 = !DILocation(line: 1017, column: 46, scope: !1789)
!3617 = distinct !{!3617, !3609, !3618}
!3618 = !DILocation(line: 1018, column: 17, scope: !1785)
!3619 = !DILocation(line: 1020, column: 23, scope: !1794)
!3620 = !DILocation(line: 0, scope: !1794)
!3621 = !DILocation(line: 1020, column: 9, scope: !1794)
!3622 = !DILocation(line: 1052, column: 14, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 1052, column: 13)
!3624 = !DILocation(line: 1052, column: 13, scope: !1773)
!3625 = !DILocation(line: 1022, column: 23, scope: !1796)
!3626 = !DILocation(line: 1022, column: 35, scope: !1796)
!3627 = !DILocation(line: 0, scope: !1796)
!3628 = !DILocation(line: 1023, column: 23, scope: !1796)
!3629 = !DILocation(line: 1023, column: 35, scope: !1796)
!3630 = !DILocation(line: 1024, column: 23, scope: !1796)
!3631 = !DILocation(line: 1024, column: 35, scope: !1796)
!3632 = !DILocation(line: 1025, column: 23, scope: !1796)
!3633 = !DILocation(line: 1025, column: 35, scope: !1796)
!3634 = !DILocation(line: 1026, column: 23, scope: !1803)
!3635 = !DILocation(line: 1030, column: 65, scope: !1802)
!3636 = !DILocation(line: 1030, column: 57, scope: !1802)
!3637 = !DILocation(line: 1030, column: 30, scope: !1802)
!3638 = !DILocation(line: 1030, column: 17, scope: !1802)
!3639 = !DILocation(line: 1030, column: 39, scope: !1802)
!3640 = !DILocation(line: 1030, column: 48, scope: !1802)
!3641 = !DILocation(line: 1026, column: 42, scope: !1803)
!3642 = !DILocation(line: 1026, column: 29, scope: !1803)
!3643 = !DILocation(line: 1026, column: 51, scope: !1803)
!3644 = !DILocation(line: 1026, column: 60, scope: !1803)
!3645 = !DILocation(line: 1026, column: 76, scope: !1803)
!3646 = !DILocation(line: 1026, column: 68, scope: !1803)
!3647 = !DILocation(line: 1026, column: 64, scope: !1803)
!3648 = !DILocation(line: 1026, column: 17, scope: !1796)
!3649 = !DILocation(line: 1028, column: 32, scope: !1802)
!3650 = !DILocation(line: 1028, column: 31, scope: !1802)
!3651 = !DILocation(line: 1028, column: 28, scope: !1802)
!3652 = !DILocation(line: 1028, column: 46, scope: !1802)
!3653 = !DILocation(line: 1028, column: 44, scope: !1802)
!3654 = !DILocation(line: 0, scope: !1802)
!3655 = !DILocation(line: 1029, column: 32, scope: !1802)
!3656 = !DILocation(line: 1029, column: 31, scope: !1802)
!3657 = !DILocation(line: 1029, column: 28, scope: !1802)
!3658 = !DILocation(line: 1029, column: 46, scope: !1802)
!3659 = !DILocation(line: 1029, column: 44, scope: !1802)
!3660 = !DILocation(line: 1030, column: 52, scope: !1802)
!3661 = !DILocation(line: 1031, column: 17, scope: !1802)
!3662 = !DILocation(line: 1031, column: 55, scope: !1802)
!3663 = !DILocation(line: 1031, column: 67, scope: !1802)
!3664 = !DILocation(line: 1031, column: 82, scope: !1802)
!3665 = !DILocation(line: 1031, column: 94, scope: !1802)
!3666 = !DILocation(line: 1032, column: 28, scope: !1802)
!3667 = !DILocation(line: 1032, column: 52, scope: !1802)
!3668 = !DILocation(line: 1033, column: 28, scope: !1802)
!3669 = !DILocation(line: 1033, column: 26, scope: !1802)
!3670 = !DILocation(line: 1033, column: 46, scope: !1802)
!3671 = !DILocation(line: 1033, column: 44, scope: !1802)
!3672 = !DILocation(line: 1033, column: 64, scope: !1802)
!3673 = !DILocation(line: 1033, column: 62, scope: !1802)
!3674 = !DILocation(line: 1033, column: 82, scope: !1802)
!3675 = !DILocation(line: 1033, column: 80, scope: !1802)
!3676 = !DILocation(line: 1034, column: 21, scope: !1802)
!3677 = !DILocation(line: 1036, column: 38, scope: !1808)
!3678 = !DILocation(line: 1036, column: 40, scope: !1808)
!3679 = !DILocation(line: 1036, column: 30, scope: !1808)
!3680 = !DILocation(line: 1036, column: 25, scope: !1809)
!3681 = !DILocation(line: 1038, column: 33, scope: !1807)
!3682 = !DILocation(line: 0, scope: !1908, inlinedAt: !3683)
!3683 = distinct !DILocation(line: 1039, column: 44, scope: !1807)
!3684 = !DILocation(line: 345, column: 13, scope: !1908, inlinedAt: !3683)
!3685 = !DILocation(line: 345, column: 26, scope: !1908, inlinedAt: !3683)
!3686 = !DILocation(line: 345, column: 22, scope: !1908, inlinedAt: !3683)
!3687 = !DILocation(line: 1039, column: 42, scope: !1807)
!3688 = !DILocation(line: 0, scope: !1908, inlinedAt: !3689)
!3689 = distinct !DILocation(line: 1040, column: 44, scope: !1807)
!3690 = !DILocation(line: 345, column: 13, scope: !1908, inlinedAt: !3689)
!3691 = !DILocation(line: 345, column: 26, scope: !1908, inlinedAt: !3689)
!3692 = !DILocation(line: 345, column: 22, scope: !1908, inlinedAt: !3689)
!3693 = !DILocation(line: 1040, column: 42, scope: !1807)
!3694 = !DILocation(line: 1041, column: 25, scope: !1807)
!3695 = !DILocation(line: 1041, column: 66, scope: !1807)
!3696 = !DILocation(line: 1041, column: 86, scope: !1807)
!3697 = !DILocation(line: 1042, column: 25, scope: !1807)
!3698 = !DILocation(line: 1042, column: 66, scope: !1807)
!3699 = !DILocation(line: 1042, column: 86, scope: !1807)
!3700 = !DILocation(line: 1043, column: 86, scope: !1807)
!3701 = !DILocation(line: 1043, column: 43, scope: !1807)
!3702 = !DILocation(line: 0, scope: !1807)
!3703 = !DILocation(line: 1044, column: 25, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !1807, file: !3, line: 1044, column: 25)
!3705 = !DILocation(line: 1044, column: 25, scope: !1807)
!3706 = !DILocation(line: 1045, column: 21, scope: !1807)
!3707 = !DILocation(line: 1048, column: 21, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 1048, column: 21)
!3709 = !DILocation(line: 1048, column: 21, scope: !1810)
!3710 = !DILocation(line: 1020, column: 39, scope: !1797)
!3711 = !DILocation(line: 1020, column: 32, scope: !1797)
!3712 = distinct !{!3712, !3621, !3713}
!3713 = !DILocation(line: 1050, column: 9, scope: !1794)
!3714 = !DILocation(line: 1055, column: 17, scope: !1773)
!3715 = !DILocation(line: 1055, column: 14, scope: !1773)
!3716 = !DILocation(line: 1056, column: 17, scope: !1773)
!3717 = !DILocation(line: 1056, column: 14, scope: !1773)
!3718 = !DILocation(line: 1057, column: 17, scope: !1773)
!3719 = !DILocation(line: 1057, column: 14, scope: !1773)
!3720 = !DILocation(line: 1058, column: 17, scope: !1773)
!3721 = !DILocation(line: 1058, column: 14, scope: !1773)
!3722 = !DILocation(line: 1060, column: 20, scope: !1773)
!3723 = !DILocation(line: 1061, column: 20, scope: !1773)
!3724 = !DILocation(line: 1005, column: 38, scope: !1774)
!3725 = !DILocation(line: 1005, column: 29, scope: !1774)
!3726 = distinct !{!3726, !3591, !3727}
!3727 = !DILocation(line: 1062, column: 5, scope: !1771)
!3728 = !DILocation(line: 1064, column: 9, scope: !1719)
!3729 = !DILocation(line: 1066, column: 45, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3731, file: !3, line: 1065, column: 5)
!3731 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 1064, column: 9)
!3732 = !DILocation(line: 1066, column: 62, scope: !3730)
!3733 = !DILocation(line: 1066, column: 69, scope: !3730)
!3734 = !DILocation(line: 0, scope: !1908, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 1066, column: 77, scope: !3730)
!3736 = !DILocation(line: 345, column: 13, scope: !1908, inlinedAt: !3735)
!3737 = !DILocation(line: 345, column: 26, scope: !1908, inlinedAt: !3735)
!3738 = !DILocation(line: 345, column: 22, scope: !1908, inlinedAt: !3735)
!3739 = !DILocalVariable(name: "h", arg: 1, scope: !3740, file: !3741, line: 110, type: !86)
!3740 = distinct !DISubprogram(name: "x264_macroblock_cache_mv", scope: !3741, file: !3741, line: 110, type: !3742, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3744)
!3741 = !DIFile(filename: "x264_src/common/rectangle.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d042158b8d3023ac6d42be3fb9b0d384")
!3742 = !DISubroutineType(types: !3743)
!3743 = !{null, !86, !50, !50, !50, !50, !50, !26}
!3744 = !{!3739, !3745, !3746, !3747, !3748, !3749, !3750, !3751}
!3745 = !DILocalVariable(name: "x", arg: 2, scope: !3740, file: !3741, line: 110, type: !50)
!3746 = !DILocalVariable(name: "y", arg: 3, scope: !3740, file: !3741, line: 110, type: !50)
!3747 = !DILocalVariable(name: "width", arg: 4, scope: !3740, file: !3741, line: 110, type: !50)
!3748 = !DILocalVariable(name: "height", arg: 5, scope: !3740, file: !3741, line: 110, type: !50)
!3749 = !DILocalVariable(name: "i_list", arg: 6, scope: !3740, file: !3741, line: 110, type: !50)
!3750 = !DILocalVariable(name: "mv", arg: 7, scope: !3740, file: !3741, line: 110, type: !26)
!3751 = !DILocalVariable(name: "mv_cache", scope: !3740, file: !3741, line: 112, type: !154)
!3752 = !DILocation(line: 0, scope: !3740, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 1066, column: 9, scope: !3730)
!3754 = !DILocation(line: 112, column: 62, scope: !3740, inlinedAt: !3753)
!3755 = !DILocation(line: 112, column: 60, scope: !3740, inlinedAt: !3753)
!3756 = !DILocation(line: 112, column: 23, scope: !3740, inlinedAt: !3753)
!3757 = !DILocation(line: 116, column: 52, scope: !3758, inlinedAt: !3753)
!3758 = distinct !DILexicalBlock(scope: !3740, file: !3741, line: 113, column: 9)
!3759 = !DILocalVariable(name: "dst", arg: 1, scope: !3760, file: !3741, line: 22, type: !154)
!3760 = distinct !DISubprogram(name: "x264_macroblock_cache_rect", scope: !3741, file: !3741, line: 22, type: !3761, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3763)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{null, !154, !50, !50, !50, !26}
!3763 = !{!3759, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771}
!3764 = !DILocalVariable(name: "w", arg: 2, scope: !3760, file: !3741, line: 22, type: !50)
!3765 = !DILocalVariable(name: "h", arg: 3, scope: !3760, file: !3741, line: 22, type: !50)
!3766 = !DILocalVariable(name: "s", arg: 4, scope: !3760, file: !3741, line: 22, type: !50)
!3767 = !DILocalVariable(name: "v", arg: 5, scope: !3760, file: !3741, line: 22, type: !26)
!3768 = !DILocalVariable(name: "d", scope: !3760, file: !3741, line: 24, type: !282)
!3769 = !DILocalVariable(name: "v2", scope: !3760, file: !3741, line: 25, type: !32)
!3770 = !DILocalVariable(name: "v4", scope: !3760, file: !3741, line: 26, type: !26)
!3771 = !DILocalVariable(name: "v8", scope: !3760, file: !3741, line: 27, type: !62)
!3772 = !DILocation(line: 0, scope: !3760, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 116, column: 9, scope: !3758, inlinedAt: !3753)
!3774 = !DILocation(line: 27, column: 19, scope: !3760, inlinedAt: !3773)
!3775 = !DILocation(line: 27, column: 22, scope: !3760, inlinedAt: !3773)
!3776 = !DILocation(line: 30, column: 9, scope: !3760, inlinedAt: !3773)
!3777 = !DILocation(line: 79, column: 13, scope: !3778, inlinedAt: !3773)
!3778 = distinct !DILexicalBlock(scope: !3779, file: !3741, line: 78, column: 9)
!3779 = distinct !DILexicalBlock(scope: !3780, file: !3741, line: 77, column: 13)
!3780 = distinct !DILexicalBlock(scope: !3781, file: !3741, line: 74, column: 5)
!3781 = distinct !DILexicalBlock(scope: !3782, file: !3741, line: 73, column: 14)
!3782 = distinct !DILexicalBlock(scope: !3783, file: !3741, line: 48, column: 14)
!3783 = distinct !DILexicalBlock(scope: !3784, file: !3741, line: 39, column: 14)
!3784 = distinct !DILexicalBlock(scope: !3760, file: !3741, line: 30, column: 9)
!3785 = !DILocation(line: 81, column: 32, scope: !3786, inlinedAt: !3773)
!3786 = distinct !DILexicalBlock(scope: !3778, file: !3741, line: 80, column: 13)
!3787 = !DILocation(line: 82, column: 17, scope: !3786, inlinedAt: !3773)
!3788 = !DILocation(line: 82, column: 32, scope: !3786, inlinedAt: !3773)
!3789 = !DILocation(line: 83, column: 17, scope: !3786, inlinedAt: !3773)
!3790 = !DILocation(line: 83, column: 32, scope: !3786, inlinedAt: !3773)
!3791 = !DILocation(line: 84, column: 17, scope: !3786, inlinedAt: !3773)
!3792 = !DILocation(line: 84, column: 32, scope: !3786, inlinedAt: !3773)
!3793 = !DILocation(line: 85, column: 19, scope: !3786, inlinedAt: !3773)
!3794 = !DILocation(line: 86, column: 19, scope: !3786, inlinedAt: !3773)
!3795 = !DILocation(line: 87, column: 13, scope: !3786, inlinedAt: !3773)
!3796 = distinct !{!3796, !2933}
!3797 = distinct !{!3797, !3777, !3798, !2010, !2011}
!3798 = !DILocation(line: 87, column: 24, scope: !3778, inlinedAt: !3773)
!3799 = !DILocation(line: 41, column: 22, scope: !3800, inlinedAt: !3773)
!3800 = distinct !DILexicalBlock(scope: !3783, file: !3741, line: 40, column: 5)
!3801 = !DILocation(line: 42, column: 15, scope: !3802, inlinedAt: !3773)
!3802 = distinct !DILexicalBlock(scope: !3800, file: !3741, line: 42, column: 13)
!3803 = !DILocation(line: 42, column: 13, scope: !3800, inlinedAt: !3773)
!3804 = !DILocation(line: 43, column: 9, scope: !3800, inlinedAt: !3773)
!3805 = !DILocation(line: 43, column: 22, scope: !3800, inlinedAt: !3773)
!3806 = !DILocation(line: 44, column: 15, scope: !3807, inlinedAt: !3773)
!3807 = distinct !DILexicalBlock(scope: !3800, file: !3741, line: 44, column: 13)
!3808 = !DILocation(line: 44, column: 13, scope: !3800, inlinedAt: !3773)
!3809 = !DILocation(line: 45, column: 9, scope: !3800, inlinedAt: !3773)
!3810 = !DILocation(line: 45, column: 22, scope: !3800, inlinedAt: !3773)
!3811 = !DILocation(line: 46, column: 9, scope: !3800, inlinedAt: !3773)
!3812 = !DILocation(line: 46, column: 22, scope: !3800, inlinedAt: !3773)
!3813 = !DILocation(line: 47, column: 5, scope: !3800, inlinedAt: !3773)
!3814 = !DILocation(line: 52, column: 26, scope: !3815, inlinedAt: !3773)
!3815 = distinct !DILexicalBlock(scope: !3816, file: !3741, line: 51, column: 9)
!3816 = distinct !DILexicalBlock(scope: !3817, file: !3741, line: 50, column: 13)
!3817 = distinct !DILexicalBlock(scope: !3782, file: !3741, line: 49, column: 5)
!3818 = !DILocation(line: 53, column: 19, scope: !3819, inlinedAt: !3773)
!3819 = distinct !DILexicalBlock(scope: !3815, file: !3741, line: 53, column: 17)
!3820 = !DILocation(line: 53, column: 17, scope: !3815, inlinedAt: !3773)
!3821 = !DILocation(line: 54, column: 13, scope: !3815, inlinedAt: !3773)
!3822 = !DILocation(line: 54, column: 26, scope: !3815, inlinedAt: !3773)
!3823 = !DILocation(line: 55, column: 19, scope: !3824, inlinedAt: !3773)
!3824 = distinct !DILexicalBlock(scope: !3815, file: !3741, line: 55, column: 17)
!3825 = !DILocation(line: 55, column: 17, scope: !3815, inlinedAt: !3773)
!3826 = !DILocation(line: 56, column: 13, scope: !3815, inlinedAt: !3773)
!3827 = !DILocation(line: 56, column: 26, scope: !3815, inlinedAt: !3773)
!3828 = !DILocation(line: 57, column: 13, scope: !3815, inlinedAt: !3773)
!3829 = !DILocation(line: 57, column: 26, scope: !3815, inlinedAt: !3773)
!3830 = !DILocation(line: 72, column: 5, scope: !3817, inlinedAt: !3773)
!3831 = distinct !{!3831, !3777, !3798, !2010}
!3832 = !DILocation(line: 1067, column: 27, scope: !3730)
!3833 = !DILocation(line: 1067, column: 64, scope: !3730)
!3834 = !DILocalVariable(name: "a", arg: 1, scope: !3835, file: !1821, line: 324, type: !50)
!3835 = distinct !DISubprogram(name: "pack8to16", scope: !1821, file: !1821, line: 324, type: !1909, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3836)
!3836 = !{!3834, !3837}
!3837 = !DILocalVariable(name: "b", arg: 2, scope: !3835, file: !1821, line: 324, type: !50)
!3838 = !DILocation(line: 0, scope: !3835, inlinedAt: !3839)
!3839 = distinct !DILocation(line: 1067, column: 16, scope: !3730)
!3840 = !DILocation(line: 329, column: 17, scope: !3835, inlinedAt: !3839)
!3841 = !DILocation(line: 329, column: 13, scope: !3835, inlinedAt: !3839)
!3842 = !DILocation(line: 1067, column: 16, scope: !3730)
!3843 = !DILocalVariable(name: "h", arg: 1, scope: !3844, file: !3741, line: 118, type: !86)
!3844 = distinct !DISubprogram(name: "x264_macroblock_cache_mvd", scope: !3741, file: !3741, line: 118, type: !3845, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3847)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{null, !86, !50, !50, !50, !50, !50, !32}
!3847 = !{!3843, !3848, !3849, !3850, !3851, !3852, !3853, !3854}
!3848 = !DILocalVariable(name: "x", arg: 2, scope: !3844, file: !3741, line: 118, type: !50)
!3849 = !DILocalVariable(name: "y", arg: 3, scope: !3844, file: !3741, line: 118, type: !50)
!3850 = !DILocalVariable(name: "width", arg: 4, scope: !3844, file: !3741, line: 118, type: !50)
!3851 = !DILocalVariable(name: "height", arg: 5, scope: !3844, file: !3741, line: 118, type: !50)
!3852 = !DILocalVariable(name: "i_list", arg: 6, scope: !3844, file: !3741, line: 118, type: !50)
!3853 = !DILocalVariable(name: "mvd", arg: 7, scope: !3844, file: !3741, line: 118, type: !32)
!3854 = !DILocalVariable(name: "mvd_cache", scope: !3844, file: !3741, line: 120, type: !154)
!3855 = !DILocation(line: 0, scope: !3844, inlinedAt: !3856)
!3856 = distinct !DILocation(line: 1068, column: 9, scope: !3730)
!3857 = !DILocation(line: 120, column: 36, scope: !3844, inlinedAt: !3856)
!3858 = !DILocation(line: 120, column: 24, scope: !3844, inlinedAt: !3856)
!3859 = !DILocation(line: 0, scope: !3760, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 124, column: 9, scope: !3861, inlinedAt: !3856)
!3861 = distinct !DILexicalBlock(scope: !3844, file: !3741, line: 121, column: 9)
!3862 = !DILocation(line: 26, column: 19, scope: !3760, inlinedAt: !3860)
!3863 = !DILocation(line: 27, column: 19, scope: !3760, inlinedAt: !3860)
!3864 = !DILocation(line: 27, column: 22, scope: !3760, inlinedAt: !3860)
!3865 = !DILocation(line: 30, column: 9, scope: !3760, inlinedAt: !3860)
!3866 = !DILocation(line: 79, column: 13, scope: !3778, inlinedAt: !3860)
!3867 = !DILocation(line: 81, column: 32, scope: !3786, inlinedAt: !3860)
!3868 = !DILocation(line: 82, column: 17, scope: !3786, inlinedAt: !3860)
!3869 = !DILocation(line: 82, column: 32, scope: !3786, inlinedAt: !3860)
!3870 = !DILocation(line: 83, column: 17, scope: !3786, inlinedAt: !3860)
!3871 = !DILocation(line: 83, column: 32, scope: !3786, inlinedAt: !3860)
!3872 = !DILocation(line: 84, column: 17, scope: !3786, inlinedAt: !3860)
!3873 = !DILocation(line: 84, column: 32, scope: !3786, inlinedAt: !3860)
!3874 = !DILocation(line: 85, column: 19, scope: !3786, inlinedAt: !3860)
!3875 = !DILocation(line: 86, column: 19, scope: !3786, inlinedAt: !3860)
!3876 = !DILocation(line: 87, column: 13, scope: !3786, inlinedAt: !3860)
!3877 = distinct !{!3877, !2933}
!3878 = distinct !{!3878, !3866, !3879, !2010, !2011}
!3879 = !DILocation(line: 87, column: 24, scope: !3778, inlinedAt: !3860)
!3880 = !DILocation(line: 32, column: 22, scope: !3881, inlinedAt: !3860)
!3881 = distinct !DILexicalBlock(scope: !3784, file: !3741, line: 31, column: 5)
!3882 = !DILocation(line: 33, column: 15, scope: !3883, inlinedAt: !3860)
!3883 = distinct !DILexicalBlock(scope: !3881, file: !3741, line: 33, column: 13)
!3884 = !DILocation(line: 33, column: 13, scope: !3881, inlinedAt: !3860)
!3885 = !DILocation(line: 34, column: 9, scope: !3881, inlinedAt: !3860)
!3886 = !DILocation(line: 34, column: 22, scope: !3881, inlinedAt: !3860)
!3887 = !DILocation(line: 35, column: 15, scope: !3888, inlinedAt: !3860)
!3888 = distinct !DILexicalBlock(scope: !3881, file: !3741, line: 35, column: 13)
!3889 = !DILocation(line: 35, column: 13, scope: !3881, inlinedAt: !3860)
!3890 = !DILocation(line: 36, column: 9, scope: !3881, inlinedAt: !3860)
!3891 = !DILocation(line: 36, column: 22, scope: !3881, inlinedAt: !3860)
!3892 = !DILocation(line: 37, column: 9, scope: !3881, inlinedAt: !3860)
!3893 = !DILocation(line: 37, column: 22, scope: !3881, inlinedAt: !3860)
!3894 = !DILocation(line: 38, column: 5, scope: !3881, inlinedAt: !3860)
!3895 = !DILocation(line: 41, column: 22, scope: !3800, inlinedAt: !3860)
!3896 = !DILocation(line: 42, column: 15, scope: !3802, inlinedAt: !3860)
!3897 = !DILocation(line: 42, column: 13, scope: !3800, inlinedAt: !3860)
!3898 = !DILocation(line: 43, column: 9, scope: !3800, inlinedAt: !3860)
!3899 = !DILocation(line: 43, column: 22, scope: !3800, inlinedAt: !3860)
!3900 = !DILocation(line: 44, column: 15, scope: !3807, inlinedAt: !3860)
!3901 = !DILocation(line: 44, column: 13, scope: !3800, inlinedAt: !3860)
!3902 = !DILocation(line: 45, column: 9, scope: !3800, inlinedAt: !3860)
!3903 = !DILocation(line: 45, column: 22, scope: !3800, inlinedAt: !3860)
!3904 = !DILocation(line: 46, column: 9, scope: !3800, inlinedAt: !3860)
!3905 = !DILocation(line: 46, column: 22, scope: !3800, inlinedAt: !3860)
!3906 = !DILocation(line: 47, column: 5, scope: !3800, inlinedAt: !3860)
!3907 = !DILocation(line: 52, column: 26, scope: !3815, inlinedAt: !3860)
!3908 = !DILocation(line: 53, column: 19, scope: !3819, inlinedAt: !3860)
!3909 = !DILocation(line: 53, column: 17, scope: !3815, inlinedAt: !3860)
!3910 = !DILocation(line: 54, column: 13, scope: !3815, inlinedAt: !3860)
!3911 = !DILocation(line: 54, column: 26, scope: !3815, inlinedAt: !3860)
!3912 = !DILocation(line: 55, column: 19, scope: !3824, inlinedAt: !3860)
!3913 = !DILocation(line: 55, column: 17, scope: !3815, inlinedAt: !3860)
!3914 = !DILocation(line: 56, column: 13, scope: !3815, inlinedAt: !3860)
!3915 = !DILocation(line: 56, column: 26, scope: !3815, inlinedAt: !3860)
!3916 = !DILocation(line: 57, column: 13, scope: !3815, inlinedAt: !3860)
!3917 = !DILocation(line: 57, column: 26, scope: !3815, inlinedAt: !3860)
!3918 = !DILocation(line: 72, column: 5, scope: !3817, inlinedAt: !3860)
!3919 = distinct !{!3919, !3866, !3879, !2010}
!3920 = !DILocation(line: 0, scope: !1908, inlinedAt: !3921)
!3921 = distinct !DILocation(line: 1070, column: 77, scope: !3730)
!3922 = !DILocation(line: 345, column: 13, scope: !1908, inlinedAt: !3921)
!3923 = !DILocation(line: 345, column: 26, scope: !1908, inlinedAt: !3921)
!3924 = !DILocation(line: 345, column: 22, scope: !1908, inlinedAt: !3921)
!3925 = !DILocation(line: 0, scope: !3740, inlinedAt: !3926)
!3926 = distinct !DILocation(line: 1070, column: 9, scope: !3730)
!3927 = !DILocation(line: 112, column: 23, scope: !3740, inlinedAt: !3926)
!3928 = !DILocation(line: 0, scope: !3760, inlinedAt: !3929)
!3929 = distinct !DILocation(line: 116, column: 9, scope: !3758, inlinedAt: !3926)
!3930 = !DILocation(line: 27, column: 19, scope: !3760, inlinedAt: !3929)
!3931 = !DILocation(line: 27, column: 22, scope: !3760, inlinedAt: !3929)
!3932 = !DILocation(line: 30, column: 9, scope: !3760, inlinedAt: !3929)
!3933 = !DILocation(line: 79, column: 13, scope: !3778, inlinedAt: !3929)
!3934 = !DILocation(line: 81, column: 32, scope: !3786, inlinedAt: !3929)
!3935 = !DILocation(line: 82, column: 17, scope: !3786, inlinedAt: !3929)
!3936 = !DILocation(line: 82, column: 32, scope: !3786, inlinedAt: !3929)
!3937 = !DILocation(line: 83, column: 17, scope: !3786, inlinedAt: !3929)
!3938 = !DILocation(line: 83, column: 32, scope: !3786, inlinedAt: !3929)
!3939 = !DILocation(line: 84, column: 17, scope: !3786, inlinedAt: !3929)
!3940 = !DILocation(line: 84, column: 32, scope: !3786, inlinedAt: !3929)
!3941 = !DILocation(line: 85, column: 19, scope: !3786, inlinedAt: !3929)
!3942 = !DILocation(line: 86, column: 19, scope: !3786, inlinedAt: !3929)
!3943 = !DILocation(line: 87, column: 13, scope: !3786, inlinedAt: !3929)
!3944 = distinct !{!3944, !2933}
!3945 = distinct !{!3945, !3933, !3946, !2010, !2011}
!3946 = !DILocation(line: 87, column: 24, scope: !3778, inlinedAt: !3929)
!3947 = !DILocation(line: 41, column: 22, scope: !3800, inlinedAt: !3929)
!3948 = !DILocation(line: 42, column: 15, scope: !3802, inlinedAt: !3929)
!3949 = !DILocation(line: 42, column: 13, scope: !3800, inlinedAt: !3929)
!3950 = !DILocation(line: 43, column: 9, scope: !3800, inlinedAt: !3929)
!3951 = !DILocation(line: 43, column: 22, scope: !3800, inlinedAt: !3929)
!3952 = !DILocation(line: 44, column: 15, scope: !3807, inlinedAt: !3929)
!3953 = !DILocation(line: 44, column: 13, scope: !3800, inlinedAt: !3929)
!3954 = !DILocation(line: 45, column: 9, scope: !3800, inlinedAt: !3929)
!3955 = !DILocation(line: 45, column: 22, scope: !3800, inlinedAt: !3929)
!3956 = !DILocation(line: 46, column: 9, scope: !3800, inlinedAt: !3929)
!3957 = !DILocation(line: 46, column: 22, scope: !3800, inlinedAt: !3929)
!3958 = !DILocation(line: 47, column: 5, scope: !3800, inlinedAt: !3929)
!3959 = !DILocation(line: 52, column: 26, scope: !3815, inlinedAt: !3929)
!3960 = !DILocation(line: 53, column: 19, scope: !3819, inlinedAt: !3929)
!3961 = !DILocation(line: 53, column: 17, scope: !3815, inlinedAt: !3929)
!3962 = !DILocation(line: 54, column: 13, scope: !3815, inlinedAt: !3929)
!3963 = !DILocation(line: 54, column: 26, scope: !3815, inlinedAt: !3929)
!3964 = !DILocation(line: 55, column: 19, scope: !3824, inlinedAt: !3929)
!3965 = !DILocation(line: 55, column: 17, scope: !3815, inlinedAt: !3929)
!3966 = !DILocation(line: 56, column: 13, scope: !3815, inlinedAt: !3929)
!3967 = !DILocation(line: 56, column: 26, scope: !3815, inlinedAt: !3929)
!3968 = !DILocation(line: 57, column: 13, scope: !3815, inlinedAt: !3929)
!3969 = !DILocation(line: 57, column: 26, scope: !3815, inlinedAt: !3929)
!3970 = !DILocation(line: 72, column: 5, scope: !3817, inlinedAt: !3929)
!3971 = distinct !{!3971, !3933, !3946, !2010}
!3972 = !DILocation(line: 1071, column: 27, scope: !3730)
!3973 = !DILocation(line: 1071, column: 64, scope: !3730)
!3974 = !DILocation(line: 0, scope: !3835, inlinedAt: !3975)
!3975 = distinct !DILocation(line: 1071, column: 16, scope: !3730)
!3976 = !DILocation(line: 329, column: 17, scope: !3835, inlinedAt: !3975)
!3977 = !DILocation(line: 329, column: 13, scope: !3835, inlinedAt: !3975)
!3978 = !DILocation(line: 1071, column: 16, scope: !3730)
!3979 = !DILocation(line: 0, scope: !3844, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 1072, column: 9, scope: !3730)
!3981 = !DILocation(line: 120, column: 24, scope: !3844, inlinedAt: !3980)
!3982 = !DILocation(line: 0, scope: !3760, inlinedAt: !3983)
!3983 = distinct !DILocation(line: 124, column: 9, scope: !3861, inlinedAt: !3980)
!3984 = !DILocation(line: 26, column: 19, scope: !3760, inlinedAt: !3983)
!3985 = !DILocation(line: 27, column: 19, scope: !3760, inlinedAt: !3983)
!3986 = !DILocation(line: 27, column: 22, scope: !3760, inlinedAt: !3983)
!3987 = !DILocation(line: 30, column: 9, scope: !3760, inlinedAt: !3983)
!3988 = !DILocation(line: 79, column: 13, scope: !3778, inlinedAt: !3983)
!3989 = !DILocation(line: 81, column: 32, scope: !3786, inlinedAt: !3983)
!3990 = !DILocation(line: 82, column: 17, scope: !3786, inlinedAt: !3983)
!3991 = !DILocation(line: 82, column: 32, scope: !3786, inlinedAt: !3983)
!3992 = !DILocation(line: 83, column: 17, scope: !3786, inlinedAt: !3983)
!3993 = !DILocation(line: 83, column: 32, scope: !3786, inlinedAt: !3983)
!3994 = !DILocation(line: 84, column: 17, scope: !3786, inlinedAt: !3983)
!3995 = !DILocation(line: 84, column: 32, scope: !3786, inlinedAt: !3983)
!3996 = !DILocation(line: 85, column: 19, scope: !3786, inlinedAt: !3983)
!3997 = !DILocation(line: 86, column: 19, scope: !3786, inlinedAt: !3983)
!3998 = !DILocation(line: 87, column: 13, scope: !3786, inlinedAt: !3983)
!3999 = distinct !{!3999, !2933}
!4000 = distinct !{!4000, !3988, !4001, !2010, !2011}
!4001 = !DILocation(line: 87, column: 24, scope: !3778, inlinedAt: !3983)
!4002 = !DILocation(line: 32, column: 22, scope: !3881, inlinedAt: !3983)
!4003 = !DILocation(line: 33, column: 15, scope: !3883, inlinedAt: !3983)
!4004 = !DILocation(line: 33, column: 13, scope: !3881, inlinedAt: !3983)
!4005 = !DILocation(line: 34, column: 9, scope: !3881, inlinedAt: !3983)
!4006 = !DILocation(line: 34, column: 22, scope: !3881, inlinedAt: !3983)
!4007 = !DILocation(line: 35, column: 15, scope: !3888, inlinedAt: !3983)
!4008 = !DILocation(line: 35, column: 13, scope: !3881, inlinedAt: !3983)
!4009 = !DILocation(line: 36, column: 9, scope: !3881, inlinedAt: !3983)
!4010 = !DILocation(line: 36, column: 22, scope: !3881, inlinedAt: !3983)
!4011 = !DILocation(line: 37, column: 9, scope: !3881, inlinedAt: !3983)
!4012 = !DILocation(line: 37, column: 22, scope: !3881, inlinedAt: !3983)
!4013 = !DILocation(line: 38, column: 5, scope: !3881, inlinedAt: !3983)
!4014 = !DILocation(line: 41, column: 22, scope: !3800, inlinedAt: !3983)
!4015 = !DILocation(line: 42, column: 15, scope: !3802, inlinedAt: !3983)
!4016 = !DILocation(line: 42, column: 13, scope: !3800, inlinedAt: !3983)
!4017 = !DILocation(line: 43, column: 9, scope: !3800, inlinedAt: !3983)
!4018 = !DILocation(line: 43, column: 22, scope: !3800, inlinedAt: !3983)
!4019 = !DILocation(line: 44, column: 15, scope: !3807, inlinedAt: !3983)
!4020 = !DILocation(line: 44, column: 13, scope: !3800, inlinedAt: !3983)
!4021 = !DILocation(line: 45, column: 9, scope: !3800, inlinedAt: !3983)
!4022 = !DILocation(line: 45, column: 22, scope: !3800, inlinedAt: !3983)
!4023 = !DILocation(line: 46, column: 9, scope: !3800, inlinedAt: !3983)
!4024 = !DILocation(line: 46, column: 22, scope: !3800, inlinedAt: !3983)
!4025 = !DILocation(line: 47, column: 5, scope: !3800, inlinedAt: !3983)
!4026 = !DILocation(line: 52, column: 26, scope: !3815, inlinedAt: !3983)
!4027 = !DILocation(line: 53, column: 19, scope: !3819, inlinedAt: !3983)
!4028 = !DILocation(line: 53, column: 17, scope: !3815, inlinedAt: !3983)
!4029 = !DILocation(line: 54, column: 13, scope: !3815, inlinedAt: !3983)
!4030 = !DILocation(line: 54, column: 26, scope: !3815, inlinedAt: !3983)
!4031 = !DILocation(line: 55, column: 19, scope: !3824, inlinedAt: !3983)
!4032 = !DILocation(line: 55, column: 17, scope: !3815, inlinedAt: !3983)
!4033 = !DILocation(line: 56, column: 13, scope: !3815, inlinedAt: !3983)
!4034 = !DILocation(line: 56, column: 26, scope: !3815, inlinedAt: !3983)
!4035 = !DILocation(line: 57, column: 13, scope: !3815, inlinedAt: !3983)
!4036 = !DILocation(line: 57, column: 26, scope: !3815, inlinedAt: !3983)
!4037 = !DILocation(line: 72, column: 5, scope: !3817, inlinedAt: !3983)
!4038 = distinct !{!4038, !3988, !4001, !2010}
!4039 = !DILocation(line: 1075, column: 17, scope: !1719)
!4040 = !DILocation(line: 1075, column: 15, scope: !1719)
!4041 = !DILocation(line: 1076, column: 17, scope: !1719)
!4042 = !DILocation(line: 1076, column: 15, scope: !1719)
!4043 = !DILocation(line: 1077, column: 17, scope: !1719)
!4044 = !DILocation(line: 1077, column: 15, scope: !1719)
!4045 = !DILocation(line: 1078, column: 17, scope: !1719)
!4046 = !DILocation(line: 1078, column: 15, scope: !1719)
!4047 = !DILocation(line: 1079, column: 1, scope: !1719)
!4048 = distinct !DISubprogram(name: "x264_me_refine_bidir_rd", scope: !3, file: !3, line: 1086, type: !4049, scopeLine: 1087, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4051)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{null, !86, !1372, !1372, !50, !50, !50}
!4051 = !{!4052, !4053, !4054, !4055, !4056, !4057}
!4052 = !DILocalVariable(name: "h", arg: 1, scope: !4048, file: !3, line: 1086, type: !86)
!4053 = !DILocalVariable(name: "m0", arg: 2, scope: !4048, file: !3, line: 1086, type: !1372)
!4054 = !DILocalVariable(name: "m1", arg: 3, scope: !4048, file: !3, line: 1086, type: !1372)
!4055 = !DILocalVariable(name: "i_weight", arg: 4, scope: !4048, file: !3, line: 1086, type: !50)
!4056 = !DILocalVariable(name: "i8", arg: 5, scope: !4048, file: !3, line: 1086, type: !50)
!4057 = !DILocalVariable(name: "i_lambda2", arg: 6, scope: !4048, file: !3, line: 1086, type: !50)
!4058 = !DILocation(line: 0, scope: !4048)
!4059 = !DILocation(line: 1090, column: 11, scope: !4048)
!4060 = !DILocation(line: 1090, column: 21, scope: !4048)
!4061 = !DILocation(line: 1091, column: 5, scope: !4048)
!4062 = !DILocation(line: 1092, column: 21, scope: !4048)
!4063 = !DILocation(line: 1093, column: 1, scope: !4048)
!4064 = distinct !DISubprogram(name: "x264_me_refine_qpel_rd", scope: !3, file: !3, line: 1125, type: !4065, scopeLine: 1126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4067)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{null, !86, !1372, !50, !50, !50}
!4067 = !{!4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4100, !4106, !4108, !4114, !4118, !4121, !4123, !4129, !4131}
!4068 = !DILocalVariable(name: "h", arg: 1, scope: !4064, file: !3, line: 1125, type: !86)
!4069 = !DILocalVariable(name: "m", arg: 2, scope: !4064, file: !3, line: 1125, type: !1372)
!4070 = !DILocalVariable(name: "i_lambda2", arg: 3, scope: !4064, file: !3, line: 1125, type: !50)
!4071 = !DILocalVariable(name: "i4", arg: 4, scope: !4064, file: !3, line: 1125, type: !50)
!4072 = !DILocalVariable(name: "i_list", arg: 5, scope: !4064, file: !3, line: 1125, type: !50)
!4073 = !DILocalVariable(name: "cache_mv", scope: !4064, file: !3, line: 1127, type: !792)
!4074 = !DILocalVariable(name: "p_cost_mvx", scope: !4064, file: !3, line: 1128, type: !1428)
!4075 = !DILocalVariable(name: "p_cost_mvy", scope: !4064, file: !3, line: 1128, type: !1428)
!4076 = !DILocalVariable(name: "bw", scope: !4064, file: !3, line: 1129, type: !1398)
!4077 = !DILocalVariable(name: "bh", scope: !4064, file: !3, line: 1130, type: !1398)
!4078 = !DILocalVariable(name: "i_pixel", scope: !4064, file: !3, line: 1131, type: !1398)
!4079 = !DILocalVariable(name: "mvy_offset", scope: !4064, file: !3, line: 1132, type: !1398)
!4080 = !DILocalVariable(name: "bcost", scope: !4064, file: !3, line: 1134, type: !62)
!4081 = !DILocalVariable(name: "bmx", scope: !4064, file: !3, line: 1135, type: !50)
!4082 = !DILocalVariable(name: "bmy", scope: !4064, file: !3, line: 1136, type: !50)
!4083 = !DILocalVariable(name: "omx", scope: !4064, file: !3, line: 1137, type: !50)
!4084 = !DILocalVariable(name: "omy", scope: !4064, file: !3, line: 1137, type: !50)
!4085 = !DILocalVariable(name: "pmx", scope: !4064, file: !3, line: 1137, type: !50)
!4086 = !DILocalVariable(name: "pmy", scope: !4064, file: !3, line: 1137, type: !50)
!4087 = !DILocalVariable(name: "bsatd", scope: !4064, file: !3, line: 1139, type: !50)
!4088 = !DILocalVariable(name: "satd", scope: !4064, file: !3, line: 1143, type: !50)
!4089 = !DILocalVariable(name: "dir", scope: !4064, file: !3, line: 1144, type: !50)
!4090 = !DILocalVariable(name: "i8", scope: !4064, file: !3, line: 1145, type: !50)
!4091 = !DILocalVariable(name: "amvd", scope: !4064, file: !3, line: 1146, type: !32)
!4092 = !DILocalVariable(name: "pix", scope: !4064, file: !3, line: 1148, type: !282)
!4093 = !DILocalVariable(name: "pixu", scope: !4064, file: !3, line: 1149, type: !282)
!4094 = !DILocalVariable(name: "pixv", scope: !4064, file: !3, line: 1150, type: !282)
!4095 = !DILocalVariable(name: "cost", scope: !4096, file: !3, line: 1162, type: !62)
!4096 = distinct !DILexicalBlock(scope: !4097, file: !3, line: 1162, column: 9)
!4097 = distinct !DILexicalBlock(scope: !4098, file: !3, line: 1162, column: 9)
!4098 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 1162, column: 9)
!4099 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 1161, column: 9)
!4100 = !DILocalVariable(name: "cost", scope: !4101, file: !3, line: 1172, type: !62)
!4101 = distinct !DILexicalBlock(scope: !4102, file: !3, line: 1172, column: 9)
!4102 = distinct !DILexicalBlock(scope: !4103, file: !3, line: 1172, column: 9)
!4103 = distinct !DILexicalBlock(scope: !4104, file: !3, line: 1172, column: 9)
!4104 = distinct !DILexicalBlock(scope: !4105, file: !3, line: 1170, column: 5)
!4105 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 1167, column: 9)
!4106 = !DILocalVariable(name: "j", scope: !4107, file: !3, line: 1193, type: !50)
!4107 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 1193, column: 5)
!4108 = !DILocalVariable(name: "cost", scope: !4109, file: !3, line: 1196, type: !62)
!4109 = distinct !DILexicalBlock(scope: !4110, file: !3, line: 1196, column: 9)
!4110 = distinct !DILexicalBlock(scope: !4111, file: !3, line: 1196, column: 9)
!4111 = distinct !DILexicalBlock(scope: !4112, file: !3, line: 1196, column: 9)
!4112 = distinct !DILexicalBlock(scope: !4113, file: !3, line: 1194, column: 5)
!4113 = distinct !DILexicalBlock(scope: !4107, file: !3, line: 1193, column: 5)
!4114 = !DILocalVariable(name: "i", scope: !4115, file: !3, line: 1202, type: !50)
!4115 = distinct !DILexicalBlock(scope: !4116, file: !3, line: 1202, column: 9)
!4116 = distinct !DILexicalBlock(scope: !4117, file: !3, line: 1200, column: 5)
!4117 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 1199, column: 9)
!4118 = !DILocalVariable(name: "odir", scope: !4119, file: !3, line: 1204, type: !1398)
!4119 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 1203, column: 9)
!4120 = distinct !DILexicalBlock(scope: !4115, file: !3, line: 1202, column: 9)
!4121 = !DILocalVariable(name: "j", scope: !4122, file: !3, line: 1211, type: !50)
!4122 = distinct !DILexicalBlock(scope: !4119, file: !3, line: 1211, column: 13)
!4123 = !DILocalVariable(name: "cost", scope: !4124, file: !3, line: 1214, type: !62)
!4124 = distinct !DILexicalBlock(scope: !4125, file: !3, line: 1214, column: 17)
!4125 = distinct !DILexicalBlock(scope: !4126, file: !3, line: 1214, column: 17)
!4126 = distinct !DILexicalBlock(scope: !4127, file: !3, line: 1214, column: 17)
!4127 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 1212, column: 13)
!4128 = distinct !DILexicalBlock(scope: !4122, file: !3, line: 1211, column: 13)
!4129 = !DILocalVariable(name: "i", scope: !4130, file: !3, line: 1224, type: !50)
!4130 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 1224, column: 5)
!4131 = !DILocalVariable(name: "cost", scope: !4132, file: !3, line: 1227, type: !62)
!4132 = distinct !DILexicalBlock(scope: !4133, file: !3, line: 1227, column: 9)
!4133 = distinct !DILexicalBlock(scope: !4134, file: !3, line: 1227, column: 9)
!4134 = distinct !DILexicalBlock(scope: !4135, file: !3, line: 1227, column: 9)
!4135 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 1225, column: 5)
!4136 = distinct !DILexicalBlock(scope: !4130, file: !3, line: 1224, column: 5)
!4137 = !DILocation(line: 0, scope: !4064)
!4138 = !DILocation(line: 1127, column: 37, scope: !4064)
!4139 = !DILocation(line: 1127, column: 25, scope: !4064)
!4140 = !DILocation(line: 1127, column: 48, scope: !4064)
!4141 = !DILocation(line: 1129, column: 39, scope: !4064)
!4142 = !DILocation(line: 1129, column: 20, scope: !4064)
!4143 = !DILocation(line: 1129, column: 48, scope: !4064)
!4144 = !DILocation(line: 1130, column: 48, scope: !4064)
!4145 = !DILocation(line: 1132, column: 34, scope: !4064)
!4146 = !DILocation(line: 1132, column: 52, scope: !4064)
!4147 = !DILocation(line: 1132, column: 47, scope: !4064)
!4148 = !DILocation(line: 1132, column: 28, scope: !4064)
!4149 = !DILocation(line: 1132, column: 67, scope: !4064)
!4150 = !DILocation(line: 1132, column: 78, scope: !4064)
!4151 = !DILocation(line: 1132, column: 81, scope: !4064)
!4152 = !DILocation(line: 1135, column: 18, scope: !4064)
!4153 = !DILocation(line: 1135, column: 15, scope: !4064)
!4154 = !DILocation(line: 1136, column: 15, scope: !4064)
!4155 = !DILocation(line: 1148, column: 32, scope: !4064)
!4156 = !DILocation(line: 1148, column: 22, scope: !4064)
!4157 = !DILocation(line: 1148, column: 42, scope: !4064)
!4158 = !DILocation(line: 1149, column: 22, scope: !4064)
!4159 = !DILocation(line: 1149, column: 51, scope: !4064)
!4160 = !DILocation(line: 1149, column: 67, scope: !4064)
!4161 = !DILocation(line: 1149, column: 63, scope: !4064)
!4162 = !DILocation(line: 1150, column: 22, scope: !4064)
!4163 = !DILocation(line: 1152, column: 11, scope: !4064)
!4164 = !DILocation(line: 1152, column: 21, scope: !4064)
!4165 = !DILocation(line: 1154, column: 12, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 1154, column: 9)
!4167 = !DILocation(line: 1154, column: 20, scope: !4166)
!4168 = !DILocation(line: 1154, column: 35, scope: !4166)
!4169 = !DILocation(line: 1155, column: 46, scope: !4166)
!4170 = !DILocation(line: 1155, column: 54, scope: !4166)
!4171 = !DILocation(line: 1155, column: 9, scope: !4166)
!4172 = !DILocation(line: 1156, column: 14, scope: !4064)
!4173 = !DILocation(line: 1156, column: 11, scope: !4064)
!4174 = !DILocation(line: 1157, column: 11, scope: !4064)
!4175 = !DILocation(line: 1158, column: 21, scope: !4064)
!4176 = !DILocation(line: 1158, column: 31, scope: !4064)
!4177 = !DILocation(line: 1159, column: 31, scope: !4064)
!4178 = !DILocation(line: 1160, column: 5, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4180, file: !3, line: 1160, column: 5)
!4180 = distinct !DILexicalBlock(scope: !4181, file: !3, line: 1160, column: 5)
!4181 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 1160, column: 5)
!4182 = !DILocation(line: 1161, column: 12, scope: !4099)
!4183 = !DILocation(line: 1161, column: 20, scope: !4099)
!4184 = !DILocation(line: 1161, column: 9, scope: !4064)
!4185 = !DILocation(line: 1162, column: 9, scope: !4097)
!4186 = !DILocation(line: 1162, column: 9, scope: !4098)
!4187 = !DILocation(line: 0, scope: !1908, inlinedAt: !4188)
!4188 = distinct !DILocation(line: 1162, column: 9, scope: !4096)
!4189 = !DILocation(line: 345, column: 13, scope: !1908, inlinedAt: !4188)
!4190 = !DILocation(line: 345, column: 26, scope: !1908, inlinedAt: !4188)
!4191 = !DILocation(line: 345, column: 22, scope: !1908, inlinedAt: !4188)
!4192 = !DILocation(line: 1162, column: 9, scope: !4096)
!4193 = !DILocation(line: 1162, column: 9, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4096, file: !3, line: 1162, column: 9)
!4195 = !DILocation(line: 1162, column: 9, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4194, file: !3, line: 1162, column: 9)
!4197 = !DILocation(line: 0, scope: !4096)
!4198 = !DILocation(line: 1164, column: 20, scope: !4099)
!4199 = !DILocation(line: 1164, column: 17, scope: !4099)
!4200 = !DILocation(line: 1167, column: 14, scope: !4105)
!4201 = !DILocation(line: 1167, column: 21, scope: !4105)
!4202 = !DILocation(line: 1168, column: 25, scope: !4105)
!4203 = !DILocation(line: 1168, column: 19, scope: !4105)
!4204 = !DILocation(line: 1168, column: 16, scope: !4105)
!4205 = !DILocation(line: 1168, column: 40, scope: !4105)
!4206 = !DILocation(line: 1168, column: 56, scope: !4105)
!4207 = !DILocation(line: 1168, column: 50, scope: !4105)
!4208 = !DILocation(line: 1168, column: 47, scope: !4105)
!4209 = !DILocation(line: 1169, column: 9, scope: !4105)
!4210 = !DILocation(line: 1169, column: 19, scope: !4105)
!4211 = !DILocation(line: 1169, column: 16, scope: !4105)
!4212 = !DILocation(line: 1169, column: 40, scope: !4105)
!4213 = !DILocation(line: 1169, column: 50, scope: !4105)
!4214 = !DILocation(line: 1169, column: 47, scope: !4105)
!4215 = !DILocation(line: 1167, column: 9, scope: !4064)
!4216 = !DILocation(line: 1171, column: 9, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 1171, column: 9)
!4218 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 1171, column: 9)
!4219 = distinct !DILexicalBlock(scope: !4104, file: !3, line: 1171, column: 9)
!4220 = !DILocation(line: 1172, column: 9, scope: !4102)
!4221 = !DILocation(line: 1172, column: 9, scope: !4103)
!4222 = !DILocation(line: 0, scope: !1908, inlinedAt: !4223)
!4223 = distinct !DILocation(line: 1172, column: 9, scope: !4101)
!4224 = !DILocation(line: 345, column: 13, scope: !1908, inlinedAt: !4223)
!4225 = !DILocation(line: 345, column: 26, scope: !1908, inlinedAt: !4223)
!4226 = !DILocation(line: 345, column: 22, scope: !1908, inlinedAt: !4223)
!4227 = !DILocation(line: 1172, column: 9, scope: !4101)
!4228 = !DILocation(line: 1172, column: 9, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4101, file: !3, line: 1172, column: 9)
!4230 = !DILocation(line: 1172, column: 9, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4229, file: !3, line: 1172, column: 9)
!4232 = !DILocation(line: 0, scope: !4101)
!4233 = !DILocation(line: 1172, column: 9, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4101, file: !3, line: 1172, column: 9)
!4235 = !DILocation(line: 1175, column: 17, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4104, file: !3, line: 1175, column: 13)
!4237 = !DILocation(line: 1175, column: 24, scope: !4236)
!4238 = !DILocation(line: 1177, column: 19, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 1176, column: 9)
!4240 = !DILocation(line: 1178, column: 19, scope: !4239)
!4241 = !DILocation(line: 1179, column: 9, scope: !4239)
!4242 = !DILocation(line: 1182, column: 21, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 1182, column: 9)
!4244 = !DILocation(line: 1182, column: 15, scope: !4243)
!4245 = !DILocation(line: 1182, column: 36, scope: !4243)
!4246 = !DILocation(line: 1182, column: 13, scope: !4243)
!4247 = !DILocation(line: 1182, column: 40, scope: !4243)
!4248 = !DILocation(line: 1182, column: 55, scope: !4243)
!4249 = !DILocation(line: 1182, column: 49, scope: !4243)
!4250 = !DILocation(line: 1182, column: 70, scope: !4243)
!4251 = !DILocation(line: 1182, column: 47, scope: !4243)
!4252 = !DILocation(line: 1182, column: 74, scope: !4243)
!4253 = !DILocation(line: 1183, column: 15, scope: !4243)
!4254 = !DILocation(line: 1183, column: 36, scope: !4243)
!4255 = !DILocation(line: 1183, column: 13, scope: !4243)
!4256 = !DILocation(line: 1183, column: 40, scope: !4243)
!4257 = !DILocation(line: 1183, column: 49, scope: !4243)
!4258 = !DILocation(line: 1183, column: 70, scope: !4243)
!4259 = !DILocation(line: 1183, column: 47, scope: !4243)
!4260 = !DILocation(line: 1182, column: 9, scope: !4064)
!4261 = !DILocation(line: 0, scope: !4107)
!4262 = !DILocation(line: 1193, column: 5, scope: !4107)
!4263 = !DILocation(line: 1199, column: 13, scope: !4117)
!4264 = !DILocation(line: 1199, column: 9, scope: !4064)
!4265 = !DILocation(line: 1195, column: 9, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 1195, column: 9)
!4267 = distinct !DILexicalBlock(scope: !4112, file: !3, line: 1195, column: 9)
!4268 = !DILocation(line: 1195, column: 9, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4266, file: !3, line: 1195, column: 9)
!4270 = !DILocation(line: 1196, column: 9, scope: !4110)
!4271 = !DILocation(line: 1196, column: 9, scope: !4111)
!4272 = !DILocation(line: 0, scope: !1908, inlinedAt: !4273)
!4273 = distinct !DILocation(line: 1196, column: 9, scope: !4109)
!4274 = !DILocation(line: 345, column: 13, scope: !1908, inlinedAt: !4273)
!4275 = !DILocation(line: 345, column: 26, scope: !1908, inlinedAt: !4273)
!4276 = !DILocation(line: 345, column: 22, scope: !1908, inlinedAt: !4273)
!4277 = !DILocation(line: 1196, column: 9, scope: !4109)
!4278 = !DILocation(line: 1196, column: 9, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 1196, column: 9)
!4280 = !DILocation(line: 1196, column: 9, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4279, file: !3, line: 1196, column: 9)
!4282 = !DILocation(line: 0, scope: !4109)
!4283 = !DILocation(line: 1196, column: 9, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 1196, column: 9)
!4285 = !DILocation(line: 1196, column: 9, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4284, file: !3, line: 1196, column: 9)
!4287 = !DILocation(line: 1193, column: 23, scope: !4113)
!4288 = distinct !{!4288, !4262, !4289}
!4289 = !DILocation(line: 1197, column: 5, scope: !4107)
!4290 = !DILocation(line: 1202, column: 34, scope: !4120)
!4291 = !DILocation(line: 0, scope: !4115)
!4292 = !DILocation(line: 1202, column: 27, scope: !4120)
!4293 = !DILocation(line: 1202, column: 9, scope: !4115)
!4294 = distinct !{!4294, !4293, !4295}
!4295 = !DILocation(line: 1218, column: 9, scope: !4115)
!4296 = !DILocation(line: 1204, column: 40, scope: !4119)
!4297 = !DILocation(line: 1204, column: 30, scope: !4119)
!4298 = !DILocation(line: 0, scope: !4119)
!4299 = !DILocation(line: 1205, column: 23, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4119, file: !3, line: 1205, column: 17)
!4301 = !DILocation(line: 1205, column: 44, scope: !4300)
!4302 = !DILocation(line: 1205, column: 21, scope: !4300)
!4303 = !DILocation(line: 1205, column: 48, scope: !4300)
!4304 = !DILocation(line: 1206, column: 23, scope: !4300)
!4305 = !DILocation(line: 1206, column: 44, scope: !4300)
!4306 = !DILocation(line: 1206, column: 21, scope: !4300)
!4307 = !DILocation(line: 1205, column: 17, scope: !4119)
!4308 = !DILocation(line: 0, scope: !4122)
!4309 = !DILocation(line: 1211, column: 13, scope: !4122)
!4310 = !DILocation(line: 1213, column: 17, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4312, file: !3, line: 1213, column: 17)
!4312 = distinct !DILexicalBlock(scope: !4127, file: !3, line: 1213, column: 17)
!4313 = !DILocation(line: 1213, column: 17, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4311, file: !3, line: 1213, column: 17)
!4315 = !DILocation(line: 1214, column: 17, scope: !4125)
!4316 = !DILocation(line: 1214, column: 17, scope: !4126)
!4317 = !DILocation(line: 0, scope: !1908, inlinedAt: !4318)
!4318 = distinct !DILocation(line: 1214, column: 17, scope: !4124)
!4319 = !DILocation(line: 345, column: 13, scope: !1908, inlinedAt: !4318)
!4320 = !DILocation(line: 345, column: 26, scope: !1908, inlinedAt: !4318)
!4321 = !DILocation(line: 345, column: 22, scope: !1908, inlinedAt: !4318)
!4322 = !DILocation(line: 1214, column: 17, scope: !4124)
!4323 = !DILocation(line: 1214, column: 17, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1214, column: 17)
!4325 = !DILocation(line: 1214, column: 17, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4324, file: !3, line: 1214, column: 17)
!4327 = !DILocation(line: 0, scope: !4124)
!4328 = !DILocation(line: 1214, column: 17, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1214, column: 17)
!4330 = !DILocation(line: 1214, column: 17, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4329, file: !3, line: 1214, column: 17)
!4332 = !DILocation(line: 1216, column: 21, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4119, file: !3, line: 1216, column: 17)
!4334 = !DILocation(line: 1171, column: 9, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4217, file: !3, line: 1171, column: 9)
!4336 = !DILocation(line: 1172, column: 9, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4234, file: !3, line: 1172, column: 9)
!4338 = !DILocation(line: 0, scope: !4130)
!4339 = !DILocation(line: 1224, column: 5, scope: !4130)
!4340 = !DILocation(line: 1230, column: 15, scope: !4064)
!4341 = !DILocation(line: 1230, column: 8, scope: !4064)
!4342 = !DILocation(line: 1230, column: 13, scope: !4064)
!4343 = !DILocation(line: 1231, column: 16, scope: !4064)
!4344 = !DILocation(line: 1231, column: 14, scope: !4064)
!4345 = !DILocation(line: 1232, column: 16, scope: !4064)
!4346 = !DILocation(line: 1232, column: 14, scope: !4064)
!4347 = !DILocation(line: 1233, column: 35, scope: !4064)
!4348 = !DILocation(line: 1233, column: 52, scope: !4064)
!4349 = !DILocation(line: 1233, column: 71, scope: !4064)
!4350 = !DILocation(line: 1233, column: 78, scope: !4064)
!4351 = !DILocation(line: 0, scope: !1908, inlinedAt: !4352)
!4352 = distinct !DILocation(line: 1233, column: 91, scope: !4064)
!4353 = !DILocation(line: 345, column: 13, scope: !1908, inlinedAt: !4352)
!4354 = !DILocation(line: 345, column: 26, scope: !1908, inlinedAt: !4352)
!4355 = !DILocation(line: 345, column: 22, scope: !1908, inlinedAt: !4352)
!4356 = !DILocation(line: 0, scope: !3740, inlinedAt: !4357)
!4357 = distinct !DILocation(line: 1233, column: 5, scope: !4064)
!4358 = !DILocation(line: 112, column: 58, scope: !3740, inlinedAt: !4357)
!4359 = !DILocation(line: 112, column: 62, scope: !3740, inlinedAt: !4357)
!4360 = !DILocation(line: 112, column: 60, scope: !3740, inlinedAt: !4357)
!4361 = !DILocation(line: 112, column: 23, scope: !3740, inlinedAt: !4357)
!4362 = !DILocation(line: 116, column: 52, scope: !3758, inlinedAt: !4357)
!4363 = !DILocation(line: 0, scope: !3760, inlinedAt: !4364)
!4364 = distinct !DILocation(line: 116, column: 9, scope: !3758, inlinedAt: !4357)
!4365 = !DILocation(line: 27, column: 19, scope: !3760, inlinedAt: !4364)
!4366 = !DILocation(line: 27, column: 22, scope: !3760, inlinedAt: !4364)
!4367 = !DILocation(line: 30, column: 9, scope: !3760, inlinedAt: !4364)
!4368 = !DILocation(line: 79, column: 13, scope: !3778, inlinedAt: !4364)
!4369 = !DILocation(line: 81, column: 32, scope: !3786, inlinedAt: !4364)
!4370 = !DILocation(line: 82, column: 17, scope: !3786, inlinedAt: !4364)
!4371 = !DILocation(line: 82, column: 32, scope: !3786, inlinedAt: !4364)
!4372 = !DILocation(line: 83, column: 17, scope: !3786, inlinedAt: !4364)
!4373 = !DILocation(line: 83, column: 32, scope: !3786, inlinedAt: !4364)
!4374 = !DILocation(line: 84, column: 17, scope: !3786, inlinedAt: !4364)
!4375 = !DILocation(line: 84, column: 32, scope: !3786, inlinedAt: !4364)
!4376 = !DILocation(line: 85, column: 19, scope: !3786, inlinedAt: !4364)
!4377 = !DILocation(line: 86, column: 19, scope: !3786, inlinedAt: !4364)
!4378 = !DILocation(line: 87, column: 13, scope: !3786, inlinedAt: !4364)
!4379 = distinct !{!4379, !2933}
!4380 = distinct !{!4380, !4368, !4381, !2010, !2011}
!4381 = !DILocation(line: 87, column: 24, scope: !3778, inlinedAt: !4364)
!4382 = !DILocation(line: 41, column: 22, scope: !3800, inlinedAt: !4364)
!4383 = !DILocation(line: 42, column: 15, scope: !3802, inlinedAt: !4364)
!4384 = !DILocation(line: 42, column: 13, scope: !3800, inlinedAt: !4364)
!4385 = !DILocation(line: 43, column: 9, scope: !3800, inlinedAt: !4364)
!4386 = !DILocation(line: 43, column: 22, scope: !3800, inlinedAt: !4364)
!4387 = !DILocation(line: 44, column: 15, scope: !3807, inlinedAt: !4364)
!4388 = !DILocation(line: 44, column: 13, scope: !3800, inlinedAt: !4364)
!4389 = !DILocation(line: 45, column: 9, scope: !3800, inlinedAt: !4364)
!4390 = !DILocation(line: 45, column: 22, scope: !3800, inlinedAt: !4364)
!4391 = !DILocation(line: 46, column: 9, scope: !3800, inlinedAt: !4364)
!4392 = !DILocation(line: 46, column: 22, scope: !3800, inlinedAt: !4364)
!4393 = !DILocation(line: 47, column: 5, scope: !3800, inlinedAt: !4364)
!4394 = !DILocation(line: 52, column: 26, scope: !3815, inlinedAt: !4364)
!4395 = !DILocation(line: 53, column: 19, scope: !3819, inlinedAt: !4364)
!4396 = !DILocation(line: 53, column: 17, scope: !3815, inlinedAt: !4364)
!4397 = !DILocation(line: 54, column: 13, scope: !3815, inlinedAt: !4364)
!4398 = !DILocation(line: 54, column: 26, scope: !3815, inlinedAt: !4364)
!4399 = !DILocation(line: 55, column: 19, scope: !3824, inlinedAt: !4364)
!4400 = !DILocation(line: 55, column: 17, scope: !3815, inlinedAt: !4364)
!4401 = !DILocation(line: 56, column: 13, scope: !3815, inlinedAt: !4364)
!4402 = !DILocation(line: 56, column: 26, scope: !3815, inlinedAt: !4364)
!4403 = !DILocation(line: 57, column: 13, scope: !3815, inlinedAt: !4364)
!4404 = !DILocation(line: 57, column: 26, scope: !3815, inlinedAt: !4364)
!4405 = !DILocation(line: 72, column: 5, scope: !3817, inlinedAt: !4364)
!4406 = distinct !{!4406, !4368, !4381, !2010}
!4407 = !DILocation(line: 1234, column: 23, scope: !4064)
!4408 = !DILocation(line: 1234, column: 58, scope: !4064)
!4409 = !DILocation(line: 0, scope: !3835, inlinedAt: !4410)
!4410 = distinct !DILocation(line: 1234, column: 12, scope: !4064)
!4411 = !DILocation(line: 329, column: 17, scope: !3835, inlinedAt: !4410)
!4412 = !DILocation(line: 329, column: 13, scope: !3835, inlinedAt: !4410)
!4413 = !DILocation(line: 1234, column: 12, scope: !4064)
!4414 = !DILocation(line: 0, scope: !3844, inlinedAt: !4415)
!4415 = distinct !DILocation(line: 1235, column: 5, scope: !4064)
!4416 = !DILocation(line: 120, column: 36, scope: !3844, inlinedAt: !4415)
!4417 = !DILocation(line: 120, column: 24, scope: !3844, inlinedAt: !4415)
!4418 = !DILocation(line: 0, scope: !3760, inlinedAt: !4419)
!4419 = distinct !DILocation(line: 124, column: 9, scope: !3861, inlinedAt: !4415)
!4420 = !DILocation(line: 26, column: 19, scope: !3760, inlinedAt: !4419)
!4421 = !DILocation(line: 27, column: 19, scope: !3760, inlinedAt: !4419)
!4422 = !DILocation(line: 27, column: 22, scope: !3760, inlinedAt: !4419)
!4423 = !DILocation(line: 30, column: 9, scope: !3760, inlinedAt: !4419)
!4424 = !DILocation(line: 79, column: 13, scope: !3778, inlinedAt: !4419)
!4425 = !DILocation(line: 81, column: 32, scope: !3786, inlinedAt: !4419)
!4426 = !DILocation(line: 82, column: 17, scope: !3786, inlinedAt: !4419)
!4427 = !DILocation(line: 82, column: 32, scope: !3786, inlinedAt: !4419)
!4428 = !DILocation(line: 83, column: 17, scope: !3786, inlinedAt: !4419)
!4429 = !DILocation(line: 83, column: 32, scope: !3786, inlinedAt: !4419)
!4430 = !DILocation(line: 84, column: 17, scope: !3786, inlinedAt: !4419)
!4431 = !DILocation(line: 84, column: 32, scope: !3786, inlinedAt: !4419)
!4432 = !DILocation(line: 85, column: 19, scope: !3786, inlinedAt: !4419)
!4433 = !DILocation(line: 86, column: 19, scope: !3786, inlinedAt: !4419)
!4434 = !DILocation(line: 87, column: 13, scope: !3786, inlinedAt: !4419)
!4435 = distinct !{!4435, !2933}
!4436 = distinct !{!4436, !4424, !4437, !2010, !2011}
!4437 = !DILocation(line: 87, column: 24, scope: !3778, inlinedAt: !4419)
!4438 = !DILocation(line: 32, column: 22, scope: !3881, inlinedAt: !4419)
!4439 = !DILocation(line: 33, column: 15, scope: !3883, inlinedAt: !4419)
!4440 = !DILocation(line: 33, column: 13, scope: !3881, inlinedAt: !4419)
!4441 = !DILocation(line: 34, column: 9, scope: !3881, inlinedAt: !4419)
!4442 = !DILocation(line: 34, column: 22, scope: !3881, inlinedAt: !4419)
!4443 = !DILocation(line: 35, column: 15, scope: !3888, inlinedAt: !4419)
!4444 = !DILocation(line: 35, column: 13, scope: !3881, inlinedAt: !4419)
!4445 = !DILocation(line: 36, column: 9, scope: !3881, inlinedAt: !4419)
!4446 = !DILocation(line: 36, column: 22, scope: !3881, inlinedAt: !4419)
!4447 = !DILocation(line: 37, column: 9, scope: !3881, inlinedAt: !4419)
!4448 = !DILocation(line: 37, column: 22, scope: !3881, inlinedAt: !4419)
!4449 = !DILocation(line: 38, column: 5, scope: !3881, inlinedAt: !4419)
!4450 = !DILocation(line: 41, column: 22, scope: !3800, inlinedAt: !4419)
!4451 = !DILocation(line: 42, column: 15, scope: !3802, inlinedAt: !4419)
!4452 = !DILocation(line: 42, column: 13, scope: !3800, inlinedAt: !4419)
!4453 = !DILocation(line: 43, column: 9, scope: !3800, inlinedAt: !4419)
!4454 = !DILocation(line: 43, column: 22, scope: !3800, inlinedAt: !4419)
!4455 = !DILocation(line: 44, column: 15, scope: !3807, inlinedAt: !4419)
!4456 = !DILocation(line: 44, column: 13, scope: !3800, inlinedAt: !4419)
!4457 = !DILocation(line: 45, column: 9, scope: !3800, inlinedAt: !4419)
!4458 = !DILocation(line: 45, column: 22, scope: !3800, inlinedAt: !4419)
!4459 = !DILocation(line: 46, column: 9, scope: !3800, inlinedAt: !4419)
!4460 = !DILocation(line: 46, column: 22, scope: !3800, inlinedAt: !4419)
!4461 = !DILocation(line: 47, column: 5, scope: !3800, inlinedAt: !4419)
!4462 = !DILocation(line: 52, column: 26, scope: !3815, inlinedAt: !4419)
!4463 = !DILocation(line: 53, column: 19, scope: !3819, inlinedAt: !4419)
!4464 = !DILocation(line: 53, column: 17, scope: !3815, inlinedAt: !4419)
!4465 = !DILocation(line: 54, column: 13, scope: !3815, inlinedAt: !4419)
!4466 = !DILocation(line: 54, column: 26, scope: !3815, inlinedAt: !4419)
!4467 = !DILocation(line: 55, column: 19, scope: !3824, inlinedAt: !4419)
!4468 = !DILocation(line: 55, column: 17, scope: !3815, inlinedAt: !4419)
!4469 = !DILocation(line: 56, column: 13, scope: !3815, inlinedAt: !4419)
!4470 = !DILocation(line: 56, column: 26, scope: !3815, inlinedAt: !4419)
!4471 = !DILocation(line: 57, column: 13, scope: !3815, inlinedAt: !4419)
!4472 = !DILocation(line: 57, column: 26, scope: !3815, inlinedAt: !4419)
!4473 = !DILocation(line: 72, column: 5, scope: !3817, inlinedAt: !4419)
!4474 = distinct !{!4474, !4424, !4437, !2010}
!4475 = !DILocation(line: 1226, column: 9, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4477, file: !3, line: 1226, column: 9)
!4477 = distinct !DILexicalBlock(scope: !4135, file: !3, line: 1226, column: 9)
!4478 = !DILocation(line: 1226, column: 9, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4476, file: !3, line: 1226, column: 9)
!4480 = !DILocation(line: 1227, column: 9, scope: !4133)
!4481 = !DILocation(line: 1227, column: 9, scope: !4134)
!4482 = !DILocation(line: 0, scope: !1908, inlinedAt: !4483)
!4483 = distinct !DILocation(line: 1227, column: 9, scope: !4132)
!4484 = !DILocation(line: 345, column: 13, scope: !1908, inlinedAt: !4483)
!4485 = !DILocation(line: 345, column: 26, scope: !1908, inlinedAt: !4483)
!4486 = !DILocation(line: 345, column: 22, scope: !1908, inlinedAt: !4483)
!4487 = !DILocation(line: 1227, column: 9, scope: !4132)
!4488 = !DILocation(line: 1227, column: 9, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 1227, column: 9)
!4490 = !DILocation(line: 1227, column: 9, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4489, file: !3, line: 1227, column: 9)
!4492 = !DILocation(line: 0, scope: !4132)
!4493 = !DILocation(line: 1227, column: 9, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 1227, column: 9)
!4495 = !DILocation(line: 1227, column: 9, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4494, file: !3, line: 1227, column: 9)
!4497 = !DILocation(line: 1224, column: 23, scope: !4136)
!4498 = distinct !{!4498, !4339, !4499}
!4499 = !DILocation(line: 1228, column: 5, scope: !4130)
!4500 = !DILocation(line: 1237, column: 1, scope: !4064)
!4501 = !DISubprogram(name: "x264_mb_predict_mv", scope: !1821, file: !1821, line: 299, type: !4502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{null, !86, !50, !50, !50, !792}
!4504 = !DISubprogram(name: "x264_rd_cost_part", scope: !46, file: !46, line: 69, type: !4505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{!62, !86, !50, !50, !50}
