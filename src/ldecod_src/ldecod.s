	.text
	.file	"ldecod.c"
	.globl	error                           # -- Begin function error
	.p2align	4, 0x90
	.type	error,@function
error:                                  # @error
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%esi, %ebx
	movq	%rdi, %rdx
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str, %esi
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	%ebx, %edi
	callq	exit@PLT
.Lfunc_end0:
	.size	error, .Lfunc_end0-error
	.cfi_endproc
                                        # -- End function
	.globl	FreeDecPicList                  # -- Begin function FreeDecPicList
	.p2align	4, 0x90
	.type	FreeDecPicList,@function
FreeDecPicList:                         # @FreeDecPicList
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB1_6
# %bb.1:                                # %while.body.preheader
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_4:                                # %if.end
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%rbx, %rdi
	callq	free@PLT
	movq	%r14, %rbx
	testq	%r14, %r14
	je	.LBB1_5
.LBB1_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rbx), %rdi
	movq	72(%rbx), %r14
	testq	%rdi, %rdi
	je	.LBB1_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB1_2 Depth=1
	callq	free@PLT
	jmp	.LBB1_4
.LBB1_5:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
.LBB1_6:                                # %while.end
	retq
.Lfunc_end1:
	.size	FreeDecPicList, .Lfunc_end1-FreeDecPicList
	.cfi_endproc
                                        # -- End function
	.globl	init_frext                      # -- Begin function init_frext
	.p2align	4, 0x90
	.type	init_frext,@function
init_frext:                             # @init_frext
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movzwl	849040(%rdi), %ecx
	movswl	%cx, %edx
	leal	(%rdx,%rdx,2), %eax
	leal	-48(%rax,%rax), %eax
	movl	%eax, 849052(%rdi)
	movswl	849042(%rdi), %eax
	movq	16(%rdi), %rsi
	cmpw	%ax, %dx
	jg	.LBB2_2
# %bb.1:                                # %lor.lhs.false
	cmpl	$0, 36(%rsi)
	cmovnel	%eax, %ecx
.LBB2_2:                                # %if.end
	xorl	%edi, %edi
	cmpw	$9, %cx
	setge	%dil
	leal	8(,%rdi,8), %ecx
	movl	%ecx, 849036(%rbx)
	leal	-1(%rdx), %ecx
	movl	$1, %edi
	movl	$1, %r8d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r8d
	movl	$-1, %r9d
	movl	%edx, %ecx
	shll	%cl, %r9d
	movl	%r8d, 849060(%rbx)
	movl	$-1, %edx
	notl	%r9d
	movl	%r9d, 849072(%rbx)
	movabsq	$68719476752, %rcx              # imm = 0x1000000010
	movq	%rcx, 849124(%rbx)
	cmpl	$0, 36(%rsi)
	je	.LBB2_4
# %bb.3:                                # %if.then34
	leal	(%rax,%rax,2), %r8d
	leal	-1(%rax), %ecx
	movl	$1, %r9d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r9d
	leal	-48(,%r8,2), %ecx
	movl	%ecx, 849056(%rbx)
	movl	%r9d, 849064(%rbx)
	movl	%r9d, 849068(%rbx)
	movl	%eax, %ecx
	shll	%cl, %edx
	notl	%edx
	movl	%edx, 849076(%rbx)
	movl	%edx, 849080(%rbx)
	movzbl	36(%rsi), %ecx
	shll	%cl, %edi
	movl	%edi, %eax
	andl	$-2, %eax
	movl	%eax, 849096(%rbx)
	sarl	%edi
	movl	%edi, 849100(%rbx)
	addl	%eax, %eax
	movl	%eax, 849104(%rbx)
	movl	36(%rsi), %eax
	decl	%eax
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	cmpl	$2, %eax
	setb	%dil
	setae	%cl
	leal	8(,%rcx,8), %eax
	movl	%eax, 849108(%rbx)
	movl	%eax, 849140(%rbx)
	movl	%eax, 849132(%rbx)
	movl	36(%rsi), %ecx
	andl	$-2, %ecx
	xorl	%esi, %esi
	xorl	%edx, %edx
	cmpl	$2, %ecx
	setne	%sil
	sete	%dl
	leal	8(,%rdx,8), %ecx
	movl	%ecx, 849112(%rbx)
	movl	%ecx, 849144(%rbx)
	movl	%ecx, 849136(%rbx)
	leal	3(,%rdi,4), %r8d
	movl	%r8d, 849196(%rbx)
	leal	3(,%rsi,4), %esi
	movl	%esi, 849200(%rbx)
	xorl	$3, %edx
	leal	(%rdx,%rdi), %esi
	addl	$2, %esi
                                        # kill: def $edi killed $edi killed $rdi
	orl	$2, %edi
	shrl	$2, %eax
	shrl	$2, %ecx
	jmp	.LBB2_5
.LBB2_4:                                # %if.else117
	movl	$0, 849056(%rbx)
	movq	$0, 849076(%rbx)
	movq	$0, 849196(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 849096(%rbx)
	movl	$0, 849112(%rbx)
	movups	%xmm0, 849132(%rbx)
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	xorl	%edi, %edi
	xorl	%edx, %edx
	xorl	%esi, %esi
.LBB2_5:                                # %if.end145
	movl	%edi, 849204(%rbx)
	movl	%edx, 849208(%rbx)
	movl	%esi, 849212(%rbx)
	movabsq	$17179869188, %rdx              # imm = 0x400000004
	movq	%rdx, 849148(%rbx)
	movl	%eax, 849164(%rbx)
	movl	%eax, 849156(%rbx)
	movl	%ecx, 849168(%rbx)
	movl	%ecx, 849160(%rbx)
	movl	$16, %edi
	callq	CeilLog2_sf@PLT
	movl	%eax, 849176(%rbx)
	movl	%eax, 849172(%rbx)
	movl	849132(%rbx), %edi
	callq	CeilLog2_sf@PLT
	movl	%eax, 849188(%rbx)
	movl	%eax, 849180(%rbx)
	movl	849136(%rbx), %edi
	callq	CeilLog2_sf@PLT
	movl	%eax, 849192(%rbx)
	movl	%eax, 849184(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	init_frext, .Lfunc_end2-init_frext
	.cfi_endproc
                                        # -- End function
	.globl	AllocPartition                  # -- Begin function AllocPartition
	.p2align	4, 0x90
	.type	AllocPartition,@function
AllocPartition:                         # @AllocPartition
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
	movl	%edi, %ebp
	movslq	%edi, %rdi
	movl	$48, %esi
	callq	calloc@PLT
	testq	%rax, %rax
	je	.LBB3_3
# %bb.1:                                # %for.cond.preheader
	movq	%rax, %rbx
	testl	%ebp, %ebp
	jle	.LBB3_11
# %bb.2:                                # %for.body.preheader
	movl	%ebp, %eax
	shlq	$4, %rax
	leaq	(%rax,%rax,2), %r15
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB3_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %edi
	movl	$32, %esi
	callq	calloc@PLT
	movq	%rax, (%rbx,%r12)
	testq	%rax, %rax
	je	.LBB3_8
# %bb.9:                                # %if.end11
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	%rax, %r14
	movl	$8000000, %edi                  # imm = 0x7A1200
	movl	$1, %esi
	callq	calloc@PLT
	movq	%rax, 16(%r14)
	testq	%rax, %rax
	je	.LBB3_10
# %bb.6:                                # %for.cond
                                        #   in Loop: Header=BB3_7 Depth=1
	addq	$48, %r12
	cmpq	%r12, %r15
	jne	.LBB3_7
.LBB3_11:                               # %for.end
	movq	%rbx, %rax
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
.LBB3_8:                                # %if.then9
	.cfi_def_cfa_offset 48
	movups	.L.str.2+32(%rip), %xmm0
	movaps	%xmm0, errortext+32(%rip)
	movups	.L.str.2+16(%rip), %xmm0
	movaps	%xmm0, errortext+16(%rip)
	movups	.L.str.2(%rip), %xmm0
	movaps	%xmm0, errortext(%rip)
	movabsq	$28259013969929760, %rax        # imm = 0x64656C69616620
	movq	%rax, errortext+47(%rip)
	jmp	.LBB3_5
.LBB3_10:                               # %if.then18
	movups	.L.str.3+42(%rip), %xmm0
	movups	%xmm0, errortext+42(%rip)
	movups	.L.str.3+32(%rip), %xmm0
	movaps	%xmm0, errortext+32(%rip)
	movups	.L.str.3+16(%rip), %xmm0
	movaps	%xmm0, errortext+16(%rip)
	movups	.L.str.3(%rip), %xmm0
.LBB3_4:                                # %if.then
	movaps	%xmm0, errortext(%rip)
.LBB3_5:                                # %if.then
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str, %esi
	movl	$errortext, %edx
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$100, %edi
	callq	exit@PLT
.LBB3_3:                                # %if.then
	movups	.L.str.1+44(%rip), %xmm0
	movups	%xmm0, errortext+44(%rip)
	movups	.L.str.1+32(%rip), %xmm0
	movaps	%xmm0, errortext+32(%rip)
	movups	.L.str.1+16(%rip), %xmm0
	movaps	%xmm0, errortext+16(%rip)
	movups	.L.str.1(%rip), %xmm0
	jmp	.LBB3_4
.Lfunc_end3:
	.size	AllocPartition, .Lfunc_end3-AllocPartition
	.cfi_endproc
                                        # -- End function
	.globl	FreePartition                   # -- Begin function FreePartition
	.p2align	4, 0x90
	.type	FreePartition,@function
FreePartition:                          # @FreePartition
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
	testl	%esi, %esi
	jle	.LBB4_3
# %bb.1:                                # %for.body.preheader
	movl	%esi, %eax
	shlq	$4, %rax
	leaq	(%rax,%rax,2), %r14
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB4_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx,%r15), %rax
	movq	16(%rax), %rdi
	callq	free@PLT
	movq	(%rbx,%r15), %rdi
	callq	free@PLT
	addq	$48, %r15
	cmpq	%r15, %r14
	jne	.LBB4_2
.LBB4_3:                                # %for.end
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end4:
	.size	FreePartition, .Lfunc_end4-FreePartition
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function malloc_slice
.LCPI5_0:
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.text
	.globl	malloc_slice
	.p2align	4, 0x90
	.type	malloc_slice,@function
malloc_slice:                           # @malloc_slice
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
	movq	%rdi, %r14
	movl	$1, %edi
	movl	$13648, %esi                    # imm = 0x3550
	callq	calloc@PLT
	testq	%rax, %rax
	je	.LBB5_16
# %bb.1:                                # %if.end
	movq	%rax, %rbx
	callq	create_contexts_MotionInfo@PLT
	movq	%rax, 320(%rbx)
	callq	create_contexts_TextureInfo@PLT
	movq	%rax, 328(%rbx)
	movl	$3, 196(%rbx)
	movl	$3, %edi
	callq	AllocPartition
	movq	%rax, 312(%rbx)
	leaq	13280(%rbx), %rdi
	movl	$2, %esi
	movl	$32, %edx
	movl	$3, %ecx
	callq	get_mem3Dint@PLT
	leaq	13288(%rbx), %rdi
	movl	$6, %esi
	movl	$32, %edx
	movl	$3, %ecx
	callq	get_mem3Dint@PLT
	leaq	13296(%rbx), %rdi
	movl	$6, %esi
	movl	$32, %edx
	movl	$32, %ecx
	movl	$3, %r8d
	callq	get_mem4Dint@PLT
	leaq	1248(%rbx), %rdi
	movl	$3, %esi
	movl	$16, %edx
	movl	$16, %ecx
	callq	get_mem3Dpel@PLT
	leaq	1256(%rbx), %rdi
	movl	$3, %esi
	movl	$16, %edx
	movl	$16, %ecx
	callq	get_mem3Dpel@PLT
	leaq	1264(%rbx), %rdi
	movl	$3, %esi
	movl	$16, %edx
	movl	$16, %ecx
	callq	get_mem3Dint@PLT
	movq	%rbx, %rdi
	addq	$1272, %rdi                     # imm = 0x4F8
	movl	$3, %esi
	movl	$16, %edx
	movl	$16, %ecx
	callq	get_mem3Dint@PLT
	movq	%rbx, %rdi
	callq	allocate_pred_mem@PLT
	movl	$4294967295, %eax               # imm = 0xFFFFFFFF
	movq	%rax, 1176(%rbx)
	movl	$0, 1184(%rbx)
	movaps	.LCPI5_0(%rip), %xmm0           # xmm0 = [1,1,1,1]
	movups	%xmm0, 13340(%rbx)
	movups	%xmm0, 13356(%rbx)
	movups	%xmm0, 13372(%rbx)
	movups	%xmm0, 13388(%rbx)
	movl	$1, 13404(%rbx)
	movl	$33, %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, 264(%rbx)
	testq	%rax, %rax
	jne	.LBB5_3
# %bb.2:                                # %if.then31
	movl	$.L.str.5, %edi
	callq	no_mem_exit@PLT
.LBB5_3:                                # %for.inc33
	movl	$33, %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, 272(%rbx)
	testq	%rax, %rax
	jne	.LBB5_5
# %bb.4:                                # %if.then31.1
	movl	$.L.str.5, %edi
	callq	no_mem_exit@PLT
.LBB5_5:                                # %for.inc33.1
	movl	$33, %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, 280(%rbx)
	testq	%rax, %rax
	jne	.LBB5_7
# %bb.6:                                # %if.then31.2
	movl	$.L.str.5, %edi
	callq	no_mem_exit@PLT
.LBB5_7:                                # %for.inc33.2
	movl	$33, %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, 288(%rbx)
	testq	%rax, %rax
	jne	.LBB5_9
# %bb.8:                                # %if.then31.3
	movl	$.L.str.5, %edi
	callq	no_mem_exit@PLT
.LBB5_9:                                # %for.inc33.3
	movl	$33, %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, 296(%rbx)
	testq	%rax, %rax
	jne	.LBB5_11
# %bb.10:                               # %if.then31.4
	movl	$.L.str.5, %edi
	callq	no_mem_exit@PLT
.LBB5_11:                               # %for.inc33.4
	movl	$33, %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, 304(%rbx)
	testq	%rax, %rax
	jne	.LBB5_13
# %bb.12:                               # %if.then31.5
	movl	$.L.str.5, %edi
	callq	no_mem_exit@PLT
.LBB5_13:                               # %for.inc33.5
	movq	$-6, %rax
	.p2align	4, 0x90
.LBB5_14:                               # %for.cond39.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, (%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 8(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 16(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 24(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 32(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 40(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 48(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 56(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 64(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 72(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 80(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 88(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 96(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 104(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 112(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 120(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 128(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 136(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 144(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 152(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 160(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 168(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 176(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 184(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 192(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 200(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 208(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 216(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 224(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 232(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 240(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 248(%rcx)
	movq	312(%rbx,%rax,8), %rcx
	movq	$0, 256(%rcx)
	movb	$0, 262(%rbx,%rax)
	incq	%rax
	jne	.LBB5_14
# %bb.15:                               # %for.end54
	movq	%rbx, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB5_16:                               # %if.then
	.cfi_def_cfa_offset 32
	movl	768(%r14), %ecx
	movl	$errortext, %edi
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.4, %edx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str, %esi
	movl	$errortext, %edx
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$100, %edi
	callq	exit@PLT
.Lfunc_end5:
	.size	malloc_slice, .Lfunc_end5-malloc_slice
	.cfi_endproc
                                        # -- End function
	.globl	init_global_buffers             # -- Begin function init_global_buffers
	.p2align	4, 0x90
	.type	init_global_buffers,@function
init_global_buffers:                    # @init_global_buffers
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
	movq	%rdi, %rbx
	cmpl	$0, 856012(%rdi)
	je	.LBB6_2
# %bb.1:                                # %if.then
	movq	%rbx, %rdi
	callq	free_global_buffers
.LBB6_2:                                # %if.end
	leaq	856016(%rbx), %rdi
	movl	848780(%rbx), %edx
	movl	848784(%rbx), %esi
	callq	get_mem2Dpel@PLT
	movl	%eax, %r14d
	movq	16(%rbx), %rax
	leaq	856024(%rbx), %rdi
	cmpl	$0, 36(%rax)
	je	.LBB6_4
# %bb.3:                                # %if.then1
	movl	848788(%rbx), %ecx
	movl	848792(%rbx), %edx
	movl	$2, %esi
	callq	get_mem3Dpel@PLT
	movl	%eax, %ebp
	addl	%r14d, %ebp
	cmpl	$0, 849280(%rbx)
	je	.LBB6_13
.LBB6_6:                                # %for.cond.preheader
	movl	849016(%rbx), %r14d
	movl	$480, %esi                      # imm = 0x1E0
	movq	%r14, %rdi
	callq	calloc@PLT
	movq	%rax, 848896(%rbx)
	testq	%rax, %rax
	jne	.LBB6_8
# %bb.7:                                # %if.then12
	movl	$.L.str.6, %edi
	callq	no_mem_exit@PLT
	movl	849016(%rbx), %r14d
.LBB6_8:                                # %for.inc
	movl	$480, %esi                      # imm = 0x1E0
	movq	%r14, %rdi
	callq	calloc@PLT
	movq	%rax, 848904(%rbx)
	testq	%rax, %rax
	jne	.LBB6_10
# %bb.9:                                # %if.then12.1
	movl	$.L.str.6, %edi
	callq	no_mem_exit@PLT
	movl	849016(%rbx), %r14d
.LBB6_10:                               # %for.inc.1
	movl	$480, %esi                      # imm = 0x1E0
	movq	%r14, %rdi
	callq	calloc@PLT
	movq	%rax, 848912(%rbx)
	testq	%rax, %rax
	jne	.LBB6_12
# %bb.11:                               # %if.then12.2
	movl	$.L.str.6, %edi
	callq	no_mem_exit@PLT
.LBB6_12:                               # %for.inc.2
	movq	$0, 848888(%rbx)
	cmpl	$0, 849280(%rbx)
	jne	.LBB6_16
	jmp	.LBB6_23
.LBB6_4:                                # %if.else
	movq	$0, (%rdi)
	movl	%r14d, %ebp
	cmpl	$0, 849280(%rbx)
	jne	.LBB6_6
.LBB6_13:                               # %if.else14
	movl	849016(%rbx), %edi
	movl	$480, %esi                      # imm = 0x1E0
	callq	calloc@PLT
	movq	%rax, 848888(%rbx)
	testq	%rax, %rax
	je	.LBB6_14
# %bb.15:                               # %if.end23
	cmpl	$0, 849280(%rbx)
	je	.LBB6_23
.LBB6_16:                               # %for.cond28.preheader
	movl	849016(%rbx), %r14d
	movl	$1, %esi
	movq	%r14, %rdi
	callq	calloc@PLT
	movq	%rax, 848752(%rbx)
	testq	%rax, %rax
	jne	.LBB6_18
# %bb.17:                               # %if.then39
	movl	$.L.str.7, %edi
	callq	no_mem_exit@PLT
	movl	849016(%rbx), %r14d
.LBB6_18:                               # %for.inc41
	movl	$1, %esi
	movq	%r14, %rdi
	callq	calloc@PLT
	movq	%rax, 848760(%rbx)
	testq	%rax, %rax
	jne	.LBB6_20
# %bb.19:                               # %if.then39.1
	movl	$.L.str.7, %edi
	callq	no_mem_exit@PLT
	movl	849016(%rbx), %r14d
.LBB6_20:                               # %for.inc41.1
	movl	$1, %esi
	movq	%r14, %rdi
	callq	calloc@PLT
	movq	%rax, 848768(%rbx)
	testq	%rax, %rax
	jne	.LBB6_22
# %bb.21:                               # %if.then39.2
	movl	$.L.str.7, %edi
	callq	no_mem_exit@PLT
.LBB6_22:                               # %for.inc41.2
	movq	$0, 848744(%rbx)
	jmp	.LBB6_25
.LBB6_14:                               # %if.then21
	movl	$.L.str.6, %edi
	callq	no_mem_exit@PLT
	cmpl	$0, 849280(%rbx)
	jne	.LBB6_16
.LBB6_23:                               # %if.else44
	movl	849016(%rbx), %edi
	movl	$1, %esi
	callq	calloc@PLT
	movq	%rax, 848744(%rbx)
	testq	%rax, %rax
	jne	.LBB6_25
# %bb.24:                               # %if.then51
	movl	$.L.str.8, %edi
	callq	no_mem_exit@PLT
.LBB6_25:                               # %if.end53
	movl	849016(%rbx), %r14d
	leal	1(%r14), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, PicPos(%rip)
	testq	%rax, %rax
	jne	.LBB6_27
# %bb.26:                               # %if.then60
	movl	$.L.str.9, %edi
	callq	no_mem_exit@PLT
	movl	849016(%rbx), %r14d
.LBB6_27:                               # %if.end61
	testl	%r14d, %r14d
	js	.LBB6_30
# %bb.28:                               # %for.body67.lr.ph
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB6_29:                               # %for.body67
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	848996(%rbx)
	movq	PicPos(%rip), %rax
	movw	%dx, (%rax,%rcx,4)
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	848996(%rbx)
	movq	PicPos(%rip), %rdx
	movw	%ax, 2(%rdx,%rcx,4)
	leaq	1(%rcx), %rax
	movslq	849016(%rbx), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, %rcx
	jl	.LBB6_29
.LBB6_30:                               # %for.end77
	cmpl	$0, 849280(%rbx)
	je	.LBB6_32
# %bb.31:                               # %for.cond82.preheader
	leaq	848808(%rbx), %rdi
	movl	848996(%rbx), %edx
	movl	849004(%rbx), %esi
	shll	$2, %esi
	shll	$2, %edx
	callq	get_mem2D@PLT
	leaq	848816(%rbx), %rdi
	movl	848996(%rbx), %edx
	movl	849004(%rbx), %esi
	shll	$2, %esi
	shll	$2, %edx
	callq	get_mem2D@PLT
	leaq	848824(%rbx), %rdi
	movl	848996(%rbx), %edx
	movl	849004(%rbx), %esi
	shll	$2, %esi
	shll	$2, %edx
	callq	get_mem2D@PLT
	movq	$0, 848800(%rbx)
	jmp	.LBB6_33
.LBB6_32:                               # %if.else94
	leaq	848800(%rbx), %rdi
	movl	848996(%rbx), %edx
	movl	849004(%rbx), %esi
	shll	$2, %esi
	shll	$2, %edx
	callq	get_mem2D@PLT
	addl	%eax, %ebp
.LBB6_33:                               # %if.end102
	leaq	848832(%rbx), %rdi
	movl	849016(%rbx), %esi
	movl	$3, %edx
	movl	$4, %ecx
	movl	$4, %r8d
	callq	get_mem4D@PLT
	movl	%eax, %r14d
	addl	%ebp, %r14d
	cmpl	$0, 849280(%rbx)
	je	.LBB6_41
# %bb.34:                               # %for.cond110.preheader
	leaq	848848(%rbx), %rdi
	movl	848996(%rbx), %edx
	movl	849004(%rbx), %esi
	callq	get_mem2Dint@PLT
	cmpq	$0, 848848(%rbx)
	jne	.LBB6_36
# %bb.35:                               # %if.then124
	movl	$.L.str.10, %edi
	callq	no_mem_exit@PLT
.LBB6_36:                               # %for.inc126
	leaq	848856(%rbx), %rdi
	movl	848996(%rbx), %edx
	movl	849004(%rbx), %esi
	callq	get_mem2Dint@PLT
	cmpq	$0, 848856(%rbx)
	jne	.LBB6_38
# %bb.37:                               # %if.then124.1
	movl	$.L.str.10, %edi
	callq	no_mem_exit@PLT
.LBB6_38:                               # %for.inc126.1
	leaq	848864(%rbx), %rdi
	movl	848996(%rbx), %edx
	movl	849004(%rbx), %esi
	callq	get_mem2Dint@PLT
	cmpq	$0, 848864(%rbx)
	jne	.LBB6_40
# %bb.39:                               # %if.then124.2
	movl	$.L.str.10, %edi
	callq	no_mem_exit@PLT
.LBB6_40:                               # %for.inc126.2
	movq	$0, 848840(%rbx)
	jmp	.LBB6_42
.LBB6_41:                               # %if.else129
	leaq	848840(%rbx), %rdi
	movl	848996(%rbx), %edx
	movl	849004(%rbx), %esi
	callq	get_mem2Dint@PLT
	addl	%eax, %r14d
.LBB6_42:                               # %if.end135
	movq	%rbx, %rdi
	callq	init_qp_process@PLT
	movl	$1, 856012(%rbx)
	movl	849016(%rbx), %eax
	movl	%eax, 849020(%rbx)
	movl	%r14d, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	init_global_buffers, .Lfunc_end6-init_global_buffers
	.cfi_endproc
                                        # -- End function
	.globl	free_global_buffers             # -- Begin function free_global_buffers
	.p2align	4, 0x90
	.type	free_global_buffers,@function
free_global_buffers:                    # @free_global_buffers
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
	movq	856016(%rdi), %rdi
	callq	free_mem2Dpel@PLT
	movq	856024(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB7_2
# %bb.1:                                # %if.then
	callq	free_mem3Dpel@PLT
.LBB7_2:                                # %if.end
	movq	848832(%rbx), %rdi
	callq	free_mem4D@PLT
	cmpl	$0, 849280(%rbx)
	je	.LBB7_4
# %bb.3:                                # %for.cond.preheader
	movq	848896(%rbx), %rdi
	callq	free@PLT
	movq	$0, 848896(%rbx)
	movq	848848(%rbx), %rdi
	callq	free_mem2Dint@PLT
	movq	$0, 848848(%rbx)
	movq	848808(%rbx), %rdi
	callq	free_mem2D@PLT
	movq	$0, 848808(%rbx)
	movq	848752(%rbx), %rdi
	callq	free@PLT
	movq	$0, 848752(%rbx)
	movq	848904(%rbx), %rdi
	callq	free@PLT
	movq	$0, 848904(%rbx)
	movq	848856(%rbx), %rdi
	callq	free_mem2Dint@PLT
	movq	$0, 848856(%rbx)
	movq	848816(%rbx), %rdi
	callq	free_mem2D@PLT
	movq	$0, 848816(%rbx)
	movq	848760(%rbx), %rdi
	callq	free@PLT
	movq	$0, 848760(%rbx)
	movq	848912(%rbx), %rdi
	callq	free@PLT
	movq	$0, 848912(%rbx)
	movq	848864(%rbx), %rdi
	callq	free_mem2Dint@PLT
	movq	$0, 848864(%rbx)
	movq	848824(%rbx), %rdi
	callq	free_mem2D@PLT
	movq	$0, 848824(%rbx)
	leaq	848768(%rbx), %r14
	movq	848768(%rbx), %rdi
	jmp	.LBB7_12
.LBB7_4:                                # %if.else
	movq	848888(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB7_6
# %bb.5:                                # %if.then23
	callq	free@PLT
	movq	$0, 848888(%rbx)
.LBB7_6:                                # %if.end26
	movq	848840(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB7_8
# %bb.7:                                # %if.then28
	callq	free_mem2Dint@PLT
	movq	$0, 848840(%rbx)
.LBB7_8:                                # %if.end31
	movq	848800(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB7_10
# %bb.9:                                # %if.then33
	callq	free_mem2D@PLT
	movq	$0, 848800(%rbx)
.LBB7_10:                               # %if.end36
	movq	848744(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB7_13
# %bb.11:                               # %if.then38
	leaq	848744(%rbx), %r14
.LBB7_12:                               # %if.end42.sink.split
	callq	free@PLT
	movq	$0, (%r14)
.LBB7_13:                               # %if.end42
	movq	PicPos(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB7_15
# %bb.14:                               # %if.then44
	callq	free@PLT
	movq	$0, PicPos(%rip)
.LBB7_15:                               # %if.end45
	movq	%rbx, %rdi
	callq	free_qp_matrices@PLT
	movl	$0, 856012(%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	free_global_buffers, .Lfunc_end7-free_global_buffers
	.cfi_endproc
                                        # -- End function
	.globl	report_stats_on_error           # -- Begin function report_stats_on_error
	.p2align	4, 0x90
	.type	report_stats_on_error,@function
report_stats_on_error:                  # @report_stats_on_error
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$-1, %edi
	callq	exit@PLT
.Lfunc_end8:
	.size	report_stats_on_error, .Lfunc_end8-report_stats_on_error
	.cfi_endproc
                                        # -- End function
	.globl	ClearDecPicList                 # -- Begin function ClearDecPicList
	.p2align	4, 0x90
	.type	ClearDecPicList,@function
ClearDecPicList:                        # @ClearDecPicList
	.cfi_startproc
# %bb.0:                                # %entry
	movq	856816(%rdi), %rax
	testq	%rax, %rax
	je	.LBB9_10
# %bb.1:                                # %land.rhs.preheader
	cmpl	$0, (%rax)
	je	.LBB9_3
# %bb.2:
	xorl	%ecx, %ecx
	movq	%rax, %rdx
	jmp	.LBB9_6
.LBB9_3:
	movq	%rax, %rdx
	.p2align	4, 0x90
.LBB9_4:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rcx
	movq	72(%rdx), %rdx
	testq	%rdx, %rdx
	je	.LBB9_10
# %bb.5:                                # %land.rhs
                                        #   in Loop: Header=BB9_4 Depth=1
	cmpl	$0, (%rdx)
	je	.LBB9_4
.LBB9_6:                                # %land.lhs.true
	cmpq	%rax, %rdx
	je	.LBB9_10
# %bb.7:                                # %while.cond4.preheader
	movq	%rdx, %r8
	.p2align	4, 0x90
.LBB9_8:                                # %while.cond4
                                        # =>This Inner Loop Header: Depth=1
	movq	%r8, %rsi
	movq	72(%r8), %r8
	testq	%r8, %r8
	jne	.LBB9_8
# %bb.9:                                # %while.end9
	movq	%rax, 72(%rsi)
	movq	%rdx, 856816(%rdi)
	movq	$0, 72(%rcx)
.LBB9_10:                               # %if.end
	retq
.Lfunc_end9:
	.size	ClearDecPicList, .Lfunc_end9-ClearDecPicList
	.cfi_endproc
                                        # -- End function
	.globl	GetOneAvailDecPicFromList       # -- Begin function GetOneAvailDecPicFromList
	.p2align	4, 0x90
	.type	GetOneAvailDecPicFromList,@function
GetOneAvailDecPicFromList:              # @GetOneAvailDecPicFromList
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	testl	%esi, %esi
	je	.LBB10_3
	.p2align	4, 0x90
.LBB10_1:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rbx
	cmpl	$3, (%rdi)
	jne	.LBB10_6
# %bb.2:                                # %while.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	72(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.LBB10_1
.LBB10_5:                               # %if.then12
	movl	$1, %edi
	movl	$80, %esi
	callq	calloc@PLT
	movq	%rax, 72(%rbx)
	movq	%rax, %rbx
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
	.p2align	4, 0x90
.LBB10_4:                               # %while.body8
                                        #   in Loop: Header=BB10_3 Depth=1
	.cfi_def_cfa_offset 16
	movq	72(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB10_5
.LBB10_3:                               # %land.rhs4
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rbx
	cmpl	$0, (%rdi)
	jne	.LBB10_4
.LBB10_6:                               # %if.end14
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end10:
	.size	GetOneAvailDecPicFromList, .Lfunc_end10-GetOneAvailDecPicFromList
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function OpenDecoder
.LCPI11_0:
	.long	32                              # 0x20
	.long	12                              # 0xc
	.long	16                              # 0x10
	.long	8                               # 0x8
	.text
	.globl	OpenDecoder
	.p2align	4, 0x90
	.type	OpenDecoder,@function
OpenDecoder:                            # @OpenDecoder
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
	movl	$1, %edi
	movl	$48, %esi
	callq	calloc@PLT
	movq	%rax, p_Dec(%rip)
	testq	%rax, %rax
	je	.LBB11_30
# %bb.1:                                # %if.end.i
	movq	%rax, %r14
	movl	$1, %edi
	movl	$856880, %esi                   # imm = 0xD1330
	callq	calloc@PLT
	movq	%rax, %r15
	movq	%rax, 8(%r14)
	testq	%rax, %rax
	jne	.LBB11_3
# %bb.2:                                # %if.then.i.i
	movl	$.L.str.15, %edi
	callq	no_mem_exit@PLT
	movq	8(%r14), %r15
.LBB11_3:                               # %if.end.i.i
	movl	$1, %edi
	movl	$52, %esi
	callq	calloc@PLT
	movq	%rax, 848696(%r15)
	testq	%rax, %rax
	jne	.LBB11_5
# %bb.4:                                # %if.then3.i.i
	movl	$.L.str.16, %edi
	callq	no_mem_exit@PLT
.LBB11_5:                               # %if.end4.i.i
	movl	$1, %edi
	movl	$64, %esi
	callq	calloc@PLT
	movq	8(%r14), %rcx
	movq	%rax, 848704(%rcx)
	testq	%rax, %rax
	jne	.LBB11_7
# %bb.6:                                # %if.then7.i.i
	movl	$.L.str.17, %edi
	callq	no_mem_exit@PLT
.LBB11_7:                               # %if.end8.i.i
	movl	$1, %edi
	movl	$4176, %esi                     # imm = 0x1050
	callq	calloc@PLT
	movq	8(%r14), %rcx
	movq	%rax, 856664(%rcx)
	testq	%rax, %rax
	jne	.LBB11_9
# %bb.8:                                # %if.then11.i.i
	movl	$.L.str.18, %edi
	callq	no_mem_exit@PLT
.LBB11_9:                               # %if.end12.i.i
	movq	8(%r14), %rax
	movq	856664(%rax), %rcx
	movq	%rcx, 856656(%rax)
	movq	8(%r14), %rax
	movq	856656(%rax), %rcx
	movq	%rax, (%rcx)
	movl	$0, 4160(%rcx)
	movl	$1, %edi
	movl	$4176, %esi                     # imm = 0x1050
	callq	calloc@PLT
	movq	8(%r14), %rcx
	movq	%rax, 856672(%rcx)
	testq	%rax, %rax
	jne	.LBB11_11
# %bb.10:                               # %if.then18.i.i
	movl	$.L.str.19, %edi
	callq	no_mem_exit@PLT
.LBB11_11:                              # %if.end19.i.i
	movq	8(%r14), %rax
	movq	856672(%rax), %rcx
	movq	%rax, (%rcx)
	movl	$0, 4160(%rcx)
	movl	$1, %edi
	movl	$4176, %esi                     # imm = 0x1050
	callq	calloc@PLT
	movq	8(%r14), %rcx
	movq	%rax, 856680(%rcx)
	testq	%rax, %rax
	jne	.LBB11_13
# %bb.12:                               # %if.then18.1.i.i
	movl	$.L.str.19, %edi
	callq	no_mem_exit@PLT
.LBB11_13:                              # %if.end19.1.i.i
	movq	8(%r14), %rax
	movq	856680(%rax), %rcx
	movq	%rax, (%rcx)
	movl	$0, 4160(%rcx)
	movq	8(%r14), %rax
	movl	$0, 856012(%rax)
	movl	$1, %edi
	movl	$8232, %esi                     # imm = 0x2028
	callq	calloc@PLT
	movq	8(%r14), %rcx
	movq	%rax, 856728(%rcx)
	testq	%rax, %rax
	jne	.LBB11_15
# %bb.14:                               # %if.then25.i.i
	movl	$.L.str.20, %edi
	callq	no_mem_exit@PLT
.LBB11_15:                              # %if.end26.i.i
	movl	$16, %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	8(%r14), %rcx
	movq	%rax, 848736(%rcx)
	testq	%rax, %rax
	jne	.LBB11_17
# %bb.16:                               # %if.then29.i.i
	movl	$.L.str.21, %edi
	callq	no_mem_exit@PLT
.LBB11_17:                              # %alloc_video_params.exit.i
	movq	8(%r14), %rax
	movl	$16, 848724(%rax)
	movq	8(%r14), %rax
	movq	$0, 848880(%rax)
	movl	$8000000, %edi                  # imm = 0x7A1200
	callq	AllocNALU@PLT
	movq	8(%r14), %rcx
	movq	%rax, 856832(%rcx)
	movl	$1, %edi
	movl	$80, %esi
	callq	calloc@PLT
	movq	8(%r14), %rcx
	movq	%rax, 856816(%rcx)
	callq	AllocPPS@PLT
	movq	8(%r14), %rcx
	movq	%rax, 856872(%rcx)
	movq	p_Dec(%rip), %r14
	movl	$1, %edi
	movl	$4016, %esi                     # imm = 0xFB0
	callq	calloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB11_19
# %bb.18:                               # %if.then.i15.i
	movl	$.L.str.22, %edi
	callq	no_mem_exit@PLT
.LBB11_19:                              # %if.end
	movq	p_Dec(%rip), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rax
	movq	%rcx, (%rax)
	movq	p_Dec(%rip), %r14
	movq	$0, 32(%r14)
	movq	$0, 16(%r14)
	movl	$0, 40(%r14)
	movq	(%r14), %rdi
	movl	$4016, %edx                     # imm = 0xFB0
	movq	%rbx, %rsi
	callq	memcpy@PLT
	movq	(%r14), %rax
	movq	8(%r14), %rcx
	movl	3980(%rax), %eax
	movl	%eax, 849240(%rcx)
	movq	(%r14), %rax
	movq	8(%r14), %rcx
	movl	3984(%rax), %eax
	movl	%eax, 849232(%rcx)
	movq	(%r14), %rax
	movq	8(%r14), %rcx
	movl	3988(%rax), %eax
	movl	%eax, 849236(%rcx)
	movq	(%r14), %rdi
	movzbl	510(%rdi), %eax
	testl	%eax, %eax
	je	.LBB11_25
# %bb.20:                               # %if.end
	cmpl	$34, %eax
	jne	.LBB11_23
# %bb.21:                               # %sub_1
	cmpb	$34, 511(%rdi)
	jne	.LBB11_23
# %bb.22:                               # %land.lhs.true.tail
	cmpb	$0, 512(%rdi)
	je	.LBB11_25
.LBB11_23:                              # %if.then17
	addq	$510, %rdi                      # imm = 0x1FE
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	open@PLT
	movq	8(%r14), %rcx
	movl	%eax, 855988(%rcx)
	cmpl	$-1, %eax
	jne	.LBB11_26
# %bb.24:                               # %if.then24
	movq	stdout@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rdi
	movl	$510, %edx                      # imm = 0x1FE
	addq	(%r14), %rdx
	movl	$.L.str.12, %esi
	xorl	%eax, %eax
	callq	fprintf@PLT
	movq	(%rbx), %rcx
	movl	$.L.str.13, %edi
	movl	$71, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	jmp	.LBB11_26
.LBB11_25:                              # %if.else
	movq	8(%r14), %rax
	movl	$-1, 855988(%rax)
.LBB11_26:                              # %if.end33
	movq	(%r14), %rax
	movq	8(%r14), %rdi
	movl	768(%rax), %esi
	callq	initBitsFile@PLT
	movq	(%r14), %rsi
	movq	8(%r14), %rdi
	movq	856616(%rdi), %rax
	callq	*(%rax)
	movq	8(%r14), %rax
	movq	848696(%rax), %rdi
	callq	init_old_slice@PLT
	movq	8(%r14), %rbx
	movq	(%rbx), %rax
	movl	$-1, 849020(%rbx)
	movq	$0, 849260(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 856016(%rbx)
	movl	$2147483647, 849276(%rbx)       # imm = 0x7FFFFFFF
	movl	772(%rax), %eax
	movl	%eax, 849220(%rbx)
	movl	$0, 849224(%rbx)
	movl	$0, 848712(%rbx)
	movl	$2, 848776(%rbx)
	movl	$0, 856008(%rbx)
	movq	848704(%rbx), %rax
	movl	$0, (%rax)
	movl	$0, 856000(%rbx)
	movq	$0, 851880(%rbx)
	movq	$0, 856456(%rbx)
	movq	$0, 855992(%rbx)
	movups	%xmm0, 856624(%rbx)
	movq	$0, 856640(%rbx)
	movups	%xmm0, 856704(%rbx)
	movq	856728(%rbx), %rdi
	callq	init_tone_mapping_sei@PLT
	movq	$0, 848672(%rbx)
	movl	$0, 848680(%rbx)
	movl	$0, 848872(%rbx)
	movl	$0, 851864(%rbx)
	movaps	.LCPI11_0(%rip), %xmm0          # xmm0 = [32,12,16,8]
	movups	%xmm0, 856840(%rbx)
	movq	$3, 856856(%rbx)
	movq	8(%r14), %rdi
	callq	init_out_buffer@PLT
	movq	8(%r14), %rax
	movl	$-1, 851888(%rax)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB11_27:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r14), %rcx
	movl	$-1, 851892(%rcx,%rax,4)
	movq	8(%r14), %rcx
	movl	$-1, 851896(%rcx,%rax,4)
	movq	8(%r14), %rcx
	movl	$-1, 851900(%rcx,%rax,4)
	movq	8(%r14), %rcx
	movl	$-1, 851904(%rcx,%rax,4)
	addq	$4, %rax
	cmpq	$1024, %rax                     # imm = 0x400
	jne	.LBB11_27
# %bb.28:                               # %for.end
	movq	8(%r14), %rax
	movq	$0, 16(%rax)
	movq	8(%r14), %rax
	movq	$0, 699416(%rax)
	movl	$699424, %edi                   # imm = 0xAAC20
	addq	8(%r14), %rdi
	movl	$32, %esi
	callq	init_subset_sps_list@PLT
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB11_30:                              # %if.then
	.cfi_def_cfa_offset 32
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.14, %edi
	movl	$21, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movl	$-1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end11:
	.size	OpenDecoder, .Lfunc_end11-OpenDecoder
	.cfi_endproc
                                        # -- End function
	.globl	DecodeOneFrame                  # -- Begin function DecodeOneFrame
	.p2align	4, 0x90
	.type	DecodeOneFrame,@function
DecodeOneFrame:                         # @DecodeOneFrame
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
	movq	p_Dec(%rip), %r14
	movq	8(%r14), %rax
	movq	856816(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB12_9
# %bb.1:                                # %land.rhs.i.preheader
	cmpl	$0, (%rcx)
	je	.LBB12_2
.LBB12_9:                               # %ClearDecPicList.exit
	movq	%r14, %rdi
	callq	decode_one_frame@PLT
	cmpl	$2, %eax
	je	.LBB12_10
# %bb.11:                               # %ClearDecPicList.exit
	cmpl	$1, %eax
	jne	.LBB12_13
# %bb.12:                               # %if.then2
	movl	$1, %eax
	jmp	.LBB12_14
.LBB12_10:
	xorl	%eax, %eax
	jmp	.LBB12_14
.LBB12_13:                              # %if.else3
	orl	$32768, %eax                    # imm = 0x8000
.LBB12_14:                              # %if.end4
	movq	8(%r14), %rcx
	movq	856816(%rcx), %rcx
	movq	%rcx, (%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB12_2:
	.cfi_def_cfa_offset 32
	movq	%rcx, %rdx
	.p2align	4, 0x90
.LBB12_4:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rsi
	movq	72(%rdx), %rdx
	testq	%rdx, %rdx
	je	.LBB12_9
# %bb.3:                                # %land.rhs.i
                                        #   in Loop: Header=BB12_4 Depth=1
	cmpl	$0, (%rdx)
	je	.LBB12_4
# %bb.5:                                # %land.lhs.true.i
	cmpq	%rcx, %rdx
	je	.LBB12_9
# %bb.6:                                # %while.cond4.i.preheader
	movq	%rdx, %r8
	.p2align	4, 0x90
.LBB12_7:                               # %while.cond4.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r8, %rdi
	movq	72(%r8), %r8
	testq	%r8, %r8
	jne	.LBB12_7
# %bb.8:                                # %while.end9.i
	movq	%rcx, 72(%rdi)
	movq	%rdx, 856816(%rax)
	movq	$0, 72(%rsi)
	jmp	.LBB12_9
.Lfunc_end12:
	.size	DecodeOneFrame, .Lfunc_end12-DecodeOneFrame
	.cfi_endproc
                                        # -- End function
	.globl	FinitDecoder                    # -- Begin function FinitDecoder
	.p2align	4, 0x90
	.type	FinitDecoder,@function
FinitDecoder:                           # @FinitDecoder
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
	movq	p_Dec(%rip), %r14
	testq	%r14, %r14
	je	.LBB13_11
# %bb.1:                                # %if.end
	movq	%rdi, %rbx
	movq	8(%r14), %rax
	movq	856816(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB13_10
# %bb.2:                                # %land.rhs.i.preheader
	cmpl	$0, (%rcx)
	je	.LBB13_3
.LBB13_10:                              # %ClearDecPicList.exit
	movq	856656(%rax), %rdi
	movl	$-1, %esi
	callq	flush_dpb@PLT
	movq	8(%r14), %rax
	movq	856608(%rax), %rdi
	callq	ResetAnnexB@PLT
	movq	8(%r14), %rax
	movl	$0, 848872(%rax)
	movq	8(%r14), %rax
	movl	$0, 851864(%rax)
	movq	8(%r14), %rax
	movq	856816(%rax), %rax
	movq	%rax, (%rbx)
.LBB13_11:                              # %cleanup
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB13_3:
	.cfi_def_cfa_offset 32
	movq	%rcx, %rdx
	.p2align	4, 0x90
.LBB13_5:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rsi
	movq	72(%rdx), %rdx
	testq	%rdx, %rdx
	je	.LBB13_10
# %bb.4:                                # %land.rhs.i
                                        #   in Loop: Header=BB13_5 Depth=1
	cmpl	$0, (%rdx)
	je	.LBB13_5
# %bb.6:                                # %land.lhs.true.i
	cmpq	%rcx, %rdx
	je	.LBB13_10
# %bb.7:                                # %while.cond4.i.preheader
	movq	%rdx, %r8
	.p2align	4, 0x90
.LBB13_8:                               # %while.cond4.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r8, %rdi
	movq	72(%r8), %r8
	testq	%r8, %r8
	jne	.LBB13_8
# %bb.9:                                # %while.end9.i
	movq	%rcx, 72(%rdi)
	movq	%rdx, 856816(%rax)
	movq	$0, 72(%rsi)
	movq	8(%r14), %rax
	jmp	.LBB13_10
.Lfunc_end13:
	.size	FinitDecoder, .Lfunc_end13-FinitDecoder
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function CloseDecoder
.LCPI14_0:
	.quad	0x3f50624dd2f1a9fc              # double 0.001
	.text
	.globl	CloseDecoder
	.p2align	4, 0x90
	.type	CloseDecoder,@function
CloseDecoder:                           # @CloseDecoder
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
	subq	$328, %rsp                      # imm = 0x148
	.cfi_def_cfa_offset 384
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	p_Dec(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB14_60
# %bb.1:                                # %if.end
	movq	8(%rbx), %rbp
	movq	(%rbp), %r13
	movq	8(%rbp), %r12
	movq	848704(%rbp), %r14
	cmpl	$0, 784(%r13)
	movq	stdout@GOTPCREL(%rip), %r15
	movq	(%r15), %rcx
	je	.LBB14_2
# %bb.3:                                # %if.else.i
	movl	$.L.str.32, %edi
	movl	$76, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	jmp	.LBB14_4
.LBB14_2:                               # %if.then.i
	movl	$.L.str.23, %edi
	movl	$75, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	(%r15), %rdi
	movss	28(%r14), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.24, %esi
	movb	$1, %al
	callq	fprintf@PLT
	movq	(%r15), %rdi
	movss	32(%r14), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.25, %esi
	movb	$1, %al
	callq	fprintf@PLT
	movq	(%r15), %rdi
	movss	36(%r14), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.26, %esi
	movb	$1, %al
	callq	fprintf@PLT
.LBB14_4:                               # %if.end.i
	movq	(%r15), %rcx
	movl	$.L.str.27, %edi
	movl	$75, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	(%r15), %rdi
	movl	$.L.str.28, %esi
	movl	$.L.str.29, %edx
	movl	$.L.str.30, %ecx
	xorl	%eax, %eax
	callq	fprintf@PLT
	movq	(%r15), %rsi
	movl	$10, %edi
	callq	fputc@PLT
	movq	(%r15), %rdi
	movl	$.L.str.33, %esi
	movl	$.L.str.34, %edx
	xorl	%eax, %eax
	callq	fprintf@PLT
	movabsq	$27977503644020588, %rax        # imm = 0x6365642E676F6C
	movq	%rax, 64(%rsp)
	leaq	64(%rsp), %rdi
	movl	$.L.str.36, %esi
	callq	fopen@PLT
	testq	%rax, %rax
	movq	%r12, 48(%rsp)                  # 8-byte Spill
	movq	%r13, 40(%rsp)                  # 8-byte Spill
	je	.LBB14_5
# %bb.7:                                # %if.else41.i
	movq	%rax, %rdi
	callq	fclose@PLT
	leaq	64(%rsp), %rdi
	movl	$.L.str.37, %esi
	callq	fopen@PLT
	movq	%rax, %r15
	jmp	.LBB14_8
.LBB14_5:                               # %if.then26.i
	leaq	64(%rsp), %rdi
	movl	$.L.str.37, %esi
	callq	fopen@PLT
	testq	%rax, %rax
	je	.LBB14_61
# %bb.6:                                # %if.else34.i
	movq	%rax, %r15
	movl	$.L.str.39, %edi
	movl	$117, %esi
	movl	$1, %edx
	movq	%rax, %rcx
	callq	fwrite@PLT
	movl	$.L.str.40, %edi
	movl	$93, %esi
	movl	$1, %edx
	movq	%r15, %rcx
	callq	fwrite@PLT
	movl	$.L.str.41, %edi
	movl	$118, %esi
	movl	$1, %edx
	movq	%r15, %rcx
	callq	fwrite@PLT
	movl	$.L.str.42, %edi
	movl	$118, %esi
	movl	$1, %edx
	movq	%r15, %rcx
	callq	fwrite@PLT
	movl	$.L.str.39, %edi
	movl	$117, %esi
	movl	$1, %edx
	movq	%r15, %rcx
	callq	fwrite@PLT
.LBB14_8:                               # %if.end45.i
	movl	$.L.str.43, %esi
	movl	$.L.str.30, %edx
	movl	$.L.str.44, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	fprintf@PLT
	xorl	%edi, %edi
	callq	time@PLT
	movq	%rax, 56(%rsp)
	leaq	56(%rsp), %r12
	movq	%r12, %rdi
	callq	time@PLT
	movq	%r12, %rdi
	callq	localtime@PLT
	movq	%rax, %r12
	leaq	64(%rsp), %r13
	movl	$255, %esi
	movl	$.L.str.45, %edx
	movq	%r13, %rdi
	movq	%rax, %rcx
	callq	strftime@PLT
	movl	$.L.str.46, %esi
	movq	%r15, %rdi
	movq	%r13, %rdx
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$255, %esi
	movl	$.L.str.47, %edx
	movq	%r13, %rdi
	movq	%r12, %rcx
	callq	strftime@PLT
	movl	$.L.str.46, %esi
	movq	%r15, %rdi
	movq	%r13, %rdx
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$.L.str.48, %esi
	movq	%r15, %rdi
	movq	40(%rsp), %rdx                  # 8-byte Reload
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	848712(%rbp), %edx
	movl	$.L.str.49, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	848780(%rbp), %edx
	movl	848784(%rbp), %ecx
	movl	$.L.str.50, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	fprintf@PLT
	movslq	849088(%rbp), %rax
	leaq	Report.yuv_formats(,%rax,4), %rdx
	movl	$.L.str.51, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	fprintf@PLT
	movq	48(%rsp), %rax                  # 8-byte Reload
	testq	%rax, %rax
	je	.LBB14_10
# %bb.9:                                # %if.then65.i
	cmpl	$0, 12(%rax)
	movl	$.L.str.52, %eax
	movl	$.L.str.53, %edi
	cmoveq	%rax, %rdi
	movl	$7, %esi
	movl	$1, %edx
	movq	%r15, %rcx
	callq	fwrite@PLT
.LBB14_10:                              # %if.end73.i
	movss	16(%r14), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.54, %esi
	movq	%r15, %rdi
	movb	$1, %al
	callq	fprintf@PLT
	movss	20(%r14), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.54, %esi
	movq	%r15, %rdi
	movb	$1, %al
	callq	fprintf@PLT
	movss	24(%r14), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.54, %esi
	movq	%r15, %rdi
	movb	$1, %al
	callq	fprintf@PLT
	movss	28(%r14), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.54, %esi
	movq	%r15, %rdi
	movb	$1, %al
	callq	fprintf@PLT
	movss	32(%r14), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.54, %esi
	movq	%r15, %rdi
	movb	$1, %al
	callq	fprintf@PLT
	movss	36(%r14), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.54, %esi
	movq	%r15, %rdi
	movb	$1, %al
	callq	fprintf@PLT
	movl	$10, %edi
	movq	%r15, %rsi
	callq	fputc@PLT
	movq	%r15, %rdi
	callq	fclose@PLT
	movabsq	$3342626692806238564, %rax      # imm = 0x2E63654461746164
	movq	%rax, 64(%rsp)
	movl	$7633012, 72(%rsp)              # imm = 0x747874
	leaq	64(%rsp), %rdi
	movl	$.L.str.37, %esi
	callq	fopen@PLT
	movq	%rax, %r15
	movl	856000(%rbp), %eax
	movl	848712(%rbp), %edx
	movq	848736(%rbp), %rcx
	movq	(%rcx), %rcx
	testl	%eax, %eax
	je	.LBB14_12
# %bb.11:                               # %if.then105.i
	movl	148(%rcx), %r8d
	movss	16(%r14), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	20(%r14), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movss	24(%r14), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movss	28(%r14), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm6
	movss	32(%r14), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm7
	movss	36(%r14), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	cvtsi2sdq	851880(%rbp), %xmm4
	mulsd	.LCPI14_0(%rip), %xmm4
	leal	-1(%rax,%rdx), %eax
	cvtsi2sd	%eax, %xmm5
	divsd	%xmm5, %xmm4
	movsd	%xmm3, 8(%rsp)
	movsd	%xmm4, 24(%rsp)
	jmp	.LBB14_19
.LBB14_12:                              # %if.else131.i
	testq	%rcx, %rcx
	je	.LBB14_13
# %bb.14:                               # %cond.true.i
	movl	148(%rcx), %r8d
	jmp	.LBB14_15
.LBB14_13:
	xorl	%r8d, %r8d
.LBB14_15:                              # %cond.end.i
	movss	16(%r14), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	20(%r14), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movss	24(%r14), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movss	28(%r14), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm6
	movss	32(%r14), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm7
	movss	36(%r14), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	testl	%edx, %edx
	je	.LBB14_16
# %bb.17:                               # %cond.true159.i
	cvtsi2sdq	851880(%rbp), %xmm4
	mulsd	.LCPI14_0(%rip), %xmm4
	cvtsi2sd	%edx, %xmm5
	divsd	%xmm5, %xmm4
	jmp	.LBB14_18
.LBB14_16:
	xorpd	%xmm4, %xmm4
.LBB14_18:                              # %cond.end167.i
	movsd	%xmm4, 24(%rsp)
	movsd	%xmm3, 8(%rsp)
.LBB14_19:                              # %Report.exit
	movl	$0, 16(%rsp)
	movl	$0, (%rsp)
	movl	$.L.str.56, %esi
	xorps	%xmm3, %xmm3
	xorpd	%xmm4, %xmm4
	xorpd	%xmm5, %xmm5
	movq	%r15, %rdi
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	movb	$8, %al
	callq	fprintf@PLT
	movq	%r15, %rdi
	callq	fclose@PLT
	movq	8(%rbx), %rdi
	callq	FmoFinit@PLT
	movq	8(%rbx), %rdi
	callq	free_global_buffers
	movq	8(%rbx), %rdi
	movq	856616(%rdi), %rax
	callq	*8(%rax)
	xorl	%r14d, %r14d
	jmp	.LBB14_20
	.p2align	4, 0x90
.LBB14_22:                              # %for.inc
                                        #   in Loop: Header=BB14_20 Depth=1
	incq	%r14
	cmpq	$1024, %r14                     # imm = 0x400
	je	.LBB14_23
.LBB14_20:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rax
	movl	851892(%rax,%r14,4), %edi
	cmpl	$-1, %edi
	je	.LBB14_22
# %bb.21:                               # %if.then7
                                        #   in Loop: Header=BB14_20 Depth=1
	callq	close@PLT
	jmp	.LBB14_22
.LBB14_23:                              # %for.end
	movq	8(%rbx), %rdi
	movl	855988(%rdi), %eax
	cmpl	$-1, %eax
	je	.LBB14_25
# %bb.24:                               # %if.then16
	movl	%eax, %edi
	callq	close@PLT
	movq	8(%rbx), %rdi
.LBB14_25:                              # %if.end20
	movq	856504(%rdi), %rsi
	callq	ercClose@PLT
	movq	8(%rbx), %rdi
	callq	CleanUpPPS@PLT
	movl	$699424, %edi                   # imm = 0xAAC20
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$704088, %edi                   # imm = 0xABE58
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$708752, %edi                   # imm = 0xAD090
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$713416, %edi                   # imm = 0xAE2C8
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$718080, %edi                   # imm = 0xAF500
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$722744, %edi                   # imm = 0xB0738
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$727408, %edi                   # imm = 0xB1970
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$732072, %edi                   # imm = 0xB2BA8
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$736736, %edi                   # imm = 0xB3DE0
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$741400, %edi                   # imm = 0xB5018
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$746064, %edi                   # imm = 0xB6250
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$750728, %edi                   # imm = 0xB7488
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$755392, %edi                   # imm = 0xB86C0
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$760056, %edi                   # imm = 0xB98F8
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$764720, %edi                   # imm = 0xBAB30
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$769384, %edi                   # imm = 0xBBD68
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$774048, %edi                   # imm = 0xBCFA0
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$778712, %edi                   # imm = 0xBE1D8
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$783376, %edi                   # imm = 0xBF410
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$788040, %edi                   # imm = 0xC0648
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$792704, %edi                   # imm = 0xC1880
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$797368, %edi                   # imm = 0xC2AB8
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$802032, %edi                   # imm = 0xC3CF0
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$806696, %edi                   # imm = 0xC4F28
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$811360, %edi                   # imm = 0xC6160
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$816024, %edi                   # imm = 0xC7398
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$820688, %edi                   # imm = 0xC85D0
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$825352, %edi                   # imm = 0xC9808
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$830016, %edi                   # imm = 0xCAA40
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$834680, %edi                   # imm = 0xCBC78
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$839344, %edi                   # imm = 0xCCEB0
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movl	$844008, %edi                   # imm = 0xCE0E8
	addq	8(%rbx), %rdi
	callq	reset_subset_sps@PLT
	movq	8(%rbx), %rax
	movq	856656(%rax), %rdi
	callq	free_dpb@PLT
	movq	8(%rbx), %rdi
	callq	uninit_out_buffer@PLT
	movq	(%rbx), %rdi
	callq	free@PLT
	movq	8(%rbx), %r14
	testq	%r14, %r14
	je	.LBB14_59
# %bb.26:                               # %if.then.i61
	movq	%r14, %rdi
	callq	free_annex_b@PLT
	movq	856728(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB14_28
# %bb.27:                               # %if.then2.i
	callq	free@PLT
	movq	$0, 856728(%r14)
.LBB14_28:                              # %if.end.i62
	movq	856616(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB14_30
# %bb.29:                               # %if.then6.i
	callq	free@PLT
	movq	$0, 856616(%r14)
.LBB14_30:                              # %if.end9.i
	movq	856664(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB14_32
# %bb.31:                               # %if.then11.i
	callq	free@PLT
	movq	$0, 856664(%r14)
.LBB14_32:                              # %if.end14.i
	movq	856672(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB14_34
# %bb.33:                               # %if.then17.i
	callq	free@PLT
	movq	$0, 856672(%r14)
.LBB14_34:                              # %for.inc.i
	movq	856680(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB14_36
# %bb.35:                               # %if.then17.1.i
	callq	free@PLT
	movq	$0, 856680(%r14)
.LBB14_36:                              # %for.inc.1.i
	movq	$0, 856656(%r14)
	movq	848704(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB14_38
# %bb.37:                               # %if.then26.i63
	callq	free@PLT
	movq	$0, 848704(%r14)
.LBB14_38:                              # %if.end29.i
	movq	848696(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB14_40
# %bb.39:                               # %if.then31.i64
	callq	free@PLT
	movq	$0, 848696(%r14)
.LBB14_40:                              # %if.end34.i
	movq	848880(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB14_42
# %bb.41:                               # %if.then35.i
	callq	free_slice
	movq	$0, 848880(%r14)
.LBB14_42:                              # %if.end38.i
	movq	848736(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB14_50
# %bb.43:                               # %for.cond42.preheader.i
	movl	848724(%r14), %eax
	testl	%eax, %eax
	jle	.LBB14_49
# %bb.44:                               # %for.body44.i.preheader
	xorl	%r15d, %r15d
	jmp	.LBB14_45
	.p2align	4, 0x90
.LBB14_47:                              # %for.inc54.i
                                        #   in Loop: Header=BB14_45 Depth=1
	incq	%r15
	movslq	%eax, %rcx
	cmpq	%rcx, %r15
	jge	.LBB14_48
.LBB14_45:                              # %for.body44.i
                                        # =>This Inner Loop Header: Depth=1
	movq	848736(%r14), %rcx
	movq	(%rcx,%r15,8), %rdi
	testq	%rdi, %rdi
	je	.LBB14_47
# %bb.46:                               # %if.then49.i
                                        #   in Loop: Header=BB14_45 Depth=1
	callq	free_slice
	movl	848724(%r14), %eax
	jmp	.LBB14_47
.LBB14_48:                              # %for.end56.loopexit.i
	movq	848736(%r14), %rdi
.LBB14_49:                              # %for.end56.i
	callq	free@PLT
.LBB14_50:                              # %if.end58.i
	movq	856832(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB14_52
# %bb.51:                               # %if.then60.i
	callq	FreeNALU@PLT
	movq	$0, 856832(%r14)
.LBB14_52:                              # %if.end63.i
	movq	856816(%r14), %r15
	testq	%r15, %r15
	jne	.LBB14_53
.LBB14_56:                              # %FreeDecPicList.exit.i
	movq	856872(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB14_58
# %bb.57:                               # %if.then65.i66
	callq	FreePPS@PLT
.LBB14_58:                              # %if.end68.i
	movq	%r14, %rdi
	callq	free@PLT
.LBB14_59:                              # %free_img.exit
	movq	%rbx, %rdi
	callq	free@PLT
.LBB14_60:                              # %cleanup
	xorl	%eax, %eax
	addq	$328, %rsp                      # imm = 0x148
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
.LBB14_55:                              # %if.end.i.i
                                        #   in Loop: Header=BB14_53 Depth=1
	.cfi_def_cfa_offset 384
	movq	%r15, %rdi
	callq	free@PLT
	movq	%r12, %r15
	testq	%r12, %r12
	je	.LBB14_56
.LBB14_53:                              # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r15), %rdi
	movq	72(%r15), %r12
	testq	%rdi, %rdi
	je	.LBB14_55
# %bb.54:                               # %if.then.i.i
                                        #   in Loop: Header=BB14_53 Depth=1
	callq	free@PLT
	jmp	.LBB14_55
.LBB14_61:                              # %if.then31.i
	leaq	64(%rsp), %rcx
	movl	$errortext, %edi
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.38, %edx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str, %esi
	movl	$errortext, %edx
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$500, %edi                      # imm = 0x1F4
	callq	exit@PLT
.Lfunc_end14:
	.size	CloseDecoder, .Lfunc_end14-CloseDecoder
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function free_slice
	.type	free_slice,@function
free_slice:                             # @free_slice
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
	callq	free_pred_mem@PLT
	movq	1272(%rbx), %rdi
	callq	free_mem3Dint@PLT
	movq	1264(%rbx), %rdi
	callq	free_mem3Dint@PLT
	movq	1256(%rbx), %rdi
	callq	free_mem3Dpel@PLT
	movq	1248(%rbx), %rdi
	callq	free_mem3Dpel@PLT
	movq	13280(%rbx), %rdi
	callq	free_mem3Dint@PLT
	movq	13288(%rbx), %rdi
	callq	free_mem3Dint@PLT
	movq	13296(%rbx), %rdi
	callq	free_mem4Dint@PLT
	movq	312(%rbx), %r14
	movq	(%r14), %rax
	movq	16(%rax), %rdi
	callq	free@PLT
	movq	(%r14), %rdi
	callq	free@PLT
	movq	48(%r14), %rax
	movq	16(%rax), %rdi
	callq	free@PLT
	movq	48(%r14), %rdi
	callq	free@PLT
	movq	96(%r14), %rax
	movq	16(%rax), %rdi
	callq	free@PLT
	movq	96(%r14), %rdi
	callq	free@PLT
	movq	%r14, %rdi
	callq	free@PLT
	movq	320(%rbx), %rdi
	callq	delete_contexts_MotionInfo@PLT
	movq	328(%rbx), %rdi
	callq	delete_contexts_TextureInfo@PLT
	movq	264(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB15_2
# %bb.1:                                # %if.then
	callq	free@PLT
	movq	$0, 264(%rbx)
.LBB15_2:                               # %for.inc
	movq	272(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB15_4
# %bb.3:                                # %if.then.1
	callq	free@PLT
	movq	$0, 272(%rbx)
.LBB15_4:                               # %for.inc.1
	movq	280(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB15_6
# %bb.5:                                # %if.then.2
	callq	free@PLT
	movq	$0, 280(%rbx)
.LBB15_6:                               # %for.inc.2
	movq	288(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB15_8
# %bb.7:                                # %if.then.3
	callq	free@PLT
	movq	$0, 288(%rbx)
.LBB15_8:                               # %for.inc.3
	movq	296(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB15_10
# %bb.9:                                # %if.then.4
	callq	free@PLT
	movq	$0, 296(%rbx)
.LBB15_10:                              # %for.inc.4
	movq	304(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB15_13
# %bb.11:                               # %if.then.5
	callq	free@PLT
	movq	$0, 304(%rbx)
	jmp	.LBB15_13
	.p2align	4, 0x90
.LBB15_12:                              # %while.body
                                        #   in Loop: Header=BB15_13 Depth=1
	movq	24(%rdi), %rax
	movq	%rax, 248(%rbx)
	callq	free@PLT
.LBB15_13:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	248(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.LBB15_12
# %bb.14:                               # %while.end
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end15:
	.size	free_slice, .Lfunc_end15-free_slice
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s\n"
	.size	.L.str, 4

	.type	errortext,@object               # @errortext
	.bss
	.globl	errortext
	.p2align	4, 0x0
errortext:
	.zero	300
	.size	errortext, 300

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"AllocPartition: Memory allocation for Data Partition failed"
	.size	.L.str.1, 60

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"AllocPartition: Memory allocation for Bitstream failed"
	.size	.L.str.2, 55

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"AllocPartition: Memory allocation for streamBuffer failed"
	.size	.L.str.3, 58

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Memory allocation for Slice datastruct in NAL-mode %d failed"
	.size	.L.str.4, 61

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"malloc_slice: currSlice->listX[i]"
	.size	.L.str.5, 34

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"init_global_buffers: p_Vid->mb_data"
	.size	.L.str.6, 36

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"init_global_buffers: p_Vid->intra_block_JV"
	.size	.L.str.7, 43

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"init_global_buffers: p_Vid->intra_block"
	.size	.L.str.8, 40

	.type	PicPos,@object                  # @PicPos
	.bss
	.globl	PicPos
	.p2align	3, 0x0
PicPos:
	.quad	0
	.size	PicPos, 8

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"init_global_buffers: PicPos"
	.size	.L.str.9, 28

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"init_global_buffers: p_Vid->siblock_JV"
	.size	.L.str.10, 39

	.type	p_Dec,@object                   # @p_Dec
	.bss
	.globl	p_Dec
	.p2align	3, 0x0
p_Dec:
	.quad	0
	.size	p_Dec, 8

	.type	.L.str.12,@object               # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	" Input reference file                   : %s does not exist \n"
	.size	.L.str.12, 62

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"                                          SNR values are not available\n"
	.size	.L.str.13, 72

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"alloc_decoder: p_Dec\n"
	.size	.L.str.14, 22

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"alloc_video_params: p_Vid"
	.size	.L.str.15, 26

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"alloc_video_params: p_Vid->old_slice"
	.size	.L.str.16, 37

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"alloc_video_params: p_Vid->snr"
	.size	.L.str.17, 31

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"alloc_video_params: p_Vid->p_Dpb_legacy"
	.size	.L.str.18, 40

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"alloc_video_params: p_Vid->p_Dpb_layer[i]"
	.size	.L.str.19, 42

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"alloc_video_params: (*p_Vid)->seiToneMapping"
	.size	.L.str.20, 45

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"alloc_video_params: p_Vid->ppSliceList"
	.size	.L.str.21, 39

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"alloc_params: p_Inp"
	.size	.L.str.22, 20

	.type	Report.yuv_formats,@object      # @Report.yuv_formats
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
Report.yuv_formats:
	.asciz	"400"
	.asciz	"420"
	.asciz	"422"
	.asciz	"444"
	.size	Report.yuv_formats, 16

	.type	.L.str.23,@object               # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"-------------------- Average SNR all frames ------------------------------\n"
	.size	.L.str.23, 76

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	" SNR Y(dB)           : %5.2f\n"
	.size	.L.str.24, 30

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	" SNR U(dB)           : %5.2f\n"
	.size	.L.str.25, 30

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	" SNR V(dB)           : %5.2f\n"
	.size	.L.str.26, 30

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"--------------------------------------------------------------------------\n"
	.size	.L.str.27, 76

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	" Exit JM %s decoder, ver %s "
	.size	.L.str.28, 29

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"17 (FRExt)"
	.size	.L.str.29, 11

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"17.1"
	.size	.L.str.30, 5

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"\n----------------------- Decoding Completed -------------------------------\n"
	.size	.L.str.32, 77

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	" Output status file                     : %s \n"
	.size	.L.str.33, 47

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"log.dec"
	.size	.L.str.34, 8

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"r"
	.size	.L.str.36, 2

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"a"
	.size	.L.str.37, 2

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"Error open file %s for appending"
	.size	.L.str.38, 33

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	" -------------------------------------------------------------------------------------------------------------------\n"
	.size	.L.str.39, 118

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"|  Decoder statistics. This file is made first time, later runs are appended               |\n"
	.size	.L.str.40, 94

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	" ------------------------------------------------------------------------------------------------------------------- \n"
	.size	.L.str.41, 119

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"|   ver  | Date  | Time  |    Sequence        |#Img| Format  | YUV |Coding|SNRY 1|SNRU 1|SNRV 1|SNRY N|SNRU N|SNRV N|\n"
	.size	.L.str.42, 119

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"|%s/%-4s"
	.size	.L.str.43, 9

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"(FRExt)"
	.size	.L.str.44, 8

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"%d-%b-%Y"
	.size	.L.str.45, 9

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"| %1.5s |"
	.size	.L.str.46, 10

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"%H:%M:%S"
	.size	.L.str.47, 9

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"%20.20s|"
	.size	.L.str.48, 9

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"%3d |"
	.size	.L.str.49, 6

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"%4dx%-4d|"
	.size	.L.str.50, 10

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	" %s |"
	.size	.L.str.51, 6

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	" CAVLC|"
	.size	.L.str.52, 8

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	" CABAC|"
	.size	.L.str.53, 8

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"%6.3f|"
	.size	.L.str.54, 7

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"dataDec.txt"
	.size	.L.str.55, 12

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"%3d %2d %2d %2.2f %2.2f %2.2f %5d %2.2f %2.2f %2.2f %5d %2.2f %2.2f %2.2f %5d %.3f\n"
	.size	.L.str.56, 84

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
