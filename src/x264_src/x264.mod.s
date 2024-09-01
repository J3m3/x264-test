	.text
	.file	"x264.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI0_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI0_1:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI0_2:
	.quad	0x408f400000000000              # double 1000
.LCPI0_3:
	.quad	0x412e848000000000              # double 1.0E+6
.LCPI0_4:
	.quad	0x4020000000000000              # double 8
.LCPI0_5:
	.quad	0x0000000000000000              # double 0
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
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
	subq	$1768, %rsp                     # imm = 0x6E8
	.cfi_def_cfa_offset 1824
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movl	%edi, %ebp
	leaq	1064(%rsp), %rdi
	callq	x264_param_default@PLT
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, 64(%rsp)
	movdqa	%xmm0, 96(%rsp)
	movdqa	%xmm0, 80(%rsp)
	movq	$0, 112(%rsp)
	movdqa	%xmm0, 144(%rsp)
	movdqa	%xmm0, 160(%rsp)
	movl	$1, 64(%rsp)
	movq	optind@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
	xorl	%ebx, %ebx
	movq	optarg@GOTPCREL(%rip), %r13
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB0_1:                                # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$short_options, %edx
	movl	$long_options, %ecx
	movl	%ebp, %edi
	movq	%r15, %rsi
	xorl	%r8d, %r8d
	callq	getopt_long@PLT
	cmpl	$264, %eax                      # imm = 0x108
	jg	.LBB0_6
# %bb.2:                                # %for.cond.i
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpl	$-1, %eax
	je	.LBB0_10
# %bb.3:                                # %for.cond.i
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpl	$63, %eax
	jne	.LBB0_1
	jmp	.LBB0_4
	.p2align	4, 0x90
.LBB0_6:                                # %for.cond.i
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpl	$266, %eax                      # imm = 0x10A
	je	.LBB0_9
# %bb.7:                                # %for.cond.i
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpl	$265, %eax                      # imm = 0x109
	jne	.LBB0_1
# %bb.8:                                # %if.end3.thread.i
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	(%r13), %rbx
	jmp	.LBB0_1
.LBB0_9:                                # %if.then5.i
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	(%r13), %r14
	jmp	.LBB0_1
.LBB0_10:                               # %for.end.i
	testq	%rbx, %rbx
	je	.LBB0_12
# %bb.11:                               # %land.lhs.true.i
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	movl	%ecx, 40(%rsp)                  # 4-byte Spill
	jmp	.LBB0_13
.LBB0_12:
	movl	$1, 40(%rsp)                    # 4-byte Folded Spill
.LBB0_13:                               # %if.end13.i
	leaq	360(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	x264_param_default_preset@PLT
	testl	%eax, %eax
	js	.LBB0_4
# %bb.14:                               # %if.end17.i
	movq	optind@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
	movq	$0, 176(%rsp)                   # 8-byte Folded Spill
	movl	$.L.str.22, %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	leaq	24(%rsp), %rbx
	movl	$.L.str.22, %r14d
	movl	$0, 12(%rsp)                    # 4-byte Folded Spill
	movl	$0, 128(%rsp)                   # 4-byte Folded Spill
	movq	$0, 56(%rsp)                    # 8-byte Folded Spill
	movq	$0, 48(%rsp)                    # 8-byte Folded Spill
	movq	$0, 32(%rsp)                    # 8-byte Folded Spill
	jmp	.LBB0_17
.LBB0_15:                               # %cleanup114.thread.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	%ecx, 24(%rsp)
.LBB0_16:                               # %sw.epilog.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movslq	%ecx, %rax
	shlq	$5, %rax
	movq	long_options(%rax), %rsi
	movq	(%r13), %rdx
	leaq	360(%rsp), %rdi
	callq	x264_param_parse@PLT
	testl	%eax, %eax
	jne	.LBB0_90
	.p2align	4, 0x90
.LBB0_17:                               # %for.cond18.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_29 Depth 2
	movl	$-1, 24(%rsp)
	movl	$short_options, %edx
	movl	$long_options, %ecx
	movl	%ebp, %edi
	movq	%r15, %rsi
	movq	%rbx, %r8
	callq	getopt_long@PLT
                                        # kill: def $eax killed $eax def $rax
	leal	1(%rax), %ecx
	cmpl	$279, %ecx                      # imm = 0x117
	ja	.LBB0_26
# %bb.18:                               # %for.cond18.i
                                        #   in Loop: Header=BB0_17 Depth=1
	jmpq	*.LJTI0_0(,%rcx,8)
.LBB0_19:                               # %sw.bb49.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	(%r13), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB0_17
.LBB0_128:                              # %sw.bb92.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	(%r13), %rdi
	movl	$.L.str.6, %esi
	callq	fopen@PLT
	movq	%rax, 96(%rsp)
	testq	%rax, %rax
	jne	.LBB0_17
	jmp	.LBB0_129
.LBB0_20:                               # %sw.bb86.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	(%r13), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB0_17
.LBB0_21:                               # %sw.bb32.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	(%r13), %rdi
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol@PLT
	testl	%eax, %eax
	cmovgl	%eax, %r12d
	movl	%r12d, 396(%rsp)
	jmp	.LBB0_17
.LBB0_22:                               # %sw.bb28.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	(%r13), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol@PLT
	cmpl	$2, %eax
	movl	$1, %ecx
	cmovgel	%eax, %ecx
	movq	tga_dump_rate@GOTPCREL(%rip), %rax
	movl	%ecx, (%rax)
	jmp	.LBB0_17
.LBB0_126:                              # %sw.bb61.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	(%r13), %rdi
	movl	$.L.str.2, %esi
	callq	fopen@PLT
	movq	%rax, 88(%rsp)
	testq	%rax, %rax
	jne	.LBB0_17
	jmp	.LBB0_127
.LBB0_23:                               # %sw.bb88.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$1, %ecx
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	movl	24(%rsp), %ecx
	testl	%ecx, %ecx
	jns	.LBB0_16
	jmp	.LBB0_27
.LBB0_24:                               # %sw.bb78.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$-1, 728(%rsp)
	jmp	.LBB0_17
.LBB0_25:                               # %sw.bb89.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$0, 1008(%rsp)
	movl	$1, 12(%rsp)                    # 4-byte Folded Spill
.LBB0_26:                               # %generic_option.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	24(%rsp), %ecx
	testl	%ecx, %ecx
	jns	.LBB0_16
.LBB0_27:                               # %for.cond107.preheader.i
                                        #   in Loop: Header=BB0_17 Depth=1
	cmpq	$0, long_options(%rip)
	je	.LBB0_4
# %bb.28:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$long_options+32, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_29:                               # %for.body.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%eax, -8(%rdx)
	je	.LBB0_15
# %bb.30:                               # %for.inc.i
                                        #   in Loop: Header=BB0_29 Depth=2
	incl	%ecx
	cmpq	$0, (%rdx)
	leaq	32(%rdx), %rdx
	jne	.LBB0_29
	jmp	.LBB0_4
.LBB0_31:                               # %sw.bb79.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$3, 728(%rsp)
	jmp	.LBB0_17
.LBB0_32:                               # %sw.bb91.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	(%r13), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB0_17
.LBB0_33:                               # %sw.bb87.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$0, 40(%rsp)                    # 4-byte Folded Spill
	jmp	.LBB0_17
.LBB0_34:                               # %sw.bb40.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	(%r13), %rdi
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol@PLT
	testl	%eax, %eax
	cmovgl	%eax, %r12d
	movl	%r12d, 168(%rsp)
	movl	%r12d, 68(%rsp)
	movl	%r12d, seek_val(%rip)
	jmp	.LBB0_17
.LBB0_35:                               # %sw.bb81.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$0, 64(%rsp)
	jmp	.LBB0_17
.LBB0_36:                               # %sw.bb90.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$1, 128(%rsp)                   # 4-byte Folded Spill
	movl	24(%rsp), %ecx
	testl	%ecx, %ecx
	jns	.LBB0_16
	jmp	.LBB0_27
.LBB0_37:                               # %sw.bb55.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	(%r13), %r12
	movl	$.L.str.22, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB0_64
# %bb.38:                               # %for.cond.i512.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$.L.str.23, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB0_66
# %bb.39:                               # %for.cond.i512.1.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$.L.str.24, %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movl	$.L.str.24, %esi
	jmp	.LBB0_44
.LBB0_40:                               # %sw.bb50.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	(%r13), %r12
	movl	$.L.str.22, %r14d
	movl	$.L.str.22, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB0_17
# %bb.41:                               # %for.cond.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$.L.str.25, %r14d
	movl	$.L.str.25, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB0_17
# %bb.42:                               # %for.cond.i.1.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$.L.str.26, %r14d
	movl	$.L.str.26, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB0_17
# %bb.43:                               # %for.cond.i.2.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$.L.str.27, %r14d
	movl	$.L.str.27, %esi
.LBB0_44:                               # %for.cond.i.2.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB0_17
	jmp	.LBB0_4
.LBB0_45:                               # %sw.bb60.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	(%r13), %rax
	movq	%rax, 144(%rsp)
	jmp	.LBB0_17
.LBB0_46:                               # %sw.bb99.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	(%r13), %rax
	movq	%rax, 160(%rsp)
	jmp	.LBB0_17
.LBB0_47:                               # %sw.bb100.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	(%r13), %r12
	movl	$.L.str.323, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB0_65
# %bb.48:                               # %sub_0.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movzbl	(%r12), %eax
	movl	%eax, %ecx
	addl	$-50, %ecx
	jne	.LBB0_51
# %bb.49:                               # %sub_1.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movzbl	1(%r12), %ecx
	addl	$-50, %ecx
	jne	.LBB0_51
# %bb.50:                               # %sub_2.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movzbl	2(%r12), %ecx
.LBB0_51:                               # %for.inc.i.tail.i
                                        #   in Loop: Header=BB0_17 Depth=1
	testl	%ecx, %ecx
	je	.LBB0_67
# %bb.52:                               # %sub_0611.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	%eax, %ecx
	addl	$-51, %ecx
	jne	.LBB0_55
# %bb.53:                               # %sub_1612.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movzbl	1(%r12), %ecx
	addl	$-50, %ecx
	jne	.LBB0_55
# %bb.54:                               # %sub_2613.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movzbl	2(%r12), %ecx
.LBB0_55:                               # %for.inc.1.i.tail.i
                                        #   in Loop: Header=BB0_17 Depth=1
	testl	%ecx, %ecx
	je	.LBB0_68
# %bb.56:                               # %sub_0615.i
                                        #   in Loop: Header=BB0_17 Depth=1
	addl	$-54, %eax
	jne	.LBB0_59
# %bb.57:                               # %sub_1616.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movzbl	1(%r12), %eax
	addl	$-52, %eax
	jne	.LBB0_59
# %bb.58:                               # %sub_2617.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movzbl	2(%r12), %eax
.LBB0_59:                               # %for.inc.2.i.tail.i
                                        #   in Loop: Header=BB0_17 Depth=1
	testl	%eax, %eax
	je	.LBB0_69
# %bb.60:                               # %for.inc.3.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$.L.str.360, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB0_71
# %bb.61:                               # %for.inc.4.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$.L.str.361, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB0_72
# %bb.62:                               # %for.inc.5.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$.L.str.362, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	movl	$6, %ecx
	testl	%eax, %eax
	jne	.LBB0_4
# %bb.63:                               # %parse_enum_value.exit.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	%ecx, 112(%rsp)
	jmp	.LBB0_17
.LBB0_64:                               #   in Loop: Header=BB0_17 Depth=1
	movl	$.L.str.22, %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB0_17
.LBB0_65:                               #   in Loop: Header=BB0_17 Depth=1
	xorl	%ecx, %ecx
	movl	%ecx, 112(%rsp)
	jmp	.LBB0_17
.LBB0_66:                               #   in Loop: Header=BB0_17 Depth=1
	movl	$.L.str.23, %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB0_17
.LBB0_67:                               #   in Loop: Header=BB0_17 Depth=1
	movl	$1, %ecx
	movl	%ecx, 112(%rsp)
	jmp	.LBB0_17
.LBB0_68:                               #   in Loop: Header=BB0_17 Depth=1
	movl	$2, %ecx
	movl	%ecx, 112(%rsp)
	jmp	.LBB0_17
.LBB0_69:                               #   in Loop: Header=BB0_17 Depth=1
	movl	$3, %ecx
	movl	%ecx, 112(%rsp)
	jmp	.LBB0_17
.LBB0_70:                               # %sw.bb83.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.5, %edi
	movl	$56, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	jmp	.LBB0_17
.LBB0_71:                               #   in Loop: Header=BB0_17 Depth=1
	movl	$4, %ecx
	movl	%ecx, 112(%rsp)
	jmp	.LBB0_17
.LBB0_72:                               #   in Loop: Header=BB0_17 Depth=1
	movl	$5, %ecx
	movl	%ecx, 112(%rsp)
	jmp	.LBB0_17
.LBB0_73:                               # %for.end145.i
	cmpl	$0, 40(%rsp)                    # 4-byte Folded Reload
	je	.LBB0_75
# %bb.74:                               # %if.then147.i
	leaq	360(%rsp), %rdi
	callq	x264_param_apply_fastfirstpass@PLT
.LBB0_75:                               # %if.end148.i
	leaq	360(%rsp), %rdi
	movq	56(%rsp), %rsi                  # 8-byte Reload
	callq	x264_param_apply_profile@PLT
	testl	%eax, %eax
	movq	32(%rsp), %r12                  # 8-byte Reload
	js	.LBB0_4
# %bb.76:                               # %if.end152.i
	movq	optind@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%ebp, %eax
	jge	.LBB0_130
# %bb.77:                               # %if.end152.i
	testq	%r12, %r12
	je	.LBB0_130
# %bb.78:                               # %if.end161.i
	movq	%r12, %rdi
	callq	strlen@PLT
	movq	%rax, %rbx
	addq	%r12, %rbx
	.p2align	4, 0x90
.LBB0_79:                               # %while.cond.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rcx
	movzbl	(%rbx), %eax
	decq	%rbx
	cmpq	%r12, %rcx
	jbe	.LBB0_81
# %bb.80:                               # %while.cond.i.i.i
                                        #   in Loop: Header=BB0_79 Depth=1
	cmpb	$46, %al
	jne	.LBB0_79
.LBB0_81:                               # %sub_0.i.i
	cmpb	$45, (%r12)
	jne	.LBB0_83
# %bb.82:                               # %get_filename_extension.exit.tail.i.i
	movq	32(%rsp), %rcx                  # 8-byte Reload
	cmpb	$0, 1(%rcx)
	je	.LBB0_85
.LBB0_83:                               # %lor.lhs.false.i.i
	xorl	%r12d, %r12d
	cmpb	$46, %al
	sete	%r13b
	movl	$.L.str.22, %esi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	jne	.LBB0_85
# %bb.84:
	movb	%r13b, %r12b
	leaq	(%rbx,%r12), %r14
	incq	%r14
.LBB0_85:                               # %if.then.i523.i
	movq	16(%rsp), %r13                  # 8-byte Reload
	movl	$.L.str.364, %esi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB0_131
# %bb.86:                               # %if.else.i.i
	movl	$.L.str.26, %esi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB0_89
# %bb.87:                               # %if.else11.i.i
	movl	$.L.str.27, %esi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB0_91
# %bb.88:                               # %if.else18.i.i
	movq	raw_output@GOTPCREL(%rip), %rax
	movq	32(%rax), %rcx
	movq	%rcx, output+32(%rip)
	movdqu	(%rax), %xmm0
	movupd	16(%rax), %xmm1
	movupd	%xmm1, output+16(%rip)
	movdqu	%xmm0, output(%rip)
	jmp	.LBB0_93
.LBB0_89:                               # %if.then10.i.i
	movq	mkv_output@GOTPCREL(%rip), %rax
	movq	32(%rax), %rcx
	movq	%rcx, output+32(%rip)
	movdqu	(%rax), %xmm0
	movupd	16(%rax), %xmm1
	movupd	%xmm1, output+16(%rip)
	movdqu	%xmm0, output(%rip)
	movl	$0, 1028(%rsp)
	jmp	.LBB0_92
.LBB0_90:                               # %if.then125.i
	movslq	24(%rsp), %rax
	movq	%rax, %rcx
	shlq	$5, %rcx
	testq	%rax, %rax
	leaq	long_options(%rcx), %rax
	movq	optind@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	leaq	-16(%r15,%rcx,8), %rcx
	cmovgq	%rax, %rcx
	movq	(%rcx), %rdx
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	(%r13), %rcx
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	callq	fprintf@PLT
	jmp	.LBB0_4
.LBB0_91:                               # %if.then14.i.i
	movq	flv_output@GOTPCREL(%rip), %rax
	movq	32(%rax), %rcx
	movq	%rcx, output+32(%rip)
	movdqu	(%rax), %xmm0
	movupd	16(%rax), %xmm1
	movupd	%xmm1, output+16(%rip)
	movdqu	%xmm0, output(%rip)
	movl	$1, 1028(%rsp)
.LBB0_92:                               # %if.end165.i
	movq	$0, 996(%rsp)
.LBB0_93:                               # %if.end165.i
	movq	optind@GOTPCREL(%rip), %r14
	leaq	80(%rsp), %rsi
	movq	32(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %rdi
	callq	*output(%rip)
	testl	%eax, %eax
	jne	.LBB0_132
# %bb.94:                               # %if.end170.i
	movslq	(%r14), %rax
	leal	1(%rax), %ecx
	movl	%ecx, (%r14)
	movq	(%r15,%rax,8), %rbx
	cmpl	%ebp, %ecx
	jge	.LBB0_96
# %bb.95:                               # %cond.true175.i
	leal	2(%rax), %ecx
	movl	%ecx, (%r14)
	movq	8(%r15,%rax,8), %rax
	jmp	.LBB0_97
.LBB0_96:
	xorl	%eax, %eax
.LBB0_97:                               # %cond.end180.i
	movq	%rax, 152(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 204(%rsp)
	movdqu	%xmm0, 220(%rsp)
	movl	$0, 236(%rsp)
	movl	388(%rsp), %eax
	movl	496(%rsp), %ecx
	movl	%eax, 192(%rsp)
	movq	1012(%rsp), %rax
	movq	%rax, 196(%rsp)
	movl	%ecx, 208(%rsp)
	movq	404(%rsp), %xmm0                # xmm0 = mem[0],zero
	pshufd	$225, %xmm0, %xmm0              # xmm0 = xmm0[1,0,2,3]
	movq	%xmm0, 212(%rsp)
	movl	1032(%rsp), %eax
	movl	%eax, 220(%rsp)
	movl	1008(%rsp), %eax
	movl	%eax, 232(%rsp)
	movq	%rbx, %rdi
	callq	strlen@PLT
	addq	%rbx, %rax
	.p2align	4, 0x90
.LBB0_98:                               # %while.cond.i.i526.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rdx
	movzbl	(%rax), %ecx
	decq	%rax
	cmpq	%rbx, %rdx
	jbe	.LBB0_100
# %bb.99:                               # %while.cond.i.i526.i
                                        #   in Loop: Header=BB0_98 Depth=1
	cmpb	$46, %cl
	jne	.LBB0_98
.LBB0_100:                              # %get_filename_extension.exit.i.i
	xorl	%edx, %edx
	cmpb	$46, %cl
	sete	%dl
	leaq	(%rax,%rdx), %r14
	incq	%r14
	cmpb	$45, (%rbx)
	jne	.LBB0_102
# %bb.101:                              # %sub_1.i.i
	cmpb	$0, 1(%rbx)
	sete	%r15b
	jmp	.LBB0_103
.LBB0_102:
	xorl	%r15d, %r15d
.LBB0_103:                              # %get_filename_extension.exit.tail.i535.i
	movl	$.L.str.22, %esi
	movq	%r13, %rdi
	callq	strcmp@PLT
	movl	%eax, %ebp
	testl	%eax, %eax
	movl	$.L.str.23, %r12d
	cmovneq	%r14, %r12
	testb	%r15b, %r15b
	cmoveq	%r14, %r12
	jne	.LBB0_106
# %bb.104:                              # %if.then6.i538.i
	movl	$.L.str.366, %esi
	movq	%rbx, %rdi
	callq	fopen@PLT
	testq	%rax, %rax
	je	.LBB0_106
# %bb.105:                              # %if.then9.i.i
	movq	%rax, %rdi
	callq	fclose@PLT
.LBB0_106:                              # %if.end13.i.i
	testl	%ebp, %ebp
	cmoveq	%r12, %r13
	movl	$.L.str.367, %esi
	movq	%r13, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB0_125
# %bb.107:                              # %lor.lhs.false.i539.i
	movl	$.L.str.368, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB0_125
# %bb.108:                              # %lor.lhs.false19.i.i
	movl	$.L.str.369, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB0_125
# %bb.109:                              # %if.else.i540.i
	leaq	72(%rsp), %r15
	movl	$.L.str.24, %esi
	movq	%r13, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB0_116
# %bb.110:                              # %if.else27.i.i
	movl	$.L.str.23, %esi
	movq	%r13, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB0_117
# %bb.111:                              # %if.else31.i.i
	testl	%ebp, %ebp
	jne	.LBB0_114
# %bb.112:                              # %land.lhs.true33.i.i
	movq	yuv_input@GOTPCREL(%rip), %r14
	leaq	192(%rsp), %rdx
	leaq	144(%rsp), %rcx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*(%r14)
	movq	%r12, 16(%rsp)                  # 8-byte Spill
	testl	%eax, %eax
	jne	.LBB0_114
# %bb.113:                              # %if.then36.i.i
	movq	48(%r14), %rax
	movq	%rax, input+48(%rip)
	movdqu	(%r14), %xmm0
	movupd	16(%r14), %xmm1
	movupd	32(%r14), %xmm2
	movupd	%xmm2, input+32(%rip)
	movupd	%xmm1, input+16(%rip)
	movdqu	%xmm0, input(%rip)
	movl	$.L.str.23, %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
.LBB0_114:                              # %if.end37.i.i
	cmpq	$0, 72(%rsp)
	movq	48(%rsp), %r13                  # 8-byte Reload
	movl	12(%rsp), %ebp                  # 4-byte Reload
	je	.LBB0_276
# %bb.115:                              # %if.end187.thread.i
	leaq	187(%rsp), %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	callq	strcpy@PLT
	jmp	.LBB0_120
.LBB0_116:                              # %if.then26.i.i
	movq	y4m_input@GOTPCREL(%rip), %rax
	jmp	.LBB0_118
.LBB0_117:                              # %if.then30.i.i
	movq	yuv_input@GOTPCREL(%rip), %rax
.LBB0_118:                              # %if.end187.i
	movq	48(%rax), %rcx
	movq	%rcx, input+48(%rip)
	movdqu	(%rax), %xmm0
	movupd	16(%rax), %xmm1
	movupd	32(%rax), %xmm2
	movupd	%xmm2, input+32(%rip)
	movupd	%xmm1, input+16(%rip)
	movdqu	%xmm0, input(%rip)
	movq	72(%rsp), %r14
	leaq	187(%rsp), %rdi
	movq	%r13, %rsi
	callq	strcpy@PLT
	testq	%r14, %r14
	movq	48(%rsp), %r13                  # 8-byte Reload
	movl	12(%rsp), %ebp                  # 4-byte Reload
	jne	.LBB0_120
# %bb.119:                              # %land.lhs.true190.i
	leaq	192(%rsp), %rdx
	leaq	144(%rsp), %rcx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*input(%rip)
	testl	%eax, %eax
	jne	.LBB0_294
.LBB0_120:                              # %if.end196.i
	leaq	212(%rsp), %rdi
	leaq	216(%rsp), %rsi
	callq	x264_reduce_fraction@PLT
	leaq	196(%rsp), %rdi
	leaq	200(%rsp), %rsi
	callq	x264_reduce_fraction@PLT
	cmpl	$2, 728(%rsp)
	jge	.LBB0_133
# %bb.121:                              # %if.end216.i
	testq	%r13, %r13
	je	.LBB0_134
.LBB0_122:                              # %if.then218.i
	testl	%ebp, %ebp
	jne	.LBB0_271
# %bb.123:                              # %if.end222.i
	movq	timecode_input@GOTPCREL(%rip), %rbx
	leaq	192(%rsp), %rdx
	leaq	144(%rsp), %rcx
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	*(%rbx)
	testl	%eax, %eax
	jne	.LBB0_273
# %bb.124:                              # %if.else228.i
	movq	48(%rbx), %rax
	movq	%rax, input+48(%rip)
	movdqu	(%rbx), %xmm0
	movupd	16(%rbx), %xmm1
	movupd	32(%rbx), %xmm2
	movupd	%xmm2, input+32(%rip)
	movupd	%xmm1, input+16(%rip)
	movdqu	%xmm0, input(%rip)
	movl	232(%rsp), %eax
	jmp	.LBB0_136
.LBB0_125:                              # %if.then22.i.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.370, %edi
	movl	$50, %esi
	jmp	.LBB0_291
.LBB0_127:                              # %if.then65.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	(%r13), %rdx
	movl	$.L.str.3, %esi
	jmp	.LBB0_296
.LBB0_129:                              # %if.then96.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	(%r13), %rdx
	movl	$.L.str.7, %esi
	jmp	.LBB0_296
.LBB0_130:                              # %if.then156.i
	cmpl	%ebp, %eax
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.11, %eax
	movl	$.L.str.10, %edx
	cmovlq	%rax, %rdx
	movl	$.L.str.9, %esi
	jmp	.LBB0_296
.LBB0_131:                              # %select_output.exit.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.365, %edi
	jmp	.LBB0_272
.LBB0_132:                              # %if.then168.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.12, %esi
	movq	%rbx, %rdx
	jmp	.LBB0_296
.LBB0_133:                              # %if.then203.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	236(%rsp), %ecx
	movl	204(%rsp), %r8d
	cmpl	$0, 208(%rsp)
	movl	$112, %eax
	movl	$105, %r9d
	cmovel	%eax, %r9d
	movl	212(%rsp), %r10d
	movl	216(%rsp), %r11d
	movl	196(%rsp), %ebx
	movl	200(%rsp), %r14d
	cmpl	$0, 232(%rsp)
	movl	$99, %eax
	movl	$118, %r12d
	cmovel	%eax, %r12d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	195(%rsp), %rdx
	movl	$.L.str.14, %esi
	xorl	%eax, %eax
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	fprintf@PLT
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
	testq	%r13, %r13
	jne	.LBB0_122
.LBB0_134:                              # %if.else230.i
	movl	232(%rsp), %eax
	testl	%eax, %eax
	jne	.LBB0_136
# %bb.135:                              # %if.else230.i
	cmpq	$0, 160(%rsp)
	jne	.LBB0_289
.LBB0_136:                              # %if.end239.i
	movl	192(%rsp), %ecx
	movl	204(%rsp), %edx
	movl	%ecx, 388(%rsp)
	movl	%edx, 384(%rsp)
	movl	%eax, 1008(%rsp)
	movl	236(%rsp), %eax
	movl	%eax, 380(%rsp)
	cmpl	$0, 128(%rsp)                   # 4-byte Folded Reload
	jne	.LBB0_138
# %bb.137:                              # %if.end239.i
	cmpl	$0, 208(%rsp)
	jne	.LBB0_140
.LBB0_138:                              # %if.end263.i
	testl	%ebp, %ebp
	je	.LBB0_141
.LBB0_139:                              # %if.end263.i.if.end270.i_crit_edge
	movl	1012(%rsp), %eax
	movl	1016(%rsp), %edx
	jmp	.LBB0_142
.LBB0_140:                              # %if.then250.i
	movq	stderr@GOTPCREL(%rip), %rax
	cmpl	$0, 220(%rsp)
	movq	(%rax), %rdi
	movl	$98, %ecx
	movl	$116, %eax
	movl	$116, %edx
	cmovel	%ecx, %edx
	cmovel	%eax, %ecx
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$1, 496(%rsp)
	xorl	%eax, %eax
	cmpl	$0, 220(%rsp)
	setne	%al
	movl	%eax, 1032(%rsp)
	testl	%ebp, %ebp
	jne	.LBB0_139
.LBB0_141:                              # %if.then265.i
	movl	196(%rsp), %eax
	movl	200(%rsp), %edx
	movl	%eax, 1012(%rsp)
	movl	%edx, 1016(%rsp)
.LBB0_142:                              # %if.end270.i
	testq	%r13, %r13
	sete	%cl
	cmpl	$0, 1008(%rsp)
	je	.LBB0_144
# %bb.143:                              # %if.end270.i
	movl	224(%rsp), %edx
	movl	228(%rsp), %eax
.LBB0_144:                              # %if.end270.i
	movl	%edx, 1020(%rsp)
	movl	%eax, 1024(%rsp)
	movq	160(%rsp), %rdi
	testq	%rdi, %rdi
	setne	%sil
	andb	%sil, %cl
	cmpb	$1, %cl
	jne	.LBB0_152
# %bb.145:                              # %if.then284.i
	leaq	24(%rsp), %rdx
	leaq	336(%rsp), %rcx
	movl	$.L.str.19, %esi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	je	.LBB0_148
# %bb.146:                              # %if.then284.i
	testl	%eax, %eax
	je	.LBB0_295
# %bb.147:                              # %if.then284.if.end298_crit_edge.i
	movq	336(%rsp), %rax
	jmp	.LBB0_149
.LBB0_148:                              # %if.then293.i
	movl	1020(%rsp), %eax
	movq	%rax, 24(%rsp)
	movq	160(%rsp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoul@PLT
	movq	%rax, 336(%rsp)
.LBB0_149:                              # %if.end298.i
	movq	24(%rsp), %rdx
	movq	%rdx, %rcx
	shrq	$32, %rcx
	jne	.LBB0_274
# %bb.150:                              # %if.end298.i
	movq	%rax, %rcx
	shrq	$32, %rcx
	jne	.LBB0_274
# %bb.151:                              # %if.end306.i
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	movl	1020(%rsp), %ecx
	movl	1024(%rsp), %esi
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rsi, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2sd	%rcx, %xmm2
	unpcklpd	%xmm2, %xmm0                    # xmm0 = xmm0[0],xmm2[0]
	xorps	%xmm2, %xmm2
	cvtsi2sd	%rdx, %xmm2
	unpcklpd	%xmm2, %xmm1                    # xmm1 = xmm1[0],xmm2[0]
	divpd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1                    # xmm1 = xmm1[1],xmm0[1]
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 104(%rsp)
	movl	%edx, 1020(%rsp)
	movl	%eax, 1024(%rsp)
	movl	$1, 1008(%rsp)
.LBB0_152:                              # %if.end324.i
	cmpl	$0, 408(%rsp)
	je	.LBB0_154
# %bb.153:                              # %if.end324.i
	cmpl	$0, 404(%rsp)
	jne	.LBB0_155
.LBB0_154:                              # %if.then332.i
	movq	212(%rsp), %xmm0                # xmm0 = mem[0],zero
	pshufd	$225, %xmm0, %xmm0              # xmm0 = xmm0[1,0,2,3]
	movq	%xmm0, 404(%rsp)
.LBB0_155:                              # %if.end339.i
	cmpl	$0, 176(%rsp)                   # 4-byte Folded Reload
	je	.LBB0_177
.LBB0_156:                              # %if.end
	movl	%eax, %ecx
	movl	%edx, %eax
	movq	%rcx, %rdx
	jmp	.LBB0_158
.LBB0_159:                              #   in Loop: Header=BB0_158 Depth=1
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $edx killed $edx def $rdx
	movq	%rsi, %rax
	testq	%rdx, %rdx
	je	.LBB0_160
.LBB0_158:                              # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rsi
	movq	%rax, %rdx
	orq	%rsi, %rdx
	shrq	$32, %rdx
	je	.LBB0_159
# %bb.157:                              #   in Loop: Header=BB0_158 Depth=1
	xorl	%edx, %edx
	divq	%rsi
	movq	%rsi, %rax
	testq	%rdx, %rdx
	jne	.LBB0_158
.LBB0_160:                              # %gcd.exit.i
	xorl	%ebx, %ebx
	cmpq	%rsi, %rcx
	jb	.LBB0_162
# %bb.161:
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%esi
	movl	%eax, %r14d
	jmp	.LBB0_163
.LBB0_162:
	xorl	%r14d, %r14d
.LBB0_163:
	xorl	%eax, %eax
	cmpl	$3, 728(%rsp)
	setl	%al
	andl	%eax, 64(%rsp)
	movq	72(%rsp), %rdi
	callq	*input+8(%rip)
	movl	%eax, %r13d
	subl	68(%rsp), %r13d
	testl	%r13d, %r13d
	cmovgl	%r13d, %ebx
	setle	%cl
	movl	396(%rsp), %eax
	cmpl	%ebx, %eax
	setl	%dl
	orb	%cl, %dl
	je	.LBB0_166
# %bb.164:                              # %if.end.i
	testl	%eax, %eax
	cmovgl	%eax, %ebx
	movl	%ebx, 396(%rsp)
	movl	%ebx, %r13d
	testl	%ebx, %ebx
	jne	.LBB0_167
# %bb.165:
	movl	$10, 40(%rsp)                   # 4-byte Folded Spill
	xorl	%r13d, %r13d
	movb	$1, %al
	movl	%eax, 16(%rsp)                  # 4-byte Spill
	jmp	.LBB0_168
.LBB0_166:                              # %if.end.thread.i
	movl	%ebx, 396(%rsp)
.LBB0_167:                              # %cond.true21.i
	movl	%r13d, %eax
	imulq	$274877907, %rax, %rax          # imm = 0x10624DD3
	shrq	$38, %rax
	cmpl	$10, %eax
	movl	$10, %ecx
	cmovbl	%eax, %ecx
	cmpl	$1000, %r13d                    # imm = 0x3E8
	movl	$1, %eax
	cmovael	%ecx, %eax
	movl	%eax, 40(%rsp)                  # 4-byte Spill
	movl	$0, 16(%rsp)                    # 4-byte Folded Spill
.LBB0_168:                              # %cond.end25.i
	movslq	112(%rsp), %rbx
	xorl	%r12d, %r12d
	testq	%rbx, %rbx
	je	.LBB0_172
# %bb.169:                              # %cond.end25.i
	cmpl	$0, 1008(%rsp)
	jne	.LBB0_172
# %bb.170:                              # %if.then30.i
	movl	$1, 1036(%rsp)
	shlq	$5, %rbx
	movl	1012(%rsp), %eax
	movl	1016(%rsp), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm0
	movl	%ecx, 1020(%rsp)
	movss	pulldown_values+28(%rbx), %xmm1 # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 32(%rsp)                 # 4-byte Spill
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	callq	fmod@PLT
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_275
	jp	.LBB0_275
# %bb.171:                              # %if.end39.i
	leaq	pulldown_values(%rbx), %r12
	movl	1012(%rsp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm0
	movss	32(%rsp), %xmm1                 # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %rax
	movl	%eax, 1024(%rsp)
.LBB0_172:                              # %if.end46.i
	leaq	360(%rsp), %rdi
	callq	x264_encoder_open_96@PLT
	testq	%rax, %rax
	je	.LBB0_267
# %bb.173:                              # %if.end54.i
	movq	%rax, %rbx
	leaq	360(%rsp), %r15
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	x264_encoder_parameters@PLT
	movl	1024(%rsp), %eax
	xorl	%edx, %edx
	divl	%r14d
	movl	%eax, %ebp
	movq	80(%rsp), %rdi
	movq	%r15, %rsi
	callq	*output+8(%rip)
	testl	%eax, %eax
	jne	.LBB0_268
# %bb.174:                              # %if.end65.i
	movl	388(%rsp), %esi
	movl	380(%rsp), %edx
	movl	384(%rsp), %ecx
	leaq	192(%rsp), %rdi
	callq	*input+16(%rip)
	testl	%eax, %eax
	jne	.LBB0_269
# %bb.175:                              # %if.end70.i
	callq	x264_mdate@PLT
	movq	%rax, %r14
	movl	1024(%rsp), %edx
	movl	1016(%rsp), %eax
	movl	1020(%rsp), %ecx
	imulq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$32, %rdx
	je	.LBB0_188
# %bb.176:
	xorl	%edx, %edx
	divq	%rcx
	movq	%rax, %rcx
	jmp	.LBB0_189
.LBB0_177:                              # %if.then341.i
	movq	x264_levels@GOTPCREL(%rip), %rdi
	movl	(%rdi), %r9d
	testl	%r9d, %r9d
	je	.LBB0_156
# %bb.178:                              # %for.body354.lr.ph.i
	movl	380(%rsp), %r8d
	movl	384(%rsp), %ecx
	movl	392(%rsp), %esi
	cmpl	%r9d, %esi
	je	.LBB0_182
# %bb.179:                              # %for.cond348.i.preheader
	movq	x264_levels@GOTPCREL(%rip), %rdi
.LBB0_180:                              # %for.cond348.i
                                        # =>This Inner Loop Header: Depth=1
	movl	52(%rdi), %r9d
	testl	%r9d, %r9d
	je	.LBB0_156
# %bb.181:                              # %for.body354.i
                                        #   in Loop: Header=BB0_180 Depth=1
	addq	$52, %rdi
	cmpl	%r9d, %esi
	jne	.LBB0_180
.LBB0_182:                              # %while.cond.preheader.i
	movl	440(%rsp), %esi
	cmpl	$2, %esi
	jl	.LBB0_156
# %bb.183:                              # %while.cond.preheader.i
	addl	$15, %r8d
	sarl	$4, %r8d
	addl	$15, %ecx
	sarl	$4, %ecx
	imull	%r8d, %ecx
	movl	%ecx, %r8d
	shll	$7, %r8d
	leal	(%r8,%r8,2), %r8d
	movl	12(%rdi), %edi
	movl	%esi, %r9d
	imull	%r8d, %r9d
	cmpl	%edi, %r9d
	jle	.LBB0_156
# %bb.184:                              # %while.body.i.preheader
	leal	-1(%rsi), %r9d
	imull	%r9d, %ecx
	shll	$7, %ecx
	leal	(%rcx,%rcx,2), %ecx
.LBB0_185:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %r9d
	leal	-1(%r9), %esi
	cmpl	$3, %r9d
	jb	.LBB0_187
# %bb.186:                              # %while.body.i
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	%ecx, %r9d
	subl	%r8d, %r9d
	cmpl	%edi, %ecx
	movl	%r9d, %ecx
	jg	.LBB0_185
.LBB0_187:                              # %while.cond.cleanup377.loopexit_crit_edge.i
	movl	%esi, 440(%rsp)
	jmp	.LBB0_156
.LBB0_188:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, %ecx
.LBB0_189:
	movl	1012(%rsp), %esi
	movq	%rcx, %rax
	shrq	$32, %rax
	je	.LBB0_191
# %bb.190:
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%rsi
	jmp	.LBB0_192
.LBB0_191:
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $eax killed $eax def $rax
.LBB0_192:
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	cmpq	%rsi, %rcx
	jb	.LBB0_270
# %bb.193:                              # %if.end87.i
	cmpl	$0, 996(%rsp)
	je	.LBB0_195
# %bb.194:
	xorl	%r15d, %r15d
	jmp	.LBB0_198
.LBB0_195:                              # %if.then89.i
	leaq	1064(%rsp), %rsi
	leaq	144(%rsp), %rdx
	movq	%rbx, %rdi
	callq	x264_encoder_headers@PLT
	testl	%eax, %eax
	js	.LBB0_293
# %bb.196:                              # %cleanup.i37
	movq	80(%rsp), %rdi
	movq	1064(%rsp), %rsi
	callq	*output+16(%rip)
	testl	%eax, %eax
	js	.LBB0_4
# %bb.197:
	movl	%eax, %r15d
.LBB0_198:                              # %if.end104.i
	movq	%r12, 352(%rsp)                 # 8-byte Spill
	movl	%ebp, 140(%rsp)                 # 4-byte Spill
	movq	96(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB0_200
# %bb.199:                              # %if.then106.i
	movl	$.L.str.378, %edi
	movl	$21, %esi
	movl	$1, %edx
	callq	fwrite@PLT
.LBB0_200:                              # %if.end109.i
	testl	%r13d, %r13d
	setle	%al
	movl	16(%rsp), %ecx                  # 4-byte Reload
                                        # kill: def $cl killed $cl killed $ecx
	notb	%cl
	xorl	%r12d, %r12d
	testb	%al, %cl
	movq	%r14, 344(%rsp)                 # 8-byte Spill
	movq	%r15, 32(%rsp)                  # 8-byte Spill
	jne	.LBB0_202
# %bb.201:                              # %for.body.lr.ph.i
	movq	72(%rsp), %rsi
	movl	68(%rsp), %edx
	leaq	192(%rsp), %rdi
	callq	*input+24(%rip)
	testl	%eax, %eax
	je	.LBB0_218
.LBB0_202:
	movl	$0, 12(%rsp)                    # 4-byte Folded Spill
	movq	$-1, %rbp
	movq	$-1, %r14
.LBB0_203:                              # %for.end.i19
	movq	%rbx, %rdi
	callq	x264_encoder_delayed_frames@PLT
	testl	%eax, %eax
	movq	%rbp, 16(%rsp)                  # 8-byte Spill
	movq	%r14, 56(%rsp)                  # 8-byte Spill
	je	.LBB0_214
# %bb.204:                              # %while.body.i20.preheader
	leaq	144(%rsp), %r15
	leaq	24(%rsp), %r13
	leaq	1064(%rsp), %rbp
	jmp	.LBB0_206
.LBB0_205:                              # %if.end283.i
                                        #   in Loop: Header=BB0_206 Depth=1
	movq	%rbx, %rdi
	callq	x264_encoder_delayed_frames@PLT
	testl	%eax, %eax
	je	.LBB0_214
.LBB0_206:                              # %while.body.i20
                                        # =>This Inner Loop Header: Depth=1
	movq	80(%rsp), %r14
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	xorl	%ecx, %ecx
	movq	%rbp, %r8
	callq	x264_encoder_encode@PLT
	testl	%eax, %eax
	js	.LBB0_292
# %bb.207:                              # %if.end.i570.i
                                        #   in Loop: Header=BB0_206 Depth=1
	je	.LBB0_210
# %bb.208:                              # %Encode_frame.exit578.i
                                        #   in Loop: Header=BB0_206 Depth=1
	movq	144(%rsp), %rcx
	movq	16(%rcx), %rsi
	movq	%r14, %rdi
	movl	%eax, %edx
	movq	%rbp, %rcx
	callq	*output+24(%rip)
	testl	%eax, %eax
	js	.LBB0_4
# %bb.209:                              # %if.end260.i
                                        #   in Loop: Header=BB0_206 Depth=1
	movl	%eax, %ecx
	addq	%rcx, 32(%rsp)                  # 8-byte Folded Spill
	cmpl	$1, %eax
	sbbl	$-1, %r12d
.LBB0_210:                              # %if.end270.i21
                                        #   in Loop: Header=BB0_206 Depth=1
	cmpl	$0, 64(%rsp)
	je	.LBB0_205
# %bb.211:                              # %land.lhs.true273.i
                                        #   in Loop: Header=BB0_206 Depth=1
	movl	%r12d, %eax
	cltd
	idivl	40(%rsp)                        # 4-byte Folded Reload
	testl	%r12d, %r12d
	je	.LBB0_205
# %bb.212:                              # %land.lhs.true273.i
                                        #   in Loop: Header=BB0_206 Depth=1
	testl	%edx, %edx
	jne	.LBB0_205
# %bb.213:                              # %if.then279.i
                                        #   in Loop: Header=BB0_206 Depth=1
	callq	x264_mdate@PLT
	jmp	.LBB0_205
.LBB0_214:                              # %while.end.i
	cmpl	$3, 12(%rsp)                    # 4-byte Folded Reload
	movq	16(%rsp), %r14                  # 8-byte Reload
	jl	.LBB0_216
# %bb.215:                              # %while.end.i
	cmpl	$2, 728(%rsp)
	jle	.LBB0_277
.LBB0_216:                              # %if.end293.i
	cmpl	$1, %r12d
	jne	.LBB0_278
.LBB0_217:                              # %if.then296.i
	movl	1016(%rsp), %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rax, %xmm1
	leaq	1012(%rsp), %rax
	jmp	.LBB0_279
.LBB0_218:                              # %if.end121.i.preheader
	movl	%r13d, 176(%rsp)                # 4-byte Spill
	movslq	140(%rsp), %rax                 # 4-byte Folded Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	$-1, %r14
	xorl	%r12d, %r12d
	movl	$0, 12(%rsp)                    # 4-byte Folded Spill
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 328(%rsp)                # 8-byte Spill
	xorl	%r13d, %r13d
.LBB0_219:                              # %if.end121.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_237 Depth 2
	movq	%r14, %rbp
	cmpl	$0, 1008(%rsp)
	je	.LBB0_223
# %bb.220:                              # %if.end121.if.else_crit_edge.i
                                        #   in Loop: Header=BB0_219 Depth=1
	movq	208(%rsp), %r14
.LBB0_221:                              # %if.else.i
                                        #   in Loop: Header=BB0_219 Depth=1
	movsd	104(%rsp), %xmm0                # xmm0 = mem[0],zero
	ucomisd	.LCPI0_5(%rip), %xmm0
	jne	.LBB0_222
	jnp	.LBB0_225
.LBB0_222:                              # %if.then145.i
                                        #   in Loop: Header=BB0_219 Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r14, %xmm1
	mulsd	%xmm0, %xmm1
	addsd	.LCPI0_1(%rip), %xmm1
	cvttsd2si	%xmm1, %r14
	movq	%r14, 208(%rsp)
	jmp	.LBB0_225
.LBB0_223:                              # %if.end126.i
                                        #   in Loop: Header=BB0_219 Depth=1
	movq	%r13, 208(%rsp)
	cmpl	$0, 112(%rsp)
	movq	%r13, %r14
	je	.LBB0_221
# %bb.224:                              # %if.then132.i
                                        #   in Loop: Header=BB0_219 Depth=1
	movl	%r13d, %eax
	cltd
	movq	352(%rsp), %rcx                 # 8-byte Reload
	idivl	(%rcx)
                                        # kill: def $edx killed $edx def $rdx
	movzbl	4(%rcx,%rdx), %eax
	movl	%eax, 200(%rsp)
	movsd	328(%rsp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm0
	addsd	.LCPI0_1(%rip), %xmm0
	cvttsd2si	%xmm0, %r14
	movq	%r14, 208(%rsp)
	movss	pulldown_frame_duration(,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 328(%rsp)                # 8-byte Spill
.LBB0_225:                              # %if.end153.i
                                        #   in Loop: Header=BB0_219 Depth=1
	movq	%r14, %rcx
	imulq	48(%rsp), %rcx                  # 8-byte Folded Reload
	cmpq	%rbp, %r14
	jg	.LBB0_232
# %bb.226:                              # %if.then160.i
                                        #   in Loop: Header=BB0_219 Depth=1
	movl	728(%rsp), %eax
	testl	%eax, %eax
	jle	.LBB0_231
# %bb.227:                              # %if.then164.i
                                        #   in Loop: Header=BB0_219 Depth=1
	cmpl	$2, %eax
	movl	12(%rsp), %r14d                 # 4-byte Reload
	ja	.LBB0_265
# %bb.228:                              # %if.then164.i
                                        #   in Loop: Header=BB0_219 Depth=1
	cmpl	$2, %r14d
	jle	.LBB0_265
# %bb.229:                              # %if.else175.i
                                        #   in Loop: Header=BB0_219 Depth=1
	cmpl	$3, %r14d
	je	.LBB0_266
.LBB0_230:                              # %if.end181.i
                                        #   in Loop: Header=BB0_219 Depth=1
	incl	%r14d
	movl	%r14d, 12(%rsp)                 # 4-byte Spill
.LBB0_231:                              # %if.end182.i
                                        #   in Loop: Header=BB0_219 Depth=1
	movq	128(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rbp), %r14
	movq	%r14, 208(%rsp)
	movq	%r14, %rcx
	imulq	48(%rsp), %rcx                  # 8-byte Folded Reload
.LBB0_232:                              # %if.end188.i
                                        #   in Loop: Header=BB0_219 Depth=1
	movq	96(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_234
# %bb.233:                              # %if.then192.i
                                        #   in Loop: Header=BB0_219 Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rcx, %xmm1
	movl	1020(%rsp), %eax
	movl	1024(%rsp), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2sd	%rcx, %xmm2
	divsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	.LCPI0_2(%rip), %xmm0
	movl	$.L.str.381, %esi
	movb	$1, %al
	callq	fprintf@PLT
.LBB0_234:                              # %if.end203.i
                                        #   in Loop: Header=BB0_219 Depth=1
	cmpq	$0, 88(%rsp)
	je	.LBB0_250
# %bb.235:                              # %if.then205.i
                                        #   in Loop: Header=BB0_219 Depth=1
	movq	%r14, 56(%rsp)                  # 8-byte Spill
	movq	%rbp, %r14
	movl	68(%rsp), %ebp
	addl	%r13d, %ebp
	movl	$-1, 1064(%rsp)
	jns	.LBB0_237
	jmp	.LBB0_252
.LBB0_236:                              # %while.cond.backedge.i.i
                                        #   in Loop: Header=BB0_237 Depth=2
	cmpl	%ebp, %ecx
	jge	.LBB0_252
.LBB0_237:                              # %while.body.i559.i
                                        #   Parent Loop BB0_219 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	88(%rsp), %rdi
	callq	ftell@PLT
	movq	%rax, %r15
	movq	88(%rsp), %rdi
	movl	$.L.str.387, %esi
	leaq	1064(%rsp), %rdx
	leaq	24(%rsp), %rcx
	leaq	144(%rsp), %r8
	xorl	%eax, %eax
	callq	__isoc99_fscanf@PLT
	movl	1064(%rsp), %ecx
	cmpl	%ebp, %ecx
	jg	.LBB0_251
# %bb.238:                              # %while.body.i559.i
                                        #   in Loop: Header=BB0_237 Depth=2
	cmpl	$-1, %eax
	je	.LBB0_251
# %bb.239:                              # %if.end.i.i34
                                        #   in Loop: Header=BB0_237 Depth=2
	cmpl	%ebp, %ecx
	setl	%dl
	cmpl	$3, %eax
	sete	%sil
	andb	%dl, %sil
	cmpb	$1, %sil
	je	.LBB0_236
# %bb.240:                              # %if.end10.i.i
                                        #   in Loop: Header=BB0_237 Depth=2
	movl	144(%rsp), %edx
	leal	1(%rdx), %esi
	movl	%esi, 196(%rsp)
	movzbl	24(%rsp), %esi
	addl	$-66, %esi
	cmpl	$39, %esi
	ja	.LBB0_249
# %bb.241:                              # %if.end10.i.i
                                        #   in Loop: Header=BB0_237 Depth=2
	jmpq	*.LJTI0_1(,%rsi,8)
.LBB0_242:                              # %if.then31.i.i
                                        #   in Loop: Header=BB0_237 Depth=2
	movl	$4, %esi
	jmp	.LBB0_247
.LBB0_243:                              # %if.then19.i.i
                                        #   in Loop: Header=BB0_237 Depth=2
	movl	$2, %esi
	jmp	.LBB0_247
.LBB0_244:                              #   in Loop: Header=BB0_237 Depth=2
	movl	$1, %esi
	jmp	.LBB0_247
.LBB0_245:                              # %if.then37.i.i
                                        #   in Loop: Header=BB0_237 Depth=2
	movl	$5, %esi
	jmp	.LBB0_247
.LBB0_246:                              # %if.then25.i.i
                                        #   in Loop: Header=BB0_237 Depth=2
	movl	$3, %esi
.LBB0_247:                              # %if.end44.i.i
                                        #   in Loop: Header=BB0_237 Depth=2
	movl	%esi, 192(%rsp)
	cmpl	$3, %eax
	jne	.LBB0_249
# %bb.248:                              # %if.end44.i.i
                                        #   in Loop: Header=BB0_237 Depth=2
	addl	$-52, %edx
	cmpl	$-54, %edx
	ja	.LBB0_236
.LBB0_249:                              # %if.then53.i.i
                                        #   in Loop: Header=BB0_219 Depth=1
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.388, %esi
	movl	%ebp, %edx
	xorl	%eax, %eax
	callq	fprintf@PLT
	movq	88(%rsp), %rdi
	callq	fclose@PLT
	movq	$0, 88(%rsp)
	movq	$0, 192(%rsp)
	jmp	.LBB0_252
.LBB0_250:                              # %if.else208.i
                                        #   in Loop: Header=BB0_219 Depth=1
	movq	$0, 192(%rsp)
	jmp	.LBB0_253
.LBB0_251:                              # %if.then.i.i
                                        #   in Loop: Header=BB0_219 Depth=1
	movq	$0, 192(%rsp)
	movq	88(%rsp), %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	callq	fseek@PLT
.LBB0_252:                              # %parse_qpfile.exit.i
                                        #   in Loop: Header=BB0_219 Depth=1
	movq	%r14, %rbp
	movq	56(%rsp), %r14                  # 8-byte Reload
.LBB0_253:                              # %if.end209.i
                                        #   in Loop: Header=BB0_219 Depth=1
	movq	80(%rsp), %r15
	movq	%rbx, %rdi
	leaq	144(%rsp), %rsi
	leaq	24(%rsp), %rdx
	leaq	192(%rsp), %rcx
	leaq	1064(%rsp), %r8
	callq	x264_encoder_encode@PLT
	testl	%eax, %eax
	js	.LBB0_292
# %bb.254:                              # %if.end.i562.i
                                        #   in Loop: Header=BB0_219 Depth=1
	je	.LBB0_257
# %bb.255:                              # %Encode_frame.exit.i
                                        #   in Loop: Header=BB0_219 Depth=1
	movq	144(%rsp), %rcx
	movq	16(%rcx), %rsi
	movq	%r15, %rdi
	movl	%eax, %edx
	leaq	1064(%rsp), %rcx
	callq	*output+24(%rip)
	testl	%eax, %eax
	js	.LBB0_4
# %bb.256:                              # %if.end215.i
                                        #   in Loop: Header=BB0_219 Depth=1
	movl	%eax, %ecx
	addq	%rcx, 32(%rsp)                  # 8-byte Folded Spill
	cmpl	$1, %eax
	sbbl	$-1, %r12d
.LBB0_257:                              # %if.end225.i
                                        #   in Loop: Header=BB0_219 Depth=1
	movq	input+32(%rip), %rax
	testq	%rax, %rax
	je	.LBB0_259
# %bb.258:                              # %land.lhs.true228.i
                                        #   in Loop: Header=BB0_219 Depth=1
	movq	72(%rsp), %rsi
	leaq	192(%rsp), %rdi
	callq	*%rax
	testl	%eax, %eax
	jne	.LBB0_203
.LBB0_259:                              # %if.end233.i
                                        #   in Loop: Header=BB0_219 Depth=1
	cmpl	$0, 64(%rsp)
	je	.LBB0_263
# %bb.260:                              # %land.lhs.true236.i
                                        #   in Loop: Header=BB0_219 Depth=1
	movl	%r12d, %eax
	cltd
	idivl	40(%rsp)                        # 4-byte Folded Reload
	testl	%r12d, %r12d
	je	.LBB0_263
# %bb.261:                              # %land.lhs.true236.i
                                        #   in Loop: Header=BB0_219 Depth=1
	testl	%edx, %edx
	jne	.LBB0_263
# %bb.262:                              # %if.then242.i
                                        #   in Loop: Header=BB0_219 Depth=1
	callq	x264_mdate@PLT
.LBB0_263:                              # %cleanup247.i
                                        #   in Loop: Header=BB0_219 Depth=1
	incq	%r13
	cmpl	%r13d, 176(%rsp)                # 4-byte Folded Reload
	setg	%al
	orb	16(%rsp), %al                   # 1-byte Folded Reload
	je	.LBB0_203
# %bb.264:                              # %for.body.i27
                                        #   in Loop: Header=BB0_219 Depth=1
	movq	72(%rsp), %rsi
	movl	68(%rsp), %edx
	addl	%r13d, %edx
	leaq	192(%rsp), %rdi
	callq	*input+24(%rip)
	testl	%eax, %eax
	je	.LBB0_219
	jmp	.LBB0_203
.LBB0_265:                              # %if.then171.i
                                        #   in Loop: Header=BB0_219 Depth=1
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	%rbp, %r8
	imulq	48(%rsp), %r8                   # 8-byte Folded Reload
	movl	$.L.str.379, %esi
	movl	%r13d, %edx
	xorl	%eax, %eax
	callq	fprintf@PLT
	jmp	.LBB0_230
.LBB0_266:                              # %if.then178.i
                                        #   in Loop: Header=BB0_219 Depth=1
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.380, %edi
	movl	$77, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	jmp	.LBB0_230
.LBB0_267:                              # %if.then50.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.373, %edi
	movl	$39, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	72(%rsp), %rdi
	callq	*input+48(%rip)
	jmp	.LBB0_4
.LBB0_268:                              # %if.then59.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.374, %edi
	movl	$38, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	72(%rsp), %rdi
	callq	*input+48(%rip)
	movq	80(%rsp), %rdi
	movq	$-1, %rsi
	movq	$-1, %rdx
	callq	*output+32(%rip)
	jmp	.LBB0_4
.LBB0_269:                              # %if.then68.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.375, %edi
	movl	$28, %esi
	jmp	.LBB0_291
.LBB0_270:                              # %if.then85.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.376, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	fprintf@PLT
	jmp	.LBB0_4
.LBB0_271:                              # %if.then220.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.15, %edi
.LBB0_272:                              # %Parse.exit.thread
	movl	$51, %esi
	jmp	.LBB0_291
.LBB0_273:                              # %if.then226.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.16, %edi
	movl	$36, %esi
	jmp	.LBB0_291
.LBB0_274:                              # %if.then304.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.21, %edi
	movl	$59, %esi
	jmp	.LBB0_291
.LBB0_275:                              # %if.then37.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.372, %edi
	jmp	.LBB0_290
.LBB0_276:                              # %if.then39.i.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.371, %esi
	movq	%rbx, %rdx
	jmp	.LBB0_296
.LBB0_277:                              # %if.then290.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	12(%rsp), %edx                  # 4-byte Reload
	addl	$-3, %edx
	movl	$.L.str.382, %esi
	xorl	%eax, %eax
	callq	fprintf@PLT
	cmpl	$1, %r12d
	je	.LBB0_217
.LBB0_278:                              # %if.else315.i
	movq	56(%rsp), %rax                  # 8-byte Reload
	addq	%rax, %rax
	subq	%r14, %rax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	movl	1020(%rsp), %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rax, %xmm1
	mulsd	%xmm0, %xmm1
	leaq	1024(%rsp), %rax
.LBB0_279:                              # %if.end326.i
	movl	(%rax), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	cmpl	$0, 1008(%rsp)
	divsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	140(%rsp), %xmm0        # 4-byte Folded Reload
	mulsd	%xmm1, %xmm0
	je	.LBB0_281
# %bb.280:                              # %if.end326.i
	movapd	%xmm0, %xmm1
.LBB0_281:                              # %if.end326.i
	cmpl	$0, 112(%rsp)
	jne	.LBB0_283
# %bb.282:                              # %if.end326.i
	movapd	%xmm0, %xmm1
.LBB0_283:                              # %if.end326.i
	movsd	%xmm1, 40(%rsp)                 # 8-byte Spill
	callq	x264_mdate@PLT
	movq	%rax, %r15
	leaq	192(%rsp), %rdi
	callq	*input+40(%rip)
	cmpl	$0, 64(%rsp)
	jne	.LBB0_288
.LBB0_284:                              # %if.end341.i
	movq	%rbx, %rdi
	callq	x264_encoder_close@PLT
	movq	stderr@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rsi
	movl	$10, %edi
	callq	fputc@PLT
	movq	96(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_286
# %bb.285:                              # %if.then351.i
	callq	fclose@PLT
	movq	$0, 96(%rsp)
.LBB0_286:                              # %if.end355.i
	movq	72(%rsp), %rdi
	callq	*input+48(%rip)
	movq	80(%rsp), %rdi
	movq	56(%rsp), %rsi                  # 8-byte Reload
	movq	%r14, %rdx
	callq	*output+32(%rip)
	xorl	%eax, %eax
	testl	%r12d, %r12d
	jle	.LBB0_5
# %bb.287:                              # %if.then362.i
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r12d, %xmm0
	mulsd	.LCPI0_3(%rip), %xmm0
	subq	344(%rsp), %r15                 # 8-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r15, %xmm1
	divsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdq	32(%rsp), %xmm1         # 8-byte Folded Reload
	mulsd	.LCPI0_4(%rip), %xmm1
	movq	(%rbx), %rdi
	movsd	40(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	.LCPI0_2(%rip), %xmm2
	divsd	%xmm2, %xmm1
	movl	$.L.str.385, %esi
	movl	%r12d, %edx
	movb	$2, %al
	callq	fprintf@PLT
	xorl	%eax, %eax
	jmp	.LBB0_5
.LBB0_288:                              # %if.then339.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.383, %edi
	movl	$80, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	jmp	.LBB0_284
.LBB0_289:                              # %if.then236.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.17, %edi
.LBB0_290:                              # %Parse.exit.thread
	movl	$56, %esi
	jmp	.LBB0_291
.LBB0_292:                              # %Encode_frame.exit.thread.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.389, %edi
	movl	$41, %esi
	jmp	.LBB0_291
.LBB0_293:                              # %cleanup.thread.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.377, %edi
	movl	$42, %esi
.LBB0_291:                              # %Parse.exit.thread
	movl	$1, %edx
	callq	fwrite@PLT
	jmp	.LBB0_4
.LBB0_294:                              # %if.then194.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.13, %esi
	movq	%rbx, %rdx
	jmp	.LBB0_296
.LBB0_295:                              # %if.then288.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	160(%rsp), %rdx
	movl	$.L.str.20, %esi
.LBB0_296:                              # %cleanup140.thread.i
	xorl	%eax, %eax
	callq	fprintf@PLT
.LBB0_4:                                # %Parse.exit.thread
	movl	$-1, %eax
.LBB0_5:                                # %cleanup
	addq	$1768, %rsp                     # imm = 0x6E8
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
.LBB0_297:                              # %sw.bb25.i
	.cfi_def_cfa_offset 1824
	leaq	1064(%rsp), %rdi
	movl	$2, %esi
	callq	Help
	xorl	%edi, %edi
	callq	exit@PLT
.LBB0_298:                              # %sw.bb24.i
	leaq	1064(%rsp), %rdi
	movl	$1, %esi
	callq	Help
	xorl	%edi, %edi
	callq	exit@PLT
.LBB0_299:                              # %sw.bb.i
	leaq	1064(%rsp), %rdi
	xorl	%esi, %esi
	callq	Help
	xorl	%edi, %edi
	callq	exit@PLT
.LBB0_300:                              # %sw.bb26.i
	movl	$.Lstr, %edi
	callq	puts@PLT
	xorl	%edi, %edi
	callq	exit@PLT
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI0_0:
	.quad	.LBB0_73
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_300
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_299
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_19
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_23
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_31
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_21
	.quad	.LBB0_34
	.quad	.LBB0_126
	.quad	.LBB0_17
	.quad	.LBB0_24
	.quad	.LBB0_35
	.quad	.LBB0_70
	.quad	.LBB0_298
	.quad	.LBB0_20
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_33
	.quad	.LBB0_297
	.quad	.LBB0_25
	.quad	.LBB0_40
	.quad	.LBB0_37
	.quad	.LBB0_45
	.quad	.LBB0_36
	.quad	.LBB0_32
	.quad	.LBB0_128
	.quad	.LBB0_46
	.quad	.LBB0_47
	.quad	.LBB0_22
.LJTI0_1:
	.quad	.LBB0_242
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_244
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_246
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_245
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_249
	.quad	.LBB0_243
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function Help
	.type	Help,@function
Help:                                   # @Help
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	$.L.str.170, (%rsp)
	movl	$.L.str.168, %edi
	movl	$.L.str.169, %edx
	movl	$.L.str.170, %ecx
	movl	$.L.str.170, %r8d
	movl	$.L.str.170, %r9d
	movl	$96, %esi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$.Lstr.390, %edi
	callq	puts@PLT
	movl	$10, %edi
	callq	putchar@PLT
	movl	$.Lstr.391, %edi
	callq	puts@PLT
	movl	$.Lstr.392, %edi
	callq	puts@PLT
	movl	$10, %edi
	callq	putchar@PLT
	movl	$.Lstr.393, %edi
	callq	puts@PLT
	movl	$.Lstr.394, %edi
	callq	puts@PLT
	movl	$.Lstr.395, %edi
	callq	puts@PLT
	movl	$10, %edi
	callq	putchar@PLT
	movl	$.Lstr.396, %edi
	callq	puts@PLT
	movl	$.Lstr.397, %edi
	callq	puts@PLT
	movl	$10, %edi
	callq	putchar@PLT
	movl	$.Lstr.398, %edi
	callq	puts@PLT
	movl	$.Lstr.399, %edi
	callq	puts@PLT
	movl	$10, %edi
	callq	putchar@PLT
	movl	$.Lstr.400, %edi
	callq	puts@PLT
	movl	$.Lstr.401, %edi
	callq	puts@PLT
	movl	$10, %edi
	callq	putchar@PLT
	movl	$.Lstr.402, %edi
	callq	puts@PLT
	movl	$10, %edi
	callq	putchar@PLT
	movl	$.Lstr.403, %edi
	callq	puts@PLT
	cmpl	$2, %ebp
	jne	.LBB1_2
# %bb.1:                                # %if.then39
	movl	$.Lstr.405, %edi
	callq	puts@PLT
	movl	$.Lstr.406, %edi
	callq	puts@PLT
	movl	$.Lstr.408, %edi
	callq	puts@PLT
	movl	$.Lstr.409, %edi
	callq	puts@PLT
	movl	$.Lstr.411, %edi
	callq	puts@PLT
	movl	$.Lstr.413, %edi
	jmp	.LBB1_3
.LBB1_2:                                # %if.else41
	movl	$.Lstr.404, %edi
	callq	puts@PLT
	movl	$.Lstr.406, %edi
	callq	puts@PLT
	movl	$.Lstr.407, %edi
	callq	puts@PLT
	movl	$.Lstr.409, %edi
	callq	puts@PLT
	movl	$.Lstr.410, %edi
	callq	puts@PLT
	movl	$.Lstr.412, %edi
	testl	%ebp, %ebp
	jle	.LBB1_4
.LBB1_3:                                # %if.end46.sink.split
	callq	puts@PLT
.LBB1_4:                                # %if.end46
	movl	$10, %edi
	callq	putchar@PLT
	movl	$.Lstr.414, %edi
	callq	puts@PLT
	movl	$10, %edi
	callq	putchar@PLT
	movl	84(%rbx), %esi
	movl	$.L.str.197, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	cmpl	$2, %ebp
	jne	.LBB1_12
# %bb.5:                                # %if.end66.thread
	movl	$.Lstr.415, %edi
	callq	puts@PLT
	movl	$.Lstr.416, %edi
	callq	puts@PLT
	movl	92(%rbx), %esi
	movl	$.L.str.200, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$.Lstr.417, %edi
	callq	puts@PLT
	jmp	.LBB1_6
.LBB1_12:                               # %if.end66
	testl	%ebp, %ebp
	jle	.LBB1_13
.LBB1_6:                                # %if.end74
	movl	100(%rbx), %esi
	movl	$.L.str.202, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	104(%rbx), %esi
	movl	$.L.str.203, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	cmpl	$2, %ebp
	jne	.LBB1_8
# %bb.7:                                # %if.then76
	movl	108(%rbx), %esi
	movl	$.L.str.204, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.LBB1_8:                                # %if.then80
	movl	112(%rbx), %eax
	movl	$.L.str.322, %esi
	cmpq	$2, %rax
	ja	.LBB1_10
# %bb.9:                                # %cond.true.i
	movq	x264_b_pyramid_names(,%rax,8), %rsi
.LBB1_10:                               # %if.end99
	movl	$.L.str.205, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$.Lstr.418, %edi
	callq	puts@PLT
	movl	80(%rbx), %esi
	movl	$.L.str.207, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$.Lstr.419, %edi
	callq	puts@PLT
	movl	120(%rbx), %esi
	movl	124(%rbx), %edx
	movl	$.L.str.209, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	cmpl	$2, %ebp
	jne	.LBB1_11
# %bb.14:                               # %if.then125
	movl	$.Lstr.421, %edi
	callq	puts@PLT
	movl	$.Lstr.422, %edi
	callq	puts@PLT
	movl	$.Lstr.423, %edi
	callq	puts@PLT
	movl	$.Lstr.424, %edi
	callq	puts@PLT
	movl	$.Lstr.428, %r14d
	movl	$.Lstr.427, %r15d
	movl	$.Lstr.426, %r12d
	movl	$.Lstr.425, %edi
	jmp	.LBB1_15
.LBB1_11:
	movl	$.Lstr.427, %r14d
	movl	$.Lstr.425, %r15d
	movl	$.Lstr.424, %r12d
	movl	$.Lstr.420, %edi
.LBB1_15:                               # %if.end127.sink.split
	callq	puts@PLT
	movb	$1, %r13b
.LBB1_16:                               # %if.end127
	movq	%r12, %rdi
	callq	puts@PLT
	movq	%r15, %rdi
	callq	puts@PLT
	movq	%r14, %rdi
	callq	puts@PLT
	movl	$10, %edi
	callq	putchar@PLT
	movl	$.Lstr.429, %edi
	callq	puts@PLT
	movl	$10, %edi
	callq	putchar@PLT
	testb	%r13b, %r13b
	je	.LBB1_18
# %bb.17:                               # %if.then132
	movl	$.Lstr.430, %edi
	callq	puts@PLT
	movl	$.Lstr.431, %edi
	callq	puts@PLT
	movss	512(%rbx), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.222, %edi
	movb	$1, %al
	callq	printf@PLT
	movl	556(%rbx), %esi
	movl	$.L.str.223, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	jmp	.LBB1_19
.LBB1_18:                               # %if.end142.critedge
	movl	$.Lstr.431, %edi
	callq	puts@PLT
	movss	512(%rbx), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.222, %edi
	movb	$1, %al
	callq	printf@PLT
.LBB1_19:                               # %if.end142
	movl	524(%rbx), %esi
	movl	$.L.str.224, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	528(%rbx), %esi
	movl	$.L.str.225, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	cmpl	$2, %ebp
	jne	.LBB1_22
# %bb.20:                               # %if.end208
	movss	532(%rbx), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.226, %edi
	movb	$1, %al
	callq	printf@PLT
	movl	$.Lstr.432, %edi
	callq	puts@PLT
	movl	496(%rbx), %esi
	movl	$.L.str.228, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	500(%rbx), %esi
	movl	$.L.str.229, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	504(%rbx), %esi
	movl	$.L.str.230, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movss	520(%rbx), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.231, %edi
	movb	$1, %al
	callq	printf@PLT
	movss	536(%rbx), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.232, %edi
	movb	$1, %al
	callq	printf@PLT
	movss	540(%rbx), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.233, %edi
	movb	$1, %al
	callq	printf@PLT
	movl	408(%rbx), %esi
	movl	$.L.str.234, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	544(%rbx), %esi
	movl	$.L.str.235, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	testb	%r13b, %r13b
	jne	.LBB1_23
# %bb.21:                               # %if.end226
	movl	$.Lstr.433, %edi
	callq	puts@PLT
	movl	$.Lstr.434, %edi
	callq	puts@PLT
	jmp	.LBB1_26
.LBB1_22:                               # %if.end208.thread
	testb	%r13b, %r13b
	je	.LBB1_55
.LBB1_23:                               # %if.end220
	movss	548(%rbx), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.236, %edi
	movb	$1, %al
	callq	printf@PLT
	movl	$10, %edi
	callq	putchar@PLT
	movl	$.Lstr.433, %edi
	callq	puts@PLT
	cmpl	$2, %ebp
	jne	.LBB1_24
# %bb.25:                               # %if.end232
	movl	$.Lstr.434, %edi
	callq	puts@PLT
	movq	568(%rbx), %rsi
	movl	$.L.str.239, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.LBB1_26:                               # %if.end273
	movl	$.Lstr.435, %edi
	callq	puts@PLT
	movss	592(%rbx), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.241, %edi
	movb	$1, %al
	callq	printf@PLT
	movss	600(%rbx), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.242, %edi
	movb	$1, %al
	callq	printf@PLT
	movss	596(%rbx), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.243, %edi
	movb	$1, %al
	callq	printf@PLT
	movl	$.Lstr.436, %edi
	callq	puts@PLT
	movl	$.Lstr.437, %edi
	callq	puts@PLT
	movl	$.Lstr.438, %edi
	callq	puts@PLT
	testb	%r13b, %r13b
	jne	.LBB1_27
# %bb.62:                               # %if.end305.thread1161
	movl	$.Lstr.441, %edi
	callq	puts@PLT
	jmp	.LBB1_34
.LBB1_55:                               # %if.end602.critedge
	movl	$.Lstr.433, %edi
	callq	puts@PLT
	movl	$10, %edi
	callq	putchar@PLT
	movl	$.Lstr.467, %edi
	callq	puts@PLT
	movl	$10, %edi
	callq	putchar@PLT
	movl	$.Lstr.468, %edi
	callq	puts@PLT
	jmp	.LBB1_56
.LBB1_24:                               # %if.end232.thread1163
	movq	568(%rbx), %rsi
	movl	$.L.str.239, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.LBB1_27:                               # %if.then276
	movl	$10, %edi
	callq	putchar@PLT
	movl	$.Lstr.439, %edi
	callq	puts@PLT
	movl	$10, %edi
	callq	putchar@PLT
	movl	$.Lstr.440, %edi
	callq	puts@PLT
	movl	404(%rbx), %eax
	movl	$.L.str.322, %esi
	cmpq	$3, %rax
	ja	.LBB1_29
# %bb.28:                               # %cond.true.i981
	movq	x264_direct_pred_names(,%rax,8), %rsi
.LBB1_29:                               # %if.end300
	movl	$.L.str.249, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	cmpl	$2, %ebp
	jne	.LBB1_31
# %bb.30:                               # %if.end305
	movl	$.Lstr.441, %edi
	callq	puts@PLT
.LBB1_31:                               # %if.then308
	movl	396(%rbx), %esi
	movl	$.L.str.251, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	412(%rbx), %eax
	movl	$.L.str.322, %esi
	cmpq	$4, %rax
	ja	.LBB1_33
# %bb.32:                               # %cond.true.i993
	movq	x264_motion_est_names(,%rax,8), %rsi
.LBB1_33:                               # %if.end318
	movl	$.L.str.252, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	cmpl	$2, %ebp
	jne	.LBB1_36
.LBB1_34:                               # %if.end345
	movl	$.Lstr.443, %edi
	callq	puts@PLT
	movl	416(%rbx), %esi
	movl	$.L.str.255, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$.Lstr.444, %edi
	callq	puts@PLT
	movl	$.Lstr.445, %edi
	callq	puts@PLT
	movl	$.Lstr.447, %r14d
	testb	%r13b, %r13b
	jne	.LBB1_37
# %bb.35:                               # %if.end371.thread
	movl	$.Lstr.447, %edi
	callq	puts@PLT
	movl	$.Lstr.448, %edi
	callq	puts@PLT
	movl	$.Lstr.449, %edi
	callq	puts@PLT
	movl	$.Lstr.450, %edi
	callq	puts@PLT
	xorl	%r15d, %r15d
	jmp	.LBB1_39
.LBB1_36:                               # %if.end362.thread
	movl	$.Lstr.442, %edi
	callq	puts@PLT
	movl	$.Lstr.446, %r14d
.LBB1_37:                               # %if.end371
	movl	428(%rbx), %esi
	movl	$.L.str.258, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	%r14, %rdi
	callq	puts@PLT
	movss	456(%rbx), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	460(%rbx), %xmm1                # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movl	$.L.str.261, %edi
	movb	$2, %al
	callq	printf@PLT
	cmpl	$2, %ebp
	jne	.LBB1_57
# %bb.38:                               # %if.end386
	movl	$.Lstr.448, %edi
	callq	puts@PLT
	movl	$.Lstr.449, %edi
	callq	puts@PLT
	movl	$.Lstr.450, %edi
	callq	puts@PLT
	movl	$.Lstr.451, %edi
	callq	puts@PLT
	movl	440(%rbx), %esi
	movl	$.L.str.266, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movb	$1, %r15b
.LBB1_39:                               # %if.end407
	movl	$.Lstr.452, %edi
	callq	puts@PLT
	movl	$.Lstr.453, %edi
	callq	puts@PLT
	testb	%r15b, %r15b
	je	.LBB1_41
# %bb.40:                               # %if.end413.thread1140
	movl	452(%rbx), %esi
	movl	$.L.str.269, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$10, %edi
	callq	putchar@PLT
	movl	468(%rbx), %esi
	movl	$.L.str.270, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	472(%rbx), %esi
	movl	$.L.str.271, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$.Lstr.454, %edi
	callq	puts@PLT
	movl	$.Lstr.456, %r14d
	movl	$.Lstr.455, %edi
	jmp	.LBB1_42
.LBB1_57:                               # %if.end447.critedge
	movl	$.Lstr.451, %edi
	callq	puts@PLT
	movl	440(%rbx), %esi
	movl	$.L.str.266, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	452(%rbx), %esi
	movl	$.L.str.269, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$.Lstr.456, %edi
	callq	puts@PLT
	movl	$10, %edi
	callq	putchar@PLT
	movl	$.Lstr.467, %edi
	callq	puts@PLT
	movl	$10, %edi
	callq	putchar@PLT
	movl	$.Lstr.468, %edi
	callq	puts@PLT
	jmp	.LBB1_58
.LBB1_41:                               # %if.then450.critedge
	movl	$10, %edi
	callq	putchar@PLT
	movl	468(%rbx), %esi
	movl	$.L.str.270, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	472(%rbx), %esi
	movl	$.L.str.271, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$.Lstr.455, %r14d
	movl	$.Lstr.454, %edi
.LBB1_42:                               # %if.then450
	callq	puts@PLT
	movq	%r14, %rdi
	callq	puts@PLT
	movl	$.Lstr.457, %edi
	callq	puts@PLT
	movl	$.Lstr.458, %edi
	callq	puts@PLT
	movl	$.Lstr.459, %edi
	callq	puts@PLT
	movl	$.Lstr.460, %edi
	callq	puts@PLT
	movl	$.Lstr.461, %edi
	callq	puts@PLT
	movl	$10, %edi
	callq	putchar@PLT
	movl	$.Lstr.462, %edi
	callq	puts@PLT
	movl	$.Lstr.463, %edi
	callq	puts@PLT
	movl	$.Lstr.464, %edi
	callq	puts@PLT
	movl	$10, %edi
	callq	putchar@PLT
	movl	52(%rbx), %eax
	movl	$.L.str.322, %r14d
	movl	$.L.str.322, %esi
	cmpq	$2, %rax
	ja	.LBB1_44
# %bb.43:                               # %cond.true.i1005
	movq	x264_overscan_names(,%rax,8), %rsi
.LBB1_44:                               # %strtable_lookup.exit1008
	movl	$.L.str.283, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	56(%rbx), %eax
	cmpq	$5, %rax
	ja	.LBB1_46
# %bb.45:                               # %cond.true.i1017
	movq	x264_vidformat_names(,%rax,8), %r14
.LBB1_46:                               # %strtable_lookup.exit1020
	movl	$.L.str.284, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	60(%rbx), %eax
	movl	$.L.str.322, %r14d
	movl	$.L.str.322, %esi
	cmpq	$1, %rax
	ja	.LBB1_48
# %bb.47:                               # %cond.true.i1029
	movq	x264_fullrange_names(,%rax,8), %rsi
.LBB1_48:                               # %strtable_lookup.exit1032
	movl	$.L.str.285, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	64(%rbx), %eax
	cmpq	$8, %rax
	ja	.LBB1_50
# %bb.49:                               # %cond.true.i1041
	movq	x264_colorprim_names(,%rax,8), %r14
.LBB1_50:                               # %strtable_lookup.exit1044
	movl	$.L.str.286, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	68(%rbx), %eax
	movl	$.L.str.322, %r14d
	movl	$.L.str.322, %esi
	cmpq	$10, %rax
	ja	.LBB1_52
# %bb.51:                               # %cond.true.i1053
	movq	x264_transfer_names(,%rax,8), %rsi
.LBB1_52:                               # %strtable_lookup.exit1056
	movl	$.L.str.287, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	72(%rbx), %eax
	cmpq	$8, %rax
	ja	.LBB1_54
# %bb.53:                               # %cond.true.i1065
	movq	x264_colmatrix_names(,%rax,8), %r14
.LBB1_54:                               # %strtable_lookup.exit1068
	movl	$.L.str.288, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	76(%rbx), %esi
	movl	$.L.str.289, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$.Lstr.465, %edi
	callq	puts@PLT
	movl	$.Lstr.466, %edi
	callq	puts@PLT
	movl	$10, %edi
	callq	putchar@PLT
	movl	$.Lstr.467, %edi
	callq	puts@PLT
	movl	$10, %edi
	callq	putchar@PLT
	movl	$.Lstr.468, %edi
	callq	puts@PLT
	testb	%r15b, %r15b
	je	.LBB1_56
.LBB1_58:                               # %if.then605
	movl	$1869903201, 16(%rsp)           # imm = 0x6F747561
	movw	$8236, 20(%rsp)                 # imm = 0x202C
	movl	$7823730, 22(%rsp)              # imm = 0x776172
	movw	$8236, 25(%rsp)                 # imm = 0x202C
	movl	$7760749, 27(%rsp)              # imm = 0x766B6D
	movw	$8236, 30(%rsp)                 # imm = 0x202C
	movl	$7760998, 32(%rsp)              # imm = 0x766C66
	leaq	16(%rsp), %r14
	movl	$.L.str.294, %edi
	movl	$.L.str.22, %esi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$1869903201, 16(%rsp)           # imm = 0x6F747561
	movw	$8236, 20(%rsp)                 # imm = 0x202C
	movl	$7763321, 22(%rsp)              # imm = 0x767579
	movw	$8236, 25(%rsp)                 # imm = 0x202C
	movl	$7156857, 27(%rsp)              # imm = 0x6D3479
	movl	$.L.str.295, %edi
	movl	$.L.str.22, %esi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$.Lstr.469, %edi
	callq	puts@PLT
	movl	$.Lstr.470, %edi
	callq	puts@PLT
	movl	$.Lstr.471, %edi
	callq	puts@PLT
	movl	$.Lstr.472, %edi
	callq	puts@PLT
	movl	$.Lstr.473, %edi
	callq	puts@PLT
	movl	$.Lstr.474, %edi
	callq	puts@PLT
	movl	$10, %edi
	callq	putchar@PLT
	movl	$.Lstr.475, %edi
	callq	puts@PLT
	movl	$.Lstr.476, %edi
	callq	puts@PLT
	movl	$.Lstr.477, %edi
	callq	puts@PLT
	movl	$.Lstr.478, %edi
	callq	puts@PLT
	movl	$.Lstr.479, %edi
	callq	puts@PLT
	movl	$.Lstr.480, %edi
	callq	puts@PLT
	cmpl	$2, %ebp
	je	.LBB1_60
	jmp	.LBB1_61
.LBB1_56:                               # %if.end602
	movl	$.Lstr.470, %edi
	callq	puts@PLT
	movl	$.Lstr.471, %edi
	callq	puts@PLT
	movl	$.Lstr.472, %edi
	callq	puts@PLT
	movl	$.Lstr.473, %edi
	callq	puts@PLT
	movl	$.Lstr.474, %edi
	callq	puts@PLT
	movl	$.Lstr.477, %edi
	callq	puts@PLT
	cmpl	$2, %ebp
	jne	.LBB1_61
.LBB1_60:                               # %if.then615
	movl	$.Lstr.481, %edi
	callq	puts@PLT
	movl	$.Lstr.482, %edi
	callq	puts@PLT
	movl	$.Lstr.483, %edi
	callq	puts@PLT
	movl	$.Lstr.484, %edi
	callq	puts@PLT
	movl	$.Lstr.485, %edi
	callq	puts@PLT
	movl	$.Lstr.486, %edi
	callq	puts@PLT
	movl	$.Lstr.487, %edi
	callq	puts@PLT
	movl	$.Lstr.488, %edi
	callq	puts@PLT
	movl	644(%rbx), %esi
	movl	$.L.str.316, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$.Lstr.489, %edi
	callq	puts@PLT
	movl	$.Lstr.490, %edi
	callq	puts@PLT
	movl	$.Lstr.491, %edi
	callq	puts@PLT
	movl	$.Lstr.492, %edi
	callq	puts@PLT
	movl	$.Lstr.493, %edi
	callq	puts@PLT
.LBB1_61:                               # %if.end682
	movl	$10, %edi
	callq	putchar@PLT
	addq	$72, %rsp
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
.LBB1_13:
	.cfi_def_cfa_offset 128
	movl	$.Lstr.427, %r14d
	movl	$.Lstr.425, %r15d
	movl	$.Lstr.424, %r12d
	xorl	%r13d, %r13d
	jmp	.LBB1_16
.Lfunc_end1:
	.size	Help, .Lfunc_end1-Help
	.cfi_endproc
                                        # -- End function
	.type	seek_val,@object                # @seek_val
	.bss
	.globl	seek_val
	.p2align	2, 0x0
seek_val:
	.long	0                               # 0x0
	.size	seek_val, 4

	.type	input,@object                   # @input
	.globl	input
	.p2align	3, 0x0
input:
	.zero	56
	.size	input, 56

	.type	short_options,@object           # @short_options
	.data
	.p2align	4, 0x0
short_options:
	.asciz	"8A:B:b:f:hI:i:m:o:p:q:r:t:Vvw"
	.size	short_options, 30

	.type	long_options,@object            # @long_options
	.p2align	4, 0x0
long_options:
	.quad	.L.str.28
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	104                             # 0x68
	.zero	4
	.quad	.L.str.29
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	263                             # 0x107
	.zero	4
	.quad	.L.str.30
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	268                             # 0x10c
	.zero	4
	.quad	.L.str.31
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	86                              # 0x56
	.zero	4
	.quad	.L.str.32
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	278                             # 0x116
	.zero	4
	.quad	.L.str.33
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	264                             # 0x108
	.zero	4
	.quad	.L.str.34
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	265                             # 0x109
	.zero	4
	.quad	.L.str.35
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	266                             # 0x10a
	.zero	4
	.quad	.L.str.36
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	267                             # 0x10b
	.zero	4
	.quad	.L.str.37
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	66                              # 0x42
	.zero	4
	.quad	.L.str.38
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	98                              # 0x62
	.zero	4
	.quad	.L.str.39
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.40
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.41
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.42
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.43
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	105                             # 0x69
	.zero	4
	.quad	.L.str.44
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	73                              # 0x49
	.zero	4
	.quad	.L.str.45
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.46
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.47
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.48
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.49
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.50
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.51
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	102                             # 0x66
	.zero	4
	.quad	.L.str.52
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	273                             # 0x111
	.zero	4
	.quad	.L.str.53
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	273                             # 0x111
	.zero	4
	.quad	.L.str.54
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	273                             # 0x111
	.zero	4
	.quad	.L.str.55
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	273                             # 0x111
	.zero	4
	.quad	.L.str.56
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.57
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.58
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.59
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	113                             # 0x71
	.zero	4
	.quad	.L.str.60
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.61
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.62
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.63
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.64
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.65
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	114                             # 0x72
	.zero	4
	.quad	.L.str.66
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.67
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.68
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.69
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	269                             # 0x10d
	.zero	4
	.quad	.L.str.70
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	256                             # 0x100
	.zero	4
	.quad	.L.str.71
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	257                             # 0x101
	.zero	4
	.quad	.L.str.11
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	111                             # 0x6f
	.zero	4
	.quad	.L.str.72
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	270                             # 0x10e
	.zero	4
	.quad	.L.str.73
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	271                             # 0x10f
	.zero	4
	.quad	.L.str.74
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	270                             # 0x10e
	.zero	4
	.quad	.L.str.75
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	271                             # 0x10f
	.zero	4
	.quad	.L.str.76
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	272                             # 0x110
	.zero	4
	.quad	.L.str.77
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.78
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	65                              # 0x41
	.zero	4
	.quad	.L.str.79
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.80
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	119                             # 0x77
	.zero	4
	.quad	.L.str.81
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.82
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.83
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.84
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.85
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.86
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.87
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	109                             # 0x6d
	.zero	4
	.quad	.L.str.88
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.89
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.90
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.91
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.92
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.93
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.94
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.95
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.96
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	116                             # 0x74
	.zero	4
	.quad	.L.str.97
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.98
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.99
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.100
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.101
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.102
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	48                              # 0x30
	.zero	4
	.quad	.L.str.103
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	48                              # 0x30
	.zero	4
	.quad	.L.str.104
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.105
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.106
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.107
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.108
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.109
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.110
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.111
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.112
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.113
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	112                             # 0x70
	.zero	4
	.quad	.L.str.114
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.115
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.116
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.117
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.118
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.119
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.120
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.121
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	258                             # 0x102
	.zero	4
	.quad	.L.str.122
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.123
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.124
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.125
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.126
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.127
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.128
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	259                             # 0x103
	.zero	4
	.quad	.L.str.129
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.130
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.131
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.132
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.133
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	260                             # 0x104
	.zero	4
	.quad	.L.str.134
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	118                             # 0x76
	.zero	4
	.quad	.L.str.135
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	261                             # 0x105
	.zero	4
	.quad	.L.str.136
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	262                             # 0x106
	.zero	4
	.quad	.L.str.137
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.138
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.139
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.140
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.141
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.142
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.143
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.144
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.145
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.146
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.147
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.148
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.149
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.150
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.151
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.152
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.153
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.154
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.155
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.156
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.157
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.158
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.159
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.160
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.161
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	274                             # 0x112
	.zero	4
	.quad	.L.str.162
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	275                             # 0x113
	.zero	4
	.quad	.L.str.163
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	276                             # 0x114
	.zero	4
	.quad	.L.str.164
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.165
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.166
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.long	277                             # 0x115
	.zero	4
	.quad	.L.str.167
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.long	0                               # 0x0
	.zero	4
	.zero	32
	.size	long_options, 4544

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"placebo"
	.size	.L.str, 8

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"rb"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"x264 [error]: can't open qpfile `%s'\n"
	.size	.L.str.3, 38

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"x264 [warning]: not compiled with visualization support\n"
	.size	.L.str.5, 57

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"wb"
	.size	.L.str.6, 3

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"x264 [error]: can't open `%s'\n"
	.size	.L.str.7, 31

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"x264 [error]: invalid argument: %s = %s\n"
	.size	.L.str.8, 41

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"x264 [error]: No %s file. Run x264 --help for a list of options.\n"
	.size	.L.str.9, 66

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"input"
	.size	.L.str.10, 6

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"output"
	.size	.L.str.11, 7

	.type	output,@object                  # @output
	.local	output
	.comm	output,40,8
	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"x264 [error]: could not open output file `%s'\n"
	.size	.L.str.12, 47

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"x264 [error]: could not open input file `%s'\n"
	.size	.L.str.13, 46

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"%s [info]: %dx%d%c %d:%d @ %d/%d fps (%cfr)\n"
	.size	.L.str.14, 45

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"x264 [error]: --fps + --tcfile-in is incompatible.\n"
	.size	.L.str.15, 52

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"x264 [error]: timecode input failed\n"
	.size	.L.str.16, 37

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"x264 [error]: --timebase is incompatible with cfr input\n"
	.size	.L.str.17, 57

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"x264 [warning]: input appears to be interlaced, enabling %cff interlaced mode.\n                If you want otherwise, use --no-interlaced or --%cff\n"
	.size	.L.str.18, 149

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"%lu/%lu"
	.size	.L.str.19, 8

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"x264 [error]: invalid argument: timebase = %s\n"
	.size	.L.str.20, 47

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"x264 [error]: timebase you specified exceeds H.264 maximum\n"
	.size	.L.str.21, 60

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"auto"
	.size	.L.str.22, 5

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"yuv"
	.size	.L.str.23, 4

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"y4m"
	.size	.L.str.24, 4

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"raw"
	.size	.L.str.25, 4

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"mkv"
	.size	.L.str.26, 4

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"flv"
	.size	.L.str.27, 4

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"help"
	.size	.L.str.28, 5

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"longhelp"
	.size	.L.str.29, 9

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"fullhelp"
	.size	.L.str.30, 9

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"version"
	.size	.L.str.31, 8

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"dumpyuv"
	.size	.L.str.32, 8

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"profile"
	.size	.L.str.33, 8

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"preset"
	.size	.L.str.34, 7

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"tune"
	.size	.L.str.35, 5

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"slow-firstpass"
	.size	.L.str.36, 15

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"bitrate"
	.size	.L.str.37, 8

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"bframes"
	.size	.L.str.38, 8

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"b-adapt"
	.size	.L.str.39, 8

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"no-b-adapt"
	.size	.L.str.40, 11

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"b-bias"
	.size	.L.str.41, 7

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"b-pyramid"
	.size	.L.str.42, 10

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"min-keyint"
	.size	.L.str.43, 11

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"keyint"
	.size	.L.str.44, 7

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"intra-refresh"
	.size	.L.str.45, 14

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"scenecut"
	.size	.L.str.46, 9

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"no-scenecut"
	.size	.L.str.47, 12

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"nf"
	.size	.L.str.48, 3

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"no-deblock"
	.size	.L.str.49, 11

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"filter"
	.size	.L.str.50, 7

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"deblock"
	.size	.L.str.51, 8

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"interlaced"
	.size	.L.str.52, 11

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"tff"
	.size	.L.str.53, 4

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"bff"
	.size	.L.str.54, 4

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"no-interlaced"
	.size	.L.str.55, 14

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"constrained-intra"
	.size	.L.str.56, 18

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"cabac"
	.size	.L.str.57, 6

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"no-cabac"
	.size	.L.str.58, 9

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"qp"
	.size	.L.str.59, 3

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"qpmin"
	.size	.L.str.60, 6

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"qpmax"
	.size	.L.str.61, 6

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"qpstep"
	.size	.L.str.62, 7

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"crf"
	.size	.L.str.63, 4

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"rc-lookahead"
	.size	.L.str.64, 13

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"ref"
	.size	.L.str.65, 4

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"asm"
	.size	.L.str.66, 4

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"no-asm"
	.size	.L.str.67, 7

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"sar"
	.size	.L.str.68, 4

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"fps"
	.size	.L.str.69, 4

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"frames"
	.size	.L.str.70, 7

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"seek"
	.size	.L.str.71, 5

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"muxer"
	.size	.L.str.72, 6

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"demuxer"
	.size	.L.str.73, 8

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"stdout"
	.size	.L.str.74, 7

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"stdin"
	.size	.L.str.75, 6

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"index"
	.size	.L.str.76, 6

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"analyse"
	.size	.L.str.77, 8

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"partitions"
	.size	.L.str.78, 11

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"direct"
	.size	.L.str.79, 7

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"weightb"
	.size	.L.str.80, 8

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"no-weightb"
	.size	.L.str.81, 11

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"weightp"
	.size	.L.str.82, 8

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"me"
	.size	.L.str.83, 3

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"merange"
	.size	.L.str.84, 8

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"mvrange"
	.size	.L.str.85, 8

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"mvrange-thread"
	.size	.L.str.86, 15

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"subme"
	.size	.L.str.87, 6

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"psy-rd"
	.size	.L.str.88, 7

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"no-psy"
	.size	.L.str.89, 7

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"psy"
	.size	.L.str.90, 4

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"mixed-refs"
	.size	.L.str.91, 11

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"no-mixed-refs"
	.size	.L.str.92, 14

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"no-chroma-me"
	.size	.L.str.93, 13

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"8x8dct"
	.size	.L.str.94, 7

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"no-8x8dct"
	.size	.L.str.95, 10

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"trellis"
	.size	.L.str.96, 8

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"fast-pskip"
	.size	.L.str.97, 11

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"no-fast-pskip"
	.size	.L.str.98, 14

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"no-dct-decimate"
	.size	.L.str.99, 16

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"aq-strength"
	.size	.L.str.100, 12

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"aq-mode"
	.size	.L.str.101, 8

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"deadzone-inter"
	.size	.L.str.102, 15

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"deadzone-intra"
	.size	.L.str.103, 15

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"level"
	.size	.L.str.104, 6

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"ratetol"
	.size	.L.str.105, 8

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"vbv-maxrate"
	.size	.L.str.106, 12

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"vbv-bufsize"
	.size	.L.str.107, 12

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"vbv-init"
	.size	.L.str.108, 9

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"crf-max"
	.size	.L.str.109, 8

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"ipratio"
	.size	.L.str.110, 8

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"pbratio"
	.size	.L.str.111, 8

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"chroma-qp-offset"
	.size	.L.str.112, 17

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"pass"
	.size	.L.str.113, 5

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"stats"
	.size	.L.str.114, 6

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"qcomp"
	.size	.L.str.115, 6

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"mbtree"
	.size	.L.str.116, 7

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"no-mbtree"
	.size	.L.str.117, 10

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"qblur"
	.size	.L.str.118, 6

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"cplxblur"
	.size	.L.str.119, 9

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"zones"
	.size	.L.str.120, 6

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"qpfile"
	.size	.L.str.121, 7

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"threads"
	.size	.L.str.122, 8

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"sliced-threads"
	.size	.L.str.123, 15

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	"no-sliced-threads"
	.size	.L.str.124, 18

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	"slice-max-size"
	.size	.L.str.125, 15

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"slice-max-mbs"
	.size	.L.str.126, 14

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"slices"
	.size	.L.str.127, 7

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"thread-input"
	.size	.L.str.128, 13

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"sync-lookahead"
	.size	.L.str.129, 15

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	"non-deterministic"
	.size	.L.str.130, 18

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	"psnr"
	.size	.L.str.131, 5

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	"ssim"
	.size	.L.str.132, 5

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"quiet"
	.size	.L.str.133, 6

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"verbose"
	.size	.L.str.134, 8

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	"no-progress"
	.size	.L.str.135, 12

	.type	.L.str.136,@object              # @.str.136
.L.str.136:
	.asciz	"visualize"
	.size	.L.str.136, 10

	.type	.L.str.137,@object              # @.str.137
.L.str.137:
	.asciz	"dump-yuv"
	.size	.L.str.137, 9

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	"sps-id"
	.size	.L.str.138, 7

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"aud"
	.size	.L.str.139, 4

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"nr"
	.size	.L.str.140, 3

	.type	.L.str.141,@object              # @.str.141
.L.str.141:
	.asciz	"cqm"
	.size	.L.str.141, 4

	.type	.L.str.142,@object              # @.str.142
.L.str.142:
	.asciz	"cqmfile"
	.size	.L.str.142, 8

	.type	.L.str.143,@object              # @.str.143
.L.str.143:
	.asciz	"cqm4"
	.size	.L.str.143, 5

	.type	.L.str.144,@object              # @.str.144
.L.str.144:
	.asciz	"cqm4i"
	.size	.L.str.144, 6

	.type	.L.str.145,@object              # @.str.145
.L.str.145:
	.asciz	"cqm4iy"
	.size	.L.str.145, 7

	.type	.L.str.146,@object              # @.str.146
.L.str.146:
	.asciz	"cqm4ic"
	.size	.L.str.146, 7

	.type	.L.str.147,@object              # @.str.147
.L.str.147:
	.asciz	"cqm4p"
	.size	.L.str.147, 6

	.type	.L.str.148,@object              # @.str.148
.L.str.148:
	.asciz	"cqm4py"
	.size	.L.str.148, 7

	.type	.L.str.149,@object              # @.str.149
.L.str.149:
	.asciz	"cqm4pc"
	.size	.L.str.149, 7

	.type	.L.str.150,@object              # @.str.150
.L.str.150:
	.asciz	"cqm8"
	.size	.L.str.150, 5

	.type	.L.str.151,@object              # @.str.151
.L.str.151:
	.asciz	"cqm8i"
	.size	.L.str.151, 6

	.type	.L.str.152,@object              # @.str.152
.L.str.152:
	.asciz	"cqm8p"
	.size	.L.str.152, 6

	.type	.L.str.153,@object              # @.str.153
.L.str.153:
	.asciz	"overscan"
	.size	.L.str.153, 9

	.type	.L.str.154,@object              # @.str.154
.L.str.154:
	.asciz	"videoformat"
	.size	.L.str.154, 12

	.type	.L.str.155,@object              # @.str.155
.L.str.155:
	.asciz	"fullrange"
	.size	.L.str.155, 10

	.type	.L.str.156,@object              # @.str.156
.L.str.156:
	.asciz	"colorprim"
	.size	.L.str.156, 10

	.type	.L.str.157,@object              # @.str.157
.L.str.157:
	.asciz	"transfer"
	.size	.L.str.157, 9

	.type	.L.str.158,@object              # @.str.158
.L.str.158:
	.asciz	"colormatrix"
	.size	.L.str.158, 12

	.type	.L.str.159,@object              # @.str.159
.L.str.159:
	.asciz	"chromaloc"
	.size	.L.str.159, 10

	.type	.L.str.160,@object              # @.str.160
.L.str.160:
	.asciz	"force-cfr"
	.size	.L.str.160, 10

	.type	.L.str.161,@object              # @.str.161
.L.str.161:
	.asciz	"tcfile-in"
	.size	.L.str.161, 10

	.type	.L.str.162,@object              # @.str.162
.L.str.162:
	.asciz	"tcfile-out"
	.size	.L.str.162, 11

	.type	.L.str.163,@object              # @.str.163
.L.str.163:
	.asciz	"timebase"
	.size	.L.str.163, 9

	.type	.L.str.164,@object              # @.str.164
.L.str.164:
	.asciz	"pic-struct"
	.size	.L.str.164, 11

	.type	.L.str.165,@object              # @.str.165
.L.str.165:
	.asciz	"nal-hrd"
	.size	.L.str.165, 8

	.type	.L.str.166,@object              # @.str.166
.L.str.166:
	.asciz	"pulldown"
	.size	.L.str.166, 9

	.type	.L.str.167,@object              # @.str.167
.L.str.167:
	.asciz	"fake-interlaced"
	.size	.L.str.167, 16

	.type	.L.str.168,@object              # @.str.168
.L.str.168:
	.asciz	"x264 core:%d%s\nSyntax: x264 [options] -o outfile infile [widthxheight]\n\nInfile can be raw YUV 4:2:0 (in which case resolution is required),\n  or YUV4MPEG 4:2:0 (*.y4m),\n  or Avisynth if compiled with support (%s).\n  or libav* formats if compiled with lavf support (%s) or ffms support (%s).\nOutfile type is selected by filename:\n .264 -> Raw bytestream\n .mkv -> Matroska\n .flv -> Flash Video\n .mp4 -> MP4 if compiled with GPAC support (%s)\n\nOptions:\n\n  -h, --help                  List basic options\n      --longhelp              List more options\n      --fullhelp              List all options\n\n"
	.size	.L.str.168, 597

	.type	.L.str.169,@object              # @.str.169
.L.str.169:
	.zero	1
	.size	.L.str.169, 1

	.type	.L.str.170,@object              # @.str.170
.L.str.170:
	.asciz	"no"
	.size	.L.str.170, 3

	.type	.L.str.197,@object              # @.str.197
.L.str.197:
	.asciz	"  -I, --keyint <integer>      Maximum GOP size [%d]\n"
	.size	.L.str.197, 53

	.type	.L.str.200,@object              # @.str.200
.L.str.200:
	.asciz	"      --scenecut <integer>    How aggressively to insert extra I-frames [%d]\n"
	.size	.L.str.200, 78

	.type	.L.str.202,@object              # @.str.202
.L.str.202:
	.asciz	"  -b, --bframes <integer>     Number of B-frames between I and P [%d]\n"
	.size	.L.str.202, 71

	.type	.L.str.203,@object              # @.str.203
.L.str.203:
	.asciz	"      --b-adapt <integer>     Adaptive B-frame decision method [%d]\n                                  Higher values may lower threading efficiency.\n                                  - 0: Disabled\n                                  - 1: Fast\n                                  - 2: Optimal (slow with high --bframes)\n"
	.size	.L.str.203, 315

	.type	.L.str.204,@object              # @.str.204
.L.str.204:
	.asciz	"      --b-bias <integer>      Influences how often B-frames are used [%d]\n"
	.size	.L.str.204, 75

	.type	.L.str.205,@object              # @.str.205
.L.str.205:
	.asciz	"      --b-pyramid <string>    Keep some B-frames as references [%s]\n                                  - none: Disabled\n                                  - strict: Strictly hierarchical pyramid\n                                  - normal: Non-strict (not Blu-ray compatible)\n"
	.size	.L.str.205, 274

	.type	x264_b_pyramid_names,@object    # @x264_b_pyramid_names
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_b_pyramid_names:
	.quad	.L.str.323
	.quad	.L.str.324
	.quad	.L.str.325
	.quad	0
	.size	x264_b_pyramid_names, 32

	.type	.L.str.207,@object              # @.str.207
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.207:
	.asciz	"  -r, --ref <integer>         Number of reference frames [%d]\n"
	.size	.L.str.207, 63

	.type	.L.str.209,@object              # @.str.209
.L.str.209:
	.asciz	"  -f, --deblock <alpha:beta>  Loop filter parameters [%d:%d]\n"
	.size	.L.str.209, 62

	.type	.L.str.222,@object              # @.str.222
.L.str.222:
	.asciz	"      --crf <float>           Quality-based VBR (0-51, 0=lossless) [%.1f]\n"
	.size	.L.str.222, 75

	.type	.L.str.223,@object              # @.str.223
.L.str.223:
	.asciz	"      --rc-lookahead <integer> Number of frames for frametype lookahead [%d]\n"
	.size	.L.str.223, 78

	.type	.L.str.224,@object              # @.str.224
.L.str.224:
	.asciz	"      --vbv-maxrate <integer> Max local bitrate (kbit/s) [%d]\n"
	.size	.L.str.224, 63

	.type	.L.str.225,@object              # @.str.225
.L.str.225:
	.asciz	"      --vbv-bufsize <integer> Set size of the VBV buffer (kbit) [%d]\n"
	.size	.L.str.225, 70

	.type	.L.str.226,@object              # @.str.226
.L.str.226:
	.asciz	"      --vbv-init <float>      Initial VBV buffer occupancy [%.1f]\n"
	.size	.L.str.226, 67

	.type	.L.str.228,@object              # @.str.228
.L.str.228:
	.asciz	"      --qpmin <integer>       Set min QP [%d]\n"
	.size	.L.str.228, 47

	.type	.L.str.229,@object              # @.str.229
.L.str.229:
	.asciz	"      --qpmax <integer>       Set max QP [%d]\n"
	.size	.L.str.229, 47

	.type	.L.str.230,@object              # @.str.230
.L.str.230:
	.asciz	"      --qpstep <integer>      Set max QP step [%d]\n"
	.size	.L.str.230, 52

	.type	.L.str.231,@object              # @.str.231
.L.str.231:
	.asciz	"      --ratetol <float>       Tolerance of ABR ratecontrol and VBV [%.1f]\n"
	.size	.L.str.231, 75

	.type	.L.str.232,@object              # @.str.232
.L.str.232:
	.asciz	"      --ipratio <float>       QP factor between I and P [%.2f]\n"
	.size	.L.str.232, 64

	.type	.L.str.233,@object              # @.str.233
.L.str.233:
	.asciz	"      --pbratio <float>       QP factor between P and B [%.2f]\n"
	.size	.L.str.233, 64

	.type	.L.str.234,@object              # @.str.234
.L.str.234:
	.asciz	"      --chroma-qp-offset <integer>  QP difference between chroma and luma [%d]\n"
	.size	.L.str.234, 80

	.type	.L.str.235,@object              # @.str.235
.L.str.235:
	.asciz	"      --aq-mode <integer>     AQ method [%d]\n                                  - 0: Disabled\n                                  - 1: Variance AQ (complexity mask)\n                                  - 2: Auto-variance AQ (experimental)\n"
	.size	.L.str.235, 234

	.type	.L.str.236,@object              # @.str.236
.L.str.236:
	.asciz	"      --aq-strength <float>   Reduces blocking and blurring in flat and\n                              textured areas. [%.1f]\n"
	.size	.L.str.236, 126

	.type	.L.str.239,@object              # @.str.239
.L.str.239:
	.asciz	"      --stats <string>        Filename for 2 pass stats [\"%s\"]\n"
	.size	.L.str.239, 64

	.type	.L.str.241,@object              # @.str.241
.L.str.241:
	.asciz	"      --qcomp <float>         QP curve compression [%.2f]\n"
	.size	.L.str.241, 59

	.type	.L.str.242,@object              # @.str.242
.L.str.242:
	.asciz	"      --cplxblur <float>      Reduce fluctuations in QP (before curve compression) [%.1f]\n"
	.size	.L.str.242, 91

	.type	.L.str.243,@object              # @.str.243
.L.str.243:
	.asciz	"      --qblur <float>         Reduce fluctuations in QP (after curve compression) [%.1f]\n"
	.size	.L.str.243, 90

	.type	.L.str.249,@object              # @.str.249
.L.str.249:
	.asciz	"      --direct <string>       Direct MV prediction mode [\"%s\"]\n                                  - none, spatial, temporal, auto\n"
	.size	.L.str.249, 130

	.type	x264_direct_pred_names,@object  # @x264_direct_pred_names
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_direct_pred_names:
	.quad	.L.str.323
	.quad	.L.str.326
	.quad	.L.str.327
	.quad	.L.str.22
	.quad	0
	.size	x264_direct_pred_names, 40

	.type	.L.str.251,@object              # @.str.251
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.251:
	.asciz	"      --weightp <integer>     Weighted prediction for P-frames [%d]\n                                  - 0: Disabled\n                                  - 1: Blind offset\n                                  - 2: Smart analysis\n"
	.size	.L.str.251, 223

	.type	.L.str.252,@object              # @.str.252
.L.str.252:
	.asciz	"      --me <string>           Integer pixel motion estimation method [\"%s\"]\n"
	.size	.L.str.252, 77

	.type	x264_motion_est_names,@object   # @x264_motion_est_names
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_motion_est_names:
	.quad	.L.str.328
	.quad	.L.str.329
	.quad	.L.str.330
	.quad	.L.str.331
	.quad	.L.str.332
	.quad	0
	.size	x264_motion_est_names, 48

	.type	.L.str.255,@object              # @.str.255
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.255:
	.asciz	"      --merange <integer>     Maximum motion vector search range [%d]\n"
	.size	.L.str.255, 71

	.type	.L.str.258,@object              # @.str.258
.L.str.258:
	.asciz	"  -m, --subme <integer>       Subpixel motion estimation and mode decision [%d]\n"
	.size	.L.str.258, 81

	.type	.L.str.261,@object              # @.str.261
.L.str.261:
	.asciz	"      --psy-rd                Strength of psychovisual optimization [\"%.1f:%.1f\"]\n                                  #1: RD (requires subme>=6)\n                                  #2: Trellis (requires trellis, experimental)\n"
	.size	.L.str.261, 223

	.type	.L.str.266,@object              # @.str.266
.L.str.266:
	.asciz	"  -t, --trellis <integer>     Trellis RD quantization. Requires CABAC. [%d]\n                                  - 0: disabled\n                                  - 1: enabled only on the final encode of a MB\n                                  - 2: enabled on all mode decisions\n"
	.size	.L.str.266, 274

	.type	.L.str.269,@object              # @.str.269
.L.str.269:
	.asciz	"      --nr <integer>          Noise reduction [%d]\n"
	.size	.L.str.269, 52

	.type	.L.str.270,@object              # @.str.270
.L.str.270:
	.asciz	"      --deadzone-inter <int>  Set the size of the inter luma quantization deadzone [%d]\n"
	.size	.L.str.270, 89

	.type	.L.str.271,@object              # @.str.271
.L.str.271:
	.asciz	"      --deadzone-intra <int>  Set the size of the intra luma quantization deadzone [%d]\n"
	.size	.L.str.271, 89

	.type	.L.str.283,@object              # @.str.283
.L.str.283:
	.asciz	"      --overscan <string>     Specify crop overscan setting [\"%s\"]\n                                  - undef, show, crop\n"
	.size	.L.str.283, 122

	.type	x264_overscan_names,@object     # @x264_overscan_names
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_overscan_names:
	.quad	.L.str.333
	.quad	.L.str.334
	.quad	.L.str.335
	.quad	0
	.size	x264_overscan_names, 32

	.type	.L.str.284,@object              # @.str.284
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.284:
	.asciz	"      --videoformat <string>  Specify video format [\"%s\"]\n                                  - component, pal, ntsc, secam, mac, undef\n"
	.size	.L.str.284, 135

	.type	x264_vidformat_names,@object    # @x264_vidformat_names
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_vidformat_names:
	.quad	.L.str.336
	.quad	.L.str.337
	.quad	.L.str.338
	.quad	.L.str.339
	.quad	.L.str.340
	.quad	.L.str.333
	.quad	0
	.size	x264_vidformat_names, 56

	.type	.L.str.285,@object              # @.str.285
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.285:
	.asciz	"      --fullrange <string>    Specify full range samples setting [\"%s\"]\n                                  - off, on\n"
	.size	.L.str.285, 117

	.type	x264_fullrange_names,@object    # @x264_fullrange_names
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_fullrange_names:
	.quad	.L.str.341
	.quad	.L.str.342
	.quad	0
	.size	x264_fullrange_names, 24

	.type	.L.str.286,@object              # @.str.286
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.286:
	.asciz	"      --colorprim <string>    Specify color primaries [\"%s\"]\n                                  - undef, bt709, bt470m, bt470bg\n                                    smpte170m, smpte240m, film\n"
	.size	.L.str.286, 191

	.type	x264_colorprim_names,@object    # @x264_colorprim_names
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_colorprim_names:
	.quad	.L.str.169
	.quad	.L.str.343
	.quad	.L.str.333
	.quad	.L.str.169
	.quad	.L.str.344
	.quad	.L.str.345
	.quad	.L.str.346
	.quad	.L.str.347
	.quad	.L.str.348
	.quad	0
	.size	x264_colorprim_names, 80

	.type	.L.str.287,@object              # @.str.287
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.287:
	.asciz	"      --transfer <string>     Specify transfer characteristics [\"%s\"]\n                                  - undef, bt709, bt470m, bt470bg, linear,\n                                    log100, log316, smpte170m, smpte240m\n"
	.size	.L.str.287, 219

	.type	x264_transfer_names,@object     # @x264_transfer_names
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_transfer_names:
	.quad	.L.str.169
	.quad	.L.str.343
	.quad	.L.str.333
	.quad	.L.str.169
	.quad	.L.str.344
	.quad	.L.str.345
	.quad	.L.str.346
	.quad	.L.str.347
	.quad	.L.str.349
	.quad	.L.str.350
	.quad	.L.str.351
	.quad	0
	.size	x264_transfer_names, 96

	.type	.L.str.288,@object              # @.str.288
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.288:
	.asciz	"      --colormatrix <string>  Specify color matrix setting [\"%s\"]\n                                  - undef, bt709, fcc, bt470bg\n                                    smpte170m, smpte240m, GBR, YCgCo\n"
	.size	.L.str.288, 199

	.type	x264_colmatrix_names,@object    # @x264_colmatrix_names
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_colmatrix_names:
	.quad	.L.str.352
	.quad	.L.str.343
	.quad	.L.str.333
	.quad	.L.str.169
	.quad	.L.str.353
	.quad	.L.str.345
	.quad	.L.str.346
	.quad	.L.str.347
	.quad	.L.str.354
	.quad	0
	.size	x264_colmatrix_names, 80

	.type	.L.str.289,@object              # @.str.289
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.289:
	.asciz	"      --chromaloc <integer>   Specify chroma sample location (0 to 5) [%d]\n"
	.size	.L.str.289, 76

	.type	.L.str.294,@object              # @.str.294
.L.str.294:
	.asciz	"      --muxer <string>        Specify output container format [\"%s\"]\n                                  - %s\n"
	.size	.L.str.294, 109

	.type	.L.str.295,@object              # @.str.295
.L.str.295:
	.asciz	"      --demuxer <string>      Specify input container format [\"%s\"]\n                                  - %s\n"
	.size	.L.str.295, 108

	.type	.L.str.316,@object              # @.str.316
.L.str.316:
	.asciz	"      --sps-id <integer>      Set SPS and PPS id numbers [%d]\n"
	.size	.L.str.316, 63

	.type	.L.str.322,@object              # @.str.322
.L.str.322:
	.asciz	"???"
	.size	.L.str.322, 4

	.type	.L.str.323,@object              # @.str.323
.L.str.323:
	.asciz	"none"
	.size	.L.str.323, 5

	.type	.L.str.324,@object              # @.str.324
.L.str.324:
	.asciz	"strict"
	.size	.L.str.324, 7

	.type	.L.str.325,@object              # @.str.325
.L.str.325:
	.asciz	"normal"
	.size	.L.str.325, 7

	.type	.L.str.326,@object              # @.str.326
.L.str.326:
	.asciz	"spatial"
	.size	.L.str.326, 8

	.type	.L.str.327,@object              # @.str.327
.L.str.327:
	.asciz	"temporal"
	.size	.L.str.327, 9

	.type	.L.str.328,@object              # @.str.328
.L.str.328:
	.asciz	"dia"
	.size	.L.str.328, 4

	.type	.L.str.329,@object              # @.str.329
.L.str.329:
	.asciz	"hex"
	.size	.L.str.329, 4

	.type	.L.str.330,@object              # @.str.330
.L.str.330:
	.asciz	"umh"
	.size	.L.str.330, 4

	.type	.L.str.331,@object              # @.str.331
.L.str.331:
	.asciz	"esa"
	.size	.L.str.331, 4

	.type	.L.str.332,@object              # @.str.332
.L.str.332:
	.asciz	"tesa"
	.size	.L.str.332, 5

	.type	.L.str.333,@object              # @.str.333
.L.str.333:
	.asciz	"undef"
	.size	.L.str.333, 6

	.type	.L.str.334,@object              # @.str.334
.L.str.334:
	.asciz	"show"
	.size	.L.str.334, 5

	.type	.L.str.335,@object              # @.str.335
.L.str.335:
	.asciz	"crop"
	.size	.L.str.335, 5

	.type	.L.str.336,@object              # @.str.336
.L.str.336:
	.asciz	"component"
	.size	.L.str.336, 10

	.type	.L.str.337,@object              # @.str.337
.L.str.337:
	.asciz	"pal"
	.size	.L.str.337, 4

	.type	.L.str.338,@object              # @.str.338
.L.str.338:
	.asciz	"ntsc"
	.size	.L.str.338, 5

	.type	.L.str.339,@object              # @.str.339
.L.str.339:
	.asciz	"secam"
	.size	.L.str.339, 6

	.type	.L.str.340,@object              # @.str.340
.L.str.340:
	.asciz	"mac"
	.size	.L.str.340, 4

	.type	.L.str.341,@object              # @.str.341
.L.str.341:
	.asciz	"off"
	.size	.L.str.341, 4

	.type	.L.str.342,@object              # @.str.342
.L.str.342:
	.asciz	"on"
	.size	.L.str.342, 3

	.type	.L.str.343,@object              # @.str.343
.L.str.343:
	.asciz	"bt709"
	.size	.L.str.343, 6

	.type	.L.str.344,@object              # @.str.344
.L.str.344:
	.asciz	"bt470m"
	.size	.L.str.344, 7

	.type	.L.str.345,@object              # @.str.345
.L.str.345:
	.asciz	"bt470bg"
	.size	.L.str.345, 8

	.type	.L.str.346,@object              # @.str.346
.L.str.346:
	.asciz	"smpte170m"
	.size	.L.str.346, 10

	.type	.L.str.347,@object              # @.str.347
.L.str.347:
	.asciz	"smpte240m"
	.size	.L.str.347, 10

	.type	.L.str.348,@object              # @.str.348
.L.str.348:
	.asciz	"film"
	.size	.L.str.348, 5

	.type	.L.str.349,@object              # @.str.349
.L.str.349:
	.asciz	"linear"
	.size	.L.str.349, 7

	.type	.L.str.350,@object              # @.str.350
.L.str.350:
	.asciz	"log100"
	.size	.L.str.350, 7

	.type	.L.str.351,@object              # @.str.351
.L.str.351:
	.asciz	"log316"
	.size	.L.str.351, 7

	.type	.L.str.352,@object              # @.str.352
.L.str.352:
	.asciz	"GBR"
	.size	.L.str.352, 4

	.type	.L.str.353,@object              # @.str.353
.L.str.353:
	.asciz	"fcc"
	.size	.L.str.353, 4

	.type	.L.str.354,@object              # @.str.354
.L.str.354:
	.asciz	"YCgCo"
	.size	.L.str.354, 6

	.type	.L.str.356,@object              # @.str.356
.L.str.356:
	.asciz	", "
	.size	.L.str.356, 3

	.type	.L.str.360,@object              # @.str.360
.L.str.360:
	.asciz	"double"
	.size	.L.str.360, 7

	.type	.L.str.361,@object              # @.str.361
.L.str.361:
	.asciz	"triple"
	.size	.L.str.361, 7

	.type	.L.str.362,@object              # @.str.362
.L.str.362:
	.asciz	"euro"
	.size	.L.str.362, 5

	.type	.L.str.364,@object              # @.str.364
.L.str.364:
	.asciz	"mp4"
	.size	.L.str.364, 4

	.type	.L.str.365,@object              # @.str.365
.L.str.365:
	.asciz	"x264 [error]: not compiled with MP4 output support\n"
	.size	.L.str.365, 52

	.type	.L.str.366,@object              # @.str.366
.L.str.366:
	.asciz	"r"
	.size	.L.str.366, 2

	.type	.L.str.367,@object              # @.str.367
.L.str.367:
	.asciz	"avs"
	.size	.L.str.367, 4

	.type	.L.str.368,@object              # @.str.368
.L.str.368:
	.asciz	"d2v"
	.size	.L.str.368, 4

	.type	.L.str.369,@object              # @.str.369
.L.str.369:
	.asciz	"dga"
	.size	.L.str.369, 4

	.type	.L.str.370,@object              # @.str.370
.L.str.370:
	.asciz	"x264 [error]: not compiled with AVS input support\n"
	.size	.L.str.370, 51

	.type	.L.str.371,@object              # @.str.371
.L.str.371:
	.asciz	"x264 [error]: could not open input file `%s' via any method!\n"
	.size	.L.str.371, 62

	.type	.L.str.372,@object              # @.str.372
.L.str.372:
	.asciz	"x264 [error]: unsupported framerate for chosen pulldown\n"
	.size	.L.str.372, 57

	.type	.L.str.373,@object              # @.str.373
.L.str.373:
	.asciz	"x264 [error]: x264_encoder_open failed\n"
	.size	.L.str.373, 40

	.type	.L.str.374,@object              # @.str.374
.L.str.374:
	.asciz	"x264 [error]: can't set outfile param\n"
	.size	.L.str.374, 39

	.type	.L.str.375,@object              # @.str.375
.L.str.375:
	.asciz	"x264 [error]: malloc failed\n"
	.size	.L.str.375, 29

	.type	.L.str.376,@object              # @.str.376
.L.str.376:
	.asciz	"x264 [error]: ticks_per_frame invalid: %ld\n"
	.size	.L.str.376, 44

	.type	.L.str.377,@object              # @.str.377
.L.str.377:
	.asciz	"x264 [error]: x264_encoder_headers failed\n"
	.size	.L.str.377, 43

	.type	.L.str.378,@object              # @.str.378
.L.str.378:
	.asciz	"# timecode format v2\n"
	.size	.L.str.378, 22

	.type	pulldown_frame_duration,@object # @pulldown_frame_duration
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
pulldown_frame_duration:
	.long	0x00000000                      # float 0
	.long	0x3f800000                      # float 1
	.long	0x3f000000                      # float 0.5
	.long	0x3f000000                      # float 0.5
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3fc00000                      # float 1.5
	.long	0x3fc00000                      # float 1.5
	.long	0x40000000                      # float 2
	.long	0x40400000                      # float 3
	.size	pulldown_frame_duration, 40

	.type	.L.str.379,@object              # @.str.379
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.379:
	.asciz	"x264 [warning]: non-strictly-monotonic pts at frame %d (%ld <= %ld)\n"
	.size	.L.str.379, 69

	.type	.L.str.380,@object              # @.str.380
.L.str.380:
	.asciz	"x264 [warning]: too many nonmonotonic pts warnings, suppressing further ones\n"
	.size	.L.str.380, 78

	.type	.L.str.381,@object              # @.str.381
.L.str.381:
	.asciz	"%.6f\n"
	.size	.L.str.381, 6

	.type	.L.str.382,@object              # @.str.382
.L.str.382:
	.asciz	"x264 [warning]: %d suppressed nonmonotonic pts warnings\n"
	.size	.L.str.382, 57

	.type	.L.str.383,@object              # @.str.383
.L.str.383:
	.asciz	"                                                                               \r"
	.size	.L.str.383, 81

	.type	.L.str.385,@object              # @.str.385
.L.str.385:
	.asciz	"encoded %d frames, %.2f fps, %.2f kb/s\n"
	.size	.L.str.385, 40

	.type	pulldown_values,@object         # @pulldown_values
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
pulldown_values:
	.zero	32
	.long	1                               # 0x1
	.byte	4                               # 0x4
	.zero	23
	.long	0x3f800000                      # float 1
	.long	4                               # 0x4
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	7                               # 0x7
	.byte	4                               # 0x4
	.zero	20
	.long	0x3fa00000                      # float 1.25
	.long	2                               # 0x2
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.zero	22
	.long	0x3f800000                      # float 1
	.long	1                               # 0x1
	.byte	8                               # 0x8
	.zero	23
	.long	0x40000000                      # float 2
	.long	1                               # 0x1
	.byte	9                               # 0x9
	.zero	23
	.long	0x40400000                      # float 3
	.long	24                              # 0x18
	.ascii	"\006\005\005\005\005\005\005\005\005\005\005\005\007\004\004\004\004\004\004\004\004\004\004\004"
	.long	0x3f855555                      # float 1.04166663
	.size	pulldown_values, 224

	.type	.L.str.387,@object              # @.str.387
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.387:
	.asciz	"%d %c %d\n"
	.size	.L.str.387, 10

	.type	.L.str.388,@object              # @.str.388
.L.str.388:
	.asciz	"x264 [error]: can't parse qpfile for frame %d\n"
	.size	.L.str.388, 47

	.type	.L.str.389,@object              # @.str.389
.L.str.389:
	.asciz	"x264 [error]: x264_encoder_encode failed\n"
	.size	.L.str.389, 42

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"x264 0.96.x"
	.size	.Lstr, 12

	.type	.Lstr.390,@object               # @str.390
.Lstr.390:
	.asciz	"Example usage:"
	.size	.Lstr.390, 15

	.type	.Lstr.391,@object               # @str.391
.Lstr.391:
	.asciz	"      Constant quality mode:"
	.size	.Lstr.391, 29

	.type	.Lstr.392,@object               # @str.392
.Lstr.392:
	.asciz	"            x264 --crf 24 -o <output> <input>"
	.size	.Lstr.392, 46

	.type	.Lstr.393,@object               # @str.393
.Lstr.393:
	.asciz	"      Two-pass with a bitrate of 1000kbps:"
	.size	.Lstr.393, 43

	.type	.Lstr.394,@object               # @str.394
.Lstr.394:
	.asciz	"            x264 --pass 1 --bitrate 1000 -o <output> <input>"
	.size	.Lstr.394, 61

	.type	.Lstr.395,@object               # @str.395
.Lstr.395:
	.asciz	"            x264 --pass 2 --bitrate 1000 -o <output> <input>"
	.size	.Lstr.395, 61

	.type	.Lstr.396,@object               # @str.396
.Lstr.396:
	.asciz	"      Lossless:"
	.size	.Lstr.396, 16

	.type	.Lstr.397,@object               # @str.397
.Lstr.397:
	.asciz	"            x264 --crf 0 -o <output> <input>"
	.size	.Lstr.397, 45

	.type	.Lstr.398,@object               # @str.398
.Lstr.398:
	.asciz	"      Maximum PSNR at the cost of speed and visual quality:"
	.size	.Lstr.398, 60

	.type	.Lstr.399,@object               # @str.399
.Lstr.399:
	.asciz	"            x264 --preset placebo --tune psnr -o <output> <input>"
	.size	.Lstr.399, 66

	.type	.Lstr.400,@object               # @str.400
.Lstr.400:
	.asciz	"      Constant bitrate at 1000kbps with a 2 second-buffer:"
	.size	.Lstr.400, 59

	.type	.Lstr.401,@object               # @str.401
.Lstr.401:
	.asciz	"            x264 --vbv-bufsize 2000 --bitrate 1000 -o <output> <input>"
	.size	.Lstr.401, 71

	.type	.Lstr.402,@object               # @str.402
.Lstr.402:
	.asciz	"Presets:"
	.size	.Lstr.402, 9

	.type	.Lstr.403,@object               # @str.403
.Lstr.403:
	.asciz	"      --profile               Force the limits of an H.264 profile [high]\n                                  Overrides all settings."
	.size	.Lstr.403, 132

	.type	.Lstr.404,@object               # @str.404
.Lstr.404:
	.asciz	"                                  - baseline,main,high"
	.size	.Lstr.404, 55

	.type	.Lstr.405,@object               # @str.405
.Lstr.405:
	.asciz	"                                  - baseline:\n                                    --no-8x8dct --bframes 0 --no-cabac\n                                    --cqm flat --weightp 0\n                                    No interlaced.\n                                    No lossless.\n                                  - main:\n                                    --no-8x8dct --cqm flat\n                                    No lossless.\n                                  - high:\n                                    No lossless."
	.size	.Lstr.405, 517

	.type	.Lstr.406,@object               # @str.406
.Lstr.406:
	.asciz	"      --preset                Use a preset to select encoding settings [medium]\n                                  Overridden by user settings."
	.size	.Lstr.406, 143

	.type	.Lstr.407,@object               # @str.407
.Lstr.407:
	.asciz	"                                  - ultrafast,superfast,veryfast,faster,fast\n                                  - medium,slow,slower,veryslow,placebo"
	.size	.Lstr.407, 149

	.type	.Lstr.408,@object               # @str.408
.Lstr.408:
	.asciz	"                                  - ultrafast:\n                                    --no-8x8dct --aq-mode 0 --b-adapt 0\n                                    --bframes 0 --no-cabac --no-deblock\n                                    --no-mbtree --me dia --no-mixed-refs\n                                    --partitions none --ref 1 --scenecut 0\n                                    --subme 0 --trellis 0 --no-weightb\n                                    --weightp 0\n                                  - superfast:\n                                    --no-mbtree --me dia --no-mixed-refs\n                                    --partitions i8x8,i4x4 --ref 1\n                                    --subme 1 --trellis 0 --weightp 0\n                                  - veryfast:\n                                    --no-mbtree --no-mixed-refs --ref 1\n                                    --subme 2 --trellis 0 --weightp 0\n                                  - faster:\n                                    --no-mixed-refs --rc-lookahead 20\n                                    --ref 2 --subme 4 --weightp 1\n                                  - fast:\n                                    --rc-lookahead 30 --ref 2 --subme 6\n                                  - medium:\n                                    Default settings apply.\n                                  - slow:\n                                    --b-adapt 2 --direct auto --me umh\n                                    --rc-lookahead 50 --ref 5 --subme 8\n                                  - slower:\n                                    --b-adapt 2 --direct auto --me umh\n                                    --partitions all --rc-lookahead 60\n                                    --ref 8 --subme 9 --trellis 2\n                                  - veryslow:\n                                    --b-adapt 2 --bframes 8 --direct auto\n                                    --me umh --merange 24 --partitions all\n                                    --ref 16 --subme 10 --trellis 2\n                                    --rc-lookahead 60\n                                  - placebo:\n                                    --bframes 16 --b-adapt 2 --direct auto\n                                    --slow-firstpass --no-fast-pskip\n                                    --me tesa --merange 24 --partitions all\n                                    --rc-lookahead 60 --ref 16 --subme 10\n                                    --trellis 2"
	.size	.Lstr.408, 2442

	.type	.Lstr.409,@object               # @str.409
.Lstr.409:
	.asciz	"      --tune                  Tune the settings for a particular type of source\n                              or situation\n                                  Overridden by user settings.\n                                  Multiple tunings are separated by commas.\n                                  Only one psy tuning can be used at a time."
	.size	.Lstr.409, 339

	.type	.Lstr.410,@object               # @str.410
.Lstr.410:
	.asciz	"                                  - psy tunings: film,animation,grain,\n                                                 stillimage,psnr,ssim\n                                  - other tunings: fastdecode,zerolatency"
	.size	.Lstr.410, 215

	.type	.Lstr.411,@object               # @str.411
.Lstr.411:
	.asciz	"                                  - film (psy tuning):\n                                    --deblock -1:-1 --psy-rd <unset>:0.15\n                                  - animation (psy tuning):\n                                    --bframes {+2} --deblock 1:1\n                                    --psy-rd 0.4:<unset> --aq-strength 0.6\n                                    --ref {Double if >1 else 1}\n                                  - grain (psy tuning):\n                                    --aq-strength 0.5 --no-dct-decimate\n                                    --deadzone-inter 6 --deadzone-intra 6\n                                    --deblock -2:-2 --ipratio 1.1 \n                                    --pbratio 1.1 --psy-rd <unset>:0.25\n                                    --qcomp 0.8\n                                  - stillimage (psy tuning):\n                                    --aq-strength 1.2 --deblock -3:-3\n                                    --psy-rd 2.0:0.7\n                                  - psnr (psy tuning):\n                                    --aq-mode 0 --no-psy\n                                  - ssim (psy tuning):\n                                    --aq-mode 2 --no-psy\n                                  - fastdecode:\n                                    --no-cabac --no-deblock --no-weightb\n                                    --weightp 0\n                                  - zerolatency:\n                                    --bframes 0 --force-cfr --rc-lookahead 0\n                                    --sync-lookahead 0 --sliced-threads"
	.size	.Lstr.411, 1557

	.type	.Lstr.412,@object               # @str.412
.Lstr.412:
	.asciz	"      --slow-firstpass        Don't force faster settings with --pass 1"
	.size	.Lstr.412, 72

	.type	.Lstr.413,@object               # @str.413
.Lstr.413:
	.asciz	"      --slow-firstpass        Don't force these faster settings with --pass 1:\n                                  --no-8x8dct --me dia --partitions none\n                                  --ref 1 --subme {2 if >2 else unchanged}\n                                  --trellis 0 --fast-pskip"
	.size	.Lstr.413, 286

	.type	.Lstr.414,@object               # @str.414
.Lstr.414:
	.asciz	"Frame-type options:"
	.size	.Lstr.414, 20

	.type	.Lstr.415,@object               # @str.415
.Lstr.415:
	.asciz	"  -i, --min-keyint <integer>  Minimum GOP size [auto]"
	.size	.Lstr.415, 54

	.type	.Lstr.416,@object               # @str.416
.Lstr.416:
	.asciz	"      --no-scenecut           Disable adaptive I-frame decision"
	.size	.Lstr.416, 64

	.type	.Lstr.417,@object               # @str.417
.Lstr.417:
	.asciz	"      --intra-refresh         Use Periodic Intra Refresh instead of IDR frames"
	.size	.Lstr.417, 79

	.type	.Lstr.418,@object               # @str.418
.Lstr.418:
	.asciz	"      --no-cabac              Disable CABAC"
	.size	.Lstr.418, 44

	.type	.Lstr.419,@object               # @str.419
.Lstr.419:
	.asciz	"      --no-deblock            Disable loop filter"
	.size	.Lstr.419, 50

	.type	.Lstr.420,@object               # @str.420
.Lstr.420:
	.asciz	"      --slices <integer>      Number of slices per frame"
	.size	.Lstr.420, 57

	.type	.Lstr.421,@object               # @str.421
.Lstr.421:
	.asciz	"      --slices <integer>      Number of slices per frame; forces rectangular\n                              slices and is overridden by other slicing options"
	.size	.Lstr.421, 157

	.type	.Lstr.422,@object               # @str.422
.Lstr.422:
	.asciz	"      --slice-max-size <integer> Limit the size of each slice in bytes"
	.size	.Lstr.422, 71

	.type	.Lstr.423,@object               # @str.423
.Lstr.423:
	.asciz	"      --slice-max-mbs <integer> Limit the size of each slice in macroblocks"
	.size	.Lstr.423, 76

	.type	.Lstr.424,@object               # @str.424
.Lstr.424:
	.asciz	"      --tff                   Enable interlaced mode (top field first)"
	.size	.Lstr.424, 71

	.type	.Lstr.425,@object               # @str.425
.Lstr.425:
	.asciz	"      --bff                   Enable interlaced mode (bottom field first)"
	.size	.Lstr.425, 74

	.type	.Lstr.426,@object               # @str.426
.Lstr.426:
	.asciz	"      --constrained-intra     Enable constrained intra prediction."
	.size	.Lstr.426, 67

	.type	.Lstr.427,@object               # @str.427
.Lstr.427:
	.asciz	"      --pulldown <string>     Use soft pulldown to change frame rate\n                                  - none, 22, 32, 64, double, triple, euro (requires cfr input)"
	.size	.Lstr.427, 165

	.type	.Lstr.428,@object               # @str.428
.Lstr.428:
	.asciz	"      --fake-interlaced       Flag stream as interlaced but encode progressive.\n                              Makes it possible to encode 25p and 30p Blu-Ray\n                              streams. Ignored in interlaced mode."
	.size	.Lstr.428, 225

	.type	.Lstr.429,@object               # @str.429
.Lstr.429:
	.asciz	"Ratecontrol:"
	.size	.Lstr.429, 13

	.type	.Lstr.430,@object               # @str.430
.Lstr.430:
	.asciz	"  -q, --qp <integer>          Force constant QP (0-51, 0=lossless)"
	.size	.Lstr.430, 67

	.type	.Lstr.431,@object               # @str.431
.Lstr.431:
	.asciz	"  -B, --bitrate <integer>     Set bitrate (kbit/s)"
	.size	.Lstr.431, 51

	.type	.Lstr.432,@object               # @str.432
.Lstr.432:
	.asciz	"      --crf-max <float>       With CRF+VBV, limit RF to this value\n                                  May cause VBV underflows!"
	.size	.Lstr.432, 127

	.type	.Lstr.433,@object               # @str.433
.Lstr.433:
	.asciz	"  -p, --pass <integer>        Enable multipass ratecontrol\n                                  - 1: First pass, creates stats file\n                                  - 2: Last pass, does not overwrite stats file"
	.size	.Lstr.433, 209

	.type	.Lstr.434,@object               # @str.434
.Lstr.434:
	.asciz	"                                  - 3: Nth pass, overwrites stats file"
	.size	.Lstr.434, 71

	.type	.Lstr.435,@object               # @str.435
.Lstr.435:
	.asciz	"      --no-mbtree             Disable mb-tree ratecontrol."
	.size	.Lstr.435, 59

	.type	.Lstr.436,@object               # @str.436
.Lstr.436:
	.asciz	"      --zones <zone0>/<zone1>/...  Tweak the bitrate of regions of the video"
	.size	.Lstr.436, 77

	.type	.Lstr.437,@object               # @str.437
.Lstr.437:
	.asciz	"                              Each zone is of the form\n                                  <start frame>,<end frame>,<option>\n                                  where <option> is either\n                                      q=<integer> (force QP)\n                                  or  b=<float> (bitrate multiplier)"
	.size	.Lstr.437, 313

	.type	.Lstr.438,@object               # @str.438
.Lstr.438:
	.asciz	"      --qpfile <string>       Force frametypes and QPs for some or all frames\n                              Format of each line: framenumber frametype QP\n                              QP of -1 lets x264 choose. Frametypes: I,i,P,B,b.\n                              QPs are restricted by qpmin/qpmax."
	.size	.Lstr.438, 299

	.type	.Lstr.439,@object               # @str.439
.Lstr.439:
	.asciz	"Analysis:"
	.size	.Lstr.439, 10

	.type	.Lstr.440,@object               # @str.440
.Lstr.440:
	.asciz	"  -A, --partitions <string>   Partitions to consider [\"p8x8,b8x8,i8x8,i4x4\"]\n                                  - p8x8, p4x4, b8x8, i8x8, i4x4\n                                  - none, all\n                                  (p4x4 requires p8x8. i8x8 requires --8x8dct.)"
	.size	.Lstr.440, 268

	.type	.Lstr.441,@object               # @str.441
.Lstr.441:
	.asciz	"      --no-weightb            Disable weighted prediction for B-frames"
	.size	.Lstr.441, 71

	.type	.Lstr.442,@object               # @str.442
.Lstr.442:
	.asciz	"                                  - dia, hex, umh"
	.size	.Lstr.442, 50

	.type	.Lstr.443,@object               # @str.443
.Lstr.443:
	.asciz	"                                  - dia: diamond search, radius 1 (fast)\n                                  - hex: hexagonal search, radius 2\n                                  - umh: uneven multi-hexagon search\n                                  - esa: exhaustive search\n                                  - tesa: hadamard exhaustive search (slow)"
	.size	.Lstr.443, 345

	.type	.Lstr.444,@object               # @str.444
.Lstr.444:
	.asciz	"      --mvrange <integer>     Maximum motion vector length [-1 (auto)]"
	.size	.Lstr.444, 71

	.type	.Lstr.445,@object               # @str.445
.Lstr.445:
	.asciz	"      --mvrange-thread <int>  Minimum buffer between threads [-1 (auto)]"
	.size	.Lstr.445, 73

	.type	.Lstr.446,@object               # @str.446
.Lstr.446:
	.asciz	"                                  decision quality: 1=fast, 10=best."
	.size	.Lstr.446, 69

	.type	.Lstr.447,@object               # @str.447
.Lstr.447:
	.asciz	"                                  - 0: fullpel only (not recommended)\n                                  - 1: SAD mode decision, one qpel iteration\n                                  - 2: SATD mode decision\n                                  - 3-5: Progressively more qpel\n                                  - 6: RD mode decision for I/P-frames\n                                  - 7: RD mode decision for all frames\n                                  - 8: RD refinement for I/P-frames\n                                  - 9: RD refinement for all frames\n                                  - 10: QP-RD - requires trellis=2, aq-mode>0"
	.size	.Lstr.447, 626

	.type	.Lstr.448,@object               # @str.448
.Lstr.448:
	.asciz	"      --no-psy                Disable all visual optimizations that worsen\n                              both PSNR and SSIM."
	.size	.Lstr.448, 125

	.type	.Lstr.449,@object               # @str.449
.Lstr.449:
	.asciz	"      --no-mixed-refs         Don't decide references on a per partition basis"
	.size	.Lstr.449, 79

	.type	.Lstr.450,@object               # @str.450
.Lstr.450:
	.asciz	"      --no-chroma-me          Ignore chroma in motion estimation"
	.size	.Lstr.450, 65

	.type	.Lstr.451,@object               # @str.451
.Lstr.451:
	.asciz	"      --no-8x8dct             Disable adaptive spatial transform size"
	.size	.Lstr.451, 70

	.type	.Lstr.452,@object               # @str.452
.Lstr.452:
	.asciz	"      --no-fast-pskip         Disables early SKIP detection on P-frames"
	.size	.Lstr.452, 72

	.type	.Lstr.453,@object               # @str.453
.Lstr.453:
	.asciz	"      --no-dct-decimate       Disables coefficient thresholding on P-frames"
	.size	.Lstr.453, 76

	.type	.Lstr.454,@object               # @str.454
.Lstr.454:
	.asciz	"                                  Deadzones should be in the range 0 - 32."
	.size	.Lstr.454, 75

	.type	.Lstr.455,@object               # @str.455
.Lstr.455:
	.asciz	"      --cqm <string>          Preset quant matrices [\"flat\"]\n                                  - jvt, flat"
	.size	.Lstr.455, 107

	.type	.Lstr.456,@object               # @str.456
.Lstr.456:
	.asciz	"      --cqmfile <string>      Read custom quant matrices from a JM-compatible file"
	.size	.Lstr.456, 83

	.type	.Lstr.457,@object               # @str.457
.Lstr.457:
	.asciz	"                                  Overrides any other --cqm* options."
	.size	.Lstr.457, 70

	.type	.Lstr.458,@object               # @str.458
.Lstr.458:
	.asciz	"      --cqm4 <list>           Set all 4x4 quant matrices\n                                  Takes a comma-separated list of 16 integers."
	.size	.Lstr.458, 136

	.type	.Lstr.459,@object               # @str.459
.Lstr.459:
	.asciz	"      --cqm8 <list>           Set all 8x8 quant matrices\n                                  Takes a comma-separated list of 64 integers."
	.size	.Lstr.459, 136

	.type	.Lstr.460,@object               # @str.460
.Lstr.460:
	.asciz	"      --cqm4i, --cqm4p, --cqm8i, --cqm8p\n                              Set both luma and chroma quant matrices"
	.size	.Lstr.460, 111

	.type	.Lstr.461,@object               # @str.461
.Lstr.461:
	.asciz	"      --cqm4iy, --cqm4ic, --cqm4py, --cqm4pc\n                              Set individual quant matrices"
	.size	.Lstr.461, 105

	.type	.Lstr.462,@object               # @str.462
.Lstr.462:
	.asciz	"Video Usability Info (Annex E):"
	.size	.Lstr.462, 32

	.type	.Lstr.463,@object               # @str.463
.Lstr.463:
	.asciz	"The VUI settings are not used by the encoder but are merely suggestions to"
	.size	.Lstr.463, 75

	.type	.Lstr.464,@object               # @str.464
.Lstr.464:
	.asciz	"the playback equipment. See doc/vui.txt for details. Use at your own risk."
	.size	.Lstr.464, 75

	.type	.Lstr.465,@object               # @str.465
.Lstr.465:
	.asciz	"      --nal-hrd <string>      Signal HRD information (requires vbv-bufsize)\n                                  - none, vbr, cbr (cbr not allowed in .mp4)"
	.size	.Lstr.465, 153

	.type	.Lstr.466,@object               # @str.466
.Lstr.466:
	.asciz	"      --pic-struct            Force pic_struct in Picture Timing SEI"
	.size	.Lstr.466, 69

	.type	.Lstr.467,@object               # @str.467
.Lstr.467:
	.asciz	"Input/Output:"
	.size	.Lstr.467, 14

	.type	.Lstr.468,@object               # @str.468
.Lstr.468:
	.asciz	"  -o, --output                Specify output file"
	.size	.Lstr.468, 50

	.type	.Lstr.469,@object               # @str.469
.Lstr.469:
	.asciz	"      --index <string>        Filename for input index file"
	.size	.Lstr.469, 60

	.type	.Lstr.470,@object               # @str.470
.Lstr.470:
	.asciz	"      --sar width:height      Specify Sample Aspect Ratio"
	.size	.Lstr.470, 58

	.type	.Lstr.471,@object               # @str.471
.Lstr.471:
	.asciz	"      --fps <float|rational>  Specify framerate"
	.size	.Lstr.471, 48

	.type	.Lstr.472,@object               # @str.472
.Lstr.472:
	.asciz	"      --seek <integer>        First frame to encode"
	.size	.Lstr.472, 52

	.type	.Lstr.473,@object               # @str.473
.Lstr.473:
	.asciz	"      --frames <integer>      Maximum number of frames to encode"
	.size	.Lstr.473, 65

	.type	.Lstr.474,@object               # @str.474
.Lstr.474:
	.asciz	"      --level <string>        Specify level (as defined by Annex A)"
	.size	.Lstr.474, 68

	.type	.Lstr.475,@object               # @str.475
.Lstr.475:
	.asciz	"  -v, --verbose               Print stats for each frame"
	.size	.Lstr.475, 57

	.type	.Lstr.476,@object               # @str.476
.Lstr.476:
	.asciz	"      --no-progress           Don't show the progress indicator while encoding"
	.size	.Lstr.476, 79

	.type	.Lstr.477,@object               # @str.477
.Lstr.477:
	.asciz	"      --quiet                 Quiet Mode"
	.size	.Lstr.477, 41

	.type	.Lstr.478,@object               # @str.478
.Lstr.478:
	.asciz	"      --psnr                  Enable PSNR computation"
	.size	.Lstr.478, 54

	.type	.Lstr.479,@object               # @str.479
.Lstr.479:
	.asciz	"      --ssim                  Enable SSIM computation"
	.size	.Lstr.479, 54

	.type	.Lstr.480,@object               # @str.480
.Lstr.480:
	.asciz	"      --threads <integer>     Force a specific number of threads"
	.size	.Lstr.480, 65

	.type	.Lstr.481,@object               # @str.481
.Lstr.481:
	.asciz	"      --sliced-threads        Low-latency but lower-efficiency threading"
	.size	.Lstr.481, 73

	.type	.Lstr.482,@object               # @str.482
.Lstr.482:
	.asciz	"      --thread-input          Run Avisynth in its own thread"
	.size	.Lstr.482, 61

	.type	.Lstr.483,@object               # @str.483
.Lstr.483:
	.asciz	"      --sync-lookahead <integer> Number of buffer frames for threaded lookahead"
	.size	.Lstr.483, 80

	.type	.Lstr.484,@object               # @str.484
.Lstr.484:
	.asciz	"      --non-deterministic     Slightly improve quality of SMP, at the cost of repeatability"
	.size	.Lstr.484, 92

	.type	.Lstr.485,@object               # @str.485
.Lstr.485:
	.asciz	"      --asm <integer>         Override CPU detection"
	.size	.Lstr.485, 53

	.type	.Lstr.486,@object               # @str.486
.Lstr.486:
	.asciz	"      --no-asm                Disable all CPU optimizations"
	.size	.Lstr.486, 60

	.type	.Lstr.487,@object               # @str.487
.Lstr.487:
	.asciz	"      --visualize             Show MB types overlayed on the encoded video"
	.size	.Lstr.487, 75

	.type	.Lstr.488,@object               # @str.488
.Lstr.488:
	.asciz	"      --dump-yuv <string>     Save reconstructed frames"
	.size	.Lstr.488, 56

	.type	.Lstr.489,@object               # @str.489
.Lstr.489:
	.asciz	"      --aud                   Use access unit delimiters"
	.size	.Lstr.489, 57

	.type	.Lstr.490,@object               # @str.490
.Lstr.490:
	.asciz	"      --force-cfr             Force constant framerate timestamp generation"
	.size	.Lstr.490, 76

	.type	.Lstr.491,@object               # @str.491
.Lstr.491:
	.asciz	"      --tcfile-in <string>    Force timestamp generation with timecode file"
	.size	.Lstr.491, 76

	.type	.Lstr.492,@object               # @str.492
.Lstr.492:
	.asciz	"      --tcfile-out <string>   Output timecode v2 file from input timestamps"
	.size	.Lstr.492, 76

	.type	.Lstr.493,@object               # @str.493
.Lstr.493:
	.asciz	"      --timebase <int/int>    Specify timebase numerator and denominator\n                 <integer>    Specify timebase numerator for input timecode file\n                              or specify timebase denominator for other input"
	.size	.Lstr.493, 232

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
