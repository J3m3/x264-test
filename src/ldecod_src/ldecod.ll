; ModuleID = 'ldecod_src/ldecod.c'
source_filename = "ldecod_src/ldecod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datapartition = type { ptr, %struct.DecodingEnvironment, ptr }
%struct.DecodingEnvironment = type { i32, i32, i32, ptr, ptr }
%struct.BlockPos = type { i16, i16 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !0
@errortext = dso_local global [300 x i8] zeroinitializer, align 16, !dbg !7
@.str.1 = private unnamed_addr constant [60 x i8] c"AllocPartition: Memory allocation for Data Partition failed\00", align 1, !dbg !1456
@.str.2 = private unnamed_addr constant [55 x i8] c"AllocPartition: Memory allocation for Bitstream failed\00", align 1, !dbg !1461
@.str.3 = private unnamed_addr constant [58 x i8] c"AllocPartition: Memory allocation for streamBuffer failed\00", align 1, !dbg !1466
@.str.4 = private unnamed_addr constant [61 x i8] c"Memory allocation for Slice datastruct in NAL-mode %d failed\00", align 1, !dbg !1471
@.str.5 = private unnamed_addr constant [34 x i8] c"malloc_slice: currSlice->listX[i]\00", align 1, !dbg !1476
@.str.6 = private unnamed_addr constant [36 x i8] c"init_global_buffers: p_Vid->mb_data\00", align 1, !dbg !1481
@.str.7 = private unnamed_addr constant [43 x i8] c"init_global_buffers: p_Vid->intra_block_JV\00", align 1, !dbg !1486
@.str.8 = private unnamed_addr constant [40 x i8] c"init_global_buffers: p_Vid->intra_block\00", align 1, !dbg !1491
@PicPos = dso_local local_unnamed_addr global ptr null, align 8, !dbg !1521
@.str.9 = private unnamed_addr constant [28 x i8] c"init_global_buffers: PicPos\00", align 1, !dbg !1496
@.str.10 = private unnamed_addr constant [39 x i8] c"init_global_buffers: p_Vid->siblock_JV\00", align 1, !dbg !1501
@p_Dec = dso_local local_unnamed_addr global ptr null, align 8, !dbg !1519
@stdout = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [62 x i8] c" Input reference file                   : %s does not exist \0A\00", align 1, !dbg !1509
@.str.13 = private unnamed_addr constant [72 x i8] c"                                          SNR values are not available\0A\00", align 1, !dbg !1514
@.str.14 = private unnamed_addr constant [22 x i8] c"alloc_decoder: p_Dec\0A\00", align 1, !dbg !1523
@.str.15 = private unnamed_addr constant [26 x i8] c"alloc_video_params: p_Vid\00", align 1, !dbg !1527
@.str.16 = private unnamed_addr constant [37 x i8] c"alloc_video_params: p_Vid->old_slice\00", align 1, !dbg !1532
@.str.17 = private unnamed_addr constant [31 x i8] c"alloc_video_params: p_Vid->snr\00", align 1, !dbg !1537
@.str.18 = private unnamed_addr constant [40 x i8] c"alloc_video_params: p_Vid->p_Dpb_legacy\00", align 1, !dbg !1542
@.str.19 = private unnamed_addr constant [42 x i8] c"alloc_video_params: p_Vid->p_Dpb_layer[i]\00", align 1, !dbg !1544
@.str.20 = private unnamed_addr constant [45 x i8] c"alloc_video_params: (*p_Vid)->seiToneMapping\00", align 1, !dbg !1549
@.str.21 = private unnamed_addr constant [39 x i8] c"alloc_video_params: p_Vid->ppSliceList\00", align 1, !dbg !1554
@.str.22 = private unnamed_addr constant [20 x i8] c"alloc_params: p_Inp\00", align 1, !dbg !1556
@Report.yuv_formats = internal constant [4 x [4 x i8]] [[4 x i8] c"400\00", [4 x i8] c"420\00", [4 x i8] c"422\00", [4 x i8] c"444\00"], align 16, !dbg !1558
@.str.23 = private unnamed_addr constant [76 x i8] c"-------------------- Average SNR all frames ------------------------------\0A\00", align 1, !dbg !1589
@.str.24 = private unnamed_addr constant [30 x i8] c" SNR Y(dB)           : %5.2f\0A\00", align 1, !dbg !1594
@.str.25 = private unnamed_addr constant [30 x i8] c" SNR U(dB)           : %5.2f\0A\00", align 1, !dbg !1599
@.str.26 = private unnamed_addr constant [30 x i8] c" SNR V(dB)           : %5.2f\0A\00", align 1, !dbg !1601
@.str.27 = private unnamed_addr constant [76 x i8] c"--------------------------------------------------------------------------\0A\00", align 1, !dbg !1603
@.str.28 = private unnamed_addr constant [29 x i8] c" Exit JM %s decoder, ver %s \00", align 1, !dbg !1605
@.str.29 = private unnamed_addr constant [11 x i8] c"17 (FRExt)\00", align 1, !dbg !1610
@.str.30 = private unnamed_addr constant [5 x i8] c"17.1\00", align 1, !dbg !1614
@.str.32 = private unnamed_addr constant [77 x i8] c"\0A----------------------- Decoding Completed -------------------------------\0A\00", align 1, !dbg !1621
@.str.33 = private unnamed_addr constant [47 x i8] c" Output status file                     : %s \0A\00", align 1, !dbg !1626
@.str.34 = private unnamed_addr constant [8 x i8] c"log.dec\00", align 1, !dbg !1631
@.str.36 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !1636
@.str.37 = private unnamed_addr constant [2 x i8] c"a\00", align 1, !dbg !1638
@.str.38 = private unnamed_addr constant [33 x i8] c"Error open file %s for appending\00", align 1, !dbg !1640
@.str.39 = private unnamed_addr constant [118 x i8] c" -------------------------------------------------------------------------------------------------------------------\0A\00", align 1, !dbg !1645
@.str.40 = private unnamed_addr constant [94 x i8] c"|  Decoder statistics. This file is made first time, later runs are appended               |\0A\00", align 1, !dbg !1650
@.str.41 = private unnamed_addr constant [119 x i8] c" ------------------------------------------------------------------------------------------------------------------- \0A\00", align 1, !dbg !1655
@.str.42 = private unnamed_addr constant [119 x i8] c"|   ver  | Date  | Time  |    Sequence        |#Img| Format  | YUV |Coding|SNRY 1|SNRU 1|SNRV 1|SNRY N|SNRU N|SNRV N|\0A\00", align 1, !dbg !1660
@.str.43 = private unnamed_addr constant [9 x i8] c"|%s/%-4s\00", align 1, !dbg !1662
@.str.44 = private unnamed_addr constant [8 x i8] c"(FRExt)\00", align 1, !dbg !1664
@.str.45 = private unnamed_addr constant [9 x i8] c"%d-%b-%Y\00", align 1, !dbg !1666
@.str.46 = private unnamed_addr constant [10 x i8] c"| %1.5s |\00", align 1, !dbg !1668
@.str.47 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1, !dbg !1672
@.str.48 = private unnamed_addr constant [9 x i8] c"%20.20s|\00", align 1, !dbg !1674
@.str.49 = private unnamed_addr constant [6 x i8] c"%3d |\00", align 1, !dbg !1676
@.str.50 = private unnamed_addr constant [10 x i8] c"%4dx%-4d|\00", align 1, !dbg !1679
@.str.51 = private unnamed_addr constant [6 x i8] c" %s |\00", align 1, !dbg !1681
@.str.52 = private unnamed_addr constant [8 x i8] c" CAVLC|\00", align 1, !dbg !1683
@.str.53 = private unnamed_addr constant [8 x i8] c" CABAC|\00", align 1, !dbg !1685
@.str.54 = private unnamed_addr constant [7 x i8] c"%6.3f|\00", align 1, !dbg !1687
@.str.55 = private unnamed_addr constant [12 x i8] c"dataDec.txt\00", align 1, !dbg !1692
@.str.56 = private unnamed_addr constant [84 x i8] c"%3d %2d %2d %2.2f %2.2f %2.2f %5d %2.2f %2.2f %2.2f %5d %2.2f %2.2f %2.2f %5d %.3f\0A\00", align 1, !dbg !1695

; Function Attrs: noreturn nounwind uwtable
define dso_local void @error(ptr noundef %text, i32 noundef %code) local_unnamed_addr #0 !dbg !1711 {
entry:
    #dbg_value(ptr %text, !1715, !DIExpression(), !1717)
    #dbg_value(i32 %code, !1716, !DIExpression(), !1717)
  %0 = load ptr, ptr @stderr, align 8, !dbg !1718
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %text) #16, !dbg !1719
  tail call void @exit(i32 noundef %code) #17, !dbg !1720
  unreachable, !dbg !1720
}

; Function Attrs: nofree nounwind
declare !dbg !1721 noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare !dbg !1727 void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @FreeDecPicList(ptr noundef %pDecPicList) local_unnamed_addr #3 !dbg !1731 {
entry:
    #dbg_value(ptr %pDecPicList, !1735, !DIExpression(), !1738)
  %tobool.not11 = icmp eq ptr %pDecPicList, null, !dbg !1739
  br i1 %tobool.not11, label %while.end, label %while.body, !dbg !1739

while.body:                                       ; preds = %entry, %if.end
  %pDecPicList.addr.012 = phi ptr [ %0, %if.end ], [ %pDecPicList, %entry ]
    #dbg_value(ptr %pDecPicList.addr.012, !1735, !DIExpression(), !1738)
  %pNext = getelementptr inbounds i8, ptr %pDecPicList.addr.012, i64 72, !dbg !1740
  %0 = load ptr, ptr %pNext, align 8, !dbg !1740
    #dbg_value(ptr %0, !1736, !DIExpression(), !1741)
  %pY = getelementptr inbounds i8, ptr %pDecPicList.addr.012, i64 24, !dbg !1742
  %1 = load ptr, ptr %pY, align 8, !dbg !1742
  %tobool1.not = icmp eq ptr %1, null, !dbg !1744
  br i1 %tobool1.not, label %if.end, label %if.then, !dbg !1745

if.then:                                          ; preds = %while.body
  tail call void @free(ptr noundef nonnull %1) #18, !dbg !1746
  br label %if.end, !dbg !1748

if.end:                                           ; preds = %if.then, %while.body
  tail call void @free(ptr noundef nonnull %pDecPicList.addr.012) #18, !dbg !1749
    #dbg_value(ptr %0, !1735, !DIExpression(), !1738)
  %tobool.not = icmp eq ptr %0, null, !dbg !1739
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !1739, !llvm.loop !1750

while.end:                                        ; preds = %if.end, %entry
  ret void, !dbg !1752
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1753 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @init_frext(ptr nocapture noundef %p_Vid) local_unnamed_addr #3 !dbg !1756 {
entry:
    #dbg_value(ptr %p_Vid, !1758, !DIExpression(), !1759)
  %bitdepth_luma = getelementptr inbounds i8, ptr %p_Vid, i64 849040, !dbg !1760
  %0 = load i16, ptr %bitdepth_luma, align 8, !dbg !1760
  %conv = sext i16 %0 to i32, !dbg !1761
  %1 = mul nsw i32 %conv, 6, !dbg !1762
  %mul = add nsw i32 %1, -48, !dbg !1762
  %bitdepth_luma_qp_scale = getelementptr inbounds i8, ptr %p_Vid, i64 849052, !dbg !1763
  store i32 %mul, ptr %bitdepth_luma_qp_scale, align 4, !dbg !1764
  %bitdepth_chroma = getelementptr inbounds i8, ptr %p_Vid, i64 849042, !dbg !1765
  %2 = load i16, ptr %bitdepth_chroma, align 2, !dbg !1765
  %cmp = icmp sgt i16 %0, %2, !dbg !1767
  %active_sps30.phi.trans.insert.phi.trans.insert = getelementptr inbounds i8, ptr %p_Vid, i64 16
  %.pre.pre = load ptr, ptr %active_sps30.phi.trans.insert.phi.trans.insert, align 8, !dbg !1759
  br i1 %cmp, label %if.end, label %lor.lhs.false, !dbg !1768

lor.lhs.false:                                    ; preds = %entry
  %chroma_format_idc = getelementptr inbounds i8, ptr %.pre.pre, i64 36, !dbg !1769
  %3 = load i32, ptr %chroma_format_idc, align 4, !dbg !1769
  %cmp5 = icmp eq i32 %3, 0, !dbg !1770
  %spec.select = select i1 %cmp5, i16 %0, i16 %2, !dbg !1771
  br label %if.end, !dbg !1771

if.end:                                           ; preds = %lor.lhs.false, %entry
  %.sink = phi i16 [ %0, %entry ], [ %spec.select, %lor.lhs.false ]
  %cmp13 = icmp sgt i16 %.sink, 8, !dbg !1772
  %cond15 = select i1 %cmp13, i32 16, i32 8, !dbg !1772
  %pic_unit_bitsize_on_disk16 = getelementptr inbounds i8, ptr %p_Vid, i64 849036, !dbg !1772
  store i32 %cond15, ptr %pic_unit_bitsize_on_disk16, align 4, !dbg !1772
  %sub19 = add nsw i32 %conv, -1, !dbg !1773
  %shl = shl nuw i32 1, %sub19, !dbg !1774
  %dc_pred_value_comp = getelementptr inbounds i8, ptr %p_Vid, i64 849060, !dbg !1775
  store i32 %shl, ptr %dc_pred_value_comp, align 4, !dbg !1776
  %conv21291 = zext nneg i16 %0 to i32, !dbg !1777
  %notmask = shl nsw i32 -1, %conv21291, !dbg !1778
  %sub23 = xor i32 %notmask, -1, !dbg !1778
  %max_pel_value_comp = getelementptr inbounds i8, ptr %p_Vid, i64 849072, !dbg !1779
  store i32 %sub23, ptr %max_pel_value_comp, align 8, !dbg !1780
  %mb_size = getelementptr inbounds i8, ptr %p_Vid, i64 849124, !dbg !1781
  %arrayidx26 = getelementptr inbounds i8, ptr %p_Vid, i64 849128, !dbg !1782
  store i32 16, ptr %arrayidx26, align 4, !dbg !1783
  store i32 16, ptr %mb_size, align 4, !dbg !1784
  %chroma_format_idc31 = getelementptr inbounds i8, ptr %.pre.pre, i64 36, !dbg !1785
  %4 = load i32, ptr %chroma_format_idc31, align 4, !dbg !1785
  %cmp32.not = icmp eq i32 %4, 0, !dbg !1787
  br i1 %cmp32.not, label %if.else117, label %if.then34, !dbg !1788

if.then34:                                        ; preds = %if.end
  %conv36 = sext i16 %2 to i32, !dbg !1789
  %5 = mul nsw i32 %conv36, 6, !dbg !1791
  %mul38 = add nsw i32 %5, -48, !dbg !1791
  %bitdepth_chroma_qp_scale = getelementptr inbounds i8, ptr %p_Vid, i64 849056, !dbg !1792
  store i32 %mul38, ptr %bitdepth_chroma_qp_scale, align 8, !dbg !1793
  %sub41 = add nsw i32 %conv36, -1, !dbg !1794
  %shl42 = shl nuw i32 1, %sub41, !dbg !1795
  %arrayidx44 = getelementptr inbounds i8, ptr %p_Vid, i64 849064, !dbg !1796
  store i32 %shl42, ptr %arrayidx44, align 4, !dbg !1797
  %arrayidx48 = getelementptr inbounds i8, ptr %p_Vid, i64 849068, !dbg !1798
  store i32 %shl42, ptr %arrayidx48, align 4, !dbg !1799
  %conv50292 = zext nneg i16 %2 to i32, !dbg !1800
  %notmask293 = shl nsw i32 -1, %conv50292, !dbg !1801
  %sub52 = xor i32 %notmask293, -1, !dbg !1801
  %arrayidx54 = getelementptr inbounds i8, ptr %p_Vid, i64 849076, !dbg !1802
  store i32 %sub52, ptr %arrayidx54, align 4, !dbg !1803
  %arrayidx60 = getelementptr inbounds i8, ptr %p_Vid, i64 849080, !dbg !1804
  store i32 %sub52, ptr %arrayidx60, align 8, !dbg !1805
  %6 = load i32, ptr %chroma_format_idc31, align 4, !dbg !1806
  %shl63 = shl nuw i32 1, %6, !dbg !1807
  %and = and i32 %shl63, -2, !dbg !1808
  %num_blk8x8_uv = getelementptr inbounds i8, ptr %p_Vid, i64 849096, !dbg !1809
  store i32 %and, ptr %num_blk8x8_uv, align 8, !dbg !1810
  %shr = ashr i32 %shl63, 1, !dbg !1811
  %num_uv_blocks = getelementptr inbounds i8, ptr %p_Vid, i64 849100, !dbg !1812
  store i32 %shr, ptr %num_uv_blocks, align 4, !dbg !1813
  %shl66 = shl i32 %and, 1, !dbg !1814
  %num_cdc_coeff = getelementptr inbounds i8, ptr %p_Vid, i64 849104, !dbg !1815
  store i32 %shl66, ptr %num_cdc_coeff, align 8, !dbg !1816
  %7 = load i32, ptr %chroma_format_idc31, align 4, !dbg !1817
  %8 = add i32 %7, -1, !dbg !1818
  %9 = icmp ult i32 %8, 2, !dbg !1818
  %cond75 = select i1 %9, i32 8, i32 16, !dbg !1818
  %mb_cr_size_x = getelementptr inbounds i8, ptr %p_Vid, i64 849108, !dbg !1819
  store i32 %cond75, ptr %mb_cr_size_x, align 4, !dbg !1820
  %arrayidx77 = getelementptr inbounds i8, ptr %p_Vid, i64 849140, !dbg !1821
  store i32 %cond75, ptr %arrayidx77, align 4, !dbg !1822
  %arrayidx80 = getelementptr inbounds i8, ptr %p_Vid, i64 849132, !dbg !1823
  store i32 %cond75, ptr %arrayidx80, align 4, !dbg !1824
  %10 = load i32, ptr %chroma_format_idc31, align 4, !dbg !1825
  %11 = and i32 %10, -2, !dbg !1826
  %.not = icmp eq i32 %11, 2, !dbg !1826
  %cond92 = select i1 %.not, i32 16, i32 8, !dbg !1826
  %mb_cr_size_y = getelementptr inbounds i8, ptr %p_Vid, i64 849112, !dbg !1827
  store i32 %cond92, ptr %mb_cr_size_y, align 8, !dbg !1828
  %arrayidx95 = getelementptr inbounds i8, ptr %p_Vid, i64 849144, !dbg !1829
  store i32 %cond92, ptr %arrayidx95, align 4, !dbg !1830
  %arrayidx98 = getelementptr inbounds i8, ptr %p_Vid, i64 849136, !dbg !1831
  store i32 %cond92, ptr %arrayidx98, align 4, !dbg !1832
  %cond102 = select i1 %9, i32 7, i32 3, !dbg !1833
  %subpel_x = getelementptr inbounds i8, ptr %p_Vid, i64 849196, !dbg !1834
  store i32 %cond102, ptr %subpel_x, align 4, !dbg !1835
  %cond106 = select i1 %.not, i32 3, i32 7, !dbg !1836
  %subpel_y = getelementptr inbounds i8, ptr %p_Vid, i64 849200, !dbg !1837
  store i32 %cond106, ptr %subpel_y, align 8, !dbg !1838
  %cond110 = select i1 %9, i32 3, i32 2, !dbg !1839
  %cond114 = select i1 %.not, i32 2, i32 3, !dbg !1840
  %add = add nuw nsw i32 %cond114, %cond110, !dbg !1841
  %12 = lshr exact i32 %cond75, 2, !dbg !1842
  %13 = lshr exact i32 %cond92, 2, !dbg !1843
  br label %if.end145, !dbg !1844

if.else117:                                       ; preds = %if.end
  %bitdepth_chroma_qp_scale118 = getelementptr inbounds i8, ptr %p_Vid, i64 849056, !dbg !1845
  store i32 0, ptr %bitdepth_chroma_qp_scale118, align 8, !dbg !1847
  %arrayidx120 = getelementptr inbounds i8, ptr %p_Vid, i64 849076, !dbg !1848
  store i32 0, ptr %arrayidx120, align 4, !dbg !1849
  %arrayidx122 = getelementptr inbounds i8, ptr %p_Vid, i64 849080, !dbg !1850
  store i32 0, ptr %arrayidx122, align 8, !dbg !1851
  %num_blk8x8_uv123 = getelementptr inbounds i8, ptr %p_Vid, i64 849096, !dbg !1852
  %arrayidx131 = getelementptr inbounds i8, ptr %p_Vid, i64 849132, !dbg !1853
  %subpel_x140 = getelementptr inbounds i8, ptr %p_Vid, i64 849196, !dbg !1854
  store i32 0, ptr %subpel_x140, align 4, !dbg !1855
  %subpel_y141 = getelementptr inbounds i8, ptr %p_Vid, i64 849200, !dbg !1856
  store i32 0, ptr %subpel_y141, align 8, !dbg !1857
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %num_blk8x8_uv123, i8 0, i64 20, i1 false), !dbg !1858
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %arrayidx131, i8 0, i64 16, i1 false), !dbg !1859
  br label %if.end145

if.end145:                                        ; preds = %if.else117, %if.then34
  %shr168 = phi i32 [ 0, %if.else117 ], [ %13, %if.then34 ], !dbg !1860
  %shr158 = phi i32 [ 0, %if.else117 ], [ %12, %if.then34 ], !dbg !1861
  %cond110.sink = phi i32 [ 0, %if.else117 ], [ %cond110, %if.then34 ], !dbg !1862
  %cond114.sink = phi i32 [ 0, %if.else117 ], [ %cond114, %if.then34 ], !dbg !1862
  %add.sink = phi i32 [ 0, %if.else117 ], [ %add, %if.then34 ], !dbg !1862
  %14 = getelementptr inbounds i8, ptr %p_Vid, i64 849204, !dbg !1862
  store i32 %cond110.sink, ptr %14, align 4, !dbg !1862
  %15 = getelementptr inbounds i8, ptr %p_Vid, i64 849208, !dbg !1862
  store i32 %cond114.sink, ptr %15, align 8, !dbg !1862
  %16 = getelementptr inbounds i8, ptr %p_Vid, i64 849212, !dbg !1862
  store i32 %add.sink, ptr %16, align 4, !dbg !1862
  %mb_size_blk = getelementptr inbounds i8, ptr %p_Vid, i64 849148, !dbg !1863
  %arrayidx151 = getelementptr inbounds i8, ptr %p_Vid, i64 849152, !dbg !1864
  store i32 4, ptr %arrayidx151, align 4, !dbg !1865
  store i32 4, ptr %mb_size_blk, align 4, !dbg !1866
  %arrayidx156 = getelementptr inbounds i8, ptr %p_Vid, i64 849132, !dbg !1861
  %arrayidx160 = getelementptr inbounds i8, ptr %p_Vid, i64 849164, !dbg !1867
  store i32 %shr158, ptr %arrayidx160, align 4, !dbg !1868
  %arrayidx163 = getelementptr inbounds i8, ptr %p_Vid, i64 849156, !dbg !1869
  store i32 %shr158, ptr %arrayidx163, align 4, !dbg !1870
  %arrayidx167 = getelementptr inbounds i8, ptr %p_Vid, i64 849136, !dbg !1860
  %arrayidx171 = getelementptr inbounds i8, ptr %p_Vid, i64 849168, !dbg !1871
  store i32 %shr168, ptr %arrayidx171, align 4, !dbg !1872
  %arrayidx174 = getelementptr inbounds i8, ptr %p_Vid, i64 849160, !dbg !1873
  store i32 %shr168, ptr %arrayidx174, align 4, !dbg !1874
  %call = tail call i32 @CeilLog2_sf(i32 noundef 16) #18, !dbg !1875
  %mb_size_shift = getelementptr inbounds i8, ptr %p_Vid, i64 849172, !dbg !1876
  %arrayidx179 = getelementptr inbounds i8, ptr %p_Vid, i64 849176, !dbg !1877
  store i32 %call, ptr %arrayidx179, align 4, !dbg !1878
  store i32 %call, ptr %mb_size_shift, align 4, !dbg !1879
  %17 = load i32, ptr %arrayidx156, align 4, !dbg !1880
  %call186 = tail call i32 @CeilLog2_sf(i32 noundef %17) #18, !dbg !1881
  %arrayidx188 = getelementptr inbounds i8, ptr %p_Vid, i64 849188, !dbg !1882
  store i32 %call186, ptr %arrayidx188, align 4, !dbg !1883
  %arrayidx191 = getelementptr inbounds i8, ptr %p_Vid, i64 849180, !dbg !1884
  store i32 %call186, ptr %arrayidx191, align 4, !dbg !1885
  %18 = load i32, ptr %arrayidx167, align 4, !dbg !1886
  %call196 = tail call i32 @CeilLog2_sf(i32 noundef %18) #18, !dbg !1887
  %arrayidx199 = getelementptr inbounds i8, ptr %p_Vid, i64 849192, !dbg !1888
  store i32 %call196, ptr %arrayidx199, align 4, !dbg !1889
  %arrayidx202 = getelementptr inbounds i8, ptr %p_Vid, i64 849184, !dbg !1890
  store i32 %call196, ptr %arrayidx202, align 4, !dbg !1891
  ret void, !dbg !1892
}

declare !dbg !1893 i32 @CeilLog2_sf(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @AllocPartition(i32 noundef %n) local_unnamed_addr #3 !dbg !1896 {
entry:
    #dbg_value(i32 %n, !1900, !DIExpression(), !1904)
  %conv = sext i32 %n to i64, !dbg !1905
  %call = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 48) #19, !dbg !1906
    #dbg_value(ptr %call, !1901, !DIExpression(), !1904)
  %cmp = icmp eq ptr %call, null, !dbg !1907
  br i1 %cmp, label %if.then, label %for.cond.preheader, !dbg !1909

for.cond.preheader:                               ; preds = %entry
    #dbg_value(i32 0, !1903, !DIExpression(), !1904)
  %cmp333 = icmp sgt i32 %n, 0, !dbg !1910
  br i1 %cmp333, label %for.body.preheader, label %for.end, !dbg !1913

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext nneg i32 %n to i64, !dbg !1910
  br label %for.body, !dbg !1913

if.then:                                          ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) @errortext, ptr noundef nonnull align 1 dereferenceable(60) @.str.1, i64 60, i1 false), !dbg !1914
    #dbg_value(ptr @errortext, !1715, !DIExpression(), !1916)
    #dbg_value(i32 100, !1716, !DIExpression(), !1916)
  %0 = load ptr, ptr @stderr, align 8, !dbg !1918
  %call.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @errortext) #16, !dbg !1919
  tail call void @exit(i32 noundef 100) #17, !dbg !1920
  unreachable, !dbg !1920

for.cond:                                         ; preds = %if.end11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1921
    #dbg_value(i64 %indvars.iv.next, !1903, !DIExpression(), !1904)
    #dbg_value(i64 %indvars.iv.next, !1903, !DIExpression(), !1904)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1910
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1913, !llvm.loop !1922

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.cond ]
    #dbg_value(i64 %indvars.iv, !1903, !DIExpression(), !1904)
  %arrayidx = getelementptr inbounds %struct.datapartition, ptr %call, i64 %indvars.iv, !dbg !1924
    #dbg_value(ptr %arrayidx, !1902, !DIExpression(), !1904)
  %call5 = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #19, !dbg !1926
  store ptr %call5, ptr %arrayidx, align 8, !dbg !1927
  %cmp7 = icmp eq ptr %call5, null, !dbg !1928
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !1930

if.then9:                                         ; preds = %for.body
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(55) @errortext, ptr noundef nonnull align 1 dereferenceable(55) @.str.2, i64 55, i1 false), !dbg !1931
    #dbg_value(ptr @errortext, !1715, !DIExpression(), !1933)
    #dbg_value(i32 100, !1716, !DIExpression(), !1933)
  %1 = load ptr, ptr @stderr, align 8, !dbg !1935
  %call.i29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @errortext) #16, !dbg !1936
  tail call void @exit(i32 noundef 100) #17, !dbg !1937
  unreachable, !dbg !1937

if.end11:                                         ; preds = %for.body
  %call12 = tail call noalias dereferenceable_or_null(8000000) ptr @calloc(i64 noundef 8000000, i64 noundef 1) #19, !dbg !1938
  %streamBuffer = getelementptr inbounds i8, ptr %call5, i64 16, !dbg !1939
  store ptr %call12, ptr %streamBuffer, align 8, !dbg !1940
  %cmp16 = icmp eq ptr %call12, null, !dbg !1941
    #dbg_value(i64 %indvars.iv, !1903, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1904)
  br i1 %cmp16, label %if.then18, label %for.cond, !dbg !1943

if.then18:                                        ; preds = %if.end11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(58) @errortext, ptr noundef nonnull align 1 dereferenceable(58) @.str.3, i64 58, i1 false), !dbg !1944
    #dbg_value(ptr @errortext, !1715, !DIExpression(), !1946)
    #dbg_value(i32 100, !1716, !DIExpression(), !1946)
  %2 = load ptr, ptr @stderr, align 8, !dbg !1948
  %call.i31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @errortext) #16, !dbg !1949
  tail call void @exit(i32 noundef 100) #17, !dbg !1950
  unreachable, !dbg !1950

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  ret ptr %call, !dbg !1951
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !1952 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !1955 noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @FreePartition(ptr nocapture noundef %dp, i32 noundef %n) local_unnamed_addr #3 !dbg !1959 {
entry:
    #dbg_value(ptr %dp, !1963, !DIExpression(), !1966)
    #dbg_value(i32 %n, !1964, !DIExpression(), !1966)
    #dbg_value(i32 0, !1965, !DIExpression(), !1966)
  %cmp9 = icmp sgt i32 %n, 0, !dbg !1967
  br i1 %cmp9, label %for.body.preheader, label %for.end, !dbg !1970

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext nneg i32 %n to i64, !dbg !1967
  br label %for.body, !dbg !1970

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
    #dbg_value(i64 %indvars.iv, !1965, !DIExpression(), !1966)
  %arrayidx = getelementptr inbounds %struct.datapartition, ptr %dp, i64 %indvars.iv, !dbg !1971
  %0 = load ptr, ptr %arrayidx, align 8, !dbg !1973
  %streamBuffer = getelementptr inbounds i8, ptr %0, i64 16, !dbg !1974
  %1 = load ptr, ptr %streamBuffer, align 8, !dbg !1974
  tail call void @free(ptr noundef %1) #18, !dbg !1975
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !1976
  tail call void @free(ptr noundef %2) #18, !dbg !1977
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1978
    #dbg_value(i64 %indvars.iv.next, !1965, !DIExpression(), !1966)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1967
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1970, !llvm.loop !1979

for.end:                                          ; preds = %for.body, %entry
  tail call void @free(ptr noundef %dp) #18, !dbg !1981
  ret void, !dbg !1982
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @malloc_slice(ptr nocapture noundef readonly %p_Inp, ptr nocapture noundef readnone %p_Vid) local_unnamed_addr #3 !dbg !1983 {
entry:
    #dbg_value(ptr %p_Inp, !1987, !DIExpression(), !1993)
    #dbg_value(ptr %p_Vid, !1988, !DIExpression(), !1993)
    #dbg_value(i32 0, !1991, !DIExpression(), !1993)
  %call = tail call noalias dereferenceable_or_null(13648) ptr @calloc(i64 noundef 1, i64 noundef 13648) #19, !dbg !1994
    #dbg_value(ptr %call, !1992, !DIExpression(), !1993)
  %cmp = icmp eq ptr %call, null, !dbg !1995
  br i1 %cmp, label %if.then, label %if.end, !dbg !1997

if.then:                                          ; preds = %entry
  %FileFormat = getelementptr inbounds i8, ptr %p_Inp, i64 768, !dbg !1998
  %0 = load i32, ptr %FileFormat, align 8, !dbg !1998
  %call1 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.4, i32 noundef %0) #18, !dbg !2000
    #dbg_value(ptr @errortext, !1715, !DIExpression(), !2001)
    #dbg_value(i32 100, !1716, !DIExpression(), !2001)
  %1 = load ptr, ptr @stderr, align 8, !dbg !2003
  %call.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @errortext) #16, !dbg !2004
  tail call void @exit(i32 noundef 100) #17, !dbg !2005
  unreachable, !dbg !2005

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @create_contexts_MotionInfo() #18, !dbg !2006
  %mot_ctx = getelementptr inbounds i8, ptr %call, i64 320, !dbg !2007
  store ptr %call2, ptr %mot_ctx, align 8, !dbg !2008
  %call3 = tail call ptr @create_contexts_TextureInfo() #18, !dbg !2009
  %tex_ctx = getelementptr inbounds i8, ptr %call, i64 328, !dbg !2010
  store ptr %call3, ptr %tex_ctx, align 8, !dbg !2011
  %max_part_nr = getelementptr inbounds i8, ptr %call, i64 196, !dbg !2012
  store i32 3, ptr %max_part_nr, align 4, !dbg !2013
  %call5 = tail call ptr @AllocPartition(i32 noundef 3), !dbg !2014
  %partArr = getelementptr inbounds i8, ptr %call, i64 312, !dbg !2015
  store ptr %call5, ptr %partArr, align 8, !dbg !2016
  %wp_weight = getelementptr inbounds i8, ptr %call, i64 13280, !dbg !2017
  %call6 = tail call i32 @get_mem3Dint(ptr noundef nonnull %wp_weight, i32 noundef 2, i32 noundef 32, i32 noundef 3) #18, !dbg !2018
    #dbg_value(i32 %call6, !1991, !DIExpression(), !1993)
  %wp_offset = getelementptr inbounds i8, ptr %call, i64 13288, !dbg !2019
  %call7 = tail call i32 @get_mem3Dint(ptr noundef nonnull %wp_offset, i32 noundef 6, i32 noundef 32, i32 noundef 3) #18, !dbg !2020
    #dbg_value(!DIArgList(i32 %call6, i32 %call7), !1991, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1993)
  %wbp_weight = getelementptr inbounds i8, ptr %call, i64 13296, !dbg !2021
  %call9 = tail call i32 @get_mem4Dint(ptr noundef nonnull %wbp_weight, i32 noundef 6, i32 noundef 32, i32 noundef 32, i32 noundef 3) #18, !dbg !2022
    #dbg_value(!DIArgList(i32 %call6, i32 %call9, i32 %call7), !1991, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1993)
  %mb_pred = getelementptr inbounds i8, ptr %call, i64 1248, !dbg !2023
  %call11 = tail call i32 @get_mem3Dpel(ptr noundef nonnull %mb_pred, i32 noundef 3, i32 noundef 16, i32 noundef 16) #18, !dbg !2024
    #dbg_value(!DIArgList(i32 %call6, i32 %call11, i32 %call9, i32 %call7), !1991, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1993)
  %mb_rec = getelementptr inbounds i8, ptr %call, i64 1256, !dbg !2025
  %call13 = tail call i32 @get_mem3Dpel(ptr noundef nonnull %mb_rec, i32 noundef 3, i32 noundef 16, i32 noundef 16) #18, !dbg !2026
    #dbg_value(!DIArgList(i32 %call6, i32 %call13, i32 %call11, i32 %call9, i32 %call7), !1991, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1993)
  %mb_rres = getelementptr inbounds i8, ptr %call, i64 1264, !dbg !2027
  %call15 = tail call i32 @get_mem3Dint(ptr noundef nonnull %mb_rres, i32 noundef 3, i32 noundef 16, i32 noundef 16) #18, !dbg !2028
    #dbg_value(!DIArgList(i32 %call6, i32 %call15, i32 %call13, i32 %call11, i32 %call9, i32 %call7), !1991, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1993)
  %cof = getelementptr inbounds i8, ptr %call, i64 1272, !dbg !2029
  %call17 = tail call i32 @get_mem3Dint(ptr noundef nonnull %cof, i32 noundef 3, i32 noundef 16, i32 noundef 16) #18, !dbg !2030
    #dbg_value(!DIArgList(i32 %call6, i32 %call17, i32 %call15, i32 %call13, i32 %call11, i32 %call9, i32 %call7), !1991, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 6, DW_OP_plus, DW_OP_LLVM_arg, 5, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1993)
  %call19 = tail call i32 @allocate_pred_mem(ptr noundef nonnull %call) #18, !dbg !2031
  %view_id = getelementptr inbounds i8, ptr %call, i64 1176, !dbg !2032
  store i32 -1, ptr %view_id, align 8, !dbg !2033
  %inter_view_flag = getelementptr inbounds i8, ptr %call, i64 1180, !dbg !2034
  store i32 0, ptr %inter_view_flag, align 4, !dbg !2035
  %anchor_pic_flag = getelementptr inbounds i8, ptr %call, i64 1184, !dbg !2036
  store i32 0, ptr %anchor_pic_flag, align 8, !dbg !2037
    #dbg_value(i32 0, !1989, !DIExpression(), !1993)
  %ref_flag = getelementptr inbounds i8, ptr %call, i64 13340
    #dbg_value(i32 0, !1989, !DIExpression(), !1993)
    #dbg_value(i64 0, !1989, !DIExpression(), !1993)
    #dbg_value(i64 1, !1989, !DIExpression(), !1993)
    #dbg_value(i64 2, !1989, !DIExpression(), !1993)
    #dbg_value(i64 3, !1989, !DIExpression(), !1993)
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %ref_flag, align 4, !dbg !2038
    #dbg_value(i64 4, !1989, !DIExpression(), !1993)
  %arrayidx.4 = getelementptr inbounds i8, ptr %call, i64 13356, !dbg !2042
    #dbg_value(i64 5, !1989, !DIExpression(), !1993)
    #dbg_value(i64 6, !1989, !DIExpression(), !1993)
    #dbg_value(i64 7, !1989, !DIExpression(), !1993)
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %arrayidx.4, align 4, !dbg !2038
    #dbg_value(i64 8, !1989, !DIExpression(), !1993)
  %arrayidx.8 = getelementptr inbounds i8, ptr %call, i64 13372, !dbg !2042
    #dbg_value(i64 9, !1989, !DIExpression(), !1993)
    #dbg_value(i64 10, !1989, !DIExpression(), !1993)
    #dbg_value(i64 11, !1989, !DIExpression(), !1993)
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %arrayidx.8, align 4, !dbg !2038
    #dbg_value(i64 12, !1989, !DIExpression(), !1993)
  %arrayidx.12 = getelementptr inbounds i8, ptr %call, i64 13388, !dbg !2042
    #dbg_value(i64 13, !1989, !DIExpression(), !1993)
    #dbg_value(i64 14, !1989, !DIExpression(), !1993)
    #dbg_value(i64 15, !1989, !DIExpression(), !1993)
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %arrayidx.12, align 4, !dbg !2038
    #dbg_value(i64 16, !1989, !DIExpression(), !1993)
  %arrayidx.16 = getelementptr inbounds i8, ptr %call, i64 13404, !dbg !2042
  store i32 1, ptr %arrayidx.16, align 4, !dbg !2038
    #dbg_value(i64 17, !1989, !DIExpression(), !1993)
  %listX = getelementptr inbounds i8, ptr %call, i64 264
    #dbg_value(i32 0, !1989, !DIExpression(), !1993)
    #dbg_value(i64 0, !1989, !DIExpression(), !1993)
  %call24 = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #19, !dbg !2043
  store ptr %call24, ptr %listX, align 8, !dbg !2047
  %cmp30 = icmp eq ptr %call24, null, !dbg !2048
  br i1 %cmp30, label %if.then31, label %for.inc33, !dbg !2050

if.then31:                                        ; preds = %if.end
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #18, !dbg !2051
  br label %for.inc33, !dbg !2051

for.inc33:                                        ; preds = %if.end, %if.then31
    #dbg_value(i64 1, !1989, !DIExpression(), !1993)
  %call24.1 = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #19, !dbg !2043
  %arrayidx26.1 = getelementptr inbounds i8, ptr %call, i64 272, !dbg !2052
  store ptr %call24.1, ptr %arrayidx26.1, align 8, !dbg !2047
  %cmp30.1 = icmp eq ptr %call24.1, null, !dbg !2048
  br i1 %cmp30.1, label %if.then31.1, label %for.inc33.1, !dbg !2050

if.then31.1:                                      ; preds = %for.inc33
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #18, !dbg !2051
  br label %for.inc33.1, !dbg !2051

for.inc33.1:                                      ; preds = %if.then31.1, %for.inc33
    #dbg_value(i64 2, !1989, !DIExpression(), !1993)
  %call24.2 = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #19, !dbg !2043
  %arrayidx26.2 = getelementptr inbounds i8, ptr %call, i64 280, !dbg !2052
  store ptr %call24.2, ptr %arrayidx26.2, align 8, !dbg !2047
  %cmp30.2 = icmp eq ptr %call24.2, null, !dbg !2048
  br i1 %cmp30.2, label %if.then31.2, label %for.inc33.2, !dbg !2050

if.then31.2:                                      ; preds = %for.inc33.1
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #18, !dbg !2051
  br label %for.inc33.2, !dbg !2051

for.inc33.2:                                      ; preds = %if.then31.2, %for.inc33.1
    #dbg_value(i64 3, !1989, !DIExpression(), !1993)
  %call24.3 = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #19, !dbg !2043
  %arrayidx26.3 = getelementptr inbounds i8, ptr %call, i64 288, !dbg !2052
  store ptr %call24.3, ptr %arrayidx26.3, align 8, !dbg !2047
  %cmp30.3 = icmp eq ptr %call24.3, null, !dbg !2048
  br i1 %cmp30.3, label %if.then31.3, label %for.inc33.3, !dbg !2050

if.then31.3:                                      ; preds = %for.inc33.2
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #18, !dbg !2051
  br label %for.inc33.3, !dbg !2051

for.inc33.3:                                      ; preds = %if.then31.3, %for.inc33.2
    #dbg_value(i64 4, !1989, !DIExpression(), !1993)
  %call24.4 = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #19, !dbg !2043
  %arrayidx26.4 = getelementptr inbounds i8, ptr %call, i64 296, !dbg !2052
  store ptr %call24.4, ptr %arrayidx26.4, align 8, !dbg !2047
  %cmp30.4 = icmp eq ptr %call24.4, null, !dbg !2048
  br i1 %cmp30.4, label %if.then31.4, label %for.inc33.4, !dbg !2050

if.then31.4:                                      ; preds = %for.inc33.3
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #18, !dbg !2051
  br label %for.inc33.4, !dbg !2051

for.inc33.4:                                      ; preds = %if.then31.4, %for.inc33.3
    #dbg_value(i64 5, !1989, !DIExpression(), !1993)
  %call24.5 = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #19, !dbg !2043
  %arrayidx26.5 = getelementptr inbounds i8, ptr %call, i64 304, !dbg !2052
  store ptr %call24.5, ptr %arrayidx26.5, align 8, !dbg !2047
  %cmp30.5 = icmp eq ptr %call24.5, null, !dbg !2048
  br i1 %cmp30.5, label %if.then31.5, label %for.inc33.5, !dbg !2050

if.then31.5:                                      ; preds = %for.inc33.4
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #18, !dbg !2051
  br label %for.inc33.5, !dbg !2051

for.inc33.5:                                      ; preds = %if.then31.5, %for.inc33.4
    #dbg_value(i64 6, !1989, !DIExpression(), !1993)
  %listXsize = getelementptr i8, ptr %call, i64 256
    #dbg_value(i32 0, !1990, !DIExpression(), !1993)
  br label %for.cond39.preheader, !dbg !2053

for.cond39.preheader:                             ; preds = %for.inc33.5, %for.cond39.preheader
  %indvars.iv = phi i64 [ 0, %for.inc33.5 ], [ %indvars.iv.next, %for.cond39.preheader ]
    #dbg_value(i64 %indvars.iv, !1990, !DIExpression(), !1993)
  %arrayidx44 = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %indvars.iv
    #dbg_value(i32 0, !1989, !DIExpression(), !1993)
    #dbg_value(i64 0, !1989, !DIExpression(), !1993)
  %2 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  store ptr null, ptr %2, align 8, !dbg !2061
    #dbg_value(i64 1, !1989, !DIExpression(), !1993)
  %3 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.1 = getelementptr inbounds i8, ptr %3, i64 8, !dbg !2055
  store ptr null, ptr %arrayidx46.1, align 8, !dbg !2061
    #dbg_value(i64 2, !1989, !DIExpression(), !1993)
  %4 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.2 = getelementptr inbounds i8, ptr %4, i64 16, !dbg !2055
  store ptr null, ptr %arrayidx46.2, align 8, !dbg !2061
    #dbg_value(i64 3, !1989, !DIExpression(), !1993)
  %5 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.3 = getelementptr inbounds i8, ptr %5, i64 24, !dbg !2055
  store ptr null, ptr %arrayidx46.3, align 8, !dbg !2061
    #dbg_value(i64 4, !1989, !DIExpression(), !1993)
  %6 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.4 = getelementptr inbounds i8, ptr %6, i64 32, !dbg !2055
  store ptr null, ptr %arrayidx46.4, align 8, !dbg !2061
    #dbg_value(i64 5, !1989, !DIExpression(), !1993)
  %7 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.5 = getelementptr inbounds i8, ptr %7, i64 40, !dbg !2055
  store ptr null, ptr %arrayidx46.5, align 8, !dbg !2061
    #dbg_value(i64 6, !1989, !DIExpression(), !1993)
  %8 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.6 = getelementptr inbounds i8, ptr %8, i64 48, !dbg !2055
  store ptr null, ptr %arrayidx46.6, align 8, !dbg !2061
    #dbg_value(i64 7, !1989, !DIExpression(), !1993)
  %9 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.7 = getelementptr inbounds i8, ptr %9, i64 56, !dbg !2055
  store ptr null, ptr %arrayidx46.7, align 8, !dbg !2061
    #dbg_value(i64 8, !1989, !DIExpression(), !1993)
  %10 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.8 = getelementptr inbounds i8, ptr %10, i64 64, !dbg !2055
  store ptr null, ptr %arrayidx46.8, align 8, !dbg !2061
    #dbg_value(i64 9, !1989, !DIExpression(), !1993)
  %11 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.9 = getelementptr inbounds i8, ptr %11, i64 72, !dbg !2055
  store ptr null, ptr %arrayidx46.9, align 8, !dbg !2061
    #dbg_value(i64 10, !1989, !DIExpression(), !1993)
  %12 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.10 = getelementptr inbounds i8, ptr %12, i64 80, !dbg !2055
  store ptr null, ptr %arrayidx46.10, align 8, !dbg !2061
    #dbg_value(i64 11, !1989, !DIExpression(), !1993)
  %13 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.11 = getelementptr inbounds i8, ptr %13, i64 88, !dbg !2055
  store ptr null, ptr %arrayidx46.11, align 8, !dbg !2061
    #dbg_value(i64 12, !1989, !DIExpression(), !1993)
  %14 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.12 = getelementptr inbounds i8, ptr %14, i64 96, !dbg !2055
  store ptr null, ptr %arrayidx46.12, align 8, !dbg !2061
    #dbg_value(i64 13, !1989, !DIExpression(), !1993)
  %15 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.13 = getelementptr inbounds i8, ptr %15, i64 104, !dbg !2055
  store ptr null, ptr %arrayidx46.13, align 8, !dbg !2061
    #dbg_value(i64 14, !1989, !DIExpression(), !1993)
  %16 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.14 = getelementptr inbounds i8, ptr %16, i64 112, !dbg !2055
  store ptr null, ptr %arrayidx46.14, align 8, !dbg !2061
    #dbg_value(i64 15, !1989, !DIExpression(), !1993)
  %17 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.15 = getelementptr inbounds i8, ptr %17, i64 120, !dbg !2055
  store ptr null, ptr %arrayidx46.15, align 8, !dbg !2061
    #dbg_value(i64 16, !1989, !DIExpression(), !1993)
  %18 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.16 = getelementptr inbounds i8, ptr %18, i64 128, !dbg !2055
  store ptr null, ptr %arrayidx46.16, align 8, !dbg !2061
    #dbg_value(i64 17, !1989, !DIExpression(), !1993)
  %19 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.17 = getelementptr inbounds i8, ptr %19, i64 136, !dbg !2055
  store ptr null, ptr %arrayidx46.17, align 8, !dbg !2061
    #dbg_value(i64 18, !1989, !DIExpression(), !1993)
  %20 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.18 = getelementptr inbounds i8, ptr %20, i64 144, !dbg !2055
  store ptr null, ptr %arrayidx46.18, align 8, !dbg !2061
    #dbg_value(i64 19, !1989, !DIExpression(), !1993)
  %21 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.19 = getelementptr inbounds i8, ptr %21, i64 152, !dbg !2055
  store ptr null, ptr %arrayidx46.19, align 8, !dbg !2061
    #dbg_value(i64 20, !1989, !DIExpression(), !1993)
  %22 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.20 = getelementptr inbounds i8, ptr %22, i64 160, !dbg !2055
  store ptr null, ptr %arrayidx46.20, align 8, !dbg !2061
    #dbg_value(i64 21, !1989, !DIExpression(), !1993)
  %23 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.21 = getelementptr inbounds i8, ptr %23, i64 168, !dbg !2055
  store ptr null, ptr %arrayidx46.21, align 8, !dbg !2061
    #dbg_value(i64 22, !1989, !DIExpression(), !1993)
  %24 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.22 = getelementptr inbounds i8, ptr %24, i64 176, !dbg !2055
  store ptr null, ptr %arrayidx46.22, align 8, !dbg !2061
    #dbg_value(i64 23, !1989, !DIExpression(), !1993)
  %25 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.23 = getelementptr inbounds i8, ptr %25, i64 184, !dbg !2055
  store ptr null, ptr %arrayidx46.23, align 8, !dbg !2061
    #dbg_value(i64 24, !1989, !DIExpression(), !1993)
  %26 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.24 = getelementptr inbounds i8, ptr %26, i64 192, !dbg !2055
  store ptr null, ptr %arrayidx46.24, align 8, !dbg !2061
    #dbg_value(i64 25, !1989, !DIExpression(), !1993)
  %27 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.25 = getelementptr inbounds i8, ptr %27, i64 200, !dbg !2055
  store ptr null, ptr %arrayidx46.25, align 8, !dbg !2061
    #dbg_value(i64 26, !1989, !DIExpression(), !1993)
  %28 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.26 = getelementptr inbounds i8, ptr %28, i64 208, !dbg !2055
  store ptr null, ptr %arrayidx46.26, align 8, !dbg !2061
    #dbg_value(i64 27, !1989, !DIExpression(), !1993)
  %29 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.27 = getelementptr inbounds i8, ptr %29, i64 216, !dbg !2055
  store ptr null, ptr %arrayidx46.27, align 8, !dbg !2061
    #dbg_value(i64 28, !1989, !DIExpression(), !1993)
  %30 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.28 = getelementptr inbounds i8, ptr %30, i64 224, !dbg !2055
  store ptr null, ptr %arrayidx46.28, align 8, !dbg !2061
    #dbg_value(i64 29, !1989, !DIExpression(), !1993)
  %31 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.29 = getelementptr inbounds i8, ptr %31, i64 232, !dbg !2055
  store ptr null, ptr %arrayidx46.29, align 8, !dbg !2061
    #dbg_value(i64 30, !1989, !DIExpression(), !1993)
  %32 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.30 = getelementptr inbounds i8, ptr %32, i64 240, !dbg !2055
  store ptr null, ptr %arrayidx46.30, align 8, !dbg !2061
    #dbg_value(i64 31, !1989, !DIExpression(), !1993)
  %33 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.31 = getelementptr inbounds i8, ptr %33, i64 248, !dbg !2055
  store ptr null, ptr %arrayidx46.31, align 8, !dbg !2061
    #dbg_value(i64 32, !1989, !DIExpression(), !1993)
  %34 = load ptr, ptr %arrayidx44, align 8, !dbg !2055
  %arrayidx46.32 = getelementptr inbounds i8, ptr %34, i64 256, !dbg !2055
  store ptr null, ptr %arrayidx46.32, align 8, !dbg !2061
    #dbg_value(i64 33, !1989, !DIExpression(), !1993)
  %arrayidx51 = getelementptr inbounds [6 x i8], ptr %listXsize, i64 0, i64 %indvars.iv, !dbg !2062
  store i8 0, ptr %arrayidx51, align 1, !dbg !2063
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2064
    #dbg_value(i64 %indvars.iv.next, !1990, !DIExpression(), !1993)
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6, !dbg !2065
  br i1 %exitcond.not, label %for.end54, label %for.cond39.preheader, !dbg !2053, !llvm.loop !2066

for.end54:                                        ; preds = %for.cond39.preheader
  ret ptr %call, !dbg !2068
}

declare !dbg !2069 ptr @create_contexts_MotionInfo() local_unnamed_addr #6

declare !dbg !2073 ptr @create_contexts_TextureInfo() local_unnamed_addr #6

declare !dbg !2076 i32 @get_mem3Dint(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !2080 i32 @get_mem4Dint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !2084 i32 @get_mem3Dpel(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !2088 i32 @allocate_pred_mem(ptr noundef) local_unnamed_addr #6

declare !dbg !2092 void @no_mem_exit(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @init_global_buffers(ptr noundef %p_Vid) local_unnamed_addr #3 !dbg !2095 {
entry:
    #dbg_value(ptr %p_Vid, !2099, !DIExpression(), !2102)
    #dbg_value(i32 0, !2100, !DIExpression(), !2102)
  %global_init_done = getelementptr inbounds i8, ptr %p_Vid, i64 856012, !dbg !2103
  %0 = load i32, ptr %global_init_done, align 4, !dbg !2103
  %tobool.not = icmp eq i32 %0, 0, !dbg !2105
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !2106

if.then:                                          ; preds = %entry
  tail call void @free_global_buffers(ptr noundef nonnull %p_Vid), !dbg !2107
  br label %if.end, !dbg !2109

if.end:                                           ; preds = %if.then, %entry
  %imgY_ref = getelementptr inbounds i8, ptr %p_Vid, i64 856016, !dbg !2110
  %height = getelementptr inbounds i8, ptr %p_Vid, i64 848784, !dbg !2111
  %1 = load i32, ptr %height, align 8, !dbg !2111
  %width = getelementptr inbounds i8, ptr %p_Vid, i64 848780, !dbg !2112
  %2 = load i32, ptr %width, align 4, !dbg !2112
  %call = tail call i32 @get_mem2Dpel(ptr noundef nonnull %imgY_ref, i32 noundef %1, i32 noundef %2) #18, !dbg !2113
    #dbg_value(i32 %call, !2100, !DIExpression(), !2102)
  %active_sps = getelementptr inbounds i8, ptr %p_Vid, i64 16, !dbg !2114
  %3 = load ptr, ptr %active_sps, align 8, !dbg !2114
  %chroma_format_idc = getelementptr inbounds i8, ptr %3, i64 36, !dbg !2116
  %4 = load i32, ptr %chroma_format_idc, align 4, !dbg !2116
  %cmp.not = icmp eq i32 %4, 0, !dbg !2117
  %imgUV_ref4 = getelementptr inbounds i8, ptr %p_Vid, i64 856024, !dbg !2118
  br i1 %cmp.not, label %if.else, label %if.then1, !dbg !2119

if.then1:                                         ; preds = %if.end
  %height_cr = getelementptr inbounds i8, ptr %p_Vid, i64 848792, !dbg !2120
  %5 = load i32, ptr %height_cr, align 8, !dbg !2120
  %width_cr = getelementptr inbounds i8, ptr %p_Vid, i64 848788, !dbg !2121
  %6 = load i32, ptr %width_cr, align 4, !dbg !2121
  %call2 = tail call i32 @get_mem3Dpel(ptr noundef nonnull %imgUV_ref4, i32 noundef 2, i32 noundef %5, i32 noundef %6) #18, !dbg !2122
  %add3 = add nsw i32 %call2, %call, !dbg !2123
    #dbg_value(i32 %add3, !2100, !DIExpression(), !2102)
  br label %if.end5, !dbg !2124

if.else:                                          ; preds = %if.end
  store ptr null, ptr %imgUV_ref4, align 8, !dbg !2125
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then1
  %memory_size.0 = phi i32 [ %add3, %if.then1 ], [ %call, %if.else ], !dbg !2102
    #dbg_value(i32 %memory_size.0, !2100, !DIExpression(), !2102)
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %p_Vid, i64 849280, !dbg !2126
  %7 = load i32, ptr %separate_colour_plane_flag, align 8, !dbg !2126
  %cmp6.not = icmp eq i32 %7, 0, !dbg !2128
  %FrameSizeInMbs15 = getelementptr inbounds i8, ptr %p_Vid, i64 849016
  br i1 %cmp6.not, label %if.else14, label %for.cond.preheader, !dbg !2129

for.cond.preheader:                               ; preds = %if.end5
  %mb_data_JV = getelementptr inbounds i8, ptr %p_Vid, i64 848896
    #dbg_value(i32 0, !2101, !DIExpression(), !2102)
    #dbg_value(i64 0, !2101, !DIExpression(), !2102)
  %8 = load i32, ptr %FrameSizeInMbs15, align 8, !dbg !2130
  %conv = zext i32 %8 to i64, !dbg !2136
  %call9 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 480) #19, !dbg !2137
  store ptr %call9, ptr %mb_data_JV, align 8, !dbg !2138
  %cmp10 = icmp eq ptr %call9, null, !dbg !2139
  br i1 %cmp10, label %if.then12, label %for.inc, !dbg !2140

if.then12:                                        ; preds = %for.cond.preheader
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #18, !dbg !2141
  %.pre = load i32, ptr %FrameSizeInMbs15, align 8, !dbg !2130
  %.pre230 = zext i32 %.pre to i64, !dbg !2136
  br label %for.inc, !dbg !2141

for.inc:                                          ; preds = %for.cond.preheader, %if.then12
  %conv.1.pre-phi = phi i64 [ %conv, %for.cond.preheader ], [ %.pre230, %if.then12 ], !dbg !2136
    #dbg_value(i64 1, !2101, !DIExpression(), !2102)
  %call9.1 = tail call noalias ptr @calloc(i64 noundef %conv.1.pre-phi, i64 noundef 480) #19, !dbg !2137
  %arrayidx.1 = getelementptr inbounds i8, ptr %p_Vid, i64 848904, !dbg !2142
  store ptr %call9.1, ptr %arrayidx.1, align 8, !dbg !2138
  %cmp10.1 = icmp eq ptr %call9.1, null, !dbg !2139
  br i1 %cmp10.1, label %if.then12.1, label %for.inc.1, !dbg !2140

if.then12.1:                                      ; preds = %for.inc
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #18, !dbg !2141
  %.pre224 = load i32, ptr %FrameSizeInMbs15, align 8, !dbg !2130
  %.pre231 = zext i32 %.pre224 to i64, !dbg !2136
  br label %for.inc.1, !dbg !2141

for.inc.1:                                        ; preds = %if.then12.1, %for.inc
  %conv.2.pre-phi = phi i64 [ %.pre231, %if.then12.1 ], [ %conv.1.pre-phi, %for.inc ], !dbg !2136
    #dbg_value(i64 2, !2101, !DIExpression(), !2102)
  %call9.2 = tail call noalias ptr @calloc(i64 noundef %conv.2.pre-phi, i64 noundef 480) #19, !dbg !2137
  %arrayidx.2 = getelementptr inbounds i8, ptr %p_Vid, i64 848912, !dbg !2142
  store ptr %call9.2, ptr %arrayidx.2, align 8, !dbg !2138
  %cmp10.2 = icmp eq ptr %call9.2, null, !dbg !2139
  br i1 %cmp10.2, label %if.then12.2, label %for.inc.2, !dbg !2140

if.then12.2:                                      ; preds = %for.inc.1
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #18, !dbg !2141
  br label %for.inc.2, !dbg !2141

for.inc.2:                                        ; preds = %if.then12.2, %for.inc.1
    #dbg_value(i64 3, !2101, !DIExpression(), !2102)
  %mb_data = getelementptr inbounds i8, ptr %p_Vid, i64 848888, !dbg !2143
  store ptr null, ptr %mb_data, align 8, !dbg !2144
  br label %if.end23, !dbg !2145

if.else14:                                        ; preds = %if.end5
  %9 = load i32, ptr %FrameSizeInMbs15, align 8, !dbg !2146
  %conv16 = zext i32 %9 to i64, !dbg !2149
  %call17 = tail call noalias ptr @calloc(i64 noundef %conv16, i64 noundef 480) #19, !dbg !2150
  %mb_data18 = getelementptr inbounds i8, ptr %p_Vid, i64 848888, !dbg !2151
  store ptr %call17, ptr %mb_data18, align 8, !dbg !2152
  %cmp19 = icmp eq ptr %call17, null, !dbg !2153
  br i1 %cmp19, label %if.then21, label %if.end23, !dbg !2154

if.then21:                                        ; preds = %if.else14
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #18, !dbg !2155
  br label %if.end23, !dbg !2155

if.end23:                                         ; preds = %if.else14, %if.then21, %for.inc.2
  %10 = load i32, ptr %separate_colour_plane_flag, align 8, !dbg !2156
  %cmp25.not = icmp eq i32 %10, 0, !dbg !2158
  %FrameSizeInMbs45 = getelementptr inbounds i8, ptr %p_Vid, i64 849016
  br i1 %cmp25.not, label %if.else44, label %for.cond28.preheader, !dbg !2159

for.cond28.preheader:                             ; preds = %if.end23
  %intra_block_JV = getelementptr inbounds i8, ptr %p_Vid, i64 848752
    #dbg_value(i32 0, !2101, !DIExpression(), !2102)
    #dbg_value(i64 0, !2101, !DIExpression(), !2102)
  %11 = load i32, ptr %FrameSizeInMbs45, align 8, !dbg !2160
  %conv33 = zext i32 %11 to i64, !dbg !2166
  %call34 = tail call noalias ptr @calloc(i64 noundef %conv33, i64 noundef 1) #19, !dbg !2167
  store ptr %call34, ptr %intra_block_JV, align 8, !dbg !2168
  %cmp37 = icmp eq ptr %call34, null, !dbg !2169
  br i1 %cmp37, label %if.then39, label %for.inc41, !dbg !2170

if.then39:                                        ; preds = %for.cond28.preheader
  tail call void @no_mem_exit(ptr noundef nonnull @.str.7) #18, !dbg !2171
  %.pre225 = load i32, ptr %FrameSizeInMbs45, align 8, !dbg !2160
  %.pre228 = zext i32 %.pre225 to i64, !dbg !2166
  br label %for.inc41, !dbg !2171

for.inc41:                                        ; preds = %for.cond28.preheader, %if.then39
  %conv33.1.pre-phi = phi i64 [ %conv33, %for.cond28.preheader ], [ %.pre228, %if.then39 ], !dbg !2166
    #dbg_value(i64 1, !2101, !DIExpression(), !2102)
  %call34.1 = tail call noalias ptr @calloc(i64 noundef %conv33.1.pre-phi, i64 noundef 1) #19, !dbg !2167
  %arrayidx36.1 = getelementptr inbounds i8, ptr %p_Vid, i64 848760, !dbg !2172
  store ptr %call34.1, ptr %arrayidx36.1, align 8, !dbg !2168
  %cmp37.1 = icmp eq ptr %call34.1, null, !dbg !2169
  br i1 %cmp37.1, label %if.then39.1, label %for.inc41.1, !dbg !2170

if.then39.1:                                      ; preds = %for.inc41
  tail call void @no_mem_exit(ptr noundef nonnull @.str.7) #18, !dbg !2171
  %.pre226 = load i32, ptr %FrameSizeInMbs45, align 8, !dbg !2160
  %.pre229 = zext i32 %.pre226 to i64, !dbg !2166
  br label %for.inc41.1, !dbg !2171

for.inc41.1:                                      ; preds = %if.then39.1, %for.inc41
  %conv33.2.pre-phi = phi i64 [ %.pre229, %if.then39.1 ], [ %conv33.1.pre-phi, %for.inc41 ], !dbg !2166
    #dbg_value(i64 2, !2101, !DIExpression(), !2102)
  %call34.2 = tail call noalias ptr @calloc(i64 noundef %conv33.2.pre-phi, i64 noundef 1) #19, !dbg !2167
  %arrayidx36.2 = getelementptr inbounds i8, ptr %p_Vid, i64 848768, !dbg !2172
  store ptr %call34.2, ptr %arrayidx36.2, align 8, !dbg !2168
  %cmp37.2 = icmp eq ptr %call34.2, null, !dbg !2169
  br i1 %cmp37.2, label %if.then39.2, label %for.inc41.2, !dbg !2170

if.then39.2:                                      ; preds = %for.inc41.1
  tail call void @no_mem_exit(ptr noundef nonnull @.str.7) #18, !dbg !2171
  br label %for.inc41.2, !dbg !2171

for.inc41.2:                                      ; preds = %if.then39.2, %for.inc41.1
    #dbg_value(i64 3, !2101, !DIExpression(), !2102)
  %intra_block = getelementptr inbounds i8, ptr %p_Vid, i64 848744, !dbg !2173
  store ptr null, ptr %intra_block, align 8, !dbg !2174
  br label %if.end53, !dbg !2175

if.else44:                                        ; preds = %if.end23
  %12 = load i32, ptr %FrameSizeInMbs45, align 8, !dbg !2176
  %conv46 = zext i32 %12 to i64, !dbg !2179
  %call47 = tail call noalias ptr @calloc(i64 noundef %conv46, i64 noundef 1) #19, !dbg !2180
  %intra_block48 = getelementptr inbounds i8, ptr %p_Vid, i64 848744, !dbg !2181
  store ptr %call47, ptr %intra_block48, align 8, !dbg !2182
  %cmp49 = icmp eq ptr %call47, null, !dbg !2183
  br i1 %cmp49, label %if.then51, label %if.end53, !dbg !2184

if.then51:                                        ; preds = %if.else44
  tail call void @no_mem_exit(ptr noundef nonnull @.str.8) #18, !dbg !2185
  br label %if.end53, !dbg !2185

if.end53:                                         ; preds = %if.else44, %if.then51, %for.inc41.2
  %FrameSizeInMbs54 = getelementptr inbounds i8, ptr %p_Vid, i64 849016, !dbg !2186
  %13 = load i32, ptr %FrameSizeInMbs54, align 8, !dbg !2186
  %add55 = add i32 %13, 1, !dbg !2188
  %conv56 = zext i32 %add55 to i64, !dbg !2189
  %call57 = tail call noalias ptr @calloc(i64 noundef %conv56, i64 noundef 4) #19, !dbg !2190
  store ptr %call57, ptr @PicPos, align 8, !dbg !2191
  %cmp58 = icmp eq ptr %call57, null, !dbg !2192
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !2193

if.then60:                                        ; preds = %if.end53
  tail call void @no_mem_exit(ptr noundef nonnull @.str.9) #18, !dbg !2194
  %.pre227 = load i32, ptr %FrameSizeInMbs54, align 8, !dbg !2195
  br label %if.end61, !dbg !2194

if.end61:                                         ; preds = %if.then60, %if.end53
  %14 = phi i32 [ %.pre227, %if.then60 ], [ %13, %if.end53 ], !dbg !2195
    #dbg_value(i32 0, !2101, !DIExpression(), !2102)
  %cmp65.not211 = icmp slt i32 %14, 0, !dbg !2198
  br i1 %cmp65.not211, label %for.end77, label %for.body67.lr.ph, !dbg !2199

for.body67.lr.ph:                                 ; preds = %if.end61
  %PicWidthInMbs = getelementptr inbounds i8, ptr %p_Vid, i64 848996
  br label %for.body67, !dbg !2199

for.body67:                                       ; preds = %for.body67.lr.ph, %for.body67
  %indvars.iv = phi i64 [ 0, %for.body67.lr.ph ], [ %indvars.iv.next, %for.body67 ]
    #dbg_value(i64 %indvars.iv, !2101, !DIExpression(), !2102)
  %15 = load i32, ptr %PicWidthInMbs, align 4, !dbg !2200
  %16 = trunc nuw nsw i64 %indvars.iv to i32, !dbg !2202
  %rem = urem i32 %16, %15, !dbg !2202
  %conv68 = trunc i32 %rem to i16, !dbg !2203
  %17 = load ptr, ptr @PicPos, align 8, !dbg !2204
  %arrayidx70 = getelementptr inbounds %struct.BlockPos, ptr %17, i64 %indvars.iv, !dbg !2204
  store i16 %conv68, ptr %arrayidx70, align 2, !dbg !2205
  %18 = load i32, ptr %PicWidthInMbs, align 4, !dbg !2206
  %div = udiv i32 %16, %18, !dbg !2207
  %conv72 = trunc i32 %div to i16, !dbg !2208
  %19 = load ptr, ptr @PicPos, align 8, !dbg !2209
  %y = getelementptr inbounds %struct.BlockPos, ptr %19, i64 %indvars.iv, i32 1, !dbg !2210
  store i16 %conv72, ptr %y, align 2, !dbg !2211
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2212
    #dbg_value(i64 %indvars.iv.next, !2101, !DIExpression(), !2102)
  %20 = load i32, ptr %FrameSizeInMbs54, align 8, !dbg !2195
  %21 = sext i32 %20 to i64, !dbg !2198
  %cmp65.not.not = icmp slt i64 %indvars.iv, %21, !dbg !2198
  br i1 %cmp65.not.not, label %for.body67, label %for.end77, !dbg !2199, !llvm.loop !2213

for.end77:                                        ; preds = %for.body67, %if.end61
  %22 = load i32, ptr %separate_colour_plane_flag, align 8, !dbg !2215
  %cmp79.not = icmp eq i32 %22, 0, !dbg !2217
  %FrameHeightInMbs96 = getelementptr inbounds i8, ptr %p_Vid, i64 849004
  br i1 %cmp79.not, label %if.else94, label %for.cond82.preheader, !dbg !2218

for.cond82.preheader:                             ; preds = %for.end77
  %ipredmode_JV = getelementptr inbounds i8, ptr %p_Vid, i64 848808
  %PicWidthInMbs88 = getelementptr inbounds i8, ptr %p_Vid, i64 848996
    #dbg_value(i64 0, !2101, !DIExpression(), !2102)
  %23 = load i32, ptr %FrameHeightInMbs96, align 4, !dbg !2219
  %mul = shl i32 %23, 2, !dbg !2224
  %24 = load i32, ptr %PicWidthInMbs88, align 4, !dbg !2225
  %mul89 = shl i32 %24, 2, !dbg !2226
  %call90 = tail call i32 @get_mem2D(ptr noundef nonnull %ipredmode_JV, i32 noundef %mul, i32 noundef %mul89) #18, !dbg !2227
    #dbg_value(i64 1, !2101, !DIExpression(), !2102)
  %arrayidx87.1 = getelementptr inbounds i8, ptr %p_Vid, i64 848816, !dbg !2228
  %25 = load i32, ptr %FrameHeightInMbs96, align 4, !dbg !2219
  %mul.1 = shl i32 %25, 2, !dbg !2224
  %26 = load i32, ptr %PicWidthInMbs88, align 4, !dbg !2225
  %mul89.1 = shl i32 %26, 2, !dbg !2226
  %call90.1 = tail call i32 @get_mem2D(ptr noundef nonnull %arrayidx87.1, i32 noundef %mul.1, i32 noundef %mul89.1) #18, !dbg !2227
    #dbg_value(i64 2, !2101, !DIExpression(), !2102)
  %arrayidx87.2 = getelementptr inbounds i8, ptr %p_Vid, i64 848824, !dbg !2228
  %27 = load i32, ptr %FrameHeightInMbs96, align 4, !dbg !2219
  %mul.2 = shl i32 %27, 2, !dbg !2224
  %28 = load i32, ptr %PicWidthInMbs88, align 4, !dbg !2225
  %mul89.2 = shl i32 %28, 2, !dbg !2226
  %call90.2 = tail call i32 @get_mem2D(ptr noundef nonnull %arrayidx87.2, i32 noundef %mul.2, i32 noundef %mul89.2) #18, !dbg !2227
    #dbg_value(i64 3, !2101, !DIExpression(), !2102)
  %ipredmode = getelementptr inbounds i8, ptr %p_Vid, i64 848800, !dbg !2229
  store ptr null, ptr %ipredmode, align 8, !dbg !2230
  br label %if.end102, !dbg !2231

if.else94:                                        ; preds = %for.end77
  %ipredmode95 = getelementptr inbounds i8, ptr %p_Vid, i64 848800, !dbg !2232
  %29 = load i32, ptr %FrameHeightInMbs96, align 4, !dbg !2233
  %mul97 = shl i32 %29, 2, !dbg !2234
  %PicWidthInMbs98 = getelementptr inbounds i8, ptr %p_Vid, i64 848996, !dbg !2235
  %30 = load i32, ptr %PicWidthInMbs98, align 4, !dbg !2235
  %mul99 = shl i32 %30, 2, !dbg !2236
  %call100 = tail call i32 @get_mem2D(ptr noundef nonnull %ipredmode95, i32 noundef %mul97, i32 noundef %mul99) #18, !dbg !2237
  %add101 = add nsw i32 %call100, %memory_size.0, !dbg !2238
    #dbg_value(i32 %add101, !2100, !DIExpression(), !2102)
  br label %if.end102

if.end102:                                        ; preds = %if.else94, %for.cond82.preheader
  %memory_size.1 = phi i32 [ %memory_size.0, %for.cond82.preheader ], [ %add101, %if.else94 ], !dbg !2102
    #dbg_value(i32 %memory_size.1, !2100, !DIExpression(), !2102)
  %nz_coeff = getelementptr inbounds i8, ptr %p_Vid, i64 848832, !dbg !2239
  %31 = load i32, ptr %FrameSizeInMbs54, align 8, !dbg !2240
  %call104 = tail call i32 @get_mem4D(ptr noundef nonnull %nz_coeff, i32 noundef %31, i32 noundef 3, i32 noundef 4, i32 noundef 4) #18, !dbg !2241
  %add105 = add nsw i32 %call104, %memory_size.1, !dbg !2242
    #dbg_value(i32 %add105, !2100, !DIExpression(), !2102)
  %32 = load i32, ptr %separate_colour_plane_flag, align 8, !dbg !2243
  %cmp107.not = icmp eq i32 %32, 0, !dbg !2245
  %FrameHeightInMbs131 = getelementptr inbounds i8, ptr %p_Vid, i64 849004
  br i1 %cmp107.not, label %if.else129, label %for.cond110.preheader, !dbg !2246

for.cond110.preheader:                            ; preds = %if.end102
  %siblock_JV = getelementptr inbounds i8, ptr %p_Vid, i64 848848
  %PicWidthInMbs117 = getelementptr inbounds i8, ptr %p_Vid, i64 848996
    #dbg_value(i64 0, !2101, !DIExpression(), !2102)
  %33 = load i32, ptr %FrameHeightInMbs131, align 4, !dbg !2247
  %34 = load i32, ptr %PicWidthInMbs117, align 4, !dbg !2252
  %call118 = tail call i32 @get_mem2Dint(ptr noundef nonnull %siblock_JV, i32 noundef %33, i32 noundef %34) #18, !dbg !2253
  %35 = load ptr, ptr %siblock_JV, align 8, !dbg !2254
  %cmp122 = icmp eq ptr %35, null, !dbg !2256
  br i1 %cmp122, label %if.then124, label %for.inc126, !dbg !2257

if.then124:                                       ; preds = %for.cond110.preheader
  tail call void @no_mem_exit(ptr noundef nonnull @.str.10) #18, !dbg !2258
  br label %for.inc126, !dbg !2258

for.inc126:                                       ; preds = %for.cond110.preheader, %if.then124
    #dbg_value(i64 1, !2101, !DIExpression(), !2102)
  %arrayidx115.1 = getelementptr inbounds i8, ptr %p_Vid, i64 848856, !dbg !2259
  %36 = load i32, ptr %FrameHeightInMbs131, align 4, !dbg !2247
  %37 = load i32, ptr %PicWidthInMbs117, align 4, !dbg !2252
  %call118.1 = tail call i32 @get_mem2Dint(ptr noundef nonnull %arrayidx115.1, i32 noundef %36, i32 noundef %37) #18, !dbg !2253
  %38 = load ptr, ptr %arrayidx115.1, align 8, !dbg !2254
  %cmp122.1 = icmp eq ptr %38, null, !dbg !2256
  br i1 %cmp122.1, label %if.then124.1, label %for.inc126.1, !dbg !2257

if.then124.1:                                     ; preds = %for.inc126
  tail call void @no_mem_exit(ptr noundef nonnull @.str.10) #18, !dbg !2258
  br label %for.inc126.1, !dbg !2258

for.inc126.1:                                     ; preds = %if.then124.1, %for.inc126
    #dbg_value(i64 2, !2101, !DIExpression(), !2102)
  %arrayidx115.2 = getelementptr inbounds i8, ptr %p_Vid, i64 848864, !dbg !2259
  %39 = load i32, ptr %FrameHeightInMbs131, align 4, !dbg !2247
  %40 = load i32, ptr %PicWidthInMbs117, align 4, !dbg !2252
  %call118.2 = tail call i32 @get_mem2Dint(ptr noundef nonnull %arrayidx115.2, i32 noundef %39, i32 noundef %40) #18, !dbg !2253
  %41 = load ptr, ptr %arrayidx115.2, align 8, !dbg !2254
  %cmp122.2 = icmp eq ptr %41, null, !dbg !2256
  br i1 %cmp122.2, label %if.then124.2, label %for.inc126.2, !dbg !2257

if.then124.2:                                     ; preds = %for.inc126.1
  tail call void @no_mem_exit(ptr noundef nonnull @.str.10) #18, !dbg !2258
  br label %for.inc126.2, !dbg !2258

for.inc126.2:                                     ; preds = %if.then124.2, %for.inc126.1
    #dbg_value(i64 3, !2101, !DIExpression(), !2102)
  %siblock = getelementptr inbounds i8, ptr %p_Vid, i64 848840, !dbg !2260
  store ptr null, ptr %siblock, align 8, !dbg !2261
  br label %if.end135, !dbg !2262

if.else129:                                       ; preds = %if.end102
  %siblock130 = getelementptr inbounds i8, ptr %p_Vid, i64 848840, !dbg !2263
  %42 = load i32, ptr %FrameHeightInMbs131, align 4, !dbg !2265
  %PicWidthInMbs132 = getelementptr inbounds i8, ptr %p_Vid, i64 848996, !dbg !2266
  %43 = load i32, ptr %PicWidthInMbs132, align 4, !dbg !2266
  %call133 = tail call i32 @get_mem2Dint(ptr noundef nonnull %siblock130, i32 noundef %42, i32 noundef %43) #18, !dbg !2267
  %add134 = add nsw i32 %call133, %add105, !dbg !2268
    #dbg_value(i32 %add134, !2100, !DIExpression(), !2102)
  br label %if.end135

if.end135:                                        ; preds = %if.else129, %for.inc126.2
  %memory_size.2 = phi i32 [ %add105, %for.inc126.2 ], [ %add134, %if.else129 ], !dbg !2102
    #dbg_value(i32 %memory_size.2, !2100, !DIExpression(), !2102)
  tail call void @init_qp_process(ptr noundef nonnull %p_Vid) #18, !dbg !2269
  store i32 1, ptr %global_init_done, align 4, !dbg !2270
  %44 = load i32, ptr %FrameSizeInMbs54, align 8, !dbg !2271
  %oldFrameSizeInMbs = getelementptr inbounds i8, ptr %p_Vid, i64 849020, !dbg !2272
  store i32 %44, ptr %oldFrameSizeInMbs, align 4, !dbg !2273
  ret i32 %memory_size.2, !dbg !2274
}

; Function Attrs: nounwind uwtable
define dso_local void @free_global_buffers(ptr noundef %p_Vid) local_unnamed_addr #3 !dbg !2275 {
entry:
    #dbg_value(ptr %p_Vid, !2277, !DIExpression(), !2281)
  %imgY_ref = getelementptr inbounds i8, ptr %p_Vid, i64 856016, !dbg !2282
  %0 = load ptr, ptr %imgY_ref, align 8, !dbg !2282
  tail call void @free_mem2Dpel(ptr noundef %0) #18, !dbg !2283
  %imgUV_ref = getelementptr inbounds i8, ptr %p_Vid, i64 856024, !dbg !2284
  %1 = load ptr, ptr %imgUV_ref, align 8, !dbg !2284
  %tobool.not = icmp eq ptr %1, null, !dbg !2286
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !2287

if.then:                                          ; preds = %entry
  tail call void @free_mem3Dpel(ptr noundef nonnull %1) #18, !dbg !2288
  br label %if.end, !dbg !2288

if.end:                                           ; preds = %if.then, %entry
  %nz_coeff = getelementptr inbounds i8, ptr %p_Vid, i64 848832, !dbg !2289
  %2 = load ptr, ptr %nz_coeff, align 8, !dbg !2289
  tail call void @free_mem4D(ptr noundef %2) #18, !dbg !2290
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %p_Vid, i64 849280, !dbg !2291
  %3 = load i32, ptr %separate_colour_plane_flag, align 8, !dbg !2291
  %cmp.not = icmp eq i32 %3, 0, !dbg !2292
  br i1 %cmp.not, label %if.else, label %for.cond.preheader, !dbg !2293

for.cond.preheader:                               ; preds = %if.end
  %mb_data_JV = getelementptr inbounds i8, ptr %p_Vid, i64 848896
  %siblock_JV = getelementptr inbounds i8, ptr %p_Vid, i64 848848
    #dbg_value(i32 0, !2278, !DIExpression(), !2294)
  %ipredmode_JV = getelementptr inbounds i8, ptr %p_Vid, i64 848808
  %intra_block_JV = getelementptr inbounds i8, ptr %p_Vid, i64 848752
    #dbg_value(i64 0, !2278, !DIExpression(), !2294)
  %4 = load ptr, ptr %mb_data_JV, align 8, !dbg !2295
  tail call void @free(ptr noundef %4) #18, !dbg !2299
  store ptr null, ptr %mb_data_JV, align 8, !dbg !2300
  %5 = load ptr, ptr %siblock_JV, align 8, !dbg !2301
  tail call void @free_mem2Dint(ptr noundef %5) #18, !dbg !2302
  store ptr null, ptr %siblock_JV, align 8, !dbg !2303
  %6 = load ptr, ptr %ipredmode_JV, align 8, !dbg !2304
  tail call void @free_mem2D(ptr noundef %6) #18, !dbg !2305
  store ptr null, ptr %ipredmode_JV, align 8, !dbg !2306
  %7 = load ptr, ptr %intra_block_JV, align 8, !dbg !2307
  tail call void @free(ptr noundef %7) #18, !dbg !2308
  store ptr null, ptr %intra_block_JV, align 8, !dbg !2309
    #dbg_value(i64 1, !2278, !DIExpression(), !2294)
  %arrayidx.1 = getelementptr inbounds i8, ptr %p_Vid, i64 848904, !dbg !2295
  %8 = load ptr, ptr %arrayidx.1, align 8, !dbg !2295
  tail call void @free(ptr noundef %8) #18, !dbg !2299
  store ptr null, ptr %arrayidx.1, align 8, !dbg !2300
  %arrayidx8.1 = getelementptr inbounds i8, ptr %p_Vid, i64 848856, !dbg !2301
  %9 = load ptr, ptr %arrayidx8.1, align 8, !dbg !2301
  tail call void @free_mem2Dint(ptr noundef %9) #18, !dbg !2302
  store ptr null, ptr %arrayidx8.1, align 8, !dbg !2303
  %arrayidx13.1 = getelementptr inbounds i8, ptr %p_Vid, i64 848816, !dbg !2304
  %10 = load ptr, ptr %arrayidx13.1, align 8, !dbg !2304
  tail call void @free_mem2D(ptr noundef %10) #18, !dbg !2305
  store ptr null, ptr %arrayidx13.1, align 8, !dbg !2306
  %arrayidx18.1 = getelementptr inbounds i8, ptr %p_Vid, i64 848760, !dbg !2307
  %11 = load ptr, ptr %arrayidx18.1, align 8, !dbg !2307
  tail call void @free(ptr noundef %11) #18, !dbg !2308
  store ptr null, ptr %arrayidx18.1, align 8, !dbg !2309
    #dbg_value(i64 2, !2278, !DIExpression(), !2294)
  %arrayidx.2 = getelementptr inbounds i8, ptr %p_Vid, i64 848912, !dbg !2295
  %12 = load ptr, ptr %arrayidx.2, align 8, !dbg !2295
  tail call void @free(ptr noundef %12) #18, !dbg !2299
  store ptr null, ptr %arrayidx.2, align 8, !dbg !2300
  %arrayidx8.2 = getelementptr inbounds i8, ptr %p_Vid, i64 848864, !dbg !2301
  %13 = load ptr, ptr %arrayidx8.2, align 8, !dbg !2301
  tail call void @free_mem2Dint(ptr noundef %13) #18, !dbg !2302
  store ptr null, ptr %arrayidx8.2, align 8, !dbg !2303
  %arrayidx13.2 = getelementptr inbounds i8, ptr %p_Vid, i64 848824, !dbg !2304
  %14 = load ptr, ptr %arrayidx13.2, align 8, !dbg !2304
  tail call void @free_mem2D(ptr noundef %14) #18, !dbg !2305
  store ptr null, ptr %arrayidx13.2, align 8, !dbg !2306
  %arrayidx18.2 = getelementptr inbounds i8, ptr %p_Vid, i64 848768, !dbg !2307
  %15 = load ptr, ptr %arrayidx18.2, align 8, !dbg !2307
  tail call void @free(ptr noundef %15) #18, !dbg !2308
    #dbg_value(i64 3, !2278, !DIExpression(), !2294)
  br label %if.end42.sink.split, !dbg !2310

if.else:                                          ; preds = %if.end
  %mb_data = getelementptr inbounds i8, ptr %p_Vid, i64 848888, !dbg !2312
  %16 = load ptr, ptr %mb_data, align 8, !dbg !2312
  %cmp22.not = icmp eq ptr %16, null, !dbg !2315
  br i1 %cmp22.not, label %if.end26, label %if.then23, !dbg !2316

if.then23:                                        ; preds = %if.else
  tail call void @free(ptr noundef nonnull %16) #18, !dbg !2317
  store ptr null, ptr %mb_data, align 8, !dbg !2319
  br label %if.end26, !dbg !2320

if.end26:                                         ; preds = %if.then23, %if.else
  %siblock = getelementptr inbounds i8, ptr %p_Vid, i64 848840, !dbg !2321
  %17 = load ptr, ptr %siblock, align 8, !dbg !2321
  %tobool27.not = icmp eq ptr %17, null, !dbg !2323
  br i1 %tobool27.not, label %if.end31, label %if.then28, !dbg !2324

if.then28:                                        ; preds = %if.end26
  tail call void @free_mem2Dint(ptr noundef nonnull %17) #18, !dbg !2325
  store ptr null, ptr %siblock, align 8, !dbg !2327
  br label %if.end31, !dbg !2328

if.end31:                                         ; preds = %if.then28, %if.end26
  %ipredmode = getelementptr inbounds i8, ptr %p_Vid, i64 848800, !dbg !2329
  %18 = load ptr, ptr %ipredmode, align 8, !dbg !2329
  %tobool32.not = icmp eq ptr %18, null, !dbg !2331
  br i1 %tobool32.not, label %if.end36, label %if.then33, !dbg !2332

if.then33:                                        ; preds = %if.end31
  tail call void @free_mem2D(ptr noundef nonnull %18) #18, !dbg !2333
  store ptr null, ptr %ipredmode, align 8, !dbg !2335
  br label %if.end36, !dbg !2336

if.end36:                                         ; preds = %if.then33, %if.end31
  %intra_block = getelementptr inbounds i8, ptr %p_Vid, i64 848744, !dbg !2337
  %19 = load ptr, ptr %intra_block, align 8, !dbg !2337
  %tobool37.not = icmp eq ptr %19, null, !dbg !2339
  br i1 %tobool37.not, label %if.end42, label %if.then38, !dbg !2340

if.then38:                                        ; preds = %if.end36
  tail call void @free(ptr noundef nonnull %19) #18, !dbg !2341
  br label %if.end42.sink.split, !dbg !2343

if.end42.sink.split:                              ; preds = %if.then38, %for.cond.preheader
  %arrayidx18.2.sink = phi ptr [ %arrayidx18.2, %for.cond.preheader ], [ %intra_block, %if.then38 ]
  store ptr null, ptr %arrayidx18.2.sink, align 8, !dbg !2344
  br label %if.end42, !dbg !2310

if.end42:                                         ; preds = %if.end42.sink.split, %if.end36
  %20 = load ptr, ptr @PicPos, align 8, !dbg !2310
  %tobool43.not = icmp eq ptr %20, null, !dbg !2310
  br i1 %tobool43.not, label %if.end45, label %if.then44, !dbg !2345

if.then44:                                        ; preds = %if.end42
  tail call void @free(ptr noundef nonnull %20) #18, !dbg !2346
  store ptr null, ptr @PicPos, align 8, !dbg !2348
  br label %if.end45, !dbg !2349

if.end45:                                         ; preds = %if.then44, %if.end42
  tail call void @free_qp_matrices(ptr noundef nonnull %p_Vid) #18, !dbg !2350
  %global_init_done = getelementptr inbounds i8, ptr %p_Vid, i64 856012, !dbg !2351
  store i32 0, ptr %global_init_done, align 4, !dbg !2352
  ret void, !dbg !2353
}

declare !dbg !2354 i32 @get_mem2Dpel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !2357 i32 @get_mem2D(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !2360 i32 @get_mem4D(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !2364 i32 @get_mem2Dint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !2367 void @init_qp_process(ptr noundef) local_unnamed_addr #6

declare !dbg !2369 void @free_mem2Dpel(ptr noundef) local_unnamed_addr #6

declare !dbg !2372 void @free_mem3Dpel(ptr noundef) local_unnamed_addr #6

declare !dbg !2375 void @free_mem4D(ptr noundef) local_unnamed_addr #6

declare !dbg !2378 void @free_mem2Dint(ptr noundef) local_unnamed_addr #6

declare !dbg !2381 void @free_mem2D(ptr noundef) local_unnamed_addr #6

declare !dbg !2384 void @free_qp_matrices(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind uwtable
define dso_local void @report_stats_on_error() local_unnamed_addr #0 !dbg !2385 {
entry:
  tail call void @exit(i32 noundef -1) #17, !dbg !2388
  unreachable, !dbg !2388
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClearDecPicList(ptr nocapture noundef %p_Vid) local_unnamed_addr #8 !dbg !2389 {
entry:
    #dbg_value(ptr %p_Vid, !2391, !DIExpression(), !2397)
  %pDecOuputPic = getelementptr inbounds i8, ptr %p_Vid, i64 856816, !dbg !2398
    #dbg_value(ptr poison, !2392, !DIExpression(), !2397)
    #dbg_value(ptr null, !2393, !DIExpression(), !2397)
  %pPic.028 = load ptr, ptr %pDecOuputPic, align 8, !dbg !2397
  %tobool.not29 = icmp eq ptr %pPic.028, null, !dbg !2399
  br i1 %tobool.not29, label %if.end, label %land.rhs.preheader, !dbg !2400

land.rhs.preheader:                               ; preds = %entry
    #dbg_value(ptr null, !2393, !DIExpression(), !2397)
  %0 = load i32, ptr %pPic.028, align 8, !dbg !2401
  %tobool1.not38 = icmp eq i32 %0, 0, !dbg !2402
  br i1 %tobool1.not38, label %while.body, label %land.lhs.true, !dbg !2403

land.rhs:                                         ; preds = %while.body
    #dbg_value(ptr %pPic.03139, !2393, !DIExpression(), !2397)
  %1 = load i32, ptr %pPic.0, align 8, !dbg !2401
  %tobool1.not = icmp eq i32 %1, 0, !dbg !2402
  br i1 %tobool1.not, label %while.body, label %land.lhs.true, !dbg !2403, !llvm.loop !2404

while.body:                                       ; preds = %land.rhs.preheader, %land.rhs
  %pPic.03139 = phi ptr [ %pPic.0, %land.rhs ], [ %pPic.028, %land.rhs.preheader ]
    #dbg_value(ptr %pPic.03139, !2393, !DIExpression(), !2397)
  %pNext = getelementptr inbounds i8, ptr %pPic.03139, i64 72, !dbg !2406
    #dbg_value(ptr poison, !2392, !DIExpression(), !2397)
  %pPic.0 = load ptr, ptr %pNext, align 8, !dbg !2397
    #dbg_value(ptr %pPic.0, !2392, !DIExpression(), !2397)
  %tobool.not = icmp eq ptr %pPic.0, null, !dbg !2399
  br i1 %tobool.not, label %if.end, label %land.rhs, !dbg !2400, !llvm.loop !2404

land.lhs.true:                                    ; preds = %land.rhs, %land.rhs.preheader
  %pPic.031.lcssa = phi ptr [ %pPic.028, %land.rhs.preheader ], [ %pPic.0, %land.rhs ]
  %pPrior.030.lcssa = phi ptr [ null, %land.rhs.preheader ], [ %pPic.03139, %land.rhs ]
  %cmp.not = icmp eq ptr %pPic.031.lcssa, %pPic.028, !dbg !2408
  br i1 %cmp.not, label %if.end, label %while.cond4, !dbg !2409

while.cond4:                                      ; preds = %land.lhs.true, %while.cond4
  %pPicTail.0 = phi ptr [ %2, %while.cond4 ], [ %pPic.031.lcssa, %land.lhs.true ], !dbg !2410
    #dbg_value(ptr %pPicTail.0, !2394, !DIExpression(), !2410)
  %pNext5 = getelementptr inbounds i8, ptr %pPicTail.0, i64 72, !dbg !2411
  %2 = load ptr, ptr %pNext5, align 8, !dbg !2411
  %tobool6.not = icmp eq ptr %2, null, !dbg !2412
  br i1 %tobool6.not, label %while.end9, label %while.cond4, !dbg !2412, !llvm.loop !2413

while.end9:                                       ; preds = %while.cond4
  %pNext5.le = getelementptr inbounds i8, ptr %pPicTail.0, i64 72
  store ptr %pPic.028, ptr %pNext5.le, align 8, !dbg !2415
  store ptr %pPic.031.lcssa, ptr %pDecOuputPic, align 8, !dbg !2416
  %pNext13 = getelementptr inbounds i8, ptr %pPrior.030.lcssa, i64 72, !dbg !2417
  store ptr null, ptr %pNext13, align 8, !dbg !2418
  br label %if.end, !dbg !2419

if.end:                                           ; preds = %while.body, %entry, %while.end9, %land.lhs.true
  ret void, !dbg !2420
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef ptr @GetOneAvailDecPicFromList(ptr noundef %pDecPicList, i32 noundef %b3D) local_unnamed_addr #9 !dbg !2421 {
entry:
    #dbg_value(ptr %pDecPicList, !2425, !DIExpression(), !2429)
    #dbg_value(i32 %b3D, !2426, !DIExpression(), !2429)
    #dbg_value(ptr %pDecPicList, !2427, !DIExpression(), !2429)
    #dbg_value(ptr null, !2428, !DIExpression(), !2429)
  %tobool.not = icmp eq i32 %b3D, 0, !dbg !2430
    #dbg_value(ptr null, !2428, !DIExpression(), !2429)
    #dbg_value(ptr null, !2428, !DIExpression(), !2429)
    #dbg_value(ptr %pDecPicList, !2427, !DIExpression(), !2429)
    #dbg_value(ptr %pDecPicList, !2427, !DIExpression(), !2429)
  %tobool3.not37 = icmp ne ptr %pDecPicList, null, !dbg !2432
  tail call void @llvm.assume(i1 %tobool3.not37), !dbg !2432
  br i1 %tobool.not, label %land.rhs4, label %land.rhs, !dbg !2433

land.rhs:                                         ; preds = %entry, %while.body
  %pPic.036 = phi ptr [ %1, %while.body ], [ %pDecPicList, %entry ]
    #dbg_value(ptr %pPic.036, !2427, !DIExpression(), !2429)
  %0 = load i32, ptr %pPic.036, align 8, !dbg !2434
  %cmp = icmp eq i32 %0, 3, !dbg !2436
  br i1 %cmp, label %while.body, label %if.end14, !dbg !2437

while.body:                                       ; preds = %land.rhs
    #dbg_value(ptr %pPic.036, !2428, !DIExpression(), !2429)
  %pNext = getelementptr inbounds i8, ptr %pPic.036, i64 72, !dbg !2438
  %1 = load ptr, ptr %pNext, align 8, !dbg !2438
    #dbg_value(ptr %1, !2427, !DIExpression(), !2429)
  %tobool1.not = icmp eq ptr %1, null, !dbg !2440
  br i1 %tobool1.not, label %if.then12, label %land.rhs, !dbg !2441, !llvm.loop !2442

land.rhs4:                                        ; preds = %entry, %while.body8
  %pPic.138 = phi ptr [ %3, %while.body8 ], [ %pDecPicList, %entry ]
    #dbg_value(ptr %pPic.138, !2427, !DIExpression(), !2429)
  %2 = load i32, ptr %pPic.138, align 8, !dbg !2444
  %tobool6.not = icmp eq i32 %2, 0, !dbg !2446
  br i1 %tobool6.not, label %if.end14, label %while.body8, !dbg !2447

while.body8:                                      ; preds = %land.rhs4
    #dbg_value(ptr %pPic.138, !2428, !DIExpression(), !2429)
  %pNext9 = getelementptr inbounds i8, ptr %pPic.138, i64 72, !dbg !2448
  %3 = load ptr, ptr %pNext9, align 8, !dbg !2448
    #dbg_value(ptr %3, !2427, !DIExpression(), !2429)
  %tobool3.not = icmp eq ptr %3, null, !dbg !2450
  br i1 %tobool3.not, label %if.then12, label %land.rhs4, !dbg !2446, !llvm.loop !2451

if.then12:                                        ; preds = %while.body, %while.body8
  %pPrior.2.ph = phi ptr [ %pPic.138, %while.body8 ], [ %pPic.036, %while.body ]
    #dbg_value(ptr %pPrior.2.ph, !2428, !DIExpression(), !2429)
    #dbg_value(ptr null, !2427, !DIExpression(), !2429)
  %call = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #19, !dbg !2453
    #dbg_value(ptr %call, !2427, !DIExpression(), !2429)
  %pNext13 = getelementptr inbounds i8, ptr %pPrior.2.ph, i64 72, !dbg !2456
  store ptr %call, ptr %pNext13, align 8, !dbg !2457
  br label %if.end14, !dbg !2458

if.end14:                                         ; preds = %land.rhs, %land.rhs4, %if.then12
  %pPic.3 = phi ptr [ %call, %if.then12 ], [ %pPic.138, %land.rhs4 ], [ %pPic.036, %land.rhs ], !dbg !2429
    #dbg_value(ptr %pPic.3, !2427, !DIExpression(), !2429)
  ret ptr %pPic.3, !dbg !2459
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 32768, 1) i32 @OpenDecoder(ptr nocapture noundef readonly %p_Inp) local_unnamed_addr #3 !dbg !2460 {
entry:
    #dbg_value(ptr %p_Inp, !2464, !DIExpression(), !2468)
    #dbg_value(ptr @p_Dec, !2469, !DIExpression(), !2475)
  %call.i = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #19, !dbg !2477
  store ptr %call.i, ptr @p_Dec, align 8, !dbg !2479
  %cmp.i = icmp eq ptr %call.i, null, !dbg !2480
  br i1 %cmp.i, label %if.then, label %if.end.i, !dbg !2481

if.end.i:                                         ; preds = %entry
  %p_Vid.i = getelementptr inbounds i8, ptr %call.i, i64 8, !dbg !2482
    #dbg_value(ptr %p_Vid.i, !2483, !DIExpression(), !2490)
  %call.i.i = tail call noalias dereferenceable_or_null(856880) ptr @calloc(i64 noundef 1, i64 noundef 856880) #19, !dbg !2492
  store ptr %call.i.i, ptr %p_Vid.i, align 8, !dbg !2494
  %cmp.i.i = icmp eq ptr %call.i.i, null, !dbg !2495
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i, !dbg !2496

if.then.i.i:                                      ; preds = %if.end.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.15) #18, !dbg !2497
  %.pre.i.i = load ptr, ptr %p_Vid.i, align 8, !dbg !2498
  br label %if.end.i.i, !dbg !2497

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i
  %0 = phi ptr [ %.pre.i.i, %if.then.i.i ], [ %call.i.i, %if.end.i ], !dbg !2498
  %call1.i.i = tail call noalias dereferenceable_or_null(52) ptr @calloc(i64 noundef 1, i64 noundef 52) #19, !dbg !2500
  %old_slice.i.i = getelementptr inbounds i8, ptr %0, i64 848696, !dbg !2501
  store ptr %call1.i.i, ptr %old_slice.i.i, align 8, !dbg !2502
  %cmp2.i.i = icmp eq ptr %call1.i.i, null, !dbg !2503
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end4.i.i, !dbg !2504

if.then3.i.i:                                     ; preds = %if.end.i.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.16) #18, !dbg !2505
  br label %if.end4.i.i, !dbg !2505

if.end4.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i
  %call5.i.i = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #19, !dbg !2506
  %1 = load ptr, ptr %p_Vid.i, align 8, !dbg !2508
  %snr.i.i = getelementptr inbounds i8, ptr %1, i64 848704, !dbg !2509
  store ptr %call5.i.i, ptr %snr.i.i, align 8, !dbg !2510
  %cmp6.i.i = icmp eq ptr %call5.i.i, null, !dbg !2511
  br i1 %cmp6.i.i, label %if.then7.i.i, label %if.end8.i.i, !dbg !2512

if.then7.i.i:                                     ; preds = %if.end4.i.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.17) #18, !dbg !2513
  br label %if.end8.i.i, !dbg !2513

if.end8.i.i:                                      ; preds = %if.then7.i.i, %if.end4.i.i
  %call9.i.i = tail call noalias dereferenceable_or_null(4176) ptr @calloc(i64 noundef 1, i64 noundef 4176) #19, !dbg !2514
  %2 = load ptr, ptr %p_Vid.i, align 8, !dbg !2516
  %p_Dpb_legacy.i.i = getelementptr inbounds i8, ptr %2, i64 856664, !dbg !2517
  store ptr %call9.i.i, ptr %p_Dpb_legacy.i.i, align 8, !dbg !2518
  %cmp10.i.i = icmp eq ptr %call9.i.i, null, !dbg !2519
  br i1 %cmp10.i.i, label %if.then11.i.i, label %if.end12.i.i, !dbg !2520

if.then11.i.i:                                    ; preds = %if.end8.i.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.18) #18, !dbg !2521
  br label %if.end12.i.i, !dbg !2521

if.end12.i.i:                                     ; preds = %if.then11.i.i, %if.end8.i.i
  %3 = load ptr, ptr %p_Vid.i, align 8, !dbg !2522
  %p_Dpb_legacy13.i.i = getelementptr inbounds i8, ptr %3, i64 856664, !dbg !2523
  %4 = load ptr, ptr %p_Dpb_legacy13.i.i, align 8, !dbg !2523
  %p_Dpb.i.i = getelementptr inbounds i8, ptr %3, i64 856656, !dbg !2524
  store ptr %4, ptr %p_Dpb.i.i, align 8, !dbg !2525
  %5 = load ptr, ptr %p_Vid.i, align 8, !dbg !2526
  %p_Dpb14.i.i = getelementptr inbounds i8, ptr %5, i64 856656, !dbg !2527
  %6 = load ptr, ptr %p_Dpb14.i.i, align 8, !dbg !2527
    #dbg_value(ptr %5, !2528, !DIExpression(), !2534)
    #dbg_value(ptr %6, !2533, !DIExpression(), !2534)
  store ptr %5, ptr %6, align 8, !dbg !2536
  %init_done.i.i.i = getelementptr inbounds i8, ptr %6, i64 4160, !dbg !2537
  store i32 0, ptr %init_done.i.i.i, align 8, !dbg !2538
    #dbg_value(i32 0, !2489, !DIExpression(), !2490)
    #dbg_value(i64 0, !2489, !DIExpression(), !2490)
  %call16.i.i = tail call noalias dereferenceable_or_null(4176) ptr @calloc(i64 noundef 1, i64 noundef 4176) #19, !dbg !2539
  %7 = load ptr, ptr %p_Vid.i, align 8, !dbg !2544
  %p_Dpb_layer.i.i = getelementptr inbounds i8, ptr %7, i64 856672, !dbg !2545
  store ptr %call16.i.i, ptr %p_Dpb_layer.i.i, align 8, !dbg !2546
  %cmp17.i.i = icmp eq ptr %call16.i.i, null, !dbg !2547
  br i1 %cmp17.i.i, label %if.then18.i.i, label %if.end19.i.i, !dbg !2548

if.then18.i.i:                                    ; preds = %if.end12.i.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.19) #18, !dbg !2549
  br label %if.end19.i.i, !dbg !2549

if.end19.i.i:                                     ; preds = %if.then18.i.i, %if.end12.i.i
  %8 = load ptr, ptr %p_Vid.i, align 8, !dbg !2550
  %p_Dpb_layer20.i.i = getelementptr inbounds i8, ptr %8, i64 856672, !dbg !2551
  %9 = load ptr, ptr %p_Dpb_layer20.i.i, align 8, !dbg !2552
    #dbg_value(ptr %8, !2528, !DIExpression(), !2553)
    #dbg_value(ptr %9, !2533, !DIExpression(), !2553)
  store ptr %8, ptr %9, align 8, !dbg !2555
  %init_done.i55.i.i = getelementptr inbounds i8, ptr %9, i64 4160, !dbg !2556
  store i32 0, ptr %init_done.i55.i.i, align 8, !dbg !2557
    #dbg_value(i64 1, !2489, !DIExpression(), !2490)
  %call16.1.i.i = tail call noalias dereferenceable_or_null(4176) ptr @calloc(i64 noundef 1, i64 noundef 4176) #19, !dbg !2539
  %10 = load ptr, ptr %p_Vid.i, align 8, !dbg !2544
  %arrayidx.1.i.i = getelementptr inbounds i8, ptr %10, i64 856680, !dbg !2558
  store ptr %call16.1.i.i, ptr %arrayidx.1.i.i, align 8, !dbg !2546
  %cmp17.1.i.i = icmp eq ptr %call16.1.i.i, null, !dbg !2547
  br i1 %cmp17.1.i.i, label %if.then18.1.i.i, label %if.end19.1.i.i, !dbg !2548

if.then18.1.i.i:                                  ; preds = %if.end19.i.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.19) #18, !dbg !2549
  br label %if.end19.1.i.i, !dbg !2549

if.end19.1.i.i:                                   ; preds = %if.then18.1.i.i, %if.end19.i.i
  %11 = load ptr, ptr %p_Vid.i, align 8, !dbg !2550
  %arrayidx22.1.i.i = getelementptr inbounds i8, ptr %11, i64 856680, !dbg !2552
  %12 = load ptr, ptr %arrayidx22.1.i.i, align 8, !dbg !2552
    #dbg_value(ptr %11, !2528, !DIExpression(), !2553)
    #dbg_value(ptr %12, !2533, !DIExpression(), !2553)
  store ptr %11, ptr %12, align 8, !dbg !2555
  %init_done.i55.1.i.i = getelementptr inbounds i8, ptr %12, i64 4160, !dbg !2556
  store i32 0, ptr %init_done.i55.1.i.i, align 8, !dbg !2557
    #dbg_value(i64 2, !2489, !DIExpression(), !2490)
  %13 = load ptr, ptr %p_Vid.i, align 8, !dbg !2559
  %global_init_done.i.i = getelementptr inbounds i8, ptr %13, i64 856012, !dbg !2560
  store i32 0, ptr %global_init_done.i.i, align 4, !dbg !2561
  %call23.i.i = tail call noalias dereferenceable_or_null(8232) ptr @calloc(i64 noundef 1, i64 noundef 8232) #19, !dbg !2562
  %14 = load ptr, ptr %p_Vid.i, align 8, !dbg !2564
  %seiToneMapping.i.i = getelementptr inbounds i8, ptr %14, i64 856728, !dbg !2565
  store ptr %call23.i.i, ptr %seiToneMapping.i.i, align 8, !dbg !2566
  %cmp24.i.i = icmp eq ptr %call23.i.i, null, !dbg !2567
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2568

if.then25.i.i:                                    ; preds = %if.end19.1.i.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.20) #18, !dbg !2569
  br label %if.end26.i.i, !dbg !2569

if.end26.i.i:                                     ; preds = %if.then25.i.i, %if.end19.1.i.i
  %call27.i.i = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 16, i64 noundef 8) #19, !dbg !2570
  %15 = load ptr, ptr %p_Vid.i, align 8, !dbg !2572
  %ppSliceList.i.i = getelementptr inbounds i8, ptr %15, i64 848736, !dbg !2573
  store ptr %call27.i.i, ptr %ppSliceList.i.i, align 8, !dbg !2574
  %cmp28.i.i = icmp eq ptr %call27.i.i, null, !dbg !2575
  br i1 %cmp28.i.i, label %if.then29.i.i, label %alloc_video_params.exit.i, !dbg !2576

if.then29.i.i:                                    ; preds = %if.end26.i.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.21) #18, !dbg !2577
  br label %alloc_video_params.exit.i, !dbg !2579

alloc_video_params.exit.i:                        ; preds = %if.then29.i.i, %if.end26.i.i
  %16 = load ptr, ptr %p_Vid.i, align 8, !dbg !2580
  %iNumOfSlicesAllocated.i.i = getelementptr inbounds i8, ptr %16, i64 848724, !dbg !2581
  store i32 16, ptr %iNumOfSlicesAllocated.i.i, align 4, !dbg !2582
  %17 = load ptr, ptr %p_Vid.i, align 8, !dbg !2583
  %pNextSlice.i.i = getelementptr inbounds i8, ptr %17, i64 848880, !dbg !2584
  store ptr null, ptr %pNextSlice.i.i, align 8, !dbg !2585
  %call31.i.i = tail call ptr @AllocNALU(i32 noundef 8000000) #18, !dbg !2586
  %18 = load ptr, ptr %p_Vid.i, align 8, !dbg !2587
  %nalu.i.i = getelementptr inbounds i8, ptr %18, i64 856832, !dbg !2588
  store ptr %call31.i.i, ptr %nalu.i.i, align 8, !dbg !2589
  %call32.i.i = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #19, !dbg !2590
  %19 = load ptr, ptr %p_Vid.i, align 8, !dbg !2591
  %pDecOuputPic.i.i = getelementptr inbounds i8, ptr %19, i64 856816, !dbg !2592
  store ptr %call32.i.i, ptr %pDecOuputPic.i.i, align 8, !dbg !2593
  %call33.i.i = tail call ptr @AllocPPS() #18, !dbg !2594
  %20 = load ptr, ptr %p_Vid.i, align 8, !dbg !2595
  %pNextPPS.i.i = getelementptr inbounds i8, ptr %20, i64 856872, !dbg !2596
  store ptr %call33.i.i, ptr %pNextPPS.i.i, align 8, !dbg !2597
  %21 = load ptr, ptr @p_Dec, align 8, !dbg !2598
    #dbg_value(ptr %21, !2599, !DIExpression(), !2605)
  %call.i12.i = tail call noalias dereferenceable_or_null(4016) ptr @calloc(i64 noundef 1, i64 noundef 4016) #19, !dbg !2607
  store ptr %call.i12.i, ptr %21, align 8, !dbg !2609
  %cmp.i13.i = icmp eq ptr %call.i12.i, null, !dbg !2610
  br i1 %cmp.i13.i, label %if.then.i15.i, label %if.end, !dbg !2611

if.then.i15.i:                                    ; preds = %alloc_video_params.exit.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.22) #18, !dbg !2612
  br label %if.end, !dbg !2612

if.then:                                          ; preds = %entry
  %22 = load ptr, ptr @stderr, align 8, !dbg !2613
  %23 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 21, i64 1, ptr %22) #20, !dbg !2615
    #dbg_value(i32 -1, !2466, !DIExpression(), !2468)
  br label %cleanup, !dbg !2616

if.end:                                           ; preds = %alloc_video_params.exit.i, %if.then.i15.i
  %24 = load ptr, ptr @p_Dec, align 8, !dbg !2619
  %25 = load ptr, ptr %24, align 8, !dbg !2620
  %p_Vid3.i = getelementptr inbounds i8, ptr %24, i64 8, !dbg !2621
  %26 = load ptr, ptr %p_Vid3.i, align 8, !dbg !2621
  store ptr %25, ptr %26, align 8, !dbg !2622
  %27 = load ptr, ptr @p_Dec, align 8, !dbg !2623
  %p_trace.i = getelementptr inbounds i8, ptr %27, i64 32, !dbg !2624
  store ptr null, ptr %p_trace.i, align 8, !dbg !2625
  %bufferSize.i = getelementptr inbounds i8, ptr %27, i64 16, !dbg !2626
  store i64 0, ptr %bufferSize.i, align 8, !dbg !2627
  %bitcounter.i = getelementptr inbounds i8, ptr %27, i64 40, !dbg !2628
  store i32 0, ptr %bitcounter.i, align 8, !dbg !2629
    #dbg_value(i32 0, !2466, !DIExpression(), !2468)
    #dbg_value(ptr %27, !2467, !DIExpression(), !2468)
  %28 = load ptr, ptr %27, align 8, !dbg !2630
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4016) %28, ptr noundef nonnull align 8 dereferenceable(4016) %p_Inp, i64 4016, i1 false), !dbg !2631
  %29 = load ptr, ptr %27, align 8, !dbg !2632
  %conceal_mode = getelementptr inbounds i8, ptr %29, i64 3980, !dbg !2633
  %30 = load i32, ptr %conceal_mode, align 4, !dbg !2633
  %p_Vid = getelementptr inbounds i8, ptr %27, i64 8, !dbg !2634
  %31 = load ptr, ptr %p_Vid, align 8, !dbg !2634
  %conceal_mode3 = getelementptr inbounds i8, ptr %31, i64 849240, !dbg !2635
  store i32 %30, ptr %conceal_mode3, align 8, !dbg !2636
  %32 = load ptr, ptr %27, align 8, !dbg !2637
  %ref_poc_gap = getelementptr inbounds i8, ptr %32, i64 3984, !dbg !2638
  %33 = load i32, ptr %ref_poc_gap, align 8, !dbg !2638
  %34 = load ptr, ptr %p_Vid, align 8, !dbg !2639
  %ref_poc_gap6 = getelementptr inbounds i8, ptr %34, i64 849232, !dbg !2640
  store i32 %33, ptr %ref_poc_gap6, align 8, !dbg !2641
  %35 = load ptr, ptr %27, align 8, !dbg !2642
  %poc_gap = getelementptr inbounds i8, ptr %35, i64 3988, !dbg !2643
  %36 = load i32, ptr %poc_gap, align 4, !dbg !2643
  %37 = load ptr, ptr %p_Vid, align 8, !dbg !2644
  %poc_gap9 = getelementptr inbounds i8, ptr %37, i64 849236, !dbg !2645
  store i32 %36, ptr %poc_gap9, align 4, !dbg !2646
  %38 = load ptr, ptr %27, align 8, !dbg !2647
  %reffile = getelementptr inbounds i8, ptr %38, i64 510, !dbg !2649
  %char0 = load i8, ptr %reffile, align 1, !dbg !2650
  switch i8 %char0, label %if.then17 [
    i8 0, label %if.else
    i8 34, label %sub_1
  ], !dbg !2651

sub_1:                                            ; preds = %if.end
  %39 = getelementptr inbounds i8, ptr %38, i64 511
  %40 = load i8, ptr %39, align 1
  %.not83 = icmp eq i8 %40, 34
  br i1 %.not83, label %land.lhs.true.tail, label %if.then17

land.lhs.true.tail:                               ; preds = %sub_1
  %41 = getelementptr inbounds i8, ptr %38, i64 512
  %42 = load i8, ptr %41, align 1
  %43 = icmp eq i8 %42, 0, !dbg !2652
  br i1 %43, label %if.else, label %if.then17, !dbg !2653

if.then17:                                        ; preds = %if.end, %sub_1, %land.lhs.true.tail
  %call21 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %reffile, i32 noundef 0) #18, !dbg !2654
  %44 = load ptr, ptr %p_Vid, align 8, !dbg !2657
  %p_ref = getelementptr inbounds i8, ptr %44, i64 855988, !dbg !2658
  store i32 %call21, ptr %p_ref, align 4, !dbg !2659
  %cmp23 = icmp eq i32 %call21, -1, !dbg !2660
  br i1 %cmp23, label %if.then24, label %if.end33, !dbg !2661

if.then24:                                        ; preds = %if.then17
  %45 = load ptr, ptr @stdout, align 8, !dbg !2662
  %46 = load ptr, ptr %27, align 8, !dbg !2664
  %reffile26 = getelementptr inbounds i8, ptr %46, i64 510, !dbg !2665
  %call28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.12, ptr noundef nonnull %reffile26) #18, !dbg !2666
  %47 = load ptr, ptr @stdout, align 8, !dbg !2667
  %48 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 71, i64 1, ptr %47), !dbg !2668
  br label %if.end33, !dbg !2669

if.else:                                          ; preds = %if.end, %land.lhs.true.tail
  %49 = load ptr, ptr %p_Vid, align 8, !dbg !2670
  %p_ref32 = getelementptr inbounds i8, ptr %49, i64 855988, !dbg !2671
  store i32 -1, ptr %p_ref32, align 4, !dbg !2672
  br label %if.end33

if.end33:                                         ; preds = %if.then17, %if.then24, %if.else
  %50 = load ptr, ptr %p_Vid, align 8, !dbg !2673
  %51 = load ptr, ptr %27, align 8, !dbg !2674
  %FileFormat = getelementptr inbounds i8, ptr %51, i64 768, !dbg !2675
  %52 = load i32, ptr %FileFormat, align 8, !dbg !2675
  tail call void @initBitsFile(ptr noundef %50, i32 noundef %52) #18, !dbg !2676
  %53 = load ptr, ptr %p_Vid, align 8, !dbg !2677
  %bitsfile = getelementptr inbounds i8, ptr %53, i64 856616, !dbg !2678
  %54 = load ptr, ptr %bitsfile, align 8, !dbg !2678
  %55 = load ptr, ptr %54, align 8, !dbg !2679
  %56 = load ptr, ptr %27, align 8, !dbg !2680
  tail call void %55(ptr noundef %53, ptr noundef %56) #18, !dbg !2681
  %57 = load ptr, ptr %p_Vid, align 8, !dbg !2682
  %old_slice = getelementptr inbounds i8, ptr %57, i64 848696, !dbg !2683
  %58 = load ptr, ptr %old_slice, align 8, !dbg !2683
  tail call void @init_old_slice(ptr noundef %58) #18, !dbg !2684
  %59 = load ptr, ptr %p_Vid, align 8, !dbg !2685
    #dbg_value(ptr %59, !2686, !DIExpression(), !2690)
  %60 = load ptr, ptr %59, align 8, !dbg !2692
    #dbg_value(ptr %60, !2689, !DIExpression(), !2690)
  %oldFrameSizeInMbs.i = getelementptr inbounds i8, ptr %59, i64 849020, !dbg !2693
  store i32 -1, ptr %oldFrameSizeInMbs.i, align 4, !dbg !2694
  %imgY_ref.i = getelementptr inbounds i8, ptr %59, i64 856016, !dbg !2695
  %recovery_point.i = getelementptr inbounds i8, ptr %59, i64 849260, !dbg !2696
  store i32 0, ptr %recovery_point.i, align 4, !dbg !2697
  %recovery_point_found.i = getelementptr inbounds i8, ptr %59, i64 849264, !dbg !2698
  store i32 0, ptr %recovery_point_found.i, align 8, !dbg !2699
  %recovery_poc.i = getelementptr inbounds i8, ptr %59, i64 849276, !dbg !2700
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %imgY_ref.i, i8 0, i64 16, i1 false), !dbg !2701
  store i32 2147483647, ptr %recovery_poc.i, align 4, !dbg !2702
  %ref_offset.i = getelementptr inbounds i8, ptr %60, i64 772, !dbg !2703
  %61 = load i32, ptr %ref_offset.i, align 4, !dbg !2703
  %idr_psnr_number.i = getelementptr inbounds i8, ptr %59, i64 849220, !dbg !2704
  store i32 %61, ptr %idr_psnr_number.i, align 4, !dbg !2705
  %psnr_number.i = getelementptr inbounds i8, ptr %59, i64 849224, !dbg !2706
  store i32 0, ptr %psnr_number.i, align 8, !dbg !2707
  %number.i = getelementptr inbounds i8, ptr %59, i64 848712, !dbg !2708
  store i32 0, ptr %number.i, align 8, !dbg !2709
  %type.i = getelementptr inbounds i8, ptr %59, i64 848776, !dbg !2710
  store i32 2, ptr %type.i, align 8, !dbg !2711
  %g_nFrame.i = getelementptr inbounds i8, ptr %59, i64 856008, !dbg !2712
  store i32 0, ptr %g_nFrame.i, align 8, !dbg !2713
  %snr.i = getelementptr inbounds i8, ptr %59, i64 848704, !dbg !2714
  %62 = load ptr, ptr %snr.i, align 8, !dbg !2714
  store i32 0, ptr %62, align 4, !dbg !2715
  %Bframe_ctr.i = getelementptr inbounds i8, ptr %59, i64 856000, !dbg !2716
  store i32 0, ptr %Bframe_ctr.i, align 8, !dbg !2717
  %tot_time.i = getelementptr inbounds i8, ptr %59, i64 851880, !dbg !2718
  store i64 0, ptr %tot_time.i, align 8, !dbg !2719
  %dec_picture.i = getelementptr inbounds i8, ptr %59, i64 856456, !dbg !2720
  store ptr null, ptr %dec_picture.i, align 8, !dbg !2721
  %MbToSliceGroupMap.i = getelementptr inbounds i8, ptr %59, i64 856704, !dbg !2722
  %LastAccessUnitExists.i = getelementptr inbounds i8, ptr %59, i64 855992, !dbg !2723
  store i32 0, ptr %LastAccessUnitExists.i, align 8, !dbg !2724
  %NALUCount.i = getelementptr inbounds i8, ptr %59, i64 855996, !dbg !2725
  store i32 0, ptr %NALUCount.i, align 4, !dbg !2726
  %out_buffer.i = getelementptr inbounds i8, ptr %59, i64 856624, !dbg !2727
  %seiToneMapping.i = getelementptr inbounds i8, ptr %59, i64 856728, !dbg !2728
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %out_buffer.i, i8 0, i64 24, i1 false), !dbg !2729
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %MbToSliceGroupMap.i, i8 0, i64 16, i1 false), !dbg !2730
  %63 = load ptr, ptr %seiToneMapping.i, align 8, !dbg !2728
  tail call void @init_tone_mapping_sei(ptr noundef %63) #18, !dbg !2731
  %last_pic_width_in_mbs_minus1.i = getelementptr inbounds i8, ptr %59, i64 848672, !dbg !2732
  store i32 0, ptr %last_pic_width_in_mbs_minus1.i, align 8, !dbg !2733
  %last_pic_height_in_map_units_minus1.i = getelementptr inbounds i8, ptr %59, i64 848676, !dbg !2734
  store i32 0, ptr %last_pic_height_in_map_units_minus1.i, align 4, !dbg !2735
  %last_max_dec_frame_buffering.i = getelementptr inbounds i8, ptr %59, i64 848680, !dbg !2736
  store i32 0, ptr %last_max_dec_frame_buffering.i, align 8, !dbg !2737
  %newframe.i = getelementptr inbounds i8, ptr %59, i64 848872, !dbg !2738
  store i32 0, ptr %newframe.i, align 8, !dbg !2739
  %previous_frame_num.i = getelementptr inbounds i8, ptr %59, i64 851864, !dbg !2740
  store i32 0, ptr %previous_frame_num.i, align 8, !dbg !2741
  %iLumaPadX.i = getelementptr inbounds i8, ptr %59, i64 856840, !dbg !2742
  store <4 x i32> <i32 32, i32 12, i32 16, i32 8>, ptr %iLumaPadX.i, align 8, !dbg !2743
  %iPostProcess.i = getelementptr inbounds i8, ptr %59, i64 856860, !dbg !2744
  store i32 0, ptr %iPostProcess.i, align 4, !dbg !2745
  %bDeblockEnable.i = getelementptr inbounds i8, ptr %59, i64 856856, !dbg !2746
  store i32 3, ptr %bDeblockEnable.i, align 8, !dbg !2747
  %64 = load ptr, ptr %p_Vid, align 8, !dbg !2748
  tail call void @init_out_buffer(ptr noundef %64) #18, !dbg !2749
  %65 = load ptr, ptr %p_Vid, align 8, !dbg !2750
  %p_out = getelementptr inbounds i8, ptr %65, i64 851888, !dbg !2751
  store i32 -1, ptr %p_out, align 8, !dbg !2752
    #dbg_value(i32 0, !2465, !DIExpression(), !2468)
  br label %for.body, !dbg !2753

for.body:                                         ; preds = %for.body, %if.end33
  %indvars.iv = phi i64 [ 0, %if.end33 ], [ %indvars.iv.next.3, %for.body ]
    #dbg_value(i64 %indvars.iv, !2465, !DIExpression(), !2468)
  %66 = load ptr, ptr %p_Vid, align 8, !dbg !2755
  %p_out_mvc = getelementptr inbounds i8, ptr %66, i64 851892, !dbg !2758
  %arrayidx = getelementptr inbounds [1024 x i32], ptr %p_out_mvc, i64 0, i64 %indvars.iv, !dbg !2759
  store i32 -1, ptr %arrayidx, align 4, !dbg !2760
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1, !dbg !2761
    #dbg_value(i64 %indvars.iv.next, !2465, !DIExpression(), !2468)
  %67 = load ptr, ptr %p_Vid, align 8, !dbg !2755
  %p_out_mvc.1 = getelementptr inbounds i8, ptr %67, i64 851892, !dbg !2758
  %arrayidx.1 = getelementptr inbounds [1024 x i32], ptr %p_out_mvc.1, i64 0, i64 %indvars.iv.next, !dbg !2759
  store i32 -1, ptr %arrayidx.1, align 4, !dbg !2760
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2, !dbg !2761
    #dbg_value(i64 %indvars.iv.next.1, !2465, !DIExpression(), !2468)
  %68 = load ptr, ptr %p_Vid, align 8, !dbg !2755
  %p_out_mvc.2 = getelementptr inbounds i8, ptr %68, i64 851892, !dbg !2758
  %arrayidx.2 = getelementptr inbounds [1024 x i32], ptr %p_out_mvc.2, i64 0, i64 %indvars.iv.next.1, !dbg !2759
  store i32 -1, ptr %arrayidx.2, align 4, !dbg !2760
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3, !dbg !2761
    #dbg_value(i64 %indvars.iv.next.2, !2465, !DIExpression(), !2468)
  %69 = load ptr, ptr %p_Vid, align 8, !dbg !2755
  %p_out_mvc.3 = getelementptr inbounds i8, ptr %69, i64 851892, !dbg !2758
  %arrayidx.3 = getelementptr inbounds [1024 x i32], ptr %p_out_mvc.3, i64 0, i64 %indvars.iv.next.2, !dbg !2759
  store i32 -1, ptr %arrayidx.3, align 4, !dbg !2760
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4, !dbg !2761
    #dbg_value(i64 %indvars.iv.next.3, !2465, !DIExpression(), !2468)
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 1024, !dbg !2762
  br i1 %exitcond.not.3, label %for.end, label %for.body, !dbg !2753, !llvm.loop !2763

for.end:                                          ; preds = %for.body
  %70 = load ptr, ptr %p_Vid, align 8, !dbg !2765
  %active_sps = getelementptr inbounds i8, ptr %70, i64 16, !dbg !2766
  store ptr null, ptr %active_sps, align 8, !dbg !2767
  %71 = load ptr, ptr %p_Vid, align 8, !dbg !2768
  %active_subset_sps = getelementptr inbounds i8, ptr %71, i64 699416, !dbg !2769
  store ptr null, ptr %active_subset_sps, align 8, !dbg !2770
  %72 = load ptr, ptr %p_Vid, align 8, !dbg !2771
  %SubsetSeqParSet = getelementptr inbounds i8, ptr %72, i64 699424, !dbg !2772
  tail call void @init_subset_sps_list(ptr noundef nonnull %SubsetSeqParSet, i32 noundef 32) #18, !dbg !2773
  br label %cleanup, !dbg !2774

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %for.end ], !dbg !2468
  ret i32 %retval.0, !dbg !2775
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nofree
declare !dbg !2776 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #11

declare !dbg !2780 void @initBitsFile(ptr noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !2783 void @init_old_slice(ptr noundef) local_unnamed_addr #6

declare !dbg !2787 void @init_out_buffer(ptr noundef) local_unnamed_addr #6

declare !dbg !2789 void @init_subset_sps_list(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 32768, 2) i32 @DecodeOneFrame(ptr nocapture noundef writeonly %ppDecPicList) local_unnamed_addr #3 !dbg !2793 {
entry:
    #dbg_value(ptr %ppDecPicList, !2798, !DIExpression(), !2801)
  %0 = load ptr, ptr @p_Dec, align 8, !dbg !2802
    #dbg_value(ptr %0, !2800, !DIExpression(), !2801)
  %p_Vid = getelementptr inbounds i8, ptr %0, i64 8, !dbg !2803
  %1 = load ptr, ptr %p_Vid, align 8, !dbg !2803
    #dbg_value(ptr %1, !2391, !DIExpression(), !2804)
  %pDecOuputPic.i = getelementptr inbounds i8, ptr %1, i64 856816, !dbg !2806
    #dbg_value(ptr poison, !2392, !DIExpression(), !2804)
    #dbg_value(ptr null, !2393, !DIExpression(), !2804)
  %pPic.028.i = load ptr, ptr %pDecOuputPic.i, align 8, !dbg !2804
  %tobool.not29.i = icmp eq ptr %pPic.028.i, null, !dbg !2807
  br i1 %tobool.not29.i, label %ClearDecPicList.exit, label %land.rhs.i.preheader, !dbg !2808

land.rhs.i.preheader:                             ; preds = %entry
    #dbg_value(ptr null, !2393, !DIExpression(), !2804)
  %2 = load i32, ptr %pPic.028.i, align 8, !dbg !2809
  %tobool1.not.i13 = icmp eq i32 %2, 0, !dbg !2810
  br i1 %tobool1.not.i13, label %while.body.i, label %ClearDecPicList.exit, !dbg !2811

land.rhs.i:                                       ; preds = %while.body.i
    #dbg_value(ptr %pPic.031.i14, !2393, !DIExpression(), !2804)
  %3 = load i32, ptr %pPic.0.i, align 8, !dbg !2809
  %tobool1.not.i = icmp eq i32 %3, 0, !dbg !2810
  br i1 %tobool1.not.i, label %while.body.i, label %land.lhs.true.i, !dbg !2811, !llvm.loop !2812

while.body.i:                                     ; preds = %land.rhs.i.preheader, %land.rhs.i
  %pPic.031.i14 = phi ptr [ %pPic.0.i, %land.rhs.i ], [ %pPic.028.i, %land.rhs.i.preheader ]
    #dbg_value(ptr %pPic.031.i14, !2393, !DIExpression(), !2804)
  %pNext.i = getelementptr inbounds i8, ptr %pPic.031.i14, i64 72, !dbg !2814
    #dbg_value(ptr poison, !2392, !DIExpression(), !2804)
  %pPic.0.i = load ptr, ptr %pNext.i, align 8, !dbg !2804
    #dbg_value(ptr %pPic.0.i, !2392, !DIExpression(), !2804)
  %tobool.not.i = icmp eq ptr %pPic.0.i, null, !dbg !2807
  br i1 %tobool.not.i, label %ClearDecPicList.exit, label %land.rhs.i, !dbg !2808, !llvm.loop !2812

land.lhs.true.i:                                  ; preds = %land.rhs.i
  %cmp.not.i = icmp eq ptr %pPic.0.i, %pPic.028.i, !dbg !2815
  br i1 %cmp.not.i, label %ClearDecPicList.exit, label %while.cond4.i, !dbg !2816

while.cond4.i:                                    ; preds = %land.lhs.true.i, %while.cond4.i
  %pPicTail.0.i = phi ptr [ %4, %while.cond4.i ], [ %pPic.0.i, %land.lhs.true.i ], !dbg !2817
    #dbg_value(ptr %pPicTail.0.i, !2394, !DIExpression(), !2817)
  %pNext5.i = getelementptr inbounds i8, ptr %pPicTail.0.i, i64 72, !dbg !2818
  %4 = load ptr, ptr %pNext5.i, align 8, !dbg !2818
  %tobool6.not.i = icmp eq ptr %4, null, !dbg !2819
  br i1 %tobool6.not.i, label %while.end9.i, label %while.cond4.i, !dbg !2819, !llvm.loop !2820

while.end9.i:                                     ; preds = %while.cond4.i
  %pNext5.i.le = getelementptr inbounds i8, ptr %pPicTail.0.i, i64 72
  store ptr %pPic.028.i, ptr %pNext5.i.le, align 8, !dbg !2822
  store ptr %pPic.0.i, ptr %pDecOuputPic.i, align 8, !dbg !2823
  %pNext13.i = getelementptr inbounds i8, ptr %pPic.031.i14, i64 72, !dbg !2824
  store ptr null, ptr %pNext13.i, align 8, !dbg !2825
  br label %ClearDecPicList.exit, !dbg !2826

ClearDecPicList.exit:                             ; preds = %while.body.i, %land.rhs.i.preheader, %entry, %land.lhs.true.i, %while.end9.i
  %call = tail call i32 @decode_one_frame(ptr noundef %0) #18, !dbg !2827
    #dbg_value(i32 %call, !2799, !DIExpression(), !2801)
  switch i32 %call, label %if.else3 [
    i32 2, label %if.end4
    i32 1, label %if.then2
  ], !dbg !2828

if.then2:                                         ; preds = %ClearDecPicList.exit
    #dbg_value(i32 1, !2799, !DIExpression(), !2801)
  br label %if.end4, !dbg !2829

if.else3:                                         ; preds = %ClearDecPicList.exit
  %or = or i32 %call, 32768, !dbg !2833
    #dbg_value(i32 %or, !2799, !DIExpression(), !2801)
  br label %if.end4

if.end4:                                          ; preds = %ClearDecPicList.exit, %if.then2, %if.else3
  %iRet.0 = phi i32 [ 1, %if.then2 ], [ %or, %if.else3 ], [ 0, %ClearDecPicList.exit ], !dbg !2835
    #dbg_value(i32 %iRet.0, !2799, !DIExpression(), !2801)
  %5 = load ptr, ptr %p_Vid, align 8, !dbg !2836
  %pDecOuputPic = getelementptr inbounds i8, ptr %5, i64 856816, !dbg !2837
  %6 = load ptr, ptr %pDecOuputPic, align 8, !dbg !2837
  store ptr %6, ptr %ppDecPicList, align 8, !dbg !2838
  ret i32 %iRet.0, !dbg !2839
}

declare !dbg !2840 i32 @decode_one_frame(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @FinitDecoder(ptr nocapture noundef writeonly %ppDecPicList) local_unnamed_addr #3 !dbg !2843 {
entry:
    #dbg_value(ptr %ppDecPicList, !2845, !DIExpression(), !2847)
  %0 = load ptr, ptr @p_Dec, align 8, !dbg !2848
    #dbg_value(ptr %0, !2846, !DIExpression(), !2847)
  %tobool.not = icmp eq ptr %0, null, !dbg !2849
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !2851

if.end:                                           ; preds = %entry
  %p_Vid = getelementptr inbounds i8, ptr %0, i64 8, !dbg !2852
  %1 = load ptr, ptr %p_Vid, align 8, !dbg !2852
    #dbg_value(ptr %1, !2391, !DIExpression(), !2853)
  %pDecOuputPic.i = getelementptr inbounds i8, ptr %1, i64 856816, !dbg !2855
    #dbg_value(ptr poison, !2392, !DIExpression(), !2853)
    #dbg_value(ptr null, !2393, !DIExpression(), !2853)
  %pPic.028.i = load ptr, ptr %pDecOuputPic.i, align 8, !dbg !2853
  %tobool.not29.i = icmp eq ptr %pPic.028.i, null, !dbg !2856
  br i1 %tobool.not29.i, label %ClearDecPicList.exit, label %land.rhs.i.preheader, !dbg !2857

land.rhs.i.preheader:                             ; preds = %if.end
    #dbg_value(ptr null, !2393, !DIExpression(), !2853)
  %2 = load i32, ptr %pPic.028.i, align 8, !dbg !2858
  %tobool1.not.i14 = icmp eq i32 %2, 0, !dbg !2859
  br i1 %tobool1.not.i14, label %while.body.i, label %ClearDecPicList.exit, !dbg !2860

land.rhs.i:                                       ; preds = %while.body.i
    #dbg_value(ptr %pPic.031.i15, !2393, !DIExpression(), !2853)
  %3 = load i32, ptr %pPic.0.i, align 8, !dbg !2858
  %tobool1.not.i = icmp eq i32 %3, 0, !dbg !2859
  br i1 %tobool1.not.i, label %while.body.i, label %land.lhs.true.i, !dbg !2860, !llvm.loop !2861

while.body.i:                                     ; preds = %land.rhs.i.preheader, %land.rhs.i
  %pPic.031.i15 = phi ptr [ %pPic.0.i, %land.rhs.i ], [ %pPic.028.i, %land.rhs.i.preheader ]
    #dbg_value(ptr %pPic.031.i15, !2393, !DIExpression(), !2853)
  %pNext.i = getelementptr inbounds i8, ptr %pPic.031.i15, i64 72, !dbg !2863
    #dbg_value(ptr poison, !2392, !DIExpression(), !2853)
  %pPic.0.i = load ptr, ptr %pNext.i, align 8, !dbg !2853
    #dbg_value(ptr %pPic.0.i, !2392, !DIExpression(), !2853)
  %tobool.not.i = icmp eq ptr %pPic.0.i, null, !dbg !2856
  br i1 %tobool.not.i, label %ClearDecPicList.exit, label %land.rhs.i, !dbg !2857, !llvm.loop !2861

land.lhs.true.i:                                  ; preds = %land.rhs.i
  %cmp.not.i = icmp eq ptr %pPic.0.i, %pPic.028.i, !dbg !2864
  br i1 %cmp.not.i, label %ClearDecPicList.exit, label %while.cond4.i, !dbg !2865

while.cond4.i:                                    ; preds = %land.lhs.true.i, %while.cond4.i
  %pPicTail.0.i = phi ptr [ %4, %while.cond4.i ], [ %pPic.0.i, %land.lhs.true.i ], !dbg !2866
    #dbg_value(ptr %pPicTail.0.i, !2394, !DIExpression(), !2866)
  %pNext5.i = getelementptr inbounds i8, ptr %pPicTail.0.i, i64 72, !dbg !2867
  %4 = load ptr, ptr %pNext5.i, align 8, !dbg !2867
  %tobool6.not.i = icmp eq ptr %4, null, !dbg !2868
  br i1 %tobool6.not.i, label %while.end9.i, label %while.cond4.i, !dbg !2868, !llvm.loop !2869

while.end9.i:                                     ; preds = %while.cond4.i
  %pNext5.i.le = getelementptr inbounds i8, ptr %pPicTail.0.i, i64 72
  store ptr %pPic.028.i, ptr %pNext5.i.le, align 8, !dbg !2871
  store ptr %pPic.0.i, ptr %pDecOuputPic.i, align 8, !dbg !2872
  %pNext13.i = getelementptr inbounds i8, ptr %pPic.031.i15, i64 72, !dbg !2873
  store ptr null, ptr %pNext13.i, align 8, !dbg !2874
  %.pre = load ptr, ptr %p_Vid, align 8, !dbg !2875
  br label %ClearDecPicList.exit, !dbg !2876

ClearDecPicList.exit:                             ; preds = %while.body.i, %land.rhs.i.preheader, %if.end, %land.lhs.true.i, %while.end9.i
  %5 = phi ptr [ %1, %if.end ], [ %1, %land.lhs.true.i ], [ %.pre, %while.end9.i ], [ %1, %land.rhs.i.preheader ], [ %1, %while.body.i ], !dbg !2875
  %p_Dpb = getelementptr inbounds i8, ptr %5, i64 856656, !dbg !2877
  %6 = load ptr, ptr %p_Dpb, align 8, !dbg !2877
  tail call void @flush_dpb(ptr noundef %6, i32 noundef -1) #18, !dbg !2878
  %7 = load ptr, ptr %p_Vid, align 8, !dbg !2879
  %annex_b = getelementptr inbounds i8, ptr %7, i64 856608, !dbg !2880
  %8 = load ptr, ptr %annex_b, align 8, !dbg !2880
  tail call void @ResetAnnexB(ptr noundef %8) #18, !dbg !2881
  %9 = load ptr, ptr %p_Vid, align 8, !dbg !2882
  %newframe = getelementptr inbounds i8, ptr %9, i64 848872, !dbg !2883
  store i32 0, ptr %newframe, align 8, !dbg !2884
  %10 = load ptr, ptr %p_Vid, align 8, !dbg !2885
  %previous_frame_num = getelementptr inbounds i8, ptr %10, i64 851864, !dbg !2886
  store i32 0, ptr %previous_frame_num, align 8, !dbg !2887
  %11 = load ptr, ptr %p_Vid, align 8, !dbg !2888
  %pDecOuputPic = getelementptr inbounds i8, ptr %11, i64 856816, !dbg !2889
  %12 = load ptr, ptr %pDecOuputPic, align 8, !dbg !2889
  store ptr %12, ptr %ppDecPicList, align 8, !dbg !2890
  br label %cleanup, !dbg !2891

cleanup:                                          ; preds = %entry, %ClearDecPicList.exit
  ret i32 0, !dbg !2892
}

declare !dbg !2893 void @flush_dpb(ptr noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !2896 void @ResetAnnexB(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @CloseDecoder() local_unnamed_addr #3 !dbg !2901 {
entry:
  %string.i = alloca [255 x i8], align 16, !DIAssignID !2907
    #dbg_assign(i1 undef, !1566, !DIExpression(), !2907, ptr %string.i, !DIExpression(), !2908)
  %now.i = alloca i64, align 8, !DIAssignID !2910
  %0 = load ptr, ptr @p_Dec, align 8, !dbg !2911
    #dbg_value(ptr %0, !2906, !DIExpression(), !2912)
  %tobool.not = icmp eq ptr %0, null, !dbg !2913
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !2915

if.end:                                           ; preds = %entry
  %p_Vid = getelementptr inbounds i8, ptr %0, i64 8, !dbg !2916
  %1 = load ptr, ptr %p_Vid, align 8, !dbg !2916
    #dbg_assign(i1 undef, !1568, !DIExpression(), !2910, ptr %now.i, !DIExpression(), !2908)
    #dbg_value(ptr %1, !1562, !DIExpression(), !2908)
  %active_pps1.i = getelementptr inbounds i8, ptr %1, i64 8, !dbg !2917
  %2 = load ptr, ptr %active_pps1.i, align 8, !dbg !2917
    #dbg_value(ptr %2, !1563, !DIExpression(), !2908)
  %3 = load ptr, ptr %1, align 8, !dbg !2918
    #dbg_value(ptr %3, !1564, !DIExpression(), !2908)
  %snr3.i = getelementptr inbounds i8, ptr %1, i64 848704, !dbg !2919
  %4 = load ptr, ptr %snr3.i, align 8, !dbg !2919
    #dbg_value(ptr %4, !1565, !DIExpression(), !2908)
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %string.i) #18, !dbg !2920
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %now.i) #18, !dbg !2921
  %silent.i = getelementptr inbounds i8, ptr %3, i64 784, !dbg !2922
  %5 = load i32, ptr %silent.i, align 8, !dbg !2922
  %cmp.i = icmp eq i32 %5, 0, !dbg !2924
  %6 = load ptr, ptr @stdout, align 8, !dbg !2925
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !2926

if.then.i:                                        ; preds = %if.end
  %7 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 75, i64 1, ptr %6), !dbg !2927
  %8 = load ptr, ptr @stdout, align 8, !dbg !2929
  %snra.i = getelementptr inbounds i8, ptr %4, i64 28, !dbg !2930
  %9 = load float, ptr %snra.i, align 4, !dbg !2931
  %conv.i = fpext float %9 to double, !dbg !2931
  %call4.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.24, double noundef %conv.i) #18, !dbg !2932
  %10 = load ptr, ptr @stdout, align 8, !dbg !2933
  %arrayidx6.i = getelementptr inbounds i8, ptr %4, i64 32, !dbg !2934
  %11 = load float, ptr %arrayidx6.i, align 4, !dbg !2934
  %conv7.i = fpext float %11 to double, !dbg !2934
  %call8.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.25, double noundef %conv7.i) #18, !dbg !2935
  %12 = load ptr, ptr @stdout, align 8, !dbg !2936
  %arrayidx10.i = getelementptr inbounds i8, ptr %4, i64 36, !dbg !2937
  %13 = load float, ptr %arrayidx10.i, align 4, !dbg !2937
  %conv11.i = fpext float %13 to double, !dbg !2937
  %call12.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.26, double noundef %conv11.i) #18, !dbg !2938
  br label %if.end.i, !dbg !2939

if.else.i:                                        ; preds = %if.end
  %14 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 76, i64 1, ptr %6), !dbg !2940
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %15 = load ptr, ptr @stdout, align 8, !dbg !2925
  %16 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 75, i64 1, ptr %15), !dbg !2925
  %17 = load ptr, ptr @stdout, align 8, !dbg !2925
  %call18.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #18, !dbg !2925
  %18 = load ptr, ptr @stdout, align 8, !dbg !2925
  %fputc.i = tail call i32 @fputc(i32 10, ptr %18), !dbg !2925
  %19 = load ptr, ptr @stdout, align 8, !dbg !2942
  %call20.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #18, !dbg !2943
  store i64 27977503644020588, ptr %string.i, align 16, !dbg !2944
  %call23.i = call noalias ptr @fopen(ptr noundef nonnull %string.i, ptr noundef nonnull @.str.36), !dbg !2945
    #dbg_value(ptr %call23.i, !1567, !DIExpression(), !2908)
  %cmp24.i = icmp eq ptr %call23.i, null, !dbg !2947
  br i1 %cmp24.i, label %if.then26.i, label %if.else41.i, !dbg !2948

if.then26.i:                                      ; preds = %if.end.i
  %call28.i = call noalias ptr @fopen(ptr noundef nonnull %string.i, ptr noundef nonnull @.str.37), !dbg !2949
    #dbg_value(ptr %call28.i, !1567, !DIExpression(), !2908)
  %cmp29.i = icmp eq ptr %call28.i, null, !dbg !2952
  br i1 %cmp29.i, label %if.then31.i, label %if.else34.i, !dbg !2953

if.then31.i:                                      ; preds = %if.then26.i
  %call33.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.38, ptr noundef nonnull %string.i) #18, !dbg !2954
    #dbg_value(ptr @errortext, !1715, !DIExpression(), !2956)
    #dbg_value(i32 500, !1716, !DIExpression(), !2956)
  %20 = load ptr, ptr @stderr, align 8, !dbg !2958
  %call.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef nonnull @errortext) #16, !dbg !2959
  call void @exit(i32 noundef 500) #17, !dbg !2960
  unreachable, !dbg !2960

if.else34.i:                                      ; preds = %if.then26.i
  %21 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 117, i64 1, ptr nonnull %call28.i), !dbg !2961
  %22 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 93, i64 1, ptr nonnull %call28.i), !dbg !2963
  %23 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 118, i64 1, ptr nonnull %call28.i), !dbg !2964
  %24 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 118, i64 1, ptr nonnull %call28.i), !dbg !2965
  %25 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 117, i64 1, ptr nonnull %call28.i), !dbg !2966
  br label %if.end45.i

if.else41.i:                                      ; preds = %if.end.i
  %call42.i = tail call i32 @fclose(ptr noundef nonnull %call23.i), !dbg !2967
  %call44.i = call noalias ptr @fopen(ptr noundef nonnull %string.i, ptr noundef nonnull @.str.37), !dbg !2969
    #dbg_value(ptr %call44.i, !1567, !DIExpression(), !2908)
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.else41.i, %if.else34.i
  %p_log.0.i = phi ptr [ %call28.i, %if.else34.i ], [ %call44.i, %if.else41.i ], !dbg !2970
    #dbg_value(ptr %p_log.0.i, !1567, !DIExpression(), !2908)
  %call46.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %p_log.0.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.44) #18, !dbg !2971
  %call47.i = tail call i64 @time(ptr noundef null) #18, !dbg !2972
  store i64 %call47.i, ptr %now.i, align 8, !dbg !2973, !DIAssignID !2974
    #dbg_assign(i64 %call47.i, !1568, !DIExpression(), !2974, ptr %now.i, !DIExpression(), !2908)
  %call48.i = call i64 @time(ptr noundef nonnull %now.i) #18, !dbg !2975
  %call49.i = call ptr @localtime(ptr noundef nonnull %now.i) #18, !dbg !2976
    #dbg_value(ptr %call49.i, !1569, !DIExpression(), !2908)
  %call51.i = call i64 @strftime(ptr noundef nonnull %string.i, i64 noundef 255, ptr noundef nonnull @.str.45, ptr noundef %call49.i) #18, !dbg !2977
  %call53.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %p_log.0.i, ptr noundef nonnull @.str.46, ptr noundef nonnull %string.i) #18, !dbg !2978
  %call55.i = call i64 @strftime(ptr noundef nonnull %string.i, i64 noundef 255, ptr noundef nonnull @.str.47, ptr noundef %call49.i) #18, !dbg !2979
  %call57.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %p_log.0.i, ptr noundef nonnull @.str.46, ptr noundef nonnull %string.i) #18, !dbg !2980
  %call59.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %p_log.0.i, ptr noundef nonnull @.str.48, ptr noundef nonnull %3) #18, !dbg !2981
  %number.i = getelementptr inbounds i8, ptr %1, i64 848712, !dbg !2982
  %26 = load i32, ptr %number.i, align 8, !dbg !2982
  %call60.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %p_log.0.i, ptr noundef nonnull @.str.49, i32 noundef %26) #18, !dbg !2983
  %width.i = getelementptr inbounds i8, ptr %1, i64 848780, !dbg !2984
  %27 = load i32, ptr %width.i, align 4, !dbg !2984
  %height.i = getelementptr inbounds i8, ptr %1, i64 848784, !dbg !2985
  %28 = load i32, ptr %height.i, align 8, !dbg !2985
  %call61.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %p_log.0.i, ptr noundef nonnull @.str.50, i32 noundef %27, i32 noundef %28) #18, !dbg !2986
  %yuv_format.i = getelementptr inbounds i8, ptr %1, i64 849088, !dbg !2987
  %29 = load i32, ptr %yuv_format.i, align 8, !dbg !2987
  %idxprom.i = sext i32 %29 to i64, !dbg !2988
  %arrayidx62.i = getelementptr inbounds [4 x [4 x i8]], ptr @Report.yuv_formats, i64 0, i64 %idxprom.i, !dbg !2988
  %call64.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %p_log.0.i, ptr noundef nonnull @.str.51, ptr noundef nonnull %arrayidx62.i) #18, !dbg !2989
  %tobool.not.i = icmp eq ptr %2, null, !dbg !2990
  br i1 %tobool.not.i, label %if.end73.i, label %if.then65.i, !dbg !2992

if.then65.i:                                      ; preds = %if.end45.i
  %entropy_coding_mode_flag.i = getelementptr inbounds i8, ptr %2, i64 12, !dbg !2993
  %30 = load i32, ptr %entropy_coding_mode_flag.i, align 4, !dbg !2993
  %cmp66.i = icmp eq i32 %30, 0, !dbg !2996
  %.str.52..str.53.i = select i1 %cmp66.i, ptr @.str.52, ptr @.str.53
  %31 = call i64 @fwrite(ptr nonnull %.str.52..str.53.i, i64 7, i64 1, ptr %p_log.0.i), !dbg !2997
  br label %if.end73.i, !dbg !2998

if.end73.i:                                       ; preds = %if.then65.i, %if.end45.i
  %snr1.i = getelementptr inbounds i8, ptr %4, i64 16, !dbg !2998
  %32 = load float, ptr %snr1.i, align 4, !dbg !2999
  %conv75.i = fpext float %32 to double, !dbg !2999
  %call76.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %p_log.0.i, ptr noundef nonnull @.str.54, double noundef %conv75.i) #18, !dbg !3000
  %arrayidx78.i = getelementptr inbounds i8, ptr %4, i64 20, !dbg !3001
  %33 = load float, ptr %arrayidx78.i, align 4, !dbg !3001
  %conv79.i = fpext float %33 to double, !dbg !3001
  %call80.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %p_log.0.i, ptr noundef nonnull @.str.54, double noundef %conv79.i) #18, !dbg !3002
  %arrayidx82.i = getelementptr inbounds i8, ptr %4, i64 24, !dbg !3003
  %34 = load float, ptr %arrayidx82.i, align 4, !dbg !3003
  %conv83.i = fpext float %34 to double, !dbg !3003
  %call84.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %p_log.0.i, ptr noundef nonnull @.str.54, double noundef %conv83.i) #18, !dbg !3004
  %snra85.i = getelementptr inbounds i8, ptr %4, i64 28, !dbg !3005
  %35 = load float, ptr %snra85.i, align 4, !dbg !3006
  %conv87.i = fpext float %35 to double, !dbg !3006
  %call88.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %p_log.0.i, ptr noundef nonnull @.str.54, double noundef %conv87.i) #18, !dbg !3007
  %arrayidx90.i = getelementptr inbounds i8, ptr %4, i64 32, !dbg !3008
  %36 = load float, ptr %arrayidx90.i, align 4, !dbg !3008
  %conv91.i = fpext float %36 to double, !dbg !3008
  %call92.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %p_log.0.i, ptr noundef nonnull @.str.54, double noundef %conv91.i) #18, !dbg !3009
  %arrayidx94.i = getelementptr inbounds i8, ptr %4, i64 36, !dbg !3010
  %37 = load float, ptr %arrayidx94.i, align 4, !dbg !3010
  %conv95.i = fpext float %37 to double, !dbg !3010
  %call96.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %p_log.0.i, ptr noundef nonnull @.str.54, double noundef %conv95.i) #18, !dbg !3011
  %fputc242.i = call i32 @fputc(i32 10, ptr %p_log.0.i), !dbg !3012
  %call98.i = call i32 @fclose(ptr noundef %p_log.0.i), !dbg !3013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %string.i, ptr noundef nonnull align 1 dereferenceable(12) @.str.55, i64 12, i1 false), !dbg !3014
  %call102.i = call noalias ptr @fopen(ptr noundef nonnull %string.i, ptr noundef nonnull @.str.37), !dbg !3015
    #dbg_value(ptr %call102.i, !1567, !DIExpression(), !2908)
  %Bframe_ctr.i = getelementptr inbounds i8, ptr %1, i64 856000, !dbg !3016
  %38 = load i32, ptr %Bframe_ctr.i, align 8, !dbg !3016
  %cmp103.not.i = icmp eq i32 %38, 0, !dbg !3018
  %39 = load i32, ptr %number.i, align 8, !dbg !3019
  %ppSliceList133.i = getelementptr inbounds i8, ptr %1, i64 848736, !dbg !3019
  %40 = load ptr, ptr %ppSliceList133.i, align 8, !dbg !3019
  %41 = load ptr, ptr %40, align 8, !dbg !3019
  br i1 %cmp103.not.i, label %if.else131.i, label %if.then105.i, !dbg !3020

if.then105.i:                                     ; preds = %if.end73.i
  %qp.i = getelementptr inbounds i8, ptr %41, i64 148, !dbg !3021
  %42 = load i32, ptr %qp.i, align 4, !dbg !3021
  %43 = load float, ptr %snr1.i, align 4, !dbg !3023
  %conv110.i = fpext float %43 to double, !dbg !3023
  %44 = load float, ptr %arrayidx78.i, align 4, !dbg !3024
  %conv113.i = fpext float %44 to double, !dbg !3024
  %45 = load float, ptr %arrayidx82.i, align 4, !dbg !3025
  %conv116.i = fpext float %45 to double, !dbg !3025
  %46 = load float, ptr %snra85.i, align 4, !dbg !3026
  %conv119.i = fpext float %46 to double, !dbg !3026
  %47 = load float, ptr %arrayidx90.i, align 4, !dbg !3027
  %conv122.i = fpext float %47 to double, !dbg !3027
  %48 = load float, ptr %arrayidx94.i, align 4, !dbg !3028
  %conv125.i = fpext float %48 to double, !dbg !3028
  %tot_time.i = getelementptr inbounds i8, ptr %1, i64 851880, !dbg !3029
  %49 = load i64, ptr %tot_time.i, align 8, !dbg !3029
  %conv126.i = sitofp i64 %49 to double, !dbg !3030
  %mul.i = fmul double %conv126.i, 1.000000e-03, !dbg !3031
  %add.i = add i32 %38, -1, !dbg !3032
  %sub.i = add i32 %add.i, %39, !dbg !3033
  %conv129.i = sitofp i32 %sub.i to double, !dbg !3034
  %div.i = fdiv double %mul.i, %conv129.i, !dbg !3035
  %call130.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call102.i, ptr noundef nonnull @.str.56, i32 noundef %39, i32 noundef 0, i32 noundef %42, double noundef %conv110.i, double noundef %conv113.i, double noundef %conv116.i, i32 noundef 0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 0, double noundef %conv119.i, double noundef %conv122.i, double noundef %conv125.i, i32 noundef 0, double noundef %div.i) #18, !dbg !3036
  br label %Report.exit, !dbg !3037

if.else131.i:                                     ; preds = %if.end73.i
  %tobool135.not.i = icmp eq ptr %41, null, !dbg !3038
  br i1 %tobool135.not.i, label %cond.end.i, label %cond.true.i, !dbg !3038

cond.true.i:                                      ; preds = %if.else131.i
  %qp138.i = getelementptr inbounds i8, ptr %41, i64 148, !dbg !3040
  %50 = load i32, ptr %qp138.i, align 4, !dbg !3040
  br label %cond.end.i, !dbg !3038

cond.end.i:                                       ; preds = %cond.true.i, %if.else131.i
  %cond.i = phi i32 [ %50, %cond.true.i ], [ 0, %if.else131.i ], !dbg !3038
  %51 = load float, ptr %snr1.i, align 4, !dbg !3041
  %conv141.i = fpext float %51 to double, !dbg !3041
  %52 = load float, ptr %arrayidx78.i, align 4, !dbg !3042
  %conv144.i = fpext float %52 to double, !dbg !3042
  %53 = load float, ptr %arrayidx82.i, align 4, !dbg !3043
  %conv147.i = fpext float %53 to double, !dbg !3043
  %54 = load float, ptr %snra85.i, align 4, !dbg !3044
  %conv150.i = fpext float %54 to double, !dbg !3044
  %55 = load float, ptr %arrayidx90.i, align 4, !dbg !3045
  %conv153.i = fpext float %55 to double, !dbg !3045
  %56 = load float, ptr %arrayidx94.i, align 4, !dbg !3046
  %conv156.i = fpext float %56 to double, !dbg !3046
  %tobool158.not.i = icmp eq i32 %39, 0, !dbg !3047
  br i1 %tobool158.not.i, label %cond.end167.i, label %cond.true159.i, !dbg !3047

cond.true159.i:                                   ; preds = %cond.end.i
  %tot_time160.i = getelementptr inbounds i8, ptr %1, i64 851880, !dbg !3048
  %57 = load i64, ptr %tot_time160.i, align 8, !dbg !3048
  %conv161.i = sitofp i64 %57 to double, !dbg !3049
  %mul162.i = fmul double %conv161.i, 1.000000e-03, !dbg !3050
  %conv164.i = sitofp i32 %39 to double, !dbg !3051
  %div165.i = fdiv double %mul162.i, %conv164.i, !dbg !3052
  br label %cond.end167.i, !dbg !3047

cond.end167.i:                                    ; preds = %cond.true159.i, %cond.end.i
  %cond168.i = phi double [ %div165.i, %cond.true159.i ], [ 0.000000e+00, %cond.end.i ], !dbg !3047
  %call169.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call102.i, ptr noundef nonnull @.str.56, i32 noundef %39, i32 noundef 0, i32 noundef %cond.i, double noundef %conv141.i, double noundef %conv144.i, double noundef %conv147.i, i32 noundef 0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 0, double noundef %conv150.i, double noundef %conv153.i, double noundef %conv156.i, i32 noundef 0, double noundef %cond168.i) #18, !dbg !3053
  br label %Report.exit

Report.exit:                                      ; preds = %if.then105.i, %cond.end167.i
  %call171.i = call i32 @fclose(ptr noundef %call102.i), !dbg !3054
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %now.i) #18, !dbg !3055
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %string.i) #18, !dbg !3055
  %58 = load ptr, ptr %p_Vid, align 8, !dbg !3056
  %call = call i32 @FmoFinit(ptr noundef %58) #18, !dbg !3057
  %59 = load ptr, ptr %p_Vid, align 8, !dbg !3058
  call void @free_global_buffers(ptr noundef %59), !dbg !3059
  %60 = load ptr, ptr %p_Vid, align 8, !dbg !3060
  %bitsfile = getelementptr inbounds i8, ptr %60, i64 856616, !dbg !3061
  %61 = load ptr, ptr %bitsfile, align 8, !dbg !3061
  %CloseBitsFile = getelementptr inbounds i8, ptr %61, i64 8, !dbg !3062
  %62 = load ptr, ptr %CloseBitsFile, align 8, !dbg !3062
  call void %62(ptr noundef %60) #18, !dbg !3063
    #dbg_value(i32 0, !2905, !DIExpression(), !2912)
  br label %for.body, !dbg !3064

for.body:                                         ; preds = %Report.exit, %for.inc
  %indvars.iv = phi i64 [ 0, %Report.exit ], [ %indvars.iv.next, %for.inc ]
    #dbg_value(i64 %indvars.iv, !2905, !DIExpression(), !2912)
  %63 = load ptr, ptr %p_Vid, align 8, !dbg !3066
  %p_out_mvc = getelementptr inbounds i8, ptr %63, i64 851892, !dbg !3070
  %arrayidx = getelementptr inbounds [1024 x i32], ptr %p_out_mvc, i64 0, i64 %indvars.iv, !dbg !3071
  %64 = load i32, ptr %arrayidx, align 4, !dbg !3071
  %cmp6.not = icmp eq i32 %64, -1, !dbg !3072
  br i1 %cmp6.not, label %for.inc, label %if.then7, !dbg !3073

if.then7:                                         ; preds = %for.body
  %call12 = call i32 @close(i32 noundef %64) #18, !dbg !3074
  br label %for.inc, !dbg !3076

for.inc:                                          ; preds = %for.body, %if.then7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3077
    #dbg_value(i64 %indvars.iv.next, !2905, !DIExpression(), !2912)
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1024, !dbg !3078
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !3064, !llvm.loop !3079

for.end:                                          ; preds = %for.inc
  %65 = load ptr, ptr %p_Vid, align 8, !dbg !3081
  %p_ref = getelementptr inbounds i8, ptr %65, i64 855988, !dbg !3083
  %66 = load i32, ptr %p_ref, align 4, !dbg !3083
  %cmp15.not = icmp eq i32 %66, -1, !dbg !3084
  br i1 %cmp15.not, label %if.end20, label %if.then16, !dbg !3085

if.then16:                                        ; preds = %for.end
  %call19 = call i32 @close(i32 noundef %66) #18, !dbg !3086
  %.pre = load ptr, ptr %p_Vid, align 8, !dbg !3087
  br label %if.end20, !dbg !3086

if.end20:                                         ; preds = %if.then16, %for.end
  %67 = phi ptr [ %.pre, %if.then16 ], [ %65, %for.end ], !dbg !3087
  %erc_errorVar = getelementptr inbounds i8, ptr %67, i64 856504, !dbg !3088
  %68 = load ptr, ptr %erc_errorVar, align 8, !dbg !3088
  call void @ercClose(ptr noundef %67, ptr noundef %68) #18, !dbg !3089
  %69 = load ptr, ptr %p_Vid, align 8, !dbg !3090
  call void @CleanUpPPS(ptr noundef %69) #18, !dbg !3091
    #dbg_value(i32 0, !2905, !DIExpression(), !2912)
    #dbg_value(i64 0, !2905, !DIExpression(), !2912)
  %70 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %SubsetSeqParSet = getelementptr inbounds i8, ptr %70, i64 699424, !dbg !3096
  call void @reset_subset_sps(ptr noundef nonnull %SubsetSeqParSet) #18, !dbg !3097
    #dbg_value(i64 1, !2905, !DIExpression(), !2912)
  %71 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.1 = getelementptr inbounds i8, ptr %71, i64 704088, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.1) #18, !dbg !3097
    #dbg_value(i64 2, !2905, !DIExpression(), !2912)
  %72 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.2 = getelementptr inbounds i8, ptr %72, i64 708752, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.2) #18, !dbg !3097
    #dbg_value(i64 3, !2905, !DIExpression(), !2912)
  %73 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.3 = getelementptr inbounds i8, ptr %73, i64 713416, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.3) #18, !dbg !3097
    #dbg_value(i64 4, !2905, !DIExpression(), !2912)
  %74 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.4 = getelementptr inbounds i8, ptr %74, i64 718080, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.4) #18, !dbg !3097
    #dbg_value(i64 5, !2905, !DIExpression(), !2912)
  %75 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.5 = getelementptr inbounds i8, ptr %75, i64 722744, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.5) #18, !dbg !3097
    #dbg_value(i64 6, !2905, !DIExpression(), !2912)
  %76 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.6 = getelementptr inbounds i8, ptr %76, i64 727408, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.6) #18, !dbg !3097
    #dbg_value(i64 7, !2905, !DIExpression(), !2912)
  %77 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.7 = getelementptr inbounds i8, ptr %77, i64 732072, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.7) #18, !dbg !3097
    #dbg_value(i64 8, !2905, !DIExpression(), !2912)
  %78 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.8 = getelementptr inbounds i8, ptr %78, i64 736736, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.8) #18, !dbg !3097
    #dbg_value(i64 9, !2905, !DIExpression(), !2912)
  %79 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.9 = getelementptr inbounds i8, ptr %79, i64 741400, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.9) #18, !dbg !3097
    #dbg_value(i64 10, !2905, !DIExpression(), !2912)
  %80 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.10 = getelementptr inbounds i8, ptr %80, i64 746064, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.10) #18, !dbg !3097
    #dbg_value(i64 11, !2905, !DIExpression(), !2912)
  %81 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.11 = getelementptr inbounds i8, ptr %81, i64 750728, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.11) #18, !dbg !3097
    #dbg_value(i64 12, !2905, !DIExpression(), !2912)
  %82 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.12 = getelementptr inbounds i8, ptr %82, i64 755392, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.12) #18, !dbg !3097
    #dbg_value(i64 13, !2905, !DIExpression(), !2912)
  %83 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.13 = getelementptr inbounds i8, ptr %83, i64 760056, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.13) #18, !dbg !3097
    #dbg_value(i64 14, !2905, !DIExpression(), !2912)
  %84 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.14 = getelementptr inbounds i8, ptr %84, i64 764720, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.14) #18, !dbg !3097
    #dbg_value(i64 15, !2905, !DIExpression(), !2912)
  %85 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.15 = getelementptr inbounds i8, ptr %85, i64 769384, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.15) #18, !dbg !3097
    #dbg_value(i64 16, !2905, !DIExpression(), !2912)
  %86 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.16 = getelementptr inbounds i8, ptr %86, i64 774048, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.16) #18, !dbg !3097
    #dbg_value(i64 17, !2905, !DIExpression(), !2912)
  %87 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.17 = getelementptr inbounds i8, ptr %87, i64 778712, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.17) #18, !dbg !3097
    #dbg_value(i64 18, !2905, !DIExpression(), !2912)
  %88 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.18 = getelementptr inbounds i8, ptr %88, i64 783376, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.18) #18, !dbg !3097
    #dbg_value(i64 19, !2905, !DIExpression(), !2912)
  %89 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.19 = getelementptr inbounds i8, ptr %89, i64 788040, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.19) #18, !dbg !3097
    #dbg_value(i64 20, !2905, !DIExpression(), !2912)
  %90 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.20 = getelementptr inbounds i8, ptr %90, i64 792704, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.20) #18, !dbg !3097
    #dbg_value(i64 21, !2905, !DIExpression(), !2912)
  %91 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.21 = getelementptr inbounds i8, ptr %91, i64 797368, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.21) #18, !dbg !3097
    #dbg_value(i64 22, !2905, !DIExpression(), !2912)
  %92 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.22 = getelementptr inbounds i8, ptr %92, i64 802032, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.22) #18, !dbg !3097
    #dbg_value(i64 23, !2905, !DIExpression(), !2912)
  %93 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.23 = getelementptr inbounds i8, ptr %93, i64 806696, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.23) #18, !dbg !3097
    #dbg_value(i64 24, !2905, !DIExpression(), !2912)
  %94 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.24 = getelementptr inbounds i8, ptr %94, i64 811360, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.24) #18, !dbg !3097
    #dbg_value(i64 25, !2905, !DIExpression(), !2912)
  %95 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.25 = getelementptr inbounds i8, ptr %95, i64 816024, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.25) #18, !dbg !3097
    #dbg_value(i64 26, !2905, !DIExpression(), !2912)
  %96 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.26 = getelementptr inbounds i8, ptr %96, i64 820688, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.26) #18, !dbg !3097
    #dbg_value(i64 27, !2905, !DIExpression(), !2912)
  %97 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.27 = getelementptr inbounds i8, ptr %97, i64 825352, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.27) #18, !dbg !3097
    #dbg_value(i64 28, !2905, !DIExpression(), !2912)
  %98 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.28 = getelementptr inbounds i8, ptr %98, i64 830016, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.28) #18, !dbg !3097
    #dbg_value(i64 29, !2905, !DIExpression(), !2912)
  %99 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.29 = getelementptr inbounds i8, ptr %99, i64 834680, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.29) #18, !dbg !3097
    #dbg_value(i64 30, !2905, !DIExpression(), !2912)
  %100 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.30 = getelementptr inbounds i8, ptr %100, i64 839344, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.30) #18, !dbg !3097
    #dbg_value(i64 31, !2905, !DIExpression(), !2912)
  %101 = load ptr, ptr %p_Vid, align 8, !dbg !3092
  %add.ptr.31 = getelementptr inbounds i8, ptr %101, i64 844008, !dbg !3098
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.31) #18, !dbg !3097
    #dbg_value(i64 32, !2905, !DIExpression(), !2912)
  %102 = load ptr, ptr %p_Vid, align 8, !dbg !3099
  %p_Dpb = getelementptr inbounds i8, ptr %102, i64 856656, !dbg !3100
  %103 = load ptr, ptr %p_Dpb, align 8, !dbg !3100
  call void @free_dpb(ptr noundef %103) #18, !dbg !3101
  %104 = load ptr, ptr %p_Vid, align 8, !dbg !3102
  call void @uninit_out_buffer(ptr noundef %104) #18, !dbg !3103
  %105 = load ptr, ptr %0, align 8, !dbg !3104
  call void @free(ptr noundef %105) #18, !dbg !3105
  %106 = load ptr, ptr %p_Vid, align 8, !dbg !3106
    #dbg_value(ptr %106, !3107, !DIExpression(), !3116)
  %cmp.not.i = icmp eq ptr %106, null, !dbg !3118
  br i1 %cmp.not.i, label %free_img.exit, label %if.then.i61, !dbg !3119

if.then.i61:                                      ; preds = %if.end20
  call void @free_annex_b(ptr noundef nonnull %106) #18, !dbg !3120
  %seiToneMapping.i = getelementptr inbounds i8, ptr %106, i64 856728, !dbg !3121
  %107 = load ptr, ptr %seiToneMapping.i, align 8, !dbg !3121
  %cmp1.not.i = icmp eq ptr %107, null, !dbg !3123
  br i1 %cmp1.not.i, label %if.end.i62, label %if.then2.i, !dbg !3124

if.then2.i:                                       ; preds = %if.then.i61
  call void @free(ptr noundef nonnull %107) #18, !dbg !3125
  store ptr null, ptr %seiToneMapping.i, align 8, !dbg !3127
  br label %if.end.i62, !dbg !3128

if.end.i62:                                       ; preds = %if.then2.i, %if.then.i61
  %bitsfile.i = getelementptr inbounds i8, ptr %106, i64 856616, !dbg !3129
  %108 = load ptr, ptr %bitsfile.i, align 8, !dbg !3129
  %cmp5.not.i = icmp eq ptr %108, null, !dbg !3131
  br i1 %cmp5.not.i, label %if.end9.i, label %if.then6.i, !dbg !3132

if.then6.i:                                       ; preds = %if.end.i62
  call void @free(ptr noundef nonnull %108) #18, !dbg !3133
  store ptr null, ptr %bitsfile.i, align 8, !dbg !3135
  br label %if.end9.i, !dbg !3136

if.end9.i:                                        ; preds = %if.then6.i, %if.end.i62
  %p_Dpb_legacy.i = getelementptr inbounds i8, ptr %106, i64 856664, !dbg !3137
  %109 = load ptr, ptr %p_Dpb_legacy.i, align 8, !dbg !3137
  %cmp10.not.i = icmp eq ptr %109, null, !dbg !3139
  br i1 %cmp10.not.i, label %if.end14.i, label %if.then11.i, !dbg !3140

if.then11.i:                                      ; preds = %if.end9.i
  call void @free(ptr noundef nonnull %109) #18, !dbg !3141
  store ptr null, ptr %p_Dpb_legacy.i, align 8, !dbg !3143
  br label %if.end14.i, !dbg !3144

if.end14.i:                                       ; preds = %if.then11.i, %if.end9.i
    #dbg_value(i32 0, !3110, !DIExpression(), !3116)
  %p_Dpb_layer.i = getelementptr inbounds i8, ptr %106, i64 856672
    #dbg_value(i32 0, !3110, !DIExpression(), !3116)
    #dbg_value(i64 0, !3110, !DIExpression(), !3116)
  %110 = load ptr, ptr %p_Dpb_layer.i, align 8, !dbg !3145
  %cmp16.not.i = icmp eq ptr %110, null, !dbg !3150
  br i1 %cmp16.not.i, label %for.inc.i, label %if.then17.i, !dbg !3151

if.then17.i:                                      ; preds = %if.end14.i
  call void @free(ptr noundef nonnull %110) #18, !dbg !3152
  store ptr null, ptr %p_Dpb_layer.i, align 8, !dbg !3154
  br label %for.inc.i, !dbg !3155

for.inc.i:                                        ; preds = %if.then17.i, %if.end14.i
    #dbg_value(i64 1, !3110, !DIExpression(), !3116)
  %arrayidx.1.i = getelementptr inbounds i8, ptr %106, i64 856680, !dbg !3145
  %111 = load ptr, ptr %arrayidx.1.i, align 8, !dbg !3145
  %cmp16.not.1.i = icmp eq ptr %111, null, !dbg !3150
  br i1 %cmp16.not.1.i, label %for.inc.1.i, label %if.then17.1.i, !dbg !3151

if.then17.1.i:                                    ; preds = %for.inc.i
  call void @free(ptr noundef nonnull %111) #18, !dbg !3152
  store ptr null, ptr %arrayidx.1.i, align 8, !dbg !3154
  br label %for.inc.1.i, !dbg !3155

for.inc.1.i:                                      ; preds = %if.then17.1.i, %for.inc.i
    #dbg_value(i64 2, !3110, !DIExpression(), !3116)
  %p_Dpb.i = getelementptr inbounds i8, ptr %106, i64 856656, !dbg !3156
  store ptr null, ptr %p_Dpb.i, align 8, !dbg !3157
  %snr.i = getelementptr inbounds i8, ptr %106, i64 848704, !dbg !3158
  %112 = load ptr, ptr %snr.i, align 8, !dbg !3158
  %cmp25.not.i = icmp eq ptr %112, null, !dbg !3160
  br i1 %cmp25.not.i, label %if.end29.i, label %if.then26.i63, !dbg !3161

if.then26.i63:                                    ; preds = %for.inc.1.i
  call void @free(ptr noundef nonnull %112) #18, !dbg !3162
  store ptr null, ptr %snr.i, align 8, !dbg !3164
  br label %if.end29.i, !dbg !3165

if.end29.i:                                       ; preds = %if.then26.i63, %for.inc.1.i
  %old_slice.i = getelementptr inbounds i8, ptr %106, i64 848696, !dbg !3166
  %113 = load ptr, ptr %old_slice.i, align 8, !dbg !3166
  %cmp30.not.i = icmp eq ptr %113, null, !dbg !3168
  br i1 %cmp30.not.i, label %if.end34.i, label %if.then31.i64, !dbg !3169

if.then31.i64:                                    ; preds = %if.end29.i
  call void @free(ptr noundef nonnull %113) #18, !dbg !3170
  store ptr null, ptr %old_slice.i, align 8, !dbg !3172
  br label %if.end34.i, !dbg !3173

if.end34.i:                                       ; preds = %if.then31.i64, %if.end29.i
  %pNextSlice.i = getelementptr inbounds i8, ptr %106, i64 848880, !dbg !3174
  %114 = load ptr, ptr %pNextSlice.i, align 8, !dbg !3174
  %tobool.not.i65 = icmp eq ptr %114, null, !dbg !3176
  br i1 %tobool.not.i65, label %if.end38.i, label %if.then35.i, !dbg !3177

if.then35.i:                                      ; preds = %if.end34.i
  call fastcc void @free_slice(ptr noundef nonnull %114), !dbg !3178
  store ptr null, ptr %pNextSlice.i, align 8, !dbg !3180
  br label %if.end38.i, !dbg !3181

if.end38.i:                                       ; preds = %if.then35.i, %if.end34.i
  %ppSliceList.i = getelementptr inbounds i8, ptr %106, i64 848736, !dbg !3182
  %115 = load ptr, ptr %ppSliceList.i, align 8, !dbg !3182
  %tobool39.not.i = icmp eq ptr %115, null, !dbg !3183
  br i1 %tobool39.not.i, label %if.end58.i, label %for.cond42.preheader.i, !dbg !3184

for.cond42.preheader.i:                           ; preds = %if.end38.i
  %iNumOfSlicesAllocated.i = getelementptr inbounds i8, ptr %106, i64 848724
    #dbg_value(i32 0, !3111, !DIExpression(), !3185)
  %116 = load i32, ptr %iNumOfSlicesAllocated.i, align 4, !dbg !3186
  %cmp43123.i = icmp sgt i32 %116, 0, !dbg !3189
  br i1 %cmp43123.i, label %for.body44.i, label %for.end56.i, !dbg !3190

for.body44.i:                                     ; preds = %for.cond42.preheader.i, %for.inc54.i
  %117 = phi i32 [ %120, %for.inc54.i ], [ %116, %for.cond42.preheader.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc54.i ], [ 0, %for.cond42.preheader.i ]
    #dbg_value(i64 %indvars.iv.i, !3111, !DIExpression(), !3185)
  %118 = load ptr, ptr %ppSliceList.i, align 8, !dbg !3191
  %arrayidx47.i = getelementptr inbounds ptr, ptr %118, i64 %indvars.iv.i, !dbg !3193
  %119 = load ptr, ptr %arrayidx47.i, align 8, !dbg !3193
  %tobool48.not.i = icmp eq ptr %119, null, !dbg !3193
  br i1 %tobool48.not.i, label %for.inc54.i, label %if.then49.i, !dbg !3194

if.then49.i:                                      ; preds = %for.body44.i
  call fastcc void @free_slice(ptr noundef nonnull %119), !dbg !3195
  %.pre.i = load i32, ptr %iNumOfSlicesAllocated.i, align 4, !dbg !3186
  br label %for.inc54.i, !dbg !3195

for.inc54.i:                                      ; preds = %if.then49.i, %for.body44.i
  %120 = phi i32 [ %117, %for.body44.i ], [ %.pre.i, %if.then49.i ], !dbg !3186
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !3196
    #dbg_value(i64 %indvars.iv.next.i, !3111, !DIExpression(), !3185)
  %121 = sext i32 %120 to i64, !dbg !3189
  %cmp43.i = icmp slt i64 %indvars.iv.next.i, %121, !dbg !3189
  br i1 %cmp43.i, label %for.body44.i, label %for.end56.loopexit.i, !dbg !3190, !llvm.loop !3197

for.end56.loopexit.i:                             ; preds = %for.inc54.i
  %.pre127.i = load ptr, ptr %ppSliceList.i, align 8, !dbg !3199
  br label %for.end56.i, !dbg !3199

for.end56.i:                                      ; preds = %for.end56.loopexit.i, %for.cond42.preheader.i
  %122 = phi ptr [ %.pre127.i, %for.end56.loopexit.i ], [ %115, %for.cond42.preheader.i ], !dbg !3199
  call void @free(ptr noundef %122) #18, !dbg !3200
  br label %if.end58.i, !dbg !3201

if.end58.i:                                       ; preds = %for.end56.i, %if.end38.i
  %nalu.i = getelementptr inbounds i8, ptr %106, i64 856832, !dbg !3202
  %123 = load ptr, ptr %nalu.i, align 8, !dbg !3202
  %tobool59.not.i = icmp eq ptr %123, null, !dbg !3204
  br i1 %tobool59.not.i, label %if.end63.i, label %if.then60.i, !dbg !3205

if.then60.i:                                      ; preds = %if.end58.i
  call void @FreeNALU(ptr noundef nonnull %123) #18, !dbg !3206
  store ptr null, ptr %nalu.i, align 8, !dbg !3208
  br label %if.end63.i, !dbg !3209

if.end63.i:                                       ; preds = %if.then60.i, %if.end58.i
  %pDecOuputPic.i = getelementptr inbounds i8, ptr %106, i64 856816, !dbg !3210
  %124 = load ptr, ptr %pDecOuputPic.i, align 8, !dbg !3210
    #dbg_value(ptr %124, !1735, !DIExpression(), !3211)
  %tobool.not11.i.i = icmp eq ptr %124, null, !dbg !3213
  br i1 %tobool.not11.i.i, label %FreeDecPicList.exit.i, label %while.body.i.i, !dbg !3213

while.body.i.i:                                   ; preds = %if.end63.i, %if.end.i.i
  %pDecPicList.addr.012.i.i = phi ptr [ %125, %if.end.i.i ], [ %124, %if.end63.i ]
    #dbg_value(ptr %pDecPicList.addr.012.i.i, !1735, !DIExpression(), !3211)
  %pNext.i.i = getelementptr inbounds i8, ptr %pDecPicList.addr.012.i.i, i64 72, !dbg !3214
  %125 = load ptr, ptr %pNext.i.i, align 8, !dbg !3214
    #dbg_value(ptr %125, !1736, !DIExpression(), !3215)
  %pY.i.i = getelementptr inbounds i8, ptr %pDecPicList.addr.012.i.i, i64 24, !dbg !3216
  %126 = load ptr, ptr %pY.i.i, align 8, !dbg !3216
  %tobool1.not.i.i = icmp eq ptr %126, null, !dbg !3217
  br i1 %tobool1.not.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3218

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @free(ptr noundef nonnull %126) #18, !dbg !3219
  br label %if.end.i.i, !dbg !3220

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i.i
  call void @free(ptr noundef nonnull %pDecPicList.addr.012.i.i) #18, !dbg !3221
    #dbg_value(ptr %125, !1735, !DIExpression(), !3211)
  %tobool.not.i.i = icmp eq ptr %125, null, !dbg !3213
  br i1 %tobool.not.i.i, label %FreeDecPicList.exit.i, label %while.body.i.i, !dbg !3213, !llvm.loop !3222

FreeDecPicList.exit.i:                            ; preds = %if.end.i.i, %if.end63.i
  %pNextPPS.i = getelementptr inbounds i8, ptr %106, i64 856872, !dbg !3224
  %127 = load ptr, ptr %pNextPPS.i, align 8, !dbg !3224
  %tobool64.not.i = icmp eq ptr %127, null, !dbg !3226
  br i1 %tobool64.not.i, label %if.end68.i, label %if.then65.i66, !dbg !3227

if.then65.i66:                                    ; preds = %FreeDecPicList.exit.i
  call void @FreePPS(ptr noundef nonnull %127) #18, !dbg !3228
  br label %if.end68.i, !dbg !3230

if.end68.i:                                       ; preds = %if.then65.i66, %FreeDecPicList.exit.i
  call void @free(ptr noundef nonnull %106) #18, !dbg !3231
    #dbg_value(ptr null, !3107, !DIExpression(), !3116)
  br label %free_img.exit, !dbg !3232

free_img.exit:                                    ; preds = %if.end20, %if.end68.i
  call void @free(ptr noundef %0) #18, !dbg !3233
  br label %cleanup, !dbg !3234

cleanup:                                          ; preds = %entry, %free_img.exit
  ret i32 0, !dbg !3235
}

declare !dbg !3236 i32 @FmoFinit(ptr noundef) local_unnamed_addr #6

declare !dbg !3238 i32 @close(i32 noundef) local_unnamed_addr #6

declare !dbg !3242 void @ercClose(ptr noundef, ptr noundef) local_unnamed_addr #6

declare !dbg !3247 void @CleanUpPPS(ptr noundef) local_unnamed_addr #6

declare !dbg !3248 void @reset_subset_sps(ptr noundef) local_unnamed_addr #6

declare !dbg !3251 void @free_dpb(ptr noundef) local_unnamed_addr #6

declare !dbg !3254 void @uninit_out_buffer(ptr noundef) local_unnamed_addr #6

declare !dbg !3255 ptr @AllocNALU(i32 noundef) local_unnamed_addr #6

declare !dbg !3258 ptr @AllocPPS() local_unnamed_addr #6

declare !dbg !3261 void @init_tone_mapping_sei(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !3264 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare !dbg !3267 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !3270 i64 @time(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare !dbg !3274 ptr @localtime(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare !dbg !3279 i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

declare !dbg !3285 void @free_annex_b(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @free_slice(ptr noundef %currSlice) unnamed_addr #3 !dbg !3286 {
entry:
    #dbg_value(ptr %currSlice, !3290, !DIExpression(), !3294)
  tail call void @free_pred_mem(ptr noundef %currSlice) #18, !dbg !3295
  %cof = getelementptr inbounds i8, ptr %currSlice, i64 1272, !dbg !3296
  %0 = load ptr, ptr %cof, align 8, !dbg !3296
  tail call void @free_mem3Dint(ptr noundef %0) #18, !dbg !3297
  %mb_rres = getelementptr inbounds i8, ptr %currSlice, i64 1264, !dbg !3298
  %1 = load ptr, ptr %mb_rres, align 8, !dbg !3298
  tail call void @free_mem3Dint(ptr noundef %1) #18, !dbg !3299
  %mb_rec = getelementptr inbounds i8, ptr %currSlice, i64 1256, !dbg !3300
  %2 = load ptr, ptr %mb_rec, align 8, !dbg !3300
  tail call void @free_mem3Dpel(ptr noundef %2) #18, !dbg !3301
  %mb_pred = getelementptr inbounds i8, ptr %currSlice, i64 1248, !dbg !3302
  %3 = load ptr, ptr %mb_pred, align 8, !dbg !3302
  tail call void @free_mem3Dpel(ptr noundef %3) #18, !dbg !3303
  %wp_weight = getelementptr inbounds i8, ptr %currSlice, i64 13280, !dbg !3304
  %4 = load ptr, ptr %wp_weight, align 8, !dbg !3304
  tail call void @free_mem3Dint(ptr noundef %4) #18, !dbg !3305
  %wp_offset = getelementptr inbounds i8, ptr %currSlice, i64 13288, !dbg !3306
  %5 = load ptr, ptr %wp_offset, align 8, !dbg !3306
  tail call void @free_mem3Dint(ptr noundef %5) #18, !dbg !3307
  %wbp_weight = getelementptr inbounds i8, ptr %currSlice, i64 13296, !dbg !3308
  %6 = load ptr, ptr %wbp_weight, align 8, !dbg !3308
  tail call void @free_mem4Dint(ptr noundef %6) #18, !dbg !3309
  %partArr = getelementptr inbounds i8, ptr %currSlice, i64 312, !dbg !3310
  %7 = load ptr, ptr %partArr, align 8, !dbg !3310
    #dbg_value(ptr %7, !1963, !DIExpression(), !3311)
    #dbg_value(i32 3, !1964, !DIExpression(), !3311)
    #dbg_value(i32 0, !1965, !DIExpression(), !3311)
    #dbg_value(i64 0, !1965, !DIExpression(), !3311)
  %8 = load ptr, ptr %7, align 8, !dbg !3313
  %streamBuffer.i = getelementptr inbounds i8, ptr %8, i64 16, !dbg !3314
  %9 = load ptr, ptr %streamBuffer.i, align 8, !dbg !3314
  tail call void @free(ptr noundef %9) #18, !dbg !3315
  %10 = load ptr, ptr %7, align 8, !dbg !3316
  tail call void @free(ptr noundef %10) #18, !dbg !3317
    #dbg_value(i64 1, !1965, !DIExpression(), !3311)
  %arrayidx.i.1 = getelementptr inbounds i8, ptr %7, i64 48, !dbg !3318
  %11 = load ptr, ptr %arrayidx.i.1, align 8, !dbg !3313
  %streamBuffer.i.1 = getelementptr inbounds i8, ptr %11, i64 16, !dbg !3314
  %12 = load ptr, ptr %streamBuffer.i.1, align 8, !dbg !3314
  tail call void @free(ptr noundef %12) #18, !dbg !3315
  %13 = load ptr, ptr %arrayidx.i.1, align 8, !dbg !3316
  tail call void @free(ptr noundef %13) #18, !dbg !3317
    #dbg_value(i64 2, !1965, !DIExpression(), !3311)
  %arrayidx.i.2 = getelementptr inbounds i8, ptr %7, i64 96, !dbg !3318
  %14 = load ptr, ptr %arrayidx.i.2, align 8, !dbg !3313
  %streamBuffer.i.2 = getelementptr inbounds i8, ptr %14, i64 16, !dbg !3314
  %15 = load ptr, ptr %streamBuffer.i.2, align 8, !dbg !3314
  tail call void @free(ptr noundef %15) #18, !dbg !3315
  %16 = load ptr, ptr %arrayidx.i.2, align 8, !dbg !3316
  tail call void @free(ptr noundef %16) #18, !dbg !3317
    #dbg_value(i64 3, !1965, !DIExpression(), !3311)
  tail call void @free(ptr noundef nonnull %7) #18, !dbg !3319
  %mot_ctx = getelementptr inbounds i8, ptr %currSlice, i64 320, !dbg !3320
  %17 = load ptr, ptr %mot_ctx, align 8, !dbg !3320
  tail call void @delete_contexts_MotionInfo(ptr noundef %17) #18, !dbg !3322
  %tex_ctx = getelementptr inbounds i8, ptr %currSlice, i64 328, !dbg !3323
  %18 = load ptr, ptr %tex_ctx, align 8, !dbg !3323
  tail call void @delete_contexts_TextureInfo(ptr noundef %18) #18, !dbg !3324
    #dbg_value(i32 0, !3291, !DIExpression(), !3294)
  %listX = getelementptr inbounds i8, ptr %currSlice, i64 264
    #dbg_value(i64 0, !3291, !DIExpression(), !3294)
  %19 = load ptr, ptr %listX, align 8, !dbg !3325
  %tobool.not = icmp eq ptr %19, null, !dbg !3325
  br i1 %tobool.not, label %for.inc, label %if.then, !dbg !3330

if.then:                                          ; preds = %entry
  tail call void @free(ptr noundef nonnull %19) #18, !dbg !3331
  store ptr null, ptr %listX, align 8, !dbg !3333
  br label %for.inc, !dbg !3334

for.inc:                                          ; preds = %entry, %if.then
    #dbg_value(i64 1, !3291, !DIExpression(), !3294)
  %arrayidx.1 = getelementptr inbounds i8, ptr %currSlice, i64 272, !dbg !3325
  %20 = load ptr, ptr %arrayidx.1, align 8, !dbg !3325
  %tobool.not.1 = icmp eq ptr %20, null, !dbg !3325
  br i1 %tobool.not.1, label %for.inc.1, label %if.then.1, !dbg !3330

if.then.1:                                        ; preds = %for.inc
  tail call void @free(ptr noundef nonnull %20) #18, !dbg !3331
  store ptr null, ptr %arrayidx.1, align 8, !dbg !3333
  br label %for.inc.1, !dbg !3334

for.inc.1:                                        ; preds = %if.then.1, %for.inc
    #dbg_value(i64 2, !3291, !DIExpression(), !3294)
  %arrayidx.2 = getelementptr inbounds i8, ptr %currSlice, i64 280, !dbg !3325
  %21 = load ptr, ptr %arrayidx.2, align 8, !dbg !3325
  %tobool.not.2 = icmp eq ptr %21, null, !dbg !3325
  br i1 %tobool.not.2, label %for.inc.2, label %if.then.2, !dbg !3330

if.then.2:                                        ; preds = %for.inc.1
  tail call void @free(ptr noundef nonnull %21) #18, !dbg !3331
  store ptr null, ptr %arrayidx.2, align 8, !dbg !3333
  br label %for.inc.2, !dbg !3334

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1
    #dbg_value(i64 3, !3291, !DIExpression(), !3294)
  %arrayidx.3 = getelementptr inbounds i8, ptr %currSlice, i64 288, !dbg !3325
  %22 = load ptr, ptr %arrayidx.3, align 8, !dbg !3325
  %tobool.not.3 = icmp eq ptr %22, null, !dbg !3325
  br i1 %tobool.not.3, label %for.inc.3, label %if.then.3, !dbg !3330

if.then.3:                                        ; preds = %for.inc.2
  tail call void @free(ptr noundef nonnull %22) #18, !dbg !3331
  store ptr null, ptr %arrayidx.3, align 8, !dbg !3333
  br label %for.inc.3, !dbg !3334

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2
    #dbg_value(i64 4, !3291, !DIExpression(), !3294)
  %arrayidx.4 = getelementptr inbounds i8, ptr %currSlice, i64 296, !dbg !3325
  %23 = load ptr, ptr %arrayidx.4, align 8, !dbg !3325
  %tobool.not.4 = icmp eq ptr %23, null, !dbg !3325
  br i1 %tobool.not.4, label %for.inc.4, label %if.then.4, !dbg !3330

if.then.4:                                        ; preds = %for.inc.3
  tail call void @free(ptr noundef nonnull %23) #18, !dbg !3331
  store ptr null, ptr %arrayidx.4, align 8, !dbg !3333
  br label %for.inc.4, !dbg !3334

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3
    #dbg_value(i64 5, !3291, !DIExpression(), !3294)
  %arrayidx.5 = getelementptr inbounds i8, ptr %currSlice, i64 304, !dbg !3325
  %24 = load ptr, ptr %arrayidx.5, align 8, !dbg !3325
  %tobool.not.5 = icmp eq ptr %24, null, !dbg !3325
  br i1 %tobool.not.5, label %for.inc.5, label %if.then.5, !dbg !3330

if.then.5:                                        ; preds = %for.inc.4
  tail call void @free(ptr noundef nonnull %24) #18, !dbg !3331
  store ptr null, ptr %arrayidx.5, align 8, !dbg !3333
  br label %for.inc.5, !dbg !3334

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4
    #dbg_value(i64 6, !3291, !DIExpression(), !3294)
  %dec_ref_pic_marking_buffer = getelementptr inbounds i8, ptr %currSlice, i64 248
  %25 = load ptr, ptr %dec_ref_pic_marking_buffer, align 8, !dbg !3335
  %tobool7.not34 = icmp eq ptr %25, null, !dbg !3336
  br i1 %tobool7.not34, label %while.end, label %while.body, !dbg !3336

while.body:                                       ; preds = %for.inc.5, %while.body
  %26 = phi ptr [ %28, %while.body ], [ %25, %for.inc.5 ]
    #dbg_value(ptr %26, !3292, !DIExpression(), !3337)
  %Next = getelementptr inbounds i8, ptr %26, i64 24, !dbg !3338
  %27 = load ptr, ptr %Next, align 8, !dbg !3338
  store ptr %27, ptr %dec_ref_pic_marking_buffer, align 8, !dbg !3339
  tail call void @free(ptr noundef nonnull %26) #18, !dbg !3340
  %28 = load ptr, ptr %dec_ref_pic_marking_buffer, align 8, !dbg !3335
  %tobool7.not = icmp eq ptr %28, null, !dbg !3336
  br i1 %tobool7.not, label %while.end, label %while.body, !dbg !3336, !llvm.loop !3341

while.end:                                        ; preds = %while.body, %for.inc.5
  tail call void @free(ptr noundef nonnull %currSlice) #18, !dbg !3343
    #dbg_value(ptr null, !3290, !DIExpression(), !3294)
  ret void, !dbg !3344
}

declare !dbg !3345 void @FreeNALU(ptr noundef) local_unnamed_addr #6

declare !dbg !3348 void @FreePPS(ptr noundef) local_unnamed_addr #6

declare !dbg !3351 void @free_pred_mem(ptr noundef) local_unnamed_addr #6

declare !dbg !3352 void @free_mem3Dint(ptr noundef) local_unnamed_addr #6

declare !dbg !3355 void @free_mem4Dint(ptr noundef) local_unnamed_addr #6

declare !dbg !3358 void @delete_contexts_MotionInfo(ptr noundef) local_unnamed_addr #6

declare !dbg !3361 void @delete_contexts_TextureInfo(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { cold nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(0,1) }
attributes #20 = { cold }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!1703, !1704, !1705, !1706, !1707, !1708, !1709}
!llvm.ident = !{!1710}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "ldecod_src/ldecod.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "4db82ea68c629d3eb825d20a319a1c22")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 4)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "errortext", scope: !9, file: !2, line: 77, type: !1700, isLocal: false, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !105, globals: !1455, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !20, !26, !35, !42, !50, !69, !75, !86, !93, !101}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 22, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "ldecod_src/inc/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "fd6ca9e1c707932f749220576db72b57")
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{!15, !16, !17, !18, !19}
!15 = !DIEnumerator(name: "CF_UNKNOWN", value: -1)
!16 = !DIEnumerator(name: "YUV400", value: 0)
!17 = !DIEnumerator(name: "YUV420", value: 1)
!18 = !DIEnumerator(name: "YUV422", value: 2)
!19 = !DIEnumerator(name: "YUV444", value: 3)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 15, baseType: !13, size: 32, elements: !21)
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "CM_UNKNOWN", value: -1)
!23 = !DIEnumerator(name: "CM_YUV", value: 0)
!24 = !DIEnumerator(name: "CM_RGB", value: 1)
!25 = !DIEnumerator(name: "CM_XYZ", value: 2)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 25, baseType: !13, size: 32, elements: !28)
!27 = !DIFile(filename: "ldecod_src/inc/io_video.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1141c07f1801ad27d87214c419749431")
!28 = !{!29, !30, !31, !32, !33, !34}
!29 = !DIEnumerator(name: "VIDEO_UNKNOWN", value: -1)
!30 = !DIEnumerator(name: "VIDEO_YUV", value: 0)
!31 = !DIEnumerator(name: "VIDEO_RGB", value: 1)
!32 = !DIEnumerator(name: "VIDEO_XYZ", value: 2)
!33 = !DIEnumerator(name: "VIDEO_TIFF", value: 3)
!34 = !DIEnumerator(name: "VIDEO_AVI", value: 4)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 135, baseType: !37, size: 32, elements: !38)
!36 = !DIFile(filename: "ldecod_src/inc/types.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "64f87bd13f2911471c7313b4ac17e90c")
!37 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!38 = !{!39, !40, !41}
!39 = !DIEnumerator(name: "FRAME", value: 0)
!40 = !DIEnumerator(name: "TOP_FIELD", value: 1)
!41 = !DIEnumerator(name: "BOTTOM_FIELD", value: 2)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 22, baseType: !37, size: 32, elements: !43)
!43 = !{!44, !45, !46, !47, !48, !49}
!44 = !DIEnumerator(name: "PLANE_Y", value: 0)
!45 = !DIEnumerator(name: "PLANE_U", value: 1)
!46 = !DIEnumerator(name: "PLANE_V", value: 2)
!47 = !DIEnumerator(name: "PLANE_G", value: 0)
!48 = !DIEnumerator(name: "PLANE_B", value: 1)
!49 = !DIEnumerator(name: "PLANE_R", value: 2)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 24, baseType: !37, size: 32, elements: !52)
!51 = !DIFile(filename: "ldecod_src/inc/nalucommon.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "f9e55677f5f79524218c8a7a94869788")
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!53 = !DIEnumerator(name: "NALU_TYPE_SLICE", value: 1)
!54 = !DIEnumerator(name: "NALU_TYPE_DPA", value: 2)
!55 = !DIEnumerator(name: "NALU_TYPE_DPB", value: 3)
!56 = !DIEnumerator(name: "NALU_TYPE_DPC", value: 4)
!57 = !DIEnumerator(name: "NALU_TYPE_IDR", value: 5)
!58 = !DIEnumerator(name: "NALU_TYPE_SEI", value: 6)
!59 = !DIEnumerator(name: "NALU_TYPE_SPS", value: 7)
!60 = !DIEnumerator(name: "NALU_TYPE_PPS", value: 8)
!61 = !DIEnumerator(name: "NALU_TYPE_AUD", value: 9)
!62 = !DIEnumerator(name: "NALU_TYPE_EOSEQ", value: 10)
!63 = !DIEnumerator(name: "NALU_TYPE_EOSTREAM", value: 11)
!64 = !DIEnumerator(name: "NALU_TYPE_FILL", value: 12)
!65 = !DIEnumerator(name: "NALU_TYPE_PREFIX", value: 14)
!66 = !DIEnumerator(name: "NALU_TYPE_SUB_SPS", value: 15)
!67 = !DIEnumerator(name: "NALU_TYPE_SLC_EXT", value: 20)
!68 = !DIEnumerator(name: "NALU_TYPE_VDRD", value: 24)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 46, baseType: !37, size: 32, elements: !70)
!70 = !{!71, !72, !73, !74}
!71 = !DIEnumerator(name: "NALU_PRIORITY_HIGHEST", value: 3)
!72 = !DIEnumerator(name: "NALU_PRIORITY_HIGH", value: 2)
!73 = !DIEnumerator(name: "NALU_PRIORITY_LOW", value: 1)
!74 = !DIEnumerator(name: "NALU_PRIORITY_DISPOSABLE", value: 0)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !76, line: 19, baseType: !37, size: 32, elements: !77)
!76 = !DIFile(filename: "ldecod_src/inc/h264decoder.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "ba430f541025e478510e78b4ed3faeb6")
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85}
!78 = !DIEnumerator(name: "DEC_GEN_NOERR", value: 0)
!79 = !DIEnumerator(name: "DEC_OPEN_NOERR", value: 0)
!80 = !DIEnumerator(name: "DEC_CLOSE_NOERR", value: 0)
!81 = !DIEnumerator(name: "DEC_SUCCEED", value: 0)
!82 = !DIEnumerator(name: "DEC_EOS", value: 1)
!83 = !DIEnumerator(name: "DEC_NEED_DATA", value: 2)
!84 = !DIEnumerator(name: "DEC_INVALID_PARAM", value: 3)
!85 = !DIEnumerator(name: "DEC_ERRMASK", value: 32768)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !87, line: 231, baseType: !37, size: 32, elements: !88)
!87 = !DIFile(filename: "ldecod_src/inc/defines.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "f06de374c735b286d10ba4ea0c8c0a5d")
!88 = !{!89, !90, !91, !92}
!89 = !DIEnumerator(name: "EOS", value: 1)
!90 = !DIEnumerator(name: "SOP", value: 2)
!91 = !DIEnumerator(name: "SOS", value: 3)
!92 = !DIEnumerator(name: "SOS_CONT", value: 4)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 142, baseType: !37, size: 32, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !100}
!95 = !DIEnumerator(name: "P_SLICE", value: 0)
!96 = !DIEnumerator(name: "B_SLICE", value: 1)
!97 = !DIEnumerator(name: "I_SLICE", value: 2)
!98 = !DIEnumerator(name: "SP_SLICE", value: 3)
!99 = !DIEnumerator(name: "SI_SLICE", value: 4)
!100 = !DIEnumerator(name: "NUM_SLICE_TYPES", value: 5)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 119, baseType: !37, size: 32, elements: !102)
!102 = !{!103, !104}
!103 = !DIEnumerator(name: "CAVLC", value: 0)
!104 = !DIEnumerator(name: "CABAC", value: 1)
!105 = !{!106, !1378, !112, !121, !503, !140, !431, !1379, !13, !558, !1011, !1380, !878, !1443, !1445, !1447, !1449, !502, !922, !37, !1451, !177}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !108, line: 324, baseType: !109)
!108 = !DIFile(filename: "ldecod_src/inc/global.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c4ca3c417c5616a2ff6b6266e7376fc1")
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !108, line: 314, size: 384, elements: !110)
!110 = !{!111, !126, !136}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !109, file: !108, line: 317, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !108, line: 47, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bit_stream", file: !108, line: 300, size: 256, elements: !115)
!115 = !{!116, !117, !118, !119, !120, !125}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "read_len", scope: !114, file: !108, line: 303, baseType: !13, size: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "code_len", scope: !114, file: !108, line: 304, baseType: !13, size: 32, offset: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "frame_bitoffset", scope: !114, file: !108, line: 306, baseType: !13, size: 32, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_length", scope: !114, file: !108, line: 307, baseType: !13, size: 32, offset: 96)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !114, file: !108, line: 309, baseType: !121, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !123, line: 21, baseType: !124)
!123 = !DIFile(filename: "ldecod_src/inc/typedefs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1393d024b72e653f4e6dbeffdb0b154")
!124 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !114, file: !108, line: 310, baseType: !13, size: 32, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "de_cabac", scope: !109, file: !108, line: 318, baseType: !127, size: 256, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironment", file: !108, line: 95, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 88, size: 256, elements: !129)
!129 = !{!130, !131, !132, !133, !134}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "Drange", scope: !128, file: !108, line: 90, baseType: !37, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "Dvalue", scope: !128, file: !108, line: 91, baseType: !37, size: 32, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "DbitsLeft", scope: !128, file: !108, line: 92, baseType: !13, size: 32, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm", scope: !128, file: !108, line: 93, baseType: !121, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm_len", scope: !128, file: !108, line: 94, baseType: !135, size: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "readSyntaxElement", scope: !109, file: !108, line: 320, baseType: !137, size: 64, offset: 320)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!13, !140, !1376, !1374}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "Macroblock", file: !108, line: 273, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "macroblock", file: !108, line: 197, size: 3840, elements: !143)
!143 = !{!144, !1273, !1274, !1275, !1276, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1305, !1306, !1307, !1308, !1309, !1312, !1313, !1315, !1316, !1317, !1318, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1342, !1343, !1348, !1354, !1375}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "p_Slice", scope: !142, file: !108, line: 199, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slice", file: !108, line: 341, size: 109184, elements: !147)
!147 = !{!148, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1098, !1100, !1101, !1129, !1156, !1159, !1160, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1195, !1196, !1197, !1198, !1199, !1200, !1203, !1204, !1207, !1208, !1210, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1223, !1224, !1225, !1226, !1227, !1229, !1230, !1231, !1235, !1239, !1243, !1247, !1251, !1252, !1253, !1254, !1258, !1259, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !146, file: !108, line: 343, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_par", file: !108, line: 566, size: 6855040, elements: !151)
!151 = !{!152, !236, !289, !393, !395, !397, !455, !457, !458, !459, !460, !461, !464, !484, !496, !497, !498, !499, !500, !501, !505, !506, !508, !509, !510, !511, !512, !513, !515, !517, !520, !521, !523, !524, !525, !526, !527, !529, !530, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !772, !773, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !810, !814, !815, !817, !818, !827, !849, !850, !851, !855, !869, !911, !912, !913, !914, !915, !916, !940, !941, !943, !947, !948, !949, !950, !967, !972, !986, !990, !994, !995, !1000, !1001, !1005, !1006, !1010, !1031, !1032, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !150, file: !108, line: 568, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inp_par", file: !108, line: 850, size: 32128, elements: !155)
!155 = !{!156, !160, !161, !162, !163, !164, !165, !166, !167, !168, !198, !199, !200, !201, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "infile", scope: !154, file: !108, line: 852, baseType: !157, size: 2040)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2040, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 255)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "outfile", scope: !154, file: !108, line: 853, baseType: !157, size: 2040, offset: 2040)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "reffile", scope: !154, file: !108, line: 854, baseType: !157, size: 2040, offset: 4080)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "FileFormat", scope: !154, file: !108, line: 856, baseType: !13, size: 32, offset: 6144)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ref_offset", scope: !154, file: !108, line: 857, baseType: !13, size: 32, offset: 6176)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "poc_scale", scope: !154, file: !108, line: 858, baseType: !13, size: 32, offset: 6208)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "write_uv", scope: !154, file: !108, line: 859, baseType: !13, size: 32, offset: 6240)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "silent", scope: !154, file: !108, line: 860, baseType: !13, size: 32, offset: 6272)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "intra_profile_deblocking", scope: !154, file: !108, line: 861, baseType: !13, size: 32, offset: 6304)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !154, file: !108, line: 864, baseType: !169, size: 1088, offset: 6336)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameFormat", file: !12, line: 52, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_format", file: !12, line: 30, size: 1088, elements: !171)
!171 = !{!172, !174, !176, !178, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !170, file: !12, line: 32, baseType: !173, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorFormat", file: !12, line: 28, baseType: !11)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "color_model", scope: !170, file: !12, line: 33, baseType: !175, size: 32, offset: 32)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorModel", file: !12, line: 20, baseType: !20)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "frame_rate", scope: !170, file: !12, line: 34, baseType: !177, size: 64, offset: 64)
!177 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !170, file: !12, line: 35, baseType: !179, size: 96, offset: 128)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 96, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 3)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !170, file: !12, line: 36, baseType: !179, size: 96, offset: 224)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right", scope: !170, file: !12, line: 37, baseType: !13, size: 32, offset: 320)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom", scope: !170, file: !12, line: 38, baseType: !13, size: 32, offset: 352)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right_cr", scope: !170, file: !12, line: 39, baseType: !13, size: 32, offset: 384)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom_cr", scope: !170, file: !12, line: 40, baseType: !13, size: 32, offset: 416)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "width_crop", scope: !170, file: !12, line: 41, baseType: !13, size: 32, offset: 448)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "height_crop", scope: !170, file: !12, line: 42, baseType: !13, size: 32, offset: 480)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "mb_width", scope: !170, file: !12, line: 43, baseType: !13, size: 32, offset: 512)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "mb_height", scope: !170, file: !12, line: 44, baseType: !13, size: 32, offset: 544)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "size_cmp", scope: !170, file: !12, line: 45, baseType: !179, size: 96, offset: 576)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !170, file: !12, line: 46, baseType: !13, size: 32, offset: 672)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth", scope: !170, file: !12, line: 47, baseType: !179, size: 96, offset: 704)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !170, file: !12, line: 48, baseType: !179, size: 96, offset: 800)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "max_value_sq", scope: !170, file: !12, line: 49, baseType: !179, size: 96, offset: 896)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !170, file: !12, line: 50, baseType: !13, size: 32, offset: 992)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_shift3", scope: !170, file: !12, line: 51, baseType: !13, size: 32, offset: 1024)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !154, file: !108, line: 865, baseType: !169, size: 1088, offset: 7424)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "ProcessInput", scope: !154, file: !108, line: 867, baseType: !13, size: 32, offset: 8512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "enable_32_pulldown", scope: !154, file: !108, line: 868, baseType: !13, size: 32, offset: 8544)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "input_file1", scope: !154, file: !108, line: 869, baseType: !202, size: 7744, offset: 8576)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoDataFile", file: !27, line: 60, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_data_file", file: !27, line: 34, size: 7744, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !203, file: !27, line: 37, baseType: !157, size: 2040)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "fhead", scope: !203, file: !27, line: 38, baseType: !157, size: 2040, offset: 2040)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "ftail", scope: !203, file: !27, line: 39, baseType: !157, size: 2040, offset: 4080)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "f_num", scope: !203, file: !27, line: 40, baseType: !13, size: 32, offset: 6144)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "vdtype", scope: !203, file: !27, line: 41, baseType: !210, size: 32, offset: 6176)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoFileType", file: !27, line: 32, baseType: !26)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !203, file: !27, line: 42, baseType: !169, size: 1088, offset: 6208)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "is_concatenated", scope: !203, file: !27, line: 43, baseType: !13, size: 32, offset: 7296)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "is_interleaved", scope: !203, file: !27, line: 44, baseType: !13, size: 32, offset: 7328)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "zero_pad", scope: !203, file: !27, line: 45, baseType: !13, size: 32, offset: 7360)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "num_digits", scope: !203, file: !27, line: 46, baseType: !13, size: 32, offset: 7392)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !203, file: !27, line: 47, baseType: !13, size: 32, offset: 7424)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "end_frame", scope: !203, file: !27, line: 48, baseType: !13, size: 32, offset: 7456)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "nframes", scope: !203, file: !27, line: 49, baseType: !13, size: 32, offset: 7488)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_size", scope: !203, file: !27, line: 50, baseType: !13, size: 32, offset: 7520)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_size", scope: !203, file: !27, line: 51, baseType: !13, size: 32, offset: 7552)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_offset", scope: !203, file: !27, line: 52, baseType: !13, size: 32, offset: 7584)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_offset", scope: !203, file: !27, line: 53, baseType: !13, size: 32, offset: 7616)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "avi", scope: !203, file: !27, line: 56, baseType: !135, size: 64, offset: 7680)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "input_file2", scope: !154, file: !108, line: 870, baseType: !202, size: 7744, offset: 16320)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "input_file3", scope: !154, file: !108, line: 871, baseType: !202, size: 7744, offset: 24064)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "DecodeAllLayers", scope: !154, file: !108, line: 873, baseType: !13, size: 32, offset: 31808)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !154, file: !108, line: 884, baseType: !13, size: 32, offset: 31840)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !154, file: !108, line: 885, baseType: !13, size: 32, offset: 31872)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !154, file: !108, line: 886, baseType: !13, size: 32, offset: 31904)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !154, file: !108, line: 890, baseType: !13, size: 32, offset: 31936)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "stdRange", scope: !154, file: !108, line: 893, baseType: !13, size: 32, offset: 31968)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "videoCode", scope: !154, file: !108, line: 894, baseType: !13, size: 32, offset: 32000)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "export_views", scope: !154, file: !108, line: 895, baseType: !13, size: 32, offset: 32032)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "iDecFrmNum", scope: !154, file: !108, line: 897, baseType: !13, size: 32, offset: 32064)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "bDisplayDecParams", scope: !154, file: !108, line: 899, baseType: !13, size: 32, offset: 32096)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !150, file: !108, line: 569, baseType: !237, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !239, line: 138, baseType: !240)
!239 = !DIFile(filename: "ldecod_src/inc/parsetcommon.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d59d7e00f3aec3a23ed88314ae35b687")
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !239, line: 94, size: 17728, elements: !241)
!241 = !{!242, !243, !244, !245, !246, !247, !248, !252, !257, !261, !264, !265, !266, !267, !268, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !240, file: !239, line: 96, baseType: !13, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !240, file: !239, line: 97, baseType: !37, size: 32, offset: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !240, file: !239, line: 98, baseType: !37, size: 32, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !240, file: !239, line: 99, baseType: !13, size: 32, offset: 96)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !240, file: !239, line: 100, baseType: !13, size: 32, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !240, file: !239, line: 102, baseType: !13, size: 32, offset: 160)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !240, file: !239, line: 103, baseType: !249, size: 384, offset: 192)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 384, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 12)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !240, file: !239, line: 104, baseType: !253, size: 3072, offset: 576)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 3072, elements: !254)
!254 = !{!255, !256}
!255 = !DISubrange(count: 6)
!256 = !DISubrange(count: 16)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !240, file: !239, line: 105, baseType: !258, size: 12288, offset: 3648)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 12288, elements: !259)
!259 = !{!255, !260}
!260 = !DISubrange(count: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !240, file: !239, line: 106, baseType: !262, size: 192, offset: 15936)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 192, elements: !263)
!263 = !{!255}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !240, file: !239, line: 107, baseType: !262, size: 192, offset: 16128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_pic_order_in_frame_present_flag", scope: !240, file: !239, line: 110, baseType: !13, size: 32, offset: 16320)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !240, file: !239, line: 111, baseType: !37, size: 32, offset: 16352)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !240, file: !239, line: 112, baseType: !37, size: 32, offset: 16384)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !240, file: !239, line: 114, baseType: !269, size: 256, offset: 16416)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 256, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 8)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !240, file: !239, line: 116, baseType: !269, size: 256, offset: 16672)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !240, file: !239, line: 117, baseType: !269, size: 256, offset: 16928)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !240, file: !239, line: 119, baseType: !13, size: 32, offset: 17184)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !240, file: !239, line: 120, baseType: !37, size: 32, offset: 17216)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !240, file: !239, line: 122, baseType: !37, size: 32, offset: 17248)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !240, file: !239, line: 123, baseType: !121, size: 64, offset: 17280)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !240, file: !239, line: 125, baseType: !13, size: 32, offset: 17344)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !240, file: !239, line: 126, baseType: !13, size: 32, offset: 17376)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !240, file: !239, line: 127, baseType: !13, size: 32, offset: 17408)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !240, file: !239, line: 128, baseType: !37, size: 32, offset: 17440)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !240, file: !239, line: 129, baseType: !13, size: 32, offset: 17472)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !240, file: !239, line: 130, baseType: !13, size: 32, offset: 17504)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !240, file: !239, line: 131, baseType: !13, size: 32, offset: 17536)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "second_chroma_qp_index_offset", scope: !240, file: !239, line: 133, baseType: !13, size: 32, offset: 17568)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !240, file: !239, line: 135, baseType: !13, size: 32, offset: 17600)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !240, file: !239, line: 136, baseType: !13, size: 32, offset: 17632)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !240, file: !239, line: 137, baseType: !13, size: 32, offset: 17664)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !150, file: !108, line: 570, baseType: !290, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !239, line: 197, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !239, line: 142, size: 33024, elements: !293)
!293 = !{!294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !391, !392}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !292, file: !239, line: 144, baseType: !13, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !292, file: !239, line: 146, baseType: !37, size: 32, offset: 32)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !292, file: !239, line: 147, baseType: !13, size: 32, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !292, file: !239, line: 148, baseType: !13, size: 32, offset: 96)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !292, file: !239, line: 149, baseType: !13, size: 32, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !292, file: !239, line: 150, baseType: !13, size: 32, offset: 160)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set4_flag", scope: !292, file: !239, line: 152, baseType: !13, size: 32, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !292, file: !239, line: 154, baseType: !37, size: 32, offset: 224)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !292, file: !239, line: 155, baseType: !37, size: 32, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !292, file: !239, line: 156, baseType: !37, size: 32, offset: 288)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !292, file: !239, line: 158, baseType: !13, size: 32, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !292, file: !239, line: 159, baseType: !249, size: 384, offset: 352)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !292, file: !239, line: 160, baseType: !253, size: 3072, offset: 736)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !292, file: !239, line: 161, baseType: !258, size: 12288, offset: 3808)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !292, file: !239, line: 162, baseType: !262, size: 192, offset: 16096)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !292, file: !239, line: 163, baseType: !262, size: 192, offset: 16288)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !292, file: !239, line: 165, baseType: !37, size: 32, offset: 16480)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !292, file: !239, line: 166, baseType: !37, size: 32, offset: 16512)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !292, file: !239, line: 167, baseType: !37, size: 32, offset: 16544)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !292, file: !239, line: 168, baseType: !37, size: 32, offset: 16576)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !292, file: !239, line: 170, baseType: !37, size: 32, offset: 16608)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !292, file: !239, line: 172, baseType: !13, size: 32, offset: 16640)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !292, file: !239, line: 173, baseType: !13, size: 32, offset: 16672)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !292, file: !239, line: 174, baseType: !13, size: 32, offset: 16704)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !292, file: !239, line: 175, baseType: !37, size: 32, offset: 16736)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !292, file: !239, line: 177, baseType: !320, size: 8192, offset: 16768)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8192, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 256)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !292, file: !239, line: 178, baseType: !37, size: 32, offset: 24960)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !292, file: !239, line: 179, baseType: !13, size: 32, offset: 24992)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !292, file: !239, line: 180, baseType: !37, size: 32, offset: 25024)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !292, file: !239, line: 181, baseType: !37, size: 32, offset: 25056)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !292, file: !239, line: 182, baseType: !13, size: 32, offset: 25088)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !292, file: !239, line: 184, baseType: !13, size: 32, offset: 25120)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !292, file: !239, line: 185, baseType: !13, size: 32, offset: 25152)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !292, file: !239, line: 186, baseType: !13, size: 32, offset: 25184)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !292, file: !239, line: 187, baseType: !37, size: 32, offset: 25216)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !292, file: !239, line: 188, baseType: !37, size: 32, offset: 25248)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !292, file: !239, line: 189, baseType: !37, size: 32, offset: 25280)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !292, file: !239, line: 190, baseType: !37, size: 32, offset: 25312)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !292, file: !239, line: 191, baseType: !13, size: 32, offset: 25344)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !292, file: !239, line: 192, baseType: !337, size: 7584, offset: 25376)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !239, line: 90, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !239, line: 53, size: 7584, elements: !339)
!339 = !{!340, !341, !342, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !338, file: !239, line: 55, baseType: !13, size: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !338, file: !239, line: 56, baseType: !37, size: 32, offset: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !338, file: !239, line: 57, baseType: !343, size: 16, offset: 64)
!343 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !338, file: !239, line: 58, baseType: !343, size: 16, offset: 80)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !338, file: !239, line: 59, baseType: !13, size: 32, offset: 96)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !338, file: !239, line: 60, baseType: !13, size: 32, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !338, file: !239, line: 61, baseType: !13, size: 32, offset: 160)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !338, file: !239, line: 62, baseType: !37, size: 32, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !338, file: !239, line: 63, baseType: !13, size: 32, offset: 224)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !338, file: !239, line: 64, baseType: !13, size: 32, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !338, file: !239, line: 65, baseType: !37, size: 32, offset: 288)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !338, file: !239, line: 66, baseType: !37, size: 32, offset: 320)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !338, file: !239, line: 67, baseType: !37, size: 32, offset: 352)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !338, file: !239, line: 68, baseType: !13, size: 32, offset: 384)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_top_field", scope: !338, file: !239, line: 69, baseType: !37, size: 32, offset: 416)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_bottom_field", scope: !338, file: !239, line: 70, baseType: !37, size: 32, offset: 448)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !338, file: !239, line: 71, baseType: !13, size: 32, offset: 480)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !338, file: !239, line: 72, baseType: !37, size: 32, offset: 512)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !338, file: !239, line: 73, baseType: !37, size: 32, offset: 544)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !338, file: !239, line: 74, baseType: !13, size: 32, offset: 576)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !338, file: !239, line: 75, baseType: !13, size: 32, offset: 608)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !338, file: !239, line: 76, baseType: !363, size: 3296, offset: 640)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !239, line: 50, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !239, line: 38, size: 3296, elements: !365)
!365 = !{!366, !367, !368, !369, !373, !374, !375, !376, !377, !378}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !364, file: !239, line: 40, baseType: !37, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !364, file: !239, line: 41, baseType: !37, size: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !364, file: !239, line: 42, baseType: !37, size: 32, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !364, file: !239, line: 43, baseType: !370, size: 1024, offset: 96)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 1024, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !364, file: !239, line: 44, baseType: !370, size: 1024, offset: 1120)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !364, file: !239, line: 45, baseType: !370, size: 1024, offset: 2144)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !364, file: !239, line: 46, baseType: !37, size: 32, offset: 3168)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !364, file: !239, line: 47, baseType: !37, size: 32, offset: 3200)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !364, file: !239, line: 48, baseType: !37, size: 32, offset: 3232)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !364, file: !239, line: 49, baseType: !37, size: 32, offset: 3264)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !338, file: !239, line: 77, baseType: !13, size: 32, offset: 3936)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !338, file: !239, line: 78, baseType: !363, size: 3296, offset: 3968)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !338, file: !239, line: 80, baseType: !13, size: 32, offset: 7264)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !338, file: !239, line: 81, baseType: !13, size: 32, offset: 7296)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !338, file: !239, line: 82, baseType: !13, size: 32, offset: 7328)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !338, file: !239, line: 83, baseType: !13, size: 32, offset: 7360)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !338, file: !239, line: 84, baseType: !37, size: 32, offset: 7392)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !338, file: !239, line: 85, baseType: !37, size: 32, offset: 7424)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !338, file: !239, line: 86, baseType: !37, size: 32, offset: 7456)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !338, file: !239, line: 87, baseType: !37, size: 32, offset: 7488)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "num_reorder_frames", scope: !338, file: !239, line: 88, baseType: !37, size: 32, offset: 7520)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !338, file: !239, line: 89, baseType: !37, size: 32, offset: 7552)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !292, file: !239, line: 193, baseType: !37, size: 32, offset: 32960)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !292, file: !239, line: 195, baseType: !13, size: 32, offset: 32992)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "SeqParSet", scope: !150, file: !108, line: 571, baseType: !394, size: 1056768, offset: 192)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 1056768, elements: !371)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "PicParSet", scope: !150, file: !108, line: 572, baseType: !396, size: 4538368, offset: 1056960)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 4538368, elements: !321)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "active_subset_sps", scope: !150, file: !108, line: 575, baseType: !398, size: 64, offset: 5595328)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "subset_seq_parameter_set_rbsp_t", file: !239, line: 256, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !239, line: 228, size: 37312, elements: !401)
!401 = !{!402, !403, !404, !405, !406, !407, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !422, !423, !424, !425}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !400, file: !239, line: 230, baseType: !291, size: 33024)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "bit_equal_to_one", scope: !400, file: !239, line: 232, baseType: !37, size: 32, offset: 33024)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "num_views_minus1", scope: !400, file: !239, line: 233, baseType: !13, size: 32, offset: 33056)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !400, file: !239, line: 234, baseType: !135, size: 64, offset: 33088)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l0", scope: !400, file: !239, line: 235, baseType: !135, size: 64, offset: 33152)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l0", scope: !400, file: !239, line: 236, baseType: !408, size: 64, offset: 33216)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l1", scope: !400, file: !239, line: 237, baseType: !135, size: 64, offset: 33280)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l1", scope: !400, file: !239, line: 238, baseType: !408, size: 64, offset: 33344)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l0", scope: !400, file: !239, line: 240, baseType: !135, size: 64, offset: 33408)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l0", scope: !400, file: !239, line: 241, baseType: !408, size: 64, offset: 33472)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l1", scope: !400, file: !239, line: 242, baseType: !135, size: 64, offset: 33536)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l1", scope: !400, file: !239, line: 243, baseType: !408, size: 64, offset: 33600)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "num_level_values_signalled_minus1", scope: !400, file: !239, line: 245, baseType: !13, size: 32, offset: 33664)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !400, file: !239, line: 246, baseType: !135, size: 64, offset: 33728)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "num_applicable_ops_minus1", scope: !400, file: !239, line: 247, baseType: !135, size: 64, offset: 33792)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_temporal_id", scope: !400, file: !239, line: 248, baseType: !408, size: 64, offset: 33856)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_target_views_minus1", scope: !400, file: !239, line: 249, baseType: !408, size: 64, offset: 33920)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_target_view_id", scope: !400, file: !239, line: 250, baseType: !421, size: 64, offset: 33984)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_views_minus1", scope: !400, file: !239, line: 251, baseType: !408, size: 64, offset: 34048)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "mvc_vui_parameters_present_flag", scope: !400, file: !239, line: 253, baseType: !37, size: 32, offset: 34112)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !400, file: !239, line: 254, baseType: !13, size: 32, offset: 34144)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "MVCVUIParams", scope: !400, file: !239, line: 255, baseType: !426, size: 3136, offset: 34176)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "MVCVUI_t", file: !239, line: 226, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mvcvui_tag", file: !239, line: 200, size: 3136, elements: !428)
!428 = !{!429, !430, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !448, !449, !451, !452, !453, !454}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops_minus1", scope: !427, file: !239, line: 202, baseType: !13, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !427, file: !239, line: 203, baseType: !431, size: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "num_target_output_views_minus1", scope: !427, file: !239, line: 204, baseType: !135, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !427, file: !239, line: 205, baseType: !408, size: 64, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !427, file: !239, line: 206, baseType: !431, size: 64, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !427, file: !239, line: 207, baseType: !135, size: 64, offset: 320)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !427, file: !239, line: 208, baseType: !135, size: 64, offset: 384)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !427, file: !239, line: 209, baseType: !431, size: 64, offset: 448)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !427, file: !239, line: 210, baseType: !431, size: 64, offset: 512)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !427, file: !239, line: 211, baseType: !431, size: 64, offset: 576)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !427, file: !239, line: 212, baseType: !431, size: 64, offset: 640)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !427, file: !239, line: 213, baseType: !431, size: 64, offset: 704)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !427, file: !239, line: 216, baseType: !432, size: 8, offset: 768)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !427, file: !239, line: 217, baseType: !432, size: 8, offset: 776)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !427, file: !239, line: 218, baseType: !432, size: 8, offset: 784)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !427, file: !239, line: 219, baseType: !447, size: 1024, offset: 800)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 1024, elements: !371)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !427, file: !239, line: 220, baseType: !447, size: 1024, offset: 1824)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !427, file: !239, line: 221, baseType: !450, size: 256, offset: 2848)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 256, elements: !371)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !427, file: !239, line: 222, baseType: !432, size: 8, offset: 3104)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !427, file: !239, line: 223, baseType: !432, size: 8, offset: 3112)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !427, file: !239, line: 224, baseType: !432, size: 8, offset: 3120)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !427, file: !239, line: 225, baseType: !432, size: 8, offset: 3128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "SubsetSeqParSet", scope: !150, file: !108, line: 577, baseType: !456, size: 1193984, offset: 5595392)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 1193984, elements: !371)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_width_in_mbs_minus1", scope: !150, file: !108, line: 578, baseType: !13, size: 32, offset: 6789376)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_height_in_map_units_minus1", scope: !150, file: !108, line: 579, baseType: !13, size: 32, offset: 6789408)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "last_max_dec_frame_buffering", scope: !150, file: !108, line: 580, baseType: !13, size: 32, offset: 6789440)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "last_profile_idc", scope: !150, file: !108, line: 581, baseType: !13, size: 32, offset: 6789472)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "p_SEI", scope: !150, file: !108, line: 584, baseType: !462, size: 64, offset: 6789504)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DICompositeType(tag: DW_TAG_structure_type, name: "sei_params", file: !108, line: 584, flags: DIFlagFwdDecl)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "old_slice", scope: !150, file: !108, line: 586, baseType: !465, size: 64, offset: 6789568)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_slice_par", file: !108, line: 902, size: 416, elements: !467)
!467 = !{!468, !469, !470, !471, !472, !473, !477, !478, !479, !480, !481, !482, !483}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !466, file: !108, line: 904, baseType: !37, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !466, file: !108, line: 905, baseType: !37, size: 32, offset: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "nal_ref_idc", scope: !466, file: !108, line: 906, baseType: !13, size: 32, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "pic_oder_cnt_lsb", scope: !466, file: !108, line: 907, baseType: !37, size: 32, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_oder_cnt_bottom", scope: !466, file: !108, line: 908, baseType: !13, size: 32, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !466, file: !108, line: 909, baseType: !474, size: 64, offset: 160)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 64, elements: !475)
!475 = !{!476}
!476 = !DISubrange(count: 2)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !466, file: !108, line: 910, baseType: !122, size: 8, offset: 224)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !466, file: !108, line: 911, baseType: !122, size: 8, offset: 232)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !466, file: !108, line: 912, baseType: !13, size: 32, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "pps_id", scope: !466, file: !108, line: 913, baseType: !13, size: 32, offset: 288)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !466, file: !108, line: 915, baseType: !13, size: 32, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !466, file: !108, line: 916, baseType: !13, size: 32, offset: 352)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !466, file: !108, line: 917, baseType: !13, size: 32, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !150, file: !108, line: 587, baseType: !485, size: 64, offset: 6789632)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snr_par", file: !108, line: 839, size: 512, elements: !487)
!487 = !{!488, !489, !492, !493, !494, !495}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "frame_ctr", scope: !486, file: !108, line: 841, baseType: !13, size: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !486, file: !108, line: 842, baseType: !490, size: 96, offset: 32)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, size: 96, elements: !180)
!491 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "snr1", scope: !486, file: !108, line: 843, baseType: !490, size: 96, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "snra", scope: !486, file: !108, line: 844, baseType: !490, size: 96, offset: 224)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sse", scope: !486, file: !108, line: 845, baseType: !490, size: 96, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "msse", scope: !486, file: !108, line: 846, baseType: !490, size: 96, offset: 416)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !150, file: !108, line: 588, baseType: !13, size: 32, offset: 6789696)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !150, file: !108, line: 591, baseType: !37, size: 32, offset: 6789728)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "iSliceNumOfCurrPic", scope: !150, file: !108, line: 592, baseType: !13, size: 32, offset: 6789760)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesAllocated", scope: !150, file: !108, line: 593, baseType: !13, size: 32, offset: 6789792)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesDecoded", scope: !150, file: !108, line: 594, baseType: !13, size: 32, offset: 6789824)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "ppSliceList", scope: !150, file: !108, line: 595, baseType: !502, size: 64, offset: 6789888)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !108, line: 542, baseType: !146)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !150, file: !108, line: 596, baseType: !431, size: 64, offset: 6789952)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block_JV", scope: !150, file: !108, line: 597, baseType: !507, size: 192, offset: 6790016)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 192, elements: !180)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !150, file: !108, line: 601, baseType: !13, size: 32, offset: 6790208)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !150, file: !108, line: 602, baseType: !13, size: 32, offset: 6790240)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !150, file: !108, line: 603, baseType: !13, size: 32, offset: 6790272)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "width_cr", scope: !150, file: !108, line: 604, baseType: !13, size: 32, offset: 6790304)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "height_cr", scope: !150, file: !108, line: 605, baseType: !13, size: 32, offset: 6790336)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !150, file: !108, line: 607, baseType: !514, size: 64, offset: 6790400)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode_JV", scope: !150, file: !108, line: 608, baseType: !516, size: 192, offset: 6790464)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 192, elements: !180)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "nz_coeff", scope: !150, file: !108, line: 609, baseType: !518, size: 64, offset: 6790656)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !150, file: !108, line: 610, baseType: !408, size: 64, offset: 6790720)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "siblock_JV", scope: !150, file: !108, line: 611, baseType: !522, size: 192, offset: 6790784)
!522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 192, elements: !180)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "newframe", scope: !150, file: !108, line: 613, baseType: !13, size: 32, offset: 6790976)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !150, file: !108, line: 614, baseType: !13, size: 32, offset: 6791008)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "pNextSlice", scope: !150, file: !108, line: 617, baseType: !503, size: 64, offset: 6791040)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !150, file: !108, line: 618, baseType: !140, size: 64, offset: 6791104)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data_JV", scope: !150, file: !108, line: 619, baseType: !528, size: 192, offset: 6791168)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 192, elements: !180)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ChromaArrayType", scope: !150, file: !108, line: 621, baseType: !13, size: 32, offset: 6791360)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_head", scope: !150, file: !108, line: 626, baseType: !531, size: 64, offset: 6791424)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "concealment_node", file: !533, line: 136, size: 192, elements: !534)
!533 = !DIFile(filename: "ldecod_src/inc/erc_api.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "9f38a583d5066807e951e2b61474101e")
!534 = !{!535, !660, !661}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "picture", scope: !532, file: !533, line: 137, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "StorablePicture", file: !538, line: 138, baseType: !539)
!538 = !DIFile(filename: "ldecod_src/inc/mbuffer.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1ba7faf5f978b0f36a8f480bbf7b3401")
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "storable_picture", file: !538, line: 46, size: 3328, elements: !540)
!540 = !{!541, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !580, !582, !583, !600, !602, !606, !608, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !539, file: !538, line: 48, baseType: !542, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "PictureStructure", file: !36, line: 140, baseType: !35)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !539, file: !538, line: 50, baseType: !13, size: 32, offset: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "top_poc", scope: !539, file: !538, line: 51, baseType: !13, size: 32, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_poc", scope: !539, file: !538, line: 52, baseType: !13, size: 32, offset: 96)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "frame_poc", scope: !539, file: !538, line: 53, baseType: !13, size: 32, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !539, file: !538, line: 54, baseType: !37, size: 32, offset: 160)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !539, file: !538, line: 55, baseType: !37, size: 32, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "pic_num", scope: !539, file: !538, line: 57, baseType: !13, size: 32, offset: 224)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !539, file: !538, line: 58, baseType: !13, size: 32, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !539, file: !538, line: 59, baseType: !13, size: 32, offset: 288)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !539, file: !538, line: 61, baseType: !122, size: 8, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "used_for_reference", scope: !539, file: !538, line: 62, baseType: !13, size: 32, offset: 352)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !539, file: !538, line: 63, baseType: !13, size: 32, offset: 384)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "non_existing", scope: !539, file: !538, line: 64, baseType: !13, size: 32, offset: 416)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !539, file: !538, line: 65, baseType: !13, size: 32, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "max_slice_id", scope: !539, file: !538, line: 67, baseType: !558, size: 16, offset: 480)
!558 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "size_x", scope: !539, file: !538, line: 69, baseType: !13, size: 32, offset: 512)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "size_y", scope: !539, file: !538, line: 69, baseType: !13, size: 32, offset: 544)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr", scope: !539, file: !538, line: 69, baseType: !13, size: 32, offset: 576)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr", scope: !539, file: !538, line: 69, baseType: !13, size: 32, offset: 608)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_m1", scope: !539, file: !538, line: 70, baseType: !13, size: 32, offset: 640)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_m1", scope: !539, file: !538, line: 70, baseType: !13, size: 32, offset: 672)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr_m1", scope: !539, file: !538, line: 70, baseType: !13, size: 32, offset: 704)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr_m1", scope: !539, file: !538, line: 70, baseType: !13, size: 32, offset: 736)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "coded_frame", scope: !539, file: !538, line: 71, baseType: !13, size: 32, offset: 768)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !539, file: !538, line: 72, baseType: !13, size: 32, offset: 800)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !539, file: !538, line: 73, baseType: !37, size: 32, offset: 832)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !539, file: !538, line: 74, baseType: !37, size: 32, offset: 864)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !539, file: !538, line: 75, baseType: !13, size: 32, offset: 896)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !539, file: !538, line: 75, baseType: !13, size: 32, offset: 928)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !539, file: !538, line: 76, baseType: !13, size: 32, offset: 960)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !539, file: !538, line: 76, baseType: !13, size: 32, offset: 992)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "imgY", scope: !539, file: !538, line: 79, baseType: !576, size: 64, offset: 1024)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "imgpel", file: !123, line: 41, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !123, line: 23, baseType: !343)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV", scope: !539, file: !538, line: 80, baseType: !581, size: 64, offset: 1088)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "img_comp", scope: !539, file: !538, line: 81, baseType: !581, size: 64, offset: 1152)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "mv_info", scope: !539, file: !538, line: 84, baseType: !584, size: 64, offset: 1216)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params", file: !538, line: 36, size: 256, elements: !587)
!587 = !{!588, !591, !598}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic", scope: !586, file: !538, line: 38, baseType: !589, size: 128)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, size: 128, elements: !475)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !586, file: !538, line: 39, baseType: !592, size: 64, offset: 128)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !593, size: 64, elements: !475)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionVector", file: !108, line: 104, baseType: !594)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 100, size: 32, elements: !595)
!595 = !{!596, !597}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "mv_x", scope: !594, file: !108, line: 102, baseType: !558, size: 16)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "mv_y", scope: !594, file: !108, line: 103, baseType: !558, size: 16, offset: 16)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "ref_idx", scope: !586, file: !538, line: 40, baseType: !599, size: 16, offset: 192)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 16, elements: !475)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "JVmv_info", scope: !539, file: !538, line: 85, baseType: !601, size: 192, offset: 1280)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 192, elements: !180)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "motion", scope: !539, file: !538, line: 87, baseType: !603, size: 64, offset: 1472)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params_old", file: !538, line: 29, size: 64, elements: !604)
!604 = !{!605}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !603, file: !538, line: 31, baseType: !121, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "JVmotion", scope: !539, file: !538, line: 88, baseType: !607, size: 192, offset: 1536)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, size: 192, elements: !180)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "slice_id", scope: !539, file: !538, line: 90, baseType: !609, size: 64, offset: 1728)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !539, file: !538, line: 92, baseType: !590, size: 64, offset: 1792)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !539, file: !538, line: 93, baseType: !590, size: 64, offset: 1856)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !539, file: !538, line: 94, baseType: !590, size: 64, offset: 1920)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !539, file: !538, line: 96, baseType: !13, size: 32, offset: 1984)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !539, file: !538, line: 97, baseType: !13, size: 32, offset: 2016)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !539, file: !538, line: 98, baseType: !13, size: 32, offset: 2048)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !539, file: !538, line: 99, baseType: !13, size: 32, offset: 2080)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !539, file: !538, line: 100, baseType: !13, size: 32, offset: 2112)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !539, file: !538, line: 102, baseType: !13, size: 32, offset: 2144)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !539, file: !538, line: 103, baseType: !13, size: 32, offset: 2176)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !539, file: !538, line: 104, baseType: !13, size: 32, offset: 2208)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !539, file: !538, line: 105, baseType: !13, size: 32, offset: 2240)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !539, file: !538, line: 106, baseType: !13, size: 32, offset: 2272)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !539, file: !538, line: 107, baseType: !13, size: 32, offset: 2304)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !539, file: !538, line: 108, baseType: !13, size: 32, offset: 2336)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !539, file: !538, line: 109, baseType: !13, size: 32, offset: 2368)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_offset", scope: !539, file: !538, line: 110, baseType: !474, size: 64, offset: 2400)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !539, file: !538, line: 111, baseType: !13, size: 32, offset: 2464)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !539, file: !538, line: 112, baseType: !630, size: 64, offset: 2496)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecRefPicMarking_t", file: !108, line: 194, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DecRefPicMarking_s", file: !108, line: 186, size: 256, elements: !633)
!633 = !{!634, !635, !636, !637, !638, !639}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "memory_management_control_operation", scope: !632, file: !108, line: 188, baseType: !13, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "difference_of_pic_nums_minus1", scope: !632, file: !108, line: 189, baseType: !13, size: 32, offset: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !632, file: !108, line: 190, baseType: !13, size: 32, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !632, file: !108, line: 191, baseType: !13, size: 32, offset: 96)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_frame_idx_plus1", scope: !632, file: !108, line: 192, baseType: !13, size: 32, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !632, file: !108, line: 193, baseType: !640, size: 64, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "concealed_pic", scope: !539, file: !538, line: 115, baseType: !13, size: 32, offset: 2560)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "seiHasTone_mapping", scope: !539, file: !538, line: 118, baseType: !13, size: 32, offset: 2592)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_model_id", scope: !539, file: !538, line: 119, baseType: !13, size: 32, offset: 2624)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "tonemapped_bit_depth", scope: !539, file: !538, line: 120, baseType: !13, size: 32, offset: 2656)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_lut", scope: !539, file: !538, line: 121, baseType: !577, size: 64, offset: 2688)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !539, file: !538, line: 124, baseType: !13, size: 32, offset: 2752)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !539, file: !538, line: 125, baseType: !13, size: 32, offset: 2784)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !539, file: !538, line: 126, baseType: !13, size: 32, offset: 2816)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaStride", scope: !539, file: !538, line: 128, baseType: !13, size: 32, offset: 2848)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaStride", scope: !539, file: !538, line: 129, baseType: !13, size: 32, offset: 2880)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaExpandedHeight", scope: !539, file: !538, line: 130, baseType: !13, size: 32, offset: 2912)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaExpandedHeight", scope: !539, file: !538, line: 131, baseType: !13, size: 32, offset: 2944)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "cur_imgY", scope: !539, file: !538, line: 132, baseType: !576, size: 64, offset: 3008)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "no_ref", scope: !539, file: !538, line: 133, baseType: !13, size: 32, offset: 3072)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "iCodingType", scope: !539, file: !538, line: 134, baseType: !13, size: 32, offset: 3104)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !539, file: !538, line: 136, baseType: !599, size: 16, offset: 3136)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !539, file: !538, line: 137, baseType: !658, size: 128, offset: 3200)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !659, size: 128, elements: !475)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "missingpocs", scope: !532, file: !533, line: 138, baseType: !13, size: 32, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !532, file: !533, line: 139, baseType: !531, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_end", scope: !150, file: !108, line: 627, baseType: !531, size: 64, offset: 6791488)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "pre_frame_num", scope: !150, file: !108, line: 629, baseType: !37, size: 32, offset: 6791552)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "non_conforming_stream", scope: !150, file: !108, line: 630, baseType: !13, size: 32, offset: 6791584)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntMsb", scope: !150, file: !108, line: 634, baseType: !13, size: 32, offset: 6791616)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntLsb", scope: !150, file: !108, line: 635, baseType: !37, size: 32, offset: 6791648)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedPicOrderCnt", scope: !150, file: !108, line: 638, baseType: !13, size: 32, offset: 6791680)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntCycleCnt", scope: !150, file: !108, line: 638, baseType: !13, size: 32, offset: 6791712)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumInPicOrderCntCycle", scope: !150, file: !108, line: 638, baseType: !13, size: 32, offset: 6791744)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNum", scope: !150, file: !108, line: 639, baseType: !37, size: 32, offset: 6791776)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumOffset", scope: !150, file: !108, line: 639, baseType: !37, size: 32, offset: 6791808)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedDeltaPerPicOrderCntCycle", scope: !150, file: !108, line: 640, baseType: !13, size: 32, offset: 6791840)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !150, file: !108, line: 641, baseType: !13, size: 32, offset: 6791872)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNumOffset", scope: !150, file: !108, line: 642, baseType: !13, size: 32, offset: 6791904)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "MaxFrameNum", scope: !150, file: !108, line: 645, baseType: !13, size: 32, offset: 6791936)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !150, file: !108, line: 647, baseType: !37, size: 32, offset: 6791968)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMapUnits", scope: !150, file: !108, line: 648, baseType: !37, size: 32, offset: 6792000)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "FrameHeightInMbs", scope: !150, file: !108, line: 649, baseType: !37, size: 32, offset: 6792032)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMbs", scope: !150, file: !108, line: 650, baseType: !37, size: 32, offset: 6792064)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !150, file: !108, line: 651, baseType: !37, size: 32, offset: 6792096)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "FrameSizeInMbs", scope: !150, file: !108, line: 652, baseType: !37, size: 32, offset: 6792128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "oldFrameSizeInMbs", scope: !150, file: !108, line: 653, baseType: !37, size: 32, offset: 6792160)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !150, file: !108, line: 655, baseType: !13, size: 32, offset: 6792192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "last_has_mmco_5", scope: !150, file: !108, line: 657, baseType: !13, size: 32, offset: 6792224)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_bottom_field", scope: !150, file: !108, line: 658, baseType: !13, size: 32, offset: 6792256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_bitsize_on_disk", scope: !150, file: !108, line: 661, baseType: !13, size: 32, offset: 6792288)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma", scope: !150, file: !108, line: 662, baseType: !558, size: 16, offset: 6792320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma", scope: !150, file: !108, line: 663, baseType: !558, size: 16, offset: 6792336)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_scale", scope: !150, file: !108, line: 664, baseType: !474, size: 64, offset: 6792352)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma_qp_scale", scope: !150, file: !108, line: 665, baseType: !13, size: 32, offset: 6792416)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma_qp_scale", scope: !150, file: !108, line: 666, baseType: !13, size: 32, offset: 6792448)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "dc_pred_value_comp", scope: !150, file: !108, line: 667, baseType: !693, size: 96, offset: 6792480)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 96, elements: !180)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "max_pel_value_comp", scope: !150, file: !108, line: 668, baseType: !179, size: 96, offset: 6792576)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !150, file: !108, line: 670, baseType: !13, size: 32, offset: 6792672)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !150, file: !108, line: 671, baseType: !13, size: 32, offset: 6792704)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "lossless_qpprime_flag", scope: !150, file: !108, line: 672, baseType: !13, size: 32, offset: 6792736)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "num_blk8x8_uv", scope: !150, file: !108, line: 673, baseType: !13, size: 32, offset: 6792768)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "num_uv_blocks", scope: !150, file: !108, line: 674, baseType: !13, size: 32, offset: 6792800)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "num_cdc_coeff", scope: !150, file: !108, line: 675, baseType: !13, size: 32, offset: 6792832)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x", scope: !150, file: !108, line: 676, baseType: !13, size: 32, offset: 6792864)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y", scope: !150, file: !108, line: 677, baseType: !13, size: 32, offset: 6792896)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x_blk", scope: !150, file: !108, line: 678, baseType: !13, size: 32, offset: 6792928)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y_blk", scope: !150, file: !108, line: 679, baseType: !13, size: 32, offset: 6792960)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size", scope: !150, file: !108, line: 680, baseType: !706, size: 192, offset: 6792992)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 192, elements: !707)
!707 = !{!181, !476}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_blk", scope: !150, file: !108, line: 681, baseType: !706, size: 192, offset: 6793184)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_shift", scope: !150, file: !108, line: 682, baseType: !706, size: 192, offset: 6793376)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_x", scope: !150, file: !108, line: 683, baseType: !13, size: 32, offset: 6793568)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_y", scope: !150, file: !108, line: 684, baseType: !13, size: 32, offset: 6793600)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_x", scope: !150, file: !108, line: 685, baseType: !13, size: 32, offset: 6793632)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_y", scope: !150, file: !108, line: 686, baseType: !13, size: 32, offset: 6793664)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "total_scale", scope: !150, file: !108, line: 687, baseType: !13, size: 32, offset: 6793696)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "max_vmv_r", scope: !150, file: !108, line: 689, baseType: !13, size: 32, offset: 6793728)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "idr_psnr_number", scope: !150, file: !108, line: 692, baseType: !13, size: 32, offset: 6793760)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "psnr_number", scope: !150, file: !108, line: 693, baseType: !13, size: 32, offset: 6793792)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "last_ref_pic_poc", scope: !150, file: !108, line: 700, baseType: !13, size: 32, offset: 6793824)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !150, file: !108, line: 701, baseType: !13, size: 32, offset: 6793856)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !150, file: !108, line: 702, baseType: !13, size: 32, offset: 6793888)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !150, file: !108, line: 703, baseType: !13, size: 32, offset: 6793920)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "earlier_missing_poc", scope: !150, file: !108, line: 704, baseType: !13, size: 32, offset: 6793952)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "frame_to_conceal", scope: !150, file: !108, line: 705, baseType: !37, size: 32, offset: 6793984)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "IDR_concealment_flag", scope: !150, file: !108, line: 706, baseType: !13, size: 32, offset: 6794016)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_slice_type", scope: !150, file: !108, line: 707, baseType: !13, size: 32, offset: 6794048)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point", scope: !150, file: !108, line: 710, baseType: !13, size: 32, offset: 6794080)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point_found", scope: !150, file: !108, line: 711, baseType: !13, size: 32, offset: 6794112)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_cnt", scope: !150, file: !108, line: 712, baseType: !13, size: 32, offset: 6794144)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_num", scope: !150, file: !108, line: 713, baseType: !13, size: 32, offset: 6794176)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_poc", scope: !150, file: !108, line: 714, baseType: !13, size: 32, offset: 6794208)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !150, file: !108, line: 716, baseType: !13, size: 32, offset: 6794240)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !150, file: !108, line: 717, baseType: !13, size: 32, offset: 6794272)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !150, file: !108, line: 719, baseType: !121, size: 64, offset: 6794304)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "ibuf", scope: !150, file: !108, line: 720, baseType: !121, size: 64, offset: 6794368)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "imgData", scope: !150, file: !108, line: 722, baseType: !736, size: 2560, offset: 6794432)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageData", file: !737, line: 38, baseType: !738)
!737 = !DIFile(filename: "ldecod_src/inc/io_image.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "8caef624e6f5391b0c6ab2984e7f77c6")
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "image_data", file: !737, line: 20, size: 2560, elements: !739)
!739 = !{!740, !741, !743, !744, !745, !749, !750, !751, !752, !753}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !738, file: !737, line: 22, baseType: !169, size: 1088)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "frm_data", scope: !738, file: !737, line: 24, baseType: !742, size: 192, offset: 1088)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 192, elements: !180)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "top_data", scope: !738, file: !737, line: 25, baseType: !742, size: 192, offset: 1280)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "bot_data", scope: !738, file: !737, line: 26, baseType: !742, size: 192, offset: 1472)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "frm_uint16", scope: !738, file: !737, line: 31, baseType: !746, size: 192, offset: 1664)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !747, size: 192, elements: !180)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "top_uint16", scope: !738, file: !737, line: 32, baseType: !746, size: 192, offset: 1856)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "bot_uint16", scope: !738, file: !737, line: 33, baseType: !746, size: 192, offset: 2048)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "frm_stride", scope: !738, file: !737, line: 35, baseType: !179, size: 96, offset: 2240)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "top_stride", scope: !738, file: !737, line: 36, baseType: !179, size: 96, offset: 2336)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "bot_stride", scope: !738, file: !737, line: 37, baseType: !179, size: 96, offset: 2432)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "imgData0", scope: !150, file: !108, line: 723, baseType: !736, size: 2560, offset: 6796992)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "imgData1", scope: !150, file: !108, line: 724, baseType: !736, size: 2560, offset: 6799552)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "imgData2", scope: !150, file: !108, line: 725, baseType: !736, size: 2560, offset: 6802112)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "imgData32", scope: !150, file: !108, line: 728, baseType: !736, size: 2560, offset: 6804672)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "imgData4", scope: !150, file: !108, line: 729, baseType: !736, size: 2560, offset: 6807232)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "imgData5", scope: !150, file: !108, line: 730, baseType: !736, size: 2560, offset: 6809792)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "imgData6", scope: !150, file: !108, line: 731, baseType: !736, size: 2560, offset: 6812352)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "previous_frame_num", scope: !150, file: !108, line: 735, baseType: !37, size: 32, offset: 6814912)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "Is_primary_correct", scope: !150, file: !108, line: 737, baseType: !13, size: 32, offset: 6814944)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "Is_redundant_correct", scope: !150, file: !108, line: 738, baseType: !13, size: 32, offset: 6814976)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "tot_time", scope: !150, file: !108, line: 741, baseType: !765, size: 64, offset: 6815040)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !766, line: 103, baseType: !767)
!766 = !DIFile(filename: "ldecod_src/inc/win32.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "100def0ffeee72ecdc377183538a04bb")
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !768, line: 27, baseType: !769)
!768 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !770, line: 44, baseType: !771)
!770 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!771 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "p_out", scope: !150, file: !108, line: 744, baseType: !13, size: 32, offset: 6815104)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "p_out_mvc", scope: !150, file: !108, line: 746, baseType: !774, size: 32768, offset: 6815136)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 32768, elements: !775)
!775 = !{!776}
!776 = !DISubrange(count: 1024)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "p_ref", scope: !150, file: !108, line: 748, baseType: !13, size: 32, offset: 6847904)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "LastAccessUnitExists", scope: !150, file: !108, line: 751, baseType: !13, size: 32, offset: 6847936)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "NALUCount", scope: !150, file: !108, line: 752, baseType: !13, size: 32, offset: 6847968)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "Bframe_ctr", scope: !150, file: !108, line: 755, baseType: !13, size: 32, offset: 6848000)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "frame_no", scope: !150, file: !108, line: 756, baseType: !13, size: 32, offset: 6848032)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "g_nFrame", scope: !150, file: !108, line: 758, baseType: !13, size: 32, offset: 6848064)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "global_init_done", scope: !150, file: !108, line: 759, baseType: !13, size: 32, offset: 6848096)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "imgY_ref", scope: !150, file: !108, line: 762, baseType: !576, size: 64, offset: 6848128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV_ref", scope: !150, file: !108, line: 763, baseType: !581, size: 64, offset: 6848192)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "qp_per_matrix", scope: !150, file: !108, line: 765, baseType: !135, size: 64, offset: 6848256)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "qp_rem_matrix", scope: !150, file: !108, line: 766, baseType: !135, size: 64, offset: 6848320)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "last_out_fs", scope: !150, file: !108, line: 768, baseType: !789, size: 64, offset: 6848384)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_store", file: !538, line: 152, size: 768, elements: !791)
!791 = !{!792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "is_used", scope: !790, file: !538, line: 154, baseType: !13, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "is_reference", scope: !790, file: !538, line: 155, baseType: !13, size: 32, offset: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !790, file: !538, line: 156, baseType: !13, size: 32, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "is_orig_reference", scope: !790, file: !538, line: 157, baseType: !13, size: 32, offset: 96)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "is_non_existent", scope: !790, file: !538, line: 159, baseType: !13, size: 32, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !790, file: !538, line: 161, baseType: !37, size: 32, offset: 160)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !790, file: !538, line: 162, baseType: !37, size: 32, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num_wrap", scope: !790, file: !538, line: 164, baseType: !13, size: 32, offset: 224)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !790, file: !538, line: 165, baseType: !13, size: 32, offset: 256)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !790, file: !538, line: 166, baseType: !13, size: 32, offset: 288)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !790, file: !538, line: 167, baseType: !13, size: 32, offset: 320)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_reference", scope: !790, file: !538, line: 170, baseType: !13, size: 32, offset: 352)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !790, file: !538, line: 172, baseType: !536, size: 64, offset: 384)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !790, file: !538, line: 173, baseType: !536, size: 64, offset: 448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !790, file: !538, line: 174, baseType: !536, size: 64, offset: 512)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !790, file: !538, line: 177, baseType: !13, size: 32, offset: 576)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !790, file: !538, line: 178, baseType: !474, size: 64, offset: 608)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !790, file: !538, line: 179, baseType: !474, size: 64, offset: 672)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "pocs_in_dpb", scope: !150, file: !108, line: 769, baseType: !811, size: 3200, offset: 6848448)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 3200, elements: !812)
!812 = !{!813}
!813 = !DISubrange(count: 100)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !150, file: !108, line: 771, baseType: !590, size: 64, offset: 6851648)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture_JV", scope: !150, file: !108, line: 772, baseType: !816, size: 192, offset: 6851712)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, size: 192, elements: !180)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "no_reference_picture", scope: !150, file: !108, line: 773, baseType: !590, size: 64, offset: 6851904)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "erc_object_list", scope: !150, file: !108, line: 776, baseType: !819, size: 64, offset: 6851968)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_buffer", file: !821, line: 42, size: 192, elements: !822)
!821 = !DIFile(filename: "ldecod_src/inc/erc_globals.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c27fab662deb7c381592b003d3b76fc7")
!822 = !{!823, !824, !825, !826}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "regionMode", scope: !820, file: !821, line: 44, baseType: !122, size: 8)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "xMin", scope: !820, file: !821, line: 45, baseType: !13, size: 32, offset: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "yMin", scope: !820, file: !821, line: 46, baseType: !13, size: 32, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !820, file: !821, line: 47, baseType: !179, size: 96, offset: 96)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "erc_errorVar", scope: !150, file: !108, line: 777, baseType: !828, size: 64, offset: 6852032)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ercVariables_s", file: !533, line: 79, size: 576, elements: !830)
!830 = !{!831, !832, !833, !834, !835, !836, !844, !845, !846, !847, !848}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "nOfMBs", scope: !829, file: !533, line: 82, baseType: !13, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "nOfSegments", scope: !829, file: !533, line: 84, baseType: !13, size: 32, offset: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "yCondition", scope: !829, file: !533, line: 87, baseType: !431, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "uCondition", scope: !829, file: !533, line: 89, baseType: !431, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "vCondition", scope: !829, file: !533, line: 91, baseType: !431, size: 64, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "segments", scope: !829, file: !533, line: 94, baseType: !837, size: 64, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "ercSegment_t", file: !533, line: 76, baseType: !839)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ercSegment_s", file: !533, line: 71, size: 48, elements: !840)
!840 = !{!841, !842, !843}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "startMBPos", scope: !839, file: !533, line: 73, baseType: !558, size: 16)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "endMBPos", scope: !839, file: !533, line: 74, baseType: !558, size: 16, offset: 16)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "fCorrupted", scope: !839, file: !533, line: 75, baseType: !432, size: 8, offset: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "currSegment", scope: !829, file: !533, line: 95, baseType: !13, size: 32, offset: 320)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "prevFrameYCondition", scope: !829, file: !533, line: 98, baseType: !431, size: 64, offset: 384)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "currSegmentCorrupted", scope: !829, file: !533, line: 101, baseType: !13, size: 32, offset: 448)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "nOfCorruptedSegments", scope: !829, file: !533, line: 103, baseType: !13, size: 32, offset: 480)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "concealment", scope: !829, file: !533, line: 106, baseType: !13, size: 32, offset: 512)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !150, file: !108, line: 779, baseType: !13, size: 32, offset: 6852096)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "erc_img", scope: !150, file: !108, line: 780, baseType: !149, size: 64, offset: 6852160)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ec_flag", scope: !150, file: !108, line: 781, baseType: !852, size: 640, offset: 6852224)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 640, elements: !853)
!853 = !{!854}
!854 = !DISubrange(count: 20)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "annex_b", scope: !150, file: !108, line: 783, baseType: !856, size: 64, offset: 6852864)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "annex_b_struct", file: !858, line: 17, size: 448, elements: !859)
!858 = !DIFile(filename: "ldecod_src/inc/annexb.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "a6a52094af5c5816464e8295d9d6ede7")
!859 = !{!860, !861, !862, !863, !864, !865, !866, !867, !868}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "BitStreamFile", scope: !857, file: !858, line: 19, baseType: !13, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "iobuffer", scope: !857, file: !858, line: 20, baseType: !121, size: 64, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "iobufferread", scope: !857, file: !858, line: 21, baseType: !121, size: 64, offset: 128)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "bytesinbuffer", scope: !857, file: !858, line: 22, baseType: !13, size: 32, offset: 192)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "is_eof", scope: !857, file: !858, line: 23, baseType: !13, size: 32, offset: 224)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "iIOBufferSize", scope: !857, file: !858, line: 24, baseType: !13, size: 32, offset: 256)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "IsFirstByteStreamNALU", scope: !857, file: !858, line: 26, baseType: !13, size: 32, offset: 288)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "nextstartcodebytes", scope: !857, file: !858, line: 27, baseType: !13, size: 32, offset: 320)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "Buf", scope: !857, file: !858, line: 28, baseType: !121, size: 64, offset: 384)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "bitsfile", scope: !150, file: !108, line: 784, baseType: !870, size: 64, offset: 6852928)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sBitsFile", file: !872, line: 22, size: 192, elements: !873)
!872 = !DIFile(filename: "ldecod_src/inc/nalu.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "b3549c8c215a89e3e10b3ba1698c39db")
!873 = !{!874, !881, !885}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "OpenBitsFile", scope: !871, file: !872, line: 24, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{null, !878, !880}
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoParameters", file: !108, line: 836, baseType: !150)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "CloseBitsFile", scope: !871, file: !872, line: 25, baseType: !882, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !878}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "GetNALU", scope: !871, file: !872, line: 26, baseType: !886, size: 64, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!13, !878, !889}
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALU_t", file: !51, line: 74, baseType: !891)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nalu_t", file: !51, line: 54, size: 576, elements: !892)
!892 = !{!893, !894, !895, !896, !897, !899, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "startcodeprefix_len", scope: !891, file: !51, line: 56, baseType: !13, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !891, file: !51, line: 57, baseType: !37, size: 32, offset: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !891, file: !51, line: 58, baseType: !37, size: 32, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "forbidden_bit", scope: !891, file: !51, line: 59, baseType: !13, size: 32, offset: 96)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "nal_unit_type", scope: !891, file: !51, line: 60, baseType: !898, size: 32, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "NaluType", file: !51, line: 43, baseType: !50)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !891, file: !51, line: 61, baseType: !900, size: 32, offset: 160)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "NalRefIdc", file: !51, line: 51, baseType: !69)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !891, file: !51, line: 62, baseType: !121, size: 64, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "lost_packets", scope: !891, file: !51, line: 63, baseType: !579, size: 16, offset: 256)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "svc_extension_flag", scope: !891, file: !51, line: 65, baseType: !13, size: 32, offset: 288)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "non_idr_flag", scope: !891, file: !51, line: 66, baseType: !13, size: 32, offset: 320)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "priority_id", scope: !891, file: !51, line: 67, baseType: !13, size: 32, offset: 352)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !891, file: !51, line: 68, baseType: !13, size: 32, offset: 384)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !891, file: !51, line: 69, baseType: !13, size: 32, offset: 416)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !891, file: !51, line: 70, baseType: !13, size: 32, offset: 448)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !891, file: !51, line: 71, baseType: !13, size: 32, offset: 480)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_one_bit", scope: !891, file: !51, line: 72, baseType: !13, size: 32, offset: 512)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "out_buffer", scope: !150, file: !108, line: 786, baseType: !789, size: 64, offset: 6852992)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output", scope: !150, file: !108, line: 788, baseType: !590, size: 64, offset: 6853056)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output_state", scope: !150, file: !108, line: 789, baseType: !13, size: 32, offset: 6853120)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_flag", scope: !150, file: !108, line: 790, baseType: !13, size: 32, offset: 6853152)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "BitStreamFile", scope: !150, file: !108, line: 792, baseType: !13, size: 32, offset: 6853184)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !150, file: !108, line: 794, baseType: !917, size: 64, offset: 6853248)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decoded_picture_buffer", file: !538, line: 186, size: 33408, elements: !919)
!919 = !{!920, !921, !924, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !918, file: !538, line: 188, baseType: !878, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !918, file: !538, line: 189, baseType: !922, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "InputParameters", file: !108, line: 900, baseType: !154)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !918, file: !538, line: 190, baseType: !925, size: 64, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameStore", file: !538, line: 182, baseType: !790)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ref", scope: !918, file: !538, line: 191, baseType: !925, size: 64, offset: 192)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ltref", scope: !918, file: !538, line: 192, baseType: !925, size: 64, offset: 256)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !918, file: !538, line: 193, baseType: !37, size: 32, offset: 320)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "used_size", scope: !918, file: !538, line: 194, baseType: !37, size: 32, offset: 352)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "ref_frames_in_buffer", scope: !918, file: !538, line: 195, baseType: !37, size: 32, offset: 384)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "ltref_frames_in_buffer", scope: !918, file: !538, line: 196, baseType: !37, size: 32, offset: 416)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_poc", scope: !918, file: !538, line: 197, baseType: !13, size: 32, offset: 448)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_view_id", scope: !918, file: !538, line: 199, baseType: !13, size: 32, offset: 480)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_pic_idx", scope: !918, file: !538, line: 200, baseType: !774, size: 32768, offset: 512)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "init_done", scope: !918, file: !538, line: 205, baseType: !13, size: 32, offset: 33280)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !918, file: !538, line: 206, baseType: !13, size: 32, offset: 33312)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "last_picture", scope: !918, file: !538, line: 208, baseType: !926, size: 64, offset: 33344)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_legacy", scope: !150, file: !108, line: 795, baseType: !917, size: 64, offset: 6853312)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_layer", scope: !150, file: !108, line: 796, baseType: !942, size: 128, offset: 6853376)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !917, size: 128, elements: !475)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "cslice_type", scope: !150, file: !108, line: 800, baseType: !944, size: 72, offset: 6853504)
!944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !945)
!945 = !{!946}
!946 = !DISubrange(count: 9)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "MbToSliceGroupMap", scope: !150, file: !108, line: 802, baseType: !135, size: 64, offset: 6853632)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "MapUnitToSliceGroupMap", scope: !150, file: !108, line: 803, baseType: !135, size: 64, offset: 6853696)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfSliceGroups", scope: !150, file: !108, line: 804, baseType: !13, size: 32, offset: 6853760)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "seiToneMapping", scope: !150, file: !108, line: 807, baseType: !951, size: 64, offset: 6853824)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tone_mapping_struct_s", file: !953, line: 72, size: 65856, elements: !954)
!953 = !DIFile(filename: "ldecod_src/inc/sei.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "b096a43ea4af7b5f3dc386e3863042de")
!954 = !{!955, !956, !957, !958, !959, !960, !961, !965, !966}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "seiHasTone_mapping", scope: !952, file: !953, line: 74, baseType: !13, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "tone_map_repetition_period", scope: !952, file: !953, line: 75, baseType: !37, size: 32, offset: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "coded_data_bit_depth", scope: !952, file: !953, line: 76, baseType: !124, size: 8, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "sei_bit_depth", scope: !952, file: !953, line: 77, baseType: !124, size: 8, offset: 72)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "model_id", scope: !952, file: !953, line: 78, baseType: !37, size: 32, offset: 96)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !952, file: !953, line: 79, baseType: !37, size: 32, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "lut", scope: !952, file: !953, line: 81, baseType: !962, size: 65536, offset: 160)
!962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 65536, elements: !963)
!963 = !{!964}
!964 = !DISubrange(count: 4096)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !952, file: !953, line: 83, baseType: !112, size: 64, offset: 65728)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "payloadSize", scope: !952, file: !953, line: 84, baseType: !13, size: 32, offset: 65792)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "buf2img", scope: !150, file: !108, line: 810, baseType: !968, size: 64, offset: 6853888)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{null, !576, !971, !13, !13, !13, !13, !13, !13}
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "getNeighbour", scope: !150, file: !108, line: 811, baseType: !973, size: 64, offset: 6853952)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{null, !140, !13, !13, !135, !976}
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPos", file: !108, line: 85, baseType: !978)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pix_pos", file: !108, line: 77, size: 128, elements: !979)
!979 = !{!980, !981, !982, !983, !984, !985}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !978, file: !108, line: 79, baseType: !13, size: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "mb_addr", scope: !978, file: !108, line: 80, baseType: !13, size: 32, offset: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !978, file: !108, line: 81, baseType: !558, size: 16, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !978, file: !108, line: 82, baseType: !558, size: 16, offset: 80)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "pos_x", scope: !978, file: !108, line: 83, baseType: !558, size: 16, offset: 96)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "pos_y", scope: !978, file: !108, line: 84, baseType: !558, size: 16, offset: 112)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "get_mb_block_pos", scope: !150, file: !108, line: 812, baseType: !987, size: 64, offset: 6854016)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{null, !13, !610, !610}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthVer", scope: !150, file: !108, line: 813, baseType: !991, size: 64, offset: 6854080)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{null, !121, !140, !13, !13, !590}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthHor", scope: !150, file: !108, line: 814, baseType: !991, size: 64, offset: 6854144)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaVer", scope: !150, file: !108, line: 815, baseType: !996, size: 64, offset: 6854208)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{null, !999, !576, !121, !140, !13, !590}
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorPlane", file: !36, line: 32, baseType: !42)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaHor", scope: !150, file: !108, line: 816, baseType: !996, size: 64, offset: 6854272)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaVer", scope: !150, file: !108, line: 817, baseType: !1002, size: 64, offset: 6854336)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{null, !576, !121, !140, !13, !13, !590}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaHor", scope: !150, file: !108, line: 818, baseType: !1002, size: 64, offset: 6854400)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "img2buf", scope: !150, file: !108, line: 819, baseType: !1007, size: 64, offset: 6854464)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{null, !576, !971, !13, !13, !13, !13, !13, !13, !13, !13}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "pDecOuputPic", scope: !150, file: !108, line: 821, baseType: !1011, size: 64, offset: 6854528)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodedPicList", file: !108, line: 561, baseType: !1013)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decodedpic_t", file: !108, line: 544, size: 640, elements: !1014)
!1014 = !{!1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "bValid", scope: !1013, file: !108, line: 546, baseType: !13, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "iViewId", scope: !1013, file: !108, line: 547, baseType: !13, size: 32, offset: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "iPOC", scope: !1013, file: !108, line: 548, baseType: !13, size: 32, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVFormat", scope: !1013, file: !108, line: 549, baseType: !13, size: 32, offset: 96)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVStorageFormat", scope: !1013, file: !108, line: 550, baseType: !13, size: 32, offset: 128)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "iBitDepth", scope: !1013, file: !108, line: 551, baseType: !13, size: 32, offset: 160)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "pY", scope: !1013, file: !108, line: 552, baseType: !121, size: 64, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "pU", scope: !1013, file: !108, line: 553, baseType: !121, size: 64, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "pV", scope: !1013, file: !108, line: 554, baseType: !121, size: 64, offset: 320)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "iWidth", scope: !1013, file: !108, line: 555, baseType: !13, size: 32, offset: 384)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "iHeight", scope: !1013, file: !108, line: 556, baseType: !13, size: 32, offset: 416)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "iYBufStride", scope: !1013, file: !108, line: 557, baseType: !13, size: 32, offset: 448)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "iUVBufStride", scope: !1013, file: !108, line: 558, baseType: !13, size: 32, offset: 480)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "iSkipPicNum", scope: !1013, file: !108, line: 559, baseType: !13, size: 32, offset: 512)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "pNext", scope: !1013, file: !108, line: 560, baseType: !1030, size: 64, offset: 576)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "iDeblockMode", scope: !150, file: !108, line: 822, baseType: !13, size: 32, offset: 6854592)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "nalu", scope: !150, file: !108, line: 823, baseType: !1033, size: 64, offset: 6854656)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !150, file: !108, line: 824, baseType: !13, size: 32, offset: 6854720)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !150, file: !108, line: 825, baseType: !13, size: 32, offset: 6854752)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !150, file: !108, line: 826, baseType: !13, size: 32, offset: 6854784)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !150, file: !108, line: 827, baseType: !13, size: 32, offset: 6854816)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "bDeblockEnable", scope: !150, file: !108, line: 829, baseType: !13, size: 32, offset: 6854848)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "iPostProcess", scope: !150, file: !108, line: 830, baseType: !13, size: 32, offset: 6854880)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "bFrameInit", scope: !150, file: !108, line: 831, baseType: !13, size: 32, offset: 6854912)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "pNextPPS", scope: !150, file: !108, line: 835, baseType: !237, size: 64, offset: 6854976)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !146, file: !108, line: 344, baseType: !153, size: 64, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !146, file: !108, line: 345, baseType: !237, size: 64, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !146, file: !108, line: 346, baseType: !290, size: 64, offset: 192)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "svc_extension_flag", scope: !146, file: !108, line: 347, baseType: !13, size: 32, offset: 256)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !146, file: !108, line: 350, baseType: !917, size: 64, offset: 320)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !146, file: !108, line: 353, baseType: !13, size: 32, offset: 384)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !146, file: !108, line: 354, baseType: !13, size: 32, offset: 416)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !146, file: !108, line: 355, baseType: !13, size: 32, offset: 448)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "Transform8x8Mode", scope: !146, file: !108, line: 356, baseType: !13, size: 32, offset: 480)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "is_not_independent", scope: !146, file: !108, line: 357, baseType: !13, size: 32, offset: 512)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "toppoc", scope: !146, file: !108, line: 359, baseType: !13, size: 32, offset: 544)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "bottompoc", scope: !146, file: !108, line: 360, baseType: !13, size: 32, offset: 576)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "framepoc", scope: !146, file: !108, line: 361, baseType: !13, size: 32, offset: 608)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_lsb", scope: !146, file: !108, line: 365, baseType: !37, size: 32, offset: 640)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt_bottom", scope: !146, file: !108, line: 366, baseType: !13, size: 32, offset: 672)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !146, file: !108, line: 368, baseType: !474, size: 64, offset: 704)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntMsb", scope: !146, file: !108, line: 372, baseType: !13, size: 32, offset: 768)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "AbsFrameNum", scope: !146, file: !108, line: 378, baseType: !37, size: 32, offset: 800)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !146, file: !108, line: 379, baseType: !13, size: 32, offset: 832)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "current_mb_nr", scope: !146, file: !108, line: 387, baseType: !37, size: 32, offset: 864)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !146, file: !108, line: 388, baseType: !37, size: 32, offset: 896)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "current_slice_nr", scope: !146, file: !108, line: 389, baseType: !558, size: 16, offset: 928)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "cod_counter", scope: !146, file: !108, line: 396, baseType: !13, size: 32, offset: 960)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "allrefzero", scope: !146, file: !108, line: 397, baseType: !13, size: 32, offset: 992)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !146, file: !108, line: 400, baseType: !13, size: 32, offset: 1024)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "direct_spatial_mv_pred_flag", scope: !146, file: !108, line: 401, baseType: !13, size: 32, offset: 1056)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_active", scope: !146, file: !108, line: 402, baseType: !474, size: 64, offset: 1088)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !146, file: !108, line: 406, baseType: !13, size: 32, offset: 1152)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !146, file: !108, line: 407, baseType: !13, size: 32, offset: 1184)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !146, file: !108, line: 408, baseType: !13, size: 32, offset: 1216)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "qs", scope: !146, file: !108, line: 409, baseType: !13, size: 32, offset: 1248)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qs_delta", scope: !146, file: !108, line: 410, baseType: !13, size: 32, offset: 1280)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !146, file: !108, line: 411, baseType: !13, size: 32, offset: 1312)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "model_number", scope: !146, file: !108, line: 412, baseType: !13, size: 32, offset: 1344)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !146, file: !108, line: 413, baseType: !37, size: 32, offset: 1376)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !146, file: !108, line: 414, baseType: !37, size: 32, offset: 1408)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !146, file: !108, line: 415, baseType: !122, size: 8, offset: 1440)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !146, file: !108, line: 416, baseType: !542, size: 32, offset: 1472)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !146, file: !108, line: 417, baseType: !13, size: 32, offset: 1504)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "end_mb_nr_plus1", scope: !146, file: !108, line: 418, baseType: !13, size: 32, offset: 1536)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !146, file: !108, line: 419, baseType: !13, size: 32, offset: 1568)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "dp_mode", scope: !146, file: !108, line: 420, baseType: !13, size: 32, offset: 1600)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "current_header", scope: !146, file: !108, line: 421, baseType: !13, size: 32, offset: 1632)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "next_header", scope: !146, file: !108, line: 422, baseType: !13, size: 32, offset: 1664)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "last_dquant", scope: !146, file: !108, line: 423, baseType: !13, size: 32, offset: 1696)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "colour_plane_id", scope: !146, file: !108, line: 426, baseType: !13, size: 32, offset: 1728)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt", scope: !146, file: !108, line: 427, baseType: !13, size: 32, offset: 1760)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "sp_switch", scope: !146, file: !108, line: 428, baseType: !13, size: 32, offset: 1792)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_cycle", scope: !146, file: !108, line: 429, baseType: !13, size: 32, offset: 1824)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_slice_ref_idx", scope: !146, file: !108, line: 430, baseType: !13, size: 32, offset: 1856)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !146, file: !108, line: 431, baseType: !13, size: 32, offset: 1888)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !146, file: !108, line: 432, baseType: !13, size: 32, offset: 1920)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !146, file: !108, line: 433, baseType: !13, size: 32, offset: 1952)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !146, file: !108, line: 434, baseType: !630, size: 64, offset: 1984)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !146, file: !108, line: 436, baseType: !1097, size: 48, offset: 2048)
!1097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 48, elements: !263)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !146, file: !108, line: 437, baseType: !1099, size: 384, offset: 2112)
!1099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !659, size: 384, elements: !263)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !146, file: !108, line: 440, baseType: !106, size: 64, offset: 2496)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !146, file: !108, line: 441, baseType: !1102, size: 64, offset: 2560)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !108, line: 153, baseType: !1104)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 145, size: 2912, elements: !1105)
!1105 = !{!1106, !1116, !1119, !1123, !1126, !1128}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !1104, file: !108, line: 147, baseType: !1107, size: 1056)
!1107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1108, size: 1056, elements: !1114)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !108, line: 122, baseType: !1109)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 117, size: 32, elements: !1110)
!1110 = !{!1111, !1112, !1113}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1109, file: !108, line: 119, baseType: !579, size: 16)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !1109, file: !108, line: 120, baseType: !124, size: 8, offset: 16)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !1109, file: !108, line: 121, baseType: !124, size: 8, offset: 24)
!1114 = !{!181, !1115}
!1115 = !DISubrange(count: 11)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !1104, file: !108, line: 148, baseType: !1117, size: 576, offset: 1056)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1108, size: 576, elements: !1118)
!1118 = !{!476, !946}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !1104, file: !108, line: 149, baseType: !1120, size: 640, offset: 1632)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1108, size: 640, elements: !1121)
!1121 = !{!476, !1122}
!1122 = !DISubrange(count: 10)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !1104, file: !108, line: 150, baseType: !1124, size: 384, offset: 2272)
!1124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1108, size: 384, elements: !1125)
!1125 = !{!476, !255}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !1104, file: !108, line: 151, baseType: !1127, size: 128, offset: 2656)
!1127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1108, size: 128, elements: !5)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !1104, file: !108, line: 152, baseType: !1127, size: 128, offset: 2784)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !146, file: !108, line: 442, baseType: !1130, size: 64, offset: 2624)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !108, line: 175, baseType: !1132)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 164, size: 52768, elements: !1133)
!1133 = !{!1134, !1136, !1138, !1139, !1142, !1146, !1150, !1151, !1155}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !1132, file: !108, line: 166, baseType: !1135, size: 96)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1108, size: 96, elements: !180)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !1132, file: !108, line: 167, baseType: !1137, size: 64, offset: 96)
!1137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1108, size: 64, elements: !475)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !1132, file: !108, line: 168, baseType: !1127, size: 128, offset: 160)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !1132, file: !108, line: 169, baseType: !1140, size: 384, offset: 288)
!1140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1108, size: 384, elements: !1141)
!1141 = !{!181, !6}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !1132, file: !108, line: 170, baseType: !1143, size: 2816, offset: 672)
!1143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1108, size: 2816, elements: !1144)
!1144 = !{!1145, !6}
!1145 = !DISubrange(count: 22)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !1132, file: !108, line: 171, baseType: !1147, size: 21120, offset: 3488)
!1147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1108, size: 21120, elements: !1148)
!1148 = !{!476, !1145, !1149}
!1149 = !DISubrange(count: 15)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !1132, file: !108, line: 172, baseType: !1147, size: 21120, offset: 24608)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !1132, file: !108, line: 173, baseType: !1152, size: 3520, offset: 45728)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1108, size: 3520, elements: !1153)
!1153 = !{!1145, !1154}
!1154 = !DISubrange(count: 5)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !1132, file: !108, line: 174, baseType: !1152, size: 3520, offset: 49248)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "mvscale", scope: !146, file: !108, line: 444, baseType: !1157, size: 6144, offset: 2688)
!1157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 6144, elements: !1158)
!1158 = !{!255, !372}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag", scope: !146, file: !108, line: 446, baseType: !474, size: 64, offset: 8832)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "reordering_of_pic_nums_idc", scope: !146, file: !108, line: 447, baseType: !1161, size: 128, offset: 8896)
!1161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 128, elements: !475)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1", scope: !146, file: !108, line: 448, baseType: !1161, size: 128, offset: 9024)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx", scope: !146, file: !108, line: 449, baseType: !1161, size: 128, offset: 9152)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_view_idx_minus1", scope: !146, file: !108, line: 452, baseType: !1161, size: 128, offset: 9280)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !146, file: !108, line: 454, baseType: !13, size: 32, offset: 9408)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !146, file: !108, line: 455, baseType: !13, size: 32, offset: 9440)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !146, file: !108, line: 456, baseType: !13, size: 32, offset: 9472)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "NaluHeaderMVCExt", scope: !146, file: !108, line: 458, baseType: !1169, size: 256, offset: 9504)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALUnitHeaderMVCExt_t", file: !108, line: 337, baseType: !1170)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nalunitheadermvcext_tag", file: !108, line: 327, size: 256, elements: !1171)
!1171 = !{!1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "non_idr_flag", scope: !1170, file: !108, line: 329, baseType: !37, size: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "priority_id", scope: !1170, file: !108, line: 330, baseType: !37, size: 32, offset: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !1170, file: !108, line: 331, baseType: !37, size: 32, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !1170, file: !108, line: 332, baseType: !37, size: 32, offset: 96)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !1170, file: !108, line: 333, baseType: !37, size: 32, offset: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !1170, file: !108, line: 334, baseType: !37, size: 32, offset: 160)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_one_bit", scope: !1170, file: !108, line: 335, baseType: !37, size: 32, offset: 192)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "iPrefixNALU", scope: !1170, file: !108, line: 336, baseType: !37, size: 32, offset: 224)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !146, file: !108, line: 461, baseType: !558, size: 16, offset: 9760)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !146, file: !108, line: 462, baseType: !558, size: 16, offset: 9776)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !146, file: !108, line: 463, baseType: !558, size: 16, offset: 9792)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !146, file: !108, line: 465, baseType: !13, size: 32, offset: 9824)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "dpB_NotPresent", scope: !146, file: !108, line: 467, baseType: !13, size: 32, offset: 9856)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "dpC_NotPresent", scope: !146, file: !108, line: 468, baseType: !13, size: 32, offset: 9888)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "is_reset_coeff", scope: !146, file: !108, line: 470, baseType: !13, size: 32, offset: 9920)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "mb_pred", scope: !146, file: !108, line: 471, baseType: !581, size: 64, offset: 9984)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rec", scope: !146, file: !108, line: 472, baseType: !581, size: 64, offset: 10048)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rres", scope: !146, file: !108, line: 473, baseType: !421, size: 64, offset: 10112)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "cof", scope: !146, file: !108, line: 474, baseType: !421, size: 64, offset: 10176)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "fcf", scope: !146, file: !108, line: 475, baseType: !421, size: 64, offset: 10240)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "cofu", scope: !146, file: !108, line: 477, baseType: !1193, size: 512, offset: 10304)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 512, elements: !1194)
!1194 = !{!256}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l0", scope: !146, file: !108, line: 479, baseType: !576, size: 64, offset: 10816)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l1", scope: !146, file: !108, line: 480, baseType: !576, size: 64, offset: 10880)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_res", scope: !146, file: !108, line: 481, baseType: !408, size: 64, offset: 10944)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l2", scope: !146, file: !108, line: 482, baseType: !576, size: 64, offset: 11008)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l3", scope: !146, file: !108, line: 483, baseType: !576, size: 64, offset: 11072)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Intra", scope: !146, file: !108, line: 486, baseType: !1201, size: 9216, offset: 11136)
!1201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 9216, elements: !1202)
!1202 = !{!181, !255, !6, !6}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Inter", scope: !146, file: !108, line: 487, baseType: !1201, size: 9216, offset: 20352)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Intra", scope: !146, file: !108, line: 488, baseType: !1205, size: 36864, offset: 29568)
!1205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 36864, elements: !1206)
!1206 = !{!181, !255, !271, !271}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Inter", scope: !146, file: !108, line: 489, baseType: !1205, size: 36864, offset: 66432)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "qmatrix", scope: !146, file: !108, line: 491, baseType: !1209, size: 768, offset: 103296)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 768, elements: !250)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "coeff", scope: !146, file: !108, line: 494, baseType: !1211, size: 2048, offset: 104064)
!1211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2048, elements: !1212)
!1212 = !{!260}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_ctr", scope: !146, file: !108, line: 495, baseType: !13, size: 32, offset: 106112)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !146, file: !108, line: 496, baseType: !13, size: 32, offset: 106144)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !146, file: !108, line: 500, baseType: !343, size: 16, offset: 106176)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !146, file: !108, line: 501, baseType: !343, size: 16, offset: 106192)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "luma_log2_weight_denom", scope: !146, file: !108, line: 503, baseType: !343, size: 16, offset: 106208)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_log2_weight_denom", scope: !146, file: !108, line: 504, baseType: !343, size: 16, offset: 106224)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "wp_weight", scope: !146, file: !108, line: 505, baseType: !421, size: 64, offset: 106240)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "wp_offset", scope: !146, file: !108, line: 506, baseType: !421, size: 64, offset: 106304)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "wbp_weight", scope: !146, file: !108, line: 507, baseType: !1222, size: 64, offset: 106368)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_luma", scope: !146, file: !108, line: 508, baseType: !558, size: 16, offset: 106432)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_chroma", scope: !146, file: !108, line: 509, baseType: !558, size: 16, offset: 106448)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx0", scope: !146, file: !108, line: 512, baseType: !13, size: 32, offset: 106464)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx1", scope: !146, file: !108, line: 513, baseType: !13, size: 32, offset: 106496)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview0", scope: !146, file: !108, line: 514, baseType: !1228, size: 64, offset: 106560)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview1", scope: !146, file: !108, line: 515, baseType: !1228, size: 64, offset: 106624)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "max_mb_vmv_r", scope: !146, file: !108, line: 520, baseType: !13, size: 32, offset: 106688)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "ref_flag", scope: !146, file: !108, line: 521, baseType: !1232, size: 544, offset: 106720)
!1232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 544, elements: !1233)
!1233 = !{!1234}
!1234 = !DISubrange(count: 17)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "read_CBP_and_coeffs_from_NAL", scope: !146, file: !108, line: 523, baseType: !1236, size: 64, offset: 107264)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{null, !140}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "decode_one_component", scope: !146, file: !108, line: 524, baseType: !1240, size: 64, offset: 107328)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!13, !140, !999, !576, !590}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "readSlice", scope: !146, file: !108, line: 525, baseType: !1244, size: 64, offset: 107392)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!13, !149, !153}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "nal_startcode_follows", scope: !146, file: !108, line: 526, baseType: !1248, size: 64, offset: 107456)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!13, !145, !13}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "read_motion_info_from_NAL", scope: !146, file: !108, line: 527, baseType: !1236, size: 64, offset: 107520)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "read_one_macroblock", scope: !146, file: !108, line: 528, baseType: !1236, size: 64, offset: 107584)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "interpret_mb_mode", scope: !146, file: !108, line: 529, baseType: !1236, size: 64, offset: 107648)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "init_lists", scope: !146, file: !108, line: 530, baseType: !1255, size: 64, offset: 107712)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{null, !145}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "intrapred_chroma", scope: !146, file: !108, line: 531, baseType: !1236, size: 64, offset: 107776)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_intra", scope: !146, file: !108, line: 532, baseType: !1260, size: 64, offset: 107840)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{null, !13, !13, !135, !135}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_inter", scope: !146, file: !108, line: 533, baseType: !1260, size: 64, offset: 107904)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "update_direct_mv_info", scope: !146, file: !108, line: 534, baseType: !1236, size: 64, offset: 107968)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !146, file: !108, line: 535, baseType: !13, size: 32, offset: 108032)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !146, file: !108, line: 536, baseType: !140, size: 64, offset: 108096)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !146, file: !108, line: 537, baseType: !590, size: 64, offset: 108160)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !146, file: !108, line: 538, baseType: !408, size: 64, offset: 108224)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !146, file: !108, line: 539, baseType: !514, size: 64, offset: 108288)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !146, file: !108, line: 540, baseType: !431, size: 64, offset: 108352)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_vector_adjustment", scope: !146, file: !108, line: 541, baseType: !1272, size: 768, offset: 108416)
!1272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 768, elements: !254)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !142, file: !108, line: 200, baseType: !149, size: 64, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !142, file: !108, line: 201, baseType: !153, size: 64, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrX", scope: !142, file: !108, line: 202, baseType: !13, size: 32, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !142, file: !108, line: 203, baseType: !1277, size: 32, offset: 224)
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlockPos", file: !108, line: 112, baseType: !1278)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 108, size: 32, elements: !1279)
!1279 = !{!1280, !1281}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1278, file: !108, line: 110, baseType: !558, size: 16)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1278, file: !108, line: 111, baseType: !558, size: 16, offset: 16)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "block_x", scope: !142, file: !108, line: 204, baseType: !13, size: 32, offset: 256)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "block_y", scope: !142, file: !108, line: 205, baseType: !13, size: 32, offset: 288)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "block_y_aff", scope: !142, file: !108, line: 206, baseType: !13, size: 32, offset: 320)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "pix_x", scope: !142, file: !108, line: 207, baseType: !13, size: 32, offset: 352)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "pix_y", scope: !142, file: !108, line: 208, baseType: !13, size: 32, offset: 384)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_x", scope: !142, file: !108, line: 209, baseType: !13, size: 32, offset: 416)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_y", scope: !142, file: !108, line: 210, baseType: !13, size: 32, offset: 448)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_x", scope: !142, file: !108, line: 212, baseType: !13, size: 32, offset: 480)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_y", scope: !142, file: !108, line: 213, baseType: !13, size: 32, offset: 512)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !142, file: !108, line: 215, baseType: !13, size: 32, offset: 544)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "qpc", scope: !142, file: !108, line: 216, baseType: !474, size: 64, offset: 576)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "qp_scaled", scope: !142, file: !108, line: 217, baseType: !179, size: 96, offset: 640)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "is_lossless", scope: !142, file: !108, line: 218, baseType: !13, size: 32, offset: 736)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "is_intra_block", scope: !142, file: !108, line: 219, baseType: !13, size: 32, offset: 768)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "is_v_block", scope: !142, file: !108, line: 220, baseType: !13, size: 32, offset: 800)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "DeblockCall", scope: !142, file: !108, line: 221, baseType: !13, size: 32, offset: 832)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "slice_nr", scope: !142, file: !108, line: 223, baseType: !558, size: 16, offset: 864)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !142, file: !108, line: 224, baseType: !432, size: 8, offset: 880)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "dpl_flag", scope: !142, file: !108, line: 225, baseType: !432, size: 8, offset: 888)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "delta_quant", scope: !142, file: !108, line: 226, baseType: !558, size: 16, offset: 896)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "list_offset", scope: !142, file: !108, line: 227, baseType: !558, size: 16, offset: 912)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "mb_up", scope: !142, file: !108, line: 229, baseType: !1304, size: 64, offset: 960)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "mb_left", scope: !142, file: !108, line: 230, baseType: !1304, size: 64, offset: 1024)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "mbup", scope: !142, file: !108, line: 232, baseType: !1304, size: 64, offset: 1088)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "mbleft", scope: !142, file: !108, line: 233, baseType: !1304, size: 64, offset: 1152)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !142, file: !108, line: 236, baseType: !558, size: 16, offset: 1216)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !142, file: !108, line: 237, baseType: !1310, size: 1024, offset: 1232)
!1310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 1024, elements: !1311)
!1311 = !{!476, !6, !6, !476}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !142, file: !108, line: 239, baseType: !13, size: 32, offset: 2272)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !142, file: !108, line: 240, baseType: !1314, size: 192, offset: 2304)
!1314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !765, size: 192, elements: !180)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits", scope: !142, file: !108, line: 241, baseType: !1314, size: 192, offset: 2496)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits_8x8", scope: !142, file: !108, line: 242, baseType: !1314, size: 192, offset: 2688)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "i16mode", scope: !142, file: !108, line: 244, baseType: !13, size: 32, offset: 2880)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !142, file: !108, line: 245, baseType: !1319, size: 32, offset: 2912)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 32, elements: !5)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !142, file: !108, line: 246, baseType: !1319, size: 32, offset: 2944)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ipmode_DPCM", scope: !142, file: !108, line: 247, baseType: !432, size: 8, offset: 2976)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !142, file: !108, line: 248, baseType: !432, size: 8, offset: 2984)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "skip_flag", scope: !142, file: !108, line: 249, baseType: !432, size: 8, offset: 2992)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !142, file: !108, line: 250, baseType: !558, size: 16, offset: 3008)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !142, file: !108, line: 251, baseType: !558, size: 16, offset: 3024)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !142, file: !108, line: 252, baseType: !558, size: 16, offset: 3040)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !142, file: !108, line: 254, baseType: !13, size: 32, offset: 3072)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrA", scope: !142, file: !108, line: 256, baseType: !13, size: 32, offset: 3104)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrB", scope: !142, file: !108, line: 256, baseType: !13, size: 32, offset: 3136)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrC", scope: !142, file: !108, line: 256, baseType: !13, size: 32, offset: 3168)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrD", scope: !142, file: !108, line: 256, baseType: !13, size: 32, offset: 3200)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailA", scope: !142, file: !108, line: 257, baseType: !13, size: 32, offset: 3232)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailB", scope: !142, file: !108, line: 257, baseType: !13, size: 32, offset: 3264)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailC", scope: !142, file: !108, line: 257, baseType: !13, size: 32, offset: 3296)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailD", scope: !142, file: !108, line: 257, baseType: !13, size: 32, offset: 3328)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !142, file: !108, line: 259, baseType: !13, size: 32, offset: 3360)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !142, file: !108, line: 260, baseType: !13, size: 32, offset: 3392)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_4x4", scope: !142, file: !108, line: 262, baseType: !1339, size: 64, offset: 3456)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{null, !1304, !999, !13, !13}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_8x8", scope: !142, file: !108, line: 263, baseType: !1339, size: 64, offset: 3520)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "GetMVPredictor", scope: !142, file: !108, line: 265, baseType: !1344, size: 64, offset: 3584)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{null, !1304, !976, !1347, !558, !584, !13, !13, !13, !13, !13}
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "read_and_store_CBP_block_bit", scope: !142, file: !108, line: 268, baseType: !1349, size: 64, offset: 3648)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!13, !1304, !1352, !13}
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironmentPtr", file: !108, line: 97, baseType: !1353)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "readRefPictureIdx", scope: !142, file: !108, line: 269, baseType: !1355, size: 64, offset: 3712)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!432, !1304, !1358, !1374, !432, !13}
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !108, line: 276, size: 384, elements: !1360)
!1360 = !{!1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1359, file: !108, line: 278, baseType: !13, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !1359, file: !108, line: 279, baseType: !13, size: 32, offset: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !1359, file: !108, line: 280, baseType: !13, size: 32, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1359, file: !108, line: 281, baseType: !13, size: 32, offset: 96)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !1359, file: !108, line: 282, baseType: !13, size: 32, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !1359, file: !108, line: 283, baseType: !37, size: 32, offset: 160)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1359, file: !108, line: 284, baseType: !13, size: 32, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !1359, file: !108, line: 285, baseType: !13, size: 32, offset: 224)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1359, file: !108, line: 293, baseType: !1260, size: 64, offset: 256)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "reading", scope: !1359, file: !108, line: 295, baseType: !1371, size: 64, offset: 320)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{null, !140, !1358, !1352}
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "mixedModeEdgeFlag", scope: !142, file: !108, line: 272, baseType: !122, size: 8, offset: 3776)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !108, line: 296, baseType: !1359)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecoderParams", file: !108, line: 929, baseType: !1382)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decoder_params", file: !108, line: 921, size: 384, elements: !1383)
!1383 = !{!1384, !1385, !1386, !1387, !1388, !1442}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !1382, file: !108, line: 923, baseType: !922, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !1382, file: !108, line: 924, baseType: !878, size: 64, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "bufferSize", scope: !1382, file: !108, line: 925, baseType: !765, size: 64, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "UsedBits", scope: !1382, file: !108, line: 926, baseType: !13, size: 32, offset: 192)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "p_trace", scope: !1382, file: !108, line: 927, baseType: !1389, size: 64, offset: 256)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1391, line: 7, baseType: !1392)
!1391 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1393, line: 49, size: 1728, elements: !1394)
!1393 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1394 = !{!1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1410, !1412, !1413, !1414, !1416, !1417, !1418, !1422, !1425, !1427, !1430, !1433, !1434, !1435, !1439, !1440}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1392, file: !1393, line: 51, baseType: !13, size: 32)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1392, file: !1393, line: 54, baseType: !880, size: 64, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1392, file: !1393, line: 55, baseType: !880, size: 64, offset: 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1392, file: !1393, line: 56, baseType: !880, size: 64, offset: 192)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1392, file: !1393, line: 57, baseType: !880, size: 64, offset: 256)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1392, file: !1393, line: 58, baseType: !880, size: 64, offset: 320)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1392, file: !1393, line: 59, baseType: !880, size: 64, offset: 384)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1392, file: !1393, line: 60, baseType: !880, size: 64, offset: 448)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1392, file: !1393, line: 61, baseType: !880, size: 64, offset: 512)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1392, file: !1393, line: 64, baseType: !880, size: 64, offset: 576)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1392, file: !1393, line: 65, baseType: !880, size: 64, offset: 640)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1392, file: !1393, line: 66, baseType: !880, size: 64, offset: 704)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1392, file: !1393, line: 68, baseType: !1408, size: 64, offset: 768)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1393, line: 36, flags: DIFlagFwdDecl)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1392, file: !1393, line: 70, baseType: !1411, size: 64, offset: 832)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1392, file: !1393, line: 72, baseType: !13, size: 32, offset: 896)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1392, file: !1393, line: 73, baseType: !13, size: 32, offset: 928)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1392, file: !1393, line: 74, baseType: !1415, size: 64, offset: 960)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !770, line: 152, baseType: !771)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1392, file: !1393, line: 77, baseType: !343, size: 16, offset: 1024)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1392, file: !1393, line: 78, baseType: !432, size: 8, offset: 1040)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1392, file: !1393, line: 79, baseType: !1419, size: 8, offset: 1048)
!1419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !1420)
!1420 = !{!1421}
!1421 = !DISubrange(count: 1)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1392, file: !1393, line: 81, baseType: !1423, size: 64, offset: 1088)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1393, line: 43, baseType: null)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1392, file: !1393, line: 89, baseType: !1426, size: 64, offset: 1152)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !770, line: 153, baseType: !771)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1392, file: !1393, line: 91, baseType: !1428, size: 64, offset: 1216)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1393, line: 37, flags: DIFlagFwdDecl)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1392, file: !1393, line: 92, baseType: !1431, size: 64, offset: 1280)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1393, line: 38, flags: DIFlagFwdDecl)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1392, file: !1393, line: 93, baseType: !1411, size: 64, offset: 1344)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1392, file: !1393, line: 94, baseType: !1378, size: 64, offset: 1408)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1392, file: !1393, line: 95, baseType: !1436, size: 64, offset: 1472)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1437, line: 18, baseType: !1438)
!1437 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!1438 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1392, file: !1393, line: 96, baseType: !13, size: 32, offset: 1536)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1392, file: !1393, line: 98, baseType: !1441, size: 160, offset: 1568)
!1441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !853)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "bitcounter", scope: !1382, file: !108, line: 928, baseType: !13, size: 32, offset: 320)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "OldSliceParams", file: !108, line: 919, baseType: !466)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "SNRParameters", file: !108, line: 847, baseType: !486)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodedPictureBuffer", file: !538, line: 209, baseType: !918)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToneMappingSEI", file: !953, line: 85, baseType: !952)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1453, line: 10, baseType: !1454)
!1453 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !770, line: 160, baseType: !771)
!1455 = !{!0, !1456, !1461, !1466, !1471, !1476, !1481, !1486, !1491, !1496, !1501, !1506, !1509, !1514, !1519, !7, !1521, !1523, !1527, !1532, !1537, !1542, !1544, !1549, !1554, !1556, !1558, !1589, !1594, !1599, !1601, !1603, !1605, !1610, !1614, !1618, !1621, !1626, !1631, !1634, !1636, !1638, !1640, !1645, !1650, !1655, !1660, !1662, !1664, !1666, !1668, !1672, !1674, !1676, !1679, !1681, !1683, !1685, !1687, !1692, !1695}
!1456 = !DIGlobalVariableExpression(var: !1457, expr: !DIExpression())
!1457 = distinct !DIGlobalVariable(scope: null, file: !2, line: 653, type: !1458, isLocal: true, isDefinition: true)
!1458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !1459)
!1459 = !{!1460}
!1460 = !DISubrange(count: 60)
!1461 = !DIGlobalVariableExpression(var: !1462, expr: !DIExpression())
!1462 = distinct !DIGlobalVariable(scope: null, file: !2, line: 663, type: !1463, isLocal: true, isDefinition: true)
!1463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !1464)
!1464 = !{!1465}
!1465 = !DISubrange(count: 55)
!1466 = !DIGlobalVariableExpression(var: !1467, expr: !DIExpression())
!1467 = distinct !DIGlobalVariable(scope: null, file: !2, line: 669, type: !1468, isLocal: true, isDefinition: true)
!1468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !1469)
!1469 = !{!1470}
!1470 = !DISubrange(count: 58)
!1471 = !DIGlobalVariableExpression(var: !1472, expr: !DIExpression())
!1472 = distinct !DIGlobalVariable(scope: null, file: !2, line: 728, type: !1473, isLocal: true, isDefinition: true)
!1473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !1474)
!1474 = !{!1475}
!1475 = !DISubrange(count: 61)
!1476 = !DIGlobalVariableExpression(var: !1477, expr: !DIExpression())
!1477 = distinct !DIGlobalVariable(scope: null, file: !2, line: 765, type: !1478, isLocal: true, isDefinition: true)
!1478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !1479)
!1479 = !{!1480}
!1480 = !DISubrange(count: 34)
!1481 = !DIGlobalVariableExpression(var: !1482, expr: !DIExpression())
!1482 = distinct !DIGlobalVariable(scope: null, file: !2, line: 871, type: !1483, isLocal: true, isDefinition: true)
!1483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !1484)
!1484 = !{!1485}
!1485 = !DISubrange(count: 36)
!1486 = !DIGlobalVariableExpression(var: !1487, expr: !DIExpression())
!1487 = distinct !DIGlobalVariable(scope: null, file: !2, line: 885, type: !1488, isLocal: true, isDefinition: true)
!1488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !1489)
!1489 = !{!1490}
!1490 = !DISubrange(count: 43)
!1491 = !DIGlobalVariableExpression(var: !1492, expr: !DIExpression())
!1492 = distinct !DIGlobalVariable(scope: null, file: !2, line: 892, type: !1493, isLocal: true, isDefinition: true)
!1493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !1494)
!1494 = !{!1495}
!1495 = !DISubrange(count: 40)
!1496 = !DIGlobalVariableExpression(var: !1497, expr: !DIExpression())
!1497 = distinct !DIGlobalVariable(scope: null, file: !2, line: 898, type: !1498, isLocal: true, isDefinition: true)
!1498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !1499)
!1499 = !{!1500}
!1500 = !DISubrange(count: 28)
!1501 = !DIGlobalVariableExpression(var: !1502, expr: !DIExpression())
!1502 = distinct !DIGlobalVariable(scope: null, file: !2, line: 926, type: !1503, isLocal: true, isDefinition: true)
!1503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !1504)
!1504 = !{!1505}
!1505 = !DISubrange(count: 39)
!1506 = !DIGlobalVariableExpression(var: !1507, expr: !DIExpression())
!1507 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1116, type: !1508, isLocal: true, isDefinition: true)
!1508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !180)
!1509 = !DIGlobalVariableExpression(var: !1510, expr: !DIExpression())
!1510 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1120, type: !1511, isLocal: true, isDefinition: true)
!1511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !1512)
!1512 = !{!1513}
!1513 = !DISubrange(count: 62)
!1514 = !DIGlobalVariableExpression(var: !1515, expr: !DIExpression())
!1515 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1121, type: !1516, isLocal: true, isDefinition: true)
!1516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 576, elements: !1517)
!1517 = !{!1518}
!1518 = !DISubrange(count: 72)
!1519 = !DIGlobalVariableExpression(var: !1520, expr: !DIExpression())
!1520 = distinct !DIGlobalVariable(name: "p_Dec", scope: !9, file: !2, line: 76, type: !1380, isLocal: false, isDefinition: true)
!1521 = !DIGlobalVariableExpression(var: !1522, expr: !DIExpression())
!1522 = distinct !DIGlobalVariable(name: "PicPos", scope: !9, file: !2, line: 78, type: !1379, isLocal: false, isDefinition: true)
!1523 = !DIGlobalVariableExpression(var: !1524, expr: !DIExpression())
!1524 = distinct !DIGlobalVariable(scope: null, file: !2, line: 198, type: !1525, isLocal: true, isDefinition: true)
!1525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !1526)
!1526 = !{!1145}
!1527 = !DIGlobalVariableExpression(var: !1528, expr: !DIExpression())
!1528 = distinct !DIGlobalVariable(scope: null, file: !2, line: 128, type: !1529, isLocal: true, isDefinition: true)
!1529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !1530)
!1530 = !{!1531}
!1531 = !DISubrange(count: 26)
!1532 = !DIGlobalVariableExpression(var: !1533, expr: !DIExpression())
!1533 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !1534, isLocal: true, isDefinition: true)
!1534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !1535)
!1535 = !{!1536}
!1536 = !DISubrange(count: 37)
!1537 = !DIGlobalVariableExpression(var: !1538, expr: !DIExpression())
!1538 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !1539, isLocal: true, isDefinition: true)
!1539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !1540)
!1540 = !{!1541}
!1541 = !DISubrange(count: 31)
!1542 = !DIGlobalVariableExpression(var: !1543, expr: !DIExpression())
!1543 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !1493, isLocal: true, isDefinition: true)
!1544 = !DIGlobalVariableExpression(var: !1545, expr: !DIExpression())
!1545 = distinct !DIGlobalVariable(scope: null, file: !2, line: 148, type: !1546, isLocal: true, isDefinition: true)
!1546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !1547)
!1547 = !{!1548}
!1548 = !DISubrange(count: 42)
!1549 = !DIGlobalVariableExpression(var: !1550, expr: !DIExpression())
!1550 = distinct !DIGlobalVariable(scope: null, file: !2, line: 156, type: !1551, isLocal: true, isDefinition: true)
!1551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !1552)
!1552 = !{!1553}
!1553 = !DISubrange(count: 45)
!1554 = !DIGlobalVariableExpression(var: !1555, expr: !DIExpression())
!1555 = distinct !DIGlobalVariable(scope: null, file: !2, line: 161, type: !1503, isLocal: true, isDefinition: true)
!1556 = !DIGlobalVariableExpression(var: !1557, expr: !DIExpression())
!1557 = distinct !DIGlobalVariable(scope: null, file: !2, line: 183, type: !1441, isLocal: true, isDefinition: true)
!1558 = !DIGlobalVariableExpression(var: !1559, expr: !DIExpression())
!1559 = distinct !DIGlobalVariable(name: "yuv_formats", scope: !1560, file: !2, line: 480, type: !1587, isLocal: true, isDefinition: true)
!1560 = distinct !DISubprogram(name: "Report", scope: !2, file: !2, line: 472, type: !883, scopeLine: 473, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1561)
!1561 = !{!1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569}
!1562 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !1560, file: !2, line: 472, type: !878)
!1563 = !DILocalVariable(name: "active_pps", scope: !1560, file: !2, line: 474, type: !237)
!1564 = !DILocalVariable(name: "p_Inp", scope: !1560, file: !2, line: 475, type: !922)
!1565 = !DILocalVariable(name: "snr", scope: !1560, file: !2, line: 476, type: !1445)
!1566 = !DILocalVariable(name: "string", scope: !1560, file: !2, line: 478, type: !157)
!1567 = !DILocalVariable(name: "p_log", scope: !1560, file: !2, line: 479, type: !1389)
!1568 = !DILocalVariable(name: "now", scope: !1560, file: !2, line: 482, type: !1452)
!1569 = !DILocalVariable(name: "l_time", scope: !1560, file: !2, line: 483, type: !1570)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !1572, line: 7, size: 448, elements: !1573)
!1572 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h", directory: "", checksumkind: CSK_MD5, checksum: "9e5545b565ef031c4cd0faf90b69386f")
!1573 = !{!1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !1571, file: !1572, line: 9, baseType: !13, size: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !1571, file: !1572, line: 10, baseType: !13, size: 32, offset: 32)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !1571, file: !1572, line: 11, baseType: !13, size: 32, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !1571, file: !1572, line: 12, baseType: !13, size: 32, offset: 96)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !1571, file: !1572, line: 13, baseType: !13, size: 32, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !1571, file: !1572, line: 14, baseType: !13, size: 32, offset: 160)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !1571, file: !1572, line: 15, baseType: !13, size: 32, offset: 192)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !1571, file: !1572, line: 16, baseType: !13, size: 32, offset: 224)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !1571, file: !1572, line: 17, baseType: !13, size: 32, offset: 256)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_gmtoff", scope: !1571, file: !1572, line: 23, baseType: !771, size: 64, offset: 320)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_zone", scope: !1571, file: !1572, line: 24, baseType: !1585, size: 64, offset: 384)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!1587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1586, size: 128, elements: !1588)
!1588 = !{!6, !6}
!1589 = !DIGlobalVariableExpression(var: !1590, expr: !DIExpression())
!1590 = distinct !DIGlobalVariable(scope: null, file: !2, line: 495, type: !1591, isLocal: true, isDefinition: true)
!1591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 608, elements: !1592)
!1592 = !{!1593}
!1593 = !DISubrange(count: 76)
!1594 = !DIGlobalVariableExpression(var: !1595, expr: !DIExpression())
!1595 = distinct !DIGlobalVariable(scope: null, file: !2, line: 496, type: !1596, isLocal: true, isDefinition: true)
!1596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !1597)
!1597 = !{!1598}
!1598 = !DISubrange(count: 30)
!1599 = !DIGlobalVariableExpression(var: !1600, expr: !DIExpression())
!1600 = distinct !DIGlobalVariable(scope: null, file: !2, line: 497, type: !1596, isLocal: true, isDefinition: true)
!1601 = !DIGlobalVariableExpression(var: !1602, expr: !DIExpression())
!1602 = distinct !DIGlobalVariable(scope: null, file: !2, line: 498, type: !1596, isLocal: true, isDefinition: true)
!1603 = !DIGlobalVariableExpression(var: !1604, expr: !DIExpression())
!1604 = distinct !DIGlobalVariable(scope: null, file: !2, line: 502, type: !1591, isLocal: true, isDefinition: true)
!1605 = !DIGlobalVariableExpression(var: !1606, expr: !DIExpression())
!1606 = distinct !DIGlobalVariable(scope: null, file: !2, line: 503, type: !1607, isLocal: true, isDefinition: true)
!1607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !1608)
!1608 = !{!1609}
!1609 = !DISubrange(count: 29)
!1610 = !DIGlobalVariableExpression(var: !1611, expr: !DIExpression())
!1611 = distinct !DIGlobalVariable(scope: null, file: !2, line: 503, type: !1612, isLocal: true, isDefinition: true)
!1612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !1613)
!1613 = !{!1115}
!1614 = !DIGlobalVariableExpression(var: !1615, expr: !DIExpression())
!1615 = distinct !DIGlobalVariable(scope: null, file: !2, line: 503, type: !1616, isLocal: true, isDefinition: true)
!1616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !1617)
!1617 = !{!1154}
!1618 = !DIGlobalVariableExpression(var: !1619, expr: !DIExpression())
!1619 = distinct !DIGlobalVariable(scope: null, file: !2, line: 504, type: !1620, isLocal: true, isDefinition: true)
!1620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !475)
!1621 = !DIGlobalVariableExpression(var: !1622, expr: !DIExpression())
!1622 = distinct !DIGlobalVariable(scope: null, file: !2, line: 508, type: !1623, isLocal: true, isDefinition: true)
!1623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 616, elements: !1624)
!1624 = !{!1625}
!1625 = !DISubrange(count: 77)
!1626 = !DIGlobalVariableExpression(var: !1627, expr: !DIExpression())
!1627 = distinct !DIGlobalVariable(scope: null, file: !2, line: 518, type: !1628, isLocal: true, isDefinition: true)
!1628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !1629)
!1629 = !{!1630}
!1630 = !DISubrange(count: 47)
!1631 = !DIGlobalVariableExpression(var: !1632, expr: !DIExpression())
!1632 = distinct !DIGlobalVariable(scope: null, file: !2, line: 518, type: !1633, isLocal: true, isDefinition: true)
!1633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !270)
!1634 = !DIGlobalVariableExpression(var: !1635, expr: !DIExpression())
!1635 = distinct !DIGlobalVariable(scope: null, file: !2, line: 519, type: !1508, isLocal: true, isDefinition: true)
!1636 = !DIGlobalVariableExpression(var: !1637, expr: !DIExpression())
!1637 = distinct !DIGlobalVariable(scope: null, file: !2, line: 521, type: !1620, isLocal: true, isDefinition: true)
!1638 = !DIGlobalVariableExpression(var: !1639, expr: !DIExpression())
!1639 = distinct !DIGlobalVariable(scope: null, file: !2, line: 523, type: !1620, isLocal: true, isDefinition: true)
!1640 = !DIGlobalVariableExpression(var: !1641, expr: !DIExpression())
!1641 = distinct !DIGlobalVariable(scope: null, file: !2, line: 525, type: !1642, isLocal: true, isDefinition: true)
!1642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !1643)
!1643 = !{!1644}
!1644 = !DISubrange(count: 33)
!1645 = !DIGlobalVariableExpression(var: !1646, expr: !DIExpression())
!1646 = distinct !DIGlobalVariable(scope: null, file: !2, line: 530, type: !1647, isLocal: true, isDefinition: true)
!1647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 944, elements: !1648)
!1648 = !{!1649}
!1649 = !DISubrange(count: 118)
!1650 = !DIGlobalVariableExpression(var: !1651, expr: !DIExpression())
!1651 = distinct !DIGlobalVariable(scope: null, file: !2, line: 531, type: !1652, isLocal: true, isDefinition: true)
!1652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 752, elements: !1653)
!1653 = !{!1654}
!1654 = !DISubrange(count: 94)
!1655 = !DIGlobalVariableExpression(var: !1656, expr: !DIExpression())
!1656 = distinct !DIGlobalVariable(scope: null, file: !2, line: 532, type: !1657, isLocal: true, isDefinition: true)
!1657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 952, elements: !1658)
!1658 = !{!1659}
!1659 = !DISubrange(count: 119)
!1660 = !DIGlobalVariableExpression(var: !1661, expr: !DIExpression())
!1661 = distinct !DIGlobalVariable(scope: null, file: !2, line: 533, type: !1657, isLocal: true, isDefinition: true)
!1662 = !DIGlobalVariableExpression(var: !1663, expr: !DIExpression())
!1663 = distinct !DIGlobalVariable(scope: null, file: !2, line: 543, type: !944, isLocal: true, isDefinition: true)
!1664 = !DIGlobalVariableExpression(var: !1665, expr: !DIExpression())
!1665 = distinct !DIGlobalVariable(scope: null, file: !2, line: 543, type: !1633, isLocal: true, isDefinition: true)
!1666 = !DIGlobalVariableExpression(var: !1667, expr: !DIExpression())
!1667 = distinct !DIGlobalVariable(scope: null, file: !2, line: 555, type: !944, isLocal: true, isDefinition: true)
!1668 = !DIGlobalVariableExpression(var: !1669, expr: !DIExpression())
!1669 = distinct !DIGlobalVariable(scope: null, file: !2, line: 556, type: !1670, isLocal: true, isDefinition: true)
!1670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !1671)
!1671 = !{!1122}
!1672 = !DIGlobalVariableExpression(var: !1673, expr: !DIExpression())
!1673 = distinct !DIGlobalVariable(scope: null, file: !2, line: 558, type: !944, isLocal: true, isDefinition: true)
!1674 = !DIGlobalVariableExpression(var: !1675, expr: !DIExpression())
!1675 = distinct !DIGlobalVariable(scope: null, file: !2, line: 562, type: !944, isLocal: true, isDefinition: true)
!1676 = !DIGlobalVariableExpression(var: !1677, expr: !DIExpression())
!1677 = distinct !DIGlobalVariable(scope: null, file: !2, line: 564, type: !1678, isLocal: true, isDefinition: true)
!1678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !263)
!1679 = !DIGlobalVariableExpression(var: !1680, expr: !DIExpression())
!1680 = distinct !DIGlobalVariable(scope: null, file: !2, line: 565, type: !1670, isLocal: true, isDefinition: true)
!1681 = !DIGlobalVariableExpression(var: !1682, expr: !DIExpression())
!1682 = distinct !DIGlobalVariable(scope: null, file: !2, line: 566, type: !1678, isLocal: true, isDefinition: true)
!1683 = !DIGlobalVariableExpression(var: !1684, expr: !DIExpression())
!1684 = distinct !DIGlobalVariable(scope: null, file: !2, line: 571, type: !1633, isLocal: true, isDefinition: true)
!1685 = !DIGlobalVariableExpression(var: !1686, expr: !DIExpression())
!1686 = distinct !DIGlobalVariable(scope: null, file: !2, line: 573, type: !1633, isLocal: true, isDefinition: true)
!1687 = !DIGlobalVariableExpression(var: !1688, expr: !DIExpression())
!1688 = distinct !DIGlobalVariable(scope: null, file: !2, line: 576, type: !1689, isLocal: true, isDefinition: true)
!1689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !1690)
!1690 = !{!1691}
!1691 = !DISubrange(count: 7)
!1692 = !DIGlobalVariableExpression(var: !1693, expr: !DIExpression())
!1693 = distinct !DIGlobalVariable(scope: null, file: !2, line: 585, type: !1694, isLocal: true, isDefinition: true)
!1694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !250)
!1695 = !DIGlobalVariableExpression(var: !1696, expr: !DIExpression())
!1696 = distinct !DIGlobalVariable(scope: null, file: !2, line: 590, type: !1697, isLocal: true, isDefinition: true)
!1697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 672, elements: !1698)
!1698 = !{!1699}
!1699 = !DISubrange(count: 84)
!1700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2400, elements: !1701)
!1701 = !{!1702}
!1702 = !DISubrange(count: 300)
!1703 = !{i32 7, !"Dwarf Version", i32 5}
!1704 = !{i32 2, !"Debug Info Version", i32 3}
!1705 = !{i32 1, !"wchar_size", i32 4}
!1706 = !{i32 8, !"PIC Level", i32 2}
!1707 = !{i32 7, !"PIE Level", i32 2}
!1708 = !{i32 7, !"uwtable", i32 2}
!1709 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!1710 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!1711 = distinct !DISubprogram(name: "error", scope: !2, file: !2, line: 98, type: !1712, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1714)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{null, !880, !13}
!1714 = !{!1715, !1716}
!1715 = !DILocalVariable(name: "text", arg: 1, scope: !1711, file: !2, line: 98, type: !880)
!1716 = !DILocalVariable(name: "code", arg: 2, scope: !1711, file: !2, line: 98, type: !13)
!1717 = !DILocation(line: 0, scope: !1711)
!1718 = !DILocation(line: 100, column: 11, scope: !1711)
!1719 = !DILocation(line: 100, column: 3, scope: !1711)
!1720 = !DILocation(line: 108, column: 3, scope: !1711)
!1721 = !DISubprogram(name: "fprintf", scope: !1722, file: !1722, line: 350, type: !1723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1722 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!13, !1725, !1726, null}
!1725 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1389)
!1726 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1585)
!1727 = !DISubprogram(name: "exit", scope: !1728, file: !1728, line: 624, type: !1729, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1728 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1729 = !DISubroutineType(types: !1730)
!1730 = !{null, !13}
!1731 = distinct !DISubprogram(name: "FreeDecPicList", scope: !2, file: !2, line: 300, type: !1732, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1734)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{null, !1011}
!1734 = !{!1735, !1736}
!1735 = !DILocalVariable(name: "pDecPicList", arg: 1, scope: !1731, file: !2, line: 300, type: !1011)
!1736 = !DILocalVariable(name: "pPicNext", scope: !1737, file: !2, line: 304, type: !1011)
!1737 = distinct !DILexicalBlock(scope: !1731, file: !2, line: 303, column: 3)
!1738 = !DILocation(line: 0, scope: !1731)
!1739 = !DILocation(line: 302, column: 3, scope: !1731)
!1740 = !DILocation(line: 304, column: 45, scope: !1737)
!1741 = !DILocation(line: 0, scope: !1737)
!1742 = !DILocation(line: 305, column: 21, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1737, file: !2, line: 305, column: 8)
!1744 = !DILocation(line: 305, column: 8, scope: !1743)
!1745 = !DILocation(line: 305, column: 8, scope: !1737)
!1746 = !DILocation(line: 307, column: 7, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1743, file: !2, line: 306, column: 5)
!1748 = !DILocation(line: 311, column: 5, scope: !1747)
!1749 = !DILocation(line: 312, column: 5, scope: !1737)
!1750 = distinct !{!1750, !1739, !1751}
!1751 = !DILocation(line: 314, column: 3, scope: !1731)
!1752 = !DILocation(line: 315, column: 1, scope: !1731)
!1753 = !DISubprogram(name: "free", scope: !1728, file: !1728, line: 555, type: !1754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{null, !1378}
!1756 = distinct !DISubprogram(name: "init_frext", scope: !2, file: !2, line: 399, type: !883, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1757)
!1757 = !{!1758}
!1758 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !1756, file: !2, line: 399, type: !878)
!1759 = !DILocation(line: 0, scope: !1756)
!1760 = !DILocation(line: 402, column: 49, scope: !1756)
!1761 = !DILocation(line: 402, column: 42, scope: !1756)
!1762 = !DILocation(line: 402, column: 39, scope: !1756)
!1763 = !DILocation(line: 402, column: 10, scope: !1756)
!1764 = !DILocation(line: 402, column: 35, scope: !1756)
!1765 = !DILocation(line: 404, column: 36, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1756, file: !2, line: 404, column: 6)
!1767 = !DILocation(line: 404, column: 27, scope: !1766)
!1768 = !DILocation(line: 404, column: 52, scope: !1766)
!1769 = !DILocation(line: 404, column: 74, scope: !1766)
!1770 = !DILocation(line: 404, column: 92, scope: !1766)
!1771 = !DILocation(line: 404, column: 6, scope: !1756)
!1772 = !DILocation(line: 0, scope: !1766)
!1773 = !DILocation(line: 408, column: 62, scope: !1756)
!1774 = !DILocation(line: 408, column: 38, scope: !1756)
!1775 = !DILocation(line: 408, column: 10, scope: !1756)
!1776 = !DILocation(line: 408, column: 35, scope: !1756)
!1777 = !DILocation(line: 409, column: 36, scope: !1756)
!1778 = !DILocation(line: 409, column: 60, scope: !1756)
!1779 = !DILocation(line: 409, column: 10, scope: !1756)
!1780 = !DILocation(line: 409, column: 32, scope: !1756)
!1781 = !DILocation(line: 410, column: 33, scope: !1756)
!1782 = !DILocation(line: 410, column: 26, scope: !1756)
!1783 = !DILocation(line: 410, column: 47, scope: !1756)
!1784 = !DILocation(line: 410, column: 24, scope: !1756)
!1785 = !DILocation(line: 412, column: 26, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1756, file: !2, line: 412, column: 7)
!1787 = !DILocation(line: 412, column: 44, scope: !1786)
!1788 = !DILocation(line: 412, column: 7, scope: !1756)
!1789 = !DILocation(line: 415, column: 44, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 413, column: 3)
!1791 = !DILocation(line: 415, column: 41, scope: !1790)
!1792 = !DILocation(line: 415, column: 12, scope: !1790)
!1793 = !DILocation(line: 415, column: 37, scope: !1790)
!1794 = !DILocation(line: 416, column: 69, scope: !1790)
!1795 = !DILocation(line: 416, column: 42, scope: !1790)
!1796 = !DILocation(line: 416, column: 5, scope: !1790)
!1797 = !DILocation(line: 416, column: 37, scope: !1790)
!1798 = !DILocation(line: 417, column: 5, scope: !1790)
!1799 = !DILocation(line: 417, column: 37, scope: !1790)
!1800 = !DILocation(line: 418, column: 42, scope: !1790)
!1801 = !DILocation(line: 418, column: 69, scope: !1790)
!1802 = !DILocation(line: 418, column: 5, scope: !1790)
!1803 = !DILocation(line: 418, column: 37, scope: !1790)
!1804 = !DILocation(line: 419, column: 5, scope: !1790)
!1805 = !DILocation(line: 419, column: 37, scope: !1790)
!1806 = !DILocation(line: 420, column: 53, scope: !1790)
!1807 = !DILocation(line: 420, column: 31, scope: !1790)
!1808 = !DILocation(line: 420, column: 72, scope: !1790)
!1809 = !DILocation(line: 420, column: 12, scope: !1790)
!1810 = !DILocation(line: 420, column: 26, scope: !1790)
!1811 = !DILocation(line: 421, column: 50, scope: !1790)
!1812 = !DILocation(line: 421, column: 12, scope: !1790)
!1813 = !DILocation(line: 421, column: 26, scope: !1790)
!1814 = !DILocation(line: 422, column: 50, scope: !1790)
!1815 = !DILocation(line: 422, column: 12, scope: !1790)
!1816 = !DILocation(line: 422, column: 26, scope: !1790)
!1817 = !DILocation(line: 423, column: 94, scope: !1790)
!1818 = !DILocation(line: 423, column: 120, scope: !1790)
!1819 = !DILocation(line: 423, column: 58, scope: !1790)
!1820 = !DILocation(line: 423, column: 72, scope: !1790)
!1821 = !DILocation(line: 423, column: 28, scope: !1790)
!1822 = !DILocation(line: 423, column: 49, scope: !1790)
!1823 = !DILocation(line: 423, column: 5, scope: !1790)
!1824 = !DILocation(line: 423, column: 26, scope: !1790)
!1825 = !DILocation(line: 424, column: 94, scope: !1790)
!1826 = !DILocation(line: 424, column: 120, scope: !1790)
!1827 = !DILocation(line: 424, column: 58, scope: !1790)
!1828 = !DILocation(line: 424, column: 72, scope: !1790)
!1829 = !DILocation(line: 424, column: 28, scope: !1790)
!1830 = !DILocation(line: 424, column: 49, scope: !1790)
!1831 = !DILocation(line: 424, column: 5, scope: !1790)
!1832 = !DILocation(line: 424, column: 26, scope: !1790)
!1833 = !DILocation(line: 426, column: 26, scope: !1790)
!1834 = !DILocation(line: 426, column: 12, scope: !1790)
!1835 = !DILocation(line: 426, column: 24, scope: !1790)
!1836 = !DILocation(line: 427, column: 26, scope: !1790)
!1837 = !DILocation(line: 427, column: 12, scope: !1790)
!1838 = !DILocation(line: 427, column: 24, scope: !1790)
!1839 = !DILocation(line: 428, column: 26, scope: !1790)
!1840 = !DILocation(line: 429, column: 26, scope: !1790)
!1841 = !DILocation(line: 430, column: 44, scope: !1790)
!1842 = !DILocation(line: 450, column: 78, scope: !1756)
!1843 = !DILocation(line: 451, column: 78, scope: !1756)
!1844 = !DILocation(line: 431, column: 3, scope: !1790)
!1845 = !DILocation(line: 434, column: 12, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 433, column: 3)
!1847 = !DILocation(line: 434, column: 37, scope: !1846)
!1848 = !DILocation(line: 435, column: 5, scope: !1846)
!1849 = !DILocation(line: 435, column: 34, scope: !1846)
!1850 = !DILocation(line: 436, column: 5, scope: !1846)
!1851 = !DILocation(line: 436, column: 34, scope: !1846)
!1852 = !DILocation(line: 437, column: 12, scope: !1846)
!1853 = !DILocation(line: 440, column: 5, scope: !1846)
!1854 = !DILocation(line: 442, column: 12, scope: !1846)
!1855 = !DILocation(line: 442, column: 26, scope: !1846)
!1856 = !DILocation(line: 443, column: 12, scope: !1846)
!1857 = !DILocation(line: 443, column: 26, scope: !1846)
!1858 = !DILocation(line: 437, column: 26, scope: !1846)
!1859 = !DILocation(line: 440, column: 26, scope: !1846)
!1860 = !DILocation(line: 451, column: 57, scope: !1756)
!1861 = !DILocation(line: 450, column: 57, scope: !1756)
!1862 = !DILocation(line: 0, scope: !1786)
!1863 = !DILocation(line: 449, column: 37, scope: !1756)
!1864 = !DILocation(line: 449, column: 30, scope: !1756)
!1865 = !DILocation(line: 449, column: 55, scope: !1756)
!1866 = !DILocation(line: 449, column: 28, scope: !1756)
!1867 = !DILocation(line: 450, column: 30, scope: !1756)
!1868 = !DILocation(line: 450, column: 55, scope: !1756)
!1869 = !DILocation(line: 450, column: 3, scope: !1756)
!1870 = !DILocation(line: 450, column: 28, scope: !1756)
!1871 = !DILocation(line: 451, column: 30, scope: !1756)
!1872 = !DILocation(line: 451, column: 55, scope: !1756)
!1873 = !DILocation(line: 451, column: 3, scope: !1756)
!1874 = !DILocation(line: 451, column: 28, scope: !1756)
!1875 = !DILocation(line: 453, column: 61, scope: !1756)
!1876 = !DILocation(line: 453, column: 39, scope: !1756)
!1877 = !DILocation(line: 453, column: 32, scope: !1756)
!1878 = !DILocation(line: 453, column: 59, scope: !1756)
!1879 = !DILocation(line: 453, column: 30, scope: !1756)
!1880 = !DILocation(line: 454, column: 74, scope: !1756)
!1881 = !DILocation(line: 454, column: 61, scope: !1756)
!1882 = !DILocation(line: 454, column: 32, scope: !1756)
!1883 = !DILocation(line: 454, column: 59, scope: !1756)
!1884 = !DILocation(line: 454, column: 3, scope: !1756)
!1885 = !DILocation(line: 454, column: 30, scope: !1756)
!1886 = !DILocation(line: 455, column: 74, scope: !1756)
!1887 = !DILocation(line: 455, column: 61, scope: !1756)
!1888 = !DILocation(line: 455, column: 32, scope: !1756)
!1889 = !DILocation(line: 455, column: 59, scope: !1756)
!1890 = !DILocation(line: 455, column: 3, scope: !1756)
!1891 = !DILocation(line: 455, column: 30, scope: !1756)
!1892 = !DILocation(line: 456, column: 1, scope: !1756)
!1893 = !DISubprogram(name: "CeilLog2_sf", scope: !108, file: !108, line: 956, type: !1894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!37, !37}
!1896 = distinct !DISubprogram(name: "AllocPartition", scope: !2, file: !2, line: 645, type: !1897, scopeLine: 646, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1899)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!106, !13}
!1899 = !{!1900, !1901, !1902, !1903}
!1900 = !DILocalVariable(name: "n", arg: 1, scope: !1896, file: !2, line: 645, type: !13)
!1901 = !DILocalVariable(name: "partArr", scope: !1896, file: !2, line: 647, type: !106)
!1902 = !DILocalVariable(name: "dataPart", scope: !1896, file: !2, line: 647, type: !106)
!1903 = !DILocalVariable(name: "i", scope: !1896, file: !2, line: 648, type: !13)
!1904 = !DILocation(line: 0, scope: !1896)
!1905 = !DILocation(line: 650, column: 38, scope: !1896)
!1906 = !DILocation(line: 650, column: 31, scope: !1896)
!1907 = !DILocation(line: 651, column: 15, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1896, file: !2, line: 651, column: 7)
!1909 = !DILocation(line: 651, column: 7, scope: !1896)
!1910 = !DILocation(line: 657, column: 14, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !2, line: 657, column: 3)
!1912 = distinct !DILexicalBlock(scope: !1896, file: !2, line: 657, column: 3)
!1913 = !DILocation(line: 657, column: 3, scope: !1912)
!1914 = !DILocation(line: 653, column: 5, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1908, file: !2, line: 652, column: 3)
!1916 = !DILocation(line: 0, scope: !1711, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 654, column: 5, scope: !1915)
!1918 = !DILocation(line: 100, column: 11, scope: !1711, inlinedAt: !1917)
!1919 = !DILocation(line: 100, column: 3, scope: !1711, inlinedAt: !1917)
!1920 = !DILocation(line: 108, column: 3, scope: !1711, inlinedAt: !1917)
!1921 = !DILocation(line: 657, column: 18, scope: !1911)
!1922 = distinct !{!1922, !1913, !1923}
!1923 = !DILocation(line: 672, column: 3, scope: !1912)
!1924 = !DILocation(line: 659, column: 18, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1911, file: !2, line: 658, column: 3)
!1926 = !DILocation(line: 660, column: 41, scope: !1925)
!1927 = !DILocation(line: 660, column: 25, scope: !1925)
!1928 = !DILocation(line: 661, column: 29, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1925, file: !2, line: 661, column: 9)
!1930 = !DILocation(line: 661, column: 9, scope: !1925)
!1931 = !DILocation(line: 663, column: 7, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1929, file: !2, line: 662, column: 5)
!1933 = !DILocation(line: 0, scope: !1711, inlinedAt: !1934)
!1934 = distinct !DILocation(line: 664, column: 7, scope: !1932)
!1935 = !DILocation(line: 100, column: 11, scope: !1711, inlinedAt: !1934)
!1936 = !DILocation(line: 100, column: 3, scope: !1711, inlinedAt: !1934)
!1937 = !DILocation(line: 108, column: 3, scope: !1711, inlinedAt: !1934)
!1938 = !DILocation(line: 666, column: 50, scope: !1925)
!1939 = !DILocation(line: 666, column: 26, scope: !1925)
!1940 = !DILocation(line: 666, column: 39, scope: !1925)
!1941 = !DILocation(line: 667, column: 43, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1925, file: !2, line: 667, column: 9)
!1943 = !DILocation(line: 667, column: 9, scope: !1925)
!1944 = !DILocation(line: 669, column: 7, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1942, file: !2, line: 668, column: 5)
!1946 = !DILocation(line: 0, scope: !1711, inlinedAt: !1947)
!1947 = distinct !DILocation(line: 670, column: 7, scope: !1945)
!1948 = !DILocation(line: 100, column: 11, scope: !1711, inlinedAt: !1947)
!1949 = !DILocation(line: 100, column: 3, scope: !1711, inlinedAt: !1947)
!1950 = !DILocation(line: 108, column: 3, scope: !1711, inlinedAt: !1947)
!1951 = !DILocation(line: 673, column: 3, scope: !1896)
!1952 = !DISubprogram(name: "calloc", scope: !1728, file: !1728, line: 543, type: !1953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!1378, !1436, !1436}
!1955 = !DISubprogram(name: "snprintf", scope: !1722, file: !1722, line: 378, type: !1956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!13, !1958, !1436, !1726, null}
!1958 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !880)
!1959 = distinct !DISubprogram(name: "FreePartition", scope: !2, file: !2, line: 694, type: !1960, scopeLine: 695, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1962)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{null, !106, !13}
!1962 = !{!1963, !1964, !1965}
!1963 = !DILocalVariable(name: "dp", arg: 1, scope: !1959, file: !2, line: 694, type: !106)
!1964 = !DILocalVariable(name: "n", arg: 2, scope: !1959, file: !2, line: 694, type: !13)
!1965 = !DILocalVariable(name: "i", scope: !1959, file: !2, line: 696, type: !13)
!1966 = !DILocation(line: 0, scope: !1959)
!1967 = !DILocation(line: 701, column: 14, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !2, line: 701, column: 3)
!1969 = distinct !DILexicalBlock(scope: !1959, file: !2, line: 701, column: 3)
!1970 = !DILocation(line: 701, column: 3, scope: !1969)
!1971 = !DILocation(line: 703, column: 11, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1968, file: !2, line: 702, column: 3)
!1973 = !DILocation(line: 703, column: 17, scope: !1972)
!1974 = !DILocation(line: 703, column: 28, scope: !1972)
!1975 = !DILocation(line: 703, column: 5, scope: !1972)
!1976 = !DILocation(line: 704, column: 17, scope: !1972)
!1977 = !DILocation(line: 704, column: 5, scope: !1972)
!1978 = !DILocation(line: 701, column: 18, scope: !1968)
!1979 = distinct !{!1979, !1970, !1980}
!1980 = !DILocation(line: 705, column: 3, scope: !1969)
!1981 = !DILocation(line: 706, column: 3, scope: !1959)
!1982 = !DILocation(line: 707, column: 1, scope: !1959)
!1983 = distinct !DISubprogram(name: "malloc_slice", scope: !2, file: !2, line: 720, type: !1984, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1986)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!503, !922, !878}
!1986 = !{!1987, !1988, !1989, !1990, !1991, !1992}
!1987 = !DILocalVariable(name: "p_Inp", arg: 1, scope: !1983, file: !2, line: 720, type: !922)
!1988 = !DILocalVariable(name: "p_Vid", arg: 2, scope: !1983, file: !2, line: 720, type: !878)
!1989 = !DILocalVariable(name: "i", scope: !1983, file: !2, line: 722, type: !13)
!1990 = !DILocalVariable(name: "j", scope: !1983, file: !2, line: 722, type: !13)
!1991 = !DILocalVariable(name: "memory_size", scope: !1983, file: !2, line: 722, type: !13)
!1992 = !DILocalVariable(name: "currSlice", scope: !1983, file: !2, line: 723, type: !503)
!1993 = !DILocation(line: 0, scope: !1983)
!1994 = !DILocation(line: 725, column: 25, scope: !1983)
!1995 = !DILocation(line: 726, column: 19, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1983, file: !2, line: 726, column: 8)
!1997 = !DILocation(line: 726, column: 8, scope: !1983)
!1998 = !DILocation(line: 728, column: 105, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1996, file: !2, line: 727, column: 3)
!2000 = !DILocation(line: 728, column: 5, scope: !1999)
!2001 = !DILocation(line: 0, scope: !1711, inlinedAt: !2002)
!2002 = distinct !DILocation(line: 729, column: 5, scope: !1999)
!2003 = !DILocation(line: 100, column: 11, scope: !1711, inlinedAt: !2002)
!2004 = !DILocation(line: 100, column: 3, scope: !1711, inlinedAt: !2002)
!2005 = !DILocation(line: 108, column: 3, scope: !1711, inlinedAt: !2002)
!2006 = !DILocation(line: 733, column: 24, scope: !1983)
!2007 = !DILocation(line: 733, column: 14, scope: !1983)
!2008 = !DILocation(line: 733, column: 22, scope: !1983)
!2009 = !DILocation(line: 734, column: 24, scope: !1983)
!2010 = !DILocation(line: 734, column: 14, scope: !1983)
!2011 = !DILocation(line: 734, column: 22, scope: !1983)
!2012 = !DILocation(line: 736, column: 14, scope: !1983)
!2013 = !DILocation(line: 736, column: 26, scope: !1983)
!2014 = !DILocation(line: 737, column: 24, scope: !1983)
!2015 = !DILocation(line: 737, column: 14, scope: !1983)
!2016 = !DILocation(line: 737, column: 22, scope: !1983)
!2017 = !DILocation(line: 739, column: 44, scope: !1983)
!2018 = !DILocation(line: 739, column: 18, scope: !1983)
!2019 = !DILocation(line: 740, column: 44, scope: !1983)
!2020 = !DILocation(line: 740, column: 18, scope: !1983)
!2021 = !DILocation(line: 741, column: 44, scope: !1983)
!2022 = !DILocation(line: 741, column: 18, scope: !1983)
!2023 = !DILocation(line: 743, column: 44, scope: !1983)
!2024 = !DILocation(line: 743, column: 18, scope: !1983)
!2025 = !DILocation(line: 744, column: 44, scope: !1983)
!2026 = !DILocation(line: 744, column: 18, scope: !1983)
!2027 = !DILocation(line: 745, column: 44, scope: !1983)
!2028 = !DILocation(line: 745, column: 18, scope: !1983)
!2029 = !DILocation(line: 746, column: 44, scope: !1983)
!2030 = !DILocation(line: 746, column: 18, scope: !1983)
!2031 = !DILocation(line: 749, column: 3, scope: !1983)
!2032 = !DILocation(line: 752, column: 14, scope: !1983)
!2033 = !DILocation(line: 752, column: 22, scope: !1983)
!2034 = !DILocation(line: 753, column: 14, scope: !1983)
!2035 = !DILocation(line: 753, column: 30, scope: !1983)
!2036 = !DILocation(line: 754, column: 14, scope: !1983)
!2037 = !DILocation(line: 754, column: 30, scope: !1983)
!2038 = !DILocation(line: 759, column: 28, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !2, line: 758, column: 3)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !2, line: 757, column: 3)
!2041 = distinct !DILexicalBlock(scope: !1983, file: !2, line: 757, column: 3)
!2042 = !DILocation(line: 759, column: 5, scope: !2039)
!2043 = !DILocation(line: 763, column: 27, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !2, line: 762, column: 3)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !2, line: 761, column: 3)
!2046 = distinct !DILexicalBlock(scope: !1983, file: !2, line: 761, column: 3)
!2047 = !DILocation(line: 763, column: 25, scope: !2044)
!2048 = !DILocation(line: 764, column: 13, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2044, file: !2, line: 764, column: 9)
!2050 = !DILocation(line: 764, column: 9, scope: !2044)
!2051 = !DILocation(line: 765, column: 7, scope: !2049)
!2052 = !DILocation(line: 763, column: 5, scope: !2044)
!2053 = !DILocation(line: 767, column: 3, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !1983, file: !2, line: 767, column: 3)
!2055 = !DILocation(line: 771, column: 7, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !2, line: 770, column: 5)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !2, line: 769, column: 5)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !2, line: 769, column: 5)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !2, line: 768, column: 3)
!2060 = distinct !DILexicalBlock(scope: !2054, file: !2, line: 767, column: 3)
!2061 = !DILocation(line: 771, column: 30, scope: !2056)
!2062 = !DILocation(line: 773, column: 5, scope: !2059)
!2063 = !DILocation(line: 773, column: 28, scope: !2059)
!2064 = !DILocation(line: 767, column: 23, scope: !2060)
!2065 = !DILocation(line: 767, column: 17, scope: !2060)
!2066 = distinct !{!2066, !2053, !2067}
!2067 = !DILocation(line: 774, column: 3, scope: !2054)
!2068 = !DILocation(line: 776, column: 3, scope: !1983)
!2069 = !DISubprogram(name: "create_contexts_MotionInfo", scope: !2070, file: !2070, line: 24, type: !2071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2070 = !DIFile(filename: "ldecod_src/inc/cabac.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "614ec2d2e454a50d0f312606889331d5")
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!1102}
!2073 = !DISubprogram(name: "create_contexts_TextureInfo", scope: !2070, file: !2070, line: 25, type: !2074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!1130}
!2076 = !DISubprogram(name: "get_mem3Dint", scope: !2077, file: !2077, line: 55, type: !2078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2077 = !DIFile(filename: "ldecod_src/inc/memalloc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "88776e97a131c37d03036121c7c9e0ac")
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!13, !1222, !13, !13, !13}
!2080 = !DISubprogram(name: "get_mem4Dint", scope: !2077, file: !2077, line: 57, type: !2081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!13, !2083, !13, !13, !13, !13}
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!2084 = !DISubprogram(name: "get_mem3Dpel", scope: !2077, file: !2077, line: 80, type: !2085, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!13, !2087, !13, !13, !13}
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!2088 = !DISubprogram(name: "allocate_pred_mem", scope: !2089, file: !2089, line: 23, type: !2090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2089 = !DIFile(filename: "ldecod_src/inc/mc_prediction.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "b29b7430ebaae75df281117d292611ae")
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!13, !503}
!2092 = !DISubprogram(name: "no_mem_exit", scope: !2077, file: !2077, line: 180, type: !2093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{null, !880}
!2095 = distinct !DISubprogram(name: "init_global_buffers", scope: !2, file: !2, line: 847, type: !2096, scopeLine: 848, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2098)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!13, !878}
!2098 = !{!2099, !2100, !2101}
!2099 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !2095, file: !2, line: 847, type: !878)
!2100 = !DILocalVariable(name: "memory_size", scope: !2095, file: !2, line: 849, type: !13)
!2101 = !DILocalVariable(name: "i", scope: !2095, file: !2, line: 850, type: !13)
!2102 = !DILocation(line: 0, scope: !2095)
!2103 = !DILocation(line: 852, column: 14, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2095, file: !2, line: 852, column: 7)
!2105 = !DILocation(line: 852, column: 7, scope: !2104)
!2106 = !DILocation(line: 852, column: 7, scope: !2095)
!2107 = !DILocation(line: 854, column: 5, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2104, file: !2, line: 853, column: 3)
!2109 = !DILocation(line: 855, column: 3, scope: !2108)
!2110 = !DILocation(line: 858, column: 39, scope: !2095)
!2111 = !DILocation(line: 858, column: 56, scope: !2095)
!2112 = !DILocation(line: 858, column: 71, scope: !2095)
!2113 = !DILocation(line: 858, column: 18, scope: !2095)
!2114 = !DILocation(line: 860, column: 14, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2095, file: !2, line: 860, column: 7)
!2116 = !DILocation(line: 860, column: 26, scope: !2115)
!2117 = !DILocation(line: 860, column: 44, scope: !2115)
!2118 = !DILocation(line: 0, scope: !2115)
!2119 = !DILocation(line: 860, column: 7, scope: !2095)
!2120 = !DILocation(line: 861, column: 62, scope: !2115)
!2121 = !DILocation(line: 861, column: 80, scope: !2115)
!2122 = !DILocation(line: 861, column: 20, scope: !2115)
!2123 = !DILocation(line: 861, column: 17, scope: !2115)
!2124 = !DILocation(line: 861, column: 5, scope: !2115)
!2125 = !DILocation(line: 863, column: 21, scope: !2115)
!2126 = !DILocation(line: 866, column: 15, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2095, file: !2, line: 866, column: 7)
!2128 = !DILocation(line: 866, column: 42, scope: !2127)
!2129 = !DILocation(line: 866, column: 7, scope: !2095)
!2130 = !DILocation(line: 870, column: 65, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !2, line: 870, column: 10)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !2, line: 869, column: 5)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !2, line: 868, column: 5)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !2, line: 868, column: 5)
!2135 = distinct !DILexicalBlock(scope: !2127, file: !2, line: 867, column: 3)
!2136 = !DILocation(line: 870, column: 58, scope: !2131)
!2137 = !DILocation(line: 870, column: 51, scope: !2131)
!2138 = !DILocation(line: 870, column: 34, scope: !2131)
!2139 = !DILocation(line: 870, column: 102, scope: !2131)
!2140 = !DILocation(line: 870, column: 10, scope: !2132)
!2141 = !DILocation(line: 871, column: 9, scope: !2131)
!2142 = !DILocation(line: 870, column: 12, scope: !2131)
!2143 = !DILocation(line: 873, column: 12, scope: !2135)
!2144 = !DILocation(line: 873, column: 20, scope: !2135)
!2145 = !DILocation(line: 874, column: 3, scope: !2135)
!2146 = !DILocation(line: 877, column: 57, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !2, line: 877, column: 8)
!2148 = distinct !DILexicalBlock(scope: !2127, file: !2, line: 876, column: 3)
!2149 = !DILocation(line: 877, column: 50, scope: !2147)
!2150 = !DILocation(line: 877, column: 43, scope: !2147)
!2151 = !DILocation(line: 877, column: 17, scope: !2147)
!2152 = !DILocation(line: 877, column: 26, scope: !2147)
!2153 = !DILocation(line: 877, column: 94, scope: !2147)
!2154 = !DILocation(line: 877, column: 8, scope: !2148)
!2155 = !DILocation(line: 878, column: 7, scope: !2147)
!2156 = !DILocation(line: 880, column: 15, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2095, file: !2, line: 880, column: 7)
!2158 = !DILocation(line: 880, column: 42, scope: !2157)
!2159 = !DILocation(line: 880, column: 7, scope: !2095)
!2160 = !DILocation(line: 884, column: 69, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !2, line: 884, column: 10)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !2, line: 883, column: 5)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !2, line: 882, column: 5)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 882, column: 5)
!2165 = distinct !DILexicalBlock(scope: !2157, file: !2, line: 881, column: 3)
!2166 = !DILocation(line: 884, column: 62, scope: !2161)
!2167 = !DILocation(line: 884, column: 55, scope: !2161)
!2168 = !DILocation(line: 884, column: 38, scope: !2161)
!2169 = !DILocation(line: 884, column: 107, scope: !2161)
!2170 = !DILocation(line: 884, column: 10, scope: !2162)
!2171 = !DILocation(line: 885, column: 9, scope: !2161)
!2172 = !DILocation(line: 884, column: 12, scope: !2161)
!2173 = !DILocation(line: 887, column: 12, scope: !2165)
!2174 = !DILocation(line: 887, column: 24, scope: !2165)
!2175 = !DILocation(line: 888, column: 3, scope: !2165)
!2176 = !DILocation(line: 891, column: 61, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !2, line: 891, column: 8)
!2178 = distinct !DILexicalBlock(scope: !2157, file: !2, line: 890, column: 3)
!2179 = !DILocation(line: 891, column: 54, scope: !2177)
!2180 = !DILocation(line: 891, column: 47, scope: !2177)
!2181 = !DILocation(line: 891, column: 17, scope: !2177)
!2182 = !DILocation(line: 891, column: 30, scope: !2177)
!2183 = !DILocation(line: 891, column: 99, scope: !2177)
!2184 = !DILocation(line: 891, column: 8, scope: !2178)
!2185 = !DILocation(line: 892, column: 7, scope: !2177)
!2186 = !DILocation(line: 897, column: 44, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2095, file: !2, line: 897, column: 6)
!2188 = !DILocation(line: 897, column: 59, scope: !2187)
!2189 = !DILocation(line: 897, column: 37, scope: !2187)
!2190 = !DILocation(line: 897, column: 30, scope: !2187)
!2191 = !DILocation(line: 897, column: 16, scope: !2187)
!2192 = !DILocation(line: 897, column: 83, scope: !2187)
!2193 = !DILocation(line: 897, column: 6, scope: !2095)
!2194 = !DILocation(line: 898, column: 5, scope: !2187)
!2195 = !DILocation(line: 901, column: 32, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !2, line: 901, column: 3)
!2197 = distinct !DILexicalBlock(scope: !2095, file: !2, line: 901, column: 3)
!2198 = !DILocation(line: 901, column: 17, scope: !2196)
!2199 = !DILocation(line: 901, column: 3, scope: !2197)
!2200 = !DILocation(line: 903, column: 39, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2196, file: !2, line: 902, column: 3)
!2202 = !DILocation(line: 903, column: 30, scope: !2201)
!2203 = !DILocation(line: 903, column: 19, scope: !2201)
!2204 = !DILocation(line: 903, column: 5, scope: !2201)
!2205 = !DILocation(line: 903, column: 17, scope: !2201)
!2206 = !DILocation(line: 904, column: 39, scope: !2201)
!2207 = !DILocation(line: 904, column: 30, scope: !2201)
!2208 = !DILocation(line: 904, column: 19, scope: !2201)
!2209 = !DILocation(line: 904, column: 5, scope: !2201)
!2210 = !DILocation(line: 904, column: 15, scope: !2201)
!2211 = !DILocation(line: 904, column: 17, scope: !2201)
!2212 = !DILocation(line: 901, column: 51, scope: !2196)
!2213 = distinct !{!2213, !2199, !2214}
!2214 = !DILocation(line: 905, column: 3, scope: !2197)
!2215 = !DILocation(line: 907, column: 15, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2095, file: !2, line: 907, column: 7)
!2217 = !DILocation(line: 907, column: 42, scope: !2216)
!2218 = !DILocation(line: 907, column: 7, scope: !2095)
!2219 = !DILocation(line: 911, column: 53, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !2, line: 910, column: 5)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !2, line: 909, column: 5)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !2, line: 909, column: 5)
!2223 = distinct !DILexicalBlock(scope: !2216, file: !2, line: 908, column: 3)
!2224 = !DILocation(line: 911, column: 45, scope: !2220)
!2225 = !DILocation(line: 911, column: 80, scope: !2220)
!2226 = !DILocation(line: 911, column: 72, scope: !2220)
!2227 = !DILocation(line: 911, column: 7, scope: !2220)
!2228 = !DILocation(line: 911, column: 19, scope: !2220)
!2229 = !DILocation(line: 913, column: 12, scope: !2223)
!2230 = !DILocation(line: 913, column: 22, scope: !2223)
!2231 = !DILocation(line: 914, column: 3, scope: !2223)
!2232 = !DILocation(line: 916, column: 38, scope: !2216)
!2233 = !DILocation(line: 916, column: 59, scope: !2216)
!2234 = !DILocation(line: 916, column: 51, scope: !2216)
!2235 = !DILocation(line: 916, column: 86, scope: !2216)
!2236 = !DILocation(line: 916, column: 78, scope: !2216)
!2237 = !DILocation(line: 916, column: 19, scope: !2216)
!2238 = !DILocation(line: 916, column: 16, scope: !2216)
!2239 = !DILocation(line: 919, column: 37, scope: !2095)
!2240 = !DILocation(line: 919, column: 55, scope: !2095)
!2241 = !DILocation(line: 919, column: 18, scope: !2095)
!2242 = !DILocation(line: 919, column: 15, scope: !2095)
!2243 = !DILocation(line: 920, column: 15, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2095, file: !2, line: 920, column: 7)
!2245 = !DILocation(line: 920, column: 42, scope: !2244)
!2246 = !DILocation(line: 920, column: 7, scope: !2095)
!2247 = !DILocation(line: 924, column: 52, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 923, column: 5)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !2, line: 922, column: 5)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !2, line: 922, column: 5)
!2251 = distinct !DILexicalBlock(scope: !2244, file: !2, line: 921, column: 3)
!2252 = !DILocation(line: 924, column: 77, scope: !2248)
!2253 = !DILocation(line: 924, column: 7, scope: !2248)
!2254 = !DILocation(line: 925, column: 10, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2248, file: !2, line: 925, column: 10)
!2256 = !DILocation(line: 925, column: 30, scope: !2255)
!2257 = !DILocation(line: 925, column: 10, scope: !2248)
!2258 = !DILocation(line: 926, column: 9, scope: !2255)
!2259 = !DILocation(line: 924, column: 22, scope: !2248)
!2260 = !DILocation(line: 928, column: 12, scope: !2251)
!2261 = !DILocation(line: 928, column: 20, scope: !2251)
!2262 = !DILocation(line: 929, column: 3, scope: !2251)
!2263 = !DILocation(line: 932, column: 42, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2244, file: !2, line: 931, column: 3)
!2265 = !DILocation(line: 932, column: 59, scope: !2264)
!2266 = !DILocation(line: 932, column: 84, scope: !2264)
!2267 = !DILocation(line: 932, column: 20, scope: !2264)
!2268 = !DILocation(line: 932, column: 17, scope: !2264)
!2269 = !DILocation(line: 934, column: 3, scope: !2095)
!2270 = !DILocation(line: 936, column: 27, scope: !2095)
!2271 = !DILocation(line: 938, column: 37, scope: !2095)
!2272 = !DILocation(line: 938, column: 10, scope: !2095)
!2273 = !DILocation(line: 938, column: 28, scope: !2095)
!2274 = !DILocation(line: 939, column: 3, scope: !2095)
!2275 = distinct !DISubprogram(name: "free_global_buffers", scope: !2, file: !2, line: 957, type: !883, scopeLine: 958, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2276)
!2276 = !{!2277, !2278}
!2277 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !2275, file: !2, line: 957, type: !878)
!2278 = !DILocalVariable(name: "i", scope: !2279, file: !2, line: 970, type: !13)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !2, line: 969, column: 3)
!2280 = distinct !DILexicalBlock(scope: !2275, file: !2, line: 968, column: 7)
!2281 = !DILocation(line: 0, scope: !2275)
!2282 = !DILocation(line: 959, column: 25, scope: !2275)
!2283 = !DILocation(line: 959, column: 3, scope: !2275)
!2284 = !DILocation(line: 961, column: 14, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2275, file: !2, line: 961, column: 7)
!2286 = !DILocation(line: 961, column: 7, scope: !2285)
!2287 = !DILocation(line: 961, column: 7, scope: !2275)
!2288 = !DILocation(line: 962, column: 5, scope: !2285)
!2289 = !DILocation(line: 965, column: 21, scope: !2275)
!2290 = !DILocation(line: 965, column: 3, scope: !2275)
!2291 = !DILocation(line: 968, column: 15, scope: !2280)
!2292 = !DILocation(line: 968, column: 42, scope: !2280)
!2293 = !DILocation(line: 968, column: 7, scope: !2275)
!2294 = !DILocation(line: 0, scope: !2279)
!2295 = !DILocation(line: 973, column: 12, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !2, line: 972, column: 5)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !2, line: 971, column: 5)
!2298 = distinct !DILexicalBlock(scope: !2279, file: !2, line: 971, column: 5)
!2299 = !DILocation(line: 973, column: 7, scope: !2296)
!2300 = !DILocation(line: 974, column: 28, scope: !2296)
!2301 = !DILocation(line: 975, column: 21, scope: !2296)
!2302 = !DILocation(line: 975, column: 7, scope: !2296)
!2303 = !DILocation(line: 976, column: 28, scope: !2296)
!2304 = !DILocation(line: 977, column: 18, scope: !2296)
!2305 = !DILocation(line: 977, column: 7, scope: !2296)
!2306 = !DILocation(line: 978, column: 30, scope: !2296)
!2307 = !DILocation(line: 979, column: 13, scope: !2296)
!2308 = !DILocation(line: 979, column: 7, scope: !2296)
!2309 = !DILocation(line: 980, column: 32, scope: !2296)
!2310 = !DILocation(line: 1006, column: 6, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2275, file: !2, line: 1006, column: 6)
!2312 = !DILocation(line: 985, column: 16, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !2, line: 985, column: 9)
!2314 = distinct !DILexicalBlock(scope: !2280, file: !2, line: 984, column: 3)
!2315 = !DILocation(line: 985, column: 24, scope: !2313)
!2316 = !DILocation(line: 985, column: 9, scope: !2314)
!2317 = !DILocation(line: 987, column: 7, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2313, file: !2, line: 986, column: 5)
!2319 = !DILocation(line: 988, column: 22, scope: !2318)
!2320 = !DILocation(line: 989, column: 5, scope: !2318)
!2321 = !DILocation(line: 990, column: 15, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2314, file: !2, line: 990, column: 8)
!2323 = !DILocation(line: 990, column: 8, scope: !2322)
!2324 = !DILocation(line: 990, column: 8, scope: !2314)
!2325 = !DILocation(line: 992, column: 7, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2322, file: !2, line: 991, column: 5)
!2327 = !DILocation(line: 993, column: 22, scope: !2326)
!2328 = !DILocation(line: 994, column: 5, scope: !2326)
!2329 = !DILocation(line: 995, column: 15, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2314, file: !2, line: 995, column: 8)
!2331 = !DILocation(line: 995, column: 8, scope: !2330)
!2332 = !DILocation(line: 995, column: 8, scope: !2314)
!2333 = !DILocation(line: 997, column: 7, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2330, file: !2, line: 996, column: 5)
!2335 = !DILocation(line: 998, column: 24, scope: !2334)
!2336 = !DILocation(line: 999, column: 5, scope: !2334)
!2337 = !DILocation(line: 1000, column: 15, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2314, file: !2, line: 1000, column: 8)
!2339 = !DILocation(line: 1000, column: 8, scope: !2338)
!2340 = !DILocation(line: 1000, column: 8, scope: !2314)
!2341 = !DILocation(line: 1002, column: 7, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2338, file: !2, line: 1001, column: 5)
!2343 = !DILocation(line: 1004, column: 5, scope: !2342)
!2344 = !DILocation(line: 0, scope: !2280)
!2345 = !DILocation(line: 1006, column: 6, scope: !2275)
!2346 = !DILocation(line: 1008, column: 5, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2311, file: !2, line: 1007, column: 3)
!2348 = !DILocation(line: 1009, column: 11, scope: !2347)
!2349 = !DILocation(line: 1010, column: 3, scope: !2347)
!2350 = !DILocation(line: 1012, column: 3, scope: !2275)
!2351 = !DILocation(line: 1014, column: 10, scope: !2275)
!2352 = !DILocation(line: 1014, column: 27, scope: !2275)
!2353 = !DILocation(line: 1015, column: 1, scope: !2275)
!2354 = !DISubprogram(name: "get_mem2Dpel", scope: !2077, file: !2077, line: 77, type: !2355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!13, !581, !13, !13}
!2357 = !DISubprogram(name: "get_mem2D", scope: !2077, file: !2077, line: 47, type: !2358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!13, !519, !13, !13}
!2360 = !DISubprogram(name: "get_mem4D", scope: !2077, file: !2077, line: 49, type: !2361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!13, !2363, !13, !13, !13, !13}
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!2364 = !DISubprogram(name: "get_mem2Dint", scope: !2077, file: !2077, line: 52, type: !2365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!13, !421, !13, !13}
!2367 = !DISubprogram(name: "init_qp_process", scope: !2368, file: !2368, line: 160, type: !883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2368 = !DIFile(filename: "ldecod_src/inc/quant.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1cab853af0b7d1def614506434d35908")
!2369 = !DISubprogram(name: "free_mem2Dpel", scope: !2077, file: !2077, line: 157, type: !2370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{null, !576}
!2372 = !DISubprogram(name: "free_mem3Dpel", scope: !2077, file: !2077, line: 159, type: !2373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{null, !581}
!2375 = !DISubprogram(name: "free_mem4D", scope: !2077, file: !2077, line: 130, type: !2376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{null, !518}
!2378 = !DISubprogram(name: "free_mem2Dint", scope: !2077, file: !2077, line: 132, type: !2379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{null, !408}
!2381 = !DISubprogram(name: "free_mem2D", scope: !2077, file: !2077, line: 128, type: !2382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{null, !514}
!2384 = !DISubprogram(name: "free_qp_matrices", scope: !2368, file: !2368, line: 161, type: !883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2385 = distinct !DISubprogram(name: "report_stats_on_error", scope: !2, file: !2, line: 1017, type: !2386, scopeLine: 1018, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{null}
!2388 = !DILocation(line: 1020, column: 3, scope: !2385)
!2389 = distinct !DISubprogram(name: "ClearDecPicList", scope: !2, file: !2, line: 1023, type: !883, scopeLine: 1024, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2390)
!2390 = !{!2391, !2392, !2393, !2394}
!2391 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !2389, file: !2, line: 1023, type: !878)
!2392 = !DILocalVariable(name: "pPic", scope: !2389, file: !2, line: 1025, type: !1011)
!2393 = !DILocalVariable(name: "pPrior", scope: !2389, file: !2, line: 1025, type: !1011)
!2394 = !DILocalVariable(name: "pPicTail", scope: !2395, file: !2, line: 1036, type: !1011)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !2, line: 1034, column: 3)
!2396 = distinct !DILexicalBlock(scope: !2389, file: !2, line: 1033, column: 6)
!2397 = !DILocation(line: 0, scope: !2389)
!2398 = !DILocation(line: 1025, column: 33, scope: !2389)
!2399 = !DILocation(line: 1027, column: 9, scope: !2389)
!2400 = !DILocation(line: 1027, column: 14, scope: !2389)
!2401 = !DILocation(line: 1027, column: 24, scope: !2389)
!2402 = !DILocation(line: 1027, column: 17, scope: !2389)
!2403 = !DILocation(line: 1027, column: 3, scope: !2389)
!2404 = distinct !{!2404, !2403, !2405}
!2405 = !DILocation(line: 1031, column: 3, scope: !2389)
!2406 = !DILocation(line: 1030, column: 18, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2389, file: !2, line: 1028, column: 3)
!2408 = !DILocation(line: 1033, column: 20, scope: !2396)
!2409 = !DILocation(line: 1033, column: 6, scope: !2389)
!2410 = !DILocation(line: 0, scope: !2395)
!2411 = !DILocation(line: 1037, column: 21, scope: !2395)
!2412 = !DILocation(line: 1037, column: 5, scope: !2395)
!2413 = distinct !{!2413, !2412, !2414}
!2414 = !DILocation(line: 1038, column: 28, scope: !2395)
!2415 = !DILocation(line: 1040, column: 21, scope: !2395)
!2416 = !DILocation(line: 1041, column: 25, scope: !2395)
!2417 = !DILocation(line: 1042, column: 13, scope: !2395)
!2418 = !DILocation(line: 1042, column: 19, scope: !2395)
!2419 = !DILocation(line: 1043, column: 3, scope: !2395)
!2420 = !DILocation(line: 1044, column: 1, scope: !2389)
!2421 = distinct !DISubprogram(name: "GetOneAvailDecPicFromList", scope: !2, file: !2, line: 1046, type: !2422, scopeLine: 1047, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2424)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!1011, !1011, !13}
!2424 = !{!2425, !2426, !2427, !2428}
!2425 = !DILocalVariable(name: "pDecPicList", arg: 1, scope: !2421, file: !2, line: 1046, type: !1011)
!2426 = !DILocalVariable(name: "b3D", arg: 2, scope: !2421, file: !2, line: 1046, type: !13)
!2427 = !DILocalVariable(name: "pPic", scope: !2421, file: !2, line: 1048, type: !1011)
!2428 = !DILocalVariable(name: "pPrior", scope: !2421, file: !2, line: 1048, type: !1011)
!2429 = !DILocation(line: 0, scope: !2421)
!2430 = !DILocation(line: 1049, column: 6, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2421, file: !2, line: 1049, column: 6)
!2432 = !DILocation(line: 0, scope: !2431)
!2433 = !DILocation(line: 1049, column: 6, scope: !2421)
!2434 = !DILocation(line: 1051, column: 25, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2431, file: !2, line: 1050, column: 3)
!2436 = !DILocation(line: 1051, column: 31, scope: !2435)
!2437 = !DILocation(line: 1051, column: 4, scope: !2435)
!2438 = !DILocation(line: 1054, column: 18, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2435, file: !2, line: 1052, column: 4)
!2440 = !DILocation(line: 1051, column: 10, scope: !2435)
!2441 = !DILocation(line: 1051, column: 15, scope: !2435)
!2442 = distinct !{!2442, !2437, !2443}
!2443 = !DILocation(line: 1055, column: 4, scope: !2435)
!2444 = !DILocation(line: 1059, column: 25, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2431, file: !2, line: 1058, column: 3)
!2446 = !DILocation(line: 1059, column: 15, scope: !2445)
!2447 = !DILocation(line: 1059, column: 4, scope: !2445)
!2448 = !DILocation(line: 1062, column: 18, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2445, file: !2, line: 1060, column: 4)
!2450 = !DILocation(line: 1059, column: 10, scope: !2445)
!2451 = distinct !{!2451, !2447, !2452}
!2452 = !DILocation(line: 1063, column: 4, scope: !2445)
!2453 = !DILocation(line: 1068, column: 30, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !2, line: 1067, column: 3)
!2455 = distinct !DILexicalBlock(scope: !2421, file: !2, line: 1066, column: 6)
!2456 = !DILocation(line: 1069, column: 13, scope: !2454)
!2457 = !DILocation(line: 1069, column: 19, scope: !2454)
!2458 = !DILocation(line: 1070, column: 3, scope: !2454)
!2459 = !DILocation(line: 1072, column: 3, scope: !2421)
!2460 = distinct !DISubprogram(name: "OpenDecoder", scope: !2, file: !2, line: 1080, type: !2461, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2463)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!13, !922}
!2463 = !{!2464, !2465, !2466, !2467}
!2464 = !DILocalVariable(name: "p_Inp", arg: 1, scope: !2460, file: !2, line: 1080, type: !922)
!2465 = !DILocalVariable(name: "i", scope: !2460, file: !2, line: 1083, type: !13)
!2466 = !DILocalVariable(name: "iRet", scope: !2460, file: !2, line: 1085, type: !13)
!2467 = !DILocalVariable(name: "pDecoder", scope: !2460, file: !2, line: 1086, type: !1380)
!2468 = !DILocation(line: 0, scope: !2460)
!2469 = !DILocalVariable(name: "p_Dec", arg: 1, scope: !2470, file: !2, line: 194, type: !2473)
!2470 = distinct !DISubprogram(name: "alloc_decoder", scope: !2, file: !2, line: 194, type: !2471, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2474)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!13, !2473}
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!2474 = !{!2469}
!2475 = !DILocation(line: 0, scope: !2470, inlinedAt: !2476)
!2476 = distinct !DILocation(line: 1088, column: 10, scope: !2460)
!2477 = !DILocation(line: 196, column: 35, scope: !2478, inlinedAt: !2476)
!2478 = distinct !DILexicalBlock(scope: !2470, file: !2, line: 196, column: 7)
!2479 = !DILocation(line: 196, column: 15, scope: !2478, inlinedAt: !2476)
!2480 = !DILocation(line: 196, column: 68, scope: !2478, inlinedAt: !2476)
!2481 = !DILocation(line: 196, column: 7, scope: !2470, inlinedAt: !2476)
!2482 = !DILocation(line: 202, column: 34, scope: !2470, inlinedAt: !2476)
!2483 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !2484, file: !2, line: 124, type: !2487)
!2484 = distinct !DISubprogram(name: "alloc_video_params", scope: !2, file: !2, line: 124, type: !2485, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2488)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{null, !2487}
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!2488 = !{!2483, !2489}
!2489 = !DILocalVariable(name: "i", scope: !2484, file: !2, line: 126, type: !13)
!2490 = !DILocation(line: 0, scope: !2484, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 202, column: 3, scope: !2470, inlinedAt: !2476)
!2492 = !DILocation(line: 127, column: 40, scope: !2493, inlinedAt: !2491)
!2493 = distinct !DILexicalBlock(scope: !2484, file: !2, line: 127, column: 7)
!2494 = !DILocation(line: 127, column: 17, scope: !2493, inlinedAt: !2491)
!2495 = !DILocation(line: 127, column: 75, scope: !2493, inlinedAt: !2491)
!2496 = !DILocation(line: 127, column: 7, scope: !2484, inlinedAt: !2491)
!2497 = !DILocation(line: 128, column: 5, scope: !2493, inlinedAt: !2491)
!2498 = !DILocation(line: 130, column: 9, scope: !2499, inlinedAt: !2491)
!2499 = distinct !DILexicalBlock(scope: !2484, file: !2, line: 130, column: 7)
!2500 = !DILocation(line: 130, column: 49, scope: !2499, inlinedAt: !2491)
!2501 = !DILocation(line: 130, column: 18, scope: !2499, inlinedAt: !2491)
!2502 = !DILocation(line: 130, column: 28, scope: !2499, inlinedAt: !2491)
!2503 = !DILocation(line: 130, column: 83, scope: !2499, inlinedAt: !2491)
!2504 = !DILocation(line: 130, column: 7, scope: !2484, inlinedAt: !2491)
!2505 = !DILocation(line: 131, column: 5, scope: !2499, inlinedAt: !2491)
!2506 = !DILocation(line: 133, column: 42, scope: !2507, inlinedAt: !2491)
!2507 = distinct !DILexicalBlock(scope: !2484, file: !2, line: 133, column: 7)
!2508 = !DILocation(line: 133, column: 9, scope: !2507, inlinedAt: !2491)
!2509 = !DILocation(line: 133, column: 18, scope: !2507, inlinedAt: !2491)
!2510 = !DILocation(line: 133, column: 22, scope: !2507, inlinedAt: !2491)
!2511 = !DILocation(line: 133, column: 75, scope: !2507, inlinedAt: !2491)
!2512 = !DILocation(line: 133, column: 7, scope: !2484, inlinedAt: !2491)
!2513 = !DILocation(line: 134, column: 5, scope: !2507, inlinedAt: !2491)
!2514 = !DILocation(line: 137, column: 57, scope: !2515, inlinedAt: !2491)
!2515 = distinct !DILexicalBlock(scope: !2484, file: !2, line: 137, column: 7)
!2516 = !DILocation(line: 137, column: 9, scope: !2515, inlinedAt: !2491)
!2517 = !DILocation(line: 137, column: 18, scope: !2515, inlinedAt: !2491)
!2518 = !DILocation(line: 137, column: 31, scope: !2515, inlinedAt: !2491)
!2519 = !DILocation(line: 137, column: 97, scope: !2515, inlinedAt: !2491)
!2520 = !DILocation(line: 137, column: 7, scope: !2484, inlinedAt: !2491)
!2521 = !DILocation(line: 138, column: 5, scope: !2515, inlinedAt: !2491)
!2522 = !DILocation(line: 141, column: 22, scope: !2484, inlinedAt: !2491)
!2523 = !DILocation(line: 141, column: 31, scope: !2484, inlinedAt: !2491)
!2524 = !DILocation(line: 141, column: 13, scope: !2484, inlinedAt: !2491)
!2525 = !DILocation(line: 141, column: 19, scope: !2484, inlinedAt: !2491)
!2526 = !DILocation(line: 142, column: 13, scope: !2484, inlinedAt: !2491)
!2527 = !DILocation(line: 142, column: 31, scope: !2484, inlinedAt: !2491)
!2528 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !2529, file: !2, line: 111, type: !878)
!2529 = distinct !DISubprogram(name: "reset_dpb", scope: !2, file: !2, line: 111, type: !2530, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2532)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{null, !878, !1447}
!2532 = !{!2528, !2533}
!2533 = !DILocalVariable(name: "p_Dpb", arg: 2, scope: !2529, file: !2, line: 111, type: !1447)
!2534 = !DILocation(line: 0, scope: !2529, inlinedAt: !2535)
!2535 = distinct !DILocation(line: 142, column: 3, scope: !2484, inlinedAt: !2491)
!2536 = !DILocation(line: 113, column: 16, scope: !2529, inlinedAt: !2535)
!2537 = !DILocation(line: 114, column: 10, scope: !2529, inlinedAt: !2535)
!2538 = !DILocation(line: 114, column: 20, scope: !2529, inlinedAt: !2535)
!2539 = !DILocation(line: 147, column: 61, scope: !2540, inlinedAt: !2491)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !2, line: 147, column: 9)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !2, line: 146, column: 3)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !2, line: 145, column: 3)
!2543 = distinct !DILexicalBlock(scope: !2484, file: !2, line: 145, column: 3)
!2544 = !DILocation(line: 147, column: 11, scope: !2540, inlinedAt: !2491)
!2545 = !DILocation(line: 147, column: 20, scope: !2540, inlinedAt: !2491)
!2546 = !DILocation(line: 147, column: 35, scope: !2540, inlinedAt: !2491)
!2547 = !DILocation(line: 147, column: 101, scope: !2540, inlinedAt: !2491)
!2548 = !DILocation(line: 147, column: 9, scope: !2541, inlinedAt: !2491)
!2549 = !DILocation(line: 148, column: 7, scope: !2540, inlinedAt: !2491)
!2550 = !DILocation(line: 149, column: 15, scope: !2541, inlinedAt: !2491)
!2551 = !DILocation(line: 149, column: 33, scope: !2541, inlinedAt: !2491)
!2552 = !DILocation(line: 149, column: 23, scope: !2541, inlinedAt: !2491)
!2553 = !DILocation(line: 0, scope: !2529, inlinedAt: !2554)
!2554 = distinct !DILocation(line: 149, column: 5, scope: !2541, inlinedAt: !2491)
!2555 = !DILocation(line: 113, column: 16, scope: !2529, inlinedAt: !2554)
!2556 = !DILocation(line: 114, column: 10, scope: !2529, inlinedAt: !2554)
!2557 = !DILocation(line: 114, column: 20, scope: !2529, inlinedAt: !2554)
!2558 = !DILocation(line: 147, column: 10, scope: !2540, inlinedAt: !2491)
!2559 = !DILocation(line: 152, column: 4, scope: !2484, inlinedAt: !2491)
!2560 = !DILocation(line: 152, column: 13, scope: !2484, inlinedAt: !2491)
!2561 = !DILocation(line: 152, column: 30, scope: !2484, inlinedAt: !2491)
!2562 = !DILocation(line: 155, column: 53, scope: !2563, inlinedAt: !2491)
!2563 = distinct !DILexicalBlock(scope: !2484, file: !2, line: 155, column: 7)
!2564 = !DILocation(line: 155, column: 9, scope: !2563, inlinedAt: !2491)
!2565 = !DILocation(line: 155, column: 18, scope: !2563, inlinedAt: !2491)
!2566 = !DILocation(line: 155, column: 33, scope: !2563, inlinedAt: !2491)
!2567 = !DILocation(line: 155, column: 87, scope: !2563, inlinedAt: !2491)
!2568 = !DILocation(line: 155, column: 7, scope: !2484, inlinedAt: !2491)
!2569 = !DILocation(line: 156, column: 5, scope: !2563, inlinedAt: !2491)
!2570 = !DILocation(line: 159, column: 42, scope: !2571, inlinedAt: !2491)
!2571 = distinct !DILexicalBlock(scope: !2484, file: !2, line: 159, column: 6)
!2572 = !DILocation(line: 159, column: 8, scope: !2571, inlinedAt: !2491)
!2573 = !DILocation(line: 159, column: 17, scope: !2571, inlinedAt: !2491)
!2574 = !DILocation(line: 159, column: 29, scope: !2571, inlinedAt: !2491)
!2575 = !DILocation(line: 159, column: 86, scope: !2571, inlinedAt: !2491)
!2576 = !DILocation(line: 159, column: 6, scope: !2484, inlinedAt: !2491)
!2577 = !DILocation(line: 161, column: 5, scope: !2578, inlinedAt: !2491)
!2578 = distinct !DILexicalBlock(scope: !2571, file: !2, line: 160, column: 3)
!2579 = !DILocation(line: 162, column: 3, scope: !2578, inlinedAt: !2491)
!2580 = !DILocation(line: 163, column: 4, scope: !2484, inlinedAt: !2491)
!2581 = !DILocation(line: 163, column: 13, scope: !2484, inlinedAt: !2491)
!2582 = !DILocation(line: 163, column: 35, scope: !2484, inlinedAt: !2491)
!2583 = !DILocation(line: 165, column: 4, scope: !2484, inlinedAt: !2491)
!2584 = !DILocation(line: 165, column: 13, scope: !2484, inlinedAt: !2491)
!2585 = !DILocation(line: 165, column: 24, scope: !2484, inlinedAt: !2491)
!2586 = !DILocation(line: 166, column: 20, scope: !2484, inlinedAt: !2491)
!2587 = !DILocation(line: 166, column: 4, scope: !2484, inlinedAt: !2491)
!2588 = !DILocation(line: 166, column: 13, scope: !2484, inlinedAt: !2491)
!2589 = !DILocation(line: 166, column: 18, scope: !2484, inlinedAt: !2491)
!2590 = !DILocation(line: 167, column: 46, scope: !2484, inlinedAt: !2491)
!2591 = !DILocation(line: 167, column: 4, scope: !2484, inlinedAt: !2491)
!2592 = !DILocation(line: 167, column: 13, scope: !2484, inlinedAt: !2491)
!2593 = !DILocation(line: 167, column: 26, scope: !2484, inlinedAt: !2491)
!2594 = !DILocation(line: 168, column: 24, scope: !2484, inlinedAt: !2491)
!2595 = !DILocation(line: 168, column: 4, scope: !2484, inlinedAt: !2491)
!2596 = !DILocation(line: 168, column: 13, scope: !2484, inlinedAt: !2491)
!2597 = !DILocation(line: 168, column: 22, scope: !2484, inlinedAt: !2491)
!2598 = !DILocation(line: 203, column: 19, scope: !2470, inlinedAt: !2476)
!2599 = !DILocalVariable(name: "p_Inp", arg: 1, scope: !2600, file: !2, line: 180, type: !2603)
!2600 = distinct !DISubprogram(name: "alloc_params", scope: !2, file: !2, line: 180, type: !2601, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2604)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{null, !2603}
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!2604 = !{!2599}
!2605 = !DILocation(line: 0, scope: !2600, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 203, column: 3, scope: !2470, inlinedAt: !2476)
!2607 = !DILocation(line: 182, column: 37, scope: !2608, inlinedAt: !2606)
!2608 = distinct !DILexicalBlock(scope: !2600, file: !2, line: 182, column: 7)
!2609 = !DILocation(line: 182, column: 15, scope: !2608, inlinedAt: !2606)
!2610 = !DILocation(line: 182, column: 72, scope: !2608, inlinedAt: !2606)
!2611 = !DILocation(line: 182, column: 7, scope: !2600, inlinedAt: !2606)
!2612 = !DILocation(line: 183, column: 5, scope: !2608, inlinedAt: !2606)
!2613 = !DILocation(line: 198, column: 13, scope: !2614, inlinedAt: !2476)
!2614 = distinct !DILexicalBlock(scope: !2478, file: !2, line: 197, column: 3)
!2615 = !DILocation(line: 198, column: 5, scope: !2614, inlinedAt: !2476)
!2616 = !DILocation(line: 1091, column: 5, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !2, line: 1090, column: 3)
!2618 = distinct !DILexicalBlock(scope: !2460, file: !2, line: 1089, column: 6)
!2619 = !DILocation(line: 204, column: 29, scope: !2470, inlinedAt: !2476)
!2620 = !DILocation(line: 204, column: 38, scope: !2470, inlinedAt: !2476)
!2621 = !DILocation(line: 204, column: 13, scope: !2470, inlinedAt: !2476)
!2622 = !DILocation(line: 204, column: 26, scope: !2470, inlinedAt: !2476)
!2623 = !DILocation(line: 205, column: 4, scope: !2470, inlinedAt: !2476)
!2624 = !DILocation(line: 205, column: 13, scope: !2470, inlinedAt: !2476)
!2625 = !DILocation(line: 205, column: 21, scope: !2470, inlinedAt: !2476)
!2626 = !DILocation(line: 206, column: 13, scope: !2470, inlinedAt: !2476)
!2627 = !DILocation(line: 206, column: 24, scope: !2470, inlinedAt: !2476)
!2628 = !DILocation(line: 207, column: 13, scope: !2470, inlinedAt: !2476)
!2629 = !DILocation(line: 207, column: 24, scope: !2470, inlinedAt: !2476)
!2630 = !DILocation(line: 1095, column: 20, scope: !2460)
!2631 = !DILocation(line: 1095, column: 3, scope: !2460)
!2632 = !DILocation(line: 1096, column: 45, scope: !2460)
!2633 = !DILocation(line: 1096, column: 52, scope: !2460)
!2634 = !DILocation(line: 1096, column: 13, scope: !2460)
!2635 = !DILocation(line: 1096, column: 20, scope: !2460)
!2636 = !DILocation(line: 1096, column: 33, scope: !2460)
!2637 = !DILocation(line: 1097, column: 44, scope: !2460)
!2638 = !DILocation(line: 1097, column: 51, scope: !2460)
!2639 = !DILocation(line: 1097, column: 13, scope: !2460)
!2640 = !DILocation(line: 1097, column: 20, scope: !2460)
!2641 = !DILocation(line: 1097, column: 32, scope: !2460)
!2642 = !DILocation(line: 1098, column: 40, scope: !2460)
!2643 = !DILocation(line: 1098, column: 47, scope: !2460)
!2644 = !DILocation(line: 1098, column: 13, scope: !2460)
!2645 = !DILocation(line: 1098, column: 20, scope: !2460)
!2646 = !DILocation(line: 1098, column: 28, scope: !2460)
!2647 = !DILocation(line: 1116, column: 23, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2460, file: !2, line: 1116, column: 6)
!2649 = !DILocation(line: 1116, column: 30, scope: !2648)
!2650 = !DILocation(line: 1116, column: 6, scope: !2648)
!2651 = !DILocation(line: 1116, column: 41, scope: !2648)
!2652 = !DILocation(line: 1116, column: 44, scope: !2648)
!2653 = !DILocation(line: 1116, column: 6, scope: !2460)
!2654 = !DILocation(line: 1118, column: 34, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !2, line: 1118, column: 8)
!2656 = distinct !DILexicalBlock(scope: !2648, file: !2, line: 1117, column: 3)
!2657 = !DILocation(line: 1118, column: 19, scope: !2655)
!2658 = !DILocation(line: 1118, column: 26, scope: !2655)
!2659 = !DILocation(line: 1118, column: 32, scope: !2655)
!2660 = !DILocation(line: 1118, column: 81, scope: !2655)
!2661 = !DILocation(line: 1118, column: 8, scope: !2656)
!2662 = !DILocation(line: 1120, column: 13, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2655, file: !2, line: 1119, column: 4)
!2664 = !DILocation(line: 1120, column: 95, scope: !2663)
!2665 = !DILocation(line: 1120, column: 102, scope: !2663)
!2666 = !DILocation(line: 1120, column: 5, scope: !2663)
!2667 = !DILocation(line: 1121, column: 13, scope: !2663)
!2668 = !DILocation(line: 1121, column: 5, scope: !2663)
!2669 = !DILocation(line: 1122, column: 4, scope: !2663)
!2670 = !DILocation(line: 1125, column: 15, scope: !2648)
!2671 = !DILocation(line: 1125, column: 22, scope: !2648)
!2672 = !DILocation(line: 1125, column: 28, scope: !2648)
!2673 = !DILocation(line: 1127, column: 26, scope: !2460)
!2674 = !DILocation(line: 1127, column: 43, scope: !2460)
!2675 = !DILocation(line: 1127, column: 50, scope: !2460)
!2676 = !DILocation(line: 1127, column: 3, scope: !2460)
!2677 = !DILocation(line: 1128, column: 13, scope: !2460)
!2678 = !DILocation(line: 1128, column: 20, scope: !2460)
!2679 = !DILocation(line: 1128, column: 30, scope: !2460)
!2680 = !DILocation(line: 1128, column: 70, scope: !2460)
!2681 = !DILocation(line: 1128, column: 3, scope: !2460)
!2682 = !DILocation(line: 1133, column: 28, scope: !2460)
!2683 = !DILocation(line: 1133, column: 35, scope: !2460)
!2684 = !DILocation(line: 1133, column: 3, scope: !2460)
!2685 = !DILocation(line: 1135, column: 18, scope: !2460)
!2686 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !2687, file: !2, line: 323, type: !878)
!2687 = distinct !DISubprogram(name: "init", scope: !2, file: !2, line: 323, type: !883, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2688)
!2688 = !{!2686, !2689}
!2689 = !DILocalVariable(name: "p_Inp", scope: !2687, file: !2, line: 326, type: !922)
!2690 = !DILocation(line: 0, scope: !2687, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 1135, column: 3, scope: !2460)
!2692 = !DILocation(line: 326, column: 35, scope: !2687, inlinedAt: !2691)
!2693 = !DILocation(line: 327, column: 10, scope: !2687, inlinedAt: !2691)
!2694 = !DILocation(line: 327, column: 28, scope: !2687, inlinedAt: !2691)
!2695 = !DILocation(line: 329, column: 10, scope: !2687, inlinedAt: !2691)
!2696 = !DILocation(line: 332, column: 10, scope: !2687, inlinedAt: !2691)
!2697 = !DILocation(line: 332, column: 25, scope: !2687, inlinedAt: !2691)
!2698 = !DILocation(line: 333, column: 10, scope: !2687, inlinedAt: !2691)
!2699 = !DILocation(line: 333, column: 31, scope: !2687, inlinedAt: !2691)
!2700 = !DILocation(line: 334, column: 10, scope: !2687, inlinedAt: !2691)
!2701 = !DILocation(line: 330, column: 20, scope: !2687, inlinedAt: !2691)
!2702 = !DILocation(line: 334, column: 23, scope: !2687, inlinedAt: !2691)
!2703 = !DILocation(line: 336, column: 35, scope: !2687, inlinedAt: !2691)
!2704 = !DILocation(line: 336, column: 10, scope: !2687, inlinedAt: !2691)
!2705 = !DILocation(line: 336, column: 26, scope: !2687, inlinedAt: !2691)
!2706 = !DILocation(line: 337, column: 10, scope: !2687, inlinedAt: !2691)
!2707 = !DILocation(line: 337, column: 21, scope: !2687, inlinedAt: !2691)
!2708 = !DILocation(line: 339, column: 10, scope: !2687, inlinedAt: !2691)
!2709 = !DILocation(line: 339, column: 17, scope: !2687, inlinedAt: !2691)
!2710 = !DILocation(line: 340, column: 10, scope: !2687, inlinedAt: !2691)
!2711 = !DILocation(line: 340, column: 15, scope: !2687, inlinedAt: !2691)
!2712 = !DILocation(line: 344, column: 10, scope: !2687, inlinedAt: !2691)
!2713 = !DILocation(line: 344, column: 19, scope: !2687, inlinedAt: !2691)
!2714 = !DILocation(line: 346, column: 30, scope: !2687, inlinedAt: !2691)
!2715 = !DILocation(line: 346, column: 45, scope: !2687, inlinedAt: !2691)
!2716 = !DILocation(line: 346, column: 10, scope: !2687, inlinedAt: !2691)
!2717 = !DILocation(line: 346, column: 21, scope: !2687, inlinedAt: !2691)
!2718 = !DILocation(line: 349, column: 10, scope: !2687, inlinedAt: !2691)
!2719 = !DILocation(line: 349, column: 19, scope: !2687, inlinedAt: !2691)
!2720 = !DILocation(line: 351, column: 10, scope: !2687, inlinedAt: !2691)
!2721 = !DILocation(line: 351, column: 22, scope: !2687, inlinedAt: !2691)
!2722 = !DILocation(line: 358, column: 10, scope: !2687, inlinedAt: !2691)
!2723 = !DILocation(line: 361, column: 10, scope: !2687, inlinedAt: !2691)
!2724 = !DILocation(line: 361, column: 32, scope: !2687, inlinedAt: !2691)
!2725 = !DILocation(line: 362, column: 10, scope: !2687, inlinedAt: !2691)
!2726 = !DILocation(line: 362, column: 20, scope: !2687, inlinedAt: !2691)
!2727 = !DILocation(line: 365, column: 10, scope: !2687, inlinedAt: !2691)
!2728 = !DILocation(line: 372, column: 32, scope: !2687, inlinedAt: !2691)
!2729 = !DILocation(line: 365, column: 21, scope: !2687, inlinedAt: !2691)
!2730 = !DILocation(line: 358, column: 28, scope: !2687, inlinedAt: !2691)
!2731 = !DILocation(line: 372, column: 3, scope: !2687, inlinedAt: !2691)
!2732 = !DILocation(line: 376, column: 10, scope: !2687, inlinedAt: !2691)
!2733 = !DILocation(line: 376, column: 39, scope: !2687, inlinedAt: !2691)
!2734 = !DILocation(line: 377, column: 10, scope: !2687, inlinedAt: !2691)
!2735 = !DILocation(line: 377, column: 46, scope: !2687, inlinedAt: !2691)
!2736 = !DILocation(line: 378, column: 10, scope: !2687, inlinedAt: !2691)
!2737 = !DILocation(line: 378, column: 39, scope: !2687, inlinedAt: !2691)
!2738 = !DILocation(line: 381, column: 10, scope: !2687, inlinedAt: !2691)
!2739 = !DILocation(line: 381, column: 19, scope: !2687, inlinedAt: !2691)
!2740 = !DILocation(line: 382, column: 10, scope: !2687, inlinedAt: !2691)
!2741 = !DILocation(line: 382, column: 29, scope: !2687, inlinedAt: !2691)
!2742 = !DILocation(line: 384, column: 10, scope: !2687, inlinedAt: !2691)
!2743 = !DILocation(line: 384, column: 20, scope: !2687, inlinedAt: !2691)
!2744 = !DILocation(line: 389, column: 10, scope: !2687, inlinedAt: !2691)
!2745 = !DILocation(line: 389, column: 23, scope: !2687, inlinedAt: !2691)
!2746 = !DILocation(line: 390, column: 10, scope: !2687, inlinedAt: !2691)
!2747 = !DILocation(line: 390, column: 25, scope: !2687, inlinedAt: !2691)
!2748 = !DILocation(line: 1137, column: 29, scope: !2460)
!2749 = !DILocation(line: 1137, column: 3, scope: !2460)
!2750 = !DILocation(line: 1141, column: 13, scope: !2460)
!2751 = !DILocation(line: 1141, column: 20, scope: !2460)
!2752 = !DILocation(line: 1141, column: 26, scope: !2460)
!2753 = !DILocation(line: 1143, column: 3, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2460, file: !2, line: 1143, column: 3)
!2755 = !DILocation(line: 1145, column: 15, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !2, line: 1144, column: 3)
!2757 = distinct !DILexicalBlock(scope: !2754, file: !2, line: 1143, column: 3)
!2758 = !DILocation(line: 1145, column: 22, scope: !2756)
!2759 = !DILocation(line: 1145, column: 5, scope: !2756)
!2760 = !DILocation(line: 1145, column: 35, scope: !2756)
!2761 = !DILocation(line: 1143, column: 27, scope: !2757)
!2762 = !DILocation(line: 1143, column: 12, scope: !2757)
!2763 = distinct !{!2763, !2753, !2764}
!2764 = !DILocation(line: 1146, column: 3, scope: !2754)
!2765 = !DILocation(line: 1147, column: 13, scope: !2460)
!2766 = !DILocation(line: 1147, column: 20, scope: !2460)
!2767 = !DILocation(line: 1147, column: 31, scope: !2460)
!2768 = !DILocation(line: 1148, column: 13, scope: !2460)
!2769 = !DILocation(line: 1148, column: 20, scope: !2460)
!2770 = !DILocation(line: 1148, column: 38, scope: !2460)
!2771 = !DILocation(line: 1149, column: 34, scope: !2460)
!2772 = !DILocation(line: 1149, column: 41, scope: !2460)
!2773 = !DILocation(line: 1149, column: 3, scope: !2460)
!2774 = !DILocation(line: 1152, column: 3, scope: !2460)
!2775 = !DILocation(line: 1153, column: 1, scope: !2460)
!2776 = !DISubprogram(name: "open", scope: !2777, file: !2777, line: 181, type: !2778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2777 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!13, !1585, !13, null}
!2780 = !DISubprogram(name: "initBitsFile", scope: !872, file: !872, line: 29, type: !2781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{null, !878, !13}
!2783 = !DISubprogram(name: "init_old_slice", scope: !2784, file: !2784, line: 27, type: !2785, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2784 = !DIFile(filename: "ldecod_src/inc/image.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e4b0e470a939c3c4ca7dabe5f653bfe4")
!2785 = !DISubroutineType(types: !2786)
!2786 = !{null, !1443}
!2787 = !DISubprogram(name: "init_out_buffer", scope: !2788, file: !2788, line: 20, type: !883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2788 = !DIFile(filename: "ldecod_src/inc/output.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "703e2f977a63a5284263027e4e14389d")
!2789 = !DISubprogram(name: "init_subset_sps_list", scope: !2790, file: !2790, line: 62, type: !2791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2790 = !DIFile(filename: "ldecod_src/inc/parset.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1b4400c3096806a6f80ce4d1614e45c")
!2791 = !DISubroutineType(types: !2792)
!2792 = !{null, !398, !13}
!2793 = distinct !DISubprogram(name: "DecodeOneFrame", scope: !2, file: !2, line: 1162, type: !2794, scopeLine: 1163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2797)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!13, !2796}
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!2797 = !{!2798, !2799, !2800}
!2798 = !DILocalVariable(name: "ppDecPicList", arg: 1, scope: !2793, file: !2, line: 1162, type: !2796)
!2799 = !DILocalVariable(name: "iRet", scope: !2793, file: !2, line: 1164, type: !13)
!2800 = !DILocalVariable(name: "pDecoder", scope: !2793, file: !2, line: 1165, type: !1380)
!2801 = !DILocation(line: 0, scope: !2793)
!2802 = !DILocation(line: 1165, column: 29, scope: !2793)
!2803 = !DILocation(line: 1166, column: 29, scope: !2793)
!2804 = !DILocation(line: 0, scope: !2389, inlinedAt: !2805)
!2805 = distinct !DILocation(line: 1166, column: 3, scope: !2793)
!2806 = !DILocation(line: 1025, column: 33, scope: !2389, inlinedAt: !2805)
!2807 = !DILocation(line: 1027, column: 9, scope: !2389, inlinedAt: !2805)
!2808 = !DILocation(line: 1027, column: 14, scope: !2389, inlinedAt: !2805)
!2809 = !DILocation(line: 1027, column: 24, scope: !2389, inlinedAt: !2805)
!2810 = !DILocation(line: 1027, column: 17, scope: !2389, inlinedAt: !2805)
!2811 = !DILocation(line: 1027, column: 3, scope: !2389, inlinedAt: !2805)
!2812 = distinct !{!2812, !2811, !2813}
!2813 = !DILocation(line: 1031, column: 3, scope: !2389, inlinedAt: !2805)
!2814 = !DILocation(line: 1030, column: 18, scope: !2407, inlinedAt: !2805)
!2815 = !DILocation(line: 1033, column: 20, scope: !2396, inlinedAt: !2805)
!2816 = !DILocation(line: 1033, column: 6, scope: !2389, inlinedAt: !2805)
!2817 = !DILocation(line: 0, scope: !2395, inlinedAt: !2805)
!2818 = !DILocation(line: 1037, column: 21, scope: !2395, inlinedAt: !2805)
!2819 = !DILocation(line: 1037, column: 5, scope: !2395, inlinedAt: !2805)
!2820 = distinct !{!2820, !2819, !2821}
!2821 = !DILocation(line: 1038, column: 28, scope: !2395, inlinedAt: !2805)
!2822 = !DILocation(line: 1040, column: 21, scope: !2395, inlinedAt: !2805)
!2823 = !DILocation(line: 1041, column: 25, scope: !2395, inlinedAt: !2805)
!2824 = !DILocation(line: 1042, column: 13, scope: !2395, inlinedAt: !2805)
!2825 = !DILocation(line: 1042, column: 19, scope: !2395, inlinedAt: !2805)
!2826 = !DILocation(line: 1043, column: 3, scope: !2395, inlinedAt: !2805)
!2827 = !DILocation(line: 1167, column: 10, scope: !2793)
!2828 = !DILocation(line: 1168, column: 6, scope: !2793)
!2829 = !DILocation(line: 1175, column: 3, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !2, line: 1173, column: 3)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !2, line: 1172, column: 11)
!2832 = distinct !DILexicalBlock(scope: !2793, file: !2, line: 1168, column: 6)
!2833 = !DILocation(line: 1178, column: 10, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2831, file: !2, line: 1177, column: 3)
!2835 = !DILocation(line: 0, scope: !2832)
!2836 = !DILocation(line: 1181, column: 29, scope: !2793)
!2837 = !DILocation(line: 1181, column: 36, scope: !2793)
!2838 = !DILocation(line: 1181, column: 17, scope: !2793)
!2839 = !DILocation(line: 1182, column: 3, scope: !2793)
!2840 = !DISubprogram(name: "decode_one_frame", scope: !2784, file: !2784, line: 24, type: !2841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!13, !1380}
!2843 = distinct !DISubprogram(name: "FinitDecoder", scope: !2, file: !2, line: 1185, type: !2794, scopeLine: 1186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2844)
!2844 = !{!2845, !2846}
!2845 = !DILocalVariable(name: "ppDecPicList", arg: 1, scope: !2843, file: !2, line: 1185, type: !2796)
!2846 = !DILocalVariable(name: "pDecoder", scope: !2843, file: !2, line: 1187, type: !1380)
!2847 = !DILocation(line: 0, scope: !2843)
!2848 = !DILocation(line: 1187, column: 29, scope: !2843)
!2849 = !DILocation(line: 1188, column: 7, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2843, file: !2, line: 1188, column: 6)
!2851 = !DILocation(line: 1188, column: 6, scope: !2843)
!2852 = !DILocation(line: 1190, column: 29, scope: !2843)
!2853 = !DILocation(line: 0, scope: !2389, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 1190, column: 3, scope: !2843)
!2855 = !DILocation(line: 1025, column: 33, scope: !2389, inlinedAt: !2854)
!2856 = !DILocation(line: 1027, column: 9, scope: !2389, inlinedAt: !2854)
!2857 = !DILocation(line: 1027, column: 14, scope: !2389, inlinedAt: !2854)
!2858 = !DILocation(line: 1027, column: 24, scope: !2389, inlinedAt: !2854)
!2859 = !DILocation(line: 1027, column: 17, scope: !2389, inlinedAt: !2854)
!2860 = !DILocation(line: 1027, column: 3, scope: !2389, inlinedAt: !2854)
!2861 = distinct !{!2861, !2860, !2862}
!2862 = !DILocation(line: 1031, column: 3, scope: !2389, inlinedAt: !2854)
!2863 = !DILocation(line: 1030, column: 18, scope: !2407, inlinedAt: !2854)
!2864 = !DILocation(line: 1033, column: 20, scope: !2396, inlinedAt: !2854)
!2865 = !DILocation(line: 1033, column: 6, scope: !2389, inlinedAt: !2854)
!2866 = !DILocation(line: 0, scope: !2395, inlinedAt: !2854)
!2867 = !DILocation(line: 1037, column: 21, scope: !2395, inlinedAt: !2854)
!2868 = !DILocation(line: 1037, column: 5, scope: !2395, inlinedAt: !2854)
!2869 = distinct !{!2869, !2868, !2870}
!2870 = !DILocation(line: 1038, column: 28, scope: !2395, inlinedAt: !2854)
!2871 = !DILocation(line: 1040, column: 21, scope: !2395, inlinedAt: !2854)
!2872 = !DILocation(line: 1041, column: 25, scope: !2395, inlinedAt: !2854)
!2873 = !DILocation(line: 1042, column: 13, scope: !2395, inlinedAt: !2854)
!2874 = !DILocation(line: 1042, column: 19, scope: !2395, inlinedAt: !2854)
!2875 = !DILocation(line: 1192, column: 23, scope: !2843)
!2876 = !DILocation(line: 1043, column: 3, scope: !2395, inlinedAt: !2854)
!2877 = !DILocation(line: 1192, column: 30, scope: !2843)
!2878 = !DILocation(line: 1192, column: 3, scope: !2843)
!2879 = !DILocation(line: 1199, column: 25, scope: !2843)
!2880 = !DILocation(line: 1199, column: 32, scope: !2843)
!2881 = !DILocation(line: 1199, column: 3, scope: !2843)
!2882 = !DILocation(line: 1200, column: 13, scope: !2843)
!2883 = !DILocation(line: 1200, column: 20, scope: !2843)
!2884 = !DILocation(line: 1200, column: 29, scope: !2843)
!2885 = !DILocation(line: 1201, column: 13, scope: !2843)
!2886 = !DILocation(line: 1201, column: 20, scope: !2843)
!2887 = !DILocation(line: 1201, column: 39, scope: !2843)
!2888 = !DILocation(line: 1202, column: 29, scope: !2843)
!2889 = !DILocation(line: 1202, column: 36, scope: !2843)
!2890 = !DILocation(line: 1202, column: 17, scope: !2843)
!2891 = !DILocation(line: 1203, column: 3, scope: !2843)
!2892 = !DILocation(line: 1204, column: 1, scope: !2843)
!2893 = !DISubprogram(name: "flush_dpb", scope: !538, file: !538, line: 223, type: !2894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{null, !1447, !13}
!2896 = !DISubprogram(name: "ResetAnnexB", scope: !858, file: !858, line: 37, type: !2897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{null, !2899}
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_typedef, name: "ANNEXB_t", file: !858, line: 29, baseType: !857)
!2901 = distinct !DISubprogram(name: "CloseDecoder", scope: !2, file: !2, line: 1206, type: !2902, scopeLine: 1207, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2904)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!13}
!2904 = !{!2905, !2906}
!2905 = !DILocalVariable(name: "i", scope: !2901, file: !2, line: 1209, type: !13)
!2906 = !DILocalVariable(name: "pDecoder", scope: !2901, file: !2, line: 1212, type: !1380)
!2907 = distinct !DIAssignID()
!2908 = !DILocation(line: 0, scope: !1560, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 1216, column: 3, scope: !2901)
!2910 = distinct !DIAssignID()
!2911 = !DILocation(line: 1212, column: 29, scope: !2901)
!2912 = !DILocation(line: 0, scope: !2901)
!2913 = !DILocation(line: 1213, column: 7, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2901, file: !2, line: 1213, column: 6)
!2915 = !DILocation(line: 1213, column: 6, scope: !2901)
!2916 = !DILocation(line: 1216, column: 20, scope: !2901)
!2917 = !DILocation(line: 474, column: 49, scope: !1560, inlinedAt: !2909)
!2918 = !DILocation(line: 475, column: 35, scope: !1560, inlinedAt: !2909)
!2919 = !DILocation(line: 476, column: 35, scope: !1560, inlinedAt: !2909)
!2920 = !DILocation(line: 478, column: 3, scope: !1560, inlinedAt: !2909)
!2921 = !DILocation(line: 482, column: 3, scope: !1560, inlinedAt: !2909)
!2922 = !DILocation(line: 493, column: 14, scope: !2923, inlinedAt: !2909)
!2923 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 493, column: 7)
!2924 = !DILocation(line: 493, column: 21, scope: !2923, inlinedAt: !2909)
!2925 = !DILocation(line: 0, scope: !2923, inlinedAt: !2909)
!2926 = !DILocation(line: 493, column: 7, scope: !1560, inlinedAt: !2909)
!2927 = !DILocation(line: 495, column: 5, scope: !2928, inlinedAt: !2909)
!2928 = distinct !DILexicalBlock(scope: !2923, file: !2, line: 494, column: 3)
!2929 = !DILocation(line: 496, column: 13, scope: !2928, inlinedAt: !2909)
!2930 = !DILocation(line: 496, column: 58, scope: !2928, inlinedAt: !2909)
!2931 = !DILocation(line: 496, column: 53, scope: !2928, inlinedAt: !2909)
!2932 = !DILocation(line: 496, column: 5, scope: !2928, inlinedAt: !2909)
!2933 = !DILocation(line: 497, column: 13, scope: !2928, inlinedAt: !2909)
!2934 = !DILocation(line: 497, column: 53, scope: !2928, inlinedAt: !2909)
!2935 = !DILocation(line: 497, column: 5, scope: !2928, inlinedAt: !2909)
!2936 = !DILocation(line: 498, column: 13, scope: !2928, inlinedAt: !2909)
!2937 = !DILocation(line: 498, column: 53, scope: !2928, inlinedAt: !2909)
!2938 = !DILocation(line: 498, column: 5, scope: !2928, inlinedAt: !2909)
!2939 = !DILocation(line: 505, column: 3, scope: !2928, inlinedAt: !2909)
!2940 = !DILocation(line: 508, column: 5, scope: !2941, inlinedAt: !2909)
!2941 = distinct !DILexicalBlock(scope: !2923, file: !2, line: 507, column: 3)
!2942 = !DILocation(line: 518, column: 11, scope: !1560, inlinedAt: !2909)
!2943 = !DILocation(line: 518, column: 3, scope: !1560, inlinedAt: !2909)
!2944 = !DILocation(line: 519, column: 3, scope: !1560, inlinedAt: !2909)
!2945 = !DILocation(line: 521, column: 14, scope: !2946, inlinedAt: !2909)
!2946 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 521, column: 7)
!2947 = !DILocation(line: 521, column: 32, scope: !2946, inlinedAt: !2909)
!2948 = !DILocation(line: 521, column: 7, scope: !1560, inlinedAt: !2909)
!2949 = !DILocation(line: 523, column: 16, scope: !2950, inlinedAt: !2909)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !2, line: 523, column: 9)
!2951 = distinct !DILexicalBlock(scope: !2946, file: !2, line: 522, column: 3)
!2952 = !DILocation(line: 523, column: 34, scope: !2950, inlinedAt: !2909)
!2953 = !DILocation(line: 523, column: 9, scope: !2951, inlinedAt: !2909)
!2954 = !DILocation(line: 525, column: 7, scope: !2955, inlinedAt: !2909)
!2955 = distinct !DILexicalBlock(scope: !2950, file: !2, line: 524, column: 5)
!2956 = !DILocation(line: 0, scope: !1711, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 526, column: 7, scope: !2955, inlinedAt: !2909)
!2958 = !DILocation(line: 100, column: 11, scope: !1711, inlinedAt: !2957)
!2959 = !DILocation(line: 100, column: 3, scope: !1711, inlinedAt: !2957)
!2960 = !DILocation(line: 108, column: 3, scope: !1711, inlinedAt: !2957)
!2961 = !DILocation(line: 530, column: 7, scope: !2962, inlinedAt: !2909)
!2962 = distinct !DILexicalBlock(scope: !2950, file: !2, line: 529, column: 5)
!2963 = !DILocation(line: 531, column: 7, scope: !2962, inlinedAt: !2909)
!2964 = !DILocation(line: 532, column: 7, scope: !2962, inlinedAt: !2909)
!2965 = !DILocation(line: 533, column: 7, scope: !2962, inlinedAt: !2909)
!2966 = !DILocation(line: 534, column: 7, scope: !2962, inlinedAt: !2909)
!2967 = !DILocation(line: 539, column: 5, scope: !2968, inlinedAt: !2909)
!2968 = distinct !DILexicalBlock(scope: !2946, file: !2, line: 538, column: 3)
!2969 = !DILocation(line: 540, column: 11, scope: !2968, inlinedAt: !2909)
!2970 = !DILocation(line: 0, scope: !2946, inlinedAt: !2909)
!2971 = !DILocation(line: 543, column: 3, scope: !1560, inlinedAt: !2909)
!2972 = !DILocation(line: 552, column: 9, scope: !1560, inlinedAt: !2909)
!2973 = !DILocation(line: 552, column: 7, scope: !1560, inlinedAt: !2909)
!2974 = distinct !DIAssignID()
!2975 = !DILocation(line: 553, column: 3, scope: !1560, inlinedAt: !2909)
!2976 = !DILocation(line: 554, column: 12, scope: !1560, inlinedAt: !2909)
!2977 = !DILocation(line: 555, column: 3, scope: !1560, inlinedAt: !2909)
!2978 = !DILocation(line: 556, column: 3, scope: !1560, inlinedAt: !2909)
!2979 = !DILocation(line: 558, column: 3, scope: !1560, inlinedAt: !2909)
!2980 = !DILocation(line: 559, column: 3, scope: !1560, inlinedAt: !2909)
!2981 = !DILocation(line: 562, column: 3, scope: !1560, inlinedAt: !2909)
!2982 = !DILocation(line: 564, column: 32, scope: !1560, inlinedAt: !2909)
!2983 = !DILocation(line: 564, column: 3, scope: !1560, inlinedAt: !2909)
!2984 = !DILocation(line: 565, column: 37, scope: !1560, inlinedAt: !2909)
!2985 = !DILocation(line: 565, column: 51, scope: !1560, inlinedAt: !2909)
!2986 = !DILocation(line: 565, column: 3, scope: !1560, inlinedAt: !2909)
!2987 = !DILocation(line: 566, column: 47, scope: !1560, inlinedAt: !2909)
!2988 = !DILocation(line: 566, column: 28, scope: !1560, inlinedAt: !2909)
!2989 = !DILocation(line: 566, column: 3, scope: !1560, inlinedAt: !2909)
!2990 = !DILocation(line: 568, column: 7, scope: !2991, inlinedAt: !2909)
!2991 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 568, column: 7)
!2992 = !DILocation(line: 568, column: 7, scope: !1560, inlinedAt: !2909)
!2993 = !DILocation(line: 570, column: 21, scope: !2994, inlinedAt: !2909)
!2994 = distinct !DILexicalBlock(scope: !2995, file: !2, line: 570, column: 9)
!2995 = distinct !DILexicalBlock(scope: !2991, file: !2, line: 569, column: 3)
!2996 = !DILocation(line: 570, column: 46, scope: !2994, inlinedAt: !2909)
!2997 = !DILocation(line: 0, scope: !2994, inlinedAt: !2909)
!2998 = !DILocation(line: 576, column: 31, scope: !1560, inlinedAt: !2909)
!2999 = !DILocation(line: 576, column: 26, scope: !1560, inlinedAt: !2909)
!3000 = !DILocation(line: 576, column: 3, scope: !1560, inlinedAt: !2909)
!3001 = !DILocation(line: 577, column: 26, scope: !1560, inlinedAt: !2909)
!3002 = !DILocation(line: 577, column: 3, scope: !1560, inlinedAt: !2909)
!3003 = !DILocation(line: 578, column: 26, scope: !1560, inlinedAt: !2909)
!3004 = !DILocation(line: 578, column: 3, scope: !1560, inlinedAt: !2909)
!3005 = !DILocation(line: 579, column: 31, scope: !1560, inlinedAt: !2909)
!3006 = !DILocation(line: 579, column: 26, scope: !1560, inlinedAt: !2909)
!3007 = !DILocation(line: 579, column: 3, scope: !1560, inlinedAt: !2909)
!3008 = !DILocation(line: 580, column: 26, scope: !1560, inlinedAt: !2909)
!3009 = !DILocation(line: 580, column: 3, scope: !1560, inlinedAt: !2909)
!3010 = !DILocation(line: 581, column: 26, scope: !1560, inlinedAt: !2909)
!3011 = !DILocation(line: 581, column: 3, scope: !1560, inlinedAt: !2909)
!3012 = !DILocation(line: 582, column: 3, scope: !1560, inlinedAt: !2909)
!3013 = !DILocation(line: 583, column: 3, scope: !1560, inlinedAt: !2909)
!3014 = !DILocation(line: 585, column: 3, scope: !1560, inlinedAt: !2909)
!3015 = !DILocation(line: 586, column: 9, scope: !1560, inlinedAt: !2909)
!3016 = !DILocation(line: 588, column: 13, scope: !3017, inlinedAt: !2909)
!3017 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 588, column: 6)
!3018 = !DILocation(line: 588, column: 24, scope: !3017, inlinedAt: !2909)
!3019 = !DILocation(line: 0, scope: !3017, inlinedAt: !2909)
!3020 = !DILocation(line: 588, column: 6, scope: !1560, inlinedAt: !2909)
!3021 = !DILocation(line: 593, column: 48, scope: !3022, inlinedAt: !2909)
!3022 = distinct !DILexicalBlock(scope: !3017, file: !2, line: 589, column: 3)
!3023 = !DILocation(line: 594, column: 7, scope: !3022, inlinedAt: !2909)
!3024 = !DILocation(line: 595, column: 7, scope: !3022, inlinedAt: !2909)
!3025 = !DILocation(line: 596, column: 7, scope: !3022, inlinedAt: !2909)
!3026 = !DILocation(line: 602, column: 7, scope: !3022, inlinedAt: !2909)
!3027 = !DILocation(line: 603, column: 7, scope: !3022, inlinedAt: !2909)
!3028 = !DILocation(line: 604, column: 7, scope: !3022, inlinedAt: !2909)
!3029 = !DILocation(line: 606, column: 28, scope: !3022, inlinedAt: !2909)
!3030 = !DILocation(line: 606, column: 21, scope: !3022, inlinedAt: !2909)
!3031 = !DILocation(line: 606, column: 20, scope: !3022, inlinedAt: !2909)
!3032 = !DILocation(line: 606, column: 52, scope: !3022, inlinedAt: !2909)
!3033 = !DILocation(line: 606, column: 72, scope: !3022, inlinedAt: !2909)
!3034 = !DILocation(line: 606, column: 37, scope: !3022, inlinedAt: !2909)
!3035 = !DILocation(line: 606, column: 36, scope: !3022, inlinedAt: !2909)
!3036 = !DILocation(line: 590, column: 5, scope: !3022, inlinedAt: !2909)
!3037 = !DILocation(line: 607, column: 3, scope: !3022, inlinedAt: !2909)
!3038 = !DILocation(line: 613, column: 25, scope: !3039, inlinedAt: !2909)
!3039 = distinct !DILexicalBlock(scope: !3017, file: !2, line: 609, column: 3)
!3040 = !DILocation(line: 613, column: 71, scope: !3039, inlinedAt: !2909)
!3041 = !DILocation(line: 614, column: 7, scope: !3039, inlinedAt: !2909)
!3042 = !DILocation(line: 615, column: 7, scope: !3039, inlinedAt: !2909)
!3043 = !DILocation(line: 616, column: 7, scope: !3039, inlinedAt: !2909)
!3044 = !DILocation(line: 622, column: 7, scope: !3039, inlinedAt: !2909)
!3045 = !DILocation(line: 623, column: 7, scope: !3039, inlinedAt: !2909)
!3046 = !DILocation(line: 624, column: 7, scope: !3039, inlinedAt: !2909)
!3047 = !DILocation(line: 626, column: 7, scope: !3039, inlinedAt: !2909)
!3048 = !DILocation(line: 626, column: 45, scope: !3039, inlinedAt: !2909)
!3049 = !DILocation(line: 626, column: 38, scope: !3039, inlinedAt: !2909)
!3050 = !DILocation(line: 626, column: 37, scope: !3039, inlinedAt: !2909)
!3051 = !DILocation(line: 626, column: 54, scope: !3039, inlinedAt: !2909)
!3052 = !DILocation(line: 626, column: 53, scope: !3039, inlinedAt: !2909)
!3053 = !DILocation(line: 610, column: 5, scope: !3039, inlinedAt: !2909)
!3054 = !DILocation(line: 628, column: 3, scope: !1560, inlinedAt: !2909)
!3055 = !DILocation(line: 629, column: 1, scope: !1560, inlinedAt: !2909)
!3056 = !DILocation(line: 1217, column: 22, scope: !2901)
!3057 = !DILocation(line: 1217, column: 3, scope: !2901)
!3058 = !DILocation(line: 1218, column: 33, scope: !2901)
!3059 = !DILocation(line: 1218, column: 3, scope: !2901)
!3060 = !DILocation(line: 1220, column: 13, scope: !2901)
!3061 = !DILocation(line: 1220, column: 20, scope: !2901)
!3062 = !DILocation(line: 1220, column: 30, scope: !2901)
!3063 = !DILocation(line: 1220, column: 3, scope: !2901)
!3064 = !DILocation(line: 1223, column: 3, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !2901, file: !2, line: 1223, column: 3)
!3066 = !DILocation(line: 1225, column: 19, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !2, line: 1225, column: 9)
!3068 = distinct !DILexicalBlock(scope: !3069, file: !2, line: 1224, column: 3)
!3069 = distinct !DILexicalBlock(scope: !3065, file: !2, line: 1223, column: 3)
!3070 = !DILocation(line: 1225, column: 26, scope: !3067)
!3071 = !DILocation(line: 1225, column: 9, scope: !3067)
!3072 = !DILocation(line: 1225, column: 39, scope: !3067)
!3073 = !DILocation(line: 1225, column: 9, scope: !3068)
!3074 = !DILocation(line: 1227, column: 7, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3067, file: !2, line: 1226, column: 5)
!3076 = !DILocation(line: 1228, column: 5, scope: !3075)
!3077 = !DILocation(line: 1223, column: 27, scope: !3069)
!3078 = !DILocation(line: 1223, column: 12, scope: !3069)
!3079 = distinct !{!3079, !3064, !3080}
!3080 = !DILocation(line: 1229, column: 3, scope: !3065)
!3081 = !DILocation(line: 1234, column: 17, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !2901, file: !2, line: 1234, column: 7)
!3083 = !DILocation(line: 1234, column: 24, scope: !3082)
!3084 = !DILocation(line: 1234, column: 30, scope: !3082)
!3085 = !DILocation(line: 1234, column: 7, scope: !2901)
!3086 = !DILocation(line: 1235, column: 5, scope: !3082)
!3087 = !DILocation(line: 1241, column: 22, scope: !2901)
!3088 = !DILocation(line: 1241, column: 46, scope: !2901)
!3089 = !DILocation(line: 1241, column: 3, scope: !2901)
!3090 = !DILocation(line: 1243, column: 24, scope: !2901)
!3091 = !DILocation(line: 1243, column: 3, scope: !2901)
!3092 = !DILocation(line: 1247, column: 32, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !2, line: 1246, column: 3)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !2, line: 1245, column: 3)
!3095 = distinct !DILexicalBlock(scope: !2901, file: !2, line: 1245, column: 3)
!3096 = !DILocation(line: 1247, column: 39, scope: !3093)
!3097 = !DILocation(line: 1247, column: 5, scope: !3093)
!3098 = !DILocation(line: 1247, column: 54, scope: !3093)
!3099 = !DILocation(line: 1250, column: 22, scope: !2901)
!3100 = !DILocation(line: 1250, column: 29, scope: !2901)
!3101 = !DILocation(line: 1250, column: 3, scope: !2901)
!3102 = !DILocation(line: 1251, column: 31, scope: !2901)
!3103 = !DILocation(line: 1251, column: 3, scope: !2901)
!3104 = !DILocation(line: 1253, column: 19, scope: !2901)
!3105 = !DILocation(line: 1253, column: 3, scope: !2901)
!3106 = !DILocation(line: 1254, column: 23, scope: !2901)
!3107 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !3108, file: !2, line: 219, type: !878)
!3108 = distinct !DISubprogram(name: "free_img", scope: !2, file: !2, line: 219, type: !883, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3109)
!3109 = !{!3107, !3110, !3111}
!3110 = !DILocalVariable(name: "i", scope: !3108, file: !2, line: 221, type: !13)
!3111 = !DILocalVariable(name: "i", scope: !3112, file: !2, line: 276, type: !13)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !2, line: 275, column: 5)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !2, line: 274, column: 8)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !2, line: 224, column: 3)
!3115 = distinct !DILexicalBlock(scope: !3108, file: !2, line: 223, column: 7)
!3116 = !DILocation(line: 0, scope: !3108, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 1254, column: 3, scope: !2901)
!3118 = !DILocation(line: 223, column: 13, scope: !3115, inlinedAt: !3117)
!3119 = !DILocation(line: 223, column: 7, scope: !3108, inlinedAt: !3117)
!3120 = !DILocation(line: 225, column: 5, scope: !3114, inlinedAt: !3117)
!3121 = !DILocation(line: 227, column: 16, scope: !3122, inlinedAt: !3117)
!3122 = distinct !DILexicalBlock(scope: !3114, file: !2, line: 227, column: 9)
!3123 = !DILocation(line: 227, column: 31, scope: !3122, inlinedAt: !3117)
!3124 = !DILocation(line: 227, column: 9, scope: !3114, inlinedAt: !3117)
!3125 = !DILocation(line: 229, column: 7, scope: !3126, inlinedAt: !3117)
!3126 = distinct !DILexicalBlock(scope: !3122, file: !2, line: 228, column: 5)
!3127 = !DILocation(line: 230, column: 29, scope: !3126, inlinedAt: !3117)
!3128 = !DILocation(line: 231, column: 5, scope: !3126, inlinedAt: !3117)
!3129 = !DILocation(line: 234, column: 16, scope: !3130, inlinedAt: !3117)
!3130 = distinct !DILexicalBlock(scope: !3114, file: !2, line: 234, column: 9)
!3131 = !DILocation(line: 234, column: 25, scope: !3130, inlinedAt: !3117)
!3132 = !DILocation(line: 234, column: 9, scope: !3114, inlinedAt: !3117)
!3133 = !DILocation(line: 236, column: 7, scope: !3134, inlinedAt: !3117)
!3134 = distinct !DILexicalBlock(scope: !3130, file: !2, line: 235, column: 5)
!3135 = !DILocation(line: 237, column: 23, scope: !3134, inlinedAt: !3117)
!3136 = !DILocation(line: 238, column: 5, scope: !3134, inlinedAt: !3117)
!3137 = !DILocation(line: 240, column: 16, scope: !3138, inlinedAt: !3117)
!3138 = distinct !DILexicalBlock(scope: !3114, file: !2, line: 240, column: 9)
!3139 = !DILocation(line: 240, column: 29, scope: !3138, inlinedAt: !3117)
!3140 = !DILocation(line: 240, column: 9, scope: !3114, inlinedAt: !3117)
!3141 = !DILocation(line: 242, column: 7, scope: !3142, inlinedAt: !3117)
!3142 = distinct !DILexicalBlock(scope: !3138, file: !2, line: 241, column: 5)
!3143 = !DILocation(line: 243, column: 27, scope: !3142, inlinedAt: !3117)
!3144 = !DILocation(line: 244, column: 5, scope: !3142, inlinedAt: !3117)
!3145 = !DILocation(line: 249, column: 11, scope: !3146, inlinedAt: !3117)
!3146 = distinct !DILexicalBlock(scope: !3147, file: !2, line: 249, column: 11)
!3147 = distinct !DILexicalBlock(scope: !3148, file: !2, line: 248, column: 5)
!3148 = distinct !DILexicalBlock(scope: !3149, file: !2, line: 247, column: 5)
!3149 = distinct !DILexicalBlock(scope: !3114, file: !2, line: 247, column: 5)
!3150 = !DILocation(line: 249, column: 33, scope: !3146, inlinedAt: !3117)
!3151 = !DILocation(line: 249, column: 11, scope: !3147, inlinedAt: !3117)
!3152 = !DILocation(line: 251, column: 9, scope: !3153, inlinedAt: !3117)
!3153 = distinct !DILexicalBlock(scope: !3146, file: !2, line: 250, column: 7)
!3154 = !DILocation(line: 252, column: 31, scope: !3153, inlinedAt: !3117)
!3155 = !DILocation(line: 253, column: 7, scope: !3153, inlinedAt: !3117)
!3156 = !DILocation(line: 256, column: 12, scope: !3114, inlinedAt: !3117)
!3157 = !DILocation(line: 256, column: 18, scope: !3114, inlinedAt: !3117)
!3158 = !DILocation(line: 258, column: 16, scope: !3159, inlinedAt: !3117)
!3159 = distinct !DILexicalBlock(scope: !3114, file: !2, line: 258, column: 9)
!3160 = !DILocation(line: 258, column: 20, scope: !3159, inlinedAt: !3117)
!3161 = !DILocation(line: 258, column: 9, scope: !3114, inlinedAt: !3117)
!3162 = !DILocation(line: 260, column: 7, scope: !3163, inlinedAt: !3117)
!3163 = distinct !DILexicalBlock(scope: !3159, file: !2, line: 259, column: 5)
!3164 = !DILocation(line: 261, column: 18, scope: !3163, inlinedAt: !3117)
!3165 = !DILocation(line: 262, column: 5, scope: !3163, inlinedAt: !3117)
!3166 = !DILocation(line: 263, column: 16, scope: !3167, inlinedAt: !3117)
!3167 = distinct !DILexicalBlock(scope: !3114, file: !2, line: 263, column: 9)
!3168 = !DILocation(line: 263, column: 26, scope: !3167, inlinedAt: !3117)
!3169 = !DILocation(line: 263, column: 9, scope: !3114, inlinedAt: !3117)
!3170 = !DILocation(line: 265, column: 7, scope: !3171, inlinedAt: !3117)
!3171 = distinct !DILexicalBlock(scope: !3167, file: !2, line: 264, column: 5)
!3172 = !DILocation(line: 266, column: 24, scope: !3171, inlinedAt: !3117)
!3173 = !DILocation(line: 267, column: 5, scope: !3171, inlinedAt: !3117)
!3174 = !DILocation(line: 269, column: 15, scope: !3175, inlinedAt: !3117)
!3175 = distinct !DILexicalBlock(scope: !3114, file: !2, line: 269, column: 8)
!3176 = !DILocation(line: 269, column: 8, scope: !3175, inlinedAt: !3117)
!3177 = !DILocation(line: 269, column: 8, scope: !3114, inlinedAt: !3117)
!3178 = !DILocation(line: 271, column: 7, scope: !3179, inlinedAt: !3117)
!3179 = distinct !DILexicalBlock(scope: !3175, file: !2, line: 270, column: 5)
!3180 = !DILocation(line: 272, column: 24, scope: !3179, inlinedAt: !3117)
!3181 = !DILocation(line: 273, column: 5, scope: !3179, inlinedAt: !3117)
!3182 = !DILocation(line: 274, column: 15, scope: !3113, inlinedAt: !3117)
!3183 = !DILocation(line: 274, column: 8, scope: !3113, inlinedAt: !3117)
!3184 = !DILocation(line: 274, column: 8, scope: !3114, inlinedAt: !3117)
!3185 = !DILocation(line: 0, scope: !3112, inlinedAt: !3117)
!3186 = !DILocation(line: 277, column: 25, scope: !3187, inlinedAt: !3117)
!3187 = distinct !DILexicalBlock(scope: !3188, file: !2, line: 277, column: 7)
!3188 = distinct !DILexicalBlock(scope: !3112, file: !2, line: 277, column: 7)
!3189 = !DILocation(line: 277, column: 17, scope: !3187, inlinedAt: !3117)
!3190 = !DILocation(line: 277, column: 7, scope: !3188, inlinedAt: !3117)
!3191 = !DILocation(line: 278, column: 19, scope: !3192, inlinedAt: !3117)
!3192 = distinct !DILexicalBlock(scope: !3187, file: !2, line: 278, column: 12)
!3193 = !DILocation(line: 278, column: 12, scope: !3192, inlinedAt: !3117)
!3194 = !DILocation(line: 278, column: 12, scope: !3187, inlinedAt: !3117)
!3195 = !DILocation(line: 279, column: 11, scope: !3192, inlinedAt: !3117)
!3196 = !DILocation(line: 277, column: 49, scope: !3187, inlinedAt: !3117)
!3197 = distinct !{!3197, !3190, !3198}
!3198 = !DILocation(line: 279, column: 43, scope: !3188, inlinedAt: !3117)
!3199 = !DILocation(line: 280, column: 19, scope: !3112, inlinedAt: !3117)
!3200 = !DILocation(line: 280, column: 7, scope: !3112, inlinedAt: !3117)
!3201 = !DILocation(line: 281, column: 5, scope: !3112, inlinedAt: !3117)
!3202 = !DILocation(line: 282, column: 15, scope: !3203, inlinedAt: !3117)
!3203 = distinct !DILexicalBlock(scope: !3114, file: !2, line: 282, column: 8)
!3204 = !DILocation(line: 282, column: 8, scope: !3203, inlinedAt: !3117)
!3205 = !DILocation(line: 282, column: 8, scope: !3114, inlinedAt: !3117)
!3206 = !DILocation(line: 284, column: 7, scope: !3207, inlinedAt: !3117)
!3207 = distinct !DILexicalBlock(scope: !3203, file: !2, line: 283, column: 5)
!3208 = !DILocation(line: 285, column: 18, scope: !3207, inlinedAt: !3117)
!3209 = !DILocation(line: 286, column: 5, scope: !3207, inlinedAt: !3117)
!3210 = !DILocation(line: 288, column: 27, scope: !3114, inlinedAt: !3117)
!3211 = !DILocation(line: 0, scope: !1731, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 288, column: 5, scope: !3114, inlinedAt: !3117)
!3213 = !DILocation(line: 302, column: 3, scope: !1731, inlinedAt: !3212)
!3214 = !DILocation(line: 304, column: 45, scope: !1737, inlinedAt: !3212)
!3215 = !DILocation(line: 0, scope: !1737, inlinedAt: !3212)
!3216 = !DILocation(line: 305, column: 21, scope: !1743, inlinedAt: !3212)
!3217 = !DILocation(line: 305, column: 8, scope: !1743, inlinedAt: !3212)
!3218 = !DILocation(line: 305, column: 8, scope: !1737, inlinedAt: !3212)
!3219 = !DILocation(line: 307, column: 7, scope: !1747, inlinedAt: !3212)
!3220 = !DILocation(line: 311, column: 5, scope: !1747, inlinedAt: !3212)
!3221 = !DILocation(line: 312, column: 5, scope: !1737, inlinedAt: !3212)
!3222 = distinct !{!3222, !3213, !3223}
!3223 = !DILocation(line: 314, column: 3, scope: !1731, inlinedAt: !3212)
!3224 = !DILocation(line: 289, column: 13, scope: !3225, inlinedAt: !3117)
!3225 = distinct !DILexicalBlock(scope: !3114, file: !2, line: 289, column: 6)
!3226 = !DILocation(line: 289, column: 6, scope: !3225, inlinedAt: !3117)
!3227 = !DILocation(line: 289, column: 6, scope: !3114, inlinedAt: !3117)
!3228 = !DILocation(line: 291, column: 5, scope: !3229, inlinedAt: !3117)
!3229 = distinct !DILexicalBlock(scope: !3225, file: !2, line: 290, column: 3)
!3230 = !DILocation(line: 293, column: 3, scope: !3229, inlinedAt: !3117)
!3231 = !DILocation(line: 295, column: 5, scope: !3114, inlinedAt: !3117)
!3232 = !DILocation(line: 297, column: 3, scope: !3114, inlinedAt: !3117)
!3233 = !DILocation(line: 1255, column: 3, scope: !2901)
!3234 = !DILocation(line: 1257, column: 3, scope: !2901)
!3235 = !DILocation(line: 1258, column: 1, scope: !2901)
!3236 = !DISubprogram(name: "FmoFinit", scope: !3237, file: !3237, line: 22, type: !2096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3237 = !DIFile(filename: "ldecod_src/inc/fmo.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e523ba0e56927122224f6df7d246a7ea")
!3238 = !DISubprogram(name: "close", scope: !3239, file: !3239, line: 358, type: !3240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3239 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!13, !13}
!3242 = !DISubprogram(name: "ercClose", scope: !533, file: !533, line: 117, type: !3243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{null, !878, !3245}
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_typedef, name: "ercVariables_t", file: !533, line: 108, baseType: !829)
!3247 = !DISubprogram(name: "CleanUpPPS", scope: !2790, file: !2790, line: 49, type: !883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3248 = !DISubprogram(name: "reset_subset_sps", scope: !2790, file: !2790, line: 63, type: !3249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{null, !398}
!3251 = !DISubprogram(name: "free_dpb", scope: !538, file: !538, line: 213, type: !3252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{null, !1447}
!3254 = !DISubprogram(name: "uninit_out_buffer", scope: !2788, file: !2788, line: 21, type: !883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3255 = !DISubprogram(name: "AllocNALU", scope: !51, file: !51, line: 77, type: !3256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!889, !13}
!3258 = !DISubprogram(name: "AllocPPS", scope: !239, file: !239, line: 262, type: !3259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!237}
!3261 = !DISubprogram(name: "init_tone_mapping_sei", scope: !953, file: !953, line: 141, type: !3262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{null, !1449}
!3264 = !DISubprogram(name: "fopen", scope: !1722, file: !1722, line: 258, type: !3265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!1389, !1726, !1726}
!3267 = !DISubprogram(name: "fclose", scope: !1722, file: !1722, line: 178, type: !3268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!13, !1389}
!3270 = !DISubprogram(name: "time", scope: !3271, file: !3271, line: 76, type: !3272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3271 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!1452, !1451}
!3274 = !DISubprogram(name: "localtime", scope: !3271, file: !3271, line: 136, type: !3275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!1570, !3277}
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1452)
!3279 = !DISubprogram(name: "strftime", scope: !3271, file: !3271, line: 100, type: !3280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!1436, !1958, !1436, !1726, !3282}
!3282 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3283)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1571)
!3285 = !DISubprogram(name: "free_annex_b", scope: !858, file: !858, line: 35, type: !883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3286 = distinct !DISubprogram(name: "free_slice", scope: !2, file: !2, line: 790, type: !3287, scopeLine: 791, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3289)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{null, !503}
!3289 = !{!3290, !3291, !3292}
!3290 = !DILocalVariable(name: "currSlice", arg: 1, scope: !3286, file: !2, line: 790, type: !503)
!3291 = !DILocalVariable(name: "i", scope: !3286, file: !2, line: 792, type: !13)
!3292 = !DILocalVariable(name: "tmp_drpm", scope: !3293, file: !2, line: 824, type: !630)
!3293 = distinct !DILexicalBlock(scope: !3286, file: !2, line: 823, column: 3)
!3294 = !DILocation(line: 0, scope: !3286)
!3295 = !DILocation(line: 793, column: 3, scope: !3286)
!3296 = !DILocation(line: 795, column: 28, scope: !3286)
!3297 = !DILocation(line: 795, column: 3, scope: !3286)
!3298 = !DILocation(line: 796, column: 28, scope: !3286)
!3299 = !DILocation(line: 796, column: 3, scope: !3286)
!3300 = !DILocation(line: 797, column: 28, scope: !3286)
!3301 = !DILocation(line: 797, column: 3, scope: !3286)
!3302 = !DILocation(line: 798, column: 28, scope: !3286)
!3303 = !DILocation(line: 798, column: 3, scope: !3286)
!3304 = !DILocation(line: 801, column: 28, scope: !3286)
!3305 = !DILocation(line: 801, column: 3, scope: !3286)
!3306 = !DILocation(line: 802, column: 28, scope: !3286)
!3307 = !DILocation(line: 802, column: 3, scope: !3286)
!3308 = !DILocation(line: 803, column: 28, scope: !3286)
!3309 = !DILocation(line: 803, column: 3, scope: !3286)
!3310 = !DILocation(line: 805, column: 29, scope: !3286)
!3311 = !DILocation(line: 0, scope: !1959, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 805, column: 3, scope: !3286)
!3313 = !DILocation(line: 703, column: 17, scope: !1972, inlinedAt: !3312)
!3314 = !DILocation(line: 703, column: 28, scope: !1972, inlinedAt: !3312)
!3315 = !DILocation(line: 703, column: 5, scope: !1972, inlinedAt: !3312)
!3316 = !DILocation(line: 704, column: 17, scope: !1972, inlinedAt: !3312)
!3317 = !DILocation(line: 704, column: 5, scope: !1972, inlinedAt: !3312)
!3318 = !DILocation(line: 703, column: 11, scope: !1972, inlinedAt: !3312)
!3319 = !DILocation(line: 706, column: 3, scope: !1959, inlinedAt: !3312)
!3320 = !DILocation(line: 810, column: 43, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3286, file: !2, line: 808, column: 3)
!3322 = !DILocation(line: 810, column: 5, scope: !3321)
!3323 = !DILocation(line: 811, column: 44, scope: !3321)
!3324 = !DILocation(line: 811, column: 5, scope: !3321)
!3325 = !DILocation(line: 816, column: 9, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3327, file: !2, line: 816, column: 9)
!3327 = distinct !DILexicalBlock(scope: !3328, file: !2, line: 815, column: 3)
!3328 = distinct !DILexicalBlock(scope: !3329, file: !2, line: 814, column: 3)
!3329 = distinct !DILexicalBlock(scope: !3286, file: !2, line: 814, column: 3)
!3330 = !DILocation(line: 816, column: 9, scope: !3327)
!3331 = !DILocation(line: 818, column: 7, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3326, file: !2, line: 817, column: 5)
!3333 = !DILocation(line: 819, column: 27, scope: !3332)
!3334 = !DILocation(line: 820, column: 5, scope: !3332)
!3335 = !DILocation(line: 822, column: 21, scope: !3286)
!3336 = !DILocation(line: 822, column: 3, scope: !3286)
!3337 = !DILocation(line: 0, scope: !3293)
!3338 = !DILocation(line: 825, column: 53, scope: !3293)
!3339 = !DILocation(line: 825, column: 42, scope: !3293)
!3340 = !DILocation(line: 826, column: 5, scope: !3293)
!3341 = distinct !{!3341, !3336, !3342}
!3342 = !DILocation(line: 827, column: 3, scope: !3286)
!3343 = !DILocation(line: 829, column: 3, scope: !3286)
!3344 = !DILocation(line: 831, column: 1, scope: !3286)
!3345 = !DISubprogram(name: "FreeNALU", scope: !51, file: !51, line: 80, type: !3346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{null, !889}
!3348 = !DISubprogram(name: "FreePPS", scope: !239, file: !239, line: 265, type: !3349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{null, !237}
!3351 = !DISubprogram(name: "free_pred_mem", scope: !2089, file: !2089, line: 24, type: !3287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3352 = !DISubprogram(name: "free_mem3Dint", scope: !2077, file: !2077, line: 134, type: !3353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{null, !421}
!3355 = !DISubprogram(name: "free_mem4Dint", scope: !2077, file: !2077, line: 135, type: !3356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{null, !1222}
!3358 = !DISubprogram(name: "delete_contexts_MotionInfo", scope: !2070, file: !2070, line: 26, type: !3359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{null, !1102}
!3361 = !DISubprogram(name: "delete_contexts_TextureInfo", scope: !2070, file: !2070, line: 27, type: !3362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{null, !1130}
