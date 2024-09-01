	.text
	.file	"common.c"
	.globl	spec_strdup                     # -- Begin function spec_strdup
	.p2align	4, 0x90
	.type	spec_strdup,@function
spec_strdup:                            # @spec_strdup
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	callq	strlen@PLT
	movq	%rax, %r14
	movq	%rax, %r15
	shlq	$32, %r15
	movabsq	$4294967296, %rdi               # imm = 0x100000000
	addq	%r15, %rdi
	sarq	$32, %rdi
	callq	malloc@PLT
	testl	%r14d, %r14d
	jle	.LBB0_2
# %bb.1:                                # %for.body.preheader
	andl	$2147483647, %r14d              # imm = 0x7FFFFFFF
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	movq	%rax, %rbx
	callq	memcpy@PLT
	movq	%rbx, %rax
.LBB0_2:                                # %for.cond.cleanup
	sarq	$32, %r15
	movb	$0, (%rax,%r15)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	spec_strdup, .Lfunc_end0-spec_strdup
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function x264_param_default
.LCPI1_0:
	.long	1                               # 0x1
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI1_1:
	.long	5                               # 0x5
	.long	0                               # 0x0
	.long	2                               # 0x2
	.long	2                               # 0x2
.LCPI1_2:
	.long	2                               # 0x2
	.long	0                               # 0x0
	.long	3                               # 0x3
	.long	250                             # 0xfa
.LCPI1_3:
	.long	3                               # 0x3
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	2                               # 0x2
.LCPI1_4:
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
.LCPI1_5:
	.long	1                               # 0x1
	.long	23                              # 0x17
	.long	10                              # 0xa
	.long	51                              # 0x33
.LCPI1_6:
	.long	0x3f666666                      # float 0.899999976
	.long	0x3fb33333                      # float 1.39999998
	.zero	4
	.zero	4
.LCPI1_7:
	.long	0x3f19999a                      # float 0.600000024
	.long	0x3f000000                      # float 0.5
	.zero	4
	.zero	4
.LCPI1_9:
	.long	16                              # 0x10
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	7                               # 0x7
.LCPI1_10:
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	1                               # 0x1
.LCPI1_11:
	.long	3                               # 0x3
	.long	275                             # 0x113
	.long	1                               # 0x1
	.long	2                               # 0x2
.LCPI1_12:
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
.LCPI1_13:
	.long	1                               # 0x1
	.long	21                              # 0x15
	.long	11                              # 0xb
	.long	0                               # 0x0
.LCPI1_14:
	.zero	16,16
.LCPI1_15:
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI1_8:
	.long	0x3f800000                      # float 1
	.text
	.globl	x264_param_default
	.p2align	4, 0x90
	.type	x264_param_default,@function
x264_param_default:                     # @x264_param_default
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$704, %edx                      # imm = 0x2C0
	xorl	%esi, %esi
	callq	memset@PLT
	callq	x264_cpu_detect@PLT
	movl	%eax, (%rbx)
	movl	$0, 4(%rbx)
	movabsq	$-4294967295, %rax              # imm = 0xFFFFFFFF00000001
	movq	%rax, 28(%rbx)
	movsd	.LCPI1_0(%rip), %xmm0           # xmm0 = [1,4294967295,0,0]
	movups	%xmm0, 12(%rbx)
	movaps	.LCPI1_1(%rip), %xmm0           # xmm0 = [5,0,2,2]
	movups	%xmm0, 56(%rbx)
	movabsq	$4294967321, %rax               # imm = 0x100000019
	movq	%rax, 652(%rbx)
	movq	$0, 684(%rbx)
	movl	$0, 692(%rbx)
	movaps	.LCPI1_2(%rip), %xmm0           # xmm0 = [2,0,3,250]
	movups	%xmm0, 72(%rbx)
	movabsq	$171798691840, %rax             # imm = 0x2800000000
	movq	%rax, 88(%rbx)
	movaps	.LCPI1_3(%rip), %xmm0           # xmm0 = [3,1,0,2]
	movups	%xmm0, 100(%rbx)
	movaps	.LCPI1_4(%rip), %xmm0           # xmm0 = [1,0,0,1]
	movups	%xmm0, 116(%rbx)
	movabsq	$4735535008180076544, %rax      # imm = 0x41B8000000000000
	movq	%rax, 508(%rbx)
	movq	$1065353216, 520(%rbx)          # imm = 0x3F800000
	movl	$0, 528(%rbx)
	movaps	.LCPI1_5(%rip), %xmm0           # xmm0 = [1,23,10,51]
	movups	%xmm0, 488(%rbx)
	movl	$4, 504(%rbx)
	movsd	.LCPI1_6(%rip), %xmm0           # xmm0 = [8.99999976E-1,1.39999998E+0,0.0E+0,0.0E+0]
	movsd	%xmm0, 532(%rbx)
	movabsq	$5362837094, %rax               # imm = 0x13FA66666
	movq	%rax, 540(%rbx)
	movl	$1065353216, 548(%rbx)          # imm = 0x3F800000
	movq	$40, 556(%rbx)
	movq	$.L.str, 568(%rbx)
	movl	$0, 576(%rbx)
	movq	$.L.str, 584(%rbx)
	movsd	.LCPI1_7(%rip), %xmm0           # xmm0 = [6.00000024E-1,5.0E-1,0.0E+0,0.0E+0]
	movsd	%xmm0, 592(%rbx)
	movl	$1101004800, 600(%rbx)          # imm = 0x41A00000
	movl	$0, 616(%rbx)
	movl	$1, 552(%rbx)
	movq	$x264_log_default, 352(%rbx)
	movq	$0, 360(%rbx)
	movl	$2, 368(%rbx)
	movss	.LCPI1_8(%rip), %xmm0           # xmm0 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movlps	%xmm0, 456(%rbx)
	movaps	.LCPI1_9(%rip), %xmm0           # xmm0 = [16,4294967295,4294967295,7]
	movups	%xmm0, 416(%rbx)
	movaps	.LCPI1_10(%rip), %xmm0          # xmm0 = [1,1,0,1]
	movups	%xmm0, 400(%rbx)
	movl	$1, 448(%rbx)
	movaps	.LCPI1_11(%rip), %xmm0          # xmm0 = [3,275,1,2]
	movups	%xmm0, 384(%rbx)
	movaps	.LCPI1_12(%rip), %xmm0          # xmm0 = [1,1,1,1]
	movups	%xmm0, 432(%rbx)
	movaps	.LCPI1_13(%rip), %xmm0          # xmm0 = [1,21,11,0]
	movups	%xmm0, 464(%rbx)
	movl	$0, 480(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 132(%rbx)
	movaps	.LCPI1_14(%rip), %xmm1          # xmm1 = [16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16]
	movups	%xmm1, 160(%rbx)
	movups	%xmm1, 176(%rbx)
	movups	%xmm1, 192(%rbx)
	movups	%xmm1, 208(%rbx)
	movups	%xmm1, 224(%rbx)
	movups	%xmm1, 240(%rbx)
	movups	%xmm1, 256(%rbx)
	movups	%xmm1, 272(%rbx)
	movups	%xmm1, 288(%rbx)
	movups	%xmm1, 304(%rbx)
	movups	%xmm1, 320(%rbx)
	movups	%xmm1, 336(%rbx)
	movabsq	$4294967297, %rax               # imm = 0x100000001
	movq	%rax, 636(%rbx)
	movl	$0, 632(%rbx)
	movl	$1, 648(%rbx)
	movups	%xmm0, 40(%rbx)
	movsd	.LCPI1_15(%rip), %xmm0          # xmm0 = [0,1,0,0]
	movups	%xmm0, 668(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	x264_param_default, .Lfunc_end1-x264_param_default
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_log_default
	.type	x264_log_default,@function
x264_log_default:                       # @x264_log_default
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movl	$.L.str.271, %edx
	cmpl	$3, %esi
	ja	.LBB2_2
# %bb.1:                                # %switch.lookup
	movl	%esi, %eax
	movq	.Lswitch.table.x264_log(,%rax,8), %rdx
.LBB2_2:                                # %sw.epilog
	movq	stderr@GOTPCREL(%rip), %r15
	movq	(%r15), %rdi
	movl	$.L.str.272, %esi
	xorl	%eax, %eax
	callq	fprintf@PLT
	movq	(%r15), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	vfprintf@PLT                    # TAILCALL
.Lfunc_end2:
	.size	x264_log_default, .Lfunc_end2-x264_log_default
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function x264_param_default_preset
.LCPI3_0:
	.long	0x40000000                      # float 2
	.long	0x3f333333                      # float 0.699999988
	.zero	4
	.zero	4
.LCPI3_1:
	.long	0x3f8ccccd                      # float 1.10000002
	.long	0x3f8ccccd                      # float 1.10000002
	.zero	4
	.zero	4
	.text
	.globl	x264_param_default_preset
	.p2align	4, 0x90
	.type	x264_param_default_preset,@function
x264_param_default_preset:              # @x264_param_default_preset
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
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	x264_param_default
	testq	%r14, %r14
	je	.LBB3_16
# %bb.1:                                # %land.lhs.true
	movl	$.L.str.212, %esi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB3_12
# %bb.2:                                # %if.else.i
	movl	$.L.str.213, %esi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB3_13
# %bb.3:                                # %if.else27.i
	movl	$.L.str.214, %esi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB3_14
# %bb.4:                                # %if.else44.i
	movl	$.L.str.215, %esi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB3_53
# %bb.5:                                # %if.else56.i
	movl	$.L.str.216, %esi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB3_54
# %bb.6:                                # %if.else65.i
	movl	$.L.str.217, %esi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB3_16
# %bb.7:                                # %if.else69.i
	movl	$.L.str.218, %esi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB3_55
# %bb.8:                                # %if.else82.i
	movl	$.L.str.219, %esi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB3_56
# %bb.9:                                # %if.else100.i
	movl	$.L.str.220, %esi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB3_58
# %bb.10:                               # %if.else121.i
	movl	$.L.str.221, %esi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB3_59
# %bb.11:                               # %x264_param_apply_preset.exit
	movl	$.L.str.222, %edx
	xorl	%edi, %edi
	xorl	%esi, %esi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	x264_log
	jmp	.LBB3_51
.LBB3_12:                               # %if.then.i
	movl	$1, 80(%rbx)
	movl	$0, 92(%rbx)
	movl	$0, 116(%rbx)
	movl	$0, 128(%rbx)
	movq	$0, 100(%rbx)
	movl	$0, 412(%rbx)
	movl	$0, 428(%rbx)
	movl	$0, 544(%rbx)
	movq	$0, 436(%rbx)
	movl	$0, 552(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 384(%rbx)
	jmp	.LBB3_16
.LBB3_13:                               # %if.then11.i
	movl	$3, 388(%rbx)
	movl	$0, 412(%rbx)
	movl	$1, 428(%rbx)
	jmp	.LBB3_15
.LBB3_14:                               # %if.then30.i
	movl	$1, 412(%rbx)
	movl	$2, 428(%rbx)
.LBB3_15:                               # %if.end
	movl	$1, 80(%rbx)
	movq	$0, 436(%rbx)
	movl	$0, 552(%rbx)
	movl	$0, 396(%rbx)
.LBB3_16:                               # %if.end
	xorl	%ebp, %ebp
	testq	%r15, %r15
	je	.LBB3_52
# %bb.17:                               # %land.lhs.true2
	movq	%r15, %rdi
	callq	strlen@PLT
	movq	%rax, %r12
	movslq	%r12d, %rdi
	addq	$27, %rdi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB3_50
# %bb.18:                               # %if.end.i
	movq	%rax, %r14
	addq	$27, %r14
	andq	$-16, %r14
	movq	%rax, -8(%r14)
	movl	%r12d, -12(%r14)
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	strcpy@PLT
	movl	$.L.str.223, %esi
	movq	%r14, %rdi
	callq	strtok@PLT
	testq	%rax, %rax
	je	.LBB3_49
# %bb.19:                               # %while.body.lr.ph.i
	movq	%rax, %r15
	movabsq	$4294967297, %r12               # imm = 0x100000001
	xorl	%r13d, %r13d
	jmp	.LBB3_23
	.p2align	4, 0x90
.LBB3_20:                               # %if.then7.i
                                        #   in Loop: Header=BB3_23 Depth=1
	testl	%r13d, %r13d
	je	.LBB3_39
.LBB3_21:                               # %psy_failure.i
                                        #   in Loop: Header=BB3_23 Depth=1
	incl	%r13d
	movl	$.L.str.232, %edx
	xorl	%edi, %edi
	movl	$1, %esi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	x264_log
.LBB3_22:                               # %if.end137.i
                                        #   in Loop: Header=BB3_23 Depth=1
	movl	$.L.str.223, %esi
	xorl	%edi, %edi
	callq	strtok@PLT
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB3_49
.LBB3_23:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.224, %esi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	strncmp@PLT
	testl	%eax, %eax
	je	.LBB3_20
# %bb.24:                               # %if.else.i15
                                        #   in Loop: Header=BB3_23 Depth=1
	movl	$.L.str.225, %esi
	movl	$9, %edx
	movq	%r15, %rdi
	callq	strncmp@PLT
	testl	%eax, %eax
	je	.LBB3_35
# %bb.25:                               # %if.else24.i
                                        #   in Loop: Header=BB3_23 Depth=1
	movl	$.L.str.226, %esi
	movl	$5, %edx
	movq	%r15, %rdi
	callq	strncmp@PLT
	testl	%eax, %eax
	je	.LBB3_37
# %bb.26:                               # %if.else46.i
                                        #   in Loop: Header=BB3_23 Depth=1
	movl	$.L.str.227, %esi
	movl	$5, %edx
	movq	%r15, %rdi
	callq	strncmp@PLT
	testl	%eax, %eax
	je	.LBB3_40
# %bb.27:                               # %if.else62.i
                                        #   in Loop: Header=BB3_23 Depth=1
	movl	$.L.str.145, %esi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	strncmp@PLT
	testl	%eax, %eax
	je	.LBB3_42
# %bb.28:                               # %if.else72.i
                                        #   in Loop: Header=BB3_23 Depth=1
	movl	$.L.str.146, %esi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	strncmp@PLT
	testl	%eax, %eax
	je	.LBB3_44
# %bb.29:                               # %if.else84.i
                                        #   in Loop: Header=BB3_23 Depth=1
	movl	$.L.str.228, %esi
	movl	$10, %edx
	movq	%r15, %rdi
	callq	strncmp@PLT
	testl	%eax, %eax
	je	.LBB3_47
# %bb.30:                               # %if.else90.i
                                        #   in Loop: Header=BB3_23 Depth=1
	movl	$.L.str.229, %esi
	movl	$11, %edx
	movq	%r15, %rdi
	callq	strncmp@PLT
	testl	%eax, %eax
	je	.LBB3_48
# %bb.31:                               # %if.else96.i
                                        #   in Loop: Header=BB3_23 Depth=1
	movl	$.L.str.230, %esi
	movl	$6, %edx
	movq	%r15, %rdi
	callq	strncmp@PLT
	testl	%eax, %eax
	jne	.LBB3_57
# %bb.32:                               # %if.then99.i
                                        #   in Loop: Header=BB3_23 Depth=1
	testl	%r13d, %r13d
	jne	.LBB3_21
# %bb.33:                               # %if.end103.i
                                        #   in Loop: Header=BB3_23 Depth=1
	movl	80(%rbx), %ecx
	movl	388(%rbx), %eax
	leal	(%rcx,%rcx), %edx
	cmpl	$2, %ecx
	movl	$1, %r13d
	cmovll	%r13d, %edx
	movl	%edx, 80(%rbx)
	movq	$-1, 120(%rbx)
	movl	$1045220557, 460(%rbx)          # imm = 0x3E4CCCCD
	movl	$1067869798, 548(%rbx)          # imm = 0x3FA66666
	testb	$16, %al
	je	.LBB3_22
# %bb.34:                               # %if.then122.i
                                        #   in Loop: Header=BB3_23 Depth=1
	orl	$32, %eax
	movl	%eax, 388(%rbx)
	jmp	.LBB3_22
	.p2align	4, 0x90
.LBB3_35:                               # %if.then13.i
                                        #   in Loop: Header=BB3_23 Depth=1
	testl	%r13d, %r13d
	jne	.LBB3_21
# %bb.36:                               # %if.end17.i
                                        #   in Loop: Header=BB3_23 Depth=1
	movl	80(%rbx), %eax
	leal	(%rax,%rax), %ecx
	cmpl	$2, %eax
	movl	$1, %r13d
	cmovll	%r13d, %ecx
	movl	%ecx, 80(%rbx)
	movq	%r12, 120(%rbx)
	movl	$1053609165, 456(%rbx)          # imm = 0x3ECCCCCD
	movl	$1058642330, 548(%rbx)          # imm = 0x3F19999A
	addl	$2, 100(%rbx)
	jmp	.LBB3_22
.LBB3_37:                               # %if.then27.i
                                        #   in Loop: Header=BB3_23 Depth=1
	testl	%r13d, %r13d
	jne	.LBB3_21
# %bb.38:                               # %if.end31.i
                                        #   in Loop: Header=BB3_23 Depth=1
	movabsq	$-4294967298, %rax              # imm = 0xFFFFFFFEFFFFFFFE
	movq	%rax, 120(%rbx)
	movl	$1048576000, 460(%rbx)          # imm = 0x3E800000
	movl	$0, 448(%rbx)
	movsd	.LCPI3_1(%rip), %xmm0           # xmm0 = [1.10000002E+0,1.10000002E+0,0.0E+0,0.0E+0]
	movsd	%xmm0, 536(%rbx)
	movl	$1056964608, 548(%rbx)          # imm = 0x3F000000
	movabsq	$25769803782, %rax              # imm = 0x600000006
	movq	%rax, 468(%rbx)
	movl	$1061997773, 592(%rbx)          # imm = 0x3F4CCCCD
	movl	$1, %r13d
	jmp	.LBB3_22
.LBB3_39:                               # %if.end10.i
                                        #   in Loop: Header=BB3_23 Depth=1
	movq	$-1, 120(%rbx)
	movl	$1041865114, 460(%rbx)          # imm = 0x3E19999A
	movl	$1, %r13d
	jmp	.LBB3_22
.LBB3_40:                               # %if.then49.i
                                        #   in Loop: Header=BB3_23 Depth=1
	testl	%r13d, %r13d
	jne	.LBB3_21
# %bb.41:                               # %if.end53.i
                                        #   in Loop: Header=BB3_23 Depth=1
	movabsq	$-8589934595, %rax              # imm = 0xFFFFFFFDFFFFFFFD
	movq	%rax, 120(%rbx)
	movsd	.LCPI3_0(%rip), %xmm0           # xmm0 = [2.0E+0,6.99999988E-1,0.0E+0,0.0E+0]
	movsd	%xmm0, 456(%rbx)
	movl	$1067030938, 548(%rbx)          # imm = 0x3F99999A
	movl	$1, %r13d
	jmp	.LBB3_22
.LBB3_42:                               # %if.then65.i
                                        #   in Loop: Header=BB3_23 Depth=1
	testl	%r13d, %r13d
	jne	.LBB3_21
# %bb.43:                               # %if.end69.i
                                        #   in Loop: Header=BB3_23 Depth=1
	movl	$0, 544(%rbx)
	jmp	.LBB3_46
.LBB3_44:                               # %if.then75.i
                                        #   in Loop: Header=BB3_23 Depth=1
	testl	%r13d, %r13d
	jne	.LBB3_21
# %bb.45:                               # %if.end79.i
                                        #   in Loop: Header=BB3_23 Depth=1
	movl	$2, 544(%rbx)
.LBB3_46:                               # %if.end137.i
                                        #   in Loop: Header=BB3_23 Depth=1
	movl	$0, 464(%rbx)
	movl	$1, %r13d
	jmp	.LBB3_22
.LBB3_47:                               # %if.then87.i
                                        #   in Loop: Header=BB3_23 Depth=1
	movl	$0, 116(%rbx)
	movl	$0, 128(%rbx)
	movq	$0, 396(%rbx)
	jmp	.LBB3_22
.LBB3_48:                               # %if.then93.i
                                        #   in Loop: Header=BB3_23 Depth=1
	movl	$0, 556(%rbx)
	movl	$0, 16(%rbx)
	movl	$0, 100(%rbx)
	movl	$1, 8(%rbx)
	movl	$0, 648(%rbx)
	jmp	.LBB3_22
.LBB3_49:                               # %x264_param_apply_tune.exit
	movq	-8(%r14), %rdi
	callq	free@PLT
	jmp	.LBB3_52
.LBB3_50:                               # %x264_malloc.exit.thread.i
	movl	$.L.str.156, %edx
	xorl	%edi, %edi
	xorl	%esi, %esi
	movl	%r12d, %ecx
	xorl	%eax, %eax
	callq	x264_log
.LBB3_51:                               # %return
	movl	$-1, %ebp
.LBB3_52:                               # %return
	movl	%ebp, %eax
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
.LBB3_53:                               # %if.then47.i
	.cfi_def_cfa_offset 64
	movl	$0, 436(%rbx)
	movl	$2, 80(%rbx)
	movl	$4, 428(%rbx)
	movl	$1, 396(%rbx)
	movl	$20, 556(%rbx)
	jmp	.LBB3_16
.LBB3_54:                               # %if.then59.i
	movl	$2, 80(%rbx)
	movl	$6, 428(%rbx)
	movl	$30, 556(%rbx)
	jmp	.LBB3_16
.LBB3_55:                               # %if.then72.i
	movl	$2, 412(%rbx)
	movl	$8, 428(%rbx)
	movl	$5, 80(%rbx)
	movl	$2, 104(%rbx)
	movl	$3, 404(%rbx)
	movl	$50, 556(%rbx)
	jmp	.LBB3_16
.LBB3_56:                               # %if.then85.i
	movl	$2, 412(%rbx)
	movl	$9, 428(%rbx)
	movl	$8, 80(%rbx)
	movl	$2, 104(%rbx)
	movl	$3, 404(%rbx)
	orb	$32, 388(%rbx)
	movl	$2, 440(%rbx)
	jmp	.LBB3_61
.LBB3_57:                               # %x264_free.exit.i
	movl	$.L.str.231, %edx
	xorl	%edi, %edi
	xorl	%esi, %esi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	x264_log
	movq	-8(%r14), %rdi
	callq	free@PLT
	jmp	.LBB3_51
.LBB3_58:                               # %if.then103.i
	movabsq	$103079215106, %rax             # imm = 0x1800000002
	movq	%rax, 412(%rbx)
	movl	$10, 428(%rbx)
	movl	$16, 80(%rbx)
	movl	$3, 404(%rbx)
	orb	$32, 388(%rbx)
	movl	$2, 440(%rbx)
	movabsq	$8589934600, %rax               # imm = 0x200000008
	jmp	.LBB3_60
.LBB3_59:                               # %if.then124.i
	movabsq	$103079215108, %rax             # imm = 0x1800000004
	movq	%rax, 412(%rbx)
	movl	$10, 428(%rbx)
	movl	$16, 80(%rbx)
	movl	$3, 404(%rbx)
	orb	$32, 388(%rbx)
	movq	$2, 440(%rbx)
	movabsq	$8589934608, %rax               # imm = 0x200000010
.LBB3_60:                               # %if.end
	movq	%rax, 100(%rbx)
.LBB3_61:                               # %if.end
	movl	$60, 556(%rbx)
	jmp	.LBB3_16
.Lfunc_end3:
	.size	x264_param_default_preset, .Lfunc_end3-x264_param_default_preset
	.cfi_endproc
                                        # -- End function
	.globl	x264_param_apply_fastfirstpass  # -- Begin function x264_param_apply_fastfirstpass
	.p2align	4, 0x90
	.type	x264_param_apply_fastfirstpass,@function
x264_param_apply_fastfirstpass:         # @x264_param_apply_fastfirstpass
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	$0, 560(%rdi)
	je	.LBB4_3
# %bb.1:                                # %land.lhs.true
	cmpl	$0, 576(%rdi)
	je	.LBB4_2
.LBB4_3:                                # %if.end
	retq
.LBB4_2:                                # %if.then
	movl	$1, 80(%rdi)
	movq	$0, 388(%rdi)
	movl	$0, 412(%rdi)
	movl	428(%rdi), %eax
	cmpl	$2, %eax
	movl	$2, %ecx
	cmovll	%eax, %ecx
	movl	%ecx, 428(%rdi)
	movabsq	$4294967296, %rax               # imm = 0x100000000
	movq	%rax, 440(%rdi)
	retq
.Lfunc_end4:
	.size	x264_param_apply_fastfirstpass, .Lfunc_end4-x264_param_apply_fastfirstpass
	.cfi_endproc
                                        # -- End function
	.globl	x264_param_apply_profile        # -- Begin function x264_param_apply_profile
	.p2align	4, 0x90
	.type	x264_param_apply_profile,@function
x264_param_apply_profile:               # @x264_param_apply_profile
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
	xorl	%ebp, %ebp
	testq	%rsi, %rsi
	je	.LBB5_17
# %bb.1:                                # %if.end
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB5_2
# %bb.6:                                # %if.else
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB5_7
# %bb.11:                               # %if.else16
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB5_8
# %bb.12:                               # %if.else20
	movl	$.L.str.6, %edx
	jmp	.LBB5_15
.LBB5_2:                                # %if.then2
	movq	$0, 392(%r14)
	movl	$0, 128(%r14)
	movl	$0, 144(%r14)
	movl	$0, 100(%r14)
	cmpl	$0, 136(%r14)
	je	.LBB5_4
# %bb.3:                                # %if.then5
	movl	$.L.str.2, %edx
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	x264_log
	jmp	.LBB5_16
.LBB5_7:                                # %if.then12
	movl	$0, 392(%r14)
	movl	$0, 144(%r14)
	jmp	.LBB5_8
.LBB5_4:                                # %if.end6
	cmpl	$0, 680(%r14)
	je	.LBB5_8
# %bb.5:                                # %if.then8
	movl	$.L.str.3, %edx
	xorl	%edi, %edi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	x264_log
.LBB5_8:                                # %if.end23
	movl	488(%r14), %eax
	cmpl	$1, %eax
	je	.LBB5_13
# %bb.9:                                # %if.end23
	testl	%eax, %eax
	jne	.LBB5_17
# %bb.10:                               # %land.lhs.true
	cmpl	$0, 492(%r14)
	jne	.LBB5_17
	jmp	.LBB5_14
.LBB5_13:                               # %land.lhs.true29
	movss	512(%r14), %xmm0                # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB5_17
	jp	.LBB5_17
.LBB5_14:                               # %if.then32
	movl	$.L.str.7, %edx
.LBB5_15:                               # %return
	xorl	%edi, %edi
	xorl	%esi, %esi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	x264_log
.LBB5_16:                               # %return
	movl	$-1, %ebp
.LBB5_17:                               # %return
	movl	%ebp, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	x264_param_apply_profile, .Lfunc_end5-x264_param_apply_profile
	.cfi_endproc
                                        # -- End function
	.globl	x264_log                        # -- Begin function x264_log
	.p2align	4, 0x90
	.type	x264_log,@function
x264_log:                               # @x264_log
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$216, %rsp
	.cfi_def_cfa_offset 240
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rcx, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	testb	%al, %al
	je	.LBB6_8
# %bb.7:                                # %entry
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm1, 96(%rsp)
	movaps	%xmm2, 112(%rsp)
	movaps	%xmm3, 128(%rsp)
	movaps	%xmm4, 144(%rsp)
	movaps	%xmm5, 160(%rsp)
	movaps	%xmm6, 176(%rsp)
	movaps	%xmm7, 192(%rsp)
.LBB6_8:                                # %entry
	testq	%rdi, %rdi
	je	.LBB6_3
# %bb.1:                                # %lor.lhs.false
	cmpl	%esi, 368(%rdi)
	jl	.LBB6_6
# %bb.2:                                # %if.else
	leaq	32(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 8(%rsp)
	movabsq	$206158430232, %rax             # imm = 0x3000000018
	movq	%rax, (%rsp)
	movq	360(%rdi), %rax
	movq	%rsp, %rcx
	movq	%rdi, %r8
	movq	%rax, %rdi
	callq	*352(%r8)
.LBB6_6:                                # %if.end8
	addq	$216, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB6_3:                                # %if.then2
	.cfi_def_cfa_offset 240
	movq	%rdx, %rbx
	leaq	32(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 8(%rsp)
	movabsq	$206158430232, %rax             # imm = 0x3000000018
	movq	%rax, (%rsp)
	movl	$.L.str.271, %edx
	cmpl	$3, %esi
	ja	.LBB6_5
# %bb.4:                                # %switch.lookup
	movl	%esi, %eax
	movq	.Lswitch.table.x264_log(,%rax,8), %rdx
.LBB6_5:                                # %x264_log_default.exit
	movq	stderr@GOTPCREL(%rip), %r14
	movq	(%r14), %rdi
	movl	$.L.str.272, %esi
	xorl	%eax, %eax
	callq	fprintf@PLT
	movq	(%r14), %rdi
	movq	%rsp, %rdx
	movq	%rbx, %rsi
	callq	vfprintf@PLT
	addq	$216, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	x264_log, .Lfunc_end6-x264_log
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function x264_param_parse
.LCPI7_0:
	.long	0x4e6e6b28                      # float 1.0E+9
.LCPI7_1:
	.long	0x447a0000                      # float 1000
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI7_2:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI7_3:
	.quad	0x4018000000000000              # double 6
.LCPI7_4:
	.quad	0x4024000000000000              # double 10
	.text
	.globl	x264_param_parse
	.p2align	4, 0x90
	.type	x264_param_parse,@function
x264_param_parse:                       # @x264_param_parse
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
	movl	$0, 4(%rsp)
	movl	$-1, %eax
	testq	%rsi, %rsi
	je	.LBB7_197
# %bb.1:                                # %if.end
	movq	%rsi, %r12
	movq	%rdi, %r14
	testq	%rdx, %rdx
	movl	$.L.str.8, %r15d
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	cmovneq	%rdx, %r15
	xorl	%ebx, %ebx
	cmpb	$61, (%r15)
	sete	%bl
	movq	%rsi, %rdi
	movl	$95, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	je	.LBB7_8
# %bb.2:                                # %if.then9
	movq	%r15, %r13
	movq	%r14, %r15
	movq	%r12, %rdi
	callq	strlen@PLT
	movq	%rax, %rbp
	movq	%rax, %r14
	shlq	$32, %r14
	movabsq	$4294967296, %rdi               # imm = 0x100000000
	addq	%r14, %rdi
	sarq	$32, %rdi
	callq	malloc@PLT
	movq	%r12, %rsi
	movq	%rax, %r12
	testl	%ebp, %ebp
	jle	.LBB7_4
# %bb.3:                                # %for.body.preheader.i
	andl	$2147483647, %ebp               # imm = 0x7FFFFFFF
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	memcpy@PLT
.LBB7_4:                                # %spec_strdup.exit
	sarq	$32, %r14
	movb	$0, (%r12,%r14)
	movq	%r12, %rdi
	movl	$95, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	movq	%r12, %rbp
	je	.LBB7_9
# %bb.5:                                # %while.body.preheader
	movq	%r15, %r14
	movq	%r13, %r15
	.p2align	4, 0x90
.LBB7_6:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movb	$45, (%rax)
	movq	%rbp, %rdi
	movl	$95, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	jne	.LBB7_6
# %bb.7:
	movq	%rbp, %r12
	addq	%rbx, %r15
	movzbl	(%r12), %eax
	addl	$-110, %eax
	jne	.LBB7_14
	jmp	.LBB7_10
.LBB7_8:
	xorl	%ebp, %ebp
	addq	%rbx, %r15
	movzbl	(%r12), %eax
	addl	$-110, %eax
	jne	.LBB7_14
	jmp	.LBB7_10
.LBB7_9:
	movq	%rbp, %r12
	movq	%r15, %r14
	movq	%r13, %r15
	addq	%rbx, %r15
	movzbl	(%r12), %eax
	addl	$-110, %eax
	jne	.LBB7_14
.LBB7_10:                               # %sub_1
	movzbl	1(%r12), %ecx
	addl	$-111, %ecx
	je	.LBB7_16
# %bb.11:                               # %if.end13.tail
	testl	%ecx, %ecx
	je	.LBB7_17
.LBB7_12:                               # %sub_02003
	testl	%eax, %eax
	jne	.LBB7_14
# %bb.13:                               # %sub_12004
	movzbl	1(%r12), %eax
	addl	$-111, %eax
.LBB7_14:                               # %lor.lhs.false.tail
	testl	%eax, %eax
	jne	.LBB7_19
# %bb.15:
	movl	$2, %eax
	jmp	.LBB7_18
.LBB7_16:                               # %sub_2
	movzbl	2(%r12), %ecx
	addl	$-45, %ecx
	testl	%ecx, %ecx
	jne	.LBB7_12
.LBB7_17:
	movl	$3, %eax
.LBB7_18:                               # %if.then19
	addq	%rax, %r12
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	testl	%eax, %eax
	movl	$.L.str.8, %eax
	movl	$.L.str.11, %r15d
	cmoveq	%rax, %r15
.LBB7_19:                               # %if.end22
	movl	$.L.str.12, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_155
# %bb.20:                               # %if.else
	movl	$.L.str.15, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_159
# %bb.21:                               # %if.else83
	movl	$.L.str.16, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_180
# %bb.22:                               # %if.else88
	movl	$.L.str.17, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_182
# %bb.23:                               # %if.else99
	movl	$.L.str.18, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_181
# %bb.24:                               # %lor.lhs.false102
	movl	$.L.str.19, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_181
# %bb.25:                               # %if.else107
	movl	$.L.str.20, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_198
# %bb.26:                               # %lor.lhs.false110
	movl	$.L.str.21, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_198
# %bb.27:                               # %if.else124
	movl	$.L.str.22, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_211
# %bb.28:                               # %if.else141
	movl	$.L.str.25, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_214
# %bb.29:                               # %if.else148
	movl	$.L.str.26, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_215
# %bb.30:                               # %if.else155
	movl	$.L.str.27, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_216
# %bb.31:                               # %if.else162
	movl	$.L.str.28, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_217
# %bb.32:                               # %if.else169
	movl	$.L.str.29, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_218
# %bb.33:                               # %if.else176
	movl	$.L.str.30, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_219
# %bb.34:                               # %if.else183
	movl	$.L.str.31, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_221
# %bb.35:                               # %if.else197
	movl	$.L.str.32, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_226
# %bb.36:                               # %if.else213
	movl	$.L.str.34, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_222
# %bb.37:                               # %lor.lhs.false216
	movl	$.L.str.35, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_222
# %bb.38:                               # %if.else221
	movq	%rbp, %r13
	movl	$.L.str.36, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_236
# %bb.39:                               # %if.else233
	movl	$.L.str.37, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_231
# %bb.40:                               # %lor.lhs.false236
	movl	$.L.str.38, %esi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_231
# %bb.41:                               # %if.else250
	movl	$.L.str.39, %esi
	movq	%r12, %rbp
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_242
# %bb.42:                               # %if.else263
	movl	$.L.str.40, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_247
# %bb.43:                               # %if.else268
	movl	$.L.str.41, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_249
# %bb.44:                               # %if.else273
	movl	$.L.str.42, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_253
# %bb.45:                               # %if.else283
	movl	$.L.str.43, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_259
# %bb.46:                               # %if.else288
	movl	$.L.str.44, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_263
# %bb.47:                               # %sub_02006
	movzbl	(%rbp), %ebx
	movl	%ebx, %r12d
	addl	$-110, %r12d
	movl	%r12d, %eax
	jne	.LBB7_50
# %bb.48:                               # %sub_12007
	movzbl	1(%rbp), %eax
	addl	$-102, %eax
	jne	.LBB7_50
# %bb.49:                               # %sub_22008
	movzbl	2(%rbp), %eax
.LBB7_50:                               # %if.else299.tail
	testl	%eax, %eax
	je	.LBB7_271
# %bb.51:                               # %if.else307
	movl	$.L.str.46, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_268
# %bb.52:                               # %lor.lhs.false310
	movl	$.L.str.47, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_268
# %bb.53:                               # %if.else338
	movl	$.L.str.50, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_275
# %bb.54:                               # %if.else343
	movl	$.L.str.51, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_279
# %bb.55:                               # %if.else348
	movl	$.L.str.52, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_283
# %bb.56:                               # %if.else353
	movl	$.L.str.53, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_288
# %bb.57:                               # %if.else358
	movl	$.L.str.54, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_289
# %bb.58:                               # %if.else363
	movl	$.L.str.55, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_295
# %bb.59:                               # %if.else368
	movl	$.L.str.56, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_296
# %bb.60:                               # %if.else374
	movl	$.L.str.57, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_297
# %bb.61:                               # %if.else385
	movl	$.L.str.58, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_298
# %bb.62:                               # %if.else390
	movl	$.L.str.59, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_299
# %bb.63:                               # %if.else406
	movl	$.L.str.62, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_304
# %bb.64:                               # %if.else412
	movl	$.L.str.63, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_301
# %bb.65:                               # %if.else429
	movl	$.L.str.64, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_305
# %bb.66:                               # %if.else440
	movl	$.L.str.65, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_306
# %bb.67:                               # %if.else453
	movl	$.L.str.66, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_307
# %bb.68:                               # %if.else466
	movl	$.L.str.67, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_311
# %bb.69:                               # %if.else475
	movl	$.L.str.68, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_312
# %bb.70:                               # %if.else484
	movl	$.L.str.69, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_313
# %bb.71:                               # %if.else493
	movl	$.L.str.70, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_314
# %bb.72:                               # %if.else502
	movl	$.L.str.71, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_318
# %bb.73:                               # %if.else511
	movl	$.L.str.72, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_319
# %bb.74:                               # %if.else520
	movl	$.L.str.73, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_321
# %bb.75:                               # %if.else525
	movl	$.L.str.74, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_335
# %bb.76:                               # %if.else530
	movl	$.L.str.75, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_325
# %bb.77:                               # %lor.lhs.false533
	movl	$.L.str.76, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_325
# %bb.78:                               # %if.else584
	movl	$.L.str.84, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_337
# %bb.79:                               # %if.else590
	movl	$.L.str.85, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_336
# %bb.80:                               # %lor.lhs.false593
	movl	$.L.str.86, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_336
# %bb.81:                               # %if.else599
	movl	$.L.str.87, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_340
# %bb.82:                               # %if.else605
	movl	$.L.str.88, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_338
# %bb.83:                               # %lor.lhs.false608
	movl	$.L.str.89, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_338
# %bb.84:                               # %if.else615
	movl	$.L.str.90, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_344
# %bb.85:                               # %sub_02010
	movl	%ebx, %eax
	addl	$-109, %eax
	jne	.LBB7_88
# %bb.86:                               # %sub_12011
	movzbl	1(%rbp), %eax
	addl	$-101, %eax
	jne	.LBB7_88
# %bb.87:                               # %sub_22012
	movzbl	2(%rbp), %eax
.LBB7_88:                               # %if.else621.tail
	testl	%eax, %eax
	je	.LBB7_348
# %bb.89:                               # %if.else628
	movl	$.L.str.92, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_349
# %bb.90:                               # %lor.lhs.false631
	movl	$.L.str.93, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_349
# %bb.91:                               # %if.else637
	movl	$.L.str.94, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_353
# %bb.92:                               # %lor.lhs.false640
	movl	$.L.str.95, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_353
# %bb.93:                               # %if.else646
	movl	$.L.str.96, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_357
# %bb.94:                               # %lor.lhs.false649
	movl	$.L.str.97, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_357
# %bb.95:                               # %if.else655
	movl	$.L.str.98, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_361
# %bb.96:                               # %lor.lhs.false658
	movl	$.L.str.99, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_361
# %bb.97:                               # %if.else664
	movl	$.L.str.100, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_365
# %bb.98:                               # %if.else705
	movl	$.L.str.105, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_370
# %bb.99:                               # %if.else711
	movl	$.L.str.106, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_371
# %bb.100:                              # %if.else717
	movl	$.L.str.107, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_372
# %bb.101:                              # %if.else723
	movl	$.L.str.108, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_373
# %bb.102:                              # %if.else729
	movl	$.L.str.109, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_377
# %bb.103:                              # %if.else735
	movl	$.L.str.110, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_378
# %bb.104:                              # %if.else741
	movl	$.L.str.111, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_379
# %bb.105:                              # %if.else748
	movl	$.L.str.112, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_383
# %bb.106:                              # %sub_02014
	testl	%r12d, %r12d
	jne	.LBB7_109
# %bb.107:                              # %sub_12015
	movzbl	1(%rbp), %r12d
	addl	$-114, %r12d
	jne	.LBB7_109
# %bb.108:                              # %sub_22016
	movzbl	2(%rbp), %r12d
.LBB7_109:                              # %if.else756.tail
	testl	%r12d, %r12d
	je	.LBB7_387
# %bb.110:                              # %if.else762
	movl	$.L.str.114, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_391
# %bb.111:                              # %sub_02018
	addl	$-113, %ebx
	jne	.LBB7_114
# %bb.112:                              # %sub_12019
	movzbl	1(%rbp), %ebx
	addl	$-112, %ebx
	jne	.LBB7_114
# %bb.113:                              # %sub_22020
	movzbl	2(%rbp), %ebx
.LBB7_114:                              # %if.else768.tail
	testl	%ebx, %ebx
	je	.LBB7_395
# %bb.115:                              # %lor.lhs.false771
	movl	$.L.str.116, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_395
# %bb.116:                              # %if.else779
	movl	$.L.str.117, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_399
# %bb.117:                              # %if.else788
	movl	$.L.str.118, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_403
# %bb.118:                              # %if.else795
	movl	$.L.str.119, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_407
# %bb.119:                              # %if.else801
	movl	$.L.str.120, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_411
# %bb.120:                              # %lor.lhs.false804
	movl	$.L.str.121, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_411
# %bb.121:                              # %if.else810
	movl	$.L.str.122, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_415
# %bb.122:                              # %lor.lhs.false813
	movl	$.L.str.123, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_415
# %bb.123:                              # %if.else819
	movl	$.L.str.124, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_419
# %bb.124:                              # %lor.lhs.false822
	movl	$.L.str.125, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_419
# %bb.125:                              # %if.else828
	movl	$.L.str.126, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_423
# %bb.126:                              # %if.else841
	movl	$.L.str.128, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_426
# %bb.127:                              # %if.else847
	movl	$.L.str.129, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_430
# %bb.128:                              # %if.else853
	movl	$.L.str.130, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_434
# %bb.129:                              # %if.else860
	movl	$.L.str.131, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_438
# %bb.130:                              # %lor.lhs.false863
	movl	$.L.str.132, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_438
# %bb.131:                              # %if.else870
	movl	$.L.str.133, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_442
# %bb.132:                              # %lor.lhs.false873
	movl	$.L.str.134, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_442
# %bb.133:                              # %if.else880
	movl	$.L.str.135, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_446
# %bb.134:                              # %if.else886
	movl	$.L.str.136, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_450
# %bb.135:                              # %if.else893
	movl	$.L.str.137, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_454
# %bb.136:                              # %if.else903
	movl	$.L.str.138, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_458
# %bb.137:                              # %if.else911
	movl	$.L.str.139, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_459
# %bb.138:                              # %if.else918
	movl	$.L.str.140, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_463
# %bb.139:                              # %if.else924
	movl	$.L.str.141, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_464
# %bb.140:                              # %if.else931
	movl	$.L.str.142, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_468
# %bb.141:                              # %lor.lhs.false934
	movl	$.L.str.143, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_468
# %bb.142:                              # %if.else941
	movl	$.L.str.144, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_472
# %bb.143:                              # %if.else947
	movl	$.L.str.145, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_473
# %bb.144:                              # %if.else953
	movl	$.L.str.146, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_474
# %bb.145:                              # %if.else959
	movl	$.L.str.147, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_475
# %bb.146:                              # %if.else964
	movl	$.L.str.148, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_476
# %bb.147:                              # %if.else969
	movl	$.L.str.149, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_480
# %bb.148:                              # %if.else977
	movl	$.L.str.150, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_481
# %bb.149:                              # %if.else983
	movl	$.L.str.151, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_482
# %bb.150:                              # %if.else988
	movl	$.L.str.152, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_483
# %bb.151:                              # %if.else996
	movl	$.L.str.153, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_484
# %bb.152:                              # %if.else1002
	movl	$.L.str.154, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_485
# %bb.153:                              # %if.else1007
	movl	$.L.str.155, %esi
	movq	%rbp, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	movl	$-1, %eax
	jne	.LBB7_197
# %bb.154:                              # %if.then1010
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	movl	%eax, 680(%r14)
	jmp	.LBB7_248
.LBB7_155:                              # %if.then25
	callq	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movsbq	(%r15), %rcx
	testb	$8, 1(%rax,%rcx,2)
	movq	%rbp, 40(%rsp)                  # 8-byte Spill
	jne	.LBB7_164
# %bb.156:                              # %cond.false
	movl	$.L.str.13, %esi
	movq	%r15, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_188
# %bb.157:                              # %lor.lhs.false35
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	movl	$1, %ebx
	testl	%eax, %eax
	jne	.LBB7_189
# %bb.158:
	xorl	%eax, %eax
	movl	%eax, (%r14)
	cmpl	$0, 4(%rsp)
	jne	.LBB7_168
	jmp	.LBB7_190
.LBB7_159:                              # %if.then75
	movl	$.L.str.13, %esi
	movq	%r15, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_187
# %bb.160:                              # %if.else79
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_162
# %bb.161:                              # %lor.lhs.false.i1611
	cmpb	$0, (%rcx)
	je	.LBB7_163
.LBB7_162:                              # %if.then.i1613
	movl	$1, 4(%rsp)
.LBB7_163:                              # %x264_atoi.exit1615
	movl	%eax, 4(%r14)
	xorl	%ebx, %ebx
	jmp	.LBB7_194
.LBB7_164:                              # %cond.true
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_166
# %bb.165:                              # %lor.lhs.false.i
	cmpb	$0, (%rcx)
	je	.LBB7_167
.LBB7_166:                              # %if.then.i
	movl	$1, 4(%rsp)
.LBB7_167:                              # %x264_atoi.exit
	xorl	%ebx, %ebx
	movl	%eax, (%r14)
	cmpl	$0, 4(%rsp)
	je	.LBB7_190
.LBB7_168:                              # %if.then45
	movl	%ebx, 36(%rsp)                  # 4-byte Spill
	movq	%r15, %rdi
	callq	strlen@PLT
	movq	%rax, %rbp
	movq	%rax, %rbx
	shlq	$32, %rbx
	movabsq	$4294967296, %rdi               # imm = 0x100000000
	addq	%rbx, %rdi
	sarq	$32, %rdi
	callq	malloc@PLT
	movq	%rax, %r13
	testl	%ebp, %ebp
	jle	.LBB7_170
# %bb.169:                              # %for.body.preheader.i1606
	andl	$2147483647, %ebp               # imm = 0x7FFFFFFF
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	memcpy@PLT
.LBB7_170:                              # %spec_strdup.exit1607
	sarq	$32, %rbx
	movb	$0, (%r13,%rbx)
	movl	$0, 4(%rsp)
	movq	%r14, 24(%rsp)                  # 8-byte Spill
	movl	$0, (%r14)
	movl	$.L.str.14, %esi
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r13, %rdi
	callq	strtok@PLT
	testq	%rax, %rax
	je	.LBB7_193
# %bb.171:                              # %for.cond50.preheader.lr.ph
	movq	x264_cpu_names@GOTPCREL(%rip), %rsi
	movl	16(%rsi), %r13d
	testl	%r13d, %r13d
	je	.LBB7_191
# %bb.172:
	movq	%rax, %rbp
	leaq	20(%rsi), %r14
	jmp	.LBB7_175
	.p2align	4, 0x90
.LBB7_173:                              # %for.end
                                        #   in Loop: Header=BB7_175 Depth=1
	movq	24(%rsp), %rax                  # 8-byte Reload
	orl	%r15d, (%rax)
.LBB7_174:                              # %for.inc70
                                        #   in Loop: Header=BB7_175 Depth=1
	movl	$.L.str.14, %esi
	xorl	%edi, %edi
	callq	strtok@PLT
	movq	%rax, %rbp
	testq	%rax, %rax
	movq	%r12, %rsi
	je	.LBB7_193
.LBB7_175:                              # %for.cond50.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_177 Depth 2
	movq	%rbp, %rdi
	movq	%rsi, %r12
	callq	strcmp@PLT
	movl	%r13d, %r15d
	testl	%eax, %eax
	je	.LBB7_173
# %bb.176:                              # %for.cond50.preheader1
                                        #   in Loop: Header=BB7_175 Depth=1
	movq	%r14, %rbx
	.p2align	4, 0x90
.LBB7_177:                              # %for.cond50
                                        #   Parent Loop BB7_175 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	16(%rbx), %r15d
	testl	%r15d, %r15d
	je	.LBB7_179
# %bb.178:                              # %land.rhs
                                        #   in Loop: Header=BB7_177 Depth=2
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	strcmp@PLT
	addq	$20, %rbx
	testl	%eax, %eax
	jne	.LBB7_177
	jmp	.LBB7_173
	.p2align	4, 0x90
.LBB7_179:                              # %for.cond50.if.then68_crit_edge
                                        #   in Loop: Header=BB7_175 Depth=1
	movl	$1, 4(%rsp)
	jmp	.LBB7_174
.LBB7_180:                              # %if.then86
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	movl	%eax, 8(%r14)
	movl	$1, %ebx
	jmp	.LBB7_194
.LBB7_181:                              # %if.then105
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	movl	%eax, 12(%r14)
	movl	$1, %ebx
	jmp	.LBB7_194
.LBB7_182:                              # %if.then91
	movl	$.L.str.13, %esi
	movq	%r15, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB7_206
# %bb.183:                              # %if.else95
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_185
# %bb.184:                              # %lor.lhs.false.i1619
	cmpb	$0, (%rcx)
	je	.LBB7_186
.LBB7_185:                              # %if.then.i1621
	movl	$1, 4(%rsp)
.LBB7_186:                              # %x264_atoi.exit1623
	movl	%eax, 16(%r14)
	xorl	%ebx, %ebx
	jmp	.LBB7_194
.LBB7_187:                              # %if.then78
	movl	$0, 4(%r14)
	xorl	%ebx, %ebx
	jmp	.LBB7_194
.LBB7_188:
	xorl	%ebx, %ebx
.LBB7_189:                              # %cond.true38
	callq	x264_cpu_detect@PLT
                                        # kill: def $eax killed $eax def $rax
	movl	%eax, (%r14)
	cmpl	$0, 4(%rsp)
	jne	.LBB7_168
.LBB7_190:
	movq	40(%rsp), %rbp                  # 8-byte Reload
	jmp	.LBB7_194
.LBB7_191:                              # %for.cond50.preheader.lr.ph.split.us
	movl	$1, 4(%rsp)
	.p2align	4, 0x90
.LBB7_192:                              # %for.cond50.preheader.us
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.14, %esi
	xorl	%edi, %edi
	callq	strtok@PLT
	testq	%rax, %rax
	jne	.LBB7_192
.LBB7_193:                              # %for.end71
	movq	16(%rsp), %rdi                  # 8-byte Reload
	callq	free@PLT
	movq	40(%rsp), %rbp                  # 8-byte Reload
	movl	36(%rsp), %ebx                  # 4-byte Reload
.LBB7_194:                              # %if.end1116
	testq	%rbp, %rbp
	je	.LBB7_196
# %bb.195:                              # %if.then1118
	movq	%rbp, %rdi
	callq	free@PLT
.LBB7_196:                              # %if.end1119
	cmpq	$0, 48(%rsp)                    # 8-byte Folded Reload
	sete	%al
	testl	%ebx, %ebx
	sete	%cl
	andb	%al, %cl
	movzbl	%cl, %eax
	xorl	%ecx, %ecx
	orl	4(%rsp), %eax
	sete	%cl
	leal	-2(,%rcx,2), %eax
.LBB7_197:                              # %cleanup
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
.LBB7_198:                              # %if.then113
	.cfi_def_cfa_offset 112
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	callq	strtod@PLT
	movq	8(%rsp), %rax
	cmpq	%r15, %rax
	je	.LBB7_200
# %bb.199:                              # %lor.lhs.false.i1627
	cmpb	$0, (%rax)
	je	.LBB7_201
.LBB7_200:                              # %if.then.i1628
	movl	$1, 4(%rsp)
.LBB7_201:                              # %x264_atof.exit
	movsd	.LCPI7_3(%rip), %xmm1           # xmm1 = [6.0E+0,0.0E+0]
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_207
# %bb.202:                              # %if.then117
	callq	strtod@PLT
	movq	8(%rsp), %rax
	cmpq	%r15, %rax
	je	.LBB7_204
# %bb.203:                              # %lor.lhs.false.i1632
	cmpb	$0, (%rax)
	je	.LBB7_205
.LBB7_204:                              # %if.then.i1634
	movl	$1, 4(%rsp)
.LBB7_205:                              # %x264_atof.exit1635
	mulsd	.LCPI7_4(%rip), %xmm0
	addsd	.LCPI7_2(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 32(%r14)
	xorl	%ebx, %ebx
	jmp	.LBB7_194
.LBB7_206:                              # %if.then94
	movl	$-1, 16(%r14)
	xorl	%ebx, %ebx
	jmp	.LBB7_194
.LBB7_207:                              # %if.else120
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_209
# %bb.208:                              # %lor.lhs.false.i1639
	cmpb	$0, (%rcx)
	je	.LBB7_210
.LBB7_209:                              # %if.then.i1641
	movl	$1, 4(%rsp)
.LBB7_210:                              # %x264_atoi.exit1643
	movl	%eax, 32(%r14)
	xorl	%ebx, %ebx
	jmp	.LBB7_194
.LBB7_211:                              # %if.then127
	leaq	44(%r14), %r13
	addq	$48, %r14
	xorl	%ebx, %ebx
	movl	$.L.str.23, %esi
	movq	%r15, %rdi
	movq	%r14, %rdx
	movq	%r13, %rcx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	movl	$0, %ecx
	cmpl	$2, %eax
	je	.LBB7_213
# %bb.212:                              # %land.rhs132
	movl	$.L.str.24, %esi
	movq	%r15, %rdi
	movq	%r14, %rdx
	movq	%r13, %rcx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	xorl	%ecx, %ecx
	cmpl	$2, %eax
	setne	%cl
.LBB7_213:                              # %land.end140
	movl	%ecx, 4(%rsp)
	jmp	.LBB7_194
.LBB7_214:                              # %if.then144
	addq	$52, %r14
	movl	$x264_overscan_names, %esi
	jmp	.LBB7_220
.LBB7_215:                              # %if.then151
	addq	$56, %r14
	movl	$x264_vidformat_names, %esi
	jmp	.LBB7_220
.LBB7_216:                              # %if.then158
	addq	$60, %r14
	movl	$x264_fullrange_names, %esi
	jmp	.LBB7_220
.LBB7_217:                              # %if.then165
	addq	$64, %r14
	movl	$x264_colorprim_names, %esi
	jmp	.LBB7_220
.LBB7_218:                              # %if.then172
	addq	$68, %r14
	movl	$x264_transfer_names, %esi
	jmp	.LBB7_220
.LBB7_219:                              # %if.then179
	addq	$72, %r14
	movl	$x264_colmatrix_names, %esi
.LBB7_220:                              # %if.end1116
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	parse_enum
	orl	%eax, 4(%rsp)
	xorl	%ebx, %ebx
	jmp	.LBB7_194
.LBB7_221:                              # %if.then186
	leaq	8(%rsp), %rsi
	xorl	%ebx, %ebx
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movl	%eax, 76(%r14)
	xorl	%ecx, %ecx
	cmpl	$6, %eax
	setae	%cl
	movl	%ecx, 4(%rsp)
	jmp	.LBB7_194
.LBB7_222:                              # %if.then219
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_224
# %bb.223:                              # %lor.lhs.false.i1662
	cmpb	$0, (%rcx)
	je	.LBB7_225
.LBB7_224:                              # %if.then.i1664
	movl	$1, 4(%rsp)
.LBB7_225:                              # %x264_atoi.exit1666
	movl	%eax, 80(%r14)
	xorl	%ebx, %ebx
	jmp	.LBB7_194
.LBB7_226:                              # %if.then200
	leaq	652(%r14), %r13
	addq	$656, %r14                      # imm = 0x290
	xorl	%ebx, %ebx
	movl	$.L.str.33, %esi
	movq	%r15, %rdi
	movq	%r13, %rdx
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	cmpl	$2, %eax
	je	.LBB7_194
# %bb.227:                              # %if.else205
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	callq	strtod@PLT
	movq	8(%rsp), %rax
	cmpq	%r15, %rax
	je	.LBB7_229
# %bb.228:                              # %lor.lhs.false.i1655
	cmpb	$0, (%rax)
	je	.LBB7_230
.LBB7_229:                              # %if.then.i1657
	movl	$1, 4(%rsp)
.LBB7_230:                              # %x264_atof.exit1658
	cvtsd2ss	%xmm0, %xmm0
	mulss	.LCPI7_1(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI7_2(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, (%r13)
	movl	$1000, (%r14)                   # imm = 0x3E8
	jmp	.LBB7_194
.LBB7_231:                              # %if.then239
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_233
# %bb.232:                              # %lor.lhs.false.i1678
	cmpb	$0, (%rcx)
	je	.LBB7_234
.LBB7_233:                              # %if.then.i1680
	movl	$1, 4(%rsp)
.LBB7_234:                              # %x264_atoi.exit1682
	movl	%eax, 88(%r14)
	cmpl	%eax, 84(%r14)
	jge	.LBB7_241
# %bb.235:                              # %if.then246
	movl	%eax, 84(%r14)
	jmp	.LBB7_241
.LBB7_236:                              # %if.then224
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_238
# %bb.237:                              # %lor.lhs.false.i1670
	cmpb	$0, (%rcx)
	je	.LBB7_239
.LBB7_238:                              # %if.then.i1672
	movl	$1, 4(%rsp)
.LBB7_239:                              # %x264_atoi.exit1674
	movl	%eax, 84(%r14)
	cmpl	%eax, 88(%r14)
	jle	.LBB7_241
# %bb.240:                              # %if.then229
	movl	%eax, 88(%r14)
.LBB7_241:
	movq	%r13, %rbp
	xorl	%ebx, %ebx
	jmp	.LBB7_194
.LBB7_242:                              # %if.then253
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	movl	%eax, 92(%r14)
	orl	4(%rsp), %eax
	je	.LBB7_258
# %bb.243:                              # %if.then259
	movl	$0, 4(%rsp)
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_245
# %bb.244:                              # %lor.lhs.false.i1686
	cmpb	$0, (%rcx)
	je	.LBB7_246
.LBB7_245:                              # %if.then.i1688
	movl	$1, 4(%rsp)
.LBB7_246:                              # %x264_atoi.exit1690
	movl	%eax, 92(%r14)
	jmp	.LBB7_258
.LBB7_247:                              # %if.then266
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	movl	%eax, 96(%r14)
.LBB7_248:                              # %if.end1116
	movl	$1, %ebx
	jmp	.LBB7_294
.LBB7_249:                              # %if.then271
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_251
# %bb.250:                              # %lor.lhs.false.i1694
	cmpb	$0, (%rcx)
	je	.LBB7_252
.LBB7_251:                              # %if.then.i1696
	movl	$1, 4(%rsp)
.LBB7_252:                              # %x264_atoi.exit1698
	movl	%eax, 100(%r14)
	jmp	.LBB7_293
.LBB7_253:                              # %if.then276
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	movl	%eax, 104(%r14)
	cmpl	$0, 4(%rsp)
	je	.LBB7_258
# %bb.254:                              # %if.then279
	movl	$0, 4(%rsp)
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_256
# %bb.255:                              # %lor.lhs.false.i1702
	cmpb	$0, (%rcx)
	je	.LBB7_257
.LBB7_256:                              # %if.then.i1704
	movl	$1, 4(%rsp)
.LBB7_257:                              # %x264_atoi.exit1706
	movl	%eax, 104(%r14)
.LBB7_258:
	movq	%r13, %rbp
	movl	$1, %ebx
	jmp	.LBB7_194
.LBB7_259:                              # %if.then286
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_261
# %bb.260:                              # %lor.lhs.false.i1710
	cmpb	$0, (%rcx)
	je	.LBB7_262
.LBB7_261:                              # %if.then.i1712
	movl	$1, 4(%rsp)
.LBB7_262:                              # %x264_atoi.exit1714
	movl	%eax, 108(%r14)
	jmp	.LBB7_293
.LBB7_263:                              # %if.then291
	movq	%r14, %rdx
	addq	$112, %rdx
	movl	$x264_b_pyramid_names, %esi
	movq	%r15, %rdi
	movq	%rdx, %r14
	callq	parse_enum
	orl	%eax, 4(%rsp)
	je	.LBB7_293
# %bb.264:                              # %if.then295
	movl	$0, 4(%rsp)
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_266
# %bb.265:                              # %lor.lhs.false.i1718
	cmpb	$0, (%rcx)
	je	.LBB7_267
.LBB7_266:                              # %if.then.i1720
	movl	$1, 4(%rsp)
.LBB7_267:                              # %x264_atoi.exit1722
	movl	%eax, (%r14)
.LBB7_293:                              # %if.end1116
	xorl	%ebx, %ebx
.LBB7_294:                              # %if.end1116
	movq	%r13, %rbp
	jmp	.LBB7_194
.LBB7_268:                              # %if.then313
	leaq	120(%r14), %r12
	leaq	124(%r14), %rbp
	movl	$.L.str.23, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	movq	%rbp, %rcx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	cmpl	$2, %eax
	je	.LBB7_270
# %bb.269:                              # %lor.lhs.false317
	movl	$.L.str.48, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	movq	%rbp, %rcx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	cmpl	$2, %eax
	jne	.LBB7_273
.LBB7_270:                              # %if.then323
	movl	$1, 116(%r14)
	jmp	.LBB7_241
.LBB7_271:                              # %if.then302
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	xorl	$1, %eax
	movl	%eax, 116(%r14)
	jmp	.LBB7_248
.LBB7_273:                              # %if.else325
	movl	$.L.str.49, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	testl	%eax, %eax
	je	.LBB7_287
# %bb.274:                              # %if.then329
	movl	$1, 116(%r14)
	movl	120(%r14), %eax
	movl	%eax, 124(%r14)
	jmp	.LBB7_241
.LBB7_275:                              # %if.then341
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_277
# %bb.276:                              # %lor.lhs.false.i1726
	cmpb	$0, (%rcx)
	je	.LBB7_278
.LBB7_277:                              # %if.then.i1728
	movl	$1, 4(%rsp)
.LBB7_278:                              # %x264_atoi.exit1730
	movl	%eax, 684(%r14)
	jmp	.LBB7_293
.LBB7_279:                              # %if.then346
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_281
# %bb.280:                              # %lor.lhs.false.i1734
	cmpb	$0, (%rcx)
	je	.LBB7_282
.LBB7_281:                              # %if.then.i1736
	movl	$1, 4(%rsp)
.LBB7_282:                              # %x264_atoi.exit1738
	movl	%eax, 688(%r14)
	jmp	.LBB7_293
.LBB7_283:                              # %if.then351
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_285
# %bb.284:                              # %lor.lhs.false.i1742
	cmpb	$0, (%rcx)
	je	.LBB7_286
.LBB7_285:                              # %if.then.i1744
	movl	$1, 4(%rsp)
.LBB7_286:                              # %x264_atoi.exit1746
	movl	%eax, 692(%r14)
	jmp	.LBB7_293
.LBB7_287:                              # %if.else333
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	movl	%eax, 116(%r14)
	jmp	.LBB7_248
.LBB7_288:                              # %if.then356
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	movl	%eax, 128(%r14)
	jmp	.LBB7_248
.LBB7_289:                              # %if.then361
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_291
# %bb.290:                              # %lor.lhs.false.i1750
	cmpb	$0, (%rcx)
	je	.LBB7_292
.LBB7_291:                              # %if.then.i1752
	movl	$1, 4(%rsp)
.LBB7_292:                              # %x264_atoi.exit1754
	movl	%eax, 132(%r14)
	jmp	.LBB7_293
.LBB7_295:                              # %if.then366
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	movl	%eax, 136(%r14)
	jmp	.LBB7_248
.LBB7_296:                              # %if.then371
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	movl	%eax, 672(%r14)
	movl	%eax, 136(%r14)
	jmp	.LBB7_248
.LBB7_297:                              # %if.then377
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	movl	%eax, 136(%r14)
	xorl	$1, %eax
	movl	%eax, 672(%r14)
	jmp	.LBB7_248
.LBB7_298:                              # %if.then388
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	movl	%eax, 140(%r14)
	jmp	.LBB7_248
.LBB7_299:                              # %if.then393
	movl	$.L.str.60, %esi
	movq	%r15, %rdi
	callq	strstr@PLT
	testq	%rax, %rax
	je	.LBB7_302
# %bb.300:                              # %if.then396
	movl	$0, 144(%r14)
	jmp	.LBB7_293
.LBB7_301:                              # %if.then415
	movl	$2, 144(%r14)
	leaq	160(%r14), %rsi
	movq	%r15, %rdi
	movl	$16, %edx
	callq	parse_cqm
	movl	%eax, %ebp
	orl	4(%rsp), %ebp
	leaq	176(%r14), %rsi
	movq	%r15, %rdi
	movl	$16, %edx
	callq	parse_cqm
	movl	%eax, %ebx
	leaq	192(%r14), %rsi
	movq	%r15, %rdi
	movl	$16, %edx
	callq	parse_cqm
	movl	%eax, %r12d
	orl	%ebx, %r12d
	addq	$208, %r14
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	$16, %edx
	callq	parse_cqm
	orl	%r12d, %eax
	jmp	.LBB7_310
.LBB7_302:                              # %if.else397
	movl	$.L.str.61, %esi
	movq	%r15, %rdi
	callq	strstr@PLT
	testq	%rax, %rax
	je	.LBB7_304
# %bb.303:                              # %if.then400
	movl	$1, 144(%r14)
	jmp	.LBB7_293
.LBB7_304:                              # %if.else402
	movq	%r15, %rdi
	callq	spec_strdup
	movq	%rax, 152(%r14)
	jmp	.LBB7_293
.LBB7_305:                              # %if.then432
	movl	$2, 144(%r14)
	leaq	224(%r14), %rsi
	movq	%r15, %rdi
	movl	$64, %edx
	callq	parse_cqm
	movl	%eax, %ebp
	orl	4(%rsp), %ebp
	addq	$288, %r14                      # imm = 0x120
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	$64, %edx
	jmp	.LBB7_309
.LBB7_306:                              # %if.then443
	movl	$2, 144(%r14)
	leaq	160(%r14), %rsi
	movq	%r15, %rdi
	movl	$16, %edx
	callq	parse_cqm
	movl	%eax, %ebp
	orl	4(%rsp), %ebp
	addq	$176, %r14
	jmp	.LBB7_308
.LBB7_307:                              # %if.then456
	movl	$2, 144(%r14)
	leaq	192(%r14), %rsi
	movq	%r15, %rdi
	movl	$16, %edx
	callq	parse_cqm
	movl	%eax, %ebp
	orl	4(%rsp), %ebp
	addq	$208, %r14
.LBB7_308:                              # %if.end1116
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	$16, %edx
.LBB7_309:                              # %if.end1116
	callq	parse_cqm
.LBB7_310:                              # %if.end1116
	orl	%ebp, %eax
	movl	%eax, 4(%rsp)
	jmp	.LBB7_293
.LBB7_311:                              # %if.then469
	movl	$2, 144(%r14)
	addq	$160, %r14
	jmp	.LBB7_315
.LBB7_312:                              # %if.then478
	movl	$2, 144(%r14)
	addq	$176, %r14
	jmp	.LBB7_315
.LBB7_313:                              # %if.then487
	movl	$2, 144(%r14)
	addq	$192, %r14
	jmp	.LBB7_315
.LBB7_314:                              # %if.then496
	movl	$2, 144(%r14)
	addq	$208, %r14
.LBB7_315:                              # %if.end1116
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	$16, %edx
.LBB7_316:                              # %if.end1116
	callq	parse_cqm
.LBB7_317:                              # %if.end1116
	orl	%eax, 4(%rsp)
	jmp	.LBB7_293
.LBB7_318:                              # %if.then505
	movl	$2, 144(%r14)
	addq	$224, %r14
	jmp	.LBB7_320
.LBB7_319:                              # %if.then514
	movl	$2, 144(%r14)
	addq	$288, %r14                      # imm = 0x120
.LBB7_320:                              # %if.end1116
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	$64, %edx
	jmp	.LBB7_316
.LBB7_321:                              # %if.then523
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_323
# %bb.322:                              # %lor.lhs.false.i1758
	cmpb	$0, (%rcx)
	je	.LBB7_324
.LBB7_323:                              # %if.then.i1760
	movl	$1, 4(%rsp)
.LBB7_324:                              # %x264_atoi.exit1762
	movl	%eax, 368(%r14)
	jmp	.LBB7_293
.LBB7_325:                              # %if.then536
	movq	%r14, 24(%rsp)                  # 8-byte Spill
	movl	$0, 388(%r14)
	movl	$.L.str.78, %esi
	movq	%r15, %rdi
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	callq	strstr@PLT
	movq	%rax, %rbx
	xorl	%r12d, %r12d
	negq	%rax
	movl	$0, %ebp
	sbbl	%ebp, %ebp
	movq	24(%rsp), %rax                  # 8-byte Reload
	movl	%ebp, 388(%rax)
	movl	$.L.str.79, %esi
	movq	16(%rsp), %rdi                  # 8-byte Reload
	callq	strstr@PLT
	testq	%rax, %rax
	je	.LBB7_327
# %bb.326:                              # %if.then551
	negq	%rbx
	sbbl	%r12d, %r12d
	orl	$1, %r12d
	movl	%r12d, 388(%r14)
	movl	%r12d, %ebp
.LBB7_327:                              # %if.end555
	movl	$.L.str.80, %esi
	movq	%r15, %rdi
	callq	strstr@PLT
	testq	%rax, %rax
	je	.LBB7_329
# %bb.328:                              # %if.then558
	orl	$2, %ebp
	movl	%ebp, 388(%r14)
.LBB7_329:                              # %if.end562
	movl	$.L.str.81, %esi
	movq	%r15, %rdi
	callq	strstr@PLT
	testq	%rax, %rax
	je	.LBB7_331
# %bb.330:                              # %if.then565
	orl	$16, %ebp
	movl	%ebp, 388(%r14)
.LBB7_331:                              # %if.end569
	movl	$.L.str.82, %esi
	movq	%r15, %rdi
	callq	strstr@PLT
	testq	%rax, %rax
	je	.LBB7_333
# %bb.332:                              # %if.then572
	orl	$32, %ebp
	movl	%ebp, 388(%r14)
.LBB7_333:                              # %if.end576
	movl	$.L.str.83, %esi
	movq	%r15, %rdi
	callq	strstr@PLT
	testq	%rax, %rax
	je	.LBB7_241
# %bb.334:                              # %if.then579
	orl	$256, %ebp                      # imm = 0x100
	movl	%ebp, 388(%r14)
	jmp	.LBB7_241
.LBB7_335:                              # %if.then528
	movq	%r15, %rdi
	callq	spec_strdup
	movq	%rax, 376(%r14)
	jmp	.LBB7_293
.LBB7_336:                              # %if.then596
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	movl	%eax, 400(%r14)
	jmp	.LBB7_248
.LBB7_337:                              # %if.then587
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	movl	%eax, 392(%r14)
	jmp	.LBB7_248
.LBB7_338:                              # %if.then611
	addq	$404, %r14                      # imm = 0x194
	movl	$x264_direct_pred_names, %esi
.LBB7_339:                              # %if.end1116
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	parse_enum
	jmp	.LBB7_317
.LBB7_340:                              # %if.then602
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_342
# %bb.341:                              # %lor.lhs.false.i1766
	cmpb	$0, (%rcx)
	je	.LBB7_343
.LBB7_342:                              # %if.then.i1768
	movl	$1, 4(%rsp)
.LBB7_343:                              # %x264_atoi.exit1770
	movl	%eax, 396(%r14)
	jmp	.LBB7_293
.LBB7_344:                              # %if.then618
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_346
# %bb.345:                              # %lor.lhs.false.i1774
	cmpb	$0, (%rcx)
	je	.LBB7_347
.LBB7_346:                              # %if.then.i1776
	movl	$1, 4(%rsp)
.LBB7_347:                              # %x264_atoi.exit1778
	movl	%eax, 408(%r14)
	jmp	.LBB7_293
.LBB7_348:                              # %if.then624
	addq	$412, %r14                      # imm = 0x19C
	movl	$x264_motion_est_names, %esi
	jmp	.LBB7_339
.LBB7_349:                              # %if.then634
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_351
# %bb.350:                              # %lor.lhs.false.i1782
	cmpb	$0, (%rcx)
	je	.LBB7_352
.LBB7_351:                              # %if.then.i1784
	movl	$1, 4(%rsp)
.LBB7_352:                              # %x264_atoi.exit1786
	movl	%eax, 416(%r14)
	jmp	.LBB7_293
.LBB7_353:                              # %if.then643
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_355
# %bb.354:                              # %lor.lhs.false.i1790
	cmpb	$0, (%rcx)
	je	.LBB7_356
.LBB7_355:                              # %if.then.i1792
	movl	$1, 4(%rsp)
.LBB7_356:                              # %x264_atoi.exit1794
	movl	%eax, 420(%r14)
	jmp	.LBB7_293
.LBB7_357:                              # %if.then652
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_359
# %bb.358:                              # %lor.lhs.false.i1798
	cmpb	$0, (%rcx)
	je	.LBB7_360
.LBB7_359:                              # %if.then.i1800
	movl	$1, 4(%rsp)
.LBB7_360:                              # %x264_atoi.exit1802
	movl	%eax, 424(%r14)
	jmp	.LBB7_293
.LBB7_361:                              # %if.then661
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_363
# %bb.362:                              # %lor.lhs.false.i1806
	cmpb	$0, (%rcx)
	je	.LBB7_364
.LBB7_363:                              # %if.then.i1808
	movl	$1, 4(%rsp)
.LBB7_364:                              # %x264_atoi.exit1810
	movl	%eax, 428(%r14)
	jmp	.LBB7_293
.LBB7_365:                              # %if.then667
	movq	%r14, %rcx
	leaq	456(%r14), %r12
	addq	$460, %rcx                      # imm = 0x1CC
	xorl	%ebx, %ebx
	movl	$.L.str.101, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	movq	%rcx, %r14
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	cmpl	$2, %eax
	movq	%r13, %rbp
	je	.LBB7_194
# %bb.366:                              # %lor.lhs.false673
	xorl	%ebx, %ebx
	movl	$.L.str.102, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	cmpl	$2, %eax
	je	.LBB7_194
# %bb.367:                              # %lor.lhs.false681
	xorl	%ebx, %ebx
	movl	$.L.str.103, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	cmpl	$2, %eax
	je	.LBB7_194
# %bb.368:                              # %if.else690
	movl	$.L.str.104, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	testl	%eax, %eax
	je	.LBB7_486
# %bb.369:                              # %if.then695
	movl	$0, (%r14)
	jmp	.LBB7_241
.LBB7_370:                              # %if.then708
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	movl	%eax, 464(%r14)
	jmp	.LBB7_248
.LBB7_371:                              # %if.then714
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	movl	%eax, 432(%r14)
	jmp	.LBB7_248
.LBB7_372:                              # %if.then720
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	movl	%eax, 436(%r14)
	jmp	.LBB7_248
.LBB7_373:                              # %if.then726
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_375
# %bb.374:                              # %lor.lhs.false.i1814
	cmpb	$0, (%rcx)
	je	.LBB7_376
.LBB7_375:                              # %if.then.i1816
	movl	$1, 4(%rsp)
.LBB7_376:                              # %x264_atoi.exit1818
	movl	%eax, 440(%r14)
	jmp	.LBB7_293
.LBB7_377:                              # %if.then732
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	movl	%eax, 444(%r14)
	jmp	.LBB7_248
.LBB7_378:                              # %if.then738
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	movl	%eax, 448(%r14)
	jmp	.LBB7_248
.LBB7_379:                              # %if.then744
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_381
# %bb.380:                              # %lor.lhs.false.i1822
	cmpb	$0, (%rcx)
	je	.LBB7_382
.LBB7_381:                              # %if.then.i1824
	movl	$1, 4(%rsp)
.LBB7_382:                              # %x264_atoi.exit1826
	movl	%eax, 468(%r14)
	jmp	.LBB7_293
.LBB7_383:                              # %if.then751
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_385
# %bb.384:                              # %lor.lhs.false.i1830
	cmpb	$0, (%rcx)
	je	.LBB7_386
.LBB7_385:                              # %if.then.i1832
	movl	$1, 4(%rsp)
.LBB7_386:                              # %x264_atoi.exit1834
	movl	%eax, 472(%r14)
	jmp	.LBB7_293
.LBB7_387:                              # %if.then759
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_389
# %bb.388:                              # %lor.lhs.false.i1838
	cmpb	$0, (%rcx)
	je	.LBB7_390
.LBB7_389:                              # %if.then.i1840
	movl	$1, 4(%rsp)
.LBB7_390:                              # %x264_atoi.exit1842
	movl	%eax, 452(%r14)
	jmp	.LBB7_293
.LBB7_391:                              # %if.then765
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_393
# %bb.392:                              # %lor.lhs.false.i1846
	cmpb	$0, (%rcx)
	je	.LBB7_394
.LBB7_393:                              # %if.then.i1848
	movl	$1, 4(%rsp)
.LBB7_394:                              # %x264_atoi.exit1850
	movl	%eax, 508(%r14)
	movl	$2, 488(%r14)
	jmp	.LBB7_293
.LBB7_395:                              # %if.then774
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_397
# %bb.396:                              # %lor.lhs.false.i1854
	cmpb	$0, (%rcx)
	je	.LBB7_398
.LBB7_397:                              # %if.then.i1856
	movl	$1, 4(%rsp)
.LBB7_398:                              # %x264_atoi.exit1858
	movl	%eax, 492(%r14)
	movl	$0, 488(%r14)
	jmp	.LBB7_293
.LBB7_399:                              # %if.then782
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	callq	strtod@PLT
	movq	8(%rsp), %rax
	cmpq	%r15, %rax
	je	.LBB7_401
# %bb.400:                              # %lor.lhs.false.i1862
	cmpb	$0, (%rax)
	je	.LBB7_402
.LBB7_401:                              # %if.then.i1864
	movl	$1, 4(%rsp)
.LBB7_402:                              # %x264_atof.exit1865
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 512(%r14)
	movl	$1, 488(%r14)
	jmp	.LBB7_293
.LBB7_403:                              # %if.then791
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	callq	strtod@PLT
	movq	8(%rsp), %rax
	cmpq	%r15, %rax
	je	.LBB7_405
# %bb.404:                              # %lor.lhs.false.i1869
	cmpb	$0, (%rax)
	je	.LBB7_406
.LBB7_405:                              # %if.then.i1871
	movl	$1, 4(%rsp)
.LBB7_406:                              # %x264_atof.exit1872
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 516(%r14)
	jmp	.LBB7_293
.LBB7_407:                              # %if.then798
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_409
# %bb.408:                              # %lor.lhs.false.i1876
	cmpb	$0, (%rcx)
	je	.LBB7_410
.LBB7_409:                              # %if.then.i1878
	movl	$1, 4(%rsp)
.LBB7_410:                              # %x264_atoi.exit1880
	movl	%eax, 556(%r14)
	jmp	.LBB7_293
.LBB7_411:                              # %if.then807
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_413
# %bb.412:                              # %lor.lhs.false.i1884
	cmpb	$0, (%rcx)
	je	.LBB7_414
.LBB7_413:                              # %if.then.i1886
	movl	$1, 4(%rsp)
.LBB7_414:                              # %x264_atoi.exit1888
	movl	%eax, 496(%r14)
	jmp	.LBB7_293
.LBB7_415:                              # %if.then816
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_417
# %bb.416:                              # %lor.lhs.false.i1892
	cmpb	$0, (%rcx)
	je	.LBB7_418
.LBB7_417:                              # %if.then.i1894
	movl	$1, 4(%rsp)
.LBB7_418:                              # %x264_atoi.exit1896
	movl	%eax, 500(%r14)
	jmp	.LBB7_293
.LBB7_419:                              # %if.then825
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_421
# %bb.420:                              # %lor.lhs.false.i1900
	cmpb	$0, (%rcx)
	je	.LBB7_422
.LBB7_421:                              # %if.then.i1902
	movl	$1, 4(%rsp)
.LBB7_422:                              # %x264_atoi.exit1904
	movl	%eax, 504(%r14)
	jmp	.LBB7_293
.LBB7_423:                              # %sub_02022
	movzbl	(%r15), %eax
	subl	$105, %eax
	jne	.LBB7_488
# %bb.424:                              # %sub_12023
	movzbl	1(%r15), %eax
	subl	$110, %eax
	jne	.LBB7_488
# %bb.425:                              # %sub_22024
	movzbl	2(%r15), %ecx
	movl	$102, %eax
	subl	%ecx, %eax
	jmp	.LBB7_489
.LBB7_488:
	negl	%eax
.LBB7_489:                              # %if.then831.tail
	testl	%eax, %eax
	je	.LBB7_494
# %bb.490:                              # %cond.false835
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	callq	strtod@PLT
	movq	8(%rsp), %rax
	cmpq	%r15, %rax
	je	.LBB7_492
# %bb.491:                              # %lor.lhs.false.i1908
	cmpb	$0, (%rax)
	je	.LBB7_493
.LBB7_492:                              # %if.then.i1910
	movl	$1, 4(%rsp)
.LBB7_493:                              # %x264_atof.exit1911
	cvtsd2ss	%xmm0, %xmm0
	jmp	.LBB7_495
.LBB7_426:                              # %if.then844
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_428
# %bb.427:                              # %lor.lhs.false.i1915
	cmpb	$0, (%rcx)
	je	.LBB7_429
.LBB7_428:                              # %if.then.i1917
	movl	$1, 4(%rsp)
.LBB7_429:                              # %x264_atoi.exit1919
	movl	%eax, 524(%r14)
	jmp	.LBB7_293
.LBB7_430:                              # %if.then850
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_432
# %bb.431:                              # %lor.lhs.false.i1923
	cmpb	$0, (%rcx)
	je	.LBB7_433
.LBB7_432:                              # %if.then.i1925
	movl	$1, 4(%rsp)
.LBB7_433:                              # %x264_atoi.exit1927
	movl	%eax, 528(%r14)
	jmp	.LBB7_293
.LBB7_434:                              # %if.then856
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	callq	strtod@PLT
	movq	8(%rsp), %rax
	cmpq	%r15, %rax
	je	.LBB7_436
# %bb.435:                              # %lor.lhs.false.i1931
	cmpb	$0, (%rax)
	je	.LBB7_437
.LBB7_436:                              # %if.then.i1933
	movl	$1, 4(%rsp)
.LBB7_437:                              # %x264_atof.exit1934
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 532(%r14)
	jmp	.LBB7_293
.LBB7_438:                              # %if.then866
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	callq	strtod@PLT
	movq	8(%rsp), %rax
	cmpq	%r15, %rax
	je	.LBB7_440
# %bb.439:                              # %lor.lhs.false.i1938
	cmpb	$0, (%rax)
	je	.LBB7_441
.LBB7_440:                              # %if.then.i1940
	movl	$1, 4(%rsp)
.LBB7_441:                              # %x264_atof.exit1941
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 536(%r14)
	jmp	.LBB7_293
.LBB7_442:                              # %if.then876
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	callq	strtod@PLT
	movq	8(%rsp), %rax
	cmpq	%r15, %rax
	je	.LBB7_444
# %bb.443:                              # %lor.lhs.false.i1945
	cmpb	$0, (%rax)
	je	.LBB7_445
.LBB7_444:                              # %if.then.i1947
	movl	$1, 4(%rsp)
.LBB7_445:                              # %x264_atof.exit1948
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 540(%r14)
	jmp	.LBB7_293
.LBB7_446:                              # %if.then883
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_448
# %bb.447:                              # %lor.lhs.false.i1952
	cmpb	$0, (%rcx)
	je	.LBB7_449
.LBB7_448:                              # %if.then.i1954
	movl	$1, 4(%rsp)
.LBB7_449:                              # %x264_atoi.exit1956
	movl	%eax, 544(%r14)
	jmp	.LBB7_293
.LBB7_450:                              # %if.then889
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	callq	strtod@PLT
	movq	8(%rsp), %rax
	cmpq	%r15, %rax
	je	.LBB7_452
# %bb.451:                              # %lor.lhs.false.i1960
	cmpb	$0, (%rax)
	je	.LBB7_453
.LBB7_452:                              # %if.then.i1962
	movl	$1, 4(%rsp)
.LBB7_453:                              # %x264_atof.exit1963
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 548(%r14)
	jmp	.LBB7_293
.LBB7_454:                              # %if.then896
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_456
# %bb.455:                              # %lor.lhs.false.i1967
	cmpb	$0, (%rcx)
	je	.LBB7_457
.LBB7_456:                              # %if.then.i1969
	movl	$1, 4(%rsp)
.LBB7_457:                              # %x264_atoi.exit1971
	cmpl	$3, %eax
	movl	$3, %ecx
	cmovbl	%eax, %ecx
	xorl	%ebx, %ebx
	testl	%eax, %eax
	cmovsl	%ebx, %ecx
	movl	%ecx, %eax
	andl	$1, %eax
	movl	%eax, 560(%r14)
	andl	$2, %ecx
	movl	%ecx, 576(%r14)
	jmp	.LBB7_294
.LBB7_458:                              # %if.then906
	movq	%r15, %rdi
	callq	spec_strdup
	movq	%rax, 584(%r14)
	movq	%r15, %rdi
	callq	spec_strdup
	movq	%rax, 568(%r14)
	jmp	.LBB7_293
.LBB7_459:                              # %if.then914
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	callq	strtod@PLT
	movq	8(%rsp), %rax
	cmpq	%r15, %rax
	je	.LBB7_461
# %bb.460:                              # %lor.lhs.false.i1976
	cmpb	$0, (%rax)
	je	.LBB7_462
.LBB7_461:                              # %if.then.i1978
	movl	$1, 4(%rsp)
.LBB7_462:                              # %x264_atof.exit1979
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 592(%r14)
	jmp	.LBB7_293
.LBB7_463:                              # %if.then921
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	movl	%eax, 552(%r14)
	jmp	.LBB7_248
.LBB7_464:                              # %if.then927
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	callq	strtod@PLT
	movq	8(%rsp), %rax
	cmpq	%r15, %rax
	je	.LBB7_466
# %bb.465:                              # %lor.lhs.false.i1983
	cmpb	$0, (%rax)
	je	.LBB7_467
.LBB7_466:                              # %if.then.i1985
	movl	$1, 4(%rsp)
.LBB7_467:                              # %x264_atof.exit1986
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 596(%r14)
	jmp	.LBB7_293
.LBB7_468:                              # %if.then937
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	callq	strtod@PLT
	movq	8(%rsp), %rax
	cmpq	%r15, %rax
	je	.LBB7_470
# %bb.469:                              # %lor.lhs.false.i1990
	cmpb	$0, (%rax)
	je	.LBB7_471
.LBB7_470:                              # %if.then.i1992
	movl	$1, 4(%rsp)
.LBB7_471:                              # %x264_atof.exit1993
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 600(%r14)
	jmp	.LBB7_293
.LBB7_472:                              # %if.then944
	movq	%r15, %rdi
	callq	spec_strdup
	movq	%rax, 624(%r14)
	jmp	.LBB7_293
.LBB7_473:                              # %if.then950
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	movl	%eax, 476(%r14)
	jmp	.LBB7_248
.LBB7_474:                              # %if.then956
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	movl	%eax, 480(%r14)
	jmp	.LBB7_248
.LBB7_475:                              # %if.then962
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	movl	%eax, 632(%r14)
	jmp	.LBB7_248
.LBB7_476:                              # %if.then967
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	strtol@PLT
	movq	8(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.LBB7_478
# %bb.477:                              # %lor.lhs.false.i1997
	cmpb	$0, (%rcx)
	je	.LBB7_479
.LBB7_478:                              # %if.then.i1999
	movl	$1, 4(%rsp)
.LBB7_479:                              # %x264_atoi.exit2001
	movl	%eax, 644(%r14)
	jmp	.LBB7_293
.LBB7_480:                              # %if.then972
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	xorl	$1, %eax
	movl	%eax, 636(%r14)
	jmp	.LBB7_248
.LBB7_481:                              # %if.then980
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	movl	%eax, 636(%r14)
	jmp	.LBB7_248
.LBB7_482:                              # %if.then986
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	movl	%eax, 640(%r14)
	jmp	.LBB7_248
.LBB7_483:                              # %if.then991
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	xorl	$1, %eax
	movl	%eax, 648(%r14)
	jmp	.LBB7_248
.LBB7_484:                              # %if.then999
	addq	$40, %r14
	movl	$x264_nal_hrd_names, %esi
	jmp	.LBB7_339
.LBB7_485:                              # %if.then1005
	leaq	4(%rsp), %rsi
	movq	%r15, %rdi
	callq	x264_atobool
	movl	%eax, 676(%r14)
	jmp	.LBB7_248
.LBB7_486:                              # %if.else698
	movq	$0, (%r12)
	jmp	.LBB7_241
.LBB7_494:
	movss	.LCPI7_0(%rip), %xmm0           # xmm0 = [1.0E+9,0.0E+0,0.0E+0,0.0E+0]
.LBB7_495:                              # %cond.end837
	movss	%xmm0, 520(%r14)
	jmp	.LBB7_293
.Lfunc_end7:
	.size	x264_param_parse, .Lfunc_end7-x264_param_parse
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_atobool
	.type	x264_atobool,@function
x264_atobool:                           # @x264_atobool
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movzbl	(%rdi), %r15d
	cmpb	$49, %r15b
	jne	.LBB8_3
# %bb.1:                                # %entry.tail
	cmpb	$0, 1(%r14)
	je	.LBB8_2
.LBB8_3:                                # %lor.lhs.false
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	callq	strcmp@PLT
	movl	$1, %ebp
	testl	%eax, %eax
	je	.LBB8_13
# %bb.4:                                # %lor.lhs.false3
	movl	$.L.str.234, %esi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB8_13
# %bb.5:                                # %sub_021
	cmpb	$48, %r15b
	jne	.LBB8_8
# %bb.6:                                # %if.end.tail
	xorl	%ebp, %ebp
	cmpb	$0, 1(%r14)
	je	.LBB8_13
# %bb.7:                                # %lor.lhs.false8.thread
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	jne	.LBB8_12
	jmp	.LBB8_13
.LBB8_2:
	movl	$1, %ebp
	jmp	.LBB8_13
.LBB8_8:                                # %lor.lhs.false8
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	callq	strcmp@PLT
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB8_13
# %bb.9:                                # %sub_024
	cmpb	$110, %r15b
	jne	.LBB8_12
# %bb.10:                               # %sub_125
	cmpb	$111, 1(%r14)
	jne	.LBB8_12
# %bb.11:                               # %lor.lhs.false11.tail
	cmpb	$0, 2(%r14)
	je	.LBB8_13
.LBB8_12:                               # %if.end15
	movl	$1, (%rbx)
	xorl	%ebp, %ebp
.LBB8_13:                               # %return
	movl	%ebp, %eax
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
.Lfunc_end8:
	.size	x264_atobool, .Lfunc_end8-x264_atobool
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function parse_enum
	.type	parse_enum,@function
parse_enum:                             # @parse_enum
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
	movq	%rsi, %r15
	movq	(%rsi), %rsi
	movl	$-1, %ebx
	testq	%rsi, %rsi
	je	.LBB9_5
# %bb.1:                                # %for.body.preheader
	movq	%rdx, %r14
	movq	%rdi, %r12
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB9_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB9_3
# %bb.4:                                # %for.inc
                                        #   in Loop: Header=BB9_2 Depth=1
	movq	8(%r15,%r13,8), %rsi
	incq	%r13
	testq	%rsi, %rsi
	jne	.LBB9_2
	jmp	.LBB9_5
.LBB9_3:                                # %if.then
	movl	%r13d, (%r14)
	xorl	%ebx, %ebx
.LBB9_5:                                # %cleanup
	movl	%ebx, %eax
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
.Lfunc_end9:
	.size	parse_enum, .Lfunc_end9-parse_enum
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function parse_cqm
	.type	parse_cqm,@function
parse_cqm:                              # @parse_cqm
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
	movl	%edx, 4(%rsp)                   # 4-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	%rsp, %rdx
	movl	$.L.str.49, %esi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	testl	%eax, %eax
	setne	%cl
	movl	(%rsp), %eax
	leal	-1(%rax), %edx
	cmpl	$255, %edx
	setb	%dl
	andb	%cl, %dl
	cmpb	$1, %dl
	jne	.LBB10_6
# %bb.1:                                # %do.cond.preheader
	movl	4(%rsp), %ecx                   # 4-byte Reload
	cmpl	$2, %ecx
	movl	$1, %ebx
	cmovgel	%ecx, %ebx
	leal	-1(%rbx), %ebp
	movq	%rsp, %r12
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB10_2:                               # %do.cond
                                        # =>This Inner Loop Header: Depth=1
	movb	%al, (%r14,%r13)
	cmpq	%r13, %rbp
	je	.LBB10_8
# %bb.3:                                # %land.lhs.true
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	%r15, %rdi
	movl	$44, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	je	.LBB10_7
# %bb.4:                                # %do.body
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	%rax, %r15
	incq	%r15
	movl	$.L.str.49, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	testl	%eax, %eax
	je	.LBB10_6
# %bb.5:                                # %do.body
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	(%rsp), %eax
	leal	-1(%rax), %ecx
	incq	%r13
	cmpl	$255, %ecx
	jb	.LBB10_2
.LBB10_6:                               # %cleanup
	movl	$-1, %eax
	jmp	.LBB10_9
.LBB10_7:                               # %do.end.split.loop.exit
	incl	%r13d
	movl	%r13d, %ebx
.LBB10_8:                               # %do.end
	xorl	%eax, %eax
	cmpl	4(%rsp), %ebx                   # 4-byte Folded Reload
	setne	%al
	negl	%eax
.LBB10_9:                               # %cleanup10
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
.Lfunc_end10:
	.size	parse_cqm, .Lfunc_end10-parse_cqm
	.cfi_endproc
                                        # -- End function
	.globl	x264_picture_alloc              # -- Begin function x264_picture_alloc
	.p2align	4, 0x90
	.type	x264_picture_alloc,@function
x264_picture_alloc:                     # @x264_picture_alloc
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
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movl	%edx, %ebp
	movq	%rdi, %rbx
	movq	$0, (%rdi)
	movl	%esi, 40(%rdi)
	movl	$3, 44(%rdi)
	imull	%edx, %r14d
	leal	(%r14,%r14,2), %eax
	movl	%eax, %r15d
	shrl	$31, %r15d
	addl	%eax, %r15d
	sarl	%r15d
	leal	27(%r15), %eax
	movslq	%eax, %rdi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB11_1
# %bb.2:                                # %if.end
	movq	%rax, %r12
	addq	$27, %r12
	andq	$-16, %r12
	movq	%rax, -8(%r12)
	movl	%r15d, -12(%r12)
	movslq	%r14d, %rax
	addq	%r12, %rax
	movq	%rax, 72(%rbx)
	leal	3(%r14), %ecx
	testl	%r14d, %r14d
	cmovnsl	%r14d, %ecx
	sarl	$2, %ecx
	movslq	%ecx, %rcx
	addq	%rax, %rcx
	movq	%rcx, 80(%rbx)
	movl	%ebp, 48(%rbx)
	movl	%ebp, %eax
	shrl	$31, %eax
	addl	%ebp, %eax
	sarl	%eax
	movl	%eax, 52(%rbx)
	movl	%eax, 56(%rbx)
	movq	$0, 32(%rbx)
	movl	$0, 8(%rbx)
	xorl	%eax, %eax
	jmp	.LBB11_3
.LBB11_1:                               # %x264_malloc.exit.thread
	xorl	%r12d, %r12d
	movl	$.L.str.156, %edx
	xorl	%edi, %edi
	xorl	%esi, %esi
	movl	%r15d, %ecx
	xorl	%eax, %eax
	callq	x264_log
	movl	$-1, %eax
.LBB11_3:                               # %return
	movq	%r12, 64(%rbx)
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
.Lfunc_end11:
	.size	x264_picture_alloc, .Lfunc_end11-x264_picture_alloc
	.cfi_endproc
                                        # -- End function
	.globl	x264_malloc                     # -- Begin function x264_malloc
	.p2align	4, 0x90
	.type	x264_malloc,@function
x264_malloc:                            # @x264_malloc
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	%edi, %ebx
	movslq	%edi, %rdi
	addq	$27, %rdi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB12_2
# %bb.1:                                # %if.end
	movq	%rax, %r14
	addq	$27, %r14
	andq	$-16, %r14
	movq	%rax, -8(%r14)
	movl	%ebx, -12(%r14)
	jmp	.LBB12_3
.LBB12_2:                               # %if.then10
	xorl	%r14d, %r14d
	movl	$.L.str.156, %edx
	xorl	%edi, %edi
	xorl	%esi, %esi
	movl	%ebx, %ecx
	xorl	%eax, %eax
	callq	x264_log
.LBB12_3:                               # %if.end11
	movq	%r14, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end12:
	.size	x264_malloc, .Lfunc_end12-x264_malloc
	.cfi_endproc
                                        # -- End function
	.globl	x264_picture_clean              # -- Begin function x264_picture_clean
	.p2align	4, 0x90
	.type	x264_picture_clean,@function
x264_picture_clean:                     # @x264_picture_clean
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	64(%rdi), %rax
	testq	%rax, %rax
	je	.LBB13_2
# %bb.1:                                # %if.then.i
	movq	-8(%rax), %rdi
	callq	free@PLT
.LBB13_2:                               # %x264_free.exit
	xorps	%xmm0, %xmm0
	movups	%xmm0, 112(%rbx)
	movups	%xmm0, 96(%rbx)
	movups	%xmm0, 80(%rbx)
	movups	%xmm0, 64(%rbx)
	movups	%xmm0, 48(%rbx)
	movups	%xmm0, 32(%rbx)
	movups	%xmm0, 16(%rbx)
	movups	%xmm0, (%rbx)
	movq	$0, 128(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end13:
	.size	x264_picture_clean, .Lfunc_end13-x264_picture_clean
	.cfi_endproc
                                        # -- End function
	.globl	x264_free                       # -- Begin function x264_free
	.p2align	4, 0x90
	.type	x264_free,@function
x264_free:                              # @x264_free
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB14_1
# %bb.2:                                # %if.then
	movq	-8(%rdi), %rdi
	jmp	free@PLT                        # TAILCALL
.LBB14_1:                               # %if.end
	retq
.Lfunc_end14:
	.size	x264_free, .Lfunc_end14-x264_free
	.cfi_endproc
                                        # -- End function
	.globl	x264_nal_encode                 # -- Begin function x264_nal_encode
	.p2align	4, 0x90
	.type	x264_nal_encode,@function
x264_nal_encode:                        # @x264_nal_encode
	.cfi_startproc
# %bb.0:                                # %entry
	movq	16(%rsi), %r8
	movslq	8(%rsi), %r9
	testl	%edx, %edx
	je	.LBB15_4
# %bb.1:                                # %if.then
	movq	%rdi, %r10
	testl	%ecx, %ecx
	je	.LBB15_3
# %bb.2:                                # %if.then3
	leaq	1(%rdi), %r10
	movb	$0, (%rdi)
.LBB15_3:                               # %if.end
	movw	$0, (%r10)
	movb	$1, 2(%r10)
	addq	$3, %r10
	jmp	.LBB15_5
.LBB15_4:                               # %if.else
	leaq	4(%rdi), %r10
.LBB15_5:                               # %if.end8
	movl	(%rsi), %eax
	shll	$5, %eax
	orl	4(%rsi), %eax
	movb	%al, (%r10)
	leaq	1(%r10), %rax
	testl	%r9d, %r9d
	jle	.LBB15_11
# %bb.6:                                # %while.body.preheader
	addq	%r8, %r9
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	jmp	.LBB15_7
	.p2align	4, 0x90
.LBB15_10:                              # %if.end19
                                        #   in Loop: Header=BB15_7 Depth=1
	movq	%rax, %r10
	incl	%esi
	testb	%r11b, %r11b
	cmovnel	%ecx, %esi
	incq	%r8
	movb	%r11b, (%rax)
	incq	%rax
	cmpq	%r9, %r8
	jae	.LBB15_11
.LBB15_7:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r8), %r11d
	cmpl	$2, %esi
	jne	.LBB15_10
# %bb.8:                                # %land.lhs.true
                                        #   in Loop: Header=BB15_7 Depth=1
	movl	$2, %esi
	cmpb	$3, %r11b
	ja	.LBB15_10
# %bb.9:                                # %if.then17
                                        #   in Loop: Header=BB15_7 Depth=1
	addq	$2, %r10
	movb	$3, (%rax)
	movzbl	(%r8), %r11d
	xorl	%esi, %esi
	movq	%r10, %rax
	jmp	.LBB15_10
.LBB15_11:                              # %while.end
	subl	%edi, %eax
	testl	%edx, %edx
	je	.LBB15_12
# %bb.13:                               # %if.end41
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB15_12:                              # %if.then30
	leal	-4(%rax), %ecx
	bswapl	%ecx
	movl	%ecx, (%rdi)
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end15:
	.size	x264_nal_encode, .Lfunc_end15-x264_nal_encode
	.cfi_endproc
                                        # -- End function
	.globl	x264_reduce_fraction            # -- Begin function x264_reduce_fraction
	.p2align	4, 0x90
	.type	x264_reduce_fraction,@function
x264_reduce_fraction:                   # @x264_reduce_fraction
	.cfi_startproc
# %bb.0:                                # %entry
	movl	(%rdi), %ecx
	movl	(%rsi), %eax
	testl	%ecx, %ecx
	setne	%dl
	testl	%eax, %eax
	setne	%r8b
	andb	%dl, %r8b
	cmpb	$1, %r8b
	jne	.LBB16_5
# %bb.1:                                # %if.end
	movl	%eax, %r9d
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	%r9d, %r8d
	divl	%r9d
	testl	%edx, %edx
	je	.LBB16_4
# %bb.2:                                # %while.body.preheader
	movl	%r8d, %eax
	.p2align	4, 0x90
.LBB16_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %r8d
	xorl	%edx, %edx
	divl	%r8d
	movl	%r8d, %eax
	testl	%edx, %edx
	jne	.LBB16_3
.LBB16_4:                               # %while.end
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%r8d
	movl	%eax, (%rdi)
	movl	(%rsi), %eax
	xorl	%edx, %edx
	divl	%r8d
	movl	%eax, (%rsi)
.LBB16_5:                               # %cleanup
	retq
.Lfunc_end16:
	.size	x264_reduce_fraction, .Lfunc_end16-x264_reduce_fraction
	.cfi_endproc
                                        # -- End function
	.globl	x264_slurp_file                 # -- Begin function x264_slurp_file
	.p2align	4, 0x90
	.type	x264_slurp_file,@function
x264_slurp_file:                        # @x264_slurp_file
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
	movl	$.L.str.157, %esi
	callq	fopen64@PLT
	testq	%rax, %rax
	je	.LBB17_8
# %bb.1:                                # %if.end
	movq	%rax, %r14
	xorl	%ebx, %ebx
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$2, %edx
	callq	fseek@PLT
	movl	%eax, %ebp
	movq	%r14, %rdi
	callq	ftell@PLT
	movq	%rax, %r15
	testl	%r15d, %r15d
	setle	%al
	testl	%ebp, %ebp
	sets	%bpl
	orb	%al, %bpl
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	fseek@PLT
	shrl	$31, %eax
	orb	%bpl, %al
	jne	.LBB17_9
# %bb.2:                                # %if.end13
	leal	2(%r15), %ebp
	movslq	%r15d, %r12
	leaq	29(%r12), %rdi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB17_3
# %bb.4:                                # %if.end18
	movq	%r15, %r13
	shlq	$32, %r13
	movq	%rax, %rbx
	addq	$27, %rbx
	andq	$-16, %rbx
	movq	%rax, -8(%rbx)
	movl	%ebp, -12(%rbx)
	movl	$1, %esi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	fread@PLT
	movq	%rax, %rbp
	movabsq	$-4294967296, %rax              # imm = 0xFFFFFFFF00000000
	addq	%r13, %rax
	sarq	$32, %rax
	cmpb	$10, (%rbx,%rax)
	je	.LBB17_6
# %bb.5:                                # %if.then28
	movb	$10, (%rbx,%r12)
	leal	1(%r15), %eax
	movslq	%eax, %r12
.LBB17_6:                               # %if.end31
	movb	$0, (%rbx,%r12)
	movq	%r14, %rdi
	callq	fclose@PLT
	cmpl	%r15d, %ebp
	je	.LBB17_9
# %bb.7:                                # %x264_free.exit
	movq	-8(%rbx), %rdi
	callq	free@PLT
.LBB17_8:                               # %cleanup
	xorl	%ebx, %ebx
.LBB17_9:                               # %cleanup
	movq	%rbx, %rax
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
.LBB17_3:                               # %x264_malloc.exit.thread
	.cfi_def_cfa_offset 64
	xorl	%ebx, %ebx
	movl	$.L.str.156, %edx
	xorl	%edi, %edi
	xorl	%esi, %esi
	movl	%ebp, %ecx
	xorl	%eax, %eax
	callq	x264_log
	jmp	.LBB17_9
.Lfunc_end17:
	.size	x264_slurp_file, .Lfunc_end17-x264_slurp_file
	.cfi_endproc
                                        # -- End function
	.globl	x264_param2string               # -- Begin function x264_param2string
	.p2align	4, 0x90
	.type	x264_param2string,@function
x264_param2string:                      # @x264_param2string
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
	movq	624(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB18_1
# %bb.2:                                # %if.then
	callq	strlen@PLT
	movq	%rax, %r15
	addl	$1000, %r15d                    # imm = 0x3E8
	jmp	.LBB18_3
.LBB18_1:
	movl	$1000, %r15d                    # imm = 0x3E8
.LBB18_3:                               # %if.end
	movslq	%r15d, %rdi
	addq	$27, %rdi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB18_4
# %bb.5:                                # %if.end7
	movq	%rax, %r14
	addq	$27, %r14
	andq	$-16, %r14
	movq	%rax, -8(%r14)
	movl	%r15d, -12(%r14)
	movq	%r14, %r15
	testl	%ebp, %ebp
	je	.LBB18_7
# %bb.6:                                # %if.then9
	movl	20(%rbx), %edx
	movl	24(%rbx), %ecx
	movl	$.L.str.158, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r15
	addq	%r14, %r15
	movl	652(%rbx), %edx
	movl	656(%rbx), %ecx
	movl	$.L.str.159, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r12
	addq	%r15, %r12
	movl	660(%rbx), %edx
	movl	664(%rbx), %ecx
	movl	$.L.str.160, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r15
	addq	%r12, %r15
.LBB18_7:                               # %if.end17
	movl	128(%rbx), %edx
	movl	$.L.str.161, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r12
	addq	%r15, %r12
	movl	80(%rbx), %edx
	movl	$.L.str.162, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r15
	addq	%r12, %r15
	movl	116(%rbx), %edx
	movl	120(%rbx), %ecx
	movl	124(%rbx), %r8d
	movl	$.L.str.163, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r12
	addq	%r15, %r12
	movl	384(%rbx), %edx
	movl	388(%rbx), %ecx
	movl	$.L.str.164, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r15
	addq	%r12, %r15
	movslq	412(%rbx), %rax
	movq	x264_motion_est_names(,%rax,8), %rdx
	movl	$.L.str.165, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r12
	addq	%r15, %r12
	movl	428(%rbx), %edx
	movl	$.L.str.166, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r13
	addq	%r12, %r13
	movl	464(%rbx), %edx
	movl	$.L.str.167, %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r15
	addq	%r13, %r15
	cmpl	$0, 464(%rbx)
	je	.LBB18_9
# %bb.8:                                # %if.then46
	movss	456(%rbx), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	460(%rbx), %xmm1                # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movl	$.L.str.168, %esi
	movq	%r15, %rdi
	movb	$2, %al
	callq	sprintf@PLT
	cltq
	addq	%rax, %r15
.LBB18_9:                               # %if.end54
	movl	436(%rbx), %edx
	movl	$.L.str.169, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r12
	addq	%r15, %r12
	movl	416(%rbx), %edx
	movl	$.L.str.170, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r15
	addq	%r12, %r15
	movl	432(%rbx), %edx
	movl	$.L.str.171, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r12
	addq	%r15, %r12
	movl	440(%rbx), %edx
	movl	$.L.str.172, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r15
	addq	%r12, %r15
	movl	392(%rbx), %edx
	movl	$.L.str.173, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r12
	addq	%r15, %r12
	movl	144(%rbx), %edx
	movl	$.L.str.174, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r15
	addq	%r12, %r15
	movl	468(%rbx), %edx
	movl	472(%rbx), %ecx
	movl	$.L.str.175, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r12
	addq	%r15, %r12
	movl	444(%rbx), %edx
	movl	$.L.str.176, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r15
	addq	%r12, %r15
	movl	408(%rbx), %edx
	movl	$.L.str.177, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r12
	addq	%r15, %r12
	movl	4(%rbx), %edx
	movl	$.L.str.178, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r13
	addq	%r12, %r13
	movl	8(%rbx), %edx
	movl	$.L.str.179, %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r15
	addq	%r13, %r15
	movl	692(%rbx), %edx
	testl	%edx, %edx
	je	.LBB18_11
# %bb.10:                               # %if.then101
	movl	$.L.str.180, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	cltq
	addq	%rax, %r15
.LBB18_11:                              # %if.end106
	movl	684(%rbx), %edx
	testl	%edx, %edx
	je	.LBB18_13
# %bb.12:                               # %if.then108
	movl	$.L.str.181, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	cltq
	addq	%rax, %r15
.LBB18_13:                              # %if.end113
	movl	688(%rbx), %edx
	testl	%edx, %edx
	je	.LBB18_15
# %bb.14:                               # %if.then115
	movl	$.L.str.182, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	cltq
	addq	%rax, %r15
.LBB18_15:                              # %if.end120
	movl	452(%rbx), %edx
	movl	$.L.str.183, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r12
	addq	%r15, %r12
	movl	448(%rbx), %edx
	movl	$.L.str.184, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r15
	addq	%r12, %r15
	cmpl	$0, 136(%rbx)
	je	.LBB18_16
# %bb.17:                               # %cond.true
	cmpl	$0, 672(%rbx)
	movl	$.L.str.57, %eax
	movl	$.L.str.56, %edx
	cmoveq	%rax, %rdx
	jmp	.LBB18_18
.LBB18_4:                               # %x264_malloc.exit.thread
	xorl	%r14d, %r14d
	movl	$.L.str.156, %edx
	xorl	%edi, %edi
	xorl	%esi, %esi
	movl	%r15d, %ecx
	xorl	%eax, %eax
	callq	x264_log
	jmp	.LBB18_54
.LBB18_16:
	movl	$.L.str.186, %edx
.LBB18_18:                              # %cond.end
	xorl	%ebp, %ebp
	movl	$.L.str.185, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r12
	addq	%r15, %r12
	movl	140(%rbx), %edx
	movl	$.L.str.187, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r13
	addq	%r12, %r13
	movl	100(%rbx), %edx
	movl	$.L.str.188, %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r15
	addq	%r13, %r15
	cmpl	$0, 100(%rbx)
	je	.LBB18_20
# %bb.19:                               # %if.then143
	movl	112(%rbx), %edx
	movl	104(%rbx), %ecx
	movl	108(%rbx), %r8d
	movl	404(%rbx), %r9d
	movl	400(%rbx), %eax
	movl	%eax, (%rsp)
	movl	$.L.str.189, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	cltq
	addq	%rax, %r15
.LBB18_20:                              # %if.end149
	movl	396(%rbx), %edx
	testl	%edx, %edx
	cmovlel	%ebp, %edx
	movl	$.L.str.190, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r13
	addq	%r15, %r13
	movl	84(%rbx), %edx
	movl	88(%rbx), %ecx
	movl	92(%rbx), %r8d
	movl	96(%rbx), %r9d
	movl	$.L.str.191, %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r12
	addq	%r13, %r12
	cmpl	$0, 552(%rbx)
	jne	.LBB18_22
# %bb.21:                               # %lor.lhs.false
	cmpl	$0, 528(%rbx)
	je	.LBB18_23
.LBB18_22:                              # %if.then168
	movl	556(%rbx), %edx
	movl	$.L.str.192, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	cltq
	addq	%rax, %r12
.LBB18_23:                              # %if.end173
	movl	488(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB18_26
# %bb.24:                               # %cond.true177
	movl	$.L.str.194, %edx
	cmpl	$0, 576(%rbx)
	jne	.LBB18_28
# %bb.25:                               # %cond.false181
	movl	524(%rbx), %eax
	cmpl	508(%rbx), %eax
	movl	$.L.str.195, %eax
	movl	$.L.str.196, %edx
	jmp	.LBB18_27
.LBB18_26:                              # %cond.false189
	cmpl	$1, %eax
	movl	$.L.str.117, %eax
	movl	$.L.str.197, %edx
.LBB18_27:                              # %cond.end195
	cmoveq	%rax, %rdx
.LBB18_28:                              # %cond.end195
	movl	552(%rbx), %ecx
	movl	$.L.str.193, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r15
	addq	%r12, %r15
	movl	488(%rbx), %eax
	testl	%eax, %eax
	je	.LBB18_38
# %bb.29:                               # %cond.end195
	cmpl	$2, %eax
	je	.LBB18_32
# %bb.30:                               # %cond.end195
	cmpl	$1, %eax
	jne	.LBB18_43
# %bb.31:                               # %if.then216
	movss	512(%rbx), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.198, %esi
	movq	%r15, %rdi
	movb	$1, %al
	callq	sprintf@PLT
	jmp	.LBB18_33
.LBB18_32:                              # %if.else
	movl	508(%rbx), %edx
	movss	520(%rbx), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.199, %esi
	movq	%r15, %rdi
	movb	$1, %al
	callq	sprintf@PLT
.LBB18_33:                              # %if.end229
	cltq
	addq	%rax, %r15
	movss	592(%rbx), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	496(%rbx), %edx
	movl	500(%rbx), %ecx
	movl	504(%rbx), %r8d
	movl	$.L.str.200, %esi
	movq	%r15, %rdi
	movb	$1, %al
	callq	sprintf@PLT
	movslq	%eax, %r12
	addq	%r15, %r12
	cmpl	$0, 576(%rbx)
	je	.LBB18_35
# %bb.34:                               # %if.then241
	movss	596(%rbx), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	600(%rbx), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movl	$.L.str.201, %esi
	movq	%r12, %rdi
	movb	$2, %al
	callq	sprintf@PLT
	cltq
	addq	%rax, %r12
.LBB18_35:                              # %if.end249
	movl	528(%rbx), %ecx
	testl	%ecx, %ecx
	je	.LBB18_40
# %bb.36:                               # %if.then253
	movl	524(%rbx), %edx
	movl	$.L.str.202, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r15
	addq	%r12, %r15
	movl	488(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB18_41
# %bb.37:                               # %if.then265
	movss	516(%rbx), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.203, %esi
	movq	%r15, %rdi
	movb	$1, %al
	callq	sprintf@PLT
	jmp	.LBB18_39
.LBB18_38:                              # %if.then278
	movl	492(%rbx), %edx
	movl	$.L.str.204, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
.LBB18_39:                              # %if.end284thread-pre-split
	movslq	%eax, %r12
	addq	%r15, %r12
.LBB18_40:                              # %if.end284thread-pre-split
	movl	488(%rbx), %eax
	movq	%r12, %r15
.LBB18_41:                              # %if.end284
	testl	%eax, %eax
	jne	.LBB18_43
# %bb.42:                               # %land.lhs.true
	cmpl	$0, 492(%rbx)
	je	.LBB18_52
.LBB18_43:                              # %if.then293
	movss	536(%rbx), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.205, %esi
	movq	%r15, %rdi
	movb	$1, %al
	callq	sprintf@PLT
	movslq	%eax, %r12
	addq	%r15, %r12
	cmpl	$0, 100(%rbx)
	je	.LBB18_46
# %bb.44:                               # %land.lhs.true301
	cmpl	$0, 552(%rbx)
	jne	.LBB18_46
# %bb.45:                               # %if.then305
	movss	540(%rbx), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.206, %esi
	movq	%r12, %rdi
	movb	$1, %al
	callq	sprintf@PLT
	cltq
	addq	%rax, %r12
.LBB18_46:                              # %if.end311
	movl	544(%rbx), %edx
	movl	$.L.str.207, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movslq	%eax, %r15
	addq	%r12, %r15
	cmpl	$0, 544(%rbx)
	je	.LBB18_48
# %bb.47:                               # %if.then319
	movss	548(%rbx), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.208, %esi
	movq	%r15, %rdi
	movb	$1, %al
	callq	sprintf@PLT
	cltq
	addq	%rax, %r15
.LBB18_48:                              # %if.end325
	movq	624(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB18_50
# %bb.49:                               # %if.then329
	movl	$.L.str.209, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	cltq
	addq	%rax, %r15
	jmp	.LBB18_52
.LBB18_50:                              # %if.else335
	cmpl	$0, 616(%rbx)
	je	.LBB18_52
# %bb.51:                               # %if.then338
	movl	$7562606, 3(%r15)               # imm = 0x73656E
	movl	$1852799520, (%r15)             # imm = 0x6E6F7A20
	addq	$6, %r15
.LBB18_52:                              # %if.end344
	cmpl	$0, 528(%rbx)
	je	.LBB18_54
# %bb.53:                               # %if.then348
	movslq	40(%rbx), %rax
	movq	x264_nal_hrd_names(,%rax,8), %rdx
	movl	$.L.str.211, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
.LBB18_54:                              # %cleanup
	movq	%r14, %rax
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
.Lfunc_end18:
	.size	x264_param2string, .Lfunc_end18-x264_param2string
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"x264_2pass.log"
	.size	.L.str, 15

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"baseline"
	.size	.L.str.1, 9

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"baseline profile doesn't support interlacing\n"
	.size	.L.str.2, 46

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"baseline profile doesn't support fake interlacing\n"
	.size	.L.str.3, 51

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"main"
	.size	.L.str.4, 5

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"high"
	.size	.L.str.5, 5

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"invalid profile: %s\n"
	.size	.L.str.6, 21

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%s profile doesn't support lossless\n"
	.size	.L.str.7, 37

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"true"
	.size	.L.str.8, 5

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"false"
	.size	.L.str.11, 6

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"asm"
	.size	.L.str.12, 4

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"auto"
	.size	.L.str.13, 5

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	","
	.size	.L.str.14, 2

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"threads"
	.size	.L.str.15, 8

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"sliced-threads"
	.size	.L.str.16, 15

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"sync-lookahead"
	.size	.L.str.17, 15

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"deterministic"
	.size	.L.str.18, 14

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"n-deterministic"
	.size	.L.str.19, 16

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"level"
	.size	.L.str.20, 6

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"level-idc"
	.size	.L.str.21, 10

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"sar"
	.size	.L.str.22, 4

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"%d:%d"
	.size	.L.str.23, 6

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"%d/%d"
	.size	.L.str.24, 6

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"overscan"
	.size	.L.str.25, 9

	.type	x264_overscan_names,@object     # @x264_overscan_names
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_overscan_names:
	.quad	.L.str.235
	.quad	.L.str.236
	.quad	.L.str.237
	.quad	0
	.size	x264_overscan_names, 32

	.type	.L.str.26,@object               # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"videoformat"
	.size	.L.str.26, 12

	.type	x264_vidformat_names,@object    # @x264_vidformat_names
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_vidformat_names:
	.quad	.L.str.238
	.quad	.L.str.239
	.quad	.L.str.240
	.quad	.L.str.241
	.quad	.L.str.242
	.quad	.L.str.235
	.quad	0
	.size	x264_vidformat_names, 56

	.type	.L.str.27,@object               # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"fullrange"
	.size	.L.str.27, 10

	.type	x264_fullrange_names,@object    # @x264_fullrange_names
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_fullrange_names:
	.quad	.L.str.243
	.quad	.L.str.244
	.quad	0
	.size	x264_fullrange_names, 24

	.type	.L.str.28,@object               # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"colorprim"
	.size	.L.str.28, 10

	.type	x264_colorprim_names,@object    # @x264_colorprim_names
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_colorprim_names:
	.quad	.L.str.245
	.quad	.L.str.246
	.quad	.L.str.235
	.quad	.L.str.245
	.quad	.L.str.247
	.quad	.L.str.248
	.quad	.L.str.249
	.quad	.L.str.250
	.quad	.L.str.224
	.quad	0
	.size	x264_colorprim_names, 80

	.type	.L.str.29,@object               # @.str.29
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.29:
	.asciz	"transfer"
	.size	.L.str.29, 9

	.type	x264_transfer_names,@object     # @x264_transfer_names
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_transfer_names:
	.quad	.L.str.245
	.quad	.L.str.246
	.quad	.L.str.235
	.quad	.L.str.245
	.quad	.L.str.247
	.quad	.L.str.248
	.quad	.L.str.249
	.quad	.L.str.250
	.quad	.L.str.251
	.quad	.L.str.252
	.quad	.L.str.253
	.quad	0
	.size	x264_transfer_names, 96

	.type	.L.str.30,@object               # @.str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.30:
	.asciz	"colormatrix"
	.size	.L.str.30, 12

	.type	x264_colmatrix_names,@object    # @x264_colmatrix_names
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_colmatrix_names:
	.quad	.L.str.254
	.quad	.L.str.246
	.quad	.L.str.235
	.quad	.L.str.245
	.quad	.L.str.255
	.quad	.L.str.248
	.quad	.L.str.249
	.quad	.L.str.250
	.quad	.L.str.256
	.quad	0
	.size	x264_colmatrix_names, 80

	.type	.L.str.31,@object               # @.str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	"chromaloc"
	.size	.L.str.31, 10

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"fps"
	.size	.L.str.32, 4

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"%u/%u"
	.size	.L.str.33, 6

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"ref"
	.size	.L.str.34, 4

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"frameref"
	.size	.L.str.35, 9

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"keyint"
	.size	.L.str.36, 7

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"min-keyint"
	.size	.L.str.37, 11

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"keyint-min"
	.size	.L.str.38, 11

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"scenecut"
	.size	.L.str.39, 9

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"intra-refresh"
	.size	.L.str.40, 14

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"bframes"
	.size	.L.str.41, 8

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"b-adapt"
	.size	.L.str.42, 8

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"b-bias"
	.size	.L.str.43, 7

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"b-pyramid"
	.size	.L.str.44, 10

	.type	x264_b_pyramid_names,@object    # @x264_b_pyramid_names
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_b_pyramid_names:
	.quad	.L.str.77
	.quad	.L.str.257
	.quad	.L.str.258
	.quad	0
	.size	x264_b_pyramid_names, 32

	.type	.L.str.46,@object               # @.str.46
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.46:
	.asciz	"filter"
	.size	.L.str.46, 7

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"deblock"
	.size	.L.str.47, 8

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"%d,%d"
	.size	.L.str.48, 6

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"%d"
	.size	.L.str.49, 3

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"slice-max-size"
	.size	.L.str.50, 15

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"slice-max-mbs"
	.size	.L.str.51, 14

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"slices"
	.size	.L.str.52, 7

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"cabac"
	.size	.L.str.53, 6

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"cabac-idc"
	.size	.L.str.54, 10

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"interlaced"
	.size	.L.str.55, 11

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"tff"
	.size	.L.str.56, 4

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"bff"
	.size	.L.str.57, 4

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"constrained-intra"
	.size	.L.str.58, 18

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"cqm"
	.size	.L.str.59, 4

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"flat"
	.size	.L.str.60, 5

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"jvt"
	.size	.L.str.61, 4

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"cqmfile"
	.size	.L.str.62, 8

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"cqm4"
	.size	.L.str.63, 5

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"cqm8"
	.size	.L.str.64, 5

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"cqm4i"
	.size	.L.str.65, 6

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"cqm4p"
	.size	.L.str.66, 6

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"cqm4iy"
	.size	.L.str.67, 7

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"cqm4ic"
	.size	.L.str.68, 7

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"cqm4py"
	.size	.L.str.69, 7

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"cqm4pc"
	.size	.L.str.70, 7

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"cqm8i"
	.size	.L.str.71, 6

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"cqm8p"
	.size	.L.str.72, 6

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"log"
	.size	.L.str.73, 4

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"dump-yuv"
	.size	.L.str.74, 9

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"analyse"
	.size	.L.str.75, 8

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"partitions"
	.size	.L.str.76, 11

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"none"
	.size	.L.str.77, 5

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"all"
	.size	.L.str.78, 4

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"i4x4"
	.size	.L.str.79, 5

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"i8x8"
	.size	.L.str.80, 5

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"p8x8"
	.size	.L.str.81, 5

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"p4x4"
	.size	.L.str.82, 5

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"b8x8"
	.size	.L.str.83, 5

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"8x8dct"
	.size	.L.str.84, 7

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"weightb"
	.size	.L.str.85, 8

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"weight-b"
	.size	.L.str.86, 9

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"weightp"
	.size	.L.str.87, 8

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"direct"
	.size	.L.str.88, 7

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"direct-pred"
	.size	.L.str.89, 12

	.type	x264_direct_pred_names,@object  # @x264_direct_pred_names
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_direct_pred_names:
	.quad	.L.str.77
	.quad	.L.str.259
	.quad	.L.str.260
	.quad	.L.str.13
	.quad	0
	.size	x264_direct_pred_names, 40

	.type	.L.str.90,@object               # @.str.90
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.90:
	.asciz	"chroma-qp-offset"
	.size	.L.str.90, 17

	.type	x264_motion_est_names,@object   # @x264_motion_est_names
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_motion_est_names:
	.quad	.L.str.261
	.quad	.L.str.262
	.quad	.L.str.263
	.quad	.L.str.264
	.quad	.L.str.265
	.quad	0
	.size	x264_motion_est_names, 48

	.type	.L.str.92,@object               # @.str.92
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.92:
	.asciz	"merange"
	.size	.L.str.92, 8

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"me-range"
	.size	.L.str.93, 9

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"mvrange"
	.size	.L.str.94, 8

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"mv-range"
	.size	.L.str.95, 9

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"mvrange-thread"
	.size	.L.str.96, 15

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"mv-range-thread"
	.size	.L.str.97, 16

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"subme"
	.size	.L.str.98, 6

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"subq"
	.size	.L.str.99, 5

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"psy-rd"
	.size	.L.str.100, 7

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"%f:%f"
	.size	.L.str.101, 6

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"%f,%f"
	.size	.L.str.102, 6

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"%f|%f"
	.size	.L.str.103, 6

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"%f"
	.size	.L.str.104, 3

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"psy"
	.size	.L.str.105, 4

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"chroma-me"
	.size	.L.str.106, 10

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"mixed-refs"
	.size	.L.str.107, 11

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"trellis"
	.size	.L.str.108, 8

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"fast-pskip"
	.size	.L.str.109, 11

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"dct-decimate"
	.size	.L.str.110, 13

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"deadzone-inter"
	.size	.L.str.111, 15

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"deadzone-intra"
	.size	.L.str.112, 15

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"bitrate"
	.size	.L.str.114, 8

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"qp_constant"
	.size	.L.str.116, 12

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"crf"
	.size	.L.str.117, 4

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"crf-max"
	.size	.L.str.118, 8

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"rc-lookahead"
	.size	.L.str.119, 13

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"qpmin"
	.size	.L.str.120, 6

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"qp-min"
	.size	.L.str.121, 7

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"qpmax"
	.size	.L.str.122, 6

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"qp-max"
	.size	.L.str.123, 7

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	"qpstep"
	.size	.L.str.124, 7

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	"qp-step"
	.size	.L.str.125, 8

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"ratetol"
	.size	.L.str.126, 8

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"vbv-maxrate"
	.size	.L.str.128, 12

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"vbv-bufsize"
	.size	.L.str.129, 12

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	"vbv-init"
	.size	.L.str.130, 9

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	"ipratio"
	.size	.L.str.131, 8

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	"ip-factor"
	.size	.L.str.132, 10

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"pbratio"
	.size	.L.str.133, 8

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"pb-factor"
	.size	.L.str.134, 10

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	"aq-mode"
	.size	.L.str.135, 8

	.type	.L.str.136,@object              # @.str.136
.L.str.136:
	.asciz	"aq-strength"
	.size	.L.str.136, 12

	.type	.L.str.137,@object              # @.str.137
.L.str.137:
	.asciz	"pass"
	.size	.L.str.137, 5

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	"stats"
	.size	.L.str.138, 6

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"qcomp"
	.size	.L.str.139, 6

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"mbtree"
	.size	.L.str.140, 7

	.type	.L.str.141,@object              # @.str.141
.L.str.141:
	.asciz	"qblur"
	.size	.L.str.141, 6

	.type	.L.str.142,@object              # @.str.142
.L.str.142:
	.asciz	"cplxblur"
	.size	.L.str.142, 9

	.type	.L.str.143,@object              # @.str.143
.L.str.143:
	.asciz	"cplx-blur"
	.size	.L.str.143, 10

	.type	.L.str.144,@object              # @.str.144
.L.str.144:
	.asciz	"zones"
	.size	.L.str.144, 6

	.type	.L.str.145,@object              # @.str.145
.L.str.145:
	.asciz	"psnr"
	.size	.L.str.145, 5

	.type	.L.str.146,@object              # @.str.146
.L.str.146:
	.asciz	"ssim"
	.size	.L.str.146, 5

	.type	.L.str.147,@object              # @.str.147
.L.str.147:
	.asciz	"aud"
	.size	.L.str.147, 4

	.type	.L.str.148,@object              # @.str.148
.L.str.148:
	.asciz	"sps-id"
	.size	.L.str.148, 7

	.type	.L.str.149,@object              # @.str.149
.L.str.149:
	.asciz	"global-header"
	.size	.L.str.149, 14

	.type	.L.str.150,@object              # @.str.150
.L.str.150:
	.asciz	"repeat-headers"
	.size	.L.str.150, 15

	.type	.L.str.151,@object              # @.str.151
.L.str.151:
	.asciz	"annexb"
	.size	.L.str.151, 7

	.type	.L.str.152,@object              # @.str.152
.L.str.152:
	.asciz	"force-cfr"
	.size	.L.str.152, 10

	.type	.L.str.153,@object              # @.str.153
.L.str.153:
	.asciz	"nal-hrd"
	.size	.L.str.153, 8

	.type	x264_nal_hrd_names,@object      # @x264_nal_hrd_names
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_nal_hrd_names:
	.quad	.L.str.77
	.quad	.L.str.266
	.quad	.L.str.195
	.quad	0
	.size	x264_nal_hrd_names, 32

	.type	.L.str.154,@object              # @.str.154
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.154:
	.asciz	"pic-struct"
	.size	.L.str.154, 11

	.type	.L.str.155,@object              # @.str.155
.L.str.155:
	.asciz	"fake-interlaced"
	.size	.L.str.155, 16

	.type	.L.str.156,@object              # @.str.156
.L.str.156:
	.asciz	"malloc of size %d failed\n"
	.size	.L.str.156, 26

	.type	.L.str.157,@object              # @.str.157
.L.str.157:
	.asciz	"rb"
	.size	.L.str.157, 3

	.type	.L.str.158,@object              # @.str.158
.L.str.158:
	.asciz	"%dx%d "
	.size	.L.str.158, 7

	.type	.L.str.159,@object              # @.str.159
.L.str.159:
	.asciz	"fps=%u/%u "
	.size	.L.str.159, 11

	.type	.L.str.160,@object              # @.str.160
.L.str.160:
	.asciz	"timebase=%u/%u "
	.size	.L.str.160, 16

	.type	.L.str.161,@object              # @.str.161
.L.str.161:
	.asciz	"cabac=%d"
	.size	.L.str.161, 9

	.type	.L.str.162,@object              # @.str.162
.L.str.162:
	.asciz	" ref=%d"
	.size	.L.str.162, 8

	.type	.L.str.163,@object              # @.str.163
.L.str.163:
	.asciz	" deblock=%d:%d:%d"
	.size	.L.str.163, 18

	.type	.L.str.164,@object              # @.str.164
.L.str.164:
	.asciz	" analyse=%#x:%#x"
	.size	.L.str.164, 17

	.type	.L.str.165,@object              # @.str.165
.L.str.165:
	.asciz	" me=%s"
	.size	.L.str.165, 7

	.type	.L.str.166,@object              # @.str.166
.L.str.166:
	.asciz	" subme=%d"
	.size	.L.str.166, 10

	.type	.L.str.167,@object              # @.str.167
.L.str.167:
	.asciz	" psy=%d"
	.size	.L.str.167, 8

	.type	.L.str.168,@object              # @.str.168
.L.str.168:
	.asciz	" psy_rd=%.2f:%.2f"
	.size	.L.str.168, 18

	.type	.L.str.169,@object              # @.str.169
.L.str.169:
	.asciz	" mixed_ref=%d"
	.size	.L.str.169, 14

	.type	.L.str.170,@object              # @.str.170
.L.str.170:
	.asciz	" me_range=%d"
	.size	.L.str.170, 13

	.type	.L.str.171,@object              # @.str.171
.L.str.171:
	.asciz	" chroma_me=%d"
	.size	.L.str.171, 14

	.type	.L.str.172,@object              # @.str.172
.L.str.172:
	.asciz	" trellis=%d"
	.size	.L.str.172, 12

	.type	.L.str.173,@object              # @.str.173
.L.str.173:
	.asciz	" 8x8dct=%d"
	.size	.L.str.173, 11

	.type	.L.str.174,@object              # @.str.174
.L.str.174:
	.asciz	" cqm=%d"
	.size	.L.str.174, 8

	.type	.L.str.175,@object              # @.str.175
.L.str.175:
	.asciz	" deadzone=%d,%d"
	.size	.L.str.175, 16

	.type	.L.str.176,@object              # @.str.176
.L.str.176:
	.asciz	" fast_pskip=%d"
	.size	.L.str.176, 15

	.type	.L.str.177,@object              # @.str.177
.L.str.177:
	.asciz	" chroma_qp_offset=%d"
	.size	.L.str.177, 21

	.type	.L.str.178,@object              # @.str.178
.L.str.178:
	.asciz	" threads=%d"
	.size	.L.str.178, 12

	.type	.L.str.179,@object              # @.str.179
.L.str.179:
	.asciz	" sliced_threads=%d"
	.size	.L.str.179, 19

	.type	.L.str.180,@object              # @.str.180
.L.str.180:
	.asciz	" slices=%d"
	.size	.L.str.180, 11

	.type	.L.str.181,@object              # @.str.181
.L.str.181:
	.asciz	" slice_max_size=%d"
	.size	.L.str.181, 19

	.type	.L.str.182,@object              # @.str.182
.L.str.182:
	.asciz	" slice_max_mbs=%d"
	.size	.L.str.182, 18

	.type	.L.str.183,@object              # @.str.183
.L.str.183:
	.asciz	" nr=%d"
	.size	.L.str.183, 7

	.type	.L.str.184,@object              # @.str.184
.L.str.184:
	.asciz	" decimate=%d"
	.size	.L.str.184, 13

	.type	.L.str.185,@object              # @.str.185
.L.str.185:
	.asciz	" interlaced=%s"
	.size	.L.str.185, 15

	.type	.L.str.186,@object              # @.str.186
.L.str.186:
	.asciz	"0"
	.size	.L.str.186, 2

	.type	.L.str.187,@object              # @.str.187
.L.str.187:
	.asciz	" constrained_intra=%d"
	.size	.L.str.187, 22

	.type	.L.str.188,@object              # @.str.188
.L.str.188:
	.asciz	" bframes=%d"
	.size	.L.str.188, 12

	.type	.L.str.189,@object              # @.str.189
.L.str.189:
	.asciz	" b_pyramid=%d b_adapt=%d b_bias=%d direct=%d weightb=%d"
	.size	.L.str.189, 56

	.type	.L.str.190,@object              # @.str.190
.L.str.190:
	.asciz	" weightp=%d"
	.size	.L.str.190, 12

	.type	.L.str.191,@object              # @.str.191
.L.str.191:
	.asciz	" keyint=%d keyint_min=%d scenecut=%d intra_refresh=%d"
	.size	.L.str.191, 54

	.type	.L.str.192,@object              # @.str.192
.L.str.192:
	.asciz	" rc_lookahead=%d"
	.size	.L.str.192, 17

	.type	.L.str.193,@object              # @.str.193
.L.str.193:
	.asciz	" rc=%s mbtree=%d"
	.size	.L.str.193, 17

	.type	.L.str.194,@object              # @.str.194
.L.str.194:
	.asciz	"2pass"
	.size	.L.str.194, 6

	.type	.L.str.195,@object              # @.str.195
.L.str.195:
	.asciz	"cbr"
	.size	.L.str.195, 4

	.type	.L.str.196,@object              # @.str.196
.L.str.196:
	.asciz	"abr"
	.size	.L.str.196, 4

	.type	.L.str.197,@object              # @.str.197
.L.str.197:
	.asciz	"cqp"
	.size	.L.str.197, 4

	.type	.L.str.198,@object              # @.str.198
.L.str.198:
	.asciz	" crf=%.1f"
	.size	.L.str.198, 10

	.type	.L.str.199,@object              # @.str.199
.L.str.199:
	.asciz	" bitrate=%d ratetol=%.1f"
	.size	.L.str.199, 25

	.type	.L.str.200,@object              # @.str.200
.L.str.200:
	.asciz	" qcomp=%.2f qpmin=%d qpmax=%d qpstep=%d"
	.size	.L.str.200, 40

	.type	.L.str.201,@object              # @.str.201
.L.str.201:
	.asciz	" cplxblur=%.1f qblur=%.1f"
	.size	.L.str.201, 26

	.type	.L.str.202,@object              # @.str.202
.L.str.202:
	.asciz	" vbv_maxrate=%d vbv_bufsize=%d"
	.size	.L.str.202, 31

	.type	.L.str.203,@object              # @.str.203
.L.str.203:
	.asciz	" crf_max=%.1f"
	.size	.L.str.203, 14

	.type	.L.str.204,@object              # @.str.204
.L.str.204:
	.asciz	" qp=%d"
	.size	.L.str.204, 7

	.type	.L.str.205,@object              # @.str.205
.L.str.205:
	.asciz	" ip_ratio=%.2f"
	.size	.L.str.205, 15

	.type	.L.str.206,@object              # @.str.206
.L.str.206:
	.asciz	" pb_ratio=%.2f"
	.size	.L.str.206, 15

	.type	.L.str.207,@object              # @.str.207
.L.str.207:
	.asciz	" aq=%d"
	.size	.L.str.207, 7

	.type	.L.str.208,@object              # @.str.208
.L.str.208:
	.asciz	":%.2f"
	.size	.L.str.208, 6

	.type	.L.str.209,@object              # @.str.209
.L.str.209:
	.asciz	" zones=%s"
	.size	.L.str.209, 10

	.type	.L.str.210,@object              # @.str.210
.L.str.210:
	.asciz	" zones"
	.size	.L.str.210, 7

	.type	.L.str.211,@object              # @.str.211
.L.str.211:
	.asciz	" nal_hrd=%s"
	.size	.L.str.211, 12

	.type	.L.str.212,@object              # @.str.212
.L.str.212:
	.asciz	"ultrafast"
	.size	.L.str.212, 10

	.type	.L.str.213,@object              # @.str.213
.L.str.213:
	.asciz	"superfast"
	.size	.L.str.213, 10

	.type	.L.str.214,@object              # @.str.214
.L.str.214:
	.asciz	"veryfast"
	.size	.L.str.214, 9

	.type	.L.str.215,@object              # @.str.215
.L.str.215:
	.asciz	"faster"
	.size	.L.str.215, 7

	.type	.L.str.216,@object              # @.str.216
.L.str.216:
	.asciz	"fast"
	.size	.L.str.216, 5

	.type	.L.str.217,@object              # @.str.217
.L.str.217:
	.asciz	"medium"
	.size	.L.str.217, 7

	.type	.L.str.218,@object              # @.str.218
.L.str.218:
	.asciz	"slow"
	.size	.L.str.218, 5

	.type	.L.str.219,@object              # @.str.219
.L.str.219:
	.asciz	"slower"
	.size	.L.str.219, 7

	.type	.L.str.220,@object              # @.str.220
.L.str.220:
	.asciz	"veryslow"
	.size	.L.str.220, 9

	.type	.L.str.221,@object              # @.str.221
.L.str.221:
	.asciz	"placebo"
	.size	.L.str.221, 8

	.type	.L.str.222,@object              # @.str.222
.L.str.222:
	.asciz	"invalid preset '%s'\n"
	.size	.L.str.222, 21

	.type	.L.str.223,@object              # @.str.223
.L.str.223:
	.asciz	",./-+"
	.size	.L.str.223, 6

	.type	.L.str.224,@object              # @.str.224
.L.str.224:
	.asciz	"film"
	.size	.L.str.224, 5

	.type	.L.str.225,@object              # @.str.225
.L.str.225:
	.asciz	"animation"
	.size	.L.str.225, 10

	.type	.L.str.226,@object              # @.str.226
.L.str.226:
	.asciz	"grain"
	.size	.L.str.226, 6

	.type	.L.str.227,@object              # @.str.227
.L.str.227:
	.asciz	"stillimage"
	.size	.L.str.227, 11

	.type	.L.str.228,@object              # @.str.228
.L.str.228:
	.asciz	"fastdecode"
	.size	.L.str.228, 11

	.type	.L.str.229,@object              # @.str.229
.L.str.229:
	.asciz	"zerolatency"
	.size	.L.str.229, 12

	.type	.L.str.230,@object              # @.str.230
.L.str.230:
	.asciz	"touhou"
	.size	.L.str.230, 7

	.type	.L.str.231,@object              # @.str.231
.L.str.231:
	.asciz	"invalid tune '%s'\n"
	.size	.L.str.231, 19

	.type	.L.str.232,@object              # @.str.232
.L.str.232:
	.asciz	"only 1 psy tuning can be used: ignoring tune %s\n"
	.size	.L.str.232, 49

	.type	.L.str.234,@object              # @.str.234
.L.str.234:
	.asciz	"yes"
	.size	.L.str.234, 4

	.type	.L.str.235,@object              # @.str.235
.L.str.235:
	.asciz	"undef"
	.size	.L.str.235, 6

	.type	.L.str.236,@object              # @.str.236
.L.str.236:
	.asciz	"show"
	.size	.L.str.236, 5

	.type	.L.str.237,@object              # @.str.237
.L.str.237:
	.asciz	"crop"
	.size	.L.str.237, 5

	.type	.L.str.238,@object              # @.str.238
.L.str.238:
	.asciz	"component"
	.size	.L.str.238, 10

	.type	.L.str.239,@object              # @.str.239
.L.str.239:
	.asciz	"pal"
	.size	.L.str.239, 4

	.type	.L.str.240,@object              # @.str.240
.L.str.240:
	.asciz	"ntsc"
	.size	.L.str.240, 5

	.type	.L.str.241,@object              # @.str.241
.L.str.241:
	.asciz	"secam"
	.size	.L.str.241, 6

	.type	.L.str.242,@object              # @.str.242
.L.str.242:
	.asciz	"mac"
	.size	.L.str.242, 4

	.type	.L.str.243,@object              # @.str.243
.L.str.243:
	.asciz	"off"
	.size	.L.str.243, 4

	.type	.L.str.244,@object              # @.str.244
.L.str.244:
	.asciz	"on"
	.size	.L.str.244, 3

	.type	.L.str.245,@object              # @.str.245
.L.str.245:
	.zero	1
	.size	.L.str.245, 1

	.type	.L.str.246,@object              # @.str.246
.L.str.246:
	.asciz	"bt709"
	.size	.L.str.246, 6

	.type	.L.str.247,@object              # @.str.247
.L.str.247:
	.asciz	"bt470m"
	.size	.L.str.247, 7

	.type	.L.str.248,@object              # @.str.248
.L.str.248:
	.asciz	"bt470bg"
	.size	.L.str.248, 8

	.type	.L.str.249,@object              # @.str.249
.L.str.249:
	.asciz	"smpte170m"
	.size	.L.str.249, 10

	.type	.L.str.250,@object              # @.str.250
.L.str.250:
	.asciz	"smpte240m"
	.size	.L.str.250, 10

	.type	.L.str.251,@object              # @.str.251
.L.str.251:
	.asciz	"linear"
	.size	.L.str.251, 7

	.type	.L.str.252,@object              # @.str.252
.L.str.252:
	.asciz	"log100"
	.size	.L.str.252, 7

	.type	.L.str.253,@object              # @.str.253
.L.str.253:
	.asciz	"log316"
	.size	.L.str.253, 7

	.type	.L.str.254,@object              # @.str.254
.L.str.254:
	.asciz	"GBR"
	.size	.L.str.254, 4

	.type	.L.str.255,@object              # @.str.255
.L.str.255:
	.asciz	"fcc"
	.size	.L.str.255, 4

	.type	.L.str.256,@object              # @.str.256
.L.str.256:
	.asciz	"YCgCo"
	.size	.L.str.256, 6

	.type	.L.str.257,@object              # @.str.257
.L.str.257:
	.asciz	"strict"
	.size	.L.str.257, 7

	.type	.L.str.258,@object              # @.str.258
.L.str.258:
	.asciz	"normal"
	.size	.L.str.258, 7

	.type	.L.str.259,@object              # @.str.259
.L.str.259:
	.asciz	"spatial"
	.size	.L.str.259, 8

	.type	.L.str.260,@object              # @.str.260
.L.str.260:
	.asciz	"temporal"
	.size	.L.str.260, 9

	.type	.L.str.261,@object              # @.str.261
.L.str.261:
	.asciz	"dia"
	.size	.L.str.261, 4

	.type	.L.str.262,@object              # @.str.262
.L.str.262:
	.asciz	"hex"
	.size	.L.str.262, 4

	.type	.L.str.263,@object              # @.str.263
.L.str.263:
	.asciz	"umh"
	.size	.L.str.263, 4

	.type	.L.str.264,@object              # @.str.264
.L.str.264:
	.asciz	"esa"
	.size	.L.str.264, 4

	.type	.L.str.265,@object              # @.str.265
.L.str.265:
	.asciz	"tesa"
	.size	.L.str.265, 5

	.type	.L.str.266,@object              # @.str.266
.L.str.266:
	.asciz	"vbr"
	.size	.L.str.266, 4

	.type	.L.str.267,@object              # @.str.267
.L.str.267:
	.asciz	"error"
	.size	.L.str.267, 6

	.type	.L.str.268,@object              # @.str.268
.L.str.268:
	.asciz	"warning"
	.size	.L.str.268, 8

	.type	.L.str.269,@object              # @.str.269
.L.str.269:
	.asciz	"info"
	.size	.L.str.269, 5

	.type	.L.str.270,@object              # @.str.270
.L.str.270:
	.asciz	"debug"
	.size	.L.str.270, 6

	.type	.L.str.271,@object              # @.str.271
.L.str.271:
	.asciz	"unknown"
	.size	.L.str.271, 8

	.type	.L.str.272,@object              # @.str.272
.L.str.272:
	.asciz	"x264 [%s]: "
	.size	.L.str.272, 12

	.type	.Lswitch.table.x264_log,@object # @switch.table.x264_log
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.Lswitch.table.x264_log:
	.quad	.L.str.267
	.quad	.L.str.268
	.quad	.L.str.269
	.quad	.L.str.270
	.size	.Lswitch.table.x264_log, 32

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
