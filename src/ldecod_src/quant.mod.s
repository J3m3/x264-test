	.text
	.file	"quant.c"
	.globl	init_qp_process                 # -- Begin function init_qp_process
	.p2align	4, 0x90
	.type	init_qp_process,@function
init_qp_process:                        # @init_qp_process
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
	movl	849052(%rdi), %eax
	movl	849056(%rdi), %r14d
	cmpl	%r14d, %eax
	cmovgl	%eax, %r14d
	cmpq	$0, 856032(%rdi)
	jne	.LBB0_3
# %bb.1:                                # %if.then
	movslq	%r14d, %rax
	leaq	208(,%rax,4), %rdi
	callq	malloc@PLT
	movq	%rax, 856032(%rbx)
	testq	%rax, %rax
	je	.LBB0_2
.LBB0_3:                                # %if.end6
	cmpq	$0, 856040(%rbx)
	jne	.LBB0_6
.LBB0_4:                                # %if.then9
	movslq	%r14d, %rax
	leaq	208(,%rax,4), %rdi
	callq	malloc@PLT
	movq	%rax, 856040(%rbx)
	testq	%rax, %rax
	jne	.LBB0_6
# %bb.5:                                # %if.then17
	movl	$.L.str.1, %edi
	callq	no_mem_exit@PLT
	jmp	.LBB0_6
.LBB0_2:                                # %if.then5
	movl	$.L.str, %edi
	callq	no_mem_exit@PLT
	cmpq	$0, 856040(%rbx)
	je	.LBB0_4
.LBB0_6:                                # %if.end19
	cmpl	$-51, %r14d
	jl	.LBB0_9
# %bb.7:                                # %for.body.preheader
	addl	$51, %r14d
	xorl	%eax, %eax
	testl	%r14d, %r14d
	cmovlel	%eax, %r14d
	incl	%r14d
	movl	$2863311531, %ecx               # imm = 0xAAAAAAAB
	.p2align	4, 0x90
.LBB0_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %edx
	imulq	%rcx, %rdx
	shrq	$34, %rdx
	leal	(%rdx,%rdx), %esi
	leal	(%rsi,%rsi,2), %esi
	movq	856032(%rbx), %rdi
	movl	%edx, (%rdi,%rax,4)
	movl	%eax, %edx
	subl	%esi, %edx
	movq	856040(%rbx), %rsi
	movl	%edx, (%rsi,%rax,4)
	incq	%rax
	cmpq	%rax, %r14
	jne	.LBB0_8
.LBB0_9:                                # %for.end
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	init_qp_process, .Lfunc_end0-init_qp_process
	.cfi_endproc
                                        # -- End function
	.globl	free_qp_matrices                # -- Begin function free_qp_matrices
	.p2align	4, 0x90
	.type	free_qp_matrices,@function
free_qp_matrices:                       # @free_qp_matrices
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	856032(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB1_2
# %bb.1:                                # %if.then
	callq	free@PLT
	movq	$0, 856032(%rbx)
.LBB1_2:                                # %if.end
	movq	856040(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB1_4
# %bb.3:                                # %if.then4
	callq	free@PLT
	movq	$0, 856040(%rbx)
.LBB1_4:                                # %if.end7
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	free_qp_matrices, .Lfunc_end1-free_qp_matrices
	.cfi_endproc
                                        # -- End function
	.globl	assign_quant_params             # -- Begin function assign_quant_params
	.p2align	4, 0x90
	.type	assign_quant_params,@function
assign_quant_params:                    # @assign_quant_params
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
	movq	16(%rdi), %r14
	movq	24(%rdi), %rdx
	cmpl	$0, 20(%r14)
	movl	40(%rdx), %esi
	je	.LBB2_1
# %bb.4:                                # %if.else
	xorl	%eax, %eax
	cmpl	$3, 36(%rdx)
	sete	%al
	leal	8(,%rax,4), %ecx
	leaq	40(%rdx), %rax
	testl	%esi, %esi
	je	.LBB2_33
# %bb.5:                                # %if.then12.peel
	cmpl	$0, 44(%rdx)
	je	.LBB2_6
.LBB2_7:                                # %if.else36.peel
	cmpl	$0, 2012(%rdx)
	leaq	92(%rdx), %rdi
	movl	$quant_intra_default, %esi
	cmoveq	%rdi, %rsi
	movq	%rsi, 12912(%rbx)
	cmpl	$0, 48(%rdx)
	je	.LBB2_10
.LBB2_9:                                # %if.else36.peel390
	cmpl	$0, 2016(%rdx)
	leaq	156(%rdx), %rdi
	movl	$quant_intra_default, %esi
	cmoveq	%rdi, %rsi
.LBB2_10:                               # %if.then12.peel434
	movq	%rsi, 12920(%rbx)
	cmpl	$0, 52(%rdx)
	je	.LBB2_12
# %bb.11:                               # %if.else36.peel437
	cmpl	$0, 2020(%rdx)
	leaq	220(%rdx), %rdi
	movl	$quant_intra_default, %esi
	cmoveq	%rdi, %rsi
.LBB2_12:                               # %for.body10.peel.next411
	movq	%rsi, 12928(%rbx)
	cmpl	$0, 56(%rdx)
	je	.LBB2_13
# %bb.14:                               # %if.else36.peel613
	cmpl	$0, 2024(%rdx)
	leaq	284(%rdx), %rdi
	movl	$quant_inter_default, %esi
	cmoveq	%rdi, %rsi
	movl	%ecx, %r8d
	movq	%rsi, 12936(%rbx)
	cmpl	$0, 60(%rdx)
	je	.LBB2_17
.LBB2_16:                               # %if.else36.peel636
	cmpl	$0, 2028(%rdx)
	leaq	348(%rdx), %rdi
	movl	$quant_inter_default, %esi
	cmoveq	%rdi, %rsi
	movq	%rsi, 12944(%rbx)
	cmpl	$0, 64(%rdx)
	je	.LBB2_20
.LBB2_19:                               # %if.else36.peel671
	cmpl	$0, 2032(%rdx)
	leaq	412(%rdx), %rsi
	movl	$quant_inter_default, %edi
	cmoveq	%rsi, %rdi
	jmp	.LBB2_21
.LBB2_1:                                # %land.lhs.true
	testl	%esi, %esi
	je	.LBB2_3
# %bb.2:                                # %if.else.thread
	xorl	%eax, %eax
	cmpl	$3, 36(%rdx)
	sete	%al
	leal	8(,%rax,4), %ecx
	leaq	40(%rdx), %rax
	cmpl	$0, 44(%rdx)
	jne	.LBB2_7
.LBB2_6:
	movl	$quant_intra_default, %esi
	movq	%rsi, 12912(%rbx)
	cmpl	$0, 48(%rdx)
	jne	.LBB2_9
	jmp	.LBB2_10
.LBB2_13:
	movl	$quant_inter_default, %esi
	movl	%ecx, %r8d
	movq	%rsi, 12936(%rbx)
	cmpl	$0, 60(%rdx)
	jne	.LBB2_16
.LBB2_17:                               # %if.else28.peel643
	movq	12936(%rbx), %rsi
	movq	%rsi, 12944(%rbx)
	cmpl	$0, 64(%rdx)
	jne	.LBB2_19
.LBB2_20:                               # %if.else28.peel678
	movq	12944(%rbx), %rdi
.LBB2_21:                               # %for.inc105.peel680
	leaq	476(%rdx), %rsi
	movq	%rdi, 12952(%rbx)
	movl	$6, %edi
	subq	%r8, %rdi
	xorl	%r8d, %r8d
	jmp	.LBB2_22
.LBB2_24:                               #   in Loop: Header=BB2_22 Depth=1
	movl	$quant8_intra_default, %r9d
	.p2align	4, 0x90
.LBB2_31:                               # %for.inc105
                                        #   in Loop: Header=BB2_22 Depth=1
	movq	%r9, 12960(%rbx,%r8,8)
	incq	%r8
	addq	$256, %rsi                      # imm = 0x100
	movq	%rdi, %r9
	addq	%r8, %r9
	je	.LBB2_32
.LBB2_22:                               # %for.body10
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 68(%rdx,%r8,4)
	je	.LBB2_23
# %bb.28:                               # %if.else81
                                        #   in Loop: Header=BB2_22 Depth=1
	cmpl	$0, 2036(%rdx,%r8,4)
	movq	%rsi, %r9
	je	.LBB2_31
# %bb.29:                               # %if.then86
                                        #   in Loop: Header=BB2_22 Depth=1
	movl	$quant8_inter_default, %r9d
	cmpl	$4, %r8d
	ja	.LBB2_31
# %bb.30:                               # %switch.lookup
                                        #   in Loop: Header=BB2_22 Depth=1
	movq	.Lswitch.table.assign_quant_params.2(,%r8,8), %r9
	jmp	.LBB2_31
	.p2align	4, 0x90
.LBB2_23:                               # %if.then59
                                        #   in Loop: Header=BB2_22 Depth=1
	leal	6(%r8), %r9d
	cmpl	$6, %r9d
	je	.LBB2_24
# %bb.25:                               # %if.then59
                                        #   in Loop: Header=BB2_22 Depth=1
	cmpl	$7, %r9d
	jne	.LBB2_27
# %bb.26:                               # %if.then67
                                        #   in Loop: Header=BB2_22 Depth=1
	movl	$quant8_inter_default, %r9d
	jmp	.LBB2_31
.LBB2_27:                               # %if.else71
                                        #   in Loop: Header=BB2_22 Depth=1
	movq	12944(%rbx,%r8,8), %r9
	jmp	.LBB2_31
.LBB2_32:                               # %if.end108
	cmpl	$0, 20(%r14)
	je	.LBB2_69
.LBB2_33:                               # %if.then116.peel
	cmpl	$0, 24(%r14)
	je	.LBB2_35
# %bb.34:                               # %if.else150.peel
	cmpl	$0, 1992(%r14)
	leaq	72(%r14), %rsi
	movl	$quant_intra_default, %edx
	cmoveq	%rsi, %rdx
.LBB2_37:                               # %if.then116.peel494.sink.split
	movq	%rdx, 12912(%rbx)
	jmp	.LBB2_38
.LBB2_35:                               # %if.then122.peel
	cmpl	$0, (%rax)
	je	.LBB2_36
.LBB2_38:                               # %if.then116.peel494
	cmpl	$0, 28(%r14)
	je	.LBB2_40
# %bb.39:                               # %if.else150.peel497
	cmpl	$0, 1996(%r14)
	leaq	136(%r14), %rsi
	movl	$quant_intra_default, %edx
	cmoveq	%rsi, %rdx
	movq	%rdx, 12920(%rbx)
	cmpl	$0, 32(%r14)
	je	.LBB2_43
.LBB2_42:                               # %if.else150.peel552
	cmpl	$0, 2000(%r14)
	leaq	200(%r14), %rsi
	movl	$quant_intra_default, %edx
	cmoveq	%rsi, %rdx
	movq	%rdx, 12928(%rbx)
	cmpl	$0, 36(%r14)
	je	.LBB2_46
.LBB2_45:                               # %if.else150.peel688
	cmpl	$0, 2004(%r14)
	leaq	264(%r14), %rsi
	movl	$quant_inter_default, %edx
	cmoveq	%rsi, %rdx
.LBB2_48:                               # %for.inc235.sink.split.peel
	movq	%rdx, 12936(%rbx)
	jmp	.LBB2_49
.LBB2_40:                               # %if.else140.peel516
	movq	12912(%rbx), %rdx
	movq	%rdx, 12920(%rbx)
	cmpl	$0, 32(%r14)
	jne	.LBB2_42
.LBB2_43:                               # %if.else140.peel571
	movq	12920(%rbx), %rdx
	movq	%rdx, 12928(%rbx)
	cmpl	$0, 36(%r14)
	jne	.LBB2_45
.LBB2_46:                               # %if.then132.peel
	cmpl	$0, (%rax)
	je	.LBB2_47
.LBB2_49:                               # %if.then116.peel715
	movl	%ecx, %ecx
	cmpl	$0, 40(%r14)
	je	.LBB2_51
# %bb.50:                               # %if.else150.peel716
	cmpl	$0, 2008(%r14)
	leaq	328(%r14), %rsi
	movl	$quant_inter_default, %edx
	cmoveq	%rsi, %rdx
	movq	%rdx, 12944(%rbx)
	cmpl	$0, 44(%r14)
	je	.LBB2_54
.LBB2_53:                               # %if.else150.peel758
	cmpl	$0, 2012(%r14)
	leaq	392(%r14), %rdx
	movl	$quant_inter_default, %esi
	cmoveq	%rdx, %rsi
	jmp	.LBB2_55
.LBB2_51:                               # %if.else140.peel726
	movq	12936(%rbx), %rdx
	movq	%rdx, 12944(%rbx)
	cmpl	$0, 44(%r14)
	jne	.LBB2_53
.LBB2_54:                               # %if.else140.peel768
	movq	12944(%rbx), %rsi
.LBB2_55:                               # %for.inc235.sink.split.peel770
	leaq	456(%r14), %rdx
	movq	%rsi, 12952(%rbx)
	addq	$-6, %rcx
	xorl	%esi, %esi
	jmp	.LBB2_56
.LBB2_63:                               # %if.else196
                                        #   in Loop: Header=BB2_56 Depth=1
	movq	12944(%rbx,%rsi,8), %rdi
	.p2align	4, 0x90
.LBB2_67:                               # %for.inc235.sink.split
                                        #   in Loop: Header=BB2_56 Depth=1
	movq	%rdi, 12960(%rbx,%rsi,8)
.LBB2_68:                               # %for.inc235
                                        #   in Loop: Header=BB2_56 Depth=1
	incq	%rsi
	addq	$256, %rdx                      # imm = 0x100
	cmpq	%rsi, %rcx
	je	.LBB2_69
.LBB2_56:                               # %for.body114
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 48(%r14,%rsi,4)
	je	.LBB2_57
# %bb.64:                               # %if.else206
                                        #   in Loop: Header=BB2_56 Depth=1
	cmpl	$0, 2016(%r14,%rsi,4)
	movq	%rdx, %rdi
	je	.LBB2_67
# %bb.65:                               # %if.then212
                                        #   in Loop: Header=BB2_56 Depth=1
	movl	$quant8_inter_default, %edi
	cmpl	$4, %esi
	ja	.LBB2_67
# %bb.66:                               # %switch.lookup607
                                        #   in Loop: Header=BB2_56 Depth=1
	movq	.Lswitch.table.assign_quant_params.2(,%rsi,8), %rdi
	jmp	.LBB2_67
	.p2align	4, 0x90
.LBB2_57:                               # %if.then176
                                        #   in Loop: Header=BB2_56 Depth=1
	leal	6(%rsi), %edi
	cmpl	$7, %edi
	je	.LBB2_61
# %bb.58:                               # %if.then176
                                        #   in Loop: Header=BB2_56 Depth=1
	cmpl	$6, %edi
	jne	.LBB2_63
# %bb.59:                               # %if.then178
                                        #   in Loop: Header=BB2_56 Depth=1
	cmpl	$0, (%rax)
	jne	.LBB2_68
# %bb.60:                               #   in Loop: Header=BB2_56 Depth=1
	movl	$quant8_intra_default, %edi
	jmp	.LBB2_67
.LBB2_61:                               # %if.then188
                                        #   in Loop: Header=BB2_56 Depth=1
	cmpl	$0, (%rax)
	jne	.LBB2_68
# %bb.62:                               #   in Loop: Header=BB2_56 Depth=1
	movl	$quant8_inter_default, %edi
	jmp	.LBB2_67
.LBB2_3:                                # %for.cond.preheader
	movq	$quant_org, 12912(%rbx)
	movq	$quant_org, 12920(%rbx)
	movq	$quant_org, 12928(%rbx)
	movq	$quant_org, 12936(%rbx)
	movq	$quant_org, 12944(%rbx)
	movq	$quant_org, 12952(%rbx)
	movq	$quant8_org, 12960(%rbx)
	movq	$quant8_org, 12968(%rbx)
	movq	$quant8_org, 12976(%rbx)
	movq	$quant8_org, 12984(%rbx)
	movq	$quant8_org, 12992(%rbx)
	movq	$quant8_org, 13000(%rbx)
.LBB2_69:                               # %if.end239
	movq	%rbx, %rdi
	callq	CalculateQuant4x4Param
	cmpl	$0, 16(%r14)
	je	.LBB2_70
# %bb.71:                               # %if.then241
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	CalculateQuant8x8Param          # TAILCALL
.LBB2_70:                               # %if.end242
	.cfi_def_cfa_offset 32
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB2_36:
	.cfi_def_cfa_offset 32
	movl	$quant_intra_default, %edx
	jmp	.LBB2_37
.LBB2_47:
	movl	$quant_inter_default, %edx
	jmp	.LBB2_48
.Lfunc_end2:
	.size	assign_quant_params, .Lfunc_end2-assign_quant_params
	.cfi_endproc
                                        # -- End function
	.globl	CalculateQuant4x4Param          # -- Begin function CalculateQuant4x4Param
	.p2align	4, 0x90
	.type	CalculateQuant4x4Param,@function
CalculateQuant4x4Param:                 # @CalculateQuant4x4Param
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB3_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	12912(%rdi), %rcx
	movl	dequant_coef(%rax), %esi
	movl	%esi, -56(%rsp)                 # 4-byte Spill
	movl	(%rcx), %edx
	imull	%esi, %edx
	movl	%edx, 1392(%rdi,%rax)
	movl	dequant_coef+4(%rax), %r12d
	movl	4(%rcx), %edx
	imull	%r12d, %edx
	movl	%r12d, -32(%rsp)                # 4-byte Spill
	movl	%edx, 1396(%rdi,%rax)
	movl	dequant_coef+8(%rax), %r10d
	movl	8(%rcx), %edx
	imull	%r10d, %edx
	movl	%edx, 1400(%rdi,%rax)
	movl	dequant_coef+12(%rax), %esi
	movl	%esi, -24(%rsp)                 # 4-byte Spill
	movl	12(%rcx), %edx
	imull	%esi, %edx
	movl	%edx, 1404(%rdi,%rax)
	movl	dequant_coef+16(%rax), %r8d
	movl	16(%rcx), %edx
	imull	%r8d, %edx
	movl	%r8d, -8(%rsp)                  # 4-byte Spill
	movl	%edx, 1408(%rdi,%rax)
	movl	dequant_coef+20(%rax), %esi
	movl	%esi, -60(%rsp)                 # 4-byte Spill
	movl	20(%rcx), %edx
	imull	%esi, %edx
	movl	%edx, 1412(%rdi,%rax)
	movl	dequant_coef+24(%rax), %esi
	movl	%esi, -64(%rsp)                 # 4-byte Spill
	movl	24(%rcx), %edx
	imull	%esi, %edx
	movl	%edx, 1416(%rdi,%rax)
	movl	dequant_coef+28(%rax), %r14d
	movl	28(%rcx), %edx
	imull	%r14d, %edx
	movl	%r14d, -36(%rsp)                # 4-byte Spill
	movl	%edx, 1420(%rdi,%rax)
	movl	dequant_coef+32(%rax), %esi
	movl	%esi, -28(%rsp)                 # 4-byte Spill
	movl	32(%rcx), %edx
	imull	%esi, %edx
	movl	%edx, 1424(%rdi,%rax)
	movl	dequant_coef+36(%rax), %esi
	movl	36(%rcx), %edx
	imull	%esi, %edx
	movl	%esi, %r11d
	movl	%edx, 1428(%rdi,%rax)
	movl	dequant_coef+40(%rax), %esi
	movl	40(%rcx), %edx
	imull	%esi, %edx
	movl	%esi, %ebx
	movl	%edx, 1432(%rdi,%rax)
	movl	dequant_coef+44(%rax), %esi
	movl	44(%rcx), %edx
	imull	%esi, %edx
	movl	%esi, %ebp
	movl	%edx, 1436(%rdi,%rax)
	movl	dequant_coef+48(%rax), %r15d
	movl	48(%rcx), %edx
	imull	%r15d, %edx
	movl	%r15d, -40(%rsp)                # 4-byte Spill
	movl	%edx, 1440(%rdi,%rax)
	movl	dequant_coef+52(%rax), %esi
	movl	%esi, -4(%rsp)                  # 4-byte Spill
	movl	52(%rcx), %edx
	imull	%esi, %edx
	movl	%edx, 1444(%rdi,%rax)
	movl	dequant_coef+56(%rax), %r13d
	movl	56(%rcx), %edx
	imull	%r13d, %edx
	movl	%r13d, -52(%rsp)                # 4-byte Spill
	movl	%edx, 1448(%rdi,%rax)
	movl	60(%rcx), %ecx
	movl	dequant_coef+60(%rax), %edx
	movl	%edx, -48(%rsp)                 # 4-byte Spill
	imull	%edx, %ecx
	movl	%ecx, 1452(%rdi,%rax)
	movq	12920(%rdi), %rcx
	movl	(%rcx), %r9d
	movl	-56(%rsp), %edx                 # 4-byte Reload
	imull	%edx, %r9d
	movl	%r9d, 1776(%rdi,%rax)
	movl	4(%rcx), %r9d
	imull	%r12d, %r9d
	movl	%r9d, 1780(%rdi,%rax)
	movl	8(%rcx), %r9d
	imull	%r10d, %r9d
	movl	%r10d, %r12d
	movl	%r10d, -44(%rsp)                # 4-byte Spill
	movl	%r9d, 1784(%rdi,%rax)
	movl	12(%rcx), %r9d
	movl	-24(%rsp), %esi                 # 4-byte Reload
	imull	%esi, %r9d
	movl	%r9d, 1788(%rdi,%rax)
	movl	16(%rcx), %r9d
	imull	%r8d, %r9d
	movl	%r9d, 1792(%rdi,%rax)
	movl	20(%rcx), %r9d
	movl	-60(%rsp), %r10d                # 4-byte Reload
	imull	%r10d, %r9d
	movl	%r9d, 1796(%rdi,%rax)
	movl	24(%rcx), %r9d
	movl	-64(%rsp), %r8d                 # 4-byte Reload
	imull	%r8d, %r9d
	movl	%r9d, 1800(%rdi,%rax)
	movl	28(%rcx), %r9d
	imull	%r14d, %r9d
	movl	%r9d, 1804(%rdi,%rax)
	movl	32(%rcx), %r9d
	movl	-28(%rsp), %r14d                # 4-byte Reload
	imull	%r14d, %r9d
	movl	%r9d, 1808(%rdi,%rax)
	movl	36(%rcx), %r9d
	imull	%r11d, %r9d
	movl	%r11d, -12(%rsp)                # 4-byte Spill
	movl	%r9d, 1812(%rdi,%rax)
	movl	40(%rcx), %r9d
	imull	%ebx, %r9d
	movl	%r9d, 1816(%rdi,%rax)
	movl	44(%rcx), %r9d
	imull	%ebp, %r9d
	movl	%ebp, -20(%rsp)                 # 4-byte Spill
	movl	%r9d, 1820(%rdi,%rax)
	movl	48(%rcx), %r9d
	imull	%r15d, %r9d
	movl	%r9d, 1824(%rdi,%rax)
	movl	52(%rcx), %r9d
	movl	-4(%rsp), %r15d                 # 4-byte Reload
	imull	%r15d, %r9d
	movl	%r9d, 1828(%rdi,%rax)
	movl	56(%rcx), %r9d
	imull	%r13d, %r9d
	movl	%r9d, 1832(%rdi,%rax)
	movl	60(%rcx), %ecx
	movl	-48(%rsp), %r13d                # 4-byte Reload
	imull	%r13d, %ecx
	movl	%ecx, 1836(%rdi,%rax)
	movq	12928(%rdi), %rcx
	movl	(%rcx), %r9d
	imull	%edx, %r9d
	movl	%r9d, 2160(%rdi,%rax)
	movl	4(%rcx), %r9d
	movl	-32(%rsp), %edx                 # 4-byte Reload
	imull	%edx, %r9d
	movl	%r9d, 2164(%rdi,%rax)
	movl	8(%rcx), %r9d
	imull	%r12d, %r9d
	movl	%r9d, 2168(%rdi,%rax)
	movl	12(%rcx), %r9d
	imull	%esi, %r9d
	movl	%r9d, 2172(%rdi,%rax)
	movl	16(%rcx), %r9d
	movl	-8(%rsp), %esi                  # 4-byte Reload
	imull	%esi, %r9d
	movl	%r9d, 2176(%rdi,%rax)
	movl	20(%rcx), %r9d
	imull	%r10d, %r9d
	movl	%r9d, 2180(%rdi,%rax)
	movl	24(%rcx), %r9d
	imull	%r8d, %r9d
	movl	%r9d, 2184(%rdi,%rax)
	movl	28(%rcx), %r9d
	movl	-36(%rsp), %r8d                 # 4-byte Reload
	imull	%r8d, %r9d
	movl	%r9d, 2188(%rdi,%rax)
	movl	32(%rcx), %r9d
	movl	%r14d, %r10d
	imull	%r14d, %r9d
	movl	%r9d, 2192(%rdi,%rax)
	movl	36(%rcx), %r9d
	imull	%r11d, %r9d
	movl	%r9d, 2196(%rdi,%rax)
	movl	40(%rcx), %r9d
	imull	%ebx, %r9d
	movl	%ebx, %r14d
	movl	%ebx, -16(%rsp)                 # 4-byte Spill
	movl	%r9d, 2200(%rdi,%rax)
	movl	44(%rcx), %r9d
	imull	%ebp, %r9d
	movl	%r9d, 2204(%rdi,%rax)
	movl	48(%rcx), %r9d
	imull	-40(%rsp), %r9d                 # 4-byte Folded Reload
	movl	%r9d, 2208(%rdi,%rax)
	movl	52(%rcx), %r9d
	movl	%r15d, %r12d
	imull	%r15d, %r9d
	movl	%r9d, 2212(%rdi,%rax)
	movl	56(%rcx), %r9d
	imull	-52(%rsp), %r9d                 # 4-byte Folded Reload
	movl	%r9d, 2216(%rdi,%rax)
	movl	60(%rcx), %ecx
	imull	%r13d, %ecx
	movl	%ecx, 2220(%rdi,%rax)
	movq	12936(%rdi), %rcx
	movl	(%rcx), %r9d
	movl	-56(%rsp), %r11d                # 4-byte Reload
	imull	%r11d, %r9d
	movl	%r9d, 2544(%rdi,%rax)
	movl	4(%rcx), %r9d
	imull	%edx, %r9d
	movl	%edx, %r15d
	movl	%r9d, 2548(%rdi,%rax)
	movl	8(%rcx), %r9d
	movl	-44(%rsp), %edx                 # 4-byte Reload
	imull	%edx, %r9d
	movl	%r9d, 2552(%rdi,%rax)
	movl	12(%rcx), %r9d
	movl	-24(%rsp), %ebx                 # 4-byte Reload
	imull	%ebx, %r9d
	movl	%r9d, 2556(%rdi,%rax)
	movl	16(%rcx), %r9d
	imull	%esi, %r9d
	movl	%esi, %r13d
	movl	%r9d, 2560(%rdi,%rax)
	movl	20(%rcx), %r9d
	movl	-60(%rsp), %esi                 # 4-byte Reload
	imull	%esi, %r9d
	movl	%r9d, 2564(%rdi,%rax)
	movl	24(%rcx), %r9d
	movl	-64(%rsp), %ebp                 # 4-byte Reload
	imull	%ebp, %r9d
	movl	%r9d, 2568(%rdi,%rax)
	movl	28(%rcx), %r9d
	imull	%r8d, %r9d
	movl	%r9d, 2572(%rdi,%rax)
	movl	32(%rcx), %r9d
	imull	%r10d, %r9d
	movl	%r9d, 2576(%rdi,%rax)
	movl	36(%rcx), %r9d
	movl	-12(%rsp), %r8d                 # 4-byte Reload
	imull	%r8d, %r9d
	movl	%r9d, 2580(%rdi,%rax)
	movl	40(%rcx), %r9d
	imull	%r14d, %r9d
	movl	%r9d, 2584(%rdi,%rax)
	movl	44(%rcx), %r9d
	movl	-20(%rsp), %r10d                # 4-byte Reload
	imull	%r10d, %r9d
	movl	%r9d, 2588(%rdi,%rax)
	movl	48(%rcx), %r9d
	movl	-40(%rsp), %r14d                # 4-byte Reload
	imull	%r14d, %r9d
	movl	%r9d, 2592(%rdi,%rax)
	movl	52(%rcx), %r9d
	imull	%r12d, %r9d
	movl	%r9d, 2596(%rdi,%rax)
	movl	56(%rcx), %r9d
	imull	-52(%rsp), %r9d                 # 4-byte Folded Reload
	movl	%r9d, 2600(%rdi,%rax)
	movl	60(%rcx), %ecx
	imull	-48(%rsp), %ecx                 # 4-byte Folded Reload
	movl	%ecx, 2604(%rdi,%rax)
	movq	12944(%rdi), %rcx
	movl	(%rcx), %r9d
	imull	%r11d, %r9d
	movl	%r9d, 2928(%rdi,%rax)
	movl	4(%rcx), %r9d
	imull	%r15d, %r9d
	movl	%r9d, 2932(%rdi,%rax)
	movl	8(%rcx), %r9d
	imull	%edx, %r9d
	movl	%r9d, 2936(%rdi,%rax)
	movl	12(%rcx), %r9d
	imull	%ebx, %r9d
	movl	%ebx, %edx
	movl	%r9d, 2940(%rdi,%rax)
	movl	16(%rcx), %r9d
	imull	%r13d, %r9d
	movl	%r9d, 2944(%rdi,%rax)
	movl	20(%rcx), %r9d
	imull	%esi, %r9d
	movl	%r9d, 2948(%rdi,%rax)
	movl	24(%rcx), %r9d
	imull	%ebp, %r9d
	movl	%r9d, 2952(%rdi,%rax)
	movl	28(%rcx), %r9d
	movl	-36(%rsp), %r15d                # 4-byte Reload
	imull	%r15d, %r9d
	movl	%r9d, 2956(%rdi,%rax)
	movl	32(%rcx), %r9d
	movl	-28(%rsp), %esi                 # 4-byte Reload
	imull	%esi, %r9d
	movl	%r9d, 2960(%rdi,%rax)
	movl	36(%rcx), %r9d
	movl	%r8d, %r11d
	imull	%r8d, %r9d
	movl	%r9d, 2964(%rdi,%rax)
	movl	40(%rcx), %r9d
	movl	-16(%rsp), %ebx                 # 4-byte Reload
	imull	%ebx, %r9d
	movl	%r9d, 2968(%rdi,%rax)
	movl	44(%rcx), %r9d
	movl	%r10d, %ebp
	imull	%r10d, %r9d
	movl	%r9d, 2972(%rdi,%rax)
	movl	48(%rcx), %r9d
	movl	%r14d, %r8d
	imull	%r14d, %r9d
	movl	%r9d, 2976(%rdi,%rax)
	movl	52(%rcx), %r9d
	movl	%r12d, %r10d
	imull	%r12d, %r9d
	movl	%r9d, 2980(%rdi,%rax)
	movl	56(%rcx), %r9d
	movl	-52(%rsp), %r14d                # 4-byte Reload
	imull	%r14d, %r9d
	movl	%r9d, 2984(%rdi,%rax)
	movl	60(%rcx), %ecx
	movl	-48(%rsp), %r12d                # 4-byte Reload
	imull	%r12d, %ecx
	movl	%ecx, 2988(%rdi,%rax)
	movq	12952(%rdi), %rcx
	movl	-56(%rsp), %r9d                 # 4-byte Reload
	imull	(%rcx), %r9d
	movl	%r9d, 3312(%rdi,%rax)
	movl	-32(%rsp), %r9d                 # 4-byte Reload
	imull	4(%rcx), %r9d
	movl	%r9d, 3316(%rdi,%rax)
	movl	-44(%rsp), %r9d                 # 4-byte Reload
	imull	8(%rcx), %r9d
	movl	%r9d, 3320(%rdi,%rax)
	imull	12(%rcx), %edx
	movl	%edx, 3324(%rdi,%rax)
	imull	16(%rcx), %r13d
	movl	%r13d, 3328(%rdi,%rax)
	movl	-60(%rsp), %edx                 # 4-byte Reload
	imull	20(%rcx), %edx
	movl	%edx, 3332(%rdi,%rax)
	movl	-64(%rsp), %edx                 # 4-byte Reload
	imull	24(%rcx), %edx
	movl	%edx, 3336(%rdi,%rax)
	imull	28(%rcx), %r15d
	movl	%r15d, 3340(%rdi,%rax)
	imull	32(%rcx), %esi
	movl	%esi, 3344(%rdi,%rax)
	movl	%r11d, %edx
	imull	36(%rcx), %edx
	movl	%edx, 3348(%rdi,%rax)
	movl	%ebx, %edx
	imull	40(%rcx), %edx
	movl	%edx, 3352(%rdi,%rax)
	movl	%ebp, %edx
	imull	44(%rcx), %edx
	movl	%edx, 3356(%rdi,%rax)
	movl	%r8d, %edx
	imull	48(%rcx), %edx
	movl	%edx, 3360(%rdi,%rax)
	movl	%r10d, %edx
	imull	52(%rcx), %edx
	movl	%edx, 3364(%rdi,%rax)
	movl	%r14d, %edx
	imull	56(%rcx), %edx
	movl	%edx, 3368(%rdi,%rax)
	movl	%r12d, %edx
	imull	60(%rcx), %edx
	movl	%edx, 3372(%rdi,%rax)
	addq	$64, %rax
	cmpl	$384, %eax                      # imm = 0x180
	jne	.LBB3_1
# %bb.2:                                # %for.end
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
.Lfunc_end3:
	.size	CalculateQuant4x4Param, .Lfunc_end3-CalculateQuant4x4Param
	.cfi_endproc
                                        # -- End function
	.globl	CalculateQuant8x8Param          # -- Begin function CalculateQuant8x8Param
	.p2align	4, 0x90
	.type	CalculateQuant8x8Param,@function
CalculateQuant8x8Param:                 # @CalculateQuant8x8Param
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
	movq	%rdi, %rbx
	addq	$3696, %rdi                     # imm = 0xE70
	leaq	8304(%rbx), %r14
	leaq	3952(%rbx), %r15
	movq	12960(%rbx), %rdx
	movl	$dequant_coef8, %esi
	callq	set_dequant8x8
	leaq	8560(%rbx), %r12
	movq	12968(%rbx), %rdx
	movl	$dequant_coef8, %esi
	movq	%r14, %rdi
	callq	set_dequant8x8
	leaq	4208(%rbx), %r14
	movq	12960(%rbx), %rdx
	movl	$dequant_coef8+256, %esi
	movq	%r15, %rdi
	callq	set_dequant8x8
	leaq	8816(%rbx), %r15
	movq	12968(%rbx), %rdx
	movl	$dequant_coef8+256, %esi
	movq	%r12, %rdi
	callq	set_dequant8x8
	leaq	4464(%rbx), %r12
	movq	12960(%rbx), %rdx
	movl	$dequant_coef8+512, %esi
	movq	%r14, %rdi
	callq	set_dequant8x8
	leaq	9072(%rbx), %r14
	movq	12968(%rbx), %rdx
	movl	$dequant_coef8+512, %esi
	movq	%r15, %rdi
	callq	set_dequant8x8
	leaq	4720(%rbx), %r15
	movq	12960(%rbx), %rdx
	movl	$dequant_coef8+768, %esi
	movq	%r12, %rdi
	callq	set_dequant8x8
	leaq	9328(%rbx), %r12
	movq	12968(%rbx), %rdx
	movl	$dequant_coef8+768, %esi
	movq	%r14, %rdi
	callq	set_dequant8x8
	leaq	4976(%rbx), %r14
	movq	12960(%rbx), %rdx
	movl	$dequant_coef8+1024, %esi
	movq	%r15, %rdi
	callq	set_dequant8x8
	leaq	9584(%rbx), %r15
	movq	12968(%rbx), %rdx
	movl	$dequant_coef8+1024, %esi
	movq	%r12, %rdi
	callq	set_dequant8x8
	movq	12960(%rbx), %rdx
	movl	$dequant_coef8+1280, %esi
	movq	%r14, %rdi
	callq	set_dequant8x8
	movq	12968(%rbx), %rdx
	movl	$dequant_coef8+1280, %esi
	movq	%r15, %rdi
	callq	set_dequant8x8
	movq	24(%rbx), %rax
	cmpl	$3, 36(%rax)
	jne	.LBB4_1
# %bb.2:                                # %for.cond25.preheader
	leaq	11376(%rbx), %r15
	leaq	6768(%rbx), %rbp
	leaq	9840(%rbx), %r13
	leaq	5232(%rbx), %rdi
	leaq	5488(%rbx), %r14
	movq	12976(%rbx), %rdx
	movl	$dequant_coef8, %esi
	callq	set_dequant8x8
	leaq	10096(%rbx), %r12
	movq	12984(%rbx), %rdx
	movl	$dequant_coef8, %esi
	movq	%r13, %rdi
	callq	set_dequant8x8
	leaq	7024(%rbx), %r13
	movq	12992(%rbx), %rdx
	movl	$dequant_coef8, %esi
	movq	%rbp, %rdi
	callq	set_dequant8x8
	leaq	11632(%rbx), %rbp
	movq	13000(%rbx), %rdx
	movl	$dequant_coef8, %esi
	movq	%r15, %rdi
	callq	set_dequant8x8
	leaq	5744(%rbx), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	12976(%rbx), %rdx
	movl	$dequant_coef8+256, %esi
	movq	%r14, %rdi
	callq	set_dequant8x8
	leaq	10352(%rbx), %r14
	movq	12984(%rbx), %rdx
	movl	$dequant_coef8+256, %esi
	movq	%r12, %rdi
	callq	set_dequant8x8
	leaq	7280(%rbx), %r15
	movq	12992(%rbx), %rdx
	movl	$dequant_coef8+256, %esi
	movq	%r13, %rdi
	callq	set_dequant8x8
	leaq	11888(%rbx), %r13
	movq	13000(%rbx), %rdx
	movl	$dequant_coef8+256, %esi
	movq	%rbp, %rdi
	callq	set_dequant8x8
	leaq	6000(%rbx), %r12
	movq	12976(%rbx), %rdx
	movl	$dequant_coef8+512, %esi
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	set_dequant8x8
	leaq	10608(%rbx), %rbp
	movq	12984(%rbx), %rdx
	movl	$dequant_coef8+512, %esi
	movq	%r14, %rdi
	callq	set_dequant8x8
	leaq	7536(%rbx), %r14
	movq	12992(%rbx), %rdx
	movl	$dequant_coef8+512, %esi
	movq	%r15, %rdi
	callq	set_dequant8x8
	leaq	12144(%rbx), %r15
	movq	13000(%rbx), %rdx
	movl	$dequant_coef8+512, %esi
	movq	%r13, %rdi
	callq	set_dequant8x8
	leaq	6256(%rbx), %r13
	movq	12976(%rbx), %rdx
	movl	$dequant_coef8+768, %esi
	movq	%r12, %rdi
	callq	set_dequant8x8
	leaq	10864(%rbx), %r12
	movq	12984(%rbx), %rdx
	movl	$dequant_coef8+768, %esi
	movq	%rbp, %rdi
	callq	set_dequant8x8
	leaq	7792(%rbx), %rbp
	movq	12992(%rbx), %rdx
	movl	$dequant_coef8+768, %esi
	movq	%r14, %rdi
	callq	set_dequant8x8
	leaq	12400(%rbx), %r14
	movq	13000(%rbx), %rdx
	movl	$dequant_coef8+768, %esi
	movq	%r15, %rdi
	callq	set_dequant8x8
	leaq	6512(%rbx), %r15
	movq	12976(%rbx), %rdx
	movl	$dequant_coef8+1024, %esi
	movq	%r13, %rdi
	callq	set_dequant8x8
	leaq	11120(%rbx), %r13
	movq	12984(%rbx), %rdx
	movl	$dequant_coef8+1024, %esi
	movq	%r12, %rdi
	callq	set_dequant8x8
	leaq	8048(%rbx), %r12
	movq	12992(%rbx), %rdx
	movl	$dequant_coef8+1024, %esi
	movq	%rbp, %rdi
	callq	set_dequant8x8
	leaq	12656(%rbx), %rbp
	movq	13000(%rbx), %rdx
	movl	$dequant_coef8+1024, %esi
	movq	%r14, %rdi
	callq	set_dequant8x8
	movq	12976(%rbx), %rdx
	movl	$dequant_coef8+1280, %esi
	movq	%r15, %rdi
	callq	set_dequant8x8
	movq	12984(%rbx), %rdx
	movl	$dequant_coef8+1280, %esi
	movq	%r13, %rdi
	callq	set_dequant8x8
	movq	12992(%rbx), %rdx
	movl	$dequant_coef8+1280, %esi
	movq	%r12, %rdi
	callq	set_dequant8x8
	movq	13000(%rbx), %rdx
	movl	$dequant_coef8+1280, %esi
	movq	%rbp, %rdi
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
	jmp	set_dequant8x8                  # TAILCALL
.LBB4_1:                                # %if.end
	.cfi_def_cfa_offset 64
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
.Lfunc_end4:
	.size	CalculateQuant8x8Param, .Lfunc_end4-CalculateQuant8x8Param
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function set_dequant8x8
	.type	set_dequant8x8,@function
set_dequant8x8:                         # @set_dequant8x8
	.cfi_startproc
# %bb.0:                                # %entry
	movl	(%rdx), %eax
	imull	(%rsi), %eax
	movl	%eax, (%rdi)
	movl	4(%rdx), %eax
	imull	4(%rsi), %eax
	movl	%eax, 4(%rdi)
	movl	8(%rdx), %eax
	imull	8(%rsi), %eax
	movl	%eax, 8(%rdi)
	movl	12(%rdx), %eax
	imull	12(%rsi), %eax
	movl	%eax, 12(%rdi)
	movl	16(%rdx), %eax
	imull	16(%rsi), %eax
	movl	%eax, 16(%rdi)
	movl	20(%rdx), %eax
	imull	20(%rsi), %eax
	movl	%eax, 20(%rdi)
	movl	24(%rdx), %eax
	imull	24(%rsi), %eax
	movl	%eax, 24(%rdi)
	movl	28(%rdx), %eax
	imull	28(%rsi), %eax
	movl	%eax, 28(%rdi)
	movl	32(%rdx), %eax
	imull	32(%rsi), %eax
	movl	%eax, 32(%rdi)
	movl	36(%rdx), %eax
	imull	36(%rsi), %eax
	movl	%eax, 36(%rdi)
	movl	40(%rdx), %eax
	imull	40(%rsi), %eax
	movl	%eax, 40(%rdi)
	movl	44(%rdx), %eax
	imull	44(%rsi), %eax
	movl	%eax, 44(%rdi)
	movl	48(%rdx), %eax
	imull	48(%rsi), %eax
	movl	%eax, 48(%rdi)
	movl	52(%rdx), %eax
	imull	52(%rsi), %eax
	movl	%eax, 52(%rdi)
	movl	56(%rdx), %eax
	imull	56(%rsi), %eax
	movl	%eax, 56(%rdi)
	movl	60(%rdx), %eax
	imull	60(%rsi), %eax
	movl	%eax, 60(%rdi)
	movl	64(%rdx), %eax
	imull	64(%rsi), %eax
	movl	%eax, 64(%rdi)
	movl	68(%rdx), %eax
	imull	68(%rsi), %eax
	movl	%eax, 68(%rdi)
	movl	72(%rdx), %eax
	imull	72(%rsi), %eax
	movl	%eax, 72(%rdi)
	movl	76(%rdx), %eax
	imull	76(%rsi), %eax
	movl	%eax, 76(%rdi)
	movl	80(%rdx), %eax
	imull	80(%rsi), %eax
	movl	%eax, 80(%rdi)
	movl	84(%rdx), %eax
	imull	84(%rsi), %eax
	movl	%eax, 84(%rdi)
	movl	88(%rdx), %eax
	imull	88(%rsi), %eax
	movl	%eax, 88(%rdi)
	movl	92(%rdx), %eax
	imull	92(%rsi), %eax
	movl	%eax, 92(%rdi)
	movl	96(%rdx), %eax
	imull	96(%rsi), %eax
	movl	%eax, 96(%rdi)
	movl	100(%rdx), %eax
	imull	100(%rsi), %eax
	movl	%eax, 100(%rdi)
	movl	104(%rdx), %eax
	imull	104(%rsi), %eax
	movl	%eax, 104(%rdi)
	movl	108(%rdx), %eax
	imull	108(%rsi), %eax
	movl	%eax, 108(%rdi)
	movl	112(%rdx), %eax
	imull	112(%rsi), %eax
	movl	%eax, 112(%rdi)
	movl	116(%rdx), %eax
	imull	116(%rsi), %eax
	movl	%eax, 116(%rdi)
	movl	120(%rdx), %eax
	imull	120(%rsi), %eax
	movl	%eax, 120(%rdi)
	movl	124(%rdx), %eax
	imull	124(%rsi), %eax
	movl	%eax, 124(%rdi)
	movl	128(%rdx), %eax
	imull	128(%rsi), %eax
	movl	%eax, 128(%rdi)
	movl	132(%rdx), %eax
	imull	132(%rsi), %eax
	movl	%eax, 132(%rdi)
	movl	136(%rdx), %eax
	imull	136(%rsi), %eax
	movl	%eax, 136(%rdi)
	movl	140(%rdx), %eax
	imull	140(%rsi), %eax
	movl	%eax, 140(%rdi)
	movl	144(%rdx), %eax
	imull	144(%rsi), %eax
	movl	%eax, 144(%rdi)
	movl	148(%rdx), %eax
	imull	148(%rsi), %eax
	movl	%eax, 148(%rdi)
	movl	152(%rdx), %eax
	imull	152(%rsi), %eax
	movl	%eax, 152(%rdi)
	movl	156(%rdx), %eax
	imull	156(%rsi), %eax
	movl	%eax, 156(%rdi)
	movl	160(%rdx), %eax
	imull	160(%rsi), %eax
	movl	%eax, 160(%rdi)
	movl	164(%rdx), %eax
	imull	164(%rsi), %eax
	movl	%eax, 164(%rdi)
	movl	168(%rdx), %eax
	imull	168(%rsi), %eax
	movl	%eax, 168(%rdi)
	movl	172(%rdx), %eax
	imull	172(%rsi), %eax
	movl	%eax, 172(%rdi)
	movl	176(%rdx), %eax
	imull	176(%rsi), %eax
	movl	%eax, 176(%rdi)
	movl	180(%rdx), %eax
	imull	180(%rsi), %eax
	movl	%eax, 180(%rdi)
	movl	184(%rdx), %eax
	imull	184(%rsi), %eax
	movl	%eax, 184(%rdi)
	movl	188(%rdx), %eax
	imull	188(%rsi), %eax
	movl	%eax, 188(%rdi)
	movl	192(%rdx), %eax
	imull	192(%rsi), %eax
	movl	%eax, 192(%rdi)
	movl	196(%rdx), %eax
	imull	196(%rsi), %eax
	movl	%eax, 196(%rdi)
	movl	200(%rdx), %eax
	imull	200(%rsi), %eax
	movl	%eax, 200(%rdi)
	movl	204(%rdx), %eax
	imull	204(%rsi), %eax
	movl	%eax, 204(%rdi)
	movl	208(%rdx), %eax
	imull	208(%rsi), %eax
	movl	%eax, 208(%rdi)
	movl	212(%rdx), %eax
	imull	212(%rsi), %eax
	movl	%eax, 212(%rdi)
	movl	216(%rdx), %eax
	imull	216(%rsi), %eax
	movl	%eax, 216(%rdi)
	movl	220(%rdx), %eax
	imull	220(%rsi), %eax
	movl	%eax, 220(%rdi)
	movl	224(%rdx), %eax
	imull	224(%rsi), %eax
	movl	%eax, 224(%rdi)
	movl	228(%rdx), %eax
	imull	228(%rsi), %eax
	movl	%eax, 228(%rdi)
	movl	232(%rdx), %eax
	imull	232(%rsi), %eax
	movl	%eax, 232(%rdi)
	movl	236(%rdx), %eax
	imull	236(%rsi), %eax
	movl	%eax, 236(%rdi)
	movl	240(%rdx), %eax
	imull	240(%rsi), %eax
	movl	%eax, 240(%rdi)
	movl	244(%rdx), %eax
	imull	244(%rsi), %eax
	movl	%eax, 244(%rdi)
	movl	248(%rdx), %eax
	imull	248(%rsi), %eax
	movl	%eax, 248(%rdi)
	movl	252(%rdx), %eax
	imull	252(%rsi), %eax
	movl	%eax, 252(%rdi)
	retq
.Lfunc_end5:
	.size	set_dequant8x8, .Lfunc_end5-set_dequant8x8
	.cfi_endproc
                                        # -- End function
	.type	quant_intra_default,@object     # @quant_intra_default
	.data
	.globl	quant_intra_default
	.p2align	4, 0x0
quant_intra_default:
	.long	6                               # 0x6
	.long	13                              # 0xd
	.long	20                              # 0x14
	.long	28                              # 0x1c
	.long	13                              # 0xd
	.long	20                              # 0x14
	.long	28                              # 0x1c
	.long	32                              # 0x20
	.long	20                              # 0x14
	.long	28                              # 0x1c
	.long	32                              # 0x20
	.long	37                              # 0x25
	.long	28                              # 0x1c
	.long	32                              # 0x20
	.long	37                              # 0x25
	.long	42                              # 0x2a
	.size	quant_intra_default, 64

	.type	quant_inter_default,@object     # @quant_inter_default
	.globl	quant_inter_default
	.p2align	4, 0x0
quant_inter_default:
	.long	10                              # 0xa
	.long	14                              # 0xe
	.long	20                              # 0x14
	.long	24                              # 0x18
	.long	14                              # 0xe
	.long	20                              # 0x14
	.long	24                              # 0x18
	.long	27                              # 0x1b
	.long	20                              # 0x14
	.long	24                              # 0x18
	.long	27                              # 0x1b
	.long	30                              # 0x1e
	.long	24                              # 0x18
	.long	27                              # 0x1b
	.long	30                              # 0x1e
	.long	34                              # 0x22
	.size	quant_inter_default, 64

	.type	quant8_intra_default,@object    # @quant8_intra_default
	.globl	quant8_intra_default
	.p2align	4, 0x0
quant8_intra_default:
	.long	6                               # 0x6
	.long	10                              # 0xa
	.long	13                              # 0xd
	.long	16                              # 0x10
	.long	18                              # 0x12
	.long	23                              # 0x17
	.long	25                              # 0x19
	.long	27                              # 0x1b
	.long	10                              # 0xa
	.long	11                              # 0xb
	.long	16                              # 0x10
	.long	18                              # 0x12
	.long	23                              # 0x17
	.long	25                              # 0x19
	.long	27                              # 0x1b
	.long	29                              # 0x1d
	.long	13                              # 0xd
	.long	16                              # 0x10
	.long	18                              # 0x12
	.long	23                              # 0x17
	.long	25                              # 0x19
	.long	27                              # 0x1b
	.long	29                              # 0x1d
	.long	31                              # 0x1f
	.long	16                              # 0x10
	.long	18                              # 0x12
	.long	23                              # 0x17
	.long	25                              # 0x19
	.long	27                              # 0x1b
	.long	29                              # 0x1d
	.long	31                              # 0x1f
	.long	33                              # 0x21
	.long	18                              # 0x12
	.long	23                              # 0x17
	.long	25                              # 0x19
	.long	27                              # 0x1b
	.long	29                              # 0x1d
	.long	31                              # 0x1f
	.long	33                              # 0x21
	.long	36                              # 0x24
	.long	23                              # 0x17
	.long	25                              # 0x19
	.long	27                              # 0x1b
	.long	29                              # 0x1d
	.long	31                              # 0x1f
	.long	33                              # 0x21
	.long	36                              # 0x24
	.long	38                              # 0x26
	.long	25                              # 0x19
	.long	27                              # 0x1b
	.long	29                              # 0x1d
	.long	31                              # 0x1f
	.long	33                              # 0x21
	.long	36                              # 0x24
	.long	38                              # 0x26
	.long	40                              # 0x28
	.long	27                              # 0x1b
	.long	29                              # 0x1d
	.long	31                              # 0x1f
	.long	33                              # 0x21
	.long	36                              # 0x24
	.long	38                              # 0x26
	.long	40                              # 0x28
	.long	42                              # 0x2a
	.size	quant8_intra_default, 256

	.type	quant8_inter_default,@object    # @quant8_inter_default
	.globl	quant8_inter_default
	.p2align	4, 0x0
quant8_inter_default:
	.long	9                               # 0x9
	.long	13                              # 0xd
	.long	15                              # 0xf
	.long	17                              # 0x11
	.long	19                              # 0x13
	.long	21                              # 0x15
	.long	22                              # 0x16
	.long	24                              # 0x18
	.long	13                              # 0xd
	.long	13                              # 0xd
	.long	17                              # 0x11
	.long	19                              # 0x13
	.long	21                              # 0x15
	.long	22                              # 0x16
	.long	24                              # 0x18
	.long	25                              # 0x19
	.long	15                              # 0xf
	.long	17                              # 0x11
	.long	19                              # 0x13
	.long	21                              # 0x15
	.long	22                              # 0x16
	.long	24                              # 0x18
	.long	25                              # 0x19
	.long	27                              # 0x1b
	.long	17                              # 0x11
	.long	19                              # 0x13
	.long	21                              # 0x15
	.long	22                              # 0x16
	.long	24                              # 0x18
	.long	25                              # 0x19
	.long	27                              # 0x1b
	.long	28                              # 0x1c
	.long	19                              # 0x13
	.long	21                              # 0x15
	.long	22                              # 0x16
	.long	24                              # 0x18
	.long	25                              # 0x19
	.long	27                              # 0x1b
	.long	28                              # 0x1c
	.long	30                              # 0x1e
	.long	21                              # 0x15
	.long	22                              # 0x16
	.long	24                              # 0x18
	.long	25                              # 0x19
	.long	27                              # 0x1b
	.long	28                              # 0x1c
	.long	30                              # 0x1e
	.long	32                              # 0x20
	.long	22                              # 0x16
	.long	24                              # 0x18
	.long	25                              # 0x19
	.long	27                              # 0x1b
	.long	28                              # 0x1c
	.long	30                              # 0x1e
	.long	32                              # 0x20
	.long	33                              # 0x21
	.long	24                              # 0x18
	.long	25                              # 0x19
	.long	27                              # 0x1b
	.long	28                              # 0x1c
	.long	30                              # 0x1e
	.long	32                              # 0x20
	.long	33                              # 0x21
	.long	35                              # 0x23
	.size	quant8_inter_default, 256

	.type	quant_org,@object               # @quant_org
	.globl	quant_org
	.p2align	4, 0x0
quant_org:
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.size	quant_org, 64

	.type	quant8_org,@object              # @quant8_org
	.globl	quant8_org
	.p2align	4, 0x0
quant8_org:
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.size	quant8_org, 256

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"init_qp_process: p_Vid->qp_per_matrix"
	.size	.L.str, 38

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"init_qp_process: p_Vid->qp_rem_matrix"
	.size	.L.str.1, 38

	.type	dequant_coef,@object            # @dequant_coef
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
dequant_coef:
	.long	10                              # 0xa
	.long	13                              # 0xd
	.long	10                              # 0xa
	.long	13                              # 0xd
	.long	13                              # 0xd
	.long	16                              # 0x10
	.long	13                              # 0xd
	.long	16                              # 0x10
	.long	10                              # 0xa
	.long	13                              # 0xd
	.long	10                              # 0xa
	.long	13                              # 0xd
	.long	13                              # 0xd
	.long	16                              # 0x10
	.long	13                              # 0xd
	.long	16                              # 0x10
	.long	11                              # 0xb
	.long	14                              # 0xe
	.long	11                              # 0xb
	.long	14                              # 0xe
	.long	14                              # 0xe
	.long	18                              # 0x12
	.long	14                              # 0xe
	.long	18                              # 0x12
	.long	11                              # 0xb
	.long	14                              # 0xe
	.long	11                              # 0xb
	.long	14                              # 0xe
	.long	14                              # 0xe
	.long	18                              # 0x12
	.long	14                              # 0xe
	.long	18                              # 0x12
	.long	13                              # 0xd
	.long	16                              # 0x10
	.long	13                              # 0xd
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	20                              # 0x14
	.long	16                              # 0x10
	.long	20                              # 0x14
	.long	13                              # 0xd
	.long	16                              # 0x10
	.long	13                              # 0xd
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	20                              # 0x14
	.long	16                              # 0x10
	.long	20                              # 0x14
	.long	14                              # 0xe
	.long	18                              # 0x12
	.long	14                              # 0xe
	.long	18                              # 0x12
	.long	18                              # 0x12
	.long	23                              # 0x17
	.long	18                              # 0x12
	.long	23                              # 0x17
	.long	14                              # 0xe
	.long	18                              # 0x12
	.long	14                              # 0xe
	.long	18                              # 0x12
	.long	18                              # 0x12
	.long	23                              # 0x17
	.long	18                              # 0x12
	.long	23                              # 0x17
	.long	16                              # 0x10
	.long	20                              # 0x14
	.long	16                              # 0x10
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	25                              # 0x19
	.long	20                              # 0x14
	.long	25                              # 0x19
	.long	16                              # 0x10
	.long	20                              # 0x14
	.long	16                              # 0x10
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	25                              # 0x19
	.long	20                              # 0x14
	.long	25                              # 0x19
	.long	18                              # 0x12
	.long	23                              # 0x17
	.long	18                              # 0x12
	.long	23                              # 0x17
	.long	23                              # 0x17
	.long	29                              # 0x1d
	.long	23                              # 0x17
	.long	29                              # 0x1d
	.long	18                              # 0x12
	.long	23                              # 0x17
	.long	18                              # 0x12
	.long	23                              # 0x17
	.long	23                              # 0x17
	.long	29                              # 0x1d
	.long	23                              # 0x17
	.long	29                              # 0x1d
	.size	dequant_coef, 384

	.type	dequant_coef8,@object           # @dequant_coef8
	.p2align	4, 0x0
dequant_coef8:
	.long	20                              # 0x14
	.long	19                              # 0x13
	.long	25                              # 0x19
	.long	19                              # 0x13
	.long	20                              # 0x14
	.long	19                              # 0x13
	.long	25                              # 0x19
	.long	19                              # 0x13
	.long	19                              # 0x13
	.long	18                              # 0x12
	.long	24                              # 0x18
	.long	18                              # 0x12
	.long	19                              # 0x13
	.long	18                              # 0x12
	.long	24                              # 0x18
	.long	18                              # 0x12
	.long	25                              # 0x19
	.long	24                              # 0x18
	.long	32                              # 0x20
	.long	24                              # 0x18
	.long	25                              # 0x19
	.long	24                              # 0x18
	.long	32                              # 0x20
	.long	24                              # 0x18
	.long	19                              # 0x13
	.long	18                              # 0x12
	.long	24                              # 0x18
	.long	18                              # 0x12
	.long	19                              # 0x13
	.long	18                              # 0x12
	.long	24                              # 0x18
	.long	18                              # 0x12
	.long	20                              # 0x14
	.long	19                              # 0x13
	.long	25                              # 0x19
	.long	19                              # 0x13
	.long	20                              # 0x14
	.long	19                              # 0x13
	.long	25                              # 0x19
	.long	19                              # 0x13
	.long	19                              # 0x13
	.long	18                              # 0x12
	.long	24                              # 0x18
	.long	18                              # 0x12
	.long	19                              # 0x13
	.long	18                              # 0x12
	.long	24                              # 0x18
	.long	18                              # 0x12
	.long	25                              # 0x19
	.long	24                              # 0x18
	.long	32                              # 0x20
	.long	24                              # 0x18
	.long	25                              # 0x19
	.long	24                              # 0x18
	.long	32                              # 0x20
	.long	24                              # 0x18
	.long	19                              # 0x13
	.long	18                              # 0x12
	.long	24                              # 0x18
	.long	18                              # 0x12
	.long	19                              # 0x13
	.long	18                              # 0x12
	.long	24                              # 0x18
	.long	18                              # 0x12
	.long	22                              # 0x16
	.long	21                              # 0x15
	.long	28                              # 0x1c
	.long	21                              # 0x15
	.long	22                              # 0x16
	.long	21                              # 0x15
	.long	28                              # 0x1c
	.long	21                              # 0x15
	.long	21                              # 0x15
	.long	19                              # 0x13
	.long	26                              # 0x1a
	.long	19                              # 0x13
	.long	21                              # 0x15
	.long	19                              # 0x13
	.long	26                              # 0x1a
	.long	19                              # 0x13
	.long	28                              # 0x1c
	.long	26                              # 0x1a
	.long	35                              # 0x23
	.long	26                              # 0x1a
	.long	28                              # 0x1c
	.long	26                              # 0x1a
	.long	35                              # 0x23
	.long	26                              # 0x1a
	.long	21                              # 0x15
	.long	19                              # 0x13
	.long	26                              # 0x1a
	.long	19                              # 0x13
	.long	21                              # 0x15
	.long	19                              # 0x13
	.long	26                              # 0x1a
	.long	19                              # 0x13
	.long	22                              # 0x16
	.long	21                              # 0x15
	.long	28                              # 0x1c
	.long	21                              # 0x15
	.long	22                              # 0x16
	.long	21                              # 0x15
	.long	28                              # 0x1c
	.long	21                              # 0x15
	.long	21                              # 0x15
	.long	19                              # 0x13
	.long	26                              # 0x1a
	.long	19                              # 0x13
	.long	21                              # 0x15
	.long	19                              # 0x13
	.long	26                              # 0x1a
	.long	19                              # 0x13
	.long	28                              # 0x1c
	.long	26                              # 0x1a
	.long	35                              # 0x23
	.long	26                              # 0x1a
	.long	28                              # 0x1c
	.long	26                              # 0x1a
	.long	35                              # 0x23
	.long	26                              # 0x1a
	.long	21                              # 0x15
	.long	19                              # 0x13
	.long	26                              # 0x1a
	.long	19                              # 0x13
	.long	21                              # 0x15
	.long	19                              # 0x13
	.long	26                              # 0x1a
	.long	19                              # 0x13
	.long	26                              # 0x1a
	.long	24                              # 0x18
	.long	33                              # 0x21
	.long	24                              # 0x18
	.long	26                              # 0x1a
	.long	24                              # 0x18
	.long	33                              # 0x21
	.long	24                              # 0x18
	.long	24                              # 0x18
	.long	23                              # 0x17
	.long	31                              # 0x1f
	.long	23                              # 0x17
	.long	24                              # 0x18
	.long	23                              # 0x17
	.long	31                              # 0x1f
	.long	23                              # 0x17
	.long	33                              # 0x21
	.long	31                              # 0x1f
	.long	42                              # 0x2a
	.long	31                              # 0x1f
	.long	33                              # 0x21
	.long	31                              # 0x1f
	.long	42                              # 0x2a
	.long	31                              # 0x1f
	.long	24                              # 0x18
	.long	23                              # 0x17
	.long	31                              # 0x1f
	.long	23                              # 0x17
	.long	24                              # 0x18
	.long	23                              # 0x17
	.long	31                              # 0x1f
	.long	23                              # 0x17
	.long	26                              # 0x1a
	.long	24                              # 0x18
	.long	33                              # 0x21
	.long	24                              # 0x18
	.long	26                              # 0x1a
	.long	24                              # 0x18
	.long	33                              # 0x21
	.long	24                              # 0x18
	.long	24                              # 0x18
	.long	23                              # 0x17
	.long	31                              # 0x1f
	.long	23                              # 0x17
	.long	24                              # 0x18
	.long	23                              # 0x17
	.long	31                              # 0x1f
	.long	23                              # 0x17
	.long	33                              # 0x21
	.long	31                              # 0x1f
	.long	42                              # 0x2a
	.long	31                              # 0x1f
	.long	33                              # 0x21
	.long	31                              # 0x1f
	.long	42                              # 0x2a
	.long	31                              # 0x1f
	.long	24                              # 0x18
	.long	23                              # 0x17
	.long	31                              # 0x1f
	.long	23                              # 0x17
	.long	24                              # 0x18
	.long	23                              # 0x17
	.long	31                              # 0x1f
	.long	23                              # 0x17
	.long	28                              # 0x1c
	.long	26                              # 0x1a
	.long	35                              # 0x23
	.long	26                              # 0x1a
	.long	28                              # 0x1c
	.long	26                              # 0x1a
	.long	35                              # 0x23
	.long	26                              # 0x1a
	.long	26                              # 0x1a
	.long	25                              # 0x19
	.long	33                              # 0x21
	.long	25                              # 0x19
	.long	26                              # 0x1a
	.long	25                              # 0x19
	.long	33                              # 0x21
	.long	25                              # 0x19
	.long	35                              # 0x23
	.long	33                              # 0x21
	.long	45                              # 0x2d
	.long	33                              # 0x21
	.long	35                              # 0x23
	.long	33                              # 0x21
	.long	45                              # 0x2d
	.long	33                              # 0x21
	.long	26                              # 0x1a
	.long	25                              # 0x19
	.long	33                              # 0x21
	.long	25                              # 0x19
	.long	26                              # 0x1a
	.long	25                              # 0x19
	.long	33                              # 0x21
	.long	25                              # 0x19
	.long	28                              # 0x1c
	.long	26                              # 0x1a
	.long	35                              # 0x23
	.long	26                              # 0x1a
	.long	28                              # 0x1c
	.long	26                              # 0x1a
	.long	35                              # 0x23
	.long	26                              # 0x1a
	.long	26                              # 0x1a
	.long	25                              # 0x19
	.long	33                              # 0x21
	.long	25                              # 0x19
	.long	26                              # 0x1a
	.long	25                              # 0x19
	.long	33                              # 0x21
	.long	25                              # 0x19
	.long	35                              # 0x23
	.long	33                              # 0x21
	.long	45                              # 0x2d
	.long	33                              # 0x21
	.long	35                              # 0x23
	.long	33                              # 0x21
	.long	45                              # 0x2d
	.long	33                              # 0x21
	.long	26                              # 0x1a
	.long	25                              # 0x19
	.long	33                              # 0x21
	.long	25                              # 0x19
	.long	26                              # 0x1a
	.long	25                              # 0x19
	.long	33                              # 0x21
	.long	25                              # 0x19
	.long	32                              # 0x20
	.long	30                              # 0x1e
	.long	40                              # 0x28
	.long	30                              # 0x1e
	.long	32                              # 0x20
	.long	30                              # 0x1e
	.long	40                              # 0x28
	.long	30                              # 0x1e
	.long	30                              # 0x1e
	.long	28                              # 0x1c
	.long	38                              # 0x26
	.long	28                              # 0x1c
	.long	30                              # 0x1e
	.long	28                              # 0x1c
	.long	38                              # 0x26
	.long	28                              # 0x1c
	.long	40                              # 0x28
	.long	38                              # 0x26
	.long	51                              # 0x33
	.long	38                              # 0x26
	.long	40                              # 0x28
	.long	38                              # 0x26
	.long	51                              # 0x33
	.long	38                              # 0x26
	.long	30                              # 0x1e
	.long	28                              # 0x1c
	.long	38                              # 0x26
	.long	28                              # 0x1c
	.long	30                              # 0x1e
	.long	28                              # 0x1c
	.long	38                              # 0x26
	.long	28                              # 0x1c
	.long	32                              # 0x20
	.long	30                              # 0x1e
	.long	40                              # 0x28
	.long	30                              # 0x1e
	.long	32                              # 0x20
	.long	30                              # 0x1e
	.long	40                              # 0x28
	.long	30                              # 0x1e
	.long	30                              # 0x1e
	.long	28                              # 0x1c
	.long	38                              # 0x26
	.long	28                              # 0x1c
	.long	30                              # 0x1e
	.long	28                              # 0x1c
	.long	38                              # 0x26
	.long	28                              # 0x1c
	.long	40                              # 0x28
	.long	38                              # 0x26
	.long	51                              # 0x33
	.long	38                              # 0x26
	.long	40                              # 0x28
	.long	38                              # 0x26
	.long	51                              # 0x33
	.long	38                              # 0x26
	.long	30                              # 0x1e
	.long	28                              # 0x1c
	.long	38                              # 0x26
	.long	28                              # 0x1c
	.long	30                              # 0x1e
	.long	28                              # 0x1c
	.long	38                              # 0x26
	.long	28                              # 0x1c
	.long	36                              # 0x24
	.long	34                              # 0x22
	.long	46                              # 0x2e
	.long	34                              # 0x22
	.long	36                              # 0x24
	.long	34                              # 0x22
	.long	46                              # 0x2e
	.long	34                              # 0x22
	.long	34                              # 0x22
	.long	32                              # 0x20
	.long	43                              # 0x2b
	.long	32                              # 0x20
	.long	34                              # 0x22
	.long	32                              # 0x20
	.long	43                              # 0x2b
	.long	32                              # 0x20
	.long	46                              # 0x2e
	.long	43                              # 0x2b
	.long	58                              # 0x3a
	.long	43                              # 0x2b
	.long	46                              # 0x2e
	.long	43                              # 0x2b
	.long	58                              # 0x3a
	.long	43                              # 0x2b
	.long	34                              # 0x22
	.long	32                              # 0x20
	.long	43                              # 0x2b
	.long	32                              # 0x20
	.long	34                              # 0x22
	.long	32                              # 0x20
	.long	43                              # 0x2b
	.long	32                              # 0x20
	.long	36                              # 0x24
	.long	34                              # 0x22
	.long	46                              # 0x2e
	.long	34                              # 0x22
	.long	36                              # 0x24
	.long	34                              # 0x22
	.long	46                              # 0x2e
	.long	34                              # 0x22
	.long	34                              # 0x22
	.long	32                              # 0x20
	.long	43                              # 0x2b
	.long	32                              # 0x20
	.long	34                              # 0x22
	.long	32                              # 0x20
	.long	43                              # 0x2b
	.long	32                              # 0x20
	.long	46                              # 0x2e
	.long	43                              # 0x2b
	.long	58                              # 0x3a
	.long	43                              # 0x2b
	.long	46                              # 0x2e
	.long	43                              # 0x2b
	.long	58                              # 0x3a
	.long	43                              # 0x2b
	.long	34                              # 0x22
	.long	32                              # 0x20
	.long	43                              # 0x2b
	.long	32                              # 0x20
	.long	34                              # 0x22
	.long	32                              # 0x20
	.long	43                              # 0x2b
	.long	32                              # 0x20
	.size	dequant_coef8, 1536

	.type	.Lswitch.table.assign_quant_params.2,@object # @switch.table.assign_quant_params.2
	.p2align	3, 0x0
.Lswitch.table.assign_quant_params.2:
	.quad	quant8_intra_default
	.quad	quant8_inter_default
	.quad	quant8_intra_default
	.quad	quant8_inter_default
	.quad	quant8_intra_default
	.size	.Lswitch.table.assign_quant_params.2, 40

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
