	.text
	.file	"cpu.c"
	.globl	x264_cpu_detect                 # -- Begin function x264_cpu_detect
	.p2align	4, 0x90
	.type	x264_cpu_detect,@function
x264_cpu_detect:                        # @x264_cpu_detect
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	x264_cpu_detect, .Lfunc_end0-x264_cpu_detect
	.cfi_endproc
                                        # -- End function
	.globl	x264_cpu_num_processors         # -- Begin function x264_cpu_num_processors
	.p2align	4, 0x90
	.type	x264_cpu_num_processors,@function
x264_cpu_num_processors:                # @x264_cpu_num_processors
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$1, %eax
	retq
.Lfunc_end1:
	.size	x264_cpu_num_processors, .Lfunc_end1-x264_cpu_num_processors
	.cfi_endproc
                                        # -- End function
	.type	x264_cpu_names,@object          # @x264_cpu_names
	.section	.rodata,"a",@progbits
	.globl	x264_cpu_names
	.p2align	4, 0x0
x264_cpu_names:
	.asciz	"Altivec\000\000\000\000\000\000\000\000"
	.long	4                               # 0x4
	.asciz	"MMX2\000\000\000\000\000\000\000\000\000\000\000"
	.long	24                              # 0x18
	.asciz	"MMXEXT\000\000\000\000\000\000\000\000\000"
	.long	24                              # 0x18
	.asciz	"SSE2Slow\000\000\000\000\000\000\000"
	.long	248                             # 0xf8
	.asciz	"SSE2\000\000\000\000\000\000\000\000\000\000\000"
	.long	120                             # 0x78
	.asciz	"SSE2Fast\000\000\000\000\000\000\000"
	.long	376                             # 0x178
	.asciz	"SSE3\000\000\000\000\000\000\000\000\000\000\000"
	.long	632                             # 0x278
	.asciz	"SSSE3\000\000\000\000\000\000\000\000\000\000"
	.long	1656                            # 0x678
	.asciz	"FastShuffle\000\000\000\000"
	.long	2168                            # 0x878
	.asciz	"SSE4.1\000\000\000\000\000\000\000\000\000"
	.long	9848                            # 0x2678
	.asciz	"SSE4.2\000\000\000\000\000\000\000\000\000"
	.long	26232                           # 0x6678
	.asciz	"Cache32\000\000\000\000\000\000\000\000"
	.long	1                               # 0x1
	.asciz	"Cache64\000\000\000\000\000\000\000\000"
	.long	2                               # 0x2
	.asciz	"SSEMisalign\000\000\000\000"
	.long	32768                           # 0x8000
	.asciz	"LZCNT\000\000\000\000\000\000\000\000\000\000"
	.long	65536                           # 0x10000
	.asciz	"Slow_mod4_stack"
	.long	4096                            # 0x1000
	.asciz	"ARMv6\000\000\000\000\000\000\000\000\000\000"
	.long	131072                          # 0x20000
	.asciz	"NEON\000\000\000\000\000\000\000\000\000\000\000"
	.long	262144                          # 0x40000
	.asciz	"Fast_NEON_MRC\000\000"
	.long	524288                          # 0x80000
	.asciz	"SlowCTZ\000\000\000\000\000\000\000\000"
	.long	1048576                         # 0x100000
	.asciz	"SlowAtom\000\000\000\000\000\000\000"
	.long	2097152                         # 0x200000
	.zero	20
	.size	x264_cpu_names, 440

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
