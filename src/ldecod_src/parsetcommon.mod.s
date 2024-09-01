	.text
	.file	"parsetcommon.c"
	.file	0 "/home/yjs/workspace/x264-test/src" "ldecod_src/parsetcommon.c" md5 0x29e50fd146ea68377794b0403b2e61e9
	.globl	AllocPPS                        # -- Begin function AllocPPS
	.p2align	4, 0x90
	.type	AllocPPS,@function
AllocPPS:                               # @AllocPPS
.Lfunc_begin0:
	.loc	0 30 0                          # ldecod_src/parsetcommon.c:30:0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	.loc	0 33 11 prologue_end            # ldecod_src/parsetcommon.c:33:11
	movl	$1, %edi
	movl	$2216, %esi                     # imm = 0x8A8
	callq	calloc@PLT
.Ltmp0:
	#DEBUG_VALUE: AllocPPS:p <- $rax
	.loc	0 33 58 is_stmt 0               # ldecod_src/parsetcommon.c:33:58
	testq	%rax, %rax
.Ltmp1:
	.loc	0 33 8                          # ldecod_src/parsetcommon.c:33:8
	je	.LBB0_1
.Ltmp2:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: AllocPPS:p <- $rax
	.loc	0 36 4 epilogue_begin is_stmt 1 # ldecod_src/parsetcommon.c:36:4
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Ltmp3:
.LBB0_1:                                # %if.then
	.cfi_def_cfa_offset 16
	#DEBUG_VALUE: AllocPPS:p <- $rax
	.loc	0 34 6                          # ldecod_src/parsetcommon.c:34:6
	movl	$.L.str, %edi
	movq	%rax, %rbx
.Ltmp4:
	#DEBUG_VALUE: AllocPPS:p <- $rbx
	callq	no_mem_exit@PLT
.Ltmp5:
	.loc	0 0 6 is_stmt 0                 # ldecod_src/parsetcommon.c:0:6
	movq	%rbx, %rax
.Ltmp6:
	.loc	0 36 4 epilogue_begin is_stmt 1 # ldecod_src/parsetcommon.c:36:4
	popq	%rbx
.Ltmp7:
	#DEBUG_VALUE: AllocPPS:p <- $rax
	.cfi_def_cfa_offset 8
	retq
.Ltmp8:
.Lfunc_end0:
	.size	AllocPPS, .Lfunc_end0-AllocPPS
	.cfi_endproc
	.file	1 "/usr/include" "stdlib.h" md5 0x02258fad21adf111bb9df9825e61954a
	.file	2 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	3 "ldecod_src/inc" "memalloc.h" md5 0x88776e97a131c37d03036121c7c9e0ac
                                        # -- End function
	.globl	AllocSPS                        # -- Begin function AllocSPS
	.p2align	4, 0x90
	.type	AllocSPS,@function
AllocSPS:                               # @AllocSPS
.Lfunc_begin1:
	.loc	0 51 0                          # ldecod_src/parsetcommon.c:51:0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	.loc	0 54 11 prologue_end            # ldecod_src/parsetcommon.c:54:11
	movl	$1, %edi
	movl	$4128, %esi                     # imm = 0x1020
	callq	calloc@PLT
.Ltmp9:
	#DEBUG_VALUE: AllocSPS:p <- $rax
	.loc	0 54 58 is_stmt 0               # ldecod_src/parsetcommon.c:54:58
	testq	%rax, %rax
.Ltmp10:
	.loc	0 54 8                          # ldecod_src/parsetcommon.c:54:8
	je	.LBB1_1
.Ltmp11:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: AllocSPS:p <- $rax
	.loc	0 56 4 epilogue_begin is_stmt 1 # ldecod_src/parsetcommon.c:56:4
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Ltmp12:
.LBB1_1:                                # %if.then
	.cfi_def_cfa_offset 16
	#DEBUG_VALUE: AllocSPS:p <- $rax
	.loc	0 55 6                          # ldecod_src/parsetcommon.c:55:6
	movl	$.L.str.1, %edi
	movq	%rax, %rbx
.Ltmp13:
	#DEBUG_VALUE: AllocSPS:p <- $rbx
	callq	no_mem_exit@PLT
.Ltmp14:
	.loc	0 0 6 is_stmt 0                 # ldecod_src/parsetcommon.c:0:6
	movq	%rbx, %rax
.Ltmp15:
	.loc	0 56 4 epilogue_begin is_stmt 1 # ldecod_src/parsetcommon.c:56:4
	popq	%rbx
.Ltmp16:
	#DEBUG_VALUE: AllocSPS:p <- $rax
	.cfi_def_cfa_offset 8
	retq
.Ltmp17:
.Lfunc_end1:
	.size	AllocSPS, .Lfunc_end1-AllocSPS
	.cfi_endproc
                                        # -- End function
	.globl	FreePPS                         # -- Begin function FreePPS
	.p2align	4, 0x90
	.type	FreePPS,@function
FreePPS:                                # @FreePPS
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: FreePPS:pps <- $rdi
	.loc	0 73 13 prologue_end            # ldecod_src/parsetcommon.c:73:13
	movq	2160(%rdi), %rax
	.loc	0 73 28 is_stmt 0               # ldecod_src/parsetcommon.c:73:28
	testq	%rax, %rax
.Ltmp18:
	.loc	0 73 8                          # ldecod_src/parsetcommon.c:73:8
	je	free@PLT                        # TAILCALL
.Ltmp19:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: FreePPS:pps <- [DW_OP_LLVM_entry_value 1] $rdi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
.Ltmp20:
	.loc	0 74 6 is_stmt 1                # ldecod_src/parsetcommon.c:74:6
	movq	%rax, %rdi
	callq	free@PLT
.Ltmp21:
	.loc	0 0 6 is_stmt 0                 # ldecod_src/parsetcommon.c:0:6
	movq	%rbx, %rdi
	popq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.loc	0 75 4 is_stmt 1                # ldecod_src/parsetcommon.c:75:4
	jmp	free@PLT                        # TAILCALL
.Ltmp23:
.Lfunc_end2:
	.size	FreePPS, .Lfunc_end2-FreePPS
	.cfi_endproc
                                        # -- End function
	.globl	FreeSPS                         # -- Begin function FreeSPS
	.p2align	4, 0x90
	.type	FreeSPS,@function
FreeSPS:                                # @FreeSPS
.Lfunc_begin3:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: FreeSPS:sps <- $rdi
	.loc	0 92 4 prologue_end             # ldecod_src/parsetcommon.c:92:4
	jmp	free@PLT                        # TAILCALL
.Ltmp24:
.Lfunc_end3:
	.size	FreeSPS, .Lfunc_end3-FreeSPS
	.cfi_endproc
                                        # -- End function
	.globl	sps_is_equal                    # -- Begin function sps_is_equal
	.p2align	4, 0x90
	.type	sps_is_equal,@function
sps_is_equal:                           # @sps_is_equal
.Lfunc_begin4:
	.loc	0 97 0                          # ldecod_src/parsetcommon.c:97:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: sps_is_equal:sps1 <- $rdi
	#DEBUG_VALUE: sps_is_equal:sps2 <- $rsi
	#DEBUG_VALUE: sps_is_equal:equal <- 1
	xorl	%eax, %eax
.Ltmp25:
	.loc	0 101 9 prologue_end            # ldecod_src/parsetcommon.c:101:9
	cmpl	$0, (%rdi)
	.loc	0 101 22 is_stmt 0              # ldecod_src/parsetcommon.c:101:22
	je	.LBB4_26
.Ltmp26:
# %bb.1:                                # %lor.lhs.false
	#DEBUG_VALUE: sps_is_equal:sps1 <- $rdi
	#DEBUG_VALUE: sps_is_equal:sps2 <- $rsi
	#DEBUG_VALUE: sps_is_equal:equal <- 1
	.loc	0 101 27                        # ldecod_src/parsetcommon.c:101:27
	cmpl	$0, (%rsi)
.Ltmp27:
	.loc	0 101 7                         # ldecod_src/parsetcommon.c:101:7
	je	.LBB4_26
.Ltmp28:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: sps_is_equal:sps1 <- $rdi
	#DEBUG_VALUE: sps_is_equal:sps2 <- $rsi
	#DEBUG_VALUE: sps_is_equal:equal <- 1
	#DEBUG_VALUE: sps_is_equal:equal <- undef
	.loc	0 104 19 is_stmt 1              # ldecod_src/parsetcommon.c:104:19
	movdqu	4(%rdi), %xmm0
	.loc	0 104 40 is_stmt 0              # ldecod_src/parsetcommon.c:104:40
	movdqu	4(%rsi), %xmm1
	.loc	0 111 9 is_stmt 1               # ldecod_src/parsetcommon.c:111:9
	pcmpeqd	%xmm0, %xmm1
	.loc	0 108 19                        # ldecod_src/parsetcommon.c:108:19
	movq	28(%rdi), %xmm2                 # xmm2 = mem[0],zero
	.loc	0 110 19                        # ldecod_src/parsetcommon.c:110:19
	movq	2068(%rdi), %xmm0               # xmm0 = mem[0],zero
	.loc	0 104 31                        # ldecod_src/parsetcommon.c:104:31
	punpcklqdq	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0]
	movq	2068(%rsi), %xmm3               # xmm3 = mem[0],zero
	movq	28(%rsi), %xmm4                 # xmm4 = mem[0],zero
	punpcklqdq	%xmm3, %xmm4            # xmm4 = xmm4[0],xmm3[0]
	.loc	0 111 9                         # ldecod_src/parsetcommon.c:111:9
	pcmpeqd	%xmm2, %xmm4
	pand	%xmm1, %xmm4
	movmskps	%xmm4, %ecx
	xorl	$15, %ecx
	.loc	0 113 7                         # ldecod_src/parsetcommon.c:113:7
	je	.LBB4_3
.Ltmp29:
.LBB4_26:                               # %cleanup
	#DEBUG_VALUE: sps_is_equal:sps1 <- $rdi
	#DEBUG_VALUE: sps_is_equal:sps2 <- $rsi
	.loc	0 155 1                         # ldecod_src/parsetcommon.c:155:1
	retq
.Ltmp30:
.LBB4_3:                                # %if.end34
	#DEBUG_VALUE: sps_is_equal:sps1 <- $rdi
	#DEBUG_VALUE: sps_is_equal:sps2 <- $rsi
	.loc	0 115 7                         # ldecod_src/parsetcommon.c:115:7
	pshufd	$85, %xmm0, %xmm0               # xmm0 = xmm0[1,1,1,1]
	movd	%xmm0, %ecx
	movl	$1, %r9d
	cmpl	$1, %ecx
	je	.LBB4_6
.Ltmp31:
# %bb.4:                                # %if.end34
	#DEBUG_VALUE: sps_is_equal:sps1 <- $rdi
	#DEBUG_VALUE: sps_is_equal:sps2 <- $rsi
	testl	%ecx, %ecx
	jne	.LBB4_14
.Ltmp32:
# %bb.5:                                # %if.then38
	#DEBUG_VALUE: sps_is_equal:sps1 <- $rdi
	#DEBUG_VALUE: sps_is_equal:sps2 <- $rsi
	.loc	0 117 21                        # ldecod_src/parsetcommon.c:117:21
	movl	2076(%rdi), %ecx
	.loc	0 117 55 is_stmt 0              # ldecod_src/parsetcommon.c:117:55
	xorl	%r9d, %r9d
	cmpl	2076(%rsi), %ecx
	sete	%r9b
.Ltmp33:
	#DEBUG_VALUE: sps_is_equal:equal <- undef
.LBB4_14:                               # %if.end76
	#DEBUG_VALUE: sps_is_equal:sps1 <- $rdi
	#DEBUG_VALUE: sps_is_equal:sps2 <- $rsi
	#DEBUG_VALUE: sps_is_equal:equal <- $r9d
	.loc	0 132 19 is_stmt 1              # ldecod_src/parsetcommon.c:132:19
	movl	3120(%rdi), %ecx
	.loc	0 132 34 is_stmt 0              # ldecod_src/parsetcommon.c:132:34
	cmpl	3120(%rsi), %ecx
	setne	%cl
.Ltmp34:
	#DEBUG_VALUE: sps_is_equal:equal <- undef
	.loc	0 133 19 is_stmt 1              # ldecod_src/parsetcommon.c:133:19
	movdqu	3124(%rdi), %xmm0
	.loc	0 133 65 is_stmt 0              # ldecod_src/parsetcommon.c:133:65
	movdqu	3124(%rsi), %xmm1
	.loc	0 136 39 is_stmt 1              # ldecod_src/parsetcommon.c:136:39
	pcmpeqd	%xmm0, %xmm1
	pcmpeqd	%xmm2, %xmm2
	pxor	%xmm1, %xmm2
.Ltmp35:
	.loc	0 138 8                         # ldecod_src/parsetcommon.c:138:8
	pslld	$31, %xmm2
	movmskps	%xmm2, %edx
	testl	%edx, %edx
.Ltmp36:
	.loc	0 138 7 is_stmt 0               # ldecod_src/parsetcommon.c:138:7
	jne	.LBB4_26
.Ltmp37:
# %bb.15:                               # %if.end76
	#DEBUG_VALUE: sps_is_equal:sps1 <- $rdi
	#DEBUG_VALUE: sps_is_equal:sps2 <- $rsi
	testb	$1, %cl
	jne	.LBB4_26
.Ltmp38:
# %bb.16:                               # %if.end76
	#DEBUG_VALUE: sps_is_equal:sps1 <- $rdi
	#DEBUG_VALUE: sps_is_equal:sps2 <- $rsi
	testl	%r9d, %r9d
	je	.LBB4_26
.Ltmp39:
# %bb.17:                               # %if.end99
	#DEBUG_VALUE: sps_is_equal:sps1 <- $rdi
	#DEBUG_VALUE: sps_is_equal:sps2 <- $rsi
	.loc	0 139 8 is_stmt 1               # ldecod_src/parsetcommon.c:139:8
	pshufd	$255, %xmm0, %xmm0              # xmm0 = xmm0[3,3,3,3]
	movd	%xmm0, %edx
	xorl	%eax, %eax
	movl	$0, %ecx
	testl	%edx, %edx
.Ltmp40:
	.loc	0 139 7 is_stmt 0               # ldecod_src/parsetcommon.c:139:7
	jne	.LBB4_19
.Ltmp41:
# %bb.18:                               # %if.then102
	#DEBUG_VALUE: sps_is_equal:sps1 <- $rdi
	#DEBUG_VALUE: sps_is_equal:sps2 <- $rsi
	.loc	0 140 21 is_stmt 1              # ldecod_src/parsetcommon.c:140:21
	movl	3140(%rdi), %ecx
	.loc	0 140 50 is_stmt 0              # ldecod_src/parsetcommon.c:140:50
	cmpl	3140(%rsi), %ecx
	setne	%cl
.Ltmp42:
	#DEBUG_VALUE: sps_is_equal:equal <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $cl
.LBB4_19:                               # %if.end107
	#DEBUG_VALUE: sps_is_equal:sps1 <- $rdi
	#DEBUG_VALUE: sps_is_equal:sps2 <- $rsi
	#DEBUG_VALUE: sps_is_equal:equal <- [DW_OP_LLVM_convert 1 5, DW_OP_LLVM_convert 32 5, DW_OP_stack_value] $ecx
	#DEBUG_VALUE: sps_is_equal:equal <- undef
	.loc	0 143 19 is_stmt 1              # ldecod_src/parsetcommon.c:143:19
	movl	3148(%rdi), %edx
	.loc	0 143 39 is_stmt 0              # ldecod_src/parsetcommon.c:143:39
	cmpl	3148(%rsi), %edx
	.loc	0 144 7 is_stmt 1               # ldecod_src/parsetcommon.c:144:7
	jne	.LBB4_26
.Ltmp43:
# %bb.20:                               # %if.end107
	#DEBUG_VALUE: sps_is_equal:sps1 <- $rdi
	#DEBUG_VALUE: sps_is_equal:sps2 <- $rsi
	.loc	0 0 0 is_stmt 0                 # ldecod_src/parsetcommon.c:0:0
	movl	3144(%rsi), %r8d
	.loc	0 144 7                         # ldecod_src/parsetcommon.c:144:7
	cmpl	%r8d, 3144(%rdi)
	jne	.LBB4_26
.Ltmp44:
# %bb.21:                               # %if.end107
	#DEBUG_VALUE: sps_is_equal:sps1 <- $rdi
	#DEBUG_VALUE: sps_is_equal:sps2 <- $rsi
	testb	%cl, %cl
	jne	.LBB4_26
.Ltmp45:
# %bb.22:                               # %if.end118
	#DEBUG_VALUE: sps_is_equal:sps1 <- $rdi
	#DEBUG_VALUE: sps_is_equal:sps2 <- $rsi
	.loc	0 145 7 is_stmt 1               # ldecod_src/parsetcommon.c:145:7
	testl	%edx, %edx
.Ltmp46:
	.loc	0 145 7 is_stmt 0               # ldecod_src/parsetcommon.c:145:7
	je	.LBB4_23
.Ltmp47:
# %bb.24:                               # %if.then121
	#DEBUG_VALUE: sps_is_equal:sps1 <- $rdi
	#DEBUG_VALUE: sps_is_equal:sps2 <- $rsi
	#DEBUG_VALUE: sps_is_equal:equal <- undef
	.loc	0 147 21 is_stmt 1              # ldecod_src/parsetcommon.c:147:21
	movdqu	3152(%rdi), %xmm0
	.loc	0 147 62 is_stmt 0              # ldecod_src/parsetcommon.c:147:62
	movdqu	3152(%rsi), %xmm1
	.loc	0 150 11 is_stmt 1              # ldecod_src/parsetcommon.c:150:11
	pcmpeqd	%xmm0, %xmm1
	movmskps	%xmm1, %eax
	xorl	%ecx, %ecx
	xorl	$15, %eax
	sete	%cl
	#DEBUG_VALUE: sps_is_equal:equal <- undef
	jmp	.LBB4_25
.Ltmp48:
.LBB4_6:                                # %if.then46
	#DEBUG_VALUE: sps_is_equal:sps1 <- $rdi
	#DEBUG_VALUE: sps_is_equal:sps2 <- $rsi
	#DEBUG_VALUE: sps_is_equal:equal <- undef
	.loc	0 122 21                        # ldecod_src/parsetcommon.c:122:21
	movdqu	2080(%rdi), %xmm0
	.loc	0 122 63 is_stmt 0              # ldecod_src/parsetcommon.c:122:63
	movdqu	2080(%rsi), %xmm1
	.loc	0 125 11 is_stmt 1              # ldecod_src/parsetcommon.c:125:11
	pcmpeqd	%xmm0, %xmm1
	movmskps	%xmm1, %ecx
	xorl	$15, %ecx
	.loc	0 126 9                         # ldecod_src/parsetcommon.c:126:9
	jne	.LBB4_26
.Ltmp49:
# %bb.7:                                # %for.cond.preheader
	#DEBUG_VALUE: sps_is_equal:sps1 <- $rdi
	#DEBUG_VALUE: sps_is_equal:sps2 <- $rsi
	#DEBUG_VALUE: sps_is_equal:equal <- 1
	#DEBUG_VALUE: sps_is_equal:i <- 0
	.loc	0 128 20                        # ldecod_src/parsetcommon.c:128:20
	pshufd	$255, %xmm0, %xmm0              # xmm0 = xmm0[3,3,3,3]
	movd	%xmm0, %r8d
	testl	%r8d, %r8d
.Ltmp50:
	.loc	0 128 5 is_stmt 0               # ldecod_src/parsetcommon.c:128:5
	je	.LBB4_14
.Ltmp51:
# %bb.8:                                # %for.body.lr.ph
	#DEBUG_VALUE: sps_is_equal:sps1 <- $rdi
	#DEBUG_VALUE: sps_is_equal:sps2 <- $rsi
	#DEBUG_VALUE: sps_is_equal:equal <- 1
	#DEBUG_VALUE: sps_is_equal:i <- 0
	.loc	0 128 20                        # ldecod_src/parsetcommon.c:128:20
	movl	%r8d, %ecx
	xorl	%edx, %edx
.Ltmp52:
	.loc	0 128 5                         # ldecod_src/parsetcommon.c:128:5
	cmpl	$16, %r8d
	jae	.LBB4_10
.Ltmp53:
# %bb.9:
	#DEBUG_VALUE: sps_is_equal:sps1 <- $rdi
	#DEBUG_VALUE: sps_is_equal:sps2 <- $rsi
	#DEBUG_VALUE: sps_is_equal:equal <- 1
	#DEBUG_VALUE: sps_is_equal:i <- 0
	.loc	0 0 5                           # ldecod_src/parsetcommon.c:0:5
	xorl	%r8d, %r8d
	.loc	0 128 5                         # ldecod_src/parsetcommon.c:128:5
	jmp	.LBB4_13
.Ltmp54:
.LBB4_23:
	#DEBUG_VALUE: sps_is_equal:sps1 <- $rdi
	#DEBUG_VALUE: sps_is_equal:sps2 <- $rsi
	.loc	0 0 5                           # ldecod_src/parsetcommon.c:0:5
	movl	$1, %ecx
.Ltmp55:
.LBB4_25:                               # %if.end138
	#DEBUG_VALUE: sps_is_equal:sps1 <- $rdi
	#DEBUG_VALUE: sps_is_equal:sps2 <- $rsi
	#DEBUG_VALUE: sps_is_equal:equal <- $ecx
	.loc	0 152 19 is_stmt 1              # ldecod_src/parsetcommon.c:152:19
	movl	3168(%rdi), %edx
	xorl	%eax, %eax
	.loc	0 152 47 is_stmt 0              # ldecod_src/parsetcommon.c:152:47
	cmpl	3168(%rsi), %edx
	.loc	0 152 9                         # ldecod_src/parsetcommon.c:152:9
	cmovel	%ecx, %eax
.Ltmp56:
	#DEBUG_VALUE: sps_is_equal:equal <- $eax
	.loc	0 155 1 is_stmt 1               # ldecod_src/parsetcommon.c:155:1
	retq
.Ltmp57:
.LBB4_10:                               # %vector.ph
	#DEBUG_VALUE: sps_is_equal:sps1 <- $rdi
	#DEBUG_VALUE: sps_is_equal:sps2 <- $rsi
	#DEBUG_VALUE: sps_is_equal:equal <- 1
	#DEBUG_VALUE: sps_is_equal:i <- 0
	.loc	0 128 5                         # ldecod_src/parsetcommon.c:128:5
	movl	%ecx, %r8d
	andl	$-16, %r8d
	leaq	(,%rcx,4), %r9
	andq	$-64, %r9
	pxor	%xmm0, %xmm0
	xorl	%r10d, %r10d
	pcmpeqd	%xmm4, %xmm4
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
.Ltmp58:
.LBB4_11:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: sps_is_equal:sps1 <- $rdi
	#DEBUG_VALUE: sps_is_equal:sps2 <- $rsi
	#DEBUG_VALUE: sps_is_equal:equal <- 1
	#DEBUG_VALUE: sps_is_equal:i <- 0
	.loc	0 129 17                        # ldecod_src/parsetcommon.c:129:17
	movdqu	2096(%rdi,%r10), %xmm5
	movdqu	2112(%rdi,%r10), %xmm6
	movdqu	2128(%rdi,%r10), %xmm7
	movdqu	2144(%rdi,%r10), %xmm8
	.loc	0 129 50 is_stmt 0              # ldecod_src/parsetcommon.c:129:50
	movdqu	2096(%rsi,%r10), %xmm9
	.loc	0 129 47                        # ldecod_src/parsetcommon.c:129:47
	pcmpeqd	%xmm5, %xmm9
	.loc	0 129 50                        # ldecod_src/parsetcommon.c:129:50
	movdqu	2112(%rsi,%r10), %xmm5
	.loc	0 129 47                        # ldecod_src/parsetcommon.c:129:47
	pcmpeqd	%xmm6, %xmm5
	.loc	0 129 50                        # ldecod_src/parsetcommon.c:129:50
	movdqu	2128(%rsi,%r10), %xmm6
	.loc	0 129 47                        # ldecod_src/parsetcommon.c:129:47
	pcmpeqd	%xmm7, %xmm6
	.loc	0 129 50                        # ldecod_src/parsetcommon.c:129:50
	movdqu	2144(%rsi,%r10), %xmm7
	.loc	0 129 47                        # ldecod_src/parsetcommon.c:129:47
	pcmpeqd	%xmm8, %xmm7
	pxor	%xmm4, %xmm9
	por	%xmm9, %xmm0
	pxor	%xmm4, %xmm5
	por	%xmm5, %xmm3
	pxor	%xmm4, %xmm6
	por	%xmm6, %xmm2
	pxor	%xmm4, %xmm7
	por	%xmm7, %xmm1
	.loc	0 128 69 is_stmt 1              # ldecod_src/parsetcommon.c:128:69
	addq	$64, %r10
	cmpq	%r10, %r9
	jne	.LBB4_11
.Ltmp59:
# %bb.12:                               # %middle.block
	#DEBUG_VALUE: sps_is_equal:sps1 <- $rdi
	#DEBUG_VALUE: sps_is_equal:sps2 <- $rsi
	#DEBUG_VALUE: sps_is_equal:equal <- 1
	#DEBUG_VALUE: sps_is_equal:i <- 0
	.loc	0 128 5 is_stmt 0               # ldecod_src/parsetcommon.c:128:5
	por	%xmm0, %xmm3
	por	%xmm3, %xmm2
	por	%xmm2, %xmm1
	pslld	$31, %xmm1
	movmskps	%xmm1, %r10d
	xorl	%r9d, %r9d
	testl	%r10d, %r10d
	sete	%r9b
	cmpl	%ecx, %r8d
	je	.LBB4_14
.Ltmp60:
	.p2align	4, 0x90
.LBB4_13:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: sps_is_equal:sps1 <- $rdi
	#DEBUG_VALUE: sps_is_equal:sps2 <- $rsi
	#DEBUG_VALUE: sps_is_equal:equal <- $r9d
	#DEBUG_VALUE: sps_is_equal:i <- $r8
	.loc	0 129 17 is_stmt 1              # ldecod_src/parsetcommon.c:129:17
	movl	2096(%rdi,%r8,4), %r10d
	.loc	0 129 47 is_stmt 0              # ldecod_src/parsetcommon.c:129:47
	cmpl	2096(%rsi,%r8,4), %r10d
	.loc	0 129 13                        # ldecod_src/parsetcommon.c:129:13
	cmovnel	%edx, %r9d
.Ltmp61:
	#DEBUG_VALUE: sps_is_equal:equal <- $r9d
	.loc	0 128 69 is_stmt 1              # ldecod_src/parsetcommon.c:128:69
	incq	%r8
.Ltmp62:
	#DEBUG_VALUE: sps_is_equal:i <- $r8
	.loc	0 128 20 is_stmt 0              # ldecod_src/parsetcommon.c:128:20
	cmpq	%r8, %rcx
.Ltmp63:
	.loc	0 128 5                         # ldecod_src/parsetcommon.c:128:5
	jne	.LBB4_13
	jmp	.LBB4_14
.Ltmp64:
.Lfunc_end4:
	.size	sps_is_equal, .Lfunc_end4-sps_is_equal
	.cfi_endproc
                                        # -- End function
	.globl	pps_is_equal                    # -- Begin function pps_is_equal
	.p2align	4, 0x90
	.type	pps_is_equal,@function
pps_is_equal:                           # @pps_is_equal
.Lfunc_begin5:
	.loc	0 158 0 is_stmt 1               # ldecod_src/parsetcommon.c:158:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
.Ltmp65:
	#DEBUG_VALUE: pps_is_equal:equal <- 1
	xorl	%eax, %eax
.Ltmp66:
	.loc	0 162 9 prologue_end            # ldecod_src/parsetcommon.c:162:9
	cmpl	$0, (%rdi)
	.loc	0 162 22 is_stmt 0              # ldecod_src/parsetcommon.c:162:22
	je	.LBB5_44
.Ltmp67:
# %bb.1:                                # %lor.lhs.false
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	#DEBUG_VALUE: pps_is_equal:equal <- 1
	.loc	0 162 27                        # ldecod_src/parsetcommon.c:162:27
	cmpl	$0, (%rsi)
.Ltmp68:
	.loc	0 162 7                         # ldecod_src/parsetcommon.c:162:7
	je	.LBB5_44
.Ltmp69:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	#DEBUG_VALUE: pps_is_equal:equal <- 1
	#DEBUG_VALUE: pps_is_equal:equal <- undef
	.loc	0 166 19 is_stmt 1              # ldecod_src/parsetcommon.c:166:19
	movq	8(%rdi), %xmm1                  # xmm1 = mem[0],zero
	.loc	0 168 19                        # ldecod_src/parsetcommon.c:168:19
	movq	2040(%rdi), %xmm0               # xmm0 = mem[0],zero
	.loc	0 166 40                        # ldecod_src/parsetcommon.c:166:40
	punpcklqdq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0]
	movq	2040(%rsi), %xmm2               # xmm2 = mem[0],zero
	movq	8(%rsi), %xmm3                  # xmm3 = mem[0],zero
	punpcklqdq	%xmm2, %xmm3            # xmm3 = xmm3[0],xmm2[0]
	.loc	0 169 9                         # ldecod_src/parsetcommon.c:169:9
	pcmpeqd	%xmm1, %xmm3
	movmskps	%xmm3, %ecx
	xorl	$15, %ecx
	.loc	0 171 7                         # ldecod_src/parsetcommon.c:171:7
	jne	.LBB5_44
.Ltmp70:
# %bb.3:                                # %if.end
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	.loc	0 0 0 is_stmt 0                 # ldecod_src/parsetcommon.c:0:0
	movl	4(%rsi), %ecx
	.loc	0 171 7                         # ldecod_src/parsetcommon.c:171:7
	cmpl	%ecx, 4(%rdi)
	jne	.LBB5_44
.Ltmp71:
# %bb.4:                                # %if.end22
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	.loc	0 173 36 is_stmt 1              # ldecod_src/parsetcommon.c:173:36
	pshufd	$85, %xmm0, %xmm0               # xmm0 = xmm0[1,1,1,1]
	movd	%xmm0, %edx
	movl	$1, %ecx
	testl	%edx, %edx
.Ltmp72:
	.loc	0 173 7 is_stmt 0               # ldecod_src/parsetcommon.c:173:7
	je	.LBB5_26
.Ltmp73:
# %bb.5:                                # %if.then26
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	.loc	0 175 23 is_stmt 1              # ldecod_src/parsetcommon.c:175:23
	movl	2048(%rdi), %r8d
	.loc	0 175 44 is_stmt 0              # ldecod_src/parsetcommon.c:175:44
	cmpl	2048(%rsi), %r8d
.Ltmp74:
	#DEBUG_VALUE: pps_is_equal:equal <- undef
	.loc	0 176 11 is_stmt 1              # ldecod_src/parsetcommon.c:176:11
	jne	.LBB5_44
.Ltmp75:
# %bb.6:                                # %if.end33
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	.loc	0 177 11                        # ldecod_src/parsetcommon.c:177:11
	cmpl	$6, %r8d
	ja	.LBB5_26
.Ltmp76:
# %bb.7:                                # %if.end33
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	movl	%r8d, %r8d
	jmpq	*.LJTI5_0(,%r8,8)
.Ltmp77:
.LBB5_19:                               # %if.then87
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	#DEBUG_VALUE: pps_is_equal:equal <- undef
	.loc	0 192 68                        # ldecod_src/parsetcommon.c:192:68
	movq	2148(%rsi), %rdx
	.loc	0 193 15                        # ldecod_src/parsetcommon.c:193:15
	xorl	%ecx, %ecx
	cmpq	%rdx, 2148(%rdi)
	sete	%cl
.Ltmp78:
	#DEBUG_VALUE: pps_is_equal:equal <- undef
.LBB5_26:                               # %if.end130
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	#DEBUG_VALUE: pps_is_equal:equal <- $ecx
	.loc	0 204 19                        # ldecod_src/parsetcommon.c:204:19
	movl	2168(%rdi), %edx
.Ltmp79:
	#DEBUG_VALUE: pps_is_equal:equal <- undef
	.loc	0 204 48 is_stmt 0              # ldecod_src/parsetcommon.c:204:48
	cmpl	2168(%rsi), %edx
	.loc	0 205 19 is_stmt 1              # ldecod_src/parsetcommon.c:205:19
	movl	2172(%rdi), %r8d
	.loc	0 204 48                        # ldecod_src/parsetcommon.c:204:48
	setne	%dl
	.loc	0 205 48                        # ldecod_src/parsetcommon.c:205:48
	cmpl	2172(%rsi), %r8d
	setne	%r8b
	.loc	0 206 19                        # ldecod_src/parsetcommon.c:206:19
	movl	2176(%rdi), %r9d
	.loc	0 206 38 is_stmt 0              # ldecod_src/parsetcommon.c:206:38
	cmpl	2176(%rsi), %r9d
	setne	%r9b
	.loc	0 211 19 is_stmt 1              # ldecod_src/parsetcommon.c:211:19
	movl	2200(%rdi), %r10d
	.loc	0 211 58 is_stmt 0              # ldecod_src/parsetcommon.c:211:58
	cmpl	2200(%rsi), %r10d
	setne	%r10b
	.loc	0 212 19 is_stmt 1              # ldecod_src/parsetcommon.c:212:19
	movl	2204(%rdi), %r11d
	.loc	0 212 47 is_stmt 0              # ldecod_src/parsetcommon.c:212:47
	cmpl	2204(%rsi), %r11d
	setne	%r11b
	.loc	0 213 19 is_stmt 1              # ldecod_src/parsetcommon.c:213:19
	movl	2208(%rdi), %ebx
	.loc	0 213 50 is_stmt 0              # ldecod_src/parsetcommon.c:213:50
	cmpl	2208(%rsi), %ebx
	.loc	0 215 7 is_stmt 1               # ldecod_src/parsetcommon.c:215:7
	jne	.LBB5_44
.Ltmp80:
# %bb.27:                               # %if.end130
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	.loc	0 0 0 is_stmt 0                 # ldecod_src/parsetcommon.c:0:0
	movdqu	2180(%rdi), %xmm0
	movdqu	2180(%rsi), %xmm1
	pcmpeqd	%xmm0, %xmm1
	pcmpeqd	%xmm0, %xmm0
	pxor	%xmm1, %xmm0
	.loc	0 215 0                         # ldecod_src/parsetcommon.c:215:0
	pslld	$31, %xmm0
	movmskps	%xmm0, %ebx
	.loc	0 215 7                         # ldecod_src/parsetcommon.c:215:7
	testb	%bl, %bl
	jne	.LBB5_44
.Ltmp81:
# %bb.28:                               # %if.end130
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	testb	$1, %r11b
	jne	.LBB5_44
.Ltmp82:
# %bb.29:                               # %if.end130
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	testb	$1, %r10b
	jne	.LBB5_44
.Ltmp83:
# %bb.30:                               # %if.end130
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	testb	$1, %r9b
	jne	.LBB5_44
.Ltmp84:
# %bb.31:                               # %if.end130
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	testb	$1, %r8b
	jne	.LBB5_44
.Ltmp85:
# %bb.32:                               # %if.end130
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	testb	$1, %dl
	jne	.LBB5_44
.Ltmp86:
# %bb.33:                               # %if.end130
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	testl	%ecx, %ecx
	je	.LBB5_44
.Ltmp87:
# %bb.34:                               # %if.end173
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	.loc	0 219 19 is_stmt 1              # ldecod_src/parsetcommon.c:219:19
	movl	16(%rdi), %eax
.Ltmp88:
	#DEBUG_VALUE: pps_is_equal:equal <- undef
	.loc	0 220 19                        # ldecod_src/parsetcommon.c:220:19
	movl	20(%rdi), %edx
	movl	16(%rsi), %r8d
	.loc	0 219 43                        # ldecod_src/parsetcommon.c:219:43
	xorl	%eax, %r8d
	movl	20(%rsi), %r9d
	.loc	0 220 51                        # ldecod_src/parsetcommon.c:220:51
	xorl	%edx, %r9d
	.loc	0 220 9 is_stmt 0               # ldecod_src/parsetcommon.c:220:9
	xorl	%ecx, %ecx
	orl	%r8d, %r9d
	sete	%cl
	#DEBUG_VALUE: pps_is_equal:equal <- undef
.Ltmp89:
	.loc	0 221 6 is_stmt 1               # ldecod_src/parsetcommon.c:221:6
	testl	%edx, %edx
.Ltmp90:
	.loc	0 221 6 is_stmt 0               # ldecod_src/parsetcommon.c:221:6
	je	.LBB5_43
.Ltmp91:
# %bb.35:                               # %for.cond185.preheader
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	.loc	0 0 6                           # ldecod_src/parsetcommon.c:0:6
	addl	%eax, %eax
.Ltmp92:
	#DEBUG_VALUE: pps_is_equal:equal <- undef
	#DEBUG_VALUE: pps_is_equal:i <- 0
	.loc	0 223 18 is_stmt 1              # ldecod_src/parsetcommon.c:223:18
	addl	$6, %eax
.Ltmp93:
	.loc	0 223 5 is_stmt 0               # ldecod_src/parsetcommon.c:223:5
	je	.LBB5_43
.Ltmp94:
# %bb.36:                               # %for.body189.lr.ph
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	#DEBUG_VALUE: pps_is_equal:i <- 0
	.loc	0 223 18                        # ldecod_src/parsetcommon.c:223:18
	movl	%eax, %eax
.Ltmp95:
	.loc	0 223 5                         # ldecod_src/parsetcommon.c:223:5
	shlq	$6, %rax
	xorl	%edx, %edx
	pcmpeqd	%xmm0, %xmm0
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	jmp	.LBB5_37
.Ltmp96:
	.p2align	4, 0x90
.LBB5_40:                               # %vector.body494
                                        #   in Loop: Header=BB5_37 Depth=1
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	#DEBUG_VALUE: pps_is_equal:equal <- $ecx
	#DEBUG_VALUE: pps_is_equal:i <- $r9
	#DEBUG_VALUE: pps_is_equal:j <- 0
	#DEBUG_VALUE: pps_is_equal:equal <- $ecx
	#DEBUG_VALUE: pps_is_equal:j <- 0
	.loc	0 236 23 is_stmt 1              # ldecod_src/parsetcommon.c:236:23
	movdqu	-1080(%rdi,%r8,4), %xmm1
	movdqu	-1064(%rdi,%r8,4), %xmm2
	movdqu	-1048(%rdi,%r8,4), %xmm3
	movdqu	-1032(%rdi,%r8,4), %xmm4
	.loc	0 236 55 is_stmt 0              # ldecod_src/parsetcommon.c:236:55
	movdqu	-1080(%rsi,%r8,4), %xmm8
	.loc	0 236 52                        # ldecod_src/parsetcommon.c:236:52
	pcmpeqd	%xmm1, %xmm8
	.loc	0 236 55                        # ldecod_src/parsetcommon.c:236:55
	movdqu	-1064(%rsi,%r8,4), %xmm7
	.loc	0 236 52                        # ldecod_src/parsetcommon.c:236:52
	pcmpeqd	%xmm2, %xmm7
	.loc	0 236 55                        # ldecod_src/parsetcommon.c:236:55
	movdqu	-1048(%rsi,%r8,4), %xmm6
	.loc	0 236 52                        # ldecod_src/parsetcommon.c:236:52
	pcmpeqd	%xmm3, %xmm6
	.loc	0 236 55                        # ldecod_src/parsetcommon.c:236:55
	movdqu	-1032(%rsi,%r8,4), %xmm5
	.loc	0 236 52                        # ldecod_src/parsetcommon.c:236:52
	pcmpeqd	%xmm4, %xmm5
	pxor	%xmm0, %xmm8
	pxor	%xmm0, %xmm7
	pxor	%xmm0, %xmm6
	pxor	%xmm0, %xmm5
	.loc	0 236 23                        # ldecod_src/parsetcommon.c:236:23
	movdqu	-1016(%rdi,%r8,4), %xmm1
	movdqu	-1000(%rdi,%r8,4), %xmm2
	movdqu	-984(%rdi,%r8,4), %xmm9
	movdqu	-968(%rdi,%r8,4), %xmm10
	.loc	0 236 55                        # ldecod_src/parsetcommon.c:236:55
	movdqu	-1016(%rsi,%r8,4), %xmm4
	.loc	0 236 52                        # ldecod_src/parsetcommon.c:236:52
	pcmpeqd	%xmm1, %xmm4
	.loc	0 236 55                        # ldecod_src/parsetcommon.c:236:55
	movdqu	-1000(%rsi,%r8,4), %xmm3
	.loc	0 236 52                        # ldecod_src/parsetcommon.c:236:52
	pcmpeqd	%xmm2, %xmm3
	.loc	0 236 55                        # ldecod_src/parsetcommon.c:236:55
	movdqu	-984(%rsi,%r8,4), %xmm2
	.loc	0 236 52                        # ldecod_src/parsetcommon.c:236:52
	pcmpeqd	%xmm9, %xmm2
	.loc	0 236 55                        # ldecod_src/parsetcommon.c:236:55
	movdqu	-968(%rsi,%r8,4), %xmm1
	.loc	0 236 52                        # ldecod_src/parsetcommon.c:236:52
	pcmpeqd	%xmm10, %xmm1
	pxor	%xmm0, %xmm4
	por	%xmm8, %xmm4
	pxor	%xmm0, %xmm3
	por	%xmm7, %xmm3
	pxor	%xmm0, %xmm2
	por	%xmm6, %xmm2
	pxor	%xmm0, %xmm1
	por	%xmm5, %xmm1
	.loc	0 236 23                        # ldecod_src/parsetcommon.c:236:23
	movdqu	-952(%rdi,%r8,4), %xmm5
	movdqu	-936(%rdi,%r8,4), %xmm6
	movdqu	-920(%rdi,%r8,4), %xmm9
	movdqu	-904(%rdi,%r8,4), %xmm10
	.loc	0 236 55                        # ldecod_src/parsetcommon.c:236:55
	movdqu	-952(%rsi,%r8,4), %xmm8
	.loc	0 236 52                        # ldecod_src/parsetcommon.c:236:52
	pcmpeqd	%xmm5, %xmm8
	.loc	0 236 55                        # ldecod_src/parsetcommon.c:236:55
	movdqu	-936(%rsi,%r8,4), %xmm7
	.loc	0 236 52                        # ldecod_src/parsetcommon.c:236:52
	pcmpeqd	%xmm6, %xmm7
	.loc	0 236 55                        # ldecod_src/parsetcommon.c:236:55
	movdqu	-920(%rsi,%r8,4), %xmm6
	.loc	0 236 52                        # ldecod_src/parsetcommon.c:236:52
	pcmpeqd	%xmm9, %xmm6
	.loc	0 236 55                        # ldecod_src/parsetcommon.c:236:55
	movdqu	-904(%rsi,%r8,4), %xmm5
	.loc	0 236 52                        # ldecod_src/parsetcommon.c:236:52
	pcmpeqd	%xmm10, %xmm5
	pxor	%xmm0, %xmm8
	pxor	%xmm0, %xmm7
	pxor	%xmm0, %xmm6
	pxor	%xmm0, %xmm5
	.loc	0 236 23                        # ldecod_src/parsetcommon.c:236:23
	movdqu	-888(%rdi,%r8,4), %xmm9
	movdqu	-872(%rdi,%r8,4), %xmm10
	movdqu	-856(%rdi,%r8,4), %xmm11
	movdqu	-840(%rdi,%r8,4), %xmm12
	.loc	0 236 55                        # ldecod_src/parsetcommon.c:236:55
	movdqu	-888(%rsi,%r8,4), %xmm13
	.loc	0 236 52                        # ldecod_src/parsetcommon.c:236:52
	pcmpeqd	%xmm9, %xmm13
	.loc	0 236 55                        # ldecod_src/parsetcommon.c:236:55
	movdqu	-872(%rsi,%r8,4), %xmm14
	.loc	0 236 52                        # ldecod_src/parsetcommon.c:236:52
	pcmpeqd	%xmm10, %xmm14
	.loc	0 236 55                        # ldecod_src/parsetcommon.c:236:55
	movdqu	-856(%rsi,%r8,4), %xmm9
	.loc	0 236 52                        # ldecod_src/parsetcommon.c:236:52
	pcmpeqd	%xmm11, %xmm9
	.loc	0 236 55                        # ldecod_src/parsetcommon.c:236:55
	movdqu	-840(%rsi,%r8,4), %xmm10
	.loc	0 236 52                        # ldecod_src/parsetcommon.c:236:52
	pcmpeqd	%xmm12, %xmm10
	pxor	%xmm0, %xmm13
	por	%xmm8, %xmm13
	por	%xmm4, %xmm13
	pxor	%xmm0, %xmm14
	por	%xmm7, %xmm14
	por	%xmm3, %xmm14
.Ltmp97:
	.loc	0 235 11 is_stmt 1              # ldecod_src/parsetcommon.c:235:11
	por	%xmm13, %xmm14
.Ltmp98:
	.loc	0 236 52                        # ldecod_src/parsetcommon.c:236:52
	pxor	%xmm0, %xmm9
	por	%xmm6, %xmm9
	por	%xmm2, %xmm9
.Ltmp99:
	.loc	0 235 11                        # ldecod_src/parsetcommon.c:235:11
	por	%xmm14, %xmm9
.Ltmp100:
	.loc	0 236 52                        # ldecod_src/parsetcommon.c:236:52
	pxor	%xmm0, %xmm10
	por	%xmm5, %xmm10
	por	%xmm1, %xmm10
.Ltmp101:
	.loc	0 235 11                        # ldecod_src/parsetcommon.c:235:11
	por	%xmm9, %xmm10
	pslld	$31, %xmm10
	movmskps	%xmm10, %r10d
	testl	%r10d, %r10d
.Ltmp102:
.LBB5_41:                               # %for.inc248
                                        #   in Loop: Header=BB5_37 Depth=1
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	#DEBUG_VALUE: pps_is_equal:i <- $r9
	.loc	0 0 0 is_stmt 0                 # ldecod_src/parsetcommon.c:0:0
	cmovnel	%edx, %ecx
.Ltmp103:
.LBB5_42:                               # %for.inc248
                                        #   in Loop: Header=BB5_37 Depth=1
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	#DEBUG_VALUE: pps_is_equal:i <- $r9
	#DEBUG_VALUE: pps_is_equal:equal <- $ecx
	.loc	0 223 75 is_stmt 1              # ldecod_src/parsetcommon.c:223:75
	incq	%r9
.Ltmp104:
	#DEBUG_VALUE: pps_is_equal:i <- $r9
	.loc	0 223 18 is_stmt 0              # ldecod_src/parsetcommon.c:223:18
	addq	$64, %r8
	cmpq	%r8, %rax
.Ltmp105:
	.loc	0 223 5                         # ldecod_src/parsetcommon.c:223:5
	je	.LBB5_43
.Ltmp106:
.LBB5_37:                               # %for.body189
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	.loc	0 0 5                           # ldecod_src/parsetcommon.c:0:5
	movl	%ecx, %r10d
.Ltmp107:
	#DEBUG_VALUE: pps_is_equal:equal <- $ecx
	#DEBUG_VALUE: pps_is_equal:i <- $r9
	.loc	0 225 17 is_stmt 1              # ldecod_src/parsetcommon.c:225:17
	movl	24(%rdi,%r9,4), %r11d
	.loc	0 225 56 is_stmt 0              # ldecod_src/parsetcommon.c:225:56
	xorl	%ecx, %ecx
.Ltmp108:
	#DEBUG_VALUE: pps_is_equal:equal <- $r10d
	cmpl	24(%rsi,%r9,4), %r11d
	sete	%cl
	.loc	0 225 13                        # ldecod_src/parsetcommon.c:225:13
	andl	%r10d, %ecx
.Ltmp109:
	#DEBUG_VALUE: pps_is_equal:equal <- $ecx
	.loc	0 226 10 is_stmt 1              # ldecod_src/parsetcommon.c:226:10
	testl	%r11d, %r11d
.Ltmp110:
	.loc	0 226 10 is_stmt 0              # ldecod_src/parsetcommon.c:226:10
	je	.LBB5_42
.Ltmp111:
# %bb.38:                               # %if.then202
                                        #   in Loop: Header=BB5_37 Depth=1
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	#DEBUG_VALUE: pps_is_equal:equal <- $ecx
	#DEBUG_VALUE: pps_is_equal:i <- $r9
	.loc	0 228 14 is_stmt 1              # ldecod_src/parsetcommon.c:228:14
	cmpq	$5, %r9
.Ltmp112:
	#DEBUG_VALUE: pps_is_equal:j <- 0
	.loc	0 228 12 is_stmt 0              # ldecod_src/parsetcommon.c:228:12
	ja	.LBB5_40
.Ltmp113:
# %bb.39:                               # %for.body209.preheader
                                        #   in Loop: Header=BB5_37 Depth=1
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	#DEBUG_VALUE: pps_is_equal:equal <- $ecx
	#DEBUG_VALUE: pps_is_equal:i <- $r9
	#DEBUG_VALUE: pps_is_equal:j <- 0
	#DEBUG_VALUE: pps_is_equal:equal <- undef
	#DEBUG_VALUE: pps_is_equal:j <- 15
	.loc	0 231 23 is_stmt 1              # ldecod_src/parsetcommon.c:231:23
	movdqu	72(%rdi,%r8), %xmm1
	movdqu	88(%rdi,%r8), %xmm2
	movdqu	104(%rdi,%r8), %xmm3
	movdqu	120(%rdi,%r8), %xmm4
	.loc	0 231 53 is_stmt 0              # ldecod_src/parsetcommon.c:231:53
	movdqu	72(%rsi,%r8), %xmm5
	.loc	0 231 50                        # ldecod_src/parsetcommon.c:231:50
	pcmpeqd	%xmm1, %xmm5
	.loc	0 231 53                        # ldecod_src/parsetcommon.c:231:53
	movdqu	88(%rsi,%r8), %xmm1
	.loc	0 231 50                        # ldecod_src/parsetcommon.c:231:50
	pcmpeqd	%xmm2, %xmm1
	packssdw	%xmm1, %xmm5
	.loc	0 231 53                        # ldecod_src/parsetcommon.c:231:53
	movdqu	104(%rsi,%r8), %xmm1
	.loc	0 231 50                        # ldecod_src/parsetcommon.c:231:50
	pcmpeqd	%xmm3, %xmm1
	.loc	0 231 53                        # ldecod_src/parsetcommon.c:231:53
	movdqu	120(%rsi,%r8), %xmm2
	.loc	0 231 50                        # ldecod_src/parsetcommon.c:231:50
	pcmpeqd	%xmm4, %xmm2
	packssdw	%xmm2, %xmm1
	packsswb	%xmm1, %xmm5
	.loc	0 231 19                        # ldecod_src/parsetcommon.c:231:19
	psllw	$7, %xmm5
	pmovmskb	%xmm5, %r10d
	cmpl	$65535, %r10d                   # imm = 0xFFFF
	jmp	.LBB5_41
.Ltmp114:
.LBB5_43:                               # %if.end251
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	#DEBUG_VALUE: pps_is_equal:equal <- $ecx
	.loc	0 241 19 is_stmt 1              # ldecod_src/parsetcommon.c:241:19
	movl	2196(%rdi), %edx
	xorl	%eax, %eax
	.loc	0 241 49 is_stmt 0              # ldecod_src/parsetcommon.c:241:49
	cmpl	2196(%rsi), %edx
	.loc	0 241 9                         # ldecod_src/parsetcommon.c:241:9
	cmovel	%ecx, %eax
.Ltmp115:
	#DEBUG_VALUE: pps_is_equal:equal <- $eax
.LBB5_44:                               # %cleanup
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	.loc	0 244 1 epilogue_begin is_stmt 1 # ldecod_src/parsetcommon.c:244:1
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp116:
.LBB5_20:                               # %if.then100
	.cfi_def_cfa_offset 24
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	.loc	0 197 25                        # ldecod_src/parsetcommon.c:197:25
	movl	2156(%rdi), %edx
	.loc	0 197 54 is_stmt 0              # ldecod_src/parsetcommon.c:197:54
	cmpl	2156(%rsi), %edx
.Ltmp117:
	#DEBUG_VALUE: pps_is_equal:equal <- undef
	.loc	0 198 13 is_stmt 1              # ldecod_src/parsetcommon.c:198:13
	jne	.LBB5_44
.Ltmp118:
# %bb.21:                               # %for.cond108.preheader
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	.loc	0 0 13 is_stmt 0                # ldecod_src/parsetcommon.c:0:13
	movq	2160(%rdi), %r8
	movq	2160(%rsi), %r9
.Ltmp119:
	#DEBUG_VALUE: pps_is_equal:equal <- 1
	#DEBUG_VALUE: pps_is_equal:i <- 0
	.loc	0 199 9 is_stmt 1               # ldecod_src/parsetcommon.c:199:9
	leal	1(%rdx), %ebx
	xorl	%r10d, %r10d
	movl	$0, %r11d
	cmpl	$16, %ebx
	jb	.LBB5_25
.Ltmp120:
# %bb.22:                               # %vector.ph
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	#DEBUG_VALUE: pps_is_equal:equal <- 1
	#DEBUG_VALUE: pps_is_equal:i <- 0
	movl	%ebx, %r11d
	andl	$-16, %r11d
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	pcmpeqd	%xmm4, %xmm4
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
.Ltmp121:
.LBB5_23:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	#DEBUG_VALUE: pps_is_equal:equal <- 1
	#DEBUG_VALUE: pps_is_equal:i <- 0
	.loc	0 200 21                        # ldecod_src/parsetcommon.c:200:21
	movd	(%r8,%rcx), %xmm5               # xmm5 = mem[0],zero,zero,zero
	movd	4(%r8,%rcx), %xmm6              # xmm6 = mem[0],zero,zero,zero
	movd	8(%r8,%rcx), %xmm7              # xmm7 = mem[0],zero,zero,zero
	movd	12(%r8,%rcx), %xmm8             # xmm8 = mem[0],zero,zero,zero
	.loc	0 200 48 is_stmt 0              # ldecod_src/parsetcommon.c:200:48
	movd	(%r9,%rcx), %xmm9               # xmm9 = mem[0],zero,zero,zero
	.loc	0 200 45                        # ldecod_src/parsetcommon.c:200:45
	pcmpeqb	%xmm5, %xmm9
	.loc	0 200 48                        # ldecod_src/parsetcommon.c:200:48
	movd	4(%r9,%rcx), %xmm10             # xmm10 = mem[0],zero,zero,zero
	.loc	0 200 45                        # ldecod_src/parsetcommon.c:200:45
	pcmpeqb	%xmm6, %xmm10
	.loc	0 200 48                        # ldecod_src/parsetcommon.c:200:48
	movd	8(%r9,%rcx), %xmm6              # xmm6 = mem[0],zero,zero,zero
	.loc	0 200 45                        # ldecod_src/parsetcommon.c:200:45
	pcmpeqb	%xmm7, %xmm6
	.loc	0 200 48                        # ldecod_src/parsetcommon.c:200:48
	movd	12(%r9,%rcx), %xmm5             # xmm5 = mem[0],zero,zero,zero
	.loc	0 200 45                        # ldecod_src/parsetcommon.c:200:45
	pcmpeqb	%xmm8, %xmm5
	punpcklbw	%xmm9, %xmm9            # xmm9 = xmm9[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm9, %xmm9            # xmm9 = xmm9[0,0,1,1,2,2,3,3]
	pxor	%xmm4, %xmm9
	por	%xmm9, %xmm0
	punpcklbw	%xmm10, %xmm10          # xmm10 = xmm10[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm10, %xmm10          # xmm10 = xmm10[0,0,1,1,2,2,3,3]
	pxor	%xmm4, %xmm10
	por	%xmm10, %xmm3
	punpcklbw	%xmm6, %xmm6            # xmm6 = xmm6[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm6, %xmm6            # xmm6 = xmm6[0,0,1,1,2,2,3,3]
	pxor	%xmm4, %xmm6
	por	%xmm6, %xmm2
	punpcklbw	%xmm5, %xmm5            # xmm5 = xmm5[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm5, %xmm5            # xmm5 = xmm5[0,0,1,1,2,2,3,3]
	pxor	%xmm4, %xmm5
	por	%xmm5, %xmm1
	.loc	0 199 59 is_stmt 1              # ldecod_src/parsetcommon.c:199:59
	addq	$16, %rcx
	cmpl	%ecx, %r11d
	jne	.LBB5_23
.Ltmp122:
# %bb.24:                               # %middle.block
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	#DEBUG_VALUE: pps_is_equal:equal <- 1
	#DEBUG_VALUE: pps_is_equal:i <- 0
	.loc	0 199 9 is_stmt 0               # ldecod_src/parsetcommon.c:199:9
	por	%xmm0, %xmm3
	por	%xmm3, %xmm2
	por	%xmm2, %xmm1
	pslld	$31, %xmm1
	movmskps	%xmm1, %ebp
	xorl	%ecx, %ecx
	testl	%ebp, %ebp
	sete	%cl
	cmpl	%r11d, %ebx
	je	.LBB5_26
.Ltmp123:
.LBB5_25:                               # %for.body112
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	#DEBUG_VALUE: pps_is_equal:equal <- $ecx
	#DEBUG_VALUE: pps_is_equal:i <- $r11d
	.loc	0 200 21 is_stmt 1              # ldecod_src/parsetcommon.c:200:21
	movl	%r11d, %ebx
	movzbl	(%r8,%rbx), %ebp
	.loc	0 200 45 is_stmt 0              # ldecod_src/parsetcommon.c:200:45
	cmpb	(%r9,%rbx), %bpl
	.loc	0 200 17                        # ldecod_src/parsetcommon.c:200:17
	cmovnel	%r10d, %ecx
.Ltmp124:
	#DEBUG_VALUE: pps_is_equal:equal <- $ecx
	.loc	0 199 59 is_stmt 1              # ldecod_src/parsetcommon.c:199:59
	incl	%r11d
.Ltmp125:
	#DEBUG_VALUE: pps_is_equal:i <- $ebx
	#DEBUG_VALUE: pps_is_equal:i <- $r11d
	.loc	0 199 20 is_stmt 0              # ldecod_src/parsetcommon.c:199:20
	cmpl	%edx, %r11d
.Ltmp126:
	.loc	0 199 9                         # ldecod_src/parsetcommon.c:199:9
	jbe	.LBB5_25
	jmp	.LBB5_26
.Ltmp127:
.LBB5_10:                               # %for.cond.preheader
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	#DEBUG_VALUE: pps_is_equal:equal <- 1
	#DEBUG_VALUE: pps_is_equal:i <- 0
	.loc	0 179 9 is_stmt 1               # ldecod_src/parsetcommon.c:179:9
	leal	1(%rdx), %r10d
	xorl	%r8d, %r8d
	movl	$0, %r9d
	cmpl	$16, %r10d
	jb	.LBB5_14
.Ltmp128:
# %bb.11:                               # %vector.ph465
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	#DEBUG_VALUE: pps_is_equal:equal <- 1
	#DEBUG_VALUE: pps_is_equal:i <- 0
	movl	%r10d, %r9d
	andl	$-16, %r9d
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	pcmpeqd	%xmm4, %xmm4
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
.Ltmp129:
.LBB5_12:                               # %vector.body469
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	#DEBUG_VALUE: pps_is_equal:equal <- 1
	#DEBUG_VALUE: pps_is_equal:i <- 0
	.loc	0 180 21                        # ldecod_src/parsetcommon.c:180:21
	movdqu	2052(%rdi,%rcx,4), %xmm5
	movdqu	2068(%rdi,%rcx,4), %xmm6
	movdqu	2084(%rdi,%rcx,4), %xmm7
	movdqu	2100(%rdi,%rcx,4), %xmm8
	.loc	0 180 51 is_stmt 0              # ldecod_src/parsetcommon.c:180:51
	movdqu	2052(%rsi,%rcx,4), %xmm9
	.loc	0 180 48                        # ldecod_src/parsetcommon.c:180:48
	pcmpeqd	%xmm5, %xmm9
	.loc	0 180 51                        # ldecod_src/parsetcommon.c:180:51
	movdqu	2068(%rsi,%rcx,4), %xmm5
	.loc	0 180 48                        # ldecod_src/parsetcommon.c:180:48
	pcmpeqd	%xmm6, %xmm5
	.loc	0 180 51                        # ldecod_src/parsetcommon.c:180:51
	movdqu	2084(%rsi,%rcx,4), %xmm6
	.loc	0 180 48                        # ldecod_src/parsetcommon.c:180:48
	pcmpeqd	%xmm7, %xmm6
	.loc	0 180 51                        # ldecod_src/parsetcommon.c:180:51
	movdqu	2100(%rsi,%rcx,4), %xmm7
	.loc	0 180 48                        # ldecod_src/parsetcommon.c:180:48
	pcmpeqd	%xmm8, %xmm7
	pxor	%xmm4, %xmm9
	por	%xmm9, %xmm0
	pxor	%xmm4, %xmm5
	por	%xmm5, %xmm3
	pxor	%xmm4, %xmm6
	por	%xmm6, %xmm2
	pxor	%xmm4, %xmm7
	por	%xmm7, %xmm1
	.loc	0 179 54 is_stmt 1              # ldecod_src/parsetcommon.c:179:54
	addq	$16, %rcx
	cmpl	%ecx, %r9d
	jne	.LBB5_12
.Ltmp130:
# %bb.13:                               # %middle.block462
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	#DEBUG_VALUE: pps_is_equal:equal <- 1
	#DEBUG_VALUE: pps_is_equal:i <- 0
	.loc	0 179 9 is_stmt 0               # ldecod_src/parsetcommon.c:179:9
	por	%xmm0, %xmm3
	por	%xmm3, %xmm2
	por	%xmm2, %xmm1
	pslld	$31, %xmm1
	movmskps	%xmm1, %r11d
	xorl	%ecx, %ecx
	testl	%r11d, %r11d
	sete	%cl
	cmpl	%r9d, %r10d
	je	.LBB5_26
.Ltmp131:
	.p2align	4, 0x90
.LBB5_14:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	#DEBUG_VALUE: pps_is_equal:equal <- $ecx
	#DEBUG_VALUE: pps_is_equal:i <- $r9d
	.loc	0 180 21 is_stmt 1              # ldecod_src/parsetcommon.c:180:21
	movl	%r9d, %r10d
	movl	2052(%rdi,%r10,4), %r11d
	.loc	0 180 48 is_stmt 0              # ldecod_src/parsetcommon.c:180:48
	cmpl	2052(%rsi,%r10,4), %r11d
	.loc	0 180 17                        # ldecod_src/parsetcommon.c:180:17
	cmovnel	%r8d, %ecx
.Ltmp132:
	#DEBUG_VALUE: pps_is_equal:equal <- $ecx
	.loc	0 179 54 is_stmt 1              # ldecod_src/parsetcommon.c:179:54
	incl	%r9d
.Ltmp133:
	#DEBUG_VALUE: pps_is_equal:i <- $r10d
	#DEBUG_VALUE: pps_is_equal:i <- $r9d
	.loc	0 179 20 is_stmt 0              # ldecod_src/parsetcommon.c:179:20
	cmpl	%edx, %r9d
.Ltmp134:
	.loc	0 179 9                         # ldecod_src/parsetcommon.c:179:9
	jbe	.LBB5_14
	jmp	.LBB5_26
.Ltmp135:
.LBB5_8:                                # %for.cond51.preheader
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	#DEBUG_VALUE: pps_is_equal:equal <- 1
	#DEBUG_VALUE: pps_is_equal:i <- 0
	.loc	0 184 20 is_stmt 1              # ldecod_src/parsetcommon.c:184:20
	movl	%edx, %r8d
	xorl	%r9d, %r9d
.Ltmp136:
	.loc	0 184 9 is_stmt 0               # ldecod_src/parsetcommon.c:184:9
	cmpl	$1, %edx
	jne	.LBB5_15
.Ltmp137:
# %bb.9:
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	#DEBUG_VALUE: pps_is_equal:equal <- 1
	#DEBUG_VALUE: pps_is_equal:i <- 0
	.loc	0 0 9                           # ldecod_src/parsetcommon.c:0:9
	xorl	%edx, %edx
	.loc	0 184 9                         # ldecod_src/parsetcommon.c:184:9
	jmp	.LBB5_17
.Ltmp138:
.LBB5_15:                               # %for.cond51.preheader.new
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	#DEBUG_VALUE: pps_is_equal:equal <- 1
	#DEBUG_VALUE: pps_is_equal:i <- 0
	movl	%r8d, %r10d
	andl	$-2, %r10d
	xorl	%edx, %edx
.Ltmp139:
.LBB5_16:                               # %for.body55
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	#DEBUG_VALUE: pps_is_equal:equal <- $ecx
	#DEBUG_VALUE: pps_is_equal:i <- $rdx
	.loc	0 186 21 is_stmt 1              # ldecod_src/parsetcommon.c:186:21
	movl	2084(%rdi,%rdx,4), %r11d
.Ltmp140:
	#DEBUG_VALUE: pps_is_equal:i <- [DW_OP_constu 1, DW_OP_or, DW_OP_stack_value] $rdx
	.loc	0 186 39 is_stmt 0              # ldecod_src/parsetcommon.c:186:39
	xorl	2084(%rsi,%rdx,4), %r11d
.Ltmp141:
	#DEBUG_VALUE: pps_is_equal:equal <- undef
	.loc	0 186 21                        # ldecod_src/parsetcommon.c:186:21
	movl	2088(%rdi,%rdx,4), %ebx
	.loc	0 187 21 is_stmt 1              # ldecod_src/parsetcommon.c:187:21
	movl	2116(%rdi,%rdx,4), %ebp
	.loc	0 187 43 is_stmt 0              # ldecod_src/parsetcommon.c:187:43
	xorl	2116(%rsi,%rdx,4), %ebp
	.loc	0 187 17                        # ldecod_src/parsetcommon.c:187:17
	orl	%r11d, %ebp
	.loc	0 186 39 is_stmt 1              # ldecod_src/parsetcommon.c:186:39
	xorl	2088(%rsi,%rdx,4), %ebx
	.loc	0 187 21                        # ldecod_src/parsetcommon.c:187:21
	movl	2120(%rdi,%rdx,4), %r11d
	.loc	0 187 43 is_stmt 0              # ldecod_src/parsetcommon.c:187:43
	xorl	2120(%rsi,%rdx,4), %r11d
	.loc	0 187 17                        # ldecod_src/parsetcommon.c:187:17
	orl	%ebx, %r11d
	orl	%ebp, %r11d
	cmovnel	%r9d, %ecx
.Ltmp142:
	#DEBUG_VALUE: pps_is_equal:equal <- $ecx
	.loc	0 184 53 is_stmt 1              # ldecod_src/parsetcommon.c:184:53
	addq	$2, %rdx
.Ltmp143:
	#DEBUG_VALUE: pps_is_equal:i <- $rdx
	.loc	0 184 9 is_stmt 0               # ldecod_src/parsetcommon.c:184:9
	cmpq	%rdx, %r10
	jne	.LBB5_16
.Ltmp144:
.LBB5_17:                               # %if.end130.loopexit531.unr-lcssa
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	testb	$1, %r8b
	je	.LBB5_26
.Ltmp145:
# %bb.18:                               # %for.body55.epil
	#DEBUG_VALUE: pps_is_equal:pps1 <- $rdi
	#DEBUG_VALUE: pps_is_equal:pps2 <- $rsi
	#DEBUG_VALUE: pps_is_equal:equal <- $ecx
	#DEBUG_VALUE: pps_is_equal:i <- $rdx
	.loc	0 186 21 is_stmt 1              # ldecod_src/parsetcommon.c:186:21
	movl	2084(%rdi,%rdx,4), %r8d
.Ltmp146:
	#DEBUG_VALUE: pps_is_equal:equal <- undef
	.loc	0 187 21                        # ldecod_src/parsetcommon.c:187:21
	movl	2116(%rdi,%rdx,4), %r9d
	.loc	0 186 39                        # ldecod_src/parsetcommon.c:186:39
	xorl	2084(%rsi,%rdx,4), %r8d
	.loc	0 187 43                        # ldecod_src/parsetcommon.c:187:43
	xorl	2116(%rsi,%rdx,4), %r9d
	xorl	%edx, %edx
.Ltmp147:
	.loc	0 187 17 is_stmt 0              # ldecod_src/parsetcommon.c:187:17
	orl	%r8d, %r9d
	cmovnel	%edx, %ecx
.Ltmp148:
	#DEBUG_VALUE: pps_is_equal:equal <- $ecx
	#DEBUG_VALUE: pps_is_equal:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	.loc	0 0 17                          # ldecod_src/parsetcommon.c:0:17
	jmp	.LBB5_26
.Ltmp149:
.Lfunc_end5:
	.size	pps_is_equal, .Lfunc_end5-pps_is_equal
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI5_0:
	.quad	.LBB5_10
	.quad	.LBB5_26
	.quad	.LBB5_8
	.quad	.LBB5_19
	.quad	.LBB5_19
	.quad	.LBB5_19
	.quad	.LBB5_20
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"AllocPPS: PPS"
	.size	.L.str, 14

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"AllocSPS: SPS"
	.size	.L.str.1, 14

	.file	4 "ldecod_src/inc" "parsetcommon.h" md5 0xd59d7e00f3aec3a23ed88314ae35b687
	.file	5 "ldecod_src/inc" "typedefs.h" md5 0xe1393d024b72e653f4e6dbeffdb0b154
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	8                               # Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
	.long	.Ldebug_loc1-.Lloclists_table_base0
	.long	.Ldebug_loc2-.Lloclists_table_base0
	.long	.Ldebug_loc3-.Lloclists_table_base0
	.long	.Ldebug_loc4-.Lloclists_table_base0
	.long	.Ldebug_loc5-.Lloclists_table_base0
	.long	.Ldebug_loc6-.Lloclists_table_base0
	.long	.Ldebug_loc7-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp78-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp79-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp106-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp109-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp109-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp119-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp127-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp127-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp135-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp135-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp139-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp139-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp141-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp142-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp144-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp146-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp148-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp92-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp96-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp106-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp119-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp127-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp127-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp135-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp135-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp139-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp139-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp140-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp140-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	49                              # DW_OP_lit1
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp143-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp144-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp147-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	63                              # DW_OP_lit15
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_list_header_end0:
	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
	.byte	37                              # DW_AT_producer
	.byte	37                              # DW_FORM_strx1
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	114                             # DW_AT_str_offsets_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	37                              # DW_FORM_strx1
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	115                             # DW_AT_addr_base
	.byte	23                              # DW_FORM_sec_offset
	.ascii	"\214\001"                      # DW_AT_loclists_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	122                             # DW_AT_call_all_calls
	.byte	25                              # DW_FORM_flag_present
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	122                             # DW_AT_call_all_calls
	.byte	25                              # DW_FORM_flag_present
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.ascii	"\202\001"                      # DW_AT_call_tail_call
	.byte	25                              # DW_FORM_flag_present
	.ascii	"\201\001"                      # DW_AT_call_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	5                               # DW_FORM_data2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	56                              # DW_AT_data_member_location
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x6ad DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x27:0xa DW_TAG_variable
	.long	49                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               # Abbrev [3] 0x31:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x36:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	14                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x3d:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x41:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	2                               # Abbrev [2] 0x45:0xa DW_TAG_variable
	.long	49                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	7                               # Abbrev [7] 0x4f:0x1 DW_TAG_pointer_type
	.byte	5                               # Abbrev [5] 0x50:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x54:0x25 DW_TAG_subprogram
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	11                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	400                             # DW_AT_type
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0x63:0x9 DW_TAG_variable
	.byte	0                               # DW_AT_location
	.byte	136                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.long	400                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x6c:0x6 DW_TAG_call_site
	.long	121                             # DW_AT_call_origin
	.byte	3                               # DW_AT_call_return_pc
	.byte	10                              # Abbrev [10] 0x72:0x6 DW_TAG_call_site
	.long	153                             # DW_AT_call_origin
	.byte	4                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x79:0x14 DW_TAG_subprogram
	.byte	6                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	543                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	79                              # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	12                              # Abbrev [12] 0x82:0x5 DW_TAG_formal_parameter
	.long	141                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x87:0x5 DW_TAG_formal_parameter
	.long	141                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x8d:0x8 DW_TAG_typedef
	.long	149                             # DW_AT_type
	.byte	8                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x95:0x4 DW_TAG_base_type
	.byte	7                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	14                              # Abbrev [14] 0x99:0xa DW_TAG_subprogram
	.byte	9                               # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	12                              # Abbrev [12] 0x9d:0x5 DW_TAG_formal_parameter
	.long	163                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0xa3:0x5 DW_TAG_pointer_type
	.long	61                              # DW_AT_type
	.byte	8                               # Abbrev [8] 0xa8:0x25 DW_TAG_subprogram
	.byte	5                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	48                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	824                             # DW_AT_type
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0xb7:0x9 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	136                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	824                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xc0:0x6 DW_TAG_call_site
	.long	121                             # DW_AT_call_origin
	.byte	6                               # DW_AT_call_return_pc
	.byte	10                              # Abbrev [10] 0xc6:0x6 DW_TAG_call_site
	.long	153                             # DW_AT_call_origin
	.byte	7                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0xcd:0x27 DW_TAG_subprogram
	.byte	8                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	17                              # Abbrev [17] 0xd8:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	137                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.long	400                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0xe1:0x6 DW_TAG_call_site
	.long	244                             # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	9                               # DW_AT_call_pc
	.byte	10                              # Abbrev [10] 0xe7:0x6 DW_TAG_call_site
	.long	244                             # DW_AT_call_origin
	.byte	10                              # DW_AT_call_return_pc
	.byte	18                              # Abbrev [18] 0xed:0x6 DW_TAG_call_site
	.long	244                             # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	11                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0xf4:0xb DW_TAG_subprogram
	.byte	10                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	555                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	12                              # Abbrev [12] 0xf9:0x5 DW_TAG_formal_parameter
	.long	79                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0xff:0x1c DW_TAG_subprogram
	.byte	12                              # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	133                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	20                              # Abbrev [20] 0x10a:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	138                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.long	824                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x114:0x6 DW_TAG_call_site
	.long	244                             # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	12                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x11b:0x36 DW_TAG_subprogram
	.byte	13                              # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	134                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	731                             # DW_AT_type
                                        # DW_AT_external
	.byte	20                              # Abbrev [20] 0x12a:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	139                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.long	824                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x134:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	140                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.long	824                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x13e:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	141                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.long	731                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x147:0x9 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	142                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.long	80                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x151:0x3f DW_TAG_subprogram
	.byte	14                              # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	135                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	731                             # DW_AT_type
                                        # DW_AT_external
	.byte	20                              # Abbrev [20] 0x160:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	143                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.long	400                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x16a:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	144                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.long	400                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x174:0x9 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.byte	141                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.long	731                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x17d:0x9 DW_TAG_variable
	.byte	6                               # DW_AT_location
	.byte	142                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.long	80                              # DW_AT_type
	.byte	9                               # Abbrev [9] 0x186:0x9 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.long	80                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x190:0x5 DW_TAG_pointer_type
	.long	405                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x195:0x8 DW_TAG_typedef
	.long	413                             # DW_AT_type
	.byte	47                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x19d:0x13e DW_TAG_structure_type
	.short	2216                            # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x1a2:0x9 DW_TAG_member
	.byte	12                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x1ab:0x9 DW_TAG_member
	.byte	14                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x1b4:0x9 DW_TAG_member
	.byte	15                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x1bd:0x9 DW_TAG_member
	.byte	16                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x1c6:0x9 DW_TAG_member
	.byte	17                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x1cf:0x9 DW_TAG_member
	.byte	18                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x1d8:0x9 DW_TAG_member
	.byte	19                              # DW_AT_name
	.long	735                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x1e1:0x9 DW_TAG_member
	.byte	20                              # DW_AT_name
	.long	747                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x1ea:0xa DW_TAG_member
	.byte	21                              # DW_AT_name
	.long	765                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.short	456                             # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x1f4:0xa DW_TAG_member
	.byte	22                              # DW_AT_name
	.long	783                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.short	1992                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x1fe:0xa DW_TAG_member
	.byte	23                              # DW_AT_name
	.long	783                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.short	2016                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x208:0xa DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.short	2040                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x212:0xa DW_TAG_member
	.byte	25                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.short	2044                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x21c:0xa DW_TAG_member
	.byte	26                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.short	2048                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x226:0xa DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	795                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.short	2052                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x230:0xa DW_TAG_member
	.byte	28                              # DW_AT_name
	.long	795                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.short	2084                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x23a:0xa DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	795                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.short	2116                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x244:0xa DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.short	2148                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x24e:0xa DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.short	2152                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x258:0xa DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	122                             # DW_AT_decl_line
	.short	2156                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x262:0xa DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	807                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.short	2160                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x26c:0xa DW_TAG_member
	.byte	36                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.short	2168                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x276:0xa DW_TAG_member
	.byte	37                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.short	2172                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x280:0xa DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.short	2176                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x28a:0xa DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.short	2180                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x294:0xa DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.short	2184                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x29e:0xa DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.short	2188                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x2a8:0xa DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.short	2192                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x2b2:0xa DW_TAG_member
	.byte	43                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.short	2196                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x2bc:0xa DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.short	2200                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x2c6:0xa DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.short	2204                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x2d0:0xa DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.short	2208                            # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x2db:0x4 DW_TAG_base_type
	.byte	13                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x2df:0xc DW_TAG_array_type
	.long	731                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x2e4:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	12                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x2eb:0x12 DW_TAG_array_type
	.long	731                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x2f0:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	6                               # DW_AT_count
	.byte	4                               # Abbrev [4] 0x2f6:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x2fd:0x12 DW_TAG_array_type
	.long	731                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x302:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	6                               # DW_AT_count
	.byte	4                               # Abbrev [4] 0x308:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x30f:0xc DW_TAG_array_type
	.long	731                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x314:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	6                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x31b:0xc DW_TAG_array_type
	.long	80                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x320:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x327:0x5 DW_TAG_pointer_type
	.long	812                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x32c:0x8 DW_TAG_typedef
	.long	820                             # DW_AT_type
	.byte	35                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x334:0x4 DW_TAG_base_type
	.byte	34                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	15                              # Abbrev [15] 0x338:0x5 DW_TAG_pointer_type
	.long	829                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x33d:0x8 DW_TAG_typedef
	.long	837                             # DW_AT_type
	.byte	131                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x345:0x19d DW_TAG_structure_type
	.short	4128                            # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x34a:0x9 DW_TAG_member
	.byte	12                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x353:0x9 DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x35c:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x365:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x36e:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x377:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x380:0x9 DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x389:0x9 DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x392:0x9 DW_TAG_member
	.byte	15                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x39b:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x3a4:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x3ad:0x9 DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	735                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x3b6:0x9 DW_TAG_member
	.byte	20                              # DW_AT_name
	.long	747                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x3bf:0xa DW_TAG_member
	.byte	21                              # DW_AT_name
	.long	765                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.short	476                             # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x3c9:0xa DW_TAG_member
	.byte	22                              # DW_AT_name
	.long	783                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.short	2012                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x3d3:0xa DW_TAG_member
	.byte	23                              # DW_AT_name
	.long	783                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.short	2036                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x3dd:0xa DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.short	2060                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x3e7:0xa DW_TAG_member
	.byte	60                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.short	2064                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x3f1:0xa DW_TAG_member
	.byte	61                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.short	2068                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x3fb:0xa DW_TAG_member
	.byte	62                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.short	2072                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x405:0xa DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.short	2076                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x40f:0xa DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.short	2080                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x419:0xa DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.short	2084                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x423:0xa DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.short	2088                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x42d:0xa DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.short	2092                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x437:0xa DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	1250                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.short	2096                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x441:0xa DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.short	3120                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x44b:0xa DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.short	3124                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x455:0xa DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.short	3128                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x45f:0xa DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.short	3132                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x469:0xa DW_TAG_member
	.byte	73                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.short	3136                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x473:0xa DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.short	3140                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x47d:0xa DW_TAG_member
	.byte	75                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.short	3144                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x487:0xa DW_TAG_member
	.byte	76                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.short	3148                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x491:0xa DW_TAG_member
	.byte	77                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.short	3152                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x49b:0xa DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.short	3156                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x4a5:0xa DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.short	3160                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x4af:0xa DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.short	3164                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x4b9:0xa DW_TAG_member
	.byte	81                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.short	3168                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x4c3:0xa DW_TAG_member
	.byte	82                              # DW_AT_name
	.long	1263                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.short	3172                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x4cd:0xa DW_TAG_member
	.byte	130                             # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.short	4120                            # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x4d7:0xa DW_TAG_member
	.byte	128                             # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.short	4124                            # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x4e2:0xd DW_TAG_array_type
	.long	731                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x4e7:0x7 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.short	256                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x4ef:0x8 DW_TAG_typedef
	.long	1271                            # DW_AT_type
	.byte	129                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x4f7:0x144 DW_TAG_structure_type
	.short	948                             # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x4fc:0x9 DW_TAG_member
	.byte	83                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x505:0x9 DW_TAG_member
	.byte	84                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x50e:0x9 DW_TAG_member
	.byte	85                              # DW_AT_name
	.long	1595                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x517:0x9 DW_TAG_member
	.byte	87                              # DW_AT_name
	.long	1595                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	10                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x520:0x9 DW_TAG_member
	.byte	88                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x529:0x9 DW_TAG_member
	.byte	89                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x532:0x9 DW_TAG_member
	.byte	90                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x53b:0x9 DW_TAG_member
	.byte	91                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x544:0x9 DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x54d:0x9 DW_TAG_member
	.byte	93                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x556:0x9 DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x55f:0x9 DW_TAG_member
	.byte	95                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x568:0x9 DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x571:0x9 DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x57a:0x9 DW_TAG_member
	.byte	98                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x583:0x9 DW_TAG_member
	.byte	99                              # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x58c:0x9 DW_TAG_member
	.byte	100                             # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x595:0x9 DW_TAG_member
	.byte	101                             # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x59e:0x9 DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x5a7:0x9 DW_TAG_member
	.byte	103                             # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x5b0:0x9 DW_TAG_member
	.byte	104                             # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	76                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x5b9:0x9 DW_TAG_member
	.byte	105                             # DW_AT_name
	.long	1599                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x5c2:0xa DW_TAG_member
	.byte	117                             # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.short	492                             # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x5cc:0xa DW_TAG_member
	.byte	118                             # DW_AT_name
	.long	1599                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.short	496                             # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x5d6:0xa DW_TAG_member
	.byte	119                             # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.short	908                             # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x5e0:0xa DW_TAG_member
	.byte	120                             # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.short	912                             # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x5ea:0xa DW_TAG_member
	.byte	121                             # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.short	916                             # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x5f4:0xa DW_TAG_member
	.byte	122                             # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.short	920                             # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x5fe:0xa DW_TAG_member
	.byte	123                             # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.short	924                             # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x608:0xa DW_TAG_member
	.byte	124                             # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.short	928                             # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x612:0xa DW_TAG_member
	.byte	125                             # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.short	932                             # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x61c:0xa DW_TAG_member
	.byte	126                             # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	87                              # DW_AT_decl_line
	.short	936                             # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x626:0xa DW_TAG_member
	.byte	127                             # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.short	940                             # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x630:0xa DW_TAG_member
	.byte	128                             # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.short	944                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x63b:0x4 DW_TAG_base_type
	.byte	86                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	13                              # Abbrev [13] 0x63f:0x8 DW_TAG_typedef
	.long	1607                            # DW_AT_type
	.byte	116                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x647:0x65 DW_TAG_structure_type
	.short	412                             # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x64c:0x9 DW_TAG_member
	.byte	106                             # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x655:0x9 DW_TAG_member
	.byte	107                             # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x65e:0x9 DW_TAG_member
	.byte	108                             # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x667:0x9 DW_TAG_member
	.byte	109                             # DW_AT_name
	.long	1708                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x670:0x9 DW_TAG_member
	.byte	110                             # DW_AT_name
	.long	1708                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	140                             # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x679:0xa DW_TAG_member
	.byte	111                             # DW_AT_name
	.long	1708                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.short	268                             # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x683:0xa DW_TAG_member
	.byte	112                             # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.short	396                             # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x68d:0xa DW_TAG_member
	.byte	113                             # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.short	400                             # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x697:0xa DW_TAG_member
	.byte	114                             # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.short	404                             # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x6a1:0xa DW_TAG_member
	.byte	115                             # DW_AT_name
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.short	408                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x6ac:0xc DW_TAG_array_type
	.long	80                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x6b1:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	588                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"ldecod_src/parsetcommon.c"     # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/x264-test/src" # string offset=131
.Linfo_string3:
	.asciz	"char"                          # string offset=165
.Linfo_string4:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=170
.Linfo_string5:
	.asciz	"unsigned int"                  # string offset=190
.Linfo_string6:
	.asciz	"calloc"                        # string offset=203
.Linfo_string7:
	.asciz	"unsigned long"                 # string offset=210
.Linfo_string8:
	.asciz	"size_t"                        # string offset=224
.Linfo_string9:
	.asciz	"no_mem_exit"                   # string offset=231
.Linfo_string10:
	.asciz	"free"                          # string offset=243
.Linfo_string11:
	.asciz	"AllocPPS"                      # string offset=248
.Linfo_string12:
	.asciz	"Valid"                         # string offset=257
.Linfo_string13:
	.asciz	"int"                           # string offset=263
.Linfo_string14:
	.asciz	"pic_parameter_set_id"          # string offset=267
.Linfo_string15:
	.asciz	"seq_parameter_set_id"          # string offset=288
.Linfo_string16:
	.asciz	"entropy_coding_mode_flag"      # string offset=309
.Linfo_string17:
	.asciz	"transform_8x8_mode_flag"       # string offset=334
.Linfo_string18:
	.asciz	"pic_scaling_matrix_present_flag" # string offset=358
.Linfo_string19:
	.asciz	"pic_scaling_list_present_flag" # string offset=390
.Linfo_string20:
	.asciz	"ScalingList4x4"                # string offset=420
.Linfo_string21:
	.asciz	"ScalingList8x8"                # string offset=435
.Linfo_string22:
	.asciz	"UseDefaultScalingMatrix4x4Flag" # string offset=450
.Linfo_string23:
	.asciz	"UseDefaultScalingMatrix8x8Flag" # string offset=481
.Linfo_string24:
	.asciz	"bottom_field_pic_order_in_frame_present_flag" # string offset=512
.Linfo_string25:
	.asciz	"num_slice_groups_minus1"       # string offset=557
.Linfo_string26:
	.asciz	"slice_group_map_type"          # string offset=581
.Linfo_string27:
	.asciz	"run_length_minus1"             # string offset=602
.Linfo_string28:
	.asciz	"top_left"                      # string offset=620
.Linfo_string29:
	.asciz	"bottom_right"                  # string offset=629
.Linfo_string30:
	.asciz	"slice_group_change_direction_flag" # string offset=642
.Linfo_string31:
	.asciz	"slice_group_change_rate_minus1" # string offset=676
.Linfo_string32:
	.asciz	"pic_size_in_map_units_minus1"  # string offset=707
.Linfo_string33:
	.asciz	"slice_group_id"                # string offset=736
.Linfo_string34:
	.asciz	"unsigned char"                 # string offset=751
.Linfo_string35:
	.asciz	"byte"                          # string offset=765
.Linfo_string36:
	.asciz	"num_ref_idx_l0_active_minus1"  # string offset=770
.Linfo_string37:
	.asciz	"num_ref_idx_l1_active_minus1"  # string offset=799
.Linfo_string38:
	.asciz	"weighted_pred_flag"            # string offset=828
.Linfo_string39:
	.asciz	"weighted_bipred_idc"           # string offset=847
.Linfo_string40:
	.asciz	"pic_init_qp_minus26"           # string offset=867
.Linfo_string41:
	.asciz	"pic_init_qs_minus26"           # string offset=887
.Linfo_string42:
	.asciz	"chroma_qp_index_offset"        # string offset=907
.Linfo_string43:
	.asciz	"second_chroma_qp_index_offset" # string offset=930
.Linfo_string44:
	.asciz	"deblocking_filter_control_present_flag" # string offset=960
.Linfo_string45:
	.asciz	"constrained_intra_pred_flag"   # string offset=999
.Linfo_string46:
	.asciz	"redundant_pic_cnt_present_flag" # string offset=1027
.Linfo_string47:
	.asciz	"pic_parameter_set_rbsp_t"      # string offset=1058
.Linfo_string48:
	.asciz	"AllocSPS"                      # string offset=1083
.Linfo_string49:
	.asciz	"profile_idc"                   # string offset=1092
.Linfo_string50:
	.asciz	"constrained_set0_flag"         # string offset=1104
.Linfo_string51:
	.asciz	"constrained_set1_flag"         # string offset=1126
.Linfo_string52:
	.asciz	"constrained_set2_flag"         # string offset=1148
.Linfo_string53:
	.asciz	"constrained_set3_flag"         # string offset=1170
.Linfo_string54:
	.asciz	"constrained_set4_flag"         # string offset=1192
.Linfo_string55:
	.asciz	"level_idc"                     # string offset=1214
.Linfo_string56:
	.asciz	"chroma_format_idc"             # string offset=1224
.Linfo_string57:
	.asciz	"seq_scaling_matrix_present_flag" # string offset=1242
.Linfo_string58:
	.asciz	"seq_scaling_list_present_flag" # string offset=1274
.Linfo_string59:
	.asciz	"bit_depth_luma_minus8"         # string offset=1304
.Linfo_string60:
	.asciz	"bit_depth_chroma_minus8"       # string offset=1326
.Linfo_string61:
	.asciz	"log2_max_frame_num_minus4"     # string offset=1350
.Linfo_string62:
	.asciz	"pic_order_cnt_type"            # string offset=1376
.Linfo_string63:
	.asciz	"log2_max_pic_order_cnt_lsb_minus4" # string offset=1395
.Linfo_string64:
	.asciz	"delta_pic_order_always_zero_flag" # string offset=1429
.Linfo_string65:
	.asciz	"offset_for_non_ref_pic"        # string offset=1462
.Linfo_string66:
	.asciz	"offset_for_top_to_bottom_field" # string offset=1485
.Linfo_string67:
	.asciz	"num_ref_frames_in_pic_order_cnt_cycle" # string offset=1516
.Linfo_string68:
	.asciz	"offset_for_ref_frame"          # string offset=1554
.Linfo_string69:
	.asciz	"num_ref_frames"                # string offset=1575
.Linfo_string70:
	.asciz	"gaps_in_frame_num_value_allowed_flag" # string offset=1590
.Linfo_string71:
	.asciz	"pic_width_in_mbs_minus1"       # string offset=1627
.Linfo_string72:
	.asciz	"pic_height_in_map_units_minus1" # string offset=1651
.Linfo_string73:
	.asciz	"frame_mbs_only_flag"           # string offset=1682
.Linfo_string74:
	.asciz	"mb_adaptive_frame_field_flag"  # string offset=1702
.Linfo_string75:
	.asciz	"direct_8x8_inference_flag"     # string offset=1731
.Linfo_string76:
	.asciz	"frame_cropping_flag"           # string offset=1757
.Linfo_string77:
	.asciz	"frame_cropping_rect_left_offset" # string offset=1777
.Linfo_string78:
	.asciz	"frame_cropping_rect_right_offset" # string offset=1809
.Linfo_string79:
	.asciz	"frame_cropping_rect_top_offset" # string offset=1842
.Linfo_string80:
	.asciz	"frame_cropping_rect_bottom_offset" # string offset=1873
.Linfo_string81:
	.asciz	"vui_parameters_present_flag"   # string offset=1907
.Linfo_string82:
	.asciz	"vui_seq_parameters"            # string offset=1935
.Linfo_string83:
	.asciz	"aspect_ratio_info_present_flag" # string offset=1954
.Linfo_string84:
	.asciz	"aspect_ratio_idc"              # string offset=1985
.Linfo_string85:
	.asciz	"sar_width"                     # string offset=2002
.Linfo_string86:
	.asciz	"unsigned short"                # string offset=2012
.Linfo_string87:
	.asciz	"sar_height"                    # string offset=2027
.Linfo_string88:
	.asciz	"overscan_info_present_flag"    # string offset=2038
.Linfo_string89:
	.asciz	"overscan_appropriate_flag"     # string offset=2065
.Linfo_string90:
	.asciz	"video_signal_type_present_flag" # string offset=2091
.Linfo_string91:
	.asciz	"video_format"                  # string offset=2122
.Linfo_string92:
	.asciz	"video_full_range_flag"         # string offset=2135
.Linfo_string93:
	.asciz	"colour_description_present_flag" # string offset=2157
.Linfo_string94:
	.asciz	"colour_primaries"              # string offset=2189
.Linfo_string95:
	.asciz	"transfer_characteristics"      # string offset=2206
.Linfo_string96:
	.asciz	"matrix_coefficients"           # string offset=2231
.Linfo_string97:
	.asciz	"chroma_location_info_present_flag" # string offset=2251
.Linfo_string98:
	.asciz	"chroma_sample_loc_type_top_field" # string offset=2285
.Linfo_string99:
	.asciz	"chroma_sample_loc_type_bottom_field" # string offset=2318
.Linfo_string100:
	.asciz	"timing_info_present_flag"      # string offset=2354
.Linfo_string101:
	.asciz	"num_units_in_tick"             # string offset=2379
.Linfo_string102:
	.asciz	"time_scale"                    # string offset=2397
.Linfo_string103:
	.asciz	"fixed_frame_rate_flag"         # string offset=2408
.Linfo_string104:
	.asciz	"nal_hrd_parameters_present_flag" # string offset=2430
.Linfo_string105:
	.asciz	"nal_hrd_parameters"            # string offset=2462
.Linfo_string106:
	.asciz	"cpb_cnt_minus1"                # string offset=2481
.Linfo_string107:
	.asciz	"bit_rate_scale"                # string offset=2496
.Linfo_string108:
	.asciz	"cpb_size_scale"                # string offset=2511
.Linfo_string109:
	.asciz	"bit_rate_value_minus1"         # string offset=2526
.Linfo_string110:
	.asciz	"cpb_size_value_minus1"         # string offset=2548
.Linfo_string111:
	.asciz	"cbr_flag"                      # string offset=2570
.Linfo_string112:
	.asciz	"initial_cpb_removal_delay_length_minus1" # string offset=2579
.Linfo_string113:
	.asciz	"cpb_removal_delay_length_minus1" # string offset=2619
.Linfo_string114:
	.asciz	"dpb_output_delay_length_minus1" # string offset=2651
.Linfo_string115:
	.asciz	"time_offset_length"            # string offset=2682
.Linfo_string116:
	.asciz	"hrd_parameters_t"              # string offset=2701
.Linfo_string117:
	.asciz	"vcl_hrd_parameters_present_flag" # string offset=2718
.Linfo_string118:
	.asciz	"vcl_hrd_parameters"            # string offset=2750
.Linfo_string119:
	.asciz	"low_delay_hrd_flag"            # string offset=2769
.Linfo_string120:
	.asciz	"pic_struct_present_flag"       # string offset=2788
.Linfo_string121:
	.asciz	"bitstream_restriction_flag"    # string offset=2812
.Linfo_string122:
	.asciz	"motion_vectors_over_pic_boundaries_flag" # string offset=2839
.Linfo_string123:
	.asciz	"max_bytes_per_pic_denom"       # string offset=2879
.Linfo_string124:
	.asciz	"max_bits_per_mb_denom"         # string offset=2903
.Linfo_string125:
	.asciz	"log2_max_mv_length_vertical"   # string offset=2925
.Linfo_string126:
	.asciz	"log2_max_mv_length_horizontal" # string offset=2953
.Linfo_string127:
	.asciz	"num_reorder_frames"            # string offset=2983
.Linfo_string128:
	.asciz	"max_dec_frame_buffering"       # string offset=3002
.Linfo_string129:
	.asciz	"vui_seq_parameters_t"          # string offset=3026
.Linfo_string130:
	.asciz	"separate_colour_plane_flag"    # string offset=3047
.Linfo_string131:
	.asciz	"seq_parameter_set_rbsp_t"      # string offset=3074
.Linfo_string132:
	.asciz	"FreePPS"                       # string offset=3099
.Linfo_string133:
	.asciz	"FreeSPS"                       # string offset=3107
.Linfo_string134:
	.asciz	"sps_is_equal"                  # string offset=3115
.Linfo_string135:
	.asciz	"pps_is_equal"                  # string offset=3128
.Linfo_string136:
	.asciz	"p"                             # string offset=3141
.Linfo_string137:
	.asciz	"pps"                           # string offset=3143
.Linfo_string138:
	.asciz	"sps"                           # string offset=3147
.Linfo_string139:
	.asciz	"sps1"                          # string offset=3151
.Linfo_string140:
	.asciz	"sps2"                          # string offset=3156
.Linfo_string141:
	.asciz	"equal"                         # string offset=3161
.Linfo_string142:
	.asciz	"i"                             # string offset=3167
.Linfo_string143:
	.asciz	"pps1"                          # string offset=3169
.Linfo_string144:
	.asciz	"pps2"                          # string offset=3174
.Linfo_string145:
	.asciz	"j"                             # string offset=3179
	.section	.debug_str_offsets,"",@progbits
	.long	.Linfo_string0
	.long	.Linfo_string1
	.long	.Linfo_string2
	.long	.Linfo_string3
	.long	.Linfo_string4
	.long	.Linfo_string5
	.long	.Linfo_string6
	.long	.Linfo_string7
	.long	.Linfo_string8
	.long	.Linfo_string9
	.long	.Linfo_string10
	.long	.Linfo_string11
	.long	.Linfo_string12
	.long	.Linfo_string13
	.long	.Linfo_string14
	.long	.Linfo_string15
	.long	.Linfo_string16
	.long	.Linfo_string17
	.long	.Linfo_string18
	.long	.Linfo_string19
	.long	.Linfo_string20
	.long	.Linfo_string21
	.long	.Linfo_string22
	.long	.Linfo_string23
	.long	.Linfo_string24
	.long	.Linfo_string25
	.long	.Linfo_string26
	.long	.Linfo_string27
	.long	.Linfo_string28
	.long	.Linfo_string29
	.long	.Linfo_string30
	.long	.Linfo_string31
	.long	.Linfo_string32
	.long	.Linfo_string33
	.long	.Linfo_string34
	.long	.Linfo_string35
	.long	.Linfo_string36
	.long	.Linfo_string37
	.long	.Linfo_string38
	.long	.Linfo_string39
	.long	.Linfo_string40
	.long	.Linfo_string41
	.long	.Linfo_string42
	.long	.Linfo_string43
	.long	.Linfo_string44
	.long	.Linfo_string45
	.long	.Linfo_string46
	.long	.Linfo_string47
	.long	.Linfo_string48
	.long	.Linfo_string49
	.long	.Linfo_string50
	.long	.Linfo_string51
	.long	.Linfo_string52
	.long	.Linfo_string53
	.long	.Linfo_string54
	.long	.Linfo_string55
	.long	.Linfo_string56
	.long	.Linfo_string57
	.long	.Linfo_string58
	.long	.Linfo_string59
	.long	.Linfo_string60
	.long	.Linfo_string61
	.long	.Linfo_string62
	.long	.Linfo_string63
	.long	.Linfo_string64
	.long	.Linfo_string65
	.long	.Linfo_string66
	.long	.Linfo_string67
	.long	.Linfo_string68
	.long	.Linfo_string69
	.long	.Linfo_string70
	.long	.Linfo_string71
	.long	.Linfo_string72
	.long	.Linfo_string73
	.long	.Linfo_string74
	.long	.Linfo_string75
	.long	.Linfo_string76
	.long	.Linfo_string77
	.long	.Linfo_string78
	.long	.Linfo_string79
	.long	.Linfo_string80
	.long	.Linfo_string81
	.long	.Linfo_string82
	.long	.Linfo_string83
	.long	.Linfo_string84
	.long	.Linfo_string85
	.long	.Linfo_string86
	.long	.Linfo_string87
	.long	.Linfo_string88
	.long	.Linfo_string89
	.long	.Linfo_string90
	.long	.Linfo_string91
	.long	.Linfo_string92
	.long	.Linfo_string93
	.long	.Linfo_string94
	.long	.Linfo_string95
	.long	.Linfo_string96
	.long	.Linfo_string97
	.long	.Linfo_string98
	.long	.Linfo_string99
	.long	.Linfo_string100
	.long	.Linfo_string101
	.long	.Linfo_string102
	.long	.Linfo_string103
	.long	.Linfo_string104
	.long	.Linfo_string105
	.long	.Linfo_string106
	.long	.Linfo_string107
	.long	.Linfo_string108
	.long	.Linfo_string109
	.long	.Linfo_string110
	.long	.Linfo_string111
	.long	.Linfo_string112
	.long	.Linfo_string113
	.long	.Linfo_string114
	.long	.Linfo_string115
	.long	.Linfo_string116
	.long	.Linfo_string117
	.long	.Linfo_string118
	.long	.Linfo_string119
	.long	.Linfo_string120
	.long	.Linfo_string121
	.long	.Linfo_string122
	.long	.Linfo_string123
	.long	.Linfo_string124
	.long	.Linfo_string125
	.long	.Linfo_string126
	.long	.Linfo_string127
	.long	.Linfo_string128
	.long	.Linfo_string129
	.long	.Linfo_string130
	.long	.Linfo_string131
	.long	.Linfo_string132
	.long	.Linfo_string133
	.long	.Linfo_string134
	.long	.Linfo_string135
	.long	.Linfo_string136
	.long	.Linfo_string137
	.long	.Linfo_string138
	.long	.Linfo_string139
	.long	.Linfo_string140
	.long	.Linfo_string141
	.long	.Linfo_string142
	.long	.Linfo_string143
	.long	.Linfo_string144
	.long	.Linfo_string145
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.Lfunc_begin0
	.quad	.Ltmp0
	.quad	.Ltmp5
	.quad	.Lfunc_begin1
	.quad	.Ltmp9
	.quad	.Ltmp14
	.quad	.Lfunc_begin2
	.quad	.Ltmp18
	.quad	.Ltmp21
	.quad	.Ltmp22
	.quad	.Lfunc_begin3
	.quad	.Lfunc_begin4
	.quad	.Lfunc_begin5
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
