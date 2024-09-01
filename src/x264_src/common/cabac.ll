; ModuleID = 'x264_src/common/cabac.c'
source_filename = "x264_src/common/cabac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x264_cabac_range_lps = dso_local local_unnamed_addr constant [64 x [4 x i8]] [[4 x i8] c"\02\02\02\02", [4 x i8] c"\06\07\08\09", [4 x i8] c"\06\07\09\0A", [4 x i8] c"\06\08\09\0B", [4 x i8] c"\07\08\0A\0B", [4 x i8] c"\07\09\0A\0C", [4 x i8] c"\07\09\0B\0C", [4 x i8] c"\08\09\0B\0D", [4 x i8] c"\08\0A\0C\0E", [4 x i8] c"\09\0B\0C\0E", [4 x i8] c"\09\0B\0D\0F", [4 x i8] c"\0A\0C\0E\10", [4 x i8] c"\0A\0C\0F\11", [4 x i8] c"\0B\0D\0F\12", [4 x i8] c"\0B\0E\10\13", [4 x i8] c"\0C\0E\11\14", [4 x i8] c"\0C\0F\12\15", [4 x i8] c"\0D\10\13\16", [4 x i8] c"\0E\11\14\17", [4 x i8] c"\0E\12\15\18", [4 x i8] c"\0F\13\16\19", [4 x i8] c"\10\14\17\1B", [4 x i8] c"\11\15\19\1C", [4 x i8] c"\12\16\1A\1E", [4 x i8] c"\13\17\1B\1F", [4 x i8] c"\14\18\1D!", [4 x i8] c"\15\1A\1E#", [4 x i8] c"\16\1B %", [4 x i8] c"\17\1C!'", [4 x i8] c"\18\1E#)", [4 x i8] c"\1A\1F%+", [4 x i8] c"\1B!'-", [4 x i8] c"\1D#)0", [4 x i8] c"\1E%+2", [4 x i8] c" '.5", [4 x i8] c"!)08", [4 x i8] c"#+3;", [4 x i8] c"%-6>", [4 x i8] c"'08A", [4 x i8] c")2;E", [4 x i8] c"+5?H", [4 x i8] c".8BL", [4 x i8] c"0;EP", [4 x i8] c"3>IU", [4 x i8] c"5AMY", [4 x i8] c"8EQ^", [4 x i8] c";HVc", [4 x i8] c">LZh", [4 x i8] c"BP_n", [4 x i8] c"EUdt", [4 x i8] c"IYiz", [4 x i8] c"M^o\80", [4 x i8] c"Qcu\87", [4 x i8] c"Uh{\8E", [4 x i8] c"Zn\82\96", [4 x i8] c"_t\89\9E", [4 x i8] c"dz\90\A6", [4 x i8] c"i\80\98\AF", [4 x i8] c"o\87\A0\B9", [4 x i8] c"t\8E\A9\C3", [4 x i8] c"{\96\B2\CD", [4 x i8] c"\80\9E\BB\D8", [4 x i8] c"\80\A7\C5\E3", [4 x i8] c"\80\B0\D0\F0"], align 16
@x264_cabac_transition = dso_local local_unnamed_addr constant [128 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\01", [2 x i8] c"\022", [2 x i8] c"3\03", [2 x i8] c"\022", [2 x i8] c"3\03", [2 x i8] c"\044", [2 x i8] c"5\05", [2 x i8] c"\064", [2 x i8] c"5\07", [2 x i8] c"\084", [2 x i8] c"5\09", [2 x i8] c"\0A6", [2 x i8] c"7\0B", [2 x i8] c"\0C6", [2 x i8] c"7\0D", [2 x i8] c"\0E6", [2 x i8] c"7\0F", [2 x i8] c"\108", [2 x i8] c"9\11", [2 x i8] c"\128", [2 x i8] c"9\13", [2 x i8] c"\148", [2 x i8] c"9\15", [2 x i8] c"\16:", [2 x i8] c";\17", [2 x i8] c"\18:", [2 x i8] c";\19", [2 x i8] c"\1A<", [2 x i8] c"=\1B", [2 x i8] c"\1C<", [2 x i8] c"=\1D", [2 x i8] c"\1E<", [2 x i8] c"=\1F", [2 x i8] c" >", [2 x i8] c"?!", [2 x i8] c"\22>", [2 x i8] c"?#", [2 x i8] c"$@", [2 x i8] c"A%", [2 x i8] c"&B", [2 x i8] c"C'", [2 x i8] c"(B", [2 x i8] c"C)", [2 x i8] c"*B", [2 x i8] c"C+", [2 x i8] c",D", [2 x i8] c"E-", [2 x i8] c".D", [2 x i8] c"E/", [2 x i8] c"0F", [2 x i8] c"G1", [2 x i8] c"2H", [2 x i8] c"I3", [2 x i8] c"4H", [2 x i8] c"I5", [2 x i8] c"6J", [2 x i8] c"K7", [2 x i8] c"8J", [2 x i8] c"K9", [2 x i8] c":L", [2 x i8] c"M;", [2 x i8] c"<N", [2 x i8] c"O=", [2 x i8] c">N", [2 x i8] c"O?", [2 x i8] c"@P", [2 x i8] c"QA", [2 x i8] c"BR", [2 x i8] c"SC", [2 x i8] c"DR", [2 x i8] c"SE", [2 x i8] c"FT", [2 x i8] c"UG", [2 x i8] c"HT", [2 x i8] c"UI", [2 x i8] c"JX", [2 x i8] c"YK", [2 x i8] c"LX", [2 x i8] c"YM", [2 x i8] c"NZ", [2 x i8] c"[O", [2 x i8] c"PZ", [2 x i8] c"[Q", [2 x i8] c"R^", [2 x i8] c"_S", [2 x i8] c"T^", [2 x i8] c"_U", [2 x i8] c"V`", [2 x i8] c"aW", [2 x i8] c"X`", [2 x i8] c"aY", [2 x i8] c"Zd", [2 x i8] c"e[", [2 x i8] c"\\d", [2 x i8] c"e]", [2 x i8] c"^f", [2 x i8] c"g_", [2 x i8] c"`h", [2 x i8] c"ia", [2 x i8] c"bh", [2 x i8] c"ic", [2 x i8] c"dl", [2 x i8] c"me", [2 x i8] c"fl", [2 x i8] c"mg", [2 x i8] c"hn", [2 x i8] c"oi", [2 x i8] c"jp", [2 x i8] c"qk", [2 x i8] c"lr", [2 x i8] c"sm", [2 x i8] c"nt", [2 x i8] c"uo", [2 x i8] c"pv", [2 x i8] c"wq", [2 x i8] c"rv", [2 x i8] c"ws", [2 x i8] c"tz", [2 x i8] c"{u", [2 x i8] c"vz", [2 x i8] c"{w", [2 x i8] c"x|", [2 x i8] c"}y", [2 x i8] c"z~", [2 x i8] c"\7F{", [2 x i8] c"|\7F", [2 x i8] c"~}"], align 16
@x264_cabac_renorm_shift = dso_local local_unnamed_addr constant <{ [32 x i8], [32 x i8] }> <{ [32 x i8] c"\06\05\04\04\03\03\03\03\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }>, align 16
@x264_cabac_entropy = dso_local local_unnamed_addr constant [128 x i16] [i16 7, i16 1469, i16 7, i16 1449, i16 8, i16 1430, i16 8, i16 1411, i16 9, i16 1392, i16 9, i16 1372, i16 10, i16 1353, i16 10, i16 1334, i16 11, i16 1315, i16 11, i16 1295, i16 12, i16 1276, i16 12, i16 1257, i16 13, i16 1238, i16 14, i16 1218, i16 15, i16 1199, i16 15, i16 1180, i16 16, i16 1161, i16 17, i16 1141, i16 18, i16 1122, i16 19, i16 1103, i16 20, i16 1084, i16 21, i16 1064, i16 22, i16 1045, i16 24, i16 1026, i16 25, i16 1007, i16 26, i16 987, i16 28, i16 968, i16 29, i16 949, i16 31, i16 930, i16 33, i16 910, i16 35, i16 891, i16 37, i16 872, i16 39, i16 853, i16 41, i16 833, i16 43, i16 814, i16 46, i16 795, i16 48, i16 776, i16 51, i16 756, i16 54, i16 737, i16 57, i16 718, i16 60, i16 699, i16 64, i16 679, i16 68, i16 660, i16 72, i16 641, i16 76, i16 622, i16 80, i16 602, i16 85, i16 583, i16 90, i16 564, i16 96, i16 545, i16 102, i16 525, i16 108, i16 506, i16 115, i16 487, i16 122, i16 468, i16 130, i16 448, i16 139, i16 429, i16 148, i16 410, i16 157, i16 391, i16 168, i16 371, i16 180, i16 352, i16 192, i16 333, i16 206, i16 314, i16 221, i16 295, i16 238, i16 275, i16 256, i16 256], align 16
@x264_cabac_context_init_I = internal unnamed_addr constant [460 x [2 x i8]] [[2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\E4\7F", [2 x i8] c"\E9h", [2 x i8] c"\FA5", [2 x i8] c"\FF6", [2 x i8] c"\073", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] c"\00)", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\F7S", [2 x i8] c"\04V", [2 x i8] c"\00a", [2 x i8] c"\F9H", [2 x i8] c"\0D)", [2 x i8] c"\03>", [2 x i8] c"\00\0B", [2 x i8] c"\017", [2 x i8] c"\00E", [2 x i8] c"\EF\7F", [2 x i8] c"\F3f", [2 x i8] c"\00R", [2 x i8] c"\F9J", [2 x i8] c"\EBk", [2 x i8] c"\E5\7F", [2 x i8] c"\E1\7F", [2 x i8] c"\E8\7F", [2 x i8] c"\EE_", [2 x i8] c"\E5\7F", [2 x i8] c"\EBr", [2 x i8] c"\E2\7F", [2 x i8] c"\EF{", [2 x i8] c"\F4s", [2 x i8] c"\F0z", [2 x i8] c"\F5s", [2 x i8] c"\F4?", [2 x i8] c"\FED", [2 x i8] c"\F1T", [2 x i8] c"\F3h", [2 x i8] c"\FDF", [2 x i8] c"\F8]", [2 x i8] c"\F6Z", [2 x i8] c"\E2\7F", [2 x i8] c"\FFJ", [2 x i8] c"\FAa", [2 x i8] c"\F9[", [2 x i8] c"\EC\7F", [2 x i8] c"\FC8", [2 x i8] c"\FBR", [2 x i8] c"\F9L", [2 x i8] c"\EA}", [2 x i8] c"\F9]", [2 x i8] c"\F5W", [2 x i8] c"\FDM", [2 x i8] c"\FBG", [2 x i8] c"\FC?", [2 x i8] c"\FCD", [2 x i8] c"\F4T", [2 x i8] c"\F9>", [2 x i8] c"\F9A", [2 x i8] c"\08=", [2 x i8] c"\058", [2 x i8] c"\FEB", [2 x i8] c"\01@", [2 x i8] c"\00=", [2 x i8] c"\FEN", [2 x i8] c"\012", [2 x i8] c"\074", [2 x i8] c"\0A#", [2 x i8] c"\00,", [2 x i8] c"\0B&", [2 x i8] c"\01-", [2 x i8] c"\00.", [2 x i8] c"\05,", [2 x i8] c"\1F\11", [2 x i8] c"\013", [2 x i8] c"\072", [2 x i8] c"\1C\13", [2 x i8] c"\10!", [2 x i8] c"\0E>", [2 x i8] c"\F3l", [2 x i8] c"\F1d", [2 x i8] c"\F3e", [2 x i8] c"\F3[", [2 x i8] c"\F4^", [2 x i8] c"\F6X", [2 x i8] c"\F0T", [2 x i8] c"\F6V", [2 x i8] c"\F9S", [2 x i8] c"\F3W", [2 x i8] c"\ED^", [2 x i8] c"\01F", [2 x i8] c"\00H", [2 x i8] c"\FBJ", [2 x i8] c"\12;", [2 x i8] c"\F8f", [2 x i8] c"\F1d", [2 x i8] c"\00_", [2 x i8] c"\FCK", [2 x i8] c"\02H", [2 x i8] c"\F5K", [2 x i8] c"\FDG", [2 x i8] c"\0F.", [2 x i8] c"\F3E", [2 x i8] c"\00>", [2 x i8] c"\00A", [2 x i8] c"\15%", [2 x i8] c"\F1H", [2 x i8] c"\099", [2 x i8] c"\106", [2 x i8] c"\00>", [2 x i8] c"\0CH", [2 x i8] c"\18\00", [2 x i8] c"\0F\09", [2 x i8] c"\08\19", [2 x i8] c"\0D\12", [2 x i8] c"\0F\09", [2 x i8] c"\0D\13", [2 x i8] c"\0A%", [2 x i8] c"\0C\12", [2 x i8] c"\06\1D", [2 x i8] c"\14!", [2 x i8] c"\0F\1E", [2 x i8] c"\04-", [2 x i8] c"\01:", [2 x i8] c"\00>", [2 x i8] c"\07=", [2 x i8] c"\0C&", [2 x i8] c"\0B-", [2 x i8] c"\0F'", [2 x i8] c"\0B*", [2 x i8] c"\0D,", [2 x i8] c"\10-", [2 x i8] c"\0C)", [2 x i8] c"\0A1", [2 x i8] c"\1E\22", [2 x i8] c"\12*", [2 x i8] c"\0A7", [2 x i8] c"\113", [2 x i8] c"\11.", [2 x i8] c"\00Y", [2 x i8] c"\1A\ED", [2 x i8] c"\16\EF", [2 x i8] c"\1A\EF", [2 x i8] c"\1E\E7", [2 x i8] c"\1C\EC", [2 x i8] c"!\E9", [2 x i8] c"%\E5", [2 x i8] c"!\E9", [2 x i8] c"(\E4", [2 x i8] c"&\EF", [2 x i8] c"!\F5", [2 x i8] c"(\F1", [2 x i8] c")\FA", [2 x i8] c"&\01", [2 x i8] c")\11", [2 x i8] c"\1E\FA", [2 x i8] c"\1B\03", [2 x i8] c"\1A\16", [2 x i8] c"%\F0", [2 x i8] c"#\FC", [2 x i8] c"&\F8", [2 x i8] c"&\FD", [2 x i8] c"%\03", [2 x i8] c"&\05", [2 x i8] c"*\00", [2 x i8] c"#\10", [2 x i8] c"'\16", [2 x i8] c"\0E0", [2 x i8] c"\1B%", [2 x i8] c"\15<", [2 x i8] c"\0CD", [2 x i8] c"\02a", [2 x i8] c"\FDG", [2 x i8] c"\FA*", [2 x i8] c"\FB2", [2 x i8] c"\FD6", [2 x i8] c"\FE>", [2 x i8] c"\00:", [2 x i8] c"\01?", [2 x i8] c"\FEH", [2 x i8] c"\FFJ", [2 x i8] c"\F7[", [2 x i8] c"\FBC", [2 x i8] c"\FB\1B", [2 x i8] c"\FD'", [2 x i8] c"\FE,", [2 x i8] c"\00.", [2 x i8] c"\F0@", [2 x i8] c"\F8D", [2 x i8] c"\F6N", [2 x i8] c"\FAM", [2 x i8] c"\F6V", [2 x i8] c"\F4\\", [2 x i8] c"\F17", [2 x i8] c"\F6<", [2 x i8] c"\FA>", [2 x i8] c"\FCA", [2 x i8] c"\F4I", [2 x i8] c"\F8L", [2 x i8] c"\F9P", [2 x i8] c"\F7X", [2 x i8] c"\EFn", [2 x i8] c"\F5a", [2 x i8] c"\ECT", [2 x i8] c"\F5O", [2 x i8] c"\FAI", [2 x i8] c"\FCJ", [2 x i8] c"\F3V", [2 x i8] c"\F3`", [2 x i8] c"\F5a", [2 x i8] c"\EDu", [2 x i8] c"\F8N", [2 x i8] c"\FB!", [2 x i8] c"\FC0", [2 x i8] c"\FE5", [2 x i8] c"\FD>", [2 x i8] c"\F3G", [2 x i8] c"\F6O", [2 x i8] c"\F4V", [2 x i8] c"\F3Z", [2 x i8] c"\F2a", [2 x i8] zeroinitializer, [2 x i8] c"\FA]", [2 x i8] c"\FAT", [2 x i8] c"\F8O", [2 x i8] c"\00B", [2 x i8] c"\FFG", [2 x i8] c"\00>", [2 x i8] c"\FE<", [2 x i8] c"\FE;", [2 x i8] c"\FBK", [2 x i8] c"\FD>", [2 x i8] c"\FC:", [2 x i8] c"\F7B", [2 x i8] c"\FFO", [2 x i8] c"\00G", [2 x i8] c"\03D", [2 x i8] c"\0A,", [2 x i8] c"\F9>", [2 x i8] c"\0F$", [2 x i8] c"\0E(", [2 x i8] c"\10\1B", [2 x i8] c"\0C\1D", [2 x i8] c"\01,", [2 x i8] c"\14$", [2 x i8] c"\12 ", [2 x i8] c"\05*", [2 x i8] c"\010", [2 x i8] c"\0A>", [2 x i8] c"\11.", [2 x i8] c"\09@", [2 x i8] c"\F4h", [2 x i8] c"\F5a", [2 x i8] c"\F0`", [2 x i8] c"\F9X", [2 x i8] c"\F8U", [2 x i8] c"\F9U", [2 x i8] c"\F7U", [2 x i8] c"\F3X", [2 x i8] c"\04B", [2 x i8] c"\FDM", [2 x i8] c"\FDL", [2 x i8] c"\FAL", [2 x i8] c"\0A:", [2 x i8] c"\FFL", [2 x i8] c"\FFS", [2 x i8] c"\F9c", [2 x i8] c"\F2_", [2 x i8] c"\02_", [2 x i8] c"\00L", [2 x i8] c"\FBJ", [2 x i8] c"\00F", [2 x i8] c"\F5K", [2 x i8] c"\01D", [2 x i8] c"\00A", [2 x i8] c"\F2I", [2 x i8] c"\03>", [2 x i8] c"\04>", [2 x i8] c"\FFD", [2 x i8] c"\F3K", [2 x i8] c"\0B7", [2 x i8] c"\05@", [2 x i8] c"\0CF", [2 x i8] c"\0F\06", [2 x i8] c"\06\13", [2 x i8] c"\07\10", [2 x i8] c"\0C\0E", [2 x i8] c"\12\0D", [2 x i8] c"\0D\0B", [2 x i8] c"\0D\0F", [2 x i8] c"\0F\10", [2 x i8] c"\0C\17", [2 x i8] c"\0D\17", [2 x i8] c"\0F\14", [2 x i8] c"\0E\1A", [2 x i8] c"\0E,", [2 x i8] c"\11(", [2 x i8] c"\11/", [2 x i8] c"\18\11", [2 x i8] c"\15\15", [2 x i8] c"\19\16", [2 x i8] c"\1F\1B", [2 x i8] c"\16\1D", [2 x i8] c"\13#", [2 x i8] c"\0E2", [2 x i8] c"\0A9", [2 x i8] c"\07?", [2 x i8] c"\FEM", [2 x i8] c"\FCR", [2 x i8] c"\FD^", [2 x i8] c"\09E", [2 x i8] c"\F4m", [2 x i8] c"$\DD", [2 x i8] c"$\DE", [2 x i8] c" \E6", [2 x i8] c"%\E2", [2 x i8] c",\E0", [2 x i8] c"\22\EE", [2 x i8] c"\22\F1", [2 x i8] c"(\F1", [2 x i8] c"!\F9", [2 x i8] c"#\FB", [2 x i8] c"!\00", [2 x i8] c"&\02", [2 x i8] c"!\0D", [2 x i8] c"\17#", [2 x i8] c"\0D:", [2 x i8] c"\1D\FD", [2 x i8] c"\1A\00", [2 x i8] c"\16\1E", [2 x i8] c"\1F\F9", [2 x i8] c"#\F1", [2 x i8] c"\22\FD", [2 x i8] c"\22\03", [2 x i8] c"$\FF", [2 x i8] c"\22\05", [2 x i8] c" \0B", [2 x i8] c"#\05", [2 x i8] c"\22\0C", [2 x i8] c"'\0B", [2 x i8] c"\1E\1D", [2 x i8] c"\22\1A", [2 x i8] c"\1D'", [2 x i8] c"\13B", [2 x i8] c"\1F\15", [2 x i8] c"\1F\1F", [2 x i8] c"\192", [2 x i8] c"\EFx", [2 x i8] c"\ECp", [2 x i8] c"\EEr", [2 x i8] c"\F5U", [2 x i8] c"\F1\\", [2 x i8] c"\F2Y", [2 x i8] c"\E6G", [2 x i8] c"\F1Q", [2 x i8] c"\F2P", [2 x i8] c"\00D", [2 x i8] c"\F2F", [2 x i8] c"\E88", [2 x i8] c"\E9D", [2 x i8] c"\E82", [2 x i8] c"\F5J", [2 x i8] c"\17\F3", [2 x i8] c"\1A\F3", [2 x i8] c"(\F1", [2 x i8] c"1\F2", [2 x i8] c",\03", [2 x i8] c"-\06", [2 x i8] c",\22", [2 x i8] c"!6", [2 x i8] c"\13R", [2 x i8] c"\FDK", [2 x i8] c"\FF\17", [2 x i8] c"\01\22", [2 x i8] c"\01+", [2 x i8] c"\006", [2 x i8] c"\FE7", [2 x i8] c"\00=", [2 x i8] c"\01@", [2 x i8] c"\00D", [2 x i8] c"\F7\\", [2 x i8] c"\F2j", [2 x i8] c"\F3a", [2 x i8] c"\F1Z", [2 x i8] c"\F4Z", [2 x i8] c"\EEX", [2 x i8] c"\F6I", [2 x i8] c"\F7O", [2 x i8] c"\F2V", [2 x i8] c"\F6I", [2 x i8] c"\F6F", [2 x i8] c"\F6E", [2 x i8] c"\FBB", [2 x i8] c"\F7@", [2 x i8] c"\FB:", [2 x i8] c"\02;", [2 x i8] c"\15\F6", [2 x i8] c"\18\F5", [2 x i8] c"\1C\F8", [2 x i8] c"\1C\FF", [2 x i8] c"\1D\03", [2 x i8] c"\1D\09", [2 x i8] c"#\14", [2 x i8] c"\1D$", [2 x i8] c"\0EC"], align 16
@x264_cabac_context_init_PB = internal unnamed_addr constant [3 x [460 x [2 x i8]]] [[460 x [2 x i8]] [[2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\E4\7F", [2 x i8] c"\E9h", [2 x i8] c"\FA5", [2 x i8] c"\FF6", [2 x i8] c"\073", [2 x i8] c"\17!", [2 x i8] c"\17\02", [2 x i8] c"\15\00", [2 x i8] c"\01\09", [2 x i8] c"\001", [2 x i8] c"\DBv", [2 x i8] c"\059", [2 x i8] c"\F3N", [2 x i8] c"\F5A", [2 x i8] c"\01>", [2 x i8] c"\0C1", [2 x i8] c"\FCI", [2 x i8] c"\112", [2 x i8] c"\12@", [2 x i8] c"\09+", [2 x i8] c"\1D\00", [2 x i8] c"\1AC", [2 x i8] c"\10Z", [2 x i8] c"\09h", [2 x i8] c"\D2\7F", [2 x i8] c"\ECh", [2 x i8] c"\01C", [2 x i8] c"\F3N", [2 x i8] c"\F5A", [2 x i8] c"\01>", [2 x i8] c"\FAV", [2 x i8] c"\EF_", [2 x i8] c"\FA=", [2 x i8] c"\09-", [2 x i8] c"\FDE", [2 x i8] c"\FAQ", [2 x i8] c"\F5`", [2 x i8] c"\067", [2 x i8] c"\07C", [2 x i8] c"\FBV", [2 x i8] c"\02X", [2 x i8] c"\00:", [2 x i8] c"\FDL", [2 x i8] c"\F6^", [2 x i8] c"\056", [2 x i8] c"\04E", [2 x i8] c"\FDQ", [2 x i8] c"\00X", [2 x i8] c"\F9C", [2 x i8] c"\FBJ", [2 x i8] c"\FCJ", [2 x i8] c"\FBP", [2 x i8] c"\F9H", [2 x i8] c"\01:", [2 x i8] c"\00)", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\F7S", [2 x i8] c"\04V", [2 x i8] c"\00a", [2 x i8] c"\F9H", [2 x i8] c"\0D)", [2 x i8] c"\03>", [2 x i8] c"\00-", [2 x i8] c"\FCN", [2 x i8] c"\FD`", [2 x i8] c"\E5~", [2 x i8] c"\E4b", [2 x i8] c"\E7e", [2 x i8] c"\E9C", [2 x i8] c"\E4R", [2 x i8] c"\EC^", [2 x i8] c"\F0S", [2 x i8] c"\EAn", [2 x i8] c"\EB[", [2 x i8] c"\EEf", [2 x i8] c"\F3]", [2 x i8] c"\E3\7F", [2 x i8] c"\F9\\", [2 x i8] c"\FBY", [2 x i8] c"\F9`", [2 x i8] c"\F3l", [2 x i8] c"\FD.", [2 x i8] c"\FFA", [2 x i8] c"\FF9", [2 x i8] c"\F7]", [2 x i8] c"\FDJ", [2 x i8] c"\F7\\", [2 x i8] c"\F8W", [2 x i8] c"\E9~", [2 x i8] c"\056", [2 x i8] c"\06<", [2 x i8] c"\06;", [2 x i8] c"\06E", [2 x i8] c"\FF0", [2 x i8] c"\00D", [2 x i8] c"\FCE", [2 x i8] c"\F8X", [2 x i8] c"\FEU", [2 x i8] c"\FAN", [2 x i8] c"\FFK", [2 x i8] c"\F9M", [2 x i8] c"\026", [2 x i8] c"\052", [2 x i8] c"\FDD", [2 x i8] c"\012", [2 x i8] c"\06*", [2 x i8] c"\FCQ", [2 x i8] c"\01?", [2 x i8] c"\FCF", [2 x i8] c"\00C", [2 x i8] c"\029", [2 x i8] c"\FEL", [2 x i8] c"\0B#", [2 x i8] c"\04@", [2 x i8] c"\01=", [2 x i8] c"\0B#", [2 x i8] c"\12\19", [2 x i8] c"\0C\18", [2 x i8] c"\0D\1D", [2 x i8] c"\0D$", [2 x i8] c"\F6]", [2 x i8] c"\F9I", [2 x i8] c"\FEI", [2 x i8] c"\0D.", [2 x i8] c"\091", [2 x i8] c"\F9d", [2 x i8] c"\095", [2 x i8] c"\025", [2 x i8] c"\055", [2 x i8] c"\FE=", [2 x i8] c"\008", [2 x i8] c"\008", [2 x i8] c"\F3?", [2 x i8] c"\FB<", [2 x i8] c"\FF>", [2 x i8] c"\049", [2 x i8] c"\FAE", [2 x i8] c"\049", [2 x i8] c"\0E'", [2 x i8] c"\043", [2 x i8] c"\0DD", [2 x i8] c"\03@", [2 x i8] c"\01=", [2 x i8] c"\09?", [2 x i8] c"\072", [2 x i8] c"\10'", [2 x i8] c"\05,", [2 x i8] c"\044", [2 x i8] c"\0B0", [2 x i8] c"\FB<", [2 x i8] c"\FF;", [2 x i8] c"\00;", [2 x i8] c"\16!", [2 x i8] c"\05,", [2 x i8] c"\0E+", [2 x i8] c"\FFN", [2 x i8] c"\00<", [2 x i8] c"\09E", [2 x i8] c"\0B\1C", [2 x i8] c"\02(", [2 x i8] c"\03,", [2 x i8] c"\001", [2 x i8] c"\00.", [2 x i8] c"\02,", [2 x i8] c"\023", [2 x i8] c"\00/", [2 x i8] c"\04'", [2 x i8] c"\02>", [2 x i8] c"\06.", [2 x i8] c"\006", [2 x i8] c"\036", [2 x i8] c"\02:", [2 x i8] c"\04?", [2 x i8] c"\063", [2 x i8] c"\069", [2 x i8] c"\075", [2 x i8] c"\064", [2 x i8] c"\067", [2 x i8] c"\0B-", [2 x i8] c"\0E$", [2 x i8] c"\085", [2 x i8] c"\FFR", [2 x i8] c"\077", [2 x i8] c"\FDN", [2 x i8] c"\0F.", [2 x i8] c"\16\1F", [2 x i8] c"\FFT", [2 x i8] c"\19\07", [2 x i8] c"\1E\F9", [2 x i8] c"\1C\03", [2 x i8] c"\1C\04", [2 x i8] c" \00", [2 x i8] c"\22\FF", [2 x i8] c"\1E\06", [2 x i8] c"\1E\06", [2 x i8] c" \09", [2 x i8] c"\1F\13", [2 x i8] c"\1A\1B", [2 x i8] c"\1A\1E", [2 x i8] c"%\14", [2 x i8] c"\1C\22", [2 x i8] c"\11F", [2 x i8] c"\01C", [2 x i8] c"\05;", [2 x i8] c"\09C", [2 x i8] c"\10\1E", [2 x i8] c"\12 ", [2 x i8] c"\12#", [2 x i8] c"\16\1D", [2 x i8] c"\18\1F", [2 x i8] c"\17&", [2 x i8] c"\12+", [2 x i8] c"\14)", [2 x i8] c"\0B?", [2 x i8] c"\09;", [2 x i8] c"\09@", [2 x i8] c"\FF^", [2 x i8] c"\FEY", [2 x i8] c"\F7l", [2 x i8] c"\FAL", [2 x i8] c"\FE,", [2 x i8] c"\00-", [2 x i8] c"\004", [2 x i8] c"\FD@", [2 x i8] c"\FE;", [2 x i8] c"\FCF", [2 x i8] c"\FCK", [2 x i8] c"\F8R", [2 x i8] c"\EFf", [2 x i8] c"\F7M", [2 x i8] c"\03\18", [2 x i8] c"\00*", [2 x i8] c"\000", [2 x i8] c"\007", [2 x i8] c"\FA;", [2 x i8] c"\F9G", [2 x i8] c"\F4S", [2 x i8] c"\F5W", [2 x i8] c"\E2w", [2 x i8] c"\01:", [2 x i8] c"\FD\1D", [2 x i8] c"\FF$", [2 x i8] c"\01&", [2 x i8] c"\02+", [2 x i8] c"\FA7", [2 x i8] c"\00:", [2 x i8] c"\00@", [2 x i8] c"\FDJ", [2 x i8] c"\F6Z", [2 x i8] c"\00F", [2 x i8] c"\FC\1D", [2 x i8] c"\05\1F", [2 x i8] c"\07*", [2 x i8] c"\01;", [2 x i8] c"\FE:", [2 x i8] c"\FDH", [2 x i8] c"\FDQ", [2 x i8] c"\F5a", [2 x i8] c"\00:", [2 x i8] c"\08\05", [2 x i8] c"\0A\0E", [2 x i8] c"\0E\12", [2 x i8] c"\0D\1B", [2 x i8] c"\02(", [2 x i8] c"\00:", [2 x i8] c"\FDF", [2 x i8] c"\FAO", [2 x i8] c"\F8U", [2 x i8] zeroinitializer, [2 x i8] c"\F3j", [2 x i8] c"\F0j", [2 x i8] c"\F6W", [2 x i8] c"\EBr", [2 x i8] c"\EEn", [2 x i8] c"\F2b", [2 x i8] c"\EAn", [2 x i8] c"\EBj", [2 x i8] c"\EEg", [2 x i8] c"\EBk", [2 x i8] c"\E9l", [2 x i8] c"\E6p", [2 x i8] c"\F6`", [2 x i8] c"\F4_", [2 x i8] c"\FB[", [2 x i8] c"\F7]", [2 x i8] c"\EA^", [2 x i8] c"\FBV", [2 x i8] c"\09C", [2 x i8] c"\FCP", [2 x i8] c"\F6U", [2 x i8] c"\FFF", [2 x i8] c"\07<", [2 x i8] c"\09:", [2 x i8] c"\05=", [2 x i8] c"\0C2", [2 x i8] c"\0F2", [2 x i8] c"\121", [2 x i8] c"\116", [2 x i8] c"\0A)", [2 x i8] c"\07.", [2 x i8] c"\FF3", [2 x i8] c"\071", [2 x i8] c"\084", [2 x i8] c"\09)", [2 x i8] c"\06/", [2 x i8] c"\027", [2 x i8] c"\0D)", [2 x i8] c"\0A,", [2 x i8] c"\062", [2 x i8] c"\055", [2 x i8] c"\0D1", [2 x i8] c"\04?", [2 x i8] c"\06@", [2 x i8] c"\FEE", [2 x i8] c"\FE;", [2 x i8] c"\06F", [2 x i8] c"\0A,", [2 x i8] c"\09\1F", [2 x i8] c"\0C+", [2 x i8] c"\035", [2 x i8] c"\0E\22", [2 x i8] c"\0A&", [2 x i8] c"\FD4", [2 x i8] c"\0D(", [2 x i8] c"\11 ", [2 x i8] c"\07,", [2 x i8] c"\07&", [2 x i8] c"\0D2", [2 x i8] c"\0A9", [2 x i8] c"\1A+", [2 x i8] c"\0E\0B", [2 x i8] c"\0B\0E", [2 x i8] c"\09\0B", [2 x i8] c"\12\0B", [2 x i8] c"\15\09", [2 x i8] c"\17\FE", [2 x i8] c" \F1", [2 x i8] c" \F1", [2 x i8] c"\22\EB", [2 x i8] c"'\E9", [2 x i8] c"*\DF", [2 x i8] c")\E1", [2 x i8] c".\E4", [2 x i8] c"&\F4", [2 x i8] c"\15\1D", [2 x i8] c"-\E8", [2 x i8] c"5\D3", [2 x i8] c"0\E6", [2 x i8] c"A\D5", [2 x i8] c"+\ED", [2 x i8] c"'\F6", [2 x i8] c"\1E\09", [2 x i8] c"\12\1A", [2 x i8] c"\14\1B", [2 x i8] c"\009", [2 x i8] c"\F2R", [2 x i8] c"\FBK", [2 x i8] c"\EDa", [2 x i8] c"\DD}", [2 x i8] c"\1B\00", [2 x i8] c"\1C\00", [2 x i8] c"\1F\FC", [2 x i8] c"\1B\06", [2 x i8] c"\22\08", [2 x i8] c"\1E\0A", [2 x i8] c"\18\16", [2 x i8] c"!\13", [2 x i8] c"\16 ", [2 x i8] c"\1A\1F", [2 x i8] c"\15)", [2 x i8] c"\1A,", [2 x i8] c"\17/", [2 x i8] c"\10A", [2 x i8] c"\0EG", [2 x i8] c"\08<", [2 x i8] c"\06?", [2 x i8] c"\11A", [2 x i8] c"\15\18", [2 x i8] c"\17\14", [2 x i8] c"\1A\17", [2 x i8] c"\1B ", [2 x i8] c"\1C\17", [2 x i8] c"\1C\18", [2 x i8] c"\17(", [2 x i8] c"\18 ", [2 x i8] c"\1C\1D", [2 x i8] c"\17*", [2 x i8] c"\139", [2 x i8] c"\165", [2 x i8] c"\16=", [2 x i8] c"\0BV", [2 x i8] c"\0C(", [2 x i8] c"\0B3", [2 x i8] c"\0E;", [2 x i8] c"\FCO", [2 x i8] c"\F9G", [2 x i8] c"\FBE", [2 x i8] c"\F7F", [2 x i8] c"\F8B", [2 x i8] c"\F6D", [2 x i8] c"\EDI", [2 x i8] c"\F4E", [2 x i8] c"\F0F", [2 x i8] c"\F1C", [2 x i8] c"\EC>", [2 x i8] c"\EDF", [2 x i8] c"\F0B", [2 x i8] c"\EAA", [2 x i8] c"\EC?", [2 x i8] c"\09\FE", [2 x i8] c"\1A\F7", [2 x i8] c"!\F7", [2 x i8] c"'\F9", [2 x i8] c")\FE", [2 x i8] c"-\03", [2 x i8] c"1\09", [2 x i8] c"-\1B", [2 x i8] c"$;", [2 x i8] c"\FAB", [2 x i8] c"\F9#", [2 x i8] c"\F9*", [2 x i8] c"\F8-", [2 x i8] c"\FB0", [2 x i8] c"\F48", [2 x i8] c"\FA<", [2 x i8] c"\FB>", [2 x i8] c"\F8B", [2 x i8] c"\F8L", [2 x i8] c"\FBU", [2 x i8] c"\FAQ", [2 x i8] c"\F6M", [2 x i8] c"\F9Q", [2 x i8] c"\EFP", [2 x i8] c"\EEI", [2 x i8] c"\FCJ", [2 x i8] c"\F6S", [2 x i8] c"\F7G", [2 x i8] c"\F7C", [2 x i8] c"\FF=", [2 x i8] c"\F8B", [2 x i8] c"\F2B", [2 x i8] c"\00;", [2 x i8] c"\02;", [2 x i8] c"\15\F3", [2 x i8] c"!\F2", [2 x i8] c"'\F9", [2 x i8] c".\FE", [2 x i8] c"3\02", [2 x i8] c"<\06", [2 x i8] c"=\11", [2 x i8] c"7\22", [2 x i8] c"*>"], [460 x [2 x i8]] [[2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\E4\7F", [2 x i8] c"\E9h", [2 x i8] c"\FA5", [2 x i8] c"\FF6", [2 x i8] c"\073", [2 x i8] c"\16\19", [2 x i8] c"\22\00", [2 x i8] c"\10\00", [2 x i8] c"\FE\09", [2 x i8] c"\04)", [2 x i8] c"\E3v", [2 x i8] c"\02A", [2 x i8] c"\FAG", [2 x i8] c"\F3O", [2 x i8] c"\054", [2 x i8] c"\092", [2 x i8] c"\FDF", [2 x i8] c"\0A6", [2 x i8] c"\1A\22", [2 x i8] c"\13\16", [2 x i8] c"(\00", [2 x i8] c"9\02", [2 x i8] c")$", [2 x i8] c"\1AE", [2 x i8] c"\D3\7F", [2 x i8] c"\F1e", [2 x i8] c"\FCL", [2 x i8] c"\FAG", [2 x i8] c"\F3O", [2 x i8] c"\054", [2 x i8] c"\06E", [2 x i8] c"\F3Z", [2 x i8] c"\004", [2 x i8] c"\08+", [2 x i8] c"\FEE", [2 x i8] c"\FBR", [2 x i8] c"\F6`", [2 x i8] c"\02;", [2 x i8] c"\02K", [2 x i8] c"\FDW", [2 x i8] c"\FDd", [2 x i8] c"\018", [2 x i8] c"\FDJ", [2 x i8] c"\FAU", [2 x i8] c"\00;", [2 x i8] c"\FDQ", [2 x i8] c"\F9V", [2 x i8] c"\FB_", [2 x i8] c"\FFB", [2 x i8] c"\FFM", [2 x i8] c"\01F", [2 x i8] c"\FEV", [2 x i8] c"\FBH", [2 x i8] c"\00=", [2 x i8] c"\00)", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\F7S", [2 x i8] c"\04V", [2 x i8] c"\00a", [2 x i8] c"\F9H", [2 x i8] c"\0D)", [2 x i8] c"\03>", [2 x i8] c"\0D\0F", [2 x i8] c"\073", [2 x i8] c"\02P", [2 x i8] c"\D9\7F", [2 x i8] c"\EE[", [2 x i8] c"\EF`", [2 x i8] c"\E6Q", [2 x i8] c"\DDb", [2 x i8] c"\E8f", [2 x i8] c"\E9a", [2 x i8] c"\E5w", [2 x i8] c"\E8c", [2 x i8] c"\EBn", [2 x i8] c"\EEf", [2 x i8] c"\DC\7F", [2 x i8] c"\00P", [2 x i8] c"\FBY", [2 x i8] c"\F9^", [2 x i8] c"\FC\\", [2 x i8] c"\00'", [2 x i8] c"\00A", [2 x i8] c"\F1T", [2 x i8] c"\DD\7F", [2 x i8] c"\FEI", [2 x i8] c"\F4h", [2 x i8] c"\F7[", [2 x i8] c"\E1\7F", [2 x i8] c"\037", [2 x i8] c"\078", [2 x i8] c"\077", [2 x i8] c"\08=", [2 x i8] c"\FD5", [2 x i8] c"\00D", [2 x i8] c"\F9J", [2 x i8] c"\F7X", [2 x i8] c"\F3g", [2 x i8] c"\F3[", [2 x i8] c"\F7Y", [2 x i8] c"\F2\\", [2 x i8] c"\F8L", [2 x i8] c"\F4W", [2 x i8] c"\E9n", [2 x i8] c"\E8i", [2 x i8] c"\F6N", [2 x i8] c"\ECp", [2 x i8] c"\EFc", [2 x i8] c"\B2\7F", [2 x i8] c"\BA\7F", [2 x i8] c"\CE\7F", [2 x i8] c"\D2\7F", [2 x i8] c"\FCB", [2 x i8] c"\FBN", [2 x i8] c"\FCG", [2 x i8] c"\F8H", [2 x i8] c"\02;", [2 x i8] c"\FF7", [2 x i8] c"\F9F", [2 x i8] c"\FAK", [2 x i8] c"\F8Y", [2 x i8] c"\DEw", [2 x i8] c"\FDK", [2 x i8] c" \14", [2 x i8] c"\1E\16", [2 x i8] c"\D4\7F", [2 x i8] c"\006", [2 x i8] c"\FB=", [2 x i8] c"\00:", [2 x i8] c"\FF<", [2 x i8] c"\FD=", [2 x i8] c"\F8C", [2 x i8] c"\E7T", [2 x i8] c"\F2J", [2 x i8] c"\FBA", [2 x i8] c"\054", [2 x i8] c"\029", [2 x i8] c"\00=", [2 x i8] c"\F7E", [2 x i8] c"\F5F", [2 x i8] c"\127", [2 x i8] c"\FCG", [2 x i8] c"\00:", [2 x i8] c"\07=", [2 x i8] c"\09)", [2 x i8] c"\12\19", [2 x i8] c"\09 ", [2 x i8] c"\05+", [2 x i8] c"\09/", [2 x i8] c"\00,", [2 x i8] c"\003", [2 x i8] c"\02.", [2 x i8] c"\13&", [2 x i8] c"\FCB", [2 x i8] c"\0F&", [2 x i8] c"\0C*", [2 x i8] c"\09\22", [2 x i8] c"\00Y", [2 x i8] c"\04-", [2 x i8] c"\0A\1C", [2 x i8] c"\0A\1F", [2 x i8] c"!\F5", [2 x i8] c"4\D5", [2 x i8] c"\12\0F", [2 x i8] c"\1C\00", [2 x i8] c"#\EA", [2 x i8] c"&\E7", [2 x i8] c"\22\00", [2 x i8] c"'\EE", [2 x i8] c" \F4", [2 x i8] c"f\A2", [2 x i8] zeroinitializer, [2 x i8] c"8\F1", [2 x i8] c"!\FC", [2 x i8] c"\1D\0A", [2 x i8] c"%\FB", [2 x i8] c"3\E3", [2 x i8] c"'\F7", [2 x i8] c"4\DE", [2 x i8] c"E\C6", [2 x i8] c"C\C1", [2 x i8] c",\FB", [2 x i8] c" \07", [2 x i8] c"7\E3", [2 x i8] c" \01", [2 x i8] zeroinitializer, [2 x i8] c"\1B$", [2 x i8] c"!\E7", [2 x i8] c"\22\E2", [2 x i8] c"$\E4", [2 x i8] c"&\E4", [2 x i8] c"&\E5", [2 x i8] c"\22\EE", [2 x i8] c"#\F0", [2 x i8] c"\22\F2", [2 x i8] c" \F8", [2 x i8] c"%\FA", [2 x i8] c"#\00", [2 x i8] c"\1E\0A", [2 x i8] c"\1C\12", [2 x i8] c"\1A\19", [2 x i8] c"\1D)", [2 x i8] c"\00K", [2 x i8] c"\02H", [2 x i8] c"\08M", [2 x i8] c"\0E#", [2 x i8] c"\12\1F", [2 x i8] c"\11#", [2 x i8] c"\15\1E", [2 x i8] c"\11-", [2 x i8] c"\14*", [2 x i8] c"\12-", [2 x i8] c"\1B\1A", [2 x i8] c"\106", [2 x i8] c"\07B", [2 x i8] c"\108", [2 x i8] c"\0BI", [2 x i8] c"\0AC", [2 x i8] c"\F6t", [2 x i8] c"\E9p", [2 x i8] c"\F1G", [2 x i8] c"\F9=", [2 x i8] c"\005", [2 x i8] c"\FBB", [2 x i8] c"\F5M", [2 x i8] c"\F7P", [2 x i8] c"\F7T", [2 x i8] c"\F6W", [2 x i8] c"\DE\7F", [2 x i8] c"\EBe", [2 x i8] c"\FD'", [2 x i8] c"\FB5", [2 x i8] c"\F9=", [2 x i8] c"\F5K", [2 x i8] c"\F1M", [2 x i8] c"\EF[", [2 x i8] c"\E7k", [2 x i8] c"\E7o", [2 x i8] c"\E4z", [2 x i8] c"\F5L", [2 x i8] c"\F6,", [2 x i8] c"\F64", [2 x i8] c"\F69", [2 x i8] c"\F7:", [2 x i8] c"\F0H", [2 x i8] c"\F9E", [2 x i8] c"\FCE", [2 x i8] c"\FBJ", [2 x i8] c"\F7V", [2 x i8] c"\02B", [2 x i8] c"\F7\22", [2 x i8] c"\01 ", [2 x i8] c"\0B\1F", [2 x i8] c"\054", [2 x i8] c"\FE7", [2 x i8] c"\FEC", [2 x i8] c"\00I", [2 x i8] c"\F8Y", [2 x i8] c"\034", [2 x i8] c"\07\04", [2 x i8] c"\0A\08", [2 x i8] c"\11\08", [2 x i8] c"\10\13", [2 x i8] c"\03%", [2 x i8] c"\FF=", [2 x i8] c"\FBI", [2 x i8] c"\FFF", [2 x i8] c"\FCN", [2 x i8] zeroinitializer, [2 x i8] c"\EB~", [2 x i8] c"\E9|", [2 x i8] c"\ECn", [2 x i8] c"\E6~", [2 x i8] c"\E7|", [2 x i8] c"\EFi", [2 x i8] c"\E5y", [2 x i8] c"\E5u", [2 x i8] c"\EFf", [2 x i8] c"\E6u", [2 x i8] c"\E5t", [2 x i8] c"\DFz", [2 x i8] c"\F6_", [2 x i8] c"\F2d", [2 x i8] c"\F8_", [2 x i8] c"\EFo", [2 x i8] c"\E4r", [2 x i8] c"\FAY", [2 x i8] c"\FEP", [2 x i8] c"\FCR", [2 x i8] c"\F7U", [2 x i8] c"\F8Q", [2 x i8] c"\FFH", [2 x i8] c"\05@", [2 x i8] c"\01C", [2 x i8] c"\098", [2 x i8] c"\00E", [2 x i8] c"\01E", [2 x i8] c"\07E", [2 x i8] c"\F9E", [2 x i8] c"\FAC", [2 x i8] c"\F0M", [2 x i8] c"\FE@", [2 x i8] c"\02=", [2 x i8] c"\FAC", [2 x i8] c"\FD@", [2 x i8] c"\029", [2 x i8] c"\FDA", [2 x i8] c"\FDB", [2 x i8] c"\00>", [2 x i8] c"\093", [2 x i8] c"\FFB", [2 x i8] c"\FEG", [2 x i8] c"\FEK", [2 x i8] c"\FFF", [2 x i8] c"\F7H", [2 x i8] c"\0E<", [2 x i8] c"\10%", [2 x i8] c"\00/", [2 x i8] c"\12#", [2 x i8] c"\0B%", [2 x i8] c"\0C)", [2 x i8] c"\0A)", [2 x i8] c"\020", [2 x i8] c"\0C)", [2 x i8] c"\0D)", [2 x i8] c"\00;", [2 x i8] c"\032", [2 x i8] c"\13(", [2 x i8] c"\03B", [2 x i8] c"\122", [2 x i8] c"\13\FA", [2 x i8] c"\12\FA", [2 x i8] c"\0E\00", [2 x i8] c"\1A\F4", [2 x i8] c"\1F\F0", [2 x i8] c"!\E7", [2 x i8] c"!\EA", [2 x i8] c"%\E4", [2 x i8] c"'\E2", [2 x i8] c"*\E2", [2 x i8] c"/\D6", [2 x i8] c"-\DC", [2 x i8] c"1\DE", [2 x i8] c")\EF", [2 x i8] c" \09", [2 x i8] c"E\B9", [2 x i8] c"?\C1", [2 x i8] c"B\C0", [2 x i8] c"M\B6", [2 x i8] c"6\D9", [2 x i8] c"4\DD", [2 x i8] c")\F6", [2 x i8] c"$\00", [2 x i8] c"(\FF", [2 x i8] c"\1E\0E", [2 x i8] c"\1C\1A", [2 x i8] c"\17%", [2 x i8] c"\0C7", [2 x i8] c"\0BA", [2 x i8] c"%\DF", [2 x i8] c"'\DC", [2 x i8] c"(\DB", [2 x i8] c"&\E2", [2 x i8] c".\DF", [2 x i8] c"*\E2", [2 x i8] c"(\E8", [2 x i8] c"1\E3", [2 x i8] c"&\F4", [2 x i8] c"(\F6", [2 x i8] c"&\FD", [2 x i8] c".\FB", [2 x i8] c"\1F\14", [2 x i8] c"\1D\1E", [2 x i8] c"\19,", [2 x i8] c"\0C0", [2 x i8] c"\0B1", [2 x i8] c"\1A-", [2 x i8] c"\16\16", [2 x i8] c"\17\16", [2 x i8] c"\1B\15", [2 x i8] c"!\14", [2 x i8] c"\1A\1C", [2 x i8] c"\1E\18", [2 x i8] c"\1B\22", [2 x i8] c"\12*", [2 x i8] c"\19'", [2 x i8] c"\122", [2 x i8] c"\0CF", [2 x i8] c"\156", [2 x i8] c"\0EG", [2 x i8] c"\0BS", [2 x i8] c"\19 ", [2 x i8] c"\151", [2 x i8] c"\156", [2 x i8] c"\FBU", [2 x i8] c"\FAQ", [2 x i8] c"\F6M", [2 x i8] c"\F9Q", [2 x i8] c"\EFP", [2 x i8] c"\EEI", [2 x i8] c"\FCJ", [2 x i8] c"\F6S", [2 x i8] c"\F7G", [2 x i8] c"\F7C", [2 x i8] c"\FF=", [2 x i8] c"\F8B", [2 x i8] c"\F2B", [2 x i8] c"\00;", [2 x i8] c"\02;", [2 x i8] c"\11\F6", [2 x i8] c" \F3", [2 x i8] c"*\F7", [2 x i8] c"1\FB", [2 x i8] c"5\00", [2 x i8] c"@\03", [2 x i8] c"D\0A", [2 x i8] c"B\1B", [2 x i8] c"/9", [2 x i8] c"\FBG", [2 x i8] c"\00\18", [2 x i8] c"\FF$", [2 x i8] c"\FE*", [2 x i8] c"\FE4", [2 x i8] c"\F79", [2 x i8] c"\FA?", [2 x i8] c"\FCA", [2 x i8] c"\FCC", [2 x i8] c"\F9R", [2 x i8] c"\FDQ", [2 x i8] c"\FDL", [2 x i8] c"\F9H", [2 x i8] c"\FAN", [2 x i8] c"\F4H", [2 x i8] c"\F2D", [2 x i8] c"\FDF", [2 x i8] c"\FAL", [2 x i8] c"\FBB", [2 x i8] c"\FB>", [2 x i8] c"\009", [2 x i8] c"\FC=", [2 x i8] c"\F7<", [2 x i8] c"\016", [2 x i8] c"\02:", [2 x i8] c"\11\F6", [2 x i8] c" \F3", [2 x i8] c"*\F7", [2 x i8] c"1\FB", [2 x i8] c"5\00", [2 x i8] c"@\03", [2 x i8] c"D\0A", [2 x i8] c"B\1B", [2 x i8] c"/9"], [460 x [2 x i8]] [[2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\E4\7F", [2 x i8] c"\E9h", [2 x i8] c"\FA5", [2 x i8] c"\FF6", [2 x i8] c"\073", [2 x i8] c"\1D\10", [2 x i8] c"\19\00", [2 x i8] c"\0E\00", [2 x i8] c"\F63", [2 x i8] c"\FD>", [2 x i8] c"\E5c", [2 x i8] c"\1A\10", [2 x i8] c"\FCU", [2 x i8] c"\E8f", [2 x i8] c"\059", [2 x i8] c"\069", [2 x i8] c"\EFI", [2 x i8] c"\0E9", [2 x i8] c"\14(", [2 x i8] c"\14\0A", [2 x i8] c"\1D\00", [2 x i8] c"6\00", [2 x i8] c"%*", [2 x i8] c"\0Ca", [2 x i8] c"\E0\7F", [2 x i8] c"\EAu", [2 x i8] c"\FEJ", [2 x i8] c"\FCU", [2 x i8] c"\E8f", [2 x i8] c"\059", [2 x i8] c"\FA]", [2 x i8] c"\F2X", [2 x i8] c"\FA,", [2 x i8] c"\047", [2 x i8] c"\F5Y", [2 x i8] c"\F1g", [2 x i8] c"\EBt", [2 x i8] c"\139", [2 x i8] c"\14:", [2 x i8] c"\04T", [2 x i8] c"\06`", [2 x i8] c"\01?", [2 x i8] c"\FBU", [2 x i8] c"\F3j", [2 x i8] c"\05?", [2 x i8] c"\06K", [2 x i8] c"\FDZ", [2 x i8] c"\FFe", [2 x i8] c"\037", [2 x i8] c"\FCO", [2 x i8] c"\FEK", [2 x i8] c"\F4a", [2 x i8] c"\F92", [2 x i8] c"\01<", [2 x i8] c"\00)", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\F7S", [2 x i8] c"\04V", [2 x i8] c"\00a", [2 x i8] c"\F9H", [2 x i8] c"\0D)", [2 x i8] c"\03>", [2 x i8] c"\07\22", [2 x i8] c"\F7X", [2 x i8] c"\EC\7F", [2 x i8] c"\DC\7F", [2 x i8] c"\EF[", [2 x i8] c"\F2_", [2 x i8] c"\E7T", [2 x i8] c"\E7V", [2 x i8] c"\F4Y", [2 x i8] c"\EF[", [2 x i8] c"\E1\7F", [2 x i8] c"\F2L", [2 x i8] c"\EEg", [2 x i8] c"\F3Z", [2 x i8] c"\DB\7F", [2 x i8] c"\0BP", [2 x i8] c"\05L", [2 x i8] c"\02T", [2 x i8] c"\05N", [2 x i8] c"\FA7", [2 x i8] c"\04=", [2 x i8] c"\F2S", [2 x i8] c"\DB\7F", [2 x i8] c"\FBO", [2 x i8] c"\F5h", [2 x i8] c"\F5[", [2 x i8] c"\E2\7F", [2 x i8] c"\00A", [2 x i8] c"\FEO", [2 x i8] c"\00H", [2 x i8] c"\FC\\", [2 x i8] c"\FA8", [2 x i8] c"\03D", [2 x i8] c"\F8G", [2 x i8] c"\F3b", [2 x i8] c"\FCV", [2 x i8] c"\F4X", [2 x i8] c"\FBR", [2 x i8] c"\FDH", [2 x i8] c"\FCC", [2 x i8] c"\F8H", [2 x i8] c"\F0Y", [2 x i8] c"\F7E", [2 x i8] c"\FF;", [2 x i8] c"\05B", [2 x i8] c"\049", [2 x i8] c"\FCG", [2 x i8] c"\FEG", [2 x i8] c"\02:", [2 x i8] c"\FFJ", [2 x i8] c"\FC,", [2 x i8] c"\FFE", [2 x i8] c"\00>", [2 x i8] c"\F93", [2 x i8] c"\FC/", [2 x i8] c"\FA*", [2 x i8] c"\FD)", [2 x i8] c"\FA5", [2 x i8] c"\08L", [2 x i8] c"\F7N", [2 x i8] c"\F5S", [2 x i8] c"\094", [2 x i8] c"\00C", [2 x i8] c"\FBZ", [2 x i8] c"\01C", [2 x i8] c"\F1H", [2 x i8] c"\FBK", [2 x i8] c"\F8P", [2 x i8] c"\EBS", [2 x i8] c"\EB@", [2 x i8] c"\F3\1F", [2 x i8] c"\E7@", [2 x i8] c"\E3^", [2 x i8] c"\09K", [2 x i8] c"\11?", [2 x i8] c"\F8J", [2 x i8] c"\FB#", [2 x i8] c"\FE\1B", [2 x i8] c"\0D[", [2 x i8] c"\03A", [2 x i8] c"\F9E", [2 x i8] c"\08M", [2 x i8] c"\F6B", [2 x i8] c"\03>", [2 x i8] c"\FDD", [2 x i8] c"\ECQ", [2 x i8] c"\00\1E", [2 x i8] c"\01\07", [2 x i8] c"\FD\17", [2 x i8] c"\EBJ", [2 x i8] c"\10B", [2 x i8] c"\E9|", [2 x i8] c"\11%", [2 x i8] c",\EE", [2 x i8] c"2\DE", [2 x i8] c"\EA\7F", [2 x i8] c"\04'", [2 x i8] c"\00*", [2 x i8] c"\07\22", [2 x i8] c"\0B\1D", [2 x i8] c"\08\1F", [2 x i8] c"\06%", [2 x i8] c"\07*", [2 x i8] c"\03(", [2 x i8] c"\08!", [2 x i8] c"\0D+", [2 x i8] c"\0D$", [2 x i8] c"\04/", [2 x i8] c"\037", [2 x i8] c"\02:", [2 x i8] c"\06<", [2 x i8] c"\08,", [2 x i8] c"\0B,", [2 x i8] c"\0E*", [2 x i8] c"\070", [2 x i8] c"\048", [2 x i8] c"\044", [2 x i8] c"\0D%", [2 x i8] c"\091", [2 x i8] c"\13:", [2 x i8] c"\0A0", [2 x i8] c"\0C-", [2 x i8] c"\00E", [2 x i8] c"\14!", [2 x i8] c"\08?", [2 x i8] c"#\EE", [2 x i8] c"!\E7", [2 x i8] c"\1C\FD", [2 x i8] c"\18\0A", [2 x i8] c"\1B\00", [2 x i8] c"\22\F2", [2 x i8] c"4\D4", [2 x i8] c"'\E8", [2 x i8] c"\13\11", [2 x i8] c"\1F\19", [2 x i8] c"$\1D", [2 x i8] c"\18!", [2 x i8] c"\22\0F", [2 x i8] c"\1E\14", [2 x i8] c"\16I", [2 x i8] c"\14\22", [2 x i8] c"\13\1F", [2 x i8] c"\1B,", [2 x i8] c"\13\10", [2 x i8] c"\0F$", [2 x i8] c"\0F$", [2 x i8] c"\15\1C", [2 x i8] c"\19\15", [2 x i8] c"\1E\14", [2 x i8] c"\1F\0C", [2 x i8] c"\1B\10", [2 x i8] c"\18*", [2 x i8] c"\00]", [2 x i8] c"\0E8", [2 x i8] c"\0F9", [2 x i8] c"\1A&", [2 x i8] c"\E8\7F", [2 x i8] c"\E8s", [2 x i8] c"\EAR", [2 x i8] c"\F7>", [2 x i8] c"\005", [2 x i8] c"\00;", [2 x i8] c"\F2U", [2 x i8] c"\F3Y", [2 x i8] c"\F3^", [2 x i8] c"\F5\\", [2 x i8] c"\E3\7F", [2 x i8] c"\EBd", [2 x i8] c"\F29", [2 x i8] c"\F4C", [2 x i8] c"\F5G", [2 x i8] c"\F6M", [2 x i8] c"\EBU", [2 x i8] c"\F0X", [2 x i8] c"\E9h", [2 x i8] c"\F1b", [2 x i8] c"\DB\7F", [2 x i8] c"\F6R", [2 x i8] c"\F80", [2 x i8] c"\F8=", [2 x i8] c"\F8B", [2 x i8] c"\F9F", [2 x i8] c"\F2K", [2 x i8] c"\F6O", [2 x i8] c"\F7S", [2 x i8] c"\F4\\", [2 x i8] c"\EEl", [2 x i8] c"\FCO", [2 x i8] c"\EAE", [2 x i8] c"\F0K", [2 x i8] c"\FE:", [2 x i8] c"\01:", [2 x i8] c"\F3N", [2 x i8] c"\F7S", [2 x i8] c"\FCQ", [2 x i8] c"\F3c", [2 x i8] c"\F3Q", [2 x i8] c"\FA&", [2 x i8] c"\F3>", [2 x i8] c"\FA:", [2 x i8] c"\FE;", [2 x i8] c"\F0I", [2 x i8] c"\F6L", [2 x i8] c"\F3V", [2 x i8] c"\F7S", [2 x i8] c"\F6W", [2 x i8] zeroinitializer, [2 x i8] c"\EA\7F", [2 x i8] c"\E7\7F", [2 x i8] c"\E7x", [2 x i8] c"\E5\7F", [2 x i8] c"\EDr", [2 x i8] c"\E9u", [2 x i8] c"\E7v", [2 x i8] c"\E6u", [2 x i8] c"\E8q", [2 x i8] c"\E4v", [2 x i8] c"\E1x", [2 x i8] c"\DB|", [2 x i8] c"\F6^", [2 x i8] c"\F1f", [2 x i8] c"\F6c", [2 x i8] c"\F3j", [2 x i8] c"\CE\7F", [2 x i8] c"\FB\\", [2 x i8] c"\119", [2 x i8] c"\FBV", [2 x i8] c"\F3^", [2 x i8] c"\F4[", [2 x i8] c"\FEM", [2 x i8] c"\00G", [2 x i8] c"\FFI", [2 x i8] c"\04@", [2 x i8] c"\F9Q", [2 x i8] c"\05@", [2 x i8] c"\0F9", [2 x i8] c"\01C", [2 x i8] c"\00D", [2 x i8] c"\F6C", [2 x i8] c"\01D", [2 x i8] c"\00M", [2 x i8] c"\02@", [2 x i8] c"\00D", [2 x i8] c"\FBN", [2 x i8] c"\077", [2 x i8] c"\05;", [2 x i8] c"\02A", [2 x i8] c"\0E6", [2 x i8] c"\0F,", [2 x i8] c"\05<", [2 x i8] c"\02F", [2 x i8] c"\FEL", [2 x i8] c"\EEV", [2 x i8] c"\0CF", [2 x i8] c"\05@", [2 x i8] c"\F4F", [2 x i8] c"\0B7", [2 x i8] c"\058", [2 x i8] c"\00E", [2 x i8] c"\02A", [2 x i8] c"\FAJ", [2 x i8] c"\056", [2 x i8] c"\076", [2 x i8] c"\FAL", [2 x i8] c"\F5R", [2 x i8] c"\FEM", [2 x i8] c"\FEM", [2 x i8] c"\19*", [2 x i8] c"\11\F3", [2 x i8] c"\10\F7", [2 x i8] c"\11\F4", [2 x i8] c"\1B\EB", [2 x i8] c"%\E2", [2 x i8] c")\D8", [2 x i8] c"*\D7", [2 x i8] c"0\D1", [2 x i8] c"'\E0", [2 x i8] c".\D8", [2 x i8] c"4\CD", [2 x i8] c".\D7", [2 x i8] c"4\D9", [2 x i8] c"+\ED", [2 x i8] c" \0B", [2 x i8] c"=\C9", [2 x i8] c"8\D2", [2 x i8] c">\CE", [2 x i8] c"Q\BD", [2 x i8] c"-\EC", [2 x i8] c"#\FE", [2 x i8] c"\1C\0F", [2 x i8] c"\22\01", [2 x i8] c"'\01", [2 x i8] c"\1E\11", [2 x i8] c"\14&", [2 x i8] c"\12-", [2 x i8] c"\0F6", [2 x i8] c"\00O", [2 x i8] c"$\F0", [2 x i8] c"%\F2", [2 x i8] c"%\EF", [2 x i8] c" \01", [2 x i8] c"\22\0F", [2 x i8] c"\1D\0F", [2 x i8] c"\18\19", [2 x i8] c"\22\16", [2 x i8] c"\1F\10", [2 x i8] c"#\12", [2 x i8] c"\1F\1C", [2 x i8] c"!)", [2 x i8] c"$\1C", [2 x i8] c"\1B/", [2 x i8] c"\15>", [2 x i8] c"\12\1F", [2 x i8] c"\13\1A", [2 x i8] c"$\18", [2 x i8] c"\18\17", [2 x i8] c"\1B\10", [2 x i8] c"\18\1E", [2 x i8] c"\1F\1D", [2 x i8] c"\16)", [2 x i8] c"\16*", [2 x i8] c"\10<", [2 x i8] c"\0F4", [2 x i8] c"\0E<", [2 x i8] c"\03N", [2 x i8] c"\F0{", [2 x i8] c"\155", [2 x i8] c"\168", [2 x i8] c"\19=", [2 x i8] c"\15!", [2 x i8] c"\132", [2 x i8] c"\11=", [2 x i8] c"\FDN", [2 x i8] c"\F8J", [2 x i8] c"\F7H", [2 x i8] c"\F6H", [2 x i8] c"\EEK", [2 x i8] c"\F4G", [2 x i8] c"\F5?", [2 x i8] c"\FBF", [2 x i8] c"\EFK", [2 x i8] c"\F2H", [2 x i8] c"\F0C", [2 x i8] c"\F85", [2 x i8] c"\F2;", [2 x i8] c"\F74", [2 x i8] c"\F5D", [2 x i8] c"\09\FE", [2 x i8] c"\1E\F6", [2 x i8] c"\1F\FC", [2 x i8] c"!\FF", [2 x i8] c"!\07", [2 x i8] c"\1F\0C", [2 x i8] c"%\17", [2 x i8] c"\1F&", [2 x i8] c"\14@", [2 x i8] c"\F7G", [2 x i8] c"\F9%", [2 x i8] c"\F8,", [2 x i8] c"\F51", [2 x i8] c"\F68", [2 x i8] c"\F4;", [2 x i8] c"\F8?", [2 x i8] c"\F7C", [2 x i8] c"\FAD", [2 x i8] c"\F6O", [2 x i8] c"\FDN", [2 x i8] c"\F8J", [2 x i8] c"\F7H", [2 x i8] c"\F6H", [2 x i8] c"\EEK", [2 x i8] c"\F4G", [2 x i8] c"\F5?", [2 x i8] c"\FBF", [2 x i8] c"\EFK", [2 x i8] c"\F2H", [2 x i8] c"\F0C", [2 x i8] c"\F85", [2 x i8] c"\F2;", [2 x i8] c"\F74", [2 x i8] c"\F5D", [2 x i8] c"\09\FE", [2 x i8] c"\1E\F6", [2 x i8] c"\1F\FC", [2 x i8] c"!\FF", [2 x i8] c"!\07", [2 x i8] c"\1F\0C", [2 x i8] c"%\17", [2 x i8] c"\1F&", [2 x i8] c"\14@"]], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @x264_cabac_context_init(ptr nocapture noundef writeonly %cb, i32 noundef %i_slice_type, i32 noundef %i_qp, i32 noundef %i_model) local_unnamed_addr #0 {
iter.check:
  %cmp = icmp eq i32 %i_slice_type, 2
  %idxprom = sext i32 %i_model to i64
  %arrayidx = getelementptr inbounds [3 x [460 x [2 x i8]]], ptr @x264_cabac_context_init_PB, i64 0, i64 %idxprom
  %cabac_context_init.0 = select i1 %cmp, ptr @x264_cabac_context_init_I, ptr %arrayidx
  %state14 = getelementptr inbounds i8, ptr %cb, i64 52
  %scevgep = getelementptr i8, ptr %cb, i64 512
  %scevgep28 = getelementptr i8, ptr %cabac_context_init.0, i64 920
  %bound0 = icmp ult ptr %state14, %scevgep28
  %bound1 = icmp ult ptr %cabac_context_init.0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader, label %vector.ph

for.body.preheader:                               ; preds = %vec.epilog.vector.body, %iter.check
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 456, %vec.epilog.vector.body ]
  br label %for.body

vector.ph:                                        ; preds = %iter.check
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i_qp, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %0 = or disjoint i64 %index, 1
  %1 = or disjoint i64 %index, 2
  %2 = or disjoint i64 %index, 3
  %3 = or disjoint i64 %index, 4
  %4 = or disjoint i64 %index, 5
  %5 = or disjoint i64 %index, 6
  %6 = or disjoint i64 %index, 7
  %7 = or disjoint i64 %index, 8
  %8 = or disjoint i64 %index, 9
  %9 = or disjoint i64 %index, 10
  %10 = or disjoint i64 %index, 11
  %11 = or disjoint i64 %index, 12
  %12 = or disjoint i64 %index, 13
  %13 = or disjoint i64 %index, 14
  %14 = or disjoint i64 %index, 15
  %15 = or disjoint i64 %index, 16
  %16 = or disjoint i64 %index, 17
  %17 = or disjoint i64 %index, 18
  %18 = or disjoint i64 %index, 19
  %19 = or disjoint i64 %index, 20
  %20 = or disjoint i64 %index, 21
  %21 = or disjoint i64 %index, 22
  %22 = or disjoint i64 %index, 23
  %23 = or disjoint i64 %index, 24
  %24 = or disjoint i64 %index, 25
  %25 = or disjoint i64 %index, 26
  %26 = or disjoint i64 %index, 27
  %27 = or disjoint i64 %index, 28
  %28 = or disjoint i64 %index, 29
  %29 = or disjoint i64 %index, 30
  %30 = or disjoint i64 %index, 31
  %31 = or disjoint i64 %index, 32
  %32 = or disjoint i64 %index, 33
  %33 = or disjoint i64 %index, 34
  %34 = or disjoint i64 %index, 35
  %35 = or disjoint i64 %index, 36
  %36 = or disjoint i64 %index, 37
  %37 = or disjoint i64 %index, 38
  %38 = or disjoint i64 %index, 39
  %39 = or disjoint i64 %index, 40
  %40 = or disjoint i64 %index, 41
  %41 = or disjoint i64 %index, 42
  %42 = or disjoint i64 %index, 43
  %43 = or disjoint i64 %index, 44
  %44 = or disjoint i64 %index, 45
  %45 = or disjoint i64 %index, 46
  %46 = or disjoint i64 %index, 47
  %47 = or disjoint i64 %index, 48
  %48 = or disjoint i64 %index, 49
  %49 = or disjoint i64 %index, 50
  %50 = or disjoint i64 %index, 51
  %51 = or disjoint i64 %index, 52
  %52 = or disjoint i64 %index, 53
  %53 = or disjoint i64 %index, 54
  %54 = or disjoint i64 %index, 55
  %55 = or disjoint i64 %index, 56
  %56 = or disjoint i64 %index, 57
  %57 = or disjoint i64 %index, 58
  %58 = or disjoint i64 %index, 59
  %59 = or disjoint i64 %index, 60
  %60 = or disjoint i64 %index, 61
  %61 = or disjoint i64 %index, 62
  %62 = or disjoint i64 %index, 63
  %63 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %index
  %64 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %0
  %65 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %1
  %66 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %2
  %67 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %3
  %68 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %4
  %69 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %5
  %70 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %6
  %71 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %7
  %72 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %8
  %73 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %9
  %74 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %10
  %75 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %11
  %76 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %12
  %77 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %13
  %78 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %14
  %79 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %15
  %80 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %16
  %81 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %17
  %82 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %18
  %83 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %19
  %84 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %20
  %85 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %21
  %86 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %22
  %87 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %23
  %88 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %24
  %89 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %25
  %90 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %26
  %91 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %27
  %92 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %28
  %93 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %29
  %94 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %30
  %95 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %31
  %96 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %32
  %97 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %33
  %98 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %34
  %99 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %35
  %100 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %36
  %101 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %37
  %102 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %38
  %103 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %39
  %104 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %40
  %105 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %41
  %106 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %42
  %107 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %43
  %108 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %44
  %109 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %45
  %110 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %46
  %111 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %47
  %112 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %48
  %113 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %49
  %114 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %50
  %115 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %51
  %116 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %52
  %117 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %53
  %118 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %54
  %119 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %55
  %120 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %56
  %121 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %57
  %122 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %58
  %123 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %59
  %124 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %60
  %125 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %61
  %126 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %62
  %127 = load i8, ptr %63, align 8, !alias.scope !5
  %128 = load i8, ptr %64, align 2, !alias.scope !5
  %129 = load i8, ptr %65, align 4, !alias.scope !5
  %130 = load i8, ptr %66, align 2, !alias.scope !5
  %131 = load i8, ptr %67, align 8, !alias.scope !5
  %132 = load i8, ptr %68, align 2, !alias.scope !5
  %133 = load i8, ptr %69, align 4, !alias.scope !5
  %134 = load i8, ptr %70, align 2, !alias.scope !5
  %135 = load i8, ptr %71, align 8, !alias.scope !5
  %136 = load i8, ptr %72, align 2, !alias.scope !5
  %137 = load i8, ptr %73, align 4, !alias.scope !5
  %138 = load i8, ptr %74, align 2, !alias.scope !5
  %139 = load i8, ptr %75, align 8, !alias.scope !5
  %140 = load i8, ptr %76, align 2, !alias.scope !5
  %141 = load i8, ptr %77, align 4, !alias.scope !5
  %142 = load i8, ptr %78, align 2, !alias.scope !5
  %143 = insertelement <16 x i8> poison, i8 %127, i64 0
  %144 = insertelement <16 x i8> %143, i8 %128, i64 1
  %145 = insertelement <16 x i8> %144, i8 %129, i64 2
  %146 = insertelement <16 x i8> %145, i8 %130, i64 3
  %147 = insertelement <16 x i8> %146, i8 %131, i64 4
  %148 = insertelement <16 x i8> %147, i8 %132, i64 5
  %149 = insertelement <16 x i8> %148, i8 %133, i64 6
  %150 = insertelement <16 x i8> %149, i8 %134, i64 7
  %151 = insertelement <16 x i8> %150, i8 %135, i64 8
  %152 = insertelement <16 x i8> %151, i8 %136, i64 9
  %153 = insertelement <16 x i8> %152, i8 %137, i64 10
  %154 = insertelement <16 x i8> %153, i8 %138, i64 11
  %155 = insertelement <16 x i8> %154, i8 %139, i64 12
  %156 = insertelement <16 x i8> %155, i8 %140, i64 13
  %157 = insertelement <16 x i8> %156, i8 %141, i64 14
  %158 = insertelement <16 x i8> %157, i8 %142, i64 15
  %159 = load i8, ptr %79, align 8, !alias.scope !5
  %160 = load i8, ptr %80, align 2, !alias.scope !5
  %161 = load i8, ptr %81, align 4, !alias.scope !5
  %162 = load i8, ptr %82, align 2, !alias.scope !5
  %163 = load i8, ptr %83, align 8, !alias.scope !5
  %164 = load i8, ptr %84, align 2, !alias.scope !5
  %165 = load i8, ptr %85, align 4, !alias.scope !5
  %166 = load i8, ptr %86, align 2, !alias.scope !5
  %167 = load i8, ptr %87, align 8, !alias.scope !5
  %168 = load i8, ptr %88, align 2, !alias.scope !5
  %169 = load i8, ptr %89, align 4, !alias.scope !5
  %170 = load i8, ptr %90, align 2, !alias.scope !5
  %171 = load i8, ptr %91, align 8, !alias.scope !5
  %172 = load i8, ptr %92, align 2, !alias.scope !5
  %173 = load i8, ptr %93, align 4, !alias.scope !5
  %174 = load i8, ptr %94, align 2, !alias.scope !5
  %175 = insertelement <16 x i8> poison, i8 %159, i64 0
  %176 = insertelement <16 x i8> %175, i8 %160, i64 1
  %177 = insertelement <16 x i8> %176, i8 %161, i64 2
  %178 = insertelement <16 x i8> %177, i8 %162, i64 3
  %179 = insertelement <16 x i8> %178, i8 %163, i64 4
  %180 = insertelement <16 x i8> %179, i8 %164, i64 5
  %181 = insertelement <16 x i8> %180, i8 %165, i64 6
  %182 = insertelement <16 x i8> %181, i8 %166, i64 7
  %183 = insertelement <16 x i8> %182, i8 %167, i64 8
  %184 = insertelement <16 x i8> %183, i8 %168, i64 9
  %185 = insertelement <16 x i8> %184, i8 %169, i64 10
  %186 = insertelement <16 x i8> %185, i8 %170, i64 11
  %187 = insertelement <16 x i8> %186, i8 %171, i64 12
  %188 = insertelement <16 x i8> %187, i8 %172, i64 13
  %189 = insertelement <16 x i8> %188, i8 %173, i64 14
  %190 = insertelement <16 x i8> %189, i8 %174, i64 15
  %191 = load i8, ptr %95, align 8, !alias.scope !5
  %192 = load i8, ptr %96, align 2, !alias.scope !5
  %193 = load i8, ptr %97, align 4, !alias.scope !5
  %194 = load i8, ptr %98, align 2, !alias.scope !5
  %195 = load i8, ptr %99, align 8, !alias.scope !5
  %196 = load i8, ptr %100, align 2, !alias.scope !5
  %197 = load i8, ptr %101, align 4, !alias.scope !5
  %198 = load i8, ptr %102, align 2, !alias.scope !5
  %199 = load i8, ptr %103, align 8, !alias.scope !5
  %200 = load i8, ptr %104, align 2, !alias.scope !5
  %201 = load i8, ptr %105, align 4, !alias.scope !5
  %202 = load i8, ptr %106, align 2, !alias.scope !5
  %203 = load i8, ptr %107, align 8, !alias.scope !5
  %204 = load i8, ptr %108, align 2, !alias.scope !5
  %205 = load i8, ptr %109, align 4, !alias.scope !5
  %206 = load i8, ptr %110, align 2, !alias.scope !5
  %207 = insertelement <16 x i8> poison, i8 %191, i64 0
  %208 = insertelement <16 x i8> %207, i8 %192, i64 1
  %209 = insertelement <16 x i8> %208, i8 %193, i64 2
  %210 = insertelement <16 x i8> %209, i8 %194, i64 3
  %211 = insertelement <16 x i8> %210, i8 %195, i64 4
  %212 = insertelement <16 x i8> %211, i8 %196, i64 5
  %213 = insertelement <16 x i8> %212, i8 %197, i64 6
  %214 = insertelement <16 x i8> %213, i8 %198, i64 7
  %215 = insertelement <16 x i8> %214, i8 %199, i64 8
  %216 = insertelement <16 x i8> %215, i8 %200, i64 9
  %217 = insertelement <16 x i8> %216, i8 %201, i64 10
  %218 = insertelement <16 x i8> %217, i8 %202, i64 11
  %219 = insertelement <16 x i8> %218, i8 %203, i64 12
  %220 = insertelement <16 x i8> %219, i8 %204, i64 13
  %221 = insertelement <16 x i8> %220, i8 %205, i64 14
  %222 = insertelement <16 x i8> %221, i8 %206, i64 15
  %223 = load i8, ptr %111, align 8, !alias.scope !5
  %224 = load i8, ptr %112, align 2, !alias.scope !5
  %225 = load i8, ptr %113, align 4, !alias.scope !5
  %226 = load i8, ptr %114, align 2, !alias.scope !5
  %227 = load i8, ptr %115, align 8, !alias.scope !5
  %228 = load i8, ptr %116, align 2, !alias.scope !5
  %229 = load i8, ptr %117, align 4, !alias.scope !5
  %230 = load i8, ptr %118, align 2, !alias.scope !5
  %231 = load i8, ptr %119, align 8, !alias.scope !5
  %232 = load i8, ptr %120, align 2, !alias.scope !5
  %233 = load i8, ptr %121, align 4, !alias.scope !5
  %234 = load i8, ptr %122, align 2, !alias.scope !5
  %235 = load i8, ptr %123, align 8, !alias.scope !5
  %236 = load i8, ptr %124, align 2, !alias.scope !5
  %237 = load i8, ptr %125, align 4, !alias.scope !5
  %238 = load i8, ptr %126, align 2, !alias.scope !5
  %239 = insertelement <16 x i8> poison, i8 %223, i64 0
  %240 = insertelement <16 x i8> %239, i8 %224, i64 1
  %241 = insertelement <16 x i8> %240, i8 %225, i64 2
  %242 = insertelement <16 x i8> %241, i8 %226, i64 3
  %243 = insertelement <16 x i8> %242, i8 %227, i64 4
  %244 = insertelement <16 x i8> %243, i8 %228, i64 5
  %245 = insertelement <16 x i8> %244, i8 %229, i64 6
  %246 = insertelement <16 x i8> %245, i8 %230, i64 7
  %247 = insertelement <16 x i8> %246, i8 %231, i64 8
  %248 = insertelement <16 x i8> %247, i8 %232, i64 9
  %249 = insertelement <16 x i8> %248, i8 %233, i64 10
  %250 = insertelement <16 x i8> %249, i8 %234, i64 11
  %251 = insertelement <16 x i8> %250, i8 %235, i64 12
  %252 = insertelement <16 x i8> %251, i8 %236, i64 13
  %253 = insertelement <16 x i8> %252, i8 %237, i64 14
  %254 = insertelement <16 x i8> %253, i8 %238, i64 15
  %255 = sext <16 x i8> %158 to <16 x i32>
  %256 = sext <16 x i8> %190 to <16 x i32>
  %257 = sext <16 x i8> %222 to <16 x i32>
  %258 = sext <16 x i8> %254 to <16 x i32>
  %259 = mul nsw <16 x i32> %broadcast.splat, %255
  %260 = mul nsw <16 x i32> %broadcast.splat, %256
  %261 = mul nsw <16 x i32> %broadcast.splat, %257
  %262 = mul nsw <16 x i32> %broadcast.splat, %258
  %263 = ashr <16 x i32> %259, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %264 = ashr <16 x i32> %260, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %265 = ashr <16 x i32> %261, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %266 = ashr <16 x i32> %262, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %267 = getelementptr inbounds i8, ptr %63, i64 1
  %268 = getelementptr inbounds i8, ptr %64, i64 1
  %269 = getelementptr inbounds i8, ptr %65, i64 1
  %270 = getelementptr inbounds i8, ptr %66, i64 1
  %271 = getelementptr inbounds i8, ptr %67, i64 1
  %272 = getelementptr inbounds i8, ptr %68, i64 1
  %273 = getelementptr inbounds i8, ptr %69, i64 1
  %274 = getelementptr inbounds i8, ptr %70, i64 1
  %275 = getelementptr inbounds i8, ptr %71, i64 1
  %276 = getelementptr inbounds i8, ptr %72, i64 1
  %277 = getelementptr inbounds i8, ptr %73, i64 1
  %278 = getelementptr inbounds i8, ptr %74, i64 1
  %279 = getelementptr inbounds i8, ptr %75, i64 1
  %280 = getelementptr inbounds i8, ptr %76, i64 1
  %281 = getelementptr inbounds i8, ptr %77, i64 1
  %282 = getelementptr inbounds i8, ptr %78, i64 1
  %283 = getelementptr inbounds i8, ptr %79, i64 1
  %284 = getelementptr inbounds i8, ptr %80, i64 1
  %285 = getelementptr inbounds i8, ptr %81, i64 1
  %286 = getelementptr inbounds i8, ptr %82, i64 1
  %287 = getelementptr inbounds i8, ptr %83, i64 1
  %288 = getelementptr inbounds i8, ptr %84, i64 1
  %289 = getelementptr inbounds i8, ptr %85, i64 1
  %290 = getelementptr inbounds i8, ptr %86, i64 1
  %291 = getelementptr inbounds i8, ptr %87, i64 1
  %292 = getelementptr inbounds i8, ptr %88, i64 1
  %293 = getelementptr inbounds i8, ptr %89, i64 1
  %294 = getelementptr inbounds i8, ptr %90, i64 1
  %295 = getelementptr inbounds i8, ptr %91, i64 1
  %296 = getelementptr inbounds i8, ptr %92, i64 1
  %297 = getelementptr inbounds i8, ptr %93, i64 1
  %298 = getelementptr inbounds i8, ptr %94, i64 1
  %299 = getelementptr inbounds i8, ptr %95, i64 1
  %300 = getelementptr inbounds i8, ptr %96, i64 1
  %301 = getelementptr inbounds i8, ptr %97, i64 1
  %302 = getelementptr inbounds i8, ptr %98, i64 1
  %303 = getelementptr inbounds i8, ptr %99, i64 1
  %304 = getelementptr inbounds i8, ptr %100, i64 1
  %305 = getelementptr inbounds i8, ptr %101, i64 1
  %306 = getelementptr inbounds i8, ptr %102, i64 1
  %307 = getelementptr inbounds i8, ptr %103, i64 1
  %308 = getelementptr inbounds i8, ptr %104, i64 1
  %309 = getelementptr inbounds i8, ptr %105, i64 1
  %310 = getelementptr inbounds i8, ptr %106, i64 1
  %311 = getelementptr inbounds i8, ptr %107, i64 1
  %312 = getelementptr inbounds i8, ptr %108, i64 1
  %313 = getelementptr inbounds i8, ptr %109, i64 1
  %314 = getelementptr inbounds i8, ptr %110, i64 1
  %315 = getelementptr inbounds i8, ptr %111, i64 1
  %316 = getelementptr inbounds i8, ptr %112, i64 1
  %317 = getelementptr inbounds i8, ptr %113, i64 1
  %318 = getelementptr inbounds i8, ptr %114, i64 1
  %319 = getelementptr inbounds i8, ptr %115, i64 1
  %320 = getelementptr inbounds i8, ptr %116, i64 1
  %321 = getelementptr inbounds i8, ptr %117, i64 1
  %322 = getelementptr inbounds i8, ptr %118, i64 1
  %323 = getelementptr inbounds i8, ptr %119, i64 1
  %324 = getelementptr inbounds i8, ptr %120, i64 1
  %325 = getelementptr inbounds i8, ptr %121, i64 1
  %326 = getelementptr inbounds i8, ptr %122, i64 1
  %327 = getelementptr inbounds i8, ptr %123, i64 1
  %328 = getelementptr inbounds i8, ptr %124, i64 1
  %329 = getelementptr inbounds i8, ptr %125, i64 1
  %330 = getelementptr inbounds i8, ptr %126, i64 1
  %331 = load i8, ptr %267, align 1, !alias.scope !5
  %332 = load i8, ptr %268, align 1, !alias.scope !5
  %333 = load i8, ptr %269, align 1, !alias.scope !5
  %334 = load i8, ptr %270, align 1, !alias.scope !5
  %335 = load i8, ptr %271, align 1, !alias.scope !5
  %336 = load i8, ptr %272, align 1, !alias.scope !5
  %337 = load i8, ptr %273, align 1, !alias.scope !5
  %338 = load i8, ptr %274, align 1, !alias.scope !5
  %339 = load i8, ptr %275, align 1, !alias.scope !5
  %340 = load i8, ptr %276, align 1, !alias.scope !5
  %341 = load i8, ptr %277, align 1, !alias.scope !5
  %342 = load i8, ptr %278, align 1, !alias.scope !5
  %343 = load i8, ptr %279, align 1, !alias.scope !5
  %344 = load i8, ptr %280, align 1, !alias.scope !5
  %345 = load i8, ptr %281, align 1, !alias.scope !5
  %346 = load i8, ptr %282, align 1, !alias.scope !5
  %347 = insertelement <16 x i8> poison, i8 %331, i64 0
  %348 = insertelement <16 x i8> %347, i8 %332, i64 1
  %349 = insertelement <16 x i8> %348, i8 %333, i64 2
  %350 = insertelement <16 x i8> %349, i8 %334, i64 3
  %351 = insertelement <16 x i8> %350, i8 %335, i64 4
  %352 = insertelement <16 x i8> %351, i8 %336, i64 5
  %353 = insertelement <16 x i8> %352, i8 %337, i64 6
  %354 = insertelement <16 x i8> %353, i8 %338, i64 7
  %355 = insertelement <16 x i8> %354, i8 %339, i64 8
  %356 = insertelement <16 x i8> %355, i8 %340, i64 9
  %357 = insertelement <16 x i8> %356, i8 %341, i64 10
  %358 = insertelement <16 x i8> %357, i8 %342, i64 11
  %359 = insertelement <16 x i8> %358, i8 %343, i64 12
  %360 = insertelement <16 x i8> %359, i8 %344, i64 13
  %361 = insertelement <16 x i8> %360, i8 %345, i64 14
  %362 = insertelement <16 x i8> %361, i8 %346, i64 15
  %363 = load i8, ptr %283, align 1, !alias.scope !5
  %364 = load i8, ptr %284, align 1, !alias.scope !5
  %365 = load i8, ptr %285, align 1, !alias.scope !5
  %366 = load i8, ptr %286, align 1, !alias.scope !5
  %367 = load i8, ptr %287, align 1, !alias.scope !5
  %368 = load i8, ptr %288, align 1, !alias.scope !5
  %369 = load i8, ptr %289, align 1, !alias.scope !5
  %370 = load i8, ptr %290, align 1, !alias.scope !5
  %371 = load i8, ptr %291, align 1, !alias.scope !5
  %372 = load i8, ptr %292, align 1, !alias.scope !5
  %373 = load i8, ptr %293, align 1, !alias.scope !5
  %374 = load i8, ptr %294, align 1, !alias.scope !5
  %375 = load i8, ptr %295, align 1, !alias.scope !5
  %376 = load i8, ptr %296, align 1, !alias.scope !5
  %377 = load i8, ptr %297, align 1, !alias.scope !5
  %378 = load i8, ptr %298, align 1, !alias.scope !5
  %379 = insertelement <16 x i8> poison, i8 %363, i64 0
  %380 = insertelement <16 x i8> %379, i8 %364, i64 1
  %381 = insertelement <16 x i8> %380, i8 %365, i64 2
  %382 = insertelement <16 x i8> %381, i8 %366, i64 3
  %383 = insertelement <16 x i8> %382, i8 %367, i64 4
  %384 = insertelement <16 x i8> %383, i8 %368, i64 5
  %385 = insertelement <16 x i8> %384, i8 %369, i64 6
  %386 = insertelement <16 x i8> %385, i8 %370, i64 7
  %387 = insertelement <16 x i8> %386, i8 %371, i64 8
  %388 = insertelement <16 x i8> %387, i8 %372, i64 9
  %389 = insertelement <16 x i8> %388, i8 %373, i64 10
  %390 = insertelement <16 x i8> %389, i8 %374, i64 11
  %391 = insertelement <16 x i8> %390, i8 %375, i64 12
  %392 = insertelement <16 x i8> %391, i8 %376, i64 13
  %393 = insertelement <16 x i8> %392, i8 %377, i64 14
  %394 = insertelement <16 x i8> %393, i8 %378, i64 15
  %395 = load i8, ptr %299, align 1, !alias.scope !5
  %396 = load i8, ptr %300, align 1, !alias.scope !5
  %397 = load i8, ptr %301, align 1, !alias.scope !5
  %398 = load i8, ptr %302, align 1, !alias.scope !5
  %399 = load i8, ptr %303, align 1, !alias.scope !5
  %400 = load i8, ptr %304, align 1, !alias.scope !5
  %401 = load i8, ptr %305, align 1, !alias.scope !5
  %402 = load i8, ptr %306, align 1, !alias.scope !5
  %403 = load i8, ptr %307, align 1, !alias.scope !5
  %404 = load i8, ptr %308, align 1, !alias.scope !5
  %405 = load i8, ptr %309, align 1, !alias.scope !5
  %406 = load i8, ptr %310, align 1, !alias.scope !5
  %407 = load i8, ptr %311, align 1, !alias.scope !5
  %408 = load i8, ptr %312, align 1, !alias.scope !5
  %409 = load i8, ptr %313, align 1, !alias.scope !5
  %410 = load i8, ptr %314, align 1, !alias.scope !5
  %411 = insertelement <16 x i8> poison, i8 %395, i64 0
  %412 = insertelement <16 x i8> %411, i8 %396, i64 1
  %413 = insertelement <16 x i8> %412, i8 %397, i64 2
  %414 = insertelement <16 x i8> %413, i8 %398, i64 3
  %415 = insertelement <16 x i8> %414, i8 %399, i64 4
  %416 = insertelement <16 x i8> %415, i8 %400, i64 5
  %417 = insertelement <16 x i8> %416, i8 %401, i64 6
  %418 = insertelement <16 x i8> %417, i8 %402, i64 7
  %419 = insertelement <16 x i8> %418, i8 %403, i64 8
  %420 = insertelement <16 x i8> %419, i8 %404, i64 9
  %421 = insertelement <16 x i8> %420, i8 %405, i64 10
  %422 = insertelement <16 x i8> %421, i8 %406, i64 11
  %423 = insertelement <16 x i8> %422, i8 %407, i64 12
  %424 = insertelement <16 x i8> %423, i8 %408, i64 13
  %425 = insertelement <16 x i8> %424, i8 %409, i64 14
  %426 = insertelement <16 x i8> %425, i8 %410, i64 15
  %427 = load i8, ptr %315, align 1, !alias.scope !5
  %428 = load i8, ptr %316, align 1, !alias.scope !5
  %429 = load i8, ptr %317, align 1, !alias.scope !5
  %430 = load i8, ptr %318, align 1, !alias.scope !5
  %431 = load i8, ptr %319, align 1, !alias.scope !5
  %432 = load i8, ptr %320, align 1, !alias.scope !5
  %433 = load i8, ptr %321, align 1, !alias.scope !5
  %434 = load i8, ptr %322, align 1, !alias.scope !5
  %435 = load i8, ptr %323, align 1, !alias.scope !5
  %436 = load i8, ptr %324, align 1, !alias.scope !5
  %437 = load i8, ptr %325, align 1, !alias.scope !5
  %438 = load i8, ptr %326, align 1, !alias.scope !5
  %439 = load i8, ptr %327, align 1, !alias.scope !5
  %440 = load i8, ptr %328, align 1, !alias.scope !5
  %441 = load i8, ptr %329, align 1, !alias.scope !5
  %442 = load i8, ptr %330, align 1, !alias.scope !5
  %443 = insertelement <16 x i8> poison, i8 %427, i64 0
  %444 = insertelement <16 x i8> %443, i8 %428, i64 1
  %445 = insertelement <16 x i8> %444, i8 %429, i64 2
  %446 = insertelement <16 x i8> %445, i8 %430, i64 3
  %447 = insertelement <16 x i8> %446, i8 %431, i64 4
  %448 = insertelement <16 x i8> %447, i8 %432, i64 5
  %449 = insertelement <16 x i8> %448, i8 %433, i64 6
  %450 = insertelement <16 x i8> %449, i8 %434, i64 7
  %451 = insertelement <16 x i8> %450, i8 %435, i64 8
  %452 = insertelement <16 x i8> %451, i8 %436, i64 9
  %453 = insertelement <16 x i8> %452, i8 %437, i64 10
  %454 = insertelement <16 x i8> %453, i8 %438, i64 11
  %455 = insertelement <16 x i8> %454, i8 %439, i64 12
  %456 = insertelement <16 x i8> %455, i8 %440, i64 13
  %457 = insertelement <16 x i8> %456, i8 %441, i64 14
  %458 = insertelement <16 x i8> %457, i8 %442, i64 15
  %459 = sext <16 x i8> %362 to <16 x i32>
  %460 = sext <16 x i8> %394 to <16 x i32>
  %461 = sext <16 x i8> %426 to <16 x i32>
  %462 = sext <16 x i8> %458 to <16 x i32>
  %463 = add nsw <16 x i32> %263, %459
  %464 = add nsw <16 x i32> %264, %460
  %465 = add nsw <16 x i32> %265, %461
  %466 = add nsw <16 x i32> %266, %462
  %467 = icmp slt <16 x i32> %463, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %468 = icmp slt <16 x i32> %464, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %469 = icmp slt <16 x i32> %465, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %470 = icmp slt <16 x i32> %466, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %471 = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %463, <16 x i32> <i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126>)
  %472 = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %464, <16 x i32> <i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126>)
  %473 = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %465, <16 x i32> <i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126>)
  %474 = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %466, <16 x i32> <i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126>)
  %475 = select <16 x i1> %467, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, <16 x i32> %471
  %476 = select <16 x i1> %468, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, <16 x i32> %472
  %477 = select <16 x i1> %469, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, <16 x i32> %473
  %478 = select <16 x i1> %470, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, <16 x i32> %474
  %479 = xor <16 x i32> %475, <i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127>
  %480 = xor <16 x i32> %476, <i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127>
  %481 = xor <16 x i32> %477, <i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127>
  %482 = xor <16 x i32> %478, <i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127>
  %483 = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %475, <16 x i32> %479)
  %484 = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %476, <16 x i32> %480)
  %485 = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %477, <16 x i32> %481)
  %486 = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %478, <16 x i32> %482)
  %487 = shl nuw nsw <16 x i32> %483, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %488 = shl nuw nsw <16 x i32> %484, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %489 = shl nuw nsw <16 x i32> %485, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %490 = shl nuw nsw <16 x i32> %486, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %491 = lshr <16 x i32> %475, <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %492 = lshr <16 x i32> %476, <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %493 = lshr <16 x i32> %477, <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %494 = lshr <16 x i32> %478, <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %495 = or disjoint <16 x i32> %487, %491
  %496 = or disjoint <16 x i32> %488, %492
  %497 = or disjoint <16 x i32> %489, %493
  %498 = or disjoint <16 x i32> %490, %494
  %499 = trunc nuw <16 x i32> %495 to <16 x i8>
  %500 = trunc nuw <16 x i32> %496 to <16 x i8>
  %501 = trunc nuw <16 x i32> %497 to <16 x i8>
  %502 = trunc nuw <16 x i32> %498 to <16 x i8>
  %503 = getelementptr inbounds [460 x i8], ptr %state14, i64 0, i64 %index
  %504 = getelementptr inbounds i8, ptr %503, i64 16
  %505 = getelementptr inbounds i8, ptr %503, i64 32
  %506 = getelementptr inbounds i8, ptr %503, i64 48
  store <16 x i8> %499, ptr %503, align 1, !alias.scope !8, !noalias !5
  store <16 x i8> %500, ptr %504, align 1, !alias.scope !8, !noalias !5
  store <16 x i8> %501, ptr %505, align 1, !alias.scope !8, !noalias !5
  store <16 x i8> %502, ptr %506, align 1, !alias.scope !8, !noalias !5
  %index.next = add nuw i64 %index, 64
  %507 = icmp eq i64 %index.next, 448
  br i1 %507, label %vec.epilog.vector.body, label %vector.body, !llvm.loop !10

vec.epilog.vector.body:                           ; preds = %vector.body
  %broadcast.splatinsert30 = insertelement <8 x i32> poison, i32 %i_qp, i64 0
  %broadcast.splat31 = shufflevector <8 x i32> %broadcast.splatinsert30, <8 x i32> poison, <8 x i32> zeroinitializer
  %508 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 896
  %509 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 898
  %510 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 900
  %511 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 902
  %512 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 904
  %513 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 906
  %514 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 908
  %515 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 910
  %516 = load i8, ptr %508, align 8, !alias.scope !13
  %517 = load i8, ptr %509, align 2, !alias.scope !13
  %518 = load i8, ptr %510, align 4, !alias.scope !13
  %519 = load i8, ptr %511, align 2, !alias.scope !13
  %520 = load i8, ptr %512, align 8, !alias.scope !13
  %521 = load i8, ptr %513, align 2, !alias.scope !13
  %522 = load i8, ptr %514, align 4, !alias.scope !13
  %523 = load i8, ptr %515, align 2, !alias.scope !13
  %524 = insertelement <8 x i8> poison, i8 %516, i64 0
  %525 = insertelement <8 x i8> %524, i8 %517, i64 1
  %526 = insertelement <8 x i8> %525, i8 %518, i64 2
  %527 = insertelement <8 x i8> %526, i8 %519, i64 3
  %528 = insertelement <8 x i8> %527, i8 %520, i64 4
  %529 = insertelement <8 x i8> %528, i8 %521, i64 5
  %530 = insertelement <8 x i8> %529, i8 %522, i64 6
  %531 = insertelement <8 x i8> %530, i8 %523, i64 7
  %532 = sext <8 x i8> %531 to <8 x i32>
  %533 = mul nsw <8 x i32> %broadcast.splat31, %532
  %534 = ashr <8 x i32> %533, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %535 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 897
  %536 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 899
  %537 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 901
  %538 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 903
  %539 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 905
  %540 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 907
  %541 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 909
  %542 = getelementptr inbounds i8, ptr %cabac_context_init.0, i64 911
  %543 = load i8, ptr %535, align 1, !alias.scope !13
  %544 = load i8, ptr %536, align 1, !alias.scope !13
  %545 = load i8, ptr %537, align 1, !alias.scope !13
  %546 = load i8, ptr %538, align 1, !alias.scope !13
  %547 = load i8, ptr %539, align 1, !alias.scope !13
  %548 = load i8, ptr %540, align 1, !alias.scope !13
  %549 = load i8, ptr %541, align 1, !alias.scope !13
  %550 = load i8, ptr %542, align 1, !alias.scope !13
  %551 = insertelement <8 x i8> poison, i8 %543, i64 0
  %552 = insertelement <8 x i8> %551, i8 %544, i64 1
  %553 = insertelement <8 x i8> %552, i8 %545, i64 2
  %554 = insertelement <8 x i8> %553, i8 %546, i64 3
  %555 = insertelement <8 x i8> %554, i8 %547, i64 4
  %556 = insertelement <8 x i8> %555, i8 %548, i64 5
  %557 = insertelement <8 x i8> %556, i8 %549, i64 6
  %558 = insertelement <8 x i8> %557, i8 %550, i64 7
  %559 = sext <8 x i8> %558 to <8 x i32>
  %560 = add nsw <8 x i32> %534, %559
  %561 = icmp slt <8 x i32> %560, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %562 = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %560, <8 x i32> <i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126, i32 126>)
  %563 = select <8 x i1> %561, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, <8 x i32> %562
  %564 = xor <8 x i32> %563, <i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127>
  %565 = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %563, <8 x i32> %564)
  %566 = shl nuw nsw <8 x i32> %565, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %567 = lshr <8 x i32> %563, <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %568 = or disjoint <8 x i32> %566, %567
  %569 = trunc nuw <8 x i32> %568 to <8 x i8>
  %570 = getelementptr inbounds i8, ptr %cb, i64 500
  store <8 x i8> %569, ptr %570, align 1, !alias.scope !16, !noalias !13
  br label %for.body.preheader

for.cond.cleanup:                                 ; preds = %for.body
  ret void

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %arrayidx3 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %indvars.iv
  %571 = load i8, ptr %arrayidx3, align 2
  %conv = sext i8 %571 to i32
  %mul = mul nsw i32 %conv, %i_qp
  %shr = ashr i32 %mul, 4
  %arrayidx7 = getelementptr inbounds i8, ptr %arrayidx3, i64 1
  %572 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %572 to i32
  %add = add nsw i32 %shr, %conv8
  %cmp.i = icmp slt i32 %add, 1
  %573 = tail call i32 @llvm.umin.i32(i32 %add, i32 126)
  %cond5.i = select i1 %cmp.i, i32 1, i32 %573
  %sub = xor i32 %cond5.i, 127
  %574 = tail call i32 @llvm.umin.i32(i32 %cond5.i, i32 %sub)
  %shl = shl nuw nsw i32 %574, 1
  %shr12 = lshr i32 %cond5.i, 6
  %or = or disjoint i32 %shl, %shr12
  %conv13 = trunc nuw i32 %or to i8
  %arrayidx16 = getelementptr inbounds [460 x i8], ptr %state14, i64 0, i64 %indvars.iv
  store i8 %conv13, ptr %arrayidx16, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 460
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_cabac_encode_init_core(ptr nocapture noundef writeonly %cb) local_unnamed_addr #1 {
entry:
  store <4 x i32> <i32 0, i32 510, i32 -9, i32 0>, ptr %cb, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_cabac_encode_init(ptr nocapture noundef writeonly %cb, ptr noundef %p_data, ptr noundef %p_end) local_unnamed_addr #1 {
entry:
  store <4 x i32> <i32 0, i32 510, i32 -9, i32 0>, ptr %cb, align 16
  %p_start = getelementptr inbounds i8, ptr %cb, i64 16
  store ptr %p_data, ptr %p_start, align 16
  %p = getelementptr inbounds i8, ptr %cb, i64 24
  store ptr %p_data, ptr %p, align 8
  %p_end1 = getelementptr inbounds i8, ptr %cb, i64 32
  store ptr %p_end, ptr %p_end1, align 16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_cabac_encode_decision_c(ptr nocapture noundef %cb, i32 noundef %i_ctx, i32 noundef %b) local_unnamed_addr #2 {
entry:
  %state = getelementptr inbounds i8, ptr %cb, i64 52
  %idxprom = sext i32 %i_ctx to i64
  %arrayidx = getelementptr inbounds [460 x i8], ptr %state, i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %shr = lshr i32 %conv, 1
  %idxprom1 = zext nneg i32 %shr to i64
  %i_range = getelementptr inbounds i8, ptr %cb, i64 4
  %1 = load i32, ptr %i_range, align 4
  %shr3 = ashr i32 %1, 6
  %sub = add nsw i32 %shr3, -4
  %idxprom4 = sext i32 %sub to i64
  %arrayidx5 = getelementptr inbounds [64 x [4 x i8]], ptr @x264_cabac_range_lps, i64 0, i64 %idxprom1, i64 %idxprom4
  %2 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %2 to i32
  %sub8 = sub nsw i32 %1, %conv6
  store i32 %sub8, ptr %i_range, align 4
  %and = and i32 %conv, 1
  %cmp.not = icmp eq i32 %and, %b
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %cb, align 16
  %add = add nsw i32 %3, %sub8
  store i32 %add, ptr %cb, align 16
  store i32 %conv6, ptr %i_range, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %idxprom12 = zext i8 %0 to i64
  %idxprom14 = sext i32 %b to i64
  %arrayidx15 = getelementptr inbounds [128 x [2 x i8]], ptr @x264_cabac_transition, i64 0, i64 %idxprom12, i64 %idxprom14
  %4 = load i8, ptr %arrayidx15, align 1
  store i8 %4, ptr %arrayidx, align 1
  %5 = load i32, ptr %i_range, align 4
  %shr.i = ashr i32 %5, 3
  %idxprom.i = sext i32 %shr.i to i64
  %arrayidx.i = getelementptr inbounds [64 x i8], ptr @x264_cabac_renorm_shift, i64 0, i64 %idxprom.i
  %6 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %6 to i32
  %shl.i = shl i32 %5, %conv.i
  store i32 %shl.i, ptr %i_range, align 4
  %7 = load i32, ptr %cb, align 16
  %shl2.i = shl i32 %7, %conv.i
  store i32 %shl2.i, ptr %cb, align 16
  %i_queue.i = getelementptr inbounds i8, ptr %cb, i64 8
  %8 = load i32, ptr %i_queue.i, align 8
  %add.i = add nsw i32 %8, %conv.i
  store i32 %add.i, ptr %i_queue.i, align 8
  %cmp.i.i = icmp sgt i32 %add.i, -1
  br i1 %cmp.i.i, label %if.then.i.i, label %x264_cabac_encode_renorm.exit

if.then.i.i:                                      ; preds = %if.end
  %add.i.i = add nuw nsw i32 %add.i, 10
  %shr.i.i = ashr i32 %shl2.i, %add.i.i
  %shl.i.i = shl i32 1024, %add.i
  %sub.i.i = add nsw i32 %shl.i.i, -1
  %and.i.i = and i32 %sub.i.i, %shl2.i
  store i32 %and.i.i, ptr %cb, align 16
  %sub5.i.i = add nsw i32 %add.i, -8
  store i32 %sub5.i.i, ptr %i_queue.i, align 8
  %and6.i.i = and i32 %shr.i.i, 255
  %cmp7.i.i = icmp eq i32 %and6.i.i, 255
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.else.i.i

if.then8.i.i:                                     ; preds = %if.then.i.i
  %i_bytes_outstanding.i.i = getelementptr inbounds i8, ptr %cb, i64 12
  %9 = load i32, ptr %i_bytes_outstanding.i.i, align 4
  %inc.i.i = add nsw i32 %9, 1
  store i32 %inc.i.i, ptr %i_bytes_outstanding.i.i, align 4
  br label %x264_cabac_encode_renorm.exit

if.else.i.i:                                      ; preds = %if.then.i.i
  %shr9.i.i = lshr i32 %shr.i.i, 8
  %i_bytes_outstanding10.i.i = getelementptr inbounds i8, ptr %cb, i64 12
  %10 = load i32, ptr %i_bytes_outstanding10.i.i, align 4
  %p.i.i = getelementptr inbounds i8, ptr %cb, i64 24
  %11 = load ptr, ptr %p.i.i, align 8
  %arrayidx.i.i = getelementptr inbounds i8, ptr %11, i64 -1
  %12 = load i8, ptr %arrayidx.i.i, align 1
  %13 = trunc i32 %shr9.i.i to i8
  %conv12.i.i = add i8 %12, %13
  store i8 %conv12.i.i, ptr %arrayidx.i.i, align 1
  %cmp1338.i.i = icmp sgt i32 %10, 0
  br i1 %cmp1338.i.i, label %while.body.lr.ph.i.i, label %while.end.i.i

while.body.lr.ph.i.i:                             ; preds = %if.else.i.i
  %conv16.i.i = add i8 %13, -1
  %xtraiter = and i32 %10, 3
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %while.body.i.i.prol.loopexit, label %while.body.i.i.prol

while.body.i.i.prol:                              ; preds = %while.body.lr.ph.i.i, %while.body.i.i.prol
  %bytes_outstanding.039.i.i.prol = phi i32 [ %dec.i.i.prol, %while.body.i.i.prol ], [ %10, %while.body.lr.ph.i.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %while.body.i.i.prol ], [ 0, %while.body.lr.ph.i.i ]
  %14 = load ptr, ptr %p.i.i, align 8
  %incdec.ptr.i.i.prol = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %incdec.ptr.i.i.prol, ptr %p.i.i, align 8
  store i8 %conv16.i.i, ptr %14, align 1
  %dec.i.i.prol = add nsw i32 %bytes_outstanding.039.i.i.prol, -1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %while.body.i.i.prol.loopexit, label %while.body.i.i.prol, !llvm.loop !19

while.body.i.i.prol.loopexit:                     ; preds = %while.body.i.i.prol, %while.body.lr.ph.i.i
  %bytes_outstanding.039.i.i.unr = phi i32 [ %10, %while.body.lr.ph.i.i ], [ %dec.i.i.prol, %while.body.i.i.prol ]
  %15 = icmp ult i32 %10, 4
  br i1 %15, label %while.end.i.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.prol.loopexit, %while.body.i.i
  %bytes_outstanding.039.i.i = phi i32 [ %dec.i.i.3, %while.body.i.i ], [ %bytes_outstanding.039.i.i.unr, %while.body.i.i.prol.loopexit ]
  %16 = load ptr, ptr %p.i.i, align 8
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %incdec.ptr.i.i, ptr %p.i.i, align 8
  store i8 %conv16.i.i, ptr %16, align 1
  %17 = load ptr, ptr %p.i.i, align 8
  %incdec.ptr.i.i.1 = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %incdec.ptr.i.i.1, ptr %p.i.i, align 8
  store i8 %conv16.i.i, ptr %17, align 1
  %18 = load ptr, ptr %p.i.i, align 8
  %incdec.ptr.i.i.2 = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %incdec.ptr.i.i.2, ptr %p.i.i, align 8
  store i8 %conv16.i.i, ptr %18, align 1
  %19 = load ptr, ptr %p.i.i, align 8
  %incdec.ptr.i.i.3 = getelementptr inbounds i8, ptr %19, i64 1
  store ptr %incdec.ptr.i.i.3, ptr %p.i.i, align 8
  store i8 %conv16.i.i, ptr %19, align 1
  %dec.i.i.3 = add nsw i32 %bytes_outstanding.039.i.i, -4
  %20 = add i32 %bytes_outstanding.039.i.i, -5
  %cmp13.i.i.3 = icmp ult i32 %20, -2
  br i1 %cmp13.i.i.3, label %while.body.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.prol.loopexit, %while.body.i.i, %if.else.i.i
  %conv18.i.i = trunc i32 %shr.i.i to i8
  %21 = load ptr, ptr %p.i.i, align 8
  %incdec.ptr20.i.i = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %incdec.ptr20.i.i, ptr %p.i.i, align 8
  store i8 %conv18.i.i, ptr %21, align 1
  store i32 0, ptr %i_bytes_outstanding10.i.i, align 4
  br label %x264_cabac_encode_renorm.exit

x264_cabac_encode_renorm.exit:                    ; preds = %if.end, %if.then8.i.i, %while.end.i.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_cabac_encode_bypass_c(ptr nocapture noundef %cb, i32 noundef %b) local_unnamed_addr #2 {
entry:
  %0 = load i32, ptr %cb, align 16
  %shl = shl i32 %0, 1
  %sub = sub nsw i32 0, %b
  %i_range = getelementptr inbounds i8, ptr %cb, i64 4
  %1 = load i32, ptr %i_range, align 4
  %and = and i32 %1, %sub
  %add = add nsw i32 %and, %shl
  store i32 %add, ptr %cb, align 16
  %i_queue = getelementptr inbounds i8, ptr %cb, i64 8
  %2 = load i32, ptr %i_queue, align 8
  %add2 = add nsw i32 %2, 1
  store i32 %add2, ptr %i_queue, align 8
  %cmp.i = icmp sgt i32 %2, -2
  br i1 %cmp.i, label %if.then.i, label %x264_cabac_putbyte.exit

if.then.i:                                        ; preds = %entry
  %add.i = add nsw i32 %2, 11
  %shr.i = ashr i32 %add, %add.i
  %shl.i = shl i32 1024, %add2
  %sub.i = add nsw i32 %shl.i, -1
  %and.i = and i32 %sub.i, %add
  store i32 %and.i, ptr %cb, align 16
  %sub5.i = add nsw i32 %2, -7
  store i32 %sub5.i, ptr %i_queue, align 8
  %and6.i = and i32 %shr.i, 255
  %cmp7.i = icmp eq i32 %and6.i, 255
  br i1 %cmp7.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.then.i
  %i_bytes_outstanding.i = getelementptr inbounds i8, ptr %cb, i64 12
  %3 = load i32, ptr %i_bytes_outstanding.i, align 4
  %inc.i = add nsw i32 %3, 1
  store i32 %inc.i, ptr %i_bytes_outstanding.i, align 4
  br label %x264_cabac_putbyte.exit

if.else.i:                                        ; preds = %if.then.i
  %shr9.i = lshr i32 %shr.i, 8
  %i_bytes_outstanding10.i = getelementptr inbounds i8, ptr %cb, i64 12
  %4 = load i32, ptr %i_bytes_outstanding10.i, align 4
  %p.i = getelementptr inbounds i8, ptr %cb, i64 24
  %5 = load ptr, ptr %p.i, align 8
  %arrayidx.i = getelementptr inbounds i8, ptr %5, i64 -1
  %6 = load i8, ptr %arrayidx.i, align 1
  %7 = trunc i32 %shr9.i to i8
  %conv12.i = add i8 %6, %7
  store i8 %conv12.i, ptr %arrayidx.i, align 1
  %cmp1338.i = icmp sgt i32 %4, 0
  br i1 %cmp1338.i, label %while.body.lr.ph.i, label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.else.i
  %conv16.i = add i8 %7, -1
  %xtraiter = and i32 %4, 3
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %while.body.i.prol.loopexit, label %while.body.i.prol

while.body.i.prol:                                ; preds = %while.body.lr.ph.i, %while.body.i.prol
  %bytes_outstanding.039.i.prol = phi i32 [ %dec.i.prol, %while.body.i.prol ], [ %4, %while.body.lr.ph.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %while.body.i.prol ], [ 0, %while.body.lr.ph.i ]
  %8 = load ptr, ptr %p.i, align 8
  %incdec.ptr.i.prol = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %incdec.ptr.i.prol, ptr %p.i, align 8
  store i8 %conv16.i, ptr %8, align 1
  %dec.i.prol = add nsw i32 %bytes_outstanding.039.i.prol, -1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %while.body.i.prol.loopexit, label %while.body.i.prol, !llvm.loop !21

while.body.i.prol.loopexit:                       ; preds = %while.body.i.prol, %while.body.lr.ph.i
  %bytes_outstanding.039.i.unr = phi i32 [ %4, %while.body.lr.ph.i ], [ %dec.i.prol, %while.body.i.prol ]
  %9 = icmp ult i32 %4, 4
  br i1 %9, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.body.i.prol.loopexit, %while.body.i
  %bytes_outstanding.039.i = phi i32 [ %dec.i.3, %while.body.i ], [ %bytes_outstanding.039.i.unr, %while.body.i.prol.loopexit ]
  %10 = load ptr, ptr %p.i, align 8
  %incdec.ptr.i = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %incdec.ptr.i, ptr %p.i, align 8
  store i8 %conv16.i, ptr %10, align 1
  %11 = load ptr, ptr %p.i, align 8
  %incdec.ptr.i.1 = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %incdec.ptr.i.1, ptr %p.i, align 8
  store i8 %conv16.i, ptr %11, align 1
  %12 = load ptr, ptr %p.i, align 8
  %incdec.ptr.i.2 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %incdec.ptr.i.2, ptr %p.i, align 8
  store i8 %conv16.i, ptr %12, align 1
  %13 = load ptr, ptr %p.i, align 8
  %incdec.ptr.i.3 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %incdec.ptr.i.3, ptr %p.i, align 8
  store i8 %conv16.i, ptr %13, align 1
  %dec.i.3 = add nsw i32 %bytes_outstanding.039.i, -4
  %14 = add i32 %bytes_outstanding.039.i, -5
  %cmp13.i.3 = icmp ult i32 %14, -2
  br i1 %cmp13.i.3, label %while.body.i, label %while.end.i

while.end.i:                                      ; preds = %while.body.i.prol.loopexit, %while.body.i, %if.else.i
  %conv18.i = trunc i32 %shr.i to i8
  %15 = load ptr, ptr %p.i, align 8
  %incdec.ptr20.i = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %incdec.ptr20.i, ptr %p.i, align 8
  store i8 %conv18.i, ptr %15, align 1
  store i32 0, ptr %i_bytes_outstanding10.i, align 4
  br label %x264_cabac_putbyte.exit

x264_cabac_putbyte.exit:                          ; preds = %entry, %if.then8.i, %while.end.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_cabac_encode_ue_bypass(ptr nocapture noundef %cb, i32 noundef %exp_bits, i32 noundef %val) local_unnamed_addr #2 {
entry:
  %shl38 = shl nuw i32 1, %exp_bits
  %cmp.not39 = icmp sgt i32 %shl38, %val
  br i1 %cmp.not39, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %shl42 = phi i32 [ %shl, %for.body ], [ %shl38, %entry ]
  %val.addr.041 = phi i32 [ %sub, %for.body ], [ %val, %entry ]
  %k.040 = phi i32 [ %inc, %for.body ], [ %exp_bits, %entry ]
  %sub = sub nsw i32 %val.addr.041, %shl42
  %inc = add nsw i32 %k.040, 1
  %shl = shl nuw i32 1, %inc
  %cmp.not = icmp slt i32 %sub, %shl
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %k.0.lcssa = phi i32 [ %exp_bits, %entry ], [ %inc, %for.body ]
  %val.addr.0.lcssa = phi i32 [ %val, %entry ], [ %sub, %for.body ]
  %sub2 = sub nsw i32 %k.0.lcssa, %exp_bits
  %notmask = shl nsw i32 -1, %sub2
  %sub4 = xor i32 %notmask, -1
  %add = add nsw i32 %k.0.lcssa, 1
  %shl5 = shl i32 %sub4, %add
  %add6 = add nsw i32 %shl5, %val.addr.0.lcssa
  %mul = shl nsw i32 %k.0.lcssa, 1
  %reass.sub = sub i32 %mul, %exp_bits
  %sub8 = add i32 %reass.sub, 1
  %and = and i32 %reass.sub, 7
  %add10 = add nuw nsw i32 %and, 1
  %i_range = getelementptr inbounds i8, ptr %cb, i64 4
  %i_queue = getelementptr inbounds i8, ptr %cb, i64 8
  %i_bytes_outstanding10.i = getelementptr inbounds i8, ptr %cb, i64 12
  %p.i = getelementptr inbounds i8, ptr %cb, i64 24
  br label %do.body

do.body:                                          ; preds = %x264_cabac_putbyte.exit, %for.end
  %k.1 = phi i32 [ %sub8, %for.end ], [ %sub11, %x264_cabac_putbyte.exit ]
  %i.0 = phi i32 [ %add10, %for.end ], [ 8, %x264_cabac_putbyte.exit ]
  %sub11 = sub nsw i32 %k.1, %i.0
  %0 = load i32, ptr %cb, align 16
  %shl12 = shl i32 %0, %i.0
  %shr = lshr i32 %add6, %sub11
  %and13 = and i32 %shr, 255
  %1 = load i32, ptr %i_range, align 4
  %mul14 = mul i32 %and13, %1
  %add16 = add i32 %mul14, %shl12
  store i32 %add16, ptr %cb, align 16
  %2 = load i32, ptr %i_queue, align 8
  %add17 = add nsw i32 %2, %i.0
  store i32 %add17, ptr %i_queue, align 8
  %cmp.i = icmp sgt i32 %add17, -1
  br i1 %cmp.i, label %if.then.i, label %x264_cabac_putbyte.exit

if.then.i:                                        ; preds = %do.body
  %add.i = add nuw nsw i32 %add17, 10
  %shr.i = ashr i32 %add16, %add.i
  %shl.i = shl i32 1024, %add17
  %sub.i = add nsw i32 %shl.i, -1
  %and.i = and i32 %sub.i, %add16
  store i32 %and.i, ptr %cb, align 16
  %sub5.i = add nsw i32 %add17, -8
  store i32 %sub5.i, ptr %i_queue, align 8
  %and6.i = and i32 %shr.i, 255
  %cmp7.i = icmp eq i32 %and6.i, 255
  br i1 %cmp7.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.then.i
  %3 = load i32, ptr %i_bytes_outstanding10.i, align 4
  %inc.i = add nsw i32 %3, 1
  br label %x264_cabac_putbyte.exit.sink.split

if.else.i:                                        ; preds = %if.then.i
  %shr9.i = lshr i32 %shr.i, 8
  %4 = load i32, ptr %i_bytes_outstanding10.i, align 4
  %5 = load ptr, ptr %p.i, align 8
  %arrayidx.i = getelementptr inbounds i8, ptr %5, i64 -1
  %6 = load i8, ptr %arrayidx.i, align 1
  %7 = trunc i32 %shr9.i to i8
  %conv12.i = add i8 %6, %7
  store i8 %conv12.i, ptr %arrayidx.i, align 1
  %cmp1338.i = icmp sgt i32 %4, 0
  br i1 %cmp1338.i, label %while.body.lr.ph.i, label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.else.i
  %conv16.i = add i8 %7, -1
  %xtraiter = and i32 %4, 3
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %while.body.i.prol.loopexit, label %while.body.i.prol

while.body.i.prol:                                ; preds = %while.body.lr.ph.i, %while.body.i.prol
  %bytes_outstanding.039.i.prol = phi i32 [ %dec.i.prol, %while.body.i.prol ], [ %4, %while.body.lr.ph.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %while.body.i.prol ], [ 0, %while.body.lr.ph.i ]
  %8 = load ptr, ptr %p.i, align 8
  %incdec.ptr.i.prol = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %incdec.ptr.i.prol, ptr %p.i, align 8
  store i8 %conv16.i, ptr %8, align 1
  %dec.i.prol = add nsw i32 %bytes_outstanding.039.i.prol, -1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %while.body.i.prol.loopexit, label %while.body.i.prol, !llvm.loop !22

while.body.i.prol.loopexit:                       ; preds = %while.body.i.prol, %while.body.lr.ph.i
  %bytes_outstanding.039.i.unr = phi i32 [ %4, %while.body.lr.ph.i ], [ %dec.i.prol, %while.body.i.prol ]
  %9 = icmp ult i32 %4, 4
  br i1 %9, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.body.i.prol.loopexit, %while.body.i
  %bytes_outstanding.039.i = phi i32 [ %dec.i.3, %while.body.i ], [ %bytes_outstanding.039.i.unr, %while.body.i.prol.loopexit ]
  %10 = load ptr, ptr %p.i, align 8
  %incdec.ptr.i = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %incdec.ptr.i, ptr %p.i, align 8
  store i8 %conv16.i, ptr %10, align 1
  %11 = load ptr, ptr %p.i, align 8
  %incdec.ptr.i.1 = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %incdec.ptr.i.1, ptr %p.i, align 8
  store i8 %conv16.i, ptr %11, align 1
  %12 = load ptr, ptr %p.i, align 8
  %incdec.ptr.i.2 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %incdec.ptr.i.2, ptr %p.i, align 8
  store i8 %conv16.i, ptr %12, align 1
  %13 = load ptr, ptr %p.i, align 8
  %incdec.ptr.i.3 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %incdec.ptr.i.3, ptr %p.i, align 8
  store i8 %conv16.i, ptr %13, align 1
  %dec.i.3 = add nsw i32 %bytes_outstanding.039.i, -4
  %14 = add i32 %bytes_outstanding.039.i, -5
  %cmp13.i.3 = icmp ult i32 %14, -2
  br i1 %cmp13.i.3, label %while.body.i, label %while.end.i

while.end.i:                                      ; preds = %while.body.i.prol.loopexit, %while.body.i, %if.else.i
  %conv18.i = trunc i32 %shr.i to i8
  %15 = load ptr, ptr %p.i, align 8
  %incdec.ptr20.i = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %incdec.ptr20.i, ptr %p.i, align 8
  store i8 %conv18.i, ptr %15, align 1
  br label %x264_cabac_putbyte.exit.sink.split

x264_cabac_putbyte.exit.sink.split:               ; preds = %while.end.i, %if.then8.i
  %inc.i.sink = phi i32 [ %inc.i, %if.then8.i ], [ 0, %while.end.i ]
  store i32 %inc.i.sink, ptr %i_bytes_outstanding10.i, align 4
  br label %x264_cabac_putbyte.exit

x264_cabac_putbyte.exit:                          ; preds = %x264_cabac_putbyte.exit.sink.split, %do.body
  %cmp18 = icmp sgt i32 %sub11, 0
  br i1 %cmp18, label %do.body, label %do.end

do.end:                                           ; preds = %x264_cabac_putbyte.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_cabac_encode_terminal_c(ptr nocapture noundef %cb) local_unnamed_addr #2 {
entry:
  %i_range = getelementptr inbounds i8, ptr %cb, i64 4
  %0 = load i32, ptr %i_range, align 4
  %sub = add nsw i32 %0, -2
  %shr.i = ashr i32 %sub, 3
  %idxprom.i = sext i32 %shr.i to i64
  %arrayidx.i = getelementptr inbounds [64 x i8], ptr @x264_cabac_renorm_shift, i64 0, i64 %idxprom.i
  %1 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %1 to i32
  %shl.i = shl i32 %sub, %conv.i
  store i32 %shl.i, ptr %i_range, align 4
  %2 = load i32, ptr %cb, align 16
  %shl2.i = shl i32 %2, %conv.i
  store i32 %shl2.i, ptr %cb, align 16
  %i_queue.i = getelementptr inbounds i8, ptr %cb, i64 8
  %3 = load i32, ptr %i_queue.i, align 8
  %add.i = add nsw i32 %3, %conv.i
  store i32 %add.i, ptr %i_queue.i, align 8
  %cmp.i.i = icmp sgt i32 %add.i, -1
  br i1 %cmp.i.i, label %if.then.i.i, label %x264_cabac_encode_renorm.exit

if.then.i.i:                                      ; preds = %entry
  %add.i.i = add nuw nsw i32 %add.i, 10
  %shr.i.i = ashr i32 %shl2.i, %add.i.i
  %shl.i.i = shl i32 1024, %add.i
  %sub.i.i = add nsw i32 %shl.i.i, -1
  %and.i.i = and i32 %sub.i.i, %shl2.i
  store i32 %and.i.i, ptr %cb, align 16
  %sub5.i.i = add nsw i32 %add.i, -8
  store i32 %sub5.i.i, ptr %i_queue.i, align 8
  %and6.i.i = and i32 %shr.i.i, 255
  %cmp7.i.i = icmp eq i32 %and6.i.i, 255
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.else.i.i

if.then8.i.i:                                     ; preds = %if.then.i.i
  %i_bytes_outstanding.i.i = getelementptr inbounds i8, ptr %cb, i64 12
  %4 = load i32, ptr %i_bytes_outstanding.i.i, align 4
  %inc.i.i = add nsw i32 %4, 1
  store i32 %inc.i.i, ptr %i_bytes_outstanding.i.i, align 4
  br label %x264_cabac_encode_renorm.exit

if.else.i.i:                                      ; preds = %if.then.i.i
  %shr9.i.i = lshr i32 %shr.i.i, 8
  %i_bytes_outstanding10.i.i = getelementptr inbounds i8, ptr %cb, i64 12
  %5 = load i32, ptr %i_bytes_outstanding10.i.i, align 4
  %p.i.i = getelementptr inbounds i8, ptr %cb, i64 24
  %6 = load ptr, ptr %p.i.i, align 8
  %arrayidx.i.i = getelementptr inbounds i8, ptr %6, i64 -1
  %7 = load i8, ptr %arrayidx.i.i, align 1
  %8 = trunc i32 %shr9.i.i to i8
  %conv12.i.i = add i8 %7, %8
  store i8 %conv12.i.i, ptr %arrayidx.i.i, align 1
  %cmp1338.i.i = icmp sgt i32 %5, 0
  br i1 %cmp1338.i.i, label %while.body.lr.ph.i.i, label %while.end.i.i

while.body.lr.ph.i.i:                             ; preds = %if.else.i.i
  %conv16.i.i = add i8 %8, -1
  %xtraiter = and i32 %5, 3
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %while.body.i.i.prol.loopexit, label %while.body.i.i.prol

while.body.i.i.prol:                              ; preds = %while.body.lr.ph.i.i, %while.body.i.i.prol
  %bytes_outstanding.039.i.i.prol = phi i32 [ %dec.i.i.prol, %while.body.i.i.prol ], [ %5, %while.body.lr.ph.i.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %while.body.i.i.prol ], [ 0, %while.body.lr.ph.i.i ]
  %9 = load ptr, ptr %p.i.i, align 8
  %incdec.ptr.i.i.prol = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %incdec.ptr.i.i.prol, ptr %p.i.i, align 8
  store i8 %conv16.i.i, ptr %9, align 1
  %dec.i.i.prol = add nsw i32 %bytes_outstanding.039.i.i.prol, -1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %while.body.i.i.prol.loopexit, label %while.body.i.i.prol, !llvm.loop !23

while.body.i.i.prol.loopexit:                     ; preds = %while.body.i.i.prol, %while.body.lr.ph.i.i
  %bytes_outstanding.039.i.i.unr = phi i32 [ %5, %while.body.lr.ph.i.i ], [ %dec.i.i.prol, %while.body.i.i.prol ]
  %10 = icmp ult i32 %5, 4
  br i1 %10, label %while.end.i.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.prol.loopexit, %while.body.i.i
  %bytes_outstanding.039.i.i = phi i32 [ %dec.i.i.3, %while.body.i.i ], [ %bytes_outstanding.039.i.i.unr, %while.body.i.i.prol.loopexit ]
  %11 = load ptr, ptr %p.i.i, align 8
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %incdec.ptr.i.i, ptr %p.i.i, align 8
  store i8 %conv16.i.i, ptr %11, align 1
  %12 = load ptr, ptr %p.i.i, align 8
  %incdec.ptr.i.i.1 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %incdec.ptr.i.i.1, ptr %p.i.i, align 8
  store i8 %conv16.i.i, ptr %12, align 1
  %13 = load ptr, ptr %p.i.i, align 8
  %incdec.ptr.i.i.2 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %incdec.ptr.i.i.2, ptr %p.i.i, align 8
  store i8 %conv16.i.i, ptr %13, align 1
  %14 = load ptr, ptr %p.i.i, align 8
  %incdec.ptr.i.i.3 = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %incdec.ptr.i.i.3, ptr %p.i.i, align 8
  store i8 %conv16.i.i, ptr %14, align 1
  %dec.i.i.3 = add nsw i32 %bytes_outstanding.039.i.i, -4
  %15 = add i32 %bytes_outstanding.039.i.i, -5
  %cmp13.i.i.3 = icmp ult i32 %15, -2
  br i1 %cmp13.i.i.3, label %while.body.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.prol.loopexit, %while.body.i.i, %if.else.i.i
  %conv18.i.i = trunc i32 %shr.i.i to i8
  %16 = load ptr, ptr %p.i.i, align 8
  %incdec.ptr20.i.i = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %incdec.ptr20.i.i, ptr %p.i.i, align 8
  store i8 %conv18.i.i, ptr %16, align 1
  store i32 0, ptr %i_bytes_outstanding10.i.i, align 4
  br label %x264_cabac_encode_renorm.exit

x264_cabac_encode_renorm.exit:                    ; preds = %entry, %if.then8.i.i, %while.end.i.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_cabac_encode_flush(ptr nocapture noundef readonly %h, ptr nocapture noundef %cb) local_unnamed_addr #2 {
entry:
  %i_range = getelementptr inbounds i8, ptr %cb, i64 4
  %0 = load i32, ptr %i_range, align 4
  %sub = add i32 %0, 8388606
  %1 = load i32, ptr %cb, align 16
  %add = add i32 %sub, %1
  %or = shl i32 %add, 9
  %shl = or i32 %or, 512
  %i_queue = getelementptr inbounds i8, ptr %cb, i64 8
  %2 = load i32, ptr %i_queue, align 8
  %add3 = add nsw i32 %2, 9
  store i32 %add3, ptr %i_queue, align 8
  %cmp.i = icmp sgt i32 %2, -10
  br i1 %cmp.i, label %if.then.i, label %if.then.i62

if.then.i:                                        ; preds = %entry
  %add.i = add nsw i32 %2, 19
  %shr.i = ashr i32 %shl, %add.i
  %shl.i = shl i32 1024, %add3
  %sub.i = add nsw i32 %shl.i, -1
  %and.i = and i32 %sub.i, %shl
  store i32 %and.i, ptr %cb, align 16
  %sub5.i = add nsw i32 %2, 1
  store i32 %sub5.i, ptr %i_queue, align 8
  %and6.i = and i32 %shr.i, 255
  %cmp7.i = icmp eq i32 %and6.i, 255
  br i1 %cmp7.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.then.i
  %i_bytes_outstanding.i = getelementptr inbounds i8, ptr %cb, i64 12
  %3 = load i32, ptr %i_bytes_outstanding.i, align 4
  %inc.i = add nsw i32 %3, 1
  store i32 %inc.i, ptr %i_bytes_outstanding.i, align 4
  br label %x264_cabac_putbyte.exit

if.else.i:                                        ; preds = %if.then.i
  %shr9.i = lshr i32 %shr.i, 8
  %i_bytes_outstanding10.i = getelementptr inbounds i8, ptr %cb, i64 12
  %4 = load i32, ptr %i_bytes_outstanding10.i, align 4
  %p.i = getelementptr inbounds i8, ptr %cb, i64 24
  %5 = load ptr, ptr %p.i, align 8
  %arrayidx.i = getelementptr inbounds i8, ptr %5, i64 -1
  %6 = load i8, ptr %arrayidx.i, align 1
  %7 = trunc i32 %shr9.i to i8
  %conv12.i = add i8 %6, %7
  store i8 %conv12.i, ptr %arrayidx.i, align 1
  %cmp1338.i = icmp sgt i32 %4, 0
  br i1 %cmp1338.i, label %while.body.lr.ph.i, label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.else.i
  %conv16.i = add i8 %7, -1
  %xtraiter = and i32 %4, 3
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %while.body.i.prol.loopexit, label %while.body.i.prol

while.body.i.prol:                                ; preds = %while.body.lr.ph.i, %while.body.i.prol
  %bytes_outstanding.039.i.prol = phi i32 [ %dec.i.prol, %while.body.i.prol ], [ %4, %while.body.lr.ph.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %while.body.i.prol ], [ 0, %while.body.lr.ph.i ]
  %8 = load ptr, ptr %p.i, align 8
  %incdec.ptr.i.prol = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %incdec.ptr.i.prol, ptr %p.i, align 8
  store i8 %conv16.i, ptr %8, align 1
  %dec.i.prol = add nsw i32 %bytes_outstanding.039.i.prol, -1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %while.body.i.prol.loopexit, label %while.body.i.prol, !llvm.loop !24

while.body.i.prol.loopexit:                       ; preds = %while.body.i.prol, %while.body.lr.ph.i
  %bytes_outstanding.039.i.unr = phi i32 [ %4, %while.body.lr.ph.i ], [ %dec.i.prol, %while.body.i.prol ]
  %9 = icmp ult i32 %4, 4
  br i1 %9, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.body.i.prol.loopexit, %while.body.i
  %bytes_outstanding.039.i = phi i32 [ %dec.i.3, %while.body.i ], [ %bytes_outstanding.039.i.unr, %while.body.i.prol.loopexit ]
  %10 = load ptr, ptr %p.i, align 8
  %incdec.ptr.i = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %incdec.ptr.i, ptr %p.i, align 8
  store i8 %conv16.i, ptr %10, align 1
  %11 = load ptr, ptr %p.i, align 8
  %incdec.ptr.i.1 = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %incdec.ptr.i.1, ptr %p.i, align 8
  store i8 %conv16.i, ptr %11, align 1
  %12 = load ptr, ptr %p.i, align 8
  %incdec.ptr.i.2 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %incdec.ptr.i.2, ptr %p.i, align 8
  store i8 %conv16.i, ptr %12, align 1
  %13 = load ptr, ptr %p.i, align 8
  %incdec.ptr.i.3 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %incdec.ptr.i.3, ptr %p.i, align 8
  store i8 %conv16.i, ptr %13, align 1
  %dec.i.3 = add nsw i32 %bytes_outstanding.039.i, -4
  %14 = add i32 %bytes_outstanding.039.i, -5
  %cmp13.i.3 = icmp ult i32 %14, -2
  br i1 %cmp13.i.3, label %while.body.i, label %while.end.i

while.end.i:                                      ; preds = %while.body.i.prol.loopexit, %while.body.i, %if.else.i
  %conv18.i = trunc i32 %shr.i to i8
  %15 = load ptr, ptr %p.i, align 8
  %incdec.ptr20.i = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %incdec.ptr20.i, ptr %p.i, align 8
  store i8 %conv18.i, ptr %15, align 1
  store i32 0, ptr %i_bytes_outstanding10.i, align 4
  %.pr.pre = load i32, ptr %i_queue, align 8
  %.pre96.pre = load i32, ptr %cb, align 16
  br label %x264_cabac_putbyte.exit

x264_cabac_putbyte.exit:                          ; preds = %if.then8.i, %while.end.i
  %.pre96 = phi i32 [ %and.i, %if.then8.i ], [ %.pre96.pre, %while.end.i ]
  %16 = phi i32 [ %inc.i, %if.then8.i ], [ 0, %while.end.i ]
  %.pr = phi i32 [ %sub5.i, %if.then8.i ], [ %.pr.pre, %while.end.i ]
  %cmp.i29 = icmp sgt i32 %.pr, -1
  br i1 %cmp.i29, label %if.then.i30, label %if.then.i62

if.then.i30:                                      ; preds = %x264_cabac_putbyte.exit
  %add.i31 = add nuw nsw i32 %.pr, 10
  %shr.i32 = ashr i32 %.pre96, %add.i31
  %shl.i33 = shl i32 1024, %.pr
  %sub.i34 = add nsw i32 %shl.i33, -1
  %and.i35 = and i32 %.pre96, %sub.i34
  store i32 %and.i35, ptr %cb, align 16
  %sub5.i36 = add nsw i32 %.pr, -8
  store i32 %sub5.i36, ptr %i_queue, align 8
  %and6.i37 = and i32 %shr.i32, 255
  %cmp7.i38 = icmp eq i32 %and6.i37, 255
  br i1 %cmp7.i38, label %if.then8.i56, label %if.else.i39

if.then8.i56:                                     ; preds = %if.then.i30
  %i_bytes_outstanding.i57 = getelementptr inbounds i8, ptr %cb, i64 12
  %inc.i58 = add nsw i32 %16, 1
  store i32 %inc.i58, ptr %i_bytes_outstanding.i57, align 4
  br label %if.then.i62

if.else.i39:                                      ; preds = %if.then.i30
  %shr9.i40 = lshr i32 %shr.i32, 8
  %i_bytes_outstanding10.i41 = getelementptr inbounds i8, ptr %cb, i64 12
  %p.i42 = getelementptr inbounds i8, ptr %cb, i64 24
  %17 = load ptr, ptr %p.i42, align 8
  %arrayidx.i43 = getelementptr inbounds i8, ptr %17, i64 -1
  %18 = load i8, ptr %arrayidx.i43, align 1
  %19 = trunc i32 %shr9.i40 to i8
  %conv12.i44 = add i8 %18, %19
  store i8 %conv12.i44, ptr %arrayidx.i43, align 1
  %cmp1338.i45 = icmp sgt i32 %16, 0
  br i1 %cmp1338.i45, label %while.body.lr.ph.i49, label %while.end.i46

while.body.lr.ph.i49:                             ; preds = %if.else.i39
  %conv16.i50 = add i8 %19, -1
  %xtraiter100 = and i32 %16, 3
  %lcmp.mod101.not = icmp eq i32 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %while.body.i51.prol.loopexit, label %while.body.i51.prol

while.body.i51.prol:                              ; preds = %while.body.lr.ph.i49, %while.body.i51.prol
  %bytes_outstanding.039.i52.prol = phi i32 [ %dec.i54.prol, %while.body.i51.prol ], [ %16, %while.body.lr.ph.i49 ]
  %prol.iter102 = phi i32 [ %prol.iter102.next, %while.body.i51.prol ], [ 0, %while.body.lr.ph.i49 ]
  %20 = load ptr, ptr %p.i42, align 8
  %incdec.ptr.i53.prol = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %incdec.ptr.i53.prol, ptr %p.i42, align 8
  store i8 %conv16.i50, ptr %20, align 1
  %dec.i54.prol = add nsw i32 %bytes_outstanding.039.i52.prol, -1
  %prol.iter102.next = add i32 %prol.iter102, 1
  %prol.iter102.cmp.not = icmp eq i32 %prol.iter102.next, %xtraiter100
  br i1 %prol.iter102.cmp.not, label %while.body.i51.prol.loopexit, label %while.body.i51.prol, !llvm.loop !25

while.body.i51.prol.loopexit:                     ; preds = %while.body.i51.prol, %while.body.lr.ph.i49
  %bytes_outstanding.039.i52.unr = phi i32 [ %16, %while.body.lr.ph.i49 ], [ %dec.i54.prol, %while.body.i51.prol ]
  %21 = icmp ult i32 %16, 4
  br i1 %21, label %while.end.i46, label %while.body.i51

while.body.i51:                                   ; preds = %while.body.i51.prol.loopexit, %while.body.i51
  %bytes_outstanding.039.i52 = phi i32 [ %dec.i54.3, %while.body.i51 ], [ %bytes_outstanding.039.i52.unr, %while.body.i51.prol.loopexit ]
  %22 = load ptr, ptr %p.i42, align 8
  %incdec.ptr.i53 = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %incdec.ptr.i53, ptr %p.i42, align 8
  store i8 %conv16.i50, ptr %22, align 1
  %23 = load ptr, ptr %p.i42, align 8
  %incdec.ptr.i53.1 = getelementptr inbounds i8, ptr %23, i64 1
  store ptr %incdec.ptr.i53.1, ptr %p.i42, align 8
  store i8 %conv16.i50, ptr %23, align 1
  %24 = load ptr, ptr %p.i42, align 8
  %incdec.ptr.i53.2 = getelementptr inbounds i8, ptr %24, i64 1
  store ptr %incdec.ptr.i53.2, ptr %p.i42, align 8
  store i8 %conv16.i50, ptr %24, align 1
  %25 = load ptr, ptr %p.i42, align 8
  %incdec.ptr.i53.3 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %incdec.ptr.i53.3, ptr %p.i42, align 8
  store i8 %conv16.i50, ptr %25, align 1
  %dec.i54.3 = add nsw i32 %bytes_outstanding.039.i52, -4
  %26 = add i32 %bytes_outstanding.039.i52, -5
  %cmp13.i55.3 = icmp ult i32 %26, -2
  br i1 %cmp13.i55.3, label %while.body.i51, label %while.end.i46

while.end.i46:                                    ; preds = %while.body.i51.prol.loopexit, %while.body.i51, %if.else.i39
  %conv18.i47 = trunc i32 %shr.i32 to i8
  %27 = load ptr, ptr %p.i42, align 8
  %incdec.ptr20.i48 = getelementptr inbounds i8, ptr %27, i64 1
  store ptr %incdec.ptr20.i48, ptr %p.i42, align 8
  store i8 %conv18.i47, ptr %27, align 1
  store i32 0, ptr %i_bytes_outstanding10.i41, align 4
  %.pre = load i32, ptr %i_queue, align 8
  %.pre95 = load i32, ptr %cb, align 16
  br label %if.then.i62

if.then.i62:                                      ; preds = %entry, %while.end.i46, %if.then8.i56, %x264_cabac_putbyte.exit
  %28 = phi i32 [ %shl, %entry ], [ %.pre95, %while.end.i46 ], [ %and.i35, %if.then8.i56 ], [ %.pre96, %x264_cabac_putbyte.exit ]
  %29 = phi i32 [ %add3, %entry ], [ %.pre, %while.end.i46 ], [ %sub5.i36, %if.then8.i56 ], [ %.pr, %x264_cabac_putbyte.exit ]
  %sub5 = sub nsw i32 0, %29
  %shl7 = shl i32 %28, %sub5
  store i32 %shl7, ptr %cb, align 16
  %i_frame = getelementptr inbounds i8, ptr %h, i64 1844
  %30 = load i32, ptr %i_frame, align 4
  %and = and i32 %30, 31
  %shr = lshr i32 899998965, %and
  %and8 = shl i32 %shr, 10
  %shl9 = and i32 %and8, 1024
  %or11 = or i32 %shl9, %shl7
  %shr.i64 = ashr i32 %or11, 10
  %and.i67 = and i32 %shl7, 1023
  store i32 %and.i67, ptr %cb, align 16
  store i32 -8, ptr %i_queue, align 8
  %31 = and i32 %or11, 261120
  %cmp7.i70 = icmp eq i32 %31, 261120
  br i1 %cmp7.i70, label %x264_cabac_putbyte.exit91, label %if.else.i71

if.else.i71:                                      ; preds = %if.then.i62
  %shr9.i72 = lshr i32 %shr.i64, 8
  %i_bytes_outstanding10.i73 = getelementptr inbounds i8, ptr %cb, i64 12
  %32 = load i32, ptr %i_bytes_outstanding10.i73, align 4
  %p.i74 = getelementptr inbounds i8, ptr %cb, i64 24
  %33 = load ptr, ptr %p.i74, align 8
  %arrayidx.i75 = getelementptr inbounds i8, ptr %33, i64 -1
  %34 = load i8, ptr %arrayidx.i75, align 1
  %35 = trunc i32 %shr9.i72 to i8
  %conv12.i76 = add i8 %34, %35
  store i8 %conv12.i76, ptr %arrayidx.i75, align 1
  %cmp1338.i77 = icmp sgt i32 %32, 0
  br i1 %cmp1338.i77, label %while.body.lr.ph.i81, label %x264_cabac_putbyte.exit91.thread

while.body.lr.ph.i81:                             ; preds = %if.else.i71
  %conv16.i82 = add i8 %35, -1
  %xtraiter103 = and i32 %32, 3
  %lcmp.mod104.not = icmp eq i32 %xtraiter103, 0
  br i1 %lcmp.mod104.not, label %while.body.i83.prol.loopexit, label %while.body.i83.prol

while.body.i83.prol:                              ; preds = %while.body.lr.ph.i81, %while.body.i83.prol
  %bytes_outstanding.039.i84.prol = phi i32 [ %dec.i86.prol, %while.body.i83.prol ], [ %32, %while.body.lr.ph.i81 ]
  %prol.iter105 = phi i32 [ %prol.iter105.next, %while.body.i83.prol ], [ 0, %while.body.lr.ph.i81 ]
  %36 = load ptr, ptr %p.i74, align 8
  %incdec.ptr.i85.prol = getelementptr inbounds i8, ptr %36, i64 1
  store ptr %incdec.ptr.i85.prol, ptr %p.i74, align 8
  store i8 %conv16.i82, ptr %36, align 1
  %dec.i86.prol = add nsw i32 %bytes_outstanding.039.i84.prol, -1
  %prol.iter105.next = add i32 %prol.iter105, 1
  %prol.iter105.cmp.not = icmp eq i32 %prol.iter105.next, %xtraiter103
  br i1 %prol.iter105.cmp.not, label %while.body.i83.prol.loopexit, label %while.body.i83.prol, !llvm.loop !26

while.body.i83.prol.loopexit:                     ; preds = %while.body.i83.prol, %while.body.lr.ph.i81
  %bytes_outstanding.039.i84.unr = phi i32 [ %32, %while.body.lr.ph.i81 ], [ %dec.i86.prol, %while.body.i83.prol ]
  %37 = icmp ult i32 %32, 4
  br i1 %37, label %x264_cabac_putbyte.exit91.thread, label %while.body.i83

while.body.i83:                                   ; preds = %while.body.i83.prol.loopexit, %while.body.i83
  %bytes_outstanding.039.i84 = phi i32 [ %dec.i86.3, %while.body.i83 ], [ %bytes_outstanding.039.i84.unr, %while.body.i83.prol.loopexit ]
  %38 = load ptr, ptr %p.i74, align 8
  %incdec.ptr.i85 = getelementptr inbounds i8, ptr %38, i64 1
  store ptr %incdec.ptr.i85, ptr %p.i74, align 8
  store i8 %conv16.i82, ptr %38, align 1
  %39 = load ptr, ptr %p.i74, align 8
  %incdec.ptr.i85.1 = getelementptr inbounds i8, ptr %39, i64 1
  store ptr %incdec.ptr.i85.1, ptr %p.i74, align 8
  store i8 %conv16.i82, ptr %39, align 1
  %40 = load ptr, ptr %p.i74, align 8
  %incdec.ptr.i85.2 = getelementptr inbounds i8, ptr %40, i64 1
  store ptr %incdec.ptr.i85.2, ptr %p.i74, align 8
  store i8 %conv16.i82, ptr %40, align 1
  %41 = load ptr, ptr %p.i74, align 8
  %incdec.ptr.i85.3 = getelementptr inbounds i8, ptr %41, i64 1
  store ptr %incdec.ptr.i85.3, ptr %p.i74, align 8
  store i8 %conv16.i82, ptr %41, align 1
  %dec.i86.3 = add nsw i32 %bytes_outstanding.039.i84, -4
  %42 = add i32 %bytes_outstanding.039.i84, -5
  %cmp13.i87.3 = icmp ult i32 %42, -2
  br i1 %cmp13.i87.3, label %while.body.i83, label %x264_cabac_putbyte.exit91.thread

x264_cabac_putbyte.exit91.thread:                 ; preds = %while.body.i83.prol.loopexit, %while.body.i83, %if.else.i71
  %conv18.i79 = trunc i32 %shr.i64 to i8
  %43 = load ptr, ptr %p.i74, align 8
  %incdec.ptr20.i80 = getelementptr inbounds i8, ptr %43, i64 1
  store ptr %incdec.ptr20.i80, ptr %p.i74, align 8
  store i8 %conv18.i79, ptr %43, align 1
  store i32 0, ptr %i_bytes_outstanding10.i73, align 4
  br label %while.end

x264_cabac_putbyte.exit91:                        ; preds = %if.then.i62
  %i_bytes_outstanding.i89 = getelementptr inbounds i8, ptr %cb, i64 12
  %44 = load i32, ptr %i_bytes_outstanding.i89, align 4
  %inc.i90 = add nsw i32 %44, 1
  store i32 %inc.i90, ptr %i_bytes_outstanding.i89, align 4
  %45 = icmp sgt i32 %44, -1
  %i_bytes_outstanding = getelementptr inbounds i8, ptr %cb, i64 12
  br i1 %45, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %x264_cabac_putbyte.exit91
  %p = getelementptr inbounds i8, ptr %cb, i64 24
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %46 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %46, i64 1
  store ptr %incdec.ptr, ptr %p, align 8
  store i8 -1, ptr %46, align 1
  %47 = load i32, ptr %i_bytes_outstanding, align 4
  %dec = add nsw i32 %47, -1
  store i32 %dec, ptr %i_bytes_outstanding, align 4
  %cmp = icmp sgt i32 %47, 1
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %x264_cabac_putbyte.exit91.thread, %x264_cabac_putbyte.exit91
  ret void
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = !{!6}
!6 = distinct !{!6, !7}
!7 = distinct !{!7, !"LVerDomain"}
!8 = !{!9}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!14}
!14 = distinct !{!14, !15}
!15 = distinct !{!15, !"LVerDomain"}
!16 = !{!17}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !20}
!26 = distinct !{!26, !20}
