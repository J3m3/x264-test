	.text
	.file	"encoder.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function x264_encoder_open_96
.LCPI0_0:
	.long	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	0                               # 0x0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_1:
	.quad	0x3fee666666666666              # double 0.94999999999999996
.LCPI0_3:
	.quad	0x412e848000000000              # double 1.0E+6
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_2:
	.long	0x3f800000                      # float 1
	.text
	.globl	x264_encoder_open_96
	.p2align	4, 0x90
	.type	x264_encoder_open_96,@function
x264_encoder_open_96:                   # @x264_encoder_open_96
	.cfi_startproc
# %bb.0:                                # %entry
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
	subq	$1032, %rsp                     # imm = 0x408
	.cfi_def_cfa_offset 1088
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movl	$33344, %edi                    # imm = 0x8240
	callq	x264_malloc@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB0_69
# %bb.1:                                # %do.end
	movl	$33344, %edx                    # imm = 0x8240
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	movl	$704, %edx                      # imm = 0x2C0
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	memcpy@PLT
	movq	696(%r14), %rax
	testq	%rax, %rax
	je	.LBB0_3
# %bb.2:                                # %if.then6
	movq	%r14, %rdi
	callq	*%rax
.LBB0_3:                                # %if.end8
	movq	%rbx, %rdi
	callq	x264_validate_parameters
	testl	%eax, %eax
	js	.LBB0_69
# %bb.4:                                # %if.end11
	movq	152(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB0_6
# %bb.5:                                # %if.then14
	movq	%rbx, %rdi
	callq	x264_cqm_parse_file@PLT
	testl	%eax, %eax
	js	.LBB0_69
.LBB0_6:                                # %if.end21
	movq	568(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB0_8
# %bb.7:                                # %if.then24
	callq	spec_strdup@PLT
	movq	%rax, 568(%rbx)
.LBB0_8:                                # %if.end32
	movq	584(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB0_10
# %bb.9:                                # %if.then36
	callq	spec_strdup@PLT
	movq	%rax, 584(%rbx)
.LBB0_10:                               # %if.end44
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movl	$1, %edx
	callq	x264_set_aspect_ratio
	leaq	652(%rbx), %rdi
	leaq	656(%rbx), %rsi
	callq	x264_reduce_fraction@PLT
	leaq	660(%rbx), %rdi
	leaq	664(%rbx), %rsi
	callq	x264_reduce_fraction@PLT
	movl	$4294967295, %eax               # imm = 0xFFFFFFFF
	movq	%rax, 1844(%rbx)
	movl	$0, 3336(%rbx)
	movl	664(%rbx), %r8d
	cmpl	$0, 668(%rbx)
	je	.LBB0_13
# %bb.11:                               # %if.then54
	cmpl	$0, 100(%rbx)
	je	.LBB0_13
# %bb.12:                               # %cond.end
	cmpl	$1, 112(%rbx)
	movl	$3, %r14d
	sbbl	$0, %r14d
	movl	%r14d, 3340(%rbx)
	imull	%r8d, %r14d
	movl	660(%rbx), %ecx
	movq	%r14, (%rsp)
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	movl	$3, %esi
                                        # kill: def $r8d killed $r8d killed $r8
	movl	%ecx, %r9d
	xorl	%eax, %eax
	callq	x264_log@PLT
	movq	%r14, %r8
	testl	$-2147483648, %r8d              # imm = 0x80000000
	jne	.LBB0_15
.LBB0_17:                               # %if.end81
	movl	%r8d, 664(%rbx)
	leaq	1896(%rbx), %rdi
	movq	%rdi, 3200(%rbx)
	movl	644(%rbx), %esi
	movq	%rbx, %rdx
	callq	x264_sps_init@PLT
	leaq	3208(%rbx), %rdi
	movq	%rdi, 3328(%rbx)
	movl	644(%rbx), %esi
	movq	3200(%rbx), %rcx
	movq	%rbx, %rdx
	callq	x264_pps_init@PLT
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	x264_validate_levels@PLT
	movq	3328(%rbx), %rax
	movslq	44(%rax), %rax
	leaq	i_chroma_qp_table+12(%rax), %rax
	movq	%rax, 7216(%rbx)
	movq	%rbx, %rdi
	callq	x264_cqm_init@PLT
	testl	%eax, %eax
	js	.LBB0_69
# %bb.18:                               # %if.end100
	movq	3200(%rbx), %rdx
	movl	1088(%rdx), %eax
	imull	1084(%rdx), %eax
	movl	%eax, 16368(%rbx)
	movl	104(%rbx), %ecx
	cmpl	$2, %ecx
	jne	.LBB0_21
# %bb.19:                               # %land.lhs.true
	cmpl	$0, 576(%rbx)
	je	.LBB0_20
.LBB0_21:                               # %if.else122
	movl	100(%rbx), %edi
	movl	%edi, %ebp
	movl	552(%rbx), %esi
	testl	%esi, %esi
	jne	.LBB0_24
.LBB0_23:                               # %lor.lhs.false
	cmpl	$0, 528(%rbx)
	jne	.LBB0_24
	jmp	.LBB0_25
.LBB0_13:                               # %if.else
	movl	$1, 3340(%rbx)
	testl	$-2147483648, %r8d              # imm = 0x80000000
	je	.LBB0_17
.LBB0_15:                               # %if.then80
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movq	%r8, %rcx
.LBB0_16:                               # %fail
	xorl	%eax, %eax
	callq	x264_log@PLT
.LBB0_69:                               # %fail
	movq	%rbx, %rdi
	callq	x264_free@PLT
	xorl	%ebx, %ebx
.LBB0_117:                              # %cleanup869
	movq	%rbx, %rax
	addq	$1032, %rsp                     # imm = 0x408
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB0_20:                               # %if.then110
	.cfi_def_cfa_offset 1088
	movl	100(%rbx), %edi
	cmpl	$4, %edi
	movl	$3, %ebp
	cmovgel	%edi, %ebp
	shll	$2, %ebp
	movl	552(%rbx), %esi
	testl	%esi, %esi
	je	.LBB0_23
.LBB0_24:                               # %if.then134
	movl	556(%rbx), %eax
	cmpl	%eax, %ebp
	cmovlel	%eax, %ebp
.LBB0_25:                               # %if.end152
	movl	1852(%rbx), %eax
	addl	%ebp, %eax
	movl	16(%rbx), %r8d
	addl	%r8d, %eax
	decl	%eax
	xorl	%r8d, %r8d
	cmpl	$0, 648(%rbx)
	je	.LBB0_26
# %bb.27:                               # %land.rhs
	movb	$1, %r9b
	cmpl	$2, 488(%rbx)
	je	.LBB0_30
# %bb.28:                               # %lor.lhs.false167
	cmpl	$0, 560(%rbx)
	jne	.LBB0_30
# %bb.29:                               # %lor.rhs
	cmpl	$0, 528(%rbx)
	setne	%r9b
	jmp	.LBB0_30
.LBB0_26:
	xorl	%r9d, %r9d
.LBB0_30:                               # %land.end
	movzbl	%r9b, %r9d
	addl	%r9d, %eax
	movl	%eax, 14612(%rbx)
	testl	%edi, %edi
	je	.LBB0_32
# %bb.31:                               # %cond.true181
	cmpl	$1, 112(%rbx)
	movl	$2, %r8d
	sbbl	$0, %r8d
.LBB0_32:                               # %cond.end187
	movl	%r8d, 14616(%rbx)
	movl	80(%rbx), %edi
	movl	%edi, 14604(%rbx)
	movl	1288(%rdx), %r8d
	cmpl	%edi, %r8d
	cmovll	%r8d, %edi
	movl	%edi, 14608(%rbx)
	movl	1292(%rdx), %edx
	movl	%edx, 14600(%rbx)
	cmpl	$0, 576(%rbx)
	je	.LBB0_33
# %bb.37:                               # %land.rhs250
	cmpl	$0, 528(%rbx)
	setg	%dl
	xorl	%ecx, %ecx
	jmp	.LBB0_38
.LBB0_33:                               # %land.rhs214
	movl	488(%rbx), %edx
	addl	$-3, %edx
	cmpl	$-2, %edx
	setae	%dl
	testl	%ecx, %ecx
	setne	%dil
	movb	$1, %cl
	orb	%dl, %dil
	jne	.LBB0_36
# %bb.34:                               # %lor.lhs.false230
	orl	92(%rbx), %esi
	jne	.LBB0_36
# %bb.35:                               # %lor.rhs238
	cmpl	$2, 396(%rbx)
	sete	%cl
.LBB0_36:                               # %land.end243.thread
	movzbl	%cl, %ecx
	xorl	%edx, %edx
.LBB0_38:                               # %land.end256
	movzbl	%dl, %edx
	orl	%ecx, %edx
	movl	%edx, 14672(%rbx)
	movl	388(%rbx), %ecx
	shrl	$5, %ecx
	andl	$1, %ecx
	movl	%ecx, 14676(%rbx)
	xorl	%ecx, %ecx
	subl	84(%rbx), %ecx
	movl	%ecx, 14592(%rbx)
	movl	$0, 14596(%rbx)
	leal	24(,%rax,8), %edi
	pcmpeqd	%xmm0, %xmm0
	movdqa	%xmm0, 14656(%rbx)
	callq	x264_malloc@PLT
	movq	%rax, 14424(%rbx)
	testq	%rax, %rax
	je	.LBB0_69
# %bb.39:                               # %do.end289
	movslq	14612(%rbx), %rcx
	leaq	24(,%rcx,8), %rdx
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	movl	1852(%rbx), %eax
	leal	160(,%rax,8), %edi
	callq	x264_malloc@PLT
	movq	%rax, 14432(%rbx)
	testq	%rax, %rax
	je	.LBB0_69
# %bb.40:                               # %do.end318
	movslq	1852(%rbx), %rcx
	leaq	160(,%rcx,8), %rdx
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	movl	100(%rbx), %eax
	addl	16(%rbx), %eax
	addl	1852(%rbx), %eax
	leal	24(,%rax,8), %edi
	callq	x264_malloc@PLT
	movq	%rax, 14416(%rbx)
	testq	%rax, %rax
	je	.LBB0_69
# %bb.41:                               # %do.end349
	movl	16(%rbx), %ecx
	addl	100(%rbx), %ecx
	movl	1852(%rbx), %edx
	addl	%edx, %ecx
	addl	$3, %ecx
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	cmpl	$0, 396(%rbx)
	jle	.LBB0_44
# %bb.42:                               # %do.body371
	movl	1852(%rbx), %edi
	shll	$5, %edi
	callq	x264_malloc@PLT
	movq	%rax, 14440(%rbx)
	testq	%rax, %rax
	je	.LBB0_69
# %bb.43:                               # %do.end385
	movslq	1852(%rbx), %rdx
	shlq	$5, %rdx
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
.LBB0_44:                               # %if.end394
	movl	$0, 14696(%rbx)
	movl	$0, 14856(%rbx)
	movl	$0, 1880(%rbx)
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = [0,4294967295,0,0]
	movups	%xmm0, 1864(%rbx)
	callq	x264_rdo_init@PLT
	movl	(%rbx), %edi
	leaq	31248(%rbx), %rsi
	callq	x264_predict_16x16_init@PLT
	movl	(%rbx), %edi
	leaq	31304(%rbx), %rsi
	callq	x264_predict_8x8c_init@PLT
	movl	(%rbx), %edi
	leaq	31360(%rbx), %rsi
	leaq	31552(%rbx), %rdx
	callq	x264_predict_8x8_init@PLT
	movl	(%rbx), %edi
	leaq	31456(%rbx), %rsi
	callq	x264_predict_4x4_init@PLT
	cmpl	$0, 128(%rbx)
	jne	.LBB0_46
# %bb.45:                               # %if.then407
	xorl	%eax, %eax
	callq	x264_init_vlc_tables@PLT
.LBB0_46:                               # %if.end408
	movl	(%rbx), %edi
	leaq	31560(%rbx), %rsi
	callq	x264_pixel_init@PLT
	movl	(%rbx), %edi
	leaq	32912(%rbx), %rsi
	callq	x264_dct_init@PLT
	leaq	33032(%rbx), %rsi
	movl	(%rbx), %edi
	movl	136(%rbx), %edx
	callq	x264_zigzag_init@PLT
	movl	(%rbx), %edi
	leaq	32616(%rbx), %rsi
	callq	x264_mc_init@PLT
	movl	(%rbx), %esi
	leaq	33080(%rbx), %rdx
	movq	%rbx, %rdi
	callq	x264_quant_init@PLT
	movl	(%rbx), %edi
	movq	%rbx, %rsi
	addq	$33256, %rsi                    # imm = 0x81E8
	callq	x264_deblock_init@PLT
	callq	x264_dct_init_weights@PLT
	movq	%rbx, %rdi
	callq	mbcmp_init
	movabsq	$16452428047346028, %rax        # imm = 0x3A73656974696C
	movq	%rax, 48(%rsp)
	movdqu	.L.str.2(%rip), %xmm0
	movdqa	%xmm0, 32(%rsp)
	leaq	55(%rsp), %rcx
	movq	x264_cpu_names@GOTPCREL(%rip), %rax
	movl	16(%rax), %r13d
	movl	(%rbx), %r12d
	testl	%r13d, %r13d
	je	.LBB0_60
# %bb.47:                               # %for.body.preheader
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	x264_cpu_names@GOTPCREL(%rip), %r15
	movl	$.L.str.3, %esi
	movq	%r15, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	setne	%al
	testl	$384, %r12d                     # imm = 0x180
	sete	%cl
	orb	%al, %cl
	cmpb	$1, %cl
	jne	.LBB0_51
# %bb.48:                               # %if.end440.peel
	movq	x264_cpu_names@GOTPCREL(%rip), %rdi
	movl	$.L.str.4, %esi
	callq	strcmp@PLT
	testl	%eax, %eax
	setne	%al
	movl	%r12d, %ecx
	andl	$1026, %ecx                     # imm = 0x402
	cmpl	$2, %ecx
	sete	%cl
	orb	%al, %cl
	cmpb	$1, %cl
	jne	.LBB0_51
# %bb.49:                               # %if.end458.peel
	movq	x264_cpu_names@GOTPCREL(%rip), %rdi
	movl	$.L.str.5, %esi
	callq	strcmp@PLT
	testl	%eax, %eax
	setne	%al
	testl	$16384, %r12d                   # imm = 0x4000
	sete	%cl
	orb	%al, %cl
	notl	%r12d
	testl	%r12d, %r13d
	sete	%al
	andb	%cl, %al
	cmpb	$1, %al
	jne	.LBB0_51
# %bb.50:                               # %if.then495.peel
	movq	x264_cpu_names@GOTPCREL(%rip), %rdx
	movl	$.L.str.6, %esi
	leaq	55(%rsp), %r14
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	cltq
	addq	%rax, %r14
	movq	%r14, 16(%rsp)                  # 8-byte Spill
.LBB0_51:                               # %for.inc.peel
	movl	36(%r15), %r13d
	testl	%r13d, %r13d
	je	.LBB0_59
# %bb.52:                               # %for.body.preheader4
	addq	$56, %r15
	jmp	.LBB0_53
	.p2align	4, 0x90
.LBB0_58:                               # %for.inc
                                        #   in Loop: Header=BB0_53 Depth=1
	movl	(%r15), %r13d
	addq	$20, %r15
	testl	%r13d, %r13d
	je	.LBB0_59
.LBB0_53:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	-36(%r15), %r12
	movl	$.L.str.3, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	setne	%al
	movl	(%rbx), %r14d
	testl	$384, %r14d                     # imm = 0x180
	sete	%cl
	orb	%al, %cl
	cmpb	$1, %cl
	jne	.LBB0_58
# %bb.54:                               # %if.end440
                                        #   in Loop: Header=BB0_53 Depth=1
	movl	$.L.str.4, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	setne	%al
	movl	%r14d, %ecx
	andl	$1026, %ecx                     # imm = 0x402
	cmpl	$2, %ecx
	sete	%cl
	orb	%al, %cl
	cmpb	$1, %cl
	jne	.LBB0_58
# %bb.55:                               # %if.end458
                                        #   in Loop: Header=BB0_53 Depth=1
	movl	$.L.str.5, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	setne	%al
	testl	$16384, %r14d                   # imm = 0x4000
	sete	%cl
	orb	%al, %cl
	notl	%r14d
	testl	%r14d, %r13d
	sete	%al
	andb	%cl, %al
	cmpb	$1, %al
	jne	.LBB0_58
# %bb.56:                               # %lor.lhs.false485
                                        #   in Loop: Header=BB0_53 Depth=1
	cmpl	-40(%r15), %r13d
	je	.LBB0_58
# %bb.57:                               # %if.then495
                                        #   in Loop: Header=BB0_53 Depth=1
	movl	$.L.str.6, %esi
	movq	16(%rsp), %r14                  # 8-byte Reload
	movq	%r14, %rdi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	sprintf@PLT
	cltq
	addq	%rax, %r14
	movq	%r14, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB0_58
.LBB0_59:                               # %for.cond.cleanup.loopexit
	movl	(%rbx), %r12d
	movq	16(%rsp), %rcx                  # 8-byte Reload
.LBB0_60:                               # %for.cond.cleanup
	testl	%r12d, %r12d
	jne	.LBB0_62
# %bb.61:                               # %if.then507
	movl	$2188654, 3(%rcx)               # imm = 0x21656E
	movl	$1852796448, (%rcx)             # imm = 0x6E6F6E20
.LBB0_62:                               # %if.end511
	leaq	32(%rsp), %rcx
	movl	$.L.str.8, %edx
	movq	%rbx, %rdi
	movl	$2, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movl	496(%rbx), %r14d
	cmpl	500(%rbx), %r14d
	jg	.LBB0_63
.LBB0_68:                               # %for.body520
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	x264_analyse_init_costs@PLT
	testl	%eax, %eax
	jne	.LBB0_69
# %bb.67:                               # %for.cond515
                                        #   in Loop: Header=BB0_68 Depth=1
	leal	1(%r14), %eax
	cmpl	500(%rbx), %r14d
	movl	%eax, %r14d
	jl	.LBB0_68
.LBB0_63:                               # %for.end527
	movq	%rbx, %rdi
	movl	$12, %esi
	callq	x264_analyse_init_costs@PLT
	testl	%eax, %eax
	jne	.LBB0_69
# %bb.64:                               # %if.end531
	movq	3544(%rbx), %rax
	cmpw	$24, 4026(%rax)
	jne	.LBB0_65
# %bb.70:                               # %if.end538
	movl	$392, 28(%rsp)                  # imm = 0x188
	movl	$-256, %eax
	andl	28(%rsp), %eax
	cmpl	$256, %eax                      # imm = 0x100
	jne	.LBB0_71
# %bb.72:                               # %if.end542
	movl	$0, 1760(%rbx)
	movl	20(%rbx), %eax
	imull	24(%rbx), %eax
	shll	$2, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, 16(%rsp)                 # 8-byte Spill
	cmpl	$2, 488(%rbx)
	jne	.LBB0_74
# %bb.73:                               # %cond.true553
	cvtsi2sdl	496(%rbx), %xmm1
	movsd	.LCPI0_1(%rip), %xmm0           # xmm0 = [9.4999999999999996E-1,0.0E+0]
	callq	pow@PLT
	jmp	.LBB0_75
.LBB0_65:                               # %if.then537
	movl	$.L.str.9, %edx
	jmp	.LBB0_66
.LBB0_71:                               # %if.then541
	movl	$.L.str.10, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movl	$.L.str.11, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movl	$.L.str.12, %edx
.LBB0_66:                               # %fail
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	jmp	.LBB0_69
.LBB0_74:                               # %cond.false559
	cvtsi2sdl	492(%rbx), %xmm1
	movsd	.LCPI0_1(%rip), %xmm0           # xmm0 = [9.4999999999999996E-1,0.0E+0]
	callq	pow@PLT
	movapd	%xmm0, %xmm1
	movss	.LCPI0_2(%rip), %xmm0           # xmm0 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	maxss	536(%rbx), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
.LBB0_75:                               # %cond.end577
	mulsd	16(%rsp), %xmm0                 # 8-byte Folded Reload
	movl	$1000000, %eax                  # imm = 0xF4240
	movsd	.LCPI0_3(%rip), %xmm1           # xmm1 = [1.0E+6,0.0E+0]
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_80
# %bb.76:                               # %cond.false583
	movl	20(%rbx), %eax
	imull	24(%rbx), %eax
	shll	$2, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, 16(%rsp)                 # 8-byte Spill
	cmpl	$2, 488(%rbx)
	jne	.LBB0_78
# %bb.77:                               # %cond.true596
	xorps	%xmm1, %xmm1
	cvtsi2sdl	496(%rbx), %xmm1
	movsd	.LCPI0_1(%rip), %xmm0           # xmm0 = [9.4999999999999996E-1,0.0E+0]
	callq	pow@PLT
	jmp	.LBB0_79
.LBB0_78:                               # %cond.false602
	xorps	%xmm1, %xmm1
	cvtsi2sdl	492(%rbx), %xmm1
	movsd	.LCPI0_1(%rip), %xmm0           # xmm0 = [9.4999999999999996E-1,0.0E+0]
	callq	pow@PLT
	movapd	%xmm0, %xmm1
	movss	.LCPI0_2(%rip), %xmm0           # xmm0 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	maxss	536(%rbx), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
.LBB0_79:                               # %cond.end622
	mulsd	16(%rsp), %xmm0                 # 8-byte Folded Reload
	cvttsd2si	%xmm0, %eax
.LBB0_80:                               # %cond.end625
	movl	%eax, 1776(%rbx)
	leal	(%rax,%rax,2), %eax
	movl	%eax, %edi
	shrl	$31, %edi
	addl	%eax, %edi
	sarl	%edi
	addl	$4, %edi
	callq	x264_malloc@PLT
	movq	%rax, 1832(%rbx)
	testq	%rax, %rax
	je	.LBB0_69
# %bb.81:                               # %do.end640
	movl	1776(%rbx), %eax
	leal	(%rax,%rax,2), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	addl	$4, %ecx
	movl	%ecx, 1840(%rbx)
	movq	%rbx, 704(%rbx)
	cmpl	$1, 16(%rbx)
	movl	4(%rbx), %eax
	sbbl	$-1, %eax
	cmpl	$2, %eax
	jl	.LBB0_85
# %bb.82:                               # %do.body662.preheader
	movl	$89, %r14d
.LBB0_84:                               # %do.body662
                                        # =>This Inner Loop Header: Depth=1
	movl	$33344, %edi                    # imm = 0x8240
	callq	x264_malloc@PLT
	movq	%rax, (%rbx,%r14,8)
	testq	%rax, %rax
	je	.LBB0_69
# %bb.83:                               # %for.cond648
                                        #   in Loop: Header=BB0_84 Depth=1
	movslq	4(%rbx), %rax
	cmpl	$1, 16(%rbx)
	sbbq	$-1, %rax
	leaq	1(%r14), %rcx
	addq	$-87, %r14
	cmpq	%rax, %r14
	movq	%rcx, %r14
	jl	.LBB0_84
.LBB0_85:                               # %for.end677
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	x264_lookahead_init@PLT
	testl	%eax, %eax
	jne	.LBB0_69
# %bb.86:                               # %for.cond683.preheader
	cmpl	$0, 4(%rbx)
	jle	.LBB0_105
# %bb.87:                               # %if.then707.peel
	movl	692(%rbx), %r14d
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	x264_frame_pop_unused@PLT
	movq	704(%rbx), %rcx
	movq	%rax, 14688(%rcx)
	movq	704(%rbx), %rax
	cmpq	$0, 14688(%rax)
	je	.LBB0_69
# %bb.88:                               # %do.body728.peel
	movl	1776(%rbx), %edi
	callq	x264_malloc@PLT
	movq	704(%rbx), %rcx
	movq	%rax, 1784(%rcx)
	movq	704(%rbx), %rax
	cmpq	$0, 1784(%rax)
	je	.LBB0_69
# %bb.89:                               # %do.body746.peel
	addl	$3, %r14d
	leal	(,%r14,8), %eax
	leal	(%rax,%rax,2), %edi
	callq	x264_malloc@PLT
	movq	704(%rbx), %rcx
	movq	%rax, 1768(%rcx)
	movq	704(%rbx), %rax
	cmpq	$0, 1768(%rax)
	je	.LBB0_69
# %bb.90:                               # %land.lhs.true770.peel
	movl	%r14d, 1764(%rax)
	movq	704(%rbx), %rdi
	callq	x264_macroblock_cache_allocate@PLT
	testl	%eax, %eax
	js	.LBB0_69
# %bb.91:                               # %for.inc782.peel
	movl	4(%rbx), %eax
	cmpl	$2, %eax
	jl	.LBB0_95
# %bb.92:                               # %if.end705.preheader
	movl	$89, %r14d
	jmp	.LBB0_93
.LBB0_102:                              # %for.inc782
                                        #   in Loop: Header=BB0_93 Depth=1
	movslq	4(%rbx), %rax
	leaq	1(%r14), %rcx
	addq	$-87, %r14
	cmpq	%rax, %r14
	movq	%rcx, %r14
	jge	.LBB0_95
.LBB0_93:                               # %if.end705
                                        # =>This Inner Loop Header: Depth=1
	movl	692(%rbx), %r15d
	movl	8(%rbx), %ebp
	movq	(%rbx,%r14,8), %rdi
	movl	$33344, %edx                    # imm = 0x8240
	movq	%rbx, %rsi
	callq	memcpy@PLT
	testl	%ebp, %ebp
	je	.LBB0_94
# %bb.97:                               # %if.else719
                                        #   in Loop: Header=BB0_93 Depth=1
	movq	704(%rbx), %rax
	movq	14688(%rax), %rax
	movq	(%rbx,%r14,8), %rcx
	movq	%rax, 14688(%rcx)
	jmp	.LBB0_98
.LBB0_94:                               # %if.then707
                                        #   in Loop: Header=BB0_93 Depth=1
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	x264_frame_pop_unused@PLT
	movq	(%rbx,%r14,8), %rcx
	movq	%rax, 14688(%rcx)
	movq	(%rbx,%r14,8), %rax
	cmpq	$0, 14688(%rax)
	je	.LBB0_69
.LBB0_98:                               # %do.body728
                                        #   in Loop: Header=BB0_93 Depth=1
	movl	1776(%rbx), %edi
	callq	x264_malloc@PLT
	movq	(%rbx,%r14,8), %rcx
	movq	%rax, 1784(%rcx)
	movq	(%rbx,%r14,8), %rax
	cmpq	$0, 1784(%rax)
	je	.LBB0_69
# %bb.99:                               # %do.body746
                                        #   in Loop: Header=BB0_93 Depth=1
	addl	$3, %r15d
	leal	(,%r15,8), %eax
	leal	(%rax,%rax,2), %edi
	callq	x264_malloc@PLT
	movq	(%rbx,%r14,8), %rcx
	movq	%rax, 1768(%rcx)
	movq	(%rbx,%r14,8), %rax
	cmpq	$0, 1768(%rax)
	je	.LBB0_69
# %bb.100:                              # %do.end764
                                        #   in Loop: Header=BB0_93 Depth=1
	movl	%r15d, 1764(%rax)
	testl	%ebp, %ebp
	jne	.LBB0_102
# %bb.101:                              # %land.lhs.true770
                                        #   in Loop: Header=BB0_93 Depth=1
	movq	(%rbx,%r14,8), %rdi
	callq	x264_macroblock_cache_allocate@PLT
	testl	%eax, %eax
	jns	.LBB0_102
	jmp	.LBB0_69
.LBB0_95:                               # %for.cond788.preheader
	testl	%eax, %eax
	jle	.LBB0_105
# %bb.96:                               # %for.body794.preheader
	xorl	%r14d, %r14d
.LBB0_104:                              # %for.body794
                                        # =>This Inner Loop Header: Depth=1
	movq	704(%rbx,%r14,8), %rdi
	xorl	%esi, %esi
	callq	x264_macroblock_thread_allocate@PLT
	testl	%eax, %eax
	js	.LBB0_69
# %bb.103:                              # %for.cond788
                                        #   in Loop: Header=BB0_104 Depth=1
	incq	%r14
	movslq	4(%rbx), %rax
	cmpq	%rax, %r14
	jl	.LBB0_104
.LBB0_105:                              # %for.end807
	movq	%rbx, %rdi
	callq	x264_ratecontrol_new@PLT
	testl	%eax, %eax
	js	.LBB0_69
# %bb.106:                              # %if.end812
	cmpl	$0, 40(%rbx)
	je	.LBB0_108
# %bb.107:                              # %if.then815
	movq	3200(%rbx), %rax
	movl	1232(%rax), %ecx
	movl	$.L.str.13, %edx
	movq	%rbx, %rdi
	movl	$3, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movq	3200(%rbx), %rax
	movl	1236(%rax), %ecx
	movl	$.L.str.14, %edx
	movq	%rbx, %rdi
	movl	$3, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
.LBB0_108:                              # %if.end821
	movq	376(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB0_111
# %bb.109:                              # %if.then824
	movl	$.L.str.15, %esi
	callq	fopen@PLT
	testq	%rax, %rax
	je	.LBB0_118
# %bb.110:                              # %cleanup841.thread
	movq	%rax, %rdi
	callq	fclose@PLT
.LBB0_111:                              # %if.end844
	movq	3200(%rbx), %rax
	movl	4(%rax), %ecx
	cmpl	$66, %ecx
	je	.LBB0_112
# %bb.113:                              # %if.end844
	cmpl	$77, %ecx
	jne	.LBB0_114
# %bb.115:                              # %cond.end863.fold.split
	movl	$.L.str.20, %ecx
	jmp	.LBB0_116
.LBB0_112:
	movl	$.L.str.19, %ecx
	jmp	.LBB0_116
.LBB0_114:                              # %cond.false855
	cmpl	$100, %ecx
	movl	$.L.str.21, %edx
	movl	$.L.str.22, %ecx
	cmoveq	%rdx, %rcx
.LBB0_116:                              # %cond.end863
	movslq	8(%rax), %r9
	imulq	$1717986919, %r9, %r8           # imm = 0x66666667
	movq	%r8, %rax
	shrq	$63, %rax
	sarq	$34, %r8
	addl	%eax, %r8d
	leal	(%r8,%r8), %eax
	leal	(%rax,%rax,4), %eax
	subl	%eax, %r9d
	movl	$.L.str.18, %edx
	movq	%rbx, %rdi
	movl	$2, %esi
                                        # kill: def $r8d killed $r8d killed $r8
                                        # kill: def $r9d killed $r9d killed $r9
	xorl	%eax, %eax
	callq	x264_log@PLT
	jmp	.LBB0_117
.LBB0_118:                              # %cleanup841
	movq	376(%rbx), %rcx
	movl	$.L.str.16, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	jmp	.LBB0_16
.Lfunc_end0:
	.size	x264_encoder_open_96, .Lfunc_end0-x264_encoder_open_96
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function x264_validate_parameters
.LCPI1_0:
	.long	0x3f000000                      # float 0.5
.LCPI1_4:
	.long	0x424c0000                      # float 51
.LCPI1_6:
	.long	0x3f800000                      # float 1
.LCPI1_9:
	.long	0x41c80000                      # float 25
.LCPI1_14:
	.long	0x3e800000                      # float 0.25
.LCPI1_17:
	.long	0x40400000                      # float 3
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_1:
	.quad	0xbff4000000000000              # double -1.25
	.quad	0xbff4000000000000              # double -1.25
.LCPI1_2:
	.quad	0x7fffffffffffffff              # double NaN
	.quad	0x7fffffffffffffff              # double NaN
.LCPI1_3:
	.quad	0x3f847ae147ae147b              # double 0.01
	.quad	0x3f847ae147ae147b              # double 0.01
.LCPI1_5:
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.zero	4
	.zero	4
.LCPI1_7:
	.long	0xc0c00000                      # float -6
	.long	0x40c00000                      # float 6
	.zero	4
	.zero	4
.LCPI1_10:
	.long	6                               # 0x6
	.long	6                               # 0x6
	.zero	4
	.zero	4
.LCPI1_11:
	.long	4294967290                      # 0xfffffffa
	.long	4294967290                      # 0xfffffffa
	.zero	4
	.zero	4
.LCPI1_12:
	.long	32                              # 0x20
	.long	32                              # 0x20
	.zero	4
	.zero	4
.LCPI1_13:
	.long	0x41200000                      # float 10
	.long	0x41200000                      # float 10
	.zero	4
	.zero	4
.LCPI1_15:
	.long	0x43800000                      # float 256
	.long	0x43800000                      # float 256
	.zero	4
	.zero	4
.LCPI1_16:
	.quad	0x3fe0000000000000              # double 0.5
	.quad	0x3fe0000000000000              # double 0.5
.LCPI1_18:
	.long	1                               # 0x1
	.long	1                               # 0x1
	.zero	4
	.zero	4
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_8:
	.quad	0x3feff7ced916872b              # double 0.99899999999999999
	.text
	.p2align	4, 0x90
	.type	x264_validate_parameters,@function
x264_validate_parameters:               # @x264_validate_parameters
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	20(%rdi), %ecx
	movl	24(%rdi), %r8d
	testl	%ecx, %ecx
	setle	%al
	testl	%r8d, %r8d
	setle	%dl
	orb	%al, %dl
	cmpb	$1, %dl
	jne	.LBB1_2
# %bb.1:                                # %if.then
	movl	$.L.str.50, %edx
	jmp	.LBB1_13
.LBB1_2:                                # %if.end
	movl	%r8d, %eax
	orl	%ecx, %eax
	testb	$1, %al
	jne	.LBB1_12
# %bb.3:                                # %if.end19
	movzbl	28(%rdi), %eax
	cmpl	$1, %eax
	je	.LBB1_5
# %bb.4:                                # %if.end19
	cmpl	$4, %eax
	jne	.LBB1_24
.LBB1_5:                                # %if.end25
	movl	4(%rdi), %eax
	testl	%eax, %eax
	movq	%rdi, %rbx
	jne	.LBB1_7
# %bb.6:                                # %if.then28
	callq	x264_cpu_num_processors@PLT
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	cmpl	$1, 8(%rbx)
	adcl	$2, %ecx
	imull	%eax, %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	sarl	%eax
.LBB1_7:                                # %if.end33
	cmpl	$128, %eax
	movl	$128, %ecx
	cmovll	%eax, %ecx
	cmpl	$2, %ecx
	movl	$1, %ebp
	cmovll	%ebp, %ecx
	movl	%ecx, 4(%rdi)
	cmpl	$2, %eax
	jl	.LBB1_14
# %bb.8:                                # %if.then42
	movl	$.L.str.53, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movq	%rbx, %rdi
	movl	$1, 4(%rbx)
	cmpl	$0, 8(%rbx)
	je	.LBB1_15
# %bb.9:                                # %if.then48
	movl	24(%rdi), %eax
	movl	$1, %ebp
	movl	$1, %ecx
	cmpl	$112, %eax
	jg	.LBB1_11
# %bb.10:                               # %cond.false
	leal	15(%rax), %ecx
	addl	$78, %eax
	testl	%ecx, %ecx
	cmovnsl	%ecx, %eax
	sarl	$6, %eax
	movl	%eax, %ecx
.LBB1_11:                               # %if.end64
	movl	%ecx, 4(%rdi)
	jmp	.LBB1_15
.LBB1_12:                               # %if.then14
	movl	$.L.str.51, %edx
.LBB1_13:                               # %return
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	jmp	.LBB1_28
.LBB1_14:                               # %if.else
	movl	$0, 8(%rdi)
	movl	%ecx, %ebp
.LBB1_15:                               # %cond.end72
	movl	%ebp, 1852(%rdi)
	cmpl	$0, 136(%rdi)
	je	.LBB1_20
# %bb.16:                               # %if.then76
	cmpl	$3, 412(%rdi)
	jl	.LBB1_18
# %bb.17:                               # %if.then79
	movl	$.L.str.54, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movq	%rbx, %rdi
	movl	$2, 412(%rbx)
.LBB1_18:                               # %if.end83
	cmpl	$0, 396(%rdi)
	jle	.LBB1_20
# %bb.19:                               # %if.then87
	movl	$.L.str.55, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movq	%rbx, %rdi
	movl	$0, 396(%rbx)
.LBB1_20:                               # %if.end92
	xorl	%eax, %eax
	cmpl	$3, 504(%rdi)
	sete	%al
	xorl	%esi, %esi
	cmpl	$12, 84(%rdi)
	sete	%sil
	cmpl	$1, 416(%rdi)
	adcl	%eax, %esi
	movl	496(%rdi), %eax
	xorl	%r8d, %r8d
	cmpl	$2, %eax
	sete	%r8b
	movl	500(%rdi), %ecx
	xorl	%edx, %edx
	cmpl	$31, %ecx
	sete	%dl
	addl	%r8d, %edx
	addl	%esi, %edx
	movss	.LCPI1_0(%rip), %xmm0           # xmm0 = [5.0E-1,0.0E+0,0.0E+0,0.0E+0]
	cmpeqss	592(%rdi), %xmm0
	movd	%xmm0, %esi
	movsd	536(%rdi), %xmm0                # xmm0 = mem[0],zero
	cvtps2pd	%xmm0, %xmm1
	addpd	.LCPI1_1(%rip), %xmm1
	andpd	.LCPI1_2(%rip), %xmm1
	subl	%esi, %edx
	cmpltpd	.LCPI1_3(%rip), %xmm1
	movmskpd	%xmm1, %esi
	movl	%esi, %r8d
	shrb	%r8b
	andl	$1, %esi
	addl	%edx, %esi
	movzbl	%r8b, %edx
	addl	%esi, %edx
	cmpl	$0, 388(%rdi)
	je	.LBB1_25
# %bb.21:
	xorl	%esi, %esi
	movzbl	%sil, %esi
	addl	%esi, %edx
	cmpl	$5, %edx
	jae	.LBB1_26
.LBB1_22:                               # %cleanup.cont
	movl	488(%rdi), %esi
	cmpl	$3, %esi
	jb	.LBB1_30
# %bb.23:                               # %if.then157
	movl	$.L.str.58, %edx
	jmp	.LBB1_27
.LBB1_24:                               # %if.then24
	movl	$.L.str.52, %edx
	jmp	.LBB1_27
.LBB1_25:                               # %land.rhs
	cmpl	$8, 428(%rdi)
	sete	%sil
	movzbl	%sil, %esi
	addl	%esi, %edx
	cmpl	$5, %edx
	jb	.LBB1_22
.LBB1_26:                               # %if.then145
	movl	$.L.str.56, %edx
	movq	%rdi, %rbx
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movl	$.L.str.57, %edx
	movq	%rbx, %rdi
.LBB1_27:                               # %return
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
.LBB1_28:                               # %return
	movl	$-1, %eax
.LBB1_29:                               # %return
	addq	$32, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB1_30:                               # %if.end158
	.cfi_def_cfa_offset 80
	movss	512(%rdi), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI1_4(%rip), %xmm2           # xmm2 = [5.1E+1,0.0E+0,0.0E+0,0.0E+0]
	minss	%xmm1, %xmm2
	xorps	%xmm3, %xmm3
	cmpltss	%xmm3, %xmm1
	andnps	%xmm2, %xmm1
	movss	%xmm1, 512(%rdi)
	movl	492(%rdi), %edx
	cmpl	$51, %edx
	movl	$51, %ebp
	cmovgel	%ebp, %edx
	xorl	%r14d, %r14d
	testl	%edx, %edx
	cmovlel	%r14d, %edx
	movl	%edx, 492(%rdi)
	cmpl	$2, %esi
	je	.LBB1_38
# %bb.31:                               # %if.end158
	cmpl	$1, %esi
	jne	.LBB1_33
# %bb.32:                               # %if.end188.thread
	cvttss2si	%xmm1, %edx
	movl	%edx, 492(%rdi)
	movl	$0, 508(%rdi)
.LBB1_33:                               # %land.lhs.true200
	testl	%edx, %edx
	je	.LBB1_35
# %bb.34:                               # %if.end239
	testl	%esi, %esi
	jne	.LBB1_38
	jmp	.LBB1_37
.LBB1_35:                               # %if.then206
	movl	$1, 25812(%rdi)
	movl	$0, 144(%rdi)
	movq	$0, 152(%rdi)
	movl	$0, 488(%rdi)
	movsd	.LCPI1_5(%rip), %xmm0           # xmm0 = [1.0E+0,1.0E+0,0.0E+0,0.0E+0]
	movsd	%xmm0, 536(%rdi)
	movq	$0, 476(%rdi)
	movl	$0, 408(%rdi)
	movq	$0, 440(%rdi)
	movl	$0, 452(%rdi)
	movl	$0, 464(%rdi)
	movl	$0, 100(%rdi)
	movss	.LCPI1_6(%rip), %xmm0           # xmm0 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	xorl	%edx, %edx
	cmpl	$0, 128(%rdi)
	jne	.LBB1_37
# %bb.36:                               # %if.then235
	movl	$0, 392(%rdi)
.LBB1_37:                               # %if.then245
	xorps	%xmm1, %xmm1
	cvtsi2ss	%edx, %xmm1
	movaps	%xmm1, 16(%rsp)                 # 16-byte Spill
	callq	log2f@PLT
	movapd	%xmm0, (%rsp)                   # 16-byte Spill
	movss	540(%rbx), %xmm0                # xmm0 = mem[0],zero,zero,zero
	callq	log2f@PLT
	movq	%rbx, %rdi
	movaps	(%rsp), %xmm2                   # 16-byte Reload
	unpcklps	%xmm0, %xmm2                    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	movaps	16(%rsp), %xmm3                 # 16-byte Reload
	movaps	%xmm3, %xmm0
	shufps	$0, %xmm3, %xmm0                # xmm0 = xmm0[0,0],xmm3[0,0]
	mulps	.LCPI1_7(%rip), %xmm2
	addps	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	shufps	$85, %xmm2, %xmm0               # xmm0 = xmm0[1,1],xmm2[1,1]
	movaps	%xmm2, %xmm1
	movaps	%xmm2, %xmm4
	minss	%xmm0, %xmm1
	movaps	%xmm3, %xmm2
	minss	%xmm1, %xmm2
	cvttss2si	%xmm2, %eax
	cmpl	$51, %eax
	movl	$51, %ecx
	cmovgel	%ecx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovlel	%edx, %eax
	maxss	%xmm0, %xmm4
	movaps	%xmm3, %xmm0
	maxss	%xmm4, %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI1_8(%rip), %xmm0
	cvttsd2si	%xmm0, %esi
	cmpl	$51, %esi
	cmovll	%esi, %ecx
	testl	%ecx, %ecx
	cmovlel	%edx, %ecx
	movl	$0, 544(%rbx)
	movl	$0, 552(%rbx)
.LBB1_38:                               # %if.end312
	cmpl	$51, %ecx
	cmovll	%ecx, %ebp
	testl	%ebp, %ebp
	cmovlel	%r14d, %ebp
	movl	%ebp, 500(%rdi)
	cmpl	%ebp, %eax
	cmovll	%eax, %ebp
	testl	%eax, %eax
	cmovsl	%r14d, %ebp
	movl	%ebp, 496(%rdi)
	cmpl	$0, 528(%rdi)
	je	.LBB1_44
# %bb.39:                               # %if.then333
	movl	488(%rdi), %eax
	testl	%eax, %eax
	je	.LBB1_46
# %bb.40:                               # %if.else345
	movl	524(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB1_47
# %bb.41:                               # %if.else369
	cmpl	$2, %eax
	jne	.LBB1_51
# %bb.42:                               # %if.else369
	cmpl	508(%rdi), %ecx
	jge	.LBB1_51
# %bb.43:                               # %if.then384
	movl	$.L.str.62, %edx
	jmp	.LBB1_49
.LBB1_44:                               # %if.else394
	cmpl	$0, 524(%rdi)
	je	.LBB1_51
# %bb.45:                               # %if.then399
	movl	$.L.str.63, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movq	%rbx, %rdi
	movl	$0, 524(%rbx)
	jmp	.LBB1_51
.LBB1_46:                               # %if.then339
	movl	$.L.str.59, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movq	%rbx, %rdi
	movq	$0, 524(%rbx)
	jmp	.LBB1_51
.LBB1_47:                               # %if.then351
	cmpl	$2, %eax
	jne	.LBB1_50
# %bb.48:                               # %if.then357
	movl	$.L.str.60, %edx
.LBB1_49:                               # %if.end404
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movq	%rbx, %rdi
	movl	508(%rbx), %eax
	movl	%eax, 524(%rbx)
	jmp	.LBB1_51
.LBB1_50:                               # %if.else364
	movl	$.L.str.61, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movq	%rbx, %rdi
	movl	$0, 528(%rbx)
.LBB1_51:                               # %if.end404
	movl	136(%rdi), %eax
	testl	%eax, %eax
	je	.LBB1_56
# %bb.52:                               # %land.lhs.true408
	cmpl	$0, 684(%rdi)
	je	.LBB1_54
# %bb.53:                               # %if.end414
	xorl	%ebp, %ebp
	movl	$.L.str.64, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movq	%rbx, %rdi
	movl	$0, 684(%rbx)
	movl	136(%rbx), %eax
	testl	%eax, %eax
	je	.LBB1_57
.LBB1_54:                               # %land.lhs.true418
	cmpl	$0, 688(%rdi)
	movl	%eax, %ebp
	je	.LBB1_57
# %bb.55:                               # %if.then421
	movl	$.L.str.65, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movq	%rbx, %rdi
	movl	$0, 688(%rbx)
	movl	136(%rbx), %ebp
	jmp	.LBB1_57
.LBB1_56:
	xorl	%ebp, %ebp
.LBB1_57:                               # %if.end424
	movl	$16, %esi
	movl	%ebp, %ecx
	shll	%cl, %esi
	movl	24(%rdi), %eax
	addl	%esi, %eax
	decl	%eax
	cltd
	idivl	%esi
	cmpl	$0, 8(%rdi)
	je	.LBB1_59
# %bb.58:                               # %if.then438
	movl	4(%rdi), %ecx
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	xorl	%edx, %edx
	testl	%ecx, %ecx
	cmovnsl	%eax, %edx
	movl	%edx, 692(%rdi)
	jmp	.LBB1_61
.LBB1_59:                               # %if.else443
	movl	692(%rdi), %ecx
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	xorl	%edx, %edx
	testl	%ecx, %ecx
	cmovsl	%edx, %eax
	movl	%eax, 692(%rdi)
	movl	684(%rdi), %eax
	movl	688(%rdi), %ecx
	testl	%ecx, %ecx
	cmovlel	%edx, %ecx
	setle	%sil
	testl	%eax, %eax
	cmovgl	%eax, %edx
	movl	%edx, 684(%rdi)
	movl	%ecx, 688(%rdi)
	setle	%al
	testb	%al, %sil
	jne	.LBB1_61
# %bb.60:                               # %if.then480
	movl	$0, 692(%rdi)
.LBB1_61:                               # %if.end484
	movl	80(%rdi), %ecx
	movl	84(%rdi), %eax
	cmpl	$16, %ecx
	movl	$16, %edx
	cmovll	%ecx, %edx
	cmpl	$2, %edx
	movl	$1, %ecx
	cmovll	%ecx, %edx
	movl	%edx, 80(%rdi)
	testl	%eax, %eax
	jle	.LBB1_64
# %bb.62:                               # %if.end496
	cmpl	$0, 92(%rdi)
	js	.LBB1_65
.LBB1_63:                               # %if.end503
	cmpl	$0, 428(%rdi)
	jne	.LBB1_68
	jmp	.LBB1_66
.LBB1_64:                               # %if.then493
	movl	$1, 84(%rdi)
	movl	$1, %eax
	cmpl	$0, 92(%rdi)
	jns	.LBB1_63
.LBB1_65:                               # %if.then500
	movl	$0, 92(%rdi)
	cmpl	$0, 428(%rdi)
	jne	.LBB1_68
.LBB1_66:                               # %land.lhs.true508
	cmpl	$2, 404(%rdi)
	jl	.LBB1_68
# %bb.67:                               # %if.then513
	movl	$.L.str.66, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movq	%rbx, %rdi
	movl	$1, 404(%rbx)
	movl	84(%rbx), %eax
.LBB1_68:                               # %if.end517
	movl	100(%rdi), %edx
	cmpl	$16, %edx
	movl	$16, %ecx
	cmovll	%edx, %ecx
	xorl	%edx, %edx
	testl	%ecx, %ecx
	cmovlel	%edx, %ecx
	movl	%ecx, 100(%rdi)
	cmpl	$1, %eax
	jne	.LBB1_70
# %bb.69:                               # %if.then527
	movq	$0, 96(%rdi)
	xorl	%ecx, %ecx
.LBB1_70:                               # %if.end531
	movl	108(%rdi), %eax
	cmpl	$100, %eax
	movl	$100, %edx
	cmovll	%eax, %edx
	cmpl	$-89, %edx
	movl	$-90, %eax
	cmovgel	%edx, %eax
	movl	%eax, 108(%rdi)
	cmpl	$2, %ecx
	jae	.LBB1_73
# %bb.71:                               # %if.end542
	movl	$0, 112(%rdi)
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB1_74
# %bb.72:                               # %if.then551
	movl	$0, 104(%rdi)
	movq	$0, 400(%rdi)
	jmp	.LBB1_74
.LBB1_73:                               # %if.end542.thread
	movl	112(%rdi), %eax
	cmpl	$2, %eax
	movl	$2, %ecx
	cmovll	%eax, %ecx
	xorl	%edx, %edx
	testl	%ecx, %ecx
	cmovgl	%ecx, %edx
	movl	%edx, 112(%rdi)
.LBB1_74:                               # %if.end558
	cmpl	$0, 96(%rdi)
	je	.LBB1_79
# %bb.75:                               # %land.lhs.true562
	cmpl	$2, %eax
	jl	.LBB1_77
# %bb.76:                               # %if.end570
	movl	$.L.str.67, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movq	%rbx, %rdi
	movl	$1, 112(%rbx)
	cmpl	$0, 96(%rbx)
	je	.LBB1_79
.LBB1_77:                               # %land.lhs.true574
	cmpl	$2, 80(%rdi)
	jl	.LBB1_79
# %bb.78:                               # %if.then579
	movl	$.L.str.68, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movq	%rbx, %rdi
	movl	$1, 80(%rbx)
.LBB1_79:                               # %if.end582
	movl	84(%rdi), %ecx
	movl	88(%rdi), %eax
	testl	%eax, %eax
	jne	.LBB1_81
# %bb.80:                               # %select.true.sink
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax         # imm = 0x66666667
	movq	%rax, %rdx
	shrq	$63, %rdx
	sarq	$34, %rax
	addl	%edx, %eax
.LBB1_81:                               # %select.end
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%ecx, %edx
	sarl	%edx
	incl	%edx
	cmpl	%edx, %eax
	cmovll	%eax, %edx
	testl	%eax, %eax
	movl	$1, %eax
	cmovgl	%edx, %eax
	movl	%eax, 88(%rdi)
	movl	556(%rdi), %eax
	cmpl	$250, %eax
	movl	$250, %esi
	cmovll	%eax, %esi
	xorl	%edx, %edx
	testl	%esi, %esi
	cmovgl	%esi, %edx
	movl	508(%rdi), %eax
	movl	524(%rdi), %ebp
	cmpl	%eax, %ebp
	movl	%eax, %esi
	cmovgl	%ebp, %esi
	testl	%esi, %esi
	je	.LBB1_83
# %bb.82:                               # %cond.true627
	cvtsi2ssl	528(%rdi), %xmm0
	cvtsi2ss	%esi, %xmm1
	divss	%xmm1, %xmm0
	jmp	.LBB1_84
.LBB1_83:
	xorpd	%xmm0, %xmm0
.LBB1_84:                               # %cond.end635
	movl	652(%rdi), %esi
	movss	.LCPI1_9(%rip), %xmm1           # xmm1 = [2.5E+1,0.0E+0,0.0E+0,0.0E+0]
	testl	%esi, %esi
	je	.LBB1_87
# %bb.85:                               # %land.lhs.true640
	movl	656(%rdi), %r8d
	testl	%r8d, %r8d
	je	.LBB1_87
# %bb.86:                               # %cond.true644
	movl	%esi, %r9d
	xorps	%xmm1, %xmm1
	cvtsi2ss	%r9, %xmm1
	movl	%r8d, %r8d
	cvtsi2ss	%r8, %xmm2
	divss	%xmm2, %xmm1
.LBB1_87:                               # %cond.end654
	xorps	%xmm2, %xmm2
	cvtsi2ss	%edx, %xmm2
	mulss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ss	%ecx, %xmm1
	maxss	%xmm0, %xmm1
	minss	%xmm1, %xmm2
	cvttss2si	%xmm2, %edx
	movl	%edx, 556(%rdi)
	cmpl	$0, 660(%rdi)
	je	.LBB1_89
# %bb.88:                               # %lor.lhs.false705
	cmpl	$0, 664(%rdi)
	jne	.LBB1_90
.LBB1_89:                               # %if.then708
	movl	656(%rdi), %r8d
	movl	%r8d, 660(%rdi)
	movl	%esi, 664(%rdi)
.LBB1_90:                               # %if.end717
	movss	592(%rdi), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI1_6(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	minss	%xmm0, %xmm1
	xorps	%xmm2, %xmm2
	cmpltss	%xmm2, %xmm0
	andnps	%xmm1, %xmm0
	movss	%xmm0, 592(%rdi)
	testl	%edx, %edx
	je	.LBB1_93
# %bb.91:                               # %lor.lhs.false731
	cmpl	$1, %ecx
	je	.LBB1_93
# %bb.92:                               # %lor.lhs.false731
	ucomiss	.LCPI1_6(%rip), %xmm0
	jne	.LBB1_94
	jp	.LBB1_94
.LBB1_93:                               # %if.then742
	movl	$0, 552(%rdi)
.LBB1_94:                               # %if.end746
	cmpl	$0, 576(%rdi)
	je	.LBB1_96
# %bb.95:                               # %if.then750
	movl	$0, 556(%rdi)
.LBB1_96:                               # %if.end754
	movl	$0, 16(%rdi)
	movq	120(%rdi), %xmm0                # xmm0 = mem[0],zero
	movdqa	.LCPI1_10(%rip), %xmm1          # xmm1 = [6,6,u,u]
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm0, %xmm2
	pand	%xmm2, %xmm0
	pandn	%xmm1, %xmm2
	por	%xmm0, %xmm2
	movdqa	.LCPI1_11(%rip), %xmm0          # xmm0 = [4294967290,4294967290,u,u]
	movdqa	%xmm2, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm2
	pandn	%xmm0, %xmm1
	por	%xmm2, %xmm1
	movq	%xmm1, 120(%rdi)
	movq	468(%rdi), %xmm0                # xmm0 = mem[0],zero
	movdqa	.LCPI1_12(%rip), %xmm1          # xmm1 = [32,32,u,u]
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm0, %xmm2
	pand	%xmm2, %xmm0
	pandn	%xmm1, %xmm2
	por	%xmm0, %xmm2
	pxor	%xmm0, %xmm0
	movdqa	%xmm2, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm2, %xmm1
	movq	%xmm1, 468(%rdi)
	movl	132(%rdi), %ecx
	movl	144(%rdi), %edx
	cmpl	$2, %ecx
	movl	$2, %esi
	cmovll	%ecx, %esi
	xorl	%ecx, %ecx
	testl	%esi, %esi
	cmovgl	%esi, %ecx
	movl	%ecx, 132(%rdi)
	cmpl	$3, %edx
	jb	.LBB1_97
# %bb.100:                              # %if.then793
	movl	$0, 144(%rdi)
	movl	412(%rdi), %ecx
	cmpl	$5, %ecx
	jae	.LBB1_101
.LBB1_98:                               # %if.end812
	movl	416(%rdi), %edx
	cmpl	$3, %edx
	jg	.LBB1_102
.LBB1_99:                               # %if.end822.thread
	movl	$4, 416(%rdi)
	jmp	.LBB1_104
.LBB1_97:                               # %if.end796
	movl	412(%rdi), %ecx
	cmpl	$5, %ecx
	jb	.LBB1_98
.LBB1_101:                              # %if.then808
	movl	$1, 412(%rdi)
	movl	$1, %ecx
	movl	416(%rdi), %edx
	cmpl	$3, %edx
	jle	.LBB1_99
.LBB1_102:                              # %if.end822
	cmpl	$17, %edx
	setb	%dl
	cmpl	$2, %ecx
	setae	%sil
	orb	%dl, %sil
	jne	.LBB1_104
# %bb.103:                              # %if.end838.thread
	movl	$16, 416(%rdi)
	jmp	.LBB1_108
.LBB1_104:                              # %if.end838
	cmpl	$4, %ecx
	jne	.LBB1_108
# %bb.105:                              # %land.lhs.true844
	cmpl	$0, 25812(%rdi)
	jne	.LBB1_107
# %bb.106:                              # %lor.lhs.false848
	movl	428(%rdi), %ecx
	cmpl	$1, %ecx
	jg	.LBB1_109
.LBB1_107:                              # %if.then854
	movl	$3, 412(%rdi)
.LBB1_108:                              # %if.end858thread-pre-split
	movl	428(%rdi), %ecx
.LBB1_109:                              # %if.end858
	cmpl	$10, %ecx
	movl	$10, %esi
	cmovll	%ecx, %esi
	xorl	%edx, %edx
	testl	%esi, %esi
	cmovlel	%edx, %esi
	movl	%esi, 428(%rdi)
	cmpl	$0, 436(%rdi)
	je	.LBB1_111
# %bb.110:                              # %land.rhs869
	cmpl	$2, 80(%rdi)
	setge	%dl
.LBB1_111:                              # %land.end874
	movzbl	%dl, %edx
	movl	%edx, 436(%rdi)
	movl	384(%rdi), %edx
	movl	388(%rdi), %r8d
	movl	%r8d, %esi
	andl	$307, %esi                      # imm = 0x133
	movl	%esi, 388(%rdi)
	movl	%edx, %r9d
	andl	$3, %r9d
	movl	%r9d, 384(%rdi)
	testb	$16, %r8b
	jne	.LBB1_113
# %bb.112:                              # %if.then891
	andl	$259, %r8d                      # imm = 0x103
	movl	%r8d, 388(%rdi)
	movl	%r8d, %esi
.LBB1_113:                              # %if.end896
	cmpl	$0, 392(%rdi)
	jne	.LBB1_115
# %bb.114:                              # %if.then901
	andl	$305, %esi                      # imm = 0x131
	movl	%esi, 388(%rdi)
	andl	$1, %edx
	movl	%edx, 384(%rdi)
.LBB1_115:                              # %if.end910
	movl	408(%rdi), %edx
	cmpl	$12, %edx
	movl	$12, %r8d
	cmovll	%edx, %r8d
	cmpl	$-11, %r8d
	movl	$-12, %esi
	cmovgel	%r8d, %esi
	movl	%esi, 408(%rdi)
	xorl	%r8d, %r8d
	cmpl	$0, 128(%rdi)
	movl	$0, %edx
	je	.LBB1_117
# %bb.116:                              # %if.end910.if.end925_crit_edge
	movl	440(%rdi), %edx
.LBB1_117:                              # %if.end925
	cmpl	$2, %edx
	movl	$2, %r9d
	cmovll	%edx, %r9d
	testl	%r9d, %r9d
	cmovgl	%r9d, %r8d
	movl	%r8d, 440(%rdi)
	cmpl	$0, 464(%rdi)
	jne	.LBB1_119
# %bb.118:                              # %if.then937
	movq	$0, 456(%rdi)
.LBB1_119:                              # %if.end942
	testl	%edx, %edx
	jle	.LBB1_121
# %bb.120:                              # %if.end942.if.end951_crit_edge
	movd	460(%rdi), %xmm1                # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB1_122
.LBB1_121:
	pxor	%xmm1, %xmm1
.LBB1_122:                              # %if.end951
	movd	456(%rdi), %xmm0                # xmm0 = mem[0],zero,zero,zero
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	pxor	%xmm1, %xmm1
	movaps	.LCPI1_13(%rip), %xmm2          # xmm2 = [1.0E+1,1.0E+1,u,u]
	minps	%xmm0, %xmm2
	cmpnltps	%xmm1, %xmm0
	andps	%xmm2, %xmm0
	movlps	%xmm0, 456(%rdi)
	cmpl	$5, %ecx
	jg	.LBB1_124
# %bb.123:                              # %if.then975
	movl	$0, 456(%rdi)
	xorps	%xmm3, %xmm3
	jmp	.LBB1_125
.LBB1_124:
	movaps	%xmm0, %xmm3
.LBB1_125:                              # %if.end979
	movss	.LCPI1_14(%rip), %xmm2          # xmm2 = [2.5E-1,0.0E+0,0.0E+0,0.0E+0]
	xorl	%r8d, %r8d
	ucomiss	%xmm3, %xmm2
	seta	%r8b
	shufps	$85, %xmm0, %xmm0               # xmm0 = xmm0[1,1,1,1]
	movaps	%xmm0, %xmm4
	mulss	%xmm2, %xmm4
	unpcklps	%xmm4, %xmm3                    # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	mulps	.LCPI1_15(%rip), %xmm3
	cvtps2pd	%xmm3, %xmm3
	addpd	.LCPI1_16(%rip), %xmm3
	cvttpd2dq	%xmm3, %xmm3
	orl	$-2, %r8d
	pshufd	$80, %xmm3, %xmm4               # xmm4 = xmm3[0,0,1,1]
	pcmpeqd	%xmm1, %xmm4
	movmskpd	%xmm4, %r10d
	xorl	%r9d, %r9d
	testb	$1, %r10b
	cmovnel	%r9d, %r8d
	addl	%r8d, %esi
	xorl	%r8d, %r8d
	ucomiss	%xmm0, %xmm2
	seta	%r8b
	orl	$-2, %r8d
	testb	$2, %r10b
	cmovnel	%r9d, %r8d
	addl	%esi, %r8d
	cmpl	$-11, %r8d
	movl	$-12, %esi
	cmovgel	%r8d, %esi
	movq	%xmm3, 16428(%rdi)
	movl	%esi, 408(%rdi)
	movl	544(%rdi), %r8d
	cmpl	$2, %r8d
	movl	$2, %esi
	cmovll	%r8d, %esi
	testl	%esi, %esi
	cmovlel	%r9d, %esi
	movl	%esi, 544(%rdi)
	movss	548(%rdi), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI1_17(%rip), %xmm1          # xmm1 = [3.0E+0,0.0E+0,0.0E+0,0.0E+0]
	minss	%xmm0, %xmm1
	xorps	%xmm2, %xmm2
	cmpltss	%xmm2, %xmm0
	andnps	%xmm1, %xmm0
	movss	%xmm0, 548(%rdi)
	ucomiss	%xmm2, %xmm0
	jne	.LBB1_129
	jp	.LBB1_129
# %bb.126:                              # %if.end1060.thread
	movl	$0, 544(%rdi)
.LBB1_127:                              # %land.lhs.true1065
	cmpl	$0, 552(%rdi)
	je	.LBB1_130
# %bb.128:                              # %if.then1070
	movq	$1, 544(%rdi)
	movl	$1, %esi
	jmp	.LBB1_131
.LBB1_129:                              # %if.end1060
	testl	%r8d, %r8d
	jg	.LBB1_131
	jmp	.LBB1_127
.LBB1_130:
	xorl	%esi, %esi
.LBB1_131:                              # %if.end1077
	movl	452(%rdi), %r8d
	cmpl	$65536, %r8d                    # imm = 0x10000
	movl	$65536, %r9d                    # imm = 0x10000
	cmovll	%r8d, %r9d
	xorl	%r8d, %r8d
	testl	%r9d, %r9d
	cmovgl	%r9d, %r8d
	movl	%r8d, 452(%rdi)
	cmpl	$10, %ecx
	jl	.LBB1_135
# %bb.132:                              # %land.lhs.true1090
	cmpl	$2, %edx
	jl	.LBB1_134
# %bb.133:                              # %land.lhs.true1090
	testl	%esi, %esi
	jne	.LBB1_135
.LBB1_134:                              # %if.then1101
	movl	$9, 428(%rdi)
.LBB1_135:                              # %if.end1105
	movl	32(%rdi), %ecx
	testl	%ecx, %ecx
	js	.LBB1_140
# %bb.136:                              # %while.cond.preheader
	movq	x264_levels@GOTPCREL(%rip), %r14
	movl	(%r14), %eax
	testl	%eax, %eax
	je	.LBB1_139
	.p2align	4, 0x90
.LBB1_137:                              # %land.rhs1154
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, %eax
	je	.LBB1_147
# %bb.138:                              # %while.body
                                        #   in Loop: Header=BB1_137 Depth=1
	movl	52(%r14), %eax
	addq	$52, %r14
	testl	%eax, %eax
	jne	.LBB1_137
.LBB1_139:                              # %if.then1166
	movl	$.L.str.69, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	jmp	.LBB1_28
.LBB1_140:                              # %if.then1109
	cmpl	$2, 488(%rdi)
	jne	.LBB1_143
# %bb.141:                              # %land.lhs.true1118
	cmpl	$0, 528(%rdi)
	jg	.LBB1_143
# %bb.142:                              # %if.then1124
	addl	%eax, %eax
	movl	%eax, 524(%rdi)
.LBB1_143:                              # %if.end1132
	leaq	1896(%rdi), %rax
	movq	%rax, 3200(%rdi)
	movl	644(%rdi), %esi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	x264_sps_init@PLT
	movq	%rbx, %rdi
	movq	x264_levels@GOTPCREL(%rip), %r12
	movl	(%r12), %r15d
	.p2align	4, 0x90
.LBB1_144:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %r14
	movl	%r15d, 32(%rdi)
	movl	52(%r12), %r15d
	testl	%r15d, %r15d
	je	.LBB1_146
# %bb.145:                              # %land.lhs.true1141
                                        #   in Loop: Header=BB1_144 Depth=1
	leaq	52(%r14), %r12
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	x264_validate_levels@PLT
	movq	%rbx, %rdi
	testl	%eax, %eax
	jne	.LBB1_144
.LBB1_146:                              # %do.end
	movl	%ebp, 524(%rdi)
.LBB1_147:                              # %if.end1170
	movl	420(%rdi), %eax
	testl	%eax, %eax
	jle	.LBB1_149
# %bb.148:                              # %if.else1181
	movl	136(%rdi), %ecx
	movl	$512, %edx                      # imm = 0x200
	shrl	%cl, %edx
	cmpl	%edx, %eax
	cmovbl	%eax, %edx
	cmpl	$32, %eax
	movl	$32, %esi
	cmovael	%edx, %esi
	jmp	.LBB1_150
.LBB1_149:                              # %if.then1175
	movl	24(%r14), %esi
	movl	136(%rdi), %ecx
	sarl	%cl, %esi
.LBB1_150:                              # %if.end1192
	movl	%esi, 420(%rdi)
	movl	396(%rdi), %eax
	cmpl	$2, %eax
	movl	$2, %edx
	cmovll	%eax, %edx
	xorl	%r8d, %r8d
	testl	%edx, %edx
	cmovgl	%edx, %r8d
	movl	%r8d, 396(%rdi)
	testl	%eax, %eax
	jle	.LBB1_168
.LBB1_151:                              # %if.end1225
	movl	1852(%rdi), %ecx
	cmpl	$2, %ecx
	jl	.LBB1_152
# %bb.162:                              # %if.then1229
	movl	424(%rdi), %eax
	testl	%eax, %eax
	jg	.LBB1_164
# %bb.163:                              # %if.then1234
	movl	24(%rdi), %eax
	addl	$24, %eax
	cltd
	idivl	%ecx
                                        # kill: def $eax killed $eax def $rax
	movl	%eax, %ecx
	addl	$-24, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	addl	$-24, %eax
	sarl	%eax
.LBB1_164:                              # %if.end1242
	movl	416(%rdi), %ecx
	cmpl	%ecx, %eax
	cmovgl	%eax, %ecx
	cmpl	%esi, %ecx
	cmovgel	%esi, %ecx
	movl	%ecx, %r14d
	andl	$-16, %r14d
	leal	8(%r14), %eax
	addl	$24, %r14d
	cmpl	%ecx, %eax
	cmovgel	%eax, %r14d
	movl	$.L.str.70, %edx
	movq	%rbx, %rdi
	movl	$3, %esi
	movl	%r14d, %ecx
	xorl	%eax, %eax
	callq	x264_log@PLT
	movq	%rbx, %rdi
	movl	%r14d, 424(%rbx)
	xorps	%xmm0, %xmm0
	ucomiss	596(%rdi), %xmm0
	ja	.LBB1_165
.LBB1_153:                              # %if.end1286
	ucomiss	600(%rdi), %xmm0
	jbe	.LBB1_154
.LBB1_166:                              # %if.then1291
	movl	$0, 600(%rdi)
	andl	$31, 644(%rdi)
	cmpl	$1, 368(%rdi)
	jle	.LBB1_167
.LBB1_155:                              # %if.end1309
	cmpl	$0, 136(%rdi)
	je	.LBB1_157
.LBB1_156:                              # %if.then1313
	movl	$1, 676(%rdi)
.LBB1_157:                              # %if.end1315
	movl	40(%rdi), %eax
	testl	%eax, %eax
	je	.LBB1_173
# %bb.158:                              # %land.lhs.true1318
	cmpl	$0, 528(%rdi)
	je	.LBB1_171
# %bb.159:                              # %if.end1326
	cmpl	$2, %eax
	jne	.LBB1_173
# %bb.160:                              # %land.lhs.true1331
	movl	524(%rdi), %eax
	cmpl	%eax, 508(%rdi)
	sete	%cl
	testl	%eax, %eax
	setne	%al
	testb	%al, %cl
	jne	.LBB1_173
# %bb.161:
	movl	$1, %ebp
	movl	$.L.str.72, %edx
	jmp	.LBB1_172
.LBB1_152:                              # %if.end1277
	xorps	%xmm0, %xmm0
	ucomiss	596(%rdi), %xmm0
	jbe	.LBB1_153
.LBB1_165:                              # %if.then1282
	movl	$0, 596(%rdi)
	ucomiss	600(%rdi), %xmm0
	ja	.LBB1_166
.LBB1_154:                              # %if.end1295
	andl	$31, 644(%rdi)
	cmpl	$1, 368(%rdi)
	jg	.LBB1_155
.LBB1_167:                              # %if.then1302
	movq	$0, 476(%rdi)
	cmpl	$0, 136(%rdi)
	jne	.LBB1_156
	jmp	.LBB1_157
.LBB1_168:                              # %land.lhs.true1207
	cmpl	$0, 552(%rdi)
	je	.LBB1_151
# %bb.169:                              # %land.lhs.true1212
	cmpl	$0, 464(%rdi)
	setne	%al
	testl	%ecx, %ecx
	sete	%cl
	andb	%al, %cl
	cmpb	$1, %cl
	jne	.LBB1_151
# %bb.170:                              # %if.then1221
	movl	$-1, 396(%rdi)
	jmp	.LBB1_151
.LBB1_171:
	xorl	%ebp, %ebp
	movl	$.L.str.71, %edx
.LBB1_172:                              # %if.end1348.sink.split
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movq	%rbx, %rdi
	movl	%ebp, 40(%rbx)
.LBB1_173:                              # %if.end1348
	xorl	%eax, %eax
	cmpl	$0, 128(%rdi)
	setne	%al
	movl	%eax, 128(%rdi)
	xorl	%eax, %eax
	cmpl	$0, 116(%rdi)
	setne	%al
	movl	%eax, 116(%rdi)
	movq	8(%rdi), %xmm2                  # xmm2 = mem[0],zero
	xorps	%xmm0, %xmm0
	pcmpeqd	%xmm0, %xmm2
	movdqa	.LCPI1_18(%rip), %xmm1          # xmm1 = [1,1,u,u]
	pandn	%xmm1, %xmm2
	movq	%xmm2, 8(%rdi)
	movq	136(%rdi), %xmm2                # xmm2 = mem[0],zero
	pcmpeqd	%xmm0, %xmm2
	pandn	%xmm1, %xmm2
	movq	%xmm2, 136(%rdi)
	xorl	%eax, %eax
	cmpl	$0, 96(%rdi)
	setne	%al
	movl	%eax, 96(%rdi)
	xorl	%eax, %eax
	cmpl	$0, 372(%rdi)
	setne	%al
	movl	%eax, 372(%rdi)
	movq	632(%rdi), %xmm2                # xmm2 = mem[0],zero
	pcmpeqd	%xmm0, %xmm2
	pandn	%xmm1, %xmm2
	movq	%xmm2, 632(%rdi)
	xorl	%eax, %eax
	cmpl	$0, 640(%rdi)
	setne	%al
	movl	%eax, 640(%rdi)
	xorl	%eax, %eax
	cmpl	$0, 648(%rdi)
	setne	%al
	movl	%eax, 648(%rdi)
	movq	676(%rdi), %xmm2                # xmm2 = mem[0],zero
	pcmpeqd	%xmm0, %xmm2
	pandn	%xmm1, %xmm2
	movq	%xmm2, 676(%rdi)
	xorl	%eax, %eax
	cmpl	$0, 392(%rdi)
	setne	%al
	movl	%eax, 392(%rdi)
	xorl	%eax, %eax
	cmpl	$0, 400(%rdi)
	setne	%al
	movl	%eax, 400(%rdi)
	movq	432(%rdi), %xmm2                # xmm2 = mem[0],zero
	pcmpeqd	%xmm0, %xmm2
	pandn	%xmm1, %xmm2
	movq	%xmm2, 432(%rdi)
	movq	444(%rdi), %xmm2                # xmm2 = mem[0],zero
	pcmpeqd	%xmm0, %xmm2
	pandn	%xmm1, %xmm2
	movq	%xmm2, 444(%rdi)
	xorl	%eax, %eax
	cmpl	$0, 464(%rdi)
	setne	%al
	movl	%eax, 464(%rdi)
	movq	476(%rdi), %xmm2                # xmm2 = mem[0],zero
	pcmpeqd	%xmm0, %xmm2
	pandn	%xmm1, %xmm2
	movq	%xmm2, 476(%rdi)
	xorl	%eax, %eax
	cmpl	$0, 560(%rdi)
	setne	%al
	movl	%eax, 560(%rdi)
	xorl	%eax, %eax
	cmpl	$0, 576(%rdi)
	setne	%al
	movl	%eax, 576(%rdi)
	xorl	%eax, %eax
	cmpl	$0, 552(%rdi)
	setne	%al
	movl	%eax, 552(%rdi)
	xorl	%eax, %eax
	jmp	.LBB1_29
.Lfunc_end1:
	.size	x264_validate_parameters, .Lfunc_end1-x264_validate_parameters
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_set_aspect_ratio
	.type	x264_set_aspect_ratio,@function
x264_set_aspect_ratio:                  # @x264_set_aspect_ratio
	.cfi_startproc
# %bb.0:                                # %entry
	movl	48(%rsi), %eax
	testl	%eax, %eax
	jle	.LBB2_12
# %bb.1:                                # %land.lhs.true
	movl	44(%rsi), %ecx
	testl	%ecx, %ecx
	jle	.LBB2_12
# %bb.2:                                # %if.then
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movl	%eax, 4(%rsp)
	movl	%ecx, (%rsp)
	movl	44(%rdi), %ebp
	movq	%rdi, %r14
	movl	48(%rdi), %r15d
	leaq	4(%rsp), %rdi
	movq	%rsp, %rsi
	callq	x264_reduce_fraction@PLT
	movl	4(%rsp), %eax
	movl	(%rsp), %ecx
	cmpl	$65536, %eax                    # imm = 0x10000
	setae	%dl
	cmpl	$65536, %ecx                    # imm = 0x10000
	setae	%sil
	orb	%dl, %sil
	cmpb	$1, %sil
	jne	.LBB2_5
	.p2align	4, 0x90
.LBB2_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %edx
	movl	%eax, %esi
	shrl	%eax
	shrl	%ecx
	cmpl	$131072, %esi                   # imm = 0x20000
	setae	%sil
	cmpl	$131072, %edx                   # imm = 0x20000
	setae	%dl
	orb	%sil, %dl
	jne	.LBB2_3
# %bb.4:                                # %while.cond.while.end_crit_edge
	movl	%eax, 4(%rsp)
	movl	%ecx, (%rsp)
.LBB2_5:                                # %while.end
	leaq	4(%rsp), %rdi
	movq	%rsp, %rsi
	callq	x264_reduce_fraction@PLT
	movl	4(%rsp), %ecx
	movl	(%rsp), %r8d
	cmpl	%r15d, %ecx
	jne	.LBB2_8
# %bb.6:                                # %lor.lhs.false
	testl	%ebx, %ebx
	jne	.LBB2_8
# %bb.7:                                # %lor.lhs.false
	cmpl	%ebp, %r8d
	je	.LBB2_11
.LBB2_8:                                # %if.then19
	movq	%r14, %rdi
	movq	$0, 44(%r14)
	testl	%ecx, %ecx
	sete	%al
	testl	%r8d, %r8d
	sete	%dl
	orb	%al, %dl
	cmpb	$1, %dl
	jne	.LBB2_10
# %bb.9:                                # %if.then29
	movl	$.L.str.73, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	jmp	.LBB2_11
.LBB2_10:                               # %if.else
	cmpl	$1, %ebx
	movl	$0, %esi
	adcl	$2, %esi
	movl	$.L.str.74, %edx
	movq	%rdi, %rbx
	xorl	%eax, %eax
	callq	x264_log@PLT
	movl	4(%rsp), %eax
	movl	%eax, 48(%rbx)
	movl	(%rsp), %eax
	movl	%eax, 44(%rbx)
.LBB2_11:                               # %if.end37
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB2_12:                               # %if.end38
	retq
.Lfunc_end2:
	.size	x264_set_aspect_ratio, .Lfunc_end2-x264_set_aspect_ratio
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function mbcmp_init
	.type	mbcmp_init,@function
mbcmp_init:                             # @mbcmp_init
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	$0, 25812(%rdi)
	je	.LBB3_2
# %bb.1:                                # %.thread174
	leaq	31560(%rdi), %r9
	leaq	31672(%rdi), %rax
	movq	32144(%rdi), %rcx
	movq	%rcx, 31864(%rdi)
	movups	32096(%rdi), %xmm0
	movups	32112(%rdi), %xmm1
	movups	32128(%rdi), %xmm2
	movups	%xmm2, 31848(%rdi)
	movups	%xmm1, 31832(%rdi)
	movups	%xmm0, 31816(%rdi)
	movl	$32584, %esi                    # imm = 0x7F48
	movl	$32560, %r8d                    # imm = 0x7F30
	movl	$32536, %r10d                   # imm = 0x7F18
	xorl	%edx, %edx
	movq	%r9, %rcx
	jmp	.LBB3_5
.LBB3_2:                                # %land.end
	leaq	31560(%rdi), %rcx
	leaq	31816(%rdi), %rdx
	leaq	31672(%rdi), %rax
	cmpl	$2, 428(%rdi)
	jl	.LBB3_4
# %bb.3:
	movq	48(%rax), %rsi
	movq	%rsi, 48(%rdx)
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movups	%xmm2, 32(%rdx)
	movups	%xmm1, 16(%rdx)
	movups	%xmm0, (%rdx)
	movb	$1, %dl
	movl	$32576, %esi                    # imm = 0x7F40
	movl	$32552, %r8d                    # imm = 0x7F28
	movl	$32528, %r10d                   # imm = 0x7F10
	movq	%rax, %r9
	jmp	.LBB3_5
.LBB3_4:
	movq	32144(%rdi), %rsi
	movq	%rsi, 48(%rdx)
	movups	32096(%rdi), %xmm0
	movups	32112(%rdi), %xmm1
	movups	32128(%rdi), %xmm2
	movups	%xmm2, 32(%rdx)
	movups	%xmm1, 16(%rdx)
	movups	%xmm0, (%rdx)
	movl	$32584, %esi                    # imm = 0x7F48
	movl	$32560, %r8d                    # imm = 0x7F30
	movl	$32536, %r10d                   # imm = 0x7F18
	xorl	%edx, %edx
	movq	%rcx, %r9
.LBB3_5:
	movq	48(%r9), %r11
	movq	%r11, 31920(%rdi)
	movups	(%r9), %xmm0
	movups	16(%r9), %xmm1
	movups	32(%r9), %xmm2
	movups	%xmm2, 31904(%rdi)
	movups	%xmm1, 31888(%rdi)
	movups	%xmm0, 31872(%rdi)
	movq	(%rdi,%r10), %r9
	movq	%r9, 32520(%rdi)
	movq	(%rdi,%r8), %r8
	movq	%r8, 32544(%rdi)
	movq	(%rdi,%rsi), %rsi
	movq	%rsi, 32568(%rdi)
	cmpl	$4, 412(%rdi)
	sete	%sil
	leaq	32240(%rdi), %r8
	leaq	32352(%rdi), %r9
	leaq	32296(%rdi), %r10
	leaq	32408(%rdi), %r11
	testb	%sil, %dl
	cmoveq	%rcx, %rax
	movq	48(%rax), %rcx
	movq	%rcx, 31976(%rdi)
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movups	%xmm2, 31960(%rdi)
	movups	%xmm1, 31944(%rdi)
	movups	%xmm0, 31928(%rdi)
	cmovneq	%r9, %r8
	movq	48(%r8), %rax
	movq	%rax, 32032(%rdi)
	movups	(%r8), %xmm0
	movups	16(%r8), %xmm1
	movups	32(%r8), %xmm2
	movups	%xmm2, 32016(%rdi)
	movups	%xmm1, 32000(%rdi)
	movups	%xmm0, 31984(%rdi)
	cmoveq	%r10, %r11
	movq	48(%r11), %rax
	movq	%rax, 32088(%rdi)
	movups	(%r11), %xmm0
	movups	16(%r11), %xmm1
	movups	32(%r11), %xmm2
	movups	%xmm2, 32072(%rdi)
	movups	%xmm1, 32056(%rdi)
	movups	%xmm0, 32040(%rdi)
	retq
.Lfunc_end3:
	.size	mbcmp_init, .Lfunc_end3-mbcmp_init
	.cfi_endproc
                                        # -- End function
	.globl	x264_encoder_reconfig           # -- Begin function x264_encoder_reconfig
	.p2align	4, 0x90
	.type	x264_encoder_reconfig,@function
x264_encoder_reconfig:                  # @x264_encoder_reconfig
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	704(%rdi), %rax
	movslq	1744(%rax), %rax
	movq	704(%rdi,%rax,8), %rbx
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	x264_set_aspect_ratio
	movl	80(%r14), %eax
	movl	%eax, 80(%rbx)
	movl	108(%r14), %eax
	movl	%eax, 108(%rbx)
	cmpl	$0, 92(%rbx)
	je	.LBB4_2
# %bb.1:                                # %if.then
	movl	92(%r14), %eax
	movl	%eax, 92(%rbx)
.LBB4_2:                                # %if.end
	movl	116(%r14), %eax
	movl	%eax, 116(%rbx)
	movl	120(%r14), %eax
	movl	%eax, 120(%rbx)
	movl	124(%r14), %eax
	movl	%eax, 124(%rbx)
	movl	388(%r14), %edx
	movl	%edx, 388(%rbx)
	movl	384(%r14), %eax
	movl	%eax, 384(%rbx)
	movl	404(%r14), %eax
	movl	%eax, 404(%rbx)
	movl	412(%rbx), %eax
	movl	416(%r14), %ecx
	cmpl	$3, %eax
	jl	.LBB4_4
# %bb.3:                                # %lor.lhs.false
	cmpl	416(%rbx), %ecx
	jge	.LBB4_5
.LBB4_4:                                # %if.then35
	movl	%ecx, 416(%rbx)
.LBB4_5:                                # %if.end41
	movl	452(%r14), %ecx
	movl	%ecx, 452(%rbx)
	cmpl	$0, 428(%rbx)
	je	.LBB4_6
# %bb.7:                                # %if.then49
	movl	428(%r14), %ecx
	movl	%ecx, 428(%rbx)
	cmpl	$2, %ecx
	setge	%cl
	jmp	.LBB4_8
.LBB4_6:
	xorl	%ecx, %ecx
.LBB4_8:                                # %if.end55
	movl	440(%r14), %esi
	movl	%esi, 440(%rbx)
	movl	432(%r14), %esi
	movl	%esi, 432(%rbx)
	movl	448(%r14), %esi
	movl	%esi, 448(%rbx)
	movl	444(%r14), %esi
	movl	%esi, 444(%rbx)
	movl	436(%r14), %esi
	movl	%esi, 436(%rbx)
	movss	456(%r14), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 456(%rbx)
	movss	460(%r14), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 460(%rbx)
	movl	412(%r14), %esi
	cmpl	$2, %eax
	jle	.LBB4_9
# %bb.11:                               # %if.end98
	movl	%esi, 412(%rbx)
	cmpl	$3, %esi
	jl	.LBB4_14
# %bb.12:                               # %land.lhs.true
	cmpl	$0, 14676(%rbx)
	jne	.LBB4_14
# %bb.13:                               # %if.then104
	andl	$-33, %edx
	movl	%edx, 388(%rbx)
	jmp	.LBB4_14
.LBB4_9:                                # %lor.lhs.false88
	cmpl	$2, %esi
	jg	.LBB4_15
# %bb.10:                               # %if.end98.thread277
	movl	%esi, 412(%rbx)
.LBB4_14:                               # %if.end108
	movl	%esi, %eax
.LBB4_15:                               # %if.end108
	movq	3328(%rbx), %rdx
	cmpl	$0, 60(%rdx)
	je	.LBB4_17
# %bb.16:                               # %if.then110
	movl	392(%r14), %edx
	movl	%edx, 392(%rbx)
.LBB4_17:                               # %if.end115
	cmpl	$2, 14608(%rbx)
	jl	.LBB4_19
# %bb.18:                               # %if.then118
	movl	112(%r14), %edx
	movl	%edx, 112(%rbx)
.LBB4_19:                               # %if.end121
	movl	684(%r14), %edx
	movl	%edx, 684(%rbx)
	movl	688(%r14), %edx
	movl	%edx, 688(%rbx)
	movl	692(%r14), %edx
	movl	%edx, 692(%rbx)
	xorl	%ebp, %ebp
	cmpl	$0, 524(%rbx)
	jle	.LBB4_24
# %bb.20:                               # %land.lhs.true130
	cmpl	$0, 528(%rbx)
	jle	.LBB4_24
# %bb.21:                               # %land.lhs.true134
	movl	524(%r14), %edx
	testl	%edx, %edx
	jle	.LBB4_24
# %bb.22:                               # %land.lhs.true138
	cmpl	$0, 528(%r14)
	jle	.LBB4_24
# %bb.23:                               # %if.then142
	movl	%edx, 524(%rbx)
	movl	528(%r14), %edx
	movl	%edx, 528(%rbx)
	movl	508(%r14), %edx
	movl	%edx, 508(%rbx)
	movl	$1, %ebp
.LBB4_24:                               # %if.end157
	movss	512(%rbx), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	512(%r14), %xmm0                # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB4_25
	jnp	.LBB4_26
.LBB4_25:                               # %if.then163
	movss	%xmm0, 512(%rbx)
	movl	$1, %ebp
.LBB4_26:                               # %if.end169
	movss	516(%rbx), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	516(%r14), %xmm0                # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB4_27
	jnp	.LBB4_28
.LBB4_27:                               # %if.then175
	movss	%xmm0, 516(%rbx)
	movl	$1, %ebp
.LBB4_28:                               # %if.end181
	leaq	31560(%rbx), %rdx
	leaq	31816(%rbx), %rdi
	leaq	31672(%rbx), %rsi
	cmpl	$0, 25812(%rbx)
	jne	.LBB4_31
# %bb.29:                               # %land.end.i
	testb	%cl, %cl
	je	.LBB4_31
# %bb.30:
	movb	$1, %cl
	movl	$32576, %r8d                    # imm = 0x7F40
	movl	$32552, %r9d                    # imm = 0x7F28
	movl	$32528, %r10d                   # imm = 0x7F10
	movq	%rsi, %r11
	movq	%rsi, %r14
	jmp	.LBB4_32
.LBB4_31:
	leaq	32096(%rbx), %r11
	movl	$32584, %r8d                    # imm = 0x7F48
	movl	$32560, %r9d                    # imm = 0x7F30
	movl	$32536, %r10d                   # imm = 0x7F18
	xorl	%ecx, %ecx
	movq	%rdx, %r14
.LBB4_32:                               # %mbcmp_init.exit
	movq	48(%r11), %r15
	movq	%r15, 48(%rdi)
	movups	(%r11), %xmm0
	movups	16(%r11), %xmm1
	movups	32(%r11), %xmm2
	movups	%xmm2, 32(%rdi)
	movups	%xmm1, 16(%rdi)
	movups	%xmm0, (%rdi)
	movq	48(%r14), %rdi
	movq	%rdi, 31920(%rbx)
	movups	(%r14), %xmm0
	movups	16(%r14), %xmm1
	movups	32(%r14), %xmm2
	movups	%xmm2, 31904(%rbx)
	movups	%xmm1, 31888(%rbx)
	movups	%xmm0, 31872(%rbx)
	movq	(%rbx,%r10), %rdi
	movq	%rdi, 32520(%rbx)
	movq	(%rbx,%r9), %rdi
	movq	%rdi, 32544(%rbx)
	movq	(%rbx,%r8), %rdi
	movq	%rdi, 32568(%rbx)
	cmpl	$4, %eax
	sete	%al
	leaq	32240(%rbx), %rdi
	leaq	32352(%rbx), %r8
	leaq	32296(%rbx), %r9
	leaq	32408(%rbx), %r10
	testb	%al, %cl
	cmovneq	%rsi, %rdx
	movq	48(%rdx), %rax
	movq	%rax, 31976(%rbx)
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movups	32(%rdx), %xmm2
	movups	%xmm2, 31960(%rbx)
	movups	%xmm1, 31944(%rbx)
	movups	%xmm0, 31928(%rbx)
	cmovneq	%r8, %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	32(%rdi), %xmm2
	movups	%xmm0, 31984(%rbx)
	movups	%xmm1, 32000(%rbx)
	movups	%xmm2, 32016(%rbx)
	movq	48(%rdi), %rax
	movq	%rax, 32032(%rbx)
	cmoveq	%r9, %r10
	movups	(%r10), %xmm0
	movups	16(%r10), %xmm1
	movups	32(%r10), %xmm2
	movups	%xmm0, 32040(%rbx)
	movups	%xmm1, 32056(%rbx)
	movups	%xmm2, 32072(%rbx)
	movq	48(%r10), %rax
	movq	%rax, 32088(%rbx)
	movq	%rbx, %rdi
	callq	x264_validate_parameters
	testl	%ebp, %ebp
	je	.LBB4_35
# %bb.33:                               # %mbcmp_init.exit
	testl	%eax, %eax
	jne	.LBB4_35
# %bb.34:                               # %if.then185
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	%eax, %ebx
	callq	x264_ratecontrol_init_reconfigurable@PLT
	movl	%ebx, %eax
.LBB4_35:                               # %if.end186
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	x264_encoder_reconfig, .Lfunc_end4-x264_encoder_reconfig
	.cfi_endproc
                                        # -- End function
	.globl	x264_encoder_parameters         # -- Begin function x264_encoder_parameters
	.p2align	4, 0x90
	.type	x264_encoder_parameters,@function
x264_encoder_parameters:                # @x264_encoder_parameters
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rsi, %rax
	movslq	1744(%rdi), %rcx
	movq	704(%rdi,%rcx,8), %rsi
	movl	$704, %edx                      # imm = 0x2C0
	movq	%rax, %rdi
	jmp	memcpy@PLT                      # TAILCALL
.Lfunc_end5:
	.size	x264_encoder_parameters, .Lfunc_end5-x264_encoder_parameters
	.cfi_endproc
                                        # -- End function
	.globl	x264_encoder_headers            # -- Begin function x264_encoder_headers
	.p2align	4, 0x90
	.type	x264_encoder_headers,@function
x264_encoder_headers:                   # @x264_encoder_headers
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movl	$0, 1760(%rdi)
	movq	1768(%rdi), %rax
	movq	1784(%rdi), %rdi
	movslq	1776(%rbx), %r8
	movq	%rdi, %r9
	addq	%rdi, %r8
	leal	(,%rdi,8), %ecx
                                        # kill: def $edi killed $edi killed $rdi
	andl	$3, %edi
	andq	$-4, %r9
	movq	%r9, 1792(%rbx)
	movq	%r9, 1800(%rbx)
	movq	%r8, 1808(%rbx)
	shll	$3, %edi
	movl	$64, %r8d
	subl	%edi, %r8d
	movl	%r8d, 1824(%rbx)
	movl	(%r9), %edi
	bswapl	%edi
	andb	$24, %cl
	addb	$32, %cl
	negb	%cl
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rdi
	movq	%rdx, %r14
	movq	%rdi, 1816(%rbx)
	movabsq	$30064771075, %rcx              # imm = 0x700000003
	movq	%rcx, (%rax)
	movl	$0, 8(%rax)
	movl	1800(%rbx), %ecx
	subl	1792(%rbx), %ecx
	movq	%rsi, %r15
	shll	$3, %ecx
	subl	1824(%rbx), %ecx
	leaq	1792(%rbx), %r12
	leal	64(%rcx), %edx
	addl	$71, %ecx
	testl	%edx, %edx
	cmovnsl	%edx, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	addq	1784(%rbx), %rcx
	movq	%rcx, 16(%rax)
	movq	3200(%rbx), %rsi
	movq	%r12, %rdi
	callq	x264_sps_write@PLT
	movq	1768(%rbx), %rax
	movslq	1760(%rbx), %rcx
	movl	1800(%rbx), %edx
	subl	1792(%rbx), %edx
	shll	$3, %edx
	subl	1824(%rbx), %edx
	leal	64(%rdx), %esi
	addl	$71, %edx
	testl	%esi, %esi
	cmovnsl	%esi, %edx
	leaq	(%rcx,%rcx,2), %rcx
	sarl	$3, %edx
	addl	1784(%rbx), %edx
	subl	16(%rax,%rcx,8), %edx
	movl	%edx, 8(%rax,%rcx,8)
	movl	1760(%rbx), %eax
	movl	1764(%rbx), %ecx
	incl	%eax
	movl	%eax, 1760(%rbx)
	cmpl	%ecx, %eax
	jge	.LBB6_2
# %bb.1:                                # %entry.if.end_crit_edge
	movq	1768(%rbx), %r13
	jmp	.LBB6_4
.LBB6_2:                                # %if.then.i.i
	shll	$4, %ecx
	leal	(%rcx,%rcx,2), %edi
	callq	x264_malloc@PLT
	testq	%rax, %rax
	je	.LBB6_13
# %bb.3:                                # %cleanup.thread.i.i
	movq	%rax, %r13
	movq	1768(%rbx), %rsi
	movslq	1764(%rbx), %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rdx
	movq	%r13, %rdi
	callq	memcpy@PLT
	movq	1768(%rbx), %rdi
	callq	x264_free@PLT
	movq	%r13, 1768(%rbx)
	shll	1764(%rbx)
	movl	1760(%rbx), %eax
.LBB6_4:                                # %if.end
	cltq
	leaq	(%rax,%rax,2), %rax
	movabsq	$34359738371, %rcx              # imm = 0x800000003
	movq	%rcx, (%r13,%rax,8)
	movl	$0, 8(%r13,%rax,8)
	movl	1800(%rbx), %ecx
	subl	1792(%rbx), %ecx
	shll	$3, %ecx
	subl	1824(%rbx), %ecx
	leal	64(%rcx), %edx
	addl	$71, %ecx
	testl	%edx, %edx
	cmovnsl	%edx, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	addq	1784(%rbx), %rcx
	movq	%rcx, 16(%r13,%rax,8)
	movq	3328(%rbx), %rsi
	movq	%r12, %rdi
	callq	x264_pps_write@PLT
	movq	1768(%rbx), %rax
	movslq	1760(%rbx), %rcx
	movl	1800(%rbx), %edx
	subl	1792(%rbx), %edx
	shll	$3, %edx
	subl	1824(%rbx), %edx
	leal	64(%rdx), %esi
	addl	$71, %edx
	testl	%esi, %esi
	cmovnsl	%esi, %edx
	leaq	(%rcx,%rcx,2), %rcx
	sarl	$3, %edx
	addl	1784(%rbx), %edx
	subl	16(%rax,%rcx,8), %edx
	movl	%edx, 8(%rax,%rcx,8)
	movl	1760(%rbx), %eax
	movl	1764(%rbx), %ecx
	incl	%eax
	movl	%eax, 1760(%rbx)
	cmpl	%ecx, %eax
	jge	.LBB6_6
# %bb.5:                                # %if.end.if.end11_crit_edge
	movq	1768(%rbx), %r13
	jmp	.LBB6_8
.LBB6_6:                                # %if.then.i.i111
	shll	$4, %ecx
	leal	(%rcx,%rcx,2), %edi
	callq	x264_malloc@PLT
	testq	%rax, %rax
	je	.LBB6_13
# %bb.7:                                # %cleanup.thread.i.i115
	movq	%rax, %r13
	movq	1768(%rbx), %rsi
	movslq	1764(%rbx), %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rdx
	movq	%r13, %rdi
	callq	memcpy@PLT
	movq	1768(%rbx), %rdi
	callq	x264_free@PLT
	movq	%r13, 1768(%rbx)
	shll	1764(%rbx)
	movl	1760(%rbx), %eax
.LBB6_8:                                # %if.end11
	cltq
	leaq	(%rax,%rax,2), %rax
	movabsq	$25769803776, %rcx              # imm = 0x600000000
	movq	%rcx, (%r13,%rax,8)
	movl	$0, 8(%r13,%rax,8)
	movl	1800(%rbx), %ecx
	subl	1792(%rbx), %ecx
	shll	$3, %ecx
	subl	1824(%rbx), %ecx
	leal	64(%rcx), %edx
	addl	$71, %ecx
	testl	%edx, %edx
	cmovnsl	%edx, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	addq	1784(%rbx), %rcx
	movq	%rcx, 16(%r13,%rax,8)
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	x264_sei_version_write@PLT
	testl	%eax, %eax
	je	.LBB6_9
.LBB6_13:                               # %cleanup
	movl	$-1, %eax
	jmp	.LBB6_14
.LBB6_9:                                # %if.end17
	movq	1768(%rbx), %rax
	movslq	1760(%rbx), %rcx
	movl	1800(%rbx), %edx
	subl	1792(%rbx), %edx
	shll	$3, %edx
	subl	1824(%rbx), %edx
	leal	64(%rdx), %esi
	addl	$71, %edx
	testl	%esi, %esi
	cmovnsl	%esi, %edx
	leaq	(%rcx,%rcx,2), %rcx
	sarl	$3, %edx
	addl	1784(%rbx), %edx
	subl	16(%rax,%rcx,8), %edx
	movl	%edx, 8(%rax,%rcx,8)
	movl	1760(%rbx), %ecx
	movl	1764(%rbx), %eax
	incl	%ecx
	movl	%ecx, 1760(%rbx)
	cmpl	%eax, %ecx
	jl	.LBB6_12
# %bb.10:                               # %if.then.i.i167
	shll	$4, %eax
	leal	(%rax,%rax,2), %edi
	callq	x264_malloc@PLT
	testq	%rax, %rax
	je	.LBB6_13
# %bb.11:                               # %cleanup.thread.i.i171
	movq	1768(%rbx), %rsi
	movslq	1764(%rbx), %rcx
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	movq	%rax, %rdi
	movq	%rax, %r12
	callq	memcpy@PLT
	movq	1768(%rbx), %rdi
	callq	x264_free@PLT
	movq	%r12, 1768(%rbx)
	shll	1764(%rbx)
.LBB6_12:                               # %if.end21
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	x264_encoder_encapsulate_nals
	movl	1760(%rbx), %ecx
	movl	%ecx, (%r14)
	movq	1768(%rbx), %rcx
	movq	%rcx, (%r15)
	movl	$0, 1760(%rbx)
.LBB6_14:                               # %cleanup
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	x264_encoder_headers, .Lfunc_end6-x264_encoder_headers
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_nal_end
	.type	x264_nal_end,@function
x264_nal_end:                           # @x264_nal_end
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	1768(%rdi), %rax
	movslq	1760(%rdi), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	1800(%rdi), %edx
	subl	1792(%rdi), %edx
	shll	$3, %edx
	subl	1824(%rdi), %edx
	leal	64(%rdx), %esi
	addl	$71, %edx
	testl	%esi, %esi
	cmovnsl	%esi, %edx
	sarl	$3, %edx
	addl	1784(%rdi), %edx
	subl	16(%rax,%rcx,8), %edx
	movl	%edx, 8(%rax,%rcx,8)
	movl	1760(%rdi), %ecx
	movl	1764(%rdi), %eax
	incl	%ecx
	movl	%ecx, 1760(%rdi)
	xorl	%ebp, %ebp
	cmpl	%eax, %ecx
	jl	.LBB7_4
# %bb.1:                                # %if.then.i
	movq	%rdi, %rbx
	shll	$4, %eax
	leal	(%rax,%rax,2), %edi
	callq	x264_malloc@PLT
	testq	%rax, %rax
	je	.LBB7_2
# %bb.3:                                # %cleanup.thread.i
	movq	1768(%rbx), %rsi
	movslq	1764(%rbx), %rcx
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	movq	%rax, %rdi
	movq	%rax, %r14
	callq	memcpy@PLT
	movq	1768(%rbx), %rdi
	callq	x264_free@PLT
	movq	%r14, 1768(%rbx)
	shll	1764(%rbx)
	jmp	.LBB7_4
.LBB7_2:
	movl	$-1, %ebp
.LBB7_4:                                # %x264_nal_check_buffer.exit
	movl	%ebp, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	x264_nal_end, .Lfunc_end7-x264_nal_end
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_encoder_encapsulate_nals
	.type	x264_encoder_encapsulate_nals,@function
x264_encoder_encapsulate_nals:          # @x264_encoder_encapsulate_nals
	.cfi_startproc
# %bb.0:                                # %entry
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
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	xorl	%eax, %eax
	movl	$0, %r12d
	testl	%esi, %esi
	jle	.LBB8_5
# %bb.1:                                # %for.body.lr.ph
	movq	1768(%rbx), %rdx
	movl	%ebp, %ecx
	cmpl	$16, %ebp
	ja	.LBB8_12
# %bb.2:
	xorl	%esi, %esi
	xorl	%r12d, %r12d
	jmp	.LBB8_3
.LBB8_12:                               # %vector.ph
	movl	%ecx, %esi
	andl	$15, %esi
	movl	$16, %edi
	cmovneq	%rsi, %rdi
	movq	%rcx, %rsi
	subq	%rdi, %rsi
	leaq	368(%rdx), %rdi
	pxor	%xmm1, %xmm1
	movq	%rsi, %r8
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pxor	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB8_13:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	-288(%rdi), %xmm4               # xmm4 = mem[0],zero,zero,zero
	movd	-312(%rdi), %xmm5               # xmm5 = mem[0],zero,zero,zero
	punpckldq	%xmm4, %xmm5            # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
	movd	-336(%rdi), %xmm4               # xmm4 = mem[0],zero,zero,zero
	movd	-360(%rdi), %xmm6               # xmm6 = mem[0],zero,zero,zero
	punpckldq	%xmm4, %xmm6            # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1]
	punpcklqdq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0]
	paddd	%xmm6, %xmm1
	movd	-192(%rdi), %xmm4               # xmm4 = mem[0],zero,zero,zero
	movd	-216(%rdi), %xmm5               # xmm5 = mem[0],zero,zero,zero
	punpckldq	%xmm4, %xmm5            # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
	movd	-240(%rdi), %xmm4               # xmm4 = mem[0],zero,zero,zero
	movd	-264(%rdi), %xmm6               # xmm6 = mem[0],zero,zero,zero
	punpckldq	%xmm4, %xmm6            # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1]
	punpcklqdq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0]
	paddd	%xmm6, %xmm3
	movd	-96(%rdi), %xmm4                # xmm4 = mem[0],zero,zero,zero
	movd	-120(%rdi), %xmm5               # xmm5 = mem[0],zero,zero,zero
	punpckldq	%xmm4, %xmm5            # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
	movd	-144(%rdi), %xmm4               # xmm4 = mem[0],zero,zero,zero
	movd	-168(%rdi), %xmm6               # xmm6 = mem[0],zero,zero,zero
	punpckldq	%xmm4, %xmm6            # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1]
	punpcklqdq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0]
	paddd	%xmm6, %xmm2
	movd	(%rdi), %xmm4                   # xmm4 = mem[0],zero,zero,zero
	movd	-24(%rdi), %xmm5                # xmm5 = mem[0],zero,zero,zero
	punpckldq	%xmm4, %xmm5            # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
	movd	-48(%rdi), %xmm4                # xmm4 = mem[0],zero,zero,zero
	movd	-72(%rdi), %xmm6                # xmm6 = mem[0],zero,zero,zero
	punpckldq	%xmm4, %xmm6            # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1]
	punpcklqdq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0]
	paddd	%xmm6, %xmm0
	addq	$384, %rdi                      # imm = 0x180
	addq	$-16, %r8
	jne	.LBB8_13
# %bb.14:                               # %middle.block
	paddd	%xmm1, %xmm3
	paddd	%xmm3, %xmm2
	paddd	%xmm2, %xmm0
	pshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	paddd	%xmm0, %xmm1
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %r12d
.LBB8_3:                                # %for.body.preheader
	subq	%rsi, %rcx
	leaq	(%rsi,%rsi,2), %rsi
	leaq	(%rdx,%rsi,8), %rdx
	addq	$8, %rdx
	.p2align	4, 0x90
.LBB8_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	addl	(%rdx), %r12d
	addq	$24, %rdx
	decq	%rcx
	jne	.LBB8_4
.LBB8_5:                                # %for.cond2.preheader
	movl	1760(%rbx), %ecx
	cmpl	%ebp, %ecx
	jle	.LBB8_10
# %bb.6:                                # %for.body6.lr.ph
	movslq	%ecx, %rdx
	movq	1768(%rbx), %rsi
	movslq	%ebp, %r8
	movq	%rdx, %rdi
	subq	%r8, %rdi
	xorl	%eax, %eax
	cmpq	$16, %rdi
	ja	.LBB8_15
# %bb.7:
	movq	%r8, %rdi
	jmp	.LBB8_8
.LBB8_15:                               # %vector.ph159
	movl	%edi, %r9d
	andl	$15, %r9d
	movl	$16, %eax
	cmovneq	%r9, %rax
	subq	%rax, %rdi
	addq	%r8, %rdi
	addq	%r8, %rax
	subq	%rdx, %rax
	leaq	(%r8,%r8,2), %r8
	leaq	(%rsi,%r8,8), %r8
	addq	$368, %r8                       # imm = 0x170
	pxor	%xmm1, %xmm1
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pxor	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB8_16:                               # %vector.body163
                                        # =>This Inner Loop Header: Depth=1
	movd	-288(%r8), %xmm4                # xmm4 = mem[0],zero,zero,zero
	movd	-312(%r8), %xmm5                # xmm5 = mem[0],zero,zero,zero
	punpckldq	%xmm4, %xmm5            # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
	movd	-336(%r8), %xmm4                # xmm4 = mem[0],zero,zero,zero
	movd	-360(%r8), %xmm6                # xmm6 = mem[0],zero,zero,zero
	punpckldq	%xmm4, %xmm6            # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1]
	punpcklqdq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0]
	paddd	%xmm6, %xmm1
	movd	-192(%r8), %xmm4                # xmm4 = mem[0],zero,zero,zero
	movd	-216(%r8), %xmm5                # xmm5 = mem[0],zero,zero,zero
	punpckldq	%xmm4, %xmm5            # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
	movd	-240(%r8), %xmm4                # xmm4 = mem[0],zero,zero,zero
	movd	-264(%r8), %xmm6                # xmm6 = mem[0],zero,zero,zero
	punpckldq	%xmm4, %xmm6            # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1]
	punpcklqdq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0]
	paddd	%xmm6, %xmm3
	movd	-96(%r8), %xmm4                 # xmm4 = mem[0],zero,zero,zero
	movd	-120(%r8), %xmm5                # xmm5 = mem[0],zero,zero,zero
	punpckldq	%xmm4, %xmm5            # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
	movd	-144(%r8), %xmm4                # xmm4 = mem[0],zero,zero,zero
	movd	-168(%r8), %xmm6                # xmm6 = mem[0],zero,zero,zero
	punpckldq	%xmm4, %xmm6            # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1]
	punpcklqdq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0]
	paddd	%xmm6, %xmm2
	movd	(%r8), %xmm4                    # xmm4 = mem[0],zero,zero,zero
	movd	-24(%r8), %xmm5                 # xmm5 = mem[0],zero,zero,zero
	punpckldq	%xmm4, %xmm5            # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
	movd	-48(%r8), %xmm4                 # xmm4 = mem[0],zero,zero,zero
	movd	-72(%r8), %xmm6                 # xmm6 = mem[0],zero,zero,zero
	punpckldq	%xmm4, %xmm6            # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1]
	punpcklqdq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0]
	paddd	%xmm6, %xmm0
	addq	$384, %r8                       # imm = 0x180
	addq	$16, %rax
	jne	.LBB8_16
# %bb.17:                               # %middle.block156
	paddd	%xmm1, %xmm3
	paddd	%xmm3, %xmm2
	paddd	%xmm2, %xmm0
	pshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	paddd	%xmm0, %xmm1
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %eax
.LBB8_8:                                # %for.body6.preheader
	subq	%rdi, %rdx
	leaq	(%rdi,%rdi,2), %rdi
	leaq	(%rsi,%rdi,8), %rsi
	addq	$8, %rsi
	.p2align	4, 0x90
.LBB8_9:                                # %for.body6
                                        # =>This Inner Loop Header: Depth=1
	addl	(%rsi), %eax
	addq	$24, %rsi
	decq	%rdx
	jne	.LBB8_9
.LBB8_10:                               # %for.cond.cleanup5
	leal	(%rax,%rax,2), %edx
	movl	%edx, %esi
	shrl	$31, %esi
	addl	%edx, %esi
	sarl	%esi
	leal	(%rsi,%rcx,4), %edx
	movslq	%r12d, %r14
	cmpl	%edx, 1840(%rbx)
	jge	.LBB8_11
# %bb.18:                               # %if.then
	shll	$2, %ecx
	leal	(%rcx,%rax,2), %edi
	callq	x264_malloc@PLT
	testq	%rax, %rax
	je	.LBB8_19
# %bb.20:                               # %if.end
	movq	%rax, %r15
	testl	%r12d, %r12d
	je	.LBB8_22
# %bb.21:                               # %if.then28
	movq	1832(%rbx), %rsi
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	memcpy@PLT
.LBB8_22:                               # %if.end29
	movq	1832(%rbx), %rdi
	callq	x264_free@PLT
	movq	%r15, 1832(%rbx)
	movl	1760(%rbx), %ecx
	addq	%r15, %r14
	cmpl	%ebp, %ecx
	jg	.LBB8_24
	jmp	.LBB8_28
.LBB8_11:                               # %for.cond.cleanup5.if.end32_crit_edge
	movq	1832(%rbx), %r15
	addq	%r15, %r14
	cmpl	%ebp, %ecx
	jle	.LBB8_28
.LBB8_24:                               # %for.body42.lr.ph
	movslq	%ebp, %r15
	leaq	(,%r15,8), %rax
	leaq	(%rax,%rax,2), %r13
	jmp	.LBB8_25
	.p2align	4, 0x90
.LBB8_30:                               # %lor.lhs.false
                                        #   in Loop: Header=BB8_25 Depth=1
	movl	4(%rsi,%r13), %eax
	addl	$-7, %eax
	cmpl	$2, %eax
	setb	%al
.LBB8_31:                               # %lor.end
                                        #   in Loop: Header=BB8_25 Depth=1
	movzbl	%al, %ecx
	addq	%r13, %rsi
	movl	640(%rbx), %edx
	movq	%r14, %rdi
	callq	x264_nal_encode@PLT
	movq	1768(%rbx), %rcx
	movl	%eax, 8(%rcx,%r13)
	movq	1768(%rbx), %rcx
	movq	%r14, 16(%rcx,%r13)
	cltq
	addq	%rax, %r14
	incq	%r15
	movslq	1760(%rbx), %rax
	addq	$24, %r13
	cmpq	%rax, %r15
	jge	.LBB8_27
.LBB8_25:                               # %for.body42
                                        # =>This Inner Loop Header: Depth=1
	movq	1768(%rbx), %rsi
	testq	%r15, %r15
	jne	.LBB8_30
# %bb.26:                               #   in Loop: Header=BB8_25 Depth=1
	movb	$1, %al
	jmp	.LBB8_31
.LBB8_27:                               # %for.cond.cleanup41.loopexit
	movq	1832(%rbx), %r15
.LBB8_28:                               # %for.cond.cleanup41
	addl	%r12d, %r15d
	subl	%r15d, %r14d
.LBB8_29:                               # %cleanup82
	movl	%r14d, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB8_19:
	.cfi_def_cfa_offset 64
	movl	$-1, %r14d
	jmp	.LBB8_29
.Lfunc_end8:
	.size	x264_encoder_encapsulate_nals, .Lfunc_end8-x264_encoder_encapsulate_nals
	.cfi_endproc
                                        # -- End function
	.globl	x264_weighted_reference_duplicate # -- Begin function x264_weighted_reference_duplicate
	.p2align	4, 0x90
	.type	x264_weighted_reference_duplicate,@function
x264_weighted_reference_duplicate:      # @x264_weighted_reference_duplicate
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$-1, %eax
	cmpl	$2, 14696(%rdi)
	jl	.LBB9_4
# %bb.1:                                # %if.end
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	%rdi, %r15
	callq	x264_frame_pop_blank_unused@PLT
	movq	%rax, %rbx
	movslq	%ebp, %r12
	movq	14704(%r15,%r12,8), %rsi
	movl	$15632, %edx                    # imm = 0x3D10
	movq	%rax, %rdi
	callq	memcpy@PLT
	movl	$1, 15600(%rbx)
	movq	14704(%r15,%r12,8), %rax
	movq	%rax, 3528(%rbx)
	movl	$1, 3520(%rbx)
	movl	$512, %edi                      # imm = 0x200
	addq	14680(%r15), %rdi
	movl	$192, %edx
	movq	%r14, %rsi
	callq	memcpy@PLT
	movl	$1, 15016(%r15)
	movl	14696(%r15), %eax
	cmpl	$15, %eax
	jg	.LBB9_3
# %bb.2:                                # %if.then9
	incl	%eax
	movl	%eax, 14696(%r15)
.LBB9_3:                                # %if.end11
	movq	$0, 14824(%r15)
	addq	$14712, %r15                    # imm = 0x3978
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	x264_frame_unshift@PLT
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB9_4:                                # %cleanup
	retq
.Lfunc_end9:
	.size	x264_weighted_reference_duplicate, .Lfunc_end9-x264_weighted_reference_duplicate
	.cfi_endproc
                                        # -- End function
	.globl	x264_encoder_intra_refresh      # -- Begin function x264_encoder_intra_refresh
	.p2align	4, 0x90
	.type	x264_encoder_intra_refresh,@function
x264_encoder_intra_refresh:             # @x264_encoder_intra_refresh
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	1744(%rdi), %rax
	movq	704(%rdi,%rax,8), %rax
	movl	$1, 1892(%rax)
	retq
.Lfunc_end10:
	.size	x264_encoder_intra_refresh, .Lfunc_end10-x264_encoder_intra_refresh
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function x264_encoder_encode
.LCPI11_0:
	.long	0xbf800000                      # float -1
.LCPI11_1:
	.long	0x3f800000                      # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI11_2:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	x264_encoder_encode
	.p2align	4, 0x90
	.type	x264_encoder_encode,@function
x264_encoder_encode:                    # @x264_encoder_encode
	.cfi_startproc
# %bb.0:                                # %entry
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
	subq	$296, %rsp                      # imm = 0x128
	.cfi_def_cfa_offset 352
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, %r15
	movq	%rcx, %rbp
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r8
	movl	1852(%rdi), %ecx
	cmpl	$2, %ecx
	jl	.LBB11_25
# %bb.1:                                # %if.then
	movslq	1744(%r8), %rax
	movq	704(%r8,%rax,8), %rbx
	incl	%eax
	cltd
	idivl	%ecx
	movl	%edx, 1744(%r8)
	movslq	%edx, %rax
	movq	704(%r8,%rax,8), %r13
	incl	%eax
                                        # kill: def $eax killed $eax killed $rax
	cltd
	idivl	%ecx
	movslq	%edx, %rax
	movq	704(%r8,%rax,8), %r8
	cmpq	%rbx, %r13
	je	.LBB11_9
# %bb.2:                                # %if.end.i
	movq	%r14, 40(%rsp)                  # 8-byte Spill
	movq	%r12, 64(%rsp)                  # 8-byte Spill
	movq	%r15, %r12
	movq	14448(%rbx), %rax
	testq	%rax, %rax
	je	.LBB11_5
# %bb.3:                                # %for.body.i.preheader
	leaq	14456(%rbx), %rcx
	.p2align	4, 0x90
.LBB11_4:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	incl	15600(%rax)
	movq	(%rcx), %rax
	addq	$8, %rcx
	testq	%rax, %rax
	jne	.LBB11_4
.LBB11_5:                               # %for.cond.cleanup.i
	movq	%r8, %r15
	movq	14448(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB11_8
# %bb.6:                                # %for.body8.i.preheader
	leaq	14456(%r13), %r14
	.p2align	4, 0x90
.LBB11_7:                               # %for.body8.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	x264_frame_push_unused@PLT
	movq	(%r14), %rsi
	addq	$8, %r14
	testq	%rsi, %rsi
	jne	.LBB11_7
.LBB11_8:                               # %for.cond.cleanup7.i
	movq	14688(%rbx), %rax
	incl	15600(%rax)
	movq	14688(%r13), %rsi
	movq	%rbx, %rdi
	callq	x264_frame_push_unused@PLT
	leaq	1844(%r13), %rdi
	leaq	1844(%rbx), %rsi
	movl	$14772, %edx                    # imm = 0x39B4
	callq	memcpy@PLT
	movl	$704, %edx                      # imm = 0x2C0
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	memcpy@PLT
	leaq	26712(%r13), %rdi
	leaq	26712(%rbx), %rsi
	movl	$3688, %edx                     # imm = 0xE68
	callq	memcpy@PLT
	movq	%r15, %r8
	movq	%r12, %r15
	movq	64(%rsp), %r12                  # 8-byte Reload
	movq	40(%rsp), %r14                  # 8-byte Reload
.LBB11_9:                               # %x264_thread_sync_context.exit
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r8, 72(%rsp)                   # 8-byte Spill
	movq	%r8, %rdx
	callq	x264_thread_sync_ratecontrol@PLT
	movq	14688(%r13), %rax
	cmpl	$0, 72(%rax)
	je	.LBB11_26
.LBB11_10:                              # %for.cond.preheader.i
	movl	13732(%r13), %ecx
	testl	%ecx, %ecx
	jle	.LBB11_15
# %bb.11:                               # %for.cond10.preheader.lr.ph.i
	movq	14448(%r13), %rdx
	testq	%rdx, %rdx
	je	.LBB11_15
# %bb.12:                               # %for.cond10.preheader.i.preheader
	movq	%r15, 56(%rsp)                  # 8-byte Spill
	movq	%r14, 40(%rsp)                  # 8-byte Spill
	leaq	14448(%r13), %r14
	xorl	%r15d, %r15d
	movq	%r14, %rbx
	testq	%rdx, %rdx
	jne	.LBB11_21
	jmp	.LBB11_13
.LBB11_24:                              # %for.cond10.preheaderthread-pre-split.i
	movq	(%r14), %rdx
	movq	%r14, %rbx
	testq	%rdx, %rdx
	jne	.LBB11_21
	jmp	.LBB11_13
	.p2align	4, 0x90
.LBB11_20:                              # %for.inc.i
                                        #   in Loop: Header=BB11_21 Depth=1
	movq	8(%rbx), %rdx
	addq	$8, %rbx
	testq	%rdx, %rdx
	je	.LBB11_23
.LBB11_21:                              # %for.body13.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rdx), %eax
	cmpl	13740(%r13,%r15,8), %eax
	jne	.LBB11_20
# %bb.22:                               # %if.then23.i
                                        #   in Loop: Header=BB11_21 Depth=1
	movq	%rbx, %rdi
	callq	x264_frame_shift@PLT
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	x264_frame_push_unused@PLT
	jmp	.LBB11_20
.LBB11_23:                              # %for.cond.cleanup12.loopexit.i
	movl	13732(%r13), %ecx
	incq	%r15
	movslq	%ecx, %rax
	cmpq	%rax, %r15
	jl	.LBB11_24
	jmp	.LBB11_14
.LBB11_13:                              # %for.cond.cleanup12.i
	incq	%r15
	movslq	%ecx, %rax
	cmpq	%rax, %r15
	jl	.LBB11_24
.LBB11_14:                              # %for.cond.cleanup.loopexit84.i
	movq	14688(%r13), %rax
	movq	40(%rsp), %r14                  # 8-byte Reload
	movq	56(%rsp), %r15                  # 8-byte Reload
.LBB11_15:                              # %for.cond.cleanup.i984
	leaq	14448(%r13), %rbx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	x264_frame_push@PLT
	movq	3200(%r13), %rax
	movslq	1076(%rax), %rax
	cmpq	$0, 14448(%r13,%rax,8)
	je	.LBB11_18
# %bb.16:                               # %if.then41.i
	movq	%rbx, %rdi
	callq	x264_frame_shift@PLT
	jmp	.LBB11_17
.LBB11_25:
	movq	%r8, 72(%rsp)                   # 8-byte Spill
	movq	%r8, %r13
	movq	14688(%r13), %rax
	cmpl	$0, 72(%rax)
	jne	.LBB11_10
.LBB11_26:                              # %if.then.i
	cmpl	$2, 1852(%r13)
	jl	.LBB11_28
.LBB11_17:                              # %x264_reference_update.exit
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	x264_frame_push_unused@PLT
.LBB11_18:                              # %x264_reference_update.exit
	movq	%r13, %rdi
	movl	$1, %esi
	callq	x264_frame_pop_unused@PLT
	movq	%rax, 14688(%r13)
	testq	%rax, %rax
	je	.LBB11_19
.LBB11_28:                              # %if.end16
	movl	$-1, 15592(%rax)
	movl	$0, (%r12)
	movq	$0, (%r14)
	testq	%rbp, %rbp
	je	.LBB11_41
# %bb.29:                               # %if.then18
	movq	%r12, 64(%rsp)                  # 8-byte Spill
	movq	%r14, %r12
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	x264_frame_pop_unused@PLT
	movl	$-1, %ebx
	testq	%rax, %rax
	je	.LBB11_111
# %bb.30:                               # %if.end22
	movq	%rax, %r14
	movq	%r13, %rdi
	movq	%rax, %rsi
	movq	%rbp, %rdx
	callq	x264_frame_copy_picture@PLT
	testl	%eax, %eax
	js	.LBB11_111
# %bb.31:                               # %if.end26
	movq	3200(%r13), %rax
	movl	1084(%rax), %ecx
	shll	$4, %ecx
	cmpl	%ecx, 20(%r13)
	jne	.LBB11_33
# %bb.32:                               # %lor.lhs.false
	movl	1088(%rax), %eax
	shll	$4, %eax
	cmpl	%eax, 24(%r13)
	je	.LBB11_34
.LBB11_33:                              # %if.then32
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	x264_frame_expand_border_mod16@PLT
.LBB11_34:                              # %if.end33
	movl	14596(%r13), %eax
	leal	1(%rax), %ecx
	movl	%ecx, 14596(%r13)
	movl	%eax, 56(%r14)
	movl	14616(%r13), %ecx
	testl	%ecx, %ecx
	setne	%dl
	cmpl	%ecx, %eax
	sete	%al
	andb	%dl, %al
	cmpb	$1, %al
	jne	.LBB11_36
# %bb.35:                               # %if.then40
	movq	16(%r14), %rax
	movq	%rax, 14624(%r13)
.LBB11_36:                              # %if.end42
	cmpl	$0, 648(%r13)
	je	.LBB11_39
# %bb.37:                               # %land.lhs.true45
	movq	16(%r14), %rax
	cmpq	14656(%r13), %rax
	jg	.LBB11_39
# %bb.38:                               # %if.then49
	movl	$.L.str.23, %edx
	movq	%r13, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
.LBB11_39:                              # %if.end50
	movq	14656(%r13), %rax
	movq	%rax, 14664(%r13)
	movq	16(%r14), %rax
	movq	%rax, 14656(%r13)
	movl	76(%r14), %eax
	cmpl	$10, %eax
	jb	.LBB11_59
# %bb.40:                               # %if.end63.thread
	movl	$0, 76(%r14)
	jmp	.LBB11_60
.LBB11_41:                              # %if.else131
	movq	33328(%r13), %rax
	movb	$1, (%rax)
.LBB11_42:                              # %if.end132
	incl	1844(%r13)
	movq	14416(%r13), %rdi
	cmpq	$0, (%rdi)
	jne	.LBB11_44
# %bb.43:                               # %if.end139
	movq	%r13, %rdi
	callq	x264_lookahead_get_frames@PLT
	movq	14416(%r13), %rdi
	cmpq	$0, (%rdi)
	je	.LBB11_99
.LBB11_44:                              # %if.end149
	callq	x264_frame_shift@PLT
	movq	%rax, 14680(%r13)
	movl	1852(%r13), %ecx
	decl	%ecx
	cmpl	%ecx, 1844(%r13)
	jne	.LBB11_46
# %bb.45:                               # %if.then158
	movq	24(%rax), %rcx
	movq	%rcx, 15032(%r13)
.LBB11_46:                              # %if.end160
	movq	48(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB11_49
# %bb.47:                               # %if.then164
	movq	%r13, %rdi
	callq	x264_encoder_reconfig
	movq	14680(%r13), %rax
	movq	48(%rax), %rdi
	movq	696(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB11_49
# %bb.48:                               # %if.then171
	callq	*%rcx
	movq	14680(%r13), %rax
.LBB11_49:                              # %if.end178
	cmpl	$0, 80(%rax)
	je	.LBB11_52
# %bb.50:                               # %if.then181
	movl	56(%rax), %ecx
	movl	%ecx, 14592(%r13)
	cmpl	$1, 4(%rax)
	jne	.LBB11_52
# %bb.51:                               # %if.then188
	movl	$0, 1848(%r13)
.LBB11_52:                              # %if.end190
	movq	$0, 13728(%r13)
	movq	$0, 15016(%r13)
	movl	4(%rax), %ecx
	decl	%ecx
	cmpl	$3, %ecx
	movq	%r14, 40(%rsp)                  # 8-byte Spill
	ja	.LBB11_66
# %bb.53:                               # %if.end190
	jmpq	*.LJTI11_0(,%rcx,8)
.LBB11_54:                              # %if.then198
	movl	$2, 7248(%r13)
	cmpq	$0, 14448(%r13)
	je	.LBB11_58
# %bb.55:                               # %while.body.i.preheader
	leaq	14448(%r13), %rbx
	.p2align	4, 0x90
.LBB11_56:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	x264_frame_pop@PLT
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	x264_frame_push_unused@PLT
	cmpq	$0, 14448(%r13)
	jne	.LBB11_56
# %bb.57:                               # %x264_reference_reset.exit.loopexit
	movq	14680(%r13), %rax
.LBB11_58:                              # %x264_reference_reset.exit
	movl	$0, (%rax)
	movq	14688(%r13), %rax
	movl	$0, (%rax)
	movl	$5, %r14d
	movb	$1, %al
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	movl	$3, %r11d
	jmp	.LBB11_68
.LBB11_59:                              # %if.end63
	testl	%eax, %eax
	jne	.LBB11_103
.LBB11_60:                              # %if.then66
	movq	48(%r14), %rcx
	testq	%rcx, %rcx
	cmoveq	%r13, %rcx
	cmpl	$0, 136(%rcx)
	je	.LBB11_101
# %bb.61:                               # %if.then74
	xorl	%eax, %eax
	cmpl	$1, 672(%rcx)
	adcl	$4, %eax
	jmp	.LBB11_102
.LBB11_62:                              # %if.then212
	movl	$0, 7248(%r13)
	jmp	.LBB11_65
.LBB11_63:                              # %if.then219
	xorl	%ebx, %ebx
	cmpl	$1, 112(%r13)
	setne	%bl
	incl	%ebx
	movl	$1, 7248(%r13)
	movq	%r13, %rdi
	callq	x264_reference_hierarchy_reset
	movl	%ebx, %r11d
	movl	$1, %r14d
	jmp	.LBB11_67
.LBB11_64:                              # %if.then205
	movl	$2, 7248(%r13)
.LBB11_65:                              # %if.end231
	movq	%r13, %rdi
	callq	x264_reference_hierarchy_reset
	movl	$1, %r14d
	movl	$2, %r11d
	jmp	.LBB11_67
.LBB11_66:                              # %if.else225
	movl	$1, 7248(%r13)
	movl	$1, %r14d
	xorl	%r11d, %r11d
.LBB11_67:                              # %if.end231
	movl	$0, 36(%rsp)                    # 4-byte Folded Spill
.LBB11_68:                              # %if.end231
	movq	14680(%r13), %rax
	movl	56(%rax), %ecx
	subl	14592(%r13), %ecx
	addl	%ecx, %ecx
	movl	%ecx, (%rax)
	movq	14688(%r13), %rax
	movl	%ecx, (%rax)
	movq	14680(%r13), %rax
	movq	14688(%r13), %rcx
	movl	4(%rax), %eax
	movl	%eax, 4(%rcx)
	movq	14680(%r13), %rax
	movq	14688(%r13), %rcx
	movl	56(%rax), %eax
	movl	%eax, 56(%rcx)
	testl	%r11d, %r11d
	je	.LBB11_70
# %bb.69:                               # %land.rhs
	cmpl	$2, 84(%r13)
	setge	%al
	jmp	.LBB11_71
.LBB11_70:
	xorl	%eax, %eax
.LBB11_71:                              # %land.end
	movzbl	%al, %eax
	movq	14688(%r13), %rcx
	movl	%eax, 72(%rcx)
	movq	14680(%r13), %rcx
	movl	%eax, 72(%rcx)
	movq	14688(%r13), %rax
	movl	(%rax), %eax
	leaq	14696(%r13), %rbx
	movl	$0, 14696(%r13)
	movq	$0, 21416(%r13)
	movl	$0, 14856(%r13)
	cmpl	$2, 7248(%r13)
	movl	%r11d, 52(%rsp)                 # 4-byte Spill
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	je	.LBB11_144
# %bb.72:                               # %for.cond.preheader.i992
	movq	14448(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB11_79
# %bb.73:                               # %for.body.i994.preheader
	leaq	14856(%r13), %rdx
	leaq	14456(%r13), %rsi
	jmp	.LBB11_76
	.p2align	4, 0x90
.LBB11_74:                              # %for.inc.sink.split.i
                                        #   in Loop: Header=BB11_76 Depth=1
	addq	%r13, %rdi
	movslq	(%r8), %r9
	leal	1(%r9), %r10d
	movl	%r10d, (%r8)
	movq	%rcx, (%rdi,%r9,8)
.LBB11_75:                              # %for.inc.i996
                                        #   in Loop: Header=BB11_76 Depth=1
	movq	(%rsi), %rcx
	addq	$8, %rsi
	testq	%rcx, %rcx
	je	.LBB11_78
.LBB11_76:                              # %for.body.i994
                                        # =>This Inner Loop Header: Depth=1
	movl	$14704, %edi                    # imm = 0x3970
	movq	%rbx, %r8
	cmpl	%eax, (%rcx)
	jl	.LBB11_74
# %bb.77:                               # %if.else.i
                                        #   in Loop: Header=BB11_76 Depth=1
	movl	$14864, %edi                    # imm = 0x3A10
	movq	%rdx, %r8
	jg	.LBB11_74
	jmp	.LBB11_75
.LBB11_78:                              # %do.body.preheader.loopexit.i
	movl	(%rbx), %eax
	jmp	.LBB11_80
.LBB11_79:
	xorl	%eax, %eax
.LBB11_80:                              # %do.body.preheader.i
	cmpl	$2, %eax
	movl	$1, %ecx
	cmovgel	%eax, %ecx
	decl	%ecx
	.p2align	4, 0x90
.LBB11_81:                              # %for.cond39.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_82 Depth 2
	xorl	%esi, %esi
.LBB11_82:                              # %for.cond39.i
                                        #   Parent Loop BB11_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rcx, %rsi
	je	.LBB11_85
# %bb.83:                               # %for.body43.i
                                        #   in Loop: Header=BB11_82 Depth=2
	movq	%rsi, %rdx
	movq	14704(%r13,%rsi,8), %rdi
	movq	14712(%r13,%rsi,8), %r8
	movl	(%rdi), %r9d
	incq	%rsi
	cmpl	(%r8), %r9d
	jge	.LBB11_82
# %bb.84:                               # %do.body54.i
                                        #   in Loop: Header=BB11_81 Depth=1
	movq	%r8, 14704(%r13,%rdx,8)
	movq	%rdi, 14712(%r13,%rdx,8)
	jmp	.LBB11_81
.LBB11_85:                              # %do.end75.i
	movl	13728(%r13), %ecx
	testl	%ecx, %ecx
	je	.LBB11_89
# %bb.86:                               # %for.cond82.preheader.i
	movl	(%rbx), %edx
	subl	%ecx, %edx
	cmpl	%edx, %eax
	jle	.LBB11_89
# %bb.87:                               # %for.body89.lr.ph.i
	cltq
	movl	13732(%r13), %ecx
	.p2align	4, 0x90
.LBB11_88:                              # %for.body89.i
                                        # =>This Inner Loop Header: Depth=1
	movl	1848(%r13), %edx
	movq	14696(%r13,%rax,8), %rsi
	subl	68(%rsi), %edx
	decq	%rax
	movl	(%rsi), %esi
	movslq	%ecx, %rcx
	movl	%esi, 13740(%r13,%rcx,8)
	movslq	13732(%r13), %rsi
	leal	1(%rsi), %ecx
	movl	%ecx, 13732(%r13)
	movl	%edx, 13736(%r13,%rsi,8)
	movslq	14696(%r13), %rdx
	movslq	13728(%r13), %rsi
	subq	%rsi, %rdx
	cmpq	%rdx, %rax
	jg	.LBB11_88
.LBB11_89:                              # %if.end114.i
	movl	14856(%r13), %eax
	cmpl	$2, %eax
	movl	$1, %ecx
	cmovgel	%eax, %ecx
	decl	%ecx
	.p2align	4, 0x90
.LBB11_90:                              # %for.cond117.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_91 Depth 2
	xorl	%esi, %esi
.LBB11_91:                              # %for.cond117.i
                                        #   Parent Loop BB11_90 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rcx, %rsi
	je	.LBB11_94
# %bb.92:                               # %for.body122.i
                                        #   in Loop: Header=BB11_91 Depth=2
	movq	%rsi, %rdx
	movq	14864(%r13,%rsi,8), %rdi
	movq	14872(%r13,%rsi,8), %r8
	movl	(%rdi), %r9d
	incq	%rsi
	cmpl	(%r8), %r9d
	jle	.LBB11_91
# %bb.93:                               # %do.body134.i
                                        #   in Loop: Header=BB11_90 Depth=1
	movq	%r8, 14864(%r13,%rdx,8)
	movq	%rdi, 14872(%r13,%rdx,8)
	jmp	.LBB11_90
.LBB11_94:                              # %do.end160.i
	movl	(%rbx), %ecx
	cmpl	$2, %ecx
	jl	.LBB11_120
# %bb.95:                               # %for.body.lr.ph.i.i
	leal	-1(%rcx), %edx
	cmpl	$0, 7248(%r13)
	movq	14704(%r13), %rsi
	je	.LBB11_116
# %bb.96:                               # %for.body.preheader.i.i
	movl	(%rsi), %edi
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB11_97:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, %r8d
	movq	14712(%r13,%rsi,8), %rdi
	movl	(%rdi), %edi
	cmpl	%edi, %r8d
	jl	.LBB11_119
# %bb.98:                               # %for.inc.i.i
                                        #   in Loop: Header=BB11_97 Depth=1
	incq	%rsi
	cmpq	%rsi, %rdx
	jne	.LBB11_97
	jmp	.LBB11_120
.LBB11_99:                              # %land.lhs.true144
	movq	%r13, %rdi
	callq	x264_lookahead_is_empty@PLT
	testl	%eax, %eax
	je	.LBB11_130
# %bb.100:                              # %if.then147
	movq	72(%rsp), %rdi                  # 8-byte Reload
	movq	%r13, %rsi
	movq	%r14, %rdx
	movq	%r12, %rcx
	movq	%r15, %r8
	addq	$296, %rsp                      # imm = 0x128
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	x264_encoder_frame_end          # TAILCALL
.LBB11_101:
	.cfi_def_cfa_offset 352
	movl	$1, %eax
.LBB11_102:                             # %if.end90
	movl	%eax, 76(%r14)
.LBB11_103:                             # %if.end91
	cmpl	$0, 14672(%r13)
	je	.LBB11_108
# %bb.104:                              # %if.then94
	movl	396(%r13), %eax
	cmpl	$2, %eax
	je	.LBB11_106
# %bb.105:                              # %if.then94
	cmpl	$-1, %eax
	jne	.LBB11_107
.LBB11_106:                             # %if.then102
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	x264_weight_plane_analyse@PLT
.LBB11_107:                             # %if.end103
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	x264_frame_init_lowres@PLT
.LBB11_108:                             # %if.end104
	cmpl	$0, 552(%r13)
	je	.LBB11_112
# %bb.109:                              # %land.lhs.true107
	cmpl	$0, 576(%r13)
	je	.LBB11_112
# %bb.110:                              # %if.then111
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	x264_macroblock_tree_read@PLT
	testl	%eax, %eax
	jne	.LBB11_111
	jmp	.LBB11_114
.LBB11_112:                             # %if.else116
	cmpl	$0, 544(%r13)
	je	.LBB11_114
# %bb.113:                              # %if.then120
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	x264_adaptive_quant_frame@PLT
.LBB11_114:                             # %if.end122
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	x264_lookahead_put_frame@PLT
	movl	14612(%r13), %eax
	subl	1852(%r13), %eax
	incl	%eax
	cmpl	%eax, 14596(%r13)
	movq	%r12, %r14
	movq	64(%rsp), %r12                  # 8-byte Reload
	jg	.LBB11_42
# %bb.115:                              # %if.then129
	movl	$0, (%r15)
	xorl	%ebx, %ebx
	jmp	.LBB11_111
.LBB11_116:                             # %for.body.us.preheader.i.i
	movl	68(%rsi), %edi
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB11_117:                             # %for.body.us.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, %r8d
	movq	14712(%r13,%rsi,8), %rdi
	movl	68(%rdi), %edi
	cmpl	%edi, %r8d
	jl	.LBB11_119
# %bb.118:                              # %for.inc.us.i.i
                                        #   in Loop: Header=BB11_117 Depth=1
	incq	%rsi
	cmpq	%rsi, %rdx
	jne	.LBB11_117
	jmp	.LBB11_120
.LBB11_119:                             # %if.then.i.i
	movl	$1, 15016(%r13)
.LBB11_120:                             # %x264_reference_check_reorder.exit.i
	movl	14608(%r13), %edx
	cmpl	%edx, %eax
	cmovll	%eax, %edx
	movl	%edx, 14856(%r13)
	movl	14604(%r13), %eax
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	movl	80(%r13), %ecx
	cmpl	%ecx, %eax
	cmovgel	%ecx, %eax
	movl	%eax, 14696(%r13)
	movq	14680(%r13), %rsi
	cmpl	$3, 4(%rsi)
	jne	.LBB11_143
# %bb.121:                              # %if.then191.i
	movl	396(%r13), %eax
	cmpl	$1, %eax
	je	.LBB11_129
# %bb.122:                              # %if.then191.i
	movl	$-1, %ebx
	cmpl	$2, %eax
	jne	.LBB11_142
# %bb.123:                              # %if.then194.i
	movq	$0, 272(%rsp)
	movq	$0, 208(%rsp)
	cmpl	$0, 576(%r13)
	je	.LBB11_125
# %bb.124:                              # %if.then200.i
	movq	%r13, %rdi
	callq	x264_ratecontrol_set_weights@PLT
	movq	14680(%r13), %rsi
.LBB11_125:                             # %if.end202.i
	movq	24(%rsp), %rbx                  # 8-byte Reload
	cmpq	$0, 368(%rsi)
	je	.LBB11_131
# %bb.126:                              # %if.else218.i
	movzbl	352(%rsi), %ecx
	movl	$1, %eax
	shll	%cl, %eax
	cmpl	%eax, 356(%rsi)
	jne	.LBB11_127
# %bb.133:                              # %if.then230.i
	movl	$1, 356(%rsi)
	movq	14680(%r13), %rax
	movl	$0, 352(%rax)
	movl	$320, %esi                      # imm = 0x140
	addq	14680(%r13), %rsi
	movq	%r13, %rdi
	callq	*32896(%r13)
	cmpl	$2, (%rbx)
	jl	.LBB11_128
.LBB11_134:                             # %if.end.i448.i
	movq	%r13, %rdi
	callq	x264_frame_pop_blank_unused@PLT
	movq	%rax, %rbx
	movq	14704(%r13), %rsi
	movl	$15632, %edx                    # imm = 0x3D10
	movq	%rax, %rdi
	callq	memcpy@PLT
	movl	$1, 15600(%rbx)
	movq	14704(%r13), %rax
	movq	%rax, 3528(%rbx)
	movl	$1, 3520(%rbx)
	movl	$512, %edi                      # imm = 0x200
	addq	14680(%r13), %rdi
	movq	weight_none@GOTPCREL(%rip), %rsi
	movl	$192, %edx
	callq	memcpy@PLT
	movl	$1, 15016(%r13)
	movl	14696(%r13), %eax
	cmpl	$15, %eax
	jg	.LBB11_136
# %bb.135:                              # %if.then9.i462.i
	incl	%eax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movl	%eax, (%rcx)
.LBB11_136:                             # %if.end11.i458.i
	movq	$0, 14824(%r13)
	leaq	14712(%r13), %rdi
	movq	%rbx, %rsi
	callq	x264_frame_unshift@PLT
	movq	14680(%r13), %rax
	movl	$-1, %ebx
	cmpl	$-127, 360(%rax)
	jl	.LBB11_141
	jmp	.LBB11_137
.LBB11_129:                             # %if.then286.i
	movabsq	$4294967296, %rax               # imm = 0x100000000
	movq	%rax, 128(%rsp)
	movl	$-1, 136(%rsp)
	leaq	96(%rsp), %rsi
	movq	%r13, %rdi
	callq	*32896(%r13)
	movq	14680(%r13), %rax
	movl	$0, 352(%rax)
	movq	$0, 272(%rsp)
	movq	$0, 208(%rsp)
	movl	$-1, %ebx
	cmpl	$2, 14696(%r13)
	jge	.LBB11_138
	jmp	.LBB11_141
.LBB11_130:                             # %land.lhs.true144.if.end149_crit_edge
	movq	14416(%r13), %rdi
	jmp	.LBB11_44
.LBB11_127:                             # %if.end257.i
	cmpl	$2, (%rbx)
	jge	.LBB11_134
.LBB11_128:                             # %x264_weighted_reference_duplicate.exit464.i
	movq	14680(%r13), %rax
	movl	$-1, %ebx
	cmpl	$-127, 360(%rax)
	jl	.LBB11_141
.LBB11_137:                             # %if.then265.i
	movapd	320(%rax), %xmm0
	movaps	336(%rax), %xmm1
	movapd	352(%rax), %xmm2
	movaps	368(%rax), %xmm3
	movapd	%xmm2, 128(%rsp)
	movaps	%xmm3, 144(%rsp)
	movaps	%xmm1, 112(%rsp)
	movapd	%xmm0, 96(%rsp)
	decl	136(%rsp)
	leaq	96(%rsp), %rsi
	movq	%r13, %rdi
	callq	*32896(%r13)
	cmpl	$2, 14696(%r13)
	jl	.LBB11_141
.LBB11_138:                             # %if.end.i486.i
	movq	%r13, %rdi
	callq	x264_frame_pop_blank_unused@PLT
	movq	%rax, %rbx
	movq	14704(%r13), %rsi
	movl	$15632, %edx                    # imm = 0x3D10
	movq	%rax, %rdi
	callq	memcpy@PLT
	movl	$1, 15600(%rbx)
	movq	14704(%r13), %rax
	movq	%rax, 3528(%rbx)
	movl	$1, 3520(%rbx)
	movl	$512, %edi                      # imm = 0x200
	addq	14680(%r13), %rdi
	leaq	96(%rsp), %rsi
	movl	$192, %edx
	callq	memcpy@PLT
	movl	$1, 15016(%r13)
	movl	14696(%r13), %eax
	cmpl	$15, %eax
	jg	.LBB11_140
.LBB11_139:                             # %if.then9.i500.i
	incl	%eax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movl	%eax, (%rcx)
.LBB11_140:                             # %if.end11.i496.i
	movq	$0, 14824(%r13)
	leaq	14712(%r13), %rdi
	movq	%rbx, %rsi
	callq	x264_frame_unshift@PLT
	movl	$1, %ebx
.LBB11_141:                             # %x264_weighted_reference_duplicate.exit502.i
	movl	52(%rsp), %r11d                 # 4-byte Reload
.LBB11_142:                             # %if.end309.i
	movl	%ebx, 26652(%r13)
	movl	14696(%r13), %eax
	movl	14856(%r13), %edx
	movq	24(%rsp), %rbx                  # 8-byte Reload
.LBB11_143:                             # %if.end311.i
	movl	%eax, 21416(%r13)
	movl	%edx, 21420(%r13)
.LBB11_144:                             # %x264_reference_build_list.exit
	cmpl	$0, 8(%r13)
	je	.LBB11_155
# %bb.145:                              # %for.cond.preheader
	cmpl	$0, 4(%r13)
	jle	.LBB11_148
# %bb.146:                              # %for.body.lr.ph
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB11_147:                             # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	704(%r13,%rax,8), %rdx
	movq	1784(%rdx), %rsi
	movslq	1776(%rdx), %rdi
	movq	%rsi, %r8
	addq	%rsi, %rdi
	leal	(,%rsi,8), %ecx
                                        # kill: def $esi killed $esi killed $rsi
	andl	$3, %esi
	andq	$-4, %r8
	movq	%r8, 1792(%rdx)
	movq	%r8, 1800(%rdx)
	movq	%rdi, 1808(%rdx)
	shll	$3, %esi
	movl	$64, %edi
	subl	%esi, %edi
	movl	%edi, 1824(%rdx)
	movl	(%r8), %esi
	bswapl	%esi
	andb	$24, %cl
	addb	$32, %cl
	negb	%cl
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rsi
	movq	%rsi, 1816(%rdx)
	movq	704(%r13,%rax,8), %rcx
	movl	$0, 1760(%rcx)
	incq	%rax
	movslq	4(%r13), %rcx
	cmpq	%rcx, %rax
	jl	.LBB11_147
.LBB11_148:                             # %if.end288
	cmpl	$0, 632(%r13)
	je	.LBB11_156
.LBB11_149:                             # %if.then291
	movl	7248(%r13), %ecx
	movl	$7, %eax
	cmpq	$2, %rcx
	ja	.LBB11_151
# %bb.150:                              # %switch.lookup
	movq	.Lswitch.table.x264_encoder_encode(,%rcx,8), %rax
.LBB11_151:                             # %if.end309
	movq	1768(%r13), %rcx
	movslq	1760(%r13), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	movabsq	$38654705664, %rsi              # imm = 0x900000000
	movq	%rsi, (%rcx,%rdx,8)
	movl	$0, 8(%rcx,%rdx,8)
	movl	1800(%r13), %esi
	subl	1792(%r13), %esi
	shll	$3, %esi
	subl	1824(%r13), %esi
	leal	64(%rsi), %edi
	addl	$71, %esi
	testl	%edi, %edi
	cmovnsl	%edi, %esi
	sarl	$3, %esi
	movslq	%esi, %rsi
	addq	1784(%r13), %rsi
	movq	%rsi, 16(%rcx,%rdx,8)
	movq	1816(%r13), %rcx
	leaq	(%rax,%rcx,8), %rdx
	movq	%rdx, 1816(%r13)
	movl	1824(%r13), %ecx
	leal	-3(%rcx), %eax
	movl	%eax, 1824(%r13)
	cmpl	$35, %ecx
	jg	.LBB11_153
# %bb.152:                              # %if.then.i1028
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	1800(%r13), %rax
	movl	%edx, (%rax)
	movl	1824(%r13), %eax
	addl	$32, %eax
	addq	$4, 1800(%r13)
	movq	1816(%r13), %rdx
.LBB11_153:                             # %bs_write.exit
	leaq	1(,%rdx,2), %rsi
	movq	%rsi, 1816(%r13)
	decl	%eax
	cmpl	$32, %eax
	jne	.LBB11_157
# %bb.154:                              # %bs_write1.exit.thread.i
	bswapl	%esi
	movq	1800(%r13), %rax
	movl	%esi, (%rax)
	movq	1800(%r13), %rdx
	addq	$4, %rdx
	movq	%rdx, 1800(%r13)
	movl	$64, 1824(%r13)
	movl	$64, %eax
	jmp	.LBB11_159
.LBB11_155:                             # %if.else279
	movq	1784(%r13), %rax
	movslq	1776(%r13), %rdx
	movq	%rax, %rsi
	addq	%rax, %rdx
	leal	(,%rax,8), %ecx
                                        # kill: def $eax killed $eax killed $rax
	andl	$3, %eax
	andq	$-4, %rsi
	movq	%rsi, 1792(%r13)
	movq	%rsi, 1800(%r13)
	movq	%rdx, 1808(%r13)
	shll	$3, %eax
	movl	$64, %edx
	subl	%eax, %edx
	movl	%edx, 1824(%r13)
	movl	(%rsi), %eax
	bswapl	%eax
	andb	$24, %cl
	addb	$32, %cl
	negb	%cl
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rax
	movq	%rax, 1816(%r13)
	movl	$0, 1760(%r13)
	cmpl	$0, 632(%r13)
	jne	.LBB11_149
.LBB11_156:
	movl	$5, %ebp
	movl	%r14d, 1856(%r13)
	movl	%r11d, 1860(%r13)
	cmpl	$0, 96(%r13)
	jne	.LBB11_164
	jmp	.LBB11_172
.LBB11_157:                             # %bs_write1.exit.i
	movl	%eax, %ecx
	andb	$7, %cl
	shlq	%cl, %rsi
	movq	%rsi, 1816(%r13)
	andl	$-8, %eax
	movl	%eax, 1824(%r13)
	movq	1800(%r13), %rdx
	cmpl	$32, %eax
	jg	.LBB11_159
# %bb.158:                              # %if.then.i8.i
	bswapq	%rsi
	movl	%eax, %ecx
	shrq	%cl, %rsi
	movl	%esi, (%rdx)
	movl	1824(%r13), %eax
	addl	$32, %eax
	movl	%eax, 1824(%r13)
	movq	1800(%r13), %rdx
	addq	$4, %rdx
	movq	%rdx, 1800(%r13)
.LBB11_159:                             # %bs_rbsp_trailing.exit
	movq	1768(%r13), %rcx
	subl	1792(%r13), %edx
	movslq	1760(%r13), %rsi
	shll	$3, %edx
	subl	%eax, %edx
	leal	64(%rdx), %eax
	addl	$71, %edx
	testl	%eax, %eax
	cmovnsl	%eax, %edx
	leaq	(%rsi,%rsi,2), %rax
	sarl	$3, %edx
	addl	1784(%r13), %edx
	subl	16(%rcx,%rax,8), %edx
	movl	%edx, 8(%rcx,%rax,8)
	movl	1760(%r13), %eax
	movl	1764(%r13), %ecx
	incl	%eax
	movl	%eax, 1760(%r13)
	cmpl	%ecx, %eax
	jge	.LBB11_161
# %bb.160:                              # %bs_rbsp_trailing.exit.cleanup336.thread_crit_edge
	movq	1768(%r13), %rbx
	jmp	.LBB11_163
.LBB11_161:                             # %if.then.i.i1054
	shll	$4, %ecx
	leal	(%rcx,%rcx,2), %edi
	callq	x264_malloc@PLT
	testq	%rax, %rax
	je	.LBB11_19
# %bb.162:                              # %cleanup.thread.i.i
	movq	%rax, %rbx
	movq	1768(%r13), %rsi
	movslq	1764(%r13), %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rdx
	movq	%rbx, %rdi
	callq	memcpy@PLT
	movq	1768(%r13), %rdi
	callq	x264_free@PLT
	movq	%rbx, 1768(%r13)
	shll	1764(%r13)
	movl	1760(%r13), %eax
	movl	52(%rsp), %r11d                 # 4-byte Reload
.LBB11_163:                             # %cleanup336.thread
	decl	%eax
	cltq
	leaq	(%rax,%rax,2), %rcx
	cmpl	$0, 640(%r13)
	movl	8(%rbx,%rcx,8), %ebp
	setne	%cl
	testl	%eax, %eax
	setne	%al
	andb	%cl, %al
	movzbl	%al, %eax
	subl	%eax, %ebp
	addl	$10, %ebp
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movl	%r14d, 1856(%r13)
	movl	%r11d, 1860(%r13)
	cmpl	$0, 96(%r13)
	je	.LBB11_172
.LBB11_164:                             # %if.then344
	movq	14680(%r13), %rax
	movl	4(%rax), %eax
	leal	-1(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB11_166
# %bb.165:                              # %if.then352
	movq	14688(%r13), %rax
	movl	$0, 15624(%rax)
	movl	$0, 1892(%r13)
	movq	3200(%r13), %rax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	1084(%rax), %xmm0
	movq	14688(%r13), %rax
	movss	%xmm0, 15612(%rax)
	jmp	.LBB11_172
.LBB11_166:                             # %if.then344
	cmpl	$3, %eax
	jne	.LBB11_172
# %bb.167:                              # %if.then362
	movq	14688(%r13), %rcx
	movl	(%rcx), %edx
	movq	14704(%r13), %rsi
	subl	(%rsi), %edx
	movq	3200(%r13), %rax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	1084(%rax), %xmm0
	movl	%edx, %eax
	addss	.LCPI11_0(%rip), %xmm0
	shrl	$31, %eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	84(%r13), %xmm1
	addl	%edx, %eax
	divss	%xmm1, %xmm0
	maxss	.LCPI11_1(%rip), %xmm0
	sarl	%eax
	movss	15612(%rsi), %xmm1              # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 15612(%rcx)
	movq	14688(%r13), %rcx
	movq	14704(%r13), %rdx
	movl	15624(%rdx), %edx
	addl	%eax, %edx
	movl	%edx, 15624(%rcx)
	movq	14688(%r13), %rcx
	movl	15624(%rcx), %edx
	cmpl	84(%r13), %edx
	jge	.LBB11_170
# %bb.168:                              # %lor.lhs.false407
	cmpl	$0, 1892(%r13)
	je	.LBB11_171
# %bb.169:                              # %land.lhs.true410
	movss	15612(%rcx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	addsd	.LCPI11_2(%rip), %xmm1
	movq	3200(%r13), %rdx
	cvtsi2sdl	1084(%rdx), %xmm2
	ucomisd	%xmm2, %xmm1
	jb	.LBB11_171
.LBB11_170:                             # %if.then420
	movl	$0, 15612(%rcx)
	movq	14688(%r13), %rcx
	movl	$0, 15624(%rcx)
	movl	$0, 1892(%r13)
	movq	14680(%r13), %rcx
	movl	$1, 80(%rcx)
	movq	14688(%r13), %rcx
.LBB11_171:                             # %if.end428
	movss	15612(%rcx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	.LCPI11_2(%rip), %xmm2          # xmm2 = [5.0E-1,0.0E+0]
	addsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %edx
	movl	%edx, 15616(%rcx)
	xorps	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	mulss	%xmm1, %xmm0
	movq	14688(%r13), %rax
	addss	15612(%rax), %xmm0
	movss	%xmm0, 15612(%rax)
	movq	14688(%r13), %rax
	movss	15612(%rax), %xmm0              # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, 15620(%rax)
.LBB11_172:                             # %if.end447
	movq	14680(%r13), %rax
	cmpl	$0, 80(%rax)
	je	.LBB11_176
# %bb.173:                              # %if.then451
	cmpl	$0, 636(%r13)
	je	.LBB11_177
# %bb.174:                              # %if.then454
	movq	1768(%r13), %rax
	movslq	1760(%r13), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movabsq	$30064771075, %rdx              # imm = 0x700000003
	movq	%rdx, (%rax,%rcx,8)
	movl	$0, 8(%rax,%rcx,8)
	movl	1800(%r13), %edx
	subl	1792(%r13), %edx
	shll	$3, %edx
	subl	1824(%r13), %edx
	leaq	1792(%r13), %r14
	leal	64(%rdx), %esi
	addl	$71, %edx
	testl	%esi, %esi
	cmovnsl	%esi, %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	addq	1784(%r13), %rdx
	movq	%rdx, 16(%rax,%rcx,8)
	movq	3200(%r13), %rsi
	movq	%r14, %rdi
	callq	x264_sps_write@PLT
	movq	1768(%r13), %rax
	movslq	1760(%r13), %rcx
	movl	1800(%r13), %edx
	subl	1792(%r13), %edx
	shll	$3, %edx
	subl	1824(%r13), %edx
	leal	64(%rdx), %esi
	addl	$71, %edx
	testl	%esi, %esi
	cmovnsl	%esi, %edx
	leaq	(%rcx,%rcx,2), %rcx
	sarl	$3, %edx
	addl	1784(%r13), %edx
	subl	16(%rax,%rcx,8), %edx
	movl	%edx, 8(%rax,%rcx,8)
	movl	1760(%r13), %eax
	movl	1764(%r13), %ecx
	incl	%eax
	movl	%eax, 1760(%r13)
	cmpl	%ecx, %eax
	jge	.LBB11_199
# %bb.175:                              # %if.then454.if.end461_crit_edge
	movq	%r15, 56(%rsp)                  # 8-byte Spill
	movq	1768(%r13), %rbx
	jmp	.LBB11_201
.LBB11_176:
	movq	40(%rsp), %r14                  # 8-byte Reload
	jmp	.LBB11_179
.LBB11_177:
	movq	40(%rsp), %r14                  # 8-byte Reload
	cmpl	$1, 4(%rax)
	je	.LBB11_179
.LBB11_178:                             # %if.then534
	movq	3200(%r13), %rax
	movl	1084(%rax), %eax
	movl	84(%r13), %ecx
	leal	-1(%rax), %edx
	cmpl	%ecx, %eax
	cmovgl	%ecx, %edx
	addl	100(%r13), %edx
	movq	1768(%r13), %rax
	movslq	1760(%r13), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movabsq	$25769803776, %rsi              # imm = 0x600000000
	movq	%rsi, (%rax,%rcx,8)
	movl	$0, 8(%rax,%rcx,8)
	leaq	1792(%r13), %rsi
	movl	1800(%r13), %edi
	subl	1792(%r13), %edi
	shll	$3, %edi
	subl	1824(%r13), %edi
	leal	64(%rdi), %r8d
	addl	$71, %edi
	testl	%r8d, %r8d
	cmovnsl	%r8d, %edi
	sarl	$3, %edi
	movslq	%edi, %rdi
	addq	1784(%r13), %rdi
	movq	%rdi, 16(%rax,%rcx,8)
	movq	%r13, %rdi
	callq	x264_sei_recovery_point_write@PLT
	movq	%r13, %rdi
	callq	x264_nal_end
	movq	1768(%r13), %rax
	movslq	1760(%r13), %rcx
	cmpq	$1, %rcx
	setne	%dl
	cmpl	$0, 640(%r13)
	setne	%sil
	leaq	(%rcx,%rcx,2), %rcx
	addl	-16(%rax,%rcx,8), %ebp
	andb	%dl, %sil
	movzbl	%sil, %eax
	subl	%eax, %ebp
	addl	$5, %ebp
.LBB11_179:                             # %if.end578
	movq	3200(%r13), %rax
	cmpl	$0, 1260(%rax)
	jne	.LBB11_181
# %bb.180:                              # %lor.lhs.false581
	cmpl	$0, 1204(%rax)
	je	.LBB11_186
.LBB11_181:                             # %if.then585
	movq	1768(%r13), %rax
	movslq	1760(%r13), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movabsq	$25769803776, %rdx              # imm = 0x600000000
	movq	%rdx, (%rax,%rcx,8)
	movl	$0, 8(%rax,%rcx,8)
	leaq	1792(%r13), %rsi
	movl	1800(%r13), %edx
	subl	1792(%r13), %edx
	shll	$3, %edx
	subl	1824(%r13), %edx
	leal	64(%rdx), %edi
	addl	$71, %edx
	testl	%edi, %edi
	cmovnsl	%edi, %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	addq	1784(%r13), %rdx
	movq	%rdx, 16(%rax,%rcx,8)
	movq	%r13, %rdi
	callq	x264_sei_pic_timing_write@PLT
	movq	1768(%r13), %rax
	movslq	1760(%r13), %rcx
	movl	1800(%r13), %edx
	subl	1792(%r13), %edx
	shll	$3, %edx
	subl	1824(%r13), %edx
	leal	64(%rdx), %esi
	addl	$71, %edx
	testl	%esi, %esi
	cmovnsl	%esi, %edx
	leaq	(%rcx,%rcx,2), %rcx
	sarl	$3, %edx
	addl	1784(%r13), %edx
	subl	16(%rax,%rcx,8), %edx
	movl	%edx, 8(%rax,%rcx,8)
	movl	1760(%r13), %eax
	movl	1764(%r13), %ecx
	incl	%eax
	movl	%eax, 1760(%r13)
	cmpl	%ecx, %eax
	jge	.LBB11_183
# %bb.182:                              # %if.then585.if.end591_crit_edge
	movq	1768(%r13), %rbx
	jmp	.LBB11_185
.LBB11_183:                             # %if.then.i.i1218
	shll	$4, %ecx
	leal	(%rcx,%rcx,2), %edi
	callq	x264_malloc@PLT
	testq	%rax, %rax
	je	.LBB11_19
# %bb.184:                              # %cleanup.thread.i.i1222
	movq	%rax, %rbx
	movq	1768(%r13), %rsi
	movslq	1764(%r13), %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rdx
	movq	%rbx, %rdi
	callq	memcpy@PLT
	movq	1768(%r13), %rdi
	callq	x264_free@PLT
	movq	%rbx, 1768(%r13)
	shll	1764(%r13)
	movl	1760(%r13), %eax
.LBB11_185:                             # %if.end591
	decl	%eax
	cltq
	leaq	(%rax,%rax,2), %rcx
	cmpl	$0, 640(%r13)
	setne	%dl
	testl	%eax, %eax
	setne	%al
	addl	8(%rbx,%rcx,8), %ebp
	andb	%dl, %al
	movzbl	%al, %eax
	subl	%eax, %ebp
	addl	$5, %ebp
	movq	24(%rsp), %rbx                  # 8-byte Reload
.LBB11_186:                             # %if.end613
	movq	14680(%r13), %rax
	movl	8(%rax), %esi
	shll	$3, %ebp
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	x264_ratecontrol_start@PLT
	movq	%r13, %rdi
	callq	x264_ratecontrol_qp@PLT
	movl	%eax, %ebp
	leal	1(%rbp), %eax
	movq	14688(%r13), %rcx
	movl	%eax, 8(%rcx)
	movl	%eax, 4(%r15)
	cmpl	$0, 576(%r13)
	je	.LBB11_189
# %bb.187:                              # %land.lhs.true625
	cmpl	$2, 7248(%r13)
	je	.LBB11_189
# %bb.188:                              # %if.then630
	movq	%r13, %rdi
	callq	x264_reference_build_list_optimal@PLT
	movq	%r13, %rdi
	callq	x264_reference_check_reorder
.LBB11_189:                             # %if.end632
	cmpl	$0, (%rbx)
	je	.LBB11_191
# %bb.190:                              # %if.then634
	movq	14688(%r13), %rax
	movq	14704(%r13), %rcx
	movl	(%rcx), %ecx
	movl	%ecx, 96(%rax)
.LBB11_191:                             # %if.end639
	cmpl	$1, 7248(%r13)
	jne	.LBB11_193
# %bb.192:                              # %if.then644
	movq	%r13, %rdi
	callq	x264_macroblock_bipred_init@PLT
.LBB11_193:                             # %if.end645
	cmpl	$0, (%rbx)
	jle	.LBB11_196
# %bb.194:                              # %for.body.lr.ph.i1247
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB11_195:                             # %for.body.i1249
                                        # =>This Inner Loop Header: Depth=1
	movq	14704(%r13,%rax,8), %rcx
	movq	176(%rcx), %rcx
	movq	14680(%r13), %rdx
	movq	%rcx, 3392(%rdx,%rax,8)
	incq	%rax
	movslq	14696(%r13), %rcx
	cmpq	%rcx, %rax
	jl	.LBB11_195
.LBB11_196:                             # %for.cond.cleanup.i1229
	movq	14680(%r13), %rax
	movl	$0, 15596(%rax)
	movl	14696(%r13), %eax
	movzbl	7268(%r13), %ecx
	movl	%eax, %edx
	shll	%cl, %edx
	testl	%edx, %edx
	jle	.LBB11_213
# %bb.197:                              # %for.cond11.preheader.lr.ph.i
	movl	%edx, %ecx
	cmpl	$3, %edx
	ja	.LBB11_205
# %bb.198:
	xorl	%edx, %edx
	jmp	.LBB11_208
.LBB11_199:                             # %if.then.i.i1102
	shll	$4, %ecx
	leal	(%rcx,%rcx,2), %edi
	callq	x264_malloc@PLT
	testq	%rax, %rax
	je	.LBB11_19
# %bb.200:                              # %cleanup.thread.i.i1106
	movq	%rax, %rbx
	movq	%r15, 56(%rsp)                  # 8-byte Spill
	movq	1768(%r13), %rsi
	movslq	1764(%r13), %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rdx
	movq	%rbx, %rdi
	callq	memcpy@PLT
	movq	1768(%r13), %rdi
	callq	x264_free@PLT
	movq	%rbx, 1768(%r13)
	shll	1764(%r13)
	movl	1760(%r13), %eax
.LBB11_201:                             # %if.end461
	cltq
	leaq	(%rax,%rax,2), %rax
	movl	-16(%rbx,%rax,8), %r15d
	movabsq	$34359738371, %rcx              # imm = 0x800000003
	movq	%rcx, (%rbx,%rax,8)
	movl	$0, 8(%rbx,%rax,8)
	movl	1800(%r13), %ecx
	subl	1792(%r13), %ecx
	shll	$3, %ecx
	subl	1824(%r13), %ecx
	leal	64(%rcx), %edx
	addl	$71, %ecx
	testl	%edx, %edx
	cmovnsl	%edx, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	addq	1784(%r13), %rcx
	movq	%rcx, 16(%rbx,%rax,8)
	movq	3328(%r13), %rsi
	movq	%r14, %rdi
	callq	x264_pps_write@PLT
	movq	%r13, %rdi
	callq	x264_nal_end
	movl	$-1, %ebx
	testl	%eax, %eax
	jne	.LBB11_111
# %bb.202:                              # %if.end488
	movq	1768(%r13), %rcx
	movslq	1760(%r13), %rax
	leaq	(%rax,%rax,2), %rdx
	movl	-16(%rcx,%rdx,8), %eax
	addl	%r15d, %ebp
	addl	%eax, %ebp
	addl	$10, %ebp
	cmpl	$0, 636(%r13)
	movq	14680(%r13), %rax
	je	.LBB11_249
# %bb.203:                              # %land.lhs.true492
	cmpl	$0, 56(%rax)
	movq	56(%rsp), %r15                  # 8-byte Reload
	je	.LBB11_250
# %bb.204:
	movq	40(%rsp), %r14                  # 8-byte Reload
	movq	24(%rsp), %rbx                  # 8-byte Reload
	cmpl	$1, 4(%rax)
	jne	.LBB11_178
	jmp	.LBB11_179
.LBB11_19:
	movl	$-1, %ebx
	jmp	.LBB11_111
.LBB11_205:                             # %vector.ph
	movl	%ecx, %edx
	andl	$2147483644, %edx               # imm = 0x7FFFFFFC
	movl	%ecx, %esi
	shrl	$2, %esi
	andl	$536870911, %esi                # imm = 0x1FFFFFFF
	shlq	$8, %rsi
	leaq	(%rsi,%rsi,2), %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB11_206:                             # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, 7632(%r13,%rdi)
	movq	$0, 7824(%r13,%rdi)
	movq	$0, 8016(%r13,%rdi)
	movq	$0, 8208(%r13,%rdi)
	movq	$0, 7696(%r13,%rdi)
	movq	$0, 7888(%r13,%rdi)
	movq	$0, 8080(%r13,%rdi)
	movq	$0, 8272(%r13,%rdi)
	movq	$0, 7760(%r13,%rdi)
	movq	$0, 7952(%r13,%rdi)
	movq	$0, 8144(%r13,%rdi)
	movq	$0, 8336(%r13,%rdi)
	addq	$768, %rdi                      # imm = 0x300
	cmpq	%rdi, %rsi
	jne	.LBB11_206
# %bb.207:                              # %middle.block
	cmpl	%ecx, %edx
	je	.LBB11_213
.LBB11_208:                             # %for.cond11.preheader.i.preheader
	movq	%rdx, %rsi
	testb	$1, %cl
	je	.LBB11_210
# %bb.209:                              # %for.cond11.preheader.i.prol
	leaq	7584(%r13), %rsi
	leaq	(%rdx,%rdx,2), %rdi
	shlq	$6, %rdi
	movq	$0, 48(%rsi,%rdi)
	movq	$0, 112(%rsi,%rdi)
	movq	$0, 176(%rsi,%rdi)
	movq	%rdx, %rsi
	orq	$1, %rsi
.LBB11_210:                             # %for.cond11.preheader.i.prol.loopexit
	leaq	-1(%rcx), %rdi
	cmpq	%rdi, %rdx
	je	.LBB11_213
# %bb.211:                              # %for.cond11.preheader.i.preheader1
	subq	%rsi, %rcx
	leaq	(%rsi,%rsi,2), %rdx
	shlq	$6, %rdx
	addq	%r13, %rdx
	addq	$7952, %rdx                     # imm = 0x1F10
	.p2align	4, 0x90
.LBB11_212:                             # %for.cond11.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, -320(%rdx)
	movq	$0, -256(%rdx)
	movq	$0, -192(%rdx)
	movq	$0, -128(%rdx)
	movq	$0, -64(%rdx)
	movq	$0, (%rdx)
	addq	$384, %rdx                      # imm = 0x180
	addq	$-2, %rcx
	jne	.LBB11_212
.LBB11_213:                             # %for.cond.cleanup9.i
	cmpl	$0, 7248(%r13)
	je	.LBB11_228
.LBB11_214:                             # %x264_weighted_pred_init.exit
	leaq	7232(%r13), %rsi
	movq	3200(%r13), %rdx
	movq	3328(%r13), %rcx
	cmpb	$0, 36(%rsp)                    # 1-byte Folded Reload
	je	.LBB11_216
# %bb.215:                              # %if.then.i1266
	movl	3336(%r13), %r8d
	movl	1848(%r13), %r9d
	movl	%ebp, (%rsp)
	movq	%r13, %rdi
	callq	x264_slice_header_init
	movl	3336(%r13), %eax
	leal	1(%rax), %ecx
	leal	65536(%rax), %edx
	testl	%ecx, %ecx
	cmovnsl	%ecx, %edx
	andl	$-65536, %edx                   # imm = 0xFFFF0000
	negl	%edx
	addl	%edx, %eax
	incl	%eax
	movl	%eax, 3336(%r13)
	jmp	.LBB11_220
.LBB11_216:                             # %if.else.i1256
	movl	1848(%r13), %r9d
	movl	%ebp, (%rsp)
	movq	%r13, %rdi
	movl	$-1, %r8d
	callq	x264_slice_header_init
	movl	14696(%r13), %edx
	cmpl	$2, %edx
	movl	$1, %eax
	cmovll	%eax, %edx
	movl	%edx, 7312(%r13)
	movl	14856(%r13), %ecx
	cmpl	$2, %ecx
	cmovgel	%ecx, %eax
	movl	%eax, 7316(%r13)
	movq	3328(%r13), %rcx
	cmpl	20(%rcx), %edx
	jne	.LBB11_219
# %bb.217:                              # %lor.lhs.false.i1262
	cmpl	$1, 7248(%r13)
	jne	.LBB11_220
# %bb.218:                              # %land.lhs.true.i1265
	cmpl	24(%rcx), %eax
	je	.LBB11_220
.LBB11_219:                             # %if.then27.i
	movl	$1, 7308(%r13)
.LBB11_220:                             # %if.end29.i
	movl	7264(%r13), %eax
	movq	14688(%r13), %rcx
	movl	%eax, 68(%rcx)
	movq	3200(%r13), %rax
	cmpl	$0, 28(%rax)
	je	.LBB11_242
.LBB11_221:                             # %x264_slice_init.exit
	movq	%r13, %rdi
	callq	x264_macroblock_slice_init@PLT
	cmpl	$0, 52(%rsp)                    # 4-byte Folded Reload
	je	.LBB11_223
# %bb.222:                              # %if.then648
	incl	1848(%r13)
.LBB11_223:                             # %if.end651
	movl	$0, 1748(%r13)
	movq	3200(%r13), %rax
	movl	1088(%rax), %eax
	movl	%eax, 1752(%r13)
	cmpl	$2, 1852(%r13)
	jl	.LBB11_225
# %bb.224:                              # %if.then657
	movl	$1, 1740(%r13)
	jmp	.LBB11_227
.LBB11_225:                             # %if.else658
	cmpl	$0, 8(%r13)
	je	.LBB11_245
# %bb.226:                              # %if.then662
	movq	%r13, %rdi
	callq	x264_threaded_slices_write
.LBB11_227:                             # %if.end673
	movq	72(%rsp), %rdi                  # 8-byte Reload
	movq	%r13, %rsi
	movq	%r14, %rdx
	movq	%r12, %rcx
	movq	%r15, %r8
	callq	x264_encoder_frame_end
	movl	%eax, %ebx
.LBB11_111:                             # %cleanup675
	movl	%ebx, %eax
	addq	$296, %rsp                      # imm = 0x128
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB11_228:                             # %lor.lhs.false.i
	.cfi_def_cfa_offset 352
	cmpl	$0, 396(%r13)
	jle	.LBB11_214
# %bb.229:                              # %if.end.i1233
	movl	136(%r13), %ecx
	movl	$32, %edx
	shll	%cl, %edx
	movq	$0, 7760(%r13)
	movq	$0, 7696(%r13)
	movl	$0, 7744(%r13)
	movl	$0, 7680(%r13)
	testl	%eax, %eax
	jle	.LBB11_247
# %bb.230:                              # %for.body54.lr.ph.i
	movq	%rbp, 88(%rsp)                  # 8-byte Spill
	movq	%r12, 64(%rsp)                  # 8-byte Spill
	movq	%r15, 56(%rsp)                  # 8-byte Spill
	movl	$64, %eax
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, 80(%rsp)                  # 4-byte Spill
	xorl	%r14d, %r14d
	movl	$7584, %ebp                     # imm = 0x1DA0
	movslq	%edx, %r15
	xorl	%edi, %edi
	xorl	%r12d, %r12d
	jmp	.LBB11_233
	.p2align	4, 0x90
.LBB11_232:                             # %for.inc178.i
                                        #   in Loop: Header=BB11_233 Depth=1
	incq	%r14
	movslq	(%rbx), %rax
	addq	$192, %rbp
	cmpq	%rax, %r14
	jge	.LBB11_246
.LBB11_233:                             # %for.body54.i
                                        # =>This Inner Loop Header: Depth=1
	movq	14680(%r13), %rax
	cmpq	$0, -7216(%rax,%rbp)
	je	.LBB11_239
# %bb.234:                              # %if.then61.i
                                        #   in Loop: Header=BB11_233 Depth=1
	leaq	(%rax,%rbp), %rcx
	addq	$-7264, %rcx                    # imm = 0xE3A0
	movapd	(%rcx), %xmm0
	movaps	16(%rcx), %xmm1
	movapd	32(%rcx), %xmm2
	movaps	48(%rcx), %xmm3
	movapd	%xmm2, 32(%r13,%rbp)
	movaps	%xmm3, 48(%r13,%rbp)
	movaps	%xmm1, 16(%r13,%rbp)
	movapd	%xmm0, (%r13,%rbp)
	movl	32(%r13,%rbp), %ecx
	movl	$1, %edx
	shll	%cl, %edx
	cmpl	%edx, 36(%r13,%rbp)
	jne	.LBB11_236
# %bb.235:                              # %land.lhs.true.i
                                        #   in Loop: Header=BB11_233 Depth=1
	cmpl	$0, 40(%r13,%rbp)
	je	.LBB11_231
.LBB11_236:                             # %if.else.i1237
                                        #   in Loop: Header=BB11_233 Depth=1
	testl	%r12d, %r12d
	jne	.LBB11_238
# %bb.237:                              # %if.then99.i
                                        #   in Loop: Header=BB11_233 Depth=1
	movl	%ecx, 7616(%r13)
.LBB11_238:                             # %if.end111.i
                                        #   in Loop: Header=BB11_233 Depth=1
	movslq	%edi, %rcx
	incl	%edi
	movq	17256(%r13,%rcx,8), %rcx
	movslq	104(%rax), %rdx
	imulq	%r15, %rdx
	addq	%rdx, %rcx
	addq	$32, %rcx
	movq	%rcx, 3392(%rax,%r14,8)
	movl	$1, %r12d
.LBB11_239:                             # %if.end123.i
                                        #   in Loop: Header=BB11_233 Depth=1
	cmpq	$0, 48(%r13,%rbp)
	je	.LBB11_232
.LBB11_240:                             # %land.lhs.true131.i
                                        #   in Loop: Header=BB11_233 Depth=1
	cmpl	$1, 4(%r13)
	jne	.LBB11_232
# %bb.241:                              # %if.then134.i
                                        #   in Loop: Header=BB11_233 Depth=1
	movq	%r13, %rax
	addq	%rbp, %rax
	movq	14704(%r13,%r14,8), %rcx
	movq	176(%rcx), %rdx
	movslq	104(%rcx), %rcx
	imulq	%r15, %rcx
	negq	%rcx
	addq	%rdx, %rcx
	addq	$-32, %rcx
	movl	%edi, 84(%rsp)                  # 4-byte Spill
	movq	14680(%r13), %rdi
	movq	3392(%rdi,%r14,8), %rsi
	movl	104(%rdi), %edx
	movl	116(%rdi), %r9d
	movl	%r15d, %r8d
	imull	%edx, %r8d
	movslq	%r8d, %r8
	negq	%r8
	addq	%r8, %rsi
	addq	$-32, %rsi
	addl	$64, %r9d
	movl	128(%rdi), %ebx
	addl	80(%rsp), %ebx                  # 4-byte Folded Reload
	movq	%rax, 8(%rsp)
	movl	%ebx, (%rsp)
	movq	%r13, %rdi
	movl	%edx, %r8d
	callq	x264_weight_scale_plane@PLT
	movl	84(%rsp), %edi                  # 4-byte Reload
	movq	14680(%r13), %rax
	movl	%ebx, 15596(%rax)
	movq	24(%rsp), %rbx                  # 8-byte Reload
	jmp	.LBB11_232
.LBB11_231:                             # %if.then91.i
                                        #   in Loop: Header=BB11_233 Depth=1
	movq	$0, 48(%r13,%rbp)
	cmpq	$0, 48(%r13,%rbp)
	jne	.LBB11_240
	jmp	.LBB11_232
.LBB11_242:                             # %if.then35.i
	movq	14688(%r13), %rax
	movl	(%rax), %ecx
	movl	%ecx, 7284(%r13)
	cmpl	$0, 136(%r13)
	je	.LBB11_248
# %bb.243:                              # %if.then39.i
	xorl	%ecx, %ecx
	cmpl	$0, 672(%r13)
	setne	%cl
	leal	-1(%rcx,%rcx), %ecx
	movl	%ecx, 7288(%r13)
	jne	.LBB11_221
# %bb.244:                              # %if.then47.i
	movl	(%rax), %eax
	incl	%eax
	movl	%eax, 7284(%r13)
	jmp	.LBB11_221
.LBB11_245:                             # %if.else667
	movq	%r13, %rdi
	callq	x264_slices_write
	movl	$-1, %ebx
	testq	%rax, %rax
	jne	.LBB11_111
	jmp	.LBB11_227
.LBB11_246:                             # %for.cond.cleanup53.i
	testl	%r12d, %r12d
	movq	56(%rsp), %r15                  # 8-byte Reload
	movq	64(%rsp), %r12                  # 8-byte Reload
	movq	40(%rsp), %r14                  # 8-byte Reload
	movq	88(%rsp), %rbp                  # 8-byte Reload
	jne	.LBB11_214
.LBB11_247:                             # %if.then182.i
	movl	$0, 7616(%r13)
	jmp	.LBB11_214
.LBB11_248:                             # %if.else54.i
	movl	$0, 7288(%r13)
	jmp	.LBB11_221
.LBB11_249:
	movq	40(%rsp), %r14                  # 8-byte Reload
	movq	56(%rsp), %r15                  # 8-byte Reload
	movq	24(%rsp), %rbx                  # 8-byte Reload
	cmpl	$1, 4(%rax)
	jne	.LBB11_178
	jmp	.LBB11_179
.LBB11_131:                             # %if.then208.i
	movl	$0, 352(%rsi)
	movabsq	$4294967296, %rax               # imm = 0x100000000
	movq	%rax, 128(%rsp)
	movl	$-1, 136(%rsp)
	leaq	96(%rsp), %rsi
	movq	%r13, %rdi
	callq	*32896(%r13)
	movl	$-1, %ebx
	cmpl	$2, 14696(%r13)
	jl	.LBB11_141
# %bb.132:                              # %if.end.i.i
	movq	%r13, %rdi
	callq	x264_frame_pop_blank_unused@PLT
	movq	%rax, %rbx
	movq	14704(%r13), %rsi
	movl	$15632, %edx                    # imm = 0x3D10
	movq	%rax, %rdi
	callq	memcpy@PLT
	movl	$1, 15600(%rbx)
	movq	14704(%r13), %rax
	movq	%rax, 3528(%rbx)
	movl	$1, 3520(%rbx)
	movl	$512, %edi                      # imm = 0x200
	addq	14680(%r13), %rdi
	leaq	96(%rsp), %rsi
	movl	$192, %edx
	callq	memcpy@PLT
	movl	$1, 15016(%r13)
	movl	14696(%r13), %eax
	cmpl	$16, %eax
	jl	.LBB11_139
	jmp	.LBB11_140
.LBB11_250:                             # %if.then497
	leaq	(%rcx,%rdx,8), %rax
	movabsq	$25769803776, %rcx              # imm = 0x600000000
	movq	%rcx, (%rax)
	movl	$0, 8(%rax)
	movl	1800(%r13), %ecx
	subl	1792(%r13), %ecx
	shll	$3, %ecx
	subl	1824(%r13), %ecx
	leal	64(%rcx), %edx
	addl	$71, %ecx
	testl	%edx, %edx
	cmovnsl	%edx, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	addq	1784(%r13), %rcx
	movq	%rcx, 16(%rax)
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	x264_sei_version_write@PLT
	testl	%eax, %eax
	movq	40(%rsp), %r14                  # 8-byte Reload
	jne	.LBB11_111
# %bb.251:                              # %if.end503
	movq	%r13, %rdi
	callq	x264_nal_end
	testl	%eax, %eax
	jne	.LBB11_111
# %bb.252:                              # %if.end507
	movq	1768(%r13), %rax
	movslq	1760(%r13), %rcx
	cmpq	$1, %rcx
	setne	%dl
	cmpl	$0, 640(%r13)
	setne	%sil
	andb	%dl, %sil
	leaq	(%rcx,%rcx,2), %rcx
	addl	-16(%rax,%rcx,8), %ebp
	movzbl	%sil, %eax
	subl	%eax, %ebp
	addl	$5, %ebp
	movq	14680(%r13), %rax
	movq	24(%rsp), %rbx                  # 8-byte Reload
	cmpl	$1, 4(%rax)
	jne	.LBB11_178
	jmp	.LBB11_179
.Lfunc_end11:
	.size	x264_encoder_encode, .Lfunc_end11-x264_encoder_encode
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI11_0:
	.quad	.LBB11_54
	.quad	.LBB11_64
	.quad	.LBB11_62
	.quad	.LBB11_63
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function x264_encoder_frame_end
.LCPI12_0:
	.quad	0x40efc02000000000              # double 65025
.LCPI12_2:
	.quad	0x3ddb7cdfd9d7bdbb              # double 1.0E-10
.LCPI12_3:
	.quad	0xc024000000000000              # double -10
.LCPI12_4:
	.quad	0x4059000000000000              # double 100
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI12_1:
	.long	0x42c80000                      # float 100
	.text
	.p2align	4, 0x90
	.type	x264_encoder_frame_end,@function
x264_encoder_frame_end:                 # @x264_encoder_frame_end
	.cfi_startproc
# %bb.0:                                # %entry
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
	subq	$392, %rsp                      # imm = 0x188
	.cfi_def_cfa_offset 448
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, %rbp
	movq	%rdx, %r13
	movq	%rsi, %r12
	movq	%rdi, %rbx
	cmpl	$0, 1740(%rdi)
	je	.LBB12_2
# %bb.1:                                # %if.then
	movl	$0, 1740(%rbx)
.LBB12_2:                               # %if.end4
	cmpl	$0, 1760(%rbx)
	je	.LBB12_7
# %bb.3:                                # %if.end7
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	14680(%rbx), %rax
	cmpl	$0, 80(%rax)
	je	.LBB12_13
# %bb.4:                                # %land.lhs.true
	movq	3200(%rbx), %rax
	cmpl	$0, 1204(%rax)
	je	.LBB12_13
# %bb.5:                                # %if.then10
	movq	%rbx, %rdi
	callq	x264_hrd_fullness@PLT
	movl	%eax, 15024(%rbx)
	movq	1768(%rbx), %rax
	movslq	1760(%rbx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movabsq	$25769803776, %rdx              # imm = 0x600000000
	movq	%rdx, (%rax,%rcx,8)
	movl	$0, 8(%rax,%rcx,8)
	leaq	1792(%rbx), %rsi
	movl	1800(%rbx), %edx
	subl	1792(%rbx), %edx
	shll	$3, %edx
	subl	1824(%rbx), %edx
	leal	64(%rdx), %edi
	addl	$71, %edx
	testl	%edi, %edi
	cmovnsl	%edi, %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	addq	1784(%rbx), %rdx
	movq	%rdx, 16(%rax,%rcx,8)
	movq	%rbx, %rdi
	callq	x264_sei_buffering_period_write@PLT
	movq	1768(%rbx), %rax
	movslq	1760(%rbx), %rcx
	movl	1800(%rbx), %edx
	subl	1792(%rbx), %edx
	shll	$3, %edx
	subl	1824(%rbx), %edx
	leal	64(%rdx), %esi
	addl	$71, %edx
	testl	%esi, %esi
	cmovnsl	%esi, %edx
	leaq	(%rcx,%rcx,2), %rcx
	sarl	$3, %edx
	addl	1784(%rbx), %edx
	subl	16(%rax,%rcx,8), %edx
	movl	%edx, 8(%rax,%rcx,8)
	movl	1760(%rbx), %ecx
	movl	1764(%rbx), %eax
	incl	%ecx
	movl	%ecx, 1760(%rbx)
	cmpl	%eax, %ecx
	jge	.LBB12_8
# %bb.6:                                # %if.then10.x264_nal_end.exit_crit_edge
	movq	1768(%rbx), %r14
	jmp	.LBB12_10
.LBB12_7:                               # %if.then6
	movl	$0, (%rbp)
	xorl	%r14d, %r14d
	jmp	.LBB12_109
.LBB12_8:                               # %if.then.i.i
	shll	$4, %eax
	leal	(%rax,%rax,2), %edi
	callq	x264_malloc@PLT
	testq	%rax, %rax
	je	.LBB12_108
# %bb.9:                                # %cleanup.thread.i.i
	movq	%rax, %r14
	movq	1768(%rbx), %rsi
	movslq	1764(%rbx), %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rdx
	movq	%r14, %rdi
	callq	memcpy@PLT
	movq	1768(%rbx), %rdi
	callq	x264_free@PLT
	movq	%r14, 1768(%rbx)
	shll	1764(%rbx)
.LBB12_10:                              # %x264_nal_end.exit
	xorl	%eax, %eax
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB12_11:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	4(%r14,%r15), %ecx
	addl	$-7, %ecx
	addq	$24, %r15
	decl	%eax
	cmpl	$3, %ecx
	jb	.LBB12_11
# %bb.12:                               # %while.end
	movslq	1760(%rbx), %rcx
	leaq	(%rcx,%rcx,2), %rdx
	movq	-8(%r14,%rdx,8), %rsi
	movq	%rsi, 144(%rsp)
	movups	-24(%r14,%rdx,8), %xmm0
	movaps	%xmm0, 128(%rsp)
	leaq	(%r14,%r15), %rsi
	addq	$-24, %rsi
	addq	%r15, %r14
	addl	%ecx, %eax
	cltq
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rdx
	movq	%r14, %rdi
	callq	memmove@PLT
	movq	1768(%rbx), %rax
	movaps	128(%rsp), %xmm0
	movups	%xmm0, -24(%rax,%r15)
	movq	144(%rsp), %rcx
	movq	%rcx, -8(%rax,%r15)
.LBB12_13:                              # %if.end56
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	x264_encoder_encapsulate_nals
	movl	%eax, %r14d
	movq	14680(%rbx), %rax
	movl	4(%rax), %eax
	movl	%eax, (%rbp)
	movq	14680(%rbx), %rax
	movl	80(%rax), %eax
	movl	%eax, 12(%rbp)
	movslq	3340(%rbx), %rax
	movq	14680(%rbx), %rcx
	imulq	16(%rcx), %rax
	movq	%rax, 16(%rcx)
	movq	%rax, 16(%rbp)
	movl	14616(%rbx), %ecx
	testl	%ecx, %ecx
	je	.LBB12_16
# %bb.14:                               # %if.then69
	movl	1844(%rbx), %edx
	movl	%edx, %eax
	subl	%ecx, %eax
	jle	.LBB12_17
# %bb.15:                               # %if.else103
	cltd
	idivl	%ecx
	movslq	%edx, %rax
	movq	14640(%r12,%rax,8), %rax
	jmp	.LBB12_26
.LBB12_16:                              # %if.else125
	movq	14680(%rbx), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, 24(%rbp)
	cmpq	%rcx, %rax
	jl	.LBB12_27
	jmp	.LBB12_28
.LBB12_17:                              # %if.then75
	movslq	3340(%rbx), %rcx
	cmpq	$1, %rcx
	jne	.LBB12_19
# %bb.18:                               # %if.then79
	movq	14680(%rbx), %rax
	movq	24(%rax), %rax
	subq	14624(%rbx), %rax
	jmp	.LBB12_26
.LBB12_19:                              # %if.else
	cmpl	$1, %edx
	jne	.LBB12_22
# %bb.20:                               # %if.then86
	movq	14680(%rbx), %rax
	movq	%rcx, %rsi
	imulq	24(%rax), %rsi
	movq	%rsi, 14632(%r12)
	movl	1844(%rbx), %edx
	movl	3340(%rbx), %ecx
	jmp	.LBB12_23
.LBB12_22:                              # %if.else.if.end93_crit_edge
	movq	14632(%r12), %rsi
.LBB12_23:                              # %if.end93
	movslq	%edx, %rax
	imulq	%rsi, %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdx
	orq	%rsi, %rdx
	shrq	$32, %rdx
	je	.LBB12_25
# %bb.24:
	cqto
	idivq	%rsi
	jmp	.LBB12_26
.LBB12_25:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $eax killed $eax def $rax
.LBB12_26:                              # %if.end113
	movq	%rax, 24(%rbp)
	movq	14680(%rbx), %rax
	movslq	3340(%rbx), %rcx
	imulq	24(%rax), %rcx
	movl	1844(%rbx), %eax
	cltd
	idivl	14616(%rbx)
	movslq	%edx, %rax
	movq	%rcx, 14640(%r12,%rax,8)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB12_28
.LBB12_27:                              # %if.then134
	movl	$.L.str.75, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
.LBB12_28:                              # %if.end135
	movq	14688(%rbx), %rax
	movl	100(%rax), %eax
	movl	%eax, 44(%rbp)
	movq	14688(%rbx), %rax
	movl	104(%rax), %eax
	movl	%eax, 48(%rbp)
	movq	14688(%rbx), %rax
	movq	152(%rax), %rax
	movq	%rax, 64(%rbp)
	movq	14688(%rbx), %rax
	movl	108(%rax), %eax
	movl	%eax, 52(%rbp)
	movq	14688(%rbx), %rax
	movq	160(%rax), %rax
	movq	%rax, 72(%rbp)
	movq	14688(%rbx), %rax
	movl	112(%rax), %eax
	movl	%eax, 56(%rbp)
	movq	14688(%rbx), %rax
	movq	168(%rax), %rax
	movq	%rax, 80(%rbp)
	movq	14680(%rbx), %rsi
	movq	%r12, %rdi
	callq	x264_frame_push_unused@PLT
	movl	$0, 12(%rsp)
	leal	(,%r14,8), %esi
	leaq	12(%rsp), %rdx
	movq	%rbx, %rdi
	callq	x264_ratecontrol_end@PLT
	testl	%eax, %eax
	js	.LBB12_108
# %bb.29:                               # %if.end161
	movq	%r13, 24(%rsp)                  # 8-byte Spill
	movq	%r12, 40(%rsp)                  # 8-byte Spill
	movq	14680(%rbx), %rax
	movups	12288(%rax), %xmm0
	movdqu	12304(%rax), %xmm1
	movdqu	%xmm1, 112(%rbp)
	movups	%xmm0, 96(%rbp)
	movl	12(%rsp), %edx
	testl	%edx, %edx
	jle	.LBB12_39
# %bb.30:                               # %while.body167.lr.ph
	leaq	1792(%rbx), %rbp
	xorl	%r12d, %r12d
	movabsq	$51539607552, %r13              # imm = 0xC00000000
	jmp	.LBB12_32
	.p2align	4, 0x90
.LBB12_31:                              # %cleanup210
                                        #   in Loop: Header=BB12_32 Depth=1
	decl	%esi
	movq	%rbx, %rdi
	callq	x264_encoder_encapsulate_nals
	addl	%eax, %r14d
	movl	12(%rsp), %edx
	subl	%eax, %edx
	movl	%edx, 12(%rsp)
	jle	.LBB12_39
.LBB12_32:                              # %while.body167
                                        # =>This Inner Loop Header: Depth=1
	movl	640(%rbx), %eax
	movl	684(%rbx), %esi
	movl	$6, %ecx
	subl	%eax, %ecx
	testl	%esi, %esi
	je	.LBB12_35
# %bb.33:                               # %while.body167
                                        #   in Loop: Header=BB12_32 Depth=1
	movl	%esi, %edi
	subl	%edx, %edi
	jge	.LBB12_35
# %bb.34:                               # %if.then176
                                        #   in Loop: Header=BB12_32 Depth=1
	addl	%esi, %eax
	addl	%ecx, %edi
	testl	%edi, %edi
	cmovlel	%r12d, %edi
	subl	%edi, %eax
	addl	$-6, %eax
	movl	%eax, %edx
	jmp	.LBB12_36
	.p2align	4, 0x90
.LBB12_35:                              # %if.else188
                                        #   in Loop: Header=BB12_32 Depth=1
	subl	%ecx, %edx
	testl	%edx, %edx
	cmovlel	%r12d, %edx
.LBB12_36:                              # %if.end197
                                        #   in Loop: Header=BB12_32 Depth=1
	movq	1768(%rbx), %rax
	movslq	1760(%rbx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movq	%r13, (%rax,%rcx,8)
	movl	$0, 8(%rax,%rcx,8)
	movl	1800(%rbx), %esi
	subl	1792(%rbx), %esi
	shll	$3, %esi
	subl	1824(%rbx), %esi
	leal	64(%rsi), %edi
	addl	$71, %esi
	testl	%edi, %edi
	cmovnsl	%edi, %esi
	sarl	$3, %esi
	movslq	%esi, %rsi
	addq	1784(%rbx), %rsi
	movq	%rsi, 16(%rax,%rcx,8)
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	x264_filler_write@PLT
	movq	1768(%rbx), %rax
	movslq	1760(%rbx), %rcx
	movl	1800(%rbx), %edx
	subl	1792(%rbx), %edx
	shll	$3, %edx
	subl	1824(%rbx), %edx
	leal	64(%rdx), %esi
	addl	$71, %edx
	testl	%esi, %esi
	cmovnsl	%esi, %edx
	leaq	(%rcx,%rcx,2), %rcx
	sarl	$3, %edx
	addl	1784(%rbx), %edx
	subl	16(%rax,%rcx,8), %edx
	movl	%edx, 8(%rax,%rcx,8)
	movl	1760(%rbx), %esi
	movl	1764(%rbx), %eax
	incl	%esi
	movl	%esi, 1760(%rbx)
	cmpl	%eax, %esi
	jl	.LBB12_31
# %bb.37:                               # %if.then.i.i1092
                                        #   in Loop: Header=BB12_32 Depth=1
	shll	$4, %eax
	leal	(%rax,%rax,2), %edi
	callq	x264_malloc@PLT
	testq	%rax, %rax
	je	.LBB12_108
# %bb.38:                               # %cleanup.thread.i.i1096
                                        #   in Loop: Header=BB12_32 Depth=1
	movq	%rax, %r15
	movq	1768(%rbx), %rsi
	movslq	1764(%rbx), %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rdx
	movq	%r15, %rdi
	callq	memcpy@PLT
	movq	1768(%rbx), %rdi
	callq	x264_free@PLT
	movq	%r15, 1768(%rbx)
	shll	1764(%rbx)
	movl	1760(%rbx), %esi
	jmp	.LBB12_31
.LBB12_108:
	movl	$-1, %r14d
	jmp	.LBB12_109
.LBB12_39:                              # %while.end214
	movl	1760(%rbx), %eax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movl	%eax, (%rcx)
	movq	1768(%rbx), %rax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, (%rcx)
	movl	$0, 1760(%rbx)
	movq	%rbx, %rdi
	callq	x264_noise_reduction_update@PLT
	movq	704(%rbx), %rsi
	cmpq	%rbx, %rsi
	je	.LBB12_41
# %bb.40:                               # %if.end.i
	leaq	27416(%rbx), %rdi
	addq	$27416, %rsi                    # imm = 0x6B18
	movl	$2984, %edx                     # imm = 0xBA8
	callq	memcpy@PLT
.LBB12_41:                              # %x264_thread_sync_stat.exit
	movslq	7248(%rbx), %rax
	incl	27416(%rbx,%rax,4)
	movslq	%r14d, %rax
	movslq	7248(%rbx), %rcx
	addq	%rax, 27440(%rbx,%rcx,8)
	movq	14688(%rbx), %rax
	movss	92(%rax), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movslq	7248(%rbx), %rax
	addsd	27480(%rbx,%rax,8), %xmm0
	movsd	%xmm0, 27480(%rbx,%rax,8)
	movslq	7248(%rbx), %rax
	imulq	$152, %rax, %rax
	movq	26724(%rbx), %xmm0              # xmm0 = mem[0],zero
	pxor	%xmm1, %xmm1
	pcmpgtd	%xmm0, %xmm1
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movdqu	27832(%rbx,%rax), %xmm1
	paddq	%xmm0, %xmm1
	movdqu	27848(%rbx,%rax), %xmm0
	movdqu	27864(%rbx,%rax), %xmm2
	movdqu	27880(%rbx,%rax), %xmm3
	movdqu	%xmm1, 27832(%rbx,%rax)
	movq	26732(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm4, %xmm4
	pcmpgtd	%xmm1, %xmm4
	punpckldq	%xmm4, %xmm1            # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1]
	paddq	%xmm0, %xmm1
	movdqu	%xmm1, 27848(%rbx,%rax)
	movq	26740(%rbx), %xmm0              # xmm0 = mem[0],zero
	pxor	%xmm1, %xmm1
	pcmpgtd	%xmm0, %xmm1
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	paddq	%xmm2, %xmm0
	movdqu	%xmm0, 27864(%rbx,%rax)
	movq	26748(%rbx), %xmm0              # xmm0 = mem[0],zero
	pxor	%xmm1, %xmm1
	pcmpgtd	%xmm0, %xmm1
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	paddq	%xmm3, %xmm0
	movdqu	%xmm0, 27880(%rbx,%rax)
	movq	26756(%rbx), %xmm0              # xmm0 = mem[0],zero
	pxor	%xmm1, %xmm1
	pcmpgtd	%xmm0, %xmm1
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movdqu	27896(%rbx,%rax), %xmm1
	paddq	%xmm0, %xmm1
	movdqu	%xmm1, 27896(%rbx,%rax)
	movq	26764(%rbx), %xmm0              # xmm0 = mem[0],zero
	pxor	%xmm1, %xmm1
	pcmpgtd	%xmm0, %xmm1
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movdqu	27912(%rbx,%rax), %xmm1
	paddq	%xmm0, %xmm1
	movdqu	%xmm1, 27912(%rbx,%rax)
	movslq	7248(%rbx), %rax
	imulq	$152, %rax, %rcx
	movq	26772(%rbx), %xmm0              # xmm0 = mem[0],zero
	pxor	%xmm1, %xmm1
	pcmpgtd	%xmm0, %xmm1
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movdqu	27928(%rbx,%rcx), %xmm1
	paddq	%xmm0, %xmm1
	movdqu	27944(%rbx,%rcx), %xmm0
	movdqu	27960(%rbx,%rcx), %xmm2
	movdqu	%xmm1, 27928(%rbx,%rcx)
	movq	26780(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm3, %xmm3
	pcmpgtd	%xmm1, %xmm3
	punpckldq	%xmm3, %xmm1            # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	paddq	%xmm0, %xmm1
	movdqu	%xmm1, 27944(%rbx,%rcx)
	movq	26788(%rbx), %xmm0              # xmm0 = mem[0],zero
	pxor	%xmm1, %xmm1
	pcmpgtd	%xmm0, %xmm1
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	paddq	%xmm2, %xmm0
	movdqu	%xmm0, 27960(%rbx,%rcx)
	movslq	26796(%rbx), %rdx
	addq	%rdx, 27976(%rbx,%rcx)
	pxor	%xmm0, %xmm0
	movq	%rax, %rcx
	shlq	$7, %rcx
	leaq	(%rcx,%rax,8), %rax
	movq	27076(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	28592(%rbx,%rax), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 28592(%rbx,%rax)
	movslq	7248(%rbx), %rax
	movq	%rax, %rcx
	shlq	$7, %rcx
	leaq	(%rcx,%rax,8), %rax
	movq	27084(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	28608(%rbx,%rax), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	28624(%rbx,%rax), %xmm1
	movdqu	28640(%rbx,%rax), %xmm3
	movdqu	28656(%rbx,%rax), %xmm4
	movdqu	%xmm2, 28608(%rbx,%rax)
	movq	27092(%rbx), %xmm2              # xmm2 = mem[0],zero
	pxor	%xmm5, %xmm5
	pcmpgtd	%xmm2, %xmm5
	punpckldq	%xmm5, %xmm2            # xmm2 = xmm2[0],xmm5[0],xmm2[1],xmm5[1]
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 28624(%rbx,%rax)
	movq	27100(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	paddq	%xmm3, %xmm1
	movdqu	%xmm1, 28640(%rbx,%rax)
	movq	27108(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	paddq	%xmm4, %xmm1
	movdqu	%xmm1, 28656(%rbx,%rax)
	movq	27116(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	28672(%rbx,%rax), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 28672(%rbx,%rax)
	movq	27124(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	28688(%rbx,%rax), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 28688(%rbx,%rax)
	movq	27132(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	28704(%rbx,%rax), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 28704(%rbx,%rax)
	movslq	27140(%rbx), %rax
	movslq	7248(%rbx), %rcx
	movq	%rcx, %rdx
	shlq	$7, %rdx
	leaq	(%rdx,%rcx,8), %rcx
	addq	%rax, 28720(%rbx,%rcx)
	movq	26812(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	28864(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 28864(%rbx)
	movq	27144(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	29904(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 29904(%rbx)
	movq	27152(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	29920(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 29920(%rbx)
	movq	27160(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	29936(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 29936(%rbx)
	movq	27168(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	29952(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 29952(%rbx)
	movq	27176(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	29968(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 29968(%rbx)
	movq	27184(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	29984(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 29984(%rbx)
	movq	27192(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	30000(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 30000(%rbx)
	movq	27200(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	30016(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 30016(%rbx)
	movq	27208(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	30032(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 30032(%rbx)
	movq	27216(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	30048(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 30048(%rbx)
	movq	27224(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	30064(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 30064(%rbx)
	movq	27232(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	30080(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 30080(%rbx)
	movq	27240(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	30096(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 30096(%rbx)
	movq	27248(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	30112(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 30112(%rbx)
	movq	27256(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	30128(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 30128(%rbx)
	movq	27264(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	30144(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 30144(%rbx)
	movq	27272(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	30160(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 30160(%rbx)
	movq	27280(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	30176(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 30176(%rbx)
	movq	27288(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	30192(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 30192(%rbx)
	movq	27296(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	30208(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 30208(%rbx)
	movq	27304(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	30224(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 30224(%rbx)
	movq	27312(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	30240(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 30240(%rbx)
	movq	27320(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	30256(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 30256(%rbx)
	movq	27328(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	30272(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 30272(%rbx)
	movq	27336(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	30288(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 30288(%rbx)
	movq	27344(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	30304(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 30304(%rbx)
	movq	27352(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	30320(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 30320(%rbx)
	movq	27360(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	30336(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 30336(%rbx)
	movq	27368(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	30352(%rbx), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 30352(%rbx)
	movslq	7248(%rbx), %rax
	cmpq	$2, %rax
	je	.LBB12_57
# %bb.42:                               # %for.cond366.preheader
	shlq	$9, %rax
	movq	26820(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	28880(%rbx,%rax), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	28896(%rbx,%rax), %xmm1
	movdqu	28912(%rbx,%rax), %xmm3
	movdqu	28928(%rbx,%rax), %xmm4
	movdqu	%xmm2, 28880(%rbx,%rax)
	movq	26828(%rbx), %xmm2              # xmm2 = mem[0],zero
	pxor	%xmm5, %xmm5
	pcmpgtd	%xmm2, %xmm5
	punpckldq	%xmm5, %xmm2            # xmm2 = xmm2[0],xmm5[0],xmm2[1],xmm5[1]
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 28896(%rbx,%rax)
	movq	26836(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	paddq	%xmm3, %xmm1
	movdqu	%xmm1, 28912(%rbx,%rax)
	movq	26844(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	paddq	%xmm4, %xmm1
	movdqu	%xmm1, 28928(%rbx,%rax)
	movq	26852(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	28944(%rbx,%rax), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 28944(%rbx,%rax)
	movq	26860(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	28960(%rbx,%rax), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 28960(%rbx,%rax)
	movq	26868(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	28976(%rbx,%rax), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 28976(%rbx,%rax)
	movslq	7248(%rbx), %rax
	shlq	$9, %rax
	movq	26876(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	28992(%rbx,%rax), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 28992(%rbx,%rax)
	movslq	26884(%rbx), %rcx
	addq	%rcx, 29008(%rbx,%rax)
	movslq	7248(%rbx), %rax
	shlq	$9, %rax
	movq	26888(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	29016(%rbx,%rax), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	29032(%rbx,%rax), %xmm1
	movdqu	29048(%rbx,%rax), %xmm3
	movdqu	29064(%rbx,%rax), %xmm4
	movdqu	%xmm2, 29016(%rbx,%rax)
	movq	26896(%rbx), %xmm2              # xmm2 = mem[0],zero
	pxor	%xmm5, %xmm5
	pcmpgtd	%xmm2, %xmm5
	punpckldq	%xmm5, %xmm2            # xmm2 = xmm2[0],xmm5[0],xmm2[1],xmm5[1]
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 29032(%rbx,%rax)
	movq	26904(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	paddq	%xmm3, %xmm1
	movdqu	%xmm1, 29048(%rbx,%rax)
	movq	26912(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	paddq	%xmm4, %xmm1
	movdqu	%xmm1, 29064(%rbx,%rax)
	movq	26920(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	29080(%rbx,%rax), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 29080(%rbx,%rax)
	movq	26928(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	29096(%rbx,%rax), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 29096(%rbx,%rax)
	movslq	26936(%rbx), %rcx
	addq	%rcx, 29112(%rbx,%rax)
	movslq	26940(%rbx), %rcx
	addq	%rcx, 29120(%rbx,%rax)
	movslq	26944(%rbx), %rcx
	movslq	7248(%rbx), %rax
	shlq	$9, %rax
	addq	%rcx, 29128(%rbx,%rax)
	movq	26948(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	29136(%rbx,%rax), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	29152(%rbx,%rax), %xmm1
	movdqu	29168(%rbx,%rax), %xmm3
	movdqu	29184(%rbx,%rax), %xmm4
	movdqu	%xmm2, 29136(%rbx,%rax)
	movq	26956(%rbx), %xmm2              # xmm2 = mem[0],zero
	pxor	%xmm5, %xmm5
	pcmpgtd	%xmm2, %xmm5
	punpckldq	%xmm5, %xmm2            # xmm2 = xmm2[0],xmm5[0],xmm2[1],xmm5[1]
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 29152(%rbx,%rax)
	movq	26964(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	paddq	%xmm3, %xmm1
	movdqu	%xmm1, 29168(%rbx,%rax)
	movq	26972(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	paddq	%xmm4, %xmm1
	movdqu	%xmm1, 29184(%rbx,%rax)
	movq	26980(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	29200(%rbx,%rax), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 29200(%rbx,%rax)
	movq	26988(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	29216(%rbx,%rax), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 29216(%rbx,%rax)
	movq	26996(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	29232(%rbx,%rax), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 29232(%rbx,%rax)
	movslq	7248(%rbx), %rax
	shlq	$9, %rax
	movq	27004(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	29248(%rbx,%rax), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 29248(%rbx,%rax)
	movslq	27012(%rbx), %rcx
	addq	%rcx, 29264(%rbx,%rax)
	movslq	7248(%rbx), %rax
	shlq	$9, %rax
	movq	27016(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	29272(%rbx,%rax), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	29288(%rbx,%rax), %xmm1
	movdqu	29304(%rbx,%rax), %xmm3
	movdqu	29320(%rbx,%rax), %xmm4
	movdqu	%xmm2, 29272(%rbx,%rax)
	movq	27024(%rbx), %xmm2              # xmm2 = mem[0],zero
	pxor	%xmm5, %xmm5
	pcmpgtd	%xmm2, %xmm5
	punpckldq	%xmm5, %xmm2            # xmm2 = xmm2[0],xmm5[0],xmm2[1],xmm5[1]
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 29288(%rbx,%rax)
	movq	27032(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	paddq	%xmm3, %xmm1
	movdqu	%xmm1, 29304(%rbx,%rax)
	movq	27040(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	paddq	%xmm4, %xmm1
	movdqu	%xmm1, 29320(%rbx,%rax)
	movq	27048(%rbx), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm1, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	29336(%rbx,%rax), %xmm2
	paddq	%xmm1, %xmm2
	movdqu	%xmm2, 29336(%rbx,%rax)
	movq	27056(%rbx), %xmm1              # xmm1 = mem[0],zero
	pcmpgtd	%xmm1, %xmm0
	punpckldq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movdqu	29352(%rbx,%rax), %xmm0
	paddq	%xmm1, %xmm0
	movdqu	%xmm0, 29352(%rbx,%rax)
	movslq	27064(%rbx), %rcx
	addq	%rcx, 29368(%rbx,%rax)
	movslq	27068(%rbx), %rcx
	addq	%rcx, 29376(%rbx,%rax)
	movslq	27072(%rbx), %rcx
	movslq	7248(%rbx), %rax
	movq	%rax, %rdx
	shlq	$9, %rdx
	addq	%rcx, 29384(%rbx,%rdx)
	testq	%rax, %rax
	jne	.LBB12_52
# %bb.43:                               # %if.then408
	movq	14688(%rbx), %rax
	movq	14704(%rbx), %rcx
	movl	56(%rcx), %ecx
	notl	%ecx
	addl	56(%rax), %ecx
	movslq	%ecx, %rax
	incl	27520(%rbx,%rax,4)
	cmpl	$2, 396(%rbx)
	jne	.LBB12_51
# %bb.44:                               # %for.cond424.preheader
	cmpl	$0, 14696(%rbx)
	jle	.LBB12_51
# %bb.45:                               # %for.cond430.preheader.us.preheader
	cmpl	$0, 7616(%rbx)
	je	.LBB12_47
# %bb.46:                               # %if.then441.us
	incl	30384(%rbx)
.LBB12_47:                              # %cleanup449.us
	cmpl	$0, 7680(%rbx)
	je	.LBB12_49
# %bb.48:                               # %if.then441.us.1
	incl	30388(%rbx)
.LBB12_49:                              # %cleanup449.us.1
	cmpl	$0, 7744(%rbx)
	je	.LBB12_51
# %bb.50:                               # %if.then441.us.2
	incl	30392(%rbx)
.LBB12_51:                              # %if.end456thread-pre-split
	movl	7248(%rbx), %eax
.LBB12_52:                              # %if.end456
	cmpl	$1, %eax
	jne	.LBB12_57
# %bb.53:                               # %if.then461
	movslq	7304(%rbx), %rax
	incl	30376(%rbx,%rax,4)
	cmpl	$0, 25820(%rbx)
	je	.LBB12_57
# %bb.54:                               # %if.then468
	movl	30368(%rbx), %ecx
	movl	30372(%rbx), %eax
	leal	(%rax,%rcx), %edx
	cmpl	16368(%rbx), %edx
	jle	.LBB12_56
# %bb.55:                               # %for.body485.preheader
	leal	(%rcx,%rcx,8), %ecx
	movslq	%ecx, %rcx
	imulq	$1717986919, %rcx, %rcx         # imm = 0x66666667
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$34, %rcx
	addl	%edx, %ecx
	leal	(%rax,%rax,8), %eax
	cltq
	imulq	$1717986919, %rax, %rax         # imm = 0x66666667
	movq	%rax, %rdx
	shrq	$63, %rdx
	sarq	$34, %rax
	addl	%edx, %eax
.LBB12_56:                              # %if.end500
	addl	27376(%rbx), %ecx
	movl	%ecx, 30368(%rbx)
	addl	27380(%rbx), %eax
	movl	%eax, 30372(%rbx)
.LBB12_57:                              # %if.end522
	movb	$0, 48(%rsp)
	cmpl	$0, 476(%rbx)
	movl	7248(%rbx), %eax
	je	.LBB12_73
# %bb.58:                               # %if.then527
	cltq
	movq	27384(%rbx), %r13
	movq	27392(%rbx), %r12
	movq	27400(%rbx), %r15
	leaq	(%r12,%r13), %rcx
	addq	%r15, %rcx
	addq	%rcx, 27592(%rbx,%rax,8)
	movl	20(%rbx), %eax
	imull	24(%rbx), %eax
	leal	(%rax,%rax,2), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rcx, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edx, %xmm1
	mulsd	.LCPI12_0(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movss	.LCPI12_1(%rip), %xmm3          # xmm3 = [1.0E+2,0.0E+0,0.0E+0,0.0E+0]
	movsd	.LCPI12_2(%rip), %xmm2          # xmm2 = [1.0E-10,0.0E+0]
	ucomisd	%xmm0, %xmm2
	movaps	%xmm3, %xmm1
	jae	.LBB12_60
# %bb.59:                               # %if.end.i1105
	callq	log10@PLT
	movss	.LCPI12_1(%rip), %xmm3          # xmm3 = [1.0E+2,0.0E+0,0.0E+0,0.0E+0]
	movsd	.LCPI12_2(%rip), %xmm2          # xmm2 = [1.0E-10,0.0E+0]
	mulsd	.LCPI12_3(%rip), %xmm0
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm1
.LBB12_60:                              # %x264_psnr.exit
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movslq	7248(%rbx), %rax
	addsd	27632(%rbx,%rax,8), %xmm0
	movsd	%xmm0, 27632(%rbx,%rax,8)
	movl	24(%rbx), %eax
	imull	20(%rbx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r13, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI12_0(%rip), %xmm1
	movsd	%xmm0, 16(%rsp)                 # 8-byte Spill
	divsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm2
	movaps	%xmm3, %xmm1
	jae	.LBB12_62
# %bb.61:                               # %if.end.i1112
	callq	log10@PLT
	movss	.LCPI12_1(%rip), %xmm3          # xmm3 = [1.0E+2,0.0E+0,0.0E+0,0.0E+0]
	movsd	.LCPI12_2(%rip), %xmm2          # xmm2 = [1.0E-10,0.0E+0]
	mulsd	.LCPI12_3(%rip), %xmm0
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm1
.LBB12_62:                              # %x264_psnr.exit1116
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movslq	7248(%rbx), %rax
	addsd	27672(%rbx,%rax,8), %xmm0
	movsd	%xmm0, 27672(%rbx,%rax,8)
	movl	24(%rbx), %eax
	imull	20(%rbx), %eax
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	sarl	$2, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r12, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	mulsd	.LCPI12_0(%rip), %xmm1
	movsd	%xmm0, 24(%rsp)                 # 8-byte Spill
	divsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm2
	movaps	%xmm3, %xmm1
	jae	.LBB12_64
# %bb.63:                               # %if.end.i1123
	callq	log10@PLT
	movss	.LCPI12_1(%rip), %xmm3          # xmm3 = [1.0E+2,0.0E+0,0.0E+0,0.0E+0]
	movsd	.LCPI12_2(%rip), %xmm2          # xmm2 = [1.0E-10,0.0E+0]
	mulsd	.LCPI12_3(%rip), %xmm0
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm1
.LBB12_64:                              # %x264_psnr.exit1127
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movslq	7248(%rbx), %rax
	addsd	27712(%rbx,%rax,8), %xmm0
	movsd	%xmm0, 27712(%rbx,%rax,8)
	movl	24(%rbx), %eax
	imull	20(%rbx), %eax
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	sarl	$2, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r15, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	mulsd	.LCPI12_0(%rip), %xmm1
	movsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	divsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm2
	jae	.LBB12_66
# %bb.65:                               # %if.end.i1134
	callq	log10@PLT
	movsd	.LCPI12_2(%rip), %xmm2          # xmm2 = [1.0E-10,0.0E+0]
	mulsd	.LCPI12_3(%rip), %xmm0
	xorps	%xmm3, %xmm3
	cvtsd2ss	%xmm0, %xmm3
.LBB12_66:                              # %x264_psnr.exit1138
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm3, %xmm0
	movslq	7248(%rbx), %rax
	addsd	27752(%rbx,%rax,8), %xmm0
	movsd	%xmm0, 27752(%rbx,%rax,8)
	movl	24(%rbx), %eax
	imull	20(%rbx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	mulsd	.LCPI12_0(%rip), %xmm0
	movsd	16(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	.LCPI12_4(%rip), %xmm4          # xmm4 = [1.0E+2,0.0E+0]
	ucomisd	%xmm1, %xmm2
	movaps	%xmm4, %xmm5
	jae	.LBB12_68
# %bb.67:                               # %if.end.i1145
	movapd	%xmm1, %xmm0
	callq	log10@PLT
	movsd	.LCPI12_4(%rip), %xmm4          # xmm4 = [1.0E+2,0.0E+0]
	movsd	.LCPI12_2(%rip), %xmm2          # xmm2 = [1.0E-10,0.0E+0]
	mulsd	.LCPI12_3(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movl	24(%rbx), %eax
	imull	20(%rbx), %eax
	xorps	%xmm5, %xmm5
	cvtss2sd	%xmm0, %xmm5
.LBB12_68:                              # %x264_psnr.exit1149
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	sarl	$2, %ecx
	xorps	%xmm3, %xmm3
	cvtsi2sd	%ecx, %xmm3
	mulsd	.LCPI12_0(%rip), %xmm3
	movsd	24(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm3, %xmm0
	ucomisd	%xmm0, %xmm2
	movaps	%xmm4, %xmm1
	movsd	%xmm5, 16(%rsp)                 # 8-byte Spill
	jae	.LBB12_70
# %bb.69:                               # %if.end.i1156
	callq	log10@PLT
	movsd	.LCPI12_4(%rip), %xmm4          # xmm4 = [1.0E+2,0.0E+0]
	movsd	.LCPI12_2(%rip), %xmm2          # xmm2 = [1.0E-10,0.0E+0]
	mulsd	.LCPI12_3(%rip), %xmm0
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm1
	movl	24(%rbx), %eax
	imull	20(%rbx), %eax
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	sarl	$2, %ecx
	xorps	%xmm3, %xmm3
	cvtsi2sd	%ecx, %xmm3
	mulsd	.LCPI12_0(%rip), %xmm3
	cvtss2sd	%xmm1, %xmm1
	movsd	16(%rsp), %xmm5                 # 8-byte Reload
                                        # xmm5 = mem[0],zero
.LBB12_70:                              # %x264_psnr.exit1160
	movsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm3, %xmm0
	ucomisd	%xmm0, %xmm2
	jae	.LBB12_72
# %bb.71:                               # %if.end.i1167
	movsd	%xmm1, 24(%rsp)                 # 8-byte Spill
	callq	log10@PLT
	movsd	24(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	16(%rsp), %xmm5                 # 8-byte Reload
                                        # xmm5 = mem[0],zero
	mulsd	.LCPI12_3(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	xorps	%xmm4, %xmm4
	cvtss2sd	%xmm0, %xmm4
.LBB12_72:                              # %x264_psnr.exit1171
	leaq	48(%rsp), %rdi
	movl	$80, %esi
	movl	$.L.str.76, %edx
	movaps	%xmm5, %xmm0
	movaps	%xmm4, %xmm2
	movb	$3, %al
	callq	snprintf@PLT
	movl	7248(%rbx), %eax
.LBB12_73:                              # %if.end648
	cmpl	$0, 480(%rbx)
	je	.LBB12_75
# %bb.74:                               # %if.then652
	movsd	27408(%rbx), %xmm1              # xmm1 = mem[0],zero
	movl	20(%rbx), %ecx
	movl	24(%rbx), %edx
	addl	$-6, %ecx
	sarl	$2, %ecx
	addl	$-6, %edx
	sarl	$2, %edx
	imull	%ecx, %edx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%edx, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 16(%rsp)                 # 8-byte Spill
	cltq
	movsd	27792(%rbx,%rax,8), %xmm0       # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 27792(%rbx,%rax,8)
	leaq	48(%rsp), %rdi
	callq	strlen@PLT
	leaq	(%rsp,%rax), %rdi
	addq	$48, %rdi
	movl	$80, %esi
	subq	%rax, %rsi
	movl	$.L.str.77, %edx
	movsd	16(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	snprintf@PLT
	movl	7248(%rbx), %eax
.LBB12_75:                              # %if.end678
	leaq	27416(%rbx), %r12
	movb	$0, 127(%rsp)
	movq	14688(%rbx), %rdx
	movss	92(%rdx), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	1844(%rbx), %ecx
	movl	1860(%rbx), %r8d
	testl	%eax, %eax
	movl	$80, %esi
	movl	$66, %edi
	cmovel	%esi, %edi
	cmpl	$2, %eax
	movl	$73, %r9d
	cmovnel	%edi, %r9d
	movl	(%rdx), %r10d
	movl	26800(%rbx), %r11d
	movl	26804(%rbx), %r15d
	movl	26808(%rbx), %r13d
	leaq	48(%rsp), %rbp
	movl	$.L.str.78, %edx
	movq	%rbx, %rdi
	movl	$3, %esi
	movb	$1, %al
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	x264_log@PLT
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
	movq	704(%rbx), %rdi
	cmpq	%rbx, %rdi
	je	.LBB12_77
# %bb.76:                               # %if.end.i1173
	addq	$27416, %rdi                    # imm = 0x6B18
	movl	$2984, %edx                     # imm = 0xBA8
	movq	%r12, %rsi
	callq	memcpy@PLT
.LBB12_77:                              # %x264_thread_sync_stat.exit1176
	movq	40(%rsp), %rdi                  # 8-byte Reload
	cmpq	%rbx, %rdi
	je	.LBB12_79
# %bb.78:                               # %if.end.i1178
	addq	$27416, %rdi                    # imm = 0x6B18
	movl	$2984, %edx                     # imm = 0xBA8
	movq	%r12, %rsi
	callq	memcpy@PLT
.LBB12_79:                              # %x264_thread_sync_stat.exit1181
	movl	14696(%rbx), %eax
	testl	%eax, %eax
	jle	.LBB12_85
# %bb.80:                               # %for.body713.lr.ph
	xorl	%r15d, %r15d
	jmp	.LBB12_82
	.p2align	4, 0x90
.LBB12_81:                              # %for.inc731
                                        #   in Loop: Header=BB12_82 Depth=1
	incq	%r15
	movslq	%eax, %rcx
	cmpq	%rcx, %r15
	jge	.LBB12_85
.LBB12_82:                              # %for.body713
                                        # =>This Inner Loop Header: Depth=1
	movq	14704(%rbx,%r15,8), %rsi
	testq	%rsi, %rsi
	je	.LBB12_81
# %bb.83:                               # %land.lhs.true718
                                        #   in Loop: Header=BB12_82 Depth=1
	cmpl	$0, 3520(%rsi)
	je	.LBB12_81
# %bb.84:                               # %if.then723
                                        #   in Loop: Header=BB12_82 Depth=1
	movq	%rbx, %rdi
	callq	x264_frame_push_blank_unused@PLT
	movq	$0, 14704(%rbx,%r15,8)
	movl	14696(%rbx), %eax
	jmp	.LBB12_81
.LBB12_85:                              # %for.cond.cleanup712
	movl	tga_dump_rate(%rip), %esi
	testl	%esi, %esi
	jle	.LBB12_98
# %bb.86:                               # %if.then737
	movq	14688(%rbx), %rax
	movl	56(%rax), %ecx
	movl	%ecx, %eax
	cltd
	idivl	%esi
	testl	%edx, %edx
	je	.LBB12_88
# %bb.87:                               # %lor.lhs.false743
	movl	36(%rbx), %eax
	decl	%eax
	cmpl	%eax, %ecx
	jne	.LBB12_98
.LBB12_88:                              # %if.then750
	movq	seek_val@GOTPCREL(%rip), %rax
	addl	(%rax), %ecx
	leaq	128(%rsp), %r15
	movl	$.L.str.79, %esi
	movq	%r15, %rdi
	movl	%ecx, %edx
	xorl	%eax, %eax
	callq	sprintf@PLT
	movl	$.L.str.80, %esi
	movq	%r15, %rdi
	callq	fopen@PLT
	testq	%rax, %rax
	je	.LBB12_98
# %bb.89:                               # %for.cond.preheader.i
	movq	%rax, %r15
	movq	14688(%rbx), %rdx
	cmpl	$0, 100(%rdx)
	jle	.LBB12_97
# %bb.90:                               # %for.cond4.preheader.lr.ph.i
	movl	24(%rbx), %eax
	xorl	%r12d, %r12d
	jmp	.LBB12_92
	.p2align	4, 0x90
.LBB12_91:                              # %for.cond.cleanup8.i
                                        #   in Loop: Header=BB12_92 Depth=1
	incq	%r12
	movslq	100(%rdx), %rcx
	cmpq	%rcx, %r12
	jge	.LBB12_97
.LBB12_92:                              # %for.cond4.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_94 Depth 2
	testq	%r12, %r12
	setne	%bpl
	movl	%eax, %esi
	movl	%ebp, %ecx
	sarl	%cl, %esi
	testl	%esi, %esi
	jle	.LBB12_91
# %bb.93:                               # %for.body9.i.preheader
                                        #   in Loop: Header=BB12_92 Depth=1
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB12_94:                              # %for.body9.i
                                        #   Parent Loop BB12_92 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	14688(%rbx), %rax
	movslq	104(%rax,%r12,4), %rdi
	movslq	%r13d, %r13
	imulq	%r13, %rdi
	addq	152(%rax,%r12,8), %rdi
	movl	20(%rbx), %eax
	movl	%ebp, %ecx
	sarl	%cl, %eax
	movslq	%eax, %rdx
	movl	$1, %esi
	movq	%r15, %rcx
	callq	fwrite@PLT
	incl	%r13d
	movl	24(%rbx), %eax
	movl	%eax, %edx
	movl	%ebp, %ecx
	sarl	%cl, %edx
	cmpl	%edx, %r13d
	jl	.LBB12_94
# %bb.95:                               # %for.cond.cleanup8.loopexit.i
                                        #   in Loop: Header=BB12_92 Depth=1
	movq	14688(%rbx), %rdx
	jmp	.LBB12_91
.LBB12_97:                              # %for.cond.cleanup.i
	movq	%r15, %rdi
	callq	fclose@PLT
.LBB12_98:                              # %if.end752
	movq	376(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB12_109
# %bb.99:                               # %if.then755
	movl	$.L.str.81, %esi
	callq	fopen@PLT
	testq	%rax, %rax
	je	.LBB12_109
# %bb.100:                              # %if.end.i1190
	movq	%rax, %r15
	movq	14688(%rbx), %rax
	movslq	56(%rax), %rax
	movslq	24(%rbx), %rcx
	movslq	20(%rbx), %rdx
	imulq	%rcx, %rdx
	imulq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rsi
	shrq	%rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	fseek@PLT
	movq	14688(%rbx), %rdx
	cmpl	$0, 100(%rdx)
	jle	.LBB12_107
# %bb.101:                              # %for.cond10.preheader.preheader.i
	movl	24(%rbx), %eax
	xorl	%r12d, %r12d
	jmp	.LBB12_104
	.p2align	4, 0x90
.LBB12_102:                             # %for.cond.cleanup17.loopexit.i
                                        #   in Loop: Header=BB12_104 Depth=1
	movq	14688(%rbx), %rdx
.LBB12_103:                             # %for.cond.cleanup17.i
                                        #   in Loop: Header=BB12_104 Depth=1
	incq	%r12
	movslq	100(%rdx), %rcx
	cmpq	%rcx, %r12
	jge	.LBB12_107
.LBB12_104:                             # %for.cond10.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_106 Depth 2
	testq	%r12, %r12
	setne	%bpl
	movl	%eax, %esi
	movl	%ebp, %ecx
	sarl	%cl, %esi
	testl	%esi, %esi
	jle	.LBB12_103
# %bb.105:                              # %for.body18.i.preheader
                                        #   in Loop: Header=BB12_104 Depth=1
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB12_106:                             # %for.body18.i
                                        #   Parent Loop BB12_104 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	14688(%rbx), %rax
	movslq	104(%rax,%r12,4), %rdi
	movslq	%r13d, %r13
	imulq	%r13, %rdi
	addq	152(%rax,%r12,8), %rdi
	movl	20(%rbx), %eax
	movl	%ebp, %ecx
	sarl	%cl, %eax
	movslq	%eax, %rdx
	movl	$1, %esi
	movq	%r15, %rcx
	callq	fwrite@PLT
	incl	%r13d
	movl	24(%rbx), %eax
	movl	%eax, %edx
	movl	%ebp, %ecx
	sarl	%cl, %edx
	cmpl	%edx, %r13d
	jl	.LBB12_106
	jmp	.LBB12_102
.LBB12_107:                             # %for.cond.cleanup.i1198
	movq	%r15, %rdi
	callq	fclose@PLT
.LBB12_109:                             # %cleanup759
	movl	%r14d, %eax
	addq	$392, %rsp                      # imm = 0x188
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end12:
	.size	x264_encoder_frame_end, .Lfunc_end12-x264_encoder_frame_end
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_reference_hierarchy_reset
	.type	x264_reference_hierarchy_reset,@function
x264_reference_hierarchy_reset:         # @x264_reference_hierarchy_reset
	.cfi_startproc
# %bb.0:                                # %entry
	movl	112(%rdi), %eax
	testl	%eax, %eax
	je	.LBB13_22
# %bb.1:                                # %for.cond.preheader
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	14416(%rdi), %rdx
	movq	(%rdx), %rsi
	xorl	%ecx, %ecx
	testq	%rsi, %rsi
	je	.LBB13_5
# %bb.2:                                # %land.rhs.lr.ph
	addq	$8, %rdx
	.p2align	4, 0x90
.LBB13_3:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$5, 4(%rsi)
	jne	.LBB13_4
# %bb.17:                               # %for.body
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	3200(%rdi), %r8
	movl	1288(%r8), %r8d
	addl	56(%rsi), %r8d
	xorl	%r9d, %r9d
	cmpl	%r8d, 60(%rsi)
	setne	%r9b
	orl	%r9d, %ecx
	movq	(%rdx), %rsi
	addq	$8, %rdx
	testq	%rsi, %rsi
	jne	.LBB13_3
.LBB13_4:                               # %for.cond.cleanup.loopexit
	testl	%ecx, %ecx
	setne	%cl
.LBB13_5:                               # %for.cond.cleanup
	cmpl	$1, %eax
	je	.LBB13_7
# %bb.6:                                # %for.cond.cleanup
	testb	%cl, %cl
	je	.LBB13_21
.LBB13_7:                               # %for.cond22.preheader
	movq	14448(%rdi), %rdx
	xorl	%ebp, %ebp
	movl	$0, %r14d
	testq	%rdx, %rdx
	je	.LBB13_20
# %bb.8:                                # %for.body27.lr.ph
	cmpl	$1, %eax
	jne	.LBB13_9
# %bb.11:                               # %for.body27.lr.ph.split.us
	cmpl	$4, 4(%rdx)
	jne	.LBB13_13
# %bb.12:
	xorl	%ecx, %ecx
	xorl	%r14d, %r14d
	jmp	.LBB13_19
.LBB13_9:                               # %for.body27.preheader
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB13_10:                              # %for.body27
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, 14456(%rdi,%r14,8)
	leaq	1(%r14), %r14
	jne	.LBB13_10
	jmp	.LBB13_20
.LBB13_13:                              # %for.inc65.us.preheader
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB13_15:                              # %for.inc65.us
                                        # =>This Inner Loop Header: Depth=1
	movq	14456(%rdi,%rcx,8), %rdx
	testq	%rdx, %rdx
	je	.LBB13_16
# %bb.14:                               # %for.body27.us
                                        #   in Loop: Header=BB13_15 Depth=1
	incq	%rcx
	cmpl	$4, 4(%rdx)
	jne	.LBB13_15
# %bb.18:                               # %if.then40.loopexit
	movl	%ecx, %r14d
.LBB13_19:                              # %if.then40
	movl	1848(%rdi), %esi
	subl	68(%rdx), %esi
	leaq	14448(%rdi), %rax
	movslq	13732(%rdi), %rdx
	movl	%esi, 13736(%rdi,%rdx,8)
	movq	14448(%rdi,%rcx,8), %rcx
	movl	(%rcx), %ecx
	leal	1(%rdx), %esi
	movl	%esi, 13732(%rdi)
	movl	%ecx, 13740(%rdi,%rdx,8)
	movq	%rdi, %rbx
	movq	%rax, %rdi
	callq	x264_frame_pop@PLT
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	x264_frame_push_unused@PLT
	movq	%rbx, %rdi
	movl	$1, 15016(%rbx)
	jmp	.LBB13_20
.LBB13_16:                              # %for.end67.loopexit
	incl	%ecx
	movl	%ecx, %r14d
.LBB13_20:                              # %for.end67
	subl	14600(%rdi), %r14d
	addl	$2, %r14d
	testl	%r14d, %r14d
	cmovgl	%r14d, %ebp
	movl	%ebp, 13728(%rdi)
.LBB13_21:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %rbp
.LBB13_22:                              # %cleanup
	retq
.Lfunc_end13:
	.size	x264_reference_hierarchy_reset, .Lfunc_end13-x264_reference_hierarchy_reset
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_reference_check_reorder
	.type	x264_reference_check_reorder,@function
x264_reference_check_reorder:           # @x264_reference_check_reorder
	.cfi_startproc
# %bb.0:                                # %entry
	movl	14696(%rdi), %eax
	cmpl	$2, %eax
	jl	.LBB14_9
# %bb.1:                                # %for.body.lr.ph
	decl	%eax
	cmpl	$0, 7248(%rdi)
	movq	14704(%rdi), %rcx
	je	.LBB14_5
# %bb.2:                                # %for.body.preheader
	movl	(%rcx), %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB14_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %esi
	movq	14712(%rdi,%rcx,8), %rdx
	movl	(%rdx), %edx
	cmpl	%edx, %esi
	jl	.LBB14_4
# %bb.8:                                # %for.inc
                                        #   in Loop: Header=BB14_3 Depth=1
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB14_3
	jmp	.LBB14_9
.LBB14_5:                               # %for.body.us.preheader
	movl	68(%rcx), %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB14_6:                               # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %esi
	movq	14712(%rdi,%rcx,8), %rdx
	movl	68(%rdx), %edx
	cmpl	%edx, %esi
	jl	.LBB14_4
# %bb.7:                                # %for.inc.us
                                        #   in Loop: Header=BB14_6 Depth=1
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB14_6
.LBB14_9:                               # %cleanup
	retq
.LBB14_4:                               # %if.then
	movl	$1, 15016(%rdi)
	retq
.Lfunc_end14:
	.size	x264_reference_check_reorder, .Lfunc_end14-x264_reference_check_reorder
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_threaded_slices_write
	.type	x264_threaded_slices_write,@function
x264_threaded_slices_write:             # @x264_threaded_slices_write
	.cfi_startproc
# %bb.0:                                # %entry
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	4(%rdi), %esi
	testl	%esi, %esi
	jle	.LBB15_4
# %bb.1:                                # %if.end.peel
	movq	704(%rbx), %rdi
	movl	692(%rbx), %edx
	movzbl	136(%rbx), %ecx
	movq	3200(%rbx), %rax
	movl	1088(%rax), %r8d
	sarl	%cl, %r8d
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	cltd
	idivl	%esi
	movl	%eax, %esi
	shll	%cl, %esi
	movl	%esi, 1748(%rdi)
	movl	692(%rbx), %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	sarl	%eax
	addl	%r8d, %eax
	cltd
	idivl	4(%rbx)
	movzbl	136(%rbx), %ecx
	shll	%cl, %eax
	movl	%eax, 1752(%rdi)
	movq	3200(%rbx), %rcx
	imull	1084(%rcx), %esi
	movl	%esi, 7252(%rdi)
	movq	3200(%rbx), %rcx
	imull	1084(%rcx), %eax
	decl	%eax
	movl	%eax, 7256(%rdi)
	cmpl	$2, 4(%rbx)
	jl	.LBB15_4
# %bb.2:                                # %if.end.preheader
	leaq	1844(%rbx), %r14
	movl	$1, %r12d
	movl	$89, %r13d
	.p2align	4, 0x90
.LBB15_3:                               # %if.end
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx,%r13,8), %r15
	movl	$704, %edx                      # imm = 0x2C0
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	memcpy@PLT
	leaq	1844(%r15), %rdi
	movl	$24860, %edx                    # imm = 0x611C
	movq	%r14, %rsi
	callq	memcpy@PLT
	movq	3200(%rbx), %rax
	movl	1088(%rax), %edi
	movzbl	136(%rbx), %ecx
	movl	%r12d, %edx
	sarl	%cl, %edi
	movl	692(%rbx), %esi
	movl	%esi, %eax
	shrl	$31, %eax
	imull	%edi, %edx
	addl	%esi, %eax
	sarl	%eax
	addl	%edx, %eax
	cltd
	idivl	4(%rbx)
	movl	%eax, %esi
	shll	%cl, %esi
	movl	%esi, 1748(%r15)
	leal	-87(%r13), %ecx
	imull	%edi, %ecx
	movl	692(%rbx), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%ecx, %eax
	cltd
	idivl	4(%rbx)
	movzbl	136(%rbx), %ecx
	shll	%cl, %eax
	movl	%eax, 1752(%r15)
	movq	3200(%rbx), %rcx
	imull	1084(%rcx), %esi
	movl	%esi, 7252(%r15)
	movq	3200(%rbx), %rcx
	imull	1084(%rcx), %eax
	decl	%eax
	incq	%r12
	movl	%eax, 7256(%r15)
	movslq	4(%rbx), %rax
	incq	%r13
	cmpq	%rax, %r12
	jl	.LBB15_3
.LBB15_4:                               # %for.cond.cleanup
	movq	3200(%rbx), %rax
	movl	1088(%rax), %esi
	shll	$4, %esi
	addl	$16, %esi
	movq	%rbx, %rdi
	callq	x264_analyse_weight_frame@PLT
	movq	%rbx, %rdi
	callq	x264_threads_distribute_ratecontrol@PLT
	cmpl	$0, 4(%rbx)
	jle	.LBB15_15
# %bb.5:                                # %for.body41.lr.ph
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB15_6:                               # %for.body41
                                        # =>This Inner Loop Header: Depth=1
	movq	704(%rbx,%rax,8), %rcx
	movl	$1, 1740(%rcx)
	incq	%rax
	movslq	4(%rbx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB15_6
# %bb.7:                                # %for.cond49.preheader
	testl	%ecx, %ecx
	jle	.LBB15_15
# %bb.8:                                # %for.body54.lr.ph
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB15_9:                               # %for.body54
                                        # =>This Inner Loop Header: Depth=1
	movq	704(%rbx,%rax,8), %rcx
	movl	$0, 1740(%rcx)
	incq	%rax
	movslq	4(%rbx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB15_9
# %bb.10:                               # %for.cond66.preheader
	cmpl	$2, %ecx
	jl	.LBB15_15
# %bb.11:                               # %for.body72.lr.ph
	movl	$89, %r14d
	jmp	.LBB15_12
	.p2align	4, 0x90
.LBB15_14:                              # %for.inc93
                                        #   in Loop: Header=BB15_12 Depth=1
	movslq	4(%rbx), %rax
	leaq	1(%r14), %rcx
	addq	$-87, %r14
	cmpq	%rax, %r14
	movq	%rcx, %r14
	jge	.LBB15_15
.LBB15_12:                              # %for.body72
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx,%r14,8), %rdi
	movl	1748(%rdi), %esi
	incl	%esi
	xorl	%edx, %edx
	callq	x264_fdec_filter_row
	cmpl	$0, 7268(%rbx)
	je	.LBB15_14
# %bb.13:                               # %if.then83
                                        #   in Loop: Header=BB15_12 Depth=1
	movq	(%rbx,%r14,8), %rdi
	movl	1748(%rdi), %esi
	addl	$2, %esi
	xorl	%edx, %edx
	callq	x264_fdec_filter_row
	jmp	.LBB15_14
.LBB15_15:                              # %for.cond.cleanup71
	movq	%rbx, %rdi
	callq	x264_threads_merge_ratecontrol@PLT
	cmpl	$2, 4(%rbx)
	jl	.LBB15_28
# %bb.16:                               # %for.body104.lr.ph
	leaq	26712(%rbx), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	leaq	27384(%rbx), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movl	$1, %r12d
	.p2align	4, 0x90
.LBB15_17:                              # %for.body104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_19 Depth 2
                                        #     Child Loop BB15_26 Depth 2
	movq	704(%rbx,%r12,8), %r13
	cmpl	$0, 1760(%r13)
	jle	.LBB15_23
# %bb.18:                               # %for.body113.lr.ph
                                        #   in Loop: Header=BB15_17 Depth=1
	xorl	%ebp, %ebp
	xorl	%r14d, %r14d
	jmp	.LBB15_19
	.p2align	4, 0x90
.LBB15_22:                              # %x264_nal_check_buffer.exit
                                        #   in Loop: Header=BB15_19 Depth=2
	incq	%r14
	movslq	1760(%r13), %rax
	addq	$24, %rbp
	cmpq	%rax, %r14
	jge	.LBB15_23
.LBB15_19:                              # %for.body113
                                        #   Parent Loop BB15_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	1768(%rbx), %rax
	movslq	1760(%rbx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movq	1768(%r13), %rdx
	movq	16(%rdx,%rbp), %rsi
	movq	%rsi, 16(%rax,%rcx,8)
	movdqu	(%rdx,%rbp), %xmm0
	movdqu	%xmm0, (%rax,%rcx,8)
	movl	1760(%rbx), %ecx
	movl	1764(%rbx), %eax
	incl	%ecx
	movl	%ecx, 1760(%rbx)
	cmpl	%eax, %ecx
	jl	.LBB15_22
# %bb.20:                               # %if.then.i
                                        #   in Loop: Header=BB15_19 Depth=2
	shll	$4, %eax
	leal	(%rax,%rax,2), %edi
	callq	x264_malloc@PLT
	testq	%rax, %rax
	je	.LBB15_22
# %bb.21:                               # %cleanup.thread.i
                                        #   in Loop: Header=BB15_19 Depth=2
	movq	1768(%rbx), %rsi
	movslq	1764(%rbx), %rcx
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	movq	%rax, %rdi
	movq	%rax, %r15
	callq	memcpy@PLT
	movq	1768(%rbx), %rdi
	callq	x264_free@PLT
	movq	%r15, 1768(%rbx)
	shll	1764(%rbx)
	jmp	.LBB15_22
	.p2align	4, 0x90
.LBB15_23:                              # %for.cond131.preheader
                                        #   in Loop: Header=BB15_17 Depth=1
	leaq	26712(%r13), %rax
	leaq	27384(%r13), %rcx
	cmpq	%rcx, 16(%rsp)                  # 8-byte Folded Reload
	setae	%cl
	cmpq	8(%rsp), %rax                   # 8-byte Folded Reload
	setae	%al
	orb	%cl, %al
	jne	.LBB15_25
# %bb.24:                               #   in Loop: Header=BB15_17 Depth=1
	xorl	%eax, %eax
	jmp	.LBB15_26
	.p2align	4, 0x90
.LBB15_25:                              # %vector.body
                                        #   in Loop: Header=BB15_17 Depth=1
	movdqu	26712(%r13), %xmm0
	movdqu	26728(%r13), %xmm1
	movdqu	26744(%r13), %xmm2
	movdqu	26760(%r13), %xmm3
	movdqu	26712(%rbx), %xmm4
	paddd	%xmm0, %xmm4
	movdqu	26728(%rbx), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	26744(%rbx), %xmm1
	paddd	%xmm2, %xmm1
	movdqu	26760(%rbx), %xmm2
	paddd	%xmm3, %xmm2
	movdqu	%xmm4, 26712(%rbx)
	movdqu	%xmm0, 26728(%rbx)
	movdqu	%xmm1, 26744(%rbx)
	movdqu	%xmm2, 26760(%rbx)
	movdqu	26776(%r13), %xmm0
	movdqu	26792(%r13), %xmm1
	movdqu	26808(%r13), %xmm2
	movdqu	26824(%r13), %xmm3
	movdqu	26776(%rbx), %xmm4
	paddd	%xmm0, %xmm4
	movdqu	26792(%rbx), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	26808(%rbx), %xmm1
	paddd	%xmm2, %xmm1
	movdqu	26824(%rbx), %xmm2
	paddd	%xmm3, %xmm2
	movdqu	%xmm4, 26776(%rbx)
	movdqu	%xmm0, 26792(%rbx)
	movdqu	%xmm1, 26808(%rbx)
	movdqu	%xmm2, 26824(%rbx)
	movdqu	26840(%r13), %xmm0
	movdqu	26856(%r13), %xmm1
	movdqu	26872(%r13), %xmm2
	movdqu	26888(%r13), %xmm3
	movdqu	26840(%rbx), %xmm4
	paddd	%xmm0, %xmm4
	movdqu	26856(%rbx), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	26872(%rbx), %xmm1
	paddd	%xmm2, %xmm1
	movdqu	26888(%rbx), %xmm2
	paddd	%xmm3, %xmm2
	movdqu	%xmm4, 26840(%rbx)
	movdqu	%xmm0, 26856(%rbx)
	movdqu	%xmm1, 26872(%rbx)
	movdqu	%xmm2, 26888(%rbx)
	movdqu	26904(%r13), %xmm0
	movdqu	26920(%r13), %xmm1
	movdqu	26936(%r13), %xmm2
	movdqu	26952(%r13), %xmm3
	movdqu	26904(%rbx), %xmm4
	paddd	%xmm0, %xmm4
	movdqu	26920(%rbx), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	26936(%rbx), %xmm1
	paddd	%xmm2, %xmm1
	movdqu	26952(%rbx), %xmm2
	paddd	%xmm3, %xmm2
	movdqu	%xmm4, 26904(%rbx)
	movdqu	%xmm0, 26920(%rbx)
	movdqu	%xmm1, 26936(%rbx)
	movdqu	%xmm2, 26952(%rbx)
	movdqu	26968(%r13), %xmm0
	movdqu	26984(%r13), %xmm1
	movdqu	27000(%r13), %xmm2
	movdqu	27016(%r13), %xmm3
	movdqu	26968(%rbx), %xmm4
	paddd	%xmm0, %xmm4
	movdqu	26984(%rbx), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	27000(%rbx), %xmm1
	paddd	%xmm2, %xmm1
	movdqu	27016(%rbx), %xmm2
	paddd	%xmm3, %xmm2
	movdqu	%xmm4, 26968(%rbx)
	movdqu	%xmm0, 26984(%rbx)
	movdqu	%xmm1, 27000(%rbx)
	movdqu	%xmm2, 27016(%rbx)
	movdqu	27032(%r13), %xmm0
	movdqu	27048(%r13), %xmm1
	movdqu	27064(%r13), %xmm2
	movdqu	27080(%r13), %xmm3
	movdqu	27032(%rbx), %xmm4
	paddd	%xmm0, %xmm4
	movdqu	27048(%rbx), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	27064(%rbx), %xmm1
	paddd	%xmm2, %xmm1
	movdqu	27080(%rbx), %xmm2
	paddd	%xmm3, %xmm2
	movdqu	%xmm4, 27032(%rbx)
	movdqu	%xmm0, 27048(%rbx)
	movdqu	%xmm1, 27064(%rbx)
	movdqu	%xmm2, 27080(%rbx)
	movdqu	27096(%r13), %xmm0
	movdqu	27112(%r13), %xmm1
	movdqu	27128(%r13), %xmm2
	movdqu	27144(%r13), %xmm3
	movdqu	27096(%rbx), %xmm4
	paddd	%xmm0, %xmm4
	movdqu	27112(%rbx), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	27128(%rbx), %xmm1
	paddd	%xmm2, %xmm1
	movdqu	27144(%rbx), %xmm2
	paddd	%xmm3, %xmm2
	movdqu	%xmm4, 27096(%rbx)
	movdqu	%xmm0, 27112(%rbx)
	movdqu	%xmm1, 27128(%rbx)
	movdqu	%xmm2, 27144(%rbx)
	movdqu	27160(%r13), %xmm0
	movdqu	27176(%r13), %xmm1
	movdqu	27192(%r13), %xmm2
	movdqu	27208(%r13), %xmm3
	movdqu	27160(%rbx), %xmm4
	paddd	%xmm0, %xmm4
	movdqu	27176(%rbx), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	27192(%rbx), %xmm1
	paddd	%xmm2, %xmm1
	movdqu	27208(%rbx), %xmm2
	paddd	%xmm3, %xmm2
	movdqu	%xmm4, 27160(%rbx)
	movdqu	%xmm0, 27176(%rbx)
	movdqu	%xmm1, 27192(%rbx)
	movdqu	%xmm2, 27208(%rbx)
	movdqu	27224(%r13), %xmm0
	movdqu	27240(%r13), %xmm1
	movdqu	27256(%r13), %xmm2
	movdqu	27272(%r13), %xmm3
	movdqu	27224(%rbx), %xmm4
	paddd	%xmm0, %xmm4
	movdqu	27240(%rbx), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	27256(%rbx), %xmm1
	paddd	%xmm2, %xmm1
	movdqu	27272(%rbx), %xmm2
	paddd	%xmm3, %xmm2
	movdqu	%xmm4, 27224(%rbx)
	movdqu	%xmm0, 27240(%rbx)
	movdqu	%xmm1, 27256(%rbx)
	movdqu	%xmm2, 27272(%rbx)
	movdqu	27288(%r13), %xmm0
	movdqu	27304(%r13), %xmm1
	movdqu	27320(%r13), %xmm2
	movdqu	27336(%r13), %xmm3
	movdqu	27288(%rbx), %xmm4
	paddd	%xmm0, %xmm4
	movdqu	27304(%rbx), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	27320(%rbx), %xmm1
	paddd	%xmm2, %xmm1
	movdqu	27336(%rbx), %xmm2
	paddd	%xmm3, %xmm2
	movdqu	%xmm4, 27288(%rbx)
	movdqu	%xmm0, 27304(%rbx)
	movdqu	%xmm1, 27320(%rbx)
	movdqu	%xmm2, 27336(%rbx)
	movl	$160, %eax
	.p2align	4, 0x90
.LBB15_26:                              # %for.body135
                                        #   Parent Loop BB15_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	26712(%r13,%rax,4), %ecx
	addl	%ecx, 26712(%rbx,%rax,4)
	movl	26716(%r13,%rax,4), %ecx
	addl	%ecx, 26716(%rbx,%rax,4)
	movl	26720(%r13,%rax,4), %ecx
	addl	%ecx, 26720(%rbx,%rax,4)
	movl	26724(%r13,%rax,4), %ecx
	addl	%ecx, 26724(%rbx,%rax,4)
	addq	$4, %rax
	cmpq	$168, %rax
	jne	.LBB15_26
# %bb.27:                               # %for.cond148.preheader
                                        #   in Loop: Header=BB15_17 Depth=1
	movq	27384(%r13), %rax
	addq	%rax, 27384(%rbx)
	movq	27392(%r13), %rax
	addq	%rax, 27392(%rbx)
	movq	27400(%r13), %rax
	addq	%rax, 27400(%rbx)
	movsd	27408(%r13), %xmm0              # xmm0 = mem[0],zero
	addsd	27408(%rbx), %xmm0
	movsd	%xmm0, 27408(%rbx)
	incq	%r12
	movslq	4(%rbx), %rax
	cmpq	%rax, %r12
	jl	.LBB15_17
.LBB15_28:                              # %cleanup177
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end15:
	.size	x264_threaded_slices_write, .Lfunc_end15-x264_threaded_slices_write
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function x264_slices_write
.LCPI16_0:
	.zero	16,3
	.text
	.p2align	4, 0x90
	.type	x264_slices_write,@function
x264_slices_write:                      # @x264_slices_write
	.cfi_startproc
# %bb.0:                                # %entry
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
	subq	$776, %rsp                      # imm = 0x308
	.cfi_def_cfa_offset 832
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movl	7256(%rdi), %r12d
	addq	$26712, %rdi                    # imm = 0x6858
	xorl	%r13d, %r13d
	movl	$704, %edx                      # imm = 0x2C0
	xorl	%esi, %esi
	callq	memset@PLT
	movl	$0, 17424(%r14)
	movl	7252(%r14), %eax
	cmpl	%r12d, %eax
	jg	.LBB16_332
# %bb.1:                                # %while.body.lr.ph
	leaq	1792(%r14), %rcx
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	leaq	1800(%r14), %rbx
	leaq	1824(%r14), %r11
	leaq	1816(%r14), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	leaq	13904(%r14), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	leaq	25120(%r14), %rcx
	movq	%rcx, 184(%rsp)                 # 8-byte Spill
	leaq	26820(%r14), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	leaq	26816(%r14), %rcx
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	leaq	27220(%r14), %rcx
	movq	%rcx, 152(%rsp)                 # 8-byte Spill
	leaq	27168(%r14), %rcx
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	leaq	27272(%r14), %rcx
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	leaq	27324(%r14), %rcx
	movq	%rcx, 160(%rsp)                 # 8-byte Spill
	leaq	25072(%r14), %rcx
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	leaq	25200(%r14), %rcx
	movq	%rcx, 168(%rsp)                 # 8-byte Spill
	decl	%eax
	leaq	7760(%r14), %rcx
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	movl	$0, 72(%rsp)                    # 4-byte Folded Spill
	movl	%r12d, 52(%rsp)                 # 4-byte Spill
	movq	%rbx, 56(%rsp)                  # 8-byte Spill
	movq	%r11, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB16_3
	.p2align	4, 0x90
.LBB16_2:                               # %if.end43
                                        #   in Loop: Header=BB16_3 Depth=1
	leal	1(%rax), %ecx
	movl	%ecx, 7252(%r14)
	cmpl	%r12d, %eax
	jge	.LBB16_332
.LBB16_3:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_90 Depth 2
                                        #     Child Loop BB16_110 Depth 2
                                        #     Child Loop BB16_137 Depth 2
                                        #     Child Loop BB16_166 Depth 2
                                        #     Child Loop BB16_214 Depth 2
                                        #       Child Loop BB16_227 Depth 3
	movl	%r12d, 7256(%r14)
	movl	688(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB16_7
# %bb.4:                                # %if.then6
                                        #   in Loop: Header=BB16_3 Depth=1
	addl	%ecx, %eax
	jmp	.LBB16_5
	.p2align	4, 0x90
.LBB16_7:                               # %if.else
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	692(%r14), %esi
	testl	%esi, %esi
	je	.LBB16_312
# %bb.8:                                # %land.lhs.true
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpl	$0, 8(%r14)
	je	.LBB16_313
.LBB16_312:                             #   in Loop: Header=BB16_3 Depth=1
	movl	%r12d, %eax
	jmp	.LBB16_5
.LBB16_313:                             # %if.then17
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	3200(%r14), %rax
	movl	1084(%rax), %edi
	movl	1088(%rax), %edx
	movzbl	136(%r14), %ecx
	sarl	%cl, %edx
	shll	%cl, %edi
	movl	72(%rsp), %eax                  # 4-byte Reload
	incl	%eax
	movl	%eax, 72(%rsp)                  # 4-byte Spill
	imull	%eax, %edx
	movl	%esi, %eax
	shrl	$31, %eax
	addl	%esi, %eax
	sarl	%eax
	addl	%edx, %eax
	cltd
	idivl	%esi
                                        # kill: def $eax killed $eax def $rax
	imull	%edi, %eax
	decl	%eax
	.p2align	4, 0x90
.LBB16_5:                               # %if.end33
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpl	%r12d, %eax
	cmovgel	%r12d, %eax
	movl	%eax, 7256(%r14)
	cmpl	$0, 640(%r14)
	je	.LBB16_10
# %bb.6:                                # %land.rhs.i
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpl	$1, 1760(%r14)
	movl	$-7, %eax
	sbbl	$0, %eax
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	jmp	.LBB16_11
	.p2align	4, 0x90
.LBB16_10:                              #   in Loop: Header=BB16_3 Depth=1
	movl	$-8, 44(%rsp)                   # 4-byte Folded Spill
.LBB16_11:                              # %land.end.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	684(%r14), %eax
	movl	%eax, 84(%rsp)                  # 4-byte Spill
	movq	1800(%r14), %rbp
	movl	1792(%r14), %ecx
	movl	1824(%r14), %edx
	movl	13884(%r14), %eax
	movl	%eax, 48(%rsp)                  # 4-byte Spill
	movq	14688(%r14), %rax
	cmpl	$0, 72(%rax)
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	je	.LBB16_44
# %bb.12:                               #   in Loop: Header=BB16_3 Depth=1
	movl	$0, 88(%rsp)                    # 4-byte Folded Spill
	movl	%ebp, %eax
	andl	$3, %eax
	je	.LBB16_14
.LBB16_13:                              # %if.then.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%ebp, %ecx
	andl	$3, %ecx
	movq	%rbp, %rdx
	andq	$-4, %rdx
	movq	%rdx, (%rbx)
	shll	$3, %ecx
	movl	$64, %esi
	subl	%ecx, %esi
	movl	%esi, (%r11)
	movl	(%rdx), %edx
	bswapl	%edx
	leal	32(,%rax,8), %ecx
	negl	%ecx
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rdx
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	%rdx, (%rax)
.LBB16_14:                              # %bs_realign.exit.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	1768(%r14), %rax
	movslq	1760(%r14), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movq	1856(%r14), %xmm0               # xmm0 = mem[0],zero
	pshufd	$225, %xmm0, %xmm0              # xmm0 = xmm0[1,0,2,3]
	movq	%xmm0, (%rax,%rcx,8)
	movl	$0, 8(%rax,%rcx,8)
	movl	1800(%r14), %edx
	subl	1792(%r14), %edx
	shll	$3, %edx
	subl	1824(%r14), %edx
	leal	64(%rdx), %esi
	addl	$71, %edx
	testl	%esi, %esi
	cmovnsl	%esi, %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	addq	1784(%r14), %rdx
	movq	%rdx, 16(%rax,%rcx,8)
	movq	%r14, %rdi
	callq	x264_macroblock_thread_init@PLT
	movl	7252(%r14), %edi
	movq	3200(%r14), %rax
	movl	1084(%rax), %eax
	imull	1748(%r14), %eax
	cmpl	%eax, %edi
	je	.LBB16_16
# %bb.15:                               # %if.then.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	25800(%r14), %eax
	movl	%eax, 13868(%r14)
	movq	3328(%r14), %rcx
	subl	36(%rcx), %eax
	movl	%eax, 13872(%r14)
.LBB16_16:                              # %if.end.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	1860(%r14), %eax
	movl	%eax, 112(%rsp)                 # 4-byte Spill
	cmpl	$0, 7268(%r14)
	movq	16(%rsp), %r11                  # 8-byte Reload
	movq	8(%rsp), %r15                   # 8-byte Reload
	je	.LBB16_45
# %bb.17:                               # %if.then.i874.i
                                        #   in Loop: Header=BB16_3 Depth=1
	sarl	%edi
	leal	1(%rdi), %r8d
	movl	%r8d, %eax
	shrl	$16, %eax
	xorl	%ecx, %ecx
	cmpl	$65535, %edi                    # imm = 0xFFFF
	setge	%cl
	cmovll	%r8d, %eax
	shll	$5, %ecx
	movl	%eax, %edx
	shrl	$8, %edx
	leal	16(%rcx), %edi
	cmpl	$256, %eax                      # imm = 0x100
	cmovll	%eax, %edx
	movslq	%edx, %rax
	movzbl	x264_ue_size_tab(%rax), %eax
	movzbl	%dil, %edx
	cmovll	%ecx, %edx
	movzbl	%dl, %edx
	addl	%eax, %edx
	shrl	%edx
	movq	(%r15), %r9
	movl	%edx, %ecx
	shlq	%cl, %r9
	movq	%r9, (%r15)
	movl	(%r11), %eax
	subl	%edx, %eax
	movl	%eax, (%r11)
	cmpl	$32, %eax
	jg	.LBB16_19
# %bb.18:                               # %if.then.i.i.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %r9
	bswapq	%r9
	movq	(%rbx), %rax
	movl	%r9d, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	(%r15), %r9
.LBB16_19:                              # %bs_write.exit.i.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r9
	movl	%r8d, %edi
	orq	%r9, %rdi
	movq	%rdi, (%r15)
	subl	%edx, %eax
	movl	%eax, (%r11)
	cmpl	$33, %eax
	jge	.LBB16_21
.LBB16_20:                              # %if.end.sink.split.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movq	(%rbx), %rax
	movl	%edi, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	(%r15), %rdi
.LBB16_21:                              # %if.end.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	7248(%r14), %r8d
	addl	$6, %r8d
	movl	%r8d, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %r8d                    # imm = 0x10000
	cmovll	%r8d, %ecx
	setge	%dl
	shll	$5, %edx
	movl	%ecx, %r9d
	shrl	$8, %r9d
	leal	16(%rdx), %r10d
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %r9d
	movslq	%r9d, %rcx
	movzbl	%r10b, %r9d
	cmovll	%edx, %r9d
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%r9b, %edx
	addl	%ecx, %edx
	shrl	%edx
	movl	%edx, %ecx
	shlq	%cl, %rdi
	movq	%rdi, 1816(%r14)
	subl	%edx, %eax
	movl	%eax, 1824(%r14)
	cmpl	$32, %eax
	jg	.LBB16_23
# %bb.22:                               # %if.then.i.i482.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movq	(%rbx), %rax
	movl	%edi, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	(%r15), %rdi
.LBB16_23:                              # %bs_write.exit.i466.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %rdi
	movl	%r8d, %r8d
	orq	%rdi, %r8
	movq	%r8, (%r15)
	subl	%edx, %eax
	movl	%eax, (%r11)
	cmpl	$32, %eax
	jg	.LBB16_25
# %bb.24:                               # %if.then.i25.i474.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%rbx), %rax
	movl	%r8d, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	(%r15), %r8
.LBB16_25:                              # %bs_write_ue_big.exit491.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	7260(%r14), %edi
	incl	%edi
	movl	%edi, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %edi                    # imm = 0x10000
	cmovll	%edi, %ecx
	setge	%dl
	shll	$5, %edx
	movl	%ecx, %r9d
	shrl	$8, %r9d
	leal	16(%rdx), %r10d
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %r9d
	movslq	%r9d, %rcx
	movzbl	%r10b, %r9d
	cmovll	%edx, %r9d
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%r9b, %edx
	addl	%ecx, %edx
	shrl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	movq	%r8, 1816(%r14)
	subl	%edx, %eax
	movl	%eax, 1824(%r14)
	cmpl	$32, %eax
	jg	.LBB16_27
# %bb.26:                               # %if.then.i.i529.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%rbx), %rax
	movl	%r8d, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	(%r15), %r8
.LBB16_27:                              # %bs_write.exit.i513.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	movl	%edi, %edi
	orq	%r8, %rdi
	movq	%rdi, (%r15)
	subl	%edx, %eax
	movl	%eax, (%r11)
	cmpl	$32, %eax
	jg	.LBB16_29
# %bb.28:                               # %if.then.i25.i521.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movq	(%rbx), %rax
	movl	%edi, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	movl	%eax, (%r11)
	addq	$4, (%rbx)
	movq	(%r15), %rdi
.LBB16_29:                              # %bs_write_ue_big.exit538.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	7232(%r14), %rdx
	movl	24(%rdx), %ecx
	movl	$-1, %r8d
	shll	%cl, %r8d
	notl	%r8d
	andl	7264(%r14), %r8d
	shlq	%cl, %rdi
	orq	%rdi, %r8
	movq	%r8, 1816(%r14)
	subl	%ecx, %eax
	movl	%eax, 1824(%r14)
	cmpl	$32, %eax
	jg	.LBB16_31
# %bb.30:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	1800(%r14), %rax
	movl	%r8d, (%rax)
	movl	1824(%r14), %eax
	addl	$32, %eax
	movl	%eax, 1824(%r14)
	addq	$4, 1800(%r14)
	movq	7232(%r14), %rdx
.LBB16_31:                              # %bs_write.exit.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpl	$0, 1092(%rdx)
	je	.LBB16_48
.LBB16_32:                              # %if.end11.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	7280(%r14), %edi
	testl	%edi, %edi
	js	.LBB16_37
# %bb.33:                               # %if.then12.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	incq	%rdi
	movl	%edi, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %edi                    # imm = 0x10000
	setge	%dl
	cmovll	%edi, %ecx
	shll	$5, %edx
	movl	%ecx, %r8d
	shrl	$8, %r8d
	leal	16(%rdx), %r9d
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %r8d
	movslq	%r8d, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%r9b, %r8d
	cmovll	%edx, %r8d
	movzbl	%r8b, %edx
	addl	%ecx, %edx
	shrl	%edx
	movq	(%r15), %r8
	movl	%edx, %ecx
	shlq	%cl, %r8
	movq	%r8, (%r15)
	subl	%edx, %eax
	movl	%eax, (%r11)
	cmpl	$32, %eax
	jg	.LBB16_35
# %bb.34:                               # %if.then.i.i601.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%rbx), %rax
	movl	%r8d, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	(%r15), %r8
.LBB16_35:                              # %bs_write.exit.i585.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	orq	%rdi, %r8
	movq	%r8, (%r15)
	subl	%edx, %eax
	movl	%eax, (%r11)
	cmpl	$32, %eax
	jg	.LBB16_37
# %bb.36:                               # %if.then.i25.i593.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%rbx), %rax
	movl	%r8d, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	movl	%eax, (%r11)
	addq	$4, (%rbx)
.LBB16_37:                              # %if.end14.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	7232(%r14), %rcx
	movl	28(%rcx), %edx
	cmpl	$1, %edx
	je	.LBB16_53
# %bb.38:                               # %if.end14.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	testl	%edx, %edx
	jne	.LBB16_60
# %bb.39:                               # %if.then17.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	32(%rcx), %ecx
	movl	$-1, %edx
	shll	%cl, %edx
	notl	%edx
	andl	7284(%r14), %edx
	movq	1816(%r14), %rdi
	shlq	%cl, %rdi
	orq	%rdi, %rdx
	movq	%rdx, 1816(%r14)
	subl	%ecx, %eax
	movl	%eax, 1824(%r14)
	cmpl	$32, %eax
	jg	.LBB16_41
# %bb.40:                               # %if.then.i619.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	(%rbx), %rax
	movl	%edx, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	movl	%eax, (%r11)
	addq	$4, (%rbx)
.LBB16_41:                              # %bs_write.exit627.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	7240(%r14), %rcx
	cmpl	$0, 12(%rcx)
	je	.LBB16_60
# %bb.42:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpl	$0, 7272(%r14)
	jne	.LBB16_60
# %bb.43:                               # %if.then27.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	7288(%r14), %ecx
	leal	(%rcx,%rcx), %edi
	movl	$1, %edx
	subl	%edi, %edx
	testl	%ecx, %ecx
	cmovgl	%edi, %edx
	movl	%edx, %ecx
	shrl	$8, %ecx
	xorl	%edi, %edi
	cmpl	$256, %edx                      # imm = 0x100
	setge	%dil
	cmovll	%edx, %ecx
	shll	$4, %edi
	movslq	%ecx, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	addl	%edi, %ecx
	movq	1816(%r14), %rdi
	shlq	%cl, %rdi
	orq	%rdi, %rdx
	movq	%rdx, 1816(%r14)
	subl	%ecx, %eax
	movl	%eax, 1824(%r14)
	cmpl	$33, %eax
	jl	.LBB16_59
	jmp	.LBB16_60
	.p2align	4, 0x90
.LBB16_44:                              # %lor.rhs.i
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpq	$0, 376(%r14)
	sete	%al
	movl	%eax, 88(%rsp)                  # 4-byte Spill
	movl	%ebp, %eax
	andl	$3, %eax
	jne	.LBB16_13
	jmp	.LBB16_14
	.p2align	4, 0x90
.LBB16_45:                              # %if.else.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	incl	%edi
	movl	%edi, %eax
	shrl	$16, %eax
	xorl	%ecx, %ecx
	cmpl	$65536, %edi                    # imm = 0x10000
	setge	%cl
	cmovll	%edi, %eax
	shll	$5, %ecx
	movl	%eax, %edx
	shrl	$8, %edx
	leal	16(%rcx), %r8d
	cmpl	$256, %eax                      # imm = 0x100
	cmovll	%eax, %edx
	movslq	%edx, %rax
	movzbl	x264_ue_size_tab(%rax), %eax
	movzbl	%r8b, %edx
	cmovll	%ecx, %edx
	movzbl	%dl, %edx
	addl	%eax, %edx
	shrl	%edx
	movq	(%r15), %r8
	movl	%edx, %ecx
	shlq	%cl, %r8
	movq	%r8, (%r15)
	movl	(%r11), %eax
	subl	%edx, %eax
	movl	%eax, (%r11)
	cmpl	$32, %eax
	jg	.LBB16_47
# %bb.46:                               # %if.then.i.i435.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%rbx), %rax
	movl	%r8d, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	(%r15), %r8
.LBB16_47:                              # %bs_write.exit.i419.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	movl	%edi, %edi
	orq	%r8, %rdi
	movq	%rdi, (%r15)
	subl	%edx, %eax
	movl	%eax, (%r11)
	cmpl	$32, %eax
	jle	.LBB16_20
	jmp	.LBB16_21
	.p2align	4, 0x90
.LBB16_48:                              # %if.then6.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	7272(%r14), %ecx
	movq	1816(%r14), %rdx
	addq	%rdx, %rdx
	orq	%rcx, %rdx
	movq	%rdx, 1816(%r14)
	decl	%eax
	movl	%eax, 1824(%r14)
	cmpl	$32, %eax
	jne	.LBB16_50
# %bb.49:                               # %if.then.i548.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	bswapl	%edx
	movq	1800(%r14), %rax
	movl	%edx, (%rax)
	addq	$4, 1800(%r14)
	movl	$64, 1824(%r14)
	movl	7272(%r14), %ecx
	movl	$64, %eax
.LBB16_50:                              # %bs_write1.exit.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	testl	%ecx, %ecx
	je	.LBB16_32
# %bb.51:                               # %if.then9.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	7276(%r14), %edx
	movq	1816(%r14), %rcx
	addq	%rcx, %rcx
	orq	%rdx, %rcx
	movq	%rcx, 1816(%r14)
	decl	%eax
	movl	%eax, 1824(%r14)
	cmpl	$32, %eax
	jne	.LBB16_32
# %bb.52:                               # %if.then.i558.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	bswapl	%ecx
	movq	(%rbx), %rax
	movl	%ecx, (%rax)
	addq	$4, (%rbx)
	movl	$64, (%r11)
	movl	$64, %eax
	jmp	.LBB16_32
	.p2align	4, 0x90
.LBB16_53:                              # %land.lhs.true33.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpl	$0, 36(%rcx)
	jne	.LBB16_60
# %bb.54:                               # %if.then36.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	7292(%r14), %ecx
	leal	(%rcx,%rcx), %edi
	movl	$1, %edx
	subl	%edi, %edx
	testl	%ecx, %ecx
	cmovgl	%edi, %edx
	movl	%edx, %ecx
	shrl	$8, %ecx
	xorl	%edi, %edi
	cmpl	$256, %edx                      # imm = 0x100
	setge	%dil
	cmovll	%edx, %ecx
	shll	$4, %edi
	movslq	%ecx, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	addl	%edi, %ecx
	movq	1816(%r14), %rdi
	shlq	%cl, %rdi
	orq	%rdi, %rdx
	movq	%rdx, 1816(%r14)
	subl	%ecx, %eax
	movl	%eax, 1824(%r14)
	cmpl	$32, %eax
	jg	.LBB16_56
# %bb.55:                               # %if.then.i.i675.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	(%rbx), %rax
	movl	%edx, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	movl	%eax, (%r11)
	addq	$4, (%rbx)
.LBB16_56:                              # %bs_write_se.exit683.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	7240(%r14), %rcx
	cmpl	$0, 12(%rcx)
	je	.LBB16_60
# %bb.57:                               # %land.lhs.true40.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpl	$0, 7272(%r14)
	jne	.LBB16_60
# %bb.58:                               # %if.then43.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	7296(%r14), %ecx
	leal	(%rcx,%rcx), %edi
	movl	$1, %edx
	subl	%edi, %edx
	testl	%ecx, %ecx
	cmovgl	%edi, %edx
	movl	%edx, %ecx
	shrl	$8, %ecx
	xorl	%edi, %edi
	cmpl	$256, %edx                      # imm = 0x100
	setge	%dil
	cmovll	%edx, %ecx
	shll	$4, %edi
	movslq	%ecx, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	addl	%edi, %ecx
	movq	1816(%r14), %rdi
	shlq	%cl, %rdi
	orq	%rdi, %rdx
	movq	%rdx, 1816(%r14)
	subl	%ecx, %eax
	movl	%eax, 1824(%r14)
	cmpl	$32, %eax
	jg	.LBB16_60
.LBB16_59:                              # %if.end48.sink.split.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	(%rbx), %rax
	movl	%edx, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	movl	%eax, (%r11)
	addq	$4, (%rbx)
	.p2align	4, 0x90
.LBB16_60:                              # %if.end48.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	7240(%r14), %rcx
	cmpl	$0, 56(%rcx)
	je	.LBB16_65
# %bb.61:                               # %if.then51.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	7300(%r14), %edi
	incl	%edi
	movl	%edi, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %edi                    # imm = 0x10000
	setge	%dl
	cmovll	%edi, %ecx
	shll	$5, %edx
	movl	%ecx, %r8d
	shrl	$8, %r8d
	leal	16(%rdx), %r9d
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %r8d
	movslq	%r8d, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%r9b, %r8d
	cmovll	%edx, %r8d
	movzbl	%r8b, %edx
	addl	%ecx, %edx
	shrl	%edx
	movq	1816(%r14), %r8
	movl	%edx, %ecx
	shlq	%cl, %r8
	movq	%r8, 1816(%r14)
	subl	%edx, %eax
	movl	%eax, 1824(%r14)
	cmpl	$32, %eax
	jg	.LBB16_63
# %bb.62:                               # %if.then.i.i751.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%rbx), %rax
	movl	%r8d, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	(%r15), %r8
.LBB16_63:                              # %bs_write.exit.i735.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	movl	%edi, %edi
	orq	%r8, %rdi
	movq	%rdi, (%r15)
	subl	%edx, %eax
	movl	%eax, (%r11)
	cmpl	$32, %eax
	jg	.LBB16_65
# %bb.64:                               # %if.then.i25.i743.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movq	(%rbx), %rax
	movl	%edi, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	movl	%eax, (%r11)
	addq	$4, (%rbx)
.LBB16_65:                              # %if.end52.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	7248(%r14), %ecx
	cmpl	$1, %ecx
	jne	.LBB16_68
# %bb.66:                               # %if.then55.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	7304(%r14), %edx
	movq	1816(%r14), %rcx
	addq	%rcx, %rcx
	orq	%rdx, %rcx
	movq	%rcx, 1816(%r14)
	decl	%eax
	movl	%eax, 1824(%r14)
	cmpl	$32, %eax
	jne	.LBB16_70
# %bb.67:                               # %if.then.i768.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	bswapl	%ecx
	movq	1800(%r14), %rax
	movl	%ecx, (%rax)
	addq	$4, 1800(%r14)
	movl	$64, 1824(%r14)
	movl	7248(%r14), %ecx
	movl	$64, %eax
.LBB16_68:                              # %if.end56.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpl	$3, %ecx
	ja	.LBB16_83
# %bb.69:                               # %if.end56.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpl	$2, %ecx
	je	.LBB16_83
.LBB16_70:                              # %if.then64.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	7308(%r14), %ecx
	movq	1816(%r14), %rdx
	addq	%rdx, %rdx
	orq	%rcx, %rdx
	movq	%rdx, 1816(%r14)
	decl	%eax
	movl	%eax, 1824(%r14)
	cmpl	$32, %eax
	jne	.LBB16_72
# %bb.71:                               # %if.then.i781.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	bswapl	%edx
	movq	1800(%r14), %rax
	movl	%edx, (%rax)
	addq	$4, 1800(%r14)
	movl	$64, 1824(%r14)
	movl	7308(%r14), %ecx
	movl	$64, %eax
.LBB16_72:                              # %bs_write1.exit786.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	testl	%ecx, %ecx
	je	.LBB16_83
# %bb.73:                               # %if.then67.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	7312(%r14), %edi
	movl	%edi, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %edi                    # imm = 0x10000
	setge	%dl
	cmovll	%edi, %ecx
	shll	$5, %edx
	movl	%ecx, %r8d
	shrl	$8, %r8d
	leal	16(%rdx), %r9d
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %r8d
	movslq	%r8d, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%r9b, %r8d
	cmovll	%edx, %r8d
	movzbl	%r8b, %edx
	addl	%ecx, %edx
	shrl	%edx
	movq	1816(%r14), %r8
	movl	%edx, %ecx
	shlq	%cl, %r8
	movq	%r8, 1816(%r14)
	subl	%edx, %eax
	movl	%eax, 1824(%r14)
	cmpl	$32, %eax
	jg	.LBB16_75
# %bb.74:                               # %if.then.i.i824.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%rbx), %rax
	movl	%r8d, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	(%r15), %r8
.LBB16_75:                              # %bs_write.exit.i808.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	orq	%rdi, %r8
	movq	%r8, (%r15)
	subl	%edx, %eax
	movl	%eax, (%r11)
	cmpl	$32, %eax
	jg	.LBB16_76
# %bb.78:                               # %if.then.i25.i816.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%rbx), %rax
	movl	%r8d, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	movl	%eax, (%r11)
	addq	$4, (%rbx)
	movl	7248(%r14), %ecx
	cmpl	$1, %ecx
	je	.LBB16_79
	.p2align	4, 0x90
.LBB16_77:                              # %if.end75.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpl	$2, %ecx
	jne	.LBB16_84
	jmp	.LBB16_103
	.p2align	4, 0x90
.LBB16_76:                              # %bs_write_ue_big.exit833.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	7248(%r14), %ecx
	cmpl	$1, %ecx
	jne	.LBB16_77
.LBB16_79:                              # %if.then71.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	7316(%r14), %edi
	movl	%edi, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %edi                    # imm = 0x10000
	setge	%dl
	cmovll	%edi, %ecx
	shll	$5, %edx
	movl	%ecx, %r8d
	shrl	$8, %r8d
	leal	16(%rdx), %r9d
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %r8d
	movslq	%r8d, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%r9b, %r8d
	cmovll	%edx, %r8d
	movzbl	%r8b, %edx
	addl	%ecx, %edx
	shrl	%edx
	movq	1816(%r14), %r8
	movl	%edx, %ecx
	shlq	%cl, %r8
	movq	%r8, 1816(%r14)
	subl	%edx, %eax
	movl	%eax, 1824(%r14)
	cmpl	$32, %eax
	jg	.LBB16_81
# %bb.80:                               # %if.then.i.i871.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%rbx), %rax
	movl	%r8d, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	(%r15), %r8
.LBB16_81:                              # %bs_write.exit.i855.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	orq	%rdi, %r8
	movq	%r8, (%r15)
	subl	%edx, %eax
	movl	%eax, (%r11)
	cmpl	$32, %eax
	jg	.LBB16_83
# %bb.82:                               # %if.then.i25.i863.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%rbx), %rax
	movl	%r8d, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	movl	%eax, (%r11)
	addq	$4, (%rbx)
	.p2align	4, 0x90
.LBB16_83:                              # %if.end75thread-pre-split.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	7248(%r14), %ecx
	cmpl	$2, %ecx
	je	.LBB16_103
.LBB16_84:                              # %if.then78.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	7320(%r14), %ecx
	movq	1816(%r14), %rdx
	addq	%rdx, %rdx
	orq	%rcx, %rdx
	movq	%rdx, 1816(%r14)
	decl	%eax
	movl	%eax, 1824(%r14)
	cmpl	$32, %eax
	jne	.LBB16_86
# %bb.85:                               # %if.then.i888.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	bswapl	%edx
	movq	1800(%r14), %rax
	movl	%edx, (%rax)
	addq	$4, 1800(%r14)
	movl	$64, 1824(%r14)
	movl	7320(%r14), %ecx
	movl	$64, %eax
.LBB16_86:                              # %bs_write1.exit893.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	testl	%ecx, %ecx
	je	.LBB16_103
# %bb.87:                               # %for.cond.preheader.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpl	$0, 7312(%r14)
	jle	.LBB16_99
# %bb.88:                               # %for.body.i.i.preheader
                                        #   in Loop: Header=BB16_3 Depth=1
	xorl	%edi, %edi
	jmp	.LBB16_90
	.p2align	4, 0x90
.LBB16_89:                              # %bs_write_ue_big.exit1015.i.i
                                        #   in Loop: Header=BB16_90 Depth=2
	incq	%rdi
	movslq	7312(%r14), %rcx
	cmpq	%rcx, %rdi
	jge	.LBB16_99
.LBB16_90:                              # %for.body.i.i
                                        #   Parent Loop BB16_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	7328(%r14,%rdi,8), %r8d
	incl	%r8d
	movl	%r8d, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %r8d                    # imm = 0x10000
	setge	%dl
	cmovll	%r8d, %ecx
	shll	$5, %edx
	movl	%ecx, %r9d
	shrl	$8, %r9d
	leal	16(%rdx), %r10d
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %r9d
	movslq	%r9d, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%r10b, %r9d
	cmovll	%edx, %r9d
	movzbl	%r9b, %edx
	addl	%ecx, %edx
	shrl	%edx
	movq	1816(%r14), %r9
	movl	%edx, %ecx
	shlq	%cl, %r9
	movq	%r9, 1816(%r14)
	subl	%edx, %eax
	movl	%eax, 1824(%r14)
	cmpl	$32, %eax
	jg	.LBB16_92
# %bb.91:                               # %if.then.i.i959.i.i
                                        #   in Loop: Header=BB16_90 Depth=2
	movl	%eax, %ecx
	shlq	%cl, %r9
	bswapq	%r9
	movq	(%rbx), %rax
	movl	%r9d, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	(%r15), %r9
.LBB16_92:                              # %bs_write.exit.i943.i.i
                                        #   in Loop: Header=BB16_90 Depth=2
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r9
	movl	%r8d, %r8d
	orq	%r9, %r8
	movq	%r8, (%r15)
	subl	%edx, %eax
	movl	%eax, (%r11)
	cmpl	$32, %eax
	jg	.LBB16_94
# %bb.93:                               # %if.then.i25.i951.i.i
                                        #   in Loop: Header=BB16_90 Depth=2
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%rbx), %rax
	movl	%r8d, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	(%r15), %r8
.LBB16_94:                              # %bs_write_ue_big.exit968.i.i
                                        #   in Loop: Header=BB16_90 Depth=2
	movl	7332(%r14,%rdi,8), %r9d
	incl	%r9d
	movl	%r9d, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %r9d                    # imm = 0x10000
	cmovll	%r9d, %ecx
	setge	%dl
	shll	$5, %edx
	movl	%ecx, %r10d
	shrl	$8, %r10d
	leal	16(%rdx), %r11d
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %r10d
	movslq	%r10d, %rcx
	movzbl	%r11b, %r10d
	cmovll	%edx, %r10d
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%r10b, %edx
	addl	%ecx, %edx
	shrl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	movq	%r8, 1816(%r14)
	subl	%edx, %eax
	movl	%eax, 1824(%r14)
	cmpl	$32, %eax
	jg	.LBB16_96
# %bb.95:                               # %if.then.i.i1006.i.i
                                        #   in Loop: Header=BB16_90 Depth=2
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%rbx), %rax
	movl	%r8d, (%rax)
	movq	16(%rsp), %r11                  # 8-byte Reload
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	(%r15), %r8
	jmp	.LBB16_97
	.p2align	4, 0x90
.LBB16_96:                              #   in Loop: Header=BB16_90 Depth=2
	movq	16(%rsp), %r11                  # 8-byte Reload
.LBB16_97:                              # %bs_write.exit.i990.i.i
                                        #   in Loop: Header=BB16_90 Depth=2
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	movl	%r9d, %r9d
	orq	%r8, %r9
	movq	%r9, (%r15)
	subl	%edx, %eax
	movl	%eax, (%r11)
	cmpl	$32, %eax
	jg	.LBB16_89
# %bb.98:                               # %if.then.i25.i998.i.i
                                        #   in Loop: Header=BB16_90 Depth=2
	movl	%eax, %ecx
	shlq	%cl, %r9
	bswapq	%r9
	movq	(%rbx), %rax
	movl	%r9d, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	movl	%eax, (%r11)
	addq	$4, (%rbx)
	jmp	.LBB16_89
	.p2align	4, 0x90
.LBB16_99:                              # %for.cond.cleanup.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	(%r15), %rdx
	shlq	$2, %rdx
	movq	%rdx, (%r15)
	leal	-2(%rax), %ecx
	movl	%ecx, (%r11)
	cmpl	$34, %eax
	jg	.LBB16_101
# %bb.100:                              # %if.then.i.i912.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	(%rbx), %rax
	movl	%edx, (%rax)
	movl	(%r11), %ecx
	addl	$32, %ecx
	addq	$4, (%rbx)
	movq	(%r15), %rdx
.LBB16_101:                             # %bs_write.exit.i899.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	leaq	4(,%rdx,8), %rdx
	movq	%rdx, (%r15)
	leal	-3(%rcx), %eax
	movl	%eax, (%r11)
	cmpl	$35, %ecx
	jg	.LBB16_103
# %bb.102:                              # %if.then.i25.i904.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	(%rbx), %rax
	movl	%edx, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	movl	%eax, (%r11)
	addq	$4, (%rbx)
	.p2align	4, 0x90
.LBB16_103:                             # %if.end91.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpl	$1, 7248(%r14)
	jne	.LBB16_123
# %bb.104:                              # %if.then94.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	7324(%r14), %ecx
	movq	1816(%r14), %rdx
	addq	%rdx, %rdx
	orq	%rcx, %rdx
	movq	%rdx, 1816(%r14)
	decl	%eax
	movl	%eax, 1824(%r14)
	cmpl	$32, %eax
	jne	.LBB16_106
# %bb.105:                              # %if.then.i1023.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	bswapl	%edx
	movq	1800(%r14), %rax
	movl	%edx, (%rax)
	addq	$4, 1800(%r14)
	movl	$64, 1824(%r14)
	movl	7324(%r14), %ecx
	movl	$64, %eax
.LBB16_106:                             # %bs_write1.exit1028.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	testl	%ecx, %ecx
	je	.LBB16_123
# %bb.107:                              # %for.cond99.preheader.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpl	$0, 7316(%r14)
	jle	.LBB16_119
# %bb.108:                              # %for.body103.i.i.preheader
                                        #   in Loop: Header=BB16_3 Depth=1
	xorl	%edi, %edi
	jmp	.LBB16_110
	.p2align	4, 0x90
.LBB16_109:                             # %bs_write_ue_big.exit1150.i.i
                                        #   in Loop: Header=BB16_110 Depth=2
	incq	%rdi
	movslq	7316(%r14), %rcx
	cmpq	%rcx, %rdi
	jge	.LBB16_119
.LBB16_110:                             # %for.body103.i.i
                                        #   Parent Loop BB16_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	7456(%r14,%rdi,8), %r8d
	incl	%r8d
	movl	%r8d, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %r8d                    # imm = 0x10000
	setge	%dl
	cmovll	%r8d, %ecx
	shll	$5, %edx
	movl	%ecx, %r9d
	shrl	$8, %r9d
	leal	16(%rdx), %r10d
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %r9d
	movslq	%r9d, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%r10b, %r9d
	cmovll	%edx, %r9d
	movzbl	%r9b, %edx
	addl	%ecx, %edx
	shrl	%edx
	movq	1816(%r14), %r9
	movl	%edx, %ecx
	shlq	%cl, %r9
	movq	%r9, 1816(%r14)
	subl	%edx, %eax
	movl	%eax, 1824(%r14)
	cmpl	$32, %eax
	jg	.LBB16_112
# %bb.111:                              # %if.then.i.i1094.i.i
                                        #   in Loop: Header=BB16_110 Depth=2
	movl	%eax, %ecx
	shlq	%cl, %r9
	bswapq	%r9
	movq	(%rbx), %rax
	movl	%r9d, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	(%r15), %r9
.LBB16_112:                             # %bs_write.exit.i1078.i.i
                                        #   in Loop: Header=BB16_110 Depth=2
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r9
	movl	%r8d, %r8d
	orq	%r9, %r8
	movq	%r8, (%r15)
	subl	%edx, %eax
	movl	%eax, (%r11)
	cmpl	$32, %eax
	jg	.LBB16_114
# %bb.113:                              # %if.then.i25.i1086.i.i
                                        #   in Loop: Header=BB16_110 Depth=2
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%rbx), %rax
	movl	%r8d, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	(%r15), %r8
.LBB16_114:                             # %bs_write_ue_big.exit1103.i.i
                                        #   in Loop: Header=BB16_110 Depth=2
	movl	7460(%r14,%rdi,8), %r9d
	incl	%r9d
	movl	%r9d, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %r9d                    # imm = 0x10000
	cmovll	%r9d, %ecx
	setge	%dl
	shll	$5, %edx
	movl	%ecx, %r10d
	shrl	$8, %r10d
	leal	16(%rdx), %r11d
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %r10d
	movslq	%r10d, %rcx
	movzbl	%r11b, %r10d
	cmovll	%edx, %r10d
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%r10b, %edx
	addl	%ecx, %edx
	shrl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	movq	%r8, 1816(%r14)
	subl	%edx, %eax
	movl	%eax, 1824(%r14)
	cmpl	$32, %eax
	jg	.LBB16_116
# %bb.115:                              # %if.then.i.i1141.i.i
                                        #   in Loop: Header=BB16_110 Depth=2
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%rbx), %rax
	movl	%r8d, (%rax)
	movq	16(%rsp), %r11                  # 8-byte Reload
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	(%r15), %r8
	jmp	.LBB16_117
	.p2align	4, 0x90
.LBB16_116:                             #   in Loop: Header=BB16_110 Depth=2
	movq	16(%rsp), %r11                  # 8-byte Reload
.LBB16_117:                             # %bs_write.exit.i1125.i.i
                                        #   in Loop: Header=BB16_110 Depth=2
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	movl	%r9d, %r9d
	orq	%r8, %r9
	movq	%r9, (%r15)
	subl	%edx, %eax
	movl	%eax, (%r11)
	cmpl	$32, %eax
	jg	.LBB16_109
# %bb.118:                              # %if.then.i25.i1133.i.i
                                        #   in Loop: Header=BB16_110 Depth=2
	movl	%eax, %ecx
	shlq	%cl, %r9
	bswapq	%r9
	movq	(%rbx), %rax
	movl	%r9d, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	movl	%eax, (%r11)
	addq	$4, (%rbx)
	jmp	.LBB16_109
	.p2align	4, 0x90
.LBB16_119:                             # %for.cond.cleanup102.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	(%r15), %rdx
	shlq	$2, %rdx
	movq	%rdx, (%r15)
	leal	-2(%rax), %ecx
	movl	%ecx, (%r11)
	cmpl	$34, %eax
	jg	.LBB16_121
# %bb.120:                              # %if.then.i.i1047.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	(%rbx), %rax
	movl	%edx, (%rax)
	movl	(%r11), %ecx
	addl	$32, %ecx
	addq	$4, (%rbx)
	movq	(%r15), %rdx
.LBB16_121:                             # %bs_write.exit.i1034.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	leaq	4(,%rdx,8), %rdx
	movq	%rdx, (%r15)
	leal	-3(%rcx), %eax
	movl	%eax, (%r11)
	cmpl	$35, %ecx
	jg	.LBB16_123
# %bb.122:                              # %if.then.i25.i1039.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	(%rbx), %rax
	movl	%edx, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	movl	%eax, (%r11)
	addq	$4, (%rbx)
	.p2align	4, 0x90
.LBB16_123:                             # %if.end118.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	7240(%r14), %rcx
	cmpl	$0, 28(%rcx)
	je	.LBB16_157
# %bb.124:                              # %land.lhs.true121.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	7248(%r14), %ecx
	cmpl	$3, %ecx
	je	.LBB16_126
# %bb.125:                              # %land.lhs.true121.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	testl	%ecx, %ecx
	jne	.LBB16_157
.LBB16_126:                             # %if.then127.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	7616(%r14), %edi
	incl	%edi
	movl	%edi, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %edi                    # imm = 0x10000
	setge	%dl
	cmovll	%edi, %ecx
	shll	$5, %edx
	movl	%ecx, %r8d
	shrl	$8, %r8d
	leal	16(%rdx), %r9d
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %r8d
	movslq	%r8d, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%r9b, %r8d
	cmovll	%edx, %r8d
	movzbl	%r8b, %edx
	addl	%ecx, %edx
	shrl	%edx
	movq	1816(%r14), %r8
	movl	%edx, %ecx
	shlq	%cl, %r8
	movq	%r8, 1816(%r14)
	subl	%edx, %eax
	movl	%eax, 1824(%r14)
	cmpl	$32, %eax
	jg	.LBB16_128
# %bb.127:                              # %if.then.i.i1188.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%rbx), %rax
	movl	%r8d, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	(%r15), %r8
.LBB16_128:                             # %bs_write.exit.i1172.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	movl	%edi, %edi
	orq	%r8, %rdi
	movq	%rdi, (%r15)
	subl	%edx, %eax
	movl	%eax, (%r11)
	cmpl	$32, %eax
	jg	.LBB16_130
# %bb.129:                              # %if.then.i25.i1180.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movq	(%rbx), %rax
	movl	%edi, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	(%r15), %rdi
.LBB16_130:                             # %bs_write_ue_big.exit1197.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	7680(%r14), %r8d
	incl	%r8d
	movl	%r8d, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %r8d                    # imm = 0x10000
	cmovll	%r8d, %ecx
	setge	%dl
	shll	$5, %edx
	movl	%ecx, %r9d
	shrl	$8, %r9d
	leal	16(%rdx), %r10d
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %r9d
	movslq	%r9d, %rcx
	movzbl	%r10b, %r9d
	cmovll	%edx, %r9d
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%r9b, %edx
	addl	%ecx, %edx
	shrl	%edx
	movl	%edx, %ecx
	shlq	%cl, %rdi
	movq	%rdi, 1816(%r14)
	subl	%edx, %eax
	movl	%eax, 1824(%r14)
	cmpl	$32, %eax
	jg	.LBB16_132
# %bb.131:                              # %if.then.i.i1235.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movq	(%rbx), %rax
	movl	%edi, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	(%r15), %rdi
.LBB16_132:                             # %bs_write.exit.i1219.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %rdi
	movl	%r8d, %r8d
	orq	%rdi, %r8
	movq	%r8, (%r15)
	subl	%edx, %eax
	movl	%eax, (%r11)
	cmpl	$32, %eax
	jg	.LBB16_134
# %bb.133:                              # %if.then.i25.i1227.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%rbx), %rax
	movl	%r8d, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	movl	%eax, (%r11)
	addq	$4, (%rbx)
.LBB16_134:                             # %bs_write_ue_big.exit1244.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpl	$0, 7312(%r14)
	jle	.LBB16_157
# %bb.135:                              # %for.body139.i.i.preheader
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	128(%rsp), %rdx                 # 8-byte Reload
	xorl	%edi, %edi
	jmp	.LBB16_137
	.p2align	4, 0x90
.LBB16_136:                             # %if.end194.i.i
                                        #   in Loop: Header=BB16_137 Depth=2
	incq	%rdi
	movslq	7312(%r14), %rcx
	addq	$192, %rdx
	cmpq	%rcx, %rdi
	jge	.LBB16_157
.LBB16_137:                             # %for.body139.i.i
                                        #   Parent Loop BB16_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$1, %r8b
	cmpq	$0, -64(%rdx)
	jne	.LBB16_139
# %bb.138:                              # %lor.rhs.i.i
                                        #   in Loop: Header=BB16_137 Depth=2
	cmpq	$0, (%rdx)
	setne	%r8b
.LBB16_139:                             # %lor.end.i.i
                                        #   in Loop: Header=BB16_137 Depth=2
	movq	-128(%rdx), %rcx
	xorl	%r9d, %r9d
	testq	%rcx, %rcx
	setne	%r9b
	movq	(%r15), %r10
	leaq	(%r9,%r10,2), %r9
	movq	%r9, (%r15)
	decl	%eax
	cmpl	$32, %eax
	jne	.LBB16_141
# %bb.140:                              # %if.then.i1252.i.i
                                        #   in Loop: Header=BB16_137 Depth=2
	bswapl	%r9d
	movq	(%rbx), %rax
	movl	%r9d, (%rax)
	addq	$4, (%rbx)
	movq	(%r15), %r9
	movl	$64, %eax
.LBB16_141:                             # %bs_write1.exit1257.i.i
                                        #   in Loop: Header=BB16_137 Depth=2
	testq	%rcx, %rcx
	je	.LBB16_146
# %bb.142:                              # %if.then163.i.i
                                        #   in Loop: Header=BB16_137 Depth=2
	movl	-140(%rdx), %ecx
	leal	(%rcx,%rcx), %r11d
	movl	$1, %r10d
	subl	%r11d, %r10d
	testl	%ecx, %ecx
	cmovgl	%r11d, %r10d
	movl	%r10d, %ecx
	shrl	$8, %ecx
	xorl	%r11d, %r11d
	cmpl	$256, %r10d                     # imm = 0x100
	setge	%r11b
	cmovll	%r10d, %ecx
	shll	$4, %r11d
	movslq	%ecx, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	addl	%r11d, %ecx
	movq	16(%rsp), %rsi                  # 8-byte Reload
	shlq	%cl, %r9
	orq	%r9, %r10
	movq	%r10, (%r15)
	subl	%ecx, %eax
	movl	%eax, (%rsi)
	cmpl	$32, %eax
	jg	.LBB16_144
# %bb.143:                              # %if.then.i.i1279.i.i
                                        #   in Loop: Header=BB16_137 Depth=2
	movl	%eax, %ecx
	shlq	%cl, %r10
	bswapq	%r10
	movq	(%rbx), %rax
	movl	%r10d, (%rax)
	movl	(%rsi), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	(%r15), %r10
.LBB16_144:                             # %bs_write_se.exit1287.i.i
                                        #   in Loop: Header=BB16_137 Depth=2
	movl	-136(%rdx), %ecx
	leal	(%rcx,%rcx), %r11d
	movl	$1, %r9d
	subl	%r11d, %r9d
	testl	%ecx, %ecx
	cmovgl	%r11d, %r9d
	movl	%r9d, %ecx
	shrl	$8, %ecx
	xorl	%r11d, %r11d
	cmpl	$256, %r9d                      # imm = 0x100
	setge	%r11b
	cmovll	%r9d, %ecx
	shll	$4, %r11d
	movslq	%ecx, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	addl	%r11d, %ecx
	shlq	%cl, %r10
	orq	%r10, %r9
	movq	%r9, (%r15)
	subl	%ecx, %eax
	movl	%eax, (%rsi)
	cmpl	$32, %eax
	movq	%rsi, %r11
	jg	.LBB16_146
# %bb.145:                              # %if.then.i.i1309.i.i
                                        #   in Loop: Header=BB16_137 Depth=2
	movl	%eax, %ecx
	shlq	%cl, %r9
	bswapq	%r9
	movq	(%rbx), %rax
	movl	%r9d, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	(%r15), %r9
.LBB16_146:                             # %if.end172.i.i
                                        #   in Loop: Header=BB16_137 Depth=2
	movzbl	%r8b, %ecx
	leaq	(%rcx,%r9,2), %rcx
	movq	%rcx, (%r15)
	decl	%eax
	movl	%eax, (%r11)
	cmpl	$32, %eax
	jne	.LBB16_148
# %bb.147:                              # %if.then.i1325.i.i
                                        #   in Loop: Header=BB16_137 Depth=2
	bswapl	%ecx
	movq	(%rbx), %rax
	movl	%ecx, (%rax)
	addq	$4, (%rbx)
	movl	$64, (%r11)
	movl	$64, %eax
.LBB16_148:                             # %bs_write1.exit1330.i.i
                                        #   in Loop: Header=BB16_137 Depth=2
	testb	%r8b, %r8b
	je	.LBB16_136
# %bb.149:                              # %for.body178.preheader.i.i
                                        #   in Loop: Header=BB16_137 Depth=2
	movl	-76(%rdx), %ecx
	leal	(%rcx,%rcx), %r9d
	movl	$1, %r8d
	subl	%r9d, %r8d
	testl	%ecx, %ecx
	cmovgl	%r9d, %r8d
	movl	%r8d, %ecx
	shrl	$8, %ecx
	xorl	%r9d, %r9d
	cmpl	$256, %r8d                      # imm = 0x100
	setge	%r9b
	cmovll	%r8d, %ecx
	shll	$4, %r9d
	movslq	%ecx, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	addl	%r9d, %ecx
	movq	(%r15), %r9
	shlq	%cl, %r9
	orq	%r9, %r8
	movq	%r8, (%r15)
	subl	%ecx, %eax
	movl	%eax, (%r11)
	cmpl	$32, %eax
	jg	.LBB16_151
# %bb.150:                              # %if.then.i.i1352.i.i
                                        #   in Loop: Header=BB16_137 Depth=2
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%rbx), %rax
	movl	%r8d, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	(%r15), %r8
.LBB16_151:                             # %bs_write_se.exit1360.i.i
                                        #   in Loop: Header=BB16_137 Depth=2
	movl	-72(%rdx), %ecx
	leal	(%rcx,%rcx), %r10d
	movl	$1, %r9d
	subl	%r10d, %r9d
	testl	%ecx, %ecx
	cmovgl	%r10d, %r9d
	movl	%r9d, %ecx
	shrl	$8, %ecx
	xorl	%r10d, %r10d
	cmpl	$256, %r9d                      # imm = 0x100
	setge	%r10b
	cmovll	%r9d, %ecx
	shll	$4, %r10d
	movslq	%ecx, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	addl	%r10d, %ecx
	shlq	%cl, %r8
	orq	%r8, %r9
	movq	%r9, (%r15)
	subl	%ecx, %eax
	movl	%eax, (%r11)
	cmpl	$32, %eax
	jg	.LBB16_153
# %bb.152:                              # %if.then.i.i1382.i.i
                                        #   in Loop: Header=BB16_137 Depth=2
	movl	%eax, %ecx
	shlq	%cl, %r9
	bswapq	%r9
	movq	(%rbx), %rax
	movl	%r9d, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	(%r15), %r9
.LBB16_153:                             # %bs_write_se.exit1390.i.i
                                        #   in Loop: Header=BB16_137 Depth=2
	movl	-12(%rdx), %ecx
	leal	(%rcx,%rcx), %r10d
	movl	$1, %r8d
	subl	%r10d, %r8d
	testl	%ecx, %ecx
	cmovgl	%r10d, %r8d
	movl	%r8d, %ecx
	shrl	$8, %ecx
	xorl	%r10d, %r10d
	cmpl	$256, %r8d                      # imm = 0x100
	setge	%r10b
	cmovll	%r8d, %ecx
	shll	$4, %r10d
	movslq	%ecx, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	addl	%r10d, %ecx
	shlq	%cl, %r9
	orq	%r9, %r8
	movq	%r8, (%r15)
	subl	%ecx, %eax
	movl	%eax, (%r11)
	cmpl	$32, %eax
	jg	.LBB16_155
# %bb.154:                              # %if.then.i.i1352.1.i.i
                                        #   in Loop: Header=BB16_137 Depth=2
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%rbx), %rax
	movl	%r8d, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	(%r15), %r8
.LBB16_155:                             # %bs_write_se.exit1360.1.i.i
                                        #   in Loop: Header=BB16_137 Depth=2
	movl	-8(%rdx), %ecx
	leal	(%rcx,%rcx), %r10d
	movl	$1, %r9d
	subl	%r10d, %r9d
	testl	%ecx, %ecx
	cmovgl	%r10d, %r9d
	movl	%r9d, %ecx
	shrl	$8, %ecx
	xorl	%r10d, %r10d
	cmpl	$256, %r9d                      # imm = 0x100
	setge	%r10b
	cmovll	%r9d, %ecx
	shll	$4, %r10d
	movslq	%ecx, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	addl	%r10d, %ecx
	shlq	%cl, %r8
	orq	%r8, %r9
	movq	%r9, (%r15)
	subl	%ecx, %eax
	movl	%eax, (%r11)
	cmpl	$32, %eax
	jg	.LBB16_136
# %bb.156:                              # %if.then.i.i1382.1.i.i
                                        #   in Loop: Header=BB16_137 Depth=2
	movl	%eax, %ecx
	shlq	%cl, %r9
	bswapq	%r9
	movq	(%rbx), %rax
	movl	%r9d, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	movl	%eax, (%r11)
	addq	$4, (%rbx)
	jmp	.LBB16_136
	.p2align	4, 0x90
.LBB16_157:                             # %if.end206.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpl	$0, 112(%rsp)                   # 4-byte Folded Reload
	je	.LBB16_181
# %bb.158:                              # %if.then208.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpl	$0, 7280(%r14)
	js	.LBB16_161
# %bb.159:                              # %if.then211.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	(%r15), %rcx
	leaq	(%rcx,%rcx), %rdx
	movq	%rdx, (%r15)
	leal	-1(%rax), %esi
	movl	%esi, (%r11)
	cmpl	$32, %esi
	jne	.LBB16_175
# %bb.160:                              # %bs_write1.exit1402.thread.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	bswapl	%edx
	movq	(%rbx), %rax
	movl	%edx, (%rax)
	addq	$4, (%rbx)
	shlq	(%r15)
	movl	$63, (%r11)
	movl	$63, %eax
	jmp	.LBB16_181
	.p2align	4, 0x90
.LBB16_161:                             # %if.else212.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	13732(%r14), %ecx
	xorl	%edx, %edx
	testl	%ecx, %ecx
	setg	%dl
	movq	1816(%r14), %rsi
	leaq	(%rdx,%rsi,2), %rdx
	movq	%rdx, 1816(%r14)
	decl	%eax
	movl	%eax, 1824(%r14)
	cmpl	$32, %eax
	jne	.LBB16_163
# %bb.162:                              # %if.then.i1422.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	bswapl	%edx
	movq	1800(%r14), %rax
	movl	%edx, (%rax)
	addq	$4, 1800(%r14)
	movl	$64, 1824(%r14)
	movl	13732(%r14), %ecx
	movl	$64, %eax
.LBB16_163:                             # %bs_write1.exit1427.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	testl	%ecx, %ecx
	jle	.LBB16_181
# %bb.164:                              # %for.body224.i.i.preheader
                                        #   in Loop: Header=BB16_3 Depth=1
	xorl	%esi, %esi
	jmp	.LBB16_166
	.p2align	4, 0x90
.LBB16_165:                             # %bs_write_ue_big.exit1530.i.i
                                        #   in Loop: Header=BB16_166 Depth=2
	incq	%rsi
	movslq	13732(%r14), %rcx
	cmpq	%rcx, %rsi
	jge	.LBB16_177
.LBB16_166:                             # %for.body224.i.i
                                        #   Parent Loop BB16_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rsp), %r8                    # 8-byte Reload
	movq	(%r8), %rdx
	addq	%rdx, %rdx
	movq	%rdx, (%r8)
	leal	-1(%rax), %ecx
	movl	%ecx, (%r11)
	cmpl	$33, %eax
	jg	.LBB16_168
# %bb.167:                              # %if.then.i.i1474.i.i
                                        #   in Loop: Header=BB16_166 Depth=2
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	(%rbx), %rax
	movl	%edx, (%rax)
	movl	(%r11), %ecx
	addl	$32, %ecx
	addq	$4, (%rbx)
	movq	(%r8), %rdx
.LBB16_168:                             # %bs_write.exit.i1461.i.i
                                        #   in Loop: Header=BB16_166 Depth=2
	leaq	2(,%rdx,4), %rdi
	movq	%rdi, (%r8)
	leal	-2(%rcx), %eax
	movl	%eax, (%r11)
	cmpl	$34, %ecx
	jg	.LBB16_170
# %bb.169:                              # %if.then.i25.i1466.i.i
                                        #   in Loop: Header=BB16_166 Depth=2
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movq	(%rbx), %rax
	movl	%edi, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	(%r8), %rdi
.LBB16_170:                             # %bs_write_ue_big.exit1483.i.i
                                        #   in Loop: Header=BB16_166 Depth=2
	movl	13736(%r14,%rsi,8), %r8d
	movl	%r8d, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %r8d                    # imm = 0x10000
	cmovll	%r8d, %ecx
	setge	%dl
	shll	$5, %edx
	movl	%ecx, %r9d
	shrl	$8, %r9d
	leal	16(%rdx), %r10d
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %r9d
	movslq	%r9d, %rcx
	movzbl	%r10b, %r9d
	cmovll	%edx, %r9d
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%r9b, %edx
	addl	%ecx, %edx
	shrl	%edx
	movl	%edx, %ecx
	shlq	%cl, %rdi
	movq	%rdi, 1816(%r14)
	subl	%edx, %eax
	movl	%eax, 1824(%r14)
	cmpl	$32, %eax
	jg	.LBB16_172
# %bb.171:                              # %if.then.i.i1521.i.i
                                        #   in Loop: Header=BB16_166 Depth=2
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movq	(%rbx), %rax
	movl	%edi, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	8(%rsp), %r9                    # 8-byte Reload
	movq	(%r9), %rdi
	jmp	.LBB16_173
	.p2align	4, 0x90
.LBB16_172:                             #   in Loop: Header=BB16_166 Depth=2
	movq	8(%rsp), %r9                    # 8-byte Reload
.LBB16_173:                             # %bs_write.exit.i1505.i.i
                                        #   in Loop: Header=BB16_166 Depth=2
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %rdi
	orq	%r8, %rdi
	movq	%rdi, (%r9)
	subl	%edx, %eax
	movl	%eax, (%r11)
	cmpl	$32, %eax
	jg	.LBB16_165
# %bb.174:                              # %if.then.i25.i1513.i.i
                                        #   in Loop: Header=BB16_166 Depth=2
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movq	(%rbx), %rax
	movl	%edi, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	movl	%eax, (%r11)
	addq	$4, (%rbx)
	jmp	.LBB16_165
.LBB16_175:                             # %bs_write1.exit1402.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	shlq	$2, %rcx
	movq	%rcx, (%r15)
	addl	$-2, %eax
	movl	%eax, (%r11)
	cmpl	$32, %eax
	jne	.LBB16_181
# %bb.176:                              # %if.then.i1409.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	bswapl	%ecx
	movq	(%rbx), %rax
	movl	%ecx, (%rax)
	addq	$4, (%rbx)
	movl	$64, (%r11)
	movl	$64, %eax
	jmp	.LBB16_181
.LBB16_177:                             # %for.cond.cleanup223.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	(%rsi), %rdx
	cmpl	$32, %eax
	jg	.LBB16_179
# %bb.178:                              # %if.then.i.i1446.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	(%rbx), %rax
	movl	%edx, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	(%rsi), %rdx
.LBB16_179:                             # %bs_write.exit.i1433.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	leaq	1(,%rdx,2), %rdx
	movq	%rdx, (%rsi)
	leal	-1(%rcx), %eax
	movl	%eax, (%r11)
	cmpl	$33, %ecx
	jg	.LBB16_181
# %bb.180:                              # %if.then.i25.i1438.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	(%rbx), %rax
	movl	%edx, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	movl	%eax, (%r11)
	addq	$4, (%rbx)
	.p2align	4, 0x90
.LBB16_181:                             # %if.end233.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	7240(%r14), %rcx
	cmpl	$0, 8(%rcx)
	je	.LBB16_188
# %bb.182:                              # %land.lhs.true236.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpl	$2, 7248(%r14)
	je	.LBB16_188
# %bb.183:                              # %if.then240.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	13864(%r14), %esi
	incl	%esi
	movl	%esi, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %esi                    # imm = 0x10000
	setge	%dl
	cmovll	%esi, %ecx
	shll	$5, %edx
	movl	%ecx, %edi
	shrl	$8, %edi
	leal	16(%rdx), %r8d
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %edi
	movslq	%edi, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%r8b, %edi
	cmovll	%edx, %edi
	movzbl	%dil, %edx
	addl	%ecx, %edx
	shrl	%edx
	movq	1816(%r14), %rdi
	movl	%edx, %ecx
	shlq	%cl, %rdi
	movq	%rdi, 1816(%r14)
	subl	%edx, %eax
	movl	%eax, 1824(%r14)
	cmpl	$32, %eax
	jg	.LBB16_185
# %bb.184:                              # %if.then.i.i1568.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movq	(%rbx), %rax
	movl	%edi, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	8(%rsp), %r8                    # 8-byte Reload
	movq	(%r8), %rdi
	jmp	.LBB16_186
.LBB16_185:                             #   in Loop: Header=BB16_3 Depth=1
	movq	8(%rsp), %r8                    # 8-byte Reload
.LBB16_186:                             # %bs_write.exit.i1552.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %rdi
	movl	%esi, %esi
	orq	%rdi, %rsi
	movq	%rsi, (%r8)
	subl	%edx, %eax
	movl	%eax, (%r11)
	cmpl	$32, %eax
	jg	.LBB16_188
# %bb.187:                              # %if.then.i25.i1560.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %rsi
	bswapq	%rsi
	movq	(%rbx), %rax
	movl	%esi, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	.p2align	4, 0x90
.LBB16_188:                             # %if.end241.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	13872(%r14), %ecx
	leal	(%rcx,%rcx), %esi
	movl	$1, %edx
	subl	%esi, %edx
	testl	%ecx, %ecx
	cmovgl	%esi, %edx
	movl	%edx, %ecx
	shrl	$8, %ecx
	xorl	%esi, %esi
	cmpl	$256, %edx                      # imm = 0x100
	setge	%sil
	cmovll	%edx, %ecx
	shll	$4, %esi
	movslq	%ecx, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	addl	%esi, %ecx
	movq	1816(%r14), %rsi
	shlq	%cl, %rsi
	orq	%rsi, %rdx
	movq	%rdx, 1816(%r14)
	subl	%ecx, %eax
	movl	%eax, 1824(%r14)
	cmpl	$32, %eax
	jg	.LBB16_190
# %bb.189:                              # %if.then.i.i1599.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	(%rbx), %rax
	movl	%edx, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	movl	%eax, (%r11)
	addq	$4, (%rbx)
.LBB16_190:                             # %bs_write_se.exit1607.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	7240(%r14), %rcx
	cmpl	$0, 48(%rcx)
	je	.LBB16_201
# %bb.191:                              # %if.then244.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	13884(%r14), %esi
	incl	%esi
	movl	%esi, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %esi                    # imm = 0x10000
	setge	%dl
	cmovll	%esi, %ecx
	shll	$5, %edx
	movl	%ecx, %edi
	shrl	$8, %edi
	leal	16(%rdx), %r8d
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %edi
	movslq	%edi, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%r8b, %edi
	cmovll	%edx, %edi
	movzbl	%dil, %edx
	addl	%ecx, %edx
	shrl	%edx
	movq	1816(%r14), %rdi
	movl	%edx, %ecx
	shlq	%cl, %rdi
	movq	%rdi, 1816(%r14)
	subl	%edx, %eax
	movl	%eax, 1824(%r14)
	cmpl	$32, %eax
	jg	.LBB16_193
# %bb.192:                              # %if.then.i.i1645.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movq	(%rbx), %rax
	movl	%edi, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	8(%rsp), %r8                    # 8-byte Reload
	movq	(%r8), %rdi
	jmp	.LBB16_194
	.p2align	4, 0x90
.LBB16_193:                             #   in Loop: Header=BB16_3 Depth=1
	movq	8(%rsp), %r8                    # 8-byte Reload
.LBB16_194:                             # %bs_write.exit.i1629.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %rdi
	movl	%esi, %esi
	orq	%rdi, %rsi
	movq	%rsi, (%r8)
	subl	%edx, %eax
	movl	%eax, (%r11)
	cmpl	$32, %eax
	jg	.LBB16_196
# %bb.195:                              # %if.then.i25.i1637.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %rsi
	bswapq	%rsi
	movq	(%rbx), %rax
	movl	%esi, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	movl	%eax, (%r11)
	addq	$4, (%rbx)
.LBB16_196:                             # %bs_write_ue_big.exit1654.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpl	$1, 13884(%r14)
	je	.LBB16_201
# %bb.197:                              # %if.then248.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	13888(%r14), %ecx
	movl	%ecx, %esi
	andl	$-2, %esi
	movl	$1, %edx
	subl	%esi, %edx
	cmpl	$2, %ecx
	cmovgel	%esi, %edx
	movl	%edx, %ecx
	shrl	$8, %ecx
	xorl	%esi, %esi
	cmpl	$256, %edx                      # imm = 0x100
	setge	%sil
	cmovll	%edx, %ecx
	shll	$4, %esi
	movslq	%ecx, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	addl	%esi, %ecx
	movq	1816(%r14), %rsi
	shlq	%cl, %rsi
	orq	%rsi, %rdx
	movq	%rdx, 1816(%r14)
	subl	%ecx, %eax
	movl	%eax, 1824(%r14)
	cmpl	$32, %eax
	jg	.LBB16_199
# %bb.198:                              # %if.then.i.i1676.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	(%rbx), %rax
	movl	%edx, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	(%rcx), %rdx
.LBB16_199:                             # %bs_write_se.exit1684.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	13892(%r14), %ecx
	movl	%ecx, %edi
	andl	$-2, %edi
	movl	$1, %esi
	subl	%edi, %esi
	cmpl	$2, %ecx
	cmovgel	%edi, %esi
	movl	%esi, %ecx
	shrl	$8, %ecx
	xorl	%edi, %edi
	cmpl	$256, %esi                      # imm = 0x100
	setge	%dil
	cmovll	%esi, %ecx
	shll	$4, %edi
	movslq	%ecx, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	addl	%edi, %ecx
	shlq	%cl, %rdx
	orq	%rdx, %rsi
	movq	%rsi, 1816(%r14)
	subl	%ecx, %eax
	movl	%eax, 1824(%r14)
	cmpl	$32, %eax
	jg	.LBB16_201
# %bb.200:                              # %if.then.i.i1706.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %rsi
	bswapq	%rsi
	movq	(%rbx), %rax
	movl	%esi, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	movl	%eax, (%r11)
	addq	$4, (%rbx)
	.p2align	4, 0x90
.LBB16_201:                             # %x264_slice_header_write.exit.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	8(%rsp), %r9                    # 8-byte Reload
	cmpl	$0, 128(%r14)
	je	.LBB16_206
# %bb.202:                              # %if.then28.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	andb	$7, %cl
	movl	$-1, %edx
	shll	%cl, %edx
	notl	%edx
	movq	(%r9), %rsi
	shlq	%cl, %rsi
	orq	%rsi, %rdx
	movq	%rdx, (%r9)
	andl	$-8, %eax
	movl	%eax, (%r11)
	cmpl	$33, %eax
	jge	.LBB16_204
# %bb.203:                              # %if.then.i.i890.i
                                        #   in Loop: Header=BB16_3 Depth=1
	bswapq	%rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	(%rbx), %rax
	movl	%edx, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	movl	%eax, (%r11)
	movq	(%rbx), %rsi
	addq	$4, %rsi
	movq	%rsi, (%rbx)
	movq	(%r9), %rdx
	jmp	.LBB16_205
	.p2align	4, 0x90
.LBB16_204:                             # %entry.bs_write.exit_crit_edge.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	(%rbx), %rsi
.LBB16_205:                             # %bs_align_1.exit.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shll	%cl, %edx
	bswapl	%edx
	movl	%edx, (%rsi)
	movl	1824(%r14), %eax
	leal	7(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	sarl	$3, %ecx
	negl	%ecx
	movq	1800(%r14), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, 1800(%r14)
	movl	$64, 1824(%r14)
	movl	7248(%r14), %esi
	movl	13868(%r14), %edx
	movl	13864(%r14), %ecx
	movq	64(%rsp), %r15                  # 8-byte Reload
	movq	%r15, %rdi
	callq	x264_cabac_context_init@PLT
	movq	1800(%r14), %rsi
	movq	1808(%r14), %rdx
	movq	%r15, %rdi
	callq	x264_cabac_encode_init@PLT
	movq	16(%rsp), %r11                  # 8-byte Reload
	movq	8(%rsp), %r9                    # 8-byte Reload
.LBB16_206:                             # %if.end40.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	13868(%r14), %eax
	movl	%eax, 25800(%r14)
	movl	$0, 25804(%r14)
	movl	7252(%r14), %eax
	movq	3200(%r14), %rcx
	movl	1084(%rcx), %ebx
	cltd
	idivl	%ebx
	imull	%eax, %ebx
	addl	%edx, %ebx
	cmpl	7256(%r14), %ebx
	jle	.LBB16_211
# %bb.207:                              # %while.end.thread.i
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpl	$0, 128(%r14)
	jne	.LBB16_319
# %bb.208:                              # %if.else589.thread.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	(%r9), %rsi
	movl	(%r11), %eax
	movl	52(%rsp), %r12d                 # 4-byte Reload
	movq	56(%rsp), %rbx                  # 8-byte Reload
.LBB16_209:                             # %if.end595.i
                                        #   in Loop: Header=BB16_3 Depth=1
	leaq	1(,%rsi,2), %rsi
	movq	%rsi, (%r9)
	decl	%eax
	cmpl	$32, %eax
	jne	.LBB16_309
# %bb.210:                              # %bs_write1.exit.thread.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	bswapl	%esi
	movq	(%rbx), %rax
	movl	%esi, (%rax)
	movq	(%rbx), %rdx
	addq	$4, %rdx
	movq	%rdx, (%rbx)
	movl	$64, (%r11)
	movl	$64, %eax
	jmp	.LBB16_311
	.p2align	4, 0x90
.LBB16_211:                             # %while.body.lr.ph.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%edx, %r12d
	movl	%eax, %r15d
	movl	44(%rsp), %eax                  # 4-byte Reload
	addl	84(%rsp), %eax                  # 4-byte Folded Reload
	shll	$3, %eax
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	movq	104(%rsp), %rax                 # 8-byte Reload
	subl	%ebp, %eax
	shll	$3, %eax
	cmpl	$1, 48(%rsp)                    # 4-byte Folded Reload
	sete	%dl
	movq	96(%rsp), %rcx                  # 8-byte Reload
	addl	%ecx, %eax
	addl	$-64, %eax
	movq	%rax, 200(%rsp)                 # 8-byte Spill
	orb	88(%rsp), %dl                   # 1-byte Folded Reload
	movb	%dl, 27(%rsp)                   # 1-byte Spill
	movl	$0, 28(%rsp)                    # 4-byte Folded Spill
	movl	$0, 76(%rsp)                    # 4-byte Folded Spill
	movl	$0, 80(%rsp)                    # 4-byte Folded Spill
	jmp	.LBB16_214
	.p2align	4, 0x90
.LBB16_212:                             # %if.else567.i
                                        #   in Loop: Header=BB16_214 Depth=2
	incl	%r12d
	movq	3200(%r14), %rax
	movl	1084(%rax), %ebx
	xorl	%r13d, %r13d
	movq	16(%rsp), %r11                  # 8-byte Reload
	movq	8(%rsp), %r9                    # 8-byte Reload
	movl	48(%rsp), %r15d                 # 4-byte Reload
.LBB16_213:                             # %cleanup578.i
                                        #   in Loop: Header=BB16_214 Depth=2
	xorl	%eax, %eax
	cmpl	%ebx, %r12d
	sete	%al
	cmovel	%r13d, %r12d
	addl	%eax, %r15d
	imull	%r15d, %ebx
	addl	%r12d, %ebx
	cmpl	7256(%r14), %ebx
	jg	.LBB16_318
.LBB16_214:                             # %while.body.i
                                        #   Parent Loop BB16_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_227 Depth 3
	movq	13928(%r14), %rax
	cmpl	$0, 684(%r14)
	jle	.LBB16_218
# %bb.215:                              # %if.then71.i
                                        #   in Loop: Header=BB16_214 Depth=2
	cmpl	$0, 128(%r14)
	je	.LBB16_217
# %bb.216:                              # %if.then75.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movdqa	(%rcx), %xmm0
	movaps	16(%rcx), %xmm1
	movaps	32(%rcx), %xmm2
	movaps	%xmm2, 288(%rsp)
	movaps	%xmm1, 272(%rsp)
	movdqa	%xmm0, 256(%rsp)
	movzbl	-1(%rax), %ecx
	movl	%ecx, 80(%rsp)                  # 4-byte Spill
	jmp	.LBB16_218
	.p2align	4, 0x90
.LBB16_217:                             # %if.else.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movq	120(%rsp), %rdx                 # 8-byte Reload
	movq	32(%rdx), %rcx
	movq	%rcx, 240(%rsp)
	movdqu	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movaps	%xmm1, 224(%rsp)
	movdqa	%xmm0, 208(%rsp)
	movl	28(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, 76(%rsp)                  # 4-byte Spill
.LBB16_218:                             # %if.end82.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movl	1792(%r14), %ecx
	movl	1824(%r14), %r13d
	subl	1800(%r14), %ecx
	movl	%ecx, 104(%rsp)                 # 4-byte Spill
	movl	13920(%r14), %ecx
	subl	%eax, %ecx
	movl	13912(%r14), %eax
	movl	%eax, 96(%rsp)                  # 4-byte Spill
	subl	13916(%r14), %ecx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	testl	%r12d, %r12d
	jne	.LBB16_221
# %bb.219:                              # %land.lhs.true.i
                                        #   in Loop: Header=BB16_214 Depth=2
	cmpl	$0, 17424(%r14)
	jne	.LBB16_221
# %bb.220:                              # %if.then87.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movq	%r14, %rdi
	movl	%r15d, %esi
	movl	$1, %edx
	callq	x264_fdec_filter_row
	.p2align	4, 0x90
.LBB16_221:                             # %if.end88.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movq	%r14, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	callq	x264_macroblock_cache_load@PLT
	movq	%r14, %rdi
	callq	x264_macroblock_analyse@PLT
	movq	%r14, %rdi
	callq	x264_macroblock_encode@PLT
	movq	1784(%r14), %rbp
	movl	128(%r14), %eax
	testl	%eax, %eax
	je	.LBB16_223
# %bb.222:                              # %land.lhs.true.i914.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movq	13936(%r14), %rcx
	subq	13928(%r14), %rcx
	cmpq	$2500, %rcx                     # imm = 0x9C4
	jl	.LBB16_224
.LBB16_223:                             # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movq	1808(%r14), %rcx
	subq	1800(%r14), %rcx
	cmpq	$2499, %rcx                     # imm = 0x9C3
	jg	.LBB16_229
.LBB16_224:                             # %if.then.i920.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movl	1776(%r14), %edi
	movl	$100000, %eax                   # imm = 0x186A0
	addl	%eax, %edi
	movl	%edi, 1776(%r14)
	callq	x264_malloc@PLT
	movq	%rax, 1784(%r14)
	testq	%rax, %rax
	je	.LBB16_330
# %bb.225:                              # %do.end.i.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movslq	1776(%r14), %rdx
	andq	$-16, %rdx
	addq	$-100000, %rdx                  # imm = 0xFFFE7960
	movq	%rax, %rdi
	movq	%rbp, %rsi
	callq	*32816(%r14)
	movq	1784(%r14), %rcx
	movq	%rcx, %rax
	subq	%rbp, %rax
	addq	%rax, 1792(%r14)
	addq	%rax, 1800(%r14)
	movslq	1776(%r14), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 1808(%r14)
	addq	%rax, 13920(%r14)
	addq	%rax, 13928(%r14)
	movq	%rdx, 13936(%r14)
	cmpl	$0, 1760(%r14)
	js	.LBB16_228
# %bb.226:                              # %for.body.i926.i.preheader
                                        #   in Loop: Header=BB16_214 Depth=2
	movq	$-1, %rcx
	movl	$16, %edx
	.p2align	4, 0x90
.LBB16_227:                             # %for.body.i926.i
                                        #   Parent Loop BB16_3 Depth=1
                                        #     Parent Loop BB16_214 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	1768(%r14), %rsi
	addq	%rax, (%rsi,%rdx)
	movslq	1760(%r14), %rsi
	incq	%rcx
	addq	$24, %rdx
	cmpq	%rsi, %rcx
	jl	.LBB16_227
.LBB16_228:                             # %x264_bitstream_check_buffer.exit.thread1078.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movq	%rbp, %rdi
	callq	x264_free@PLT
	movl	128(%r14), %eax
.LBB16_229:                             # %if.end92.i
                                        #   in Loop: Header=BB16_214 Depth=2
	testl	%eax, %eax
	movl	%r15d, 48(%rsp)                 # 4-byte Spill
	movq	%r13, 88(%rsp)                  # 8-byte Spill
	je	.LBB16_236
# %bb.230:                              # %if.then96.i
                                        #   in Loop: Header=BB16_214 Depth=2
	cmpl	7252(%r14), %ebx
	jle	.LBB16_233
# %bb.231:                              # %land.lhs.true101.i
                                        #   in Loop: Header=BB16_214 Depth=2
	testb	$1, %r15b
	je	.LBB16_242
# %bb.232:                              # %land.lhs.true101.i
                                        #   in Loop: Header=BB16_214 Depth=2
	cmpl	$0, 7268(%r14)
	je	.LBB16_242
.LBB16_233:                             # %if.end109.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movl	17384(%r14), %eax
	cmpl	$18, %eax
	je	.LBB16_235
.LBB16_234:                             # %if.end109.i
                                        #   in Loop: Header=BB16_214 Depth=2
	cmpl	$6, %eax
	jne	.LBB16_239
.LBB16_235:                             # %if.then118.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movq	%r14, %rdi
	movl	$1, %esi
	callq	x264_cabac_mb_skip@PLT
	jmp	.LBB16_249
	.p2align	4, 0x90
.LBB16_236:                             # %if.else128.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movl	17384(%r14), %eax
	cmpl	$18, %eax
	movq	16(%rsp), %r11                  # 8-byte Reload
	movq	8(%rsp), %r9                    # 8-byte Reload
	je	.LBB16_238
# %bb.237:                              # %if.else128.i
                                        #   in Loop: Header=BB16_214 Depth=2
	cmpl	$6, %eax
	jne	.LBB16_243
.LBB16_238:                             # %if.then138.i
                                        #   in Loop: Header=BB16_214 Depth=2
	incl	28(%rsp)                        # 4-byte Folded Spill
	jmp	.LBB16_250
	.p2align	4, 0x90
.LBB16_239:                             # %if.else119.i
                                        #   in Loop: Header=BB16_214 Depth=2
	cmpl	$2, 7248(%r14)
	je	.LBB16_241
# %bb.240:                              # %if.then124.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	x264_cabac_mb_skip@PLT
.LBB16_241:                             # %if.end125.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movq	%r14, %rdi
	movq	64(%rsp), %rsi                  # 8-byte Reload
	callq	x264_macroblock_write_cabac@PLT
	jmp	.LBB16_249
.LBB16_242:                             # %if.then107.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movq	64(%rsp), %rdi                  # 8-byte Reload
	callq	x264_cabac_encode_terminal_c@PLT
	movl	17384(%r14), %eax
	cmpl	$18, %eax
	jne	.LBB16_234
	jmp	.LBB16_235
.LBB16_243:                             # %if.else139.i
                                        #   in Loop: Header=BB16_214 Depth=2
	cmpl	$2, 7248(%r14)
	je	.LBB16_248
# %bb.244:                              # %if.then144.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movl	28(%rsp), %r9d                  # 4-byte Reload
	incl	%r9d
	movl	%r9d, %eax
	shrl	$16, %eax
	xorl	%ecx, %ecx
	cmpl	$65536, %r9d                    # imm = 0x10000
	setge	%cl
	cmovll	%r9d, %eax
	shll	$5, %ecx
	movl	%eax, %edx
	shrl	$8, %edx
	leal	16(%rcx), %esi
	cmpl	$256, %eax                      # imm = 0x100
	cmovll	%eax, %edx
	movslq	%edx, %rax
	movzbl	x264_ue_size_tab(%rax), %edx
	movzbl	%sil, %eax
	cmovll	%ecx, %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	shrl	%eax
	movq	8(%rsp), %r8                    # 8-byte Reload
	movq	(%r8), %rsi
	movl	%eax, %ecx
	shlq	%cl, %rsi
	movq	%rsi, (%r8)
	movl	(%r11), %edx
	subl	%eax, %edx
	movl	%edx, (%r11)
	cmpl	$32, %edx
	jg	.LBB16_246
# %bb.245:                              # %if.then.i.i945.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movl	%edx, %ecx
	shlq	%cl, %rsi
	bswapq	%rsi
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	(%rdi), %rcx
	movl	%esi, (%rcx)
	movl	(%r11), %edx
	addl	$32, %edx
	addq	$4, (%rdi)
	movq	(%r8), %rsi
.LBB16_246:                             # %bs_write.exit.i942.i
                                        #   in Loop: Header=BB16_214 Depth=2
	incl	%eax
	movl	%eax, %ecx
	shlq	%cl, %rsi
	movl	%r9d, %edi
	orq	%rsi, %rdi
	movq	%rdi, (%r8)
	subl	%eax, %edx
	movl	%edx, (%r11)
	movl	$0, 28(%rsp)                    # 4-byte Folded Spill
	cmpl	$32, %edx
	jg	.LBB16_248
# %bb.247:                              # %if.then.i25.i.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movl	%edx, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rax
	movl	%edi, (%rax)
	addl	$32, (%r11)
	addq	$4, (%rcx)
.LBB16_248:                             # %if.end147.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movq	%r14, %rdi
	callq	x264_macroblock_write_cavlc@PLT
	.p2align	4, 0x90
.LBB16_249:                             # %if.end149.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movq	16(%rsp), %r11                  # 8-byte Reload
	movq	8(%rsp), %r9                    # 8-byte Reload
.LBB16_250:                             # %if.end149.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movl	1800(%r14), %r15d
	subl	1792(%r14), %r15d
	shll	$3, %r15d
	movl	13928(%r14), %r13d
	subl	13920(%r14), %r13d
	addl	13916(%r14), %r13d
	subl	1824(%r14), %r15d
	addl	13912(%r14), %r15d
	cmpl	$0, 84(%rsp)                    # 4-byte Folded Reload
	jle	.LBB16_255
# %bb.251:                              # %if.end149.i
                                        #   in Loop: Header=BB16_214 Depth=2
	leal	(%r15,%r13,8), %eax
	movq	200(%rsp), %rcx                 # 8-byte Reload
	addl	%ecx, %eax
	addl	$64, %eax
	cmpl	%eax, 44(%rsp)                  # 4-byte Folded Reload
	jge	.LBB16_255
# %bb.252:                              # %land.lhs.true160.i
                                        #   in Loop: Header=BB16_214 Depth=2
	cmpl	$0, 17424(%r14)
	jne	.LBB16_255
# %bb.253:                              # %if.then164.i
                                        #   in Loop: Header=BB16_214 Depth=2
	cmpl	7252(%r14), %ebx
	jne	.LBB16_314
# %bb.254:                              # %if.else187.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movl	%ebx, 7256(%r14)
	.p2align	4, 0x90
.LBB16_255:                             # %if.end196.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movl	$0, 17424(%r14)
	movq	%r14, %rdi
	callq	x264_macroblock_cache_save@PLT
	movslq	17384(%r14), %rax
	incl	26724(%r14,%rax,4)
	movl	17384(%r14), %eax
	cmpl	$1, 368(%r14)
	jle	.LBB16_257
# %bb.256:                              # %if.then228.i
                                        #   in Loop: Header=BB16_214 Depth=2
	cmpl	$4, %eax
	jae	.LBB16_259
	jmp	.LBB16_262
	.p2align	4, 0x90
.LBB16_257:                             # %lor.lhs.false225.i
                                        #   in Loop: Header=BB16_214 Depth=2
	cmpl	$4, %eax
	jb	.LBB16_261
# %bb.258:                              # %lor.lhs.false225.i
                                        #   in Loop: Header=BB16_214 Depth=2
	cmpl	$0, 560(%r14)
	je	.LBB16_261
.LBB16_259:                             # %land.lhs.true230.i
                                        #   in Loop: Header=BB16_214 Depth=2
	cmpl	$18, %eax
	ja	.LBB16_271
# %bb.260:                              # %land.lhs.true230.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movl	$262336, %ecx                   # imm = 0x400C0
	btl	%eax, %ecx
	jae	.LBB16_271
.LBB16_261:                             # %if.end318.i
                                        #   in Loop: Header=BB16_214 Depth=2
	cmpl	$2, 368(%r14)
	jl	.LBB16_294
.LBB16_262:                             # %if.then323.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movl	17400(%r14), %ecx
	movl	17404(%r14), %edx
	movl	%edx, %esi
	orl	%ecx, %esi
	je	.LBB16_264
# %bb.263:                              # %if.then327.i
                                        #   in Loop: Header=BB16_214 Depth=2
	xorl	%esi, %esi
	cmpl	$4, %eax
	setae	%sil
	movl	%ecx, %edi
	andl	$1, %edi
	movl	%ecx, %r8d
	shrl	%r8d
	andl	$1, %r8d
	movl	%ecx, %r9d
	sarl	$3, %r9d
	addl	%edi, %r9d
	btl	$2, %ecx
	adcl	%r8d, %r9d
	addl	%r9d, 27144(%r14,%rsi,4)
	cmpl	$1, %edx
	sbbl	$-1, 27152(%r14,%rsi,4)
	sarl	%edx
	addl	%edx, 27160(%r14,%rsi,4)
.LBB16_264:                             # %if.end381.i
                                        #   in Loop: Header=BB16_214 Depth=2
	cmpl	$4, %eax
	setb	%dl
	testl	%ecx, %ecx
	sete	%cl
	orb	%dl, %cl
	je	.LBB16_270
# %bb.265:                              # %if.end398.i
                                        #   in Loop: Header=BB16_214 Depth=2
	cmpl	$3, %eax
	ja	.LBB16_294
# %bb.266:                              # %land.lhs.true400.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movl	17384(%r14), %eax
	cmpl	$3, %eax
	je	.LBB16_294
# %bb.267:                              # %land.lhs.true400.i
                                        #   in Loop: Header=BB16_214 Depth=2
	cmpl	$2, %eax
	je	.LBB16_290
# %bb.268:                              # %land.lhs.true400.i
                                        #   in Loop: Header=BB16_214 Depth=2
	cmpl	$1, %eax
	jne	.LBB16_291
# %bb.269:                              # %for.body429.preheader.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movsbq	25036(%r14), %rax
	incl	27220(%r14,%rax,4)
	movsbq	25038(%r14), %rax
	incl	27220(%r14,%rax,4)
	movsbq	25052(%r14), %rax
	incl	27220(%r14,%rax,4)
	movsbq	25054(%r14), %rax
	movq	152(%rsp), %rcx                 # 8-byte Reload
	jmp	.LBB16_292
	.p2align	4, 0x90
.LBB16_270:                             # %if.end398.thread.i
                                        #   in Loop: Header=BB16_214 Depth=2
	incl	26812(%r14)
	movl	17396(%r14), %ecx
	movq	192(%rsp), %rax                 # 8-byte Reload
	jmp	.LBB16_293
.LBB16_271:                             # %if.then245.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movslq	17388(%r14), %rcx
	cmpq	$13, %rcx
	jne	.LBB16_273
# %bb.272:                              # %for.body.preheader.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movzbl	17392(%r14), %ecx
	incl	27076(%r14,%rcx,4)
	movzbl	17393(%r14), %ecx
	incl	27076(%r14,%rcx,4)
	movzbl	17394(%r14), %ecx
	incl	27076(%r14,%rcx,4)
	movzbl	17395(%r14), %ecx
	movl	$1, %edx
	addl	%edx, 27076(%r14,%rcx,4)
	cmpl	$2, 80(%r14)
	jl	.LBB16_261
	jmp	.LBB16_274
.LBB16_273:                             # %if.then249.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movl	$4, %edx
	addl	%edx, 27076(%r14,%rcx,4)
	cmpl	$2, 80(%r14)
	jl	.LBB16_261
.LBB16_274:                             # %for.cond275.preheader.i
                                        #   in Loop: Header=BB16_214 Depth=2
	cmpl	$1, 7248(%r14)
	jne	.LBB16_300
# %bb.275:                              # %for.cond285.preheader.i.preheader
                                        #   in Loop: Header=BB16_214 Depth=2
	movsbq	25132(%r14), %rcx
	testq	%rcx, %rcx
	js	.LBB16_277
# %bb.276:                              # %if.then301.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movq	32(%rsp), %rdx                  # 8-byte Reload
	incl	(%rdx,%rcx,4)
.LBB16_277:                             # %if.end309.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movsbq	25134(%r14), %rcx
	testq	%rcx, %rcx
	js	.LBB16_279
# %bb.278:                              # %if.then301.1.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movq	32(%rsp), %rdx                  # 8-byte Reload
	incl	(%rdx,%rcx,4)
.LBB16_279:                             # %if.end309.1.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movsbq	25148(%r14), %rcx
	testq	%rcx, %rcx
	js	.LBB16_281
# %bb.280:                              # %if.then301.2.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movq	32(%rsp), %rdx                  # 8-byte Reload
	incl	(%rdx,%rcx,4)
.LBB16_281:                             # %if.end309.2.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movsbq	25150(%r14), %rcx
	testq	%rcx, %rcx
	js	.LBB16_283
# %bb.282:                              # %if.then301.3.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movq	32(%rsp), %rdx                  # 8-byte Reload
	incl	(%rdx,%rcx,4)
.LBB16_283:                             # %if.end309.3.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movsbq	25172(%r14), %rcx
	testq	%rcx, %rcx
	js	.LBB16_285
# %bb.284:                              # %if.then301.i.1
                                        #   in Loop: Header=BB16_214 Depth=2
	movq	32(%rsp), %rdx                  # 8-byte Reload
	incl	128(%rdx,%rcx,4)
.LBB16_285:                             # %if.end309.i.1
                                        #   in Loop: Header=BB16_214 Depth=2
	movsbq	25174(%r14), %rcx
	testq	%rcx, %rcx
	js	.LBB16_287
# %bb.286:                              # %if.then301.1.i.1
                                        #   in Loop: Header=BB16_214 Depth=2
	movq	32(%rsp), %rdx                  # 8-byte Reload
	incl	128(%rdx,%rcx,4)
.LBB16_287:                             # %if.end309.1.i.1
                                        #   in Loop: Header=BB16_214 Depth=2
	movsbq	25188(%r14), %rcx
	testq	%rcx, %rcx
	js	.LBB16_289
# %bb.288:                              # %if.then301.2.i.1
                                        #   in Loop: Header=BB16_214 Depth=2
	movq	32(%rsp), %rdx                  # 8-byte Reload
	incl	128(%rdx,%rcx,4)
.LBB16_289:                             # %if.end309.2.i.1
                                        #   in Loop: Header=BB16_214 Depth=2
	movzbl	25190(%r14), %ecx
	movl	$1, %edx
	testb	%cl, %cl
	jns	.LBB16_308
	jmp	.LBB16_261
.LBB16_290:                             # %if.then410.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movslq	17408(%r14), %rax
	movq	144(%rsp), %rcx                 # 8-byte Reload
	jmp	.LBB16_292
.LBB16_291:                             # %for.body452.preheader.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movsbq	25036(%r14), %rax
	incl	27272(%r14,%rax,4)
	movsbq	25037(%r14), %rax
	incl	27272(%r14,%rax,4)
	movsbq	25044(%r14), %rax
	incl	27272(%r14,%rax,4)
	movsbq	25045(%r14), %rax
	incl	27272(%r14,%rax,4)
	movsbq	25038(%r14), %rax
	incl	27272(%r14,%rax,4)
	movsbq	25039(%r14), %rax
	incl	27272(%r14,%rax,4)
	movsbq	25046(%r14), %rax
	incl	27272(%r14,%rax,4)
	movsbq	25047(%r14), %rax
	incl	27272(%r14,%rax,4)
	movsbq	25052(%r14), %rax
	incl	27272(%r14,%rax,4)
	movsbq	25053(%r14), %rax
	incl	27272(%r14,%rax,4)
	movsbq	25060(%r14), %rax
	incl	27272(%r14,%rax,4)
	movsbq	25061(%r14), %rax
	incl	27272(%r14,%rax,4)
	movsbq	25054(%r14), %rax
	incl	27272(%r14,%rax,4)
	movsbq	25055(%r14), %rax
	incl	27272(%r14,%rax,4)
	movsbq	25062(%r14), %rax
	incl	27272(%r14,%rax,4)
	movsbq	25063(%r14), %rax
	movq	136(%rsp), %rcx                 # 8-byte Reload
.LBB16_292:                             # %if.end471.i
                                        #   in Loop: Header=BB16_214 Depth=2
	leaq	(%rcx,%rax,4), %rax
	incl	(%rax)
	movslq	17412(%r14), %rax
	movzbl	x264_mb_pred_mode8x8c_fix(%rax), %eax
	movq	160(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rcx,%rax,4), %rax
	movl	$1, %ecx
.LBB16_293:                             # %if.end483.sink.split.i
                                        #   in Loop: Header=BB16_214 Depth=2
	addl	%ecx, (%rax)
.LBB16_294:                             # %if.end483.i
                                        #   in Loop: Header=BB16_214 Depth=2
	cmpb	$0, 27(%rsp)                    # 1-byte Folded Reload
	jne	.LBB16_298
# %bb.295:                              # %if.then485.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movl	7268(%r14), %ebx
	movl	16388(%r14), %eax
	andl	%ebx, %eax
	cltq
	movslq	16384(%r14), %rbp
	shlq	$5, %rbp
	addq	31232(%r14,%rax,8), %rbp
	movq	%r14, %rdi
	callq	x264_macroblock_cache_load_deblock@PLT
	movq	16616(%r14), %rax
	movslq	16392(%r14), %rcx
	cmpb	$3, (%rax,%rcx)
	ja	.LBB16_297
# %bb.296:                              # %if.then538.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movdqa	.LCPI16_0(%rip), %xmm0          # xmm0 = [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
	movdqu	%xmm0, 16(%rbp)
	movdqu	%xmm0, (%rbp)
	jmp	.LBB16_298
	.p2align	4, 0x90
.LBB16_297:                             # %if.else539.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movl	$4, %r8d
	movl	%ebx, %ecx
	shrl	%cl, %r8d
	xorl	%r9d, %r9d
	cmpl	$1, 7248(%r14)
	sete	%r9b
	movq	176(%rsp), %rdi                 # 8-byte Reload
	movq	184(%rsp), %rsi                 # 8-byte Reload
	movq	168(%rsp), %rdx                 # 8-byte Reload
	movq	%rbp, %rcx
	callq	*33320(%r14)
.LBB16_298:                             # %if.end556.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movq	112(%rsp), %rdx                 # 8-byte Reload
	addl	104(%rsp), %edx                 # 4-byte Folded Reload
	movq	88(%rsp), %rcx                  # 8-byte Reload
	subl	96(%rsp), %ecx                  # 4-byte Folded Reload
	leal	(%r15,%r13,8), %eax
	addl	$64, %eax
	leal	(%rcx,%rdx,8), %ecx
	leal	(%rcx,%rax), %esi
	addl	$-64, %esi
	movq	%r14, %rdi
	callq	x264_ratecontrol_mb@PLT
	cmpl	$0, 7268(%r14)
	je	.LBB16_212
# %bb.299:                              # %if.then560.i
                                        #   in Loop: Header=BB16_214 Depth=2
	movl	48(%rsp), %r15d                 # 4-byte Reload
	movl	%r15d, %eax
	andl	$1, %eax
	addl	%eax, %r12d
	movq	3200(%r14), %rax
	movl	1084(%rax), %ebx
	xorl	%eax, %eax
	cmpl	%ebx, %r12d
	setl	%al
	xorl	%eax, %r15d
	xorl	%r13d, %r13d
	movq	16(%rsp), %r11                  # 8-byte Reload
	movq	8(%rsp), %r9                    # 8-byte Reload
	jmp	.LBB16_213
.LBB16_300:                             # %for.cond275.preheader.i.split.us
                                        #   in Loop: Header=BB16_214 Depth=2
	movsbq	25132(%r14), %rcx
	testq	%rcx, %rcx
	js	.LBB16_302
# %bb.301:                              # %if.then301.i.us
                                        #   in Loop: Header=BB16_214 Depth=2
	movq	32(%rsp), %rdx                  # 8-byte Reload
	incl	(%rdx,%rcx,4)
.LBB16_302:                             # %if.end309.i.us
                                        #   in Loop: Header=BB16_214 Depth=2
	movsbq	25134(%r14), %rcx
	testq	%rcx, %rcx
	js	.LBB16_304
# %bb.303:                              # %if.then301.1.i.us
                                        #   in Loop: Header=BB16_214 Depth=2
	movq	32(%rsp), %rdx                  # 8-byte Reload
	incl	(%rdx,%rcx,4)
.LBB16_304:                             # %if.end309.1.i.us
                                        #   in Loop: Header=BB16_214 Depth=2
	movsbq	25148(%r14), %rcx
	testq	%rcx, %rcx
	js	.LBB16_306
# %bb.305:                              # %if.then301.2.i.us
                                        #   in Loop: Header=BB16_214 Depth=2
	movq	32(%rsp), %rdx                  # 8-byte Reload
	incl	(%rdx,%rcx,4)
.LBB16_306:                             # %if.end309.2.i.us
                                        #   in Loop: Header=BB16_214 Depth=2
	movzbl	25150(%r14), %ecx
	testb	%cl, %cl
	js	.LBB16_261
# %bb.307:                              #   in Loop: Header=BB16_214 Depth=2
	xorl	%edx, %edx
.LBB16_308:                             # %if.end318.i.sink.split
                                        #   in Loop: Header=BB16_214 Depth=2
	shll	$7, %edx
	addq	32(%rsp), %rdx                  # 8-byte Folded Reload
	movzbl	%cl, %ecx
	incl	(%rdx,%rcx,4)
	jmp	.LBB16_261
.LBB16_309:                             # %bs_write1.exit.i1024.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	andb	$7, %cl
	shlq	%cl, %rsi
	movq	%rsi, (%r9)
	andl	$-8, %eax
	movl	%eax, (%r11)
	movq	(%rbx), %rdx
	cmpl	$32, %eax
	jg	.LBB16_311
# %bb.310:                              # %if.then.i8.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	bswapq	%rsi
	movl	%eax, %ecx
	shrq	%cl, %rsi
	movl	%esi, (%rdx)
	movl	(%r11), %eax
	addl	$32, %eax
	movl	%eax, (%r11)
	movq	(%rbx), %rdx
	addq	$4, %rdx
	movq	%rdx, (%rbx)
.LBB16_311:                             # %bs_rbsp_trailing.exit.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movl	(%rcx), %esi
	movl	%eax, %ecx
	shll	%cl, %esi
	bswapl	%esi
	movl	%esi, (%rdx)
	movl	(%r11), %eax
	leal	7(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	sarl	$3, %ecx
	negl	%ecx
	movq	(%rbx), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, (%rbx)
	movl	$64, (%r11)
	movl	$64, %ecx
	jmp	.LBB16_320
.LBB16_314:                             # %if.then169.i
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpl	$0, 128(%r14)
	je	.LBB16_316
# %bb.315:                              # %if.then173.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movdqa	256(%rsp), %xmm0
	movaps	272(%rsp), %xmm1
	movaps	288(%rsp), %xmm2
	movq	64(%rsp), %rax                  # 8-byte Reload
	movaps	%xmm2, 32(%rax)
	movaps	%xmm1, 16(%rax)
	movdqa	%xmm0, (%rax)
	movq	13928(%r14), %rax
	movl	80(%rsp), %ecx                  # 4-byte Reload
	movb	%cl, -1(%rax)
	jmp	.LBB16_317
.LBB16_316:                             # %if.else178.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	240(%rsp), %rax
	movq	120(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 32(%rcx)
	movdqa	208(%rsp), %xmm0
	movaps	224(%rsp), %xmm1
	movups	%xmm1, 16(%rcx)
	movdqu	%xmm0, (%rcx)
	movl	76(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 28(%rsp)                  # 4-byte Spill
.LBB16_317:                             # %cleanup578.thread1086.i
                                        #   in Loop: Header=BB16_3 Depth=1
	xorl	%r13d, %r13d
	movl	$1, 17424(%r14)
	decl	%ebx
	movl	%ebx, 7256(%r14)
	.p2align	4, 0x90
.LBB16_318:                             # %while.end.i
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpl	$0, 128(%r14)
	je	.LBB16_325
.LBB16_319:                             # %if.then582.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%r14, %rdi
	movq	64(%rsp), %rsi                  # 8-byte Reload
	callq	x264_cabac_encode_flush@PLT
	movq	16(%rsp), %r11                  # 8-byte Reload
	movq	13928(%r14), %rax
	movq	%rax, 1800(%r14)
	movl	1824(%r14), %ecx
	movl	52(%rsp), %r12d                 # 4-byte Reload
	movq	56(%rsp), %rbx                  # 8-byte Reload
.LBB16_320:                             # %if.end600.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	1768(%r14), %rdx
	subl	1792(%r14), %eax
	movslq	1760(%r14), %rsi
	shll	$3, %eax
	subl	%ecx, %eax
	leal	64(%rax), %ecx
	addl	$71, %eax
	testl	%ecx, %ecx
	cmovnsl	%ecx, %eax
	leaq	(%rsi,%rsi,2), %rcx
	sarl	$3, %eax
	addl	1784(%r14), %eax
	subl	16(%rdx,%rcx,8), %eax
	movl	%eax, 8(%rdx,%rcx,8)
	movl	1760(%r14), %ecx
	movl	1764(%r14), %eax
	incl	%ecx
	movl	%ecx, 1760(%r14)
	cmpl	%eax, %ecx
	jl	.LBB16_323
# %bb.321:                              # %if.then.i.i1067.i
                                        #   in Loop: Header=BB16_3 Depth=1
	shll	$4, %eax
	leal	(%rax,%rax,2), %edi
	callq	x264_malloc@PLT
	testq	%rax, %rax
	je	.LBB16_331
# %bb.322:                              # %cleanup.thread.i.i.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rax, %rbx
	movq	1768(%r14), %rsi
	movslq	1764(%r14), %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rdx
	movq	%rbx, %rdi
	callq	memcpy@PLT
	movq	1768(%r14), %rdi
	callq	x264_free@PLT
	movq	%rbx, 1768(%r14)
	shll	1764(%r14)
	movq	56(%rsp), %rbx                  # 8-byte Reload
	movq	16(%rsp), %r11                  # 8-byte Reload
.LBB16_323:                             # %if.end604.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	7256(%r14), %eax
	movl	1752(%r14), %esi
	movq	3200(%r14), %rcx
	movl	1084(%rcx), %ecx
	imull	%esi, %ecx
	decl	%ecx
	cmpl	%ecx, %eax
	jne	.LBB16_2
# %bb.324:                              # %if.then613.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	1800(%r14), %eax
	subl	1792(%r14), %eax
	movl	1760(%r14), %ecx
	movl	1824(%r14), %edx
	shll	$3, %eax
	leal	(%rcx,%rcx,4), %ecx
	addl	26716(%r14), %edx
	addl	26712(%r14), %edx
	leal	(%rax,%rcx,8), %eax
	subl	%edx, %eax
	addl	$64, %eax
	movl	%eax, 26720(%r14)
	movq	%r14, %rdi
	movl	$1, %edx
	callq	x264_fdec_filter_row
	movq	16(%rsp), %r11                  # 8-byte Reload
	movl	7256(%r14), %eax
	jmp	.LBB16_2
.LBB16_325:                             # %if.else589.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	(%r9), %rsi
	movl	(%r11), %eax
	movl	28(%rsp), %edi                  # 4-byte Reload
	testl	%edi, %edi
	movl	52(%rsp), %r12d                 # 4-byte Reload
	movq	56(%rsp), %rbx                  # 8-byte Reload
	jle	.LBB16_209
# %bb.326:                              # %if.then592.i
                                        #   in Loop: Header=BB16_3 Depth=1
	incl	%edi
	movl	%edi, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %edi                    # imm = 0x10000
	movl	%edi, %r10d
	cmovll	%edi, %ecx
	setge	%dl
	shll	$5, %edx
	movl	%ecx, %edi
	shrl	$8, %edi
	leal	16(%rdx), %r8d
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %edi
	movslq	%edi, %rcx
	movzbl	%r8b, %edi
	cmovll	%edx, %edi
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%dil, %edx
	addl	%ecx, %edx
	shrl	%edx
	movl	%edx, %ecx
	shlq	%cl, %rsi
	movq	%rsi, (%r9)
	subl	%edx, %eax
	movl	%eax, (%r11)
	cmpl	$32, %eax
	jg	.LBB16_328
# %bb.327:                              # %if.then.i.i1008.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %rsi
	bswapq	%rsi
	movq	(%rbx), %rax
	movl	%esi, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	(%r9), %rsi
.LBB16_328:                             # %bs_write.exit.i992.i
                                        #   in Loop: Header=BB16_3 Depth=1
	incl	%edx
	movq	%rsi, %rdi
	movl	%edx, %ecx
	shlq	%cl, %rdi
	movl	%r10d, %esi
	orq	%rdi, %rsi
	movq	%rsi, (%r9)
	subl	%edx, %eax
	movl	%eax, (%r11)
	cmpl	$32, %eax
	jg	.LBB16_209
# %bb.329:                              # %if.then.i25.i1000.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %rsi
	bswapq	%rsi
	movq	(%rbx), %rax
	movl	%esi, (%rax)
	movl	(%r11), %eax
	addl	$32, %eax
	addq	$4, (%rbx)
	movq	(%r9), %rsi
	jmp	.LBB16_209
.LBB16_330:                             # %cleanup578.thread.i
	movq	%rbp, %rdi
	callq	x264_free@PLT
.LBB16_331:                             # %x264_slice_write.exit
	movq	$-1, %r13
.LBB16_332:                             # %cleanup
	movq	%r13, %rax
	addq	$776, %rsp                      # imm = 0x308
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end16:
	.size	x264_slices_write, .Lfunc_end16-x264_slices_write
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function x264_encoder_close
.LCPI17_0:
	.quad	0x40efc02000000000              # double 65025
.LCPI17_2:
	.quad	0x3ddb7cdfd9d7bdbb              # double 1.0E-10
.LCPI17_3:
	.quad	0xc024000000000000              # double -10
.LCPI17_10:
	.quad	0x4059000000000000              # double 100
.LCPI17_11:
	.quad	0x4010000000000000              # double 4
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI17_1:
	.long	0x42c80000                      # float 100
.LCPI17_12:
	.long	0x42fa0000                      # float 125
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI17_4:
	.quad	2                               # 0x2
	.quad	3                               # 0x3
.LCPI17_5:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI17_6:
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
.LCPI17_7:
	.long	9                               # 0x9
	.long	9                               # 0x9
	.long	9                               # 0x9
	.long	9                               # 0x9
.LCPI17_8:
	.long	13                              # 0xd
	.long	13                              # 0xd
	.long	13                              # 0xd
	.long	13                              # 0xd
.LCPI17_9:
	.quad	16                              # 0x10
	.quad	16                              # 0x10
	.text
	.globl	x264_encoder_close
	.p2align	4, 0x90
	.type	x264_encoder_close,@function
x264_encoder_close:                     # @x264_encoder_close
	.cfi_startproc
# %bb.0:                                # %entry
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
	subq	$488, %rsp                      # imm = 0x1E8
	.cfi_def_cfa_offset 544
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r12
	movl	20(%rdi), %eax
	imull	24(%rdi), %eax
	leal	(%rax,%rax,2), %eax
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	movb	$1, 64(%rsp)                    # 1-byte Folded Spill
	cmpq	$0, 28160(%rdi)
	jne	.LBB17_3
# %bb.1:                                # %lor.lhs.false
	cmpq	$0, 27856(%r12)
	jne	.LBB17_3
# %bb.2:                                # %lor.rhs
	cmpq	$0, 28008(%r12)
	setne	64(%rsp)                        # 1-byte Folded Spill
.LBB17_3:                               # %lor.end
	sarl	%ebx
	movq	%r12, %rdi
	callq	x264_lookahead_delete@PLT
	cmpl	$2, 4(%r12)
	jl	.LBB17_10
# %bb.4:                                # %for.cond.preheader
	movl	1852(%r12), %eax
	cmpl	$2, %eax
	jl	.LBB17_10
# %bb.5:                                # %for.body32.lr.ph
	xorl	%r14d, %r14d
	jmp	.LBB17_6
	.p2align	4, 0x90
.LBB17_8:                               # %for.inc43
                                        #   in Loop: Header=BB17_6 Depth=1
	incq	%r14
	movslq	%eax, %rcx
	cmpq	%rcx, %r14
	jge	.LBB17_9
.LBB17_6:                               # %for.body32
                                        # =>This Inner Loop Header: Depth=1
	movq	704(%r12,%r14,8), %rcx
	cmpl	$0, 1740(%rcx)
	je	.LBB17_8
# %bb.7:                                # %if.then38
                                        #   in Loop: Header=BB17_6 Depth=1
	movq	14680(%rcx), %rdi
	callq	x264_frame_delete@PLT
	movl	1852(%r12), %eax
	jmp	.LBB17_8
.LBB17_9:                               # %for.cond.cleanup31
	movslq	1744(%r12), %rax
	movq	704(%r12,%rax,8), %r14
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	x264_thread_sync_ratecontrol@PLT
	movq	%r14, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	x264_thread_sync_ratecontrol@PLT
	movl	1844(%r14), %eax
	subl	1852(%r12), %eax
	incl	%eax
	movl	%eax, 1844(%r12)
.LBB17_10:                              # %if.end52
	incl	1844(%r12)
	movslq	%ebx, %r15
	movslq	27424(%r12), %r14
	testq	%r14, %r14
	jle	.LBB17_17
# %bb.11:                               # %if.then69
	cmpl	$0, 476(%r12)
	movsd	27496(%r12), %xmm7              # xmm7 = mem[0],zero
	cvtsi2sd	%r14d, %xmm0
	divsd	%xmm0, %xmm7
	cvtsi2sdq	27456(%r12), %xmm1
	divsd	%xmm0, %xmm1
	je	.LBB17_16
# %bb.12:                               # %if.then76
	movsd	27648(%r12), %xmm5              # xmm5 = mem[0],zero
	movsd	27688(%r12), %xmm2              # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movsd	27728(%r12), %xmm3              # xmm3 = mem[0],zero
	divsd	%xmm0, %xmm3
	movsd	27768(%r12), %xmm4              # xmm4 = mem[0],zero
	divsd	%xmm0, %xmm4
	divsd	%xmm0, %xmm5
	movq	%r14, %rax
	imulq	%r15, %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdq	27608(%r12), %xmm0
	cvtsi2sd	%rax, %xmm6
	mulsd	.LCPI17_0(%rip), %xmm6
	divsd	%xmm6, %xmm0
	movsd	.LCPI17_2(%rip), %xmm6          # xmm6 = [1.0E-10,0.0E+0]
	ucomisd	%xmm0, %xmm6
	jae	.LBB17_13
# %bb.14:                               # %if.end.i
	movsd	%xmm7, 8(%rsp)                  # 8-byte Spill
	movsd	%xmm1, 32(%rsp)                 # 8-byte Spill
	movsd	%xmm5, 24(%rsp)                 # 8-byte Spill
	movsd	%xmm2, 48(%rsp)                 # 8-byte Spill
	movsd	%xmm3, 16(%rsp)                 # 8-byte Spill
	movsd	%xmm4, 40(%rsp)                 # 8-byte Spill
	callq	log10@PLT
	movsd	40(%rsp), %xmm4                 # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	16(%rsp), %xmm3                 # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	48(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	24(%rsp), %xmm5                 # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	32(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	8(%rsp), %xmm7                  # 8-byte Reload
                                        # xmm7 = mem[0],zero
	mulsd	.LCPI17_3(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	jmp	.LBB17_15
.LBB17_16:                              # %if.else
	movl	$.L.str.30, %edx
	movl	$.L.str.26, %ecx
	movq	%r12, %rdi
	movl	$2, %esi
	movl	%r14d, %r8d
	movapd	%xmm7, %xmm0
	movb	$2, %al
	callq	x264_log@PLT
	jmp	.LBB17_17
.LBB17_13:
	movss	.LCPI17_1(%rip), %xmm0          # xmm0 = [1.0E+2,0.0E+0,0.0E+0,0.0E+0]
.LBB17_15:                              # %x264_psnr.exit
	xorps	%xmm6, %xmm6
	cvtss2sd	%xmm0, %xmm6
	movl	$.L.str.29, %edx
	movl	$.L.str.26, %ecx
	movq	%r12, %rdi
	movl	$2, %esi
	movl	%r14d, %r8d
	movapd	%xmm7, %xmm0
	movb	$7, %al
	callq	x264_log@PLT
.LBB17_17:                              # %if.end132
	movslq	27432(%r12), %r14
	testq	%r14, %r14
	jle	.LBB17_24
# %bb.18:                               # %if.then69.1
	cmpl	$0, 476(%r12)
	movsd	27512(%r12), %xmm7              # xmm7 = mem[0],zero
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r14d, %xmm0
	divsd	%xmm0, %xmm7
	xorps	%xmm1, %xmm1
	cvtsi2sdq	27472(%r12), %xmm1
	divsd	%xmm0, %xmm1
	je	.LBB17_23
# %bb.19:                               # %if.then76.1
	movsd	27664(%r12), %xmm5              # xmm5 = mem[0],zero
	movsd	27704(%r12), %xmm2              # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movsd	27744(%r12), %xmm3              # xmm3 = mem[0],zero
	divsd	%xmm0, %xmm3
	movsd	27784(%r12), %xmm4              # xmm4 = mem[0],zero
	divsd	%xmm0, %xmm4
	divsd	%xmm0, %xmm5
	movq	%r14, %rax
	imulq	%r15, %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdq	27624(%r12), %xmm0
	xorps	%xmm6, %xmm6
	cvtsi2sd	%rax, %xmm6
	mulsd	.LCPI17_0(%rip), %xmm6
	divsd	%xmm6, %xmm0
	movsd	.LCPI17_2(%rip), %xmm6          # xmm6 = [1.0E-10,0.0E+0]
	ucomisd	%xmm0, %xmm6
	jae	.LBB17_20
# %bb.21:                               # %if.end.i.1
	movsd	%xmm7, 8(%rsp)                  # 8-byte Spill
	movsd	%xmm1, 32(%rsp)                 # 8-byte Spill
	movsd	%xmm5, 24(%rsp)                 # 8-byte Spill
	movsd	%xmm2, 48(%rsp)                 # 8-byte Spill
	movsd	%xmm3, 16(%rsp)                 # 8-byte Spill
	movsd	%xmm4, 40(%rsp)                 # 8-byte Spill
	callq	log10@PLT
	movsd	40(%rsp), %xmm4                 # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	16(%rsp), %xmm3                 # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	48(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	24(%rsp), %xmm5                 # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	32(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	8(%rsp), %xmm7                  # 8-byte Reload
                                        # xmm7 = mem[0],zero
	mulsd	.LCPI17_3(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	jmp	.LBB17_22
.LBB17_23:                              # %if.else.1
	movl	$.L.str.30, %edx
	movl	$.L.str.28, %ecx
	movq	%r12, %rdi
	movl	$2, %esi
	movl	%r14d, %r8d
	movapd	%xmm7, %xmm0
	movb	$2, %al
	callq	x264_log@PLT
	jmp	.LBB17_24
.LBB17_20:
	movss	.LCPI17_1(%rip), %xmm0          # xmm0 = [1.0E+2,0.0E+0,0.0E+0,0.0E+0]
.LBB17_22:                              # %x264_psnr.exit.1
	xorps	%xmm6, %xmm6
	cvtss2sd	%xmm0, %xmm6
	movl	$.L.str.29, %edx
	movl	$.L.str.28, %ecx
	movq	%r12, %rdi
	movl	$2, %esi
	movl	%r14d, %r8d
	movapd	%xmm7, %xmm0
	movb	$7, %al
	callq	x264_log@PLT
.LBB17_24:                              # %if.end132.1
	movslq	27416(%r12), %r14
	testq	%r14, %r14
	jle	.LBB17_31
# %bb.25:                               # %if.then69.2
	cmpl	$0, 476(%r12)
	movsd	27480(%r12), %xmm7              # xmm7 = mem[0],zero
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r14d, %xmm0
	divsd	%xmm0, %xmm7
	xorps	%xmm1, %xmm1
	cvtsi2sdq	27440(%r12), %xmm1
	divsd	%xmm0, %xmm1
	je	.LBB17_30
# %bb.26:                               # %if.then76.2
	movsd	27632(%r12), %xmm5              # xmm5 = mem[0],zero
	movsd	27672(%r12), %xmm2              # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movsd	27712(%r12), %xmm3              # xmm3 = mem[0],zero
	divsd	%xmm0, %xmm3
	movsd	27752(%r12), %xmm4              # xmm4 = mem[0],zero
	divsd	%xmm0, %xmm4
	divsd	%xmm0, %xmm5
	movq	%r14, %rax
	imulq	%r15, %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdq	27592(%r12), %xmm0
	xorps	%xmm6, %xmm6
	cvtsi2sd	%rax, %xmm6
	mulsd	.LCPI17_0(%rip), %xmm6
	divsd	%xmm6, %xmm0
	movsd	.LCPI17_2(%rip), %xmm6          # xmm6 = [1.0E-10,0.0E+0]
	ucomisd	%xmm0, %xmm6
	jae	.LBB17_27
# %bb.28:                               # %if.end.i.2
	movsd	%xmm7, 8(%rsp)                  # 8-byte Spill
	movsd	%xmm1, 32(%rsp)                 # 8-byte Spill
	movsd	%xmm5, 24(%rsp)                 # 8-byte Spill
	movsd	%xmm2, 48(%rsp)                 # 8-byte Spill
	movsd	%xmm3, 16(%rsp)                 # 8-byte Spill
	movsd	%xmm4, 40(%rsp)                 # 8-byte Spill
	callq	log10@PLT
	movsd	40(%rsp), %xmm4                 # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	16(%rsp), %xmm3                 # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	48(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	24(%rsp), %xmm5                 # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	32(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	8(%rsp), %xmm7                  # 8-byte Reload
                                        # xmm7 = mem[0],zero
	mulsd	.LCPI17_3(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	jmp	.LBB17_29
.LBB17_30:                              # %if.else.2
	movl	$.L.str.30, %edx
	movl	$.L.str.24, %ecx
	movq	%r12, %rdi
	movl	$2, %esi
	movl	%r14d, %r8d
	movapd	%xmm7, %xmm0
	movb	$2, %al
	callq	x264_log@PLT
	jmp	.LBB17_31
.LBB17_27:
	movss	.LCPI17_1(%rip), %xmm0          # xmm0 = [1.0E+2,0.0E+0,0.0E+0,0.0E+0]
.LBB17_29:                              # %x264_psnr.exit.2
	xorps	%xmm6, %xmm6
	cvtss2sd	%xmm0, %xmm6
	movl	$.L.str.29, %edx
	movl	$.L.str.24, %ecx
	movq	%r12, %rdi
	movl	$2, %esi
	movl	%r14d, %r8d
	movapd	%xmm7, %xmm0
	movb	$7, %al
	callq	x264_log@PLT
.LBB17_31:                              # %if.end132.2
	movslq	27428(%r12), %r14
	testq	%r14, %r14
	jle	.LBB17_38
# %bb.32:                               # %if.then69.3
	cmpl	$0, 476(%r12)
	movsd	27504(%r12), %xmm7              # xmm7 = mem[0],zero
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r14d, %xmm0
	divsd	%xmm0, %xmm7
	xorps	%xmm1, %xmm1
	cvtsi2sdq	27464(%r12), %xmm1
	divsd	%xmm0, %xmm1
	je	.LBB17_37
# %bb.33:                               # %if.then76.3
	movsd	27656(%r12), %xmm5              # xmm5 = mem[0],zero
	movsd	27696(%r12), %xmm2              # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movsd	27736(%r12), %xmm3              # xmm3 = mem[0],zero
	divsd	%xmm0, %xmm3
	movsd	27776(%r12), %xmm4              # xmm4 = mem[0],zero
	divsd	%xmm0, %xmm4
	divsd	%xmm0, %xmm5
	movq	%r14, %rax
	imulq	%r15, %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdq	27616(%r12), %xmm0
	xorps	%xmm6, %xmm6
	cvtsi2sd	%rax, %xmm6
	mulsd	.LCPI17_0(%rip), %xmm6
	divsd	%xmm6, %xmm0
	movsd	.LCPI17_2(%rip), %xmm6          # xmm6 = [1.0E-10,0.0E+0]
	ucomisd	%xmm0, %xmm6
	jae	.LBB17_34
# %bb.35:                               # %if.end.i.3
	movsd	%xmm7, 8(%rsp)                  # 8-byte Spill
	movsd	%xmm1, 32(%rsp)                 # 8-byte Spill
	movsd	%xmm5, 24(%rsp)                 # 8-byte Spill
	movsd	%xmm2, 48(%rsp)                 # 8-byte Spill
	movsd	%xmm3, 16(%rsp)                 # 8-byte Spill
	movsd	%xmm4, 40(%rsp)                 # 8-byte Spill
	callq	log10@PLT
	movsd	40(%rsp), %xmm4                 # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	16(%rsp), %xmm3                 # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	48(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	24(%rsp), %xmm5                 # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	32(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	8(%rsp), %xmm7                  # 8-byte Reload
                                        # xmm7 = mem[0],zero
	mulsd	.LCPI17_3(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	jmp	.LBB17_36
.LBB17_37:                              # %if.else.3
	movl	$.L.str.30, %edx
	movl	$.L.str.27, %ecx
	movq	%r12, %rdi
	movl	$2, %esi
	movl	%r14d, %r8d
	movapd	%xmm7, %xmm0
	movb	$2, %al
	callq	x264_log@PLT
	jmp	.LBB17_38
.LBB17_34:
	movss	.LCPI17_1(%rip), %xmm0          # xmm0 = [1.0E+2,0.0E+0,0.0E+0,0.0E+0]
.LBB17_36:                              # %x264_psnr.exit.3
	xorps	%xmm6, %xmm6
	cvtss2sd	%xmm0, %xmm6
	movl	$.L.str.29, %edx
	movl	$.L.str.27, %ecx
	movq	%r12, %rdi
	movl	$2, %esi
	movl	%r14d, %r8d
	movapd	%xmm7, %xmm0
	movb	$7, %al
	callq	x264_log@PLT
.LBB17_38:                              # %if.end132.3
	movslq	27420(%r12), %r14
	testq	%r14, %r14
	jle	.LBB17_45
# %bb.39:                               # %if.then69.4
	cmpl	$0, 476(%r12)
	movsd	27488(%r12), %xmm7              # xmm7 = mem[0],zero
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r14d, %xmm0
	divsd	%xmm0, %xmm7
	xorps	%xmm1, %xmm1
	cvtsi2sdq	27448(%r12), %xmm1
	divsd	%xmm0, %xmm1
	je	.LBB17_44
# %bb.40:                               # %if.then76.4
	movsd	27640(%r12), %xmm5              # xmm5 = mem[0],zero
	movsd	27680(%r12), %xmm2              # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movsd	27720(%r12), %xmm3              # xmm3 = mem[0],zero
	divsd	%xmm0, %xmm3
	movsd	27760(%r12), %xmm4              # xmm4 = mem[0],zero
	divsd	%xmm0, %xmm4
	divsd	%xmm0, %xmm5
	movq	%r14, %rax
	imulq	%r15, %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdq	27600(%r12), %xmm0
	xorps	%xmm6, %xmm6
	cvtsi2sd	%rax, %xmm6
	mulsd	.LCPI17_0(%rip), %xmm6
	divsd	%xmm6, %xmm0
	movsd	.LCPI17_2(%rip), %xmm6          # xmm6 = [1.0E-10,0.0E+0]
	ucomisd	%xmm0, %xmm6
	jae	.LBB17_41
# %bb.42:                               # %if.end.i.4
	movsd	%xmm7, 8(%rsp)                  # 8-byte Spill
	movsd	%xmm1, 32(%rsp)                 # 8-byte Spill
	movsd	%xmm5, 24(%rsp)                 # 8-byte Spill
	movsd	%xmm2, 48(%rsp)                 # 8-byte Spill
	movsd	%xmm3, 16(%rsp)                 # 8-byte Spill
	movsd	%xmm4, 40(%rsp)                 # 8-byte Spill
	callq	log10@PLT
	movsd	40(%rsp), %xmm4                 # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	16(%rsp), %xmm3                 # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	48(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	24(%rsp), %xmm5                 # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	32(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	8(%rsp), %xmm7                  # 8-byte Reload
                                        # xmm7 = mem[0],zero
	mulsd	.LCPI17_3(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	jmp	.LBB17_43
.LBB17_44:                              # %if.else.4
	movl	$.L.str.30, %edx
	movl	$.L.str.25, %ecx
	movq	%r12, %rdi
	movl	$2, %esi
	movl	%r14d, %r8d
	movapd	%xmm7, %xmm0
	movb	$2, %al
	callq	x264_log@PLT
	jmp	.LBB17_45
.LBB17_41:
	movss	.LCPI17_1(%rip), %xmm0          # xmm0 = [1.0E+2,0.0E+0,0.0E+0,0.0E+0]
.LBB17_43:                              # %x264_psnr.exit.4
	xorps	%xmm6, %xmm6
	cvtss2sd	%xmm0, %xmm6
	movl	$.L.str.29, %edx
	movl	$.L.str.25, %ecx
	movq	%r12, %rdi
	movl	$2, %esi
	movl	%r14d, %r8d
	movapd	%xmm7, %xmm0
	movb	$7, %al
	callq	x264_log@PLT
.LBB17_45:                              # %if.end132.4
	movl	100(%r12), %eax
	testq	%rax, %rax
	je	.LBB17_58
# %bb.46:                               # %land.lhs.true
	cmpl	$0, 27416(%r12)
	je	.LBB17_58
# %bb.47:                               # %for.cond144.preheader
	testl	%eax, %eax
	js	.LBB17_57
# %bb.48:                               # %for.body150.lr.ph
	leaq	1(%rax), %rcx
	cmpl	$14, %eax
	ja	.LBB17_51
# %bb.49:
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.LBB17_50
.LBB17_51:                              # %vector.ph
	movl	%ecx, %edx
	andl	$-16, %edx
	leaq	(,%rcx,4), %rsi
	andq	$-64, %rsi
	movaps	.LCPI17_4(%rip), %xmm1          # xmm1 = [2,3]
	movaps	.LCPI17_5(%rip), %xmm2          # xmm2 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	xorpd	%xmm0, %xmm0
	xorl	%edi, %edi
	pcmpeqd	%xmm3, %xmm3
	movdqa	.LCPI17_6(%rip), %xmm4          # xmm4 = [5,5,5,5]
	movdqa	.LCPI17_7(%rip), %xmm6          # xmm6 = [9,9,9,9]
	movdqa	.LCPI17_8(%rip), %xmm7          # xmm7 = [13,13,13,13]
	movdqa	.LCPI17_9(%rip), %xmm9          # xmm9 = [16,16]
	pxor	%xmm10, %xmm10
	pxor	%xmm8, %xmm8
	xorpd	%xmm5, %xmm5
	.p2align	4, 0x90
.LBB17_52:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	27520(%r12,%rdi), %xmm12
	movaps	%xmm2, %xmm11
	shufps	$136, %xmm1, %xmm11             # xmm11 = xmm11[0,2],xmm1[0,2]
	movaps	%xmm11, %xmm13
	psubd	%xmm3, %xmm13
	pshufd	$245, %xmm12, %xmm14            # xmm14 = xmm12[1,1,3,3]
	pmuludq	%xmm13, %xmm12
	pshufd	$245, %xmm13, %xmm13            # xmm13 = xmm13[1,1,3,3]
	pmuludq	%xmm14, %xmm13
	movdqu	27536(%r12,%rdi), %xmm14
	pshufd	$232, %xmm12, %xmm12            # xmm12 = xmm12[0,2,2,3]
	pshufd	$232, %xmm13, %xmm13            # xmm13 = xmm13[0,2,2,3]
	punpckldq	%xmm13, %xmm12          # xmm12 = xmm12[0],xmm13[0],xmm12[1],xmm13[1]
	movaps	%xmm11, %xmm13
	paddd	%xmm4, %xmm13
	paddd	%xmm12, %xmm0
	pshufd	$245, %xmm14, %xmm12            # xmm12 = xmm14[1,1,3,3]
	pmuludq	%xmm13, %xmm14
	pshufd	$245, %xmm13, %xmm13            # xmm13 = xmm13[1,1,3,3]
	pmuludq	%xmm12, %xmm13
	movdqu	27552(%r12,%rdi), %xmm12
	pshufd	$232, %xmm14, %xmm14            # xmm14 = xmm14[0,2,2,3]
	pshufd	$232, %xmm13, %xmm13            # xmm13 = xmm13[0,2,2,3]
	punpckldq	%xmm13, %xmm14          # xmm14 = xmm14[0],xmm13[0],xmm14[1],xmm13[1]
	movaps	%xmm11, %xmm13
	paddd	%xmm6, %xmm13
	paddd	%xmm14, %xmm10
	pshufd	$245, %xmm12, %xmm14            # xmm14 = xmm12[1,1,3,3]
	pmuludq	%xmm13, %xmm12
	pshufd	$245, %xmm13, %xmm13            # xmm13 = xmm13[1,1,3,3]
	pmuludq	%xmm14, %xmm13
	pshufd	$232, %xmm12, %xmm12            # xmm12 = xmm12[0,2,2,3]
	pshufd	$232, %xmm13, %xmm13            # xmm13 = xmm13[0,2,2,3]
	punpckldq	%xmm13, %xmm12          # xmm12 = xmm12[0],xmm13[0],xmm12[1],xmm13[1]
	movdqu	27568(%r12,%rdi), %xmm13
	paddd	%xmm7, %xmm11
	paddd	%xmm12, %xmm8
	pshufd	$245, %xmm13, %xmm12            # xmm12 = xmm13[1,1,3,3]
	pmuludq	%xmm11, %xmm13
	pshufd	$245, %xmm11, %xmm11            # xmm11 = xmm11[1,1,3,3]
	pmuludq	%xmm12, %xmm11
	pshufd	$232, %xmm13, %xmm12            # xmm12 = xmm13[0,2,2,3]
	pshufd	$232, %xmm11, %xmm11            # xmm11 = xmm11[0,2,2,3]
	punpckldq	%xmm11, %xmm12          # xmm12 = xmm12[0],xmm11[0],xmm12[1],xmm11[1]
	paddd	%xmm12, %xmm5
	paddq	%xmm9, %xmm2
	paddq	%xmm9, %xmm1
	addq	$64, %rdi
	cmpq	%rdi, %rsi
	jne	.LBB17_52
# %bb.53:                               # %middle.block
	paddd	%xmm0, %xmm10
	paddd	%xmm10, %xmm8
	paddd	%xmm8, %xmm5
	pshufd	$238, %xmm5, %xmm0              # xmm0 = xmm5[2,3,2,3]
	paddd	%xmm5, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %esi
	cmpq	%rcx, %rdx
	je	.LBB17_54
	.p2align	4, 0x90
.LBB17_50:                              # %for.body150
                                        # =>This Inner Loop Header: Depth=1
	movl	27520(%r12,%rdx,4), %edi
	leaq	1(%rdx), %r8
	imull	%r8d, %edi
	addl	%edi, %esi
	movq	%r8, %rdx
	cmpq	%r8, %rcx
	jne	.LBB17_50
.LBB17_54:                              # %for.cond161.preheader
	testl	%eax, %eax
	js	.LBB17_57
# %bb.55:                               # %for.body167.lr.ph
	xorps	%xmm0, %xmm0
	cvtsi2sd	%esi, %xmm0
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	leaq	288(%rsp), %r14
	movq	$-1, %rbx
	.p2align	4, 0x90
.LBB17_56:                              # %for.body167
                                        # =>This Inner Loop Header: Depth=1
	leal	2(%rbx), %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI17_10(%rip), %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	27524(%r12,%rbx,4), %xmm0
	mulsd	%xmm1, %xmm0
	divsd	8(%rsp), %xmm0                  # 8-byte Folded Reload
	movl	$.L.str.31, %esi
	movq	%r14, %rdi
	movb	$1, %al
	callq	sprintf@PLT
	cltq
	addq	%rax, %r14
	movslq	100(%r12), %rax
	incq	%rbx
	cmpq	%rax, %rbx
	jl	.LBB17_56
.LBB17_57:                              # %for.cond.cleanup166
	leaq	288(%rsp), %rcx
	movl	$.L.str.32, %edx
	movq	%r12, %rdi
	movl	$2, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
.LBB17_58:                              # %for.inc212.16.1
	movq	%r15, 152(%rsp)                 # 8-byte Spill
	movq	28592(%r12), %rbx
	movq	28600(%r12), %rbp
	movq	28608(%r12), %r15
	movq	28616(%r12), %r13
	addq	28624(%r12), %rbx
	addq	28632(%r12), %rbp
	addq	28640(%r12), %r15
	addq	28648(%r12), %r13
	addq	28656(%r12), %rbx
	addq	28664(%r12), %rbp
	addq	28672(%r12), %r15
	addq	28680(%r12), %r13
	addq	28696(%r12), %r13
	movq	28704(%r12), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	28712(%r12), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	28752(%r12), %rax
	addq	28784(%r12), %rax
	addq	28816(%r12), %rax
	movq	28720(%r12), %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	addq	28832(%r12), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	28840(%r12), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	28848(%r12), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	28856(%r12), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movl	27424(%r12), %eax
	testl	%eax, %eax
	jle	.LBB17_62
# %bb.59:                               # %if.then223
	imull	16368(%r12), %eax
	xorps	%xmm3, %xmm3
	cvtsi2sd	%eax, %xmm3
	divsd	.LCPI17_10(%rip), %xmm3
	movl	$.L.str.83, %eax
	movl	$.L.str.84, %edx
	movzbl	64(%rsp), %r14d                 # 1-byte Folded Reload
	testb	%r14b, %r14b
	cmovneq	%rax, %rdx
	xorps	%xmm0, %xmm0
	cvtsi2sdq	28152(%r12), %xmm0
	divsd	%xmm3, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdq	28144(%r12), %xmm1
	divsd	%xmm3, %xmm1
	cvtsi2sdq	28136(%r12), %xmm2
	movsd	%xmm3, 72(%rsp)                 # 8-byte Spill
	divsd	%xmm3, %xmm2
	leaq	288(%rsp), %rdi
	movl	$.L.str.82, %esi
	movb	$3, %al
	callq	sprintf@PLT
	testb	%r14b, %r14b
	je	.LBB17_61
# %bb.60:                               # %if.then.i
	cltq
	leaq	(%rsp,%rax), %rdi
	addq	$288, %rdi                      # imm = 0x120
	xorps	%xmm0, %xmm0
	cvtsi2sdq	28160(%r12), %xmm0
	divsd	72(%rsp), %xmm0                 # 8-byte Folded Reload
	movl	$.L.str.31, %esi
	movb	$1, %al
	callq	sprintf@PLT
.LBB17_61:                              # %x264_print_intra.exit
	leaq	288(%rsp), %rcx
	movl	$.L.str.33, %edx
	movq	%r12, %rdi
	movl	$2, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
.LBB17_62:                              # %if.end239
	movl	27416(%r12), %eax
	testl	%eax, %eax
	jle	.LBB17_66
# %bb.63:                               # %if.then245
	imull	16368(%r12), %eax
	xorps	%xmm3, %xmm3
	cvtsi2sd	%eax, %xmm3
	divsd	.LCPI17_10(%rip), %xmm3
	movl	$.L.str.83, %eax
	movl	$.L.str.84, %edx
	movzbl	64(%rsp), %r14d                 # 1-byte Folded Reload
	testb	%r14b, %r14b
	cmovneq	%rax, %rdx
	xorps	%xmm0, %xmm0
	cvtsi2sdq	27848(%r12), %xmm0
	divsd	%xmm3, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdq	27840(%r12), %xmm1
	divsd	%xmm3, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2sdq	27832(%r12), %xmm2
	movsd	%xmm3, 72(%rsp)                 # 8-byte Spill
	divsd	%xmm3, %xmm2
	leaq	288(%rsp), %rdi
	movl	$.L.str.82, %esi
	movb	$3, %al
	callq	sprintf@PLT
	testb	%r14b, %r14b
	je	.LBB17_65
# %bb.64:                               # %if.then.i1618
	cltq
	leaq	(%rsp,%rax), %rdi
	addq	$288, %rdi                      # imm = 0x120
	xorps	%xmm0, %xmm0
	cvtsi2sdq	27856(%r12), %xmm0
	divsd	72(%rsp), %xmm0                 # 8-byte Folded Reload
	movl	$.L.str.31, %esi
	movb	$1, %al
	callq	sprintf@PLT
.LBB17_65:                              # %x264_print_intra.exit1626
	xorps	%xmm0, %xmm0
	cvtsi2sdq	80(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	.LCPI17_11(%rip), %xmm5         # xmm5 = [4.0E+0,0.0E+0]
	movsd	72(%rsp), %xmm6                 # 8-byte Reload
                                        # xmm6 = mem[0],zero
	mulsd	%xmm6, %xmm5
	divsd	%xmm5, %xmm0
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	16(%rsp), %rax                  # 8-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rax, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2sd	%r13, %xmm2
	divsd	%xmm5, %xmm1
	addq	%rbp, %r15
	xorps	%xmm3, %xmm3
	cvtsi2sd	%r15, %xmm3
	divsd	%xmm5, %xmm2
	divsd	%xmm5, %xmm3
	cvtsi2sd	%rbx, %xmm4
	divsd	%xmm5, %xmm4
	xorps	%xmm5, %xmm5
	cvtsi2sdq	27880(%r12), %xmm5
	divsd	%xmm6, %xmm5
	leaq	288(%rsp), %rcx
	movl	$.L.str.34, %edx
	movq	%r12, %rdi
	movl	$2, %esi
	movb	$6, %al
	callq	x264_log@PLT
.LBB17_66:                              # %if.end291
	movl	27420(%r12), %eax
	testl	%eax, %eax
	movq	%r12, %r13
	jle	.LBB17_76
# %bb.67:                               # %if.then297
	imull	16368(%r13), %eax
	xorps	%xmm3, %xmm3
	cvtsi2sd	%eax, %xmm3
	divsd	.LCPI17_10(%rip), %xmm3
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 112(%rsp)
	movq	$0, 128(%rsp)
	movl	$.L.str.83, %eax
	movl	$.L.str.84, %edx
	movzbl	64(%rsp), %ebx                  # 1-byte Folded Reload
	testb	%bl, %bl
	cmovneq	%rax, %rdx
	xorps	%xmm0, %xmm0
	cvtsi2sdq	28000(%r13), %xmm0
	divsd	%xmm3, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdq	27992(%r13), %xmm1
	divsd	%xmm3, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2sdq	27984(%r13), %xmm2
	movsd	%xmm3, 16(%rsp)                 # 8-byte Spill
	divsd	%xmm3, %xmm2
	leaq	288(%rsp), %rdi
	movl	$.L.str.82, %esi
	movb	$3, %al
	callq	sprintf@PLT
	testb	%bl, %bl
	je	.LBB17_69
# %bb.68:                               # %if.then.i1638
	cltq
	leaq	(%rsp,%rax), %rdi
	addq	$288, %rdi                      # imm = 0x120
	xorps	%xmm0, %xmm0
	cvtsi2sdq	28008(%r13), %xmm0
	divsd	16(%rsp), %xmm0                 # 8-byte Folded Reload
	movl	$.L.str.31, %esi
	movb	$1, %al
	callq	sprintf@PLT
.LBB17_69:                              # %for.cond322.preheader.preheader
	movl	$13992, %eax                    # imm = 0x36A8
	jmp	.LBB17_70
	.p2align	4, 0x90
.LBB17_74:                              # %if.end354.1
                                        #   in Loop: Header=BB17_70 Depth=1
	addq	$4, %rax
	cmpq	$14060, %rax                    # imm = 0x36EC
	je	.LBB17_75
.LBB17_70:                              # %for.cond322.preheader
                                        # =>This Inner Loop Header: Depth=1
	movzbl	x264_mb_type_list_table-13992(%rax), %ecx
	movzbl	x264_mb_type_list_table-13990(%rax), %edx
	movl	%ecx, %esi
	orl	%edx, %esi
	je	.LBB17_72
# %bb.71:                               # %if.then342
                                        #   in Loop: Header=BB17_70 Depth=1
	movq	(%r13,%rax,2), %rsi
	addq	%rsi, %rsi
	incl	%ecx
	imull	%ecx, %edx
	addq	%rsi, 112(%rsp,%rdx,8)
.LBB17_72:                              # %if.end354
                                        #   in Loop: Header=BB17_70 Depth=1
	movzbl	x264_mb_type_list_table-13991(%rax), %ecx
	movzbl	x264_mb_type_list_table-13989(%rax), %edx
	movl	%ecx, %esi
	orl	%edx, %esi
	je	.LBB17_74
# %bb.73:                               # %if.then342.1
                                        #   in Loop: Header=BB17_70 Depth=1
	movq	(%r13,%rax,2), %rsi
	addq	%rsi, %rsi
	incl	%ecx
	imull	%ecx, %edx
	addq	%rsi, 112(%rsp,%rdx,8)
	jmp	.LBB17_74
.LBB17_75:                              # %for.cond.cleanup320
	movq	112(%rsp), %rdx
	movq	120(%rsp), %rax
	addq	28752(%r13), %rdx
	addq	28784(%r13), %rax
	movq	128(%rsp), %rcx
	addq	28816(%r13), %rcx
	movq	28824(%r13), %rsi
	leaq	2(%rsi), %rdi
	addq	$5, %rsi
	testq	%rdi, %rdi
	cmovnsq	%rdi, %rsi
	sarq	$2, %rsi
	addq	28040(%r13), %rsi
	leaq	(%rax,%rdx), %rdi
	addq	%rcx, %rdi
	cvtsi2sd	%rdi, %xmm8
	divsd	.LCPI17_10(%rip), %xmm8
	movq	%rsi, 28040(%r13)
	xorps	%xmm0, %xmm0
	cvtsi2sdq	48(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	.LCPI17_11(%rip), %xmm3         # xmm3 = [4.0E+0,0.0E+0]
	movsd	16(%rsp), %xmm6                 # 8-byte Reload
                                        # xmm6 = mem[0],zero
	mulsd	%xmm6, %xmm3
	movq	24(%rsp), %rdi                  # 8-byte Reload
	addq	32(%rsp), %rdi                  # 8-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rdi, %xmm1
	divsd	%xmm3, %xmm0
	divsd	%xmm3, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2sdq	8(%rsp), %xmm2          # 8-byte Folded Reload
	divsd	%xmm3, %xmm2
	xorps	%xmm3, %xmm3
	cvtsi2sd	%rsi, %xmm3
	divsd	%xmm6, %xmm3
	cvtsi2sdq	28128(%r13), %xmm4
	cvtsi2sd	%rdx, %xmm5
	divsd	%xmm6, %xmm4
	divsd	%xmm8, %xmm5
	xorps	%xmm6, %xmm6
	cvtsi2sd	%rax, %xmm6
	divsd	%xmm8, %xmm6
	cvtsi2sd	%rcx, %xmm7
	divsd	%xmm8, %xmm7
	leaq	288(%rsp), %rcx
	movl	$.L.str.35, %edx
	movq	%r13, %rdi
	movl	$2, %esi
	movb	$8, %al
	callq	x264_log@PLT
.LBB17_76:                              # %if.end424
	movq	%r13, %rdi
	callq	x264_ratecontrol_summary@PLT
	movslq	27424(%r13), %rax
	movslq	27416(%r13), %rcx
	addq	%rax, %rcx
	movslq	27420(%r13), %rbp
	addq	%rcx, %rbp
	testl	%ebp, %ebp
	jle	.LBB17_118
# %bb.77:                               # %if.then438
	movq	27840(%r13), %r14
	addq	28144(%r13), %r14
	addq	27992(%r13), %r14
	movq	28136(%r13), %r12
	addq	%r14, %r12
	addq	27832(%r13), %r12
	addq	27984(%r13), %r12
	addq	28152(%r13), %r12
	addq	27848(%r13), %r12
	addq	28000(%r13), %r12
	movq	28160(%r13), %rbx
	addq	%r12, %rbx
	addq	27856(%r13), %rbx
	cmpl	$1, %ebp
	je	.LBB17_79
# %bb.78:                               # %if.then438
	cmpl	$0, 648(%r13)
	je	.LBB17_79
# %bb.80:                               # %if.else542
	movq	14656(%r13), %rax
	addq	%rax, %rax
	subq	14664(%r13), %rax
	xorps	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm0
	movl	660(%r13), %eax
	xorps	%xmm1, %xmm1
	cvtsi2ss	%rax, %xmm1
	movl	664(%r13), %eax
	xorps	%xmm2, %xmm2
	cvtsi2ss	%rax, %xmm2
	mulss	%xmm0, %xmm1
	divss	%xmm2, %xmm1
	movq	27440(%r13), %rax
	addq	27456(%r13), %rax
	addq	27448(%r13), %rax
	xorps	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, 60(%rsp)                 # 4-byte Spill
	jmp	.LBB17_81
.LBB17_79:                              # %if.then525
	movl	652(%r13), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm0
	movl	656(%r13), %eax
	xorps	%xmm1, %xmm1
	cvtsi2ss	%rax, %xmm1
	divss	%xmm1, %xmm0
	movq	27440(%r13), %rax
	addq	27456(%r13), %rax
	addq	27448(%r13), %rax
	xorps	%xmm1, %xmm1
	cvtsi2ss	%rax, %xmm1
	mulss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ebp, %xmm0
	divss	%xmm0, %xmm1
	movss	%xmm1, 60(%rsp)                 # 4-byte Spill
.LBB17_81:                              # %if.end567
	movslq	16368(%r13), %r15
	movq	3328(%r13), %rax
	addq	28008(%r13), %rbx
	cmpl	$0, 60(%rax)
	je	.LBB17_85
# %bb.82:                               # %if.then569
	movb	$0, 288(%rsp)
	movq	28864(%r13), %rax
	testq	%rax, %rax
	je	.LBB17_84
# %bb.83:                               # %if.then574
	xorps	%xmm0, %xmm0
	cvtsi2sdq	28872(%r13), %xmm0
	mulsd	.LCPI17_10(%rip), %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rax, %xmm1
	divsd	%xmm1, %xmm0
	leaq	288(%rsp), %rdi
	movl	$.L.str.36, %esi
	movb	$1, %al
	callq	sprintf@PLT
.LBB17_84:                              # %if.end587
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r14, %xmm0
	mulsd	.LCPI17_10(%rip), %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r12, %xmm1
	divsd	%xmm1, %xmm0
	leaq	288(%rsp), %rcx
	movl	$.L.str.37, %edx
	movq	%r13, %rdi
	movl	$2, %esi
	movb	$1, %al
	callq	x264_log@PLT
.LBB17_85:                              # %if.end593
	imulq	%rbp, %r15
	cmpl	$3, 404(%r13)
	je	.LBB17_88
# %bb.86:                               # %lor.lhs.false598
	cmpl	$0, 30376(%r13)
	je	.LBB17_90
# %bb.87:                               # %land.lhs.true602
	cmpl	$0, 30380(%r13)
	je	.LBB17_90
.LBB17_88:                              # %land.lhs.true607
	movl	27420(%r13), %eax
	testl	%eax, %eax
	je	.LBB17_90
# %bb.89:                               # %if.then612
	xorps	%xmm0, %xmm0
	cvtsi2sdl	30380(%r13), %xmm0
	movsd	.LCPI17_10(%rip), %xmm2         # xmm2 = [1.0E+2,0.0E+0]
	mulsd	%xmm2, %xmm0
	cvtsi2sd	%eax, %xmm3
	divsd	%xmm3, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	30376(%r13), %xmm1
	mulsd	%xmm2, %xmm1
	divsd	%xmm3, %xmm1
	movl	$.L.str.38, %edx
	movq	%r13, %rdi
	movl	$2, %esi
	movb	$2, %al
	callq	x264_log@PLT
.LBB17_90:                              # %if.end633
	movb	$0, 288(%rsp)
	subq	%rbx, %r15
	je	.LBB17_92
# %bb.91:                               # %if.then637
	xorps	%xmm0, %xmm0
	cvtsi2sdq	29912(%r13), %xmm0
	movsd	.LCPI17_10(%rip), %xmm3         # xmm3 = [1.0E+2,0.0E+0]
	leaq	(,%r15,4), %rax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rax, %xmm1
	mulsd	%xmm3, %xmm0
	divsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdq	29928(%r13), %xmm1
	mulsd	%xmm3, %xmm1
	cvtsi2sd	%r15, %xmm4
	divsd	%xmm4, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2sdq	29944(%r13), %xmm2
	mulsd	%xmm3, %xmm2
	divsd	%xmm4, %xmm2
	leaq	288(%rsp), %rdi
	movl	$.L.str.39, %esi
	movb	$3, %al
	callq	sprintf@PLT
.LBB17_92:                              # %if.end664
	xorps	%xmm0, %xmm0
	cvtsi2sdq	29904(%r13), %xmm0
	movsd	.LCPI17_10(%rip), %xmm4         # xmm4 = [1.0E+2,0.0E+0]
	leaq	(,%rbx,4), %rax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rax, %xmm1
	mulsd	%xmm4, %xmm0
	divsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdq	29920(%r13), %xmm1
	mulsd	%xmm4, %xmm1
	xorps	%xmm3, %xmm3
	cvtsi2sd	%rbx, %xmm3
	divsd	%xmm3, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2sdq	29936(%r13), %xmm2
	mulsd	%xmm4, %xmm2
	divsd	%xmm3, %xmm2
	leaq	288(%rsp), %rcx
	movl	$.L.str.40, %edx
	movq	%r13, %rdi
	movl	$2, %esi
	movb	$3, %al
	callq	x264_log@PLT
	movq	29952(%r13), %rsi
	movq	29960(%r13), %rcx
	movq	29968(%r13), %r8
	movq	29976(%r13), %rax
	leaq	(%r8,%rax), %rdi
	addq	%rsi, %rdi
	addq	%rcx, %rdi
	movq	29984(%r13), %r9
	movq	29992(%r13), %rdx
	addq	%r9, %rdi
	addq	%rdx, %rdi
	movq	30000(%r13), %r10
	addq	%r10, %rdi
	je	.LBB17_94
# %bb.93:                               # %if.then716
	addq	%r9, %r8
	addq	%r10, %rdx
	addq	%r8, %rdx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rsi, %xmm0
	movsd	.LCPI17_10(%rip), %xmm5         # xmm5 = [1.0E+2,0.0E+0]
	mulsd	%xmm5, %xmm0
	xorps	%xmm4, %xmm4
	cvtsi2sd	%rdi, %xmm4
	divsd	%xmm4, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rcx, %xmm1
	mulsd	%xmm5, %xmm1
	divsd	%xmm4, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2sd	%rdx, %xmm2
	mulsd	%xmm5, %xmm2
	divsd	%xmm4, %xmm2
	xorps	%xmm3, %xmm3
	cvtsi2sd	%rax, %xmm3
	mulsd	%xmm5, %xmm3
	divsd	%xmm4, %xmm3
	movl	$.L.str.41, %edx
	movq	%r13, %rdi
	movl	$2, %esi
	movb	$4, %al
	callq	x264_log@PLT
.LBB17_94:                              # %for.cond753.preheader
	movq	30056(%r13), %r10
	movq	30064(%r13), %r9
	movq	30072(%r13), %r11
	movq	30080(%r13), %r8
	leaq	(%r11,%r8), %rdx
	addq	%r10, %rdx
	addq	%r9, %rdx
	movq	30088(%r13), %rdi
	movq	30096(%r13), %rsi
	leaq	(%rdi,%rsi), %r12
	movq	30104(%r13), %rcx
	addq	%rcx, %r12
	addq	%rdx, %r12
	movq	30112(%r13), %rdx
	movq	30120(%r13), %rax
	leaq	(%rdx,%rax), %r14
	movq	30128(%r13), %r15
	addq	%r15, %r14
	movq	30136(%r13), %rbx
	addq	%rbx, %r14
	addq	%r12, %r14
	movq	30144(%r13), %r12
	addq	%r12, %r14
	je	.LBB17_96
# %bb.95:                               # %if.then787
	addq	%r15, %r11
	addq	%r12, %rbx
	addq	%r11, %rbx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r10, %xmm0
	movsd	.LCPI17_10(%rip), %xmm10        # xmm10 = [1.0E+2,0.0E+0]
	mulsd	%xmm10, %xmm0
	cvtsi2sd	%r14, %xmm8
	divsd	%xmm8, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r9, %xmm1
	mulsd	%xmm10, %xmm1
	divsd	%xmm8, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2sd	%rbx, %xmm2
	mulsd	%xmm10, %xmm2
	divsd	%xmm8, %xmm2
	xorps	%xmm3, %xmm3
	cvtsi2sd	%r8, %xmm3
	mulsd	%xmm10, %xmm3
	divsd	%xmm8, %xmm3
	xorps	%xmm4, %xmm4
	cvtsi2sd	%rdi, %xmm4
	mulsd	%xmm10, %xmm4
	divsd	%xmm8, %xmm4
	xorps	%xmm5, %xmm5
	cvtsi2sd	%rsi, %xmm5
	mulsd	%xmm10, %xmm5
	divsd	%xmm8, %xmm5
	cvtsi2sd	%rcx, %xmm6
	mulsd	%xmm10, %xmm6
	divsd	%xmm8, %xmm6
	cvtsi2sd	%rdx, %xmm7
	mulsd	%xmm10, %xmm7
	divsd	%xmm8, %xmm7
	cvtsi2sd	%rax, %xmm9
	mulsd	%xmm10, %xmm9
	divsd	%xmm8, %xmm9
	movsd	%xmm9, (%rsp)
	movl	$.L.str.42, %edx
	movq	%r13, %rdi
	movl	$2, %esi
	movl	$8, %ecx
	movb	$8, %al
	callq	x264_log@PLT
.LBB17_96:                              # %for.inc872
	movq	30160(%r13), %r10
	movq	30168(%r13), %r9
	movq	30176(%r13), %r11
	movq	30184(%r13), %r8
	leaq	(%r11,%r8), %rdx
	addq	%r10, %rdx
	addq	%r9, %rdx
	movq	30192(%r13), %rdi
	movq	30200(%r13), %rsi
	leaq	(%rdi,%rsi), %r12
	movq	30208(%r13), %rcx
	addq	%rcx, %r12
	addq	%rdx, %r12
	movq	30216(%r13), %rdx
	movq	30224(%r13), %rax
	leaq	(%rdx,%rax), %r14
	movq	30232(%r13), %r15
	addq	%r15, %r14
	movq	30240(%r13), %rbx
	addq	%rbx, %r14
	addq	%r12, %r14
	movq	30248(%r13), %r12
	addq	%r12, %r14
	movsd	.LCPI17_10(%rip), %xmm10        # xmm10 = [1.0E+2,0.0E+0]
	je	.LBB17_98
# %bb.97:                               # %if.then787.1
	addq	%r15, %r11
	addq	%r12, %rbx
	addq	%r11, %rbx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r10, %xmm0
	mulsd	%xmm10, %xmm0
	xorps	%xmm8, %xmm8
	cvtsi2sd	%r14, %xmm8
	divsd	%xmm8, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r9, %xmm1
	mulsd	%xmm10, %xmm1
	divsd	%xmm8, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2sd	%rbx, %xmm2
	mulsd	%xmm10, %xmm2
	divsd	%xmm8, %xmm2
	xorps	%xmm3, %xmm3
	cvtsi2sd	%r8, %xmm3
	mulsd	%xmm10, %xmm3
	divsd	%xmm8, %xmm3
	xorps	%xmm4, %xmm4
	cvtsi2sd	%rdi, %xmm4
	mulsd	%xmm10, %xmm4
	divsd	%xmm8, %xmm4
	xorps	%xmm5, %xmm5
	cvtsi2sd	%rsi, %xmm5
	mulsd	%xmm10, %xmm5
	divsd	%xmm8, %xmm5
	xorps	%xmm6, %xmm6
	cvtsi2sd	%rcx, %xmm6
	mulsd	%xmm10, %xmm6
	divsd	%xmm8, %xmm6
	xorps	%xmm7, %xmm7
	cvtsi2sd	%rdx, %xmm7
	mulsd	%xmm10, %xmm7
	divsd	%xmm8, %xmm7
	xorps	%xmm9, %xmm9
	cvtsi2sd	%rax, %xmm9
	mulsd	%xmm10, %xmm9
	divsd	%xmm8, %xmm9
	movsd	%xmm9, (%rsp)
	movl	$.L.str.42, %edx
	movq	%r13, %rdi
	movl	$2, %esi
	movl	$4, %ecx
	movb	$8, %al
	callq	x264_log@PLT
	movsd	.LCPI17_10(%rip), %xmm10        # xmm10 = [1.0E+2,0.0E+0]
.LBB17_98:                              # %for.inc872.1
	movq	30264(%r13), %rsi
	movq	30272(%r13), %rdx
	movq	30280(%r13), %rcx
	movq	30288(%r13), %rax
	leaq	(%rcx,%rax), %rdi
	addq	%rsi, %rdi
	addq	%rdx, %rdi
	movq	30296(%r13), %r9
	movq	30304(%r13), %r8
	addq	%r9, %rdi
	addq	%r8, %rdi
	movq	30312(%r13), %r10
	addq	%r10, %rdi
	je	.LBB17_100
# %bb.99:                               # %if.then904
	addq	%r9, %rsi
	addq	%r10, %r8
	addq	%rsi, %r8
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r8, %xmm0
	mulsd	%xmm10, %xmm0
	xorps	%xmm4, %xmm4
	cvtsi2sd	%rdi, %xmm4
	divsd	%xmm4, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rdx, %xmm1
	mulsd	%xmm10, %xmm1
	divsd	%xmm4, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2sd	%rcx, %xmm2
	mulsd	%xmm10, %xmm2
	divsd	%xmm4, %xmm2
	xorps	%xmm3, %xmm3
	cvtsi2sd	%rax, %xmm3
	mulsd	%xmm10, %xmm3
	divsd	%xmm4, %xmm3
	movl	$.L.str.43, %edx
	movq	%r13, %rdi
	movl	$2, %esi
	movb	$4, %al
	callq	x264_log@PLT
	movsd	.LCPI17_10(%rip), %xmm10        # xmm10 = [1.0E+2,0.0E+0]
.LBB17_100:                             # %if.end933
	movq	%rbp, 144(%rsp)                 # 8-byte Spill
	cmpl	$2, 396(%r13)
	jne	.LBB17_103
# %bb.101:                              # %land.lhs.true938
	movl	27416(%r13), %eax
	testl	%eax, %eax
	jle	.LBB17_103
# %bb.102:                              # %if.then944
	xorps	%xmm0, %xmm0
	cvtsi2sdl	30384(%r13), %xmm0
	mulsd	.LCPI17_10(%rip), %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movl	$.L.str.44, %edx
	movq	%r13, %rdi
	movl	$2, %esi
	movb	$1, %al
	callq	x264_log@PLT
	movsd	.LCPI17_10(%rip), %xmm10        # xmm10 = [1.0E+2,0.0E+0]
.LBB17_103:                             # %if.end954
	movss	60(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	divss	.LCPI17_12(%rip), %xmm0
	movss	%xmm0, 60(%rsp)                 # 4-byte Spill
	movq	%r13, 96(%rsp)                  # 8-byte Spill
	leaq	28880(%r13), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movb	$1, %al
	xorl	%r15d, %r15d
	jmp	.LBB17_104
	.p2align	4, 0x90
.LBB17_110:                             # %for.cond.cleanup964
                                        #   in Loop: Header=BB17_104 Depth=1
	movl	$1, %r15d
	testb	$1, 92(%rsp)                    # 1-byte Folded Reload
	je	.LBB17_111
.LBB17_104:                             # %for.cond961.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_105 Depth 2
                                        #       Child Loop BB17_107 Depth 3
	movl	%eax, 92(%rsp)                  # 4-byte Spill
	movq	%r15, 168(%rsp)                 # 8-byte Spill
	shlq	$8, %r15
	movq	104(%rsp), %rax                 # 8-byte Reload
	addq	%r15, %rax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	movb	$1, %al
	xorl	%ebx, %ebx
	jmp	.LBB17_105
	.p2align	4, 0x90
.LBB17_109:                             # %cleanup
                                        #   in Loop: Header=BB17_105 Depth=2
	movl	$1, %ebx
	testb	$1, 64(%rsp)                    # 1-byte Folded Reload
	movl	$0, %eax
	je	.LBB17_110
.LBB17_105:                             # %for.cond969.preheader
                                        #   Parent Loop BB17_104 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_107 Depth 3
	movl	%eax, 64(%rsp)                  # 4-byte Spill
	movq	%rbx, 32(%rsp)                  # 8-byte Spill
	shlq	$9, %rbx
	movq	104(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rbx), %rdx
	movq	8(%r15,%rdx), %rax
	movq	16(%r15,%rdx), %rcx
	xorl	%r13d, %r13d
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	testq	%rax, %rax
	setne	%r13b
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	testq	%rcx, %rcx
	movl	$2, %eax
	cmovnel	%eax, %r13d
	movq	24(%r15,%rdx), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	testq	%rax, %rax
	movl	$3, %eax
	cmovnel	%eax, %r13d
	movq	32(%r15,%rdx), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	testq	%rax, %rax
	movl	$4, %eax
	cmovnel	%eax, %r13d
	movq	40(%r15,%rdx), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	testq	%rax, %rax
	movl	$5, %eax
	cmovnel	%eax, %r13d
	movq	48(%r15,%rdx), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	testq	%rax, %rax
	movl	$6, %eax
	cmovnel	%eax, %r13d
	movq	56(%r15,%rdx), %rbp
	testq	%rbp, %rbp
	movl	$7, %eax
	cmovnel	%eax, %r13d
	movq	64(%r15,%rdx), %r9
	testq	%r9, %r9
	movl	$8, %eax
	cmovnel	%eax, %r13d
	movq	72(%r15,%rdx), %rcx
	testq	%rcx, %rcx
	movl	$9, %eax
	cmovnel	%eax, %r13d
	movq	80(%r15,%rdx), %r11
	testq	%r11, %r11
	movl	$10, %eax
	cmovnel	%eax, %r13d
	movq	88(%r15,%rdx), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	testq	%rax, %rax
	movl	$11, %eax
	cmovnel	%eax, %r13d
	movq	96(%r15,%rdx), %rax
	movq	%rax, 280(%rsp)                 # 8-byte Spill
	testq	%rax, %rax
	movl	$12, %eax
	cmovnel	%eax, %r13d
	movq	104(%r15,%rdx), %rax
	movq	%rax, 272(%rsp)                 # 8-byte Spill
	testq	%rax, %rax
	movl	$13, %eax
	cmovnel	%eax, %r13d
	movq	112(%r15,%rdx), %rax
	movq	%rax, 264(%rsp)                 # 8-byte Spill
	testq	%rax, %rax
	movl	$14, %eax
	cmovnel	%eax, %r13d
	movq	120(%r15,%rdx), %r14
	testq	%r14, %r14
	movl	$15, %eax
	cmovnel	%eax, %r13d
	movq	128(%r15,%rdx), %rax
	movq	%rax, 256(%rsp)                 # 8-byte Spill
	testq	%rax, %rax
	movl	$16, %eax
	cmovnel	%eax, %r13d
	movq	136(%r15,%rdx), %rax
	movq	%rax, 248(%rsp)                 # 8-byte Spill
	testq	%rax, %rax
	movl	$17, %eax
	cmovnel	%eax, %r13d
	movq	144(%r15,%rdx), %rax
	movq	%rax, 240(%rsp)                 # 8-byte Spill
	testq	%rax, %rax
	movl	$18, %eax
	cmovnel	%eax, %r13d
	movq	152(%r15,%rdx), %rax
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	testq	%rax, %rax
	movl	$19, %eax
	cmovnel	%eax, %r13d
	movq	160(%r15,%rdx), %rax
	movq	%rax, 224(%rsp)                 # 8-byte Spill
	testq	%rax, %rax
	movl	$20, %eax
	cmovnel	%eax, %r13d
	movq	168(%r15,%rdx), %rax
	testq	%rax, %rax
	movl	$21, %esi
	cmovnel	%esi, %r13d
	movq	176(%r15,%rdx), %rsi
	movq	%rsi, 216(%rsp)                 # 8-byte Spill
	testq	%rsi, %rsi
	movl	$22, %esi
	cmovnel	%esi, %r13d
	movq	184(%r15,%rdx), %rsi
	movq	%rsi, 208(%rsp)                 # 8-byte Spill
	testq	%rsi, %rsi
	movl	$23, %esi
	cmovnel	%esi, %r13d
	movq	192(%r15,%rdx), %rsi
	movq	%rsi, 200(%rsp)                 # 8-byte Spill
	testq	%rsi, %rsi
	movl	$24, %esi
	cmovnel	%esi, %r13d
	movq	200(%r15,%rdx), %rsi
	movq	%rsi, 192(%rsp)                 # 8-byte Spill
	testq	%rsi, %rsi
	movl	$25, %esi
	cmovnel	%esi, %r13d
	movq	208(%r15,%rdx), %rsi
	movq	%rsi, 184(%rsp)                 # 8-byte Spill
	testq	%rsi, %rsi
	movl	$26, %esi
	cmovnel	%esi, %r13d
	movq	216(%r15,%rdx), %rsi
	testq	%rsi, %rsi
	movl	$27, %edi
	cmovnel	%edi, %r13d
	movq	224(%r15,%rdx), %r12
	testq	%r12, %r12
	movl	$28, %edi
	cmovnel	%edi, %r13d
	movq	232(%r15,%rdx), %rdi
	movq	%rdi, 176(%rsp)                 # 8-byte Spill
	testq	%rdi, %rdi
	movl	$29, %edi
	cmovnel	%edi, %r13d
	movq	240(%r15,%rdx), %r8
	testq	%r8, %r8
	movl	$30, %edi
	cmovnel	%edi, %r13d
	movq	248(%r15,%rdx), %rdi
	testq	%rdi, %rdi
	movl	$31, %r10d
	cmovnel	%r10d, %r13d
	testl	%r13d, %r13d
	je	.LBB17_109
# %bb.106:                              # %for.body1005.lr.ph
                                        #   in Loop: Header=BB17_105 Depth=2
	movq	8(%rsp), %r10                   # 8-byte Reload
	addq	(%r15,%rdx), %r10
	movq	48(%rsp), %rdx                  # 8-byte Reload
	addq	24(%rsp), %rdx                  # 8-byte Folded Reload
	addq	%r10, %rdx
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	movq	%rbp, %rsi
	movq	%r11, %rbp
	movq	80(%rsp), %r11                  # 8-byte Reload
	addq	40(%rsp), %r11                  # 8-byte Folded Reload
	movq	16(%rsp), %r10                  # 8-byte Reload
	addq	%r11, %r10
	addq	%rdx, %r10
	addq	%rsi, %r9
	addq	%r9, %rcx
	addq	%rcx, %rbp
	addq	%r10, %rbp
	movq	280(%rsp), %rcx                 # 8-byte Reload
	addq	72(%rsp), %rcx                  # 8-byte Folded Reload
	movq	272(%rsp), %rdx                 # 8-byte Reload
	addq	%rcx, %rdx
	movq	264(%rsp), %rcx                 # 8-byte Reload
	addq	%rdx, %rcx
	addq	%rcx, %r14
	addq	%rbp, %r14
	movq	248(%rsp), %rcx                 # 8-byte Reload
	addq	256(%rsp), %rcx                 # 8-byte Folded Reload
	movq	240(%rsp), %rdx                 # 8-byte Reload
	addq	%rcx, %rdx
	movq	232(%rsp), %rcx                 # 8-byte Reload
	addq	%rdx, %rcx
	movq	224(%rsp), %rdx                 # 8-byte Reload
	addq	%rcx, %rdx
	addq	%rdx, %rax
	addq	%r14, %rax
	movq	208(%rsp), %rcx                 # 8-byte Reload
	addq	216(%rsp), %rcx                 # 8-byte Folded Reload
	movq	200(%rsp), %rdx                 # 8-byte Reload
	addq	%rcx, %rdx
	movq	192(%rsp), %rcx                 # 8-byte Reload
	addq	%rdx, %rcx
	movq	184(%rsp), %rdx                 # 8-byte Reload
	addq	%rcx, %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
	addq	%rdx, %rcx
	addq	%rcx, %r12
	addq	%rax, %r12
	addq	176(%rsp), %r8                  # 8-byte Folded Reload
	addq	%r8, %rdi
	addq	%r12, %rdi
	cvtsi2sd	%rdi, %xmm0
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	incl	%r13d
	addq	160(%rsp), %rbx                 # 8-byte Folded Reload
	xorl	%r14d, %r14d
	leaq	288(%rsp), %r12
	.p2align	4, 0x90
.LBB17_107:                             # %for.body1005
                                        #   Parent Loop BB17_104 Depth=1
                                        #     Parent Loop BB17_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorps	%xmm0, %xmm0
	cvtsi2sdq	(%rbx,%r14,8), %xmm0
	mulsd	.LCPI17_10(%rip), %xmm0
	divsd	8(%rsp), %xmm0                  # 8-byte Folded Reload
	movl	$.L.str.31, %esi
	movq	%r12, %rdi
	movb	$1, %al
	callq	sprintf@PLT
	cltq
	addq	%rax, %r12
	incq	%r14
	cmpq	%r14, %r13
	jne	.LBB17_107
# %bb.108:                              # %for.cond.cleanup1004
                                        #   in Loop: Header=BB17_105 Depth=2
	movq	32(%rsp), %rax                  # 8-byte Reload
	movsbl	.L.str.46(%rax), %ecx
	movl	$.L.str.45, %edx
	movq	96(%rsp), %rdi                  # 8-byte Reload
	movl	$2, %esi
	movq	168(%rsp), %r8                  # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	leaq	288(%rsp), %r9
	xorl	%eax, %eax
	callq	x264_log@PLT
	movsd	.LCPI17_10(%rip), %xmm10        # xmm10 = [1.0E+2,0.0E+0]
	jmp	.LBB17_109
.LBB17_111:                             # %for.cond.cleanup958
	movq	96(%rsp), %r13                  # 8-byte Reload
	cmpl	$0, 480(%r13)
	movq	144(%rsp), %rbx                 # 8-byte Reload
	cvtsi2sd	%ebx, %xmm5
	je	.LBB17_113
# %bb.112:                              # %if.then1041
	movsd	27808(%r13), %xmm0              # xmm0 = mem[0],zero
	addsd	27792(%r13), %xmm0
	addsd	27800(%r13), %xmm0
	divsd	%xmm5, %xmm0
	movl	$.L.str.47, %edx
	movq	%r13, %rdi
	movl	$2, %esi
	movb	$1, %al
	movsd	%xmm5, 8(%rsp)                  # 8-byte Spill
	callq	x264_log@PLT
	movsd	8(%rsp), %xmm5                  # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	.LCPI17_10(%rip), %xmm10        # xmm10 = [1.0E+2,0.0E+0]
.LBB17_113:                             # %if.end1054
	cmpl	$0, 476(%r13)
	je	.LBB17_117
# %bb.114:                              # %if.then1059
	movsd	27688(%r13), %xmm4              # xmm4 = mem[0],zero
	addsd	27672(%r13), %xmm4
	addsd	27680(%r13), %xmm4
	divsd	%xmm5, %xmm4
	movsd	27728(%r13), %xmm1              # xmm1 = mem[0],zero
	addsd	27712(%r13), %xmm1
	addsd	27720(%r13), %xmm1
	divsd	%xmm5, %xmm1
	movsd	27768(%r13), %xmm2              # xmm2 = mem[0],zero
	addsd	27752(%r13), %xmm2
	addsd	27760(%r13), %xmm2
	divsd	%xmm5, %xmm2
	movsd	27648(%r13), %xmm3              # xmm3 = mem[0],zero
	addsd	27632(%r13), %xmm3
	addsd	27640(%r13), %xmm3
	divsd	%xmm5, %xmm3
	movq	27592(%r13), %rax
	addq	27608(%r13), %rax
	addq	27600(%r13), %rax
	movl	%ebx, %ecx
	imulq	152(%rsp), %rcx                 # 8-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	xorps	%xmm5, %xmm5
	cvtsi2sd	%rcx, %xmm5
	mulsd	.LCPI17_0(%rip), %xmm5
	divsd	%xmm5, %xmm0
	movsd	.LCPI17_2(%rip), %xmm5          # xmm5 = [1.0E-10,0.0E+0]
	ucomisd	%xmm0, %xmm5
	jae	.LBB17_116
# %bb.115:                              # %if.end.i1653
	movsd	%xmm4, 8(%rsp)                  # 8-byte Spill
	movsd	%xmm1, 64(%rsp)                 # 8-byte Spill
	movsd	%xmm2, 32(%rsp)                 # 8-byte Spill
	movsd	%xmm3, 24(%rsp)                 # 8-byte Spill
	callq	log10@PLT
	movsd	24(%rsp), %xmm3                 # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	32(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	64(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	8(%rsp), %xmm4                  # 8-byte Reload
                                        # xmm4 = mem[0],zero
	mulsd	.LCPI17_3(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	xorps	%xmm10, %xmm10
	cvtss2sd	%xmm0, %xmm10
.LBB17_116:                             # %x264_psnr.exit1657
	movss	60(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm5, %xmm5
	cvtss2sd	%xmm0, %xmm5
	movl	$.L.str.48, %edx
	movq	%r13, %rdi
	movl	$2, %esi
	movapd	%xmm4, %xmm0
	movapd	%xmm10, %xmm4
	movb	$6, %al
	callq	x264_log@PLT
	jmp	.LBB17_118
.LBB17_117:                             # %if.else1128
	movss	60(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.49, %edx
	movq	%r13, %rdi
	movl	$2, %esi
	movb	$1, %al
	callq	x264_log@PLT
.LBB17_118:                             # %if.end1131
	movq	%r13, %rdi
	callq	x264_ratecontrol_delete@PLT
	movq	568(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB17_120
# %bb.119:                              # %if.then1134
	callq	free@PLT
.LBB17_120:                             # %if.end1138
	movq	584(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB17_122
# %bb.121:                              # %if.then1142
	callq	free@PLT
.LBB17_122:                             # %if.end1146
	movq	%r13, %rdi
	callq	x264_cqm_delete@PLT
	movq	1832(%r13), %rdi
	callq	x264_free@PLT
	movq	%r13, %rdi
	callq	x264_analyse_free_costs@PLT
	cmpl	$2, 1852(%r13)
	jl	.LBB17_124
# %bb.123:                              # %if.then1150
	movslq	1744(%r13), %rax
	movq	704(%r13,%rax,8), %r13
.LBB17_124:                             # %if.end1155
	movq	14424(%r13), %rdi
	callq	x264_frame_delete_list@PLT
	movq	14432(%r13), %rdi
	callq	x264_frame_delete_list@PLT
	movq	14416(%r13), %rdi
	callq	x264_frame_delete_list@PLT
	movq	14440(%r13), %rdi
	callq	x264_frame_delete_list@PLT
	movq	704(%r13), %rbx
	movslq	4(%rbx), %r14
	testq	%r14, %r14
	jg	.LBB17_125
.LBB17_137:                             # %for.cond.cleanup1172
	addq	$488, %rsp                      # imm = 0x1E8
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
	.p2align	4, 0x90
.LBB17_135:                             # %if.end1204
                                        #   in Loop: Header=BB17_125 Depth=1
	.cfi_def_cfa_offset 544
	movq	704(%rbx,%r15,8), %rdi
	callq	x264_macroblock_cache_free@PLT
.LBB17_136:                             # %if.end1208
                                        #   in Loop: Header=BB17_125 Depth=1
	movq	704(%rbx,%r15,8), %rdi
	xorl	%esi, %esi
	callq	x264_macroblock_thread_free@PLT
	movq	704(%rbx,%r15,8), %rax
	movq	1784(%rax), %rdi
	callq	x264_free@PLT
	movq	704(%rbx,%r15,8), %rax
	movq	1768(%rax), %rdi
	callq	x264_free@PLT
	movq	704(%rbx,%r15,8), %rdi
	callq	x264_free@PLT
	cmpq	$1, %r14
	movq	%r15, %r14
	jle	.LBB17_137
.LBB17_125:                             # %for.body1173
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_129 Depth 2
	leaq	-1(%r14), %r15
	cmpl	$0, 8(%rbx)
	je	.LBB17_127
# %bb.126:                              # %for.body1173
                                        #   in Loop: Header=BB17_125 Depth=1
	testq	%r15, %r15
	jne	.LBB17_136
.LBB17_127:                             # %if.then1179
                                        #   in Loop: Header=BB17_125 Depth=1
	movq	704(%rbx,%r15,8), %r12
	movq	14448(%r12), %rax
	testq	%rax, %rax
	je	.LBB17_133
# %bb.128:                              # %for.body1187.preheader
                                        #   in Loop: Header=BB17_125 Depth=1
	addq	$14456, %r12                    # imm = 0x3878
	jmp	.LBB17_129
	.p2align	4, 0x90
.LBB17_131:                             # %for.inc1193
                                        #   in Loop: Header=BB17_129 Depth=2
	movq	(%r12), %rax
	addq	$8, %r12
	testq	%rax, %rax
	je	.LBB17_132
.LBB17_129:                             # %for.body1187
                                        #   Parent Loop BB17_125 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decl	15600(%rax)
	movq	-8(%r12), %rdi
	cmpl	$0, 15600(%rdi)
	jne	.LBB17_131
# %bb.130:                              # %if.then1191
                                        #   in Loop: Header=BB17_129 Depth=2
	callq	x264_frame_delete@PLT
	jmp	.LBB17_131
	.p2align	4, 0x90
.LBB17_132:                             # %for.end1194.loopexit
                                        #   in Loop: Header=BB17_125 Depth=1
	movq	704(%rbx,%r15,8), %r12
.LBB17_133:                             # %for.end1194
                                        #   in Loop: Header=BB17_125 Depth=1
	movq	14688(%r12), %rax
	decl	15600(%rax)
	movq	14688(%r12), %rdi
	cmpl	$0, 15600(%rdi)
	jne	.LBB17_135
# %bb.134:                              # %if.then1203
                                        #   in Loop: Header=BB17_125 Depth=1
	callq	x264_frame_delete@PLT
	jmp	.LBB17_135
.Lfunc_end17:
	.size	x264_encoder_close, .Lfunc_end17-x264_encoder_close
	.cfi_endproc
                                        # -- End function
	.globl	x264_encoder_delayed_frames     # -- Begin function x264_encoder_delayed_frames
	.p2align	4, 0x90
	.type	x264_encoder_delayed_frames,@function
x264_encoder_delayed_frames:            # @x264_encoder_delayed_frames
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movslq	1852(%rdi), %rcx
	xorl	%eax, %eax
	cmpq	$2, %rcx
	jl	.LBB18_11
# %bb.1:                                # %for.cond.preheader
	cmpl	$3, %ecx
	ja	.LBB18_7
# %bb.2:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.LBB18_3
.LBB18_7:                               # %vector.ph
	movl	%ecx, %edx
	andl	$2147483644, %edx               # imm = 0x7FFFFFFC
	movl	%ecx, %esi
	shrl	$2, %esi
	andl	$536870911, %esi                # imm = 0x1FFFFFFF
	shlq	$5, %rsi
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	xorl	%r8d, %r8d
	xorl	%r11d, %r11d
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB18_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	704(%rdi,%r9), %rbx
	movq	712(%rdi,%r9), %r14
	movq	720(%rdi,%r9), %r15
	movq	728(%rdi,%r9), %r12
	addl	1740(%rbx), %r10d
	addl	1740(%r14), %r8d
	addl	1740(%r15), %r11d
	addl	1740(%r12), %eax
	addq	$32, %r9
	cmpq	%r9, %rsi
	jne	.LBB18_8
# %bb.9:                                # %middle.block
	addl	%r10d, %r8d
	addl	%r11d, %eax
	addl	%r8d, %eax
	cmpq	%rcx, %rdx
	je	.LBB18_10
.LBB18_3:                               # %for.body.preheader
	movq	%rcx, %r8
	movq	%rdx, %rsi
	andq	$3, %r8
	je	.LBB18_5
	.p2align	4, 0x90
.LBB18_4:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	704(%rdi,%rsi,8), %r9
	addl	1740(%r9), %eax
	incq	%rsi
	decq	%r8
	jne	.LBB18_4
.LBB18_5:                               # %for.body.prol.loopexit
	subq	%rcx, %rdx
	cmpq	$-4, %rdx
	ja	.LBB18_10
	.p2align	4, 0x90
.LBB18_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	704(%rdi,%rsi,8), %rdx
	movq	712(%rdi,%rsi,8), %r8
	addl	1740(%rdx), %eax
	addl	1740(%r8), %eax
	movq	720(%rdi,%rsi,8), %rdx
	addl	1740(%rdx), %eax
	movq	728(%rdi,%rsi,8), %rdx
	addl	1740(%rdx), %eax
	addq	$4, %rsi
	cmpq	%rsi, %rcx
	jne	.LBB18_6
.LBB18_10:                              # %for.cond.cleanup
	movslq	1744(%rdi), %rcx
	movq	704(%rdi,%rcx,8), %rdi
.LBB18_11:                              # %if.end
	movq	14416(%rdi), %rcx
	cmpq	$0, (%rcx)
	je	.LBB18_14
# %bb.12:                               # %for.body11.preheader
	addq	$8, %rcx
	.p2align	4, 0x90
.LBB18_13:                              # %for.body11
                                        # =>This Inner Loop Header: Depth=1
	incl	%eax
	cmpq	$0, (%rcx)
	leaq	8(%rcx), %rcx
	jne	.LBB18_13
.LBB18_14:                              # %for.cond.cleanup10
	movq	33328(%rdi), %rcx
	addl	36(%rcx), %eax
	addl	68(%rcx), %eax
	addl	100(%rcx), %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end18:
	.size	x264_encoder_delayed_frames, .Lfunc_end18-x264_encoder_delayed_frames
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_slice_header_init
	.type	x264_slice_header_init,@function
x264_slice_header_init:                 # @x264_slice_header_init
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rcx, %rax
	movq	%rdx, (%rsi)
	movq	%rcx, 8(%rsi)
	movl	$0, 20(%rsi)
	movl	16368(%rdi), %ecx
	decl	%ecx
	movl	%ecx, 24(%rsi)
	movl	(%rax), %ecx
	movl	%ecx, 28(%rsi)
	movl	%r9d, 32(%rsi)
	movl	136(%rdi), %ecx
	movl	%ecx, 36(%rsi)
	movq	$0, 40(%rsi)
	movl	%r8d, 48(%rsi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 52(%rsi)
	movl	$0, 68(%rsi)
	movl	404(%rdi), %ecx
	cmpl	$3, %ecx
	jne	.LBB19_1
# %bb.2:                                # %land.lhs.true
	cmpl	$0, 100(%rdi)
	je	.LBB19_3
# %bb.4:                                # %land.rhs
	movb	$1, %r8b
	cmpl	$0, 560(%rdi)
	jne	.LBB19_6
# %bb.5:                                # %lor.rhs
	cmpl	$0, 576(%rdi)
	sete	%r8b
	movzbl	%r8b, %r10d
	movl	%r10d, 25820(%rdi)
	cmpl	$0, 25816(%rdi)
	jne	.LBB19_14
	jmp	.LBB19_7
.LBB19_1:
	xorl	%r8d, %r8d
.LBB19_6:                               # %land.end
	movzbl	%r8b, %r10d
	movl	%r10d, 25820(%rdi)
	cmpl	$0, 25816(%rdi)
	jne	.LBB19_14
.LBB19_7:                               # %land.lhs.true18
	cmpl	$1, 16(%rsi)
	jne	.LBB19_14
# %bb.8:                                # %if.then
	movq	14704(%rdi), %r10
	movq	14864(%rdi), %r11
	movl	96(%r11), %r11d
	cmpl	(%r10), %r11d
	jne	.LBB19_12
# %bb.9:                                # %if.then24
	testb	%r8b, %r8b
	je	.LBB19_11
# %bb.10:                               # %if.then28
	movl	30372(%rdi), %ecx
	cmpl	30368(%rdi), %ecx
	setg	%cl
	jmp	.LBB19_13
.LBB19_3:
	xorl	%r8d, %r8d
	movzbl	%r8b, %r10d
	movl	%r10d, 25820(%rdi)
	cmpl	$0, 25816(%rdi)
	jne	.LBB19_14
	jmp	.LBB19_7
.LBB19_12:                              # %if.else39
	movl	$0, 25820(%rdi)
	movb	$1, %cl
	jmp	.LBB19_13
.LBB19_11:                              # %if.else
	cmpl	$1, %ecx
	sete	%cl
.LBB19_13:                              # %if.end44.sink.split
	movzbl	%cl, %ecx
	movl	%ecx, 72(%rsi)
.LBB19_14:                              # %if.end44
	movl	8(%rsp), %r8d
	movabsq	$4294967296, %rcx               # imm = 0x100000000
	movq	%rcx, 76(%rsi)
	movl	$1, 84(%rsi)
	movl	15016(%rdi), %ecx
	movl	%ecx, 88(%rsi)
	movl	15020(%rdi), %r10d
	movl	%r10d, 92(%rsi)
	testl	%ecx, %ecx
	je	.LBB19_18
# %bb.15:                               # %for.cond.preheader
	cmpl	$0, 14696(%rdi)
	jle	.LBB19_18
# %bb.16:                               # %for.body.lr.ph
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB19_17:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	14704(%rdi,%r10,8), %rcx
	movl	68(%rcx), %ecx
	subl	%r9d, %ecx
	xorl	%r9d, %r9d
	testl	%ecx, %ecx
	setg	%r9b
	movl	%ecx, %r11d
	negl	%r11d
	cmovsl	%ecx, %r11d
	movl	%r9d, 96(%rsi,%r10,8)
	addl	$2147483647, %r11d              # imm = 0x7FFFFFFF
	movzbl	24(%rdx), %ecx
	movl	$-1, %r9d
	shll	%cl, %r9d
	notl	%r9d
	andl	%r11d, %r9d
	movl	%r9d, 100(%rsi,%r10,8)
	movq	14704(%rdi,%r10,8), %rcx
	movl	68(%rcx), %r9d
	incq	%r10
	movslq	14696(%rdi), %rcx
	cmpq	%rcx, %r10
	jl	.LBB19_17
.LBB19_18:                              # %if.end72
	movl	132(%rdi), %ecx
	movl	%ecx, 6632(%rsi)
	movl	%r8d, 6636(%rsi)
	movl	%r8d, %ecx
	subl	36(%rax), %ecx
	movl	%ecx, 6640(%rsi)
	movq	$0, 6644(%rsi)
	movl	$1, %eax
	cmpl	$0, 116(%rdi)
	je	.LBB19_22
# %bb.19:                               # %land.lhs.true81
	movl	120(%rdi), %edx
	movl	124(%rdi), %ecx
	cmpl	%ecx, %edx
	cmovll	%edx, %ecx
	cmpl	$0, 25808(%rdi)
	jne	.LBB19_21
# %bb.20:                               # %land.lhs.true81
	leal	(%r8,%rcx,2), %ecx
	cmpl	$16, %ecx
	jl	.LBB19_22
.LBB19_21:                              # %if.then86
	xorl	%eax, %eax
	cmpl	$0, 8(%rdi)
	setne	%al
	addl	%eax, %eax
.LBB19_22:                              # %if.end91
	movl	%eax, 6652(%rsi)
	movl	120(%rdi), %eax
	addl	%eax, %eax
	movl	%eax, 6656(%rsi)
	movl	124(%rdi), %eax
	addl	%eax, %eax
	movl	%eax, 6660(%rsi)
	retq
.Lfunc_end19:
	.size	x264_slice_header_init, .Lfunc_end19-x264_slice_header_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_fdec_filter_row
	.type	x264_fdec_filter_row,@function
x264_fdec_filter_row:                   # @x264_fdec_filter_row
	.cfi_startproc
# %bb.0:                                # %entry
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
                                        # kill: def $esi killed $esi def $rsi
	movq	%rdi, %rbx
	movq	14688(%rdi), %rax
	movl	72(%rax), %r12d
	movl	13884(%rdi), %edi
	movl	7268(%rbx), %ecx
	movl	$-1, %ebp
	shll	%cl, %ebp
	movl	1748(%rbx), %r14d
	addl	%esi, %ebp
	movb	$1, %al
	testl	%r12d, %r12d
	jne	.LBB20_2
# %bb.1:                                # %lor.rhs
	cmpq	$0, 376(%rbx)
	setne	%al
.LBB20_2:                               # %lor.end
	cmpl	$1, %edi
	setne	%r13b
	cmpl	$0, 8(%rbx)
	sete	%dil
	testl	%ebp, %ebp
	sete	%r11b
	cmpl	%r14d, %ebp
	setne	%r8b
	setl	%r9b
	testl	%edx, %edx
	setne	%r15b
	testl	%esi, %ecx
	setne	%r10b
	orb	%r9b, %r10b
	jne	.LBB20_25
# %bb.3:                                # %if.end26
	movl	%r12d, 40(%rsp)                 # 4-byte Spill
	movl	%r14d, 32(%rsp)                 # 4-byte Spill
	movl	%ebp, 36(%rsp)                  # 4-byte Spill
	movl	1752(%rbx), %r9d
	andb	%al, %r13b
	orb	%dil, %r11b
	orb	%r8b, %r15b
	orb	%r11b, %r15b
	movb	%r15b, 31(%rsp)                 # 1-byte Spill
	andb	%r15b, %r13b
	movb	%r13b, 30(%rsp)                 # 1-byte Spill
	testl	%edx, %edx
	setne	%al
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	movl	%r9d, 44(%rsp)                  # 4-byte Spill
	cmpl	%esi, %r9d
	setne	%dl
	andb	%al, %dl
	testl	%ecx, %ecx
	setns	%al
	andb	%dl, %al
	cmpb	$1, %al
	jne	.LBB20_6
# %bb.4:                                # %for.cond35.preheader.lr.ph
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	%eax, %r14d
	shll	$4, %r14d
	leal	(,%rax,8), %r13d
	leaq	31200(%rbx), %rbp
	movq	$-1, %r15
	.p2align	4, 0x90
.LBB20_5:                               # %for.cond35.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	14688(%rbx), %rax
	leal	(%r14,%r15), %edx
	subl	%ecx, %edx
	movslq	104(%rax), %rcx
	movslq	%edx, %rsi
	imulq	%rcx, %rsi
	addq	152(%rax), %rsi
	movq	-16(%rbp), %rdi
	movq	3200(%rbx), %rax
	movslq	1084(%rax), %rdx
	shlq	$4, %rdx
	callq	memcpy@PLT
	movq	14688(%rbx), %rax
	leal	(%r15,%r13), %r12d
	movl	%r12d, %ecx
	subl	7268(%rbx), %ecx
	movslq	108(%rax), %rdx
	movslq	%ecx, %rsi
	imulq	%rdx, %rsi
	addq	160(%rax), %rsi
	movq	-8(%rbp), %rdi
	movq	3200(%rbx), %rax
	movslq	1084(%rax), %rdx
	shlq	$3, %rdx
	callq	memcpy@PLT
	movq	14688(%rbx), %rax
	subl	7268(%rbx), %r12d
	movslq	112(%rax), %rcx
	movslq	%r12d, %rsi
	imulq	%rcx, %rsi
	addq	168(%rax), %rsi
	movq	(%rbp), %rdi
	movq	3200(%rbx), %rax
	movslq	1084(%rax), %rdx
	shlq	$3, %rdx
	callq	memcpy@PLT
	movslq	7268(%rbx), %rcx
	incq	%r15
	addq	$24, %rbp
	cmpq	%rcx, %r15
	jl	.LBB20_5
.LBB20_6:                               # %if.end66
	movq	48(%rsp), %r12                  # 8-byte Reload
	movl	36(%rsp), %ebp                  # 4-byte Reload
	cmpl	%r12d, %ebp
	setl	%al
	movzbl	30(%rsp), %ecx                  # 1-byte Folded Reload
	andb	%al, %cl
	cmpb	$1, %cl
	jne	.LBB20_9
# %bb.7:                                # %for.body73.preheader
	movl	%ebp, %r15d
	.p2align	4, 0x90
.LBB20_8:                               # %for.body73
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	x264_frame_deblock_row@PLT
	movzbl	7268(%rbx), %ecx
	movl	$1, %eax
	shll	%cl, %eax
	addl	%eax, %r15d
	cmpl	%r12d, %r15d
	jl	.LBB20_8
.LBB20_9:                               # %if.end80
	cmpl	$0, 40(%rsp)                    # 4-byte Folded Reload
	je	.LBB20_12
# %bb.10:                               # %if.then82
	movq	3200(%rbx), %rax
	xorl	%r15d, %r15d
	cmpl	%r12d, 1088(%rax)
	sete	%r15b
	movq	14688(%rbx), %rsi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	movl	%r15d, %ecx
	callq	x264_frame_expand_border@PLT
	cmpl	$0, 428(%rbx)
	je	.LBB20_12
# %bb.11:                               # %if.then89
	movq	14688(%rbx), %rsi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	movl	%r15d, %ecx
	callq	x264_frame_filter@PLT
	movq	14688(%rbx), %rsi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	movl	%r15d, %ecx
	callq	x264_frame_expand_border_filtered@PLT
.LBB20_12:                              # %if.end93
	cmpl	$2, 1852(%rbx)
	movl	32(%rsp), %r15d                 # 4-byte Reload
	movl	44(%rsp), %r14d                 # 4-byte Reload
	jl	.LBB20_17
# %bb.13:                               # %land.lhs.true96
	movq	14688(%rbx), %rdi
	cmpl	$0, 72(%rdi)
	je	.LBB20_17
# %bb.14:                               # %if.then100
	movl	%r12d, %eax
	shll	$4, %eax
	movl	$10000, %esi                    # imm = 0x2710
	cmpl	%r12d, %r14d
	je	.LBB20_16
# %bb.15:                               # %cond.false105
	movzbl	7268(%rbx), %ecx
	movl	$-24, %esi
	shll	%cl, %esi
.LBB20_16:                              # %cond.end110
	addl	%eax, %esi
	callq	x264_frame_cond_broadcast@PLT
.LBB20_17:                              # %if.end113
	xorl	%eax, %eax
	cmpl	%r15d, %ebp
	sete	%cl
	cmpl	%r12d, %r14d
	je	.LBB20_18
# %bb.19:                               # %cond.false135
	shll	$4, %r12d
	addl	$-8, %r12d
	cmpb	$0, 31(%rsp)                    # 1-byte Folded Reload
	jne	.LBB20_21
	jmp	.LBB20_25
.LBB20_18:                              # %cond.true121
	movl	1752(%rbx), %r12d
	shll	$4, %r12d
	movl	24(%rbx), %edx
	cmpl	%edx, %r12d
	cmovgel	%edx, %r12d
	cmpb	$0, 31(%rsp)                    # 1-byte Folded Reload
	je	.LBB20_25
.LBB20_21:                              # %if.then141
	movl	%ebp, %edx
	shll	$4, %edx
	movb	%cl, %al
	leal	(%rdx,%rax,8), %r14d
	addl	$-8, %r14d
	cmpl	$0, 476(%rbx)
	je	.LBB20_23
# %bb.22:                               # %for.cond147.preheader
	leaq	31560(%rbx), %r15
	movl	%r12d, %ebp
	subl	%r14d, %ebp
	movq	14688(%rbx), %rax
	movl	104(%rax), %edx
	movl	%edx, %ecx
	imull	%r14d, %ecx
	movslq	%ecx, %rsi
	addq	152(%rax), %rsi
	movq	14680(%rbx), %rax
	movl	104(%rax), %r8d
	movl	%r8d, %ecx
	imull	%r14d, %ecx
	movslq	%ecx, %rcx
	addq	152(%rax), %rcx
	movl	20(%rbx), %r9d
	movl	%ebp, (%rsp)
	movq	%r15, %rdi
	callq	x264_pixel_ssd_wxh@PLT
	addq	%rax, 27384(%rbx)
	movq	14688(%rbx), %rax
	movl	%r14d, %r13d
	sarl	%r13d
	movl	108(%rax), %edx
	movl	%edx, %ecx
	imull	%r13d, %ecx
	movslq	%ecx, %rsi
	addq	160(%rax), %rsi
	movq	14680(%rbx), %rax
	movl	108(%rax), %r8d
	movl	%r8d, %ecx
	imull	%r13d, %ecx
	movslq	%ecx, %rcx
	addq	160(%rax), %rcx
	movl	20(%rbx), %r9d
	sarl	%r9d
	sarl	%ebp
	movl	%ebp, (%rsp)
	movq	%r15, %rdi
	callq	x264_pixel_ssd_wxh@PLT
	addq	%rax, 27392(%rbx)
	movq	14688(%rbx), %rax
	movl	112(%rax), %edx
	movl	%edx, %ecx
	imull	%r13d, %ecx
	movslq	%ecx, %rsi
	addq	168(%rax), %rsi
	movq	14680(%rbx), %rax
	movl	112(%rax), %r8d
	imull	%r8d, %r13d
	movslq	%r13d, %rcx
	addq	168(%rax), %rcx
	movl	20(%rbx), %r9d
	sarl	%r9d
	movl	%ebp, (%rsp)
	movl	36(%rsp), %ebp                  # 4-byte Reload
	movq	%r15, %rdi
	movl	32(%rsp), %r15d                 # 4-byte Reload
	callq	x264_pixel_ssd_wxh@PLT
	addq	%rax, 27400(%rbx)
.LBB20_23:                              # %if.end213
	cmpl	$0, 480(%rbx)
	je	.LBB20_25
# %bb.24:                               # %if.then217
	xorl	%eax, %eax
	cmpl	%r15d, %ebp
	sete	%al
	leal	-6(%r14,%rax,8), %eax
	leaq	31560(%rbx), %rdi
	movq	14688(%rbx), %rcx
	movq	152(%rcx), %rsi
	movl	104(%rcx), %edx
	movl	%edx, %ecx
	imull	%eax, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	addq	$2, %rsi
	movq	14680(%rbx), %rcx
	movq	152(%rcx), %r9
	movl	104(%rcx), %r8d
	movl	%r8d, %ecx
	imull	%eax, %ecx
	movslq	%ecx, %rcx
	addq	%r9, %rcx
	addq	$2, %rcx
	movl	20(%rbx), %r9d
	addl	$-2, %r9d
	subl	%eax, %r12d
	movq	31176(%rbx), %rax
	movq	%rax, 8(%rsp)
	movl	%r12d, (%rsp)
	callq	x264_pixel_ssim_wxh@PLT
	cvtss2sd	%xmm0, %xmm0
	addsd	27408(%rbx), %xmm0
	movsd	%xmm0, 27408(%rbx)
.LBB20_25:                              # %cleanup
	addq	$56, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end20:
	.size	x264_fdec_filter_row, .Lfunc_end20-x264_fdec_filter_row
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"DTS compresion changed timebase: %u/%u -> %u/%lu\n"
	.size	.L.str, 50

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Effective timebase denominator %lu exceeds H.264 maximum\n"
	.size	.L.str.1, 58

	.type	i_chroma_qp_table,@object       # @i_chroma_qp_table
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
i_chroma_qp_table:
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\035\036\037  !\"\"##$$%%%&&&''''''''''''''''"
	.size	i_chroma_qp_table, 76

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"using cpu capabilities:"
	.size	.L.str.2, 24

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"SSE2"
	.size	.L.str.3, 5

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"SSE3"
	.size	.L.str.4, 5

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"SSE4.1"
	.size	.L.str.5, 7

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	" %s"
	.size	.L.str.6, 4

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	" none!"
	.size	.L.str.7, 7

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"%s\n"
	.size	.L.str.8, 4

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"MV cost test failed: x264 has been miscompiled!\n"
	.size	.L.str.9, 49

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"CLZ test failed: x264 has been miscompiled!\n"
	.size	.L.str.10, 45

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Are you attempting to run an SSE4a-targeted build on a CPU that\n"
	.size	.L.str.11, 65

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"doesn't support it?\n"
	.size	.L.str.12, 21

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"HRD bitrate: %i bits/sec\n"
	.size	.L.str.13, 26

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"CPB size: %i bits\n"
	.size	.L.str.14, 19

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"w"
	.size	.L.str.15, 2

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"dump_yuv: can't write to %s\n"
	.size	.L.str.16, 29

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"profile %s, level %d.%d\n"
	.size	.L.str.18, 25

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Baseline"
	.size	.L.str.19, 9

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Main"
	.size	.L.str.20, 5

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"High"
	.size	.L.str.21, 5

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"High 4:4:4 Predictive"
	.size	.L.str.22, 22

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"non-strictly-monotonic PTS\n"
	.size	.L.str.23, 28

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"P"
	.size	.L.str.24, 2

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"B"
	.size	.L.str.25, 2

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"I"
	.size	.L.str.26, 2

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"SP"
	.size	.L.str.27, 3

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"SI"
	.size	.L.str.28, 3

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"frame %s:%-5d Avg QP:%5.2f  size:%6.0f  PSNR Mean Y:%5.2f U:%5.2f V:%5.2f Avg:%5.2f Global:%5.2f\n"
	.size	.L.str.29, 98

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"frame %s:%-5d Avg QP:%5.2f  size:%6.0f\n"
	.size	.L.str.30, 40

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	" %4.1f%%"
	.size	.L.str.31, 9

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"consecutive B-frames:%s\n"
	.size	.L.str.32, 25

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"mb I  %s\n"
	.size	.L.str.33, 10

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"mb P  %s  P16..4: %4.1f%% %4.1f%% %4.1f%% %4.1f%% %4.1f%%    skip:%4.1f%%\n"
	.size	.L.str.34, 75

	.type	x264_mb_type_list_table,@object # @x264_mb_type_list_table
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_mb_type_list_table:
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	2,1
	.zero	2
	.zero	4
	.zero	2,1
	.zero	2
	.zero	4
	.zero	2,1
	.zero	2
	.asciz	"\001"
	.ascii	"\000\001"
	.zero	2,1
	.ascii	"\000\001"
	.ascii	"\000\001"
	.asciz	"\001"
	.zero	2
	.zero	2,1
	.ascii	"\000\001"
	.zero	2,1
	.zero	2,1
	.asciz	"\001"
	.asciz	"\001"
	.zero	2,1
	.zero	4,1
	.zero	4
	.zero	4
	.size	x264_mb_type_list_table, 76

	.type	.L.str.35,@object               # @.str.35
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.35:
	.asciz	"mb B  %s  B16..8: %4.1f%% %4.1f%% %4.1f%%  direct:%4.1f%%  skip:%4.1f%%  L0:%4.1f%% L1:%4.1f%% BI:%4.1f%%\n"
	.size	.L.str.35, 107

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	" inter:%.1f%%"
	.size	.L.str.36, 14

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"8x8 transform intra:%.1f%%%s\n"
	.size	.L.str.37, 30

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"direct mvs  spatial:%.1f%% temporal:%.1f%%\n"
	.size	.L.str.38, 44

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	" inter: %.1f%% %.1f%% %.1f%%"
	.size	.L.str.39, 29

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"coded y,uvDC,uvAC intra: %.1f%% %.1f%% %.1f%%%s\n"
	.size	.L.str.40, 49

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"i16 v,h,dc,p: %2.0f%% %2.0f%% %2.0f%% %2.0f%%\n"
	.size	.L.str.41, 47

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"i%d v,h,dc,ddl,ddr,vr,hd,vl,hu: %2.0f%% %2.0f%% %2.0f%% %2.0f%% %2.0f%% %2.0f%% %2.0f%% %2.0f%% %2.0f%%\n"
	.size	.L.str.42, 105

	.type	x264_mb_pred_mode8x8c_fix,@object # @x264_mb_pred_mode8x8c_fix
	.section	.rodata,"a",@progbits
x264_mb_pred_mode8x8c_fix:
	.asciz	"\000\001\002\003\000\000"
	.size	x264_mb_pred_mode8x8c_fix, 7

	.type	.L.str.43,@object               # @.str.43
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.43:
	.asciz	"i8c dc,h,v,p: %2.0f%% %2.0f%% %2.0f%% %2.0f%%\n"
	.size	.L.str.43, 47

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"Weighted P-Frames: Y:%.1f%%\n"
	.size	.L.str.44, 29

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"ref %c L%d:%s\n"
	.size	.L.str.45, 15

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"PB"
	.size	.L.str.46, 3

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"SSIM Mean Y:%.7f\n"
	.size	.L.str.47, 18

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"PSNR Mean Y:%6.3f U:%6.3f V:%6.3f Avg:%6.3f Global:%6.3f kb/s:%.2f\n"
	.size	.L.str.48, 68

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"kb/s:%.2f\n"
	.size	.L.str.49, 11

	.type	tga_dump_rate,@object           # @tga_dump_rate
	.bss
	.globl	tga_dump_rate
	.p2align	2, 0x0
tga_dump_rate:
	.long	0                               # 0x0
	.size	tga_dump_rate, 4

	.type	.L.str.50,@object               # @.str.50
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.50:
	.asciz	"invalid width x height (%dx%d)\n"
	.size	.L.str.50, 32

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"width or height not divisible by 2 (%dx%d)\n"
	.size	.L.str.51, 44

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"invalid CSP (only I420/YV12 supported)\n"
	.size	.L.str.52, 40

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"not compiled with pthread support!\n"
	.size	.L.str.53, 36

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"interlace + me=esa is not implemented\n"
	.size	.L.str.54, 39

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"interlace + weightp is not implemented\n"
	.size	.L.str.55, 40

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"broken ffmpeg default settings detected\n"
	.size	.L.str.56, 41

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"use an encoding preset (vpre)\n"
	.size	.L.str.57, 31

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"no ratecontrol method specified\n"
	.size	.L.str.58, 33

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"VBV is incompatible with constant QP, ignored.\n"
	.size	.L.str.59, 48

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"VBV maxrate unspecified, assuming CBR\n"
	.size	.L.str.60, 39

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"VBV bufsize set but maxrate unspecified, ignored\n"
	.size	.L.str.61, 50

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"max bitrate less than average bitrate, assuming CBR\n"
	.size	.L.str.62, 53

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"VBV maxrate specified, but no bufsize, ignored\n"
	.size	.L.str.63, 48

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"interlaced + slice-max-size is not implemented\n"
	.size	.L.str.64, 48

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"interlaced + slice-max-mbs is not implemented\n"
	.size	.L.str.65, 47

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"subme=0 + direct=temporal is not supported\n"
	.size	.L.str.66, 44

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"b-pyramid normal + intra-refresh is not supported\n"
	.size	.L.str.67, 51

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"ref > 1 + intra-refresh is not supported\n"
	.size	.L.str.68, 42

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"invalid level_idc: %d\n"
	.size	.L.str.69, 23

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"using mv_range_thread = %d\n"
	.size	.L.str.70, 28

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"NAL HRD parameters require VBV parameters\n"
	.size	.L.str.71, 43

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"CBR HRD requires constant bitrate\n"
	.size	.L.str.72, 35

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"cannot create valid sample aspect ratio\n"
	.size	.L.str.73, 41

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"using SAR=%d/%d\n"
	.size	.L.str.74, 17

	.type	x264_ue_size_tab,@object        # @x264_ue_size_tab
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_ue_size_tab:
	.ascii	"\001\001\003\003\005\005\005\005\007\007\007\007\007\007\007\007\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017"
	.size	x264_ue_size_tab, 256

	.type	.L.str.75,@object               # @.str.75
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.75:
	.asciz	"invalid DTS: PTS is less than DTS\n"
	.size	.L.str.75, 35

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	" PSNR Y:%5.2f U:%5.2f V:%5.2f"
	.size	.L.str.76, 30

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	" SSIM Y:%.5f"
	.size	.L.str.77, 13

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"frame=%4d QP=%.2f NAL=%d Slice:%c Poc:%-3d I:%-4d P:%-4d SKIP:%-4d size=%d bytes%s\n"
	.size	.L.str.78, 84

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"frame_%d.yuv"
	.size	.L.str.79, 13

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"wb"
	.size	.L.str.80, 3

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"r+b"
	.size	.L.str.81, 4

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"I16..4%s: %4.1f%% %4.1f%% %4.1f%%"
	.size	.L.str.82, 34

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"..PCM"
	.size	.L.str.83, 6

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.zero	1
	.size	.L.str.84, 1

	.type	.Lswitch.table.x264_encoder_encode,@object # @switch.table.x264_encoder_encode
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.Lswitch.table.x264_encoder_encode:
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	0                               # 0x0
	.size	.Lswitch.table.x264_encoder_encode, 24

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
