	.text
	.file	"loop_filter_mbaff.c"
	.globl	set_loop_filter_functions_mbaff # -- Begin function set_loop_filter_functions_mbaff
	.p2align	4, 0x90
	.type	set_loop_filter_functions_mbaff,@function
set_loop_filter_functions_mbaff:        # @set_loop_filter_functions_mbaff
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$GetStrengthVerMBAff, 856760(%rdi)
	movq	$GetStrengthHorMBAff, 856768(%rdi)
	movq	$EdgeLoopLumaVerMBAff, 856776(%rdi)
	movq	$EdgeLoopLumaHorMBAff, 856784(%rdi)
	movq	$EdgeLoopChromaVerMBAff, 856792(%rdi)
	movq	$EdgeLoopChromaHorMBAff, 856800(%rdi)
	retq
.Lfunc_end0:
	.size	set_loop_filter_functions_mbaff, .Lfunc_end0-set_loop_filter_functions_mbaff
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function GetStrengthVerMBAff
	.type	GetStrengthVerMBAff,@function
GetStrengthVerMBAff:                    # @GetStrengthVerMBAff
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
                                        # kill: def $edx killed $edx def $rdx
	movq	%rsi, %r14
	movq	%rdi, %r12
	movq	8(%rsi), %rbp
	movl	248(%r8), %eax
	addl	$-3, %eax
	leal	-1(%rdx), %r13d
	leaq	849124(%rbp), %r15
	cmpl	$1, %eax
	ja	.LBB1_2
# %bb.1:                                # %for.cond.preheader
	xorl	%ebx, %ebx
	cmpl	$1, %edx
	adcb	$3, %bl
	leaq	4(%rsp), %r8
	movq	%r14, %rdi
	movl	%r13d, %esi
	xorl	%edx, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	movq	848888(%rbp), %rax
	movslq	8(%rsp), %rcx
	movl	384(%r14), %edx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	cmpl	384(%rax,%rcx), %edx
	setne	472(%r14)
	movb	%bl, (%r12)
	movq	%r14, %rdi
	movl	%r13d, %esi
	movl	$1, %edx
	movq	%r15, %rcx
	leaq	4(%rsp), %r8
	callq	getAffNeighbour@PLT
	movq	848888(%rbp), %rax
	movslq	8(%rsp), %rcx
	movl	384(%r14), %edx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	cmpl	384(%rax,%rcx), %edx
	setne	472(%r14)
	movb	%bl, 1(%r12)
	movq	%r14, %rdi
	movl	%r13d, %esi
	movl	$2, %edx
	movq	%r15, %rcx
	leaq	4(%rsp), %r8
	callq	getAffNeighbour@PLT
	movq	848888(%rbp), %rax
	movslq	8(%rsp), %rcx
	movl	384(%r14), %edx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	cmpl	384(%rax,%rcx), %edx
	setne	472(%r14)
	movb	%bl, 2(%r12)
	movq	%r14, %rdi
	movl	%r13d, %esi
	movl	$3, %edx
	movq	%r15, %rcx
	leaq	4(%rsp), %r8
	callq	getAffNeighbour@PLT
	movq	848888(%rbp), %rax
	movslq	8(%rsp), %rcx
	movl	384(%r14), %edx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	cmpl	384(%rax,%rcx), %edx
	setne	472(%r14)
	movb	%bl, 3(%r12)
	movq	%r14, %rdi
	movl	%r13d, %esi
	movl	$4, %edx
	movq	%r15, %rcx
	leaq	4(%rsp), %r8
	callq	getAffNeighbour@PLT
	movq	848888(%rbp), %rax
	movslq	8(%rsp), %rcx
	movl	384(%r14), %edx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	cmpl	384(%rax,%rcx), %edx
	setne	472(%r14)
	movb	%bl, 4(%r12)
	movq	%r14, %rdi
	movl	%r13d, %esi
	movl	$5, %edx
	movq	%r15, %rcx
	leaq	4(%rsp), %r8
	callq	getAffNeighbour@PLT
	movq	848888(%rbp), %rax
	movslq	8(%rsp), %rcx
	movl	384(%r14), %edx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	cmpl	384(%rax,%rcx), %edx
	setne	472(%r14)
	movb	%bl, 5(%r12)
	movq	%r14, %rdi
	movl	%r13d, %esi
	movl	$6, %edx
	movq	%r15, %rcx
	leaq	4(%rsp), %r8
	callq	getAffNeighbour@PLT
	movq	848888(%rbp), %rax
	movslq	8(%rsp), %rcx
	movl	384(%r14), %edx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	cmpl	384(%rax,%rcx), %edx
	setne	472(%r14)
	movb	%bl, 6(%r12)
	movq	%r14, %rdi
	movl	%r13d, %esi
	movl	$7, %edx
	movq	%r15, %rcx
	leaq	4(%rsp), %r8
	callq	getAffNeighbour@PLT
	movq	848888(%rbp), %rax
	movslq	8(%rsp), %rcx
	movl	384(%r14), %edx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	cmpl	384(%rax,%rcx), %edx
	setne	472(%r14)
	movb	%bl, 7(%r12)
	movq	%r14, %rdi
	movl	%r13d, %esi
	movl	$8, %edx
	movq	%r15, %rcx
	leaq	4(%rsp), %r8
	callq	getAffNeighbour@PLT
	movq	848888(%rbp), %rax
	movslq	8(%rsp), %rcx
	movl	384(%r14), %edx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	cmpl	384(%rax,%rcx), %edx
	setne	472(%r14)
	movb	%bl, 8(%r12)
	movq	%r14, %rdi
	movl	%r13d, %esi
	movl	$9, %edx
	movq	%r15, %rcx
	leaq	4(%rsp), %r8
	callq	getAffNeighbour@PLT
	movq	848888(%rbp), %rax
	movslq	8(%rsp), %rcx
	movl	384(%r14), %edx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	cmpl	384(%rax,%rcx), %edx
	setne	472(%r14)
	movb	%bl, 9(%r12)
	movq	%r14, %rdi
	movl	%r13d, %esi
	movl	$10, %edx
	movq	%r15, %rcx
	leaq	4(%rsp), %r8
	callq	getAffNeighbour@PLT
	movq	848888(%rbp), %rax
	movslq	8(%rsp), %rcx
	movl	384(%r14), %edx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	cmpl	384(%rax,%rcx), %edx
	setne	472(%r14)
	movb	%bl, 10(%r12)
	movq	%r14, %rdi
	movl	%r13d, %esi
	movl	$11, %edx
	movq	%r15, %rcx
	leaq	4(%rsp), %r8
	callq	getAffNeighbour@PLT
	movq	848888(%rbp), %rax
	movslq	8(%rsp), %rcx
	movl	384(%r14), %edx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	cmpl	384(%rax,%rcx), %edx
	setne	472(%r14)
	movb	%bl, 11(%r12)
	movq	%r14, %rdi
	movl	%r13d, %esi
	movl	$12, %edx
	movq	%r15, %rcx
	leaq	4(%rsp), %r8
	callq	getAffNeighbour@PLT
	movq	848888(%rbp), %rax
	movslq	8(%rsp), %rcx
	movl	384(%r14), %edx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	cmpl	384(%rax,%rcx), %edx
	setne	472(%r14)
	movb	%bl, 12(%r12)
	movq	%r14, %rdi
	movl	%r13d, %esi
	movl	$13, %edx
	movq	%r15, %rcx
	leaq	4(%rsp), %r8
	callq	getAffNeighbour@PLT
	movq	848888(%rbp), %rax
	movslq	8(%rsp), %rcx
	movl	384(%r14), %edx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	cmpl	384(%rax,%rcx), %edx
	setne	472(%r14)
	movb	%bl, 13(%r12)
	movq	%r14, %rdi
	movl	%r13d, %esi
	movl	$14, %edx
	movq	%r15, %rcx
	leaq	4(%rsp), %r8
	callq	getAffNeighbour@PLT
	movq	848888(%rbp), %rax
	movslq	8(%rsp), %rcx
	movl	384(%r14), %edx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	cmpl	384(%rax,%rcx), %edx
	setne	472(%r14)
	movb	%bl, 14(%r12)
	movq	%r14, %rdi
	movl	%r13d, %esi
	movl	$15, %edx
	movq	%r15, %rcx
	leaq	4(%rsp), %r8
	callq	getAffNeighbour@PLT
	movq	848888(%rbp), %rax
	movslq	8(%rsp), %rcx
	movl	384(%r14), %edx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	cmpl	384(%rax,%rcx), %edx
	setne	472(%r14)
	movb	%bl, 15(%r12)
.LBB1_79:                               # %if.end482
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
.LBB1_2:                                # %if.else
	.cfi_def_cfa_offset 128
	movl	%ecx, %ebx
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	%r8, 64(%rsp)                   # 8-byte Spill
	leaq	4(%rsp), %r8
	movq	%r14, %rdi
	movl	%r13d, %esi
	xorl	%edx, %edx
	movq	%r15, 32(%rsp)                  # 8-byte Spill
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	cmpl	$0, 384(%r14)
	movq	%r12, 48(%rsp)                  # 8-byte Spill
	jne	.LBB1_43
# %bb.3:                                # %land.lhs.true
	movslq	8(%rsp), %rax
	imulq	$480, %rax, %r15                # imm = 0x1E0
	addq	848888(%rbp), %r15
	cmpl	$0, 384(%r15)
	je	.LBB1_4
.LBB1_43:                               # %if.else232
	movl	%ebx, (%rsp)                    # 4-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	movl	%eax, %ecx
	shrl	$2, %ecx
	movl	%ecx, 40(%rsp)                  # 4-byte Spill
                                        # kill: def $ecx killed $ecx def $rcx
	andl	$3, %ecx
	xorl	%r15d, %r15d
	cmpl	$1, %eax
	movl	$0, %ebx
	adcb	$3, %bl
	shll	$5, %ecx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	jmp	.LBB1_44
.LBB1_4:                                # %if.then39
	movb	$0, 472(%r14)
	cmpl	$1, 96(%r14)
	movq	24(%rsp), %rcx                  # 8-byte Reload
	je	.LBB1_6
# %bb.5:                                # %lor.lhs.false48
	cmpl	$1, 96(%r15)
	jne	.LBB1_7
.LBB1_6:                                # %if.then52
	xorl	%eax, %eax
	cmpl	$1, %ecx
	adcb	$3, %al
	movzbl	%al, %eax
	movd	%eax, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%r12)
	jmp	.LBB1_79
.LBB1_7:                                # %if.else58
	movl	%ebx, (%rsp)                    # 4-byte Spill
	movl	24(%r14), %edi
	leaq	22(%rsp), %rsi
	movq	%rcx, %rbx
	leaq	20(%rsp), %rdx
	callq	get_mb_block_pos_mbaff@PLT
	movl	%ebx, %eax
	shrl	$2, %eax
	movswl	12(%rsp), %ecx
	shrl	$2, %ecx
	movswq	20(%rsp), %rdx
	shlq	$2, %rdx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movswq	22(%rsp), %rdx
	movl	%eax, %esi
	andl	$3, %esi
	leaq	(%rsi,%rdx,4), %rsi
	movswl	16(%rsp), %edx
	shrl	$2, %edx
	movswq	%dx, %rdi
	xorl	%r9d, %r9d
	movzwl	14(%rsp), %r8d
	shlq	$5, %rsi
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	shlq	$5, %rdi
	xorl	%r10d, %r10d
	jmp	.LBB1_8
.LBB1_67:                               # %lor.rhs422
                                        #   in Loop: Header=BB1_44 Depth=1
	movswl	20(%rax), %edx
	movswl	22(%rax), %eax
	movswl	16(%rcx), %esi
	subl	%esi, %edx
	movl	%edx, %esi
	negl	%esi
	cmovsl	%edx, %esi
	movswl	18(%rcx), %ecx
.LBB1_64:                               # %for.inc478.sink.split
                                        #   in Loop: Header=BB1_44 Depth=1
	cmpw	$4, %si
	setae	%dl
	subl	%ecx, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovsl	%eax, %ecx
	movzwl	%cx, %eax
	cmpl	(%rsp), %eax                    # 4-byte Folded Reload
	setae	%r11b
	orb	%dl, %r11b
.LBB1_77:                               # %for.inc478.sink.split
                                        #   in Loop: Header=BB1_44 Depth=1
	movq	48(%rsp), %r12                  # 8-byte Reload
	movb	%r11b, (%r12,%r15)
	.p2align	4, 0x90
.LBB1_78:                               # %for.inc478
                                        #   in Loop: Header=BB1_44 Depth=1
	incq	%r15
	cmpq	$16, %r15
	je	.LBB1_79
.LBB1_44:                               # %for.body237
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movl	%r13d, %esi
	movl	%r15d, %edx
	movq	32(%rsp), %rcx                  # 8-byte Reload
	leaq	4(%rsp), %r8
	callq	getAffNeighbour@PLT
	movzwl	14(%rsp), %ecx
	movq	848888(%rbp), %rax
	movslq	8(%rsp), %rdx
	imulq	$480, %rdx, %rsi                # imm = 0x1E0
	movl	384(%r14), %edx
	cmpl	384(%rax,%rsi), %edx
	movswl	12(%rsp), %edx
	setne	472(%r14)
	movb	%bl, (%r12,%r15)
	cmpl	$0, 96(%r14)
	jne	.LBB1_78
# %bb.45:                               # %land.lhs.true302
                                        #   in Loop: Header=BB1_44 Depth=1
	addq	%rsi, %rax
	cmpl	$0, 96(%rax)
	jne	.LBB1_78
# %bb.46:                               # %if.then306
                                        #   in Loop: Header=BB1_44 Depth=1
	movl	%r15d, %r12d
	andl	$12, %r12d
	addl	40(%rsp), %r12d                 # 4-byte Folded Reload
	movswl	%r12w, %esi
	cmpl	$63, %esi
	jle	.LBB1_48
# %bb.47:                               #   in Loop: Header=BB1_44 Depth=1
	xorl	%esi, %esi
	movb	$2, %r11b
	testq	%rsi, 288(%r14)
	jne	.LBB1_77
	jmp	.LBB1_50
.LBB1_48:                               # %cond.false.i776
                                        #   in Loop: Header=BB1_44 Depth=1
	movslq	%esi, %rsi
	movq	po2(,%rsi,8), %rsi
	movb	$2, %r11b
	testq	%rsi, 288(%r14)
	jne	.LBB1_77
.LBB1_50:                               # %lor.lhs.false314
                                        #   in Loop: Header=BB1_44 Depth=1
	andl	$-4, %ecx
	sarl	$2, %edx
	addl	%ecx, %edx
	cmpw	$63, %dx
	jle	.LBB1_52
# %bb.51:                               #   in Loop: Header=BB1_44 Depth=1
	xorl	%ecx, %ecx
	testq	%rcx, 288(%rax)
	jne	.LBB1_77
	jmp	.LBB1_54
.LBB1_52:                               # %cond.false.i782
                                        #   in Loop: Header=BB1_44 Depth=1
	movswq	%dx, %rcx
	movq	po2(,%rcx,8), %rcx
	testq	%rcx, 288(%rax)
	jne	.LBB1_77
.LBB1_54:                               # %if.else325
                                        #   in Loop: Header=BB1_44 Depth=1
	movb	$1, %r11b
	cmpb	$0, 472(%r14)
	jne	.LBB1_77
# %bb.55:                               # %if.else331
                                        #   in Loop: Header=BB1_44 Depth=1
	shll	$16, %r12d
	movl	24(%r14), %edi
	leaq	22(%rsp), %rsi
	leaq	20(%rsp), %rdx
	callq	get_mb_block_pos_mbaff@PLT
	movb	$1, %r11b
	movswq	20(%rsp), %rax
	sarl	$18, %r12d
	movslq	%r12d, %rcx
	leaq	(%rcx,%rax,4), %rax
	movswq	22(%rsp), %rdx
	movswl	18(%rsp), %ecx
	shrl	$2, %ecx
	movswl	16(%rsp), %esi
	shrl	$2, %esi
	movq	64(%rsp), %rdi                  # 8-byte Reload
	movq	152(%rdi), %rdi
	movq	(%rdi,%rax,8), %rax
	shlq	$7, %rdx
	addq	24(%rsp), %rdx                  # 8-byte Folded Reload
	movswq	%cx, %rcx
	movq	(%rdi,%rcx,8), %rcx
	movswq	%si, %r8
	shlq	$5, %r8
	movq	(%rax,%rdx), %rsi
	movq	8(%rax,%rdx), %r9
	movq	(%rcx,%r8), %rdi
	movq	8(%rcx,%r8), %r10
	cmpq	%rdi, %rsi
	jne	.LBB1_57
# %bb.56:                               # %if.else331
                                        #   in Loop: Header=BB1_44 Depth=1
	cmpq	%r10, %r9
	je	.LBB1_59
.LBB1_57:                               # %lor.lhs.false382
                                        #   in Loop: Header=BB1_44 Depth=1
	cmpq	%r10, %rsi
	jne	.LBB1_77
# %bb.58:                               # %lor.lhs.false382
                                        #   in Loop: Header=BB1_44 Depth=1
	cmpq	%rdi, %r9
	jne	.LBB1_77
.LBB1_59:                               # %if.then388
                                        #   in Loop: Header=BB1_44 Depth=1
	addq	%rdx, %rax
	addq	%r8, %rcx
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movb	$0, (%rdx,%r15)
	cmpq	%r9, %rsi
	je	.LBB1_68
# %bb.60:                               # %if.then393
                                        #   in Loop: Header=BB1_44 Depth=1
	movswl	16(%rax), %r8d
	movswl	18(%rax), %edx
	cmpq	%rdi, %rsi
	je	.LBB1_61
# %bb.65:                               # %if.else415
                                        #   in Loop: Header=BB1_44 Depth=1
	movswl	20(%rcx), %esi
	subl	%esi, %r8d
	movl	%r8d, %edi
	negl	%edi
	cmovsl	%r8d, %edi
	movswl	22(%rcx), %esi
	subl	%esi, %edx
	movl	%edx, %esi
	negl	%esi
	cmovsl	%edx, %esi
	movb	$1, %r11b
	cmpl	$3, %edi
	ja	.LBB1_77
# %bb.66:                               # %if.else415
                                        #   in Loop: Header=BB1_44 Depth=1
	cmpl	(%rsp), %esi                    # 4-byte Folded Reload
	jl	.LBB1_67
	jmp	.LBB1_77
.LBB1_68:                               # %if.else435
                                        #   in Loop: Header=BB1_44 Depth=1
	movswl	16(%rax), %r8d
	movswl	18(%rax), %edi
	movswl	16(%rcx), %esi
	movl	%r8d, %edx
	subl	%esi, %edx
	movl	%edx, %r10d
	negl	%r10d
	cmovsl	%edx, %r10d
	movswl	18(%rcx), %edx
	movl	%edi, %r11d
	subl	%edx, %r11d
	movl	%r11d, %r9d
	negl	%r9d
	cmovsl	%r11d, %r9d
	cmpw	$3, %r10w
	ja	.LBB1_70
# %bb.69:                               # %if.else435
                                        #   in Loop: Header=BB1_44 Depth=1
	movzwl	%r9w, %r9d
	cmpl	(%rsp), %r9d                    # 4-byte Folded Reload
	jge	.LBB1_70
# %bb.74:                               # %lor.lhs.false442
                                        #   in Loop: Header=BB1_44 Depth=1
	movswl	20(%rax), %r10d
	movswl	22(%rax), %r11d
	movswl	20(%rcx), %r9d
	movswl	22(%rcx), %ecx
	subl	%r9d, %r10d
	movl	%r10d, %r12d
	negl	%r12d
	cmovsl	%r10d, %r12d
	subl	%ecx, %r11d
	movl	%r11d, %r10d
	negl	%r10d
	cmovsl	%r11d, %r10d
	cmpw	$3, %r12w
	ja	.LBB1_71
# %bb.75:                               # %lor.lhs.false442
                                        #   in Loop: Header=BB1_44 Depth=1
	movzwl	%r10w, %r10d
	cmpl	(%rsp), %r10d                   # 4-byte Folded Reload
	jae	.LBB1_71
# %bb.76:                               #   in Loop: Header=BB1_44 Depth=1
	xorl	%r11d, %r11d
	jmp	.LBB1_77
.LBB1_61:                               # %if.then396
                                        #   in Loop: Header=BB1_44 Depth=1
	movswl	16(%rcx), %esi
	subl	%esi, %r8d
	movl	%r8d, %edi
	negl	%edi
	cmovsl	%r8d, %edi
	movswl	18(%rcx), %esi
	subl	%esi, %edx
	movl	%edx, %esi
	negl	%esi
	cmovsl	%edx, %esi
	movb	$1, %r11b
	cmpl	$3, %edi
	ja	.LBB1_77
# %bb.62:                               # %if.then396
                                        #   in Loop: Header=BB1_44 Depth=1
	cmpl	(%rsp), %esi                    # 4-byte Folded Reload
	jge	.LBB1_77
# %bb.63:                               # %lor.rhs403
                                        #   in Loop: Header=BB1_44 Depth=1
	movswl	20(%rax), %edx
	movswl	22(%rax), %eax
	movswl	20(%rcx), %esi
	subl	%esi, %edx
	movl	%edx, %esi
	negl	%esi
	cmovsl	%edx, %esi
	movswl	22(%rcx), %ecx
	jmp	.LBB1_64
.LBB1_70:                               # %if.else435.land.rhs449_crit_edge
                                        #   in Loop: Header=BB1_44 Depth=1
	movswl	20(%rcx), %r9d
	movswl	22(%rcx), %ecx
.LBB1_71:                               # %land.rhs449
                                        #   in Loop: Header=BB1_44 Depth=1
	subl	%r9d, %r8d
	movl	%r8d, %r9d
	negl	%r9d
	cmovsl	%r8d, %r9d
	subl	%ecx, %edi
	movl	%edi, %ecx
	negl	%ecx
	cmovsl	%edi, %ecx
	movb	$1, %r11b
	cmpl	$3, %r9d
	ja	.LBB1_77
# %bb.72:                               # %land.rhs449
                                        #   in Loop: Header=BB1_44 Depth=1
	cmpl	(%rsp), %ecx                    # 4-byte Folded Reload
	jge	.LBB1_77
# %bb.73:                               # %lor.rhs456
                                        #   in Loop: Header=BB1_44 Depth=1
	movswl	20(%rax), %ecx
	subl	%esi, %ecx
	movl	%ecx, %esi
	negl	%esi
	cmovsl	%ecx, %esi
	movswl	22(%rax), %eax
	cmpl	$4, %esi
	setae	%cl
	subl	%edx, %eax
	movl	%eax, %edx
	negl	%edx
	cmovsl	%eax, %edx
	cmpl	(%rsp), %edx                    # 4-byte Folded Reload
	setae	%r11b
	orb	%cl, %r11b
	jmp	.LBB1_77
.LBB1_27:                               # %if.end214
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpw	$4, %bx
	setae	%r11b
	subl	%edx, %r10d
	movl	%r10d, %edx
	negl	%edx
	cmovsl	%r10d, %edx
	movzwl	%dx, %edx
	cmpl	(%rsp), %edx                    # 4-byte Folded Reload
	setae	%r12b
	orb	%r11b, %r12b
.LBB1_41:                               # %if.end214
                                        #   in Loop: Header=BB1_8 Depth=1
	movzbl	%r12b, %r11d
	movq	48(%rsp), %r12                  # 8-byte Reload
	.p2align	4, 0x90
.LBB1_42:                               # %if.end216
                                        #   in Loop: Header=BB1_8 Depth=1
	imull	$16843009, %r11d, %edx          # imm = 0x1010101
	movslq	%r9d, %r10
	movl	%edx, (%r12,%r10)
	addl	$4, %r8d
	movw	%r8w, 14(%rsp)
	addw	$4, 18(%rsp)
	addl	$4, %r10d
	movswl	%r10w, %r9d
	cmpl	$16, %r9d
	jge	.LBB1_79
.LBB1_8:                                # %for.body63
                                        # =>This Inner Loop Header: Depth=1
	andl	$65532, %r10d                   # imm = 0xFFFC
	addl	%eax, %r10d
	movswl	%r10w, %edx
	cmpl	$63, %edx
	jle	.LBB1_10
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=1
	xorl	%edx, %edx
	movl	$2, %r11d
	testq	%rdx, 288(%r14)
	jne	.LBB1_42
	jmp	.LBB1_12
	.p2align	4, 0x90
.LBB1_10:                               # %cond.false.i
                                        #   in Loop: Header=BB1_8 Depth=1
	movslq	%edx, %rdx
	movq	po2(,%rdx,8), %rdx
	movl	$2, %r11d
	testq	%rdx, 288(%r14)
	jne	.LBB1_42
.LBB1_12:                               # %lor.lhs.false82
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	%r8d, %edx
	andl	$-4, %edx
	addl	%ecx, %edx
	cmpw	$63, %dx
	jle	.LBB1_14
# %bb.13:                               #   in Loop: Header=BB1_8 Depth=1
	xorl	%edx, %edx
	testq	%rdx, 288(%r15)
	jne	.LBB1_42
	jmp	.LBB1_16
.LBB1_14:                               # %cond.false.i685
                                        #   in Loop: Header=BB1_8 Depth=1
	movswq	%dx, %rdx
	movq	po2(,%rdx,8), %rdx
	testq	%rdx, 288(%r15)
	jne	.LBB1_42
.LBB1_16:                               # %if.else91
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, 24(%rsp)                    # 4-byte Folded Reload
	je	.LBB1_18
# %bb.17:                               # %land.lhs.true92
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	152(%r14), %edx
	decl	%edx
	xorl	%r11d, %r11d
	cmpw	$2, %dx
	jb	.LBB1_42
.LBB1_18:                               # %if.else102
                                        #   in Loop: Header=BB1_8 Depth=1
	shll	$16, %r10d
	sarl	$18, %r10d
	movslq	%r10d, %rdx
	addq	40(%rsp), %rdx                  # 8-byte Folded Reload
	movswl	18(%rsp), %r11d
	shrl	$2, %r11d
	movq	64(%rsp), %rsi                  # 8-byte Reload
	movq	152(%rsi), %rbx
	movq	(%rbx,%rdx,8), %r10
	movswq	%r11w, %rdx
	movq	(%rbx,%rdx,8), %r11
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	(%r10,%rdx), %rbx
	movq	8(%r10,%rdx), %rdx
	movq	(%r11,%rdi), %r13
	movq	8(%r11,%rdi), %rbp
	cmpq	%r13, %rbx
	jne	.LBB1_20
# %bb.19:                               # %if.else102
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpq	%rbp, %rdx
	je	.LBB1_22
.LBB1_20:                               # %lor.lhs.false137
                                        #   in Loop: Header=BB1_8 Depth=1
	movb	$1, %r12b
	cmpq	%rbp, %rbx
	jne	.LBB1_41
# %bb.21:                               # %lor.lhs.false137
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpq	%r13, %rdx
	jne	.LBB1_41
.LBB1_22:                               # %if.then143
                                        #   in Loop: Header=BB1_8 Depth=1
	addq	32(%rsp), %r10                  # 8-byte Folded Reload
	addq	%rdi, %r11
	cmpq	%rdx, %rbx
	je	.LBB1_31
# %bb.23:                               # %if.then146
                                        #   in Loop: Header=BB1_8 Depth=1
	movswl	16(%r10), %ebp
	movswl	18(%r10), %edx
	cmpq	%r13, %rbx
	je	.LBB1_24
# %bb.28:                               # %if.else163
                                        #   in Loop: Header=BB1_8 Depth=1
	movswl	20(%r11), %ebx
	subl	%ebx, %ebp
	movl	%ebp, %r13d
	negl	%r13d
	cmovsl	%ebp, %r13d
	movswl	22(%r11), %ebx
	subl	%ebx, %edx
	movl	%edx, %ebx
	negl	%ebx
	cmovsl	%edx, %ebx
	movb	$1, %r12b
	cmpl	$3, %r13d
	ja	.LBB1_41
# %bb.29:                               # %if.else163
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	(%rsp), %ebx                    # 4-byte Folded Reload
	jge	.LBB1_41
# %bb.30:                               # %lor.rhs170
                                        #   in Loop: Header=BB1_8 Depth=1
	movswl	20(%r10), %edx
	movswl	22(%r10), %r10d
	movswl	16(%r11), %ebx
	subl	%ebx, %edx
	movl	%edx, %ebx
	negl	%ebx
	cmovsl	%edx, %ebx
	movswl	18(%r11), %edx
	jmp	.LBB1_27
.LBB1_31:                               # %if.else181
                                        #   in Loop: Header=BB1_8 Depth=1
	movswl	16(%r10), %r13d
	movswl	18(%r10), %ebp
	movswl	16(%r11), %esi
	movl	%r13d, %edx
	movl	%esi, 56(%rsp)                  # 4-byte Spill
	subl	%esi, %edx
	movl	%edx, %ebx
	negl	%ebx
	cmovsl	%edx, %ebx
	movswl	18(%r11), %edx
	movl	%ebp, %r12d
	movl	%edx, 60(%rsp)                  # 4-byte Spill
	subl	%edx, %r12d
	movl	%r12d, %edx
	negl	%edx
	cmovsl	%r12d, %edx
	cmpw	$3, %bx
	movl	(%rsp), %ebx                    # 4-byte Reload
	ja	.LBB1_33
# %bb.32:                               # %if.else181
                                        #   in Loop: Header=BB1_8 Depth=1
	movzwl	%dx, %edx
	cmpl	%ebx, %edx
	jge	.LBB1_33
# %bb.37:                               # %lor.lhs.false188
                                        #   in Loop: Header=BB1_8 Depth=1
	movswl	20(%r10), %ebx
	movswl	22(%r10), %r12d
	movswl	20(%r11), %edx
	movswl	22(%r11), %r11d
	subl	%edx, %ebx
	movl	%ebx, %esi
	negl	%esi
	cmovsl	%ebx, %esi
	subl	%r11d, %r12d
	movl	%r12d, %ebx
	negl	%ebx
	cmovsl	%r12d, %ebx
	cmpw	$3, %si
	ja	.LBB1_38
# %bb.39:                               # %lor.lhs.false188
                                        #   in Loop: Header=BB1_8 Depth=1
	movzwl	%bx, %esi
	movl	(%rsp), %ebx                    # 4-byte Reload
	cmpl	%ebx, %esi
	jae	.LBB1_34
# %bb.40:                               #   in Loop: Header=BB1_8 Depth=1
	xorl	%r12d, %r12d
	jmp	.LBB1_41
.LBB1_24:                               # %if.then149
                                        #   in Loop: Header=BB1_8 Depth=1
	movswl	16(%r11), %ebx
	subl	%ebx, %ebp
	movl	%ebp, %r13d
	negl	%r13d
	cmovsl	%ebp, %r13d
	movswl	18(%r11), %ebx
	subl	%ebx, %edx
	movl	%edx, %ebx
	negl	%ebx
	cmovsl	%edx, %ebx
	movb	$1, %r12b
	cmpl	$3, %r13d
	ja	.LBB1_41
# %bb.25:                               # %if.then149
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	(%rsp), %ebx                    # 4-byte Folded Reload
	jge	.LBB1_41
# %bb.26:                               # %lor.rhs
                                        #   in Loop: Header=BB1_8 Depth=1
	movswl	20(%r10), %edx
	movswl	22(%r10), %r10d
	movswl	20(%r11), %ebx
	subl	%ebx, %edx
	movl	%edx, %ebx
	negl	%ebx
	cmovsl	%edx, %ebx
	movswl	22(%r11), %edx
	jmp	.LBB1_27
.LBB1_33:                               # %if.else181.land.rhs_crit_edge
                                        #   in Loop: Header=BB1_8 Depth=1
	movswl	20(%r11), %edx
	movswl	22(%r11), %r11d
.LBB1_34:                               # %land.rhs
                                        #   in Loop: Header=BB1_8 Depth=1
	subl	%edx, %r13d
	movl	%r13d, %esi
	negl	%esi
	cmovsl	%r13d, %esi
	subl	%r11d, %ebp
	movl	%ebp, %edx
	negl	%edx
	cmovsl	%ebp, %edx
	movb	$1, %r12b
	cmpl	$3, %esi
	ja	.LBB1_41
# %bb.35:                               # %land.rhs
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	%ebx, %edx
	jge	.LBB1_41
# %bb.36:                               # %lor.rhs201
                                        #   in Loop: Header=BB1_8 Depth=1
	movswl	20(%r10), %edx
	subl	56(%rsp), %edx                  # 4-byte Folded Reload
	movl	%edx, %esi
	negl	%esi
	cmovsl	%edx, %esi
	movswl	22(%r10), %edx
	cmpl	$4, %esi
	setae	%sil
	subl	60(%rsp), %edx                  # 4-byte Folded Reload
	movl	%edx, %r10d
	negl	%r10d
	cmovsl	%edx, %r10d
	cmpl	(%rsp), %r10d                   # 4-byte Folded Reload
	setae	%r12b
	orb	%sil, %r12b
	jmp	.LBB1_41
.LBB1_38:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%rsp), %ebx                    # 4-byte Reload
	jmp	.LBB1_34
.Lfunc_end1:
	.size	GetStrengthVerMBAff, .Lfunc_end1-GetStrengthVerMBAff
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function GetStrengthHorMBAff
	.type	GetStrengthHorMBAff,@function
GetStrengthHorMBAff:                    # @GetStrengthHorMBAff
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
	movl	%edx, %r12d
	movq	%rsi, %r14
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	cmpl	$16, %edx
	movl	$1, %esi
	cmovll	%edx, %esi
	movq	8(%r14), %rbx
	movl	248(%r8), %eax
	addl	$-3, %eax
	movq	%rsi, 40(%rsp)                  # 8-byte Spill
	leal	-1(%rsi), %edx
	leaq	849124(%rbx), %r9
	cmpl	$1, %eax
	ja	.LBB2_4
# %bb.1:                                # %for.cond.preheader
	movq	%rsp, %r8
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	%edx, %ebp
	movq	%r9, %r13
	movq	%r9, %rcx
	callq	getAffNeighbour@PLT
	movq	848888(%rbx), %rcx
	movslq	4(%rsp), %rdx
	movl	384(%r14), %eax
	imulq	$480, %rdx, %rdx                # imm = 0x1E0
	cmpl	384(%rcx,%rdx), %eax
	setne	472(%r14)
	testl	%r12d, %r12d
	je	.LBB2_3
# %bb.2:                                # %for.body.preheader
	movq	24(%rsp), %r15                  # 8-byte Reload
	movl	$50529027, (%r15)               # imm = 0x3030303
	movq	%rsp, %r12
	movq	%r14, %rdi
	movl	$4, %esi
	movl	%ebp, %edx
	movq	%r13, %rcx
	movq	%r12, %r8
	callq	getAffNeighbour@PLT
	movq	848888(%rbx), %rax
	movslq	4(%rsp), %rcx
	movl	384(%r14), %edx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	cmpl	384(%rax,%rcx), %edx
	setne	472(%r14)
	movl	$50529027, 4(%r15)              # imm = 0x3030303
	movq	%r14, %rdi
	movl	$8, %esi
	movl	%ebp, %edx
	movq	%r13, %rcx
	movq	%r12, %r8
	callq	getAffNeighbour@PLT
	movq	848888(%rbx), %rax
	movslq	4(%rsp), %rcx
	movl	384(%r14), %edx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	cmpl	384(%rax,%rcx), %edx
	setne	472(%r14)
	movl	$50529027, 8(%r15)              # imm = 0x3030303
	movq	%r14, %rdi
	movl	$12, %esi
	movl	%ebp, %edx
	movq	%r13, %rcx
	movq	%r12, %r8
	callq	getAffNeighbour@PLT
	movq	848888(%rbx), %rax
	movslq	4(%rsp), %rcx
	movl	384(%r14), %edx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	cmpl	384(%rax,%rcx), %edx
	setne	472(%r14)
	movl	$50529027, 12(%r15)             # imm = 0x3030303
	jmp	.LBB2_46
.LBB2_4:                                # %if.else
	movl	%ecx, 16(%rsp)                  # 4-byte Spill
	movq	%r8, %r13
	movq	%rsp, %r8
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	%edx, %ebp
	movq	%r9, %r15
	movq	%r9, %rcx
	callq	getAffNeighbour@PLT
	movq	848888(%rbx), %rcx
	movslq	4(%rsp), %rax
	imulq	$480, %rax, %rdx                # imm = 0x1E0
	leaq	(%rcx,%rdx), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movl	96(%r14), %esi
	movl	384(%r14), %eax
	cmpl	384(%rcx,%rdx), %eax
	setne	472(%r14)
	cmpl	$1, %esi
	je	.LBB2_9
# %bb.5:                                # %lor.lhs.false48
	movq	32(%rsp), %rcx                  # 8-byte Reload
	cmpl	$1, 96(%rcx)
	jne	.LBB2_6
.LBB2_9:                                # %if.then52
	movb	$3, %cl
	testl	%r12d, %r12d
	jne	.LBB2_12
# %bb.10:                               # %land.rhs55
	movq	32(%rsp), %rdx                  # 8-byte Reload
	cmpl	$0, 384(%rdx)
	jne	.LBB2_12
# %bb.11:                               # %land.rhs58
	xorl	%ecx, %ecx
	cmpl	$1, %eax
	adcb	$3, %cl
.LBB2_12:                               # %land.end63
	movzbl	%cl, %eax
	movd	%eax, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movq	24(%rsp), %rax                  # 8-byte Reload
	movdqu	%xmm0, (%rax)
	jmp	.LBB2_46
.LBB2_3:                                # %for.body.us.preheader
	addq	%rdx, %rcx
	addq	$384, %rcx                      # imm = 0x180
	orl	(%rcx), %eax
	movl	$67372036, %ecx                 # imm = 0x4040404
	movl	%ebp, %r12d
	movl	$50529027, %ebp                 # imm = 0x3030303
	movl	$50529027, %eax                 # imm = 0x3030303
	cmovel	%ecx, %eax
	movq	24(%rsp), %r15                  # 8-byte Reload
	movl	%eax, (%r15)
	movq	%rsp, %r8
	movq	%r14, %rdi
	movl	$4, %esi
	movl	%r12d, %edx
	movq	%r13, %rcx
	callq	getAffNeighbour@PLT
	movq	848888(%rbx), %rax
	movslq	4(%rsp), %rcx
	movl	384(%r14), %edx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	cmpl	384(%rax,%rcx), %edx
	setne	472(%r14)
	orl	384(%rax,%rcx), %edx
	movl	$50529027, %eax                 # imm = 0x3030303
	movl	$67372036, %ecx                 # imm = 0x4040404
	cmovel	%ecx, %eax
	movl	%eax, 4(%r15)
	movq	%r14, %rdi
	movl	$8, %esi
	movl	%r12d, %edx
	movq	%r13, %rcx
	movq	%rsp, %r8
	callq	getAffNeighbour@PLT
	movq	848888(%rbx), %rax
	movslq	4(%rsp), %rcx
	movl	384(%r14), %edx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	cmpl	384(%rax,%rcx), %edx
	setne	472(%r14)
	orl	384(%rax,%rcx), %edx
	movl	$50529027, %eax                 # imm = 0x3030303
	movl	$67372036, %ecx                 # imm = 0x4040404
	cmovel	%ecx, %eax
	movl	%eax, 8(%r15)
	movq	%r14, %rdi
	movl	$12, %esi
	movl	%r12d, %edx
	movq	%r13, %rcx
	movq	%rsp, %r8
	callq	getAffNeighbour@PLT
	movq	848888(%rbx), %rax
	movslq	4(%rsp), %rcx
	movl	384(%r14), %edx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	cmpl	384(%rax,%rcx), %edx
	setne	472(%r14)
	orl	384(%rax,%rcx), %edx
	movl	$67372036, %eax                 # imm = 0x4040404
	cmovel	%eax, %ebp
	movl	%ebp, 12(%r15)
.LBB2_46:                               # %if.end238
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
.LBB2_6:                                # %for.cond68.preheader
	.cfi_def_cfa_offset 112
	movq	%r13, 48(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
	andl	$65532, %eax                    # imm = 0xFFFC
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	movq	%r15, %rcx
	movl	%ebp, %edx
	jmp	.LBB2_7
.LBB2_29:                               # %if.end225
                                        #   in Loop: Header=BB2_7 Depth=1
	cmpw	$4, %cx
	setae	%cl
	subl	%edx, %eax
	movl	%eax, %edx
	negl	%edx
	cmovsl	%eax, %edx
	movzwl	%dx, %eax
	cmpl	%r15d, %eax
.LBB2_39:                               # %if.end225
                                        #   in Loop: Header=BB2_7 Depth=1
	setae	%r8b
	orb	%cl, %r8b
.LBB2_44:                               # %if.end225
                                        #   in Loop: Header=BB2_7 Depth=1
	movzbl	%r8b, %eax
	.p2align	4, 0x90
.LBB2_45:                               # %if.end227
                                        #   in Loop: Header=BB2_7 Depth=1
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movslq	%r12d, %rcx
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movl	%eax, (%rdx,%rcx)
	shll	$16, %r12d
	movl	%r12d, %ebx
	addl	$262144, %ebx                   # imm = 0x40000
	movl	%ebx, %r12d
	sarl	$16, %r12d
	cmpl	$16, %r12d
	movq	%rbp, %rcx
	movl	%r13d, %edx
	jge	.LBB2_46
.LBB2_7:                                # %for.body72
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movl	%r12d, %esi
	movl	%edx, %r13d
	movq	%rcx, %rbp
	movq	%rsp, %r8
	callq	getAffNeighbour@PLT
	sarl	$18, %ebx
	movq	40(%rsp), %rax                  # 8-byte Reload
	leal	(%rbx,%rax), %r15d
	movswl	%r15w, %eax
	cmpl	$63, %eax
	jle	.LBB2_13
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=1
	xorl	%ecx, %ecx
	movl	$2, %eax
	testq	%rcx, 288(%r14)
	jne	.LBB2_45
	jmp	.LBB2_15
	.p2align	4, 0x90
.LBB2_13:                               # %cond.false.i
                                        #   in Loop: Header=BB2_7 Depth=1
	cltq
	movq	po2(,%rax,8), %rcx
	movl	$2, %eax
	testq	%rcx, 288(%r14)
	jne	.LBB2_45
.LBB2_15:                               # %lor.lhs.false95
                                        #   in Loop: Header=BB2_7 Depth=1
	movzwl	10(%rsp), %ecx
	movswl	8(%rsp), %edx
	sarl	$2, %edx
	andl	$-4, %ecx
	addl	%edx, %ecx
	cmpw	$63, %cx
	jle	.LBB2_17
# %bb.16:                               #   in Loop: Header=BB2_7 Depth=1
	xorl	%ecx, %ecx
	movq	32(%rsp), %rdx                  # 8-byte Reload
	testq	%rcx, 288(%rdx)
	jne	.LBB2_45
	jmp	.LBB2_19
.LBB2_17:                               # %cond.false.i344
                                        #   in Loop: Header=BB2_7 Depth=1
	movswq	%cx, %rcx
	movq	po2(,%rcx,8), %rcx
	movq	32(%rsp), %rdx                  # 8-byte Reload
	testq	%rcx, 288(%rdx)
	jne	.LBB2_45
.LBB2_19:                               # %if.else104
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	$1, %eax
	cmpb	$0, 472(%r14)
	jne	.LBB2_45
# %bb.20:                               # %if.else108
                                        #   in Loop: Header=BB2_7 Depth=1
	shll	$16, %r15d
	movl	24(%r14), %edi
	leaq	22(%rsp), %rsi
	leaq	20(%rsp), %rdx
	callq	get_mb_block_pos_mbaff@PLT
	movzwl	20(%rsp), %eax
	sarl	$18, %r15d
	leal	(%r15,%rax,4), %eax
	movzwl	22(%rsp), %ecx
	andl	$3, %ebx
	leal	(%rbx,%rcx,4), %ecx
	movswl	14(%rsp), %edx
	shrl	$2, %edx
	movswl	12(%rsp), %esi
	shrl	$2, %esi
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movq	152(%rdi), %rdi
	movswq	%ax, %rax
	movq	(%rdi,%rax,8), %rax
	movswq	%cx, %rcx
	shlq	$5, %rcx
	movswq	%dx, %rdx
	movq	(%rdi,%rdx,8), %rdx
	movswq	%si, %rsi
	shlq	$5, %rsi
	movq	(%rax,%rcx), %rdi
	movq	8(%rax,%rcx), %r10
	movq	(%rdx,%rsi), %r9
	movq	8(%rdx,%rsi), %r11
	cmpq	%r9, %rdi
	movl	16(%rsp), %r15d                 # 4-byte Reload
	jne	.LBB2_22
# %bb.21:                               # %if.else108
                                        #   in Loop: Header=BB2_7 Depth=1
	cmpq	%r11, %r10
	je	.LBB2_24
.LBB2_22:                               # %lor.lhs.false146
                                        #   in Loop: Header=BB2_7 Depth=1
	movb	$1, %r8b
	cmpq	%r11, %rdi
	jne	.LBB2_44
# %bb.23:                               # %lor.lhs.false146
                                        #   in Loop: Header=BB2_7 Depth=1
	cmpq	%r9, %r10
	jne	.LBB2_44
.LBB2_24:                               # %if.then152
                                        #   in Loop: Header=BB2_7 Depth=1
	addq	%rsi, %rdx
	cmpq	%r10, %rdi
	je	.LBB2_33
# %bb.25:                               # %if.then155
                                        #   in Loop: Header=BB2_7 Depth=1
	movswl	16(%rax,%rcx), %r8d
	movswl	18(%rax,%rcx), %esi
	cmpq	%r9, %rdi
	je	.LBB2_26
# %bb.30:                               # %if.else172
                                        #   in Loop: Header=BB2_7 Depth=1
	movswl	20(%rdx), %edi
	subl	%edi, %r8d
	movl	%r8d, %r9d
	negl	%r9d
	cmovsl	%r8d, %r9d
	movswl	22(%rdx), %edi
	subl	%edi, %esi
	movl	%esi, %edi
	negl	%edi
	cmovsl	%esi, %edi
	movb	$1, %r8b
	cmpl	$3, %r9d
	ja	.LBB2_44
# %bb.31:                               # %if.else172
                                        #   in Loop: Header=BB2_7 Depth=1
	cmpl	%r15d, %edi
	jge	.LBB2_44
# %bb.32:                               # %lor.rhs179
                                        #   in Loop: Header=BB2_7 Depth=1
	movswl	20(%rax,%rcx), %esi
	movswl	22(%rax,%rcx), %eax
	movswl	16(%rdx), %ecx
	subl	%ecx, %esi
	movl	%esi, %ecx
	negl	%ecx
	cmovsl	%esi, %ecx
	movswl	18(%rdx), %edx
	jmp	.LBB2_29
.LBB2_33:                               # %if.else190
                                        #   in Loop: Header=BB2_7 Depth=1
	movswl	16(%rax,%rcx), %r9d
	movswl	18(%rax,%rcx), %r8d
	movswl	16(%rdx), %edi
	movl	%r9d, %esi
	subl	%edi, %esi
	movl	%esi, %r11d
	negl	%r11d
	cmovsl	%esi, %r11d
	movswl	18(%rdx), %esi
	movl	%r8d, %ebx
	subl	%esi, %ebx
	movl	%ebx, %r10d
	negl	%r10d
	cmovsl	%ebx, %r10d
	cmpw	$3, %r11w
	ja	.LBB2_35
# %bb.34:                               # %if.else190
                                        #   in Loop: Header=BB2_7 Depth=1
	movzwl	%r10w, %r10d
	cmpl	%r15d, %r10d
	jge	.LBB2_35
# %bb.40:                               # %lor.lhs.false197
                                        #   in Loop: Header=BB2_7 Depth=1
	movswl	20(%rax,%rcx), %r11d
	movswl	22(%rax,%rcx), %ebx
	movswl	20(%rdx), %r10d
	movswl	22(%rdx), %edx
	subl	%r10d, %r11d
	movl	%r11d, %r15d
	negl	%r15d
	cmovsl	%r11d, %r15d
	subl	%edx, %ebx
	movl	%ebx, %r11d
	negl	%r11d
	cmovsl	%ebx, %r11d
	cmpw	$3, %r15w
	ja	.LBB2_41
# %bb.42:                               # %lor.lhs.false197
                                        #   in Loop: Header=BB2_7 Depth=1
	movzwl	%r11w, %r11d
	movl	16(%rsp), %r15d                 # 4-byte Reload
	cmpl	%r15d, %r11d
	jae	.LBB2_36
# %bb.43:                               #   in Loop: Header=BB2_7 Depth=1
	xorl	%r8d, %r8d
	jmp	.LBB2_44
.LBB2_26:                               # %if.then158
                                        #   in Loop: Header=BB2_7 Depth=1
	movswl	16(%rdx), %edi
	subl	%edi, %r8d
	movl	%r8d, %r9d
	negl	%r9d
	cmovsl	%r8d, %r9d
	movswl	18(%rdx), %edi
	subl	%edi, %esi
	movl	%esi, %edi
	negl	%edi
	cmovsl	%esi, %edi
	movb	$1, %r8b
	cmpl	$3, %r9d
	ja	.LBB2_44
# %bb.27:                               # %if.then158
                                        #   in Loop: Header=BB2_7 Depth=1
	cmpl	%r15d, %edi
	jge	.LBB2_44
# %bb.28:                               # %lor.rhs
                                        #   in Loop: Header=BB2_7 Depth=1
	movswl	20(%rax,%rcx), %esi
	movswl	22(%rax,%rcx), %eax
	movswl	20(%rdx), %ecx
	subl	%ecx, %esi
	movl	%esi, %ecx
	negl	%ecx
	cmovsl	%esi, %ecx
	movswl	22(%rdx), %edx
	jmp	.LBB2_29
.LBB2_35:                               # %if.else190.land.rhs204_crit_edge
                                        #   in Loop: Header=BB2_7 Depth=1
	movswl	20(%rdx), %r10d
	movswl	22(%rdx), %edx
.LBB2_36:                               # %land.rhs204
                                        #   in Loop: Header=BB2_7 Depth=1
	subl	%r10d, %r9d
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
	subl	%edx, %r8d
	movl	%r8d, %edx
	negl	%edx
	cmovsl	%r8d, %edx
	movb	$1, %r8b
	cmpl	$3, %r10d
	ja	.LBB2_44
# %bb.37:                               # %land.rhs204
                                        #   in Loop: Header=BB2_7 Depth=1
	cmpl	%r15d, %edx
	jge	.LBB2_44
# %bb.38:                               # %lor.rhs211
                                        #   in Loop: Header=BB2_7 Depth=1
	movswl	20(%rax,%rcx), %edx
	subl	%edi, %edx
	movl	%edx, %edi
	negl	%edi
	cmovsl	%edx, %edi
	movswl	22(%rax,%rcx), %eax
	cmpl	$4, %edi
	setae	%cl
	subl	%esi, %eax
	movl	%eax, %edx
	negl	%edx
	cmovsl	%eax, %edx
	cmpl	%r15d, %edx
	jmp	.LBB2_39
.LBB2_41:                               #   in Loop: Header=BB2_7 Depth=1
	movl	16(%rsp), %r15d                 # 4-byte Reload
	jmp	.LBB2_36
.Lfunc_end2:
	.size	GetStrengthHorMBAff, .Lfunc_end2-GetStrengthHorMBAff
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function EdgeLoopLumaVerMBAff
	.type	EdgeLoopLumaVerMBAff,@function
EdgeLoopLumaVerMBAff:                   # @EdgeLoopLumaVerMBAff
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
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
                                        # kill: def $r8d killed $r8d def $r8
	movq	%r8, 96(%rsp)                   # 8-byte Spill
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	%rdx, 168(%rsp)                 # 8-byte Spill
	movq	%rsi, 160(%rsp)                 # 8-byte Spill
	movl	%edi, 28(%rsp)                  # 4-byte Spill
	testl	%edi, %edi
	je	.LBB3_1
# %bb.2:                                # %cond.true
	movslq	268(%r9), %rax
	movl	pelnum_cr(,%rax,4), %eax
	movl	$849048, %ecx                   # imm = 0xCF498
	movq	48(%rsp), %rdx                  # 8-byte Reload
	cmpw	$0, 376(%rdx)
	je	.LBB3_4
	jmp	.LBB3_46
.LBB3_1:
	movl	$16, %eax
	movl	$849044, %ecx                   # imm = 0xCF494
	movq	48(%rsp), %rdx                  # 8-byte Reload
	cmpw	$0, 376(%rdx)
	jne	.LBB3_46
.LBB3_4:                                # %cond.end
	testl	%eax, %eax
	jle	.LBB3_46
# %bb.5:                                # %for.body.lr.ph
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movq	8(%rdi), %rsi
	movl	(%rsi,%rcx), %ecx
	movl	%ecx, 12(%rsp)                  # 4-byte Spill
	movl	28(%rsp), %edx                  # 4-byte Reload
	movl	%edx, %ecx
	movl	849072(%rsi,%rcx,4), %ecx
	movl	%ecx, 64(%rsp)                  # 4-byte Spill
	movswl	378(%rdi), %ecx
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	movswl	380(%rdi), %ecx
	movl	%ecx, 72(%rsp)                  # 4-byte Spill
	movq	96(%rsp), %rcx                  # 8-byte Reload
	decl	%ecx
	movl	%ecx, 76(%rsp)                  # 4-byte Spill
	movq	%rsi, 152(%rsp)                 # 8-byte Spill
	leaq	849124(%rsi), %rcx
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	leaq	68(%rdi), %rcx
                                        # kill: def $edx killed $edx def $rdx
	subl	$1, %edx
	movq	%rdx, 136(%rsp)                 # 8-byte Spill
	leaq	72(%rdi,%rdx,4), %rdx
	movl	%eax, %eax
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	cmovbq	%rcx, %rdx
	movq	%rdx, 128(%rsp)                 # 8-byte Spill
	xorl	%ebp, %ebp
	jmp	.LBB3_6
.LBB3_22:                               # %if.else210
                                        #   in Loop: Header=BB3_6 Depth=1
	addl	%r10d, %esi
	movq	16(%rsp), %rax                  # 8-byte Reload
	leal	(%rsi,%rax,2), %eax
	addl	$2, %eax
	shrl	$2, %eax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movw	%ax, (%rcx,%rdx,2)
	.p2align	4, 0x90
.LBB3_45:                               # %for.inc
                                        #   in Loop: Header=BB3_6 Depth=1
	incq	%rbp
	cmpq	%rbp, 176(%rsp)                 # 8-byte Folded Reload
	je	.LBB3_46
.LBB3_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movl	76(%rsp), %esi                  # 4-byte Reload
	movl	%ebp, %edx
	movq	104(%rsp), %rcx                 # 8-byte Reload
	leaq	112(%rsp), %r8
	callq	getAffNeighbour@PLT
	cmpl	$0, 112(%rsp)
	je	.LBB3_45
# %bb.7:                                # %if.then20
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	168(%rsp), %rax                 # 8-byte Reload
	movzbl	(%rax,%rbp), %r12d
	testq	%r12, %r12
	je	.LBB3_45
# %bb.8:                                # %if.then26
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movq	96(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	movl	%ebp, %edx
	movq	104(%rsp), %rcx                 # 8-byte Reload
	leaq	184(%rsp), %r8
	callq	getAffNeighbour@PLT
	movq	152(%rsp), %rax                 # 8-byte Reload
	movq	848888(%rax), %rax
	movslq	116(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	leaq	(%rax,%rcx), %rdx
	cmpl	$0, 28(%rsp)                    # 4-byte Folded Reload
	leaq	68(%rax,%rcx), %rax
	movq	136(%rsp), %rcx                 # 8-byte Reload
	leaq	72(%rdx,%rcx,4), %rcx
	cmoveq	%rax, %rcx
	movl	(%rcx), %eax
	movq	128(%rsp), %rcx                 # 8-byte Reload
	movl	(%rcx), %ecx
	leal	(%rcx,%rax), %r10d
	incl	%r10d
	sarl	%r10d
	movq	144(%rsp), %rax                 # 8-byte Reload
	leal	(%r10,%rax), %r11d
	testl	%r11d, %r11d
	jg	.LBB3_10
# %bb.9:                                # %if.then26
                                        #   in Loop: Header=BB3_6 Depth=1
	xorl	%r11d, %r11d
.LBB3_10:                               # %if.then26
                                        #   in Loop: Header=BB3_6 Depth=1
	movswq	198(%rsp), %rax
	movq	160(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx,%rax,8), %rbx
	movswq	196(%rsp), %r14
	movswq	126(%rsp), %rdx
	movq	(%rcx,%rdx,8), %r9
	movswq	124(%rsp), %r8
	cmpl	$51, %r11d
	movl	$51, %eax
	cmovgel	%eax, %r11d
	addl	72(%rsp), %r10d                 # 4-byte Folded Reload
	testl	%r10d, %r10d
	jg	.LBB3_12
# %bb.11:                               # %if.then26
                                        #   in Loop: Header=BB3_6 Depth=1
	xorl	%r10d, %r10d
.LBB3_12:                               # %if.then26
                                        #   in Loop: Header=BB3_6 Depth=1
	cmpl	$51, %r10d
	cmovgel	%eax, %r10d
	movzbl	ALPHA_TABLE(%r11), %r13d
	imull	12(%rsp), %r13d                 # 4-byte Folded Reload
	movzwl	(%r9,%r8,2), %edx
	movzwl	(%rbx,%r14,2), %esi
	movl	%esi, %edi
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	subl	%edx, %edi
	movl	%edi, %r15d
	negl	%r15d
	cmovsl	%edi, %r15d
	movzwl	%r15w, %r15d
	cmpl	%r13d, %r15d
	jge	.LBB3_45
# %bb.13:                               # %if.then80
                                        #   in Loop: Header=BB3_6 Depth=1
	movzbl	BETA_TABLE(%r10), %edx
	imull	12(%rsp), %edx                  # 4-byte Folded Reload
	movq	%r8, %r10
	movzwl	2(%rbx,%r14,2), %r8d
	movl	%esi, %ecx
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	subl	%r8d, %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovsl	%ecx, %eax
	cmpl	%edx, %eax
	jge	.LBB3_45
# %bb.14:                               # %land.lhs.true
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	%r9, %r8
	movq	%r10, %r9
	movzwl	-2(%r8,%r10,2), %ecx
	movq	56(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	subl	%ecx, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovsl	%eax, %ecx
	cmpl	%edx, %ecx
	jae	.LBB3_45
# %bb.15:                               # %if.then95
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	%edx, 8(%rsp)                   # 4-byte Spill
	movzwl	-4(%r8,%r9,2), %r10d
	movq	%rbx, 40(%rsp)                  # 8-byte Spill
	movq	%r14, 32(%rsp)                  # 8-byte Spill
	movzwl	4(%rbx,%r14,2), %edx
	movq	56(%rsp), %r14                  # 8-byte Reload
	leal	(%rsi,%r14), %ebx
	cmpl	$4, %r12d
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	jne	.LBB3_23
# %bb.16:                               # %if.then100
                                        #   in Loop: Header=BB3_6 Depth=1
	shrl	$2, %r13d
	addl	$2, %r13d
	cmpl	%r13d, %r15d
	setb	%dil
	movl	%esi, %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovsl	%eax, %ecx
	movl	8(%rsp), %edx                   # 4-byte Reload
	cmpl	%edx, %ecx
	setb	%r11b
	movl	%r14d, %eax
	movq	%r10, %rcx
	subl	%r10d, %eax
	movl	%eax, %r12d
	negl	%r12d
	cmovsl	%eax, %r12d
	cmpl	%r13d, %r15d
	movq	88(%rsp), %r10                  # 8-byte Reload
	jae	.LBB3_19
# %bb.17:                               # %if.then100
                                        #   in Loop: Header=BB3_6 Depth=1
	cmpl	%edx, %r12d
	jae	.LBB3_19
# %bb.18:                               # %if.then126
                                        #   in Loop: Header=BB3_6 Depth=1
	movzwl	-6(%r8,%r9,2), %eax
	movq	%rcx, %r14
	addl	%r14d, %eax
	leal	(%rbx,%r10), %ecx
	leal	(%rcx,%r14), %edx
	leal	(%rdx,%rax,2), %eax
	addl	$4, %eax
	shrl	$3, %eax
	movw	%ax, -4(%r8,%r9,2)
	leal	(%r14,%rcx), %eax
	addl	$2, %eax
	shrl	$2, %eax
	movw	%ax, -2(%r8,%r9,2)
	movq	16(%rsp), %rax                  # 8-byte Reload
	leal	(%rax,%rcx,2), %eax
	leal	(%r14,%rax), %edx
	addl	$4, %edx
	shrl	$3, %edx
	movw	%dx, (%r8,%r9,2)
	andb	%r11b, %dil
	je	.LBB3_22
	jmp	.LBB3_21
.LBB3_23:                               # %if.else222
                                        #   in Loop: Header=BB3_6 Depth=1
	leaq	(%r11,%r11,4), %rax
	addq	$CLIP_TAB, %rax
	movl	%esi, %ecx
	subl	%edx, %ecx
	movl	%ecx, %r15d
	negl	%r15d
	cmovsl	%ecx, %r15d
	xorl	%r11d, %r11d
	movl	8(%rsp), %edx                   # 4-byte Reload
	movl	%r15d, 68(%rsp)                 # 4-byte Spill
	cmpl	%edx, %r15d
	setb	%r11b
	movl	%r14d, %ecx
	subl	%r10d, %ecx
	movl	%ecx, %r15d
	negl	%r15d
	cmovsl	%ecx, %r15d
	movzbl	(%rax,%r12), %r12d
	imull	12(%rsp), %r12d                 # 4-byte Folded Reload
	cmpl	%edx, %r15d
	adcl	%r12d, %r11d
	movl	%r11d, %r13d
	negl	%r13d
	movq	88(%rsp), %rdx                  # 8-byte Reload
	leal	(%rdx,%rdi,4), %edi
	subl	16(%rsp), %edi                  # 4-byte Folded Reload
	addl	$4, %edi
	sarl	$3, %edi
	cmpl	%r13d, %edi
	jg	.LBB3_25
# %bb.24:                               # %if.else222
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	%r13d, %edi
.LBB3_25:                               # %if.else222
                                        #   in Loop: Header=BB3_6 Depth=1
	incl	%ebx
	shrl	%ebx
	cmpl	%r11d, %edi
	cmovll	%edi, %r11d
	movl	8(%rsp), %r13d                  # 4-byte Reload
	cmpl	%r13d, %r15d
	movq	56(%rsp), %rcx                  # 8-byte Reload
	jae	.LBB3_30
# %bb.26:                               # %if.else222
                                        #   in Loop: Header=BB3_6 Depth=1
	testl	%r12d, %r12d
	je	.LBB3_30
# %bb.27:                               # %if.then265
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	%r12d, %r15d
	negl	%r15d
	movl	%ebx, %edi
	subl	%edx, %edi
	subl	%edx, %edi
	addl	%r10d, %edi
	sarl	%edi
	cmpl	%r15d, %edi
	jg	.LBB3_29
# %bb.28:                               # %if.then265
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	%r15d, %edi
.LBB3_29:                               # %if.then265
                                        #   in Loop: Header=BB3_6 Depth=1
	cmpl	%r12d, %edi
	cmovgel	%r12d, %edi
	addl	%edi, %edx
	movw	%dx, -2(%r8,%r9,2)
.LBB3_30:                               # %if.end277
                                        #   in Loop: Header=BB3_6 Depth=1
	testl	%r11d, %r11d
	je	.LBB3_40
# %bb.31:                               # %if.then279
                                        #   in Loop: Header=BB3_6 Depth=1
	addl	%r11d, %ecx
	testl	%ecx, %ecx
	jle	.LBB3_32
# %bb.33:                               # %if.then279
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	64(%rsp), %eax                  # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB3_34
.LBB3_35:                               # %if.then279
                                        #   in Loop: Header=BB3_6 Depth=1
	movw	%cx, (%r8,%r9,2)
	subl	%r11d, %esi
	testl	%esi, %esi
	jle	.LBB3_36
.LBB3_37:                               # %if.then279
                                        #   in Loop: Header=BB3_6 Depth=1
	cmpl	%eax, %esi
	jl	.LBB3_39
.LBB3_38:                               # %if.then279
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	%eax, %esi
.LBB3_39:                               # %if.then279
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movw	%si, (%rax,%rcx,2)
.LBB3_40:                               # %if.end288
                                        #   in Loop: Header=BB3_6 Depth=1
	cmpl	%r13d, 68(%rsp)                 # 4-byte Folded Reload
	jae	.LBB3_45
# %bb.41:                               # %if.end288
                                        #   in Loop: Header=BB3_6 Depth=1
	testl	%r12d, %r12d
	je	.LBB3_45
# %bb.42:                               # %if.then293
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	%r12d, %edx
	negl	%edx
	movq	16(%rsp), %rax                  # 8-byte Reload
	addl	%eax, %eax
	subl	%eax, %ebx
	addl	80(%rsp), %ebx                  # 4-byte Folded Reload
	sarl	%ebx
	cmpl	%edx, %ebx
	jg	.LBB3_44
# %bb.43:                               # %if.then293
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	%edx, %ebx
.LBB3_44:                               # %if.then293
                                        #   in Loop: Header=BB3_6 Depth=1
	cmpl	%r12d, %ebx
	cmovll	%ebx, %r12d
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	32(%rsp), %rcx                  # 8-byte Reload
	addw	%r12w, 2(%rax,%rcx,2)
	jmp	.LBB3_45
.LBB3_19:                               # %if.else
                                        #   in Loop: Header=BB3_6 Depth=1
	leal	(%r14,%r10,2), %eax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	leal	(%rcx,%rax), %edx
	addl	$2, %edx
	shrl	$2, %edx
	movw	%dx, (%r8,%r9,2)
	andb	%r11b, %dil
	je	.LBB3_22
.LBB3_21:                               # %if.then173
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movzwl	6(%rdx,%rsi,2), %eax
	addl	16(%rsp), %ebx                  # 4-byte Folded Reload
	leal	(%r10,%rbx,2), %ecx
	movq	80(%rsp), %rdi                  # 8-byte Reload
	addl	%edi, %ecx
	addl	$4, %ecx
	shrl	$3, %ecx
	movw	%cx, (%rdx,%rsi,2)
	leal	(%rdi,%rbx), %ecx
	addl	$2, %ecx
	shrl	$2, %ecx
	movw	%cx, 2(%rdx,%rsi,2)
	addl	%edi, %eax
	addl	%edi, %ebx
	leal	(%rbx,%rax,2), %eax
	addl	$4, %eax
	shrl	$3, %eax
	movw	%ax, 4(%rdx,%rsi,2)
	jmp	.LBB3_45
.LBB3_32:                               # %if.then279
                                        #   in Loop: Header=BB3_6 Depth=1
	xorl	%ecx, %ecx
	movl	64(%rsp), %eax                  # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB3_35
.LBB3_34:                               # %if.then279
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	%eax, %ecx
	movw	%cx, (%r8,%r9,2)
	subl	%r11d, %esi
	testl	%esi, %esi
	jg	.LBB3_37
.LBB3_36:                               # %if.then279
                                        #   in Loop: Header=BB3_6 Depth=1
	xorl	%esi, %esi
	cmpl	%eax, %esi
	jge	.LBB3_38
	jmp	.LBB3_39
.LBB3_46:                               # %if.end312
	addq	$200, %rsp
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
.Lfunc_end3:
	.size	EdgeLoopLumaVerMBAff, .Lfunc_end3-EdgeLoopLumaVerMBAff
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function EdgeLoopLumaHorMBAff
	.type	EdgeLoopLumaHorMBAff,@function
EdgeLoopLumaHorMBAff:                   # @EdgeLoopLumaHorMBAff
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
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rdx, 144(%rsp)                 # 8-byte Spill
	movq	%rsi, 136(%rsp)                 # 8-byte Spill
	movl	%edi, %ebp
	testl	%edi, %edi
	je	.LBB4_1
# %bb.2:                                # %cond.true
	movslq	268(%r9), %rax
	movl	pelnum_cr+16(,%rax,4), %eax
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	movl	$849048, %eax                   # imm = 0xCF498
	jmp	.LBB4_3
.LBB4_1:
	movl	$16, 8(%rsp)                    # 4-byte Folded Spill
	movl	$849044, %eax                   # imm = 0xCF494
.LBB4_3:                                # %cond.end
	movl	356(%r9), %r13d
	cmpl	$16, %r8d
	movl	$1, %r12d
	cmovll	%r8d, %r12d
	movq	8(%r15), %rbx
	movl	(%rbx,%rax), %eax
	movl	%eax, 32(%rsp)                  # 4-byte Spill
	movl	%ebp, %eax
	movl	849072(%rbx,%rax,4), %eax
	movl	%eax, 60(%rsp)                  # 4-byte Spill
	leal	-1(%r12), %edx
	leaq	849124(%rbx), %rcx
	leaq	88(%rsp), %r8
	movq	%r15, %rdi
	xorl	%esi, %esi
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	callq	getAffNeighbour@PLT
	cmpl	$0, 88(%rsp)
	je	.LBB4_4
.LBB4_5:                                # %if.then
	movq	848888(%rbx), %rdx
	movslq	92(%rsp), %rax
	imulq	$480, %rax, %rsi                # imm = 0x1E0
	leaq	(%rdx,%rsi), %rdi
	cmpl	$0, 384(%rdx,%rsi)
	sete	%r8b
	setne	%r9b
	cmpl	$0, 384(%r15)
	sete	%cl
	setne	%al
	andb	%r9b, %cl
	movl	%r13d, %ebx
	shll	%cl, %ebx
	andb	%r8b, %al
	movl	%eax, %ecx
	shll	%cl, %r13d
	leaq	68(%r15), %rax
	subl	$1, %ebp
	movl	$0, %r8d
	movswl	378(%r15), %r14d
	movswl	380(%r15), %ecx
	leaq	68(%rdx,%rsi), %rdx
	leaq	72(%r15,%rbp,4), %rsi
	cmovbq	%rax, %rsi
	leaq	72(%rdi,%rbp,4), %rax
	cmovbq	%rdx, %rax
	movl	(%rax), %eax
	movl	(%rsi), %edx
	addl	%edx, %eax
	incl	%eax
	sarl	%eax
	addl	%eax, %r14d
	testl	%r14d, %r14d
	cmovlel	%r8d, %r14d
	cmpl	$51, %r14d
	movl	$51, %edx
	cmovgel	%edx, %r14d
	addl	%ecx, %eax
	testl	%eax, %eax
	cmovlel	%r8d, %eax
	cmpl	$51, %eax
	cmovgel	%edx, %eax
	movzbl	ALPHA_TABLE(%r14), %edx
	movl	32(%rsp), %ecx                  # 4-byte Reload
	imull	%ecx, %edx
	movzbl	BETA_TABLE(%rax), %ebp
	imull	%ecx, %ebp
	movl	%ebp, %eax
	movl	%edx, 36(%rsp)                  # 4-byte Spill
	orl	%edx, %eax
	je	.LBB4_37
# %bb.6:                                # %if.then72
	leaq	152(%rsp), %r8
	movq	%r15, %rdi
	xorl	%esi, %esi
	movl	%r12d, %edx
	movq	24(%rsp), %rcx                  # 8-byte Reload
	callq	getAffNeighbour@PLT
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	jle	.LBB4_37
# %bb.7:                                # %for.body.lr.ph
	leaq	(%r14,%r14,4), %rax
	addq	$CLIP_TAB, %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movslq	%r13d, %rax
	negl	%r13d
	movslq	%r13d, %r14
	movslq	%ebx, %rdx
	leal	(%r14,%r14), %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	leal	(%rdx,%rdx), %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	leal	(%rax,%rax,2), %ecx
	negq	%rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movl	36(%rsp), %eax                  # 4-byte Reload
	shrl	$2, %eax
	addl	$2, %eax
	movl	%eax, 56(%rsp)                  # 4-byte Spill
	negl	%ecx
	movslq	%ecx, %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	leal	(%rdx,%rdx,2), %eax
	cltq
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movl	8(%rsp), %r15d                  # 4-byte Reload
	xorl	%r12d, %r12d
	movq	%r14, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB4_8
.LBB4_4:                                # %lor.lhs.false
	cmpw	$0, 376(%r15)
	je	.LBB4_5
.LBB4_37:                               # %if.end362
	addq	$168, %rsp
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
.LBB4_19:                               # %if.else255
                                        #   in Loop: Header=BB4_8 Depth=1
	.cfi_def_cfa_offset 224
	leal	(%r9,%r11,2), %eax
	addl	%ecx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movw	%ax, (%r13)
	.p2align	4, 0x90
.LBB4_36:                               # %if.end356
                                        #   in Loop: Header=BB4_8 Depth=1
	incw	100(%rsp)
	incw	164(%rsp)
	incq	%r12
	cmpq	%r12, %r15
	je	.LBB4_37
.LBB4_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	144(%rsp), %rax                 # 8-byte Reload
	movzbl	(%rax,%r12), %eax
	testq	%rax, %rax
	je	.LBB4_36
# %bb.9:                                # %if.then86
                                        #   in Loop: Header=BB4_8 Depth=1
	movswq	166(%rsp), %rcx
	movq	136(%rsp), %rdx                 # 8-byte Reload
	movq	(%rdx,%rcx,8), %rsi
	movswq	164(%rsp), %r10
	movswq	102(%rsp), %rcx
	movq	(%rdx,%rcx,8), %rcx
	movswq	100(%rsp), %rdx
	movzwl	(%rcx,%rdx,2), %edi
	movzwl	(%rsi,%r10,2), %r9d
	movl	%r9d, %r8d
	subl	%edi, %r8d
	movl	%r8d, %r11d
	negl	%r11d
	cmovsl	%r8d, %r11d
	movzwl	%r11w, %ebx
	cmpl	36(%rsp), %ebx                  # 4-byte Folded Reload
	jge	.LBB4_36
# %bb.10:                               # %if.then103
                                        #   in Loop: Header=BB4_8 Depth=1
	leaq	(%rsi,%r10,2), %r13
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movzwl	(%r13,%rsi,2), %r11d
	movl	%r9d, %esi
	subl	%r11d, %esi
	movl	%esi, %r10d
	negl	%r10d
	cmovsl	%esi, %r10d
	cmpl	%ebp, %r10d
	jge	.LBB4_36
# %bb.11:                               # %land.lhs.true115
                                        #   in Loop: Header=BB4_8 Depth=1
	leaq	(%rcx,%rdx,2), %rsi
	movzwl	(%rsi,%r14,2), %ecx
	movl	%edi, %edx
	subl	%ecx, %edx
	movl	%edx, %r10d
	negl	%r10d
	cmovsl	%edx, %r10d
	cmpl	%ebp, %r10d
	jae	.LBB4_36
# %bb.12:                               # %if.then122
                                        #   in Loop: Header=BB4_8 Depth=1
	movl	%ebp, %r10d
	movq	80(%rsp), %rdx                  # 8-byte Reload
	movzwl	(%rsi,%rdx,2), %ebp
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movzwl	(%r13,%rdx,2), %r14d
	leal	(%r9,%rdi), %edx
	cmpl	$4, %eax
	movq	%r14, 64(%rsp)                  # 8-byte Spill
	jne	.LBB4_20
# %bb.13:                               # %if.then132
                                        #   in Loop: Header=BB4_8 Depth=1
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movl	56(%rsp), %eax                  # 4-byte Reload
	cmpl	%eax, %ebx
	setb	20(%rsp)                        # 1-byte Folded Spill
	movl	%r9d, %edx
	subl	%r14d, %edx
	movl	%edx, %r8d
	negl	%r8d
	cmovsl	%edx, %r8d
	cmpl	%r10d, %r8d
	setb	40(%rsp)                        # 1-byte Folded Spill
	movl	%edi, %r14d
	movq	%rbp, %rdx
	subl	%ebp, %r14d
	movl	%r10d, %ebp
	movl	%r14d, %r8d
	negl	%r8d
	cmovsl	%r14d, %r8d
	cmpl	%eax, %ebx
	jae	.LBB4_16
# %bb.14:                               # %if.then132
                                        #   in Loop: Header=BB4_8 Depth=1
	cmpl	%ebp, %r8d
	jae	.LBB4_16
# %bb.15:                               # %if.then158
                                        #   in Loop: Header=BB4_8 Depth=1
	movq	112(%rsp), %rax                 # 8-byte Reload
	movzwl	(%rsi,%rax,2), %edi
	addl	%edx, %edi
	movq	8(%rsp), %rax                   # 8-byte Reload
	leal	(%rax,%rcx), %r8d
	leal	(%r8,%rdx), %ebx
	leal	(%rbx,%rdi,2), %edi
	addl	$4, %edi
	shrl	$3, %edi
	movq	80(%rsp), %rbx                  # 8-byte Reload
	movw	%di, (%rsi,%rbx,2)
	leal	(%rdx,%r8), %edi
	addl	$2, %edi
	shrl	$2, %edi
	movq	48(%rsp), %r14                  # 8-byte Reload
	movw	%di, (%rsi,%r14,2)
	leal	(%r11,%r8,2), %edi
	addl	%edx, %edi
	addl	$4, %edi
	shrl	$3, %edi
	movw	%di, (%rsi)
	movzbl	40(%rsp), %eax                  # 1-byte Folded Reload
	andb	%al, 20(%rsp)                   # 1-byte Folded Spill
	je	.LBB4_19
	jmp	.LBB4_18
.LBB4_20:                               # %if.else267
                                        #   in Loop: Header=BB4_8 Depth=1
	incl	%edx
	shrl	%edx
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movl	%r9d, %ebx
	subl	%r14d, %ebx
	movl	%ebx, %edx
	negl	%edx
	cmovsl	%ebx, %edx
	xorl	%ebx, %ebx
	movl	%edx, 20(%rsp)                  # 4-byte Spill
	cmpl	%r10d, %edx
	setb	%bl
	movl	%edi, %r14d
	movq	%rbp, 40(%rsp)                  # 8-byte Spill
	subl	%ebp, %r14d
	movl	%r10d, %ebp
	movl	%r14d, %edx
	negl	%edx
	cmovsl	%r14d, %edx
	movq	128(%rsp), %r14                 # 8-byte Reload
	movzbl	(%r14,%rax), %eax
	imull	32(%rsp), %eax                  # 4-byte Folded Reload
	cmpl	%r10d, %edx
	adcl	%eax, %ebx
	movl	%ebx, %r14d
	negl	%r14d
	shll	$2, %r8d
	subl	%r11d, %r8d
	addl	%ecx, %r8d
	addl	$4, %r8d
	sarl	$3, %r8d
	cmpl	%r14d, %r8d
	cmovlel	%r14d, %r8d
	cmpl	%ebx, %r8d
	cmovgel	%ebx, %r8d
	cmpl	%r10d, %edx
	jae	.LBB4_23
# %bb.21:                               # %if.else267
                                        #   in Loop: Header=BB4_8 Depth=1
	testl	%eax, %eax
	je	.LBB4_23
# %bb.22:                               # %if.then310
                                        #   in Loop: Header=BB4_8 Depth=1
	movl	%eax, %edx
	negl	%edx
	addl	%ecx, %ecx
	movq	8(%rsp), %r10                   # 8-byte Reload
	movl	%r10d, %ebx
	subl	%ecx, %ebx
	addl	40(%rsp), %ebx                  # 4-byte Folded Reload
	sarl	%ebx
	cmpl	%edx, %ebx
	cmovlel	%edx, %ebx
	cmpl	%eax, %ebx
	cmovgel	%eax, %ebx
	movq	120(%rsp), %rcx                 # 8-byte Reload
	addw	%bx, (%rsi,%rcx,2)
.LBB4_23:                               # %if.end322
                                        #   in Loop: Header=BB4_8 Depth=1
	testl	%r8d, %r8d
	movq	48(%rsp), %r14                  # 8-byte Reload
	movq	8(%rsp), %rdx                   # 8-byte Reload
	je	.LBB4_33
# %bb.24:                               # %if.then324
                                        #   in Loop: Header=BB4_8 Depth=1
	addl	%r8d, %edi
	testl	%edi, %edi
	jle	.LBB4_25
# %bb.26:                               # %if.then324
                                        #   in Loop: Header=BB4_8 Depth=1
	movl	60(%rsp), %ecx                  # 4-byte Reload
	cmpl	%ecx, %edi
	jge	.LBB4_27
.LBB4_28:                               # %if.then324
                                        #   in Loop: Header=BB4_8 Depth=1
	movw	%di, (%rsi)
	subl	%r8d, %r9d
	testl	%r9d, %r9d
	jle	.LBB4_29
.LBB4_30:                               # %if.then324
                                        #   in Loop: Header=BB4_8 Depth=1
	cmpl	%ecx, %r9d
	jl	.LBB4_32
.LBB4_31:                               # %if.then324
                                        #   in Loop: Header=BB4_8 Depth=1
	movl	%ecx, %r9d
.LBB4_32:                               # %if.then324
                                        #   in Loop: Header=BB4_8 Depth=1
	movw	%r9w, (%r13)
.LBB4_33:                               # %if.end333
                                        #   in Loop: Header=BB4_8 Depth=1
	cmpl	%ebp, 20(%rsp)                  # 4-byte Folded Reload
	jae	.LBB4_36
# %bb.34:                               # %if.end333
                                        #   in Loop: Header=BB4_8 Depth=1
	testl	%eax, %eax
	je	.LBB4_36
# %bb.35:                               # %if.then338
                                        #   in Loop: Header=BB4_8 Depth=1
	movl	%eax, %ecx
	negl	%ecx
	addl	%r11d, %r11d
	subl	%r11d, %edx
	addl	64(%rsp), %edx                  # 4-byte Folded Reload
	sarl	%edx
	cmpl	%ecx, %edx
	cmovlel	%ecx, %edx
	cmpl	%eax, %edx
	cmovgel	%eax, %edx
	movq	24(%rsp), %rax                  # 8-byte Reload
	addw	%dx, (%r13,%rax,2)
	jmp	.LBB4_36
.LBB4_16:                               # %if.else
                                        #   in Loop: Header=BB4_8 Depth=1
	addl	%r11d, %edi
	leal	(%rdi,%rcx,2), %edi
	addl	$2, %edi
	shrl	$2, %edi
	movq	48(%rsp), %r14                  # 8-byte Reload
	movw	%di, (%rsi)
	movzbl	40(%rsp), %eax                  # 1-byte Folded Reload
	andb	%al, 20(%rsp)                   # 1-byte Folded Spill
	je	.LBB4_19
.LBB4_18:                               # %if.then213
                                        #   in Loop: Header=BB4_8 Depth=1
	movq	104(%rsp), %rax                 # 8-byte Reload
	movzwl	(%r13,%rax,2), %eax
	movq	8(%rsp), %rdi                   # 8-byte Reload
	addl	%r11d, %edi
	leal	(%rcx,%rdi,2), %ecx
	movq	64(%rsp), %rsi                  # 8-byte Reload
	addl	%esi, %ecx
	addl	$4, %ecx
	shrl	$3, %ecx
	movw	%cx, (%r13)
	leal	(%rsi,%rdi), %ecx
	addl	$2, %ecx
	shrl	$2, %ecx
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movw	%cx, (%r13,%rdx,2)
	addl	%esi, %eax
	addl	%esi, %edi
	leal	(%rdi,%rax,2), %eax
	addl	$4, %eax
	shrl	$3, %eax
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movw	%ax, (%r13,%rcx,2)
	jmp	.LBB4_36
.LBB4_25:                               # %if.then324
                                        #   in Loop: Header=BB4_8 Depth=1
	xorl	%edi, %edi
	movl	60(%rsp), %ecx                  # 4-byte Reload
	cmpl	%ecx, %edi
	jl	.LBB4_28
.LBB4_27:                               # %if.then324
                                        #   in Loop: Header=BB4_8 Depth=1
	movl	%ecx, %edi
	movw	%di, (%rsi)
	subl	%r8d, %r9d
	testl	%r9d, %r9d
	jg	.LBB4_30
.LBB4_29:                               # %if.then324
                                        #   in Loop: Header=BB4_8 Depth=1
	xorl	%r9d, %r9d
	cmpl	%ecx, %r9d
	jge	.LBB4_31
	jmp	.LBB4_32
.Lfunc_end4:
	.size	EdgeLoopLumaHorMBAff, .Lfunc_end4-EdgeLoopLumaHorMBAff
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function EdgeLoopChromaVerMBAff
	.type	EdgeLoopChromaVerMBAff,@function
EdgeLoopChromaVerMBAff:                 # @EdgeLoopChromaVerMBAff
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
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	%rsi, 72(%rsp)                  # 8-byte Spill
	movq	%rdi, 64(%rsp)                  # 8-byte Spill
	movslq	268(%r9), %rax
	movl	pelnum_cr(,%rax,4), %r12d
	testl	%r12d, %r12d
	jle	.LBB5_32
# %bb.1:                                # %for.body.lr.ph
	movq	%rdx, %r13
	movq	8(%rdx), %rax
	movl	849048(%rax), %ecx
	movl	%ecx, 8(%rsp)                   # 4-byte Spill
	movslq	%r8d, %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movl	849076(%rax,%rcx,4), %ecx
	movl	%ecx, 12(%rsp)                  # 4-byte Spill
	movswl	378(%rdx), %ecx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movswl	380(%rdx), %ecx
	movl	%ecx, 16(%rsp)                  # 4-byte Spill
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	addq	$849132, %rax                   # imm = 0xCF4EC
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	decl	%eax
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	jmp	.LBB5_2
	.p2align	4, 0x90
.LBB5_8:                                # %lor.lhs.false
                                        #   in Loop: Header=BB5_2 Depth=1
	cmpw	$0, 376(%r13)
	je	.LBB5_9
.LBB5_31:                               # %for.inc
                                        #   in Loop: Header=BB5_2 Depth=1
	incl	%r15d
	addl	$2, %ebp
	cmpl	%r15d, %r12d
	je	.LBB5_32
.LBB5_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	movl	%r15d, %edx
	movq	88(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %rcx
	leaq	104(%rsp), %r8
	callq	getAffNeighbour@PLT
	movq	%r13, %rdi
	movl	20(%rsp), %esi                  # 4-byte Reload
	movl	%r15d, %edx
	movq	%rbx, %rcx
	leaq	32(%rsp), %r8
	callq	getAffNeighbour@PLT
	movslq	36(%rsp), %rax
	imulq	$480, %rax, %rax                # imm = 0x1E0
	movq	96(%rsp), %rcx                  # 8-byte Reload
	addq	848888(%rcx), %rax
	movl	%r15d, %ecx
	cmpl	$8, %r12d
	jne	.LBB5_7
# %bb.3:                                # %cond.true
                                        #   in Loop: Header=BB5_2 Depth=1
	cmpl	$0, 384(%r13)
	je	.LBB5_6
# %bb.4:                                # %land.lhs.true
                                        #   in Loop: Header=BB5_2 Depth=1
	cmpl	$0, 384(%rax)
	je	.LBB5_5
.LBB5_6:                                # %cond.false
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	%ebp, %edx
	andl	$-4, %edx
	movl	%r15d, %ecx
	andl	$1, %ecx
	orl	%edx, %ecx
.LBB5_7:                                # %cond.end22
                                        #   in Loop: Header=BB5_2 Depth=1
	cmpl	$0, 32(%rsp)
	je	.LBB5_8
.LBB5_9:                                # %if.then
                                        #   in Loop: Header=BB5_2 Depth=1
	movslq	%ecx, %rcx
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movzbl	(%rdx,%rcx), %ecx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	testq	%rcx, %rcx
	je	.LBB5_31
# %bb.10:                               # %if.then33
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movl	72(%rax,%rcx,4), %eax
	movl	72(%r13,%rcx,4), %ecx
	leal	(%rax,%rcx), %edi
	incl	%edi
	sarl	%edi
	movq	48(%rsp), %rax                  # 8-byte Reload
	leal	(%rdi,%rax), %r8d
	testl	%r8d, %r8d
	jg	.LBB5_12
# %bb.11:                               # %if.then33
                                        #   in Loop: Header=BB5_2 Depth=1
	xorl	%r8d, %r8d
.LBB5_12:                               # %if.then33
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	%r13, %rsi
	movl	%r12d, %r14d
	cmpl	$51, %r8d
	movl	$51, %eax
	cmovgel	%eax, %r8d
	addl	16(%rsp), %edi                  # 4-byte Folded Reload
	testl	%edi, %edi
	jg	.LBB5_14
# %bb.13:                               # %if.then33
                                        #   in Loop: Header=BB5_2 Depth=1
	xorl	%edi, %edi
.LBB5_14:                               # %if.then33
                                        #   in Loop: Header=BB5_2 Depth=1
	movswq	118(%rsp), %rax
	movq	64(%rsp), %rdx                  # 8-byte Reload
	movq	(%rdx,%rax,8), %rcx
	movswq	116(%rsp), %r9
	movswq	46(%rsp), %rax
	movq	(%rdx,%rax,8), %r11
	movswq	44(%rsp), %rbx
	cmpl	$51, %edi
	movl	$51, %eax
	cmovgel	%eax, %edi
	movzbl	ALPHA_TABLE(%r8), %r12d
	imull	8(%rsp), %r12d                  # 4-byte Folded Reload
	movzwl	(%r11,%rbx,2), %edx
	movzwl	(%rcx,%r9,2), %eax
	movl	%eax, %r10d
	subl	%edx, %r10d
	movl	%r10d, %r13d
	negl	%r13d
	cmovsl	%r10d, %r13d
	movzwl	%r13w, %r13d
	cmpl	%r12d, %r13d
	movl	%r14d, %r12d
	movq	%rsi, %r13
	jge	.LBB5_31
# %bb.15:                               # %if.then71
                                        #   in Loop: Header=BB5_2 Depth=1
	leaq	(%rcx,%r9,2), %rcx
	movzbl	BETA_TABLE(%rdi), %edi
	imull	8(%rsp), %edi                   # 4-byte Folded Reload
	movzwl	2(%rcx), %r9d
	movl	%eax, %r12d
	subl	%r9d, %r12d
	movl	%r12d, %r13d
	negl	%r13d
	cmovsl	%r12d, %r13d
	movl	%r14d, %r12d
	cmpl	%edi, %r13d
	movq	%rsi, %r13
	jge	.LBB5_31
# %bb.16:                               # %land.lhs.true81
                                        #   in Loop: Header=BB5_2 Depth=1
	leaq	(%r11,%rbx,2), %rbx
	movzwl	-2(%rbx), %r11d
	movl	%edx, %r12d
	subl	%r11d, %r12d
	movl	%r12d, %r13d
	negl	%r13d
	cmovsl	%r12d, %r13d
	movl	%r14d, %r12d
	cmpl	%edi, %r13d
	movq	%rsi, %r13
	jae	.LBB5_31
# %bb.17:                               # %if.then89
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	80(%rsp), %rsi                  # 8-byte Reload
	cmpl	$4, %esi
	jne	.LBB5_19
# %bb.18:                               # %if.then92
                                        #   in Loop: Header=BB5_2 Depth=1
	leal	(%rax,%r9,2), %eax
	addl	%r11d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movw	%ax, (%rcx)
	addl	%r9d, %edx
	leal	(%rdx,%r11,2), %eax
	addl	$2, %eax
	shrl	$2, %eax
	movq	%rbx, %rcx
	jmp	.LBB5_30
.LBB5_5:                                # %cond.true18
                                        #   in Loop: Header=BB5_2 Depth=1
	leal	(%r15,%r15), %ecx
	cmpl	$0, 32(%rsp)
	jne	.LBB5_9
	jmp	.LBB5_8
.LBB5_19:                               # %if.else
                                        #   in Loop: Header=BB5_2 Depth=1
	leaq	(%r8,%r8,4), %rdi
	addq	$CLIP_TAB, %rdi
	movzbl	(%rdi,%rsi), %edi
	imull	8(%rsp), %edi                   # 4-byte Folded Reload
	leal	(%r11,%r10,4), %esi
	subl	%esi, %r9d
	addl	$-5, %r9d
	sarl	$3, %r9d
	movl	%edi, %r8d
	cmpl	%r9d, %edi
	jl	.LBB5_21
# %bb.20:                               # %if.else
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	%r9d, %r8d
.LBB5_21:                               # %if.else
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	$-2, %esi
	subl	%edi, %esi
	cmpl	%esi, %r8d
	cmovgl	%r8d, %esi
	cmpl	$-1, %esi
	je	.LBB5_31
# %bb.22:                               # %if.then131
                                        #   in Loop: Header=BB5_2 Depth=1
	notl	%esi
	addl	%esi, %edx
	testl	%edx, %edx
	jle	.LBB5_23
# %bb.24:                               # %if.then131
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	12(%rsp), %edi                  # 4-byte Reload
	cmpl	%edi, %edx
	jge	.LBB5_25
.LBB5_26:                               # %if.then131
                                        #   in Loop: Header=BB5_2 Depth=1
	movw	%dx, (%rbx)
	subl	%esi, %eax
	testl	%eax, %eax
	jle	.LBB5_27
.LBB5_28:                               # %if.then131
                                        #   in Loop: Header=BB5_2 Depth=1
	cmpl	%edi, %eax
	jl	.LBB5_30
.LBB5_29:                               # %if.then131
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	%edi, %eax
.LBB5_30:                               # %for.inc.sink.split
                                        #   in Loop: Header=BB5_2 Depth=1
	movw	%ax, (%rcx)
	jmp	.LBB5_31
.LBB5_23:                               # %if.then131
                                        #   in Loop: Header=BB5_2 Depth=1
	xorl	%edx, %edx
	movl	12(%rsp), %edi                  # 4-byte Reload
	cmpl	%edi, %edx
	jl	.LBB5_26
.LBB5_25:                               # %if.then131
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	%edi, %edx
	movw	%dx, (%rbx)
	subl	%esi, %eax
	testl	%eax, %eax
	jg	.LBB5_28
.LBB5_27:                               # %if.then131
                                        #   in Loop: Header=BB5_2 Depth=1
	xorl	%eax, %eax
	cmpl	%edi, %eax
	jge	.LBB5_29
	jmp	.LBB5_30
.LBB5_32:                               # %for.end
	addq	$120, %rsp
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
	.size	EdgeLoopChromaVerMBAff, .Lfunc_end5-EdgeLoopChromaVerMBAff
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function EdgeLoopChromaHorMBAff
	.type	EdgeLoopChromaHorMBAff,@function
EdgeLoopChromaHorMBAff:                 # @EdgeLoopChromaHorMBAff
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
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, 80(%rsp)                  # 8-byte Spill
	movq	%rdi, 72(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %r15
	movslq	268(%r9), %rax
	movl	pelnum_cr+16(,%rax,4), %ebp
	cmpl	$16, %ecx
	movl	$1, %r12d
	cmovll	%ecx, %r12d
	movl	849048(%r15), %eax
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	movslq	%r8d, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movl	849076(%r15,%rax,4), %eax
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	movswl	378(%rdx), %r14d
	movswl	380(%rdx), %eax
	movl	%eax, 16(%rsp)                  # 4-byte Spill
	movl	360(%r9), %eax
	movl	%eax, 24(%rsp)                  # 4-byte Spill
	leal	-1(%r12), %edx
	leaq	849132(%r15), %r13
	leaq	48(%rsp), %r8
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movq	%r13, %rcx
	callq	getAffNeighbour@PLT
	leaq	88(%rsp), %r8
	movq	%rbx, 32(%rsp)                  # 8-byte Spill
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	%r12d, %edx
	movq	%r13, %rcx
	callq	getAffNeighbour@PLT
	movl	24(%rsp), %r10d                 # 4-byte Reload
	cmpl	$0, 48(%rsp)
	je	.LBB6_1
.LBB6_2:                                # %if.then
	movq	848888(%r15), %rdx
	movslq	52(%rsp), %rax
	imulq	$480, %rax, %rdi                # imm = 0x1E0
	cmpl	$0, 384(%rdx,%rdi)
	sete	%r8b
	setne	%sil
	movq	32(%rsp), %r9                   # 8-byte Reload
	cmpl	$0, 384(%r9)
	sete	%cl
	setne	%al
	andb	%sil, %cl
	movl	%r10d, %esi
	shll	%cl, %esi
	addq	%rdi, %rdx
	andb	%r8b, %al
	movl	%eax, %ecx
	shll	%cl, %r10d
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movl	72(%rdx,%rcx,4), %eax
	movl	72(%r9,%rcx,4), %ecx
	addl	%eax, %ecx
	incl	%ecx
	sarl	%ecx
	addl	%ecx, %r14d
	testl	%r14d, %r14d
	movl	$0, %edx
	cmovlel	%edx, %r14d
	cmpl	$51, %r14d
	movl	$51, %eax
	cmovgel	%eax, %r14d
	addl	16(%rsp), %ecx                  # 4-byte Folded Reload
	testl	%ecx, %ecx
	cmovlel	%edx, %ecx
	cmpl	$51, %ecx
	cmovgel	%eax, %ecx
	movzbl	ALPHA_TABLE(%r14), %eax
	movl	4(%rsp), %edx                   # 4-byte Reload
	imull	%edx, %eax
	movzbl	BETA_TABLE(%rcx), %ecx
	imull	%edx, %ecx
	movl	%ecx, %edi
	orl	%eax, %edi
	je	.LBB6_20
# %bb.3:                                # %if.then53
	testl	%ebp, %ebp
	jle	.LBB6_20
# %bb.4:                                # %for.body.lr.ph
	leaq	(%r14,%r14,4), %rdx
	addq	$CLIP_TAB, %rdx
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	movslq	%esi, %rdx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	negl	%r10d
	movslq	%r10d, %rdx
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	jmp	.LBB6_5
.LBB6_1:                                # %lor.lhs.false
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpw	$0, 376(%rax)
	je	.LBB6_2
.LBB6_20:                               # %if.end180
	addq	$104, %rsp
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
.LBB6_15:                               # %if.then123
                                        #   in Loop: Header=BB6_5 Depth=1
	.cfi_def_cfa_offset 160
	leal	(%r8,%rsi,2), %edx
	addl	%r15d, %edx
	addl	$2, %edx
	shrl	$2, %edx
	movw	%dx, (%r13)
	addl	%esi, %r14d
	leal	(%r14,%r15,2), %r8d
	addl	$2, %r8d
	shrl	$2, %r8d
.LBB6_18:                               # %if.end174.sink.split
                                        #   in Loop: Header=BB6_5 Depth=1
	movw	%r8w, (%r9)
	.p2align	4, 0x90
.LBB6_19:                               # %if.end174
                                        #   in Loop: Header=BB6_5 Depth=1
	incw	60(%rsp)
	incw	100(%rsp)
	incl	%r11d
	addl	$2, %r10d
	cmpl	%r11d, %ebp
	je	.LBB6_20
.LBB6_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r11d, %esi
	cmpl	$8, %ebp
	jne	.LBB6_10
# %bb.6:                                # %cond.true61
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	32(%rsp), %rdx                  # 8-byte Reload
	cmpl	$0, 384(%rdx)
	je	.LBB6_9
# %bb.7:                                # %land.lhs.true64
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	24(%rsp), %rdx                  # 8-byte Reload
	cmpl	$0, 384(%rdx)
	je	.LBB6_8
.LBB6_9:                                # %cond.false68
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	%r10d, %r8d
	andl	$-4, %r8d
	movl	%r11d, %esi
	andl	$1, %esi
	orl	%r8d, %esi
	jmp	.LBB6_10
.LBB6_8:                                # %cond.true67
                                        #   in Loop: Header=BB6_5 Depth=1
	leal	(%r11,%r11), %esi
	.p2align	4, 0x90
.LBB6_10:                               # %cond.end75
                                        #   in Loop: Header=BB6_5 Depth=1
	movslq	%esi, %rsi
	movq	80(%rsp), %rdx                  # 8-byte Reload
	movzbl	(%rdx,%rsi), %ebx
	testq	%rbx, %rbx
	je	.LBB6_19
# %bb.11:                               # %if.then82
                                        #   in Loop: Header=BB6_5 Depth=1
	movswq	102(%rsp), %rsi
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movq	(%rdx,%rsi,8), %rsi
	movswq	100(%rsp), %r13
	movswq	62(%rsp), %r8
	movq	(%rdx,%r8,8), %r9
	movswq	60(%rsp), %r15
	movzwl	(%r9,%r15,2), %r14d
	movzwl	(%rsi,%r13,2), %r8d
	movl	%r8d, %r12d
	subl	%r14d, %r12d
	movl	%r12d, %edi
	negl	%edi
	cmovsl	%r12d, %edi
	movzwl	%di, %edi
	cmpl	%eax, %edi
	jge	.LBB6_19
# %bb.12:                               # %if.then99
                                        #   in Loop: Header=BB6_5 Depth=1
	leaq	(%rsi,%r13,2), %r13
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movzwl	(%r13,%rdx,2), %esi
	movl	%r8d, %edx
	subl	%esi, %edx
	movl	%edx, %edi
	negl	%edi
	cmovsl	%edx, %edi
	cmpl	%ecx, %edi
	jge	.LBB6_19
# %bb.13:                               # %land.lhs.true112
                                        #   in Loop: Header=BB6_5 Depth=1
	leaq	(%r9,%r15,2), %r9
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movzwl	(%r9,%rdx,2), %r15d
	movl	%r14d, %edx
	subl	%r15d, %edx
	movl	%edx, %edi
	negl	%edi
	cmovsl	%edx, %edi
	cmpl	%ecx, %edi
	jae	.LBB6_19
# %bb.14:                               # %if.then120
                                        #   in Loop: Header=BB6_5 Depth=1
	cmpl	$4, %ebx
	je	.LBB6_15
# %bb.16:                               # %if.else
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	64(%rsp), %rdx                  # 8-byte Reload
	movzbl	(%rdx,%rbx), %edx
	imull	4(%rsp), %edx                   # 4-byte Folded Reload
	leal	(%r15,%r12,4), %edi
	subl	%edi, %esi
	addl	$-5, %esi
	sarl	$3, %esi
	cmpl	%esi, %edx
	cmovll	%edx, %esi
	movl	$-2, %ebx
	subl	%edx, %ebx
	cmpl	%ebx, %esi
	cmovgl	%esi, %ebx
	cmpl	$-1, %ebx
	je	.LBB6_19
# %bb.17:                               # %if.then162
                                        #   in Loop: Header=BB6_5 Depth=1
	notl	%ebx
	addl	%ebx, %r14d
	testl	%r14d, %r14d
	movl	$0, %esi
	cmovlel	%esi, %r14d
	movl	44(%rsp), %edx                  # 4-byte Reload
	cmpl	%edx, %r14d
	cmovgel	%edx, %r14d
	movw	%r14w, (%r9)
	subl	%ebx, %r8d
	testl	%r8d, %r8d
	cmovlel	%esi, %r8d
	cmpl	%edx, %r8d
	cmovgel	%edx, %r8d
	movq	%r13, %r9
	jmp	.LBB6_18
.Lfunc_end6:
	.size	EdgeLoopChromaHorMBAff, .Lfunc_end6-EdgeLoopChromaHorMBAff
	.cfi_endproc
                                        # -- End function
	.globl	get_non_aff_neighbor_luma       # -- Begin function get_non_aff_neighbor_luma
	.p2align	4, 0x90
	.type	get_non_aff_neighbor_luma,@function
get_non_aff_neighbor_luma:              # @get_non_aff_neighbor_luma
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, %rax
	testl	%esi, %esi
	js	.LBB7_1
# %bb.2:                                # %if.else
	testl	%edx, %edx
	js	.LBB7_3
# %bb.5:                                # %return
	retq
.LBB7_1:
	movl	$144, %ecx
	movq	(%rax,%rcx), %rax
	retq
.LBB7_3:
	movl	$136, %ecx
	movq	(%rax,%rcx), %rax
	retq
.Lfunc_end7:
	.size	get_non_aff_neighbor_luma, .Lfunc_end7-get_non_aff_neighbor_luma
	.cfi_endproc
                                        # -- End function
	.globl	get_non_aff_neighbor_chroma     # -- Begin function get_non_aff_neighbor_chroma
	.p2align	4, 0x90
	.type	get_non_aff_neighbor_chroma,@function
get_non_aff_neighbor_chroma:            # @get_non_aff_neighbor_chroma
	.cfi_startproc
# %bb.0:                                # %entry
	testl	%esi, %esi
	js	.LBB8_4
# %bb.1:                                # %if.else3
	cmpl	%ecx, %esi
	jge	.LBB8_7
# %bb.2:                                # %if.then5
	testl	%edx, %edx
	js	.LBB8_8
# %bb.3:                                # %if.else8
	xorl	%eax, %eax
	cmpl	%r8d, %edx
	cmovlq	%rdi, %rax
	retq
.LBB8_4:                                # %if.then
	cmpl	%r8d, %edx
	jge	.LBB8_7
# %bb.5:                                # %if.then2
	movq	144(%rdi), %rax
	retq
.LBB8_7:
	xorl	%eax, %eax
	retq
.LBB8_8:                                # %if.then7
	movq	136(%rdi), %rax
	retq
.Lfunc_end8:
	.size	get_non_aff_neighbor_chroma, .Lfunc_end8-get_non_aff_neighbor_chroma
	.cfi_endproc
                                        # -- End function
	.type	po2,@object                     # @po2
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
po2:
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	32                              # 0x20
	.quad	64                              # 0x40
	.quad	128                             # 0x80
	.quad	256                             # 0x100
	.quad	512                             # 0x200
	.quad	1024                            # 0x400
	.quad	2048                            # 0x800
	.quad	4096                            # 0x1000
	.quad	8192                            # 0x2000
	.quad	16384                           # 0x4000
	.quad	32768                           # 0x8000
	.quad	65536                           # 0x10000
	.quad	131072                          # 0x20000
	.quad	262144                          # 0x40000
	.quad	524288                          # 0x80000
	.quad	1048576                         # 0x100000
	.quad	2097152                         # 0x200000
	.quad	4194304                         # 0x400000
	.quad	8388608                         # 0x800000
	.quad	16777216                        # 0x1000000
	.quad	33554432                        # 0x2000000
	.quad	67108864                        # 0x4000000
	.quad	134217728                       # 0x8000000
	.quad	268435456                       # 0x10000000
	.quad	536870912                       # 0x20000000
	.quad	1073741824                      # 0x40000000
	.quad	2147483648                      # 0x80000000
	.quad	4294967296                      # 0x100000000
	.quad	8589934592                      # 0x200000000
	.quad	17179869184                     # 0x400000000
	.quad	34359738368                     # 0x800000000
	.quad	68719476736                     # 0x1000000000
	.quad	137438953472                    # 0x2000000000
	.quad	274877906944                    # 0x4000000000
	.quad	549755813888                    # 0x8000000000
	.quad	1099511627776                   # 0x10000000000
	.quad	2199023255552                   # 0x20000000000
	.quad	4398046511104                   # 0x40000000000
	.quad	8796093022208                   # 0x80000000000
	.quad	17592186044416                  # 0x100000000000
	.quad	35184372088832                  # 0x200000000000
	.quad	70368744177664                  # 0x400000000000
	.quad	140737488355328                 # 0x800000000000
	.quad	281474976710656                 # 0x1000000000000
	.quad	562949953421312                 # 0x2000000000000
	.quad	1125899906842624                # 0x4000000000000
	.quad	2251799813685248                # 0x8000000000000
	.quad	4503599627370496                # 0x10000000000000
	.quad	9007199254740992                # 0x20000000000000
	.quad	18014398509481984               # 0x40000000000000
	.quad	36028797018963968               # 0x80000000000000
	.quad	72057594037927936               # 0x100000000000000
	.quad	144115188075855872              # 0x200000000000000
	.quad	288230376151711744              # 0x400000000000000
	.quad	576460752303423488              # 0x800000000000000
	.quad	1152921504606846976             # 0x1000000000000000
	.quad	2305843009213693952             # 0x2000000000000000
	.quad	4611686018427387904             # 0x4000000000000000
	.quad	-9223372036854775808            # 0x8000000000000000
	.size	po2, 512

	.type	pelnum_cr,@object               # @pelnum_cr
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0
pelnum_cr:
	.long	0                               # 0x0
	.long	8                               # 0x8
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	0                               # 0x0
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	16                              # 0x10
	.size	pelnum_cr, 32

	.type	ALPHA_TABLE,@object             # @ALPHA_TABLE
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
ALPHA_TABLE:
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\004\005\006\007\b\t\n\f\r\017\021\024\026\031\034 $(-28?GPZeq\177\220\242\266\313\342\377\377"
	.size	ALPHA_TABLE, 52

	.type	BETA_TABLE,@object              # @BETA_TABLE
	.p2align	4, 0x0
BETA_TABLE:
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\002\002\003\003\003\003\004\004\004\006\006\007\007\b\b\t\t\n\n\013\013\f\f\r\r\016\016\017\017\020\020\021\021\022\022"
	.size	BETA_TABLE, 52

	.type	CLIP_TAB,@object                # @CLIP_TAB
	.p2align	4, 0x0
CLIP_TAB:
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.ascii	"\000\000\000\001\001"
	.ascii	"\000\000\000\001\001"
	.ascii	"\000\000\000\001\001"
	.ascii	"\000\000\000\001\001"
	.ascii	"\000\000\001\001\001"
	.ascii	"\000\000\001\001\001"
	.ascii	"\000\001\001\001\001"
	.ascii	"\000\001\001\001\001"
	.ascii	"\000\001\001\001\001"
	.ascii	"\000\001\001\001\001"
	.ascii	"\000\001\001\002\002"
	.ascii	"\000\001\001\002\002"
	.ascii	"\000\001\001\002\002"
	.ascii	"\000\001\001\002\002"
	.ascii	"\000\001\002\003\003"
	.ascii	"\000\001\002\003\003"
	.ascii	"\000\002\002\003\003"
	.ascii	"\000\002\002\004\004"
	.ascii	"\000\002\003\004\004"
	.ascii	"\000\002\003\004\004"
	.ascii	"\000\003\003\005\005"
	.ascii	"\000\003\004\006\006"
	.ascii	"\000\003\004\006\006"
	.ascii	"\000\004\005\007\007"
	.ascii	"\000\004\005\b\b"
	.ascii	"\000\004\006\t\t"
	.ascii	"\000\005\007\n\n"
	.ascii	"\000\006\b\013\013"
	.ascii	"\000\006\b\r\r"
	.ascii	"\000\007\n\016\016"
	.ascii	"\000\b\013\020\020"
	.ascii	"\000\t\f\022\022"
	.ascii	"\000\n\r\024\024"
	.ascii	"\000\013\017\027\027"
	.ascii	"\000\r\021\031\031"
	.size	CLIP_TAB, 260

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
