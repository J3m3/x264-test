; ModuleID = 'ldecod_src/vlc.c'
source_filename = "ldecod_src/vlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

@p_Dec = external local_unnamed_addr global ptr, align 8
@NTAB1 = internal unnamed_addr constant [4 x [8 x [2 x i8]]] [[8 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer], [8 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\01\02", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer], [8 x [2 x i8]] [[2 x i8] c"\02\00", [2 x i8] c"\01\03", [2 x i8] c"\01\04", [2 x i8] c"\01\05", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer], [8 x [2 x i8]] [[2 x i8] c"\03\00", [2 x i8] c"\02\01", [2 x i8] c"\02\02", [2 x i8] c"\01\06", [2 x i8] c"\01\07", [2 x i8] c"\01\08", [2 x i8] c"\01\09", [2 x i8] c"\04\00"]], align 16, !dbg !0
@LEVRUN1 = internal unnamed_addr constant [16 x i8] c"\04\02\02\01\01\01\01\01\01\01\00\00\00\00\00\00", align 16, !dbg !1203
@NTAB3 = internal unnamed_addr constant [2 x [2 x [2 x i8]]] [[2 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] zeroinitializer], [2 x [2 x i8]] [[2 x i8] c"\02\00", [2 x i8] c"\01\01"]], align 1, !dbg !1206
@LEVRUN3 = internal unnamed_addr constant [4 x i8] c"\02\01\00\00", align 1, !dbg !1210
@readSyntaxElement_NumCoeffTrailingOnes.lentab = internal unnamed_addr constant [3 x [4 x [17 x i8]]] [[4 x [17 x i8]] [[17 x i8] c"\01\06\08\09\0A\0B\0D\0D\0D\0E\0E\0F\0F\10\10\10\10", [17 x i8] c"\00\02\06\08\09\0A\0B\0D\0D\0E\0E\0F\0F\0F\10\10\10", [17 x i8] c"\00\00\03\07\08\09\0A\0B\0D\0D\0E\0E\0F\0F\10\10\10", [17 x i8] c"\00\00\00\05\06\07\08\09\0A\0B\0D\0E\0E\0F\0F\10\10"], [4 x [17 x i8]] [[17 x i8] c"\02\06\06\07\08\08\09\0B\0B\0C\0C\0C\0D\0D\0D\0E\0E", [17 x i8] c"\00\02\05\06\06\07\08\09\0B\0B\0C\0C\0D\0D\0E\0E\0E", [17 x i8] c"\00\00\03\06\06\07\08\09\0B\0B\0C\0C\0D\0D\0D\0E\0E", [17 x i8] c"\00\00\00\04\04\05\06\06\07\09\0B\0B\0C\0D\0D\0D\0E"], [4 x [17 x i8]] [[17 x i8] c"\04\06\06\06\07\07\07\07\08\08\09\09\09\0A\0A\0A\0A", [17 x i8] c"\00\04\05\05\05\05\06\06\07\08\08\09\09\09\0A\0A\0A", [17 x i8] c"\00\00\04\05\05\05\06\06\07\07\08\08\09\09\0A\0A\0A", [17 x i8] c"\00\00\00\04\04\04\04\04\05\06\07\08\08\09\0A\0A\0A"]], align 16, !dbg !46
@readSyntaxElement_NumCoeffTrailingOnes.codtab = internal unnamed_addr constant [3 x [4 x [17 x i8]]] [[4 x [17 x i8]] [[17 x i8] c"\01\05\07\07\07\07\0F\0B\08\0F\0B\0F\0B\0F\0B\07\04", [17 x i8] c"\00\01\04\06\06\06\06\0E\0A\0E\0A\0E\0A\01\0E\0A\06", [17 x i8] c"\00\00\01\05\05\05\05\05\0D\09\0D\09\0D\09\0D\09\05", [17 x i8] c"\00\00\00\03\03\04\04\04\04\04\0C\0C\08\0C\08\0C\08"], [4 x [17 x i8]] [[17 x i8] c"\03\0B\07\07\07\04\07\0F\0B\0F\0B\08\0F\0B\07\09\07", [17 x i8] c"\00\02\07\0A\06\06\06\06\0E\0A\0E\0A\0E\0A\0B\08\06", [17 x i8] c"\00\00\03\09\05\05\05\05\0D\09\0D\09\0D\09\06\0A\05", [17 x i8] c"\00\00\00\05\04\06\08\04\04\04\0C\08\0C\0C\08\01\04"], [4 x [17 x i8]] [[17 x i8] c"\0F\0F\0B\08\0F\0B\09\08\0F\0B\0F\0B\08\0D\09\05\01", [17 x i8] c"\00\0E\0F\0C\0A\08\0E\0A\0E\0E\0A\0E\0A\07\0C\08\04", [17 x i8] c"\00\00\0D\0E\0B\09\0D\09\0D\0A\0D\09\0D\09\0B\07\03", [17 x i8] c"\00\00\00\0C\0B\0A\09\08\0D\0C\0C\0C\08\0C\0A\06\02"]], align 16, !dbg !1113
@readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab = internal unnamed_addr constant <{ [4 x <{ i8, i8, i8, i8, i8, [12 x i8] }>], [4 x <{ [9 x i8], [8 x i8] }>], [4 x [17 x i8]] }> <{ [4 x <{ i8, i8, i8, i8, i8, [12 x i8] }>] [<{ i8, i8, i8, i8, i8, [12 x i8] }> <{ i8 2, i8 6, i8 6, i8 6, i8 6, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 1, i8 6, i8 7, i8 8, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 0, i8 3, i8 7, i8 8, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 0, i8 0, i8 6, i8 7, [12 x i8] zeroinitializer }>], [4 x <{ [9 x i8], [8 x i8] }>] [<{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\01\07\07\09\09\0A\0B\0C\0D", [8 x i8] zeroinitializer }>, <{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\00\02\07\07\09\0A\0B\0C\0C", [8 x i8] zeroinitializer }>, <{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\00\00\03\07\07\09\0A\0B\0C", [8 x i8] zeroinitializer }>, <{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\00\00\00\05\06\07\07\0A\0B", [8 x i8] zeroinitializer }>], [4 x [17 x i8]] [[17 x i8] c"\01\06\08\09\0A\0B\0D\0D\0D\0E\0E\0F\0F\10\10\10\10", [17 x i8] c"\00\02\06\08\09\0A\0B\0D\0D\0E\0E\0F\0F\0F\10\10\10", [17 x i8] c"\00\00\03\07\08\09\0A\0B\0D\0D\0E\0E\0F\0F\10\10\10", [17 x i8] c"\00\00\00\05\06\07\08\09\0A\0B\0D\0E\0E\0F\0F\10\10"] }>, align 16, !dbg !1120
@readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab = internal unnamed_addr constant <{ <{ <{ i8, i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, [13 x i8] }> }>, [4 x <{ [9 x i8], [8 x i8] }>], [4 x [17 x i8]] }> <{ <{ <{ i8, i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, [13 x i8] }> }> <{ <{ i8, i8, i8, i8, i8, [12 x i8] }> <{ i8 1, i8 7, i8 4, i8 3, i8 2, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 1, i8 6, i8 3, i8 3, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 0, i8 1, i8 2, i8 2, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [13 x i8] }> <{ i8 0, i8 0, i8 0, i8 5, [13 x i8] zeroinitializer }> }>, [4 x <{ [9 x i8], [8 x i8] }>] [<{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\01\0F\0E\07\06\07\07\07\07", [8 x i8] zeroinitializer }>, <{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\00\01\0D\0C\05\06\06\06\05", [8 x i8] zeroinitializer }>, <{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\00\00\01\0B\0A\04\05\05\04", [8 x i8] zeroinitializer }>, <{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\00\00\00\01\01\09\08\04\04", [8 x i8] zeroinitializer }>], [4 x [17 x i8]] [[17 x i8] c"\01\05\07\07\07\07\0F\0B\08\0F\0B\0F\0B\0F\0B\07\04", [17 x i8] c"\00\01\04\06\06\06\06\0E\0A\0E\0A\0E\0A\01\0E\0A\06", [17 x i8] c"\00\00\01\05\05\05\05\05\0D\09\0D\09\0D\09\0D\09\05", [17 x i8] c"\00\00\00\03\03\04\04\04\04\04\0C\0C\08\0C\08\0C\08"] }>, align 16, !dbg !1134
@readSyntaxElement_TotalZeros.lentab = internal unnamed_addr constant <{ [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }> }> <{ [16 x i8] c"\01\03\03\04\04\05\05\06\06\07\07\08\08\09\09\09", [16 x i8] c"\03\03\03\03\03\04\04\04\04\05\05\06\06\06\06\00", [16 x i8] c"\04\03\03\03\04\04\03\03\04\05\05\06\05\06\00\00", [16 x i8] c"\05\03\04\04\03\03\03\04\03\04\05\05\05\00\00\00", [16 x i8] c"\04\04\04\03\03\03\03\03\04\05\04\05\00\00\00\00", [16 x i8] c"\06\05\03\03\03\03\03\03\04\03\06\00\00\00\00\00", [16 x i8] c"\06\05\03\03\03\02\03\04\03\06\00\00\00\00\00\00", [16 x i8] c"\06\04\05\03\02\02\03\03\06\00\00\00\00\00\00\00", <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\06\06\04\02\02\03\02\05", [8 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 5, i8 5, i8 3, i8 2, i8 2, i8 2, i8 4, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 4, i8 4, i8 3, i8 3, i8 1, i8 3, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 4, i8 4, i8 2, i8 1, i8 3, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 3, i8 3, i8 1, i8 2, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 2, i8 2, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }> }>, align 16, !dbg !1141
@readSyntaxElement_TotalZeros.codtab = internal unnamed_addr constant <{ [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], <{ [8 x i8], [8 x i8] }>, <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }> }> <{ [16 x i8] c"\01\03\02\03\02\03\02\03\02\03\02\03\02\03\02\01", [16 x i8] c"\07\06\05\04\03\05\04\03\02\03\02\03\02\01\00\00", [16 x i8] c"\05\07\06\05\04\03\04\03\02\03\02\01\01\00\00\00", [16 x i8] c"\03\07\05\04\06\05\04\03\03\02\02\01\00\00\00\00", [16 x i8] c"\05\04\03\07\06\05\04\03\02\01\01\00\00\00\00\00", [16 x i8] c"\01\01\07\06\05\04\03\02\01\01\00\00\00\00\00\00", [16 x i8] c"\01\01\05\04\03\03\02\01\01\00\00\00\00\00\00\00", <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\01\01\01\03\03\02\02\01", [8 x i8] zeroinitializer }>, <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\01\00\01\03\02\01\01\01", [8 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 1, i8 0, i8 1, i8 3, i8 2, i8 1, i8 1, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 0, i8 1, i8 1, i8 2, i8 1, i8 3, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 0, i8 1, i8 1, i8 1, i8 1, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 1, i8 1, i8 1, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 0, i8 1, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 0, i8 1, [14 x i8] zeroinitializer }> }>, align 16, !dbg !1154
@readSyntaxElement_TotalZerosChromaDC.lentab = internal unnamed_addr constant <{ <{ <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, [12 x [16 x i8]] }>, <{ <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, [8 x [16 x i8]] }>, <{ [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }> }> }> <{ <{ <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, [12 x [16 x i8]] }> <{ <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 1, i8 2, i8 3, i8 3, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 1, i8 2, i8 2, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }>, [12 x [16 x i8]] zeroinitializer }>, <{ <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, [8 x [16 x i8]] }> <{ <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\01\03\03\04\04\04\05\05", [8 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 3, i8 2, i8 3, i8 3, i8 3, i8 3, i8 3, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 3, i8 3, i8 2, i8 2, i8 3, i8 3, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 3, i8 2, i8 2, i8 2, i8 3, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 2, i8 2, i8 2, i8 2, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 2, i8 2, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }>, [8 x [16 x i8]] zeroinitializer }>, <{ [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }> }> <{ [16 x i8] c"\01\03\03\04\04\05\05\06\06\07\07\08\08\09\09\09", [16 x i8] c"\03\03\03\03\03\04\04\04\04\05\05\06\06\06\06\00", [16 x i8] c"\04\03\03\03\04\04\03\03\04\05\05\06\05\06\00\00", [16 x i8] c"\05\03\04\04\03\03\03\04\03\04\05\05\05\00\00\00", [16 x i8] c"\04\04\04\03\03\03\03\03\04\05\04\05\00\00\00\00", [16 x i8] c"\06\05\03\03\03\03\03\03\04\03\06\00\00\00\00\00", [16 x i8] c"\06\05\03\03\03\02\03\04\03\06\00\00\00\00\00\00", [16 x i8] c"\06\04\05\03\02\02\03\03\06\00\00\00\00\00\00\00", <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\06\06\04\02\02\03\02\05", [8 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 5, i8 5, i8 3, i8 2, i8 2, i8 2, i8 4, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 4, i8 4, i8 3, i8 3, i8 1, i8 3, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 4, i8 4, i8 2, i8 1, i8 3, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 3, i8 3, i8 1, i8 2, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 2, i8 2, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }> }> }>, align 16, !dbg !1161
@readSyntaxElement_TotalZerosChromaDC.codtab = internal unnamed_addr constant <{ <{ <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, <{ i8, [15 x i8] }>, [12 x [16 x i8]] }>, <{ <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, [8 x [16 x i8]] }>, <{ [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], <{ [8 x i8], [8 x i8] }>, <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }> }> }> <{ <{ <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, <{ i8, [15 x i8] }>, [12 x [16 x i8]] }> <{ <{ i8, i8, i8, [13 x i8] }> <{ i8 1, i8 1, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }>, <{ i8, [15 x i8] }> <{ i8 1, [15 x i8] zeroinitializer }>, [12 x [16 x i8]] zeroinitializer }>, <{ <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, [8 x [16 x i8]] }> <{ <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 1, i8 2, i8 3, i8 2, i8 3, i8 1, i8 1, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 0, i8 1, i8 1, i8 4, i8 5, i8 6, i8 7, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 0, i8 1, i8 1, i8 2, i8 6, i8 7, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 6, i8 0, i8 1, i8 2, i8 7, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 1, i8 2, i8 3, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 0, i8 1, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 0, i8 1, [14 x i8] zeroinitializer }>, [8 x [16 x i8]] zeroinitializer }>, <{ [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], <{ [8 x i8], [8 x i8] }>, <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }> }> <{ [16 x i8] c"\01\03\02\03\02\03\02\03\02\03\02\03\02\03\02\01", [16 x i8] c"\07\06\05\04\03\05\04\03\02\03\02\03\02\01\00\00", [16 x i8] c"\05\07\06\05\04\03\04\03\02\03\02\01\01\00\00\00", [16 x i8] c"\03\07\05\04\06\05\04\03\03\02\02\01\00\00\00\00", [16 x i8] c"\05\04\03\07\06\05\04\03\02\01\01\00\00\00\00\00", [16 x i8] c"\01\01\07\06\05\04\03\02\01\01\00\00\00\00\00\00", [16 x i8] c"\01\01\05\04\03\03\02\01\01\00\00\00\00\00\00\00", <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\01\01\01\03\03\02\02\01", [8 x i8] zeroinitializer }>, <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\01\00\01\03\02\01\01\01", [8 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 1, i8 0, i8 1, i8 3, i8 2, i8 1, i8 1, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 0, i8 1, i8 1, i8 2, i8 1, i8 3, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 0, i8 1, i8 1, i8 1, i8 1, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 1, i8 1, i8 1, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 0, i8 1, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 0, i8 1, [14 x i8] zeroinitializer }> }> }>, align 16, !dbg !1174
@readSyntaxElement_Run.lentab = internal unnamed_addr constant <{ <{ i8, i8, [14 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, [16 x i8], [8 x [16 x i8]] }> <{ <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 1, i8 2, i8 2, [13 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 2, i8 2, i8 2, i8 2, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 2, i8 2, i8 2, i8 3, i8 3, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 2, i8 2, i8 3, i8 3, i8 3, i8 3, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 2, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, [9 x i8] zeroinitializer }>, [16 x i8] c"\03\03\03\03\03\03\03\04\05\06\07\08\09\0A\0B\00", [8 x [16 x i8]] zeroinitializer }>, align 16, !dbg !1181
@readSyntaxElement_Run.codtab = internal unnamed_addr constant <{ <{ i8, [15 x i8] }>, <{ i8, i8, [14 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, [16 x i8], [8 x [16 x i8]] }> <{ <{ i8, [15 x i8] }> <{ i8 1, [15 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 3, i8 2, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 3, i8 2, i8 1, i8 1, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 3, i8 2, i8 3, i8 2, i8 1, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 3, i8 0, i8 1, i8 3, i8 2, i8 5, i8 4, [9 x i8] zeroinitializer }>, [16 x i8] c"\07\06\05\04\03\02\01\01\01\01\01\01\01\01\01\00", [8 x [16 x i8]] zeroinitializer }>, align 16, !dbg !1190
@NCBP = internal unnamed_addr constant <{ <{ [16 x [2 x i8]], [32 x [2 x i8]] }>, [48 x [2 x i8]] }> <{ <{ [16 x [2 x i8]], [32 x [2 x i8]] }> <{ [16 x [2 x i8]] [[2 x i8] c"\0F\00", [2 x i8] c"\00\01", [2 x i8] c"\07\02", [2 x i8] c"\0B\04", [2 x i8] c"\0D\08", [2 x i8] c"\0E\03", [2 x i8] c"\03\05", [2 x i8] c"\05\0A", [2 x i8] c"\0A\0C", [2 x i8] c"\0C\0F", [2 x i8] c"\01\07", [2 x i8] c"\02\0B", [2 x i8] c"\04\0D", [2 x i8] c"\08\0E", [2 x i8] c"\06\06", [2 x i8] c"\09\09"], [32 x [2 x i8]] zeroinitializer }>, [48 x [2 x i8]] [[2 x i8] c"/\00", [2 x i8] c"\1F\10", [2 x i8] c"\0F\01", [2 x i8] c"\00\02", [2 x i8] c"\17\04", [2 x i8] c"\1B\08", [2 x i8] c"\1D ", [2 x i8] c"\1E\03", [2 x i8] c"\07\05", [2 x i8] c"\0B\0A", [2 x i8] c"\0D\0C", [2 x i8] c"\0E\0F", [2 x i8] c"'/", [2 x i8] c"+\07", [2 x i8] c"-\0B", [2 x i8] c".\0D", [2 x i8] c"\10\0E", [2 x i8] c"\03\06", [2 x i8] c"\05\09", [2 x i8] c"\0A\1F", [2 x i8] c"\0C#", [2 x i8] c"\13%", [2 x i8] c"\15*", [2 x i8] c"\1A,", [2 x i8] c"\1C!", [2 x i8] c"#\22", [2 x i8] c"%$", [2 x i8] c"*(", [2 x i8] c",'", [2 x i8] c"\01+", [2 x i8] c"\02-", [2 x i8] c"\04.", [2 x i8] c"\08\11", [2 x i8] c"\11\12", [2 x i8] c"\12\14", [2 x i8] c"\14\18", [2 x i8] c"\18\13", [2 x i8] c"\06\15", [2 x i8] c"\09\1A", [2 x i8] c"\16\1C", [2 x i8] c"\19\17", [2 x i8] c" \1B", [2 x i8] c"!\1D", [2 x i8] c"\22\1E", [2 x i8] c"$\16", [2 x i8] c"(\19", [2 x i8] c"&&", [2 x i8] c"))"] }>, align 16, !dbg !1197
@str = private unnamed_addr constant [44 x i8] c"ERROR: failed to find NumCoeff/TrailingOnes\00", align 1
@str.6 = private unnamed_addr constant [53 x i8] c"ERROR: failed to find NumCoeff/TrailingOnes ChromaDC\00", align 1
@str.7 = private unnamed_addr constant [39 x i8] c"ERROR: failed to find Total Zeros !cdc\00", align 1
@str.8 = private unnamed_addr constant [34 x i8] c"ERROR: failed to find Total Zeros\00", align 1
@str.9 = private unnamed_addr constant [26 x i8] c"ERROR: failed to find Run\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @ue_v(ptr nocapture noundef readnone %tracestring, ptr nocapture noundef %bitstream) local_unnamed_addr #0 !dbg !1228 {
entry:
  %symbol = alloca %struct.syntaxelement, align 8, !DIAssignID !1236
    #dbg_assign(i1 undef, !1235, !DIExpression(), !1236, ptr %symbol, !DIExpression(), !1237)
    #dbg_value(ptr %tracestring, !1233, !DIExpression(), !1237)
    #dbg_value(ptr %bitstream, !1234, !DIExpression(), !1237)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %symbol) #13, !dbg !1238
  store i32 0, ptr %symbol, align 8, !dbg !1239, !DIAssignID !1240
    #dbg_assign(i32 0, !1235, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !1240, ptr %symbol, !DIExpression(), !1237)
  %mapping = getelementptr inbounds i8, ptr %symbol, i64 32, !dbg !1241
  store ptr @linfo_ue, ptr %mapping, align 8, !dbg !1242, !DIAssignID !1243
    #dbg_assign(ptr @linfo_ue, !1235, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !1243, ptr %mapping, !DIExpression(), !1237)
  %call = call i32 @readSyntaxElement_VLC(ptr noundef nonnull %symbol, ptr noundef %bitstream), !dbg !1244
  %len = getelementptr inbounds i8, ptr %symbol, i64 12, !dbg !1245
  %0 = load i32, ptr %len, align 4, !dbg !1245
  %1 = load ptr, ptr @p_Dec, align 8, !dbg !1246
  %UsedBits = getelementptr inbounds i8, ptr %1, i64 24, !dbg !1247
  %2 = load i32, ptr %UsedBits, align 8, !dbg !1248
  %add = add nsw i32 %2, %0, !dbg !1248
  store i32 %add, ptr %UsedBits, align 8, !dbg !1248
  %value1 = getelementptr inbounds i8, ptr %symbol, i64 4, !dbg !1249
  %3 = load i32, ptr %value1, align 4, !dbg !1249
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %symbol) #13, !dbg !1250
  ret i32 %3, !dbg !1251
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @linfo_ue(i32 noundef %len, i32 noundef %info, ptr nocapture noundef writeonly %value1, ptr nocapture readnone %dummy) #2 !dbg !1252 {
entry:
    #dbg_value(i32 %len, !1254, !DIExpression(), !1258)
    #dbg_value(i32 %info, !1255, !DIExpression(), !1258)
    #dbg_value(ptr %value1, !1256, !DIExpression(), !1258)
    #dbg_value(ptr poison, !1257, !DIExpression(), !1258)
  %shr = ashr i32 %len, 1, !dbg !1259
  %shl = shl nuw i32 1, %shr, !dbg !1260
  %add = add i32 %info, -1, !dbg !1261
  %sub = add i32 %add, %shl, !dbg !1262
  store i32 %sub, ptr %value1, align 4, !dbg !1263
  ret void, !dbg !1264
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @readSyntaxElement_VLC(ptr noundef %sym, ptr nocapture noundef %currStream) local_unnamed_addr #0 !dbg !1265 {
entry:
    #dbg_value(ptr %sym, !1267, !DIExpression(), !1269)
    #dbg_value(ptr %currStream, !1268, !DIExpression(), !1269)
  %streamBuffer = getelementptr inbounds i8, ptr %currStream, i64 16, !dbg !1270
  %0 = load ptr, ptr %streamBuffer, align 8, !dbg !1270
  %frame_bitoffset = getelementptr inbounds i8, ptr %currStream, i64 8, !dbg !1271
  %1 = load i32, ptr %frame_bitoffset, align 8, !dbg !1271
  %inf = getelementptr inbounds i8, ptr %sym, i64 16, !dbg !1272
  %bitstream_length = getelementptr inbounds i8, ptr %currStream, i64 12, !dbg !1273
  %2 = load i32, ptr %bitstream_length, align 4, !dbg !1273
    #dbg_value(ptr %0, !1274, !DIExpression(), !1291)
    #dbg_value(i32 %1, !1279, !DIExpression(), !1291)
    #dbg_value(ptr %inf, !1280, !DIExpression(), !1291)
    #dbg_value(i32 %2, !1281, !DIExpression(), !1291)
  %shr.i = ashr i32 %1, 3, !dbg !1293
  %conv.i = sext i32 %shr.i to i64, !dbg !1294
    #dbg_value(i64 %conv.i, !1282, !DIExpression(), !1291)
  %and.i = and i32 %1, 7, !dbg !1295
  %sub.i = xor i32 %and.i, 7, !dbg !1296
    #dbg_value(i32 %sub.i, !1283, !DIExpression(), !1291)
    #dbg_value(i32 1, !1284, !DIExpression(), !1291)
    #dbg_value(i32 0, !1285, !DIExpression(), !1291)
  %arrayidx.i = getelementptr inbounds i8, ptr %0, i64 %conv.i, !dbg !1297
    #dbg_value(ptr %arrayidx.i, !1286, !DIExpression(), !1291)
  %3 = load i8, ptr %arrayidx.i, align 1, !dbg !1298
  %conv1.i = zext i8 %3 to i32, !dbg !1299
    #dbg_value(!DIArgList(i32 %conv1.i, i32 %sub.i), !1287, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !1291)
  %4 = shl nuw nsw i32 1, %sub.i, !dbg !1300
  %5 = and i32 %4, %conv1.i, !dbg !1300
  %cmp64.i = icmp eq i32 %5, 0, !dbg !1300
  br i1 %cmp64.i, label %while.body.i, label %while.end.thread.i, !dbg !1301

while.body.i:                                     ; preds = %entry, %while.body.i
  %cur_byte.069.i = phi ptr [ %add.ptr.i, %while.body.i ], [ %arrayidx.i, %entry ]
  %len.068.i = phi i32 [ %inc.i, %while.body.i ], [ 0, %entry ]
  %bitcounter.067.i = phi i32 [ %inc5.i, %while.body.i ], [ 1, %entry ]
  %bitoffset.066.i = phi i32 [ %and6.i, %while.body.i ], [ %sub.i, %entry ]
  %byteoffset.065.i = phi i64 [ %add.i, %while.body.i ], [ %conv.i, %entry ]
    #dbg_value(ptr %cur_byte.069.i, !1286, !DIExpression(), !1291)
    #dbg_value(i32 %len.068.i, !1285, !DIExpression(), !1291)
    #dbg_value(i32 %bitcounter.067.i, !1284, !DIExpression(), !1291)
    #dbg_value(i32 %bitoffset.066.i, !1283, !DIExpression(), !1291)
    #dbg_value(i64 %byteoffset.065.i, !1282, !DIExpression(), !1291)
  %inc.i = add nuw i32 %len.068.i, 1, !dbg !1302
    #dbg_value(i32 %inc.i, !1285, !DIExpression(), !1291)
  %inc5.i = add nuw nsw i32 %bitcounter.067.i, 1, !dbg !1304
    #dbg_value(i32 %inc5.i, !1284, !DIExpression(), !1291)
  %dec.i = add nuw nsw i32 %bitoffset.066.i, 7, !dbg !1305
    #dbg_value(i32 %bitoffset.066.i, !1283, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !1291)
  %and6.i = and i32 %dec.i, 7, !dbg !1306
    #dbg_value(i32 %and6.i, !1283, !DIExpression(), !1291)
  %cmp7.i = icmp eq i32 %and6.i, 7, !dbg !1307
  %idx.ext.i = zext i1 %cmp7.i to i64, !dbg !1308
  %add.ptr.i = getelementptr inbounds i8, ptr %cur_byte.069.i, i64 %idx.ext.i, !dbg !1308
    #dbg_value(ptr %add.ptr.i, !1286, !DIExpression(), !1291)
  %add.i = add nsw i64 %byteoffset.065.i, %idx.ext.i, !dbg !1309
    #dbg_value(i64 %add.i, !1282, !DIExpression(), !1291)
  %6 = load i8, ptr %add.ptr.i, align 1, !dbg !1310
  %conv12.i = zext i8 %6 to i32, !dbg !1311
    #dbg_value(!DIArgList(i32 %conv12.i, i32 %and6.i), !1287, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !1291)
    #dbg_value(!DIArgList(i32 %conv12.i, i32 %and6.i), !1287, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !1291)
  %7 = shl nuw nsw i32 1, %and6.i, !dbg !1300
  %8 = and i32 %7, %conv12.i, !dbg !1300
  %cmp.i = icmp eq i32 %8, 0, !dbg !1300
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !dbg !1301, !llvm.loop !1312

while.end.i:                                      ; preds = %while.body.i
  %add15.i = add nuw nsw i32 %len.068.i, 8, !dbg !1314
  %shr16.i = lshr i32 %add15.i, 3, !dbg !1315
  %conv17.i = zext nneg i32 %shr16.i to i64, !dbg !1316
  %add18.i = add nsw i64 %add.i, %conv17.i, !dbg !1317
  %conv19.i = sext i32 %2 to i64, !dbg !1318
  %cmp20.i = icmp sgt i64 %add18.i, %conv19.i, !dbg !1319
  br i1 %cmp20.i, label %GetVLCSymbol.exit.thread, label %while.body24.i.preheader, !dbg !1320

while.body24.i.preheader:                         ; preds = %while.end.i
  %9 = icmp eq i32 %len.068.i, 0, !dbg !1321
  br i1 %9, label %GetVLCSymbol.exit.unr-lcssa, label %while.body24.i.preheader.new, !dbg !1321

while.body24.i.preheader.new:                     ; preds = %while.body24.i.preheader
  %unroll_iter = and i32 %inc.i, -2, !dbg !1321
  br label %while.body24.i, !dbg !1321

while.end.thread.i:                               ; preds = %entry
  %cmp2092.i = icmp sgt i32 %shr.i, %2, !dbg !1319
  br i1 %cmp2092.i, label %GetVLCSymbol.exit.thread, label %GetVLCSymbol.exit.thread20, !dbg !1320

GetVLCSymbol.exit.thread20:                       ; preds = %while.end.thread.i
  store i32 0, ptr %inf, align 4, !dbg !1322
  %len23 = getelementptr inbounds i8, ptr %sym, i64 12, !dbg !1323
  store i32 1, ptr %len23, align 4, !dbg !1324
  br label %if.end, !dbg !1325

while.body24.i:                                   ; preds = %while.body24.i, %while.body24.i.preheader.new
  %inf.079.i = phi i32 [ 0, %while.body24.i.preheader.new ], [ %or.i.1, %while.body24.i ]
  %cur_byte.178.i = phi ptr [ %add.ptr.i, %while.body24.i.preheader.new ], [ %add.ptr30.i.1, %while.body24.i ]
  %bitoffset.175.i = phi i32 [ %and6.i, %while.body24.i.preheader.new ], [ %and26.i.1, %while.body24.i ]
  %niter = phi i32 [ 0, %while.body24.i.preheader.new ], [ %niter.next.1, %while.body24.i ]
    #dbg_value(i32 %inf.079.i, !1288, !DIExpression(), !1326)
    #dbg_value(ptr %cur_byte.178.i, !1286, !DIExpression(), !1291)
    #dbg_value(i32 poison, !1285, !DIExpression(), !1291)
    #dbg_value(i32 poison, !1284, !DIExpression(), !1291)
    #dbg_value(i32 %bitoffset.175.i, !1283, !DIExpression(), !1291)
    #dbg_value(i32 poison, !1285, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1291)
  %dec25.i = add nuw nsw i32 %bitoffset.175.i, 7, !dbg !1327
    #dbg_value(i32 %bitoffset.175.i, !1283, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !1291)
  %and26.i = and i32 %dec25.i, 7, !dbg !1329
    #dbg_value(i32 %dec25.i, !1283, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_stack_value), !1291)
  %cmp27.i = icmp eq i32 %and26.i, 7, !dbg !1330
  %idx.ext29.i = zext i1 %cmp27.i to i64, !dbg !1331
  %add.ptr30.i = getelementptr inbounds i8, ptr %cur_byte.178.i, i64 %idx.ext29.i, !dbg !1331
    #dbg_value(ptr %add.ptr30.i, !1286, !DIExpression(), !1291)
    #dbg_value(i32 poison, !1284, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1291)
    #dbg_value(i32 %inf.079.i, !1288, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !1326)
  %10 = load i8, ptr %add.ptr30.i, align 1, !dbg !1332
  %conv32.i = zext i8 %10 to i32, !dbg !1333
  %shr33.i = lshr i32 %conv32.i, %and26.i, !dbg !1334
    #dbg_value(!DIArgList(i32 %shr33.i, i32 %inf.079.i), !1288, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !1326)
    #dbg_value(i32 poison, !1285, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1291)
    #dbg_value(i32 poison, !1285, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1291)
    #dbg_value(i32 poison, !1284, !DIExpression(), !1291)
    #dbg_value(i32 poison, !1285, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !1291)
  %dec25.i.1 = add nuw nsw i32 %bitoffset.175.i, 6, !dbg !1327
    #dbg_value(i32 %dec25.i, !1283, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_plus_uconst, 7, DW_OP_stack_value), !1291)
  %and26.i.1 = and i32 %dec25.i.1, 7, !dbg !1329
    #dbg_value(i32 %and26.i.1, !1283, !DIExpression(), !1291)
  %cmp27.i.1 = icmp eq i32 %and26.i.1, 7, !dbg !1330
  %idx.ext29.i.1 = zext i1 %cmp27.i.1 to i64, !dbg !1331
  %add.ptr30.i.1 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %idx.ext29.i.1, !dbg !1331
    #dbg_value(ptr %add.ptr30.i.1, !1286, !DIExpression(), !1291)
    #dbg_value(i32 poison, !1284, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1291)
  %11 = shl i32 %inf.079.i, 2, !dbg !1335
  %and34.i = shl nuw nsw i32 %shr33.i, 1, !dbg !1335
  %12 = and i32 %and34.i, 2, !dbg !1335
  %shl.i.1 = or disjoint i32 %11, %12, !dbg !1335
    #dbg_value(i32 %shl.i.1, !1288, !DIExpression(), !1326)
  %13 = load i8, ptr %add.ptr30.i.1, align 1, !dbg !1332
  %conv32.i.1 = zext i8 %13 to i32, !dbg !1333
  %shr33.i.1 = lshr i32 %conv32.i.1, %and26.i.1, !dbg !1334
  %and34.i.1 = and i32 %shr33.i.1, 1, !dbg !1336
  %or.i.1 = or disjoint i32 %and34.i.1, %shl.i.1, !dbg !1337
    #dbg_value(i32 %or.i.1, !1288, !DIExpression(), !1326)
    #dbg_value(i32 poison, !1285, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1291)
  %niter.next.1 = add i32 %niter, 2, !dbg !1321
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter, !dbg !1321
  br i1 %niter.ncmp.1, label %GetVLCSymbol.exit.unr-lcssa.loopexit, label %while.body24.i, !dbg !1321, !llvm.loop !1338

GetVLCSymbol.exit.thread:                         ; preds = %while.end.i, %while.end.thread.i
  %len18 = getelementptr inbounds i8, ptr %sym, i64 12, !dbg !1323
  store i32 -1, ptr %len18, align 4, !dbg !1324
  br label %return, !dbg !1325

GetVLCSymbol.exit.unr-lcssa.loopexit:             ; preds = %while.body24.i
  %14 = shl i32 %or.i.1, 1, !dbg !1335
  br label %GetVLCSymbol.exit.unr-lcssa, !dbg !1321

GetVLCSymbol.exit.unr-lcssa:                      ; preds = %GetVLCSymbol.exit.unr-lcssa.loopexit, %while.body24.i.preheader
  %or.i.lcssa.ph = phi i32 [ poison, %while.body24.i.preheader ], [ %or.i.1, %GetVLCSymbol.exit.unr-lcssa.loopexit ]
  %inf.079.i.unr = phi i32 [ 0, %while.body24.i.preheader ], [ %14, %GetVLCSymbol.exit.unr-lcssa.loopexit ]
  %cur_byte.178.i.unr = phi ptr [ %add.ptr.i, %while.body24.i.preheader ], [ %add.ptr30.i.1, %GetVLCSymbol.exit.unr-lcssa.loopexit ]
  %bitoffset.175.i.unr = phi i32 [ %and6.i, %while.body24.i.preheader ], [ %and26.i.1, %GetVLCSymbol.exit.unr-lcssa.loopexit ]
  %15 = and i32 %len.068.i, 1, !dbg !1321
  %lcmp.mod.not.not = icmp eq i32 %15, 0, !dbg !1321
  br i1 %lcmp.mod.not.not, label %while.body24.i.epil, label %GetVLCSymbol.exit, !dbg !1321

while.body24.i.epil:                              ; preds = %GetVLCSymbol.exit.unr-lcssa
    #dbg_value(i32 %inf.079.i.unr, !1288, !DIExpression(), !1326)
    #dbg_value(ptr %cur_byte.178.i.unr, !1286, !DIExpression(), !1291)
    #dbg_value(i32 poison, !1285, !DIExpression(), !1291)
    #dbg_value(i32 poison, !1284, !DIExpression(), !1291)
    #dbg_value(i32 %bitoffset.175.i.unr, !1283, !DIExpression(), !1291)
    #dbg_value(i32 poison, !1285, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1291)
  %dec25.i.epil = add nuw nsw i32 %bitoffset.175.i.unr, 7, !dbg !1327
    #dbg_value(i32 %bitoffset.175.i.unr, !1283, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !1291)
  %and26.i.epil = and i32 %dec25.i.epil, 7, !dbg !1329
    #dbg_value(i32 %and26.i.epil, !1283, !DIExpression(), !1291)
  %cmp27.i.epil = icmp eq i32 %and26.i.epil, 7, !dbg !1330
  %idx.ext29.i.epil = zext i1 %cmp27.i.epil to i64, !dbg !1331
  %add.ptr30.i.epil = getelementptr inbounds i8, ptr %cur_byte.178.i.unr, i64 %idx.ext29.i.epil, !dbg !1331
    #dbg_value(ptr %add.ptr30.i.epil, !1286, !DIExpression(), !1291)
    #dbg_value(i32 poison, !1284, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1291)
    #dbg_value(i32 %inf.079.i.unr, !1288, !DIExpression(), !1326)
  %16 = load i8, ptr %add.ptr30.i.epil, align 1, !dbg !1332
  %conv32.i.epil = zext i8 %16 to i32, !dbg !1333
  %shr33.i.epil = lshr i32 %conv32.i.epil, %and26.i.epil, !dbg !1334
  %and34.i.epil = and i32 %shr33.i.epil, 1, !dbg !1336
  %or.i.epil = or disjoint i32 %and34.i.epil, %inf.079.i.unr, !dbg !1337
    #dbg_value(i32 %or.i.epil, !1288, !DIExpression(), !1326)
    #dbg_value(i32 poison, !1285, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1291)
  br label %GetVLCSymbol.exit, !dbg !1321

GetVLCSymbol.exit:                                ; preds = %GetVLCSymbol.exit.unr-lcssa, %while.body24.i.epil
  %or.i.lcssa = phi i32 [ %or.i.lcssa.ph, %GetVLCSymbol.exit.unr-lcssa ], [ %or.i.epil, %while.body24.i.epil ], !dbg !1337
  %17 = add nuw i32 %inc5.i, %inc.i, !dbg !1321
  store i32 %or.i.lcssa, ptr %inf, align 4, !dbg !1322
  %len = getelementptr inbounds i8, ptr %sym, i64 12, !dbg !1323
  store i32 %17, ptr %len, align 4, !dbg !1324
  %cmp = icmp eq i32 %17, -1, !dbg !1340
  br i1 %cmp, label %return, label %if.end, !dbg !1325

if.end:                                           ; preds = %GetVLCSymbol.exit.thread20, %GetVLCSymbol.exit
  %len26 = phi ptr [ %len23, %GetVLCSymbol.exit.thread20 ], [ %len, %GetVLCSymbol.exit ]
  %bitcounter.1.lcssa.i25 = phi i32 [ 1, %GetVLCSymbol.exit.thread20 ], [ %17, %GetVLCSymbol.exit ]
  %18 = load i32, ptr %frame_bitoffset, align 8, !dbg !1342
  %add = add nsw i32 %18, %bitcounter.1.lcssa.i25, !dbg !1342
  store i32 %add, ptr %frame_bitoffset, align 8, !dbg !1342
  %mapping = getelementptr inbounds i8, ptr %sym, i64 32, !dbg !1343
  %19 = load ptr, ptr %mapping, align 8, !dbg !1343
  %20 = load i32, ptr %len26, align 4, !dbg !1344
  %21 = load i32, ptr %inf, align 8, !dbg !1345
  %value1 = getelementptr inbounds i8, ptr %sym, i64 4, !dbg !1346
  %value2 = getelementptr inbounds i8, ptr %sym, i64 8, !dbg !1347
  tail call void %19(i32 noundef %20, i32 noundef %21, ptr noundef nonnull %value1, ptr noundef nonnull %value2) #13, !dbg !1348
  br label %return, !dbg !1349

return:                                           ; preds = %GetVLCSymbol.exit.thread, %GetVLCSymbol.exit, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -1, %GetVLCSymbol.exit ], [ -1, %GetVLCSymbol.exit.thread ], !dbg !1269
  ret i32 %retval.0, !dbg !1350
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @se_v(ptr nocapture noundef readnone %tracestring, ptr nocapture noundef %bitstream) local_unnamed_addr #0 !dbg !1351 {
entry:
  %symbol = alloca %struct.syntaxelement, align 8, !DIAssignID !1356
    #dbg_assign(i1 undef, !1355, !DIExpression(), !1356, ptr %symbol, !DIExpression(), !1357)
    #dbg_value(ptr %tracestring, !1353, !DIExpression(), !1357)
    #dbg_value(ptr %bitstream, !1354, !DIExpression(), !1357)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %symbol) #13, !dbg !1358
  store i32 0, ptr %symbol, align 8, !dbg !1359, !DIAssignID !1360
    #dbg_assign(i32 0, !1355, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !1360, ptr %symbol, !DIExpression(), !1357)
  %mapping = getelementptr inbounds i8, ptr %symbol, i64 32, !dbg !1361
  store ptr @linfo_se, ptr %mapping, align 8, !dbg !1362, !DIAssignID !1363
    #dbg_assign(ptr @linfo_se, !1355, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !1363, ptr %mapping, !DIExpression(), !1357)
  %call = call i32 @readSyntaxElement_VLC(ptr noundef nonnull %symbol, ptr noundef %bitstream), !dbg !1364
  %len = getelementptr inbounds i8, ptr %symbol, i64 12, !dbg !1365
  %0 = load i32, ptr %len, align 4, !dbg !1365
  %1 = load ptr, ptr @p_Dec, align 8, !dbg !1366
  %UsedBits = getelementptr inbounds i8, ptr %1, i64 24, !dbg !1367
  %2 = load i32, ptr %UsedBits, align 8, !dbg !1368
  %add = add nsw i32 %2, %0, !dbg !1368
  store i32 %add, ptr %UsedBits, align 8, !dbg !1368
  %value1 = getelementptr inbounds i8, ptr %symbol, i64 4, !dbg !1369
  %3 = load i32, ptr %value1, align 4, !dbg !1369
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %symbol) #13, !dbg !1370
  ret i32 %3, !dbg !1371
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @linfo_se(i32 noundef %len, i32 noundef %info, ptr nocapture noundef writeonly %value1, ptr nocapture readnone %dummy) #2 !dbg !1372 {
entry:
    #dbg_value(i32 %len, !1374, !DIExpression(), !1379)
    #dbg_value(i32 %info, !1375, !DIExpression(), !1379)
    #dbg_value(ptr %value1, !1376, !DIExpression(), !1379)
    #dbg_value(ptr poison, !1377, !DIExpression(), !1379)
  %shr = ashr i32 %len, 1, !dbg !1380
  %shl = shl nuw i32 1, %shr, !dbg !1381
  %add = add i32 %shl, %info, !dbg !1382
    #dbg_value(i32 %add, !1378, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1379)
  %shr2 = lshr i32 %add, 1, !dbg !1383
  %0 = and i32 %add, 1, !dbg !1384
  %cmp.not = icmp eq i32 %0, 0, !dbg !1386
  %sub3 = sub nsw i32 0, %shr2
  %spec.select = select i1 %cmp.not, i32 %shr2, i32 %sub3, !dbg !1387
  store i32 %spec.select, ptr %value1, align 4, !dbg !1379
  ret void, !dbg !1388
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @u_v(i32 noundef %LenInBits, ptr nocapture noundef readnone %tracestring, ptr nocapture noundef %bitstream) local_unnamed_addr #3 !dbg !1389 {
entry:
    #dbg_value(i32 %LenInBits, !1393, !DIExpression(), !1397)
    #dbg_value(ptr %tracestring, !1394, !DIExpression(), !1397)
    #dbg_value(ptr %bitstream, !1395, !DIExpression(), !1397)
    #dbg_value(i32 0, !1396, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !1397)
    #dbg_value(i32 0, !1396, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !1397)
    #dbg_value(ptr @linfo_ue, !1396, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !1397)
    #dbg_value(i32 %LenInBits, !1396, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !1397)
    #dbg_value(ptr undef, !1398, !DIExpression(), !1403)
    #dbg_value(ptr %bitstream, !1401, !DIExpression(), !1403)
  %bitstream_length.i = getelementptr inbounds i8, ptr %bitstream, i64 12, !dbg !1405
  %0 = load i32, ptr %bitstream_length.i, align 4, !dbg !1405
  %shl.i = shl i32 %0, 3, !dbg !1406
  %add.i = or disjoint i32 %shl.i, 7, !dbg !1407
    #dbg_value(i32 %add.i, !1402, !DIExpression(), !1403)
  %streamBuffer.i = getelementptr inbounds i8, ptr %bitstream, i64 16, !dbg !1408
  %1 = load ptr, ptr %streamBuffer.i, align 8, !dbg !1408
  %frame_bitoffset.i = getelementptr inbounds i8, ptr %bitstream, i64 8, !dbg !1410
  %2 = load i32, ptr %frame_bitoffset.i, align 8, !dbg !1410
    #dbg_value(ptr %1, !1411, !DIExpression(), !1427)
    #dbg_value(i32 %2, !1416, !DIExpression(), !1427)
    #dbg_value(ptr undef, !1417, !DIExpression(), !1427)
    #dbg_value(i32 %add.i, !1418, !DIExpression(), !1427)
    #dbg_value(i32 %LenInBits, !1419, !DIExpression(), !1427)
  %add.i.i = add nsw i32 %2, %LenInBits, !dbg !1429
  %cmp.i.i = icmp sgt i32 %add.i.i, %add.i, !dbg !1430
  br i1 %cmp.i.i, label %readSyntaxElement_FLC.exit, label %if.else.i.i, !dbg !1431

if.else.i.i:                                      ; preds = %entry
    #dbg_value(i32 %2, !1423, !DIExpression(DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value), !1432)
    #dbg_value(i32 %LenInBits, !1424, !DIExpression(), !1432)
    #dbg_value(!DIArgList(ptr %1, i32 %2), !1425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !1432)
    #dbg_value(i32 0, !1426, !DIExpression(), !1432)
    #dbg_value(i32 %2, !1420, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !1432)
    #dbg_value(i32 %LenInBits, !1419, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1427)
  %tobool.not16.i.i = icmp eq i32 %LenInBits, 0, !dbg !1433
  br i1 %tobool.not16.i.i, label %if.end.i, label %while.body.preheader.i.i, !dbg !1433

while.body.preheader.i.i:                         ; preds = %if.else.i.i
  %shr.i.i = ashr i32 %2, 3, !dbg !1434
    #dbg_value(!DIArgList(ptr %1, i32 %shr.i.i), !1425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !1432)
    #dbg_value(i32 %shr.i.i, !1423, !DIExpression(), !1432)
  %idxprom.i.i = sext i32 %shr.i.i to i64, !dbg !1435
    #dbg_value(!DIArgList(ptr %1, i64 %idxprom.i.i), !1425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1432)
  %arrayidx.i.i = getelementptr inbounds i8, ptr %1, i64 %idxprom.i.i, !dbg !1435
    #dbg_value(ptr %arrayidx.i.i, !1425, !DIExpression(), !1432)
  %and.i.i = and i32 %2, 7, !dbg !1436
    #dbg_value(i32 %and.i.i, !1420, !DIExpression(DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !1432)
  %sub.i.i = xor i32 %and.i.i, 7, !dbg !1437
    #dbg_value(i32 %sub.i.i, !1420, !DIExpression(), !1432)
  %xtraiter = and i32 %LenInBits, 1, !dbg !1433
  %3 = icmp eq i32 %LenInBits, 1, !dbg !1433
  br i1 %3, label %GetBits.exit.i.unr-lcssa, label %while.body.preheader.i.i.new, !dbg !1433

while.body.preheader.i.i.new:                     ; preds = %while.body.preheader.i.i
  %unroll_iter = and i32 %LenInBits, -2, !dbg !1433
  br label %while.body.i.i, !dbg !1433

while.body.i.i:                                   ; preds = %while.body.i.i, %while.body.preheader.i.i.new
  %inf.020.i.i = phi i32 [ 0, %while.body.preheader.i.i.new ], [ %or.i.i.1, %while.body.i.i ]
  %curbyte.019.i.i = phi ptr [ %arrayidx.i.i, %while.body.preheader.i.i.new ], [ %spec.select15.i.i.1, %while.body.i.i ]
  %bitoffset.017.i.i = phi i32 [ %sub.i.i, %while.body.preheader.i.i.new ], [ %spec.select.i.i.1, %while.body.i.i ]
  %niter = phi i32 [ 0, %while.body.preheader.i.i.new ], [ %niter.next.1, %while.body.i.i ]
    #dbg_value(i32 %inf.020.i.i, !1426, !DIExpression(), !1432)
    #dbg_value(ptr %curbyte.019.i.i, !1425, !DIExpression(), !1432)
    #dbg_value(i32 poison, !1419, !DIExpression(), !1427)
    #dbg_value(i32 %bitoffset.017.i.i, !1420, !DIExpression(), !1432)
    #dbg_value(i32 poison, !1419, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1427)
    #dbg_value(i32 %inf.020.i.i, !1426, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !1432)
  %4 = load i8, ptr %curbyte.019.i.i, align 1, !dbg !1438
  %conv.i.i = zext i8 %4 to i32, !dbg !1440
  %dec1.i.i = add nsw i32 %bitoffset.017.i.i, -1, !dbg !1441
    #dbg_value(i32 %dec1.i.i, !1420, !DIExpression(), !1432)
  %shr2.i.i = lshr i32 %conv.i.i, %bitoffset.017.i.i, !dbg !1442
    #dbg_value(!DIArgList(i32 %shr2.i.i, i32 %inf.020.i.i), !1426, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !1432)
  %cmp4.i.i = icmp eq i32 %bitoffset.017.i.i, 0, !dbg !1443
  %spec.select.i.i = select i1 %cmp4.i.i, i32 7, i32 %dec1.i.i, !dbg !1445
  %spec.select15.idx.i.i = zext i1 %cmp4.i.i to i64, !dbg !1445
  %spec.select15.i.i = getelementptr inbounds i8, ptr %curbyte.019.i.i, i64 %spec.select15.idx.i.i, !dbg !1445
    #dbg_value(ptr %spec.select15.i.i, !1425, !DIExpression(), !1432)
    #dbg_value(i32 %spec.select.i.i, !1420, !DIExpression(), !1432)
    #dbg_value(i32 poison, !1419, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1427)
    #dbg_value(i32 poison, !1419, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1427)
    #dbg_value(i32 poison, !1419, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !1427)
  %5 = shl i32 %inf.020.i.i, 2, !dbg !1446
  %and3.i.i = shl nuw nsw i32 %shr2.i.i, 1, !dbg !1446
  %6 = and i32 %and3.i.i, 2, !dbg !1446
  %shl.i.i.1 = or disjoint i32 %5, %6, !dbg !1446
    #dbg_value(i32 %shl.i.i.1, !1426, !DIExpression(), !1432)
  %7 = load i8, ptr %spec.select15.i.i, align 1, !dbg !1438
  %conv.i.i.1 = zext i8 %7 to i32, !dbg !1440
  %dec1.i.i.1 = add nsw i32 %spec.select.i.i, -1, !dbg !1441
    #dbg_value(i32 %dec1.i.i.1, !1420, !DIExpression(), !1432)
  %shr2.i.i.1 = lshr i32 %conv.i.i.1, %spec.select.i.i, !dbg !1442
  %and3.i.i.1 = and i32 %shr2.i.i.1, 1, !dbg !1447
  %or.i.i.1 = or disjoint i32 %and3.i.i.1, %shl.i.i.1, !dbg !1448
    #dbg_value(i32 %or.i.i.1, !1426, !DIExpression(), !1432)
  %cmp4.i.i.1 = icmp eq i32 %spec.select.i.i, 0, !dbg !1443
  %spec.select.i.i.1 = select i1 %cmp4.i.i.1, i32 7, i32 %dec1.i.i.1, !dbg !1445
  %spec.select15.idx.i.i.1 = zext i1 %cmp4.i.i.1 to i64, !dbg !1445
  %spec.select15.i.i.1 = getelementptr inbounds i8, ptr %spec.select15.i.i, i64 %spec.select15.idx.i.i.1, !dbg !1445
    #dbg_value(ptr %spec.select15.i.i.1, !1425, !DIExpression(), !1432)
    #dbg_value(i32 %spec.select.i.i.1, !1420, !DIExpression(), !1432)
    #dbg_value(i32 poison, !1419, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1427)
  %niter.next.1 = add i32 %niter, 2, !dbg !1433
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter, !dbg !1433
  br i1 %niter.ncmp.1, label %GetBits.exit.i.unr-lcssa.loopexit, label %while.body.i.i, !dbg !1433, !llvm.loop !1449

GetBits.exit.i.unr-lcssa.loopexit:                ; preds = %while.body.i.i
  %8 = shl i32 %or.i.i.1, 1, !dbg !1446
  br label %GetBits.exit.i.unr-lcssa, !dbg !1433

GetBits.exit.i.unr-lcssa:                         ; preds = %GetBits.exit.i.unr-lcssa.loopexit, %while.body.preheader.i.i
  %or.i.i.lcssa.ph = phi i32 [ poison, %while.body.preheader.i.i ], [ %or.i.i.1, %GetBits.exit.i.unr-lcssa.loopexit ]
  %inf.020.i.i.unr = phi i32 [ 0, %while.body.preheader.i.i ], [ %8, %GetBits.exit.i.unr-lcssa.loopexit ]
  %curbyte.019.i.i.unr = phi ptr [ %arrayidx.i.i, %while.body.preheader.i.i ], [ %spec.select15.i.i.1, %GetBits.exit.i.unr-lcssa.loopexit ]
  %bitoffset.017.i.i.unr = phi i32 [ %sub.i.i, %while.body.preheader.i.i ], [ %spec.select.i.i.1, %GetBits.exit.i.unr-lcssa.loopexit ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !1433
  br i1 %lcmp.mod.not, label %GetBits.exit.i, label %while.body.i.i.epil, !dbg !1433

while.body.i.i.epil:                              ; preds = %GetBits.exit.i.unr-lcssa
    #dbg_value(i32 %inf.020.i.i.unr, !1426, !DIExpression(), !1432)
    #dbg_value(ptr %curbyte.019.i.i.unr, !1425, !DIExpression(), !1432)
    #dbg_value(i32 poison, !1419, !DIExpression(), !1427)
    #dbg_value(i32 %bitoffset.017.i.i.unr, !1420, !DIExpression(), !1432)
    #dbg_value(i32 poison, !1419, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1427)
    #dbg_value(i32 %inf.020.i.i.unr, !1426, !DIExpression(), !1432)
  %9 = load i8, ptr %curbyte.019.i.i.unr, align 1, !dbg !1438
  %conv.i.i.epil = zext i8 %9 to i32, !dbg !1440
    #dbg_value(i32 %bitoffset.017.i.i.unr, !1420, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1432)
  %shr2.i.i.epil = lshr i32 %conv.i.i.epil, %bitoffset.017.i.i.unr, !dbg !1442
  %and3.i.i.epil = and i32 %shr2.i.i.epil, 1, !dbg !1447
  %or.i.i.epil = or disjoint i32 %and3.i.i.epil, %inf.020.i.i.unr, !dbg !1448
    #dbg_value(i32 %or.i.i.epil, !1426, !DIExpression(), !1432)
    #dbg_value(!DIArgList(ptr %curbyte.019.i.i.unr, i32 %bitoffset.017.i.i.unr), !1425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !1432)
    #dbg_value(i32 poison, !1420, !DIExpression(), !1432)
    #dbg_value(i32 poison, !1419, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1427)
  br label %GetBits.exit.i, !dbg !1451

GetBits.exit.i:                                   ; preds = %GetBits.exit.i.unr-lcssa, %while.body.i.i.epil
  %or.i.i.lcssa = phi i32 [ %or.i.i.lcssa.ph, %GetBits.exit.i.unr-lcssa ], [ %or.i.i.epil, %while.body.i.i.epil ], !dbg !1448
    #dbg_value(i32 %or.i.i.lcssa, !1396, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !1397)
  %cmp.i = icmp slt i32 %LenInBits, 0, !dbg !1451
  br i1 %cmp.i, label %readSyntaxElement_FLC.exit, label %if.end.i, !dbg !1452

if.end.i:                                         ; preds = %if.else.i.i, %GetBits.exit.i
  %symbol.sroa.7.0 = phi i32 [ %or.i.i.lcssa, %GetBits.exit.i ], [ 0, %if.else.i.i ], !dbg !1453
    #dbg_value(i32 %symbol.sroa.7.0, !1396, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !1397)
    #dbg_value(i32 poison, !1396, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !1397)
  store i32 %add.i.i, ptr %frame_bitoffset.i, align 8, !dbg !1454
  br label %readSyntaxElement_FLC.exit, !dbg !1455

readSyntaxElement_FLC.exit:                       ; preds = %entry, %GetBits.exit.i, %if.end.i
  %symbol.sroa.7.1 = phi i32 [ 0, %entry ], [ %symbol.sroa.7.0, %if.end.i ], [ %or.i.i.lcssa, %GetBits.exit.i ], !dbg !1397
    #dbg_value(i32 %symbol.sroa.7.1, !1396, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !1397)
  %10 = load ptr, ptr @p_Dec, align 8, !dbg !1456
  %UsedBits = getelementptr inbounds i8, ptr %10, i64 24, !dbg !1457
  %11 = load i32, ptr %UsedBits, align 8, !dbg !1458
  %add = add nsw i32 %11, %LenInBits, !dbg !1458
  store i32 %add, ptr %UsedBits, align 8, !dbg !1458
  ret i32 %symbol.sroa.7.1, !dbg !1459
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 -1, 2) i32 @readSyntaxElement_FLC(ptr nocapture noundef %sym, ptr nocapture noundef %currStream) local_unnamed_addr #4 !dbg !1399 {
entry:
    #dbg_value(ptr %sym, !1398, !DIExpression(), !1460)
    #dbg_value(ptr %currStream, !1401, !DIExpression(), !1460)
  %bitstream_length = getelementptr inbounds i8, ptr %currStream, i64 12, !dbg !1461
  %0 = load i32, ptr %bitstream_length, align 4, !dbg !1461
  %shl = shl i32 %0, 3, !dbg !1462
  %add = or disjoint i32 %shl, 7, !dbg !1463
    #dbg_value(i32 %add, !1402, !DIExpression(), !1460)
  %streamBuffer = getelementptr inbounds i8, ptr %currStream, i64 16, !dbg !1464
  %1 = load ptr, ptr %streamBuffer, align 8, !dbg !1464
  %frame_bitoffset = getelementptr inbounds i8, ptr %currStream, i64 8, !dbg !1465
  %2 = load i32, ptr %frame_bitoffset, align 8, !dbg !1465
  %inf = getelementptr inbounds i8, ptr %sym, i64 16, !dbg !1466
  %len = getelementptr inbounds i8, ptr %sym, i64 12, !dbg !1467
  %3 = load i32, ptr %len, align 4, !dbg !1467
    #dbg_value(ptr %1, !1411, !DIExpression(), !1468)
    #dbg_value(i32 %2, !1416, !DIExpression(), !1468)
    #dbg_value(ptr %inf, !1417, !DIExpression(), !1468)
    #dbg_value(i32 %add, !1418, !DIExpression(), !1468)
    #dbg_value(i32 %3, !1419, !DIExpression(), !1468)
  %add.i = add nsw i32 %3, %2, !dbg !1470
  %cmp.i = icmp sgt i32 %add.i, %add, !dbg !1471
  br i1 %cmp.i, label %cleanup, label %if.else.i, !dbg !1472

if.else.i:                                        ; preds = %entry
    #dbg_value(i32 %2, !1423, !DIExpression(DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value), !1473)
    #dbg_value(i32 %3, !1424, !DIExpression(), !1473)
    #dbg_value(!DIArgList(ptr %1, i32 %2), !1425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !1473)
    #dbg_value(i32 0, !1426, !DIExpression(), !1473)
    #dbg_value(i32 %2, !1420, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !1473)
    #dbg_value(i32 %3, !1419, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1468)
  %tobool.not16.i = icmp eq i32 %3, 0, !dbg !1474
  br i1 %tobool.not16.i, label %GetBits.exit.thread14, label %while.body.preheader.i, !dbg !1474

GetBits.exit.thread14:                            ; preds = %if.else.i
  store i32 0, ptr %inf, align 4, !dbg !1475
  br label %if.end, !dbg !1476

while.body.preheader.i:                           ; preds = %if.else.i
  %shr.i = ashr i32 %2, 3, !dbg !1477
    #dbg_value(!DIArgList(ptr %1, i32 %shr.i), !1425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !1473)
    #dbg_value(i32 %shr.i, !1423, !DIExpression(), !1473)
  %idxprom.i = sext i32 %shr.i to i64, !dbg !1478
    #dbg_value(!DIArgList(ptr %1, i64 %idxprom.i), !1425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1473)
  %arrayidx.i = getelementptr inbounds i8, ptr %1, i64 %idxprom.i, !dbg !1478
    #dbg_value(ptr %arrayidx.i, !1425, !DIExpression(), !1473)
  %and.i = and i32 %2, 7, !dbg !1479
    #dbg_value(i32 %and.i, !1420, !DIExpression(DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !1473)
  %sub.i = xor i32 %and.i, 7, !dbg !1480
    #dbg_value(i32 %sub.i, !1420, !DIExpression(), !1473)
  %xtraiter = and i32 %3, 1, !dbg !1474
  %4 = icmp eq i32 %3, 1, !dbg !1474
  br i1 %4, label %GetBits.exit.unr-lcssa, label %while.body.preheader.i.new, !dbg !1474

while.body.preheader.i.new:                       ; preds = %while.body.preheader.i
  %unroll_iter = and i32 %3, -2, !dbg !1474
  br label %while.body.i, !dbg !1474

while.body.i:                                     ; preds = %while.body.i, %while.body.preheader.i.new
  %inf.020.i = phi i32 [ 0, %while.body.preheader.i.new ], [ %or.i.1, %while.body.i ]
  %curbyte.019.i = phi ptr [ %arrayidx.i, %while.body.preheader.i.new ], [ %spec.select15.i.1, %while.body.i ]
  %bitoffset.017.i = phi i32 [ %sub.i, %while.body.preheader.i.new ], [ %spec.select.i.1, %while.body.i ]
  %niter = phi i32 [ 0, %while.body.preheader.i.new ], [ %niter.next.1, %while.body.i ]
    #dbg_value(i32 %inf.020.i, !1426, !DIExpression(), !1473)
    #dbg_value(ptr %curbyte.019.i, !1425, !DIExpression(), !1473)
    #dbg_value(i32 poison, !1419, !DIExpression(), !1468)
    #dbg_value(i32 %bitoffset.017.i, !1420, !DIExpression(), !1473)
    #dbg_value(i32 poison, !1419, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1468)
    #dbg_value(i32 %inf.020.i, !1426, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !1473)
  %5 = load i8, ptr %curbyte.019.i, align 1, !dbg !1481
  %conv.i = zext i8 %5 to i32, !dbg !1482
  %dec1.i = add nsw i32 %bitoffset.017.i, -1, !dbg !1483
    #dbg_value(i32 %dec1.i, !1420, !DIExpression(), !1473)
  %shr2.i = lshr i32 %conv.i, %bitoffset.017.i, !dbg !1484
    #dbg_value(!DIArgList(i32 %shr2.i, i32 %inf.020.i), !1426, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !1473)
  %cmp4.i = icmp eq i32 %bitoffset.017.i, 0, !dbg !1485
  %spec.select.i = select i1 %cmp4.i, i32 7, i32 %dec1.i, !dbg !1486
  %spec.select15.idx.i = zext i1 %cmp4.i to i64, !dbg !1486
  %spec.select15.i = getelementptr inbounds i8, ptr %curbyte.019.i, i64 %spec.select15.idx.i, !dbg !1486
    #dbg_value(ptr %spec.select15.i, !1425, !DIExpression(), !1473)
    #dbg_value(i32 %spec.select.i, !1420, !DIExpression(), !1473)
    #dbg_value(i32 poison, !1419, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1468)
    #dbg_value(i32 poison, !1419, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1468)
    #dbg_value(i32 poison, !1419, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !1468)
  %6 = shl i32 %inf.020.i, 2, !dbg !1487
  %and3.i = shl nuw nsw i32 %shr2.i, 1, !dbg !1487
  %7 = and i32 %and3.i, 2, !dbg !1487
  %shl.i.1 = or disjoint i32 %6, %7, !dbg !1487
    #dbg_value(i32 %shl.i.1, !1426, !DIExpression(), !1473)
  %8 = load i8, ptr %spec.select15.i, align 1, !dbg !1481
  %conv.i.1 = zext i8 %8 to i32, !dbg !1482
  %dec1.i.1 = add nsw i32 %spec.select.i, -1, !dbg !1483
    #dbg_value(i32 %dec1.i.1, !1420, !DIExpression(), !1473)
  %shr2.i.1 = lshr i32 %conv.i.1, %spec.select.i, !dbg !1484
  %and3.i.1 = and i32 %shr2.i.1, 1, !dbg !1488
  %or.i.1 = or disjoint i32 %and3.i.1, %shl.i.1, !dbg !1489
    #dbg_value(i32 %or.i.1, !1426, !DIExpression(), !1473)
  %cmp4.i.1 = icmp eq i32 %spec.select.i, 0, !dbg !1485
  %spec.select.i.1 = select i1 %cmp4.i.1, i32 7, i32 %dec1.i.1, !dbg !1486
  %spec.select15.idx.i.1 = zext i1 %cmp4.i.1 to i64, !dbg !1486
  %spec.select15.i.1 = getelementptr inbounds i8, ptr %spec.select15.i, i64 %spec.select15.idx.i.1, !dbg !1486
    #dbg_value(ptr %spec.select15.i.1, !1425, !DIExpression(), !1473)
    #dbg_value(i32 %spec.select.i.1, !1420, !DIExpression(), !1473)
    #dbg_value(i32 poison, !1419, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1468)
  %niter.next.1 = add i32 %niter, 2, !dbg !1474
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter, !dbg !1474
  br i1 %niter.ncmp.1, label %GetBits.exit.unr-lcssa.loopexit, label %while.body.i, !dbg !1474, !llvm.loop !1490

GetBits.exit.unr-lcssa.loopexit:                  ; preds = %while.body.i
  %9 = shl i32 %or.i.1, 1, !dbg !1487
  br label %GetBits.exit.unr-lcssa, !dbg !1474

GetBits.exit.unr-lcssa:                           ; preds = %GetBits.exit.unr-lcssa.loopexit, %while.body.preheader.i
  %or.i.lcssa.ph = phi i32 [ poison, %while.body.preheader.i ], [ %or.i.1, %GetBits.exit.unr-lcssa.loopexit ]
  %inf.020.i.unr = phi i32 [ 0, %while.body.preheader.i ], [ %9, %GetBits.exit.unr-lcssa.loopexit ]
  %curbyte.019.i.unr = phi ptr [ %arrayidx.i, %while.body.preheader.i ], [ %spec.select15.i.1, %GetBits.exit.unr-lcssa.loopexit ]
  %bitoffset.017.i.unr = phi i32 [ %sub.i, %while.body.preheader.i ], [ %spec.select.i.1, %GetBits.exit.unr-lcssa.loopexit ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !1474
  br i1 %lcmp.mod.not, label %GetBits.exit, label %while.body.i.epil, !dbg !1474

while.body.i.epil:                                ; preds = %GetBits.exit.unr-lcssa
    #dbg_value(i32 %inf.020.i.unr, !1426, !DIExpression(), !1473)
    #dbg_value(ptr %curbyte.019.i.unr, !1425, !DIExpression(), !1473)
    #dbg_value(i32 poison, !1419, !DIExpression(), !1468)
    #dbg_value(i32 %bitoffset.017.i.unr, !1420, !DIExpression(), !1473)
    #dbg_value(i32 poison, !1419, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1468)
    #dbg_value(i32 %inf.020.i.unr, !1426, !DIExpression(), !1473)
  %10 = load i8, ptr %curbyte.019.i.unr, align 1, !dbg !1481
  %conv.i.epil = zext i8 %10 to i32, !dbg !1482
    #dbg_value(i32 %bitoffset.017.i.unr, !1420, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1473)
  %shr2.i.epil = lshr i32 %conv.i.epil, %bitoffset.017.i.unr, !dbg !1484
  %and3.i.epil = and i32 %shr2.i.epil, 1, !dbg !1488
  %or.i.epil = or disjoint i32 %and3.i.epil, %inf.020.i.unr, !dbg !1489
    #dbg_value(i32 %or.i.epil, !1426, !DIExpression(), !1473)
    #dbg_value(!DIArgList(ptr %curbyte.019.i.unr, i32 %bitoffset.017.i.unr), !1425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !1473)
    #dbg_value(i32 poison, !1420, !DIExpression(), !1473)
    #dbg_value(i32 poison, !1419, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1468)
  br label %GetBits.exit, !dbg !1475

GetBits.exit:                                     ; preds = %GetBits.exit.unr-lcssa, %while.body.i.epil
  %or.i.lcssa = phi i32 [ %or.i.lcssa.ph, %GetBits.exit.unr-lcssa ], [ %or.i.epil, %while.body.i.epil ], !dbg !1489
  store i32 %or.i.lcssa, ptr %inf, align 4, !dbg !1475
  %cmp = icmp slt i32 %3, 0, !dbg !1492
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1476

if.end:                                           ; preds = %GetBits.exit.thread14, %GetBits.exit
  %11 = phi i32 [ 0, %GetBits.exit.thread14 ], [ %or.i.lcssa, %GetBits.exit ], !dbg !1493
  %value1 = getelementptr inbounds i8, ptr %sym, i64 4, !dbg !1494
  store i32 %11, ptr %value1, align 4, !dbg !1495
  %12 = load i32, ptr %frame_bitoffset, align 8, !dbg !1496
  %add4 = add nsw i32 %12, %3, !dbg !1496
  store i32 %add4, ptr %frame_bitoffset, align 8, !dbg !1496
  br label %cleanup, !dbg !1497

cleanup:                                          ; preds = %entry, %GetBits.exit, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -1, %GetBits.exit ], [ -1, %entry ], !dbg !1460
  ret i32 %retval.0, !dbg !1498
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @i_v(i32 noundef %LenInBits, ptr nocapture noundef readnone %tracestring, ptr nocapture noundef %bitstream) local_unnamed_addr #3 !dbg !1499 {
entry:
    #dbg_value(i32 %LenInBits, !1501, !DIExpression(), !1505)
    #dbg_value(ptr %tracestring, !1502, !DIExpression(), !1505)
    #dbg_value(ptr %bitstream, !1503, !DIExpression(), !1505)
    #dbg_value(i32 0, !1504, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !1505)
    #dbg_value(i32 0, !1504, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !1505)
    #dbg_value(ptr @linfo_ue, !1504, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !1505)
    #dbg_value(i32 %LenInBits, !1504, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !1505)
    #dbg_value(ptr undef, !1398, !DIExpression(), !1506)
    #dbg_value(ptr %bitstream, !1401, !DIExpression(), !1506)
  %bitstream_length.i = getelementptr inbounds i8, ptr %bitstream, i64 12, !dbg !1508
  %0 = load i32, ptr %bitstream_length.i, align 4, !dbg !1508
  %shl.i = shl i32 %0, 3, !dbg !1509
  %add.i = or disjoint i32 %shl.i, 7, !dbg !1510
    #dbg_value(i32 %add.i, !1402, !DIExpression(), !1506)
  %streamBuffer.i = getelementptr inbounds i8, ptr %bitstream, i64 16, !dbg !1511
  %1 = load ptr, ptr %streamBuffer.i, align 8, !dbg !1511
  %frame_bitoffset.i = getelementptr inbounds i8, ptr %bitstream, i64 8, !dbg !1512
  %2 = load i32, ptr %frame_bitoffset.i, align 8, !dbg !1512
    #dbg_value(ptr %1, !1411, !DIExpression(), !1513)
    #dbg_value(i32 %2, !1416, !DIExpression(), !1513)
    #dbg_value(ptr undef, !1417, !DIExpression(), !1513)
    #dbg_value(i32 %add.i, !1418, !DIExpression(), !1513)
    #dbg_value(i32 %LenInBits, !1419, !DIExpression(), !1513)
  %add.i.i = add nsw i32 %2, %LenInBits, !dbg !1515
  %cmp.i.i = icmp sgt i32 %add.i.i, %add.i, !dbg !1516
  br i1 %cmp.i.i, label %readSyntaxElement_FLC.exit, label %if.else.i.i, !dbg !1517

if.else.i.i:                                      ; preds = %entry
    #dbg_value(i32 %2, !1423, !DIExpression(DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value), !1518)
    #dbg_value(i32 %LenInBits, !1424, !DIExpression(), !1518)
    #dbg_value(!DIArgList(ptr %1, i32 %2), !1425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !1518)
    #dbg_value(i32 0, !1426, !DIExpression(), !1518)
    #dbg_value(i32 %2, !1420, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !1518)
    #dbg_value(i32 %LenInBits, !1419, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1513)
  %tobool.not16.i.i = icmp eq i32 %LenInBits, 0, !dbg !1519
  br i1 %tobool.not16.i.i, label %if.end.i, label %while.body.preheader.i.i, !dbg !1519

while.body.preheader.i.i:                         ; preds = %if.else.i.i
  %shr.i.i = ashr i32 %2, 3, !dbg !1520
    #dbg_value(!DIArgList(ptr %1, i32 %shr.i.i), !1425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !1518)
    #dbg_value(i32 %shr.i.i, !1423, !DIExpression(), !1518)
  %idxprom.i.i = sext i32 %shr.i.i to i64, !dbg !1521
    #dbg_value(!DIArgList(ptr %1, i64 %idxprom.i.i), !1425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1518)
  %arrayidx.i.i = getelementptr inbounds i8, ptr %1, i64 %idxprom.i.i, !dbg !1521
    #dbg_value(ptr %arrayidx.i.i, !1425, !DIExpression(), !1518)
  %and.i.i = and i32 %2, 7, !dbg !1522
    #dbg_value(i32 %and.i.i, !1420, !DIExpression(DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !1518)
  %sub.i.i = xor i32 %and.i.i, 7, !dbg !1523
    #dbg_value(i32 %sub.i.i, !1420, !DIExpression(), !1518)
  %xtraiter = and i32 %LenInBits, 1, !dbg !1519
  %3 = icmp eq i32 %LenInBits, 1, !dbg !1519
  br i1 %3, label %GetBits.exit.i.unr-lcssa, label %while.body.preheader.i.i.new, !dbg !1519

while.body.preheader.i.i.new:                     ; preds = %while.body.preheader.i.i
  %unroll_iter = and i32 %LenInBits, -2, !dbg !1519
  br label %while.body.i.i, !dbg !1519

while.body.i.i:                                   ; preds = %while.body.i.i, %while.body.preheader.i.i.new
  %inf.020.i.i = phi i32 [ 0, %while.body.preheader.i.i.new ], [ %or.i.i.1, %while.body.i.i ]
  %curbyte.019.i.i = phi ptr [ %arrayidx.i.i, %while.body.preheader.i.i.new ], [ %spec.select15.i.i.1, %while.body.i.i ]
  %bitoffset.017.i.i = phi i32 [ %sub.i.i, %while.body.preheader.i.i.new ], [ %spec.select.i.i.1, %while.body.i.i ]
  %niter = phi i32 [ 0, %while.body.preheader.i.i.new ], [ %niter.next.1, %while.body.i.i ]
    #dbg_value(i32 %inf.020.i.i, !1426, !DIExpression(), !1518)
    #dbg_value(ptr %curbyte.019.i.i, !1425, !DIExpression(), !1518)
    #dbg_value(i32 poison, !1419, !DIExpression(), !1513)
    #dbg_value(i32 %bitoffset.017.i.i, !1420, !DIExpression(), !1518)
    #dbg_value(i32 poison, !1419, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1513)
    #dbg_value(i32 %inf.020.i.i, !1426, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !1518)
  %4 = load i8, ptr %curbyte.019.i.i, align 1, !dbg !1524
  %conv.i.i = zext i8 %4 to i32, !dbg !1525
  %dec1.i.i = add nsw i32 %bitoffset.017.i.i, -1, !dbg !1526
    #dbg_value(i32 %dec1.i.i, !1420, !DIExpression(), !1518)
  %shr2.i.i = lshr i32 %conv.i.i, %bitoffset.017.i.i, !dbg !1527
    #dbg_value(!DIArgList(i32 %shr2.i.i, i32 %inf.020.i.i), !1426, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !1518)
  %cmp4.i.i = icmp eq i32 %bitoffset.017.i.i, 0, !dbg !1528
  %spec.select.i.i = select i1 %cmp4.i.i, i32 7, i32 %dec1.i.i, !dbg !1529
  %spec.select15.idx.i.i = zext i1 %cmp4.i.i to i64, !dbg !1529
  %spec.select15.i.i = getelementptr inbounds i8, ptr %curbyte.019.i.i, i64 %spec.select15.idx.i.i, !dbg !1529
    #dbg_value(ptr %spec.select15.i.i, !1425, !DIExpression(), !1518)
    #dbg_value(i32 %spec.select.i.i, !1420, !DIExpression(), !1518)
    #dbg_value(i32 poison, !1419, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1513)
    #dbg_value(i32 poison, !1419, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1513)
    #dbg_value(i32 poison, !1419, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !1513)
  %5 = shl i32 %inf.020.i.i, 2, !dbg !1530
  %and3.i.i = shl nuw nsw i32 %shr2.i.i, 1, !dbg !1530
  %6 = and i32 %and3.i.i, 2, !dbg !1530
  %shl.i.i.1 = or disjoint i32 %5, %6, !dbg !1530
    #dbg_value(i32 %shl.i.i.1, !1426, !DIExpression(), !1518)
  %7 = load i8, ptr %spec.select15.i.i, align 1, !dbg !1524
  %conv.i.i.1 = zext i8 %7 to i32, !dbg !1525
  %dec1.i.i.1 = add nsw i32 %spec.select.i.i, -1, !dbg !1526
    #dbg_value(i32 %dec1.i.i.1, !1420, !DIExpression(), !1518)
  %shr2.i.i.1 = lshr i32 %conv.i.i.1, %spec.select.i.i, !dbg !1527
  %and3.i.i.1 = and i32 %shr2.i.i.1, 1, !dbg !1531
  %or.i.i.1 = or disjoint i32 %and3.i.i.1, %shl.i.i.1, !dbg !1532
    #dbg_value(i32 %or.i.i.1, !1426, !DIExpression(), !1518)
  %cmp4.i.i.1 = icmp eq i32 %spec.select.i.i, 0, !dbg !1528
  %spec.select.i.i.1 = select i1 %cmp4.i.i.1, i32 7, i32 %dec1.i.i.1, !dbg !1529
  %spec.select15.idx.i.i.1 = zext i1 %cmp4.i.i.1 to i64, !dbg !1529
  %spec.select15.i.i.1 = getelementptr inbounds i8, ptr %spec.select15.i.i, i64 %spec.select15.idx.i.i.1, !dbg !1529
    #dbg_value(ptr %spec.select15.i.i.1, !1425, !DIExpression(), !1518)
    #dbg_value(i32 %spec.select.i.i.1, !1420, !DIExpression(), !1518)
    #dbg_value(i32 poison, !1419, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1513)
  %niter.next.1 = add i32 %niter, 2, !dbg !1519
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter, !dbg !1519
  br i1 %niter.ncmp.1, label %GetBits.exit.i.unr-lcssa.loopexit, label %while.body.i.i, !dbg !1519, !llvm.loop !1533

GetBits.exit.i.unr-lcssa.loopexit:                ; preds = %while.body.i.i
  %8 = shl i32 %or.i.i.1, 1, !dbg !1530
  br label %GetBits.exit.i.unr-lcssa, !dbg !1519

GetBits.exit.i.unr-lcssa:                         ; preds = %GetBits.exit.i.unr-lcssa.loopexit, %while.body.preheader.i.i
  %or.i.i.lcssa.ph = phi i32 [ poison, %while.body.preheader.i.i ], [ %or.i.i.1, %GetBits.exit.i.unr-lcssa.loopexit ]
  %inf.020.i.i.unr = phi i32 [ 0, %while.body.preheader.i.i ], [ %8, %GetBits.exit.i.unr-lcssa.loopexit ]
  %curbyte.019.i.i.unr = phi ptr [ %arrayidx.i.i, %while.body.preheader.i.i ], [ %spec.select15.i.i.1, %GetBits.exit.i.unr-lcssa.loopexit ]
  %bitoffset.017.i.i.unr = phi i32 [ %sub.i.i, %while.body.preheader.i.i ], [ %spec.select.i.i.1, %GetBits.exit.i.unr-lcssa.loopexit ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !1519
  br i1 %lcmp.mod.not, label %GetBits.exit.i, label %while.body.i.i.epil, !dbg !1519

while.body.i.i.epil:                              ; preds = %GetBits.exit.i.unr-lcssa
    #dbg_value(i32 %inf.020.i.i.unr, !1426, !DIExpression(), !1518)
    #dbg_value(ptr %curbyte.019.i.i.unr, !1425, !DIExpression(), !1518)
    #dbg_value(i32 poison, !1419, !DIExpression(), !1513)
    #dbg_value(i32 %bitoffset.017.i.i.unr, !1420, !DIExpression(), !1518)
    #dbg_value(i32 poison, !1419, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1513)
    #dbg_value(i32 %inf.020.i.i.unr, !1426, !DIExpression(), !1518)
  %9 = load i8, ptr %curbyte.019.i.i.unr, align 1, !dbg !1524
  %conv.i.i.epil = zext i8 %9 to i32, !dbg !1525
    #dbg_value(i32 %bitoffset.017.i.i.unr, !1420, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1518)
  %shr2.i.i.epil = lshr i32 %conv.i.i.epil, %bitoffset.017.i.i.unr, !dbg !1527
  %and3.i.i.epil = and i32 %shr2.i.i.epil, 1, !dbg !1531
  %or.i.i.epil = or disjoint i32 %and3.i.i.epil, %inf.020.i.i.unr, !dbg !1532
    #dbg_value(i32 %or.i.i.epil, !1426, !DIExpression(), !1518)
    #dbg_value(!DIArgList(ptr %curbyte.019.i.i.unr, i32 %bitoffset.017.i.i.unr), !1425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !1518)
    #dbg_value(i32 poison, !1420, !DIExpression(), !1518)
    #dbg_value(i32 poison, !1419, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1513)
  br label %GetBits.exit.i, !dbg !1535

GetBits.exit.i:                                   ; preds = %GetBits.exit.i.unr-lcssa, %while.body.i.i.epil
  %or.i.i.lcssa = phi i32 [ %or.i.i.lcssa.ph, %GetBits.exit.i.unr-lcssa ], [ %or.i.i.epil, %while.body.i.i.epil ], !dbg !1532
    #dbg_value(i32 %or.i.i.lcssa, !1504, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !1505)
  %cmp.i = icmp slt i32 %LenInBits, 0, !dbg !1535
  br i1 %cmp.i, label %readSyntaxElement_FLC.exit, label %if.end.i, !dbg !1536

if.end.i:                                         ; preds = %if.else.i.i, %GetBits.exit.i
  %symbol.sroa.7.0 = phi i32 [ %or.i.i.lcssa, %GetBits.exit.i ], [ 0, %if.else.i.i ], !dbg !1537
    #dbg_value(i32 %symbol.sroa.7.0, !1504, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !1505)
    #dbg_value(i32 poison, !1504, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !1505)
  store i32 %add.i.i, ptr %frame_bitoffset.i, align 8, !dbg !1538
  br label %readSyntaxElement_FLC.exit, !dbg !1539

readSyntaxElement_FLC.exit:                       ; preds = %entry, %GetBits.exit.i, %if.end.i
  %symbol.sroa.7.1 = phi i32 [ 0, %entry ], [ %symbol.sroa.7.0, %if.end.i ], [ %or.i.i.lcssa, %GetBits.exit.i ], !dbg !1505
    #dbg_value(i32 %symbol.sroa.7.1, !1504, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !1505)
  %10 = load ptr, ptr @p_Dec, align 8, !dbg !1540
  %UsedBits = getelementptr inbounds i8, ptr %10, i64 24, !dbg !1541
  %11 = load i32, ptr %UsedBits, align 8, !dbg !1542
  %add = add nsw i32 %11, %LenInBits, !dbg !1542
  store i32 %add, ptr %UsedBits, align 8, !dbg !1542
  %sub = add nsw i32 %LenInBits, -1, !dbg !1543
  %shl = shl nuw i32 1, %sub, !dbg !1544
  %and = and i32 %symbol.sroa.7.1, %shl, !dbg !1545
  %sub3 = sub nsw i32 0, %and, !dbg !1546
  %or = or i32 %symbol.sroa.7.1, %sub3, !dbg !1547
    #dbg_value(i32 %or, !1504, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !1505)
  ret i32 %or, !dbg !1548
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @u_1(ptr nocapture noundef readnone %tracestring, ptr nocapture noundef %bitstream) local_unnamed_addr #5 !dbg !1549 {
entry:
    #dbg_value(ptr %tracestring, !1551, !DIExpression(), !1553)
    #dbg_value(ptr %bitstream, !1552, !DIExpression(), !1553)
    #dbg_value(i32 1, !1393, !DIExpression(), !1554)
    #dbg_value(ptr %tracestring, !1394, !DIExpression(), !1554)
    #dbg_value(ptr %bitstream, !1395, !DIExpression(), !1554)
    #dbg_value(i32 0, !1396, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !1554)
    #dbg_value(i32 0, !1396, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !1554)
    #dbg_value(ptr @linfo_ue, !1396, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !1554)
    #dbg_value(i32 1, !1396, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !1554)
    #dbg_value(ptr undef, !1398, !DIExpression(), !1556)
    #dbg_value(ptr %bitstream, !1401, !DIExpression(), !1556)
  %bitstream_length.i.i = getelementptr inbounds i8, ptr %bitstream, i64 12, !dbg !1558
  %0 = load i32, ptr %bitstream_length.i.i, align 4, !dbg !1558
  %shl.i.i = shl i32 %0, 3, !dbg !1559
  %add.i.i = or disjoint i32 %shl.i.i, 7, !dbg !1560
    #dbg_value(i32 %add.i.i, !1402, !DIExpression(), !1556)
  %frame_bitoffset.i.i = getelementptr inbounds i8, ptr %bitstream, i64 8, !dbg !1561
  %1 = load i32, ptr %frame_bitoffset.i.i, align 8, !dbg !1561
    #dbg_value(ptr poison, !1411, !DIExpression(), !1562)
    #dbg_value(i32 %1, !1416, !DIExpression(), !1562)
    #dbg_value(ptr undef, !1417, !DIExpression(), !1562)
    #dbg_value(i32 %add.i.i, !1418, !DIExpression(), !1562)
    #dbg_value(i32 1, !1419, !DIExpression(), !1562)
  %cmp.i.i.i.not = icmp slt i32 %1, %add.i.i, !dbg !1564
  br i1 %cmp.i.i.i.not, label %if.else.i.i.i, label %u_v.exit, !dbg !1565

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add nsw i32 %1, 1, !dbg !1566
  %streamBuffer.i.i = getelementptr inbounds i8, ptr %bitstream, i64 16, !dbg !1567
  %2 = load ptr, ptr %streamBuffer.i.i, align 8, !dbg !1567
    #dbg_value(ptr %2, !1411, !DIExpression(), !1562)
    #dbg_value(i32 %1, !1423, !DIExpression(DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value), !1568)
    #dbg_value(i32 1, !1424, !DIExpression(), !1568)
    #dbg_value(!DIArgList(ptr %2, i32 %1), !1425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !1568)
    #dbg_value(i32 0, !1426, !DIExpression(), !1568)
    #dbg_value(i32 %1, !1420, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !1568)
    #dbg_value(i32 1, !1419, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1562)
  %shr.i.i.i = ashr i32 %1, 3, !dbg !1569
    #dbg_value(!DIArgList(ptr %2, i32 %shr.i.i.i), !1425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !1568)
    #dbg_value(i32 %shr.i.i.i, !1423, !DIExpression(), !1568)
  %idxprom.i.i.i = sext i32 %shr.i.i.i to i64, !dbg !1570
    #dbg_value(!DIArgList(ptr %2, i64 %idxprom.i.i.i), !1425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1568)
  %arrayidx.i.i.i = getelementptr inbounds i8, ptr %2, i64 %idxprom.i.i.i, !dbg !1570
    #dbg_value(ptr %arrayidx.i.i.i, !1425, !DIExpression(), !1568)
  %and.i.i.i = and i32 %1, 7, !dbg !1571
    #dbg_value(i32 %and.i.i.i, !1420, !DIExpression(DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !1568)
  %sub.i.i.i = xor i32 %and.i.i.i, 7, !dbg !1572
    #dbg_value(i32 %sub.i.i.i, !1420, !DIExpression(), !1568)
    #dbg_value(i32 0, !1426, !DIExpression(), !1568)
    #dbg_value(ptr %arrayidx.i.i.i, !1425, !DIExpression(), !1568)
    #dbg_value(i32 1, !1419, !DIExpression(), !1562)
    #dbg_value(i32 %sub.i.i.i, !1420, !DIExpression(), !1568)
    #dbg_value(i32 0, !1419, !DIExpression(), !1562)
    #dbg_value(i32 0, !1426, !DIExpression(), !1568)
  %3 = load i8, ptr %arrayidx.i.i.i, align 1, !dbg !1573
  %conv.i.i.i = zext i8 %3 to i32, !dbg !1574
    #dbg_value(i32 %sub.i.i.i, !1420, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1568)
  %shr2.i.i.i = lshr i32 %conv.i.i.i, %sub.i.i.i, !dbg !1575
  %and3.i.i.i = and i32 %shr2.i.i.i, 1, !dbg !1576
    #dbg_value(i32 %and3.i.i.i, !1426, !DIExpression(), !1568)
    #dbg_value(!DIArgList(ptr %arrayidx.i.i.i, i32 %sub.i.i.i), !1425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !1568)
    #dbg_value(i32 poison, !1420, !DIExpression(), !1568)
    #dbg_value(i32 0, !1419, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1562)
    #dbg_value(i32 %and3.i.i.i, !1396, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !1554)
    #dbg_value(i32 %and3.i.i.i, !1396, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !1554)
    #dbg_value(i32 poison, !1396, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !1554)
  store i32 %add.i.i.i, ptr %frame_bitoffset.i.i, align 8, !dbg !1577
  br label %u_v.exit, !dbg !1578

u_v.exit:                                         ; preds = %entry, %if.else.i.i.i
  %symbol.sroa.7.1.i = phi i32 [ 0, %entry ], [ %and3.i.i.i, %if.else.i.i.i ], !dbg !1554
    #dbg_value(i32 %symbol.sroa.7.1.i, !1396, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !1554)
  %4 = load ptr, ptr @p_Dec, align 8, !dbg !1579
  %UsedBits.i = getelementptr inbounds i8, ptr %4, i64 24, !dbg !1580
  %5 = load i32, ptr %UsedBits.i, align 8, !dbg !1581
  %add.i = add nsw i32 %5, 1, !dbg !1581
  store i32 %add.i, ptr %UsedBits.i, align 8, !dbg !1581
  ret i32 %symbol.sroa.7.1.i, !dbg !1582
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @linfo_cbp_intra_normal(i32 noundef %len, i32 noundef %info, ptr nocapture noundef writeonly %cbp, ptr nocapture noundef readnone %dummy) local_unnamed_addr #2 !dbg !1583 {
entry:
    #dbg_value(i32 %len, !1585, !DIExpression(), !1590)
    #dbg_value(i32 %info, !1586, !DIExpression(), !1590)
    #dbg_value(ptr %cbp, !1587, !DIExpression(), !1590)
    #dbg_value(ptr %dummy, !1588, !DIExpression(), !1590)
    #dbg_value(i32 %len, !1254, !DIExpression(), !1591)
    #dbg_value(i32 %info, !1255, !DIExpression(), !1591)
    #dbg_value(ptr undef, !1256, !DIExpression(), !1591)
    #dbg_value(ptr %dummy, !1257, !DIExpression(), !1591)
  %shr.i = ashr i32 %len, 1, !dbg !1593
  %shl.i = shl nuw i32 1, %shr.i, !dbg !1594
  %add.i = add i32 %info, -1, !dbg !1595
  %sub.i = add i32 %add.i, %shl.i, !dbg !1596
    #dbg_value(i32 %sub.i, !1589, !DIExpression(), !1590)
  %idxprom = sext i32 %sub.i to i64, !dbg !1597
  %arrayidx = getelementptr inbounds [48 x [2 x i8]], ptr getelementptr inbounds (i8, ptr @NCBP, i64 96), i64 0, i64 %idxprom, !dbg !1597
  %0 = load i8, ptr %arrayidx, align 2, !dbg !1597
  %conv = zext i8 %0 to i32, !dbg !1597
  store i32 %conv, ptr %cbp, align 4, !dbg !1598
  ret void, !dbg !1599
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @linfo_cbp_intra_other(i32 noundef %len, i32 noundef %info, ptr nocapture noundef writeonly %cbp, ptr nocapture noundef readnone %dummy) local_unnamed_addr #2 !dbg !1600 {
entry:
    #dbg_value(i32 %len, !1602, !DIExpression(), !1607)
    #dbg_value(i32 %info, !1603, !DIExpression(), !1607)
    #dbg_value(ptr %cbp, !1604, !DIExpression(), !1607)
    #dbg_value(ptr %dummy, !1605, !DIExpression(), !1607)
    #dbg_value(i32 %len, !1254, !DIExpression(), !1608)
    #dbg_value(i32 %info, !1255, !DIExpression(), !1608)
    #dbg_value(ptr undef, !1256, !DIExpression(), !1608)
    #dbg_value(ptr %dummy, !1257, !DIExpression(), !1608)
  %shr.i = ashr i32 %len, 1, !dbg !1610
  %shl.i = shl nuw i32 1, %shr.i, !dbg !1611
  %add.i = add i32 %info, -1, !dbg !1612
  %sub.i = add i32 %add.i, %shl.i, !dbg !1613
    #dbg_value(i32 %sub.i, !1606, !DIExpression(), !1607)
  %idxprom = sext i32 %sub.i to i64, !dbg !1614
  %arrayidx = getelementptr inbounds [48 x [2 x i8]], ptr @NCBP, i64 0, i64 %idxprom, !dbg !1614
  %0 = load i8, ptr %arrayidx, align 2, !dbg !1614
  %conv = zext i8 %0 to i32, !dbg !1614
  store i32 %conv, ptr %cbp, align 4, !dbg !1615
  ret void, !dbg !1616
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @linfo_cbp_inter_normal(i32 noundef %len, i32 noundef %info, ptr nocapture noundef writeonly %cbp, ptr nocapture noundef readnone %dummy) local_unnamed_addr #2 !dbg !1617 {
entry:
    #dbg_value(i32 %len, !1619, !DIExpression(), !1624)
    #dbg_value(i32 %info, !1620, !DIExpression(), !1624)
    #dbg_value(ptr %cbp, !1621, !DIExpression(), !1624)
    #dbg_value(ptr %dummy, !1622, !DIExpression(), !1624)
    #dbg_value(i32 %len, !1254, !DIExpression(), !1625)
    #dbg_value(i32 %info, !1255, !DIExpression(), !1625)
    #dbg_value(ptr undef, !1256, !DIExpression(), !1625)
    #dbg_value(ptr %dummy, !1257, !DIExpression(), !1625)
  %shr.i = ashr i32 %len, 1, !dbg !1627
  %shl.i = shl nuw i32 1, %shr.i, !dbg !1628
  %add.i = add i32 %info, -1, !dbg !1629
  %sub.i = add i32 %add.i, %shl.i, !dbg !1630
    #dbg_value(i32 %sub.i, !1623, !DIExpression(), !1624)
  %idxprom = sext i32 %sub.i to i64, !dbg !1631
  %arrayidx1 = getelementptr inbounds [48 x [2 x i8]], ptr getelementptr inbounds (i8, ptr @NCBP, i64 96), i64 0, i64 %idxprom, i64 1, !dbg !1631
  %0 = load i8, ptr %arrayidx1, align 1, !dbg !1631
  %conv = zext i8 %0 to i32, !dbg !1631
  store i32 %conv, ptr %cbp, align 4, !dbg !1632
  ret void, !dbg !1633
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @linfo_cbp_inter_other(i32 noundef %len, i32 noundef %info, ptr nocapture noundef writeonly %cbp, ptr nocapture noundef readnone %dummy) local_unnamed_addr #2 !dbg !1634 {
entry:
    #dbg_value(i32 %len, !1636, !DIExpression(), !1641)
    #dbg_value(i32 %info, !1637, !DIExpression(), !1641)
    #dbg_value(ptr %cbp, !1638, !DIExpression(), !1641)
    #dbg_value(ptr %dummy, !1639, !DIExpression(), !1641)
    #dbg_value(i32 %len, !1254, !DIExpression(), !1642)
    #dbg_value(i32 %info, !1255, !DIExpression(), !1642)
    #dbg_value(ptr undef, !1256, !DIExpression(), !1642)
    #dbg_value(ptr %dummy, !1257, !DIExpression(), !1642)
  %shr.i = ashr i32 %len, 1, !dbg !1644
  %shl.i = shl nuw i32 1, %shr.i, !dbg !1645
  %add.i = add i32 %info, -1, !dbg !1646
  %sub.i = add i32 %add.i, %shl.i, !dbg !1647
    #dbg_value(i32 %sub.i, !1640, !DIExpression(), !1641)
  %idxprom = sext i32 %sub.i to i64, !dbg !1648
  %arrayidx1 = getelementptr inbounds [48 x [2 x i8]], ptr @NCBP, i64 0, i64 %idxprom, i64 1, !dbg !1648
  %0 = load i8, ptr %arrayidx1, align 1, !dbg !1648
  %conv = zext i8 %0 to i32, !dbg !1648
  store i32 %conv, ptr %cbp, align 4, !dbg !1649
  ret void, !dbg !1650
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @linfo_levrun_inter(i32 noundef %len, i32 noundef %info, ptr nocapture noundef %level, ptr nocapture noundef writeonly %irun) local_unnamed_addr #6 !dbg !1651 {
entry:
    #dbg_value(i32 %len, !1653, !DIExpression(), !1661)
    #dbg_value(i32 %info, !1654, !DIExpression(), !1661)
    #dbg_value(ptr %level, !1655, !DIExpression(), !1661)
    #dbg_value(ptr %irun, !1656, !DIExpression(), !1661)
  %cmp = icmp slt i32 %len, 10, !dbg !1662
  %and = and i32 %info, 1, !dbg !1663
  %cmp11.not = icmp eq i32 %and, 0, !dbg !1663
  br i1 %cmp, label %if.then, label %if.else, !dbg !1664

if.then:                                          ; preds = %entry
  %shr = ashr i32 %len, 1, !dbg !1665
    #dbg_value(i32 0, !1666, !DIExpression(), !1673)
    #dbg_value(i32 %shr, !1672, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1673)
  %0 = tail call i32 @llvm.smax.i32(i32 %shr, i32 1), !dbg !1675
  %cond.i = add nsw i32 %0, -1, !dbg !1675
    #dbg_value(i32 %cond.i, !1657, !DIExpression(), !1676)
  %shr1 = ashr i32 %info, 1, !dbg !1677
    #dbg_value(i32 %shr1, !1660, !DIExpression(), !1676)
  %idxprom = zext nneg i32 %cond.i to i64, !dbg !1678
  %idxprom2 = sext i32 %shr1 to i64, !dbg !1678
  %arrayidx3 = getelementptr inbounds [4 x [8 x [2 x i8]]], ptr @NTAB1, i64 0, i64 %idxprom, i64 %idxprom2, !dbg !1678
  %1 = load i8, ptr %arrayidx3, align 2, !dbg !1678
  %conv = zext i8 %1 to i32, !dbg !1678
  store i32 %conv, ptr %level, align 4, !dbg !1679
  %arrayidx9 = getelementptr inbounds i8, ptr %arrayidx3, i64 1, !dbg !1680
  %2 = load i8, ptr %arrayidx9, align 1, !dbg !1680
  %conv10 = zext i8 %2 to i32, !dbg !1680
  store i32 %conv10, ptr %irun, align 4, !dbg !1681
  br i1 %cmp11.not, label %if.end30, label %if.then13, !dbg !1682

if.then13:                                        ; preds = %if.then
  %3 = load i32, ptr %level, align 4, !dbg !1683
  %sub14 = sub nsw i32 0, %3, !dbg !1685
  store i32 %sub14, ptr %level, align 4, !dbg !1686
  br label %if.end30, !dbg !1687

if.else:                                          ; preds = %entry
  %and15 = lshr i32 %info, 1, !dbg !1688
  %shr16 = and i32 %and15, 15, !dbg !1688
  store i32 %shr16, ptr %irun, align 4, !dbg !1690
  %idxprom17 = zext nneg i32 %shr16 to i64, !dbg !1691
  %arrayidx18 = getelementptr inbounds [16 x i8], ptr @LEVRUN1, i64 0, i64 %idxprom17, !dbg !1691
  %4 = load i8, ptr %arrayidx18, align 1, !dbg !1691
  %conv19 = zext i8 %4 to i32, !dbg !1691
  %shr20 = ashr i32 %info, 5, !dbg !1692
  %shr21 = lshr i32 %len, 1, !dbg !1693
  %sub22 = add nsw i32 %shr21, -5, !dbg !1694
  %shl = shl nuw i32 1, %sub22, !dbg !1695
  %add = add i32 %shl, %shr20, !dbg !1696
  %add23 = add i32 %add, %conv19, !dbg !1697
  store i32 %add23, ptr %level, align 4, !dbg !1698
  br i1 %cmp11.not, label %if.end34, label %if.then27, !dbg !1699

if.then27:                                        ; preds = %if.else
  %sub28 = sub nsw i32 0, %add23, !dbg !1700
  br label %if.end34.sink.split, !dbg !1702

if.end30:                                         ; preds = %if.then, %if.then13
  %cmp31 = icmp eq i32 %len, 1, !dbg !1703
  br i1 %cmp31, label %if.end34.sink.split, label %if.end34, !dbg !1705

if.end34.sink.split:                              ; preds = %if.end30, %if.then27
  %sub28.sink = phi i32 [ %sub28, %if.then27 ], [ 0, %if.end30 ]
  store i32 %sub28.sink, ptr %level, align 4, !dbg !1661
  br label %if.end34, !dbg !1706

if.end34:                                         ; preds = %if.end34.sink.split, %if.else, %if.end30
  ret void, !dbg !1706
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @linfo_levrun_c2x2(i32 noundef %len, i32 noundef %info, ptr nocapture noundef %level, ptr nocapture noundef writeonly %irun) local_unnamed_addr #6 !dbg !1707 {
entry:
    #dbg_value(i32 %len, !1709, !DIExpression(), !1717)
    #dbg_value(i32 %info, !1710, !DIExpression(), !1717)
    #dbg_value(ptr %level, !1711, !DIExpression(), !1717)
    #dbg_value(ptr %irun, !1712, !DIExpression(), !1717)
  %cmp = icmp slt i32 %len, 6, !dbg !1718
  %and = and i32 %info, 1, !dbg !1719
  %cmp11.not = icmp eq i32 %and, 0, !dbg !1719
  br i1 %cmp, label %if.then, label %if.else, !dbg !1720

if.then:                                          ; preds = %entry
  %shr = ashr i32 %len, 1, !dbg !1721
    #dbg_value(i32 0, !1666, !DIExpression(), !1722)
    #dbg_value(i32 %shr, !1672, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1722)
  %0 = tail call i32 @llvm.smax.i32(i32 %shr, i32 1), !dbg !1724
  %cond.i = add nsw i32 %0, -1, !dbg !1724
    #dbg_value(i32 %cond.i, !1713, !DIExpression(), !1725)
  %shr1 = ashr i32 %info, 1, !dbg !1726
    #dbg_value(i32 %shr1, !1716, !DIExpression(), !1725)
  %idxprom = zext nneg i32 %cond.i to i64, !dbg !1727
  %idxprom2 = sext i32 %shr1 to i64, !dbg !1727
  %arrayidx3 = getelementptr inbounds [2 x [2 x [2 x i8]]], ptr @NTAB3, i64 0, i64 %idxprom, i64 %idxprom2, !dbg !1727
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !1727
  %conv = zext i8 %1 to i32, !dbg !1727
  store i32 %conv, ptr %level, align 4, !dbg !1728
  %arrayidx9 = getelementptr inbounds i8, ptr %arrayidx3, i64 1, !dbg !1729
  %2 = load i8, ptr %arrayidx9, align 1, !dbg !1729
  %conv10 = zext i8 %2 to i32, !dbg !1729
  store i32 %conv10, ptr %irun, align 4, !dbg !1730
  br i1 %cmp11.not, label %if.end30, label %if.then13, !dbg !1731

if.then13:                                        ; preds = %if.then
  %3 = load i32, ptr %level, align 4, !dbg !1732
  %sub14 = sub nsw i32 0, %3, !dbg !1734
  store i32 %sub14, ptr %level, align 4, !dbg !1735
  br label %if.end30, !dbg !1736

if.else:                                          ; preds = %entry
  %and15 = lshr i32 %info, 1, !dbg !1737
  %shr16 = and i32 %and15, 3, !dbg !1737
  store i32 %shr16, ptr %irun, align 4, !dbg !1739
  %idxprom17 = zext nneg i32 %shr16 to i64, !dbg !1740
  %arrayidx18 = getelementptr inbounds [4 x i8], ptr @LEVRUN3, i64 0, i64 %idxprom17, !dbg !1740
  %4 = load i8, ptr %arrayidx18, align 1, !dbg !1740
  %conv19 = zext i8 %4 to i32, !dbg !1740
  %shr20 = ashr i32 %info, 3, !dbg !1741
  %shr21 = lshr i32 %len, 1, !dbg !1742
  %sub22 = add nsw i32 %shr21, -3, !dbg !1743
  %shl = shl nuw i32 1, %sub22, !dbg !1744
  %add = add i32 %shl, %shr20, !dbg !1745
  %add23 = add i32 %add, %conv19, !dbg !1746
  store i32 %add23, ptr %level, align 4, !dbg !1747
  br i1 %cmp11.not, label %if.end34, label %if.then27, !dbg !1748

if.then27:                                        ; preds = %if.else
  %sub28 = sub nsw i32 0, %add23, !dbg !1749
  br label %if.end34.sink.split, !dbg !1751

if.end30:                                         ; preds = %if.then, %if.then13
  %cmp31 = icmp eq i32 %len, 1, !dbg !1752
  br i1 %cmp31, label %if.end34.sink.split, label %if.end34, !dbg !1754

if.end34.sink.split:                              ; preds = %if.end30, %if.then27
  %sub28.sink = phi i32 [ %sub28, %if.then27 ], [ 0, %if.end30 ]
  store i32 %sub28.sink, ptr %level, align 4, !dbg !1717
  br label %if.end34, !dbg !1755

if.end34:                                         ; preds = %if.end34.sink.split, %if.else, %if.end30
  ret void, !dbg !1755
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @GetVLCSymbol(ptr nocapture noundef readonly %buffer, i32 noundef %totbitoffset, ptr nocapture noundef writeonly %info, i32 noundef %bytecount) local_unnamed_addr #4 !dbg !1275 {
entry:
    #dbg_value(ptr %buffer, !1274, !DIExpression(), !1756)
    #dbg_value(i32 %totbitoffset, !1279, !DIExpression(), !1756)
    #dbg_value(ptr %info, !1280, !DIExpression(), !1756)
    #dbg_value(i32 %bytecount, !1281, !DIExpression(), !1756)
  %shr = ashr i32 %totbitoffset, 3, !dbg !1757
  %conv = sext i32 %shr to i64, !dbg !1758
    #dbg_value(i64 %conv, !1282, !DIExpression(), !1756)
  %and = and i32 %totbitoffset, 7, !dbg !1759
  %sub = xor i32 %and, 7, !dbg !1760
    #dbg_value(i32 %sub, !1283, !DIExpression(), !1756)
    #dbg_value(i32 1, !1284, !DIExpression(), !1756)
    #dbg_value(i32 0, !1285, !DIExpression(), !1756)
  %arrayidx = getelementptr inbounds i8, ptr %buffer, i64 %conv, !dbg !1761
    #dbg_value(ptr %arrayidx, !1286, !DIExpression(), !1756)
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1762
  %conv1 = zext i8 %0 to i32, !dbg !1763
    #dbg_value(!DIArgList(i32 %conv1, i32 %sub), !1287, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !1756)
  %1 = shl nuw nsw i32 1, %sub, !dbg !1764
  %2 = and i32 %1, %conv1, !dbg !1764
  %cmp64 = icmp eq i32 %2, 0, !dbg !1764
  br i1 %cmp64, label %while.body, label %while.end.thread, !dbg !1765

while.body:                                       ; preds = %entry, %while.body
  %cur_byte.069 = phi ptr [ %add.ptr, %while.body ], [ %arrayidx, %entry ]
  %len.068 = phi i32 [ %inc, %while.body ], [ 0, %entry ]
  %bitcounter.067 = phi i32 [ %inc5, %while.body ], [ 1, %entry ]
  %bitoffset.066 = phi i32 [ %and6, %while.body ], [ %sub, %entry ]
  %byteoffset.065 = phi i64 [ %add, %while.body ], [ %conv, %entry ]
    #dbg_value(ptr %cur_byte.069, !1286, !DIExpression(), !1756)
    #dbg_value(i32 %len.068, !1285, !DIExpression(), !1756)
    #dbg_value(i32 %bitcounter.067, !1284, !DIExpression(), !1756)
    #dbg_value(i32 %bitoffset.066, !1283, !DIExpression(), !1756)
    #dbg_value(i64 %byteoffset.065, !1282, !DIExpression(), !1756)
  %inc = add nuw i32 %len.068, 1, !dbg !1766
    #dbg_value(i32 %inc, !1285, !DIExpression(), !1756)
  %inc5 = add nuw nsw i32 %bitcounter.067, 1, !dbg !1767
    #dbg_value(i32 %inc5, !1284, !DIExpression(), !1756)
  %dec = add nuw nsw i32 %bitoffset.066, 7, !dbg !1768
    #dbg_value(i32 %bitoffset.066, !1283, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !1756)
  %and6 = and i32 %dec, 7, !dbg !1769
    #dbg_value(i32 %and6, !1283, !DIExpression(), !1756)
  %cmp7 = icmp eq i32 %and6, 7, !dbg !1770
  %idx.ext = zext i1 %cmp7 to i64, !dbg !1771
  %add.ptr = getelementptr inbounds i8, ptr %cur_byte.069, i64 %idx.ext, !dbg !1771
    #dbg_value(ptr %add.ptr, !1286, !DIExpression(), !1756)
  %add = add nsw i64 %byteoffset.065, %idx.ext, !dbg !1772
    #dbg_value(i64 %add, !1282, !DIExpression(), !1756)
  %3 = load i8, ptr %add.ptr, align 1, !dbg !1773
  %conv12 = zext i8 %3 to i32, !dbg !1774
    #dbg_value(!DIArgList(i32 %conv12, i32 %and6), !1287, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !1756)
    #dbg_value(!DIArgList(i32 %conv12, i32 %and6), !1287, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !1756)
  %4 = shl nuw nsw i32 1, %and6, !dbg !1764
  %5 = and i32 %4, %conv12, !dbg !1764
  %cmp = icmp eq i32 %5, 0, !dbg !1764
  br i1 %cmp, label %while.body, label %while.end, !dbg !1765, !llvm.loop !1775

while.end:                                        ; preds = %while.body
  %add15 = add nuw nsw i32 %len.068, 8, !dbg !1777
  %shr16 = lshr i32 %add15, 3, !dbg !1778
  %conv17 = zext nneg i32 %shr16 to i64, !dbg !1779
  %add18 = add nsw i64 %add, %conv17, !dbg !1780
  %conv19 = sext i32 %bytecount to i64, !dbg !1781
  %cmp20 = icmp sgt i64 %add18, %conv19, !dbg !1782
  br i1 %cmp20, label %cleanup, label %while.body24.preheader, !dbg !1783

while.body24.preheader:                           ; preds = %while.end
  %6 = icmp eq i32 %len.068, 0, !dbg !1784
  br i1 %6, label %while.end35.loopexit.unr-lcssa, label %while.body24.preheader.new, !dbg !1784

while.body24.preheader.new:                       ; preds = %while.body24.preheader
  %unroll_iter = and i32 %inc, -2, !dbg !1784
  br label %while.body24, !dbg !1784

while.end.thread:                                 ; preds = %entry
  %cmp2092 = icmp sgt i32 %shr, %bytecount, !dbg !1782
  br i1 %cmp2092, label %cleanup, label %while.end35, !dbg !1783

while.body24:                                     ; preds = %while.body24, %while.body24.preheader.new
  %inf.079 = phi i32 [ 0, %while.body24.preheader.new ], [ %or.1, %while.body24 ]
  %cur_byte.178 = phi ptr [ %add.ptr, %while.body24.preheader.new ], [ %add.ptr30.1, %while.body24 ]
  %bitoffset.175 = phi i32 [ %and6, %while.body24.preheader.new ], [ %and26.1, %while.body24 ]
  %niter = phi i32 [ 0, %while.body24.preheader.new ], [ %niter.next.1, %while.body24 ]
    #dbg_value(i32 %inf.079, !1288, !DIExpression(), !1785)
    #dbg_value(ptr %cur_byte.178, !1286, !DIExpression(), !1756)
    #dbg_value(i32 poison, !1285, !DIExpression(), !1756)
    #dbg_value(i32 poison, !1284, !DIExpression(), !1756)
    #dbg_value(i32 %bitoffset.175, !1283, !DIExpression(), !1756)
    #dbg_value(i32 poison, !1285, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1756)
  %dec25 = add nuw nsw i32 %bitoffset.175, 7, !dbg !1786
    #dbg_value(i32 %bitoffset.175, !1283, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !1756)
  %and26 = and i32 %dec25, 7, !dbg !1787
    #dbg_value(i32 %dec25, !1283, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_stack_value), !1756)
  %cmp27 = icmp eq i32 %and26, 7, !dbg !1788
  %idx.ext29 = zext i1 %cmp27 to i64, !dbg !1789
  %add.ptr30 = getelementptr inbounds i8, ptr %cur_byte.178, i64 %idx.ext29, !dbg !1789
    #dbg_value(ptr %add.ptr30, !1286, !DIExpression(), !1756)
    #dbg_value(i32 poison, !1284, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1756)
    #dbg_value(i32 %inf.079, !1288, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !1785)
  %7 = load i8, ptr %add.ptr30, align 1, !dbg !1790
  %conv32 = zext i8 %7 to i32, !dbg !1791
  %shr33 = lshr i32 %conv32, %and26, !dbg !1792
    #dbg_value(!DIArgList(i32 %shr33, i32 %inf.079), !1288, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !1785)
    #dbg_value(i32 poison, !1285, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1756)
    #dbg_value(i32 poison, !1285, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1756)
    #dbg_value(i32 poison, !1284, !DIExpression(), !1756)
    #dbg_value(i32 poison, !1285, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !1756)
  %dec25.1 = add nuw nsw i32 %bitoffset.175, 6, !dbg !1786
    #dbg_value(i32 %dec25, !1283, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_plus_uconst, 7, DW_OP_stack_value), !1756)
  %and26.1 = and i32 %dec25.1, 7, !dbg !1787
    #dbg_value(i32 %and26.1, !1283, !DIExpression(), !1756)
  %cmp27.1 = icmp eq i32 %and26.1, 7, !dbg !1788
  %idx.ext29.1 = zext i1 %cmp27.1 to i64, !dbg !1789
  %add.ptr30.1 = getelementptr inbounds i8, ptr %add.ptr30, i64 %idx.ext29.1, !dbg !1789
    #dbg_value(ptr %add.ptr30.1, !1286, !DIExpression(), !1756)
    #dbg_value(i32 poison, !1284, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1756)
  %8 = shl i32 %inf.079, 2, !dbg !1793
  %and34 = shl nuw nsw i32 %shr33, 1, !dbg !1793
  %9 = and i32 %and34, 2, !dbg !1793
  %shl.1 = or disjoint i32 %8, %9, !dbg !1793
    #dbg_value(i32 %shl.1, !1288, !DIExpression(), !1785)
  %10 = load i8, ptr %add.ptr30.1, align 1, !dbg !1790
  %conv32.1 = zext i8 %10 to i32, !dbg !1791
  %shr33.1 = lshr i32 %conv32.1, %and26.1, !dbg !1792
  %and34.1 = and i32 %shr33.1, 1, !dbg !1794
  %or.1 = or disjoint i32 %and34.1, %shl.1, !dbg !1795
    #dbg_value(i32 %or.1, !1288, !DIExpression(), !1785)
    #dbg_value(i32 poison, !1285, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1756)
  %niter.next.1 = add i32 %niter, 2, !dbg !1784
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter, !dbg !1784
  br i1 %niter.ncmp.1, label %while.end35.loopexit.unr-lcssa.loopexit, label %while.body24, !dbg !1784, !llvm.loop !1796

while.end35.loopexit.unr-lcssa.loopexit:          ; preds = %while.body24
  %11 = shl i32 %or.1, 1, !dbg !1793
  br label %while.end35.loopexit.unr-lcssa, !dbg !1784

while.end35.loopexit.unr-lcssa:                   ; preds = %while.end35.loopexit.unr-lcssa.loopexit, %while.body24.preheader
  %or.lcssa.ph = phi i32 [ poison, %while.body24.preheader ], [ %or.1, %while.end35.loopexit.unr-lcssa.loopexit ]
  %inf.079.unr = phi i32 [ 0, %while.body24.preheader ], [ %11, %while.end35.loopexit.unr-lcssa.loopexit ]
  %cur_byte.178.unr = phi ptr [ %add.ptr, %while.body24.preheader ], [ %add.ptr30.1, %while.end35.loopexit.unr-lcssa.loopexit ]
  %bitoffset.175.unr = phi i32 [ %and6, %while.body24.preheader ], [ %and26.1, %while.end35.loopexit.unr-lcssa.loopexit ]
  %12 = and i32 %len.068, 1, !dbg !1784
  %lcmp.mod.not.not = icmp eq i32 %12, 0, !dbg !1784
  br i1 %lcmp.mod.not.not, label %while.body24.epil, label %while.end35.loopexit, !dbg !1784

while.body24.epil:                                ; preds = %while.end35.loopexit.unr-lcssa
    #dbg_value(i32 %inf.079.unr, !1288, !DIExpression(), !1785)
    #dbg_value(ptr %cur_byte.178.unr, !1286, !DIExpression(), !1756)
    #dbg_value(i32 poison, !1285, !DIExpression(), !1756)
    #dbg_value(i32 poison, !1284, !DIExpression(), !1756)
    #dbg_value(i32 %bitoffset.175.unr, !1283, !DIExpression(), !1756)
    #dbg_value(i32 poison, !1285, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1756)
  %dec25.epil = add nuw nsw i32 %bitoffset.175.unr, 7, !dbg !1786
    #dbg_value(i32 %bitoffset.175.unr, !1283, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !1756)
  %and26.epil = and i32 %dec25.epil, 7, !dbg !1787
    #dbg_value(i32 %and26.epil, !1283, !DIExpression(), !1756)
  %cmp27.epil = icmp eq i32 %and26.epil, 7, !dbg !1788
  %idx.ext29.epil = zext i1 %cmp27.epil to i64, !dbg !1789
  %add.ptr30.epil = getelementptr inbounds i8, ptr %cur_byte.178.unr, i64 %idx.ext29.epil, !dbg !1789
    #dbg_value(ptr %add.ptr30.epil, !1286, !DIExpression(), !1756)
    #dbg_value(i32 poison, !1284, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1756)
    #dbg_value(i32 %inf.079.unr, !1288, !DIExpression(), !1785)
  %13 = load i8, ptr %add.ptr30.epil, align 1, !dbg !1790
  %conv32.epil = zext i8 %13 to i32, !dbg !1791
  %shr33.epil = lshr i32 %conv32.epil, %and26.epil, !dbg !1792
  %and34.epil = and i32 %shr33.epil, 1, !dbg !1794
  %or.epil = or disjoint i32 %and34.epil, %inf.079.unr, !dbg !1795
    #dbg_value(i32 %or.epil, !1288, !DIExpression(), !1785)
    #dbg_value(i32 poison, !1285, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1756)
  br label %while.end35.loopexit, !dbg !1784

while.end35.loopexit:                             ; preds = %while.end35.loopexit.unr-lcssa, %while.body24.epil
  %or.lcssa = phi i32 [ %or.lcssa.ph, %while.end35.loopexit.unr-lcssa ], [ %or.epil, %while.body24.epil ], !dbg !1795
  %14 = add nuw i32 %inc, %inc5, !dbg !1784
  br label %while.end35, !dbg !1798

while.end35:                                      ; preds = %while.end.thread, %while.end35.loopexit
  %bitcounter.1.lcssa = phi i32 [ %14, %while.end35.loopexit ], [ 1, %while.end.thread ], !dbg !1756
  %inf.0.lcssa = phi i32 [ %or.lcssa, %while.end35.loopexit ], [ 0, %while.end.thread ], !dbg !1785
  store i32 %inf.0.lcssa, ptr %info, align 4, !dbg !1798
  br label %cleanup

cleanup:                                          ; preds = %while.end.thread, %while.end, %while.end35
  %retval.0 = phi i32 [ %bitcounter.1.lcssa, %while.end35 ], [ -1, %while.end ], [ -1, %while.end.thread ], !dbg !1799
  ret i32 %retval.0, !dbg !1800
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @readSyntaxElement_UVLC(ptr nocapture noundef readnone %currMB, ptr noundef %sym, ptr nocapture noundef readonly %dP) local_unnamed_addr #0 !dbg !1801 {
entry:
    #dbg_value(ptr %currMB, !1803, !DIExpression(), !1806)
    #dbg_value(ptr %sym, !1804, !DIExpression(), !1806)
    #dbg_value(ptr %dP, !1805, !DIExpression(), !1806)
  %0 = load ptr, ptr %dP, align 8, !dbg !1807
  %call = tail call i32 @readSyntaxElement_VLC(ptr noundef %sym, ptr noundef %0), !dbg !1808
  ret i32 %call, !dbg !1809
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 -1, 2) i32 @readSyntaxElement_Intra4x4PredictionMode(ptr nocapture noundef %sym, ptr nocapture noundef %currStream) local_unnamed_addr #7 !dbg !1810 {
entry:
    #dbg_value(ptr %sym, !1812, !DIExpression(), !1814)
    #dbg_value(ptr %currStream, !1813, !DIExpression(), !1814)
  %streamBuffer = getelementptr inbounds i8, ptr %currStream, i64 16, !dbg !1815
  %0 = load ptr, ptr %streamBuffer, align 8, !dbg !1815
  %frame_bitoffset = getelementptr inbounds i8, ptr %currStream, i64 8, !dbg !1816
  %1 = load i32, ptr %frame_bitoffset, align 8, !dbg !1816
  %inf = getelementptr inbounds i8, ptr %sym, i64 16, !dbg !1817
    #dbg_value(ptr %0, !1818, !DIExpression(), !1831)
    #dbg_value(i32 %1, !1821, !DIExpression(), !1831)
    #dbg_value(ptr %inf, !1822, !DIExpression(), !1831)
    #dbg_value(i32 poison, !1823, !DIExpression(), !1831)
  %shr.i = ashr i32 %1, 3, !dbg !1833
    #dbg_value(i32 %shr.i, !1824, !DIExpression(), !1831)
  %and.i = and i32 %1, 7, !dbg !1834
  %sub.i = xor i32 %and.i, 7, !dbg !1835
    #dbg_value(i32 %sub.i, !1825, !DIExpression(), !1831)
  %idxprom.i = sext i32 %shr.i to i64, !dbg !1836
  %arrayidx.i = getelementptr inbounds i8, ptr %0, i64 %idxprom.i, !dbg !1836
    #dbg_value(ptr %arrayidx.i, !1826, !DIExpression(), !1831)
  %2 = load i8, ptr %arrayidx.i, align 1, !dbg !1837
  %conv.i = zext i8 %2 to i32, !dbg !1837
  %shl.i = shl nuw nsw i32 1, %sub.i, !dbg !1838
  %and1.i = and i32 %shl.i, %conv.i, !dbg !1839
    #dbg_value(i32 %and1.i, !1827, !DIExpression(), !1831)
  %tobool.not.i = icmp eq i32 %and1.i, 0, !dbg !1840
  br i1 %tobool.not.i, label %if.end.i, label %if.end, !dbg !1842

if.end.i:                                         ; preds = %entry
  %bitstream_length = getelementptr inbounds i8, ptr %currStream, i64 12, !dbg !1843
  %3 = load i32, ptr %bitstream_length, align 4, !dbg !1843
    #dbg_value(i32 %3, !1823, !DIExpression(), !1831)
  %cmp.not.i = icmp slt i32 %shr.i, %3, !dbg !1844
  br i1 %cmp.not.i, label %if.else.i, label %return, !dbg !1845

if.else.i:                                        ; preds = %if.end.i
  %shl5.i = shl nuw nsw i32 %conv.i, 8, !dbg !1846
  %add.ptr.i = getelementptr inbounds i8, ptr %arrayidx.i, i64 1, !dbg !1847
  %4 = load i8, ptr %add.ptr.i, align 1, !dbg !1848
  %conv6.i = zext i8 %4 to i32, !dbg !1848
  %add.i = or disjoint i32 %shl5.i, %conv6.i, !dbg !1849
    #dbg_value(i32 %add.i, !1828, !DIExpression(), !1850)
  %narrow.i = sub nuw nsw i32 8, %sub.i, !dbg !1851
  %shl9.i = shl nuw nsw i32 %add.i, %narrow.i, !dbg !1852
    #dbg_value(i32 %shl9.i, !1828, !DIExpression(), !1850)
    #dbg_value(i32 %shl9.i, !1828, !DIExpression(DW_OP_constu, 57344, DW_OP_and, DW_OP_stack_value), !1850)
  %and10.i = lshr i32 %shl9.i, 13, !dbg !1853
  %shr11.i = and i32 %and10.i, 7, !dbg !1853
    #dbg_value(i32 %shr11.i, !1828, !DIExpression(), !1850)
  br label %if.end

if.end:                                           ; preds = %if.else.i, %entry
  %shr11.sink.i = phi i32 [ %shr11.i, %if.else.i ], [ 0, %entry ]
  %retval.0.ph.i = phi i32 [ 4, %if.else.i ], [ 1, %entry ]
  store i32 %shr11.sink.i, ptr %inf, align 4, !dbg !1831
  %len = getelementptr inbounds i8, ptr %sym, i64 12, !dbg !1854
  store i32 %retval.0.ph.i, ptr %len, align 4, !dbg !1855
  %5 = load i32, ptr %frame_bitoffset, align 8, !dbg !1856
  %add = add nsw i32 %5, %retval.0.ph.i, !dbg !1856
  store i32 %add, ptr %frame_bitoffset, align 8, !dbg !1856
  %6 = load i32, ptr %len, align 4, !dbg !1857
  %cmp5 = icmp eq i32 %6, 1, !dbg !1858
  br i1 %cmp5, label %return, label %cond.false, !dbg !1859

cond.false:                                       ; preds = %if.end
  %7 = load i32, ptr %inf, align 8, !dbg !1860
  br label %return, !dbg !1859

return:                                           ; preds = %cond.false, %if.end, %if.end.i
  %.sink19 = phi i64 [ 12, %if.end.i ], [ 4, %if.end ], [ 4, %cond.false ]
  %.sink = phi i32 [ -1, %if.end.i ], [ -1, %if.end ], [ %7, %cond.false ]
  %retval.0 = phi i32 [ -1, %if.end.i ], [ 1, %if.end ], [ 1, %cond.false ], !dbg !1814
  %len17 = getelementptr inbounds i8, ptr %sym, i64 %.sink19, !dbg !1814
  store i32 %.sink, ptr %len17, align 4, !dbg !1814
  ret i32 %retval.0, !dbg !1861
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 5) i32 @GetVLCSymbol_IntraMode(ptr nocapture noundef readonly %buffer, i32 noundef %totbitoffset, ptr nocapture noundef writeonly %info, i32 noundef %bytecount) local_unnamed_addr #6 !dbg !1819 {
entry:
    #dbg_value(ptr %buffer, !1818, !DIExpression(), !1862)
    #dbg_value(i32 %totbitoffset, !1821, !DIExpression(), !1862)
    #dbg_value(ptr %info, !1822, !DIExpression(), !1862)
    #dbg_value(i32 %bytecount, !1823, !DIExpression(), !1862)
  %shr = ashr i32 %totbitoffset, 3, !dbg !1863
    #dbg_value(i32 %shr, !1824, !DIExpression(), !1862)
  %and = and i32 %totbitoffset, 7, !dbg !1864
  %sub = xor i32 %and, 7, !dbg !1865
    #dbg_value(i32 %sub, !1825, !DIExpression(), !1862)
  %idxprom = sext i32 %shr to i64, !dbg !1866
  %arrayidx = getelementptr inbounds i8, ptr %buffer, i64 %idxprom, !dbg !1866
    #dbg_value(ptr %arrayidx, !1826, !DIExpression(), !1862)
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1867
  %conv = zext i8 %0 to i32, !dbg !1867
  %shl = shl nuw nsw i32 1, %sub, !dbg !1868
  %and1 = and i32 %shl, %conv, !dbg !1869
    #dbg_value(i32 %and1, !1827, !DIExpression(), !1862)
  %tobool.not = icmp eq i32 %and1, 0, !dbg !1870
  br i1 %tobool.not, label %if.end, label %cleanup.sink.split, !dbg !1871

if.end:                                           ; preds = %entry
  %cmp.not = icmp slt i32 %shr, %bytecount, !dbg !1872
  br i1 %cmp.not, label %if.else, label %cleanup, !dbg !1873

if.else:                                          ; preds = %if.end
  %shl5 = shl nuw nsw i32 %conv, 8, !dbg !1874
  %add.ptr = getelementptr inbounds i8, ptr %arrayidx, i64 1, !dbg !1875
  %1 = load i8, ptr %add.ptr, align 1, !dbg !1876
  %conv6 = zext i8 %1 to i32, !dbg !1876
  %add = or disjoint i32 %shl5, %conv6, !dbg !1877
    #dbg_value(i32 %add, !1828, !DIExpression(), !1878)
  %narrow = sub nuw nsw i32 8, %sub, !dbg !1879
  %shl9 = shl nuw nsw i32 %add, %narrow, !dbg !1880
    #dbg_value(i32 %shl9, !1828, !DIExpression(), !1878)
    #dbg_value(i32 %shl9, !1828, !DIExpression(DW_OP_constu, 57344, DW_OP_and, DW_OP_stack_value), !1878)
  %and10 = lshr i32 %shl9, 13, !dbg !1881
  %shr11 = and i32 %and10, 7, !dbg !1881
    #dbg_value(i32 %shr11, !1828, !DIExpression(), !1878)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %entry, %if.else
  %shr11.sink = phi i32 [ %shr11, %if.else ], [ 0, %entry ]
  %retval.0.ph = phi i32 [ 4, %if.else ], [ 1, %entry ]
  store i32 %shr11.sink, ptr %info, align 4, !dbg !1862
  br label %cleanup, !dbg !1882

cleanup:                                          ; preds = %cleanup.sink.split, %if.end
  %retval.0 = phi i32 [ -1, %if.end ], [ %retval.0.ph, %cleanup.sink.split ], !dbg !1862
  ret i32 %retval.0, !dbg !1882
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @more_rbsp_data(ptr nocapture noundef readonly %buffer, i32 noundef %totbitoffset, i32 noundef %bytecount) local_unnamed_addr #8 !dbg !1883 {
entry:
    #dbg_value(ptr %buffer, !1887, !DIExpression(), !1899)
    #dbg_value(i32 %totbitoffset, !1888, !DIExpression(), !1899)
    #dbg_value(i32 %bytecount, !1889, !DIExpression(), !1899)
  %shr = ashr i32 %totbitoffset, 3, !dbg !1900
    #dbg_value(i32 %shr, !1890, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !1899)
  %sub = add nsw i32 %bytecount, -1, !dbg !1901
  %cmp = icmp slt i32 %shr, %sub, !dbg !1902
  br i1 %cmp, label %cleanup19, label %if.else, !dbg !1903

if.else:                                          ; preds = %entry
  %conv = sext i32 %shr to i64, !dbg !1904
    #dbg_value(i64 %conv, !1890, !DIExpression(), !1899)
  %and = and i32 %totbitoffset, 7, !dbg !1905
  %sub3 = xor i32 %and, 7, !dbg !1906
    #dbg_value(i32 %sub3, !1891, !DIExpression(), !1907)
  %arrayidx = getelementptr inbounds i8, ptr %buffer, i64 %conv, !dbg !1908
    #dbg_value(ptr %arrayidx, !1894, !DIExpression(), !1907)
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1909
  %conv4 = zext i8 %0 to i32, !dbg !1910
    #dbg_value(i32 %sub3, !1891, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1907)
    #dbg_value(!DIArgList(i32 %conv4, i32 %sub3), !1895, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !1907)
  %1 = shl nuw nsw i32 1, %sub3, !dbg !1911
  %2 = and i32 %1, %conv4, !dbg !1911
  %cmp7 = icmp eq i32 %2, 0, !dbg !1911
  br i1 %cmp7, label %cleanup19, label %if.else10, !dbg !1912

if.else10:                                        ; preds = %if.else
    #dbg_value(!DIArgList(i32 6, i32 %and), !1891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !1907)
    #dbg_value(i32 0, !1896, !DIExpression(), !1913)
    #dbg_value(i32 poison, !1896, !DIExpression(), !1913)
  %cmp1127.not = icmp eq i32 %and, 7, !dbg !1914
  br i1 %cmp1127.not, label %cleanup19, label %while.body, !dbg !1915

while.body:                                       ; preds = %if.else10
    #dbg_value(!DIArgList(i32 6, i32 %and), !1891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !1907)
  %dec = sub nuw nsw i32 6, %and, !dbg !1916
    #dbg_value(i32 %dec, !1891, !DIExpression(), !1907)
    #dbg_value(i32 %dec, !1891, !DIExpression(), !1907)
    #dbg_value(i32 %dec, !1891, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1907)
  %shr15 = lshr i32 %conv4, %dec, !dbg !1917
  %and16 = and i32 %shr15, 1, !dbg !1919
    #dbg_value(i32 poison, !1896, !DIExpression(), !1913)
  %cmp11 = icmp ne i32 %and, 6, !dbg !1914
  %tobool.not = icmp eq i32 %and16, 0, !dbg !1920
  %3 = select i1 %cmp11, i1 %tobool.not, i1 false, !dbg !1920
  br i1 %3, label %while.body.1, label %cleanup19, !dbg !1915, !llvm.loop !1921

while.body.1:                                     ; preds = %while.body
  %dec14 = sub nsw i32 5, %and, !dbg !1923
    #dbg_value(i32 %dec14, !1891, !DIExpression(), !1907)
    #dbg_value(i32 %dec14, !1891, !DIExpression(), !1907)
    #dbg_value(!DIArgList(i32 6, i32 %and), !1891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !1907)
  %shr15.1 = lshr i32 %conv4, %dec14, !dbg !1917
  %and16.1 = and i32 %shr15.1, 1, !dbg !1919
    #dbg_value(i32 poison, !1896, !DIExpression(), !1913)
  %cmp11.1 = icmp ne i32 %and, 5, !dbg !1914
  %tobool.not.1 = icmp eq i32 %and16.1, 0, !dbg !1920
  %4 = select i1 %cmp11.1, i1 %tobool.not.1, i1 false, !dbg !1920
  br i1 %4, label %while.body.2, label %cleanup19, !dbg !1915, !llvm.loop !1921

while.body.2:                                     ; preds = %while.body.1
  %dec14.1 = sub nsw i32 4, %and, !dbg !1923
    #dbg_value(i32 %dec14.1, !1891, !DIExpression(), !1907)
    #dbg_value(i32 %dec14.1, !1891, !DIExpression(), !1907)
    #dbg_value(!DIArgList(i32 6, i32 %and), !1891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value), !1907)
  %shr15.2 = lshr i32 %conv4, %dec14.1, !dbg !1917
  %and16.2 = and i32 %shr15.2, 1, !dbg !1919
    #dbg_value(i32 poison, !1896, !DIExpression(), !1913)
  %cmp11.2 = icmp ne i32 %and, 4, !dbg !1914
  %tobool.not.2 = icmp eq i32 %and16.2, 0, !dbg !1920
  %5 = select i1 %cmp11.2, i1 %tobool.not.2, i1 false, !dbg !1920
  br i1 %5, label %while.body.3, label %cleanup19, !dbg !1915, !llvm.loop !1921

while.body.3:                                     ; preds = %while.body.2
  %dec14.2 = sub nsw i32 3, %and, !dbg !1923
    #dbg_value(i32 %dec14.2, !1891, !DIExpression(), !1907)
    #dbg_value(i32 %dec14.2, !1891, !DIExpression(), !1907)
    #dbg_value(!DIArgList(i32 6, i32 %and), !1891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value), !1907)
  %shr15.3 = lshr i32 %conv4, %dec14.2, !dbg !1917
  %and16.3 = and i32 %shr15.3, 1, !dbg !1919
    #dbg_value(i32 poison, !1896, !DIExpression(), !1913)
  %cmp11.3 = icmp ne i32 %and, 3, !dbg !1914
  %tobool.not.3 = icmp eq i32 %and16.3, 0, !dbg !1920
  %6 = select i1 %cmp11.3, i1 %tobool.not.3, i1 false, !dbg !1920
  br i1 %6, label %while.body.4, label %cleanup19, !dbg !1915, !llvm.loop !1921

while.body.4:                                     ; preds = %while.body.3
  %dec14.3 = sub nsw i32 2, %and, !dbg !1923
    #dbg_value(i32 %dec14.3, !1891, !DIExpression(), !1907)
    #dbg_value(i32 %dec14.3, !1891, !DIExpression(), !1907)
    #dbg_value(!DIArgList(i32 6, i32 %and), !1891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value), !1907)
  %shr15.4 = lshr i32 %conv4, %dec14.3, !dbg !1917
  %and16.4 = and i32 %shr15.4, 1, !dbg !1919
    #dbg_value(i32 poison, !1896, !DIExpression(), !1913)
  %cmp11.4 = icmp ne i32 %and, 2, !dbg !1914
  %tobool.not.4 = icmp eq i32 %and16.4, 0, !dbg !1920
  %7 = select i1 %cmp11.4, i1 %tobool.not.4, i1 false, !dbg !1920
  br i1 %7, label %while.body.5, label %cleanup19, !dbg !1915, !llvm.loop !1921

while.body.5:                                     ; preds = %while.body.4
  %dec14.4 = sub nsw i32 1, %and, !dbg !1923
    #dbg_value(i32 %dec14.4, !1891, !DIExpression(), !1907)
    #dbg_value(i32 %dec14.4, !1891, !DIExpression(), !1907)
    #dbg_value(!DIArgList(i32 6, i32 %and), !1891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value), !1907)
  %shr15.5 = lshr i32 %conv4, %dec14.4, !dbg !1917
  %and16.5 = and i32 %shr15.5, 1, !dbg !1919
    #dbg_value(i32 poison, !1896, !DIExpression(), !1913)
  %cmp11.5 = icmp ne i32 %and, 1, !dbg !1914
  %tobool.not.5 = icmp eq i32 %and16.5, 0, !dbg !1920
  %8 = select i1 %cmp11.5, i1 %tobool.not.5, i1 false, !dbg !1920
  br i1 %8, label %while.body.6, label %cleanup19, !dbg !1915, !llvm.loop !1921

while.body.6:                                     ; preds = %while.body.5
  %dec14.5 = sub nsw i32 0, %and, !dbg !1923
    #dbg_value(i32 %dec14.5, !1891, !DIExpression(), !1907)
    #dbg_value(i32 %dec14.5, !1891, !DIExpression(), !1907)
    #dbg_value(!DIArgList(i32 6, i32 %and), !1891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value), !1907)
  %shr15.6 = lshr i32 %conv4, %dec14.5, !dbg !1917
  %and16.6 = and i32 %shr15.6, 1, !dbg !1919
    #dbg_value(i32 poison, !1896, !DIExpression(), !1913)
  br label %cleanup19

cleanup19:                                        ; preds = %while.body, %while.body.1, %while.body.2, %while.body.3, %while.body.4, %while.body.5, %while.body.6, %if.else10, %if.else, %entry
  %retval.1 = phi i32 [ 1, %entry ], [ 1, %if.else ], [ 0, %if.else10 ], [ %and16, %while.body ], [ %and16.1, %while.body.1 ], [ %and16.2, %while.body.2 ], [ %and16.3, %while.body.3 ], [ %and16.4, %while.body.4 ], [ %and16.5, %while.body.5 ], [ %and16.6, %while.body.6 ], !dbg !1924
  ret i32 %retval.1, !dbg !1925
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @uvlc_startcode_follows(ptr nocapture noundef readonly %currSlice, i32 noundef %dummy) local_unnamed_addr #9 !dbg !1926 {
entry:
    #dbg_value(ptr %currSlice, !1930, !DIExpression(), !1936)
    #dbg_value(i32 %dummy, !1931, !DIExpression(), !1936)
    #dbg_value(i8 0, !1932, !DIExpression(), !1936)
  %partArr = getelementptr inbounds i8, ptr %currSlice, i64 312, !dbg !1937
  %0 = load ptr, ptr %partArr, align 8, !dbg !1937
    #dbg_value(ptr %0, !1933, !DIExpression(), !1936)
  %1 = load ptr, ptr %0, align 8, !dbg !1938
    #dbg_value(ptr %1, !1934, !DIExpression(), !1936)
    #dbg_value(ptr poison, !1935, !DIExpression(), !1936)
  %frame_bitoffset = getelementptr inbounds i8, ptr %1, i64 8, !dbg !1939
  %2 = load i32, ptr %frame_bitoffset, align 8, !dbg !1939
  %bitstream_length = getelementptr inbounds i8, ptr %1, i64 12, !dbg !1940
  %3 = load i32, ptr %bitstream_length, align 4, !dbg !1940
    #dbg_value(ptr poison, !1887, !DIExpression(), !1941)
    #dbg_value(i32 %2, !1888, !DIExpression(), !1941)
    #dbg_value(i32 %3, !1889, !DIExpression(), !1941)
  %shr.i = ashr i32 %2, 3, !dbg !1943
    #dbg_value(i32 %shr.i, !1890, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !1941)
  %sub.i = add nsw i32 %3, -1, !dbg !1944
  %cmp.i = icmp slt i32 %shr.i, %sub.i, !dbg !1945
  br i1 %cmp.i, label %more_rbsp_data.exit, label %if.else.i, !dbg !1946

if.else.i:                                        ; preds = %entry
  %streamBuffer = getelementptr inbounds i8, ptr %1, i64 16, !dbg !1947
  %4 = load ptr, ptr %streamBuffer, align 8, !dbg !1947
    #dbg_value(ptr %4, !1935, !DIExpression(), !1936)
    #dbg_value(ptr %4, !1887, !DIExpression(), !1941)
  %conv.i = sext i32 %shr.i to i64, !dbg !1948
    #dbg_value(i64 %conv.i, !1890, !DIExpression(), !1941)
  %and.i = and i32 %2, 7, !dbg !1949
  %sub3.i = xor i32 %and.i, 7, !dbg !1950
    #dbg_value(i32 %sub3.i, !1891, !DIExpression(), !1951)
  %arrayidx.i = getelementptr inbounds i8, ptr %4, i64 %conv.i, !dbg !1952
    #dbg_value(ptr %arrayidx.i, !1894, !DIExpression(), !1951)
  %5 = load i8, ptr %arrayidx.i, align 1, !dbg !1953
  %conv4.i = zext i8 %5 to i32, !dbg !1954
    #dbg_value(i32 %sub3.i, !1891, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1951)
    #dbg_value(!DIArgList(i32 %conv4.i, i32 %sub3.i), !1895, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !1951)
  %6 = shl nuw nsw i32 1, %sub3.i, !dbg !1955
  %7 = and i32 %6, %conv4.i, !dbg !1955
  %cmp7.i = icmp eq i32 %7, 0, !dbg !1955
  br i1 %cmp7.i, label %more_rbsp_data.exit, label %if.else10.i, !dbg !1956

if.else10.i:                                      ; preds = %if.else.i
    #dbg_value(!DIArgList(i32 6, i32 %and.i), !1891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !1951)
    #dbg_value(i32 0, !1896, !DIExpression(), !1957)
    #dbg_value(i32 poison, !1896, !DIExpression(), !1957)
  %cmp1127.not.i = icmp eq i32 %and.i, 7, !dbg !1958
  br i1 %cmp1127.not.i, label %more_rbsp_data.exit, label %while.body.i, !dbg !1959

while.body.i:                                     ; preds = %if.else10.i
    #dbg_value(!DIArgList(i32 6, i32 %and.i), !1891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !1951)
  %dec.i = sub nuw nsw i32 6, %and.i, !dbg !1960
    #dbg_value(i32 %dec.i, !1891, !DIExpression(), !1951)
    #dbg_value(i32 %dec.i, !1891, !DIExpression(), !1951)
    #dbg_value(i32 %dec.i, !1891, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1951)
  %shr15.i = lshr i32 %conv4.i, %dec.i, !dbg !1961
  %and16.i = and i32 %shr15.i, 1, !dbg !1962
    #dbg_value(i32 poison, !1896, !DIExpression(), !1957)
  %cmp11.i = icmp ne i32 %and.i, 6, !dbg !1958
  %tobool.not.i = icmp eq i32 %and16.i, 0, !dbg !1963
  %8 = select i1 %cmp11.i, i1 %tobool.not.i, i1 false, !dbg !1963
  br i1 %8, label %while.body.i.1, label %more_rbsp_data.exit.loopexit, !dbg !1959, !llvm.loop !1964

while.body.i.1:                                   ; preds = %while.body.i
  %dec14.i = sub nsw i32 5, %and.i, !dbg !1966
    #dbg_value(i32 %dec14.i, !1891, !DIExpression(), !1951)
    #dbg_value(i32 %dec14.i, !1891, !DIExpression(), !1951)
    #dbg_value(!DIArgList(i32 6, i32 %and.i), !1891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !1951)
  %shr15.i.1 = lshr i32 %conv4.i, %dec14.i, !dbg !1961
  %and16.i.1 = and i32 %shr15.i.1, 1, !dbg !1962
    #dbg_value(i32 poison, !1896, !DIExpression(), !1957)
  %cmp11.i.1 = icmp ne i32 %and.i, 5, !dbg !1958
  %tobool.not.i.1 = icmp eq i32 %and16.i.1, 0, !dbg !1963
  %9 = select i1 %cmp11.i.1, i1 %tobool.not.i.1, i1 false, !dbg !1963
  br i1 %9, label %while.body.i.2, label %more_rbsp_data.exit.loopexit, !dbg !1959, !llvm.loop !1964

while.body.i.2:                                   ; preds = %while.body.i.1
  %dec14.i.1 = sub nsw i32 4, %and.i, !dbg !1966
    #dbg_value(i32 %dec14.i.1, !1891, !DIExpression(), !1951)
    #dbg_value(i32 %dec14.i.1, !1891, !DIExpression(), !1951)
    #dbg_value(!DIArgList(i32 6, i32 %and.i), !1891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value), !1951)
  %shr15.i.2 = lshr i32 %conv4.i, %dec14.i.1, !dbg !1961
  %and16.i.2 = and i32 %shr15.i.2, 1, !dbg !1962
    #dbg_value(i32 poison, !1896, !DIExpression(), !1957)
  %cmp11.i.2 = icmp ne i32 %and.i, 4, !dbg !1958
  %tobool.not.i.2 = icmp eq i32 %and16.i.2, 0, !dbg !1963
  %10 = select i1 %cmp11.i.2, i1 %tobool.not.i.2, i1 false, !dbg !1963
  br i1 %10, label %while.body.i.3, label %more_rbsp_data.exit.loopexit, !dbg !1959, !llvm.loop !1964

while.body.i.3:                                   ; preds = %while.body.i.2
  %dec14.i.2 = sub nsw i32 3, %and.i, !dbg !1966
    #dbg_value(i32 %dec14.i.2, !1891, !DIExpression(), !1951)
    #dbg_value(i32 %dec14.i.2, !1891, !DIExpression(), !1951)
    #dbg_value(!DIArgList(i32 6, i32 %and.i), !1891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value), !1951)
  %shr15.i.3 = lshr i32 %conv4.i, %dec14.i.2, !dbg !1961
  %and16.i.3 = and i32 %shr15.i.3, 1, !dbg !1962
    #dbg_value(i32 poison, !1896, !DIExpression(), !1957)
  %cmp11.i.3 = icmp ne i32 %and.i, 3, !dbg !1958
  %tobool.not.i.3 = icmp eq i32 %and16.i.3, 0, !dbg !1963
  %11 = select i1 %cmp11.i.3, i1 %tobool.not.i.3, i1 false, !dbg !1963
  br i1 %11, label %while.body.i.4, label %more_rbsp_data.exit.loopexit, !dbg !1959, !llvm.loop !1964

while.body.i.4:                                   ; preds = %while.body.i.3
  %dec14.i.3 = sub nsw i32 2, %and.i, !dbg !1966
    #dbg_value(i32 %dec14.i.3, !1891, !DIExpression(), !1951)
    #dbg_value(i32 %dec14.i.3, !1891, !DIExpression(), !1951)
    #dbg_value(!DIArgList(i32 6, i32 %and.i), !1891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value), !1951)
  %shr15.i.4 = lshr i32 %conv4.i, %dec14.i.3, !dbg !1961
  %and16.i.4 = and i32 %shr15.i.4, 1, !dbg !1962
    #dbg_value(i32 poison, !1896, !DIExpression(), !1957)
  %cmp11.i.4 = icmp ne i32 %and.i, 2, !dbg !1958
  %tobool.not.i.4 = icmp eq i32 %and16.i.4, 0, !dbg !1963
  %12 = select i1 %cmp11.i.4, i1 %tobool.not.i.4, i1 false, !dbg !1963
  br i1 %12, label %while.body.i.5, label %more_rbsp_data.exit.loopexit, !dbg !1959, !llvm.loop !1964

while.body.i.5:                                   ; preds = %while.body.i.4
  %dec14.i.4 = sub nsw i32 1, %and.i, !dbg !1966
    #dbg_value(i32 %dec14.i.4, !1891, !DIExpression(), !1951)
    #dbg_value(i32 %dec14.i.4, !1891, !DIExpression(), !1951)
    #dbg_value(!DIArgList(i32 6, i32 %and.i), !1891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value), !1951)
  %shr15.i.5 = lshr i32 %conv4.i, %dec14.i.4, !dbg !1961
  %and16.i.5 = and i32 %shr15.i.5, 1, !dbg !1962
    #dbg_value(i32 poison, !1896, !DIExpression(), !1957)
  %cmp11.i.5 = icmp ne i32 %and.i, 1, !dbg !1958
  %tobool.not.i.5 = icmp eq i32 %and16.i.5, 0, !dbg !1963
  %13 = select i1 %cmp11.i.5, i1 %tobool.not.i.5, i1 false, !dbg !1963
  br i1 %13, label %while.body.i.6, label %more_rbsp_data.exit.loopexit, !dbg !1959, !llvm.loop !1964

while.body.i.6:                                   ; preds = %while.body.i.5
  %dec14.i.5 = sub nsw i32 0, %and.i, !dbg !1966
    #dbg_value(i32 %dec14.i.5, !1891, !DIExpression(), !1951)
    #dbg_value(i32 %dec14.i.5, !1891, !DIExpression(), !1951)
    #dbg_value(!DIArgList(i32 6, i32 %and.i), !1891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value), !1951)
  %shr15.i.6 = lshr i32 %conv4.i, %dec14.i.5, !dbg !1961
  %and16.i.6 = and i32 %shr15.i.6, 1, !dbg !1962
    #dbg_value(i32 poison, !1896, !DIExpression(), !1957)
  br label %more_rbsp_data.exit.loopexit

more_rbsp_data.exit.loopexit:                     ; preds = %while.body.i.6, %while.body.i.5, %while.body.i.4, %while.body.i.3, %while.body.i.2, %while.body.i.1, %while.body.i
  %and16.i.lcssa = phi i32 [ %and16.i, %while.body.i ], [ %and16.i.1, %while.body.i.1 ], [ %and16.i.2, %while.body.i.2 ], [ %and16.i.3, %while.body.i.3 ], [ %and16.i.4, %while.body.i.4 ], [ %and16.i.5, %while.body.i.5 ], [ %and16.i.6, %while.body.i.6 ], !dbg !1962
  %14 = xor i32 %and16.i.lcssa, 1, !dbg !1967
  br label %more_rbsp_data.exit, !dbg !1967

more_rbsp_data.exit:                              ; preds = %more_rbsp_data.exit.loopexit, %entry, %if.else.i, %if.else10.i
  %retval.1.i = phi i32 [ 0, %entry ], [ 0, %if.else.i ], [ 1, %if.else10.i ], [ %14, %more_rbsp_data.exit.loopexit ], !dbg !1968
  ret i32 %retval.1.i, !dbg !1969
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @GetBits(ptr nocapture noundef readonly %buffer, i32 noundef %totbitoffset, ptr nocapture noundef writeonly %info, i32 noundef %bitcount, i32 noundef %numbits) local_unnamed_addr #4 !dbg !1412 {
entry:
    #dbg_value(ptr %buffer, !1411, !DIExpression(), !1970)
    #dbg_value(i32 %totbitoffset, !1416, !DIExpression(), !1970)
    #dbg_value(ptr %info, !1417, !DIExpression(), !1970)
    #dbg_value(i32 %bitcount, !1418, !DIExpression(), !1970)
    #dbg_value(i32 %numbits, !1419, !DIExpression(), !1970)
  %add = add nsw i32 %numbits, %totbitoffset, !dbg !1971
  %cmp = icmp sgt i32 %add, %bitcount, !dbg !1972
  br i1 %cmp, label %return, label %if.else, !dbg !1973

if.else:                                          ; preds = %entry
    #dbg_value(i32 %totbitoffset, !1420, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !1974)
    #dbg_value(i32 %totbitoffset, !1423, !DIExpression(DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value), !1974)
    #dbg_value(i32 %numbits, !1424, !DIExpression(), !1974)
    #dbg_value(!DIArgList(ptr %buffer, i32 %totbitoffset), !1425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !1974)
    #dbg_value(i32 0, !1426, !DIExpression(), !1974)
    #dbg_value(i32 %numbits, !1419, !DIExpression(), !1970)
    #dbg_value(i32 %totbitoffset, !1420, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !1974)
    #dbg_value(i32 %numbits, !1419, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1970)
  %tobool.not16 = icmp eq i32 %numbits, 0, !dbg !1975
  br i1 %tobool.not16, label %while.end, label %while.body.preheader, !dbg !1975

while.body.preheader:                             ; preds = %if.else
  %shr = ashr i32 %totbitoffset, 3, !dbg !1976
    #dbg_value(!DIArgList(ptr %buffer, i32 %shr), !1425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !1974)
    #dbg_value(i32 %shr, !1423, !DIExpression(), !1974)
  %idxprom = sext i32 %shr to i64, !dbg !1977
    #dbg_value(!DIArgList(ptr %buffer, i64 %idxprom), !1425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1974)
  %arrayidx = getelementptr inbounds i8, ptr %buffer, i64 %idxprom, !dbg !1977
    #dbg_value(ptr %arrayidx, !1425, !DIExpression(), !1974)
  %and = and i32 %totbitoffset, 7, !dbg !1978
    #dbg_value(i32 %and, !1420, !DIExpression(DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !1974)
  %sub = xor i32 %and, 7, !dbg !1979
    #dbg_value(i32 %sub, !1420, !DIExpression(), !1974)
  %xtraiter = and i32 %numbits, 1, !dbg !1975
  %0 = icmp eq i32 %numbits, 1, !dbg !1975
  br i1 %0, label %while.end.loopexit.unr-lcssa, label %while.body.preheader.new, !dbg !1975

while.body.preheader.new:                         ; preds = %while.body.preheader
  %unroll_iter = and i32 %numbits, -2, !dbg !1975
  br label %while.body, !dbg !1975

while.body:                                       ; preds = %while.body, %while.body.preheader.new
  %inf.020 = phi i32 [ 0, %while.body.preheader.new ], [ %or.1, %while.body ]
  %curbyte.019 = phi ptr [ %arrayidx, %while.body.preheader.new ], [ %spec.select15.1, %while.body ]
  %bitoffset.017 = phi i32 [ %sub, %while.body.preheader.new ], [ %spec.select.1, %while.body ]
  %niter = phi i32 [ 0, %while.body.preheader.new ], [ %niter.next.1, %while.body ]
    #dbg_value(i32 %inf.020, !1426, !DIExpression(), !1974)
    #dbg_value(ptr %curbyte.019, !1425, !DIExpression(), !1974)
    #dbg_value(i32 poison, !1419, !DIExpression(), !1970)
    #dbg_value(i32 %bitoffset.017, !1420, !DIExpression(), !1974)
    #dbg_value(i32 poison, !1419, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1970)
    #dbg_value(i32 %inf.020, !1426, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !1974)
  %1 = load i8, ptr %curbyte.019, align 1, !dbg !1980
  %conv = zext i8 %1 to i32, !dbg !1981
  %dec1 = add nsw i32 %bitoffset.017, -1, !dbg !1982
    #dbg_value(i32 %dec1, !1420, !DIExpression(), !1974)
  %shr2 = lshr i32 %conv, %bitoffset.017, !dbg !1983
    #dbg_value(!DIArgList(i32 %shr2, i32 %inf.020), !1426, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !1974)
  %cmp4 = icmp eq i32 %bitoffset.017, 0, !dbg !1984
  %spec.select = select i1 %cmp4, i32 7, i32 %dec1, !dbg !1985
  %spec.select15.idx = zext i1 %cmp4 to i64, !dbg !1985
  %spec.select15 = getelementptr inbounds i8, ptr %curbyte.019, i64 %spec.select15.idx, !dbg !1985
    #dbg_value(ptr %spec.select15, !1425, !DIExpression(), !1974)
    #dbg_value(i32 %spec.select, !1420, !DIExpression(), !1974)
    #dbg_value(i32 poison, !1419, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1970)
    #dbg_value(i32 poison, !1419, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1970)
    #dbg_value(i32 poison, !1419, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !1970)
  %2 = shl i32 %inf.020, 2, !dbg !1986
  %and3 = shl nuw nsw i32 %shr2, 1, !dbg !1986
  %3 = and i32 %and3, 2, !dbg !1986
  %shl.1 = or disjoint i32 %2, %3, !dbg !1986
    #dbg_value(i32 %shl.1, !1426, !DIExpression(), !1974)
  %4 = load i8, ptr %spec.select15, align 1, !dbg !1980
  %conv.1 = zext i8 %4 to i32, !dbg !1981
  %dec1.1 = add nsw i32 %spec.select, -1, !dbg !1982
    #dbg_value(i32 %dec1.1, !1420, !DIExpression(), !1974)
  %shr2.1 = lshr i32 %conv.1, %spec.select, !dbg !1983
  %and3.1 = and i32 %shr2.1, 1, !dbg !1987
  %or.1 = or disjoint i32 %and3.1, %shl.1, !dbg !1988
    #dbg_value(i32 %or.1, !1426, !DIExpression(), !1974)
  %cmp4.1 = icmp eq i32 %spec.select, 0, !dbg !1984
  %spec.select.1 = select i1 %cmp4.1, i32 7, i32 %dec1.1, !dbg !1985
  %spec.select15.idx.1 = zext i1 %cmp4.1 to i64, !dbg !1985
  %spec.select15.1 = getelementptr inbounds i8, ptr %spec.select15, i64 %spec.select15.idx.1, !dbg !1985
    #dbg_value(ptr %spec.select15.1, !1425, !DIExpression(), !1974)
    #dbg_value(i32 %spec.select.1, !1420, !DIExpression(), !1974)
    #dbg_value(i32 poison, !1419, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1970)
  %niter.next.1 = add i32 %niter, 2, !dbg !1975
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter, !dbg !1975
  br i1 %niter.ncmp.1, label %while.end.loopexit.unr-lcssa.loopexit, label %while.body, !dbg !1975, !llvm.loop !1989

while.end.loopexit.unr-lcssa.loopexit:            ; preds = %while.body
  %5 = shl i32 %or.1, 1, !dbg !1986
  br label %while.end.loopexit.unr-lcssa, !dbg !1975

while.end.loopexit.unr-lcssa:                     ; preds = %while.end.loopexit.unr-lcssa.loopexit, %while.body.preheader
  %or.lcssa.ph = phi i32 [ poison, %while.body.preheader ], [ %or.1, %while.end.loopexit.unr-lcssa.loopexit ]
  %inf.020.unr = phi i32 [ 0, %while.body.preheader ], [ %5, %while.end.loopexit.unr-lcssa.loopexit ]
  %curbyte.019.unr = phi ptr [ %arrayidx, %while.body.preheader ], [ %spec.select15.1, %while.end.loopexit.unr-lcssa.loopexit ]
  %bitoffset.017.unr = phi i32 [ %sub, %while.body.preheader ], [ %spec.select.1, %while.end.loopexit.unr-lcssa.loopexit ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !1975
  br i1 %lcmp.mod.not, label %while.end, label %while.body.epil, !dbg !1975

while.body.epil:                                  ; preds = %while.end.loopexit.unr-lcssa
    #dbg_value(i32 %inf.020.unr, !1426, !DIExpression(), !1974)
    #dbg_value(ptr %curbyte.019.unr, !1425, !DIExpression(), !1974)
    #dbg_value(i32 poison, !1419, !DIExpression(), !1970)
    #dbg_value(i32 %bitoffset.017.unr, !1420, !DIExpression(), !1974)
    #dbg_value(i32 poison, !1419, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1970)
    #dbg_value(i32 %inf.020.unr, !1426, !DIExpression(), !1974)
  %6 = load i8, ptr %curbyte.019.unr, align 1, !dbg !1980
  %conv.epil = zext i8 %6 to i32, !dbg !1981
    #dbg_value(i32 %bitoffset.017.unr, !1420, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1974)
  %shr2.epil = lshr i32 %conv.epil, %bitoffset.017.unr, !dbg !1983
  %and3.epil = and i32 %shr2.epil, 1, !dbg !1987
  %or.epil = or disjoint i32 %and3.epil, %inf.020.unr, !dbg !1988
    #dbg_value(i32 %or.epil, !1426, !DIExpression(), !1974)
    #dbg_value(!DIArgList(ptr %curbyte.019.unr, i32 %bitoffset.017.unr), !1425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !1974)
    #dbg_value(i32 poison, !1420, !DIExpression(), !1974)
    #dbg_value(i32 poison, !1419, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1970)
  br label %while.end, !dbg !1991

while.end:                                        ; preds = %while.body.epil, %while.end.loopexit.unr-lcssa, %if.else
  %inf.0.lcssa = phi i32 [ 0, %if.else ], [ %or.lcssa.ph, %while.end.loopexit.unr-lcssa ], [ %or.epil, %while.body.epil ], !dbg !1974
  store i32 %inf.0.lcssa, ptr %info, align 4, !dbg !1991
  br label %return

return:                                           ; preds = %entry, %while.end
  %retval.0 = phi i32 [ %numbits, %while.end ], [ -1, %entry ], !dbg !1992
  ret i32 %retval.0, !dbg !1993
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @readSyntaxElement_NumCoeffTrailingOnes(ptr nocapture noundef %sym, ptr nocapture noundef %currStream, ptr nocapture noundef readnone %type) local_unnamed_addr #0 !dbg !48 {
entry:
    #dbg_value(ptr %sym, !1100, !DIExpression(), !1994)
    #dbg_value(ptr %currStream, !1101, !DIExpression(), !1994)
    #dbg_value(ptr %type, !1102, !DIExpression(), !1994)
  %frame_bitoffset1 = getelementptr inbounds i8, ptr %currStream, i64 8, !dbg !1995
  %0 = load i32, ptr %frame_bitoffset1, align 8, !dbg !1995
    #dbg_value(i32 %0, !1103, !DIExpression(), !1994)
    #dbg_value(i32 poison, !1104, !DIExpression(), !1994)
    #dbg_value(i32 poison, !1105, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_plus_uconst, 7, DW_OP_stack_value), !1994)
  %streamBuffer = getelementptr inbounds i8, ptr %currStream, i64 16, !dbg !1996
  %1 = load ptr, ptr %streamBuffer, align 8, !dbg !1996
    #dbg_value(ptr %1, !1106, !DIExpression(), !1994)
    #dbg_value(i32 0, !1107, !DIExpression(), !1994)
  %value1 = getelementptr inbounds i8, ptr %sym, i64 4, !dbg !1997
  %2 = load i32, ptr %value1, align 4, !dbg !1997
    #dbg_value(i32 %2, !1109, !DIExpression(), !1994)
  %cmp = icmp eq i32 %2, 3, !dbg !1998
  br i1 %cmp, label %if.then, label %if.else12, !dbg !2000

if.then:                                          ; preds = %entry
  %bitstream_length = getelementptr inbounds i8, ptr %currStream, i64 12, !dbg !2001
  %3 = load i32, ptr %bitstream_length, align 4, !dbg !2001
    #dbg_value(i32 %3, !1104, !DIExpression(), !1994)
    #dbg_value(i32 %3, !1105, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_plus_uconst, 7, DW_OP_stack_value), !1994)
  %shl = shl i32 %3, 3, !dbg !2002
    #dbg_value(i32 %shl, !1105, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !1994)
    #dbg_value(i32 %shl, !1105, !DIExpression(DW_OP_constu, 7, DW_OP_or, DW_OP_stack_value), !1994)
    #dbg_value(ptr %1, !2003, !DIExpression(), !2017)
    #dbg_value(i32 %0, !2008, !DIExpression(), !2017)
    #dbg_value(i32 %shl, !2009, !DIExpression(DW_OP_constu, 7, DW_OP_or, DW_OP_stack_value), !2017)
    #dbg_value(i32 6, !2010, !DIExpression(), !2017)
  %add.i = add nsw i32 %0, 6, !dbg !2020
  %4 = or disjoint i32 %shl, 1, !dbg !2021
  %cmp.i = icmp sgt i32 %0, %4, !dbg !2021
  br i1 %cmp.i, label %ShowBits.exit.thread, label %if.else.i, !dbg !2022

ShowBits.exit.thread:                             ; preds = %if.then
    #dbg_value(i32 -1, !1108, !DIExpression(), !1994)
  store i32 %add.i, ptr %frame_bitoffset1, align 8, !dbg !2023
  %value249 = getelementptr inbounds i8, ptr %sym, i64 8, !dbg !2024
  store i32 3, ptr %value249, align 8, !dbg !2025
  br label %if.else, !dbg !2026

if.else.i:                                        ; preds = %if.then
    #dbg_value(i32 %0, !2014, !DIExpression(DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value), !2028)
    #dbg_value(!DIArgList(ptr %1, i32 %0), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2028)
    #dbg_value(i32 0, !2016, !DIExpression(), !2028)
    #dbg_value(i32 %0, !2011, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !2028)
    #dbg_value(i32 6, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2017)
  %shr.i = ashr i32 %0, 3, !dbg !2029
    #dbg_value(!DIArgList(ptr %1, i32 %shr.i), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2028)
    #dbg_value(i32 %shr.i, !2014, !DIExpression(), !2028)
  %idxprom.i = sext i32 %shr.i to i64, !dbg !2030
    #dbg_value(!DIArgList(ptr %1, i64 %idxprom.i), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2028)
  %arrayidx.i = getelementptr inbounds i8, ptr %1, i64 %idxprom.i, !dbg !2030
    #dbg_value(ptr %arrayidx.i, !2015, !DIExpression(), !2028)
  %and.i = and i32 %0, 7, !dbg !2031
    #dbg_value(i32 %and.i, !2011, !DIExpression(DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !2028)
  %sub.i = xor i32 %and.i, 7, !dbg !2032
    #dbg_value(i32 %sub.i, !2011, !DIExpression(), !2028)
    #dbg_value(i32 0, !2016, !DIExpression(), !2028)
    #dbg_value(ptr %arrayidx.i, !2015, !DIExpression(), !2028)
    #dbg_value(i32 %sub.i, !2011, !DIExpression(), !2028)
    #dbg_value(i32 6, !2010, !DIExpression(), !2017)
    #dbg_value(i32 5, !2010, !DIExpression(), !2017)
    #dbg_value(i32 0, !2016, !DIExpression(), !2028)
  %5 = load i8, ptr %arrayidx.i, align 1, !dbg !2033
  %conv.i = zext i8 %5 to i32, !dbg !2035
  %dec1.i = sub nsw i32 6, %and.i, !dbg !2036
    #dbg_value(i32 %dec1.i, !2011, !DIExpression(), !2028)
  %shr2.i = lshr i32 %conv.i, %sub.i, !dbg !2037
    #dbg_value(!DIArgList(i32 %shr2.i, i32 0), !2016, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2028)
  %cmp4.i = icmp eq i32 %and.i, 7, !dbg !2038
  %spec.select.i = select i1 %cmp4.i, i32 7, i32 %dec1.i, !dbg !2040
  %spec.select14.idx.i = zext i1 %cmp4.i to i64, !dbg !2040
  %spec.select14.i = getelementptr inbounds i8, ptr %arrayidx.i, i64 %spec.select14.idx.i, !dbg !2040
    #dbg_value(ptr %spec.select14.i, !2015, !DIExpression(), !2028)
    #dbg_value(i32 %spec.select.i, !2011, !DIExpression(), !2028)
    #dbg_value(i32 5, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2017)
    #dbg_value(i32 %shr2.i, !2016, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !2028)
    #dbg_value(i32 5, !2010, !DIExpression(), !2017)
    #dbg_value(i32 4, !2010, !DIExpression(), !2017)
  %and3.i = shl nuw nsw i32 %shr2.i, 1, !dbg !2041
  %shl.i.1 = and i32 %and3.i, 2, !dbg !2041
    #dbg_value(i32 %shl.i.1, !2016, !DIExpression(), !2028)
  %6 = load i8, ptr %spec.select14.i, align 1, !dbg !2033
  %conv.i.1 = zext i8 %6 to i32, !dbg !2035
  %dec1.i.1 = add nsw i32 %spec.select.i, -1, !dbg !2036
    #dbg_value(i32 %dec1.i.1, !2011, !DIExpression(), !2028)
  %shr2.i.1 = lshr i32 %conv.i.1, %spec.select.i, !dbg !2037
  %and3.i.1 = and i32 %shr2.i.1, 1, !dbg !2042
  %or.i.1 = or disjoint i32 %and3.i.1, %shl.i.1, !dbg !2043
    #dbg_value(!DIArgList(i32 %and3.i.1, i32 %shl.i.1), !2016, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2028)
  %cmp4.i.1 = icmp eq i32 %spec.select.i, 0, !dbg !2038
  %spec.select.i.1 = select i1 %cmp4.i.1, i32 7, i32 %dec1.i.1, !dbg !2040
  %spec.select14.idx.i.1 = zext i1 %cmp4.i.1 to i64, !dbg !2040
  %spec.select14.i.1 = getelementptr inbounds i8, ptr %spec.select14.i, i64 %spec.select14.idx.i.1, !dbg !2040
    #dbg_value(ptr %spec.select14.i.1, !2015, !DIExpression(), !2028)
    #dbg_value(i32 %spec.select.i.1, !2011, !DIExpression(), !2028)
    #dbg_value(i32 4, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2017)
    #dbg_value(i32 %or.i.1, !2016, !DIExpression(), !2028)
    #dbg_value(i32 4, !2010, !DIExpression(), !2017)
    #dbg_value(i32 3, !2010, !DIExpression(), !2017)
    #dbg_value(i32 %or.i.1, !2016, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !2028)
  %7 = load i8, ptr %spec.select14.i.1, align 1, !dbg !2033
  %conv.i.2 = zext i8 %7 to i32, !dbg !2035
  %dec1.i.2 = add nsw i32 %spec.select.i.1, -1, !dbg !2036
    #dbg_value(i32 %dec1.i.2, !2011, !DIExpression(), !2028)
  %shr2.i.2 = lshr i32 %conv.i.2, %spec.select.i.1, !dbg !2037
    #dbg_value(!DIArgList(i32 %shr2.i.2, i32 %or.i.1), !2016, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !2028)
  %cmp4.i.2 = icmp eq i32 %spec.select.i.1, 0, !dbg !2038
  %spec.select.i.2 = select i1 %cmp4.i.2, i32 7, i32 %dec1.i.2, !dbg !2040
  %spec.select14.idx.i.2 = zext i1 %cmp4.i.2 to i64, !dbg !2040
  %spec.select14.i.2 = getelementptr inbounds i8, ptr %spec.select14.i.1, i64 %spec.select14.idx.i.2, !dbg !2040
    #dbg_value(ptr %spec.select14.i.2, !2015, !DIExpression(), !2028)
    #dbg_value(i32 %spec.select.i.2, !2011, !DIExpression(), !2028)
    #dbg_value(i32 3, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2017)
    #dbg_value(!DIArgList(i32 %shr2.i.2, i32 %or.i.1), !2016, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !2028)
    #dbg_value(i32 3, !2010, !DIExpression(), !2017)
    #dbg_value(i32 2, !2010, !DIExpression(), !2017)
  %8 = shl nuw nsw i32 %or.i.1, 2, !dbg !2041
  %and3.i.2 = shl nuw nsw i32 %shr2.i.2, 1, !dbg !2041
  %9 = and i32 %and3.i.2, 2, !dbg !2041
  %shl.i.3 = or disjoint i32 %8, %9, !dbg !2041
    #dbg_value(i32 %shl.i.3, !2016, !DIExpression(), !2028)
  %10 = load i8, ptr %spec.select14.i.2, align 1, !dbg !2033
  %conv.i.3 = zext i8 %10 to i32, !dbg !2035
  %dec1.i.3 = add nsw i32 %spec.select.i.2, -1, !dbg !2036
    #dbg_value(i32 %dec1.i.3, !2011, !DIExpression(), !2028)
  %shr2.i.3 = lshr i32 %conv.i.3, %spec.select.i.2, !dbg !2037
  %and3.i.3 = and i32 %shr2.i.3, 1, !dbg !2042
  %or.i.3 = or disjoint i32 %and3.i.3, %shl.i.3, !dbg !2043
    #dbg_value(!DIArgList(i32 %and3.i.3, i32 %shl.i.3), !2016, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2028)
  %cmp4.i.3 = icmp eq i32 %spec.select.i.2, 0, !dbg !2038
  %spec.select.i.3 = select i1 %cmp4.i.3, i32 7, i32 %dec1.i.3, !dbg !2040
  %spec.select14.idx.i.3 = zext i1 %cmp4.i.3 to i64, !dbg !2040
  %spec.select14.i.3 = getelementptr inbounds i8, ptr %spec.select14.i.2, i64 %spec.select14.idx.i.3, !dbg !2040
    #dbg_value(ptr %spec.select14.i.3, !2015, !DIExpression(), !2028)
    #dbg_value(i32 %spec.select.i.3, !2011, !DIExpression(), !2028)
    #dbg_value(i32 2, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2017)
    #dbg_value(i32 %or.i.3, !2016, !DIExpression(), !2028)
    #dbg_value(i32 2, !2010, !DIExpression(), !2017)
    #dbg_value(i32 1, !2010, !DIExpression(), !2017)
    #dbg_value(i32 %or.i.3, !2016, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !2028)
  %11 = load i8, ptr %spec.select14.i.3, align 1, !dbg !2033
  %conv.i.4 = zext i8 %11 to i32, !dbg !2035
  %dec1.i.4 = add nsw i32 %spec.select.i.3, -1, !dbg !2036
    #dbg_value(i32 %dec1.i.4, !2011, !DIExpression(), !2028)
  %shr2.i.4 = lshr i32 %conv.i.4, %spec.select.i.3, !dbg !2037
    #dbg_value(!DIArgList(i32 %shr2.i.4, i32 %or.i.3), !2016, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !2028)
  %cmp4.i.4 = icmp eq i32 %spec.select.i.3, 0, !dbg !2038
  %spec.select.i.4 = select i1 %cmp4.i.4, i32 7, i32 %dec1.i.4, !dbg !2040
  %spec.select14.idx.i.4 = zext i1 %cmp4.i.4 to i64, !dbg !2040
  %spec.select14.i.4 = getelementptr inbounds i8, ptr %spec.select14.i.3, i64 %spec.select14.idx.i.4, !dbg !2040
    #dbg_value(ptr %spec.select14.i.4, !2015, !DIExpression(), !2028)
    #dbg_value(i32 %spec.select.i.4, !2011, !DIExpression(), !2028)
    #dbg_value(i32 1, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2017)
    #dbg_value(!DIArgList(i32 %shr2.i.4, i32 %or.i.3), !2016, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !2028)
    #dbg_value(i32 1, !2010, !DIExpression(), !2017)
    #dbg_value(i32 0, !2010, !DIExpression(), !2017)
  %and3.i.4 = shl nuw nsw i32 %shr2.i.4, 1, !dbg !2041
  %12 = and i32 %and3.i.4, 2, !dbg !2041
    #dbg_value(!DIArgList(i32 %or.i.3, i32 %and3.i.4), !2016, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 2, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_and, DW_OP_or, DW_OP_stack_value), !2028)
  %13 = load i8, ptr %spec.select14.i.4, align 1, !dbg !2033
  %conv.i.5 = zext i8 %13 to i32, !dbg !2035
    #dbg_value(i32 %spec.select.i.4, !2011, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2028)
  %shr2.i.5 = lshr i32 %conv.i.5, %spec.select.i.4, !dbg !2037
  %and3.i.5 = and i32 %shr2.i.5, 1, !dbg !2042
  %or.i.5 = or disjoint i32 %and3.i.5, %12, !dbg !2043
    #dbg_value(!DIArgList(i32 %and3.i.5, i32 %or.i.3, i32 %and3.i.4), !2016, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_LLVM_arg, 2, DW_OP_constu, 2, DW_OP_and, DW_OP_or, DW_OP_or, DW_OP_stack_value), !2028)
    #dbg_value(!DIArgList(ptr %spec.select14.i.4, i32 %spec.select.i.4), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2028)
    #dbg_value(i32 poison, !2011, !DIExpression(), !2028)
    #dbg_value(i32 0, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2017)
    #dbg_value(!DIArgList(i32 %shr2.i, i32 %or.i.3, i32 %and3.i.4), !1108, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_LLVM_arg, 2, DW_OP_constu, 2, DW_OP_and, DW_OP_or, DW_OP_or, DW_OP_stack_value), !1994)
  store i32 %add.i, ptr %frame_bitoffset1, align 8, !dbg !2023
  %value2 = getelementptr inbounds i8, ptr %sym, i64 8, !dbg !2024
  store i32 %or.i.5, ptr %value2, align 8, !dbg !2025
  store i32 %or.i.3, ptr %value1, align 4, !dbg !2044
  %tobool.not = icmp eq i32 %or.i.3, 0, !dbg !2045
  %cmp8 = icmp eq i32 %or.i.5, 3
  %or.cond = and i1 %tobool.not, %cmp8, !dbg !2026
  br i1 %or.cond, label %if.then9, label %if.else, !dbg !2026

if.then9:                                         ; preds = %if.else.i
  store i32 0, ptr %value2, align 8, !dbg !2046
  br label %if.end, !dbg !2048

if.else:                                          ; preds = %ShowBits.exit.thread, %if.else.i
  %shr52 = phi i32 [ -1, %ShowBits.exit.thread ], [ %or.i.3, %if.else.i ]
  %inc = add nsw i32 %shr52, 1, !dbg !2049
  store i32 %inc, ptr %value1, align 4, !dbg !2049
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then9
  %len = getelementptr inbounds i8, ptr %sym, i64 12, !dbg !2050
  store i32 6, ptr %len, align 4, !dbg !2051
  br label %if.end23, !dbg !2052

if.else12:                                        ; preds = %entry
  %idxprom = sext i32 %2 to i64, !dbg !2053
  %arrayidx = getelementptr inbounds [3 x [4 x [17 x i8]]], ptr @readSyntaxElement_NumCoeffTrailingOnes.lentab, i64 0, i64 %idxprom, !dbg !2053
  %arrayidx15 = getelementptr inbounds [3 x [4 x [17 x i8]]], ptr @readSyntaxElement_NumCoeffTrailingOnes.codtab, i64 0, i64 %idxprom, !dbg !2055
    #dbg_value(ptr %sym, !2056, !DIExpression(), !2075)
    #dbg_value(ptr %currStream, !2062, !DIExpression(), !2075)
    #dbg_value(ptr %arrayidx, !2063, !DIExpression(), !2075)
    #dbg_value(ptr %arrayidx15, !2064, !DIExpression(), !2075)
    #dbg_value(i32 17, !2065, !DIExpression(), !2075)
    #dbg_value(i32 4, !2066, !DIExpression(), !2075)
    #dbg_value(ptr undef, !2067, !DIExpression(), !2075)
    #dbg_value(ptr %arrayidx, !2070, !DIExpression(), !2075)
    #dbg_value(ptr %arrayidx15, !2071, !DIExpression(), !2075)
    #dbg_value(ptr %frame_bitoffset1, !2072, !DIExpression(), !2075)
  %shr.i39 = ashr i32 %0, 3, !dbg !2077
  %idxprom.i40 = sext i32 %shr.i39 to i64, !dbg !2078
  %arrayidx3.i = getelementptr inbounds i8, ptr %1, i64 %idxprom.i40, !dbg !2078
    #dbg_value(ptr %arrayidx3.i, !2073, !DIExpression(), !2075)
  %14 = load i8, ptr %arrayidx3.i, align 1, !dbg !2079
  %conv.i41 = zext i8 %14 to i32, !dbg !2080
  %shl.i42 = shl nuw nsw i32 %conv.i41, 16, !dbg !2081
  %add.ptr.i = getelementptr inbounds i8, ptr %arrayidx3.i, i64 1, !dbg !2082
  %15 = load i8, ptr %add.ptr.i, align 1, !dbg !2083
  %conv4.i = zext i8 %15 to i32, !dbg !2083
  %shl5.i = shl nuw nsw i32 %conv4.i, 8, !dbg !2084
  %add.i43 = or disjoint i32 %shl5.i, %shl.i42, !dbg !2085
  %add.ptr6.i = getelementptr inbounds i8, ptr %arrayidx3.i, i64 2, !dbg !2086
  %16 = load i8, ptr %add.ptr6.i, align 1, !dbg !2087
  %conv7.i = zext i8 %16 to i32, !dbg !2087
  %add8.i = or disjoint i32 %add.i43, %conv7.i, !dbg !2088
    #dbg_value(i32 %add8.i, !2074, !DIExpression(), !2075)
  %and.i44 = and i32 %0, 7, !dbg !2089
  %shl9.i = shl nuw nsw i32 %add8.i, %and.i44, !dbg !2090
    #dbg_value(i32 %shl9.i, !2074, !DIExpression(), !2075)
  %and10.i = and i32 %shl9.i, 16777215, !dbg !2091
    #dbg_value(i32 %and10.i, !2074, !DIExpression(), !2075)
    #dbg_value(i32 0, !2069, !DIExpression(), !2075)
  br label %for.cond12.preheader.us.i, !dbg !2092

for.cond12.preheader.us.i:                        ; preds = %if.then.us.i.16, %if.else12
  %cod.069.us.i = phi ptr [ %scevgep79.i, %if.then.us.i.16 ], [ %arrayidx15, %if.else12 ]
  %len.068.us.i = phi ptr [ %scevgep.i, %if.then.us.i.16 ], [ %arrayidx, %if.else12 ]
  %j.067.us.i = phi i32 [ %inc30.us.i, %if.then.us.i.16 ], [ 0, %if.else12 ]
    #dbg_value(i32 %j.067.us.i, !2069, !DIExpression(), !2075)
    #dbg_value(i32 0, !2068, !DIExpression(), !2075)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(), !2075)
    #dbg_value(ptr %len.068.us.i, !2070, !DIExpression(), !2075)
  %scevgep.i = getelementptr i8, ptr %len.068.us.i, i64 17, !dbg !2094
  %scevgep79.i = getelementptr i8, ptr %cod.069.us.i, i64 17, !dbg !2094
    #dbg_value(i32 0, !2068, !DIExpression(), !2075)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(), !2075)
    #dbg_value(ptr %len.068.us.i, !2070, !DIExpression(), !2075)
  %17 = load i8, ptr %len.068.us.i, align 1, !dbg !2098
  %cmp17.us.i = icmp eq i8 %17, 0, !dbg !2102
  br i1 %cmp17.us.i, label %if.then.us.i, label %lor.lhs.false.us.i, !dbg !2103

lor.lhs.false.us.i:                               ; preds = %for.cond12.preheader.us.i
  %conv16.us.i = zext i8 %17 to i32, !dbg !2098
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2108)
    #dbg_value(i32 %conv16.us.i, !2107, !DIExpression(), !2108)
  %sub.i.us.i = sub nsw i32 24, %conv16.us.i, !dbg !2110
  %shr.i.us.i = lshr i32 %and10.i, %sub.i.us.i, !dbg !2111
  %18 = load i8, ptr %cod.069.us.i, align 1, !dbg !2112
  %conv20.us.i = zext i8 %18 to i32, !dbg !2112
  %cmp21.not.us.i = icmp eq i32 %shr.i.us.i, %conv20.us.i, !dbg !2113
  br i1 %cmp21.not.us.i, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i, !dbg !2114

if.then.us.i:                                     ; preds = %lor.lhs.false.us.i, %for.cond12.preheader.us.i
  %incdec.ptr.us.i = getelementptr inbounds i8, ptr %len.068.us.i, i64 1, !dbg !2115
    #dbg_value(ptr %incdec.ptr.us.i, !2070, !DIExpression(), !2075)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2075)
    #dbg_value(i32 1, !2068, !DIExpression(), !2075)
  %19 = load i8, ptr %incdec.ptr.us.i, align 1, !dbg !2098
  %cmp17.us.i.1 = icmp eq i8 %19, 0, !dbg !2102
  br i1 %cmp17.us.i.1, label %if.then.us.i.1, label %lor.lhs.false.us.i.1, !dbg !2103

lor.lhs.false.us.i.1:                             ; preds = %if.then.us.i
  %incdec.ptr23.us.i = getelementptr inbounds i8, ptr %cod.069.us.i, i64 1, !dbg !2117
    #dbg_value(ptr %incdec.ptr23.us.i, !2071, !DIExpression(), !2075)
  %conv16.us.i.1 = zext i8 %19 to i32, !dbg !2098
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2108)
    #dbg_value(i32 %conv16.us.i.1, !2107, !DIExpression(), !2108)
  %sub.i.us.i.1 = sub nsw i32 24, %conv16.us.i.1, !dbg !2110
  %shr.i.us.i.1 = lshr i32 %and10.i, %sub.i.us.i.1, !dbg !2111
  %20 = load i8, ptr %incdec.ptr23.us.i, align 1, !dbg !2112
  %conv20.us.i.1 = zext i8 %20 to i32, !dbg !2112
  %cmp21.not.us.i.1 = icmp eq i32 %shr.i.us.i.1, %conv20.us.i.1, !dbg !2113
  br i1 %cmp21.not.us.i.1, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.1, !dbg !2114

if.then.us.i.1:                                   ; preds = %lor.lhs.false.us.i.1, %if.then.us.i
  %incdec.ptr.us.i.1 = getelementptr inbounds i8, ptr %len.068.us.i, i64 2, !dbg !2115
    #dbg_value(ptr %incdec.ptr.us.i.1, !2070, !DIExpression(), !2075)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !2075)
    #dbg_value(i32 2, !2068, !DIExpression(), !2075)
  %21 = load i8, ptr %incdec.ptr.us.i.1, align 1, !dbg !2098
  %cmp17.us.i.2 = icmp eq i8 %21, 0, !dbg !2102
  br i1 %cmp17.us.i.2, label %if.then.us.i.2, label %lor.lhs.false.us.i.2, !dbg !2103

lor.lhs.false.us.i.2:                             ; preds = %if.then.us.i.1
  %incdec.ptr23.us.i.1 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 2, !dbg !2117
    #dbg_value(ptr %incdec.ptr23.us.i.1, !2071, !DIExpression(), !2075)
  %conv16.us.i.2 = zext i8 %21 to i32, !dbg !2098
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2108)
    #dbg_value(i32 %conv16.us.i.2, !2107, !DIExpression(), !2108)
  %sub.i.us.i.2 = sub nsw i32 24, %conv16.us.i.2, !dbg !2110
  %shr.i.us.i.2 = lshr i32 %and10.i, %sub.i.us.i.2, !dbg !2111
  %22 = load i8, ptr %incdec.ptr23.us.i.1, align 1, !dbg !2112
  %conv20.us.i.2 = zext i8 %22 to i32, !dbg !2112
  %cmp21.not.us.i.2 = icmp eq i32 %shr.i.us.i.2, %conv20.us.i.2, !dbg !2113
  br i1 %cmp21.not.us.i.2, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.2, !dbg !2114

if.then.us.i.2:                                   ; preds = %lor.lhs.false.us.i.2, %if.then.us.i.1
  %incdec.ptr.us.i.2 = getelementptr inbounds i8, ptr %len.068.us.i, i64 3, !dbg !2115
    #dbg_value(ptr %incdec.ptr.us.i.2, !2070, !DIExpression(), !2075)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !2075)
    #dbg_value(i32 3, !2068, !DIExpression(), !2075)
  %23 = load i8, ptr %incdec.ptr.us.i.2, align 1, !dbg !2098
  %cmp17.us.i.3 = icmp eq i8 %23, 0, !dbg !2102
  br i1 %cmp17.us.i.3, label %if.then.us.i.3, label %lor.lhs.false.us.i.3, !dbg !2103

lor.lhs.false.us.i.3:                             ; preds = %if.then.us.i.2
  %incdec.ptr23.us.i.2 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 3, !dbg !2117
    #dbg_value(ptr %incdec.ptr23.us.i.2, !2071, !DIExpression(), !2075)
  %conv16.us.i.3 = zext i8 %23 to i32, !dbg !2098
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2108)
    #dbg_value(i32 %conv16.us.i.3, !2107, !DIExpression(), !2108)
  %sub.i.us.i.3 = sub nsw i32 24, %conv16.us.i.3, !dbg !2110
  %shr.i.us.i.3 = lshr i32 %and10.i, %sub.i.us.i.3, !dbg !2111
  %24 = load i8, ptr %incdec.ptr23.us.i.2, align 1, !dbg !2112
  %conv20.us.i.3 = zext i8 %24 to i32, !dbg !2112
  %cmp21.not.us.i.3 = icmp eq i32 %shr.i.us.i.3, %conv20.us.i.3, !dbg !2113
  br i1 %cmp21.not.us.i.3, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.3, !dbg !2114

if.then.us.i.3:                                   ; preds = %lor.lhs.false.us.i.3, %if.then.us.i.2
  %incdec.ptr.us.i.3 = getelementptr inbounds i8, ptr %len.068.us.i, i64 4, !dbg !2115
    #dbg_value(ptr %incdec.ptr.us.i.3, !2070, !DIExpression(), !2075)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !2075)
    #dbg_value(i32 4, !2068, !DIExpression(), !2075)
  %25 = load i8, ptr %incdec.ptr.us.i.3, align 1, !dbg !2098
  %cmp17.us.i.4 = icmp eq i8 %25, 0, !dbg !2102
  br i1 %cmp17.us.i.4, label %if.then.us.i.4, label %lor.lhs.false.us.i.4, !dbg !2103

lor.lhs.false.us.i.4:                             ; preds = %if.then.us.i.3
  %incdec.ptr23.us.i.3 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 4, !dbg !2117
    #dbg_value(ptr %incdec.ptr23.us.i.3, !2071, !DIExpression(), !2075)
  %conv16.us.i.4 = zext i8 %25 to i32, !dbg !2098
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2108)
    #dbg_value(i32 %conv16.us.i.4, !2107, !DIExpression(), !2108)
  %sub.i.us.i.4 = sub nsw i32 24, %conv16.us.i.4, !dbg !2110
  %shr.i.us.i.4 = lshr i32 %and10.i, %sub.i.us.i.4, !dbg !2111
  %26 = load i8, ptr %incdec.ptr23.us.i.3, align 1, !dbg !2112
  %conv20.us.i.4 = zext i8 %26 to i32, !dbg !2112
  %cmp21.not.us.i.4 = icmp eq i32 %shr.i.us.i.4, %conv20.us.i.4, !dbg !2113
  br i1 %cmp21.not.us.i.4, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.4, !dbg !2114

if.then.us.i.4:                                   ; preds = %lor.lhs.false.us.i.4, %if.then.us.i.3
  %incdec.ptr.us.i.4 = getelementptr inbounds i8, ptr %len.068.us.i, i64 5, !dbg !2115
    #dbg_value(ptr %incdec.ptr.us.i.4, !2070, !DIExpression(), !2075)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value), !2075)
    #dbg_value(i32 5, !2068, !DIExpression(), !2075)
  %27 = load i8, ptr %incdec.ptr.us.i.4, align 1, !dbg !2098
  %cmp17.us.i.5 = icmp eq i8 %27, 0, !dbg !2102
  br i1 %cmp17.us.i.5, label %if.then.us.i.5, label %lor.lhs.false.us.i.5, !dbg !2103

lor.lhs.false.us.i.5:                             ; preds = %if.then.us.i.4
  %incdec.ptr23.us.i.4 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 5, !dbg !2117
    #dbg_value(ptr %incdec.ptr23.us.i.4, !2071, !DIExpression(), !2075)
  %conv16.us.i.5 = zext i8 %27 to i32, !dbg !2098
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2108)
    #dbg_value(i32 %conv16.us.i.5, !2107, !DIExpression(), !2108)
  %sub.i.us.i.5 = sub nsw i32 24, %conv16.us.i.5, !dbg !2110
  %shr.i.us.i.5 = lshr i32 %and10.i, %sub.i.us.i.5, !dbg !2111
  %28 = load i8, ptr %incdec.ptr23.us.i.4, align 1, !dbg !2112
  %conv20.us.i.5 = zext i8 %28 to i32, !dbg !2112
  %cmp21.not.us.i.5 = icmp eq i32 %shr.i.us.i.5, %conv20.us.i.5, !dbg !2113
  br i1 %cmp21.not.us.i.5, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.5, !dbg !2114

if.then.us.i.5:                                   ; preds = %lor.lhs.false.us.i.5, %if.then.us.i.4
  %incdec.ptr.us.i.5 = getelementptr inbounds i8, ptr %len.068.us.i, i64 6, !dbg !2115
    #dbg_value(ptr %incdec.ptr.us.i.5, !2070, !DIExpression(), !2075)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !2075)
    #dbg_value(i32 6, !2068, !DIExpression(), !2075)
  %29 = load i8, ptr %incdec.ptr.us.i.5, align 1, !dbg !2098
  %cmp17.us.i.6 = icmp eq i8 %29, 0, !dbg !2102
  br i1 %cmp17.us.i.6, label %if.then.us.i.6, label %lor.lhs.false.us.i.6, !dbg !2103

lor.lhs.false.us.i.6:                             ; preds = %if.then.us.i.5
  %incdec.ptr23.us.i.5 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 6, !dbg !2117
    #dbg_value(ptr %incdec.ptr23.us.i.5, !2071, !DIExpression(), !2075)
  %conv16.us.i.6 = zext i8 %29 to i32, !dbg !2098
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2108)
    #dbg_value(i32 %conv16.us.i.6, !2107, !DIExpression(), !2108)
  %sub.i.us.i.6 = sub nsw i32 24, %conv16.us.i.6, !dbg !2110
  %shr.i.us.i.6 = lshr i32 %and10.i, %sub.i.us.i.6, !dbg !2111
  %30 = load i8, ptr %incdec.ptr23.us.i.5, align 1, !dbg !2112
  %conv20.us.i.6 = zext i8 %30 to i32, !dbg !2112
  %cmp21.not.us.i.6 = icmp eq i32 %shr.i.us.i.6, %conv20.us.i.6, !dbg !2113
  br i1 %cmp21.not.us.i.6, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.6, !dbg !2114

if.then.us.i.6:                                   ; preds = %lor.lhs.false.us.i.6, %if.then.us.i.5
  %incdec.ptr.us.i.6 = getelementptr inbounds i8, ptr %len.068.us.i, i64 7, !dbg !2115
    #dbg_value(ptr %incdec.ptr.us.i.6, !2070, !DIExpression(), !2075)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !2075)
    #dbg_value(i32 7, !2068, !DIExpression(), !2075)
  %31 = load i8, ptr %incdec.ptr.us.i.6, align 1, !dbg !2098
  %cmp17.us.i.7 = icmp eq i8 %31, 0, !dbg !2102
  br i1 %cmp17.us.i.7, label %if.then.us.i.7, label %lor.lhs.false.us.i.7, !dbg !2103

lor.lhs.false.us.i.7:                             ; preds = %if.then.us.i.6
  %incdec.ptr23.us.i.6 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 7, !dbg !2117
    #dbg_value(ptr %incdec.ptr23.us.i.6, !2071, !DIExpression(), !2075)
  %conv16.us.i.7 = zext i8 %31 to i32, !dbg !2098
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2108)
    #dbg_value(i32 %conv16.us.i.7, !2107, !DIExpression(), !2108)
  %sub.i.us.i.7 = sub nsw i32 24, %conv16.us.i.7, !dbg !2110
  %shr.i.us.i.7 = lshr i32 %and10.i, %sub.i.us.i.7, !dbg !2111
  %32 = load i8, ptr %incdec.ptr23.us.i.6, align 1, !dbg !2112
  %conv20.us.i.7 = zext i8 %32 to i32, !dbg !2112
  %cmp21.not.us.i.7 = icmp eq i32 %shr.i.us.i.7, %conv20.us.i.7, !dbg !2113
  br i1 %cmp21.not.us.i.7, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.7, !dbg !2114

if.then.us.i.7:                                   ; preds = %lor.lhs.false.us.i.7, %if.then.us.i.6
  %incdec.ptr.us.i.7 = getelementptr inbounds i8, ptr %len.068.us.i, i64 8, !dbg !2115
    #dbg_value(ptr %incdec.ptr.us.i.7, !2070, !DIExpression(), !2075)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2075)
    #dbg_value(i32 8, !2068, !DIExpression(), !2075)
  %33 = load i8, ptr %incdec.ptr.us.i.7, align 1, !dbg !2098
  %cmp17.us.i.8 = icmp eq i8 %33, 0, !dbg !2102
  br i1 %cmp17.us.i.8, label %if.then.us.i.8, label %lor.lhs.false.us.i.8, !dbg !2103

lor.lhs.false.us.i.8:                             ; preds = %if.then.us.i.7
  %incdec.ptr23.us.i.7 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 8, !dbg !2117
    #dbg_value(ptr %incdec.ptr23.us.i.7, !2071, !DIExpression(), !2075)
  %conv16.us.i.8 = zext i8 %33 to i32, !dbg !2098
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2108)
    #dbg_value(i32 %conv16.us.i.8, !2107, !DIExpression(), !2108)
  %sub.i.us.i.8 = sub nsw i32 24, %conv16.us.i.8, !dbg !2110
  %shr.i.us.i.8 = lshr i32 %and10.i, %sub.i.us.i.8, !dbg !2111
  %34 = load i8, ptr %incdec.ptr23.us.i.7, align 1, !dbg !2112
  %conv20.us.i.8 = zext i8 %34 to i32, !dbg !2112
  %cmp21.not.us.i.8 = icmp eq i32 %shr.i.us.i.8, %conv20.us.i.8, !dbg !2113
  br i1 %cmp21.not.us.i.8, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.8, !dbg !2114

if.then.us.i.8:                                   ; preds = %lor.lhs.false.us.i.8, %if.then.us.i.7
  %incdec.ptr.us.i.8 = getelementptr inbounds i8, ptr %len.068.us.i, i64 9, !dbg !2115
    #dbg_value(ptr %incdec.ptr.us.i.8, !2070, !DIExpression(), !2075)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 9, DW_OP_stack_value), !2075)
    #dbg_value(i32 9, !2068, !DIExpression(), !2075)
  %35 = load i8, ptr %incdec.ptr.us.i.8, align 1, !dbg !2098
  %cmp17.us.i.9 = icmp eq i8 %35, 0, !dbg !2102
  br i1 %cmp17.us.i.9, label %if.then.us.i.9, label %lor.lhs.false.us.i.9, !dbg !2103

lor.lhs.false.us.i.9:                             ; preds = %if.then.us.i.8
  %incdec.ptr23.us.i.8 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 9, !dbg !2117
    #dbg_value(ptr %incdec.ptr23.us.i.8, !2071, !DIExpression(), !2075)
  %conv16.us.i.9 = zext i8 %35 to i32, !dbg !2098
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2108)
    #dbg_value(i32 %conv16.us.i.9, !2107, !DIExpression(), !2108)
  %sub.i.us.i.9 = sub nsw i32 24, %conv16.us.i.9, !dbg !2110
  %shr.i.us.i.9 = lshr i32 %and10.i, %sub.i.us.i.9, !dbg !2111
  %36 = load i8, ptr %incdec.ptr23.us.i.8, align 1, !dbg !2112
  %conv20.us.i.9 = zext i8 %36 to i32, !dbg !2112
  %cmp21.not.us.i.9 = icmp eq i32 %shr.i.us.i.9, %conv20.us.i.9, !dbg !2113
  br i1 %cmp21.not.us.i.9, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.9, !dbg !2114

if.then.us.i.9:                                   ; preds = %lor.lhs.false.us.i.9, %if.then.us.i.8
  %incdec.ptr.us.i.9 = getelementptr inbounds i8, ptr %len.068.us.i, i64 10, !dbg !2115
    #dbg_value(ptr %incdec.ptr.us.i.9, !2070, !DIExpression(), !2075)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 10, DW_OP_stack_value), !2075)
    #dbg_value(i32 10, !2068, !DIExpression(), !2075)
  %37 = load i8, ptr %incdec.ptr.us.i.9, align 1, !dbg !2098
  %cmp17.us.i.10 = icmp eq i8 %37, 0, !dbg !2102
  br i1 %cmp17.us.i.10, label %if.then.us.i.10, label %lor.lhs.false.us.i.10, !dbg !2103

lor.lhs.false.us.i.10:                            ; preds = %if.then.us.i.9
  %incdec.ptr23.us.i.9 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 10, !dbg !2117
    #dbg_value(ptr %incdec.ptr23.us.i.9, !2071, !DIExpression(), !2075)
  %conv16.us.i.10 = zext i8 %37 to i32, !dbg !2098
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2108)
    #dbg_value(i32 %conv16.us.i.10, !2107, !DIExpression(), !2108)
  %sub.i.us.i.10 = sub nsw i32 24, %conv16.us.i.10, !dbg !2110
  %shr.i.us.i.10 = lshr i32 %and10.i, %sub.i.us.i.10, !dbg !2111
  %38 = load i8, ptr %incdec.ptr23.us.i.9, align 1, !dbg !2112
  %conv20.us.i.10 = zext i8 %38 to i32, !dbg !2112
  %cmp21.not.us.i.10 = icmp eq i32 %shr.i.us.i.10, %conv20.us.i.10, !dbg !2113
  br i1 %cmp21.not.us.i.10, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.10, !dbg !2114

if.then.us.i.10:                                  ; preds = %lor.lhs.false.us.i.10, %if.then.us.i.9
  %incdec.ptr.us.i.10 = getelementptr inbounds i8, ptr %len.068.us.i, i64 11, !dbg !2115
    #dbg_value(ptr %incdec.ptr.us.i.10, !2070, !DIExpression(), !2075)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 11, DW_OP_stack_value), !2075)
    #dbg_value(i32 11, !2068, !DIExpression(), !2075)
  %39 = load i8, ptr %incdec.ptr.us.i.10, align 1, !dbg !2098
  %cmp17.us.i.11 = icmp eq i8 %39, 0, !dbg !2102
  br i1 %cmp17.us.i.11, label %if.then.us.i.11, label %lor.lhs.false.us.i.11, !dbg !2103

lor.lhs.false.us.i.11:                            ; preds = %if.then.us.i.10
  %incdec.ptr23.us.i.10 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 11, !dbg !2117
    #dbg_value(ptr %incdec.ptr23.us.i.10, !2071, !DIExpression(), !2075)
  %conv16.us.i.11 = zext i8 %39 to i32, !dbg !2098
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2108)
    #dbg_value(i32 %conv16.us.i.11, !2107, !DIExpression(), !2108)
  %sub.i.us.i.11 = sub nsw i32 24, %conv16.us.i.11, !dbg !2110
  %shr.i.us.i.11 = lshr i32 %and10.i, %sub.i.us.i.11, !dbg !2111
  %40 = load i8, ptr %incdec.ptr23.us.i.10, align 1, !dbg !2112
  %conv20.us.i.11 = zext i8 %40 to i32, !dbg !2112
  %cmp21.not.us.i.11 = icmp eq i32 %shr.i.us.i.11, %conv20.us.i.11, !dbg !2113
  br i1 %cmp21.not.us.i.11, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.11, !dbg !2114

if.then.us.i.11:                                  ; preds = %lor.lhs.false.us.i.11, %if.then.us.i.10
  %incdec.ptr.us.i.11 = getelementptr inbounds i8, ptr %len.068.us.i, i64 12, !dbg !2115
    #dbg_value(ptr %incdec.ptr.us.i.11, !2070, !DIExpression(), !2075)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !2075)
    #dbg_value(i32 12, !2068, !DIExpression(), !2075)
  %41 = load i8, ptr %incdec.ptr.us.i.11, align 1, !dbg !2098
  %cmp17.us.i.12 = icmp eq i8 %41, 0, !dbg !2102
  br i1 %cmp17.us.i.12, label %if.then.us.i.12, label %lor.lhs.false.us.i.12, !dbg !2103

lor.lhs.false.us.i.12:                            ; preds = %if.then.us.i.11
  %incdec.ptr23.us.i.11 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 12, !dbg !2117
    #dbg_value(ptr %incdec.ptr23.us.i.11, !2071, !DIExpression(), !2075)
  %conv16.us.i.12 = zext i8 %41 to i32, !dbg !2098
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2108)
    #dbg_value(i32 %conv16.us.i.12, !2107, !DIExpression(), !2108)
  %sub.i.us.i.12 = sub nsw i32 24, %conv16.us.i.12, !dbg !2110
  %shr.i.us.i.12 = lshr i32 %and10.i, %sub.i.us.i.12, !dbg !2111
  %42 = load i8, ptr %incdec.ptr23.us.i.11, align 1, !dbg !2112
  %conv20.us.i.12 = zext i8 %42 to i32, !dbg !2112
  %cmp21.not.us.i.12 = icmp eq i32 %shr.i.us.i.12, %conv20.us.i.12, !dbg !2113
  br i1 %cmp21.not.us.i.12, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.12, !dbg !2114

if.then.us.i.12:                                  ; preds = %lor.lhs.false.us.i.12, %if.then.us.i.11
  %incdec.ptr.us.i.12 = getelementptr inbounds i8, ptr %len.068.us.i, i64 13, !dbg !2115
    #dbg_value(ptr %incdec.ptr.us.i.12, !2070, !DIExpression(), !2075)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 13, DW_OP_stack_value), !2075)
    #dbg_value(i32 13, !2068, !DIExpression(), !2075)
  %43 = load i8, ptr %incdec.ptr.us.i.12, align 1, !dbg !2098
  %cmp17.us.i.13 = icmp eq i8 %43, 0, !dbg !2102
  br i1 %cmp17.us.i.13, label %if.then.us.i.13, label %lor.lhs.false.us.i.13, !dbg !2103

lor.lhs.false.us.i.13:                            ; preds = %if.then.us.i.12
  %incdec.ptr23.us.i.12 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 13, !dbg !2117
    #dbg_value(ptr %incdec.ptr23.us.i.12, !2071, !DIExpression(), !2075)
  %conv16.us.i.13 = zext i8 %43 to i32, !dbg !2098
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2108)
    #dbg_value(i32 %conv16.us.i.13, !2107, !DIExpression(), !2108)
  %sub.i.us.i.13 = sub nsw i32 24, %conv16.us.i.13, !dbg !2110
  %shr.i.us.i.13 = lshr i32 %and10.i, %sub.i.us.i.13, !dbg !2111
  %44 = load i8, ptr %incdec.ptr23.us.i.12, align 1, !dbg !2112
  %conv20.us.i.13 = zext i8 %44 to i32, !dbg !2112
  %cmp21.not.us.i.13 = icmp eq i32 %shr.i.us.i.13, %conv20.us.i.13, !dbg !2113
  br i1 %cmp21.not.us.i.13, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.13, !dbg !2114

if.then.us.i.13:                                  ; preds = %lor.lhs.false.us.i.13, %if.then.us.i.12
  %incdec.ptr.us.i.13 = getelementptr inbounds i8, ptr %len.068.us.i, i64 14, !dbg !2115
    #dbg_value(ptr %incdec.ptr.us.i.13, !2070, !DIExpression(), !2075)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 14, DW_OP_stack_value), !2075)
    #dbg_value(i32 14, !2068, !DIExpression(), !2075)
  %45 = load i8, ptr %incdec.ptr.us.i.13, align 1, !dbg !2098
  %cmp17.us.i.14 = icmp eq i8 %45, 0, !dbg !2102
  br i1 %cmp17.us.i.14, label %if.then.us.i.14, label %lor.lhs.false.us.i.14, !dbg !2103

lor.lhs.false.us.i.14:                            ; preds = %if.then.us.i.13
  %incdec.ptr23.us.i.13 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 14, !dbg !2117
    #dbg_value(ptr %incdec.ptr23.us.i.13, !2071, !DIExpression(), !2075)
  %conv16.us.i.14 = zext i8 %45 to i32, !dbg !2098
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2108)
    #dbg_value(i32 %conv16.us.i.14, !2107, !DIExpression(), !2108)
  %sub.i.us.i.14 = sub nsw i32 24, %conv16.us.i.14, !dbg !2110
  %shr.i.us.i.14 = lshr i32 %and10.i, %sub.i.us.i.14, !dbg !2111
  %46 = load i8, ptr %incdec.ptr23.us.i.13, align 1, !dbg !2112
  %conv20.us.i.14 = zext i8 %46 to i32, !dbg !2112
  %cmp21.not.us.i.14 = icmp eq i32 %shr.i.us.i.14, %conv20.us.i.14, !dbg !2113
  br i1 %cmp21.not.us.i.14, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.14, !dbg !2114

if.then.us.i.14:                                  ; preds = %lor.lhs.false.us.i.14, %if.then.us.i.13
  %incdec.ptr.us.i.14 = getelementptr inbounds i8, ptr %len.068.us.i, i64 15, !dbg !2115
    #dbg_value(ptr %incdec.ptr.us.i.14, !2070, !DIExpression(), !2075)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 15, DW_OP_stack_value), !2075)
    #dbg_value(i32 15, !2068, !DIExpression(), !2075)
  %47 = load i8, ptr %incdec.ptr.us.i.14, align 1, !dbg !2098
  %cmp17.us.i.15 = icmp eq i8 %47, 0, !dbg !2102
  br i1 %cmp17.us.i.15, label %if.then.us.i.15, label %lor.lhs.false.us.i.15, !dbg !2103

lor.lhs.false.us.i.15:                            ; preds = %if.then.us.i.14
  %incdec.ptr23.us.i.14 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 15, !dbg !2117
    #dbg_value(ptr %incdec.ptr23.us.i.14, !2071, !DIExpression(), !2075)
  %conv16.us.i.15 = zext i8 %47 to i32, !dbg !2098
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2108)
    #dbg_value(i32 %conv16.us.i.15, !2107, !DIExpression(), !2108)
  %sub.i.us.i.15 = sub nsw i32 24, %conv16.us.i.15, !dbg !2110
  %shr.i.us.i.15 = lshr i32 %and10.i, %sub.i.us.i.15, !dbg !2111
  %48 = load i8, ptr %incdec.ptr23.us.i.14, align 1, !dbg !2112
  %conv20.us.i.15 = zext i8 %48 to i32, !dbg !2112
  %cmp21.not.us.i.15 = icmp eq i32 %shr.i.us.i.15, %conv20.us.i.15, !dbg !2113
  br i1 %cmp21.not.us.i.15, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.15, !dbg !2114

if.then.us.i.15:                                  ; preds = %lor.lhs.false.us.i.15, %if.then.us.i.14
  %incdec.ptr.us.i.15 = getelementptr inbounds i8, ptr %len.068.us.i, i64 16, !dbg !2115
    #dbg_value(ptr %incdec.ptr.us.i.15, !2070, !DIExpression(), !2075)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !2075)
    #dbg_value(i32 16, !2068, !DIExpression(), !2075)
  %49 = load i8, ptr %incdec.ptr.us.i.15, align 1, !dbg !2098
  %cmp17.us.i.16 = icmp eq i8 %49, 0, !dbg !2102
  br i1 %cmp17.us.i.16, label %if.then.us.i.16, label %lor.lhs.false.us.i.16, !dbg !2103

lor.lhs.false.us.i.16:                            ; preds = %if.then.us.i.15
  %incdec.ptr23.us.i.15 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 16, !dbg !2117
    #dbg_value(ptr %incdec.ptr23.us.i.15, !2071, !DIExpression(), !2075)
  %conv16.us.i.16 = zext i8 %49 to i32, !dbg !2098
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2108)
    #dbg_value(i32 %conv16.us.i.16, !2107, !DIExpression(), !2108)
  %sub.i.us.i.16 = sub nsw i32 24, %conv16.us.i.16, !dbg !2110
  %shr.i.us.i.16 = lshr i32 %and10.i, %sub.i.us.i.16, !dbg !2111
  %50 = load i8, ptr %incdec.ptr23.us.i.15, align 1, !dbg !2112
  %conv20.us.i.16 = zext i8 %50 to i32, !dbg !2112
  %cmp21.not.us.i.16 = icmp eq i32 %shr.i.us.i.16, %conv20.us.i.16, !dbg !2113
  br i1 %cmp21.not.us.i.16, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.16, !dbg !2114

if.then.us.i.16:                                  ; preds = %lor.lhs.false.us.i.16, %if.then.us.i.15
    #dbg_value(ptr %incdec.ptr.us.i.15, !2070, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2075)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 17, DW_OP_stack_value), !2075)
    #dbg_value(i32 17, !2068, !DIExpression(), !2075)
  %inc30.us.i = add nuw nsw i32 %j.067.us.i, 1, !dbg !2118
    #dbg_value(ptr poison, !2071, !DIExpression(), !2075)
    #dbg_value(ptr poison, !2070, !DIExpression(), !2075)
    #dbg_value(i32 %inc30.us.i, !2069, !DIExpression(), !2075)
  %exitcond80.not.i = icmp eq i32 %inc30.us.i, 4, !dbg !2119
  br i1 %exitcond80.not.i, label %if.then20, label %for.cond12.preheader.us.i, !dbg !2092, !llvm.loop !2120

code_from_bitstream_2d.exit.thread:               ; preds = %lor.lhs.false.us.i.16, %lor.lhs.false.us.i.15, %lor.lhs.false.us.i.14, %lor.lhs.false.us.i.13, %lor.lhs.false.us.i.12, %lor.lhs.false.us.i.11, %lor.lhs.false.us.i.10, %lor.lhs.false.us.i.9, %lor.lhs.false.us.i.8, %lor.lhs.false.us.i.7, %lor.lhs.false.us.i.6, %lor.lhs.false.us.i.5, %lor.lhs.false.us.i.4, %lor.lhs.false.us.i.3, %lor.lhs.false.us.i.2, %lor.lhs.false.us.i.1, %lor.lhs.false.us.i
  %i.064.us.i.lcssa = phi i32 [ 0, %lor.lhs.false.us.i ], [ 1, %lor.lhs.false.us.i.1 ], [ 2, %lor.lhs.false.us.i.2 ], [ 3, %lor.lhs.false.us.i.3 ], [ 4, %lor.lhs.false.us.i.4 ], [ 5, %lor.lhs.false.us.i.5 ], [ 6, %lor.lhs.false.us.i.6 ], [ 7, %lor.lhs.false.us.i.7 ], [ 8, %lor.lhs.false.us.i.8 ], [ 9, %lor.lhs.false.us.i.9 ], [ 10, %lor.lhs.false.us.i.10 ], [ 11, %lor.lhs.false.us.i.11 ], [ 12, %lor.lhs.false.us.i.12 ], [ 13, %lor.lhs.false.us.i.13 ], [ 14, %lor.lhs.false.us.i.14 ], [ 15, %lor.lhs.false.us.i.15 ], [ 16, %lor.lhs.false.us.i.16 ]
  %conv16.us.i.lcssa = phi i32 [ %conv16.us.i, %lor.lhs.false.us.i ], [ %conv16.us.i.1, %lor.lhs.false.us.i.1 ], [ %conv16.us.i.2, %lor.lhs.false.us.i.2 ], [ %conv16.us.i.3, %lor.lhs.false.us.i.3 ], [ %conv16.us.i.4, %lor.lhs.false.us.i.4 ], [ %conv16.us.i.5, %lor.lhs.false.us.i.5 ], [ %conv16.us.i.6, %lor.lhs.false.us.i.6 ], [ %conv16.us.i.7, %lor.lhs.false.us.i.7 ], [ %conv16.us.i.8, %lor.lhs.false.us.i.8 ], [ %conv16.us.i.9, %lor.lhs.false.us.i.9 ], [ %conv16.us.i.10, %lor.lhs.false.us.i.10 ], [ %conv16.us.i.11, %lor.lhs.false.us.i.11 ], [ %conv16.us.i.12, %lor.lhs.false.us.i.12 ], [ %conv16.us.i.13, %lor.lhs.false.us.i.13 ], [ %conv16.us.i.14, %lor.lhs.false.us.i.14 ], [ %conv16.us.i.15, %lor.lhs.false.us.i.15 ], [ %conv16.us.i.16, %lor.lhs.false.us.i.16 ], !dbg !2098
  %len25.i = getelementptr inbounds i8, ptr %sym, i64 12, !dbg !2122
  store i32 %conv16.us.i.lcssa, ptr %len25.i, align 4, !dbg !2124
  %51 = load i32, ptr %frame_bitoffset1, align 4, !dbg !2125
  %add27.i = add nsw i32 %51, %conv16.us.i.lcssa, !dbg !2125
  store i32 %add27.i, ptr %frame_bitoffset1, align 4, !dbg !2125
    #dbg_value(i8 %18, !1108, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1994)
  store i32 %i.064.us.i.lcssa, ptr %value1, align 4, !dbg !2126
  %value2.i = getelementptr inbounds i8, ptr %sym, i64 8, !dbg !2127
  store i32 %j.067.us.i, ptr %value2.i, align 8, !dbg !2128
    #dbg_value(i32 0, !1107, !DIExpression(), !1994)
  br label %if.end23, !dbg !2129

if.then20:                                        ; preds = %if.then.us.i.16
    #dbg_value(i32 -1, !1107, !DIExpression(), !1994)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str), !dbg !2130
  tail call void @exit(i32 noundef -1) #14, !dbg !2133
  unreachable, !dbg !2133

if.end23:                                         ; preds = %code_from_bitstream_2d.exit.thread, %if.end
    #dbg_value(i32 0, !1107, !DIExpression(), !1994)
  ret i32 0, !dbg !2134
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ShowBits(ptr nocapture noundef readonly %buffer, i32 noundef %totbitoffset, i32 noundef %bitcount, i32 noundef %numbits) local_unnamed_addr #9 !dbg !2004 {
entry:
    #dbg_value(ptr %buffer, !2003, !DIExpression(), !2135)
    #dbg_value(i32 %totbitoffset, !2008, !DIExpression(), !2135)
    #dbg_value(i32 %bitcount, !2009, !DIExpression(), !2135)
    #dbg_value(i32 %numbits, !2010, !DIExpression(), !2135)
  %add = add nsw i32 %numbits, %totbitoffset, !dbg !2136
  %cmp = icmp sgt i32 %add, %bitcount, !dbg !2137
  br i1 %cmp, label %return, label %if.else, !dbg !2138

if.else:                                          ; preds = %entry
    #dbg_value(i32 %totbitoffset, !2011, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !2139)
    #dbg_value(i32 %totbitoffset, !2014, !DIExpression(DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value), !2139)
    #dbg_value(!DIArgList(ptr %buffer, i32 %totbitoffset), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2139)
    #dbg_value(i32 0, !2016, !DIExpression(), !2139)
    #dbg_value(i32 %totbitoffset, !2011, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !2139)
    #dbg_value(i32 %numbits, !2010, !DIExpression(), !2135)
    #dbg_value(i32 %numbits, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2135)
  %tobool.not15 = icmp eq i32 %numbits, 0, !dbg !2140
  br i1 %tobool.not15, label %return, label %while.body.preheader, !dbg !2140

while.body.preheader:                             ; preds = %if.else
  %shr = ashr i32 %totbitoffset, 3, !dbg !2141
    #dbg_value(!DIArgList(ptr %buffer, i32 %shr), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2139)
    #dbg_value(i32 %shr, !2014, !DIExpression(), !2139)
  %idxprom = sext i32 %shr to i64, !dbg !2142
    #dbg_value(!DIArgList(ptr %buffer, i64 %idxprom), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2139)
  %arrayidx = getelementptr inbounds i8, ptr %buffer, i64 %idxprom, !dbg !2142
    #dbg_value(ptr %arrayidx, !2015, !DIExpression(), !2139)
  %and = and i32 %totbitoffset, 7, !dbg !2143
    #dbg_value(i32 %and, !2011, !DIExpression(DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !2139)
  %sub = xor i32 %and, 7, !dbg !2144
    #dbg_value(i32 %sub, !2011, !DIExpression(), !2139)
  %xtraiter = and i32 %numbits, 1, !dbg !2140
  %0 = icmp eq i32 %numbits, 1, !dbg !2140
  br i1 %0, label %return.loopexit.unr-lcssa, label %while.body.preheader.new, !dbg !2140

while.body.preheader.new:                         ; preds = %while.body.preheader
  %unroll_iter = and i32 %numbits, -2, !dbg !2140
  br label %while.body, !dbg !2140

while.body:                                       ; preds = %while.body, %while.body.preheader.new
  %inf.019 = phi i32 [ 0, %while.body.preheader.new ], [ %or.1, %while.body ]
  %curbyte.018 = phi ptr [ %arrayidx, %while.body.preheader.new ], [ %spec.select14.1, %while.body ]
  %bitoffset.017 = phi i32 [ %sub, %while.body.preheader.new ], [ %spec.select.1, %while.body ]
  %niter = phi i32 [ 0, %while.body.preheader.new ], [ %niter.next.1, %while.body ]
    #dbg_value(i32 %inf.019, !2016, !DIExpression(), !2139)
    #dbg_value(ptr %curbyte.018, !2015, !DIExpression(), !2139)
    #dbg_value(i32 %bitoffset.017, !2011, !DIExpression(), !2139)
    #dbg_value(i32 poison, !2010, !DIExpression(), !2135)
    #dbg_value(i32 poison, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2135)
    #dbg_value(i32 %inf.019, !2016, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !2139)
  %1 = load i8, ptr %curbyte.018, align 1, !dbg !2145
  %conv = zext i8 %1 to i32, !dbg !2146
  %dec1 = add nsw i32 %bitoffset.017, -1, !dbg !2147
    #dbg_value(i32 %dec1, !2011, !DIExpression(), !2139)
  %shr2 = lshr i32 %conv, %bitoffset.017, !dbg !2148
    #dbg_value(!DIArgList(i32 %shr2, i32 %inf.019), !2016, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !2139)
  %cmp4 = icmp eq i32 %bitoffset.017, 0, !dbg !2149
  %spec.select = select i1 %cmp4, i32 7, i32 %dec1, !dbg !2150
  %spec.select14.idx = zext i1 %cmp4 to i64, !dbg !2150
  %spec.select14 = getelementptr inbounds i8, ptr %curbyte.018, i64 %spec.select14.idx, !dbg !2150
    #dbg_value(ptr %spec.select14, !2015, !DIExpression(), !2139)
    #dbg_value(i32 %spec.select, !2011, !DIExpression(), !2139)
    #dbg_value(i32 poison, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2135)
    #dbg_value(i32 poison, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2135)
    #dbg_value(i32 poison, !2010, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !2135)
  %2 = shl i32 %inf.019, 2, !dbg !2151
  %and3 = shl nuw nsw i32 %shr2, 1, !dbg !2151
  %3 = and i32 %and3, 2, !dbg !2151
  %shl.1 = or disjoint i32 %2, %3, !dbg !2151
    #dbg_value(i32 %shl.1, !2016, !DIExpression(), !2139)
  %4 = load i8, ptr %spec.select14, align 1, !dbg !2145
  %conv.1 = zext i8 %4 to i32, !dbg !2146
  %dec1.1 = add nsw i32 %spec.select, -1, !dbg !2147
    #dbg_value(i32 %dec1.1, !2011, !DIExpression(), !2139)
  %shr2.1 = lshr i32 %conv.1, %spec.select, !dbg !2148
  %and3.1 = and i32 %shr2.1, 1, !dbg !2152
  %or.1 = or disjoint i32 %and3.1, %shl.1, !dbg !2153
    #dbg_value(i32 %or.1, !2016, !DIExpression(), !2139)
  %cmp4.1 = icmp eq i32 %spec.select, 0, !dbg !2149
  %spec.select.1 = select i1 %cmp4.1, i32 7, i32 %dec1.1, !dbg !2150
  %spec.select14.idx.1 = zext i1 %cmp4.1 to i64, !dbg !2150
  %spec.select14.1 = getelementptr inbounds i8, ptr %spec.select14, i64 %spec.select14.idx.1, !dbg !2150
    #dbg_value(ptr %spec.select14.1, !2015, !DIExpression(), !2139)
    #dbg_value(i32 %spec.select.1, !2011, !DIExpression(), !2139)
    #dbg_value(i32 poison, !2010, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2135)
  %niter.next.1 = add i32 %niter, 2, !dbg !2140
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter, !dbg !2140
  br i1 %niter.ncmp.1, label %return.loopexit.unr-lcssa.loopexit, label %while.body, !dbg !2140, !llvm.loop !2154

return.loopexit.unr-lcssa.loopexit:               ; preds = %while.body
  %5 = shl i32 %or.1, 1, !dbg !2151
  br label %return.loopexit.unr-lcssa, !dbg !2140

return.loopexit.unr-lcssa:                        ; preds = %return.loopexit.unr-lcssa.loopexit, %while.body.preheader
  %or.lcssa.ph = phi i32 [ poison, %while.body.preheader ], [ %or.1, %return.loopexit.unr-lcssa.loopexit ]
  %inf.019.unr = phi i32 [ 0, %while.body.preheader ], [ %5, %return.loopexit.unr-lcssa.loopexit ]
  %curbyte.018.unr = phi ptr [ %arrayidx, %while.body.preheader ], [ %spec.select14.1, %return.loopexit.unr-lcssa.loopexit ]
  %bitoffset.017.unr = phi i32 [ %sub, %while.body.preheader ], [ %spec.select.1, %return.loopexit.unr-lcssa.loopexit ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !2140
  br i1 %lcmp.mod.not, label %return, label %while.body.epil, !dbg !2140

while.body.epil:                                  ; preds = %return.loopexit.unr-lcssa
    #dbg_value(i32 %inf.019.unr, !2016, !DIExpression(), !2139)
    #dbg_value(ptr %curbyte.018.unr, !2015, !DIExpression(), !2139)
    #dbg_value(i32 %bitoffset.017.unr, !2011, !DIExpression(), !2139)
    #dbg_value(i32 poison, !2010, !DIExpression(), !2135)
    #dbg_value(i32 poison, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2135)
    #dbg_value(i32 %inf.019.unr, !2016, !DIExpression(), !2139)
  %6 = load i8, ptr %curbyte.018.unr, align 1, !dbg !2145
  %conv.epil = zext i8 %6 to i32, !dbg !2146
    #dbg_value(i32 %bitoffset.017.unr, !2011, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2139)
  %shr2.epil = lshr i32 %conv.epil, %bitoffset.017.unr, !dbg !2148
  %and3.epil = and i32 %shr2.epil, 1, !dbg !2152
  %or.epil = or disjoint i32 %and3.epil, %inf.019.unr, !dbg !2153
    #dbg_value(i32 %or.epil, !2016, !DIExpression(), !2139)
    #dbg_value(!DIArgList(ptr %curbyte.018.unr, i32 %bitoffset.017.unr), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2139)
    #dbg_value(i32 poison, !2011, !DIExpression(), !2139)
    #dbg_value(i32 poison, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2135)
  br label %return, !dbg !2156

return:                                           ; preds = %while.body.epil, %return.loopexit.unr-lcssa, %if.else, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %if.else ], [ %or.lcssa.ph, %return.loopexit.unr-lcssa ], [ %or.epil, %while.body.epil ], !dbg !2157
  ret i32 %retval.0, !dbg !2156
}

; Function Attrs: noreturn nounwind
declare !dbg !2158 void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @readSyntaxElement_NumCoeffTrailingOnesChromaDC(ptr nocapture noundef readonly %p_Vid, ptr nocapture noundef writeonly %sym, ptr nocapture noundef %currStream) local_unnamed_addr #0 !dbg !1122 {
entry:
    #dbg_value(ptr %p_Vid, !1128, !DIExpression(), !2162)
    #dbg_value(ptr %sym, !1129, !DIExpression(), !2162)
    #dbg_value(ptr %currStream, !1130, !DIExpression(), !2162)
  %active_sps = getelementptr inbounds i8, ptr %p_Vid, i64 16, !dbg !2163
  %0 = load ptr, ptr %active_sps, align 8, !dbg !2163
  %chroma_format_idc = getelementptr inbounds i8, ptr %0, i64 36, !dbg !2164
  %1 = load i32, ptr %chroma_format_idc, align 4, !dbg !2164
  %sub = add i32 %1, -1, !dbg !2165
    #dbg_value(i32 %sub, !1132, !DIExpression(), !2162)
  %idxprom = sext i32 %sub to i64, !dbg !2166
  %arrayidx = getelementptr inbounds [3 x [4 x [17 x i8]]], ptr @readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab, i64 0, i64 %idxprom, !dbg !2166
  %arrayidx5 = getelementptr inbounds [3 x [4 x [17 x i8]]], ptr @readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab, i64 0, i64 %idxprom, !dbg !2167
    #dbg_value(ptr %sym, !2056, !DIExpression(), !2168)
    #dbg_value(ptr %currStream, !2062, !DIExpression(), !2168)
    #dbg_value(ptr %arrayidx, !2063, !DIExpression(), !2168)
    #dbg_value(ptr %arrayidx5, !2064, !DIExpression(), !2168)
    #dbg_value(i32 17, !2065, !DIExpression(), !2168)
    #dbg_value(i32 4, !2066, !DIExpression(), !2168)
    #dbg_value(ptr undef, !2067, !DIExpression(), !2168)
    #dbg_value(ptr %arrayidx, !2070, !DIExpression(), !2168)
    #dbg_value(ptr %arrayidx5, !2071, !DIExpression(), !2168)
  %frame_bitoffset2.i = getelementptr inbounds i8, ptr %currStream, i64 8, !dbg !2170
    #dbg_value(ptr %frame_bitoffset2.i, !2072, !DIExpression(), !2168)
  %streamBuffer.i = getelementptr inbounds i8, ptr %currStream, i64 16, !dbg !2171
  %2 = load ptr, ptr %streamBuffer.i, align 8, !dbg !2171
  %3 = load i32, ptr %frame_bitoffset2.i, align 4, !dbg !2172
  %shr.i = ashr i32 %3, 3, !dbg !2173
  %idxprom.i = sext i32 %shr.i to i64, !dbg !2174
  %arrayidx3.i = getelementptr inbounds i8, ptr %2, i64 %idxprom.i, !dbg !2174
    #dbg_value(ptr %arrayidx3.i, !2073, !DIExpression(), !2168)
  %4 = load i8, ptr %arrayidx3.i, align 1, !dbg !2175
  %conv.i = zext i8 %4 to i32, !dbg !2176
  %shl.i = shl nuw nsw i32 %conv.i, 16, !dbg !2177
  %add.ptr.i = getelementptr inbounds i8, ptr %arrayidx3.i, i64 1, !dbg !2178
  %5 = load i8, ptr %add.ptr.i, align 1, !dbg !2179
  %conv4.i = zext i8 %5 to i32, !dbg !2179
  %shl5.i = shl nuw nsw i32 %conv4.i, 8, !dbg !2180
  %add.i = or disjoint i32 %shl5.i, %shl.i, !dbg !2181
  %add.ptr6.i = getelementptr inbounds i8, ptr %arrayidx3.i, i64 2, !dbg !2182
  %6 = load i8, ptr %add.ptr6.i, align 1, !dbg !2183
  %conv7.i = zext i8 %6 to i32, !dbg !2183
  %add8.i = or disjoint i32 %add.i, %conv7.i, !dbg !2184
    #dbg_value(i32 %add8.i, !2074, !DIExpression(), !2168)
  %and.i = and i32 %3, 7, !dbg !2185
  %shl9.i = shl nuw nsw i32 %add8.i, %and.i, !dbg !2186
    #dbg_value(i32 %shl9.i, !2074, !DIExpression(), !2168)
  %and10.i = and i32 %shl9.i, 16777215, !dbg !2187
    #dbg_value(i32 %and10.i, !2074, !DIExpression(), !2168)
    #dbg_value(i32 0, !2069, !DIExpression(), !2168)
  br label %for.cond12.preheader.us.i, !dbg !2188

for.cond12.preheader.us.i:                        ; preds = %if.then.us.i.16, %entry
  %cod.069.us.i = phi ptr [ %scevgep79.i, %if.then.us.i.16 ], [ %arrayidx5, %entry ]
  %len.068.us.i = phi ptr [ %scevgep.i, %if.then.us.i.16 ], [ %arrayidx, %entry ]
  %j.067.us.i = phi i32 [ %inc30.us.i, %if.then.us.i.16 ], [ 0, %entry ]
    #dbg_value(i32 %j.067.us.i, !2069, !DIExpression(), !2168)
    #dbg_value(i32 0, !2068, !DIExpression(), !2168)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(), !2168)
    #dbg_value(ptr %len.068.us.i, !2070, !DIExpression(), !2168)
  %scevgep.i = getelementptr i8, ptr %len.068.us.i, i64 17, !dbg !2189
  %scevgep79.i = getelementptr i8, ptr %cod.069.us.i, i64 17, !dbg !2189
    #dbg_value(i32 0, !2068, !DIExpression(), !2168)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(), !2168)
    #dbg_value(ptr %len.068.us.i, !2070, !DIExpression(), !2168)
  %7 = load i8, ptr %len.068.us.i, align 1, !dbg !2190
  %cmp17.us.i = icmp eq i8 %7, 0, !dbg !2191
  br i1 %cmp17.us.i, label %if.then.us.i, label %lor.lhs.false.us.i, !dbg !2192

lor.lhs.false.us.i:                               ; preds = %for.cond12.preheader.us.i
  %conv16.us.i = zext i8 %7 to i32, !dbg !2190
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2193)
    #dbg_value(i32 %conv16.us.i, !2107, !DIExpression(), !2193)
  %sub.i.us.i = sub nsw i32 24, %conv16.us.i, !dbg !2195
  %shr.i.us.i = lshr i32 %and10.i, %sub.i.us.i, !dbg !2196
  %8 = load i8, ptr %cod.069.us.i, align 1, !dbg !2197
  %conv20.us.i = zext i8 %8 to i32, !dbg !2197
  %cmp21.not.us.i = icmp eq i32 %shr.i.us.i, %conv20.us.i, !dbg !2198
  br i1 %cmp21.not.us.i, label %if.end, label %if.then.us.i, !dbg !2199

if.then.us.i:                                     ; preds = %lor.lhs.false.us.i, %for.cond12.preheader.us.i
  %incdec.ptr.us.i = getelementptr inbounds i8, ptr %len.068.us.i, i64 1, !dbg !2200
    #dbg_value(ptr %incdec.ptr.us.i, !2070, !DIExpression(), !2168)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2168)
    #dbg_value(i32 1, !2068, !DIExpression(), !2168)
  %9 = load i8, ptr %incdec.ptr.us.i, align 1, !dbg !2190
  %cmp17.us.i.1 = icmp eq i8 %9, 0, !dbg !2191
  br i1 %cmp17.us.i.1, label %if.then.us.i.1, label %lor.lhs.false.us.i.1, !dbg !2192

lor.lhs.false.us.i.1:                             ; preds = %if.then.us.i
  %incdec.ptr23.us.i = getelementptr inbounds i8, ptr %cod.069.us.i, i64 1, !dbg !2201
    #dbg_value(ptr %incdec.ptr23.us.i, !2071, !DIExpression(), !2168)
  %conv16.us.i.1 = zext i8 %9 to i32, !dbg !2190
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2193)
    #dbg_value(i32 %conv16.us.i.1, !2107, !DIExpression(), !2193)
  %sub.i.us.i.1 = sub nsw i32 24, %conv16.us.i.1, !dbg !2195
  %shr.i.us.i.1 = lshr i32 %and10.i, %sub.i.us.i.1, !dbg !2196
  %10 = load i8, ptr %incdec.ptr23.us.i, align 1, !dbg !2197
  %conv20.us.i.1 = zext i8 %10 to i32, !dbg !2197
  %cmp21.not.us.i.1 = icmp eq i32 %shr.i.us.i.1, %conv20.us.i.1, !dbg !2198
  br i1 %cmp21.not.us.i.1, label %if.end, label %if.then.us.i.1, !dbg !2199

if.then.us.i.1:                                   ; preds = %lor.lhs.false.us.i.1, %if.then.us.i
  %incdec.ptr.us.i.1 = getelementptr inbounds i8, ptr %len.068.us.i, i64 2, !dbg !2200
    #dbg_value(ptr %incdec.ptr.us.i.1, !2070, !DIExpression(), !2168)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !2168)
    #dbg_value(i32 2, !2068, !DIExpression(), !2168)
  %11 = load i8, ptr %incdec.ptr.us.i.1, align 1, !dbg !2190
  %cmp17.us.i.2 = icmp eq i8 %11, 0, !dbg !2191
  br i1 %cmp17.us.i.2, label %if.then.us.i.2, label %lor.lhs.false.us.i.2, !dbg !2192

lor.lhs.false.us.i.2:                             ; preds = %if.then.us.i.1
  %incdec.ptr23.us.i.1 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 2, !dbg !2201
    #dbg_value(ptr %incdec.ptr23.us.i.1, !2071, !DIExpression(), !2168)
  %conv16.us.i.2 = zext i8 %11 to i32, !dbg !2190
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2193)
    #dbg_value(i32 %conv16.us.i.2, !2107, !DIExpression(), !2193)
  %sub.i.us.i.2 = sub nsw i32 24, %conv16.us.i.2, !dbg !2195
  %shr.i.us.i.2 = lshr i32 %and10.i, %sub.i.us.i.2, !dbg !2196
  %12 = load i8, ptr %incdec.ptr23.us.i.1, align 1, !dbg !2197
  %conv20.us.i.2 = zext i8 %12 to i32, !dbg !2197
  %cmp21.not.us.i.2 = icmp eq i32 %shr.i.us.i.2, %conv20.us.i.2, !dbg !2198
  br i1 %cmp21.not.us.i.2, label %if.end, label %if.then.us.i.2, !dbg !2199

if.then.us.i.2:                                   ; preds = %lor.lhs.false.us.i.2, %if.then.us.i.1
  %incdec.ptr.us.i.2 = getelementptr inbounds i8, ptr %len.068.us.i, i64 3, !dbg !2200
    #dbg_value(ptr %incdec.ptr.us.i.2, !2070, !DIExpression(), !2168)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !2168)
    #dbg_value(i32 3, !2068, !DIExpression(), !2168)
  %13 = load i8, ptr %incdec.ptr.us.i.2, align 1, !dbg !2190
  %cmp17.us.i.3 = icmp eq i8 %13, 0, !dbg !2191
  br i1 %cmp17.us.i.3, label %if.then.us.i.3, label %lor.lhs.false.us.i.3, !dbg !2192

lor.lhs.false.us.i.3:                             ; preds = %if.then.us.i.2
  %incdec.ptr23.us.i.2 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 3, !dbg !2201
    #dbg_value(ptr %incdec.ptr23.us.i.2, !2071, !DIExpression(), !2168)
  %conv16.us.i.3 = zext i8 %13 to i32, !dbg !2190
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2193)
    #dbg_value(i32 %conv16.us.i.3, !2107, !DIExpression(), !2193)
  %sub.i.us.i.3 = sub nsw i32 24, %conv16.us.i.3, !dbg !2195
  %shr.i.us.i.3 = lshr i32 %and10.i, %sub.i.us.i.3, !dbg !2196
  %14 = load i8, ptr %incdec.ptr23.us.i.2, align 1, !dbg !2197
  %conv20.us.i.3 = zext i8 %14 to i32, !dbg !2197
  %cmp21.not.us.i.3 = icmp eq i32 %shr.i.us.i.3, %conv20.us.i.3, !dbg !2198
  br i1 %cmp21.not.us.i.3, label %if.end, label %if.then.us.i.3, !dbg !2199

if.then.us.i.3:                                   ; preds = %lor.lhs.false.us.i.3, %if.then.us.i.2
  %incdec.ptr.us.i.3 = getelementptr inbounds i8, ptr %len.068.us.i, i64 4, !dbg !2200
    #dbg_value(ptr %incdec.ptr.us.i.3, !2070, !DIExpression(), !2168)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !2168)
    #dbg_value(i32 4, !2068, !DIExpression(), !2168)
  %15 = load i8, ptr %incdec.ptr.us.i.3, align 1, !dbg !2190
  %cmp17.us.i.4 = icmp eq i8 %15, 0, !dbg !2191
  br i1 %cmp17.us.i.4, label %if.then.us.i.4, label %lor.lhs.false.us.i.4, !dbg !2192

lor.lhs.false.us.i.4:                             ; preds = %if.then.us.i.3
  %incdec.ptr23.us.i.3 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 4, !dbg !2201
    #dbg_value(ptr %incdec.ptr23.us.i.3, !2071, !DIExpression(), !2168)
  %conv16.us.i.4 = zext i8 %15 to i32, !dbg !2190
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2193)
    #dbg_value(i32 %conv16.us.i.4, !2107, !DIExpression(), !2193)
  %sub.i.us.i.4 = sub nsw i32 24, %conv16.us.i.4, !dbg !2195
  %shr.i.us.i.4 = lshr i32 %and10.i, %sub.i.us.i.4, !dbg !2196
  %16 = load i8, ptr %incdec.ptr23.us.i.3, align 1, !dbg !2197
  %conv20.us.i.4 = zext i8 %16 to i32, !dbg !2197
  %cmp21.not.us.i.4 = icmp eq i32 %shr.i.us.i.4, %conv20.us.i.4, !dbg !2198
  br i1 %cmp21.not.us.i.4, label %if.end, label %if.then.us.i.4, !dbg !2199

if.then.us.i.4:                                   ; preds = %lor.lhs.false.us.i.4, %if.then.us.i.3
  %incdec.ptr.us.i.4 = getelementptr inbounds i8, ptr %len.068.us.i, i64 5, !dbg !2200
    #dbg_value(ptr %incdec.ptr.us.i.4, !2070, !DIExpression(), !2168)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value), !2168)
    #dbg_value(i32 5, !2068, !DIExpression(), !2168)
  %17 = load i8, ptr %incdec.ptr.us.i.4, align 1, !dbg !2190
  %cmp17.us.i.5 = icmp eq i8 %17, 0, !dbg !2191
  br i1 %cmp17.us.i.5, label %if.then.us.i.5, label %lor.lhs.false.us.i.5, !dbg !2192

lor.lhs.false.us.i.5:                             ; preds = %if.then.us.i.4
  %incdec.ptr23.us.i.4 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 5, !dbg !2201
    #dbg_value(ptr %incdec.ptr23.us.i.4, !2071, !DIExpression(), !2168)
  %conv16.us.i.5 = zext i8 %17 to i32, !dbg !2190
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2193)
    #dbg_value(i32 %conv16.us.i.5, !2107, !DIExpression(), !2193)
  %sub.i.us.i.5 = sub nsw i32 24, %conv16.us.i.5, !dbg !2195
  %shr.i.us.i.5 = lshr i32 %and10.i, %sub.i.us.i.5, !dbg !2196
  %18 = load i8, ptr %incdec.ptr23.us.i.4, align 1, !dbg !2197
  %conv20.us.i.5 = zext i8 %18 to i32, !dbg !2197
  %cmp21.not.us.i.5 = icmp eq i32 %shr.i.us.i.5, %conv20.us.i.5, !dbg !2198
  br i1 %cmp21.not.us.i.5, label %if.end, label %if.then.us.i.5, !dbg !2199

if.then.us.i.5:                                   ; preds = %lor.lhs.false.us.i.5, %if.then.us.i.4
  %incdec.ptr.us.i.5 = getelementptr inbounds i8, ptr %len.068.us.i, i64 6, !dbg !2200
    #dbg_value(ptr %incdec.ptr.us.i.5, !2070, !DIExpression(), !2168)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !2168)
    #dbg_value(i32 6, !2068, !DIExpression(), !2168)
  %19 = load i8, ptr %incdec.ptr.us.i.5, align 1, !dbg !2190
  %cmp17.us.i.6 = icmp eq i8 %19, 0, !dbg !2191
  br i1 %cmp17.us.i.6, label %if.then.us.i.6, label %lor.lhs.false.us.i.6, !dbg !2192

lor.lhs.false.us.i.6:                             ; preds = %if.then.us.i.5
  %incdec.ptr23.us.i.5 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 6, !dbg !2201
    #dbg_value(ptr %incdec.ptr23.us.i.5, !2071, !DIExpression(), !2168)
  %conv16.us.i.6 = zext i8 %19 to i32, !dbg !2190
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2193)
    #dbg_value(i32 %conv16.us.i.6, !2107, !DIExpression(), !2193)
  %sub.i.us.i.6 = sub nsw i32 24, %conv16.us.i.6, !dbg !2195
  %shr.i.us.i.6 = lshr i32 %and10.i, %sub.i.us.i.6, !dbg !2196
  %20 = load i8, ptr %incdec.ptr23.us.i.5, align 1, !dbg !2197
  %conv20.us.i.6 = zext i8 %20 to i32, !dbg !2197
  %cmp21.not.us.i.6 = icmp eq i32 %shr.i.us.i.6, %conv20.us.i.6, !dbg !2198
  br i1 %cmp21.not.us.i.6, label %if.end, label %if.then.us.i.6, !dbg !2199

if.then.us.i.6:                                   ; preds = %lor.lhs.false.us.i.6, %if.then.us.i.5
  %incdec.ptr.us.i.6 = getelementptr inbounds i8, ptr %len.068.us.i, i64 7, !dbg !2200
    #dbg_value(ptr %incdec.ptr.us.i.6, !2070, !DIExpression(), !2168)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !2168)
    #dbg_value(i32 7, !2068, !DIExpression(), !2168)
  %21 = load i8, ptr %incdec.ptr.us.i.6, align 1, !dbg !2190
  %cmp17.us.i.7 = icmp eq i8 %21, 0, !dbg !2191
  br i1 %cmp17.us.i.7, label %if.then.us.i.7, label %lor.lhs.false.us.i.7, !dbg !2192

lor.lhs.false.us.i.7:                             ; preds = %if.then.us.i.6
  %incdec.ptr23.us.i.6 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 7, !dbg !2201
    #dbg_value(ptr %incdec.ptr23.us.i.6, !2071, !DIExpression(), !2168)
  %conv16.us.i.7 = zext i8 %21 to i32, !dbg !2190
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2193)
    #dbg_value(i32 %conv16.us.i.7, !2107, !DIExpression(), !2193)
  %sub.i.us.i.7 = sub nsw i32 24, %conv16.us.i.7, !dbg !2195
  %shr.i.us.i.7 = lshr i32 %and10.i, %sub.i.us.i.7, !dbg !2196
  %22 = load i8, ptr %incdec.ptr23.us.i.6, align 1, !dbg !2197
  %conv20.us.i.7 = zext i8 %22 to i32, !dbg !2197
  %cmp21.not.us.i.7 = icmp eq i32 %shr.i.us.i.7, %conv20.us.i.7, !dbg !2198
  br i1 %cmp21.not.us.i.7, label %if.end, label %if.then.us.i.7, !dbg !2199

if.then.us.i.7:                                   ; preds = %lor.lhs.false.us.i.7, %if.then.us.i.6
  %incdec.ptr.us.i.7 = getelementptr inbounds i8, ptr %len.068.us.i, i64 8, !dbg !2200
    #dbg_value(ptr %incdec.ptr.us.i.7, !2070, !DIExpression(), !2168)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2168)
    #dbg_value(i32 8, !2068, !DIExpression(), !2168)
  %23 = load i8, ptr %incdec.ptr.us.i.7, align 1, !dbg !2190
  %cmp17.us.i.8 = icmp eq i8 %23, 0, !dbg !2191
  br i1 %cmp17.us.i.8, label %if.then.us.i.8, label %lor.lhs.false.us.i.8, !dbg !2192

lor.lhs.false.us.i.8:                             ; preds = %if.then.us.i.7
  %incdec.ptr23.us.i.7 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 8, !dbg !2201
    #dbg_value(ptr %incdec.ptr23.us.i.7, !2071, !DIExpression(), !2168)
  %conv16.us.i.8 = zext i8 %23 to i32, !dbg !2190
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2193)
    #dbg_value(i32 %conv16.us.i.8, !2107, !DIExpression(), !2193)
  %sub.i.us.i.8 = sub nsw i32 24, %conv16.us.i.8, !dbg !2195
  %shr.i.us.i.8 = lshr i32 %and10.i, %sub.i.us.i.8, !dbg !2196
  %24 = load i8, ptr %incdec.ptr23.us.i.7, align 1, !dbg !2197
  %conv20.us.i.8 = zext i8 %24 to i32, !dbg !2197
  %cmp21.not.us.i.8 = icmp eq i32 %shr.i.us.i.8, %conv20.us.i.8, !dbg !2198
  br i1 %cmp21.not.us.i.8, label %if.end, label %if.then.us.i.8, !dbg !2199

if.then.us.i.8:                                   ; preds = %lor.lhs.false.us.i.8, %if.then.us.i.7
  %incdec.ptr.us.i.8 = getelementptr inbounds i8, ptr %len.068.us.i, i64 9, !dbg !2200
    #dbg_value(ptr %incdec.ptr.us.i.8, !2070, !DIExpression(), !2168)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 9, DW_OP_stack_value), !2168)
    #dbg_value(i32 9, !2068, !DIExpression(), !2168)
  %25 = load i8, ptr %incdec.ptr.us.i.8, align 1, !dbg !2190
  %cmp17.us.i.9 = icmp eq i8 %25, 0, !dbg !2191
  br i1 %cmp17.us.i.9, label %if.then.us.i.9, label %lor.lhs.false.us.i.9, !dbg !2192

lor.lhs.false.us.i.9:                             ; preds = %if.then.us.i.8
  %incdec.ptr23.us.i.8 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 9, !dbg !2201
    #dbg_value(ptr %incdec.ptr23.us.i.8, !2071, !DIExpression(), !2168)
  %conv16.us.i.9 = zext i8 %25 to i32, !dbg !2190
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2193)
    #dbg_value(i32 %conv16.us.i.9, !2107, !DIExpression(), !2193)
  %sub.i.us.i.9 = sub nsw i32 24, %conv16.us.i.9, !dbg !2195
  %shr.i.us.i.9 = lshr i32 %and10.i, %sub.i.us.i.9, !dbg !2196
  %26 = load i8, ptr %incdec.ptr23.us.i.8, align 1, !dbg !2197
  %conv20.us.i.9 = zext i8 %26 to i32, !dbg !2197
  %cmp21.not.us.i.9 = icmp eq i32 %shr.i.us.i.9, %conv20.us.i.9, !dbg !2198
  br i1 %cmp21.not.us.i.9, label %if.end, label %if.then.us.i.9, !dbg !2199

if.then.us.i.9:                                   ; preds = %lor.lhs.false.us.i.9, %if.then.us.i.8
  %incdec.ptr.us.i.9 = getelementptr inbounds i8, ptr %len.068.us.i, i64 10, !dbg !2200
    #dbg_value(ptr %incdec.ptr.us.i.9, !2070, !DIExpression(), !2168)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 10, DW_OP_stack_value), !2168)
    #dbg_value(i32 10, !2068, !DIExpression(), !2168)
  %27 = load i8, ptr %incdec.ptr.us.i.9, align 1, !dbg !2190
  %cmp17.us.i.10 = icmp eq i8 %27, 0, !dbg !2191
  br i1 %cmp17.us.i.10, label %if.then.us.i.10, label %lor.lhs.false.us.i.10, !dbg !2192

lor.lhs.false.us.i.10:                            ; preds = %if.then.us.i.9
  %incdec.ptr23.us.i.9 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 10, !dbg !2201
    #dbg_value(ptr %incdec.ptr23.us.i.9, !2071, !DIExpression(), !2168)
  %conv16.us.i.10 = zext i8 %27 to i32, !dbg !2190
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2193)
    #dbg_value(i32 %conv16.us.i.10, !2107, !DIExpression(), !2193)
  %sub.i.us.i.10 = sub nsw i32 24, %conv16.us.i.10, !dbg !2195
  %shr.i.us.i.10 = lshr i32 %and10.i, %sub.i.us.i.10, !dbg !2196
  %28 = load i8, ptr %incdec.ptr23.us.i.9, align 1, !dbg !2197
  %conv20.us.i.10 = zext i8 %28 to i32, !dbg !2197
  %cmp21.not.us.i.10 = icmp eq i32 %shr.i.us.i.10, %conv20.us.i.10, !dbg !2198
  br i1 %cmp21.not.us.i.10, label %if.end, label %if.then.us.i.10, !dbg !2199

if.then.us.i.10:                                  ; preds = %lor.lhs.false.us.i.10, %if.then.us.i.9
  %incdec.ptr.us.i.10 = getelementptr inbounds i8, ptr %len.068.us.i, i64 11, !dbg !2200
    #dbg_value(ptr %incdec.ptr.us.i.10, !2070, !DIExpression(), !2168)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 11, DW_OP_stack_value), !2168)
    #dbg_value(i32 11, !2068, !DIExpression(), !2168)
  %29 = load i8, ptr %incdec.ptr.us.i.10, align 1, !dbg !2190
  %cmp17.us.i.11 = icmp eq i8 %29, 0, !dbg !2191
  br i1 %cmp17.us.i.11, label %if.then.us.i.11, label %lor.lhs.false.us.i.11, !dbg !2192

lor.lhs.false.us.i.11:                            ; preds = %if.then.us.i.10
  %incdec.ptr23.us.i.10 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 11, !dbg !2201
    #dbg_value(ptr %incdec.ptr23.us.i.10, !2071, !DIExpression(), !2168)
  %conv16.us.i.11 = zext i8 %29 to i32, !dbg !2190
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2193)
    #dbg_value(i32 %conv16.us.i.11, !2107, !DIExpression(), !2193)
  %sub.i.us.i.11 = sub nsw i32 24, %conv16.us.i.11, !dbg !2195
  %shr.i.us.i.11 = lshr i32 %and10.i, %sub.i.us.i.11, !dbg !2196
  %30 = load i8, ptr %incdec.ptr23.us.i.10, align 1, !dbg !2197
  %conv20.us.i.11 = zext i8 %30 to i32, !dbg !2197
  %cmp21.not.us.i.11 = icmp eq i32 %shr.i.us.i.11, %conv20.us.i.11, !dbg !2198
  br i1 %cmp21.not.us.i.11, label %if.end, label %if.then.us.i.11, !dbg !2199

if.then.us.i.11:                                  ; preds = %lor.lhs.false.us.i.11, %if.then.us.i.10
  %incdec.ptr.us.i.11 = getelementptr inbounds i8, ptr %len.068.us.i, i64 12, !dbg !2200
    #dbg_value(ptr %incdec.ptr.us.i.11, !2070, !DIExpression(), !2168)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !2168)
    #dbg_value(i32 12, !2068, !DIExpression(), !2168)
  %31 = load i8, ptr %incdec.ptr.us.i.11, align 1, !dbg !2190
  %cmp17.us.i.12 = icmp eq i8 %31, 0, !dbg !2191
  br i1 %cmp17.us.i.12, label %if.then.us.i.12, label %lor.lhs.false.us.i.12, !dbg !2192

lor.lhs.false.us.i.12:                            ; preds = %if.then.us.i.11
  %incdec.ptr23.us.i.11 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 12, !dbg !2201
    #dbg_value(ptr %incdec.ptr23.us.i.11, !2071, !DIExpression(), !2168)
  %conv16.us.i.12 = zext i8 %31 to i32, !dbg !2190
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2193)
    #dbg_value(i32 %conv16.us.i.12, !2107, !DIExpression(), !2193)
  %sub.i.us.i.12 = sub nsw i32 24, %conv16.us.i.12, !dbg !2195
  %shr.i.us.i.12 = lshr i32 %and10.i, %sub.i.us.i.12, !dbg !2196
  %32 = load i8, ptr %incdec.ptr23.us.i.11, align 1, !dbg !2197
  %conv20.us.i.12 = zext i8 %32 to i32, !dbg !2197
  %cmp21.not.us.i.12 = icmp eq i32 %shr.i.us.i.12, %conv20.us.i.12, !dbg !2198
  br i1 %cmp21.not.us.i.12, label %if.end, label %if.then.us.i.12, !dbg !2199

if.then.us.i.12:                                  ; preds = %lor.lhs.false.us.i.12, %if.then.us.i.11
  %incdec.ptr.us.i.12 = getelementptr inbounds i8, ptr %len.068.us.i, i64 13, !dbg !2200
    #dbg_value(ptr %incdec.ptr.us.i.12, !2070, !DIExpression(), !2168)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 13, DW_OP_stack_value), !2168)
    #dbg_value(i32 13, !2068, !DIExpression(), !2168)
  %33 = load i8, ptr %incdec.ptr.us.i.12, align 1, !dbg !2190
  %cmp17.us.i.13 = icmp eq i8 %33, 0, !dbg !2191
  br i1 %cmp17.us.i.13, label %if.then.us.i.13, label %lor.lhs.false.us.i.13, !dbg !2192

lor.lhs.false.us.i.13:                            ; preds = %if.then.us.i.12
  %incdec.ptr23.us.i.12 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 13, !dbg !2201
    #dbg_value(ptr %incdec.ptr23.us.i.12, !2071, !DIExpression(), !2168)
  %conv16.us.i.13 = zext i8 %33 to i32, !dbg !2190
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2193)
    #dbg_value(i32 %conv16.us.i.13, !2107, !DIExpression(), !2193)
  %sub.i.us.i.13 = sub nsw i32 24, %conv16.us.i.13, !dbg !2195
  %shr.i.us.i.13 = lshr i32 %and10.i, %sub.i.us.i.13, !dbg !2196
  %34 = load i8, ptr %incdec.ptr23.us.i.12, align 1, !dbg !2197
  %conv20.us.i.13 = zext i8 %34 to i32, !dbg !2197
  %cmp21.not.us.i.13 = icmp eq i32 %shr.i.us.i.13, %conv20.us.i.13, !dbg !2198
  br i1 %cmp21.not.us.i.13, label %if.end, label %if.then.us.i.13, !dbg !2199

if.then.us.i.13:                                  ; preds = %lor.lhs.false.us.i.13, %if.then.us.i.12
  %incdec.ptr.us.i.13 = getelementptr inbounds i8, ptr %len.068.us.i, i64 14, !dbg !2200
    #dbg_value(ptr %incdec.ptr.us.i.13, !2070, !DIExpression(), !2168)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 14, DW_OP_stack_value), !2168)
    #dbg_value(i32 14, !2068, !DIExpression(), !2168)
  %35 = load i8, ptr %incdec.ptr.us.i.13, align 1, !dbg !2190
  %cmp17.us.i.14 = icmp eq i8 %35, 0, !dbg !2191
  br i1 %cmp17.us.i.14, label %if.then.us.i.14, label %lor.lhs.false.us.i.14, !dbg !2192

lor.lhs.false.us.i.14:                            ; preds = %if.then.us.i.13
  %incdec.ptr23.us.i.13 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 14, !dbg !2201
    #dbg_value(ptr %incdec.ptr23.us.i.13, !2071, !DIExpression(), !2168)
  %conv16.us.i.14 = zext i8 %35 to i32, !dbg !2190
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2193)
    #dbg_value(i32 %conv16.us.i.14, !2107, !DIExpression(), !2193)
  %sub.i.us.i.14 = sub nsw i32 24, %conv16.us.i.14, !dbg !2195
  %shr.i.us.i.14 = lshr i32 %and10.i, %sub.i.us.i.14, !dbg !2196
  %36 = load i8, ptr %incdec.ptr23.us.i.13, align 1, !dbg !2197
  %conv20.us.i.14 = zext i8 %36 to i32, !dbg !2197
  %cmp21.not.us.i.14 = icmp eq i32 %shr.i.us.i.14, %conv20.us.i.14, !dbg !2198
  br i1 %cmp21.not.us.i.14, label %if.end, label %if.then.us.i.14, !dbg !2199

if.then.us.i.14:                                  ; preds = %lor.lhs.false.us.i.14, %if.then.us.i.13
  %incdec.ptr.us.i.14 = getelementptr inbounds i8, ptr %len.068.us.i, i64 15, !dbg !2200
    #dbg_value(ptr %incdec.ptr.us.i.14, !2070, !DIExpression(), !2168)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 15, DW_OP_stack_value), !2168)
    #dbg_value(i32 15, !2068, !DIExpression(), !2168)
  %37 = load i8, ptr %incdec.ptr.us.i.14, align 1, !dbg !2190
  %cmp17.us.i.15 = icmp eq i8 %37, 0, !dbg !2191
  br i1 %cmp17.us.i.15, label %if.then.us.i.15, label %lor.lhs.false.us.i.15, !dbg !2192

lor.lhs.false.us.i.15:                            ; preds = %if.then.us.i.14
  %incdec.ptr23.us.i.14 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 15, !dbg !2201
    #dbg_value(ptr %incdec.ptr23.us.i.14, !2071, !DIExpression(), !2168)
  %conv16.us.i.15 = zext i8 %37 to i32, !dbg !2190
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2193)
    #dbg_value(i32 %conv16.us.i.15, !2107, !DIExpression(), !2193)
  %sub.i.us.i.15 = sub nsw i32 24, %conv16.us.i.15, !dbg !2195
  %shr.i.us.i.15 = lshr i32 %and10.i, %sub.i.us.i.15, !dbg !2196
  %38 = load i8, ptr %incdec.ptr23.us.i.14, align 1, !dbg !2197
  %conv20.us.i.15 = zext i8 %38 to i32, !dbg !2197
  %cmp21.not.us.i.15 = icmp eq i32 %shr.i.us.i.15, %conv20.us.i.15, !dbg !2198
  br i1 %cmp21.not.us.i.15, label %if.end, label %if.then.us.i.15, !dbg !2199

if.then.us.i.15:                                  ; preds = %lor.lhs.false.us.i.15, %if.then.us.i.14
  %incdec.ptr.us.i.15 = getelementptr inbounds i8, ptr %len.068.us.i, i64 16, !dbg !2200
    #dbg_value(ptr %incdec.ptr.us.i.15, !2070, !DIExpression(), !2168)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !2168)
    #dbg_value(i32 16, !2068, !DIExpression(), !2168)
  %39 = load i8, ptr %incdec.ptr.us.i.15, align 1, !dbg !2190
  %cmp17.us.i.16 = icmp eq i8 %39, 0, !dbg !2191
  br i1 %cmp17.us.i.16, label %if.then.us.i.16, label %lor.lhs.false.us.i.16, !dbg !2192

lor.lhs.false.us.i.16:                            ; preds = %if.then.us.i.15
  %incdec.ptr23.us.i.15 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 16, !dbg !2201
    #dbg_value(ptr %incdec.ptr23.us.i.15, !2071, !DIExpression(), !2168)
  %conv16.us.i.16 = zext i8 %39 to i32, !dbg !2190
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2193)
    #dbg_value(i32 %conv16.us.i.16, !2107, !DIExpression(), !2193)
  %sub.i.us.i.16 = sub nsw i32 24, %conv16.us.i.16, !dbg !2195
  %shr.i.us.i.16 = lshr i32 %and10.i, %sub.i.us.i.16, !dbg !2196
  %40 = load i8, ptr %incdec.ptr23.us.i.15, align 1, !dbg !2197
  %conv20.us.i.16 = zext i8 %40 to i32, !dbg !2197
  %cmp21.not.us.i.16 = icmp eq i32 %shr.i.us.i.16, %conv20.us.i.16, !dbg !2198
  br i1 %cmp21.not.us.i.16, label %if.end, label %if.then.us.i.16, !dbg !2199

if.then.us.i.16:                                  ; preds = %lor.lhs.false.us.i.16, %if.then.us.i.15
    #dbg_value(ptr %incdec.ptr.us.i.15, !2070, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2168)
    #dbg_value(ptr %cod.069.us.i, !2071, !DIExpression(DW_OP_plus_uconst, 17, DW_OP_stack_value), !2168)
    #dbg_value(i32 17, !2068, !DIExpression(), !2168)
  %inc30.us.i = add nuw nsw i32 %j.067.us.i, 1, !dbg !2202
    #dbg_value(ptr poison, !2071, !DIExpression(), !2168)
    #dbg_value(ptr poison, !2070, !DIExpression(), !2168)
    #dbg_value(i32 %inc30.us.i, !2069, !DIExpression(), !2168)
  %exitcond80.not.i = icmp eq i32 %inc30.us.i, 4, !dbg !2203
  br i1 %exitcond80.not.i, label %if.then, label %for.cond12.preheader.us.i, !dbg !2188, !llvm.loop !2204

if.then:                                          ; preds = %if.then.us.i.16
    #dbg_value(i32 -1, !1133, !DIExpression(), !2162)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6), !dbg !2206
  tail call void @exit(i32 noundef -1) #14, !dbg !2209
  unreachable, !dbg !2209

if.end:                                           ; preds = %lor.lhs.false.us.i.16, %lor.lhs.false.us.i.15, %lor.lhs.false.us.i.14, %lor.lhs.false.us.i.13, %lor.lhs.false.us.i.12, %lor.lhs.false.us.i.11, %lor.lhs.false.us.i.10, %lor.lhs.false.us.i.9, %lor.lhs.false.us.i.8, %lor.lhs.false.us.i.7, %lor.lhs.false.us.i.6, %lor.lhs.false.us.i.5, %lor.lhs.false.us.i.4, %lor.lhs.false.us.i.3, %lor.lhs.false.us.i.2, %lor.lhs.false.us.i.1, %lor.lhs.false.us.i
  %i.064.us.i.lcssa = phi i32 [ 0, %lor.lhs.false.us.i ], [ 1, %lor.lhs.false.us.i.1 ], [ 2, %lor.lhs.false.us.i.2 ], [ 3, %lor.lhs.false.us.i.3 ], [ 4, %lor.lhs.false.us.i.4 ], [ 5, %lor.lhs.false.us.i.5 ], [ 6, %lor.lhs.false.us.i.6 ], [ 7, %lor.lhs.false.us.i.7 ], [ 8, %lor.lhs.false.us.i.8 ], [ 9, %lor.lhs.false.us.i.9 ], [ 10, %lor.lhs.false.us.i.10 ], [ 11, %lor.lhs.false.us.i.11 ], [ 12, %lor.lhs.false.us.i.12 ], [ 13, %lor.lhs.false.us.i.13 ], [ 14, %lor.lhs.false.us.i.14 ], [ 15, %lor.lhs.false.us.i.15 ], [ 16, %lor.lhs.false.us.i.16 ]
  %conv16.us.i.lcssa = phi i32 [ %conv16.us.i, %lor.lhs.false.us.i ], [ %conv16.us.i.1, %lor.lhs.false.us.i.1 ], [ %conv16.us.i.2, %lor.lhs.false.us.i.2 ], [ %conv16.us.i.3, %lor.lhs.false.us.i.3 ], [ %conv16.us.i.4, %lor.lhs.false.us.i.4 ], [ %conv16.us.i.5, %lor.lhs.false.us.i.5 ], [ %conv16.us.i.6, %lor.lhs.false.us.i.6 ], [ %conv16.us.i.7, %lor.lhs.false.us.i.7 ], [ %conv16.us.i.8, %lor.lhs.false.us.i.8 ], [ %conv16.us.i.9, %lor.lhs.false.us.i.9 ], [ %conv16.us.i.10, %lor.lhs.false.us.i.10 ], [ %conv16.us.i.11, %lor.lhs.false.us.i.11 ], [ %conv16.us.i.12, %lor.lhs.false.us.i.12 ], [ %conv16.us.i.13, %lor.lhs.false.us.i.13 ], [ %conv16.us.i.14, %lor.lhs.false.us.i.14 ], [ %conv16.us.i.15, %lor.lhs.false.us.i.15 ], [ %conv16.us.i.16, %lor.lhs.false.us.i.16 ], !dbg !2190
  %len25.i = getelementptr inbounds i8, ptr %sym, i64 12, !dbg !2210
  store i32 %conv16.us.i.lcssa, ptr %len25.i, align 4, !dbg !2211
  %41 = load i32, ptr %frame_bitoffset2.i, align 4, !dbg !2212
  %add27.i = add nsw i32 %41, %conv16.us.i.lcssa, !dbg !2212
  store i32 %add27.i, ptr %frame_bitoffset2.i, align 4, !dbg !2212
    #dbg_value(i8 %8, !1131, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2162)
  %value1.i = getelementptr inbounds i8, ptr %sym, i64 4, !dbg !2213
  store i32 %i.064.us.i.lcssa, ptr %value1.i, align 4, !dbg !2214
  %value2.i = getelementptr inbounds i8, ptr %sym, i64 8, !dbg !2215
  store i32 %j.067.us.i, ptr %value2.i, align 8, !dbg !2216
    #dbg_value(i32 0, !1133, !DIExpression(), !2162)
  ret i32 0, !dbg !2217
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @readSyntaxElement_Level_VLC0(ptr nocapture noundef writeonly %sym, ptr nocapture noundef %currStream) local_unnamed_addr #4 !dbg !2218 {
entry:
    #dbg_value(ptr %sym, !2220, !DIExpression(), !2236)
    #dbg_value(ptr %currStream, !2221, !DIExpression(), !2236)
  %frame_bitoffset1 = getelementptr inbounds i8, ptr %currStream, i64 8, !dbg !2237
  %0 = load i32, ptr %frame_bitoffset1, align 8, !dbg !2237
    #dbg_value(i32 %0, !2222, !DIExpression(), !2236)
  %bitstream_length = getelementptr inbounds i8, ptr %currStream, i64 12, !dbg !2238
  %1 = load i32, ptr %bitstream_length, align 4, !dbg !2238
    #dbg_value(i32 %1, !2223, !DIExpression(), !2236)
  %shl = shl i32 %1, 3, !dbg !2239
  %add = or disjoint i32 %shl, 7, !dbg !2240
    #dbg_value(i32 %add, !2224, !DIExpression(), !2236)
  %streamBuffer = getelementptr inbounds i8, ptr %currStream, i64 16, !dbg !2241
  %2 = load ptr, ptr %streamBuffer, align 8, !dbg !2241
    #dbg_value(ptr %2, !2225, !DIExpression(), !2236)
    #dbg_value(i32 1, !2226, !DIExpression(), !2236)
    #dbg_value(i32 0, !2227, !DIExpression(), !2236)
    #dbg_value(i32 0, !2228, !DIExpression(), !2236)
    #dbg_value(i32 1, !2229, !DIExpression(), !2236)
    #dbg_value(i32 %0, !2222, !DIExpression(), !2236)
  %inc127 = add nsw i32 %0, 1, !dbg !2242
  %cmp.i.not128 = icmp slt i32 %0, %add, !dbg !2243
  br i1 %cmp.i.not128, label %if.else.i.preheader, label %if.then, !dbg !2245

if.else.i.preheader:                              ; preds = %entry
  %3 = add i32 %shl, 8, !dbg !2246
  %4 = sub i32 %3, %0, !dbg !2246
  br label %if.else.i, !dbg !2246

if.else.i:                                        ; preds = %if.else.i.preheader, %while.body
  %inc131 = phi i32 [ %inc, %while.body ], [ %inc127, %if.else.i.preheader ]
  %frame_bitoffset.0130 = phi i32 [ %inc131, %while.body ], [ %0, %if.else.i.preheader ]
  %len.0129 = phi i32 [ %inc2, %while.body ], [ 1, %if.else.i.preheader ]
    #dbg_value(i32 %frame_bitoffset.0130, !2222, !DIExpression(), !2236)
    #dbg_value(i32 %len.0129, !2226, !DIExpression(), !2236)
    #dbg_value(i32 %frame_bitoffset.0130, !2014, !DIExpression(DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value), !2247)
    #dbg_value(!DIArgList(ptr %2, i32 %frame_bitoffset.0130), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2247)
    #dbg_value(i32 0, !2016, !DIExpression(), !2247)
    #dbg_value(i32 %frame_bitoffset.0130, !2011, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !2247)
    #dbg_value(i32 1, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2248)
  %shr.i = ashr i32 %frame_bitoffset.0130, 3, !dbg !2249
    #dbg_value(!DIArgList(ptr %2, i32 %shr.i), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2247)
    #dbg_value(i32 %shr.i, !2014, !DIExpression(), !2247)
  %idxprom.i = sext i32 %shr.i to i64, !dbg !2250
    #dbg_value(!DIArgList(ptr %2, i64 %idxprom.i), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2247)
  %arrayidx.i = getelementptr inbounds i8, ptr %2, i64 %idxprom.i, !dbg !2250
    #dbg_value(ptr %arrayidx.i, !2015, !DIExpression(), !2247)
  %and.i = and i32 %frame_bitoffset.0130, 7, !dbg !2251
    #dbg_value(i32 %and.i, !2011, !DIExpression(DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !2247)
  %sub.i = xor i32 %and.i, 7, !dbg !2252
    #dbg_value(i32 %sub.i, !2011, !DIExpression(), !2247)
    #dbg_value(i32 0, !2010, !DIExpression(), !2248)
  %5 = load i8, ptr %arrayidx.i, align 1, !dbg !2253
  %conv.i = zext i8 %5 to i32, !dbg !2254
    #dbg_value(!DIArgList(i32 %conv.i, i32 %sub.i), !2016, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !2247)
    #dbg_value(!DIArgList(ptr %arrayidx.i, i32 %sub.i), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2247)
    #dbg_value(i32 poison, !2011, !DIExpression(), !2247)
    #dbg_value(i32 0, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2248)
  %6 = shl nuw nsw i32 1, %sub.i, !dbg !2255
  %7 = and i32 %6, %conv.i, !dbg !2255
  %tobool.not = icmp eq i32 %7, 0, !dbg !2255
  br i1 %tobool.not, label %while.body, label %while.end, !dbg !2246

while.body:                                       ; preds = %if.else.i
  %inc2 = add nuw nsw i32 %len.0129, 1, !dbg !2256
    #dbg_value(i32 %inc131, !2222, !DIExpression(), !2236)
    #dbg_value(i32 %inc2, !2226, !DIExpression(), !2236)
  %inc = add i32 %inc131, 1, !dbg !2242
    #dbg_value(i32 %inc, !2222, !DIExpression(), !2236)
    #dbg_value(ptr %2, !2003, !DIExpression(), !2248)
    #dbg_value(i32 %inc131, !2008, !DIExpression(), !2248)
    #dbg_value(i32 %add, !2009, !DIExpression(), !2248)
    #dbg_value(i32 1, !2010, !DIExpression(), !2248)
  %exitcond.not = icmp eq i32 %inc, %3, !dbg !2243
  br i1 %exitcond.not, label %while.end, label %if.else.i, !dbg !2245, !llvm.loop !2257

while.end:                                        ; preds = %if.else.i, %while.body
  %len.0.lcssa = phi i32 [ %len.0129, %if.else.i ], [ %4, %while.body ], !dbg !2236
  %frame_bitoffset.0.lcssa = phi i32 [ %frame_bitoffset.0130, %if.else.i ], [ %add, %while.body ], !dbg !2236
  %inc.lcssa = phi i32 [ %inc131, %if.else.i ], [ %3, %while.body ], !dbg !2242
  %cmp = icmp ult i32 %len.0.lcssa, 15, !dbg !2258
  br i1 %cmp, label %if.then, label %if.else, !dbg !2259

if.then:                                          ; preds = %entry, %while.end
  %inc.lcssa142 = phi i32 [ %inc.lcssa, %while.end ], [ %inc127, %entry ]
  %len.0.lcssa141 = phi i32 [ %len.0.lcssa, %while.end ], [ 1, %entry ]
  %sub = add nsw i32 %len.0.lcssa141, -1, !dbg !2260
    #dbg_value(i32 %sub, !2227, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !2236)
  %shr = ashr i32 %sub, 1, !dbg !2262
  %add4 = add nsw i32 %shr, 1, !dbg !2263
    #dbg_value(i32 %add4, !2228, !DIExpression(), !2236)
  br label %if.end32, !dbg !2264

if.else:                                          ; preds = %while.end
  %cmp5 = icmp eq i32 %len.0.lcssa, 15, !dbg !2265
  br i1 %cmp5, label %if.then6, label %if.then17, !dbg !2266

if.then6:                                         ; preds = %if.else
    #dbg_value(i32 16, !2229, !DIExpression(), !2236)
    #dbg_value(ptr %2, !2003, !DIExpression(), !2267)
    #dbg_value(i32 %inc.lcssa, !2008, !DIExpression(), !2267)
    #dbg_value(i32 %add, !2009, !DIExpression(), !2267)
    #dbg_value(i32 4, !2010, !DIExpression(), !2267)
  %8 = or disjoint i32 %shl, 2, !dbg !2270
  %cmp.i72 = icmp sgt i32 %frame_bitoffset.0.lcssa, %8, !dbg !2270
  br i1 %cmp.i72, label %ShowBits.exit97, label %if.else.i73, !dbg !2271

if.else.i73:                                      ; preds = %if.then6
    #dbg_value(i32 %inc.lcssa, !2014, !DIExpression(DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value), !2272)
    #dbg_value(!DIArgList(ptr %2, i32 %inc.lcssa), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2272)
    #dbg_value(i32 0, !2016, !DIExpression(), !2272)
    #dbg_value(i32 %inc.lcssa, !2011, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !2272)
    #dbg_value(i32 4, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2267)
  %shr.i74 = ashr i32 %inc.lcssa, 3, !dbg !2273
    #dbg_value(!DIArgList(ptr %2, i32 %shr.i74), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2272)
    #dbg_value(i32 %shr.i74, !2014, !DIExpression(), !2272)
  %idxprom.i75 = sext i32 %shr.i74 to i64, !dbg !2274
    #dbg_value(!DIArgList(ptr %2, i64 %idxprom.i75), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2272)
  %arrayidx.i76 = getelementptr inbounds i8, ptr %2, i64 %idxprom.i75, !dbg !2274
    #dbg_value(ptr %arrayidx.i76, !2015, !DIExpression(), !2272)
  %and.i77 = and i32 %inc.lcssa, 7, !dbg !2275
    #dbg_value(i32 %and.i77, !2011, !DIExpression(DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !2272)
  %sub.i78 = xor i32 %and.i77, 7, !dbg !2276
    #dbg_value(i32 %sub.i78, !2011, !DIExpression(), !2272)
    #dbg_value(i32 3, !2010, !DIExpression(), !2267)
  %9 = load i8, ptr %arrayidx.i76, align 1, !dbg !2277
  %conv.i86 = zext i8 %9 to i32, !dbg !2278
  %dec1.i87 = sub nsw i32 6, %and.i77, !dbg !2279
    #dbg_value(i32 %dec1.i87, !2011, !DIExpression(), !2272)
  %shr2.i88 = lshr i32 %conv.i86, %sub.i78, !dbg !2280
    #dbg_value(i32 %shr2.i88, !2016, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !2272)
  %cmp4.i91 = icmp eq i32 %and.i77, 7, !dbg !2281
  %spec.select.i92 = select i1 %cmp4.i91, i32 7, i32 %dec1.i87, !dbg !2282
  %spec.select14.idx.i93 = zext i1 %cmp4.i91 to i64, !dbg !2282
  %spec.select14.i94 = getelementptr inbounds i8, ptr %arrayidx.i76, i64 %spec.select14.idx.i93, !dbg !2282
    #dbg_value(ptr %spec.select14.i94, !2015, !DIExpression(), !2272)
    #dbg_value(i32 %spec.select.i92, !2011, !DIExpression(), !2272)
    #dbg_value(i32 2, !2010, !DIExpression(), !2267)
  %and3.i89 = shl nuw nsw i32 %shr2.i88, 1, !dbg !2283
  %shl.i85.1 = and i32 %and3.i89, 2, !dbg !2283
    #dbg_value(i32 %shl.i85.1, !2016, !DIExpression(), !2272)
  %10 = load i8, ptr %spec.select14.i94, align 1, !dbg !2277
  %conv.i86.1 = zext i8 %10 to i32, !dbg !2278
  %dec1.i87.1 = add nsw i32 %spec.select.i92, -1, !dbg !2279
    #dbg_value(i32 %dec1.i87.1, !2011, !DIExpression(), !2272)
  %shr2.i88.1 = lshr i32 %conv.i86.1, %spec.select.i92, !dbg !2280
  %and3.i89.1 = and i32 %shr2.i88.1, 1, !dbg !2284
  %or.i90.1 = or disjoint i32 %and3.i89.1, %shl.i85.1, !dbg !2285
    #dbg_value(i32 %or.i90.1, !2016, !DIExpression(), !2272)
  %cmp4.i91.1 = icmp eq i32 %spec.select.i92, 0, !dbg !2281
  %spec.select.i92.1 = select i1 %cmp4.i91.1, i32 7, i32 %dec1.i87.1, !dbg !2282
  %spec.select14.idx.i93.1 = zext i1 %cmp4.i91.1 to i64, !dbg !2282
  %spec.select14.i94.1 = getelementptr inbounds i8, ptr %spec.select14.i94, i64 %spec.select14.idx.i93.1, !dbg !2282
    #dbg_value(ptr %spec.select14.i94.1, !2015, !DIExpression(), !2272)
    #dbg_value(i32 %spec.select.i92.1, !2011, !DIExpression(), !2272)
    #dbg_value(i32 1, !2010, !DIExpression(), !2267)
    #dbg_value(i32 %or.i90.1, !2016, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !2272)
  %11 = load i8, ptr %spec.select14.i94.1, align 1, !dbg !2277
  %conv.i86.2 = zext i8 %11 to i32, !dbg !2278
  %dec1.i87.2 = add nsw i32 %spec.select.i92.1, -1, !dbg !2279
    #dbg_value(i32 %dec1.i87.2, !2011, !DIExpression(), !2272)
  %shr2.i88.2 = lshr i32 %conv.i86.2, %spec.select.i92.1, !dbg !2280
    #dbg_value(!DIArgList(i32 %shr2.i88.2, i32 %or.i90.1), !2016, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !2272)
  %cmp4.i91.2 = icmp eq i32 %spec.select.i92.1, 0, !dbg !2281
  %spec.select.i92.2 = select i1 %cmp4.i91.2, i32 7, i32 %dec1.i87.2, !dbg !2282
  %spec.select14.idx.i93.2 = zext i1 %cmp4.i91.2 to i64, !dbg !2282
  %spec.select14.i94.2 = getelementptr inbounds i8, ptr %spec.select14.i94.1, i64 %spec.select14.idx.i93.2, !dbg !2282
    #dbg_value(ptr %spec.select14.i94.2, !2015, !DIExpression(), !2272)
    #dbg_value(i32 %spec.select.i92.2, !2011, !DIExpression(), !2272)
    #dbg_value(i32 0, !2010, !DIExpression(), !2267)
  %12 = shl nuw nsw i32 %or.i90.1, 2, !dbg !2283
  %and3.i89.2 = shl nuw nsw i32 %shr2.i88.2, 1, !dbg !2283
  %13 = and i32 %and3.i89.2, 2, !dbg !2283
  %shl.i85.3 = or disjoint i32 %12, %13, !dbg !2283
    #dbg_value(i32 %shl.i85.3, !2016, !DIExpression(), !2272)
  %14 = load i8, ptr %spec.select14.i94.2, align 1, !dbg !2277
  %conv.i86.3 = zext i8 %14 to i32, !dbg !2278
    #dbg_value(i32 %spec.select.i92.2, !2011, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2272)
  %shr2.i88.3 = lshr i32 %conv.i86.3, %spec.select.i92.2, !dbg !2280
  %and3.i89.3 = and i32 %shr2.i88.3, 1, !dbg !2284
  %or.i90.3 = or disjoint i32 %and3.i89.3, %shl.i85.3, !dbg !2285
    #dbg_value(i32 %or.i90.3, !2016, !DIExpression(), !2272)
    #dbg_value(!DIArgList(ptr %spec.select14.i94.2, i32 %spec.select.i92.2), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2272)
    #dbg_value(i32 poison, !2011, !DIExpression(), !2272)
    #dbg_value(i32 0, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2267)
  br label %ShowBits.exit97, !dbg !2286

ShowBits.exit97:                                  ; preds = %if.else.i73, %if.then6
  %retval.0.i96 = phi i32 [ -1, %if.then6 ], [ %or.i90.3, %if.else.i73 ], !dbg !2287
    #dbg_value(i32 %retval.0.i96, !2229, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !2236)
    #dbg_value(i32 19, !2226, !DIExpression(), !2236)
  %add10 = add nsw i32 %frame_bitoffset.0.lcssa, 5, !dbg !2286
    #dbg_value(i32 %add10, !2222, !DIExpression(), !2236)
    #dbg_value(i32 %retval.0.i96, !2227, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !2236)
  %or = lshr i32 %retval.0.i96, 1, !dbg !2288
  %and13 = and i32 %or, 7, !dbg !2289
  %add14 = or disjoint i32 %and13, 8, !dbg !2290
    #dbg_value(i32 %add14, !2228, !DIExpression(), !2236)
  br label %if.end32, !dbg !2291

if.then17:                                        ; preds = %if.else
  %sub18 = add nsw i32 %len.0.lcssa, -16, !dbg !2292
    #dbg_value(i32 %sub18, !2230, !DIExpression(), !2293)
  %shl19 = shl i32 2048, %sub18, !dbg !2294
  %sub20 = add nsw i32 %shl19, -2032, !dbg !2295
    #dbg_value(i32 %sub20, !2235, !DIExpression(), !2293)
  %sub21 = add nsw i32 %len.0.lcssa, -4, !dbg !2296
    #dbg_value(i32 %len.0.lcssa, !2226, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value), !2236)
    #dbg_value(ptr %2, !2003, !DIExpression(), !2297)
    #dbg_value(i32 %inc.lcssa, !2008, !DIExpression(), !2297)
    #dbg_value(i32 %add, !2009, !DIExpression(), !2297)
    #dbg_value(i32 %len.0.lcssa, !2010, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value), !2297)
  %add.i98 = add nsw i32 %inc.lcssa, %sub21, !dbg !2299
  %cmp.i99 = icmp sgt i32 %add.i98, %add, !dbg !2300
  br i1 %cmp.i99, label %ShowBits.exit124, label %while.body.preheader.i, !dbg !2301

while.body.preheader.i:                           ; preds = %if.then17
    #dbg_value(i32 %inc.lcssa, !2014, !DIExpression(DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value), !2302)
    #dbg_value(!DIArgList(ptr %2, i32 %inc.lcssa), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2302)
    #dbg_value(i32 0, !2016, !DIExpression(), !2302)
    #dbg_value(i32 %inc.lcssa, !2011, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !2302)
    #dbg_value(i32 %len.0.lcssa, !2010, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2297)
    #dbg_value(!DIArgList(ptr %2, i32 %inc.lcssa), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2302)
    #dbg_value(i32 %inc.lcssa, !2014, !DIExpression(DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value), !2302)
    #dbg_value(!DIArgList(ptr %2, i32 %inc.lcssa), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2302)
    #dbg_value(!DIArgList(ptr %2, i32 %inc.lcssa), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2302)
    #dbg_value(i32 %inc.lcssa, !2011, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !2302)
    #dbg_value(i32 %inc.lcssa, !2011, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !2302)
  %xtraiter = and i32 %len.0.lcssa, 1, !dbg !2303
  %and.i104 = and i32 %inc.lcssa, 7, !dbg !2304
    #dbg_value(i32 %and.i104, !2011, !DIExpression(DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !2302)
  %sub.i105 = xor i32 %and.i104, 7, !dbg !2305
    #dbg_value(i32 %sub.i105, !2011, !DIExpression(), !2302)
  %shr.i101 = ashr i32 %inc.lcssa, 3, !dbg !2306
    #dbg_value(!DIArgList(ptr %2, i32 %shr.i101), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2302)
    #dbg_value(i32 %shr.i101, !2014, !DIExpression(), !2302)
  %idxprom.i102 = sext i32 %shr.i101 to i64, !dbg !2307
    #dbg_value(!DIArgList(ptr %2, i64 %idxprom.i102), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2302)
  %arrayidx.i103 = getelementptr inbounds i8, ptr %2, i64 %idxprom.i102, !dbg !2307
    #dbg_value(ptr %arrayidx.i103, !2015, !DIExpression(), !2302)
  %unroll_iter = and i32 %sub21, -2, !dbg !2303
  br label %while.body.i106, !dbg !2303

while.body.i106:                                  ; preds = %while.body.i106, %while.body.preheader.i
  %inf.019.i107 = phi i32 [ 0, %while.body.preheader.i ], [ %or.i117.1, %while.body.i106 ]
  %curbyte.018.i108 = phi ptr [ %arrayidx.i103, %while.body.preheader.i ], [ %spec.select14.i121.1, %while.body.i106 ]
  %bitoffset.017.i109 = phi i32 [ %sub.i105, %while.body.preheader.i ], [ %spec.select.i119.1, %while.body.i106 ]
  %niter = phi i32 [ 0, %while.body.preheader.i ], [ %niter.next.1, %while.body.i106 ]
    #dbg_value(i32 %inf.019.i107, !2016, !DIExpression(), !2302)
    #dbg_value(ptr %curbyte.018.i108, !2015, !DIExpression(), !2302)
    #dbg_value(i32 %bitoffset.017.i109, !2011, !DIExpression(), !2302)
    #dbg_value(i32 poison, !2010, !DIExpression(), !2297)
    #dbg_value(i32 poison, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2297)
    #dbg_value(i32 %inf.019.i107, !2016, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !2302)
  %15 = load i8, ptr %curbyte.018.i108, align 1, !dbg !2308
  %conv.i113 = zext i8 %15 to i32, !dbg !2309
  %dec1.i114 = add nsw i32 %bitoffset.017.i109, -1, !dbg !2310
    #dbg_value(i32 %dec1.i114, !2011, !DIExpression(), !2302)
  %shr2.i115 = lshr i32 %conv.i113, %bitoffset.017.i109, !dbg !2311
    #dbg_value(!DIArgList(i32 %shr2.i115, i32 %inf.019.i107), !2016, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !2302)
  %cmp4.i118 = icmp eq i32 %bitoffset.017.i109, 0, !dbg !2312
  %spec.select.i119 = select i1 %cmp4.i118, i32 7, i32 %dec1.i114, !dbg !2313
  %spec.select14.idx.i120 = zext i1 %cmp4.i118 to i64, !dbg !2313
  %spec.select14.i121 = getelementptr inbounds i8, ptr %curbyte.018.i108, i64 %spec.select14.idx.i120, !dbg !2313
    #dbg_value(ptr %spec.select14.i121, !2015, !DIExpression(), !2302)
    #dbg_value(i32 %spec.select.i119, !2011, !DIExpression(), !2302)
    #dbg_value(i32 poison, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2297)
    #dbg_value(i32 poison, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2297)
    #dbg_value(i32 poison, !2010, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !2297)
  %16 = shl i32 %inf.019.i107, 2, !dbg !2314
  %and3.i116 = shl nuw nsw i32 %shr2.i115, 1, !dbg !2314
  %17 = and i32 %and3.i116, 2, !dbg !2314
  %shl.i112.1 = or disjoint i32 %16, %17, !dbg !2314
    #dbg_value(i32 %shl.i112.1, !2016, !DIExpression(), !2302)
  %18 = load i8, ptr %spec.select14.i121, align 1, !dbg !2308
  %conv.i113.1 = zext i8 %18 to i32, !dbg !2309
  %dec1.i114.1 = add nsw i32 %spec.select.i119, -1, !dbg !2310
    #dbg_value(i32 %dec1.i114.1, !2011, !DIExpression(), !2302)
  %shr2.i115.1 = lshr i32 %conv.i113.1, %spec.select.i119, !dbg !2311
  %and3.i116.1 = and i32 %shr2.i115.1, 1, !dbg !2315
  %or.i117.1 = or disjoint i32 %and3.i116.1, %shl.i112.1, !dbg !2316
    #dbg_value(i32 %or.i117.1, !2016, !DIExpression(), !2302)
  %cmp4.i118.1 = icmp eq i32 %spec.select.i119, 0, !dbg !2312
  %spec.select.i119.1 = select i1 %cmp4.i118.1, i32 7, i32 %dec1.i114.1, !dbg !2313
  %spec.select14.idx.i120.1 = zext i1 %cmp4.i118.1 to i64, !dbg !2313
  %spec.select14.i121.1 = getelementptr inbounds i8, ptr %spec.select14.i121, i64 %spec.select14.idx.i120.1, !dbg !2313
    #dbg_value(ptr %spec.select14.i121.1, !2015, !DIExpression(), !2302)
    #dbg_value(i32 %spec.select.i119.1, !2011, !DIExpression(), !2302)
    #dbg_value(i32 poison, !2010, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2297)
  %niter.next.1 = add i32 %niter, 2, !dbg !2303
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter, !dbg !2303
  br i1 %niter.ncmp.1, label %ShowBits.exit124.loopexit.unr-lcssa, label %while.body.i106, !dbg !2303, !llvm.loop !2317

ShowBits.exit124.loopexit.unr-lcssa:              ; preds = %while.body.i106
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !2303
  br i1 %lcmp.mod.not, label %ShowBits.exit124, label %while.body.i106.epil, !dbg !2303

while.body.i106.epil:                             ; preds = %ShowBits.exit124.loopexit.unr-lcssa
    #dbg_value(i32 %or.i117.1, !2016, !DIExpression(), !2302)
    #dbg_value(ptr %spec.select14.i121.1, !2015, !DIExpression(), !2302)
    #dbg_value(i32 %spec.select.i119.1, !2011, !DIExpression(), !2302)
    #dbg_value(i32 poison, !2010, !DIExpression(), !2297)
    #dbg_value(i32 poison, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2297)
  %shl.i112.epil = shl i32 %or.i117.1, 1, !dbg !2314
    #dbg_value(i32 %shl.i112.epil, !2016, !DIExpression(), !2302)
  %19 = load i8, ptr %spec.select14.i121.1, align 1, !dbg !2308
  %conv.i113.epil = zext i8 %19 to i32, !dbg !2309
    #dbg_value(i32 %spec.select.i119.1, !2011, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2302)
  %shr2.i115.epil = lshr i32 %conv.i113.epil, %spec.select.i119.1, !dbg !2311
  %and3.i116.epil = and i32 %shr2.i115.epil, 1, !dbg !2315
  %or.i117.epil = or disjoint i32 %and3.i116.epil, %shl.i112.epil, !dbg !2316
    #dbg_value(i32 %or.i117.epil, !2016, !DIExpression(), !2302)
    #dbg_value(!DIArgList(ptr %spec.select14.i121.1, i32 %spec.select.i119.1), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2302)
    #dbg_value(i32 poison, !2011, !DIExpression(), !2302)
    #dbg_value(i32 poison, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2297)
  br label %ShowBits.exit124, !dbg !2319

ShowBits.exit124:                                 ; preds = %while.body.i106.epil, %ShowBits.exit124.loopexit.unr-lcssa, %if.then17
  %retval.0.i123 = phi i32 [ -1, %if.then17 ], [ %or.i117.1, %ShowBits.exit124.loopexit.unr-lcssa ], [ %or.i117.epil, %while.body.i106.epil ], !dbg !2320
    #dbg_value(i32 %retval.0.i123, !2229, !DIExpression(), !2236)
    #dbg_value(i32 %retval.0.i123, !2227, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !2236)
    #dbg_value(i32 %add.i98, !2222, !DIExpression(), !2236)
  %shr25 = ashr i32 %retval.0.i123, 1, !dbg !2319
  %add26 = add nsw i32 %sub20, %shr25, !dbg !2321
    #dbg_value(i32 %add26, !2228, !DIExpression(), !2236)
    #dbg_value(!DIArgList(i32 %retval.0.i123, i32 1, i32 %len.0.lcssa), !2229, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 4, DW_OP_minus, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !2236)
  %add30 = add nuw nsw i32 %sub21, %len.0.lcssa, !dbg !2322
    #dbg_value(i32 %add30, !2226, !DIExpression(), !2236)
  br label %if.end32, !dbg !2323

if.end32:                                         ; preds = %ShowBits.exit97, %ShowBits.exit124, %if.then
  %sign.0.in = phi i32 [ %sub, %if.then ], [ %retval.0.i96, %ShowBits.exit97 ], [ %retval.0.i123, %ShowBits.exit124 ]
  %level.0 = phi i32 [ %add4, %if.then ], [ %add14, %ShowBits.exit97 ], [ %add26, %ShowBits.exit124 ], !dbg !2236
  %len.1 = phi i32 [ %len.0.lcssa141, %if.then ], [ 19, %ShowBits.exit97 ], [ %add30, %ShowBits.exit124 ], !dbg !2236
  %frame_bitoffset.1 = phi i32 [ %inc.lcssa142, %if.then ], [ %add10, %ShowBits.exit97 ], [ %add.i98, %ShowBits.exit124 ], !dbg !2236
  %sign.0 = and i32 %sign.0.in, 1, !dbg !2236
    #dbg_value(i32 %frame_bitoffset.1, !2222, !DIExpression(), !2236)
    #dbg_value(i32 %len.1, !2226, !DIExpression(), !2236)
    #dbg_value(i32 %level.0, !2228, !DIExpression(), !2236)
    #dbg_value(i32 %sign.0, !2227, !DIExpression(), !2236)
  %tobool33.not = icmp eq i32 %sign.0, 0, !dbg !2324
  %sub34 = sub nsw i32 0, %level.0, !dbg !2324
  %cond = select i1 %tobool33.not, i32 %level.0, i32 %sub34, !dbg !2324
  %inf = getelementptr inbounds i8, ptr %sym, i64 16, !dbg !2325
  store i32 %cond, ptr %inf, align 8, !dbg !2326
  %len35 = getelementptr inbounds i8, ptr %sym, i64 12, !dbg !2327
  store i32 %len.1, ptr %len35, align 4, !dbg !2328
  store i32 %frame_bitoffset.1, ptr %frame_bitoffset1, align 8, !dbg !2329
  ret i32 0, !dbg !2330
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @readSyntaxElement_Level_VLCN(ptr nocapture noundef writeonly %sym, i32 noundef %vlc, ptr nocapture noundef %currStream) local_unnamed_addr #4 !dbg !2331 {
entry:
    #dbg_value(ptr %sym, !2335, !DIExpression(), !2352)
    #dbg_value(i32 %vlc, !2336, !DIExpression(), !2352)
    #dbg_value(ptr %currStream, !2337, !DIExpression(), !2352)
  %frame_bitoffset1 = getelementptr inbounds i8, ptr %currStream, i64 8, !dbg !2353
  %0 = load i32, ptr %frame_bitoffset1, align 8, !dbg !2353
    #dbg_value(i32 %0, !2338, !DIExpression(), !2352)
  %bitstream_length = getelementptr inbounds i8, ptr %currStream, i64 12, !dbg !2354
  %1 = load i32, ptr %bitstream_length, align 4, !dbg !2354
    #dbg_value(i32 %1, !2339, !DIExpression(), !2352)
  %shl = shl i32 %1, 3, !dbg !2355
  %add = or disjoint i32 %shl, 7, !dbg !2356
    #dbg_value(i32 %add, !2340, !DIExpression(), !2352)
  %streamBuffer = getelementptr inbounds i8, ptr %currStream, i64 16, !dbg !2357
  %2 = load ptr, ptr %streamBuffer, align 8, !dbg !2357
    #dbg_value(ptr %2, !2341, !DIExpression(), !2352)
    #dbg_value(i32 1, !2344, !DIExpression(), !2352)
    #dbg_value(i32 1, !2345, !DIExpression(), !2352)
  %sub = add i32 %vlc, -1, !dbg !2358
    #dbg_value(i32 %sub, !2347, !DIExpression(), !2352)
    #dbg_value(i32 %0, !2338, !DIExpression(), !2352)
    #dbg_value(i32 1, !2344, !DIExpression(), !2352)
  %inc214 = add nsw i32 %0, 1, !dbg !2359
  %cmp.i.not215 = icmp slt i32 %0, %add, !dbg !2360
  br i1 %cmp.i.not215, label %if.else.i.preheader, label %if.then, !dbg !2362

if.else.i.preheader:                              ; preds = %entry
  %3 = add i32 %shl, 8, !dbg !2363
  %4 = sub i32 %3, %0, !dbg !2363
  br label %if.else.i, !dbg !2363

if.else.i:                                        ; preds = %if.else.i.preheader, %while.body
  %inc218 = phi i32 [ %inc, %while.body ], [ %inc214, %if.else.i.preheader ]
  %frame_bitoffset.0217 = phi i32 [ %inc218, %while.body ], [ %0, %if.else.i.preheader ]
  %len.0216 = phi i32 [ %inc2, %while.body ], [ 1, %if.else.i.preheader ]
    #dbg_value(i32 %frame_bitoffset.0217, !2338, !DIExpression(), !2352)
    #dbg_value(i32 %len.0216, !2344, !DIExpression(), !2352)
    #dbg_value(i32 %frame_bitoffset.0217, !2014, !DIExpression(DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value), !2364)
    #dbg_value(!DIArgList(ptr %2, i32 %frame_bitoffset.0217), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2364)
    #dbg_value(i32 0, !2016, !DIExpression(), !2364)
    #dbg_value(i32 %frame_bitoffset.0217, !2011, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !2364)
    #dbg_value(i32 1, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2365)
  %shr.i = ashr i32 %frame_bitoffset.0217, 3, !dbg !2366
    #dbg_value(!DIArgList(ptr %2, i32 %shr.i), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2364)
    #dbg_value(i32 %shr.i, !2014, !DIExpression(), !2364)
  %idxprom.i = sext i32 %shr.i to i64, !dbg !2367
    #dbg_value(!DIArgList(ptr %2, i64 %idxprom.i), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2364)
  %arrayidx.i = getelementptr inbounds i8, ptr %2, i64 %idxprom.i, !dbg !2367
    #dbg_value(ptr %arrayidx.i, !2015, !DIExpression(), !2364)
  %and.i = and i32 %frame_bitoffset.0217, 7, !dbg !2368
    #dbg_value(i32 %and.i, !2011, !DIExpression(DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !2364)
  %sub.i = xor i32 %and.i, 7, !dbg !2369
    #dbg_value(i32 %sub.i, !2011, !DIExpression(), !2364)
    #dbg_value(i32 0, !2010, !DIExpression(), !2365)
  %5 = load i8, ptr %arrayidx.i, align 1, !dbg !2370
  %conv.i = zext i8 %5 to i32, !dbg !2371
    #dbg_value(!DIArgList(i32 %conv.i, i32 %sub.i), !2016, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !2364)
    #dbg_value(!DIArgList(ptr %arrayidx.i, i32 %sub.i), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2364)
    #dbg_value(i32 poison, !2011, !DIExpression(), !2364)
    #dbg_value(i32 0, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2365)
  %6 = shl nuw nsw i32 1, %sub.i, !dbg !2372
  %7 = and i32 %6, %conv.i, !dbg !2372
  %tobool.not = icmp eq i32 %7, 0, !dbg !2372
  br i1 %tobool.not, label %while.body, label %while.end, !dbg !2363

while.body:                                       ; preds = %if.else.i
  %inc2 = add nuw nsw i32 %len.0216, 1, !dbg !2373
    #dbg_value(i32 %inc218, !2338, !DIExpression(), !2352)
    #dbg_value(i32 %inc2, !2344, !DIExpression(), !2352)
  %inc = add i32 %inc218, 1, !dbg !2359
    #dbg_value(i32 %inc, !2338, !DIExpression(), !2352)
    #dbg_value(ptr %2, !2003, !DIExpression(), !2365)
    #dbg_value(i32 %inc218, !2008, !DIExpression(), !2365)
    #dbg_value(i32 %add, !2009, !DIExpression(), !2365)
    #dbg_value(i32 1, !2010, !DIExpression(), !2365)
  %exitcond.not = icmp eq i32 %inc, %3, !dbg !2360
  br i1 %exitcond.not, label %while.end, label %if.else.i, !dbg !2362, !llvm.loop !2374

while.end:                                        ; preds = %if.else.i, %while.body
  %len.0.lcssa = phi i32 [ %len.0216, %if.else.i ], [ %4, %while.body ], !dbg !2352
  %frame_bitoffset.0.lcssa = phi i32 [ %frame_bitoffset.0217, %if.else.i ], [ %add, %while.body ], !dbg !2352
  %inc.lcssa = phi i32 [ %inc218, %if.else.i ], [ %3, %while.body ], !dbg !2359
  %sub3 = sub nsw i32 %inc.lcssa, %len.0.lcssa, !dbg !2375
    #dbg_value(i32 %sub3, !2338, !DIExpression(), !2352)
  %cmp = icmp ult i32 %len.0.lcssa, 16, !dbg !2376
  br i1 %cmp, label %if.then, label %if.else, !dbg !2377

if.then:                                          ; preds = %entry, %while.end
  %sub3233 = phi i32 [ %sub3, %while.end ], [ %0, %entry ]
  %inc.lcssa232 = phi i32 [ %inc.lcssa, %while.end ], [ %inc214, %entry ]
  %frame_bitoffset.0.lcssa231 = phi i32 [ %frame_bitoffset.0.lcssa, %while.end ], [ %0, %entry ]
  %len.0.lcssa230 = phi i32 [ %len.0.lcssa, %while.end ], [ 1, %entry ]
  %sub4 = add nsw i32 %len.0.lcssa230, -1, !dbg !2378
  %shl5 = shl i32 %sub4, %sub, !dbg !2380
  %add6 = add nsw i32 %shl5, 1, !dbg !2381
    #dbg_value(i32 %add6, !2342, !DIExpression(), !2352)
  %tobool7.not = icmp eq i32 %sub, 0, !dbg !2382
  br i1 %tobool7.not, label %if.end, label %if.then8, !dbg !2384

if.then8:                                         ; preds = %if.then
    #dbg_value(ptr %2, !2003, !DIExpression(), !2385)
    #dbg_value(i32 %inc.lcssa232, !2008, !DIExpression(), !2385)
    #dbg_value(i32 %add, !2009, !DIExpression(), !2385)
    #dbg_value(i32 %sub, !2010, !DIExpression(), !2385)
  %add.i91 = add i32 %frame_bitoffset.0.lcssa231, %vlc, !dbg !2388
  %cmp.i92 = icmp sgt i32 %add.i91, %add, !dbg !2389
  br i1 %cmp.i92, label %ShowBits.exit117, label %while.body.preheader.i, !dbg !2390

while.body.preheader.i:                           ; preds = %if.then8
    #dbg_value(i32 %inc.lcssa232, !2014, !DIExpression(DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value), !2391)
    #dbg_value(!DIArgList(ptr %2, i32 %inc.lcssa232), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2391)
    #dbg_value(i32 0, !2016, !DIExpression(), !2391)
    #dbg_value(i32 %inc.lcssa232, !2011, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !2391)
    #dbg_value(i32 %sub, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2385)
  %shr.i94 = ashr i32 %inc.lcssa232, 3, !dbg !2392
    #dbg_value(!DIArgList(ptr %2, i32 %shr.i94), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2391)
    #dbg_value(i32 %shr.i94, !2014, !DIExpression(), !2391)
  %idxprom.i95 = sext i32 %shr.i94 to i64, !dbg !2393
    #dbg_value(!DIArgList(ptr %2, i64 %idxprom.i95), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2391)
  %arrayidx.i96 = getelementptr inbounds i8, ptr %2, i64 %idxprom.i95, !dbg !2393
    #dbg_value(ptr %arrayidx.i96, !2015, !DIExpression(), !2391)
  %and.i97 = and i32 %inc.lcssa232, 7, !dbg !2394
    #dbg_value(i32 %and.i97, !2011, !DIExpression(DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !2391)
  %sub.i98 = xor i32 %and.i97, 7, !dbg !2395
    #dbg_value(i32 %sub.i98, !2011, !DIExpression(), !2391)
  %xtraiter239 = and i32 %sub, 1, !dbg !2396
  %8 = icmp eq i32 %vlc, 2, !dbg !2396
  br i1 %8, label %ShowBits.exit117.loopexit.unr-lcssa, label %while.body.preheader.i.new, !dbg !2396

while.body.preheader.i.new:                       ; preds = %while.body.preheader.i
  %unroll_iter242 = and i32 %sub, -2, !dbg !2396
  br label %while.body.i99, !dbg !2396

while.body.i99:                                   ; preds = %while.body.i99, %while.body.preheader.i.new
  %inf.019.i100 = phi i32 [ 0, %while.body.preheader.i.new ], [ %or.i110.1, %while.body.i99 ]
  %curbyte.018.i101 = phi ptr [ %arrayidx.i96, %while.body.preheader.i.new ], [ %spec.select14.i114.1, %while.body.i99 ]
  %bitoffset.017.i102 = phi i32 [ %sub.i98, %while.body.preheader.i.new ], [ %spec.select.i112.1, %while.body.i99 ]
  %niter243 = phi i32 [ 0, %while.body.preheader.i.new ], [ %niter243.next.1, %while.body.i99 ]
    #dbg_value(i32 %inf.019.i100, !2016, !DIExpression(), !2391)
    #dbg_value(ptr %curbyte.018.i101, !2015, !DIExpression(), !2391)
    #dbg_value(i32 %bitoffset.017.i102, !2011, !DIExpression(), !2391)
    #dbg_value(i32 poison, !2010, !DIExpression(), !2385)
    #dbg_value(i32 poison, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2385)
    #dbg_value(i32 %inf.019.i100, !2016, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !2391)
  %9 = load i8, ptr %curbyte.018.i101, align 1, !dbg !2397
  %conv.i106 = zext i8 %9 to i32, !dbg !2398
  %dec1.i107 = add nsw i32 %bitoffset.017.i102, -1, !dbg !2399
    #dbg_value(i32 %dec1.i107, !2011, !DIExpression(), !2391)
  %shr2.i108 = lshr i32 %conv.i106, %bitoffset.017.i102, !dbg !2400
    #dbg_value(!DIArgList(i32 %shr2.i108, i32 %inf.019.i100), !2016, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !2391)
  %cmp4.i111 = icmp eq i32 %bitoffset.017.i102, 0, !dbg !2401
  %spec.select.i112 = select i1 %cmp4.i111, i32 7, i32 %dec1.i107, !dbg !2402
  %spec.select14.idx.i113 = zext i1 %cmp4.i111 to i64, !dbg !2402
  %spec.select14.i114 = getelementptr inbounds i8, ptr %curbyte.018.i101, i64 %spec.select14.idx.i113, !dbg !2402
    #dbg_value(ptr %spec.select14.i114, !2015, !DIExpression(), !2391)
    #dbg_value(i32 %spec.select.i112, !2011, !DIExpression(), !2391)
    #dbg_value(i32 poison, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2385)
    #dbg_value(i32 poison, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2385)
    #dbg_value(i32 poison, !2010, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !2385)
  %10 = shl i32 %inf.019.i100, 2, !dbg !2403
  %and3.i109 = shl nuw nsw i32 %shr2.i108, 1, !dbg !2403
  %11 = and i32 %and3.i109, 2, !dbg !2403
  %shl.i105.1 = or disjoint i32 %10, %11, !dbg !2403
    #dbg_value(i32 %shl.i105.1, !2016, !DIExpression(), !2391)
  %12 = load i8, ptr %spec.select14.i114, align 1, !dbg !2397
  %conv.i106.1 = zext i8 %12 to i32, !dbg !2398
  %dec1.i107.1 = add nsw i32 %spec.select.i112, -1, !dbg !2399
    #dbg_value(i32 %dec1.i107.1, !2011, !DIExpression(), !2391)
  %shr2.i108.1 = lshr i32 %conv.i106.1, %spec.select.i112, !dbg !2400
  %and3.i109.1 = and i32 %shr2.i108.1, 1, !dbg !2404
  %or.i110.1 = or disjoint i32 %and3.i109.1, %shl.i105.1, !dbg !2405
    #dbg_value(i32 %or.i110.1, !2016, !DIExpression(), !2391)
  %cmp4.i111.1 = icmp eq i32 %spec.select.i112, 0, !dbg !2401
  %spec.select.i112.1 = select i1 %cmp4.i111.1, i32 7, i32 %dec1.i107.1, !dbg !2402
  %spec.select14.idx.i113.1 = zext i1 %cmp4.i111.1 to i64, !dbg !2402
  %spec.select14.i114.1 = getelementptr inbounds i8, ptr %spec.select14.i114, i64 %spec.select14.idx.i113.1, !dbg !2402
    #dbg_value(ptr %spec.select14.i114.1, !2015, !DIExpression(), !2391)
    #dbg_value(i32 %spec.select.i112.1, !2011, !DIExpression(), !2391)
    #dbg_value(i32 poison, !2010, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2385)
  %niter243.next.1 = add i32 %niter243, 2, !dbg !2396
  %niter243.ncmp.1 = icmp eq i32 %niter243.next.1, %unroll_iter242, !dbg !2396
  br i1 %niter243.ncmp.1, label %ShowBits.exit117.loopexit.unr-lcssa.loopexit, label %while.body.i99, !dbg !2396, !llvm.loop !2406

ShowBits.exit117.loopexit.unr-lcssa.loopexit:     ; preds = %while.body.i99
  %13 = shl i32 %or.i110.1, 1, !dbg !2403
  br label %ShowBits.exit117.loopexit.unr-lcssa, !dbg !2396

ShowBits.exit117.loopexit.unr-lcssa:              ; preds = %ShowBits.exit117.loopexit.unr-lcssa.loopexit, %while.body.preheader.i
  %or.i110.lcssa.ph = phi i32 [ poison, %while.body.preheader.i ], [ %or.i110.1, %ShowBits.exit117.loopexit.unr-lcssa.loopexit ]
  %inf.019.i100.unr = phi i32 [ 0, %while.body.preheader.i ], [ %13, %ShowBits.exit117.loopexit.unr-lcssa.loopexit ]
  %curbyte.018.i101.unr = phi ptr [ %arrayidx.i96, %while.body.preheader.i ], [ %spec.select14.i114.1, %ShowBits.exit117.loopexit.unr-lcssa.loopexit ]
  %bitoffset.017.i102.unr = phi i32 [ %sub.i98, %while.body.preheader.i ], [ %spec.select.i112.1, %ShowBits.exit117.loopexit.unr-lcssa.loopexit ]
  %lcmp.mod240.not = icmp eq i32 %xtraiter239, 0, !dbg !2396
  br i1 %lcmp.mod240.not, label %ShowBits.exit117, label %while.body.i99.epil, !dbg !2396

while.body.i99.epil:                              ; preds = %ShowBits.exit117.loopexit.unr-lcssa
    #dbg_value(i32 %inf.019.i100.unr, !2016, !DIExpression(), !2391)
    #dbg_value(ptr %curbyte.018.i101.unr, !2015, !DIExpression(), !2391)
    #dbg_value(i32 %bitoffset.017.i102.unr, !2011, !DIExpression(), !2391)
    #dbg_value(i32 poison, !2010, !DIExpression(), !2385)
    #dbg_value(i32 poison, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2385)
    #dbg_value(i32 %inf.019.i100.unr, !2016, !DIExpression(), !2391)
  %14 = load i8, ptr %curbyte.018.i101.unr, align 1, !dbg !2397
  %conv.i106.epil = zext i8 %14 to i32, !dbg !2398
    #dbg_value(i32 %bitoffset.017.i102.unr, !2011, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2391)
  %shr2.i108.epil = lshr i32 %conv.i106.epil, %bitoffset.017.i102.unr, !dbg !2400
  %and3.i109.epil = and i32 %shr2.i108.epil, 1, !dbg !2404
  %or.i110.epil = or disjoint i32 %and3.i109.epil, %inf.019.i100.unr, !dbg !2405
    #dbg_value(i32 %or.i110.epil, !2016, !DIExpression(), !2391)
    #dbg_value(!DIArgList(ptr %curbyte.018.i101.unr, i32 %bitoffset.017.i102.unr), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2391)
    #dbg_value(i32 poison, !2011, !DIExpression(), !2391)
    #dbg_value(i32 poison, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2385)
  br label %ShowBits.exit117, !dbg !2408

ShowBits.exit117:                                 ; preds = %while.body.i99.epil, %ShowBits.exit117.loopexit.unr-lcssa, %if.then8
  %retval.0.i116 = phi i32 [ -1, %if.then8 ], [ %or.i110.lcssa.ph, %ShowBits.exit117.loopexit.unr-lcssa ], [ %or.i110.epil, %while.body.i99.epil ], !dbg !2409
    #dbg_value(i32 %retval.0.i116, !2346, !DIExpression(), !2352)
    #dbg_value(!DIArgList(i32 1, i32 %retval.0.i116, i32 %sub), !2345, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2352)
  %add12 = add nsw i32 %retval.0.i116, %add6, !dbg !2408
    #dbg_value(i32 %add12, !2342, !DIExpression(), !2352)
  %add13 = add nsw i32 %len.0.lcssa230, %sub, !dbg !2410
    #dbg_value(i32 %add13, !2344, !DIExpression(), !2352)
  br label %if.end, !dbg !2411

if.end:                                           ; preds = %ShowBits.exit117, %if.then
  %len.1 = phi i32 [ %add13, %ShowBits.exit117 ], [ %len.0.lcssa230, %if.then ], !dbg !2352
  %levabs.0 = phi i32 [ %add12, %ShowBits.exit117 ], [ %add6, %if.then ], !dbg !2412
    #dbg_value(i32 %levabs.0, !2342, !DIExpression(), !2352)
    #dbg_value(i32 poison, !2345, !DIExpression(), !2352)
    #dbg_value(i32 %len.1, !2344, !DIExpression(), !2352)
  %add14 = add nsw i32 %len.1, %sub3233, !dbg !2413
    #dbg_value(ptr %2, !2003, !DIExpression(), !2414)
    #dbg_value(i32 %add14, !2008, !DIExpression(), !2414)
    #dbg_value(i32 %add, !2009, !DIExpression(), !2414)
    #dbg_value(i32 1, !2010, !DIExpression(), !2414)
  %cmp.i119.not = icmp slt i32 %add14, %add, !dbg !2416
  br i1 %cmp.i119.not, label %if.end35, label %if.end35.thread, !dbg !2417

if.else:                                          ; preds = %while.end
  %sub19 = add nsw i32 %len.0.lcssa, -5, !dbg !2418
    #dbg_value(i32 %sub19, !2348, !DIExpression(), !2419)
  %shl20 = shl nuw i32 1, %sub19, !dbg !2420
  %shl21 = shl i32 15, %sub, !dbg !2421
    #dbg_value(i32 %sub23, !2351, !DIExpression(), !2419)
    #dbg_value(ptr %2, !2003, !DIExpression(), !2422)
    #dbg_value(i32 %inc.lcssa, !2008, !DIExpression(), !2422)
    #dbg_value(i32 %add, !2009, !DIExpression(), !2422)
    #dbg_value(i32 %sub19, !2010, !DIExpression(), !2422)
  %add.i146 = add nsw i32 %inc.lcssa, %sub19, !dbg !2424
  %cmp.i147 = icmp sgt i32 %add.i146, %add, !dbg !2425
  br i1 %cmp.i147, label %ShowBits.exit174, label %while.body.preheader.i150, !dbg !2426

while.body.preheader.i150:                        ; preds = %if.else
    #dbg_value(i32 %inc.lcssa, !2014, !DIExpression(DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value), !2427)
    #dbg_value(!DIArgList(ptr %2, i32 %inc.lcssa), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2427)
    #dbg_value(i32 0, !2016, !DIExpression(), !2427)
    #dbg_value(i32 %inc.lcssa, !2011, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !2427)
    #dbg_value(i32 %sub19, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2422)
    #dbg_value(!DIArgList(ptr %2, i32 %inc.lcssa), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2427)
    #dbg_value(i32 %inc.lcssa, !2014, !DIExpression(DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value), !2427)
    #dbg_value(!DIArgList(ptr %2, i32 %inc.lcssa), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2427)
    #dbg_value(!DIArgList(ptr %2, i32 %inc.lcssa), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2427)
    #dbg_value(i32 %inc.lcssa, !2011, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !2427)
    #dbg_value(i32 %inc.lcssa, !2011, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !2427)
  %xtraiter = and i32 %sub19, 1, !dbg !2428
  %and.i154 = and i32 %inc.lcssa, 7, !dbg !2429
    #dbg_value(i32 %and.i154, !2011, !DIExpression(DW_OP_constu, 7, DW_OP_xor, DW_OP_stack_value), !2427)
  %sub.i155 = xor i32 %and.i154, 7, !dbg !2430
    #dbg_value(i32 %sub.i155, !2011, !DIExpression(), !2427)
  %shr.i151 = ashr i32 %inc.lcssa, 3, !dbg !2431
    #dbg_value(!DIArgList(ptr %2, i32 %shr.i151), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2427)
    #dbg_value(i32 %shr.i151, !2014, !DIExpression(), !2427)
  %idxprom.i152 = sext i32 %shr.i151 to i64, !dbg !2432
    #dbg_value(!DIArgList(ptr %2, i64 %idxprom.i152), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2427)
  %arrayidx.i153 = getelementptr inbounds i8, ptr %2, i64 %idxprom.i152, !dbg !2432
    #dbg_value(ptr %arrayidx.i153, !2015, !DIExpression(), !2427)
  %unroll_iter = and i32 %sub19, -2, !dbg !2428
  br label %while.body.i156, !dbg !2428

while.body.i156:                                  ; preds = %while.body.i156, %while.body.preheader.i150
  %inf.019.i157 = phi i32 [ 0, %while.body.preheader.i150 ], [ %or.i167.1, %while.body.i156 ]
  %curbyte.018.i158 = phi ptr [ %arrayidx.i153, %while.body.preheader.i150 ], [ %spec.select14.i171.1, %while.body.i156 ]
  %bitoffset.017.i159 = phi i32 [ %sub.i155, %while.body.preheader.i150 ], [ %spec.select.i169.1, %while.body.i156 ]
  %niter = phi i32 [ 0, %while.body.preheader.i150 ], [ %niter.next.1, %while.body.i156 ]
    #dbg_value(i32 %inf.019.i157, !2016, !DIExpression(), !2427)
    #dbg_value(ptr %curbyte.018.i158, !2015, !DIExpression(), !2427)
    #dbg_value(i32 %bitoffset.017.i159, !2011, !DIExpression(), !2427)
    #dbg_value(i32 poison, !2010, !DIExpression(), !2422)
    #dbg_value(i32 poison, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2422)
    #dbg_value(i32 %inf.019.i157, !2016, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !2427)
  %15 = load i8, ptr %curbyte.018.i158, align 1, !dbg !2433
  %conv.i163 = zext i8 %15 to i32, !dbg !2434
  %dec1.i164 = add nsw i32 %bitoffset.017.i159, -1, !dbg !2435
    #dbg_value(i32 %dec1.i164, !2011, !DIExpression(), !2427)
  %shr2.i165 = lshr i32 %conv.i163, %bitoffset.017.i159, !dbg !2436
    #dbg_value(!DIArgList(i32 %shr2.i165, i32 %inf.019.i157), !2016, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !2427)
  %cmp4.i168 = icmp eq i32 %bitoffset.017.i159, 0, !dbg !2437
  %spec.select.i169 = select i1 %cmp4.i168, i32 7, i32 %dec1.i164, !dbg !2438
  %spec.select14.idx.i170 = zext i1 %cmp4.i168 to i64, !dbg !2438
  %spec.select14.i171 = getelementptr inbounds i8, ptr %curbyte.018.i158, i64 %spec.select14.idx.i170, !dbg !2438
    #dbg_value(ptr %spec.select14.i171, !2015, !DIExpression(), !2427)
    #dbg_value(i32 %spec.select.i169, !2011, !DIExpression(), !2427)
    #dbg_value(i32 poison, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2422)
    #dbg_value(i32 poison, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2422)
    #dbg_value(i32 poison, !2010, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !2422)
  %16 = shl i32 %inf.019.i157, 2, !dbg !2439
  %and3.i166 = shl nuw nsw i32 %shr2.i165, 1, !dbg !2439
  %17 = and i32 %and3.i166, 2, !dbg !2439
  %shl.i162.1 = or disjoint i32 %16, %17, !dbg !2439
    #dbg_value(i32 %shl.i162.1, !2016, !DIExpression(), !2427)
  %18 = load i8, ptr %spec.select14.i171, align 1, !dbg !2433
  %conv.i163.1 = zext i8 %18 to i32, !dbg !2434
  %dec1.i164.1 = add nsw i32 %spec.select.i169, -1, !dbg !2435
    #dbg_value(i32 %dec1.i164.1, !2011, !DIExpression(), !2427)
  %shr2.i165.1 = lshr i32 %conv.i163.1, %spec.select.i169, !dbg !2436
  %and3.i166.1 = and i32 %shr2.i165.1, 1, !dbg !2440
  %or.i167.1 = or disjoint i32 %and3.i166.1, %shl.i162.1, !dbg !2441
    #dbg_value(i32 %or.i167.1, !2016, !DIExpression(), !2427)
  %cmp4.i168.1 = icmp eq i32 %spec.select.i169, 0, !dbg !2437
  %spec.select.i169.1 = select i1 %cmp4.i168.1, i32 7, i32 %dec1.i164.1, !dbg !2438
  %spec.select14.idx.i170.1 = zext i1 %cmp4.i168.1 to i64, !dbg !2438
  %spec.select14.i171.1 = getelementptr inbounds i8, ptr %spec.select14.i171, i64 %spec.select14.idx.i170.1, !dbg !2438
    #dbg_value(ptr %spec.select14.i171.1, !2015, !DIExpression(), !2427)
    #dbg_value(i32 %spec.select.i169.1, !2011, !DIExpression(), !2427)
    #dbg_value(i32 poison, !2010, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2422)
  %niter.next.1 = add i32 %niter, 2, !dbg !2428
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter, !dbg !2428
  br i1 %niter.ncmp.1, label %ShowBits.exit174.loopexit.unr-lcssa, label %while.body.i156, !dbg !2428, !llvm.loop !2442

ShowBits.exit174.loopexit.unr-lcssa:              ; preds = %while.body.i156
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !2428
  br i1 %lcmp.mod.not, label %ShowBits.exit174, label %while.body.i156.epil, !dbg !2428

while.body.i156.epil:                             ; preds = %ShowBits.exit174.loopexit.unr-lcssa
    #dbg_value(i32 %or.i167.1, !2016, !DIExpression(), !2427)
    #dbg_value(ptr %spec.select14.i171.1, !2015, !DIExpression(), !2427)
    #dbg_value(i32 %spec.select.i169.1, !2011, !DIExpression(), !2427)
    #dbg_value(i32 poison, !2010, !DIExpression(), !2422)
    #dbg_value(i32 poison, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2422)
  %shl.i162.epil = shl i32 %or.i167.1, 1, !dbg !2439
    #dbg_value(i32 %shl.i162.epil, !2016, !DIExpression(), !2427)
  %19 = load i8, ptr %spec.select14.i171.1, align 1, !dbg !2433
  %conv.i163.epil = zext i8 %19 to i32, !dbg !2434
    #dbg_value(i32 %spec.select.i169.1, !2011, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2427)
  %shr2.i165.epil = lshr i32 %conv.i163.epil, %spec.select.i169.1, !dbg !2436
  %and3.i166.epil = and i32 %shr2.i165.epil, 1, !dbg !2440
  %or.i167.epil = or disjoint i32 %and3.i166.epil, %shl.i162.epil, !dbg !2441
    #dbg_value(i32 %or.i167.epil, !2016, !DIExpression(), !2427)
    #dbg_value(!DIArgList(ptr %spec.select14.i171.1, i32 %spec.select.i169.1), !2015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2427)
    #dbg_value(i32 poison, !2011, !DIExpression(), !2427)
    #dbg_value(i32 poison, !2010, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2422)
  br label %ShowBits.exit174, !dbg !2444

ShowBits.exit174:                                 ; preds = %while.body.i156.epil, %ShowBits.exit174.loopexit.unr-lcssa, %if.else
  %retval.0.i173 = phi i32 [ -1, %if.else ], [ %or.i167.1, %ShowBits.exit174.loopexit.unr-lcssa ], [ %or.i167.epil, %while.body.i156.epil ], !dbg !2445
    #dbg_value(i32 %retval.0.i173, !2346, !DIExpression(), !2352)
    #dbg_value(!DIArgList(i32 %shl20, i32 %retval.0.i173), !2345, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2352)
  %add28 = add nuw nsw i32 %sub19, %len.0.lcssa, !dbg !2444
    #dbg_value(i32 %add28, !2344, !DIExpression(), !2352)
  %add22 = add i32 %shl21, -2047, !dbg !2446
  %sub23 = add i32 %add22, %shl20, !dbg !2447
  %add29 = add nsw i32 %sub23, %retval.0.i173, !dbg !2448
    #dbg_value(i32 %add29, !2342, !DIExpression(), !2352)
    #dbg_value(ptr %2, !2003, !DIExpression(), !2449)
    #dbg_value(i32 %add.i146, !2008, !DIExpression(), !2449)
    #dbg_value(i32 %add, !2009, !DIExpression(), !2449)
    #dbg_value(i32 1, !2010, !DIExpression(), !2449)
  %cmp.i176.not = icmp slt i32 %add.i146, %add, !dbg !2451
  br i1 %cmp.i176.not, label %if.end35, label %if.end35.thread, !dbg !2452

if.end35.thread:                                  ; preds = %if.end, %ShowBits.exit174
  %sub3235 = phi i32 [ %sub3, %ShowBits.exit174 ], [ %sub3233, %if.end ]
  %len.2.in.ph = phi i32 [ %add28, %ShowBits.exit174 ], [ %len.1, %if.end ]
  %levabs.1.ph = phi i32 [ %add29, %ShowBits.exit174 ], [ %levabs.0, %if.end ]
    #dbg_value(i32 %levabs.1.ph, !2342, !DIExpression(), !2352)
    #dbg_value(i32 -1, !2343, !DIExpression(), !2352)
    #dbg_value(i32 %len.2.in.ph, !2344, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2352)
  %sub37210 = sub nsw i32 0, %levabs.1.ph, !dbg !2453
  br label %21, !dbg !2453

if.end35:                                         ; preds = %ShowBits.exit174, %if.end
  %add.i146.sink237 = phi i32 [ %add14, %if.end ], [ %add.i146, %ShowBits.exit174 ]
  %sub3236 = phi i32 [ %sub3233, %if.end ], [ %sub3, %ShowBits.exit174 ]
  %len.2.in = phi i32 [ %len.1, %if.end ], [ %add28, %ShowBits.exit174 ]
  %levabs.1 = phi i32 [ %levabs.0, %if.end ], [ %add29, %ShowBits.exit174 ], !dbg !2454
  %shr.i179 = ashr i32 %add.i146.sink237, 3, !dbg !2455
  %idxprom.i180 = sext i32 %shr.i179 to i64, !dbg !2456
  %arrayidx.i181 = getelementptr inbounds i8, ptr %2, i64 %idxprom.i180, !dbg !2456
  %and.i182 = and i32 %add.i146.sink237, 7, !dbg !2457
  %sub.i183 = xor i32 %and.i182, 7, !dbg !2458
  %20 = load i8, ptr %arrayidx.i181, align 1, !dbg !2459
  %conv.i191 = zext i8 %20 to i32, !dbg !2460
  %shr2.i193 = lshr i32 %conv.i191, %sub.i183, !dbg !2461
  %sign.0.in.fr = freeze i32 %shr2.i193, !dbg !2454
  %sign.0 = and i32 %sign.0.in.fr, 1, !dbg !2454
    #dbg_value(i32 %levabs.1, !2342, !DIExpression(), !2352)
    #dbg_value(i32 %sign.0, !2343, !DIExpression(), !2352)
    #dbg_value(i32 %len.2.in, !2344, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2352)
  %tobool36.not = icmp eq i32 %sign.0, 0, !dbg !2453
  %sub37 = sub nsw i32 0, %levabs.1, !dbg !2453
  %spec.select = select i1 %tobool36.not, i32 %levabs.1, i32 %sub37, !dbg !2453
  br label %21, !dbg !2453

21:                                               ; preds = %if.end35, %if.end35.thread
  %sub3234 = phi i32 [ %sub3235, %if.end35.thread ], [ %sub3236, %if.end35 ]
  %len.2212.in = phi i32 [ %len.2.in.ph, %if.end35.thread ], [ %len.2.in, %if.end35 ]
  %22 = phi i32 [ %sub37210, %if.end35.thread ], [ %spec.select, %if.end35 ], !dbg !2453
  %len.2212 = add nsw i32 %len.2212.in, 1, !dbg !2454
  %inf = getelementptr inbounds i8, ptr %sym, i64 16, !dbg !2462
  store i32 %22, ptr %inf, align 8, !dbg !2463
  %len38 = getelementptr inbounds i8, ptr %sym, i64 12, !dbg !2464
  store i32 %len.2212, ptr %len38, align 4, !dbg !2465
  %add39 = add nsw i32 %len.2212, %sub3234, !dbg !2466
  store i32 %add39, ptr %frame_bitoffset1, align 8, !dbg !2467
  ret i32 0, !dbg !2468
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @readSyntaxElement_TotalZeros(ptr nocapture noundef %sym, ptr nocapture noundef %currStream) local_unnamed_addr #0 !dbg !1143 {
entry:
    #dbg_value(ptr %sym, !1147, !DIExpression(), !2469)
    #dbg_value(ptr %currStream, !1148, !DIExpression(), !2469)
  %value1 = getelementptr inbounds i8, ptr %sym, i64 4, !dbg !2470
  %0 = load i32, ptr %value1, align 4, !dbg !2470
    #dbg_value(i32 %0, !1150, !DIExpression(), !2469)
  %idxprom = sext i32 %0 to i64, !dbg !2471
  %arrayidx = getelementptr inbounds [15 x [16 x i8]], ptr @readSyntaxElement_TotalZeros.lentab, i64 0, i64 %idxprom, !dbg !2471
  %arrayidx4 = getelementptr inbounds [15 x [16 x i8]], ptr @readSyntaxElement_TotalZeros.codtab, i64 0, i64 %idxprom, !dbg !2472
    #dbg_value(ptr %sym, !2056, !DIExpression(), !2473)
    #dbg_value(ptr %currStream, !2062, !DIExpression(), !2473)
    #dbg_value(ptr %arrayidx, !2063, !DIExpression(), !2473)
    #dbg_value(ptr %arrayidx4, !2064, !DIExpression(), !2473)
    #dbg_value(i32 16, !2065, !DIExpression(), !2473)
    #dbg_value(i32 1, !2066, !DIExpression(), !2473)
    #dbg_value(ptr undef, !2067, !DIExpression(), !2473)
    #dbg_value(ptr %arrayidx, !2070, !DIExpression(), !2473)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(), !2473)
  %frame_bitoffset2.i = getelementptr inbounds i8, ptr %currStream, i64 8, !dbg !2475
    #dbg_value(ptr %frame_bitoffset2.i, !2072, !DIExpression(), !2473)
  %streamBuffer.i = getelementptr inbounds i8, ptr %currStream, i64 16, !dbg !2476
  %1 = load ptr, ptr %streamBuffer.i, align 8, !dbg !2476
  %2 = load i32, ptr %frame_bitoffset2.i, align 4, !dbg !2477
  %shr.i = ashr i32 %2, 3, !dbg !2478
  %idxprom.i = sext i32 %shr.i to i64, !dbg !2479
  %arrayidx3.i = getelementptr inbounds i8, ptr %1, i64 %idxprom.i, !dbg !2479
    #dbg_value(ptr %arrayidx3.i, !2073, !DIExpression(), !2473)
  %3 = load i8, ptr %arrayidx3.i, align 1, !dbg !2480
  %conv.i = zext i8 %3 to i32, !dbg !2481
  %shl.i = shl nuw nsw i32 %conv.i, 16, !dbg !2482
  %add.ptr.i = getelementptr inbounds i8, ptr %arrayidx3.i, i64 1, !dbg !2483
  %4 = load i8, ptr %add.ptr.i, align 1, !dbg !2484
  %conv4.i = zext i8 %4 to i32, !dbg !2484
  %shl5.i = shl nuw nsw i32 %conv4.i, 8, !dbg !2485
  %add.i = or disjoint i32 %shl5.i, %shl.i, !dbg !2486
  %add.ptr6.i = getelementptr inbounds i8, ptr %arrayidx3.i, i64 2, !dbg !2487
  %5 = load i8, ptr %add.ptr6.i, align 1, !dbg !2488
  %conv7.i = zext i8 %5 to i32, !dbg !2488
  %add8.i = or disjoint i32 %add.i, %conv7.i, !dbg !2489
    #dbg_value(i32 %add8.i, !2074, !DIExpression(), !2473)
  %and.i = and i32 %2, 7, !dbg !2490
  %shl9.i = shl nuw nsw i32 %add8.i, %and.i, !dbg !2491
    #dbg_value(i32 %shl9.i, !2074, !DIExpression(), !2473)
  %and10.i = and i32 %shl9.i, 16777215, !dbg !2492
    #dbg_value(i32 %and10.i, !2074, !DIExpression(), !2473)
    #dbg_value(i32 0, !2069, !DIExpression(), !2473)
    #dbg_value(i32 0, !2069, !DIExpression(), !2473)
    #dbg_value(i32 0, !2068, !DIExpression(), !2473)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(), !2473)
    #dbg_value(ptr %arrayidx, !2070, !DIExpression(), !2473)
    #dbg_value(i32 0, !2068, !DIExpression(), !2473)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(), !2473)
    #dbg_value(ptr %arrayidx, !2070, !DIExpression(), !2473)
  %6 = load i8, ptr %arrayidx, align 16, !dbg !2493
  %cmp17.us.i = icmp eq i8 %6, 0, !dbg !2494
  br i1 %cmp17.us.i, label %if.then.us.i, label %lor.lhs.false.us.i, !dbg !2495

lor.lhs.false.us.i:                               ; preds = %entry
  %conv16.us.i = zext i8 %6 to i32, !dbg !2493
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2496)
    #dbg_value(i32 %conv16.us.i, !2107, !DIExpression(), !2496)
  %sub.i.us.i = sub nsw i32 24, %conv16.us.i, !dbg !2498
  %shr.i.us.i = lshr i32 %and10.i, %sub.i.us.i, !dbg !2499
  %7 = load i8, ptr %arrayidx4, align 16, !dbg !2500
  %conv20.us.i = zext i8 %7 to i32, !dbg !2500
  %cmp21.not.us.i = icmp eq i32 %shr.i.us.i, %conv20.us.i, !dbg !2501
  br i1 %cmp21.not.us.i, label %if.end, label %if.then.us.i, !dbg !2502

if.then.us.i:                                     ; preds = %lor.lhs.false.us.i, %entry
  %incdec.ptr.us.i = getelementptr inbounds i8, ptr %arrayidx, i64 1, !dbg !2503
    #dbg_value(ptr %incdec.ptr.us.i, !2070, !DIExpression(), !2473)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2473)
    #dbg_value(i32 1, !2068, !DIExpression(), !2473)
  %8 = load i8, ptr %incdec.ptr.us.i, align 1, !dbg !2493
  %cmp17.us.i.1 = icmp eq i8 %8, 0, !dbg !2494
  br i1 %cmp17.us.i.1, label %if.then.us.i.1, label %lor.lhs.false.us.i.1, !dbg !2495

lor.lhs.false.us.i.1:                             ; preds = %if.then.us.i
  %incdec.ptr23.us.i = getelementptr inbounds i8, ptr %arrayidx4, i64 1, !dbg !2504
    #dbg_value(ptr %incdec.ptr23.us.i, !2071, !DIExpression(), !2473)
  %conv16.us.i.1 = zext i8 %8 to i32, !dbg !2493
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2496)
    #dbg_value(i32 %conv16.us.i.1, !2107, !DIExpression(), !2496)
  %sub.i.us.i.1 = sub nsw i32 24, %conv16.us.i.1, !dbg !2498
  %shr.i.us.i.1 = lshr i32 %and10.i, %sub.i.us.i.1, !dbg !2499
  %9 = load i8, ptr %incdec.ptr23.us.i, align 1, !dbg !2500
  %conv20.us.i.1 = zext i8 %9 to i32, !dbg !2500
  %cmp21.not.us.i.1 = icmp eq i32 %shr.i.us.i.1, %conv20.us.i.1, !dbg !2501
  br i1 %cmp21.not.us.i.1, label %if.end, label %if.then.us.i.1, !dbg !2502

if.then.us.i.1:                                   ; preds = %lor.lhs.false.us.i.1, %if.then.us.i
  %incdec.ptr.us.i.1 = getelementptr inbounds i8, ptr %arrayidx, i64 2, !dbg !2503
    #dbg_value(ptr %incdec.ptr.us.i.1, !2070, !DIExpression(), !2473)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !2473)
    #dbg_value(i32 2, !2068, !DIExpression(), !2473)
  %10 = load i8, ptr %incdec.ptr.us.i.1, align 2, !dbg !2493
  %cmp17.us.i.2 = icmp eq i8 %10, 0, !dbg !2494
  br i1 %cmp17.us.i.2, label %if.then.us.i.2, label %lor.lhs.false.us.i.2, !dbg !2495

lor.lhs.false.us.i.2:                             ; preds = %if.then.us.i.1
  %incdec.ptr23.us.i.1 = getelementptr inbounds i8, ptr %arrayidx4, i64 2, !dbg !2504
    #dbg_value(ptr %incdec.ptr23.us.i.1, !2071, !DIExpression(), !2473)
  %conv16.us.i.2 = zext i8 %10 to i32, !dbg !2493
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2496)
    #dbg_value(i32 %conv16.us.i.2, !2107, !DIExpression(), !2496)
  %sub.i.us.i.2 = sub nsw i32 24, %conv16.us.i.2, !dbg !2498
  %shr.i.us.i.2 = lshr i32 %and10.i, %sub.i.us.i.2, !dbg !2499
  %11 = load i8, ptr %incdec.ptr23.us.i.1, align 2, !dbg !2500
  %conv20.us.i.2 = zext i8 %11 to i32, !dbg !2500
  %cmp21.not.us.i.2 = icmp eq i32 %shr.i.us.i.2, %conv20.us.i.2, !dbg !2501
  br i1 %cmp21.not.us.i.2, label %if.end, label %if.then.us.i.2, !dbg !2502

if.then.us.i.2:                                   ; preds = %lor.lhs.false.us.i.2, %if.then.us.i.1
  %incdec.ptr.us.i.2 = getelementptr inbounds i8, ptr %arrayidx, i64 3, !dbg !2503
    #dbg_value(ptr %incdec.ptr.us.i.2, !2070, !DIExpression(), !2473)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !2473)
    #dbg_value(i32 3, !2068, !DIExpression(), !2473)
  %12 = load i8, ptr %incdec.ptr.us.i.2, align 1, !dbg !2493
  %cmp17.us.i.3 = icmp eq i8 %12, 0, !dbg !2494
  br i1 %cmp17.us.i.3, label %if.then.us.i.3, label %lor.lhs.false.us.i.3, !dbg !2495

lor.lhs.false.us.i.3:                             ; preds = %if.then.us.i.2
  %incdec.ptr23.us.i.2 = getelementptr inbounds i8, ptr %arrayidx4, i64 3, !dbg !2504
    #dbg_value(ptr %incdec.ptr23.us.i.2, !2071, !DIExpression(), !2473)
  %conv16.us.i.3 = zext i8 %12 to i32, !dbg !2493
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2496)
    #dbg_value(i32 %conv16.us.i.3, !2107, !DIExpression(), !2496)
  %sub.i.us.i.3 = sub nsw i32 24, %conv16.us.i.3, !dbg !2498
  %shr.i.us.i.3 = lshr i32 %and10.i, %sub.i.us.i.3, !dbg !2499
  %13 = load i8, ptr %incdec.ptr23.us.i.2, align 1, !dbg !2500
  %conv20.us.i.3 = zext i8 %13 to i32, !dbg !2500
  %cmp21.not.us.i.3 = icmp eq i32 %shr.i.us.i.3, %conv20.us.i.3, !dbg !2501
  br i1 %cmp21.not.us.i.3, label %if.end, label %if.then.us.i.3, !dbg !2502

if.then.us.i.3:                                   ; preds = %lor.lhs.false.us.i.3, %if.then.us.i.2
  %incdec.ptr.us.i.3 = getelementptr inbounds i8, ptr %arrayidx, i64 4, !dbg !2503
    #dbg_value(ptr %incdec.ptr.us.i.3, !2070, !DIExpression(), !2473)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !2473)
    #dbg_value(i32 4, !2068, !DIExpression(), !2473)
  %14 = load i8, ptr %incdec.ptr.us.i.3, align 4, !dbg !2493
  %cmp17.us.i.4 = icmp eq i8 %14, 0, !dbg !2494
  br i1 %cmp17.us.i.4, label %if.then.us.i.4, label %lor.lhs.false.us.i.4, !dbg !2495

lor.lhs.false.us.i.4:                             ; preds = %if.then.us.i.3
  %incdec.ptr23.us.i.3 = getelementptr inbounds i8, ptr %arrayidx4, i64 4, !dbg !2504
    #dbg_value(ptr %incdec.ptr23.us.i.3, !2071, !DIExpression(), !2473)
  %conv16.us.i.4 = zext i8 %14 to i32, !dbg !2493
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2496)
    #dbg_value(i32 %conv16.us.i.4, !2107, !DIExpression(), !2496)
  %sub.i.us.i.4 = sub nsw i32 24, %conv16.us.i.4, !dbg !2498
  %shr.i.us.i.4 = lshr i32 %and10.i, %sub.i.us.i.4, !dbg !2499
  %15 = load i8, ptr %incdec.ptr23.us.i.3, align 4, !dbg !2500
  %conv20.us.i.4 = zext i8 %15 to i32, !dbg !2500
  %cmp21.not.us.i.4 = icmp eq i32 %shr.i.us.i.4, %conv20.us.i.4, !dbg !2501
  br i1 %cmp21.not.us.i.4, label %if.end, label %if.then.us.i.4, !dbg !2502

if.then.us.i.4:                                   ; preds = %lor.lhs.false.us.i.4, %if.then.us.i.3
  %incdec.ptr.us.i.4 = getelementptr inbounds i8, ptr %arrayidx, i64 5, !dbg !2503
    #dbg_value(ptr %incdec.ptr.us.i.4, !2070, !DIExpression(), !2473)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value), !2473)
    #dbg_value(i32 5, !2068, !DIExpression(), !2473)
  %16 = load i8, ptr %incdec.ptr.us.i.4, align 1, !dbg !2493
  %cmp17.us.i.5 = icmp eq i8 %16, 0, !dbg !2494
  br i1 %cmp17.us.i.5, label %if.then.us.i.5, label %lor.lhs.false.us.i.5, !dbg !2495

lor.lhs.false.us.i.5:                             ; preds = %if.then.us.i.4
  %incdec.ptr23.us.i.4 = getelementptr inbounds i8, ptr %arrayidx4, i64 5, !dbg !2504
    #dbg_value(ptr %incdec.ptr23.us.i.4, !2071, !DIExpression(), !2473)
  %conv16.us.i.5 = zext i8 %16 to i32, !dbg !2493
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2496)
    #dbg_value(i32 %conv16.us.i.5, !2107, !DIExpression(), !2496)
  %sub.i.us.i.5 = sub nsw i32 24, %conv16.us.i.5, !dbg !2498
  %shr.i.us.i.5 = lshr i32 %and10.i, %sub.i.us.i.5, !dbg !2499
  %17 = load i8, ptr %incdec.ptr23.us.i.4, align 1, !dbg !2500
  %conv20.us.i.5 = zext i8 %17 to i32, !dbg !2500
  %cmp21.not.us.i.5 = icmp eq i32 %shr.i.us.i.5, %conv20.us.i.5, !dbg !2501
  br i1 %cmp21.not.us.i.5, label %if.end, label %if.then.us.i.5, !dbg !2502

if.then.us.i.5:                                   ; preds = %lor.lhs.false.us.i.5, %if.then.us.i.4
  %incdec.ptr.us.i.5 = getelementptr inbounds i8, ptr %arrayidx, i64 6, !dbg !2503
    #dbg_value(ptr %incdec.ptr.us.i.5, !2070, !DIExpression(), !2473)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !2473)
    #dbg_value(i32 6, !2068, !DIExpression(), !2473)
  %18 = load i8, ptr %incdec.ptr.us.i.5, align 2, !dbg !2493
  %cmp17.us.i.6 = icmp eq i8 %18, 0, !dbg !2494
  br i1 %cmp17.us.i.6, label %if.then.us.i.6, label %lor.lhs.false.us.i.6, !dbg !2495

lor.lhs.false.us.i.6:                             ; preds = %if.then.us.i.5
  %incdec.ptr23.us.i.5 = getelementptr inbounds i8, ptr %arrayidx4, i64 6, !dbg !2504
    #dbg_value(ptr %incdec.ptr23.us.i.5, !2071, !DIExpression(), !2473)
  %conv16.us.i.6 = zext i8 %18 to i32, !dbg !2493
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2496)
    #dbg_value(i32 %conv16.us.i.6, !2107, !DIExpression(), !2496)
  %sub.i.us.i.6 = sub nsw i32 24, %conv16.us.i.6, !dbg !2498
  %shr.i.us.i.6 = lshr i32 %and10.i, %sub.i.us.i.6, !dbg !2499
  %19 = load i8, ptr %incdec.ptr23.us.i.5, align 2, !dbg !2500
  %conv20.us.i.6 = zext i8 %19 to i32, !dbg !2500
  %cmp21.not.us.i.6 = icmp eq i32 %shr.i.us.i.6, %conv20.us.i.6, !dbg !2501
  br i1 %cmp21.not.us.i.6, label %if.end, label %if.then.us.i.6, !dbg !2502

if.then.us.i.6:                                   ; preds = %lor.lhs.false.us.i.6, %if.then.us.i.5
  %incdec.ptr.us.i.6 = getelementptr inbounds i8, ptr %arrayidx, i64 7, !dbg !2503
    #dbg_value(ptr %incdec.ptr.us.i.6, !2070, !DIExpression(), !2473)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !2473)
    #dbg_value(i32 7, !2068, !DIExpression(), !2473)
  %20 = load i8, ptr %incdec.ptr.us.i.6, align 1, !dbg !2493
  %cmp17.us.i.7 = icmp eq i8 %20, 0, !dbg !2494
  br i1 %cmp17.us.i.7, label %if.then.us.i.7, label %lor.lhs.false.us.i.7, !dbg !2495

lor.lhs.false.us.i.7:                             ; preds = %if.then.us.i.6
  %incdec.ptr23.us.i.6 = getelementptr inbounds i8, ptr %arrayidx4, i64 7, !dbg !2504
    #dbg_value(ptr %incdec.ptr23.us.i.6, !2071, !DIExpression(), !2473)
  %conv16.us.i.7 = zext i8 %20 to i32, !dbg !2493
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2496)
    #dbg_value(i32 %conv16.us.i.7, !2107, !DIExpression(), !2496)
  %sub.i.us.i.7 = sub nsw i32 24, %conv16.us.i.7, !dbg !2498
  %shr.i.us.i.7 = lshr i32 %and10.i, %sub.i.us.i.7, !dbg !2499
  %21 = load i8, ptr %incdec.ptr23.us.i.6, align 1, !dbg !2500
  %conv20.us.i.7 = zext i8 %21 to i32, !dbg !2500
  %cmp21.not.us.i.7 = icmp eq i32 %shr.i.us.i.7, %conv20.us.i.7, !dbg !2501
  br i1 %cmp21.not.us.i.7, label %if.end, label %if.then.us.i.7, !dbg !2502

if.then.us.i.7:                                   ; preds = %lor.lhs.false.us.i.7, %if.then.us.i.6
  %incdec.ptr.us.i.7 = getelementptr inbounds i8, ptr %arrayidx, i64 8, !dbg !2503
    #dbg_value(ptr %incdec.ptr.us.i.7, !2070, !DIExpression(), !2473)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2473)
    #dbg_value(i32 8, !2068, !DIExpression(), !2473)
  %22 = load i8, ptr %incdec.ptr.us.i.7, align 8, !dbg !2493
  %cmp17.us.i.8 = icmp eq i8 %22, 0, !dbg !2494
  br i1 %cmp17.us.i.8, label %if.then.us.i.8, label %lor.lhs.false.us.i.8, !dbg !2495

lor.lhs.false.us.i.8:                             ; preds = %if.then.us.i.7
  %incdec.ptr23.us.i.7 = getelementptr inbounds i8, ptr %arrayidx4, i64 8, !dbg !2504
    #dbg_value(ptr %incdec.ptr23.us.i.7, !2071, !DIExpression(), !2473)
  %conv16.us.i.8 = zext i8 %22 to i32, !dbg !2493
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2496)
    #dbg_value(i32 %conv16.us.i.8, !2107, !DIExpression(), !2496)
  %sub.i.us.i.8 = sub nsw i32 24, %conv16.us.i.8, !dbg !2498
  %shr.i.us.i.8 = lshr i32 %and10.i, %sub.i.us.i.8, !dbg !2499
  %23 = load i8, ptr %incdec.ptr23.us.i.7, align 8, !dbg !2500
  %conv20.us.i.8 = zext i8 %23 to i32, !dbg !2500
  %cmp21.not.us.i.8 = icmp eq i32 %shr.i.us.i.8, %conv20.us.i.8, !dbg !2501
  br i1 %cmp21.not.us.i.8, label %if.end, label %if.then.us.i.8, !dbg !2502

if.then.us.i.8:                                   ; preds = %lor.lhs.false.us.i.8, %if.then.us.i.7
  %incdec.ptr.us.i.8 = getelementptr inbounds i8, ptr %arrayidx, i64 9, !dbg !2503
    #dbg_value(ptr %incdec.ptr.us.i.8, !2070, !DIExpression(), !2473)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 9, DW_OP_stack_value), !2473)
    #dbg_value(i32 9, !2068, !DIExpression(), !2473)
  %24 = load i8, ptr %incdec.ptr.us.i.8, align 1, !dbg !2493
  %cmp17.us.i.9 = icmp eq i8 %24, 0, !dbg !2494
  br i1 %cmp17.us.i.9, label %if.then.us.i.9, label %lor.lhs.false.us.i.9, !dbg !2495

lor.lhs.false.us.i.9:                             ; preds = %if.then.us.i.8
  %incdec.ptr23.us.i.8 = getelementptr inbounds i8, ptr %arrayidx4, i64 9, !dbg !2504
    #dbg_value(ptr %incdec.ptr23.us.i.8, !2071, !DIExpression(), !2473)
  %conv16.us.i.9 = zext i8 %24 to i32, !dbg !2493
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2496)
    #dbg_value(i32 %conv16.us.i.9, !2107, !DIExpression(), !2496)
  %sub.i.us.i.9 = sub nsw i32 24, %conv16.us.i.9, !dbg !2498
  %shr.i.us.i.9 = lshr i32 %and10.i, %sub.i.us.i.9, !dbg !2499
  %25 = load i8, ptr %incdec.ptr23.us.i.8, align 1, !dbg !2500
  %conv20.us.i.9 = zext i8 %25 to i32, !dbg !2500
  %cmp21.not.us.i.9 = icmp eq i32 %shr.i.us.i.9, %conv20.us.i.9, !dbg !2501
  br i1 %cmp21.not.us.i.9, label %if.end, label %if.then.us.i.9, !dbg !2502

if.then.us.i.9:                                   ; preds = %lor.lhs.false.us.i.9, %if.then.us.i.8
  %incdec.ptr.us.i.9 = getelementptr inbounds i8, ptr %arrayidx, i64 10, !dbg !2503
    #dbg_value(ptr %incdec.ptr.us.i.9, !2070, !DIExpression(), !2473)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 10, DW_OP_stack_value), !2473)
    #dbg_value(i32 10, !2068, !DIExpression(), !2473)
  %26 = load i8, ptr %incdec.ptr.us.i.9, align 2, !dbg !2493
  %cmp17.us.i.10 = icmp eq i8 %26, 0, !dbg !2494
  br i1 %cmp17.us.i.10, label %if.then.us.i.10, label %lor.lhs.false.us.i.10, !dbg !2495

lor.lhs.false.us.i.10:                            ; preds = %if.then.us.i.9
  %incdec.ptr23.us.i.9 = getelementptr inbounds i8, ptr %arrayidx4, i64 10, !dbg !2504
    #dbg_value(ptr %incdec.ptr23.us.i.9, !2071, !DIExpression(), !2473)
  %conv16.us.i.10 = zext i8 %26 to i32, !dbg !2493
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2496)
    #dbg_value(i32 %conv16.us.i.10, !2107, !DIExpression(), !2496)
  %sub.i.us.i.10 = sub nsw i32 24, %conv16.us.i.10, !dbg !2498
  %shr.i.us.i.10 = lshr i32 %and10.i, %sub.i.us.i.10, !dbg !2499
  %27 = load i8, ptr %incdec.ptr23.us.i.9, align 2, !dbg !2500
  %conv20.us.i.10 = zext i8 %27 to i32, !dbg !2500
  %cmp21.not.us.i.10 = icmp eq i32 %shr.i.us.i.10, %conv20.us.i.10, !dbg !2501
  br i1 %cmp21.not.us.i.10, label %if.end, label %if.then.us.i.10, !dbg !2502

if.then.us.i.10:                                  ; preds = %lor.lhs.false.us.i.10, %if.then.us.i.9
  %incdec.ptr.us.i.10 = getelementptr inbounds i8, ptr %arrayidx, i64 11, !dbg !2503
    #dbg_value(ptr %incdec.ptr.us.i.10, !2070, !DIExpression(), !2473)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 11, DW_OP_stack_value), !2473)
    #dbg_value(i32 11, !2068, !DIExpression(), !2473)
  %28 = load i8, ptr %incdec.ptr.us.i.10, align 1, !dbg !2493
  %cmp17.us.i.11 = icmp eq i8 %28, 0, !dbg !2494
  br i1 %cmp17.us.i.11, label %if.then.us.i.11, label %lor.lhs.false.us.i.11, !dbg !2495

lor.lhs.false.us.i.11:                            ; preds = %if.then.us.i.10
  %incdec.ptr23.us.i.10 = getelementptr inbounds i8, ptr %arrayidx4, i64 11, !dbg !2504
    #dbg_value(ptr %incdec.ptr23.us.i.10, !2071, !DIExpression(), !2473)
  %conv16.us.i.11 = zext i8 %28 to i32, !dbg !2493
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2496)
    #dbg_value(i32 %conv16.us.i.11, !2107, !DIExpression(), !2496)
  %sub.i.us.i.11 = sub nsw i32 24, %conv16.us.i.11, !dbg !2498
  %shr.i.us.i.11 = lshr i32 %and10.i, %sub.i.us.i.11, !dbg !2499
  %29 = load i8, ptr %incdec.ptr23.us.i.10, align 1, !dbg !2500
  %conv20.us.i.11 = zext i8 %29 to i32, !dbg !2500
  %cmp21.not.us.i.11 = icmp eq i32 %shr.i.us.i.11, %conv20.us.i.11, !dbg !2501
  br i1 %cmp21.not.us.i.11, label %if.end, label %if.then.us.i.11, !dbg !2502

if.then.us.i.11:                                  ; preds = %lor.lhs.false.us.i.11, %if.then.us.i.10
  %incdec.ptr.us.i.11 = getelementptr inbounds i8, ptr %arrayidx, i64 12, !dbg !2503
    #dbg_value(ptr %incdec.ptr.us.i.11, !2070, !DIExpression(), !2473)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !2473)
    #dbg_value(i32 12, !2068, !DIExpression(), !2473)
  %30 = load i8, ptr %incdec.ptr.us.i.11, align 4, !dbg !2493
  %cmp17.us.i.12 = icmp eq i8 %30, 0, !dbg !2494
  br i1 %cmp17.us.i.12, label %if.then.us.i.12, label %lor.lhs.false.us.i.12, !dbg !2495

lor.lhs.false.us.i.12:                            ; preds = %if.then.us.i.11
  %incdec.ptr23.us.i.11 = getelementptr inbounds i8, ptr %arrayidx4, i64 12, !dbg !2504
    #dbg_value(ptr %incdec.ptr23.us.i.11, !2071, !DIExpression(), !2473)
  %conv16.us.i.12 = zext i8 %30 to i32, !dbg !2493
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2496)
    #dbg_value(i32 %conv16.us.i.12, !2107, !DIExpression(), !2496)
  %sub.i.us.i.12 = sub nsw i32 24, %conv16.us.i.12, !dbg !2498
  %shr.i.us.i.12 = lshr i32 %and10.i, %sub.i.us.i.12, !dbg !2499
  %31 = load i8, ptr %incdec.ptr23.us.i.11, align 4, !dbg !2500
  %conv20.us.i.12 = zext i8 %31 to i32, !dbg !2500
  %cmp21.not.us.i.12 = icmp eq i32 %shr.i.us.i.12, %conv20.us.i.12, !dbg !2501
  br i1 %cmp21.not.us.i.12, label %if.end, label %if.then.us.i.12, !dbg !2502

if.then.us.i.12:                                  ; preds = %lor.lhs.false.us.i.12, %if.then.us.i.11
  %incdec.ptr.us.i.12 = getelementptr inbounds i8, ptr %arrayidx, i64 13, !dbg !2503
    #dbg_value(ptr %incdec.ptr.us.i.12, !2070, !DIExpression(), !2473)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 13, DW_OP_stack_value), !2473)
    #dbg_value(i32 13, !2068, !DIExpression(), !2473)
  %32 = load i8, ptr %incdec.ptr.us.i.12, align 1, !dbg !2493
  %cmp17.us.i.13 = icmp eq i8 %32, 0, !dbg !2494
  br i1 %cmp17.us.i.13, label %if.then.us.i.13, label %lor.lhs.false.us.i.13, !dbg !2495

lor.lhs.false.us.i.13:                            ; preds = %if.then.us.i.12
  %incdec.ptr23.us.i.12 = getelementptr inbounds i8, ptr %arrayidx4, i64 13, !dbg !2504
    #dbg_value(ptr %incdec.ptr23.us.i.12, !2071, !DIExpression(), !2473)
  %conv16.us.i.13 = zext i8 %32 to i32, !dbg !2493
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2496)
    #dbg_value(i32 %conv16.us.i.13, !2107, !DIExpression(), !2496)
  %sub.i.us.i.13 = sub nsw i32 24, %conv16.us.i.13, !dbg !2498
  %shr.i.us.i.13 = lshr i32 %and10.i, %sub.i.us.i.13, !dbg !2499
  %33 = load i8, ptr %incdec.ptr23.us.i.12, align 1, !dbg !2500
  %conv20.us.i.13 = zext i8 %33 to i32, !dbg !2500
  %cmp21.not.us.i.13 = icmp eq i32 %shr.i.us.i.13, %conv20.us.i.13, !dbg !2501
  br i1 %cmp21.not.us.i.13, label %if.end, label %if.then.us.i.13, !dbg !2502

if.then.us.i.13:                                  ; preds = %lor.lhs.false.us.i.13, %if.then.us.i.12
  %incdec.ptr.us.i.13 = getelementptr inbounds i8, ptr %arrayidx, i64 14, !dbg !2503
    #dbg_value(ptr %incdec.ptr.us.i.13, !2070, !DIExpression(), !2473)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 14, DW_OP_stack_value), !2473)
    #dbg_value(i32 14, !2068, !DIExpression(), !2473)
  %34 = load i8, ptr %incdec.ptr.us.i.13, align 2, !dbg !2493
  %cmp17.us.i.14 = icmp eq i8 %34, 0, !dbg !2494
  br i1 %cmp17.us.i.14, label %if.then.us.i.14, label %lor.lhs.false.us.i.14, !dbg !2495

lor.lhs.false.us.i.14:                            ; preds = %if.then.us.i.13
  %incdec.ptr23.us.i.13 = getelementptr inbounds i8, ptr %arrayidx4, i64 14, !dbg !2504
    #dbg_value(ptr %incdec.ptr23.us.i.13, !2071, !DIExpression(), !2473)
  %conv16.us.i.14 = zext i8 %34 to i32, !dbg !2493
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2496)
    #dbg_value(i32 %conv16.us.i.14, !2107, !DIExpression(), !2496)
  %sub.i.us.i.14 = sub nsw i32 24, %conv16.us.i.14, !dbg !2498
  %shr.i.us.i.14 = lshr i32 %and10.i, %sub.i.us.i.14, !dbg !2499
  %35 = load i8, ptr %incdec.ptr23.us.i.13, align 2, !dbg !2500
  %conv20.us.i.14 = zext i8 %35 to i32, !dbg !2500
  %cmp21.not.us.i.14 = icmp eq i32 %shr.i.us.i.14, %conv20.us.i.14, !dbg !2501
  br i1 %cmp21.not.us.i.14, label %if.end, label %if.then.us.i.14, !dbg !2502

if.then.us.i.14:                                  ; preds = %lor.lhs.false.us.i.14, %if.then.us.i.13
  %incdec.ptr.us.i.14 = getelementptr inbounds i8, ptr %arrayidx, i64 15, !dbg !2503
    #dbg_value(ptr %incdec.ptr.us.i.14, !2070, !DIExpression(), !2473)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 15, DW_OP_stack_value), !2473)
    #dbg_value(i32 15, !2068, !DIExpression(), !2473)
  %36 = load i8, ptr %incdec.ptr.us.i.14, align 1, !dbg !2493
  %cmp17.us.i.15 = icmp eq i8 %36, 0, !dbg !2494
  br i1 %cmp17.us.i.15, label %if.then.us.i.15, label %lor.lhs.false.us.i.15, !dbg !2495

lor.lhs.false.us.i.15:                            ; preds = %if.then.us.i.14
  %incdec.ptr23.us.i.14 = getelementptr inbounds i8, ptr %arrayidx4, i64 15, !dbg !2504
    #dbg_value(ptr %incdec.ptr23.us.i.14, !2071, !DIExpression(), !2473)
  %conv16.us.i.15 = zext i8 %36 to i32, !dbg !2493
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2496)
    #dbg_value(i32 %conv16.us.i.15, !2107, !DIExpression(), !2496)
  %sub.i.us.i.15 = sub nsw i32 24, %conv16.us.i.15, !dbg !2498
  %shr.i.us.i.15 = lshr i32 %and10.i, %sub.i.us.i.15, !dbg !2499
  %37 = load i8, ptr %incdec.ptr23.us.i.14, align 1, !dbg !2500
  %conv20.us.i.15 = zext i8 %37 to i32, !dbg !2500
  %cmp21.not.us.i.15 = icmp eq i32 %shr.i.us.i.15, %conv20.us.i.15, !dbg !2501
  br i1 %cmp21.not.us.i.15, label %if.end, label %if.then.us.i.15, !dbg !2502

if.then.us.i.15:                                  ; preds = %lor.lhs.false.us.i.15, %if.then.us.i.14
    #dbg_value(ptr %incdec.ptr.us.i.14, !2070, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2473)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !2473)
    #dbg_value(i32 16, !2068, !DIExpression(), !2473)
    #dbg_value(ptr poison, !2071, !DIExpression(), !2473)
    #dbg_value(ptr poison, !2070, !DIExpression(), !2473)
    #dbg_value(i32 1, !2069, !DIExpression(), !2473)
    #dbg_value(i32 -1, !1151, !DIExpression(), !2469)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7), !dbg !2505
  tail call void @exit(i32 noundef -1) #14, !dbg !2508
  unreachable, !dbg !2508

if.end:                                           ; preds = %lor.lhs.false.us.i.15, %lor.lhs.false.us.i.14, %lor.lhs.false.us.i.13, %lor.lhs.false.us.i.12, %lor.lhs.false.us.i.11, %lor.lhs.false.us.i.10, %lor.lhs.false.us.i.9, %lor.lhs.false.us.i.8, %lor.lhs.false.us.i.7, %lor.lhs.false.us.i.6, %lor.lhs.false.us.i.5, %lor.lhs.false.us.i.4, %lor.lhs.false.us.i.3, %lor.lhs.false.us.i.2, %lor.lhs.false.us.i.1, %lor.lhs.false.us.i
  %i.064.us.i.lcssa = phi i32 [ 0, %lor.lhs.false.us.i ], [ 1, %lor.lhs.false.us.i.1 ], [ 2, %lor.lhs.false.us.i.2 ], [ 3, %lor.lhs.false.us.i.3 ], [ 4, %lor.lhs.false.us.i.4 ], [ 5, %lor.lhs.false.us.i.5 ], [ 6, %lor.lhs.false.us.i.6 ], [ 7, %lor.lhs.false.us.i.7 ], [ 8, %lor.lhs.false.us.i.8 ], [ 9, %lor.lhs.false.us.i.9 ], [ 10, %lor.lhs.false.us.i.10 ], [ 11, %lor.lhs.false.us.i.11 ], [ 12, %lor.lhs.false.us.i.12 ], [ 13, %lor.lhs.false.us.i.13 ], [ 14, %lor.lhs.false.us.i.14 ], [ 15, %lor.lhs.false.us.i.15 ]
  %conv16.us.i.lcssa = phi i32 [ %conv16.us.i, %lor.lhs.false.us.i ], [ %conv16.us.i.1, %lor.lhs.false.us.i.1 ], [ %conv16.us.i.2, %lor.lhs.false.us.i.2 ], [ %conv16.us.i.3, %lor.lhs.false.us.i.3 ], [ %conv16.us.i.4, %lor.lhs.false.us.i.4 ], [ %conv16.us.i.5, %lor.lhs.false.us.i.5 ], [ %conv16.us.i.6, %lor.lhs.false.us.i.6 ], [ %conv16.us.i.7, %lor.lhs.false.us.i.7 ], [ %conv16.us.i.8, %lor.lhs.false.us.i.8 ], [ %conv16.us.i.9, %lor.lhs.false.us.i.9 ], [ %conv16.us.i.10, %lor.lhs.false.us.i.10 ], [ %conv16.us.i.11, %lor.lhs.false.us.i.11 ], [ %conv16.us.i.12, %lor.lhs.false.us.i.12 ], [ %conv16.us.i.13, %lor.lhs.false.us.i.13 ], [ %conv16.us.i.14, %lor.lhs.false.us.i.14 ], [ %conv16.us.i.15, %lor.lhs.false.us.i.15 ], !dbg !2493
  %len25.i = getelementptr inbounds i8, ptr %sym, i64 12, !dbg !2509
  store i32 %conv16.us.i.lcssa, ptr %len25.i, align 4, !dbg !2510
  %38 = load i32, ptr %frame_bitoffset2.i, align 4, !dbg !2511
  %add27.i = add nsw i32 %38, %conv16.us.i.lcssa, !dbg !2511
  store i32 %add27.i, ptr %frame_bitoffset2.i, align 4, !dbg !2511
    #dbg_value(i8 %7, !1149, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2469)
  store i32 %i.064.us.i.lcssa, ptr %value1, align 4, !dbg !2512
  %value2.i = getelementptr inbounds i8, ptr %sym, i64 8, !dbg !2513
  store i32 0, ptr %value2.i, align 8, !dbg !2514
    #dbg_value(i32 0, !1151, !DIExpression(), !2469)
  ret i32 0, !dbg !2515
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @readSyntaxElement_TotalZerosChromaDC(ptr nocapture noundef readonly %p_Vid, ptr nocapture noundef %sym, ptr nocapture noundef %currStream) local_unnamed_addr #0 !dbg !1163 {
entry:
    #dbg_value(ptr %p_Vid, !1165, !DIExpression(), !2516)
    #dbg_value(ptr %sym, !1166, !DIExpression(), !2516)
    #dbg_value(ptr %currStream, !1167, !DIExpression(), !2516)
  %active_sps = getelementptr inbounds i8, ptr %p_Vid, i64 16, !dbg !2517
  %0 = load ptr, ptr %active_sps, align 8, !dbg !2517
  %chroma_format_idc = getelementptr inbounds i8, ptr %0, i64 36, !dbg !2518
  %1 = load i32, ptr %chroma_format_idc, align 4, !dbg !2518
  %sub = add i32 %1, -1, !dbg !2519
    #dbg_value(i32 %sub, !1169, !DIExpression(), !2516)
  %value1 = getelementptr inbounds i8, ptr %sym, i64 4, !dbg !2520
  %2 = load i32, ptr %value1, align 4, !dbg !2520
    #dbg_value(i32 %2, !1170, !DIExpression(), !2516)
  %idxprom = sext i32 %sub to i64, !dbg !2521
  %idxprom2 = sext i32 %2 to i64, !dbg !2521
  %arrayidx3 = getelementptr inbounds [3 x [15 x [16 x i8]]], ptr @readSyntaxElement_TotalZerosChromaDC.lentab, i64 0, i64 %idxprom, i64 %idxprom2, !dbg !2521
  %arrayidx8 = getelementptr inbounds [3 x [15 x [16 x i8]]], ptr @readSyntaxElement_TotalZerosChromaDC.codtab, i64 0, i64 %idxprom, i64 %idxprom2, !dbg !2522
    #dbg_value(ptr %sym, !2056, !DIExpression(), !2523)
    #dbg_value(ptr %currStream, !2062, !DIExpression(), !2523)
    #dbg_value(ptr %arrayidx3, !2063, !DIExpression(), !2523)
    #dbg_value(ptr %arrayidx8, !2064, !DIExpression(), !2523)
    #dbg_value(i32 16, !2065, !DIExpression(), !2523)
    #dbg_value(i32 1, !2066, !DIExpression(), !2523)
    #dbg_value(ptr undef, !2067, !DIExpression(), !2523)
    #dbg_value(ptr %arrayidx3, !2070, !DIExpression(), !2523)
    #dbg_value(ptr %arrayidx8, !2071, !DIExpression(), !2523)
  %frame_bitoffset2.i = getelementptr inbounds i8, ptr %currStream, i64 8, !dbg !2525
    #dbg_value(ptr %frame_bitoffset2.i, !2072, !DIExpression(), !2523)
  %streamBuffer.i = getelementptr inbounds i8, ptr %currStream, i64 16, !dbg !2526
  %3 = load ptr, ptr %streamBuffer.i, align 8, !dbg !2526
  %4 = load i32, ptr %frame_bitoffset2.i, align 4, !dbg !2527
  %shr.i = ashr i32 %4, 3, !dbg !2528
  %idxprom.i = sext i32 %shr.i to i64, !dbg !2529
  %arrayidx3.i = getelementptr inbounds i8, ptr %3, i64 %idxprom.i, !dbg !2529
    #dbg_value(ptr %arrayidx3.i, !2073, !DIExpression(), !2523)
  %5 = load i8, ptr %arrayidx3.i, align 1, !dbg !2530
  %conv.i = zext i8 %5 to i32, !dbg !2531
  %shl.i = shl nuw nsw i32 %conv.i, 16, !dbg !2532
  %add.ptr.i = getelementptr inbounds i8, ptr %arrayidx3.i, i64 1, !dbg !2533
  %6 = load i8, ptr %add.ptr.i, align 1, !dbg !2534
  %conv4.i = zext i8 %6 to i32, !dbg !2534
  %shl5.i = shl nuw nsw i32 %conv4.i, 8, !dbg !2535
  %add.i = or disjoint i32 %shl5.i, %shl.i, !dbg !2536
  %add.ptr6.i = getelementptr inbounds i8, ptr %arrayidx3.i, i64 2, !dbg !2537
  %7 = load i8, ptr %add.ptr6.i, align 1, !dbg !2538
  %conv7.i = zext i8 %7 to i32, !dbg !2538
  %add8.i = or disjoint i32 %add.i, %conv7.i, !dbg !2539
    #dbg_value(i32 %add8.i, !2074, !DIExpression(), !2523)
  %and.i = and i32 %4, 7, !dbg !2540
  %shl9.i = shl nuw nsw i32 %add8.i, %and.i, !dbg !2541
    #dbg_value(i32 %shl9.i, !2074, !DIExpression(), !2523)
  %and10.i = and i32 %shl9.i, 16777215, !dbg !2542
    #dbg_value(i32 %and10.i, !2074, !DIExpression(), !2523)
    #dbg_value(i32 0, !2069, !DIExpression(), !2523)
    #dbg_value(i32 0, !2069, !DIExpression(), !2523)
    #dbg_value(i32 0, !2068, !DIExpression(), !2523)
    #dbg_value(ptr %arrayidx8, !2071, !DIExpression(), !2523)
    #dbg_value(ptr %arrayidx3, !2070, !DIExpression(), !2523)
    #dbg_value(i32 0, !2068, !DIExpression(), !2523)
    #dbg_value(ptr %arrayidx8, !2071, !DIExpression(), !2523)
    #dbg_value(ptr %arrayidx3, !2070, !DIExpression(), !2523)
  %8 = load i8, ptr %arrayidx3, align 16, !dbg !2543
  %cmp17.us.i = icmp eq i8 %8, 0, !dbg !2544
  br i1 %cmp17.us.i, label %if.then.us.i, label %lor.lhs.false.us.i, !dbg !2545

lor.lhs.false.us.i:                               ; preds = %entry
  %conv16.us.i = zext i8 %8 to i32, !dbg !2543
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2546)
    #dbg_value(i32 %conv16.us.i, !2107, !DIExpression(), !2546)
  %sub.i.us.i = sub nsw i32 24, %conv16.us.i, !dbg !2548
  %shr.i.us.i = lshr i32 %and10.i, %sub.i.us.i, !dbg !2549
  %9 = load i8, ptr %arrayidx8, align 16, !dbg !2550
  %conv20.us.i = zext i8 %9 to i32, !dbg !2550
  %cmp21.not.us.i = icmp eq i32 %shr.i.us.i, %conv20.us.i, !dbg !2551
  br i1 %cmp21.not.us.i, label %if.end, label %if.then.us.i, !dbg !2552

if.then.us.i:                                     ; preds = %lor.lhs.false.us.i, %entry
  %incdec.ptr.us.i = getelementptr inbounds i8, ptr %arrayidx3, i64 1, !dbg !2553
    #dbg_value(ptr %incdec.ptr.us.i, !2070, !DIExpression(), !2523)
    #dbg_value(ptr %arrayidx8, !2071, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2523)
    #dbg_value(i32 1, !2068, !DIExpression(), !2523)
  %10 = load i8, ptr %incdec.ptr.us.i, align 1, !dbg !2543
  %cmp17.us.i.1 = icmp eq i8 %10, 0, !dbg !2544
  br i1 %cmp17.us.i.1, label %if.then.us.i.1, label %lor.lhs.false.us.i.1, !dbg !2545

lor.lhs.false.us.i.1:                             ; preds = %if.then.us.i
  %incdec.ptr23.us.i = getelementptr inbounds i8, ptr %arrayidx8, i64 1, !dbg !2554
    #dbg_value(ptr %incdec.ptr23.us.i, !2071, !DIExpression(), !2523)
  %conv16.us.i.1 = zext i8 %10 to i32, !dbg !2543
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2546)
    #dbg_value(i32 %conv16.us.i.1, !2107, !DIExpression(), !2546)
  %sub.i.us.i.1 = sub nsw i32 24, %conv16.us.i.1, !dbg !2548
  %shr.i.us.i.1 = lshr i32 %and10.i, %sub.i.us.i.1, !dbg !2549
  %11 = load i8, ptr %incdec.ptr23.us.i, align 1, !dbg !2550
  %conv20.us.i.1 = zext i8 %11 to i32, !dbg !2550
  %cmp21.not.us.i.1 = icmp eq i32 %shr.i.us.i.1, %conv20.us.i.1, !dbg !2551
  br i1 %cmp21.not.us.i.1, label %if.end, label %if.then.us.i.1, !dbg !2552

if.then.us.i.1:                                   ; preds = %lor.lhs.false.us.i.1, %if.then.us.i
  %incdec.ptr.us.i.1 = getelementptr inbounds i8, ptr %arrayidx3, i64 2, !dbg !2553
    #dbg_value(ptr %incdec.ptr.us.i.1, !2070, !DIExpression(), !2523)
    #dbg_value(ptr %arrayidx8, !2071, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !2523)
    #dbg_value(i32 2, !2068, !DIExpression(), !2523)
  %12 = load i8, ptr %incdec.ptr.us.i.1, align 2, !dbg !2543
  %cmp17.us.i.2 = icmp eq i8 %12, 0, !dbg !2544
  br i1 %cmp17.us.i.2, label %if.then.us.i.2, label %lor.lhs.false.us.i.2, !dbg !2545

lor.lhs.false.us.i.2:                             ; preds = %if.then.us.i.1
  %incdec.ptr23.us.i.1 = getelementptr inbounds i8, ptr %arrayidx8, i64 2, !dbg !2554
    #dbg_value(ptr %incdec.ptr23.us.i.1, !2071, !DIExpression(), !2523)
  %conv16.us.i.2 = zext i8 %12 to i32, !dbg !2543
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2546)
    #dbg_value(i32 %conv16.us.i.2, !2107, !DIExpression(), !2546)
  %sub.i.us.i.2 = sub nsw i32 24, %conv16.us.i.2, !dbg !2548
  %shr.i.us.i.2 = lshr i32 %and10.i, %sub.i.us.i.2, !dbg !2549
  %13 = load i8, ptr %incdec.ptr23.us.i.1, align 2, !dbg !2550
  %conv20.us.i.2 = zext i8 %13 to i32, !dbg !2550
  %cmp21.not.us.i.2 = icmp eq i32 %shr.i.us.i.2, %conv20.us.i.2, !dbg !2551
  br i1 %cmp21.not.us.i.2, label %if.end, label %if.then.us.i.2, !dbg !2552

if.then.us.i.2:                                   ; preds = %lor.lhs.false.us.i.2, %if.then.us.i.1
  %incdec.ptr.us.i.2 = getelementptr inbounds i8, ptr %arrayidx3, i64 3, !dbg !2553
    #dbg_value(ptr %incdec.ptr.us.i.2, !2070, !DIExpression(), !2523)
    #dbg_value(ptr %arrayidx8, !2071, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !2523)
    #dbg_value(i32 3, !2068, !DIExpression(), !2523)
  %14 = load i8, ptr %incdec.ptr.us.i.2, align 1, !dbg !2543
  %cmp17.us.i.3 = icmp eq i8 %14, 0, !dbg !2544
  br i1 %cmp17.us.i.3, label %if.then.us.i.3, label %lor.lhs.false.us.i.3, !dbg !2545

lor.lhs.false.us.i.3:                             ; preds = %if.then.us.i.2
  %incdec.ptr23.us.i.2 = getelementptr inbounds i8, ptr %arrayidx8, i64 3, !dbg !2554
    #dbg_value(ptr %incdec.ptr23.us.i.2, !2071, !DIExpression(), !2523)
  %conv16.us.i.3 = zext i8 %14 to i32, !dbg !2543
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2546)
    #dbg_value(i32 %conv16.us.i.3, !2107, !DIExpression(), !2546)
  %sub.i.us.i.3 = sub nsw i32 24, %conv16.us.i.3, !dbg !2548
  %shr.i.us.i.3 = lshr i32 %and10.i, %sub.i.us.i.3, !dbg !2549
  %15 = load i8, ptr %incdec.ptr23.us.i.2, align 1, !dbg !2550
  %conv20.us.i.3 = zext i8 %15 to i32, !dbg !2550
  %cmp21.not.us.i.3 = icmp eq i32 %shr.i.us.i.3, %conv20.us.i.3, !dbg !2551
  br i1 %cmp21.not.us.i.3, label %if.end, label %if.then.us.i.3, !dbg !2552

if.then.us.i.3:                                   ; preds = %lor.lhs.false.us.i.3, %if.then.us.i.2
  %incdec.ptr.us.i.3 = getelementptr inbounds i8, ptr %arrayidx3, i64 4, !dbg !2553
    #dbg_value(ptr %incdec.ptr.us.i.3, !2070, !DIExpression(), !2523)
    #dbg_value(ptr %arrayidx8, !2071, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !2523)
    #dbg_value(i32 4, !2068, !DIExpression(), !2523)
  %16 = load i8, ptr %incdec.ptr.us.i.3, align 4, !dbg !2543
  %cmp17.us.i.4 = icmp eq i8 %16, 0, !dbg !2544
  br i1 %cmp17.us.i.4, label %if.then.us.i.4, label %lor.lhs.false.us.i.4, !dbg !2545

lor.lhs.false.us.i.4:                             ; preds = %if.then.us.i.3
  %incdec.ptr23.us.i.3 = getelementptr inbounds i8, ptr %arrayidx8, i64 4, !dbg !2554
    #dbg_value(ptr %incdec.ptr23.us.i.3, !2071, !DIExpression(), !2523)
  %conv16.us.i.4 = zext i8 %16 to i32, !dbg !2543
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2546)
    #dbg_value(i32 %conv16.us.i.4, !2107, !DIExpression(), !2546)
  %sub.i.us.i.4 = sub nsw i32 24, %conv16.us.i.4, !dbg !2548
  %shr.i.us.i.4 = lshr i32 %and10.i, %sub.i.us.i.4, !dbg !2549
  %17 = load i8, ptr %incdec.ptr23.us.i.3, align 4, !dbg !2550
  %conv20.us.i.4 = zext i8 %17 to i32, !dbg !2550
  %cmp21.not.us.i.4 = icmp eq i32 %shr.i.us.i.4, %conv20.us.i.4, !dbg !2551
  br i1 %cmp21.not.us.i.4, label %if.end, label %if.then.us.i.4, !dbg !2552

if.then.us.i.4:                                   ; preds = %lor.lhs.false.us.i.4, %if.then.us.i.3
  %incdec.ptr.us.i.4 = getelementptr inbounds i8, ptr %arrayidx3, i64 5, !dbg !2553
    #dbg_value(ptr %incdec.ptr.us.i.4, !2070, !DIExpression(), !2523)
    #dbg_value(ptr %arrayidx8, !2071, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value), !2523)
    #dbg_value(i32 5, !2068, !DIExpression(), !2523)
  %18 = load i8, ptr %incdec.ptr.us.i.4, align 1, !dbg !2543
  %cmp17.us.i.5 = icmp eq i8 %18, 0, !dbg !2544
  br i1 %cmp17.us.i.5, label %if.then.us.i.5, label %lor.lhs.false.us.i.5, !dbg !2545

lor.lhs.false.us.i.5:                             ; preds = %if.then.us.i.4
  %incdec.ptr23.us.i.4 = getelementptr inbounds i8, ptr %arrayidx8, i64 5, !dbg !2554
    #dbg_value(ptr %incdec.ptr23.us.i.4, !2071, !DIExpression(), !2523)
  %conv16.us.i.5 = zext i8 %18 to i32, !dbg !2543
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2546)
    #dbg_value(i32 %conv16.us.i.5, !2107, !DIExpression(), !2546)
  %sub.i.us.i.5 = sub nsw i32 24, %conv16.us.i.5, !dbg !2548
  %shr.i.us.i.5 = lshr i32 %and10.i, %sub.i.us.i.5, !dbg !2549
  %19 = load i8, ptr %incdec.ptr23.us.i.4, align 1, !dbg !2550
  %conv20.us.i.5 = zext i8 %19 to i32, !dbg !2550
  %cmp21.not.us.i.5 = icmp eq i32 %shr.i.us.i.5, %conv20.us.i.5, !dbg !2551
  br i1 %cmp21.not.us.i.5, label %if.end, label %if.then.us.i.5, !dbg !2552

if.then.us.i.5:                                   ; preds = %lor.lhs.false.us.i.5, %if.then.us.i.4
  %incdec.ptr.us.i.5 = getelementptr inbounds i8, ptr %arrayidx3, i64 6, !dbg !2553
    #dbg_value(ptr %incdec.ptr.us.i.5, !2070, !DIExpression(), !2523)
    #dbg_value(ptr %arrayidx8, !2071, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !2523)
    #dbg_value(i32 6, !2068, !DIExpression(), !2523)
  %20 = load i8, ptr %incdec.ptr.us.i.5, align 2, !dbg !2543
  %cmp17.us.i.6 = icmp eq i8 %20, 0, !dbg !2544
  br i1 %cmp17.us.i.6, label %if.then.us.i.6, label %lor.lhs.false.us.i.6, !dbg !2545

lor.lhs.false.us.i.6:                             ; preds = %if.then.us.i.5
  %incdec.ptr23.us.i.5 = getelementptr inbounds i8, ptr %arrayidx8, i64 6, !dbg !2554
    #dbg_value(ptr %incdec.ptr23.us.i.5, !2071, !DIExpression(), !2523)
  %conv16.us.i.6 = zext i8 %20 to i32, !dbg !2543
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2546)
    #dbg_value(i32 %conv16.us.i.6, !2107, !DIExpression(), !2546)
  %sub.i.us.i.6 = sub nsw i32 24, %conv16.us.i.6, !dbg !2548
  %shr.i.us.i.6 = lshr i32 %and10.i, %sub.i.us.i.6, !dbg !2549
  %21 = load i8, ptr %incdec.ptr23.us.i.5, align 2, !dbg !2550
  %conv20.us.i.6 = zext i8 %21 to i32, !dbg !2550
  %cmp21.not.us.i.6 = icmp eq i32 %shr.i.us.i.6, %conv20.us.i.6, !dbg !2551
  br i1 %cmp21.not.us.i.6, label %if.end, label %if.then.us.i.6, !dbg !2552

if.then.us.i.6:                                   ; preds = %lor.lhs.false.us.i.6, %if.then.us.i.5
  %incdec.ptr.us.i.6 = getelementptr inbounds i8, ptr %arrayidx3, i64 7, !dbg !2553
    #dbg_value(ptr %incdec.ptr.us.i.6, !2070, !DIExpression(), !2523)
    #dbg_value(ptr %arrayidx8, !2071, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !2523)
    #dbg_value(i32 7, !2068, !DIExpression(), !2523)
  %22 = load i8, ptr %incdec.ptr.us.i.6, align 1, !dbg !2543
  %cmp17.us.i.7 = icmp eq i8 %22, 0, !dbg !2544
  br i1 %cmp17.us.i.7, label %if.then.us.i.7, label %lor.lhs.false.us.i.7, !dbg !2545

lor.lhs.false.us.i.7:                             ; preds = %if.then.us.i.6
  %incdec.ptr23.us.i.6 = getelementptr inbounds i8, ptr %arrayidx8, i64 7, !dbg !2554
    #dbg_value(ptr %incdec.ptr23.us.i.6, !2071, !DIExpression(), !2523)
  %conv16.us.i.7 = zext i8 %22 to i32, !dbg !2543
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2546)
    #dbg_value(i32 %conv16.us.i.7, !2107, !DIExpression(), !2546)
  %sub.i.us.i.7 = sub nsw i32 24, %conv16.us.i.7, !dbg !2548
  %shr.i.us.i.7 = lshr i32 %and10.i, %sub.i.us.i.7, !dbg !2549
  %23 = load i8, ptr %incdec.ptr23.us.i.6, align 1, !dbg !2550
  %conv20.us.i.7 = zext i8 %23 to i32, !dbg !2550
  %cmp21.not.us.i.7 = icmp eq i32 %shr.i.us.i.7, %conv20.us.i.7, !dbg !2551
  br i1 %cmp21.not.us.i.7, label %if.end, label %if.then.us.i.7, !dbg !2552

if.then.us.i.7:                                   ; preds = %lor.lhs.false.us.i.7, %if.then.us.i.6
  %incdec.ptr.us.i.7 = getelementptr inbounds i8, ptr %arrayidx3, i64 8, !dbg !2553
    #dbg_value(ptr %incdec.ptr.us.i.7, !2070, !DIExpression(), !2523)
    #dbg_value(ptr %arrayidx8, !2071, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2523)
    #dbg_value(i32 8, !2068, !DIExpression(), !2523)
  %24 = load i8, ptr %incdec.ptr.us.i.7, align 8, !dbg !2543
  %cmp17.us.i.8 = icmp eq i8 %24, 0, !dbg !2544
  br i1 %cmp17.us.i.8, label %if.then.us.i.8, label %lor.lhs.false.us.i.8, !dbg !2545

lor.lhs.false.us.i.8:                             ; preds = %if.then.us.i.7
  %incdec.ptr23.us.i.7 = getelementptr inbounds i8, ptr %arrayidx8, i64 8, !dbg !2554
    #dbg_value(ptr %incdec.ptr23.us.i.7, !2071, !DIExpression(), !2523)
  %conv16.us.i.8 = zext i8 %24 to i32, !dbg !2543
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2546)
    #dbg_value(i32 %conv16.us.i.8, !2107, !DIExpression(), !2546)
  %sub.i.us.i.8 = sub nsw i32 24, %conv16.us.i.8, !dbg !2548
  %shr.i.us.i.8 = lshr i32 %and10.i, %sub.i.us.i.8, !dbg !2549
  %25 = load i8, ptr %incdec.ptr23.us.i.7, align 8, !dbg !2550
  %conv20.us.i.8 = zext i8 %25 to i32, !dbg !2550
  %cmp21.not.us.i.8 = icmp eq i32 %shr.i.us.i.8, %conv20.us.i.8, !dbg !2551
  br i1 %cmp21.not.us.i.8, label %if.end, label %if.then.us.i.8, !dbg !2552

if.then.us.i.8:                                   ; preds = %lor.lhs.false.us.i.8, %if.then.us.i.7
  %incdec.ptr.us.i.8 = getelementptr inbounds i8, ptr %arrayidx3, i64 9, !dbg !2553
    #dbg_value(ptr %incdec.ptr.us.i.8, !2070, !DIExpression(), !2523)
    #dbg_value(ptr %arrayidx8, !2071, !DIExpression(DW_OP_plus_uconst, 9, DW_OP_stack_value), !2523)
    #dbg_value(i32 9, !2068, !DIExpression(), !2523)
  %26 = load i8, ptr %incdec.ptr.us.i.8, align 1, !dbg !2543
  %cmp17.us.i.9 = icmp eq i8 %26, 0, !dbg !2544
  br i1 %cmp17.us.i.9, label %if.then.us.i.9, label %lor.lhs.false.us.i.9, !dbg !2545

lor.lhs.false.us.i.9:                             ; preds = %if.then.us.i.8
  %incdec.ptr23.us.i.8 = getelementptr inbounds i8, ptr %arrayidx8, i64 9, !dbg !2554
    #dbg_value(ptr %incdec.ptr23.us.i.8, !2071, !DIExpression(), !2523)
  %conv16.us.i.9 = zext i8 %26 to i32, !dbg !2543
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2546)
    #dbg_value(i32 %conv16.us.i.9, !2107, !DIExpression(), !2546)
  %sub.i.us.i.9 = sub nsw i32 24, %conv16.us.i.9, !dbg !2548
  %shr.i.us.i.9 = lshr i32 %and10.i, %sub.i.us.i.9, !dbg !2549
  %27 = load i8, ptr %incdec.ptr23.us.i.8, align 1, !dbg !2550
  %conv20.us.i.9 = zext i8 %27 to i32, !dbg !2550
  %cmp21.not.us.i.9 = icmp eq i32 %shr.i.us.i.9, %conv20.us.i.9, !dbg !2551
  br i1 %cmp21.not.us.i.9, label %if.end, label %if.then.us.i.9, !dbg !2552

if.then.us.i.9:                                   ; preds = %lor.lhs.false.us.i.9, %if.then.us.i.8
  %incdec.ptr.us.i.9 = getelementptr inbounds i8, ptr %arrayidx3, i64 10, !dbg !2553
    #dbg_value(ptr %incdec.ptr.us.i.9, !2070, !DIExpression(), !2523)
    #dbg_value(ptr %arrayidx8, !2071, !DIExpression(DW_OP_plus_uconst, 10, DW_OP_stack_value), !2523)
    #dbg_value(i32 10, !2068, !DIExpression(), !2523)
  %28 = load i8, ptr %incdec.ptr.us.i.9, align 2, !dbg !2543
  %cmp17.us.i.10 = icmp eq i8 %28, 0, !dbg !2544
  br i1 %cmp17.us.i.10, label %if.then.us.i.10, label %lor.lhs.false.us.i.10, !dbg !2545

lor.lhs.false.us.i.10:                            ; preds = %if.then.us.i.9
  %incdec.ptr23.us.i.9 = getelementptr inbounds i8, ptr %arrayidx8, i64 10, !dbg !2554
    #dbg_value(ptr %incdec.ptr23.us.i.9, !2071, !DIExpression(), !2523)
  %conv16.us.i.10 = zext i8 %28 to i32, !dbg !2543
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2546)
    #dbg_value(i32 %conv16.us.i.10, !2107, !DIExpression(), !2546)
  %sub.i.us.i.10 = sub nsw i32 24, %conv16.us.i.10, !dbg !2548
  %shr.i.us.i.10 = lshr i32 %and10.i, %sub.i.us.i.10, !dbg !2549
  %29 = load i8, ptr %incdec.ptr23.us.i.9, align 2, !dbg !2550
  %conv20.us.i.10 = zext i8 %29 to i32, !dbg !2550
  %cmp21.not.us.i.10 = icmp eq i32 %shr.i.us.i.10, %conv20.us.i.10, !dbg !2551
  br i1 %cmp21.not.us.i.10, label %if.end, label %if.then.us.i.10, !dbg !2552

if.then.us.i.10:                                  ; preds = %lor.lhs.false.us.i.10, %if.then.us.i.9
  %incdec.ptr.us.i.10 = getelementptr inbounds i8, ptr %arrayidx3, i64 11, !dbg !2553
    #dbg_value(ptr %incdec.ptr.us.i.10, !2070, !DIExpression(), !2523)
    #dbg_value(ptr %arrayidx8, !2071, !DIExpression(DW_OP_plus_uconst, 11, DW_OP_stack_value), !2523)
    #dbg_value(i32 11, !2068, !DIExpression(), !2523)
  %30 = load i8, ptr %incdec.ptr.us.i.10, align 1, !dbg !2543
  %cmp17.us.i.11 = icmp eq i8 %30, 0, !dbg !2544
  br i1 %cmp17.us.i.11, label %if.then.us.i.11, label %lor.lhs.false.us.i.11, !dbg !2545

lor.lhs.false.us.i.11:                            ; preds = %if.then.us.i.10
  %incdec.ptr23.us.i.10 = getelementptr inbounds i8, ptr %arrayidx8, i64 11, !dbg !2554
    #dbg_value(ptr %incdec.ptr23.us.i.10, !2071, !DIExpression(), !2523)
  %conv16.us.i.11 = zext i8 %30 to i32, !dbg !2543
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2546)
    #dbg_value(i32 %conv16.us.i.11, !2107, !DIExpression(), !2546)
  %sub.i.us.i.11 = sub nsw i32 24, %conv16.us.i.11, !dbg !2548
  %shr.i.us.i.11 = lshr i32 %and10.i, %sub.i.us.i.11, !dbg !2549
  %31 = load i8, ptr %incdec.ptr23.us.i.10, align 1, !dbg !2550
  %conv20.us.i.11 = zext i8 %31 to i32, !dbg !2550
  %cmp21.not.us.i.11 = icmp eq i32 %shr.i.us.i.11, %conv20.us.i.11, !dbg !2551
  br i1 %cmp21.not.us.i.11, label %if.end, label %if.then.us.i.11, !dbg !2552

if.then.us.i.11:                                  ; preds = %lor.lhs.false.us.i.11, %if.then.us.i.10
  %incdec.ptr.us.i.11 = getelementptr inbounds i8, ptr %arrayidx3, i64 12, !dbg !2553
    #dbg_value(ptr %incdec.ptr.us.i.11, !2070, !DIExpression(), !2523)
    #dbg_value(ptr %arrayidx8, !2071, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !2523)
    #dbg_value(i32 12, !2068, !DIExpression(), !2523)
  %32 = load i8, ptr %incdec.ptr.us.i.11, align 4, !dbg !2543
  %cmp17.us.i.12 = icmp eq i8 %32, 0, !dbg !2544
  br i1 %cmp17.us.i.12, label %if.then.us.i.12, label %lor.lhs.false.us.i.12, !dbg !2545

lor.lhs.false.us.i.12:                            ; preds = %if.then.us.i.11
  %incdec.ptr23.us.i.11 = getelementptr inbounds i8, ptr %arrayidx8, i64 12, !dbg !2554
    #dbg_value(ptr %incdec.ptr23.us.i.11, !2071, !DIExpression(), !2523)
  %conv16.us.i.12 = zext i8 %32 to i32, !dbg !2543
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2546)
    #dbg_value(i32 %conv16.us.i.12, !2107, !DIExpression(), !2546)
  %sub.i.us.i.12 = sub nsw i32 24, %conv16.us.i.12, !dbg !2548
  %shr.i.us.i.12 = lshr i32 %and10.i, %sub.i.us.i.12, !dbg !2549
  %33 = load i8, ptr %incdec.ptr23.us.i.11, align 4, !dbg !2550
  %conv20.us.i.12 = zext i8 %33 to i32, !dbg !2550
  %cmp21.not.us.i.12 = icmp eq i32 %shr.i.us.i.12, %conv20.us.i.12, !dbg !2551
  br i1 %cmp21.not.us.i.12, label %if.end, label %if.then.us.i.12, !dbg !2552

if.then.us.i.12:                                  ; preds = %lor.lhs.false.us.i.12, %if.then.us.i.11
  %incdec.ptr.us.i.12 = getelementptr inbounds i8, ptr %arrayidx3, i64 13, !dbg !2553
    #dbg_value(ptr %incdec.ptr.us.i.12, !2070, !DIExpression(), !2523)
    #dbg_value(ptr %arrayidx8, !2071, !DIExpression(DW_OP_plus_uconst, 13, DW_OP_stack_value), !2523)
    #dbg_value(i32 13, !2068, !DIExpression(), !2523)
  %34 = load i8, ptr %incdec.ptr.us.i.12, align 1, !dbg !2543
  %cmp17.us.i.13 = icmp eq i8 %34, 0, !dbg !2544
  br i1 %cmp17.us.i.13, label %if.then.us.i.13, label %lor.lhs.false.us.i.13, !dbg !2545

lor.lhs.false.us.i.13:                            ; preds = %if.then.us.i.12
  %incdec.ptr23.us.i.12 = getelementptr inbounds i8, ptr %arrayidx8, i64 13, !dbg !2554
    #dbg_value(ptr %incdec.ptr23.us.i.12, !2071, !DIExpression(), !2523)
  %conv16.us.i.13 = zext i8 %34 to i32, !dbg !2543
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2546)
    #dbg_value(i32 %conv16.us.i.13, !2107, !DIExpression(), !2546)
  %sub.i.us.i.13 = sub nsw i32 24, %conv16.us.i.13, !dbg !2548
  %shr.i.us.i.13 = lshr i32 %and10.i, %sub.i.us.i.13, !dbg !2549
  %35 = load i8, ptr %incdec.ptr23.us.i.12, align 1, !dbg !2550
  %conv20.us.i.13 = zext i8 %35 to i32, !dbg !2550
  %cmp21.not.us.i.13 = icmp eq i32 %shr.i.us.i.13, %conv20.us.i.13, !dbg !2551
  br i1 %cmp21.not.us.i.13, label %if.end, label %if.then.us.i.13, !dbg !2552

if.then.us.i.13:                                  ; preds = %lor.lhs.false.us.i.13, %if.then.us.i.12
  %incdec.ptr.us.i.13 = getelementptr inbounds i8, ptr %arrayidx3, i64 14, !dbg !2553
    #dbg_value(ptr %incdec.ptr.us.i.13, !2070, !DIExpression(), !2523)
    #dbg_value(ptr %arrayidx8, !2071, !DIExpression(DW_OP_plus_uconst, 14, DW_OP_stack_value), !2523)
    #dbg_value(i32 14, !2068, !DIExpression(), !2523)
  %36 = load i8, ptr %incdec.ptr.us.i.13, align 2, !dbg !2543
  %cmp17.us.i.14 = icmp eq i8 %36, 0, !dbg !2544
  br i1 %cmp17.us.i.14, label %if.then.us.i.14, label %lor.lhs.false.us.i.14, !dbg !2545

lor.lhs.false.us.i.14:                            ; preds = %if.then.us.i.13
  %incdec.ptr23.us.i.13 = getelementptr inbounds i8, ptr %arrayidx8, i64 14, !dbg !2554
    #dbg_value(ptr %incdec.ptr23.us.i.13, !2071, !DIExpression(), !2523)
  %conv16.us.i.14 = zext i8 %36 to i32, !dbg !2543
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2546)
    #dbg_value(i32 %conv16.us.i.14, !2107, !DIExpression(), !2546)
  %sub.i.us.i.14 = sub nsw i32 24, %conv16.us.i.14, !dbg !2548
  %shr.i.us.i.14 = lshr i32 %and10.i, %sub.i.us.i.14, !dbg !2549
  %37 = load i8, ptr %incdec.ptr23.us.i.13, align 2, !dbg !2550
  %conv20.us.i.14 = zext i8 %37 to i32, !dbg !2550
  %cmp21.not.us.i.14 = icmp eq i32 %shr.i.us.i.14, %conv20.us.i.14, !dbg !2551
  br i1 %cmp21.not.us.i.14, label %if.end, label %if.then.us.i.14, !dbg !2552

if.then.us.i.14:                                  ; preds = %lor.lhs.false.us.i.14, %if.then.us.i.13
  %incdec.ptr.us.i.14 = getelementptr inbounds i8, ptr %arrayidx3, i64 15, !dbg !2553
    #dbg_value(ptr %incdec.ptr.us.i.14, !2070, !DIExpression(), !2523)
    #dbg_value(ptr %arrayidx8, !2071, !DIExpression(DW_OP_plus_uconst, 15, DW_OP_stack_value), !2523)
    #dbg_value(i32 15, !2068, !DIExpression(), !2523)
  %38 = load i8, ptr %incdec.ptr.us.i.14, align 1, !dbg !2543
  %cmp17.us.i.15 = icmp eq i8 %38, 0, !dbg !2544
  br i1 %cmp17.us.i.15, label %if.then.us.i.15, label %lor.lhs.false.us.i.15, !dbg !2545

lor.lhs.false.us.i.15:                            ; preds = %if.then.us.i.14
  %incdec.ptr23.us.i.14 = getelementptr inbounds i8, ptr %arrayidx8, i64 15, !dbg !2554
    #dbg_value(ptr %incdec.ptr23.us.i.14, !2071, !DIExpression(), !2523)
  %conv16.us.i.15 = zext i8 %38 to i32, !dbg !2543
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2546)
    #dbg_value(i32 %conv16.us.i.15, !2107, !DIExpression(), !2546)
  %sub.i.us.i.15 = sub nsw i32 24, %conv16.us.i.15, !dbg !2548
  %shr.i.us.i.15 = lshr i32 %and10.i, %sub.i.us.i.15, !dbg !2549
  %39 = load i8, ptr %incdec.ptr23.us.i.14, align 1, !dbg !2550
  %conv20.us.i.15 = zext i8 %39 to i32, !dbg !2550
  %cmp21.not.us.i.15 = icmp eq i32 %shr.i.us.i.15, %conv20.us.i.15, !dbg !2551
  br i1 %cmp21.not.us.i.15, label %if.end, label %if.then.us.i.15, !dbg !2552

if.then.us.i.15:                                  ; preds = %lor.lhs.false.us.i.15, %if.then.us.i.14
    #dbg_value(ptr %incdec.ptr.us.i.14, !2070, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2523)
    #dbg_value(ptr %arrayidx8, !2071, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !2523)
    #dbg_value(i32 16, !2068, !DIExpression(), !2523)
    #dbg_value(ptr poison, !2071, !DIExpression(), !2523)
    #dbg_value(ptr poison, !2070, !DIExpression(), !2523)
    #dbg_value(i32 1, !2069, !DIExpression(), !2523)
    #dbg_value(i32 -1, !1171, !DIExpression(), !2516)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8), !dbg !2555
  tail call void @exit(i32 noundef -1) #14, !dbg !2558
  unreachable, !dbg !2558

if.end:                                           ; preds = %lor.lhs.false.us.i.15, %lor.lhs.false.us.i.14, %lor.lhs.false.us.i.13, %lor.lhs.false.us.i.12, %lor.lhs.false.us.i.11, %lor.lhs.false.us.i.10, %lor.lhs.false.us.i.9, %lor.lhs.false.us.i.8, %lor.lhs.false.us.i.7, %lor.lhs.false.us.i.6, %lor.lhs.false.us.i.5, %lor.lhs.false.us.i.4, %lor.lhs.false.us.i.3, %lor.lhs.false.us.i.2, %lor.lhs.false.us.i.1, %lor.lhs.false.us.i
  %i.064.us.i.lcssa = phi i32 [ 0, %lor.lhs.false.us.i ], [ 1, %lor.lhs.false.us.i.1 ], [ 2, %lor.lhs.false.us.i.2 ], [ 3, %lor.lhs.false.us.i.3 ], [ 4, %lor.lhs.false.us.i.4 ], [ 5, %lor.lhs.false.us.i.5 ], [ 6, %lor.lhs.false.us.i.6 ], [ 7, %lor.lhs.false.us.i.7 ], [ 8, %lor.lhs.false.us.i.8 ], [ 9, %lor.lhs.false.us.i.9 ], [ 10, %lor.lhs.false.us.i.10 ], [ 11, %lor.lhs.false.us.i.11 ], [ 12, %lor.lhs.false.us.i.12 ], [ 13, %lor.lhs.false.us.i.13 ], [ 14, %lor.lhs.false.us.i.14 ], [ 15, %lor.lhs.false.us.i.15 ]
  %conv16.us.i.lcssa = phi i32 [ %conv16.us.i, %lor.lhs.false.us.i ], [ %conv16.us.i.1, %lor.lhs.false.us.i.1 ], [ %conv16.us.i.2, %lor.lhs.false.us.i.2 ], [ %conv16.us.i.3, %lor.lhs.false.us.i.3 ], [ %conv16.us.i.4, %lor.lhs.false.us.i.4 ], [ %conv16.us.i.5, %lor.lhs.false.us.i.5 ], [ %conv16.us.i.6, %lor.lhs.false.us.i.6 ], [ %conv16.us.i.7, %lor.lhs.false.us.i.7 ], [ %conv16.us.i.8, %lor.lhs.false.us.i.8 ], [ %conv16.us.i.9, %lor.lhs.false.us.i.9 ], [ %conv16.us.i.10, %lor.lhs.false.us.i.10 ], [ %conv16.us.i.11, %lor.lhs.false.us.i.11 ], [ %conv16.us.i.12, %lor.lhs.false.us.i.12 ], [ %conv16.us.i.13, %lor.lhs.false.us.i.13 ], [ %conv16.us.i.14, %lor.lhs.false.us.i.14 ], [ %conv16.us.i.15, %lor.lhs.false.us.i.15 ], !dbg !2543
  %len25.i = getelementptr inbounds i8, ptr %sym, i64 12, !dbg !2559
  store i32 %conv16.us.i.lcssa, ptr %len25.i, align 4, !dbg !2560
  %40 = load i32, ptr %frame_bitoffset2.i, align 4, !dbg !2561
  %add27.i = add nsw i32 %40, %conv16.us.i.lcssa, !dbg !2561
  store i32 %add27.i, ptr %frame_bitoffset2.i, align 4, !dbg !2561
    #dbg_value(i8 %9, !1168, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2516)
  store i32 %i.064.us.i.lcssa, ptr %value1, align 4, !dbg !2562
  %value2.i = getelementptr inbounds i8, ptr %sym, i64 8, !dbg !2563
  store i32 0, ptr %value2.i, align 8, !dbg !2564
    #dbg_value(i32 0, !1171, !DIExpression(), !2516)
  ret i32 0, !dbg !2565
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @readSyntaxElement_Run(ptr nocapture noundef %sym, ptr nocapture noundef %currStream) local_unnamed_addr #0 !dbg !1183 {
entry:
    #dbg_value(ptr %sym, !1185, !DIExpression(), !2566)
    #dbg_value(ptr %currStream, !1186, !DIExpression(), !2566)
  %value1 = getelementptr inbounds i8, ptr %sym, i64 4, !dbg !2567
  %0 = load i32, ptr %value1, align 4, !dbg !2567
    #dbg_value(i32 %0, !1188, !DIExpression(), !2566)
  %idxprom = sext i32 %0 to i64, !dbg !2568
  %arrayidx = getelementptr inbounds [15 x [16 x i8]], ptr @readSyntaxElement_Run.lentab, i64 0, i64 %idxprom, !dbg !2568
  %arrayidx4 = getelementptr inbounds [15 x [16 x i8]], ptr @readSyntaxElement_Run.codtab, i64 0, i64 %idxprom, !dbg !2569
    #dbg_value(ptr %sym, !2056, !DIExpression(), !2570)
    #dbg_value(ptr %currStream, !2062, !DIExpression(), !2570)
    #dbg_value(ptr %arrayidx, !2063, !DIExpression(), !2570)
    #dbg_value(ptr %arrayidx4, !2064, !DIExpression(), !2570)
    #dbg_value(i32 16, !2065, !DIExpression(), !2570)
    #dbg_value(i32 1, !2066, !DIExpression(), !2570)
    #dbg_value(ptr undef, !2067, !DIExpression(), !2570)
    #dbg_value(ptr %arrayidx, !2070, !DIExpression(), !2570)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(), !2570)
  %frame_bitoffset2.i = getelementptr inbounds i8, ptr %currStream, i64 8, !dbg !2572
    #dbg_value(ptr %frame_bitoffset2.i, !2072, !DIExpression(), !2570)
  %streamBuffer.i = getelementptr inbounds i8, ptr %currStream, i64 16, !dbg !2573
  %1 = load ptr, ptr %streamBuffer.i, align 8, !dbg !2573
  %2 = load i32, ptr %frame_bitoffset2.i, align 4, !dbg !2574
  %shr.i = ashr i32 %2, 3, !dbg !2575
  %idxprom.i = sext i32 %shr.i to i64, !dbg !2576
  %arrayidx3.i = getelementptr inbounds i8, ptr %1, i64 %idxprom.i, !dbg !2576
    #dbg_value(ptr %arrayidx3.i, !2073, !DIExpression(), !2570)
  %3 = load i8, ptr %arrayidx3.i, align 1, !dbg !2577
  %conv.i = zext i8 %3 to i32, !dbg !2578
  %shl.i = shl nuw nsw i32 %conv.i, 16, !dbg !2579
  %add.ptr.i = getelementptr inbounds i8, ptr %arrayidx3.i, i64 1, !dbg !2580
  %4 = load i8, ptr %add.ptr.i, align 1, !dbg !2581
  %conv4.i = zext i8 %4 to i32, !dbg !2581
  %shl5.i = shl nuw nsw i32 %conv4.i, 8, !dbg !2582
  %add.i = or disjoint i32 %shl5.i, %shl.i, !dbg !2583
  %add.ptr6.i = getelementptr inbounds i8, ptr %arrayidx3.i, i64 2, !dbg !2584
  %5 = load i8, ptr %add.ptr6.i, align 1, !dbg !2585
  %conv7.i = zext i8 %5 to i32, !dbg !2585
  %add8.i = or disjoint i32 %add.i, %conv7.i, !dbg !2586
    #dbg_value(i32 %add8.i, !2074, !DIExpression(), !2570)
  %and.i = and i32 %2, 7, !dbg !2587
  %shl9.i = shl nuw nsw i32 %add8.i, %and.i, !dbg !2588
    #dbg_value(i32 %shl9.i, !2074, !DIExpression(), !2570)
  %and10.i = and i32 %shl9.i, 16777215, !dbg !2589
    #dbg_value(i32 %and10.i, !2074, !DIExpression(), !2570)
    #dbg_value(i32 0, !2069, !DIExpression(), !2570)
    #dbg_value(i32 0, !2069, !DIExpression(), !2570)
    #dbg_value(i32 0, !2068, !DIExpression(), !2570)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(), !2570)
    #dbg_value(ptr %arrayidx, !2070, !DIExpression(), !2570)
    #dbg_value(i32 0, !2068, !DIExpression(), !2570)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(), !2570)
    #dbg_value(ptr %arrayidx, !2070, !DIExpression(), !2570)
  %6 = load i8, ptr %arrayidx, align 16, !dbg !2590
  %cmp17.us.i = icmp eq i8 %6, 0, !dbg !2591
  br i1 %cmp17.us.i, label %if.then.us.i, label %lor.lhs.false.us.i, !dbg !2592

lor.lhs.false.us.i:                               ; preds = %entry
  %conv16.us.i = zext i8 %6 to i32, !dbg !2590
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2593)
    #dbg_value(i32 %conv16.us.i, !2107, !DIExpression(), !2593)
  %sub.i.us.i = sub nsw i32 24, %conv16.us.i, !dbg !2595
  %shr.i.us.i = lshr i32 %and10.i, %sub.i.us.i, !dbg !2596
  %7 = load i8, ptr %arrayidx4, align 16, !dbg !2597
  %conv20.us.i = zext i8 %7 to i32, !dbg !2597
  %cmp21.not.us.i = icmp eq i32 %shr.i.us.i, %conv20.us.i, !dbg !2598
  br i1 %cmp21.not.us.i, label %if.end, label %if.then.us.i, !dbg !2599

if.then.us.i:                                     ; preds = %lor.lhs.false.us.i, %entry
  %incdec.ptr.us.i = getelementptr inbounds i8, ptr %arrayidx, i64 1, !dbg !2600
    #dbg_value(ptr %incdec.ptr.us.i, !2070, !DIExpression(), !2570)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2570)
    #dbg_value(i32 1, !2068, !DIExpression(), !2570)
  %8 = load i8, ptr %incdec.ptr.us.i, align 1, !dbg !2590
  %cmp17.us.i.1 = icmp eq i8 %8, 0, !dbg !2591
  br i1 %cmp17.us.i.1, label %if.then.us.i.1, label %lor.lhs.false.us.i.1, !dbg !2592

lor.lhs.false.us.i.1:                             ; preds = %if.then.us.i
  %incdec.ptr23.us.i = getelementptr inbounds i8, ptr %arrayidx4, i64 1, !dbg !2601
    #dbg_value(ptr %incdec.ptr23.us.i, !2071, !DIExpression(), !2570)
  %conv16.us.i.1 = zext i8 %8 to i32, !dbg !2590
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2593)
    #dbg_value(i32 %conv16.us.i.1, !2107, !DIExpression(), !2593)
  %sub.i.us.i.1 = sub nsw i32 24, %conv16.us.i.1, !dbg !2595
  %shr.i.us.i.1 = lshr i32 %and10.i, %sub.i.us.i.1, !dbg !2596
  %9 = load i8, ptr %incdec.ptr23.us.i, align 1, !dbg !2597
  %conv20.us.i.1 = zext i8 %9 to i32, !dbg !2597
  %cmp21.not.us.i.1 = icmp eq i32 %shr.i.us.i.1, %conv20.us.i.1, !dbg !2598
  br i1 %cmp21.not.us.i.1, label %if.end, label %if.then.us.i.1, !dbg !2599

if.then.us.i.1:                                   ; preds = %lor.lhs.false.us.i.1, %if.then.us.i
  %incdec.ptr.us.i.1 = getelementptr inbounds i8, ptr %arrayidx, i64 2, !dbg !2600
    #dbg_value(ptr %incdec.ptr.us.i.1, !2070, !DIExpression(), !2570)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !2570)
    #dbg_value(i32 2, !2068, !DIExpression(), !2570)
  %10 = load i8, ptr %incdec.ptr.us.i.1, align 2, !dbg !2590
  %cmp17.us.i.2 = icmp eq i8 %10, 0, !dbg !2591
  br i1 %cmp17.us.i.2, label %if.then.us.i.2, label %lor.lhs.false.us.i.2, !dbg !2592

lor.lhs.false.us.i.2:                             ; preds = %if.then.us.i.1
  %incdec.ptr23.us.i.1 = getelementptr inbounds i8, ptr %arrayidx4, i64 2, !dbg !2601
    #dbg_value(ptr %incdec.ptr23.us.i.1, !2071, !DIExpression(), !2570)
  %conv16.us.i.2 = zext i8 %10 to i32, !dbg !2590
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2593)
    #dbg_value(i32 %conv16.us.i.2, !2107, !DIExpression(), !2593)
  %sub.i.us.i.2 = sub nsw i32 24, %conv16.us.i.2, !dbg !2595
  %shr.i.us.i.2 = lshr i32 %and10.i, %sub.i.us.i.2, !dbg !2596
  %11 = load i8, ptr %incdec.ptr23.us.i.1, align 2, !dbg !2597
  %conv20.us.i.2 = zext i8 %11 to i32, !dbg !2597
  %cmp21.not.us.i.2 = icmp eq i32 %shr.i.us.i.2, %conv20.us.i.2, !dbg !2598
  br i1 %cmp21.not.us.i.2, label %if.end, label %if.then.us.i.2, !dbg !2599

if.then.us.i.2:                                   ; preds = %lor.lhs.false.us.i.2, %if.then.us.i.1
  %incdec.ptr.us.i.2 = getelementptr inbounds i8, ptr %arrayidx, i64 3, !dbg !2600
    #dbg_value(ptr %incdec.ptr.us.i.2, !2070, !DIExpression(), !2570)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !2570)
    #dbg_value(i32 3, !2068, !DIExpression(), !2570)
  %12 = load i8, ptr %incdec.ptr.us.i.2, align 1, !dbg !2590
  %cmp17.us.i.3 = icmp eq i8 %12, 0, !dbg !2591
  br i1 %cmp17.us.i.3, label %if.then.us.i.3, label %lor.lhs.false.us.i.3, !dbg !2592

lor.lhs.false.us.i.3:                             ; preds = %if.then.us.i.2
  %incdec.ptr23.us.i.2 = getelementptr inbounds i8, ptr %arrayidx4, i64 3, !dbg !2601
    #dbg_value(ptr %incdec.ptr23.us.i.2, !2071, !DIExpression(), !2570)
  %conv16.us.i.3 = zext i8 %12 to i32, !dbg !2590
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2593)
    #dbg_value(i32 %conv16.us.i.3, !2107, !DIExpression(), !2593)
  %sub.i.us.i.3 = sub nsw i32 24, %conv16.us.i.3, !dbg !2595
  %shr.i.us.i.3 = lshr i32 %and10.i, %sub.i.us.i.3, !dbg !2596
  %13 = load i8, ptr %incdec.ptr23.us.i.2, align 1, !dbg !2597
  %conv20.us.i.3 = zext i8 %13 to i32, !dbg !2597
  %cmp21.not.us.i.3 = icmp eq i32 %shr.i.us.i.3, %conv20.us.i.3, !dbg !2598
  br i1 %cmp21.not.us.i.3, label %if.end, label %if.then.us.i.3, !dbg !2599

if.then.us.i.3:                                   ; preds = %lor.lhs.false.us.i.3, %if.then.us.i.2
  %incdec.ptr.us.i.3 = getelementptr inbounds i8, ptr %arrayidx, i64 4, !dbg !2600
    #dbg_value(ptr %incdec.ptr.us.i.3, !2070, !DIExpression(), !2570)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !2570)
    #dbg_value(i32 4, !2068, !DIExpression(), !2570)
  %14 = load i8, ptr %incdec.ptr.us.i.3, align 4, !dbg !2590
  %cmp17.us.i.4 = icmp eq i8 %14, 0, !dbg !2591
  br i1 %cmp17.us.i.4, label %if.then.us.i.4, label %lor.lhs.false.us.i.4, !dbg !2592

lor.lhs.false.us.i.4:                             ; preds = %if.then.us.i.3
  %incdec.ptr23.us.i.3 = getelementptr inbounds i8, ptr %arrayidx4, i64 4, !dbg !2601
    #dbg_value(ptr %incdec.ptr23.us.i.3, !2071, !DIExpression(), !2570)
  %conv16.us.i.4 = zext i8 %14 to i32, !dbg !2590
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2593)
    #dbg_value(i32 %conv16.us.i.4, !2107, !DIExpression(), !2593)
  %sub.i.us.i.4 = sub nsw i32 24, %conv16.us.i.4, !dbg !2595
  %shr.i.us.i.4 = lshr i32 %and10.i, %sub.i.us.i.4, !dbg !2596
  %15 = load i8, ptr %incdec.ptr23.us.i.3, align 4, !dbg !2597
  %conv20.us.i.4 = zext i8 %15 to i32, !dbg !2597
  %cmp21.not.us.i.4 = icmp eq i32 %shr.i.us.i.4, %conv20.us.i.4, !dbg !2598
  br i1 %cmp21.not.us.i.4, label %if.end, label %if.then.us.i.4, !dbg !2599

if.then.us.i.4:                                   ; preds = %lor.lhs.false.us.i.4, %if.then.us.i.3
  %incdec.ptr.us.i.4 = getelementptr inbounds i8, ptr %arrayidx, i64 5, !dbg !2600
    #dbg_value(ptr %incdec.ptr.us.i.4, !2070, !DIExpression(), !2570)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value), !2570)
    #dbg_value(i32 5, !2068, !DIExpression(), !2570)
  %16 = load i8, ptr %incdec.ptr.us.i.4, align 1, !dbg !2590
  %cmp17.us.i.5 = icmp eq i8 %16, 0, !dbg !2591
  br i1 %cmp17.us.i.5, label %if.then.us.i.5, label %lor.lhs.false.us.i.5, !dbg !2592

lor.lhs.false.us.i.5:                             ; preds = %if.then.us.i.4
  %incdec.ptr23.us.i.4 = getelementptr inbounds i8, ptr %arrayidx4, i64 5, !dbg !2601
    #dbg_value(ptr %incdec.ptr23.us.i.4, !2071, !DIExpression(), !2570)
  %conv16.us.i.5 = zext i8 %16 to i32, !dbg !2590
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2593)
    #dbg_value(i32 %conv16.us.i.5, !2107, !DIExpression(), !2593)
  %sub.i.us.i.5 = sub nsw i32 24, %conv16.us.i.5, !dbg !2595
  %shr.i.us.i.5 = lshr i32 %and10.i, %sub.i.us.i.5, !dbg !2596
  %17 = load i8, ptr %incdec.ptr23.us.i.4, align 1, !dbg !2597
  %conv20.us.i.5 = zext i8 %17 to i32, !dbg !2597
  %cmp21.not.us.i.5 = icmp eq i32 %shr.i.us.i.5, %conv20.us.i.5, !dbg !2598
  br i1 %cmp21.not.us.i.5, label %if.end, label %if.then.us.i.5, !dbg !2599

if.then.us.i.5:                                   ; preds = %lor.lhs.false.us.i.5, %if.then.us.i.4
  %incdec.ptr.us.i.5 = getelementptr inbounds i8, ptr %arrayidx, i64 6, !dbg !2600
    #dbg_value(ptr %incdec.ptr.us.i.5, !2070, !DIExpression(), !2570)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !2570)
    #dbg_value(i32 6, !2068, !DIExpression(), !2570)
  %18 = load i8, ptr %incdec.ptr.us.i.5, align 2, !dbg !2590
  %cmp17.us.i.6 = icmp eq i8 %18, 0, !dbg !2591
  br i1 %cmp17.us.i.6, label %if.then.us.i.6, label %lor.lhs.false.us.i.6, !dbg !2592

lor.lhs.false.us.i.6:                             ; preds = %if.then.us.i.5
  %incdec.ptr23.us.i.5 = getelementptr inbounds i8, ptr %arrayidx4, i64 6, !dbg !2601
    #dbg_value(ptr %incdec.ptr23.us.i.5, !2071, !DIExpression(), !2570)
  %conv16.us.i.6 = zext i8 %18 to i32, !dbg !2590
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2593)
    #dbg_value(i32 %conv16.us.i.6, !2107, !DIExpression(), !2593)
  %sub.i.us.i.6 = sub nsw i32 24, %conv16.us.i.6, !dbg !2595
  %shr.i.us.i.6 = lshr i32 %and10.i, %sub.i.us.i.6, !dbg !2596
  %19 = load i8, ptr %incdec.ptr23.us.i.5, align 2, !dbg !2597
  %conv20.us.i.6 = zext i8 %19 to i32, !dbg !2597
  %cmp21.not.us.i.6 = icmp eq i32 %shr.i.us.i.6, %conv20.us.i.6, !dbg !2598
  br i1 %cmp21.not.us.i.6, label %if.end, label %if.then.us.i.6, !dbg !2599

if.then.us.i.6:                                   ; preds = %lor.lhs.false.us.i.6, %if.then.us.i.5
  %incdec.ptr.us.i.6 = getelementptr inbounds i8, ptr %arrayidx, i64 7, !dbg !2600
    #dbg_value(ptr %incdec.ptr.us.i.6, !2070, !DIExpression(), !2570)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !2570)
    #dbg_value(i32 7, !2068, !DIExpression(), !2570)
  %20 = load i8, ptr %incdec.ptr.us.i.6, align 1, !dbg !2590
  %cmp17.us.i.7 = icmp eq i8 %20, 0, !dbg !2591
  br i1 %cmp17.us.i.7, label %if.then.us.i.7, label %lor.lhs.false.us.i.7, !dbg !2592

lor.lhs.false.us.i.7:                             ; preds = %if.then.us.i.6
  %incdec.ptr23.us.i.6 = getelementptr inbounds i8, ptr %arrayidx4, i64 7, !dbg !2601
    #dbg_value(ptr %incdec.ptr23.us.i.6, !2071, !DIExpression(), !2570)
  %conv16.us.i.7 = zext i8 %20 to i32, !dbg !2590
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2593)
    #dbg_value(i32 %conv16.us.i.7, !2107, !DIExpression(), !2593)
  %sub.i.us.i.7 = sub nsw i32 24, %conv16.us.i.7, !dbg !2595
  %shr.i.us.i.7 = lshr i32 %and10.i, %sub.i.us.i.7, !dbg !2596
  %21 = load i8, ptr %incdec.ptr23.us.i.6, align 1, !dbg !2597
  %conv20.us.i.7 = zext i8 %21 to i32, !dbg !2597
  %cmp21.not.us.i.7 = icmp eq i32 %shr.i.us.i.7, %conv20.us.i.7, !dbg !2598
  br i1 %cmp21.not.us.i.7, label %if.end, label %if.then.us.i.7, !dbg !2599

if.then.us.i.7:                                   ; preds = %lor.lhs.false.us.i.7, %if.then.us.i.6
  %incdec.ptr.us.i.7 = getelementptr inbounds i8, ptr %arrayidx, i64 8, !dbg !2600
    #dbg_value(ptr %incdec.ptr.us.i.7, !2070, !DIExpression(), !2570)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2570)
    #dbg_value(i32 8, !2068, !DIExpression(), !2570)
  %22 = load i8, ptr %incdec.ptr.us.i.7, align 8, !dbg !2590
  %cmp17.us.i.8 = icmp eq i8 %22, 0, !dbg !2591
  br i1 %cmp17.us.i.8, label %if.then.us.i.8, label %lor.lhs.false.us.i.8, !dbg !2592

lor.lhs.false.us.i.8:                             ; preds = %if.then.us.i.7
  %incdec.ptr23.us.i.7 = getelementptr inbounds i8, ptr %arrayidx4, i64 8, !dbg !2601
    #dbg_value(ptr %incdec.ptr23.us.i.7, !2071, !DIExpression(), !2570)
  %conv16.us.i.8 = zext i8 %22 to i32, !dbg !2590
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2593)
    #dbg_value(i32 %conv16.us.i.8, !2107, !DIExpression(), !2593)
  %sub.i.us.i.8 = sub nsw i32 24, %conv16.us.i.8, !dbg !2595
  %shr.i.us.i.8 = lshr i32 %and10.i, %sub.i.us.i.8, !dbg !2596
  %23 = load i8, ptr %incdec.ptr23.us.i.7, align 8, !dbg !2597
  %conv20.us.i.8 = zext i8 %23 to i32, !dbg !2597
  %cmp21.not.us.i.8 = icmp eq i32 %shr.i.us.i.8, %conv20.us.i.8, !dbg !2598
  br i1 %cmp21.not.us.i.8, label %if.end, label %if.then.us.i.8, !dbg !2599

if.then.us.i.8:                                   ; preds = %lor.lhs.false.us.i.8, %if.then.us.i.7
  %incdec.ptr.us.i.8 = getelementptr inbounds i8, ptr %arrayidx, i64 9, !dbg !2600
    #dbg_value(ptr %incdec.ptr.us.i.8, !2070, !DIExpression(), !2570)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 9, DW_OP_stack_value), !2570)
    #dbg_value(i32 9, !2068, !DIExpression(), !2570)
  %24 = load i8, ptr %incdec.ptr.us.i.8, align 1, !dbg !2590
  %cmp17.us.i.9 = icmp eq i8 %24, 0, !dbg !2591
  br i1 %cmp17.us.i.9, label %if.then.us.i.9, label %lor.lhs.false.us.i.9, !dbg !2592

lor.lhs.false.us.i.9:                             ; preds = %if.then.us.i.8
  %incdec.ptr23.us.i.8 = getelementptr inbounds i8, ptr %arrayidx4, i64 9, !dbg !2601
    #dbg_value(ptr %incdec.ptr23.us.i.8, !2071, !DIExpression(), !2570)
  %conv16.us.i.9 = zext i8 %24 to i32, !dbg !2590
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2593)
    #dbg_value(i32 %conv16.us.i.9, !2107, !DIExpression(), !2593)
  %sub.i.us.i.9 = sub nsw i32 24, %conv16.us.i.9, !dbg !2595
  %shr.i.us.i.9 = lshr i32 %and10.i, %sub.i.us.i.9, !dbg !2596
  %25 = load i8, ptr %incdec.ptr23.us.i.8, align 1, !dbg !2597
  %conv20.us.i.9 = zext i8 %25 to i32, !dbg !2597
  %cmp21.not.us.i.9 = icmp eq i32 %shr.i.us.i.9, %conv20.us.i.9, !dbg !2598
  br i1 %cmp21.not.us.i.9, label %if.end, label %if.then.us.i.9, !dbg !2599

if.then.us.i.9:                                   ; preds = %lor.lhs.false.us.i.9, %if.then.us.i.8
  %incdec.ptr.us.i.9 = getelementptr inbounds i8, ptr %arrayidx, i64 10, !dbg !2600
    #dbg_value(ptr %incdec.ptr.us.i.9, !2070, !DIExpression(), !2570)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 10, DW_OP_stack_value), !2570)
    #dbg_value(i32 10, !2068, !DIExpression(), !2570)
  %26 = load i8, ptr %incdec.ptr.us.i.9, align 2, !dbg !2590
  %cmp17.us.i.10 = icmp eq i8 %26, 0, !dbg !2591
  br i1 %cmp17.us.i.10, label %if.then.us.i.10, label %lor.lhs.false.us.i.10, !dbg !2592

lor.lhs.false.us.i.10:                            ; preds = %if.then.us.i.9
  %incdec.ptr23.us.i.9 = getelementptr inbounds i8, ptr %arrayidx4, i64 10, !dbg !2601
    #dbg_value(ptr %incdec.ptr23.us.i.9, !2071, !DIExpression(), !2570)
  %conv16.us.i.10 = zext i8 %26 to i32, !dbg !2590
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2593)
    #dbg_value(i32 %conv16.us.i.10, !2107, !DIExpression(), !2593)
  %sub.i.us.i.10 = sub nsw i32 24, %conv16.us.i.10, !dbg !2595
  %shr.i.us.i.10 = lshr i32 %and10.i, %sub.i.us.i.10, !dbg !2596
  %27 = load i8, ptr %incdec.ptr23.us.i.9, align 2, !dbg !2597
  %conv20.us.i.10 = zext i8 %27 to i32, !dbg !2597
  %cmp21.not.us.i.10 = icmp eq i32 %shr.i.us.i.10, %conv20.us.i.10, !dbg !2598
  br i1 %cmp21.not.us.i.10, label %if.end, label %if.then.us.i.10, !dbg !2599

if.then.us.i.10:                                  ; preds = %lor.lhs.false.us.i.10, %if.then.us.i.9
  %incdec.ptr.us.i.10 = getelementptr inbounds i8, ptr %arrayidx, i64 11, !dbg !2600
    #dbg_value(ptr %incdec.ptr.us.i.10, !2070, !DIExpression(), !2570)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 11, DW_OP_stack_value), !2570)
    #dbg_value(i32 11, !2068, !DIExpression(), !2570)
  %28 = load i8, ptr %incdec.ptr.us.i.10, align 1, !dbg !2590
  %cmp17.us.i.11 = icmp eq i8 %28, 0, !dbg !2591
  br i1 %cmp17.us.i.11, label %if.then.us.i.11, label %lor.lhs.false.us.i.11, !dbg !2592

lor.lhs.false.us.i.11:                            ; preds = %if.then.us.i.10
  %incdec.ptr23.us.i.10 = getelementptr inbounds i8, ptr %arrayidx4, i64 11, !dbg !2601
    #dbg_value(ptr %incdec.ptr23.us.i.10, !2071, !DIExpression(), !2570)
  %conv16.us.i.11 = zext i8 %28 to i32, !dbg !2590
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2593)
    #dbg_value(i32 %conv16.us.i.11, !2107, !DIExpression(), !2593)
  %sub.i.us.i.11 = sub nsw i32 24, %conv16.us.i.11, !dbg !2595
  %shr.i.us.i.11 = lshr i32 %and10.i, %sub.i.us.i.11, !dbg !2596
  %29 = load i8, ptr %incdec.ptr23.us.i.10, align 1, !dbg !2597
  %conv20.us.i.11 = zext i8 %29 to i32, !dbg !2597
  %cmp21.not.us.i.11 = icmp eq i32 %shr.i.us.i.11, %conv20.us.i.11, !dbg !2598
  br i1 %cmp21.not.us.i.11, label %if.end, label %if.then.us.i.11, !dbg !2599

if.then.us.i.11:                                  ; preds = %lor.lhs.false.us.i.11, %if.then.us.i.10
  %incdec.ptr.us.i.11 = getelementptr inbounds i8, ptr %arrayidx, i64 12, !dbg !2600
    #dbg_value(ptr %incdec.ptr.us.i.11, !2070, !DIExpression(), !2570)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !2570)
    #dbg_value(i32 12, !2068, !DIExpression(), !2570)
  %30 = load i8, ptr %incdec.ptr.us.i.11, align 4, !dbg !2590
  %cmp17.us.i.12 = icmp eq i8 %30, 0, !dbg !2591
  br i1 %cmp17.us.i.12, label %if.then.us.i.12, label %lor.lhs.false.us.i.12, !dbg !2592

lor.lhs.false.us.i.12:                            ; preds = %if.then.us.i.11
  %incdec.ptr23.us.i.11 = getelementptr inbounds i8, ptr %arrayidx4, i64 12, !dbg !2601
    #dbg_value(ptr %incdec.ptr23.us.i.11, !2071, !DIExpression(), !2570)
  %conv16.us.i.12 = zext i8 %30 to i32, !dbg !2590
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2593)
    #dbg_value(i32 %conv16.us.i.12, !2107, !DIExpression(), !2593)
  %sub.i.us.i.12 = sub nsw i32 24, %conv16.us.i.12, !dbg !2595
  %shr.i.us.i.12 = lshr i32 %and10.i, %sub.i.us.i.12, !dbg !2596
  %31 = load i8, ptr %incdec.ptr23.us.i.11, align 4, !dbg !2597
  %conv20.us.i.12 = zext i8 %31 to i32, !dbg !2597
  %cmp21.not.us.i.12 = icmp eq i32 %shr.i.us.i.12, %conv20.us.i.12, !dbg !2598
  br i1 %cmp21.not.us.i.12, label %if.end, label %if.then.us.i.12, !dbg !2599

if.then.us.i.12:                                  ; preds = %lor.lhs.false.us.i.12, %if.then.us.i.11
  %incdec.ptr.us.i.12 = getelementptr inbounds i8, ptr %arrayidx, i64 13, !dbg !2600
    #dbg_value(ptr %incdec.ptr.us.i.12, !2070, !DIExpression(), !2570)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 13, DW_OP_stack_value), !2570)
    #dbg_value(i32 13, !2068, !DIExpression(), !2570)
  %32 = load i8, ptr %incdec.ptr.us.i.12, align 1, !dbg !2590
  %cmp17.us.i.13 = icmp eq i8 %32, 0, !dbg !2591
  br i1 %cmp17.us.i.13, label %if.then.us.i.13, label %lor.lhs.false.us.i.13, !dbg !2592

lor.lhs.false.us.i.13:                            ; preds = %if.then.us.i.12
  %incdec.ptr23.us.i.12 = getelementptr inbounds i8, ptr %arrayidx4, i64 13, !dbg !2601
    #dbg_value(ptr %incdec.ptr23.us.i.12, !2071, !DIExpression(), !2570)
  %conv16.us.i.13 = zext i8 %32 to i32, !dbg !2590
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2593)
    #dbg_value(i32 %conv16.us.i.13, !2107, !DIExpression(), !2593)
  %sub.i.us.i.13 = sub nsw i32 24, %conv16.us.i.13, !dbg !2595
  %shr.i.us.i.13 = lshr i32 %and10.i, %sub.i.us.i.13, !dbg !2596
  %33 = load i8, ptr %incdec.ptr23.us.i.12, align 1, !dbg !2597
  %conv20.us.i.13 = zext i8 %33 to i32, !dbg !2597
  %cmp21.not.us.i.13 = icmp eq i32 %shr.i.us.i.13, %conv20.us.i.13, !dbg !2598
  br i1 %cmp21.not.us.i.13, label %if.end, label %if.then.us.i.13, !dbg !2599

if.then.us.i.13:                                  ; preds = %lor.lhs.false.us.i.13, %if.then.us.i.12
  %incdec.ptr.us.i.13 = getelementptr inbounds i8, ptr %arrayidx, i64 14, !dbg !2600
    #dbg_value(ptr %incdec.ptr.us.i.13, !2070, !DIExpression(), !2570)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 14, DW_OP_stack_value), !2570)
    #dbg_value(i32 14, !2068, !DIExpression(), !2570)
  %34 = load i8, ptr %incdec.ptr.us.i.13, align 2, !dbg !2590
  %cmp17.us.i.14 = icmp eq i8 %34, 0, !dbg !2591
  br i1 %cmp17.us.i.14, label %if.then.us.i.14, label %lor.lhs.false.us.i.14, !dbg !2592

lor.lhs.false.us.i.14:                            ; preds = %if.then.us.i.13
  %incdec.ptr23.us.i.13 = getelementptr inbounds i8, ptr %arrayidx4, i64 14, !dbg !2601
    #dbg_value(ptr %incdec.ptr23.us.i.13, !2071, !DIExpression(), !2570)
  %conv16.us.i.14 = zext i8 %34 to i32, !dbg !2590
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2593)
    #dbg_value(i32 %conv16.us.i.14, !2107, !DIExpression(), !2593)
  %sub.i.us.i.14 = sub nsw i32 24, %conv16.us.i.14, !dbg !2595
  %shr.i.us.i.14 = lshr i32 %and10.i, %sub.i.us.i.14, !dbg !2596
  %35 = load i8, ptr %incdec.ptr23.us.i.13, align 2, !dbg !2597
  %conv20.us.i.14 = zext i8 %35 to i32, !dbg !2597
  %cmp21.not.us.i.14 = icmp eq i32 %shr.i.us.i.14, %conv20.us.i.14, !dbg !2598
  br i1 %cmp21.not.us.i.14, label %if.end, label %if.then.us.i.14, !dbg !2599

if.then.us.i.14:                                  ; preds = %lor.lhs.false.us.i.14, %if.then.us.i.13
  %incdec.ptr.us.i.14 = getelementptr inbounds i8, ptr %arrayidx, i64 15, !dbg !2600
    #dbg_value(ptr %incdec.ptr.us.i.14, !2070, !DIExpression(), !2570)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 15, DW_OP_stack_value), !2570)
    #dbg_value(i32 15, !2068, !DIExpression(), !2570)
  %36 = load i8, ptr %incdec.ptr.us.i.14, align 1, !dbg !2590
  %cmp17.us.i.15 = icmp eq i8 %36, 0, !dbg !2591
  br i1 %cmp17.us.i.15, label %if.then.us.i.15, label %lor.lhs.false.us.i.15, !dbg !2592

lor.lhs.false.us.i.15:                            ; preds = %if.then.us.i.14
  %incdec.ptr23.us.i.14 = getelementptr inbounds i8, ptr %arrayidx4, i64 15, !dbg !2601
    #dbg_value(ptr %incdec.ptr23.us.i.14, !2071, !DIExpression(), !2570)
  %conv16.us.i.15 = zext i8 %36 to i32, !dbg !2590
    #dbg_value(i32 %and10.i, !2104, !DIExpression(), !2593)
    #dbg_value(i32 %conv16.us.i.15, !2107, !DIExpression(), !2593)
  %sub.i.us.i.15 = sub nsw i32 24, %conv16.us.i.15, !dbg !2595
  %shr.i.us.i.15 = lshr i32 %and10.i, %sub.i.us.i.15, !dbg !2596
  %37 = load i8, ptr %incdec.ptr23.us.i.14, align 1, !dbg !2597
  %conv20.us.i.15 = zext i8 %37 to i32, !dbg !2597
  %cmp21.not.us.i.15 = icmp eq i32 %shr.i.us.i.15, %conv20.us.i.15, !dbg !2598
  br i1 %cmp21.not.us.i.15, label %if.end, label %if.then.us.i.15, !dbg !2599

if.then.us.i.15:                                  ; preds = %lor.lhs.false.us.i.15, %if.then.us.i.14
    #dbg_value(ptr %incdec.ptr.us.i.14, !2070, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2570)
    #dbg_value(ptr %arrayidx4, !2071, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !2570)
    #dbg_value(i32 16, !2068, !DIExpression(), !2570)
    #dbg_value(ptr poison, !2071, !DIExpression(), !2570)
    #dbg_value(ptr poison, !2070, !DIExpression(), !2570)
    #dbg_value(i32 1, !2069, !DIExpression(), !2570)
    #dbg_value(i32 -1, !1189, !DIExpression(), !2566)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9), !dbg !2602
  tail call void @exit(i32 noundef -1) #14, !dbg !2605
  unreachable, !dbg !2605

if.end:                                           ; preds = %lor.lhs.false.us.i.15, %lor.lhs.false.us.i.14, %lor.lhs.false.us.i.13, %lor.lhs.false.us.i.12, %lor.lhs.false.us.i.11, %lor.lhs.false.us.i.10, %lor.lhs.false.us.i.9, %lor.lhs.false.us.i.8, %lor.lhs.false.us.i.7, %lor.lhs.false.us.i.6, %lor.lhs.false.us.i.5, %lor.lhs.false.us.i.4, %lor.lhs.false.us.i.3, %lor.lhs.false.us.i.2, %lor.lhs.false.us.i.1, %lor.lhs.false.us.i
  %i.064.us.i.lcssa = phi i32 [ 0, %lor.lhs.false.us.i ], [ 1, %lor.lhs.false.us.i.1 ], [ 2, %lor.lhs.false.us.i.2 ], [ 3, %lor.lhs.false.us.i.3 ], [ 4, %lor.lhs.false.us.i.4 ], [ 5, %lor.lhs.false.us.i.5 ], [ 6, %lor.lhs.false.us.i.6 ], [ 7, %lor.lhs.false.us.i.7 ], [ 8, %lor.lhs.false.us.i.8 ], [ 9, %lor.lhs.false.us.i.9 ], [ 10, %lor.lhs.false.us.i.10 ], [ 11, %lor.lhs.false.us.i.11 ], [ 12, %lor.lhs.false.us.i.12 ], [ 13, %lor.lhs.false.us.i.13 ], [ 14, %lor.lhs.false.us.i.14 ], [ 15, %lor.lhs.false.us.i.15 ]
  %conv16.us.i.lcssa = phi i32 [ %conv16.us.i, %lor.lhs.false.us.i ], [ %conv16.us.i.1, %lor.lhs.false.us.i.1 ], [ %conv16.us.i.2, %lor.lhs.false.us.i.2 ], [ %conv16.us.i.3, %lor.lhs.false.us.i.3 ], [ %conv16.us.i.4, %lor.lhs.false.us.i.4 ], [ %conv16.us.i.5, %lor.lhs.false.us.i.5 ], [ %conv16.us.i.6, %lor.lhs.false.us.i.6 ], [ %conv16.us.i.7, %lor.lhs.false.us.i.7 ], [ %conv16.us.i.8, %lor.lhs.false.us.i.8 ], [ %conv16.us.i.9, %lor.lhs.false.us.i.9 ], [ %conv16.us.i.10, %lor.lhs.false.us.i.10 ], [ %conv16.us.i.11, %lor.lhs.false.us.i.11 ], [ %conv16.us.i.12, %lor.lhs.false.us.i.12 ], [ %conv16.us.i.13, %lor.lhs.false.us.i.13 ], [ %conv16.us.i.14, %lor.lhs.false.us.i.14 ], [ %conv16.us.i.15, %lor.lhs.false.us.i.15 ], !dbg !2590
  %len25.i = getelementptr inbounds i8, ptr %sym, i64 12, !dbg !2606
  store i32 %conv16.us.i.lcssa, ptr %len25.i, align 4, !dbg !2607
  %38 = load i32, ptr %frame_bitoffset2.i, align 4, !dbg !2608
  %add27.i = add nsw i32 %38, %conv16.us.i.lcssa, !dbg !2608
  store i32 %add27.i, ptr %frame_bitoffset2.i, align 4, !dbg !2608
    #dbg_value(i8 %7, !1187, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2566)
  store i32 %i.064.us.i.lcssa, ptr %value1, align 4, !dbg !2609
  %value2.i = getelementptr inbounds i8, ptr %sym, i64 8, !dbg !2610
  store i32 0, ptr %value2.i, align 8, !dbg !2611
    #dbg_value(i32 0, !1189, !DIExpression(), !2566)
  ret i32 0, !dbg !2612
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1220, !1221, !1222, !1223, !1224, !1225, !1226}
!llvm.ident = !{!1227}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "NTAB1", scope: !2, file: !1199, line: 36, type: !1218, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !44, globals: !45, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "ldecod_src/vlc.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e8b2d3aa1f717a338bbdecbd91ac66cf")
!4 = !{!5, !14, !20, !29, !39}
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
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 22, baseType: !31, size: 32, elements: !32)
!30 = !DIFile(filename: "ldecod_src/inc/types.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "64f87bd13f2911471c7313b4ac17e90c")
!31 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!32 = !{!33, !34, !35, !36, !37, !38}
!33 = !DIEnumerator(name: "PLANE_Y", value: 0)
!34 = !DIEnumerator(name: "PLANE_U", value: 1)
!35 = !DIEnumerator(name: "PLANE_V", value: 2)
!36 = !DIEnumerator(name: "PLANE_G", value: 0)
!37 = !DIEnumerator(name: "PLANE_B", value: 1)
!38 = !DIEnumerator(name: "PLANE_R", value: 2)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 135, baseType: !31, size: 32, elements: !40)
!40 = !{!41, !42, !43}
!41 = !DIEnumerator(name: "FRAME", value: 0)
!42 = !DIEnumerator(name: "TOP_FIELD", value: 1)
!43 = !DIEnumerator(name: "BOTTOM_FIELD", value: 2)
!44 = !{!7, !31}
!45 = !{!46, !1113, !1115, !1120, !1134, !1136, !1141, !1154, !1156, !1161, !1174, !1176, !1181, !1190, !1192, !1197, !0, !1203, !1206, !1210, !1213}
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "lentab", scope: !48, file: !3, line: 703, type: !1110, isLocal: true, isDefinition: true)
!48 = distinct !DISubprogram(name: "readSyntaxElement_NumCoeffTrailingOnes", scope: !3, file: !3, line: 694, type: !49, scopeLine: 697, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1099)
!49 = !DISubroutineType(types: !50)
!50 = !{!7, !51, !809, !369}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !53, line: 296, baseType: !54)
!53 = !DIFile(filename: "ldecod_src/inc/global.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c4ca3c417c5616a2ff6b6266e7376fc1")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !53, line: 276, size: 384, elements: !55)
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63, !64, !69}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !54, file: !53, line: 278, baseType: !7, size: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !54, file: !53, line: 279, baseType: !7, size: 32, offset: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !54, file: !53, line: 280, baseType: !7, size: 32, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !54, file: !53, line: 281, baseType: !7, size: 32, offset: 96)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !54, file: !53, line: 282, baseType: !7, size: 32, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !54, file: !53, line: 283, baseType: !31, size: 32, offset: 160)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !54, file: !53, line: 284, baseType: !7, size: 32, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !54, file: !53, line: 285, baseType: !7, size: 32, offset: 224)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !54, file: !53, line: 293, baseType: !65, size: 64, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !7, !7, !68, !68}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "reading", scope: !54, file: !53, line: 295, baseType: !70, size: 64, offset: 320)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !73, !1097, !1091}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "Macroblock", file: !53, line: 273, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "macroblock", file: !53, line: 197, size: 3840, elements: !76)
!76 = !{!77, !1004, !1005, !1006, !1007, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1036, !1037, !1038, !1039, !1040, !1043, !1044, !1046, !1047, !1048, !1049, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1073, !1074, !1087, !1093, !1098}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "p_Slice", scope: !75, file: !53, line: 199, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slice", file: !53, line: 341, size: 109184, elements: !80)
!80 = !{!81, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !798, !800, !803, !833, !863, !890, !893, !894, !896, !897, !898, !899, !900, !901, !902, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !929, !930, !931, !932, !933, !934, !937, !938, !941, !942, !944, !947, !948, !949, !950, !951, !952, !953, !954, !955, !957, !958, !959, !960, !961, !963, !964, !965, !969, !973, !977, !981, !985, !986, !987, !988, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !79, file: !53, line: 343, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_par", file: !53, line: 566, size: 6855040, elements: !84)
!84 = !{!85, !170, !227, !331, !333, !335, !393, !395, !396, !397, !398, !399, !402, !422, !434, !435, !436, !437, !438, !439, !443, !444, !446, !447, !448, !449, !450, !451, !453, !455, !458, !459, !461, !462, !463, !464, !465, !467, !468, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !498, !499, !500, !501, !502, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !586, !587, !591, !592, !593, !594, !595, !596, !597, !598, !599, !601, !602, !603, !606, !610, !613, !615, !616, !619, !622, !623, !624, !628, !631, !634, !635, !636, !637, !638, !639, !642, !643, !645, !649, !650, !651, !652, !655, !660, !674, !679, !683, !684, !689, !690, !694, !695, !699, !720, !721, !724, !725, !726, !727, !728, !729, !730, !731}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !83, file: !53, line: 568, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inp_par", file: !53, line: 850, size: 32128, elements: !88)
!88 = !{!89, !94, !95, !96, !97, !98, !99, !100, !101, !102, !132, !133, !134, !135, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "infile", scope: !87, file: !53, line: 852, baseType: !90, size: 2040)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 2040, elements: !92)
!91 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!92 = !{!93}
!93 = !DISubrange(count: 255)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "outfile", scope: !87, file: !53, line: 853, baseType: !90, size: 2040, offset: 2040)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "reffile", scope: !87, file: !53, line: 854, baseType: !90, size: 2040, offset: 4080)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "FileFormat", scope: !87, file: !53, line: 856, baseType: !7, size: 32, offset: 6144)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "ref_offset", scope: !87, file: !53, line: 857, baseType: !7, size: 32, offset: 6176)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "poc_scale", scope: !87, file: !53, line: 858, baseType: !7, size: 32, offset: 6208)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "write_uv", scope: !87, file: !53, line: 859, baseType: !7, size: 32, offset: 6240)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "silent", scope: !87, file: !53, line: 860, baseType: !7, size: 32, offset: 6272)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "intra_profile_deblocking", scope: !87, file: !53, line: 861, baseType: !7, size: 32, offset: 6304)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !87, file: !53, line: 864, baseType: !103, size: 1088, offset: 6336)
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
!132 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !87, file: !53, line: 865, baseType: !103, size: 1088, offset: 7424)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "ProcessInput", scope: !87, file: !53, line: 867, baseType: !7, size: 32, offset: 8512)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "enable_32_pulldown", scope: !87, file: !53, line: 868, baseType: !7, size: 32, offset: 8544)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "input_file1", scope: !87, file: !53, line: 869, baseType: !136, size: 7744, offset: 8576)
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
!157 = !DIDerivedType(tag: DW_TAG_member, name: "avi", scope: !137, file: !21, line: 56, baseType: !68, size: 64, offset: 7680)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "input_file2", scope: !87, file: !53, line: 870, baseType: !136, size: 7744, offset: 16320)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "input_file3", scope: !87, file: !53, line: 871, baseType: !136, size: 7744, offset: 24064)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "DecodeAllLayers", scope: !87, file: !53, line: 873, baseType: !7, size: 32, offset: 31808)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !87, file: !53, line: 884, baseType: !7, size: 32, offset: 31840)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !87, file: !53, line: 885, baseType: !7, size: 32, offset: 31872)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !87, file: !53, line: 886, baseType: !7, size: 32, offset: 31904)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !87, file: !53, line: 890, baseType: !7, size: 32, offset: 31936)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "stdRange", scope: !87, file: !53, line: 893, baseType: !7, size: 32, offset: 31968)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "videoCode", scope: !87, file: !53, line: 894, baseType: !7, size: 32, offset: 32000)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "export_views", scope: !87, file: !53, line: 895, baseType: !7, size: 32, offset: 32032)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "iDecFrmNum", scope: !87, file: !53, line: 897, baseType: !7, size: 32, offset: 32064)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "bDisplayDecParams", scope: !87, file: !53, line: 899, baseType: !7, size: 32, offset: 32096)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !83, file: !53, line: 569, baseType: !171, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !173, line: 138, baseType: !174)
!173 = !DIFile(filename: "ldecod_src/inc/parsetcommon.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d59d7e00f3aec3a23ed88314ae35b687")
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !173, line: 94, size: 17728, elements: !175)
!175 = !{!176, !177, !178, !179, !180, !181, !182, !186, !191, !195, !198, !199, !200, !201, !202, !206, !207, !208, !209, !210, !211, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !174, file: !173, line: 96, baseType: !7, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !174, file: !173, line: 97, baseType: !31, size: 32, offset: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !174, file: !173, line: 98, baseType: !31, size: 32, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !174, file: !173, line: 99, baseType: !7, size: 32, offset: 96)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !174, file: !173, line: 100, baseType: !7, size: 32, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !174, file: !173, line: 102, baseType: !7, size: 32, offset: 160)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !174, file: !173, line: 103, baseType: !183, size: 384, offset: 192)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 384, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 12)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !174, file: !173, line: 104, baseType: !187, size: 3072, offset: 576)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3072, elements: !188)
!188 = !{!189, !190}
!189 = !DISubrange(count: 6)
!190 = !DISubrange(count: 16)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !174, file: !173, line: 105, baseType: !192, size: 12288, offset: 3648)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 12288, elements: !193)
!193 = !{!189, !194}
!194 = !DISubrange(count: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !174, file: !173, line: 106, baseType: !196, size: 192, offset: 15936)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 192, elements: !197)
!197 = !{!189}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !174, file: !173, line: 107, baseType: !196, size: 192, offset: 16128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_pic_order_in_frame_present_flag", scope: !174, file: !173, line: 110, baseType: !7, size: 32, offset: 16320)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !174, file: !173, line: 111, baseType: !31, size: 32, offset: 16352)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !174, file: !173, line: 112, baseType: !31, size: 32, offset: 16384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !174, file: !173, line: 114, baseType: !203, size: 256, offset: 16416)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 256, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 8)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !174, file: !173, line: 116, baseType: !203, size: 256, offset: 16672)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !174, file: !173, line: 117, baseType: !203, size: 256, offset: 16928)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !174, file: !173, line: 119, baseType: !7, size: 32, offset: 17184)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !174, file: !173, line: 120, baseType: !31, size: 32, offset: 17216)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !174, file: !173, line: 122, baseType: !31, size: 32, offset: 17248)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !174, file: !173, line: 123, baseType: !212, size: 64, offset: 17280)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !214, line: 21, baseType: !215)
!214 = !DIFile(filename: "ldecod_src/inc/typedefs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1393d024b72e653f4e6dbeffdb0b154")
!215 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !174, file: !173, line: 125, baseType: !7, size: 32, offset: 17344)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !174, file: !173, line: 126, baseType: !7, size: 32, offset: 17376)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !174, file: !173, line: 127, baseType: !7, size: 32, offset: 17408)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !174, file: !173, line: 128, baseType: !31, size: 32, offset: 17440)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !174, file: !173, line: 129, baseType: !7, size: 32, offset: 17472)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !174, file: !173, line: 130, baseType: !7, size: 32, offset: 17504)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !174, file: !173, line: 131, baseType: !7, size: 32, offset: 17536)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "second_chroma_qp_index_offset", scope: !174, file: !173, line: 133, baseType: !7, size: 32, offset: 17568)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !174, file: !173, line: 135, baseType: !7, size: 32, offset: 17600)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !174, file: !173, line: 136, baseType: !7, size: 32, offset: 17632)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !174, file: !173, line: 137, baseType: !7, size: 32, offset: 17664)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !83, file: !53, line: 570, baseType: !228, size: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !173, line: 197, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !173, line: 142, size: 33024, elements: !231)
!231 = !{!232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !329, !330}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !230, file: !173, line: 144, baseType: !7, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !230, file: !173, line: 146, baseType: !31, size: 32, offset: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !230, file: !173, line: 147, baseType: !7, size: 32, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !230, file: !173, line: 148, baseType: !7, size: 32, offset: 96)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !230, file: !173, line: 149, baseType: !7, size: 32, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !230, file: !173, line: 150, baseType: !7, size: 32, offset: 160)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set4_flag", scope: !230, file: !173, line: 152, baseType: !7, size: 32, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !230, file: !173, line: 154, baseType: !31, size: 32, offset: 224)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !230, file: !173, line: 155, baseType: !31, size: 32, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !230, file: !173, line: 156, baseType: !31, size: 32, offset: 288)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !230, file: !173, line: 158, baseType: !7, size: 32, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !230, file: !173, line: 159, baseType: !183, size: 384, offset: 352)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !230, file: !173, line: 160, baseType: !187, size: 3072, offset: 736)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !230, file: !173, line: 161, baseType: !192, size: 12288, offset: 3808)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !230, file: !173, line: 162, baseType: !196, size: 192, offset: 16096)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !230, file: !173, line: 163, baseType: !196, size: 192, offset: 16288)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !230, file: !173, line: 165, baseType: !31, size: 32, offset: 16480)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !230, file: !173, line: 166, baseType: !31, size: 32, offset: 16512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !230, file: !173, line: 167, baseType: !31, size: 32, offset: 16544)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !230, file: !173, line: 168, baseType: !31, size: 32, offset: 16576)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !230, file: !173, line: 170, baseType: !31, size: 32, offset: 16608)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !230, file: !173, line: 172, baseType: !7, size: 32, offset: 16640)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !230, file: !173, line: 173, baseType: !7, size: 32, offset: 16672)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !230, file: !173, line: 174, baseType: !7, size: 32, offset: 16704)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !230, file: !173, line: 175, baseType: !31, size: 32, offset: 16736)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !230, file: !173, line: 177, baseType: !258, size: 8192, offset: 16768)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8192, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !230, file: !173, line: 178, baseType: !31, size: 32, offset: 24960)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !230, file: !173, line: 179, baseType: !7, size: 32, offset: 24992)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !230, file: !173, line: 180, baseType: !31, size: 32, offset: 25024)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !230, file: !173, line: 181, baseType: !31, size: 32, offset: 25056)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !230, file: !173, line: 182, baseType: !7, size: 32, offset: 25088)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !230, file: !173, line: 184, baseType: !7, size: 32, offset: 25120)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !230, file: !173, line: 185, baseType: !7, size: 32, offset: 25152)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !230, file: !173, line: 186, baseType: !7, size: 32, offset: 25184)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !230, file: !173, line: 187, baseType: !31, size: 32, offset: 25216)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !230, file: !173, line: 188, baseType: !31, size: 32, offset: 25248)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !230, file: !173, line: 189, baseType: !31, size: 32, offset: 25280)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !230, file: !173, line: 190, baseType: !31, size: 32, offset: 25312)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !230, file: !173, line: 191, baseType: !7, size: 32, offset: 25344)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !230, file: !173, line: 192, baseType: !275, size: 7584, offset: 25376)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !173, line: 90, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !173, line: 53, size: 7584, elements: !277)
!277 = !{!278, !279, !280, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !276, file: !173, line: 55, baseType: !7, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !276, file: !173, line: 56, baseType: !31, size: 32, offset: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !276, file: !173, line: 57, baseType: !281, size: 16, offset: 64)
!281 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !276, file: !173, line: 58, baseType: !281, size: 16, offset: 80)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !276, file: !173, line: 59, baseType: !7, size: 32, offset: 96)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !276, file: !173, line: 60, baseType: !7, size: 32, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !276, file: !173, line: 61, baseType: !7, size: 32, offset: 160)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !276, file: !173, line: 62, baseType: !31, size: 32, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !276, file: !173, line: 63, baseType: !7, size: 32, offset: 224)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !276, file: !173, line: 64, baseType: !7, size: 32, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !276, file: !173, line: 65, baseType: !31, size: 32, offset: 288)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !276, file: !173, line: 66, baseType: !31, size: 32, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !276, file: !173, line: 67, baseType: !31, size: 32, offset: 352)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !276, file: !173, line: 68, baseType: !7, size: 32, offset: 384)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_top_field", scope: !276, file: !173, line: 69, baseType: !31, size: 32, offset: 416)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_bottom_field", scope: !276, file: !173, line: 70, baseType: !31, size: 32, offset: 448)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !276, file: !173, line: 71, baseType: !7, size: 32, offset: 480)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !276, file: !173, line: 72, baseType: !31, size: 32, offset: 512)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !276, file: !173, line: 73, baseType: !31, size: 32, offset: 544)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !276, file: !173, line: 74, baseType: !7, size: 32, offset: 576)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !276, file: !173, line: 75, baseType: !7, size: 32, offset: 608)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !276, file: !173, line: 76, baseType: !301, size: 3296, offset: 640)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !173, line: 50, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !173, line: 38, size: 3296, elements: !303)
!303 = !{!304, !305, !306, !307, !311, !312, !313, !314, !315, !316}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !302, file: !173, line: 40, baseType: !31, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !302, file: !173, line: 41, baseType: !31, size: 32, offset: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !302, file: !173, line: 42, baseType: !31, size: 32, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !302, file: !173, line: 43, baseType: !308, size: 1024, offset: 96)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1024, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !302, file: !173, line: 44, baseType: !308, size: 1024, offset: 1120)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !302, file: !173, line: 45, baseType: !308, size: 1024, offset: 2144)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !302, file: !173, line: 46, baseType: !31, size: 32, offset: 3168)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !302, file: !173, line: 47, baseType: !31, size: 32, offset: 3200)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !302, file: !173, line: 48, baseType: !31, size: 32, offset: 3232)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !302, file: !173, line: 49, baseType: !31, size: 32, offset: 3264)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !276, file: !173, line: 77, baseType: !7, size: 32, offset: 3936)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !276, file: !173, line: 78, baseType: !301, size: 3296, offset: 3968)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !276, file: !173, line: 80, baseType: !7, size: 32, offset: 7264)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !276, file: !173, line: 81, baseType: !7, size: 32, offset: 7296)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !276, file: !173, line: 82, baseType: !7, size: 32, offset: 7328)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !276, file: !173, line: 83, baseType: !7, size: 32, offset: 7360)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !276, file: !173, line: 84, baseType: !31, size: 32, offset: 7392)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !276, file: !173, line: 85, baseType: !31, size: 32, offset: 7424)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !276, file: !173, line: 86, baseType: !31, size: 32, offset: 7456)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !276, file: !173, line: 87, baseType: !31, size: 32, offset: 7488)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "num_reorder_frames", scope: !276, file: !173, line: 88, baseType: !31, size: 32, offset: 7520)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !276, file: !173, line: 89, baseType: !31, size: 32, offset: 7552)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !230, file: !173, line: 193, baseType: !31, size: 32, offset: 32960)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !230, file: !173, line: 195, baseType: !7, size: 32, offset: 32992)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "SeqParSet", scope: !83, file: !53, line: 571, baseType: !332, size: 1056768, offset: 192)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 1056768, elements: !309)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "PicParSet", scope: !83, file: !53, line: 572, baseType: !334, size: 4538368, offset: 1056960)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 4538368, elements: !259)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "active_subset_sps", scope: !83, file: !53, line: 575, baseType: !336, size: 64, offset: 5595328)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "subset_seq_parameter_set_rbsp_t", file: !173, line: 256, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !173, line: 228, size: 37312, elements: !339)
!339 = !{!340, !341, !342, !343, !344, !345, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !360, !361, !362, !363}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !338, file: !173, line: 230, baseType: !229, size: 33024)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "bit_equal_to_one", scope: !338, file: !173, line: 232, baseType: !31, size: 32, offset: 33024)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "num_views_minus1", scope: !338, file: !173, line: 233, baseType: !7, size: 32, offset: 33056)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !338, file: !173, line: 234, baseType: !68, size: 64, offset: 33088)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l0", scope: !338, file: !173, line: 235, baseType: !68, size: 64, offset: 33152)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l0", scope: !338, file: !173, line: 236, baseType: !346, size: 64, offset: 33216)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l1", scope: !338, file: !173, line: 237, baseType: !68, size: 64, offset: 33280)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l1", scope: !338, file: !173, line: 238, baseType: !346, size: 64, offset: 33344)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l0", scope: !338, file: !173, line: 240, baseType: !68, size: 64, offset: 33408)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l0", scope: !338, file: !173, line: 241, baseType: !346, size: 64, offset: 33472)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l1", scope: !338, file: !173, line: 242, baseType: !68, size: 64, offset: 33536)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l1", scope: !338, file: !173, line: 243, baseType: !346, size: 64, offset: 33600)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "num_level_values_signalled_minus1", scope: !338, file: !173, line: 245, baseType: !7, size: 32, offset: 33664)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !338, file: !173, line: 246, baseType: !68, size: 64, offset: 33728)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "num_applicable_ops_minus1", scope: !338, file: !173, line: 247, baseType: !68, size: 64, offset: 33792)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_temporal_id", scope: !338, file: !173, line: 248, baseType: !346, size: 64, offset: 33856)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_target_views_minus1", scope: !338, file: !173, line: 249, baseType: !346, size: 64, offset: 33920)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_target_view_id", scope: !338, file: !173, line: 250, baseType: !359, size: 64, offset: 33984)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_views_minus1", scope: !338, file: !173, line: 251, baseType: !346, size: 64, offset: 34048)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "mvc_vui_parameters_present_flag", scope: !338, file: !173, line: 253, baseType: !31, size: 32, offset: 34112)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !338, file: !173, line: 254, baseType: !7, size: 32, offset: 34144)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "MVCVUIParams", scope: !338, file: !173, line: 255, baseType: !364, size: 3136, offset: 34176)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "MVCVUI_t", file: !173, line: 226, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mvcvui_tag", file: !173, line: 200, size: 3136, elements: !366)
!366 = !{!367, !368, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !386, !387, !389, !390, !391, !392}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops_minus1", scope: !365, file: !173, line: 202, baseType: !7, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !365, file: !173, line: 203, baseType: !369, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "num_target_output_views_minus1", scope: !365, file: !173, line: 204, baseType: !68, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !365, file: !173, line: 205, baseType: !346, size: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !365, file: !173, line: 206, baseType: !369, size: 64, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !365, file: !173, line: 207, baseType: !68, size: 64, offset: 320)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !365, file: !173, line: 208, baseType: !68, size: 64, offset: 384)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !365, file: !173, line: 209, baseType: !369, size: 64, offset: 448)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !365, file: !173, line: 210, baseType: !369, size: 64, offset: 512)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !365, file: !173, line: 211, baseType: !369, size: 64, offset: 576)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !365, file: !173, line: 212, baseType: !369, size: 64, offset: 640)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !365, file: !173, line: 213, baseType: !369, size: 64, offset: 704)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !365, file: !173, line: 216, baseType: !370, size: 8, offset: 768)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !365, file: !173, line: 217, baseType: !370, size: 8, offset: 776)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !365, file: !173, line: 218, baseType: !370, size: 8, offset: 784)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !365, file: !173, line: 219, baseType: !385, size: 1024, offset: 800)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, elements: !309)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !365, file: !173, line: 220, baseType: !385, size: 1024, offset: 1824)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !365, file: !173, line: 221, baseType: !388, size: 256, offset: 2848)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 256, elements: !309)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !365, file: !173, line: 222, baseType: !370, size: 8, offset: 3104)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !365, file: !173, line: 223, baseType: !370, size: 8, offset: 3112)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !365, file: !173, line: 224, baseType: !370, size: 8, offset: 3120)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !365, file: !173, line: 225, baseType: !370, size: 8, offset: 3128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "SubsetSeqParSet", scope: !83, file: !53, line: 577, baseType: !394, size: 1193984, offset: 5595392)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 1193984, elements: !309)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_width_in_mbs_minus1", scope: !83, file: !53, line: 578, baseType: !7, size: 32, offset: 6789376)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_height_in_map_units_minus1", scope: !83, file: !53, line: 579, baseType: !7, size: 32, offset: 6789408)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "last_max_dec_frame_buffering", scope: !83, file: !53, line: 580, baseType: !7, size: 32, offset: 6789440)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "last_profile_idc", scope: !83, file: !53, line: 581, baseType: !7, size: 32, offset: 6789472)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "p_SEI", scope: !83, file: !53, line: 584, baseType: !400, size: 64, offset: 6789504)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DICompositeType(tag: DW_TAG_structure_type, name: "sei_params", file: !53, line: 584, flags: DIFlagFwdDecl)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "old_slice", scope: !83, file: !53, line: 586, baseType: !403, size: 64, offset: 6789568)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_slice_par", file: !53, line: 902, size: 416, elements: !405)
!405 = !{!406, !407, !408, !409, !410, !411, !415, !416, !417, !418, !419, !420, !421}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !404, file: !53, line: 904, baseType: !31, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !404, file: !53, line: 905, baseType: !31, size: 32, offset: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "nal_ref_idc", scope: !404, file: !53, line: 906, baseType: !7, size: 32, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "pic_oder_cnt_lsb", scope: !404, file: !53, line: 907, baseType: !31, size: 32, offset: 96)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_oder_cnt_bottom", scope: !404, file: !53, line: 908, baseType: !7, size: 32, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !404, file: !53, line: 909, baseType: !412, size: 64, offset: 160)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 2)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !404, file: !53, line: 910, baseType: !213, size: 8, offset: 224)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !404, file: !53, line: 911, baseType: !213, size: 8, offset: 232)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !404, file: !53, line: 912, baseType: !7, size: 32, offset: 256)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "pps_id", scope: !404, file: !53, line: 913, baseType: !7, size: 32, offset: 288)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !404, file: !53, line: 915, baseType: !7, size: 32, offset: 320)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !404, file: !53, line: 916, baseType: !7, size: 32, offset: 352)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !404, file: !53, line: 917, baseType: !7, size: 32, offset: 384)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !83, file: !53, line: 587, baseType: !423, size: 64, offset: 6789632)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snr_par", file: !53, line: 839, size: 512, elements: !425)
!425 = !{!426, !427, !430, !431, !432, !433}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "frame_ctr", scope: !424, file: !53, line: 841, baseType: !7, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !424, file: !53, line: 842, baseType: !428, size: 96, offset: 32)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 96, elements: !114)
!429 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "snr1", scope: !424, file: !53, line: 843, baseType: !428, size: 96, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "snra", scope: !424, file: !53, line: 844, baseType: !428, size: 96, offset: 224)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "sse", scope: !424, file: !53, line: 845, baseType: !428, size: 96, offset: 320)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "msse", scope: !424, file: !53, line: 846, baseType: !428, size: 96, offset: 416)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !83, file: !53, line: 588, baseType: !7, size: 32, offset: 6789696)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !83, file: !53, line: 591, baseType: !31, size: 32, offset: 6789728)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "iSliceNumOfCurrPic", scope: !83, file: !53, line: 592, baseType: !7, size: 32, offset: 6789760)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesAllocated", scope: !83, file: !53, line: 593, baseType: !7, size: 32, offset: 6789792)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesDecoded", scope: !83, file: !53, line: 594, baseType: !7, size: 32, offset: 6789824)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "ppSliceList", scope: !83, file: !53, line: 595, baseType: !440, size: 64, offset: 6789888)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !53, line: 542, baseType: !79)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !83, file: !53, line: 596, baseType: !369, size: 64, offset: 6789952)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block_JV", scope: !83, file: !53, line: 597, baseType: !445, size: 192, offset: 6790016)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 192, elements: !114)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !83, file: !53, line: 601, baseType: !7, size: 32, offset: 6790208)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !83, file: !53, line: 602, baseType: !7, size: 32, offset: 6790240)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !83, file: !53, line: 603, baseType: !7, size: 32, offset: 6790272)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "width_cr", scope: !83, file: !53, line: 604, baseType: !7, size: 32, offset: 6790304)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "height_cr", scope: !83, file: !53, line: 605, baseType: !7, size: 32, offset: 6790336)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !83, file: !53, line: 607, baseType: !452, size: 64, offset: 6790400)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode_JV", scope: !83, file: !53, line: 608, baseType: !454, size: 192, offset: 6790464)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 192, elements: !114)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "nz_coeff", scope: !83, file: !53, line: 609, baseType: !456, size: 64, offset: 6790656)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !83, file: !53, line: 610, baseType: !346, size: 64, offset: 6790720)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "siblock_JV", scope: !83, file: !53, line: 611, baseType: !460, size: 192, offset: 6790784)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 192, elements: !114)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "newframe", scope: !83, file: !53, line: 613, baseType: !7, size: 32, offset: 6790976)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !83, file: !53, line: 614, baseType: !7, size: 32, offset: 6791008)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "pNextSlice", scope: !83, file: !53, line: 617, baseType: !441, size: 64, offset: 6791040)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !83, file: !53, line: 618, baseType: !73, size: 64, offset: 6791104)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data_JV", scope: !83, file: !53, line: 619, baseType: !466, size: 192, offset: 6791168)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 192, elements: !114)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "ChromaArrayType", scope: !83, file: !53, line: 621, baseType: !7, size: 32, offset: 6791360)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_head", scope: !83, file: !53, line: 626, baseType: !469, size: 64, offset: 6791424)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DICompositeType(tag: DW_TAG_structure_type, name: "concealment_node", file: !53, line: 626, flags: DIFlagFwdDecl)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_end", scope: !83, file: !53, line: 627, baseType: !469, size: 64, offset: 6791488)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "pre_frame_num", scope: !83, file: !53, line: 629, baseType: !31, size: 32, offset: 6791552)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "non_conforming_stream", scope: !83, file: !53, line: 630, baseType: !7, size: 32, offset: 6791584)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntMsb", scope: !83, file: !53, line: 634, baseType: !7, size: 32, offset: 6791616)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntLsb", scope: !83, file: !53, line: 635, baseType: !31, size: 32, offset: 6791648)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedPicOrderCnt", scope: !83, file: !53, line: 638, baseType: !7, size: 32, offset: 6791680)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntCycleCnt", scope: !83, file: !53, line: 638, baseType: !7, size: 32, offset: 6791712)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumInPicOrderCntCycle", scope: !83, file: !53, line: 638, baseType: !7, size: 32, offset: 6791744)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNum", scope: !83, file: !53, line: 639, baseType: !31, size: 32, offset: 6791776)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumOffset", scope: !83, file: !53, line: 639, baseType: !31, size: 32, offset: 6791808)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedDeltaPerPicOrderCntCycle", scope: !83, file: !53, line: 640, baseType: !7, size: 32, offset: 6791840)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !83, file: !53, line: 641, baseType: !7, size: 32, offset: 6791872)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNumOffset", scope: !83, file: !53, line: 642, baseType: !7, size: 32, offset: 6791904)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "MaxFrameNum", scope: !83, file: !53, line: 645, baseType: !7, size: 32, offset: 6791936)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !83, file: !53, line: 647, baseType: !31, size: 32, offset: 6791968)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMapUnits", scope: !83, file: !53, line: 648, baseType: !31, size: 32, offset: 6792000)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "FrameHeightInMbs", scope: !83, file: !53, line: 649, baseType: !31, size: 32, offset: 6792032)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMbs", scope: !83, file: !53, line: 650, baseType: !31, size: 32, offset: 6792064)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !83, file: !53, line: 651, baseType: !31, size: 32, offset: 6792096)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "FrameSizeInMbs", scope: !83, file: !53, line: 652, baseType: !31, size: 32, offset: 6792128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "oldFrameSizeInMbs", scope: !83, file: !53, line: 653, baseType: !31, size: 32, offset: 6792160)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !83, file: !53, line: 655, baseType: !7, size: 32, offset: 6792192)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "last_has_mmco_5", scope: !83, file: !53, line: 657, baseType: !7, size: 32, offset: 6792224)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_bottom_field", scope: !83, file: !53, line: 658, baseType: !7, size: 32, offset: 6792256)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_bitsize_on_disk", scope: !83, file: !53, line: 661, baseType: !7, size: 32, offset: 6792288)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma", scope: !83, file: !53, line: 662, baseType: !497, size: 16, offset: 6792320)
!497 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma", scope: !83, file: !53, line: 663, baseType: !497, size: 16, offset: 6792336)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_scale", scope: !83, file: !53, line: 664, baseType: !412, size: 64, offset: 6792352)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma_qp_scale", scope: !83, file: !53, line: 665, baseType: !7, size: 32, offset: 6792416)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma_qp_scale", scope: !83, file: !53, line: 666, baseType: !7, size: 32, offset: 6792448)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "dc_pred_value_comp", scope: !83, file: !53, line: 667, baseType: !503, size: 96, offset: 6792480)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 96, elements: !114)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "max_pel_value_comp", scope: !83, file: !53, line: 668, baseType: !113, size: 96, offset: 6792576)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !83, file: !53, line: 670, baseType: !7, size: 32, offset: 6792672)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !83, file: !53, line: 671, baseType: !7, size: 32, offset: 6792704)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "lossless_qpprime_flag", scope: !83, file: !53, line: 672, baseType: !7, size: 32, offset: 6792736)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "num_blk8x8_uv", scope: !83, file: !53, line: 673, baseType: !7, size: 32, offset: 6792768)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "num_uv_blocks", scope: !83, file: !53, line: 674, baseType: !7, size: 32, offset: 6792800)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "num_cdc_coeff", scope: !83, file: !53, line: 675, baseType: !7, size: 32, offset: 6792832)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x", scope: !83, file: !53, line: 676, baseType: !7, size: 32, offset: 6792864)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y", scope: !83, file: !53, line: 677, baseType: !7, size: 32, offset: 6792896)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x_blk", scope: !83, file: !53, line: 678, baseType: !7, size: 32, offset: 6792928)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y_blk", scope: !83, file: !53, line: 679, baseType: !7, size: 32, offset: 6792960)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size", scope: !83, file: !53, line: 680, baseType: !516, size: 192, offset: 6792992)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 192, elements: !517)
!517 = !{!115, !414}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_blk", scope: !83, file: !53, line: 681, baseType: !516, size: 192, offset: 6793184)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_shift", scope: !83, file: !53, line: 682, baseType: !516, size: 192, offset: 6793376)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_x", scope: !83, file: !53, line: 683, baseType: !7, size: 32, offset: 6793568)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_y", scope: !83, file: !53, line: 684, baseType: !7, size: 32, offset: 6793600)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_x", scope: !83, file: !53, line: 685, baseType: !7, size: 32, offset: 6793632)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_y", scope: !83, file: !53, line: 686, baseType: !7, size: 32, offset: 6793664)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "total_scale", scope: !83, file: !53, line: 687, baseType: !7, size: 32, offset: 6793696)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "max_vmv_r", scope: !83, file: !53, line: 689, baseType: !7, size: 32, offset: 6793728)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "idr_psnr_number", scope: !83, file: !53, line: 692, baseType: !7, size: 32, offset: 6793760)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "psnr_number", scope: !83, file: !53, line: 693, baseType: !7, size: 32, offset: 6793792)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "last_ref_pic_poc", scope: !83, file: !53, line: 700, baseType: !7, size: 32, offset: 6793824)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !83, file: !53, line: 701, baseType: !7, size: 32, offset: 6793856)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !83, file: !53, line: 702, baseType: !7, size: 32, offset: 6793888)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !83, file: !53, line: 703, baseType: !7, size: 32, offset: 6793920)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "earlier_missing_poc", scope: !83, file: !53, line: 704, baseType: !7, size: 32, offset: 6793952)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "frame_to_conceal", scope: !83, file: !53, line: 705, baseType: !31, size: 32, offset: 6793984)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "IDR_concealment_flag", scope: !83, file: !53, line: 706, baseType: !7, size: 32, offset: 6794016)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_slice_type", scope: !83, file: !53, line: 707, baseType: !7, size: 32, offset: 6794048)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point", scope: !83, file: !53, line: 710, baseType: !7, size: 32, offset: 6794080)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point_found", scope: !83, file: !53, line: 711, baseType: !7, size: 32, offset: 6794112)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_cnt", scope: !83, file: !53, line: 712, baseType: !7, size: 32, offset: 6794144)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_num", scope: !83, file: !53, line: 713, baseType: !7, size: 32, offset: 6794176)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_poc", scope: !83, file: !53, line: 714, baseType: !7, size: 32, offset: 6794208)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !83, file: !53, line: 716, baseType: !7, size: 32, offset: 6794240)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !83, file: !53, line: 717, baseType: !7, size: 32, offset: 6794272)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !83, file: !53, line: 719, baseType: !212, size: 64, offset: 6794304)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ibuf", scope: !83, file: !53, line: 720, baseType: !212, size: 64, offset: 6794368)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "imgData", scope: !83, file: !53, line: 722, baseType: !546, size: 2560, offset: 6794432)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageData", file: !547, line: 38, baseType: !548)
!547 = !DIFile(filename: "ldecod_src/inc/io_image.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "8caef624e6f5391b0c6ab2984e7f77c6")
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "image_data", file: !547, line: 20, size: 2560, elements: !549)
!549 = !{!550, !551, !557, !558, !559, !563, !564, !565, !566, !567}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !548, file: !547, line: 22, baseType: !103, size: 1088)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "frm_data", scope: !548, file: !547, line: 24, baseType: !552, size: 192, offset: 1088)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 192, elements: !114)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "imgpel", file: !214, line: 41, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !214, line: 23, baseType: !281)
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
!568 = !DIDerivedType(tag: DW_TAG_member, name: "imgData0", scope: !83, file: !53, line: 723, baseType: !546, size: 2560, offset: 6796992)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "imgData1", scope: !83, file: !53, line: 724, baseType: !546, size: 2560, offset: 6799552)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "imgData2", scope: !83, file: !53, line: 725, baseType: !546, size: 2560, offset: 6802112)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "imgData32", scope: !83, file: !53, line: 728, baseType: !546, size: 2560, offset: 6804672)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "imgData4", scope: !83, file: !53, line: 729, baseType: !546, size: 2560, offset: 6807232)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "imgData5", scope: !83, file: !53, line: 730, baseType: !546, size: 2560, offset: 6809792)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "imgData6", scope: !83, file: !53, line: 731, baseType: !546, size: 2560, offset: 6812352)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "previous_frame_num", scope: !83, file: !53, line: 735, baseType: !31, size: 32, offset: 6814912)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "Is_primary_correct", scope: !83, file: !53, line: 737, baseType: !7, size: 32, offset: 6814944)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "Is_redundant_correct", scope: !83, file: !53, line: 738, baseType: !7, size: 32, offset: 6814976)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "tot_time", scope: !83, file: !53, line: 741, baseType: !579, size: 64, offset: 6815040)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !580, line: 103, baseType: !581)
!580 = !DIFile(filename: "ldecod_src/inc/win32.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "100def0ffeee72ecdc377183538a04bb")
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !582, line: 27, baseType: !583)
!582 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !584, line: 44, baseType: !585)
!584 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!585 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "p_out", scope: !83, file: !53, line: 744, baseType: !7, size: 32, offset: 6815104)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "p_out_mvc", scope: !83, file: !53, line: 746, baseType: !588, size: 32768, offset: 6815136)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32768, elements: !589)
!589 = !{!590}
!590 = !DISubrange(count: 1024)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "p_ref", scope: !83, file: !53, line: 748, baseType: !7, size: 32, offset: 6847904)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "LastAccessUnitExists", scope: !83, file: !53, line: 751, baseType: !7, size: 32, offset: 6847936)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "NALUCount", scope: !83, file: !53, line: 752, baseType: !7, size: 32, offset: 6847968)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "Bframe_ctr", scope: !83, file: !53, line: 755, baseType: !7, size: 32, offset: 6848000)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "frame_no", scope: !83, file: !53, line: 756, baseType: !7, size: 32, offset: 6848032)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "g_nFrame", scope: !83, file: !53, line: 758, baseType: !7, size: 32, offset: 6848064)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "global_init_done", scope: !83, file: !53, line: 759, baseType: !7, size: 32, offset: 6848096)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "imgY_ref", scope: !83, file: !53, line: 762, baseType: !553, size: 64, offset: 6848128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV_ref", scope: !83, file: !53, line: 763, baseType: !600, size: 64, offset: 6848192)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "qp_per_matrix", scope: !83, file: !53, line: 765, baseType: !68, size: 64, offset: 6848256)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "qp_rem_matrix", scope: !83, file: !53, line: 766, baseType: !68, size: 64, offset: 6848320)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "last_out_fs", scope: !83, file: !53, line: 768, baseType: !604, size: 64, offset: 6848384)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "frame_store", file: !53, line: 514, flags: DIFlagFwdDecl)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "pocs_in_dpb", scope: !83, file: !53, line: 769, baseType: !607, size: 3200, offset: 6848448)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3200, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 100)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !83, file: !53, line: 771, baseType: !611, size: 64, offset: 6851648)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DICompositeType(tag: DW_TAG_structure_type, name: "storable_picture", file: !53, line: 141, flags: DIFlagFwdDecl)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture_JV", scope: !83, file: !53, line: 772, baseType: !614, size: 192, offset: 6851712)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 192, elements: !114)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "no_reference_picture", scope: !83, file: !53, line: 773, baseType: !611, size: 64, offset: 6851904)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "erc_object_list", scope: !83, file: !53, line: 776, baseType: !617, size: 64, offset: 6851968)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DICompositeType(tag: DW_TAG_structure_type, name: "object_buffer", file: !53, line: 776, flags: DIFlagFwdDecl)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "erc_errorVar", scope: !83, file: !53, line: 777, baseType: !620, size: 64, offset: 6852032)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "ercVariables_s", file: !53, line: 777, flags: DIFlagFwdDecl)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !83, file: !53, line: 779, baseType: !7, size: 32, offset: 6852096)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "erc_img", scope: !83, file: !53, line: 780, baseType: !82, size: 64, offset: 6852160)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "ec_flag", scope: !83, file: !53, line: 781, baseType: !625, size: 640, offset: 6852224)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 640, elements: !626)
!626 = !{!627}
!627 = !DISubrange(count: 20)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "annex_b", scope: !83, file: !53, line: 783, baseType: !629, size: 64, offset: 6852864)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DICompositeType(tag: DW_TAG_structure_type, name: "annex_b_struct", file: !53, line: 783, flags: DIFlagFwdDecl)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "bitsfile", scope: !83, file: !53, line: 784, baseType: !632, size: 64, offset: 6852928)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "sBitsFile", file: !53, line: 784, flags: DIFlagFwdDecl)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "out_buffer", scope: !83, file: !53, line: 786, baseType: !604, size: 64, offset: 6852992)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output", scope: !83, file: !53, line: 788, baseType: !611, size: 64, offset: 6853056)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output_state", scope: !83, file: !53, line: 789, baseType: !7, size: 32, offset: 6853120)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_flag", scope: !83, file: !53, line: 790, baseType: !7, size: 32, offset: 6853152)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "BitStreamFile", scope: !83, file: !53, line: 792, baseType: !7, size: 32, offset: 6853184)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !83, file: !53, line: 794, baseType: !640, size: 64, offset: 6853248)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DICompositeType(tag: DW_TAG_structure_type, name: "decoded_picture_buffer", file: !53, line: 350, flags: DIFlagFwdDecl)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_legacy", scope: !83, file: !53, line: 795, baseType: !640, size: 64, offset: 6853312)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_layer", scope: !83, file: !53, line: 796, baseType: !644, size: 128, offset: 6853376)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 128, elements: !413)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "cslice_type", scope: !83, file: !53, line: 800, baseType: !646, size: 72, offset: 6853504)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 72, elements: !647)
!647 = !{!648}
!648 = !DISubrange(count: 9)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "MbToSliceGroupMap", scope: !83, file: !53, line: 802, baseType: !68, size: 64, offset: 6853632)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "MapUnitToSliceGroupMap", scope: !83, file: !53, line: 803, baseType: !68, size: 64, offset: 6853696)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfSliceGroups", scope: !83, file: !53, line: 804, baseType: !7, size: 32, offset: 6853760)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "seiToneMapping", scope: !83, file: !53, line: 807, baseType: !653, size: 64, offset: 6853824)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DICompositeType(tag: DW_TAG_structure_type, name: "tone_mapping_struct_s", file: !53, line: 807, flags: DIFlagFwdDecl)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "buf2img", scope: !83, file: !53, line: 810, baseType: !656, size: 64, offset: 6853888)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !553, !659, !7, !7, !7, !7, !7, !7}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "getNeighbour", scope: !83, file: !53, line: 811, baseType: !661, size: 64, offset: 6853952)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !73, !7, !7, !68, !664}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPos", file: !53, line: 85, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pix_pos", file: !53, line: 77, size: 128, elements: !667)
!667 = !{!668, !669, !670, !671, !672, !673}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !666, file: !53, line: 79, baseType: !7, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "mb_addr", scope: !666, file: !53, line: 80, baseType: !7, size: 32, offset: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !666, file: !53, line: 81, baseType: !497, size: 16, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !666, file: !53, line: 82, baseType: !497, size: 16, offset: 80)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "pos_x", scope: !666, file: !53, line: 83, baseType: !497, size: 16, offset: 96)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "pos_y", scope: !666, file: !53, line: 84, baseType: !497, size: 16, offset: 112)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "get_mb_block_pos", scope: !83, file: !53, line: 812, baseType: !675, size: 64, offset: 6854016)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !7, !678, !678}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthVer", scope: !83, file: !53, line: 813, baseType: !680, size: 64, offset: 6854080)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !212, !73, !7, !7, !611}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthHor", scope: !83, file: !53, line: 814, baseType: !680, size: 64, offset: 6854144)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaVer", scope: !83, file: !53, line: 815, baseType: !685, size: 64, offset: 6854208)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{null, !688, !553, !212, !73, !7, !611}
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorPlane", file: !30, line: 32, baseType: !29)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaHor", scope: !83, file: !53, line: 816, baseType: !685, size: 64, offset: 6854272)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaVer", scope: !83, file: !53, line: 817, baseType: !691, size: 64, offset: 6854336)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{null, !553, !212, !73, !7, !7, !611}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaHor", scope: !83, file: !53, line: 818, baseType: !691, size: 64, offset: 6854400)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "img2buf", scope: !83, file: !53, line: 819, baseType: !696, size: 64, offset: 6854464)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{null, !553, !659, !7, !7, !7, !7, !7, !7, !7, !7}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "pDecOuputPic", scope: !83, file: !53, line: 821, baseType: !700, size: 64, offset: 6854528)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodedPicList", file: !53, line: 561, baseType: !702)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decodedpic_t", file: !53, line: 544, size: 640, elements: !703)
!703 = !{!704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "bValid", scope: !702, file: !53, line: 546, baseType: !7, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "iViewId", scope: !702, file: !53, line: 547, baseType: !7, size: 32, offset: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "iPOC", scope: !702, file: !53, line: 548, baseType: !7, size: 32, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVFormat", scope: !702, file: !53, line: 549, baseType: !7, size: 32, offset: 96)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVStorageFormat", scope: !702, file: !53, line: 550, baseType: !7, size: 32, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "iBitDepth", scope: !702, file: !53, line: 551, baseType: !7, size: 32, offset: 160)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "pY", scope: !702, file: !53, line: 552, baseType: !212, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "pU", scope: !702, file: !53, line: 553, baseType: !212, size: 64, offset: 256)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "pV", scope: !702, file: !53, line: 554, baseType: !212, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "iWidth", scope: !702, file: !53, line: 555, baseType: !7, size: 32, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "iHeight", scope: !702, file: !53, line: 556, baseType: !7, size: 32, offset: 416)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "iYBufStride", scope: !702, file: !53, line: 557, baseType: !7, size: 32, offset: 448)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "iUVBufStride", scope: !702, file: !53, line: 558, baseType: !7, size: 32, offset: 480)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "iSkipPicNum", scope: !702, file: !53, line: 559, baseType: !7, size: 32, offset: 512)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "pNext", scope: !702, file: !53, line: 560, baseType: !719, size: 64, offset: 576)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "iDeblockMode", scope: !83, file: !53, line: 822, baseType: !7, size: 32, offset: 6854592)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "nalu", scope: !83, file: !53, line: 823, baseType: !722, size: 64, offset: 6854656)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DICompositeType(tag: DW_TAG_structure_type, name: "nalu_t", file: !53, line: 823, flags: DIFlagFwdDecl)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !83, file: !53, line: 824, baseType: !7, size: 32, offset: 6854720)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !83, file: !53, line: 825, baseType: !7, size: 32, offset: 6854752)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !83, file: !53, line: 826, baseType: !7, size: 32, offset: 6854784)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !83, file: !53, line: 827, baseType: !7, size: 32, offset: 6854816)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "bDeblockEnable", scope: !83, file: !53, line: 829, baseType: !7, size: 32, offset: 6854848)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "iPostProcess", scope: !83, file: !53, line: 830, baseType: !7, size: 32, offset: 6854880)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "bFrameInit", scope: !83, file: !53, line: 831, baseType: !7, size: 32, offset: 6854912)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "pNextPPS", scope: !83, file: !53, line: 835, baseType: !171, size: 64, offset: 6854976)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !79, file: !53, line: 344, baseType: !86, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !79, file: !53, line: 345, baseType: !171, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !79, file: !53, line: 346, baseType: !228, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "svc_extension_flag", scope: !79, file: !53, line: 347, baseType: !7, size: 32, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !79, file: !53, line: 350, baseType: !640, size: 64, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !79, file: !53, line: 353, baseType: !7, size: 32, offset: 384)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !79, file: !53, line: 354, baseType: !7, size: 32, offset: 416)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !79, file: !53, line: 355, baseType: !7, size: 32, offset: 448)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "Transform8x8Mode", scope: !79, file: !53, line: 356, baseType: !7, size: 32, offset: 480)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "is_not_independent", scope: !79, file: !53, line: 357, baseType: !7, size: 32, offset: 512)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "toppoc", scope: !79, file: !53, line: 359, baseType: !7, size: 32, offset: 544)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "bottompoc", scope: !79, file: !53, line: 360, baseType: !7, size: 32, offset: 576)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "framepoc", scope: !79, file: !53, line: 361, baseType: !7, size: 32, offset: 608)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_lsb", scope: !79, file: !53, line: 365, baseType: !31, size: 32, offset: 640)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt_bottom", scope: !79, file: !53, line: 366, baseType: !7, size: 32, offset: 672)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !79, file: !53, line: 368, baseType: !412, size: 64, offset: 704)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntMsb", scope: !79, file: !53, line: 372, baseType: !7, size: 32, offset: 768)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "AbsFrameNum", scope: !79, file: !53, line: 378, baseType: !31, size: 32, offset: 800)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !79, file: !53, line: 379, baseType: !7, size: 32, offset: 832)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "current_mb_nr", scope: !79, file: !53, line: 387, baseType: !31, size: 32, offset: 864)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !79, file: !53, line: 388, baseType: !31, size: 32, offset: 896)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "current_slice_nr", scope: !79, file: !53, line: 389, baseType: !497, size: 16, offset: 928)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "cod_counter", scope: !79, file: !53, line: 396, baseType: !7, size: 32, offset: 960)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "allrefzero", scope: !79, file: !53, line: 397, baseType: !7, size: 32, offset: 992)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !79, file: !53, line: 400, baseType: !7, size: 32, offset: 1024)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "direct_spatial_mv_pred_flag", scope: !79, file: !53, line: 401, baseType: !7, size: 32, offset: 1056)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_active", scope: !79, file: !53, line: 402, baseType: !412, size: 64, offset: 1088)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !79, file: !53, line: 406, baseType: !7, size: 32, offset: 1152)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !79, file: !53, line: 407, baseType: !7, size: 32, offset: 1184)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !79, file: !53, line: 408, baseType: !7, size: 32, offset: 1216)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "qs", scope: !79, file: !53, line: 409, baseType: !7, size: 32, offset: 1248)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qs_delta", scope: !79, file: !53, line: 410, baseType: !7, size: 32, offset: 1280)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !79, file: !53, line: 411, baseType: !7, size: 32, offset: 1312)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "model_number", scope: !79, file: !53, line: 412, baseType: !7, size: 32, offset: 1344)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !79, file: !53, line: 413, baseType: !31, size: 32, offset: 1376)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !79, file: !53, line: 414, baseType: !31, size: 32, offset: 1408)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !79, file: !53, line: 415, baseType: !213, size: 8, offset: 1440)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !79, file: !53, line: 416, baseType: !770, size: 32, offset: 1472)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "PictureStructure", file: !30, line: 140, baseType: !39)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !79, file: !53, line: 417, baseType: !7, size: 32, offset: 1504)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "end_mb_nr_plus1", scope: !79, file: !53, line: 418, baseType: !7, size: 32, offset: 1536)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !79, file: !53, line: 419, baseType: !7, size: 32, offset: 1568)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "dp_mode", scope: !79, file: !53, line: 420, baseType: !7, size: 32, offset: 1600)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "current_header", scope: !79, file: !53, line: 421, baseType: !7, size: 32, offset: 1632)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "next_header", scope: !79, file: !53, line: 422, baseType: !7, size: 32, offset: 1664)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "last_dquant", scope: !79, file: !53, line: 423, baseType: !7, size: 32, offset: 1696)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "colour_plane_id", scope: !79, file: !53, line: 426, baseType: !7, size: 32, offset: 1728)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt", scope: !79, file: !53, line: 427, baseType: !7, size: 32, offset: 1760)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "sp_switch", scope: !79, file: !53, line: 428, baseType: !7, size: 32, offset: 1792)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_cycle", scope: !79, file: !53, line: 429, baseType: !7, size: 32, offset: 1824)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_slice_ref_idx", scope: !79, file: !53, line: 430, baseType: !7, size: 32, offset: 1856)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !79, file: !53, line: 431, baseType: !7, size: 32, offset: 1888)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !79, file: !53, line: 432, baseType: !7, size: 32, offset: 1920)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !79, file: !53, line: 433, baseType: !7, size: 32, offset: 1952)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !79, file: !53, line: 434, baseType: !787, size: 64, offset: 1984)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecRefPicMarking_t", file: !53, line: 194, baseType: !789)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DecRefPicMarking_s", file: !53, line: 186, size: 256, elements: !790)
!790 = !{!791, !792, !793, !794, !795, !796}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "memory_management_control_operation", scope: !789, file: !53, line: 188, baseType: !7, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "difference_of_pic_nums_minus1", scope: !789, file: !53, line: 189, baseType: !7, size: 32, offset: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !789, file: !53, line: 190, baseType: !7, size: 32, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !789, file: !53, line: 191, baseType: !7, size: 32, offset: 96)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_frame_idx_plus1", scope: !789, file: !53, line: 192, baseType: !7, size: 32, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !789, file: !53, line: 193, baseType: !797, size: 64, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !79, file: !53, line: 436, baseType: !799, size: 48, offset: 2048)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 48, elements: !197)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !79, file: !53, line: 437, baseType: !801, size: 384, offset: 2112)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 384, elements: !197)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !79, file: !53, line: 440, baseType: !804, size: 64, offset: 2496)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !53, line: 324, baseType: !806)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !53, line: 314, size: 384, elements: !807)
!807 = !{!808, !819, !828}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !806, file: !53, line: 317, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !53, line: 47, baseType: !811)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bit_stream", file: !53, line: 300, size: 256, elements: !812)
!812 = !{!813, !814, !815, !816, !817, !818}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "read_len", scope: !811, file: !53, line: 303, baseType: !7, size: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "code_len", scope: !811, file: !53, line: 304, baseType: !7, size: 32, offset: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "frame_bitoffset", scope: !811, file: !53, line: 306, baseType: !7, size: 32, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_length", scope: !811, file: !53, line: 307, baseType: !7, size: 32, offset: 96)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !811, file: !53, line: 309, baseType: !212, size: 64, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !811, file: !53, line: 310, baseType: !7, size: 32, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "de_cabac", scope: !806, file: !53, line: 318, baseType: !820, size: 256, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironment", file: !53, line: 95, baseType: !821)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 88, size: 256, elements: !822)
!822 = !{!823, !824, !825, !826, !827}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "Drange", scope: !821, file: !53, line: 90, baseType: !31, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "Dvalue", scope: !821, file: !53, line: 91, baseType: !31, size: 32, offset: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "DbitsLeft", scope: !821, file: !53, line: 92, baseType: !7, size: 32, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm", scope: !821, file: !53, line: 93, baseType: !212, size: 64, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm_len", scope: !821, file: !53, line: 94, baseType: !68, size: 64, offset: 192)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "readSyntaxElement", scope: !806, file: !53, line: 320, baseType: !829, size: 64, offset: 320)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!7, !73, !51, !832}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !79, file: !53, line: 441, baseType: !834, size: 64, offset: 2560)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !53, line: 153, baseType: !836)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 145, size: 2912, elements: !837)
!837 = !{!838, !848, !851, !855, !858, !862}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !836, file: !53, line: 147, baseType: !839, size: 1056)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 1056, elements: !846)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !53, line: 122, baseType: !841)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 117, size: 32, elements: !842)
!842 = !{!843, !844, !845}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !841, file: !53, line: 119, baseType: !556, size: 16)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !841, file: !53, line: 120, baseType: !215, size: 8, offset: 16)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !841, file: !53, line: 121, baseType: !215, size: 8, offset: 24)
!846 = !{!115, !847}
!847 = !DISubrange(count: 11)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !836, file: !53, line: 148, baseType: !849, size: 576, offset: 1056)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 576, elements: !850)
!850 = !{!414, !648}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !836, file: !53, line: 149, baseType: !852, size: 640, offset: 1632)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 640, elements: !853)
!853 = !{!414, !854}
!854 = !DISubrange(count: 10)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !836, file: !53, line: 150, baseType: !856, size: 384, offset: 2272)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 384, elements: !857)
!857 = !{!414, !189}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !836, file: !53, line: 151, baseType: !859, size: 128, offset: 2656)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 128, elements: !860)
!860 = !{!861}
!861 = !DISubrange(count: 4)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !836, file: !53, line: 152, baseType: !859, size: 128, offset: 2784)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !79, file: !53, line: 442, baseType: !864, size: 64, offset: 2624)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !53, line: 175, baseType: !866)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 164, size: 52768, elements: !867)
!867 = !{!868, !870, !872, !873, !876, !880, !884, !885, !889}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !866, file: !53, line: 166, baseType: !869, size: 96)
!869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 96, elements: !114)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !866, file: !53, line: 167, baseType: !871, size: 64, offset: 96)
!871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 64, elements: !413)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !866, file: !53, line: 168, baseType: !859, size: 128, offset: 160)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !866, file: !53, line: 169, baseType: !874, size: 384, offset: 288)
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 384, elements: !875)
!875 = !{!115, !861}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !866, file: !53, line: 170, baseType: !877, size: 2816, offset: 672)
!877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 2816, elements: !878)
!878 = !{!879, !861}
!879 = !DISubrange(count: 22)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !866, file: !53, line: 171, baseType: !881, size: 21120, offset: 3488)
!881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 21120, elements: !882)
!882 = !{!414, !879, !883}
!883 = !DISubrange(count: 15)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !866, file: !53, line: 172, baseType: !881, size: 21120, offset: 24608)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !866, file: !53, line: 173, baseType: !886, size: 3520, offset: 45728)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 3520, elements: !887)
!887 = !{!879, !888}
!888 = !DISubrange(count: 5)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !866, file: !53, line: 174, baseType: !886, size: 3520, offset: 49248)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "mvscale", scope: !79, file: !53, line: 444, baseType: !891, size: 6144, offset: 2688)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 6144, elements: !892)
!892 = !{!189, !310}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag", scope: !79, file: !53, line: 446, baseType: !412, size: 64, offset: 8832)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "reordering_of_pic_nums_idc", scope: !79, file: !53, line: 447, baseType: !895, size: 128, offset: 8896)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 128, elements: !413)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1", scope: !79, file: !53, line: 448, baseType: !895, size: 128, offset: 9024)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx", scope: !79, file: !53, line: 449, baseType: !895, size: 128, offset: 9152)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_view_idx_minus1", scope: !79, file: !53, line: 452, baseType: !895, size: 128, offset: 9280)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !79, file: !53, line: 454, baseType: !7, size: 32, offset: 9408)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !79, file: !53, line: 455, baseType: !7, size: 32, offset: 9440)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !79, file: !53, line: 456, baseType: !7, size: 32, offset: 9472)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "NaluHeaderMVCExt", scope: !79, file: !53, line: 458, baseType: !903, size: 256, offset: 9504)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALUnitHeaderMVCExt_t", file: !53, line: 337, baseType: !904)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nalunitheadermvcext_tag", file: !53, line: 327, size: 256, elements: !905)
!905 = !{!906, !907, !908, !909, !910, !911, !912, !913}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "non_idr_flag", scope: !904, file: !53, line: 329, baseType: !31, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "priority_id", scope: !904, file: !53, line: 330, baseType: !31, size: 32, offset: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !904, file: !53, line: 331, baseType: !31, size: 32, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !904, file: !53, line: 332, baseType: !31, size: 32, offset: 96)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !904, file: !53, line: 333, baseType: !31, size: 32, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !904, file: !53, line: 334, baseType: !31, size: 32, offset: 160)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_one_bit", scope: !904, file: !53, line: 335, baseType: !31, size: 32, offset: 192)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "iPrefixNALU", scope: !904, file: !53, line: 336, baseType: !31, size: 32, offset: 224)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !79, file: !53, line: 461, baseType: !497, size: 16, offset: 9760)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !79, file: !53, line: 462, baseType: !497, size: 16, offset: 9776)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !79, file: !53, line: 463, baseType: !497, size: 16, offset: 9792)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !79, file: !53, line: 465, baseType: !7, size: 32, offset: 9824)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "dpB_NotPresent", scope: !79, file: !53, line: 467, baseType: !7, size: 32, offset: 9856)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "dpC_NotPresent", scope: !79, file: !53, line: 468, baseType: !7, size: 32, offset: 9888)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "is_reset_coeff", scope: !79, file: !53, line: 470, baseType: !7, size: 32, offset: 9920)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "mb_pred", scope: !79, file: !53, line: 471, baseType: !600, size: 64, offset: 9984)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rec", scope: !79, file: !53, line: 472, baseType: !600, size: 64, offset: 10048)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rres", scope: !79, file: !53, line: 473, baseType: !359, size: 64, offset: 10112)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "cof", scope: !79, file: !53, line: 474, baseType: !359, size: 64, offset: 10176)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "fcf", scope: !79, file: !53, line: 475, baseType: !359, size: 64, offset: 10240)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "cofu", scope: !79, file: !53, line: 477, baseType: !927, size: 512, offset: 10304)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !928)
!928 = !{!190}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l0", scope: !79, file: !53, line: 479, baseType: !553, size: 64, offset: 10816)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l1", scope: !79, file: !53, line: 480, baseType: !553, size: 64, offset: 10880)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_res", scope: !79, file: !53, line: 481, baseType: !346, size: 64, offset: 10944)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l2", scope: !79, file: !53, line: 482, baseType: !553, size: 64, offset: 11008)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l3", scope: !79, file: !53, line: 483, baseType: !553, size: 64, offset: 11072)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Intra", scope: !79, file: !53, line: 486, baseType: !935, size: 9216, offset: 11136)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 9216, elements: !936)
!936 = !{!115, !189, !861, !861}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Inter", scope: !79, file: !53, line: 487, baseType: !935, size: 9216, offset: 20352)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Intra", scope: !79, file: !53, line: 488, baseType: !939, size: 36864, offset: 29568)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 36864, elements: !940)
!940 = !{!115, !189, !205, !205}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Inter", scope: !79, file: !53, line: 489, baseType: !939, size: 36864, offset: 66432)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "qmatrix", scope: !79, file: !53, line: 491, baseType: !943, size: 768, offset: 103296)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 768, elements: !184)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "coeff", scope: !79, file: !53, line: 494, baseType: !945, size: 2048, offset: 104064)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !946)
!946 = !{!194}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_ctr", scope: !79, file: !53, line: 495, baseType: !7, size: 32, offset: 106112)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !79, file: !53, line: 496, baseType: !7, size: 32, offset: 106144)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !79, file: !53, line: 500, baseType: !281, size: 16, offset: 106176)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !79, file: !53, line: 501, baseType: !281, size: 16, offset: 106192)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "luma_log2_weight_denom", scope: !79, file: !53, line: 503, baseType: !281, size: 16, offset: 106208)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_log2_weight_denom", scope: !79, file: !53, line: 504, baseType: !281, size: 16, offset: 106224)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "wp_weight", scope: !79, file: !53, line: 505, baseType: !359, size: 64, offset: 106240)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "wp_offset", scope: !79, file: !53, line: 506, baseType: !359, size: 64, offset: 106304)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "wbp_weight", scope: !79, file: !53, line: 507, baseType: !956, size: 64, offset: 106368)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_luma", scope: !79, file: !53, line: 508, baseType: !497, size: 16, offset: 106432)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_chroma", scope: !79, file: !53, line: 509, baseType: !497, size: 16, offset: 106448)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx0", scope: !79, file: !53, line: 512, baseType: !7, size: 32, offset: 106464)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx1", scope: !79, file: !53, line: 513, baseType: !7, size: 32, offset: 106496)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview0", scope: !79, file: !53, line: 514, baseType: !962, size: 64, offset: 106560)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview1", scope: !79, file: !53, line: 515, baseType: !962, size: 64, offset: 106624)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "max_mb_vmv_r", scope: !79, file: !53, line: 520, baseType: !7, size: 32, offset: 106688)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "ref_flag", scope: !79, file: !53, line: 521, baseType: !966, size: 544, offset: 106720)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 544, elements: !967)
!967 = !{!968}
!968 = !DISubrange(count: 17)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "read_CBP_and_coeffs_from_NAL", scope: !79, file: !53, line: 523, baseType: !970, size: 64, offset: 107264)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{null, !73}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "decode_one_component", scope: !79, file: !53, line: 524, baseType: !974, size: 64, offset: 107328)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{!7, !73, !688, !553, !611}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "readSlice", scope: !79, file: !53, line: 525, baseType: !978, size: 64, offset: 107392)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{!7, !82, !86}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "nal_startcode_follows", scope: !79, file: !53, line: 526, baseType: !982, size: 64, offset: 107456)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!7, !78, !7}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "read_motion_info_from_NAL", scope: !79, file: !53, line: 527, baseType: !970, size: 64, offset: 107520)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "read_one_macroblock", scope: !79, file: !53, line: 528, baseType: !970, size: 64, offset: 107584)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "interpret_mb_mode", scope: !79, file: !53, line: 529, baseType: !970, size: 64, offset: 107648)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "init_lists", scope: !79, file: !53, line: 530, baseType: !989, size: 64, offset: 107712)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{null, !78}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "intrapred_chroma", scope: !79, file: !53, line: 531, baseType: !970, size: 64, offset: 107776)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_intra", scope: !79, file: !53, line: 532, baseType: !65, size: 64, offset: 107840)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_inter", scope: !79, file: !53, line: 533, baseType: !65, size: 64, offset: 107904)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "update_direct_mv_info", scope: !79, file: !53, line: 534, baseType: !970, size: 64, offset: 107968)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !79, file: !53, line: 535, baseType: !7, size: 32, offset: 108032)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !79, file: !53, line: 536, baseType: !73, size: 64, offset: 108096)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !79, file: !53, line: 537, baseType: !611, size: 64, offset: 108160)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !79, file: !53, line: 538, baseType: !346, size: 64, offset: 108224)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !79, file: !53, line: 539, baseType: !452, size: 64, offset: 108288)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !79, file: !53, line: 540, baseType: !369, size: 64, offset: 108352)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_vector_adjustment", scope: !79, file: !53, line: 541, baseType: !1003, size: 768, offset: 108416)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 768, elements: !188)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !75, file: !53, line: 200, baseType: !82, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !75, file: !53, line: 201, baseType: !86, size: 64, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrX", scope: !75, file: !53, line: 202, baseType: !7, size: 32, offset: 192)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !75, file: !53, line: 203, baseType: !1008, size: 32, offset: 224)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlockPos", file: !53, line: 112, baseType: !1009)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 108, size: 32, elements: !1010)
!1010 = !{!1011, !1012}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1009, file: !53, line: 110, baseType: !497, size: 16)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1009, file: !53, line: 111, baseType: !497, size: 16, offset: 16)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "block_x", scope: !75, file: !53, line: 204, baseType: !7, size: 32, offset: 256)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "block_y", scope: !75, file: !53, line: 205, baseType: !7, size: 32, offset: 288)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "block_y_aff", scope: !75, file: !53, line: 206, baseType: !7, size: 32, offset: 320)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "pix_x", scope: !75, file: !53, line: 207, baseType: !7, size: 32, offset: 352)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "pix_y", scope: !75, file: !53, line: 208, baseType: !7, size: 32, offset: 384)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_x", scope: !75, file: !53, line: 209, baseType: !7, size: 32, offset: 416)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_y", scope: !75, file: !53, line: 210, baseType: !7, size: 32, offset: 448)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_x", scope: !75, file: !53, line: 212, baseType: !7, size: 32, offset: 480)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_y", scope: !75, file: !53, line: 213, baseType: !7, size: 32, offset: 512)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !75, file: !53, line: 215, baseType: !7, size: 32, offset: 544)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "qpc", scope: !75, file: !53, line: 216, baseType: !412, size: 64, offset: 576)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "qp_scaled", scope: !75, file: !53, line: 217, baseType: !113, size: 96, offset: 640)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "is_lossless", scope: !75, file: !53, line: 218, baseType: !7, size: 32, offset: 736)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "is_intra_block", scope: !75, file: !53, line: 219, baseType: !7, size: 32, offset: 768)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "is_v_block", scope: !75, file: !53, line: 220, baseType: !7, size: 32, offset: 800)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "DeblockCall", scope: !75, file: !53, line: 221, baseType: !7, size: 32, offset: 832)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "slice_nr", scope: !75, file: !53, line: 223, baseType: !497, size: 16, offset: 864)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !75, file: !53, line: 224, baseType: !370, size: 8, offset: 880)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "dpl_flag", scope: !75, file: !53, line: 225, baseType: !370, size: 8, offset: 888)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "delta_quant", scope: !75, file: !53, line: 226, baseType: !497, size: 16, offset: 896)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "list_offset", scope: !75, file: !53, line: 227, baseType: !497, size: 16, offset: 912)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "mb_up", scope: !75, file: !53, line: 229, baseType: !1035, size: 64, offset: 960)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "mb_left", scope: !75, file: !53, line: 230, baseType: !1035, size: 64, offset: 1024)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "mbup", scope: !75, file: !53, line: 232, baseType: !1035, size: 64, offset: 1088)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "mbleft", scope: !75, file: !53, line: 233, baseType: !1035, size: 64, offset: 1152)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !75, file: !53, line: 236, baseType: !497, size: 16, offset: 1216)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !75, file: !53, line: 237, baseType: !1041, size: 1024, offset: 1232)
!1041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !497, size: 1024, elements: !1042)
!1042 = !{!414, !861, !861, !414}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !75, file: !53, line: 239, baseType: !7, size: 32, offset: 2272)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !75, file: !53, line: 240, baseType: !1045, size: 192, offset: 2304)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 192, elements: !114)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits", scope: !75, file: !53, line: 241, baseType: !1045, size: 192, offset: 2496)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits_8x8", scope: !75, file: !53, line: 242, baseType: !1045, size: 192, offset: 2688)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "i16mode", scope: !75, file: !53, line: 244, baseType: !7, size: 32, offset: 2880)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !75, file: !53, line: 245, baseType: !1050, size: 32, offset: 2912)
!1050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 32, elements: !860)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !75, file: !53, line: 246, baseType: !1050, size: 32, offset: 2944)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "ipmode_DPCM", scope: !75, file: !53, line: 247, baseType: !370, size: 8, offset: 2976)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !75, file: !53, line: 248, baseType: !370, size: 8, offset: 2984)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "skip_flag", scope: !75, file: !53, line: 249, baseType: !370, size: 8, offset: 2992)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !75, file: !53, line: 250, baseType: !497, size: 16, offset: 3008)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !75, file: !53, line: 251, baseType: !497, size: 16, offset: 3024)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !75, file: !53, line: 252, baseType: !497, size: 16, offset: 3040)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !75, file: !53, line: 254, baseType: !7, size: 32, offset: 3072)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrA", scope: !75, file: !53, line: 256, baseType: !7, size: 32, offset: 3104)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrB", scope: !75, file: !53, line: 256, baseType: !7, size: 32, offset: 3136)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrC", scope: !75, file: !53, line: 256, baseType: !7, size: 32, offset: 3168)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrD", scope: !75, file: !53, line: 256, baseType: !7, size: 32, offset: 3200)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailA", scope: !75, file: !53, line: 257, baseType: !7, size: 32, offset: 3232)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailB", scope: !75, file: !53, line: 257, baseType: !7, size: 32, offset: 3264)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailC", scope: !75, file: !53, line: 257, baseType: !7, size: 32, offset: 3296)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailD", scope: !75, file: !53, line: 257, baseType: !7, size: 32, offset: 3328)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !75, file: !53, line: 259, baseType: !7, size: 32, offset: 3360)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !75, file: !53, line: 260, baseType: !7, size: 32, offset: 3392)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_4x4", scope: !75, file: !53, line: 262, baseType: !1070, size: 64, offset: 3456)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{null, !1035, !688, !7, !7}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_8x8", scope: !75, file: !53, line: 263, baseType: !1070, size: 64, offset: 3520)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "GetMVPredictor", scope: !75, file: !53, line: 265, baseType: !1075, size: 64, offset: 3584)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{null, !1035, !664, !1078, !497, !1084, !7, !7, !7, !7, !7}
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionVector", file: !53, line: 104, baseType: !1080)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 100, size: 32, elements: !1081)
!1081 = !{!1082, !1083}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "mv_x", scope: !1080, file: !53, line: 102, baseType: !497, size: 16)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "mv_y", scope: !1080, file: !53, line: 103, baseType: !497, size: 16, offset: 16)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params", file: !53, line: 53, flags: DIFlagFwdDecl)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "read_and_store_CBP_block_bit", scope: !75, file: !53, line: 268, baseType: !1088, size: 64, offset: 3648)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!7, !1035, !1091, !7}
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironmentPtr", file: !53, line: 97, baseType: !1092)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "readRefPictureIdx", scope: !75, file: !53, line: 269, baseType: !1094, size: 64, offset: 3712)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!370, !1035, !1097, !832, !370, !7}
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "mixedModeEdgeFlag", scope: !75, file: !53, line: 272, baseType: !213, size: 8, offset: 3776)
!1099 = !{!1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109}
!1100 = !DILocalVariable(name: "sym", arg: 1, scope: !48, file: !3, line: 694, type: !51)
!1101 = !DILocalVariable(name: "currStream", arg: 2, scope: !48, file: !3, line: 695, type: !809)
!1102 = !DILocalVariable(name: "type", arg: 3, scope: !48, file: !3, line: 696, type: !369)
!1103 = !DILocalVariable(name: "frame_bitoffset", scope: !48, file: !3, line: 698, type: !7)
!1104 = !DILocalVariable(name: "BitstreamLengthInBytes", scope: !48, file: !3, line: 699, type: !7)
!1105 = !DILocalVariable(name: "BitstreamLengthInBits", scope: !48, file: !3, line: 700, type: !7)
!1106 = !DILocalVariable(name: "buf", scope: !48, file: !3, line: 701, type: !212)
!1107 = !DILocalVariable(name: "retval", scope: !48, file: !3, line: 747, type: !7)
!1108 = !DILocalVariable(name: "code", scope: !48, file: !3, line: 747, type: !7)
!1109 = !DILocalVariable(name: "vlcnum", scope: !48, file: !3, line: 748, type: !7)
!1110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1111, size: 1632, elements: !1112)
!1111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!1112 = !{!115, !861, !968}
!1113 = !DIGlobalVariableExpression(var: !1114, expr: !DIExpression())
!1114 = distinct !DIGlobalVariable(name: "codtab", scope: !48, file: !3, line: 725, type: !1110, isLocal: true, isDefinition: true)
!1115 = !DIGlobalVariableExpression(var: !1116, expr: !DIExpression())
!1116 = distinct !DIGlobalVariable(scope: null, file: !3, line: 777, type: !1117, isLocal: true, isDefinition: true)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 360, elements: !1118)
!1118 = !{!1119}
!1119 = !DISubrange(count: 45)
!1120 = !DIGlobalVariableExpression(var: !1121, expr: !DIExpression())
!1121 = distinct !DIGlobalVariable(name: "lentab", scope: !1122, file: !3, line: 800, type: !1110, isLocal: true, isDefinition: true)
!1122 = distinct !DISubprogram(name: "readSyntaxElement_NumCoeffTrailingOnesChromaDC", scope: !3, file: !3, line: 798, type: !1123, scopeLine: 799, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1127)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!7, !1125, !51, !809}
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoParameters", file: !53, line: 836, baseType: !83)
!1127 = !{!1128, !1129, !1130, !1131, !1132, !1133}
!1128 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !1122, file: !3, line: 798, type: !1125)
!1129 = !DILocalVariable(name: "sym", arg: 2, scope: !1122, file: !3, line: 798, type: !51)
!1130 = !DILocalVariable(name: "currStream", arg: 3, scope: !1122, file: !3, line: 798, type: !809)
!1131 = !DILocalVariable(name: "code", scope: !1122, file: !3, line: 839, type: !7)
!1132 = !DILocalVariable(name: "yuv", scope: !1122, file: !3, line: 840, type: !7)
!1133 = !DILocalVariable(name: "retval", scope: !1122, file: !3, line: 841, type: !7)
!1134 = !DIGlobalVariableExpression(var: !1135, expr: !DIExpression())
!1135 = distinct !DIGlobalVariable(name: "codtab", scope: !1122, file: !3, line: 819, type: !1110, isLocal: true, isDefinition: true)
!1136 = !DIGlobalVariableExpression(var: !1137, expr: !DIExpression())
!1137 = distinct !DIGlobalVariable(scope: null, file: !3, line: 845, type: !1138, isLocal: true, isDefinition: true)
!1138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 432, elements: !1139)
!1139 = !{!1140}
!1140 = !DISubrange(count: 54)
!1141 = !DIGlobalVariableExpression(var: !1142, expr: !DIExpression())
!1142 = distinct !DIGlobalVariable(name: "lentab", scope: !1143, file: !3, line: 999, type: !1152, isLocal: true, isDefinition: true)
!1143 = distinct !DISubprogram(name: "readSyntaxElement_TotalZeros", scope: !3, file: !3, line: 997, type: !1144, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1146)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!7, !51, !809}
!1146 = !{!1147, !1148, !1149, !1150, !1151}
!1147 = !DILocalVariable(name: "sym", arg: 1, scope: !1143, file: !3, line: 997, type: !51)
!1148 = !DILocalVariable(name: "currStream", arg: 2, scope: !1143, file: !3, line: 997, type: !809)
!1149 = !DILocalVariable(name: "code", scope: !1143, file: !3, line: 1038, type: !7)
!1150 = !DILocalVariable(name: "vlcnum", scope: !1143, file: !3, line: 1039, type: !7)
!1151 = !DILocalVariable(name: "retval", scope: !1143, file: !3, line: 1040, type: !7)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1111, size: 1920, elements: !1153)
!1153 = !{!883, !190}
!1154 = !DIGlobalVariableExpression(var: !1155, expr: !DIExpression())
!1155 = distinct !DIGlobalVariable(name: "codtab", scope: !1143, file: !3, line: 1019, type: !1152, isLocal: true, isDefinition: true)
!1156 = !DIGlobalVariableExpression(var: !1157, expr: !DIExpression())
!1157 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1044, type: !1158, isLocal: true, isDefinition: true)
!1158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 320, elements: !1159)
!1159 = !{!1160}
!1160 = !DISubrange(count: 40)
!1161 = !DIGlobalVariableExpression(var: !1162, expr: !DIExpression())
!1162 = distinct !DIGlobalVariable(name: "lentab", scope: !1163, file: !3, line: 1063, type: !1172, isLocal: true, isDefinition: true)
!1163 = distinct !DISubprogram(name: "readSyntaxElement_TotalZerosChromaDC", scope: !3, file: !3, line: 1061, type: !1123, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1164)
!1164 = !{!1165, !1166, !1167, !1168, !1169, !1170, !1171}
!1165 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !1163, file: !3, line: 1061, type: !1125)
!1166 = !DILocalVariable(name: "sym", arg: 2, scope: !1163, file: !3, line: 1061, type: !51)
!1167 = !DILocalVariable(name: "currStream", arg: 3, scope: !1163, file: !3, line: 1061, type: !809)
!1168 = !DILocalVariable(name: "code", scope: !1163, file: !3, line: 1127, type: !7)
!1169 = !DILocalVariable(name: "yuv", scope: !1163, file: !3, line: 1128, type: !7)
!1170 = !DILocalVariable(name: "vlcnum", scope: !1163, file: !3, line: 1129, type: !7)
!1171 = !DILocalVariable(name: "retval", scope: !1163, file: !3, line: 1130, type: !7)
!1172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1111, size: 5760, elements: !1173)
!1173 = !{!115, !883, !190}
!1174 = !DIGlobalVariableExpression(var: !1175, expr: !DIExpression())
!1175 = distinct !DIGlobalVariable(name: "codtab", scope: !1163, file: !3, line: 1095, type: !1172, isLocal: true, isDefinition: true)
!1176 = !DIGlobalVariableExpression(var: !1177, expr: !DIExpression())
!1177 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1134, type: !1178, isLocal: true, isDefinition: true)
!1178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 280, elements: !1179)
!1179 = !{!1180}
!1180 = !DISubrange(count: 35)
!1181 = !DIGlobalVariableExpression(var: !1182, expr: !DIExpression())
!1182 = distinct !DIGlobalVariable(name: "lentab", scope: !1183, file: !3, line: 1154, type: !1152, isLocal: true, isDefinition: true)
!1183 = distinct !DISubprogram(name: "readSyntaxElement_Run", scope: !3, file: !3, line: 1152, type: !1144, scopeLine: 1153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1184)
!1184 = !{!1185, !1186, !1187, !1188, !1189}
!1185 = !DILocalVariable(name: "sym", arg: 1, scope: !1183, file: !3, line: 1152, type: !51)
!1186 = !DILocalVariable(name: "currStream", arg: 2, scope: !1183, file: !3, line: 1152, type: !809)
!1187 = !DILocalVariable(name: "code", scope: !1183, file: !3, line: 1175, type: !7)
!1188 = !DILocalVariable(name: "vlcnum", scope: !1183, file: !3, line: 1176, type: !7)
!1189 = !DILocalVariable(name: "retval", scope: !1183, file: !3, line: 1177, type: !7)
!1190 = !DIGlobalVariableExpression(var: !1191, expr: !DIExpression())
!1191 = distinct !DIGlobalVariable(name: "codtab", scope: !1183, file: !3, line: 1165, type: !1152, isLocal: true, isDefinition: true)
!1192 = !DIGlobalVariableExpression(var: !1193, expr: !DIExpression())
!1193 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1181, type: !1194, isLocal: true, isDefinition: true)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 216, elements: !1195)
!1195 = !{!1196}
!1196 = !DISubrange(count: 27)
!1197 = !DIGlobalVariableExpression(var: !1198, expr: !DIExpression())
!1198 = distinct !DIGlobalVariable(name: "NCBP", scope: !2, file: !1199, line: 19, type: !1200, isLocal: true, isDefinition: true)
!1199 = !DIFile(filename: "ldecod_src/inc/vlc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "a07c7f22ff77ec9e539cc870eb854795")
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1111, size: 1536, elements: !1201)
!1201 = !{!414, !1202, !414}
!1202 = !DISubrange(count: 48)
!1203 = !DIGlobalVariableExpression(var: !1204, expr: !DIExpression())
!1204 = distinct !DIGlobalVariable(name: "LEVRUN1", scope: !2, file: !1199, line: 44, type: !1205, isLocal: true, isDefinition: true)
!1205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1111, size: 128, elements: !928)
!1206 = !DIGlobalVariableExpression(var: !1207, expr: !DIExpression())
!1207 = distinct !DIGlobalVariable(name: "NTAB3", scope: !2, file: !1199, line: 64, type: !1208, isLocal: true, isDefinition: true)
!1208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1111, size: 64, elements: !1209)
!1209 = !{!414, !414, !414}
!1210 = !DIGlobalVariableExpression(var: !1211, expr: !DIExpression())
!1211 = distinct !DIGlobalVariable(name: "LEVRUN3", scope: !2, file: !1199, line: 59, type: !1212, isLocal: true, isDefinition: true)
!1212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1111, size: 32, elements: !860)
!1213 = !DIGlobalVariableExpression(var: !1214, expr: !DIExpression())
!1214 = distinct !DIGlobalVariable(name: "assignSE2partition", scope: !2, file: !1215, line: 103, type: !1216, isLocal: true, isDefinition: true)
!1215 = !DIFile(filename: "ldecod_src/inc/elements.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "655df3b60bdcd53a79db33d4ea16f27b")
!1216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1111, size: 320, elements: !1217)
!1217 = !{!414, !627}
!1218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1111, size: 512, elements: !1219)
!1219 = !{!861, !205, !414}
!1220 = !{i32 7, !"Dwarf Version", i32 5}
!1221 = !{i32 2, !"Debug Info Version", i32 3}
!1222 = !{i32 1, !"wchar_size", i32 4}
!1223 = !{i32 8, !"PIC Level", i32 2}
!1224 = !{i32 7, !"PIE Level", i32 2}
!1225 = !{i32 7, !"uwtable", i32 2}
!1226 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!1227 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!1228 = distinct !DISubprogram(name: "ue_v", scope: !3, file: !3, line: 48, type: !1229, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1232)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!7, !1231, !809}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!1232 = !{!1233, !1234, !1235}
!1233 = !DILocalVariable(name: "tracestring", arg: 1, scope: !1228, file: !3, line: 48, type: !1231)
!1234 = !DILocalVariable(name: "bitstream", arg: 2, scope: !1228, file: !3, line: 48, type: !809)
!1235 = !DILocalVariable(name: "symbol", scope: !1228, file: !3, line: 50, type: !52)
!1236 = distinct !DIAssignID()
!1237 = !DILocation(line: 0, scope: !1228)
!1238 = !DILocation(line: 50, column: 3, scope: !1228)
!1239 = !DILocation(line: 53, column: 15, scope: !1228)
!1240 = distinct !DIAssignID()
!1241 = !DILocation(line: 54, column: 10, scope: !1228)
!1242 = !DILocation(line: 54, column: 18, scope: !1228)
!1243 = distinct !DIAssignID()
!1244 = !DILocation(line: 56, column: 3, scope: !1228)
!1245 = !DILocation(line: 57, column: 27, scope: !1228)
!1246 = !DILocation(line: 57, column: 3, scope: !1228)
!1247 = !DILocation(line: 57, column: 10, scope: !1228)
!1248 = !DILocation(line: 57, column: 18, scope: !1228)
!1249 = !DILocation(line: 58, column: 17, scope: !1228)
!1250 = !DILocation(line: 59, column: 1, scope: !1228)
!1251 = !DILocation(line: 58, column: 3, scope: !1228)
!1252 = distinct !DISubprogram(name: "linfo_ue", scope: !3, file: !3, line: 203, type: !66, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1253)
!1253 = !{!1254, !1255, !1256, !1257}
!1254 = !DILocalVariable(name: "len", arg: 1, scope: !1252, file: !3, line: 203, type: !7)
!1255 = !DILocalVariable(name: "info", arg: 2, scope: !1252, file: !3, line: 203, type: !7)
!1256 = !DILocalVariable(name: "value1", arg: 3, scope: !1252, file: !3, line: 203, type: !68)
!1257 = !DILocalVariable(name: "dummy", arg: 4, scope: !1252, file: !3, line: 203, type: !68)
!1258 = !DILocation(line: 0, scope: !1252)
!1259 = !DILocation(line: 206, column: 46, scope: !1252)
!1260 = !DILocation(line: 206, column: 38, scope: !1252)
!1261 = !DILocation(line: 206, column: 53, scope: !1252)
!1262 = !DILocation(line: 206, column: 77, scope: !1252)
!1263 = !DILocation(line: 206, column: 11, scope: !1252)
!1264 = !DILocation(line: 207, column: 1, scope: !1252)
!1265 = distinct !DISubprogram(name: "readSyntaxElement_VLC", scope: !3, file: !3, line: 367, type: !1144, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1266)
!1266 = !{!1267, !1268}
!1267 = !DILocalVariable(name: "sym", arg: 1, scope: !1265, file: !3, line: 367, type: !51)
!1268 = !DILocalVariable(name: "currStream", arg: 2, scope: !1265, file: !3, line: 367, type: !809)
!1269 = !DILocation(line: 0, scope: !1265)
!1270 = !DILocation(line: 370, column: 41, scope: !1265)
!1271 = !DILocation(line: 370, column: 67, scope: !1265)
!1272 = !DILocation(line: 370, column: 91, scope: !1265)
!1273 = !DILocation(line: 370, column: 109, scope: !1265)
!1274 = !DILocalVariable(name: "buffer", arg: 1, scope: !1275, file: !3, line: 535, type: !212)
!1275 = distinct !DISubprogram(name: "GetVLCSymbol", scope: !3, file: !3, line: 535, type: !1276, scopeLine: 536, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1278)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!7, !212, !7, !68, !7}
!1278 = !{!1274, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288}
!1279 = !DILocalVariable(name: "totbitoffset", arg: 2, scope: !1275, file: !3, line: 535, type: !7)
!1280 = !DILocalVariable(name: "info", arg: 3, scope: !1275, file: !3, line: 535, type: !68)
!1281 = !DILocalVariable(name: "bytecount", arg: 4, scope: !1275, file: !3, line: 535, type: !7)
!1282 = !DILocalVariable(name: "byteoffset", scope: !1275, file: !3, line: 537, type: !585)
!1283 = !DILocalVariable(name: "bitoffset", scope: !1275, file: !3, line: 538, type: !7)
!1284 = !DILocalVariable(name: "bitcounter", scope: !1275, file: !3, line: 539, type: !7)
!1285 = !DILocalVariable(name: "len", scope: !1275, file: !3, line: 540, type: !7)
!1286 = !DILocalVariable(name: "cur_byte", scope: !1275, file: !3, line: 541, type: !212)
!1287 = !DILocalVariable(name: "ctr_bit", scope: !1275, file: !3, line: 542, type: !7)
!1288 = !DILocalVariable(name: "inf", scope: !1289, file: !3, line: 560, type: !7)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 558, column: 3)
!1290 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 555, column: 7)
!1291 = !DILocation(line: 0, scope: !1275, inlinedAt: !1292)
!1292 = distinct !DILocation(line: 370, column: 15, scope: !1265)
!1293 = !DILocation(line: 537, column: 35, scope: !1275, inlinedAt: !1292)
!1294 = !DILocation(line: 537, column: 21, scope: !1275, inlinedAt: !1292)
!1295 = !DILocation(line: 538, column: 40, scope: !1275, inlinedAt: !1292)
!1296 = !DILocation(line: 538, column: 24, scope: !1275, inlinedAt: !1292)
!1297 = !DILocation(line: 541, column: 23, scope: !1275, inlinedAt: !1292)
!1298 = !DILocation(line: 542, column: 23, scope: !1275, inlinedAt: !1292)
!1299 = !DILocation(line: 542, column: 22, scope: !1275, inlinedAt: !1292)
!1300 = !DILocation(line: 544, column: 18, scope: !1275, inlinedAt: !1292)
!1301 = !DILocation(line: 544, column: 3, scope: !1275, inlinedAt: !1292)
!1302 = !DILocation(line: 546, column: 8, scope: !1303, inlinedAt: !1292)
!1303 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 545, column: 3)
!1304 = !DILocation(line: 547, column: 15, scope: !1303, inlinedAt: !1292)
!1305 = !DILocation(line: 548, column: 14, scope: !1303, inlinedAt: !1292)
!1306 = !DILocation(line: 549, column: 15, scope: !1303, inlinedAt: !1292)
!1307 = !DILocation(line: 550, column: 29, scope: !1303, inlinedAt: !1292)
!1308 = !DILocation(line: 550, column: 15, scope: !1303, inlinedAt: !1292)
!1309 = !DILocation(line: 551, column: 15, scope: !1303, inlinedAt: !1292)
!1310 = !DILocation(line: 552, column: 20, scope: !1303, inlinedAt: !1292)
!1311 = !DILocation(line: 552, column: 19, scope: !1303, inlinedAt: !1292)
!1312 = distinct !{!1312, !1301, !1313}
!1313 = !DILocation(line: 553, column: 3, scope: !1275, inlinedAt: !1292)
!1314 = !DILocation(line: 555, column: 26, scope: !1290, inlinedAt: !1292)
!1315 = !DILocation(line: 555, column: 31, scope: !1290, inlinedAt: !1292)
!1316 = !DILocation(line: 555, column: 20, scope: !1290, inlinedAt: !1292)
!1317 = !DILocation(line: 555, column: 18, scope: !1290, inlinedAt: !1292)
!1318 = !DILocation(line: 555, column: 39, scope: !1290, inlinedAt: !1292)
!1319 = !DILocation(line: 555, column: 37, scope: !1290, inlinedAt: !1292)
!1320 = !DILocation(line: 555, column: 7, scope: !1275, inlinedAt: !1292)
!1321 = !DILocation(line: 562, column: 5, scope: !1289, inlinedAt: !1292)
!1322 = !DILocation(line: 572, column: 11, scope: !1289, inlinedAt: !1292)
!1323 = !DILocation(line: 370, column: 8, scope: !1265)
!1324 = !DILocation(line: 370, column: 12, scope: !1265)
!1325 = !DILocation(line: 371, column: 7, scope: !1265)
!1326 = !DILocation(line: 0, scope: !1289, inlinedAt: !1292)
!1327 = !DILocation(line: 564, column: 17, scope: !1328, inlinedAt: !1292)
!1328 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 563, column: 5)
!1329 = !DILocation(line: 565, column: 17, scope: !1328, inlinedAt: !1292)
!1330 = !DILocation(line: 566, column: 31, scope: !1328, inlinedAt: !1292)
!1331 = !DILocation(line: 566, column: 17, scope: !1328, inlinedAt: !1292)
!1332 = !DILocation(line: 569, column: 16, scope: !1328, inlinedAt: !1292)
!1333 = !DILocation(line: 569, column: 15, scope: !1328, inlinedAt: !1292)
!1334 = !DILocation(line: 569, column: 27, scope: !1328, inlinedAt: !1292)
!1335 = !DILocation(line: 568, column: 11, scope: !1328, inlinedAt: !1292)
!1336 = !DILocation(line: 569, column: 43, scope: !1328, inlinedAt: !1292)
!1337 = !DILocation(line: 569, column: 11, scope: !1328, inlinedAt: !1292)
!1338 = distinct !{!1338, !1321, !1339}
!1339 = !DILocation(line: 570, column: 5, scope: !1289, inlinedAt: !1292)
!1340 = !DILocation(line: 371, column: 16, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 371, column: 7)
!1342 = !DILocation(line: 374, column: 31, scope: !1265)
!1343 = !DILocation(line: 375, column: 8, scope: !1265)
!1344 = !DILocation(line: 375, column: 21, scope: !1265)
!1345 = !DILocation(line: 375, column: 31, scope: !1265)
!1346 = !DILocation(line: 375, column: 43, scope: !1265)
!1347 = !DILocation(line: 375, column: 59, scope: !1265)
!1348 = !DILocation(line: 375, column: 3, scope: !1265)
!1349 = !DILocation(line: 381, column: 3, scope: !1265)
!1350 = !DILocation(line: 382, column: 1, scope: !1265)
!1351 = distinct !DISubprogram(name: "se_v", scope: !3, file: !3, line: 79, type: !1229, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1352)
!1352 = !{!1353, !1354, !1355}
!1353 = !DILocalVariable(name: "tracestring", arg: 1, scope: !1351, file: !3, line: 79, type: !1231)
!1354 = !DILocalVariable(name: "bitstream", arg: 2, scope: !1351, file: !3, line: 79, type: !809)
!1355 = !DILocalVariable(name: "symbol", scope: !1351, file: !3, line: 81, type: !52)
!1356 = distinct !DIAssignID()
!1357 = !DILocation(line: 0, scope: !1351)
!1358 = !DILocation(line: 81, column: 3, scope: !1351)
!1359 = !DILocation(line: 84, column: 15, scope: !1351)
!1360 = distinct !DIAssignID()
!1361 = !DILocation(line: 85, column: 10, scope: !1351)
!1362 = !DILocation(line: 85, column: 18, scope: !1351)
!1363 = distinct !DIAssignID()
!1364 = !DILocation(line: 87, column: 3, scope: !1351)
!1365 = !DILocation(line: 88, column: 27, scope: !1351)
!1366 = !DILocation(line: 88, column: 3, scope: !1351)
!1367 = !DILocation(line: 88, column: 10, scope: !1351)
!1368 = !DILocation(line: 88, column: 18, scope: !1351)
!1369 = !DILocation(line: 89, column: 17, scope: !1351)
!1370 = !DILocation(line: 90, column: 1, scope: !1351)
!1371 = !DILocation(line: 89, column: 3, scope: !1351)
!1372 = distinct !DISubprogram(name: "linfo_se", scope: !3, file: !3, line: 219, type: !66, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1373)
!1373 = !{!1374, !1375, !1376, !1377, !1378}
!1374 = !DILocalVariable(name: "len", arg: 1, scope: !1372, file: !3, line: 219, type: !7)
!1375 = !DILocalVariable(name: "info", arg: 2, scope: !1372, file: !3, line: 219, type: !7)
!1376 = !DILocalVariable(name: "value1", arg: 3, scope: !1372, file: !3, line: 219, type: !68)
!1377 = !DILocalVariable(name: "dummy", arg: 4, scope: !1372, file: !3, line: 219, type: !68)
!1378 = !DILocalVariable(name: "n", scope: !1372, file: !3, line: 222, type: !31)
!1379 = !DILocation(line: 0, scope: !1372)
!1380 = !DILocation(line: 222, column: 46, scope: !1372)
!1381 = !DILocation(line: 222, column: 38, scope: !1372)
!1382 = !DILocation(line: 222, column: 53, scope: !1372)
!1383 = !DILocation(line: 223, column: 21, scope: !1372)
!1384 = !DILocation(line: 224, column: 9, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 224, column: 6)
!1386 = !DILocation(line: 224, column: 17, scope: !1385)
!1387 = !DILocation(line: 224, column: 6, scope: !1372)
!1388 = !DILocation(line: 226, column: 1, scope: !1372)
!1389 = distinct !DISubprogram(name: "u_v", scope: !3, file: !3, line: 113, type: !1390, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1392)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!7, !7, !1231, !809}
!1392 = !{!1393, !1394, !1395, !1396}
!1393 = !DILocalVariable(name: "LenInBits", arg: 1, scope: !1389, file: !3, line: 113, type: !7)
!1394 = !DILocalVariable(name: "tracestring", arg: 2, scope: !1389, file: !3, line: 113, type: !1231)
!1395 = !DILocalVariable(name: "bitstream", arg: 3, scope: !1389, file: !3, line: 113, type: !809)
!1396 = !DILocalVariable(name: "symbol", scope: !1389, file: !3, line: 115, type: !52)
!1397 = !DILocation(line: 0, scope: !1389)
!1398 = !DILocalVariable(name: "sym", arg: 1, scope: !1399, file: !3, line: 668, type: !51)
!1399 = distinct !DISubprogram(name: "readSyntaxElement_FLC", scope: !3, file: !3, line: 668, type: !1144, scopeLine: 669, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1400)
!1400 = !{!1398, !1401, !1402}
!1401 = !DILocalVariable(name: "currStream", arg: 2, scope: !1399, file: !3, line: 668, type: !809)
!1402 = !DILocalVariable(name: "BitstreamLengthInBits", scope: !1399, file: !3, line: 670, type: !7)
!1403 = !DILocation(line: 0, scope: !1399, inlinedAt: !1404)
!1404 = distinct !DILocation(line: 123, column: 3, scope: !1389)
!1405 = !DILocation(line: 670, column: 45, scope: !1399, inlinedAt: !1404)
!1406 = !DILocation(line: 670, column: 62, scope: !1399, inlinedAt: !1404)
!1407 = !DILocation(line: 670, column: 68, scope: !1399, inlinedAt: !1404)
!1408 = !DILocation(line: 672, column: 28, scope: !1409, inlinedAt: !1404)
!1409 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 672, column: 7)
!1410 = !DILocation(line: 672, column: 54, scope: !1409, inlinedAt: !1404)
!1411 = !DILocalVariable(name: "buffer", arg: 1, scope: !1412, file: !3, line: 1211, type: !212)
!1412 = distinct !DISubprogram(name: "GetBits", scope: !3, file: !3, line: 1211, type: !1413, scopeLine: 1213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1415)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!7, !212, !7, !68, !7, !7}
!1415 = !{!1411, !1416, !1417, !1418, !1419, !1420, !1423, !1424, !1425, !1426}
!1416 = !DILocalVariable(name: "totbitoffset", arg: 2, scope: !1412, file: !3, line: 1211, type: !7)
!1417 = !DILocalVariable(name: "info", arg: 3, scope: !1412, file: !3, line: 1211, type: !68)
!1418 = !DILocalVariable(name: "bitcount", arg: 4, scope: !1412, file: !3, line: 1211, type: !7)
!1419 = !DILocalVariable(name: "numbits", arg: 5, scope: !1412, file: !3, line: 1212, type: !7)
!1420 = !DILocalVariable(name: "bitoffset", scope: !1421, file: !3, line: 1220, type: !7)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 1219, column: 3)
!1422 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 1214, column: 7)
!1423 = !DILocalVariable(name: "byteoffset", scope: !1421, file: !3, line: 1221, type: !7)
!1424 = !DILocalVariable(name: "bitcounter", scope: !1421, file: !3, line: 1222, type: !7)
!1425 = !DILocalVariable(name: "curbyte", scope: !1421, file: !3, line: 1223, type: !212)
!1426 = !DILocalVariable(name: "inf", scope: !1421, file: !3, line: 1224, type: !7)
!1427 = !DILocation(line: 0, scope: !1412, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 672, column: 8, scope: !1409, inlinedAt: !1404)
!1429 = !DILocation(line: 1214, column: 21, scope: !1422, inlinedAt: !1428)
!1430 = !DILocation(line: 1214, column: 33, scope: !1422, inlinedAt: !1428)
!1431 = !DILocation(line: 1214, column: 7, scope: !1412, inlinedAt: !1428)
!1432 = !DILocation(line: 0, scope: !1421, inlinedAt: !1428)
!1433 = !DILocation(line: 1226, column: 5, scope: !1421, inlinedAt: !1428)
!1434 = !DILocation(line: 1221, column: 36, scope: !1421, inlinedAt: !1428)
!1435 = !DILocation(line: 1223, column: 24, scope: !1421, inlinedAt: !1428)
!1436 = !DILocation(line: 1220, column: 40, scope: !1421, inlinedAt: !1428)
!1437 = !DILocation(line: 1220, column: 24, scope: !1421, inlinedAt: !1428)
!1438 = !DILocation(line: 1229, column: 16, scope: !1439, inlinedAt: !1428)
!1439 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 1227, column: 5)
!1440 = !DILocation(line: 1229, column: 15, scope: !1439, inlinedAt: !1428)
!1441 = !DILocation(line: 1229, column: 38, scope: !1439, inlinedAt: !1428)
!1442 = !DILocation(line: 1229, column: 25, scope: !1439, inlinedAt: !1428)
!1443 = !DILocation(line: 1230, column: 21, scope: !1444, inlinedAt: !1428)
!1444 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 1230, column: 11)
!1445 = !DILocation(line: 1230, column: 11, scope: !1439, inlinedAt: !1428)
!1446 = !DILocation(line: 1228, column: 11, scope: !1439, inlinedAt: !1428)
!1447 = !DILocation(line: 1229, column: 43, scope: !1439, inlinedAt: !1428)
!1448 = !DILocation(line: 1229, column: 11, scope: !1439, inlinedAt: !1428)
!1449 = distinct !{!1449, !1433, !1450}
!1450 = !DILocation(line: 1238, column: 5, scope: !1421, inlinedAt: !1428)
!1451 = !DILocation(line: 672, column: 118, scope: !1409, inlinedAt: !1404)
!1452 = !DILocation(line: 672, column: 7, scope: !1399, inlinedAt: !1404)
!1453 = !DILocation(line: 1239, column: 11, scope: !1421, inlinedAt: !1428)
!1454 = !DILocation(line: 676, column: 31, scope: !1399, inlinedAt: !1404)
!1455 = !DILocation(line: 682, column: 3, scope: !1399, inlinedAt: !1404)
!1456 = !DILocation(line: 124, column: 3, scope: !1389)
!1457 = !DILocation(line: 124, column: 10, scope: !1389)
!1458 = !DILocation(line: 124, column: 18, scope: !1389)
!1459 = !DILocation(line: 126, column: 3, scope: !1389)
!1460 = !DILocation(line: 0, scope: !1399)
!1461 = !DILocation(line: 670, column: 45, scope: !1399)
!1462 = !DILocation(line: 670, column: 62, scope: !1399)
!1463 = !DILocation(line: 670, column: 68, scope: !1399)
!1464 = !DILocation(line: 672, column: 28, scope: !1409)
!1465 = !DILocation(line: 672, column: 54, scope: !1409)
!1466 = !DILocation(line: 672, column: 78, scope: !1409)
!1467 = !DILocation(line: 672, column: 112, scope: !1409)
!1468 = !DILocation(line: 0, scope: !1412, inlinedAt: !1469)
!1469 = distinct !DILocation(line: 672, column: 8, scope: !1409)
!1470 = !DILocation(line: 1214, column: 21, scope: !1422, inlinedAt: !1469)
!1471 = !DILocation(line: 1214, column: 33, scope: !1422, inlinedAt: !1469)
!1472 = !DILocation(line: 1214, column: 7, scope: !1412, inlinedAt: !1469)
!1473 = !DILocation(line: 0, scope: !1421, inlinedAt: !1469)
!1474 = !DILocation(line: 1226, column: 5, scope: !1421, inlinedAt: !1469)
!1475 = !DILocation(line: 1239, column: 11, scope: !1421, inlinedAt: !1469)
!1476 = !DILocation(line: 672, column: 7, scope: !1399)
!1477 = !DILocation(line: 1221, column: 36, scope: !1421, inlinedAt: !1469)
!1478 = !DILocation(line: 1223, column: 24, scope: !1421, inlinedAt: !1469)
!1479 = !DILocation(line: 1220, column: 40, scope: !1421, inlinedAt: !1469)
!1480 = !DILocation(line: 1220, column: 24, scope: !1421, inlinedAt: !1469)
!1481 = !DILocation(line: 1229, column: 16, scope: !1439, inlinedAt: !1469)
!1482 = !DILocation(line: 1229, column: 15, scope: !1439, inlinedAt: !1469)
!1483 = !DILocation(line: 1229, column: 38, scope: !1439, inlinedAt: !1469)
!1484 = !DILocation(line: 1229, column: 25, scope: !1439, inlinedAt: !1469)
!1485 = !DILocation(line: 1230, column: 21, scope: !1444, inlinedAt: !1469)
!1486 = !DILocation(line: 1230, column: 11, scope: !1439, inlinedAt: !1469)
!1487 = !DILocation(line: 1228, column: 11, scope: !1439, inlinedAt: !1469)
!1488 = !DILocation(line: 1229, column: 43, scope: !1439, inlinedAt: !1469)
!1489 = !DILocation(line: 1229, column: 11, scope: !1439, inlinedAt: !1469)
!1490 = distinct !{!1490, !1474, !1491}
!1491 = !DILocation(line: 1238, column: 5, scope: !1421, inlinedAt: !1469)
!1492 = !DILocation(line: 672, column: 118, scope: !1409)
!1493 = !DILocation(line: 675, column: 22, scope: !1399)
!1494 = !DILocation(line: 675, column: 8, scope: !1399)
!1495 = !DILocation(line: 675, column: 15, scope: !1399)
!1496 = !DILocation(line: 676, column: 31, scope: !1399)
!1497 = !DILocation(line: 682, column: 3, scope: !1399)
!1498 = !DILocation(line: 683, column: 1, scope: !1399)
!1499 = distinct !DISubprogram(name: "i_v", scope: !3, file: !3, line: 149, type: !1390, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1500)
!1500 = !{!1501, !1502, !1503, !1504}
!1501 = !DILocalVariable(name: "LenInBits", arg: 1, scope: !1499, file: !3, line: 149, type: !7)
!1502 = !DILocalVariable(name: "tracestring", arg: 2, scope: !1499, file: !3, line: 149, type: !1231)
!1503 = !DILocalVariable(name: "bitstream", arg: 3, scope: !1499, file: !3, line: 149, type: !809)
!1504 = !DILocalVariable(name: "symbol", scope: !1499, file: !3, line: 151, type: !52)
!1505 = !DILocation(line: 0, scope: !1499)
!1506 = !DILocation(line: 0, scope: !1399, inlinedAt: !1507)
!1507 = distinct !DILocation(line: 159, column: 3, scope: !1499)
!1508 = !DILocation(line: 670, column: 45, scope: !1399, inlinedAt: !1507)
!1509 = !DILocation(line: 670, column: 62, scope: !1399, inlinedAt: !1507)
!1510 = !DILocation(line: 670, column: 68, scope: !1399, inlinedAt: !1507)
!1511 = !DILocation(line: 672, column: 28, scope: !1409, inlinedAt: !1507)
!1512 = !DILocation(line: 672, column: 54, scope: !1409, inlinedAt: !1507)
!1513 = !DILocation(line: 0, scope: !1412, inlinedAt: !1514)
!1514 = distinct !DILocation(line: 672, column: 8, scope: !1409, inlinedAt: !1507)
!1515 = !DILocation(line: 1214, column: 21, scope: !1422, inlinedAt: !1514)
!1516 = !DILocation(line: 1214, column: 33, scope: !1422, inlinedAt: !1514)
!1517 = !DILocation(line: 1214, column: 7, scope: !1412, inlinedAt: !1514)
!1518 = !DILocation(line: 0, scope: !1421, inlinedAt: !1514)
!1519 = !DILocation(line: 1226, column: 5, scope: !1421, inlinedAt: !1514)
!1520 = !DILocation(line: 1221, column: 36, scope: !1421, inlinedAt: !1514)
!1521 = !DILocation(line: 1223, column: 24, scope: !1421, inlinedAt: !1514)
!1522 = !DILocation(line: 1220, column: 40, scope: !1421, inlinedAt: !1514)
!1523 = !DILocation(line: 1220, column: 24, scope: !1421, inlinedAt: !1514)
!1524 = !DILocation(line: 1229, column: 16, scope: !1439, inlinedAt: !1514)
!1525 = !DILocation(line: 1229, column: 15, scope: !1439, inlinedAt: !1514)
!1526 = !DILocation(line: 1229, column: 38, scope: !1439, inlinedAt: !1514)
!1527 = !DILocation(line: 1229, column: 25, scope: !1439, inlinedAt: !1514)
!1528 = !DILocation(line: 1230, column: 21, scope: !1444, inlinedAt: !1514)
!1529 = !DILocation(line: 1230, column: 11, scope: !1439, inlinedAt: !1514)
!1530 = !DILocation(line: 1228, column: 11, scope: !1439, inlinedAt: !1514)
!1531 = !DILocation(line: 1229, column: 43, scope: !1439, inlinedAt: !1514)
!1532 = !DILocation(line: 1229, column: 11, scope: !1439, inlinedAt: !1514)
!1533 = distinct !{!1533, !1519, !1534}
!1534 = !DILocation(line: 1238, column: 5, scope: !1421, inlinedAt: !1514)
!1535 = !DILocation(line: 672, column: 118, scope: !1409, inlinedAt: !1507)
!1536 = !DILocation(line: 672, column: 7, scope: !1399, inlinedAt: !1507)
!1537 = !DILocation(line: 1239, column: 11, scope: !1421, inlinedAt: !1514)
!1538 = !DILocation(line: 676, column: 31, scope: !1399, inlinedAt: !1507)
!1539 = !DILocation(line: 682, column: 3, scope: !1399, inlinedAt: !1507)
!1540 = !DILocation(line: 160, column: 3, scope: !1499)
!1541 = !DILocation(line: 160, column: 10, scope: !1499)
!1542 = !DILocation(line: 160, column: 18, scope: !1499)
!1543 = !DILocation(line: 163, column: 49, scope: !1499)
!1544 = !DILocation(line: 163, column: 35, scope: !1499)
!1545 = !DILocation(line: 163, column: 30, scope: !1499)
!1546 = !DILocation(line: 163, column: 16, scope: !1499)
!1547 = !DILocation(line: 163, column: 57, scope: !1499)
!1548 = !DILocation(line: 165, column: 3, scope: !1499)
!1549 = distinct !DISubprogram(name: "u_1", scope: !3, file: !3, line: 186, type: !1229, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1550)
!1550 = !{!1551, !1552}
!1551 = !DILocalVariable(name: "tracestring", arg: 1, scope: !1549, file: !3, line: 186, type: !1231)
!1552 = !DILocalVariable(name: "bitstream", arg: 2, scope: !1549, file: !3, line: 186, type: !809)
!1553 = !DILocation(line: 0, scope: !1549)
!1554 = !DILocation(line: 0, scope: !1389, inlinedAt: !1555)
!1555 = distinct !DILocation(line: 188, column: 20, scope: !1549)
!1556 = !DILocation(line: 0, scope: !1399, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 123, column: 3, scope: !1389, inlinedAt: !1555)
!1558 = !DILocation(line: 670, column: 45, scope: !1399, inlinedAt: !1557)
!1559 = !DILocation(line: 670, column: 62, scope: !1399, inlinedAt: !1557)
!1560 = !DILocation(line: 670, column: 68, scope: !1399, inlinedAt: !1557)
!1561 = !DILocation(line: 672, column: 54, scope: !1409, inlinedAt: !1557)
!1562 = !DILocation(line: 0, scope: !1412, inlinedAt: !1563)
!1563 = distinct !DILocation(line: 672, column: 8, scope: !1409, inlinedAt: !1557)
!1564 = !DILocation(line: 1214, column: 33, scope: !1422, inlinedAt: !1563)
!1565 = !DILocation(line: 1214, column: 7, scope: !1412, inlinedAt: !1563)
!1566 = !DILocation(line: 1214, column: 21, scope: !1422, inlinedAt: !1563)
!1567 = !DILocation(line: 672, column: 28, scope: !1409, inlinedAt: !1557)
!1568 = !DILocation(line: 0, scope: !1421, inlinedAt: !1563)
!1569 = !DILocation(line: 1221, column: 36, scope: !1421, inlinedAt: !1563)
!1570 = !DILocation(line: 1223, column: 24, scope: !1421, inlinedAt: !1563)
!1571 = !DILocation(line: 1220, column: 40, scope: !1421, inlinedAt: !1563)
!1572 = !DILocation(line: 1220, column: 24, scope: !1421, inlinedAt: !1563)
!1573 = !DILocation(line: 1229, column: 16, scope: !1439, inlinedAt: !1563)
!1574 = !DILocation(line: 1229, column: 15, scope: !1439, inlinedAt: !1563)
!1575 = !DILocation(line: 1229, column: 25, scope: !1439, inlinedAt: !1563)
!1576 = !DILocation(line: 1229, column: 43, scope: !1439, inlinedAt: !1563)
!1577 = !DILocation(line: 676, column: 31, scope: !1399, inlinedAt: !1557)
!1578 = !DILocation(line: 682, column: 3, scope: !1399, inlinedAt: !1557)
!1579 = !DILocation(line: 124, column: 3, scope: !1389, inlinedAt: !1555)
!1580 = !DILocation(line: 124, column: 10, scope: !1389, inlinedAt: !1555)
!1581 = !DILocation(line: 124, column: 18, scope: !1389, inlinedAt: !1555)
!1582 = !DILocation(line: 188, column: 3, scope: !1549)
!1583 = distinct !DISubprogram(name: "linfo_cbp_intra_normal", scope: !3, file: !3, line: 237, type: !66, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1584)
!1584 = !{!1585, !1586, !1587, !1588, !1589}
!1585 = !DILocalVariable(name: "len", arg: 1, scope: !1583, file: !3, line: 237, type: !7)
!1586 = !DILocalVariable(name: "info", arg: 2, scope: !1583, file: !3, line: 237, type: !7)
!1587 = !DILocalVariable(name: "cbp", arg: 3, scope: !1583, file: !3, line: 237, type: !68)
!1588 = !DILocalVariable(name: "dummy", arg: 4, scope: !1583, file: !3, line: 237, type: !68)
!1589 = !DILocalVariable(name: "cbp_idx", scope: !1583, file: !3, line: 239, type: !7)
!1590 = !DILocation(line: 0, scope: !1583)
!1591 = !DILocation(line: 0, scope: !1252, inlinedAt: !1592)
!1592 = distinct !DILocation(line: 241, column: 3, scope: !1583)
!1593 = !DILocation(line: 206, column: 46, scope: !1252, inlinedAt: !1592)
!1594 = !DILocation(line: 206, column: 38, scope: !1252, inlinedAt: !1592)
!1595 = !DILocation(line: 206, column: 53, scope: !1252, inlinedAt: !1592)
!1596 = !DILocation(line: 206, column: 77, scope: !1252, inlinedAt: !1592)
!1597 = !DILocation(line: 242, column: 8, scope: !1583)
!1598 = !DILocation(line: 242, column: 7, scope: !1583)
!1599 = !DILocation(line: 243, column: 1, scope: !1583)
!1600 = distinct !DISubprogram(name: "linfo_cbp_intra_other", scope: !3, file: !3, line: 254, type: !66, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1601)
!1601 = !{!1602, !1603, !1604, !1605, !1606}
!1602 = !DILocalVariable(name: "len", arg: 1, scope: !1600, file: !3, line: 254, type: !7)
!1603 = !DILocalVariable(name: "info", arg: 2, scope: !1600, file: !3, line: 254, type: !7)
!1604 = !DILocalVariable(name: "cbp", arg: 3, scope: !1600, file: !3, line: 254, type: !68)
!1605 = !DILocalVariable(name: "dummy", arg: 4, scope: !1600, file: !3, line: 254, type: !68)
!1606 = !DILocalVariable(name: "cbp_idx", scope: !1600, file: !3, line: 256, type: !7)
!1607 = !DILocation(line: 0, scope: !1600)
!1608 = !DILocation(line: 0, scope: !1252, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 258, column: 3, scope: !1600)
!1610 = !DILocation(line: 206, column: 46, scope: !1252, inlinedAt: !1609)
!1611 = !DILocation(line: 206, column: 38, scope: !1252, inlinedAt: !1609)
!1612 = !DILocation(line: 206, column: 53, scope: !1252, inlinedAt: !1609)
!1613 = !DILocation(line: 206, column: 77, scope: !1252, inlinedAt: !1609)
!1614 = !DILocation(line: 259, column: 8, scope: !1600)
!1615 = !DILocation(line: 259, column: 7, scope: !1600)
!1616 = !DILocation(line: 260, column: 1, scope: !1600)
!1617 = distinct !DISubprogram(name: "linfo_cbp_inter_normal", scope: !3, file: !3, line: 270, type: !66, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1618)
!1618 = !{!1619, !1620, !1621, !1622, !1623}
!1619 = !DILocalVariable(name: "len", arg: 1, scope: !1617, file: !3, line: 270, type: !7)
!1620 = !DILocalVariable(name: "info", arg: 2, scope: !1617, file: !3, line: 270, type: !7)
!1621 = !DILocalVariable(name: "cbp", arg: 3, scope: !1617, file: !3, line: 270, type: !68)
!1622 = !DILocalVariable(name: "dummy", arg: 4, scope: !1617, file: !3, line: 270, type: !68)
!1623 = !DILocalVariable(name: "cbp_idx", scope: !1617, file: !3, line: 272, type: !7)
!1624 = !DILocation(line: 0, scope: !1617)
!1625 = !DILocation(line: 0, scope: !1252, inlinedAt: !1626)
!1626 = distinct !DILocation(line: 274, column: 3, scope: !1617)
!1627 = !DILocation(line: 206, column: 46, scope: !1252, inlinedAt: !1626)
!1628 = !DILocation(line: 206, column: 38, scope: !1252, inlinedAt: !1626)
!1629 = !DILocation(line: 206, column: 53, scope: !1252, inlinedAt: !1626)
!1630 = !DILocation(line: 206, column: 77, scope: !1252, inlinedAt: !1626)
!1631 = !DILocation(line: 275, column: 8, scope: !1617)
!1632 = !DILocation(line: 275, column: 7, scope: !1617)
!1633 = !DILocation(line: 276, column: 1, scope: !1617)
!1634 = distinct !DISubprogram(name: "linfo_cbp_inter_other", scope: !3, file: !3, line: 286, type: !66, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1635)
!1635 = !{!1636, !1637, !1638, !1639, !1640}
!1636 = !DILocalVariable(name: "len", arg: 1, scope: !1634, file: !3, line: 286, type: !7)
!1637 = !DILocalVariable(name: "info", arg: 2, scope: !1634, file: !3, line: 286, type: !7)
!1638 = !DILocalVariable(name: "cbp", arg: 3, scope: !1634, file: !3, line: 286, type: !68)
!1639 = !DILocalVariable(name: "dummy", arg: 4, scope: !1634, file: !3, line: 286, type: !68)
!1640 = !DILocalVariable(name: "cbp_idx", scope: !1634, file: !3, line: 288, type: !7)
!1641 = !DILocation(line: 0, scope: !1634)
!1642 = !DILocation(line: 0, scope: !1252, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 290, column: 3, scope: !1634)
!1644 = !DILocation(line: 206, column: 46, scope: !1252, inlinedAt: !1643)
!1645 = !DILocation(line: 206, column: 38, scope: !1252, inlinedAt: !1643)
!1646 = !DILocation(line: 206, column: 53, scope: !1252, inlinedAt: !1643)
!1647 = !DILocation(line: 206, column: 77, scope: !1252, inlinedAt: !1643)
!1648 = !DILocation(line: 291, column: 8, scope: !1634)
!1649 = !DILocation(line: 291, column: 7, scope: !1634)
!1650 = !DILocation(line: 292, column: 1, scope: !1634)
!1651 = distinct !DISubprogram(name: "linfo_levrun_inter", scope: !3, file: !3, line: 302, type: !66, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1652)
!1652 = !{!1653, !1654, !1655, !1656, !1657, !1660}
!1653 = !DILocalVariable(name: "len", arg: 1, scope: !1651, file: !3, line: 302, type: !7)
!1654 = !DILocalVariable(name: "info", arg: 2, scope: !1651, file: !3, line: 302, type: !7)
!1655 = !DILocalVariable(name: "level", arg: 3, scope: !1651, file: !3, line: 302, type: !68)
!1656 = !DILocalVariable(name: "irun", arg: 4, scope: !1651, file: !3, line: 302, type: !68)
!1657 = !DILocalVariable(name: "l2", scope: !1658, file: !3, line: 308, type: !7)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 307, column: 3)
!1659 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 306, column: 7)
!1660 = !DILocalVariable(name: "inf", scope: !1658, file: !3, line: 309, type: !7)
!1661 = !DILocation(line: 0, scope: !1651)
!1662 = !DILocation(line: 306, column: 11, scope: !1659)
!1663 = !DILocation(line: 0, scope: !1659)
!1664 = !DILocation(line: 306, column: 7, scope: !1651)
!1665 = !DILocation(line: 308, column: 30, scope: !1658)
!1666 = !DILocalVariable(name: "a", arg: 1, scope: !1667, file: !1668, line: 47, type: !7)
!1667 = distinct !DISubprogram(name: "imax", scope: !1668, file: !1668, line: 47, type: !1669, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1671)
!1668 = !DIFile(filename: "ldecod_src/inc/ifunctions.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "279401589ed56df99e287ad9e5fc564b")
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!7, !7, !7}
!1671 = !{!1666, !1672}
!1672 = !DILocalVariable(name: "b", arg: 2, scope: !1667, file: !1668, line: 47, type: !7)
!1673 = !DILocation(line: 0, scope: !1667, inlinedAt: !1674)
!1674 = distinct !DILocation(line: 308, column: 18, scope: !1658)
!1675 = !DILocation(line: 49, column: 10, scope: !1667, inlinedAt: !1674)
!1676 = !DILocation(line: 0, scope: !1658)
!1677 = !DILocation(line: 309, column: 23, scope: !1658)
!1678 = !DILocation(line: 311, column: 14, scope: !1658)
!1679 = !DILocation(line: 311, column: 12, scope: !1658)
!1680 = !DILocation(line: 312, column: 14, scope: !1658)
!1681 = !DILocation(line: 312, column: 12, scope: !1658)
!1682 = !DILocation(line: 313, column: 9, scope: !1658)
!1683 = !DILocation(line: 314, column: 17, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 313, column: 9)
!1685 = !DILocation(line: 314, column: 16, scope: !1684)
!1686 = !DILocation(line: 314, column: 14, scope: !1684)
!1687 = !DILocation(line: 314, column: 7, scope: !1684)
!1688 = !DILocation(line: 318, column: 28, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 317, column: 3)
!1690 = !DILocation(line: 318, column: 12, scope: !1689)
!1691 = !DILocation(line: 319, column: 14, scope: !1689)
!1692 = !DILocation(line: 319, column: 37, scope: !1689)
!1693 = !DILocation(line: 319, column: 58, scope: !1689)
!1694 = !DILocation(line: 319, column: 64, scope: !1689)
!1695 = !DILocation(line: 319, column: 49, scope: !1689)
!1696 = !DILocation(line: 319, column: 29, scope: !1689)
!1697 = !DILocation(line: 319, column: 43, scope: !1689)
!1698 = !DILocation(line: 319, column: 12, scope: !1689)
!1699 = !DILocation(line: 320, column: 9, scope: !1689)
!1700 = !DILocation(line: 321, column: 16, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1689, file: !3, line: 320, column: 9)
!1702 = !DILocation(line: 321, column: 7, scope: !1701)
!1703 = !DILocation(line: 324, column: 11, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 324, column: 7)
!1705 = !DILocation(line: 324, column: 7, scope: !1651)
!1706 = !DILocation(line: 326, column: 1, scope: !1651)
!1707 = distinct !DISubprogram(name: "linfo_levrun_c2x2", scope: !3, file: !3, line: 337, type: !66, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1708)
!1708 = !{!1709, !1710, !1711, !1712, !1713, !1716}
!1709 = !DILocalVariable(name: "len", arg: 1, scope: !1707, file: !3, line: 337, type: !7)
!1710 = !DILocalVariable(name: "info", arg: 2, scope: !1707, file: !3, line: 337, type: !7)
!1711 = !DILocalVariable(name: "level", arg: 3, scope: !1707, file: !3, line: 337, type: !68)
!1712 = !DILocalVariable(name: "irun", arg: 4, scope: !1707, file: !3, line: 337, type: !68)
!1713 = !DILocalVariable(name: "l2", scope: !1714, file: !3, line: 341, type: !7)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 340, column: 3)
!1715 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 339, column: 7)
!1716 = !DILocalVariable(name: "inf", scope: !1714, file: !3, line: 342, type: !7)
!1717 = !DILocation(line: 0, scope: !1707)
!1718 = !DILocation(line: 339, column: 10, scope: !1715)
!1719 = !DILocation(line: 0, scope: !1715)
!1720 = !DILocation(line: 339, column: 7, scope: !1707)
!1721 = !DILocation(line: 341, column: 31, scope: !1714)
!1722 = !DILocation(line: 0, scope: !1667, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 341, column: 18, scope: !1714)
!1724 = !DILocation(line: 49, column: 10, scope: !1667, inlinedAt: !1723)
!1725 = !DILocation(line: 0, scope: !1714)
!1726 = !DILocation(line: 342, column: 23, scope: !1714)
!1727 = !DILocation(line: 343, column: 14, scope: !1714)
!1728 = !DILocation(line: 343, column: 12, scope: !1714)
!1729 = !DILocation(line: 344, column: 14, scope: !1714)
!1730 = !DILocation(line: 344, column: 12, scope: !1714)
!1731 = !DILocation(line: 345, column: 9, scope: !1714)
!1732 = !DILocation(line: 346, column: 17, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 345, column: 9)
!1734 = !DILocation(line: 346, column: 16, scope: !1733)
!1735 = !DILocation(line: 346, column: 14, scope: !1733)
!1736 = !DILocation(line: 346, column: 7, scope: !1733)
!1737 = !DILocation(line: 350, column: 28, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 349, column: 3)
!1739 = !DILocation(line: 350, column: 12, scope: !1738)
!1740 = !DILocation(line: 351, column: 14, scope: !1738)
!1741 = !DILocation(line: 351, column: 37, scope: !1738)
!1742 = !DILocation(line: 351, column: 57, scope: !1738)
!1743 = !DILocation(line: 351, column: 63, scope: !1738)
!1744 = !DILocation(line: 351, column: 48, scope: !1738)
!1745 = !DILocation(line: 351, column: 29, scope: !1738)
!1746 = !DILocation(line: 351, column: 43, scope: !1738)
!1747 = !DILocation(line: 351, column: 12, scope: !1738)
!1748 = !DILocation(line: 352, column: 9, scope: !1738)
!1749 = !DILocation(line: 353, column: 16, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1738, file: !3, line: 352, column: 9)
!1751 = !DILocation(line: 353, column: 7, scope: !1750)
!1752 = !DILocation(line: 356, column: 11, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 356, column: 7)
!1754 = !DILocation(line: 356, column: 7, scope: !1707)
!1755 = !DILocation(line: 358, column: 1, scope: !1707)
!1756 = !DILocation(line: 0, scope: !1275)
!1757 = !DILocation(line: 537, column: 35, scope: !1275)
!1758 = !DILocation(line: 537, column: 21, scope: !1275)
!1759 = !DILocation(line: 538, column: 40, scope: !1275)
!1760 = !DILocation(line: 538, column: 24, scope: !1275)
!1761 = !DILocation(line: 541, column: 23, scope: !1275)
!1762 = !DILocation(line: 542, column: 23, scope: !1275)
!1763 = !DILocation(line: 542, column: 22, scope: !1275)
!1764 = !DILocation(line: 544, column: 18, scope: !1275)
!1765 = !DILocation(line: 544, column: 3, scope: !1275)
!1766 = !DILocation(line: 546, column: 8, scope: !1303)
!1767 = !DILocation(line: 547, column: 15, scope: !1303)
!1768 = !DILocation(line: 548, column: 14, scope: !1303)
!1769 = !DILocation(line: 549, column: 15, scope: !1303)
!1770 = !DILocation(line: 550, column: 29, scope: !1303)
!1771 = !DILocation(line: 550, column: 15, scope: !1303)
!1772 = !DILocation(line: 551, column: 15, scope: !1303)
!1773 = !DILocation(line: 552, column: 20, scope: !1303)
!1774 = !DILocation(line: 552, column: 19, scope: !1303)
!1775 = distinct !{!1775, !1765, !1776}
!1776 = !DILocation(line: 553, column: 3, scope: !1275)
!1777 = !DILocation(line: 555, column: 26, scope: !1290)
!1778 = !DILocation(line: 555, column: 31, scope: !1290)
!1779 = !DILocation(line: 555, column: 20, scope: !1290)
!1780 = !DILocation(line: 555, column: 18, scope: !1290)
!1781 = !DILocation(line: 555, column: 39, scope: !1290)
!1782 = !DILocation(line: 555, column: 37, scope: !1290)
!1783 = !DILocation(line: 555, column: 7, scope: !1275)
!1784 = !DILocation(line: 562, column: 5, scope: !1289)
!1785 = !DILocation(line: 0, scope: !1289)
!1786 = !DILocation(line: 564, column: 17, scope: !1328)
!1787 = !DILocation(line: 565, column: 17, scope: !1328)
!1788 = !DILocation(line: 566, column: 31, scope: !1328)
!1789 = !DILocation(line: 566, column: 17, scope: !1328)
!1790 = !DILocation(line: 569, column: 16, scope: !1328)
!1791 = !DILocation(line: 569, column: 15, scope: !1328)
!1792 = !DILocation(line: 569, column: 27, scope: !1328)
!1793 = !DILocation(line: 568, column: 11, scope: !1328)
!1794 = !DILocation(line: 569, column: 43, scope: !1328)
!1795 = !DILocation(line: 569, column: 11, scope: !1328)
!1796 = distinct !{!1796, !1784, !1797}
!1797 = !DILocation(line: 570, column: 5, scope: !1289)
!1798 = !DILocation(line: 572, column: 11, scope: !1289)
!1799 = !DILocation(line: 0, scope: !1290)
!1800 = !DILocation(line: 575, column: 1, scope: !1275)
!1801 = distinct !DISubprogram(name: "readSyntaxElement_UVLC", scope: !3, file: !3, line: 392, type: !830, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1802)
!1802 = !{!1803, !1804, !1805}
!1803 = !DILocalVariable(name: "currMB", arg: 1, scope: !1801, file: !3, line: 392, type: !73)
!1804 = !DILocalVariable(name: "sym", arg: 2, scope: !1801, file: !3, line: 392, type: !51)
!1805 = !DILocalVariable(name: "dP", arg: 3, scope: !1801, file: !3, line: 392, type: !832)
!1806 = !DILocation(line: 0, scope: !1801)
!1807 = !DILocation(line: 394, column: 42, scope: !1801)
!1808 = !DILocation(line: 394, column: 11, scope: !1801)
!1809 = !DILocation(line: 394, column: 3, scope: !1801)
!1810 = distinct !DISubprogram(name: "readSyntaxElement_Intra4x4PredictionMode", scope: !3, file: !3, line: 404, type: !1144, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1811)
!1811 = !{!1812, !1813}
!1812 = !DILocalVariable(name: "sym", arg: 1, scope: !1810, file: !3, line: 404, type: !51)
!1813 = !DILocalVariable(name: "currStream", arg: 2, scope: !1810, file: !3, line: 404, type: !809)
!1814 = !DILocation(line: 0, scope: !1810)
!1815 = !DILocation(line: 406, column: 50, scope: !1810)
!1816 = !DILocation(line: 406, column: 76, scope: !1810)
!1817 = !DILocation(line: 406, column: 100, scope: !1810)
!1818 = !DILocalVariable(name: "buffer", arg: 1, scope: !1819, file: !3, line: 421, type: !212)
!1819 = distinct !DISubprogram(name: "GetVLCSymbol_IntraMode", scope: !3, file: !3, line: 421, type: !1276, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1820)
!1820 = !{!1818, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828}
!1821 = !DILocalVariable(name: "totbitoffset", arg: 2, scope: !1819, file: !3, line: 421, type: !7)
!1822 = !DILocalVariable(name: "info", arg: 3, scope: !1819, file: !3, line: 421, type: !68)
!1823 = !DILocalVariable(name: "bytecount", arg: 4, scope: !1819, file: !3, line: 421, type: !7)
!1824 = !DILocalVariable(name: "byteoffset", scope: !1819, file: !3, line: 423, type: !7)
!1825 = !DILocalVariable(name: "bitoffset", scope: !1819, file: !3, line: 424, type: !7)
!1826 = !DILocalVariable(name: "cur_byte", scope: !1819, file: !3, line: 425, type: !212)
!1827 = !DILocalVariable(name: "ctr_bit", scope: !1819, file: !3, line: 426, type: !7)
!1828 = !DILocalVariable(name: "inf", scope: !1829, file: !3, line: 441, type: !7)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !3, line: 440, column: 3)
!1830 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 435, column: 7)
!1831 = !DILocation(line: 0, scope: !1819, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 406, column: 14, scope: !1810)
!1833 = !DILocation(line: 423, column: 34, scope: !1819, inlinedAt: !1832)
!1834 = !DILocation(line: 424, column: 40, scope: !1819, inlinedAt: !1832)
!1835 = !DILocation(line: 424, column: 24, scope: !1819, inlinedAt: !1832)
!1836 = !DILocation(line: 425, column: 23, scope: !1819, inlinedAt: !1832)
!1837 = !DILocation(line: 426, column: 22, scope: !1819, inlinedAt: !1832)
!1838 = !DILocation(line: 426, column: 40, scope: !1819, inlinedAt: !1832)
!1839 = !DILocation(line: 426, column: 32, scope: !1819, inlinedAt: !1832)
!1840 = !DILocation(line: 429, column: 7, scope: !1841, inlinedAt: !1832)
!1841 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 429, column: 7)
!1842 = !DILocation(line: 429, column: 7, scope: !1819, inlinedAt: !1832)
!1843 = !DILocation(line: 406, column: 118, scope: !1810)
!1844 = !DILocation(line: 435, column: 18, scope: !1830, inlinedAt: !1832)
!1845 = !DILocation(line: 435, column: 7, scope: !1819, inlinedAt: !1832)
!1846 = !DILocation(line: 441, column: 28, scope: !1829, inlinedAt: !1832)
!1847 = !DILocation(line: 441, column: 47, scope: !1829, inlinedAt: !1832)
!1848 = !DILocation(line: 441, column: 36, scope: !1829, inlinedAt: !1832)
!1849 = !DILocation(line: 441, column: 34, scope: !1829, inlinedAt: !1832)
!1850 = !DILocation(line: 0, scope: !1829, inlinedAt: !1832)
!1851 = !DILocation(line: 442, column: 32, scope: !1829, inlinedAt: !1832)
!1852 = !DILocation(line: 442, column: 9, scope: !1829, inlinedAt: !1832)
!1853 = !DILocation(line: 444, column: 9, scope: !1829, inlinedAt: !1832)
!1854 = !DILocation(line: 406, column: 8, scope: !1810)
!1855 = !DILocation(line: 406, column: 12, scope: !1810)
!1856 = !DILocation(line: 411, column: 31, scope: !1810)
!1857 = !DILocation(line: 412, column: 29, scope: !1810)
!1858 = !DILocation(line: 412, column: 33, scope: !1810)
!1859 = !DILocation(line: 412, column: 23, scope: !1810)
!1860 = !DILocation(line: 412, column: 51, scope: !1810)
!1861 = !DILocation(line: 419, column: 1, scope: !1810)
!1862 = !DILocation(line: 0, scope: !1819)
!1863 = !DILocation(line: 423, column: 34, scope: !1819)
!1864 = !DILocation(line: 424, column: 40, scope: !1819)
!1865 = !DILocation(line: 424, column: 24, scope: !1819)
!1866 = !DILocation(line: 425, column: 23, scope: !1819)
!1867 = !DILocation(line: 426, column: 22, scope: !1819)
!1868 = !DILocation(line: 426, column: 40, scope: !1819)
!1869 = !DILocation(line: 426, column: 32, scope: !1819)
!1870 = !DILocation(line: 429, column: 7, scope: !1841)
!1871 = !DILocation(line: 429, column: 7, scope: !1819)
!1872 = !DILocation(line: 435, column: 18, scope: !1830)
!1873 = !DILocation(line: 435, column: 7, scope: !1819)
!1874 = !DILocation(line: 441, column: 28, scope: !1829)
!1875 = !DILocation(line: 441, column: 47, scope: !1829)
!1876 = !DILocation(line: 441, column: 36, scope: !1829)
!1877 = !DILocation(line: 441, column: 34, scope: !1829)
!1878 = !DILocation(line: 0, scope: !1829)
!1879 = !DILocation(line: 442, column: 32, scope: !1829)
!1880 = !DILocation(line: 442, column: 9, scope: !1829)
!1881 = !DILocation(line: 444, column: 9, scope: !1829)
!1882 = !DILocation(line: 449, column: 1, scope: !1819)
!1883 = distinct !DISubprogram(name: "more_rbsp_data", scope: !3, file: !3, line: 467, type: !1884, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1886)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!7, !212, !7, !7}
!1886 = !{!1887, !1888, !1889, !1890, !1891, !1894, !1895, !1896}
!1887 = !DILocalVariable(name: "buffer", arg: 1, scope: !1883, file: !3, line: 467, type: !212)
!1888 = !DILocalVariable(name: "totbitoffset", arg: 2, scope: !1883, file: !3, line: 467, type: !7)
!1889 = !DILocalVariable(name: "bytecount", arg: 3, scope: !1883, file: !3, line: 467, type: !7)
!1890 = !DILocalVariable(name: "byteoffset", scope: !1883, file: !3, line: 469, type: !585)
!1891 = !DILocalVariable(name: "bitoffset", scope: !1892, file: !3, line: 475, type: !7)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !3, line: 474, column: 3)
!1893 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 471, column: 7)
!1894 = !DILocalVariable(name: "cur_byte", scope: !1892, file: !3, line: 476, type: !212)
!1895 = !DILocalVariable(name: "ctr_bit", scope: !1892, file: !3, line: 478, type: !7)
!1896 = !DILocalVariable(name: "cnt", scope: !1897, file: !3, line: 487, type: !7)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !3, line: 486, column: 5)
!1898 = distinct !DILexicalBlock(scope: !1892, file: !3, line: 483, column: 9)
!1899 = !DILocation(line: 0, scope: !1883)
!1900 = !DILocation(line: 469, column: 35, scope: !1883)
!1901 = !DILocation(line: 471, column: 31, scope: !1893)
!1902 = !DILocation(line: 471, column: 18, scope: !1893)
!1903 = !DILocation(line: 471, column: 7, scope: !1883)
!1904 = !DILocation(line: 469, column: 21, scope: !1883)
!1905 = !DILocation(line: 475, column: 42, scope: !1892)
!1906 = !DILocation(line: 475, column: 26, scope: !1892)
!1907 = !DILocation(line: 0, scope: !1892)
!1908 = !DILocation(line: 476, column: 25, scope: !1892)
!1909 = !DILocation(line: 478, column: 35, scope: !1892)
!1910 = !DILocation(line: 478, column: 34, scope: !1892)
!1911 = !DILocation(line: 483, column: 16, scope: !1898)
!1912 = !DILocation(line: 483, column: 9, scope: !1892)
!1913 = !DILocation(line: 0, scope: !1897)
!1914 = !DILocation(line: 489, column: 23, scope: !1897)
!1915 = !DILocation(line: 489, column: 7, scope: !1897)
!1916 = !DILocation(line: 478, column: 58, scope: !1892)
!1917 = !DILocation(line: 491, column: 28, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1897, file: !3, line: 490, column: 7)
!1919 = !DILocation(line: 491, column: 46, scope: !1918)
!1920 = !DILocation(line: 489, column: 27, scope: !1897)
!1921 = distinct !{!1921, !1915, !1922}
!1922 = !DILocation(line: 492, column: 7, scope: !1897)
!1923 = !DILocation(line: 491, column: 41, scope: !1918)
!1924 = !DILocation(line: 0, scope: !1893)
!1925 = !DILocation(line: 497, column: 1, scope: !1883)
!1926 = distinct !DISubprogram(name: "uvlc_startcode_follows", scope: !3, file: !3, line: 506, type: !1927, scopeLine: 507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1929)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!7, !441, !7}
!1929 = !{!1930, !1931, !1932, !1933, !1934, !1935}
!1930 = !DILocalVariable(name: "currSlice", arg: 1, scope: !1926, file: !3, line: 506, type: !441)
!1931 = !DILocalVariable(name: "dummy", arg: 2, scope: !1926, file: !3, line: 506, type: !7)
!1932 = !DILocalVariable(name: "dp_Nr", scope: !1926, file: !3, line: 508, type: !213)
!1933 = !DILocalVariable(name: "dP", scope: !1926, file: !3, line: 509, type: !804)
!1934 = !DILocalVariable(name: "currStream", scope: !1926, file: !3, line: 510, type: !809)
!1935 = !DILocalVariable(name: "buf", scope: !1926, file: !3, line: 511, type: !212)
!1936 = !DILocation(line: 0, scope: !1926)
!1937 = !DILocation(line: 509, column: 40, scope: !1926)
!1938 = !DILocation(line: 510, column: 31, scope: !1926)
!1939 = !DILocation(line: 513, column: 45, scope: !1926)
!1940 = !DILocation(line: 513, column: 73, scope: !1926)
!1941 = !DILocation(line: 0, scope: !1883, inlinedAt: !1942)
!1942 = distinct !DILocation(line: 513, column: 13, scope: !1926)
!1943 = !DILocation(line: 469, column: 35, scope: !1883, inlinedAt: !1942)
!1944 = !DILocation(line: 471, column: 31, scope: !1893, inlinedAt: !1942)
!1945 = !DILocation(line: 471, column: 18, scope: !1893, inlinedAt: !1942)
!1946 = !DILocation(line: 471, column: 7, scope: !1883, inlinedAt: !1942)
!1947 = !DILocation(line: 511, column: 39, scope: !1926)
!1948 = !DILocation(line: 469, column: 21, scope: !1883, inlinedAt: !1942)
!1949 = !DILocation(line: 475, column: 42, scope: !1892, inlinedAt: !1942)
!1950 = !DILocation(line: 475, column: 26, scope: !1892, inlinedAt: !1942)
!1951 = !DILocation(line: 0, scope: !1892, inlinedAt: !1942)
!1952 = !DILocation(line: 476, column: 25, scope: !1892, inlinedAt: !1942)
!1953 = !DILocation(line: 478, column: 35, scope: !1892, inlinedAt: !1942)
!1954 = !DILocation(line: 478, column: 34, scope: !1892, inlinedAt: !1942)
!1955 = !DILocation(line: 483, column: 16, scope: !1898, inlinedAt: !1942)
!1956 = !DILocation(line: 483, column: 9, scope: !1892, inlinedAt: !1942)
!1957 = !DILocation(line: 0, scope: !1897, inlinedAt: !1942)
!1958 = !DILocation(line: 489, column: 23, scope: !1897, inlinedAt: !1942)
!1959 = !DILocation(line: 489, column: 7, scope: !1897, inlinedAt: !1942)
!1960 = !DILocation(line: 478, column: 58, scope: !1892, inlinedAt: !1942)
!1961 = !DILocation(line: 491, column: 28, scope: !1918, inlinedAt: !1942)
!1962 = !DILocation(line: 491, column: 46, scope: !1918, inlinedAt: !1942)
!1963 = !DILocation(line: 489, column: 27, scope: !1897, inlinedAt: !1942)
!1964 = distinct !{!1964, !1959, !1965}
!1965 = !DILocation(line: 492, column: 7, scope: !1897, inlinedAt: !1942)
!1966 = !DILocation(line: 491, column: 41, scope: !1918, inlinedAt: !1942)
!1967 = !DILocation(line: 513, column: 11, scope: !1926)
!1968 = !DILocation(line: 0, scope: !1893, inlinedAt: !1942)
!1969 = !DILocation(line: 513, column: 3, scope: !1926)
!1970 = !DILocation(line: 0, scope: !1412)
!1971 = !DILocation(line: 1214, column: 21, scope: !1422)
!1972 = !DILocation(line: 1214, column: 33, scope: !1422)
!1973 = !DILocation(line: 1214, column: 7, scope: !1412)
!1974 = !DILocation(line: 0, scope: !1421)
!1975 = !DILocation(line: 1226, column: 5, scope: !1421)
!1976 = !DILocation(line: 1221, column: 36, scope: !1421)
!1977 = !DILocation(line: 1223, column: 24, scope: !1421)
!1978 = !DILocation(line: 1220, column: 40, scope: !1421)
!1979 = !DILocation(line: 1220, column: 24, scope: !1421)
!1980 = !DILocation(line: 1229, column: 16, scope: !1439)
!1981 = !DILocation(line: 1229, column: 15, scope: !1439)
!1982 = !DILocation(line: 1229, column: 38, scope: !1439)
!1983 = !DILocation(line: 1229, column: 25, scope: !1439)
!1984 = !DILocation(line: 1230, column: 21, scope: !1444)
!1985 = !DILocation(line: 1230, column: 11, scope: !1439)
!1986 = !DILocation(line: 1228, column: 11, scope: !1439)
!1987 = !DILocation(line: 1229, column: 43, scope: !1439)
!1988 = !DILocation(line: 1229, column: 11, scope: !1439)
!1989 = distinct !{!1989, !1975, !1990}
!1990 = !DILocation(line: 1238, column: 5, scope: !1421)
!1991 = !DILocation(line: 1239, column: 11, scope: !1421)
!1992 = !DILocation(line: 0, scope: !1422)
!1993 = !DILocation(line: 1243, column: 1, scope: !1412)
!1994 = !DILocation(line: 0, scope: !48)
!1995 = !DILocation(line: 698, column: 44, scope: !48)
!1996 = !DILocation(line: 701, column: 44, scope: !48)
!1997 = !DILocation(line: 748, column: 21, scope: !48)
!1998 = !DILocation(line: 752, column: 14, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !48, file: !3, line: 752, column: 7)
!2000 = !DILocation(line: 752, column: 7, scope: !48)
!2001 = !DILocation(line: 699, column: 44, scope: !48)
!2002 = !DILocation(line: 700, column: 56, scope: !48)
!2003 = !DILocalVariable(name: "buffer", arg: 1, scope: !2004, file: !3, line: 1262, type: !212)
!2004 = distinct !DISubprogram(name: "ShowBits", scope: !3, file: !3, line: 1262, type: !2005, scopeLine: 1263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2007)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!7, !212, !7, !7, !7}
!2007 = !{!2003, !2008, !2009, !2010, !2011, !2014, !2015, !2016}
!2008 = !DILocalVariable(name: "totbitoffset", arg: 2, scope: !2004, file: !3, line: 1262, type: !7)
!2009 = !DILocalVariable(name: "bitcount", arg: 3, scope: !2004, file: !3, line: 1262, type: !7)
!2010 = !DILocalVariable(name: "numbits", arg: 4, scope: !2004, file: !3, line: 1262, type: !7)
!2011 = !DILocalVariable(name: "bitoffset", scope: !2012, file: !3, line: 1270, type: !7)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 1269, column: 3)
!2013 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 1264, column: 7)
!2014 = !DILocalVariable(name: "byteoffset", scope: !2012, file: !3, line: 1271, type: !7)
!2015 = !DILocalVariable(name: "curbyte", scope: !2012, file: !3, line: 1272, type: !212)
!2016 = !DILocalVariable(name: "inf", scope: !2012, file: !3, line: 1273, type: !7)
!2017 = !DILocation(line: 0, scope: !2004, inlinedAt: !2018)
!2018 = distinct !DILocation(line: 756, column: 12, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1999, file: !3, line: 753, column: 3)
!2020 = !DILocation(line: 1264, column: 21, scope: !2013, inlinedAt: !2018)
!2021 = !DILocation(line: 1264, column: 34, scope: !2013, inlinedAt: !2018)
!2022 = !DILocation(line: 1264, column: 7, scope: !2004, inlinedAt: !2018)
!2023 = !DILocation(line: 757, column: 33, scope: !2019)
!2024 = !DILocation(line: 758, column: 10, scope: !2019)
!2025 = !DILocation(line: 758, column: 17, scope: !2019)
!2026 = !DILocation(line: 761, column: 22, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2019, file: !3, line: 761, column: 9)
!2028 = !DILocation(line: 0, scope: !2012, inlinedAt: !2018)
!2029 = !DILocation(line: 1271, column: 36, scope: !2012, inlinedAt: !2018)
!2030 = !DILocation(line: 1272, column: 24, scope: !2012, inlinedAt: !2018)
!2031 = !DILocation(line: 1270, column: 40, scope: !2012, inlinedAt: !2018)
!2032 = !DILocation(line: 1270, column: 24, scope: !2012, inlinedAt: !2018)
!2033 = !DILocation(line: 1278, column: 16, scope: !2034, inlinedAt: !2018)
!2034 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 1276, column: 5)
!2035 = !DILocation(line: 1278, column: 15, scope: !2034, inlinedAt: !2018)
!2036 = !DILocation(line: 1278, column: 38, scope: !2034, inlinedAt: !2018)
!2037 = !DILocation(line: 1278, column: 25, scope: !2034, inlinedAt: !2018)
!2038 = !DILocation(line: 1280, column: 21, scope: !2039, inlinedAt: !2018)
!2039 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 1280, column: 11)
!2040 = !DILocation(line: 1280, column: 11, scope: !2034, inlinedAt: !2018)
!2041 = !DILocation(line: 1277, column: 11, scope: !2034, inlinedAt: !2018)
!2042 = !DILocation(line: 1278, column: 43, scope: !2034, inlinedAt: !2018)
!2043 = !DILocation(line: 1278, column: 11, scope: !2034, inlinedAt: !2018)
!2044 = !DILocation(line: 759, column: 17, scope: !2019)
!2045 = !DILocation(line: 761, column: 10, scope: !2027)
!2046 = !DILocation(line: 764, column: 19, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2027, file: !3, line: 762, column: 5)
!2048 = !DILocation(line: 765, column: 5, scope: !2047)
!2049 = !DILocation(line: 767, column: 18, scope: !2027)
!2050 = !DILocation(line: 769, column: 10, scope: !2019)
!2051 = !DILocation(line: 769, column: 14, scope: !2019)
!2052 = !DILocation(line: 770, column: 3, scope: !2019)
!2053 = !DILocation(line: 774, column: 54, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !1999, file: !3, line: 772, column: 3)
!2055 = !DILocation(line: 774, column: 73, scope: !2054)
!2056 = !DILocalVariable(name: "sym", arg: 1, scope: !2057, file: !3, line: 618, type: !51)
!2057 = distinct !DISubprogram(name: "code_from_bitstream_2d", scope: !3, file: !3, line: 618, type: !2058, scopeLine: 625, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2061)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!7, !51, !809, !2060, !2060, !7, !7, !68}
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!2061 = !{!2056, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074}
!2062 = !DILocalVariable(name: "currStream", arg: 2, scope: !2057, file: !3, line: 619, type: !809)
!2063 = !DILocalVariable(name: "lentab", arg: 3, scope: !2057, file: !3, line: 620, type: !2060)
!2064 = !DILocalVariable(name: "codtab", arg: 4, scope: !2057, file: !3, line: 621, type: !2060)
!2065 = !DILocalVariable(name: "tabwidth", arg: 5, scope: !2057, file: !3, line: 622, type: !7)
!2066 = !DILocalVariable(name: "tabheight", arg: 6, scope: !2057, file: !3, line: 623, type: !7)
!2067 = !DILocalVariable(name: "code", arg: 7, scope: !2057, file: !3, line: 624, type: !68)
!2068 = !DILocalVariable(name: "i", scope: !2057, file: !3, line: 626, type: !7)
!2069 = !DILocalVariable(name: "j", scope: !2057, file: !3, line: 626, type: !7)
!2070 = !DILocalVariable(name: "len", scope: !2057, file: !3, line: 627, type: !2060)
!2071 = !DILocalVariable(name: "cod", scope: !2057, file: !3, line: 627, type: !2060)
!2072 = !DILocalVariable(name: "frame_bitoffset", scope: !2057, file: !3, line: 629, type: !68)
!2073 = !DILocalVariable(name: "buf", scope: !2057, file: !3, line: 630, type: !212)
!2074 = !DILocalVariable(name: "inf", scope: !2057, file: !3, line: 633, type: !31)
!2075 = !DILocation(line: 0, scope: !2057, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 774, column: 14, scope: !2054)
!2077 = !DILocation(line: 630, column: 69, scope: !2057, inlinedAt: !2076)
!2078 = !DILocation(line: 630, column: 27, scope: !2057, inlinedAt: !2076)
!2079 = !DILocation(line: 633, column: 24, scope: !2057, inlinedAt: !2076)
!2080 = !DILocation(line: 633, column: 23, scope: !2057, inlinedAt: !2076)
!2081 = !DILocation(line: 633, column: 30, scope: !2057, inlinedAt: !2076)
!2082 = !DILocation(line: 633, column: 46, scope: !2057, inlinedAt: !2076)
!2083 = !DILocation(line: 633, column: 40, scope: !2057, inlinedAt: !2076)
!2084 = !DILocation(line: 633, column: 51, scope: !2057, inlinedAt: !2076)
!2085 = !DILocation(line: 633, column: 37, scope: !2057, inlinedAt: !2076)
!2086 = !DILocation(line: 633, column: 65, scope: !2057, inlinedAt: !2076)
!2087 = !DILocation(line: 633, column: 59, scope: !2057, inlinedAt: !2076)
!2088 = !DILocation(line: 633, column: 57, scope: !2057, inlinedAt: !2076)
!2089 = !DILocation(line: 634, column: 29, scope: !2057, inlinedAt: !2076)
!2090 = !DILocation(line: 634, column: 7, scope: !2057, inlinedAt: !2076)
!2091 = !DILocation(line: 635, column: 8, scope: !2057, inlinedAt: !2076)
!2092 = !DILocation(line: 638, column: 3, scope: !2093, inlinedAt: !2076)
!2093 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 638, column: 3)
!2094 = !DILocation(line: 640, column: 5, scope: !2095, inlinedAt: !2076)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 640, column: 5)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 639, column: 3)
!2097 = distinct !DILexicalBlock(scope: !2093, file: !3, line: 638, column: 3)
!2098 = !DILocation(line: 642, column: 12, scope: !2099, inlinedAt: !2076)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 642, column: 11)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 641, column: 5)
!2101 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 640, column: 5)
!2102 = !DILocation(line: 642, column: 17, scope: !2099, inlinedAt: !2076)
!2103 = !DILocation(line: 642, column: 23, scope: !2099, inlinedAt: !2076)
!2104 = !DILocalVariable(name: "inf", arg: 1, scope: !2105, file: !3, line: 592, type: !7)
!2105 = distinct !DISubprogram(name: "ShowBitsThres", scope: !3, file: !3, line: 592, type: !1669, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2106)
!2106 = !{!2104, !2107}
!2107 = !DILocalVariable(name: "numbits", arg: 2, scope: !2105, file: !3, line: 592, type: !7)
!2108 = !DILocation(line: 0, scope: !2105, inlinedAt: !2109)
!2109 = distinct !DILocation(line: 642, column: 27, scope: !2099, inlinedAt: !2076)
!2110 = !DILocation(line: 594, column: 41, scope: !2105, inlinedAt: !2109)
!2111 = !DILocation(line: 594, column: 17, scope: !2105, inlinedAt: !2109)
!2112 = !DILocation(line: 642, column: 61, scope: !2099, inlinedAt: !2076)
!2113 = !DILocation(line: 642, column: 58, scope: !2099, inlinedAt: !2076)
!2114 = !DILocation(line: 642, column: 11, scope: !2100, inlinedAt: !2076)
!2115 = !DILocation(line: 644, column: 9, scope: !2116, inlinedAt: !2076)
!2116 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 643, column: 7)
!2117 = !DILocation(line: 645, column: 9, scope: !2116, inlinedAt: !2076)
!2118 = !DILocation(line: 638, column: 31, scope: !2097, inlinedAt: !2076)
!2119 = !DILocation(line: 638, column: 17, scope: !2097, inlinedAt: !2076)
!2120 = distinct !{!2120, !2092, !2121}
!2121 = !DILocation(line: 657, column: 3, scope: !2093, inlinedAt: !2076)
!2122 = !DILocation(line: 649, column: 14, scope: !2123, inlinedAt: !2076)
!2123 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 648, column: 7)
!2124 = !DILocation(line: 649, column: 18, scope: !2123, inlinedAt: !2076)
!2125 = !DILocation(line: 650, column: 26, scope: !2123, inlinedAt: !2076)
!2126 = !DILocation(line: 652, column: 21, scope: !2123, inlinedAt: !2076)
!2127 = !DILocation(line: 653, column: 14, scope: !2123, inlinedAt: !2076)
!2128 = !DILocation(line: 653, column: 21, scope: !2123, inlinedAt: !2076)
!2129 = !DILocation(line: 775, column: 9, scope: !2054)
!2130 = !DILocation(line: 777, column: 7, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !3, line: 776, column: 5)
!2132 = distinct !DILexicalBlock(scope: !2054, file: !3, line: 775, column: 9)
!2133 = !DILocation(line: 778, column: 7, scope: !2131)
!2134 = !DILocation(line: 788, column: 3, scope: !48)
!2135 = !DILocation(line: 0, scope: !2004)
!2136 = !DILocation(line: 1264, column: 21, scope: !2013)
!2137 = !DILocation(line: 1264, column: 34, scope: !2013)
!2138 = !DILocation(line: 1264, column: 7, scope: !2004)
!2139 = !DILocation(line: 0, scope: !2012)
!2140 = !DILocation(line: 1275, column: 5, scope: !2012)
!2141 = !DILocation(line: 1271, column: 36, scope: !2012)
!2142 = !DILocation(line: 1272, column: 24, scope: !2012)
!2143 = !DILocation(line: 1270, column: 40, scope: !2012)
!2144 = !DILocation(line: 1270, column: 24, scope: !2012)
!2145 = !DILocation(line: 1278, column: 16, scope: !2034)
!2146 = !DILocation(line: 1278, column: 15, scope: !2034)
!2147 = !DILocation(line: 1278, column: 38, scope: !2034)
!2148 = !DILocation(line: 1278, column: 25, scope: !2034)
!2149 = !DILocation(line: 1280, column: 21, scope: !2039)
!2150 = !DILocation(line: 1280, column: 11, scope: !2034)
!2151 = !DILocation(line: 1277, column: 11, scope: !2034)
!2152 = !DILocation(line: 1278, column: 43, scope: !2034)
!2153 = !DILocation(line: 1278, column: 11, scope: !2034)
!2154 = distinct !{!2154, !2140, !2155}
!2155 = !DILocation(line: 1285, column: 5, scope: !2012)
!2156 = !DILocation(line: 1288, column: 1, scope: !2004)
!2157 = !DILocation(line: 0, scope: !2013)
!2158 = !DISubprogram(name: "exit", scope: !2159, file: !2159, line: 624, type: !2160, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2159 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!2160 = !DISubroutineType(types: !2161)
!2161 = !{null, !7}
!2162 = !DILocation(line: 0, scope: !1122)
!2163 = !DILocation(line: 840, column: 20, scope: !1122)
!2164 = !DILocation(line: 840, column: 32, scope: !1122)
!2165 = !DILocation(line: 840, column: 50, scope: !1122)
!2166 = !DILocation(line: 841, column: 57, scope: !1122)
!2167 = !DILocation(line: 841, column: 77, scope: !1122)
!2168 = !DILocation(line: 0, scope: !2057, inlinedAt: !2169)
!2169 = distinct !DILocation(line: 841, column: 16, scope: !1122)
!2170 = !DILocation(line: 629, column: 39, scope: !2057, inlinedAt: !2169)
!2171 = !DILocation(line: 630, column: 39, scope: !2057, inlinedAt: !2169)
!2172 = !DILocation(line: 630, column: 52, scope: !2057, inlinedAt: !2169)
!2173 = !DILocation(line: 630, column: 69, scope: !2057, inlinedAt: !2169)
!2174 = !DILocation(line: 630, column: 27, scope: !2057, inlinedAt: !2169)
!2175 = !DILocation(line: 633, column: 24, scope: !2057, inlinedAt: !2169)
!2176 = !DILocation(line: 633, column: 23, scope: !2057, inlinedAt: !2169)
!2177 = !DILocation(line: 633, column: 30, scope: !2057, inlinedAt: !2169)
!2178 = !DILocation(line: 633, column: 46, scope: !2057, inlinedAt: !2169)
!2179 = !DILocation(line: 633, column: 40, scope: !2057, inlinedAt: !2169)
!2180 = !DILocation(line: 633, column: 51, scope: !2057, inlinedAt: !2169)
!2181 = !DILocation(line: 633, column: 37, scope: !2057, inlinedAt: !2169)
!2182 = !DILocation(line: 633, column: 65, scope: !2057, inlinedAt: !2169)
!2183 = !DILocation(line: 633, column: 59, scope: !2057, inlinedAt: !2169)
!2184 = !DILocation(line: 633, column: 57, scope: !2057, inlinedAt: !2169)
!2185 = !DILocation(line: 634, column: 29, scope: !2057, inlinedAt: !2169)
!2186 = !DILocation(line: 634, column: 7, scope: !2057, inlinedAt: !2169)
!2187 = !DILocation(line: 635, column: 8, scope: !2057, inlinedAt: !2169)
!2188 = !DILocation(line: 638, column: 3, scope: !2093, inlinedAt: !2169)
!2189 = !DILocation(line: 640, column: 5, scope: !2095, inlinedAt: !2169)
!2190 = !DILocation(line: 642, column: 12, scope: !2099, inlinedAt: !2169)
!2191 = !DILocation(line: 642, column: 17, scope: !2099, inlinedAt: !2169)
!2192 = !DILocation(line: 642, column: 23, scope: !2099, inlinedAt: !2169)
!2193 = !DILocation(line: 0, scope: !2105, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 642, column: 27, scope: !2099, inlinedAt: !2169)
!2195 = !DILocation(line: 594, column: 41, scope: !2105, inlinedAt: !2194)
!2196 = !DILocation(line: 594, column: 17, scope: !2105, inlinedAt: !2194)
!2197 = !DILocation(line: 642, column: 61, scope: !2099, inlinedAt: !2169)
!2198 = !DILocation(line: 642, column: 58, scope: !2099, inlinedAt: !2169)
!2199 = !DILocation(line: 642, column: 11, scope: !2100, inlinedAt: !2169)
!2200 = !DILocation(line: 644, column: 9, scope: !2116, inlinedAt: !2169)
!2201 = !DILocation(line: 645, column: 9, scope: !2116, inlinedAt: !2169)
!2202 = !DILocation(line: 638, column: 31, scope: !2097, inlinedAt: !2169)
!2203 = !DILocation(line: 638, column: 17, scope: !2097, inlinedAt: !2169)
!2204 = distinct !{!2204, !2188, !2205}
!2205 = !DILocation(line: 657, column: 3, scope: !2093, inlinedAt: !2169)
!2206 = !DILocation(line: 845, column: 5, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !3, line: 844, column: 3)
!2208 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 843, column: 7)
!2209 = !DILocation(line: 846, column: 5, scope: !2207)
!2210 = !DILocation(line: 649, column: 14, scope: !2123, inlinedAt: !2169)
!2211 = !DILocation(line: 649, column: 18, scope: !2123, inlinedAt: !2169)
!2212 = !DILocation(line: 650, column: 26, scope: !2123, inlinedAt: !2169)
!2213 = !DILocation(line: 652, column: 14, scope: !2123, inlinedAt: !2169)
!2214 = !DILocation(line: 652, column: 21, scope: !2123, inlinedAt: !2169)
!2215 = !DILocation(line: 653, column: 14, scope: !2123, inlinedAt: !2169)
!2216 = !DILocation(line: 653, column: 21, scope: !2123, inlinedAt: !2169)
!2217 = !DILocation(line: 856, column: 3, scope: !1122)
!2218 = distinct !DISubprogram(name: "readSyntaxElement_Level_VLC0", scope: !3, file: !3, line: 865, type: !1144, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2219)
!2219 = !{!2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2235}
!2220 = !DILocalVariable(name: "sym", arg: 1, scope: !2218, file: !3, line: 865, type: !51)
!2221 = !DILocalVariable(name: "currStream", arg: 2, scope: !2218, file: !3, line: 865, type: !809)
!2222 = !DILocalVariable(name: "frame_bitoffset", scope: !2218, file: !3, line: 867, type: !7)
!2223 = !DILocalVariable(name: "BitstreamLengthInBytes", scope: !2218, file: !3, line: 868, type: !7)
!2224 = !DILocalVariable(name: "BitstreamLengthInBits", scope: !2218, file: !3, line: 869, type: !7)
!2225 = !DILocalVariable(name: "buf", scope: !2218, file: !3, line: 870, type: !212)
!2226 = !DILocalVariable(name: "len", scope: !2218, file: !3, line: 871, type: !7)
!2227 = !DILocalVariable(name: "sign", scope: !2218, file: !3, line: 871, type: !7)
!2228 = !DILocalVariable(name: "level", scope: !2218, file: !3, line: 871, type: !7)
!2229 = !DILocalVariable(name: "code", scope: !2218, file: !3, line: 871, type: !7)
!2230 = !DILocalVariable(name: "addbit", scope: !2231, file: !3, line: 894, type: !7)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 892, column: 3)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 891, column: 12)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !3, line: 881, column: 12)
!2234 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 876, column: 7)
!2235 = !DILocalVariable(name: "offset", scope: !2231, file: !3, line: 895, type: !7)
!2236 = !DILocation(line: 0, scope: !2218)
!2237 = !DILocation(line: 867, column: 44, scope: !2218)
!2238 = !DILocation(line: 868, column: 44, scope: !2218)
!2239 = !DILocation(line: 869, column: 56, scope: !2218)
!2240 = !DILocation(line: 869, column: 62, scope: !2218)
!2241 = !DILocation(line: 870, column: 44, scope: !2218)
!2242 = !DILocation(line: 873, column: 40, scope: !2218)
!2243 = !DILocation(line: 1264, column: 34, scope: !2013, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 873, column: 11, scope: !2218)
!2245 = !DILocation(line: 1264, column: 7, scope: !2004, inlinedAt: !2244)
!2246 = !DILocation(line: 873, column: 3, scope: !2218)
!2247 = !DILocation(line: 0, scope: !2012, inlinedAt: !2244)
!2248 = !DILocation(line: 0, scope: !2004, inlinedAt: !2244)
!2249 = !DILocation(line: 1271, column: 36, scope: !2012, inlinedAt: !2244)
!2250 = !DILocation(line: 1272, column: 24, scope: !2012, inlinedAt: !2244)
!2251 = !DILocation(line: 1270, column: 40, scope: !2012, inlinedAt: !2244)
!2252 = !DILocation(line: 1270, column: 24, scope: !2012, inlinedAt: !2244)
!2253 = !DILocation(line: 1278, column: 16, scope: !2034, inlinedAt: !2244)
!2254 = !DILocation(line: 1278, column: 15, scope: !2034, inlinedAt: !2244)
!2255 = !DILocation(line: 873, column: 10, scope: !2218)
!2256 = !DILocation(line: 874, column: 8, scope: !2218)
!2257 = distinct !{!2257, !2246, !2256}
!2258 = !DILocation(line: 876, column: 11, scope: !2234)
!2259 = !DILocation(line: 876, column: 7, scope: !2218)
!2260 = !DILocation(line: 878, column: 18, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2234, file: !3, line: 877, column: 3)
!2262 = !DILocation(line: 879, column: 24, scope: !2261)
!2263 = !DILocation(line: 879, column: 30, scope: !2261)
!2264 = !DILocation(line: 880, column: 3, scope: !2261)
!2265 = !DILocation(line: 881, column: 16, scope: !2233)
!2266 = !DILocation(line: 881, column: 12, scope: !2234)
!2267 = !DILocation(line: 0, scope: !2004, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 885, column: 13, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 882, column: 3)
!2270 = !DILocation(line: 1264, column: 34, scope: !2013, inlinedAt: !2268)
!2271 = !DILocation(line: 1264, column: 7, scope: !2004, inlinedAt: !2268)
!2272 = !DILocation(line: 0, scope: !2012, inlinedAt: !2268)
!2273 = !DILocation(line: 1271, column: 36, scope: !2012, inlinedAt: !2268)
!2274 = !DILocation(line: 1272, column: 24, scope: !2012, inlinedAt: !2268)
!2275 = !DILocation(line: 1270, column: 40, scope: !2012, inlinedAt: !2268)
!2276 = !DILocation(line: 1270, column: 24, scope: !2012, inlinedAt: !2268)
!2277 = !DILocation(line: 1278, column: 16, scope: !2034, inlinedAt: !2268)
!2278 = !DILocation(line: 1278, column: 15, scope: !2034, inlinedAt: !2268)
!2279 = !DILocation(line: 1278, column: 38, scope: !2034, inlinedAt: !2268)
!2280 = !DILocation(line: 1278, column: 25, scope: !2034, inlinedAt: !2268)
!2281 = !DILocation(line: 1280, column: 21, scope: !2039, inlinedAt: !2268)
!2282 = !DILocation(line: 1280, column: 11, scope: !2034, inlinedAt: !2268)
!2283 = !DILocation(line: 1277, column: 11, scope: !2034, inlinedAt: !2268)
!2284 = !DILocation(line: 1278, column: 43, scope: !2034, inlinedAt: !2268)
!2285 = !DILocation(line: 1278, column: 11, scope: !2034, inlinedAt: !2268)
!2286 = !DILocation(line: 887, column: 21, scope: !2269)
!2287 = !DILocation(line: 0, scope: !2013, inlinedAt: !2268)
!2288 = !DILocation(line: 889, column: 20, scope: !2269)
!2289 = !DILocation(line: 889, column: 26, scope: !2269)
!2290 = !DILocation(line: 889, column: 34, scope: !2269)
!2291 = !DILocation(line: 890, column: 3, scope: !2269)
!2292 = !DILocation(line: 894, column: 23, scope: !2231)
!2293 = !DILocation(line: 0, scope: !2231)
!2294 = !DILocation(line: 895, column: 24, scope: !2231)
!2295 = !DILocation(line: 895, column: 35, scope: !2231)
!2296 = !DILocation(line: 896, column: 11, scope: !2231)
!2297 = !DILocation(line: 0, scope: !2004, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 897, column: 14, scope: !2231)
!2299 = !DILocation(line: 1264, column: 21, scope: !2013, inlinedAt: !2298)
!2300 = !DILocation(line: 1264, column: 34, scope: !2013, inlinedAt: !2298)
!2301 = !DILocation(line: 1264, column: 7, scope: !2004, inlinedAt: !2298)
!2302 = !DILocation(line: 0, scope: !2012, inlinedAt: !2298)
!2303 = !DILocation(line: 1275, column: 5, scope: !2012, inlinedAt: !2298)
!2304 = !DILocation(line: 1270, column: 40, scope: !2012, inlinedAt: !2298)
!2305 = !DILocation(line: 1270, column: 24, scope: !2012, inlinedAt: !2298)
!2306 = !DILocation(line: 1271, column: 36, scope: !2012, inlinedAt: !2298)
!2307 = !DILocation(line: 1272, column: 24, scope: !2012, inlinedAt: !2298)
!2308 = !DILocation(line: 1278, column: 16, scope: !2034, inlinedAt: !2298)
!2309 = !DILocation(line: 1278, column: 15, scope: !2034, inlinedAt: !2298)
!2310 = !DILocation(line: 1278, column: 38, scope: !2034, inlinedAt: !2298)
!2311 = !DILocation(line: 1278, column: 25, scope: !2034, inlinedAt: !2298)
!2312 = !DILocation(line: 1280, column: 21, scope: !2039, inlinedAt: !2298)
!2313 = !DILocation(line: 1280, column: 11, scope: !2034, inlinedAt: !2298)
!2314 = !DILocation(line: 1277, column: 11, scope: !2034, inlinedAt: !2298)
!2315 = !DILocation(line: 1278, column: 43, scope: !2034, inlinedAt: !2298)
!2316 = !DILocation(line: 1278, column: 11, scope: !2034, inlinedAt: !2298)
!2317 = distinct !{!2317, !2303, !2318}
!2318 = !DILocation(line: 1285, column: 5, scope: !2012, inlinedAt: !2298)
!2319 = !DILocation(line: 900, column: 19, scope: !2231)
!2320 = !DILocation(line: 0, scope: !2013, inlinedAt: !2298)
!2321 = !DILocation(line: 900, column: 25, scope: !2231)
!2322 = !DILocation(line: 903, column: 9, scope: !2231)
!2323 = !DILocation(line: 904, column: 2, scope: !2231)
!2324 = !DILocation(line: 906, column: 14, scope: !2218)
!2325 = !DILocation(line: 906, column: 8, scope: !2218)
!2326 = !DILocation(line: 906, column: 12, scope: !2218)
!2327 = !DILocation(line: 907, column: 8, scope: !2218)
!2328 = !DILocation(line: 907, column: 12, scope: !2218)
!2329 = !DILocation(line: 913, column: 31, scope: !2218)
!2330 = !DILocation(line: 914, column: 3, scope: !2218)
!2331 = distinct !DISubprogram(name: "readSyntaxElement_Level_VLCN", scope: !3, file: !3, line: 923, type: !2332, scopeLine: 924, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2334)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!7, !51, !7, !809}
!2334 = !{!2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2351}
!2335 = !DILocalVariable(name: "sym", arg: 1, scope: !2331, file: !3, line: 923, type: !51)
!2336 = !DILocalVariable(name: "vlc", arg: 2, scope: !2331, file: !3, line: 923, type: !7)
!2337 = !DILocalVariable(name: "currStream", arg: 3, scope: !2331, file: !3, line: 923, type: !809)
!2338 = !DILocalVariable(name: "frame_bitoffset", scope: !2331, file: !3, line: 925, type: !7)
!2339 = !DILocalVariable(name: "BitstreamLengthInBytes", scope: !2331, file: !3, line: 926, type: !7)
!2340 = !DILocalVariable(name: "BitstreamLengthInBits", scope: !2331, file: !3, line: 927, type: !7)
!2341 = !DILocalVariable(name: "buf", scope: !2331, file: !3, line: 928, type: !212)
!2342 = !DILocalVariable(name: "levabs", scope: !2331, file: !3, line: 930, type: !7)
!2343 = !DILocalVariable(name: "sign", scope: !2331, file: !3, line: 930, type: !7)
!2344 = !DILocalVariable(name: "len", scope: !2331, file: !3, line: 931, type: !7)
!2345 = !DILocalVariable(name: "code", scope: !2331, file: !3, line: 932, type: !7)
!2346 = !DILocalVariable(name: "sb", scope: !2331, file: !3, line: 932, type: !7)
!2347 = !DILocalVariable(name: "shift", scope: !2331, file: !3, line: 934, type: !7)
!2348 = !DILocalVariable(name: "addbit", scope: !2349, file: !3, line: 962, type: !7)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 961, column: 3)
!2350 = distinct !DILexicalBlock(scope: !2331, file: !3, line: 942, column: 7)
!2351 = !DILocalVariable(name: "offset", scope: !2349, file: !3, line: 963, type: !7)
!2352 = !DILocation(line: 0, scope: !2331)
!2353 = !DILocation(line: 925, column: 44, scope: !2331)
!2354 = !DILocation(line: 926, column: 44, scope: !2331)
!2355 = !DILocation(line: 927, column: 56, scope: !2331)
!2356 = !DILocation(line: 927, column: 62, scope: !2331)
!2357 = !DILocation(line: 928, column: 44, scope: !2331)
!2358 = !DILocation(line: 934, column: 19, scope: !2331)
!2359 = !DILocation(line: 937, column: 41, scope: !2331)
!2360 = !DILocation(line: 1264, column: 34, scope: !2013, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 937, column: 11, scope: !2331)
!2362 = !DILocation(line: 1264, column: 7, scope: !2004, inlinedAt: !2361)
!2363 = !DILocation(line: 937, column: 3, scope: !2331)
!2364 = !DILocation(line: 0, scope: !2012, inlinedAt: !2361)
!2365 = !DILocation(line: 0, scope: !2004, inlinedAt: !2361)
!2366 = !DILocation(line: 1271, column: 36, scope: !2012, inlinedAt: !2361)
!2367 = !DILocation(line: 1272, column: 24, scope: !2012, inlinedAt: !2361)
!2368 = !DILocation(line: 1270, column: 40, scope: !2012, inlinedAt: !2361)
!2369 = !DILocation(line: 1270, column: 24, scope: !2012, inlinedAt: !2361)
!2370 = !DILocation(line: 1278, column: 16, scope: !2034, inlinedAt: !2361)
!2371 = !DILocation(line: 1278, column: 15, scope: !2034, inlinedAt: !2361)
!2372 = !DILocation(line: 937, column: 10, scope: !2331)
!2373 = !DILocation(line: 938, column: 8, scope: !2331)
!2374 = distinct !{!2374, !2363, !2373}
!2375 = !DILocation(line: 940, column: 19, scope: !2331)
!2376 = !DILocation(line: 942, column: 11, scope: !2350)
!2377 = !DILocation(line: 942, column: 7, scope: !2331)
!2378 = !DILocation(line: 944, column: 20, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 943, column: 3)
!2380 = !DILocation(line: 944, column: 25, scope: !2379)
!2381 = !DILocation(line: 944, column: 35, scope: !2379)
!2382 = !DILocation(line: 947, column: 9, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2379, file: !3, line: 947, column: 9)
!2384 = !DILocation(line: 947, column: 9, scope: !2379)
!2385 = !DILocation(line: 0, scope: !2004, inlinedAt: !2386)
!2386 = distinct !DILocation(line: 949, column: 13, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 948, column: 5)
!2388 = !DILocation(line: 1264, column: 21, scope: !2013, inlinedAt: !2386)
!2389 = !DILocation(line: 1264, column: 34, scope: !2013, inlinedAt: !2386)
!2390 = !DILocation(line: 1264, column: 7, scope: !2004, inlinedAt: !2386)
!2391 = !DILocation(line: 0, scope: !2012, inlinedAt: !2386)
!2392 = !DILocation(line: 1271, column: 36, scope: !2012, inlinedAt: !2386)
!2393 = !DILocation(line: 1272, column: 24, scope: !2012, inlinedAt: !2386)
!2394 = !DILocation(line: 1270, column: 40, scope: !2012, inlinedAt: !2386)
!2395 = !DILocation(line: 1270, column: 24, scope: !2012, inlinedAt: !2386)
!2396 = !DILocation(line: 1275, column: 5, scope: !2012, inlinedAt: !2386)
!2397 = !DILocation(line: 1278, column: 16, scope: !2034, inlinedAt: !2386)
!2398 = !DILocation(line: 1278, column: 15, scope: !2034, inlinedAt: !2386)
!2399 = !DILocation(line: 1278, column: 38, scope: !2034, inlinedAt: !2386)
!2400 = !DILocation(line: 1278, column: 25, scope: !2034, inlinedAt: !2386)
!2401 = !DILocation(line: 1280, column: 21, scope: !2039, inlinedAt: !2386)
!2402 = !DILocation(line: 1280, column: 11, scope: !2034, inlinedAt: !2386)
!2403 = !DILocation(line: 1277, column: 11, scope: !2034, inlinedAt: !2386)
!2404 = !DILocation(line: 1278, column: 43, scope: !2034, inlinedAt: !2386)
!2405 = !DILocation(line: 1278, column: 11, scope: !2034, inlinedAt: !2386)
!2406 = distinct !{!2406, !2396, !2407}
!2407 = !DILocation(line: 1285, column: 5, scope: !2012, inlinedAt: !2386)
!2408 = !DILocation(line: 951, column: 14, scope: !2387)
!2409 = !DILocation(line: 0, scope: !2013, inlinedAt: !2386)
!2410 = !DILocation(line: 952, column: 11, scope: !2387)
!2411 = !DILocation(line: 953, column: 5, scope: !2387)
!2412 = !DILocation(line: 0, scope: !2379)
!2413 = !DILocation(line: 956, column: 42, scope: !2379)
!2414 = !DILocation(line: 0, scope: !2004, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 956, column: 12, scope: !2379)
!2416 = !DILocation(line: 1264, column: 34, scope: !2013, inlinedAt: !2415)
!2417 = !DILocation(line: 1264, column: 7, scope: !2004, inlinedAt: !2415)
!2418 = !DILocation(line: 962, column: 22, scope: !2349)
!2419 = !DILocation(line: 0, scope: !2349)
!2420 = !DILocation(line: 963, column: 21, scope: !2349)
!2421 = !DILocation(line: 963, column: 38, scope: !2349)
!2422 = !DILocation(line: 0, scope: !2004, inlinedAt: !2423)
!2423 = distinct !DILocation(line: 965, column: 10, scope: !2349)
!2424 = !DILocation(line: 1264, column: 21, scope: !2013, inlinedAt: !2423)
!2425 = !DILocation(line: 1264, column: 34, scope: !2013, inlinedAt: !2423)
!2426 = !DILocation(line: 1264, column: 7, scope: !2004, inlinedAt: !2423)
!2427 = !DILocation(line: 0, scope: !2012, inlinedAt: !2423)
!2428 = !DILocation(line: 1275, column: 5, scope: !2012, inlinedAt: !2423)
!2429 = !DILocation(line: 1270, column: 40, scope: !2012, inlinedAt: !2423)
!2430 = !DILocation(line: 1270, column: 24, scope: !2012, inlinedAt: !2423)
!2431 = !DILocation(line: 1271, column: 36, scope: !2012, inlinedAt: !2423)
!2432 = !DILocation(line: 1272, column: 24, scope: !2012, inlinedAt: !2423)
!2433 = !DILocation(line: 1278, column: 16, scope: !2034, inlinedAt: !2423)
!2434 = !DILocation(line: 1278, column: 15, scope: !2034, inlinedAt: !2423)
!2435 = !DILocation(line: 1278, column: 38, scope: !2034, inlinedAt: !2423)
!2436 = !DILocation(line: 1278, column: 25, scope: !2034, inlinedAt: !2423)
!2437 = !DILocation(line: 1280, column: 21, scope: !2039, inlinedAt: !2423)
!2438 = !DILocation(line: 1280, column: 11, scope: !2034, inlinedAt: !2423)
!2439 = !DILocation(line: 1277, column: 11, scope: !2034, inlinedAt: !2423)
!2440 = !DILocation(line: 1278, column: 43, scope: !2034, inlinedAt: !2423)
!2441 = !DILocation(line: 1278, column: 11, scope: !2034, inlinedAt: !2423)
!2442 = distinct !{!2442, !2428, !2443}
!2443 = !DILocation(line: 1285, column: 5, scope: !2012, inlinedAt: !2423)
!2444 = !DILocation(line: 967, column: 11, scope: !2349)
!2445 = !DILocation(line: 0, scope: !2013, inlinedAt: !2423)
!2446 = !DILocation(line: 963, column: 32, scope: !2349)
!2447 = !DILocation(line: 963, column: 48, scope: !2349)
!2448 = !DILocation(line: 969, column: 17, scope: !2349)
!2449 = !DILocation(line: 0, scope: !2004, inlinedAt: !2450)
!2450 = distinct !DILocation(line: 972, column: 12, scope: !2349)
!2451 = !DILocation(line: 1264, column: 34, scope: !2013, inlinedAt: !2450)
!2452 = !DILocation(line: 1264, column: 7, scope: !2004, inlinedAt: !2450)
!2453 = !DILocation(line: 979, column: 14, scope: !2331)
!2454 = !DILocation(line: 0, scope: !2350)
!2455 = !DILocation(line: 1271, column: 36, scope: !2012, inlinedAt: !2454)
!2456 = !DILocation(line: 1272, column: 24, scope: !2012, inlinedAt: !2454)
!2457 = !DILocation(line: 1270, column: 40, scope: !2012, inlinedAt: !2454)
!2458 = !DILocation(line: 1270, column: 24, scope: !2012, inlinedAt: !2454)
!2459 = !DILocation(line: 1278, column: 16, scope: !2034, inlinedAt: !2454)
!2460 = !DILocation(line: 1278, column: 15, scope: !2034, inlinedAt: !2454)
!2461 = !DILocation(line: 1278, column: 25, scope: !2034, inlinedAt: !2454)
!2462 = !DILocation(line: 979, column: 8, scope: !2331)
!2463 = !DILocation(line: 979, column: 12, scope: !2331)
!2464 = !DILocation(line: 980, column: 8, scope: !2331)
!2465 = !DILocation(line: 980, column: 12, scope: !2331)
!2466 = !DILocation(line: 982, column: 49, scope: !2331)
!2467 = !DILocation(line: 982, column: 31, scope: !2331)
!2468 = !DILocation(line: 988, column: 3, scope: !2331)
!2469 = !DILocation(line: 0, scope: !1143)
!2470 = !DILocation(line: 1039, column: 21, scope: !1143)
!2471 = !DILocation(line: 1040, column: 57, scope: !1143)
!2472 = !DILocation(line: 1040, column: 77, scope: !1143)
!2473 = !DILocation(line: 0, scope: !2057, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 1040, column: 16, scope: !1143)
!2475 = !DILocation(line: 629, column: 39, scope: !2057, inlinedAt: !2474)
!2476 = !DILocation(line: 630, column: 39, scope: !2057, inlinedAt: !2474)
!2477 = !DILocation(line: 630, column: 52, scope: !2057, inlinedAt: !2474)
!2478 = !DILocation(line: 630, column: 69, scope: !2057, inlinedAt: !2474)
!2479 = !DILocation(line: 630, column: 27, scope: !2057, inlinedAt: !2474)
!2480 = !DILocation(line: 633, column: 24, scope: !2057, inlinedAt: !2474)
!2481 = !DILocation(line: 633, column: 23, scope: !2057, inlinedAt: !2474)
!2482 = !DILocation(line: 633, column: 30, scope: !2057, inlinedAt: !2474)
!2483 = !DILocation(line: 633, column: 46, scope: !2057, inlinedAt: !2474)
!2484 = !DILocation(line: 633, column: 40, scope: !2057, inlinedAt: !2474)
!2485 = !DILocation(line: 633, column: 51, scope: !2057, inlinedAt: !2474)
!2486 = !DILocation(line: 633, column: 37, scope: !2057, inlinedAt: !2474)
!2487 = !DILocation(line: 633, column: 65, scope: !2057, inlinedAt: !2474)
!2488 = !DILocation(line: 633, column: 59, scope: !2057, inlinedAt: !2474)
!2489 = !DILocation(line: 633, column: 57, scope: !2057, inlinedAt: !2474)
!2490 = !DILocation(line: 634, column: 29, scope: !2057, inlinedAt: !2474)
!2491 = !DILocation(line: 634, column: 7, scope: !2057, inlinedAt: !2474)
!2492 = !DILocation(line: 635, column: 8, scope: !2057, inlinedAt: !2474)
!2493 = !DILocation(line: 642, column: 12, scope: !2099, inlinedAt: !2474)
!2494 = !DILocation(line: 642, column: 17, scope: !2099, inlinedAt: !2474)
!2495 = !DILocation(line: 642, column: 23, scope: !2099, inlinedAt: !2474)
!2496 = !DILocation(line: 0, scope: !2105, inlinedAt: !2497)
!2497 = distinct !DILocation(line: 642, column: 27, scope: !2099, inlinedAt: !2474)
!2498 = !DILocation(line: 594, column: 41, scope: !2105, inlinedAt: !2497)
!2499 = !DILocation(line: 594, column: 17, scope: !2105, inlinedAt: !2497)
!2500 = !DILocation(line: 642, column: 61, scope: !2099, inlinedAt: !2474)
!2501 = !DILocation(line: 642, column: 58, scope: !2099, inlinedAt: !2474)
!2502 = !DILocation(line: 642, column: 11, scope: !2100, inlinedAt: !2474)
!2503 = !DILocation(line: 644, column: 9, scope: !2116, inlinedAt: !2474)
!2504 = !DILocation(line: 645, column: 9, scope: !2116, inlinedAt: !2474)
!2505 = !DILocation(line: 1044, column: 5, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 1043, column: 3)
!2507 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 1042, column: 7)
!2508 = !DILocation(line: 1045, column: 5, scope: !2506)
!2509 = !DILocation(line: 649, column: 14, scope: !2123, inlinedAt: !2474)
!2510 = !DILocation(line: 649, column: 18, scope: !2123, inlinedAt: !2474)
!2511 = !DILocation(line: 650, column: 26, scope: !2123, inlinedAt: !2474)
!2512 = !DILocation(line: 652, column: 21, scope: !2123, inlinedAt: !2474)
!2513 = !DILocation(line: 653, column: 14, scope: !2123, inlinedAt: !2474)
!2514 = !DILocation(line: 653, column: 21, scope: !2123, inlinedAt: !2474)
!2515 = !DILocation(line: 1052, column: 3, scope: !1143)
!2516 = !DILocation(line: 0, scope: !1163)
!2517 = !DILocation(line: 1128, column: 20, scope: !1163)
!2518 = !DILocation(line: 1128, column: 32, scope: !1163)
!2519 = !DILocation(line: 1128, column: 50, scope: !1163)
!2520 = !DILocation(line: 1129, column: 21, scope: !1163)
!2521 = !DILocation(line: 1130, column: 57, scope: !1163)
!2522 = !DILocation(line: 1130, column: 82, scope: !1163)
!2523 = !DILocation(line: 0, scope: !2057, inlinedAt: !2524)
!2524 = distinct !DILocation(line: 1130, column: 16, scope: !1163)
!2525 = !DILocation(line: 629, column: 39, scope: !2057, inlinedAt: !2524)
!2526 = !DILocation(line: 630, column: 39, scope: !2057, inlinedAt: !2524)
!2527 = !DILocation(line: 630, column: 52, scope: !2057, inlinedAt: !2524)
!2528 = !DILocation(line: 630, column: 69, scope: !2057, inlinedAt: !2524)
!2529 = !DILocation(line: 630, column: 27, scope: !2057, inlinedAt: !2524)
!2530 = !DILocation(line: 633, column: 24, scope: !2057, inlinedAt: !2524)
!2531 = !DILocation(line: 633, column: 23, scope: !2057, inlinedAt: !2524)
!2532 = !DILocation(line: 633, column: 30, scope: !2057, inlinedAt: !2524)
!2533 = !DILocation(line: 633, column: 46, scope: !2057, inlinedAt: !2524)
!2534 = !DILocation(line: 633, column: 40, scope: !2057, inlinedAt: !2524)
!2535 = !DILocation(line: 633, column: 51, scope: !2057, inlinedAt: !2524)
!2536 = !DILocation(line: 633, column: 37, scope: !2057, inlinedAt: !2524)
!2537 = !DILocation(line: 633, column: 65, scope: !2057, inlinedAt: !2524)
!2538 = !DILocation(line: 633, column: 59, scope: !2057, inlinedAt: !2524)
!2539 = !DILocation(line: 633, column: 57, scope: !2057, inlinedAt: !2524)
!2540 = !DILocation(line: 634, column: 29, scope: !2057, inlinedAt: !2524)
!2541 = !DILocation(line: 634, column: 7, scope: !2057, inlinedAt: !2524)
!2542 = !DILocation(line: 635, column: 8, scope: !2057, inlinedAt: !2524)
!2543 = !DILocation(line: 642, column: 12, scope: !2099, inlinedAt: !2524)
!2544 = !DILocation(line: 642, column: 17, scope: !2099, inlinedAt: !2524)
!2545 = !DILocation(line: 642, column: 23, scope: !2099, inlinedAt: !2524)
!2546 = !DILocation(line: 0, scope: !2105, inlinedAt: !2547)
!2547 = distinct !DILocation(line: 642, column: 27, scope: !2099, inlinedAt: !2524)
!2548 = !DILocation(line: 594, column: 41, scope: !2105, inlinedAt: !2547)
!2549 = !DILocation(line: 594, column: 17, scope: !2105, inlinedAt: !2547)
!2550 = !DILocation(line: 642, column: 61, scope: !2099, inlinedAt: !2524)
!2551 = !DILocation(line: 642, column: 58, scope: !2099, inlinedAt: !2524)
!2552 = !DILocation(line: 642, column: 11, scope: !2100, inlinedAt: !2524)
!2553 = !DILocation(line: 644, column: 9, scope: !2116, inlinedAt: !2524)
!2554 = !DILocation(line: 645, column: 9, scope: !2116, inlinedAt: !2524)
!2555 = !DILocation(line: 1134, column: 5, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 1133, column: 3)
!2557 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 1132, column: 7)
!2558 = !DILocation(line: 1135, column: 5, scope: !2556)
!2559 = !DILocation(line: 649, column: 14, scope: !2123, inlinedAt: !2524)
!2560 = !DILocation(line: 649, column: 18, scope: !2123, inlinedAt: !2524)
!2561 = !DILocation(line: 650, column: 26, scope: !2123, inlinedAt: !2524)
!2562 = !DILocation(line: 652, column: 21, scope: !2123, inlinedAt: !2524)
!2563 = !DILocation(line: 653, column: 14, scope: !2123, inlinedAt: !2524)
!2564 = !DILocation(line: 653, column: 21, scope: !2123, inlinedAt: !2524)
!2565 = !DILocation(line: 1142, column: 3, scope: !1163)
!2566 = !DILocation(line: 0, scope: !1183)
!2567 = !DILocation(line: 1176, column: 21, scope: !1183)
!2568 = !DILocation(line: 1177, column: 57, scope: !1183)
!2569 = !DILocation(line: 1177, column: 77, scope: !1183)
!2570 = !DILocation(line: 0, scope: !2057, inlinedAt: !2571)
!2571 = distinct !DILocation(line: 1177, column: 16, scope: !1183)
!2572 = !DILocation(line: 629, column: 39, scope: !2057, inlinedAt: !2571)
!2573 = !DILocation(line: 630, column: 39, scope: !2057, inlinedAt: !2571)
!2574 = !DILocation(line: 630, column: 52, scope: !2057, inlinedAt: !2571)
!2575 = !DILocation(line: 630, column: 69, scope: !2057, inlinedAt: !2571)
!2576 = !DILocation(line: 630, column: 27, scope: !2057, inlinedAt: !2571)
!2577 = !DILocation(line: 633, column: 24, scope: !2057, inlinedAt: !2571)
!2578 = !DILocation(line: 633, column: 23, scope: !2057, inlinedAt: !2571)
!2579 = !DILocation(line: 633, column: 30, scope: !2057, inlinedAt: !2571)
!2580 = !DILocation(line: 633, column: 46, scope: !2057, inlinedAt: !2571)
!2581 = !DILocation(line: 633, column: 40, scope: !2057, inlinedAt: !2571)
!2582 = !DILocation(line: 633, column: 51, scope: !2057, inlinedAt: !2571)
!2583 = !DILocation(line: 633, column: 37, scope: !2057, inlinedAt: !2571)
!2584 = !DILocation(line: 633, column: 65, scope: !2057, inlinedAt: !2571)
!2585 = !DILocation(line: 633, column: 59, scope: !2057, inlinedAt: !2571)
!2586 = !DILocation(line: 633, column: 57, scope: !2057, inlinedAt: !2571)
!2587 = !DILocation(line: 634, column: 29, scope: !2057, inlinedAt: !2571)
!2588 = !DILocation(line: 634, column: 7, scope: !2057, inlinedAt: !2571)
!2589 = !DILocation(line: 635, column: 8, scope: !2057, inlinedAt: !2571)
!2590 = !DILocation(line: 642, column: 12, scope: !2099, inlinedAt: !2571)
!2591 = !DILocation(line: 642, column: 17, scope: !2099, inlinedAt: !2571)
!2592 = !DILocation(line: 642, column: 23, scope: !2099, inlinedAt: !2571)
!2593 = !DILocation(line: 0, scope: !2105, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 642, column: 27, scope: !2099, inlinedAt: !2571)
!2595 = !DILocation(line: 594, column: 41, scope: !2105, inlinedAt: !2594)
!2596 = !DILocation(line: 594, column: 17, scope: !2105, inlinedAt: !2594)
!2597 = !DILocation(line: 642, column: 61, scope: !2099, inlinedAt: !2571)
!2598 = !DILocation(line: 642, column: 58, scope: !2099, inlinedAt: !2571)
!2599 = !DILocation(line: 642, column: 11, scope: !2100, inlinedAt: !2571)
!2600 = !DILocation(line: 644, column: 9, scope: !2116, inlinedAt: !2571)
!2601 = !DILocation(line: 645, column: 9, scope: !2116, inlinedAt: !2571)
!2602 = !DILocation(line: 1181, column: 5, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 1180, column: 3)
!2604 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 1179, column: 7)
!2605 = !DILocation(line: 1182, column: 5, scope: !2603)
!2606 = !DILocation(line: 649, column: 14, scope: !2123, inlinedAt: !2571)
!2607 = !DILocation(line: 649, column: 18, scope: !2123, inlinedAt: !2571)
!2608 = !DILocation(line: 650, column: 26, scope: !2123, inlinedAt: !2571)
!2609 = !DILocation(line: 652, column: 21, scope: !2123, inlinedAt: !2571)
!2610 = !DILocation(line: 653, column: 14, scope: !2123, inlinedAt: !2571)
!2611 = !DILocation(line: 653, column: 21, scope: !2123, inlinedAt: !2571)
!2612 = !DILocation(line: 1189, column: 3, scope: !1183)
