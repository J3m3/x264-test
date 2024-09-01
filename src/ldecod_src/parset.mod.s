	.text
	.file	"parset.c"
	.globl	Scaling_List                    # -- Begin function Scaling_List
	.p2align	4, 0x90
	.type	Scaling_List,@function
Scaling_List:                           # @Scaling_List
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
	movq	%rcx, (%rsp)                    # 8-byte Spill
	testl	%esi, %esi
	jle	.LBB0_12
# %bb.1:                                # %for.body.lr.ph
	movq	%rdx, %r14
	movq	%rdi, %r15
	cmpl	$16, %esi
	jne	.LBB0_7
# %bb.2:                                # %for.body.us.preheader
	movl	$8, %ecx
	xorl	%r12d, %r12d
	movl	$8, %r13d
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_5:                                # %if.end.us
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$.L.str, %edi
	movq	(%rsp), %rsi                    # 8-byte Reload
	callq	se_v@PLT
                                        # kill: def $eax killed $eax def $rax
	leal	(%rax,%r13), %ecx
	addl	$256, %ecx                      # imm = 0x100
	addl	%r13d, %eax
	addl	$511, %eax                      # imm = 0x1FF
	testl	%ecx, %ecx
	cmovnsl	%ecx, %eax
	andl	$-256, %eax
	subl	%eax, %ecx
	xorl	%eax, %eax
	movl	%r12d, %edx
	orl	%ecx, %edx
	sete	%al
	movl	%eax, (%r14)
	testl	%ecx, %ecx
	cmovnel	%ecx, %r13d
.LBB0_6:                                # %if.end.thread.us
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	%r13d, (%r15,%rbp,4)
	incq	%r12
	cmpq	$16, %r12
	je	.LBB0_12
.LBB0_3:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	movzbl	ZZ_SCAN(%r12), %ebp
	testl	%ecx, %ecx
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB0_6
.LBB0_7:                                # %for.body.preheader
	movl	%esi, %r12d
	movl	$8, %ecx
	xorl	%r13d, %r13d
	movl	$8, %ebp
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_10:                               # %if.end
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	$.L.str, %edi
	movq	(%rsp), %rsi                    # 8-byte Reload
	callq	se_v@PLT
                                        # kill: def $eax killed $eax def $rax
	leal	(%rax,%rbp), %ecx
	addl	$256, %ecx                      # imm = 0x100
	addl	%ebp, %eax
	addl	$511, %eax                      # imm = 0x1FF
	testl	%ecx, %ecx
	cmovnsl	%ecx, %eax
	andl	$-256, %eax
	subl	%eax, %ecx
	xorl	%eax, %eax
	movl	%r13d, %edx
	orl	%ecx, %edx
	sete	%al
	movl	%eax, (%r14)
	testl	%ecx, %ecx
	cmovnel	%ecx, %ebp
	movl	%ebp, (%r15,%rbx,4)
	incq	%r13
	cmpq	%r13, %r12
	je	.LBB0_12
.LBB0_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	ZZ_SCAN8(%r13), %ebx
	testl	%ecx, %ecx
	jne	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	xorl	%ecx, %ecx
	movl	%ebp, (%r15,%rbx,4)
	incq	%r13
	cmpq	%r13, %r12
	jne	.LBB0_8
.LBB0_12:                               # %for.end
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
.Lfunc_end0:
	.size	Scaling_List, .Lfunc_end0-Scaling_List
	.cfi_endproc
                                        # -- End function
	.globl	InterpretSPS                    # -- Begin function InterpretSPS
	.p2align	4, 0x90
	.type	InterpretSPS,@function
InterpretSPS:                           # @InterpretSPS
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	(%rsi), %r13
	movq	p_Dec@GOTPCREL(%rip), %r14
	movq	(%r14), %rax
	movl	$0, 24(%rax)
	movl	$.L.str.1, %esi
	movl	$8, %edi
	movq	%r13, %rdx
	callq	u_v@PLT
                                        # kill: def $eax killed $eax def $rax
	movl	%eax, 4(%rbx)
	leal	-44(%rax), %ecx
	cmpl	$84, %ecx
	ja	.LBB1_1
# %bb.37:                               # %entry
	jmpq	*.LJTI1_0(,%rcx,8)
.LBB1_3:                                # %if.end
	movq	%r15, 8(%rsp)                   # 8-byte Spill
	movl	$.L.str.3, %edi
	movq	%r13, %rsi
	callq	u_1@PLT
	movl	%eax, 8(%rbx)
	movl	$.L.str.4, %edi
	movq	%r13, %rsi
	callq	u_1@PLT
	movl	%eax, 12(%rbx)
	movl	$.L.str.5, %edi
	movq	%r13, %rsi
	callq	u_1@PLT
	movl	%eax, 16(%rbx)
	movl	$.L.str.6, %edi
	movq	%r13, %rsi
	callq	u_1@PLT
	movl	%eax, 20(%rbx)
	movl	$.L.str.7, %edi
	movq	%r13, %rsi
	callq	u_1@PLT
	movl	%eax, 24(%rbx)
	movl	$.L.str.8, %esi
	movl	$3, %edi
	movq	%r13, %rdx
	callq	u_v@PLT
	movl	$.L.str.9, %esi
	movl	$8, %edi
	movq	%r13, %rdx
	callq	u_v@PLT
	movl	%eax, 28(%rbx)
	movl	$.L.str.10, %edi
	movq	%r13, %rsi
	callq	ue_v@PLT
	movl	%eax, 32(%rbx)
	movl	$1, 36(%rbx)
	movq	$0, 2060(%rbx)
	movl	$0, 849092(%r12)
	movl	$0, 4120(%rbx)
	movq	%rbx, (%rsp)                    # 8-byte Spill
	movl	4(%rbx), %eax
	leal	-100(%rax), %ecx
	cmpl	$28, %ecx
	ja	.LBB1_4
# %bb.38:                               # %if.end
	movl	$272892929, %edx                # imm = 0x10440401
	btl	%ecx, %edx
	jae	.LBB1_4
.LBB1_6:                                # %if.then58
	movl	$.L.str.11, %edi
	movq	%r13, %rsi
	callq	ue_v@PLT
	movq	(%rsp), %rbx                    # 8-byte Reload
	movl	%eax, 36(%rbx)
	cmpl	$3, %eax
	jne	.LBB1_8
# %bb.7:                                # %if.then63
	movl	$.L.str.12, %edi
	movq	%r13, %rsi
	callq	u_1@PLT
	movl	%eax, 4120(%rbx)
.LBB1_8:                                # %if.end66
	movl	$.L.str.13, %edi
	movq	%r13, %rsi
	callq	ue_v@PLT
	movl	%eax, 2060(%rbx)
	movl	$.L.str.14, %edi
	movq	%r13, %rsi
	callq	ue_v@PLT
	movl	%eax, 2064(%rbx)
	movl	2060(%rbx), %ecx
	addl	$-9, %ecx
	cmpl	$-17, %ecx
	setb	%cl
	addl	$-9, %eax
	cmpl	$-17, %eax
	setb	%al
	orb	%cl, %al
	cmpb	$1, %al
	jne	.LBB1_10
# %bb.9:                                # %if.then80
	movl	$.L.str.15, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
.LBB1_10:                               # %if.end81
	movl	$.L.str.16, %edi
	movq	%r13, %rsi
	callq	u_1@PLT
	movl	%eax, 849092(%r12)
	movl	$.L.str.17, %edi
	movq	%r13, %rsi
	callq	u_1@PLT
	movl	%eax, 40(%rbx)
	testl	%eax, %eax
	je	.LBB1_25
# %bb.11:                               # %if.then86
	xorl	%eax, %eax
	movq	(%rsp), %rcx                    # 8-byte Reload
	cmpl	$3, 36(%rcx)
	sete	%al
	leaq	8(,%rax,4), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	476(%rcx), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	leaq	92(%rcx), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	xorl	%ebp, %ebp
	jmp	.LBB1_12
	.p2align	4, 0x90
.LBB1_24:                               # %for.inc
                                        #   in Loop: Header=BB1_12 Depth=1
	incq	%rbp
	cmpq	32(%rsp), %rbp                  # 8-byte Folded Reload
	movq	%rbx, %r13
	je	.LBB1_25
.LBB1_12:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_20 Depth 2
                                        #     Child Loop BB1_15 Depth 2
	movl	$.L.str.18, %edi
	movq	%r13, %rbx
	movq	%r13, %rsi
	callq	u_1@PLT
	movq	(%rsp), %rcx                    # 8-byte Reload
	movl	%eax, 44(%rcx,%rbp,4)
	testl	%eax, %eax
	je	.LBB1_24
# %bb.13:                               # %if.then97
                                        #   in Loop: Header=BB1_12 Depth=1
	cmpq	$5, %rbp
	ja	.LBB1_19
# %bb.14:                               # %if.then100
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	%rbp, %r14
	shlq	$6, %r14
	addq	16(%rsp), %r14                  # 8-byte Folded Reload
	movl	$8, %ecx
	xorl	%r13d, %r13d
	movl	$8, %r12d
	jmp	.LBB1_15
	.p2align	4, 0x90
.LBB1_17:                               # %if.end.us.i
                                        #   in Loop: Header=BB1_15 Depth=2
	movl	$.L.str, %edi
	movq	%rbx, %rsi
	callq	se_v@PLT
                                        # kill: def $eax killed $eax def $rax
	leal	(%rax,%r12), %ecx
	addl	$256, %ecx                      # imm = 0x100
	addl	%r12d, %eax
	addl	$511, %eax                      # imm = 0x1FF
	testl	%ecx, %ecx
	cmovnsl	%ecx, %eax
	andl	$-256, %eax
	subl	%eax, %ecx
	xorl	%eax, %eax
	movl	%r13d, %edx
	orl	%ecx, %edx
	sete	%al
	movq	(%rsp), %rdx                    # 8-byte Reload
	movl	%eax, 2012(%rdx,%rbp,4)
	testl	%ecx, %ecx
	cmovnel	%ecx, %r12d
.LBB1_18:                               # %if.end.thread.us.i
                                        #   in Loop: Header=BB1_15 Depth=2
	movl	%r12d, (%r14,%r15,4)
	incq	%r13
	cmpq	$16, %r13
	je	.LBB1_24
.LBB1_15:                               # %for.body.us.i
                                        #   Parent Loop BB1_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	ZZ_SCAN(%r13), %r15d
	testl	%ecx, %ecx
	jne	.LBB1_17
# %bb.16:                               #   in Loop: Header=BB1_15 Depth=2
	xorl	%ecx, %ecx
	jmp	.LBB1_18
	.p2align	4, 0x90
.LBB1_19:                               # %if.else
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	%rbp, %rax
	shlq	$8, %rax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rax,%rcx), %r14
	addq	$-1536, %r14                    # imm = 0xFA00
	movl	$8, %ecx
	xorl	%r13d, %r13d
	movl	$8, %r12d
	jmp	.LBB1_20
	.p2align	4, 0x90
.LBB1_22:                               # %if.end.i
                                        #   in Loop: Header=BB1_20 Depth=2
	movl	$.L.str, %edi
	movq	%rbx, %rsi
	callq	se_v@PLT
                                        # kill: def $eax killed $eax def $rax
	leal	(%rax,%r12), %ecx
	addl	$256, %ecx                      # imm = 0x100
	addl	%r12d, %eax
	addl	$511, %eax                      # imm = 0x1FF
	testl	%ecx, %ecx
	cmovnsl	%ecx, %eax
	andl	$-256, %eax
	subl	%eax, %ecx
	xorl	%eax, %eax
	movl	%r13d, %edx
	orl	%ecx, %edx
	sete	%al
	movq	(%rsp), %rdx                    # 8-byte Reload
	movl	%eax, 2012(%rdx,%rbp,4)
	testl	%ecx, %ecx
	cmovnel	%ecx, %r12d
	movl	%r12d, (%r14,%r15,4)
	incq	%r13
	cmpq	$64, %r13
	je	.LBB1_24
.LBB1_20:                               # %for.body.i
                                        #   Parent Loop BB1_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	ZZ_SCAN8(%r13), %r15d
	testl	%ecx, %ecx
	jne	.LBB1_22
# %bb.21:                               #   in Loop: Header=BB1_20 Depth=2
	xorl	%ecx, %ecx
	movl	%r12d, (%r14,%r15,4)
	incq	%r13
	cmpq	$64, %r13
	jne	.LBB1_20
	jmp	.LBB1_24
.LBB1_4:                                # %if.end
	cmpl	$244, %eax
	je	.LBB1_6
# %bb.5:                                # %if.end
	cmpl	$44, %eax
	je	.LBB1_6
.LBB1_25:                               # %if.end114
	movl	$.L.str.19, %edi
	movq	%r13, %rsi
	callq	ue_v@PLT
	movq	(%rsp), %rbx                    # 8-byte Reload
	movl	%eax, 2068(%rbx)
	movl	$.L.str.20, %edi
	movq	%r13, %rsi
	callq	ue_v@PLT
	movl	%eax, 2072(%rbx)
	cmpl	$1, %eax
	je	.LBB1_28
# %bb.26:                               # %if.end114
	testl	%eax, %eax
	movq	8(%rsp), %r15                   # 8-byte Reload
	jne	.LBB1_31
# %bb.27:                               # %if.then120
	movl	$.L.str.21, %edi
	movq	%r13, %rsi
	callq	ue_v@PLT
	movl	%eax, 2076(%rbx)
	jmp	.LBB1_31
.LBB1_28:                               # %if.then126
	movl	$.L.str.22, %edi
	movq	%r13, %rsi
	callq	u_1@PLT
	movl	%eax, 2080(%rbx)
	movl	$.L.str.23, %edi
	movq	%r13, %rsi
	callq	se_v@PLT
	movl	%eax, 2084(%rbx)
	movl	$.L.str.24, %edi
	movq	%r13, %rsi
	callq	se_v@PLT
	movl	%eax, 2088(%rbx)
	movl	$.L.str.25, %edi
	movq	%r13, %rsi
	callq	ue_v@PLT
	movl	%eax, 2092(%rbx)
	testl	%eax, %eax
	movq	8(%rsp), %r15                   # 8-byte Reload
	je	.LBB1_31
# %bb.29:                               # %for.body135.lr.ph
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB1_30:                               # %for.body135
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.26, %edi
	movq	%r13, %rsi
	callq	se_v@PLT
	movl	%eax, 2096(%rbx,%r14,4)
	incq	%r14
	movl	2092(%rbx), %eax
	cmpq	%rax, %r14
	jb	.LBB1_30
.LBB1_31:                               # %if.end143
	movl	$.L.str.27, %edi
	movq	%r13, %rsi
	callq	ue_v@PLT
	movl	%eax, 3120(%rbx)
	movl	$.L.str.28, %edi
	movq	%r13, %rsi
	callq	u_1@PLT
	movl	%eax, 3124(%rbx)
	movl	$.L.str.29, %edi
	movq	%r13, %rsi
	callq	ue_v@PLT
	movl	%eax, 3128(%rbx)
	movl	$.L.str.30, %edi
	movq	%r13, %rsi
	callq	ue_v@PLT
	movl	%eax, 3132(%rbx)
	movl	$.L.str.31, %edi
	movq	%r13, %rsi
	callq	u_1@PLT
	movl	%eax, 3136(%rbx)
	testl	%eax, %eax
	jne	.LBB1_33
# %bb.32:                               # %if.then151
	movl	$.L.str.32, %edi
	movq	%r13, %rsi
	callq	u_1@PLT
	movl	%eax, 3140(%rbx)
.LBB1_33:                               # %if.end153
	movl	$.L.str.33, %edi
	movq	%r13, %rsi
	callq	u_1@PLT
	movl	%eax, 3144(%rbx)
	movl	$.L.str.34, %edi
	movq	%r13, %rsi
	callq	u_1@PLT
	movl	%eax, 3148(%rbx)
	testl	%eax, %eax
	movq	p_Dec@GOTPCREL(%rip), %r14
	je	.LBB1_35
# %bb.34:                               # %if.then158
	movl	$.L.str.35, %edi
	movq	%r13, %rsi
	callq	ue_v@PLT
	movl	%eax, 3152(%rbx)
	movl	$.L.str.36, %edi
	movq	%r13, %rsi
	callq	ue_v@PLT
	movl	%eax, 3156(%rbx)
	movl	$.L.str.37, %edi
	movq	%r13, %rsi
	callq	ue_v@PLT
	movl	%eax, 3160(%rbx)
	movl	$.L.str.38, %edi
	movq	%r13, %rsi
	callq	ue_v@PLT
	movl	%eax, 3164(%rbx)
.LBB1_35:                               # %if.end163
	movl	$.L.str.39, %edi
	movq	%r13, %rsi
	callq	u_1@PLT
	movl	%eax, 3168(%rbx)
	movl	$2, 3216(%rbx)
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ReadVUI
	movl	$1, (%rbx)
.LBB1_36:                               # %cleanup
	movq	(%r14), %rax
	movl	24(%rax), %eax
	addq	$40, %rsp
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
.LBB1_1:                                # %entry
	.cfi_def_cfa_offset 96
	cmpl	$244, %eax
	je	.LBB1_3
.LBB1_2:                                # %if.then
	movl	$.L.str.2, %edi
	movl	%eax, %esi
	xorl	%eax, %eax
	callq	printf@PLT
	jmp	.LBB1_36
.Lfunc_end1:
	.size	InterpretSPS, .Lfunc_end1-InterpretSPS
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI1_0:
	.quad	.LBB1_3
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_3
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_3
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_3
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_3
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_3
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_3
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_3
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_3
                                        # -- End function
	.text
	.globl	InitVUI                         # -- Begin function InitVUI
	.p2align	4, 0x90
	.type	InitVUI,@function
InitVUI:                                # @InitVUI
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$2, 3216(%rdi)
	retq
.Lfunc_end2:
	.size	InitVUI, .Lfunc_end2-InitVUI
	.cfi_endproc
                                        # -- End function
	.globl	ReadVUI                         # -- Begin function ReadVUI
	.p2align	4, 0x90
	.type	ReadVUI,@function
ReadVUI:                                # @ReadVUI
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	$0, 3168(%rsi)
	je	.LBB3_23
# %bb.1:                                # %if.then
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	(%rdi), %r14
	movl	$.L.str.40, %edi
	movq	%r14, %rsi
	callq	u_1@PLT
	movl	%eax, 3172(%rbx)
	testl	%eax, %eax
	je	.LBB3_4
# %bb.2:                                # %if.then4
	movl	$.L.str.41, %esi
	movl	$8, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	%eax, 3176(%rbx)
	cmpl	$255, %eax
	jne	.LBB3_4
# %bb.3:                                # %if.then9
	movl	$.L.str.42, %esi
	movl	$16, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movw	%ax, 3180(%rbx)
	movl	$.L.str.43, %esi
	movl	$16, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movw	%ax, 3182(%rbx)
.LBB3_4:                                # %if.end15
	movl	$.L.str.44, %edi
	movq	%r14, %rsi
	callq	u_1@PLT
	movl	%eax, 3184(%rbx)
	testl	%eax, %eax
	je	.LBB3_6
# %bb.5:                                # %if.then21
	movl	$.L.str.45, %edi
	movq	%r14, %rsi
	callq	u_1@PLT
	movl	%eax, 3188(%rbx)
.LBB3_6:                                # %if.end24
	movl	$.L.str.46, %edi
	movq	%r14, %rsi
	callq	u_1@PLT
	movl	%eax, 3192(%rbx)
	testl	%eax, %eax
	je	.LBB3_9
# %bb.7:                                # %if.then30
	movl	$.L.str.47, %esi
	movl	$3, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	%eax, 3196(%rbx)
	movl	$.L.str.48, %edi
	movq	%r14, %rsi
	callq	u_1@PLT
	movl	%eax, 3200(%rbx)
	movl	$.L.str.49, %edi
	movq	%r14, %rsi
	callq	u_1@PLT
	movl	%eax, 3204(%rbx)
	testl	%eax, %eax
	je	.LBB3_9
# %bb.8:                                # %if.then40
	movl	$.L.str.50, %esi
	movl	$8, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	%eax, 3208(%rbx)
	movl	$.L.str.51, %esi
	movl	$8, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	%eax, 3212(%rbx)
	movl	$.L.str.52, %esi
	movl	$8, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	%eax, 3216(%rbx)
.LBB3_9:                                # %if.end48
	movl	$.L.str.53, %edi
	movq	%r14, %rsi
	callq	u_1@PLT
	movl	%eax, 3220(%rbx)
	testl	%eax, %eax
	je	.LBB3_11
# %bb.10:                               # %if.then54
	movl	$.L.str.54, %edi
	movq	%r14, %rsi
	callq	ue_v@PLT
	movl	%eax, 3224(%rbx)
	movl	$.L.str.55, %edi
	movq	%r14, %rsi
	callq	ue_v@PLT
	movl	%eax, 3228(%rbx)
.LBB3_11:                               # %if.end59
	movl	$.L.str.56, %edi
	movq	%r14, %rsi
	callq	u_1@PLT
	movl	%eax, 3232(%rbx)
	testl	%eax, %eax
	je	.LBB3_13
# %bb.12:                               # %if.then65
	movl	$.L.str.57, %esi
	movl	$32, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	%eax, 3236(%rbx)
	movl	$.L.str.58, %esi
	movl	$32, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	%eax, 3240(%rbx)
	movl	$.L.str.59, %edi
	movq	%r14, %rsi
	callq	u_1@PLT
	movl	%eax, 3244(%rbx)
.LBB3_13:                               # %if.end72
	movl	$.L.str.60, %edi
	movq	%r14, %rsi
	callq	u_1@PLT
	movl	%eax, 3248(%rbx)
	testl	%eax, %eax
	je	.LBB3_15
# %bb.14:                               # %if.then78
	leaq	3252(%rbx), %rsi
	movq	%r15, %rdi
	callq	ReadHRDParameters
.LBB3_15:                               # %if.end81
	movl	$.L.str.61, %edi
	movq	%r14, %rsi
	callq	u_1@PLT
	movl	%eax, 3664(%rbx)
	testl	%eax, %eax
	je	.LBB3_17
# %bb.16:                               # %if.then87
	leaq	3668(%rbx), %rsi
	movq	%r15, %rdi
	callq	ReadHRDParameters
.LBB3_17:                               # %if.end90
	cmpl	$0, 3248(%rbx)
	jne	.LBB3_19
# %bb.18:                               # %lor.lhs.false
	cmpl	$0, 3664(%rbx)
	je	.LBB3_20
.LBB3_19:                               # %if.then97
	movl	$.L.str.62, %edi
	movq	%r14, %rsi
	callq	u_1@PLT
	movl	%eax, 4080(%rbx)
.LBB3_20:                               # %if.end100
	movl	$.L.str.63, %edi
	movq	%r14, %rsi
	callq	u_1@PLT
	movl	%eax, 4084(%rbx)
	movl	$.L.str.64, %edi
	movq	%r14, %rsi
	callq	u_1@PLT
	movl	%eax, 4088(%rbx)
	testl	%eax, %eax
	je	.LBB3_22
# %bb.21:                               # %if.then108
	movl	$.L.str.65, %edi
	movq	%r14, %rsi
	callq	u_1@PLT
	movl	%eax, 4092(%rbx)
	movl	$.L.str.66, %edi
	movq	%r14, %rsi
	callq	ue_v@PLT
	movl	%eax, 4096(%rbx)
	movl	$.L.str.67, %edi
	movq	%r14, %rsi
	callq	ue_v@PLT
	movl	%eax, 4100(%rbx)
	movl	$.L.str.68, %edi
	movq	%r14, %rsi
	callq	ue_v@PLT
	movl	%eax, 4108(%rbx)
	movl	$.L.str.69, %edi
	movq	%r14, %rsi
	callq	ue_v@PLT
	movl	%eax, 4104(%rbx)
	movl	$.L.str.70, %edi
	movq	%r14, %rsi
	callq	ue_v@PLT
	movl	%eax, 4112(%rbx)
	movl	$.L.str.71, %edi
	movq	%r14, %rsi
	callq	ue_v@PLT
	movl	%eax, 4116(%rbx)
.LBB3_22:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
.LBB3_23:                               # %if.end124
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	ReadVUI, .Lfunc_end3-ReadVUI
	.cfi_endproc
                                        # -- End function
	.globl	ReadHRDParameters               # -- Begin function ReadHRDParameters
	.p2align	4, 0x90
	.type	ReadHRDParameters,@function
ReadHRDParameters:                      # @ReadHRDParameters
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
	movq	(%rdi), %r14
	movl	$.L.str.72, %edi
	movq	%r14, %rsi
	callq	ue_v@PLT
	movl	%eax, (%rbx)
	movl	$.L.str.73, %esi
	movl	$4, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	%eax, 4(%rbx)
	movl	$.L.str.74, %esi
	movl	$4, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	%eax, 8(%rbx)
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB4_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.75, %edi
	movq	%r14, %rsi
	callq	ue_v@PLT
	movl	%ebp, %r15d
	movl	%eax, 12(%rbx,%r15,4)
	movl	$.L.str.76, %edi
	movq	%r14, %rsi
	callq	ue_v@PLT
	movl	%eax, 140(%rbx,%r15,4)
	movl	$.L.str.77, %edi
	movq	%r14, %rsi
	callq	u_1@PLT
	movl	%eax, 268(%rbx,%r15,4)
	incl	%ebp
	cmpl	(%rbx), %ebp
	jbe	.LBB4_1
# %bb.2:                                # %for.end
	movl	$.L.str.78, %esi
	movl	$5, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	%eax, 396(%rbx)
	movl	$.L.str.79, %esi
	movl	$5, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	%eax, 400(%rbx)
	movl	$.L.str.80, %esi
	movl	$5, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	%eax, 404(%rbx)
	movl	$.L.str.81, %esi
	movl	$5, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	%eax, 408(%rbx)
	xorl	%eax, %eax
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
	.size	ReadHRDParameters, .Lfunc_end4-ReadHRDParameters
	.cfi_endproc
                                        # -- End function
	.globl	InterpretPPS                    # -- Begin function InterpretPPS
	.p2align	4, 0x90
	.type	InterpretPPS,@function
InterpretPPS:                           # @InterpretPPS
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rdi, %r15
	movq	(%rsi), %r13
	movq	p_Dec@GOTPCREL(%rip), %r12
	movq	(%r12), %rax
	movl	$0, 24(%rax)
	movl	$.L.str.82, %edi
	movq	%r13, %rsi
	callq	ue_v@PLT
	movl	%eax, 4(%rbx)
	movl	$.L.str.83, %edi
	movq	%r13, %rsi
	callq	ue_v@PLT
	movl	%eax, 8(%rbx)
	movl	$.L.str.84, %edi
	movq	%r13, %rsi
	callq	u_1@PLT
	movl	%eax, 12(%rbx)
	movl	$.L.str.85, %edi
	movq	%r13, %rsi
	callq	u_1@PLT
	movl	%eax, 2040(%rbx)
	movl	$.L.str.86, %edi
	movq	%r13, %rsi
	callq	ue_v@PLT
	movl	%eax, 2044(%rbx)
	testl	%eax, %eax
	je	.LBB5_13
# %bb.1:                                # %if.then
	movl	$.L.str.87, %edi
	movq	%r13, %rsi
	callq	ue_v@PLT
	movl	%eax, 2048(%rbx)
	cmpl	$6, %eax
	ja	.LBB5_13
# %bb.2:                                # %if.then
	movl	%eax, %eax
	jmpq	*.LJTI5_0(,%rax,8)
.LBB5_8:                                # %if.then37
	movl	$.L.str.91, %edi
	movq	%r13, %rsi
	callq	u_1@PLT
	movl	%eax, 2148(%rbx)
	movl	$.L.str.92, %edi
	movq	%r13, %rsi
	callq	ue_v@PLT
	movl	%eax, 2152(%rbx)
	jmp	.LBB5_13
.LBB5_9:                                # %if.then43
	movl	2044(%rbx), %eax
	incl	%eax
	cmpl	$3, %eax
	movl	$1, %ecx
	sbbl	$-1, %ecx
	cmpl	$5, %eax
	movl	$3, %ebp
	cmovbl	%ecx, %ebp
	movl	$.L.str.93, %edi
	movq	%r13, %rsi
	callq	ue_v@PLT
                                        # kill: def $eax killed $eax def $rax
	movl	%eax, 2156(%rbx)
	leal	1(%rax), %edi
	movl	$1, %esi
	callq	calloc@PLT
	movq	%rax, 2160(%rbx)
	testq	%rax, %rax
	jne	.LBB5_11
# %bb.10:                               # %if.then60
	movl	$.L.str.94, %edi
	callq	no_mem_exit@PLT
.LBB5_11:                               # %for.body66.preheader
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB5_12:                               # %for.body66
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.95, %esi
	movl	%ebp, %edi
	movq	%r13, %rdx
	callq	u_v@PLT
	movq	2160(%rbx), %rcx
	movl	%r14d, %edx
	movb	%al, (%rcx,%rdx)
	incl	%r14d
	cmpl	2156(%rbx), %r14d
	jbe	.LBB5_12
	jmp	.LBB5_13
.LBB5_6:                                # %for.cond.preheader
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB5_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.88, %edi
	movq	%r13, %rsi
	callq	ue_v@PLT
	movl	%ebp, %ecx
	movl	%eax, 2052(%rbx,%rcx,4)
	incl	%ebp
	cmpl	2044(%rbx), %ebp
	jbe	.LBB5_7
	jmp	.LBB5_13
.LBB5_3:                                # %for.cond16.preheader
	cmpl	$0, 2044(%rbx)
	je	.LBB5_13
# %bb.4:                                # %for.body19.lr.ph
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB5_5:                                # %for.body19
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.89, %edi
	movq	%r13, %rsi
	callq	ue_v@PLT
	movl	%eax, 2084(%rbx,%r14,4)
	movl	$.L.str.90, %edi
	movq	%r13, %rsi
	callq	ue_v@PLT
	movl	%eax, 2116(%rbx,%r14,4)
	incq	%r14
	movl	2044(%rbx), %eax
	cmpq	%rax, %r14
	jb	.LBB5_5
.LBB5_13:                               # %if.end79
	movl	$.L.str.96, %edi
	movq	%r13, %rsi
	callq	ue_v@PLT
	movl	%eax, 2168(%rbx)
	movl	$.L.str.97, %edi
	movq	%r13, %rsi
	callq	ue_v@PLT
	movl	%eax, 2172(%rbx)
	movl	$.L.str.98, %edi
	movq	%r13, %rsi
	callq	u_1@PLT
	movl	%eax, 2176(%rbx)
	movl	$.L.str.99, %esi
	movl	$2, %edi
	movq	%r13, %rdx
	callq	u_v@PLT
	movl	%eax, 2180(%rbx)
	movl	$.L.str.100, %edi
	movq	%r13, %rsi
	callq	se_v@PLT
	movl	%eax, 2184(%rbx)
	movl	$.L.str.101, %edi
	movq	%r13, %rsi
	callq	se_v@PLT
	movl	%eax, 2188(%rbx)
	movl	$.L.str.102, %edi
	movq	%r13, %rsi
	callq	se_v@PLT
	movl	%eax, 2192(%rbx)
	movl	$.L.str.103, %edi
	movq	%r13, %rsi
	callq	u_1@PLT
	movl	%eax, 2200(%rbx)
	movl	$.L.str.104, %edi
	movq	%r13, %rsi
	callq	u_1@PLT
	movl	%eax, 2204(%rbx)
	movl	$.L.str.105, %edi
	movq	%r13, %rsi
	callq	u_1@PLT
	movl	%eax, 2208(%rbx)
	movq	16(%r13), %rdi
	movl	8(%r13), %esi
	movl	12(%r13), %edx
	callq	more_rbsp_data@PLT
	testl	%eax, %eax
	je	.LBB5_31
# %bb.14:                               # %if.then91
	movl	$.L.str.106, %edi
	movq	%r13, %rsi
	callq	u_1@PLT
	movl	%eax, 16(%rbx)
	movl	$.L.str.107, %edi
	movq	%r13, %rsi
	callq	u_1@PLT
	movq	%rbx, 8(%rsp)                   # 8-byte Spill
	movl	%eax, 20(%rbx)
	testl	%eax, %eax
	je	.LBB5_30
# %bb.15:                               # %if.then96
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movl	8(%rdx), %eax
	imulq	$4128, %rax, %rax               # imm = 0x1020
	xorl	%ecx, %ecx
	cmpl	$3, 60(%r15,%rax)
	sete	%cl
	leal	2(,%rcx,4), %eax
	imull	16(%rdx), %eax
	addl	$6, %eax
	je	.LBB5_30
# %bb.16:                               # %for.body108.lr.ph
	movq	8(%rsp), %rcx                   # 8-byte Reload
	leaq	456(%rcx), %rdx
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	addq	$72, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movl	%eax, %eax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	xorl	%r15d, %r15d
	jmp	.LBB5_17
	.p2align	4, 0x90
.LBB5_29:                               # %for.inc133
                                        #   in Loop: Header=BB5_17 Depth=1
	incq	%r15
	cmpq	32(%rsp), %r15                  # 8-byte Folded Reload
	movq	%rbx, %r13
	je	.LBB5_30
.LBB5_17:                               # %for.body108
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_25 Depth 2
                                        #     Child Loop BB5_20 Depth 2
	movl	$.L.str.108, %edi
	movq	%r13, %rbx
	movq	%r13, %rsi
	callq	u_1@PLT
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movl	%eax, 24(%rcx,%r15,4)
	testl	%eax, %eax
	je	.LBB5_29
# %bb.18:                               # %if.then116
                                        #   in Loop: Header=BB5_17 Depth=1
	cmpq	$5, %r15
	ja	.LBB5_24
# %bb.19:                               # %if.then119
                                        #   in Loop: Header=BB5_17 Depth=1
	movq	%r15, %r12
	shlq	$6, %r12
	addq	16(%rsp), %r12                  # 8-byte Folded Reload
	movl	$8, %ecx
	xorl	%r13d, %r13d
	movl	$8, %ebp
	jmp	.LBB5_20
	.p2align	4, 0x90
.LBB5_22:                               # %if.end.us.i
                                        #   in Loop: Header=BB5_20 Depth=2
	movl	$.L.str, %edi
	movq	%rbx, %rsi
	callq	se_v@PLT
                                        # kill: def $eax killed $eax def $rax
	leal	(%rax,%rbp), %ecx
	addl	$256, %ecx                      # imm = 0x100
	addl	%ebp, %eax
	addl	$511, %eax                      # imm = 0x1FF
	testl	%ecx, %ecx
	cmovnsl	%ecx, %eax
	andl	$-256, %eax
	subl	%eax, %ecx
	xorl	%eax, %eax
	movl	%r13d, %edx
	orl	%ecx, %edx
	sete	%al
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movl	%eax, 1992(%rdx,%r15,4)
	testl	%ecx, %ecx
	cmovnel	%ecx, %ebp
.LBB5_23:                               # %if.end.thread.us.i
                                        #   in Loop: Header=BB5_20 Depth=2
	movl	%ebp, (%r12,%r14,4)
	incq	%r13
	cmpq	$16, %r13
	je	.LBB5_29
.LBB5_20:                               # %for.body.us.i
                                        #   Parent Loop BB5_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	ZZ_SCAN(%r13), %r14d
	testl	%ecx, %ecx
	jne	.LBB5_22
# %bb.21:                               #   in Loop: Header=BB5_20 Depth=2
	xorl	%ecx, %ecx
	jmp	.LBB5_23
	.p2align	4, 0x90
.LBB5_24:                               # %if.else124
                                        #   in Loop: Header=BB5_17 Depth=1
	movq	%r15, %rax
	shlq	$8, %rax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rax,%rcx), %r12
	addq	$-1536, %r12                    # imm = 0xFA00
	movl	$8, %ecx
	xorl	%r13d, %r13d
	movl	$8, %ebp
	jmp	.LBB5_25
	.p2align	4, 0x90
.LBB5_27:                               # %if.end.i
                                        #   in Loop: Header=BB5_25 Depth=2
	movl	$.L.str, %edi
	movq	%rbx, %rsi
	callq	se_v@PLT
                                        # kill: def $eax killed $eax def $rax
	leal	(%rax,%rbp), %ecx
	addl	$256, %ecx                      # imm = 0x100
	addl	%ebp, %eax
	addl	$511, %eax                      # imm = 0x1FF
	testl	%ecx, %ecx
	cmovnsl	%ecx, %eax
	andl	$-256, %eax
	subl	%eax, %ecx
	xorl	%eax, %eax
	movl	%r13d, %edx
	orl	%ecx, %edx
	sete	%al
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movl	%eax, 1992(%rdx,%r15,4)
	testl	%ecx, %ecx
	cmovnel	%ecx, %ebp
	movl	%ebp, (%r12,%r14,4)
	incq	%r13
	cmpq	$64, %r13
	je	.LBB5_29
.LBB5_25:                               # %for.body.i
                                        #   Parent Loop BB5_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	ZZ_SCAN8(%r13), %r14d
	testl	%ecx, %ecx
	jne	.LBB5_27
# %bb.26:                               #   in Loop: Header=BB5_25 Depth=2
	xorl	%ecx, %ecx
	movl	%ebp, (%r12,%r14,4)
	incq	%r13
	cmpq	$64, %r13
	jne	.LBB5_25
	jmp	.LBB5_29
.LBB5_30:                               # %if.end136
	movl	$.L.str.109, %edi
	movq	%r13, %rsi
	callq	se_v@PLT
	movq	p_Dec@GOTPCREL(%rip), %r12
	movq	8(%rsp), %rbx                   # 8-byte Reload
	jmp	.LBB5_32
.LBB5_31:                               # %if.else138
	movl	2192(%rbx), %eax
.LBB5_32:                               # %if.end141
	movl	%eax, 2196(%rbx)
	movl	$1, (%rbx)
	movq	(%r12), %rax
	movl	24(%rax), %eax
	addq	$40, %rsp
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
.Lfunc_end5:
	.size	InterpretPPS, .Lfunc_end5-InterpretPPS
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI5_0:
	.quad	.LBB5_6
	.quad	.LBB5_13
	.quad	.LBB5_3
	.quad	.LBB5_8
	.quad	.LBB5_8
	.quad	.LBB5_8
	.quad	.LBB5_9
                                        # -- End function
	.text
	.globl	PPSConsistencyCheck             # -- Begin function PPSConsistencyCheck
	.p2align	4, 0x90
	.type	PPSConsistencyCheck,@function
PPSConsistencyCheck:                    # @PPSConsistencyCheck
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$.Lstr, %edi
	jmp	puts@PLT                        # TAILCALL
.Lfunc_end6:
	.size	PPSConsistencyCheck, .Lfunc_end6-PPSConsistencyCheck
	.cfi_endproc
                                        # -- End function
	.globl	SPSConsistencyCheck             # -- Begin function SPSConsistencyCheck
	.p2align	4, 0x90
	.type	SPSConsistencyCheck,@function
SPSConsistencyCheck:                    # @SPSConsistencyCheck
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$.Lstr.188, %edi
	jmp	puts@PLT                        # TAILCALL
.Lfunc_end7:
	.size	SPSConsistencyCheck, .Lfunc_end7-SPSConsistencyCheck
	.cfi_endproc
                                        # -- End function
	.globl	SubsetSPSConsistencyCheck       # -- Begin function SubsetSPSConsistencyCheck
	.p2align	4, 0x90
	.type	SubsetSPSConsistencyCheck,@function
SubsetSPSConsistencyCheck:              # @SubsetSPSConsistencyCheck
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$.Lstr.189, %edi
	jmp	puts@PLT                        # TAILCALL
.Lfunc_end8:
	.size	SubsetSPSConsistencyCheck, .Lfunc_end8-SubsetSPSConsistencyCheck
	.cfi_endproc
                                        # -- End function
	.globl	MakePPSavailable                # -- Begin function MakePPSavailable
	.p2align	4, 0x90
	.type	MakePPSavailable,@function
MakePPSavailable:                       # @MakePPSavailable
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
	movq	%rdx, %rbx
	movslq	%esi, %rax
	imulq	$2216, %rax, %rax               # imm = 0x8A8
	leaq	(%rdi,%rax), %r14
	addq	$132120, %r14                   # imm = 0x20418
	cmpl	$1, 132120(%rdi,%rax)
	jne	.LBB9_3
# %bb.1:                                # %land.lhs.true
	movq	2160(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB9_3
# %bb.2:                                # %if.then
	callq	free@PLT
.LBB9_3:                                # %if.end
	movl	$2216, %edx                     # imm = 0x8A8
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	memcpy@PLT
	movq	2160(%rbx), %rax
	movq	%rax, 2160(%r14)
	movq	$0, 2160(%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end9:
	.size	MakePPSavailable, .Lfunc_end9-MakePPSavailable
	.cfi_endproc
                                        # -- End function
	.globl	CleanUpPPS                      # -- Begin function CleanUpPPS
	.p2align	4, 0x90
	.type	CleanUpPPS,@function
CleanUpPPS:                             # @CleanUpPPS
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
	movq	%rdi, %rbx
	xorl	%r14d, %r14d
	jmp	.LBB10_1
	.p2align	4, 0x90
.LBB10_4:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$0, 132120(%rbx,%r14)
	addq	$2216, %r14                     # imm = 0x8A8
	cmpq	$567296, %r14                   # imm = 0x8A800
	je	.LBB10_5
.LBB10_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1, 132120(%rbx,%r14)
	jne	.LBB10_4
# %bb.2:                                # %land.lhs.true
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	134280(%rbx,%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB10_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB10_1 Depth=1
	callq	free@PLT
	jmp	.LBB10_4
.LBB10_5:                               # %for.end
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end10:
	.size	CleanUpPPS, .Lfunc_end10-CleanUpPPS
	.cfi_endproc
                                        # -- End function
	.globl	MakeSPSavailable                # -- Begin function MakeSPSavailable
	.p2align	4, 0x90
	.type	MakeSPSavailable,@function
MakeSPSavailable:                       # @MakeSPSavailable
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdx, %rax
	movslq	%esi, %rcx
	imulq	$4128, %rcx, %rcx               # imm = 0x1020
	addq	%rcx, %rdi
	addq	$24, %rdi
	movl	$4128, %edx                     # imm = 0x1020
	movq	%rax, %rsi
	jmp	memcpy@PLT                      # TAILCALL
.Lfunc_end11:
	.size	MakeSPSavailable, .Lfunc_end11-MakeSPSavailable
	.cfi_endproc
                                        # -- End function
	.globl	ProcessSPS                      # -- Begin function ProcessSPS
	.p2align	4, 0x90
	.type	ProcessSPS,@function
ProcessSPS:                             # @ProcessSPS
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
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	$1, %edi
	callq	AllocPartition@PLT
	movq	%rax, %r14
	callq	AllocSPS@PLT
	movq	%rax, %r15
	movq	(%r14), %rax
	movq	16(%rax), %rdi
	movq	24(%r12), %rsi
	incq	%rsi
	movl	4(%r12), %edx
	decl	%edx
	callq	memcpy@PLT
	movq	(%r14), %rax
	movq	16(%rax), %rdi
	movl	4(%r12), %esi
	decl	%esi
	callq	RBSPtoSODB@PLT
	movq	(%r14), %rcx
	movl	%eax, 12(%rcx)
	movq	(%r14), %rcx
	movl	%eax, 4(%rcx)
	movq	(%r14), %rax
	movl	$0, 24(%rax)
	movq	(%r14), %rax
	movl	$0, 8(%rax)
	movq	(%r14), %rax
	movl	$0, (%rax)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	InterpretSPS
	movq	%r15, %rdi
	callq	get_max_dec_frame_buf_size
	cmpl	$0, (%r15)
	je	.LBB12_10
# %bb.1:                                # %if.then
	movq	16(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB12_7
# %bb.2:                                # %if.then14
	movl	32(%r15), %eax
	cmpl	32(%rsi), %eax
	jne	.LBB12_7
# %bb.3:                                # %if.then18
	movq	%r15, %rdi
	callq	sps_is_equal@PLT
	testl	%eax, %eax
	jne	.LBB12_7
# %bb.4:                                # %if.then22
	cmpq	$0, 856456(%rbx)
	je	.LBB12_6
# %bb.5:                                # %if.then24
	leaq	856456(%rbx), %rsi
	movq	%rbx, %rdi
	callq	exit_picture@PLT
.LBB12_6:                               # %if.end
	movq	$0, 16(%rbx)
.LBB12_7:                               # %if.end29
	movslq	32(%r15), %rax
	imulq	$4128, %rax, %rax               # imm = 0x1020
	leaq	(%rbx,%rax), %rdi
	addq	$24, %rdi
	movl	$4128, %edx                     # imm = 0x1020
	movq	%r15, %rsi
	callq	memcpy@PLT
	movl	4(%r15), %eax
	movl	%eax, 849084(%rbx)
	movl	4120(%r15), %ecx
	movl	%ecx, 849280(%rbx)
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB12_9
# %bb.8:                                # %if.else
	movl	36(%r15), %eax
.LBB12_9:                               # %if.end38.sink.split
	movl	%eax, 848920(%rbx)
.LBB12_10:                              # %if.end38
	movq	%r14, %rdi
	movl	$1, %esi
	callq	FreePartition@PLT
	movq	%r15, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	FreeSPS@PLT                     # TAILCALL
.Lfunc_end12:
	.size	ProcessSPS, .Lfunc_end12-ProcessSPS
	.cfi_endproc
                                        # -- End function
	.globl	get_max_dec_frame_buf_size      # -- Begin function get_max_dec_frame_buf_size
	.p2align	4, 0x90
	.type	get_max_dec_frame_buf_size,@function
get_max_dec_frame_buf_size:             # @get_max_dec_frame_buf_size
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
	movl	3128(%rdi), %ebp
	movl	3132(%rdi), %ebx
	movl	3136(%rdi), %r14d
	movl	28(%rdi), %ecx
	addl	$-9, %ecx
	cmpl	$42, %ecx
	ja	.LBB13_14
# %bb.1:                                # %entry
	movl	$152064, %eax                   # imm = 0x25200
	jmpq	*.LJTI13_0(,%rcx,8)
.LBB13_5:                               # %sw.bb11
	movl	$912384, %eax                   # imm = 0xDEC00
	jmp	.LBB13_15
.LBB13_10:                              # %sw.bb18
	movl	$12582912, %eax                 # imm = 0xC00000
	jmp	.LBB13_15
.LBB13_7:                               # %sw.bb14
	movl	$3110400, %eax                  # imm = 0x2F7600
	jmp	.LBB13_15
.LBB13_11:                              # %sw.bb19
	movl	$13369344, %eax                 # imm = 0xCC0000
	jmp	.LBB13_15
.LBB13_9:                               # %sw.bb16
	movl	$7864320, %eax                  # imm = 0x780000
	jmp	.LBB13_15
.LBB13_2:                               # %sw.bb5
	movl	4(%rdi), %ecx
	cmpl	$100, %ecx
	setae	%dl
	cmpl	$44, %ecx
	sete	%cl
	orb	%dl, %cl
	jne	.LBB13_4
# %bb.3:                                # %land.lhs.true
	cmpl	$1, 20(%rdi)
	je	.LBB13_15
.LBB13_4:                               # %if.else
	movl	$345600, %eax                   # imm = 0x54600
	jmp	.LBB13_15
.LBB13_12:                              # %sw.bb20
	movl	$42393600, %eax                 # imm = 0x286E000
	jmp	.LBB13_15
.LBB13_6:                               # %sw.bb12
	movl	$1824768, %eax                  # imm = 0x1BD800
	jmp	.LBB13_15
.LBB13_13:                              # %sw.bb21
	movl	$70778880, %eax                 # imm = 0x4380000
	jmp	.LBB13_15
.LBB13_8:                               # %sw.bb15
	movl	$6912000, %eax                  # imm = 0x697800
	jmp	.LBB13_15
.LBB13_14:                              # %sw.default
	movq	%rdi, %r15
	movl	$.L.str.183, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
	movq	%r15, %rdi
	xorl	%eax, %eax
.LBB13_15:                              # %sw.epilog
	incl	%ebp
	incl	%ebx
	imull	%ebp, %ebx
	testl	%r14d, %r14d
	sete	%cl
	shll	%cl, %ebx
	shll	$7, %ebx
	leal	(%rbx,%rbx,2), %ecx
	xorl	%edx, %edx
	idivl	%ecx
	cmpl	$16, %eax
	movl	$16, %ecx
	cmovll	%eax, %ecx
	movl	%ecx, 4124(%rdi)
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
.Lfunc_end13:
	.size	get_max_dec_frame_buf_size, .Lfunc_end13-get_max_dec_frame_buf_size
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI13_0:
	.quad	.LBB13_15
	.quad	.LBB13_15
	.quad	.LBB13_2
	.quad	.LBB13_5
	.quad	.LBB13_5
	.quad	.LBB13_14
	.quad	.LBB13_14
	.quad	.LBB13_14
	.quad	.LBB13_14
	.quad	.LBB13_14
	.quad	.LBB13_14
	.quad	.LBB13_5
	.quad	.LBB13_6
	.quad	.LBB13_7
	.quad	.LBB13_14
	.quad	.LBB13_14
	.quad	.LBB13_14
	.quad	.LBB13_14
	.quad	.LBB13_14
	.quad	.LBB13_14
	.quad	.LBB13_14
	.quad	.LBB13_7
	.quad	.LBB13_8
	.quad	.LBB13_9
	.quad	.LBB13_14
	.quad	.LBB13_14
	.quad	.LBB13_14
	.quad	.LBB13_14
	.quad	.LBB13_14
	.quad	.LBB13_14
	.quad	.LBB13_14
	.quad	.LBB13_10
	.quad	.LBB13_10
	.quad	.LBB13_11
	.quad	.LBB13_14
	.quad	.LBB13_14
	.quad	.LBB13_14
	.quad	.LBB13_14
	.quad	.LBB13_14
	.quad	.LBB13_14
	.quad	.LBB13_14
	.quad	.LBB13_12
	.quad	.LBB13_13
                                        # -- End function
	.text
	.globl	ProcessSubsetSPS                # -- Begin function ProcessSubsetSPS
	.p2align	4, 0x90
	.type	ProcessSubsetSPS,@function
ProcessSubsetSPS:                       # @ProcessSubsetSPS
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
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	$1, %edi
	callq	AllocPartition@PLT
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	16(%rax), %rdi
	movq	24(%r15), %rsi
	incq	%rsi
	movl	4(%r15), %edx
	decl	%edx
	callq	memcpy@PLT
	movq	(%r14), %rax
	movq	16(%rax), %rdi
	movl	4(%r15), %esi
	decl	%esi
	callq	RBSPtoSODB@PLT
	movq	(%r14), %rcx
	movl	%eax, 12(%rcx)
	movq	(%r14), %rcx
	movl	%eax, 4(%rcx)
	movq	(%r14), %rax
	movl	$0, 24(%rax)
	movq	(%r14), %rax
	movl	$0, 8(%rax)
	movq	(%r14), %rax
	movl	$0, (%rax)
	movq	(%r14), %r12
	callq	AllocSPS@PLT
	movq	%rax, %r15
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	InterpretSPS
	movl	32(%r15), %ebp
	imulq	$4664, %rbp, %rax               # imm = 0x1238
	leaq	(%rbx,%rax), %r13
	addq	$699424, %r13                   # imm = 0xAAC20
	cmpl	$0, 703692(%rbx,%rax)
	jne	.LBB14_2
# %bb.1:                                # %lor.lhs.false.i
	cmpl	$0, 4132(%r13)
	js	.LBB14_3
.LBB14_2:                               # %if.then.i
	movq	%r13, %rdi
	callq	reset_subset_sps
.LBB14_3:                               # %if.end.i
	movslq	%ebp, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	leaq	699424(%rbx), %rbp
	movl	$4128, %edx                     # imm = 0x1020
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	memcpy@PLT
	movl	$0, 4268(%r13)
	movl	4(%r13), %eax
	cmpl	$128, %eax
	je	.LBB14_5
# %bb.4:                                # %if.end.i
	cmpl	$118, %eax
	jne	.LBB14_9
.LBB14_5:                               # %if.then11.i
	movl	$.L.str.184, %edi
	movq	%r12, %rsi
	callq	u_1@PLT
	movl	%eax, 4128(%r13)
	cmpl	$1, %eax
	jne	.LBB14_6
# %bb.7:                                # %if.end17.i
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	seq_parameter_set_mvc_extension
	movl	$.L.str.186, %edi
	movq	%r12, %rsi
	callq	u_1@PLT
	movl	%eax, 4264(%r13)
	testl	%eax, %eax
	je	.LBB14_9
# %bb.8:                                # %if.then21.i
	leaq	4272(%r13), %rdi
	movq	%r12, %rsi
	callq	mvc_vui_parameters_extension
.LBB14_9:                               # %if.end23.i
	movl	$.L.str.187, %edi
	movq	%r12, %rsi
	callq	u_1@PLT
	testl	%eax, %eax
	jne	.LBB14_11
	jmp	.LBB14_12
	.p2align	4, 0x90
.LBB14_10:                              # %while.body.i
                                        #   in Loop: Header=BB14_11 Depth=1
	movl	$.L.str.187, %edi
	movq	%r12, %rsi
	callq	u_1@PLT
.LBB14_11:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%r12), %rdi
	movl	8(%r12), %esi
	movl	12(%r12), %edx
	callq	more_rbsp_data@PLT
	testl	%eax, %eax
	jne	.LBB14_10
.LBB14_12:                              # %if.end30.i
	cmpl	$0, (%r13)
	je	.LBB14_14
# %bb.13:                               # %if.then34.i
	movl	$1, 4268(%r13)
.LBB14_14:                              # %if.end36.i
	movq	%r15, %rdi
	callq	FreeSPS@PLT
	jmp	.LBB14_15
.LBB14_6:                               # %if.then15.i
	movl	$.Lstr.190, %edi
	callq	puts@PLT
.LBB14_15:                              # %InterpretSubsetSPS.exit
	movq	(%rsp), %rax                    # 8-byte Reload
	imulq	$4664, %rax, %r12               # imm = 0x1238
	leaq	(%r12,%rbp), %r15
	movq	%r15, %rdi
	callq	get_max_dec_frame_buf_size
	cmpl	$0, 4268(%rbp,%r12)
	je	.LBB14_19
# %bb.16:                               # %if.then
	movl	4(%r15), %eax
	movl	%eax, 849084(%rbx)
	movl	4120(%r15), %ecx
	movl	%ecx, 849280(%rbx)
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB14_18
# %bb.17:                               # %if.else
	movl	36(%r15), %eax
.LBB14_18:                              # %if.end21.sink.split
	movl	%eax, 848920(%rbx)
.LBB14_19:                              # %if.end21
	movq	%r14, %rdi
	movl	$1, %esi
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
	jmp	FreePartition@PLT               # TAILCALL
.Lfunc_end14:
	.size	ProcessSubsetSPS, .Lfunc_end14-ProcessSubsetSPS
	.cfi_endproc
                                        # -- End function
	.globl	ProcessPPS                      # -- Begin function ProcessPPS
	.p2align	4, 0x90
	.type	ProcessPPS,@function
ProcessPPS:                             # @ProcessPPS
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
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r12
	movq	%rdi, %r15
	movl	$1, %edi
	callq	AllocPartition@PLT
	movq	%rax, %rbx
	callq	AllocPPS@PLT
	movq	%rax, %r14
	movq	(%rbx), %rax
	movq	16(%rax), %rdi
	movq	24(%r12), %rsi
	incq	%rsi
	movl	4(%r12), %edx
	decl	%edx
	callq	memcpy@PLT
	movq	(%rbx), %rax
	movq	16(%rax), %rdi
	movl	4(%r12), %esi
	decl	%esi
	callq	RBSPtoSODB@PLT
	movq	(%rbx), %rcx
	movl	%eax, 12(%rcx)
	movq	(%rbx), %rcx
	movl	%eax, 4(%rcx)
	movq	(%rbx), %rax
	movl	$0, 24(%rax)
	movq	(%rbx), %rax
	movl	$0, 8(%rax)
	movq	(%rbx), %rax
	movl	$0, (%rax)
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	InterpretPPS
	movq	8(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB15_6
# %bb.1:                                # %if.then
	movl	4(%r14), %eax
	cmpl	4(%rsi), %eax
	jne	.LBB15_6
# %bb.2:                                # %if.then16
	movq	%r14, %rdi
	callq	pps_is_equal@PLT
	testl	%eax, %eax
	jne	.LBB15_6
# %bb.3:                                # %if.then20
	movq	856872(%r15), %rdi
	movq	8(%r15), %rsi
	movl	$2216, %edx                     # imm = 0x8A8
	callq	memcpy@PLT
	cmpq	$0, 856456(%r15)
	je	.LBB15_5
# %bb.4:                                # %if.then23
	leaq	856456(%r15), %rsi
	movq	%r15, %rdi
	callq	exit_picture@PLT
.LBB15_5:                               # %if.end
	movq	$0, 8(%r15)
.LBB15_6:                               # %if.end28
	movslq	4(%r14), %rax
	imulq	$2216, %rax, %rax               # imm = 0x8A8
	leaq	(%r15,%rax), %r12
	addq	$132120, %r12                   # imm = 0x20418
	cmpl	$1, 132120(%r15,%rax)
	jne	.LBB15_9
# %bb.7:                                # %land.lhs.true.i
	movq	2160(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB15_9
# %bb.8:                                # %if.then.i
	callq	free@PLT
.LBB15_9:                               # %MakePPSavailable.exit
	movl	$2216, %edx                     # imm = 0x8A8
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	memcpy@PLT
	movq	2160(%r14), %rax
	movq	%rax, 2160(%r12)
	movq	$0, 2160(%r14)
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	FreePartition@PLT
	movq	%r14, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	FreePPS@PLT                     # TAILCALL
.Lfunc_end15:
	.size	ProcessPPS, .Lfunc_end15-ProcessPPS
	.cfi_endproc
                                        # -- End function
	.globl	reset_format_info               # -- Begin function reset_format_info
	.p2align	4, 0x90
	.type	reset_format_info,@function
reset_format_info:                      # @reset_format_info
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rcx, %rax
	xorl	%r9d, %r9d
	cmpl	$0, 3148(%rdi)
	movl	$0, %ecx
	movl	$0, %r10d
	je	.LBB16_2
# %bb.1:                                # %if.then
	movl	36(%rdi), %r8d
	movl	3156(%rdi), %ecx
	movl	3136(%rdi), %r11d
	addl	$-2, %r11d
	imull	reset_format_info.SubHeightC(,%r8,4), %r11d
	addl	3152(%rdi), %ecx
	imull	reset_format_info.SubWidthC(,%r8,4), %ecx
	movl	3164(%rdi), %r10d
	addl	3160(%rdi), %r10d
	imull	%r11d, %r10d
.LBB16_2:                               # %if.end
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	(%rsi), %r14
	movl	848780(%rsi), %ebx
	subl	%ecx, %ebx
	movl	%ebx, 16(%rdx)
	addl	848784(%rsi), %r10d
	movl	%r10d, 28(%rdx)
	cmpl	$0, 3148(%rdi)
	movl	$0, %r8d
	movl	$0, %r11d
	movl	$0, %ecx
	je	.LBB16_4
# %bb.3:                                # %if.then28
	movl	3136(%rdi), %r11d
	movl	3152(%rdi), %r9d
	movl	3156(%rdi), %r8d
	movl	$2, %ecx
	subl	%r11d, %ecx
	addl	$-2, %r11d
	imull	3160(%rdi), %r11d
	imull	3164(%rdi), %ecx
.LBB16_4:                               # %if.end40
	cmpl	$0, 36(%rdi)
	je	.LBB16_5
.LBB16_7:                               # %if.else61
	movl	848788(%rsi), %r10d
	addl	%r8d, %r9d
	subl	%r9d, %r10d
	movl	%r10d, 20(%rdx)
	movl	%r10d, 24(%rdx)
	subl	%ecx, %r11d
	addl	848792(%rsi), %r11d
	jmp	.LBB16_8
.LBB16_5:                               # %land.lhs.true
	cmpl	$0, 780(%r14)
	je	.LBB16_7
# %bb.6:                                # %if.then43
	sarl	%ebx
	movl	%ebx, 20(%rdx)
	movl	%ebx, 24(%rdx)
	sarl	%r10d
	movl	%r10d, %r11d
.LBB16_8:                               # %if.end78
	movl	%r11d, 32(%rdx)
	movl	%r11d, 36(%rdx)
	movl	848780(%rsi), %r9d
	movl	%r9d, 16(%rax)
	movl	848788(%rsi), %r9d
	movl	%r9d, 20(%rdx)
	movl	%r9d, 24(%rdx)
	movl	848784(%rsi), %r9d
	movl	%r9d, 28(%rax)
	movl	848792(%rsi), %r9d
	movl	%r9d, 32(%rax)
	movl	%r9d, 36(%rax)
	movl	16(%rdx), %r9d
	movl	28(%rdx), %r10d
	movd	%r10d, %xmm0
                                        # kill: def $r10d killed $r10d def $r10
	imull	%r9d, %r10d
	movl	%r10d, 72(%rdx)
	movl	32(%rdx), %r11d
	imull	20(%rdx), %r11d
	movl	%r11d, 76(%rdx)
	movl	%r11d, 80(%rdx)
	leal	(%r10,%r11,2), %r10d
	movl	%r10d, 84(%rdx)
	movd	%r9d, %xmm1
	punpckldq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movdqa	%xmm1, %xmm0
	psrad	$31, %xmm0
	psrld	$28, %xmm0
	paddd	%xmm1, %xmm0
	psrad	$4, %xmm0
	movq	%xmm0, 64(%rdx)
	movl	16(%rax), %r9d
	movl	28(%rax), %r10d
	movd	%r10d, %xmm0
                                        # kill: def $r10d killed $r10d def $r10
	imull	%r9d, %r10d
	movl	%r10d, 72(%rax)
	movl	32(%rax), %r11d
	imull	20(%rax), %r11d
	movl	%r11d, 76(%rax)
	movl	%r11d, 80(%rax)
	leal	(%r10,%r11,2), %r10d
	movl	%r10d, 84(%rax)
	movd	%r9d, %xmm1
	punpckldq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movdqa	%xmm1, %xmm0
	psrad	$31, %xmm0
	psrld	$28, %xmm0
	paddd	%xmm1, %xmm0
	psrad	$4, %xmm0
	movq	%xmm0, 64(%rax)
	movswl	849040(%rsi), %r9d
	movl	%r9d, 88(%rdx)
	movl	%r9d, 88(%rax)
	movswl	849042(%rsi), %r9d
	movl	%r9d, 92(%rdx)
	movl	%r9d, 92(%rax)
	movswl	849042(%rsi), %r9d
	movl	%r9d, 96(%rdx)
	movl	%r9d, 96(%rax)
	movl	88(%rax), %r9d
	movl	92(%rax), %r10d
	cmpl	%r10d, %r9d
	cmovgl	%r9d, %r10d
	xorl	%r9d, %r9d
	cmpl	$9, %r10d
	setge	%r9b
	leal	8(,%r9,8), %r9d
	movl	%r9d, 124(%rax)
	shrl	$3, %r9d
	movl	%r9d, 128(%rax)
	movsd	8(%rdx), %xmm0                  # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%rax)
	movl	4(%rdx), %r9d
	movl	%r9d, 4(%rax)
	movl	36(%rdi), %edi
	movl	%edi, (%rdx)
	movl	%edi, (%rax)
	movl	%ecx, 44(%rax)
	movl	%r8d, 40(%rax)
	movl	849112(%rsi), %edi
	imull	%ecx, %edi
	leal	15(%rdi), %r9d
	testl	%edi, %edi
	cmovnsl	%edi, %r9d
	sarl	$4, %r9d
	movl	%r9d, 52(%rax)
	imull	849108(%rsi), %r8d
	leal	15(%r8), %esi
	testl	%r8d, %r8d
	cmovnsl	%r8d, %esi
	sarl	$4, %esi
	movl	%esi, 48(%rax)
	movl	%ecx, 44(%rdx)
	movl	40(%rax), %ecx
	movl	%ecx, 40(%rdx)
	movl	52(%rax), %ecx
	movl	%ecx, 52(%rdx)
	movl	48(%rax), %ecx
	movl	%ecx, 48(%rdx)
	movzbl	88(%rdx), %ecx
	movl	$-1, %esi
	shll	%cl, %esi
	movzbl	92(%rdx), %ecx
	notl	%esi
	movl	%esi, 100(%rdx)
	movl	$-1, %edi
	shll	%cl, %edi
	imull	%esi, %esi
	movl	%esi, 112(%rdx)
	notl	%edi
	movl	%edi, 104(%rdx)
	imull	%edi, %edi
	movl	%edi, 116(%rdx)
	movzbl	96(%rdx), %ecx
	movl	$-1, %esi
	shll	%cl, %esi
	notl	%esi
	movl	%esi, 108(%rdx)
	imull	%esi, %esi
	movl	%esi, 120(%rdx)
	movzbl	88(%rax), %ecx
	movl	$-1, %edx
	shll	%cl, %edx
	movl	$-1, %esi
	movzbl	92(%rax), %ecx
	notl	%edx
	movl	%edx, 100(%rax)
	imull	%edx, %edx
	movl	%edx, 112(%rax)
	movl	$-1, %edx
	shll	%cl, %edx
	notl	%edx
	movl	%edx, 104(%rax)
	imull	%edx, %edx
	movl	%edx, 116(%rax)
	movzbl	96(%rax), %ecx
	shll	%cl, %esi
	notl	%esi
	movl	%esi, 108(%rax)
	imull	%esi, %esi
	movl	%esi, 120(%rax)
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end16:
	.size	reset_format_info, .Lfunc_end16-reset_format_info
	.cfi_endproc
                                        # -- End function
	.globl	activate_sps                    # -- Begin function activate_sps
	.p2align	4, 0x90
	.type	activate_sps,@function
activate_sps:                           # @activate_sps
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
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	(%rdi), %rbx
	cmpq	%rsi, 16(%rdi)
	je	.LBB17_34
# %bb.1:                                # %if.then
	cmpq	$0, 856456(%r14)
	je	.LBB17_3
# %bb.2:                                # %if.then2
	leaq	856456(%r14), %rsi
	movq	%r14, %rdi
	callq	exit_picture@PLT
.LBB17_3:                               # %if.end
	movq	%r15, 16(%r14)
	movw	$0, 849042(%r14)
	movq	$0, 848788(%r14)
	movl	28(%r15), %eax
	cmpl	$10, %eax
	ja	.LBB17_5
# %bb.4:                                # %if.then7
	movl	$256, 849216(%r14)              # imm = 0x100
	jmp	.LBB17_10
.LBB17_5:                               # %if.else
	cmpl	$20, %eax
	ja	.LBB17_7
# %bb.6:                                # %if.then11
	movl	$512, 849216(%r14)              # imm = 0x200
	jmp	.LBB17_10
.LBB17_7:                               # %if.else13
	cmpl	$30, %eax
	ja	.LBB17_9
# %bb.8:                                # %if.then17
	movl	$1024, 849216(%r14)             # imm = 0x400
	jmp	.LBB17_10
.LBB17_9:                               # %if.else19
	movl	$2048, 849216(%r14)             # imm = 0x800
.LBB17_10:                              # %if.end23
	movl	2060(%r15), %eax
	addl	$8, %eax
	movw	%ax, 849040(%r14)
	movzbl	2060(%r15), %ecx
	movl	$1, %edx
	shll	%cl, %edx
	movl	$1, %eax
	movl	%edx, 849044(%r14)
	cmpl	$0, 36(%r15)
	je	.LBB17_12
# %bb.11:                               # %if.then27
	movl	2064(%r15), %ecx
	addl	$8, %ecx
	movw	%cx, 849042(%r14)
	movzbl	2064(%r15), %ecx
	movl	$1, %edx
	shll	%cl, %edx
	movl	%edx, 849048(%r14)
.LBB17_12:                              # %if.end35
	movzbl	2068(%r15), %ecx
	addb	$4, %cl
	shll	%cl, %eax
	movl	%eax, 848992(%r14)
	movl	3128(%r15), %eax
	incl	%eax
	movl	%eax, 848996(%r14)
	movl	3132(%r15), %edx
	incl	%edx
	movl	%edx, 849000(%r14)
	movl	$2, %ecx
	subl	3136(%r15), %ecx
	imull	%edx, %ecx
	movl	%ecx, 849004(%r14)
	movl	%ecx, %edx
	imull	%eax, %edx
	movl	%edx, 849016(%r14)
	movl	36(%r15), %edx
	movl	%edx, 849088(%r14)
	shll	$4, %eax
	movl	%eax, 848780(%r14)
	shll	$4, %ecx
	movl	%ecx, 848784(%r14)
	movl	36(%r15), %edx
	cmpl	$3, %edx
	je	.LBB17_17
# %bb.13:                               # %if.end35
	cmpl	$2, %edx
	je	.LBB17_16
# %bb.14:                               # %if.end35
	cmpl	$1, %edx
	jne	.LBB17_18
# %bb.15:                               # %if.then52
	sarl	%eax
	movl	%eax, 848788(%r14)
	sarl	%ecx
	movl	%ecx, 848792(%r14)
	movl	848672(%r14), %eax
	cmpl	3128(%r15), %eax
	je	.LBB17_19
	jmp	.LBB17_24
.LBB17_16:                              # %if.then62
	sarl	%eax
	movl	%eax, 848788(%r14)
	movl	%ecx, 848792(%r14)
	movl	$16, 856852(%r14)
.LBB17_18:                              # %if.end80
	movl	848672(%r14), %eax
	cmpl	3128(%r15), %eax
	jne	.LBB17_24
.LBB17_19:                              # %lor.lhs.false
	movl	848676(%r14), %eax
	cmpl	3132(%r15), %eax
	jne	.LBB17_24
# %bb.20:                               # %lor.lhs.false89
	movl	848680(%r14), %ebp
	movq	%r14, %rdi
	callq	GetMaxDecFrameBuffering@PLT
	cmpl	%eax, %ebp
	jne	.LBB17_24
# %bb.21:                               # %lor.lhs.false92
	movl	848684(%r14), %ecx
	movq	16(%r14), %rax
	movl	4(%rax), %edx
	cmpl	$117, %ecx
	jg	.LBB17_27
# %bb.22:                               # %lor.lhs.false92
	cmpl	%edx, %ecx
	je	.LBB17_27
# %bb.23:                               # %lor.lhs.false92
	cmpl	$117, %edx
	jbe	.LBB17_24
.LBB17_27:                              # %if.else121
	cmpl	%edx, %ecx
	je	.LBB17_32
# %bb.28:                               # %land.lhs.true127
	cmpl	$118, %ecx
	setl	%cl
	cmpl	$118, %edx
	setb	%dl
	testb	%dl, %cl
	jne	.LBB17_32
# %bb.29:                               # %land.lhs.true136
	movq	856656(%r14), %rsi
	cmpl	$0, 4160(%rsi)
	je	.LBB17_32
# %bb.30:                               # %if.then139
	movq	%r14, %rdi
	callq	re_init_dpb@PLT
	jmp	.LBB17_31
.LBB17_17:                              # %if.then72
	movl	%eax, 848788(%r14)
	movl	%ecx, 848792(%r14)
	movq	856840(%r14), %rax
	movq	%rax, 856848(%r14)
	movl	848672(%r14), %eax
	cmpl	3128(%r15), %eax
	je	.LBB17_19
.LBB17_24:                              # %if.then104
	movq	%r14, %rdi
	callq	init_frext@PLT
	movq	%r14, %rdi
	callq	init_global_buffers@PLT
	cmpl	$0, 849024(%r14)
	jne	.LBB17_26
# %bb.25:                               # %if.then107
	movq	856656(%r14), %rdi
	movl	$-1, %esi
	callq	flush_dpb@PLT
.LBB17_26:                              # %if.end108
	movq	856656(%r14), %rsi
	movq	%r14, %rdi
	callq	init_dpb@PLT
	movq	16(%r14), %rax
	movl	3128(%rax), %ecx
	movl	%ecx, 848672(%r14)
	movl	3132(%rax), %eax
	movl	%eax, 848676(%r14)
	movq	%r14, %rdi
	callq	GetMaxDecFrameBuffering@PLT
	movl	%eax, 848680(%r14)
.LBB17_31:                              # %if.end145
	movq	16(%r14), %rax
	movl	4(%rax), %ecx
	movl	%ecx, 848684(%r14)
.LBB17_32:                              # %if.end145
	movl	3120(%rax), %eax
	movq	856656(%r14), %rcx
	movl	%eax, 4164(%rcx)
	movl	848780(%r14), %esi
	movl	848784(%r14), %edx
	movq	%r14, %rdi
	movl	$1, %ecx
	callq	ercInit@PLT
	movq	856456(%r14), %rax
	testq	%rax, %rax
	je	.LBB17_34
# %bb.33:                               # %if.then153
	movq	856504(%r14), %rdi
	movl	849012(%r14), %edx
	movl	64(%rax), %ecx
	movl	%edx, %esi
	callq	ercReset@PLT
	movl	$0, 856512(%r14)
.LBB17_34:                              # %if.end157
	leaq	792(%rbx), %rdx
	addq	$928, %rbx                      # imm = 0x3A0
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rcx
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
	jmp	reset_format_info               # TAILCALL
.Lfunc_end17:
	.size	activate_sps, .Lfunc_end17-activate_sps
	.cfi_endproc
                                        # -- End function
	.globl	activate_pps                    # -- Begin function activate_pps
	.p2align	4, 0x90
	.type	activate_pps,@function
activate_pps:                           # @activate_pps
	.cfi_startproc
# %bb.0:                                # %entry
	cmpq	%rsi, 8(%rdi)
	je	.LBB18_4
# %bb.1:                                # %if.then
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	cmpq	$0, 856456(%rdi)
	je	.LBB18_3
# %bb.2:                                # %if.then1
	leaq	856456(%r14), %rsi
	movq	%r14, %rdi
	callq	exit_picture@PLT
.LBB18_3:                               # %if.end
	movq	%rbx, 8(%r14)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
.LBB18_4:                               # %if.end4
	retq
.Lfunc_end18:
	.size	activate_pps, .Lfunc_end18-activate_pps
	.cfi_endproc
                                        # -- End function
	.globl	UseParameterSet                 # -- Begin function UseParameterSet
	.p2align	4, 0x90
	.type	UseParameterSet,@function
UseParameterSet:                        # @UseParameterSet
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
	movq	(%rdi), %r14
	movslq	1228(%rdi), %r12
	imulq	$2216, %r12, %r13               # imm = 0x8A8
	movl	132128(%r14,%r13), %r15d
	cmpl	$1, 132120(%r14,%r13)
	je	.LBB19_2
# %bb.1:                                # %if.then
	movl	$.L.str.113, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	callq	printf@PLT
.LBB19_2:                               # %if.end
	addq	%r14, %r13
	addq	$132120, %r13                   # imm = 0x20418
	cmpl	$-1, 32(%rbx)
	je	.LBB19_3
# %bb.5:                                # %if.else
	movl	8(%r13), %edx
	imulq	$4664, %rdx, %rax               # imm = 0x1238
	leaq	(%r14,%rax), %r15
	addq	$699424, %r15                   # imm = 0xAAC20
	movq	%r15, 699416(%r14)
	cmpl	$1, 703692(%r14,%rax)
	je	.LBB19_8
# %bb.6:                                # %if.then21
	movl	$.L.str.115, %edi
	movl	%r12d, %esi
                                        # kill: def $edx killed $edx killed $rdx
	jmp	.LBB19_7
.LBB19_3:                               # %if.then5
	imulq	$4128, %r15, %rax               # imm = 0x1020
	leaq	(%r14,%rax), %r15
	addq	$24, %r15
	cmpl	$1, (%r15)
	je	.LBB19_8
# %bb.4:                                # %if.then8
	movl	8(%r13), %edx
	movl	$.L.str.114, %edi
	movl	%r12d, %esi
.LBB19_7:                               # %if.end25
	xorl	%eax, %eax
	callq	printf@PLT
.LBB19_8:                               # %if.end25
	movl	2072(%r15), %esi
	cmpl	$3, %esi
	jb	.LBB19_10
# %bb.9:                                # %if.then29
	movl	$.L.str.116, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$.L.str.117, %edi
	movl	$-1000, %esi                    # imm = 0xFC18
	callq	error@PLT
	movl	2072(%r15), %esi
.LBB19_10:                              # %if.end32
	cmpl	$1, %esi
	jne	.LBB19_13
# %bb.11:                               # %if.then35
	cmpl	$256, 2092(%r15)                # imm = 0x100
	jb	.LBB19_13
# %bb.12:                               # %if.then37
	movl	$.L.str.118, %edi
	movl	$-1011, %esi                    # imm = 0xFC0D
	callq	error@PLT
.LBB19_13:                              # %if.end39
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	activate_sps
	cmpq	%r13, 8(%r14)
	je	.LBB19_17
# %bb.14:                               # %if.then.i
	cmpq	$0, 856456(%r14)
	je	.LBB19_16
# %bb.15:                               # %if.then1.i
	leaq	856456(%r14), %rsi
	movq	%r14, %rdi
	callq	exit_picture@PLT
.LBB19_16:                              # %if.end.i
	movq	%r13, 8(%r14)
.LBB19_17:                              # %activate_pps.exit
	cmpl	$0, 12(%r13)
	movq	cabac_startcode_follows@GOTPCREL(%rip), %rax
	cmoveq	uvlc_startcode_follows@GOTPCREL(%rip), %rax
	movq	readSyntaxElement_CABAC@GOTPCREL(%rip), %rcx
	cmoveq	readSyntaxElement_UVLC@GOTPCREL(%rip), %rcx
	movq	%rax, 13432(%rbx)
	movq	312(%rbx), %rax
	movq	%rcx, 40(%rax)
	movq	312(%rbx), %rax
	movq	%rcx, 88(%rax)
	movq	312(%rbx), %rax
	movq	%rcx, 136(%rax)
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
.Lfunc_end19:
	.size	UseParameterSet, .Lfunc_end19-UseParameterSet
	.cfi_endproc
                                        # -- End function
	.globl	seq_parameter_set_mvc_extension # -- Begin function seq_parameter_set_mvc_extension
	.p2align	4, 0x90
	.type	seq_parameter_set_mvc_extension,@function
seq_parameter_set_mvc_extension:        # @seq_parameter_set_mvc_extension
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$.L.str.119, %edi
	callq	ue_v@PLT
	movl	%eax, 4132(%r14)
	testl	%eax, %eax
	js	.LBB20_51
# %bb.1:                                # %if.then
	movl	%eax, %r12d
	leal	1(%r12), %r15d
	movl	$4, %esi
	movq	%r15, %rdi
	callq	calloc@PLT
	movq	%rax, 4136(%r14)
	testq	%rax, %rax
	jne	.LBB20_3
# %bb.2:                                # %if.then5
	movl	$.L.str.120, %edi
	callq	no_mem_exit@PLT
.LBB20_3:                               # %if.end
	movl	$4, %esi
	movq	%r15, %rdi
	callq	calloc@PLT
	movq	%rax, 4144(%r14)
	testq	%rax, %rax
	jne	.LBB20_5
# %bb.4:                                # %if.then10
	movl	$.L.str.121, %edi
	callq	no_mem_exit@PLT
.LBB20_5:                               # %if.end11
	movl	$4, %esi
	movq	%r15, %rdi
	callq	calloc@PLT
	movq	%rax, 4160(%r14)
	testq	%rax, %rax
	jne	.LBB20_7
# %bb.6:                                # %if.then16
	movl	$.L.str.122, %edi
	callq	no_mem_exit@PLT
.LBB20_7:                               # %if.end17
	movl	$8, %esi
	movq	%r15, %rdi
	callq	calloc@PLT
	movq	%rax, 4152(%r14)
	testq	%rax, %rax
	jne	.LBB20_9
# %bb.8:                                # %if.then22
	movl	$.L.str.123, %edi
	callq	no_mem_exit@PLT
.LBB20_9:                               # %if.end23
	movl	$8, %esi
	movq	%r15, %rdi
	callq	calloc@PLT
	movq	%rax, 4168(%r14)
	testq	%rax, %rax
	jne	.LBB20_11
# %bb.10:                               # %if.then28
	movl	$.L.str.124, %edi
	callq	no_mem_exit@PLT
.LBB20_11:                              # %if.end29
	movl	$4, %esi
	movq	%r15, %rdi
	callq	calloc@PLT
	movq	%rax, 4176(%r14)
	testq	%rax, %rax
	jne	.LBB20_13
# %bb.12:                               # %if.then34
	movl	$.L.str.125, %edi
	callq	no_mem_exit@PLT
.LBB20_13:                              # %if.end35
	movl	$4, %esi
	movq	%r15, %rdi
	callq	calloc@PLT
	movq	%rax, 4192(%r14)
	testq	%rax, %rax
	jne	.LBB20_15
# %bb.14:                               # %if.then40
	movl	$.L.str.126, %edi
	callq	no_mem_exit@PLT
.LBB20_15:                              # %if.end41
	movl	$8, %esi
	movq	%r15, %rdi
	callq	calloc@PLT
	movq	%rax, 4184(%r14)
	testq	%rax, %rax
	jne	.LBB20_17
# %bb.16:                               # %if.then46
	movl	$.L.str.127, %edi
	callq	no_mem_exit@PLT
.LBB20_17:                              # %if.end47
	movl	$8, %esi
	movq	%r15, %rdi
	callq	calloc@PLT
	movq	%rax, 4200(%r14)
	testq	%rax, %rax
	jne	.LBB20_19
# %bb.18:                               # %if.then52
	movl	$.L.str.128, %edi
	callq	no_mem_exit@PLT
.LBB20_19:                              # %for.body.lr.ph
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB20_20:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.129, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movq	4136(%r14), %rcx
	movl	%eax, (%rcx,%r13,4)
	incq	%r13
	cmpq	%r13, %r15
	jne	.LBB20_20
# %bb.21:                               # %for.cond59.preheader
	testl	%r12d, %r12d
	je	.LBB20_51
# %bb.22:                               # %for.body62.lr.ph
	movl	$1, %r13d
	jmp	.LBB20_23
	.p2align	4, 0x90
.LBB20_35:                              # %for.inc141
                                        #   in Loop: Header=BB20_23 Depth=1
	incq	%r13
	cmpq	%r15, %r13
	je	.LBB20_36
.LBB20_23:                              # %for.body62
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_28 Depth 2
                                        #     Child Loop BB20_34 Depth 2
	movl	$.L.str.130, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movq	4144(%r14), %rcx
	movl	%eax, (%rcx,%r13,4)
	movq	4144(%r14), %rax
	movslq	(%rax,%r13,4), %rdi
	testq	%rdi, %rdi
	jle	.LBB20_29
# %bb.24:                               # %if.then72
                                        #   in Loop: Header=BB20_23 Depth=1
	movl	$4, %esi
	callq	calloc@PLT
	movq	4152(%r14), %rcx
	movq	%rax, (%rcx,%r13,8)
	testq	%rax, %rax
	je	.LBB20_25
# %bb.26:                               # %if.end84
                                        #   in Loop: Header=BB20_23 Depth=1
	movq	4144(%r14), %rax
	cmpl	$0, (%rax,%r13,4)
	jg	.LBB20_27
	jmp	.LBB20_29
	.p2align	4, 0x90
.LBB20_25:                              # %if.then83
                                        #   in Loop: Header=BB20_23 Depth=1
	movl	$.L.str.131, %edi
	callq	no_mem_exit@PLT
	movq	4144(%r14), %rax
	cmpl	$0, (%rax,%r13,4)
	jle	.LBB20_29
.LBB20_27:                              # %for.body91.preheader
                                        #   in Loop: Header=BB20_23 Depth=1
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB20_28:                              # %for.body91
                                        #   Parent Loop BB20_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.132, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movq	4152(%r14), %rcx
	movq	(%rcx,%r13,8), %rcx
	movl	%eax, (%rcx,%rbp,4)
	incq	%rbp
	movq	4144(%r14), %rax
	movslq	(%rax,%r13,4), %rax
	cmpq	%rax, %rbp
	jl	.LBB20_28
.LBB20_29:                              # %if.end101
                                        #   in Loop: Header=BB20_23 Depth=1
	movl	$.L.str.133, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movq	4160(%r14), %rcx
	movl	%eax, (%rcx,%r13,4)
	movq	4160(%r14), %rax
	movslq	(%rax,%r13,4), %rdi
	testq	%rdi, %rdi
	jle	.LBB20_35
# %bb.30:                               # %if.then111
                                        #   in Loop: Header=BB20_23 Depth=1
	movl	$4, %esi
	callq	calloc@PLT
	movq	4168(%r14), %rcx
	movq	%rax, (%rcx,%r13,8)
	testq	%rax, %rax
	je	.LBB20_31
# %bb.32:                               # %if.end123
                                        #   in Loop: Header=BB20_23 Depth=1
	movq	4160(%r14), %rax
	cmpl	$0, (%rax,%r13,4)
	jg	.LBB20_33
	jmp	.LBB20_35
	.p2align	4, 0x90
.LBB20_31:                              # %if.then122
                                        #   in Loop: Header=BB20_23 Depth=1
	movl	$.L.str.134, %edi
	callq	no_mem_exit@PLT
	movq	4160(%r14), %rax
	cmpl	$0, (%rax,%r13,4)
	jle	.LBB20_35
.LBB20_33:                              # %for.body130.preheader
                                        #   in Loop: Header=BB20_23 Depth=1
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB20_34:                              # %for.body130
                                        #   Parent Loop BB20_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.135, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movq	4168(%r14), %rcx
	movq	(%rcx,%r13,8), %rcx
	movl	%eax, (%rcx,%rbp,4)
	incq	%rbp
	movq	4160(%r14), %rax
	movslq	(%rax,%r13,4), %rax
	cmpq	%rax, %rbp
	jl	.LBB20_34
	jmp	.LBB20_35
.LBB20_36:                              # %for.cond144.preheader
	testl	%r12d, %r12d
	je	.LBB20_51
# %bb.37:                               # %for.body147.lr.ph
	movl	$1, %r12d
	jmp	.LBB20_38
	.p2align	4, 0x90
.LBB20_50:                              # %for.inc226
                                        #   in Loop: Header=BB20_38 Depth=1
	incq	%r12
	cmpq	%r15, %r12
	je	.LBB20_51
.LBB20_38:                              # %for.body147
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_43 Depth 2
                                        #     Child Loop BB20_49 Depth 2
	movl	$.L.str.136, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movq	4176(%r14), %rcx
	movl	%eax, (%rcx,%r12,4)
	movq	4176(%r14), %rax
	movslq	(%rax,%r12,4), %rdi
	testq	%rdi, %rdi
	jle	.LBB20_44
# %bb.39:                               # %if.then157
                                        #   in Loop: Header=BB20_38 Depth=1
	movl	$4, %esi
	callq	calloc@PLT
	movq	4184(%r14), %rcx
	movq	%rax, (%rcx,%r12,8)
	testq	%rax, %rax
	je	.LBB20_40
# %bb.41:                               # %if.end169
                                        #   in Loop: Header=BB20_38 Depth=1
	movq	4176(%r14), %rax
	cmpl	$0, (%rax,%r12,4)
	jg	.LBB20_42
	jmp	.LBB20_44
	.p2align	4, 0x90
.LBB20_40:                              # %if.then168
                                        #   in Loop: Header=BB20_38 Depth=1
	movl	$.L.str.137, %edi
	callq	no_mem_exit@PLT
	movq	4176(%r14), %rax
	cmpl	$0, (%rax,%r12,4)
	jle	.LBB20_44
.LBB20_42:                              # %for.body176.preheader
                                        #   in Loop: Header=BB20_38 Depth=1
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB20_43:                              # %for.body176
                                        #   Parent Loop BB20_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.138, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movq	4184(%r14), %rcx
	movq	(%rcx,%r12,8), %rcx
	movl	%eax, (%rcx,%r13,4)
	incq	%r13
	movq	4176(%r14), %rax
	movslq	(%rax,%r12,4), %rax
	cmpq	%rax, %r13
	jl	.LBB20_43
.LBB20_44:                              # %if.end186
                                        #   in Loop: Header=BB20_38 Depth=1
	movl	$.L.str.139, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movq	4192(%r14), %rcx
	movl	%eax, (%rcx,%r12,4)
	movq	4192(%r14), %rax
	movslq	(%rax,%r12,4), %rdi
	testq	%rdi, %rdi
	jle	.LBB20_50
# %bb.45:                               # %if.then196
                                        #   in Loop: Header=BB20_38 Depth=1
	movl	$4, %esi
	callq	calloc@PLT
	movq	4200(%r14), %rcx
	movq	%rax, (%rcx,%r12,8)
	testq	%rax, %rax
	je	.LBB20_46
# %bb.47:                               # %if.end208
                                        #   in Loop: Header=BB20_38 Depth=1
	movq	4192(%r14), %rax
	cmpl	$0, (%rax,%r12,4)
	jg	.LBB20_48
	jmp	.LBB20_50
	.p2align	4, 0x90
.LBB20_46:                              # %if.then207
                                        #   in Loop: Header=BB20_38 Depth=1
	movl	$.L.str.140, %edi
	callq	no_mem_exit@PLT
	movq	4192(%r14), %rax
	cmpl	$0, (%rax,%r12,4)
	jle	.LBB20_50
.LBB20_48:                              # %for.body215.preheader
                                        #   in Loop: Header=BB20_38 Depth=1
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB20_49:                              # %for.body215
                                        #   Parent Loop BB20_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.141, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movq	4200(%r14), %rcx
	movq	(%rcx,%r12,8), %rcx
	movl	%eax, (%rcx,%r13,4)
	incq	%r13
	movq	4192(%r14), %rax
	movslq	(%rax,%r12,4), %rax
	cmpq	%rax, %r13
	jl	.LBB20_49
	jmp	.LBB20_50
.LBB20_51:                              # %for.end228
	movl	$.L.str.142, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movl	%eax, 4208(%r14)
	testl	%eax, %eax
	js	.LBB20_85
# %bb.52:                               # %if.then233
	movl	%eax, %r15d
	incl	%r15d
	movl	$4, %esi
	movq	%r15, %rdi
	callq	calloc@PLT
	movq	%rax, 4216(%r14)
	testq	%rax, %rax
	jne	.LBB20_54
# %bb.53:                               # %if.then240
	movl	$.L.str.143, %edi
	callq	no_mem_exit@PLT
.LBB20_54:                              # %if.end241
	movl	$4, %esi
	movq	%r15, %rdi
	callq	calloc@PLT
	movq	%rax, 4224(%r14)
	testq	%rax, %rax
	jne	.LBB20_56
# %bb.55:                               # %if.then246
	movl	$.L.str.144, %edi
	callq	no_mem_exit@PLT
.LBB20_56:                              # %if.end247
	movl	$8, %esi
	movq	%r15, %rdi
	callq	calloc@PLT
	movq	%rax, 4232(%r14)
	testq	%rax, %rax
	jne	.LBB20_58
# %bb.57:                               # %if.then252
	movl	$.L.str.145, %edi
	callq	no_mem_exit@PLT
.LBB20_58:                              # %if.end253
	movl	$8, %esi
	movq	%r15, %rdi
	callq	calloc@PLT
	movq	%rax, 4240(%r14)
	testq	%rax, %rax
	jne	.LBB20_60
# %bb.59:                               # %if.then258
	movl	$.L.str.146, %edi
	callq	no_mem_exit@PLT
.LBB20_60:                              # %if.end259
	movl	$8, %esi
	movq	%r15, %rdi
	callq	calloc@PLT
	movq	%rax, 4248(%r14)
	testq	%rax, %rax
	jne	.LBB20_62
# %bb.61:                               # %if.then264
	movl	$.L.str.147, %edi
	callq	no_mem_exit@PLT
.LBB20_62:                              # %if.end265
	movl	$8, %esi
	movq	%r15, %rdi
	callq	calloc@PLT
	movq	%rax, 4256(%r14)
	testq	%rax, %rax
	jne	.LBB20_64
# %bb.63:                               # %if.then270
	movl	$.L.str.148, %edi
	callq	no_mem_exit@PLT
.LBB20_64:                              # %if.end272
	cmpl	$0, 4208(%r14)
	js	.LBB20_85
# %bb.65:                               # %for.body277.lr.ph
	xorl	%r15d, %r15d
	jmp	.LBB20_66
	.p2align	4, 0x90
.LBB20_84:                              # %for.inc419
                                        #   in Loop: Header=BB20_66 Depth=1
	leaq	1(%r15), %rax
	movslq	4208(%r14), %rcx
	cmpq	%rcx, %r15
	movq	%rax, %r15
	jge	.LBB20_85
.LBB20_66:                              # %for.body277
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_77 Depth 2
                                        #       Child Loop BB20_82 Depth 3
	movl	$.L.str.149, %esi
	movl	$8, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movq	4216(%r14), %rcx
	movl	%eax, (%rcx,%r15,4)
	movl	$.L.str.150, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movq	4224(%r14), %rcx
	movl	%eax, (%rcx,%r15,4)
	movq	4224(%r14), %rax
	movl	(%rax,%r15,4), %edi
	testl	%edi, %edi
	js	.LBB20_84
# %bb.67:                               # %if.then291
                                        #   in Loop: Header=BB20_66 Depth=1
	incq	%rdi
	movl	$4, %esi
	callq	calloc@PLT
	movq	4232(%r14), %rcx
	movq	%rax, (%rcx,%r15,8)
	testq	%rax, %rax
	jne	.LBB20_69
# %bb.68:                               # %if.then303
                                        #   in Loop: Header=BB20_66 Depth=1
	movl	$.L.str.151, %edi
	callq	no_mem_exit@PLT
.LBB20_69:                              # %if.end304
                                        #   in Loop: Header=BB20_66 Depth=1
	movq	4224(%r14), %rax
	movslq	(%rax,%r15,4), %rdi
	incq	%rdi
	movl	$4, %esi
	callq	calloc@PLT
	movq	4240(%r14), %rcx
	movq	%rax, (%rcx,%r15,8)
	testq	%rax, %rax
	jne	.LBB20_71
# %bb.70:                               # %if.then316
                                        #   in Loop: Header=BB20_66 Depth=1
	movl	$.L.str.152, %edi
	callq	no_mem_exit@PLT
.LBB20_71:                              # %if.end317
                                        #   in Loop: Header=BB20_66 Depth=1
	movq	4224(%r14), %rax
	movslq	(%rax,%r15,4), %rdi
	incq	%rdi
	movl	$8, %esi
	callq	calloc@PLT
	movq	4248(%r14), %rcx
	movq	%rax, (%rcx,%r15,8)
	testq	%rax, %rax
	jne	.LBB20_73
# %bb.72:                               # %if.then329
                                        #   in Loop: Header=BB20_66 Depth=1
	movl	$.L.str.153, %edi
	callq	no_mem_exit@PLT
.LBB20_73:                              # %if.end330
                                        #   in Loop: Header=BB20_66 Depth=1
	movq	4224(%r14), %rax
	movslq	(%rax,%r15,4), %rdi
	incq	%rdi
	movl	$4, %esi
	callq	calloc@PLT
	movq	4256(%r14), %rcx
	movq	%rax, (%rcx,%r15,8)
	testq	%rax, %rax
	je	.LBB20_74
# %bb.75:                               # %if.end343
                                        #   in Loop: Header=BB20_66 Depth=1
	movq	4224(%r14), %rax
	cmpl	$0, (%rax,%r15,4)
	jns	.LBB20_76
	jmp	.LBB20_84
	.p2align	4, 0x90
.LBB20_74:                              # %if.then342
                                        #   in Loop: Header=BB20_66 Depth=1
	movl	$.L.str.154, %edi
	callq	no_mem_exit@PLT
	movq	4224(%r14), %rax
	cmpl	$0, (%rax,%r15,4)
	js	.LBB20_84
.LBB20_76:                              # %for.body350.preheader
                                        #   in Loop: Header=BB20_66 Depth=1
	xorl	%r12d, %r12d
	jmp	.LBB20_77
	.p2align	4, 0x90
.LBB20_83:                              # %if.end408
                                        #   in Loop: Header=BB20_77 Depth=2
	movl	$.L.str.159, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movq	4256(%r14), %rcx
	movq	(%rcx,%r15,8), %rcx
	movl	%eax, (%rcx,%r12,4)
	leaq	1(%r12), %rax
	movq	4224(%r14), %rcx
	movslq	(%rcx,%r15,4), %rcx
	cmpq	%rcx, %r12
	movq	%rax, %r12
	jge	.LBB20_84
.LBB20_77:                              # %for.body350
                                        #   Parent Loop BB20_66 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB20_82 Depth 3
	movl	$.L.str.155, %esi
	movl	$3, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movq	4232(%r14), %rcx
	movq	(%rcx,%r15,8), %rcx
	movl	%eax, (%rcx,%r12,4)
	movl	$.L.str.156, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movq	4240(%r14), %rcx
	movq	(%rcx,%r15,8), %rcx
	movl	%eax, (%rcx,%r12,4)
	movq	4240(%r14), %rax
	movq	(%rax,%r15,8), %rax
	movl	(%rax,%r12,4), %edi
	testl	%edi, %edi
	js	.LBB20_83
# %bb.78:                               # %if.then370
                                        #   in Loop: Header=BB20_77 Depth=2
	incq	%rdi
	movl	$4, %esi
	callq	calloc@PLT
	movq	4248(%r14), %rcx
	movq	(%rcx,%r15,8), %rcx
	movq	%rax, (%rcx,%r12,8)
	testq	%rax, %rax
	je	.LBB20_79
# %bb.80:                               # %if.end387
                                        #   in Loop: Header=BB20_77 Depth=2
	movq	4240(%r14), %rax
	movq	(%rax,%r15,8), %rax
	cmpl	$0, (%rax,%r12,4)
	jns	.LBB20_81
	jmp	.LBB20_83
	.p2align	4, 0x90
.LBB20_79:                              # %if.then386
                                        #   in Loop: Header=BB20_77 Depth=2
	movl	$.L.str.157, %edi
	callq	no_mem_exit@PLT
	movq	4240(%r14), %rax
	movq	(%rax,%r15,8), %rax
	cmpl	$0, (%rax,%r12,4)
	js	.LBB20_83
.LBB20_81:                              # %for.body396.preheader
                                        #   in Loop: Header=BB20_77 Depth=2
	movq	$-1, %r13
	.p2align	4, 0x90
.LBB20_82:                              # %for.body396
                                        #   Parent Loop BB20_66 Depth=1
                                        #     Parent Loop BB20_77 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$.L.str.158, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movq	4248(%r14), %rcx
	movq	(%rcx,%r15,8), %rcx
	movq	(%rcx,%r12,8), %rcx
	movl	%eax, 4(%rcx,%r13,4)
	movq	4240(%r14), %rax
	movq	(%rax,%r15,8), %rax
	movslq	(%rax,%r12,4), %rax
	incq	%r13
	cmpq	%rax, %r13
	jl	.LBB20_82
	jmp	.LBB20_83
.LBB20_85:                              # %for.end421
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
.Lfunc_end20:
	.size	seq_parameter_set_mvc_extension, .Lfunc_end20-seq_parameter_set_mvc_extension
	.cfi_endproc
                                        # -- End function
	.globl	MemAlloc1D                      # -- Begin function MemAlloc1D
	.p2align	4, 0x90
	.type	MemAlloc1D,@function
MemAlloc1D:                             # @MemAlloc1D
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%edx, %eax
	imull	%esi, %eax
	testl	%eax, %eax
	jle	.LBB21_1
# %bb.2:                                # %if.end
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movslq	%edx, %rdi
	movslq	%esi, %rsi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	%rax, (%rbx)
	xorl	%eax, %eax
	testq	%rcx, %rcx
	sete	%al
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.LBB21_1:
	movl	$1, %eax
	retq
.Lfunc_end21:
	.size	MemAlloc1D, .Lfunc_end21-MemAlloc1D
	.cfi_endproc
                                        # -- End function
	.globl	hrd_parameters                  # -- Begin function hrd_parameters
	.p2align	4, 0x90
	.type	hrd_parameters,@function
hrd_parameters:                         # @hrd_parameters
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$.L.str.160, %edi
	callq	ue_v@PLT
	movb	%al, 96(%rbx)
	movl	$.L.str.161, %esi
	movl	$4, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movb	%al, 97(%rbx)
	movl	$.L.str.162, %esi
	movl	$4, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movb	%al, 98(%rbx)
	cmpb	$0, 96(%rbx)
	js	.LBB22_3
# %bb.1:                                # %for.body.lr.ph
	movq	$-1, %r15
	.p2align	4, 0x90
.LBB22_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.163, %edi
	movq	%r14, %rsi
	callq	ue_v@PLT
	movl	%eax, 104(%rbx,%r15,4)
	movl	$.L.str.164, %edi
	movq	%r14, %rsi
	callq	ue_v@PLT
	movl	%eax, 232(%rbx,%r15,4)
	movl	$.L.str.165, %edi
	movq	%r14, %rsi
	callq	u_1@PLT
	movb	%al, 357(%rbx,%r15)
	movsbq	96(%rbx), %rax
	incq	%r15
	cmpq	%rax, %r15
	jl	.LBB22_2
.LBB22_3:                               # %for.end
	movl	$.L.str.166, %esi
	movl	$5, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movb	%al, 388(%rbx)
	movl	$.L.str.167, %esi
	movl	$5, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movb	%al, 389(%rbx)
	movl	$.L.str.168, %esi
	movl	$5, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movb	%al, 390(%rbx)
	movl	$.L.str.169, %esi
	movl	$5, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movb	%al, 391(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end22:
	.size	hrd_parameters, .Lfunc_end22-hrd_parameters
	.cfi_endproc
                                        # -- End function
	.globl	mvc_vui_parameters_extension    # -- Begin function mvc_vui_parameters_extension
	.p2align	4, 0x90
	.type	mvc_vui_parameters_extension,@function
mvc_vui_parameters_extension:           # @mvc_vui_parameters_extension
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$.L.str.170, %edi
	callq	ue_v@PLT
	movl	%eax, (%r14)
	testl	%eax, %eax
	js	.LBB23_18
# %bb.1:                                # %MemAlloc1D.exit
	movl	%eax, %r15d
	incl	%r15d
	movl	$1, %esi
	movq	%r15, %rdi
	callq	calloc@PLT
	movq	%rax, 8(%r14)
	movl	$4, %esi
	movq	%r15, %rdi
	callq	calloc@PLT
	movq	%rax, 16(%r14)
	movl	$8, %esi
	movq	%r15, %rdi
	callq	calloc@PLT
	movq	%rax, 24(%r14)
	testq	%rax, %rax
	jne	.LBB23_3
# %bb.2:                                # %if.then7
	movl	$.L.str.171, %edi
	callq	no_mem_exit@PLT
.LBB23_3:                               # %for.body.preheader
	movl	$1, %esi
	movq	%r15, %rdi
	callq	calloc@PLT
	movq	%rax, 32(%r14)
	movl	$4, %esi
	movq	%r15, %rdi
	callq	calloc@PLT
	movq	%rax, 40(%r14)
	movl	$4, %esi
	movq	%r15, %rdi
	callq	calloc@PLT
	movq	%rax, 48(%r14)
	movl	$1, %esi
	movq	%r15, %rdi
	callq	calloc@PLT
	movq	%rax, 56(%r14)
	movl	$1, %esi
	movq	%r15, %rdi
	callq	calloc@PLT
	movq	%rax, 64(%r14)
	movl	$1, %esi
	movq	%r15, %rdi
	callq	calloc@PLT
	movq	%rax, 72(%r14)
	movl	$1, %esi
	movq	%r15, %rdi
	callq	calloc@PLT
	movq	%rax, 80(%r14)
	movl	$1, %esi
	movq	%r15, %rdi
	callq	calloc@PLT
	movq	%rax, 88(%r14)
	xorl	%r12d, %r12d
	jmp	.LBB23_4
	.p2align	4, 0x90
.LBB23_16:                              # %if.then108
                                        #   in Loop: Header=BB23_4 Depth=1
	movl	$.L.str.181, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movq	80(%r14), %rcx
	movb	%al, (%rcx,%r12)
.LBB23_17:                              # %if.end114
                                        #   in Loop: Header=BB23_4 Depth=1
	movl	$.L.str.182, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movq	88(%r14), %rcx
	movb	%al, (%rcx,%r12)
	incq	%r12
	cmpq	%r15, %r12
	je	.LBB23_18
.LBB23_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_7 Depth 2
	movl	$.L.str.172, %esi
	movl	$3, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movq	8(%r14), %rcx
	movb	%al, (%rcx,%r12)
	movl	$.L.str.173, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movq	16(%r14), %rcx
	movl	%eax, (%rcx,%r12,4)
	movq	16(%r14), %rax
	movl	(%rax,%r12,4), %edi
	testl	%edi, %edi
	js	.LBB23_8
# %bb.5:                                # %if.end39
                                        #   in Loop: Header=BB23_4 Depth=1
	movq	24(%r14), %r13
	incq	%rdi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, (%r13,%r12,8)
	movq	16(%r14), %rax
	cmpl	$0, (%rax,%r12,4)
	js	.LBB23_8
# %bb.6:                                # %for.body46.preheader
                                        #   in Loop: Header=BB23_4 Depth=1
	movq	$-1, %r13
	.p2align	4, 0x90
.LBB23_7:                               # %for.body46
                                        #   Parent Loop BB23_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.174, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movq	24(%r14), %rcx
	movq	(%rcx,%r12,8), %rcx
	movl	%eax, 4(%rcx,%r13,4)
	movq	16(%r14), %rax
	movslq	(%rax,%r12,4), %rax
	incq	%r13
	cmpq	%rax, %r13
	jl	.LBB23_7
.LBB23_8:                               # %for.end
                                        #   in Loop: Header=BB23_4 Depth=1
	movl	$.L.str.175, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movq	32(%r14), %rcx
	movb	%al, (%rcx,%r12)
	movq	32(%r14), %rax
	cmpb	$0, (%rax,%r12)
	je	.LBB23_10
# %bb.9:                                # %if.then61
                                        #   in Loop: Header=BB23_4 Depth=1
	movl	$.L.str.176, %esi
	movl	$32, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movq	40(%r14), %rcx
	movl	%eax, (%rcx,%r12,4)
	movl	$.L.str.177, %esi
	movl	$32, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movq	48(%r14), %rcx
	movl	%eax, (%rcx,%r12,4)
	movl	$.L.str.178, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movq	56(%r14), %rcx
	movb	%al, (%rcx,%r12)
.LBB23_10:                              # %if.end75
                                        #   in Loop: Header=BB23_4 Depth=1
	movl	$.L.str.179, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movq	64(%r14), %rcx
	movb	%al, (%rcx,%r12)
	movq	64(%r14), %rax
	cmpb	$0, (%rax,%r12)
	je	.LBB23_12
# %bb.11:                               # %if.then85
                                        #   in Loop: Header=BB23_4 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	hrd_parameters
.LBB23_12:                              # %if.end86
                                        #   in Loop: Header=BB23_4 Depth=1
	movl	$.L.str.180, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movq	72(%r14), %rcx
	movb	%al, (%rcx,%r12)
	movq	72(%r14), %rax
	cmpb	$0, (%rax,%r12)
	je	.LBB23_14
# %bb.13:                               # %if.then96
                                        #   in Loop: Header=BB23_4 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	hrd_parameters
.LBB23_14:                              # %if.end97
                                        #   in Loop: Header=BB23_4 Depth=1
	movq	64(%r14), %rax
	cmpb	$0, (%rax,%r12)
	jne	.LBB23_16
# %bb.15:                               # %lor.lhs.false
                                        #   in Loop: Header=BB23_4 Depth=1
	movq	72(%r14), %rax
	cmpb	$0, (%rax,%r12)
	jne	.LBB23_16
	jmp	.LBB23_17
.LBB23_18:                              # %if.end123
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
.Lfunc_end23:
	.size	mvc_vui_parameters_extension, .Lfunc_end23-mvc_vui_parameters_extension
	.cfi_endproc
                                        # -- End function
	.globl	init_subset_sps_list            # -- Begin function init_subset_sps_list
	.p2align	4, 0x90
	.type	init_subset_sps_list,@function
init_subset_sps_list:                   # @init_subset_sps_list
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
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movslq	%esi, %r14
	imulq	$4664, %r14, %rdx               # imm = 0x1238
	xorl	%esi, %esi
	callq	memset@PLT
	testl	%r14d, %r14d
	jle	.LBB24_13
# %bb.1:                                # %for.body.preheader
	movl	%ebp, %eax
	cmpl	$4, %ebp
	jae	.LBB24_3
# %bb.2:
	xorl	%ecx, %ecx
	jmp	.LBB24_6
.LBB24_3:                               # %vector.ph
	movl	%eax, %ecx
	andl	$2147483644, %ecx               # imm = 0x7FFFFFFC
	movl	%eax, %edx
	shrl	$2, %edx
	andl	$536870911, %edx                # imm = 0x1FFFFFFF
	imulq	$18656, %rdx, %rdx              # imm = 0x48E0
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB24_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$-1, 32(%rbx,%rsi)
	movl	$-1, 4696(%rbx,%rsi)
	movl	$-1, 9360(%rbx,%rsi)
	movl	$-1, 14024(%rbx,%rsi)
	movl	$-1, 4132(%rbx,%rsi)
	movl	$-1, 8796(%rbx,%rsi)
	movl	$-1, 13460(%rbx,%rsi)
	movl	$-1, 18124(%rbx,%rsi)
	movl	$-1, 4208(%rbx,%rsi)
	movl	$-1, 8872(%rbx,%rsi)
	movl	$-1, 13536(%rbx,%rsi)
	movl	$-1, 18200(%rbx,%rsi)
	movl	$-1, 4272(%rbx,%rsi)
	movl	$-1, 8936(%rbx,%rsi)
	movl	$-1, 13600(%rbx,%rsi)
	movl	$-1, 18264(%rbx,%rsi)
	addq	$18656, %rsi                    # imm = 0x48E0
	cmpq	%rsi, %rdx
	jne	.LBB24_4
# %bb.5:                                # %middle.block
	cmpl	%eax, %ecx
	je	.LBB24_13
.LBB24_6:                               # %for.body.preheader21
	movq	%rax, %rdx
	movq	%rcx, %rsi
	andq	$3, %rdx
	je	.LBB24_10
# %bb.7:                                # %for.body.prol.preheader
	imulq	$4664, %rcx, %rsi               # imm = 0x1238
	addq	%rbx, %rsi
	addq	$4272, %rsi                     # imm = 0x10B0
	negq	%rdx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB24_8:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	$-1, -4240(%rsi)
	movl	$-1, -140(%rsi)
	movl	$-1, -64(%rsi)
	movl	$-1, (%rsi)
	decq	%rdi
	addq	$4664, %rsi                     # imm = 0x1238
	cmpq	%rdi, %rdx
	jne	.LBB24_8
# %bb.9:                                # %for.body.prol.loopexit.loopexit
	movq	%rcx, %rsi
	subq	%rdi, %rsi
.LBB24_10:                              # %for.body.prol.loopexit
	subq	%rax, %rcx
	cmpq	$-4, %rcx
	ja	.LBB24_13
# %bb.11:                               # %for.body.preheader1
	subq	%rsi, %rax
	imulq	$4664, %rsi, %rcx               # imm = 0x1238
	addq	%rbx, %rcx
	addq	$18264, %rcx                    # imm = 0x4758
	.p2align	4, 0x90
.LBB24_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$-1, -18232(%rcx)
	movl	$-1, -14132(%rcx)
	movl	$-1, -14056(%rcx)
	movl	$-1, -13992(%rcx)
	movl	$-1, -13568(%rcx)
	movl	$-1, -9468(%rcx)
	movl	$-1, -9392(%rcx)
	movl	$-1, -9328(%rcx)
	movl	$-1, -8904(%rcx)
	movl	$-1, -4804(%rcx)
	movl	$-1, -4728(%rcx)
	movl	$-1, -4664(%rcx)
	movl	$-1, -4240(%rcx)
	movl	$-1, -140(%rcx)
	movl	$-1, -64(%rcx)
	movl	$-1, (%rcx)
	addq	$18656, %rcx                    # imm = 0x48E0
	addq	$-4, %rax
	jne	.LBB24_12
.LBB24_13:                              # %for.end
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end24:
	.size	init_subset_sps_list, .Lfunc_end24-init_subset_sps_list
	.cfi_endproc
                                        # -- End function
	.globl	reset_subset_sps                # -- Begin function reset_subset_sps
	.p2align	4, 0x90
	.type	reset_subset_sps,@function
reset_subset_sps:                       # @reset_subset_sps
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB25_95
# %bb.1:                                # %land.lhs.true
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
	cmpl	$0, 4132(%rdi)
	js	.LBB25_63
# %bb.2:                                # %if.then
	movl	$-1, 32(%rbx)
	movq	4136(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_4
# %bb.3:                                # %if.end
	callq	free@PLT
	movq	$0, 4136(%rbx)
	cmpl	$0, 4132(%rbx)
	js	.LBB25_10
.LBB25_4:                               # %for.body.lr.ph
	movq	$-1, %r14
	jmp	.LBB25_5
	.p2align	4, 0x90
.LBB25_9:                               # %for.inc
                                        #   in Loop: Header=BB25_5 Depth=1
	movslq	4132(%rbx), %rax
	incq	%r14
	cmpq	%rax, %r14
	jge	.LBB25_10
.LBB25_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	4152(%rbx), %rax
	movq	8(%rax,%r14,8), %rdi
	testq	%rdi, %rdi
	je	.LBB25_7
# %bb.6:                                # %if.then8
                                        #   in Loop: Header=BB25_5 Depth=1
	callq	free@PLT
	movq	4152(%rbx), %rax
	movq	$0, 8(%rax,%r14,8)
.LBB25_7:                               # %if.end15
                                        #   in Loop: Header=BB25_5 Depth=1
	movq	4168(%rbx), %rax
	movq	8(%rax,%r14,8), %rdi
	testq	%rdi, %rdi
	je	.LBB25_9
# %bb.8:                                # %if.then19
                                        #   in Loop: Header=BB25_5 Depth=1
	callq	free@PLT
	movq	4168(%rbx), %rax
	movq	$0, 8(%rax,%r14,8)
	jmp	.LBB25_9
.LBB25_10:                              # %for.end
	movq	4152(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_12
# %bb.11:                               # %if.then29
	callq	free@PLT
	movq	$0, 4152(%rbx)
.LBB25_12:                              # %if.end32
	movq	4168(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_14
# %bb.13:                               # %if.then35
	callq	free@PLT
	movq	$0, 4168(%rbx)
.LBB25_14:                              # %if.end38
	movq	4144(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_16
# %bb.15:                               # %if.then40
	callq	free@PLT
	movq	$0, 4144(%rbx)
.LBB25_16:                              # %if.end43
	movq	4160(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_18
# %bb.17:                               # %if.then45
	callq	free@PLT
	movq	$0, 4160(%rbx)
.LBB25_18:                              # %if.end48
	cmpl	$0, 4132(%rbx)
	js	.LBB25_25
# %bb.19:                               # %for.body52.lr.ph
	movq	$-1, %r14
	jmp	.LBB25_20
	.p2align	4, 0x90
.LBB25_24:                              # %for.inc75
                                        #   in Loop: Header=BB25_20 Depth=1
	movslq	4132(%rbx), %rax
	incq	%r14
	cmpq	%rax, %r14
	jge	.LBB25_25
.LBB25_20:                              # %for.body52
                                        # =>This Inner Loop Header: Depth=1
	movq	4184(%rbx), %rax
	movq	8(%rax,%r14,8), %rdi
	testq	%rdi, %rdi
	je	.LBB25_22
# %bb.21:                               # %if.then56
                                        #   in Loop: Header=BB25_20 Depth=1
	callq	free@PLT
	movq	4184(%rbx), %rax
	movq	$0, 8(%rax,%r14,8)
.LBB25_22:                              # %if.end63
                                        #   in Loop: Header=BB25_20 Depth=1
	movq	4200(%rbx), %rax
	movq	8(%rax,%r14,8), %rdi
	testq	%rdi, %rdi
	je	.LBB25_24
# %bb.23:                               # %if.then67
                                        #   in Loop: Header=BB25_20 Depth=1
	callq	free@PLT
	movq	4200(%rbx), %rax
	movq	$0, 8(%rax,%r14,8)
	jmp	.LBB25_24
.LBB25_25:                              # %for.end77
	movq	4184(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_27
# %bb.26:                               # %if.then80
	callq	free@PLT
	movq	$0, 4184(%rbx)
.LBB25_27:                              # %if.end83
	movq	4200(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_29
# %bb.28:                               # %if.then86
	callq	free@PLT
	movq	$0, 4200(%rbx)
.LBB25_29:                              # %if.end89
	movq	4176(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_31
# %bb.30:                               # %if.then91
	callq	free@PLT
	movq	$0, 4176(%rbx)
.LBB25_31:                              # %if.end94
	movq	4192(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_33
# %bb.32:                               # %if.then96
	callq	free@PLT
	movq	$0, 4192(%rbx)
.LBB25_33:                              # %if.end99
	cmpl	$0, 4208(%rbx)
	js	.LBB25_62
# %bb.34:                               # %if.then101
	movq	4216(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_36
# %bb.35:                               # %if.end106
	callq	free@PLT
	movq	$0, 4216(%rbx)
	cmpl	$0, 4208(%rbx)
	js	.LBB25_51
.LBB25_36:                              # %for.cond111.preheader.lr.ph
	xorl	%r14d, %r14d
	jmp	.LBB25_37
	.p2align	4, 0x90
.LBB25_50:                              # %for.inc181
                                        #   in Loop: Header=BB25_37 Depth=1
	leaq	1(%r14), %rax
	movslq	4208(%rbx), %rcx
	cmpq	%rcx, %r14
	movq	%rax, %r14
	jge	.LBB25_51
.LBB25_37:                              # %for.cond111.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_39 Depth 2
	movq	4224(%rbx), %rax
	cmpl	$0, (%rax,%r14,4)
	js	.LBB25_42
# %bb.38:                               # %for.body115.preheader
                                        #   in Loop: Header=BB25_37 Depth=1
	movq	$-1, %r15
	jmp	.LBB25_39
	.p2align	4, 0x90
.LBB25_41:                              # %for.inc133
                                        #   in Loop: Header=BB25_39 Depth=2
	movslq	(%rax,%r14,4), %rcx
	incq	%r15
	cmpq	%rcx, %r15
	jge	.LBB25_42
.LBB25_39:                              # %for.body115
                                        #   Parent Loop BB25_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	4248(%rbx), %rcx
	movq	(%rcx,%r14,8), %rcx
	movq	8(%rcx,%r15,8), %rdi
	testq	%rdi, %rdi
	je	.LBB25_41
# %bb.40:                               # %if.then121
                                        #   in Loop: Header=BB25_39 Depth=2
	callq	free@PLT
	movq	4248(%rbx), %rax
	movq	(%rax,%r14,8), %rax
	movq	$0, 8(%rax,%r15,8)
	movq	4224(%rbx), %rax
	jmp	.LBB25_41
	.p2align	4, 0x90
.LBB25_42:                              # %for.end135
                                        #   in Loop: Header=BB25_37 Depth=1
	movq	4248(%rbx), %rax
	movq	(%rax,%r14,8), %rdi
	testq	%rdi, %rdi
	je	.LBB25_44
# %bb.43:                               # %if.then140
                                        #   in Loop: Header=BB25_37 Depth=1
	callq	free@PLT
	movq	4248(%rbx), %rax
	movq	$0, (%rax,%r14,8)
.LBB25_44:                              # %if.end147
                                        #   in Loop: Header=BB25_37 Depth=1
	movq	4232(%rbx), %rax
	movq	(%rax,%r14,8), %rdi
	testq	%rdi, %rdi
	je	.LBB25_46
# %bb.45:                               # %if.then151
                                        #   in Loop: Header=BB25_37 Depth=1
	callq	free@PLT
	movq	4232(%rbx), %rax
	movq	$0, (%rax,%r14,8)
.LBB25_46:                              # %if.end158
                                        #   in Loop: Header=BB25_37 Depth=1
	movq	4240(%rbx), %rax
	movq	(%rax,%r14,8), %rdi
	testq	%rdi, %rdi
	je	.LBB25_48
# %bb.47:                               # %if.then162
                                        #   in Loop: Header=BB25_37 Depth=1
	callq	free@PLT
	movq	4240(%rbx), %rax
	movq	$0, (%rax,%r14,8)
.LBB25_48:                              # %if.end169
                                        #   in Loop: Header=BB25_37 Depth=1
	movq	4256(%rbx), %rax
	movq	(%rax,%r14,8), %rdi
	testq	%rdi, %rdi
	je	.LBB25_50
# %bb.49:                               # %if.then173
                                        #   in Loop: Header=BB25_37 Depth=1
	callq	free@PLT
	movq	4256(%rbx), %rax
	movq	$0, (%rax,%r14,8)
	jmp	.LBB25_50
.LBB25_51:                              # %for.end183
	movq	4248(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_53
# %bb.52:                               # %if.then186
	callq	free@PLT
	movq	$0, 4248(%rbx)
.LBB25_53:                              # %if.end189
	movq	4232(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_55
# %bb.54:                               # %if.then192
	callq	free@PLT
	movq	$0, 4232(%rbx)
.LBB25_55:                              # %if.end195
	movq	4240(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_57
# %bb.56:                               # %if.then198
	callq	free@PLT
	movq	$0, 4240(%rbx)
.LBB25_57:                              # %if.end201
	movq	4256(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_59
# %bb.58:                               # %if.then204
	callq	free@PLT
	movq	$0, 4256(%rbx)
.LBB25_59:                              # %if.end207
	movq	4224(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_61
# %bb.60:                               # %if.then210
	callq	free@PLT
	movq	$0, 4224(%rbx)
.LBB25_61:                              # %if.end213
	movl	$-1, 4208(%rbx)
.LBB25_62:                              # %if.end215
	movl	$-1, 4132(%rbx)
.LBB25_63:                              # %land.lhs.true219
	cmpl	$0, 4264(%rbx)
	je	.LBB25_94
# %bb.64:                               # %if.then221
	cmpl	$0, 4272(%rbx)
	js	.LBB25_93
# %bb.65:                               # %if.then223
	movq	4280(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_67
# %bb.66:                               # %if.then225
	callq	free@PLT
	movq	$0, 4280(%rbx)
.LBB25_67:                              # %if.end228
	movq	4288(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_69
# %bb.68:                               # %if.then230
	callq	free@PLT
	movq	$0, 4288(%rbx)
.LBB25_69:                              # %if.end233
	movl	4272(%rbx), %eax
	testl	%eax, %eax
	js	.LBB25_74
# %bb.70:                               # %for.body237.lr.ph
	movq	$-1, %r14
	jmp	.LBB25_71
	.p2align	4, 0x90
.LBB25_73:                              # %for.inc250
                                        #   in Loop: Header=BB25_71 Depth=1
	movslq	%eax, %rcx
	incq	%r14
	cmpq	%rcx, %r14
	jge	.LBB25_74
.LBB25_71:                              # %for.body237
                                        # =>This Inner Loop Header: Depth=1
	movq	4296(%rbx), %rcx
	movq	8(%rcx,%r14,8), %rdi
	testq	%rdi, %rdi
	je	.LBB25_73
# %bb.72:                               # %if.then242
                                        #   in Loop: Header=BB25_71 Depth=1
	callq	free@PLT
	movq	4296(%rbx), %rax
	movq	$0, 8(%rax,%r14,8)
	movl	4272(%rbx), %eax
	jmp	.LBB25_73
.LBB25_74:                              # %for.end252
	movq	4296(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_76
# %bb.75:                               # %if.then255
	callq	free@PLT
	movq	$0, 4296(%rbx)
.LBB25_76:                              # %if.end258
	movq	4304(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_78
# %bb.77:                               # %if.then260
	callq	free@PLT
	movq	$0, 4304(%rbx)
.LBB25_78:                              # %if.end263
	movq	4312(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_80
# %bb.79:                               # %if.then265
	callq	free@PLT
	movq	$0, 4312(%rbx)
.LBB25_80:                              # %if.end268
	movq	4320(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_82
# %bb.81:                               # %if.then270
	callq	free@PLT
	movq	$0, 4320(%rbx)
.LBB25_82:                              # %if.end273
	movq	4328(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_84
# %bb.83:                               # %if.then275
	callq	free@PLT
	movq	$0, 4328(%rbx)
.LBB25_84:                              # %if.end278
	movq	4336(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_86
# %bb.85:                               # %if.then280
	callq	free@PLT
	movq	$0, 4336(%rbx)
.LBB25_86:                              # %if.end283
	movq	4344(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_88
# %bb.87:                               # %if.then285
	callq	free@PLT
	movq	$0, 4344(%rbx)
.LBB25_88:                              # %if.end288
	movq	4352(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_90
# %bb.89:                               # %if.then290
	callq	free@PLT
	movq	$0, 4352(%rbx)
.LBB25_90:                              # %if.end293
	movq	4360(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_92
# %bb.91:                               # %if.then295
	callq	free@PLT
	movq	$0, 4360(%rbx)
.LBB25_92:                              # %if.end298
	movl	$-1, 4272(%rbx)
.LBB25_93:                              # %if.end300
	movl	$0, 4264(%rbx)
.LBB25_94:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
.LBB25_95:                              # %if.end302
	retq
.Lfunc_end25:
	.size	reset_subset_sps, .Lfunc_end25-reset_subset_sps
	.cfi_endproc
                                        # -- End function
	.globl	GetBaseViewId                   # -- Begin function GetBaseViewId
	.p2align	4, 0x90
	.type	GetBaseViewId,@function
GetBaseViewId:                          # @GetBaseViewId
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$0, (%rsi)
	cmpl	$0, 703556(%rdi)
	js	.LBB26_3
# %bb.1:                                # %land.lhs.true
	cmpl	$0, 699424(%rdi)
	je	.LBB26_3
# %bb.2:
	addq	$699424, %rdi                   # imm = 0xAAC20
	jmp	.LBB26_96
.LBB26_3:                               # %if.end
	cmpl	$0, 708220(%rdi)
	js	.LBB26_6
# %bb.4:                                # %land.lhs.true.1
	cmpl	$0, 704088(%rdi)
	je	.LBB26_6
# %bb.5:
	addq	$704088, %rdi                   # imm = 0xABE58
	jmp	.LBB26_96
.LBB26_6:                               # %if.end.1
	cmpl	$0, 712884(%rdi)
	js	.LBB26_9
# %bb.7:                                # %land.lhs.true.2
	cmpl	$0, 708752(%rdi)
	je	.LBB26_9
# %bb.8:
	addq	$708752, %rdi                   # imm = 0xAD090
	jmp	.LBB26_96
.LBB26_9:                               # %if.end.2
	cmpl	$0, 717548(%rdi)
	js	.LBB26_12
# %bb.10:                               # %land.lhs.true.3
	cmpl	$0, 713416(%rdi)
	je	.LBB26_12
# %bb.11:
	addq	$713416, %rdi                   # imm = 0xAE2C8
	jmp	.LBB26_96
.LBB26_12:                              # %if.end.3
	cmpl	$0, 722212(%rdi)
	js	.LBB26_15
# %bb.13:                               # %land.lhs.true.4
	cmpl	$0, 718080(%rdi)
	je	.LBB26_15
# %bb.14:
	addq	$718080, %rdi                   # imm = 0xAF500
	jmp	.LBB26_96
.LBB26_15:                              # %if.end.4
	cmpl	$0, 726876(%rdi)
	js	.LBB26_18
# %bb.16:                               # %land.lhs.true.5
	cmpl	$0, 722744(%rdi)
	je	.LBB26_18
# %bb.17:
	addq	$722744, %rdi                   # imm = 0xB0738
	jmp	.LBB26_96
.LBB26_18:                              # %if.end.5
	cmpl	$0, 731540(%rdi)
	js	.LBB26_21
# %bb.19:                               # %land.lhs.true.6
	cmpl	$0, 727408(%rdi)
	je	.LBB26_21
# %bb.20:
	addq	$727408, %rdi                   # imm = 0xB1970
	jmp	.LBB26_96
.LBB26_21:                              # %if.end.6
	cmpl	$0, 736204(%rdi)
	js	.LBB26_24
# %bb.22:                               # %land.lhs.true.7
	cmpl	$0, 732072(%rdi)
	je	.LBB26_24
# %bb.23:
	addq	$732072, %rdi                   # imm = 0xB2BA8
	jmp	.LBB26_96
.LBB26_24:                              # %if.end.7
	cmpl	$0, 740868(%rdi)
	js	.LBB26_27
# %bb.25:                               # %land.lhs.true.8
	cmpl	$0, 736736(%rdi)
	je	.LBB26_27
# %bb.26:
	addq	$736736, %rdi                   # imm = 0xB3DE0
	jmp	.LBB26_96
.LBB26_27:                              # %if.end.8
	cmpl	$0, 745532(%rdi)
	js	.LBB26_30
# %bb.28:                               # %land.lhs.true.9
	cmpl	$0, 741400(%rdi)
	je	.LBB26_30
# %bb.29:
	addq	$741400, %rdi                   # imm = 0xB5018
	jmp	.LBB26_96
.LBB26_30:                              # %if.end.9
	cmpl	$0, 750196(%rdi)
	js	.LBB26_33
# %bb.31:                               # %land.lhs.true.10
	cmpl	$0, 746064(%rdi)
	je	.LBB26_33
# %bb.32:
	addq	$746064, %rdi                   # imm = 0xB6250
	jmp	.LBB26_96
.LBB26_33:                              # %if.end.10
	cmpl	$0, 754860(%rdi)
	js	.LBB26_36
# %bb.34:                               # %land.lhs.true.11
	cmpl	$0, 750728(%rdi)
	je	.LBB26_36
# %bb.35:
	addq	$750728, %rdi                   # imm = 0xB7488
	jmp	.LBB26_96
.LBB26_36:                              # %if.end.11
	cmpl	$0, 759524(%rdi)
	js	.LBB26_39
# %bb.37:                               # %land.lhs.true.12
	cmpl	$0, 755392(%rdi)
	je	.LBB26_39
# %bb.38:
	addq	$755392, %rdi                   # imm = 0xB86C0
	jmp	.LBB26_96
.LBB26_39:                              # %if.end.12
	cmpl	$0, 764188(%rdi)
	js	.LBB26_42
# %bb.40:                               # %land.lhs.true.13
	cmpl	$0, 760056(%rdi)
	je	.LBB26_42
# %bb.41:
	addq	$760056, %rdi                   # imm = 0xB98F8
	jmp	.LBB26_96
.LBB26_42:                              # %if.end.13
	cmpl	$0, 768852(%rdi)
	js	.LBB26_45
# %bb.43:                               # %land.lhs.true.14
	cmpl	$0, 764720(%rdi)
	je	.LBB26_45
# %bb.44:
	addq	$764720, %rdi                   # imm = 0xBAB30
	jmp	.LBB26_96
.LBB26_45:                              # %if.end.14
	cmpl	$0, 773516(%rdi)
	js	.LBB26_48
# %bb.46:                               # %land.lhs.true.15
	cmpl	$0, 769384(%rdi)
	je	.LBB26_48
# %bb.47:
	addq	$769384, %rdi                   # imm = 0xBBD68
	jmp	.LBB26_96
.LBB26_48:                              # %if.end.15
	cmpl	$0, 778180(%rdi)
	js	.LBB26_51
# %bb.49:                               # %land.lhs.true.16
	cmpl	$0, 774048(%rdi)
	je	.LBB26_51
# %bb.50:
	addq	$774048, %rdi                   # imm = 0xBCFA0
	jmp	.LBB26_96
.LBB26_51:                              # %if.end.16
	cmpl	$0, 782844(%rdi)
	js	.LBB26_54
# %bb.52:                               # %land.lhs.true.17
	cmpl	$0, 778712(%rdi)
	je	.LBB26_54
# %bb.53:
	addq	$778712, %rdi                   # imm = 0xBE1D8
	jmp	.LBB26_96
.LBB26_54:                              # %if.end.17
	cmpl	$0, 787508(%rdi)
	js	.LBB26_57
# %bb.55:                               # %land.lhs.true.18
	cmpl	$0, 783376(%rdi)
	je	.LBB26_57
# %bb.56:
	addq	$783376, %rdi                   # imm = 0xBF410
	jmp	.LBB26_96
.LBB26_57:                              # %if.end.18
	cmpl	$0, 792172(%rdi)
	js	.LBB26_60
# %bb.58:                               # %land.lhs.true.19
	cmpl	$0, 788040(%rdi)
	je	.LBB26_60
# %bb.59:
	addq	$788040, %rdi                   # imm = 0xC0648
	jmp	.LBB26_96
.LBB26_60:                              # %if.end.19
	cmpl	$0, 796836(%rdi)
	js	.LBB26_63
# %bb.61:                               # %land.lhs.true.20
	cmpl	$0, 792704(%rdi)
	je	.LBB26_63
# %bb.62:
	addq	$792704, %rdi                   # imm = 0xC1880
	jmp	.LBB26_96
.LBB26_63:                              # %if.end.20
	cmpl	$0, 801500(%rdi)
	js	.LBB26_66
# %bb.64:                               # %land.lhs.true.21
	cmpl	$0, 797368(%rdi)
	je	.LBB26_66
# %bb.65:
	addq	$797368, %rdi                   # imm = 0xC2AB8
	jmp	.LBB26_96
.LBB26_66:                              # %if.end.21
	cmpl	$0, 806164(%rdi)
	js	.LBB26_69
# %bb.67:                               # %land.lhs.true.22
	cmpl	$0, 802032(%rdi)
	je	.LBB26_69
# %bb.68:
	addq	$802032, %rdi                   # imm = 0xC3CF0
	jmp	.LBB26_96
.LBB26_69:                              # %if.end.22
	cmpl	$0, 810828(%rdi)
	js	.LBB26_72
# %bb.70:                               # %land.lhs.true.23
	cmpl	$0, 806696(%rdi)
	je	.LBB26_72
# %bb.71:
	addq	$806696, %rdi                   # imm = 0xC4F28
	jmp	.LBB26_96
.LBB26_72:                              # %if.end.23
	cmpl	$0, 815492(%rdi)
	js	.LBB26_75
# %bb.73:                               # %land.lhs.true.24
	cmpl	$0, 811360(%rdi)
	je	.LBB26_75
# %bb.74:
	addq	$811360, %rdi                   # imm = 0xC6160
	jmp	.LBB26_96
.LBB26_75:                              # %if.end.24
	cmpl	$0, 820156(%rdi)
	js	.LBB26_78
# %bb.76:                               # %land.lhs.true.25
	cmpl	$0, 816024(%rdi)
	je	.LBB26_78
# %bb.77:
	addq	$816024, %rdi                   # imm = 0xC7398
	jmp	.LBB26_96
.LBB26_78:                              # %if.end.25
	cmpl	$0, 824820(%rdi)
	js	.LBB26_81
# %bb.79:                               # %land.lhs.true.26
	cmpl	$0, 820688(%rdi)
	je	.LBB26_81
# %bb.80:
	addq	$820688, %rdi                   # imm = 0xC85D0
	jmp	.LBB26_96
.LBB26_81:                              # %if.end.26
	cmpl	$0, 829484(%rdi)
	js	.LBB26_84
# %bb.82:                               # %land.lhs.true.27
	cmpl	$0, 825352(%rdi)
	je	.LBB26_84
# %bb.83:
	addq	$825352, %rdi                   # imm = 0xC9808
	jmp	.LBB26_96
.LBB26_84:                              # %if.end.27
	cmpl	$0, 834148(%rdi)
	js	.LBB26_87
# %bb.85:                               # %land.lhs.true.28
	cmpl	$0, 830016(%rdi)
	je	.LBB26_87
# %bb.86:
	addq	$830016, %rdi                   # imm = 0xCAA40
	jmp	.LBB26_96
.LBB26_87:                              # %if.end.28
	cmpl	$0, 838812(%rdi)
	js	.LBB26_90
# %bb.88:                               # %land.lhs.true.29
	cmpl	$0, 834680(%rdi)
	je	.LBB26_90
# %bb.89:
	addq	$834680, %rdi                   # imm = 0xCBC78
	jmp	.LBB26_96
.LBB26_90:                              # %if.end.29
	cmpl	$0, 843476(%rdi)
	js	.LBB26_93
# %bb.91:                               # %land.lhs.true.30
	cmpl	$0, 839344(%rdi)
	je	.LBB26_93
# %bb.92:
	addq	$839344, %rdi                   # imm = 0xCCEB0
	jmp	.LBB26_96
.LBB26_93:                              # %if.end.30
	xorl	%eax, %eax
	cmpl	$0, 848140(%rdi)
	js	.LBB26_97
# %bb.94:                               # %land.lhs.true.31
	cmpl	$0, 844008(%rdi)
	je	.LBB26_97
# %bb.95:
	addq	$844008, %rdi                   # imm = 0xCE0E8
.LBB26_96:                              # %if.then3
	movq	4136(%rdi), %rax
	movl	(%rax), %eax
	movq	%rdi, (%rsi)
.LBB26_97:                              # %if.end4
	retq
.Lfunc_end26:
	.size	GetBaseViewId, .Lfunc_end26-GetBaseViewId
	.cfi_endproc
                                        # -- End function
	.type	ZZ_SCAN,@object                 # @ZZ_SCAN
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
ZZ_SCAN:
	.ascii	"\000\001\004\b\005\002\003\006\t\f\r\n\007\013\016\017"
	.size	ZZ_SCAN, 16

	.type	ZZ_SCAN8,@object                # @ZZ_SCAN8
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
ZZ_SCAN8:
	.ascii	"\000\001\b\020\t\002\003\n\021\030 \031\022\013\004\005\f\023\032!(0)\"\033\024\r\006\007\016\025\034#*1892+$\035\026\017\027\036%,3:;4-&\037'.5<=6/7>?"
	.size	ZZ_SCAN8, 64

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"   : delta_sl   "
	.size	.L.str, 17

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"SPS: profile_idc"
	.size	.L.str.1, 17

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Invalid Profile IDC (%d) encountered. \n"
	.size	.L.str.2, 40

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"SPS: constrained_set0_flag"
	.size	.L.str.3, 27

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"SPS: constrained_set1_flag"
	.size	.L.str.4, 27

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"SPS: constrained_set2_flag"
	.size	.L.str.5, 27

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"SPS: constrained_set3_flag"
	.size	.L.str.6, 27

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"SPS: constrained_set4_flag"
	.size	.L.str.7, 27

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"SPS: reserved_zero_3bits"
	.size	.L.str.8, 25

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"SPS: level_idc"
	.size	.L.str.9, 15

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"SPS: seq_parameter_set_id"
	.size	.L.str.10, 26

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"SPS: chroma_format_idc"
	.size	.L.str.11, 23

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"SPS: separate_colour_plane_flag"
	.size	.L.str.12, 32

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"SPS: bit_depth_luma_minus8"
	.size	.L.str.13, 27

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"SPS: bit_depth_chroma_minus8"
	.size	.L.str.14, 29

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Source picture has higher bit depth than imgpel data type. \nPlease recompile with larger data type for imgpel."
	.size	.L.str.15, 111

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"SPS: lossless_qpprime_y_zero_flag"
	.size	.L.str.16, 34

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"SPS: seq_scaling_matrix_present_flag"
	.size	.L.str.17, 37

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"SPS: seq_scaling_list_present_flag"
	.size	.L.str.18, 35

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"SPS: log2_max_frame_num_minus4"
	.size	.L.str.19, 31

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"SPS: pic_order_cnt_type"
	.size	.L.str.20, 24

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"SPS: log2_max_pic_order_cnt_lsb_minus4"
	.size	.L.str.21, 39

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"SPS: delta_pic_order_always_zero_flag"
	.size	.L.str.22, 38

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"SPS: offset_for_non_ref_pic"
	.size	.L.str.23, 28

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"SPS: offset_for_top_to_bottom_field"
	.size	.L.str.24, 36

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"SPS: num_ref_frames_in_pic_order_cnt_cycle"
	.size	.L.str.25, 43

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"SPS: offset_for_ref_frame[i]"
	.size	.L.str.26, 29

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"SPS: num_ref_frames"
	.size	.L.str.27, 20

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"SPS: gaps_in_frame_num_value_allowed_flag"
	.size	.L.str.28, 42

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"SPS: pic_width_in_mbs_minus1"
	.size	.L.str.29, 29

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"SPS: pic_height_in_map_units_minus1"
	.size	.L.str.30, 36

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"SPS: frame_mbs_only_flag"
	.size	.L.str.31, 25

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"SPS: mb_adaptive_frame_field_flag"
	.size	.L.str.32, 34

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"SPS: direct_8x8_inference_flag"
	.size	.L.str.33, 31

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"SPS: frame_cropping_flag"
	.size	.L.str.34, 25

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"SPS: frame_cropping_rect_left_offset"
	.size	.L.str.35, 37

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"SPS: frame_cropping_rect_right_offset"
	.size	.L.str.36, 38

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"SPS: frame_cropping_rect_top_offset"
	.size	.L.str.37, 36

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"SPS: frame_cropping_rect_bottom_offset"
	.size	.L.str.38, 39

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"SPS: vui_parameters_present_flag"
	.size	.L.str.39, 33

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"VUI: aspect_ratio_info_present_flag"
	.size	.L.str.40, 36

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"VUI: aspect_ratio_idc"
	.size	.L.str.41, 22

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"VUI: sar_width"
	.size	.L.str.42, 15

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"VUI: sar_height"
	.size	.L.str.43, 16

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"VUI: overscan_info_present_flag"
	.size	.L.str.44, 32

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"VUI: overscan_appropriate_flag"
	.size	.L.str.45, 31

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"VUI: video_signal_type_present_flag"
	.size	.L.str.46, 36

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"VUI: video_format"
	.size	.L.str.47, 18

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"VUI: video_full_range_flag"
	.size	.L.str.48, 27

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"VUI: color_description_present_flag"
	.size	.L.str.49, 36

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"VUI: colour_primaries"
	.size	.L.str.50, 22

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"VUI: transfer_characteristics"
	.size	.L.str.51, 30

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"VUI: matrix_coefficients"
	.size	.L.str.52, 25

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"VUI: chroma_loc_info_present_flag"
	.size	.L.str.53, 34

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"VUI: chroma_sample_loc_type_top_field"
	.size	.L.str.54, 38

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"VUI: chroma_sample_loc_type_bottom_field"
	.size	.L.str.55, 41

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"VUI: timing_info_present_flag"
	.size	.L.str.56, 30

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"VUI: num_units_in_tick"
	.size	.L.str.57, 23

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"VUI: time_scale"
	.size	.L.str.58, 16

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"VUI: fixed_frame_rate_flag"
	.size	.L.str.59, 27

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"VUI: nal_hrd_parameters_present_flag"
	.size	.L.str.60, 37

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"VUI: vcl_hrd_parameters_present_flag"
	.size	.L.str.61, 37

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"VUI: low_delay_hrd_flag"
	.size	.L.str.62, 24

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"VUI: pic_struct_present_flag   "
	.size	.L.str.63, 32

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"VUI: bitstream_restriction_flag"
	.size	.L.str.64, 32

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"VUI: motion_vectors_over_pic_boundaries_flag"
	.size	.L.str.65, 45

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"VUI: max_bytes_per_pic_denom"
	.size	.L.str.66, 29

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"VUI: max_bits_per_mb_denom"
	.size	.L.str.67, 27

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"VUI: log2_max_mv_length_horizontal"
	.size	.L.str.68, 35

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"VUI: log2_max_mv_length_vertical"
	.size	.L.str.69, 33

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"VUI: num_reorder_frames"
	.size	.L.str.70, 24

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"VUI: max_dec_frame_buffering"
	.size	.L.str.71, 29

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"VUI: cpb_cnt_minus1"
	.size	.L.str.72, 20

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"VUI: bit_rate_scale"
	.size	.L.str.73, 20

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"VUI: cpb_size_scale"
	.size	.L.str.74, 20

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"VUI: bit_rate_value_minus1"
	.size	.L.str.75, 27

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"VUI: cpb_size_value_minus1"
	.size	.L.str.76, 27

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"VUI: cbr_flag"
	.size	.L.str.77, 14

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"VUI: initial_cpb_removal_delay_length_minus1"
	.size	.L.str.78, 45

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"VUI: cpb_removal_delay_length_minus1"
	.size	.L.str.79, 37

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"VUI: dpb_output_delay_length_minus1"
	.size	.L.str.80, 36

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"VUI: time_offset_length"
	.size	.L.str.81, 24

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"PPS: pic_parameter_set_id"
	.size	.L.str.82, 26

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"PPS: seq_parameter_set_id"
	.size	.L.str.83, 26

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"PPS: entropy_coding_mode_flag"
	.size	.L.str.84, 30

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"PPS: bottom_field_pic_order_in_frame_present_flag"
	.size	.L.str.85, 50

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"PPS: num_slice_groups_minus1"
	.size	.L.str.86, 29

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"PPS: slice_group_map_type"
	.size	.L.str.87, 26

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"PPS: run_length_minus1 [i]"
	.size	.L.str.88, 27

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"PPS: top_left [i]"
	.size	.L.str.89, 18

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"PPS: bottom_right [i]"
	.size	.L.str.90, 22

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"PPS: slice_group_change_direction_flag"
	.size	.L.str.91, 39

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"PPS: slice_group_change_rate_minus1"
	.size	.L.str.92, 36

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"PPS: pic_size_in_map_units_minus1"
	.size	.L.str.93, 34

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"InterpretPPS: slice_group_id"
	.size	.L.str.94, 29

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"slice_group_id[i]"
	.size	.L.str.95, 18

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"PPS: num_ref_idx_l0_active_minus1"
	.size	.L.str.96, 34

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"PPS: num_ref_idx_l1_active_minus1"
	.size	.L.str.97, 34

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"PPS: weighted_pred_flag"
	.size	.L.str.98, 24

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"PPS: weighted_bipred_idc"
	.size	.L.str.99, 25

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"PPS: pic_init_qp_minus26"
	.size	.L.str.100, 25

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"PPS: pic_init_qs_minus26"
	.size	.L.str.101, 25

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"PPS: chroma_qp_index_offset"
	.size	.L.str.102, 28

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"PPS: deblocking_filter_control_present_flag"
	.size	.L.str.103, 44

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"PPS: constrained_intra_pred_flag"
	.size	.L.str.104, 33

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"PPS: redundant_pic_cnt_present_flag"
	.size	.L.str.105, 36

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"PPS: transform_8x8_mode_flag"
	.size	.L.str.106, 29

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"PPS: pic_scaling_matrix_present_flag"
	.size	.L.str.107, 37

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"PPS: pic_scaling_list_present_flag"
	.size	.L.str.108, 35

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"PPS: second_chroma_qp_index_offset"
	.size	.L.str.109, 35

	.type	reset_format_info.SubWidthC,@object # @reset_format_info.SubWidthC
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
reset_format_info.SubWidthC:
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	2                               # 0x2
	.long	1                               # 0x1
	.size	reset_format_info.SubWidthC, 16

	.type	reset_format_info.SubHeightC,@object # @reset_format_info.SubHeightC
	.p2align	4, 0x0
reset_format_info.SubHeightC:
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	1                               # 0x1
	.long	1                               # 0x1
	.size	reset_format_info.SubHeightC, 16

	.type	.L.str.113,@object              # @.str.113
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.113:
	.asciz	"Trying to use an invalid (uninitialized) Picture Parameter Set with ID %d, expect the unexpected...\n"
	.size	.L.str.113, 101

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"PicParset %d references an invalid (uninitialized) Sequence Parameter Set with ID %d, expect the unexpected...\n"
	.size	.L.str.114, 112

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"PicParset %d references an invalid (uninitialized) Subset Sequence Parameter Set with ID %d, expect the unexpected...\n"
	.size	.L.str.115, 119

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"invalid sps->pic_order_cnt_type = %d\n"
	.size	.L.str.116, 38

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"pic_order_cnt_type != 1"
	.size	.L.str.117, 24

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"num_ref_frames_in_pic_order_cnt_cycle too large"
	.size	.L.str.118, 48

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"num_views_minus1"
	.size	.L.str.119, 17

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"init_subset_seq_parameter_set: subset_sps->view_id"
	.size	.L.str.120, 51

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"init_subset_seq_parameter_set: subset_sps->num_anchor_refs_l0"
	.size	.L.str.121, 62

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"init_subset_seq_parameter_set: subset_sps->num_anchor_refs_l1"
	.size	.L.str.122, 62

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"init_subset_seq_parameter_set: subset_sps->anchor_ref_l0"
	.size	.L.str.123, 57

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	"init_subset_seq_parameter_set: subset_sps->anchor_ref_l1"
	.size	.L.str.124, 57

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	"init_subset_seq_parameter_set: subset_sps->num_non_anchor_refs_l0"
	.size	.L.str.125, 66

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"init_subset_seq_parameter_set: subset_sps->num_non_anchor_refs_l1"
	.size	.L.str.126, 66

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"init_subset_seq_parameter_set: subset_sps->non_anchor_ref_l0"
	.size	.L.str.127, 61

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"init_subset_seq_parameter_set: subset_sps->non_anchor_ref_l1"
	.size	.L.str.128, 61

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"view_id"
	.size	.L.str.129, 8

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	"num_anchor_refs_l0"
	.size	.L.str.130, 19

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	"init_subset_seq_parameter_set: subset_sps->anchor_ref_l0[i]"
	.size	.L.str.131, 60

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	"anchor_ref_l0"
	.size	.L.str.132, 14

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"num_anchor_refs_l1"
	.size	.L.str.133, 19

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"init_subset_seq_parameter_set: subset_sps->anchor_ref_l1[i]"
	.size	.L.str.134, 60

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	"anchor_ref_l1"
	.size	.L.str.135, 14

	.type	.L.str.136,@object              # @.str.136
.L.str.136:
	.asciz	"num_non_anchor_refs_l0"
	.size	.L.str.136, 23

	.type	.L.str.137,@object              # @.str.137
.L.str.137:
	.asciz	"init_subset_seq_parameter_set: subset_sps->non_anchor_ref_l0[i]"
	.size	.L.str.137, 64

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	"non_anchor_ref_l0"
	.size	.L.str.138, 18

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"num_non_anchor_refs_l1"
	.size	.L.str.139, 23

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"init_subset_seq_parameter_set: subset_sps->non_anchor_ref_l1[i]"
	.size	.L.str.140, 64

	.type	.L.str.141,@object              # @.str.141
.L.str.141:
	.asciz	"non_anchor_ref_l1"
	.size	.L.str.141, 18

	.type	.L.str.142,@object              # @.str.142
.L.str.142:
	.asciz	"num_level_values_signalled_minus1"
	.size	.L.str.142, 34

	.type	.L.str.143,@object              # @.str.143
.L.str.143:
	.asciz	"init_subset_seq_parameter_set: subset_sps->level_idc"
	.size	.L.str.143, 53

	.type	.L.str.144,@object              # @.str.144
.L.str.144:
	.asciz	"init_subset_seq_parameter_set: subset_sps->num_applicable_ops_minus1"
	.size	.L.str.144, 69

	.type	.L.str.145,@object              # @.str.145
.L.str.145:
	.asciz	"init_subset_seq_parameter_set: subset_sps->applicable_op_temporal_id"
	.size	.L.str.145, 69

	.type	.L.str.146,@object              # @.str.146
.L.str.146:
	.asciz	"init_subset_seq_parameter_set: subset_sps->applicable_op_num_target_views_minus1"
	.size	.L.str.146, 81

	.type	.L.str.147,@object              # @.str.147
.L.str.147:
	.asciz	"init_subset_seq_parameter_set: subset_sps->applicable_op_target_view_id"
	.size	.L.str.147, 72

	.type	.L.str.148,@object              # @.str.148
.L.str.148:
	.asciz	"init_subset_seq_parameter_set: subset_sps->applicable_op_num_views_minus1"
	.size	.L.str.148, 74

	.type	.L.str.149,@object              # @.str.149
.L.str.149:
	.asciz	"level_idc"
	.size	.L.str.149, 10

	.type	.L.str.150,@object              # @.str.150
.L.str.150:
	.asciz	"num_applicable_ops_minus1"
	.size	.L.str.150, 26

	.type	.L.str.151,@object              # @.str.151
.L.str.151:
	.asciz	"init_subset_seq_parameter_set: subset_sps->applicable_op_temporal_id[i]"
	.size	.L.str.151, 72

	.type	.L.str.152,@object              # @.str.152
.L.str.152:
	.asciz	"init_subset_seq_parameter_set: subset_sps->applicable_op_num_target_views_minus1[i]"
	.size	.L.str.152, 84

	.type	.L.str.153,@object              # @.str.153
.L.str.153:
	.asciz	"init_subset_seq_parameter_set: subset_sps->applicable_op_target_view_id[i]"
	.size	.L.str.153, 75

	.type	.L.str.154,@object              # @.str.154
.L.str.154:
	.asciz	"init_subset_seq_parameter_set: subset_sps->applicable_op_num_views_minus1[i]"
	.size	.L.str.154, 77

	.type	.L.str.155,@object              # @.str.155
.L.str.155:
	.asciz	"applicable_op_temporal_id"
	.size	.L.str.155, 26

	.type	.L.str.156,@object              # @.str.156
.L.str.156:
	.asciz	"applicable_op_num_target_views_minus1"
	.size	.L.str.156, 38

	.type	.L.str.157,@object              # @.str.157
.L.str.157:
	.asciz	"init_subset_seq_parameter_set: subset_sps->applicable_op_target_view_id[i][j]"
	.size	.L.str.157, 78

	.type	.L.str.158,@object              # @.str.158
.L.str.158:
	.asciz	"applicable_op_target_view_id"
	.size	.L.str.158, 29

	.type	.L.str.159,@object              # @.str.159
.L.str.159:
	.asciz	"applicable_op_num_views_minus1"
	.size	.L.str.159, 31

	.type	.L.str.160,@object              # @.str.160
.L.str.160:
	.asciz	"cpb_cnt_minus1"
	.size	.L.str.160, 15

	.type	.L.str.161,@object              # @.str.161
.L.str.161:
	.asciz	"bit_rate_scale"
	.size	.L.str.161, 15

	.type	.L.str.162,@object              # @.str.162
.L.str.162:
	.asciz	"cpb_size_scale"
	.size	.L.str.162, 15

	.type	.L.str.163,@object              # @.str.163
.L.str.163:
	.asciz	"bit_rate_value_minus1"
	.size	.L.str.163, 22

	.type	.L.str.164,@object              # @.str.164
.L.str.164:
	.asciz	"cpb_size_value_minus1"
	.size	.L.str.164, 22

	.type	.L.str.165,@object              # @.str.165
.L.str.165:
	.asciz	"cbr_flag"
	.size	.L.str.165, 9

	.type	.L.str.166,@object              # @.str.166
.L.str.166:
	.asciz	"initial_cpb_removal_delay_length_minus1"
	.size	.L.str.166, 40

	.type	.L.str.167,@object              # @.str.167
.L.str.167:
	.asciz	"cpb_removal_delay_length_minus1"
	.size	.L.str.167, 32

	.type	.L.str.168,@object              # @.str.168
.L.str.168:
	.asciz	"dpb_output_delay_length_minus1"
	.size	.L.str.168, 31

	.type	.L.str.169,@object              # @.str.169
.L.str.169:
	.asciz	"time_offset_length"
	.size	.L.str.169, 19

	.type	.L.str.170,@object              # @.str.170
.L.str.170:
	.asciz	"vui_mvc_num_ops_minus1"
	.size	.L.str.170, 23

	.type	.L.str.171,@object              # @.str.171
.L.str.171:
	.asciz	"mvc_vui_parameters_extension: pMVCVUI->view_id"
	.size	.L.str.171, 47

	.type	.L.str.172,@object              # @.str.172
.L.str.172:
	.asciz	"vui_mvc_temporal_id"
	.size	.L.str.172, 20

	.type	.L.str.173,@object              # @.str.173
.L.str.173:
	.asciz	"vui_mvc_num_target_output_views_minus1"
	.size	.L.str.173, 39

	.type	.L.str.174,@object              # @.str.174
.L.str.174:
	.asciz	"vui_mvc_view_id"
	.size	.L.str.174, 16

	.type	.L.str.175,@object              # @.str.175
.L.str.175:
	.asciz	"vui_mvc_timing_info_present_flag"
	.size	.L.str.175, 33

	.type	.L.str.176,@object              # @.str.176
.L.str.176:
	.asciz	"vui_mvc_num_units_in_tick"
	.size	.L.str.176, 26

	.type	.L.str.177,@object              # @.str.177
.L.str.177:
	.asciz	"vui_mvc_time_scale"
	.size	.L.str.177, 19

	.type	.L.str.178,@object              # @.str.178
.L.str.178:
	.asciz	"vui_mvc_fixed_frame_rate_flag"
	.size	.L.str.178, 30

	.type	.L.str.179,@object              # @.str.179
.L.str.179:
	.asciz	"vui_mvc_nal_hrd_parameters_present_flag"
	.size	.L.str.179, 40

	.type	.L.str.180,@object              # @.str.180
.L.str.180:
	.asciz	"vcl_hrd_parameters_present_flag"
	.size	.L.str.180, 32

	.type	.L.str.181,@object              # @.str.181
.L.str.181:
	.asciz	"vui_mvc_low_delay_hrd_flag"
	.size	.L.str.181, 27

	.type	.L.str.182,@object              # @.str.182
.L.str.182:
	.asciz	"vui_mvc_pic_struct_present_flag"
	.size	.L.str.182, 32

	.type	.L.str.183,@object              # @.str.183
.L.str.183:
	.asciz	"undefined level"
	.size	.L.str.183, 16

	.type	.L.str.184,@object              # @.str.184
.L.str.184:
	.asciz	"bit_equal_to_one"
	.size	.L.str.184, 17

	.type	.L.str.186,@object              # @.str.186
.L.str.186:
	.asciz	"mvc_vui_parameters_present_flag"
	.size	.L.str.186, 32

	.type	.L.str.187,@object              # @.str.187
.L.str.187:
	.asciz	"additional_extension2_flag"
	.size	.L.str.187, 27

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Consistency checking a picture parset, to be implemented"
	.size	.Lstr, 57

	.type	.Lstr.188,@object               # @str.188
.Lstr.188:
	.asciz	"Consistency checking a sequence parset, to be implemented"
	.size	.Lstr.188, 58

	.type	.Lstr.189,@object               # @str.189
.Lstr.189:
	.asciz	"Consistency checking a subset sequence parset, to be implemented"
	.size	.Lstr.189, 65

	.type	.Lstr.190,@object               # @str.190
.Lstr.190:
	.asciz	"\nbit_equal_to_one is not equal to 1!"
	.size	.Lstr.190, 37

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
