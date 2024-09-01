; ModuleID = 'ldecod_src/vlc.c'
source_filename = "ldecod_src/vlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

@p_Dec = external local_unnamed_addr global ptr, align 8
@NTAB1 = internal unnamed_addr constant [4 x [8 x [2 x i8]]] [[8 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer], [8 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\01\02", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer], [8 x [2 x i8]] [[2 x i8] c"\02\00", [2 x i8] c"\01\03", [2 x i8] c"\01\04", [2 x i8] c"\01\05", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer], [8 x [2 x i8]] [[2 x i8] c"\03\00", [2 x i8] c"\02\01", [2 x i8] c"\02\02", [2 x i8] c"\01\06", [2 x i8] c"\01\07", [2 x i8] c"\01\08", [2 x i8] c"\01\09", [2 x i8] c"\04\00"]], align 16
@LEVRUN1 = internal unnamed_addr constant [16 x i8] c"\04\02\02\01\01\01\01\01\01\01\00\00\00\00\00\00", align 16
@NTAB3 = internal unnamed_addr constant [2 x [2 x [2 x i8]]] [[2 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] zeroinitializer], [2 x [2 x i8]] [[2 x i8] c"\02\00", [2 x i8] c"\01\01"]], align 1
@LEVRUN3 = internal unnamed_addr constant [4 x i8] c"\02\01\00\00", align 1
@readSyntaxElement_NumCoeffTrailingOnes.lentab = internal unnamed_addr constant [3 x [4 x [17 x i8]]] [[4 x [17 x i8]] [[17 x i8] c"\01\06\08\09\0A\0B\0D\0D\0D\0E\0E\0F\0F\10\10\10\10", [17 x i8] c"\00\02\06\08\09\0A\0B\0D\0D\0E\0E\0F\0F\0F\10\10\10", [17 x i8] c"\00\00\03\07\08\09\0A\0B\0D\0D\0E\0E\0F\0F\10\10\10", [17 x i8] c"\00\00\00\05\06\07\08\09\0A\0B\0D\0E\0E\0F\0F\10\10"], [4 x [17 x i8]] [[17 x i8] c"\02\06\06\07\08\08\09\0B\0B\0C\0C\0C\0D\0D\0D\0E\0E", [17 x i8] c"\00\02\05\06\06\07\08\09\0B\0B\0C\0C\0D\0D\0E\0E\0E", [17 x i8] c"\00\00\03\06\06\07\08\09\0B\0B\0C\0C\0D\0D\0D\0E\0E", [17 x i8] c"\00\00\00\04\04\05\06\06\07\09\0B\0B\0C\0D\0D\0D\0E"], [4 x [17 x i8]] [[17 x i8] c"\04\06\06\06\07\07\07\07\08\08\09\09\09\0A\0A\0A\0A", [17 x i8] c"\00\04\05\05\05\05\06\06\07\08\08\09\09\09\0A\0A\0A", [17 x i8] c"\00\00\04\05\05\05\06\06\07\07\08\08\09\09\0A\0A\0A", [17 x i8] c"\00\00\00\04\04\04\04\04\05\06\07\08\08\09\0A\0A\0A"]], align 16
@readSyntaxElement_NumCoeffTrailingOnes.codtab = internal unnamed_addr constant [3 x [4 x [17 x i8]]] [[4 x [17 x i8]] [[17 x i8] c"\01\05\07\07\07\07\0F\0B\08\0F\0B\0F\0B\0F\0B\07\04", [17 x i8] c"\00\01\04\06\06\06\06\0E\0A\0E\0A\0E\0A\01\0E\0A\06", [17 x i8] c"\00\00\01\05\05\05\05\05\0D\09\0D\09\0D\09\0D\09\05", [17 x i8] c"\00\00\00\03\03\04\04\04\04\04\0C\0C\08\0C\08\0C\08"], [4 x [17 x i8]] [[17 x i8] c"\03\0B\07\07\07\04\07\0F\0B\0F\0B\08\0F\0B\07\09\07", [17 x i8] c"\00\02\07\0A\06\06\06\06\0E\0A\0E\0A\0E\0A\0B\08\06", [17 x i8] c"\00\00\03\09\05\05\05\05\0D\09\0D\09\0D\09\06\0A\05", [17 x i8] c"\00\00\00\05\04\06\08\04\04\04\0C\08\0C\0C\08\01\04"], [4 x [17 x i8]] [[17 x i8] c"\0F\0F\0B\08\0F\0B\09\08\0F\0B\0F\0B\08\0D\09\05\01", [17 x i8] c"\00\0E\0F\0C\0A\08\0E\0A\0E\0E\0A\0E\0A\07\0C\08\04", [17 x i8] c"\00\00\0D\0E\0B\09\0D\09\0D\0A\0D\09\0D\09\0B\07\03", [17 x i8] c"\00\00\00\0C\0B\0A\09\08\0D\0C\0C\0C\08\0C\0A\06\02"]], align 16
@readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab = internal unnamed_addr constant <{ [4 x <{ i8, i8, i8, i8, i8, [12 x i8] }>], [4 x <{ [9 x i8], [8 x i8] }>], [4 x [17 x i8]] }> <{ [4 x <{ i8, i8, i8, i8, i8, [12 x i8] }>] [<{ i8, i8, i8, i8, i8, [12 x i8] }> <{ i8 2, i8 6, i8 6, i8 6, i8 6, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 1, i8 6, i8 7, i8 8, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 0, i8 3, i8 7, i8 8, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 0, i8 0, i8 6, i8 7, [12 x i8] zeroinitializer }>], [4 x <{ [9 x i8], [8 x i8] }>] [<{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\01\07\07\09\09\0A\0B\0C\0D", [8 x i8] zeroinitializer }>, <{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\00\02\07\07\09\0A\0B\0C\0C", [8 x i8] zeroinitializer }>, <{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\00\00\03\07\07\09\0A\0B\0C", [8 x i8] zeroinitializer }>, <{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\00\00\00\05\06\07\07\0A\0B", [8 x i8] zeroinitializer }>], [4 x [17 x i8]] [[17 x i8] c"\01\06\08\09\0A\0B\0D\0D\0D\0E\0E\0F\0F\10\10\10\10", [17 x i8] c"\00\02\06\08\09\0A\0B\0D\0D\0E\0E\0F\0F\0F\10\10\10", [17 x i8] c"\00\00\03\07\08\09\0A\0B\0D\0D\0E\0E\0F\0F\10\10\10", [17 x i8] c"\00\00\00\05\06\07\08\09\0A\0B\0D\0E\0E\0F\0F\10\10"] }>, align 16
@readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab = internal unnamed_addr constant <{ <{ <{ i8, i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, [13 x i8] }> }>, [4 x <{ [9 x i8], [8 x i8] }>], [4 x [17 x i8]] }> <{ <{ <{ i8, i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, [13 x i8] }> }> <{ <{ i8, i8, i8, i8, i8, [12 x i8] }> <{ i8 1, i8 7, i8 4, i8 3, i8 2, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 1, i8 6, i8 3, i8 3, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 0, i8 1, i8 2, i8 2, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [13 x i8] }> <{ i8 0, i8 0, i8 0, i8 5, [13 x i8] zeroinitializer }> }>, [4 x <{ [9 x i8], [8 x i8] }>] [<{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\01\0F\0E\07\06\07\07\07\07", [8 x i8] zeroinitializer }>, <{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\00\01\0D\0C\05\06\06\06\05", [8 x i8] zeroinitializer }>, <{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\00\00\01\0B\0A\04\05\05\04", [8 x i8] zeroinitializer }>, <{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\00\00\00\01\01\09\08\04\04", [8 x i8] zeroinitializer }>], [4 x [17 x i8]] [[17 x i8] c"\01\05\07\07\07\07\0F\0B\08\0F\0B\0F\0B\0F\0B\07\04", [17 x i8] c"\00\01\04\06\06\06\06\0E\0A\0E\0A\0E\0A\01\0E\0A\06", [17 x i8] c"\00\00\01\05\05\05\05\05\0D\09\0D\09\0D\09\0D\09\05", [17 x i8] c"\00\00\00\03\03\04\04\04\04\04\0C\0C\08\0C\08\0C\08"] }>, align 16
@readSyntaxElement_TotalZeros.lentab = internal unnamed_addr constant <{ [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }> }> <{ [16 x i8] c"\01\03\03\04\04\05\05\06\06\07\07\08\08\09\09\09", [16 x i8] c"\03\03\03\03\03\04\04\04\04\05\05\06\06\06\06\00", [16 x i8] c"\04\03\03\03\04\04\03\03\04\05\05\06\05\06\00\00", [16 x i8] c"\05\03\04\04\03\03\03\04\03\04\05\05\05\00\00\00", [16 x i8] c"\04\04\04\03\03\03\03\03\04\05\04\05\00\00\00\00", [16 x i8] c"\06\05\03\03\03\03\03\03\04\03\06\00\00\00\00\00", [16 x i8] c"\06\05\03\03\03\02\03\04\03\06\00\00\00\00\00\00", [16 x i8] c"\06\04\05\03\02\02\03\03\06\00\00\00\00\00\00\00", <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\06\06\04\02\02\03\02\05", [8 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 5, i8 5, i8 3, i8 2, i8 2, i8 2, i8 4, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 4, i8 4, i8 3, i8 3, i8 1, i8 3, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 4, i8 4, i8 2, i8 1, i8 3, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 3, i8 3, i8 1, i8 2, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 2, i8 2, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }> }>, align 16
@readSyntaxElement_TotalZeros.codtab = internal unnamed_addr constant <{ [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], <{ [8 x i8], [8 x i8] }>, <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }> }> <{ [16 x i8] c"\01\03\02\03\02\03\02\03\02\03\02\03\02\03\02\01", [16 x i8] c"\07\06\05\04\03\05\04\03\02\03\02\03\02\01\00\00", [16 x i8] c"\05\07\06\05\04\03\04\03\02\03\02\01\01\00\00\00", [16 x i8] c"\03\07\05\04\06\05\04\03\03\02\02\01\00\00\00\00", [16 x i8] c"\05\04\03\07\06\05\04\03\02\01\01\00\00\00\00\00", [16 x i8] c"\01\01\07\06\05\04\03\02\01\01\00\00\00\00\00\00", [16 x i8] c"\01\01\05\04\03\03\02\01\01\00\00\00\00\00\00\00", <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\01\01\01\03\03\02\02\01", [8 x i8] zeroinitializer }>, <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\01\00\01\03\02\01\01\01", [8 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 1, i8 0, i8 1, i8 3, i8 2, i8 1, i8 1, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 0, i8 1, i8 1, i8 2, i8 1, i8 3, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 0, i8 1, i8 1, i8 1, i8 1, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 1, i8 1, i8 1, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 0, i8 1, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 0, i8 1, [14 x i8] zeroinitializer }> }>, align 16
@readSyntaxElement_TotalZerosChromaDC.lentab = internal unnamed_addr constant <{ <{ <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, [12 x [16 x i8]] }>, <{ <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, [8 x [16 x i8]] }>, <{ [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }> }> }> <{ <{ <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, [12 x [16 x i8]] }> <{ <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 1, i8 2, i8 3, i8 3, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 1, i8 2, i8 2, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }>, [12 x [16 x i8]] zeroinitializer }>, <{ <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, [8 x [16 x i8]] }> <{ <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\01\03\03\04\04\04\05\05", [8 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 3, i8 2, i8 3, i8 3, i8 3, i8 3, i8 3, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 3, i8 3, i8 2, i8 2, i8 3, i8 3, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 3, i8 2, i8 2, i8 2, i8 3, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 2, i8 2, i8 2, i8 2, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 2, i8 2, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }>, [8 x [16 x i8]] zeroinitializer }>, <{ [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }> }> <{ [16 x i8] c"\01\03\03\04\04\05\05\06\06\07\07\08\08\09\09\09", [16 x i8] c"\03\03\03\03\03\04\04\04\04\05\05\06\06\06\06\00", [16 x i8] c"\04\03\03\03\04\04\03\03\04\05\05\06\05\06\00\00", [16 x i8] c"\05\03\04\04\03\03\03\04\03\04\05\05\05\00\00\00", [16 x i8] c"\04\04\04\03\03\03\03\03\04\05\04\05\00\00\00\00", [16 x i8] c"\06\05\03\03\03\03\03\03\04\03\06\00\00\00\00\00", [16 x i8] c"\06\05\03\03\03\02\03\04\03\06\00\00\00\00\00\00", [16 x i8] c"\06\04\05\03\02\02\03\03\06\00\00\00\00\00\00\00", <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\06\06\04\02\02\03\02\05", [8 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 5, i8 5, i8 3, i8 2, i8 2, i8 2, i8 4, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 4, i8 4, i8 3, i8 3, i8 1, i8 3, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 4, i8 4, i8 2, i8 1, i8 3, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 3, i8 3, i8 1, i8 2, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 2, i8 2, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }> }> }>, align 16
@readSyntaxElement_TotalZerosChromaDC.codtab = internal unnamed_addr constant <{ <{ <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, <{ i8, [15 x i8] }>, [12 x [16 x i8]] }>, <{ <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, [8 x [16 x i8]] }>, <{ [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], <{ [8 x i8], [8 x i8] }>, <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }> }> }> <{ <{ <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, <{ i8, [15 x i8] }>, [12 x [16 x i8]] }> <{ <{ i8, i8, i8, [13 x i8] }> <{ i8 1, i8 1, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }>, <{ i8, [15 x i8] }> <{ i8 1, [15 x i8] zeroinitializer }>, [12 x [16 x i8]] zeroinitializer }>, <{ <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, [8 x [16 x i8]] }> <{ <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 1, i8 2, i8 3, i8 2, i8 3, i8 1, i8 1, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 0, i8 1, i8 1, i8 4, i8 5, i8 6, i8 7, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 0, i8 1, i8 1, i8 2, i8 6, i8 7, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 6, i8 0, i8 1, i8 2, i8 7, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 1, i8 2, i8 3, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 0, i8 1, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 0, i8 1, [14 x i8] zeroinitializer }>, [8 x [16 x i8]] zeroinitializer }>, <{ [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], <{ [8 x i8], [8 x i8] }>, <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }> }> <{ [16 x i8] c"\01\03\02\03\02\03\02\03\02\03\02\03\02\03\02\01", [16 x i8] c"\07\06\05\04\03\05\04\03\02\03\02\03\02\01\00\00", [16 x i8] c"\05\07\06\05\04\03\04\03\02\03\02\01\01\00\00\00", [16 x i8] c"\03\07\05\04\06\05\04\03\03\02\02\01\00\00\00\00", [16 x i8] c"\05\04\03\07\06\05\04\03\02\01\01\00\00\00\00\00", [16 x i8] c"\01\01\07\06\05\04\03\02\01\01\00\00\00\00\00\00", [16 x i8] c"\01\01\05\04\03\03\02\01\01\00\00\00\00\00\00\00", <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\01\01\01\03\03\02\02\01", [8 x i8] zeroinitializer }>, <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\01\00\01\03\02\01\01\01", [8 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 1, i8 0, i8 1, i8 3, i8 2, i8 1, i8 1, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 0, i8 1, i8 1, i8 2, i8 1, i8 3, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 0, i8 1, i8 1, i8 1, i8 1, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 1, i8 1, i8 1, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 0, i8 1, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 0, i8 1, [14 x i8] zeroinitializer }> }> }>, align 16
@readSyntaxElement_Run.lentab = internal unnamed_addr constant <{ <{ i8, i8, [14 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, [16 x i8], [8 x [16 x i8]] }> <{ <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 1, i8 2, i8 2, [13 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 2, i8 2, i8 2, i8 2, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 2, i8 2, i8 2, i8 3, i8 3, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 2, i8 2, i8 3, i8 3, i8 3, i8 3, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 2, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, [9 x i8] zeroinitializer }>, [16 x i8] c"\03\03\03\03\03\03\03\04\05\06\07\08\09\0A\0B\00", [8 x [16 x i8]] zeroinitializer }>, align 16
@readSyntaxElement_Run.codtab = internal unnamed_addr constant <{ <{ i8, [15 x i8] }>, <{ i8, i8, [14 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, [16 x i8], [8 x [16 x i8]] }> <{ <{ i8, [15 x i8] }> <{ i8 1, [15 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 3, i8 2, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 3, i8 2, i8 1, i8 1, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 3, i8 2, i8 3, i8 2, i8 1, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 3, i8 0, i8 1, i8 3, i8 2, i8 5, i8 4, [9 x i8] zeroinitializer }>, [16 x i8] c"\07\06\05\04\03\02\01\01\01\01\01\01\01\01\01\00", [8 x [16 x i8]] zeroinitializer }>, align 16
@NCBP = internal unnamed_addr constant <{ <{ [16 x [2 x i8]], [32 x [2 x i8]] }>, [48 x [2 x i8]] }> <{ <{ [16 x [2 x i8]], [32 x [2 x i8]] }> <{ [16 x [2 x i8]] [[2 x i8] c"\0F\00", [2 x i8] c"\00\01", [2 x i8] c"\07\02", [2 x i8] c"\0B\04", [2 x i8] c"\0D\08", [2 x i8] c"\0E\03", [2 x i8] c"\03\05", [2 x i8] c"\05\0A", [2 x i8] c"\0A\0C", [2 x i8] c"\0C\0F", [2 x i8] c"\01\07", [2 x i8] c"\02\0B", [2 x i8] c"\04\0D", [2 x i8] c"\08\0E", [2 x i8] c"\06\06", [2 x i8] c"\09\09"], [32 x [2 x i8]] zeroinitializer }>, [48 x [2 x i8]] [[2 x i8] c"/\00", [2 x i8] c"\1F\10", [2 x i8] c"\0F\01", [2 x i8] c"\00\02", [2 x i8] c"\17\04", [2 x i8] c"\1B\08", [2 x i8] c"\1D ", [2 x i8] c"\1E\03", [2 x i8] c"\07\05", [2 x i8] c"\0B\0A", [2 x i8] c"\0D\0C", [2 x i8] c"\0E\0F", [2 x i8] c"'/", [2 x i8] c"+\07", [2 x i8] c"-\0B", [2 x i8] c".\0D", [2 x i8] c"\10\0E", [2 x i8] c"\03\06", [2 x i8] c"\05\09", [2 x i8] c"\0A\1F", [2 x i8] c"\0C#", [2 x i8] c"\13%", [2 x i8] c"\15*", [2 x i8] c"\1A,", [2 x i8] c"\1C!", [2 x i8] c"#\22", [2 x i8] c"%$", [2 x i8] c"*(", [2 x i8] c",'", [2 x i8] c"\01+", [2 x i8] c"\02-", [2 x i8] c"\04.", [2 x i8] c"\08\11", [2 x i8] c"\11\12", [2 x i8] c"\12\14", [2 x i8] c"\14\18", [2 x i8] c"\18\13", [2 x i8] c"\06\15", [2 x i8] c"\09\1A", [2 x i8] c"\16\1C", [2 x i8] c"\19\17", [2 x i8] c" \1B", [2 x i8] c"!\1D", [2 x i8] c"\22\1E", [2 x i8] c"$\16", [2 x i8] c"(\19", [2 x i8] c"&&", [2 x i8] c"))"] }>, align 16
@str = private unnamed_addr constant [44 x i8] c"ERROR: failed to find NumCoeff/TrailingOnes\00", align 1
@str.6 = private unnamed_addr constant [53 x i8] c"ERROR: failed to find NumCoeff/TrailingOnes ChromaDC\00", align 1
@str.7 = private unnamed_addr constant [39 x i8] c"ERROR: failed to find Total Zeros !cdc\00", align 1
@str.8 = private unnamed_addr constant [34 x i8] c"ERROR: failed to find Total Zeros\00", align 1
@str.9 = private unnamed_addr constant [26 x i8] c"ERROR: failed to find Run\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @ue_v(ptr nocapture noundef readnone %tracestring, ptr nocapture noundef %bitstream) local_unnamed_addr #0 {
entry:
  %symbol = alloca %struct.syntaxelement, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %symbol) #13
  store i32 0, ptr %symbol, align 8
  %mapping = getelementptr inbounds i8, ptr %symbol, i64 32
  store ptr @linfo_ue, ptr %mapping, align 8
  %call = call i32 @readSyntaxElement_VLC(ptr noundef nonnull %symbol, ptr noundef %bitstream)
  %len = getelementptr inbounds i8, ptr %symbol, i64 12
  %0 = load i32, ptr %len, align 4
  %1 = load ptr, ptr @p_Dec, align 8
  %UsedBits = getelementptr inbounds i8, ptr %1, i64 24
  %2 = load i32, ptr %UsedBits, align 8
  %add = add nsw i32 %2, %0
  store i32 %add, ptr %UsedBits, align 8
  %value1 = getelementptr inbounds i8, ptr %symbol, i64 4
  %3 = load i32, ptr %value1, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %symbol) #13
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @linfo_ue(i32 noundef %len, i32 noundef %info, ptr nocapture noundef writeonly %value1, ptr nocapture readnone %dummy) #2 {
entry:
  %shr = ashr i32 %len, 1
  %shl = shl nuw i32 1, %shr
  %add = add i32 %info, -1
  %sub = add i32 %add, %shl
  store i32 %sub, ptr %value1, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @readSyntaxElement_VLC(ptr noundef %sym, ptr nocapture noundef %currStream) local_unnamed_addr #0 {
entry:
  %streamBuffer = getelementptr inbounds i8, ptr %currStream, i64 16
  %0 = load ptr, ptr %streamBuffer, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %currStream, i64 8
  %1 = load i32, ptr %frame_bitoffset, align 8
  %inf = getelementptr inbounds i8, ptr %sym, i64 16
  %bitstream_length = getelementptr inbounds i8, ptr %currStream, i64 12
  %2 = load i32, ptr %bitstream_length, align 4
  %shr.i = ashr i32 %1, 3
  %conv.i = sext i32 %shr.i to i64
  %and.i = and i32 %1, 7
  %sub.i = xor i32 %and.i, 7
  %arrayidx.i = getelementptr inbounds i8, ptr %0, i64 %conv.i
  %3 = load i8, ptr %arrayidx.i, align 1
  %conv1.i = zext i8 %3 to i32
  %4 = shl nuw nsw i32 1, %sub.i
  %5 = and i32 %4, %conv1.i
  %cmp64.i = icmp eq i32 %5, 0
  br i1 %cmp64.i, label %while.body.i, label %while.end.thread.i

while.body.i:                                     ; preds = %entry, %while.body.i
  %cur_byte.069.i = phi ptr [ %add.ptr.i, %while.body.i ], [ %arrayidx.i, %entry ]
  %len.068.i = phi i32 [ %inc.i, %while.body.i ], [ 0, %entry ]
  %bitcounter.067.i = phi i32 [ %inc5.i, %while.body.i ], [ 1, %entry ]
  %bitoffset.066.i = phi i32 [ %and6.i, %while.body.i ], [ %sub.i, %entry ]
  %byteoffset.065.i = phi i64 [ %add.i, %while.body.i ], [ %conv.i, %entry ]
  %inc.i = add nuw i32 %len.068.i, 1
  %inc5.i = add nuw nsw i32 %bitcounter.067.i, 1
  %dec.i = add nuw nsw i32 %bitoffset.066.i, 7
  %and6.i = and i32 %dec.i, 7
  %cmp7.i = icmp eq i32 %and6.i, 7
  %idx.ext.i = zext i1 %cmp7.i to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %cur_byte.069.i, i64 %idx.ext.i
  %add.i = add nsw i64 %byteoffset.065.i, %idx.ext.i
  %6 = load i8, ptr %add.ptr.i, align 1
  %conv12.i = zext i8 %6 to i32
  %7 = shl nuw nsw i32 1, %and6.i
  %8 = and i32 %7, %conv12.i
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %while.body.i, label %while.end.i

while.end.i:                                      ; preds = %while.body.i
  %add15.i = add nuw nsw i32 %len.068.i, 8
  %shr16.i = lshr i32 %add15.i, 3
  %conv17.i = zext nneg i32 %shr16.i to i64
  %add18.i = add nsw i64 %add.i, %conv17.i
  %conv19.i = sext i32 %2 to i64
  %cmp20.i = icmp sgt i64 %add18.i, %conv19.i
  br i1 %cmp20.i, label %GetVLCSymbol.exit.thread, label %while.body24.i.preheader

while.body24.i.preheader:                         ; preds = %while.end.i
  %9 = icmp eq i32 %len.068.i, 0
  br i1 %9, label %GetVLCSymbol.exit.unr-lcssa, label %while.body24.i.preheader.new

while.body24.i.preheader.new:                     ; preds = %while.body24.i.preheader
  %unroll_iter = and i32 %inc.i, -2
  br label %while.body24.i

while.end.thread.i:                               ; preds = %entry
  %cmp2092.i = icmp sgt i32 %shr.i, %2
  br i1 %cmp2092.i, label %GetVLCSymbol.exit.thread, label %GetVLCSymbol.exit.thread20

GetVLCSymbol.exit.thread20:                       ; preds = %while.end.thread.i
  store i32 0, ptr %inf, align 4
  %len23 = getelementptr inbounds i8, ptr %sym, i64 12
  store i32 1, ptr %len23, align 4
  br label %if.end

while.body24.i:                                   ; preds = %while.body24.i, %while.body24.i.preheader.new
  %inf.079.i = phi i32 [ 0, %while.body24.i.preheader.new ], [ %or.i.1, %while.body24.i ]
  %cur_byte.178.i = phi ptr [ %add.ptr.i, %while.body24.i.preheader.new ], [ %add.ptr30.i.1, %while.body24.i ]
  %bitoffset.175.i = phi i32 [ %and6.i, %while.body24.i.preheader.new ], [ %and26.i.1, %while.body24.i ]
  %niter = phi i32 [ 0, %while.body24.i.preheader.new ], [ %niter.next.1, %while.body24.i ]
  %dec25.i = add nuw nsw i32 %bitoffset.175.i, 7
  %and26.i = and i32 %dec25.i, 7
  %cmp27.i = icmp eq i32 %and26.i, 7
  %idx.ext29.i = zext i1 %cmp27.i to i64
  %add.ptr30.i = getelementptr inbounds i8, ptr %cur_byte.178.i, i64 %idx.ext29.i
  %10 = load i8, ptr %add.ptr30.i, align 1
  %conv32.i = zext i8 %10 to i32
  %shr33.i = lshr i32 %conv32.i, %and26.i
  %dec25.i.1 = add nuw nsw i32 %bitoffset.175.i, 6
  %and26.i.1 = and i32 %dec25.i.1, 7
  %cmp27.i.1 = icmp eq i32 %and26.i.1, 7
  %idx.ext29.i.1 = zext i1 %cmp27.i.1 to i64
  %add.ptr30.i.1 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %idx.ext29.i.1
  %11 = shl i32 %inf.079.i, 2
  %and34.i = shl nuw nsw i32 %shr33.i, 1
  %12 = and i32 %and34.i, 2
  %shl.i.1 = or disjoint i32 %11, %12
  %13 = load i8, ptr %add.ptr30.i.1, align 1
  %conv32.i.1 = zext i8 %13 to i32
  %shr33.i.1 = lshr i32 %conv32.i.1, %and26.i.1
  %and34.i.1 = and i32 %shr33.i.1, 1
  %or.i.1 = or disjoint i32 %and34.i.1, %shl.i.1
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %GetVLCSymbol.exit.unr-lcssa.loopexit, label %while.body24.i

GetVLCSymbol.exit.thread:                         ; preds = %while.end.i, %while.end.thread.i
  %len18 = getelementptr inbounds i8, ptr %sym, i64 12
  store i32 -1, ptr %len18, align 4
  br label %return

GetVLCSymbol.exit.unr-lcssa.loopexit:             ; preds = %while.body24.i
  %14 = shl i32 %or.i.1, 1
  br label %GetVLCSymbol.exit.unr-lcssa

GetVLCSymbol.exit.unr-lcssa:                      ; preds = %GetVLCSymbol.exit.unr-lcssa.loopexit, %while.body24.i.preheader
  %or.i.lcssa.ph = phi i32 [ poison, %while.body24.i.preheader ], [ %or.i.1, %GetVLCSymbol.exit.unr-lcssa.loopexit ]
  %inf.079.i.unr = phi i32 [ 0, %while.body24.i.preheader ], [ %14, %GetVLCSymbol.exit.unr-lcssa.loopexit ]
  %cur_byte.178.i.unr = phi ptr [ %add.ptr.i, %while.body24.i.preheader ], [ %add.ptr30.i.1, %GetVLCSymbol.exit.unr-lcssa.loopexit ]
  %bitoffset.175.i.unr = phi i32 [ %and6.i, %while.body24.i.preheader ], [ %and26.i.1, %GetVLCSymbol.exit.unr-lcssa.loopexit ]
  %15 = and i32 %len.068.i, 1
  %lcmp.mod.not.not = icmp eq i32 %15, 0
  br i1 %lcmp.mod.not.not, label %while.body24.i.epil, label %GetVLCSymbol.exit

while.body24.i.epil:                              ; preds = %GetVLCSymbol.exit.unr-lcssa
  %dec25.i.epil = add nuw nsw i32 %bitoffset.175.i.unr, 7
  %and26.i.epil = and i32 %dec25.i.epil, 7
  %cmp27.i.epil = icmp eq i32 %and26.i.epil, 7
  %idx.ext29.i.epil = zext i1 %cmp27.i.epil to i64
  %add.ptr30.i.epil = getelementptr inbounds i8, ptr %cur_byte.178.i.unr, i64 %idx.ext29.i.epil
  %16 = load i8, ptr %add.ptr30.i.epil, align 1
  %conv32.i.epil = zext i8 %16 to i32
  %shr33.i.epil = lshr i32 %conv32.i.epil, %and26.i.epil
  %and34.i.epil = and i32 %shr33.i.epil, 1
  %or.i.epil = or disjoint i32 %and34.i.epil, %inf.079.i.unr
  br label %GetVLCSymbol.exit

GetVLCSymbol.exit:                                ; preds = %GetVLCSymbol.exit.unr-lcssa, %while.body24.i.epil
  %or.i.lcssa = phi i32 [ %or.i.lcssa.ph, %GetVLCSymbol.exit.unr-lcssa ], [ %or.i.epil, %while.body24.i.epil ]
  %17 = add nuw i32 %inc5.i, %inc.i
  store i32 %or.i.lcssa, ptr %inf, align 4
  %len = getelementptr inbounds i8, ptr %sym, i64 12
  store i32 %17, ptr %len, align 4
  %cmp = icmp eq i32 %17, -1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %GetVLCSymbol.exit.thread20, %GetVLCSymbol.exit
  %len26 = phi ptr [ %len23, %GetVLCSymbol.exit.thread20 ], [ %len, %GetVLCSymbol.exit ]
  %bitcounter.1.lcssa.i25 = phi i32 [ 1, %GetVLCSymbol.exit.thread20 ], [ %17, %GetVLCSymbol.exit ]
  %18 = load i32, ptr %frame_bitoffset, align 8
  %add = add nsw i32 %18, %bitcounter.1.lcssa.i25
  store i32 %add, ptr %frame_bitoffset, align 8
  %mapping = getelementptr inbounds i8, ptr %sym, i64 32
  %19 = load ptr, ptr %mapping, align 8
  %20 = load i32, ptr %len26, align 4
  %21 = load i32, ptr %inf, align 8
  %value1 = getelementptr inbounds i8, ptr %sym, i64 4
  %value2 = getelementptr inbounds i8, ptr %sym, i64 8
  tail call void %19(i32 noundef %20, i32 noundef %21, ptr noundef nonnull %value1, ptr noundef nonnull %value2) #13
  br label %return

return:                                           ; preds = %GetVLCSymbol.exit.thread, %GetVLCSymbol.exit, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -1, %GetVLCSymbol.exit ], [ -1, %GetVLCSymbol.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @se_v(ptr nocapture noundef readnone %tracestring, ptr nocapture noundef %bitstream) local_unnamed_addr #0 {
entry:
  %symbol = alloca %struct.syntaxelement, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %symbol) #13
  store i32 0, ptr %symbol, align 8
  %mapping = getelementptr inbounds i8, ptr %symbol, i64 32
  store ptr @linfo_se, ptr %mapping, align 8
  %call = call i32 @readSyntaxElement_VLC(ptr noundef nonnull %symbol, ptr noundef %bitstream)
  %len = getelementptr inbounds i8, ptr %symbol, i64 12
  %0 = load i32, ptr %len, align 4
  %1 = load ptr, ptr @p_Dec, align 8
  %UsedBits = getelementptr inbounds i8, ptr %1, i64 24
  %2 = load i32, ptr %UsedBits, align 8
  %add = add nsw i32 %2, %0
  store i32 %add, ptr %UsedBits, align 8
  %value1 = getelementptr inbounds i8, ptr %symbol, i64 4
  %3 = load i32, ptr %value1, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %symbol) #13
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @linfo_se(i32 noundef %len, i32 noundef %info, ptr nocapture noundef writeonly %value1, ptr nocapture readnone %dummy) #2 {
entry:
  %shr = ashr i32 %len, 1
  %shl = shl nuw i32 1, %shr
  %add = add i32 %shl, %info
  %shr2 = lshr i32 %add, 1
  %0 = and i32 %add, 1
  %cmp.not = icmp eq i32 %0, 0
  %sub3 = sub nsw i32 0, %shr2
  %spec.select = select i1 %cmp.not, i32 %shr2, i32 %sub3
  store i32 %spec.select, ptr %value1, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @u_v(i32 noundef %LenInBits, ptr nocapture noundef readnone %tracestring, ptr nocapture noundef %bitstream) local_unnamed_addr #3 {
entry:
  %bitstream_length.i = getelementptr inbounds i8, ptr %bitstream, i64 12
  %0 = load i32, ptr %bitstream_length.i, align 4
  %shl.i = shl i32 %0, 3
  %add.i = or disjoint i32 %shl.i, 7
  %streamBuffer.i = getelementptr inbounds i8, ptr %bitstream, i64 16
  %1 = load ptr, ptr %streamBuffer.i, align 8
  %frame_bitoffset.i = getelementptr inbounds i8, ptr %bitstream, i64 8
  %2 = load i32, ptr %frame_bitoffset.i, align 8
  %add.i.i = add nsw i32 %2, %LenInBits
  %cmp.i.i = icmp sgt i32 %add.i.i, %add.i
  br i1 %cmp.i.i, label %readSyntaxElement_FLC.exit, label %if.else.i.i

if.else.i.i:                                      ; preds = %entry
  %tobool.not16.i.i = icmp eq i32 %LenInBits, 0
  br i1 %tobool.not16.i.i, label %if.end.i, label %while.body.preheader.i.i

while.body.preheader.i.i:                         ; preds = %if.else.i.i
  %shr.i.i = ashr i32 %2, 3
  %idxprom.i.i = sext i32 %shr.i.i to i64
  %arrayidx.i.i = getelementptr inbounds i8, ptr %1, i64 %idxprom.i.i
  %and.i.i = and i32 %2, 7
  %sub.i.i = xor i32 %and.i.i, 7
  %xtraiter = and i32 %LenInBits, 1
  %3 = icmp eq i32 %LenInBits, 1
  br i1 %3, label %GetBits.exit.i.unr-lcssa, label %while.body.preheader.i.i.new

while.body.preheader.i.i.new:                     ; preds = %while.body.preheader.i.i
  %unroll_iter = and i32 %LenInBits, -2
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i, %while.body.preheader.i.i.new
  %inf.020.i.i = phi i32 [ 0, %while.body.preheader.i.i.new ], [ %or.i.i.1, %while.body.i.i ]
  %curbyte.019.i.i = phi ptr [ %arrayidx.i.i, %while.body.preheader.i.i.new ], [ %spec.select15.i.i.1, %while.body.i.i ]
  %bitoffset.017.i.i = phi i32 [ %sub.i.i, %while.body.preheader.i.i.new ], [ %spec.select.i.i.1, %while.body.i.i ]
  %niter = phi i32 [ 0, %while.body.preheader.i.i.new ], [ %niter.next.1, %while.body.i.i ]
  %4 = load i8, ptr %curbyte.019.i.i, align 1
  %conv.i.i = zext i8 %4 to i32
  %dec1.i.i = add nsw i32 %bitoffset.017.i.i, -1
  %shr2.i.i = lshr i32 %conv.i.i, %bitoffset.017.i.i
  %cmp4.i.i = icmp eq i32 %bitoffset.017.i.i, 0
  %spec.select.i.i = select i1 %cmp4.i.i, i32 7, i32 %dec1.i.i
  %spec.select15.idx.i.i = zext i1 %cmp4.i.i to i64
  %spec.select15.i.i = getelementptr inbounds i8, ptr %curbyte.019.i.i, i64 %spec.select15.idx.i.i
  %5 = shl i32 %inf.020.i.i, 2
  %and3.i.i = shl nuw nsw i32 %shr2.i.i, 1
  %6 = and i32 %and3.i.i, 2
  %shl.i.i.1 = or disjoint i32 %5, %6
  %7 = load i8, ptr %spec.select15.i.i, align 1
  %conv.i.i.1 = zext i8 %7 to i32
  %dec1.i.i.1 = add nsw i32 %spec.select.i.i, -1
  %shr2.i.i.1 = lshr i32 %conv.i.i.1, %spec.select.i.i
  %and3.i.i.1 = and i32 %shr2.i.i.1, 1
  %or.i.i.1 = or disjoint i32 %and3.i.i.1, %shl.i.i.1
  %cmp4.i.i.1 = icmp eq i32 %spec.select.i.i, 0
  %spec.select.i.i.1 = select i1 %cmp4.i.i.1, i32 7, i32 %dec1.i.i.1
  %spec.select15.idx.i.i.1 = zext i1 %cmp4.i.i.1 to i64
  %spec.select15.i.i.1 = getelementptr inbounds i8, ptr %spec.select15.i.i, i64 %spec.select15.idx.i.i.1
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %GetBits.exit.i.unr-lcssa.loopexit, label %while.body.i.i

GetBits.exit.i.unr-lcssa.loopexit:                ; preds = %while.body.i.i
  %8 = shl i32 %or.i.i.1, 1
  br label %GetBits.exit.i.unr-lcssa

GetBits.exit.i.unr-lcssa:                         ; preds = %GetBits.exit.i.unr-lcssa.loopexit, %while.body.preheader.i.i
  %or.i.i.lcssa.ph = phi i32 [ poison, %while.body.preheader.i.i ], [ %or.i.i.1, %GetBits.exit.i.unr-lcssa.loopexit ]
  %inf.020.i.i.unr = phi i32 [ 0, %while.body.preheader.i.i ], [ %8, %GetBits.exit.i.unr-lcssa.loopexit ]
  %curbyte.019.i.i.unr = phi ptr [ %arrayidx.i.i, %while.body.preheader.i.i ], [ %spec.select15.i.i.1, %GetBits.exit.i.unr-lcssa.loopexit ]
  %bitoffset.017.i.i.unr = phi i32 [ %sub.i.i, %while.body.preheader.i.i ], [ %spec.select.i.i.1, %GetBits.exit.i.unr-lcssa.loopexit ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %GetBits.exit.i, label %while.body.i.i.epil

while.body.i.i.epil:                              ; preds = %GetBits.exit.i.unr-lcssa
  %9 = load i8, ptr %curbyte.019.i.i.unr, align 1
  %conv.i.i.epil = zext i8 %9 to i32
  %shr2.i.i.epil = lshr i32 %conv.i.i.epil, %bitoffset.017.i.i.unr
  %and3.i.i.epil = and i32 %shr2.i.i.epil, 1
  %or.i.i.epil = or disjoint i32 %and3.i.i.epil, %inf.020.i.i.unr
  br label %GetBits.exit.i

GetBits.exit.i:                                   ; preds = %GetBits.exit.i.unr-lcssa, %while.body.i.i.epil
  %or.i.i.lcssa = phi i32 [ %or.i.i.lcssa.ph, %GetBits.exit.i.unr-lcssa ], [ %or.i.i.epil, %while.body.i.i.epil ]
  %cmp.i = icmp slt i32 %LenInBits, 0
  br i1 %cmp.i, label %readSyntaxElement_FLC.exit, label %if.end.i

if.end.i:                                         ; preds = %if.else.i.i, %GetBits.exit.i
  %symbol.sroa.7.0 = phi i32 [ %or.i.i.lcssa, %GetBits.exit.i ], [ 0, %if.else.i.i ]
  store i32 %add.i.i, ptr %frame_bitoffset.i, align 8
  br label %readSyntaxElement_FLC.exit

readSyntaxElement_FLC.exit:                       ; preds = %entry, %GetBits.exit.i, %if.end.i
  %symbol.sroa.7.1 = phi i32 [ 0, %entry ], [ %symbol.sroa.7.0, %if.end.i ], [ %or.i.i.lcssa, %GetBits.exit.i ]
  %10 = load ptr, ptr @p_Dec, align 8
  %UsedBits = getelementptr inbounds i8, ptr %10, i64 24
  %11 = load i32, ptr %UsedBits, align 8
  %add = add nsw i32 %11, %LenInBits
  store i32 %add, ptr %UsedBits, align 8
  ret i32 %symbol.sroa.7.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 -1, 2) i32 @readSyntaxElement_FLC(ptr nocapture noundef %sym, ptr nocapture noundef %currStream) local_unnamed_addr #4 {
entry:
  %bitstream_length = getelementptr inbounds i8, ptr %currStream, i64 12
  %0 = load i32, ptr %bitstream_length, align 4
  %shl = shl i32 %0, 3
  %add = or disjoint i32 %shl, 7
  %streamBuffer = getelementptr inbounds i8, ptr %currStream, i64 16
  %1 = load ptr, ptr %streamBuffer, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %currStream, i64 8
  %2 = load i32, ptr %frame_bitoffset, align 8
  %inf = getelementptr inbounds i8, ptr %sym, i64 16
  %len = getelementptr inbounds i8, ptr %sym, i64 12
  %3 = load i32, ptr %len, align 4
  %add.i = add nsw i32 %3, %2
  %cmp.i = icmp sgt i32 %add.i, %add
  br i1 %cmp.i, label %cleanup, label %if.else.i

if.else.i:                                        ; preds = %entry
  %tobool.not16.i = icmp eq i32 %3, 0
  br i1 %tobool.not16.i, label %GetBits.exit.thread14, label %while.body.preheader.i

GetBits.exit.thread14:                            ; preds = %if.else.i
  store i32 0, ptr %inf, align 4
  br label %if.end

while.body.preheader.i:                           ; preds = %if.else.i
  %shr.i = ashr i32 %2, 3
  %idxprom.i = sext i32 %shr.i to i64
  %arrayidx.i = getelementptr inbounds i8, ptr %1, i64 %idxprom.i
  %and.i = and i32 %2, 7
  %sub.i = xor i32 %and.i, 7
  %xtraiter = and i32 %3, 1
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %GetBits.exit.unr-lcssa, label %while.body.preheader.i.new

while.body.preheader.i.new:                       ; preds = %while.body.preheader.i
  %unroll_iter = and i32 %3, -2
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.preheader.i.new
  %inf.020.i = phi i32 [ 0, %while.body.preheader.i.new ], [ %or.i.1, %while.body.i ]
  %curbyte.019.i = phi ptr [ %arrayidx.i, %while.body.preheader.i.new ], [ %spec.select15.i.1, %while.body.i ]
  %bitoffset.017.i = phi i32 [ %sub.i, %while.body.preheader.i.new ], [ %spec.select.i.1, %while.body.i ]
  %niter = phi i32 [ 0, %while.body.preheader.i.new ], [ %niter.next.1, %while.body.i ]
  %5 = load i8, ptr %curbyte.019.i, align 1
  %conv.i = zext i8 %5 to i32
  %dec1.i = add nsw i32 %bitoffset.017.i, -1
  %shr2.i = lshr i32 %conv.i, %bitoffset.017.i
  %cmp4.i = icmp eq i32 %bitoffset.017.i, 0
  %spec.select.i = select i1 %cmp4.i, i32 7, i32 %dec1.i
  %spec.select15.idx.i = zext i1 %cmp4.i to i64
  %spec.select15.i = getelementptr inbounds i8, ptr %curbyte.019.i, i64 %spec.select15.idx.i
  %6 = shl i32 %inf.020.i, 2
  %and3.i = shl nuw nsw i32 %shr2.i, 1
  %7 = and i32 %and3.i, 2
  %shl.i.1 = or disjoint i32 %6, %7
  %8 = load i8, ptr %spec.select15.i, align 1
  %conv.i.1 = zext i8 %8 to i32
  %dec1.i.1 = add nsw i32 %spec.select.i, -1
  %shr2.i.1 = lshr i32 %conv.i.1, %spec.select.i
  %and3.i.1 = and i32 %shr2.i.1, 1
  %or.i.1 = or disjoint i32 %and3.i.1, %shl.i.1
  %cmp4.i.1 = icmp eq i32 %spec.select.i, 0
  %spec.select.i.1 = select i1 %cmp4.i.1, i32 7, i32 %dec1.i.1
  %spec.select15.idx.i.1 = zext i1 %cmp4.i.1 to i64
  %spec.select15.i.1 = getelementptr inbounds i8, ptr %spec.select15.i, i64 %spec.select15.idx.i.1
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %GetBits.exit.unr-lcssa.loopexit, label %while.body.i

GetBits.exit.unr-lcssa.loopexit:                  ; preds = %while.body.i
  %9 = shl i32 %or.i.1, 1
  br label %GetBits.exit.unr-lcssa

GetBits.exit.unr-lcssa:                           ; preds = %GetBits.exit.unr-lcssa.loopexit, %while.body.preheader.i
  %or.i.lcssa.ph = phi i32 [ poison, %while.body.preheader.i ], [ %or.i.1, %GetBits.exit.unr-lcssa.loopexit ]
  %inf.020.i.unr = phi i32 [ 0, %while.body.preheader.i ], [ %9, %GetBits.exit.unr-lcssa.loopexit ]
  %curbyte.019.i.unr = phi ptr [ %arrayidx.i, %while.body.preheader.i ], [ %spec.select15.i.1, %GetBits.exit.unr-lcssa.loopexit ]
  %bitoffset.017.i.unr = phi i32 [ %sub.i, %while.body.preheader.i ], [ %spec.select.i.1, %GetBits.exit.unr-lcssa.loopexit ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %GetBits.exit, label %while.body.i.epil

while.body.i.epil:                                ; preds = %GetBits.exit.unr-lcssa
  %10 = load i8, ptr %curbyte.019.i.unr, align 1
  %conv.i.epil = zext i8 %10 to i32
  %shr2.i.epil = lshr i32 %conv.i.epil, %bitoffset.017.i.unr
  %and3.i.epil = and i32 %shr2.i.epil, 1
  %or.i.epil = or disjoint i32 %and3.i.epil, %inf.020.i.unr
  br label %GetBits.exit

GetBits.exit:                                     ; preds = %GetBits.exit.unr-lcssa, %while.body.i.epil
  %or.i.lcssa = phi i32 [ %or.i.lcssa.ph, %GetBits.exit.unr-lcssa ], [ %or.i.epil, %while.body.i.epil ]
  store i32 %or.i.lcssa, ptr %inf, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %GetBits.exit.thread14, %GetBits.exit
  %11 = phi i32 [ 0, %GetBits.exit.thread14 ], [ %or.i.lcssa, %GetBits.exit ]
  %value1 = getelementptr inbounds i8, ptr %sym, i64 4
  store i32 %11, ptr %value1, align 4
  %12 = load i32, ptr %frame_bitoffset, align 8
  %add4 = add nsw i32 %12, %3
  store i32 %add4, ptr %frame_bitoffset, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %GetBits.exit, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -1, %GetBits.exit ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @i_v(i32 noundef %LenInBits, ptr nocapture noundef readnone %tracestring, ptr nocapture noundef %bitstream) local_unnamed_addr #3 {
entry:
  %bitstream_length.i = getelementptr inbounds i8, ptr %bitstream, i64 12
  %0 = load i32, ptr %bitstream_length.i, align 4
  %shl.i = shl i32 %0, 3
  %add.i = or disjoint i32 %shl.i, 7
  %streamBuffer.i = getelementptr inbounds i8, ptr %bitstream, i64 16
  %1 = load ptr, ptr %streamBuffer.i, align 8
  %frame_bitoffset.i = getelementptr inbounds i8, ptr %bitstream, i64 8
  %2 = load i32, ptr %frame_bitoffset.i, align 8
  %add.i.i = add nsw i32 %2, %LenInBits
  %cmp.i.i = icmp sgt i32 %add.i.i, %add.i
  br i1 %cmp.i.i, label %readSyntaxElement_FLC.exit, label %if.else.i.i

if.else.i.i:                                      ; preds = %entry
  %tobool.not16.i.i = icmp eq i32 %LenInBits, 0
  br i1 %tobool.not16.i.i, label %if.end.i, label %while.body.preheader.i.i

while.body.preheader.i.i:                         ; preds = %if.else.i.i
  %shr.i.i = ashr i32 %2, 3
  %idxprom.i.i = sext i32 %shr.i.i to i64
  %arrayidx.i.i = getelementptr inbounds i8, ptr %1, i64 %idxprom.i.i
  %and.i.i = and i32 %2, 7
  %sub.i.i = xor i32 %and.i.i, 7
  %xtraiter = and i32 %LenInBits, 1
  %3 = icmp eq i32 %LenInBits, 1
  br i1 %3, label %GetBits.exit.i.unr-lcssa, label %while.body.preheader.i.i.new

while.body.preheader.i.i.new:                     ; preds = %while.body.preheader.i.i
  %unroll_iter = and i32 %LenInBits, -2
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i, %while.body.preheader.i.i.new
  %inf.020.i.i = phi i32 [ 0, %while.body.preheader.i.i.new ], [ %or.i.i.1, %while.body.i.i ]
  %curbyte.019.i.i = phi ptr [ %arrayidx.i.i, %while.body.preheader.i.i.new ], [ %spec.select15.i.i.1, %while.body.i.i ]
  %bitoffset.017.i.i = phi i32 [ %sub.i.i, %while.body.preheader.i.i.new ], [ %spec.select.i.i.1, %while.body.i.i ]
  %niter = phi i32 [ 0, %while.body.preheader.i.i.new ], [ %niter.next.1, %while.body.i.i ]
  %4 = load i8, ptr %curbyte.019.i.i, align 1
  %conv.i.i = zext i8 %4 to i32
  %dec1.i.i = add nsw i32 %bitoffset.017.i.i, -1
  %shr2.i.i = lshr i32 %conv.i.i, %bitoffset.017.i.i
  %cmp4.i.i = icmp eq i32 %bitoffset.017.i.i, 0
  %spec.select.i.i = select i1 %cmp4.i.i, i32 7, i32 %dec1.i.i
  %spec.select15.idx.i.i = zext i1 %cmp4.i.i to i64
  %spec.select15.i.i = getelementptr inbounds i8, ptr %curbyte.019.i.i, i64 %spec.select15.idx.i.i
  %5 = shl i32 %inf.020.i.i, 2
  %and3.i.i = shl nuw nsw i32 %shr2.i.i, 1
  %6 = and i32 %and3.i.i, 2
  %shl.i.i.1 = or disjoint i32 %5, %6
  %7 = load i8, ptr %spec.select15.i.i, align 1
  %conv.i.i.1 = zext i8 %7 to i32
  %dec1.i.i.1 = add nsw i32 %spec.select.i.i, -1
  %shr2.i.i.1 = lshr i32 %conv.i.i.1, %spec.select.i.i
  %and3.i.i.1 = and i32 %shr2.i.i.1, 1
  %or.i.i.1 = or disjoint i32 %and3.i.i.1, %shl.i.i.1
  %cmp4.i.i.1 = icmp eq i32 %spec.select.i.i, 0
  %spec.select.i.i.1 = select i1 %cmp4.i.i.1, i32 7, i32 %dec1.i.i.1
  %spec.select15.idx.i.i.1 = zext i1 %cmp4.i.i.1 to i64
  %spec.select15.i.i.1 = getelementptr inbounds i8, ptr %spec.select15.i.i, i64 %spec.select15.idx.i.i.1
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %GetBits.exit.i.unr-lcssa.loopexit, label %while.body.i.i

GetBits.exit.i.unr-lcssa.loopexit:                ; preds = %while.body.i.i
  %8 = shl i32 %or.i.i.1, 1
  br label %GetBits.exit.i.unr-lcssa

GetBits.exit.i.unr-lcssa:                         ; preds = %GetBits.exit.i.unr-lcssa.loopexit, %while.body.preheader.i.i
  %or.i.i.lcssa.ph = phi i32 [ poison, %while.body.preheader.i.i ], [ %or.i.i.1, %GetBits.exit.i.unr-lcssa.loopexit ]
  %inf.020.i.i.unr = phi i32 [ 0, %while.body.preheader.i.i ], [ %8, %GetBits.exit.i.unr-lcssa.loopexit ]
  %curbyte.019.i.i.unr = phi ptr [ %arrayidx.i.i, %while.body.preheader.i.i ], [ %spec.select15.i.i.1, %GetBits.exit.i.unr-lcssa.loopexit ]
  %bitoffset.017.i.i.unr = phi i32 [ %sub.i.i, %while.body.preheader.i.i ], [ %spec.select.i.i.1, %GetBits.exit.i.unr-lcssa.loopexit ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %GetBits.exit.i, label %while.body.i.i.epil

while.body.i.i.epil:                              ; preds = %GetBits.exit.i.unr-lcssa
  %9 = load i8, ptr %curbyte.019.i.i.unr, align 1
  %conv.i.i.epil = zext i8 %9 to i32
  %shr2.i.i.epil = lshr i32 %conv.i.i.epil, %bitoffset.017.i.i.unr
  %and3.i.i.epil = and i32 %shr2.i.i.epil, 1
  %or.i.i.epil = or disjoint i32 %and3.i.i.epil, %inf.020.i.i.unr
  br label %GetBits.exit.i

GetBits.exit.i:                                   ; preds = %GetBits.exit.i.unr-lcssa, %while.body.i.i.epil
  %or.i.i.lcssa = phi i32 [ %or.i.i.lcssa.ph, %GetBits.exit.i.unr-lcssa ], [ %or.i.i.epil, %while.body.i.i.epil ]
  %cmp.i = icmp slt i32 %LenInBits, 0
  br i1 %cmp.i, label %readSyntaxElement_FLC.exit, label %if.end.i

if.end.i:                                         ; preds = %if.else.i.i, %GetBits.exit.i
  %symbol.sroa.7.0 = phi i32 [ %or.i.i.lcssa, %GetBits.exit.i ], [ 0, %if.else.i.i ]
  store i32 %add.i.i, ptr %frame_bitoffset.i, align 8
  br label %readSyntaxElement_FLC.exit

readSyntaxElement_FLC.exit:                       ; preds = %entry, %GetBits.exit.i, %if.end.i
  %symbol.sroa.7.1 = phi i32 [ 0, %entry ], [ %symbol.sroa.7.0, %if.end.i ], [ %or.i.i.lcssa, %GetBits.exit.i ]
  %10 = load ptr, ptr @p_Dec, align 8
  %UsedBits = getelementptr inbounds i8, ptr %10, i64 24
  %11 = load i32, ptr %UsedBits, align 8
  %add = add nsw i32 %11, %LenInBits
  store i32 %add, ptr %UsedBits, align 8
  %sub = add nsw i32 %LenInBits, -1
  %shl = shl nuw i32 1, %sub
  %and = and i32 %symbol.sroa.7.1, %shl
  %sub3 = sub nsw i32 0, %and
  %or = or i32 %symbol.sroa.7.1, %sub3
  ret i32 %or
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @u_1(ptr nocapture noundef readnone %tracestring, ptr nocapture noundef %bitstream) local_unnamed_addr #5 {
entry:
  %bitstream_length.i.i = getelementptr inbounds i8, ptr %bitstream, i64 12
  %0 = load i32, ptr %bitstream_length.i.i, align 4
  %shl.i.i = shl i32 %0, 3
  %add.i.i = or disjoint i32 %shl.i.i, 7
  %frame_bitoffset.i.i = getelementptr inbounds i8, ptr %bitstream, i64 8
  %1 = load i32, ptr %frame_bitoffset.i.i, align 8
  %cmp.i.i.i.not = icmp slt i32 %1, %add.i.i
  br i1 %cmp.i.i.i.not, label %if.else.i.i.i, label %u_v.exit

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add nsw i32 %1, 1
  %streamBuffer.i.i = getelementptr inbounds i8, ptr %bitstream, i64 16
  %2 = load ptr, ptr %streamBuffer.i.i, align 8
  %shr.i.i.i = ashr i32 %1, 3
  %idxprom.i.i.i = sext i32 %shr.i.i.i to i64
  %arrayidx.i.i.i = getelementptr inbounds i8, ptr %2, i64 %idxprom.i.i.i
  %and.i.i.i = and i32 %1, 7
  %sub.i.i.i = xor i32 %and.i.i.i, 7
  %3 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %3 to i32
  %shr2.i.i.i = lshr i32 %conv.i.i.i, %sub.i.i.i
  %and3.i.i.i = and i32 %shr2.i.i.i, 1
  store i32 %add.i.i.i, ptr %frame_bitoffset.i.i, align 8
  br label %u_v.exit

u_v.exit:                                         ; preds = %entry, %if.else.i.i.i
  %symbol.sroa.7.1.i = phi i32 [ 0, %entry ], [ %and3.i.i.i, %if.else.i.i.i ]
  %4 = load ptr, ptr @p_Dec, align 8
  %UsedBits.i = getelementptr inbounds i8, ptr %4, i64 24
  %5 = load i32, ptr %UsedBits.i, align 8
  %add.i = add nsw i32 %5, 1
  store i32 %add.i, ptr %UsedBits.i, align 8
  ret i32 %symbol.sroa.7.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @linfo_cbp_intra_normal(i32 noundef %len, i32 noundef %info, ptr nocapture noundef writeonly %cbp, ptr nocapture noundef readnone %dummy) local_unnamed_addr #2 {
entry:
  %shr.i = ashr i32 %len, 1
  %shl.i = shl nuw i32 1, %shr.i
  %add.i = add i32 %info, -1
  %sub.i = add i32 %add.i, %shl.i
  %idxprom = sext i32 %sub.i to i64
  %arrayidx = getelementptr inbounds [48 x [2 x i8]], ptr getelementptr inbounds (i8, ptr @NCBP, i64 96), i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 2
  %conv = zext i8 %0 to i32
  store i32 %conv, ptr %cbp, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @linfo_cbp_intra_other(i32 noundef %len, i32 noundef %info, ptr nocapture noundef writeonly %cbp, ptr nocapture noundef readnone %dummy) local_unnamed_addr #2 {
entry:
  %shr.i = ashr i32 %len, 1
  %shl.i = shl nuw i32 1, %shr.i
  %add.i = add i32 %info, -1
  %sub.i = add i32 %add.i, %shl.i
  %idxprom = sext i32 %sub.i to i64
  %arrayidx = getelementptr inbounds [48 x [2 x i8]], ptr @NCBP, i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 2
  %conv = zext i8 %0 to i32
  store i32 %conv, ptr %cbp, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @linfo_cbp_inter_normal(i32 noundef %len, i32 noundef %info, ptr nocapture noundef writeonly %cbp, ptr nocapture noundef readnone %dummy) local_unnamed_addr #2 {
entry:
  %shr.i = ashr i32 %len, 1
  %shl.i = shl nuw i32 1, %shr.i
  %add.i = add i32 %info, -1
  %sub.i = add i32 %add.i, %shl.i
  %idxprom = sext i32 %sub.i to i64
  %arrayidx1 = getelementptr inbounds [48 x [2 x i8]], ptr getelementptr inbounds (i8, ptr @NCBP, i64 96), i64 0, i64 %idxprom, i64 1
  %0 = load i8, ptr %arrayidx1, align 1
  %conv = zext i8 %0 to i32
  store i32 %conv, ptr %cbp, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @linfo_cbp_inter_other(i32 noundef %len, i32 noundef %info, ptr nocapture noundef writeonly %cbp, ptr nocapture noundef readnone %dummy) local_unnamed_addr #2 {
entry:
  %shr.i = ashr i32 %len, 1
  %shl.i = shl nuw i32 1, %shr.i
  %add.i = add i32 %info, -1
  %sub.i = add i32 %add.i, %shl.i
  %idxprom = sext i32 %sub.i to i64
  %arrayidx1 = getelementptr inbounds [48 x [2 x i8]], ptr @NCBP, i64 0, i64 %idxprom, i64 1
  %0 = load i8, ptr %arrayidx1, align 1
  %conv = zext i8 %0 to i32
  store i32 %conv, ptr %cbp, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @linfo_levrun_inter(i32 noundef %len, i32 noundef %info, ptr nocapture noundef %level, ptr nocapture noundef writeonly %irun) local_unnamed_addr #6 {
entry:
  %cmp = icmp slt i32 %len, 10
  %and = and i32 %info, 1
  %cmp11.not = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %shr = ashr i32 %len, 1
  %0 = tail call i32 @llvm.smax.i32(i32 %shr, i32 1)
  %cond.i = add nsw i32 %0, -1
  %shr1 = ashr i32 %info, 1
  %idxprom = zext nneg i32 %cond.i to i64
  %idxprom2 = sext i32 %shr1 to i64
  %arrayidx3 = getelementptr inbounds [4 x [8 x [2 x i8]]], ptr @NTAB1, i64 0, i64 %idxprom, i64 %idxprom2
  %1 = load i8, ptr %arrayidx3, align 2
  %conv = zext i8 %1 to i32
  store i32 %conv, ptr %level, align 4
  %arrayidx9 = getelementptr inbounds i8, ptr %arrayidx3, i64 1
  %2 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %2 to i32
  store i32 %conv10, ptr %irun, align 4
  br i1 %cmp11.not, label %if.end30, label %if.then13

if.then13:                                        ; preds = %if.then
  %3 = load i32, ptr %level, align 4
  %sub14 = sub nsw i32 0, %3
  store i32 %sub14, ptr %level, align 4
  br label %if.end30

if.else:                                          ; preds = %entry
  %and15 = lshr i32 %info, 1
  %shr16 = and i32 %and15, 15
  store i32 %shr16, ptr %irun, align 4
  %idxprom17 = zext nneg i32 %shr16 to i64
  %arrayidx18 = getelementptr inbounds [16 x i8], ptr @LEVRUN1, i64 0, i64 %idxprom17
  %4 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %4 to i32
  %shr20 = ashr i32 %info, 5
  %shr21 = lshr i32 %len, 1
  %sub22 = add nsw i32 %shr21, -5
  %shl = shl nuw i32 1, %sub22
  %add = add i32 %shl, %shr20
  %add23 = add i32 %add, %conv19
  store i32 %add23, ptr %level, align 4
  br i1 %cmp11.not, label %if.end34, label %if.then27

if.then27:                                        ; preds = %if.else
  %sub28 = sub nsw i32 0, %add23
  br label %if.end34.sink.split

if.end30:                                         ; preds = %if.then, %if.then13
  %cmp31 = icmp eq i32 %len, 1
  br i1 %cmp31, label %if.end34.sink.split, label %if.end34

if.end34.sink.split:                              ; preds = %if.end30, %if.then27
  %sub28.sink = phi i32 [ %sub28, %if.then27 ], [ 0, %if.end30 ]
  store i32 %sub28.sink, ptr %level, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.else, %if.end30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @linfo_levrun_c2x2(i32 noundef %len, i32 noundef %info, ptr nocapture noundef %level, ptr nocapture noundef writeonly %irun) local_unnamed_addr #6 {
entry:
  %cmp = icmp slt i32 %len, 6
  %and = and i32 %info, 1
  %cmp11.not = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %shr = ashr i32 %len, 1
  %0 = tail call i32 @llvm.smax.i32(i32 %shr, i32 1)
  %cond.i = add nsw i32 %0, -1
  %shr1 = ashr i32 %info, 1
  %idxprom = zext nneg i32 %cond.i to i64
  %idxprom2 = sext i32 %shr1 to i64
  %arrayidx3 = getelementptr inbounds [2 x [2 x [2 x i8]]], ptr @NTAB3, i64 0, i64 %idxprom, i64 %idxprom2
  %1 = load i8, ptr %arrayidx3, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, ptr %level, align 4
  %arrayidx9 = getelementptr inbounds i8, ptr %arrayidx3, i64 1
  %2 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %2 to i32
  store i32 %conv10, ptr %irun, align 4
  br i1 %cmp11.not, label %if.end30, label %if.then13

if.then13:                                        ; preds = %if.then
  %3 = load i32, ptr %level, align 4
  %sub14 = sub nsw i32 0, %3
  store i32 %sub14, ptr %level, align 4
  br label %if.end30

if.else:                                          ; preds = %entry
  %and15 = lshr i32 %info, 1
  %shr16 = and i32 %and15, 3
  store i32 %shr16, ptr %irun, align 4
  %idxprom17 = zext nneg i32 %shr16 to i64
  %arrayidx18 = getelementptr inbounds [4 x i8], ptr @LEVRUN3, i64 0, i64 %idxprom17
  %4 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %4 to i32
  %shr20 = ashr i32 %info, 3
  %shr21 = lshr i32 %len, 1
  %sub22 = add nsw i32 %shr21, -3
  %shl = shl nuw i32 1, %sub22
  %add = add i32 %shl, %shr20
  %add23 = add i32 %add, %conv19
  store i32 %add23, ptr %level, align 4
  br i1 %cmp11.not, label %if.end34, label %if.then27

if.then27:                                        ; preds = %if.else
  %sub28 = sub nsw i32 0, %add23
  br label %if.end34.sink.split

if.end30:                                         ; preds = %if.then, %if.then13
  %cmp31 = icmp eq i32 %len, 1
  br i1 %cmp31, label %if.end34.sink.split, label %if.end34

if.end34.sink.split:                              ; preds = %if.end30, %if.then27
  %sub28.sink = phi i32 [ %sub28, %if.then27 ], [ 0, %if.end30 ]
  store i32 %sub28.sink, ptr %level, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.else, %if.end30
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @GetVLCSymbol(ptr nocapture noundef readonly %buffer, i32 noundef %totbitoffset, ptr nocapture noundef writeonly %info, i32 noundef %bytecount) local_unnamed_addr #4 {
entry:
  %shr = ashr i32 %totbitoffset, 3
  %conv = sext i32 %shr to i64
  %and = and i32 %totbitoffset, 7
  %sub = xor i32 %and, 7
  %arrayidx = getelementptr inbounds i8, ptr %buffer, i64 %conv
  %0 = load i8, ptr %arrayidx, align 1
  %conv1 = zext i8 %0 to i32
  %1 = shl nuw nsw i32 1, %sub
  %2 = and i32 %1, %conv1
  %cmp64 = icmp eq i32 %2, 0
  br i1 %cmp64, label %while.body, label %while.end.thread

while.body:                                       ; preds = %entry, %while.body
  %cur_byte.069 = phi ptr [ %add.ptr, %while.body ], [ %arrayidx, %entry ]
  %len.068 = phi i32 [ %inc, %while.body ], [ 0, %entry ]
  %bitcounter.067 = phi i32 [ %inc5, %while.body ], [ 1, %entry ]
  %bitoffset.066 = phi i32 [ %and6, %while.body ], [ %sub, %entry ]
  %byteoffset.065 = phi i64 [ %add, %while.body ], [ %conv, %entry ]
  %inc = add nuw i32 %len.068, 1
  %inc5 = add nuw nsw i32 %bitcounter.067, 1
  %dec = add nuw nsw i32 %bitoffset.066, 7
  %and6 = and i32 %dec, 7
  %cmp7 = icmp eq i32 %and6, 7
  %idx.ext = zext i1 %cmp7 to i64
  %add.ptr = getelementptr inbounds i8, ptr %cur_byte.069, i64 %idx.ext
  %add = add nsw i64 %byteoffset.065, %idx.ext
  %3 = load i8, ptr %add.ptr, align 1
  %conv12 = zext i8 %3 to i32
  %4 = shl nuw nsw i32 1, %and6
  %5 = and i32 %4, %conv12
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.body
  %add15 = add nuw nsw i32 %len.068, 8
  %shr16 = lshr i32 %add15, 3
  %conv17 = zext nneg i32 %shr16 to i64
  %add18 = add nsw i64 %add, %conv17
  %conv19 = sext i32 %bytecount to i64
  %cmp20 = icmp sgt i64 %add18, %conv19
  br i1 %cmp20, label %cleanup, label %while.body24.preheader

while.body24.preheader:                           ; preds = %while.end
  %6 = icmp eq i32 %len.068, 0
  br i1 %6, label %while.end35.loopexit.unr-lcssa, label %while.body24.preheader.new

while.body24.preheader.new:                       ; preds = %while.body24.preheader
  %unroll_iter = and i32 %inc, -2
  br label %while.body24

while.end.thread:                                 ; preds = %entry
  %cmp2092 = icmp sgt i32 %shr, %bytecount
  br i1 %cmp2092, label %cleanup, label %while.end35

while.body24:                                     ; preds = %while.body24, %while.body24.preheader.new
  %inf.079 = phi i32 [ 0, %while.body24.preheader.new ], [ %or.1, %while.body24 ]
  %cur_byte.178 = phi ptr [ %add.ptr, %while.body24.preheader.new ], [ %add.ptr30.1, %while.body24 ]
  %bitoffset.175 = phi i32 [ %and6, %while.body24.preheader.new ], [ %and26.1, %while.body24 ]
  %niter = phi i32 [ 0, %while.body24.preheader.new ], [ %niter.next.1, %while.body24 ]
  %dec25 = add nuw nsw i32 %bitoffset.175, 7
  %and26 = and i32 %dec25, 7
  %cmp27 = icmp eq i32 %and26, 7
  %idx.ext29 = zext i1 %cmp27 to i64
  %add.ptr30 = getelementptr inbounds i8, ptr %cur_byte.178, i64 %idx.ext29
  %7 = load i8, ptr %add.ptr30, align 1
  %conv32 = zext i8 %7 to i32
  %shr33 = lshr i32 %conv32, %and26
  %dec25.1 = add nuw nsw i32 %bitoffset.175, 6
  %and26.1 = and i32 %dec25.1, 7
  %cmp27.1 = icmp eq i32 %and26.1, 7
  %idx.ext29.1 = zext i1 %cmp27.1 to i64
  %add.ptr30.1 = getelementptr inbounds i8, ptr %add.ptr30, i64 %idx.ext29.1
  %8 = shl i32 %inf.079, 2
  %and34 = shl nuw nsw i32 %shr33, 1
  %9 = and i32 %and34, 2
  %shl.1 = or disjoint i32 %8, %9
  %10 = load i8, ptr %add.ptr30.1, align 1
  %conv32.1 = zext i8 %10 to i32
  %shr33.1 = lshr i32 %conv32.1, %and26.1
  %and34.1 = and i32 %shr33.1, 1
  %or.1 = or disjoint i32 %and34.1, %shl.1
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %while.end35.loopexit.unr-lcssa.loopexit, label %while.body24

while.end35.loopexit.unr-lcssa.loopexit:          ; preds = %while.body24
  %11 = shl i32 %or.1, 1
  br label %while.end35.loopexit.unr-lcssa

while.end35.loopexit.unr-lcssa:                   ; preds = %while.end35.loopexit.unr-lcssa.loopexit, %while.body24.preheader
  %or.lcssa.ph = phi i32 [ poison, %while.body24.preheader ], [ %or.1, %while.end35.loopexit.unr-lcssa.loopexit ]
  %inf.079.unr = phi i32 [ 0, %while.body24.preheader ], [ %11, %while.end35.loopexit.unr-lcssa.loopexit ]
  %cur_byte.178.unr = phi ptr [ %add.ptr, %while.body24.preheader ], [ %add.ptr30.1, %while.end35.loopexit.unr-lcssa.loopexit ]
  %bitoffset.175.unr = phi i32 [ %and6, %while.body24.preheader ], [ %and26.1, %while.end35.loopexit.unr-lcssa.loopexit ]
  %12 = and i32 %len.068, 1
  %lcmp.mod.not.not = icmp eq i32 %12, 0
  br i1 %lcmp.mod.not.not, label %while.body24.epil, label %while.end35.loopexit

while.body24.epil:                                ; preds = %while.end35.loopexit.unr-lcssa
  %dec25.epil = add nuw nsw i32 %bitoffset.175.unr, 7
  %and26.epil = and i32 %dec25.epil, 7
  %cmp27.epil = icmp eq i32 %and26.epil, 7
  %idx.ext29.epil = zext i1 %cmp27.epil to i64
  %add.ptr30.epil = getelementptr inbounds i8, ptr %cur_byte.178.unr, i64 %idx.ext29.epil
  %13 = load i8, ptr %add.ptr30.epil, align 1
  %conv32.epil = zext i8 %13 to i32
  %shr33.epil = lshr i32 %conv32.epil, %and26.epil
  %and34.epil = and i32 %shr33.epil, 1
  %or.epil = or disjoint i32 %and34.epil, %inf.079.unr
  br label %while.end35.loopexit

while.end35.loopexit:                             ; preds = %while.end35.loopexit.unr-lcssa, %while.body24.epil
  %or.lcssa = phi i32 [ %or.lcssa.ph, %while.end35.loopexit.unr-lcssa ], [ %or.epil, %while.body24.epil ]
  %14 = add nuw i32 %inc, %inc5
  br label %while.end35

while.end35:                                      ; preds = %while.end.thread, %while.end35.loopexit
  %bitcounter.1.lcssa = phi i32 [ %14, %while.end35.loopexit ], [ 1, %while.end.thread ]
  %inf.0.lcssa = phi i32 [ %or.lcssa, %while.end35.loopexit ], [ 0, %while.end.thread ]
  store i32 %inf.0.lcssa, ptr %info, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end.thread, %while.end, %while.end35
  %retval.0 = phi i32 [ %bitcounter.1.lcssa, %while.end35 ], [ -1, %while.end ], [ -1, %while.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @readSyntaxElement_UVLC(ptr nocapture noundef readnone %currMB, ptr noundef %sym, ptr nocapture noundef readonly %dP) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %dP, align 8
  %call = tail call i32 @readSyntaxElement_VLC(ptr noundef %sym, ptr noundef %0)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 -1, 2) i32 @readSyntaxElement_Intra4x4PredictionMode(ptr nocapture noundef %sym, ptr nocapture noundef %currStream) local_unnamed_addr #7 {
entry:
  %streamBuffer = getelementptr inbounds i8, ptr %currStream, i64 16
  %0 = load ptr, ptr %streamBuffer, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %currStream, i64 8
  %1 = load i32, ptr %frame_bitoffset, align 8
  %inf = getelementptr inbounds i8, ptr %sym, i64 16
  %shr.i = ashr i32 %1, 3
  %and.i = and i32 %1, 7
  %sub.i = xor i32 %and.i, 7
  %idxprom.i = sext i32 %shr.i to i64
  %arrayidx.i = getelementptr inbounds i8, ptr %0, i64 %idxprom.i
  %2 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %2 to i32
  %shl.i = shl nuw nsw i32 1, %sub.i
  %and1.i = and i32 %shl.i, %conv.i
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end

if.end.i:                                         ; preds = %entry
  %bitstream_length = getelementptr inbounds i8, ptr %currStream, i64 12
  %3 = load i32, ptr %bitstream_length, align 4
  %cmp.not.i = icmp slt i32 %shr.i, %3
  br i1 %cmp.not.i, label %if.else.i, label %return

if.else.i:                                        ; preds = %if.end.i
  %shl5.i = shl nuw nsw i32 %conv.i, 8
  %add.ptr.i = getelementptr inbounds i8, ptr %arrayidx.i, i64 1
  %4 = load i8, ptr %add.ptr.i, align 1
  %conv6.i = zext i8 %4 to i32
  %add.i = or disjoint i32 %shl5.i, %conv6.i
  %narrow.i = sub nuw nsw i32 8, %sub.i
  %shl9.i = shl nuw nsw i32 %add.i, %narrow.i
  %and10.i = lshr i32 %shl9.i, 13
  %shr11.i = and i32 %and10.i, 7
  br label %if.end

if.end:                                           ; preds = %if.else.i, %entry
  %shr11.sink.i = phi i32 [ %shr11.i, %if.else.i ], [ 0, %entry ]
  %retval.0.ph.i = phi i32 [ 4, %if.else.i ], [ 1, %entry ]
  store i32 %shr11.sink.i, ptr %inf, align 4
  %len = getelementptr inbounds i8, ptr %sym, i64 12
  store i32 %retval.0.ph.i, ptr %len, align 4
  %5 = load i32, ptr %frame_bitoffset, align 8
  %add = add nsw i32 %5, %retval.0.ph.i
  store i32 %add, ptr %frame_bitoffset, align 8
  %6 = load i32, ptr %len, align 4
  %cmp5 = icmp eq i32 %6, 1
  br i1 %cmp5, label %return, label %cond.false

cond.false:                                       ; preds = %if.end
  %7 = load i32, ptr %inf, align 8
  br label %return

return:                                           ; preds = %cond.false, %if.end, %if.end.i
  %.sink19 = phi i64 [ 12, %if.end.i ], [ 4, %if.end ], [ 4, %cond.false ]
  %.sink = phi i32 [ -1, %if.end.i ], [ -1, %if.end ], [ %7, %cond.false ]
  %retval.0 = phi i32 [ -1, %if.end.i ], [ 1, %if.end ], [ 1, %cond.false ]
  %len17 = getelementptr inbounds i8, ptr %sym, i64 %.sink19
  store i32 %.sink, ptr %len17, align 4
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 5) i32 @GetVLCSymbol_IntraMode(ptr nocapture noundef readonly %buffer, i32 noundef %totbitoffset, ptr nocapture noundef writeonly %info, i32 noundef %bytecount) local_unnamed_addr #6 {
entry:
  %shr = ashr i32 %totbitoffset, 3
  %and = and i32 %totbitoffset, 7
  %sub = xor i32 %and, 7
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds i8, ptr %buffer, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %shl = shl nuw nsw i32 1, %sub
  %and1 = and i32 %shl, %conv
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.end, label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %cmp.not = icmp slt i32 %shr, %bytecount
  br i1 %cmp.not, label %if.else, label %cleanup

if.else:                                          ; preds = %if.end
  %shl5 = shl nuw nsw i32 %conv, 8
  %add.ptr = getelementptr inbounds i8, ptr %arrayidx, i64 1
  %1 = load i8, ptr %add.ptr, align 1
  %conv6 = zext i8 %1 to i32
  %add = or disjoint i32 %shl5, %conv6
  %narrow = sub nuw nsw i32 8, %sub
  %shl9 = shl nuw nsw i32 %add, %narrow
  %and10 = lshr i32 %shl9, 13
  %shr11 = and i32 %and10, 7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %entry, %if.else
  %shr11.sink = phi i32 [ %shr11, %if.else ], [ 0, %entry ]
  %retval.0.ph = phi i32 [ 4, %if.else ], [ 1, %entry ]
  store i32 %shr11.sink, ptr %info, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end
  %retval.0 = phi i32 [ -1, %if.end ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @more_rbsp_data(ptr nocapture noundef readonly %buffer, i32 noundef %totbitoffset, i32 noundef %bytecount) local_unnamed_addr #8 {
entry:
  %shr = ashr i32 %totbitoffset, 3
  %sub = add nsw i32 %bytecount, -1
  %cmp = icmp slt i32 %shr, %sub
  br i1 %cmp, label %cleanup19, label %if.else

if.else:                                          ; preds = %entry
  %conv = sext i32 %shr to i64
  %and = and i32 %totbitoffset, 7
  %sub3 = xor i32 %and, 7
  %arrayidx = getelementptr inbounds i8, ptr %buffer, i64 %conv
  %0 = load i8, ptr %arrayidx, align 1
  %conv4 = zext i8 %0 to i32
  %1 = shl nuw nsw i32 1, %sub3
  %2 = and i32 %1, %conv4
  %cmp7 = icmp eq i32 %2, 0
  br i1 %cmp7, label %cleanup19, label %if.else10

if.else10:                                        ; preds = %if.else
  %cmp1127.not = icmp eq i32 %and, 7
  br i1 %cmp1127.not, label %cleanup19, label %while.body

while.body:                                       ; preds = %if.else10
  %dec = sub nuw nsw i32 6, %and
  %shr15 = lshr i32 %conv4, %dec
  %and16 = and i32 %shr15, 1
  %cmp11 = icmp ne i32 %and, 6
  %tobool.not = icmp eq i32 %and16, 0
  %3 = select i1 %cmp11, i1 %tobool.not, i1 false
  br i1 %3, label %while.body.1, label %cleanup19

while.body.1:                                     ; preds = %while.body
  %dec14 = sub nsw i32 5, %and
  %shr15.1 = lshr i32 %conv4, %dec14
  %and16.1 = and i32 %shr15.1, 1
  %cmp11.1 = icmp ne i32 %and, 5
  %tobool.not.1 = icmp eq i32 %and16.1, 0
  %4 = select i1 %cmp11.1, i1 %tobool.not.1, i1 false
  br i1 %4, label %while.body.2, label %cleanup19

while.body.2:                                     ; preds = %while.body.1
  %dec14.1 = sub nsw i32 4, %and
  %shr15.2 = lshr i32 %conv4, %dec14.1
  %and16.2 = and i32 %shr15.2, 1
  %cmp11.2 = icmp ne i32 %and, 4
  %tobool.not.2 = icmp eq i32 %and16.2, 0
  %5 = select i1 %cmp11.2, i1 %tobool.not.2, i1 false
  br i1 %5, label %while.body.3, label %cleanup19

while.body.3:                                     ; preds = %while.body.2
  %dec14.2 = sub nsw i32 3, %and
  %shr15.3 = lshr i32 %conv4, %dec14.2
  %and16.3 = and i32 %shr15.3, 1
  %cmp11.3 = icmp ne i32 %and, 3
  %tobool.not.3 = icmp eq i32 %and16.3, 0
  %6 = select i1 %cmp11.3, i1 %tobool.not.3, i1 false
  br i1 %6, label %while.body.4, label %cleanup19

while.body.4:                                     ; preds = %while.body.3
  %dec14.3 = sub nsw i32 2, %and
  %shr15.4 = lshr i32 %conv4, %dec14.3
  %and16.4 = and i32 %shr15.4, 1
  %cmp11.4 = icmp ne i32 %and, 2
  %tobool.not.4 = icmp eq i32 %and16.4, 0
  %7 = select i1 %cmp11.4, i1 %tobool.not.4, i1 false
  br i1 %7, label %while.body.5, label %cleanup19

while.body.5:                                     ; preds = %while.body.4
  %dec14.4 = sub nsw i32 1, %and
  %shr15.5 = lshr i32 %conv4, %dec14.4
  %and16.5 = and i32 %shr15.5, 1
  %cmp11.5 = icmp ne i32 %and, 1
  %tobool.not.5 = icmp eq i32 %and16.5, 0
  %8 = select i1 %cmp11.5, i1 %tobool.not.5, i1 false
  br i1 %8, label %while.body.6, label %cleanup19

while.body.6:                                     ; preds = %while.body.5
  %dec14.5 = sub nsw i32 0, %and
  %shr15.6 = lshr i32 %conv4, %dec14.5
  %and16.6 = and i32 %shr15.6, 1
  br label %cleanup19

cleanup19:                                        ; preds = %while.body, %while.body.1, %while.body.2, %while.body.3, %while.body.4, %while.body.5, %while.body.6, %if.else10, %if.else, %entry
  %retval.1 = phi i32 [ 1, %entry ], [ 1, %if.else ], [ 0, %if.else10 ], [ %and16, %while.body ], [ %and16.1, %while.body.1 ], [ %and16.2, %while.body.2 ], [ %and16.3, %while.body.3 ], [ %and16.4, %while.body.4 ], [ %and16.5, %while.body.5 ], [ %and16.6, %while.body.6 ]
  ret i32 %retval.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @uvlc_startcode_follows(ptr nocapture noundef readonly %currSlice, i32 noundef %dummy) local_unnamed_addr #9 {
entry:
  %partArr = getelementptr inbounds i8, ptr %currSlice, i64 312
  %0 = load ptr, ptr %partArr, align 8
  %1 = load ptr, ptr %0, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %1, i64 8
  %2 = load i32, ptr %frame_bitoffset, align 8
  %bitstream_length = getelementptr inbounds i8, ptr %1, i64 12
  %3 = load i32, ptr %bitstream_length, align 4
  %shr.i = ashr i32 %2, 3
  %sub.i = add nsw i32 %3, -1
  %cmp.i = icmp slt i32 %shr.i, %sub.i
  br i1 %cmp.i, label %more_rbsp_data.exit, label %if.else.i

if.else.i:                                        ; preds = %entry
  %streamBuffer = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %streamBuffer, align 8
  %conv.i = sext i32 %shr.i to i64
  %and.i = and i32 %2, 7
  %sub3.i = xor i32 %and.i, 7
  %arrayidx.i = getelementptr inbounds i8, ptr %4, i64 %conv.i
  %5 = load i8, ptr %arrayidx.i, align 1
  %conv4.i = zext i8 %5 to i32
  %6 = shl nuw nsw i32 1, %sub3.i
  %7 = and i32 %6, %conv4.i
  %cmp7.i = icmp eq i32 %7, 0
  br i1 %cmp7.i, label %more_rbsp_data.exit, label %if.else10.i

if.else10.i:                                      ; preds = %if.else.i
  %cmp1127.not.i = icmp eq i32 %and.i, 7
  br i1 %cmp1127.not.i, label %more_rbsp_data.exit, label %while.body.i

while.body.i:                                     ; preds = %if.else10.i
  %dec.i = sub nuw nsw i32 6, %and.i
  %shr15.i = lshr i32 %conv4.i, %dec.i
  %and16.i = and i32 %shr15.i, 1
  %cmp11.i = icmp ne i32 %and.i, 6
  %tobool.not.i = icmp eq i32 %and16.i, 0
  %8 = select i1 %cmp11.i, i1 %tobool.not.i, i1 false
  br i1 %8, label %while.body.i.1, label %more_rbsp_data.exit.loopexit

while.body.i.1:                                   ; preds = %while.body.i
  %dec14.i = sub nsw i32 5, %and.i
  %shr15.i.1 = lshr i32 %conv4.i, %dec14.i
  %and16.i.1 = and i32 %shr15.i.1, 1
  %cmp11.i.1 = icmp ne i32 %and.i, 5
  %tobool.not.i.1 = icmp eq i32 %and16.i.1, 0
  %9 = select i1 %cmp11.i.1, i1 %tobool.not.i.1, i1 false
  br i1 %9, label %while.body.i.2, label %more_rbsp_data.exit.loopexit

while.body.i.2:                                   ; preds = %while.body.i.1
  %dec14.i.1 = sub nsw i32 4, %and.i
  %shr15.i.2 = lshr i32 %conv4.i, %dec14.i.1
  %and16.i.2 = and i32 %shr15.i.2, 1
  %cmp11.i.2 = icmp ne i32 %and.i, 4
  %tobool.not.i.2 = icmp eq i32 %and16.i.2, 0
  %10 = select i1 %cmp11.i.2, i1 %tobool.not.i.2, i1 false
  br i1 %10, label %while.body.i.3, label %more_rbsp_data.exit.loopexit

while.body.i.3:                                   ; preds = %while.body.i.2
  %dec14.i.2 = sub nsw i32 3, %and.i
  %shr15.i.3 = lshr i32 %conv4.i, %dec14.i.2
  %and16.i.3 = and i32 %shr15.i.3, 1
  %cmp11.i.3 = icmp ne i32 %and.i, 3
  %tobool.not.i.3 = icmp eq i32 %and16.i.3, 0
  %11 = select i1 %cmp11.i.3, i1 %tobool.not.i.3, i1 false
  br i1 %11, label %while.body.i.4, label %more_rbsp_data.exit.loopexit

while.body.i.4:                                   ; preds = %while.body.i.3
  %dec14.i.3 = sub nsw i32 2, %and.i
  %shr15.i.4 = lshr i32 %conv4.i, %dec14.i.3
  %and16.i.4 = and i32 %shr15.i.4, 1
  %cmp11.i.4 = icmp ne i32 %and.i, 2
  %tobool.not.i.4 = icmp eq i32 %and16.i.4, 0
  %12 = select i1 %cmp11.i.4, i1 %tobool.not.i.4, i1 false
  br i1 %12, label %while.body.i.5, label %more_rbsp_data.exit.loopexit

while.body.i.5:                                   ; preds = %while.body.i.4
  %dec14.i.4 = sub nsw i32 1, %and.i
  %shr15.i.5 = lshr i32 %conv4.i, %dec14.i.4
  %and16.i.5 = and i32 %shr15.i.5, 1
  %cmp11.i.5 = icmp ne i32 %and.i, 1
  %tobool.not.i.5 = icmp eq i32 %and16.i.5, 0
  %13 = select i1 %cmp11.i.5, i1 %tobool.not.i.5, i1 false
  br i1 %13, label %while.body.i.6, label %more_rbsp_data.exit.loopexit

while.body.i.6:                                   ; preds = %while.body.i.5
  %dec14.i.5 = sub nsw i32 0, %and.i
  %shr15.i.6 = lshr i32 %conv4.i, %dec14.i.5
  %and16.i.6 = and i32 %shr15.i.6, 1
  br label %more_rbsp_data.exit.loopexit

more_rbsp_data.exit.loopexit:                     ; preds = %while.body.i.6, %while.body.i.5, %while.body.i.4, %while.body.i.3, %while.body.i.2, %while.body.i.1, %while.body.i
  %and16.i.lcssa = phi i32 [ %and16.i, %while.body.i ], [ %and16.i.1, %while.body.i.1 ], [ %and16.i.2, %while.body.i.2 ], [ %and16.i.3, %while.body.i.3 ], [ %and16.i.4, %while.body.i.4 ], [ %and16.i.5, %while.body.i.5 ], [ %and16.i.6, %while.body.i.6 ]
  %14 = xor i32 %and16.i.lcssa, 1
  br label %more_rbsp_data.exit

more_rbsp_data.exit:                              ; preds = %more_rbsp_data.exit.loopexit, %entry, %if.else.i, %if.else10.i
  %retval.1.i = phi i32 [ 0, %entry ], [ 0, %if.else.i ], [ 1, %if.else10.i ], [ %14, %more_rbsp_data.exit.loopexit ]
  ret i32 %retval.1.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @GetBits(ptr nocapture noundef readonly %buffer, i32 noundef %totbitoffset, ptr nocapture noundef writeonly %info, i32 noundef %bitcount, i32 noundef %numbits) local_unnamed_addr #4 {
entry:
  %add = add nsw i32 %numbits, %totbitoffset
  %cmp = icmp sgt i32 %add, %bitcount
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %tobool.not16 = icmp eq i32 %numbits, 0
  br i1 %tobool.not16, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %if.else
  %shr = ashr i32 %totbitoffset, 3
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds i8, ptr %buffer, i64 %idxprom
  %and = and i32 %totbitoffset, 7
  %sub = xor i32 %and, 7
  %xtraiter = and i32 %numbits, 1
  %0 = icmp eq i32 %numbits, 1
  br i1 %0, label %while.end.loopexit.unr-lcssa, label %while.body.preheader.new

while.body.preheader.new:                         ; preds = %while.body.preheader
  %unroll_iter = and i32 %numbits, -2
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.preheader.new
  %inf.020 = phi i32 [ 0, %while.body.preheader.new ], [ %or.1, %while.body ]
  %curbyte.019 = phi ptr [ %arrayidx, %while.body.preheader.new ], [ %spec.select15.1, %while.body ]
  %bitoffset.017 = phi i32 [ %sub, %while.body.preheader.new ], [ %spec.select.1, %while.body ]
  %niter = phi i32 [ 0, %while.body.preheader.new ], [ %niter.next.1, %while.body ]
  %1 = load i8, ptr %curbyte.019, align 1
  %conv = zext i8 %1 to i32
  %dec1 = add nsw i32 %bitoffset.017, -1
  %shr2 = lshr i32 %conv, %bitoffset.017
  %cmp4 = icmp eq i32 %bitoffset.017, 0
  %spec.select = select i1 %cmp4, i32 7, i32 %dec1
  %spec.select15.idx = zext i1 %cmp4 to i64
  %spec.select15 = getelementptr inbounds i8, ptr %curbyte.019, i64 %spec.select15.idx
  %2 = shl i32 %inf.020, 2
  %and3 = shl nuw nsw i32 %shr2, 1
  %3 = and i32 %and3, 2
  %shl.1 = or disjoint i32 %2, %3
  %4 = load i8, ptr %spec.select15, align 1
  %conv.1 = zext i8 %4 to i32
  %dec1.1 = add nsw i32 %spec.select, -1
  %shr2.1 = lshr i32 %conv.1, %spec.select
  %and3.1 = and i32 %shr2.1, 1
  %or.1 = or disjoint i32 %and3.1, %shl.1
  %cmp4.1 = icmp eq i32 %spec.select, 0
  %spec.select.1 = select i1 %cmp4.1, i32 7, i32 %dec1.1
  %spec.select15.idx.1 = zext i1 %cmp4.1 to i64
  %spec.select15.1 = getelementptr inbounds i8, ptr %spec.select15, i64 %spec.select15.idx.1
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %while.end.loopexit.unr-lcssa.loopexit, label %while.body

while.end.loopexit.unr-lcssa.loopexit:            ; preds = %while.body
  %5 = shl i32 %or.1, 1
  br label %while.end.loopexit.unr-lcssa

while.end.loopexit.unr-lcssa:                     ; preds = %while.end.loopexit.unr-lcssa.loopexit, %while.body.preheader
  %or.lcssa.ph = phi i32 [ poison, %while.body.preheader ], [ %or.1, %while.end.loopexit.unr-lcssa.loopexit ]
  %inf.020.unr = phi i32 [ 0, %while.body.preheader ], [ %5, %while.end.loopexit.unr-lcssa.loopexit ]
  %curbyte.019.unr = phi ptr [ %arrayidx, %while.body.preheader ], [ %spec.select15.1, %while.end.loopexit.unr-lcssa.loopexit ]
  %bitoffset.017.unr = phi i32 [ %sub, %while.body.preheader ], [ %spec.select.1, %while.end.loopexit.unr-lcssa.loopexit ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %while.end, label %while.body.epil

while.body.epil:                                  ; preds = %while.end.loopexit.unr-lcssa
  %6 = load i8, ptr %curbyte.019.unr, align 1
  %conv.epil = zext i8 %6 to i32
  %shr2.epil = lshr i32 %conv.epil, %bitoffset.017.unr
  %and3.epil = and i32 %shr2.epil, 1
  %or.epil = or disjoint i32 %and3.epil, %inf.020.unr
  br label %while.end

while.end:                                        ; preds = %while.body.epil, %while.end.loopexit.unr-lcssa, %if.else
  %inf.0.lcssa = phi i32 [ 0, %if.else ], [ %or.lcssa.ph, %while.end.loopexit.unr-lcssa ], [ %or.epil, %while.body.epil ]
  store i32 %inf.0.lcssa, ptr %info, align 4
  br label %return

return:                                           ; preds = %entry, %while.end
  %retval.0 = phi i32 [ %numbits, %while.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @readSyntaxElement_NumCoeffTrailingOnes(ptr nocapture noundef %sym, ptr nocapture noundef %currStream, ptr nocapture noundef readnone %type) local_unnamed_addr #0 {
entry:
  %frame_bitoffset1 = getelementptr inbounds i8, ptr %currStream, i64 8
  %0 = load i32, ptr %frame_bitoffset1, align 8
  %streamBuffer = getelementptr inbounds i8, ptr %currStream, i64 16
  %1 = load ptr, ptr %streamBuffer, align 8
  %value1 = getelementptr inbounds i8, ptr %sym, i64 4
  %2 = load i32, ptr %value1, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.else12

if.then:                                          ; preds = %entry
  %bitstream_length = getelementptr inbounds i8, ptr %currStream, i64 12
  %3 = load i32, ptr %bitstream_length, align 4
  %shl = shl i32 %3, 3
  %add.i = add nsw i32 %0, 6
  %4 = or disjoint i32 %shl, 1
  %cmp.i = icmp sgt i32 %0, %4
  br i1 %cmp.i, label %ShowBits.exit.thread, label %if.else.i

ShowBits.exit.thread:                             ; preds = %if.then
  store i32 %add.i, ptr %frame_bitoffset1, align 8
  %value249 = getelementptr inbounds i8, ptr %sym, i64 8
  store i32 3, ptr %value249, align 8
  br label %if.else

if.else.i:                                        ; preds = %if.then
  %shr.i = ashr i32 %0, 3
  %idxprom.i = sext i32 %shr.i to i64
  %arrayidx.i = getelementptr inbounds i8, ptr %1, i64 %idxprom.i
  %and.i = and i32 %0, 7
  %sub.i = xor i32 %and.i, 7
  %5 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %5 to i32
  %dec1.i = sub nsw i32 6, %and.i
  %shr2.i = lshr i32 %conv.i, %sub.i
  %cmp4.i = icmp eq i32 %and.i, 7
  %spec.select.i = select i1 %cmp4.i, i32 7, i32 %dec1.i
  %spec.select14.idx.i = zext i1 %cmp4.i to i64
  %spec.select14.i = getelementptr inbounds i8, ptr %arrayidx.i, i64 %spec.select14.idx.i
  %and3.i = shl nuw nsw i32 %shr2.i, 1
  %shl.i.1 = and i32 %and3.i, 2
  %6 = load i8, ptr %spec.select14.i, align 1
  %conv.i.1 = zext i8 %6 to i32
  %dec1.i.1 = add nsw i32 %spec.select.i, -1
  %shr2.i.1 = lshr i32 %conv.i.1, %spec.select.i
  %and3.i.1 = and i32 %shr2.i.1, 1
  %or.i.1 = or disjoint i32 %and3.i.1, %shl.i.1
  %cmp4.i.1 = icmp eq i32 %spec.select.i, 0
  %spec.select.i.1 = select i1 %cmp4.i.1, i32 7, i32 %dec1.i.1
  %spec.select14.idx.i.1 = zext i1 %cmp4.i.1 to i64
  %spec.select14.i.1 = getelementptr inbounds i8, ptr %spec.select14.i, i64 %spec.select14.idx.i.1
  %7 = load i8, ptr %spec.select14.i.1, align 1
  %conv.i.2 = zext i8 %7 to i32
  %dec1.i.2 = add nsw i32 %spec.select.i.1, -1
  %shr2.i.2 = lshr i32 %conv.i.2, %spec.select.i.1
  %cmp4.i.2 = icmp eq i32 %spec.select.i.1, 0
  %spec.select.i.2 = select i1 %cmp4.i.2, i32 7, i32 %dec1.i.2
  %spec.select14.idx.i.2 = zext i1 %cmp4.i.2 to i64
  %spec.select14.i.2 = getelementptr inbounds i8, ptr %spec.select14.i.1, i64 %spec.select14.idx.i.2
  %8 = shl nuw nsw i32 %or.i.1, 2
  %and3.i.2 = shl nuw nsw i32 %shr2.i.2, 1
  %9 = and i32 %and3.i.2, 2
  %shl.i.3 = or disjoint i32 %8, %9
  %10 = load i8, ptr %spec.select14.i.2, align 1
  %conv.i.3 = zext i8 %10 to i32
  %dec1.i.3 = add nsw i32 %spec.select.i.2, -1
  %shr2.i.3 = lshr i32 %conv.i.3, %spec.select.i.2
  %and3.i.3 = and i32 %shr2.i.3, 1
  %or.i.3 = or disjoint i32 %and3.i.3, %shl.i.3
  %cmp4.i.3 = icmp eq i32 %spec.select.i.2, 0
  %spec.select.i.3 = select i1 %cmp4.i.3, i32 7, i32 %dec1.i.3
  %spec.select14.idx.i.3 = zext i1 %cmp4.i.3 to i64
  %spec.select14.i.3 = getelementptr inbounds i8, ptr %spec.select14.i.2, i64 %spec.select14.idx.i.3
  %11 = load i8, ptr %spec.select14.i.3, align 1
  %conv.i.4 = zext i8 %11 to i32
  %dec1.i.4 = add nsw i32 %spec.select.i.3, -1
  %shr2.i.4 = lshr i32 %conv.i.4, %spec.select.i.3
  %cmp4.i.4 = icmp eq i32 %spec.select.i.3, 0
  %spec.select.i.4 = select i1 %cmp4.i.4, i32 7, i32 %dec1.i.4
  %spec.select14.idx.i.4 = zext i1 %cmp4.i.4 to i64
  %spec.select14.i.4 = getelementptr inbounds i8, ptr %spec.select14.i.3, i64 %spec.select14.idx.i.4
  %and3.i.4 = shl nuw nsw i32 %shr2.i.4, 1
  %12 = and i32 %and3.i.4, 2
  %13 = load i8, ptr %spec.select14.i.4, align 1
  %conv.i.5 = zext i8 %13 to i32
  %shr2.i.5 = lshr i32 %conv.i.5, %spec.select.i.4
  %and3.i.5 = and i32 %shr2.i.5, 1
  %or.i.5 = or disjoint i32 %and3.i.5, %12
  store i32 %add.i, ptr %frame_bitoffset1, align 8
  %value2 = getelementptr inbounds i8, ptr %sym, i64 8
  store i32 %or.i.5, ptr %value2, align 8
  store i32 %or.i.3, ptr %value1, align 4
  %tobool.not = icmp eq i32 %or.i.3, 0
  %cmp8 = icmp eq i32 %or.i.5, 3
  %or.cond = and i1 %tobool.not, %cmp8
  br i1 %or.cond, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.else.i
  store i32 0, ptr %value2, align 8
  br label %if.end

if.else:                                          ; preds = %ShowBits.exit.thread, %if.else.i
  %shr52 = phi i32 [ -1, %ShowBits.exit.thread ], [ %or.i.3, %if.else.i ]
  %inc = add nsw i32 %shr52, 1
  store i32 %inc, ptr %value1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then9
  %len = getelementptr inbounds i8, ptr %sym, i64 12
  store i32 6, ptr %len, align 4
  br label %if.end23

if.else12:                                        ; preds = %entry
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x [4 x [17 x i8]]], ptr @readSyntaxElement_NumCoeffTrailingOnes.lentab, i64 0, i64 %idxprom
  %arrayidx15 = getelementptr inbounds [3 x [4 x [17 x i8]]], ptr @readSyntaxElement_NumCoeffTrailingOnes.codtab, i64 0, i64 %idxprom
  %shr.i39 = ashr i32 %0, 3
  %idxprom.i40 = sext i32 %shr.i39 to i64
  %arrayidx3.i = getelementptr inbounds i8, ptr %1, i64 %idxprom.i40
  %14 = load i8, ptr %arrayidx3.i, align 1
  %conv.i41 = zext i8 %14 to i32
  %shl.i42 = shl nuw nsw i32 %conv.i41, 16
  %add.ptr.i = getelementptr inbounds i8, ptr %arrayidx3.i, i64 1
  %15 = load i8, ptr %add.ptr.i, align 1
  %conv4.i = zext i8 %15 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 8
  %add.i43 = or disjoint i32 %shl5.i, %shl.i42
  %add.ptr6.i = getelementptr inbounds i8, ptr %arrayidx3.i, i64 2
  %16 = load i8, ptr %add.ptr6.i, align 1
  %conv7.i = zext i8 %16 to i32
  %add8.i = or disjoint i32 %add.i43, %conv7.i
  %and.i44 = and i32 %0, 7
  %shl9.i = shl nuw nsw i32 %add8.i, %and.i44
  %and10.i = and i32 %shl9.i, 16777215
  br label %for.cond12.preheader.us.i

for.cond12.preheader.us.i:                        ; preds = %if.then.us.i.16, %if.else12
  %cod.069.us.i = phi ptr [ %scevgep79.i, %if.then.us.i.16 ], [ %arrayidx15, %if.else12 ]
  %len.068.us.i = phi ptr [ %scevgep.i, %if.then.us.i.16 ], [ %arrayidx, %if.else12 ]
  %j.067.us.i = phi i32 [ %inc30.us.i, %if.then.us.i.16 ], [ 0, %if.else12 ]
  %scevgep.i = getelementptr i8, ptr %len.068.us.i, i64 17
  %scevgep79.i = getelementptr i8, ptr %cod.069.us.i, i64 17
  %17 = load i8, ptr %len.068.us.i, align 1
  %cmp17.us.i = icmp eq i8 %17, 0
  br i1 %cmp17.us.i, label %if.then.us.i, label %lor.lhs.false.us.i

lor.lhs.false.us.i:                               ; preds = %for.cond12.preheader.us.i
  %conv16.us.i = zext i8 %17 to i32
  %sub.i.us.i = sub nsw i32 24, %conv16.us.i
  %shr.i.us.i = lshr i32 %and10.i, %sub.i.us.i
  %18 = load i8, ptr %cod.069.us.i, align 1
  %conv20.us.i = zext i8 %18 to i32
  %cmp21.not.us.i = icmp eq i32 %shr.i.us.i, %conv20.us.i
  br i1 %cmp21.not.us.i, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i

if.then.us.i:                                     ; preds = %lor.lhs.false.us.i, %for.cond12.preheader.us.i
  %incdec.ptr.us.i = getelementptr inbounds i8, ptr %len.068.us.i, i64 1
  %19 = load i8, ptr %incdec.ptr.us.i, align 1
  %cmp17.us.i.1 = icmp eq i8 %19, 0
  br i1 %cmp17.us.i.1, label %if.then.us.i.1, label %lor.lhs.false.us.i.1

lor.lhs.false.us.i.1:                             ; preds = %if.then.us.i
  %incdec.ptr23.us.i = getelementptr inbounds i8, ptr %cod.069.us.i, i64 1
  %conv16.us.i.1 = zext i8 %19 to i32
  %sub.i.us.i.1 = sub nsw i32 24, %conv16.us.i.1
  %shr.i.us.i.1 = lshr i32 %and10.i, %sub.i.us.i.1
  %20 = load i8, ptr %incdec.ptr23.us.i, align 1
  %conv20.us.i.1 = zext i8 %20 to i32
  %cmp21.not.us.i.1 = icmp eq i32 %shr.i.us.i.1, %conv20.us.i.1
  br i1 %cmp21.not.us.i.1, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.1

if.then.us.i.1:                                   ; preds = %lor.lhs.false.us.i.1, %if.then.us.i
  %incdec.ptr.us.i.1 = getelementptr inbounds i8, ptr %len.068.us.i, i64 2
  %21 = load i8, ptr %incdec.ptr.us.i.1, align 1
  %cmp17.us.i.2 = icmp eq i8 %21, 0
  br i1 %cmp17.us.i.2, label %if.then.us.i.2, label %lor.lhs.false.us.i.2

lor.lhs.false.us.i.2:                             ; preds = %if.then.us.i.1
  %incdec.ptr23.us.i.1 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 2
  %conv16.us.i.2 = zext i8 %21 to i32
  %sub.i.us.i.2 = sub nsw i32 24, %conv16.us.i.2
  %shr.i.us.i.2 = lshr i32 %and10.i, %sub.i.us.i.2
  %22 = load i8, ptr %incdec.ptr23.us.i.1, align 1
  %conv20.us.i.2 = zext i8 %22 to i32
  %cmp21.not.us.i.2 = icmp eq i32 %shr.i.us.i.2, %conv20.us.i.2
  br i1 %cmp21.not.us.i.2, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.2

if.then.us.i.2:                                   ; preds = %lor.lhs.false.us.i.2, %if.then.us.i.1
  %incdec.ptr.us.i.2 = getelementptr inbounds i8, ptr %len.068.us.i, i64 3
  %23 = load i8, ptr %incdec.ptr.us.i.2, align 1
  %cmp17.us.i.3 = icmp eq i8 %23, 0
  br i1 %cmp17.us.i.3, label %if.then.us.i.3, label %lor.lhs.false.us.i.3

lor.lhs.false.us.i.3:                             ; preds = %if.then.us.i.2
  %incdec.ptr23.us.i.2 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 3
  %conv16.us.i.3 = zext i8 %23 to i32
  %sub.i.us.i.3 = sub nsw i32 24, %conv16.us.i.3
  %shr.i.us.i.3 = lshr i32 %and10.i, %sub.i.us.i.3
  %24 = load i8, ptr %incdec.ptr23.us.i.2, align 1
  %conv20.us.i.3 = zext i8 %24 to i32
  %cmp21.not.us.i.3 = icmp eq i32 %shr.i.us.i.3, %conv20.us.i.3
  br i1 %cmp21.not.us.i.3, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.3

if.then.us.i.3:                                   ; preds = %lor.lhs.false.us.i.3, %if.then.us.i.2
  %incdec.ptr.us.i.3 = getelementptr inbounds i8, ptr %len.068.us.i, i64 4
  %25 = load i8, ptr %incdec.ptr.us.i.3, align 1
  %cmp17.us.i.4 = icmp eq i8 %25, 0
  br i1 %cmp17.us.i.4, label %if.then.us.i.4, label %lor.lhs.false.us.i.4

lor.lhs.false.us.i.4:                             ; preds = %if.then.us.i.3
  %incdec.ptr23.us.i.3 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 4
  %conv16.us.i.4 = zext i8 %25 to i32
  %sub.i.us.i.4 = sub nsw i32 24, %conv16.us.i.4
  %shr.i.us.i.4 = lshr i32 %and10.i, %sub.i.us.i.4
  %26 = load i8, ptr %incdec.ptr23.us.i.3, align 1
  %conv20.us.i.4 = zext i8 %26 to i32
  %cmp21.not.us.i.4 = icmp eq i32 %shr.i.us.i.4, %conv20.us.i.4
  br i1 %cmp21.not.us.i.4, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.4

if.then.us.i.4:                                   ; preds = %lor.lhs.false.us.i.4, %if.then.us.i.3
  %incdec.ptr.us.i.4 = getelementptr inbounds i8, ptr %len.068.us.i, i64 5
  %27 = load i8, ptr %incdec.ptr.us.i.4, align 1
  %cmp17.us.i.5 = icmp eq i8 %27, 0
  br i1 %cmp17.us.i.5, label %if.then.us.i.5, label %lor.lhs.false.us.i.5

lor.lhs.false.us.i.5:                             ; preds = %if.then.us.i.4
  %incdec.ptr23.us.i.4 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 5
  %conv16.us.i.5 = zext i8 %27 to i32
  %sub.i.us.i.5 = sub nsw i32 24, %conv16.us.i.5
  %shr.i.us.i.5 = lshr i32 %and10.i, %sub.i.us.i.5
  %28 = load i8, ptr %incdec.ptr23.us.i.4, align 1
  %conv20.us.i.5 = zext i8 %28 to i32
  %cmp21.not.us.i.5 = icmp eq i32 %shr.i.us.i.5, %conv20.us.i.5
  br i1 %cmp21.not.us.i.5, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.5

if.then.us.i.5:                                   ; preds = %lor.lhs.false.us.i.5, %if.then.us.i.4
  %incdec.ptr.us.i.5 = getelementptr inbounds i8, ptr %len.068.us.i, i64 6
  %29 = load i8, ptr %incdec.ptr.us.i.5, align 1
  %cmp17.us.i.6 = icmp eq i8 %29, 0
  br i1 %cmp17.us.i.6, label %if.then.us.i.6, label %lor.lhs.false.us.i.6

lor.lhs.false.us.i.6:                             ; preds = %if.then.us.i.5
  %incdec.ptr23.us.i.5 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 6
  %conv16.us.i.6 = zext i8 %29 to i32
  %sub.i.us.i.6 = sub nsw i32 24, %conv16.us.i.6
  %shr.i.us.i.6 = lshr i32 %and10.i, %sub.i.us.i.6
  %30 = load i8, ptr %incdec.ptr23.us.i.5, align 1
  %conv20.us.i.6 = zext i8 %30 to i32
  %cmp21.not.us.i.6 = icmp eq i32 %shr.i.us.i.6, %conv20.us.i.6
  br i1 %cmp21.not.us.i.6, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.6

if.then.us.i.6:                                   ; preds = %lor.lhs.false.us.i.6, %if.then.us.i.5
  %incdec.ptr.us.i.6 = getelementptr inbounds i8, ptr %len.068.us.i, i64 7
  %31 = load i8, ptr %incdec.ptr.us.i.6, align 1
  %cmp17.us.i.7 = icmp eq i8 %31, 0
  br i1 %cmp17.us.i.7, label %if.then.us.i.7, label %lor.lhs.false.us.i.7

lor.lhs.false.us.i.7:                             ; preds = %if.then.us.i.6
  %incdec.ptr23.us.i.6 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 7
  %conv16.us.i.7 = zext i8 %31 to i32
  %sub.i.us.i.7 = sub nsw i32 24, %conv16.us.i.7
  %shr.i.us.i.7 = lshr i32 %and10.i, %sub.i.us.i.7
  %32 = load i8, ptr %incdec.ptr23.us.i.6, align 1
  %conv20.us.i.7 = zext i8 %32 to i32
  %cmp21.not.us.i.7 = icmp eq i32 %shr.i.us.i.7, %conv20.us.i.7
  br i1 %cmp21.not.us.i.7, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.7

if.then.us.i.7:                                   ; preds = %lor.lhs.false.us.i.7, %if.then.us.i.6
  %incdec.ptr.us.i.7 = getelementptr inbounds i8, ptr %len.068.us.i, i64 8
  %33 = load i8, ptr %incdec.ptr.us.i.7, align 1
  %cmp17.us.i.8 = icmp eq i8 %33, 0
  br i1 %cmp17.us.i.8, label %if.then.us.i.8, label %lor.lhs.false.us.i.8

lor.lhs.false.us.i.8:                             ; preds = %if.then.us.i.7
  %incdec.ptr23.us.i.7 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 8
  %conv16.us.i.8 = zext i8 %33 to i32
  %sub.i.us.i.8 = sub nsw i32 24, %conv16.us.i.8
  %shr.i.us.i.8 = lshr i32 %and10.i, %sub.i.us.i.8
  %34 = load i8, ptr %incdec.ptr23.us.i.7, align 1
  %conv20.us.i.8 = zext i8 %34 to i32
  %cmp21.not.us.i.8 = icmp eq i32 %shr.i.us.i.8, %conv20.us.i.8
  br i1 %cmp21.not.us.i.8, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.8

if.then.us.i.8:                                   ; preds = %lor.lhs.false.us.i.8, %if.then.us.i.7
  %incdec.ptr.us.i.8 = getelementptr inbounds i8, ptr %len.068.us.i, i64 9
  %35 = load i8, ptr %incdec.ptr.us.i.8, align 1
  %cmp17.us.i.9 = icmp eq i8 %35, 0
  br i1 %cmp17.us.i.9, label %if.then.us.i.9, label %lor.lhs.false.us.i.9

lor.lhs.false.us.i.9:                             ; preds = %if.then.us.i.8
  %incdec.ptr23.us.i.8 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 9
  %conv16.us.i.9 = zext i8 %35 to i32
  %sub.i.us.i.9 = sub nsw i32 24, %conv16.us.i.9
  %shr.i.us.i.9 = lshr i32 %and10.i, %sub.i.us.i.9
  %36 = load i8, ptr %incdec.ptr23.us.i.8, align 1
  %conv20.us.i.9 = zext i8 %36 to i32
  %cmp21.not.us.i.9 = icmp eq i32 %shr.i.us.i.9, %conv20.us.i.9
  br i1 %cmp21.not.us.i.9, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.9

if.then.us.i.9:                                   ; preds = %lor.lhs.false.us.i.9, %if.then.us.i.8
  %incdec.ptr.us.i.9 = getelementptr inbounds i8, ptr %len.068.us.i, i64 10
  %37 = load i8, ptr %incdec.ptr.us.i.9, align 1
  %cmp17.us.i.10 = icmp eq i8 %37, 0
  br i1 %cmp17.us.i.10, label %if.then.us.i.10, label %lor.lhs.false.us.i.10

lor.lhs.false.us.i.10:                            ; preds = %if.then.us.i.9
  %incdec.ptr23.us.i.9 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 10
  %conv16.us.i.10 = zext i8 %37 to i32
  %sub.i.us.i.10 = sub nsw i32 24, %conv16.us.i.10
  %shr.i.us.i.10 = lshr i32 %and10.i, %sub.i.us.i.10
  %38 = load i8, ptr %incdec.ptr23.us.i.9, align 1
  %conv20.us.i.10 = zext i8 %38 to i32
  %cmp21.not.us.i.10 = icmp eq i32 %shr.i.us.i.10, %conv20.us.i.10
  br i1 %cmp21.not.us.i.10, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.10

if.then.us.i.10:                                  ; preds = %lor.lhs.false.us.i.10, %if.then.us.i.9
  %incdec.ptr.us.i.10 = getelementptr inbounds i8, ptr %len.068.us.i, i64 11
  %39 = load i8, ptr %incdec.ptr.us.i.10, align 1
  %cmp17.us.i.11 = icmp eq i8 %39, 0
  br i1 %cmp17.us.i.11, label %if.then.us.i.11, label %lor.lhs.false.us.i.11

lor.lhs.false.us.i.11:                            ; preds = %if.then.us.i.10
  %incdec.ptr23.us.i.10 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 11
  %conv16.us.i.11 = zext i8 %39 to i32
  %sub.i.us.i.11 = sub nsw i32 24, %conv16.us.i.11
  %shr.i.us.i.11 = lshr i32 %and10.i, %sub.i.us.i.11
  %40 = load i8, ptr %incdec.ptr23.us.i.10, align 1
  %conv20.us.i.11 = zext i8 %40 to i32
  %cmp21.not.us.i.11 = icmp eq i32 %shr.i.us.i.11, %conv20.us.i.11
  br i1 %cmp21.not.us.i.11, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.11

if.then.us.i.11:                                  ; preds = %lor.lhs.false.us.i.11, %if.then.us.i.10
  %incdec.ptr.us.i.11 = getelementptr inbounds i8, ptr %len.068.us.i, i64 12
  %41 = load i8, ptr %incdec.ptr.us.i.11, align 1
  %cmp17.us.i.12 = icmp eq i8 %41, 0
  br i1 %cmp17.us.i.12, label %if.then.us.i.12, label %lor.lhs.false.us.i.12

lor.lhs.false.us.i.12:                            ; preds = %if.then.us.i.11
  %incdec.ptr23.us.i.11 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 12
  %conv16.us.i.12 = zext i8 %41 to i32
  %sub.i.us.i.12 = sub nsw i32 24, %conv16.us.i.12
  %shr.i.us.i.12 = lshr i32 %and10.i, %sub.i.us.i.12
  %42 = load i8, ptr %incdec.ptr23.us.i.11, align 1
  %conv20.us.i.12 = zext i8 %42 to i32
  %cmp21.not.us.i.12 = icmp eq i32 %shr.i.us.i.12, %conv20.us.i.12
  br i1 %cmp21.not.us.i.12, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.12

if.then.us.i.12:                                  ; preds = %lor.lhs.false.us.i.12, %if.then.us.i.11
  %incdec.ptr.us.i.12 = getelementptr inbounds i8, ptr %len.068.us.i, i64 13
  %43 = load i8, ptr %incdec.ptr.us.i.12, align 1
  %cmp17.us.i.13 = icmp eq i8 %43, 0
  br i1 %cmp17.us.i.13, label %if.then.us.i.13, label %lor.lhs.false.us.i.13

lor.lhs.false.us.i.13:                            ; preds = %if.then.us.i.12
  %incdec.ptr23.us.i.12 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 13
  %conv16.us.i.13 = zext i8 %43 to i32
  %sub.i.us.i.13 = sub nsw i32 24, %conv16.us.i.13
  %shr.i.us.i.13 = lshr i32 %and10.i, %sub.i.us.i.13
  %44 = load i8, ptr %incdec.ptr23.us.i.12, align 1
  %conv20.us.i.13 = zext i8 %44 to i32
  %cmp21.not.us.i.13 = icmp eq i32 %shr.i.us.i.13, %conv20.us.i.13
  br i1 %cmp21.not.us.i.13, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.13

if.then.us.i.13:                                  ; preds = %lor.lhs.false.us.i.13, %if.then.us.i.12
  %incdec.ptr.us.i.13 = getelementptr inbounds i8, ptr %len.068.us.i, i64 14
  %45 = load i8, ptr %incdec.ptr.us.i.13, align 1
  %cmp17.us.i.14 = icmp eq i8 %45, 0
  br i1 %cmp17.us.i.14, label %if.then.us.i.14, label %lor.lhs.false.us.i.14

lor.lhs.false.us.i.14:                            ; preds = %if.then.us.i.13
  %incdec.ptr23.us.i.13 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 14
  %conv16.us.i.14 = zext i8 %45 to i32
  %sub.i.us.i.14 = sub nsw i32 24, %conv16.us.i.14
  %shr.i.us.i.14 = lshr i32 %and10.i, %sub.i.us.i.14
  %46 = load i8, ptr %incdec.ptr23.us.i.13, align 1
  %conv20.us.i.14 = zext i8 %46 to i32
  %cmp21.not.us.i.14 = icmp eq i32 %shr.i.us.i.14, %conv20.us.i.14
  br i1 %cmp21.not.us.i.14, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.14

if.then.us.i.14:                                  ; preds = %lor.lhs.false.us.i.14, %if.then.us.i.13
  %incdec.ptr.us.i.14 = getelementptr inbounds i8, ptr %len.068.us.i, i64 15
  %47 = load i8, ptr %incdec.ptr.us.i.14, align 1
  %cmp17.us.i.15 = icmp eq i8 %47, 0
  br i1 %cmp17.us.i.15, label %if.then.us.i.15, label %lor.lhs.false.us.i.15

lor.lhs.false.us.i.15:                            ; preds = %if.then.us.i.14
  %incdec.ptr23.us.i.14 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 15
  %conv16.us.i.15 = zext i8 %47 to i32
  %sub.i.us.i.15 = sub nsw i32 24, %conv16.us.i.15
  %shr.i.us.i.15 = lshr i32 %and10.i, %sub.i.us.i.15
  %48 = load i8, ptr %incdec.ptr23.us.i.14, align 1
  %conv20.us.i.15 = zext i8 %48 to i32
  %cmp21.not.us.i.15 = icmp eq i32 %shr.i.us.i.15, %conv20.us.i.15
  br i1 %cmp21.not.us.i.15, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.15

if.then.us.i.15:                                  ; preds = %lor.lhs.false.us.i.15, %if.then.us.i.14
  %incdec.ptr.us.i.15 = getelementptr inbounds i8, ptr %len.068.us.i, i64 16
  %49 = load i8, ptr %incdec.ptr.us.i.15, align 1
  %cmp17.us.i.16 = icmp eq i8 %49, 0
  br i1 %cmp17.us.i.16, label %if.then.us.i.16, label %lor.lhs.false.us.i.16

lor.lhs.false.us.i.16:                            ; preds = %if.then.us.i.15
  %incdec.ptr23.us.i.15 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 16
  %conv16.us.i.16 = zext i8 %49 to i32
  %sub.i.us.i.16 = sub nsw i32 24, %conv16.us.i.16
  %shr.i.us.i.16 = lshr i32 %and10.i, %sub.i.us.i.16
  %50 = load i8, ptr %incdec.ptr23.us.i.15, align 1
  %conv20.us.i.16 = zext i8 %50 to i32
  %cmp21.not.us.i.16 = icmp eq i32 %shr.i.us.i.16, %conv20.us.i.16
  br i1 %cmp21.not.us.i.16, label %code_from_bitstream_2d.exit.thread, label %if.then.us.i.16

if.then.us.i.16:                                  ; preds = %lor.lhs.false.us.i.16, %if.then.us.i.15
  %inc30.us.i = add nuw nsw i32 %j.067.us.i, 1
  %exitcond80.not.i = icmp eq i32 %inc30.us.i, 4
  br i1 %exitcond80.not.i, label %if.then20, label %for.cond12.preheader.us.i

code_from_bitstream_2d.exit.thread:               ; preds = %lor.lhs.false.us.i.16, %lor.lhs.false.us.i.15, %lor.lhs.false.us.i.14, %lor.lhs.false.us.i.13, %lor.lhs.false.us.i.12, %lor.lhs.false.us.i.11, %lor.lhs.false.us.i.10, %lor.lhs.false.us.i.9, %lor.lhs.false.us.i.8, %lor.lhs.false.us.i.7, %lor.lhs.false.us.i.6, %lor.lhs.false.us.i.5, %lor.lhs.false.us.i.4, %lor.lhs.false.us.i.3, %lor.lhs.false.us.i.2, %lor.lhs.false.us.i.1, %lor.lhs.false.us.i
  %i.064.us.i.lcssa = phi i32 [ 0, %lor.lhs.false.us.i ], [ 1, %lor.lhs.false.us.i.1 ], [ 2, %lor.lhs.false.us.i.2 ], [ 3, %lor.lhs.false.us.i.3 ], [ 4, %lor.lhs.false.us.i.4 ], [ 5, %lor.lhs.false.us.i.5 ], [ 6, %lor.lhs.false.us.i.6 ], [ 7, %lor.lhs.false.us.i.7 ], [ 8, %lor.lhs.false.us.i.8 ], [ 9, %lor.lhs.false.us.i.9 ], [ 10, %lor.lhs.false.us.i.10 ], [ 11, %lor.lhs.false.us.i.11 ], [ 12, %lor.lhs.false.us.i.12 ], [ 13, %lor.lhs.false.us.i.13 ], [ 14, %lor.lhs.false.us.i.14 ], [ 15, %lor.lhs.false.us.i.15 ], [ 16, %lor.lhs.false.us.i.16 ]
  %conv16.us.i.lcssa = phi i32 [ %conv16.us.i, %lor.lhs.false.us.i ], [ %conv16.us.i.1, %lor.lhs.false.us.i.1 ], [ %conv16.us.i.2, %lor.lhs.false.us.i.2 ], [ %conv16.us.i.3, %lor.lhs.false.us.i.3 ], [ %conv16.us.i.4, %lor.lhs.false.us.i.4 ], [ %conv16.us.i.5, %lor.lhs.false.us.i.5 ], [ %conv16.us.i.6, %lor.lhs.false.us.i.6 ], [ %conv16.us.i.7, %lor.lhs.false.us.i.7 ], [ %conv16.us.i.8, %lor.lhs.false.us.i.8 ], [ %conv16.us.i.9, %lor.lhs.false.us.i.9 ], [ %conv16.us.i.10, %lor.lhs.false.us.i.10 ], [ %conv16.us.i.11, %lor.lhs.false.us.i.11 ], [ %conv16.us.i.12, %lor.lhs.false.us.i.12 ], [ %conv16.us.i.13, %lor.lhs.false.us.i.13 ], [ %conv16.us.i.14, %lor.lhs.false.us.i.14 ], [ %conv16.us.i.15, %lor.lhs.false.us.i.15 ], [ %conv16.us.i.16, %lor.lhs.false.us.i.16 ]
  %len25.i = getelementptr inbounds i8, ptr %sym, i64 12
  store i32 %conv16.us.i.lcssa, ptr %len25.i, align 4
  %51 = load i32, ptr %frame_bitoffset1, align 4
  %add27.i = add nsw i32 %51, %conv16.us.i.lcssa
  store i32 %add27.i, ptr %frame_bitoffset1, align 4
  store i32 %i.064.us.i.lcssa, ptr %value1, align 4
  %value2.i = getelementptr inbounds i8, ptr %sym, i64 8
  store i32 %j.067.us.i, ptr %value2.i, align 8
  br label %if.end23

if.then20:                                        ; preds = %if.then.us.i.16
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef -1) #14
  unreachable

if.end23:                                         ; preds = %code_from_bitstream_2d.exit.thread, %if.end
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ShowBits(ptr nocapture noundef readonly %buffer, i32 noundef %totbitoffset, i32 noundef %bitcount, i32 noundef %numbits) local_unnamed_addr #9 {
entry:
  %add = add nsw i32 %numbits, %totbitoffset
  %cmp = icmp sgt i32 %add, %bitcount
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %tobool.not15 = icmp eq i32 %numbits, 0
  br i1 %tobool.not15, label %return, label %while.body.preheader

while.body.preheader:                             ; preds = %if.else
  %shr = ashr i32 %totbitoffset, 3
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds i8, ptr %buffer, i64 %idxprom
  %and = and i32 %totbitoffset, 7
  %sub = xor i32 %and, 7
  %xtraiter = and i32 %numbits, 1
  %0 = icmp eq i32 %numbits, 1
  br i1 %0, label %return.loopexit.unr-lcssa, label %while.body.preheader.new

while.body.preheader.new:                         ; preds = %while.body.preheader
  %unroll_iter = and i32 %numbits, -2
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.preheader.new
  %inf.019 = phi i32 [ 0, %while.body.preheader.new ], [ %or.1, %while.body ]
  %curbyte.018 = phi ptr [ %arrayidx, %while.body.preheader.new ], [ %spec.select14.1, %while.body ]
  %bitoffset.017 = phi i32 [ %sub, %while.body.preheader.new ], [ %spec.select.1, %while.body ]
  %niter = phi i32 [ 0, %while.body.preheader.new ], [ %niter.next.1, %while.body ]
  %1 = load i8, ptr %curbyte.018, align 1
  %conv = zext i8 %1 to i32
  %dec1 = add nsw i32 %bitoffset.017, -1
  %shr2 = lshr i32 %conv, %bitoffset.017
  %cmp4 = icmp eq i32 %bitoffset.017, 0
  %spec.select = select i1 %cmp4, i32 7, i32 %dec1
  %spec.select14.idx = zext i1 %cmp4 to i64
  %spec.select14 = getelementptr inbounds i8, ptr %curbyte.018, i64 %spec.select14.idx
  %2 = shl i32 %inf.019, 2
  %and3 = shl nuw nsw i32 %shr2, 1
  %3 = and i32 %and3, 2
  %shl.1 = or disjoint i32 %2, %3
  %4 = load i8, ptr %spec.select14, align 1
  %conv.1 = zext i8 %4 to i32
  %dec1.1 = add nsw i32 %spec.select, -1
  %shr2.1 = lshr i32 %conv.1, %spec.select
  %and3.1 = and i32 %shr2.1, 1
  %or.1 = or disjoint i32 %and3.1, %shl.1
  %cmp4.1 = icmp eq i32 %spec.select, 0
  %spec.select.1 = select i1 %cmp4.1, i32 7, i32 %dec1.1
  %spec.select14.idx.1 = zext i1 %cmp4.1 to i64
  %spec.select14.1 = getelementptr inbounds i8, ptr %spec.select14, i64 %spec.select14.idx.1
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %return.loopexit.unr-lcssa.loopexit, label %while.body

return.loopexit.unr-lcssa.loopexit:               ; preds = %while.body
  %5 = shl i32 %or.1, 1
  br label %return.loopexit.unr-lcssa

return.loopexit.unr-lcssa:                        ; preds = %return.loopexit.unr-lcssa.loopexit, %while.body.preheader
  %or.lcssa.ph = phi i32 [ poison, %while.body.preheader ], [ %or.1, %return.loopexit.unr-lcssa.loopexit ]
  %inf.019.unr = phi i32 [ 0, %while.body.preheader ], [ %5, %return.loopexit.unr-lcssa.loopexit ]
  %curbyte.018.unr = phi ptr [ %arrayidx, %while.body.preheader ], [ %spec.select14.1, %return.loopexit.unr-lcssa.loopexit ]
  %bitoffset.017.unr = phi i32 [ %sub, %while.body.preheader ], [ %spec.select.1, %return.loopexit.unr-lcssa.loopexit ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %return, label %while.body.epil

while.body.epil:                                  ; preds = %return.loopexit.unr-lcssa
  %6 = load i8, ptr %curbyte.018.unr, align 1
  %conv.epil = zext i8 %6 to i32
  %shr2.epil = lshr i32 %conv.epil, %bitoffset.017.unr
  %and3.epil = and i32 %shr2.epil, 1
  %or.epil = or disjoint i32 %and3.epil, %inf.019.unr
  br label %return

return:                                           ; preds = %while.body.epil, %return.loopexit.unr-lcssa, %if.else, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %if.else ], [ %or.lcssa.ph, %return.loopexit.unr-lcssa ], [ %or.epil, %while.body.epil ]
  ret i32 %retval.0
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @readSyntaxElement_NumCoeffTrailingOnesChromaDC(ptr nocapture noundef readonly %p_Vid, ptr nocapture noundef writeonly %sym, ptr nocapture noundef %currStream) local_unnamed_addr #0 {
entry:
  %active_sps = getelementptr inbounds i8, ptr %p_Vid, i64 16
  %0 = load ptr, ptr %active_sps, align 8
  %chroma_format_idc = getelementptr inbounds i8, ptr %0, i64 36
  %1 = load i32, ptr %chroma_format_idc, align 4
  %sub = add i32 %1, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [3 x [4 x [17 x i8]]], ptr @readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab, i64 0, i64 %idxprom
  %arrayidx5 = getelementptr inbounds [3 x [4 x [17 x i8]]], ptr @readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab, i64 0, i64 %idxprom
  %frame_bitoffset2.i = getelementptr inbounds i8, ptr %currStream, i64 8
  %streamBuffer.i = getelementptr inbounds i8, ptr %currStream, i64 16
  %2 = load ptr, ptr %streamBuffer.i, align 8
  %3 = load i32, ptr %frame_bitoffset2.i, align 4
  %shr.i = ashr i32 %3, 3
  %idxprom.i = sext i32 %shr.i to i64
  %arrayidx3.i = getelementptr inbounds i8, ptr %2, i64 %idxprom.i
  %4 = load i8, ptr %arrayidx3.i, align 1
  %conv.i = zext i8 %4 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %add.ptr.i = getelementptr inbounds i8, ptr %arrayidx3.i, i64 1
  %5 = load i8, ptr %add.ptr.i, align 1
  %conv4.i = zext i8 %5 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 8
  %add.i = or disjoint i32 %shl5.i, %shl.i
  %add.ptr6.i = getelementptr inbounds i8, ptr %arrayidx3.i, i64 2
  %6 = load i8, ptr %add.ptr6.i, align 1
  %conv7.i = zext i8 %6 to i32
  %add8.i = or disjoint i32 %add.i, %conv7.i
  %and.i = and i32 %3, 7
  %shl9.i = shl nuw nsw i32 %add8.i, %and.i
  %and10.i = and i32 %shl9.i, 16777215
  br label %for.cond12.preheader.us.i

for.cond12.preheader.us.i:                        ; preds = %if.then.us.i.16, %entry
  %cod.069.us.i = phi ptr [ %scevgep79.i, %if.then.us.i.16 ], [ %arrayidx5, %entry ]
  %len.068.us.i = phi ptr [ %scevgep.i, %if.then.us.i.16 ], [ %arrayidx, %entry ]
  %j.067.us.i = phi i32 [ %inc30.us.i, %if.then.us.i.16 ], [ 0, %entry ]
  %scevgep.i = getelementptr i8, ptr %len.068.us.i, i64 17
  %scevgep79.i = getelementptr i8, ptr %cod.069.us.i, i64 17
  %7 = load i8, ptr %len.068.us.i, align 1
  %cmp17.us.i = icmp eq i8 %7, 0
  br i1 %cmp17.us.i, label %if.then.us.i, label %lor.lhs.false.us.i

lor.lhs.false.us.i:                               ; preds = %for.cond12.preheader.us.i
  %conv16.us.i = zext i8 %7 to i32
  %sub.i.us.i = sub nsw i32 24, %conv16.us.i
  %shr.i.us.i = lshr i32 %and10.i, %sub.i.us.i
  %8 = load i8, ptr %cod.069.us.i, align 1
  %conv20.us.i = zext i8 %8 to i32
  %cmp21.not.us.i = icmp eq i32 %shr.i.us.i, %conv20.us.i
  br i1 %cmp21.not.us.i, label %if.end, label %if.then.us.i

if.then.us.i:                                     ; preds = %lor.lhs.false.us.i, %for.cond12.preheader.us.i
  %incdec.ptr.us.i = getelementptr inbounds i8, ptr %len.068.us.i, i64 1
  %9 = load i8, ptr %incdec.ptr.us.i, align 1
  %cmp17.us.i.1 = icmp eq i8 %9, 0
  br i1 %cmp17.us.i.1, label %if.then.us.i.1, label %lor.lhs.false.us.i.1

lor.lhs.false.us.i.1:                             ; preds = %if.then.us.i
  %incdec.ptr23.us.i = getelementptr inbounds i8, ptr %cod.069.us.i, i64 1
  %conv16.us.i.1 = zext i8 %9 to i32
  %sub.i.us.i.1 = sub nsw i32 24, %conv16.us.i.1
  %shr.i.us.i.1 = lshr i32 %and10.i, %sub.i.us.i.1
  %10 = load i8, ptr %incdec.ptr23.us.i, align 1
  %conv20.us.i.1 = zext i8 %10 to i32
  %cmp21.not.us.i.1 = icmp eq i32 %shr.i.us.i.1, %conv20.us.i.1
  br i1 %cmp21.not.us.i.1, label %if.end, label %if.then.us.i.1

if.then.us.i.1:                                   ; preds = %lor.lhs.false.us.i.1, %if.then.us.i
  %incdec.ptr.us.i.1 = getelementptr inbounds i8, ptr %len.068.us.i, i64 2
  %11 = load i8, ptr %incdec.ptr.us.i.1, align 1
  %cmp17.us.i.2 = icmp eq i8 %11, 0
  br i1 %cmp17.us.i.2, label %if.then.us.i.2, label %lor.lhs.false.us.i.2

lor.lhs.false.us.i.2:                             ; preds = %if.then.us.i.1
  %incdec.ptr23.us.i.1 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 2
  %conv16.us.i.2 = zext i8 %11 to i32
  %sub.i.us.i.2 = sub nsw i32 24, %conv16.us.i.2
  %shr.i.us.i.2 = lshr i32 %and10.i, %sub.i.us.i.2
  %12 = load i8, ptr %incdec.ptr23.us.i.1, align 1
  %conv20.us.i.2 = zext i8 %12 to i32
  %cmp21.not.us.i.2 = icmp eq i32 %shr.i.us.i.2, %conv20.us.i.2
  br i1 %cmp21.not.us.i.2, label %if.end, label %if.then.us.i.2

if.then.us.i.2:                                   ; preds = %lor.lhs.false.us.i.2, %if.then.us.i.1
  %incdec.ptr.us.i.2 = getelementptr inbounds i8, ptr %len.068.us.i, i64 3
  %13 = load i8, ptr %incdec.ptr.us.i.2, align 1
  %cmp17.us.i.3 = icmp eq i8 %13, 0
  br i1 %cmp17.us.i.3, label %if.then.us.i.3, label %lor.lhs.false.us.i.3

lor.lhs.false.us.i.3:                             ; preds = %if.then.us.i.2
  %incdec.ptr23.us.i.2 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 3
  %conv16.us.i.3 = zext i8 %13 to i32
  %sub.i.us.i.3 = sub nsw i32 24, %conv16.us.i.3
  %shr.i.us.i.3 = lshr i32 %and10.i, %sub.i.us.i.3
  %14 = load i8, ptr %incdec.ptr23.us.i.2, align 1
  %conv20.us.i.3 = zext i8 %14 to i32
  %cmp21.not.us.i.3 = icmp eq i32 %shr.i.us.i.3, %conv20.us.i.3
  br i1 %cmp21.not.us.i.3, label %if.end, label %if.then.us.i.3

if.then.us.i.3:                                   ; preds = %lor.lhs.false.us.i.3, %if.then.us.i.2
  %incdec.ptr.us.i.3 = getelementptr inbounds i8, ptr %len.068.us.i, i64 4
  %15 = load i8, ptr %incdec.ptr.us.i.3, align 1
  %cmp17.us.i.4 = icmp eq i8 %15, 0
  br i1 %cmp17.us.i.4, label %if.then.us.i.4, label %lor.lhs.false.us.i.4

lor.lhs.false.us.i.4:                             ; preds = %if.then.us.i.3
  %incdec.ptr23.us.i.3 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 4
  %conv16.us.i.4 = zext i8 %15 to i32
  %sub.i.us.i.4 = sub nsw i32 24, %conv16.us.i.4
  %shr.i.us.i.4 = lshr i32 %and10.i, %sub.i.us.i.4
  %16 = load i8, ptr %incdec.ptr23.us.i.3, align 1
  %conv20.us.i.4 = zext i8 %16 to i32
  %cmp21.not.us.i.4 = icmp eq i32 %shr.i.us.i.4, %conv20.us.i.4
  br i1 %cmp21.not.us.i.4, label %if.end, label %if.then.us.i.4

if.then.us.i.4:                                   ; preds = %lor.lhs.false.us.i.4, %if.then.us.i.3
  %incdec.ptr.us.i.4 = getelementptr inbounds i8, ptr %len.068.us.i, i64 5
  %17 = load i8, ptr %incdec.ptr.us.i.4, align 1
  %cmp17.us.i.5 = icmp eq i8 %17, 0
  br i1 %cmp17.us.i.5, label %if.then.us.i.5, label %lor.lhs.false.us.i.5

lor.lhs.false.us.i.5:                             ; preds = %if.then.us.i.4
  %incdec.ptr23.us.i.4 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 5
  %conv16.us.i.5 = zext i8 %17 to i32
  %sub.i.us.i.5 = sub nsw i32 24, %conv16.us.i.5
  %shr.i.us.i.5 = lshr i32 %and10.i, %sub.i.us.i.5
  %18 = load i8, ptr %incdec.ptr23.us.i.4, align 1
  %conv20.us.i.5 = zext i8 %18 to i32
  %cmp21.not.us.i.5 = icmp eq i32 %shr.i.us.i.5, %conv20.us.i.5
  br i1 %cmp21.not.us.i.5, label %if.end, label %if.then.us.i.5

if.then.us.i.5:                                   ; preds = %lor.lhs.false.us.i.5, %if.then.us.i.4
  %incdec.ptr.us.i.5 = getelementptr inbounds i8, ptr %len.068.us.i, i64 6
  %19 = load i8, ptr %incdec.ptr.us.i.5, align 1
  %cmp17.us.i.6 = icmp eq i8 %19, 0
  br i1 %cmp17.us.i.6, label %if.then.us.i.6, label %lor.lhs.false.us.i.6

lor.lhs.false.us.i.6:                             ; preds = %if.then.us.i.5
  %incdec.ptr23.us.i.5 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 6
  %conv16.us.i.6 = zext i8 %19 to i32
  %sub.i.us.i.6 = sub nsw i32 24, %conv16.us.i.6
  %shr.i.us.i.6 = lshr i32 %and10.i, %sub.i.us.i.6
  %20 = load i8, ptr %incdec.ptr23.us.i.5, align 1
  %conv20.us.i.6 = zext i8 %20 to i32
  %cmp21.not.us.i.6 = icmp eq i32 %shr.i.us.i.6, %conv20.us.i.6
  br i1 %cmp21.not.us.i.6, label %if.end, label %if.then.us.i.6

if.then.us.i.6:                                   ; preds = %lor.lhs.false.us.i.6, %if.then.us.i.5
  %incdec.ptr.us.i.6 = getelementptr inbounds i8, ptr %len.068.us.i, i64 7
  %21 = load i8, ptr %incdec.ptr.us.i.6, align 1
  %cmp17.us.i.7 = icmp eq i8 %21, 0
  br i1 %cmp17.us.i.7, label %if.then.us.i.7, label %lor.lhs.false.us.i.7

lor.lhs.false.us.i.7:                             ; preds = %if.then.us.i.6
  %incdec.ptr23.us.i.6 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 7
  %conv16.us.i.7 = zext i8 %21 to i32
  %sub.i.us.i.7 = sub nsw i32 24, %conv16.us.i.7
  %shr.i.us.i.7 = lshr i32 %and10.i, %sub.i.us.i.7
  %22 = load i8, ptr %incdec.ptr23.us.i.6, align 1
  %conv20.us.i.7 = zext i8 %22 to i32
  %cmp21.not.us.i.7 = icmp eq i32 %shr.i.us.i.7, %conv20.us.i.7
  br i1 %cmp21.not.us.i.7, label %if.end, label %if.then.us.i.7

if.then.us.i.7:                                   ; preds = %lor.lhs.false.us.i.7, %if.then.us.i.6
  %incdec.ptr.us.i.7 = getelementptr inbounds i8, ptr %len.068.us.i, i64 8
  %23 = load i8, ptr %incdec.ptr.us.i.7, align 1
  %cmp17.us.i.8 = icmp eq i8 %23, 0
  br i1 %cmp17.us.i.8, label %if.then.us.i.8, label %lor.lhs.false.us.i.8

lor.lhs.false.us.i.8:                             ; preds = %if.then.us.i.7
  %incdec.ptr23.us.i.7 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 8
  %conv16.us.i.8 = zext i8 %23 to i32
  %sub.i.us.i.8 = sub nsw i32 24, %conv16.us.i.8
  %shr.i.us.i.8 = lshr i32 %and10.i, %sub.i.us.i.8
  %24 = load i8, ptr %incdec.ptr23.us.i.7, align 1
  %conv20.us.i.8 = zext i8 %24 to i32
  %cmp21.not.us.i.8 = icmp eq i32 %shr.i.us.i.8, %conv20.us.i.8
  br i1 %cmp21.not.us.i.8, label %if.end, label %if.then.us.i.8

if.then.us.i.8:                                   ; preds = %lor.lhs.false.us.i.8, %if.then.us.i.7
  %incdec.ptr.us.i.8 = getelementptr inbounds i8, ptr %len.068.us.i, i64 9
  %25 = load i8, ptr %incdec.ptr.us.i.8, align 1
  %cmp17.us.i.9 = icmp eq i8 %25, 0
  br i1 %cmp17.us.i.9, label %if.then.us.i.9, label %lor.lhs.false.us.i.9

lor.lhs.false.us.i.9:                             ; preds = %if.then.us.i.8
  %incdec.ptr23.us.i.8 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 9
  %conv16.us.i.9 = zext i8 %25 to i32
  %sub.i.us.i.9 = sub nsw i32 24, %conv16.us.i.9
  %shr.i.us.i.9 = lshr i32 %and10.i, %sub.i.us.i.9
  %26 = load i8, ptr %incdec.ptr23.us.i.8, align 1
  %conv20.us.i.9 = zext i8 %26 to i32
  %cmp21.not.us.i.9 = icmp eq i32 %shr.i.us.i.9, %conv20.us.i.9
  br i1 %cmp21.not.us.i.9, label %if.end, label %if.then.us.i.9

if.then.us.i.9:                                   ; preds = %lor.lhs.false.us.i.9, %if.then.us.i.8
  %incdec.ptr.us.i.9 = getelementptr inbounds i8, ptr %len.068.us.i, i64 10
  %27 = load i8, ptr %incdec.ptr.us.i.9, align 1
  %cmp17.us.i.10 = icmp eq i8 %27, 0
  br i1 %cmp17.us.i.10, label %if.then.us.i.10, label %lor.lhs.false.us.i.10

lor.lhs.false.us.i.10:                            ; preds = %if.then.us.i.9
  %incdec.ptr23.us.i.9 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 10
  %conv16.us.i.10 = zext i8 %27 to i32
  %sub.i.us.i.10 = sub nsw i32 24, %conv16.us.i.10
  %shr.i.us.i.10 = lshr i32 %and10.i, %sub.i.us.i.10
  %28 = load i8, ptr %incdec.ptr23.us.i.9, align 1
  %conv20.us.i.10 = zext i8 %28 to i32
  %cmp21.not.us.i.10 = icmp eq i32 %shr.i.us.i.10, %conv20.us.i.10
  br i1 %cmp21.not.us.i.10, label %if.end, label %if.then.us.i.10

if.then.us.i.10:                                  ; preds = %lor.lhs.false.us.i.10, %if.then.us.i.9
  %incdec.ptr.us.i.10 = getelementptr inbounds i8, ptr %len.068.us.i, i64 11
  %29 = load i8, ptr %incdec.ptr.us.i.10, align 1
  %cmp17.us.i.11 = icmp eq i8 %29, 0
  br i1 %cmp17.us.i.11, label %if.then.us.i.11, label %lor.lhs.false.us.i.11

lor.lhs.false.us.i.11:                            ; preds = %if.then.us.i.10
  %incdec.ptr23.us.i.10 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 11
  %conv16.us.i.11 = zext i8 %29 to i32
  %sub.i.us.i.11 = sub nsw i32 24, %conv16.us.i.11
  %shr.i.us.i.11 = lshr i32 %and10.i, %sub.i.us.i.11
  %30 = load i8, ptr %incdec.ptr23.us.i.10, align 1
  %conv20.us.i.11 = zext i8 %30 to i32
  %cmp21.not.us.i.11 = icmp eq i32 %shr.i.us.i.11, %conv20.us.i.11
  br i1 %cmp21.not.us.i.11, label %if.end, label %if.then.us.i.11

if.then.us.i.11:                                  ; preds = %lor.lhs.false.us.i.11, %if.then.us.i.10
  %incdec.ptr.us.i.11 = getelementptr inbounds i8, ptr %len.068.us.i, i64 12
  %31 = load i8, ptr %incdec.ptr.us.i.11, align 1
  %cmp17.us.i.12 = icmp eq i8 %31, 0
  br i1 %cmp17.us.i.12, label %if.then.us.i.12, label %lor.lhs.false.us.i.12

lor.lhs.false.us.i.12:                            ; preds = %if.then.us.i.11
  %incdec.ptr23.us.i.11 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 12
  %conv16.us.i.12 = zext i8 %31 to i32
  %sub.i.us.i.12 = sub nsw i32 24, %conv16.us.i.12
  %shr.i.us.i.12 = lshr i32 %and10.i, %sub.i.us.i.12
  %32 = load i8, ptr %incdec.ptr23.us.i.11, align 1
  %conv20.us.i.12 = zext i8 %32 to i32
  %cmp21.not.us.i.12 = icmp eq i32 %shr.i.us.i.12, %conv20.us.i.12
  br i1 %cmp21.not.us.i.12, label %if.end, label %if.then.us.i.12

if.then.us.i.12:                                  ; preds = %lor.lhs.false.us.i.12, %if.then.us.i.11
  %incdec.ptr.us.i.12 = getelementptr inbounds i8, ptr %len.068.us.i, i64 13
  %33 = load i8, ptr %incdec.ptr.us.i.12, align 1
  %cmp17.us.i.13 = icmp eq i8 %33, 0
  br i1 %cmp17.us.i.13, label %if.then.us.i.13, label %lor.lhs.false.us.i.13

lor.lhs.false.us.i.13:                            ; preds = %if.then.us.i.12
  %incdec.ptr23.us.i.12 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 13
  %conv16.us.i.13 = zext i8 %33 to i32
  %sub.i.us.i.13 = sub nsw i32 24, %conv16.us.i.13
  %shr.i.us.i.13 = lshr i32 %and10.i, %sub.i.us.i.13
  %34 = load i8, ptr %incdec.ptr23.us.i.12, align 1
  %conv20.us.i.13 = zext i8 %34 to i32
  %cmp21.not.us.i.13 = icmp eq i32 %shr.i.us.i.13, %conv20.us.i.13
  br i1 %cmp21.not.us.i.13, label %if.end, label %if.then.us.i.13

if.then.us.i.13:                                  ; preds = %lor.lhs.false.us.i.13, %if.then.us.i.12
  %incdec.ptr.us.i.13 = getelementptr inbounds i8, ptr %len.068.us.i, i64 14
  %35 = load i8, ptr %incdec.ptr.us.i.13, align 1
  %cmp17.us.i.14 = icmp eq i8 %35, 0
  br i1 %cmp17.us.i.14, label %if.then.us.i.14, label %lor.lhs.false.us.i.14

lor.lhs.false.us.i.14:                            ; preds = %if.then.us.i.13
  %incdec.ptr23.us.i.13 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 14
  %conv16.us.i.14 = zext i8 %35 to i32
  %sub.i.us.i.14 = sub nsw i32 24, %conv16.us.i.14
  %shr.i.us.i.14 = lshr i32 %and10.i, %sub.i.us.i.14
  %36 = load i8, ptr %incdec.ptr23.us.i.13, align 1
  %conv20.us.i.14 = zext i8 %36 to i32
  %cmp21.not.us.i.14 = icmp eq i32 %shr.i.us.i.14, %conv20.us.i.14
  br i1 %cmp21.not.us.i.14, label %if.end, label %if.then.us.i.14

if.then.us.i.14:                                  ; preds = %lor.lhs.false.us.i.14, %if.then.us.i.13
  %incdec.ptr.us.i.14 = getelementptr inbounds i8, ptr %len.068.us.i, i64 15
  %37 = load i8, ptr %incdec.ptr.us.i.14, align 1
  %cmp17.us.i.15 = icmp eq i8 %37, 0
  br i1 %cmp17.us.i.15, label %if.then.us.i.15, label %lor.lhs.false.us.i.15

lor.lhs.false.us.i.15:                            ; preds = %if.then.us.i.14
  %incdec.ptr23.us.i.14 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 15
  %conv16.us.i.15 = zext i8 %37 to i32
  %sub.i.us.i.15 = sub nsw i32 24, %conv16.us.i.15
  %shr.i.us.i.15 = lshr i32 %and10.i, %sub.i.us.i.15
  %38 = load i8, ptr %incdec.ptr23.us.i.14, align 1
  %conv20.us.i.15 = zext i8 %38 to i32
  %cmp21.not.us.i.15 = icmp eq i32 %shr.i.us.i.15, %conv20.us.i.15
  br i1 %cmp21.not.us.i.15, label %if.end, label %if.then.us.i.15

if.then.us.i.15:                                  ; preds = %lor.lhs.false.us.i.15, %if.then.us.i.14
  %incdec.ptr.us.i.15 = getelementptr inbounds i8, ptr %len.068.us.i, i64 16
  %39 = load i8, ptr %incdec.ptr.us.i.15, align 1
  %cmp17.us.i.16 = icmp eq i8 %39, 0
  br i1 %cmp17.us.i.16, label %if.then.us.i.16, label %lor.lhs.false.us.i.16

lor.lhs.false.us.i.16:                            ; preds = %if.then.us.i.15
  %incdec.ptr23.us.i.15 = getelementptr inbounds i8, ptr %cod.069.us.i, i64 16
  %conv16.us.i.16 = zext i8 %39 to i32
  %sub.i.us.i.16 = sub nsw i32 24, %conv16.us.i.16
  %shr.i.us.i.16 = lshr i32 %and10.i, %sub.i.us.i.16
  %40 = load i8, ptr %incdec.ptr23.us.i.15, align 1
  %conv20.us.i.16 = zext i8 %40 to i32
  %cmp21.not.us.i.16 = icmp eq i32 %shr.i.us.i.16, %conv20.us.i.16
  br i1 %cmp21.not.us.i.16, label %if.end, label %if.then.us.i.16

if.then.us.i.16:                                  ; preds = %lor.lhs.false.us.i.16, %if.then.us.i.15
  %inc30.us.i = add nuw nsw i32 %j.067.us.i, 1
  %exitcond80.not.i = icmp eq i32 %inc30.us.i, 4
  br i1 %exitcond80.not.i, label %if.then, label %for.cond12.preheader.us.i

if.then:                                          ; preds = %if.then.us.i.16
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6)
  tail call void @exit(i32 noundef -1) #14
  unreachable

if.end:                                           ; preds = %lor.lhs.false.us.i.16, %lor.lhs.false.us.i.15, %lor.lhs.false.us.i.14, %lor.lhs.false.us.i.13, %lor.lhs.false.us.i.12, %lor.lhs.false.us.i.11, %lor.lhs.false.us.i.10, %lor.lhs.false.us.i.9, %lor.lhs.false.us.i.8, %lor.lhs.false.us.i.7, %lor.lhs.false.us.i.6, %lor.lhs.false.us.i.5, %lor.lhs.false.us.i.4, %lor.lhs.false.us.i.3, %lor.lhs.false.us.i.2, %lor.lhs.false.us.i.1, %lor.lhs.false.us.i
  %i.064.us.i.lcssa = phi i32 [ 0, %lor.lhs.false.us.i ], [ 1, %lor.lhs.false.us.i.1 ], [ 2, %lor.lhs.false.us.i.2 ], [ 3, %lor.lhs.false.us.i.3 ], [ 4, %lor.lhs.false.us.i.4 ], [ 5, %lor.lhs.false.us.i.5 ], [ 6, %lor.lhs.false.us.i.6 ], [ 7, %lor.lhs.false.us.i.7 ], [ 8, %lor.lhs.false.us.i.8 ], [ 9, %lor.lhs.false.us.i.9 ], [ 10, %lor.lhs.false.us.i.10 ], [ 11, %lor.lhs.false.us.i.11 ], [ 12, %lor.lhs.false.us.i.12 ], [ 13, %lor.lhs.false.us.i.13 ], [ 14, %lor.lhs.false.us.i.14 ], [ 15, %lor.lhs.false.us.i.15 ], [ 16, %lor.lhs.false.us.i.16 ]
  %conv16.us.i.lcssa = phi i32 [ %conv16.us.i, %lor.lhs.false.us.i ], [ %conv16.us.i.1, %lor.lhs.false.us.i.1 ], [ %conv16.us.i.2, %lor.lhs.false.us.i.2 ], [ %conv16.us.i.3, %lor.lhs.false.us.i.3 ], [ %conv16.us.i.4, %lor.lhs.false.us.i.4 ], [ %conv16.us.i.5, %lor.lhs.false.us.i.5 ], [ %conv16.us.i.6, %lor.lhs.false.us.i.6 ], [ %conv16.us.i.7, %lor.lhs.false.us.i.7 ], [ %conv16.us.i.8, %lor.lhs.false.us.i.8 ], [ %conv16.us.i.9, %lor.lhs.false.us.i.9 ], [ %conv16.us.i.10, %lor.lhs.false.us.i.10 ], [ %conv16.us.i.11, %lor.lhs.false.us.i.11 ], [ %conv16.us.i.12, %lor.lhs.false.us.i.12 ], [ %conv16.us.i.13, %lor.lhs.false.us.i.13 ], [ %conv16.us.i.14, %lor.lhs.false.us.i.14 ], [ %conv16.us.i.15, %lor.lhs.false.us.i.15 ], [ %conv16.us.i.16, %lor.lhs.false.us.i.16 ]
  %len25.i = getelementptr inbounds i8, ptr %sym, i64 12
  store i32 %conv16.us.i.lcssa, ptr %len25.i, align 4
  %41 = load i32, ptr %frame_bitoffset2.i, align 4
  %add27.i = add nsw i32 %41, %conv16.us.i.lcssa
  store i32 %add27.i, ptr %frame_bitoffset2.i, align 4
  %value1.i = getelementptr inbounds i8, ptr %sym, i64 4
  store i32 %i.064.us.i.lcssa, ptr %value1.i, align 4
  %value2.i = getelementptr inbounds i8, ptr %sym, i64 8
  store i32 %j.067.us.i, ptr %value2.i, align 8
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @readSyntaxElement_Level_VLC0(ptr nocapture noundef writeonly %sym, ptr nocapture noundef %currStream) local_unnamed_addr #4 {
entry:
  %frame_bitoffset1 = getelementptr inbounds i8, ptr %currStream, i64 8
  %0 = load i32, ptr %frame_bitoffset1, align 8
  %bitstream_length = getelementptr inbounds i8, ptr %currStream, i64 12
  %1 = load i32, ptr %bitstream_length, align 4
  %shl = shl i32 %1, 3
  %add = or disjoint i32 %shl, 7
  %streamBuffer = getelementptr inbounds i8, ptr %currStream, i64 16
  %2 = load ptr, ptr %streamBuffer, align 8
  %inc127 = add nsw i32 %0, 1
  %cmp.i.not128 = icmp slt i32 %0, %add
  br i1 %cmp.i.not128, label %if.else.i.preheader, label %if.then

if.else.i.preheader:                              ; preds = %entry
  %3 = add i32 %shl, 8
  %4 = sub i32 %3, %0
  br label %if.else.i

if.else.i:                                        ; preds = %if.else.i.preheader, %while.body
  %inc131 = phi i32 [ %inc, %while.body ], [ %inc127, %if.else.i.preheader ]
  %frame_bitoffset.0130 = phi i32 [ %inc131, %while.body ], [ %0, %if.else.i.preheader ]
  %len.0129 = phi i32 [ %inc2, %while.body ], [ 1, %if.else.i.preheader ]
  %shr.i = ashr i32 %frame_bitoffset.0130, 3
  %idxprom.i = sext i32 %shr.i to i64
  %arrayidx.i = getelementptr inbounds i8, ptr %2, i64 %idxprom.i
  %and.i = and i32 %frame_bitoffset.0130, 7
  %sub.i = xor i32 %and.i, 7
  %5 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %5 to i32
  %6 = shl nuw nsw i32 1, %sub.i
  %7 = and i32 %6, %conv.i
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.body:                                       ; preds = %if.else.i
  %inc2 = add nuw nsw i32 %len.0129, 1
  %inc = add i32 %inc131, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %while.end, label %if.else.i

while.end:                                        ; preds = %if.else.i, %while.body
  %len.0.lcssa = phi i32 [ %len.0129, %if.else.i ], [ %4, %while.body ]
  %frame_bitoffset.0.lcssa = phi i32 [ %frame_bitoffset.0130, %if.else.i ], [ %add, %while.body ]
  %inc.lcssa = phi i32 [ %inc131, %if.else.i ], [ %3, %while.body ]
  %cmp = icmp ult i32 %len.0.lcssa, 15
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry, %while.end
  %inc.lcssa142 = phi i32 [ %inc.lcssa, %while.end ], [ %inc127, %entry ]
  %len.0.lcssa141 = phi i32 [ %len.0.lcssa, %while.end ], [ 1, %entry ]
  %sub = add nsw i32 %len.0.lcssa141, -1
  %shr = ashr i32 %sub, 1
  %add4 = add nsw i32 %shr, 1
  br label %if.end32

if.else:                                          ; preds = %while.end
  %cmp5 = icmp eq i32 %len.0.lcssa, 15
  br i1 %cmp5, label %if.then6, label %if.then17

if.then6:                                         ; preds = %if.else
  %8 = or disjoint i32 %shl, 2
  %cmp.i72 = icmp sgt i32 %frame_bitoffset.0.lcssa, %8
  br i1 %cmp.i72, label %ShowBits.exit97, label %if.else.i73

if.else.i73:                                      ; preds = %if.then6
  %shr.i74 = ashr i32 %inc.lcssa, 3
  %idxprom.i75 = sext i32 %shr.i74 to i64
  %arrayidx.i76 = getelementptr inbounds i8, ptr %2, i64 %idxprom.i75
  %and.i77 = and i32 %inc.lcssa, 7
  %sub.i78 = xor i32 %and.i77, 7
  %9 = load i8, ptr %arrayidx.i76, align 1
  %conv.i86 = zext i8 %9 to i32
  %dec1.i87 = sub nsw i32 6, %and.i77
  %shr2.i88 = lshr i32 %conv.i86, %sub.i78
  %cmp4.i91 = icmp eq i32 %and.i77, 7
  %spec.select.i92 = select i1 %cmp4.i91, i32 7, i32 %dec1.i87
  %spec.select14.idx.i93 = zext i1 %cmp4.i91 to i64
  %spec.select14.i94 = getelementptr inbounds i8, ptr %arrayidx.i76, i64 %spec.select14.idx.i93
  %and3.i89 = shl nuw nsw i32 %shr2.i88, 1
  %shl.i85.1 = and i32 %and3.i89, 2
  %10 = load i8, ptr %spec.select14.i94, align 1
  %conv.i86.1 = zext i8 %10 to i32
  %dec1.i87.1 = add nsw i32 %spec.select.i92, -1
  %shr2.i88.1 = lshr i32 %conv.i86.1, %spec.select.i92
  %and3.i89.1 = and i32 %shr2.i88.1, 1
  %or.i90.1 = or disjoint i32 %and3.i89.1, %shl.i85.1
  %cmp4.i91.1 = icmp eq i32 %spec.select.i92, 0
  %spec.select.i92.1 = select i1 %cmp4.i91.1, i32 7, i32 %dec1.i87.1
  %spec.select14.idx.i93.1 = zext i1 %cmp4.i91.1 to i64
  %spec.select14.i94.1 = getelementptr inbounds i8, ptr %spec.select14.i94, i64 %spec.select14.idx.i93.1
  %11 = load i8, ptr %spec.select14.i94.1, align 1
  %conv.i86.2 = zext i8 %11 to i32
  %dec1.i87.2 = add nsw i32 %spec.select.i92.1, -1
  %shr2.i88.2 = lshr i32 %conv.i86.2, %spec.select.i92.1
  %cmp4.i91.2 = icmp eq i32 %spec.select.i92.1, 0
  %spec.select.i92.2 = select i1 %cmp4.i91.2, i32 7, i32 %dec1.i87.2
  %spec.select14.idx.i93.2 = zext i1 %cmp4.i91.2 to i64
  %spec.select14.i94.2 = getelementptr inbounds i8, ptr %spec.select14.i94.1, i64 %spec.select14.idx.i93.2
  %12 = shl nuw nsw i32 %or.i90.1, 2
  %and3.i89.2 = shl nuw nsw i32 %shr2.i88.2, 1
  %13 = and i32 %and3.i89.2, 2
  %shl.i85.3 = or disjoint i32 %12, %13
  %14 = load i8, ptr %spec.select14.i94.2, align 1
  %conv.i86.3 = zext i8 %14 to i32
  %shr2.i88.3 = lshr i32 %conv.i86.3, %spec.select.i92.2
  %and3.i89.3 = and i32 %shr2.i88.3, 1
  %or.i90.3 = or disjoint i32 %and3.i89.3, %shl.i85.3
  br label %ShowBits.exit97

ShowBits.exit97:                                  ; preds = %if.else.i73, %if.then6
  %retval.0.i96 = phi i32 [ -1, %if.then6 ], [ %or.i90.3, %if.else.i73 ]
  %add10 = add nsw i32 %frame_bitoffset.0.lcssa, 5
  %or = lshr i32 %retval.0.i96, 1
  %and13 = and i32 %or, 7
  %add14 = or disjoint i32 %and13, 8
  br label %if.end32

if.then17:                                        ; preds = %if.else
  %sub18 = add nsw i32 %len.0.lcssa, -16
  %shl19 = shl i32 2048, %sub18
  %sub20 = add nsw i32 %shl19, -2032
  %sub21 = add nsw i32 %len.0.lcssa, -4
  %add.i98 = add nsw i32 %inc.lcssa, %sub21
  %cmp.i99 = icmp sgt i32 %add.i98, %add
  br i1 %cmp.i99, label %ShowBits.exit124, label %while.body.preheader.i

while.body.preheader.i:                           ; preds = %if.then17
  %xtraiter = and i32 %len.0.lcssa, 1
  %and.i104 = and i32 %inc.lcssa, 7
  %sub.i105 = xor i32 %and.i104, 7
  %shr.i101 = ashr i32 %inc.lcssa, 3
  %idxprom.i102 = sext i32 %shr.i101 to i64
  %arrayidx.i103 = getelementptr inbounds i8, ptr %2, i64 %idxprom.i102
  %unroll_iter = and i32 %sub21, -2
  br label %while.body.i106

while.body.i106:                                  ; preds = %while.body.i106, %while.body.preheader.i
  %inf.019.i107 = phi i32 [ 0, %while.body.preheader.i ], [ %or.i117.1, %while.body.i106 ]
  %curbyte.018.i108 = phi ptr [ %arrayidx.i103, %while.body.preheader.i ], [ %spec.select14.i121.1, %while.body.i106 ]
  %bitoffset.017.i109 = phi i32 [ %sub.i105, %while.body.preheader.i ], [ %spec.select.i119.1, %while.body.i106 ]
  %niter = phi i32 [ 0, %while.body.preheader.i ], [ %niter.next.1, %while.body.i106 ]
  %15 = load i8, ptr %curbyte.018.i108, align 1
  %conv.i113 = zext i8 %15 to i32
  %dec1.i114 = add nsw i32 %bitoffset.017.i109, -1
  %shr2.i115 = lshr i32 %conv.i113, %bitoffset.017.i109
  %cmp4.i118 = icmp eq i32 %bitoffset.017.i109, 0
  %spec.select.i119 = select i1 %cmp4.i118, i32 7, i32 %dec1.i114
  %spec.select14.idx.i120 = zext i1 %cmp4.i118 to i64
  %spec.select14.i121 = getelementptr inbounds i8, ptr %curbyte.018.i108, i64 %spec.select14.idx.i120
  %16 = shl i32 %inf.019.i107, 2
  %and3.i116 = shl nuw nsw i32 %shr2.i115, 1
  %17 = and i32 %and3.i116, 2
  %shl.i112.1 = or disjoint i32 %16, %17
  %18 = load i8, ptr %spec.select14.i121, align 1
  %conv.i113.1 = zext i8 %18 to i32
  %dec1.i114.1 = add nsw i32 %spec.select.i119, -1
  %shr2.i115.1 = lshr i32 %conv.i113.1, %spec.select.i119
  %and3.i116.1 = and i32 %shr2.i115.1, 1
  %or.i117.1 = or disjoint i32 %and3.i116.1, %shl.i112.1
  %cmp4.i118.1 = icmp eq i32 %spec.select.i119, 0
  %spec.select.i119.1 = select i1 %cmp4.i118.1, i32 7, i32 %dec1.i114.1
  %spec.select14.idx.i120.1 = zext i1 %cmp4.i118.1 to i64
  %spec.select14.i121.1 = getelementptr inbounds i8, ptr %spec.select14.i121, i64 %spec.select14.idx.i120.1
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ShowBits.exit124.loopexit.unr-lcssa, label %while.body.i106

ShowBits.exit124.loopexit.unr-lcssa:              ; preds = %while.body.i106
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ShowBits.exit124, label %while.body.i106.epil

while.body.i106.epil:                             ; preds = %ShowBits.exit124.loopexit.unr-lcssa
  %shl.i112.epil = shl i32 %or.i117.1, 1
  %19 = load i8, ptr %spec.select14.i121.1, align 1
  %conv.i113.epil = zext i8 %19 to i32
  %shr2.i115.epil = lshr i32 %conv.i113.epil, %spec.select.i119.1
  %and3.i116.epil = and i32 %shr2.i115.epil, 1
  %or.i117.epil = or disjoint i32 %and3.i116.epil, %shl.i112.epil
  br label %ShowBits.exit124

ShowBits.exit124:                                 ; preds = %while.body.i106.epil, %ShowBits.exit124.loopexit.unr-lcssa, %if.then17
  %retval.0.i123 = phi i32 [ -1, %if.then17 ], [ %or.i117.1, %ShowBits.exit124.loopexit.unr-lcssa ], [ %or.i117.epil, %while.body.i106.epil ]
  %shr25 = ashr i32 %retval.0.i123, 1
  %add26 = add nsw i32 %sub20, %shr25
  %add30 = add nuw nsw i32 %sub21, %len.0.lcssa
  br label %if.end32

if.end32:                                         ; preds = %ShowBits.exit97, %ShowBits.exit124, %if.then
  %sign.0.in = phi i32 [ %sub, %if.then ], [ %retval.0.i96, %ShowBits.exit97 ], [ %retval.0.i123, %ShowBits.exit124 ]
  %level.0 = phi i32 [ %add4, %if.then ], [ %add14, %ShowBits.exit97 ], [ %add26, %ShowBits.exit124 ]
  %len.1 = phi i32 [ %len.0.lcssa141, %if.then ], [ 19, %ShowBits.exit97 ], [ %add30, %ShowBits.exit124 ]
  %frame_bitoffset.1 = phi i32 [ %inc.lcssa142, %if.then ], [ %add10, %ShowBits.exit97 ], [ %add.i98, %ShowBits.exit124 ]
  %sign.0 = and i32 %sign.0.in, 1
  %tobool33.not = icmp eq i32 %sign.0, 0
  %sub34 = sub nsw i32 0, %level.0
  %cond = select i1 %tobool33.not, i32 %level.0, i32 %sub34
  %inf = getelementptr inbounds i8, ptr %sym, i64 16
  store i32 %cond, ptr %inf, align 8
  %len35 = getelementptr inbounds i8, ptr %sym, i64 12
  store i32 %len.1, ptr %len35, align 4
  store i32 %frame_bitoffset.1, ptr %frame_bitoffset1, align 8
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @readSyntaxElement_Level_VLCN(ptr nocapture noundef writeonly %sym, i32 noundef %vlc, ptr nocapture noundef %currStream) local_unnamed_addr #4 {
entry:
  %frame_bitoffset1 = getelementptr inbounds i8, ptr %currStream, i64 8
  %0 = load i32, ptr %frame_bitoffset1, align 8
  %bitstream_length = getelementptr inbounds i8, ptr %currStream, i64 12
  %1 = load i32, ptr %bitstream_length, align 4
  %shl = shl i32 %1, 3
  %add = or disjoint i32 %shl, 7
  %streamBuffer = getelementptr inbounds i8, ptr %currStream, i64 16
  %2 = load ptr, ptr %streamBuffer, align 8
  %sub = add i32 %vlc, -1
  %inc214 = add nsw i32 %0, 1
  %cmp.i.not215 = icmp slt i32 %0, %add
  br i1 %cmp.i.not215, label %if.else.i.preheader, label %if.then

if.else.i.preheader:                              ; preds = %entry
  %3 = add i32 %shl, 8
  %4 = sub i32 %3, %0
  br label %if.else.i

if.else.i:                                        ; preds = %if.else.i.preheader, %while.body
  %inc218 = phi i32 [ %inc, %while.body ], [ %inc214, %if.else.i.preheader ]
  %frame_bitoffset.0217 = phi i32 [ %inc218, %while.body ], [ %0, %if.else.i.preheader ]
  %len.0216 = phi i32 [ %inc2, %while.body ], [ 1, %if.else.i.preheader ]
  %shr.i = ashr i32 %frame_bitoffset.0217, 3
  %idxprom.i = sext i32 %shr.i to i64
  %arrayidx.i = getelementptr inbounds i8, ptr %2, i64 %idxprom.i
  %and.i = and i32 %frame_bitoffset.0217, 7
  %sub.i = xor i32 %and.i, 7
  %5 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %5 to i32
  %6 = shl nuw nsw i32 1, %sub.i
  %7 = and i32 %6, %conv.i
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.body:                                       ; preds = %if.else.i
  %inc2 = add nuw nsw i32 %len.0216, 1
  %inc = add i32 %inc218, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %while.end, label %if.else.i

while.end:                                        ; preds = %if.else.i, %while.body
  %len.0.lcssa = phi i32 [ %len.0216, %if.else.i ], [ %4, %while.body ]
  %frame_bitoffset.0.lcssa = phi i32 [ %frame_bitoffset.0217, %if.else.i ], [ %add, %while.body ]
  %inc.lcssa = phi i32 [ %inc218, %if.else.i ], [ %3, %while.body ]
  %sub3 = sub nsw i32 %inc.lcssa, %len.0.lcssa
  %cmp = icmp ult i32 %len.0.lcssa, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry, %while.end
  %sub3233 = phi i32 [ %sub3, %while.end ], [ %0, %entry ]
  %inc.lcssa232 = phi i32 [ %inc.lcssa, %while.end ], [ %inc214, %entry ]
  %frame_bitoffset.0.lcssa231 = phi i32 [ %frame_bitoffset.0.lcssa, %while.end ], [ %0, %entry ]
  %len.0.lcssa230 = phi i32 [ %len.0.lcssa, %while.end ], [ 1, %entry ]
  %sub4 = add nsw i32 %len.0.lcssa230, -1
  %shl5 = shl i32 %sub4, %sub
  %add6 = add nsw i32 %shl5, 1
  %tobool7.not = icmp eq i32 %sub, 0
  br i1 %tobool7.not, label %if.end, label %if.then8

if.then8:                                         ; preds = %if.then
  %add.i91 = add i32 %frame_bitoffset.0.lcssa231, %vlc
  %cmp.i92 = icmp sgt i32 %add.i91, %add
  br i1 %cmp.i92, label %ShowBits.exit117, label %while.body.preheader.i

while.body.preheader.i:                           ; preds = %if.then8
  %shr.i94 = ashr i32 %inc.lcssa232, 3
  %idxprom.i95 = sext i32 %shr.i94 to i64
  %arrayidx.i96 = getelementptr inbounds i8, ptr %2, i64 %idxprom.i95
  %and.i97 = and i32 %inc.lcssa232, 7
  %sub.i98 = xor i32 %and.i97, 7
  %xtraiter239 = and i32 %sub, 1
  %8 = icmp eq i32 %vlc, 2
  br i1 %8, label %ShowBits.exit117.loopexit.unr-lcssa, label %while.body.preheader.i.new

while.body.preheader.i.new:                       ; preds = %while.body.preheader.i
  %unroll_iter242 = and i32 %sub, -2
  br label %while.body.i99

while.body.i99:                                   ; preds = %while.body.i99, %while.body.preheader.i.new
  %inf.019.i100 = phi i32 [ 0, %while.body.preheader.i.new ], [ %or.i110.1, %while.body.i99 ]
  %curbyte.018.i101 = phi ptr [ %arrayidx.i96, %while.body.preheader.i.new ], [ %spec.select14.i114.1, %while.body.i99 ]
  %bitoffset.017.i102 = phi i32 [ %sub.i98, %while.body.preheader.i.new ], [ %spec.select.i112.1, %while.body.i99 ]
  %niter243 = phi i32 [ 0, %while.body.preheader.i.new ], [ %niter243.next.1, %while.body.i99 ]
  %9 = load i8, ptr %curbyte.018.i101, align 1
  %conv.i106 = zext i8 %9 to i32
  %dec1.i107 = add nsw i32 %bitoffset.017.i102, -1
  %shr2.i108 = lshr i32 %conv.i106, %bitoffset.017.i102
  %cmp4.i111 = icmp eq i32 %bitoffset.017.i102, 0
  %spec.select.i112 = select i1 %cmp4.i111, i32 7, i32 %dec1.i107
  %spec.select14.idx.i113 = zext i1 %cmp4.i111 to i64
  %spec.select14.i114 = getelementptr inbounds i8, ptr %curbyte.018.i101, i64 %spec.select14.idx.i113
  %10 = shl i32 %inf.019.i100, 2
  %and3.i109 = shl nuw nsw i32 %shr2.i108, 1
  %11 = and i32 %and3.i109, 2
  %shl.i105.1 = or disjoint i32 %10, %11
  %12 = load i8, ptr %spec.select14.i114, align 1
  %conv.i106.1 = zext i8 %12 to i32
  %dec1.i107.1 = add nsw i32 %spec.select.i112, -1
  %shr2.i108.1 = lshr i32 %conv.i106.1, %spec.select.i112
  %and3.i109.1 = and i32 %shr2.i108.1, 1
  %or.i110.1 = or disjoint i32 %and3.i109.1, %shl.i105.1
  %cmp4.i111.1 = icmp eq i32 %spec.select.i112, 0
  %spec.select.i112.1 = select i1 %cmp4.i111.1, i32 7, i32 %dec1.i107.1
  %spec.select14.idx.i113.1 = zext i1 %cmp4.i111.1 to i64
  %spec.select14.i114.1 = getelementptr inbounds i8, ptr %spec.select14.i114, i64 %spec.select14.idx.i113.1
  %niter243.next.1 = add i32 %niter243, 2
  %niter243.ncmp.1 = icmp eq i32 %niter243.next.1, %unroll_iter242
  br i1 %niter243.ncmp.1, label %ShowBits.exit117.loopexit.unr-lcssa.loopexit, label %while.body.i99

ShowBits.exit117.loopexit.unr-lcssa.loopexit:     ; preds = %while.body.i99
  %13 = shl i32 %or.i110.1, 1
  br label %ShowBits.exit117.loopexit.unr-lcssa

ShowBits.exit117.loopexit.unr-lcssa:              ; preds = %ShowBits.exit117.loopexit.unr-lcssa.loopexit, %while.body.preheader.i
  %or.i110.lcssa.ph = phi i32 [ poison, %while.body.preheader.i ], [ %or.i110.1, %ShowBits.exit117.loopexit.unr-lcssa.loopexit ]
  %inf.019.i100.unr = phi i32 [ 0, %while.body.preheader.i ], [ %13, %ShowBits.exit117.loopexit.unr-lcssa.loopexit ]
  %curbyte.018.i101.unr = phi ptr [ %arrayidx.i96, %while.body.preheader.i ], [ %spec.select14.i114.1, %ShowBits.exit117.loopexit.unr-lcssa.loopexit ]
  %bitoffset.017.i102.unr = phi i32 [ %sub.i98, %while.body.preheader.i ], [ %spec.select.i112.1, %ShowBits.exit117.loopexit.unr-lcssa.loopexit ]
  %lcmp.mod240.not = icmp eq i32 %xtraiter239, 0
  br i1 %lcmp.mod240.not, label %ShowBits.exit117, label %while.body.i99.epil

while.body.i99.epil:                              ; preds = %ShowBits.exit117.loopexit.unr-lcssa
  %14 = load i8, ptr %curbyte.018.i101.unr, align 1
  %conv.i106.epil = zext i8 %14 to i32
  %shr2.i108.epil = lshr i32 %conv.i106.epil, %bitoffset.017.i102.unr
  %and3.i109.epil = and i32 %shr2.i108.epil, 1
  %or.i110.epil = or disjoint i32 %and3.i109.epil, %inf.019.i100.unr
  br label %ShowBits.exit117

ShowBits.exit117:                                 ; preds = %while.body.i99.epil, %ShowBits.exit117.loopexit.unr-lcssa, %if.then8
  %retval.0.i116 = phi i32 [ -1, %if.then8 ], [ %or.i110.lcssa.ph, %ShowBits.exit117.loopexit.unr-lcssa ], [ %or.i110.epil, %while.body.i99.epil ]
  %add12 = add nsw i32 %retval.0.i116, %add6
  %add13 = add nsw i32 %len.0.lcssa230, %sub
  br label %if.end

if.end:                                           ; preds = %ShowBits.exit117, %if.then
  %len.1 = phi i32 [ %add13, %ShowBits.exit117 ], [ %len.0.lcssa230, %if.then ]
  %levabs.0 = phi i32 [ %add12, %ShowBits.exit117 ], [ %add6, %if.then ]
  %add14 = add nsw i32 %len.1, %sub3233
  %cmp.i119.not = icmp slt i32 %add14, %add
  br i1 %cmp.i119.not, label %if.end35, label %if.end35.thread

if.else:                                          ; preds = %while.end
  %sub19 = add nsw i32 %len.0.lcssa, -5
  %shl20 = shl nuw i32 1, %sub19
  %shl21 = shl i32 15, %sub
  %add.i146 = add nsw i32 %inc.lcssa, %sub19
  %cmp.i147 = icmp sgt i32 %add.i146, %add
  br i1 %cmp.i147, label %ShowBits.exit174, label %while.body.preheader.i150

while.body.preheader.i150:                        ; preds = %if.else
  %xtraiter = and i32 %sub19, 1
  %and.i154 = and i32 %inc.lcssa, 7
  %sub.i155 = xor i32 %and.i154, 7
  %shr.i151 = ashr i32 %inc.lcssa, 3
  %idxprom.i152 = sext i32 %shr.i151 to i64
  %arrayidx.i153 = getelementptr inbounds i8, ptr %2, i64 %idxprom.i152
  %unroll_iter = and i32 %sub19, -2
  br label %while.body.i156

while.body.i156:                                  ; preds = %while.body.i156, %while.body.preheader.i150
  %inf.019.i157 = phi i32 [ 0, %while.body.preheader.i150 ], [ %or.i167.1, %while.body.i156 ]
  %curbyte.018.i158 = phi ptr [ %arrayidx.i153, %while.body.preheader.i150 ], [ %spec.select14.i171.1, %while.body.i156 ]
  %bitoffset.017.i159 = phi i32 [ %sub.i155, %while.body.preheader.i150 ], [ %spec.select.i169.1, %while.body.i156 ]
  %niter = phi i32 [ 0, %while.body.preheader.i150 ], [ %niter.next.1, %while.body.i156 ]
  %15 = load i8, ptr %curbyte.018.i158, align 1
  %conv.i163 = zext i8 %15 to i32
  %dec1.i164 = add nsw i32 %bitoffset.017.i159, -1
  %shr2.i165 = lshr i32 %conv.i163, %bitoffset.017.i159
  %cmp4.i168 = icmp eq i32 %bitoffset.017.i159, 0
  %spec.select.i169 = select i1 %cmp4.i168, i32 7, i32 %dec1.i164
  %spec.select14.idx.i170 = zext i1 %cmp4.i168 to i64
  %spec.select14.i171 = getelementptr inbounds i8, ptr %curbyte.018.i158, i64 %spec.select14.idx.i170
  %16 = shl i32 %inf.019.i157, 2
  %and3.i166 = shl nuw nsw i32 %shr2.i165, 1
  %17 = and i32 %and3.i166, 2
  %shl.i162.1 = or disjoint i32 %16, %17
  %18 = load i8, ptr %spec.select14.i171, align 1
  %conv.i163.1 = zext i8 %18 to i32
  %dec1.i164.1 = add nsw i32 %spec.select.i169, -1
  %shr2.i165.1 = lshr i32 %conv.i163.1, %spec.select.i169
  %and3.i166.1 = and i32 %shr2.i165.1, 1
  %or.i167.1 = or disjoint i32 %and3.i166.1, %shl.i162.1
  %cmp4.i168.1 = icmp eq i32 %spec.select.i169, 0
  %spec.select.i169.1 = select i1 %cmp4.i168.1, i32 7, i32 %dec1.i164.1
  %spec.select14.idx.i170.1 = zext i1 %cmp4.i168.1 to i64
  %spec.select14.i171.1 = getelementptr inbounds i8, ptr %spec.select14.i171, i64 %spec.select14.idx.i170.1
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ShowBits.exit174.loopexit.unr-lcssa, label %while.body.i156

ShowBits.exit174.loopexit.unr-lcssa:              ; preds = %while.body.i156
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ShowBits.exit174, label %while.body.i156.epil

while.body.i156.epil:                             ; preds = %ShowBits.exit174.loopexit.unr-lcssa
  %shl.i162.epil = shl i32 %or.i167.1, 1
  %19 = load i8, ptr %spec.select14.i171.1, align 1
  %conv.i163.epil = zext i8 %19 to i32
  %shr2.i165.epil = lshr i32 %conv.i163.epil, %spec.select.i169.1
  %and3.i166.epil = and i32 %shr2.i165.epil, 1
  %or.i167.epil = or disjoint i32 %and3.i166.epil, %shl.i162.epil
  br label %ShowBits.exit174

ShowBits.exit174:                                 ; preds = %while.body.i156.epil, %ShowBits.exit174.loopexit.unr-lcssa, %if.else
  %retval.0.i173 = phi i32 [ -1, %if.else ], [ %or.i167.1, %ShowBits.exit174.loopexit.unr-lcssa ], [ %or.i167.epil, %while.body.i156.epil ]
  %add28 = add nuw nsw i32 %sub19, %len.0.lcssa
  %add22 = add i32 %shl21, -2047
  %sub23 = add i32 %add22, %shl20
  %add29 = add nsw i32 %sub23, %retval.0.i173
  %cmp.i176.not = icmp slt i32 %add.i146, %add
  br i1 %cmp.i176.not, label %if.end35, label %if.end35.thread

if.end35.thread:                                  ; preds = %if.end, %ShowBits.exit174
  %sub3235 = phi i32 [ %sub3, %ShowBits.exit174 ], [ %sub3233, %if.end ]
  %len.2.in.ph = phi i32 [ %add28, %ShowBits.exit174 ], [ %len.1, %if.end ]
  %levabs.1.ph = phi i32 [ %add29, %ShowBits.exit174 ], [ %levabs.0, %if.end ]
  %sub37210 = sub nsw i32 0, %levabs.1.ph
  br label %21

if.end35:                                         ; preds = %ShowBits.exit174, %if.end
  %add.i146.sink237 = phi i32 [ %add14, %if.end ], [ %add.i146, %ShowBits.exit174 ]
  %sub3236 = phi i32 [ %sub3233, %if.end ], [ %sub3, %ShowBits.exit174 ]
  %len.2.in = phi i32 [ %len.1, %if.end ], [ %add28, %ShowBits.exit174 ]
  %levabs.1 = phi i32 [ %levabs.0, %if.end ], [ %add29, %ShowBits.exit174 ]
  %shr.i179 = ashr i32 %add.i146.sink237, 3
  %idxprom.i180 = sext i32 %shr.i179 to i64
  %arrayidx.i181 = getelementptr inbounds i8, ptr %2, i64 %idxprom.i180
  %and.i182 = and i32 %add.i146.sink237, 7
  %sub.i183 = xor i32 %and.i182, 7
  %20 = load i8, ptr %arrayidx.i181, align 1
  %conv.i191 = zext i8 %20 to i32
  %shr2.i193 = lshr i32 %conv.i191, %sub.i183
  %sign.0.in.fr = freeze i32 %shr2.i193
  %sign.0 = and i32 %sign.0.in.fr, 1
  %tobool36.not = icmp eq i32 %sign.0, 0
  %sub37 = sub nsw i32 0, %levabs.1
  %spec.select = select i1 %tobool36.not, i32 %levabs.1, i32 %sub37
  br label %21

21:                                               ; preds = %if.end35, %if.end35.thread
  %sub3234 = phi i32 [ %sub3235, %if.end35.thread ], [ %sub3236, %if.end35 ]
  %len.2212.in = phi i32 [ %len.2.in.ph, %if.end35.thread ], [ %len.2.in, %if.end35 ]
  %22 = phi i32 [ %sub37210, %if.end35.thread ], [ %spec.select, %if.end35 ]
  %len.2212 = add nsw i32 %len.2212.in, 1
  %inf = getelementptr inbounds i8, ptr %sym, i64 16
  store i32 %22, ptr %inf, align 8
  %len38 = getelementptr inbounds i8, ptr %sym, i64 12
  store i32 %len.2212, ptr %len38, align 4
  %add39 = add nsw i32 %len.2212, %sub3234
  store i32 %add39, ptr %frame_bitoffset1, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @readSyntaxElement_TotalZeros(ptr nocapture noundef %sym, ptr nocapture noundef %currStream) local_unnamed_addr #0 {
entry:
  %value1 = getelementptr inbounds i8, ptr %sym, i64 4
  %0 = load i32, ptr %value1, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [15 x [16 x i8]], ptr @readSyntaxElement_TotalZeros.lentab, i64 0, i64 %idxprom
  %arrayidx4 = getelementptr inbounds [15 x [16 x i8]], ptr @readSyntaxElement_TotalZeros.codtab, i64 0, i64 %idxprom
  %frame_bitoffset2.i = getelementptr inbounds i8, ptr %currStream, i64 8
  %streamBuffer.i = getelementptr inbounds i8, ptr %currStream, i64 16
  %1 = load ptr, ptr %streamBuffer.i, align 8
  %2 = load i32, ptr %frame_bitoffset2.i, align 4
  %shr.i = ashr i32 %2, 3
  %idxprom.i = sext i32 %shr.i to i64
  %arrayidx3.i = getelementptr inbounds i8, ptr %1, i64 %idxprom.i
  %3 = load i8, ptr %arrayidx3.i, align 1
  %conv.i = zext i8 %3 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %add.ptr.i = getelementptr inbounds i8, ptr %arrayidx3.i, i64 1
  %4 = load i8, ptr %add.ptr.i, align 1
  %conv4.i = zext i8 %4 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 8
  %add.i = or disjoint i32 %shl5.i, %shl.i
  %add.ptr6.i = getelementptr inbounds i8, ptr %arrayidx3.i, i64 2
  %5 = load i8, ptr %add.ptr6.i, align 1
  %conv7.i = zext i8 %5 to i32
  %add8.i = or disjoint i32 %add.i, %conv7.i
  %and.i = and i32 %2, 7
  %shl9.i = shl nuw nsw i32 %add8.i, %and.i
  %and10.i = and i32 %shl9.i, 16777215
  %6 = load i8, ptr %arrayidx, align 16
  %cmp17.us.i = icmp eq i8 %6, 0
  br i1 %cmp17.us.i, label %if.then.us.i, label %lor.lhs.false.us.i

lor.lhs.false.us.i:                               ; preds = %entry
  %conv16.us.i = zext i8 %6 to i32
  %sub.i.us.i = sub nsw i32 24, %conv16.us.i
  %shr.i.us.i = lshr i32 %and10.i, %sub.i.us.i
  %7 = load i8, ptr %arrayidx4, align 16
  %conv20.us.i = zext i8 %7 to i32
  %cmp21.not.us.i = icmp eq i32 %shr.i.us.i, %conv20.us.i
  br i1 %cmp21.not.us.i, label %if.end, label %if.then.us.i

if.then.us.i:                                     ; preds = %lor.lhs.false.us.i, %entry
  %incdec.ptr.us.i = getelementptr inbounds i8, ptr %arrayidx, i64 1
  %8 = load i8, ptr %incdec.ptr.us.i, align 1
  %cmp17.us.i.1 = icmp eq i8 %8, 0
  br i1 %cmp17.us.i.1, label %if.then.us.i.1, label %lor.lhs.false.us.i.1

lor.lhs.false.us.i.1:                             ; preds = %if.then.us.i
  %incdec.ptr23.us.i = getelementptr inbounds i8, ptr %arrayidx4, i64 1
  %conv16.us.i.1 = zext i8 %8 to i32
  %sub.i.us.i.1 = sub nsw i32 24, %conv16.us.i.1
  %shr.i.us.i.1 = lshr i32 %and10.i, %sub.i.us.i.1
  %9 = load i8, ptr %incdec.ptr23.us.i, align 1
  %conv20.us.i.1 = zext i8 %9 to i32
  %cmp21.not.us.i.1 = icmp eq i32 %shr.i.us.i.1, %conv20.us.i.1
  br i1 %cmp21.not.us.i.1, label %if.end, label %if.then.us.i.1

if.then.us.i.1:                                   ; preds = %lor.lhs.false.us.i.1, %if.then.us.i
  %incdec.ptr.us.i.1 = getelementptr inbounds i8, ptr %arrayidx, i64 2
  %10 = load i8, ptr %incdec.ptr.us.i.1, align 2
  %cmp17.us.i.2 = icmp eq i8 %10, 0
  br i1 %cmp17.us.i.2, label %if.then.us.i.2, label %lor.lhs.false.us.i.2

lor.lhs.false.us.i.2:                             ; preds = %if.then.us.i.1
  %incdec.ptr23.us.i.1 = getelementptr inbounds i8, ptr %arrayidx4, i64 2
  %conv16.us.i.2 = zext i8 %10 to i32
  %sub.i.us.i.2 = sub nsw i32 24, %conv16.us.i.2
  %shr.i.us.i.2 = lshr i32 %and10.i, %sub.i.us.i.2
  %11 = load i8, ptr %incdec.ptr23.us.i.1, align 2
  %conv20.us.i.2 = zext i8 %11 to i32
  %cmp21.not.us.i.2 = icmp eq i32 %shr.i.us.i.2, %conv20.us.i.2
  br i1 %cmp21.not.us.i.2, label %if.end, label %if.then.us.i.2

if.then.us.i.2:                                   ; preds = %lor.lhs.false.us.i.2, %if.then.us.i.1
  %incdec.ptr.us.i.2 = getelementptr inbounds i8, ptr %arrayidx, i64 3
  %12 = load i8, ptr %incdec.ptr.us.i.2, align 1
  %cmp17.us.i.3 = icmp eq i8 %12, 0
  br i1 %cmp17.us.i.3, label %if.then.us.i.3, label %lor.lhs.false.us.i.3

lor.lhs.false.us.i.3:                             ; preds = %if.then.us.i.2
  %incdec.ptr23.us.i.2 = getelementptr inbounds i8, ptr %arrayidx4, i64 3
  %conv16.us.i.3 = zext i8 %12 to i32
  %sub.i.us.i.3 = sub nsw i32 24, %conv16.us.i.3
  %shr.i.us.i.3 = lshr i32 %and10.i, %sub.i.us.i.3
  %13 = load i8, ptr %incdec.ptr23.us.i.2, align 1
  %conv20.us.i.3 = zext i8 %13 to i32
  %cmp21.not.us.i.3 = icmp eq i32 %shr.i.us.i.3, %conv20.us.i.3
  br i1 %cmp21.not.us.i.3, label %if.end, label %if.then.us.i.3

if.then.us.i.3:                                   ; preds = %lor.lhs.false.us.i.3, %if.then.us.i.2
  %incdec.ptr.us.i.3 = getelementptr inbounds i8, ptr %arrayidx, i64 4
  %14 = load i8, ptr %incdec.ptr.us.i.3, align 4
  %cmp17.us.i.4 = icmp eq i8 %14, 0
  br i1 %cmp17.us.i.4, label %if.then.us.i.4, label %lor.lhs.false.us.i.4

lor.lhs.false.us.i.4:                             ; preds = %if.then.us.i.3
  %incdec.ptr23.us.i.3 = getelementptr inbounds i8, ptr %arrayidx4, i64 4
  %conv16.us.i.4 = zext i8 %14 to i32
  %sub.i.us.i.4 = sub nsw i32 24, %conv16.us.i.4
  %shr.i.us.i.4 = lshr i32 %and10.i, %sub.i.us.i.4
  %15 = load i8, ptr %incdec.ptr23.us.i.3, align 4
  %conv20.us.i.4 = zext i8 %15 to i32
  %cmp21.not.us.i.4 = icmp eq i32 %shr.i.us.i.4, %conv20.us.i.4
  br i1 %cmp21.not.us.i.4, label %if.end, label %if.then.us.i.4

if.then.us.i.4:                                   ; preds = %lor.lhs.false.us.i.4, %if.then.us.i.3
  %incdec.ptr.us.i.4 = getelementptr inbounds i8, ptr %arrayidx, i64 5
  %16 = load i8, ptr %incdec.ptr.us.i.4, align 1
  %cmp17.us.i.5 = icmp eq i8 %16, 0
  br i1 %cmp17.us.i.5, label %if.then.us.i.5, label %lor.lhs.false.us.i.5

lor.lhs.false.us.i.5:                             ; preds = %if.then.us.i.4
  %incdec.ptr23.us.i.4 = getelementptr inbounds i8, ptr %arrayidx4, i64 5
  %conv16.us.i.5 = zext i8 %16 to i32
  %sub.i.us.i.5 = sub nsw i32 24, %conv16.us.i.5
  %shr.i.us.i.5 = lshr i32 %and10.i, %sub.i.us.i.5
  %17 = load i8, ptr %incdec.ptr23.us.i.4, align 1
  %conv20.us.i.5 = zext i8 %17 to i32
  %cmp21.not.us.i.5 = icmp eq i32 %shr.i.us.i.5, %conv20.us.i.5
  br i1 %cmp21.not.us.i.5, label %if.end, label %if.then.us.i.5

if.then.us.i.5:                                   ; preds = %lor.lhs.false.us.i.5, %if.then.us.i.4
  %incdec.ptr.us.i.5 = getelementptr inbounds i8, ptr %arrayidx, i64 6
  %18 = load i8, ptr %incdec.ptr.us.i.5, align 2
  %cmp17.us.i.6 = icmp eq i8 %18, 0
  br i1 %cmp17.us.i.6, label %if.then.us.i.6, label %lor.lhs.false.us.i.6

lor.lhs.false.us.i.6:                             ; preds = %if.then.us.i.5
  %incdec.ptr23.us.i.5 = getelementptr inbounds i8, ptr %arrayidx4, i64 6
  %conv16.us.i.6 = zext i8 %18 to i32
  %sub.i.us.i.6 = sub nsw i32 24, %conv16.us.i.6
  %shr.i.us.i.6 = lshr i32 %and10.i, %sub.i.us.i.6
  %19 = load i8, ptr %incdec.ptr23.us.i.5, align 2
  %conv20.us.i.6 = zext i8 %19 to i32
  %cmp21.not.us.i.6 = icmp eq i32 %shr.i.us.i.6, %conv20.us.i.6
  br i1 %cmp21.not.us.i.6, label %if.end, label %if.then.us.i.6

if.then.us.i.6:                                   ; preds = %lor.lhs.false.us.i.6, %if.then.us.i.5
  %incdec.ptr.us.i.6 = getelementptr inbounds i8, ptr %arrayidx, i64 7
  %20 = load i8, ptr %incdec.ptr.us.i.6, align 1
  %cmp17.us.i.7 = icmp eq i8 %20, 0
  br i1 %cmp17.us.i.7, label %if.then.us.i.7, label %lor.lhs.false.us.i.7

lor.lhs.false.us.i.7:                             ; preds = %if.then.us.i.6
  %incdec.ptr23.us.i.6 = getelementptr inbounds i8, ptr %arrayidx4, i64 7
  %conv16.us.i.7 = zext i8 %20 to i32
  %sub.i.us.i.7 = sub nsw i32 24, %conv16.us.i.7
  %shr.i.us.i.7 = lshr i32 %and10.i, %sub.i.us.i.7
  %21 = load i8, ptr %incdec.ptr23.us.i.6, align 1
  %conv20.us.i.7 = zext i8 %21 to i32
  %cmp21.not.us.i.7 = icmp eq i32 %shr.i.us.i.7, %conv20.us.i.7
  br i1 %cmp21.not.us.i.7, label %if.end, label %if.then.us.i.7

if.then.us.i.7:                                   ; preds = %lor.lhs.false.us.i.7, %if.then.us.i.6
  %incdec.ptr.us.i.7 = getelementptr inbounds i8, ptr %arrayidx, i64 8
  %22 = load i8, ptr %incdec.ptr.us.i.7, align 8
  %cmp17.us.i.8 = icmp eq i8 %22, 0
  br i1 %cmp17.us.i.8, label %if.then.us.i.8, label %lor.lhs.false.us.i.8

lor.lhs.false.us.i.8:                             ; preds = %if.then.us.i.7
  %incdec.ptr23.us.i.7 = getelementptr inbounds i8, ptr %arrayidx4, i64 8
  %conv16.us.i.8 = zext i8 %22 to i32
  %sub.i.us.i.8 = sub nsw i32 24, %conv16.us.i.8
  %shr.i.us.i.8 = lshr i32 %and10.i, %sub.i.us.i.8
  %23 = load i8, ptr %incdec.ptr23.us.i.7, align 8
  %conv20.us.i.8 = zext i8 %23 to i32
  %cmp21.not.us.i.8 = icmp eq i32 %shr.i.us.i.8, %conv20.us.i.8
  br i1 %cmp21.not.us.i.8, label %if.end, label %if.then.us.i.8

if.then.us.i.8:                                   ; preds = %lor.lhs.false.us.i.8, %if.then.us.i.7
  %incdec.ptr.us.i.8 = getelementptr inbounds i8, ptr %arrayidx, i64 9
  %24 = load i8, ptr %incdec.ptr.us.i.8, align 1
  %cmp17.us.i.9 = icmp eq i8 %24, 0
  br i1 %cmp17.us.i.9, label %if.then.us.i.9, label %lor.lhs.false.us.i.9

lor.lhs.false.us.i.9:                             ; preds = %if.then.us.i.8
  %incdec.ptr23.us.i.8 = getelementptr inbounds i8, ptr %arrayidx4, i64 9
  %conv16.us.i.9 = zext i8 %24 to i32
  %sub.i.us.i.9 = sub nsw i32 24, %conv16.us.i.9
  %shr.i.us.i.9 = lshr i32 %and10.i, %sub.i.us.i.9
  %25 = load i8, ptr %incdec.ptr23.us.i.8, align 1
  %conv20.us.i.9 = zext i8 %25 to i32
  %cmp21.not.us.i.9 = icmp eq i32 %shr.i.us.i.9, %conv20.us.i.9
  br i1 %cmp21.not.us.i.9, label %if.end, label %if.then.us.i.9

if.then.us.i.9:                                   ; preds = %lor.lhs.false.us.i.9, %if.then.us.i.8
  %incdec.ptr.us.i.9 = getelementptr inbounds i8, ptr %arrayidx, i64 10
  %26 = load i8, ptr %incdec.ptr.us.i.9, align 2
  %cmp17.us.i.10 = icmp eq i8 %26, 0
  br i1 %cmp17.us.i.10, label %if.then.us.i.10, label %lor.lhs.false.us.i.10

lor.lhs.false.us.i.10:                            ; preds = %if.then.us.i.9
  %incdec.ptr23.us.i.9 = getelementptr inbounds i8, ptr %arrayidx4, i64 10
  %conv16.us.i.10 = zext i8 %26 to i32
  %sub.i.us.i.10 = sub nsw i32 24, %conv16.us.i.10
  %shr.i.us.i.10 = lshr i32 %and10.i, %sub.i.us.i.10
  %27 = load i8, ptr %incdec.ptr23.us.i.9, align 2
  %conv20.us.i.10 = zext i8 %27 to i32
  %cmp21.not.us.i.10 = icmp eq i32 %shr.i.us.i.10, %conv20.us.i.10
  br i1 %cmp21.not.us.i.10, label %if.end, label %if.then.us.i.10

if.then.us.i.10:                                  ; preds = %lor.lhs.false.us.i.10, %if.then.us.i.9
  %incdec.ptr.us.i.10 = getelementptr inbounds i8, ptr %arrayidx, i64 11
  %28 = load i8, ptr %incdec.ptr.us.i.10, align 1
  %cmp17.us.i.11 = icmp eq i8 %28, 0
  br i1 %cmp17.us.i.11, label %if.then.us.i.11, label %lor.lhs.false.us.i.11

lor.lhs.false.us.i.11:                            ; preds = %if.then.us.i.10
  %incdec.ptr23.us.i.10 = getelementptr inbounds i8, ptr %arrayidx4, i64 11
  %conv16.us.i.11 = zext i8 %28 to i32
  %sub.i.us.i.11 = sub nsw i32 24, %conv16.us.i.11
  %shr.i.us.i.11 = lshr i32 %and10.i, %sub.i.us.i.11
  %29 = load i8, ptr %incdec.ptr23.us.i.10, align 1
  %conv20.us.i.11 = zext i8 %29 to i32
  %cmp21.not.us.i.11 = icmp eq i32 %shr.i.us.i.11, %conv20.us.i.11
  br i1 %cmp21.not.us.i.11, label %if.end, label %if.then.us.i.11

if.then.us.i.11:                                  ; preds = %lor.lhs.false.us.i.11, %if.then.us.i.10
  %incdec.ptr.us.i.11 = getelementptr inbounds i8, ptr %arrayidx, i64 12
  %30 = load i8, ptr %incdec.ptr.us.i.11, align 4
  %cmp17.us.i.12 = icmp eq i8 %30, 0
  br i1 %cmp17.us.i.12, label %if.then.us.i.12, label %lor.lhs.false.us.i.12

lor.lhs.false.us.i.12:                            ; preds = %if.then.us.i.11
  %incdec.ptr23.us.i.11 = getelementptr inbounds i8, ptr %arrayidx4, i64 12
  %conv16.us.i.12 = zext i8 %30 to i32
  %sub.i.us.i.12 = sub nsw i32 24, %conv16.us.i.12
  %shr.i.us.i.12 = lshr i32 %and10.i, %sub.i.us.i.12
  %31 = load i8, ptr %incdec.ptr23.us.i.11, align 4
  %conv20.us.i.12 = zext i8 %31 to i32
  %cmp21.not.us.i.12 = icmp eq i32 %shr.i.us.i.12, %conv20.us.i.12
  br i1 %cmp21.not.us.i.12, label %if.end, label %if.then.us.i.12

if.then.us.i.12:                                  ; preds = %lor.lhs.false.us.i.12, %if.then.us.i.11
  %incdec.ptr.us.i.12 = getelementptr inbounds i8, ptr %arrayidx, i64 13
  %32 = load i8, ptr %incdec.ptr.us.i.12, align 1
  %cmp17.us.i.13 = icmp eq i8 %32, 0
  br i1 %cmp17.us.i.13, label %if.then.us.i.13, label %lor.lhs.false.us.i.13

lor.lhs.false.us.i.13:                            ; preds = %if.then.us.i.12
  %incdec.ptr23.us.i.12 = getelementptr inbounds i8, ptr %arrayidx4, i64 13
  %conv16.us.i.13 = zext i8 %32 to i32
  %sub.i.us.i.13 = sub nsw i32 24, %conv16.us.i.13
  %shr.i.us.i.13 = lshr i32 %and10.i, %sub.i.us.i.13
  %33 = load i8, ptr %incdec.ptr23.us.i.12, align 1
  %conv20.us.i.13 = zext i8 %33 to i32
  %cmp21.not.us.i.13 = icmp eq i32 %shr.i.us.i.13, %conv20.us.i.13
  br i1 %cmp21.not.us.i.13, label %if.end, label %if.then.us.i.13

if.then.us.i.13:                                  ; preds = %lor.lhs.false.us.i.13, %if.then.us.i.12
  %incdec.ptr.us.i.13 = getelementptr inbounds i8, ptr %arrayidx, i64 14
  %34 = load i8, ptr %incdec.ptr.us.i.13, align 2
  %cmp17.us.i.14 = icmp eq i8 %34, 0
  br i1 %cmp17.us.i.14, label %if.then.us.i.14, label %lor.lhs.false.us.i.14

lor.lhs.false.us.i.14:                            ; preds = %if.then.us.i.13
  %incdec.ptr23.us.i.13 = getelementptr inbounds i8, ptr %arrayidx4, i64 14
  %conv16.us.i.14 = zext i8 %34 to i32
  %sub.i.us.i.14 = sub nsw i32 24, %conv16.us.i.14
  %shr.i.us.i.14 = lshr i32 %and10.i, %sub.i.us.i.14
  %35 = load i8, ptr %incdec.ptr23.us.i.13, align 2
  %conv20.us.i.14 = zext i8 %35 to i32
  %cmp21.not.us.i.14 = icmp eq i32 %shr.i.us.i.14, %conv20.us.i.14
  br i1 %cmp21.not.us.i.14, label %if.end, label %if.then.us.i.14

if.then.us.i.14:                                  ; preds = %lor.lhs.false.us.i.14, %if.then.us.i.13
  %incdec.ptr.us.i.14 = getelementptr inbounds i8, ptr %arrayidx, i64 15
  %36 = load i8, ptr %incdec.ptr.us.i.14, align 1
  %cmp17.us.i.15 = icmp eq i8 %36, 0
  br i1 %cmp17.us.i.15, label %if.then.us.i.15, label %lor.lhs.false.us.i.15

lor.lhs.false.us.i.15:                            ; preds = %if.then.us.i.14
  %incdec.ptr23.us.i.14 = getelementptr inbounds i8, ptr %arrayidx4, i64 15
  %conv16.us.i.15 = zext i8 %36 to i32
  %sub.i.us.i.15 = sub nsw i32 24, %conv16.us.i.15
  %shr.i.us.i.15 = lshr i32 %and10.i, %sub.i.us.i.15
  %37 = load i8, ptr %incdec.ptr23.us.i.14, align 1
  %conv20.us.i.15 = zext i8 %37 to i32
  %cmp21.not.us.i.15 = icmp eq i32 %shr.i.us.i.15, %conv20.us.i.15
  br i1 %cmp21.not.us.i.15, label %if.end, label %if.then.us.i.15

if.then.us.i.15:                                  ; preds = %lor.lhs.false.us.i.15, %if.then.us.i.14
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7)
  tail call void @exit(i32 noundef -1) #14
  unreachable

if.end:                                           ; preds = %lor.lhs.false.us.i.15, %lor.lhs.false.us.i.14, %lor.lhs.false.us.i.13, %lor.lhs.false.us.i.12, %lor.lhs.false.us.i.11, %lor.lhs.false.us.i.10, %lor.lhs.false.us.i.9, %lor.lhs.false.us.i.8, %lor.lhs.false.us.i.7, %lor.lhs.false.us.i.6, %lor.lhs.false.us.i.5, %lor.lhs.false.us.i.4, %lor.lhs.false.us.i.3, %lor.lhs.false.us.i.2, %lor.lhs.false.us.i.1, %lor.lhs.false.us.i
  %i.064.us.i.lcssa = phi i32 [ 0, %lor.lhs.false.us.i ], [ 1, %lor.lhs.false.us.i.1 ], [ 2, %lor.lhs.false.us.i.2 ], [ 3, %lor.lhs.false.us.i.3 ], [ 4, %lor.lhs.false.us.i.4 ], [ 5, %lor.lhs.false.us.i.5 ], [ 6, %lor.lhs.false.us.i.6 ], [ 7, %lor.lhs.false.us.i.7 ], [ 8, %lor.lhs.false.us.i.8 ], [ 9, %lor.lhs.false.us.i.9 ], [ 10, %lor.lhs.false.us.i.10 ], [ 11, %lor.lhs.false.us.i.11 ], [ 12, %lor.lhs.false.us.i.12 ], [ 13, %lor.lhs.false.us.i.13 ], [ 14, %lor.lhs.false.us.i.14 ], [ 15, %lor.lhs.false.us.i.15 ]
  %conv16.us.i.lcssa = phi i32 [ %conv16.us.i, %lor.lhs.false.us.i ], [ %conv16.us.i.1, %lor.lhs.false.us.i.1 ], [ %conv16.us.i.2, %lor.lhs.false.us.i.2 ], [ %conv16.us.i.3, %lor.lhs.false.us.i.3 ], [ %conv16.us.i.4, %lor.lhs.false.us.i.4 ], [ %conv16.us.i.5, %lor.lhs.false.us.i.5 ], [ %conv16.us.i.6, %lor.lhs.false.us.i.6 ], [ %conv16.us.i.7, %lor.lhs.false.us.i.7 ], [ %conv16.us.i.8, %lor.lhs.false.us.i.8 ], [ %conv16.us.i.9, %lor.lhs.false.us.i.9 ], [ %conv16.us.i.10, %lor.lhs.false.us.i.10 ], [ %conv16.us.i.11, %lor.lhs.false.us.i.11 ], [ %conv16.us.i.12, %lor.lhs.false.us.i.12 ], [ %conv16.us.i.13, %lor.lhs.false.us.i.13 ], [ %conv16.us.i.14, %lor.lhs.false.us.i.14 ], [ %conv16.us.i.15, %lor.lhs.false.us.i.15 ]
  %len25.i = getelementptr inbounds i8, ptr %sym, i64 12
  store i32 %conv16.us.i.lcssa, ptr %len25.i, align 4
  %38 = load i32, ptr %frame_bitoffset2.i, align 4
  %add27.i = add nsw i32 %38, %conv16.us.i.lcssa
  store i32 %add27.i, ptr %frame_bitoffset2.i, align 4
  store i32 %i.064.us.i.lcssa, ptr %value1, align 4
  %value2.i = getelementptr inbounds i8, ptr %sym, i64 8
  store i32 0, ptr %value2.i, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @readSyntaxElement_TotalZerosChromaDC(ptr nocapture noundef readonly %p_Vid, ptr nocapture noundef %sym, ptr nocapture noundef %currStream) local_unnamed_addr #0 {
entry:
  %active_sps = getelementptr inbounds i8, ptr %p_Vid, i64 16
  %0 = load ptr, ptr %active_sps, align 8
  %chroma_format_idc = getelementptr inbounds i8, ptr %0, i64 36
  %1 = load i32, ptr %chroma_format_idc, align 4
  %sub = add i32 %1, -1
  %value1 = getelementptr inbounds i8, ptr %sym, i64 4
  %2 = load i32, ptr %value1, align 4
  %idxprom = sext i32 %sub to i64
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [3 x [15 x [16 x i8]]], ptr @readSyntaxElement_TotalZerosChromaDC.lentab, i64 0, i64 %idxprom, i64 %idxprom2
  %arrayidx8 = getelementptr inbounds [3 x [15 x [16 x i8]]], ptr @readSyntaxElement_TotalZerosChromaDC.codtab, i64 0, i64 %idxprom, i64 %idxprom2
  %frame_bitoffset2.i = getelementptr inbounds i8, ptr %currStream, i64 8
  %streamBuffer.i = getelementptr inbounds i8, ptr %currStream, i64 16
  %3 = load ptr, ptr %streamBuffer.i, align 8
  %4 = load i32, ptr %frame_bitoffset2.i, align 4
  %shr.i = ashr i32 %4, 3
  %idxprom.i = sext i32 %shr.i to i64
  %arrayidx3.i = getelementptr inbounds i8, ptr %3, i64 %idxprom.i
  %5 = load i8, ptr %arrayidx3.i, align 1
  %conv.i = zext i8 %5 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %add.ptr.i = getelementptr inbounds i8, ptr %arrayidx3.i, i64 1
  %6 = load i8, ptr %add.ptr.i, align 1
  %conv4.i = zext i8 %6 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 8
  %add.i = or disjoint i32 %shl5.i, %shl.i
  %add.ptr6.i = getelementptr inbounds i8, ptr %arrayidx3.i, i64 2
  %7 = load i8, ptr %add.ptr6.i, align 1
  %conv7.i = zext i8 %7 to i32
  %add8.i = or disjoint i32 %add.i, %conv7.i
  %and.i = and i32 %4, 7
  %shl9.i = shl nuw nsw i32 %add8.i, %and.i
  %and10.i = and i32 %shl9.i, 16777215
  %8 = load i8, ptr %arrayidx3, align 16
  %cmp17.us.i = icmp eq i8 %8, 0
  br i1 %cmp17.us.i, label %if.then.us.i, label %lor.lhs.false.us.i

lor.lhs.false.us.i:                               ; preds = %entry
  %conv16.us.i = zext i8 %8 to i32
  %sub.i.us.i = sub nsw i32 24, %conv16.us.i
  %shr.i.us.i = lshr i32 %and10.i, %sub.i.us.i
  %9 = load i8, ptr %arrayidx8, align 16
  %conv20.us.i = zext i8 %9 to i32
  %cmp21.not.us.i = icmp eq i32 %shr.i.us.i, %conv20.us.i
  br i1 %cmp21.not.us.i, label %if.end, label %if.then.us.i

if.then.us.i:                                     ; preds = %lor.lhs.false.us.i, %entry
  %incdec.ptr.us.i = getelementptr inbounds i8, ptr %arrayidx3, i64 1
  %10 = load i8, ptr %incdec.ptr.us.i, align 1
  %cmp17.us.i.1 = icmp eq i8 %10, 0
  br i1 %cmp17.us.i.1, label %if.then.us.i.1, label %lor.lhs.false.us.i.1

lor.lhs.false.us.i.1:                             ; preds = %if.then.us.i
  %incdec.ptr23.us.i = getelementptr inbounds i8, ptr %arrayidx8, i64 1
  %conv16.us.i.1 = zext i8 %10 to i32
  %sub.i.us.i.1 = sub nsw i32 24, %conv16.us.i.1
  %shr.i.us.i.1 = lshr i32 %and10.i, %sub.i.us.i.1
  %11 = load i8, ptr %incdec.ptr23.us.i, align 1
  %conv20.us.i.1 = zext i8 %11 to i32
  %cmp21.not.us.i.1 = icmp eq i32 %shr.i.us.i.1, %conv20.us.i.1
  br i1 %cmp21.not.us.i.1, label %if.end, label %if.then.us.i.1

if.then.us.i.1:                                   ; preds = %lor.lhs.false.us.i.1, %if.then.us.i
  %incdec.ptr.us.i.1 = getelementptr inbounds i8, ptr %arrayidx3, i64 2
  %12 = load i8, ptr %incdec.ptr.us.i.1, align 2
  %cmp17.us.i.2 = icmp eq i8 %12, 0
  br i1 %cmp17.us.i.2, label %if.then.us.i.2, label %lor.lhs.false.us.i.2

lor.lhs.false.us.i.2:                             ; preds = %if.then.us.i.1
  %incdec.ptr23.us.i.1 = getelementptr inbounds i8, ptr %arrayidx8, i64 2
  %conv16.us.i.2 = zext i8 %12 to i32
  %sub.i.us.i.2 = sub nsw i32 24, %conv16.us.i.2
  %shr.i.us.i.2 = lshr i32 %and10.i, %sub.i.us.i.2
  %13 = load i8, ptr %incdec.ptr23.us.i.1, align 2
  %conv20.us.i.2 = zext i8 %13 to i32
  %cmp21.not.us.i.2 = icmp eq i32 %shr.i.us.i.2, %conv20.us.i.2
  br i1 %cmp21.not.us.i.2, label %if.end, label %if.then.us.i.2

if.then.us.i.2:                                   ; preds = %lor.lhs.false.us.i.2, %if.then.us.i.1
  %incdec.ptr.us.i.2 = getelementptr inbounds i8, ptr %arrayidx3, i64 3
  %14 = load i8, ptr %incdec.ptr.us.i.2, align 1
  %cmp17.us.i.3 = icmp eq i8 %14, 0
  br i1 %cmp17.us.i.3, label %if.then.us.i.3, label %lor.lhs.false.us.i.3

lor.lhs.false.us.i.3:                             ; preds = %if.then.us.i.2
  %incdec.ptr23.us.i.2 = getelementptr inbounds i8, ptr %arrayidx8, i64 3
  %conv16.us.i.3 = zext i8 %14 to i32
  %sub.i.us.i.3 = sub nsw i32 24, %conv16.us.i.3
  %shr.i.us.i.3 = lshr i32 %and10.i, %sub.i.us.i.3
  %15 = load i8, ptr %incdec.ptr23.us.i.2, align 1
  %conv20.us.i.3 = zext i8 %15 to i32
  %cmp21.not.us.i.3 = icmp eq i32 %shr.i.us.i.3, %conv20.us.i.3
  br i1 %cmp21.not.us.i.3, label %if.end, label %if.then.us.i.3

if.then.us.i.3:                                   ; preds = %lor.lhs.false.us.i.3, %if.then.us.i.2
  %incdec.ptr.us.i.3 = getelementptr inbounds i8, ptr %arrayidx3, i64 4
  %16 = load i8, ptr %incdec.ptr.us.i.3, align 4
  %cmp17.us.i.4 = icmp eq i8 %16, 0
  br i1 %cmp17.us.i.4, label %if.then.us.i.4, label %lor.lhs.false.us.i.4

lor.lhs.false.us.i.4:                             ; preds = %if.then.us.i.3
  %incdec.ptr23.us.i.3 = getelementptr inbounds i8, ptr %arrayidx8, i64 4
  %conv16.us.i.4 = zext i8 %16 to i32
  %sub.i.us.i.4 = sub nsw i32 24, %conv16.us.i.4
  %shr.i.us.i.4 = lshr i32 %and10.i, %sub.i.us.i.4
  %17 = load i8, ptr %incdec.ptr23.us.i.3, align 4
  %conv20.us.i.4 = zext i8 %17 to i32
  %cmp21.not.us.i.4 = icmp eq i32 %shr.i.us.i.4, %conv20.us.i.4
  br i1 %cmp21.not.us.i.4, label %if.end, label %if.then.us.i.4

if.then.us.i.4:                                   ; preds = %lor.lhs.false.us.i.4, %if.then.us.i.3
  %incdec.ptr.us.i.4 = getelementptr inbounds i8, ptr %arrayidx3, i64 5
  %18 = load i8, ptr %incdec.ptr.us.i.4, align 1
  %cmp17.us.i.5 = icmp eq i8 %18, 0
  br i1 %cmp17.us.i.5, label %if.then.us.i.5, label %lor.lhs.false.us.i.5

lor.lhs.false.us.i.5:                             ; preds = %if.then.us.i.4
  %incdec.ptr23.us.i.4 = getelementptr inbounds i8, ptr %arrayidx8, i64 5
  %conv16.us.i.5 = zext i8 %18 to i32
  %sub.i.us.i.5 = sub nsw i32 24, %conv16.us.i.5
  %shr.i.us.i.5 = lshr i32 %and10.i, %sub.i.us.i.5
  %19 = load i8, ptr %incdec.ptr23.us.i.4, align 1
  %conv20.us.i.5 = zext i8 %19 to i32
  %cmp21.not.us.i.5 = icmp eq i32 %shr.i.us.i.5, %conv20.us.i.5
  br i1 %cmp21.not.us.i.5, label %if.end, label %if.then.us.i.5

if.then.us.i.5:                                   ; preds = %lor.lhs.false.us.i.5, %if.then.us.i.4
  %incdec.ptr.us.i.5 = getelementptr inbounds i8, ptr %arrayidx3, i64 6
  %20 = load i8, ptr %incdec.ptr.us.i.5, align 2
  %cmp17.us.i.6 = icmp eq i8 %20, 0
  br i1 %cmp17.us.i.6, label %if.then.us.i.6, label %lor.lhs.false.us.i.6

lor.lhs.false.us.i.6:                             ; preds = %if.then.us.i.5
  %incdec.ptr23.us.i.5 = getelementptr inbounds i8, ptr %arrayidx8, i64 6
  %conv16.us.i.6 = zext i8 %20 to i32
  %sub.i.us.i.6 = sub nsw i32 24, %conv16.us.i.6
  %shr.i.us.i.6 = lshr i32 %and10.i, %sub.i.us.i.6
  %21 = load i8, ptr %incdec.ptr23.us.i.5, align 2
  %conv20.us.i.6 = zext i8 %21 to i32
  %cmp21.not.us.i.6 = icmp eq i32 %shr.i.us.i.6, %conv20.us.i.6
  br i1 %cmp21.not.us.i.6, label %if.end, label %if.then.us.i.6

if.then.us.i.6:                                   ; preds = %lor.lhs.false.us.i.6, %if.then.us.i.5
  %incdec.ptr.us.i.6 = getelementptr inbounds i8, ptr %arrayidx3, i64 7
  %22 = load i8, ptr %incdec.ptr.us.i.6, align 1
  %cmp17.us.i.7 = icmp eq i8 %22, 0
  br i1 %cmp17.us.i.7, label %if.then.us.i.7, label %lor.lhs.false.us.i.7

lor.lhs.false.us.i.7:                             ; preds = %if.then.us.i.6
  %incdec.ptr23.us.i.6 = getelementptr inbounds i8, ptr %arrayidx8, i64 7
  %conv16.us.i.7 = zext i8 %22 to i32
  %sub.i.us.i.7 = sub nsw i32 24, %conv16.us.i.7
  %shr.i.us.i.7 = lshr i32 %and10.i, %sub.i.us.i.7
  %23 = load i8, ptr %incdec.ptr23.us.i.6, align 1
  %conv20.us.i.7 = zext i8 %23 to i32
  %cmp21.not.us.i.7 = icmp eq i32 %shr.i.us.i.7, %conv20.us.i.7
  br i1 %cmp21.not.us.i.7, label %if.end, label %if.then.us.i.7

if.then.us.i.7:                                   ; preds = %lor.lhs.false.us.i.7, %if.then.us.i.6
  %incdec.ptr.us.i.7 = getelementptr inbounds i8, ptr %arrayidx3, i64 8
  %24 = load i8, ptr %incdec.ptr.us.i.7, align 8
  %cmp17.us.i.8 = icmp eq i8 %24, 0
  br i1 %cmp17.us.i.8, label %if.then.us.i.8, label %lor.lhs.false.us.i.8

lor.lhs.false.us.i.8:                             ; preds = %if.then.us.i.7
  %incdec.ptr23.us.i.7 = getelementptr inbounds i8, ptr %arrayidx8, i64 8
  %conv16.us.i.8 = zext i8 %24 to i32
  %sub.i.us.i.8 = sub nsw i32 24, %conv16.us.i.8
  %shr.i.us.i.8 = lshr i32 %and10.i, %sub.i.us.i.8
  %25 = load i8, ptr %incdec.ptr23.us.i.7, align 8
  %conv20.us.i.8 = zext i8 %25 to i32
  %cmp21.not.us.i.8 = icmp eq i32 %shr.i.us.i.8, %conv20.us.i.8
  br i1 %cmp21.not.us.i.8, label %if.end, label %if.then.us.i.8

if.then.us.i.8:                                   ; preds = %lor.lhs.false.us.i.8, %if.then.us.i.7
  %incdec.ptr.us.i.8 = getelementptr inbounds i8, ptr %arrayidx3, i64 9
  %26 = load i8, ptr %incdec.ptr.us.i.8, align 1
  %cmp17.us.i.9 = icmp eq i8 %26, 0
  br i1 %cmp17.us.i.9, label %if.then.us.i.9, label %lor.lhs.false.us.i.9

lor.lhs.false.us.i.9:                             ; preds = %if.then.us.i.8
  %incdec.ptr23.us.i.8 = getelementptr inbounds i8, ptr %arrayidx8, i64 9
  %conv16.us.i.9 = zext i8 %26 to i32
  %sub.i.us.i.9 = sub nsw i32 24, %conv16.us.i.9
  %shr.i.us.i.9 = lshr i32 %and10.i, %sub.i.us.i.9
  %27 = load i8, ptr %incdec.ptr23.us.i.8, align 1
  %conv20.us.i.9 = zext i8 %27 to i32
  %cmp21.not.us.i.9 = icmp eq i32 %shr.i.us.i.9, %conv20.us.i.9
  br i1 %cmp21.not.us.i.9, label %if.end, label %if.then.us.i.9

if.then.us.i.9:                                   ; preds = %lor.lhs.false.us.i.9, %if.then.us.i.8
  %incdec.ptr.us.i.9 = getelementptr inbounds i8, ptr %arrayidx3, i64 10
  %28 = load i8, ptr %incdec.ptr.us.i.9, align 2
  %cmp17.us.i.10 = icmp eq i8 %28, 0
  br i1 %cmp17.us.i.10, label %if.then.us.i.10, label %lor.lhs.false.us.i.10

lor.lhs.false.us.i.10:                            ; preds = %if.then.us.i.9
  %incdec.ptr23.us.i.9 = getelementptr inbounds i8, ptr %arrayidx8, i64 10
  %conv16.us.i.10 = zext i8 %28 to i32
  %sub.i.us.i.10 = sub nsw i32 24, %conv16.us.i.10
  %shr.i.us.i.10 = lshr i32 %and10.i, %sub.i.us.i.10
  %29 = load i8, ptr %incdec.ptr23.us.i.9, align 2
  %conv20.us.i.10 = zext i8 %29 to i32
  %cmp21.not.us.i.10 = icmp eq i32 %shr.i.us.i.10, %conv20.us.i.10
  br i1 %cmp21.not.us.i.10, label %if.end, label %if.then.us.i.10

if.then.us.i.10:                                  ; preds = %lor.lhs.false.us.i.10, %if.then.us.i.9
  %incdec.ptr.us.i.10 = getelementptr inbounds i8, ptr %arrayidx3, i64 11
  %30 = load i8, ptr %incdec.ptr.us.i.10, align 1
  %cmp17.us.i.11 = icmp eq i8 %30, 0
  br i1 %cmp17.us.i.11, label %if.then.us.i.11, label %lor.lhs.false.us.i.11

lor.lhs.false.us.i.11:                            ; preds = %if.then.us.i.10
  %incdec.ptr23.us.i.10 = getelementptr inbounds i8, ptr %arrayidx8, i64 11
  %conv16.us.i.11 = zext i8 %30 to i32
  %sub.i.us.i.11 = sub nsw i32 24, %conv16.us.i.11
  %shr.i.us.i.11 = lshr i32 %and10.i, %sub.i.us.i.11
  %31 = load i8, ptr %incdec.ptr23.us.i.10, align 1
  %conv20.us.i.11 = zext i8 %31 to i32
  %cmp21.not.us.i.11 = icmp eq i32 %shr.i.us.i.11, %conv20.us.i.11
  br i1 %cmp21.not.us.i.11, label %if.end, label %if.then.us.i.11

if.then.us.i.11:                                  ; preds = %lor.lhs.false.us.i.11, %if.then.us.i.10
  %incdec.ptr.us.i.11 = getelementptr inbounds i8, ptr %arrayidx3, i64 12
  %32 = load i8, ptr %incdec.ptr.us.i.11, align 4
  %cmp17.us.i.12 = icmp eq i8 %32, 0
  br i1 %cmp17.us.i.12, label %if.then.us.i.12, label %lor.lhs.false.us.i.12

lor.lhs.false.us.i.12:                            ; preds = %if.then.us.i.11
  %incdec.ptr23.us.i.11 = getelementptr inbounds i8, ptr %arrayidx8, i64 12
  %conv16.us.i.12 = zext i8 %32 to i32
  %sub.i.us.i.12 = sub nsw i32 24, %conv16.us.i.12
  %shr.i.us.i.12 = lshr i32 %and10.i, %sub.i.us.i.12
  %33 = load i8, ptr %incdec.ptr23.us.i.11, align 4
  %conv20.us.i.12 = zext i8 %33 to i32
  %cmp21.not.us.i.12 = icmp eq i32 %shr.i.us.i.12, %conv20.us.i.12
  br i1 %cmp21.not.us.i.12, label %if.end, label %if.then.us.i.12

if.then.us.i.12:                                  ; preds = %lor.lhs.false.us.i.12, %if.then.us.i.11
  %incdec.ptr.us.i.12 = getelementptr inbounds i8, ptr %arrayidx3, i64 13
  %34 = load i8, ptr %incdec.ptr.us.i.12, align 1
  %cmp17.us.i.13 = icmp eq i8 %34, 0
  br i1 %cmp17.us.i.13, label %if.then.us.i.13, label %lor.lhs.false.us.i.13

lor.lhs.false.us.i.13:                            ; preds = %if.then.us.i.12
  %incdec.ptr23.us.i.12 = getelementptr inbounds i8, ptr %arrayidx8, i64 13
  %conv16.us.i.13 = zext i8 %34 to i32
  %sub.i.us.i.13 = sub nsw i32 24, %conv16.us.i.13
  %shr.i.us.i.13 = lshr i32 %and10.i, %sub.i.us.i.13
  %35 = load i8, ptr %incdec.ptr23.us.i.12, align 1
  %conv20.us.i.13 = zext i8 %35 to i32
  %cmp21.not.us.i.13 = icmp eq i32 %shr.i.us.i.13, %conv20.us.i.13
  br i1 %cmp21.not.us.i.13, label %if.end, label %if.then.us.i.13

if.then.us.i.13:                                  ; preds = %lor.lhs.false.us.i.13, %if.then.us.i.12
  %incdec.ptr.us.i.13 = getelementptr inbounds i8, ptr %arrayidx3, i64 14
  %36 = load i8, ptr %incdec.ptr.us.i.13, align 2
  %cmp17.us.i.14 = icmp eq i8 %36, 0
  br i1 %cmp17.us.i.14, label %if.then.us.i.14, label %lor.lhs.false.us.i.14

lor.lhs.false.us.i.14:                            ; preds = %if.then.us.i.13
  %incdec.ptr23.us.i.13 = getelementptr inbounds i8, ptr %arrayidx8, i64 14
  %conv16.us.i.14 = zext i8 %36 to i32
  %sub.i.us.i.14 = sub nsw i32 24, %conv16.us.i.14
  %shr.i.us.i.14 = lshr i32 %and10.i, %sub.i.us.i.14
  %37 = load i8, ptr %incdec.ptr23.us.i.13, align 2
  %conv20.us.i.14 = zext i8 %37 to i32
  %cmp21.not.us.i.14 = icmp eq i32 %shr.i.us.i.14, %conv20.us.i.14
  br i1 %cmp21.not.us.i.14, label %if.end, label %if.then.us.i.14

if.then.us.i.14:                                  ; preds = %lor.lhs.false.us.i.14, %if.then.us.i.13
  %incdec.ptr.us.i.14 = getelementptr inbounds i8, ptr %arrayidx3, i64 15
  %38 = load i8, ptr %incdec.ptr.us.i.14, align 1
  %cmp17.us.i.15 = icmp eq i8 %38, 0
  br i1 %cmp17.us.i.15, label %if.then.us.i.15, label %lor.lhs.false.us.i.15

lor.lhs.false.us.i.15:                            ; preds = %if.then.us.i.14
  %incdec.ptr23.us.i.14 = getelementptr inbounds i8, ptr %arrayidx8, i64 15
  %conv16.us.i.15 = zext i8 %38 to i32
  %sub.i.us.i.15 = sub nsw i32 24, %conv16.us.i.15
  %shr.i.us.i.15 = lshr i32 %and10.i, %sub.i.us.i.15
  %39 = load i8, ptr %incdec.ptr23.us.i.14, align 1
  %conv20.us.i.15 = zext i8 %39 to i32
  %cmp21.not.us.i.15 = icmp eq i32 %shr.i.us.i.15, %conv20.us.i.15
  br i1 %cmp21.not.us.i.15, label %if.end, label %if.then.us.i.15

if.then.us.i.15:                                  ; preds = %lor.lhs.false.us.i.15, %if.then.us.i.14
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  tail call void @exit(i32 noundef -1) #14
  unreachable

if.end:                                           ; preds = %lor.lhs.false.us.i.15, %lor.lhs.false.us.i.14, %lor.lhs.false.us.i.13, %lor.lhs.false.us.i.12, %lor.lhs.false.us.i.11, %lor.lhs.false.us.i.10, %lor.lhs.false.us.i.9, %lor.lhs.false.us.i.8, %lor.lhs.false.us.i.7, %lor.lhs.false.us.i.6, %lor.lhs.false.us.i.5, %lor.lhs.false.us.i.4, %lor.lhs.false.us.i.3, %lor.lhs.false.us.i.2, %lor.lhs.false.us.i.1, %lor.lhs.false.us.i
  %i.064.us.i.lcssa = phi i32 [ 0, %lor.lhs.false.us.i ], [ 1, %lor.lhs.false.us.i.1 ], [ 2, %lor.lhs.false.us.i.2 ], [ 3, %lor.lhs.false.us.i.3 ], [ 4, %lor.lhs.false.us.i.4 ], [ 5, %lor.lhs.false.us.i.5 ], [ 6, %lor.lhs.false.us.i.6 ], [ 7, %lor.lhs.false.us.i.7 ], [ 8, %lor.lhs.false.us.i.8 ], [ 9, %lor.lhs.false.us.i.9 ], [ 10, %lor.lhs.false.us.i.10 ], [ 11, %lor.lhs.false.us.i.11 ], [ 12, %lor.lhs.false.us.i.12 ], [ 13, %lor.lhs.false.us.i.13 ], [ 14, %lor.lhs.false.us.i.14 ], [ 15, %lor.lhs.false.us.i.15 ]
  %conv16.us.i.lcssa = phi i32 [ %conv16.us.i, %lor.lhs.false.us.i ], [ %conv16.us.i.1, %lor.lhs.false.us.i.1 ], [ %conv16.us.i.2, %lor.lhs.false.us.i.2 ], [ %conv16.us.i.3, %lor.lhs.false.us.i.3 ], [ %conv16.us.i.4, %lor.lhs.false.us.i.4 ], [ %conv16.us.i.5, %lor.lhs.false.us.i.5 ], [ %conv16.us.i.6, %lor.lhs.false.us.i.6 ], [ %conv16.us.i.7, %lor.lhs.false.us.i.7 ], [ %conv16.us.i.8, %lor.lhs.false.us.i.8 ], [ %conv16.us.i.9, %lor.lhs.false.us.i.9 ], [ %conv16.us.i.10, %lor.lhs.false.us.i.10 ], [ %conv16.us.i.11, %lor.lhs.false.us.i.11 ], [ %conv16.us.i.12, %lor.lhs.false.us.i.12 ], [ %conv16.us.i.13, %lor.lhs.false.us.i.13 ], [ %conv16.us.i.14, %lor.lhs.false.us.i.14 ], [ %conv16.us.i.15, %lor.lhs.false.us.i.15 ]
  %len25.i = getelementptr inbounds i8, ptr %sym, i64 12
  store i32 %conv16.us.i.lcssa, ptr %len25.i, align 4
  %40 = load i32, ptr %frame_bitoffset2.i, align 4
  %add27.i = add nsw i32 %40, %conv16.us.i.lcssa
  store i32 %add27.i, ptr %frame_bitoffset2.i, align 4
  store i32 %i.064.us.i.lcssa, ptr %value1, align 4
  %value2.i = getelementptr inbounds i8, ptr %sym, i64 8
  store i32 0, ptr %value2.i, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @readSyntaxElement_Run(ptr nocapture noundef %sym, ptr nocapture noundef %currStream) local_unnamed_addr #0 {
entry:
  %value1 = getelementptr inbounds i8, ptr %sym, i64 4
  %0 = load i32, ptr %value1, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [15 x [16 x i8]], ptr @readSyntaxElement_Run.lentab, i64 0, i64 %idxprom
  %arrayidx4 = getelementptr inbounds [15 x [16 x i8]], ptr @readSyntaxElement_Run.codtab, i64 0, i64 %idxprom
  %frame_bitoffset2.i = getelementptr inbounds i8, ptr %currStream, i64 8
  %streamBuffer.i = getelementptr inbounds i8, ptr %currStream, i64 16
  %1 = load ptr, ptr %streamBuffer.i, align 8
  %2 = load i32, ptr %frame_bitoffset2.i, align 4
  %shr.i = ashr i32 %2, 3
  %idxprom.i = sext i32 %shr.i to i64
  %arrayidx3.i = getelementptr inbounds i8, ptr %1, i64 %idxprom.i
  %3 = load i8, ptr %arrayidx3.i, align 1
  %conv.i = zext i8 %3 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %add.ptr.i = getelementptr inbounds i8, ptr %arrayidx3.i, i64 1
  %4 = load i8, ptr %add.ptr.i, align 1
  %conv4.i = zext i8 %4 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 8
  %add.i = or disjoint i32 %shl5.i, %shl.i
  %add.ptr6.i = getelementptr inbounds i8, ptr %arrayidx3.i, i64 2
  %5 = load i8, ptr %add.ptr6.i, align 1
  %conv7.i = zext i8 %5 to i32
  %add8.i = or disjoint i32 %add.i, %conv7.i
  %and.i = and i32 %2, 7
  %shl9.i = shl nuw nsw i32 %add8.i, %and.i
  %and10.i = and i32 %shl9.i, 16777215
  %6 = load i8, ptr %arrayidx, align 16
  %cmp17.us.i = icmp eq i8 %6, 0
  br i1 %cmp17.us.i, label %if.then.us.i, label %lor.lhs.false.us.i

lor.lhs.false.us.i:                               ; preds = %entry
  %conv16.us.i = zext i8 %6 to i32
  %sub.i.us.i = sub nsw i32 24, %conv16.us.i
  %shr.i.us.i = lshr i32 %and10.i, %sub.i.us.i
  %7 = load i8, ptr %arrayidx4, align 16
  %conv20.us.i = zext i8 %7 to i32
  %cmp21.not.us.i = icmp eq i32 %shr.i.us.i, %conv20.us.i
  br i1 %cmp21.not.us.i, label %if.end, label %if.then.us.i

if.then.us.i:                                     ; preds = %lor.lhs.false.us.i, %entry
  %incdec.ptr.us.i = getelementptr inbounds i8, ptr %arrayidx, i64 1
  %8 = load i8, ptr %incdec.ptr.us.i, align 1
  %cmp17.us.i.1 = icmp eq i8 %8, 0
  br i1 %cmp17.us.i.1, label %if.then.us.i.1, label %lor.lhs.false.us.i.1

lor.lhs.false.us.i.1:                             ; preds = %if.then.us.i
  %incdec.ptr23.us.i = getelementptr inbounds i8, ptr %arrayidx4, i64 1
  %conv16.us.i.1 = zext i8 %8 to i32
  %sub.i.us.i.1 = sub nsw i32 24, %conv16.us.i.1
  %shr.i.us.i.1 = lshr i32 %and10.i, %sub.i.us.i.1
  %9 = load i8, ptr %incdec.ptr23.us.i, align 1
  %conv20.us.i.1 = zext i8 %9 to i32
  %cmp21.not.us.i.1 = icmp eq i32 %shr.i.us.i.1, %conv20.us.i.1
  br i1 %cmp21.not.us.i.1, label %if.end, label %if.then.us.i.1

if.then.us.i.1:                                   ; preds = %lor.lhs.false.us.i.1, %if.then.us.i
  %incdec.ptr.us.i.1 = getelementptr inbounds i8, ptr %arrayidx, i64 2
  %10 = load i8, ptr %incdec.ptr.us.i.1, align 2
  %cmp17.us.i.2 = icmp eq i8 %10, 0
  br i1 %cmp17.us.i.2, label %if.then.us.i.2, label %lor.lhs.false.us.i.2

lor.lhs.false.us.i.2:                             ; preds = %if.then.us.i.1
  %incdec.ptr23.us.i.1 = getelementptr inbounds i8, ptr %arrayidx4, i64 2
  %conv16.us.i.2 = zext i8 %10 to i32
  %sub.i.us.i.2 = sub nsw i32 24, %conv16.us.i.2
  %shr.i.us.i.2 = lshr i32 %and10.i, %sub.i.us.i.2
  %11 = load i8, ptr %incdec.ptr23.us.i.1, align 2
  %conv20.us.i.2 = zext i8 %11 to i32
  %cmp21.not.us.i.2 = icmp eq i32 %shr.i.us.i.2, %conv20.us.i.2
  br i1 %cmp21.not.us.i.2, label %if.end, label %if.then.us.i.2

if.then.us.i.2:                                   ; preds = %lor.lhs.false.us.i.2, %if.then.us.i.1
  %incdec.ptr.us.i.2 = getelementptr inbounds i8, ptr %arrayidx, i64 3
  %12 = load i8, ptr %incdec.ptr.us.i.2, align 1
  %cmp17.us.i.3 = icmp eq i8 %12, 0
  br i1 %cmp17.us.i.3, label %if.then.us.i.3, label %lor.lhs.false.us.i.3

lor.lhs.false.us.i.3:                             ; preds = %if.then.us.i.2
  %incdec.ptr23.us.i.2 = getelementptr inbounds i8, ptr %arrayidx4, i64 3
  %conv16.us.i.3 = zext i8 %12 to i32
  %sub.i.us.i.3 = sub nsw i32 24, %conv16.us.i.3
  %shr.i.us.i.3 = lshr i32 %and10.i, %sub.i.us.i.3
  %13 = load i8, ptr %incdec.ptr23.us.i.2, align 1
  %conv20.us.i.3 = zext i8 %13 to i32
  %cmp21.not.us.i.3 = icmp eq i32 %shr.i.us.i.3, %conv20.us.i.3
  br i1 %cmp21.not.us.i.3, label %if.end, label %if.then.us.i.3

if.then.us.i.3:                                   ; preds = %lor.lhs.false.us.i.3, %if.then.us.i.2
  %incdec.ptr.us.i.3 = getelementptr inbounds i8, ptr %arrayidx, i64 4
  %14 = load i8, ptr %incdec.ptr.us.i.3, align 4
  %cmp17.us.i.4 = icmp eq i8 %14, 0
  br i1 %cmp17.us.i.4, label %if.then.us.i.4, label %lor.lhs.false.us.i.4

lor.lhs.false.us.i.4:                             ; preds = %if.then.us.i.3
  %incdec.ptr23.us.i.3 = getelementptr inbounds i8, ptr %arrayidx4, i64 4
  %conv16.us.i.4 = zext i8 %14 to i32
  %sub.i.us.i.4 = sub nsw i32 24, %conv16.us.i.4
  %shr.i.us.i.4 = lshr i32 %and10.i, %sub.i.us.i.4
  %15 = load i8, ptr %incdec.ptr23.us.i.3, align 4
  %conv20.us.i.4 = zext i8 %15 to i32
  %cmp21.not.us.i.4 = icmp eq i32 %shr.i.us.i.4, %conv20.us.i.4
  br i1 %cmp21.not.us.i.4, label %if.end, label %if.then.us.i.4

if.then.us.i.4:                                   ; preds = %lor.lhs.false.us.i.4, %if.then.us.i.3
  %incdec.ptr.us.i.4 = getelementptr inbounds i8, ptr %arrayidx, i64 5
  %16 = load i8, ptr %incdec.ptr.us.i.4, align 1
  %cmp17.us.i.5 = icmp eq i8 %16, 0
  br i1 %cmp17.us.i.5, label %if.then.us.i.5, label %lor.lhs.false.us.i.5

lor.lhs.false.us.i.5:                             ; preds = %if.then.us.i.4
  %incdec.ptr23.us.i.4 = getelementptr inbounds i8, ptr %arrayidx4, i64 5
  %conv16.us.i.5 = zext i8 %16 to i32
  %sub.i.us.i.5 = sub nsw i32 24, %conv16.us.i.5
  %shr.i.us.i.5 = lshr i32 %and10.i, %sub.i.us.i.5
  %17 = load i8, ptr %incdec.ptr23.us.i.4, align 1
  %conv20.us.i.5 = zext i8 %17 to i32
  %cmp21.not.us.i.5 = icmp eq i32 %shr.i.us.i.5, %conv20.us.i.5
  br i1 %cmp21.not.us.i.5, label %if.end, label %if.then.us.i.5

if.then.us.i.5:                                   ; preds = %lor.lhs.false.us.i.5, %if.then.us.i.4
  %incdec.ptr.us.i.5 = getelementptr inbounds i8, ptr %arrayidx, i64 6
  %18 = load i8, ptr %incdec.ptr.us.i.5, align 2
  %cmp17.us.i.6 = icmp eq i8 %18, 0
  br i1 %cmp17.us.i.6, label %if.then.us.i.6, label %lor.lhs.false.us.i.6

lor.lhs.false.us.i.6:                             ; preds = %if.then.us.i.5
  %incdec.ptr23.us.i.5 = getelementptr inbounds i8, ptr %arrayidx4, i64 6
  %conv16.us.i.6 = zext i8 %18 to i32
  %sub.i.us.i.6 = sub nsw i32 24, %conv16.us.i.6
  %shr.i.us.i.6 = lshr i32 %and10.i, %sub.i.us.i.6
  %19 = load i8, ptr %incdec.ptr23.us.i.5, align 2
  %conv20.us.i.6 = zext i8 %19 to i32
  %cmp21.not.us.i.6 = icmp eq i32 %shr.i.us.i.6, %conv20.us.i.6
  br i1 %cmp21.not.us.i.6, label %if.end, label %if.then.us.i.6

if.then.us.i.6:                                   ; preds = %lor.lhs.false.us.i.6, %if.then.us.i.5
  %incdec.ptr.us.i.6 = getelementptr inbounds i8, ptr %arrayidx, i64 7
  %20 = load i8, ptr %incdec.ptr.us.i.6, align 1
  %cmp17.us.i.7 = icmp eq i8 %20, 0
  br i1 %cmp17.us.i.7, label %if.then.us.i.7, label %lor.lhs.false.us.i.7

lor.lhs.false.us.i.7:                             ; preds = %if.then.us.i.6
  %incdec.ptr23.us.i.6 = getelementptr inbounds i8, ptr %arrayidx4, i64 7
  %conv16.us.i.7 = zext i8 %20 to i32
  %sub.i.us.i.7 = sub nsw i32 24, %conv16.us.i.7
  %shr.i.us.i.7 = lshr i32 %and10.i, %sub.i.us.i.7
  %21 = load i8, ptr %incdec.ptr23.us.i.6, align 1
  %conv20.us.i.7 = zext i8 %21 to i32
  %cmp21.not.us.i.7 = icmp eq i32 %shr.i.us.i.7, %conv20.us.i.7
  br i1 %cmp21.not.us.i.7, label %if.end, label %if.then.us.i.7

if.then.us.i.7:                                   ; preds = %lor.lhs.false.us.i.7, %if.then.us.i.6
  %incdec.ptr.us.i.7 = getelementptr inbounds i8, ptr %arrayidx, i64 8
  %22 = load i8, ptr %incdec.ptr.us.i.7, align 8
  %cmp17.us.i.8 = icmp eq i8 %22, 0
  br i1 %cmp17.us.i.8, label %if.then.us.i.8, label %lor.lhs.false.us.i.8

lor.lhs.false.us.i.8:                             ; preds = %if.then.us.i.7
  %incdec.ptr23.us.i.7 = getelementptr inbounds i8, ptr %arrayidx4, i64 8
  %conv16.us.i.8 = zext i8 %22 to i32
  %sub.i.us.i.8 = sub nsw i32 24, %conv16.us.i.8
  %shr.i.us.i.8 = lshr i32 %and10.i, %sub.i.us.i.8
  %23 = load i8, ptr %incdec.ptr23.us.i.7, align 8
  %conv20.us.i.8 = zext i8 %23 to i32
  %cmp21.not.us.i.8 = icmp eq i32 %shr.i.us.i.8, %conv20.us.i.8
  br i1 %cmp21.not.us.i.8, label %if.end, label %if.then.us.i.8

if.then.us.i.8:                                   ; preds = %lor.lhs.false.us.i.8, %if.then.us.i.7
  %incdec.ptr.us.i.8 = getelementptr inbounds i8, ptr %arrayidx, i64 9
  %24 = load i8, ptr %incdec.ptr.us.i.8, align 1
  %cmp17.us.i.9 = icmp eq i8 %24, 0
  br i1 %cmp17.us.i.9, label %if.then.us.i.9, label %lor.lhs.false.us.i.9

lor.lhs.false.us.i.9:                             ; preds = %if.then.us.i.8
  %incdec.ptr23.us.i.8 = getelementptr inbounds i8, ptr %arrayidx4, i64 9
  %conv16.us.i.9 = zext i8 %24 to i32
  %sub.i.us.i.9 = sub nsw i32 24, %conv16.us.i.9
  %shr.i.us.i.9 = lshr i32 %and10.i, %sub.i.us.i.9
  %25 = load i8, ptr %incdec.ptr23.us.i.8, align 1
  %conv20.us.i.9 = zext i8 %25 to i32
  %cmp21.not.us.i.9 = icmp eq i32 %shr.i.us.i.9, %conv20.us.i.9
  br i1 %cmp21.not.us.i.9, label %if.end, label %if.then.us.i.9

if.then.us.i.9:                                   ; preds = %lor.lhs.false.us.i.9, %if.then.us.i.8
  %incdec.ptr.us.i.9 = getelementptr inbounds i8, ptr %arrayidx, i64 10
  %26 = load i8, ptr %incdec.ptr.us.i.9, align 2
  %cmp17.us.i.10 = icmp eq i8 %26, 0
  br i1 %cmp17.us.i.10, label %if.then.us.i.10, label %lor.lhs.false.us.i.10

lor.lhs.false.us.i.10:                            ; preds = %if.then.us.i.9
  %incdec.ptr23.us.i.9 = getelementptr inbounds i8, ptr %arrayidx4, i64 10
  %conv16.us.i.10 = zext i8 %26 to i32
  %sub.i.us.i.10 = sub nsw i32 24, %conv16.us.i.10
  %shr.i.us.i.10 = lshr i32 %and10.i, %sub.i.us.i.10
  %27 = load i8, ptr %incdec.ptr23.us.i.9, align 2
  %conv20.us.i.10 = zext i8 %27 to i32
  %cmp21.not.us.i.10 = icmp eq i32 %shr.i.us.i.10, %conv20.us.i.10
  br i1 %cmp21.not.us.i.10, label %if.end, label %if.then.us.i.10

if.then.us.i.10:                                  ; preds = %lor.lhs.false.us.i.10, %if.then.us.i.9
  %incdec.ptr.us.i.10 = getelementptr inbounds i8, ptr %arrayidx, i64 11
  %28 = load i8, ptr %incdec.ptr.us.i.10, align 1
  %cmp17.us.i.11 = icmp eq i8 %28, 0
  br i1 %cmp17.us.i.11, label %if.then.us.i.11, label %lor.lhs.false.us.i.11

lor.lhs.false.us.i.11:                            ; preds = %if.then.us.i.10
  %incdec.ptr23.us.i.10 = getelementptr inbounds i8, ptr %arrayidx4, i64 11
  %conv16.us.i.11 = zext i8 %28 to i32
  %sub.i.us.i.11 = sub nsw i32 24, %conv16.us.i.11
  %shr.i.us.i.11 = lshr i32 %and10.i, %sub.i.us.i.11
  %29 = load i8, ptr %incdec.ptr23.us.i.10, align 1
  %conv20.us.i.11 = zext i8 %29 to i32
  %cmp21.not.us.i.11 = icmp eq i32 %shr.i.us.i.11, %conv20.us.i.11
  br i1 %cmp21.not.us.i.11, label %if.end, label %if.then.us.i.11

if.then.us.i.11:                                  ; preds = %lor.lhs.false.us.i.11, %if.then.us.i.10
  %incdec.ptr.us.i.11 = getelementptr inbounds i8, ptr %arrayidx, i64 12
  %30 = load i8, ptr %incdec.ptr.us.i.11, align 4
  %cmp17.us.i.12 = icmp eq i8 %30, 0
  br i1 %cmp17.us.i.12, label %if.then.us.i.12, label %lor.lhs.false.us.i.12

lor.lhs.false.us.i.12:                            ; preds = %if.then.us.i.11
  %incdec.ptr23.us.i.11 = getelementptr inbounds i8, ptr %arrayidx4, i64 12
  %conv16.us.i.12 = zext i8 %30 to i32
  %sub.i.us.i.12 = sub nsw i32 24, %conv16.us.i.12
  %shr.i.us.i.12 = lshr i32 %and10.i, %sub.i.us.i.12
  %31 = load i8, ptr %incdec.ptr23.us.i.11, align 4
  %conv20.us.i.12 = zext i8 %31 to i32
  %cmp21.not.us.i.12 = icmp eq i32 %shr.i.us.i.12, %conv20.us.i.12
  br i1 %cmp21.not.us.i.12, label %if.end, label %if.then.us.i.12

if.then.us.i.12:                                  ; preds = %lor.lhs.false.us.i.12, %if.then.us.i.11
  %incdec.ptr.us.i.12 = getelementptr inbounds i8, ptr %arrayidx, i64 13
  %32 = load i8, ptr %incdec.ptr.us.i.12, align 1
  %cmp17.us.i.13 = icmp eq i8 %32, 0
  br i1 %cmp17.us.i.13, label %if.then.us.i.13, label %lor.lhs.false.us.i.13

lor.lhs.false.us.i.13:                            ; preds = %if.then.us.i.12
  %incdec.ptr23.us.i.12 = getelementptr inbounds i8, ptr %arrayidx4, i64 13
  %conv16.us.i.13 = zext i8 %32 to i32
  %sub.i.us.i.13 = sub nsw i32 24, %conv16.us.i.13
  %shr.i.us.i.13 = lshr i32 %and10.i, %sub.i.us.i.13
  %33 = load i8, ptr %incdec.ptr23.us.i.12, align 1
  %conv20.us.i.13 = zext i8 %33 to i32
  %cmp21.not.us.i.13 = icmp eq i32 %shr.i.us.i.13, %conv20.us.i.13
  br i1 %cmp21.not.us.i.13, label %if.end, label %if.then.us.i.13

if.then.us.i.13:                                  ; preds = %lor.lhs.false.us.i.13, %if.then.us.i.12
  %incdec.ptr.us.i.13 = getelementptr inbounds i8, ptr %arrayidx, i64 14
  %34 = load i8, ptr %incdec.ptr.us.i.13, align 2
  %cmp17.us.i.14 = icmp eq i8 %34, 0
  br i1 %cmp17.us.i.14, label %if.then.us.i.14, label %lor.lhs.false.us.i.14

lor.lhs.false.us.i.14:                            ; preds = %if.then.us.i.13
  %incdec.ptr23.us.i.13 = getelementptr inbounds i8, ptr %arrayidx4, i64 14
  %conv16.us.i.14 = zext i8 %34 to i32
  %sub.i.us.i.14 = sub nsw i32 24, %conv16.us.i.14
  %shr.i.us.i.14 = lshr i32 %and10.i, %sub.i.us.i.14
  %35 = load i8, ptr %incdec.ptr23.us.i.13, align 2
  %conv20.us.i.14 = zext i8 %35 to i32
  %cmp21.not.us.i.14 = icmp eq i32 %shr.i.us.i.14, %conv20.us.i.14
  br i1 %cmp21.not.us.i.14, label %if.end, label %if.then.us.i.14

if.then.us.i.14:                                  ; preds = %lor.lhs.false.us.i.14, %if.then.us.i.13
  %incdec.ptr.us.i.14 = getelementptr inbounds i8, ptr %arrayidx, i64 15
  %36 = load i8, ptr %incdec.ptr.us.i.14, align 1
  %cmp17.us.i.15 = icmp eq i8 %36, 0
  br i1 %cmp17.us.i.15, label %if.then.us.i.15, label %lor.lhs.false.us.i.15

lor.lhs.false.us.i.15:                            ; preds = %if.then.us.i.14
  %incdec.ptr23.us.i.14 = getelementptr inbounds i8, ptr %arrayidx4, i64 15
  %conv16.us.i.15 = zext i8 %36 to i32
  %sub.i.us.i.15 = sub nsw i32 24, %conv16.us.i.15
  %shr.i.us.i.15 = lshr i32 %and10.i, %sub.i.us.i.15
  %37 = load i8, ptr %incdec.ptr23.us.i.14, align 1
  %conv20.us.i.15 = zext i8 %37 to i32
  %cmp21.not.us.i.15 = icmp eq i32 %shr.i.us.i.15, %conv20.us.i.15
  br i1 %cmp21.not.us.i.15, label %if.end, label %if.then.us.i.15

if.then.us.i.15:                                  ; preds = %lor.lhs.false.us.i.15, %if.then.us.i.14
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  tail call void @exit(i32 noundef -1) #14
  unreachable

if.end:                                           ; preds = %lor.lhs.false.us.i.15, %lor.lhs.false.us.i.14, %lor.lhs.false.us.i.13, %lor.lhs.false.us.i.12, %lor.lhs.false.us.i.11, %lor.lhs.false.us.i.10, %lor.lhs.false.us.i.9, %lor.lhs.false.us.i.8, %lor.lhs.false.us.i.7, %lor.lhs.false.us.i.6, %lor.lhs.false.us.i.5, %lor.lhs.false.us.i.4, %lor.lhs.false.us.i.3, %lor.lhs.false.us.i.2, %lor.lhs.false.us.i.1, %lor.lhs.false.us.i
  %i.064.us.i.lcssa = phi i32 [ 0, %lor.lhs.false.us.i ], [ 1, %lor.lhs.false.us.i.1 ], [ 2, %lor.lhs.false.us.i.2 ], [ 3, %lor.lhs.false.us.i.3 ], [ 4, %lor.lhs.false.us.i.4 ], [ 5, %lor.lhs.false.us.i.5 ], [ 6, %lor.lhs.false.us.i.6 ], [ 7, %lor.lhs.false.us.i.7 ], [ 8, %lor.lhs.false.us.i.8 ], [ 9, %lor.lhs.false.us.i.9 ], [ 10, %lor.lhs.false.us.i.10 ], [ 11, %lor.lhs.false.us.i.11 ], [ 12, %lor.lhs.false.us.i.12 ], [ 13, %lor.lhs.false.us.i.13 ], [ 14, %lor.lhs.false.us.i.14 ], [ 15, %lor.lhs.false.us.i.15 ]
  %conv16.us.i.lcssa = phi i32 [ %conv16.us.i, %lor.lhs.false.us.i ], [ %conv16.us.i.1, %lor.lhs.false.us.i.1 ], [ %conv16.us.i.2, %lor.lhs.false.us.i.2 ], [ %conv16.us.i.3, %lor.lhs.false.us.i.3 ], [ %conv16.us.i.4, %lor.lhs.false.us.i.4 ], [ %conv16.us.i.5, %lor.lhs.false.us.i.5 ], [ %conv16.us.i.6, %lor.lhs.false.us.i.6 ], [ %conv16.us.i.7, %lor.lhs.false.us.i.7 ], [ %conv16.us.i.8, %lor.lhs.false.us.i.8 ], [ %conv16.us.i.9, %lor.lhs.false.us.i.9 ], [ %conv16.us.i.10, %lor.lhs.false.us.i.10 ], [ %conv16.us.i.11, %lor.lhs.false.us.i.11 ], [ %conv16.us.i.12, %lor.lhs.false.us.i.12 ], [ %conv16.us.i.13, %lor.lhs.false.us.i.13 ], [ %conv16.us.i.14, %lor.lhs.false.us.i.14 ], [ %conv16.us.i.15, %lor.lhs.false.us.i.15 ]
  %len25.i = getelementptr inbounds i8, ptr %sym, i64 12
  store i32 %conv16.us.i.lcssa, ptr %len25.i, align 4
  %38 = load i32, ptr %frame_bitoffset2.i, align 4
  %add27.i = add nsw i32 %38, %conv16.us.i.lcssa
  store i32 %add27.i, ptr %frame_bitoffset2.i, align 4
  store i32 %i.064.us.i.lcssa, ptr %value1, align 4
  %value2.i = getelementptr inbounds i8, ptr %sym, i64 8
  store i32 0, ptr %value2.i, align 8
  ret i32 0
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
