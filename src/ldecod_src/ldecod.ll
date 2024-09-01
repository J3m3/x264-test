; ModuleID = 'ldecod_src/ldecod.c'
source_filename = "ldecod_src/ldecod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datapartition = type { ptr, %struct.DecodingEnvironment, ptr }
%struct.DecodingEnvironment = type { i32, i32, i32, ptr, ptr }
%struct.BlockPos = type { i16, i16 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@errortext = dso_local global [300 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [60 x i8] c"AllocPartition: Memory allocation for Data Partition failed\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"AllocPartition: Memory allocation for Bitstream failed\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"AllocPartition: Memory allocation for streamBuffer failed\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"Memory allocation for Slice datastruct in NAL-mode %d failed\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"malloc_slice: currSlice->listX[i]\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"init_global_buffers: p_Vid->mb_data\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"init_global_buffers: p_Vid->intra_block_JV\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"init_global_buffers: p_Vid->intra_block\00", align 1
@PicPos = dso_local local_unnamed_addr global ptr null, align 8
@.str.9 = private unnamed_addr constant [28 x i8] c"init_global_buffers: PicPos\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"init_global_buffers: p_Vid->siblock_JV\00", align 1
@p_Dec = dso_local local_unnamed_addr global ptr null, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [62 x i8] c" Input reference file                   : %s does not exist \0A\00", align 1
@.str.13 = private unnamed_addr constant [72 x i8] c"                                          SNR values are not available\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"alloc_decoder: p_Dec\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"alloc_video_params: p_Vid\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"alloc_video_params: p_Vid->old_slice\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"alloc_video_params: p_Vid->snr\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"alloc_video_params: p_Vid->p_Dpb_legacy\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"alloc_video_params: p_Vid->p_Dpb_layer[i]\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"alloc_video_params: (*p_Vid)->seiToneMapping\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"alloc_video_params: p_Vid->ppSliceList\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"alloc_params: p_Inp\00", align 1
@Report.yuv_formats = internal constant [4 x [4 x i8]] [[4 x i8] c"400\00", [4 x i8] c"420\00", [4 x i8] c"422\00", [4 x i8] c"444\00"], align 16
@.str.23 = private unnamed_addr constant [76 x i8] c"-------------------- Average SNR all frames ------------------------------\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c" SNR Y(dB)           : %5.2f\0A\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c" SNR U(dB)           : %5.2f\0A\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c" SNR V(dB)           : %5.2f\0A\00", align 1
@.str.27 = private unnamed_addr constant [76 x i8] c"--------------------------------------------------------------------------\0A\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c" Exit JM %s decoder, ver %s \00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"17 (FRExt)\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"17.1\00", align 1
@.str.32 = private unnamed_addr constant [77 x i8] c"\0A----------------------- Decoding Completed -------------------------------\0A\00", align 1
@.str.33 = private unnamed_addr constant [47 x i8] c" Output status file                     : %s \0A\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"log.dec\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"Error open file %s for appending\00", align 1
@.str.39 = private unnamed_addr constant [118 x i8] c" -------------------------------------------------------------------------------------------------------------------\0A\00", align 1
@.str.40 = private unnamed_addr constant [94 x i8] c"|  Decoder statistics. This file is made first time, later runs are appended               |\0A\00", align 1
@.str.41 = private unnamed_addr constant [119 x i8] c" ------------------------------------------------------------------------------------------------------------------- \0A\00", align 1
@.str.42 = private unnamed_addr constant [119 x i8] c"|   ver  | Date  | Time  |    Sequence        |#Img| Format  | YUV |Coding|SNRY 1|SNRU 1|SNRV 1|SNRY N|SNRU N|SNRV N|\0A\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"|%s/%-4s\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"(FRExt)\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"%d-%b-%Y\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"| %1.5s |\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"%20.20s|\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"%3d |\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"%4dx%-4d|\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c" %s |\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c" CAVLC|\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c" CABAC|\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"%6.3f|\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"dataDec.txt\00", align 1
@.str.56 = private unnamed_addr constant [84 x i8] c"%3d %2d %2d %2.2f %2.2f %2.2f %5d %2.2f %2.2f %2.2f %5d %2.2f %2.2f %2.2f %5d %.3f\0A\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @error(ptr noundef %text, i32 noundef %code) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @stderr, align 8
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %text) #16
  tail call void @exit(i32 noundef %code) #17
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @FreeDecPicList(ptr noundef %pDecPicList) local_unnamed_addr #3 {
entry:
  %tobool.not11 = icmp eq ptr %pDecPicList, null
  br i1 %tobool.not11, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %pDecPicList.addr.012 = phi ptr [ %0, %if.end ], [ %pDecPicList, %entry ]
  %pNext = getelementptr inbounds i8, ptr %pDecPicList.addr.012, i64 72
  %0 = load ptr, ptr %pNext, align 8
  %pY = getelementptr inbounds i8, ptr %pDecPicList.addr.012, i64 24
  %1 = load ptr, ptr %pY, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  tail call void @free(ptr noundef nonnull %1) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  tail call void @free(ptr noundef nonnull %pDecPicList.addr.012) #18
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @init_frext(ptr nocapture noundef %p_Vid) local_unnamed_addr #3 {
entry:
  %bitdepth_luma = getelementptr inbounds i8, ptr %p_Vid, i64 849040
  %0 = load i16, ptr %bitdepth_luma, align 8
  %conv = sext i16 %0 to i32
  %1 = mul nsw i32 %conv, 6
  %mul = add nsw i32 %1, -48
  %bitdepth_luma_qp_scale = getelementptr inbounds i8, ptr %p_Vid, i64 849052
  store i32 %mul, ptr %bitdepth_luma_qp_scale, align 4
  %bitdepth_chroma = getelementptr inbounds i8, ptr %p_Vid, i64 849042
  %2 = load i16, ptr %bitdepth_chroma, align 2
  %cmp = icmp sgt i16 %0, %2
  %active_sps30.phi.trans.insert.phi.trans.insert = getelementptr inbounds i8, ptr %p_Vid, i64 16
  %.pre.pre = load ptr, ptr %active_sps30.phi.trans.insert.phi.trans.insert, align 8
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %chroma_format_idc = getelementptr inbounds i8, ptr %.pre.pre, i64 36
  %3 = load i32, ptr %chroma_format_idc, align 4
  %cmp5 = icmp eq i32 %3, 0
  %spec.select = select i1 %cmp5, i16 %0, i16 %2
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false, %entry
  %.sink = phi i16 [ %0, %entry ], [ %spec.select, %lor.lhs.false ]
  %cmp13 = icmp sgt i16 %.sink, 8
  %cond15 = select i1 %cmp13, i32 16, i32 8
  %pic_unit_bitsize_on_disk16 = getelementptr inbounds i8, ptr %p_Vid, i64 849036
  store i32 %cond15, ptr %pic_unit_bitsize_on_disk16, align 4
  %sub19 = add nsw i32 %conv, -1
  %shl = shl nuw i32 1, %sub19
  %dc_pred_value_comp = getelementptr inbounds i8, ptr %p_Vid, i64 849060
  store i32 %shl, ptr %dc_pred_value_comp, align 4
  %conv21291 = zext nneg i16 %0 to i32
  %notmask = shl nsw i32 -1, %conv21291
  %sub23 = xor i32 %notmask, -1
  %max_pel_value_comp = getelementptr inbounds i8, ptr %p_Vid, i64 849072
  store i32 %sub23, ptr %max_pel_value_comp, align 8
  %mb_size = getelementptr inbounds i8, ptr %p_Vid, i64 849124
  %arrayidx26 = getelementptr inbounds i8, ptr %p_Vid, i64 849128
  store i32 16, ptr %arrayidx26, align 4
  store i32 16, ptr %mb_size, align 4
  %chroma_format_idc31 = getelementptr inbounds i8, ptr %.pre.pre, i64 36
  %4 = load i32, ptr %chroma_format_idc31, align 4
  %cmp32.not = icmp eq i32 %4, 0
  br i1 %cmp32.not, label %if.else117, label %if.then34

if.then34:                                        ; preds = %if.end
  %conv36 = sext i16 %2 to i32
  %5 = mul nsw i32 %conv36, 6
  %mul38 = add nsw i32 %5, -48
  %bitdepth_chroma_qp_scale = getelementptr inbounds i8, ptr %p_Vid, i64 849056
  store i32 %mul38, ptr %bitdepth_chroma_qp_scale, align 8
  %sub41 = add nsw i32 %conv36, -1
  %shl42 = shl nuw i32 1, %sub41
  %arrayidx44 = getelementptr inbounds i8, ptr %p_Vid, i64 849064
  store i32 %shl42, ptr %arrayidx44, align 4
  %arrayidx48 = getelementptr inbounds i8, ptr %p_Vid, i64 849068
  store i32 %shl42, ptr %arrayidx48, align 4
  %conv50292 = zext nneg i16 %2 to i32
  %notmask293 = shl nsw i32 -1, %conv50292
  %sub52 = xor i32 %notmask293, -1
  %arrayidx54 = getelementptr inbounds i8, ptr %p_Vid, i64 849076
  store i32 %sub52, ptr %arrayidx54, align 4
  %arrayidx60 = getelementptr inbounds i8, ptr %p_Vid, i64 849080
  store i32 %sub52, ptr %arrayidx60, align 8
  %6 = load i32, ptr %chroma_format_idc31, align 4
  %shl63 = shl nuw i32 1, %6
  %and = and i32 %shl63, -2
  %num_blk8x8_uv = getelementptr inbounds i8, ptr %p_Vid, i64 849096
  store i32 %and, ptr %num_blk8x8_uv, align 8
  %shr = ashr i32 %shl63, 1
  %num_uv_blocks = getelementptr inbounds i8, ptr %p_Vid, i64 849100
  store i32 %shr, ptr %num_uv_blocks, align 4
  %shl66 = shl i32 %and, 1
  %num_cdc_coeff = getelementptr inbounds i8, ptr %p_Vid, i64 849104
  store i32 %shl66, ptr %num_cdc_coeff, align 8
  %7 = load i32, ptr %chroma_format_idc31, align 4
  %8 = add i32 %7, -1
  %9 = icmp ult i32 %8, 2
  %cond75 = select i1 %9, i32 8, i32 16
  %mb_cr_size_x = getelementptr inbounds i8, ptr %p_Vid, i64 849108
  store i32 %cond75, ptr %mb_cr_size_x, align 4
  %arrayidx77 = getelementptr inbounds i8, ptr %p_Vid, i64 849140
  store i32 %cond75, ptr %arrayidx77, align 4
  %arrayidx80 = getelementptr inbounds i8, ptr %p_Vid, i64 849132
  store i32 %cond75, ptr %arrayidx80, align 4
  %10 = load i32, ptr %chroma_format_idc31, align 4
  %11 = and i32 %10, -2
  %.not = icmp eq i32 %11, 2
  %cond92 = select i1 %.not, i32 16, i32 8
  %mb_cr_size_y = getelementptr inbounds i8, ptr %p_Vid, i64 849112
  store i32 %cond92, ptr %mb_cr_size_y, align 8
  %arrayidx95 = getelementptr inbounds i8, ptr %p_Vid, i64 849144
  store i32 %cond92, ptr %arrayidx95, align 4
  %arrayidx98 = getelementptr inbounds i8, ptr %p_Vid, i64 849136
  store i32 %cond92, ptr %arrayidx98, align 4
  %cond102 = select i1 %9, i32 7, i32 3
  %subpel_x = getelementptr inbounds i8, ptr %p_Vid, i64 849196
  store i32 %cond102, ptr %subpel_x, align 4
  %cond106 = select i1 %.not, i32 3, i32 7
  %subpel_y = getelementptr inbounds i8, ptr %p_Vid, i64 849200
  store i32 %cond106, ptr %subpel_y, align 8
  %cond110 = select i1 %9, i32 3, i32 2
  %cond114 = select i1 %.not, i32 2, i32 3
  %add = add nuw nsw i32 %cond114, %cond110
  %12 = lshr exact i32 %cond75, 2
  %13 = lshr exact i32 %cond92, 2
  br label %if.end145

if.else117:                                       ; preds = %if.end
  %bitdepth_chroma_qp_scale118 = getelementptr inbounds i8, ptr %p_Vid, i64 849056
  store i32 0, ptr %bitdepth_chroma_qp_scale118, align 8
  %arrayidx120 = getelementptr inbounds i8, ptr %p_Vid, i64 849076
  store i32 0, ptr %arrayidx120, align 4
  %arrayidx122 = getelementptr inbounds i8, ptr %p_Vid, i64 849080
  store i32 0, ptr %arrayidx122, align 8
  %num_blk8x8_uv123 = getelementptr inbounds i8, ptr %p_Vid, i64 849096
  %arrayidx131 = getelementptr inbounds i8, ptr %p_Vid, i64 849132
  %subpel_x140 = getelementptr inbounds i8, ptr %p_Vid, i64 849196
  store i32 0, ptr %subpel_x140, align 4
  %subpel_y141 = getelementptr inbounds i8, ptr %p_Vid, i64 849200
  store i32 0, ptr %subpel_y141, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %num_blk8x8_uv123, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %arrayidx131, i8 0, i64 16, i1 false)
  br label %if.end145

if.end145:                                        ; preds = %if.else117, %if.then34
  %shr168 = phi i32 [ 0, %if.else117 ], [ %13, %if.then34 ]
  %shr158 = phi i32 [ 0, %if.else117 ], [ %12, %if.then34 ]
  %cond110.sink = phi i32 [ 0, %if.else117 ], [ %cond110, %if.then34 ]
  %cond114.sink = phi i32 [ 0, %if.else117 ], [ %cond114, %if.then34 ]
  %add.sink = phi i32 [ 0, %if.else117 ], [ %add, %if.then34 ]
  %14 = getelementptr inbounds i8, ptr %p_Vid, i64 849204
  store i32 %cond110.sink, ptr %14, align 4
  %15 = getelementptr inbounds i8, ptr %p_Vid, i64 849208
  store i32 %cond114.sink, ptr %15, align 8
  %16 = getelementptr inbounds i8, ptr %p_Vid, i64 849212
  store i32 %add.sink, ptr %16, align 4
  %mb_size_blk = getelementptr inbounds i8, ptr %p_Vid, i64 849148
  %arrayidx151 = getelementptr inbounds i8, ptr %p_Vid, i64 849152
  store i32 4, ptr %arrayidx151, align 4
  store i32 4, ptr %mb_size_blk, align 4
  %arrayidx156 = getelementptr inbounds i8, ptr %p_Vid, i64 849132
  %arrayidx160 = getelementptr inbounds i8, ptr %p_Vid, i64 849164
  store i32 %shr158, ptr %arrayidx160, align 4
  %arrayidx163 = getelementptr inbounds i8, ptr %p_Vid, i64 849156
  store i32 %shr158, ptr %arrayidx163, align 4
  %arrayidx167 = getelementptr inbounds i8, ptr %p_Vid, i64 849136
  %arrayidx171 = getelementptr inbounds i8, ptr %p_Vid, i64 849168
  store i32 %shr168, ptr %arrayidx171, align 4
  %arrayidx174 = getelementptr inbounds i8, ptr %p_Vid, i64 849160
  store i32 %shr168, ptr %arrayidx174, align 4
  %call = tail call i32 @CeilLog2_sf(i32 noundef 16) #18
  %mb_size_shift = getelementptr inbounds i8, ptr %p_Vid, i64 849172
  %arrayidx179 = getelementptr inbounds i8, ptr %p_Vid, i64 849176
  store i32 %call, ptr %arrayidx179, align 4
  store i32 %call, ptr %mb_size_shift, align 4
  %17 = load i32, ptr %arrayidx156, align 4
  %call186 = tail call i32 @CeilLog2_sf(i32 noundef %17) #18
  %arrayidx188 = getelementptr inbounds i8, ptr %p_Vid, i64 849188
  store i32 %call186, ptr %arrayidx188, align 4
  %arrayidx191 = getelementptr inbounds i8, ptr %p_Vid, i64 849180
  store i32 %call186, ptr %arrayidx191, align 4
  %18 = load i32, ptr %arrayidx167, align 4
  %call196 = tail call i32 @CeilLog2_sf(i32 noundef %18) #18
  %arrayidx199 = getelementptr inbounds i8, ptr %p_Vid, i64 849192
  store i32 %call196, ptr %arrayidx199, align 4
  %arrayidx202 = getelementptr inbounds i8, ptr %p_Vid, i64 849184
  store i32 %call196, ptr %arrayidx202, align 4
  ret void
}

declare i32 @CeilLog2_sf(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @AllocPartition(i32 noundef %n) local_unnamed_addr #3 {
entry:
  %conv = sext i32 %n to i64
  %call = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 48) #19
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp333 = icmp sgt i32 %n, 0
  br i1 %cmp333, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext nneg i32 %n to i64
  br label %for.body

if.then:                                          ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) @errortext, ptr noundef nonnull align 1 dereferenceable(60) @.str.1, i64 60, i1 false)
  %0 = load ptr, ptr @stderr, align 8
  %call.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @errortext) #16
  tail call void @exit(i32 noundef 100) #17
  unreachable

for.cond:                                         ; preds = %if.end11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.cond ]
  %arrayidx = getelementptr inbounds %struct.datapartition, ptr %call, i64 %indvars.iv
  %call5 = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #19
  store ptr %call5, ptr %arrayidx, align 8
  %cmp7 = icmp eq ptr %call5, null
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %for.body
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(55) @errortext, ptr noundef nonnull align 1 dereferenceable(55) @.str.2, i64 55, i1 false)
  %1 = load ptr, ptr @stderr, align 8
  %call.i29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @errortext) #16
  tail call void @exit(i32 noundef 100) #17
  unreachable

if.end11:                                         ; preds = %for.body
  %call12 = tail call noalias dereferenceable_or_null(8000000) ptr @calloc(i64 noundef 8000000, i64 noundef 1) #19
  %streamBuffer = getelementptr inbounds i8, ptr %call5, i64 16
  store ptr %call12, ptr %streamBuffer, align 8
  %cmp16 = icmp eq ptr %call12, null
  br i1 %cmp16, label %if.then18, label %for.cond

if.then18:                                        ; preds = %if.end11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(58) @errortext, ptr noundef nonnull align 1 dereferenceable(58) @.str.3, i64 58, i1 false)
  %2 = load ptr, ptr @stderr, align 8
  %call.i31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @errortext) #16
  tail call void @exit(i32 noundef 100) #17
  unreachable

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  ret ptr %call
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @FreePartition(ptr nocapture noundef %dp, i32 noundef %n) local_unnamed_addr #3 {
entry:
  %cmp9 = icmp sgt i32 %n, 0
  br i1 %cmp9, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext nneg i32 %n to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds %struct.datapartition, ptr %dp, i64 %indvars.iv
  %0 = load ptr, ptr %arrayidx, align 8
  %streamBuffer = getelementptr inbounds i8, ptr %0, i64 16
  %1 = load ptr, ptr %streamBuffer, align 8
  tail call void @free(ptr noundef %1) #18
  %2 = load ptr, ptr %arrayidx, align 8
  tail call void @free(ptr noundef %2) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  tail call void @free(ptr noundef %dp) #18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @malloc_slice(ptr nocapture noundef readonly %p_Inp, ptr nocapture noundef readnone %p_Vid) local_unnamed_addr #3 {
entry:
  %call = tail call noalias dereferenceable_or_null(13648) ptr @calloc(i64 noundef 1, i64 noundef 13648) #19
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %FileFormat = getelementptr inbounds i8, ptr %p_Inp, i64 768
  %0 = load i32, ptr %FileFormat, align 8
  %call1 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.4, i32 noundef %0) #18
  %1 = load ptr, ptr @stderr, align 8
  %call.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @errortext) #16
  tail call void @exit(i32 noundef 100) #17
  unreachable

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @create_contexts_MotionInfo() #18
  %mot_ctx = getelementptr inbounds i8, ptr %call, i64 320
  store ptr %call2, ptr %mot_ctx, align 8
  %call3 = tail call ptr @create_contexts_TextureInfo() #18
  %tex_ctx = getelementptr inbounds i8, ptr %call, i64 328
  store ptr %call3, ptr %tex_ctx, align 8
  %max_part_nr = getelementptr inbounds i8, ptr %call, i64 196
  store i32 3, ptr %max_part_nr, align 4
  %call5 = tail call ptr @AllocPartition(i32 noundef 3)
  %partArr = getelementptr inbounds i8, ptr %call, i64 312
  store ptr %call5, ptr %partArr, align 8
  %wp_weight = getelementptr inbounds i8, ptr %call, i64 13280
  %call6 = tail call i32 @get_mem3Dint(ptr noundef nonnull %wp_weight, i32 noundef 2, i32 noundef 32, i32 noundef 3) #18
  %wp_offset = getelementptr inbounds i8, ptr %call, i64 13288
  %call7 = tail call i32 @get_mem3Dint(ptr noundef nonnull %wp_offset, i32 noundef 6, i32 noundef 32, i32 noundef 3) #18
  %wbp_weight = getelementptr inbounds i8, ptr %call, i64 13296
  %call9 = tail call i32 @get_mem4Dint(ptr noundef nonnull %wbp_weight, i32 noundef 6, i32 noundef 32, i32 noundef 32, i32 noundef 3) #18
  %mb_pred = getelementptr inbounds i8, ptr %call, i64 1248
  %call11 = tail call i32 @get_mem3Dpel(ptr noundef nonnull %mb_pred, i32 noundef 3, i32 noundef 16, i32 noundef 16) #18
  %mb_rec = getelementptr inbounds i8, ptr %call, i64 1256
  %call13 = tail call i32 @get_mem3Dpel(ptr noundef nonnull %mb_rec, i32 noundef 3, i32 noundef 16, i32 noundef 16) #18
  %mb_rres = getelementptr inbounds i8, ptr %call, i64 1264
  %call15 = tail call i32 @get_mem3Dint(ptr noundef nonnull %mb_rres, i32 noundef 3, i32 noundef 16, i32 noundef 16) #18
  %cof = getelementptr inbounds i8, ptr %call, i64 1272
  %call17 = tail call i32 @get_mem3Dint(ptr noundef nonnull %cof, i32 noundef 3, i32 noundef 16, i32 noundef 16) #18
  %call19 = tail call i32 @allocate_pred_mem(ptr noundef nonnull %call) #18
  %view_id = getelementptr inbounds i8, ptr %call, i64 1176
  store i32 -1, ptr %view_id, align 8
  %inter_view_flag = getelementptr inbounds i8, ptr %call, i64 1180
  store i32 0, ptr %inter_view_flag, align 4
  %anchor_pic_flag = getelementptr inbounds i8, ptr %call, i64 1184
  store i32 0, ptr %anchor_pic_flag, align 8
  %ref_flag = getelementptr inbounds i8, ptr %call, i64 13340
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %ref_flag, align 4
  %arrayidx.4 = getelementptr inbounds i8, ptr %call, i64 13356
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %arrayidx.4, align 4
  %arrayidx.8 = getelementptr inbounds i8, ptr %call, i64 13372
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %arrayidx.8, align 4
  %arrayidx.12 = getelementptr inbounds i8, ptr %call, i64 13388
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %arrayidx.12, align 4
  %arrayidx.16 = getelementptr inbounds i8, ptr %call, i64 13404
  store i32 1, ptr %arrayidx.16, align 4
  %listX = getelementptr inbounds i8, ptr %call, i64 264
  %call24 = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #19
  store ptr %call24, ptr %listX, align 8
  %cmp30 = icmp eq ptr %call24, null
  br i1 %cmp30, label %if.then31, label %for.inc33

if.then31:                                        ; preds = %if.end
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #18
  br label %for.inc33

for.inc33:                                        ; preds = %if.end, %if.then31
  %call24.1 = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #19
  %arrayidx26.1 = getelementptr inbounds i8, ptr %call, i64 272
  store ptr %call24.1, ptr %arrayidx26.1, align 8
  %cmp30.1 = icmp eq ptr %call24.1, null
  br i1 %cmp30.1, label %if.then31.1, label %for.inc33.1

if.then31.1:                                      ; preds = %for.inc33
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #18
  br label %for.inc33.1

for.inc33.1:                                      ; preds = %if.then31.1, %for.inc33
  %call24.2 = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #19
  %arrayidx26.2 = getelementptr inbounds i8, ptr %call, i64 280
  store ptr %call24.2, ptr %arrayidx26.2, align 8
  %cmp30.2 = icmp eq ptr %call24.2, null
  br i1 %cmp30.2, label %if.then31.2, label %for.inc33.2

if.then31.2:                                      ; preds = %for.inc33.1
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #18
  br label %for.inc33.2

for.inc33.2:                                      ; preds = %if.then31.2, %for.inc33.1
  %call24.3 = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #19
  %arrayidx26.3 = getelementptr inbounds i8, ptr %call, i64 288
  store ptr %call24.3, ptr %arrayidx26.3, align 8
  %cmp30.3 = icmp eq ptr %call24.3, null
  br i1 %cmp30.3, label %if.then31.3, label %for.inc33.3

if.then31.3:                                      ; preds = %for.inc33.2
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #18
  br label %for.inc33.3

for.inc33.3:                                      ; preds = %if.then31.3, %for.inc33.2
  %call24.4 = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #19
  %arrayidx26.4 = getelementptr inbounds i8, ptr %call, i64 296
  store ptr %call24.4, ptr %arrayidx26.4, align 8
  %cmp30.4 = icmp eq ptr %call24.4, null
  br i1 %cmp30.4, label %if.then31.4, label %for.inc33.4

if.then31.4:                                      ; preds = %for.inc33.3
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #18
  br label %for.inc33.4

for.inc33.4:                                      ; preds = %if.then31.4, %for.inc33.3
  %call24.5 = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #19
  %arrayidx26.5 = getelementptr inbounds i8, ptr %call, i64 304
  store ptr %call24.5, ptr %arrayidx26.5, align 8
  %cmp30.5 = icmp eq ptr %call24.5, null
  br i1 %cmp30.5, label %if.then31.5, label %for.inc33.5

if.then31.5:                                      ; preds = %for.inc33.4
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #18
  br label %for.inc33.5

for.inc33.5:                                      ; preds = %if.then31.5, %for.inc33.4
  %listXsize = getelementptr i8, ptr %call, i64 256
  br label %for.cond39.preheader

for.cond39.preheader:                             ; preds = %for.inc33.5, %for.cond39.preheader
  %indvars.iv = phi i64 [ 0, %for.inc33.5 ], [ %indvars.iv.next, %for.cond39.preheader ]
  %arrayidx44 = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %indvars.iv
  %2 = load ptr, ptr %arrayidx44, align 8
  store ptr null, ptr %2, align 8
  %3 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.1 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr null, ptr %arrayidx46.1, align 8
  %4 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.2 = getelementptr inbounds i8, ptr %4, i64 16
  store ptr null, ptr %arrayidx46.2, align 8
  %5 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.3 = getelementptr inbounds i8, ptr %5, i64 24
  store ptr null, ptr %arrayidx46.3, align 8
  %6 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.4 = getelementptr inbounds i8, ptr %6, i64 32
  store ptr null, ptr %arrayidx46.4, align 8
  %7 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.5 = getelementptr inbounds i8, ptr %7, i64 40
  store ptr null, ptr %arrayidx46.5, align 8
  %8 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.6 = getelementptr inbounds i8, ptr %8, i64 48
  store ptr null, ptr %arrayidx46.6, align 8
  %9 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.7 = getelementptr inbounds i8, ptr %9, i64 56
  store ptr null, ptr %arrayidx46.7, align 8
  %10 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.8 = getelementptr inbounds i8, ptr %10, i64 64
  store ptr null, ptr %arrayidx46.8, align 8
  %11 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.9 = getelementptr inbounds i8, ptr %11, i64 72
  store ptr null, ptr %arrayidx46.9, align 8
  %12 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.10 = getelementptr inbounds i8, ptr %12, i64 80
  store ptr null, ptr %arrayidx46.10, align 8
  %13 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.11 = getelementptr inbounds i8, ptr %13, i64 88
  store ptr null, ptr %arrayidx46.11, align 8
  %14 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.12 = getelementptr inbounds i8, ptr %14, i64 96
  store ptr null, ptr %arrayidx46.12, align 8
  %15 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.13 = getelementptr inbounds i8, ptr %15, i64 104
  store ptr null, ptr %arrayidx46.13, align 8
  %16 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.14 = getelementptr inbounds i8, ptr %16, i64 112
  store ptr null, ptr %arrayidx46.14, align 8
  %17 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.15 = getelementptr inbounds i8, ptr %17, i64 120
  store ptr null, ptr %arrayidx46.15, align 8
  %18 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.16 = getelementptr inbounds i8, ptr %18, i64 128
  store ptr null, ptr %arrayidx46.16, align 8
  %19 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.17 = getelementptr inbounds i8, ptr %19, i64 136
  store ptr null, ptr %arrayidx46.17, align 8
  %20 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.18 = getelementptr inbounds i8, ptr %20, i64 144
  store ptr null, ptr %arrayidx46.18, align 8
  %21 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.19 = getelementptr inbounds i8, ptr %21, i64 152
  store ptr null, ptr %arrayidx46.19, align 8
  %22 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.20 = getelementptr inbounds i8, ptr %22, i64 160
  store ptr null, ptr %arrayidx46.20, align 8
  %23 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.21 = getelementptr inbounds i8, ptr %23, i64 168
  store ptr null, ptr %arrayidx46.21, align 8
  %24 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.22 = getelementptr inbounds i8, ptr %24, i64 176
  store ptr null, ptr %arrayidx46.22, align 8
  %25 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.23 = getelementptr inbounds i8, ptr %25, i64 184
  store ptr null, ptr %arrayidx46.23, align 8
  %26 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.24 = getelementptr inbounds i8, ptr %26, i64 192
  store ptr null, ptr %arrayidx46.24, align 8
  %27 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.25 = getelementptr inbounds i8, ptr %27, i64 200
  store ptr null, ptr %arrayidx46.25, align 8
  %28 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.26 = getelementptr inbounds i8, ptr %28, i64 208
  store ptr null, ptr %arrayidx46.26, align 8
  %29 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.27 = getelementptr inbounds i8, ptr %29, i64 216
  store ptr null, ptr %arrayidx46.27, align 8
  %30 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.28 = getelementptr inbounds i8, ptr %30, i64 224
  store ptr null, ptr %arrayidx46.28, align 8
  %31 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.29 = getelementptr inbounds i8, ptr %31, i64 232
  store ptr null, ptr %arrayidx46.29, align 8
  %32 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.30 = getelementptr inbounds i8, ptr %32, i64 240
  store ptr null, ptr %arrayidx46.30, align 8
  %33 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.31 = getelementptr inbounds i8, ptr %33, i64 248
  store ptr null, ptr %arrayidx46.31, align 8
  %34 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.32 = getelementptr inbounds i8, ptr %34, i64 256
  store ptr null, ptr %arrayidx46.32, align 8
  %arrayidx51 = getelementptr inbounds [6 x i8], ptr %listXsize, i64 0, i64 %indvars.iv
  store i8 0, ptr %arrayidx51, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %for.end54, label %for.cond39.preheader

for.end54:                                        ; preds = %for.cond39.preheader
  ret ptr %call
}

declare ptr @create_contexts_MotionInfo() local_unnamed_addr #6

declare ptr @create_contexts_TextureInfo() local_unnamed_addr #6

declare i32 @get_mem3Dint(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @get_mem4Dint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @get_mem3Dpel(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @allocate_pred_mem(ptr noundef) local_unnamed_addr #6

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @init_global_buffers(ptr noundef %p_Vid) local_unnamed_addr #3 {
entry:
  %global_init_done = getelementptr inbounds i8, ptr %p_Vid, i64 856012
  %0 = load i32, ptr %global_init_done, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free_global_buffers(ptr noundef nonnull %p_Vid)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %imgY_ref = getelementptr inbounds i8, ptr %p_Vid, i64 856016
  %height = getelementptr inbounds i8, ptr %p_Vid, i64 848784
  %1 = load i32, ptr %height, align 8
  %width = getelementptr inbounds i8, ptr %p_Vid, i64 848780
  %2 = load i32, ptr %width, align 4
  %call = tail call i32 @get_mem2Dpel(ptr noundef nonnull %imgY_ref, i32 noundef %1, i32 noundef %2) #18
  %active_sps = getelementptr inbounds i8, ptr %p_Vid, i64 16
  %3 = load ptr, ptr %active_sps, align 8
  %chroma_format_idc = getelementptr inbounds i8, ptr %3, i64 36
  %4 = load i32, ptr %chroma_format_idc, align 4
  %cmp.not = icmp eq i32 %4, 0
  %imgUV_ref4 = getelementptr inbounds i8, ptr %p_Vid, i64 856024
  br i1 %cmp.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %height_cr = getelementptr inbounds i8, ptr %p_Vid, i64 848792
  %5 = load i32, ptr %height_cr, align 8
  %width_cr = getelementptr inbounds i8, ptr %p_Vid, i64 848788
  %6 = load i32, ptr %width_cr, align 4
  %call2 = tail call i32 @get_mem3Dpel(ptr noundef nonnull %imgUV_ref4, i32 noundef 2, i32 noundef %5, i32 noundef %6) #18
  %add3 = add nsw i32 %call2, %call
  br label %if.end5

if.else:                                          ; preds = %if.end
  store ptr null, ptr %imgUV_ref4, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then1
  %memory_size.0 = phi i32 [ %add3, %if.then1 ], [ %call, %if.else ]
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %p_Vid, i64 849280
  %7 = load i32, ptr %separate_colour_plane_flag, align 8
  %cmp6.not = icmp eq i32 %7, 0
  %FrameSizeInMbs15 = getelementptr inbounds i8, ptr %p_Vid, i64 849016
  br i1 %cmp6.not, label %if.else14, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end5
  %mb_data_JV = getelementptr inbounds i8, ptr %p_Vid, i64 848896
  %8 = load i32, ptr %FrameSizeInMbs15, align 8
  %conv = zext i32 %8 to i64
  %call9 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 480) #19
  store ptr %call9, ptr %mb_data_JV, align 8
  %cmp10 = icmp eq ptr %call9, null
  br i1 %cmp10, label %if.then12, label %for.inc

if.then12:                                        ; preds = %for.cond.preheader
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #18
  %.pre = load i32, ptr %FrameSizeInMbs15, align 8
  %.pre230 = zext i32 %.pre to i64
  br label %for.inc

for.inc:                                          ; preds = %for.cond.preheader, %if.then12
  %conv.1.pre-phi = phi i64 [ %conv, %for.cond.preheader ], [ %.pre230, %if.then12 ]
  %call9.1 = tail call noalias ptr @calloc(i64 noundef %conv.1.pre-phi, i64 noundef 480) #19
  %arrayidx.1 = getelementptr inbounds i8, ptr %p_Vid, i64 848904
  store ptr %call9.1, ptr %arrayidx.1, align 8
  %cmp10.1 = icmp eq ptr %call9.1, null
  br i1 %cmp10.1, label %if.then12.1, label %for.inc.1

if.then12.1:                                      ; preds = %for.inc
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #18
  %.pre224 = load i32, ptr %FrameSizeInMbs15, align 8
  %.pre231 = zext i32 %.pre224 to i64
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then12.1, %for.inc
  %conv.2.pre-phi = phi i64 [ %.pre231, %if.then12.1 ], [ %conv.1.pre-phi, %for.inc ]
  %call9.2 = tail call noalias ptr @calloc(i64 noundef %conv.2.pre-phi, i64 noundef 480) #19
  %arrayidx.2 = getelementptr inbounds i8, ptr %p_Vid, i64 848912
  store ptr %call9.2, ptr %arrayidx.2, align 8
  %cmp10.2 = icmp eq ptr %call9.2, null
  br i1 %cmp10.2, label %if.then12.2, label %for.inc.2

if.then12.2:                                      ; preds = %for.inc.1
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #18
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then12.2, %for.inc.1
  %mb_data = getelementptr inbounds i8, ptr %p_Vid, i64 848888
  store ptr null, ptr %mb_data, align 8
  br label %if.end23

if.else14:                                        ; preds = %if.end5
  %9 = load i32, ptr %FrameSizeInMbs15, align 8
  %conv16 = zext i32 %9 to i64
  %call17 = tail call noalias ptr @calloc(i64 noundef %conv16, i64 noundef 480) #19
  %mb_data18 = getelementptr inbounds i8, ptr %p_Vid, i64 848888
  store ptr %call17, ptr %mb_data18, align 8
  %cmp19 = icmp eq ptr %call17, null
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.else14
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #18
  br label %if.end23

if.end23:                                         ; preds = %if.else14, %if.then21, %for.inc.2
  %10 = load i32, ptr %separate_colour_plane_flag, align 8
  %cmp25.not = icmp eq i32 %10, 0
  %FrameSizeInMbs45 = getelementptr inbounds i8, ptr %p_Vid, i64 849016
  br i1 %cmp25.not, label %if.else44, label %for.cond28.preheader

for.cond28.preheader:                             ; preds = %if.end23
  %intra_block_JV = getelementptr inbounds i8, ptr %p_Vid, i64 848752
  %11 = load i32, ptr %FrameSizeInMbs45, align 8
  %conv33 = zext i32 %11 to i64
  %call34 = tail call noalias ptr @calloc(i64 noundef %conv33, i64 noundef 1) #19
  store ptr %call34, ptr %intra_block_JV, align 8
  %cmp37 = icmp eq ptr %call34, null
  br i1 %cmp37, label %if.then39, label %for.inc41

if.then39:                                        ; preds = %for.cond28.preheader
  tail call void @no_mem_exit(ptr noundef nonnull @.str.7) #18
  %.pre225 = load i32, ptr %FrameSizeInMbs45, align 8
  %.pre228 = zext i32 %.pre225 to i64
  br label %for.inc41

for.inc41:                                        ; preds = %for.cond28.preheader, %if.then39
  %conv33.1.pre-phi = phi i64 [ %conv33, %for.cond28.preheader ], [ %.pre228, %if.then39 ]
  %call34.1 = tail call noalias ptr @calloc(i64 noundef %conv33.1.pre-phi, i64 noundef 1) #19
  %arrayidx36.1 = getelementptr inbounds i8, ptr %p_Vid, i64 848760
  store ptr %call34.1, ptr %arrayidx36.1, align 8
  %cmp37.1 = icmp eq ptr %call34.1, null
  br i1 %cmp37.1, label %if.then39.1, label %for.inc41.1

if.then39.1:                                      ; preds = %for.inc41
  tail call void @no_mem_exit(ptr noundef nonnull @.str.7) #18
  %.pre226 = load i32, ptr %FrameSizeInMbs45, align 8
  %.pre229 = zext i32 %.pre226 to i64
  br label %for.inc41.1

for.inc41.1:                                      ; preds = %if.then39.1, %for.inc41
  %conv33.2.pre-phi = phi i64 [ %.pre229, %if.then39.1 ], [ %conv33.1.pre-phi, %for.inc41 ]
  %call34.2 = tail call noalias ptr @calloc(i64 noundef %conv33.2.pre-phi, i64 noundef 1) #19
  %arrayidx36.2 = getelementptr inbounds i8, ptr %p_Vid, i64 848768
  store ptr %call34.2, ptr %arrayidx36.2, align 8
  %cmp37.2 = icmp eq ptr %call34.2, null
  br i1 %cmp37.2, label %if.then39.2, label %for.inc41.2

if.then39.2:                                      ; preds = %for.inc41.1
  tail call void @no_mem_exit(ptr noundef nonnull @.str.7) #18
  br label %for.inc41.2

for.inc41.2:                                      ; preds = %if.then39.2, %for.inc41.1
  %intra_block = getelementptr inbounds i8, ptr %p_Vid, i64 848744
  store ptr null, ptr %intra_block, align 8
  br label %if.end53

if.else44:                                        ; preds = %if.end23
  %12 = load i32, ptr %FrameSizeInMbs45, align 8
  %conv46 = zext i32 %12 to i64
  %call47 = tail call noalias ptr @calloc(i64 noundef %conv46, i64 noundef 1) #19
  %intra_block48 = getelementptr inbounds i8, ptr %p_Vid, i64 848744
  store ptr %call47, ptr %intra_block48, align 8
  %cmp49 = icmp eq ptr %call47, null
  br i1 %cmp49, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.else44
  tail call void @no_mem_exit(ptr noundef nonnull @.str.8) #18
  br label %if.end53

if.end53:                                         ; preds = %if.else44, %if.then51, %for.inc41.2
  %FrameSizeInMbs54 = getelementptr inbounds i8, ptr %p_Vid, i64 849016
  %13 = load i32, ptr %FrameSizeInMbs54, align 8
  %add55 = add i32 %13, 1
  %conv56 = zext i32 %add55 to i64
  %call57 = tail call noalias ptr @calloc(i64 noundef %conv56, i64 noundef 4) #19
  store ptr %call57, ptr @PicPos, align 8
  %cmp58 = icmp eq ptr %call57, null
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end53
  tail call void @no_mem_exit(ptr noundef nonnull @.str.9) #18
  %.pre227 = load i32, ptr %FrameSizeInMbs54, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end53
  %14 = phi i32 [ %.pre227, %if.then60 ], [ %13, %if.end53 ]
  %cmp65.not211 = icmp slt i32 %14, 0
  br i1 %cmp65.not211, label %for.end77, label %for.body67.lr.ph

for.body67.lr.ph:                                 ; preds = %if.end61
  %PicWidthInMbs = getelementptr inbounds i8, ptr %p_Vid, i64 848996
  br label %for.body67

for.body67:                                       ; preds = %for.body67.lr.ph, %for.body67
  %indvars.iv = phi i64 [ 0, %for.body67.lr.ph ], [ %indvars.iv.next, %for.body67 ]
  %15 = load i32, ptr %PicWidthInMbs, align 4
  %16 = trunc nuw nsw i64 %indvars.iv to i32
  %rem = urem i32 %16, %15
  %conv68 = trunc i32 %rem to i16
  %17 = load ptr, ptr @PicPos, align 8
  %arrayidx70 = getelementptr inbounds %struct.BlockPos, ptr %17, i64 %indvars.iv
  store i16 %conv68, ptr %arrayidx70, align 2
  %18 = load i32, ptr %PicWidthInMbs, align 4
  %div = udiv i32 %16, %18
  %conv72 = trunc i32 %div to i16
  %19 = load ptr, ptr @PicPos, align 8
  %y = getelementptr inbounds %struct.BlockPos, ptr %19, i64 %indvars.iv, i32 1
  store i16 %conv72, ptr %y, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %20 = load i32, ptr %FrameSizeInMbs54, align 8
  %21 = sext i32 %20 to i64
  %cmp65.not.not = icmp slt i64 %indvars.iv, %21
  br i1 %cmp65.not.not, label %for.body67, label %for.end77

for.end77:                                        ; preds = %for.body67, %if.end61
  %22 = load i32, ptr %separate_colour_plane_flag, align 8
  %cmp79.not = icmp eq i32 %22, 0
  %FrameHeightInMbs96 = getelementptr inbounds i8, ptr %p_Vid, i64 849004
  br i1 %cmp79.not, label %if.else94, label %for.cond82.preheader

for.cond82.preheader:                             ; preds = %for.end77
  %ipredmode_JV = getelementptr inbounds i8, ptr %p_Vid, i64 848808
  %PicWidthInMbs88 = getelementptr inbounds i8, ptr %p_Vid, i64 848996
  %23 = load i32, ptr %FrameHeightInMbs96, align 4
  %mul = shl i32 %23, 2
  %24 = load i32, ptr %PicWidthInMbs88, align 4
  %mul89 = shl i32 %24, 2
  %call90 = tail call i32 @get_mem2D(ptr noundef nonnull %ipredmode_JV, i32 noundef %mul, i32 noundef %mul89) #18
  %arrayidx87.1 = getelementptr inbounds i8, ptr %p_Vid, i64 848816
  %25 = load i32, ptr %FrameHeightInMbs96, align 4
  %mul.1 = shl i32 %25, 2
  %26 = load i32, ptr %PicWidthInMbs88, align 4
  %mul89.1 = shl i32 %26, 2
  %call90.1 = tail call i32 @get_mem2D(ptr noundef nonnull %arrayidx87.1, i32 noundef %mul.1, i32 noundef %mul89.1) #18
  %arrayidx87.2 = getelementptr inbounds i8, ptr %p_Vid, i64 848824
  %27 = load i32, ptr %FrameHeightInMbs96, align 4
  %mul.2 = shl i32 %27, 2
  %28 = load i32, ptr %PicWidthInMbs88, align 4
  %mul89.2 = shl i32 %28, 2
  %call90.2 = tail call i32 @get_mem2D(ptr noundef nonnull %arrayidx87.2, i32 noundef %mul.2, i32 noundef %mul89.2) #18
  %ipredmode = getelementptr inbounds i8, ptr %p_Vid, i64 848800
  store ptr null, ptr %ipredmode, align 8
  br label %if.end102

if.else94:                                        ; preds = %for.end77
  %ipredmode95 = getelementptr inbounds i8, ptr %p_Vid, i64 848800
  %29 = load i32, ptr %FrameHeightInMbs96, align 4
  %mul97 = shl i32 %29, 2
  %PicWidthInMbs98 = getelementptr inbounds i8, ptr %p_Vid, i64 848996
  %30 = load i32, ptr %PicWidthInMbs98, align 4
  %mul99 = shl i32 %30, 2
  %call100 = tail call i32 @get_mem2D(ptr noundef nonnull %ipredmode95, i32 noundef %mul97, i32 noundef %mul99) #18
  %add101 = add nsw i32 %call100, %memory_size.0
  br label %if.end102

if.end102:                                        ; preds = %if.else94, %for.cond82.preheader
  %memory_size.1 = phi i32 [ %memory_size.0, %for.cond82.preheader ], [ %add101, %if.else94 ]
  %nz_coeff = getelementptr inbounds i8, ptr %p_Vid, i64 848832
  %31 = load i32, ptr %FrameSizeInMbs54, align 8
  %call104 = tail call i32 @get_mem4D(ptr noundef nonnull %nz_coeff, i32 noundef %31, i32 noundef 3, i32 noundef 4, i32 noundef 4) #18
  %add105 = add nsw i32 %call104, %memory_size.1
  %32 = load i32, ptr %separate_colour_plane_flag, align 8
  %cmp107.not = icmp eq i32 %32, 0
  %FrameHeightInMbs131 = getelementptr inbounds i8, ptr %p_Vid, i64 849004
  br i1 %cmp107.not, label %if.else129, label %for.cond110.preheader

for.cond110.preheader:                            ; preds = %if.end102
  %siblock_JV = getelementptr inbounds i8, ptr %p_Vid, i64 848848
  %PicWidthInMbs117 = getelementptr inbounds i8, ptr %p_Vid, i64 848996
  %33 = load i32, ptr %FrameHeightInMbs131, align 4
  %34 = load i32, ptr %PicWidthInMbs117, align 4
  %call118 = tail call i32 @get_mem2Dint(ptr noundef nonnull %siblock_JV, i32 noundef %33, i32 noundef %34) #18
  %35 = load ptr, ptr %siblock_JV, align 8
  %cmp122 = icmp eq ptr %35, null
  br i1 %cmp122, label %if.then124, label %for.inc126

if.then124:                                       ; preds = %for.cond110.preheader
  tail call void @no_mem_exit(ptr noundef nonnull @.str.10) #18
  br label %for.inc126

for.inc126:                                       ; preds = %for.cond110.preheader, %if.then124
  %arrayidx115.1 = getelementptr inbounds i8, ptr %p_Vid, i64 848856
  %36 = load i32, ptr %FrameHeightInMbs131, align 4
  %37 = load i32, ptr %PicWidthInMbs117, align 4
  %call118.1 = tail call i32 @get_mem2Dint(ptr noundef nonnull %arrayidx115.1, i32 noundef %36, i32 noundef %37) #18
  %38 = load ptr, ptr %arrayidx115.1, align 8
  %cmp122.1 = icmp eq ptr %38, null
  br i1 %cmp122.1, label %if.then124.1, label %for.inc126.1

if.then124.1:                                     ; preds = %for.inc126
  tail call void @no_mem_exit(ptr noundef nonnull @.str.10) #18
  br label %for.inc126.1

for.inc126.1:                                     ; preds = %if.then124.1, %for.inc126
  %arrayidx115.2 = getelementptr inbounds i8, ptr %p_Vid, i64 848864
  %39 = load i32, ptr %FrameHeightInMbs131, align 4
  %40 = load i32, ptr %PicWidthInMbs117, align 4
  %call118.2 = tail call i32 @get_mem2Dint(ptr noundef nonnull %arrayidx115.2, i32 noundef %39, i32 noundef %40) #18
  %41 = load ptr, ptr %arrayidx115.2, align 8
  %cmp122.2 = icmp eq ptr %41, null
  br i1 %cmp122.2, label %if.then124.2, label %for.inc126.2

if.then124.2:                                     ; preds = %for.inc126.1
  tail call void @no_mem_exit(ptr noundef nonnull @.str.10) #18
  br label %for.inc126.2

for.inc126.2:                                     ; preds = %if.then124.2, %for.inc126.1
  %siblock = getelementptr inbounds i8, ptr %p_Vid, i64 848840
  store ptr null, ptr %siblock, align 8
  br label %if.end135

if.else129:                                       ; preds = %if.end102
  %siblock130 = getelementptr inbounds i8, ptr %p_Vid, i64 848840
  %42 = load i32, ptr %FrameHeightInMbs131, align 4
  %PicWidthInMbs132 = getelementptr inbounds i8, ptr %p_Vid, i64 848996
  %43 = load i32, ptr %PicWidthInMbs132, align 4
  %call133 = tail call i32 @get_mem2Dint(ptr noundef nonnull %siblock130, i32 noundef %42, i32 noundef %43) #18
  %add134 = add nsw i32 %call133, %add105
  br label %if.end135

if.end135:                                        ; preds = %if.else129, %for.inc126.2
  %memory_size.2 = phi i32 [ %add105, %for.inc126.2 ], [ %add134, %if.else129 ]
  tail call void @init_qp_process(ptr noundef nonnull %p_Vid) #18
  store i32 1, ptr %global_init_done, align 4
  %44 = load i32, ptr %FrameSizeInMbs54, align 8
  %oldFrameSizeInMbs = getelementptr inbounds i8, ptr %p_Vid, i64 849020
  store i32 %44, ptr %oldFrameSizeInMbs, align 4
  ret i32 %memory_size.2
}

; Function Attrs: nounwind uwtable
define dso_local void @free_global_buffers(ptr noundef %p_Vid) local_unnamed_addr #3 {
entry:
  %imgY_ref = getelementptr inbounds i8, ptr %p_Vid, i64 856016
  %0 = load ptr, ptr %imgY_ref, align 8
  tail call void @free_mem2Dpel(ptr noundef %0) #18
  %imgUV_ref = getelementptr inbounds i8, ptr %p_Vid, i64 856024
  %1 = load ptr, ptr %imgUV_ref, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free_mem3Dpel(ptr noundef nonnull %1) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %nz_coeff = getelementptr inbounds i8, ptr %p_Vid, i64 848832
  %2 = load ptr, ptr %nz_coeff, align 8
  tail call void @free_mem4D(ptr noundef %2) #18
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %p_Vid, i64 849280
  %3 = load i32, ptr %separate_colour_plane_flag, align 8
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %mb_data_JV = getelementptr inbounds i8, ptr %p_Vid, i64 848896
  %siblock_JV = getelementptr inbounds i8, ptr %p_Vid, i64 848848
  %ipredmode_JV = getelementptr inbounds i8, ptr %p_Vid, i64 848808
  %intra_block_JV = getelementptr inbounds i8, ptr %p_Vid, i64 848752
  %4 = load ptr, ptr %mb_data_JV, align 8
  tail call void @free(ptr noundef %4) #18
  store ptr null, ptr %mb_data_JV, align 8
  %5 = load ptr, ptr %siblock_JV, align 8
  tail call void @free_mem2Dint(ptr noundef %5) #18
  store ptr null, ptr %siblock_JV, align 8
  %6 = load ptr, ptr %ipredmode_JV, align 8
  tail call void @free_mem2D(ptr noundef %6) #18
  store ptr null, ptr %ipredmode_JV, align 8
  %7 = load ptr, ptr %intra_block_JV, align 8
  tail call void @free(ptr noundef %7) #18
  store ptr null, ptr %intra_block_JV, align 8
  %arrayidx.1 = getelementptr inbounds i8, ptr %p_Vid, i64 848904
  %8 = load ptr, ptr %arrayidx.1, align 8
  tail call void @free(ptr noundef %8) #18
  store ptr null, ptr %arrayidx.1, align 8
  %arrayidx8.1 = getelementptr inbounds i8, ptr %p_Vid, i64 848856
  %9 = load ptr, ptr %arrayidx8.1, align 8
  tail call void @free_mem2Dint(ptr noundef %9) #18
  store ptr null, ptr %arrayidx8.1, align 8
  %arrayidx13.1 = getelementptr inbounds i8, ptr %p_Vid, i64 848816
  %10 = load ptr, ptr %arrayidx13.1, align 8
  tail call void @free_mem2D(ptr noundef %10) #18
  store ptr null, ptr %arrayidx13.1, align 8
  %arrayidx18.1 = getelementptr inbounds i8, ptr %p_Vid, i64 848760
  %11 = load ptr, ptr %arrayidx18.1, align 8
  tail call void @free(ptr noundef %11) #18
  store ptr null, ptr %arrayidx18.1, align 8
  %arrayidx.2 = getelementptr inbounds i8, ptr %p_Vid, i64 848912
  %12 = load ptr, ptr %arrayidx.2, align 8
  tail call void @free(ptr noundef %12) #18
  store ptr null, ptr %arrayidx.2, align 8
  %arrayidx8.2 = getelementptr inbounds i8, ptr %p_Vid, i64 848864
  %13 = load ptr, ptr %arrayidx8.2, align 8
  tail call void @free_mem2Dint(ptr noundef %13) #18
  store ptr null, ptr %arrayidx8.2, align 8
  %arrayidx13.2 = getelementptr inbounds i8, ptr %p_Vid, i64 848824
  %14 = load ptr, ptr %arrayidx13.2, align 8
  tail call void @free_mem2D(ptr noundef %14) #18
  store ptr null, ptr %arrayidx13.2, align 8
  %arrayidx18.2 = getelementptr inbounds i8, ptr %p_Vid, i64 848768
  %15 = load ptr, ptr %arrayidx18.2, align 8
  tail call void @free(ptr noundef %15) #18
  br label %if.end42.sink.split

if.else:                                          ; preds = %if.end
  %mb_data = getelementptr inbounds i8, ptr %p_Vid, i64 848888
  %16 = load ptr, ptr %mb_data, align 8
  %cmp22.not = icmp eq ptr %16, null
  br i1 %cmp22.not, label %if.end26, label %if.then23

if.then23:                                        ; preds = %if.else
  tail call void @free(ptr noundef nonnull %16) #18
  store ptr null, ptr %mb_data, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.else
  %siblock = getelementptr inbounds i8, ptr %p_Vid, i64 848840
  %17 = load ptr, ptr %siblock, align 8
  %tobool27.not = icmp eq ptr %17, null
  br i1 %tobool27.not, label %if.end31, label %if.then28

if.then28:                                        ; preds = %if.end26
  tail call void @free_mem2Dint(ptr noundef nonnull %17) #18
  store ptr null, ptr %siblock, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end26
  %ipredmode = getelementptr inbounds i8, ptr %p_Vid, i64 848800
  %18 = load ptr, ptr %ipredmode, align 8
  %tobool32.not = icmp eq ptr %18, null
  br i1 %tobool32.not, label %if.end36, label %if.then33

if.then33:                                        ; preds = %if.end31
  tail call void @free_mem2D(ptr noundef nonnull %18) #18
  store ptr null, ptr %ipredmode, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end31
  %intra_block = getelementptr inbounds i8, ptr %p_Vid, i64 848744
  %19 = load ptr, ptr %intra_block, align 8
  %tobool37.not = icmp eq ptr %19, null
  br i1 %tobool37.not, label %if.end42, label %if.then38

if.then38:                                        ; preds = %if.end36
  tail call void @free(ptr noundef nonnull %19) #18
  br label %if.end42.sink.split

if.end42.sink.split:                              ; preds = %if.then38, %for.cond.preheader
  %arrayidx18.2.sink = phi ptr [ %arrayidx18.2, %for.cond.preheader ], [ %intra_block, %if.then38 ]
  store ptr null, ptr %arrayidx18.2.sink, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.end42.sink.split, %if.end36
  %20 = load ptr, ptr @PicPos, align 8
  %tobool43.not = icmp eq ptr %20, null
  br i1 %tobool43.not, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.end42
  tail call void @free(ptr noundef nonnull %20) #18
  store ptr null, ptr @PicPos, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end42
  tail call void @free_qp_matrices(ptr noundef nonnull %p_Vid) #18
  %global_init_done = getelementptr inbounds i8, ptr %p_Vid, i64 856012
  store i32 0, ptr %global_init_done, align 4
  ret void
}

declare i32 @get_mem2Dpel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @get_mem2D(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @get_mem4D(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @get_mem2Dint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @init_qp_process(ptr noundef) local_unnamed_addr #6

declare void @free_mem2Dpel(ptr noundef) local_unnamed_addr #6

declare void @free_mem3Dpel(ptr noundef) local_unnamed_addr #6

declare void @free_mem4D(ptr noundef) local_unnamed_addr #6

declare void @free_mem2Dint(ptr noundef) local_unnamed_addr #6

declare void @free_mem2D(ptr noundef) local_unnamed_addr #6

declare void @free_qp_matrices(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind uwtable
define dso_local void @report_stats_on_error() local_unnamed_addr #0 {
entry:
  tail call void @exit(i32 noundef -1) #17
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClearDecPicList(ptr nocapture noundef %p_Vid) local_unnamed_addr #8 {
entry:
  %pDecOuputPic = getelementptr inbounds i8, ptr %p_Vid, i64 856816
  %pPic.028 = load ptr, ptr %pDecOuputPic, align 8
  %tobool.not29 = icmp eq ptr %pPic.028, null
  br i1 %tobool.not29, label %if.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %entry
  %0 = load i32, ptr %pPic.028, align 8
  %tobool1.not38 = icmp eq i32 %0, 0
  br i1 %tobool1.not38, label %while.body, label %land.lhs.true

land.rhs:                                         ; preds = %while.body
  %1 = load i32, ptr %pPic.0, align 8
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %while.body, label %land.lhs.true

while.body:                                       ; preds = %land.rhs.preheader, %land.rhs
  %pPic.03139 = phi ptr [ %pPic.0, %land.rhs ], [ %pPic.028, %land.rhs.preheader ]
  %pNext = getelementptr inbounds i8, ptr %pPic.03139, i64 72
  %pPic.0 = load ptr, ptr %pNext, align 8
  %tobool.not = icmp eq ptr %pPic.0, null
  br i1 %tobool.not, label %if.end, label %land.rhs

land.lhs.true:                                    ; preds = %land.rhs, %land.rhs.preheader
  %pPic.031.lcssa = phi ptr [ %pPic.028, %land.rhs.preheader ], [ %pPic.0, %land.rhs ]
  %pPrior.030.lcssa = phi ptr [ null, %land.rhs.preheader ], [ %pPic.03139, %land.rhs ]
  %cmp.not = icmp eq ptr %pPic.031.lcssa, %pPic.028
  br i1 %cmp.not, label %if.end, label %while.cond4

while.cond4:                                      ; preds = %land.lhs.true, %while.cond4
  %pPicTail.0 = phi ptr [ %2, %while.cond4 ], [ %pPic.031.lcssa, %land.lhs.true ]
  %pNext5 = getelementptr inbounds i8, ptr %pPicTail.0, i64 72
  %2 = load ptr, ptr %pNext5, align 8
  %tobool6.not = icmp eq ptr %2, null
  br i1 %tobool6.not, label %while.end9, label %while.cond4

while.end9:                                       ; preds = %while.cond4
  %pNext5.le = getelementptr inbounds i8, ptr %pPicTail.0, i64 72
  store ptr %pPic.028, ptr %pNext5.le, align 8
  store ptr %pPic.031.lcssa, ptr %pDecOuputPic, align 8
  %pNext13 = getelementptr inbounds i8, ptr %pPrior.030.lcssa, i64 72
  store ptr null, ptr %pNext13, align 8
  br label %if.end

if.end:                                           ; preds = %while.body, %entry, %while.end9, %land.lhs.true
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef ptr @GetOneAvailDecPicFromList(ptr noundef %pDecPicList, i32 noundef %b3D) local_unnamed_addr #9 {
entry:
  %tobool.not = icmp eq i32 %b3D, 0
  %tobool3.not37 = icmp ne ptr %pDecPicList, null
  tail call void @llvm.assume(i1 %tobool3.not37)
  br i1 %tobool.not, label %land.rhs4, label %land.rhs

land.rhs:                                         ; preds = %entry, %while.body
  %pPic.036 = phi ptr [ %1, %while.body ], [ %pDecPicList, %entry ]
  %0 = load i32, ptr %pPic.036, align 8
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %while.body, label %if.end14

while.body:                                       ; preds = %land.rhs
  %pNext = getelementptr inbounds i8, ptr %pPic.036, i64 72
  %1 = load ptr, ptr %pNext, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then12, label %land.rhs

land.rhs4:                                        ; preds = %entry, %while.body8
  %pPic.138 = phi ptr [ %3, %while.body8 ], [ %pDecPicList, %entry ]
  %2 = load i32, ptr %pPic.138, align 8
  %tobool6.not = icmp eq i32 %2, 0
  br i1 %tobool6.not, label %if.end14, label %while.body8

while.body8:                                      ; preds = %land.rhs4
  %pNext9 = getelementptr inbounds i8, ptr %pPic.138, i64 72
  %3 = load ptr, ptr %pNext9, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.then12, label %land.rhs4

if.then12:                                        ; preds = %while.body, %while.body8
  %pPrior.2.ph = phi ptr [ %pPic.138, %while.body8 ], [ %pPic.036, %while.body ]
  %call = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #19
  %pNext13 = getelementptr inbounds i8, ptr %pPrior.2.ph, i64 72
  store ptr %call, ptr %pNext13, align 8
  br label %if.end14

if.end14:                                         ; preds = %land.rhs, %land.rhs4, %if.then12
  %pPic.3 = phi ptr [ %call, %if.then12 ], [ %pPic.138, %land.rhs4 ], [ %pPic.036, %land.rhs ]
  ret ptr %pPic.3
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 32768, 1) i32 @OpenDecoder(ptr nocapture noundef readonly %p_Inp) local_unnamed_addr #3 {
entry:
  %call.i = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #19
  store ptr %call.i, ptr @p_Dec, align 8
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.then, label %if.end.i

if.end.i:                                         ; preds = %entry
  %p_Vid.i = getelementptr inbounds i8, ptr %call.i, i64 8
  %call.i.i = tail call noalias dereferenceable_or_null(856880) ptr @calloc(i64 noundef 1, i64 noundef 856880) #19
  store ptr %call.i.i, ptr %p_Vid.i, align 8
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.15) #18
  %.pre.i.i = load ptr, ptr %p_Vid.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i
  %0 = phi ptr [ %.pre.i.i, %if.then.i.i ], [ %call.i.i, %if.end.i ]
  %call1.i.i = tail call noalias dereferenceable_or_null(52) ptr @calloc(i64 noundef 1, i64 noundef 52) #19
  %old_slice.i.i = getelementptr inbounds i8, ptr %0, i64 848696
  store ptr %call1.i.i, ptr %old_slice.i.i, align 8
  %cmp2.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end4.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.16) #18
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i
  %call5.i.i = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #19
  %1 = load ptr, ptr %p_Vid.i, align 8
  %snr.i.i = getelementptr inbounds i8, ptr %1, i64 848704
  store ptr %call5.i.i, ptr %snr.i.i, align 8
  %cmp6.i.i = icmp eq ptr %call5.i.i, null
  br i1 %cmp6.i.i, label %if.then7.i.i, label %if.end8.i.i

if.then7.i.i:                                     ; preds = %if.end4.i.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.17) #18
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then7.i.i, %if.end4.i.i
  %call9.i.i = tail call noalias dereferenceable_or_null(4176) ptr @calloc(i64 noundef 1, i64 noundef 4176) #19
  %2 = load ptr, ptr %p_Vid.i, align 8
  %p_Dpb_legacy.i.i = getelementptr inbounds i8, ptr %2, i64 856664
  store ptr %call9.i.i, ptr %p_Dpb_legacy.i.i, align 8
  %cmp10.i.i = icmp eq ptr %call9.i.i, null
  br i1 %cmp10.i.i, label %if.then11.i.i, label %if.end12.i.i

if.then11.i.i:                                    ; preds = %if.end8.i.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.18) #18
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then11.i.i, %if.end8.i.i
  %3 = load ptr, ptr %p_Vid.i, align 8
  %p_Dpb_legacy13.i.i = getelementptr inbounds i8, ptr %3, i64 856664
  %4 = load ptr, ptr %p_Dpb_legacy13.i.i, align 8
  %p_Dpb.i.i = getelementptr inbounds i8, ptr %3, i64 856656
  store ptr %4, ptr %p_Dpb.i.i, align 8
  %5 = load ptr, ptr %p_Vid.i, align 8
  %p_Dpb14.i.i = getelementptr inbounds i8, ptr %5, i64 856656
  %6 = load ptr, ptr %p_Dpb14.i.i, align 8
  store ptr %5, ptr %6, align 8
  %init_done.i.i.i = getelementptr inbounds i8, ptr %6, i64 4160
  store i32 0, ptr %init_done.i.i.i, align 8
  %call16.i.i = tail call noalias dereferenceable_or_null(4176) ptr @calloc(i64 noundef 1, i64 noundef 4176) #19
  %7 = load ptr, ptr %p_Vid.i, align 8
  %p_Dpb_layer.i.i = getelementptr inbounds i8, ptr %7, i64 856672
  store ptr %call16.i.i, ptr %p_Dpb_layer.i.i, align 8
  %cmp17.i.i = icmp eq ptr %call16.i.i, null
  br i1 %cmp17.i.i, label %if.then18.i.i, label %if.end19.i.i

if.then18.i.i:                                    ; preds = %if.end12.i.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.19) #18
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then18.i.i, %if.end12.i.i
  %8 = load ptr, ptr %p_Vid.i, align 8
  %p_Dpb_layer20.i.i = getelementptr inbounds i8, ptr %8, i64 856672
  %9 = load ptr, ptr %p_Dpb_layer20.i.i, align 8
  store ptr %8, ptr %9, align 8
  %init_done.i55.i.i = getelementptr inbounds i8, ptr %9, i64 4160
  store i32 0, ptr %init_done.i55.i.i, align 8
  %call16.1.i.i = tail call noalias dereferenceable_or_null(4176) ptr @calloc(i64 noundef 1, i64 noundef 4176) #19
  %10 = load ptr, ptr %p_Vid.i, align 8
  %arrayidx.1.i.i = getelementptr inbounds i8, ptr %10, i64 856680
  store ptr %call16.1.i.i, ptr %arrayidx.1.i.i, align 8
  %cmp17.1.i.i = icmp eq ptr %call16.1.i.i, null
  br i1 %cmp17.1.i.i, label %if.then18.1.i.i, label %if.end19.1.i.i

if.then18.1.i.i:                                  ; preds = %if.end19.i.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.19) #18
  br label %if.end19.1.i.i

if.end19.1.i.i:                                   ; preds = %if.then18.1.i.i, %if.end19.i.i
  %11 = load ptr, ptr %p_Vid.i, align 8
  %arrayidx22.1.i.i = getelementptr inbounds i8, ptr %11, i64 856680
  %12 = load ptr, ptr %arrayidx22.1.i.i, align 8
  store ptr %11, ptr %12, align 8
  %init_done.i55.1.i.i = getelementptr inbounds i8, ptr %12, i64 4160
  store i32 0, ptr %init_done.i55.1.i.i, align 8
  %13 = load ptr, ptr %p_Vid.i, align 8
  %global_init_done.i.i = getelementptr inbounds i8, ptr %13, i64 856012
  store i32 0, ptr %global_init_done.i.i, align 4
  %call23.i.i = tail call noalias dereferenceable_or_null(8232) ptr @calloc(i64 noundef 1, i64 noundef 8232) #19
  %14 = load ptr, ptr %p_Vid.i, align 8
  %seiToneMapping.i.i = getelementptr inbounds i8, ptr %14, i64 856728
  store ptr %call23.i.i, ptr %seiToneMapping.i.i, align 8
  %cmp24.i.i = icmp eq ptr %call23.i.i, null
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i

if.then25.i.i:                                    ; preds = %if.end19.1.i.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.20) #18
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.then25.i.i, %if.end19.1.i.i
  %call27.i.i = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 16, i64 noundef 8) #19
  %15 = load ptr, ptr %p_Vid.i, align 8
  %ppSliceList.i.i = getelementptr inbounds i8, ptr %15, i64 848736
  store ptr %call27.i.i, ptr %ppSliceList.i.i, align 8
  %cmp28.i.i = icmp eq ptr %call27.i.i, null
  br i1 %cmp28.i.i, label %if.then29.i.i, label %alloc_video_params.exit.i

if.then29.i.i:                                    ; preds = %if.end26.i.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.21) #18
  br label %alloc_video_params.exit.i

alloc_video_params.exit.i:                        ; preds = %if.then29.i.i, %if.end26.i.i
  %16 = load ptr, ptr %p_Vid.i, align 8
  %iNumOfSlicesAllocated.i.i = getelementptr inbounds i8, ptr %16, i64 848724
  store i32 16, ptr %iNumOfSlicesAllocated.i.i, align 4
  %17 = load ptr, ptr %p_Vid.i, align 8
  %pNextSlice.i.i = getelementptr inbounds i8, ptr %17, i64 848880
  store ptr null, ptr %pNextSlice.i.i, align 8
  %call31.i.i = tail call ptr @AllocNALU(i32 noundef 8000000) #18
  %18 = load ptr, ptr %p_Vid.i, align 8
  %nalu.i.i = getelementptr inbounds i8, ptr %18, i64 856832
  store ptr %call31.i.i, ptr %nalu.i.i, align 8
  %call32.i.i = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #19
  %19 = load ptr, ptr %p_Vid.i, align 8
  %pDecOuputPic.i.i = getelementptr inbounds i8, ptr %19, i64 856816
  store ptr %call32.i.i, ptr %pDecOuputPic.i.i, align 8
  %call33.i.i = tail call ptr @AllocPPS() #18
  %20 = load ptr, ptr %p_Vid.i, align 8
  %pNextPPS.i.i = getelementptr inbounds i8, ptr %20, i64 856872
  store ptr %call33.i.i, ptr %pNextPPS.i.i, align 8
  %21 = load ptr, ptr @p_Dec, align 8
  %call.i12.i = tail call noalias dereferenceable_or_null(4016) ptr @calloc(i64 noundef 1, i64 noundef 4016) #19
  store ptr %call.i12.i, ptr %21, align 8
  %cmp.i13.i = icmp eq ptr %call.i12.i, null
  br i1 %cmp.i13.i, label %if.then.i15.i, label %if.end

if.then.i15.i:                                    ; preds = %alloc_video_params.exit.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.22) #18
  br label %if.end

if.then:                                          ; preds = %entry
  %22 = load ptr, ptr @stderr, align 8
  %23 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 21, i64 1, ptr %22) #20
  br label %cleanup

if.end:                                           ; preds = %alloc_video_params.exit.i, %if.then.i15.i
  %24 = load ptr, ptr @p_Dec, align 8
  %25 = load ptr, ptr %24, align 8
  %p_Vid3.i = getelementptr inbounds i8, ptr %24, i64 8
  %26 = load ptr, ptr %p_Vid3.i, align 8
  store ptr %25, ptr %26, align 8
  %27 = load ptr, ptr @p_Dec, align 8
  %p_trace.i = getelementptr inbounds i8, ptr %27, i64 32
  store ptr null, ptr %p_trace.i, align 8
  %bufferSize.i = getelementptr inbounds i8, ptr %27, i64 16
  store i64 0, ptr %bufferSize.i, align 8
  %bitcounter.i = getelementptr inbounds i8, ptr %27, i64 40
  store i32 0, ptr %bitcounter.i, align 8
  %28 = load ptr, ptr %27, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4016) %28, ptr noundef nonnull align 8 dereferenceable(4016) %p_Inp, i64 4016, i1 false)
  %29 = load ptr, ptr %27, align 8
  %conceal_mode = getelementptr inbounds i8, ptr %29, i64 3980
  %30 = load i32, ptr %conceal_mode, align 4
  %p_Vid = getelementptr inbounds i8, ptr %27, i64 8
  %31 = load ptr, ptr %p_Vid, align 8
  %conceal_mode3 = getelementptr inbounds i8, ptr %31, i64 849240
  store i32 %30, ptr %conceal_mode3, align 8
  %32 = load ptr, ptr %27, align 8
  %ref_poc_gap = getelementptr inbounds i8, ptr %32, i64 3984
  %33 = load i32, ptr %ref_poc_gap, align 8
  %34 = load ptr, ptr %p_Vid, align 8
  %ref_poc_gap6 = getelementptr inbounds i8, ptr %34, i64 849232
  store i32 %33, ptr %ref_poc_gap6, align 8
  %35 = load ptr, ptr %27, align 8
  %poc_gap = getelementptr inbounds i8, ptr %35, i64 3988
  %36 = load i32, ptr %poc_gap, align 4
  %37 = load ptr, ptr %p_Vid, align 8
  %poc_gap9 = getelementptr inbounds i8, ptr %37, i64 849236
  store i32 %36, ptr %poc_gap9, align 4
  %38 = load ptr, ptr %27, align 8
  %reffile = getelementptr inbounds i8, ptr %38, i64 510
  %char0 = load i8, ptr %reffile, align 1
  switch i8 %char0, label %if.then17 [
    i8 0, label %if.else
    i8 34, label %sub_1
  ]

sub_1:                                            ; preds = %if.end
  %39 = getelementptr inbounds i8, ptr %38, i64 511
  %40 = load i8, ptr %39, align 1
  %.not83 = icmp eq i8 %40, 34
  br i1 %.not83, label %land.lhs.true.tail, label %if.then17

land.lhs.true.tail:                               ; preds = %sub_1
  %41 = getelementptr inbounds i8, ptr %38, i64 512
  %42 = load i8, ptr %41, align 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end, %sub_1, %land.lhs.true.tail
  %call21 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %reffile, i32 noundef 0) #18
  %44 = load ptr, ptr %p_Vid, align 8
  %p_ref = getelementptr inbounds i8, ptr %44, i64 855988
  store i32 %call21, ptr %p_ref, align 4
  %cmp23 = icmp eq i32 %call21, -1
  br i1 %cmp23, label %if.then24, label %if.end33

if.then24:                                        ; preds = %if.then17
  %45 = load ptr, ptr @stdout, align 8
  %46 = load ptr, ptr %27, align 8
  %reffile26 = getelementptr inbounds i8, ptr %46, i64 510
  %call28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.12, ptr noundef nonnull %reffile26) #18
  %47 = load ptr, ptr @stdout, align 8
  %48 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 71, i64 1, ptr %47)
  br label %if.end33

if.else:                                          ; preds = %if.end, %land.lhs.true.tail
  %49 = load ptr, ptr %p_Vid, align 8
  %p_ref32 = getelementptr inbounds i8, ptr %49, i64 855988
  store i32 -1, ptr %p_ref32, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then17, %if.then24, %if.else
  %50 = load ptr, ptr %p_Vid, align 8
  %51 = load ptr, ptr %27, align 8
  %FileFormat = getelementptr inbounds i8, ptr %51, i64 768
  %52 = load i32, ptr %FileFormat, align 8
  tail call void @initBitsFile(ptr noundef %50, i32 noundef %52) #18
  %53 = load ptr, ptr %p_Vid, align 8
  %bitsfile = getelementptr inbounds i8, ptr %53, i64 856616
  %54 = load ptr, ptr %bitsfile, align 8
  %55 = load ptr, ptr %54, align 8
  %56 = load ptr, ptr %27, align 8
  tail call void %55(ptr noundef %53, ptr noundef %56) #18
  %57 = load ptr, ptr %p_Vid, align 8
  %old_slice = getelementptr inbounds i8, ptr %57, i64 848696
  %58 = load ptr, ptr %old_slice, align 8
  tail call void @init_old_slice(ptr noundef %58) #18
  %59 = load ptr, ptr %p_Vid, align 8
  %60 = load ptr, ptr %59, align 8
  %oldFrameSizeInMbs.i = getelementptr inbounds i8, ptr %59, i64 849020
  store i32 -1, ptr %oldFrameSizeInMbs.i, align 4
  %imgY_ref.i = getelementptr inbounds i8, ptr %59, i64 856016
  %recovery_point.i = getelementptr inbounds i8, ptr %59, i64 849260
  store i32 0, ptr %recovery_point.i, align 4
  %recovery_point_found.i = getelementptr inbounds i8, ptr %59, i64 849264
  store i32 0, ptr %recovery_point_found.i, align 8
  %recovery_poc.i = getelementptr inbounds i8, ptr %59, i64 849276
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %imgY_ref.i, i8 0, i64 16, i1 false)
  store i32 2147483647, ptr %recovery_poc.i, align 4
  %ref_offset.i = getelementptr inbounds i8, ptr %60, i64 772
  %61 = load i32, ptr %ref_offset.i, align 4
  %idr_psnr_number.i = getelementptr inbounds i8, ptr %59, i64 849220
  store i32 %61, ptr %idr_psnr_number.i, align 4
  %psnr_number.i = getelementptr inbounds i8, ptr %59, i64 849224
  store i32 0, ptr %psnr_number.i, align 8
  %number.i = getelementptr inbounds i8, ptr %59, i64 848712
  store i32 0, ptr %number.i, align 8
  %type.i = getelementptr inbounds i8, ptr %59, i64 848776
  store i32 2, ptr %type.i, align 8
  %g_nFrame.i = getelementptr inbounds i8, ptr %59, i64 856008
  store i32 0, ptr %g_nFrame.i, align 8
  %snr.i = getelementptr inbounds i8, ptr %59, i64 848704
  %62 = load ptr, ptr %snr.i, align 8
  store i32 0, ptr %62, align 4
  %Bframe_ctr.i = getelementptr inbounds i8, ptr %59, i64 856000
  store i32 0, ptr %Bframe_ctr.i, align 8
  %tot_time.i = getelementptr inbounds i8, ptr %59, i64 851880
  store i64 0, ptr %tot_time.i, align 8
  %dec_picture.i = getelementptr inbounds i8, ptr %59, i64 856456
  store ptr null, ptr %dec_picture.i, align 8
  %MbToSliceGroupMap.i = getelementptr inbounds i8, ptr %59, i64 856704
  %LastAccessUnitExists.i = getelementptr inbounds i8, ptr %59, i64 855992
  store i32 0, ptr %LastAccessUnitExists.i, align 8
  %NALUCount.i = getelementptr inbounds i8, ptr %59, i64 855996
  store i32 0, ptr %NALUCount.i, align 4
  %out_buffer.i = getelementptr inbounds i8, ptr %59, i64 856624
  %seiToneMapping.i = getelementptr inbounds i8, ptr %59, i64 856728
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %out_buffer.i, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %MbToSliceGroupMap.i, i8 0, i64 16, i1 false)
  %63 = load ptr, ptr %seiToneMapping.i, align 8
  tail call void @init_tone_mapping_sei(ptr noundef %63) #18
  %last_pic_width_in_mbs_minus1.i = getelementptr inbounds i8, ptr %59, i64 848672
  store i32 0, ptr %last_pic_width_in_mbs_minus1.i, align 8
  %last_pic_height_in_map_units_minus1.i = getelementptr inbounds i8, ptr %59, i64 848676
  store i32 0, ptr %last_pic_height_in_map_units_minus1.i, align 4
  %last_max_dec_frame_buffering.i = getelementptr inbounds i8, ptr %59, i64 848680
  store i32 0, ptr %last_max_dec_frame_buffering.i, align 8
  %newframe.i = getelementptr inbounds i8, ptr %59, i64 848872
  store i32 0, ptr %newframe.i, align 8
  %previous_frame_num.i = getelementptr inbounds i8, ptr %59, i64 851864
  store i32 0, ptr %previous_frame_num.i, align 8
  %iLumaPadX.i = getelementptr inbounds i8, ptr %59, i64 856840
  store <4 x i32> <i32 32, i32 12, i32 16, i32 8>, ptr %iLumaPadX.i, align 8
  %iPostProcess.i = getelementptr inbounds i8, ptr %59, i64 856860
  store i32 0, ptr %iPostProcess.i, align 4
  %bDeblockEnable.i = getelementptr inbounds i8, ptr %59, i64 856856
  store i32 3, ptr %bDeblockEnable.i, align 8
  %64 = load ptr, ptr %p_Vid, align 8
  tail call void @init_out_buffer(ptr noundef %64) #18
  %65 = load ptr, ptr %p_Vid, align 8
  %p_out = getelementptr inbounds i8, ptr %65, i64 851888
  store i32 -1, ptr %p_out, align 8
  br label %for.body

for.body:                                         ; preds = %for.body, %if.end33
  %indvars.iv = phi i64 [ 0, %if.end33 ], [ %indvars.iv.next.3, %for.body ]
  %66 = load ptr, ptr %p_Vid, align 8
  %p_out_mvc = getelementptr inbounds i8, ptr %66, i64 851892
  %arrayidx = getelementptr inbounds [1024 x i32], ptr %p_out_mvc, i64 0, i64 %indvars.iv
  store i32 -1, ptr %arrayidx, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %67 = load ptr, ptr %p_Vid, align 8
  %p_out_mvc.1 = getelementptr inbounds i8, ptr %67, i64 851892
  %arrayidx.1 = getelementptr inbounds [1024 x i32], ptr %p_out_mvc.1, i64 0, i64 %indvars.iv.next
  store i32 -1, ptr %arrayidx.1, align 4
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %68 = load ptr, ptr %p_Vid, align 8
  %p_out_mvc.2 = getelementptr inbounds i8, ptr %68, i64 851892
  %arrayidx.2 = getelementptr inbounds [1024 x i32], ptr %p_out_mvc.2, i64 0, i64 %indvars.iv.next.1
  store i32 -1, ptr %arrayidx.2, align 4
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %69 = load ptr, ptr %p_Vid, align 8
  %p_out_mvc.3 = getelementptr inbounds i8, ptr %69, i64 851892
  %arrayidx.3 = getelementptr inbounds [1024 x i32], ptr %p_out_mvc.3, i64 0, i64 %indvars.iv.next.2
  store i32 -1, ptr %arrayidx.3, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 1024
  br i1 %exitcond.not.3, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %70 = load ptr, ptr %p_Vid, align 8
  %active_sps = getelementptr inbounds i8, ptr %70, i64 16
  store ptr null, ptr %active_sps, align 8
  %71 = load ptr, ptr %p_Vid, align 8
  %active_subset_sps = getelementptr inbounds i8, ptr %71, i64 699416
  store ptr null, ptr %active_subset_sps, align 8
  %72 = load ptr, ptr %p_Vid, align 8
  %SubsetSeqParSet = getelementptr inbounds i8, ptr %72, i64 699424
  tail call void @init_subset_sps_list(ptr noundef nonnull %SubsetSeqParSet, i32 noundef 32) #18
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #11

declare void @initBitsFile(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @init_old_slice(ptr noundef) local_unnamed_addr #6

declare void @init_out_buffer(ptr noundef) local_unnamed_addr #6

declare void @init_subset_sps_list(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 32768, 2) i32 @DecodeOneFrame(ptr nocapture noundef writeonly %ppDecPicList) local_unnamed_addr #3 {
entry:
  %0 = load ptr, ptr @p_Dec, align 8
  %p_Vid = getelementptr inbounds i8, ptr %0, i64 8
  %1 = load ptr, ptr %p_Vid, align 8
  %pDecOuputPic.i = getelementptr inbounds i8, ptr %1, i64 856816
  %pPic.028.i = load ptr, ptr %pDecOuputPic.i, align 8
  %tobool.not29.i = icmp eq ptr %pPic.028.i, null
  br i1 %tobool.not29.i, label %ClearDecPicList.exit, label %land.rhs.i.preheader

land.rhs.i.preheader:                             ; preds = %entry
  %2 = load i32, ptr %pPic.028.i, align 8
  %tobool1.not.i13 = icmp eq i32 %2, 0
  br i1 %tobool1.not.i13, label %while.body.i, label %ClearDecPicList.exit

land.rhs.i:                                       ; preds = %while.body.i
  %3 = load i32, ptr %pPic.0.i, align 8
  %tobool1.not.i = icmp eq i32 %3, 0
  br i1 %tobool1.not.i, label %while.body.i, label %land.lhs.true.i

while.body.i:                                     ; preds = %land.rhs.i.preheader, %land.rhs.i
  %pPic.031.i14 = phi ptr [ %pPic.0.i, %land.rhs.i ], [ %pPic.028.i, %land.rhs.i.preheader ]
  %pNext.i = getelementptr inbounds i8, ptr %pPic.031.i14, i64 72
  %pPic.0.i = load ptr, ptr %pNext.i, align 8
  %tobool.not.i = icmp eq ptr %pPic.0.i, null
  br i1 %tobool.not.i, label %ClearDecPicList.exit, label %land.rhs.i

land.lhs.true.i:                                  ; preds = %land.rhs.i
  %cmp.not.i = icmp eq ptr %pPic.0.i, %pPic.028.i
  br i1 %cmp.not.i, label %ClearDecPicList.exit, label %while.cond4.i

while.cond4.i:                                    ; preds = %land.lhs.true.i, %while.cond4.i
  %pPicTail.0.i = phi ptr [ %4, %while.cond4.i ], [ %pPic.0.i, %land.lhs.true.i ]
  %pNext5.i = getelementptr inbounds i8, ptr %pPicTail.0.i, i64 72
  %4 = load ptr, ptr %pNext5.i, align 8
  %tobool6.not.i = icmp eq ptr %4, null
  br i1 %tobool6.not.i, label %while.end9.i, label %while.cond4.i

while.end9.i:                                     ; preds = %while.cond4.i
  %pNext5.i.le = getelementptr inbounds i8, ptr %pPicTail.0.i, i64 72
  store ptr %pPic.028.i, ptr %pNext5.i.le, align 8
  store ptr %pPic.0.i, ptr %pDecOuputPic.i, align 8
  %pNext13.i = getelementptr inbounds i8, ptr %pPic.031.i14, i64 72
  store ptr null, ptr %pNext13.i, align 8
  br label %ClearDecPicList.exit

ClearDecPicList.exit:                             ; preds = %while.body.i, %land.rhs.i.preheader, %entry, %land.lhs.true.i, %while.end9.i
  %call = tail call i32 @decode_one_frame(ptr noundef %0) #18
  switch i32 %call, label %if.else3 [
    i32 2, label %if.end4
    i32 1, label %if.then2
  ]

if.then2:                                         ; preds = %ClearDecPicList.exit
  br label %if.end4

if.else3:                                         ; preds = %ClearDecPicList.exit
  %or = or i32 %call, 32768
  br label %if.end4

if.end4:                                          ; preds = %ClearDecPicList.exit, %if.then2, %if.else3
  %iRet.0 = phi i32 [ 1, %if.then2 ], [ %or, %if.else3 ], [ 0, %ClearDecPicList.exit ]
  %5 = load ptr, ptr %p_Vid, align 8
  %pDecOuputPic = getelementptr inbounds i8, ptr %5, i64 856816
  %6 = load ptr, ptr %pDecOuputPic, align 8
  store ptr %6, ptr %ppDecPicList, align 8
  ret i32 %iRet.0
}

declare i32 @decode_one_frame(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @FinitDecoder(ptr nocapture noundef writeonly %ppDecPicList) local_unnamed_addr #3 {
entry:
  %0 = load ptr, ptr @p_Dec, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %p_Vid = getelementptr inbounds i8, ptr %0, i64 8
  %1 = load ptr, ptr %p_Vid, align 8
  %pDecOuputPic.i = getelementptr inbounds i8, ptr %1, i64 856816
  %pPic.028.i = load ptr, ptr %pDecOuputPic.i, align 8
  %tobool.not29.i = icmp eq ptr %pPic.028.i, null
  br i1 %tobool.not29.i, label %ClearDecPicList.exit, label %land.rhs.i.preheader

land.rhs.i.preheader:                             ; preds = %if.end
  %2 = load i32, ptr %pPic.028.i, align 8
  %tobool1.not.i14 = icmp eq i32 %2, 0
  br i1 %tobool1.not.i14, label %while.body.i, label %ClearDecPicList.exit

land.rhs.i:                                       ; preds = %while.body.i
  %3 = load i32, ptr %pPic.0.i, align 8
  %tobool1.not.i = icmp eq i32 %3, 0
  br i1 %tobool1.not.i, label %while.body.i, label %land.lhs.true.i

while.body.i:                                     ; preds = %land.rhs.i.preheader, %land.rhs.i
  %pPic.031.i15 = phi ptr [ %pPic.0.i, %land.rhs.i ], [ %pPic.028.i, %land.rhs.i.preheader ]
  %pNext.i = getelementptr inbounds i8, ptr %pPic.031.i15, i64 72
  %pPic.0.i = load ptr, ptr %pNext.i, align 8
  %tobool.not.i = icmp eq ptr %pPic.0.i, null
  br i1 %tobool.not.i, label %ClearDecPicList.exit, label %land.rhs.i

land.lhs.true.i:                                  ; preds = %land.rhs.i
  %cmp.not.i = icmp eq ptr %pPic.0.i, %pPic.028.i
  br i1 %cmp.not.i, label %ClearDecPicList.exit, label %while.cond4.i

while.cond4.i:                                    ; preds = %land.lhs.true.i, %while.cond4.i
  %pPicTail.0.i = phi ptr [ %4, %while.cond4.i ], [ %pPic.0.i, %land.lhs.true.i ]
  %pNext5.i = getelementptr inbounds i8, ptr %pPicTail.0.i, i64 72
  %4 = load ptr, ptr %pNext5.i, align 8
  %tobool6.not.i = icmp eq ptr %4, null
  br i1 %tobool6.not.i, label %while.end9.i, label %while.cond4.i

while.end9.i:                                     ; preds = %while.cond4.i
  %pNext5.i.le = getelementptr inbounds i8, ptr %pPicTail.0.i, i64 72
  store ptr %pPic.028.i, ptr %pNext5.i.le, align 8
  store ptr %pPic.0.i, ptr %pDecOuputPic.i, align 8
  %pNext13.i = getelementptr inbounds i8, ptr %pPic.031.i15, i64 72
  store ptr null, ptr %pNext13.i, align 8
  %.pre = load ptr, ptr %p_Vid, align 8
  br label %ClearDecPicList.exit

ClearDecPicList.exit:                             ; preds = %while.body.i, %land.rhs.i.preheader, %if.end, %land.lhs.true.i, %while.end9.i
  %5 = phi ptr [ %1, %if.end ], [ %1, %land.lhs.true.i ], [ %.pre, %while.end9.i ], [ %1, %land.rhs.i.preheader ], [ %1, %while.body.i ]
  %p_Dpb = getelementptr inbounds i8, ptr %5, i64 856656
  %6 = load ptr, ptr %p_Dpb, align 8
  tail call void @flush_dpb(ptr noundef %6, i32 noundef -1) #18
  %7 = load ptr, ptr %p_Vid, align 8
  %annex_b = getelementptr inbounds i8, ptr %7, i64 856608
  %8 = load ptr, ptr %annex_b, align 8
  tail call void @ResetAnnexB(ptr noundef %8) #18
  %9 = load ptr, ptr %p_Vid, align 8
  %newframe = getelementptr inbounds i8, ptr %9, i64 848872
  store i32 0, ptr %newframe, align 8
  %10 = load ptr, ptr %p_Vid, align 8
  %previous_frame_num = getelementptr inbounds i8, ptr %10, i64 851864
  store i32 0, ptr %previous_frame_num, align 8
  %11 = load ptr, ptr %p_Vid, align 8
  %pDecOuputPic = getelementptr inbounds i8, ptr %11, i64 856816
  %12 = load ptr, ptr %pDecOuputPic, align 8
  store ptr %12, ptr %ppDecPicList, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %ClearDecPicList.exit
  ret i32 0
}

declare void @flush_dpb(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @ResetAnnexB(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @CloseDecoder() local_unnamed_addr #3 {
entry:
  %string.i = alloca [255 x i8], align 16
  %now.i = alloca i64, align 8
  %0 = load ptr, ptr @p_Dec, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %p_Vid = getelementptr inbounds i8, ptr %0, i64 8
  %1 = load ptr, ptr %p_Vid, align 8
  %active_pps1.i = getelementptr inbounds i8, ptr %1, i64 8
  %2 = load ptr, ptr %active_pps1.i, align 8
  %3 = load ptr, ptr %1, align 8
  %snr3.i = getelementptr inbounds i8, ptr %1, i64 848704
  %4 = load ptr, ptr %snr3.i, align 8
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %string.i) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %now.i) #18
  %silent.i = getelementptr inbounds i8, ptr %3, i64 784
  %5 = load i32, ptr %silent.i, align 8
  %cmp.i = icmp eq i32 %5, 0
  %6 = load ptr, ptr @stdout, align 8
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %7 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 75, i64 1, ptr %6)
  %8 = load ptr, ptr @stdout, align 8
  %snra.i = getelementptr inbounds i8, ptr %4, i64 28
  %9 = load float, ptr %snra.i, align 4
  %conv.i = fpext float %9 to double
  %call4.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.24, double noundef %conv.i) #18
  %10 = load ptr, ptr @stdout, align 8
  %arrayidx6.i = getelementptr inbounds i8, ptr %4, i64 32
  %11 = load float, ptr %arrayidx6.i, align 4
  %conv7.i = fpext float %11 to double
  %call8.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.25, double noundef %conv7.i) #18
  %12 = load ptr, ptr @stdout, align 8
  %arrayidx10.i = getelementptr inbounds i8, ptr %4, i64 36
  %13 = load float, ptr %arrayidx10.i, align 4
  %conv11.i = fpext float %13 to double
  %call12.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.26, double noundef %conv11.i) #18
  br label %if.end.i

if.else.i:                                        ; preds = %if.end
  %14 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 76, i64 1, ptr %6)
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %15 = load ptr, ptr @stdout, align 8
  %16 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 75, i64 1, ptr %15)
  %17 = load ptr, ptr @stdout, align 8
  %call18.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #18
  %18 = load ptr, ptr @stdout, align 8
  %fputc.i = tail call i32 @fputc(i32 10, ptr %18)
  %19 = load ptr, ptr @stdout, align 8
  %call20.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #18
  store i64 27977503644020588, ptr %string.i, align 16
  %call23.i = call noalias ptr @fopen(ptr noundef nonnull %string.i, ptr noundef nonnull @.str.36)
  %cmp24.i = icmp eq ptr %call23.i, null
  br i1 %cmp24.i, label %if.then26.i, label %if.else41.i

if.then26.i:                                      ; preds = %if.end.i
  %call28.i = call noalias ptr @fopen(ptr noundef nonnull %string.i, ptr noundef nonnull @.str.37)
  %cmp29.i = icmp eq ptr %call28.i, null
  br i1 %cmp29.i, label %if.then31.i, label %if.else34.i

if.then31.i:                                      ; preds = %if.then26.i
  %call33.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.38, ptr noundef nonnull %string.i) #18
  %20 = load ptr, ptr @stderr, align 8
  %call.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef nonnull @errortext) #16
  call void @exit(i32 noundef 500) #17
  unreachable

if.else34.i:                                      ; preds = %if.then26.i
  %21 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 117, i64 1, ptr nonnull %call28.i)
  %22 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 93, i64 1, ptr nonnull %call28.i)
  %23 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 118, i64 1, ptr nonnull %call28.i)
  %24 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 118, i64 1, ptr nonnull %call28.i)
  %25 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 117, i64 1, ptr nonnull %call28.i)
  br label %if.end45.i

if.else41.i:                                      ; preds = %if.end.i
  %call42.i = tail call i32 @fclose(ptr noundef nonnull %call23.i)
  %call44.i = call noalias ptr @fopen(ptr noundef nonnull %string.i, ptr noundef nonnull @.str.37)
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.else41.i, %if.else34.i
  %p_log.0.i = phi ptr [ %call28.i, %if.else34.i ], [ %call44.i, %if.else41.i ]
  %call46.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %p_log.0.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.44) #18
  %call47.i = tail call i64 @time(ptr noundef null) #18
  store i64 %call47.i, ptr %now.i, align 8
  %call48.i = call i64 @time(ptr noundef nonnull %now.i) #18
  %call49.i = call ptr @localtime(ptr noundef nonnull %now.i) #18
  %call51.i = call i64 @strftime(ptr noundef nonnull %string.i, i64 noundef 255, ptr noundef nonnull @.str.45, ptr noundef %call49.i) #18
  %call53.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %p_log.0.i, ptr noundef nonnull @.str.46, ptr noundef nonnull %string.i) #18
  %call55.i = call i64 @strftime(ptr noundef nonnull %string.i, i64 noundef 255, ptr noundef nonnull @.str.47, ptr noundef %call49.i) #18
  %call57.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %p_log.0.i, ptr noundef nonnull @.str.46, ptr noundef nonnull %string.i) #18
  %call59.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %p_log.0.i, ptr noundef nonnull @.str.48, ptr noundef nonnull %3) #18
  %number.i = getelementptr inbounds i8, ptr %1, i64 848712
  %26 = load i32, ptr %number.i, align 8
  %call60.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %p_log.0.i, ptr noundef nonnull @.str.49, i32 noundef %26) #18
  %width.i = getelementptr inbounds i8, ptr %1, i64 848780
  %27 = load i32, ptr %width.i, align 4
  %height.i = getelementptr inbounds i8, ptr %1, i64 848784
  %28 = load i32, ptr %height.i, align 8
  %call61.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %p_log.0.i, ptr noundef nonnull @.str.50, i32 noundef %27, i32 noundef %28) #18
  %yuv_format.i = getelementptr inbounds i8, ptr %1, i64 849088
  %29 = load i32, ptr %yuv_format.i, align 8
  %idxprom.i = sext i32 %29 to i64
  %arrayidx62.i = getelementptr inbounds [4 x [4 x i8]], ptr @Report.yuv_formats, i64 0, i64 %idxprom.i
  %call64.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %p_log.0.i, ptr noundef nonnull @.str.51, ptr noundef nonnull %arrayidx62.i) #18
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end73.i, label %if.then65.i

if.then65.i:                                      ; preds = %if.end45.i
  %entropy_coding_mode_flag.i = getelementptr inbounds i8, ptr %2, i64 12
  %30 = load i32, ptr %entropy_coding_mode_flag.i, align 4
  %cmp66.i = icmp eq i32 %30, 0
  %.str.52..str.53.i = select i1 %cmp66.i, ptr @.str.52, ptr @.str.53
  %31 = call i64 @fwrite(ptr nonnull %.str.52..str.53.i, i64 7, i64 1, ptr %p_log.0.i)
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then65.i, %if.end45.i
  %snr1.i = getelementptr inbounds i8, ptr %4, i64 16
  %32 = load float, ptr %snr1.i, align 4
  %conv75.i = fpext float %32 to double
  %call76.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %p_log.0.i, ptr noundef nonnull @.str.54, double noundef %conv75.i) #18
  %arrayidx78.i = getelementptr inbounds i8, ptr %4, i64 20
  %33 = load float, ptr %arrayidx78.i, align 4
  %conv79.i = fpext float %33 to double
  %call80.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %p_log.0.i, ptr noundef nonnull @.str.54, double noundef %conv79.i) #18
  %arrayidx82.i = getelementptr inbounds i8, ptr %4, i64 24
  %34 = load float, ptr %arrayidx82.i, align 4
  %conv83.i = fpext float %34 to double
  %call84.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %p_log.0.i, ptr noundef nonnull @.str.54, double noundef %conv83.i) #18
  %snra85.i = getelementptr inbounds i8, ptr %4, i64 28
  %35 = load float, ptr %snra85.i, align 4
  %conv87.i = fpext float %35 to double
  %call88.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %p_log.0.i, ptr noundef nonnull @.str.54, double noundef %conv87.i) #18
  %arrayidx90.i = getelementptr inbounds i8, ptr %4, i64 32
  %36 = load float, ptr %arrayidx90.i, align 4
  %conv91.i = fpext float %36 to double
  %call92.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %p_log.0.i, ptr noundef nonnull @.str.54, double noundef %conv91.i) #18
  %arrayidx94.i = getelementptr inbounds i8, ptr %4, i64 36
  %37 = load float, ptr %arrayidx94.i, align 4
  %conv95.i = fpext float %37 to double
  %call96.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %p_log.0.i, ptr noundef nonnull @.str.54, double noundef %conv95.i) #18
  %fputc242.i = call i32 @fputc(i32 10, ptr %p_log.0.i)
  %call98.i = call i32 @fclose(ptr noundef %p_log.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %string.i, ptr noundef nonnull align 1 dereferenceable(12) @.str.55, i64 12, i1 false)
  %call102.i = call noalias ptr @fopen(ptr noundef nonnull %string.i, ptr noundef nonnull @.str.37)
  %Bframe_ctr.i = getelementptr inbounds i8, ptr %1, i64 856000
  %38 = load i32, ptr %Bframe_ctr.i, align 8
  %cmp103.not.i = icmp eq i32 %38, 0
  %39 = load i32, ptr %number.i, align 8
  %ppSliceList133.i = getelementptr inbounds i8, ptr %1, i64 848736
  %40 = load ptr, ptr %ppSliceList133.i, align 8
  %41 = load ptr, ptr %40, align 8
  br i1 %cmp103.not.i, label %if.else131.i, label %if.then105.i

if.then105.i:                                     ; preds = %if.end73.i
  %qp.i = getelementptr inbounds i8, ptr %41, i64 148
  %42 = load i32, ptr %qp.i, align 4
  %43 = load float, ptr %snr1.i, align 4
  %conv110.i = fpext float %43 to double
  %44 = load float, ptr %arrayidx78.i, align 4
  %conv113.i = fpext float %44 to double
  %45 = load float, ptr %arrayidx82.i, align 4
  %conv116.i = fpext float %45 to double
  %46 = load float, ptr %snra85.i, align 4
  %conv119.i = fpext float %46 to double
  %47 = load float, ptr %arrayidx90.i, align 4
  %conv122.i = fpext float %47 to double
  %48 = load float, ptr %arrayidx94.i, align 4
  %conv125.i = fpext float %48 to double
  %tot_time.i = getelementptr inbounds i8, ptr %1, i64 851880
  %49 = load i64, ptr %tot_time.i, align 8
  %conv126.i = sitofp i64 %49 to double
  %mul.i = fmul double %conv126.i, 1.000000e-03
  %add.i = add i32 %38, -1
  %sub.i = add i32 %add.i, %39
  %conv129.i = sitofp i32 %sub.i to double
  %div.i = fdiv double %mul.i, %conv129.i
  %call130.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call102.i, ptr noundef nonnull @.str.56, i32 noundef %39, i32 noundef 0, i32 noundef %42, double noundef %conv110.i, double noundef %conv113.i, double noundef %conv116.i, i32 noundef 0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 0, double noundef %conv119.i, double noundef %conv122.i, double noundef %conv125.i, i32 noundef 0, double noundef %div.i) #18
  br label %Report.exit

if.else131.i:                                     ; preds = %if.end73.i
  %tobool135.not.i = icmp eq ptr %41, null
  br i1 %tobool135.not.i, label %cond.end.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.else131.i
  %qp138.i = getelementptr inbounds i8, ptr %41, i64 148
  %50 = load i32, ptr %qp138.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.else131.i
  %cond.i = phi i32 [ %50, %cond.true.i ], [ 0, %if.else131.i ]
  %51 = load float, ptr %snr1.i, align 4
  %conv141.i = fpext float %51 to double
  %52 = load float, ptr %arrayidx78.i, align 4
  %conv144.i = fpext float %52 to double
  %53 = load float, ptr %arrayidx82.i, align 4
  %conv147.i = fpext float %53 to double
  %54 = load float, ptr %snra85.i, align 4
  %conv150.i = fpext float %54 to double
  %55 = load float, ptr %arrayidx90.i, align 4
  %conv153.i = fpext float %55 to double
  %56 = load float, ptr %arrayidx94.i, align 4
  %conv156.i = fpext float %56 to double
  %tobool158.not.i = icmp eq i32 %39, 0
  br i1 %tobool158.not.i, label %cond.end167.i, label %cond.true159.i

cond.true159.i:                                   ; preds = %cond.end.i
  %tot_time160.i = getelementptr inbounds i8, ptr %1, i64 851880
  %57 = load i64, ptr %tot_time160.i, align 8
  %conv161.i = sitofp i64 %57 to double
  %mul162.i = fmul double %conv161.i, 1.000000e-03
  %conv164.i = sitofp i32 %39 to double
  %div165.i = fdiv double %mul162.i, %conv164.i
  br label %cond.end167.i

cond.end167.i:                                    ; preds = %cond.true159.i, %cond.end.i
  %cond168.i = phi double [ %div165.i, %cond.true159.i ], [ 0.000000e+00, %cond.end.i ]
  %call169.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call102.i, ptr noundef nonnull @.str.56, i32 noundef %39, i32 noundef 0, i32 noundef %cond.i, double noundef %conv141.i, double noundef %conv144.i, double noundef %conv147.i, i32 noundef 0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 0, double noundef %conv150.i, double noundef %conv153.i, double noundef %conv156.i, i32 noundef 0, double noundef %cond168.i) #18
  br label %Report.exit

Report.exit:                                      ; preds = %if.then105.i, %cond.end167.i
  %call171.i = call i32 @fclose(ptr noundef %call102.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %now.i) #18
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %string.i) #18
  %58 = load ptr, ptr %p_Vid, align 8
  %call = call i32 @FmoFinit(ptr noundef %58) #18
  %59 = load ptr, ptr %p_Vid, align 8
  call void @free_global_buffers(ptr noundef %59)
  %60 = load ptr, ptr %p_Vid, align 8
  %bitsfile = getelementptr inbounds i8, ptr %60, i64 856616
  %61 = load ptr, ptr %bitsfile, align 8
  %CloseBitsFile = getelementptr inbounds i8, ptr %61, i64 8
  %62 = load ptr, ptr %CloseBitsFile, align 8
  call void %62(ptr noundef %60) #18
  br label %for.body

for.body:                                         ; preds = %Report.exit, %for.inc
  %indvars.iv = phi i64 [ 0, %Report.exit ], [ %indvars.iv.next, %for.inc ]
  %63 = load ptr, ptr %p_Vid, align 8
  %p_out_mvc = getelementptr inbounds i8, ptr %63, i64 851892
  %arrayidx = getelementptr inbounds [1024 x i32], ptr %p_out_mvc, i64 0, i64 %indvars.iv
  %64 = load i32, ptr %arrayidx, align 4
  %cmp6.not = icmp eq i32 %64, -1
  br i1 %cmp6.not, label %for.inc, label %if.then7

if.then7:                                         ; preds = %for.body
  %call12 = call i32 @close(i32 noundef %64) #18
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %65 = load ptr, ptr %p_Vid, align 8
  %p_ref = getelementptr inbounds i8, ptr %65, i64 855988
  %66 = load i32, ptr %p_ref, align 4
  %cmp15.not = icmp eq i32 %66, -1
  br i1 %cmp15.not, label %if.end20, label %if.then16

if.then16:                                        ; preds = %for.end
  %call19 = call i32 @close(i32 noundef %66) #18
  %.pre = load ptr, ptr %p_Vid, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %for.end
  %67 = phi ptr [ %.pre, %if.then16 ], [ %65, %for.end ]
  %erc_errorVar = getelementptr inbounds i8, ptr %67, i64 856504
  %68 = load ptr, ptr %erc_errorVar, align 8
  call void @ercClose(ptr noundef %67, ptr noundef %68) #18
  %69 = load ptr, ptr %p_Vid, align 8
  call void @CleanUpPPS(ptr noundef %69) #18
  %70 = load ptr, ptr %p_Vid, align 8
  %SubsetSeqParSet = getelementptr inbounds i8, ptr %70, i64 699424
  call void @reset_subset_sps(ptr noundef nonnull %SubsetSeqParSet) #18
  %71 = load ptr, ptr %p_Vid, align 8
  %add.ptr.1 = getelementptr inbounds i8, ptr %71, i64 704088
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.1) #18
  %72 = load ptr, ptr %p_Vid, align 8
  %add.ptr.2 = getelementptr inbounds i8, ptr %72, i64 708752
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.2) #18
  %73 = load ptr, ptr %p_Vid, align 8
  %add.ptr.3 = getelementptr inbounds i8, ptr %73, i64 713416
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.3) #18
  %74 = load ptr, ptr %p_Vid, align 8
  %add.ptr.4 = getelementptr inbounds i8, ptr %74, i64 718080
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.4) #18
  %75 = load ptr, ptr %p_Vid, align 8
  %add.ptr.5 = getelementptr inbounds i8, ptr %75, i64 722744
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.5) #18
  %76 = load ptr, ptr %p_Vid, align 8
  %add.ptr.6 = getelementptr inbounds i8, ptr %76, i64 727408
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.6) #18
  %77 = load ptr, ptr %p_Vid, align 8
  %add.ptr.7 = getelementptr inbounds i8, ptr %77, i64 732072
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.7) #18
  %78 = load ptr, ptr %p_Vid, align 8
  %add.ptr.8 = getelementptr inbounds i8, ptr %78, i64 736736
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.8) #18
  %79 = load ptr, ptr %p_Vid, align 8
  %add.ptr.9 = getelementptr inbounds i8, ptr %79, i64 741400
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.9) #18
  %80 = load ptr, ptr %p_Vid, align 8
  %add.ptr.10 = getelementptr inbounds i8, ptr %80, i64 746064
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.10) #18
  %81 = load ptr, ptr %p_Vid, align 8
  %add.ptr.11 = getelementptr inbounds i8, ptr %81, i64 750728
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.11) #18
  %82 = load ptr, ptr %p_Vid, align 8
  %add.ptr.12 = getelementptr inbounds i8, ptr %82, i64 755392
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.12) #18
  %83 = load ptr, ptr %p_Vid, align 8
  %add.ptr.13 = getelementptr inbounds i8, ptr %83, i64 760056
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.13) #18
  %84 = load ptr, ptr %p_Vid, align 8
  %add.ptr.14 = getelementptr inbounds i8, ptr %84, i64 764720
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.14) #18
  %85 = load ptr, ptr %p_Vid, align 8
  %add.ptr.15 = getelementptr inbounds i8, ptr %85, i64 769384
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.15) #18
  %86 = load ptr, ptr %p_Vid, align 8
  %add.ptr.16 = getelementptr inbounds i8, ptr %86, i64 774048
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.16) #18
  %87 = load ptr, ptr %p_Vid, align 8
  %add.ptr.17 = getelementptr inbounds i8, ptr %87, i64 778712
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.17) #18
  %88 = load ptr, ptr %p_Vid, align 8
  %add.ptr.18 = getelementptr inbounds i8, ptr %88, i64 783376
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.18) #18
  %89 = load ptr, ptr %p_Vid, align 8
  %add.ptr.19 = getelementptr inbounds i8, ptr %89, i64 788040
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.19) #18
  %90 = load ptr, ptr %p_Vid, align 8
  %add.ptr.20 = getelementptr inbounds i8, ptr %90, i64 792704
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.20) #18
  %91 = load ptr, ptr %p_Vid, align 8
  %add.ptr.21 = getelementptr inbounds i8, ptr %91, i64 797368
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.21) #18
  %92 = load ptr, ptr %p_Vid, align 8
  %add.ptr.22 = getelementptr inbounds i8, ptr %92, i64 802032
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.22) #18
  %93 = load ptr, ptr %p_Vid, align 8
  %add.ptr.23 = getelementptr inbounds i8, ptr %93, i64 806696
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.23) #18
  %94 = load ptr, ptr %p_Vid, align 8
  %add.ptr.24 = getelementptr inbounds i8, ptr %94, i64 811360
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.24) #18
  %95 = load ptr, ptr %p_Vid, align 8
  %add.ptr.25 = getelementptr inbounds i8, ptr %95, i64 816024
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.25) #18
  %96 = load ptr, ptr %p_Vid, align 8
  %add.ptr.26 = getelementptr inbounds i8, ptr %96, i64 820688
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.26) #18
  %97 = load ptr, ptr %p_Vid, align 8
  %add.ptr.27 = getelementptr inbounds i8, ptr %97, i64 825352
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.27) #18
  %98 = load ptr, ptr %p_Vid, align 8
  %add.ptr.28 = getelementptr inbounds i8, ptr %98, i64 830016
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.28) #18
  %99 = load ptr, ptr %p_Vid, align 8
  %add.ptr.29 = getelementptr inbounds i8, ptr %99, i64 834680
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.29) #18
  %100 = load ptr, ptr %p_Vid, align 8
  %add.ptr.30 = getelementptr inbounds i8, ptr %100, i64 839344
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.30) #18
  %101 = load ptr, ptr %p_Vid, align 8
  %add.ptr.31 = getelementptr inbounds i8, ptr %101, i64 844008
  call void @reset_subset_sps(ptr noundef nonnull %add.ptr.31) #18
  %102 = load ptr, ptr %p_Vid, align 8
  %p_Dpb = getelementptr inbounds i8, ptr %102, i64 856656
  %103 = load ptr, ptr %p_Dpb, align 8
  call void @free_dpb(ptr noundef %103) #18
  %104 = load ptr, ptr %p_Vid, align 8
  call void @uninit_out_buffer(ptr noundef %104) #18
  %105 = load ptr, ptr %0, align 8
  call void @free(ptr noundef %105) #18
  %106 = load ptr, ptr %p_Vid, align 8
  %cmp.not.i = icmp eq ptr %106, null
  br i1 %cmp.not.i, label %free_img.exit, label %if.then.i61

if.then.i61:                                      ; preds = %if.end20
  call void @free_annex_b(ptr noundef nonnull %106) #18
  %seiToneMapping.i = getelementptr inbounds i8, ptr %106, i64 856728
  %107 = load ptr, ptr %seiToneMapping.i, align 8
  %cmp1.not.i = icmp eq ptr %107, null
  br i1 %cmp1.not.i, label %if.end.i62, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i61
  call void @free(ptr noundef nonnull %107) #18
  store ptr null, ptr %seiToneMapping.i, align 8
  br label %if.end.i62

if.end.i62:                                       ; preds = %if.then2.i, %if.then.i61
  %bitsfile.i = getelementptr inbounds i8, ptr %106, i64 856616
  %108 = load ptr, ptr %bitsfile.i, align 8
  %cmp5.not.i = icmp eq ptr %108, null
  br i1 %cmp5.not.i, label %if.end9.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i62
  call void @free(ptr noundef nonnull %108) #18
  store ptr null, ptr %bitsfile.i, align 8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end.i62
  %p_Dpb_legacy.i = getelementptr inbounds i8, ptr %106, i64 856664
  %109 = load ptr, ptr %p_Dpb_legacy.i, align 8
  %cmp10.not.i = icmp eq ptr %109, null
  br i1 %cmp10.not.i, label %if.end14.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @free(ptr noundef nonnull %109) #18
  store ptr null, ptr %p_Dpb_legacy.i, align 8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %if.end9.i
  %p_Dpb_layer.i = getelementptr inbounds i8, ptr %106, i64 856672
  %110 = load ptr, ptr %p_Dpb_layer.i, align 8
  %cmp16.not.i = icmp eq ptr %110, null
  br i1 %cmp16.not.i, label %for.inc.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @free(ptr noundef nonnull %110) #18
  store ptr null, ptr %p_Dpb_layer.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then17.i, %if.end14.i
  %arrayidx.1.i = getelementptr inbounds i8, ptr %106, i64 856680
  %111 = load ptr, ptr %arrayidx.1.i, align 8
  %cmp16.not.1.i = icmp eq ptr %111, null
  br i1 %cmp16.not.1.i, label %for.inc.1.i, label %if.then17.1.i

if.then17.1.i:                                    ; preds = %for.inc.i
  call void @free(ptr noundef nonnull %111) #18
  store ptr null, ptr %arrayidx.1.i, align 8
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then17.1.i, %for.inc.i
  %p_Dpb.i = getelementptr inbounds i8, ptr %106, i64 856656
  store ptr null, ptr %p_Dpb.i, align 8
  %snr.i = getelementptr inbounds i8, ptr %106, i64 848704
  %112 = load ptr, ptr %snr.i, align 8
  %cmp25.not.i = icmp eq ptr %112, null
  br i1 %cmp25.not.i, label %if.end29.i, label %if.then26.i63

if.then26.i63:                                    ; preds = %for.inc.1.i
  call void @free(ptr noundef nonnull %112) #18
  store ptr null, ptr %snr.i, align 8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then26.i63, %for.inc.1.i
  %old_slice.i = getelementptr inbounds i8, ptr %106, i64 848696
  %113 = load ptr, ptr %old_slice.i, align 8
  %cmp30.not.i = icmp eq ptr %113, null
  br i1 %cmp30.not.i, label %if.end34.i, label %if.then31.i64

if.then31.i64:                                    ; preds = %if.end29.i
  call void @free(ptr noundef nonnull %113) #18
  store ptr null, ptr %old_slice.i, align 8
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then31.i64, %if.end29.i
  %pNextSlice.i = getelementptr inbounds i8, ptr %106, i64 848880
  %114 = load ptr, ptr %pNextSlice.i, align 8
  %tobool.not.i65 = icmp eq ptr %114, null
  br i1 %tobool.not.i65, label %if.end38.i, label %if.then35.i

if.then35.i:                                      ; preds = %if.end34.i
  call fastcc void @free_slice(ptr noundef nonnull %114)
  store ptr null, ptr %pNextSlice.i, align 8
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then35.i, %if.end34.i
  %ppSliceList.i = getelementptr inbounds i8, ptr %106, i64 848736
  %115 = load ptr, ptr %ppSliceList.i, align 8
  %tobool39.not.i = icmp eq ptr %115, null
  br i1 %tobool39.not.i, label %if.end58.i, label %for.cond42.preheader.i

for.cond42.preheader.i:                           ; preds = %if.end38.i
  %iNumOfSlicesAllocated.i = getelementptr inbounds i8, ptr %106, i64 848724
  %116 = load i32, ptr %iNumOfSlicesAllocated.i, align 4
  %cmp43123.i = icmp sgt i32 %116, 0
  br i1 %cmp43123.i, label %for.body44.i, label %for.end56.i

for.body44.i:                                     ; preds = %for.cond42.preheader.i, %for.inc54.i
  %117 = phi i32 [ %120, %for.inc54.i ], [ %116, %for.cond42.preheader.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc54.i ], [ 0, %for.cond42.preheader.i ]
  %118 = load ptr, ptr %ppSliceList.i, align 8
  %arrayidx47.i = getelementptr inbounds ptr, ptr %118, i64 %indvars.iv.i
  %119 = load ptr, ptr %arrayidx47.i, align 8
  %tobool48.not.i = icmp eq ptr %119, null
  br i1 %tobool48.not.i, label %for.inc54.i, label %if.then49.i

if.then49.i:                                      ; preds = %for.body44.i
  call fastcc void @free_slice(ptr noundef nonnull %119)
  %.pre.i = load i32, ptr %iNumOfSlicesAllocated.i, align 4
  br label %for.inc54.i

for.inc54.i:                                      ; preds = %if.then49.i, %for.body44.i
  %120 = phi i32 [ %117, %for.body44.i ], [ %.pre.i, %if.then49.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %121 = sext i32 %120 to i64
  %cmp43.i = icmp slt i64 %indvars.iv.next.i, %121
  br i1 %cmp43.i, label %for.body44.i, label %for.end56.loopexit.i

for.end56.loopexit.i:                             ; preds = %for.inc54.i
  %.pre127.i = load ptr, ptr %ppSliceList.i, align 8
  br label %for.end56.i

for.end56.i:                                      ; preds = %for.end56.loopexit.i, %for.cond42.preheader.i
  %122 = phi ptr [ %.pre127.i, %for.end56.loopexit.i ], [ %115, %for.cond42.preheader.i ]
  call void @free(ptr noundef %122) #18
  br label %if.end58.i

if.end58.i:                                       ; preds = %for.end56.i, %if.end38.i
  %nalu.i = getelementptr inbounds i8, ptr %106, i64 856832
  %123 = load ptr, ptr %nalu.i, align 8
  %tobool59.not.i = icmp eq ptr %123, null
  br i1 %tobool59.not.i, label %if.end63.i, label %if.then60.i

if.then60.i:                                      ; preds = %if.end58.i
  call void @FreeNALU(ptr noundef nonnull %123) #18
  store ptr null, ptr %nalu.i, align 8
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then60.i, %if.end58.i
  %pDecOuputPic.i = getelementptr inbounds i8, ptr %106, i64 856816
  %124 = load ptr, ptr %pDecOuputPic.i, align 8
  %tobool.not11.i.i = icmp eq ptr %124, null
  br i1 %tobool.not11.i.i, label %FreeDecPicList.exit.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end63.i, %if.end.i.i
  %pDecPicList.addr.012.i.i = phi ptr [ %125, %if.end.i.i ], [ %124, %if.end63.i ]
  %pNext.i.i = getelementptr inbounds i8, ptr %pDecPicList.addr.012.i.i, i64 72
  %125 = load ptr, ptr %pNext.i.i, align 8
  %pY.i.i = getelementptr inbounds i8, ptr %pDecPicList.addr.012.i.i, i64 24
  %126 = load ptr, ptr %pY.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %126, null
  br i1 %tobool1.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @free(ptr noundef nonnull %126) #18
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i.i
  call void @free(ptr noundef nonnull %pDecPicList.addr.012.i.i) #18
  %tobool.not.i.i = icmp eq ptr %125, null
  br i1 %tobool.not.i.i, label %FreeDecPicList.exit.i, label %while.body.i.i

FreeDecPicList.exit.i:                            ; preds = %if.end.i.i, %if.end63.i
  %pNextPPS.i = getelementptr inbounds i8, ptr %106, i64 856872
  %127 = load ptr, ptr %pNextPPS.i, align 8
  %tobool64.not.i = icmp eq ptr %127, null
  br i1 %tobool64.not.i, label %if.end68.i, label %if.then65.i66

if.then65.i66:                                    ; preds = %FreeDecPicList.exit.i
  call void @FreePPS(ptr noundef nonnull %127) #18
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then65.i66, %FreeDecPicList.exit.i
  call void @free(ptr noundef nonnull %106) #18
  br label %free_img.exit

free_img.exit:                                    ; preds = %if.end20, %if.end68.i
  call void @free(ptr noundef %0) #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %free_img.exit
  ret i32 0
}

declare i32 @FmoFinit(ptr noundef) local_unnamed_addr #6

declare i32 @close(i32 noundef) local_unnamed_addr #6

declare void @ercClose(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @CleanUpPPS(ptr noundef) local_unnamed_addr #6

declare void @reset_subset_sps(ptr noundef) local_unnamed_addr #6

declare void @free_dpb(ptr noundef) local_unnamed_addr #6

declare void @uninit_out_buffer(ptr noundef) local_unnamed_addr #6

declare ptr @AllocNALU(i32 noundef) local_unnamed_addr #6

declare ptr @AllocPPS() local_unnamed_addr #6

declare void @init_tone_mapping_sei(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

declare void @free_annex_b(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @free_slice(ptr noundef %currSlice) unnamed_addr #3 {
entry:
  tail call void @free_pred_mem(ptr noundef %currSlice) #18
  %cof = getelementptr inbounds i8, ptr %currSlice, i64 1272
  %0 = load ptr, ptr %cof, align 8
  tail call void @free_mem3Dint(ptr noundef %0) #18
  %mb_rres = getelementptr inbounds i8, ptr %currSlice, i64 1264
  %1 = load ptr, ptr %mb_rres, align 8
  tail call void @free_mem3Dint(ptr noundef %1) #18
  %mb_rec = getelementptr inbounds i8, ptr %currSlice, i64 1256
  %2 = load ptr, ptr %mb_rec, align 8
  tail call void @free_mem3Dpel(ptr noundef %2) #18
  %mb_pred = getelementptr inbounds i8, ptr %currSlice, i64 1248
  %3 = load ptr, ptr %mb_pred, align 8
  tail call void @free_mem3Dpel(ptr noundef %3) #18
  %wp_weight = getelementptr inbounds i8, ptr %currSlice, i64 13280
  %4 = load ptr, ptr %wp_weight, align 8
  tail call void @free_mem3Dint(ptr noundef %4) #18
  %wp_offset = getelementptr inbounds i8, ptr %currSlice, i64 13288
  %5 = load ptr, ptr %wp_offset, align 8
  tail call void @free_mem3Dint(ptr noundef %5) #18
  %wbp_weight = getelementptr inbounds i8, ptr %currSlice, i64 13296
  %6 = load ptr, ptr %wbp_weight, align 8
  tail call void @free_mem4Dint(ptr noundef %6) #18
  %partArr = getelementptr inbounds i8, ptr %currSlice, i64 312
  %7 = load ptr, ptr %partArr, align 8
  %8 = load ptr, ptr %7, align 8
  %streamBuffer.i = getelementptr inbounds i8, ptr %8, i64 16
  %9 = load ptr, ptr %streamBuffer.i, align 8
  tail call void @free(ptr noundef %9) #18
  %10 = load ptr, ptr %7, align 8
  tail call void @free(ptr noundef %10) #18
  %arrayidx.i.1 = getelementptr inbounds i8, ptr %7, i64 48
  %11 = load ptr, ptr %arrayidx.i.1, align 8
  %streamBuffer.i.1 = getelementptr inbounds i8, ptr %11, i64 16
  %12 = load ptr, ptr %streamBuffer.i.1, align 8
  tail call void @free(ptr noundef %12) #18
  %13 = load ptr, ptr %arrayidx.i.1, align 8
  tail call void @free(ptr noundef %13) #18
  %arrayidx.i.2 = getelementptr inbounds i8, ptr %7, i64 96
  %14 = load ptr, ptr %arrayidx.i.2, align 8
  %streamBuffer.i.2 = getelementptr inbounds i8, ptr %14, i64 16
  %15 = load ptr, ptr %streamBuffer.i.2, align 8
  tail call void @free(ptr noundef %15) #18
  %16 = load ptr, ptr %arrayidx.i.2, align 8
  tail call void @free(ptr noundef %16) #18
  tail call void @free(ptr noundef nonnull %7) #18
  %mot_ctx = getelementptr inbounds i8, ptr %currSlice, i64 320
  %17 = load ptr, ptr %mot_ctx, align 8
  tail call void @delete_contexts_MotionInfo(ptr noundef %17) #18
  %tex_ctx = getelementptr inbounds i8, ptr %currSlice, i64 328
  %18 = load ptr, ptr %tex_ctx, align 8
  tail call void @delete_contexts_TextureInfo(ptr noundef %18) #18
  %listX = getelementptr inbounds i8, ptr %currSlice, i64 264
  %19 = load ptr, ptr %listX, align 8
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free(ptr noundef nonnull %19) #18
  store ptr null, ptr %listX, align 8
  br label %for.inc

for.inc:                                          ; preds = %entry, %if.then
  %arrayidx.1 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %20 = load ptr, ptr %arrayidx.1, align 8
  %tobool.not.1 = icmp eq ptr %20, null
  br i1 %tobool.not.1, label %for.inc.1, label %if.then.1

if.then.1:                                        ; preds = %for.inc
  tail call void @free(ptr noundef nonnull %20) #18
  store ptr null, ptr %arrayidx.1, align 8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc
  %arrayidx.2 = getelementptr inbounds i8, ptr %currSlice, i64 280
  %21 = load ptr, ptr %arrayidx.2, align 8
  %tobool.not.2 = icmp eq ptr %21, null
  br i1 %tobool.not.2, label %for.inc.2, label %if.then.2

if.then.2:                                        ; preds = %for.inc.1
  tail call void @free(ptr noundef nonnull %21) #18
  store ptr null, ptr %arrayidx.2, align 8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1
  %arrayidx.3 = getelementptr inbounds i8, ptr %currSlice, i64 288
  %22 = load ptr, ptr %arrayidx.3, align 8
  %tobool.not.3 = icmp eq ptr %22, null
  br i1 %tobool.not.3, label %for.inc.3, label %if.then.3

if.then.3:                                        ; preds = %for.inc.2
  tail call void @free(ptr noundef nonnull %22) #18
  store ptr null, ptr %arrayidx.3, align 8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2
  %arrayidx.4 = getelementptr inbounds i8, ptr %currSlice, i64 296
  %23 = load ptr, ptr %arrayidx.4, align 8
  %tobool.not.4 = icmp eq ptr %23, null
  br i1 %tobool.not.4, label %for.inc.4, label %if.then.4

if.then.4:                                        ; preds = %for.inc.3
  tail call void @free(ptr noundef nonnull %23) #18
  store ptr null, ptr %arrayidx.4, align 8
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3
  %arrayidx.5 = getelementptr inbounds i8, ptr %currSlice, i64 304
  %24 = load ptr, ptr %arrayidx.5, align 8
  %tobool.not.5 = icmp eq ptr %24, null
  br i1 %tobool.not.5, label %for.inc.5, label %if.then.5

if.then.5:                                        ; preds = %for.inc.4
  tail call void @free(ptr noundef nonnull %24) #18
  store ptr null, ptr %arrayidx.5, align 8
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4
  %dec_ref_pic_marking_buffer = getelementptr inbounds i8, ptr %currSlice, i64 248
  %25 = load ptr, ptr %dec_ref_pic_marking_buffer, align 8
  %tobool7.not34 = icmp eq ptr %25, null
  br i1 %tobool7.not34, label %while.end, label %while.body

while.body:                                       ; preds = %for.inc.5, %while.body
  %26 = phi ptr [ %28, %while.body ], [ %25, %for.inc.5 ]
  %Next = getelementptr inbounds i8, ptr %26, i64 24
  %27 = load ptr, ptr %Next, align 8
  store ptr %27, ptr %dec_ref_pic_marking_buffer, align 8
  tail call void @free(ptr noundef nonnull %26) #18
  %28 = load ptr, ptr %dec_ref_pic_marking_buffer, align 8
  %tobool7.not = icmp eq ptr %28, null
  br i1 %tobool7.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %for.inc.5
  tail call void @free(ptr noundef nonnull %currSlice) #18
  ret void
}

declare void @FreeNALU(ptr noundef) local_unnamed_addr #6

declare void @FreePPS(ptr noundef) local_unnamed_addr #6

declare void @free_pred_mem(ptr noundef) local_unnamed_addr #6

declare void @free_mem3Dint(ptr noundef) local_unnamed_addr #6

declare void @free_mem4Dint(ptr noundef) local_unnamed_addr #6

declare void @delete_contexts_MotionInfo(ptr noundef) local_unnamed_addr #6

declare void @delete_contexts_TextureInfo(ptr noundef) local_unnamed_addr #6

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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
