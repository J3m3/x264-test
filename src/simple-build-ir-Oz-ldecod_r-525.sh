#!/bin/bash
# Simple build script, potentially useful if building a GPL-redistributable
# version on a system *without* SPEC CPU2017.  See:
#
#     https://www.spec.org/cpu2017/Docs/licenses.html#GPLtarballs
#
# Note: if the benchmark uses "specpp", that is the freely-redistributable
#       preprocessor "filepp".   It is described at 
#         https://www.spec.org/cpu2017/Docs/utility.html#specpp  
#       and will need to be in your path.  You can find filepp sources as
#       modified by SPEC in redistributable_sources/modified/tools.src/harness-spec.tar.xz 
#---------------------------------------------------------------------------

/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/nal.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/nal.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/mbuffer_mvc.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/mbuffer_mvc.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/image.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/image.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/mb_access.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/mb_access.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/memalloc.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/memalloc.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/mc_prediction.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/mc_prediction.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/mb_prediction.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/mb_prediction.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/intra4x4_pred_mbaff.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/intra4x4_pred_mbaff.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/loop_filter_mbaff.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/loop_filter_mbaff.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/context_ini.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/context_ini.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/configfile.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/configfile.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/cabac.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/cabac.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/sei.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/sei.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/leaky_bucket.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/leaky_bucket.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/filehandle.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/filehandle.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/errorconcealment.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/errorconcealment.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/decoder_test.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/decoder_test.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/img_process.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/img_process.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/mv_prediction.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/mv_prediction.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/fmo.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/fmo.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/output.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/output.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/mc_direct.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/mc_direct.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/rtp.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/rtp.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/nalucommon.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/nalucommon.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/config_common.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/config_common.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/intra_chroma_pred.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/intra_chroma_pred.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/transform8x8.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/transform8x8.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/blk_prediction.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/blk_prediction.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/intra8x8_pred_mbaff.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/intra8x8_pred_mbaff.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/erc_do_i.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/erc_do_i.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/io_tiff.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/io_tiff.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/mbuffer.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/mbuffer.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/block.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/block.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/intra4x4_pred.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/intra4x4_pred.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/transform.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/transform.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/annexb.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/annexb.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/ldecod.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/ldecod.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/macroblock.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/macroblock.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/vlc.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/vlc.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/parset.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/parset.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/loop_filter_normal.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/loop_filter_normal.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/parsetcommon.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/parsetcommon.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/erc_do_p.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/erc_do_p.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/loopFilter.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/loopFilter.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/intra16x16_pred_mbaff.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/intra16x16_pred_mbaff.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/intra4x4_pred_normal.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/intra4x4_pred_normal.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/intra16x16_pred_normal.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/intra16x16_pred_normal.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/win32.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/win32.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/intra16x16_pred.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/intra16x16_pred.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/intra8x8_pred_normal.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/intra8x8_pred_normal.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/io_raw.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/io_raw.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/img_io.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/img_io.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/nalu.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/nalu.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/quant.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/quant.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/intra8x8_pred.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/intra8x8_pred.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/erc_api.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/erc_api.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/header.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/header.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/biaridecod.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/biaridecod.c
/home/yjs/workspace/GPUISel-llvm/build/bin/clang -Oz -S -emit-llvm -funroll-loops -mllvm -force-vector-interleave=4 -fvectorize -std=c99   -m64 -c -o ldecod_src/input.ll -DSPEC -DSPEC_CPU -DNDEBUG -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678           -fno-strict-aliasing   -DSPEC_LP64  ldecod_src/input.c
