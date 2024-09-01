	.text
	.file	"configfile.c"
	.file	0 "/home/yjs/workspace/x264-test/src" "ldecod_src/configfile.c" md5 0x4b1bea72b1693d3be1a9580da56d0eca
	.file	1 "ldecod_src/inc" "configfile.h" md5 0x23faa11f5f7f05b8e96bfb34b9b764b7
	.file	2 "ldecod_src/inc" "config_common.h" md5 0xfd4f7fd23ee5c729db940751b9f760f9
	.file	3 "ldecod_src/inc" "global.h" md5 0xc4ca3c417c5616a2ff6b6266e7376fc1
	.file	4 "ldecod_src/inc" "frame.h" md5 0xfd6ca9e1c707932f749220576db72b57
	.file	5 "ldecod_src/inc" "io_video.h" md5 0x1141c07f1801ad27d87214c419749431
	.globl	JMDecHelpExit                   # -- Begin function JMDecHelpExit
	.p2align	4, 0x90
	.type	JMDecHelpExit,@function
JMDecHelpExit:                          # @JMDecHelpExit
.Lfunc_begin0:
	.loc	0 78 0                          # ldecod_src/configfile.c:78:0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
.Ltmp0:
	.loc	0 79 12 prologue_end            # ldecod_src/configfile.c:79:12
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	.loc	0 79 3 is_stmt 0                # ldecod_src/configfile.c:79:3
	movl	$.L.str.15, %edi
	movl	$806, %esi                      # imm = 0x326
	movl	$1, %edx
	callq	fwrite@PLT
.Ltmp1:
	.loc	0 99 3 is_stmt 1                # ldecod_src/configfile.c:99:3
	movl	$-1, %edi
	callq	exit@PLT
.Ltmp2:
.Lfunc_end0:
	.size	JMDecHelpExit, .Lfunc_end0-JMDecHelpExit
	.cfi_endproc
	.file	6 "/usr/include" "stdlib.h" md5 0x02258fad21adf111bb9df9825e61954a
                                        # -- End function
	.globl	ParseCommand                    # -- Begin function ParseCommand
	.p2align	4, 0x90
	.type	ParseCommand,@function
ParseCommand:                           # @ParseCommand
.Lfunc_begin1:
	.loc	0 132 0                         # ldecod_src/configfile.c:132:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: ParseCommand:p_Inp <- $rdi
	#DEBUG_VALUE: ParseCommand:ac <- $esi
	#DEBUG_VALUE: ParseCommand:av <- $rdx
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	%rdi, (%rsp)                    # 8-byte Spill
.Ltmp3:
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:content <- 0
	.loc	0 137 9 prologue_end            # ldecod_src/configfile.c:137:9
	cmpl	$2, %esi
.Ltmp4:
	#DEBUG_VALUE: ParseCommand:filename <- undef
	.loc	0 137 7 is_stmt 0               # ldecod_src/configfile.c:137:7
	jne	.LBB1_4
.Ltmp5:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:content <- 0
	.loc	0 139 23 is_stmt 1              # ldecod_src/configfile.c:139:23
	movq	8(%r14), %rax
	cmpb	$45, (%rax)
	jne	.LBB1_4
.Ltmp6:
# %bb.2:                                # %if.then.tail
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:content <- 0
	.loc	0 139 11 is_stmt 0              # ldecod_src/configfile.c:139:11
	cmpb	$118, 1(%rax)
.Ltmp7:
	.loc	0 139 9                         # ldecod_src/configfile.c:139:9
	je	.LBB1_69
.Ltmp8:
# %bb.3:                                # %if.end.tail
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:content <- 0
	.loc	0 149 11 is_stmt 1              # ldecod_src/configfile.c:149:11
	cmpb	$104, 1(%rax)
.Ltmp9:
	.loc	0 149 9 is_stmt 0               # ldecod_src/configfile.c:149:9
	je	.LBB1_68
.Ltmp10:
.LBB1_4:                                # %if.end9
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:content <- 0
	.loc	0 155 3 is_stmt 1               # ldecod_src/configfile.c:155:3
	movl	$cfgparams, %edi
	movl	$4016, %edx                     # imm = 0xFB0
	xorl	%esi, %esi
	callq	memset@PLT
.Ltmp11:
	.loc	0 157 3                         # ldecod_src/configfile.c:157:3
	movl	$.Lstr, %edi
	callq	puts@PLT
.Ltmp12:
	.loc	0 158 3                         # ldecod_src/configfile.c:158:3
	movl	$Map, %edi
	callq	InitParams@PLT
.Ltmp13:
	.loc	0 0 3 is_stmt 0                 # ldecod_src/configfile.c:0:3
	movl	$1, %ebx
.Ltmp14:
	#DEBUG_VALUE: ParseCommand:CLcount <- 1
	movl	$.L.str.16, %r12d
.Ltmp15:
	.loc	0 163 9 is_stmt 1               # ldecod_src/configfile.c:163:9
	cmpl	$3, %ebp
.Ltmp16:
	.loc	0 163 7 is_stmt 0               # ldecod_src/configfile.c:163:7
	jl	.LBB1_10
.Ltmp17:
# %bb.5:                                # %if.then13
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:content <- 0
	#DEBUG_VALUE: ParseCommand:CLcount <- 1
	.loc	0 165 23 is_stmt 1              # ldecod_src/configfile.c:165:23
	movq	8(%r14), %r13
	cmpb	$45, (%r13)
	jne	.LBB1_10
.Ltmp18:
# %bb.6:                                # %if.then13.tail
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:content <- 0
	#DEBUG_VALUE: ParseCommand:CLcount <- 1
	.loc	0 165 11 is_stmt 0              # ldecod_src/configfile.c:165:11
	cmpb	$100, 1(%r13)
.Ltmp19:
	.loc	0 165 9                         # ldecod_src/configfile.c:165:9
	jne	.LBB1_8
.Ltmp20:
# %bb.7:                                # %if.then17
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:content <- 0
	#DEBUG_VALUE: ParseCommand:CLcount <- 1
	.loc	0 167 24 is_stmt 1              # ldecod_src/configfile.c:167:24
	movq	16(%r14), %r15
	.loc	0 167 15 is_stmt 0              # ldecod_src/configfile.c:167:15
	movl	$.L.str.22, %esi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	strncmp@PLT
.Ltmp21:
	.loc	0 0 15                          # ldecod_src/configfile.c:0:15
	xorl	%r12d, %r12d
	.loc	0 167 12                        # ldecod_src/configfile.c:167:12
	testl	%eax, %eax
	cmovneq	%r15, %r12
.Ltmp22:
	#DEBUG_VALUE: ParseCommand:filename <- $r12
	.loc	0 0 12                          # ldecod_src/configfile.c:0:12
	movl	$3, %ebx
.Ltmp23:
	#DEBUG_VALUE: ParseCommand:CLcount <- 3
.LBB1_8:                                # %if.end24.tail
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:content <- 0
	#DEBUG_VALUE: ParseCommand:filename <- $r12
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 173 11 is_stmt 1              # ldecod_src/configfile.c:173:11
	cmpb	$104, 1(%r13)
.Ltmp24:
	.loc	0 173 9 is_stmt 0               # ldecod_src/configfile.c:173:9
	je	.LBB1_68
.Ltmp25:
# %bb.9:                                # %if.end30
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:content <- 0
	#DEBUG_VALUE: ParseCommand:filename <- $r12
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	#DEBUG_VALUE: ParseCommand:filename <- $r12
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 178 6 is_stmt 1               # ldecod_src/configfile.c:178:6
	testq	%r12, %r12
.Ltmp26:
	.loc	0 178 6 is_stmt 0               # ldecod_src/configfile.c:178:6
	je	.LBB1_12
.Ltmp27:
.LBB1_10:                               # %if.then31
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:content <- 0
	.loc	0 180 5 is_stmt 1               # ldecod_src/configfile.c:180:5
	movl	$.L.str.23, %edi
	movq	%r12, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp28:
	.loc	0 181 15                        # ldecod_src/configfile.c:181:15
	movq	%r12, %rdi
	callq	GetConfigFileContent@PLT
.Ltmp29:
	#DEBUG_VALUE: ParseCommand:content <- $rax
	.loc	0 182 14                        # ldecod_src/configfile.c:182:14
	testq	%rax, %rax
.Ltmp30:
	.loc	0 182 9 is_stmt 0               # ldecod_src/configfile.c:182:9
	je	.LBB1_12
.Ltmp31:
# %bb.11:                               # %if.then35
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:content <- $rax
	.loc	0 0 0                           # ldecod_src/configfile.c:0:0
	movq	%rax, %r12
.Ltmp32:
	.loc	0 185 48 is_stmt 1              # ldecod_src/configfile.c:185:48
	movq	%rax, %rdi
	callq	strlen@PLT
.Ltmp33:
	#DEBUG_VALUE: ParseCommand:content <- $r12
	.loc	0 185 7 is_stmt 0               # ldecod_src/configfile.c:185:7
	movl	$Map, %esi
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r12, %rdx
	movl	%eax, %ecx
	callq	ParseContent@PLT
.Ltmp34:
	.loc	0 186 7 is_stmt 1               # ldecod_src/configfile.c:186:7
	movl	$10, %edi
	callq	putchar@PLT
.Ltmp35:
	.loc	0 187 7                         # ldecod_src/configfile.c:187:7
	movq	%r12, %rdi
	callq	free@PLT
.Ltmp36:
.LBB1_12:                               # %if.end39
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 192 18                        # ldecod_src/configfile.c:192:18
	cmpl	%ebp, %ebx
	.loc	0 192 3 is_stmt 0               # ldecod_src/configfile.c:192:3
	jge	.LBB1_66
.Ltmp37:
# %bb.13:                               # %while.body.lr.ph
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 0 3                           # ldecod_src/configfile.c:0:3
	movq	(%rsp), %rax                    # 8-byte Reload
	leaq	3976(%rax), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	leaq	4008(%rax), %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	leaq	255(%rax), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	addq	$510, %rax                      # imm = 0x1FE
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB1_16
.Ltmp38:
	.p2align	4, 0x90
.LBB1_26:                               # %if.then58
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 201 39 is_stmt 1              # ldecod_src/configfile.c:201:39
	movq	8(%r14,%r15,8), %rdi
	.loc	0 201 17 is_stmt 0              # ldecod_src/configfile.c:201:17
	callq	GetConfigFileContent@PLT
.Ltmp39:
	movq	%rax, %r13
.Ltmp40:
	#DEBUG_VALUE: ParseCommand:content <- $r13
	.loc	0 202 15 is_stmt 1              # ldecod_src/configfile.c:202:15
	testq	%rax, %rax
.Ltmp41:
	.loc	0 202 11 is_stmt 0              # ldecod_src/configfile.c:202:11
	je	.LBB1_27
.Ltmp42:
.LBB1_28:                               # %if.end65
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:content <- $r13
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 204 40 is_stmt 1              # ldecod_src/configfile.c:204:40
	movq	8(%r14,%r15,8), %rsi
	.loc	0 204 7 is_stmt 0               # ldecod_src/configfile.c:204:7
	movl	$.L.str.27, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp43:
	.loc	0 205 48 is_stmt 1              # ldecod_src/configfile.c:205:48
	movq	%r13, %rdi
	callq	strlen@PLT
.Ltmp44:
	.loc	0 205 7 is_stmt 0               # ldecod_src/configfile.c:205:7
	movl	$Map, %esi
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r13, %rdx
	movl	%eax, %ecx
	callq	ParseContent@PLT
.Ltmp45:
	.loc	0 206 7 is_stmt 1               # ldecod_src/configfile.c:206:7
	movl	$10, %edi
	callq	putchar@PLT
.Ltmp46:
	.loc	0 207 7                         # ldecod_src/configfile.c:207:7
	movq	%r13, %rdi
	callq	free@PLT
.Ltmp47:
.LBB1_14:                               # %conf_read_check.exit390
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 0 0 is_stmt 0                 # ldecod_src/configfile.c:0:0
	addl	$2, %ebx
.Ltmp48:
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
.LBB1_15:                               # %if.end261
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 192 18 is_stmt 1              # ldecod_src/configfile.c:192:18
	cmpl	%ebp, %ebx
	.loc	0 192 3 is_stmt 0               # ldecod_src/configfile.c:192:3
	jge	.LBB1_66
.Ltmp49:
.LBB1_16:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_39 Depth 2
                                        #     Child Loop BB1_47 Depth 2
                                        #       Child Loop BB1_48 Depth 3
                                        #       Child Loop BB1_49 Depth 3
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 194 23 is_stmt 1              # ldecod_src/configfile.c:194:23
	movslq	%ebx, %r15
	movq	(%r14,%r15,8), %r13
	movzbl	(%r13), %r12d
	addl	$-45, %r12d
	movl	%r12d, %eax
	je	.LBB1_23
.Ltmp50:
# %bb.17:                               # %lor.lhs.false150.tail
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 230 55                        # ldecod_src/configfile.c:230:55
	testl	%eax, %eax
.Ltmp51:
	.loc	0 230 14 is_stmt 0              # ldecod_src/configfile.c:230:14
	je	.LBB1_64
.Ltmp52:
.LBB1_18:                               # %if.else162
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 236 19 is_stmt 1              # ldecod_src/configfile.c:236:19
	movl	$.L.str.39, %esi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	strncmp@PLT
.Ltmp53:
	.loc	0 236 16 is_stmt 0              # ldecod_src/configfile.c:236:16
	testl	%eax, %eax
	.loc	0 236 52                        # ldecod_src/configfile.c:236:52
	je	.LBB1_29
.Ltmp54:
# %bb.19:                               # %lor.lhs.false168
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 236 60                        # ldecod_src/configfile.c:236:60
	movl	$.L.str.40, %esi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	strncmp@PLT
.Ltmp55:
	.loc	0 236 57                        # ldecod_src/configfile.c:236:57
	testl	%eax, %eax
.Ltmp56:
	.loc	0 236 14                        # ldecod_src/configfile.c:236:14
	je	.LBB1_29
.Ltmp57:
# %bb.20:                               # %sub_0445
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 0 14                          # ldecod_src/configfile.c:0:14
	testl	%r12d, %r12d
	je	.LBB1_35
.Ltmp58:
# %bb.21:                               # %lor.lhs.false186.tail
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 242 55 is_stmt 1              # ldecod_src/configfile.c:242:55
	testl	%r12d, %r12d
.Ltmp59:
	.loc	0 242 14 is_stmt 0              # ldecod_src/configfile.c:242:14
	je	.LBB1_37
.Ltmp60:
.LBB1_22:                               # %if.else250
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 287 7 is_stmt 1               # ldecod_src/configfile.c:287:7
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.45, %edx
	movq	errortext@GOTPCREL(%rip), %r15
	movq	%r15, %rdi
	movl	%ebx, %ecx
	movq	%r13, %r8
	xorl	%eax, %eax
	callq	snprintf@PLT
.Ltmp61:
	.loc	0 288 7                         # ldecod_src/configfile.c:288:7
	movq	%r15, %rdi
	movl	$300, %esi                      # imm = 0x12C
	callq	error@PLT
.Ltmp62:
	.loc	0 0 7 is_stmt 0                 # ldecod_src/configfile.c:0:7
	jmp	.LBB1_15
.Ltmp63:
	.p2align	4, 0x90
.LBB1_23:                               # %while.body.tail
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 194 11 is_stmt 1              # ldecod_src/configfile.c:194:11
	cmpb	$104, 1(%r13)
.Ltmp64:
	.loc	0 194 9 is_stmt 0               # ldecod_src/configfile.c:194:9
	je	.LBB1_68
.Ltmp65:
# %bb.24:                               # %if.end47.tail.thread
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 199 11 is_stmt 1              # ldecod_src/configfile.c:199:11
	cmpb	$102, 1(%r13)
	.loc	0 199 45 is_stmt 0              # ldecod_src/configfile.c:199:45
	je	.LBB1_26
.Ltmp66:
# %bb.25:                               # %lor.lhs.false.tail.thread
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 199 50                        # ldecod_src/configfile.c:199:50
	cmpb	$70, 1(%r13)
.Ltmp67:
	.loc	0 199 9                         # ldecod_src/configfile.c:199:9
	je	.LBB1_26
.Ltmp68:
# %bb.31:                               # %if.else74.tail.thread
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 210 16 is_stmt 1              # ldecod_src/configfile.c:210:16
	cmpb	$105, 1(%r13)
	.loc	0 210 50 is_stmt 0              # ldecod_src/configfile.c:210:50
	je	.LBB1_33
.Ltmp69:
# %bb.32:                               # %lor.lhs.false80.tail.thread
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 210 55                        # ldecod_src/configfile.c:210:55
	cmpb	$73, 1(%r13)
.Ltmp70:
	.loc	0 210 14                        # ldecod_src/configfile.c:210:14
	jne	.LBB1_53
.Ltmp71:
.LBB1_33:                               # %if.then86
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 212 30 is_stmt 1              # ldecod_src/configfile.c:212:30
	movq	8(%r14,%r15,8), %rsi
	.loc	0 212 7 is_stmt 0               # ldecod_src/configfile.c:212:7
	movl	$255, %edx
	movq	(%rsp), %rdi                    # 8-byte Reload
.Ltmp72:
.LBB1_34:                               # %if.end261
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 0 0                           # ldecod_src/configfile.c:0:0
	callq	strncpy@PLT
.Ltmp73:
	jmp	.LBB1_14
.Ltmp74:
	.p2align	4, 0x90
.LBB1_29:                               # %if.then174
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 238 31 is_stmt 1              # ldecod_src/configfile.c:238:31
	movq	8(%r14,%r15,8), %rdi
	.loc	0 238 24 is_stmt 0              # ldecod_src/configfile.c:238:24
	movl	$.L.str.38, %esi
	movq	32(%rsp), %rdx                  # 8-byte Reload
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
.Ltmp75:
	#DEBUG_VALUE: conf_read_check:val <- $eax
	#DEBUG_VALUE: conf_read_check:expected <- 1
	.loc	0 111 11 is_stmt 1              # ldecod_src/configfile.c:111:11
	cmpl	$1, %eax
.Ltmp76:
	.loc	0 111 7 is_stmt 0               # ldecod_src/configfile.c:111:7
	je	.LBB1_14
	jmp	.LBB1_30
.Ltmp77:
.LBB1_27:                               # %if.then64
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:content <- $r13
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 203 9 is_stmt 1               # ldecod_src/configfile.c:203:9
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$300, %esi                      # imm = 0x12C
	callq	error@PLT
.Ltmp78:
	.loc	0 0 9 is_stmt 0                 # ldecod_src/configfile.c:0:9
	jmp	.LBB1_28
.Ltmp79:
.LBB1_35:                               # %if.else180.tail
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 242 16 is_stmt 1              # ldecod_src/configfile.c:242:16
	cmpb	$112, 1(%r13)
	.loc	0 242 50 is_stmt 0              # ldecod_src/configfile.c:242:50
	je	.LBB1_37
.Ltmp80:
# %bb.36:                               # %sub_1449
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 0 50                          # ldecod_src/configfile.c:0:50
	movzbl	1(%r13), %r12d
	addl	$-80, %r12d
	.loc	0 242 55                        # ldecod_src/configfile.c:242:55
	testl	%r12d, %r12d
.Ltmp81:
	.loc	0 242 14                        # ldecod_src/configfile.c:242:14
	jne	.LBB1_22
.Ltmp82:
.LBB1_37:                               # %if.then192
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 247 7 is_stmt 1               # ldecod_src/configfile.c:247:7
	incl	%ebx
.Ltmp83:
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	#DEBUG_VALUE: ParseCommand:NumberParams <- $ebx
	.loc	0 0 7 is_stmt 0                 # ldecod_src/configfile.c:0:7
	xorl	%r12d, %r12d
.Ltmp84:
	#DEBUG_VALUE: ParseCommand:ContentLen <- 0
	movl	%ebx, %r15d
	.loc	0 252 27 is_stmt 1              # ldecod_src/configfile.c:252:27
	cmpl	%ebp, %ebx
	.loc	0 252 32 is_stmt 0              # ldecod_src/configfile.c:252:32
	jge	.LBB1_42
.Ltmp85:
# %bb.38:                               # %land.rhs.preheader
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	#DEBUG_VALUE: ParseCommand:NumberParams <- $ebx
	#DEBUG_VALUE: ParseCommand:ContentLen <- 0
	.loc	0 252 7                         # ldecod_src/configfile.c:252:7
	movslq	%ebx, %rax
	leaq	(%r14,%rax,8), %r13
	xorl	%r12d, %r12d
	movl	%ebx, %r15d
.Ltmp86:
	.p2align	4, 0x90
.LBB1_39:                               # %land.rhs
                                        #   Parent Loop BB1_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	#DEBUG_VALUE: ParseCommand:NumberParams <- [DW_OP_LLVM_arg 0, DW_OP_consts 1, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_minus, DW_OP_consts 1, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_LLVM_convert 64 5, DW_OP_plus, DW_OP_stack_value] undef, undef
	#DEBUG_VALUE: ParseCommand:ContentLen <- $r12d
	.loc	0 252 35                        # ldecod_src/configfile.c:252:35
	movq	(%r13), %rdi
	.loc	0 252 55                        # ldecod_src/configfile.c:252:55
	cmpb	$45, (%rdi)
	.loc	0 252 7                         # ldecod_src/configfile.c:252:7
	je	.LBB1_42
.Ltmp87:
# %bb.40:                               # %while.body202
                                        #   in Loop: Header=BB1_39 Depth=2
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	#DEBUG_VALUE: ParseCommand:ContentLen <- $r12d
	#DEBUG_VALUE: ParseCommand:NumberParams <- [DW_OP_LLVM_arg 0, DW_OP_consts 1, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_minus, DW_OP_consts 1, DW_OP_consts 1, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_LLVM_convert 64 5, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] undef, undef
	.loc	0 253 29 is_stmt 1              # ldecod_src/configfile.c:253:29
	callq	strlen@PLT
.Ltmp88:
	.loc	0 253 20 is_stmt 0              # ldecod_src/configfile.c:253:20
	addl	%eax, %r12d
.Ltmp89:
	#DEBUG_VALUE: ParseCommand:ContentLen <- $r12d
	.loc	0 252 27 is_stmt 1              # ldecod_src/configfile.c:252:27
	incl	%r15d
	addq	$8, %r13
	cmpl	%r15d, %ebp
	.loc	0 252 32 is_stmt 0              # ldecod_src/configfile.c:252:32
	jne	.LBB1_39
.Ltmp90:
# %bb.41:                               #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	#DEBUG_VALUE: ParseCommand:ContentLen <- $r12d
	.loc	0 0 32                          # ldecod_src/configfile.c:0:32
	movl	%ebp, %r15d
.Ltmp91:
.LBB1_42:                               # %while.end
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 254 18 is_stmt 1              # ldecod_src/configfile.c:254:18
	addl	$1000, %r12d                    # imm = 0x3E8
.Ltmp92:
	#DEBUG_VALUE: ParseCommand:ContentLen <- $r12d
	.loc	0 257 30                        # ldecod_src/configfile.c:257:30
	movslq	%r12d, %rdi
	.loc	0 257 22 is_stmt 0              # ldecod_src/configfile.c:257:22
	callq	malloc@PLT
.Ltmp93:
	movq	%rax, %r13
.Ltmp94:
	#DEBUG_VALUE: ParseCommand:content <- $r13
	.loc	0 257 42                        # ldecod_src/configfile.c:257:42
	testq	%rax, %rax
.Ltmp95:
	.loc	0 257 11                        # ldecod_src/configfile.c:257:11
	je	.LBB1_44
.Ltmp96:
# %bb.43:                               # %if.end215
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:content <- $r13
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	#DEBUG_VALUE: ParseCommand:ContentLen <- $r12d
	.loc	0 258 18 is_stmt 1              # ldecod_src/configfile.c:258:18
	movb	$0, (%r13)
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 262 22                        # ldecod_src/configfile.c:262:22
	cmpl	%r15d, %ebx
	.loc	0 262 7 is_stmt 0               # ldecod_src/configfile.c:262:7
	jl	.LBB1_45
	jmp	.LBB1_52
.Ltmp97:
.LBB1_44:                               # %if.then214
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:content <- $r13
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	#DEBUG_VALUE: ParseCommand:ContentLen <- $r12d
	.loc	0 257 50 is_stmt 1              # ldecod_src/configfile.c:257:50
	movl	$.L.str.43, %edi
	callq	no_mem_exit@PLT
.Ltmp98:
	.loc	0 258 18                        # ldecod_src/configfile.c:258:18
	movb	$0, (%r13)
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 262 22                        # ldecod_src/configfile.c:262:22
	cmpl	%r15d, %ebx
	.loc	0 262 7 is_stmt 0               # ldecod_src/configfile.c:262:7
	jge	.LBB1_52
.Ltmp99:
.LBB1_45:                               # %while.body220.preheader
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:content <- $r13
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	#DEBUG_VALUE: ParseCommand:ContentLen <- $r12d
	.loc	0 0 7                           # ldecod_src/configfile.c:0:7
	movslq	%ebx, %rbx
.Ltmp100:
	.p2align	4, 0x90
.LBB1_47:                               # %while.body220
                                        #   Parent Loop BB1_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_48 Depth 3
                                        #       Child Loop BB1_49 Depth 3
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:content <- $r13
	#DEBUG_VALUE: ParseCommand:CLcount <- $rbx
	.loc	0 264 25 is_stmt 1              # ldecod_src/configfile.c:264:25
	movq	(%r14,%rbx,8), %r12
.Ltmp101:
	#DEBUG_VALUE: source <- $r12
	.loc	0 265 39                        # ldecod_src/configfile.c:265:39
	movq	%r13, %rdi
	callq	strlen@PLT
.Ltmp102:
	.loc	0 265 25 is_stmt 0              # ldecod_src/configfile.c:265:25
	cltq
	addq	%r13, %rax
.Ltmp103:
	#DEBUG_VALUE: destin <- $rax
	#DEBUG_VALUE: destin <- $rax
	#DEBUG_VALUE: source <- $r12
	.loc	0 267 16 is_stmt 1              # ldecod_src/configfile.c:267:16
	movzbl	(%r12), %ecx
	cmpl	$61, %ecx
	.loc	0 267 9 is_stmt 0               # ldecod_src/configfile.c:267:9
	jne	.LBB1_49
	jmp	.LBB1_48
.Ltmp104:
	.p2align	4, 0x90
.LBB1_50:                               # %if.else239
                                        #   in Loop: Header=BB1_49 Depth=3
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:content <- $r13
	#DEBUG_VALUE: ParseCommand:CLcount <- $rbx
	#DEBUG_VALUE: source <- $r12
	#DEBUG_VALUE: destin <- $rax
	.loc	0 274 22 is_stmt 1              # ldecod_src/configfile.c:274:22
	movb	%cl, (%rax)
	.loc	0 274 20 is_stmt 0              # ldecod_src/configfile.c:274:20
	incq	%rax
.Ltmp105:
	#DEBUG_VALUE: destin <- $rax
	#DEBUG_VALUE: destin <- undef
	.loc	0 275 17 is_stmt 1              # ldecod_src/configfile.c:275:17
	incq	%r12
.Ltmp106:
	#DEBUG_VALUE: source <- undef
	#DEBUG_VALUE: destin <- $rax
	#DEBUG_VALUE: source <- $r12
	.loc	0 267 16                        # ldecod_src/configfile.c:267:16
	movzbl	(%r12), %ecx
	cmpl	$61, %ecx
	.loc	0 267 9 is_stmt 0               # ldecod_src/configfile.c:267:9
	jne	.LBB1_49
.Ltmp107:
.LBB1_48:                               # %if.then236
                                        #   Parent Loop BB1_16 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:content <- $r13
	#DEBUG_VALUE: ParseCommand:CLcount <- $rbx
	#DEBUG_VALUE: source <- $r12
	#DEBUG_VALUE: destin <- $rax
	#DEBUG_VALUE: destin <- undef
	.loc	0 271 22 is_stmt 1              # ldecod_src/configfile.c:271:22
	movw	$15648, (%rax)                  # imm = 0x3D20
	.loc	0 271 52 is_stmt 0              # ldecod_src/configfile.c:271:52
	movb	$32, 2(%rax)
.Ltmp108:
	#DEBUG_VALUE: destin <- [DW_OP_plus_uconst 2, DW_OP_stack_value] undef
	.loc	0 271 50                        # ldecod_src/configfile.c:271:50
	addq	$3, %rax
.Ltmp109:
	#DEBUG_VALUE: destin <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $rax
	#DEBUG_VALUE: destin <- $rax
	#DEBUG_VALUE: destin <- undef
	.loc	0 275 17 is_stmt 1              # ldecod_src/configfile.c:275:17
	incq	%r12
.Ltmp110:
	#DEBUG_VALUE: source <- undef
	#DEBUG_VALUE: destin <- $rax
	#DEBUG_VALUE: source <- $r12
	.loc	0 267 16                        # ldecod_src/configfile.c:267:16
	movzbl	(%r12), %ecx
	cmpl	$61, %ecx
	.loc	0 267 9 is_stmt 0               # ldecod_src/configfile.c:267:9
	je	.LBB1_48
.Ltmp111:
.LBB1_49:                               # %while.cond228
                                        #   Parent Loop BB1_16 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:content <- $r13
	#DEBUG_VALUE: ParseCommand:CLcount <- $rbx
	#DEBUG_VALUE: source <- $r12
	#DEBUG_VALUE: destin <- $rax
	testl	%ecx, %ecx
	jne	.LBB1_50
.Ltmp112:
# %bb.46:                               # %while.end243
                                        #   in Loop: Header=BB1_47 Depth=2
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:content <- $r13
	#DEBUG_VALUE: ParseCommand:CLcount <- $rbx
	#DEBUG_VALUE: source <- $r12
	#DEBUG_VALUE: destin <- $rax
	.loc	0 277 17 is_stmt 1              # ldecod_src/configfile.c:277:17
	movb	$0, (%rax)
	.loc	0 278 16                        # ldecod_src/configfile.c:278:16
	incq	%rbx
.Ltmp113:
	#DEBUG_VALUE: ParseCommand:CLcount <- $rbx
	.loc	0 262 22                        # ldecod_src/configfile.c:262:22
	cmpl	%ebx, %r15d
	.loc	0 262 7 is_stmt 0               # ldecod_src/configfile.c:262:7
	jne	.LBB1_47
.Ltmp114:
# %bb.51:                               #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:content <- $r13
	#DEBUG_VALUE: ParseCommand:CLcount <- $rbx
	#DEBUG_VALUE: source <- $r12
	#DEBUG_VALUE: destin <- $rax
	.loc	0 0 7                           # ldecod_src/configfile.c:0:7
	movl	%r15d, %ebx
.Ltmp115:
.LBB1_52:                               # %while.end245
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:content <- $r13
	.loc	0 280 7 is_stmt 1               # ldecod_src/configfile.c:280:7
	movl	$.L.str.44, %edi
	movq	%r13, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp116:
	.loc	0 281 48                        # ldecod_src/configfile.c:281:48
	movq	%r13, %rdi
	callq	strlen@PLT
.Ltmp117:
	.loc	0 281 7 is_stmt 0               # ldecod_src/configfile.c:281:7
	movl	$Map, %esi
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r13, %rdx
	movl	%eax, %ecx
	callq	ParseContent@PLT
.Ltmp118:
	.loc	0 282 7 is_stmt 1               # ldecod_src/configfile.c:282:7
	movq	%r13, %rdi
	callq	free@PLT
.Ltmp119:
	.loc	0 283 7                         # ldecod_src/configfile.c:283:7
	movl	$10, %edi
	callq	putchar@PLT
.Ltmp120:
	.loc	0 284 5                         # ldecod_src/configfile.c:284:5
	jmp	.LBB1_15
.Ltmp121:
.LBB1_53:                               # %if.else92.tail.thread
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 215 16                        # ldecod_src/configfile.c:215:16
	cmpb	$114, 1(%r13)
	.loc	0 215 50 is_stmt 0              # ldecod_src/configfile.c:215:50
	je	.LBB1_55
.Ltmp122:
# %bb.54:                               # %lor.lhs.false98.tail.thread
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 215 55                        # ldecod_src/configfile.c:215:55
	cmpb	$82, 1(%r13)
.Ltmp123:
	.loc	0 215 14                        # ldecod_src/configfile.c:215:14
	jne	.LBB1_56
.Ltmp124:
.LBB1_55:                               # %if.then104
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 217 31 is_stmt 1              # ldecod_src/configfile.c:217:31
	movq	8(%r14,%r15,8), %rsi
	.loc	0 217 7 is_stmt 0               # ldecod_src/configfile.c:217:7
	movl	$255, %edx
	movq	16(%rsp), %rdi                  # 8-byte Reload
	jmp	.LBB1_34
.Ltmp125:
.LBB1_56:                               # %if.else111.tail.thread
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 220 16 is_stmt 1              # ldecod_src/configfile.c:220:16
	cmpb	$111, 1(%r13)
	.loc	0 220 50 is_stmt 0              # ldecod_src/configfile.c:220:50
	je	.LBB1_58
.Ltmp126:
# %bb.57:                               # %lor.lhs.false117.tail.thread
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 220 55                        # ldecod_src/configfile.c:220:55
	cmpb	$79, 1(%r13)
.Ltmp127:
	.loc	0 220 14                        # ldecod_src/configfile.c:220:14
	jne	.LBB1_59
.Ltmp128:
.LBB1_58:                               # %if.then123
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 222 31 is_stmt 1              # ldecod_src/configfile.c:222:31
	movq	8(%r14,%r15,8), %rsi
	.loc	0 222 7 is_stmt 0               # ldecod_src/configfile.c:222:7
	movl	$255, %edx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	jmp	.LBB1_34
.Ltmp129:
.LBB1_59:                               # %if.else130.tail.thread
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 225 16 is_stmt 1              # ldecod_src/configfile.c:225:16
	cmpb	$115, 1(%r13)
	.loc	0 225 50 is_stmt 0              # ldecod_src/configfile.c:225:50
	je	.LBB1_61
.Ltmp130:
# %bb.60:                               # %lor.lhs.false136.tail.thread
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 225 55                        # ldecod_src/configfile.c:225:55
	cmpb	$83, 1(%r13)
.Ltmp131:
	.loc	0 225 14                        # ldecod_src/configfile.c:225:14
	jne	.LBB1_62
.Ltmp132:
.LBB1_61:                               # %if.then142
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 0 14                          # ldecod_src/configfile.c:0:14
	movq	(%rsp), %rax                    # 8-byte Reload
.Ltmp133:
	.loc	0 227 21 is_stmt 1              # ldecod_src/configfile.c:227:21
	movl	$1, 784(%rax)
	.loc	0 228 15                        # ldecod_src/configfile.c:228:15
	incl	%ebx
.Ltmp134:
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 229 5                         # ldecod_src/configfile.c:229:5
	jmp	.LBB1_15
.Ltmp135:
.LBB1_62:                               # %if.else144.tail.thread
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 230 16                        # ldecod_src/configfile.c:230:16
	cmpb	$110, 1(%r13)
	.loc	0 230 50 is_stmt 0              # ldecod_src/configfile.c:230:50
	je	.LBB1_64
.Ltmp136:
# %bb.63:                               # %sub_1443
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 0 50                          # ldecod_src/configfile.c:0:50
	movzbl	1(%r13), %eax
	addl	$-78, %eax
	.loc	0 230 55                        # ldecod_src/configfile.c:230:55
	testl	%eax, %eax
.Ltmp137:
	.loc	0 230 14                        # ldecod_src/configfile.c:230:14
	jne	.LBB1_18
.Ltmp138:
	.p2align	4, 0x90
.LBB1_64:                               # %if.then156
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 232 31 is_stmt 1              # ldecod_src/configfile.c:232:31
	movq	8(%r14,%r15,8), %rdi
	.loc	0 232 24 is_stmt 0              # ldecod_src/configfile.c:232:24
	movl	$.L.str.38, %esi
	movq	24(%rsp), %rdx                  # 8-byte Reload
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
.Ltmp139:
	#DEBUG_VALUE: conf_read_check:val <- $eax
	#DEBUG_VALUE: conf_read_check:expected <- 1
	.loc	0 111 11 is_stmt 1              # ldecod_src/configfile.c:111:11
	cmpl	$1, %eax
.Ltmp140:
	.loc	0 111 7 is_stmt 0               # ldecod_src/configfile.c:111:7
	je	.LBB1_14
.Ltmp141:
.LBB1_30:                               # %if.then.i389
                                        #   in Loop: Header=BB1_16 Depth=1
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 113 5 is_stmt 1               # ldecod_src/configfile.c:113:5
	movl	$.L.str.47, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
.Ltmp142:
	.loc	0 0 5 is_stmt 0                 # ldecod_src/configfile.c:0:5
	jmp	.LBB1_14
.Ltmp143:
.LBB1_66:                               # %while.end262
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:CLcount <- $ebx
	.loc	0 291 3 is_stmt 1               # ldecod_src/configfile.c:291:3
	movl	$10, %edi
	callq	putchar@PLT
.Ltmp144:
	#DEBUG_VALUE: PatchInp:p_Inp <- undef
	.loc	0 312 3                         # ldecod_src/configfile.c:312:3
	movl	$Map, %edi
	xorl	%esi, %esi
	callq	TestParams@PLT
.Ltmp145:
	.loc	0 294 15                        # ldecod_src/configfile.c:294:15
	movl	$cfgparams, %edi
	movl	$4016, %edx                     # imm = 0xFB0
	movq	(%rsp), %rbx                    # 8-byte Reload
.Ltmp146:
	movq	%rbx, %rsi
	callq	memcpy@PLT
.Ltmp147:
	.loc	0 295 29                        # ldecod_src/configfile.c:295:29
	movl	$0, 1068(%rbx)
.Ltmp148:
	.loc	0 296 7                         # ldecod_src/configfile.c:296:7
	cmpl	$0, 4012(%rbx)
.Ltmp149:
	.loc	0 296 7 is_stmt 0               # ldecod_src/configfile.c:296:7
	je	.LBB1_67
.Ltmp150:
# %bb.70:                               # %if.then265
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	.loc	0 297 5 is_stmt 1               # ldecod_src/configfile.c:297:5
	movl	$Map, %edi
	movl	$.L.str.46, %esi
	.loc	0 297 5 epilogue_begin is_stmt 0 # ldecod_src/configfile.c:297:5
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp151:
	#DEBUG_VALUE: ParseCommand:av <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp152:
	#DEBUG_VALUE: ParseCommand:ac <- [DW_OP_LLVM_entry_value 1] $esi
	.cfi_def_cfa_offset 8
	jmp	DisplayParams@PLT               # TAILCALL
.Ltmp153:
.LBB1_67:                               # %if.end267
	.cfi_def_cfa_offset 96
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	.loc	0 298 1 epilogue_begin is_stmt 1 # ldecod_src/configfile.c:298:1
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp154:
	#DEBUG_VALUE: ParseCommand:av <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp155:
	#DEBUG_VALUE: ParseCommand:ac <- [DW_OP_LLVM_entry_value 1] $esi
	.cfi_def_cfa_offset 8
	retq
.Ltmp156:
.LBB1_68:                               # %if.then7
	.cfi_def_cfa_offset 96
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	.loc	0 79 12                         # ldecod_src/configfile.c:79:12
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	.loc	0 79 3 is_stmt 0                # ldecod_src/configfile.c:79:3
	movl	$.L.str.15, %edi
	movl	$806, %esi                      # imm = 0x326
	movl	$1, %edx
	callq	fwrite@PLT
.Ltmp157:
	.loc	0 99 3 is_stmt 1                # ldecod_src/configfile.c:99:3
	movl	$-1, %edi
	callq	exit@PLT
.Ltmp158:
.LBB1_69:                               # %if.then2
	#DEBUG_VALUE: ParseCommand:p_Inp <- [$rsp+0]
	#DEBUG_VALUE: ParseCommand:ac <- $ebp
	#DEBUG_VALUE: ParseCommand:av <- $r14
	#DEBUG_VALUE: ParseCommand:content <- 0
	.loc	0 144 7                         # ldecod_src/configfile.c:144:7
	movl	$.Lstr.48, %edi
	callq	puts@PLT
.Ltmp159:
	.loc	0 146 7                         # ldecod_src/configfile.c:146:7
	movl	$-1, %edi
	callq	exit@PLT
.Ltmp160:
.Lfunc_end1:
	.size	ParseCommand, .Lfunc_end1-ParseCommand
	.cfi_endproc
	.file	7 "/usr/include" "string.h" md5 0xf443da8025a0b7c1498fb6c554ec788d
	.file	8 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	9 "/usr/include" "stdio.h" md5 0xf31eefcc3f15835fc5a4023a625cf609
	.file	10 "ldecod_src/inc" "memalloc.h" md5 0x88776e97a131c37d03036121c7c9e0ac
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"InputFile"
	.size	.L.str, 10

	.type	cfgparams,@object               # @cfgparams
	.bss
	.globl	cfgparams
	.p2align	3, 0x0
cfgparams:
	.zero	4016
	.size	cfgparams, 4016

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"OutputFile"
	.size	.L.str.1, 11

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"RefFile"
	.size	.L.str.2, 8

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"WriteUV"
	.size	.L.str.3, 8

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"FileFormat"
	.size	.L.str.4, 11

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"RefOffset"
	.size	.L.str.5, 10

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"POCScale"
	.size	.L.str.6, 9

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"DisplayDecParams"
	.size	.L.str.7, 17

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"ConcealMode"
	.size	.L.str.8, 12

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"RefPOCGap"
	.size	.L.str.9, 10

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"POCGap"
	.size	.L.str.10, 7

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Silent"
	.size	.L.str.11, 7

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"IntraProfileDeblocking"
	.size	.L.str.12, 23

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"DecFrmNum"
	.size	.L.str.13, 10

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"DecodeAllLayers"
	.size	.L.str.14, 16

	.type	Map,@object                     # @Map
	.data
	.globl	Map
	.p2align	4, 0x0
Map:
	.quad	.L.str
	.quad	cfgparams
	.long	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.long	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.long	255                             # 0xff
	.zero	4
	.quad	.L.str.1
	.quad	cfgparams+255
	.long	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.long	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.long	255                             # 0xff
	.zero	4
	.quad	.L.str.2
	.quad	cfgparams+510
	.long	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.long	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.long	255                             # 0xff
	.zero	4
	.quad	.L.str.3
	.quad	cfgparams+780
	.long	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.long	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.4
	.quad	cfgparams+768
	.long	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.long	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.5
	.quad	cfgparams+772
	.long	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.long	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4070000000000000              # double 256
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.6
	.quad	cfgparams+776
	.long	0                               # 0x0
	.zero	4
	.quad	0x4000000000000000              # double 2
	.long	1                               # 0x1
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.quad	0x4024000000000000              # double 10
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.7
	.quad	cfgparams+4012
	.long	0                               # 0x0
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.long	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.8
	.quad	cfgparams+3980
	.long	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.long	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4000000000000000              # double 2
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.9
	.quad	cfgparams+3984
	.long	0                               # 0x0
	.zero	4
	.quad	0x4000000000000000              # double 2
	.long	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4010000000000000              # double 4
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.10
	.quad	cfgparams+3988
	.long	0                               # 0x0
	.zero	4
	.quad	0x4000000000000000              # double 2
	.long	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4010000000000000              # double 4
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.11
	.quad	cfgparams+784
	.long	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.long	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.12
	.quad	cfgparams+788
	.long	0                               # 0x0
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.long	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.13
	.quad	cfgparams+4008
	.long	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.long	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.14
	.quad	cfgparams+3976
	.long	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.long	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.quad	0
	.long	4294967295                      # 0xffffffff
	.zero	4
	.quad	0x0000000000000000              # double 0
	.long	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.long	0                               # 0x0
	.zero	4
	.size	Map, 1024

	.type	.L.str.15,@object               # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"\n   ldecod [-h] [-d defdec.cfg] {[-f curenc1.cfg]...[-f curencN.cfg]} {[-p EncParam1=EncValue1]..[-p EncParamM=EncValueM]}\n\n## Parameters\n\n## Options\n   -h :  prints function usage\n   -d :  use <defdec.cfg> as default file for parameter initializations.\n         If not used then file defaults to encoder.cfg in local directory.\n   -f :  read <curencM.cfg> for reseting selected encoder parameters.\n         Multiple files could be used that set different parameters\n   -p :  Set parameter <DecParamM> to <DecValueM>.\n         See default decoder.cfg file for description of all parameters.\n\n## Examples of usage:\n   ldecod\n   ldecod  -h\n   ldecod  -d default.cfg\n   ldecod  -f curenc1.cfg\n   ldecod  -f curenc1.cfg -p InputFile=\"e:\\data\\container_qcif_30.264\" -p OutputFile=\"dec.yuv\" -p RefFile=\"Rec.yuv\"\n"
	.size	.L.str.15, 807

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"decoder.cfg"
	.size	.L.str.16, 12

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"null"
	.size	.L.str.22, 5

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Parsing Configfile %s\n"
	.size	.L.str.23, 23

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Parsing Configfile %s"
	.size	.L.str.27, 22

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"%d"
	.size	.L.str.38, 3

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"-mpr"
	.size	.L.str.39, 5

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"-MPR"
	.size	.L.str.40, 5

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"Configure: content"
	.size	.L.str.43, 19

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"Parsing command line string '%s'"
	.size	.L.str.44, 33

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"Error in command line, ac %d, around string '%s', missing -f or -p parameters?"
	.size	.L.str.45, 79

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"Decoder Parameters"
	.size	.L.str.46, 19

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"init_conf: error reading from config file"
	.size	.L.str.47, 42

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Setting Default Parameters..."
	.size	.Lstr, 30

	.type	.Lstr.48,@object                # @str.48
.Lstr.48:
	.asciz	"JM 17 (FRExt)"
	.size	.Lstr.48, 14

	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	10                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp152-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp153-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp153-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp155-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp155-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp156-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp156-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp151-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp153-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp153-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp154-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp154-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp156-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp156-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp79-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp94-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp158-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp100-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp146-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp83-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp86-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp86-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp86-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp91-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp92-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp105-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp106-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp107-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
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
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	5                               # DW_FORM_data2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	56                              # DW_AT_data_member_location
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	4                               # DW_TAG_enumeration_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	13                              # DW_FORM_sdata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	5                               # DW_FORM_data2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
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
	.byte	25                              # Abbreviation Code
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
	.byte	26                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
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
	.ascii	"\207\001"                      # DW_AT_noreturn
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
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
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
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
	.byte	31                              # Abbreviation Code
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
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
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
	.byte	33                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	34                              # Abbreviation Code
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
	.byte	35                              # Abbreviation Code
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
	.byte	36                              # Abbreviation Code
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
	.byte	37                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	38                              # Abbreviation Code
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
	.byte	39                              # Abbreviation Code
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
	.byte	40                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	41                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	13                              # DW_FORM_sdata
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	42                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	0                               # DW_CHILDREN_no
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
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	43                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	0                               # DW_CHILDREN_no
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
	.byte	44                              # Abbreviation Code
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
	.byte	45                              # Abbreviation Code
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
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	46                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	47                              # Abbreviation Code
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
	.byte	48                              # Abbreviation Code
	.byte	24                              # DW_TAG_unspecified_parameters
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	49                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	50                              # Abbreviation Code
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
	.byte	51                              # Abbreviation Code
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
	.byte	52                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	110                             # DW_AT_linkage_name
	.byte	37                              # DW_FORM_strx1
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x983 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	30                              # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x27:0xa DW_TAG_variable
	.long	49                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               # Abbrev [3] 0x31:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x36:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	10                              # DW_AT_count
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
	.byte	1                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	3                               # Abbrev [3] 0x4f:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x54:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	11                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x5b:0xa DW_TAG_variable
	.long	101                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	2
	.byte	3                               # Abbrev [3] 0x65:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x6a:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x71:0xa DW_TAG_variable
	.long	101                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	3
	.byte	2                               # Abbrev [2] 0x7b:0xa DW_TAG_variable
	.long	79                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	4
	.byte	2                               # Abbrev [2] 0x85:0xa DW_TAG_variable
	.long	49                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	5
	.byte	2                               # Abbrev [2] 0x8f:0xa DW_TAG_variable
	.long	153                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	6
	.byte	3                               # Abbrev [3] 0x99:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x9e:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	9                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0xa5:0xa DW_TAG_variable
	.long	175                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	7
	.byte	3                               # Abbrev [3] 0xaf:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0xb4:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	17                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0xbb:0xa DW_TAG_variable
	.long	197                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	8
	.byte	3                               # Abbrev [3] 0xc5:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0xca:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	12                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0xd1:0xa DW_TAG_variable
	.long	49                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	9
	.byte	2                               # Abbrev [2] 0xdb:0xa DW_TAG_variable
	.long	229                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	10
	.byte	3                               # Abbrev [3] 0xe5:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0xea:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	7                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0xf1:0xa DW_TAG_variable
	.long	229                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	11
	.byte	2                               # Abbrev [2] 0xfb:0xa DW_TAG_variable
	.long	261                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	12
	.byte	3                               # Abbrev [3] 0x105:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x10a:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	23                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x111:0xa DW_TAG_variable
	.long	49                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	13
	.byte	2                               # Abbrev [2] 0x11b:0xa DW_TAG_variable
	.long	293                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	14
	.byte	3                               # Abbrev [3] 0x125:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x12a:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x131:0xb DW_TAG_variable
	.byte	5                               # DW_AT_name
	.long	316                             # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	15
	.byte	3                               # Abbrev [3] 0x13c:0xc DW_TAG_array_type
	.long	328                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x141:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x148:0x8 DW_TAG_typedef
	.long	336                             # DW_AT_type
	.byte	16                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x150:0x4d DW_TAG_structure_type
	.byte	64                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x154:0x9 DW_TAG_member
	.byte	6                               # DW_AT_name
	.long	413                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x15d:0x9 DW_TAG_member
	.byte	7                               # DW_AT_name
	.long	418                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x166:0x9 DW_TAG_member
	.byte	8                               # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x16f:0x9 DW_TAG_member
	.byte	10                              # DW_AT_name
	.long	423                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x178:0x9 DW_TAG_member
	.byte	12                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x181:0x9 DW_TAG_member
	.byte	13                              # DW_AT_name
	.long	423                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x18a:0x9 DW_TAG_member
	.byte	14                              # DW_AT_name
	.long	423                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x193:0x9 DW_TAG_member
	.byte	15                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x19d:0x5 DW_TAG_pointer_type
	.long	61                              # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1a2:0x1 DW_TAG_pointer_type
	.byte	5                               # Abbrev [5] 0x1a3:0x4 DW_TAG_base_type
	.byte	9                               # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x1a7:0x4 DW_TAG_base_type
	.byte	11                              # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x1ab:0xa DW_TAG_variable
	.long	437                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	16
	.byte	3                               # Abbrev [3] 0x1b5:0xd DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1ba:0x7 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.short	807                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x1c2:0xa DW_TAG_variable
	.long	197                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	17
	.byte	14                              # Abbrev [14] 0x1cc:0x7 DW_TAG_variable
	.long	467                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x1d3:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1d8:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x1df:0x7 DW_TAG_variable
	.long	486                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x1e6:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1eb:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	15                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x1f2:0x7 DW_TAG_variable
	.long	467                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x1f9:0x7 DW_TAG_variable
	.long	512                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x200:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x205:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	31                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x20c:0x7 DW_TAG_variable
	.long	467                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x213:0xa DW_TAG_variable
	.long	541                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	18
	.byte	3                               # Abbrev [3] 0x21d:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x222:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	5                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x229:0xa DW_TAG_variable
	.long	261                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	19
	.byte	14                              # Abbrev [14] 0x233:0x7 DW_TAG_variable
	.long	570                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x23a:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x23f:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x246:0x7 DW_TAG_variable
	.long	467                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x24d:0x7 DW_TAG_variable
	.long	467                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x254:0xa DW_TAG_variable
	.long	606                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	204                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	20
	.byte	3                               # Abbrev [3] 0x25e:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x263:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	22                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x26a:0x7 DW_TAG_variable
	.long	467                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x271:0x7 DW_TAG_variable
	.long	467                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x278:0x7 DW_TAG_variable
	.long	467                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x27f:0x7 DW_TAG_variable
	.long	467                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x286:0x7 DW_TAG_variable
	.long	467                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x28d:0x7 DW_TAG_variable
	.long	467                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x294:0x7 DW_TAG_variable
	.long	467                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x29b:0x7 DW_TAG_variable
	.long	467                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x2a2:0x7 DW_TAG_variable
	.long	467                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x2a9:0x7 DW_TAG_variable
	.long	467                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x2b0:0xa DW_TAG_variable
	.long	467                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	232                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	21
	.byte	2                               # Abbrev [2] 0x2ba:0xa DW_TAG_variable
	.long	541                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	236                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	22
	.byte	2                               # Abbrev [2] 0x2c4:0xa DW_TAG_variable
	.long	541                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	236                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	23
	.byte	14                              # Abbrev [14] 0x2ce:0x7 DW_TAG_variable
	.long	467                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x2d5:0x7 DW_TAG_variable
	.long	467                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x2dc:0xb DW_TAG_variable
	.long	743                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	257                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	24
	.byte	3                               # Abbrev [3] 0x2e7:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x2ec:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	19                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x2f3:0xb DW_TAG_variable
	.long	766                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	280                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	25
	.byte	3                               # Abbrev [3] 0x2fe:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x303:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	33                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x30a:0xb DW_TAG_variable
	.long	789                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	287                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	26
	.byte	3                               # Abbrev [3] 0x315:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x31a:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	79                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x321:0xb DW_TAG_variable
	.long	743                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	297                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	27
	.byte	7                               # Abbrev [7] 0x32c:0xb DW_TAG_variable
	.byte	17                              # DW_AT_name
	.long	823                             # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	28
	.byte	16                              # Abbrev [16] 0x337:0x9 DW_TAG_typedef
	.long	832                             # DW_AT_type
	.byte	104                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	900                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x340:0x124 DW_TAG_structure_type
	.byte	103                             # DW_AT_name
	.short	4016                            # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.short	850                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x347:0xa DW_TAG_member
	.byte	18                              # DW_AT_name
	.long	1124                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	852                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x351:0xa DW_TAG_member
	.byte	19                              # DW_AT_name
	.long	1124                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	853                             # DW_AT_decl_line
	.byte	255                             # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x35b:0xb DW_TAG_member
	.byte	20                              # DW_AT_name
	.long	1124                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	854                             # DW_AT_decl_line
	.short	510                             # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x366:0xb DW_TAG_member
	.byte	21                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	856                             # DW_AT_decl_line
	.short	768                             # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x371:0xb DW_TAG_member
	.byte	22                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	857                             # DW_AT_decl_line
	.short	772                             # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x37c:0xb DW_TAG_member
	.byte	23                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	858                             # DW_AT_decl_line
	.short	776                             # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x387:0xb DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	859                             # DW_AT_decl_line
	.short	780                             # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x392:0xb DW_TAG_member
	.byte	25                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	860                             # DW_AT_decl_line
	.short	784                             # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x39d:0xb DW_TAG_member
	.byte	26                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	861                             # DW_AT_decl_line
	.short	788                             # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x3a8:0xb DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	1136                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	864                             # DW_AT_decl_line
	.short	792                             # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x3b3:0xb DW_TAG_member
	.byte	61                              # DW_AT_name
	.long	1136                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	865                             # DW_AT_decl_line
	.short	928                             # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x3be:0xb DW_TAG_member
	.byte	62                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	867                             # DW_AT_decl_line
	.short	1064                            # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x3c9:0xb DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	868                             # DW_AT_decl_line
	.short	1068                            # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x3d4:0xb DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	1403                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	869                             # DW_AT_decl_line
	.short	1072                            # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x3df:0xb DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	1403                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	870                             # DW_AT_decl_line
	.short	2040                            # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x3ea:0xb DW_TAG_member
	.byte	93                              # DW_AT_name
	.long	1403                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	871                             # DW_AT_decl_line
	.short	3008                            # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x3f5:0xb DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	873                             # DW_AT_decl_line
	.short	3976                            # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x400:0xb DW_TAG_member
	.byte	95                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	884                             # DW_AT_decl_line
	.short	3980                            # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x40b:0xb DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	885                             # DW_AT_decl_line
	.short	3984                            # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x416:0xb DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	886                             # DW_AT_decl_line
	.short	3988                            # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x421:0xb DW_TAG_member
	.byte	82                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	890                             # DW_AT_decl_line
	.short	3992                            # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x42c:0xb DW_TAG_member
	.byte	98                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	893                             # DW_AT_decl_line
	.short	3996                            # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x437:0xb DW_TAG_member
	.byte	99                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	894                             # DW_AT_decl_line
	.short	4000                            # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x442:0xb DW_TAG_member
	.byte	100                             # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	895                             # DW_AT_decl_line
	.short	4004                            # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x44d:0xb DW_TAG_member
	.byte	101                             # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	897                             # DW_AT_decl_line
	.short	4008                            # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x458:0xb DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	899                             # DW_AT_decl_line
	.short	4012                            # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x464:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x469:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	255                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x470:0x8 DW_TAG_typedef
	.long	1144                            # DW_AT_type
	.byte	60                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x478:0xba DW_TAG_structure_type
	.byte	59                              # DW_AT_name
	.byte	136                             # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x47d:0x9 DW_TAG_member
	.byte	28                              # DW_AT_name
	.long	1330                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x486:0x9 DW_TAG_member
	.byte	35                              # DW_AT_name
	.long	1362                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x48f:0x9 DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	423                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x498:0x9 DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	1391                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4a1:0x9 DW_TAG_member
	.byte	43                              # DW_AT_name
	.long	1391                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4aa:0x9 DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4b3:0x9 DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4bc:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4c5:0x9 DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4ce:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4d7:0x9 DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4e0:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4e9:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4f2:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	1391                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4fb:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x504:0x9 DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	1391                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x50d:0x9 DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	1391                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	100                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x516:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	1391                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x51f:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	124                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x528:0x9 DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x532:0x8 DW_TAG_typedef
	.long	1338                            # DW_AT_type
	.byte	34                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x53a:0x18 DW_TAG_enumeration_type
	.long	419                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x542:0x3 DW_TAG_enumerator
	.byte	29                              # DW_AT_name
	.byte	127                             # DW_AT_const_value
	.byte	22                              # Abbrev [22] 0x545:0x3 DW_TAG_enumerator
	.byte	30                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	22                              # Abbrev [22] 0x548:0x3 DW_TAG_enumerator
	.byte	31                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	22                              # Abbrev [22] 0x54b:0x3 DW_TAG_enumerator
	.byte	32                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	22                              # Abbrev [22] 0x54e:0x3 DW_TAG_enumerator
	.byte	33                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x552:0x8 DW_TAG_typedef
	.long	1370                            # DW_AT_type
	.byte	40                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x55a:0x15 DW_TAG_enumeration_type
	.long	419                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x562:0x3 DW_TAG_enumerator
	.byte	36                              # DW_AT_name
	.byte	127                             # DW_AT_const_value
	.byte	22                              # Abbrev [22] 0x565:0x3 DW_TAG_enumerator
	.byte	37                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	22                              # Abbrev [22] 0x568:0x3 DW_TAG_enumerator
	.byte	38                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	22                              # Abbrev [22] 0x56b:0x3 DW_TAG_enumerator
	.byte	39                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x56f:0xc DW_TAG_array_type
	.long	419                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x574:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x57b:0x8 DW_TAG_typedef
	.long	1411                            # DW_AT_type
	.byte	91                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x583:0xb9 DW_TAG_structure_type
	.byte	90                              # DW_AT_name
	.short	968                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x589:0x9 DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	1124                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x592:0x9 DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	1124                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	255                             # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x59b:0xa DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	1124                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.short	510                             # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x5a5:0xa DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.short	768                             # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x5af:0xa DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	1596                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.short	772                             # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x5b9:0xa DW_TAG_member
	.byte	77                              # DW_AT_name
	.long	1136                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.short	776                             # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x5c3:0xa DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.short	912                             # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x5cd:0xa DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.short	916                             # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x5d7:0xa DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.short	920                             # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x5e1:0xa DW_TAG_member
	.byte	81                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.short	924                             # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x5eb:0xa DW_TAG_member
	.byte	82                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.short	928                             # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x5f5:0xa DW_TAG_member
	.byte	83                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.short	932                             # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x5ff:0xa DW_TAG_member
	.byte	84                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.short	936                             # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x609:0xa DW_TAG_member
	.byte	85                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.short	940                             # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x613:0xa DW_TAG_member
	.byte	86                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.short	944                             # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x61d:0xa DW_TAG_member
	.byte	87                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.short	948                             # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x627:0xa DW_TAG_member
	.byte	88                              # DW_AT_name
	.long	419                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.short	952                             # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x631:0xa DW_TAG_member
	.byte	89                              # DW_AT_name
	.long	1631                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.short	960                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x63c:0x8 DW_TAG_typedef
	.long	1604                            # DW_AT_type
	.byte	76                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x644:0x1b DW_TAG_enumeration_type
	.long	419                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x64c:0x3 DW_TAG_enumerator
	.byte	70                              # DW_AT_name
	.byte	127                             # DW_AT_const_value
	.byte	22                              # Abbrev [22] 0x64f:0x3 DW_TAG_enumerator
	.byte	71                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	22                              # Abbrev [22] 0x652:0x3 DW_TAG_enumerator
	.byte	72                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	22                              # Abbrev [22] 0x655:0x3 DW_TAG_enumerator
	.byte	73                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	22                              # Abbrev [22] 0x658:0x3 DW_TAG_enumerator
	.byte	74                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	22                              # Abbrev [22] 0x65b:0x3 DW_TAG_enumerator
	.byte	75                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x65f:0x5 DW_TAG_pointer_type
	.long	419                             # DW_AT_type
	.byte	2                               # Abbrev [2] 0x664:0xa DW_TAG_variable
	.long	1646                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	29
	.byte	3                               # Abbrev [3] 0x66e:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x673:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	42                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x67a:0x13 DW_TAG_subprogram
	.byte	30                              # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	1729                            # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x686:0x6 DW_TAG_call_site
	.long	1677                            # DW_AT_call_origin
	.byte	31                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x68d:0xb DW_TAG_subprogram
	.byte	105                             # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.short	624                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
                                        # DW_AT_noreturn
	.byte	28                              # Abbrev [28] 0x692:0x5 DW_TAG_formal_parameter
	.long	419                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x698:0x15 DW_TAG_subprogram
	.byte	106                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	30                              # Abbrev [30] 0x69c:0x8 DW_TAG_formal_parameter
	.byte	107                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.long	419                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x6a4:0x8 DW_TAG_formal_parameter
	.byte	108                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.long	419                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x6ad:0xf DW_TAG_subprogram
	.byte	109                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	307                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	32                              # Abbrev [32] 0x6b2:0x9 DW_TAG_formal_parameter
	.byte	110                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	307                             # DW_AT_decl_line
	.long	1724                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x6bc:0x5 DW_TAG_pointer_type
	.long	823                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x6c1:0x4 DW_TAG_subprogram
	.byte	111                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	34                              # Abbrev [34] 0x6c5:0x191 DW_TAG_subprogram
	.byte	32                              # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	130                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	35                              # Abbrev [35] 0x6d0:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	110                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.long	1724                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0x6d9:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	131                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.long	419                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x6e2:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.long	2441                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0x6eb:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	133                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.long	413                             # DW_AT_type
	.byte	36                              # Abbrev [36] 0x6f4:0x9 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	134                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.long	413                             # DW_AT_type
	.byte	36                              # Abbrev [36] 0x6fd:0x9 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.byte	135                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.long	419                             # DW_AT_type
	.byte	36                              # Abbrev [36] 0x706:0x9 DW_TAG_variable
	.byte	6                               # DW_AT_location
	.byte	136                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.long	419                             # DW_AT_type
	.byte	36                              # Abbrev [36] 0x70f:0x9 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	137                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.long	419                             # DW_AT_type
	.byte	37                              # Abbrev [37] 0x718:0x1b DW_TAG_lexical_block
	.byte	33                              # DW_AT_low_pc
	.long	.Ltmp113-.Ltmp100               # DW_AT_high_pc
	.byte	38                              # Abbrev [38] 0x71e:0xa DW_TAG_variable
	.byte	8                               # DW_AT_location
	.byte	27                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	264                             # DW_AT_decl_line
	.long	413                             # DW_AT_type
	.byte	38                              # Abbrev [38] 0x728:0xa DW_TAG_variable
	.byte	9                               # DW_AT_location
	.byte	138                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	265                             # DW_AT_decl_line
	.long	413                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x733:0x1b DW_TAG_inlined_subroutine
	.long	1688                            # DW_AT_abstract_origin
	.byte	34                              # DW_AT_low_pc
	.long	.Ltmp77-.Ltmp75                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	238                             # DW_AT_call_line
	.byte	7                               # DW_AT_call_column
	.byte	40                              # Abbrev [40] 0x740:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	80
	.long	1692                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0x747:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	1700                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x74e:0x1b DW_TAG_inlined_subroutine
	.long	1688                            # DW_AT_abstract_origin
	.byte	35                              # DW_AT_low_pc
	.long	.Ltmp141-.Ltmp139               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	232                             # DW_AT_call_line
	.byte	7                               # DW_AT_call_column
	.byte	40                              # Abbrev [40] 0x75b:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	80
	.long	1692                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0x762:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	1700                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0x769:0xc DW_TAG_inlined_subroutine
	.long	1688                            # DW_AT_abstract_origin
	.byte	36                              # DW_AT_low_pc
	.long	.Ltmp143-.Ltmp141               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	0                               # DW_AT_call_line
	.byte	43                              # Abbrev [43] 0x775:0xe DW_TAG_inlined_subroutine
	.long	1709                            # DW_AT_abstract_origin
	.byte	37                              # DW_AT_low_pc
	.long	.Ltmp145-.Ltmp144               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	293                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0x783:0xc DW_TAG_inlined_subroutine
	.long	1729                            # DW_AT_abstract_origin
	.byte	38                              # DW_AT_low_pc
	.long	.Ltmp158-.Ltmp156               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	0                               # DW_AT_call_line
	.byte	26                              # Abbrev [26] 0x78f:0x6 DW_TAG_call_site
	.long	2134                            # DW_AT_call_origin
	.byte	39                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x795:0x6 DW_TAG_call_site
	.long	2153                            # DW_AT_call_origin
	.byte	40                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x79b:0x6 DW_TAG_call_site
	.long	2199                            # DW_AT_call_origin
	.byte	41                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x7a1:0x6 DW_TAG_call_site
	.long	2220                            # DW_AT_call_origin
	.byte	42                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x7a7:0x6 DW_TAG_call_site
	.long	2234                            # DW_AT_call_origin
	.byte	43                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x7ad:0x6 DW_TAG_call_site
	.long	2249                            # DW_AT_call_origin
	.byte	44                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x7b3:0x6 DW_TAG_call_site
	.long	2274                            # DW_AT_call_origin
	.byte	45                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x7b9:0x6 DW_TAG_call_site
	.long	2220                            # DW_AT_call_origin
	.byte	46                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x7bf:0x6 DW_TAG_call_site
	.long	2199                            # DW_AT_call_origin
	.byte	47                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x7c5:0x6 DW_TAG_call_site
	.long	2234                            # DW_AT_call_origin
	.byte	48                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x7cb:0x6 DW_TAG_call_site
	.long	2249                            # DW_AT_call_origin
	.byte	49                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x7d1:0x6 DW_TAG_call_site
	.long	2274                            # DW_AT_call_origin
	.byte	50                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x7d7:0x6 DW_TAG_call_site
	.long	2153                            # DW_AT_call_origin
	.byte	51                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x7dd:0x6 DW_TAG_call_site
	.long	2153                            # DW_AT_call_origin
	.byte	52                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x7e3:0x6 DW_TAG_call_site
	.long	2285                            # DW_AT_call_origin
	.byte	53                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x7e9:0x6 DW_TAG_call_site
	.long	2316                            # DW_AT_call_origin
	.byte	54                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x7ef:0x6 DW_TAG_call_site
	.long	2332                            # DW_AT_call_origin
	.byte	55                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x7f5:0x6 DW_TAG_call_site
	.long	2356                            # DW_AT_call_origin
	.byte	34                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x7fb:0x6 DW_TAG_call_site
	.long	2316                            # DW_AT_call_origin
	.byte	56                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x801:0x6 DW_TAG_call_site
	.long	2234                            # DW_AT_call_origin
	.byte	57                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x807:0x6 DW_TAG_call_site
	.long	2378                            # DW_AT_call_origin
	.byte	58                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x80d:0x6 DW_TAG_call_site
	.long	2393                            # DW_AT_call_origin
	.byte	59                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x813:0x6 DW_TAG_call_site
	.long	2234                            # DW_AT_call_origin
	.byte	60                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x819:0x6 DW_TAG_call_site
	.long	2199                            # DW_AT_call_origin
	.byte	61                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x81f:0x6 DW_TAG_call_site
	.long	2234                            # DW_AT_call_origin
	.byte	62                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x825:0x6 DW_TAG_call_site
	.long	2249                            # DW_AT_call_origin
	.byte	63                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x82b:0x6 DW_TAG_call_site
	.long	2274                            # DW_AT_call_origin
	.byte	64                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x831:0x6 DW_TAG_call_site
	.long	2356                            # DW_AT_call_origin
	.byte	35                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x837:0x6 DW_TAG_call_site
	.long	2316                            # DW_AT_call_origin
	.byte	65                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x83d:0x6 DW_TAG_call_site
	.long	2403                            # DW_AT_call_origin
	.byte	66                              # DW_AT_call_return_pc
	.byte	44                              # Abbrev [44] 0x843:0x6 DW_TAG_call_site
	.long	2422                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	67                              # DW_AT_call_pc
	.byte	26                              # Abbrev [26] 0x849:0x6 DW_TAG_call_site
	.long	1677                            # DW_AT_call_origin
	.byte	68                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x84f:0x6 DW_TAG_call_site
	.long	1677                            # DW_AT_call_origin
	.byte	69                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0x856:0xe DW_TAG_subprogram
	.byte	112                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	419                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x85e:0x5 DW_TAG_formal_parameter
	.long	2148                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x864:0x5 DW_TAG_pointer_type
	.long	328                             # DW_AT_type
	.byte	45                              # Abbrev [45] 0x869:0x18 DW_TAG_subprogram
	.byte	113                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	419                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x871:0x5 DW_TAG_formal_parameter
	.long	2177                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x876:0x5 DW_TAG_formal_parameter
	.long	2177                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x87b:0x5 DW_TAG_formal_parameter
	.long	2187                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x881:0x5 DW_TAG_pointer_type
	.long	2182                            # DW_AT_type
	.byte	46                              # Abbrev [46] 0x886:0x5 DW_TAG_const_type
	.long	61                              # DW_AT_type
	.byte	8                               # Abbrev [8] 0x88b:0x8 DW_TAG_typedef
	.long	2195                            # DW_AT_type
	.byte	115                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x893:0x4 DW_TAG_base_type
	.byte	114                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	47                              # Abbrev [47] 0x897:0x10 DW_TAG_subprogram
	.byte	116                             # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.short	356                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	419                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x8a0:0x5 DW_TAG_formal_parameter
	.long	2215                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x8a5:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0x8a7:0x5 DW_TAG_restrict_type
	.long	2177                            # DW_AT_type
	.byte	45                              # Abbrev [45] 0x8ac:0xe DW_TAG_subprogram
	.byte	117                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	413                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x8b4:0x5 DW_TAG_formal_parameter
	.long	413                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	47                              # Abbrev [47] 0x8ba:0xf DW_TAG_subprogram
	.byte	118                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.short	407                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2195                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x8c3:0x5 DW_TAG_formal_parameter
	.long	2177                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	50                              # Abbrev [50] 0x8c9:0x19 DW_TAG_subprogram
	.byte	119                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x8cd:0x5 DW_TAG_formal_parameter
	.long	1724                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x8d2:0x5 DW_TAG_formal_parameter
	.long	2148                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x8d7:0x5 DW_TAG_formal_parameter
	.long	413                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x8dc:0x5 DW_TAG_formal_parameter
	.long	419                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	51                              # Abbrev [51] 0x8e2:0xb DW_TAG_subprogram
	.byte	120                             # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.short	555                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x8e7:0x5 DW_TAG_formal_parameter
	.long	418                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	47                              # Abbrev [47] 0x8ed:0x1a DW_TAG_subprogram
	.byte	121                             # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.short	378                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	419                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x8f6:0x5 DW_TAG_formal_parameter
	.long	2311                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x8fb:0x5 DW_TAG_formal_parameter
	.long	2187                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x900:0x5 DW_TAG_formal_parameter
	.long	2215                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x905:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0x907:0x5 DW_TAG_restrict_type
	.long	413                             # DW_AT_type
	.byte	51                              # Abbrev [51] 0x90c:0x10 DW_TAG_subprogram
	.byte	122                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	940                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x911:0x5 DW_TAG_formal_parameter
	.long	413                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x916:0x5 DW_TAG_formal_parameter
	.long	419                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0x91c:0x18 DW_TAG_subprogram
	.byte	123                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	413                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x924:0x5 DW_TAG_formal_parameter
	.long	2311                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x929:0x5 DW_TAG_formal_parameter
	.long	2215                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x92e:0x5 DW_TAG_formal_parameter
	.long	2187                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	52                              # Abbrev [52] 0x934:0x16 DW_TAG_subprogram
	.byte	124                             # DW_AT_linkage_name
	.byte	125                             # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.short	439                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	419                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x93e:0x5 DW_TAG_formal_parameter
	.long	2215                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x943:0x5 DW_TAG_formal_parameter
	.long	2215                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x948:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	47                              # Abbrev [47] 0x94a:0xf DW_TAG_subprogram
	.byte	126                             # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.short	540                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	418                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x953:0x5 DW_TAG_formal_parameter
	.long	2187                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	50                              # Abbrev [50] 0x959:0xa DW_TAG_subprogram
	.byte	127                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x95d:0x5 DW_TAG_formal_parameter
	.long	413                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0x963:0x13 DW_TAG_subprogram
	.byte	128                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	419                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x96b:0x5 DW_TAG_formal_parameter
	.long	2148                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x970:0x5 DW_TAG_formal_parameter
	.long	1631                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0x976:0x13 DW_TAG_subprogram
	.byte	129                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	419                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x97e:0x5 DW_TAG_formal_parameter
	.long	2148                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x983:0x5 DW_TAG_formal_parameter
	.long	413                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x989:0x5 DW_TAG_pointer_type
	.long	413                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	560                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"ldecod_src/configfile.c"       # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/x264-test/src" # string offset=129
.Linfo_string3:
	.asciz	"char"                          # string offset=163
.Linfo_string4:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=168
.Linfo_string5:
	.asciz	"Map"                           # string offset=188
.Linfo_string6:
	.asciz	"TokenName"                     # string offset=192
.Linfo_string7:
	.asciz	"Place"                         # string offset=202
.Linfo_string8:
	.asciz	"Type"                          # string offset=208
.Linfo_string9:
	.asciz	"int"                           # string offset=213
.Linfo_string10:
	.asciz	"Default"                       # string offset=217
.Linfo_string11:
	.asciz	"double"                        # string offset=225
.Linfo_string12:
	.asciz	"param_limits"                  # string offset=232
.Linfo_string13:
	.asciz	"min_limit"                     # string offset=245
.Linfo_string14:
	.asciz	"max_limit"                     # string offset=255
.Linfo_string15:
	.asciz	"char_size"                     # string offset=265
.Linfo_string16:
	.asciz	"Mapping"                       # string offset=275
.Linfo_string17:
	.asciz	"cfgparams"                     # string offset=283
.Linfo_string18:
	.asciz	"infile"                        # string offset=293
.Linfo_string19:
	.asciz	"outfile"                       # string offset=300
.Linfo_string20:
	.asciz	"reffile"                       # string offset=308
.Linfo_string21:
	.asciz	"FileFormat"                    # string offset=316
.Linfo_string22:
	.asciz	"ref_offset"                    # string offset=327
.Linfo_string23:
	.asciz	"poc_scale"                     # string offset=338
.Linfo_string24:
	.asciz	"write_uv"                      # string offset=348
.Linfo_string25:
	.asciz	"silent"                        # string offset=357
.Linfo_string26:
	.asciz	"intra_profile_deblocking"      # string offset=364
.Linfo_string27:
	.asciz	"source"                        # string offset=389
.Linfo_string28:
	.asciz	"yuv_format"                    # string offset=396
.Linfo_string29:
	.asciz	"CF_UNKNOWN"                    # string offset=407
.Linfo_string30:
	.asciz	"YUV400"                        # string offset=418
.Linfo_string31:
	.asciz	"YUV420"                        # string offset=425
.Linfo_string32:
	.asciz	"YUV422"                        # string offset=432
.Linfo_string33:
	.asciz	"YUV444"                        # string offset=439
.Linfo_string34:
	.asciz	"ColorFormat"                   # string offset=446
.Linfo_string35:
	.asciz	"color_model"                   # string offset=458
.Linfo_string36:
	.asciz	"CM_UNKNOWN"                    # string offset=470
.Linfo_string37:
	.asciz	"CM_YUV"                        # string offset=481
.Linfo_string38:
	.asciz	"CM_RGB"                        # string offset=488
.Linfo_string39:
	.asciz	"CM_XYZ"                        # string offset=495
.Linfo_string40:
	.asciz	"ColorModel"                    # string offset=502
.Linfo_string41:
	.asciz	"frame_rate"                    # string offset=513
.Linfo_string42:
	.asciz	"width"                         # string offset=524
.Linfo_string43:
	.asciz	"height"                        # string offset=530
.Linfo_string44:
	.asciz	"auto_crop_right"               # string offset=537
.Linfo_string45:
	.asciz	"auto_crop_bottom"              # string offset=553
.Linfo_string46:
	.asciz	"auto_crop_right_cr"            # string offset=570
.Linfo_string47:
	.asciz	"auto_crop_bottom_cr"           # string offset=589
.Linfo_string48:
	.asciz	"width_crop"                    # string offset=609
.Linfo_string49:
	.asciz	"height_crop"                   # string offset=620
.Linfo_string50:
	.asciz	"mb_width"                      # string offset=632
.Linfo_string51:
	.asciz	"mb_height"                     # string offset=641
.Linfo_string52:
	.asciz	"size_cmp"                      # string offset=651
.Linfo_string53:
	.asciz	"size"                          # string offset=660
.Linfo_string54:
	.asciz	"bit_depth"                     # string offset=665
.Linfo_string55:
	.asciz	"max_value"                     # string offset=675
.Linfo_string56:
	.asciz	"max_value_sq"                  # string offset=685
.Linfo_string57:
	.asciz	"pic_unit_size_on_disk"         # string offset=698
.Linfo_string58:
	.asciz	"pic_unit_size_shift3"          # string offset=720
.Linfo_string59:
	.asciz	"frame_format"                  # string offset=741
.Linfo_string60:
	.asciz	"FrameFormat"                   # string offset=754
.Linfo_string61:
	.asciz	"output"                        # string offset=766
.Linfo_string62:
	.asciz	"ProcessInput"                  # string offset=773
.Linfo_string63:
	.asciz	"enable_32_pulldown"            # string offset=786
.Linfo_string64:
	.asciz	"input_file1"                   # string offset=805
.Linfo_string65:
	.asciz	"fname"                         # string offset=817
.Linfo_string66:
	.asciz	"fhead"                         # string offset=823
.Linfo_string67:
	.asciz	"ftail"                         # string offset=829
.Linfo_string68:
	.asciz	"f_num"                         # string offset=835
.Linfo_string69:
	.asciz	"vdtype"                        # string offset=841
.Linfo_string70:
	.asciz	"VIDEO_UNKNOWN"                 # string offset=848
.Linfo_string71:
	.asciz	"VIDEO_YUV"                     # string offset=862
.Linfo_string72:
	.asciz	"VIDEO_RGB"                     # string offset=872
.Linfo_string73:
	.asciz	"VIDEO_XYZ"                     # string offset=882
.Linfo_string74:
	.asciz	"VIDEO_TIFF"                    # string offset=892
.Linfo_string75:
	.asciz	"VIDEO_AVI"                     # string offset=903
.Linfo_string76:
	.asciz	"VideoFileType"                 # string offset=913
.Linfo_string77:
	.asciz	"format"                        # string offset=927
.Linfo_string78:
	.asciz	"is_concatenated"               # string offset=934
.Linfo_string79:
	.asciz	"is_interleaved"                # string offset=950
.Linfo_string80:
	.asciz	"zero_pad"                      # string offset=965
.Linfo_string81:
	.asciz	"num_digits"                    # string offset=974
.Linfo_string82:
	.asciz	"start_frame"                   # string offset=985
.Linfo_string83:
	.asciz	"end_frame"                     # string offset=997
.Linfo_string84:
	.asciz	"nframes"                       # string offset=1007
.Linfo_string85:
	.asciz	"crop_x_size"                   # string offset=1015
.Linfo_string86:
	.asciz	"crop_y_size"                   # string offset=1027
.Linfo_string87:
	.asciz	"crop_x_offset"                 # string offset=1039
.Linfo_string88:
	.asciz	"crop_y_offset"                 # string offset=1053
.Linfo_string89:
	.asciz	"avi"                           # string offset=1067
.Linfo_string90:
	.asciz	"video_data_file"               # string offset=1071
.Linfo_string91:
	.asciz	"VideoDataFile"                 # string offset=1087
.Linfo_string92:
	.asciz	"input_file2"                   # string offset=1101
.Linfo_string93:
	.asciz	"input_file3"                   # string offset=1113
.Linfo_string94:
	.asciz	"DecodeAllLayers"               # string offset=1125
.Linfo_string95:
	.asciz	"conceal_mode"                  # string offset=1141
.Linfo_string96:
	.asciz	"ref_poc_gap"                   # string offset=1154
.Linfo_string97:
	.asciz	"poc_gap"                       # string offset=1166
.Linfo_string98:
	.asciz	"stdRange"                      # string offset=1174
.Linfo_string99:
	.asciz	"videoCode"                     # string offset=1183
.Linfo_string100:
	.asciz	"export_views"                  # string offset=1193
.Linfo_string101:
	.asciz	"iDecFrmNum"                    # string offset=1206
.Linfo_string102:
	.asciz	"bDisplayDecParams"             # string offset=1217
.Linfo_string103:
	.asciz	"inp_par"                       # string offset=1235
.Linfo_string104:
	.asciz	"InputParameters"               # string offset=1243
.Linfo_string105:
	.asciz	"exit"                          # string offset=1259
.Linfo_string106:
	.asciz	"conf_read_check"               # string offset=1264
.Linfo_string107:
	.asciz	"val"                           # string offset=1280
.Linfo_string108:
	.asciz	"expected"                      # string offset=1284
.Linfo_string109:
	.asciz	"PatchInp"                      # string offset=1293
.Linfo_string110:
	.asciz	"p_Inp"                         # string offset=1302
.Linfo_string111:
	.asciz	"JMDecHelpExit"                 # string offset=1308
.Linfo_string112:
	.asciz	"InitParams"                    # string offset=1322
.Linfo_string113:
	.asciz	"strncmp"                       # string offset=1333
.Linfo_string114:
	.asciz	"unsigned long"                 # string offset=1341
.Linfo_string115:
	.asciz	"size_t"                        # string offset=1355
.Linfo_string116:
	.asciz	"printf"                        # string offset=1362
.Linfo_string117:
	.asciz	"GetConfigFileContent"          # string offset=1369
.Linfo_string118:
	.asciz	"strlen"                        # string offset=1390
.Linfo_string119:
	.asciz	"ParseContent"                  # string offset=1397
.Linfo_string120:
	.asciz	"free"                          # string offset=1410
.Linfo_string121:
	.asciz	"snprintf"                      # string offset=1415
.Linfo_string122:
	.asciz	"error"                         # string offset=1424
.Linfo_string123:
	.asciz	"strncpy"                       # string offset=1430
.Linfo_string124:
	.asciz	"__isoc99_sscanf"               # string offset=1438
.Linfo_string125:
	.asciz	"sscanf"                        # string offset=1454
.Linfo_string126:
	.asciz	"malloc"                        # string offset=1461
.Linfo_string127:
	.asciz	"no_mem_exit"                   # string offset=1468
.Linfo_string128:
	.asciz	"TestParams"                    # string offset=1480
.Linfo_string129:
	.asciz	"DisplayParams"                 # string offset=1491
.Linfo_string130:
	.asciz	"ParseCommand"                  # string offset=1505
.Linfo_string131:
	.asciz	"ac"                            # string offset=1518
.Linfo_string132:
	.asciz	"av"                            # string offset=1521
.Linfo_string133:
	.asciz	"content"                       # string offset=1524
.Linfo_string134:
	.asciz	"filename"                      # string offset=1532
.Linfo_string135:
	.asciz	"CLcount"                       # string offset=1541
.Linfo_string136:
	.asciz	"NumberParams"                  # string offset=1549
.Linfo_string137:
	.asciz	"ContentLen"                    # string offset=1562
.Linfo_string138:
	.asciz	"destin"                        # string offset=1573
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	Map
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.27
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	.L.str.45
	.quad	.L.str.46
	.quad	cfgparams
	.quad	.L.str.47
	.quad	.Lfunc_begin0
	.quad	.Ltmp2
	.quad	.Lfunc_begin1
	.quad	.Ltmp100
	.quad	.Ltmp75
	.quad	.Ltmp139
	.quad	.Ltmp141
	.quad	.Ltmp144
	.quad	.Ltmp156
	.quad	.Ltmp13
	.quad	.Ltmp21
	.quad	.Ltmp28
	.quad	.Ltmp29
	.quad	.Ltmp33
	.quad	.Ltmp34
	.quad	.Ltmp36
	.quad	.Ltmp39
	.quad	.Ltmp43
	.quad	.Ltmp44
	.quad	.Ltmp45
	.quad	.Ltmp47
	.quad	.Ltmp53
	.quad	.Ltmp55
	.quad	.Ltmp61
	.quad	.Ltmp62
	.quad	.Ltmp73
	.quad	.Ltmp78
	.quad	.Ltmp88
	.quad	.Ltmp93
	.quad	.Ltmp98
	.quad	.Ltmp102
	.quad	.Ltmp116
	.quad	.Ltmp117
	.quad	.Ltmp118
	.quad	.Ltmp119
	.quad	.Ltmp142
	.quad	.Ltmp145
	.quad	.Ltmp152
	.quad	.Ltmp158
	.quad	.Ltmp160
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
