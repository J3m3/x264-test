; ModuleID = 'x264_src/common/cabac.c'
source_filename = "x264_src/common/cabac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x264_cabac_range_lps = dso_local local_unnamed_addr constant [64 x [4 x i8]] [[4 x i8] c"\02\02\02\02", [4 x i8] c"\06\07\08\09", [4 x i8] c"\06\07\09\0A", [4 x i8] c"\06\08\09\0B", [4 x i8] c"\07\08\0A\0B", [4 x i8] c"\07\09\0A\0C", [4 x i8] c"\07\09\0B\0C", [4 x i8] c"\08\09\0B\0D", [4 x i8] c"\08\0A\0C\0E", [4 x i8] c"\09\0B\0C\0E", [4 x i8] c"\09\0B\0D\0F", [4 x i8] c"\0A\0C\0E\10", [4 x i8] c"\0A\0C\0F\11", [4 x i8] c"\0B\0D\0F\12", [4 x i8] c"\0B\0E\10\13", [4 x i8] c"\0C\0E\11\14", [4 x i8] c"\0C\0F\12\15", [4 x i8] c"\0D\10\13\16", [4 x i8] c"\0E\11\14\17", [4 x i8] c"\0E\12\15\18", [4 x i8] c"\0F\13\16\19", [4 x i8] c"\10\14\17\1B", [4 x i8] c"\11\15\19\1C", [4 x i8] c"\12\16\1A\1E", [4 x i8] c"\13\17\1B\1F", [4 x i8] c"\14\18\1D!", [4 x i8] c"\15\1A\1E#", [4 x i8] c"\16\1B %", [4 x i8] c"\17\1C!'", [4 x i8] c"\18\1E#)", [4 x i8] c"\1A\1F%+", [4 x i8] c"\1B!'-", [4 x i8] c"\1D#)0", [4 x i8] c"\1E%+2", [4 x i8] c" '.5", [4 x i8] c"!)08", [4 x i8] c"#+3;", [4 x i8] c"%-6>", [4 x i8] c"'08A", [4 x i8] c")2;E", [4 x i8] c"+5?H", [4 x i8] c".8BL", [4 x i8] c"0;EP", [4 x i8] c"3>IU", [4 x i8] c"5AMY", [4 x i8] c"8EQ^", [4 x i8] c";HVc", [4 x i8] c">LZh", [4 x i8] c"BP_n", [4 x i8] c"EUdt", [4 x i8] c"IYiz", [4 x i8] c"M^o\80", [4 x i8] c"Qcu\87", [4 x i8] c"Uh{\8E", [4 x i8] c"Zn\82\96", [4 x i8] c"_t\89\9E", [4 x i8] c"dz\90\A6", [4 x i8] c"i\80\98\AF", [4 x i8] c"o\87\A0\B9", [4 x i8] c"t\8E\A9\C3", [4 x i8] c"{\96\B2\CD", [4 x i8] c"\80\9E\BB\D8", [4 x i8] c"\80\A7\C5\E3", [4 x i8] c"\80\B0\D0\F0"], align 16, !dbg !0
@x264_cabac_transition = dso_local local_unnamed_addr constant [128 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\01", [2 x i8] c"\022", [2 x i8] c"3\03", [2 x i8] c"\022", [2 x i8] c"3\03", [2 x i8] c"\044", [2 x i8] c"5\05", [2 x i8] c"\064", [2 x i8] c"5\07", [2 x i8] c"\084", [2 x i8] c"5\09", [2 x i8] c"\0A6", [2 x i8] c"7\0B", [2 x i8] c"\0C6", [2 x i8] c"7\0D", [2 x i8] c"\0E6", [2 x i8] c"7\0F", [2 x i8] c"\108", [2 x i8] c"9\11", [2 x i8] c"\128", [2 x i8] c"9\13", [2 x i8] c"\148", [2 x i8] c"9\15", [2 x i8] c"\16:", [2 x i8] c";\17", [2 x i8] c"\18:", [2 x i8] c";\19", [2 x i8] c"\1A<", [2 x i8] c"=\1B", [2 x i8] c"\1C<", [2 x i8] c"=\1D", [2 x i8] c"\1E<", [2 x i8] c"=\1F", [2 x i8] c" >", [2 x i8] c"?!", [2 x i8] c"\22>", [2 x i8] c"?#", [2 x i8] c"$@", [2 x i8] c"A%", [2 x i8] c"&B", [2 x i8] c"C'", [2 x i8] c"(B", [2 x i8] c"C)", [2 x i8] c"*B", [2 x i8] c"C+", [2 x i8] c",D", [2 x i8] c"E-", [2 x i8] c".D", [2 x i8] c"E/", [2 x i8] c"0F", [2 x i8] c"G1", [2 x i8] c"2H", [2 x i8] c"I3", [2 x i8] c"4H", [2 x i8] c"I5", [2 x i8] c"6J", [2 x i8] c"K7", [2 x i8] c"8J", [2 x i8] c"K9", [2 x i8] c":L", [2 x i8] c"M;", [2 x i8] c"<N", [2 x i8] c"O=", [2 x i8] c">N", [2 x i8] c"O?", [2 x i8] c"@P", [2 x i8] c"QA", [2 x i8] c"BR", [2 x i8] c"SC", [2 x i8] c"DR", [2 x i8] c"SE", [2 x i8] c"FT", [2 x i8] c"UG", [2 x i8] c"HT", [2 x i8] c"UI", [2 x i8] c"JX", [2 x i8] c"YK", [2 x i8] c"LX", [2 x i8] c"YM", [2 x i8] c"NZ", [2 x i8] c"[O", [2 x i8] c"PZ", [2 x i8] c"[Q", [2 x i8] c"R^", [2 x i8] c"_S", [2 x i8] c"T^", [2 x i8] c"_U", [2 x i8] c"V`", [2 x i8] c"aW", [2 x i8] c"X`", [2 x i8] c"aY", [2 x i8] c"Zd", [2 x i8] c"e[", [2 x i8] c"\\d", [2 x i8] c"e]", [2 x i8] c"^f", [2 x i8] c"g_", [2 x i8] c"`h", [2 x i8] c"ia", [2 x i8] c"bh", [2 x i8] c"ic", [2 x i8] c"dl", [2 x i8] c"me", [2 x i8] c"fl", [2 x i8] c"mg", [2 x i8] c"hn", [2 x i8] c"oi", [2 x i8] c"jp", [2 x i8] c"qk", [2 x i8] c"lr", [2 x i8] c"sm", [2 x i8] c"nt", [2 x i8] c"uo", [2 x i8] c"pv", [2 x i8] c"wq", [2 x i8] c"rv", [2 x i8] c"ws", [2 x i8] c"tz", [2 x i8] c"{u", [2 x i8] c"vz", [2 x i8] c"{w", [2 x i8] c"x|", [2 x i8] c"}y", [2 x i8] c"z~", [2 x i8] c"\7F{", [2 x i8] c"|\7F", [2 x i8] c"~}"], align 16, !dbg !17
@x264_cabac_renorm_shift = dso_local local_unnamed_addr constant <{ [32 x i8], [32 x i8] }> <{ [32 x i8] c"\06\05\04\04\03\03\03\03\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }>, align 16, !dbg !29
@x264_cabac_entropy = dso_local local_unnamed_addr constant [128 x i16] [i16 7, i16 1469, i16 7, i16 1449, i16 8, i16 1430, i16 8, i16 1411, i16 9, i16 1392, i16 9, i16 1372, i16 10, i16 1353, i16 10, i16 1334, i16 11, i16 1315, i16 11, i16 1295, i16 12, i16 1276, i16 12, i16 1257, i16 13, i16 1238, i16 14, i16 1218, i16 15, i16 1199, i16 15, i16 1180, i16 16, i16 1161, i16 17, i16 1141, i16 18, i16 1122, i16 19, i16 1103, i16 20, i16 1084, i16 21, i16 1064, i16 22, i16 1045, i16 24, i16 1026, i16 25, i16 1007, i16 26, i16 987, i16 28, i16 968, i16 29, i16 949, i16 31, i16 930, i16 33, i16 910, i16 35, i16 891, i16 37, i16 872, i16 39, i16 853, i16 41, i16 833, i16 43, i16 814, i16 46, i16 795, i16 48, i16 776, i16 51, i16 756, i16 54, i16 737, i16 57, i16 718, i16 60, i16 699, i16 64, i16 679, i16 68, i16 660, i16 72, i16 641, i16 76, i16 622, i16 80, i16 602, i16 85, i16 583, i16 90, i16 564, i16 96, i16 545, i16 102, i16 525, i16 108, i16 506, i16 115, i16 487, i16 122, i16 468, i16 130, i16 448, i16 139, i16 429, i16 148, i16 410, i16 157, i16 391, i16 168, i16 371, i16 180, i16 352, i16 192, i16 333, i16 206, i16 314, i16 221, i16 295, i16 238, i16 275, i16 256, i16 256], align 16, !dbg !34
@x264_cabac_context_init_I = internal unnamed_addr constant [460 x [2 x i8]] [[2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\E4\7F", [2 x i8] c"\E9h", [2 x i8] c"\FA5", [2 x i8] c"\FF6", [2 x i8] c"\073", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] c"\00)", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\F7S", [2 x i8] c"\04V", [2 x i8] c"\00a", [2 x i8] c"\F9H", [2 x i8] c"\0D)", [2 x i8] c"\03>", [2 x i8] c"\00\0B", [2 x i8] c"\017", [2 x i8] c"\00E", [2 x i8] c"\EF\7F", [2 x i8] c"\F3f", [2 x i8] c"\00R", [2 x i8] c"\F9J", [2 x i8] c"\EBk", [2 x i8] c"\E5\7F", [2 x i8] c"\E1\7F", [2 x i8] c"\E8\7F", [2 x i8] c"\EE_", [2 x i8] c"\E5\7F", [2 x i8] c"\EBr", [2 x i8] c"\E2\7F", [2 x i8] c"\EF{", [2 x i8] c"\F4s", [2 x i8] c"\F0z", [2 x i8] c"\F5s", [2 x i8] c"\F4?", [2 x i8] c"\FED", [2 x i8] c"\F1T", [2 x i8] c"\F3h", [2 x i8] c"\FDF", [2 x i8] c"\F8]", [2 x i8] c"\F6Z", [2 x i8] c"\E2\7F", [2 x i8] c"\FFJ", [2 x i8] c"\FAa", [2 x i8] c"\F9[", [2 x i8] c"\EC\7F", [2 x i8] c"\FC8", [2 x i8] c"\FBR", [2 x i8] c"\F9L", [2 x i8] c"\EA}", [2 x i8] c"\F9]", [2 x i8] c"\F5W", [2 x i8] c"\FDM", [2 x i8] c"\FBG", [2 x i8] c"\FC?", [2 x i8] c"\FCD", [2 x i8] c"\F4T", [2 x i8] c"\F9>", [2 x i8] c"\F9A", [2 x i8] c"\08=", [2 x i8] c"\058", [2 x i8] c"\FEB", [2 x i8] c"\01@", [2 x i8] c"\00=", [2 x i8] c"\FEN", [2 x i8] c"\012", [2 x i8] c"\074", [2 x i8] c"\0A#", [2 x i8] c"\00,", [2 x i8] c"\0B&", [2 x i8] c"\01-", [2 x i8] c"\00.", [2 x i8] c"\05,", [2 x i8] c"\1F\11", [2 x i8] c"\013", [2 x i8] c"\072", [2 x i8] c"\1C\13", [2 x i8] c"\10!", [2 x i8] c"\0E>", [2 x i8] c"\F3l", [2 x i8] c"\F1d", [2 x i8] c"\F3e", [2 x i8] c"\F3[", [2 x i8] c"\F4^", [2 x i8] c"\F6X", [2 x i8] c"\F0T", [2 x i8] c"\F6V", [2 x i8] c"\F9S", [2 x i8] c"\F3W", [2 x i8] c"\ED^", [2 x i8] c"\01F", [2 x i8] c"\00H", [2 x i8] c"\FBJ", [2 x i8] c"\12;", [2 x i8] c"\F8f", [2 x i8] c"\F1d", [2 x i8] c"\00_", [2 x i8] c"\FCK", [2 x i8] c"\02H", [2 x i8] c"\F5K", [2 x i8] c"\FDG", [2 x i8] c"\0F.", [2 x i8] c"\F3E", [2 x i8] c"\00>", [2 x i8] c"\00A", [2 x i8] c"\15%", [2 x i8] c"\F1H", [2 x i8] c"\099", [2 x i8] c"\106", [2 x i8] c"\00>", [2 x i8] c"\0CH", [2 x i8] c"\18\00", [2 x i8] c"\0F\09", [2 x i8] c"\08\19", [2 x i8] c"\0D\12", [2 x i8] c"\0F\09", [2 x i8] c"\0D\13", [2 x i8] c"\0A%", [2 x i8] c"\0C\12", [2 x i8] c"\06\1D", [2 x i8] c"\14!", [2 x i8] c"\0F\1E", [2 x i8] c"\04-", [2 x i8] c"\01:", [2 x i8] c"\00>", [2 x i8] c"\07=", [2 x i8] c"\0C&", [2 x i8] c"\0B-", [2 x i8] c"\0F'", [2 x i8] c"\0B*", [2 x i8] c"\0D,", [2 x i8] c"\10-", [2 x i8] c"\0C)", [2 x i8] c"\0A1", [2 x i8] c"\1E\22", [2 x i8] c"\12*", [2 x i8] c"\0A7", [2 x i8] c"\113", [2 x i8] c"\11.", [2 x i8] c"\00Y", [2 x i8] c"\1A\ED", [2 x i8] c"\16\EF", [2 x i8] c"\1A\EF", [2 x i8] c"\1E\E7", [2 x i8] c"\1C\EC", [2 x i8] c"!\E9", [2 x i8] c"%\E5", [2 x i8] c"!\E9", [2 x i8] c"(\E4", [2 x i8] c"&\EF", [2 x i8] c"!\F5", [2 x i8] c"(\F1", [2 x i8] c")\FA", [2 x i8] c"&\01", [2 x i8] c")\11", [2 x i8] c"\1E\FA", [2 x i8] c"\1B\03", [2 x i8] c"\1A\16", [2 x i8] c"%\F0", [2 x i8] c"#\FC", [2 x i8] c"&\F8", [2 x i8] c"&\FD", [2 x i8] c"%\03", [2 x i8] c"&\05", [2 x i8] c"*\00", [2 x i8] c"#\10", [2 x i8] c"'\16", [2 x i8] c"\0E0", [2 x i8] c"\1B%", [2 x i8] c"\15<", [2 x i8] c"\0CD", [2 x i8] c"\02a", [2 x i8] c"\FDG", [2 x i8] c"\FA*", [2 x i8] c"\FB2", [2 x i8] c"\FD6", [2 x i8] c"\FE>", [2 x i8] c"\00:", [2 x i8] c"\01?", [2 x i8] c"\FEH", [2 x i8] c"\FFJ", [2 x i8] c"\F7[", [2 x i8] c"\FBC", [2 x i8] c"\FB\1B", [2 x i8] c"\FD'", [2 x i8] c"\FE,", [2 x i8] c"\00.", [2 x i8] c"\F0@", [2 x i8] c"\F8D", [2 x i8] c"\F6N", [2 x i8] c"\FAM", [2 x i8] c"\F6V", [2 x i8] c"\F4\\", [2 x i8] c"\F17", [2 x i8] c"\F6<", [2 x i8] c"\FA>", [2 x i8] c"\FCA", [2 x i8] c"\F4I", [2 x i8] c"\F8L", [2 x i8] c"\F9P", [2 x i8] c"\F7X", [2 x i8] c"\EFn", [2 x i8] c"\F5a", [2 x i8] c"\ECT", [2 x i8] c"\F5O", [2 x i8] c"\FAI", [2 x i8] c"\FCJ", [2 x i8] c"\F3V", [2 x i8] c"\F3`", [2 x i8] c"\F5a", [2 x i8] c"\EDu", [2 x i8] c"\F8N", [2 x i8] c"\FB!", [2 x i8] c"\FC0", [2 x i8] c"\FE5", [2 x i8] c"\FD>", [2 x i8] c"\F3G", [2 x i8] c"\F6O", [2 x i8] c"\F4V", [2 x i8] c"\F3Z", [2 x i8] c"\F2a", [2 x i8] zeroinitializer, [2 x i8] c"\FA]", [2 x i8] c"\FAT", [2 x i8] c"\F8O", [2 x i8] c"\00B", [2 x i8] c"\FFG", [2 x i8] c"\00>", [2 x i8] c"\FE<", [2 x i8] c"\FE;", [2 x i8] c"\FBK", [2 x i8] c"\FD>", [2 x i8] c"\FC:", [2 x i8] c"\F7B", [2 x i8] c"\FFO", [2 x i8] c"\00G", [2 x i8] c"\03D", [2 x i8] c"\0A,", [2 x i8] c"\F9>", [2 x i8] c"\0F$", [2 x i8] c"\0E(", [2 x i8] c"\10\1B", [2 x i8] c"\0C\1D", [2 x i8] c"\01,", [2 x i8] c"\14$", [2 x i8] c"\12 ", [2 x i8] c"\05*", [2 x i8] c"\010", [2 x i8] c"\0A>", [2 x i8] c"\11.", [2 x i8] c"\09@", [2 x i8] c"\F4h", [2 x i8] c"\F5a", [2 x i8] c"\F0`", [2 x i8] c"\F9X", [2 x i8] c"\F8U", [2 x i8] c"\F9U", [2 x i8] c"\F7U", [2 x i8] c"\F3X", [2 x i8] c"\04B", [2 x i8] c"\FDM", [2 x i8] c"\FDL", [2 x i8] c"\FAL", [2 x i8] c"\0A:", [2 x i8] c"\FFL", [2 x i8] c"\FFS", [2 x i8] c"\F9c", [2 x i8] c"\F2_", [2 x i8] c"\02_", [2 x i8] c"\00L", [2 x i8] c"\FBJ", [2 x i8] c"\00F", [2 x i8] c"\F5K", [2 x i8] c"\01D", [2 x i8] c"\00A", [2 x i8] c"\F2I", [2 x i8] c"\03>", [2 x i8] c"\04>", [2 x i8] c"\FFD", [2 x i8] c"\F3K", [2 x i8] c"\0B7", [2 x i8] c"\05@", [2 x i8] c"\0CF", [2 x i8] c"\0F\06", [2 x i8] c"\06\13", [2 x i8] c"\07\10", [2 x i8] c"\0C\0E", [2 x i8] c"\12\0D", [2 x i8] c"\0D\0B", [2 x i8] c"\0D\0F", [2 x i8] c"\0F\10", [2 x i8] c"\0C\17", [2 x i8] c"\0D\17", [2 x i8] c"\0F\14", [2 x i8] c"\0E\1A", [2 x i8] c"\0E,", [2 x i8] c"\11(", [2 x i8] c"\11/", [2 x i8] c"\18\11", [2 x i8] c"\15\15", [2 x i8] c"\19\16", [2 x i8] c"\1F\1B", [2 x i8] c"\16\1D", [2 x i8] c"\13#", [2 x i8] c"\0E2", [2 x i8] c"\0A9", [2 x i8] c"\07?", [2 x i8] c"\FEM", [2 x i8] c"\FCR", [2 x i8] c"\FD^", [2 x i8] c"\09E", [2 x i8] c"\F4m", [2 x i8] c"$\DD", [2 x i8] c"$\DE", [2 x i8] c" \E6", [2 x i8] c"%\E2", [2 x i8] c",\E0", [2 x i8] c"\22\EE", [2 x i8] c"\22\F1", [2 x i8] c"(\F1", [2 x i8] c"!\F9", [2 x i8] c"#\FB", [2 x i8] c"!\00", [2 x i8] c"&\02", [2 x i8] c"!\0D", [2 x i8] c"\17#", [2 x i8] c"\0D:", [2 x i8] c"\1D\FD", [2 x i8] c"\1A\00", [2 x i8] c"\16\1E", [2 x i8] c"\1F\F9", [2 x i8] c"#\F1", [2 x i8] c"\22\FD", [2 x i8] c"\22\03", [2 x i8] c"$\FF", [2 x i8] c"\22\05", [2 x i8] c" \0B", [2 x i8] c"#\05", [2 x i8] c"\22\0C", [2 x i8] c"'\0B", [2 x i8] c"\1E\1D", [2 x i8] c"\22\1A", [2 x i8] c"\1D'", [2 x i8] c"\13B", [2 x i8] c"\1F\15", [2 x i8] c"\1F\1F", [2 x i8] c"\192", [2 x i8] c"\EFx", [2 x i8] c"\ECp", [2 x i8] c"\EEr", [2 x i8] c"\F5U", [2 x i8] c"\F1\\", [2 x i8] c"\F2Y", [2 x i8] c"\E6G", [2 x i8] c"\F1Q", [2 x i8] c"\F2P", [2 x i8] c"\00D", [2 x i8] c"\F2F", [2 x i8] c"\E88", [2 x i8] c"\E9D", [2 x i8] c"\E82", [2 x i8] c"\F5J", [2 x i8] c"\17\F3", [2 x i8] c"\1A\F3", [2 x i8] c"(\F1", [2 x i8] c"1\F2", [2 x i8] c",\03", [2 x i8] c"-\06", [2 x i8] c",\22", [2 x i8] c"!6", [2 x i8] c"\13R", [2 x i8] c"\FDK", [2 x i8] c"\FF\17", [2 x i8] c"\01\22", [2 x i8] c"\01+", [2 x i8] c"\006", [2 x i8] c"\FE7", [2 x i8] c"\00=", [2 x i8] c"\01@", [2 x i8] c"\00D", [2 x i8] c"\F7\\", [2 x i8] c"\F2j", [2 x i8] c"\F3a", [2 x i8] c"\F1Z", [2 x i8] c"\F4Z", [2 x i8] c"\EEX", [2 x i8] c"\F6I", [2 x i8] c"\F7O", [2 x i8] c"\F2V", [2 x i8] c"\F6I", [2 x i8] c"\F6F", [2 x i8] c"\F6E", [2 x i8] c"\FBB", [2 x i8] c"\F7@", [2 x i8] c"\FB:", [2 x i8] c"\02;", [2 x i8] c"\15\F6", [2 x i8] c"\18\F5", [2 x i8] c"\1C\F8", [2 x i8] c"\1C\FF", [2 x i8] c"\1D\03", [2 x i8] c"\1D\09", [2 x i8] c"#\14", [2 x i8] c"\1D$", [2 x i8] c"\0EC"], align 16, !dbg !42
@x264_cabac_context_init_PB = internal unnamed_addr constant [3 x [460 x [2 x i8]]] [[460 x [2 x i8]] [[2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\E4\7F", [2 x i8] c"\E9h", [2 x i8] c"\FA5", [2 x i8] c"\FF6", [2 x i8] c"\073", [2 x i8] c"\17!", [2 x i8] c"\17\02", [2 x i8] c"\15\00", [2 x i8] c"\01\09", [2 x i8] c"\001", [2 x i8] c"\DBv", [2 x i8] c"\059", [2 x i8] c"\F3N", [2 x i8] c"\F5A", [2 x i8] c"\01>", [2 x i8] c"\0C1", [2 x i8] c"\FCI", [2 x i8] c"\112", [2 x i8] c"\12@", [2 x i8] c"\09+", [2 x i8] c"\1D\00", [2 x i8] c"\1AC", [2 x i8] c"\10Z", [2 x i8] c"\09h", [2 x i8] c"\D2\7F", [2 x i8] c"\ECh", [2 x i8] c"\01C", [2 x i8] c"\F3N", [2 x i8] c"\F5A", [2 x i8] c"\01>", [2 x i8] c"\FAV", [2 x i8] c"\EF_", [2 x i8] c"\FA=", [2 x i8] c"\09-", [2 x i8] c"\FDE", [2 x i8] c"\FAQ", [2 x i8] c"\F5`", [2 x i8] c"\067", [2 x i8] c"\07C", [2 x i8] c"\FBV", [2 x i8] c"\02X", [2 x i8] c"\00:", [2 x i8] c"\FDL", [2 x i8] c"\F6^", [2 x i8] c"\056", [2 x i8] c"\04E", [2 x i8] c"\FDQ", [2 x i8] c"\00X", [2 x i8] c"\F9C", [2 x i8] c"\FBJ", [2 x i8] c"\FCJ", [2 x i8] c"\FBP", [2 x i8] c"\F9H", [2 x i8] c"\01:", [2 x i8] c"\00)", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\F7S", [2 x i8] c"\04V", [2 x i8] c"\00a", [2 x i8] c"\F9H", [2 x i8] c"\0D)", [2 x i8] c"\03>", [2 x i8] c"\00-", [2 x i8] c"\FCN", [2 x i8] c"\FD`", [2 x i8] c"\E5~", [2 x i8] c"\E4b", [2 x i8] c"\E7e", [2 x i8] c"\E9C", [2 x i8] c"\E4R", [2 x i8] c"\EC^", [2 x i8] c"\F0S", [2 x i8] c"\EAn", [2 x i8] c"\EB[", [2 x i8] c"\EEf", [2 x i8] c"\F3]", [2 x i8] c"\E3\7F", [2 x i8] c"\F9\\", [2 x i8] c"\FBY", [2 x i8] c"\F9`", [2 x i8] c"\F3l", [2 x i8] c"\FD.", [2 x i8] c"\FFA", [2 x i8] c"\FF9", [2 x i8] c"\F7]", [2 x i8] c"\FDJ", [2 x i8] c"\F7\\", [2 x i8] c"\F8W", [2 x i8] c"\E9~", [2 x i8] c"\056", [2 x i8] c"\06<", [2 x i8] c"\06;", [2 x i8] c"\06E", [2 x i8] c"\FF0", [2 x i8] c"\00D", [2 x i8] c"\FCE", [2 x i8] c"\F8X", [2 x i8] c"\FEU", [2 x i8] c"\FAN", [2 x i8] c"\FFK", [2 x i8] c"\F9M", [2 x i8] c"\026", [2 x i8] c"\052", [2 x i8] c"\FDD", [2 x i8] c"\012", [2 x i8] c"\06*", [2 x i8] c"\FCQ", [2 x i8] c"\01?", [2 x i8] c"\FCF", [2 x i8] c"\00C", [2 x i8] c"\029", [2 x i8] c"\FEL", [2 x i8] c"\0B#", [2 x i8] c"\04@", [2 x i8] c"\01=", [2 x i8] c"\0B#", [2 x i8] c"\12\19", [2 x i8] c"\0C\18", [2 x i8] c"\0D\1D", [2 x i8] c"\0D$", [2 x i8] c"\F6]", [2 x i8] c"\F9I", [2 x i8] c"\FEI", [2 x i8] c"\0D.", [2 x i8] c"\091", [2 x i8] c"\F9d", [2 x i8] c"\095", [2 x i8] c"\025", [2 x i8] c"\055", [2 x i8] c"\FE=", [2 x i8] c"\008", [2 x i8] c"\008", [2 x i8] c"\F3?", [2 x i8] c"\FB<", [2 x i8] c"\FF>", [2 x i8] c"\049", [2 x i8] c"\FAE", [2 x i8] c"\049", [2 x i8] c"\0E'", [2 x i8] c"\043", [2 x i8] c"\0DD", [2 x i8] c"\03@", [2 x i8] c"\01=", [2 x i8] c"\09?", [2 x i8] c"\072", [2 x i8] c"\10'", [2 x i8] c"\05,", [2 x i8] c"\044", [2 x i8] c"\0B0", [2 x i8] c"\FB<", [2 x i8] c"\FF;", [2 x i8] c"\00;", [2 x i8] c"\16!", [2 x i8] c"\05,", [2 x i8] c"\0E+", [2 x i8] c"\FFN", [2 x i8] c"\00<", [2 x i8] c"\09E", [2 x i8] c"\0B\1C", [2 x i8] c"\02(", [2 x i8] c"\03,", [2 x i8] c"\001", [2 x i8] c"\00.", [2 x i8] c"\02,", [2 x i8] c"\023", [2 x i8] c"\00/", [2 x i8] c"\04'", [2 x i8] c"\02>", [2 x i8] c"\06.", [2 x i8] c"\006", [2 x i8] c"\036", [2 x i8] c"\02:", [2 x i8] c"\04?", [2 x i8] c"\063", [2 x i8] c"\069", [2 x i8] c"\075", [2 x i8] c"\064", [2 x i8] c"\067", [2 x i8] c"\0B-", [2 x i8] c"\0E$", [2 x i8] c"\085", [2 x i8] c"\FFR", [2 x i8] c"\077", [2 x i8] c"\FDN", [2 x i8] c"\0F.", [2 x i8] c"\16\1F", [2 x i8] c"\FFT", [2 x i8] c"\19\07", [2 x i8] c"\1E\F9", [2 x i8] c"\1C\03", [2 x i8] c"\1C\04", [2 x i8] c" \00", [2 x i8] c"\22\FF", [2 x i8] c"\1E\06", [2 x i8] c"\1E\06", [2 x i8] c" \09", [2 x i8] c"\1F\13", [2 x i8] c"\1A\1B", [2 x i8] c"\1A\1E", [2 x i8] c"%\14", [2 x i8] c"\1C\22", [2 x i8] c"\11F", [2 x i8] c"\01C", [2 x i8] c"\05;", [2 x i8] c"\09C", [2 x i8] c"\10\1E", [2 x i8] c"\12 ", [2 x i8] c"\12#", [2 x i8] c"\16\1D", [2 x i8] c"\18\1F", [2 x i8] c"\17&", [2 x i8] c"\12+", [2 x i8] c"\14)", [2 x i8] c"\0B?", [2 x i8] c"\09;", [2 x i8] c"\09@", [2 x i8] c"\FF^", [2 x i8] c"\FEY", [2 x i8] c"\F7l", [2 x i8] c"\FAL", [2 x i8] c"\FE,", [2 x i8] c"\00-", [2 x i8] c"\004", [2 x i8] c"\FD@", [2 x i8] c"\FE;", [2 x i8] c"\FCF", [2 x i8] c"\FCK", [2 x i8] c"\F8R", [2 x i8] c"\EFf", [2 x i8] c"\F7M", [2 x i8] c"\03\18", [2 x i8] c"\00*", [2 x i8] c"\000", [2 x i8] c"\007", [2 x i8] c"\FA;", [2 x i8] c"\F9G", [2 x i8] c"\F4S", [2 x i8] c"\F5W", [2 x i8] c"\E2w", [2 x i8] c"\01:", [2 x i8] c"\FD\1D", [2 x i8] c"\FF$", [2 x i8] c"\01&", [2 x i8] c"\02+", [2 x i8] c"\FA7", [2 x i8] c"\00:", [2 x i8] c"\00@", [2 x i8] c"\FDJ", [2 x i8] c"\F6Z", [2 x i8] c"\00F", [2 x i8] c"\FC\1D", [2 x i8] c"\05\1F", [2 x i8] c"\07*", [2 x i8] c"\01;", [2 x i8] c"\FE:", [2 x i8] c"\FDH", [2 x i8] c"\FDQ", [2 x i8] c"\F5a", [2 x i8] c"\00:", [2 x i8] c"\08\05", [2 x i8] c"\0A\0E", [2 x i8] c"\0E\12", [2 x i8] c"\0D\1B", [2 x i8] c"\02(", [2 x i8] c"\00:", [2 x i8] c"\FDF", [2 x i8] c"\FAO", [2 x i8] c"\F8U", [2 x i8] zeroinitializer, [2 x i8] c"\F3j", [2 x i8] c"\F0j", [2 x i8] c"\F6W", [2 x i8] c"\EBr", [2 x i8] c"\EEn", [2 x i8] c"\F2b", [2 x i8] c"\EAn", [2 x i8] c"\EBj", [2 x i8] c"\EEg", [2 x i8] c"\EBk", [2 x i8] c"\E9l", [2 x i8] c"\E6p", [2 x i8] c"\F6`", [2 x i8] c"\F4_", [2 x i8] c"\FB[", [2 x i8] c"\F7]", [2 x i8] c"\EA^", [2 x i8] c"\FBV", [2 x i8] c"\09C", [2 x i8] c"\FCP", [2 x i8] c"\F6U", [2 x i8] c"\FFF", [2 x i8] c"\07<", [2 x i8] c"\09:", [2 x i8] c"\05=", [2 x i8] c"\0C2", [2 x i8] c"\0F2", [2 x i8] c"\121", [2 x i8] c"\116", [2 x i8] c"\0A)", [2 x i8] c"\07.", [2 x i8] c"\FF3", [2 x i8] c"\071", [2 x i8] c"\084", [2 x i8] c"\09)", [2 x i8] c"\06/", [2 x i8] c"\027", [2 x i8] c"\0D)", [2 x i8] c"\0A,", [2 x i8] c"\062", [2 x i8] c"\055", [2 x i8] c"\0D1", [2 x i8] c"\04?", [2 x i8] c"\06@", [2 x i8] c"\FEE", [2 x i8] c"\FE;", [2 x i8] c"\06F", [2 x i8] c"\0A,", [2 x i8] c"\09\1F", [2 x i8] c"\0C+", [2 x i8] c"\035", [2 x i8] c"\0E\22", [2 x i8] c"\0A&", [2 x i8] c"\FD4", [2 x i8] c"\0D(", [2 x i8] c"\11 ", [2 x i8] c"\07,", [2 x i8] c"\07&", [2 x i8] c"\0D2", [2 x i8] c"\0A9", [2 x i8] c"\1A+", [2 x i8] c"\0E\0B", [2 x i8] c"\0B\0E", [2 x i8] c"\09\0B", [2 x i8] c"\12\0B", [2 x i8] c"\15\09", [2 x i8] c"\17\FE", [2 x i8] c" \F1", [2 x i8] c" \F1", [2 x i8] c"\22\EB", [2 x i8] c"'\E9", [2 x i8] c"*\DF", [2 x i8] c")\E1", [2 x i8] c".\E4", [2 x i8] c"&\F4", [2 x i8] c"\15\1D", [2 x i8] c"-\E8", [2 x i8] c"5\D3", [2 x i8] c"0\E6", [2 x i8] c"A\D5", [2 x i8] c"+\ED", [2 x i8] c"'\F6", [2 x i8] c"\1E\09", [2 x i8] c"\12\1A", [2 x i8] c"\14\1B", [2 x i8] c"\009", [2 x i8] c"\F2R", [2 x i8] c"\FBK", [2 x i8] c"\EDa", [2 x i8] c"\DD}", [2 x i8] c"\1B\00", [2 x i8] c"\1C\00", [2 x i8] c"\1F\FC", [2 x i8] c"\1B\06", [2 x i8] c"\22\08", [2 x i8] c"\1E\0A", [2 x i8] c"\18\16", [2 x i8] c"!\13", [2 x i8] c"\16 ", [2 x i8] c"\1A\1F", [2 x i8] c"\15)", [2 x i8] c"\1A,", [2 x i8] c"\17/", [2 x i8] c"\10A", [2 x i8] c"\0EG", [2 x i8] c"\08<", [2 x i8] c"\06?", [2 x i8] c"\11A", [2 x i8] c"\15\18", [2 x i8] c"\17\14", [2 x i8] c"\1A\17", [2 x i8] c"\1B ", [2 x i8] c"\1C\17", [2 x i8] c"\1C\18", [2 x i8] c"\17(", [2 x i8] c"\18 ", [2 x i8] c"\1C\1D", [2 x i8] c"\17*", [2 x i8] c"\139", [2 x i8] c"\165", [2 x i8] c"\16=", [2 x i8] c"\0BV", [2 x i8] c"\0C(", [2 x i8] c"\0B3", [2 x i8] c"\0E;", [2 x i8] c"\FCO", [2 x i8] c"\F9G", [2 x i8] c"\FBE", [2 x i8] c"\F7F", [2 x i8] c"\F8B", [2 x i8] c"\F6D", [2 x i8] c"\EDI", [2 x i8] c"\F4E", [2 x i8] c"\F0F", [2 x i8] c"\F1C", [2 x i8] c"\EC>", [2 x i8] c"\EDF", [2 x i8] c"\F0B", [2 x i8] c"\EAA", [2 x i8] c"\EC?", [2 x i8] c"\09\FE", [2 x i8] c"\1A\F7", [2 x i8] c"!\F7", [2 x i8] c"'\F9", [2 x i8] c")\FE", [2 x i8] c"-\03", [2 x i8] c"1\09", [2 x i8] c"-\1B", [2 x i8] c"$;", [2 x i8] c"\FAB", [2 x i8] c"\F9#", [2 x i8] c"\F9*", [2 x i8] c"\F8-", [2 x i8] c"\FB0", [2 x i8] c"\F48", [2 x i8] c"\FA<", [2 x i8] c"\FB>", [2 x i8] c"\F8B", [2 x i8] c"\F8L", [2 x i8] c"\FBU", [2 x i8] c"\FAQ", [2 x i8] c"\F6M", [2 x i8] c"\F9Q", [2 x i8] c"\EFP", [2 x i8] c"\EEI", [2 x i8] c"\FCJ", [2 x i8] c"\F6S", [2 x i8] c"\F7G", [2 x i8] c"\F7C", [2 x i8] c"\FF=", [2 x i8] c"\F8B", [2 x i8] c"\F2B", [2 x i8] c"\00;", [2 x i8] c"\02;", [2 x i8] c"\15\F3", [2 x i8] c"!\F2", [2 x i8] c"'\F9", [2 x i8] c".\FE", [2 x i8] c"3\02", [2 x i8] c"<\06", [2 x i8] c"=\11", [2 x i8] c"7\22", [2 x i8] c"*>"], [460 x [2 x i8]] [[2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\E4\7F", [2 x i8] c"\E9h", [2 x i8] c"\FA5", [2 x i8] c"\FF6", [2 x i8] c"\073", [2 x i8] c"\16\19", [2 x i8] c"\22\00", [2 x i8] c"\10\00", [2 x i8] c"\FE\09", [2 x i8] c"\04)", [2 x i8] c"\E3v", [2 x i8] c"\02A", [2 x i8] c"\FAG", [2 x i8] c"\F3O", [2 x i8] c"\054", [2 x i8] c"\092", [2 x i8] c"\FDF", [2 x i8] c"\0A6", [2 x i8] c"\1A\22", [2 x i8] c"\13\16", [2 x i8] c"(\00", [2 x i8] c"9\02", [2 x i8] c")$", [2 x i8] c"\1AE", [2 x i8] c"\D3\7F", [2 x i8] c"\F1e", [2 x i8] c"\FCL", [2 x i8] c"\FAG", [2 x i8] c"\F3O", [2 x i8] c"\054", [2 x i8] c"\06E", [2 x i8] c"\F3Z", [2 x i8] c"\004", [2 x i8] c"\08+", [2 x i8] c"\FEE", [2 x i8] c"\FBR", [2 x i8] c"\F6`", [2 x i8] c"\02;", [2 x i8] c"\02K", [2 x i8] c"\FDW", [2 x i8] c"\FDd", [2 x i8] c"\018", [2 x i8] c"\FDJ", [2 x i8] c"\FAU", [2 x i8] c"\00;", [2 x i8] c"\FDQ", [2 x i8] c"\F9V", [2 x i8] c"\FB_", [2 x i8] c"\FFB", [2 x i8] c"\FFM", [2 x i8] c"\01F", [2 x i8] c"\FEV", [2 x i8] c"\FBH", [2 x i8] c"\00=", [2 x i8] c"\00)", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\F7S", [2 x i8] c"\04V", [2 x i8] c"\00a", [2 x i8] c"\F9H", [2 x i8] c"\0D)", [2 x i8] c"\03>", [2 x i8] c"\0D\0F", [2 x i8] c"\073", [2 x i8] c"\02P", [2 x i8] c"\D9\7F", [2 x i8] c"\EE[", [2 x i8] c"\EF`", [2 x i8] c"\E6Q", [2 x i8] c"\DDb", [2 x i8] c"\E8f", [2 x i8] c"\E9a", [2 x i8] c"\E5w", [2 x i8] c"\E8c", [2 x i8] c"\EBn", [2 x i8] c"\EEf", [2 x i8] c"\DC\7F", [2 x i8] c"\00P", [2 x i8] c"\FBY", [2 x i8] c"\F9^", [2 x i8] c"\FC\\", [2 x i8] c"\00'", [2 x i8] c"\00A", [2 x i8] c"\F1T", [2 x i8] c"\DD\7F", [2 x i8] c"\FEI", [2 x i8] c"\F4h", [2 x i8] c"\F7[", [2 x i8] c"\E1\7F", [2 x i8] c"\037", [2 x i8] c"\078", [2 x i8] c"\077", [2 x i8] c"\08=", [2 x i8] c"\FD5", [2 x i8] c"\00D", [2 x i8] c"\F9J", [2 x i8] c"\F7X", [2 x i8] c"\F3g", [2 x i8] c"\F3[", [2 x i8] c"\F7Y", [2 x i8] c"\F2\\", [2 x i8] c"\F8L", [2 x i8] c"\F4W", [2 x i8] c"\E9n", [2 x i8] c"\E8i", [2 x i8] c"\F6N", [2 x i8] c"\ECp", [2 x i8] c"\EFc", [2 x i8] c"\B2\7F", [2 x i8] c"\BA\7F", [2 x i8] c"\CE\7F", [2 x i8] c"\D2\7F", [2 x i8] c"\FCB", [2 x i8] c"\FBN", [2 x i8] c"\FCG", [2 x i8] c"\F8H", [2 x i8] c"\02;", [2 x i8] c"\FF7", [2 x i8] c"\F9F", [2 x i8] c"\FAK", [2 x i8] c"\F8Y", [2 x i8] c"\DEw", [2 x i8] c"\FDK", [2 x i8] c" \14", [2 x i8] c"\1E\16", [2 x i8] c"\D4\7F", [2 x i8] c"\006", [2 x i8] c"\FB=", [2 x i8] c"\00:", [2 x i8] c"\FF<", [2 x i8] c"\FD=", [2 x i8] c"\F8C", [2 x i8] c"\E7T", [2 x i8] c"\F2J", [2 x i8] c"\FBA", [2 x i8] c"\054", [2 x i8] c"\029", [2 x i8] c"\00=", [2 x i8] c"\F7E", [2 x i8] c"\F5F", [2 x i8] c"\127", [2 x i8] c"\FCG", [2 x i8] c"\00:", [2 x i8] c"\07=", [2 x i8] c"\09)", [2 x i8] c"\12\19", [2 x i8] c"\09 ", [2 x i8] c"\05+", [2 x i8] c"\09/", [2 x i8] c"\00,", [2 x i8] c"\003", [2 x i8] c"\02.", [2 x i8] c"\13&", [2 x i8] c"\FCB", [2 x i8] c"\0F&", [2 x i8] c"\0C*", [2 x i8] c"\09\22", [2 x i8] c"\00Y", [2 x i8] c"\04-", [2 x i8] c"\0A\1C", [2 x i8] c"\0A\1F", [2 x i8] c"!\F5", [2 x i8] c"4\D5", [2 x i8] c"\12\0F", [2 x i8] c"\1C\00", [2 x i8] c"#\EA", [2 x i8] c"&\E7", [2 x i8] c"\22\00", [2 x i8] c"'\EE", [2 x i8] c" \F4", [2 x i8] c"f\A2", [2 x i8] zeroinitializer, [2 x i8] c"8\F1", [2 x i8] c"!\FC", [2 x i8] c"\1D\0A", [2 x i8] c"%\FB", [2 x i8] c"3\E3", [2 x i8] c"'\F7", [2 x i8] c"4\DE", [2 x i8] c"E\C6", [2 x i8] c"C\C1", [2 x i8] c",\FB", [2 x i8] c" \07", [2 x i8] c"7\E3", [2 x i8] c" \01", [2 x i8] zeroinitializer, [2 x i8] c"\1B$", [2 x i8] c"!\E7", [2 x i8] c"\22\E2", [2 x i8] c"$\E4", [2 x i8] c"&\E4", [2 x i8] c"&\E5", [2 x i8] c"\22\EE", [2 x i8] c"#\F0", [2 x i8] c"\22\F2", [2 x i8] c" \F8", [2 x i8] c"%\FA", [2 x i8] c"#\00", [2 x i8] c"\1E\0A", [2 x i8] c"\1C\12", [2 x i8] c"\1A\19", [2 x i8] c"\1D)", [2 x i8] c"\00K", [2 x i8] c"\02H", [2 x i8] c"\08M", [2 x i8] c"\0E#", [2 x i8] c"\12\1F", [2 x i8] c"\11#", [2 x i8] c"\15\1E", [2 x i8] c"\11-", [2 x i8] c"\14*", [2 x i8] c"\12-", [2 x i8] c"\1B\1A", [2 x i8] c"\106", [2 x i8] c"\07B", [2 x i8] c"\108", [2 x i8] c"\0BI", [2 x i8] c"\0AC", [2 x i8] c"\F6t", [2 x i8] c"\E9p", [2 x i8] c"\F1G", [2 x i8] c"\F9=", [2 x i8] c"\005", [2 x i8] c"\FBB", [2 x i8] c"\F5M", [2 x i8] c"\F7P", [2 x i8] c"\F7T", [2 x i8] c"\F6W", [2 x i8] c"\DE\7F", [2 x i8] c"\EBe", [2 x i8] c"\FD'", [2 x i8] c"\FB5", [2 x i8] c"\F9=", [2 x i8] c"\F5K", [2 x i8] c"\F1M", [2 x i8] c"\EF[", [2 x i8] c"\E7k", [2 x i8] c"\E7o", [2 x i8] c"\E4z", [2 x i8] c"\F5L", [2 x i8] c"\F6,", [2 x i8] c"\F64", [2 x i8] c"\F69", [2 x i8] c"\F7:", [2 x i8] c"\F0H", [2 x i8] c"\F9E", [2 x i8] c"\FCE", [2 x i8] c"\FBJ", [2 x i8] c"\F7V", [2 x i8] c"\02B", [2 x i8] c"\F7\22", [2 x i8] c"\01 ", [2 x i8] c"\0B\1F", [2 x i8] c"\054", [2 x i8] c"\FE7", [2 x i8] c"\FEC", [2 x i8] c"\00I", [2 x i8] c"\F8Y", [2 x i8] c"\034", [2 x i8] c"\07\04", [2 x i8] c"\0A\08", [2 x i8] c"\11\08", [2 x i8] c"\10\13", [2 x i8] c"\03%", [2 x i8] c"\FF=", [2 x i8] c"\FBI", [2 x i8] c"\FFF", [2 x i8] c"\FCN", [2 x i8] zeroinitializer, [2 x i8] c"\EB~", [2 x i8] c"\E9|", [2 x i8] c"\ECn", [2 x i8] c"\E6~", [2 x i8] c"\E7|", [2 x i8] c"\EFi", [2 x i8] c"\E5y", [2 x i8] c"\E5u", [2 x i8] c"\EFf", [2 x i8] c"\E6u", [2 x i8] c"\E5t", [2 x i8] c"\DFz", [2 x i8] c"\F6_", [2 x i8] c"\F2d", [2 x i8] c"\F8_", [2 x i8] c"\EFo", [2 x i8] c"\E4r", [2 x i8] c"\FAY", [2 x i8] c"\FEP", [2 x i8] c"\FCR", [2 x i8] c"\F7U", [2 x i8] c"\F8Q", [2 x i8] c"\FFH", [2 x i8] c"\05@", [2 x i8] c"\01C", [2 x i8] c"\098", [2 x i8] c"\00E", [2 x i8] c"\01E", [2 x i8] c"\07E", [2 x i8] c"\F9E", [2 x i8] c"\FAC", [2 x i8] c"\F0M", [2 x i8] c"\FE@", [2 x i8] c"\02=", [2 x i8] c"\FAC", [2 x i8] c"\FD@", [2 x i8] c"\029", [2 x i8] c"\FDA", [2 x i8] c"\FDB", [2 x i8] c"\00>", [2 x i8] c"\093", [2 x i8] c"\FFB", [2 x i8] c"\FEG", [2 x i8] c"\FEK", [2 x i8] c"\FFF", [2 x i8] c"\F7H", [2 x i8] c"\0E<", [2 x i8] c"\10%", [2 x i8] c"\00/", [2 x i8] c"\12#", [2 x i8] c"\0B%", [2 x i8] c"\0C)", [2 x i8] c"\0A)", [2 x i8] c"\020", [2 x i8] c"\0C)", [2 x i8] c"\0D)", [2 x i8] c"\00;", [2 x i8] c"\032", [2 x i8] c"\13(", [2 x i8] c"\03B", [2 x i8] c"\122", [2 x i8] c"\13\FA", [2 x i8] c"\12\FA", [2 x i8] c"\0E\00", [2 x i8] c"\1A\F4", [2 x i8] c"\1F\F0", [2 x i8] c"!\E7", [2 x i8] c"!\EA", [2 x i8] c"%\E4", [2 x i8] c"'\E2", [2 x i8] c"*\E2", [2 x i8] c"/\D6", [2 x i8] c"-\DC", [2 x i8] c"1\DE", [2 x i8] c")\EF", [2 x i8] c" \09", [2 x i8] c"E\B9", [2 x i8] c"?\C1", [2 x i8] c"B\C0", [2 x i8] c"M\B6", [2 x i8] c"6\D9", [2 x i8] c"4\DD", [2 x i8] c")\F6", [2 x i8] c"$\00", [2 x i8] c"(\FF", [2 x i8] c"\1E\0E", [2 x i8] c"\1C\1A", [2 x i8] c"\17%", [2 x i8] c"\0C7", [2 x i8] c"\0BA", [2 x i8] c"%\DF", [2 x i8] c"'\DC", [2 x i8] c"(\DB", [2 x i8] c"&\E2", [2 x i8] c".\DF", [2 x i8] c"*\E2", [2 x i8] c"(\E8", [2 x i8] c"1\E3", [2 x i8] c"&\F4", [2 x i8] c"(\F6", [2 x i8] c"&\FD", [2 x i8] c".\FB", [2 x i8] c"\1F\14", [2 x i8] c"\1D\1E", [2 x i8] c"\19,", [2 x i8] c"\0C0", [2 x i8] c"\0B1", [2 x i8] c"\1A-", [2 x i8] c"\16\16", [2 x i8] c"\17\16", [2 x i8] c"\1B\15", [2 x i8] c"!\14", [2 x i8] c"\1A\1C", [2 x i8] c"\1E\18", [2 x i8] c"\1B\22", [2 x i8] c"\12*", [2 x i8] c"\19'", [2 x i8] c"\122", [2 x i8] c"\0CF", [2 x i8] c"\156", [2 x i8] c"\0EG", [2 x i8] c"\0BS", [2 x i8] c"\19 ", [2 x i8] c"\151", [2 x i8] c"\156", [2 x i8] c"\FBU", [2 x i8] c"\FAQ", [2 x i8] c"\F6M", [2 x i8] c"\F9Q", [2 x i8] c"\EFP", [2 x i8] c"\EEI", [2 x i8] c"\FCJ", [2 x i8] c"\F6S", [2 x i8] c"\F7G", [2 x i8] c"\F7C", [2 x i8] c"\FF=", [2 x i8] c"\F8B", [2 x i8] c"\F2B", [2 x i8] c"\00;", [2 x i8] c"\02;", [2 x i8] c"\11\F6", [2 x i8] c" \F3", [2 x i8] c"*\F7", [2 x i8] c"1\FB", [2 x i8] c"5\00", [2 x i8] c"@\03", [2 x i8] c"D\0A", [2 x i8] c"B\1B", [2 x i8] c"/9", [2 x i8] c"\FBG", [2 x i8] c"\00\18", [2 x i8] c"\FF$", [2 x i8] c"\FE*", [2 x i8] c"\FE4", [2 x i8] c"\F79", [2 x i8] c"\FA?", [2 x i8] c"\FCA", [2 x i8] c"\FCC", [2 x i8] c"\F9R", [2 x i8] c"\FDQ", [2 x i8] c"\FDL", [2 x i8] c"\F9H", [2 x i8] c"\FAN", [2 x i8] c"\F4H", [2 x i8] c"\F2D", [2 x i8] c"\FDF", [2 x i8] c"\FAL", [2 x i8] c"\FBB", [2 x i8] c"\FB>", [2 x i8] c"\009", [2 x i8] c"\FC=", [2 x i8] c"\F7<", [2 x i8] c"\016", [2 x i8] c"\02:", [2 x i8] c"\11\F6", [2 x i8] c" \F3", [2 x i8] c"*\F7", [2 x i8] c"1\FB", [2 x i8] c"5\00", [2 x i8] c"@\03", [2 x i8] c"D\0A", [2 x i8] c"B\1B", [2 x i8] c"/9"], [460 x [2 x i8]] [[2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\E4\7F", [2 x i8] c"\E9h", [2 x i8] c"\FA5", [2 x i8] c"\FF6", [2 x i8] c"\073", [2 x i8] c"\1D\10", [2 x i8] c"\19\00", [2 x i8] c"\0E\00", [2 x i8] c"\F63", [2 x i8] c"\FD>", [2 x i8] c"\E5c", [2 x i8] c"\1A\10", [2 x i8] c"\FCU", [2 x i8] c"\E8f", [2 x i8] c"\059", [2 x i8] c"\069", [2 x i8] c"\EFI", [2 x i8] c"\0E9", [2 x i8] c"\14(", [2 x i8] c"\14\0A", [2 x i8] c"\1D\00", [2 x i8] c"6\00", [2 x i8] c"%*", [2 x i8] c"\0Ca", [2 x i8] c"\E0\7F", [2 x i8] c"\EAu", [2 x i8] c"\FEJ", [2 x i8] c"\FCU", [2 x i8] c"\E8f", [2 x i8] c"\059", [2 x i8] c"\FA]", [2 x i8] c"\F2X", [2 x i8] c"\FA,", [2 x i8] c"\047", [2 x i8] c"\F5Y", [2 x i8] c"\F1g", [2 x i8] c"\EBt", [2 x i8] c"\139", [2 x i8] c"\14:", [2 x i8] c"\04T", [2 x i8] c"\06`", [2 x i8] c"\01?", [2 x i8] c"\FBU", [2 x i8] c"\F3j", [2 x i8] c"\05?", [2 x i8] c"\06K", [2 x i8] c"\FDZ", [2 x i8] c"\FFe", [2 x i8] c"\037", [2 x i8] c"\FCO", [2 x i8] c"\FEK", [2 x i8] c"\F4a", [2 x i8] c"\F92", [2 x i8] c"\01<", [2 x i8] c"\00)", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\F7S", [2 x i8] c"\04V", [2 x i8] c"\00a", [2 x i8] c"\F9H", [2 x i8] c"\0D)", [2 x i8] c"\03>", [2 x i8] c"\07\22", [2 x i8] c"\F7X", [2 x i8] c"\EC\7F", [2 x i8] c"\DC\7F", [2 x i8] c"\EF[", [2 x i8] c"\F2_", [2 x i8] c"\E7T", [2 x i8] c"\E7V", [2 x i8] c"\F4Y", [2 x i8] c"\EF[", [2 x i8] c"\E1\7F", [2 x i8] c"\F2L", [2 x i8] c"\EEg", [2 x i8] c"\F3Z", [2 x i8] c"\DB\7F", [2 x i8] c"\0BP", [2 x i8] c"\05L", [2 x i8] c"\02T", [2 x i8] c"\05N", [2 x i8] c"\FA7", [2 x i8] c"\04=", [2 x i8] c"\F2S", [2 x i8] c"\DB\7F", [2 x i8] c"\FBO", [2 x i8] c"\F5h", [2 x i8] c"\F5[", [2 x i8] c"\E2\7F", [2 x i8] c"\00A", [2 x i8] c"\FEO", [2 x i8] c"\00H", [2 x i8] c"\FC\\", [2 x i8] c"\FA8", [2 x i8] c"\03D", [2 x i8] c"\F8G", [2 x i8] c"\F3b", [2 x i8] c"\FCV", [2 x i8] c"\F4X", [2 x i8] c"\FBR", [2 x i8] c"\FDH", [2 x i8] c"\FCC", [2 x i8] c"\F8H", [2 x i8] c"\F0Y", [2 x i8] c"\F7E", [2 x i8] c"\FF;", [2 x i8] c"\05B", [2 x i8] c"\049", [2 x i8] c"\FCG", [2 x i8] c"\FEG", [2 x i8] c"\02:", [2 x i8] c"\FFJ", [2 x i8] c"\FC,", [2 x i8] c"\FFE", [2 x i8] c"\00>", [2 x i8] c"\F93", [2 x i8] c"\FC/", [2 x i8] c"\FA*", [2 x i8] c"\FD)", [2 x i8] c"\FA5", [2 x i8] c"\08L", [2 x i8] c"\F7N", [2 x i8] c"\F5S", [2 x i8] c"\094", [2 x i8] c"\00C", [2 x i8] c"\FBZ", [2 x i8] c"\01C", [2 x i8] c"\F1H", [2 x i8] c"\FBK", [2 x i8] c"\F8P", [2 x i8] c"\EBS", [2 x i8] c"\EB@", [2 x i8] c"\F3\1F", [2 x i8] c"\E7@", [2 x i8] c"\E3^", [2 x i8] c"\09K", [2 x i8] c"\11?", [2 x i8] c"\F8J", [2 x i8] c"\FB#", [2 x i8] c"\FE\1B", [2 x i8] c"\0D[", [2 x i8] c"\03A", [2 x i8] c"\F9E", [2 x i8] c"\08M", [2 x i8] c"\F6B", [2 x i8] c"\03>", [2 x i8] c"\FDD", [2 x i8] c"\ECQ", [2 x i8] c"\00\1E", [2 x i8] c"\01\07", [2 x i8] c"\FD\17", [2 x i8] c"\EBJ", [2 x i8] c"\10B", [2 x i8] c"\E9|", [2 x i8] c"\11%", [2 x i8] c",\EE", [2 x i8] c"2\DE", [2 x i8] c"\EA\7F", [2 x i8] c"\04'", [2 x i8] c"\00*", [2 x i8] c"\07\22", [2 x i8] c"\0B\1D", [2 x i8] c"\08\1F", [2 x i8] c"\06%", [2 x i8] c"\07*", [2 x i8] c"\03(", [2 x i8] c"\08!", [2 x i8] c"\0D+", [2 x i8] c"\0D$", [2 x i8] c"\04/", [2 x i8] c"\037", [2 x i8] c"\02:", [2 x i8] c"\06<", [2 x i8] c"\08,", [2 x i8] c"\0B,", [2 x i8] c"\0E*", [2 x i8] c"\070", [2 x i8] c"\048", [2 x i8] c"\044", [2 x i8] c"\0D%", [2 x i8] c"\091", [2 x i8] c"\13:", [2 x i8] c"\0A0", [2 x i8] c"\0C-", [2 x i8] c"\00E", [2 x i8] c"\14!", [2 x i8] c"\08?", [2 x i8] c"#\EE", [2 x i8] c"!\E7", [2 x i8] c"\1C\FD", [2 x i8] c"\18\0A", [2 x i8] c"\1B\00", [2 x i8] c"\22\F2", [2 x i8] c"4\D4", [2 x i8] c"'\E8", [2 x i8] c"\13\11", [2 x i8] c"\1F\19", [2 x i8] c"$\1D", [2 x i8] c"\18!", [2 x i8] c"\22\0F", [2 x i8] c"\1E\14", [2 x i8] c"\16I", [2 x i8] c"\14\22", [2 x i8] c"\13\1F", [2 x i8] c"\1B,", [2 x i8] c"\13\10", [2 x i8] c"\0F$", [2 x i8] c"\0F$", [2 x i8] c"\15\1C", [2 x i8] c"\19\15", [2 x i8] c"\1E\14", [2 x i8] c"\1F\0C", [2 x i8] c"\1B\10", [2 x i8] c"\18*", [2 x i8] c"\00]", [2 x i8] c"\0E8", [2 x i8] c"\0F9", [2 x i8] c"\1A&", [2 x i8] c"\E8\7F", [2 x i8] c"\E8s", [2 x i8] c"\EAR", [2 x i8] c"\F7>", [2 x i8] c"\005", [2 x i8] c"\00;", [2 x i8] c"\F2U", [2 x i8] c"\F3Y", [2 x i8] c"\F3^", [2 x i8] c"\F5\\", [2 x i8] c"\E3\7F", [2 x i8] c"\EBd", [2 x i8] c"\F29", [2 x i8] c"\F4C", [2 x i8] c"\F5G", [2 x i8] c"\F6M", [2 x i8] c"\EBU", [2 x i8] c"\F0X", [2 x i8] c"\E9h", [2 x i8] c"\F1b", [2 x i8] c"\DB\7F", [2 x i8] c"\F6R", [2 x i8] c"\F80", [2 x i8] c"\F8=", [2 x i8] c"\F8B", [2 x i8] c"\F9F", [2 x i8] c"\F2K", [2 x i8] c"\F6O", [2 x i8] c"\F7S", [2 x i8] c"\F4\\", [2 x i8] c"\EEl", [2 x i8] c"\FCO", [2 x i8] c"\EAE", [2 x i8] c"\F0K", [2 x i8] c"\FE:", [2 x i8] c"\01:", [2 x i8] c"\F3N", [2 x i8] c"\F7S", [2 x i8] c"\FCQ", [2 x i8] c"\F3c", [2 x i8] c"\F3Q", [2 x i8] c"\FA&", [2 x i8] c"\F3>", [2 x i8] c"\FA:", [2 x i8] c"\FE;", [2 x i8] c"\F0I", [2 x i8] c"\F6L", [2 x i8] c"\F3V", [2 x i8] c"\F7S", [2 x i8] c"\F6W", [2 x i8] zeroinitializer, [2 x i8] c"\EA\7F", [2 x i8] c"\E7\7F", [2 x i8] c"\E7x", [2 x i8] c"\E5\7F", [2 x i8] c"\EDr", [2 x i8] c"\E9u", [2 x i8] c"\E7v", [2 x i8] c"\E6u", [2 x i8] c"\E8q", [2 x i8] c"\E4v", [2 x i8] c"\E1x", [2 x i8] c"\DB|", [2 x i8] c"\F6^", [2 x i8] c"\F1f", [2 x i8] c"\F6c", [2 x i8] c"\F3j", [2 x i8] c"\CE\7F", [2 x i8] c"\FB\\", [2 x i8] c"\119", [2 x i8] c"\FBV", [2 x i8] c"\F3^", [2 x i8] c"\F4[", [2 x i8] c"\FEM", [2 x i8] c"\00G", [2 x i8] c"\FFI", [2 x i8] c"\04@", [2 x i8] c"\F9Q", [2 x i8] c"\05@", [2 x i8] c"\0F9", [2 x i8] c"\01C", [2 x i8] c"\00D", [2 x i8] c"\F6C", [2 x i8] c"\01D", [2 x i8] c"\00M", [2 x i8] c"\02@", [2 x i8] c"\00D", [2 x i8] c"\FBN", [2 x i8] c"\077", [2 x i8] c"\05;", [2 x i8] c"\02A", [2 x i8] c"\0E6", [2 x i8] c"\0F,", [2 x i8] c"\05<", [2 x i8] c"\02F", [2 x i8] c"\FEL", [2 x i8] c"\EEV", [2 x i8] c"\0CF", [2 x i8] c"\05@", [2 x i8] c"\F4F", [2 x i8] c"\0B7", [2 x i8] c"\058", [2 x i8] c"\00E", [2 x i8] c"\02A", [2 x i8] c"\FAJ", [2 x i8] c"\056", [2 x i8] c"\076", [2 x i8] c"\FAL", [2 x i8] c"\F5R", [2 x i8] c"\FEM", [2 x i8] c"\FEM", [2 x i8] c"\19*", [2 x i8] c"\11\F3", [2 x i8] c"\10\F7", [2 x i8] c"\11\F4", [2 x i8] c"\1B\EB", [2 x i8] c"%\E2", [2 x i8] c")\D8", [2 x i8] c"*\D7", [2 x i8] c"0\D1", [2 x i8] c"'\E0", [2 x i8] c".\D8", [2 x i8] c"4\CD", [2 x i8] c".\D7", [2 x i8] c"4\D9", [2 x i8] c"+\ED", [2 x i8] c" \0B", [2 x i8] c"=\C9", [2 x i8] c"8\D2", [2 x i8] c">\CE", [2 x i8] c"Q\BD", [2 x i8] c"-\EC", [2 x i8] c"#\FE", [2 x i8] c"\1C\0F", [2 x i8] c"\22\01", [2 x i8] c"'\01", [2 x i8] c"\1E\11", [2 x i8] c"\14&", [2 x i8] c"\12-", [2 x i8] c"\0F6", [2 x i8] c"\00O", [2 x i8] c"$\F0", [2 x i8] c"%\F2", [2 x i8] c"%\EF", [2 x i8] c" \01", [2 x i8] c"\22\0F", [2 x i8] c"\1D\0F", [2 x i8] c"\18\19", [2 x i8] c"\22\16", [2 x i8] c"\1F\10", [2 x i8] c"#\12", [2 x i8] c"\1F\1C", [2 x i8] c"!)", [2 x i8] c"$\1C", [2 x i8] c"\1B/", [2 x i8] c"\15>", [2 x i8] c"\12\1F", [2 x i8] c"\13\1A", [2 x i8] c"$\18", [2 x i8] c"\18\17", [2 x i8] c"\1B\10", [2 x i8] c"\18\1E", [2 x i8] c"\1F\1D", [2 x i8] c"\16)", [2 x i8] c"\16*", [2 x i8] c"\10<", [2 x i8] c"\0F4", [2 x i8] c"\0E<", [2 x i8] c"\03N", [2 x i8] c"\F0{", [2 x i8] c"\155", [2 x i8] c"\168", [2 x i8] c"\19=", [2 x i8] c"\15!", [2 x i8] c"\132", [2 x i8] c"\11=", [2 x i8] c"\FDN", [2 x i8] c"\F8J", [2 x i8] c"\F7H", [2 x i8] c"\F6H", [2 x i8] c"\EEK", [2 x i8] c"\F4G", [2 x i8] c"\F5?", [2 x i8] c"\FBF", [2 x i8] c"\EFK", [2 x i8] c"\F2H", [2 x i8] c"\F0C", [2 x i8] c"\F85", [2 x i8] c"\F2;", [2 x i8] c"\F74", [2 x i8] c"\F5D", [2 x i8] c"\09\FE", [2 x i8] c"\1E\F6", [2 x i8] c"\1F\FC", [2 x i8] c"!\FF", [2 x i8] c"!\07", [2 x i8] c"\1F\0C", [2 x i8] c"%\17", [2 x i8] c"\1F&", [2 x i8] c"\14@", [2 x i8] c"\F7G", [2 x i8] c"\F9%", [2 x i8] c"\F8,", [2 x i8] c"\F51", [2 x i8] c"\F68", [2 x i8] c"\F4;", [2 x i8] c"\F8?", [2 x i8] c"\F7C", [2 x i8] c"\FAD", [2 x i8] c"\F6O", [2 x i8] c"\FDN", [2 x i8] c"\F8J", [2 x i8] c"\F7H", [2 x i8] c"\F6H", [2 x i8] c"\EEK", [2 x i8] c"\F4G", [2 x i8] c"\F5?", [2 x i8] c"\FBF", [2 x i8] c"\EFK", [2 x i8] c"\F2H", [2 x i8] c"\F0C", [2 x i8] c"\F85", [2 x i8] c"\F2;", [2 x i8] c"\F74", [2 x i8] c"\F5D", [2 x i8] c"\09\FE", [2 x i8] c"\1E\F6", [2 x i8] c"\1F\FC", [2 x i8] c"!\FF", [2 x i8] c"!\07", [2 x i8] c"\1F\0C", [2 x i8] c"%\17", [2 x i8] c"\1F&", [2 x i8] c"\14@"]], align 16, !dbg !52

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @x264_cabac_context_init(ptr nocapture noundef writeonly %cb, i32 noundef %i_slice_type, i32 noundef %i_qp, i32 noundef %i_model) local_unnamed_addr #0 !dbg !68 {
iter.check:
    #dbg_value(ptr %cb, !89, !DIExpression(), !100)
    #dbg_value(i32 %i_slice_type, !90, !DIExpression(), !100)
    #dbg_value(i32 %i_qp, !91, !DIExpression(), !100)
    #dbg_value(i32 %i_model, !92, !DIExpression(), !100)
  %cmp = icmp eq i32 %i_slice_type, 2, !dbg !101
  %idxprom = sext i32 %i_model to i64, !dbg !103
  %arrayidx = getelementptr inbounds [3 x [460 x [2 x i8]]], ptr @x264_cabac_context_init_PB, i64 0, i64 %idxprom, !dbg !103
  %cabac_context_init.0 = select i1 %cmp, ptr @x264_cabac_context_init_I, ptr %arrayidx, !dbg !103
    #dbg_value(ptr %cabac_context_init.0, !93, !DIExpression(), !100)
    #dbg_value(i32 0, !95, !DIExpression(), !104)
  %state14 = getelementptr inbounds i8, ptr %cb, i64 52
  %scevgep = getelementptr i8, ptr %cb, i64 512, !dbg !105
  %scevgep28 = getelementptr i8, ptr %cabac_context_init.0, i64 920, !dbg !105
  %bound0 = icmp ult ptr %state14, %scevgep28, !dbg !105
  %bound1 = icmp ult ptr %cabac_context_init.0, %scevgep, !dbg !105
  %found.conflict = and i1 %bound0, %bound1, !dbg !105
  br i1 %found.conflict, label %for.body.preheader, label %vector.ph, !dbg !105

for.body.preheader:                               ; preds = %vec.epilog.vector.body, %iter.check
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 456, %vec.epilog.vector.body ]
  br label %for.body, !dbg !105

vector.ph:                                        ; preds = %iter.check
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i_qp, i64 0, !dbg !105
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer, !dbg !105
  br label %vector.body, !dbg !105

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !106
  %0 = or disjoint i64 %index, 1, !dbg !105
  %1 = or disjoint i64 %index, 2, !dbg !105
  %2 = or disjoint i64 %index, 3, !dbg !105
  %3 = or disjoint i64 %index, 4, !dbg !105
  %4 = or disjoint i64 %index, 5, !dbg !105
  %5 = or disjoint i64 %index, 6, !dbg !105
  %6 = or disjoint i64 %index, 7, !dbg !105
  %7 = or disjoint i64 %index, 8, !dbg !105
  %8 = or disjoint i64 %index, 9, !dbg !105
  %9 = or disjoint i64 %index, 10, !dbg !105
  %10 = or disjoint i64 %index, 11, !dbg !105
  %11 = or disjoint i64 %index, 12, !dbg !105
  %12 = or disjoint i64 %index, 13, !dbg !105
  %13 = or disjoint i64 %index, 14, !dbg !105
  %14 = or disjoint i64 %index, 15, !dbg !105
  %15 = or disjoint i64 %index, 16, !dbg !105
  %16 = or disjoint i64 %index, 17, !dbg !105
  %17 = or disjoint i64 %index, 18, !dbg !105
  %18 = or disjoint i64 %index, 19, !dbg !105
  %19 = or disjoint i64 %index, 20, !dbg !105
  %20 = or disjoint i64 %index, 21, !dbg !105
  %21 = or disjoint i64 %index, 22, !dbg !105
  %22 = or disjoint i64 %index, 23, !dbg !105
  %23 = or disjoint i64 %index, 24, !dbg !105
  %24 = or disjoint i64 %index, 25, !dbg !105
  %25 = or disjoint i64 %index, 26, !dbg !105
  %26 = or disjoint i64 %index, 27, !dbg !105
  %27 = or disjoint i64 %index, 28, !dbg !105
  %28 = or disjoint i64 %index, 29, !dbg !105
  %29 = or disjoint i64 %index, 30, !dbg !105
  %30 = or disjoint i64 %index, 31, !dbg !105
  %31 = or disjoint i64 %index, 32, !dbg !105
  %32 = or disjoint i64 %index, 33, !dbg !105
  %33 = or disjoint i64 %index, 34, !dbg !105
  %34 = or disjoint i64 %index, 35, !dbg !105
  %35 = or disjoint i64 %index, 36, !dbg !105
  %36 = or disjoint i64 %index, 37, !dbg !105
  %37 = or disjoint i64 %index, 38, !dbg !105
  %38 = or disjoint i64 %index, 39, !dbg !105
  %39 = or disjoint i64 %index, 40, !dbg !105
  %40 = or disjoint i64 %index, 41, !dbg !105
  %41 = or disjoint i64 %index, 42, !dbg !105
  %42 = or disjoint i64 %index, 43, !dbg !105
  %43 = or disjoint i64 %index, 44, !dbg !105
  %44 = or disjoint i64 %index, 45, !dbg !105
  %45 = or disjoint i64 %index, 46, !dbg !105
  %46 = or disjoint i64 %index, 47, !dbg !105
  %47 = or disjoint i64 %index, 48, !dbg !105
  %48 = or disjoint i64 %index, 49, !dbg !105
  %49 = or disjoint i64 %index, 50, !dbg !105
  %50 = or disjoint i64 %index, 51, !dbg !105
  %51 = or disjoint i64 %index, 52, !dbg !105
  %52 = or disjoint i64 %index, 53, !dbg !105
  %53 = or disjoint i64 %index, 54, !dbg !105
  %54 = or disjoint i64 %index, 55, !dbg !105
  %55 = or disjoint i64 %index, 56, !dbg !105
  %56 = or disjoint i64 %index, 57, !dbg !105
  %57 = or disjoint i64 %index, 58, !dbg !105
  %58 = or disjoint i64 %index, 59, !dbg !105
  %59 = or disjoint i64 %index, 60, !dbg !105
  %60 = or disjoint i64 %index, 61, !dbg !105
  %61 = or disjoint i64 %index, 62, !dbg !105
  %62 = or disjoint i64 %index, 63, !dbg !105
  %63 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %index, !dbg !107
  %64 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %0, !dbg !107
  %65 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %1, !dbg !107
  %66 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %2, !dbg !107
  %67 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %3, !dbg !107
  %68 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %4, !dbg !107
  %69 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %5, !dbg !107
  %70 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %6, !dbg !107
  %71 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %7, !dbg !107
  %72 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %8, !dbg !107
  %73 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %9, !dbg !107
  %74 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %10, !dbg !107
  %75 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %11, !dbg !107
  %76 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %12, !dbg !107
  %77 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %13, !dbg !107
  %78 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %14, !dbg !107
  %79 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %15, !dbg !107
  %80 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %16, !dbg !107
  %81 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %17, !dbg !107
  %82 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %18, !dbg !107
  %83 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %19, !dbg !107
  %84 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %20, !dbg !107
  %85 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %21, !dbg !107
  %86 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %22, !dbg !107
  %87 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %23, !dbg !107
  %88 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %24, !dbg !107
  %89 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %25, !dbg !107
  %90 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %26, !dbg !107
  %91 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %27, !dbg !107
  %92 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %28, !dbg !107
  %93 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %29, !dbg !107
  %94 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %30, !dbg !107
  %95 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %31, !dbg !107
  %96 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %32, !dbg !107
  %97 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %33, !dbg !107
  %98 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %34, !dbg !107
  %99 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %35, !dbg !107
  %100 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %36, !dbg !107
  %101 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %37, !dbg !107
  %102 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %38, !dbg !107
  %103 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %39, !dbg !107
  %104 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %40, !dbg !107
  %105 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %41, !dbg !107
  %106 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %42, !dbg !107
  %107 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %43, !dbg !107
  %108 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %44, !dbg !107
  %109 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %45, !dbg !107
  %110 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %46, !dbg !107
  %111 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %47, !dbg !107
  %112 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %48, !dbg !107
  %113 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %49, !dbg !107
  %114 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %50, !dbg !107
  %115 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %51, !dbg !107
  %116 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %52, !dbg !107
  %117 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %53, !dbg !107
  %118 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %54, !dbg !107
  %119 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %55, !dbg !107
  %120 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %56, !dbg !107
  %121 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %57, !dbg !107
  %122 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %58, !dbg !107
  %123 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %59, !dbg !107
  %124 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %60, !dbg !107
  %125 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %61, !dbg !107
  %126 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %62, !dbg !107
  %127 = load i8, ptr %63, align 8, !dbg !107, !alias.scope !108
  %128 = load i8, ptr %64, align 2, !dbg !107, !alias.scope !108
  %129 = load i8, ptr %65, align 4, !dbg !107, !alias.scope !108
  %130 = load i8, ptr %66, align 2, !dbg !107, !alias.scope !108
  %131 = load i8, ptr %67, align 8, !dbg !107, !alias.scope !108
  %132 = load i8, ptr %68, align 2, !dbg !107, !alias.scope !108
  %133 = load i8, ptr %69, align 4, !dbg !107, !alias.scope !108
  %134 = load i8, ptr %70, align 2, !dbg !107, !alias.scope !108
  %135 = load i8, ptr %71, align 8, !dbg !107, !alias.scope !108
  %136 = load i8, ptr %72, align 2, !dbg !107, !alias.scope !108
  %137 = load i8, ptr %73, align 4, !dbg !107, !alias.scope !108
  %138 = load i8, ptr %74, align 2, !dbg !107, !alias.scope !108
  %139 = load i8, ptr %75, align 8, !dbg !107, !alias.scope !108
  %140 = load i8, ptr %76, align 2, !dbg !107, !alias.scope !108
  %141 = load i8, ptr %77, align 4, !dbg !107, !alias.scope !108
  %142 = load i8, ptr %78, align 2, !dbg !107, !alias.scope !108
  %143 = insertelement <16 x i8> poison, i8 %127, i64 0, !dbg !107
  %144 = insertelement <16 x i8> %143, i8 %128, i64 1, !dbg !107
  %145 = insertelement <16 x i8> %144, i8 %129, i64 2, !dbg !107
  %146 = insertelement <16 x i8> %145, i8 %130, i64 3, !dbg !107
  %147 = insertelement <16 x i8> %146, i8 %131, i64 4, !dbg !107
  %148 = insertelement <16 x i8> %147, i8 %132, i64 5, !dbg !107
  %149 = insertelement <16 x i8> %148, i8 %133, i64 6, !dbg !107
  %150 = insertelement <16 x i8> %149, i8 %134, i64 7, !dbg !107
  %151 = insertelement <16 x i8> %150, i8 %135, i64 8, !dbg !107
  %152 = insertelement <16 x i8> %151, i8 %136, i64 9, !dbg !107
  %153 = insertelement <16 x i8> %152, i8 %137, i64 10, !dbg !107
  %154 = insertelement <16 x i8> %153, i8 %138, i64 11, !dbg !107
  %155 = insertelement <16 x i8> %154, i8 %139, i64 12, !dbg !107
  %156 = insertelement <16 x i8> %155, i8 %140, i64 13, !dbg !107
  %157 = insertelement <16 x i8> %156, i8 %141, i64 14, !dbg !107
  %158 = insertelement <16 x i8> %157, i8 %142, i64 15, !dbg !107
  %159 = load i8, ptr %79, align 8, !dbg !107, !alias.scope !108
  %160 = load i8, ptr %80, align 2, !dbg !107, !alias.scope !108
  %161 = load i8, ptr %81, align 4, !dbg !107, !alias.scope !108
  %162 = load i8, ptr %82, align 2, !dbg !107, !alias.scope !108
  %163 = load i8, ptr %83, align 8, !dbg !107, !alias.scope !108
  %164 = load i8, ptr %84, align 2, !dbg !107, !alias.scope !108
  %165 = load i8, ptr %85, align 4, !dbg !107, !alias.scope !108
  %166 = load i8, ptr %86, align 2, !dbg !107, !alias.scope !108
  %167 = load i8, ptr %87, align 8, !dbg !107, !alias.scope !108
  %168 = load i8, ptr %88, align 2, !dbg !107, !alias.scope !108
  %169 = load i8, ptr %89, align 4, !dbg !107, !alias.scope !108
  %170 = load i8, ptr %90, align 2, !dbg !107, !alias.scope !108
  %171 = load i8, ptr %91, align 8, !dbg !107, !alias.scope !108
  %172 = load i8, ptr %92, align 2, !dbg !107, !alias.scope !108
  %173 = load i8, ptr %93, align 4, !dbg !107, !alias.scope !108
  %174 = load i8, ptr %94, align 2, !dbg !107, !alias.scope !108
  %175 = insertelement <16 x i8> poison, i8 %159, i64 0, !dbg !107
  %176 = insertelement <16 x i8> %175, i8 %160, i64 1, !dbg !107
  %177 = insertelement <16 x i8> %176, i8 %161, i64 2, !dbg !107
  %178 = insertelement <16 x i8> %177, i8 %162, i64 3, !dbg !107
  %179 = insertelement <16 x i8> %178, i8 %163, i64 4, !dbg !107
  %180 = insertelement <16 x i8> %179, i8 %164, i64 5, !dbg !107
  %181 = insertelement <16 x i8> %180, i8 %165, i64 6, !dbg !107
  %182 = insertelement <16 x i8> %181, i8 %166, i64 7, !dbg !107
  %183 = insertelement <16 x i8> %182, i8 %167, i64 8, !dbg !107
  %184 = insertelement <16 x i8> %183, i8 %168, i64 9, !dbg !107
  %185 = insertelement <16 x i8> %184, i8 %169, i64 10, !dbg !107
  %186 = insertelement <16 x i8> %185, i8 %170, i64 11, !dbg !107
  %187 = insertelement <16 x i8> %186, i8 %171, i64 12, !dbg !107
  %188 = insertelement <16 x i8> %187, i8 %172, i64 13, !dbg !107
  %189 = insertelement <16 x i8> %188, i8 %173, i64 14, !dbg !107
  %190 = insertelement <16 x i8> %189, i8 %174, i64 15, !dbg !107
  %191 = load i8, ptr %95, align 8, !dbg !107, !alias.scope !108
  %192 = load i8, ptr %96, align 2, !dbg !107, !alias.scope !108
  %193 = load i8, ptr %97, align 4, !dbg !107, !alias.scope !108
  %194 = load i8, ptr %98, align 2, !dbg !107, !alias.scope !108
  %195 = load i8, ptr %99, align 8, !dbg !107, !alias.scope !108
  %196 = load i8, ptr %100, align 2, !dbg !107, !alias.scope !108
  %197 = load i8, ptr %101, align 4, !dbg !107, !alias.scope !108
  %198 = load i8, ptr %102, align 2, !dbg !107, !alias.scope !108
  %199 = load i8, ptr %103, align 8, !dbg !107, !alias.scope !108
  %200 = load i8, ptr %104, align 2, !dbg !107, !alias.scope !108
  %201 = load i8, ptr %105, align 4, !dbg !107, !alias.scope !108
  %202 = load i8, ptr %106, align 2, !dbg !107, !alias.scope !108
  %203 = load i8, ptr %107, align 8, !dbg !107, !alias.scope !108
  %204 = load i8, ptr %108, align 2, !dbg !107, !alias.scope !108
  %205 = load i8, ptr %109, align 4, !dbg !107, !alias.scope !108
  %206 = load i8, ptr %110, align 2, !dbg !107, !alias.scope !108
  %207 = insertelement <16 x i8> poison, i8 %191, i64 0, !dbg !107
  %208 = insertelement <16 x i8> %207, i8 %192, i64 1, !dbg !107
  %209 = insertelement <16 x i8> %208, i8 %193, i64 2, !dbg !107
  %210 = insertelement <16 x i8> %209, i8 %194, i64 3, !dbg !107
  %211 = insertelement <16 x i8> %210, i8 %195, i64 4, !dbg !107
  %212 = insertelement <16 x i8> %211, i8 %196, i64 5, !dbg !107
  %213 = insertelement <16 x i8> %212, i8 %197, i64 6, !dbg !107
  %214 = insertelement <16 x i8> %213, i8 %198, i64 7, !dbg !107
  %215 = insertelement <16 x i8> %214, i8 %199, i64 8, !dbg !107
  %216 = insertelement <16 x i8> %215, i8 %200, i64 9, !dbg !107
  %217 = insertelement <16 x i8> %216, i8 %201, i64 10, !dbg !107
  %218 = insertelement <16 x i8> %217, i8 %202, i64 11, !dbg !107
  %219 = insertelement <16 x i8> %218, i8 %203, i64 12, !dbg !107
  %220 = insertelement <16 x i8> %219, i8 %204, i64 13, !dbg !107
  %221 = insertelement <16 x i8> %220, i8 %205, i64 14, !dbg !107
  %222 = insertelement <16 x i8> %221, i8 %206, i64 15, !dbg !107
  %223 = load i8, ptr %111, align 8, !dbg !107, !alias.scope !108
  %224 = load i8, ptr %112, align 2, !dbg !107, !alias.scope !108
  %225 = load i8, ptr %113, align 4, !dbg !107, !alias.scope !108
  %226 = load i8, ptr %114, align 2, !dbg !107, !alias.scope !108
  %227 = load i8, ptr %115, align 8, !dbg !107, !alias.scope !108
  %228 = load i8, ptr %116, align 2, !dbg !107, !alias.scope !108
  %229 = load i8, ptr %117, align 4, !dbg !107, !alias.scope !108
  %230 = load i8, ptr %118, align 2, !dbg !107, !alias.scope !108
  %231 = load i8, ptr %119, align 8, !dbg !107, !alias.scope !108
  %232 = load i8, ptr %120, align 2, !dbg !107, !alias.scope !108
  %233 = load i8, ptr %121, align 4, !dbg !107, !alias.scope !108
  %234 = load i8, ptr %122, align 2, !dbg !107, !alias.scope !108
  %235 = load i8, ptr %123, align 8, !dbg !107, !alias.scope !108
  %236 = load i8, ptr %124, align 2, !dbg !107, !alias.scope !108
  %237 = load i8, ptr %125, align 4, !dbg !107, !alias.scope !108
  %238 = load i8, ptr %126, align 2, !dbg !107, !alias.scope !108
  %239 = insertelement <16 x i8> poison, i8 %223, i64 0, !dbg !105
  %240 = insertelement <16 x i8> %239, i8 %224, i64 1, !dbg !105
  %241 = insertelement <16 x i8> %240, i8 %225, i64 2, !dbg !105
  %242 = insertelement <16 x i8> %241, i8 %226, i64 3, !dbg !105
  %243 = insertelement <16 x i8> %242, i8 %227, i64 4, !dbg !105
  %244 = insertelement <16 x i8> %243, i8 %228, i64 5, !dbg !105
  %245 = insertelement <16 x i8> %244, i8 %229, i64 6, !dbg !105
  %246 = insertelement <16 x i8> %245, i8 %230, i64 7, !dbg !105
  %247 = insertelement <16 x i8> %246, i8 %231, i64 8, !dbg !105
  %248 = insertelement <16 x i8> %247, i8 %232, i64 9, !dbg !105
  %249 = insertelement <16 x i8> %248, i8 %233, i64 10, !dbg !105
  %250 = insertelement <16 x i8> %249, i8 %234, i64 11, !dbg !105
  %251 = insertelement <16 x i8> %250, i8 %235, i64 12, !dbg !105
  %252 = insertelement <16 x i8> %251, i8 %236, i64 13, !dbg !105
  %253 = insertelement <16 x i8> %252, i8 %237, i64 14, !dbg !105
  %254 = insertelement <16 x i8> %253, i8 %238, i64 15, !dbg !105
  %255 = sext <16 x i8> %158 to <16 x i32>, !dbg !105
  %256 = sext <16 x i8> %190 to <16 x i32>, !dbg !105
  %257 = sext <16 x i8> %222 to <16 x i32>, !dbg !105
  %258 = sext <16 x i8> %254 to <16 x i32>, !dbg !105
  %259 = mul nsw <16 x i32> %broadcast.splat, %255, !dbg !111
  %260 = mul nsw <16 x i32> %broadcast.splat, %256, !dbg !111
  %261 = mul nsw <16 x i32> %broadcast.splat, %257, !dbg !111
  %262 = mul nsw <16 x i32> %broadcast.splat, %258, !dbg !111
  %263 = ashr <16 x i32> %259, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !112
  %264 = ashr <16 x i32> %260, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !112
  %265 = ashr <16 x i32> %261, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !112
  %266 = ashr <16 x i32> %262, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !112
  %267 = getelementptr inbounds i8, ptr %63, i64 1, !dbg !113
  %268 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !113
  %269 = getelementptr inbounds i8, ptr %65, i64 1, !dbg !113
  %270 = getelementptr inbounds i8, ptr %66, i64 1, !dbg !113
  %271 = getelementptr inbounds i8, ptr %67, i64 1, !dbg !113
  %272 = getelementptr inbounds i8, ptr %68, i64 1, !dbg !113
  %273 = getelementptr inbounds i8, ptr %69, i64 1, !dbg !113
  %274 = getelementptr inbounds i8, ptr %70, i64 1, !dbg !113
  %275 = getelementptr inbounds i8, ptr %71, i64 1, !dbg !113
  %276 = getelementptr inbounds i8, ptr %72, i64 1, !dbg !113
  %277 = getelementptr inbounds i8, ptr %73, i64 1, !dbg !113
  %278 = getelementptr inbounds i8, ptr %74, i64 1, !dbg !113
  %279 = getelementptr inbounds i8, ptr %75, i64 1, !dbg !113
  %280 = getelementptr inbounds i8, ptr %76, i64 1, !dbg !113
  %281 = getelementptr inbounds i8, ptr %77, i64 1, !dbg !113
  %282 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !113
  %283 = getelementptr inbounds i8, ptr %79, i64 1, !dbg !113
  %284 = getelementptr inbounds i8, ptr %80, i64 1, !dbg !113
  %285 = getelementptr inbounds i8, ptr %81, i64 1, !dbg !113
  %286 = getelementptr inbounds i8, ptr %82, i64 1, !dbg !113
  %287 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !113
  %288 = getelementptr inbounds i8, ptr %84, i64 1, !dbg !113
  %289 = getelementptr inbounds i8, ptr %85, i64 1, !dbg !113
  %290 = getelementptr inbounds i8, ptr %86, i64 1, !dbg !113
  %291 = getelementptr inbounds i8, ptr %87, i64 1, !dbg !113
  %292 = getelementptr inbounds i8, ptr %88, i64 1, !dbg !113
  %293 = getelementptr inbounds i8, ptr %89, i64 1, !dbg !113
  %294 = getelementptr inbounds i8, ptr %90, i64 1, !dbg !113
  %295 = getelementptr inbounds i8, ptr %91, i64 1, !dbg !113
  %296 = getelementptr inbounds i8, ptr %92, i64 1, !dbg !113
  %297 = getelementptr inbounds i8, ptr %93, i64 1, !dbg !113
  %298 = getelementptr inbounds i8, ptr %94, i64 1, !dbg !113
  %299 = getelementptr inbounds i8, ptr %95, i64 1, !dbg !113
  %300 = getelementptr inbounds i8, ptr %96, i64 1, !dbg !113
  %301 = getelementptr inbounds i8, ptr %97, i64 1, !dbg !113
  %302 = getelementptr inbounds i8, ptr %98, i64 1, !dbg !113
  %303 = getelementptr inbounds i8, ptr %99, i64 1, !dbg !113
  %304 = getelementptr inbounds i8, ptr %100, i64 1, !dbg !113
  %305 = getelementptr inbounds i8, ptr %101, i64 1, !dbg !113
  %306 = getelementptr inbounds i8, ptr %102, i64 1, !dbg !113
  %307 = getelementptr inbounds i8, ptr %103, i64 1, !dbg !113
  %308 = getelementptr inbounds i8, ptr %104, i64 1, !dbg !113
  %309 = getelementptr inbounds i8, ptr %105, i64 1, !dbg !113
  %310 = getelementptr inbounds i8, ptr %106, i64 1, !dbg !113
  %311 = getelementptr inbounds i8, ptr %107, i64 1, !dbg !113
  %312 = getelementptr inbounds i8, ptr %108, i64 1, !dbg !113
  %313 = getelementptr inbounds i8, ptr %109, i64 1, !dbg !113
  %314 = getelementptr inbounds i8, ptr %110, i64 1, !dbg !113
  %315 = getelementptr inbounds i8, ptr %111, i64 1, !dbg !113
  %316 = getelementptr inbounds i8, ptr %112, i64 1, !dbg !113
  %317 = getelementptr inbounds i8, ptr %113, i64 1, !dbg !113
  %318 = getelementptr inbounds i8, ptr %114, i64 1, !dbg !113
  %319 = getelementptr inbounds i8, ptr %115, i64 1, !dbg !113
  %320 = getelementptr inbounds i8, ptr %116, i64 1, !dbg !113
  %321 = getelementptr inbounds i8, ptr %117, i64 1, !dbg !113
  %322 = getelementptr inbounds i8, ptr %118, i64 1, !dbg !113
  %323 = getelementptr inbounds i8, ptr %119, i64 1, !dbg !113
  %324 = getelementptr inbounds i8, ptr %120, i64 1, !dbg !113
  %325 = getelementptr inbounds i8, ptr %121, i64 1, !dbg !113
  %326 = getelementptr inbounds i8, ptr %122, i64 1, !dbg !113
  %327 = getelementptr inbounds i8, ptr %123, i64 1, !dbg !113
  %328 = getelementptr inbounds i8, ptr %124, i64 1, !dbg !113
  %329 = getelementptr inbounds i8, ptr %125, i64 1, !dbg !113
  %330 = getelementptr inbounds i8, ptr %126, i64 1, !dbg !113
  %331 = load i8, ptr %267, align 1, !dbg !113, !alias.scope !108
  %332 = load i8, ptr %268, align 1, !dbg !113, !alias.scope !108
  %333 = load i8, ptr %269, align 1, !dbg !113, !alias.scope !108
  %334 = load i8, ptr %270, align 1, !dbg !113, !alias.scope !108
  %335 = load i8, ptr %271, align 1, !dbg !113, !alias.scope !108
  %336 = load i8, ptr %272, align 1, !dbg !113, !alias.scope !108
  %337 = load i8, ptr %273, align 1, !dbg !113, !alias.scope !108
  %338 = load i8, ptr %274, align 1, !dbg !113, !alias.scope !108
  %339 = load i8, ptr %275, align 1, !dbg !113, !alias.scope !108
  %340 = load i8, ptr %276, align 1, !dbg !113, !alias.scope !108
  %341 = load i8, ptr %277, align 1, !dbg !113, !alias.scope !108
  %342 = load i8, ptr %278, align 1, !dbg !113, !alias.scope !108
  %343 = load i8, ptr %279, align 1, !dbg !113, !alias.scope !108
  %344 = load i8, ptr %280, align 1, !dbg !113, !alias.scope !108
  %345 = load i8, ptr %281, align 1, !dbg !113, !alias.scope !108
  %346 = load i8, ptr %282, align 1, !dbg !113, !alias.scope !108
  %347 = insertelement <16 x i8> poison, i8 %331, i64 0, !dbg !113
  %348 = insertelement <16 x i8> %347, i8 %332, i64 1, !dbg !113
  %349 = insertelement <16 x i8> %348, i8 %333, i64 2, !dbg !113
  %350 = insertelement <16 x i8> %349, i8 %334, i64 3, !dbg !113
  %351 = insertelement <16 x i8> %350, i8 %335, i64 4, !dbg !113
  %352 = insertelement <16 x i8> %351, i8 %336, i64 5, !dbg !113
  %353 = insertelement <16 x i8> %352, i8 %337, i64 6, !dbg !113
  %354 = insertelement <16 x i8> %353, i8 %338, i64 7, !dbg !113
  %355 = insertelement <16 x i8> %354, i8 %339, i64 8, !dbg !113
  %356 = insertelement <16 x i8> %355, i8 %340, i64 9, !dbg !113
  %357 = insertelement <16 x i8> %356, i8 %341, i64 10, !dbg !113
  %358 = insertelement <16 x i8> %357, i8 %342, i64 11, !dbg !113
  %359 = insertelement <16 x i8> %358, i8 %343, i64 12, !dbg !113
  %360 = insertelement <16 x i8> %359, i8 %344, i64 13, !dbg !113
  %361 = insertelement <16 x i8> %360, i8 %345, i64 14, !dbg !113
  %362 = insertelement <16 x i8> %361, i8 %346, i64 15, !dbg !113
  %363 = load i8, ptr %283, align 1, !dbg !113, !alias.scope !108
  %364 = load i8, ptr %284, align 1, !dbg !113, !alias.scope !108
  %365 = load i8, ptr %285, align 1, !dbg !113, !alias.scope !108
  %366 = load i8, ptr %286, align 1, !dbg !113, !alias.scope !108
  %367 = load i8, ptr %287, align 1, !dbg !113, !alias.scope !108
  %368 = load i8, ptr %288, align 1, !dbg !113, !alias.scope !108
  %369 = load i8, ptr %289, align 1, !dbg !113, !alias.scope !108
  %370 = load i8, ptr %290, align 1, !dbg !113, !alias.scope !108
  %371 = load i8, ptr %291, align 1, !dbg !113, !alias.scope !108
  %372 = load i8, ptr %292, align 1, !dbg !113, !alias.scope !108
  %373 = load i8, ptr %293, align 1, !dbg !113, !alias.scope !108
  %374 = load i8, ptr %294, align 1, !dbg !113, !alias.scope !108
  %375 = load i8, ptr %295, align 1, !dbg !113, !alias.scope !108
  %376 = load i8, ptr %296, align 1, !dbg !113, !alias.scope !108
  %377 = load i8, ptr %297, align 1, !dbg !113, !alias.scope !108
  %378 = load i8, ptr %298, align 1, !dbg !113, !alias.scope !108
  %379 = insertelement <16 x i8> poison, i8 %363, i64 0, !dbg !113
  %380 = insertelement <16 x i8> %379, i8 %364, i64 1, !dbg !113
  %381 = insertelement <16 x i8> %380, i8 %365, i64 2, !dbg !113
  %382 = insertelement <16 x i8> %381, i8 %366, i64 3, !dbg !113
  %383 = insertelement <16 x i8> %382, i8 %367, i64 4, !dbg !113
  %384 = insertelement <16 x i8> %383, i8 %368, i64 5, !dbg !113
  %385 = insertelement <16 x i8> %384, i8 %369, i64 6, !dbg !113
  %386 = insertelement <16 x i8> %385, i8 %370, i64 7, !dbg !113
  %387 = insertelement <16 x i8> %386, i8 %371, i64 8, !dbg !113
  %388 = insertelement <16 x i8> %387, i8 %372, i64 9, !dbg !113
  %389 = insertelement <16 x i8> %388, i8 %373, i64 10, !dbg !113
  %390 = insertelement <16 x i8> %389, i8 %374, i64 11, !dbg !113
  %391 = insertelement <16 x i8> %390, i8 %375, i64 12, !dbg !113
  %392 = insertelement <16 x i8> %391, i8 %376, i64 13, !dbg !113
  %393 = insertelement <16 x i8> %392, i8 %377, i64 14, !dbg !113
  %394 = insertelement <16 x i8> %393, i8 %378, i64 15, !dbg !113
  %395 = load i8, ptr %299, align 1, !dbg !113, !alias.scope !108
  %396 = load i8, ptr %300, align 1, !dbg !113, !alias.scope !108
  %397 = load i8, ptr %301, align 1, !dbg !113, !alias.scope !108
  %398 = load i8, ptr %302, align 1, !dbg !113, !alias.scope !108
  %399 = load i8, ptr %303, align 1, !dbg !113, !alias.scope !108
  %400 = load i8, ptr %304, align 1, !dbg !113, !alias.scope !108
  %401 = load i8, ptr %305, align 1, !dbg !113, !alias.scope !108
  %402 = load i8, ptr %306, align 1, !dbg !113, !alias.scope !108
  %403 = load i8, ptr %307, align 1, !dbg !113, !alias.scope !108
  %404 = load i8, ptr %308, align 1, !dbg !113, !alias.scope !108
  %405 = load i8, ptr %309, align 1, !dbg !113, !alias.scope !108
  %406 = load i8, ptr %310, align 1, !dbg !113, !alias.scope !108
  %407 = load i8, ptr %311, align 1, !dbg !113, !alias.scope !108
  %408 = load i8, ptr %312, align 1, !dbg !113, !alias.scope !108
  %409 = load i8, ptr %313, align 1, !dbg !113, !alias.scope !108
  %410 = load i8, ptr %314, align 1, !dbg !113, !alias.scope !108
  %411 = insertelement <16 x i8> poison, i8 %395, i64 0, !dbg !113
  %412 = insertelement <16 x i8> %411, i8 %396, i64 1, !dbg !113
  %413 = insertelement <16 x i8> %412, i8 %397, i64 2, !dbg !113
  %414 = insertelement <16 x i8> %413, i8 %398, i64 3, !dbg !113
  %415 = insertelement <16 x i8> %414, i8 %399, i64 4, !dbg !113
  %416 = insertelement <16 x i8> %415, i8 %400, i64 5, !dbg !113
  %417 = insertelement <16 x i8> %416, i8 %401, i64 6, !dbg !113
  %418 = insertelement <16 x i8> %417, i8 %402, i64 7, !dbg !113
  %419 = insertelement <16 x i8> %418, i8 %403, i64 8, !dbg !113
  %420 = insertelement <16 x i8> %419, i8 %404, i64 9, !dbg !113
  %421 = insertelement <16 x i8> %420, i8 %405, i64 10, !dbg !113
  %422 = insertelement <16 x i8> %421, i8 %406, i64 11, !dbg !113
  %423 = insertelement <16 x i8> %422, i8 %407, i64 12, !dbg !113
  %424 = insertelement <16 x i8> %423, i8 %408, i64 13, !dbg !113
  %425 = insertelement <16 x i8> %424, i8 %409, i64 14, !dbg !113
  %426 = insertelement <16 x i8> %425, i8 %410, i64 15, !dbg !113
  %427 = load i8, ptr %315, align 1, !dbg !113, !alias.scope !108
  %428 = load i8, ptr %316, align 1, !dbg !113, !alias.scope !108
  %429 = load i8, ptr %317, align 1, !dbg !113, !alias.scope !108
  %430 = load i8, ptr %318, align 1, !dbg !113, !alias.scope !108
  %431 = load i8, ptr %319, align 1, !dbg !113, !alias.scope !108
  %432 = load i8, ptr %320, align 1, !dbg !113, !alias.scope !108
  %433 = load i8, ptr %321, align 1, !dbg !113, !alias.scope !108
  %434 = load i8, ptr %322, align 1, !dbg !113, !alias.scope !108
  %435 = load i8, ptr %323, align 1, !dbg !113, !alias.scope !108
  %436 = load i8, ptr %324, align 1, !dbg !113, !alias.scope !108
  %437 = load i8, ptr %325, align 1, !dbg !113, !alias.scope !108
  %438 = load i8, ptr %326, align 1, !dbg !113, !alias.scope !108
  %439 = load i8, ptr %327, align 1, !dbg !113, !alias.scope !108
  %440 = load i8, ptr %328, align 1, !dbg !113, !alias.scope !108
  %441 = load i8, ptr %329, align 1, !dbg !113, !alias.scope !108
  %442 = load i8, ptr %330, align 1, !dbg !113, !alias.scope !108
  %443 = insertelement <16 x i8> poison, i8 %427, i64 0, !dbg !105
  %444 = insertelement <16 x i8> %443, i8 %428, i64 1, !dbg !105
  %445 = insertelement <16 x i8> %444, i8 %429, i64 2, !dbg !105
  %446 = insertelement <16 x i8> %445, i8 %430, i64 3, !dbg !105
  %447 = insertelement <16 x i8> %446, i8 %431, i64 4, !dbg !105
  %448 = insertelement <16 x i8> %447, i8 %432, i64 5, !dbg !105
  %449 = insertelement <16 x i8> %448, i8 %433, i64 6, !dbg !105
  %450 = insertelement <16 x i8> %449, i8 %434, i64 7, !dbg !105
  %451 = insertelement <16 x i8> %450, i8 %435, i64 8, !dbg !105
  %452 = insertelement <16 x i8> %451, i8 %436, i64 9, !dbg !105
  %453 = insertelement <16 x i8> %452, i8 %437, i64 10, !dbg !105
  %454 = insertelement <16 x i8> %453, i8 %438, i64 11, !dbg !105
  %455 = insertelement <16 x i8> %454, i8 %439, i64 12, !dbg !105
  %456 = insertelement <16 x i8> %455, i8 %440, i64 13, !dbg !105
  %457 = insertelement <16 x i8> %456, i8 %441, i64 14, !dbg !105
  %458 = insertelement <16 x i8> %457, i8 %442, i64 15, !dbg !105
  %459 = sext <16 x i8> %362 to <16 x i32>, !dbg !105
  %460 = sext <16 x i8> %394 to <16 x i32>, !dbg !105
  %461 = sext <16 x i8> %426 to <16 x i32>, !dbg !105
  %462 = sext <16 x i8> %458 to <16 x i32>, !dbg !105
  %463 = add nsw <16 x i32> %263, %459, !dbg !114
  %464 = add nsw <16 x i32> %264, %460, !dbg !114
  %465 = add nsw <16 x i32> %265, %461, !dbg !114
  %466 = add nsw <16 x i32> %266, %462, !dbg !114
  %467 = icmp slt <16 x i32> %463, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !115
  %468 = icmp slt <16 x i32> %464, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !115
  %469 = icmp slt <16 x i32> %465, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !115
  %470 = icmp slt <16 x i32> %466, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !115
  %471 = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %463, <16 x i32> <i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126>), !dbg !124
  %472 = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %464, <16 x i32> <i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126>), !dbg !124
  %473 = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %465, <16 x i32> <i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126>), !dbg !124
  %474 = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %466, <16 x i32> <i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126>), !dbg !124
  %475 = select <16 x i1> %467, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, <16 x i32> %471, !dbg !124
  %476 = select <16 x i1> %468, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, <16 x i32> %472, !dbg !124
  %477 = select <16 x i1> %469, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, <16 x i32> %473, !dbg !124
  %478 = select <16 x i1> %470, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, <16 x i32> %474, !dbg !124
  %479 = xor <16 x i32> %475, <i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127>, !dbg !125
  %480 = xor <16 x i32> %476, <i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127>, !dbg !125
  %481 = xor <16 x i32> %477, <i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127>, !dbg !125
  %482 = xor <16 x i32> %478, <i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127>, !dbg !125
  %483 = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %475, <16 x i32> %479), !dbg !125
  %484 = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %476, <16 x i32> %480), !dbg !125
  %485 = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %477, <16 x i32> %481), !dbg !125
  %486 = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %478, <16 x i32> %482), !dbg !125
  %487 = shl nuw nsw <16 x i32> %483, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !126
  %488 = shl nuw nsw <16 x i32> %484, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !126
  %489 = shl nuw nsw <16 x i32> %485, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !126
  %490 = shl nuw nsw <16 x i32> %486, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !126
  %491 = lshr <16 x i32> %475, <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>, !dbg !127
  %492 = lshr <16 x i32> %476, <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>, !dbg !127
  %493 = lshr <16 x i32> %477, <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>, !dbg !127
  %494 = lshr <16 x i32> %478, <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>, !dbg !127
  %495 = or disjoint <16 x i32> %487, %491, !dbg !128
  %496 = or disjoint <16 x i32> %488, %492, !dbg !128
  %497 = or disjoint <16 x i32> %489, %493, !dbg !128
  %498 = or disjoint <16 x i32> %490, %494, !dbg !128
  %499 = trunc nuw <16 x i32> %495 to <16 x i8>, !dbg !129
  %500 = trunc nuw <16 x i32> %496 to <16 x i8>, !dbg !129
  %501 = trunc nuw <16 x i32> %497 to <16 x i8>, !dbg !129
  %502 = trunc nuw <16 x i32> %498 to <16 x i8>, !dbg !129
  %503 = getelementptr inbounds [460 x i8], ptr %state14, i64 0, i64 %index, !dbg !130
  %504 = getelementptr inbounds i8, ptr %503, i64 16, !dbg !131
  %505 = getelementptr inbounds i8, ptr %503, i64 32, !dbg !131
  %506 = getelementptr inbounds i8, ptr %503, i64 48, !dbg !131
  store <16 x i8> %499, ptr %503, align 1, !dbg !131, !alias.scope !132, !noalias !108
  store <16 x i8> %500, ptr %504, align 1, !dbg !131, !alias.scope !132, !noalias !108
  store <16 x i8> %501, ptr %505, align 1, !dbg !131, !alias.scope !132, !noalias !108
  store <16 x i8> %502, ptr %506, align 1, !dbg !131, !alias.scope !132, !noalias !108
  %index.next = add nuw i64 %index, 64, !dbg !106
  %507 = icmp eq i64 %index.next, 448, !dbg !106
  br i1 %507, label %vec.epilog.vector.body, label %vector.body, !dbg !106, !llvm.loop !134

vec.epilog.vector.body:                           ; preds = %vector.body
  %broadcast.splatinsert30 = insertelement <8 x i32> poison, i32 %i_qp, i64 0, !dbg !105
  %broadcast.splat31 = shufflevector <8 x i32> %broadcast.splatinsert30, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !105
  %508 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 896, !dbg !107
  %509 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 898, !dbg !107
  %510 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 900, !dbg !107
  %511 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 902, !dbg !107
  %512 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 904, !dbg !107
  %513 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 906, !dbg !107
  %514 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 908, !dbg !107
  %515 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 910, !dbg !107
  %516 = load i8, ptr %508, align 8, !dbg !107, !alias.scope !138
  %517 = load i8, ptr %509, align 2, !dbg !107, !alias.scope !138
  %518 = load i8, ptr %510, align 4, !dbg !107, !alias.scope !138
  %519 = load i8, ptr %511, align 2, !dbg !107, !alias.scope !138
  %520 = load i8, ptr %512, align 8, !dbg !107, !alias.scope !138
  %521 = load i8, ptr %513, align 2, !dbg !107, !alias.scope !138
  %522 = load i8, ptr %514, align 4, !dbg !107, !alias.scope !138
  %523 = load i8, ptr %515, align 2, !dbg !107, !alias.scope !138
  %524 = insertelement <8 x i8> poison, i8 %516, i64 0, !dbg !105
  %525 = insertelement <8 x i8> %524, i8 %517, i64 1, !dbg !105
  %526 = insertelement <8 x i8> %525, i8 %518, i64 2, !dbg !105
  %527 = insertelement <8 x i8> %526, i8 %519, i64 3, !dbg !105
  %528 = insertelement <8 x i8> %527, i8 %520, i64 4, !dbg !105
  %529 = insertelement <8 x i8> %528, i8 %521, i64 5, !dbg !105
  %530 = insertelement <8 x i8> %529, i8 %522, i64 6, !dbg !105
  %531 = insertelement <8 x i8> %530, i8 %523, i64 7, !dbg !105
  %532 = sext <8 x i8> %531 to <8 x i32>, !dbg !105
  %533 = mul nsw <8 x i32> %broadcast.splat31, %532, !dbg !111
  %534 = ashr <8 x i32> %533, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !112
  %535 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 897, !dbg !113
  %536 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 899, !dbg !113
  %537 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 901, !dbg !113
  %538 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 903, !dbg !113
  %539 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 905, !dbg !113
  %540 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 907, !dbg !113
  %541 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 909, !dbg !113
  %542 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 911, !dbg !113
  %543 = load i8, ptr %535, align 1, !dbg !113, !alias.scope !138
  %544 = load i8, ptr %536, align 1, !dbg !113, !alias.scope !138
  %545 = load i8, ptr %537, align 1, !dbg !113, !alias.scope !138
  %546 = load i8, ptr %538, align 1, !dbg !113, !alias.scope !138
  %547 = load i8, ptr %539, align 1, !dbg !113, !alias.scope !138
  %548 = load i8, ptr %540, align 1, !dbg !113, !alias.scope !138
  %549 = load i8, ptr %541, align 1, !dbg !113, !alias.scope !138
  %550 = load i8, ptr %542, align 1, !dbg !113, !alias.scope !138
  %551 = insertelement <8 x i8> poison, i8 %543, i64 0, !dbg !105
  %552 = insertelement <8 x i8> %551, i8 %544, i64 1, !dbg !105
  %553 = insertelement <8 x i8> %552, i8 %545, i64 2, !dbg !105
  %554 = insertelement <8 x i8> %553, i8 %546, i64 3, !dbg !105
  %555 = insertelement <8 x i8> %554, i8 %547, i64 4, !dbg !105
  %556 = insertelement <8 x i8> %555, i8 %548, i64 5, !dbg !105
  %557 = insertelement <8 x i8> %556, i8 %549, i64 6, !dbg !105
  %558 = insertelement <8 x i8> %557, i8 %550, i64 7, !dbg !105
  %559 = sext <8 x i8> %558 to <8 x i32>, !dbg !105
  %560 = add nsw <8 x i32> %534, %559, !dbg !114
  %561 = icmp slt <8 x i32> %560, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !115
  %562 = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %560, <8 x i32> <i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126>), !dbg !124
  %563 = select <8 x i1> %561, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, <8 x i32> %562, !dbg !124
  %564 = xor <8 x i32> %563, <i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127>, !dbg !125
  %565 = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %563, <8 x i32> %564), !dbg !125
  %566 = shl nuw nsw <8 x i32> %565, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !126
  %567 = lshr <8 x i32> %563, <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>, !dbg !127
  %568 = or disjoint <8 x i32> %566, %567, !dbg !128
  %569 = trunc nuw <8 x i32> %568 to <8 x i8>, !dbg !129
  %570 = getelementptr inbounds i8, ptr %cb, i64 500, !dbg !130
  store <8 x i8> %569, ptr %570, align 1, !dbg !131, !alias.scope !141, !noalias !138
  br label %for.body.preheader, !dbg !105

for.cond.cleanup:                                 ; preds = %for.body
  ret void, !dbg !143

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
    #dbg_value(i64 %indvars.iv, !95, !DIExpression(), !104)
  %arrayidx3 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %indvars.iv, !dbg !107
  %571 = load i8, ptr %arrayidx3, align 2, !dbg !107
  %conv = sext i8 %571 to i32, !dbg !107
  %mul = mul nsw i32 %conv, %i_qp, !dbg !111
  %shr = ashr i32 %mul, 4, !dbg !112
  %arrayidx7 = getelementptr inbounds i8, ptr %arrayidx3, i64 1, !dbg !113
  %572 = load i8, ptr %arrayidx7, align 1, !dbg !113
  %conv8 = sext i8 %572 to i32, !dbg !113
  %add = add nsw i32 %shr, %conv8, !dbg !114
    #dbg_value(i32 %add, !120, !DIExpression(), !144)
    #dbg_value(i32 1, !121, !DIExpression(), !144)
    #dbg_value(i32 126, !122, !DIExpression(), !144)
  %cmp.i = icmp slt i32 %add, 1, !dbg !115
  %573 = tail call i32 @llvm.umin.i32(i32 %add, i32 126), !dbg !124
  %cond5.i = select i1 %cmp.i, i32 1, i32 %573, !dbg !124
    #dbg_value(i32 %cond5.i, !97, !DIExpression(), !145)
  %sub = xor i32 %cond5.i, 127, !dbg !125
  %574 = tail call i32 @llvm.umin.i32(i32 %cond5.i, i32 %sub), !dbg !125
  %shl = shl nuw nsw i32 %574, 1, !dbg !126
  %shr12 = lshr i32 %cond5.i, 6, !dbg !127
  %or = or disjoint i32 %shl, %shr12, !dbg !128
  %conv13 = trunc nuw i32 %or to i8, !dbg !129
  %arrayidx16 = getelementptr inbounds [460 x i8], ptr %state14, i64 0, i64 %indvars.iv, !dbg !130
  store i8 %conv13, ptr %arrayidx16, align 1, !dbg !131
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !106
    #dbg_value(i64 %indvars.iv.next, !95, !DIExpression(), !104)
  %exitcond.not = icmp eq i64 %indvars.iv.next, 460, !dbg !146
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !105, !llvm.loop !147
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_cabac_encode_init_core(ptr nocapture noundef writeonly %cb) local_unnamed_addr #1 !dbg !148 {
entry:
    #dbg_value(ptr %cb, !152, !DIExpression(), !153)
  store <4 x i32> <i32 0, i32 510, i32 -9, i32 0>, ptr %cb, align 16, !dbg !154
  ret void, !dbg !155
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_cabac_encode_init(ptr nocapture noundef writeonly %cb, ptr noundef %p_data, ptr noundef %p_end) local_unnamed_addr #1 !dbg !156 {
entry:
    #dbg_value(ptr %cb, !160, !DIExpression(), !163)
    #dbg_value(ptr %p_data, !161, !DIExpression(), !163)
    #dbg_value(ptr %p_end, !162, !DIExpression(), !163)
    #dbg_value(ptr %cb, !152, !DIExpression(), !164)
  store <4 x i32> <i32 0, i32 510, i32 -9, i32 0>, ptr %cb, align 16, !dbg !166
  %p_start = getelementptr inbounds i8, ptr %cb, i64 16, !dbg !167
  store ptr %p_data, ptr %p_start, align 16, !dbg !168
  %p = getelementptr inbounds i8, ptr %cb, i64 24, !dbg !169
  store ptr %p_data, ptr %p, align 8, !dbg !170
  %p_end1 = getelementptr inbounds i8, ptr %cb, i64 32, !dbg !171
  store ptr %p_end, ptr %p_end1, align 16, !dbg !172
  ret void, !dbg !173
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_cabac_encode_decision_c(ptr nocapture noundef %cb, i32 noundef %i_ctx, i32 noundef %b) local_unnamed_addr #2 !dbg !174 {
entry:
    #dbg_value(ptr %cb, !178, !DIExpression(), !183)
    #dbg_value(i32 %i_ctx, !179, !DIExpression(), !183)
    #dbg_value(i32 %b, !180, !DIExpression(), !183)
  %state = getelementptr inbounds i8, ptr %cb, i64 52, !dbg !184
  %idxprom = sext i32 %i_ctx to i64, !dbg !185
  %arrayidx = getelementptr inbounds [460 x i8], ptr %state, i64 0, i64 %idxprom, !dbg !185
  %0 = load i8, ptr %arrayidx, align 1, !dbg !185
  %conv = zext i8 %0 to i32, !dbg !185
    #dbg_value(i32 %conv, !181, !DIExpression(), !183)
  %shr = lshr i32 %conv, 1, !dbg !186
  %idxprom1 = zext nneg i32 %shr to i64, !dbg !187
  %i_range = getelementptr inbounds i8, ptr %cb, i64 4, !dbg !188
  %1 = load i32, ptr %i_range, align 4, !dbg !188
  %shr3 = ashr i32 %1, 6, !dbg !189
  %sub = add nsw i32 %shr3, -4, !dbg !190
  %idxprom4 = sext i32 %sub to i64, !dbg !187
  %arrayidx5 = getelementptr inbounds [64 x [4 x i8]], ptr @x264_cabac_range_lps, i64 0, i64 %idxprom1, i64 %idxprom4, !dbg !187
  %2 = load i8, ptr %arrayidx5, align 1, !dbg !187
  %conv6 = zext i8 %2 to i32, !dbg !187
    #dbg_value(i32 %conv6, !182, !DIExpression(), !183)
  %sub8 = sub nsw i32 %1, %conv6, !dbg !191
  store i32 %sub8, ptr %i_range, align 4, !dbg !191
  %and = and i32 %conv, 1, !dbg !192
  %cmp.not = icmp eq i32 %and, %b, !dbg !194
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !195

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %cb, align 16, !dbg !196
  %add = add nsw i32 %3, %sub8, !dbg !196
  store i32 %add, ptr %cb, align 16, !dbg !196
  store i32 %conv6, ptr %i_range, align 4, !dbg !198
  br label %if.end, !dbg !199

if.end:                                           ; preds = %if.then, %entry
  %idxprom12 = zext i8 %0 to i64, !dbg !200
  %idxprom14 = sext i32 %b to i64, !dbg !200
  %arrayidx15 = getelementptr inbounds [128 x [2 x i8]], ptr @x264_cabac_transition, i64 0, i64 %idxprom12, i64 %idxprom14, !dbg !200
  %4 = load i8, ptr %arrayidx15, align 1, !dbg !200
  store i8 %4, ptr %arrayidx, align 1, !dbg !201
    #dbg_value(ptr %cb, !202, !DIExpression(), !206)
  %5 = load i32, ptr %i_range, align 4, !dbg !208
  %shr.i = ashr i32 %5, 3, !dbg !209
  %idxprom.i = sext i32 %shr.i to i64, !dbg !210
  %arrayidx.i = getelementptr inbounds [64 x i8], ptr @x264_cabac_renorm_shift, i64 0, i64 %idxprom.i, !dbg !210
  %6 = load i8, ptr %arrayidx.i, align 1, !dbg !210
  %conv.i = zext i8 %6 to i32, !dbg !210
    #dbg_value(i32 %conv.i, !205, !DIExpression(), !206)
  %shl.i = shl i32 %5, %conv.i, !dbg !211
  store i32 %shl.i, ptr %i_range, align 4, !dbg !211
  %7 = load i32, ptr %cb, align 16, !dbg !212
  %shl2.i = shl i32 %7, %conv.i, !dbg !212
  store i32 %shl2.i, ptr %cb, align 16, !dbg !212
  %i_queue.i = getelementptr inbounds i8, ptr %cb, i64 8, !dbg !213
  %8 = load i32, ptr %i_queue.i, align 8, !dbg !214
  %add.i = add nsw i32 %8, %conv.i, !dbg !214
  store i32 %add.i, ptr %i_queue.i, align 8, !dbg !214
    #dbg_value(ptr %cb, !215, !DIExpression(), !225)
  %cmp.i.i = icmp sgt i32 %add.i, -1, !dbg !227
  br i1 %cmp.i.i, label %if.then.i.i, label %x264_cabac_encode_renorm.exit, !dbg !228

if.then.i.i:                                      ; preds = %if.end
  %add.i.i = add nuw nsw i32 %add.i, 10, !dbg !229
  %shr.i.i = ashr i32 %shl2.i, %add.i.i, !dbg !230
    #dbg_value(i32 %shr.i.i, !218, !DIExpression(), !231)
  %shl.i.i = shl i32 1024, %add.i, !dbg !232
  %sub.i.i = add nsw i32 %shl.i.i, -1, !dbg !233
  %and.i.i = and i32 %sub.i.i, %shl2.i, !dbg !234
  store i32 %and.i.i, ptr %cb, align 16, !dbg !234
  %sub5.i.i = add nsw i32 %add.i, -8, !dbg !235
  store i32 %sub5.i.i, ptr %i_queue.i, align 8, !dbg !235
  %and6.i.i = and i32 %shr.i.i, 255, !dbg !236
  %cmp7.i.i = icmp eq i32 %and6.i.i, 255, !dbg !237
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.else.i.i, !dbg !238

if.then8.i.i:                                     ; preds = %if.then.i.i
  %i_bytes_outstanding.i.i = getelementptr inbounds i8, ptr %cb, i64 12, !dbg !239
  %9 = load i32, ptr %i_bytes_outstanding.i.i, align 4, !dbg !240
  %inc.i.i = add nsw i32 %9, 1, !dbg !240
  store i32 %inc.i.i, ptr %i_bytes_outstanding.i.i, align 4, !dbg !240
  br label %x264_cabac_encode_renorm.exit, !dbg !241

if.else.i.i:                                      ; preds = %if.then.i.i
  %shr9.i.i = lshr i32 %shr.i.i, 8, !dbg !242
    #dbg_value(i32 %shr.i.i, !221, !DIExpression(DW_OP_constu, 8, DW_OP_shra, DW_OP_stack_value), !243)
  %i_bytes_outstanding10.i.i = getelementptr inbounds i8, ptr %cb, i64 12, !dbg !244
  %10 = load i32, ptr %i_bytes_outstanding10.i.i, align 4, !dbg !244
    #dbg_value(i32 %10, !224, !DIExpression(), !243)
  %p.i.i = getelementptr inbounds i8, ptr %cb, i64 24, !dbg !245
  %11 = load ptr, ptr %p.i.i, align 8, !dbg !245
  %arrayidx.i.i = getelementptr inbounds i8, ptr %11, i64 -1, !dbg !246
  %12 = load i8, ptr %arrayidx.i.i, align 1, !dbg !247
  %13 = trunc i32 %shr9.i.i to i8, !dbg !247
  %conv12.i.i = add i8 %12, %13, !dbg !247
  store i8 %conv12.i.i, ptr %arrayidx.i.i, align 1, !dbg !247
    #dbg_value(i32 %10, !224, !DIExpression(), !243)
  %cmp1338.i.i = icmp sgt i32 %10, 0, !dbg !248
  br i1 %cmp1338.i.i, label %while.body.lr.ph.i.i, label %while.end.i.i, !dbg !249

while.body.lr.ph.i.i:                             ; preds = %if.else.i.i
  %conv16.i.i = add i8 %13, -1
  %xtraiter = and i32 %10, 3, !dbg !249
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !249
  br i1 %lcmp.mod.not, label %while.body.i.i.prol.loopexit, label %while.body.i.i.prol, !dbg !249

while.body.i.i.prol:                              ; preds = %while.body.lr.ph.i.i, %while.body.i.i.prol
  %bytes_outstanding.039.i.i.prol = phi i32 [ %dec.i.i.prol, %while.body.i.i.prol ], [ %10, %while.body.lr.ph.i.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %while.body.i.i.prol ], [ 0, %while.body.lr.ph.i.i ]
    #dbg_value(i32 %bytes_outstanding.039.i.i.prol, !224, !DIExpression(), !243)
  %14 = load ptr, ptr %p.i.i, align 8, !dbg !250
  %incdec.ptr.i.i.prol = getelementptr inbounds i8, ptr %14, i64 1, !dbg !250
  store ptr %incdec.ptr.i.i.prol, ptr %p.i.i, align 8, !dbg !250
  store i8 %conv16.i.i, ptr %14, align 1, !dbg !252
  %dec.i.i.prol = add nsw i32 %bytes_outstanding.039.i.i.prol, -1, !dbg !253
    #dbg_value(i32 %dec.i.i.prol, !224, !DIExpression(), !243)
  %prol.iter.next = add i32 %prol.iter, 1, !dbg !249
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter, !dbg !249
  br i1 %prol.iter.cmp.not, label %while.body.i.i.prol.loopexit, label %while.body.i.i.prol, !dbg !249, !llvm.loop !254

while.body.i.i.prol.loopexit:                     ; preds = %while.body.i.i.prol, %while.body.lr.ph.i.i
  %bytes_outstanding.039.i.i.unr = phi i32 [ %10, %while.body.lr.ph.i.i ], [ %dec.i.i.prol, %while.body.i.i.prol ]
  %15 = icmp ult i32 %10, 4, !dbg !249
  br i1 %15, label %while.end.i.i, label %while.body.i.i, !dbg !249

while.body.i.i:                                   ; preds = %while.body.i.i.prol.loopexit, %while.body.i.i
  %bytes_outstanding.039.i.i = phi i32 [ %dec.i.i.3, %while.body.i.i ], [ %bytes_outstanding.039.i.i.unr, %while.body.i.i.prol.loopexit ]
    #dbg_value(i32 %bytes_outstanding.039.i.i, !224, !DIExpression(), !243)
  %16 = load ptr, ptr %p.i.i, align 8, !dbg !250
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %16, i64 1, !dbg !250
  store ptr %incdec.ptr.i.i, ptr %p.i.i, align 8, !dbg !250
  store i8 %conv16.i.i, ptr %16, align 1, !dbg !252
    #dbg_value(i32 %bytes_outstanding.039.i.i, !224, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !243)
  %17 = load ptr, ptr %p.i.i, align 8, !dbg !250
  %incdec.ptr.i.i.1 = getelementptr inbounds i8, ptr %17, i64 1, !dbg !250
  store ptr %incdec.ptr.i.i.1, ptr %p.i.i, align 8, !dbg !250
  store i8 %conv16.i.i, ptr %17, align 1, !dbg !252
    #dbg_value(i32 %bytes_outstanding.039.i.i, !224, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !243)
  %18 = load ptr, ptr %p.i.i, align 8, !dbg !250
  %incdec.ptr.i.i.2 = getelementptr inbounds i8, ptr %18, i64 1, !dbg !250
  store ptr %incdec.ptr.i.i.2, ptr %p.i.i, align 8, !dbg !250
  store i8 %conv16.i.i, ptr %18, align 1, !dbg !252
    #dbg_value(i32 %bytes_outstanding.039.i.i, !224, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value), !243)
  %19 = load ptr, ptr %p.i.i, align 8, !dbg !250
  %incdec.ptr.i.i.3 = getelementptr inbounds i8, ptr %19, i64 1, !dbg !250
  store ptr %incdec.ptr.i.i.3, ptr %p.i.i, align 8, !dbg !250
  store i8 %conv16.i.i, ptr %19, align 1, !dbg !252
  %dec.i.i.3 = add nsw i32 %bytes_outstanding.039.i.i, -4, !dbg !253
    #dbg_value(i32 %dec.i.i.3, !224, !DIExpression(), !243)
  %20 = add i32 %bytes_outstanding.039.i.i, -5, !dbg !248
  %cmp13.i.i.3 = icmp ult i32 %20, -2, !dbg !248
  br i1 %cmp13.i.i.3, label %while.body.i.i, label %while.end.i.i, !dbg !249, !llvm.loop !256

while.end.i.i:                                    ; preds = %while.body.i.i.prol.loopexit, %while.body.i.i, %if.else.i.i
  %conv18.i.i = trunc i32 %shr.i.i to i8, !dbg !258
  %21 = load ptr, ptr %p.i.i, align 8, !dbg !259
  %incdec.ptr20.i.i = getelementptr inbounds i8, ptr %21, i64 1, !dbg !259
  store ptr %incdec.ptr20.i.i, ptr %p.i.i, align 8, !dbg !259
  store i8 %conv18.i.i, ptr %21, align 1, !dbg !260
  store i32 0, ptr %i_bytes_outstanding10.i.i, align 4, !dbg !261
  br label %x264_cabac_encode_renorm.exit

x264_cabac_encode_renorm.exit:                    ; preds = %if.end, %if.then8.i.i, %while.end.i.i
  ret void, !dbg !262
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_cabac_encode_bypass_c(ptr nocapture noundef %cb, i32 noundef %b) local_unnamed_addr #2 !dbg !263 {
entry:
    #dbg_value(ptr %cb, !267, !DIExpression(), !269)
    #dbg_value(i32 %b, !268, !DIExpression(), !269)
  %0 = load i32, ptr %cb, align 16, !dbg !270
  %shl = shl i32 %0, 1, !dbg !270
  %sub = sub nsw i32 0, %b, !dbg !271
  %i_range = getelementptr inbounds i8, ptr %cb, i64 4, !dbg !272
  %1 = load i32, ptr %i_range, align 4, !dbg !272
  %and = and i32 %1, %sub, !dbg !273
  %add = add nsw i32 %and, %shl, !dbg !274
  store i32 %add, ptr %cb, align 16, !dbg !274
  %i_queue = getelementptr inbounds i8, ptr %cb, i64 8, !dbg !275
  %2 = load i32, ptr %i_queue, align 8, !dbg !276
  %add2 = add nsw i32 %2, 1, !dbg !276
  store i32 %add2, ptr %i_queue, align 8, !dbg !276
    #dbg_value(ptr %cb, !215, !DIExpression(), !277)
  %cmp.i = icmp sgt i32 %2, -2, !dbg !279
  br i1 %cmp.i, label %if.then.i, label %x264_cabac_putbyte.exit, !dbg !280

if.then.i:                                        ; preds = %entry
  %add.i = add nsw i32 %2, 11, !dbg !281
  %shr.i = ashr i32 %add, %add.i, !dbg !282
    #dbg_value(i32 %shr.i, !218, !DIExpression(), !283)
  %shl.i = shl i32 1024, %add2, !dbg !284
  %sub.i = add nsw i32 %shl.i, -1, !dbg !285
  %and.i = and i32 %sub.i, %add, !dbg !286
  store i32 %and.i, ptr %cb, align 16, !dbg !286
  %sub5.i = add nsw i32 %2, -7, !dbg !287
  store i32 %sub5.i, ptr %i_queue, align 8, !dbg !287
  %and6.i = and i32 %shr.i, 255, !dbg !288
  %cmp7.i = icmp eq i32 %and6.i, 255, !dbg !289
  br i1 %cmp7.i, label %if.then8.i, label %if.else.i, !dbg !290

if.then8.i:                                       ; preds = %if.then.i
  %i_bytes_outstanding.i = getelementptr inbounds i8, ptr %cb, i64 12, !dbg !291
  %3 = load i32, ptr %i_bytes_outstanding.i, align 4, !dbg !292
  %inc.i = add nsw i32 %3, 1, !dbg !292
  store i32 %inc.i, ptr %i_bytes_outstanding.i, align 4, !dbg !292
  br label %x264_cabac_putbyte.exit, !dbg !293

if.else.i:                                        ; preds = %if.then.i
  %shr9.i = lshr i32 %shr.i, 8, !dbg !294
    #dbg_value(i32 %shr.i, !221, !DIExpression(DW_OP_constu, 8, DW_OP_shra, DW_OP_stack_value), !295)
  %i_bytes_outstanding10.i = getelementptr inbounds i8, ptr %cb, i64 12, !dbg !296
  %4 = load i32, ptr %i_bytes_outstanding10.i, align 4, !dbg !296
    #dbg_value(i32 %4, !224, !DIExpression(), !295)
  %p.i = getelementptr inbounds i8, ptr %cb, i64 24, !dbg !297
  %5 = load ptr, ptr %p.i, align 8, !dbg !297
  %arrayidx.i = getelementptr inbounds i8, ptr %5, i64 -1, !dbg !298
  %6 = load i8, ptr %arrayidx.i, align 1, !dbg !299
  %7 = trunc i32 %shr9.i to i8, !dbg !299
  %conv12.i = add i8 %6, %7, !dbg !299
  store i8 %conv12.i, ptr %arrayidx.i, align 1, !dbg !299
    #dbg_value(i32 %4, !224, !DIExpression(), !295)
  %cmp1338.i = icmp sgt i32 %4, 0, !dbg !300
  br i1 %cmp1338.i, label %while.body.lr.ph.i, label %while.end.i, !dbg !301

while.body.lr.ph.i:                               ; preds = %if.else.i
  %conv16.i = add i8 %7, -1
  %xtraiter = and i32 %4, 3, !dbg !301
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !301
  br i1 %lcmp.mod.not, label %while.body.i.prol.loopexit, label %while.body.i.prol, !dbg !301

while.body.i.prol:                                ; preds = %while.body.lr.ph.i, %while.body.i.prol
  %bytes_outstanding.039.i.prol = phi i32 [ %dec.i.prol, %while.body.i.prol ], [ %4, %while.body.lr.ph.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %while.body.i.prol ], [ 0, %while.body.lr.ph.i ]
    #dbg_value(i32 %bytes_outstanding.039.i.prol, !224, !DIExpression(), !295)
  %8 = load ptr, ptr %p.i, align 8, !dbg !302
  %incdec.ptr.i.prol = getelementptr inbounds i8, ptr %8, i64 1, !dbg !302
  store ptr %incdec.ptr.i.prol, ptr %p.i, align 8, !dbg !302
  store i8 %conv16.i, ptr %8, align 1, !dbg !303
  %dec.i.prol = add nsw i32 %bytes_outstanding.039.i.prol, -1, !dbg !304
    #dbg_value(i32 %dec.i.prol, !224, !DIExpression(), !295)
  %prol.iter.next = add i32 %prol.iter, 1, !dbg !301
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter, !dbg !301
  br i1 %prol.iter.cmp.not, label %while.body.i.prol.loopexit, label %while.body.i.prol, !dbg !301, !llvm.loop !305

while.body.i.prol.loopexit:                       ; preds = %while.body.i.prol, %while.body.lr.ph.i
  %bytes_outstanding.039.i.unr = phi i32 [ %4, %while.body.lr.ph.i ], [ %dec.i.prol, %while.body.i.prol ]
  %9 = icmp ult i32 %4, 4, !dbg !301
  br i1 %9, label %while.end.i, label %while.body.i, !dbg !301

while.body.i:                                     ; preds = %while.body.i.prol.loopexit, %while.body.i
  %bytes_outstanding.039.i = phi i32 [ %dec.i.3, %while.body.i ], [ %bytes_outstanding.039.i.unr, %while.body.i.prol.loopexit ]
    #dbg_value(i32 %bytes_outstanding.039.i, !224, !DIExpression(), !295)
  %10 = load ptr, ptr %p.i, align 8, !dbg !302
  %incdec.ptr.i = getelementptr inbounds i8, ptr %10, i64 1, !dbg !302
  store ptr %incdec.ptr.i, ptr %p.i, align 8, !dbg !302
  store i8 %conv16.i, ptr %10, align 1, !dbg !303
    #dbg_value(i32 %bytes_outstanding.039.i, !224, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !295)
  %11 = load ptr, ptr %p.i, align 8, !dbg !302
  %incdec.ptr.i.1 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !302
  store ptr %incdec.ptr.i.1, ptr %p.i, align 8, !dbg !302
  store i8 %conv16.i, ptr %11, align 1, !dbg !303
    #dbg_value(i32 %bytes_outstanding.039.i, !224, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !295)
  %12 = load ptr, ptr %p.i, align 8, !dbg !302
  %incdec.ptr.i.2 = getelementptr inbounds i8, ptr %12, i64 1, !dbg !302
  store ptr %incdec.ptr.i.2, ptr %p.i, align 8, !dbg !302
  store i8 %conv16.i, ptr %12, align 1, !dbg !303
    #dbg_value(i32 %bytes_outstanding.039.i, !224, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value), !295)
  %13 = load ptr, ptr %p.i, align 8, !dbg !302
  %incdec.ptr.i.3 = getelementptr inbounds i8, ptr %13, i64 1, !dbg !302
  store ptr %incdec.ptr.i.3, ptr %p.i, align 8, !dbg !302
  store i8 %conv16.i, ptr %13, align 1, !dbg !303
  %dec.i.3 = add nsw i32 %bytes_outstanding.039.i, -4, !dbg !304
    #dbg_value(i32 %dec.i.3, !224, !DIExpression(), !295)
  %14 = add i32 %bytes_outstanding.039.i, -5, !dbg !300
  %cmp13.i.3 = icmp ult i32 %14, -2, !dbg !300
  br i1 %cmp13.i.3, label %while.body.i, label %while.end.i, !dbg !301, !llvm.loop !306

while.end.i:                                      ; preds = %while.body.i.prol.loopexit, %while.body.i, %if.else.i
  %conv18.i = trunc i32 %shr.i to i8, !dbg !308
  %15 = load ptr, ptr %p.i, align 8, !dbg !309
  %incdec.ptr20.i = getelementptr inbounds i8, ptr %15, i64 1, !dbg !309
  store ptr %incdec.ptr20.i, ptr %p.i, align 8, !dbg !309
  store i8 %conv18.i, ptr %15, align 1, !dbg !310
  store i32 0, ptr %i_bytes_outstanding10.i, align 4, !dbg !311
  br label %x264_cabac_putbyte.exit

x264_cabac_putbyte.exit:                          ; preds = %entry, %if.then8.i, %while.end.i
  ret void, !dbg !312
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_cabac_encode_ue_bypass(ptr nocapture noundef %cb, i32 noundef %exp_bits, i32 noundef %val) local_unnamed_addr #2 !dbg !313 {
entry:
    #dbg_value(ptr %cb, !315, !DIExpression(), !323)
    #dbg_value(i32 %exp_bits, !316, !DIExpression(), !323)
    #dbg_value(i32 %val, !317, !DIExpression(), !323)
    #dbg_value(i32 %exp_bits, !318, !DIExpression(), !323)
  %shl38 = shl nuw i32 1, %exp_bits, !dbg !324
  %cmp.not39 = icmp sgt i32 %shl38, %val, !dbg !327
  br i1 %cmp.not39, label %for.end, label %for.body, !dbg !328

for.body:                                         ; preds = %entry, %for.body
  %shl42 = phi i32 [ %shl, %for.body ], [ %shl38, %entry ]
  %val.addr.041 = phi i32 [ %sub, %for.body ], [ %val, %entry ]
  %k.040 = phi i32 [ %inc, %for.body ], [ %exp_bits, %entry ]
    #dbg_value(i32 %val.addr.041, !317, !DIExpression(), !323)
    #dbg_value(i32 %k.040, !318, !DIExpression(), !323)
  %sub = sub nsw i32 %val.addr.041, %shl42, !dbg !329
    #dbg_value(i32 %sub, !317, !DIExpression(), !323)
  %inc = add nsw i32 %k.040, 1, !dbg !330
    #dbg_value(i32 %inc, !318, !DIExpression(), !323)
  %shl = shl nuw i32 1, %inc, !dbg !324
  %cmp.not = icmp slt i32 %sub, %shl, !dbg !327
  br i1 %cmp.not, label %for.end, label %for.body, !dbg !328, !llvm.loop !331

for.end:                                          ; preds = %for.body, %entry
  %k.0.lcssa = phi i32 [ %exp_bits, %entry ], [ %inc, %for.body ], !dbg !333
  %val.addr.0.lcssa = phi i32 [ %val, %entry ], [ %sub, %for.body ]
  %sub2 = sub nsw i32 %k.0.lcssa, %exp_bits, !dbg !334
  %notmask = shl nsw i32 -1, %sub2, !dbg !335
  %sub4 = xor i32 %notmask, -1, !dbg !335
  %add = add nsw i32 %k.0.lcssa, 1, !dbg !336
  %shl5 = shl i32 %sub4, %add, !dbg !337
  %add6 = add nsw i32 %shl5, %val.addr.0.lcssa, !dbg !338
    #dbg_value(i32 %add6, !320, !DIExpression(), !323)
  %mul = shl nsw i32 %k.0.lcssa, 1, !dbg !339
  %reass.sub = sub i32 %mul, %exp_bits, !dbg !340
  %sub8 = add i32 %reass.sub, 1, !dbg !340
    #dbg_value(i32 %sub8, !318, !DIExpression(), !323)
  %and = and i32 %reass.sub, 7, !dbg !341
  %add10 = add nuw nsw i32 %and, 1, !dbg !342
    #dbg_value(i32 %add10, !319, !DIExpression(), !323)
  %i_range = getelementptr inbounds i8, ptr %cb, i64 4
  %i_queue = getelementptr inbounds i8, ptr %cb, i64 8
  %i_bytes_outstanding10.i = getelementptr inbounds i8, ptr %cb, i64 12
  %p.i = getelementptr inbounds i8, ptr %cb, i64 24
  br label %do.body, !dbg !343

do.body:                                          ; preds = %x264_cabac_putbyte.exit, %for.end
  %k.1 = phi i32 [ %sub8, %for.end ], [ %sub11, %x264_cabac_putbyte.exit ], !dbg !323
  %i.0 = phi i32 [ %add10, %for.end ], [ 8, %x264_cabac_putbyte.exit ], !dbg !323
    #dbg_value(i32 %i.0, !319, !DIExpression(), !323)
    #dbg_value(i32 %k.1, !318, !DIExpression(), !323)
  %sub11 = sub nsw i32 %k.1, %i.0, !dbg !344
    #dbg_value(i32 %sub11, !318, !DIExpression(), !323)
  %0 = load i32, ptr %cb, align 16, !dbg !346
  %shl12 = shl i32 %0, %i.0, !dbg !346
  %shr = lshr i32 %add6, %sub11, !dbg !347
  %and13 = and i32 %shr, 255, !dbg !348
  %1 = load i32, ptr %i_range, align 4, !dbg !349
  %mul14 = mul i32 %and13, %1, !dbg !350
  %add16 = add i32 %mul14, %shl12, !dbg !351
  store i32 %add16, ptr %cb, align 16, !dbg !351
  %2 = load i32, ptr %i_queue, align 8, !dbg !352
  %add17 = add nsw i32 %2, %i.0, !dbg !352
  store i32 %add17, ptr %i_queue, align 8, !dbg !352
    #dbg_value(ptr %cb, !215, !DIExpression(), !353)
  %cmp.i = icmp sgt i32 %add17, -1, !dbg !355
  br i1 %cmp.i, label %if.then.i, label %x264_cabac_putbyte.exit, !dbg !356

if.then.i:                                        ; preds = %do.body
  %add.i = add nuw nsw i32 %add17, 10, !dbg !357
  %shr.i = ashr i32 %add16, %add.i, !dbg !358
    #dbg_value(i32 %shr.i, !218, !DIExpression(), !359)
  %shl.i = shl i32 1024, %add17, !dbg !360
  %sub.i = add nsw i32 %shl.i, -1, !dbg !361
  %and.i = and i32 %sub.i, %add16, !dbg !362
  store i32 %and.i, ptr %cb, align 16, !dbg !362
  %sub5.i = add nsw i32 %add17, -8, !dbg !363
  store i32 %sub5.i, ptr %i_queue, align 8, !dbg !363
  %and6.i = and i32 %shr.i, 255, !dbg !364
  %cmp7.i = icmp eq i32 %and6.i, 255, !dbg !365
  br i1 %cmp7.i, label %if.then8.i, label %if.else.i, !dbg !366

if.then8.i:                                       ; preds = %if.then.i
  %3 = load i32, ptr %i_bytes_outstanding10.i, align 4, !dbg !367
  %inc.i = add nsw i32 %3, 1, !dbg !367
  br label %x264_cabac_putbyte.exit.sink.split, !dbg !368

if.else.i:                                        ; preds = %if.then.i
  %shr9.i = lshr i32 %shr.i, 8, !dbg !369
    #dbg_value(i32 %shr.i, !221, !DIExpression(DW_OP_constu, 8, DW_OP_shra, DW_OP_stack_value), !370)
  %4 = load i32, ptr %i_bytes_outstanding10.i, align 4, !dbg !371
    #dbg_value(i32 %4, !224, !DIExpression(), !370)
  %5 = load ptr, ptr %p.i, align 8, !dbg !372
  %arrayidx.i = getelementptr inbounds i8, ptr %5, i64 -1, !dbg !373
  %6 = load i8, ptr %arrayidx.i, align 1, !dbg !374
  %7 = trunc i32 %shr9.i to i8, !dbg !374
  %conv12.i = add i8 %6, %7, !dbg !374
  store i8 %conv12.i, ptr %arrayidx.i, align 1, !dbg !374
  %cmp1338.i = icmp sgt i32 %4, 0, !dbg !375
  br i1 %cmp1338.i, label %while.body.lr.ph.i, label %while.end.i, !dbg !376

while.body.lr.ph.i:                               ; preds = %if.else.i
  %conv16.i = add i8 %7, -1
  %xtraiter = and i32 %4, 3, !dbg !376
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !376
  br i1 %lcmp.mod.not, label %while.body.i.prol.loopexit, label %while.body.i.prol, !dbg !376

while.body.i.prol:                                ; preds = %while.body.lr.ph.i, %while.body.i.prol
  %bytes_outstanding.039.i.prol = phi i32 [ %dec.i.prol, %while.body.i.prol ], [ %4, %while.body.lr.ph.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %while.body.i.prol ], [ 0, %while.body.lr.ph.i ]
    #dbg_value(i32 %bytes_outstanding.039.i.prol, !224, !DIExpression(), !370)
  %8 = load ptr, ptr %p.i, align 8, !dbg !377
  %incdec.ptr.i.prol = getelementptr inbounds i8, ptr %8, i64 1, !dbg !377
  store ptr %incdec.ptr.i.prol, ptr %p.i, align 8, !dbg !377
  store i8 %conv16.i, ptr %8, align 1, !dbg !378
  %dec.i.prol = add nsw i32 %bytes_outstanding.039.i.prol, -1, !dbg !379
    #dbg_value(i32 %dec.i.prol, !224, !DIExpression(), !370)
  %prol.iter.next = add i32 %prol.iter, 1, !dbg !376
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter, !dbg !376
  br i1 %prol.iter.cmp.not, label %while.body.i.prol.loopexit, label %while.body.i.prol, !dbg !376, !llvm.loop !380

while.body.i.prol.loopexit:                       ; preds = %while.body.i.prol, %while.body.lr.ph.i
  %bytes_outstanding.039.i.unr = phi i32 [ %4, %while.body.lr.ph.i ], [ %dec.i.prol, %while.body.i.prol ]
  %9 = icmp ult i32 %4, 4, !dbg !376
  br i1 %9, label %while.end.i, label %while.body.i, !dbg !376

while.body.i:                                     ; preds = %while.body.i.prol.loopexit, %while.body.i
  %bytes_outstanding.039.i = phi i32 [ %dec.i.3, %while.body.i ], [ %bytes_outstanding.039.i.unr, %while.body.i.prol.loopexit ]
    #dbg_value(i32 %bytes_outstanding.039.i, !224, !DIExpression(), !370)
  %10 = load ptr, ptr %p.i, align 8, !dbg !377
  %incdec.ptr.i = getelementptr inbounds i8, ptr %10, i64 1, !dbg !377
  store ptr %incdec.ptr.i, ptr %p.i, align 8, !dbg !377
  store i8 %conv16.i, ptr %10, align 1, !dbg !378
    #dbg_value(i32 %bytes_outstanding.039.i, !224, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !370)
  %11 = load ptr, ptr %p.i, align 8, !dbg !377
  %incdec.ptr.i.1 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !377
  store ptr %incdec.ptr.i.1, ptr %p.i, align 8, !dbg !377
  store i8 %conv16.i, ptr %11, align 1, !dbg !378
    #dbg_value(i32 %bytes_outstanding.039.i, !224, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !370)
  %12 = load ptr, ptr %p.i, align 8, !dbg !377
  %incdec.ptr.i.2 = getelementptr inbounds i8, ptr %12, i64 1, !dbg !377
  store ptr %incdec.ptr.i.2, ptr %p.i, align 8, !dbg !377
  store i8 %conv16.i, ptr %12, align 1, !dbg !378
    #dbg_value(i32 %bytes_outstanding.039.i, !224, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value), !370)
  %13 = load ptr, ptr %p.i, align 8, !dbg !377
  %incdec.ptr.i.3 = getelementptr inbounds i8, ptr %13, i64 1, !dbg !377
  store ptr %incdec.ptr.i.3, ptr %p.i, align 8, !dbg !377
  store i8 %conv16.i, ptr %13, align 1, !dbg !378
  %dec.i.3 = add nsw i32 %bytes_outstanding.039.i, -4, !dbg !379
    #dbg_value(i32 %dec.i.3, !224, !DIExpression(), !370)
  %14 = add i32 %bytes_outstanding.039.i, -5, !dbg !375
  %cmp13.i.3 = icmp ult i32 %14, -2, !dbg !375
  br i1 %cmp13.i.3, label %while.body.i, label %while.end.i, !dbg !376, !llvm.loop !381

while.end.i:                                      ; preds = %while.body.i.prol.loopexit, %while.body.i, %if.else.i
  %conv18.i = trunc i32 %shr.i to i8, !dbg !383
  %15 = load ptr, ptr %p.i, align 8, !dbg !384
  %incdec.ptr20.i = getelementptr inbounds i8, ptr %15, i64 1, !dbg !384
  store ptr %incdec.ptr20.i, ptr %p.i, align 8, !dbg !384
  store i8 %conv18.i, ptr %15, align 1, !dbg !385
  br label %x264_cabac_putbyte.exit.sink.split

x264_cabac_putbyte.exit.sink.split:               ; preds = %while.end.i, %if.then8.i
  %inc.i.sink = phi i32 [ %inc.i, %if.then8.i ], [ 0, %while.end.i ]
  store i32 %inc.i.sink, ptr %i_bytes_outstanding10.i, align 4, !dbg !386
  br label %x264_cabac_putbyte.exit, !dbg !387

x264_cabac_putbyte.exit:                          ; preds = %x264_cabac_putbyte.exit.sink.split, %do.body
    #dbg_value(i32 8, !319, !DIExpression(), !323)
  %cmp18 = icmp sgt i32 %sub11, 0, !dbg !387
  br i1 %cmp18, label %do.body, label %do.end, !dbg !388, !llvm.loop !389

do.end:                                           ; preds = %x264_cabac_putbyte.exit
  ret void, !dbg !391
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_cabac_encode_terminal_c(ptr nocapture noundef %cb) local_unnamed_addr #2 !dbg !392 {
entry:
    #dbg_value(ptr %cb, !394, !DIExpression(), !395)
  %i_range = getelementptr inbounds i8, ptr %cb, i64 4, !dbg !396
  %0 = load i32, ptr %i_range, align 4, !dbg !397
  %sub = add nsw i32 %0, -2, !dbg !397
    #dbg_value(ptr %cb, !202, !DIExpression(), !398)
  %shr.i = ashr i32 %sub, 3, !dbg !400
  %idxprom.i = sext i32 %shr.i to i64, !dbg !401
  %arrayidx.i = getelementptr inbounds [64 x i8], ptr @x264_cabac_renorm_shift, i64 0, i64 %idxprom.i, !dbg !401
  %1 = load i8, ptr %arrayidx.i, align 1, !dbg !401
  %conv.i = zext i8 %1 to i32, !dbg !401
    #dbg_value(i32 %conv.i, !205, !DIExpression(), !398)
  %shl.i = shl i32 %sub, %conv.i, !dbg !402
  store i32 %shl.i, ptr %i_range, align 4, !dbg !402
  %2 = load i32, ptr %cb, align 16, !dbg !403
  %shl2.i = shl i32 %2, %conv.i, !dbg !403
  store i32 %shl2.i, ptr %cb, align 16, !dbg !403
  %i_queue.i = getelementptr inbounds i8, ptr %cb, i64 8, !dbg !404
  %3 = load i32, ptr %i_queue.i, align 8, !dbg !405
  %add.i = add nsw i32 %3, %conv.i, !dbg !405
  store i32 %add.i, ptr %i_queue.i, align 8, !dbg !405
    #dbg_value(ptr %cb, !215, !DIExpression(), !406)
  %cmp.i.i = icmp sgt i32 %add.i, -1, !dbg !408
  br i1 %cmp.i.i, label %if.then.i.i, label %x264_cabac_encode_renorm.exit, !dbg !409

if.then.i.i:                                      ; preds = %entry
  %add.i.i = add nuw nsw i32 %add.i, 10, !dbg !410
  %shr.i.i = ashr i32 %shl2.i, %add.i.i, !dbg !411
    #dbg_value(i32 %shr.i.i, !218, !DIExpression(), !412)
  %shl.i.i = shl i32 1024, %add.i, !dbg !413
  %sub.i.i = add nsw i32 %shl.i.i, -1, !dbg !414
  %and.i.i = and i32 %sub.i.i, %shl2.i, !dbg !415
  store i32 %and.i.i, ptr %cb, align 16, !dbg !415
  %sub5.i.i = add nsw i32 %add.i, -8, !dbg !416
  store i32 %sub5.i.i, ptr %i_queue.i, align 8, !dbg !416
  %and6.i.i = and i32 %shr.i.i, 255, !dbg !417
  %cmp7.i.i = icmp eq i32 %and6.i.i, 255, !dbg !418
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.else.i.i, !dbg !419

if.then8.i.i:                                     ; preds = %if.then.i.i
  %i_bytes_outstanding.i.i = getelementptr inbounds i8, ptr %cb, i64 12, !dbg !420
  %4 = load i32, ptr %i_bytes_outstanding.i.i, align 4, !dbg !421
  %inc.i.i = add nsw i32 %4, 1, !dbg !421
  store i32 %inc.i.i, ptr %i_bytes_outstanding.i.i, align 4, !dbg !421
  br label %x264_cabac_encode_renorm.exit, !dbg !422

if.else.i.i:                                      ; preds = %if.then.i.i
  %shr9.i.i = lshr i32 %shr.i.i, 8, !dbg !423
    #dbg_value(i32 %shr.i.i, !221, !DIExpression(DW_OP_constu, 8, DW_OP_shra, DW_OP_stack_value), !424)
  %i_bytes_outstanding10.i.i = getelementptr inbounds i8, ptr %cb, i64 12, !dbg !425
  %5 = load i32, ptr %i_bytes_outstanding10.i.i, align 4, !dbg !425
    #dbg_value(i32 %5, !224, !DIExpression(), !424)
  %p.i.i = getelementptr inbounds i8, ptr %cb, i64 24, !dbg !426
  %6 = load ptr, ptr %p.i.i, align 8, !dbg !426
  %arrayidx.i.i = getelementptr inbounds i8, ptr %6, i64 -1, !dbg !427
  %7 = load i8, ptr %arrayidx.i.i, align 1, !dbg !428
  %8 = trunc i32 %shr9.i.i to i8, !dbg !428
  %conv12.i.i = add i8 %7, %8, !dbg !428
  store i8 %conv12.i.i, ptr %arrayidx.i.i, align 1, !dbg !428
    #dbg_value(i32 %5, !224, !DIExpression(), !424)
  %cmp1338.i.i = icmp sgt i32 %5, 0, !dbg !429
  br i1 %cmp1338.i.i, label %while.body.lr.ph.i.i, label %while.end.i.i, !dbg !430

while.body.lr.ph.i.i:                             ; preds = %if.else.i.i
  %conv16.i.i = add i8 %8, -1
  %xtraiter = and i32 %5, 3, !dbg !430
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !430
  br i1 %lcmp.mod.not, label %while.body.i.i.prol.loopexit, label %while.body.i.i.prol, !dbg !430

while.body.i.i.prol:                              ; preds = %while.body.lr.ph.i.i, %while.body.i.i.prol
  %bytes_outstanding.039.i.i.prol = phi i32 [ %dec.i.i.prol, %while.body.i.i.prol ], [ %5, %while.body.lr.ph.i.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %while.body.i.i.prol ], [ 0, %while.body.lr.ph.i.i ]
    #dbg_value(i32 %bytes_outstanding.039.i.i.prol, !224, !DIExpression(), !424)
  %9 = load ptr, ptr %p.i.i, align 8, !dbg !431
  %incdec.ptr.i.i.prol = getelementptr inbounds i8, ptr %9, i64 1, !dbg !431
  store ptr %incdec.ptr.i.i.prol, ptr %p.i.i, align 8, !dbg !431
  store i8 %conv16.i.i, ptr %9, align 1, !dbg !432
  %dec.i.i.prol = add nsw i32 %bytes_outstanding.039.i.i.prol, -1, !dbg !433
    #dbg_value(i32 %dec.i.i.prol, !224, !DIExpression(), !424)
  %prol.iter.next = add i32 %prol.iter, 1, !dbg !430
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter, !dbg !430
  br i1 %prol.iter.cmp.not, label %while.body.i.i.prol.loopexit, label %while.body.i.i.prol, !dbg !430, !llvm.loop !434

while.body.i.i.prol.loopexit:                     ; preds = %while.body.i.i.prol, %while.body.lr.ph.i.i
  %bytes_outstanding.039.i.i.unr = phi i32 [ %5, %while.body.lr.ph.i.i ], [ %dec.i.i.prol, %while.body.i.i.prol ]
  %10 = icmp ult i32 %5, 4, !dbg !430
  br i1 %10, label %while.end.i.i, label %while.body.i.i, !dbg !430

while.body.i.i:                                   ; preds = %while.body.i.i.prol.loopexit, %while.body.i.i
  %bytes_outstanding.039.i.i = phi i32 [ %dec.i.i.3, %while.body.i.i ], [ %bytes_outstanding.039.i.i.unr, %while.body.i.i.prol.loopexit ]
    #dbg_value(i32 %bytes_outstanding.039.i.i, !224, !DIExpression(), !424)
  %11 = load ptr, ptr %p.i.i, align 8, !dbg !431
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %11, i64 1, !dbg !431
  store ptr %incdec.ptr.i.i, ptr %p.i.i, align 8, !dbg !431
  store i8 %conv16.i.i, ptr %11, align 1, !dbg !432
    #dbg_value(i32 %bytes_outstanding.039.i.i, !224, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !424)
  %12 = load ptr, ptr %p.i.i, align 8, !dbg !431
  %incdec.ptr.i.i.1 = getelementptr inbounds i8, ptr %12, i64 1, !dbg !431
  store ptr %incdec.ptr.i.i.1, ptr %p.i.i, align 8, !dbg !431
  store i8 %conv16.i.i, ptr %12, align 1, !dbg !432
    #dbg_value(i32 %bytes_outstanding.039.i.i, !224, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !424)
  %13 = load ptr, ptr %p.i.i, align 8, !dbg !431
  %incdec.ptr.i.i.2 = getelementptr inbounds i8, ptr %13, i64 1, !dbg !431
  store ptr %incdec.ptr.i.i.2, ptr %p.i.i, align 8, !dbg !431
  store i8 %conv16.i.i, ptr %13, align 1, !dbg !432
    #dbg_value(i32 %bytes_outstanding.039.i.i, !224, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value), !424)
  %14 = load ptr, ptr %p.i.i, align 8, !dbg !431
  %incdec.ptr.i.i.3 = getelementptr inbounds i8, ptr %14, i64 1, !dbg !431
  store ptr %incdec.ptr.i.i.3, ptr %p.i.i, align 8, !dbg !431
  store i8 %conv16.i.i, ptr %14, align 1, !dbg !432
  %dec.i.i.3 = add nsw i32 %bytes_outstanding.039.i.i, -4, !dbg !433
    #dbg_value(i32 %dec.i.i.3, !224, !DIExpression(), !424)
  %15 = add i32 %bytes_outstanding.039.i.i, -5, !dbg !429
  %cmp13.i.i.3 = icmp ult i32 %15, -2, !dbg !429
  br i1 %cmp13.i.i.3, label %while.body.i.i, label %while.end.i.i, !dbg !430, !llvm.loop !435

while.end.i.i:                                    ; preds = %while.body.i.i.prol.loopexit, %while.body.i.i, %if.else.i.i
  %conv18.i.i = trunc i32 %shr.i.i to i8, !dbg !437
  %16 = load ptr, ptr %p.i.i, align 8, !dbg !438
  %incdec.ptr20.i.i = getelementptr inbounds i8, ptr %16, i64 1, !dbg !438
  store ptr %incdec.ptr20.i.i, ptr %p.i.i, align 8, !dbg !438
  store i8 %conv18.i.i, ptr %16, align 1, !dbg !439
  store i32 0, ptr %i_bytes_outstanding10.i.i, align 4, !dbg !440
  br label %x264_cabac_encode_renorm.exit

x264_cabac_encode_renorm.exit:                    ; preds = %entry, %if.then8.i.i, %while.end.i.i
  ret void, !dbg !441
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_cabac_encode_flush(ptr nocapture noundef readonly %h, ptr nocapture noundef %cb) local_unnamed_addr #2 !dbg !442 {
entry:
    #dbg_value(ptr %h, !1722, !DIExpression(), !1724)
    #dbg_value(ptr %cb, !1723, !DIExpression(), !1724)
  %i_range = getelementptr inbounds i8, ptr %cb, i64 4, !dbg !1725
  %0 = load i32, ptr %i_range, align 4, !dbg !1725
  %sub = add i32 %0, 8388606, !dbg !1726
  %1 = load i32, ptr %cb, align 16, !dbg !1727
  %add = add i32 %sub, %1, !dbg !1727
  %or = shl i32 %add, 9, !dbg !1728
  %shl = or i32 %or, 512, !dbg !1728
  %i_queue = getelementptr inbounds i8, ptr %cb, i64 8, !dbg !1729
  %2 = load i32, ptr %i_queue, align 8, !dbg !1730
  %add3 = add nsw i32 %2, 9, !dbg !1730
  store i32 %add3, ptr %i_queue, align 8, !dbg !1730
    #dbg_value(ptr %cb, !215, !DIExpression(), !1731)
  %cmp.i = icmp sgt i32 %2, -10, !dbg !1733
  br i1 %cmp.i, label %if.then.i, label %if.then.i62, !dbg !1734

if.then.i:                                        ; preds = %entry
  %add.i = add nsw i32 %2, 19, !dbg !1735
  %shr.i = ashr i32 %shl, %add.i, !dbg !1736
    #dbg_value(i32 %shr.i, !218, !DIExpression(), !1737)
  %shl.i = shl i32 1024, %add3, !dbg !1738
  %sub.i = add nsw i32 %shl.i, -1, !dbg !1739
  %and.i = and i32 %sub.i, %shl, !dbg !1740
  store i32 %and.i, ptr %cb, align 16, !dbg !1740
  %sub5.i = add nsw i32 %2, 1, !dbg !1741
  store i32 %sub5.i, ptr %i_queue, align 8, !dbg !1741
  %and6.i = and i32 %shr.i, 255, !dbg !1742
  %cmp7.i = icmp eq i32 %and6.i, 255, !dbg !1743
  br i1 %cmp7.i, label %if.then8.i, label %if.else.i, !dbg !1744

if.then8.i:                                       ; preds = %if.then.i
  %i_bytes_outstanding.i = getelementptr inbounds i8, ptr %cb, i64 12, !dbg !1745
  %3 = load i32, ptr %i_bytes_outstanding.i, align 4, !dbg !1746
  %inc.i = add nsw i32 %3, 1, !dbg !1746
  store i32 %inc.i, ptr %i_bytes_outstanding.i, align 4, !dbg !1746
  br label %x264_cabac_putbyte.exit, !dbg !1747

if.else.i:                                        ; preds = %if.then.i
  %shr9.i = lshr i32 %shr.i, 8, !dbg !1748
    #dbg_value(i32 %shr.i, !221, !DIExpression(DW_OP_constu, 8, DW_OP_shra, DW_OP_stack_value), !1749)
  %i_bytes_outstanding10.i = getelementptr inbounds i8, ptr %cb, i64 12, !dbg !1750
  %4 = load i32, ptr %i_bytes_outstanding10.i, align 4, !dbg !1750
    #dbg_value(i32 %4, !224, !DIExpression(), !1749)
  %p.i = getelementptr inbounds i8, ptr %cb, i64 24, !dbg !1751
  %5 = load ptr, ptr %p.i, align 8, !dbg !1751
  %arrayidx.i = getelementptr inbounds i8, ptr %5, i64 -1, !dbg !1752
  %6 = load i8, ptr %arrayidx.i, align 1, !dbg !1753
  %7 = trunc i32 %shr9.i to i8, !dbg !1753
  %conv12.i = add i8 %6, %7, !dbg !1753
  store i8 %conv12.i, ptr %arrayidx.i, align 1, !dbg !1753
  %cmp1338.i = icmp sgt i32 %4, 0, !dbg !1754
  br i1 %cmp1338.i, label %while.body.lr.ph.i, label %while.end.i, !dbg !1755

while.body.lr.ph.i:                               ; preds = %if.else.i
  %conv16.i = add i8 %7, -1
  %xtraiter = and i32 %4, 3, !dbg !1755
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !1755
  br i1 %lcmp.mod.not, label %while.body.i.prol.loopexit, label %while.body.i.prol, !dbg !1755

while.body.i.prol:                                ; preds = %while.body.lr.ph.i, %while.body.i.prol
  %bytes_outstanding.039.i.prol = phi i32 [ %dec.i.prol, %while.body.i.prol ], [ %4, %while.body.lr.ph.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %while.body.i.prol ], [ 0, %while.body.lr.ph.i ]
    #dbg_value(i32 %bytes_outstanding.039.i.prol, !224, !DIExpression(), !1749)
  %8 = load ptr, ptr %p.i, align 8, !dbg !1756
  %incdec.ptr.i.prol = getelementptr inbounds i8, ptr %8, i64 1, !dbg !1756
  store ptr %incdec.ptr.i.prol, ptr %p.i, align 8, !dbg !1756
  store i8 %conv16.i, ptr %8, align 1, !dbg !1757
  %dec.i.prol = add nsw i32 %bytes_outstanding.039.i.prol, -1, !dbg !1758
    #dbg_value(i32 %dec.i.prol, !224, !DIExpression(), !1749)
  %prol.iter.next = add i32 %prol.iter, 1, !dbg !1755
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter, !dbg !1755
  br i1 %prol.iter.cmp.not, label %while.body.i.prol.loopexit, label %while.body.i.prol, !dbg !1755, !llvm.loop !1759

while.body.i.prol.loopexit:                       ; preds = %while.body.i.prol, %while.body.lr.ph.i
  %bytes_outstanding.039.i.unr = phi i32 [ %4, %while.body.lr.ph.i ], [ %dec.i.prol, %while.body.i.prol ]
  %9 = icmp ult i32 %4, 4, !dbg !1755
  br i1 %9, label %while.end.i, label %while.body.i, !dbg !1755

while.body.i:                                     ; preds = %while.body.i.prol.loopexit, %while.body.i
  %bytes_outstanding.039.i = phi i32 [ %dec.i.3, %while.body.i ], [ %bytes_outstanding.039.i.unr, %while.body.i.prol.loopexit ]
    #dbg_value(i32 %bytes_outstanding.039.i, !224, !DIExpression(), !1749)
  %10 = load ptr, ptr %p.i, align 8, !dbg !1756
  %incdec.ptr.i = getelementptr inbounds i8, ptr %10, i64 1, !dbg !1756
  store ptr %incdec.ptr.i, ptr %p.i, align 8, !dbg !1756
  store i8 %conv16.i, ptr %10, align 1, !dbg !1757
    #dbg_value(i32 %bytes_outstanding.039.i, !224, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1749)
  %11 = load ptr, ptr %p.i, align 8, !dbg !1756
  %incdec.ptr.i.1 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !1756
  store ptr %incdec.ptr.i.1, ptr %p.i, align 8, !dbg !1756
  store i8 %conv16.i, ptr %11, align 1, !dbg !1757
    #dbg_value(i32 %bytes_outstanding.039.i, !224, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !1749)
  %12 = load ptr, ptr %p.i, align 8, !dbg !1756
  %incdec.ptr.i.2 = getelementptr inbounds i8, ptr %12, i64 1, !dbg !1756
  store ptr %incdec.ptr.i.2, ptr %p.i, align 8, !dbg !1756
  store i8 %conv16.i, ptr %12, align 1, !dbg !1757
    #dbg_value(i32 %bytes_outstanding.039.i, !224, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value), !1749)
  %13 = load ptr, ptr %p.i, align 8, !dbg !1756
  %incdec.ptr.i.3 = getelementptr inbounds i8, ptr %13, i64 1, !dbg !1756
  store ptr %incdec.ptr.i.3, ptr %p.i, align 8, !dbg !1756
  store i8 %conv16.i, ptr %13, align 1, !dbg !1757
  %dec.i.3 = add nsw i32 %bytes_outstanding.039.i, -4, !dbg !1758
    #dbg_value(i32 %dec.i.3, !224, !DIExpression(), !1749)
  %14 = add i32 %bytes_outstanding.039.i, -5, !dbg !1754
  %cmp13.i.3 = icmp ult i32 %14, -2, !dbg !1754
  br i1 %cmp13.i.3, label %while.body.i, label %while.end.i, !dbg !1755, !llvm.loop !1760

while.end.i:                                      ; preds = %while.body.i.prol.loopexit, %while.body.i, %if.else.i
  %conv18.i = trunc i32 %shr.i to i8, !dbg !1762
  %15 = load ptr, ptr %p.i, align 8, !dbg !1763
  %incdec.ptr20.i = getelementptr inbounds i8, ptr %15, i64 1, !dbg !1763
  store ptr %incdec.ptr20.i, ptr %p.i, align 8, !dbg !1763
  store i8 %conv18.i, ptr %15, align 1, !dbg !1764
  store i32 0, ptr %i_bytes_outstanding10.i, align 4, !dbg !1765
  %.pr.pre = load i32, ptr %i_queue, align 8, !dbg !1766
  %.pre96.pre = load i32, ptr %cb, align 16, !dbg !1768
  br label %x264_cabac_putbyte.exit

x264_cabac_putbyte.exit:                          ; preds = %if.then8.i, %while.end.i
  %.pre96 = phi i32 [ %and.i, %if.then8.i ], [ %.pre96.pre, %while.end.i ], !dbg !1768
  %16 = phi i32 [ %inc.i, %if.then8.i ], [ 0, %while.end.i ]
  %.pr = phi i32 [ %sub5.i, %if.then8.i ], [ %.pr.pre, %while.end.i ], !dbg !1766
    #dbg_value(ptr %cb, !215, !DIExpression(), !1769)
  %cmp.i29 = icmp sgt i32 %.pr, -1, !dbg !1770
  br i1 %cmp.i29, label %if.then.i30, label %if.then.i62, !dbg !1771

if.then.i30:                                      ; preds = %x264_cabac_putbyte.exit
  %add.i31 = add nuw nsw i32 %.pr, 10, !dbg !1772
  %shr.i32 = ashr i32 %.pre96, %add.i31, !dbg !1773
    #dbg_value(i32 %shr.i32, !218, !DIExpression(), !1774)
  %shl.i33 = shl i32 1024, %.pr, !dbg !1775
  %sub.i34 = add nsw i32 %shl.i33, -1, !dbg !1776
  %and.i35 = and i32 %.pre96, %sub.i34, !dbg !1777
  store i32 %and.i35, ptr %cb, align 16, !dbg !1777
  %sub5.i36 = add nsw i32 %.pr, -8, !dbg !1778
  store i32 %sub5.i36, ptr %i_queue, align 8, !dbg !1778
  %and6.i37 = and i32 %shr.i32, 255, !dbg !1779
  %cmp7.i38 = icmp eq i32 %and6.i37, 255, !dbg !1780
  br i1 %cmp7.i38, label %if.then8.i56, label %if.else.i39, !dbg !1781

if.then8.i56:                                     ; preds = %if.then.i30
  %i_bytes_outstanding.i57 = getelementptr inbounds i8, ptr %cb, i64 12, !dbg !1782
  %inc.i58 = add nsw i32 %16, 1, !dbg !1783
  store i32 %inc.i58, ptr %i_bytes_outstanding.i57, align 4, !dbg !1783
  br label %if.then.i62, !dbg !1784

if.else.i39:                                      ; preds = %if.then.i30
  %shr9.i40 = lshr i32 %shr.i32, 8, !dbg !1785
    #dbg_value(i32 %shr.i32, !221, !DIExpression(DW_OP_constu, 8, DW_OP_shra, DW_OP_stack_value), !1786)
  %i_bytes_outstanding10.i41 = getelementptr inbounds i8, ptr %cb, i64 12, !dbg !1787
    #dbg_value(i32 %16, !224, !DIExpression(), !1786)
  %p.i42 = getelementptr inbounds i8, ptr %cb, i64 24, !dbg !1788
  %17 = load ptr, ptr %p.i42, align 8, !dbg !1788
  %arrayidx.i43 = getelementptr inbounds i8, ptr %17, i64 -1, !dbg !1789
  %18 = load i8, ptr %arrayidx.i43, align 1, !dbg !1790
  %19 = trunc i32 %shr9.i40 to i8, !dbg !1790
  %conv12.i44 = add i8 %18, %19, !dbg !1790
  store i8 %conv12.i44, ptr %arrayidx.i43, align 1, !dbg !1790
  %cmp1338.i45 = icmp sgt i32 %16, 0, !dbg !1791
  br i1 %cmp1338.i45, label %while.body.lr.ph.i49, label %while.end.i46, !dbg !1792

while.body.lr.ph.i49:                             ; preds = %if.else.i39
  %conv16.i50 = add i8 %19, -1
  %xtraiter100 = and i32 %16, 3, !dbg !1792
  %lcmp.mod101.not = icmp eq i32 %xtraiter100, 0, !dbg !1792
  br i1 %lcmp.mod101.not, label %while.body.i51.prol.loopexit, label %while.body.i51.prol, !dbg !1792

while.body.i51.prol:                              ; preds = %while.body.lr.ph.i49, %while.body.i51.prol
  %bytes_outstanding.039.i52.prol = phi i32 [ %dec.i54.prol, %while.body.i51.prol ], [ %16, %while.body.lr.ph.i49 ]
  %prol.iter102 = phi i32 [ %prol.iter102.next, %while.body.i51.prol ], [ 0, %while.body.lr.ph.i49 ]
    #dbg_value(i32 %bytes_outstanding.039.i52.prol, !224, !DIExpression(), !1786)
  %20 = load ptr, ptr %p.i42, align 8, !dbg !1793
  %incdec.ptr.i53.prol = getelementptr inbounds i8, ptr %20, i64 1, !dbg !1793
  store ptr %incdec.ptr.i53.prol, ptr %p.i42, align 8, !dbg !1793
  store i8 %conv16.i50, ptr %20, align 1, !dbg !1794
  %dec.i54.prol = add nsw i32 %bytes_outstanding.039.i52.prol, -1, !dbg !1795
    #dbg_value(i32 %dec.i54.prol, !224, !DIExpression(), !1786)
  %prol.iter102.next = add i32 %prol.iter102, 1, !dbg !1792
  %prol.iter102.cmp.not = icmp eq i32 %prol.iter102.next, %xtraiter100, !dbg !1792
  br i1 %prol.iter102.cmp.not, label %while.body.i51.prol.loopexit, label %while.body.i51.prol, !dbg !1792, !llvm.loop !1796

while.body.i51.prol.loopexit:                     ; preds = %while.body.i51.prol, %while.body.lr.ph.i49
  %bytes_outstanding.039.i52.unr = phi i32 [ %16, %while.body.lr.ph.i49 ], [ %dec.i54.prol, %while.body.i51.prol ]
  %21 = icmp ult i32 %16, 4, !dbg !1792
  br i1 %21, label %while.end.i46, label %while.body.i51, !dbg !1792

while.body.i51:                                   ; preds = %while.body.i51.prol.loopexit, %while.body.i51
  %bytes_outstanding.039.i52 = phi i32 [ %dec.i54.3, %while.body.i51 ], [ %bytes_outstanding.039.i52.unr, %while.body.i51.prol.loopexit ]
    #dbg_value(i32 %bytes_outstanding.039.i52, !224, !DIExpression(), !1786)
  %22 = load ptr, ptr %p.i42, align 8, !dbg !1793
  %incdec.ptr.i53 = getelementptr inbounds i8, ptr %22, i64 1, !dbg !1793
  store ptr %incdec.ptr.i53, ptr %p.i42, align 8, !dbg !1793
  store i8 %conv16.i50, ptr %22, align 1, !dbg !1794
    #dbg_value(i32 %bytes_outstanding.039.i52, !224, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1786)
  %23 = load ptr, ptr %p.i42, align 8, !dbg !1793
  %incdec.ptr.i53.1 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1793
  store ptr %incdec.ptr.i53.1, ptr %p.i42, align 8, !dbg !1793
  store i8 %conv16.i50, ptr %23, align 1, !dbg !1794
    #dbg_value(i32 %bytes_outstanding.039.i52, !224, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !1786)
  %24 = load ptr, ptr %p.i42, align 8, !dbg !1793
  %incdec.ptr.i53.2 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1793
  store ptr %incdec.ptr.i53.2, ptr %p.i42, align 8, !dbg !1793
  store i8 %conv16.i50, ptr %24, align 1, !dbg !1794
    #dbg_value(i32 %bytes_outstanding.039.i52, !224, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value), !1786)
  %25 = load ptr, ptr %p.i42, align 8, !dbg !1793
  %incdec.ptr.i53.3 = getelementptr inbounds i8, ptr %25, i64 1, !dbg !1793
  store ptr %incdec.ptr.i53.3, ptr %p.i42, align 8, !dbg !1793
  store i8 %conv16.i50, ptr %25, align 1, !dbg !1794
  %dec.i54.3 = add nsw i32 %bytes_outstanding.039.i52, -4, !dbg !1795
    #dbg_value(i32 %dec.i54.3, !224, !DIExpression(), !1786)
  %26 = add i32 %bytes_outstanding.039.i52, -5, !dbg !1791
  %cmp13.i55.3 = icmp ult i32 %26, -2, !dbg !1791
  br i1 %cmp13.i55.3, label %while.body.i51, label %while.end.i46, !dbg !1792, !llvm.loop !1797

while.end.i46:                                    ; preds = %while.body.i51.prol.loopexit, %while.body.i51, %if.else.i39
  %conv18.i47 = trunc i32 %shr.i32 to i8, !dbg !1799
  %27 = load ptr, ptr %p.i42, align 8, !dbg !1800
  %incdec.ptr20.i48 = getelementptr inbounds i8, ptr %27, i64 1, !dbg !1800
  store ptr %incdec.ptr20.i48, ptr %p.i42, align 8, !dbg !1800
  store i8 %conv18.i47, ptr %27, align 1, !dbg !1801
  store i32 0, ptr %i_bytes_outstanding10.i41, align 4, !dbg !1802
  %.pre = load i32, ptr %i_queue, align 8, !dbg !1803
  %.pre95 = load i32, ptr %cb, align 16, !dbg !1768
  br label %if.then.i62

if.then.i62:                                      ; preds = %entry, %while.end.i46, %if.then8.i56, %x264_cabac_putbyte.exit
  %28 = phi i32 [ %shl, %entry ], [ %.pre95, %while.end.i46 ], [ %and.i35, %if.then8.i56 ], [ %.pre96, %x264_cabac_putbyte.exit ], !dbg !1768
  %29 = phi i32 [ %add3, %entry ], [ %.pre, %while.end.i46 ], [ %sub5.i36, %if.then8.i56 ], [ %.pr, %x264_cabac_putbyte.exit ], !dbg !1803
  %sub5 = sub nsw i32 0, %29, !dbg !1804
  %shl7 = shl i32 %28, %sub5, !dbg !1768
  store i32 %shl7, ptr %cb, align 16, !dbg !1768
  %i_frame = getelementptr inbounds i8, ptr %h, i64 1844, !dbg !1805
  %30 = load i32, ptr %i_frame, align 4, !dbg !1805
  %and = and i32 %30, 31, !dbg !1806
  %shr = lshr i32 899998965, %and, !dbg !1807
  %and8 = shl i32 %shr, 10, !dbg !1808
  %shl9 = and i32 %and8, 1024, !dbg !1808
  %or11 = or i32 %shl9, %shl7, !dbg !1809
    #dbg_value(ptr %cb, !215, !DIExpression(), !1810)
  %shr.i64 = ashr i32 %or11, 10, !dbg !1812
    #dbg_value(i32 %shr.i64, !218, !DIExpression(), !1813)
  %and.i67 = and i32 %shl7, 1023, !dbg !1814
  store i32 %and.i67, ptr %cb, align 16, !dbg !1814
  store i32 -8, ptr %i_queue, align 8, !dbg !1815
  %31 = and i32 %or11, 261120, !dbg !1816
  %cmp7.i70 = icmp eq i32 %31, 261120, !dbg !1816
  br i1 %cmp7.i70, label %x264_cabac_putbyte.exit91, label %if.else.i71, !dbg !1817

if.else.i71:                                      ; preds = %if.then.i62
  %shr9.i72 = lshr i32 %shr.i64, 8, !dbg !1818
    #dbg_value(i32 %shr.i64, !221, !DIExpression(DW_OP_constu, 8, DW_OP_shra, DW_OP_stack_value), !1819)
  %i_bytes_outstanding10.i73 = getelementptr inbounds i8, ptr %cb, i64 12, !dbg !1820
  %32 = load i32, ptr %i_bytes_outstanding10.i73, align 4, !dbg !1820
    #dbg_value(i32 %32, !224, !DIExpression(), !1819)
  %p.i74 = getelementptr inbounds i8, ptr %cb, i64 24, !dbg !1821
  %33 = load ptr, ptr %p.i74, align 8, !dbg !1821
  %arrayidx.i75 = getelementptr inbounds i8, ptr %33, i64 -1, !dbg !1822
  %34 = load i8, ptr %arrayidx.i75, align 1, !dbg !1823
  %35 = trunc i32 %shr9.i72 to i8, !dbg !1823
  %conv12.i76 = add i8 %34, %35, !dbg !1823
  store i8 %conv12.i76, ptr %arrayidx.i75, align 1, !dbg !1823
  %cmp1338.i77 = icmp sgt i32 %32, 0, !dbg !1824
  br i1 %cmp1338.i77, label %while.body.lr.ph.i81, label %x264_cabac_putbyte.exit91.thread, !dbg !1825

while.body.lr.ph.i81:                             ; preds = %if.else.i71
  %conv16.i82 = add i8 %35, -1
  %xtraiter103 = and i32 %32, 3, !dbg !1825
  %lcmp.mod104.not = icmp eq i32 %xtraiter103, 0, !dbg !1825
  br i1 %lcmp.mod104.not, label %while.body.i83.prol.loopexit, label %while.body.i83.prol, !dbg !1825

while.body.i83.prol:                              ; preds = %while.body.lr.ph.i81, %while.body.i83.prol
  %bytes_outstanding.039.i84.prol = phi i32 [ %dec.i86.prol, %while.body.i83.prol ], [ %32, %while.body.lr.ph.i81 ]
  %prol.iter105 = phi i32 [ %prol.iter105.next, %while.body.i83.prol ], [ 0, %while.body.lr.ph.i81 ]
    #dbg_value(i32 %bytes_outstanding.039.i84.prol, !224, !DIExpression(), !1819)
  %36 = load ptr, ptr %p.i74, align 8, !dbg !1826
  %incdec.ptr.i85.prol = getelementptr inbounds i8, ptr %36, i64 1, !dbg !1826
  store ptr %incdec.ptr.i85.prol, ptr %p.i74, align 8, !dbg !1826
  store i8 %conv16.i82, ptr %36, align 1, !dbg !1827
  %dec.i86.prol = add nsw i32 %bytes_outstanding.039.i84.prol, -1, !dbg !1828
    #dbg_value(i32 %dec.i86.prol, !224, !DIExpression(), !1819)
  %prol.iter105.next = add i32 %prol.iter105, 1, !dbg !1825
  %prol.iter105.cmp.not = icmp eq i32 %prol.iter105.next, %xtraiter103, !dbg !1825
  br i1 %prol.iter105.cmp.not, label %while.body.i83.prol.loopexit, label %while.body.i83.prol, !dbg !1825, !llvm.loop !1829

while.body.i83.prol.loopexit:                     ; preds = %while.body.i83.prol, %while.body.lr.ph.i81
  %bytes_outstanding.039.i84.unr = phi i32 [ %32, %while.body.lr.ph.i81 ], [ %dec.i86.prol, %while.body.i83.prol ]
  %37 = icmp ult i32 %32, 4, !dbg !1825
  br i1 %37, label %x264_cabac_putbyte.exit91.thread, label %while.body.i83, !dbg !1825

while.body.i83:                                   ; preds = %while.body.i83.prol.loopexit, %while.body.i83
  %bytes_outstanding.039.i84 = phi i32 [ %dec.i86.3, %while.body.i83 ], [ %bytes_outstanding.039.i84.unr, %while.body.i83.prol.loopexit ]
    #dbg_value(i32 %bytes_outstanding.039.i84, !224, !DIExpression(), !1819)
  %38 = load ptr, ptr %p.i74, align 8, !dbg !1826
  %incdec.ptr.i85 = getelementptr inbounds i8, ptr %38, i64 1, !dbg !1826
  store ptr %incdec.ptr.i85, ptr %p.i74, align 8, !dbg !1826
  store i8 %conv16.i82, ptr %38, align 1, !dbg !1827
    #dbg_value(i32 %bytes_outstanding.039.i84, !224, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1819)
  %39 = load ptr, ptr %p.i74, align 8, !dbg !1826
  %incdec.ptr.i85.1 = getelementptr inbounds i8, ptr %39, i64 1, !dbg !1826
  store ptr %incdec.ptr.i85.1, ptr %p.i74, align 8, !dbg !1826
  store i8 %conv16.i82, ptr %39, align 1, !dbg !1827
    #dbg_value(i32 %bytes_outstanding.039.i84, !224, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !1819)
  %40 = load ptr, ptr %p.i74, align 8, !dbg !1826
  %incdec.ptr.i85.2 = getelementptr inbounds i8, ptr %40, i64 1, !dbg !1826
  store ptr %incdec.ptr.i85.2, ptr %p.i74, align 8, !dbg !1826
  store i8 %conv16.i82, ptr %40, align 1, !dbg !1827
    #dbg_value(i32 %bytes_outstanding.039.i84, !224, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value), !1819)
  %41 = load ptr, ptr %p.i74, align 8, !dbg !1826
  %incdec.ptr.i85.3 = getelementptr inbounds i8, ptr %41, i64 1, !dbg !1826
  store ptr %incdec.ptr.i85.3, ptr %p.i74, align 8, !dbg !1826
  store i8 %conv16.i82, ptr %41, align 1, !dbg !1827
  %dec.i86.3 = add nsw i32 %bytes_outstanding.039.i84, -4, !dbg !1828
    #dbg_value(i32 %dec.i86.3, !224, !DIExpression(), !1819)
  %42 = add i32 %bytes_outstanding.039.i84, -5, !dbg !1824
  %cmp13.i87.3 = icmp ult i32 %42, -2, !dbg !1824
  br i1 %cmp13.i87.3, label %while.body.i83, label %x264_cabac_putbyte.exit91.thread, !dbg !1825, !llvm.loop !1830

x264_cabac_putbyte.exit91.thread:                 ; preds = %while.body.i83.prol.loopexit, %while.body.i83, %if.else.i71
  %conv18.i79 = trunc i32 %shr.i64 to i8, !dbg !1832
  %43 = load ptr, ptr %p.i74, align 8, !dbg !1833
  %incdec.ptr20.i80 = getelementptr inbounds i8, ptr %43, i64 1, !dbg !1833
  store ptr %incdec.ptr20.i80, ptr %p.i74, align 8, !dbg !1833
  store i8 %conv18.i79, ptr %43, align 1, !dbg !1834
  store i32 0, ptr %i_bytes_outstanding10.i73, align 4, !dbg !1835
  br label %while.end, !dbg !1836

x264_cabac_putbyte.exit91:                        ; preds = %if.then.i62
  %i_bytes_outstanding.i89 = getelementptr inbounds i8, ptr %cb, i64 12, !dbg !1837
  %44 = load i32, ptr %i_bytes_outstanding.i89, align 4, !dbg !1838
  %inc.i90 = add nsw i32 %44, 1, !dbg !1838
  store i32 %inc.i90, ptr %i_bytes_outstanding.i89, align 4, !dbg !1838
  %45 = icmp sgt i32 %44, -1, !dbg !1839
  %i_bytes_outstanding = getelementptr inbounds i8, ptr %cb, i64 12
  br i1 %45, label %while.body.lr.ph, label %while.end, !dbg !1836

while.body.lr.ph:                                 ; preds = %x264_cabac_putbyte.exit91
  %p = getelementptr inbounds i8, ptr %cb, i64 24
  br label %while.body, !dbg !1836

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %46 = load ptr, ptr %p, align 8, !dbg !1840
  %incdec.ptr = getelementptr inbounds i8, ptr %46, i64 1, !dbg !1840
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !1840
  store i8 -1, ptr %46, align 1, !dbg !1842
  %47 = load i32, ptr %i_bytes_outstanding, align 4, !dbg !1843
  %dec = add nsw i32 %47, -1, !dbg !1843
  store i32 %dec, ptr %i_bytes_outstanding, align 4, !dbg !1843
  %cmp = icmp sgt i32 %47, 1, !dbg !1839
  br i1 %cmp, label %while.body, label %while.end, !dbg !1836, !llvm.loop !1844

while.end:                                        ; preds = %while.body, %x264_cabac_putbyte.exit91.thread, %x264_cabac_putbyte.exit91
  ret void, !dbg !1846
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x264_cabac_range_lps", scope: !2, file: !3, line: 667, type: !57, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !14, globals: !16, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "x264_src/common/cabac.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "81e922f79a78663e77ecb0915f9a62f5")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "slice_type_e", file: !6, line: 280, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "x264_src/common/common.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "SLICE_TYPE_P", value: 0)
!10 = !DIEnumerator(name: "SLICE_TYPE_B", value: 1)
!11 = !DIEnumerator(name: "SLICE_TYPE_I", value: 2)
!12 = !DIEnumerator(name: "SLICE_TYPE_SP", value: 3)
!13 = !DIEnumerator(name: "SLICE_TYPE_SI", value: 4)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{!0, !17, !29, !34, !42, !52}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "x264_cabac_transition", scope: !2, file: !3, line: 687, type: !19, isLocal: false, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 2048, elements: !26)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !22, line: 24, baseType: !23)
!22 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !24, line: 38, baseType: !25)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !{!27, !28}
!27 = !DISubrange(count: 128)
!28 = !DISubrange(count: 2)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "x264_cabac_renorm_shift", scope: !2, file: !3, line: 707, type: !31, isLocal: false, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 512, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 64)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "x264_cabac_entropy", scope: !2, file: !3, line: 715, type: !36, isLocal: false, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 2048, elements: !41)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !22, line: 25, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !24, line: 40, baseType: !40)
!40 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!41 = !{!27}
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "x264_cabac_context_init_I", scope: !2, file: !3, line: 27, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 7360, elements: !50)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !47, line: 24, baseType: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !24, line: 37, baseType: !49)
!49 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!50 = !{!51, !28}
!51 = !DISubrange(count: 460)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "x264_cabac_context_init_PB", scope: !2, file: !3, line: 196, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 22080, elements: !55)
!55 = !{!56, !51, !28}
!56 = !DISubrange(count: 3)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 2048, elements: !58)
!58 = !{!33, !59}
!59 = !DISubrange(count: 4)
!60 = !{i32 7, !"Dwarf Version", i32 5}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{i32 1, !"wchar_size", i32 4}
!63 = !{i32 8, !"PIC Level", i32 2}
!64 = !{i32 7, !"PIE Level", i32 2}
!65 = !{i32 7, !"uwtable", i32 2}
!66 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!67 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!68 = distinct !DISubprogram(name: "x264_cabac_context_init", scope: !3, file: !3, line: 755, type: !69, scopeLine: 756, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !88)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71, !15, !15, !15}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !73, line: 46, baseType: !74)
!73 = !DIFile(filename: "x264_src/common/cabac.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "22d062fb0f207ca9dcf17e0003a54ffb")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !73, line: 27, size: 4096, elements: !75)
!75 = !{!76, !77, !78, !79, !80, !82, !83, !84, !85}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !74, file: !73, line: 30, baseType: !15, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !74, file: !73, line: 31, baseType: !15, size: 32, offset: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !74, file: !73, line: 34, baseType: !15, size: 32, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !74, file: !73, line: 35, baseType: !15, size: 32, offset: 96)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !74, file: !73, line: 37, baseType: !81, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !74, file: !73, line: 38, baseType: !81, size: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !74, file: !73, line: 39, baseType: !81, size: 64, offset: 256)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !74, file: !73, line: 42, baseType: !15, size: 32, align: 128, offset: 384)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !74, file: !73, line: 45, baseType: !86, size: 3680, offset: 416)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 3680, elements: !87)
!87 = !{!51}
!88 = !{!89, !90, !91, !92, !93, !95, !97}
!89 = !DILocalVariable(name: "cb", arg: 1, scope: !68, file: !3, line: 755, type: !71)
!90 = !DILocalVariable(name: "i_slice_type", arg: 2, scope: !68, file: !3, line: 755, type: !15)
!91 = !DILocalVariable(name: "i_qp", arg: 3, scope: !68, file: !3, line: 755, type: !15)
!92 = !DILocalVariable(name: "i_model", arg: 4, scope: !68, file: !3, line: 755, type: !15)
!93 = !DILocalVariable(name: "cabac_context_init", scope: !68, file: !3, line: 757, type: !94)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!95 = !DILocalVariable(name: "i", scope: !96, file: !3, line: 764, type: !15)
!96 = distinct !DILexicalBlock(scope: !68, file: !3, line: 764, column: 5)
!97 = !DILocalVariable(name: "state", scope: !98, file: !3, line: 766, type: !15)
!98 = distinct !DILexicalBlock(scope: !99, file: !3, line: 765, column: 5)
!99 = distinct !DILexicalBlock(scope: !96, file: !3, line: 764, column: 5)
!100 = !DILocation(line: 0, scope: !68)
!101 = !DILocation(line: 759, column: 22, scope: !102)
!102 = distinct !DILexicalBlock(scope: !68, file: !3, line: 759, column: 9)
!103 = !DILocation(line: 759, column: 9, scope: !68)
!104 = !DILocation(line: 0, scope: !96)
!105 = !DILocation(line: 764, column: 5, scope: !96)
!106 = !DILocation(line: 764, column: 31, scope: !99)
!107 = !DILocation(line: 766, column: 35, scope: !98)
!108 = !{!109}
!109 = distinct !{!109, !110}
!110 = distinct !{!110, !"LVerDomain"}
!111 = !DILocation(line: 766, column: 63, scope: !98)
!112 = !DILocation(line: 766, column: 71, scope: !98)
!113 = !DILocation(line: 766, column: 79, scope: !98)
!114 = !DILocation(line: 766, column: 77, scope: !98)
!115 = !DILocation(line: 202, column: 17, scope: !116, inlinedAt: !123)
!116 = distinct !DISubprogram(name: "x264_clip3", scope: !6, file: !6, line: 200, type: !117, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !119)
!117 = !DISubroutineType(types: !118)
!118 = !{!15, !15, !15, !15}
!119 = !{!120, !121, !122}
!120 = !DILocalVariable(name: "v", arg: 1, scope: !116, file: !6, line: 200, type: !15)
!121 = !DILocalVariable(name: "i_min", arg: 2, scope: !116, file: !6, line: 200, type: !15)
!122 = !DILocalVariable(name: "i_max", arg: 3, scope: !116, file: !6, line: 200, type: !15)
!123 = distinct !DILocation(line: 766, column: 21, scope: !98)
!124 = !DILocation(line: 202, column: 14, scope: !116, inlinedAt: !123)
!125 = !DILocation(line: 767, column: 25, scope: !98)
!126 = !DILocation(line: 767, column: 54, scope: !98)
!127 = !DILocation(line: 767, column: 69, scope: !98)
!128 = !DILocation(line: 767, column: 60, scope: !98)
!129 = !DILocation(line: 767, column: 24, scope: !98)
!130 = !DILocation(line: 767, column: 9, scope: !98)
!131 = !DILocation(line: 767, column: 22, scope: !98)
!132 = !{!133}
!133 = distinct !{!133, !110}
!134 = distinct !{!134, !105, !135, !136, !137}
!135 = !DILocation(line: 768, column: 5, scope: !96)
!136 = !{!"llvm.loop.isvectorized", i32 1}
!137 = !{!"llvm.loop.unroll.runtime.disable"}
!138 = !{!139}
!139 = distinct !{!139, !140}
!140 = distinct !{!140, !"LVerDomain"}
!141 = !{!142}
!142 = distinct !{!142, !140}
!143 = !DILocation(line: 769, column: 1, scope: !68)
!144 = !DILocation(line: 0, scope: !116, inlinedAt: !123)
!145 = !DILocation(line: 0, scope: !98)
!146 = !DILocation(line: 764, column: 23, scope: !99)
!147 = distinct !{!147, !105, !135, !136}
!148 = distinct !DISubprogram(name: "x264_cabac_encode_init_core", scope: !3, file: !3, line: 771, type: !149, scopeLine: 772, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !151)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !71}
!151 = !{!152}
!152 = !DILocalVariable(name: "cb", arg: 1, scope: !148, file: !3, line: 771, type: !71)
!153 = !DILocation(line: 0, scope: !148)
!154 = !DILocation(line: 773, column: 17, scope: !148)
!155 = !DILocation(line: 777, column: 1, scope: !148)
!156 = distinct !DISubprogram(name: "x264_cabac_encode_init", scope: !3, file: !3, line: 779, type: !157, scopeLine: 780, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !159)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !71, !81, !81}
!159 = !{!160, !161, !162}
!160 = !DILocalVariable(name: "cb", arg: 1, scope: !156, file: !3, line: 779, type: !71)
!161 = !DILocalVariable(name: "p_data", arg: 2, scope: !156, file: !3, line: 779, type: !81)
!162 = !DILocalVariable(name: "p_end", arg: 3, scope: !156, file: !3, line: 779, type: !81)
!163 = !DILocation(line: 0, scope: !156)
!164 = !DILocation(line: 0, scope: !148, inlinedAt: !165)
!165 = distinct !DILocation(line: 781, column: 5, scope: !156)
!166 = !DILocation(line: 773, column: 17, scope: !148, inlinedAt: !165)
!167 = !DILocation(line: 782, column: 9, scope: !156)
!168 = !DILocation(line: 782, column: 17, scope: !156)
!169 = !DILocation(line: 783, column: 9, scope: !156)
!170 = !DILocation(line: 783, column: 17, scope: !156)
!171 = !DILocation(line: 784, column: 9, scope: !156)
!172 = !DILocation(line: 784, column: 17, scope: !156)
!173 = !DILocation(line: 785, column: 1, scope: !156)
!174 = distinct !DISubprogram(name: "x264_cabac_encode_decision_c", scope: !3, file: !3, line: 831, type: !175, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !177)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !71, !15, !15}
!177 = !{!178, !179, !180, !181, !182}
!178 = !DILocalVariable(name: "cb", arg: 1, scope: !174, file: !3, line: 831, type: !71)
!179 = !DILocalVariable(name: "i_ctx", arg: 2, scope: !174, file: !3, line: 831, type: !15)
!180 = !DILocalVariable(name: "b", arg: 3, scope: !174, file: !3, line: 831, type: !15)
!181 = !DILocalVariable(name: "i_state", scope: !174, file: !3, line: 833, type: !15)
!182 = !DILocalVariable(name: "i_range_lps", scope: !174, file: !3, line: 834, type: !15)
!183 = !DILocation(line: 0, scope: !174)
!184 = !DILocation(line: 833, column: 23, scope: !174)
!185 = !DILocation(line: 833, column: 19, scope: !174)
!186 = !DILocation(line: 834, column: 51, scope: !174)
!187 = !DILocation(line: 834, column: 23, scope: !174)
!188 = !DILocation(line: 834, column: 61, scope: !174)
!189 = !DILocation(line: 834, column: 68, scope: !174)
!190 = !DILocation(line: 834, column: 72, scope: !174)
!191 = !DILocation(line: 835, column: 17, scope: !174)
!192 = !DILocation(line: 836, column: 23, scope: !193)
!193 = distinct !DILexicalBlock(scope: !174, file: !3, line: 836, column: 9)
!194 = !DILocation(line: 836, column: 11, scope: !193)
!195 = !DILocation(line: 836, column: 9, scope: !174)
!196 = !DILocation(line: 838, column: 19, scope: !197)
!197 = distinct !DILexicalBlock(scope: !193, file: !3, line: 837, column: 5)
!198 = !DILocation(line: 839, column: 21, scope: !197)
!199 = !DILocation(line: 840, column: 5, scope: !197)
!200 = !DILocation(line: 841, column: 24, scope: !174)
!201 = !DILocation(line: 841, column: 22, scope: !174)
!202 = !DILocalVariable(name: "cb", arg: 1, scope: !203, file: !3, line: 819, type: !71)
!203 = distinct !DISubprogram(name: "x264_cabac_encode_renorm", scope: !3, file: !3, line: 819, type: !149, scopeLine: 820, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !204)
!204 = !{!202, !205}
!205 = !DILocalVariable(name: "shift", scope: !203, file: !3, line: 821, type: !15)
!206 = !DILocation(line: 0, scope: !203, inlinedAt: !207)
!207 = distinct !DILocation(line: 842, column: 5, scope: !174)
!208 = !DILocation(line: 821, column: 45, scope: !203, inlinedAt: !207)
!209 = !DILocation(line: 821, column: 52, scope: !203, inlinedAt: !207)
!210 = !DILocation(line: 821, column: 17, scope: !203, inlinedAt: !207)
!211 = !DILocation(line: 822, column: 17, scope: !203, inlinedAt: !207)
!212 = !DILocation(line: 823, column: 17, scope: !203, inlinedAt: !207)
!213 = !DILocation(line: 824, column: 9, scope: !203, inlinedAt: !207)
!214 = !DILocation(line: 824, column: 18, scope: !203, inlinedAt: !207)
!215 = !DILocalVariable(name: "cb", arg: 1, scope: !216, file: !3, line: 787, type: !71)
!216 = distinct !DISubprogram(name: "x264_cabac_putbyte", scope: !3, file: !3, line: 787, type: !149, scopeLine: 788, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !217)
!217 = !{!215, !218, !221, !224}
!218 = !DILocalVariable(name: "out", scope: !219, file: !3, line: 791, type: !15)
!219 = distinct !DILexicalBlock(scope: !220, file: !3, line: 790, column: 5)
!220 = distinct !DILexicalBlock(scope: !216, file: !3, line: 789, column: 9)
!221 = !DILocalVariable(name: "carry", scope: !222, file: !3, line: 799, type: !15)
!222 = distinct !DILexicalBlock(scope: !223, file: !3, line: 798, column: 9)
!223 = distinct !DILexicalBlock(scope: !219, file: !3, line: 795, column: 13)
!224 = !DILocalVariable(name: "bytes_outstanding", scope: !222, file: !3, line: 800, type: !15)
!225 = !DILocation(line: 0, scope: !216, inlinedAt: !226)
!226 = distinct !DILocation(line: 825, column: 5, scope: !203, inlinedAt: !207)
!227 = !DILocation(line: 789, column: 21, scope: !220, inlinedAt: !226)
!228 = !DILocation(line: 789, column: 9, scope: !216, inlinedAt: !226)
!229 = !DILocation(line: 791, column: 44, scope: !219, inlinedAt: !226)
!230 = !DILocation(line: 791, column: 29, scope: !219, inlinedAt: !226)
!231 = !DILocation(line: 0, scope: !219, inlinedAt: !226)
!232 = !DILocation(line: 792, column: 28, scope: !219, inlinedAt: !226)
!233 = !DILocation(line: 792, column: 42, scope: !219, inlinedAt: !226)
!234 = !DILocation(line: 792, column: 19, scope: !219, inlinedAt: !226)
!235 = !DILocation(line: 793, column: 21, scope: !219, inlinedAt: !226)
!236 = !DILocation(line: 795, column: 18, scope: !223, inlinedAt: !226)
!237 = !DILocation(line: 795, column: 26, scope: !223, inlinedAt: !226)
!238 = !DILocation(line: 795, column: 13, scope: !219, inlinedAt: !226)
!239 = !DILocation(line: 796, column: 17, scope: !223, inlinedAt: !226)
!240 = !DILocation(line: 796, column: 36, scope: !223, inlinedAt: !226)
!241 = !DILocation(line: 796, column: 13, scope: !223, inlinedAt: !226)
!242 = !DILocation(line: 799, column: 29, scope: !222, inlinedAt: !226)
!243 = !DILocation(line: 0, scope: !222, inlinedAt: !226)
!244 = !DILocation(line: 800, column: 41, scope: !222, inlinedAt: !226)
!245 = !DILocation(line: 807, column: 17, scope: !222, inlinedAt: !226)
!246 = !DILocation(line: 807, column: 13, scope: !222, inlinedAt: !226)
!247 = !DILocation(line: 807, column: 23, scope: !222, inlinedAt: !226)
!248 = !DILocation(line: 808, column: 38, scope: !222, inlinedAt: !226)
!249 = !DILocation(line: 808, column: 13, scope: !222, inlinedAt: !226)
!250 = !DILocation(line: 810, column: 24, scope: !251, inlinedAt: !226)
!251 = distinct !DILexicalBlock(scope: !222, file: !3, line: 809, column: 13)
!252 = !DILocation(line: 810, column: 28, scope: !251, inlinedAt: !226)
!253 = !DILocation(line: 811, column: 34, scope: !251, inlinedAt: !226)
!254 = distinct !{!254, !255}
!255 = !{!"llvm.loop.unroll.disable"}
!256 = distinct !{!256, !249, !257}
!257 = !DILocation(line: 812, column: 13, scope: !222, inlinedAt: !226)
!258 = !DILocation(line: 813, column: 26, scope: !222, inlinedAt: !226)
!259 = !DILocation(line: 813, column: 20, scope: !222, inlinedAt: !226)
!260 = !DILocation(line: 813, column: 24, scope: !222, inlinedAt: !226)
!261 = !DILocation(line: 814, column: 37, scope: !222, inlinedAt: !226)
!262 = !DILocation(line: 843, column: 1, scope: !174)
!263 = distinct !DISubprogram(name: "x264_cabac_encode_bypass_c", scope: !3, file: !3, line: 845, type: !264, scopeLine: 846, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !266)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !71, !15}
!266 = !{!267, !268}
!267 = !DILocalVariable(name: "cb", arg: 1, scope: !263, file: !3, line: 845, type: !71)
!268 = !DILocalVariable(name: "b", arg: 2, scope: !263, file: !3, line: 845, type: !15)
!269 = !DILocation(line: 0, scope: !263)
!270 = !DILocation(line: 847, column: 15, scope: !263)
!271 = !DILocation(line: 848, column: 18, scope: !263)
!272 = !DILocation(line: 848, column: 27, scope: !263)
!273 = !DILocation(line: 848, column: 21, scope: !263)
!274 = !DILocation(line: 848, column: 15, scope: !263)
!275 = !DILocation(line: 849, column: 9, scope: !263)
!276 = !DILocation(line: 849, column: 17, scope: !263)
!277 = !DILocation(line: 0, scope: !216, inlinedAt: !278)
!278 = distinct !DILocation(line: 850, column: 5, scope: !263)
!279 = !DILocation(line: 789, column: 21, scope: !220, inlinedAt: !278)
!280 = !DILocation(line: 789, column: 9, scope: !216, inlinedAt: !278)
!281 = !DILocation(line: 791, column: 44, scope: !219, inlinedAt: !278)
!282 = !DILocation(line: 791, column: 29, scope: !219, inlinedAt: !278)
!283 = !DILocation(line: 0, scope: !219, inlinedAt: !278)
!284 = !DILocation(line: 792, column: 28, scope: !219, inlinedAt: !278)
!285 = !DILocation(line: 792, column: 42, scope: !219, inlinedAt: !278)
!286 = !DILocation(line: 792, column: 19, scope: !219, inlinedAt: !278)
!287 = !DILocation(line: 793, column: 21, scope: !219, inlinedAt: !278)
!288 = !DILocation(line: 795, column: 18, scope: !223, inlinedAt: !278)
!289 = !DILocation(line: 795, column: 26, scope: !223, inlinedAt: !278)
!290 = !DILocation(line: 795, column: 13, scope: !219, inlinedAt: !278)
!291 = !DILocation(line: 796, column: 17, scope: !223, inlinedAt: !278)
!292 = !DILocation(line: 796, column: 36, scope: !223, inlinedAt: !278)
!293 = !DILocation(line: 796, column: 13, scope: !223, inlinedAt: !278)
!294 = !DILocation(line: 799, column: 29, scope: !222, inlinedAt: !278)
!295 = !DILocation(line: 0, scope: !222, inlinedAt: !278)
!296 = !DILocation(line: 800, column: 41, scope: !222, inlinedAt: !278)
!297 = !DILocation(line: 807, column: 17, scope: !222, inlinedAt: !278)
!298 = !DILocation(line: 807, column: 13, scope: !222, inlinedAt: !278)
!299 = !DILocation(line: 807, column: 23, scope: !222, inlinedAt: !278)
!300 = !DILocation(line: 808, column: 38, scope: !222, inlinedAt: !278)
!301 = !DILocation(line: 808, column: 13, scope: !222, inlinedAt: !278)
!302 = !DILocation(line: 810, column: 24, scope: !251, inlinedAt: !278)
!303 = !DILocation(line: 810, column: 28, scope: !251, inlinedAt: !278)
!304 = !DILocation(line: 811, column: 34, scope: !251, inlinedAt: !278)
!305 = distinct !{!305, !255}
!306 = distinct !{!306, !301, !307}
!307 = !DILocation(line: 812, column: 13, scope: !222, inlinedAt: !278)
!308 = !DILocation(line: 813, column: 26, scope: !222, inlinedAt: !278)
!309 = !DILocation(line: 813, column: 20, scope: !222, inlinedAt: !278)
!310 = !DILocation(line: 813, column: 24, scope: !222, inlinedAt: !278)
!311 = !DILocation(line: 814, column: 37, scope: !222, inlinedAt: !278)
!312 = !DILocation(line: 851, column: 1, scope: !263)
!313 = distinct !DISubprogram(name: "x264_cabac_encode_ue_bypass", scope: !3, file: !3, line: 853, type: !175, scopeLine: 854, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !314)
!314 = !{!315, !316, !317, !318, !319, !320}
!315 = !DILocalVariable(name: "cb", arg: 1, scope: !313, file: !3, line: 853, type: !71)
!316 = !DILocalVariable(name: "exp_bits", arg: 2, scope: !313, file: !3, line: 853, type: !15)
!317 = !DILocalVariable(name: "val", arg: 3, scope: !313, file: !3, line: 853, type: !15)
!318 = !DILocalVariable(name: "k", scope: !313, file: !3, line: 855, type: !15)
!319 = !DILocalVariable(name: "i", scope: !313, file: !3, line: 855, type: !15)
!320 = !DILocalVariable(name: "x", scope: !313, file: !3, line: 858, type: !321)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !22, line: 26, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !24, line: 42, baseType: !7)
!323 = !DILocation(line: 0, scope: !313)
!324 = !DILocation(line: 856, column: 33, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !3, line: 856, column: 5)
!326 = distinct !DILexicalBlock(scope: !313, file: !3, line: 856, column: 5)
!327 = !DILocation(line: 856, column: 28, scope: !325)
!328 = !DILocation(line: 856, column: 5, scope: !326)
!329 = !DILocation(line: 857, column: 13, scope: !325)
!330 = !DILocation(line: 856, column: 40, scope: !325)
!331 = distinct !{!331, !328, !332}
!332 = !DILocation(line: 857, column: 19, scope: !326)
!333 = !DILocation(line: 856, scope: !326)
!334 = !DILocation(line: 858, column: 26, scope: !313)
!335 = !DILocation(line: 858, column: 37, scope: !313)
!336 = !DILocation(line: 858, column: 44, scope: !313)
!337 = !DILocation(line: 858, column: 40, scope: !313)
!338 = !DILocation(line: 858, column: 48, scope: !313)
!339 = !DILocation(line: 859, column: 10, scope: !313)
!340 = !DILocation(line: 859, column: 14, scope: !313)
!341 = !DILocation(line: 860, column: 15, scope: !313)
!342 = !DILocation(line: 860, column: 18, scope: !313)
!343 = !DILocation(line: 861, column: 5, scope: !313)
!344 = !DILocation(line: 862, column: 11, scope: !345)
!345 = distinct !DILexicalBlock(scope: !313, file: !3, line: 861, column: 8)
!346 = !DILocation(line: 863, column: 19, scope: !345)
!347 = !DILocation(line: 864, column: 25, scope: !345)
!348 = !DILocation(line: 864, column: 29, scope: !345)
!349 = !DILocation(line: 864, column: 42, scope: !345)
!350 = !DILocation(line: 864, column: 36, scope: !345)
!351 = !DILocation(line: 864, column: 19, scope: !345)
!352 = !DILocation(line: 865, column: 21, scope: !345)
!353 = !DILocation(line: 0, scope: !216, inlinedAt: !354)
!354 = distinct !DILocation(line: 866, column: 9, scope: !345)
!355 = !DILocation(line: 789, column: 21, scope: !220, inlinedAt: !354)
!356 = !DILocation(line: 789, column: 9, scope: !216, inlinedAt: !354)
!357 = !DILocation(line: 791, column: 44, scope: !219, inlinedAt: !354)
!358 = !DILocation(line: 791, column: 29, scope: !219, inlinedAt: !354)
!359 = !DILocation(line: 0, scope: !219, inlinedAt: !354)
!360 = !DILocation(line: 792, column: 28, scope: !219, inlinedAt: !354)
!361 = !DILocation(line: 792, column: 42, scope: !219, inlinedAt: !354)
!362 = !DILocation(line: 792, column: 19, scope: !219, inlinedAt: !354)
!363 = !DILocation(line: 793, column: 21, scope: !219, inlinedAt: !354)
!364 = !DILocation(line: 795, column: 18, scope: !223, inlinedAt: !354)
!365 = !DILocation(line: 795, column: 26, scope: !223, inlinedAt: !354)
!366 = !DILocation(line: 795, column: 13, scope: !219, inlinedAt: !354)
!367 = !DILocation(line: 796, column: 36, scope: !223, inlinedAt: !354)
!368 = !DILocation(line: 796, column: 13, scope: !223, inlinedAt: !354)
!369 = !DILocation(line: 799, column: 29, scope: !222, inlinedAt: !354)
!370 = !DILocation(line: 0, scope: !222, inlinedAt: !354)
!371 = !DILocation(line: 800, column: 41, scope: !222, inlinedAt: !354)
!372 = !DILocation(line: 807, column: 17, scope: !222, inlinedAt: !354)
!373 = !DILocation(line: 807, column: 13, scope: !222, inlinedAt: !354)
!374 = !DILocation(line: 807, column: 23, scope: !222, inlinedAt: !354)
!375 = !DILocation(line: 808, column: 38, scope: !222, inlinedAt: !354)
!376 = !DILocation(line: 808, column: 13, scope: !222, inlinedAt: !354)
!377 = !DILocation(line: 810, column: 24, scope: !251, inlinedAt: !354)
!378 = !DILocation(line: 810, column: 28, scope: !251, inlinedAt: !354)
!379 = !DILocation(line: 811, column: 34, scope: !251, inlinedAt: !354)
!380 = distinct !{!380, !255}
!381 = distinct !{!381, !376, !382}
!382 = !DILocation(line: 812, column: 13, scope: !222, inlinedAt: !354)
!383 = !DILocation(line: 813, column: 26, scope: !222, inlinedAt: !354)
!384 = !DILocation(line: 813, column: 20, scope: !222, inlinedAt: !354)
!385 = !DILocation(line: 813, column: 24, scope: !222, inlinedAt: !354)
!386 = !DILocation(line: 0, scope: !223, inlinedAt: !354)
!387 = !DILocation(line: 868, column: 16, scope: !313)
!388 = !DILocation(line: 868, column: 5, scope: !345)
!389 = distinct !{!389, !343, !390}
!390 = !DILocation(line: 868, column: 20, scope: !313)
!391 = !DILocation(line: 869, column: 1, scope: !313)
!392 = distinct !DISubprogram(name: "x264_cabac_encode_terminal_c", scope: !3, file: !3, line: 871, type: !149, scopeLine: 872, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !393)
!393 = !{!394}
!394 = !DILocalVariable(name: "cb", arg: 1, scope: !392, file: !3, line: 871, type: !71)
!395 = !DILocation(line: 0, scope: !392)
!396 = !DILocation(line: 873, column: 9, scope: !392)
!397 = !DILocation(line: 873, column: 17, scope: !392)
!398 = !DILocation(line: 0, scope: !203, inlinedAt: !399)
!399 = distinct !DILocation(line: 874, column: 5, scope: !392)
!400 = !DILocation(line: 821, column: 52, scope: !203, inlinedAt: !399)
!401 = !DILocation(line: 821, column: 17, scope: !203, inlinedAt: !399)
!402 = !DILocation(line: 822, column: 17, scope: !203, inlinedAt: !399)
!403 = !DILocation(line: 823, column: 17, scope: !203, inlinedAt: !399)
!404 = !DILocation(line: 824, column: 9, scope: !203, inlinedAt: !399)
!405 = !DILocation(line: 824, column: 18, scope: !203, inlinedAt: !399)
!406 = !DILocation(line: 0, scope: !216, inlinedAt: !407)
!407 = distinct !DILocation(line: 825, column: 5, scope: !203, inlinedAt: !399)
!408 = !DILocation(line: 789, column: 21, scope: !220, inlinedAt: !407)
!409 = !DILocation(line: 789, column: 9, scope: !216, inlinedAt: !407)
!410 = !DILocation(line: 791, column: 44, scope: !219, inlinedAt: !407)
!411 = !DILocation(line: 791, column: 29, scope: !219, inlinedAt: !407)
!412 = !DILocation(line: 0, scope: !219, inlinedAt: !407)
!413 = !DILocation(line: 792, column: 28, scope: !219, inlinedAt: !407)
!414 = !DILocation(line: 792, column: 42, scope: !219, inlinedAt: !407)
!415 = !DILocation(line: 792, column: 19, scope: !219, inlinedAt: !407)
!416 = !DILocation(line: 793, column: 21, scope: !219, inlinedAt: !407)
!417 = !DILocation(line: 795, column: 18, scope: !223, inlinedAt: !407)
!418 = !DILocation(line: 795, column: 26, scope: !223, inlinedAt: !407)
!419 = !DILocation(line: 795, column: 13, scope: !219, inlinedAt: !407)
!420 = !DILocation(line: 796, column: 17, scope: !223, inlinedAt: !407)
!421 = !DILocation(line: 796, column: 36, scope: !223, inlinedAt: !407)
!422 = !DILocation(line: 796, column: 13, scope: !223, inlinedAt: !407)
!423 = !DILocation(line: 799, column: 29, scope: !222, inlinedAt: !407)
!424 = !DILocation(line: 0, scope: !222, inlinedAt: !407)
!425 = !DILocation(line: 800, column: 41, scope: !222, inlinedAt: !407)
!426 = !DILocation(line: 807, column: 17, scope: !222, inlinedAt: !407)
!427 = !DILocation(line: 807, column: 13, scope: !222, inlinedAt: !407)
!428 = !DILocation(line: 807, column: 23, scope: !222, inlinedAt: !407)
!429 = !DILocation(line: 808, column: 38, scope: !222, inlinedAt: !407)
!430 = !DILocation(line: 808, column: 13, scope: !222, inlinedAt: !407)
!431 = !DILocation(line: 810, column: 24, scope: !251, inlinedAt: !407)
!432 = !DILocation(line: 810, column: 28, scope: !251, inlinedAt: !407)
!433 = !DILocation(line: 811, column: 34, scope: !251, inlinedAt: !407)
!434 = distinct !{!434, !255}
!435 = distinct !{!435, !430, !436}
!436 = !DILocation(line: 812, column: 13, scope: !222, inlinedAt: !407)
!437 = !DILocation(line: 813, column: 26, scope: !222, inlinedAt: !407)
!438 = !DILocation(line: 813, column: 20, scope: !222, inlinedAt: !407)
!439 = !DILocation(line: 813, column: 24, scope: !222, inlinedAt: !407)
!440 = !DILocation(line: 814, column: 37, scope: !222, inlinedAt: !407)
!441 = !DILocation(line: 875, column: 1, scope: !392)
!442 = distinct !DISubprogram(name: "x264_cabac_encode_flush", scope: !3, file: !3, line: 877, type: !443, scopeLine: 878, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1721)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !445, !71}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !447, line: 46, baseType: !448)
!447 = !DIFile(filename: "x264_src/x264.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !6, line: 381, size: 266752, elements: !449)
!449 = !{!450, !617, !621, !622, !623, !624, !625, !626, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !761, !763, !790, !792, !793, !794, !799, !803, !804, !805, !809, !813, !814, !815, !820, !823, !824, !901, !902, !1063, !1064, !1065, !1066, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1091, !1285, !1289, !1350, !1353, !1355, !1357, !1358, !1361, !1366, !1375, !1376, !1384, !1386, !1391, !1467, !1553, !1597, !1619, !1668, !1697}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !448, file: !6, line: 384, baseType: !451, size: 5632)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !447, line: 376, baseType: !452)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !447, line: 176, size: 5632, elements: !453)
!453 = !{!454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !497, !501, !502, !503, !504, !506, !507, !521, !522, !523, !524, !525, !555, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !452, file: !447, line: 179, baseType: !7, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !452, file: !447, line: 180, baseType: !15, size: 32, offset: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !452, file: !447, line: 181, baseType: !15, size: 32, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !452, file: !447, line: 182, baseType: !15, size: 32, offset: 96)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !452, file: !447, line: 183, baseType: !15, size: 32, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !452, file: !447, line: 186, baseType: !15, size: 32, offset: 160)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !452, file: !447, line: 187, baseType: !15, size: 32, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !452, file: !447, line: 188, baseType: !15, size: 32, offset: 224)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !452, file: !447, line: 189, baseType: !15, size: 32, offset: 256)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !452, file: !447, line: 190, baseType: !15, size: 32, offset: 288)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !452, file: !447, line: 198, baseType: !15, size: 32, offset: 320)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !452, file: !447, line: 215, baseType: !466, size: 288, offset: 352)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !452, file: !447, line: 200, size: 288, elements: !467)
!467 = !{!468, !469, !470, !471, !472, !473, !474, !475, !476}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !466, file: !447, line: 203, baseType: !15, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !466, file: !447, line: 204, baseType: !15, size: 32, offset: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !466, file: !447, line: 206, baseType: !15, size: 32, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !466, file: !447, line: 209, baseType: !15, size: 32, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !466, file: !447, line: 210, baseType: !15, size: 32, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !466, file: !447, line: 211, baseType: !15, size: 32, offset: 160)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !466, file: !447, line: 212, baseType: !15, size: 32, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !466, file: !447, line: 213, baseType: !15, size: 32, offset: 224)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !466, file: !447, line: 214, baseType: !15, size: 32, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !452, file: !447, line: 218, baseType: !15, size: 32, offset: 640)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !452, file: !447, line: 219, baseType: !15, size: 32, offset: 672)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !452, file: !447, line: 220, baseType: !15, size: 32, offset: 704)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !452, file: !447, line: 221, baseType: !15, size: 32, offset: 736)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !452, file: !447, line: 222, baseType: !15, size: 32, offset: 768)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !452, file: !447, line: 224, baseType: !15, size: 32, offset: 800)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !452, file: !447, line: 225, baseType: !15, size: 32, offset: 832)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !452, file: !447, line: 226, baseType: !15, size: 32, offset: 864)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !452, file: !447, line: 227, baseType: !15, size: 32, offset: 896)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !452, file: !447, line: 229, baseType: !15, size: 32, offset: 928)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !452, file: !447, line: 230, baseType: !15, size: 32, offset: 960)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !452, file: !447, line: 231, baseType: !15, size: 32, offset: 992)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !452, file: !447, line: 233, baseType: !15, size: 32, offset: 1024)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !452, file: !447, line: 234, baseType: !15, size: 32, offset: 1056)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !452, file: !447, line: 236, baseType: !15, size: 32, offset: 1088)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !452, file: !447, line: 237, baseType: !15, size: 32, offset: 1120)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !452, file: !447, line: 239, baseType: !15, size: 32, offset: 1152)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !452, file: !447, line: 240, baseType: !495, size: 64, offset: 1216)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !452, file: !447, line: 241, baseType: !498, size: 128, offset: 1280)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 128, elements: !499)
!499 = !{!500}
!500 = !DISubrange(count: 16)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !452, file: !447, line: 242, baseType: !498, size: 128, offset: 1408)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !452, file: !447, line: 243, baseType: !498, size: 128, offset: 1536)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !452, file: !447, line: 244, baseType: !498, size: 128, offset: 1664)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !452, file: !447, line: 245, baseType: !505, size: 512, offset: 1792)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 512, elements: !32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !452, file: !447, line: 246, baseType: !505, size: 512, offset: 2304)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !452, file: !447, line: 249, baseType: !508, size: 64, offset: 2816)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !511, !15, !512, !514}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !516)
!516 = !{!517, !518, !519, !520}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !515, file: !3, line: 875, baseType: !7, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !515, file: !3, line: 875, baseType: !7, size: 32, offset: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !515, file: !3, line: 875, baseType: !511, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !515, file: !3, line: 875, baseType: !511, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !452, file: !447, line: 250, baseType: !511, size: 64, offset: 2880)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !452, file: !447, line: 251, baseType: !15, size: 32, offset: 2944)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !452, file: !447, line: 252, baseType: !15, size: 32, offset: 2976)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !452, file: !447, line: 253, baseType: !495, size: 64, offset: 3008)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !452, file: !447, line: 287, baseType: !526, size: 800, offset: 3072)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !452, file: !447, line: 256, size: 800, elements: !527)
!527 = !{!528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !548, !549, !550, !553, !554}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !526, file: !447, line: 258, baseType: !7, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !526, file: !447, line: 259, baseType: !7, size: 32, offset: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !526, file: !447, line: 261, baseType: !15, size: 32, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !526, file: !447, line: 262, baseType: !15, size: 32, offset: 96)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !526, file: !447, line: 263, baseType: !15, size: 32, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !526, file: !447, line: 264, baseType: !15, size: 32, offset: 160)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !526, file: !447, line: 265, baseType: !15, size: 32, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !526, file: !447, line: 267, baseType: !15, size: 32, offset: 224)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !526, file: !447, line: 268, baseType: !15, size: 32, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !526, file: !447, line: 269, baseType: !15, size: 32, offset: 288)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !526, file: !447, line: 270, baseType: !15, size: 32, offset: 320)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !526, file: !447, line: 271, baseType: !15, size: 32, offset: 352)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !526, file: !447, line: 272, baseType: !15, size: 32, offset: 384)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !526, file: !447, line: 273, baseType: !15, size: 32, offset: 416)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !526, file: !447, line: 274, baseType: !15, size: 32, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !526, file: !447, line: 275, baseType: !15, size: 32, offset: 480)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !526, file: !447, line: 276, baseType: !15, size: 32, offset: 512)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !526, file: !447, line: 277, baseType: !15, size: 32, offset: 544)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !526, file: !447, line: 278, baseType: !547, size: 32, offset: 576)
!547 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !526, file: !447, line: 279, baseType: !547, size: 32, offset: 608)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !526, file: !447, line: 280, baseType: !15, size: 32, offset: 640)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !526, file: !447, line: 283, baseType: !551, size: 64, offset: 672)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 64, elements: !552)
!552 = !{!28}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !526, file: !447, line: 285, baseType: !15, size: 32, offset: 736)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !526, file: !447, line: 286, baseType: !15, size: 32, offset: 768)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !452, file: !447, line: 327, baseType: !556, size: 1152, offset: 3904)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !452, file: !447, line: 290, size: 1152, elements: !557)
!557 = !{!558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !595, !596}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !556, file: !447, line: 292, baseType: !15, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !556, file: !447, line: 294, baseType: !15, size: 32, offset: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !556, file: !447, line: 295, baseType: !15, size: 32, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !556, file: !447, line: 296, baseType: !15, size: 32, offset: 96)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !556, file: !447, line: 297, baseType: !15, size: 32, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !556, file: !447, line: 299, baseType: !15, size: 32, offset: 160)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !556, file: !447, line: 300, baseType: !547, size: 32, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !556, file: !447, line: 301, baseType: !547, size: 32, offset: 224)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !556, file: !447, line: 302, baseType: !547, size: 32, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !556, file: !447, line: 303, baseType: !15, size: 32, offset: 288)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !556, file: !447, line: 304, baseType: !15, size: 32, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !556, file: !447, line: 305, baseType: !547, size: 32, offset: 352)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !556, file: !447, line: 306, baseType: !547, size: 32, offset: 384)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !556, file: !447, line: 307, baseType: !547, size: 32, offset: 416)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !556, file: !447, line: 309, baseType: !15, size: 32, offset: 448)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !556, file: !447, line: 310, baseType: !547, size: 32, offset: 480)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !556, file: !447, line: 311, baseType: !15, size: 32, offset: 512)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !556, file: !447, line: 312, baseType: !15, size: 32, offset: 544)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !556, file: !447, line: 315, baseType: !15, size: 32, offset: 576)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !556, file: !447, line: 316, baseType: !495, size: 64, offset: 640)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !556, file: !447, line: 317, baseType: !15, size: 32, offset: 704)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !556, file: !447, line: 318, baseType: !495, size: 64, offset: 768)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !556, file: !447, line: 321, baseType: !547, size: 32, offset: 832)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !556, file: !447, line: 322, baseType: !547, size: 32, offset: 864)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !556, file: !447, line: 323, baseType: !547, size: 32, offset: 896)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !556, file: !447, line: 324, baseType: !584, size: 64, offset: 960)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !447, line: 174, baseType: !586)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !447, line: 167, size: 256, elements: !587)
!587 = !{!588, !589, !590, !591, !592, !593}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !586, file: !447, line: 169, baseType: !15, size: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !586, file: !447, line: 169, baseType: !15, size: 32, offset: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !586, file: !447, line: 170, baseType: !15, size: 32, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !586, file: !447, line: 171, baseType: !15, size: 32, offset: 96)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !586, file: !447, line: 172, baseType: !547, size: 32, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !586, file: !447, line: 173, baseType: !594, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !556, file: !447, line: 325, baseType: !15, size: 32, offset: 1024)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !556, file: !447, line: 326, baseType: !495, size: 64, offset: 1088)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !452, file: !447, line: 330, baseType: !15, size: 32, offset: 5056)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !452, file: !447, line: 331, baseType: !15, size: 32, offset: 5088)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !452, file: !447, line: 332, baseType: !15, size: 32, offset: 5120)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !452, file: !447, line: 334, baseType: !15, size: 32, offset: 5152)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !452, file: !447, line: 335, baseType: !15, size: 32, offset: 5184)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !452, file: !447, line: 336, baseType: !321, size: 32, offset: 5216)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !452, file: !447, line: 337, baseType: !321, size: 32, offset: 5248)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !452, file: !447, line: 338, baseType: !321, size: 32, offset: 5280)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !452, file: !447, line: 339, baseType: !321, size: 32, offset: 5312)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !452, file: !447, line: 340, baseType: !15, size: 32, offset: 5344)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !452, file: !447, line: 344, baseType: !15, size: 32, offset: 5376)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !452, file: !447, line: 356, baseType: !15, size: 32, offset: 5408)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !452, file: !447, line: 364, baseType: !15, size: 32, offset: 5440)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !452, file: !447, line: 367, baseType: !15, size: 32, offset: 5472)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !452, file: !447, line: 368, baseType: !15, size: 32, offset: 5504)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !452, file: !447, line: 369, baseType: !15, size: 32, offset: 5536)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !452, file: !447, line: 375, baseType: !614, size: 64, offset: 5568)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !511}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !448, file: !6, line: 386, baseType: !618, size: 8256, offset: 5632)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 8256, elements: !619)
!619 = !{!620}
!620 = !DISubrange(count: 129)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !448, file: !6, line: 387, baseType: !15, size: 32, offset: 13888)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !448, file: !6, line: 388, baseType: !15, size: 32, offset: 13920)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !448, file: !6, line: 389, baseType: !15, size: 32, offset: 13952)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_start", scope: !448, file: !6, line: 390, baseType: !15, size: 32, offset: 13984)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_end", scope: !448, file: !6, line: 391, baseType: !15, size: 32, offset: 14016)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !448, file: !6, line: 402, baseType: !627, size: 576, offset: 14080)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !448, file: !6, line: 394, size: 576, elements: !628)
!628 = !{!629, !630, !631, !640, !641, !642}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !627, file: !6, line: 396, baseType: !15, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "i_nals_allocated", scope: !627, file: !6, line: 397, baseType: !15, size: 32, offset: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !627, file: !6, line: 398, baseType: !632, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !447, line: 604, baseType: !634)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !447, line: 593, size: 192, elements: !635)
!635 = !{!636, !637, !638, !639}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !634, file: !447, line: 595, baseType: !15, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !634, file: !447, line: 596, baseType: !15, size: 32, offset: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !634, file: !447, line: 599, baseType: !15, size: 32, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !634, file: !447, line: 603, baseType: !81, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !627, file: !6, line: 399, baseType: !15, size: 32, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !627, file: !6, line: 400, baseType: !81, size: 64, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !627, file: !6, line: 401, baseType: !643, size: 320, offset: 256)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !644, line: 56, baseType: !645)
!644 = !DIFile(filename: "x264_src/common/bs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5e3e135f4389fadb006d4bc4f2055a86")
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !644, line: 47, size: 320, elements: !646)
!646 = !{!647, !648, !649, !650, !654, !655}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !645, file: !644, line: 49, baseType: !81, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !645, file: !644, line: 50, baseType: !81, size: 64, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !645, file: !644, line: 51, baseType: !81, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !645, file: !644, line: 53, baseType: !651, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !652, line: 87, baseType: !653)
!652 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!653 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !645, file: !644, line: 54, baseType: !15, size: 32, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !645, file: !644, line: 55, baseType: !15, size: 32, offset: 288)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer", scope: !448, file: !6, line: 404, baseType: !81, size: 64, offset: 14656)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer_size", scope: !448, file: !6, line: 405, baseType: !15, size: 32, offset: 14720)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !448, file: !6, line: 410, baseType: !15, size: 32, offset: 14752)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !448, file: !6, line: 411, baseType: !15, size: 32, offset: 14784)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_frames", scope: !448, file: !6, line: 413, baseType: !15, size: 32, offset: 14816)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !448, file: !6, line: 415, baseType: !15, size: 32, offset: 14848)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !448, file: !6, line: 416, baseType: !15, size: 32, offset: 14880)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields", scope: !448, file: !6, line: 418, baseType: !15, size: 32, offset: 14912)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields_last_frame", scope: !448, file: !6, line: 419, baseType: !15, size: 32, offset: 14944)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_duration", scope: !448, file: !6, line: 420, baseType: !15, size: 32, offset: 14976)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields", scope: !448, file: !6, line: 421, baseType: !15, size: 32, offset: 15008)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !448, file: !6, line: 422, baseType: !15, size: 32, offset: 15040)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !448, file: !6, line: 424, baseType: !15, size: 32, offset: 15072)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !448, file: !6, line: 425, baseType: !15, size: 32, offset: 15104)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "b_queued_intra_refresh", scope: !448, file: !6, line: 427, baseType: !15, size: 32, offset: 15136)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !448, file: !6, line: 430, baseType: !672, size: 10400, offset: 15168)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 10400, elements: !759)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !674, line: 154, baseType: !675)
!674 = !DIFile(filename: "x264_src/common/set.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "36bc2db0356ac829288e85d371259e00")
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !674, line: 52, size: 10400, elements: !676)
!676 = !{!677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !694, !695, !696, !697, !698, !699, !700, !701, !702, !709, !710, !758}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !675, file: !674, line: 54, baseType: !15, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !675, file: !674, line: 56, baseType: !15, size: 32, offset: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !675, file: !674, line: 57, baseType: !15, size: 32, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !675, file: !674, line: 59, baseType: !15, size: 32, offset: 96)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !675, file: !674, line: 60, baseType: !15, size: 32, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !675, file: !674, line: 61, baseType: !15, size: 32, offset: 160)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !675, file: !674, line: 63, baseType: !15, size: 32, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !675, file: !674, line: 65, baseType: !15, size: 32, offset: 224)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !675, file: !674, line: 67, baseType: !15, size: 32, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !675, file: !674, line: 69, baseType: !15, size: 32, offset: 288)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !675, file: !674, line: 70, baseType: !15, size: 32, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !675, file: !674, line: 71, baseType: !15, size: 32, offset: 352)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !675, file: !674, line: 72, baseType: !15, size: 32, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !675, file: !674, line: 73, baseType: !691, size: 8192, offset: 416)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8192, elements: !692)
!692 = !{!693}
!693 = !DISubrange(count: 256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !675, file: !674, line: 75, baseType: !15, size: 32, offset: 8608)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !675, file: !674, line: 76, baseType: !15, size: 32, offset: 8640)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !675, file: !674, line: 77, baseType: !15, size: 32, offset: 8672)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !675, file: !674, line: 78, baseType: !15, size: 32, offset: 8704)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !675, file: !674, line: 79, baseType: !15, size: 32, offset: 8736)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !675, file: !674, line: 80, baseType: !15, size: 32, offset: 8768)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !675, file: !674, line: 81, baseType: !15, size: 32, offset: 8800)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !675, file: !674, line: 83, baseType: !15, size: 32, offset: 8832)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !675, file: !674, line: 90, baseType: !703, size: 128, offset: 8864)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !675, file: !674, line: 84, size: 128, elements: !704)
!704 = !{!705, !706, !707, !708}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !703, file: !674, line: 86, baseType: !15, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !703, file: !674, line: 87, baseType: !15, size: 32, offset: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !703, file: !674, line: 88, baseType: !15, size: 32, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !703, file: !674, line: 89, baseType: !15, size: 32, offset: 96)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !675, file: !674, line: 92, baseType: !15, size: 32, offset: 8992)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !675, file: !674, line: 150, baseType: !711, size: 1344, offset: 9024)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !675, file: !674, line: 93, size: 1344, elements: !712)
!712 = !{!713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !749, !750, !751, !752, !753, !754, !755, !756, !757}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !711, file: !674, line: 95, baseType: !15, size: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !711, file: !674, line: 96, baseType: !15, size: 32, offset: 32)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !711, file: !674, line: 97, baseType: !15, size: 32, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !711, file: !674, line: 99, baseType: !15, size: 32, offset: 96)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !711, file: !674, line: 100, baseType: !15, size: 32, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !711, file: !674, line: 102, baseType: !15, size: 32, offset: 160)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !711, file: !674, line: 103, baseType: !15, size: 32, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !711, file: !674, line: 104, baseType: !15, size: 32, offset: 224)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !711, file: !674, line: 105, baseType: !15, size: 32, offset: 256)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !711, file: !674, line: 106, baseType: !15, size: 32, offset: 288)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !711, file: !674, line: 107, baseType: !15, size: 32, offset: 320)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !711, file: !674, line: 108, baseType: !15, size: 32, offset: 352)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !711, file: !674, line: 110, baseType: !15, size: 32, offset: 384)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !711, file: !674, line: 111, baseType: !15, size: 32, offset: 416)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !711, file: !674, line: 112, baseType: !15, size: 32, offset: 448)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !711, file: !674, line: 114, baseType: !15, size: 32, offset: 480)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !711, file: !674, line: 115, baseType: !321, size: 32, offset: 512)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !711, file: !674, line: 116, baseType: !321, size: 32, offset: 544)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !711, file: !674, line: 117, baseType: !15, size: 32, offset: 576)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "b_nal_hrd_parameters_present", scope: !711, file: !674, line: 119, baseType: !15, size: 32, offset: 608)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "b_vcl_hrd_parameters_present", scope: !711, file: !674, line: 120, baseType: !15, size: 32, offset: 640)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "hrd", scope: !711, file: !674, line: 137, baseType: !735, size: 384, offset: 672)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !711, file: !674, line: 122, size: 384, elements: !736)
!736 = !{!737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_cnt", scope: !735, file: !674, line: 124, baseType: !15, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_scale", scope: !735, file: !674, line: 125, baseType: !15, size: 32, offset: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_scale", scope: !735, file: !674, line: 126, baseType: !15, size: 32, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_value", scope: !735, file: !674, line: 127, baseType: !15, size: 32, offset: 96)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_value", scope: !735, file: !674, line: 128, baseType: !15, size: 32, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_unscaled", scope: !735, file: !674, line: 129, baseType: !15, size: 32, offset: 160)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_unscaled", scope: !735, file: !674, line: 130, baseType: !15, size: 32, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "b_cbr_hrd", scope: !735, file: !674, line: 131, baseType: !15, size: 32, offset: 224)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "i_initial_cpb_removal_delay_length", scope: !735, file: !674, line: 133, baseType: !15, size: 32, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_removal_delay_length", scope: !735, file: !674, line: 134, baseType: !15, size: 32, offset: 288)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay_length", scope: !735, file: !674, line: 135, baseType: !15, size: 32, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_offset_length", scope: !735, file: !674, line: 136, baseType: !15, size: 32, offset: 352)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct_present", scope: !711, file: !674, line: 139, baseType: !15, size: 32, offset: 1056)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !711, file: !674, line: 140, baseType: !15, size: 32, offset: 1088)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !711, file: !674, line: 141, baseType: !15, size: 32, offset: 1120)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !711, file: !674, line: 142, baseType: !15, size: 32, offset: 1152)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !711, file: !674, line: 143, baseType: !15, size: 32, offset: 1184)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !711, file: !674, line: 144, baseType: !15, size: 32, offset: 1216)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !711, file: !674, line: 145, baseType: !15, size: 32, offset: 1248)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !711, file: !674, line: 146, baseType: !15, size: 32, offset: 1280)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !711, file: !674, line: 147, baseType: !15, size: 32, offset: 1312)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !675, file: !674, line: 152, baseType: !15, size: 32, offset: 10368)
!759 = !{!760}
!760 = !DISubrange(count: 1)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !448, file: !6, line: 431, baseType: !762, size: 64, offset: 25600)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !448, file: !6, line: 432, baseType: !764, size: 960, offset: 25664)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !765, size: 960, elements: !759)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !674, line: 186, baseType: !766)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !674, line: 156, size: 960, elements: !767)
!767 = !{!768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !766, file: !674, line: 158, baseType: !15, size: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !766, file: !674, line: 159, baseType: !15, size: 32, offset: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !766, file: !674, line: 161, baseType: !15, size: 32, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !766, file: !674, line: 163, baseType: !15, size: 32, offset: 96)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !766, file: !674, line: 164, baseType: !15, size: 32, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_default_active", scope: !766, file: !674, line: 166, baseType: !15, size: 32, offset: 160)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_default_active", scope: !766, file: !674, line: 167, baseType: !15, size: 32, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !766, file: !674, line: 169, baseType: !15, size: 32, offset: 224)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !766, file: !674, line: 170, baseType: !15, size: 32, offset: 256)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !766, file: !674, line: 172, baseType: !15, size: 32, offset: 288)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !766, file: !674, line: 173, baseType: !15, size: 32, offset: 320)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !766, file: !674, line: 175, baseType: !15, size: 32, offset: 352)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !766, file: !674, line: 177, baseType: !15, size: 32, offset: 384)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !766, file: !674, line: 178, baseType: !15, size: 32, offset: 416)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !766, file: !674, line: 179, baseType: !15, size: 32, offset: 448)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !766, file: !674, line: 181, baseType: !15, size: 32, offset: 480)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !766, file: !674, line: 183, baseType: !15, size: 32, offset: 512)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !766, file: !674, line: 184, baseType: !786, size: 384, offset: 576)
!786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, size: 384, elements: !788)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!788 = !{!789}
!789 = !DISubrange(count: 6)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !448, file: !6, line: 433, baseType: !791, size: 64, offset: 26624)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !448, file: !6, line: 434, baseType: !15, size: 32, offset: 26688)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts_compress_multiplier", scope: !448, file: !6, line: 437, baseType: !15, size: 32, offset: 26720)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !448, file: !6, line: 440, baseType: !795, size: 256, offset: 26752)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !796, size: 256, elements: !798)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 512, elements: !499)
!798 = !{!59}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !448, file: !6, line: 441, baseType: !800, size: 128, offset: 27008)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !801, size: 128, elements: !552)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 2048, elements: !32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !448, file: !6, line: 443, baseType: !795, size: 256, offset: 27136)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !448, file: !6, line: 444, baseType: !800, size: 128, offset: 27392)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !448, file: !6, line: 446, baseType: !806, size: 256, offset: 27520)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !807, size: 256, elements: !798)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 256, elements: !499)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !448, file: !6, line: 447, baseType: !810, size: 128, offset: 27776)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !811, size: 128, elements: !552)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 1024, elements: !32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !448, file: !6, line: 448, baseType: !806, size: 256, offset: 27904)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !448, file: !6, line: 449, baseType: !810, size: 128, offset: 28160)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv", scope: !448, file: !6, line: 454, baseType: !816, size: 5888, offset: 28288)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !817, size: 5888, elements: !818)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!818 = !{!819}
!819 = !DISubrange(count: 92)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv_fpel", scope: !448, file: !6, line: 455, baseType: !821, size: 23552, offset: 34176)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !817, size: 23552, elements: !822)
!822 = !{!819, !59}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !448, file: !6, line: 457, baseType: !787, size: 64, offset: 57728)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !448, file: !6, line: 460, baseType: !825, size: 53376, offset: 57856)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !6, line: 364, baseType: !826)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 302, size: 53376, elements: !827)
!827 = !{!828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !856, !885, !886, !887, !893, !894, !895, !896, !897, !898, !899, !900}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !826, file: !6, line: 304, baseType: !762, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !826, file: !6, line: 305, baseType: !791, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !826, file: !6, line: 307, baseType: !15, size: 32, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !826, file: !6, line: 308, baseType: !15, size: 32, offset: 160)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !826, file: !6, line: 309, baseType: !15, size: 32, offset: 192)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !826, file: !6, line: 311, baseType: !15, size: 32, offset: 224)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !826, file: !6, line: 313, baseType: !15, size: 32, offset: 256)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !826, file: !6, line: 315, baseType: !15, size: 32, offset: 288)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !826, file: !6, line: 316, baseType: !15, size: 32, offset: 320)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !826, file: !6, line: 317, baseType: !15, size: 32, offset: 352)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !826, file: !6, line: 319, baseType: !15, size: 32, offset: 384)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !826, file: !6, line: 321, baseType: !15, size: 32, offset: 416)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !826, file: !6, line: 322, baseType: !15, size: 32, offset: 448)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !826, file: !6, line: 324, baseType: !551, size: 64, offset: 480)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !826, file: !6, line: 325, baseType: !15, size: 32, offset: 544)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !826, file: !6, line: 327, baseType: !15, size: 32, offset: 576)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !826, file: !6, line: 329, baseType: !15, size: 32, offset: 608)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !826, file: !6, line: 330, baseType: !15, size: 32, offset: 640)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !826, file: !6, line: 331, baseType: !15, size: 32, offset: 672)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !826, file: !6, line: 333, baseType: !15, size: 32, offset: 704)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !826, file: !6, line: 334, baseType: !15, size: 32, offset: 736)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !826, file: !6, line: 339, baseType: !850, size: 2048, offset: 768)
!850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !851, size: 2048, elements: !855)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !826, file: !6, line: 335, size: 64, elements: !852)
!852 = !{!853, !854}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !851, file: !6, line: 337, baseType: !15, size: 32)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !851, file: !6, line: 338, baseType: !15, size: 32, offset: 32)
!855 = !{!28, !500}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !826, file: !6, line: 342, baseType: !857, size: 49152, align: 128, offset: 2816)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !858, size: 49152, align: 128, elements: !883)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_weight_t", file: !859, line: 36, baseType: !860, align: 128)
!859 = !DIFile(filename: "x264_src/common/mc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "04d0fbb98b637fe4174e4cc20d723861")
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_weight_t", file: !859, line: 26, size: 512, elements: !861)
!861 = !{!862, !869, !870, !873, !874, !875}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "cachea", scope: !860, file: !859, line: 30, baseType: !863, size: 128, align: 128)
!863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 128, elements: !867)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !47, line: 25, baseType: !865)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !24, line: 39, baseType: !866)
!866 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!867 = !{!868}
!868 = !DISubrange(count: 8)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "cacheb", scope: !860, file: !859, line: 31, baseType: !863, size: 128, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "i_denom", scope: !860, file: !859, line: 32, baseType: !871, size: 32, offset: 256)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !47, line: 26, baseType: !872)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !24, line: 41, baseType: !15)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "i_scale", scope: !860, file: !859, line: 33, baseType: !871, size: 32, offset: 288)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset", scope: !860, file: !859, line: 34, baseType: !871, size: 32, offset: 320)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "weightfn", scope: !860, file: !859, line: 35, baseType: !876, size: 64, offset: 384)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "weight_fn_t", file: !859, line: 25, baseType: !878)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{null, !81, !15, !81, !15, !881, !15}
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !860)
!883 = !{!884, !56}
!884 = !DISubrange(count: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_remove_from_end", scope: !826, file: !6, line: 344, baseType: !15, size: 32, offset: 51968)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_command_count", scope: !826, file: !6, line: 345, baseType: !15, size: 32, offset: 52000)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "mmco", scope: !826, file: !6, line: 350, baseType: !888, size: 1024, offset: 52032)
!888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !889, size: 1024, elements: !499)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !826, file: !6, line: 346, size: 64, elements: !890)
!890 = !{!891, !892}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "i_difference_of_pic_nums", scope: !889, file: !6, line: 348, baseType: !15, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !889, file: !6, line: 349, baseType: !15, size: 32, offset: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !826, file: !6, line: 352, baseType: !15, size: 32, offset: 53056)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !826, file: !6, line: 354, baseType: !15, size: 32, offset: 53088)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !826, file: !6, line: 355, baseType: !15, size: 32, offset: 53120)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !826, file: !6, line: 356, baseType: !15, size: 32, offset: 53152)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !826, file: !6, line: 357, baseType: !15, size: 32, offset: 53184)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !826, file: !6, line: 360, baseType: !15, size: 32, offset: 53216)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !826, file: !6, line: 361, baseType: !15, size: 32, offset: 53248)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !826, file: !6, line: 362, baseType: !15, size: 32, offset: 53280)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !448, file: !6, line: 463, baseType: !72, size: 4096, offset: 111232)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !448, file: !6, line: 494, baseType: !903, size: 2112, offset: 115328)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !448, file: !6, line: 465, size: 2112, elements: !904)
!904 = !{!905, !1043, !1045, !1046, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1059, !1060, !1061, !1062}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !903, file: !6, line: 468, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !909, line: 146, baseType: !910)
!909 = !DIFile(filename: "x264_src/common/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "4a274a9291201f03b4af1f57e6a86f6f")
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_frame", file: !909, line: 31, size: 125056, elements: !911)
!911 = !{!912, !913, !914, !915, !918, !919, !920, !921, !922, !923, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !942, !943, !944, !945, !946, !947, !949, !951, !952, !953, !954, !955, !958, !960, !961, !963, !965, !966, !970, !971, !975, !979, !982, !984, !985, !987, !988, !990, !991, !992, !995, !997, !998, !999, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1010, !1011, !1015, !1024, !1028, !1030, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !910, file: !909, line: 34, baseType: !15, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !910, file: !909, line: 35, baseType: !15, size: 32, offset: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !910, file: !909, line: 36, baseType: !15, size: 32, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !910, file: !909, line: 37, baseType: !916, size: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !47, line: 27, baseType: !917)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !24, line: 44, baseType: !653)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts", scope: !910, file: !909, line: 38, baseType: !916, size: 64, offset: 192)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "i_duration", scope: !910, file: !909, line: 39, baseType: !15, size: 32, offset: 256)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_duration", scope: !910, file: !909, line: 40, baseType: !15, size: 32, offset: 288)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !910, file: !909, line: 41, baseType: !15, size: 32, offset: 320)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay", scope: !910, file: !909, line: 42, baseType: !15, size: 32, offset: 352)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !910, file: !909, line: 43, baseType: !924, size: 64, offset: 384)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !910, file: !909, line: 45, baseType: !15, size: 32, offset: 448)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded", scope: !910, file: !909, line: 46, baseType: !15, size: 32, offset: 480)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "i_field_cnt", scope: !910, file: !909, line: 47, baseType: !15, size: 32, offset: 512)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !910, file: !909, line: 48, baseType: !15, size: 32, offset: 544)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !910, file: !909, line: 49, baseType: !15, size: 32, offset: 576)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !910, file: !909, line: 50, baseType: !15, size: 32, offset: 608)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !910, file: !909, line: 51, baseType: !15, size: 32, offset: 640)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "b_fdec", scope: !910, file: !909, line: 52, baseType: !21, size: 8, offset: 672)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "b_last_minigop_bframe", scope: !910, file: !909, line: 53, baseType: !21, size: 8, offset: 680)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframes", scope: !910, file: !909, line: 54, baseType: !21, size: 8, offset: 688)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !910, file: !909, line: 55, baseType: !547, size: 32, offset: 704)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !910, file: !909, line: 56, baseType: !547, size: 32, offset: 736)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_l0ref0", scope: !910, file: !909, line: 57, baseType: !15, size: 32, offset: 768)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !910, file: !909, line: 60, baseType: !15, size: 32, offset: 800)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !910, file: !909, line: 61, baseType: !940, size: 96, offset: 832)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 96, elements: !941)
!941 = !{!56}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !910, file: !909, line: 62, baseType: !940, size: 96, offset: 928)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !910, file: !909, line: 63, baseType: !940, size: 96, offset: 1024)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !910, file: !909, line: 64, baseType: !15, size: 32, offset: 1120)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !910, file: !909, line: 65, baseType: !15, size: 32, offset: 1152)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !910, file: !909, line: 66, baseType: !15, size: 32, offset: 1184)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !910, file: !909, line: 67, baseType: !948, size: 192, offset: 1216)
!948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 192, elements: !941)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !910, file: !909, line: 68, baseType: !950, size: 256, offset: 1408)
!950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 256, elements: !798)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !910, file: !909, line: 69, baseType: !950, size: 256, offset: 1664)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !910, file: !909, line: 70, baseType: !817, size: 64, offset: 1920)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !910, file: !909, line: 74, baseType: !950, size: 256, offset: 1984)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !910, file: !909, line: 75, baseType: !950, size: 256, offset: 2240)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !910, file: !909, line: 77, baseType: !956, size: 24576, align: 128, offset: 2560)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !858, size: 24576, align: 128, elements: !957)
!957 = !{!500, !56}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "weighted", scope: !910, file: !909, line: 78, baseType: !959, size: 1024, offset: 27136)
!959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 1024, elements: !499)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "b_duplicate", scope: !910, file: !909, line: 79, baseType: !15, size: 32, offset: 28160)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !910, file: !909, line: 80, baseType: !962, size: 64, offset: 28224)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !910, file: !909, line: 83, baseType: !964, size: 64, offset: 28288)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "mb_partition", scope: !910, file: !909, line: 84, baseType: !81, size: 64, offset: 28352)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !910, file: !909, line: 85, baseType: !967, size: 128, offset: 28416)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !968, size: 128, elements: !552)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 32, elements: !552)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "mv16x16", scope: !910, file: !909, line: 86, baseType: !968, size: 64, offset: 28544)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !910, file: !909, line: 87, baseType: !972, size: 2176, offset: 28608)
!972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !968, size: 2176, elements: !973)
!973 = !{!28, !974}
!974 = !DISubrange(count: 17)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_costs", scope: !910, file: !909, line: 92, baseType: !976, size: 20736, offset: 30784)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !817, size: 20736, elements: !977)
!977 = !{!978, !978}
!978 = !DISubrange(count: 18)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !910, file: !909, line: 96, baseType: !980, size: 2176, offset: 51520)
!980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !981, size: 2176, elements: !973)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !910, file: !909, line: 97, baseType: !983, size: 128, offset: 53696)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !964, size: 128, elements: !552)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !910, file: !909, line: 98, baseType: !551, size: 64, offset: 53824)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !910, file: !909, line: 99, baseType: !986, size: 1024, offset: 53888)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 1024, elements: !855)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !910, file: !909, line: 100, baseType: !969, size: 32, offset: 54912)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !910, file: !909, line: 105, baseType: !989, size: 10368, offset: 54944)
!989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 10368, elements: !977)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !910, file: !909, line: 106, baseType: !989, size: 10368, offset: 65312)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !910, file: !909, line: 107, baseType: !15, size: 32, offset: 75680)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !910, file: !909, line: 108, baseType: !993, size: 576, offset: 75712)
!993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 576, elements: !994)
!994 = !{!978}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !910, file: !909, line: 109, baseType: !996, size: 20736, offset: 76288)
!996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !981, size: 20736, elements: !977)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !910, file: !909, line: 110, baseType: !981, size: 64, offset: 97024)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !910, file: !909, line: 111, baseType: !981, size: 64, offset: 97088)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "f_row_qp", scope: !910, file: !909, line: 112, baseType: !1000, size: 64, offset: 97152)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !910, file: !909, line: 113, baseType: !1000, size: 64, offset: 97216)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset_aq", scope: !910, file: !909, line: 114, baseType: !1000, size: 64, offset: 97280)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !910, file: !909, line: 115, baseType: !15, size: 32, offset: 97344)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !910, file: !909, line: 116, baseType: !817, size: 64, offset: 97408)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "i_propagate_cost", scope: !910, file: !909, line: 117, baseType: !817, size: 64, offset: 97472)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !910, file: !909, line: 118, baseType: !817, size: 64, offset: 97536)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "b_scenecut", scope: !910, file: !909, line: 119, baseType: !15, size: 32, offset: 97600)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "f_weighted_cost_delta", scope: !910, file: !909, line: 120, baseType: !1009, size: 576, offset: 97632)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 576, elements: !994)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_sum", scope: !910, file: !909, line: 121, baseType: !321, size: 32, offset: 98208)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_ssd", scope: !910, file: !909, line: 122, baseType: !1012, size: 64, offset: 98240)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !22, line: 27, baseType: !1013)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !24, line: 45, baseType: !1014)
!1014 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !910, file: !909, line: 125, baseType: !1016, size: 256, offset: 98304)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !447, line: 503, baseType: !1017)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !447, line: 496, size: 256, elements: !1018)
!1018 = !{!1019, !1021, !1022, !1023}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !1017, file: !447, line: 498, baseType: !1020, size: 64)
!1020 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !1017, file: !447, line: 499, baseType: !1020, size: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !1017, file: !447, line: 500, baseType: !1020, size: 64, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !1017, file: !447, line: 502, baseType: !1020, size: 64, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_type", scope: !910, file: !909, line: 128, baseType: !1025, size: 2008, offset: 98560)
!1025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 2008, elements: !1026)
!1026 = !{!1027}
!1027 = !DISubrange(count: 251)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_satd", scope: !910, file: !909, line: 129, baseType: !1029, size: 8032, offset: 100576)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8032, elements: !1026)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "f_planned_cpb_duration", scope: !910, file: !909, line: 130, baseType: !1031, size: 16064, offset: 108608)
!1031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1020, size: 16064, elements: !1026)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !910, file: !909, line: 131, baseType: !15, size: 32, offset: 124672)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !910, file: !909, line: 132, baseType: !15, size: 32, offset: 124704)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !910, file: !909, line: 135, baseType: !15, size: 32, offset: 124736)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_weighted", scope: !910, file: !909, line: 136, baseType: !15, size: 32, offset: 124768)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !910, file: !909, line: 137, baseType: !15, size: 32, offset: 124800)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !910, file: !909, line: 138, baseType: !15, size: 32, offset: 124832)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !910, file: !909, line: 139, baseType: !15, size: 32, offset: 124864)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "f_pir_position", scope: !910, file: !909, line: 142, baseType: !547, size: 32, offset: 124896)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_start_col", scope: !910, file: !909, line: 143, baseType: !15, size: 32, offset: 124928)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_end_col", scope: !910, file: !909, line: 144, baseType: !15, size: 32, offset: 124960)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "i_frames_since_pir", scope: !910, file: !909, line: 145, baseType: !15, size: 32, offset: 124992)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !903, file: !6, line: 470, baseType: !1044, size: 128, offset: 64)
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !906, size: 128, elements: !552)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "blank_unused", scope: !903, file: !6, line: 473, baseType: !906, size: 64, offset: 192)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !903, file: !6, line: 476, baseType: !1047, size: 1152, offset: 256)
!1047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !907, size: 1152, elements: !994)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !903, file: !6, line: 478, baseType: !15, size: 32, offset: 1408)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !903, file: !6, line: 480, baseType: !15, size: 32, offset: 1440)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !903, file: !6, line: 482, baseType: !15, size: 32, offset: 1472)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !903, file: !6, line: 483, baseType: !15, size: 32, offset: 1504)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !903, file: !6, line: 484, baseType: !15, size: 32, offset: 1536)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !903, file: !6, line: 485, baseType: !15, size: 32, offset: 1568)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay", scope: !903, file: !6, line: 486, baseType: !15, size: 32, offset: 1600)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay_time", scope: !903, file: !6, line: 487, baseType: !916, size: 64, offset: 1664)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "i_init_delta", scope: !903, file: !6, line: 488, baseType: !916, size: 64, offset: 1728)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_reordered_pts", scope: !903, file: !6, line: 489, baseType: !1058, size: 128, offset: 1792)
!1058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !916, size: 128, elements: !552)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "i_largest_pts", scope: !903, file: !6, line: 490, baseType: !916, size: 64, offset: 1920)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "i_second_largest_pts", scope: !903, file: !6, line: 491, baseType: !916, size: 64, offset: 1984)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !903, file: !6, line: 492, baseType: !15, size: 32, offset: 2048)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_sub8x8_esa", scope: !903, file: !6, line: 493, baseType: !15, size: 32, offset: 2080)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !448, file: !6, line: 497, baseType: !907, size: 64, offset: 117440)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !448, file: !6, line: 500, baseType: !907, size: 64, offset: 117504)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !448, file: !6, line: 503, baseType: !15, size: 32, offset: 117568)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !448, file: !6, line: 504, baseType: !1067, size: 1216, offset: 117632)
!1067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !907, size: 1216, elements: !1068)
!1068 = !{!1069}
!1069 = !DISubrange(count: 19)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !448, file: !6, line: 505, baseType: !15, size: 32, offset: 118848)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !448, file: !6, line: 506, baseType: !1067, size: 1216, offset: 118912)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !448, file: !6, line: 507, baseType: !551, size: 64, offset: 120128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay", scope: !448, file: !6, line: 510, baseType: !15, size: 32, offset: 120192)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_offset", scope: !448, file: !6, line: 511, baseType: !15, size: 32, offset: 120224)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts_delay", scope: !448, file: !6, line: 512, baseType: !916, size: 64, offset: 120256)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !448, file: !6, line: 522, baseType: !1077, size: 10624, offset: 120320)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !448, file: !6, line: 515, size: 10624, elements: !1078)
!1078 = !{!1079, !1081, !1084, !1087}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !1077, file: !6, line: 517, baseType: !1080, size: 256, align: 128)
!1080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 256, elements: !499)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !1077, file: !6, line: 518, baseType: !1082, size: 128, align: 128, offset: 256)
!1082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 128, elements: !1083)
!1083 = !{!28, !59}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !1077, file: !6, line: 520, baseType: !1085, size: 4096, align: 128, offset: 384)
!1085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 4096, elements: !1086)
!1086 = !{!59, !33}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !1077, file: !6, line: 521, baseType: !1088, size: 6144, align: 128, offset: 4480)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 6144, elements: !1089)
!1089 = !{!1090, !500}
!1090 = !DISubrange(count: 24)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !448, file: !6, line: 732, baseType: !1092, size: 82688, offset: 130944)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !448, file: !6, line: 525, size: 82688, elements: !1093)
!1093 = !{!1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1121, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1139, !1142, !1146, !1147, !1148, !1153, !1154, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1223, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1265, !1266, !1267, !1270, !1273, !1275, !1278, !1280, !1281}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !1092, file: !6, line: 527, baseType: !15, size: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !1092, file: !6, line: 530, baseType: !15, size: 32, offset: 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !1092, file: !6, line: 531, baseType: !15, size: 32, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !1092, file: !6, line: 532, baseType: !15, size: 32, offset: 96)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !1092, file: !6, line: 535, baseType: !15, size: 32, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !1092, file: !6, line: 536, baseType: !15, size: 32, offset: 160)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !1092, file: !6, line: 537, baseType: !15, size: 32, offset: 192)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !1092, file: !6, line: 538, baseType: !15, size: 32, offset: 224)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !1092, file: !6, line: 539, baseType: !15, size: 32, offset: 256)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !1092, file: !6, line: 542, baseType: !15, size: 32, offset: 288)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !1092, file: !6, line: 543, baseType: !15, size: 32, offset: 320)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !1092, file: !6, line: 544, baseType: !15, size: 32, offset: 352)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !1092, file: !6, line: 545, baseType: !15, size: 32, offset: 384)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !1092, file: !6, line: 546, baseType: !15, size: 32, offset: 416)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !1092, file: !6, line: 547, baseType: !15, size: 32, offset: 448)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !1092, file: !6, line: 548, baseType: !15, size: 32, offset: 480)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !1092, file: !6, line: 549, baseType: !15, size: 32, offset: 512)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !1092, file: !6, line: 551, baseType: !15, size: 32, offset: 544)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !1092, file: !6, line: 554, baseType: !551, size: 64, offset: 576)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !1092, file: !6, line: 555, baseType: !551, size: 64, offset: 640)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !1092, file: !6, line: 558, baseType: !551, size: 64, offset: 704)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !1092, file: !6, line: 559, baseType: !551, size: 64, offset: 768)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !1092, file: !6, line: 561, baseType: !551, size: 64, offset: 832)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !1092, file: !6, line: 562, baseType: !551, size: 64, offset: 896)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !1092, file: !6, line: 565, baseType: !7, size: 32, offset: 960)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !1092, file: !6, line: 566, baseType: !1120, size: 128, offset: 992)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !798)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !1092, file: !6, line: 567, baseType: !1122, size: 512, offset: 1120)
!1122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !499)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_intra", scope: !1092, file: !6, line: 568, baseType: !7, size: 32, offset: 1632)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_frame", scope: !1092, file: !6, line: 569, baseType: !7, size: 32, offset: 1664)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !1092, file: !6, line: 570, baseType: !15, size: 32, offset: 1696)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !1092, file: !6, line: 571, baseType: !15, size: 32, offset: 1728)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !1092, file: !6, line: 572, baseType: !15, size: 32, offset: 1760)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !1092, file: !6, line: 573, baseType: !15, size: 32, offset: 1792)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !1092, file: !6, line: 574, baseType: !15, size: 32, offset: 1824)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_left_xy", scope: !1092, file: !6, line: 575, baseType: !15, size: 32, offset: 1856)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !1092, file: !6, line: 576, baseType: !15, size: 32, offset: 1888)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topleft_xy", scope: !1092, file: !6, line: 577, baseType: !15, size: 32, offset: 1920)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topright_xy", scope: !1092, file: !6, line: 578, baseType: !15, size: 32, offset: 1952)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1092, file: !6, line: 585, baseType: !964, size: 64, offset: 1984)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !1092, file: !6, line: 586, baseType: !81, size: 64, offset: 2048)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !1092, file: !6, line: 587, baseType: !964, size: 64, offset: 2112)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !1092, file: !6, line: 588, baseType: !1138, size: 64, offset: 2176)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !1092, file: !6, line: 589, baseType: !1140, size: 64, offset: 2240)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 64, elements: !867)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !1092, file: !6, line: 591, baseType: !1143, size: 64, offset: 2304)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 192, elements: !1145)
!1145 = !{!1090}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !1092, file: !6, line: 592, baseType: !964, size: 64, offset: 2368)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !1092, file: !6, line: 593, baseType: !967, size: 128, offset: 2432)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !1092, file: !6, line: 594, baseType: !1149, size: 128, offset: 2560)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1150, size: 128, elements: !552)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 128, elements: !1152)
!1152 = !{!868, !28}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1092, file: !6, line: 595, baseType: !983, size: 128, offset: 2688)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !1092, file: !6, line: 596, baseType: !1155, size: 4096, offset: 2816)
!1155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !968, size: 4096, elements: !1156)
!1156 = !{!28, !884}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !1092, file: !6, line: 597, baseType: !964, size: 64, offset: 6912)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !1092, file: !6, line: 598, baseType: !964, size: 64, offset: 6976)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "slice_table", scope: !1092, file: !6, line: 599, baseType: !817, size: 64, offset: 7040)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "p_weight_buf", scope: !1092, file: !6, line: 603, baseType: !959, size: 1024, offset: 7104)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !1092, file: !6, line: 606, baseType: !15, size: 32, offset: 8128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !1092, file: !6, line: 607, baseType: !15, size: 32, offset: 8160)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !1092, file: !6, line: 608, baseType: !1164, size: 32, align: 32, offset: 8192)
!1164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 32, elements: !798)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !1092, file: !6, line: 609, baseType: !15, size: 32, offset: 8224)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !1092, file: !6, line: 611, baseType: !15, size: 32, offset: 8256)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !1092, file: !6, line: 612, baseType: !15, size: 32, offset: 8288)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !1092, file: !6, line: 614, baseType: !15, size: 32, offset: 8320)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !1092, file: !6, line: 615, baseType: !15, size: 32, offset: 8352)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !1092, file: !6, line: 621, baseType: !15, size: 32, offset: 8384)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !1092, file: !6, line: 624, baseType: !15, size: 32, offset: 8416)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "b_reencode_mb", scope: !1092, file: !6, line: 626, baseType: !15, size: 32, offset: 8448)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "ip_offset", scope: !1092, file: !6, line: 627, baseType: !15, size: 32, offset: 8480)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !1092, file: !6, line: 671, baseType: !1175, size: 60672, offset: 8576)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1092, file: !6, line: 629, size: 60672, elements: !1176)
!1176 = !{!1177, !1181, !1185, !1187, !1188, !1191, !1195, !1197, !1198, !1199, !1200, !1201, !1204, !1208, !1211, !1212, !1213, !1214, !1215, !1218, !1220, !1222}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !1175, file: !6, line: 634, baseType: !1178, size: 3072, align: 128)
!1178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 3072, elements: !1179)
!1179 = !{!1180}
!1180 = !DISubrange(count: 384)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !1175, file: !6, line: 635, baseType: !1182, size: 6912, align: 128, offset: 3072)
!1182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 6912, elements: !1183)
!1183 = !{!1184}
!1184 = !DISubrange(count: 864)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !1175, file: !6, line: 638, baseType: !1186, size: 2048, align: 128, offset: 9984)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 2048, elements: !692)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !1175, file: !6, line: 639, baseType: !1186, size: 2048, align: 128, offset: 12032)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !1175, file: !6, line: 640, baseType: !1189, size: 3072, align: 128, offset: 14080)
!1189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 3072, elements: !1190)
!1190 = !{!56, !33}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !1175, file: !6, line: 641, baseType: !1192, size: 3840, align: 128, offset: 17152)
!1192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 3840, elements: !1193)
!1193 = !{!1194, !500}
!1194 = !DISubrange(count: 15)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_nnz_buf", scope: !1175, file: !6, line: 642, baseType: !1196, size: 128, offset: 20992)
!1196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 128, elements: !798)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_nnz_buf", scope: !1175, file: !6, line: 643, baseType: !1196, size: 128, offset: 21120)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_cbp", scope: !1175, file: !6, line: 644, baseType: !15, size: 32, offset: 21248)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_cbp", scope: !1175, file: !6, line: 645, baseType: !15, size: 32, offset: 21280)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !1175, file: !6, line: 648, baseType: !1085, size: 4096, align: 128, offset: 21376)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !1175, file: !6, line: 649, baseType: !1202, size: 4096, align: 128, offset: 25472)
!1202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 4096, elements: !1203)
!1203 = !{!500, !500}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_hadamard_cache", scope: !1175, file: !6, line: 652, baseType: !1205, size: 576, align: 128, offset: 29568)
!1205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1012, size: 576, elements: !1206)
!1206 = !{!1207}
!1207 = !DISubrange(count: 9)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_cache", scope: !1175, file: !6, line: 653, baseType: !1209, size: 1024, align: 128, offset: 30208)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 1024, elements: !1210)
!1210 = !{!884}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !1175, file: !6, line: 656, baseType: !948, size: 192, offset: 31232)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !1175, file: !6, line: 658, baseType: !948, size: 192, offset: 31424)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !1175, file: !6, line: 661, baseType: !948, size: 192, offset: 31616)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !1175, file: !6, line: 664, baseType: !551, size: 64, offset: 31808)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !1175, file: !6, line: 665, baseType: !1216, size: 24576, offset: 31872)
!1216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 24576, elements: !1217)
!1217 = !{!28, !884, !789}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref_w", scope: !1175, file: !6, line: 666, baseType: !1219, size: 2048, offset: 56448)
!1219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 2048, elements: !1210)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !1175, file: !6, line: 667, baseType: !1221, size: 2048, offset: 58496)
!1221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !817, size: 2048, elements: !855)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !1175, file: !6, line: 670, baseType: !940, size: 96, offset: 60544)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !1092, file: !6, line: 704, baseType: !1224, size: 6144, offset: 69248)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1092, file: !6, line: 674, size: 6144, elements: !1225)
!1225 = !{!1226, !1230, !1234, !1237, !1240, !1242, !1243, !1246, !1248, !1249, !1250, !1251, !1252, !1253}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !1224, file: !6, line: 677, baseType: !1227, size: 320, align: 64)
!1227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 320, elements: !1228)
!1228 = !{!1229}
!1229 = !DISubrange(count: 40)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !1224, file: !6, line: 680, baseType: !1231, size: 384, align: 128, offset: 384)
!1231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 384, elements: !1232)
!1232 = !{!1233}
!1233 = !DISubrange(count: 48)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1224, file: !6, line: 683, baseType: !1235, size: 640, align: 32, offset: 768)
!1235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 640, elements: !1236)
!1236 = !{!28, !1229}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !1224, file: !6, line: 686, baseType: !1238, size: 2560, align: 128, offset: 1408)
!1238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 2560, elements: !1239)
!1239 = !{!28, !1229, !28}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !1224, file: !6, line: 687, baseType: !1241, size: 1280, align: 64, offset: 3968)
!1241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 1280, elements: !1239)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !1224, file: !6, line: 690, baseType: !1227, size: 320, align: 32, offset: 5248)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !1224, file: !6, line: 692, baseType: !1244, size: 256, align: 32, offset: 5568)
!1244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 256, elements: !1245)
!1245 = !{!28, !59, !28}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !1224, file: !6, line: 693, baseType: !1247, size: 64, align: 32, offset: 5824)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 64, elements: !1083)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "direct_partition", scope: !1224, file: !6, line: 694, baseType: !15, size: 32, offset: 5888)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !1224, file: !6, line: 695, baseType: !969, size: 32, align: 32, offset: 5920)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !1224, file: !6, line: 698, baseType: !15, size: 32, offset: 5952)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !1224, file: !6, line: 699, baseType: !15, size: 32, offset: 5984)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_top", scope: !1224, file: !6, line: 702, baseType: !15, size: 32, offset: 6016)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_left", scope: !1224, file: !6, line: 703, baseType: !15, size: 32, offset: 6048)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !1092, file: !6, line: 707, baseType: !15, size: 32, offset: 75392)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !1092, file: !6, line: 708, baseType: !15, size: 32, offset: 75424)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !1092, file: !6, line: 709, baseType: !15, size: 32, offset: 75456)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !1092, file: !6, line: 710, baseType: !15, size: 32, offset: 75488)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !1092, file: !6, line: 711, baseType: !15, size: 32, offset: 75520)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !1092, file: !6, line: 712, baseType: !15, size: 32, offset: 75552)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !1092, file: !6, line: 713, baseType: !15, size: 32, offset: 75584)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !1092, file: !6, line: 714, baseType: !15, size: 32, offset: 75616)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis_lambda2", scope: !1092, file: !6, line: 717, baseType: !1263, size: 128, offset: 75648)
!1263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 128, elements: !1264)
!1264 = !{!28, !28}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd_lambda", scope: !1092, file: !6, line: 718, baseType: !15, size: 32, offset: 75776)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_lambda2_offset", scope: !1092, file: !6, line: 719, baseType: !15, size: 32, offset: 75808)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor_buf", scope: !1092, file: !6, line: 722, baseType: !1268, size: 4096, offset: 75840)
!1268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 4096, elements: !1269)
!1269 = !{!28, !884, !59}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !1092, file: !6, line: 723, baseType: !1271, size: 64, offset: 79936)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 64, elements: !798)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight_buf", scope: !1092, file: !6, line: 724, baseType: !1274, size: 2048, offset: 80000)
!1274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 2048, elements: !1269)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !1092, file: !6, line: 725, baseType: !1276, size: 64, offset: 82048)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 32, elements: !798)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !1092, file: !6, line: 728, baseType: !1279, size: 144, offset: 82112)
!1279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 144, elements: !994)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "ref_blind_dupe", scope: !1092, file: !6, line: 729, baseType: !15, size: 32, offset: 82272)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_ref_table", scope: !1092, file: !6, line: 730, baseType: !1282, size: 272, offset: 82304)
!1282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 272, elements: !1283)
!1283 = !{!1284}
!1284 = !DISubrange(count: 34)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !448, file: !6, line: 735, baseType: !1286, size: 64, offset: 213632)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !6, line: 379, baseType: !1288)
!1288 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !6, line: 379, flags: DIFlagFwdDecl)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !448, file: !6, line: 793, baseType: !1290, size: 29504, offset: 213696)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !448, file: !6, line: 738, size: 29504, elements: !1291)
!1291 = !{!1292, !1319, !1323, !1325, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1337, !1339, !1340, !1343, !1345, !1347, !1348, !1349}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !1290, file: !6, line: 764, baseType: !1293, size: 5632)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1290, file: !6, line: 741, size: 5632, elements: !1294)
!1294 = !{!1295, !1296, !1297, !1298, !1300, !1301, !1302, !1303, !1304, !1306, !1309, !1311, !1315, !1316, !1318}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !1293, file: !6, line: 744, baseType: !15, size: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !1293, file: !6, line: 746, baseType: !15, size: 32, offset: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !1293, file: !6, line: 748, baseType: !15, size: 32, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !1293, file: !6, line: 750, baseType: !1299, size: 608, offset: 96)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 608, elements: !1068)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !1293, file: !6, line: 751, baseType: !15, size: 32, offset: 704)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !1293, file: !6, line: 752, baseType: !15, size: 32, offset: 736)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !1293, file: !6, line: 753, baseType: !15, size: 32, offset: 768)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !1293, file: !6, line: 754, baseType: !551, size: 64, offset: 800)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !1293, file: !6, line: 755, baseType: !1305, size: 2048, offset: 864)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 2048, elements: !1156)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !1293, file: !6, line: 756, baseType: !1307, size: 544, offset: 2912)
!1307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 544, elements: !1308)
!1308 = !{!974}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !1293, file: !6, line: 757, baseType: !1310, size: 192, offset: 3456)
!1310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 192, elements: !788)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !1293, file: !6, line: 758, baseType: !1312, size: 1664, offset: 3648)
!1312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 1664, elements: !1313)
!1313 = !{!59, !1314}
!1314 = !DISubrange(count: 13)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !1293, file: !6, line: 760, baseType: !551, size: 64, offset: 5312)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !1293, file: !6, line: 762, baseType: !1317, size: 192, offset: 5376)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !916, size: 192, elements: !941)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !1293, file: !6, line: 763, baseType: !1020, size: 64, offset: 5568)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_count", scope: !1290, file: !6, line: 769, baseType: !1320, size: 160, offset: 5632)
!1320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !1321)
!1321 = !{!1322}
!1322 = !DISubrange(count: 5)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !1290, file: !6, line: 770, baseType: !1324, size: 320, offset: 5824)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !916, size: 320, elements: !1321)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "f_frame_qp", scope: !1290, file: !6, line: 771, baseType: !1326, size: 320, offset: 6144)
!1326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1020, size: 320, elements: !1321)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !1290, file: !6, line: 772, baseType: !1307, size: 544, offset: 6464)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !1290, file: !6, line: 774, baseType: !1324, size: 320, offset: 7040)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !1290, file: !6, line: 775, baseType: !1326, size: 320, offset: 7360)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !1290, file: !6, line: 776, baseType: !1326, size: 320, offset: 7680)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !1290, file: !6, line: 777, baseType: !1326, size: 320, offset: 8000)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !1290, file: !6, line: 778, baseType: !1326, size: 320, offset: 8320)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !1290, file: !6, line: 779, baseType: !1326, size: 320, offset: 8640)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !1290, file: !6, line: 781, baseType: !1335, size: 6080, offset: 8960)
!1335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !916, size: 6080, elements: !1336)
!1336 = !{!1322, !1069}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !1290, file: !6, line: 782, baseType: !1338, size: 2176, offset: 15040)
!1338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !916, size: 2176, elements: !973)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !1290, file: !6, line: 783, baseType: !1058, size: 128, offset: 17216)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !1290, file: !6, line: 784, baseType: !1341, size: 8192, offset: 17344)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !916, size: 8192, elements: !1342)
!1342 = !{!28, !28, !884}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !1290, file: !6, line: 785, baseType: !1344, size: 384, offset: 25536)
!1344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !916, size: 384, elements: !788)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !1290, file: !6, line: 786, baseType: !1346, size: 3328, offset: 25920)
!1346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !916, size: 3328, elements: !1313)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !1290, file: !6, line: 788, baseType: !551, size: 64, offset: 29248)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !1290, file: !6, line: 789, baseType: !551, size: 64, offset: 29312)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "i_wpred", scope: !1290, file: !6, line: 791, baseType: !940, size: 96, offset: 29376)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !448, file: !6, line: 795, baseType: !1351, size: 4096, align: 128, offset: 243200)
!1351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 4096, elements: !1352)
!1352 = !{!28, !33}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !448, file: !6, line: 796, baseType: !1354, size: 2048, align: 128, offset: 247296)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2048, elements: !1352)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !448, file: !6, line: 797, baseType: !1356, size: 64, offset: 249344)
!1356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 64, elements: !552)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_buffer", scope: !448, file: !6, line: 800, baseType: !511, size: 64, offset: 249408)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !448, file: !6, line: 801, baseType: !1359, size: 384, offset: 249472)
!1359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 384, elements: !1360)
!1360 = !{!28, !56}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !448, file: !6, line: 802, baseType: !1362, size: 128, offset: 249856)
!1362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1363, size: 128, elements: !552)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 256, elements: !1365)
!1365 = !{!28, !59, !59}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !448, file: !6, line: 805, baseType: !1367, size: 448, offset: 249984)
!1367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1368, size: 448, elements: !1373)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !1369, line: 27, baseType: !1370)
!1369 = !DIFile(filename: "x264_src/common/predict.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5f9c3dfea82ca04aa9f99900c2f3609a")
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{null, !81}
!1373 = !{!1374}
!1374 = !DISubrange(count: 7)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !448, file: !6, line: 806, baseType: !1367, size: 448, offset: 250432)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !448, file: !6, line: 807, baseType: !1377, size: 768, offset: 250880)
!1377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1378, size: 768, elements: !1382)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !1369, line: 28, baseType: !1379)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{null, !81, !81}
!1382 = !{!1383}
!1383 = !DISubrange(count: 12)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !448, file: !6, line: 808, baseType: !1385, size: 768, offset: 251648)
!1385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1368, size: 768, elements: !1382)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8_filter", scope: !448, file: !6, line: 809, baseType: !1387, size: 64, offset: 252416)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_8x8_filter_t", file: !1369, line: 29, baseType: !1388)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{null, !81, !81, !15, !15}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !448, file: !6, line: 811, baseType: !1392, size: 8448, offset: 252480)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !1393, line: 110, baseType: !1394)
!1393 = !DIFile(filename: "x264_src/common/pixel.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e9056d80edbb4dc2514d271d596c298e")
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1393, line: 63, size: 8448, elements: !1395)
!1395 = !{!1396, !1402, !1403, !1404, !1405, !1407, !1408, !1409, !1410, !1416, !1422, !1423, !1427, !1432, !1433, !1439, !1443, !1444, !1445, !1446, !1447, !1452, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !1394, file: !1393, line: 65, baseType: !1397, size: 448)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1398, size: 448, elements: !1373)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !1393, line: 26, baseType: !1399)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!15, !81, !15, !81, !15}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !1394, file: !1393, line: 66, baseType: !1397, size: 448, offset: 448)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !1394, file: !1393, line: 67, baseType: !1397, size: 448, offset: 896)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !1394, file: !1393, line: 68, baseType: !1397, size: 448, offset: 1344)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !1394, file: !1393, line: 69, baseType: !1406, size: 256, offset: 1792)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1398, size: 256, elements: !798)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !1394, file: !1393, line: 70, baseType: !1397, size: 448, offset: 2048)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !1394, file: !1393, line: 71, baseType: !1397, size: 448, offset: 2496)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !1394, file: !1393, line: 72, baseType: !1397, size: 448, offset: 2944)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !1394, file: !1393, line: 73, baseType: !1411, size: 448, offset: 3392)
!1411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1412, size: 448, elements: !1373)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !1393, line: 27, baseType: !1413)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{null, !81, !81, !81, !81, !15, !981}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !1394, file: !1393, line: 74, baseType: !1417, size: 448, offset: 3840)
!1417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1418, size: 448, elements: !1373)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !1393, line: 28, baseType: !1419)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{null, !81, !81, !81, !81, !81, !15, !981}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !1394, file: !1393, line: 75, baseType: !1397, size: 448, offset: 4288)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "var2_8x8", scope: !1394, file: !1393, line: 76, baseType: !1424, size: 64, offset: 4736)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!15, !81, !15, !81, !15, !981}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1394, file: !1393, line: 78, baseType: !1428, size: 256, offset: 4800)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1429, size: 256, elements: !798)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!1012, !81, !15}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !1394, file: !1393, line: 79, baseType: !1428, size: 256, offset: 5056)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !1394, file: !1393, line: 81, baseType: !1434, size: 64, offset: 5312)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{null, !787, !15, !787, !15, !1437}
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 128, elements: !798)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !1394, file: !1393, line: 83, baseType: !1440, size: 64, offset: 5376)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!547, !1437, !1437, !15}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !1394, file: !1393, line: 86, baseType: !1411, size: 448, offset: 5440)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !1394, file: !1393, line: 87, baseType: !1417, size: 448, offset: 5888)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !1394, file: !1393, line: 88, baseType: !1411, size: 448, offset: 6336)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !1394, file: !1393, line: 89, baseType: !1417, size: 448, offset: 6784)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !1394, file: !1393, line: 93, baseType: !1448, size: 448, offset: 7232)
!1448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1449, size: 448, elements: !1373)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!15, !981, !817, !15, !817, !1138, !15, !15}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !1394, file: !1393, line: 98, baseType: !1453, size: 64, offset: 7680)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{null, !81, !81, !981}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !1394, file: !1393, line: 99, baseType: !1453, size: 64, offset: 7744)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !1394, file: !1393, line: 100, baseType: !1453, size: 64, offset: 7808)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8c", scope: !1394, file: !1393, line: 101, baseType: !1453, size: 64, offset: 7872)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !1394, file: !1393, line: 102, baseType: !1453, size: 64, offset: 7936)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8c", scope: !1394, file: !1393, line: 103, baseType: !1453, size: 64, offset: 8000)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_4x4", scope: !1394, file: !1393, line: 104, baseType: !1453, size: 64, offset: 8064)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !1394, file: !1393, line: 105, baseType: !1453, size: 64, offset: 8128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_4x4", scope: !1394, file: !1393, line: 106, baseType: !1453, size: 64, offset: 8192)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8", scope: !1394, file: !1393, line: 107, baseType: !1453, size: 64, offset: 8256)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !1394, file: !1393, line: 108, baseType: !1453, size: 64, offset: 8320)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8", scope: !1394, file: !1393, line: 109, baseType: !1453, size: 64, offset: 8384)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !448, file: !6, line: 812, baseType: !1468, size: 2368, offset: 260928)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !859, line: 111, baseType: !1469)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !859, line: 58, size: 2368, elements: !1470)
!1470 = !{!1471, !1478, !1482, !1486, !1493, !1498, !1499, !1503, !1507, !1508, !1512, !1520, !1524, !1528, !1529, !1533, !1537, !1541, !1542, !1543, !1544, !1549}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !1469, file: !859, line: 60, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{null, !81, !15, !1475, !15, !15, !15, !15, !15, !1476}
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !858)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !1469, file: !859, line: 65, baseType: !1479, size: 64, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!81, !81, !981, !1475, !15, !15, !15, !15, !15, !1476}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !1469, file: !859, line: 71, baseType: !1483, size: 64, offset: 128)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{null, !81, !15, !81, !15, !15, !15, !15, !15}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1469, file: !859, line: 75, baseType: !1487, size: 640, offset: 192)
!1487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1488, size: 640, elements: !1491)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{null, !81, !15, !81, !15, !81, !15, !15}
!1491 = !{!1492}
!1492 = !DISubrange(count: 10)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1469, file: !859, line: 78, baseType: !1494, size: 448, offset: 832)
!1494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1495, size: 448, elements: !1373)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{null, !81, !15, !81, !15, !15}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !1469, file: !859, line: 79, baseType: !1495, size: 64, offset: 1280)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !1469, file: !859, line: 81, baseType: !1500, size: 64, offset: 1344)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{null, !81, !15, !81, !15, !15, !15}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !1469, file: !859, line: 84, baseType: !1504, size: 64, offset: 1408)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{null, !81, !81, !81, !81, !15, !15, !15, !1138}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !1469, file: !859, line: 88, baseType: !1495, size: 64, offset: 1472)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !1469, file: !859, line: 91, baseType: !1509, size: 64, offset: 1536)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{null, !81, !15, !15}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !1469, file: !859, line: 93, baseType: !1513, size: 64, offset: 1600)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!511, !511, !1516, !1518}
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1519, line: 18, baseType: !1014)
!1519 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !1469, file: !859, line: 94, baseType: !1521, size: 64, offset: 1664)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{null, !511, !15}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4h", scope: !1469, file: !859, line: 97, baseType: !1525, size: 64, offset: 1728)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{null, !817, !81, !15}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8h", scope: !1469, file: !859, line: 98, baseType: !1525, size: 64, offset: 1792)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4v", scope: !1469, file: !859, line: 99, baseType: !1530, size: 64, offset: 1856)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{null, !817, !817, !15}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8v", scope: !1469, file: !859, line: 100, baseType: !1534, size: 64, offset: 1920)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{null, !817, !15}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !1469, file: !859, line: 102, baseType: !1538, size: 64, offset: 1984)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{null, !81, !81, !81, !81, !81, !15, !15, !15, !15}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1469, file: !859, line: 104, baseType: !876, size: 64, offset: 2048)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "offsetadd", scope: !1469, file: !859, line: 105, baseType: !876, size: 64, offset: 2112)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsub", scope: !1469, file: !859, line: 106, baseType: !876, size: 64, offset: 2176)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "weight_cache", scope: !1469, file: !859, line: 107, baseType: !1545, size: 64, offset: 2240)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{null, !445, !1548}
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "mbtree_propagate_cost", scope: !1469, file: !859, line: 109, baseType: !1550, size: 64, offset: 2304)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{null, !981, !817, !817, !817, !817, !15}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !448, file: !6, line: 813, baseType: !1554, size: 960, offset: 263296)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !1555, line: 115, baseType: !1556)
!1555 = !DIFile(filename: "x264_src/common/dct.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d983c98245ed7221137d0c4902e9385f")
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1555, line: 89, size: 960, elements: !1557)
!1557 = !{!1558, !1562, !1566, !1571, !1572, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1588, !1592, !1596}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1556, file: !1555, line: 94, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{null, !1138, !81, !81}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1556, file: !1555, line: 95, baseType: !1563, size: 64, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{null, !81, !1138}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1556, file: !1555, line: 97, baseType: !1567, size: 64, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{null, !1570, !81, !81}
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct_dc", scope: !1556, file: !1555, line: 98, baseType: !1559, size: 64, offset: 192)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1556, file: !1555, line: 99, baseType: !1573, size: 64, offset: 256)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{null, !81, !1570}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct_dc", scope: !1556, file: !1555, line: 100, baseType: !1563, size: 64, offset: 320)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1556, file: !1555, line: 102, baseType: !1567, size: 64, offset: 384)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1556, file: !1555, line: 103, baseType: !1573, size: 64, offset: 448)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct_dc", scope: !1556, file: !1555, line: 104, baseType: !1563, size: 64, offset: 512)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1556, file: !1555, line: 106, baseType: !1559, size: 64, offset: 576)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1556, file: !1555, line: 107, baseType: !1563, size: 64, offset: 640)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1556, file: !1555, line: 109, baseType: !1583, size: 64, offset: 704)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{null, !1586, !81, !81}
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 1024, elements: !32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1556, file: !1555, line: 110, baseType: !1589, size: 64, offset: 768)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null, !81, !1586}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1556, file: !1555, line: 112, baseType: !1593, size: 64, offset: 832)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{null, !1138}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1556, file: !1555, line: 113, baseType: !1593, size: 64, offset: 896)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !448, file: !6, line: 814, baseType: !1598, size: 384, offset: 264256)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !1555, line: 126, baseType: !1599)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1555, line: 117, size: 384, elements: !1600)
!1600 = !{!1601, !1605, !1606, !1610, !1611, !1615}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1599, file: !1555, line: 119, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{null, !1138, !1138}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1599, file: !1555, line: 120, baseType: !1602, size: 64, offset: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1599, file: !1555, line: 121, baseType: !1607, size: 64, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!15, !1138, !787, !81}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1599, file: !1555, line: 122, baseType: !1607, size: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4ac", scope: !1599, file: !1555, line: 123, baseType: !1612, size: 64, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!15, !1138, !787, !81, !1138}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1599, file: !1555, line: 124, baseType: !1616, size: 64, offset: 320)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{null, !1138, !1138, !81}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !448, file: !6, line: 815, baseType: !1620, size: 1408, offset: 264640)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1621, line: 44, baseType: !1622)
!1621 = !DIFile(filename: "x264_src/common/quant.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d1558a6947b2031223cf5868b45335f7")
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1621, line: 26, size: 1408, elements: !1623)
!1623 = !{!1624, !1628, !1629, !1633, !1634, !1638, !1642, !1643, !1648, !1652, !1653, !1654, !1656}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1622, file: !1621, line: 28, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!15, !1138, !817, !817}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1622, file: !1621, line: 29, baseType: !1625, size: 64, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1622, file: !1621, line: 30, baseType: !1630, size: 64, offset: 128)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!15, !1138, !15, !15}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1622, file: !1621, line: 31, baseType: !1630, size: 64, offset: 192)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1622, file: !1621, line: 33, baseType: !1635, size: 64, offset: 256)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{null, !1138, !801, !15}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1622, file: !1621, line: 34, baseType: !1639, size: 64, offset: 320)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{null, !1138, !796, !15}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1622, file: !1621, line: 35, baseType: !1639, size: 64, offset: 384)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1622, file: !1621, line: 37, baseType: !1644, size: 64, offset: 448)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{null, !1138, !1647, !817, !15}
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1622, file: !1621, line: 39, baseType: !1649, size: 64, offset: 512)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!15, !1138}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1622, file: !1621, line: 40, baseType: !1649, size: 64, offset: 576)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1622, file: !1621, line: 41, baseType: !1649, size: 64, offset: 640)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1622, file: !1621, line: 42, baseType: !1655, size: 384, offset: 704)
!1655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1649, size: 384, elements: !788)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_level_run", scope: !1622, file: !1621, line: 43, baseType: !1657, size: 320, offset: 1088)
!1657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1658, size: 320, elements: !1321)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!15, !1138, !1661}
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_run_level_t", file: !644, line: 63, baseType: !1663)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !644, line: 58, size: 416, elements: !1664)
!1664 = !{!1665, !1666, !1667}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1663, file: !644, line: 60, baseType: !15, size: 32)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1663, file: !644, line: 61, baseType: !1080, size: 256, offset: 32)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1663, file: !644, line: 62, baseType: !498, size: 128, offset: 288)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !448, file: !6, line: 816, baseType: !1669, size: 576, offset: 266048)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !909, line: 170, baseType: !1670)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !909, line: 161, size: 576, elements: !1671)
!1671 = !{!1672, !1678, !1679, !1685, !1686}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma", scope: !1670, file: !909, line: 163, baseType: !1673, size: 128)
!1673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1674, size: 128, elements: !552)
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !909, line: 159, baseType: !1675)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{null, !81, !15, !15, !15, !964}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma", scope: !1670, file: !909, line: 164, baseType: !1673, size: 128, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma_intra", scope: !1670, file: !909, line: 165, baseType: !1680, size: 128, offset: 256)
!1680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1681, size: 128, elements: !552)
!1681 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !909, line: 160, baseType: !1682)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{null, !81, !15, !15, !15}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma_intra", scope: !1670, file: !909, line: 166, baseType: !1680, size: 128, offset: 384)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !1670, file: !909, line: 167, baseType: !1687, size: 64, offset: 512)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{null, !81, !1690, !1691, !1694, !15, !15}
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 1280, elements: !1693)
!1693 = !{!1229, !28}
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 128, elements: !1696)
!1696 = !{!59, !59}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !448, file: !6, line: 821, baseType: !1698, size: 64, offset: 266624)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_lookahead_t", file: !6, line: 377, baseType: !1700)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_lookahead_t", file: !6, line: 366, size: 960, elements: !1701)
!1701 = !{!1702, !1704, !1705, !1706, !1707, !1708, !1709, !1719, !1720}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "b_exit_thread", scope: !1700, file: !6, line: 368, baseType: !1703, size: 8)
!1703 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !21)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !1700, file: !6, line: 369, baseType: !21, size: 8, offset: 8)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "b_analyse_keyframe", scope: !1700, file: !6, line: 370, baseType: !21, size: 8, offset: 16)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !1700, file: !6, line: 371, baseType: !15, size: 32, offset: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "i_slicetype_length", scope: !1700, file: !6, line: 372, baseType: !15, size: 32, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !1700, file: !6, line: 373, baseType: !907, size: 64, offset: 128)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "ifbuf", scope: !1700, file: !6, line: 374, baseType: !1710, size: 256, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_synch_frame_list_t", file: !909, line: 157, baseType: !1711)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !909, line: 149, size: 256, elements: !1712)
!1712 = !{!1713, !1714, !1715, !1716, !1717, !1718}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1711, file: !909, line: 151, baseType: !906, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_size", scope: !1711, file: !909, line: 152, baseType: !15, size: 32, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1711, file: !909, line: 153, baseType: !15, size: 32, offset: 96)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1711, file: !909, line: 154, baseType: !15, size: 32, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "cv_fill", scope: !1711, file: !909, line: 155, baseType: !15, size: 32, offset: 160)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "cv_empty", scope: !1711, file: !909, line: 156, baseType: !15, size: 32, offset: 192)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1700, file: !6, line: 375, baseType: !1710, size: 256, offset: 448)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "ofbuf", scope: !1700, file: !6, line: 376, baseType: !1710, size: 256, offset: 704)
!1721 = !{!1722, !1723}
!1722 = !DILocalVariable(name: "h", arg: 1, scope: !442, file: !3, line: 877, type: !445)
!1723 = !DILocalVariable(name: "cb", arg: 2, scope: !442, file: !3, line: 877, type: !71)
!1724 = !DILocation(line: 0, scope: !442)
!1725 = !DILocation(line: 879, column: 22, scope: !442)
!1726 = !DILocation(line: 879, column: 30, scope: !442)
!1727 = !DILocation(line: 879, column: 15, scope: !442)
!1728 = !DILocation(line: 881, column: 15, scope: !442)
!1729 = !DILocation(line: 882, column: 9, scope: !442)
!1730 = !DILocation(line: 882, column: 17, scope: !442)
!1731 = !DILocation(line: 0, scope: !216, inlinedAt: !1732)
!1732 = distinct !DILocation(line: 883, column: 5, scope: !442)
!1733 = !DILocation(line: 789, column: 21, scope: !220, inlinedAt: !1732)
!1734 = !DILocation(line: 789, column: 9, scope: !216, inlinedAt: !1732)
!1735 = !DILocation(line: 791, column: 44, scope: !219, inlinedAt: !1732)
!1736 = !DILocation(line: 791, column: 29, scope: !219, inlinedAt: !1732)
!1737 = !DILocation(line: 0, scope: !219, inlinedAt: !1732)
!1738 = !DILocation(line: 792, column: 28, scope: !219, inlinedAt: !1732)
!1739 = !DILocation(line: 792, column: 42, scope: !219, inlinedAt: !1732)
!1740 = !DILocation(line: 792, column: 19, scope: !219, inlinedAt: !1732)
!1741 = !DILocation(line: 793, column: 21, scope: !219, inlinedAt: !1732)
!1742 = !DILocation(line: 795, column: 18, scope: !223, inlinedAt: !1732)
!1743 = !DILocation(line: 795, column: 26, scope: !223, inlinedAt: !1732)
!1744 = !DILocation(line: 795, column: 13, scope: !219, inlinedAt: !1732)
!1745 = !DILocation(line: 796, column: 17, scope: !223, inlinedAt: !1732)
!1746 = !DILocation(line: 796, column: 36, scope: !223, inlinedAt: !1732)
!1747 = !DILocation(line: 796, column: 13, scope: !223, inlinedAt: !1732)
!1748 = !DILocation(line: 799, column: 29, scope: !222, inlinedAt: !1732)
!1749 = !DILocation(line: 0, scope: !222, inlinedAt: !1732)
!1750 = !DILocation(line: 800, column: 41, scope: !222, inlinedAt: !1732)
!1751 = !DILocation(line: 807, column: 17, scope: !222, inlinedAt: !1732)
!1752 = !DILocation(line: 807, column: 13, scope: !222, inlinedAt: !1732)
!1753 = !DILocation(line: 807, column: 23, scope: !222, inlinedAt: !1732)
!1754 = !DILocation(line: 808, column: 38, scope: !222, inlinedAt: !1732)
!1755 = !DILocation(line: 808, column: 13, scope: !222, inlinedAt: !1732)
!1756 = !DILocation(line: 810, column: 24, scope: !251, inlinedAt: !1732)
!1757 = !DILocation(line: 810, column: 28, scope: !251, inlinedAt: !1732)
!1758 = !DILocation(line: 811, column: 34, scope: !251, inlinedAt: !1732)
!1759 = distinct !{!1759, !255}
!1760 = distinct !{!1760, !1755, !1761}
!1761 = !DILocation(line: 812, column: 13, scope: !222, inlinedAt: !1732)
!1762 = !DILocation(line: 813, column: 26, scope: !222, inlinedAt: !1732)
!1763 = !DILocation(line: 813, column: 20, scope: !222, inlinedAt: !1732)
!1764 = !DILocation(line: 813, column: 24, scope: !222, inlinedAt: !1732)
!1765 = !DILocation(line: 814, column: 37, scope: !222, inlinedAt: !1732)
!1766 = !DILocation(line: 789, column: 13, scope: !220, inlinedAt: !1767)
!1767 = distinct !DILocation(line: 884, column: 5, scope: !442)
!1768 = !DILocation(line: 885, column: 15, scope: !442)
!1769 = !DILocation(line: 0, scope: !216, inlinedAt: !1767)
!1770 = !DILocation(line: 789, column: 21, scope: !220, inlinedAt: !1767)
!1771 = !DILocation(line: 789, column: 9, scope: !216, inlinedAt: !1767)
!1772 = !DILocation(line: 791, column: 44, scope: !219, inlinedAt: !1767)
!1773 = !DILocation(line: 791, column: 29, scope: !219, inlinedAt: !1767)
!1774 = !DILocation(line: 0, scope: !219, inlinedAt: !1767)
!1775 = !DILocation(line: 792, column: 28, scope: !219, inlinedAt: !1767)
!1776 = !DILocation(line: 792, column: 42, scope: !219, inlinedAt: !1767)
!1777 = !DILocation(line: 792, column: 19, scope: !219, inlinedAt: !1767)
!1778 = !DILocation(line: 793, column: 21, scope: !219, inlinedAt: !1767)
!1779 = !DILocation(line: 795, column: 18, scope: !223, inlinedAt: !1767)
!1780 = !DILocation(line: 795, column: 26, scope: !223, inlinedAt: !1767)
!1781 = !DILocation(line: 795, column: 13, scope: !219, inlinedAt: !1767)
!1782 = !DILocation(line: 796, column: 17, scope: !223, inlinedAt: !1767)
!1783 = !DILocation(line: 796, column: 36, scope: !223, inlinedAt: !1767)
!1784 = !DILocation(line: 796, column: 13, scope: !223, inlinedAt: !1767)
!1785 = !DILocation(line: 799, column: 29, scope: !222, inlinedAt: !1767)
!1786 = !DILocation(line: 0, scope: !222, inlinedAt: !1767)
!1787 = !DILocation(line: 800, column: 41, scope: !222, inlinedAt: !1767)
!1788 = !DILocation(line: 807, column: 17, scope: !222, inlinedAt: !1767)
!1789 = !DILocation(line: 807, column: 13, scope: !222, inlinedAt: !1767)
!1790 = !DILocation(line: 807, column: 23, scope: !222, inlinedAt: !1767)
!1791 = !DILocation(line: 808, column: 38, scope: !222, inlinedAt: !1767)
!1792 = !DILocation(line: 808, column: 13, scope: !222, inlinedAt: !1767)
!1793 = !DILocation(line: 810, column: 24, scope: !251, inlinedAt: !1767)
!1794 = !DILocation(line: 810, column: 28, scope: !251, inlinedAt: !1767)
!1795 = !DILocation(line: 811, column: 34, scope: !251, inlinedAt: !1767)
!1796 = distinct !{!1796, !255}
!1797 = distinct !{!1797, !1792, !1798}
!1798 = !DILocation(line: 812, column: 13, scope: !222, inlinedAt: !1767)
!1799 = !DILocation(line: 813, column: 26, scope: !222, inlinedAt: !1767)
!1800 = !DILocation(line: 813, column: 20, scope: !222, inlinedAt: !1767)
!1801 = !DILocation(line: 813, column: 24, scope: !222, inlinedAt: !1767)
!1802 = !DILocation(line: 814, column: 37, scope: !222, inlinedAt: !1767)
!1803 = !DILocation(line: 885, column: 24, scope: !442)
!1804 = !DILocation(line: 885, column: 19, scope: !442)
!1805 = !DILocation(line: 886, column: 37, scope: !442)
!1806 = !DILocation(line: 886, column: 45, scope: !442)
!1807 = !DILocation(line: 886, column: 30, scope: !442)
!1808 = !DILocation(line: 886, column: 56, scope: !442)
!1809 = !DILocation(line: 886, column: 15, scope: !442)
!1810 = !DILocation(line: 0, scope: !216, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 888, column: 5, scope: !442)
!1812 = !DILocation(line: 791, column: 29, scope: !219, inlinedAt: !1811)
!1813 = !DILocation(line: 0, scope: !219, inlinedAt: !1811)
!1814 = !DILocation(line: 792, column: 19, scope: !219, inlinedAt: !1811)
!1815 = !DILocation(line: 793, column: 21, scope: !219, inlinedAt: !1811)
!1816 = !DILocation(line: 795, column: 26, scope: !223, inlinedAt: !1811)
!1817 = !DILocation(line: 795, column: 13, scope: !219, inlinedAt: !1811)
!1818 = !DILocation(line: 799, column: 29, scope: !222, inlinedAt: !1811)
!1819 = !DILocation(line: 0, scope: !222, inlinedAt: !1811)
!1820 = !DILocation(line: 800, column: 41, scope: !222, inlinedAt: !1811)
!1821 = !DILocation(line: 807, column: 17, scope: !222, inlinedAt: !1811)
!1822 = !DILocation(line: 807, column: 13, scope: !222, inlinedAt: !1811)
!1823 = !DILocation(line: 807, column: 23, scope: !222, inlinedAt: !1811)
!1824 = !DILocation(line: 808, column: 38, scope: !222, inlinedAt: !1811)
!1825 = !DILocation(line: 808, column: 13, scope: !222, inlinedAt: !1811)
!1826 = !DILocation(line: 810, column: 24, scope: !251, inlinedAt: !1811)
!1827 = !DILocation(line: 810, column: 28, scope: !251, inlinedAt: !1811)
!1828 = !DILocation(line: 811, column: 34, scope: !251, inlinedAt: !1811)
!1829 = distinct !{!1829, !255}
!1830 = distinct !{!1830, !1825, !1831}
!1831 = !DILocation(line: 812, column: 13, scope: !222, inlinedAt: !1811)
!1832 = !DILocation(line: 813, column: 26, scope: !222, inlinedAt: !1811)
!1833 = !DILocation(line: 813, column: 20, scope: !222, inlinedAt: !1811)
!1834 = !DILocation(line: 813, column: 24, scope: !222, inlinedAt: !1811)
!1835 = !DILocation(line: 814, column: 37, scope: !222, inlinedAt: !1811)
!1836 = !DILocation(line: 890, column: 5, scope: !442)
!1837 = !DILocation(line: 796, column: 17, scope: !223, inlinedAt: !1811)
!1838 = !DILocation(line: 796, column: 36, scope: !223, inlinedAt: !1811)
!1839 = !DILocation(line: 890, column: 36, scope: !442)
!1840 = !DILocation(line: 892, column: 16, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !442, file: !3, line: 891, column: 5)
!1842 = !DILocation(line: 892, column: 20, scope: !1841)
!1843 = !DILocation(line: 893, column: 32, scope: !1841)
!1844 = distinct !{!1844, !1836, !1845}
!1845 = !DILocation(line: 894, column: 5, scope: !442)
!1846 = !DILocation(line: 895, column: 1, scope: !442)
