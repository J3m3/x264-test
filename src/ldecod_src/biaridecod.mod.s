	.text
	.file	"biaridecod.c"
	.file	0 "/home/yjs/workspace/x264-test/src" "ldecod_src/biaridecod.c" md5 0x231fd640fe72c8aaa6b4df7bb5612c20
	.file	1 "ldecod_src/inc" "typedefs.h" md5 0xe1393d024b72e653f4e6dbeffdb0b154
	.file	2 "ldecod_src/inc" "biaridecod.h" md5 0x9395105ff7eca866196162279db3ac14
	.globl	arideco_create_decoding_environment # -- Begin function arideco_create_decoding_environment
	.p2align	4, 0x90
	.type	arideco_create_decoding_environment,@function
arideco_create_decoding_environment:    # @arideco_create_decoding_environment
.Lfunc_begin0:
	.loc	0 39 0                          # ldecod_src/biaridecod.c:39:0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	.loc	0 42 14 prologue_end            # ldecod_src/biaridecod.c:42:14
	movl	$1, %edi
	movl	$32, %esi
	callq	calloc@PLT
.Ltmp0:
	#DEBUG_VALUE: arideco_create_decoding_environment:dep <- $rax
	.loc	0 42 53 is_stmt 0               # ldecod_src/biaridecod.c:42:53
	testq	%rax, %rax
.Ltmp1:
	.loc	0 42 7                          # ldecod_src/biaridecod.c:42:7
	je	.LBB0_1
.Ltmp2:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: arideco_create_decoding_environment:dep <- $rax
	.loc	0 44 3 epilogue_begin is_stmt 1 # ldecod_src/biaridecod.c:44:3
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Ltmp3:
.LBB0_1:                                # %if.then
	.cfi_def_cfa_offset 16
	#DEBUG_VALUE: arideco_create_decoding_environment:dep <- $rax
	.loc	0 43 5                          # ldecod_src/biaridecod.c:43:5
	movl	$.L.str, %edi
	movq	%rax, %rbx
.Ltmp4:
	#DEBUG_VALUE: arideco_create_decoding_environment:dep <- $rbx
	callq	no_mem_exit@PLT
.Ltmp5:
	.loc	0 0 5 is_stmt 0                 # ldecod_src/biaridecod.c:0:5
	movq	%rbx, %rax
.Ltmp6:
	.loc	0 44 3 epilogue_begin is_stmt 1 # ldecod_src/biaridecod.c:44:3
	popq	%rbx
.Ltmp7:
	#DEBUG_VALUE: arideco_create_decoding_environment:dep <- $rax
	.cfi_def_cfa_offset 8
	retq
.Ltmp8:
.Lfunc_end0:
	.size	arideco_create_decoding_environment, .Lfunc_end0-arideco_create_decoding_environment
	.cfi_endproc
	.file	3 "/usr/include" "stdlib.h" md5 0x02258fad21adf111bb9df9825e61954a
	.file	4 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	5 "ldecod_src/inc" "memalloc.h" md5 0x88776e97a131c37d03036121c7c9e0ac
                                        # -- End function
	.globl	arideco_delete_decoding_environment # -- Begin function arideco_delete_decoding_environment
	.p2align	4, 0x90
	.type	arideco_delete_decoding_environment,@function
arideco_delete_decoding_environment:    # @arideco_delete_decoding_environment
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: arideco_delete_decoding_environment:dep <- $rdi
	.loc	0 56 11 prologue_end            # ldecod_src/biaridecod.c:56:11
	testq	%rdi, %rdi
.Ltmp9:
	.loc	0 56 7 is_stmt 0                # ldecod_src/biaridecod.c:56:7
	jne	free@PLT                        # TAILCALL
.Ltmp10:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: arideco_delete_decoding_environment:dep <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 58 5 is_stmt 1                # ldecod_src/biaridecod.c:58:5
	movups	.L.str.1+16(%rip), %xmm0
	movq	errortext@GOTPCREL(%rip), %rdi
	movaps	%xmm0, 16(%rdi)
	movups	.L.str.1(%rip), %xmm0
	movaps	%xmm0, (%rdi)
	movb	$0, 32(%rdi)
	.loc	0 59 5                          # ldecod_src/biaridecod.c:59:5
	movl	$200, %esi
.Ltmp11:
	jmp	error@PLT                       # TAILCALL
.Ltmp12:
.Lfunc_end1:
	.size	arideco_delete_decoding_environment, .Lfunc_end1-arideco_delete_decoding_environment
	.cfi_endproc
	.file	6 "ldecod_src/inc" "global.h" md5 0xc4ca3c417c5616a2ff6b6266e7376fc1
                                        # -- End function
	.globl	arideco_done_decoding           # -- Begin function arideco_done_decoding
	.p2align	4, 0x90
	.type	arideco_done_decoding,@function
arideco_done_decoding:                  # @arideco_done_decoding
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: arideco_done_decoding:dep <- $rdi
	.loc	0 73 10 prologue_end            # ldecod_src/biaridecod.c:73:10
	movq	24(%rdi), %rax
	.loc	0 73 24 is_stmt 0               # ldecod_src/biaridecod.c:73:24
	incl	(%rax)
	.loc	0 77 1 is_stmt 1                # ldecod_src/biaridecod.c:77:1
	retq
.Ltmp13:
.Lfunc_end2:
	.size	arideco_done_decoding, .Lfunc_end2-arideco_done_decoding
	.cfi_endproc
                                        # -- End function
	.globl	getbyte                         # -- Begin function getbyte
	.p2align	4, 0x90
	.type	getbyte,@function
getbyte:                                # @getbyte
.Lfunc_begin3:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: getbyte:dep <- $rdi
	.loc	0 90 15 prologue_end            # ldecod_src/biaridecod.c:90:15
	movq	16(%rdi), %rax
	.loc	0 90 32 is_stmt 0               # ldecod_src/biaridecod.c:90:32
	movq	24(%rdi), %rcx
	.loc	0 90 46                         # ldecod_src/biaridecod.c:90:46
	movslq	(%rcx), %rdx
	leal	1(%rdx), %esi
	movl	%esi, (%rcx)
	.loc	0 90 10                         # ldecod_src/biaridecod.c:90:10
	movzbl	(%rax,%rdx), %eax
	.loc	0 90 3                          # ldecod_src/biaridecod.c:90:3
	retq
.Ltmp14:
.Lfunc_end3:
	.size	getbyte, .Lfunc_end3-getbyte
	.cfi_endproc
                                        # -- End function
	.globl	getword                         # -- Begin function getword
	.p2align	4, 0x90
	.type	getword,@function
getword:                                # @getword
.Lfunc_begin4:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: getword:dep <- $rdi
	.loc	0 101 17 prologue_end is_stmt 1 # ldecod_src/biaridecod.c:101:17
	movq	24(%rdi), %rax
	.loc	0 101 11 is_stmt 0              # ldecod_src/biaridecod.c:101:11
	movslq	(%rax), %rcx
.Ltmp15:
	#DEBUG_VALUE: getword:d <- $ecx
	.loc	0 106 23 is_stmt 1              # ldecod_src/biaridecod.c:106:23
	leal	2(%rcx), %edx
	movl	%edx, (%rax)
	.loc	0 107 17                        # ldecod_src/biaridecod.c:107:17
	movq	16(%rdi), %rax
	.loc	0 107 34 is_stmt 0              # ldecod_src/biaridecod.c:107:34
	movzwl	(%rax,%rcx), %eax
	rolw	$8, %ax
	movzwl	%ax, %eax
	.loc	0 107 3                         # ldecod_src/biaridecod.c:107:3
	retq
.Ltmp16:
.Lfunc_end4:
	.size	getword, .Lfunc_end4-getword
	.cfi_endproc
                                        # -- End function
	.globl	arideco_start_decoding          # -- Begin function arideco_start_decoding
	.p2align	4, 0x90
	.type	arideco_start_decoding,@function
arideco_start_decoding:                 # @arideco_start_decoding
.Lfunc_begin5:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: arideco_start_decoding:dep <- $rdi
	#DEBUG_VALUE: arideco_start_decoding:code_buffer <- $rsi
	#DEBUG_VALUE: arideco_start_decoding:firstbyte <- $edx
	#DEBUG_VALUE: arideco_start_decoding:code_len <- $rcx
	.loc	0 119 23 prologue_end is_stmt 1 # ldecod_src/biaridecod.c:119:23
	movq	%rsi, 16(%rdi)
	.loc	0 120 23                        # ldecod_src/biaridecod.c:120:23
	movq	%rcx, 24(%rdi)
	.loc	0 121 23                        # ldecod_src/biaridecod.c:121:23
	movl	%edx, (%rcx)
.Ltmp17:
	#DEBUG_VALUE: getbyte:dep <- $rdi
	.loc	0 90 15                         # ldecod_src/biaridecod.c:90:15
	movq	16(%rdi), %rax
	.loc	0 90 32 is_stmt 0               # ldecod_src/biaridecod.c:90:32
	movq	24(%rdi), %rcx
.Ltmp18:
	#DEBUG_VALUE: arideco_start_decoding:code_len <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 90 46                         # ldecod_src/biaridecod.c:90:46
	movslq	(%rcx), %rdx
.Ltmp19:
	#DEBUG_VALUE: arideco_start_decoding:firstbyte <- [DW_OP_LLVM_entry_value 1] $edx
	leal	1(%rdx), %esi
.Ltmp20:
	#DEBUG_VALUE: arideco_start_decoding:code_buffer <- [DW_OP_LLVM_entry_value 1] $rsi
	movl	%esi, (%rcx)
	.loc	0 90 10                         # ldecod_src/biaridecod.c:90:10
	movzbl	(%rax,%rdx), %eax
.Ltmp21:
	.loc	0 123 15 is_stmt 1              # ldecod_src/biaridecod.c:123:15
	movl	%eax, 4(%rdi)
	.loc	0 124 30                        # ldecod_src/biaridecod.c:124:30
	shll	$16, %eax
.Ltmp22:
	#DEBUG_VALUE: getword:dep <- $rdi
	.loc	0 101 17                        # ldecod_src/biaridecod.c:101:17
	movq	24(%rdi), %rcx
	.loc	0 101 11 is_stmt 0              # ldecod_src/biaridecod.c:101:11
	movslq	(%rcx), %rdx
.Ltmp23:
	#DEBUG_VALUE: getword:d <- $edx
	.loc	0 106 23 is_stmt 1              # ldecod_src/biaridecod.c:106:23
	leal	2(%rdx), %esi
	movl	%esi, (%rcx)
	.loc	0 107 17                        # ldecod_src/biaridecod.c:107:17
	movq	16(%rdi), %rcx
	.loc	0 107 12 is_stmt 0              # ldecod_src/biaridecod.c:107:12
	movzbl	(%rcx,%rdx), %esi
	.loc	0 107 29                        # ldecod_src/biaridecod.c:107:29
	shll	$8, %esi
	.loc	0 107 36                        # ldecod_src/biaridecod.c:107:36
	movzbl	1(%rcx,%rdx), %ecx
	.loc	0 107 34                        # ldecod_src/biaridecod.c:107:34
	orl	%eax, %ecx
.Ltmp24:
	.loc	0 124 37 is_stmt 1              # ldecod_src/biaridecod.c:124:37
	orl	%esi, %ecx
	.loc	0 124 15 is_stmt 0              # ldecod_src/biaridecod.c:124:15
	movl	%ecx, 4(%rdi)
	.loc	0 126 18 is_stmt 1              # ldecod_src/biaridecod.c:126:18
	movl	$15, 8(%rdi)
	.loc	0 127 15                        # ldecod_src/biaridecod.c:127:15
	movl	$510, (%rdi)                    # imm = 0x1FE
	.loc	0 132 1                         # ldecod_src/biaridecod.c:132:1
	retq
.Ltmp25:
.Lfunc_end5:
	.size	arideco_start_decoding, .Lfunc_end5-arideco_start_decoding
	.cfi_endproc
                                        # -- End function
	.globl	arideco_bits_read               # -- Begin function arideco_bits_read
	.p2align	4, 0x90
	.type	arideco_bits_read,@function
arideco_bits_read:                      # @arideco_bits_read
.Lfunc_begin6:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: arideco_bits_read:dep <- $rdi
	.loc	0 143 21 prologue_end           # ldecod_src/biaridecod.c:143:21
	movq	24(%rdi), %rax
	.loc	0 143 15 is_stmt 0              # ldecod_src/biaridecod.c:143:15
	movl	(%rax), %eax
	.loc	0 143 36                        # ldecod_src/biaridecod.c:143:36
	shll	$3, %eax
	.loc	0 143 42                        # ldecod_src/biaridecod.c:143:42
	subl	8(%rdi), %eax
.Ltmp26:
	#DEBUG_VALUE: arideco_bits_read:tmp <- $eax
	.loc	0 148 3 is_stmt 1               # ldecod_src/biaridecod.c:148:3
	retq
.Ltmp27:
.Lfunc_end6:
	.size	arideco_bits_read, .Lfunc_end6-arideco_bits_read
	.cfi_endproc
                                        # -- End function
	.globl	biari_decode_symbol             # -- Begin function biari_decode_symbol
	.p2align	4, 0x90
	.type	biari_decode_symbol,@function
biari_decode_symbol:                    # @biari_decode_symbol
.Lfunc_begin7:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: biari_decode_symbol:dep <- $rdi
	#DEBUG_VALUE: biari_decode_symbol:bi_ct <- $rsi
	.loc	0 162 32 prologue_end           # ldecod_src/biaridecod.c:162:32
	movzbl	2(%rsi), %eax
.Ltmp28:
	#DEBUG_VALUE: biari_decode_symbol:bit <- $eax
	#DEBUG_VALUE: biari_decode_symbol:range <- $rdi
	#DEBUG_VALUE: biari_decode_symbol:state <- $rsi
	#DEBUG_VALUE: biari_decode_symbol:value <- [DW_OP_plus_uconst 4, DW_OP_stack_value] $rdi
	.loc	0 166 41                        # ldecod_src/biaridecod.c:166:41
	movzwl	(%rsi), %ecx
	.loc	0 166 50 is_stmt 0              # ldecod_src/biaridecod.c:166:50
	movl	(%rdi), %r10d
.Ltmp29:
	.loc	0 171 6 is_stmt 1               # ldecod_src/biaridecod.c:171:6
	movl	4(%rdi), %r8d
.Ltmp30:
	.loc	0 166 56                        # ldecod_src/biaridecod.c:166:56
	movl	%r10d, %edx
	shrl	$6, %edx
	.loc	0 166 61 is_stmt 0              # ldecod_src/biaridecod.c:166:61
	andl	$3, %edx
	.loc	0 166 25                        # ldecod_src/biaridecod.c:166:25
	leal	(%rdx,%rcx,4), %ecx
	movzbl	rLPS_table_64x4(%rcx), %r9d
.Ltmp31:
	#DEBUG_VALUE: biari_decode_symbol:rLPS <- $r9d
	#DEBUG_VALUE: biari_decode_symbol:DbitsLeft <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $rdi
	.loc	0 169 10 is_stmt 1              # ldecod_src/biaridecod.c:169:10
	subl	%r9d, %r10d
	movl	%r10d, (%rdi)
.Ltmp32:
	.loc	0 171 26                        # ldecod_src/biaridecod.c:171:26
	movl	8(%rdi), %edx
	.loc	0 171 23 is_stmt 0              # ldecod_src/biaridecod.c:171:23
	movl	%edx, %ecx
	shll	%cl, %r10d
	.loc	0 171 13                        # ldecod_src/biaridecod.c:171:13
	subl	%r10d, %r8d
.Ltmp33:
	.loc	0 171 6                         # ldecod_src/biaridecod.c:171:6
	jae	.LBB7_3
.Ltmp34:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: biari_decode_symbol:dep <- $rdi
	#DEBUG_VALUE: biari_decode_symbol:bi_ct <- $rsi
	#DEBUG_VALUE: biari_decode_symbol:bit <- $eax
	#DEBUG_VALUE: biari_decode_symbol:range <- $rdi
	#DEBUG_VALUE: biari_decode_symbol:state <- $rsi
	#DEBUG_VALUE: biari_decode_symbol:value <- [DW_OP_plus_uconst 4, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: biari_decode_symbol:rLPS <- $r9d
	#DEBUG_VALUE: biari_decode_symbol:DbitsLeft <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $rdi
	.loc	0 173 35 is_stmt 1              # ldecod_src/biaridecod.c:173:35
	movzwl	(%rsi), %ecx
	.loc	0 173 14 is_stmt 0              # ldecod_src/biaridecod.c:173:14
	movzbl	AC_next_state_MPS_64(%rcx), %ecx
	.loc	0 173 12                        # ldecod_src/biaridecod.c:173:12
	movw	%cx, (%rsi)
.Ltmp35:
	.loc	0 175 9 is_stmt 1               # ldecod_src/biaridecod.c:175:9
	movl	(%rdi), %ecx
	.loc	0 175 16 is_stmt 0              # ldecod_src/biaridecod.c:175:16
	cmpl	$255, %ecx
.Ltmp36:
	.loc	0 175 9                         # ldecod_src/biaridecod.c:175:9
	ja	.LBB7_8
.Ltmp37:
# %bb.2:                                # %if.else
	#DEBUG_VALUE: biari_decode_symbol:dep <- $rdi
	#DEBUG_VALUE: biari_decode_symbol:bi_ct <- $rsi
	#DEBUG_VALUE: biari_decode_symbol:bit <- $eax
	#DEBUG_VALUE: biari_decode_symbol:range <- $rdi
	#DEBUG_VALUE: biari_decode_symbol:state <- $rsi
	#DEBUG_VALUE: biari_decode_symbol:value <- [DW_OP_plus_uconst 4, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: biari_decode_symbol:rLPS <- $r9d
	#DEBUG_VALUE: biari_decode_symbol:DbitsLeft <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $rdi
	.loc	0 180 14 is_stmt 1              # ldecod_src/biaridecod.c:180:14
	addl	%ecx, %ecx
	movl	%ecx, (%rdi)
.Ltmp38:
	.loc	0 182 17                        # ldecod_src/biaridecod.c:182:17
	movl	8(%rdi), %ecx
	decl	%ecx
	movl	%ecx, 8(%rdi)
.Ltmp39:
	#DEBUG_VALUE: biari_decode_symbol:bit <- $eax
	.loc	0 199 18                        # ldecod_src/biaridecod.c:199:18
	testl	%ecx, %ecx
.Ltmp40:
	.loc	0 199 7 is_stmt 0               # ldecod_src/biaridecod.c:199:7
	jg	.LBB7_8
	jmp	.LBB7_7
.Ltmp41:
.LBB7_3:                                # %if.else14
	#DEBUG_VALUE: biari_decode_symbol:dep <- $rdi
	#DEBUG_VALUE: biari_decode_symbol:bi_ct <- $rsi
	#DEBUG_VALUE: biari_decode_symbol:bit <- $eax
	#DEBUG_VALUE: biari_decode_symbol:range <- $rdi
	#DEBUG_VALUE: biari_decode_symbol:state <- $rsi
	#DEBUG_VALUE: biari_decode_symbol:value <- [DW_OP_plus_uconst 4, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: biari_decode_symbol:rLPS <- $r9d
	#DEBUG_VALUE: biari_decode_symbol:DbitsLeft <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $rdi
	.loc	0 186 39 is_stmt 1              # ldecod_src/biaridecod.c:186:39
	movl	%r9d, %ecx
	shrl	$3, %ecx
	.loc	0 186 18 is_stmt 0              # ldecod_src/biaridecod.c:186:18
	movzbl	renorm_table_32(%rcx), %ecx
.Ltmp42:
	#DEBUG_VALUE: renorm <- $ecx
	.loc	0 187 12 is_stmt 1              # ldecod_src/biaridecod.c:187:12
	movl	%r8d, 4(%rdi)
	.loc	0 189 20                        # ldecod_src/biaridecod.c:189:20
	shll	%cl, %r9d
.Ltmp43:
	.loc	0 189 12 is_stmt 0              # ldecod_src/biaridecod.c:189:12
	movl	%r9d, (%rdi)
	.loc	0 190 18 is_stmt 1              # ldecod_src/biaridecod.c:190:18
	subl	%ecx, %edx
	movl	%edx, 8(%rdi)
.Ltmp44:
	#DEBUG_VALUE: biari_decode_symbol:bit <- undef
	.loc	0 193 11                        # ldecod_src/biaridecod.c:193:11
	movzwl	(%rsi), %ecx
.Ltmp45:
	testq	%rcx, %rcx
.Ltmp46:
	.loc	0 193 9 is_stmt 0               # ldecod_src/biaridecod.c:193:9
	jne	.LBB7_5
.Ltmp47:
# %bb.4:                                # %if.then25
	#DEBUG_VALUE: biari_decode_symbol:dep <- $rdi
	#DEBUG_VALUE: biari_decode_symbol:bi_ct <- $rsi
	#DEBUG_VALUE: biari_decode_symbol:range <- $rdi
	#DEBUG_VALUE: biari_decode_symbol:state <- $rsi
	#DEBUG_VALUE: biari_decode_symbol:value <- [DW_OP_plus_uconst 4, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: biari_decode_symbol:DbitsLeft <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $rdi
	.loc	0 194 18 is_stmt 1              # ldecod_src/biaridecod.c:194:18
	xorb	$1, 2(%rsi)
.Ltmp48:
.LBB7_5:                                # %if.end30
	#DEBUG_VALUE: biari_decode_symbol:dep <- $rdi
	#DEBUG_VALUE: biari_decode_symbol:bi_ct <- $rsi
	#DEBUG_VALUE: biari_decode_symbol:range <- $rdi
	#DEBUG_VALUE: biari_decode_symbol:state <- $rsi
	#DEBUG_VALUE: biari_decode_symbol:value <- [DW_OP_plus_uconst 4, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: biari_decode_symbol:DbitsLeft <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $rdi
	.loc	0 0 0 is_stmt 0                 # ldecod_src/biaridecod.c:0:0
	xorl	$1, %eax
.Ltmp49:
	#DEBUG_VALUE: biari_decode_symbol:bit <- $eax
	.loc	0 196 14 is_stmt 1              # ldecod_src/biaridecod.c:196:14
	movzbl	AC_next_state_LPS_64(%rcx), %ecx
	.loc	0 196 12 is_stmt 0              # ldecod_src/biaridecod.c:196:12
	movw	%cx, (%rsi)
.Ltmp50:
	.loc	0 199 7 is_stmt 1               # ldecod_src/biaridecod.c:199:7
	movl	8(%rdi), %ecx
	#DEBUG_VALUE: biari_decode_symbol:bit <- $eax
	.loc	0 199 18 is_stmt 0              # ldecod_src/biaridecod.c:199:18
	testl	%ecx, %ecx
.Ltmp51:
	.loc	0 199 7                         # ldecod_src/biaridecod.c:199:7
	jle	.LBB7_7
.Ltmp52:
.LBB7_8:                                # %cleanup
	#DEBUG_VALUE: biari_decode_symbol:dep <- $rdi
	#DEBUG_VALUE: biari_decode_symbol:bi_ct <- $rsi
	#DEBUG_VALUE: biari_decode_symbol:bit <- $eax
	#DEBUG_VALUE: biari_decode_symbol:range <- $rdi
	#DEBUG_VALUE: biari_decode_symbol:state <- $rsi
	#DEBUG_VALUE: biari_decode_symbol:value <- [DW_OP_plus_uconst 4, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: biari_decode_symbol:DbitsLeft <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $rdi
	.loc	0 212 1 is_stmt 1               # ldecod_src/biaridecod.c:212:1
	retq
.Ltmp53:
.LBB7_7:                                # %if.else38
	#DEBUG_VALUE: biari_decode_symbol:dep <- $rdi
	#DEBUG_VALUE: biari_decode_symbol:bi_ct <- $rsi
	#DEBUG_VALUE: biari_decode_symbol:bit <- $eax
	#DEBUG_VALUE: biari_decode_symbol:range <- $rdi
	#DEBUG_VALUE: biari_decode_symbol:state <- $rsi
	#DEBUG_VALUE: biari_decode_symbol:value <- [DW_OP_plus_uconst 4, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: biari_decode_symbol:DbitsLeft <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $rdi
	.loc	0 205 12                        # ldecod_src/biaridecod.c:205:12
	shll	$16, 4(%rdi)
.Ltmp54:
	#DEBUG_VALUE: getword:dep <- $rdi
	.loc	0 101 17                        # ldecod_src/biaridecod.c:101:17
	movq	24(%rdi), %rcx
	.loc	0 101 11 is_stmt 0              # ldecod_src/biaridecod.c:101:11
	movslq	(%rcx), %rdx
.Ltmp55:
	#DEBUG_VALUE: getword:d <- $edx
	.loc	0 106 23 is_stmt 1              # ldecod_src/biaridecod.c:106:23
	leal	2(%rdx), %esi
.Ltmp56:
	#DEBUG_VALUE: biari_decode_symbol:bi_ct <- [DW_OP_LLVM_entry_value 1] $rsi
	movl	%esi, (%rcx)
	.loc	0 107 17                        # ldecod_src/biaridecod.c:107:17
	movq	16(%rdi), %rcx
	.loc	0 107 34 is_stmt 0              # ldecod_src/biaridecod.c:107:34
	movzwl	(%rcx,%rdx), %ecx
	rolw	$8, %cx
	movzwl	%cx, %ecx
.Ltmp57:
	.loc	0 206 12 is_stmt 1              # ldecod_src/biaridecod.c:206:12
	orl	%ecx, 4(%rdi)
	.loc	0 208 18                        # ldecod_src/biaridecod.c:208:18
	addl	$16, 8(%rdi)
.Ltmp58:
	.loc	0 212 1                         # ldecod_src/biaridecod.c:212:1
	retq
.Ltmp59:
.Lfunc_end7:
	.size	biari_decode_symbol, .Lfunc_end7-biari_decode_symbol
	.cfi_endproc
                                        # -- End function
	.globl	biari_decode_symbol_eq_prob     # -- Begin function biari_decode_symbol_eq_prob
	.p2align	4, 0x90
	.type	biari_decode_symbol_eq_prob,@function
biari_decode_symbol_eq_prob:            # @biari_decode_symbol_eq_prob
.Lfunc_begin8:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: biari_decode_symbol_eq_prob:dep <- $rdi
	#DEBUG_VALUE: biari_decode_symbol_eq_prob:value <- [DW_OP_plus_uconst 4, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: biari_decode_symbol_eq_prob:DbitsLeft <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $rdi
	.loc	0 235 16 prologue_end           # ldecod_src/biaridecod.c:235:16
	movl	4(%rdi), %eax
.Ltmp60:
	.loc	0 229 6                         # ldecod_src/biaridecod.c:229:6
	movl	8(%rdi), %ecx
	.loc	0 229 21 is_stmt 0              # ldecod_src/biaridecod.c:229:21
	decl	%ecx
	.loc	0 229 6                         # ldecod_src/biaridecod.c:229:6
	movl	%ecx, 8(%rdi)
.Ltmp61:
	.loc	0 229 6                         # ldecod_src/biaridecod.c:229:6
	je	.LBB8_3
.Ltmp62:
# %bb.1:                                # %if.end
	#DEBUG_VALUE: biari_decode_symbol_eq_prob:dep <- $rdi
	#DEBUG_VALUE: biari_decode_symbol_eq_prob:value <- [DW_OP_plus_uconst 4, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: biari_decode_symbol_eq_prob:DbitsLeft <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $rdi
	.loc	0 235 31 is_stmt 1              # ldecod_src/biaridecod.c:235:31
	movl	(%rdi), %edx
                                        # kill: def $cl killed $cl killed $ecx
	.loc	0 235 38 is_stmt 0              # ldecod_src/biaridecod.c:235:38
	shll	%cl, %edx
.Ltmp63:
	.loc	0 237 17 is_stmt 1              # ldecod_src/biaridecod.c:237:17
	subl	%edx, %eax
.Ltmp64:
	#DEBUG_VALUE: biari_decode_symbol_eq_prob:tmp_value <- $eax
	.loc	0 237 7 is_stmt 0               # ldecod_src/biaridecod.c:237:7
	js	.LBB8_4
.Ltmp65:
.LBB8_2:                                # %if.else
	#DEBUG_VALUE: biari_decode_symbol_eq_prob:dep <- $rdi
	#DEBUG_VALUE: biari_decode_symbol_eq_prob:value <- [DW_OP_plus_uconst 4, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: biari_decode_symbol_eq_prob:DbitsLeft <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $rdi
	.loc	0 243 12 is_stmt 1              # ldecod_src/biaridecod.c:243:12
	movl	%eax, 4(%rdi)
	movl	$1, %eax
.Ltmp66:
	.loc	0 246 1                         # ldecod_src/biaridecod.c:246:1
	retq
.Ltmp67:
.LBB8_3:                                # %if.then
	#DEBUG_VALUE: biari_decode_symbol_eq_prob:dep <- $rdi
	#DEBUG_VALUE: biari_decode_symbol_eq_prob:value <- [DW_OP_plus_uconst 4, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: biari_decode_symbol_eq_prob:DbitsLeft <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $rdi
	.loc	0 231 22                        # ldecod_src/biaridecod.c:231:22
	shll	$16, %eax
.Ltmp68:
	#DEBUG_VALUE: getword:dep <- $rdi
	.loc	0 101 17                        # ldecod_src/biaridecod.c:101:17
	movq	24(%rdi), %rcx
	.loc	0 101 11 is_stmt 0              # ldecod_src/biaridecod.c:101:11
	movslq	(%rcx), %rdx
.Ltmp69:
	#DEBUG_VALUE: getword:d <- $edx
	.loc	0 106 23 is_stmt 1              # ldecod_src/biaridecod.c:106:23
	leal	2(%rdx), %esi
	movl	%esi, (%rcx)
	.loc	0 107 17                        # ldecod_src/biaridecod.c:107:17
	movq	16(%rdi), %rcx
	.loc	0 107 12 is_stmt 0              # ldecod_src/biaridecod.c:107:12
	movzbl	(%rcx,%rdx), %esi
	.loc	0 107 29                        # ldecod_src/biaridecod.c:107:29
	shll	$8, %esi
	.loc	0 107 36                        # ldecod_src/biaridecod.c:107:36
	movzbl	1(%rcx,%rdx), %edx
.Ltmp70:
	.loc	0 107 34                        # ldecod_src/biaridecod.c:107:34
	orl	%eax, %edx
.Ltmp71:
	.loc	0 231 29 is_stmt 1              # ldecod_src/biaridecod.c:231:29
	orl	%esi, %edx
	.loc	0 231 12 is_stmt 0              # ldecod_src/biaridecod.c:231:12
	movl	%edx, 4(%rdi)
	.loc	0 233 16 is_stmt 1              # ldecod_src/biaridecod.c:233:16
	movl	$16, 8(%rdi)
	movl	$16, %ecx
	movl	%edx, %eax
.Ltmp72:
	.loc	0 235 31                        # ldecod_src/biaridecod.c:235:31
	movl	(%rdi), %edx
                                        # kill: def $cl killed $cl killed $ecx
	.loc	0 235 38 is_stmt 0              # ldecod_src/biaridecod.c:235:38
	shll	%cl, %edx
.Ltmp73:
	.loc	0 237 17 is_stmt 1              # ldecod_src/biaridecod.c:237:17
	subl	%edx, %eax
.Ltmp74:
	#DEBUG_VALUE: biari_decode_symbol_eq_prob:tmp_value <- undef
	.loc	0 237 7 is_stmt 0               # ldecod_src/biaridecod.c:237:7
	jns	.LBB8_2
.Ltmp75:
.LBB8_4:
	#DEBUG_VALUE: biari_decode_symbol_eq_prob:dep <- $rdi
	#DEBUG_VALUE: biari_decode_symbol_eq_prob:value <- [DW_OP_plus_uconst 4, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: biari_decode_symbol_eq_prob:DbitsLeft <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $rdi
	.loc	0 0 7                           # ldecod_src/biaridecod.c:0:7
	xorl	%eax, %eax
	.loc	0 246 1 is_stmt 1               # ldecod_src/biaridecod.c:246:1
	retq
.Ltmp76:
.Lfunc_end8:
	.size	biari_decode_symbol_eq_prob, .Lfunc_end8-biari_decode_symbol_eq_prob
	.cfi_endproc
                                        # -- End function
	.globl	biari_decode_final              # -- Begin function biari_decode_final
	.p2align	4, 0x90
	.type	biari_decode_final,@function
biari_decode_final:                     # @biari_decode_final
.Lfunc_begin9:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: biari_decode_final:dep <- $rdi
	.loc	0 258 30 prologue_end           # ldecod_src/biaridecod.c:258:30
	movl	(%rdi), %esi
.Ltmp77:
	#DEBUG_VALUE: biari_decode_final:value <- undef
	.loc	0 258 37 is_stmt 0              # ldecod_src/biaridecod.c:258:37
	addl	$-2, %esi
.Ltmp78:
	#DEBUG_VALUE: biari_decode_final:range <- $esi
	.loc	0 260 27 is_stmt 1              # ldecod_src/biaridecod.c:260:27
	movl	8(%rdi), %ecx
	.loc	0 260 19 is_stmt 0              # ldecod_src/biaridecod.c:260:19
	movl	%esi, %r8d
	shll	%cl, %r8d
	.loc	0 259 21 is_stmt 1              # ldecod_src/biaridecod.c:259:21
	movl	4(%rdi), %edx
.Ltmp79:
	#DEBUG_VALUE: biari_decode_final:value <- $edx
	.loc	0 0 21 is_stmt 0                # ldecod_src/biaridecod.c:0:21
	movl	$1, %eax
.Ltmp80:
	.loc	0 262 13 is_stmt 1              # ldecod_src/biaridecod.c:262:13
	cmpl	%r8d, %edx
.Ltmp81:
	#DEBUG_VALUE: biari_decode_final:value <- undef
	.loc	0 262 7 is_stmt 0               # ldecod_src/biaridecod.c:262:7
	js	.LBB9_1
.Ltmp82:
.LBB9_3:                                # %cleanup
	#DEBUG_VALUE: biari_decode_final:dep <- $rdi
	.loc	0 287 1 is_stmt 1               # ldecod_src/biaridecod.c:287:1
	retq
.Ltmp83:
.LBB9_1:                                # %if.then
	#DEBUG_VALUE: biari_decode_final:dep <- $rdi
	#DEBUG_VALUE: biari_decode_final:range <- $esi
	.loc	0 264 15                        # ldecod_src/biaridecod.c:264:15
	cmpl	$256, %esi                      # imm = 0x100
.Ltmp84:
	.loc	0 264 9 is_stmt 0               # ldecod_src/biaridecod.c:264:9
	jb	.LBB9_4
.Ltmp85:
# %bb.2:                                # %if.then3
	#DEBUG_VALUE: biari_decode_final:dep <- $rdi
	#DEBUG_VALUE: biari_decode_final:range <- $esi
	.loc	0 266 19 is_stmt 1              # ldecod_src/biaridecod.c:266:19
	movl	%esi, (%rdi)
	xorl	%eax, %eax
.Ltmp86:
	.loc	0 287 1                         # ldecod_src/biaridecod.c:287:1
	retq
.Ltmp87:
.LBB9_4:                                # %if.else
	#DEBUG_VALUE: biari_decode_final:dep <- $rdi
	#DEBUG_VALUE: biari_decode_final:range <- $esi
	.loc	0 271 28                        # ldecod_src/biaridecod.c:271:28
	addl	%esi, %esi
.Ltmp88:
	.loc	0 271 19 is_stmt 0              # ldecod_src/biaridecod.c:271:19
	movl	%esi, (%rdi)
.Ltmp89:
	.loc	0 272 11 is_stmt 1              # ldecod_src/biaridecod.c:272:11
	leal	-1(%rcx), %eax
	movl	%eax, 8(%rdi)
	xorl	%eax, %eax
	.loc	0 272 30 is_stmt 0              # ldecod_src/biaridecod.c:272:30
	cmpl	$1, %ecx
.Ltmp90:
	.loc	0 272 11                        # ldecod_src/biaridecod.c:272:11
	jg	.LBB9_3
.Ltmp91:
# %bb.5:                                # %if.else10
	#DEBUG_VALUE: biari_decode_final:dep <- $rdi
	.loc	0 276 36 is_stmt 1              # ldecod_src/biaridecod.c:276:36
	shll	$16, %edx
.Ltmp92:
	#DEBUG_VALUE: getword:dep <- $rdi
	.loc	0 101 17                        # ldecod_src/biaridecod.c:101:17
	movq	24(%rdi), %rcx
	.loc	0 101 11 is_stmt 0              # ldecod_src/biaridecod.c:101:11
	movslq	(%rcx), %rsi
.Ltmp93:
	#DEBUG_VALUE: getword:d <- $esi
	.loc	0 106 23 is_stmt 1              # ldecod_src/biaridecod.c:106:23
	leal	2(%rsi), %r8d
	movl	%r8d, (%rcx)
	.loc	0 107 17                        # ldecod_src/biaridecod.c:107:17
	movq	16(%rdi), %rcx
	.loc	0 107 12 is_stmt 0              # ldecod_src/biaridecod.c:107:12
	movzbl	(%rcx,%rsi), %r8d
	.loc	0 107 29                        # ldecod_src/biaridecod.c:107:29
	shll	$8, %r8d
	.loc	0 107 36                        # ldecod_src/biaridecod.c:107:36
	movzbl	1(%rcx,%rsi), %ecx
	.loc	0 107 34                        # ldecod_src/biaridecod.c:107:34
	orl	%edx, %ecx
.Ltmp94:
	.loc	0 276 43 is_stmt 1              # ldecod_src/biaridecod.c:276:43
	orl	%r8d, %ecx
	.loc	0 276 21 is_stmt 0              # ldecod_src/biaridecod.c:276:21
	movl	%ecx, 4(%rdi)
	.loc	0 278 24 is_stmt 1              # ldecod_src/biaridecod.c:278:24
	movl	$16, 8(%rdi)
.Ltmp95:
	.loc	0 287 1                         # ldecod_src/biaridecod.c:287:1
	retq
.Ltmp96:
.Lfunc_end9:
	.size	biari_decode_final, .Lfunc_end9-biari_decode_final
	.cfi_endproc
                                        # -- End function
	.globl	biari_init_context              # -- Begin function biari_init_context
	.p2align	4, 0x90
	.type	biari_init_context,@function
biari_init_context:                     # @biari_init_context
.Lfunc_begin10:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: biari_init_context:qp <- $edi
	#DEBUG_VALUE: biari_init_context:ctx <- $rsi
	#DEBUG_VALUE: biari_init_context:ini <- $rdx
	.loc	0 297 18 prologue_end           # ldecod_src/biaridecod.c:297:18
	movsbl	(%rdx), %eax
	.loc	0 297 24 is_stmt 0              # ldecod_src/biaridecod.c:297:24
	imull	%edi, %eax
	.loc	0 297 30                        # ldecod_src/biaridecod.c:297:30
	sarl	$4, %eax
	.loc	0 297 37                        # ldecod_src/biaridecod.c:297:37
	movsbl	1(%rdx), %ecx
	.loc	0 297 35                        # ldecod_src/biaridecod.c:297:35
	addl	%eax, %ecx
.Ltmp97:
	#DEBUG_VALUE: biari_init_context:pstate <- $ecx
	.loc	0 299 15 is_stmt 1              # ldecod_src/biaridecod.c:299:15
	cmpl	$64, %ecx
.Ltmp98:
	.loc	0 299 8 is_stmt 0               # ldecod_src/biaridecod.c:299:8
	jl	.LBB10_2
.Ltmp99:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: biari_init_context:qp <- $edi
	#DEBUG_VALUE: biari_init_context:ctx <- $rsi
	#DEBUG_VALUE: biari_init_context:ini <- $rdx
	#DEBUG_VALUE: biari_init_context:pstate <- $ecx
	#DEBUG_VALUE: imin:a <- 126
	#DEBUG_VALUE: imin:b <- $ecx
	.file	7 "ldecod_src/inc" "ifunctions.h" md5 0x279401589ed56df99e287ad9e5fc564b
	.loc	7 44 10 is_stmt 1               # ldecod_src/inc/ifunctions.h:44:10
	cmpl	$126, %ecx
	movl	$126, %eax
	cmovbl	%ecx, %eax
.Ltmp100:
	#DEBUG_VALUE: biari_init_context:pstate <- $eax
	.loc	0 302 18                        # ldecod_src/biaridecod.c:302:18
	addl	$-64, %eax
.Ltmp101:
	.loc	0 0 18 is_stmt 0                # ldecod_src/biaridecod.c:0:18
	movb	$1, %cl
.Ltmp102:
	movw	%ax, (%rsi)
	movb	%cl, 2(%rsi)
.Ltmp103:
	.loc	0 311 1 is_stmt 1               # ldecod_src/biaridecod.c:311:1
	retq
.Ltmp104:
.LBB10_2:                               # %if.else
	#DEBUG_VALUE: biari_init_context:qp <- $edi
	#DEBUG_VALUE: biari_init_context:ctx <- $rsi
	#DEBUG_VALUE: biari_init_context:ini <- $rdx
	#DEBUG_VALUE: biari_init_context:pstate <- $ecx
	#DEBUG_VALUE: imax:a <- 1
	#DEBUG_VALUE: imax:b <- $ecx
	.loc	7 49 10                         # ldecod_src/inc/ifunctions.h:49:10
	cmpl	$2, %ecx
	movl	$1, %edx
.Ltmp105:
	#DEBUG_VALUE: biari_init_context:ini <- [DW_OP_LLVM_entry_value 1] $rdx
	cmovgel	%ecx, %edx
.Ltmp106:
	#DEBUG_VALUE: biari_init_context:pstate <- $edx
	.loc	7 0 10 is_stmt 0                # ldecod_src/inc/ifunctions.h:0:10
	movl	$63, %eax
.Ltmp107:
	.loc	0 308 18 is_stmt 1              # ldecod_src/biaridecod.c:308:18
	subl	%edx, %eax
	xorl	%ecx, %ecx
.Ltmp108:
	.loc	0 0 0 is_stmt 0                 # ldecod_src/biaridecod.c:0:0
	movw	%ax, (%rsi)
	movb	%cl, 2(%rsi)
.Ltmp109:
	.loc	0 311 1 is_stmt 1               # ldecod_src/biaridecod.c:311:1
	retq
.Ltmp110:
.Lfunc_end10:
	.size	biari_init_context, .Lfunc_end10-biari_init_context
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"arideco_create_decoding_environment: dep"
	.size	.L.str, 41

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Error freeing dep (NULL pointer)"
	.size	.L.str.1, 33

	.type	rLPS_table_64x4,@object         # @rLPS_table_64x4
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
rLPS_table_64x4:
	.ascii	"\200\260\320\360"
	.ascii	"\200\247\305\343"
	.ascii	"\200\236\273\330"
	.ascii	"{\226\262\315"
	.ascii	"t\216\251\303"
	.ascii	"o\207\240\271"
	.ascii	"i\200\230\257"
	.ascii	"dz\220\246"
	.ascii	"_t\211\236"
	.ascii	"Zn\202\226"
	.ascii	"Uh{\216"
	.ascii	"Qcu\207"
	.ascii	"M^o\200"
	.ascii	"IYiz"
	.ascii	"EUdt"
	.ascii	"BP_n"
	.ascii	">LZh"
	.ascii	";HVc"
	.ascii	"8EQ^"
	.ascii	"5AMY"
	.ascii	"3>IU"
	.ascii	"0;EP"
	.ascii	".8BL"
	.ascii	"+5?H"
	.ascii	")2;E"
	.ascii	"'08A"
	.ascii	"%-6>"
	.ascii	"#+3;"
	.ascii	"!)08"
	.ascii	" '.5"
	.ascii	"\036%+2"
	.ascii	"\035#)0"
	.ascii	"\033!'-"
	.ascii	"\032\037%+"
	.ascii	"\030\036#)"
	.ascii	"\027\034!'"
	.ascii	"\026\033 %"
	.ascii	"\025\032\036#"
	.ascii	"\024\030\035!"
	.ascii	"\023\027\033\037"
	.ascii	"\022\026\032\036"
	.ascii	"\021\025\031\034"
	.ascii	"\020\024\027\033"
	.ascii	"\017\023\026\031"
	.ascii	"\016\022\025\030"
	.ascii	"\016\021\024\027"
	.ascii	"\r\020\023\026"
	.ascii	"\f\017\022\025"
	.ascii	"\f\016\021\024"
	.ascii	"\013\016\020\023"
	.ascii	"\013\r\017\022"
	.ascii	"\n\f\017\021"
	.ascii	"\n\f\016\020"
	.ascii	"\t\013\r\017"
	.ascii	"\t\013\f\016"
	.ascii	"\b\n\f\016"
	.ascii	"\b\t\013\r"
	.ascii	"\007\t\013\f"
	.ascii	"\007\t\n\f"
	.ascii	"\007\b\n\013"
	.ascii	"\006\b\t\013"
	.ascii	"\006\007\t\n"
	.ascii	"\006\007\b\t"
	.zero	4,2
	.size	rLPS_table_64x4, 256

	.type	AC_next_state_MPS_64,@object    # @AC_next_state_MPS_64
	.p2align	4, 0x0
AC_next_state_MPS_64:
	.ascii	"\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\036\037 !\"#$%&'()*+,-./0123456789:;<=>>?"
	.size	AC_next_state_MPS_64, 64

	.type	renorm_table_32,@object         # @renorm_table_32
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0
renorm_table_32:
	.ascii	"\006\005\004\004\003\003\003\003\002\002\002\002\002\002\002\002\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001"
	.size	renorm_table_32, 32

	.type	AC_next_state_LPS_64,@object    # @AC_next_state_LPS_64
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
AC_next_state_LPS_64:
	.ascii	"\000\000\001\002\002\004\004\005\006\007\b\t\t\013\013\f\r\r\017\017\020\020\022\022\023\023\025\025\026\026\027\030\030\031\032\032\033\033\034\035\035\036\036\036\037  !!!\"\"###$$$%%%&&?"
	.size	AC_next_state_LPS_64, 64

	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	24                              # Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
	.long	.Ldebug_loc1-.Lloclists_table_base0
	.long	.Ldebug_loc2-.Lloclists_table_base0
	.long	.Ldebug_loc3-.Lloclists_table_base0
	.long	.Ldebug_loc4-.Lloclists_table_base0
	.long	.Ldebug_loc5-.Lloclists_table_base0
	.long	.Ldebug_loc6-.Lloclists_table_base0
	.long	.Ldebug_loc7-.Lloclists_table_base0
	.long	.Ldebug_loc8-.Lloclists_table_base0
	.long	.Ldebug_loc9-.Lloclists_table_base0
	.long	.Ldebug_loc10-.Lloclists_table_base0
	.long	.Ldebug_loc11-.Lloclists_table_base0
	.long	.Ldebug_loc12-.Lloclists_table_base0
	.long	.Ldebug_loc13-.Lloclists_table_base0
	.long	.Ldebug_loc14-.Lloclists_table_base0
	.long	.Ldebug_loc15-.Lloclists_table_base0
	.long	.Ldebug_loc16-.Lloclists_table_base0
	.long	.Ldebug_loc17-.Lloclists_table_base0
	.long	.Ldebug_loc18-.Lloclists_table_base0
	.long	.Ldebug_loc19-.Lloclists_table_base0
	.long	.Ldebug_loc20-.Lloclists_table_base0
	.long	.Ldebug_loc21-.Lloclists_table_base0
	.long	.Ldebug_loc22-.Lloclists_table_base0
	.long	.Ldebug_loc23-.Lloclists_table_base0
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
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin7-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end7-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end7-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end7-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end7-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end7-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end7-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp78-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp83-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp88-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp93-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end9-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin10-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp105-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp105-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end10-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp100-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp104-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp106-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp106-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end10-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
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
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
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
	.byte	8                               # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
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
	.byte	15                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
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
	.byte	19                              # Abbreviation Code
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
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
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
	.byte	22                              # Abbreviation Code
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
	.byte	23                              # Abbreviation Code
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
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
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
	.byte	28                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
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
	.byte	30                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
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
	.byte	31                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	1                               # DW_CHILDREN_yes
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
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
	.byte	33                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	34                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
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
	.byte	35                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	38                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	1                               # DW_CHILDREN_yes
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	5                               # DW_FORM_data2
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	39                              # Abbreviation Code
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	40                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	41                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	42                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	13                              # DW_FORM_sdata
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
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
	.byte	1                               # Abbrev [1] 0xc:0x4b9 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	6                               # DW_AT_low_pc
	.long	.Lfunc_end10-.Lfunc_begin0      # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x27:0xa DW_TAG_variable
	.long	49                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               # Abbrev [3] 0x31:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x36:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	41                              # DW_AT_count
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
	.long	79                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	3                               # Abbrev [3] 0x4f:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x54:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	33                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x5b:0xb DW_TAG_variable
	.byte	5                               # DW_AT_name
	.long	102                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	2
	.byte	3                               # Abbrev [3] 0x66:0x12 DW_TAG_array_type
	.long	120                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x6b:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	4                               # Abbrev [4] 0x71:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x78:0x5 DW_TAG_const_type
	.long	125                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x7d:0x8 DW_TAG_typedef
	.long	133                             # DW_AT_type
	.byte	7                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x85:0x4 DW_TAG_base_type
	.byte	6                               # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x89:0xb DW_TAG_variable
	.byte	8                               # DW_AT_name
	.long	148                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	3
	.byte	3                               # Abbrev [3] 0x94:0xc DW_TAG_array_type
	.long	120                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x99:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xa0:0xb DW_TAG_variable
	.byte	9                               # DW_AT_name
	.long	171                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	122                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	4
	.byte	3                               # Abbrev [3] 0xab:0xc DW_TAG_array_type
	.long	120                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xb0:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xb7:0xb DW_TAG_variable
	.byte	10                              # DW_AT_name
	.long	148                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	5
	.byte	10                              # Abbrev [10] 0xc2:0x1 DW_TAG_pointer_type
	.byte	9                               # Abbrev [9] 0xc3:0x8 DW_TAG_typedef
	.long	203                             # DW_AT_type
	.byte	12                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0xcb:0x4 DW_TAG_base_type
	.byte	11                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0xcf:0x25 DW_TAG_subprogram
	.byte	6                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	36                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.long	444                             # DW_AT_type
                                        # DW_AT_external
	.byte	12                              # Abbrev [12] 0xde:0x9 DW_TAG_variable
	.byte	0                               # DW_AT_location
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.long	444                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0xe7:0x6 DW_TAG_call_site
	.long	244                             # DW_AT_call_origin
	.byte	7                               # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0xed:0x6 DW_TAG_call_site
	.long	276                             # DW_AT_call_origin
	.byte	8                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0xf4:0x14 DW_TAG_subprogram
	.byte	13                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	543                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	194                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0xfd:0x5 DW_TAG_formal_parameter
	.long	264                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x102:0x5 DW_TAG_formal_parameter
	.long	264                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x108:0x8 DW_TAG_typedef
	.long	272                             # DW_AT_type
	.byte	15                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x110:0x4 DW_TAG_base_type
	.byte	14                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	16                              # Abbrev [16] 0x114:0xa DW_TAG_subprogram
	.byte	16                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x118:0x5 DW_TAG_formal_parameter
	.long	286                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x11e:0x5 DW_TAG_pointer_type
	.long	61                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x123:0x21 DW_TAG_subprogram
	.byte	9                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	37                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	19                              # Abbrev [19] 0x12e:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.long	444                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x137:0x6 DW_TAG_call_site
	.long	324                             # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	10                              # DW_AT_call_pc
	.byte	20                              # Abbrev [20] 0x13d:0x6 DW_TAG_call_site
	.long	335                             # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	11                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x144:0xb DW_TAG_subprogram
	.byte	17                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	555                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x149:0x5 DW_TAG_formal_parameter
	.long	194                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x14f:0x10 DW_TAG_subprogram
	.byte	18                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.short	940                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x154:0x5 DW_TAG_formal_parameter
	.long	286                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x159:0x5 DW_TAG_formal_parameter
	.long	351                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x15f:0x4 DW_TAG_base_type
	.byte	19                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	18                              # Abbrev [18] 0x163:0x16 DW_TAG_subprogram
	.byte	12                              # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	38                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x16e:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.long	444                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x179:0x14 DW_TAG_subprogram
	.byte	13                              # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	423                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x185:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	431                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x18d:0x1a DW_TAG_subprogram
	.byte	14                              # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	525                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x199:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	533                             # DW_AT_abstract_origin
	.byte	25                              # Abbrev [25] 0x1a0:0x6 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.long	541                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x1a7:0x11 DW_TAG_subprogram
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	440                             # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	27                              # Abbrev [27] 0x1af:0x8 DW_TAG_formal_parameter
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.long	444                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x1b8:0x4 DW_TAG_base_type
	.byte	21                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x1bc:0x8 DW_TAG_typedef
	.long	452                             # DW_AT_type
	.byte	29                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x1c4:0x5 DW_TAG_pointer_type
	.long	457                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1c9:0x8 DW_TAG_typedef
	.long	465                             # DW_AT_type
	.byte	28                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.byte	28                              # Abbrev [28] 0x1d1:0x32 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.byte	29                              # Abbrev [29] 0x1d5:0x9 DW_TAG_member
	.byte	23                              # DW_AT_name
	.long	440                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	29                              # Abbrev [29] 0x1de:0x9 DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	440                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	29                              # Abbrev [29] 0x1e7:0x9 DW_TAG_member
	.byte	25                              # DW_AT_name
	.long	351                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	29                              # Abbrev [29] 0x1f0:0x9 DW_TAG_member
	.byte	26                              # DW_AT_name
	.long	515                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	29                              # Abbrev [29] 0x1f9:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	520                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x203:0x5 DW_TAG_pointer_type
	.long	125                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x208:0x5 DW_TAG_pointer_type
	.long	351                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x20d:0x19 DW_TAG_subprogram
	.byte	30                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	440                             # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	27                              # Abbrev [27] 0x215:0x8 DW_TAG_formal_parameter
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.long	444                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x21d:0x8 DW_TAG_variable
	.byte	31                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.long	351                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x226:0x61 DW_TAG_subprogram
	.byte	15                              # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	39                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x231:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.long	444                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x23b:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	45                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.long	1138                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x244:0x9 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	46                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.long	351                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x24d:0x9 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	47                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.long	520                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x256:0x15 DW_TAG_inlined_subroutine
	.long	423                             # DW_AT_abstract_origin
	.byte	16                              # DW_AT_low_pc
	.long	.Ltmp21-.Ltmp17                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	123                             # DW_AT_call_line
	.byte	17                              # DW_AT_call_column
	.byte	24                              # Abbrev [24] 0x263:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	431                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x26b:0x1b DW_TAG_inlined_subroutine
	.long	525                             # DW_AT_abstract_origin
	.byte	17                              # DW_AT_low_pc
	.long	.Ltmp24-.Ltmp22                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	124                             # DW_AT_call_line
	.byte	39                              # DW_AT_call_column
	.byte	24                              # Abbrev [24] 0x278:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	533                             # DW_AT_abstract_origin
	.byte	25                              # Abbrev [25] 0x27f:0x6 DW_TAG_variable
	.byte	6                               # DW_AT_location
	.long	541                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x287:0x23 DW_TAG_subprogram
	.byte	18                              # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	40                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	351                             # DW_AT_type
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x296:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	444                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2a0:0x9 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	48                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.long	351                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x2aa:0x84 DW_TAG_subprogram
	.byte	19                              # DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	41                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	440                             # DW_AT_type
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x2b9:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.long	444                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x2c3:0x9 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.byte	49                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.long	1143                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2cc:0x9 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.byte	55                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.long	440                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2d5:0x9 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.byte	56                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.long	1196                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2de:0x9 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.byte	50                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.long	1201                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2e7:0x9 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	57                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.long	1196                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2f0:0x9 DW_TAG_variable
	.byte	13                              # DW_AT_location
	.byte	58                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.long	440                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2f9:0x9 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.long	520                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x302:0x10 DW_TAG_lexical_block
	.byte	20                              # DW_AT_low_pc
	.long	.Ltmp50-.Ltmp41                 # DW_AT_high_pc
	.byte	12                              # Abbrev [12] 0x308:0x9 DW_TAG_variable
	.byte	15                              # DW_AT_location
	.byte	59                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.long	351                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x312:0x1b DW_TAG_inlined_subroutine
	.long	525                             # DW_AT_abstract_origin
	.byte	21                              # DW_AT_low_pc
	.long	.Ltmp57-.Ltmp54                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	206                             # DW_AT_call_line
	.byte	16                              # DW_AT_call_column
	.byte	24                              # Abbrev [24] 0x31f:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	533                             # DW_AT_abstract_origin
	.byte	25                              # Abbrev [25] 0x326:0x6 DW_TAG_variable
	.byte	16                              # DW_AT_location
	.long	541                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x32e:0x56 DW_TAG_subprogram
	.byte	22                              # DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	42                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	440                             # DW_AT_type
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x33d:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.long	444                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x347:0xc DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	117
	.byte	4
	.byte	159
	.byte	57                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.long	1196                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x353:0xc DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	117
	.byte	8
	.byte	159
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.long	520                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x35f:0x9 DW_TAG_variable
	.byte	17                              # DW_AT_location
	.byte	60                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.long	351                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x368:0x1b DW_TAG_inlined_subroutine
	.long	525                             # DW_AT_abstract_origin
	.byte	23                              # DW_AT_low_pc
	.long	.Ltmp71-.Ltmp68                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	231                             # DW_AT_call_line
	.byte	31                              # DW_AT_call_column
	.byte	24                              # Abbrev [24] 0x375:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	533                             # DW_AT_abstract_origin
	.byte	25                              # Abbrev [25] 0x37c:0x6 DW_TAG_variable
	.byte	18                              # DW_AT_location
	.long	541                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x384:0x4c DW_TAG_subprogram
	.byte	24                              # DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	43                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	256                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	440                             # DW_AT_type
                                        # DW_AT_external
	.byte	36                              # Abbrev [36] 0x394:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	256                             # DW_AT_decl_line
	.long	444                             # DW_AT_type
	.byte	37                              # Abbrev [37] 0x39f:0xa DW_TAG_variable
	.byte	19                              # DW_AT_location
	.byte	57                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	259                             # DW_AT_decl_line
	.long	351                             # DW_AT_type
	.byte	37                              # Abbrev [37] 0x3a9:0xa DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	56                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	258                             # DW_AT_decl_line
	.long	440                             # DW_AT_type
	.byte	38                              # Abbrev [38] 0x3b3:0x1c DW_TAG_inlined_subroutine
	.long	525                             # DW_AT_abstract_origin
	.byte	25                              # DW_AT_low_pc
	.long	.Ltmp94-.Ltmp92                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	276                             # DW_AT_call_line
	.byte	45                              # DW_AT_call_column
	.byte	24                              # Abbrev [24] 0x3c1:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	533                             # DW_AT_abstract_origin
	.byte	25                              # Abbrev [25] 0x3c8:0x6 DW_TAG_variable
	.byte	21                              # DW_AT_location
	.long	541                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x3d0:0x19 DW_TAG_subprogram
	.byte	32                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	351                             # DW_AT_type
                                        # DW_AT_inline
	.byte	27                              # Abbrev [27] 0x3d8:0x8 DW_TAG_formal_parameter
	.byte	33                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.long	351                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x3e0:0x8 DW_TAG_formal_parameter
	.byte	34                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.long	351                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x3e9:0x19 DW_TAG_subprogram
	.byte	35                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	351                             # DW_AT_type
                                        # DW_AT_inline
	.byte	27                              # Abbrev [27] 0x3f1:0x8 DW_TAG_formal_parameter
	.byte	33                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.long	351                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x3f9:0x8 DW_TAG_formal_parameter
	.byte	34                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.long	351                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x402:0x70 DW_TAG_subprogram
	.byte	26                              # DW_AT_low_pc
	.long	.Lfunc_end10-.Lfunc_begin10     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	44                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	295                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	36                              # Abbrev [36] 0x40e:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	295                             # DW_AT_decl_line
	.long	351                             # DW_AT_type
	.byte	36                              # Abbrev [36] 0x419:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	295                             # DW_AT_decl_line
	.long	1143                            # DW_AT_type
	.byte	41                              # Abbrev [41] 0x424:0xa DW_TAG_formal_parameter
	.byte	22                              # DW_AT_location
	.byte	63                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	295                             # DW_AT_decl_line
	.long	1206                            # DW_AT_type
	.byte	37                              # Abbrev [37] 0x42e:0xa DW_TAG_variable
	.byte	23                              # DW_AT_location
	.byte	65                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	297                             # DW_AT_decl_line
	.long	351                             # DW_AT_type
	.byte	38                              # Abbrev [38] 0x438:0x1d DW_TAG_inlined_subroutine
	.long	976                             # DW_AT_abstract_origin
	.byte	27                              # DW_AT_low_pc
	.long	.Ltmp100-.Ltmp99                # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	301                             # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0x446:0x7 DW_TAG_formal_parameter
	.asciz	"\376"                          # DW_AT_const_value
	.long	984                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x44d:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.long	992                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x455:0x1c DW_TAG_inlined_subroutine
	.long	1001                            # DW_AT_abstract_origin
	.byte	28                              # DW_AT_low_pc
	.long	.Ltmp107-.Ltmp104               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	307                             # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0x463:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	1009                            # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x469:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.long	1017                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x472:0x5 DW_TAG_pointer_type
	.long	133                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x477:0x8 DW_TAG_typedef
	.long	1151                            # DW_AT_type
	.byte	54                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x47f:0x5 DW_TAG_pointer_type
	.long	1156                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x484:0x8 DW_TAG_typedef
	.long	1164                            # DW_AT_type
	.byte	53                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	122                             # DW_AT_decl_line
	.byte	28                              # Abbrev [28] 0x48c:0x20 DW_TAG_structure_type
	.byte	4                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	29                              # Abbrev [29] 0x490:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	195                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	29                              # Abbrev [29] 0x499:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	133                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	29                              # Abbrev [29] 0x4a2:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	133                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	3                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x4ac:0x5 DW_TAG_pointer_type
	.long	440                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x4b1:0x5 DW_TAG_pointer_type
	.long	195                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x4b6:0x5 DW_TAG_pointer_type
	.long	1211                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x4bb:0x5 DW_TAG_const_type
	.long	1216                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0x4c0:0x4 DW_TAG_base_type
	.byte	64                              # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	268                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"ldecod_src/biaridecod.c"       # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/x264-test/src" # string offset=129
.Linfo_string3:
	.asciz	"char"                          # string offset=163
.Linfo_string4:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=168
.Linfo_string5:
	.asciz	"rLPS_table_64x4"               # string offset=188
.Linfo_string6:
	.asciz	"unsigned char"                 # string offset=204
.Linfo_string7:
	.asciz	"byte"                          # string offset=218
.Linfo_string8:
	.asciz	"AC_next_state_MPS_64"          # string offset=223
.Linfo_string9:
	.asciz	"renorm_table_32"               # string offset=244
.Linfo_string10:
	.asciz	"AC_next_state_LPS_64"          # string offset=260
.Linfo_string11:
	.asciz	"unsigned short"                # string offset=281
.Linfo_string12:
	.asciz	"uint16"                        # string offset=296
.Linfo_string13:
	.asciz	"calloc"                        # string offset=303
.Linfo_string14:
	.asciz	"unsigned long"                 # string offset=310
.Linfo_string15:
	.asciz	"size_t"                        # string offset=324
.Linfo_string16:
	.asciz	"no_mem_exit"                   # string offset=331
.Linfo_string17:
	.asciz	"free"                          # string offset=343
.Linfo_string18:
	.asciz	"error"                         # string offset=348
.Linfo_string19:
	.asciz	"int"                           # string offset=354
.Linfo_string20:
	.asciz	"getbyte"                       # string offset=358
.Linfo_string21:
	.asciz	"unsigned int"                  # string offset=366
.Linfo_string22:
	.asciz	"dep"                           # string offset=379
.Linfo_string23:
	.asciz	"Drange"                        # string offset=383
.Linfo_string24:
	.asciz	"Dvalue"                        # string offset=390
.Linfo_string25:
	.asciz	"DbitsLeft"                     # string offset=397
.Linfo_string26:
	.asciz	"Dcodestrm"                     # string offset=407
.Linfo_string27:
	.asciz	"Dcodestrm_len"                 # string offset=417
.Linfo_string28:
	.asciz	"DecodingEnvironment"           # string offset=431
.Linfo_string29:
	.asciz	"DecodingEnvironmentPtr"        # string offset=451
.Linfo_string30:
	.asciz	"getword"                       # string offset=474
.Linfo_string31:
	.asciz	"d"                             # string offset=482
.Linfo_string32:
	.asciz	"imin"                          # string offset=484
.Linfo_string33:
	.asciz	"a"                             # string offset=489
.Linfo_string34:
	.asciz	"b"                             # string offset=491
.Linfo_string35:
	.asciz	"imax"                          # string offset=493
.Linfo_string36:
	.asciz	"arideco_create_decoding_environment" # string offset=498
.Linfo_string37:
	.asciz	"arideco_delete_decoding_environment" # string offset=534
.Linfo_string38:
	.asciz	"arideco_done_decoding"         # string offset=570
.Linfo_string39:
	.asciz	"arideco_start_decoding"        # string offset=592
.Linfo_string40:
	.asciz	"arideco_bits_read"             # string offset=615
.Linfo_string41:
	.asciz	"biari_decode_symbol"           # string offset=633
.Linfo_string42:
	.asciz	"biari_decode_symbol_eq_prob"   # string offset=653
.Linfo_string43:
	.asciz	"biari_decode_final"            # string offset=681
.Linfo_string44:
	.asciz	"biari_init_context"            # string offset=700
.Linfo_string45:
	.asciz	"code_buffer"                   # string offset=719
.Linfo_string46:
	.asciz	"firstbyte"                     # string offset=731
.Linfo_string47:
	.asciz	"code_len"                      # string offset=741
.Linfo_string48:
	.asciz	"tmp"                           # string offset=750
.Linfo_string49:
	.asciz	"bi_ct"                         # string offset=754
.Linfo_string50:
	.asciz	"state"                         # string offset=760
.Linfo_string51:
	.asciz	"MPS"                           # string offset=766
.Linfo_string52:
	.asciz	"dummy"                         # string offset=770
.Linfo_string53:
	.asciz	"BiContextType"                 # string offset=776
.Linfo_string54:
	.asciz	"BiContextTypePtr"              # string offset=790
.Linfo_string55:
	.asciz	"bit"                           # string offset=807
.Linfo_string56:
	.asciz	"range"                         # string offset=811
.Linfo_string57:
	.asciz	"value"                         # string offset=817
.Linfo_string58:
	.asciz	"rLPS"                          # string offset=823
.Linfo_string59:
	.asciz	"renorm"                        # string offset=828
.Linfo_string60:
	.asciz	"tmp_value"                     # string offset=835
.Linfo_string61:
	.asciz	"qp"                            # string offset=845
.Linfo_string62:
	.asciz	"ctx"                           # string offset=848
.Linfo_string63:
	.asciz	"ini"                           # string offset=852
.Linfo_string64:
	.asciz	"signed char"                   # string offset=856
.Linfo_string65:
	.asciz	"pstate"                        # string offset=868
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.L.str
	.quad	.L.str.1
	.quad	rLPS_table_64x4
	.quad	AC_next_state_MPS_64
	.quad	renorm_table_32
	.quad	AC_next_state_LPS_64
	.quad	.Lfunc_begin0
	.quad	.Ltmp0
	.quad	.Ltmp5
	.quad	.Lfunc_begin1
	.quad	.Ltmp9
	.quad	.Ltmp11
	.quad	.Lfunc_begin2
	.quad	.Lfunc_begin3
	.quad	.Lfunc_begin4
	.quad	.Lfunc_begin5
	.quad	.Ltmp17
	.quad	.Ltmp22
	.quad	.Lfunc_begin6
	.quad	.Lfunc_begin7
	.quad	.Ltmp41
	.quad	.Ltmp54
	.quad	.Lfunc_begin8
	.quad	.Ltmp68
	.quad	.Lfunc_begin9
	.quad	.Ltmp92
	.quad	.Lfunc_begin10
	.quad	.Ltmp99
	.quad	.Ltmp104
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
