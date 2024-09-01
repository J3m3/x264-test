	.text
	.file	"mbuffer.c"
	.globl	dump_dpb                        # -- Begin function dump_dpb
	.p2align	4, 0x90
	.type	dump_dpb,@function
dump_dpb:                               # @dump_dpb
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end0:
	.size	dump_dpb, .Lfunc_end0-dump_dpb
	.cfi_endproc
                                        # -- End function
	.globl	getDpbSize                      # -- Begin function getDpbSize
	.p2align	4, 0x90
	.type	getDpbSize,@function
getDpbSize:                             # @getDpbSize
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
	movl	3128(%rdi), %eax
	incl	%eax
	movl	3132(%rdi), %edx
	incl	%edx
	imull	%eax, %edx
	cmpl	$0, 3136(%rdi)
	sete	%cl
	shll	%cl, %edx
	shll	$7, %edx
	leal	(%rdx,%rdx,2), %ebx
	movl	28(%rdi), %ecx
	addl	$-9, %ecx
	cmpl	$42, %ecx
	ja	.LBB1_14
# %bb.1:                                # %entry
	movl	$152064, %eax                   # imm = 0x25200
	jmpq	*.LJTI1_0(,%rcx,8)
.LBB1_5:                                # %sw.bb11
	movl	$912384, %eax                   # imm = 0xDEC00
	jmp	.LBB1_15
.LBB1_10:                               # %sw.bb18
	movl	$12582912, %eax                 # imm = 0xC00000
	jmp	.LBB1_15
.LBB1_7:                                # %sw.bb14
	movl	$3110400, %eax                  # imm = 0x2F7600
	jmp	.LBB1_15
.LBB1_11:                               # %sw.bb19
	movl	$13369344, %eax                 # imm = 0xCC0000
	jmp	.LBB1_15
.LBB1_9:                                # %sw.bb16
	movl	$7864320, %eax                  # imm = 0x780000
	jmp	.LBB1_15
.LBB1_2:                                # %sw.bb5
	movl	4(%rdi), %ecx
	cmpl	$100, %ecx
	setae	%dl
	cmpl	$44, %ecx
	sete	%cl
	orb	%dl, %cl
	jne	.LBB1_4
# %bb.3:                                # %land.lhs.true
	cmpl	$1, 20(%rdi)
	je	.LBB1_15
.LBB1_4:                                # %if.else
	movl	$345600, %eax                   # imm = 0x54600
	jmp	.LBB1_15
.LBB1_12:                               # %sw.bb20
	movl	$42393600, %eax                 # imm = 0x286E000
	jmp	.LBB1_15
.LBB1_6:                                # %sw.bb12
	movl	$1824768, %eax                  # imm = 0x1BD800
	jmp	.LBB1_15
.LBB1_13:                               # %sw.bb21
	movl	$70778880, %eax                 # imm = 0x4380000
	jmp	.LBB1_15
.LBB1_8:                                # %sw.bb15
	movl	$6912000, %eax                  # imm = 0x697800
	jmp	.LBB1_15
.LBB1_14:                               # %sw.default
	movq	%rdi, %r14
	movl	$.L.str, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
	movq	%r14, %rdi
	xorl	%eax, %eax
.LBB1_15:                               # %sw.epilog
	xorl	%edx, %edx
	idivl	%ebx
	movl	%eax, %ecx
	cmpl	$16, %eax
	movl	$16, %eax
	cmovll	%ecx, %eax
	cmpl	$0, 3168(%rdi)
	je	.LBB1_20
# %bb.16:                               # %land.lhs.true23
	cmpl	$0, 4088(%rdi)
	je	.LBB1_20
# %bb.17:                               # %if.then25
	movl	4116(%rdi), %ecx
	cmpl	%eax, %ecx
	jle	.LBB1_19
# %bb.18:                               # %if.then28
	movq	%rdi, %rbx
	movl	$.L.str.1, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
	movl	4116(%rbx), %ecx
.LBB1_19:                               # %if.end29
	cmpl	$2, %ecx
	movl	$1, %eax
	cmovgel	%ecx, %eax
.LBB1_20:                               # %if.end33
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	getDpbSize, .Lfunc_end1-getDpbSize
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI1_0:
	.quad	.LBB1_15
	.quad	.LBB1_15
	.quad	.LBB1_2
	.quad	.LBB1_5
	.quad	.LBB1_5
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_5
	.quad	.LBB1_6
	.quad	.LBB1_7
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_7
	.quad	.LBB1_8
	.quad	.LBB1_9
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_10
	.quad	.LBB1_10
	.quad	.LBB1_11
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_12
	.quad	.LBB1_13
                                        # -- End function
	.text
	.globl	check_num_ref                   # -- Begin function check_num_ref
	.p2align	4, 0x90
	.type	check_num_ref,@function
check_num_ref:                          # @check_num_ref
	.cfi_startproc
# %bb.0:                                # %entry
	movl	48(%rdi), %eax
	addl	52(%rdi), %eax
	movl	4164(%rdi), %ecx
	cmpl	$2, %ecx
	movl	$1, %edx
	cmovgel	%ecx, %edx
	cmpl	%edx, %eax
	jle	.LBB2_1
# %bb.2:                                # %if.then
	movl	$.L.str.2, %edi
	movl	$500, %esi                      # imm = 0x1F4
	jmp	error@PLT                       # TAILCALL
.LBB2_1:                                # %if.end
	retq
.Lfunc_end2:
	.size	check_num_ref, .Lfunc_end2-check_num_ref
	.cfi_endproc
                                        # -- End function
	.globl	init_dpb                        # -- Begin function init_dpb
	.p2align	4, 0x90
	.type	init_dpb,@function
init_dpb:                               # @init_dpb
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	16(%rdi), %r12
	movq	%rdi, (%rsi)
	cmpl	$0, 4160(%rsi)
	je	.LBB3_2
# %bb.1:                                # %if.then
	movq	%r14, %rdi
	callq	free_dpb
.LBB3_2:                                # %if.end
	movl	849084(%rbx), %eax
	cmpl	$128, %eax
	je	.LBB3_4
# %bb.3:                                # %if.end
	cmpl	$118, %eax
	jne	.LBB3_5
.LBB3_4:                                # %if.then5
	movq	%rbx, %rdi
	callq	GetMaxDecFrameBuffering
	movl	%eax, %r15d
	addl	$2, %r15d
	movl	%r15d, 40(%r14)
	movl	4(%r12), %eax
	cmpl	$128, %eax
	jne	.LBB3_7
	jmp	.LBB3_8
.LBB3_5:                                # %if.else
	movq	%r12, %rdi
	callq	getDpbSize
	movl	%eax, %r15d
	movl	%r15d, 40(%r14)
	movl	4(%r12), %eax
	cmpl	$128, %eax
	je	.LBB3_8
.LBB3_7:                                # %if.end8
	cmpl	$118, %eax
	jne	.LBB3_9
.LBB3_8:                                # %if.then14
	leal	2(,%r15,2), %r15d
	movl	%r15d, 40(%r14)
.LBB3_9:                                # %if.end18
	movl	3120(%r12), %eax
	movl	%eax, 4164(%r14)
	cmpl	%eax, 4124(%r12)
	jae	.LBB3_11
# %bb.10:                               # %if.then22
	movl	$.L.str.3, %edi
	movl	$1000, %esi                     # imm = 0x3E8
	callq	error@PLT
	movl	40(%r14), %r15d
.LBB3_11:                               # %if.end23
	movq	$0, 44(%r14)
	movq	$0, 4168(%r14)
	movl	$0, 52(%r14)
	movl	%r15d, %r12d
	movl	$8, %esi
	movq	%r12, %rdi
	callq	calloc@PLT
	movq	%rax, 16(%r14)
	testq	%rax, %rax
	jne	.LBB3_13
# %bb.12:                               # %if.then29
	movl	$.L.str.4, %edi
	callq	no_mem_exit@PLT
	movl	40(%r14), %r12d
	movl	%r12d, %r15d
.LBB3_13:                               # %if.end30
	movl	$8, %esi
	movq	%r12, %rdi
	callq	calloc@PLT
	movq	%rax, 24(%r14)
	testq	%rax, %rax
	jne	.LBB3_15
# %bb.14:                               # %if.then37
	movl	$.L.str.5, %edi
	callq	no_mem_exit@PLT
	movl	40(%r14), %r12d
	movl	%r12d, %r15d
.LBB3_15:                               # %if.end38
	movl	$8, %esi
	movq	%r12, %rdi
	callq	calloc@PLT
	movq	%rax, 32(%r14)
	testq	%rax, %rax
	jne	.LBB3_17
# %bb.16:                               # %if.then45
	movl	$.L.str.6, %edi
	callq	no_mem_exit@PLT
	movl	40(%r14), %r15d
.LBB3_17:                               # %if.end46
	testl	%r15d, %r15d
	je	.LBB3_22
# %bb.18:                               # %for.body.preheader
	xorl	%r12d, %r12d
	jmp	.LBB3_19
	.p2align	4, 0x90
.LBB3_21:                               # %alloc_frame_store.exit
                                        #   in Loop: Header=BB3_19 Depth=1
	movq	16(%r14), %rax
	movq	%r15, (%rax,%r12,8)
	movq	24(%r14), %rax
	movq	$0, (%rax,%r12,8)
	movq	32(%r14), %rax
	movq	$0, (%rax,%r12,8)
	movq	16(%r14), %rax
	movq	(%rax,%r12,8), %rax
	movl	$-1, 72(%rax)
	movq	16(%r14), %rax
	movq	(%rax,%r12,8), %rax
	movl	$0, 80(%rax)
	movq	16(%r14), %rax
	movq	(%rax,%r12,8), %rax
	movl	$0, 76(%rax)
	movq	16(%r14), %rax
	movq	(%rax,%r12,8), %rax
	movl	$0, 88(%rax)
	movq	16(%r14), %rax
	movq	(%rax,%r12,8), %rax
	movl	$0, 84(%rax)
	incq	%r12
	movl	40(%r14), %eax
	cmpq	%rax, %r12
	jae	.LBB3_22
.LBB3_19:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %edi
	movl	$96, %esi
	callq	calloc@PLT
	movq	%rax, %r15
	testq	%rax, %rax
	jne	.LBB3_21
# %bb.20:                               # %if.then.i
                                        #   in Loop: Header=BB3_19 Depth=1
	movl	$.L.str.10, %edi
	callq	no_mem_exit@PLT
	jmp	.LBB3_21
.LBB3_22:                               # %for.end
	movl	848780(%rbx), %edx
	movl	848784(%rbx), %ecx
	movl	848788(%rbx), %r8d
	movl	848792(%rbx), %r9d
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	alloc_storable_picture
	movq	%rax, 856488(%rbx)
	movq	%rax, 224(%rax)
	movq	856488(%rbx), %rax
	movq	%rax, 232(%rax)
	movq	%rax, 240(%rax)
	movq	$-2147483648, 56(%r14)          # imm = 0x80000000
	movl	$0, 849028(%rbx)
	movl	$1, 4160(%r14)
	cmpl	$0, 849240(%rbx)
	je	.LBB3_26
# %bb.23:                               # %if.then89
	movl	$1, %edi
	movl	$96, %esi
	callq	calloc@PLT
	movq	%rax, %r14
	testq	%rax, %rax
	jne	.LBB3_25
# %bb.24:                               # %if.then.i160
	movl	$.L.str.10, %edi
	callq	no_mem_exit@PLT
.LBB3_25:                               # %alloc_frame_store.exit161
	movq	%r14, 856048(%rbx)
.LBB3_26:                               # %if.end91
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
	retq
.Lfunc_end3:
	.size	init_dpb, .Lfunc_end3-init_dpb
	.cfi_endproc
                                        # -- End function
	.globl	free_dpb                        # -- Begin function free_dpb
	.p2align	4, 0x90
	.type	free_dpb,@function
free_dpb:                               # @free_dpb
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
	movq	%rdi, %rbx
	movq	(%rdi), %r15
	movq	16(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB4_14
# %bb.1:                                # %for.cond.preheader
	movl	40(%rbx), %eax
	testl	%eax, %eax
	je	.LBB4_13
# %bb.2:                                # %for.body.preheader
	xorl	%r12d, %r12d
	jmp	.LBB4_3
	.p2align	4, 0x90
.LBB4_10:                               # %if.end14.i
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	%r14, %rdi
	callq	free@PLT
	movl	40(%rbx), %eax
.LBB4_11:                               # %free_frame_store.exit
                                        #   in Loop: Header=BB4_3 Depth=1
	incq	%r12
	movl	%eax, %ecx
	cmpq	%rcx, %r12
	jae	.LBB4_12
.LBB4_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rbx), %rcx
	movq	(%rcx,%r12,8), %r14
	testq	%r14, %r14
	je	.LBB4_11
# %bb.4:                                # %if.then.i
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	48(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB4_6
# %bb.5:                                # %if.then2.i
                                        #   in Loop: Header=BB4_3 Depth=1
	callq	free_storable_picture
	movq	$0, 48(%r14)
.LBB4_6:                                # %if.end.i
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	56(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB4_8
# %bb.7:                                # %if.then6.i
                                        #   in Loop: Header=BB4_3 Depth=1
	callq	free_storable_picture
	movq	$0, 56(%r14)
.LBB4_8:                                # %if.end9.i
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	64(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB4_10
# %bb.9:                                # %if.then11.i
                                        #   in Loop: Header=BB4_3 Depth=1
	callq	free_storable_picture
	jmp	.LBB4_10
.LBB4_12:                               # %for.end.loopexit
	movq	16(%rbx), %rdi
.LBB4_13:                               # %for.end
	callq	free@PLT
	movq	$0, 16(%rbx)
.LBB4_14:                               # %if.end
	movq	24(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB4_16
# %bb.15:                               # %if.then6
	callq	free@PLT
.LBB4_16:                               # %if.end8
	movq	32(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB4_18
# %bb.17:                               # %if.then10
	callq	free@PLT
.LBB4_18:                               # %if.end12
	movq	$-2147483648, 56(%rbx)          # imm = 0x80000000
	movl	$0, 4160(%rbx)
	cmpl	$0, 849240(%r15)
	je	.LBB4_27
# %bb.19:                               # %if.then14
	movq	856048(%r15), %rbx
	testq	%rbx, %rbx
	je	.LBB4_27
# %bb.20:                               # %if.then.i34
	movq	48(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB4_22
# %bb.21:                               # %if.then2.i37
	callq	free_storable_picture
	movq	$0, 48(%rbx)
.LBB4_22:                               # %if.end.i38
	movq	56(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB4_24
# %bb.23:                               # %if.then6.i41
	callq	free_storable_picture
	movq	$0, 56(%rbx)
.LBB4_24:                               # %if.end9.i42
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB4_26
# %bb.25:                               # %if.then11.i45
	callq	free_storable_picture
.LBB4_26:                               # %if.end14.i46
	movq	%rbx, %rdi
	callq	free@PLT
.LBB4_27:                               # %if.end15
	movq	856488(%r15), %rdi
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
	jmp	free_storable_picture           # TAILCALL
.Lfunc_end4:
	.size	free_dpb, .Lfunc_end4-free_dpb
	.cfi_endproc
                                        # -- End function
	.globl	GetMaxDecFrameBuffering         # -- Begin function GetMaxDecFrameBuffering
	.p2align	4, 0x90
	.type	GetMaxDecFrameBuffering,@function
GetMaxDecFrameBuffering:                # @GetMaxDecFrameBuffering
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
	leaq	4148(%rdi), %r12
	xorl	%r13d, %r13d
	movl	$1, %ebp
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	jmp	.LBB5_1
	.p2align	4, 0x90
.LBB5_14:                               # %if.end38
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$2, %ecx
	cmovll	%ebp, %ecx
	movl	%ecx, %eax
.LBB5_15:                               # %if.end42
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	%r14d, %eax
	cmovgl	%eax, %r14d
.LBB5_16:                               # %if.end46
                                        #   in Loop: Header=BB5_1 Depth=1
	addq	$4128, %r12                     # imm = 0x1020
	addq	$4664, %r13                     # imm = 0x1238
	cmpl	$149248, %r13d                  # imm = 0x24700
	je	.LBB5_17
.LBB5_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 703692(%rbx,%r13)
	je	.LBB5_9
# %bb.2:                                # %land.lhs.true
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$31, 699456(%rbx,%r13)
	ja	.LBB5_9
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	703548(%rbx,%r13), %eax
	cmpl	$0, 702592(%rbx,%r13)
	je	.LBB5_8
# %bb.4:                                # %land.lhs.true6
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$0, 703512(%rbx,%r13)
	je	.LBB5_8
# %bb.5:                                # %if.then9
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	703540(%rbx,%r13), %ecx
	cmpl	%eax, %ecx
	jle	.LBB5_7
# %bb.6:                                # %if.then14
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$.L.str.1, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
	movl	703540(%rbx,%r13), %ecx
.LBB5_7:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$2, %ecx
	cmovll	%ebp, %ecx
	movl	%ecx, %eax
.LBB5_8:                                # %if.end18
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	%r15d, %eax
	cmovgl	%eax, %r15d
.LBB5_9:                                # %if.end22
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$0, -4124(%r12)
	je	.LBB5_16
# %bb.10:                               # %if.then25
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	(%r12), %eax
	cmpl	$0, -956(%r12)
	je	.LBB5_15
# %bb.11:                               # %land.lhs.true29
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$0, -36(%r12)
	je	.LBB5_15
# %bb.12:                               # %if.then33
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-8(%r12), %ecx
	cmpl	%eax, %ecx
	jle	.LBB5_14
# %bb.13:                               # %if.then37
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$.L.str.1, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
	movl	-8(%r12), %ecx
	jmp	.LBB5_14
.LBB5_17:                               # %for.end
	leal	(%r15,%r14), %eax
	testl	%r14d, %r14d
	movl	%r15d, %ecx
	cmovgl	%r14d, %ecx
	addl	%ecx, %ecx
	testl	%r15d, %r15d
	cmovlel	%ecx, %eax
	testl	%r14d, %r14d
	cmovlel	%ecx, %eax
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
.Lfunc_end5:
	.size	GetMaxDecFrameBuffering, .Lfunc_end5-GetMaxDecFrameBuffering
	.cfi_endproc
                                        # -- End function
	.globl	alloc_frame_store               # -- Begin function alloc_frame_store
	.p2align	4, 0x90
	.type	alloc_frame_store,@function
alloc_frame_store:                      # @alloc_frame_store
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$1, %edi
	movl	$96, %esi
	callq	calloc@PLT
	testq	%rax, %rax
	je	.LBB6_1
# %bb.2:                                # %if.end
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB6_1:                                # %if.then
	.cfi_def_cfa_offset 16
	movl	$.L.str.10, %edi
	movq	%rax, %rbx
	callq	no_mem_exit@PLT
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	alloc_frame_store, .Lfunc_end6-alloc_frame_store
	.cfi_endproc
                                        # -- End function
	.globl	alloc_storable_picture          # -- Begin function alloc_storable_picture
	.p2align	4, 0x90
	.type	alloc_storable_picture,@function
alloc_storable_picture:                 # @alloc_storable_picture
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
                                        # kill: def $r9d killed $r9d def $r9
	movq	%r9, 8(%rsp)                    # 8-byte Spill
                                        # kill: def $r8d killed $r8d def $r8
	movq	%r8, 32(%rsp)                   # 8-byte Spill
	movl	%ecx, %ebp
	movl	%edx, %r13d
	movl	%esi, %r12d
	movq	%rdi, %r14
	movq	16(%rdi), %r15
	movl	$1, %edi
	movl	$416, %esi                      # imm = 0x1A0
	callq	calloc@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB7_2
# %bb.1:                                # %if.then
	movl	$.L.str.12, %edi
	callq	no_mem_exit@PLT
.LBB7_2:                                # %if.end
	testl	%r12d, %r12d
	je	.LBB7_4
# %bb.3:                                # %if.then3
	movl	%ebp, %eax
	shrl	$31, %eax
	addl	%ebp, %eax
	sarl	%eax
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%edx, %ecx
	sarl	%ecx
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movl	%eax, %ebp
.LBB7_4:                                # %if.end5
	movl	%r12d, 28(%rsp)                 # 4-byte Spill
	movl	%ebp, %eax
	imull	%r13d, %eax
	leal	255(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	sarl	$8, %ecx
	movl	%ecx, 108(%rbx)
	movq	$0, 136(%rbx)
	leaq	128(%rbx), %rdi
	movl	856840(%r14), %r8d
	movl	856844(%r14), %ecx
	movl	%ebp, %esi
	movl	%r13d, %edx
	callq	get_mem2DpelWithPad@PLT
	movl	856840(%r14), %eax
	leal	(%r13,%rax,2), %ecx
	movl	%ecx, 356(%rbx)
	movl	856844(%r14), %ecx
	leal	(%rbp,%rcx,2), %edx
	movl	%edx, 364(%rbx)
	cmpl	$0, 36(%r15)
	movq	32(%rsp), %r15                  # 8-byte Reload
	movq	8(%rsp), %r12                   # 8-byte Reload
	je	.LBB7_6
# %bb.5:                                # %if.then14
	leaq	136(%rbx), %rdi
	movl	856848(%r14), %r9d
	movl	856852(%r14), %r8d
	movl	$2, %esi
	movl	%r12d, %edx
	movl	%r15d, %ecx
	callq	get_mem3DpelWithPad@PLT
	movl	856840(%r14), %eax
	movl	856844(%r14), %ecx
.LBB7_6:                                # %if.end17
	movl	856848(%r14), %edx
	leal	(%r15,%rdx,2), %esi
	movl	%esi, 360(%rbx)
	movl	856852(%r14), %esi
	leal	(%r12,%rsi,2), %edi
	movl	%edi, 368(%rbx)
	movl	%ecx, 112(%rbx)
	movl	%eax, 116(%rbx)
	movl	%esi, 120(%rbx)
	movl	%edx, 124(%rbx)
	movl	849280(%r14), %eax
	movl	%eax, 56(%rbx)
	leaq	216(%rbx), %rdi
	leal	15(%rbp), %esi
	leal	15(%r13), %edx
	leal	3(%r13), %r15d
	testl	%r13d, %r13d
	cmovnsl	%r13d, %edx
	cmovnsl	%r13d, %r15d
	leal	3(%rbp), %r12d
	testl	%ebp, %ebp
	cmovnsl	%ebp, %esi
	cmovnsl	%ebp, %r12d
	sarl	$4, %esi
	sarl	$4, %edx
	callq	get_mem2Dshort@PLT
	leaq	152(%rbx), %rdi
	sarl	$2, %r12d
	sarl	$2, %r15d
	movl	%r12d, %esi
	movl	%r15d, %edx
	callq	get_mem2Dmp@PLT
	movl	%r12d, %eax
	imull	%r15d, %eax
	movslq	%eax, %rdi
	movl	$1, %esi
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	callq	calloc@PLT
	movq	%rax, 184(%rbx)
	testq	%rax, %rax
	jne	.LBB7_8
# %bb.7:                                # %if.then.i
	movl	$.L.str.11, %edi
	callq	no_mem_exit@PLT
.LBB7_8:                                # %alloc_pic_motion.exit
	cmpl	$0, 849280(%r14)
	je	.LBB7_15
# %bb.9:                                # %for.cond.preheader
	leaq	160(%rbx), %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	callq	get_mem2Dmp@PLT
	movl	$1, %esi
	movq	16(%rsp), %rdi                  # 8-byte Reload
	callq	calloc@PLT
	movq	%rax, 192(%rbx)
	testq	%rax, %rax
	jne	.LBB7_11
# %bb.10:                               # %if.then.i188
	movl	$.L.str.11, %edi
	callq	no_mem_exit@PLT
.LBB7_11:                               # %alloc_pic_motion.exit189
	leaq	168(%rbx), %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	callq	get_mem2Dmp@PLT
	movl	$1, %esi
	movq	16(%rsp), %rdi                  # 8-byte Reload
	callq	calloc@PLT
	movq	%rax, 200(%rbx)
	testq	%rax, %rax
	jne	.LBB7_13
# %bb.12:                               # %if.then.i188.1
	movl	$.L.str.11, %edi
	callq	no_mem_exit@PLT
.LBB7_13:                               # %alloc_pic_motion.exit189.1
	movq	%rbx, %rdi
	addq	$176, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	callq	get_mem2Dmp@PLT
	movl	$1, %esi
	movq	16(%rsp), %rdi                  # 8-byte Reload
	callq	calloc@PLT
	movq	%rax, 208(%rbx)
	testq	%rax, %rax
	jne	.LBB7_15
# %bb.14:                               # %if.then.i188.2
	movl	$.L.str.11, %edi
	callq	no_mem_exit@PLT
.LBB7_15:                               # %if.end52
	leal	-1(%r13), %eax
	leal	-1(%rbp), %ecx
	movq	32(%rsp), %r8                   # 8-byte Reload
	leal	-1(%r8), %edx
	movq	8(%rsp), %r9                    # 8-byte Reload
	leal	-1(%r9), %esi
	movl	$0, 20(%rbx)
	movq	$0, 44(%rbx)
	movl	$0, 52(%rbx)
	movw	$0, 60(%rbx)
	movq	$0, 28(%rbx)
	movq	$0, 33(%rbx)
	movl	$-1, 344(%rbx)
	movl	28(%rsp), %edi                  # 4-byte Reload
	movl	%edi, (%rbx)
	movl	%r13d, 64(%rbx)
	movl	%ebp, 68(%rbx)
	movl	%r8d, 72(%rbx)
	movl	%r9d, 76(%rbx)
	movl	%eax, 80(%rbx)
	movl	%ecx, 84(%rbx)
	movl	%edx, 88(%rbx)
	movl	%esi, 92(%rbx)
	movq	856488(%r14), %rax
	movq	%rax, 224(%rbx)
	movq	%rax, 232(%rbx)
	movq	%rax, 240(%rbx)
	movq	$0, 312(%rbx)
	movq	$0, 96(%rbx)
	movq	$0, 4(%rbx)
	movl	$0, 12(%rbx)
	movl	$0, 324(%rbx)
	testl	%edi, %edi
	je	.LBB7_21
# %bb.16:                               # %if.end52
	movq	16(%r14), %rax
	cmpl	$0, 3136(%rax)
	jne	.LBB7_21
# %bb.17:                               # %for.cond66.preheader
	movl	$33, %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, 400(%rbx)
	testq	%rax, %rax
	jne	.LBB7_19
# %bb.18:                               # %if.then76
	movl	$.L.str.13, %edi
	callq	no_mem_exit@PLT
.LBB7_19:                               # %for.inc78
	movl	$33, %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, 408(%rbx)
	testq	%rax, %rax
	jne	.LBB7_21
# %bb.20:                               # %if.then76.1
	movl	$.L.str.13, %edi
	callq	no_mem_exit@PLT
.LBB7_21:                               # %if.end81
	movq	%rbx, %rax
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
.Lfunc_end7:
	.size	alloc_storable_picture, .Lfunc_end7-alloc_storable_picture
	.cfi_endproc
                                        # -- End function
	.globl	re_init_dpb                     # -- Begin function re_init_dpb
	.p2align	4, 0x90
	.type	re_init_dpb,@function
re_init_dpb:                            # @re_init_dpb
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
	movq	16(%rdi), %r15
	movl	849084(%rdi), %eax
	cmpl	$128, %eax
	je	.LBB8_2
# %bb.1:                                # %entry
	cmpl	$118, %eax
	jne	.LBB8_3
.LBB8_2:                                # %if.then
	callq	GetMaxDecFrameBuffering
	movl	%eax, %r14d
	addl	$2, %r14d
	movl	4(%r15), %eax
	cmpl	$128, %eax
	jne	.LBB8_5
	jmp	.LBB8_6
.LBB8_3:                                # %if.else
	movq	%r15, %rdi
	callq	getDpbSize
	movl	%eax, %r14d
	movl	4(%r15), %eax
	cmpl	$128, %eax
	je	.LBB8_6
.LBB8_5:                                # %if.end
	cmpl	$118, %eax
	jne	.LBB8_7
.LBB8_6:                                # %if.then10
	leal	2(,%r14,2), %r14d
.LBB8_7:                                # %if.end12
	movl	3120(%r15), %eax
	movl	%eax, 4164(%rbx)
	cmpl	40(%rbx), %r14d
	jle	.LBB8_22
# %bb.8:                                # %if.then15
	cmpl	%eax, 4124(%r15)
	jae	.LBB8_10
# %bb.9:                                # %if.then18
	movl	$.L.str.3, %edi
	movl	$1000, %esi                     # imm = 0x3E8
	callq	error@PLT
.LBB8_10:                               # %if.end19
	movq	16(%rbx), %rdi
	movslq	%r14d, %r15
	shlq	$3, %r15
	movq	%r15, %rsi
	callq	realloc@PLT
	movq	%rax, 16(%rbx)
	testq	%rax, %rax
	jne	.LBB8_12
# %bb.11:                               # %if.then25
	movl	$.L.str.7, %edi
	callq	no_mem_exit@PLT
.LBB8_12:                               # %if.end26
	movq	24(%rbx), %rdi
	movq	%r15, %rsi
	callq	realloc@PLT
	movq	%rax, 24(%rbx)
	testq	%rax, %rax
	jne	.LBB8_14
# %bb.13:                               # %if.then34
	movl	$.L.str.8, %edi
	callq	no_mem_exit@PLT
.LBB8_14:                               # %if.end35
	movq	32(%rbx), %rdi
	movq	%r15, %rsi
	callq	realloc@PLT
	movq	%rax, 32(%rbx)
	testq	%rax, %rax
	je	.LBB8_15
# %bb.16:                               # %if.end44
	movslq	40(%rbx), %r12
	cmpl	%r12d, %r14d
	jg	.LBB8_17
	jmp	.LBB8_21
.LBB8_15:                               # %if.then43
	movl	$.L.str.9, %edi
	callq	no_mem_exit@PLT
	movslq	40(%rbx), %r12
	cmpl	%r12d, %r14d
	jle	.LBB8_21
.LBB8_17:                               # %for.body.preheader
	movl	%r14d, %r13d
	subl	%r12d, %r13d
	shlq	$3, %r12
	xorl	%ebp, %ebp
	jmp	.LBB8_18
	.p2align	4, 0x90
.LBB8_20:                               # %alloc_frame_store.exit
                                        #   in Loop: Header=BB8_18 Depth=1
	movq	16(%rbx), %rax
	addq	%r12, %rax
	movq	%r15, (%rax,%rbp,8)
	movq	24(%rbx), %rax
	addq	%r12, %rax
	movq	$0, (%rax,%rbp,8)
	movq	32(%rbx), %rax
	addq	%r12, %rax
	movq	$0, (%rax,%rbp,8)
	movq	16(%rbx), %rax
	addq	%r12, %rax
	movq	(%rax,%rbp,8), %rax
	movl	$-1, 72(%rax)
	movq	16(%rbx), %rax
	addq	%r12, %rax
	movq	(%rax,%rbp,8), %rax
	movl	$0, 80(%rax)
	movq	16(%rbx), %rax
	addq	%r12, %rax
	movq	(%rax,%rbp,8), %rax
	movl	$0, 76(%rax)
	movq	16(%rbx), %rax
	addq	%r12, %rax
	movq	(%rax,%rbp,8), %rax
	movl	$0, 88(%rax)
	movq	16(%rbx), %rax
	addq	%r12, %rax
	movq	(%rax,%rbp,8), %rax
	movl	$0, 84(%rax)
	incq	%rbp
	cmpl	%ebp, %r13d
	je	.LBB8_21
.LBB8_18:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %edi
	movl	$96, %esi
	callq	calloc@PLT
	movq	%rax, %r15
	testq	%rax, %rax
	jne	.LBB8_20
# %bb.19:                               # %if.then.i
                                        #   in Loop: Header=BB8_18 Depth=1
	movl	$.L.str.10, %edi
	callq	no_mem_exit@PLT
	jmp	.LBB8_20
.LBB8_21:                               # %for.end
	movl	%r14d, 40(%rbx)
.LBB8_22:                               # %if.end78
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
.Lfunc_end8:
	.size	re_init_dpb, .Lfunc_end8-re_init_dpb
	.cfi_endproc
                                        # -- End function
	.globl	free_frame_store                # -- Begin function free_frame_store
	.p2align	4, 0x90
	.type	free_frame_store,@function
free_frame_store:                       # @free_frame_store
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB9_8
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	48(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB9_3
# %bb.2:                                # %if.then2
	callq	free_storable_picture
	movq	$0, 48(%rbx)
.LBB9_3:                                # %if.end
	movq	56(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB9_5
# %bb.4:                                # %if.then6
	callq	free_storable_picture
	movq	$0, 56(%rbx)
.LBB9_5:                                # %if.end9
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB9_7
# %bb.6:                                # %if.then11
	callq	free_storable_picture
.LBB9_7:                                # %if.end14
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.LBB9_8:                                # %if.end15
	.cfi_restore %rbx
	retq
.Lfunc_end9:
	.size	free_frame_store, .Lfunc_end9-free_frame_store
	.cfi_endproc
                                        # -- End function
	.globl	free_storable_picture           # -- Begin function free_storable_picture
	.p2align	4, 0x90
	.type	free_storable_picture,@function
free_storable_picture:                  # @free_storable_picture
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB10_31
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	152(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB10_3
# %bb.2:                                # %if.then2
	callq	free_mem2Dmp@PLT
	movq	$0, 152(%rbx)
.LBB10_3:                               # %if.end
	movq	184(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB10_5
# %bb.4:                                # %if.then.i
	callq	free@PLT
	movq	$0, 184(%rbx)
.LBB10_5:                               # %free_pic_motion.exit
	cmpl	$0, 56(%rbx)
	je	.LBB10_18
# %bb.6:                                # %for.cond.preheader
	movq	160(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB10_8
# %bb.7:                                # %if.then8
	callq	free_mem2Dmp@PLT
	movq	$0, 160(%rbx)
.LBB10_8:                               # %if.end15
	movq	192(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB10_10
# %bb.9:                                # %if.then.i98
	callq	free@PLT
	movq	$0, 192(%rbx)
.LBB10_10:                              # %free_pic_motion.exit99
	movq	168(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB10_12
# %bb.11:                               # %if.then8.1
	callq	free_mem2Dmp@PLT
	movq	$0, 168(%rbx)
.LBB10_12:                              # %if.end15.1
	movq	200(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB10_14
# %bb.13:                               # %if.then.i98.1
	callq	free@PLT
	movq	$0, 200(%rbx)
.LBB10_14:                              # %free_pic_motion.exit99.1
	movq	176(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB10_16
# %bb.15:                               # %if.then8.2
	callq	free_mem2Dmp@PLT
	movq	$0, 176(%rbx)
.LBB10_16:                              # %if.end15.2
	movq	208(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB10_18
# %bb.17:                               # %if.then.i98.2
	callq	free@PLT
	movq	$0, 208(%rbx)
.LBB10_18:                              # %if.end18
	movq	128(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB10_20
# %bb.19:                               # %if.then20
	movl	112(%rbx), %esi
	movl	116(%rbx), %edx
	callq	free_mem2DpelWithPad@PLT
	movq	$0, 128(%rbx)
.LBB10_20:                              # %if.end23
	movq	136(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB10_22
# %bb.21:                               # %if.then25
	movl	120(%rbx), %esi
	movl	124(%rbx), %edx
	callq	free_mem3DpelWithPad@PLT
	movq	$0, 136(%rbx)
.LBB10_22:                              # %if.end28
	movq	216(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB10_24
# %bb.23:                               # %if.then30
	callq	free_mem2Dshort@PLT
	movq	$0, 216(%rbx)
.LBB10_24:                              # %if.end33
	cmpl	$0, 324(%rbx)
	je	.LBB10_26
# %bb.25:                               # %if.then35
	movq	336(%rbx), %rdi
	callq	free@PLT
.LBB10_26:                              # %if.end36
	movq	400(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB10_28
# %bb.27:                               # %if.then43
	callq	free@PLT
	movq	$0, 400(%rbx)
.LBB10_28:                              # %for.inc51
	movq	408(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB10_30
# %bb.29:                               # %if.then43.1
	callq	free@PLT
.LBB10_30:                              # %for.inc51.1
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.LBB10_31:                              # %if.end54
	.cfi_restore %rbx
	retq
.Lfunc_end10:
	.size	free_storable_picture, .Lfunc_end10-free_storable_picture
	.cfi_endproc
                                        # -- End function
	.globl	alloc_pic_motion                # -- Begin function alloc_pic_motion
	.p2align	4, 0x90
	.type	alloc_pic_motion,@function
alloc_pic_motion:                       # @alloc_pic_motion
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	imull	%edx, %esi
	movslq	%esi, %rdi
	movl	$1, %esi
	callq	calloc@PLT
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB11_2
# %bb.1:                                # %if.end
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB11_2:                               # %if.then
	.cfi_def_cfa_offset 16
	movl	$.L.str.11, %edi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	no_mem_exit@PLT                 # TAILCALL
.Lfunc_end11:
	.size	alloc_pic_motion, .Lfunc_end11-alloc_pic_motion
	.cfi_endproc
                                        # -- End function
	.globl	free_pic_motion                 # -- Begin function free_pic_motion
	.p2align	4, 0x90
	.type	free_pic_motion,@function
free_pic_motion:                        # @free_pic_motion
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB12_2
# %bb.1:                                # %if.then
	callq	free@PLT
	movq	$0, (%rbx)
.LBB12_2:                               # %if.end
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end12:
	.size	free_pic_motion, .Lfunc_end12-free_pic_motion
	.cfi_endproc
                                        # -- End function
	.globl	is_short_ref                    # -- Begin function is_short_ref
	.p2align	4, 0x90
	.type	is_short_ref,@function
is_short_ref:                           # @is_short_ref
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	$0, 44(%rdi)
	je	.LBB13_1
# %bb.2:                                # %land.rhs
	xorl	%eax, %eax
	cmpb	$0, 40(%rdi)
	sete	%al
	retq
.LBB13_1:
	xorl	%eax, %eax
	retq
.Lfunc_end13:
	.size	is_short_ref, .Lfunc_end13-is_short_ref
	.cfi_endproc
                                        # -- End function
	.globl	is_long_ref                     # -- Begin function is_long_ref
	.p2align	4, 0x90
	.type	is_long_ref,@function
is_long_ref:                            # @is_long_ref
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	$0, 44(%rdi)
	je	.LBB14_1
# %bb.2:                                # %land.rhs
	xorl	%eax, %eax
	cmpb	$0, 40(%rdi)
	setne	%al
	retq
.LBB14_1:
	xorl	%eax, %eax
	retq
.Lfunc_end14:
	.size	is_long_ref, .Lfunc_end14-is_long_ref
	.cfi_endproc
                                        # -- End function
	.globl	gen_pic_list_from_frame_list    # -- Begin function gen_pic_list_from_frame_list
	.p2align	4, 0x90
	.type	gen_pic_list_from_frame_list,@function
gen_pic_list_from_frame_list:           # @gen_pic_list_from_frame_list
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
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movl	%edx, %ebp
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	testl	%r9d, %r9d
	movl	$is_short_ref, %eax
	movl	$is_long_ref, %r13d
	cmoveq	%rax, %r13
	xorl	%r14d, %r14d
	movl	$0, %r12d
	movl	%edi, 36(%rsp)                  # 4-byte Spill
	cmpl	$1, %edi
	jne	.LBB15_18
# %bb.1:                                # %while.cond.preheader
	testl	%ebp, %ebp
	jle	.LBB15_38
# %bb.2:                                # %for.cond.preheader.preheader
	movl	%ebp, %ebx
	negl	%ebx
	xorl	%r12d, %r12d
	xorl	%r14d, %r14d
	jmp	.LBB15_3
	.p2align	4, 0x90
.LBB15_16:                              #   in Loop: Header=BB15_3 Depth=1
	movl	%ebp, %r12d
.LBB15_17:                              # %for.end47
                                        #   in Loop: Header=BB15_3 Depth=1
	cmpl	%ebp, %r14d
	setl	%al
	cmpl	%ebp, %r12d
	setl	%cl
	orb	%al, %cl
	je	.LBB15_18
.LBB15_3:                               # %for.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_5 Depth 2
                                        #     Child Loop BB15_12 Depth 2
	cmpl	%ebp, %r14d
	jge	.LBB15_10
# %bb.4:                                # %for.body.preheader
                                        #   in Loop: Header=BB15_3 Depth=1
	movslq	%r14d, %rax
	incl	%r14d
	movq	24(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rcx,%rax,8), %r15
	jmp	.LBB15_5
	.p2align	4, 0x90
.LBB15_8:                               # %for.inc
                                        #   in Loop: Header=BB15_5 Depth=2
	leal	(%rbx,%r14), %eax
	incl	%eax
	movl	%r14d, %ecx
	incl	%ecx
	addq	$8, %r15
	movl	%ecx, %r14d
	cmpl	$1, %eax
	je	.LBB15_9
.LBB15_5:                               # %for.body
                                        #   Parent Loop BB15_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r15), %rax
	testb	$1, (%rax)
	je	.LBB15_8
# %bb.6:                                # %if.then6
                                        #   in Loop: Header=BB15_5 Depth=2
	movq	56(%rax), %rdi
	callq	*%r13
	testl	%eax, %eax
	je	.LBB15_8
# %bb.7:                                # %if.then10
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	(%r15), %rax
	movq	56(%rax), %rax
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movsbq	(%rdx), %rcx
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	%rax, (%rsi,%rcx,8)
	incb	(%rdx)
	.p2align	4, 0x90
.LBB15_10:                              # %for.end
                                        #   in Loop: Header=BB15_3 Depth=1
	cmpl	%ebp, %r12d
	jge	.LBB15_17
	jmp	.LBB15_11
	.p2align	4, 0x90
.LBB15_9:                               #   in Loop: Header=BB15_3 Depth=1
	movl	%ebp, %r14d
	cmpl	%ebp, %r12d
	jge	.LBB15_17
.LBB15_11:                              # %for.body23.preheader
                                        #   in Loop: Header=BB15_3 Depth=1
	movslq	%r12d, %rax
	incl	%r12d
	movq	24(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rcx,%rax,8), %r15
	jmp	.LBB15_12
	.p2align	4, 0x90
.LBB15_15:                              # %for.inc45
                                        #   in Loop: Header=BB15_12 Depth=2
	leal	(%rbx,%r12), %eax
	incl	%eax
	movl	%r12d, %ecx
	incl	%ecx
	addq	$8, %r15
	movl	%ecx, %r12d
	cmpl	$1, %eax
	je	.LBB15_16
.LBB15_12:                              # %for.body23
                                        #   Parent Loop BB15_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r15), %rax
	testb	$2, (%rax)
	je	.LBB15_15
# %bb.13:                               # %if.then29
                                        #   in Loop: Header=BB15_12 Depth=2
	movq	64(%rax), %rdi
	callq	*%r13
	testl	%eax, %eax
	je	.LBB15_15
# %bb.14:                               # %if.then34
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	(%r15), %rax
	movq	64(%rax), %rax
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movsbq	(%rdx), %rcx
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	%rax, (%rsi,%rcx,8)
	incb	(%rdx)
	jmp	.LBB15_17
.LBB15_18:                              # %if.end48
	cmpl	$2, 36(%rsp)                    # 4-byte Folded Reload
	jne	.LBB15_38
# %bb.19:                               # %while.cond52.preheader
	cmpl	%ebp, %r14d
	jl	.LBB15_21
# %bb.20:                               # %while.cond52.preheader
	cmpl	%ebp, %r12d
	jl	.LBB15_21
.LBB15_38:                              # %if.end119
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
.LBB15_21:                              # %for.cond60.preheader.preheader
	.cfi_def_cfa_offset 96
	movl	%ebp, %ebx
	negl	%ebx
	.p2align	4, 0x90
.LBB15_22:                              # %for.cond60.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_24 Depth 2
                                        #     Child Loop BB15_31 Depth 2
	cmpl	%ebp, %r12d
	jl	.LBB15_23
# %bb.29:                               # %for.end88
                                        #   in Loop: Header=BB15_22 Depth=1
	cmpl	%ebp, %r14d
	jl	.LBB15_30
.LBB15_36:                              # %for.end117
                                        #   in Loop: Header=BB15_22 Depth=1
	cmpl	%ebp, %r14d
	jl	.LBB15_22
.LBB15_37:                              # %for.end117
                                        #   in Loop: Header=BB15_22 Depth=1
	cmpl	%ebp, %r12d
	jl	.LBB15_22
	jmp	.LBB15_38
	.p2align	4, 0x90
.LBB15_23:                              # %for.body63.preheader
                                        #   in Loop: Header=BB15_22 Depth=1
	movslq	%r12d, %rax
	incl	%r12d
	movq	24(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rcx,%rax,8), %r15
	jmp	.LBB15_24
	.p2align	4, 0x90
.LBB15_27:                              # %for.inc86
                                        #   in Loop: Header=BB15_24 Depth=2
	leal	(%rbx,%r12), %eax
	incl	%eax
	movl	%r12d, %ecx
	incl	%ecx
	addq	$8, %r15
	movl	%ecx, %r12d
	cmpl	$1, %eax
	je	.LBB15_28
.LBB15_24:                              # %for.body63
                                        #   Parent Loop BB15_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r15), %rax
	testb	$2, (%rax)
	je	.LBB15_27
# %bb.25:                               # %if.then69
                                        #   in Loop: Header=BB15_24 Depth=2
	movq	64(%rax), %rdi
	callq	*%r13
	testl	%eax, %eax
	je	.LBB15_27
# %bb.26:                               # %if.then75
                                        #   in Loop: Header=BB15_22 Depth=1
	movq	(%r15), %rax
	movq	64(%rax), %rax
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movsbq	(%rdx), %rcx
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	%rax, (%rsi,%rcx,8)
	incb	(%rdx)
	cmpl	%ebp, %r14d
	jge	.LBB15_36
	jmp	.LBB15_30
	.p2align	4, 0x90
.LBB15_28:                              #   in Loop: Header=BB15_22 Depth=1
	movl	%ebp, %r12d
	cmpl	%ebp, %r14d
	jge	.LBB15_36
.LBB15_30:                              # %for.body92.preheader
                                        #   in Loop: Header=BB15_22 Depth=1
	movslq	%r14d, %rax
	incl	%r14d
	movq	24(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rcx,%rax,8), %r15
	jmp	.LBB15_31
	.p2align	4, 0x90
.LBB15_34:                              # %for.inc115
                                        #   in Loop: Header=BB15_31 Depth=2
	leal	(%rbx,%r14), %eax
	incl	%eax
	movl	%r14d, %ecx
	incl	%ecx
	addq	$8, %r15
	movl	%ecx, %r14d
	cmpl	$1, %eax
	je	.LBB15_35
.LBB15_31:                              # %for.body92
                                        #   Parent Loop BB15_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r15), %rax
	testb	$1, (%rax)
	je	.LBB15_34
# %bb.32:                               # %if.then98
                                        #   in Loop: Header=BB15_31 Depth=2
	movq	56(%rax), %rdi
	callq	*%r13
	testl	%eax, %eax
	je	.LBB15_34
# %bb.33:                               # %if.then104
                                        #   in Loop: Header=BB15_22 Depth=1
	movq	(%r15), %rax
	movq	56(%rax), %rax
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movsbq	(%rdx), %rcx
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	%rax, (%rsi,%rcx,8)
	incb	(%rdx)
	cmpl	%ebp, %r14d
	jge	.LBB15_37
	jmp	.LBB15_22
	.p2align	4, 0x90
.LBB15_35:                              #   in Loop: Header=BB15_22 Depth=1
	movl	%ebp, %r14d
	cmpl	%ebp, %r14d
	jge	.LBB15_37
	jmp	.LBB15_22
.Lfunc_end15:
	.size	gen_pic_list_from_frame_list, .Lfunc_end15-gen_pic_list_from_frame_list
	.cfi_endproc
                                        # -- End function
	.globl	update_pic_num                  # -- Begin function update_pic_num
	.p2align	4, 0x90
	.type	update_pic_num,@function
update_pic_num:                         # @update_pic_num
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	movq	16(%rax), %rax
	movzbl	2068(%rax), %ecx
	addb	$4, %cl
	movl	$1, %edx
	shll	%cl, %edx
	movq	40(%rdi), %rax
	movl	184(%rdi), %ecx
	cmpl	$1, %ecx
	je	.LBB16_1
# %bb.2:                                # %entry
	testl	%ecx, %ecx
	jne	.LBB16_18
# %bb.3:                                # %for.cond.preheader
	movl	48(%rax), %esi
	testl	%esi, %esi
	je	.LBB16_12
# %bb.4:                                # %for.body.lr.ph
	xorl	%ecx, %ecx
	jmp	.LBB16_5
.LBB16_10:                              # %if.then15
                                        #   in Loop: Header=BB16_5 Depth=1
	subl	%r9d, %esi
	movl	%esi, 28(%r8)
	movq	24(%rax), %rsi
	movq	(%rsi,%rcx,8), %rsi
	movl	28(%rsi), %r8d
	movq	48(%rsi), %rsi
	movl	%r8d, 28(%rsi)
	movl	48(%rax), %esi
	.p2align	4, 0x90
.LBB16_11:                              # %for.inc
                                        #   in Loop: Header=BB16_5 Depth=1
	incq	%rcx
	movl	%esi, %r8d
	cmpq	%r8, %rcx
	jae	.LBB16_12
.LBB16_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rax), %r8
	movq	(%r8,%rcx,8), %r8
	cmpl	$3, (%r8)
	jne	.LBB16_11
# %bb.6:                                # %if.then6
                                        #   in Loop: Header=BB16_5 Depth=1
	movq	48(%r8), %r9
	cmpl	$0, 44(%r9)
	je	.LBB16_11
# %bb.7:                                # %land.lhs.true
                                        #   in Loop: Header=BB16_5 Depth=1
	cmpb	$0, 40(%r9)
	jne	.LBB16_11
# %bb.8:                                # %if.then15
                                        #   in Loop: Header=BB16_5 Depth=1
	movl	20(%r8), %esi
	movl	%edx, %r9d
	cmpl	172(%rdi), %esi
	ja	.LBB16_10
# %bb.9:                                # %if.then15
                                        #   in Loop: Header=BB16_5 Depth=1
	xorl	%r9d, %r9d
	jmp	.LBB16_10
.LBB16_12:                              # %for.cond47.preheader
	movl	52(%rax), %ecx
	testl	%ecx, %ecx
	je	.LBB16_36
# %bb.13:                               # %for.body49.lr.ph
	xorl	%edx, %edx
	jmp	.LBB16_14
	.p2align	4, 0x90
.LBB16_17:                              # %for.inc72
                                        #   in Loop: Header=BB16_14 Depth=1
	incq	%rdx
	movl	%ecx, %esi
	cmpq	%rsi, %rdx
	jae	.LBB16_36
.LBB16_14:                              # %for.body49
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%rax), %rsi
	movq	(%rsi,%rdx,8), %rsi
	cmpl	$3, (%rsi)
	jne	.LBB16_17
# %bb.15:                               # %if.then54
                                        #   in Loop: Header=BB16_14 Depth=1
	movq	48(%rsi), %rsi
	cmpb	$0, 40(%rsi)
	je	.LBB16_17
# %bb.16:                               # %if.then61
                                        #   in Loop: Header=BB16_14 Depth=1
	movl	36(%rsi), %ecx
	movl	%ecx, 32(%rsi)
	movl	52(%rax), %ecx
	jmp	.LBB16_17
.LBB16_1:
	xorl	%esi, %esi
	cmpl	$0, 48(%rax)
	jne	.LBB16_20
	jmp	.LBB16_29
.LBB16_18:                              # %if.else79
	movl	$1, %esi
	xorl	%ecx, %ecx
	cmpl	$0, 48(%rax)
	je	.LBB16_29
.LBB16_20:                              # %for.body84.lr.ph
	xorl	%r8d, %r8d
	jmp	.LBB16_21
	.p2align	4, 0x90
.LBB16_28:                              # %for.inc151
                                        #   in Loop: Header=BB16_21 Depth=1
	incq	%r8
	movl	48(%rax), %r9d
	cmpq	%r9, %r8
	jae	.LBB16_29
.LBB16_21:                              # %for.body84
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rax), %r9
	movq	(%r9,%r8,8), %r9
	cmpl	$0, 4(%r9)
	je	.LBB16_28
# %bb.22:                               # %if.then89
                                        #   in Loop: Header=BB16_21 Depth=1
	movl	20(%r9), %r10d
	movl	%edx, %r11d
	cmpl	172(%rdi), %r10d
	ja	.LBB16_24
# %bb.23:                               # %if.then89
                                        #   in Loop: Header=BB16_21 Depth=1
	xorl	%r11d, %r11d
.LBB16_24:                              # %if.then89
                                        #   in Loop: Header=BB16_21 Depth=1
	subl	%r11d, %r10d
	movl	%r10d, 28(%r9)
	movq	24(%rax), %r9
	movq	(%r9,%r8,8), %r9
	movl	4(%r9), %r10d
	testb	$1, %r10b
	je	.LBB16_26
# %bb.25:                               # %if.then121
                                        #   in Loop: Header=BB16_21 Depth=1
	movl	28(%r9), %r10d
	leal	(%rcx,%r10,2), %r10d
	movq	56(%r9), %r9
	movl	%r10d, 28(%r9)
	movq	24(%rax), %r9
	movq	(%r9,%r8,8), %r9
	movl	4(%r9), %r10d
.LBB16_26:                              # %if.end131
                                        #   in Loop: Header=BB16_21 Depth=1
	testb	$2, %r10b
	je	.LBB16_28
# %bb.27:                               # %if.then138
                                        #   in Loop: Header=BB16_21 Depth=1
	movl	28(%r9), %r10d
	leal	(%rsi,%r10,2), %r10d
	movq	64(%r9), %r9
	movl	%r10d, 28(%r9)
	jmp	.LBB16_28
.LBB16_29:                              # %for.cond154.preheader
	cmpl	$0, 52(%rax)
	je	.LBB16_36
# %bb.30:                               # %for.body157.lr.ph
	xorl	%edx, %edx
	jmp	.LBB16_31
	.p2align	4, 0x90
.LBB16_35:                              # %for.inc198
                                        #   in Loop: Header=BB16_31 Depth=1
	incq	%rdx
	movl	52(%rax), %edi
	cmpq	%rdi, %rdx
	jae	.LBB16_36
.LBB16_31:                              # %for.body157
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%rax), %rdi
	movq	(%rdi,%rdx,8), %rdi
	movl	8(%rdi), %r8d
	testb	$1, %r8b
	jne	.LBB16_32
# %bb.33:                               # %if.end177
                                        #   in Loop: Header=BB16_31 Depth=1
	testb	$2, %r8b
	je	.LBB16_35
	jmp	.LBB16_34
	.p2align	4, 0x90
.LBB16_32:                              # %if.then164
                                        #   in Loop: Header=BB16_31 Depth=1
	movq	56(%rdi), %rdi
	movl	36(%rdi), %r8d
	leal	(%rcx,%r8,2), %r8d
	movl	%r8d, 32(%rdi)
	movq	32(%rax), %rdi
	movq	(%rdi,%rdx,8), %rdi
	movl	8(%rdi), %r8d
	testb	$2, %r8b
	je	.LBB16_35
.LBB16_34:                              # %if.then184
                                        #   in Loop: Header=BB16_31 Depth=1
	movq	64(%rdi), %rdi
	movl	36(%rdi), %r8d
	leal	(%rsi,%r8,2), %r8d
	movl	%r8d, 32(%rdi)
	jmp	.LBB16_35
.LBB16_36:                              # %if.end201
	retq
.Lfunc_end16:
	.size	update_pic_num, .Lfunc_end16-update_pic_num
	.cfi_endproc
                                        # -- End function
	.globl	init_lists_i_slice              # -- Begin function init_lists_i_slice
	.p2align	4, 0x90
	.type	init_lists_i_slice,@function
init_lists_i_slice:                     # @init_lists_i_slice
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$0, 13308(%rdi)
	movw	$0, 256(%rdi)
	retq
.Lfunc_end17:
	.size	init_lists_i_slice, .Lfunc_end17-init_lists_i_slice
	.cfi_endproc
                                        # -- End function
	.globl	init_lists_p_slice              # -- Begin function init_lists_p_slice
	.p2align	4, 0x90
	.type	init_lists_p_slice,@function
init_lists_p_slice:                     # @init_lists_p_slice
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
	movq	%rdi, %rbx
	movq	(%rdi), %r13
	movq	40(%rdi), %r14
	movl	104(%rdi), %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	movl	1176(%rdi), %ebp
	movl	1184(%rdi), %eax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	$0, 13308(%rdi)
	cmpl	$0, 184(%rdi)
	je	.LBB18_1
# %bb.20:                               # %if.else
	movl	40(%r14), %r12d
	movl	$8, %esi
	movq	%r12, %rdi
	callq	calloc@PLT
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	testq	%rax, %rax
	jne	.LBB18_22
# %bb.21:                               # %if.then93
	movl	$.L.str.14, %edi
	callq	no_mem_exit@PLT
	movl	40(%r14), %r12d
.LBB18_22:                              # %if.end94
	movq	%r13, 32(%rsp)                  # 8-byte Spill
	movl	$8, %esi
	movq	%r12, %rdi
	callq	calloc@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.LBB18_24
# %bb.23:                               # %if.then100
	movl	$.L.str.15, %edi
	callq	no_mem_exit@PLT
.LBB18_24:                              # %if.end101
	movl	48(%r14), %eax
	xorl	%r15d, %r15d
	movl	$0, %r13d
	testq	%rax, %rax
	movq	16(%rsp), %rdi                  # 8-byte Reload
	je	.LBB18_39
# %bb.25:                               # %for.body106.lr.ph
	movq	24(%r14), %rcx
	cmpl	$1, %eax
	jne	.LBB18_27
# %bb.26:
	xorl	%edx, %edx
	xorl	%r13d, %r13d
.LBB18_35:                              # %for.end128.loopexit.unr-lcssa
	testb	$1, %al
	je	.LBB18_39
# %bb.36:                               # %for.body106.epil
	movq	(%rcx,%rdx,8), %rax
	cmpl	$0, 4(%rax)
	je	.LBB18_39
# %bb.37:                               # %land.lhs.true111.epil
	cmpl	%ebp, 72(%rax)
	jne	.LBB18_39
# %bb.38:                               # %if.then118.epil
	movslq	%r13d, %rcx
	incl	%r13d
	movq	%rax, (%rdi,%rcx,8)
.LBB18_39:                              # %for.end128
	movslq	%r13d, %rsi
	movl	$8, %edx
	movl	$compare_fs_by_frame_num_desc, %ecx
	callq	qsort@PLT
	movq	16(%rsp), %r11                  # 8-byte Reload
	movb	$0, 256(%rbx)
	movl	184(%rbx), %esi
	movq	264(%rbx), %rax
	movl	$0, %ecx
	movl	$0, %edx
	cmpl	$1, %esi
	jne	.LBB18_59
# %bb.40:                               # %while.cond.preheader.i
	testl	%r13d, %r13d
	jle	.LBB18_81
# %bb.41:                               # %for.cond.preheader.i.preheader
	movl	%r13d, %edi
	negl	%edi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%r15d, %r15d
	jmp	.LBB18_42
	.p2align	4, 0x90
.LBB18_57:                              #   in Loop: Header=BB18_42 Depth=1
	movl	%r13d, %edx
.LBB18_58:                              # %for.end47.i
                                        #   in Loop: Header=BB18_42 Depth=1
	cmpl	%r13d, %r15d
	setl	%r8b
	cmpl	%r13d, %edx
	setl	%r9b
	orb	%r8b, %r9b
	je	.LBB18_59
.LBB18_42:                              # %for.cond.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_44 Depth 2
                                        #     Child Loop BB18_52 Depth 2
	cmpl	%r13d, %r15d
	jge	.LBB18_50
# %bb.43:                               # %for.body.preheader.i
                                        #   in Loop: Header=BB18_42 Depth=1
	movslq	%r15d, %r8
	incl	%r15d
	leaq	(%r11,%r8,8), %r8
	jmp	.LBB18_44
	.p2align	4, 0x90
.LBB18_48:                              # %for.inc.i
                                        #   in Loop: Header=BB18_44 Depth=2
	leal	(%rdi,%r15), %r9d
	incl	%r9d
	movl	%r15d, %r10d
	incl	%r10d
	addq	$8, %r8
	movl	%r10d, %r15d
	cmpl	$1, %r9d
	je	.LBB18_49
.LBB18_44:                              # %for.body.i
                                        #   Parent Loop BB18_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r8), %r9
	testb	$1, (%r9)
	je	.LBB18_48
# %bb.45:                               # %if.then6.i
                                        #   in Loop: Header=BB18_44 Depth=2
	movq	56(%r9), %r9
	cmpl	$0, 44(%r9)
	je	.LBB18_48
# %bb.46:                               # %is_short_ref.exit547
                                        #   in Loop: Header=BB18_44 Depth=2
	cmpb	$0, 40(%r9)
	jne	.LBB18_48
# %bb.47:                               # %if.then10.i
                                        #   in Loop: Header=BB18_42 Depth=1
	movsbq	%cl, %rcx
	movq	%r9, (%rax,%rcx,8)
	movzbl	256(%rbx), %ecx
	incb	%cl
	movb	%cl, 256(%rbx)
	jmp	.LBB18_50
	.p2align	4, 0x90
.LBB18_49:                              #   in Loop: Header=BB18_42 Depth=1
	movl	%r13d, %r15d
.LBB18_50:                              # %for.end.i
                                        #   in Loop: Header=BB18_42 Depth=1
	cmpl	%r13d, %edx
	jge	.LBB18_58
# %bb.51:                               # %for.body23.preheader.i
                                        #   in Loop: Header=BB18_42 Depth=1
	movslq	%edx, %r8
	incl	%edx
	leaq	(%r11,%r8,8), %r8
	jmp	.LBB18_52
	.p2align	4, 0x90
.LBB18_56:                              # %for.inc45.i
                                        #   in Loop: Header=BB18_52 Depth=2
	leal	(%rdi,%rdx), %r9d
	incl	%r9d
                                        # kill: def $edx killed $edx killed $rdx
	incl	%edx
	addq	$8, %r8
                                        # kill: def $edx killed $edx def $rdx
	cmpl	$1, %r9d
	je	.LBB18_57
.LBB18_52:                              # %for.body23.i
                                        #   Parent Loop BB18_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r8), %r9
	testb	$2, (%r9)
	je	.LBB18_56
# %bb.53:                               # %if.then29.i
                                        #   in Loop: Header=BB18_52 Depth=2
	movq	64(%r9), %r9
	cmpl	$0, 44(%r9)
	je	.LBB18_56
# %bb.54:                               # %is_short_ref.exit540
                                        #   in Loop: Header=BB18_52 Depth=2
	cmpb	$0, 40(%r9)
	jne	.LBB18_56
# %bb.55:                               # %if.then34.i
                                        #   in Loop: Header=BB18_42 Depth=1
	movsbq	%cl, %rcx
	movq	%r9, (%rax,%rcx,8)
	movzbl	256(%rbx), %ecx
	incb	%cl
	movb	%cl, 256(%rbx)
	jmp	.LBB18_58
.LBB18_59:                              # %if.end48.i
	cmpl	$2, %esi
	jne	.LBB18_81
# %bb.60:                               # %while.cond52.preheader.i
	cmpl	%r13d, %r15d
	jl	.LBB18_62
# %bb.61:                               # %while.cond52.preheader.i
	cmpl	%r13d, %edx
	jl	.LBB18_62
.LBB18_81:                              # %gen_pic_list_from_frame_list.exit
	movl	52(%r14), %eax
	xorl	%r13d, %r13d
	movl	$0, %r15d
	testq	%rax, %rax
	je	.LBB18_93
# %bb.82:                               # %for.body141.lr.ph
	movq	32(%r14), %rcx
	cmpl	$1, %eax
	jne	.LBB18_84
# %bb.83:
	xorl	%edx, %edx
	xorl	%r15d, %r15d
.LBB18_90:                              # %for.end158.loopexit.unr-lcssa
	testb	$1, %al
	je	.LBB18_93
# %bb.91:                               # %for.body141.epil
	movq	(%rcx,%rdx,8), %rax
	cmpl	%ebp, 72(%rax)
	jne	.LBB18_93
# %bb.92:                               # %if.then148.epil
	movslq	%r15d, %rcx
	incl	%r15d
	movq	%rax, (%r12,%rcx,8)
.LBB18_93:                              # %for.end158
	movslq	%r15d, %rsi
	movl	$8, %edx
	movl	$compare_fs_by_lt_pic_idx_asc, %ecx
	movq	%r12, %rdi
	callq	qsort@PLT
	movl	184(%rbx), %edx
	movq	264(%rbx), %rax
	movl	$0, %ecx
	cmpl	$1, %edx
	movq	16(%rsp), %r10                  # 8-byte Reload
	jne	.LBB18_113
# %bb.94:                               # %while.cond.preheader.i460
	testl	%r15d, %r15d
	jle	.LBB18_135
# %bb.95:                               # %for.cond.preheader.i462.preheader
	movl	%r15d, %esi
	negl	%esi
	xorl	%ecx, %ecx
	xorl	%r13d, %r13d
	jmp	.LBB18_96
	.p2align	4, 0x90
.LBB18_111:                             #   in Loop: Header=BB18_96 Depth=1
	movl	%r15d, %ecx
.LBB18_112:                             # %for.end47.i469
                                        #   in Loop: Header=BB18_96 Depth=1
	cmpl	%r15d, %r13d
	setl	%dil
	cmpl	%r15d, %ecx
	setl	%r8b
	orb	%dil, %r8b
	je	.LBB18_113
.LBB18_96:                              # %for.cond.preheader.i462
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_98 Depth 2
                                        #     Child Loop BB18_106 Depth 2
	cmpl	%r15d, %r13d
	jge	.LBB18_104
# %bb.97:                               # %for.body.preheader.i494
                                        #   in Loop: Header=BB18_96 Depth=1
	movslq	%r13d, %rdi
	incl	%r13d
	leaq	(%r12,%rdi,8), %rdi
	jmp	.LBB18_98
	.p2align	4, 0x90
.LBB18_102:                             # %for.inc.i511
                                        #   in Loop: Header=BB18_98 Depth=2
	leal	(%rsi,%r13), %r8d
	incl	%r8d
	movl	%r13d, %r9d
	incl	%r9d
	addq	$8, %rdi
	movl	%r9d, %r13d
	cmpl	$1, %r8d
	je	.LBB18_103
.LBB18_98:                              # %for.body.i495
                                        #   Parent Loop BB18_96 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %r8
	testb	$1, (%r8)
	je	.LBB18_102
# %bb.99:                               # %if.then6.i500
                                        #   in Loop: Header=BB18_98 Depth=2
	movq	56(%r8), %r8
	cmpl	$0, 44(%r8)
	je	.LBB18_102
# %bb.100:                              # %is_long_ref.exit573
                                        #   in Loop: Header=BB18_98 Depth=2
	cmpb	$0, 40(%r8)
	je	.LBB18_102
# %bb.101:                              # %if.then10.i504
                                        #   in Loop: Header=BB18_96 Depth=1
	movsbq	256(%rbx), %rdi
	movq	%r8, (%rax,%rdi,8)
	incb	256(%rbx)
	jmp	.LBB18_104
	.p2align	4, 0x90
.LBB18_103:                             #   in Loop: Header=BB18_96 Depth=1
	movl	%r15d, %r13d
.LBB18_104:                             # %for.end.i466
                                        #   in Loop: Header=BB18_96 Depth=1
	cmpl	%r15d, %ecx
	jge	.LBB18_112
# %bb.105:                              # %for.body23.preheader.i473
                                        #   in Loop: Header=BB18_96 Depth=1
	movslq	%ecx, %rdi
	incl	%ecx
	leaq	(%r12,%rdi,8), %rdi
	jmp	.LBB18_106
	.p2align	4, 0x90
.LBB18_110:                             # %for.inc45.i490
                                        #   in Loop: Header=BB18_106 Depth=2
	leal	(%rsi,%rcx), %r8d
	incl	%r8d
                                        # kill: def $ecx killed $ecx killed $rcx
	incl	%ecx
	addq	$8, %rdi
                                        # kill: def $ecx killed $ecx def $rcx
	cmpl	$1, %r8d
	je	.LBB18_111
.LBB18_106:                             # %for.body23.i474
                                        #   Parent Loop BB18_96 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %r8
	testb	$2, (%r8)
	je	.LBB18_110
# %bb.107:                              # %if.then29.i479
                                        #   in Loop: Header=BB18_106 Depth=2
	movq	64(%r8), %r8
	cmpl	$0, 44(%r8)
	je	.LBB18_110
# %bb.108:                              # %is_long_ref.exit566
                                        #   in Loop: Header=BB18_106 Depth=2
	cmpb	$0, 40(%r8)
	je	.LBB18_110
# %bb.109:                              # %if.then34.i483
                                        #   in Loop: Header=BB18_96 Depth=1
	movsbq	256(%rbx), %rdi
	movq	%r8, (%rax,%rdi,8)
	incb	256(%rbx)
	jmp	.LBB18_112
.LBB18_113:                             # %if.end48.i400
	cmpl	$2, %edx
	jne	.LBB18_135
# %bb.114:                              # %while.cond52.preheader.i404
	cmpl	%r15d, %r13d
	jl	.LBB18_116
# %bb.115:                              # %while.cond52.preheader.i404
	cmpl	%r15d, %ecx
	jl	.LBB18_116
.LBB18_135:                             # %gen_pic_list_from_frame_list.exit515
	movq	%r10, %rdi
	callq	free@PLT
	movq	%r12, %rdi
	callq	free@PLT
	movq	32(%rsp), %r13                  # 8-byte Reload
	movb	$0, 257(%rbx)
	cmpl	$0, 32(%rbx)
	jne	.LBB18_162
	jmp	.LBB18_137
.LBB18_1:                               # %for.cond.preheader
	movl	48(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB18_2
# %bb.3:                                # %for.body.lr.ph
	xorl	%eax, %eax
	xorl	%r12d, %r12d
	jmp	.LBB18_4
	.p2align	4, 0x90
.LBB18_9:                               # %for.inc
                                        #   in Loop: Header=BB18_4 Depth=1
	incq	%rax
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jae	.LBB18_10
.LBB18_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r14), %rdx
	movq	(%rdx,%rax,8), %rdx
	cmpl	$3, (%rdx)
	jne	.LBB18_9
# %bb.5:                                # %if.then6
                                        #   in Loop: Header=BB18_4 Depth=1
	movq	48(%rdx), %rdx
	cmpl	$0, 44(%rdx)
	je	.LBB18_9
# %bb.6:                                # %land.lhs.true
                                        #   in Loop: Header=BB18_4 Depth=1
	cmpb	$0, 40(%rdx)
	jne	.LBB18_9
# %bb.7:                                # %land.lhs.true15
                                        #   in Loop: Header=BB18_4 Depth=1
	cmpl	%ebp, 344(%rdx)
	jne	.LBB18_9
# %bb.8:                                # %if.then22
                                        #   in Loop: Header=BB18_4 Depth=1
	movq	264(%rbx), %rcx
	movslq	%r12d, %rsi
	incl	%r12d
	movq	%rdx, (%rcx,%rsi,8)
	movl	48(%r14), %ecx
	jmp	.LBB18_9
.LBB18_27:                              # %for.body106.lr.ph.new
	movl	%eax, %esi
	andl	$-2, %esi
	xorl	%edx, %edx
	xorl	%r13d, %r13d
	jmp	.LBB18_28
	.p2align	4, 0x90
.LBB18_34:                              # %for.inc126.1
                                        #   in Loop: Header=BB18_28 Depth=1
	addq	$2, %rdx
	cmpq	%rdx, %rsi
	je	.LBB18_35
.LBB18_28:                              # %for.body106
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %r9
	cmpl	$0, 4(%r9)
	je	.LBB18_31
# %bb.29:                               # %land.lhs.true111
                                        #   in Loop: Header=BB18_28 Depth=1
	cmpl	%ebp, 72(%r9)
	jne	.LBB18_31
# %bb.30:                               # %if.then118
                                        #   in Loop: Header=BB18_28 Depth=1
	movslq	%r13d, %r8
	incl	%r13d
	movq	%r9, (%rdi,%r8,8)
.LBB18_31:                              # %for.inc126
                                        #   in Loop: Header=BB18_28 Depth=1
	movq	8(%rcx,%rdx,8), %r9
	cmpl	$0, 4(%r9)
	je	.LBB18_34
# %bb.32:                               # %land.lhs.true111.1
                                        #   in Loop: Header=BB18_28 Depth=1
	cmpl	%ebp, 72(%r9)
	jne	.LBB18_34
# %bb.33:                               # %if.then118.1
                                        #   in Loop: Header=BB18_28 Depth=1
	movslq	%r13d, %r8
	incl	%r13d
	movq	%r9, (%rdi,%r8,8)
	jmp	.LBB18_34
.LBB18_84:                              # %for.body141.lr.ph.new
	movl	%eax, %esi
	andl	$-2, %esi
	xorl	%edx, %edx
	xorl	%r15d, %r15d
	jmp	.LBB18_85
	.p2align	4, 0x90
.LBB18_89:                              # %for.inc156.1
                                        #   in Loop: Header=BB18_85 Depth=1
	addq	$2, %rdx
	cmpq	%rdx, %rsi
	je	.LBB18_90
.LBB18_85:                              # %for.body141
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rdi
	cmpl	%ebp, 72(%rdi)
	je	.LBB18_86
# %bb.87:                               # %for.inc156
                                        #   in Loop: Header=BB18_85 Depth=1
	movq	8(%rcx,%rdx,8), %rdi
	cmpl	%ebp, 72(%rdi)
	jne	.LBB18_89
	jmp	.LBB18_88
	.p2align	4, 0x90
.LBB18_86:                              # %if.then148
                                        #   in Loop: Header=BB18_85 Depth=1
	movslq	%r15d, %r8
	incl	%r15d
	movq	%rdi, (%r12,%r8,8)
	movq	8(%rcx,%rdx,8), %rdi
	cmpl	%ebp, 72(%rdi)
	jne	.LBB18_89
.LBB18_88:                              # %if.then148.1
                                        #   in Loop: Header=BB18_85 Depth=1
	movslq	%r15d, %r8
	incl	%r15d
	movq	%rdi, (%r12,%r8,8)
	jmp	.LBB18_89
.LBB18_2:
	xorl	%r12d, %r12d
.LBB18_10:                              # %for.end
	movq	264(%rbx), %rdi
	movslq	%r12d, %r15
	movl	$8, %edx
	movl	$compare_pic_by_pic_num_desc, %ecx
	movq	%r15, %rsi
	callq	qsort@PLT
	movb	%r15b, 256(%rbx)
	movl	52(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB18_11
# %bb.12:                               # %for.body39.lr.ph
	xorl	%eax, %eax
	jmp	.LBB18_13
	.p2align	4, 0x90
.LBB18_17:                              # %for.inc73
                                        #   in Loop: Header=BB18_13 Depth=1
	incq	%rax
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jae	.LBB18_18
.LBB18_13:                              # %for.body39
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rdx
	movq	(%rdx,%rax,8), %rdx
	cmpl	$3, (%rdx)
	jne	.LBB18_17
# %bb.14:                               # %if.then45
                                        #   in Loop: Header=BB18_13 Depth=1
	movq	48(%rdx), %rdx
	cmpb	$0, 40(%rdx)
	je	.LBB18_17
# %bb.15:                               # %land.lhs.true53
                                        #   in Loop: Header=BB18_13 Depth=1
	cmpl	%ebp, 344(%rdx)
	jne	.LBB18_17
# %bb.16:                               # %if.then61
                                        #   in Loop: Header=BB18_13 Depth=1
	movq	264(%rbx), %rcx
	movslq	%r12d, %rsi
	incl	%r12d
	movq	%rdx, (%rcx,%rsi,8)
	movl	52(%r14), %ecx
	jmp	.LBB18_17
.LBB18_18:                              # %for.end75.loopexit
	movzbl	256(%rbx), %eax
	movl	%r12d, %r15d
	jmp	.LBB18_19
.LBB18_11:
	movl	%r15d, %eax
.LBB18_19:                              # %for.end75
	movsbq	%al, %rax
	leaq	(,%rax,8), %rdi
	addq	264(%rbx), %rdi
	movsbl	%al, %eax
	subl	%eax, %r12d
	movslq	%r12d, %rsi
	movl	$8, %edx
	movl	$compare_pic_by_lt_pic_num_asc, %ecx
	callq	qsort@PLT
	movb	%r15b, 256(%rbx)
	movb	$0, 257(%rbx)
	cmpl	$0, 32(%rbx)
	jne	.LBB18_162
.LBB18_137:                             # %if.then170
	movl	40(%r14), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, 13320(%rbx)
	testq	%rax, %rax
	je	.LBB18_138
# %bb.139:                              # %if.end178
	leaq	13308(%rbx), %r8
	movl	184(%rbx), %esi
	testl	%esi, %esi
	je	.LBB18_140
.LBB18_145:                             # %if.else208
	movq	13320(%rbx), %rcx
	movq	%r14, %rdi
	xorl	%edx, %edx
	movl	12(%rsp), %r9d                  # 4-byte Reload
	pushq	24(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	callq	append_interview_list
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	184(%rbx), %esi
	movq	13320(%rbx), %rcx
	movl	13308(%rbx), %edx
	movq	264(%rbx), %rax
	cmpl	$2, %esi
	je	.LBB18_154
# %bb.146:                              # %if.else208
	cmpl	$1, %esi
	jne	.LBB18_162
# %bb.147:                              # %for.cond.preheader.i520
	testl	%edx, %edx
	jle	.LBB18_162
# %bb.148:                              # %for.body.preheader.i521
	movzbl	256(%rbx), %esi
	cmpl	$1, %edx
	jne	.LBB18_150
# %bb.149:
	xorl	%edi, %edi
	jmp	.LBB18_152
.LBB18_138:                             # %if.then177
	movl	$.L.str.16, %edi
	callq	no_mem_exit@PLT
	leaq	13308(%rbx), %r8
	movl	184(%rbx), %esi
	testl	%esi, %esi
	jne	.LBB18_145
.LBB18_140:                             # %if.then185
	movzbl	256(%rbx), %r15d
	movq	13320(%rbx), %rcx
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	12(%rsp), %r9d                  # 4-byte Reload
	pushq	24(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	callq	append_interview_list
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	cmpl	$0, 13308(%rbx)
	je	.LBB18_144
# %bb.141:                              # %for.body192.lr.ph
	movzbl	%r15b, %eax
	movsbq	%al, %rcx
	shlq	$3, %rcx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB18_142:                             # %for.body192
                                        # =>This Inner Loop Header: Depth=1
	movq	13320(%rbx), %rdx
	movq	(%rdx,%r15,8), %rdx
	movq	48(%rdx), %rdx
	movq	264(%rbx), %rsi
	addq	%rcx, %rsi
	movq	%rdx, (%rsi,%r15,8)
	incq	%r15
	movl	13308(%rbx), %edx
	cmpq	%rdx, %r15
	jb	.LBB18_142
# %bb.143:                              # %for.end204.loopexit
	addl	%eax, %r15d
.LBB18_144:                             # %for.end204
	movb	%r15b, 256(%rbx)
	jmp	.LBB18_162
.LBB18_62:                              # %for.cond60.preheader.i.preheader
	movl	%r13d, %esi
	negl	%esi
	.p2align	4, 0x90
.LBB18_63:                              # %for.cond60.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_65 Depth 2
                                        #     Child Loop BB18_73 Depth 2
	cmpl	%r13d, %edx
	jl	.LBB18_64
# %bb.71:                               # %for.end88.i
                                        #   in Loop: Header=BB18_63 Depth=1
	cmpl	%r13d, %r15d
	jl	.LBB18_72
.LBB18_79:                              # %for.end117.i
                                        #   in Loop: Header=BB18_63 Depth=1
	cmpl	%r13d, %r15d
	jl	.LBB18_63
.LBB18_80:                              # %for.end117.i
                                        #   in Loop: Header=BB18_63 Depth=1
	cmpl	%r13d, %edx
	jl	.LBB18_63
	jmp	.LBB18_81
	.p2align	4, 0x90
.LBB18_64:                              # %for.body63.preheader.i
                                        #   in Loop: Header=BB18_63 Depth=1
	movslq	%edx, %rdi
	incl	%edx
	leaq	(%r11,%rdi,8), %rdi
	jmp	.LBB18_65
	.p2align	4, 0x90
.LBB18_69:                              # %for.inc86.i
                                        #   in Loop: Header=BB18_65 Depth=2
	leal	(%rsi,%rdx), %r8d
	incl	%r8d
                                        # kill: def $edx killed $edx killed $rdx
	incl	%edx
	addq	$8, %rdi
                                        # kill: def $edx killed $edx def $rdx
	cmpl	$1, %r8d
	je	.LBB18_70
.LBB18_65:                              # %for.body63.i
                                        #   Parent Loop BB18_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %r8
	testb	$2, (%r8)
	je	.LBB18_69
# %bb.66:                               # %if.then69.i
                                        #   in Loop: Header=BB18_65 Depth=2
	movq	64(%r8), %r8
	cmpl	$0, 44(%r8)
	je	.LBB18_69
# %bb.67:                               # %is_short_ref.exit533
                                        #   in Loop: Header=BB18_65 Depth=2
	cmpb	$0, 40(%r8)
	jne	.LBB18_69
# %bb.68:                               # %if.then75.i
                                        #   in Loop: Header=BB18_63 Depth=1
	movsbq	%cl, %rcx
	movq	%r8, (%rax,%rcx,8)
	movzbl	256(%rbx), %ecx
	incb	%cl
	movb	%cl, 256(%rbx)
	cmpl	%r13d, %r15d
	jge	.LBB18_79
	jmp	.LBB18_72
	.p2align	4, 0x90
.LBB18_70:                              #   in Loop: Header=BB18_63 Depth=1
	movl	%r13d, %edx
	cmpl	%r13d, %r15d
	jge	.LBB18_79
.LBB18_72:                              # %for.body92.preheader.i
                                        #   in Loop: Header=BB18_63 Depth=1
	movslq	%r15d, %rdi
	incl	%r15d
	leaq	(%r11,%rdi,8), %rdi
	jmp	.LBB18_73
	.p2align	4, 0x90
.LBB18_77:                              # %for.inc115.i
                                        #   in Loop: Header=BB18_73 Depth=2
	leal	(%rsi,%r15), %r8d
	incl	%r8d
	movl	%r15d, %r9d
	incl	%r9d
	addq	$8, %rdi
	movl	%r9d, %r15d
	cmpl	$1, %r8d
	je	.LBB18_78
.LBB18_73:                              # %for.body92.i
                                        #   Parent Loop BB18_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %r8
	testb	$1, (%r8)
	je	.LBB18_77
# %bb.74:                               # %if.then98.i
                                        #   in Loop: Header=BB18_73 Depth=2
	movq	56(%r8), %r8
	cmpl	$0, 44(%r8)
	je	.LBB18_77
# %bb.75:                               # %is_short_ref.exit
                                        #   in Loop: Header=BB18_73 Depth=2
	cmpb	$0, 40(%r8)
	jne	.LBB18_77
# %bb.76:                               # %if.then104.i
                                        #   in Loop: Header=BB18_63 Depth=1
	movsbq	%cl, %rcx
	movq	%r8, (%rax,%rcx,8)
	movzbl	256(%rbx), %ecx
	incb	%cl
	movb	%cl, 256(%rbx)
	cmpl	%r13d, %r15d
	jge	.LBB18_80
	jmp	.LBB18_63
	.p2align	4, 0x90
.LBB18_78:                              #   in Loop: Header=BB18_63 Depth=1
	movl	%r13d, %r15d
	cmpl	%r13d, %r15d
	jge	.LBB18_80
	jmp	.LBB18_63
.LBB18_116:                             # %for.cond60.preheader.i407.preheader
	movl	%r15d, %edx
	negl	%edx
	.p2align	4, 0x90
.LBB18_117:                             # %for.cond60.preheader.i407
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_119 Depth 2
                                        #     Child Loop BB18_127 Depth 2
	cmpl	%r15d, %ecx
	jl	.LBB18_118
# %bb.125:                              # %for.end88.i411
                                        #   in Loop: Header=BB18_117 Depth=1
	cmpl	%r15d, %r13d
	jl	.LBB18_126
.LBB18_133:                             # %for.end117.i414
                                        #   in Loop: Header=BB18_117 Depth=1
	cmpl	%r15d, %r13d
	jl	.LBB18_117
.LBB18_134:                             # %for.end117.i414
                                        #   in Loop: Header=BB18_117 Depth=1
	cmpl	%r15d, %ecx
	jl	.LBB18_117
	jmp	.LBB18_135
	.p2align	4, 0x90
.LBB18_118:                             # %for.body63.preheader.i439
                                        #   in Loop: Header=BB18_117 Depth=1
	movslq	%ecx, %rsi
	incl	%ecx
	leaq	(%r12,%rsi,8), %rsi
	jmp	.LBB18_119
	.p2align	4, 0x90
.LBB18_123:                             # %for.inc86.i456
                                        #   in Loop: Header=BB18_119 Depth=2
	leal	(%rdx,%rcx), %edi
	incl	%edi
                                        # kill: def $ecx killed $ecx killed $rcx
	incl	%ecx
	addq	$8, %rsi
                                        # kill: def $ecx killed $ecx def $rcx
	cmpl	$1, %edi
	je	.LBB18_124
.LBB18_119:                             # %for.body63.i440
                                        #   Parent Loop BB18_117 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rsi), %rdi
	testb	$2, (%rdi)
	je	.LBB18_123
# %bb.120:                              # %if.then69.i445
                                        #   in Loop: Header=BB18_119 Depth=2
	movq	64(%rdi), %rdi
	cmpl	$0, 44(%rdi)
	je	.LBB18_123
# %bb.121:                              # %is_long_ref.exit559
                                        #   in Loop: Header=BB18_119 Depth=2
	cmpb	$0, 40(%rdi)
	je	.LBB18_123
# %bb.122:                              # %if.then75.i449
                                        #   in Loop: Header=BB18_117 Depth=1
	movsbq	256(%rbx), %rsi
	movq	%rdi, (%rax,%rsi,8)
	incb	256(%rbx)
	cmpl	%r15d, %r13d
	jge	.LBB18_133
	jmp	.LBB18_126
	.p2align	4, 0x90
.LBB18_124:                             #   in Loop: Header=BB18_117 Depth=1
	movl	%r15d, %ecx
	cmpl	%r15d, %r13d
	jge	.LBB18_133
.LBB18_126:                             # %for.body92.preheader.i418
                                        #   in Loop: Header=BB18_117 Depth=1
	movslq	%r13d, %rsi
	incl	%r13d
	leaq	(%r12,%rsi,8), %rsi
	jmp	.LBB18_127
	.p2align	4, 0x90
.LBB18_131:                             # %for.inc115.i435
                                        #   in Loop: Header=BB18_127 Depth=2
	leal	(%rdx,%r13), %edi
	incl	%edi
	movl	%r13d, %r8d
	incl	%r8d
	addq	$8, %rsi
	movl	%r8d, %r13d
	cmpl	$1, %edi
	je	.LBB18_132
.LBB18_127:                             # %for.body92.i419
                                        #   Parent Loop BB18_117 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rsi), %rdi
	testb	$1, (%rdi)
	je	.LBB18_131
# %bb.128:                              # %if.then98.i424
                                        #   in Loop: Header=BB18_127 Depth=2
	movq	56(%rdi), %rdi
	cmpl	$0, 44(%rdi)
	je	.LBB18_131
# %bb.129:                              # %is_long_ref.exit
                                        #   in Loop: Header=BB18_127 Depth=2
	cmpb	$0, 40(%rdi)
	je	.LBB18_131
# %bb.130:                              # %if.then104.i428
                                        #   in Loop: Header=BB18_117 Depth=1
	movsbq	256(%rbx), %rsi
	movq	%rdi, (%rax,%rsi,8)
	incb	256(%rbx)
	cmpl	%r15d, %r13d
	jge	.LBB18_134
	jmp	.LBB18_117
	.p2align	4, 0x90
.LBB18_132:                             #   in Loop: Header=BB18_117 Depth=1
	movl	%r15d, %r13d
	cmpl	%r15d, %r13d
	jge	.LBB18_134
	jmp	.LBB18_117
.LBB18_154:                             # %if.then7.i
	testl	%edx, %edx
	jle	.LBB18_162
# %bb.155:                              # %for.body11.preheader.i
	movzbl	256(%rbx), %esi
	cmpl	$1, %edx
	jne	.LBB18_157
# %bb.156:
	xorl	%edi, %edi
	jmp	.LBB18_159
.LBB18_150:                             # %for.body.preheader.i521.new
	movl	%edx, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB18_151:                             # %for.body.i522
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdi,8), %r9
	movq	56(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	movq	8(%rcx,%rdi,8), %r9
	movq	56(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	addq	$2, %rdi
	cmpq	%rdi, %r8
	jne	.LBB18_151
.LBB18_152:                             # %if.end220.loopexit.unr-lcssa
	testb	$1, %dl
	je	.LBB18_162
# %bb.153:                              # %for.body.i522.epil
	movq	(%rcx,%rdi,8), %rcx
	movq	56(%rcx), %rcx
	jmp	.LBB18_161
.LBB18_157:                             # %for.body11.preheader.i.new
	movl	%edx, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB18_158:                             # %for.body11.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdi,8), %r9
	movq	64(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	movq	8(%rcx,%rdi,8), %r9
	movq	64(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	addq	$2, %rdi
	cmpq	%rdi, %r8
	jne	.LBB18_158
.LBB18_159:                             # %if.end220.loopexit715.unr-lcssa
	testb	$1, %dl
	je	.LBB18_162
# %bb.160:                              # %for.body11.i.epil
	movq	(%rcx,%rdi,8), %rcx
	movq	64(%rcx), %rcx
.LBB18_161:                             # %if.end220
	movsbq	%sil, %rdx
	movq	%rcx, (%rax,%rdx,8)
	incb	256(%rbx)
.LBB18_162:                             # %if.end220
	movsbl	256(%rbx), %ecx
	movl	136(%rbx), %edx
	movl	140(%rbx), %eax
	cmpl	%edx, %ecx
	cmovll	%ecx, %edx
	movb	%dl, 256(%rbx)
	movsbl	257(%rbx), %ecx
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	movb	%al, 257(%rbx)
	movsbl	%dl, %ecx
	cmpl	$32, %ecx
	ja	.LBB18_166
# %bb.163:                              # %for.body244.lr.ph
	movl	%ecx, %eax
	movq	856488(%r13), %rcx
	incq	%rax
	movq	%rax, %rdx
	.p2align	4, 0x90
.LBB18_164:                             # %for.body244
                                        # =>This Inner Loop Header: Depth=1
	movq	264(%rbx), %rsi
	movq	%rcx, -8(%rsi,%rax,8)
	incq	%rdx
	cmpl	$33, %eax
	movq	%rdx, %rax
	jne	.LBB18_164
# %bb.165:                              # %for.end251.loopexit
	movzbl	257(%rbx), %eax
.LBB18_166:                             # %for.end251
	cmpb	$32, %al
	ja	.LBB18_169
# %bb.167:                              # %for.body258.lr.ph
	movzbl	%al, %eax
	movq	856488(%r13), %rcx
	incq	%rax
	movq	%rax, %rdx
	.p2align	4, 0x90
.LBB18_168:                             # %for.body258
                                        # =>This Inner Loop Header: Depth=1
	movq	272(%rbx), %rsi
	movq	%rcx, -8(%rsi,%rax,8)
	incq	%rdx
	cmpl	$33, %eax
	movq	%rdx, %rax
	jne	.LBB18_168
.LBB18_169:                             # %for.end266
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
.Lfunc_end18:
	.size	init_lists_p_slice, .Lfunc_end18-init_lists_p_slice
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function compare_pic_by_pic_num_desc
	.type	compare_pic_by_pic_num_desc,@function
compare_pic_by_pic_num_desc:            # @compare_pic_by_pic_num_desc
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	movl	28(%rax), %eax
	movq	(%rsi), %rcx
	movl	28(%rcx), %ecx
	xorl	%edx, %edx
	cmpl	%ecx, %eax
	setg	%dl
	negl	%edx
	cmpl	%ecx, %eax
	movl	$1, %eax
	cmovgel	%edx, %eax
	retq
.Lfunc_end19:
	.size	compare_pic_by_pic_num_desc, .Lfunc_end19-compare_pic_by_pic_num_desc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function compare_pic_by_lt_pic_num_asc
	.type	compare_pic_by_lt_pic_num_asc,@function
compare_pic_by_lt_pic_num_asc:          # @compare_pic_by_lt_pic_num_asc
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	movl	32(%rax), %eax
	movq	(%rsi), %rcx
	xorl	%edx, %edx
	cmpl	32(%rcx), %eax
	setg	%dl
	movl	$-1, %eax
	cmovgel	%edx, %eax
	retq
.Lfunc_end20:
	.size	compare_pic_by_lt_pic_num_asc, .Lfunc_end20-compare_pic_by_lt_pic_num_asc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function compare_fs_by_frame_num_desc
	.type	compare_fs_by_frame_num_desc,@function
compare_fs_by_frame_num_desc:           # @compare_fs_by_frame_num_desc
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	movl	28(%rax), %eax
	movq	(%rsi), %rcx
	movl	28(%rcx), %ecx
	xorl	%edx, %edx
	cmpl	%ecx, %eax
	setg	%dl
	negl	%edx
	cmpl	%ecx, %eax
	movl	$1, %eax
	cmovgel	%edx, %eax
	retq
.Lfunc_end21:
	.size	compare_fs_by_frame_num_desc, .Lfunc_end21-compare_fs_by_frame_num_desc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function compare_fs_by_lt_pic_idx_asc
	.type	compare_fs_by_lt_pic_idx_asc,@function
compare_fs_by_lt_pic_idx_asc:           # @compare_fs_by_lt_pic_idx_asc
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	movl	32(%rax), %eax
	movq	(%rsi), %rcx
	xorl	%edx, %edx
	cmpl	32(%rcx), %eax
	setg	%dl
	movl	$-1, %eax
	cmovgel	%edx, %eax
	retq
.Lfunc_end22:
	.size	compare_fs_by_lt_pic_idx_asc, .Lfunc_end22-compare_fs_by_lt_pic_idx_asc
	.cfi_endproc
                                        # -- End function
	.globl	append_interview_list           # -- Begin function append_interview_list
	.p2align	4, 0x90
	.type	append_interview_list,@function
append_interview_list:                  # @append_interview_list
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
	movl	%r9d, 4(%rsp)                   # 4-byte Spill
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movl	%edx, %r13d
	movl	%esi, %ebp
	movq	%rdi, %r12
	movl	88(%rsp), %ebx
	movl	80(%rsp), %esi
	movq	(%rdi), %r15
	movq	%r15, %rdi
	callq	GetVOIdx@PLT
	movl	%eax, %r14d
	testl	%eax, %eax
	jns	.LBB23_2
# %bb.1:                                # %if.then
	movl	$.L.str.30, %edi
	movl	%r14d, %esi
	xorl	%eax, %eax
	callq	printf@PLT
.LBB23_2:                               # %if.end
	xorl	%edx, %edx
	testl	%ebx, %ebx
	sete	%r8b
	xorl	%esi, %esi
	testl	%r13d, %r13d
	setne	%r11b
	xorl	%eax, %eax
	cmpl	$2, %ebp
	sete	%dil
	movl	44(%r12), %ecx
	testl	%ecx, %ecx
	je	.LBB23_23
# %bb.3:                                # %for.body.lr.ph
	movq	699416(%r15), %r9
	movslq	%r14d, %r10
	xorl	%r14d, %r14d
	testl	%r13d, %r13d
	setne	%r14b
	xorl	%r15d, %r15d
	testl	%ebx, %ebx
	sete	%r15b
	shll	$4, %r14d
	shll	$5, %r15d
	orl	%r14d, %r15d
	movq	4144(%r15,%r9), %r14
	movl	(%r14,%r10,4), %r14d
	testl	%r14d, %r14d
	jle	.LBB23_23
# %bb.4:                                # %for.body.us.preheader
	movb	%r11b, %sil
	shll	$4, %esi
	movb	%r8b, %dl
	shll	$5, %edx
	orl	%esi, %edx
	movq	4152(%rdx,%r9), %rdx
	movq	(%rdx,%r10,8), %rdx
	movb	%dil, %al
	movl	%r14d, %esi
	leaq	-1(%rsi), %rdi
	xorl	%r8d, %r8d
	jmp	.LBB23_5
.LBB23_21:                              # %if.then110.us
                                        #   in Loop: Header=BB23_5 Depth=1
	movq	16(%rsp), %r10                  # 8-byte Reload
	movslq	(%r10), %rcx
	movq	8(%rsp), %r11                   # 8-byte Reload
	movq	%r9, (%r11,%rcx,8)
	incl	(%r10)
	movl	44(%r12), %ecx
	.p2align	4, 0x90
.LBB23_22:                              # %for.inc.us
                                        #   in Loop: Header=BB23_5 Depth=1
	incq	%r8
	movl	%ecx, %r9d
	cmpq	%r9, %r8
	jae	.LBB23_23
.LBB23_5:                               # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_19 Depth 2
	testl	%ebp, %ebp
	je	.LBB23_9
# %bb.6:                                # %for.body.us
                                        #   in Loop: Header=BB23_5 Depth=1
	cmpl	$1, %ebp
	jne	.LBB23_11
# %bb.7:                                # %if.then62.us
                                        #   in Loop: Header=BB23_5 Depth=1
	movq	16(%r12), %r9
	movq	(%r9,%r8,8), %r9
	testb	$1, (%r9)
	je	.LBB23_22
# %bb.8:                                # %if.then68.us
                                        #   in Loop: Header=BB23_5 Depth=1
	leaq	56(%r9), %r10
	cmpl	$0, 76(%r9,%rax,4)
	jne	.LBB23_15
	jmp	.LBB23_22
	.p2align	4, 0x90
.LBB23_9:                               # %if.then48.us
                                        #   in Loop: Header=BB23_5 Depth=1
	movq	16(%r12), %r9
	movq	(%r9,%r8,8), %r9
	cmpl	$3, (%r9)
	jne	.LBB23_22
# %bb.10:                               # %if.then53.us
                                        #   in Loop: Header=BB23_5 Depth=1
	leaq	48(%r9), %r10
	cmpl	$0, 76(%r9,%rax,4)
	jne	.LBB23_15
	jmp	.LBB23_22
	.p2align	4, 0x90
.LBB23_11:                              # %if.else74.us
                                        #   in Loop: Header=BB23_5 Depth=1
	cmpl	$2, %ebp
	jne	.LBB23_22
# %bb.12:                               # %if.then77.us
                                        #   in Loop: Header=BB23_5 Depth=1
	movq	16(%r12), %r9
	movq	(%r9,%r8,8), %r9
	testb	$2, (%r9)
	je	.LBB23_22
# %bb.13:                               # %if.then84.us
                                        #   in Loop: Header=BB23_5 Depth=1
	leaq	64(%r9), %r10
	cmpl	$0, 76(%r9,%rax,4)
	je	.LBB23_22
	.p2align	4, 0x90
.LBB23_15:                              # %land.lhs.true.us
                                        #   in Loop: Header=BB23_5 Depth=1
	movq	(%r10), %r10
	movl	4(%rsp), %r11d                  # 4-byte Reload
	cmpl	%r11d, 4(%r10)
	jne	.LBB23_22
# %bb.16:                               # %if.then104.us
                                        #   in Loop: Header=BB23_5 Depth=1
	movl	72(%r9), %r10d
	cmpl	%r10d, (%rdx)
	je	.LBB23_21
# %bb.17:                               # %for.cond.i.us.preheader
                                        #   in Loop: Header=BB23_5 Depth=1
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB23_19:                              # %for.cond.i.us
                                        #   Parent Loop BB23_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r11, %rdi
	je	.LBB23_22
# %bb.18:                               # %for.body.i.us
                                        #   in Loop: Header=BB23_19 Depth=2
	leaq	1(%r11), %r14
	cmpl	%r10d, 4(%rdx,%r11,4)
	movq	%r14, %r11
	jne	.LBB23_19
# %bb.20:                               # %is_view_id_in_ref_view_list.exit.us
                                        #   in Loop: Header=BB23_5 Depth=1
	cmpq	%rsi, %r14
	jb	.LBB23_21
	jmp	.LBB23_22
.LBB23_23:                              # %for.end
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
.Lfunc_end23:
	.size	append_interview_list, .Lfunc_end23-append_interview_list
	.cfi_endproc
                                        # -- End function
	.globl	init_lists_b_slice              # -- Begin function init_lists_b_slice
	.p2align	4, 0x90
	.type	init_lists_b_slice,@function
init_lists_b_slice:                     # @init_lists_b_slice
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
	movq	%rdi, %rbx
	movq	(%rdi), %r13
	movq	40(%rdi), %r12
	movl	104(%rdi), %eax
	movl	%eax, 28(%rsp)                  # 4-byte Spill
	movl	1176(%rdi), %edi
	movl	1184(%rbx), %ebp
	movq	$0, 13308(%rbx)
	cmpl	$0, 184(%rbx)
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	movq	%r12, 16(%rsp)                  # 8-byte Spill
	movq	%rbp, 64(%rsp)                  # 8-byte Spill
	je	.LBB24_1
# %bb.44:                               # %if.else
	movl	40(%r12), %r12d
	movl	$8, %esi
	movq	%r12, %rdi
	callq	calloc@PLT
	movq	%rax, %r15
	testq	%rax, %rax
	jne	.LBB24_46
# %bb.45:                               # %if.then220
	movl	$.L.str.14, %edi
	callq	no_mem_exit@PLT
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	40(%rax), %r12d
.LBB24_46:                              # %if.end221
	movq	%r13, 32(%rsp)                  # 8-byte Spill
	movl	$8, %esi
	movq	%r12, %rdi
	callq	calloc@PLT
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	testq	%rax, %rax
	jne	.LBB24_48
# %bb.47:                               # %if.then227
	movl	$.L.str.17, %edi
	callq	no_mem_exit@PLT
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	40(%rax), %r12d
.LBB24_48:                              # %if.end228
	movl	$8, %esi
	movq	%r12, %rdi
	callq	calloc@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	jne	.LBB24_50
# %bb.49:                               # %if.then234
	movl	$.L.str.15, %edi
	callq	no_mem_exit@PLT
.LBB24_50:                              # %if.end235
	movw	$256, 256(%rbx)                 # imm = 0x100
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movl	48(%rcx), %eax
	testq	%rax, %rax
	je	.LBB24_51
# %bb.52:                               # %for.body244.lr.ph
	movq	24(%rcx), %rcx
	xorl	%edx, %edx
	xorl	%r12d, %r12d
	movq	8(%rsp), %r8                    # 8-byte Reload
	jmp	.LBB24_53
	.p2align	4, 0x90
.LBB24_57:                              # %for.inc274
                                        #   in Loop: Header=BB24_53 Depth=1
	incq	%rdx
	cmpq	%rax, %rdx
	jae	.LBB24_58
.LBB24_53:                              # %for.body244
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rsi
	cmpl	$0, (%rsi)
	je	.LBB24_57
# %bb.54:                               # %if.then250
                                        #   in Loop: Header=BB24_53 Depth=1
	movl	104(%rbx), %edi
	cmpl	40(%rsi), %edi
	jl	.LBB24_57
# %bb.55:                               # %land.lhs.true258
                                        #   in Loop: Header=BB24_53 Depth=1
	cmpl	%r8d, 72(%rsi)
	jne	.LBB24_57
# %bb.56:                               # %if.then265
                                        #   in Loop: Header=BB24_53 Depth=1
	movslq	%r12d, %rdi
	incl	%r12d
	movq	%rsi, (%r15,%rdi,8)
	jmp	.LBB24_57
.LBB24_1:                               # %for.cond.preheader
	movl	48(%r12), %ecx
	testl	%ecx, %ecx
	je	.LBB24_2
# %bb.3:                                # %for.body.lr.ph
	xorl	%eax, %eax
	xorl	%r14d, %r14d
	jmp	.LBB24_4
	.p2align	4, 0x90
.LBB24_10:                              # %for.inc
                                        #   in Loop: Header=BB24_4 Depth=1
	incq	%rax
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jae	.LBB24_11
.LBB24_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r12), %rdx
	movq	(%rdx,%rax,8), %rdx
	cmpl	$3, (%rdx)
	jne	.LBB24_10
# %bb.5:                                # %if.then6
                                        #   in Loop: Header=BB24_4 Depth=1
	movq	48(%rdx), %rdx
	cmpl	$0, 44(%rdx)
	je	.LBB24_10
# %bb.6:                                # %land.lhs.true
                                        #   in Loop: Header=BB24_4 Depth=1
	cmpb	$0, 40(%rdx)
	jne	.LBB24_10
# %bb.7:                                # %land.lhs.true15
                                        #   in Loop: Header=BB24_4 Depth=1
	cmpl	%edi, 344(%rdx)
	jne	.LBB24_10
# %bb.8:                                # %if.then22
                                        #   in Loop: Header=BB24_4 Depth=1
	movl	76(%rbx), %esi
	cmpl	4(%rdx), %esi
	jl	.LBB24_10
# %bb.9:                                # %if.then28
                                        #   in Loop: Header=BB24_4 Depth=1
	movq	264(%rbx), %rcx
	movslq	%r14d, %rsi
	incl	%r14d
	movq	%rdx, (%rcx,%rsi,8)
	movl	48(%r12), %ecx
	jmp	.LBB24_10
.LBB24_51:
	xorl	%r12d, %r12d
.LBB24_58:                              # %for.end276
	movslq	%r12d, %rbp
	movl	$8, %edx
	movl	$compare_fs_by_poc_desc, %ecx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	qsort@PLT
	movq	8(%rsp), %r8                    # 8-byte Reload
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	48(%rax), %eax
	movl	%r12d, %r14d
	testq	%rax, %rax
	je	.LBB24_65
# %bb.59:                               # %for.body282.lr.ph
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	24(%rcx), %rcx
	xorl	%edx, %edx
	movl	%r12d, %r14d
	jmp	.LBB24_60
	.p2align	4, 0x90
.LBB24_64:                              # %for.inc312
                                        #   in Loop: Header=BB24_60 Depth=1
	incq	%rdx
	cmpq	%rax, %rdx
	jae	.LBB24_65
.LBB24_60:                              # %for.body282
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rsi
	cmpl	$0, (%rsi)
	je	.LBB24_64
# %bb.61:                               # %if.then288
                                        #   in Loop: Header=BB24_60 Depth=1
	movl	104(%rbx), %edi
	cmpl	40(%rsi), %edi
	jge	.LBB24_64
# %bb.62:                               # %land.lhs.true296
                                        #   in Loop: Header=BB24_60 Depth=1
	cmpl	%r8d, 72(%rsi)
	jne	.LBB24_64
# %bb.63:                               # %if.then303
                                        #   in Loop: Header=BB24_60 Depth=1
	movslq	%r14d, %rdi
	incl	%r14d
	movq	%rsi, (%r15,%rdi,8)
	jmp	.LBB24_64
.LBB24_65:                              # %for.end314
	leaq	(%r15,%rbp,8), %rdi
	movl	%r14d, %eax
	subl	%ebp, %eax
	movslq	%eax, %rsi
	movl	$8, %edx
	movl	$compare_fs_by_poc_asc, %ecx
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	callq	qsort@PLT
	testl	%ebp, %ebp
	jle	.LBB24_73
# %bb.66:                               # %for.body322.preheader
	movl	%r12d, %eax
	cmpl	$7, %r12d
	ja	.LBB24_70
# %bb.67:
	xorl	%ecx, %ecx
	jmp	.LBB24_68
.LBB24_70:                              # %vector.ph
	movl	%eax, %ecx
	andl	$2147483640, %ecx               # imm = 0x7FFFFFF8
	movl	%eax, %edx
	shrl	$3, %edx
	andl	$268435455, %edx                # imm = 0xFFFFFFF
	shlq	$6, %rdx
	movslq	%r14d, %rsi
	shlq	$3, %rsi
	shlq	$3, %rbp
	subq	%rbp, %rsi
	movq	40(%rsp), %rdi                  # 8-byte Reload
	addq	%rdi, %rsi
	addq	$48, %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB24_71:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	(%r15,%rdi), %xmm0
	movups	16(%r15,%rdi), %xmm1
	movups	32(%r15,%rdi), %xmm2
	movups	48(%r15,%rdi), %xmm3
	movups	%xmm0, -48(%rsi,%rdi)
	movups	%xmm1, -32(%rsi,%rdi)
	movups	%xmm2, -16(%rsi,%rdi)
	movups	%xmm3, (%rsi,%rdi)
	addq	$64, %rdi
	cmpq	%rdi, %rdx
	jne	.LBB24_71
# %bb.72:                               # %middle.block
	cmpl	%eax, %ecx
	je	.LBB24_73
.LBB24_68:                              # %for.body322.preheader1707
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	48(%rsp), %rsi                  # 8-byte Reload
	leaq	(%rdx,%rsi,8), %rdx
	.p2align	4, 0x90
.LBB24_69:                              # %for.body322
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rcx,8), %rsi
	movq	%rsi, (%rdx,%rcx,8)
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB24_69
.LBB24_73:                              # %for.cond332.preheader
	cmpl	%r12d, %r14d
	movq	40(%rsp), %rbp                  # 8-byte Reload
	jle	.LBB24_75
# %bb.74:                               # %for.body335.preheader
	notl	%r12d
	addl	%r14d, %r12d
	leaq	8(,%r12,8), %rdx
	movq	%rbp, %rdi
	movq	56(%rsp), %rsi                  # 8-byte Reload
	callq	memcpy@PLT
.LBB24_75:                              # %for.end343
	movw	$0, 256(%rbx)
	movl	184(%rbx), %edi
	movq	264(%rbx), %rax
	xorl	%ecx, %ecx
	movl	$0, %esi
	movl	$0, %edx
	cmpl	$1, %edi
	movq	8(%rsp), %r11                   # 8-byte Reload
	movq	16(%rsp), %r12                  # 8-byte Reload
	jne	.LBB24_95
# %bb.76:                               # %while.cond.preheader.i
	testl	%r14d, %r14d
	jle	.LBB24_117
# %bb.77:                               # %for.cond.preheader.i.preheader
	movl	%r14d, %r8d
	negl	%r8d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.LBB24_78
	.p2align	4, 0x90
.LBB24_93:                              #   in Loop: Header=BB24_78 Depth=1
	movl	%r14d, %edx
.LBB24_94:                              # %for.end47.i
                                        #   in Loop: Header=BB24_78 Depth=1
	cmpl	%r14d, %esi
	setl	%r9b
	cmpl	%r14d, %edx
	setl	%r10b
	orb	%r9b, %r10b
	je	.LBB24_95
.LBB24_78:                              # %for.cond.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_80 Depth 2
                                        #     Child Loop BB24_88 Depth 2
	cmpl	%r14d, %esi
	jge	.LBB24_86
# %bb.79:                               # %for.body.preheader.i
                                        #   in Loop: Header=BB24_78 Depth=1
	movslq	%esi, %r9
	incl	%esi
	leaq	(%r15,%r9,8), %r9
	jmp	.LBB24_80
	.p2align	4, 0x90
.LBB24_84:                              # %for.inc.i
                                        #   in Loop: Header=BB24_80 Depth=2
	leal	(%r8,%rsi), %r10d
	incl	%r10d
                                        # kill: def $esi killed $esi killed $rsi
	incl	%esi
	addq	$8, %r9
                                        # kill: def $esi killed $esi def $rsi
	cmpl	$1, %r10d
	je	.LBB24_85
.LBB24_80:                              # %for.body.i
                                        #   Parent Loop BB24_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r9), %r10
	testb	$1, (%r10)
	je	.LBB24_84
# %bb.81:                               # %if.then6.i
                                        #   in Loop: Header=BB24_80 Depth=2
	movq	56(%r10), %r10
	cmpl	$0, 44(%r10)
	je	.LBB24_84
# %bb.82:                               # %is_short_ref.exit1283
                                        #   in Loop: Header=BB24_80 Depth=2
	cmpb	$0, 40(%r10)
	jne	.LBB24_84
# %bb.83:                               # %if.then10.i
                                        #   in Loop: Header=BB24_78 Depth=1
	movsbq	%cl, %rcx
	movq	%r10, (%rax,%rcx,8)
	movzbl	256(%rbx), %ecx
	incb	%cl
	movb	%cl, 256(%rbx)
	jmp	.LBB24_86
	.p2align	4, 0x90
.LBB24_85:                              #   in Loop: Header=BB24_78 Depth=1
	movl	%r14d, %esi
.LBB24_86:                              # %for.end.i
                                        #   in Loop: Header=BB24_78 Depth=1
	cmpl	%r14d, %edx
	jge	.LBB24_94
# %bb.87:                               # %for.body23.preheader.i
                                        #   in Loop: Header=BB24_78 Depth=1
	movslq	%edx, %r9
	incl	%edx
	leaq	(%r15,%r9,8), %r9
	jmp	.LBB24_88
	.p2align	4, 0x90
.LBB24_92:                              # %for.inc45.i
                                        #   in Loop: Header=BB24_88 Depth=2
	leal	(%r8,%rdx), %r10d
	incl	%r10d
                                        # kill: def $edx killed $edx killed $rdx
	incl	%edx
	addq	$8, %r9
                                        # kill: def $edx killed $edx def $rdx
	cmpl	$1, %r10d
	je	.LBB24_93
.LBB24_88:                              # %for.body23.i
                                        #   Parent Loop BB24_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r9), %r10
	testb	$2, (%r10)
	je	.LBB24_92
# %bb.89:                               # %if.then29.i
                                        #   in Loop: Header=BB24_88 Depth=2
	movq	64(%r10), %r10
	cmpl	$0, 44(%r10)
	je	.LBB24_92
# %bb.90:                               # %is_short_ref.exit1276
                                        #   in Loop: Header=BB24_88 Depth=2
	cmpb	$0, 40(%r10)
	jne	.LBB24_92
# %bb.91:                               # %if.then34.i
                                        #   in Loop: Header=BB24_78 Depth=1
	movsbq	%cl, %rcx
	movq	%r10, (%rax,%rcx,8)
	movzbl	256(%rbx), %ecx
	incb	%cl
	movb	%cl, 256(%rbx)
	jmp	.LBB24_94
.LBB24_95:                              # %if.end48.i
	cmpl	$2, %edi
	jne	.LBB24_117
# %bb.96:                               # %while.cond52.preheader.i
	cmpl	%r14d, %esi
	jl	.LBB24_98
# %bb.97:                               # %while.cond52.preheader.i
	cmpl	%r14d, %edx
	jl	.LBB24_98
.LBB24_117:                             # %gen_pic_list_from_frame_list.exit
	movl	184(%rbx), %esi
	movq	272(%rbx), %rax
	xorl	%edx, %edx
	movl	$0, %ecx
	cmpl	$1, %esi
	jne	.LBB24_137
# %bb.118:                              # %while.cond.preheader.i933
	testl	%r14d, %r14d
	jle	.LBB24_159
# %bb.119:                              # %for.cond.preheader.i935.preheader
	movl	%r14d, %edi
	negl	%edi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB24_120
	.p2align	4, 0x90
.LBB24_135:                             #   in Loop: Header=BB24_120 Depth=1
	movl	%r14d, %ecx
.LBB24_136:                             # %for.end47.i942
                                        #   in Loop: Header=BB24_120 Depth=1
	cmpl	%r14d, %edx
	setl	%r8b
	cmpl	%r14d, %ecx
	setl	%r9b
	orb	%r8b, %r9b
	je	.LBB24_137
.LBB24_120:                             # %for.cond.preheader.i935
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_122 Depth 2
                                        #     Child Loop BB24_130 Depth 2
	cmpl	%r14d, %edx
	jge	.LBB24_128
# %bb.121:                              # %for.body.preheader.i967
                                        #   in Loop: Header=BB24_120 Depth=1
	movslq	%edx, %r8
	incl	%edx
	leaq	(,%r8,8), %r8
	addq	%rbp, %r8
	jmp	.LBB24_122
	.p2align	4, 0x90
.LBB24_126:                             # %for.inc.i984
                                        #   in Loop: Header=BB24_122 Depth=2
	leal	(%rdi,%rdx), %r9d
	incl	%r9d
                                        # kill: def $edx killed $edx killed $rdx
	incl	%edx
	addq	$8, %r8
                                        # kill: def $edx killed $edx def $rdx
	cmpl	$1, %r9d
	je	.LBB24_127
.LBB24_122:                             # %for.body.i968
                                        #   Parent Loop BB24_120 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r8), %r9
	testb	$1, (%r9)
	je	.LBB24_126
# %bb.123:                              # %if.then6.i973
                                        #   in Loop: Header=BB24_122 Depth=2
	movq	56(%r9), %r9
	cmpl	$0, 44(%r9)
	je	.LBB24_126
# %bb.124:                              # %is_short_ref.exit1311
                                        #   in Loop: Header=BB24_122 Depth=2
	cmpb	$0, 40(%r9)
	jne	.LBB24_126
# %bb.125:                              # %if.then10.i977
                                        #   in Loop: Header=BB24_120 Depth=1
	movsbq	257(%rbx), %r8
	movq	%r9, (%rax,%r8,8)
	incb	257(%rbx)
	jmp	.LBB24_128
	.p2align	4, 0x90
.LBB24_127:                             #   in Loop: Header=BB24_120 Depth=1
	movl	%r14d, %edx
.LBB24_128:                             # %for.end.i939
                                        #   in Loop: Header=BB24_120 Depth=1
	cmpl	%r14d, %ecx
	jge	.LBB24_136
# %bb.129:                              # %for.body23.preheader.i946
                                        #   in Loop: Header=BB24_120 Depth=1
	movslq	%ecx, %r8
	incl	%ecx
	leaq	(,%r8,8), %r8
	addq	%rbp, %r8
	jmp	.LBB24_130
	.p2align	4, 0x90
.LBB24_134:                             # %for.inc45.i963
                                        #   in Loop: Header=BB24_130 Depth=2
	leal	(%rdi,%rcx), %r9d
	incl	%r9d
                                        # kill: def $ecx killed $ecx killed $rcx
	incl	%ecx
	addq	$8, %r8
                                        # kill: def $ecx killed $ecx def $rcx
	cmpl	$1, %r9d
	je	.LBB24_135
.LBB24_130:                             # %for.body23.i947
                                        #   Parent Loop BB24_120 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r8), %r9
	testb	$2, (%r9)
	je	.LBB24_134
# %bb.131:                              # %if.then29.i952
                                        #   in Loop: Header=BB24_130 Depth=2
	movq	64(%r9), %r9
	cmpl	$0, 44(%r9)
	je	.LBB24_134
# %bb.132:                              # %is_short_ref.exit1304
                                        #   in Loop: Header=BB24_130 Depth=2
	cmpb	$0, 40(%r9)
	jne	.LBB24_134
# %bb.133:                              # %if.then34.i956
                                        #   in Loop: Header=BB24_120 Depth=1
	movsbq	257(%rbx), %r8
	movq	%r9, (%rax,%r8,8)
	incb	257(%rbx)
	jmp	.LBB24_136
.LBB24_137:                             # %if.end48.i873
	cmpl	$2, %esi
	jne	.LBB24_159
# %bb.138:                              # %while.cond52.preheader.i877
	cmpl	%r14d, %edx
	jl	.LBB24_140
# %bb.139:                              # %while.cond52.preheader.i877
	cmpl	%r14d, %ecx
	jl	.LBB24_140
.LBB24_159:                             # %gen_pic_list_from_frame_list.exit988
	movl	52(%r12), %eax
	xorl	%r14d, %r14d
	movl	$0, %ebp
	testq	%rax, %rax
	je	.LBB24_171
# %bb.160:                              # %for.body362.lr.ph
	movq	32(%r12), %rcx
	cmpl	$1, %eax
	jne	.LBB24_162
# %bb.161:
	xorl	%edx, %edx
	xorl	%ebp, %ebp
.LBB24_168:                             # %for.end379.loopexit.unr-lcssa
	testb	$1, %al
	je	.LBB24_171
# %bb.169:                              # %for.body362.epil
	movq	(%rcx,%rdx,8), %rax
	cmpl	%r11d, 72(%rax)
	jne	.LBB24_171
# %bb.170:                              # %if.then369.epil
	movslq	%ebp, %rcx
	incl	%ebp
	movq	%rax, (%r13,%rcx,8)
.LBB24_171:                             # %for.end379
	movslq	%ebp, %rsi
	movl	$8, %edx
	movl	$compare_fs_by_lt_pic_idx_asc, %ecx
	movq	%r13, %rdi
	callq	qsort@PLT
	movl	184(%rbx), %edx
	movq	264(%rbx), %rax
	movl	$0, %ecx
	cmpl	$1, %edx
	jne	.LBB24_191
# %bb.172:                              # %while.cond.preheader.i1050
	testl	%ebp, %ebp
	jle	.LBB24_253
# %bb.173:                              # %for.cond.preheader.i1052.preheader
	movl	%ebp, %esi
	negl	%esi
	xorl	%ecx, %ecx
	xorl	%r14d, %r14d
	jmp	.LBB24_174
	.p2align	4, 0x90
.LBB24_189:                             #   in Loop: Header=BB24_174 Depth=1
	movl	%ebp, %ecx
.LBB24_190:                             # %for.end47.i1059
                                        #   in Loop: Header=BB24_174 Depth=1
	cmpl	%ebp, %r14d
	setl	%dil
	cmpl	%ebp, %ecx
	setl	%r8b
	orb	%dil, %r8b
	je	.LBB24_191
.LBB24_174:                             # %for.cond.preheader.i1052
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_176 Depth 2
                                        #     Child Loop BB24_184 Depth 2
	cmpl	%ebp, %r14d
	jge	.LBB24_182
# %bb.175:                              # %for.body.preheader.i1084
                                        #   in Loop: Header=BB24_174 Depth=1
	movslq	%r14d, %rdi
	incl	%r14d
	leaq	(,%rdi,8), %rdi
	addq	%r13, %rdi
	jmp	.LBB24_176
	.p2align	4, 0x90
.LBB24_180:                             # %for.inc.i1101
                                        #   in Loop: Header=BB24_176 Depth=2
	leal	(%rsi,%r14), %r8d
	incl	%r8d
	movl	%r14d, %r9d
	incl	%r9d
	addq	$8, %rdi
	movl	%r9d, %r14d
	cmpl	$1, %r8d
	je	.LBB24_181
.LBB24_176:                             # %for.body.i1085
                                        #   Parent Loop BB24_174 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %r8
	testb	$1, (%r8)
	je	.LBB24_180
# %bb.177:                              # %if.then6.i1090
                                        #   in Loop: Header=BB24_176 Depth=2
	movq	56(%r8), %r8
	cmpl	$0, 44(%r8)
	je	.LBB24_180
# %bb.178:                              # %is_long_ref.exit1337
                                        #   in Loop: Header=BB24_176 Depth=2
	cmpb	$0, 40(%r8)
	je	.LBB24_180
# %bb.179:                              # %if.then10.i1094
                                        #   in Loop: Header=BB24_174 Depth=1
	movsbq	256(%rbx), %rdi
	movq	%r8, (%rax,%rdi,8)
	incb	256(%rbx)
	jmp	.LBB24_182
	.p2align	4, 0x90
.LBB24_181:                             #   in Loop: Header=BB24_174 Depth=1
	movl	%ebp, %r14d
.LBB24_182:                             # %for.end.i1056
                                        #   in Loop: Header=BB24_174 Depth=1
	cmpl	%ebp, %ecx
	jge	.LBB24_190
# %bb.183:                              # %for.body23.preheader.i1063
                                        #   in Loop: Header=BB24_174 Depth=1
	movslq	%ecx, %rdi
	incl	%ecx
	leaq	(,%rdi,8), %rdi
	addq	%r13, %rdi
	jmp	.LBB24_184
	.p2align	4, 0x90
.LBB24_188:                             # %for.inc45.i1080
                                        #   in Loop: Header=BB24_184 Depth=2
	leal	(%rsi,%rcx), %r8d
	incl	%r8d
                                        # kill: def $ecx killed $ecx killed $rcx
	incl	%ecx
	addq	$8, %rdi
                                        # kill: def $ecx killed $ecx def $rcx
	cmpl	$1, %r8d
	je	.LBB24_189
.LBB24_184:                             # %for.body23.i1064
                                        #   Parent Loop BB24_174 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %r8
	testb	$2, (%r8)
	je	.LBB24_188
# %bb.185:                              # %if.then29.i1069
                                        #   in Loop: Header=BB24_184 Depth=2
	movq	64(%r8), %r8
	cmpl	$0, 44(%r8)
	je	.LBB24_188
# %bb.186:                              # %is_long_ref.exit1330
                                        #   in Loop: Header=BB24_184 Depth=2
	cmpb	$0, 40(%r8)
	je	.LBB24_188
# %bb.187:                              # %if.then34.i1073
                                        #   in Loop: Header=BB24_174 Depth=1
	movsbq	256(%rbx), %rdi
	movq	%r8, (%rax,%rdi,8)
	incb	256(%rbx)
	jmp	.LBB24_190
.LBB24_191:                             # %if.end48.i990
	cmpl	$2, %edx
	jne	.LBB24_213
# %bb.192:                              # %while.cond52.preheader.i994
	cmpl	%ebp, %r14d
	jl	.LBB24_194
# %bb.193:                              # %while.cond52.preheader.i994
	cmpl	%ebp, %ecx
	jl	.LBB24_194
.LBB24_213:                             # %gen_pic_list_from_frame_list.exit1105
	movl	184(%rbx), %ecx
	movq	272(%rbx), %rax
	cmpl	$2, %ecx
	je	.LBB24_234
# %bb.214:                              # %gen_pic_list_from_frame_list.exit1105
	cmpl	$1, %ecx
	jne	.LBB24_253
# %bb.215:                              # %while.cond.preheader.i1167
	testl	%ebp, %ebp
	jle	.LBB24_253
# %bb.216:                              # %for.cond.preheader.i1169.preheader
	movl	%ebp, %ecx
	negl	%ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.LBB24_217
	.p2align	4, 0x90
.LBB24_232:                             #   in Loop: Header=BB24_217 Depth=1
	movl	%ebp, %edx
.LBB24_233:                             # %for.end47.i1176
                                        #   in Loop: Header=BB24_217 Depth=1
	cmpl	%ebp, %esi
	setl	%dil
	cmpl	%ebp, %edx
	setl	%r8b
	orb	%dil, %r8b
	je	.LBB24_253
.LBB24_217:                             # %for.cond.preheader.i1169
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_219 Depth 2
                                        #     Child Loop BB24_227 Depth 2
	cmpl	%ebp, %esi
	jge	.LBB24_225
# %bb.218:                              # %for.body.preheader.i1201
                                        #   in Loop: Header=BB24_217 Depth=1
	movslq	%esi, %rdi
	incl	%esi
	leaq	(,%rdi,8), %rdi
	addq	%r13, %rdi
	jmp	.LBB24_219
	.p2align	4, 0x90
.LBB24_223:                             # %for.inc.i1218
                                        #   in Loop: Header=BB24_219 Depth=2
	leal	(%rcx,%rsi), %r8d
	incl	%r8d
                                        # kill: def $esi killed $esi killed $rsi
	incl	%esi
	addq	$8, %rdi
                                        # kill: def $esi killed $esi def $rsi
	cmpl	$1, %r8d
	je	.LBB24_224
.LBB24_219:                             # %for.body.i1202
                                        #   Parent Loop BB24_217 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %r8
	testb	$1, (%r8)
	je	.LBB24_223
# %bb.220:                              # %if.then6.i1207
                                        #   in Loop: Header=BB24_219 Depth=2
	movq	56(%r8), %r8
	cmpl	$0, 44(%r8)
	je	.LBB24_223
# %bb.221:                              # %is_long_ref.exit1365
                                        #   in Loop: Header=BB24_219 Depth=2
	cmpb	$0, 40(%r8)
	je	.LBB24_223
# %bb.222:                              # %if.then10.i1211
                                        #   in Loop: Header=BB24_217 Depth=1
	movsbq	257(%rbx), %rdi
	movq	%r8, (%rax,%rdi,8)
	incb	257(%rbx)
	jmp	.LBB24_225
	.p2align	4, 0x90
.LBB24_224:                             #   in Loop: Header=BB24_217 Depth=1
	movl	%ebp, %esi
.LBB24_225:                             # %for.end.i1173
                                        #   in Loop: Header=BB24_217 Depth=1
	cmpl	%ebp, %edx
	jge	.LBB24_233
# %bb.226:                              # %for.body23.preheader.i1180
                                        #   in Loop: Header=BB24_217 Depth=1
	movslq	%edx, %rdi
	incl	%edx
	leaq	(,%rdi,8), %rdi
	addq	%r13, %rdi
	jmp	.LBB24_227
	.p2align	4, 0x90
.LBB24_231:                             # %for.inc45.i1197
                                        #   in Loop: Header=BB24_227 Depth=2
	leal	(%rcx,%rdx), %r8d
	incl	%r8d
                                        # kill: def $edx killed $edx killed $rdx
	incl	%edx
	addq	$8, %rdi
                                        # kill: def $edx killed $edx def $rdx
	cmpl	$1, %r8d
	je	.LBB24_232
.LBB24_227:                             # %for.body23.i1181
                                        #   Parent Loop BB24_217 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %r8
	testb	$2, (%r8)
	je	.LBB24_231
# %bb.228:                              # %if.then29.i1186
                                        #   in Loop: Header=BB24_227 Depth=2
	movq	64(%r8), %r8
	cmpl	$0, 44(%r8)
	je	.LBB24_231
# %bb.229:                              # %is_long_ref.exit1358
                                        #   in Loop: Header=BB24_227 Depth=2
	cmpb	$0, 40(%r8)
	je	.LBB24_231
# %bb.230:                              # %if.then34.i1190
                                        #   in Loop: Header=BB24_217 Depth=1
	movsbq	257(%rbx), %rdi
	movq	%r8, (%rax,%rdi,8)
	incb	257(%rbx)
	jmp	.LBB24_233
.LBB24_162:                             # %for.body362.lr.ph.new
	movl	%eax, %esi
	andl	$-2, %esi
	xorl	%edx, %edx
	xorl	%ebp, %ebp
	jmp	.LBB24_163
	.p2align	4, 0x90
.LBB24_167:                             # %for.inc377.1
                                        #   in Loop: Header=BB24_163 Depth=1
	addq	$2, %rdx
	cmpq	%rdx, %rsi
	je	.LBB24_168
.LBB24_163:                             # %for.body362
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rdi
	cmpl	%r11d, 72(%rdi)
	je	.LBB24_164
# %bb.165:                              # %for.inc377
                                        #   in Loop: Header=BB24_163 Depth=1
	movq	8(%rcx,%rdx,8), %rdi
	cmpl	%r11d, 72(%rdi)
	jne	.LBB24_167
	jmp	.LBB24_166
	.p2align	4, 0x90
.LBB24_164:                             # %if.then369
                                        #   in Loop: Header=BB24_163 Depth=1
	movslq	%ebp, %r8
	incl	%ebp
	movq	%rdi, (%r13,%r8,8)
	movq	8(%rcx,%rdx,8), %rdi
	cmpl	%r11d, 72(%rdi)
	jne	.LBB24_167
.LBB24_166:                             # %if.then369.1
                                        #   in Loop: Header=BB24_163 Depth=1
	movslq	%ebp, %r8
	incl	%ebp
	movq	%rdi, (%r13,%r8,8)
	jmp	.LBB24_167
.LBB24_234:                             # %while.cond52.preheader.i1111
	testl	%ebp, %ebp
	jle	.LBB24_253
# %bb.235:                              # %for.cond60.preheader.i1114.preheader
	movl	%ebp, %ecx
	negl	%ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.LBB24_236
	.p2align	4, 0x90
.LBB24_251:                             #   in Loop: Header=BB24_236 Depth=1
	movl	%ebp, %esi
.LBB24_252:                             # %for.end117.i1121
                                        #   in Loop: Header=BB24_236 Depth=1
	cmpl	%ebp, %esi
	setl	%dil
	cmpl	%ebp, %edx
	setl	%r8b
	orb	%dil, %r8b
	je	.LBB24_253
.LBB24_236:                             # %for.cond60.preheader.i1114
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_238 Depth 2
                                        #     Child Loop BB24_246 Depth 2
	cmpl	%ebp, %edx
	jge	.LBB24_244
# %bb.237:                              # %for.body63.preheader.i1146
                                        #   in Loop: Header=BB24_236 Depth=1
	movslq	%edx, %rdi
	incl	%edx
	leaq	(,%rdi,8), %rdi
	addq	%r13, %rdi
	jmp	.LBB24_238
	.p2align	4, 0x90
.LBB24_242:                             # %for.inc86.i1163
                                        #   in Loop: Header=BB24_238 Depth=2
	leal	(%rcx,%rdx), %r8d
	incl	%r8d
                                        # kill: def $edx killed $edx killed $rdx
	incl	%edx
	addq	$8, %rdi
                                        # kill: def $edx killed $edx def $rdx
	cmpl	$1, %r8d
	je	.LBB24_243
.LBB24_238:                             # %for.body63.i1147
                                        #   Parent Loop BB24_236 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %r8
	testb	$2, (%r8)
	je	.LBB24_242
# %bb.239:                              # %if.then69.i1152
                                        #   in Loop: Header=BB24_238 Depth=2
	movq	64(%r8), %r8
	cmpl	$0, 44(%r8)
	je	.LBB24_242
# %bb.240:                              # %is_long_ref.exit1351
                                        #   in Loop: Header=BB24_238 Depth=2
	cmpb	$0, 40(%r8)
	je	.LBB24_242
# %bb.241:                              # %if.then75.i1156
                                        #   in Loop: Header=BB24_236 Depth=1
	movsbq	257(%rbx), %rdi
	movq	%r8, (%rax,%rdi,8)
	incb	257(%rbx)
	jmp	.LBB24_244
	.p2align	4, 0x90
.LBB24_243:                             #   in Loop: Header=BB24_236 Depth=1
	movl	%ebp, %edx
.LBB24_244:                             # %for.end88.i1118
                                        #   in Loop: Header=BB24_236 Depth=1
	cmpl	%ebp, %esi
	jge	.LBB24_252
# %bb.245:                              # %for.body92.preheader.i1125
                                        #   in Loop: Header=BB24_236 Depth=1
	movslq	%esi, %rdi
	incl	%esi
	leaq	(,%rdi,8), %rdi
	addq	%r13, %rdi
	jmp	.LBB24_246
	.p2align	4, 0x90
.LBB24_250:                             # %for.inc115.i1142
                                        #   in Loop: Header=BB24_246 Depth=2
	leal	(%rcx,%rsi), %r8d
	incl	%r8d
                                        # kill: def $esi killed $esi killed $rsi
	incl	%esi
	addq	$8, %rdi
                                        # kill: def $esi killed $esi def $rsi
	cmpl	$1, %r8d
	je	.LBB24_251
.LBB24_246:                             # %for.body92.i1126
                                        #   Parent Loop BB24_236 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %r8
	testb	$1, (%r8)
	je	.LBB24_250
# %bb.247:                              # %if.then98.i1131
                                        #   in Loop: Header=BB24_246 Depth=2
	movq	56(%r8), %r8
	cmpl	$0, 44(%r8)
	je	.LBB24_250
# %bb.248:                              # %is_long_ref.exit1344
                                        #   in Loop: Header=BB24_246 Depth=2
	cmpb	$0, 40(%r8)
	je	.LBB24_250
# %bb.249:                              # %if.then104.i1135
                                        #   in Loop: Header=BB24_236 Depth=1
	movsbq	257(%rbx), %rdi
	movq	%r8, (%rax,%rdi,8)
	incb	257(%rbx)
	jmp	.LBB24_252
.LBB24_253:                             # %gen_pic_list_from_frame_list.exit1222
	movq	%r15, %rdi
	callq	free@PLT
	movq	40(%rsp), %rdi                  # 8-byte Reload
	callq	free@PLT
	movq	%r13, %rdi
	callq	free@PLT
	movzbl	256(%rbx), %eax
	movzbl	257(%rbx), %ebp
	movq	32(%rsp), %r13                  # 8-byte Reload
	jmp	.LBB24_254
.LBB24_2:
	xorl	%r14d, %r14d
.LBB24_11:                              # %for.end
	movq	264(%rbx), %rdi
	movslq	%r14d, %r15
	movl	$8, %edx
	movl	$compare_pic_by_poc_desc, %ecx
	movq	%r15, %rsi
	callq	qsort@PLT
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	48(%r12), %eax
	movl	%r14d, %ebp
	testl	%eax, %eax
	je	.LBB24_20
# %bb.12:                               # %for.body45.lr.ph
	xorl	%ecx, %ecx
	movl	%r14d, %ebp
	jmp	.LBB24_13
	.p2align	4, 0x90
.LBB24_19:                              # %for.inc96
                                        #   in Loop: Header=BB24_13 Depth=1
	incq	%rcx
	movl	%eax, %edx
	cmpq	%rdx, %rcx
	jae	.LBB24_20
.LBB24_13:                              # %for.body45
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r12), %rdx
	movq	(%rdx,%rcx,8), %rdx
	cmpl	$3, (%rdx)
	jne	.LBB24_19
# %bb.14:                               # %if.then52
                                        #   in Loop: Header=BB24_13 Depth=1
	movq	48(%rdx), %rdx
	cmpl	$0, 44(%rdx)
	je	.LBB24_19
# %bb.15:                               # %land.lhs.true59
                                        #   in Loop: Header=BB24_13 Depth=1
	cmpb	$0, 40(%rdx)
	jne	.LBB24_19
# %bb.16:                               # %land.lhs.true66
                                        #   in Loop: Header=BB24_13 Depth=1
	cmpl	%edi, 344(%rdx)
	jne	.LBB24_19
# %bb.17:                               # %if.then74
                                        #   in Loop: Header=BB24_13 Depth=1
	movl	76(%rbx), %esi
	cmpl	4(%rdx), %esi
	jge	.LBB24_19
# %bb.18:                               # %if.then83
                                        #   in Loop: Header=BB24_13 Depth=1
	movq	264(%rbx), %rax
	movslq	%ebp, %rsi
	incl	%ebp
	movq	%rdx, (%rax,%rsi,8)
	movl	48(%r12), %eax
	jmp	.LBB24_19
.LBB24_20:                              # %for.end98
	leaq	(,%r15,8), %r12
	movq	264(%rbx), %rdi
	addq	%r12, %rdi
	movl	%ebp, %eax
	subl	%r15d, %eax
	movslq	%eax, %rsi
	movl	$8, %edx
	movl	$compare_pic_by_poc_asc, %ecx
	callq	qsort@PLT
	testl	%r15d, %r15d
	jle	.LBB24_26
# %bb.21:                               # %for.body107.lr.ph
	movl	%r14d, %edx
	movl	%edx, %eax
	andl	$3, %eax
	cmpl	$4, %r14d
	jae	.LBB24_34
# %bb.22:
	xorl	%ecx, %ecx
	jmp	.LBB24_23
.LBB24_98:                              # %for.cond60.preheader.i.preheader
	movl	%r14d, %edi
	negl	%edi
	.p2align	4, 0x90
.LBB24_99:                              # %for.cond60.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_101 Depth 2
                                        #     Child Loop BB24_109 Depth 2
	cmpl	%r14d, %edx
	jl	.LBB24_100
# %bb.107:                              # %for.end88.i
                                        #   in Loop: Header=BB24_99 Depth=1
	cmpl	%r14d, %esi
	jl	.LBB24_108
.LBB24_115:                             # %for.end117.i
                                        #   in Loop: Header=BB24_99 Depth=1
	cmpl	%r14d, %esi
	jl	.LBB24_99
.LBB24_116:                             # %for.end117.i
                                        #   in Loop: Header=BB24_99 Depth=1
	cmpl	%r14d, %edx
	jl	.LBB24_99
	jmp	.LBB24_117
	.p2align	4, 0x90
.LBB24_100:                             # %for.body63.preheader.i
                                        #   in Loop: Header=BB24_99 Depth=1
	movslq	%edx, %r8
	incl	%edx
	leaq	(%r15,%r8,8), %r8
	jmp	.LBB24_101
	.p2align	4, 0x90
.LBB24_105:                             # %for.inc86.i
                                        #   in Loop: Header=BB24_101 Depth=2
	leal	(%rdi,%rdx), %r9d
	incl	%r9d
                                        # kill: def $edx killed $edx killed $rdx
	incl	%edx
	addq	$8, %r8
                                        # kill: def $edx killed $edx def $rdx
	cmpl	$1, %r9d
	je	.LBB24_106
.LBB24_101:                             # %for.body63.i
                                        #   Parent Loop BB24_99 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r8), %r9
	testb	$2, (%r9)
	je	.LBB24_105
# %bb.102:                              # %if.then69.i
                                        #   in Loop: Header=BB24_101 Depth=2
	movq	64(%r9), %r9
	cmpl	$0, 44(%r9)
	je	.LBB24_105
# %bb.103:                              # %is_short_ref.exit1269
                                        #   in Loop: Header=BB24_101 Depth=2
	cmpb	$0, 40(%r9)
	jne	.LBB24_105
# %bb.104:                              # %if.then75.i
                                        #   in Loop: Header=BB24_99 Depth=1
	movsbq	%cl, %rcx
	movq	%r9, (%rax,%rcx,8)
	movzbl	256(%rbx), %ecx
	incb	%cl
	movb	%cl, 256(%rbx)
	cmpl	%r14d, %esi
	jge	.LBB24_115
	jmp	.LBB24_108
	.p2align	4, 0x90
.LBB24_106:                             #   in Loop: Header=BB24_99 Depth=1
	movl	%r14d, %edx
	cmpl	%r14d, %esi
	jge	.LBB24_115
.LBB24_108:                             # %for.body92.preheader.i
                                        #   in Loop: Header=BB24_99 Depth=1
	movslq	%esi, %r8
	incl	%esi
	leaq	(%r15,%r8,8), %r8
	jmp	.LBB24_109
	.p2align	4, 0x90
.LBB24_113:                             # %for.inc115.i
                                        #   in Loop: Header=BB24_109 Depth=2
	leal	(%rdi,%rsi), %r9d
	incl	%r9d
                                        # kill: def $esi killed $esi killed $rsi
	incl	%esi
	addq	$8, %r8
                                        # kill: def $esi killed $esi def $rsi
	cmpl	$1, %r9d
	je	.LBB24_114
.LBB24_109:                             # %for.body92.i
                                        #   Parent Loop BB24_99 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r8), %r9
	testb	$1, (%r9)
	je	.LBB24_113
# %bb.110:                              # %if.then98.i
                                        #   in Loop: Header=BB24_109 Depth=2
	movq	56(%r9), %r9
	cmpl	$0, 44(%r9)
	je	.LBB24_113
# %bb.111:                              # %is_short_ref.exit
                                        #   in Loop: Header=BB24_109 Depth=2
	cmpb	$0, 40(%r9)
	jne	.LBB24_113
# %bb.112:                              # %if.then104.i
                                        #   in Loop: Header=BB24_99 Depth=1
	movsbq	%cl, %rcx
	movq	%r9, (%rax,%rcx,8)
	movzbl	256(%rbx), %ecx
	incb	%cl
	movb	%cl, 256(%rbx)
	cmpl	%r14d, %esi
	jge	.LBB24_116
	jmp	.LBB24_99
	.p2align	4, 0x90
.LBB24_114:                             #   in Loop: Header=BB24_99 Depth=1
	movl	%r14d, %esi
	cmpl	%r14d, %esi
	jge	.LBB24_116
	jmp	.LBB24_99
.LBB24_140:                             # %for.cond60.preheader.i880.preheader
	movl	%r14d, %esi
	negl	%esi
	.p2align	4, 0x90
.LBB24_141:                             # %for.cond60.preheader.i880
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_143 Depth 2
                                        #     Child Loop BB24_151 Depth 2
	cmpl	%r14d, %ecx
	jl	.LBB24_142
# %bb.149:                              # %for.end88.i884
                                        #   in Loop: Header=BB24_141 Depth=1
	cmpl	%r14d, %edx
	jl	.LBB24_150
.LBB24_157:                             # %for.end117.i887
                                        #   in Loop: Header=BB24_141 Depth=1
	cmpl	%r14d, %edx
	jl	.LBB24_141
.LBB24_158:                             # %for.end117.i887
                                        #   in Loop: Header=BB24_141 Depth=1
	cmpl	%r14d, %ecx
	jl	.LBB24_141
	jmp	.LBB24_159
	.p2align	4, 0x90
.LBB24_142:                             # %for.body63.preheader.i912
                                        #   in Loop: Header=BB24_141 Depth=1
	movslq	%ecx, %rdi
	incl	%ecx
	leaq	(,%rdi,8), %rdi
	addq	%rbp, %rdi
	jmp	.LBB24_143
	.p2align	4, 0x90
.LBB24_147:                             # %for.inc86.i929
                                        #   in Loop: Header=BB24_143 Depth=2
	leal	(%rsi,%rcx), %r8d
	incl	%r8d
                                        # kill: def $ecx killed $ecx killed $rcx
	incl	%ecx
	addq	$8, %rdi
                                        # kill: def $ecx killed $ecx def $rcx
	cmpl	$1, %r8d
	je	.LBB24_148
.LBB24_143:                             # %for.body63.i913
                                        #   Parent Loop BB24_141 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %r8
	testb	$2, (%r8)
	je	.LBB24_147
# %bb.144:                              # %if.then69.i918
                                        #   in Loop: Header=BB24_143 Depth=2
	movq	64(%r8), %r8
	cmpl	$0, 44(%r8)
	je	.LBB24_147
# %bb.145:                              # %is_short_ref.exit1297
                                        #   in Loop: Header=BB24_143 Depth=2
	cmpb	$0, 40(%r8)
	jne	.LBB24_147
# %bb.146:                              # %if.then75.i922
                                        #   in Loop: Header=BB24_141 Depth=1
	movsbq	257(%rbx), %rdi
	movq	%r8, (%rax,%rdi,8)
	incb	257(%rbx)
	cmpl	%r14d, %edx
	jge	.LBB24_157
	jmp	.LBB24_150
	.p2align	4, 0x90
.LBB24_148:                             #   in Loop: Header=BB24_141 Depth=1
	movl	%r14d, %ecx
	cmpl	%r14d, %edx
	jge	.LBB24_157
.LBB24_150:                             # %for.body92.preheader.i891
                                        #   in Loop: Header=BB24_141 Depth=1
	movslq	%edx, %rdi
	incl	%edx
	leaq	(,%rdi,8), %rdi
	addq	%rbp, %rdi
	jmp	.LBB24_151
	.p2align	4, 0x90
.LBB24_155:                             # %for.inc115.i908
                                        #   in Loop: Header=BB24_151 Depth=2
	leal	(%rsi,%rdx), %r8d
	incl	%r8d
                                        # kill: def $edx killed $edx killed $rdx
	incl	%edx
	addq	$8, %rdi
                                        # kill: def $edx killed $edx def $rdx
	cmpl	$1, %r8d
	je	.LBB24_156
.LBB24_151:                             # %for.body92.i892
                                        #   Parent Loop BB24_141 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %r8
	testb	$1, (%r8)
	je	.LBB24_155
# %bb.152:                              # %if.then98.i897
                                        #   in Loop: Header=BB24_151 Depth=2
	movq	56(%r8), %r8
	cmpl	$0, 44(%r8)
	je	.LBB24_155
# %bb.153:                              # %is_short_ref.exit1290
                                        #   in Loop: Header=BB24_151 Depth=2
	cmpb	$0, 40(%r8)
	jne	.LBB24_155
# %bb.154:                              # %if.then104.i901
                                        #   in Loop: Header=BB24_141 Depth=1
	movsbq	257(%rbx), %rdi
	movq	%r8, (%rax,%rdi,8)
	incb	257(%rbx)
	cmpl	%r14d, %edx
	jge	.LBB24_158
	jmp	.LBB24_141
	.p2align	4, 0x90
.LBB24_156:                             #   in Loop: Header=BB24_141 Depth=1
	movl	%r14d, %edx
	cmpl	%r14d, %edx
	jge	.LBB24_158
	jmp	.LBB24_141
.LBB24_194:                             # %for.cond60.preheader.i997.preheader
	movl	%ebp, %edx
	negl	%edx
	.p2align	4, 0x90
.LBB24_195:                             # %for.cond60.preheader.i997
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_197 Depth 2
                                        #     Child Loop BB24_205 Depth 2
	cmpl	%ebp, %ecx
	jl	.LBB24_196
# %bb.203:                              # %for.end88.i1001
                                        #   in Loop: Header=BB24_195 Depth=1
	cmpl	%ebp, %r14d
	jl	.LBB24_204
.LBB24_211:                             # %for.end117.i1004
                                        #   in Loop: Header=BB24_195 Depth=1
	cmpl	%ebp, %r14d
	jl	.LBB24_195
.LBB24_212:                             # %for.end117.i1004
                                        #   in Loop: Header=BB24_195 Depth=1
	cmpl	%ebp, %ecx
	jl	.LBB24_195
	jmp	.LBB24_213
	.p2align	4, 0x90
.LBB24_196:                             # %for.body63.preheader.i1029
                                        #   in Loop: Header=BB24_195 Depth=1
	movslq	%ecx, %rsi
	incl	%ecx
	leaq	(,%rsi,8), %rsi
	addq	%r13, %rsi
	jmp	.LBB24_197
	.p2align	4, 0x90
.LBB24_201:                             # %for.inc86.i1046
                                        #   in Loop: Header=BB24_197 Depth=2
	leal	(%rdx,%rcx), %edi
	incl	%edi
                                        # kill: def $ecx killed $ecx killed $rcx
	incl	%ecx
	addq	$8, %rsi
                                        # kill: def $ecx killed $ecx def $rcx
	cmpl	$1, %edi
	je	.LBB24_202
.LBB24_197:                             # %for.body63.i1030
                                        #   Parent Loop BB24_195 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rsi), %rdi
	testb	$2, (%rdi)
	je	.LBB24_201
# %bb.198:                              # %if.then69.i1035
                                        #   in Loop: Header=BB24_197 Depth=2
	movq	64(%rdi), %rdi
	cmpl	$0, 44(%rdi)
	je	.LBB24_201
# %bb.199:                              # %is_long_ref.exit1323
                                        #   in Loop: Header=BB24_197 Depth=2
	cmpb	$0, 40(%rdi)
	je	.LBB24_201
# %bb.200:                              # %if.then75.i1039
                                        #   in Loop: Header=BB24_195 Depth=1
	movsbq	256(%rbx), %rsi
	movq	%rdi, (%rax,%rsi,8)
	incb	256(%rbx)
	cmpl	%ebp, %r14d
	jge	.LBB24_211
	jmp	.LBB24_204
	.p2align	4, 0x90
.LBB24_202:                             #   in Loop: Header=BB24_195 Depth=1
	movl	%ebp, %ecx
	cmpl	%ebp, %r14d
	jge	.LBB24_211
.LBB24_204:                             # %for.body92.preheader.i1008
                                        #   in Loop: Header=BB24_195 Depth=1
	movslq	%r14d, %rsi
	incl	%r14d
	leaq	(,%rsi,8), %rsi
	addq	%r13, %rsi
	jmp	.LBB24_205
	.p2align	4, 0x90
.LBB24_209:                             # %for.inc115.i1025
                                        #   in Loop: Header=BB24_205 Depth=2
	leal	(%rdx,%r14), %edi
	incl	%edi
	movl	%r14d, %r8d
	incl	%r8d
	addq	$8, %rsi
	movl	%r8d, %r14d
	cmpl	$1, %edi
	je	.LBB24_210
.LBB24_205:                             # %for.body92.i1009
                                        #   Parent Loop BB24_195 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rsi), %rdi
	testb	$1, (%rdi)
	je	.LBB24_209
# %bb.206:                              # %if.then98.i1014
                                        #   in Loop: Header=BB24_205 Depth=2
	movq	56(%rdi), %rdi
	cmpl	$0, 44(%rdi)
	je	.LBB24_209
# %bb.207:                              # %is_long_ref.exit
                                        #   in Loop: Header=BB24_205 Depth=2
	cmpb	$0, 40(%rdi)
	je	.LBB24_209
# %bb.208:                              # %if.then104.i1018
                                        #   in Loop: Header=BB24_195 Depth=1
	movsbq	256(%rbx), %rsi
	movq	%rdi, (%rax,%rsi,8)
	incb	256(%rbx)
	cmpl	%ebp, %r14d
	jge	.LBB24_212
	jmp	.LBB24_195
	.p2align	4, 0x90
.LBB24_210:                             #   in Loop: Header=BB24_195 Depth=1
	movl	%ebp, %r14d
	cmpl	%ebp, %r14d
	jge	.LBB24_212
	jmp	.LBB24_195
.LBB24_34:                              # %for.body107.lr.ph.new
	andl	$2147483644, %edx               # imm = 0x7FFFFFFC
	movslq	%ebp, %rsi
	shlq	$3, %rsi
	subq	%r12, %rsi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB24_35:                              # %for.body107
                                        # =>This Inner Loop Header: Depth=1
	movq	264(%rbx), %rdi
	movq	(%rdi,%rcx,8), %rdi
	movq	272(%rbx), %r8
	addq	%rsi, %r8
	movq	%rdi, (%r8,%rcx,8)
	movq	264(%rbx), %rdi
	movq	8(%rdi,%rcx,8), %rdi
	movq	272(%rbx), %r8
	addq	%rsi, %r8
	movq	%rdi, 8(%r8,%rcx,8)
	movq	264(%rbx), %rdi
	movq	16(%rdi,%rcx,8), %rdi
	movq	272(%rbx), %r8
	addq	%rsi, %r8
	movq	%rdi, 16(%r8,%rcx,8)
	movq	264(%rbx), %rdi
	movq	24(%rdi,%rcx,8), %rdi
	movq	272(%rbx), %r8
	addq	%rsi, %r8
	movq	%rdi, 24(%r8,%rcx,8)
	addq	$4, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB24_35
.LBB24_23:                              # %for.cond120.preheader.loopexit.unr-lcssa
	testq	%rax, %rax
	je	.LBB24_26
# %bb.24:                               # %for.body107.epil.preheader
	movslq	%ebp, %rdx
	shlq	$3, %rdx
	subq	%r12, %rdx
	.p2align	4, 0x90
.LBB24_25:                              # %for.body107.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	264(%rbx), %rsi
	movq	(%rsi,%rcx,8), %rsi
	movq	272(%rbx), %rdi
	addq	%rdx, %rdi
	movq	%rsi, (%rdi,%rcx,8)
	incq	%rcx
	decq	%rax
	jne	.LBB24_25
.LBB24_26:                              # %for.cond120.preheader
	movl	%ebp, %edx
	subl	%r14d, %edx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	jle	.LBB24_32
# %bb.27:                               # %for.body123.lr.ph
	movslq	%ebp, %rax
	movq	%r15, %rcx
	testb	$1, %dl
	je	.LBB24_29
# %bb.28:                               # %for.body123.prol
	movq	264(%rbx), %rcx
	movq	272(%rbx), %rdx
	movq	(%rcx,%r15,8), %rcx
	movq	%rcx, (%rdx)
	leaq	1(%r15), %rcx
.LBB24_29:                              # %for.body123.prol.loopexit
	leaq	-1(%rax), %rdx
	cmpq	%r15, %rdx
	je	.LBB24_32
# %bb.30:                               # %for.body123.preheader
	negq	%r12
	.p2align	4, 0x90
.LBB24_31:                              # %for.body123
                                        # =>This Inner Loop Header: Depth=1
	movq	264(%rbx), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movq	272(%rbx), %rsi
	addq	%r12, %rsi
	movq	%rdx, (%rsi,%rcx,8)
	movq	264(%rbx), %rdx
	movq	8(%rdx,%rcx,8), %rdx
	movq	272(%rbx), %rsi
	addq	%r12, %rsi
	movq	%rdx, 8(%rsi,%rcx,8)
	addq	$2, %rcx
	cmpq	%rcx, %rax
	jne	.LBB24_31
.LBB24_32:                              # %for.end135
	movb	%bpl, 257(%rbx)
	movb	%bpl, 256(%rbx)
	movq	16(%rsp), %r12                  # 8-byte Reload
	movl	52(%r12), %ecx
	testl	%ecx, %ecx
	je	.LBB24_33
# %bb.36:                               # %for.body143.lr.ph
	xorl	%eax, %eax
	jmp	.LBB24_37
	.p2align	4, 0x90
.LBB24_41:                              # %for.inc185
                                        #   in Loop: Header=BB24_37 Depth=1
	incq	%rax
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jae	.LBB24_42
.LBB24_37:                              # %for.body143
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%r12), %rdx
	movq	(%rdx,%rax,8), %rdx
	cmpl	$3, (%rdx)
	jne	.LBB24_41
# %bb.38:                               # %if.then149
                                        #   in Loop: Header=BB24_37 Depth=1
	movq	48(%rdx), %rdx
	cmpb	$0, 40(%rdx)
	je	.LBB24_41
# %bb.39:                               # %land.lhs.true157
                                        #   in Loop: Header=BB24_37 Depth=1
	cmpl	%edi, 344(%rdx)
	jne	.LBB24_41
# %bb.40:                               # %if.then165
                                        #   in Loop: Header=BB24_37 Depth=1
	movq	264(%rbx), %rcx
	movslq	%ebp, %rsi
	movq	%rdx, (%rcx,%rsi,8)
	movq	32(%r12), %rcx
	movq	(%rcx,%rax,8), %rcx
	movq	48(%rcx), %rcx
	movq	272(%rbx), %rdx
	leal	1(%rsi), %ebp
	movq	%rcx, (%rdx,%rsi,8)
	movl	52(%r12), %ecx
	jmp	.LBB24_41
.LBB24_42:                              # %for.end187.loopexit
	movzbl	256(%rbx), %eax
	jmp	.LBB24_43
.LBB24_33:
	movl	%ebp, %eax
.LBB24_43:                              # %for.end187
	movsbq	%al, %rax
	leaq	(,%rax,8), %rdi
	addq	264(%rbx), %rdi
	movsbl	%al, %eax
	movl	%ebp, %ecx
	subl	%eax, %ecx
	movslq	%ecx, %rsi
	movl	$8, %edx
	movl	$compare_pic_by_lt_pic_num_asc, %ecx
	callq	qsort@PLT
	movsbq	256(%rbx), %rax
	leaq	(,%rax,8), %rdi
	addq	272(%rbx), %rdi
	movslq	%ebp, %rsi
	subq	%rax, %rsi
	movl	$8, %edx
	movl	$compare_pic_by_lt_pic_num_asc, %ecx
	callq	qsort@PLT
	movb	%bpl, 257(%rbx)
	movb	%bpl, 256(%rbx)
	movl	%ebp, %eax
.LBB24_254:                             # %if.end391
	cmpb	%bpl, %al
	setne	%cl
	cmpb	$2, %al
	setl	%al
	orb	%cl, %al
	jne	.LBB24_259
# %bb.255:                              # %for.cond407.preheader
	movq	264(%rbx), %rcx
	movq	272(%rbx), %rax
	movzbl	%bpl, %edx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB24_257:                             # %for.body413
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rsi,8), %rdi
	cmpq	(%rax,%rsi,8), %rdi
	jne	.LBB24_259
# %bb.256:                              # %for.cond407
                                        #   in Loop: Header=BB24_257 Depth=1
	incq	%rsi
	cmpq	%rsi, %rdx
	jne	.LBB24_257
# %bb.258:                              # %if.then430
	movq	(%rax), %rcx
	movq	8(%rax), %rdx
	movq	%rdx, (%rax)
	movq	272(%rbx), %rax
	movq	%rcx, 8(%rax)
.LBB24_259:                             # %if.end444
	cmpl	$0, 32(%rbx)
	je	.LBB24_260
.LBB24_308:                             # %if.end540
	movsbl	256(%rbx), %ecx
	movl	136(%rbx), %edx
	movl	140(%rbx), %eax
	cmpl	%edx, %ecx
	cmovll	%ecx, %edx
	movb	%dl, 256(%rbx)
	movsbl	257(%rbx), %ecx
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	movb	%al, 257(%rbx)
	movsbl	%dl, %ecx
	cmpl	$32, %ecx
	ja	.LBB24_312
# %bb.309:                              # %for.body564.lr.ph
	movl	%ecx, %eax
	movq	856488(%r13), %rcx
	incq	%rax
	movq	%rax, %rdx
	.p2align	4, 0x90
.LBB24_310:                             # %for.body564
                                        # =>This Inner Loop Header: Depth=1
	movq	264(%rbx), %rsi
	movq	%rcx, -8(%rsi,%rax,8)
	incq	%rdx
	cmpl	$33, %eax
	movq	%rdx, %rax
	jne	.LBB24_310
# %bb.311:                              # %for.end571.loopexit
	movzbl	257(%rbx), %eax
.LBB24_312:                             # %for.end571
	cmpb	$32, %al
	ja	.LBB24_315
# %bb.313:                              # %for.body578.lr.ph
	movzbl	%al, %eax
	movq	856488(%r13), %rcx
	incq	%rax
	movq	%rax, %rdx
	.p2align	4, 0x90
.LBB24_314:                             # %for.body578
                                        # =>This Inner Loop Header: Depth=1
	movq	272(%rbx), %rsi
	movq	%rcx, -8(%rsi,%rax,8)
	incq	%rdx
	cmpl	$33, %eax
	movq	%rdx, %rax
	jne	.LBB24_314
.LBB24_315:                             # %for.end586
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
.LBB24_260:                             # %if.then447
	.cfi_def_cfa_offset 128
	movl	40(%r12), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, 13320(%rbx)
	testq	%rax, %rax
	jne	.LBB24_262
# %bb.261:                              # %if.then454
	movl	$.L.str.16, %edi
	callq	no_mem_exit@PLT
.LBB24_262:                             # %if.end455
	movl	40(%r12), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, 13328(%rbx)
	testq	%rax, %rax
	movq	64(%rsp), %rbp                  # 8-byte Reload
	jne	.LBB24_264
# %bb.263:                              # %if.then462
	movl	$.L.str.18, %edi
	callq	no_mem_exit@PLT
.LBB24_264:                             # %if.end463
	leaq	13308(%rbx), %r8
	leaq	13312(%rbx), %r14
	movl	184(%rbx), %esi
	testl	%esi, %esi
	je	.LBB24_265
# %bb.274:                              # %if.else518
	movq	13320(%rbx), %rcx
	movq	%r12, %rdi
	xorl	%edx, %edx
	movl	28(%rsp), %r9d                  # 4-byte Reload
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	16(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	append_interview_list
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	184(%rbx), %esi
	movq	13320(%rbx), %rcx
	movl	13308(%rbx), %edx
	movq	264(%rbx), %rax
	cmpl	$2, %esi
	je	.LBB24_283
# %bb.275:                              # %if.else518
	cmpl	$1, %esi
	movq	8(%rsp), %r10                   # 8-byte Reload
	jne	.LBB24_291
# %bb.276:                              # %for.cond.preheader.i1227
	testl	%edx, %edx
	jle	.LBB24_291
# %bb.277:                              # %for.body.preheader.i1228
	movzbl	256(%rbx), %esi
	cmpl	$1, %edx
	jne	.LBB24_279
# %bb.278:
	xorl	%edi, %edi
	jmp	.LBB24_281
.LBB24_265:                             # %if.then470
	movq	%r13, 32(%rsp)                  # 8-byte Spill
	movq	%r14, 16(%rsp)                  # 8-byte Spill
	movzbl	256(%rbx), %r14d
	movq	13320(%rbx), %rcx
	movq	%r12, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	28(%rsp), %r13d                 # 4-byte Reload
	movl	%r13d, %r9d
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	movq	%r12, %r15
	movq	16(%rsp), %r12                  # 8-byte Reload
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	callq	append_interview_list
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	13328(%rbx), %rcx
	movq	%r15, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	movq	16(%rsp), %r8                   # 8-byte Reload
	movl	%r13d, %r9d
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	callq	append_interview_list
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	cmpl	$0, 13308(%rbx)
	je	.LBB24_269
# %bb.266:                              # %for.body479.lr.ph
	movzbl	%r14b, %eax
	movsbq	%al, %rcx
	shlq	$3, %rcx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB24_267:                             # %for.body479
                                        # =>This Inner Loop Header: Depth=1
	movq	13320(%rbx), %rdx
	movq	(%rdx,%r14,8), %rdx
	movq	48(%rdx), %rdx
	movq	264(%rbx), %rsi
	addq	%rcx, %rsi
	movq	%rdx, (%rsi,%r14,8)
	incq	%r14
	movl	13308(%rbx), %edx
	cmpq	%rdx, %r14
	jb	.LBB24_267
# %bb.268:                              # %for.end491.loopexit
	addl	%eax, %r14d
.LBB24_269:                             # %for.end491
	movq	32(%rsp), %r13                  # 8-byte Reload
	movb	%r14b, 256(%rbx)
	movzbl	257(%rbx), %eax
	cmpl	$0, 13312(%rbx)
	je	.LBB24_273
# %bb.270:                              # %for.body502.lr.ph
	movzbl	%al, %ecx
	movsbq	%cl, %rdx
	shlq	$3, %rdx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB24_271:                             # %for.body502
                                        # =>This Inner Loop Header: Depth=1
	movq	13328(%rbx), %rsi
	movq	(%rsi,%rax,8), %rsi
	movq	48(%rsi), %rsi
	movq	272(%rbx), %rdi
	addq	%rdx, %rdi
	movq	%rsi, (%rdi,%rax,8)
	incq	%rax
	movl	13312(%rbx), %esi
	cmpq	%rsi, %rax
	jb	.LBB24_271
# %bb.272:                              # %for.end514.loopexit
	addl	%ecx, %eax
.LBB24_273:                             # %for.end514
	movb	%al, 257(%rbx)
	jmp	.LBB24_308
.LBB24_283:                             # %if.then7.i
	testl	%edx, %edx
	movq	8(%rsp), %r10                   # 8-byte Reload
	jle	.LBB24_291
# %bb.284:                              # %for.body11.preheader.i
	movzbl	256(%rbx), %esi
	cmpl	$1, %edx
	jne	.LBB24_286
# %bb.285:
	xorl	%edi, %edi
	jmp	.LBB24_288
.LBB24_279:                             # %for.body.preheader.i1228.new
	movl	%edx, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB24_280:                             # %for.body.i1229
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdi,8), %r9
	movq	56(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	movq	8(%rcx,%rdi,8), %r9
	movq	56(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	addq	$2, %rdi
	cmpq	%rdi, %r8
	jne	.LBB24_280
.LBB24_281:                             # %gen_pic_list_from_frame_interview_list.exit.loopexit.unr-lcssa
	testb	$1, %dl
	je	.LBB24_291
# %bb.282:                              # %for.body.i1229.epil
	movq	(%rcx,%rdi,8), %rcx
	movq	56(%rcx), %rcx
	jmp	.LBB24_290
.LBB24_286:                             # %for.body11.preheader.i.new
	movl	%edx, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB24_287:                             # %for.body11.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdi,8), %r9
	movq	64(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	movq	8(%rcx,%rdi,8), %r9
	movq	64(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	addq	$2, %rdi
	cmpq	%rdi, %r8
	jne	.LBB24_287
.LBB24_288:                             # %gen_pic_list_from_frame_interview_list.exit.loopexit1673.unr-lcssa
	testb	$1, %dl
	je	.LBB24_291
# %bb.289:                              # %for.body11.i.epil
	movq	(%rcx,%rdi,8), %rcx
	movq	64(%rcx), %rcx
.LBB24_290:                             # %gen_pic_list_from_frame_interview_list.exit
	movsbq	%sil, %rdx
	movq	%rcx, (%rax,%rdx,8)
	incb	256(%rbx)
.LBB24_291:                             # %gen_pic_list_from_frame_interview_list.exit
	movl	184(%rbx), %esi
	movq	13328(%rbx), %rcx
	movq	%r12, %rdi
	movl	$1, %edx
	movq	%r14, %r8
	movl	28(%rsp), %r9d                  # 4-byte Reload
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	append_interview_list
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	184(%rbx), %esi
	movq	13328(%rbx), %rcx
	movl	13312(%rbx), %edx
	movq	272(%rbx), %rax
	cmpl	$2, %esi
	je	.LBB24_300
# %bb.292:                              # %gen_pic_list_from_frame_interview_list.exit
	cmpl	$1, %esi
	jne	.LBB24_308
# %bb.293:                              # %for.cond.preheader.i1247
	testl	%edx, %edx
	jle	.LBB24_308
# %bb.294:                              # %for.body.preheader.i1249
	movzbl	257(%rbx), %esi
	cmpl	$1, %edx
	jne	.LBB24_296
# %bb.295:
	xorl	%edi, %edi
	jmp	.LBB24_298
.LBB24_300:                             # %if.then7.i1233
	testl	%edx, %edx
	jle	.LBB24_308
# %bb.301:                              # %for.body11.preheader.i1235
	movzbl	257(%rbx), %esi
	cmpl	$1, %edx
	jne	.LBB24_303
# %bb.302:
	xorl	%edi, %edi
	jmp	.LBB24_305
.LBB24_296:                             # %for.body.preheader.i1249.new
	movl	%edx, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB24_297:                             # %for.body.i1252
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdi,8), %r9
	movq	56(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	257(%rbx), %esi
	incb	%sil
	movb	%sil, 257(%rbx)
	movq	8(%rcx,%rdi,8), %r9
	movq	56(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	257(%rbx), %esi
	incb	%sil
	movb	%sil, 257(%rbx)
	addq	$2, %rdi
	cmpq	%rdi, %r8
	jne	.LBB24_297
.LBB24_298:                             # %if.end540.loopexit.unr-lcssa
	testb	$1, %dl
	je	.LBB24_308
# %bb.299:                              # %for.body.i1252.epil
	movq	(%rcx,%rdi,8), %rcx
	movq	56(%rcx), %rcx
	jmp	.LBB24_307
.LBB24_303:                             # %for.body11.preheader.i1235.new
	movl	%edx, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB24_304:                             # %for.body11.i1238
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdi,8), %r9
	movq	64(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	257(%rbx), %esi
	incb	%sil
	movb	%sil, 257(%rbx)
	movq	8(%rcx,%rdi,8), %r9
	movq	64(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	257(%rbx), %esi
	incb	%sil
	movb	%sil, 257(%rbx)
	addq	$2, %rdi
	cmpq	%rdi, %r8
	jne	.LBB24_304
.LBB24_305:                             # %if.end540.loopexit1672.unr-lcssa
	testb	$1, %dl
	je	.LBB24_308
# %bb.306:                              # %for.body11.i1238.epil
	movq	(%rcx,%rdi,8), %rcx
	movq	64(%rcx), %rcx
.LBB24_307:                             # %if.end540
	movsbq	%sil, %rdx
	movq	%rcx, (%rax,%rdx,8)
	incb	257(%rbx)
	jmp	.LBB24_308
.Lfunc_end24:
	.size	init_lists_b_slice, .Lfunc_end24-init_lists_b_slice
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function compare_pic_by_poc_desc
	.type	compare_pic_by_poc_desc,@function
compare_pic_by_poc_desc:                # @compare_pic_by_poc_desc
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	movl	4(%rax), %eax
	movq	(%rsi), %rcx
	movl	4(%rcx), %ecx
	xorl	%edx, %edx
	cmpl	%ecx, %eax
	setg	%dl
	negl	%edx
	cmpl	%ecx, %eax
	movl	$1, %eax
	cmovgel	%edx, %eax
	retq
.Lfunc_end25:
	.size	compare_pic_by_poc_desc, .Lfunc_end25-compare_pic_by_poc_desc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function compare_pic_by_poc_asc
	.type	compare_pic_by_poc_asc,@function
compare_pic_by_poc_asc:                 # @compare_pic_by_poc_asc
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	movl	4(%rax), %eax
	movq	(%rsi), %rcx
	xorl	%edx, %edx
	cmpl	4(%rcx), %eax
	setg	%dl
	movl	$-1, %eax
	cmovgel	%edx, %eax
	retq
.Lfunc_end26:
	.size	compare_pic_by_poc_asc, .Lfunc_end26-compare_pic_by_poc_asc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function compare_fs_by_poc_desc
	.type	compare_fs_by_poc_desc,@function
compare_fs_by_poc_desc:                 # @compare_fs_by_poc_desc
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	movl	40(%rax), %eax
	movq	(%rsi), %rcx
	movl	40(%rcx), %ecx
	xorl	%edx, %edx
	cmpl	%ecx, %eax
	setg	%dl
	negl	%edx
	cmpl	%ecx, %eax
	movl	$1, %eax
	cmovgel	%edx, %eax
	retq
.Lfunc_end27:
	.size	compare_fs_by_poc_desc, .Lfunc_end27-compare_fs_by_poc_desc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function compare_fs_by_poc_asc
	.type	compare_fs_by_poc_asc,@function
compare_fs_by_poc_asc:                  # @compare_fs_by_poc_asc
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	movl	40(%rax), %eax
	movq	(%rsi), %rcx
	xorl	%edx, %edx
	cmpl	40(%rcx), %eax
	setg	%dl
	movl	$-1, %eax
	cmovgel	%edx, %eax
	retq
.Lfunc_end28:
	.size	compare_fs_by_poc_asc, .Lfunc_end28-compare_fs_by_poc_asc
	.cfi_endproc
                                        # -- End function
	.globl	init_lists                      # -- Begin function init_lists
	.p2align	4, 0x90
	.type	init_lists,@function
init_lists:                             # @init_lists
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
	movq	%rdi, %rbx
	movq	(%rdi), %r13
	movq	40(%rdi), %r14
	movl	104(%rdi), %ecx
	movl	1176(%rdi), %edi
	movl	1184(%rbx), %ebp
	movq	$0, 13308(%rbx)
	movl	164(%rbx), %eax
	cmpq	$4, %rax
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	ja	.LBB29_141
# %bb.1:                                # %entry
	jmpq	*.LJTI29_0(,%rax,8)
.LBB29_4:                               # %if.then13
	movl	%ecx, 20(%rsp)                  # 4-byte Spill
	cmpl	$0, 184(%rbx)
	movq	%rbp, 48(%rsp)                  # 8-byte Spill
	je	.LBB29_5
# %bb.24:                               # %if.else
	movl	40(%r14), %r12d
	movl	$8, %esi
	movq	%r12, %rdi
	callq	calloc@PLT
	movq	%rax, %r15
	testq	%rax, %rax
	jne	.LBB29_26
# %bb.25:                               # %if.then108
	movl	$.L.str.14, %edi
	callq	no_mem_exit@PLT
	movl	40(%r14), %r12d
.LBB29_26:                              # %if.end109
	movq	%r13, 24(%rsp)                  # 8-byte Spill
	movl	$8, %esi
	movq	%r12, %rdi
	callq	calloc@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.LBB29_28
# %bb.27:                               # %if.then115
	movl	$.L.str.15, %edi
	callq	no_mem_exit@PLT
.LBB29_28:                              # %if.end116
	movl	48(%r14), %eax
	xorl	%r13d, %r13d
	movl	$0, %ebp
	testq	%rax, %rax
	je	.LBB29_43
# %bb.29:                               # %for.body121.lr.ph
	movq	24(%r14), %rcx
	cmpl	$1, %eax
	jne	.LBB29_31
# %bb.30:
	xorl	%edx, %edx
	xorl	%ebp, %ebp
.LBB29_39:                              # %for.end143.loopexit.unr-lcssa
	testb	$1, %al
	je	.LBB29_43
# %bb.40:                               # %for.body121.epil
	movq	(%rcx,%rdx,8), %rax
	cmpl	$0, 4(%rax)
	je	.LBB29_43
# %bb.41:                               # %land.lhs.true126.epil
	movq	8(%rsp), %rcx                   # 8-byte Reload
	cmpl	%ecx, 72(%rax)
	jne	.LBB29_43
# %bb.42:                               # %if.then133.epil
	movslq	%ebp, %rcx
	incl	%ebp
	movq	%rax, (%r15,%rcx,8)
.LBB29_43:                              # %for.end143
	movslq	%ebp, %rsi
	movl	$8, %edx
	movl	$compare_fs_by_frame_num_desc, %ecx
	movq	%r15, %rdi
	callq	qsort@PLT
	movb	$0, 256(%rbx)
	movl	184(%rbx), %esi
	movq	264(%rbx), %rax
	movl	$0, %ecx
	movl	$0, %edx
	cmpl	$1, %esi
	movq	8(%rsp), %r11                   # 8-byte Reload
	jne	.LBB29_63
# %bb.44:                               # %while.cond.preheader.i
	testl	%ebp, %ebp
	jle	.LBB29_85
# %bb.45:                               # %for.cond.preheader.i.preheader
	movl	%ebp, %edi
	negl	%edi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%r13d, %r13d
	jmp	.LBB29_46
	.p2align	4, 0x90
.LBB29_61:                              #   in Loop: Header=BB29_46 Depth=1
	movl	%ebp, %edx
.LBB29_62:                              # %for.end47.i
                                        #   in Loop: Header=BB29_46 Depth=1
	cmpl	%ebp, %r13d
	setl	%r8b
	cmpl	%ebp, %edx
	setl	%r9b
	orb	%r8b, %r9b
	je	.LBB29_63
.LBB29_46:                              # %for.cond.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_48 Depth 2
                                        #     Child Loop BB29_56 Depth 2
	cmpl	%ebp, %r13d
	jge	.LBB29_54
# %bb.47:                               # %for.body.preheader.i
                                        #   in Loop: Header=BB29_46 Depth=1
	movslq	%r13d, %r8
	incl	%r13d
	leaq	(%r15,%r8,8), %r8
	jmp	.LBB29_48
	.p2align	4, 0x90
.LBB29_52:                              # %for.inc.i
                                        #   in Loop: Header=BB29_48 Depth=2
	leal	(%rdi,%r13), %r9d
	incl	%r9d
	movl	%r13d, %r10d
	incl	%r10d
	addq	$8, %r8
	movl	%r10d, %r13d
	cmpl	$1, %r9d
	je	.LBB29_53
.LBB29_48:                              # %for.body.i
                                        #   Parent Loop BB29_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r8), %r9
	testb	$1, (%r9)
	je	.LBB29_52
# %bb.49:                               # %if.then6.i
                                        #   in Loop: Header=BB29_48 Depth=2
	movq	56(%r9), %r9
	cmpl	$0, 44(%r9)
	je	.LBB29_52
# %bb.50:                               # %is_short_ref.exit1960
                                        #   in Loop: Header=BB29_48 Depth=2
	cmpb	$0, 40(%r9)
	jne	.LBB29_52
# %bb.51:                               # %if.then10.i
                                        #   in Loop: Header=BB29_46 Depth=1
	movsbq	%cl, %rcx
	movq	%r9, (%rax,%rcx,8)
	movzbl	256(%rbx), %ecx
	incb	%cl
	movb	%cl, 256(%rbx)
	jmp	.LBB29_54
	.p2align	4, 0x90
.LBB29_53:                              #   in Loop: Header=BB29_46 Depth=1
	movl	%ebp, %r13d
.LBB29_54:                              # %for.end.i
                                        #   in Loop: Header=BB29_46 Depth=1
	cmpl	%ebp, %edx
	jge	.LBB29_62
# %bb.55:                               # %for.body23.preheader.i
                                        #   in Loop: Header=BB29_46 Depth=1
	movslq	%edx, %r8
	incl	%edx
	leaq	(%r15,%r8,8), %r8
	jmp	.LBB29_56
	.p2align	4, 0x90
.LBB29_60:                              # %for.inc45.i
                                        #   in Loop: Header=BB29_56 Depth=2
	leal	(%rdi,%rdx), %r9d
	incl	%r9d
                                        # kill: def $edx killed $edx killed $rdx
	incl	%edx
	addq	$8, %r8
                                        # kill: def $edx killed $edx def $rdx
	cmpl	$1, %r9d
	je	.LBB29_61
.LBB29_56:                              # %for.body23.i
                                        #   Parent Loop BB29_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r8), %r9
	testb	$2, (%r9)
	je	.LBB29_60
# %bb.57:                               # %if.then29.i
                                        #   in Loop: Header=BB29_56 Depth=2
	movq	64(%r9), %r9
	cmpl	$0, 44(%r9)
	je	.LBB29_60
# %bb.58:                               # %is_short_ref.exit1953
                                        #   in Loop: Header=BB29_56 Depth=2
	cmpb	$0, 40(%r9)
	jne	.LBB29_60
# %bb.59:                               # %if.then34.i
                                        #   in Loop: Header=BB29_46 Depth=1
	movsbq	%cl, %rcx
	movq	%r9, (%rax,%rcx,8)
	movzbl	256(%rbx), %ecx
	incb	%cl
	movb	%cl, 256(%rbx)
	jmp	.LBB29_62
.LBB29_2:                               # %if.then
	movw	$0, 256(%rbx)
	jmp	.LBB29_3
.LBB29_63:                              # %if.end48.i
	cmpl	$2, %esi
	jne	.LBB29_85
# %bb.64:                               # %while.cond52.preheader.i
	cmpl	%ebp, %r13d
	jl	.LBB29_66
# %bb.65:                               # %while.cond52.preheader.i
	cmpl	%ebp, %edx
	jl	.LBB29_66
.LBB29_85:                              # %gen_pic_list_from_frame_list.exit
	movl	52(%r14), %eax
	xorl	%r13d, %r13d
	movl	$0, %ebp
	testq	%rax, %rax
	je	.LBB29_97
# %bb.86:                               # %for.body156.lr.ph
	movq	32(%r14), %rcx
	cmpl	$1, %eax
	jne	.LBB29_88
# %bb.87:
	xorl	%edx, %edx
	xorl	%ebp, %ebp
.LBB29_94:                              # %for.end173.loopexit.unr-lcssa
	testb	$1, %al
	je	.LBB29_97
# %bb.95:                               # %for.body156.epil
	movq	(%rcx,%rdx,8), %rax
	cmpl	%r11d, 72(%rax)
	jne	.LBB29_97
# %bb.96:                               # %if.then163.epil
	movslq	%ebp, %rcx
	incl	%ebp
	movq	%rax, (%r12,%rcx,8)
.LBB29_97:                              # %for.end173
	movslq	%ebp, %rsi
	movl	$8, %edx
	movl	$compare_fs_by_lt_pic_idx_asc, %ecx
	movq	%r12, %rdi
	callq	qsort@PLT
	movl	184(%rbx), %edx
	movq	264(%rbx), %rax
	movl	$0, %ecx
	cmpl	$1, %edx
	jne	.LBB29_117
# %bb.98:                               # %while.cond.preheader.i1347
	testl	%ebp, %ebp
	jle	.LBB29_139
# %bb.99:                               # %for.cond.preheader.i1349.preheader
	movl	%ebp, %esi
	negl	%esi
	xorl	%ecx, %ecx
	xorl	%r13d, %r13d
	jmp	.LBB29_100
	.p2align	4, 0x90
.LBB29_115:                             #   in Loop: Header=BB29_100 Depth=1
	movl	%ebp, %ecx
.LBB29_116:                             # %for.end47.i1356
                                        #   in Loop: Header=BB29_100 Depth=1
	cmpl	%ebp, %r13d
	setl	%dil
	cmpl	%ebp, %ecx
	setl	%r8b
	orb	%dil, %r8b
	je	.LBB29_117
.LBB29_100:                             # %for.cond.preheader.i1349
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_102 Depth 2
                                        #     Child Loop BB29_110 Depth 2
	cmpl	%ebp, %r13d
	jge	.LBB29_108
# %bb.101:                              # %for.body.preheader.i1381
                                        #   in Loop: Header=BB29_100 Depth=1
	movslq	%r13d, %rdi
	incl	%r13d
	leaq	(%r12,%rdi,8), %rdi
	jmp	.LBB29_102
	.p2align	4, 0x90
.LBB29_106:                             # %for.inc.i1398
                                        #   in Loop: Header=BB29_102 Depth=2
	leal	(%rsi,%r13), %r8d
	incl	%r8d
	movl	%r13d, %r9d
	incl	%r9d
	addq	$8, %rdi
	movl	%r9d, %r13d
	cmpl	$1, %r8d
	je	.LBB29_107
.LBB29_102:                             # %for.body.i1382
                                        #   Parent Loop BB29_100 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %r8
	testb	$1, (%r8)
	je	.LBB29_106
# %bb.103:                              # %if.then6.i1387
                                        #   in Loop: Header=BB29_102 Depth=2
	movq	56(%r8), %r8
	cmpl	$0, 44(%r8)
	je	.LBB29_106
# %bb.104:                              # %is_long_ref.exit1986
                                        #   in Loop: Header=BB29_102 Depth=2
	cmpb	$0, 40(%r8)
	je	.LBB29_106
# %bb.105:                              # %if.then10.i1391
                                        #   in Loop: Header=BB29_100 Depth=1
	movsbq	256(%rbx), %rdi
	movq	%r8, (%rax,%rdi,8)
	incb	256(%rbx)
	jmp	.LBB29_108
	.p2align	4, 0x90
.LBB29_107:                             #   in Loop: Header=BB29_100 Depth=1
	movl	%ebp, %r13d
.LBB29_108:                             # %for.end.i1353
                                        #   in Loop: Header=BB29_100 Depth=1
	cmpl	%ebp, %ecx
	jge	.LBB29_116
# %bb.109:                              # %for.body23.preheader.i1360
                                        #   in Loop: Header=BB29_100 Depth=1
	movslq	%ecx, %rdi
	incl	%ecx
	leaq	(%r12,%rdi,8), %rdi
	jmp	.LBB29_110
	.p2align	4, 0x90
.LBB29_114:                             # %for.inc45.i1377
                                        #   in Loop: Header=BB29_110 Depth=2
	leal	(%rsi,%rcx), %r8d
	incl	%r8d
                                        # kill: def $ecx killed $ecx killed $rcx
	incl	%ecx
	addq	$8, %rdi
                                        # kill: def $ecx killed $ecx def $rcx
	cmpl	$1, %r8d
	je	.LBB29_115
.LBB29_110:                             # %for.body23.i1361
                                        #   Parent Loop BB29_100 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %r8
	testb	$2, (%r8)
	je	.LBB29_114
# %bb.111:                              # %if.then29.i1366
                                        #   in Loop: Header=BB29_110 Depth=2
	movq	64(%r8), %r8
	cmpl	$0, 44(%r8)
	je	.LBB29_114
# %bb.112:                              # %is_long_ref.exit1979
                                        #   in Loop: Header=BB29_110 Depth=2
	cmpb	$0, 40(%r8)
	je	.LBB29_114
# %bb.113:                              # %if.then34.i1370
                                        #   in Loop: Header=BB29_100 Depth=1
	movsbq	256(%rbx), %rdi
	movq	%r8, (%rax,%rdi,8)
	incb	256(%rbx)
	jmp	.LBB29_116
.LBB29_117:                             # %if.end48.i1287
	cmpl	$2, %edx
	jne	.LBB29_139
# %bb.118:                              # %while.cond52.preheader.i1291
	cmpl	%ebp, %r13d
	jl	.LBB29_120
# %bb.119:                              # %while.cond52.preheader.i1291
	cmpl	%ebp, %ecx
	jl	.LBB29_120
.LBB29_139:                             # %gen_pic_list_from_frame_list.exit1402
	movq	%r15, %rdi
	callq	free@PLT
	movq	%r12, %rdi
	callq	free@PLT
	movq	24(%rsp), %r13                  # 8-byte Reload
	jmp	.LBB29_140
.LBB29_141:                             # %if.else183
	movl	%ecx, 20(%rsp)                  # 4-byte Spill
	cmpl	$0, 184(%rbx)
	movq	%r13, 24(%rsp)                  # 8-byte Spill
	movq	%rbp, 48(%rsp)                  # 8-byte Spill
	je	.LBB29_142
# %bb.185:                              # %if.else427
	movl	40(%r14), %r12d
	movl	$8, %esi
	movq	%r12, %rdi
	callq	calloc@PLT
	movq	%rax, %r15
	testq	%rax, %rax
	jne	.LBB29_187
# %bb.186:                              # %if.then433
	movl	$.L.str.14, %edi
	callq	no_mem_exit@PLT
	movl	40(%r14), %r12d
.LBB29_187:                             # %if.end434
	movl	$8, %esi
	movq	%r12, %rdi
	callq	calloc@PLT
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	testq	%rax, %rax
	jne	.LBB29_189
# %bb.188:                              # %if.then440
	movl	$.L.str.17, %edi
	callq	no_mem_exit@PLT
	movl	40(%r14), %r12d
.LBB29_189:                             # %if.end441
	movl	$8, %esi
	movq	%r12, %rdi
	callq	calloc@PLT
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	testq	%rax, %rax
	jne	.LBB29_191
# %bb.190:                              # %if.then447
	movl	$.L.str.15, %edi
	callq	no_mem_exit@PLT
.LBB29_191:                             # %if.end448
	movw	$256, 256(%rbx)                 # imm = 0x100
	movl	48(%r14), %eax
	testq	%rax, %rax
	je	.LBB29_192
# %bb.193:                              # %for.body457.lr.ph
	movq	24(%r14), %rcx
	xorl	%edx, %edx
	xorl	%r13d, %r13d
	movq	8(%rsp), %r8                    # 8-byte Reload
	jmp	.LBB29_194
	.p2align	4, 0x90
.LBB29_198:                             # %for.inc487
                                        #   in Loop: Header=BB29_194 Depth=1
	incq	%rdx
	cmpq	%rax, %rdx
	jae	.LBB29_199
.LBB29_194:                             # %for.body457
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rsi
	cmpl	$0, (%rsi)
	je	.LBB29_198
# %bb.195:                              # %if.then463
                                        #   in Loop: Header=BB29_194 Depth=1
	movl	104(%rbx), %edi
	cmpl	40(%rsi), %edi
	jl	.LBB29_198
# %bb.196:                              # %land.lhs.true471
                                        #   in Loop: Header=BB29_194 Depth=1
	cmpl	%r8d, 72(%rsi)
	jne	.LBB29_198
# %bb.197:                              # %if.then478
                                        #   in Loop: Header=BB29_194 Depth=1
	movslq	%r13d, %rdi
	incl	%r13d
	movq	%rsi, (%r15,%rdi,8)
	jmp	.LBB29_198
.LBB29_5:                               # %for.cond.preheader
	movl	48(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB29_6
# %bb.7:                                # %for.body.lr.ph
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	jmp	.LBB29_8
	.p2align	4, 0x90
.LBB29_13:                              # %for.inc
                                        #   in Loop: Header=BB29_8 Depth=1
	incq	%rax
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jae	.LBB29_14
.LBB29_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r14), %rdx
	movq	(%rdx,%rax,8), %rdx
	cmpl	$3, (%rdx)
	jne	.LBB29_13
# %bb.9:                                # %if.then19
                                        #   in Loop: Header=BB29_8 Depth=1
	movq	48(%rdx), %rdx
	cmpl	$0, 44(%rdx)
	je	.LBB29_13
# %bb.10:                               # %land.lhs.true
                                        #   in Loop: Header=BB29_8 Depth=1
	cmpb	$0, 40(%rdx)
	jne	.LBB29_13
# %bb.11:                               # %land.lhs.true28
                                        #   in Loop: Header=BB29_8 Depth=1
	cmpl	%edi, 344(%rdx)
	jne	.LBB29_13
# %bb.12:                               # %if.then35
                                        #   in Loop: Header=BB29_8 Depth=1
	movq	264(%rbx), %rcx
	movslq	%ebp, %rsi
	incl	%ebp
	movq	%rdx, (%rcx,%rsi,8)
	movl	48(%r14), %ecx
	jmp	.LBB29_13
.LBB29_31:                              # %for.body121.lr.ph.new
	movl	%eax, %esi
	andl	$-2, %esi
	xorl	%edx, %edx
	xorl	%ebp, %ebp
	movq	8(%rsp), %r9                    # 8-byte Reload
	jmp	.LBB29_32
	.p2align	4, 0x90
.LBB29_38:                              # %for.inc141.1
                                        #   in Loop: Header=BB29_32 Depth=1
	addq	$2, %rdx
	cmpq	%rdx, %rsi
	je	.LBB29_39
.LBB29_32:                              # %for.body121
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rdi
	cmpl	$0, 4(%rdi)
	je	.LBB29_35
# %bb.33:                               # %land.lhs.true126
                                        #   in Loop: Header=BB29_32 Depth=1
	cmpl	%r9d, 72(%rdi)
	jne	.LBB29_35
# %bb.34:                               # %if.then133
                                        #   in Loop: Header=BB29_32 Depth=1
	movslq	%ebp, %r8
	incl	%ebp
	movq	%rdi, (%r15,%r8,8)
.LBB29_35:                              # %for.inc141
                                        #   in Loop: Header=BB29_32 Depth=1
	movq	8(%rcx,%rdx,8), %rdi
	cmpl	$0, 4(%rdi)
	je	.LBB29_38
# %bb.36:                               # %land.lhs.true126.1
                                        #   in Loop: Header=BB29_32 Depth=1
	cmpl	%r9d, 72(%rdi)
	jne	.LBB29_38
# %bb.37:                               # %if.then133.1
                                        #   in Loop: Header=BB29_32 Depth=1
	movslq	%ebp, %r8
	incl	%ebp
	movq	%rdi, (%r15,%r8,8)
	jmp	.LBB29_38
.LBB29_88:                              # %for.body156.lr.ph.new
	movl	%eax, %esi
	andl	$-2, %esi
	xorl	%edx, %edx
	xorl	%ebp, %ebp
	jmp	.LBB29_89
	.p2align	4, 0x90
.LBB29_93:                              # %for.inc171.1
                                        #   in Loop: Header=BB29_89 Depth=1
	addq	$2, %rdx
	cmpq	%rdx, %rsi
	je	.LBB29_94
.LBB29_89:                              # %for.body156
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rdi
	cmpl	%r11d, 72(%rdi)
	je	.LBB29_90
# %bb.91:                               # %for.inc171
                                        #   in Loop: Header=BB29_89 Depth=1
	movq	8(%rcx,%rdx,8), %rdi
	cmpl	%r11d, 72(%rdi)
	jne	.LBB29_93
	jmp	.LBB29_92
	.p2align	4, 0x90
.LBB29_90:                              # %if.then163
                                        #   in Loop: Header=BB29_89 Depth=1
	movslq	%ebp, %r8
	incl	%ebp
	movq	%rdi, (%r12,%r8,8)
	movq	8(%rcx,%rdx,8), %rdi
	cmpl	%r11d, 72(%rdi)
	jne	.LBB29_93
.LBB29_92:                              # %if.then163.1
                                        #   in Loop: Header=BB29_89 Depth=1
	movslq	%ebp, %r8
	incl	%ebp
	movq	%rdi, (%r12,%r8,8)
	jmp	.LBB29_93
.LBB29_142:                             # %for.cond188.preheader
	movl	48(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB29_143
# %bb.144:                              # %for.body192.lr.ph
	xorl	%eax, %eax
	xorl	%r12d, %r12d
	jmp	.LBB29_145
	.p2align	4, 0x90
.LBB29_151:                             # %for.inc241
                                        #   in Loop: Header=BB29_145 Depth=1
	incq	%rax
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jae	.LBB29_152
.LBB29_145:                             # %for.body192
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r14), %rdx
	movq	(%rdx,%rax,8), %rdx
	cmpl	$3, (%rdx)
	jne	.LBB29_151
# %bb.146:                              # %if.then199
                                        #   in Loop: Header=BB29_145 Depth=1
	movq	48(%rdx), %rdx
	cmpl	$0, 44(%rdx)
	je	.LBB29_151
# %bb.147:                              # %land.lhs.true206
                                        #   in Loop: Header=BB29_145 Depth=1
	cmpb	$0, 40(%rdx)
	jne	.LBB29_151
# %bb.148:                              # %land.lhs.true213
                                        #   in Loop: Header=BB29_145 Depth=1
	cmpl	%edi, 344(%rdx)
	jne	.LBB29_151
# %bb.149:                              # %if.then221
                                        #   in Loop: Header=BB29_145 Depth=1
	movl	76(%rbx), %esi
	cmpl	4(%rdx), %esi
	jl	.LBB29_151
# %bb.150:                              # %if.then228
                                        #   in Loop: Header=BB29_145 Depth=1
	movq	264(%rbx), %rcx
	movslq	%r12d, %rsi
	incl	%r12d
	movq	%rdx, (%rcx,%rsi,8)
	movl	48(%r14), %ecx
	jmp	.LBB29_151
.LBB29_6:
	xorl	%ebp, %ebp
.LBB29_14:                              # %for.end
	movq	264(%rbx), %rdi
	movslq	%ebp, %r15
	movl	$8, %edx
	movl	$compare_pic_by_pic_num_desc, %ecx
	movq	%r15, %rsi
	callq	qsort@PLT
	movb	%r15b, 256(%rbx)
	movl	52(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB29_15
# %bb.16:                               # %for.body54.lr.ph
	xorl	%eax, %eax
	movq	8(%rsp), %rdi                   # 8-byte Reload
	jmp	.LBB29_17
	.p2align	4, 0x90
.LBB29_21:                              # %for.inc88
                                        #   in Loop: Header=BB29_17 Depth=1
	incq	%rax
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jae	.LBB29_22
.LBB29_17:                              # %for.body54
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rdx
	movq	(%rdx,%rax,8), %rdx
	cmpl	$3, (%rdx)
	jne	.LBB29_21
# %bb.18:                               # %if.then60
                                        #   in Loop: Header=BB29_17 Depth=1
	movq	48(%rdx), %rdx
	cmpb	$0, 40(%rdx)
	je	.LBB29_21
# %bb.19:                               # %land.lhs.true68
                                        #   in Loop: Header=BB29_17 Depth=1
	cmpl	%edi, 344(%rdx)
	jne	.LBB29_21
# %bb.20:                               # %if.then76
                                        #   in Loop: Header=BB29_17 Depth=1
	movq	264(%rbx), %rcx
	movslq	%ebp, %rsi
	incl	%ebp
	movq	%rdx, (%rcx,%rsi,8)
	movl	52(%r14), %ecx
	jmp	.LBB29_21
.LBB29_22:                              # %for.end90.loopexit
	movzbl	256(%rbx), %eax
	movl	%ebp, %r15d
	jmp	.LBB29_23
.LBB29_15:
	movl	%r15d, %eax
.LBB29_23:                              # %for.end90
	movsbq	%al, %rax
	leaq	(,%rax,8), %rdi
	addq	264(%rbx), %rdi
	movsbl	%al, %eax
	subl	%eax, %ebp
	movslq	%ebp, %rsi
	movl	$8, %edx
	movl	$compare_pic_by_lt_pic_num_asc, %ecx
	callq	qsort@PLT
	movb	%r15b, 256(%rbx)
.LBB29_140:                             # %if.end180
	movb	$0, 257(%rbx)
	xorl	%ebp, %ebp
	movzbl	256(%rbx), %eax
	cmpb	$2, %al
	jge	.LBB29_396
	jmp	.LBB29_406
.LBB29_66:                              # %for.cond60.preheader.i.preheader
	movl	%ebp, %esi
	negl	%esi
	.p2align	4, 0x90
.LBB29_67:                              # %for.cond60.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_69 Depth 2
                                        #     Child Loop BB29_77 Depth 2
	cmpl	%ebp, %edx
	jl	.LBB29_68
# %bb.75:                               # %for.end88.i
                                        #   in Loop: Header=BB29_67 Depth=1
	cmpl	%ebp, %r13d
	jl	.LBB29_76
.LBB29_83:                              # %for.end117.i
                                        #   in Loop: Header=BB29_67 Depth=1
	cmpl	%ebp, %r13d
	jl	.LBB29_67
.LBB29_84:                              # %for.end117.i
                                        #   in Loop: Header=BB29_67 Depth=1
	cmpl	%ebp, %edx
	jl	.LBB29_67
	jmp	.LBB29_85
	.p2align	4, 0x90
.LBB29_68:                              # %for.body63.preheader.i
                                        #   in Loop: Header=BB29_67 Depth=1
	movslq	%edx, %rdi
	incl	%edx
	leaq	(%r15,%rdi,8), %rdi
	jmp	.LBB29_69
	.p2align	4, 0x90
.LBB29_73:                              # %for.inc86.i
                                        #   in Loop: Header=BB29_69 Depth=2
	leal	(%rsi,%rdx), %r8d
	incl	%r8d
                                        # kill: def $edx killed $edx killed $rdx
	incl	%edx
	addq	$8, %rdi
                                        # kill: def $edx killed $edx def $rdx
	cmpl	$1, %r8d
	je	.LBB29_74
.LBB29_69:                              # %for.body63.i
                                        #   Parent Loop BB29_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %r8
	testb	$2, (%r8)
	je	.LBB29_73
# %bb.70:                               # %if.then69.i
                                        #   in Loop: Header=BB29_69 Depth=2
	movq	64(%r8), %r8
	cmpl	$0, 44(%r8)
	je	.LBB29_73
# %bb.71:                               # %is_short_ref.exit1946
                                        #   in Loop: Header=BB29_69 Depth=2
	cmpb	$0, 40(%r8)
	jne	.LBB29_73
# %bb.72:                               # %if.then75.i
                                        #   in Loop: Header=BB29_67 Depth=1
	movsbq	%cl, %rcx
	movq	%r8, (%rax,%rcx,8)
	movzbl	256(%rbx), %ecx
	incb	%cl
	movb	%cl, 256(%rbx)
	cmpl	%ebp, %r13d
	jge	.LBB29_83
	jmp	.LBB29_76
	.p2align	4, 0x90
.LBB29_74:                              #   in Loop: Header=BB29_67 Depth=1
	movl	%ebp, %edx
	cmpl	%ebp, %r13d
	jge	.LBB29_83
.LBB29_76:                              # %for.body92.preheader.i
                                        #   in Loop: Header=BB29_67 Depth=1
	movslq	%r13d, %rdi
	incl	%r13d
	leaq	(%r15,%rdi,8), %rdi
	jmp	.LBB29_77
	.p2align	4, 0x90
.LBB29_81:                              # %for.inc115.i
                                        #   in Loop: Header=BB29_77 Depth=2
	leal	(%rsi,%r13), %r8d
	incl	%r8d
	movl	%r13d, %r9d
	incl	%r9d
	addq	$8, %rdi
	movl	%r9d, %r13d
	cmpl	$1, %r8d
	je	.LBB29_82
.LBB29_77:                              # %for.body92.i
                                        #   Parent Loop BB29_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %r8
	testb	$1, (%r8)
	je	.LBB29_81
# %bb.78:                               # %if.then98.i
                                        #   in Loop: Header=BB29_77 Depth=2
	movq	56(%r8), %r8
	cmpl	$0, 44(%r8)
	je	.LBB29_81
# %bb.79:                               # %is_short_ref.exit
                                        #   in Loop: Header=BB29_77 Depth=2
	cmpb	$0, 40(%r8)
	jne	.LBB29_81
# %bb.80:                               # %if.then104.i
                                        #   in Loop: Header=BB29_67 Depth=1
	movsbq	%cl, %rcx
	movq	%r8, (%rax,%rcx,8)
	movzbl	256(%rbx), %ecx
	incb	%cl
	movb	%cl, 256(%rbx)
	cmpl	%ebp, %r13d
	jge	.LBB29_84
	jmp	.LBB29_67
	.p2align	4, 0x90
.LBB29_82:                              #   in Loop: Header=BB29_67 Depth=1
	movl	%ebp, %r13d
	cmpl	%ebp, %r13d
	jge	.LBB29_84
	jmp	.LBB29_67
.LBB29_120:                             # %for.cond60.preheader.i1294.preheader
	movl	%ebp, %edx
	negl	%edx
	.p2align	4, 0x90
.LBB29_121:                             # %for.cond60.preheader.i1294
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_123 Depth 2
                                        #     Child Loop BB29_131 Depth 2
	cmpl	%ebp, %ecx
	jl	.LBB29_122
# %bb.129:                              # %for.end88.i1298
                                        #   in Loop: Header=BB29_121 Depth=1
	cmpl	%ebp, %r13d
	jl	.LBB29_130
.LBB29_137:                             # %for.end117.i1301
                                        #   in Loop: Header=BB29_121 Depth=1
	cmpl	%ebp, %r13d
	jl	.LBB29_121
.LBB29_138:                             # %for.end117.i1301
                                        #   in Loop: Header=BB29_121 Depth=1
	cmpl	%ebp, %ecx
	jl	.LBB29_121
	jmp	.LBB29_139
	.p2align	4, 0x90
.LBB29_122:                             # %for.body63.preheader.i1326
                                        #   in Loop: Header=BB29_121 Depth=1
	movslq	%ecx, %rsi
	incl	%ecx
	leaq	(%r12,%rsi,8), %rsi
	jmp	.LBB29_123
	.p2align	4, 0x90
.LBB29_127:                             # %for.inc86.i1343
                                        #   in Loop: Header=BB29_123 Depth=2
	leal	(%rdx,%rcx), %edi
	incl	%edi
                                        # kill: def $ecx killed $ecx killed $rcx
	incl	%ecx
	addq	$8, %rsi
                                        # kill: def $ecx killed $ecx def $rcx
	cmpl	$1, %edi
	je	.LBB29_128
.LBB29_123:                             # %for.body63.i1327
                                        #   Parent Loop BB29_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rsi), %rdi
	testb	$2, (%rdi)
	je	.LBB29_127
# %bb.124:                              # %if.then69.i1332
                                        #   in Loop: Header=BB29_123 Depth=2
	movq	64(%rdi), %rdi
	cmpl	$0, 44(%rdi)
	je	.LBB29_127
# %bb.125:                              # %is_long_ref.exit1972
                                        #   in Loop: Header=BB29_123 Depth=2
	cmpb	$0, 40(%rdi)
	je	.LBB29_127
# %bb.126:                              # %if.then75.i1336
                                        #   in Loop: Header=BB29_121 Depth=1
	movsbq	256(%rbx), %rsi
	movq	%rdi, (%rax,%rsi,8)
	incb	256(%rbx)
	cmpl	%ebp, %r13d
	jge	.LBB29_137
	jmp	.LBB29_130
	.p2align	4, 0x90
.LBB29_128:                             #   in Loop: Header=BB29_121 Depth=1
	movl	%ebp, %ecx
	cmpl	%ebp, %r13d
	jge	.LBB29_137
.LBB29_130:                             # %for.body92.preheader.i1305
                                        #   in Loop: Header=BB29_121 Depth=1
	movslq	%r13d, %rsi
	incl	%r13d
	leaq	(%r12,%rsi,8), %rsi
	jmp	.LBB29_131
	.p2align	4, 0x90
.LBB29_135:                             # %for.inc115.i1322
                                        #   in Loop: Header=BB29_131 Depth=2
	leal	(%rdx,%r13), %edi
	incl	%edi
	movl	%r13d, %r8d
	incl	%r8d
	addq	$8, %rsi
	movl	%r8d, %r13d
	cmpl	$1, %edi
	je	.LBB29_136
.LBB29_131:                             # %for.body92.i1306
                                        #   Parent Loop BB29_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rsi), %rdi
	testb	$1, (%rdi)
	je	.LBB29_135
# %bb.132:                              # %if.then98.i1311
                                        #   in Loop: Header=BB29_131 Depth=2
	movq	56(%rdi), %rdi
	cmpl	$0, 44(%rdi)
	je	.LBB29_135
# %bb.133:                              # %is_long_ref.exit
                                        #   in Loop: Header=BB29_131 Depth=2
	cmpb	$0, 40(%rdi)
	je	.LBB29_135
# %bb.134:                              # %if.then104.i1315
                                        #   in Loop: Header=BB29_121 Depth=1
	movsbq	256(%rbx), %rsi
	movq	%rdi, (%rax,%rsi,8)
	incb	256(%rbx)
	cmpl	%ebp, %r13d
	jge	.LBB29_138
	jmp	.LBB29_121
	.p2align	4, 0x90
.LBB29_136:                             #   in Loop: Header=BB29_121 Depth=1
	movl	%ebp, %r13d
	cmpl	%ebp, %r13d
	jge	.LBB29_138
	jmp	.LBB29_121
.LBB29_192:
	xorl	%r13d, %r13d
.LBB29_199:                             # %for.end489
	movslq	%r13d, %rbp
	movl	$8, %edx
	movl	$compare_fs_by_poc_desc, %ecx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	qsort@PLT
	movq	8(%rsp), %r8                    # 8-byte Reload
	movl	48(%r14), %eax
	movl	%r13d, %r12d
	testq	%rax, %rax
	je	.LBB29_206
# %bb.200:                              # %for.body495.lr.ph
	movq	24(%r14), %rcx
	xorl	%edx, %edx
	movl	%r13d, %r12d
	jmp	.LBB29_201
	.p2align	4, 0x90
.LBB29_205:                             # %for.inc525
                                        #   in Loop: Header=BB29_201 Depth=1
	incq	%rdx
	cmpq	%rax, %rdx
	jae	.LBB29_206
.LBB29_201:                             # %for.body495
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rsi
	cmpl	$0, (%rsi)
	je	.LBB29_205
# %bb.202:                              # %if.then501
                                        #   in Loop: Header=BB29_201 Depth=1
	movl	104(%rbx), %edi
	cmpl	40(%rsi), %edi
	jge	.LBB29_205
# %bb.203:                              # %land.lhs.true509
                                        #   in Loop: Header=BB29_201 Depth=1
	cmpl	%r8d, 72(%rsi)
	jne	.LBB29_205
# %bb.204:                              # %if.then516
                                        #   in Loop: Header=BB29_201 Depth=1
	movslq	%r12d, %rdi
	incl	%r12d
	movq	%rsi, (%r15,%rdi,8)
	jmp	.LBB29_205
.LBB29_206:                             # %for.end527
	leaq	(%r15,%rbp,8), %rdi
	movl	%r12d, %eax
	subl	%ebp, %eax
	movslq	%eax, %rsi
	movl	$8, %edx
	movl	$compare_fs_by_poc_asc, %ecx
	movq	%rdi, 64(%rsp)                  # 8-byte Spill
	movq	%rsi, 56(%rsp)                  # 8-byte Spill
	callq	qsort@PLT
	testl	%ebp, %ebp
	jle	.LBB29_214
# %bb.207:                              # %for.body535.preheader
	movl	%r13d, %eax
	cmpl	$7, %r13d
	ja	.LBB29_211
# %bb.208:
	xorl	%ecx, %ecx
	jmp	.LBB29_209
.LBB29_211:                             # %vector.ph
	movl	%eax, %ecx
	andl	$2147483640, %ecx               # imm = 0x7FFFFFF8
	movl	%eax, %edx
	shrl	$3, %edx
	andl	$268435455, %edx                # imm = 0xFFFFFFF
	shlq	$6, %rdx
	movslq	%r12d, %rsi
	shlq	$3, %rsi
	shlq	$3, %rbp
	subq	%rbp, %rsi
	movq	40(%rsp), %rdi                  # 8-byte Reload
	addq	%rdi, %rsi
	addq	$48, %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB29_212:                             # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%r15,%rdi), %xmm0
	movdqu	16(%r15,%rdi), %xmm1
	movdqu	32(%r15,%rdi), %xmm2
	movdqu	48(%r15,%rdi), %xmm3
	movdqu	%xmm0, -48(%rsi,%rdi)
	movdqu	%xmm1, -32(%rsi,%rdi)
	movdqu	%xmm2, -16(%rsi,%rdi)
	movdqu	%xmm3, (%rsi,%rdi)
	addq	$64, %rdi
	cmpq	%rdi, %rdx
	jne	.LBB29_212
# %bb.213:                              # %middle.block
	cmpl	%eax, %ecx
	je	.LBB29_214
.LBB29_209:                             # %for.body535.preheader2609
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rsi                  # 8-byte Reload
	leaq	(%rdx,%rsi,8), %rdx
	.p2align	4, 0x90
.LBB29_210:                             # %for.body535
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rcx,8), %rsi
	movq	%rsi, (%rdx,%rcx,8)
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB29_210
.LBB29_214:                             # %for.cond545.preheader
	cmpl	%r13d, %r12d
	movq	40(%rsp), %rbp                  # 8-byte Reload
	jle	.LBB29_216
# %bb.215:                              # %for.body548.preheader
	notl	%r13d
	addl	%r12d, %r13d
	leaq	8(,%r13,8), %rdx
	movq	%rbp, %rdi
	movq	64(%rsp), %rsi                  # 8-byte Reload
	callq	memcpy@PLT
.LBB29_216:                             # %for.end556
	movw	$0, 256(%rbx)
	movl	184(%rbx), %edi
	movq	264(%rbx), %rax
	xorl	%ecx, %ecx
	movl	$0, %esi
	movl	$0, %edx
	cmpl	$1, %edi
	movq	24(%rsp), %r13                  # 8-byte Reload
	movq	8(%rsp), %r11                   # 8-byte Reload
	movq	32(%rsp), %r10                  # 8-byte Reload
	jne	.LBB29_236
# %bb.217:                              # %while.cond.preheader.i1464
	testl	%r12d, %r12d
	jle	.LBB29_258
# %bb.218:                              # %for.cond.preheader.i1466.preheader
	movl	%r12d, %r8d
	negl	%r8d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.LBB29_219
	.p2align	4, 0x90
.LBB29_234:                             #   in Loop: Header=BB29_219 Depth=1
	movl	%r12d, %edx
.LBB29_235:                             # %for.end47.i1473
                                        #   in Loop: Header=BB29_219 Depth=1
	cmpl	%r12d, %esi
	setl	%r9b
	cmpl	%r12d, %edx
	setl	%r10b
	orb	%r9b, %r10b
	movq	32(%rsp), %r10                  # 8-byte Reload
	je	.LBB29_236
.LBB29_219:                             # %for.cond.preheader.i1466
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_221 Depth 2
                                        #     Child Loop BB29_229 Depth 2
	cmpl	%r12d, %esi
	jge	.LBB29_227
# %bb.220:                              # %for.body.preheader.i1498
                                        #   in Loop: Header=BB29_219 Depth=1
	movslq	%esi, %r9
	incl	%esi
	leaq	(%r15,%r9,8), %r9
	jmp	.LBB29_221
	.p2align	4, 0x90
.LBB29_225:                             # %for.inc.i1515
                                        #   in Loop: Header=BB29_221 Depth=2
	leal	(%r8,%rsi), %r10d
	incl	%r10d
                                        # kill: def $esi killed $esi killed $rsi
	incl	%esi
	addq	$8, %r9
                                        # kill: def $esi killed $esi def $rsi
	cmpl	$1, %r10d
	je	.LBB29_226
.LBB29_221:                             # %for.body.i1499
                                        #   Parent Loop BB29_219 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r9), %r10
	testb	$1, (%r10)
	je	.LBB29_225
# %bb.222:                              # %if.then6.i1504
                                        #   in Loop: Header=BB29_221 Depth=2
	movq	56(%r10), %r10
	cmpl	$0, 44(%r10)
	je	.LBB29_225
# %bb.223:                              # %is_short_ref.exit2014
                                        #   in Loop: Header=BB29_221 Depth=2
	cmpb	$0, 40(%r10)
	jne	.LBB29_225
# %bb.224:                              # %if.then10.i1508
                                        #   in Loop: Header=BB29_219 Depth=1
	movsbq	%cl, %rcx
	movq	%r10, (%rax,%rcx,8)
	movzbl	256(%rbx), %ecx
	incb	%cl
	movb	%cl, 256(%rbx)
	jmp	.LBB29_227
	.p2align	4, 0x90
.LBB29_226:                             #   in Loop: Header=BB29_219 Depth=1
	movl	%r12d, %esi
.LBB29_227:                             # %for.end.i1470
                                        #   in Loop: Header=BB29_219 Depth=1
	cmpl	%r12d, %edx
	jge	.LBB29_235
# %bb.228:                              # %for.body23.preheader.i1477
                                        #   in Loop: Header=BB29_219 Depth=1
	movslq	%edx, %r9
	incl	%edx
	leaq	(%r15,%r9,8), %r9
	jmp	.LBB29_229
	.p2align	4, 0x90
.LBB29_233:                             # %for.inc45.i1494
                                        #   in Loop: Header=BB29_229 Depth=2
	leal	(%r8,%rdx), %r10d
	incl	%r10d
                                        # kill: def $edx killed $edx killed $rdx
	incl	%edx
	addq	$8, %r9
                                        # kill: def $edx killed $edx def $rdx
	cmpl	$1, %r10d
	je	.LBB29_234
.LBB29_229:                             # %for.body23.i1478
                                        #   Parent Loop BB29_219 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r9), %r10
	testb	$2, (%r10)
	je	.LBB29_233
# %bb.230:                              # %if.then29.i1483
                                        #   in Loop: Header=BB29_229 Depth=2
	movq	64(%r10), %r10
	cmpl	$0, 44(%r10)
	je	.LBB29_233
# %bb.231:                              # %is_short_ref.exit2007
                                        #   in Loop: Header=BB29_229 Depth=2
	cmpb	$0, 40(%r10)
	jne	.LBB29_233
# %bb.232:                              # %if.then34.i1487
                                        #   in Loop: Header=BB29_219 Depth=1
	movsbq	%cl, %rcx
	movq	%r10, (%rax,%rcx,8)
	movzbl	256(%rbx), %ecx
	incb	%cl
	movb	%cl, 256(%rbx)
	jmp	.LBB29_235
.LBB29_236:                             # %if.end48.i1404
	cmpl	$2, %edi
	jne	.LBB29_258
# %bb.237:                              # %while.cond52.preheader.i1408
	cmpl	%r12d, %esi
	jl	.LBB29_239
# %bb.238:                              # %while.cond52.preheader.i1408
	cmpl	%r12d, %edx
	jl	.LBB29_239
.LBB29_258:                             # %gen_pic_list_from_frame_list.exit1519
	movl	184(%rbx), %esi
	movq	272(%rbx), %rax
	xorl	%edx, %edx
	movl	$0, %ecx
	cmpl	$1, %esi
	jne	.LBB29_278
# %bb.259:                              # %while.cond.preheader.i1581
	testl	%r12d, %r12d
	jle	.LBB29_300
# %bb.260:                              # %for.cond.preheader.i1583.preheader
	movl	%r12d, %edi
	negl	%edi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB29_261
	.p2align	4, 0x90
.LBB29_276:                             #   in Loop: Header=BB29_261 Depth=1
	movl	%r12d, %ecx
.LBB29_277:                             # %for.end47.i1590
                                        #   in Loop: Header=BB29_261 Depth=1
	cmpl	%r12d, %edx
	setl	%r8b
	cmpl	%r12d, %ecx
	setl	%r9b
	orb	%r8b, %r9b
	je	.LBB29_278
.LBB29_261:                             # %for.cond.preheader.i1583
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_263 Depth 2
                                        #     Child Loop BB29_271 Depth 2
	cmpl	%r12d, %edx
	jge	.LBB29_269
# %bb.262:                              # %for.body.preheader.i1615
                                        #   in Loop: Header=BB29_261 Depth=1
	movslq	%edx, %r8
	incl	%edx
	leaq	(,%r8,8), %r8
	addq	%rbp, %r8
	jmp	.LBB29_263
	.p2align	4, 0x90
.LBB29_267:                             # %for.inc.i1632
                                        #   in Loop: Header=BB29_263 Depth=2
	leal	(%rdi,%rdx), %r9d
	incl	%r9d
                                        # kill: def $edx killed $edx killed $rdx
	incl	%edx
	addq	$8, %r8
                                        # kill: def $edx killed $edx def $rdx
	cmpl	$1, %r9d
	je	.LBB29_268
.LBB29_263:                             # %for.body.i1616
                                        #   Parent Loop BB29_261 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r8), %r9
	testb	$1, (%r9)
	je	.LBB29_267
# %bb.264:                              # %if.then6.i1621
                                        #   in Loop: Header=BB29_263 Depth=2
	movq	56(%r9), %r9
	cmpl	$0, 44(%r9)
	je	.LBB29_267
# %bb.265:                              # %is_short_ref.exit2042
                                        #   in Loop: Header=BB29_263 Depth=2
	cmpb	$0, 40(%r9)
	jne	.LBB29_267
# %bb.266:                              # %if.then10.i1625
                                        #   in Loop: Header=BB29_261 Depth=1
	movsbq	257(%rbx), %r8
	movq	%r9, (%rax,%r8,8)
	incb	257(%rbx)
	jmp	.LBB29_269
	.p2align	4, 0x90
.LBB29_268:                             #   in Loop: Header=BB29_261 Depth=1
	movl	%r12d, %edx
.LBB29_269:                             # %for.end.i1587
                                        #   in Loop: Header=BB29_261 Depth=1
	cmpl	%r12d, %ecx
	jge	.LBB29_277
# %bb.270:                              # %for.body23.preheader.i1594
                                        #   in Loop: Header=BB29_261 Depth=1
	movslq	%ecx, %r8
	incl	%ecx
	leaq	(,%r8,8), %r8
	addq	%rbp, %r8
	jmp	.LBB29_271
	.p2align	4, 0x90
.LBB29_275:                             # %for.inc45.i1611
                                        #   in Loop: Header=BB29_271 Depth=2
	leal	(%rdi,%rcx), %r9d
	incl	%r9d
                                        # kill: def $ecx killed $ecx killed $rcx
	incl	%ecx
	addq	$8, %r8
                                        # kill: def $ecx killed $ecx def $rcx
	cmpl	$1, %r9d
	je	.LBB29_276
.LBB29_271:                             # %for.body23.i1595
                                        #   Parent Loop BB29_261 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r8), %r9
	testb	$2, (%r9)
	je	.LBB29_275
# %bb.272:                              # %if.then29.i1600
                                        #   in Loop: Header=BB29_271 Depth=2
	movq	64(%r9), %r9
	cmpl	$0, 44(%r9)
	je	.LBB29_275
# %bb.273:                              # %is_short_ref.exit2035
                                        #   in Loop: Header=BB29_271 Depth=2
	cmpb	$0, 40(%r9)
	jne	.LBB29_275
# %bb.274:                              # %if.then34.i1604
                                        #   in Loop: Header=BB29_261 Depth=1
	movsbq	257(%rbx), %r8
	movq	%r9, (%rax,%r8,8)
	incb	257(%rbx)
	jmp	.LBB29_277
.LBB29_278:                             # %if.end48.i1521
	cmpl	$2, %esi
	jne	.LBB29_300
# %bb.279:                              # %while.cond52.preheader.i1525
	cmpl	%r12d, %edx
	jl	.LBB29_281
# %bb.280:                              # %while.cond52.preheader.i1525
	cmpl	%r12d, %ecx
	jl	.LBB29_281
.LBB29_300:                             # %gen_pic_list_from_frame_list.exit1636
	movl	52(%r14), %eax
	xorl	%r12d, %r12d
	movl	$0, %ebp
	testq	%rax, %rax
	je	.LBB29_312
# %bb.301:                              # %for.body575.lr.ph
	movq	32(%r14), %rcx
	cmpl	$1, %eax
	jne	.LBB29_303
# %bb.302:
	xorl	%edx, %edx
	xorl	%ebp, %ebp
.LBB29_309:                             # %for.end592.loopexit.unr-lcssa
	testb	$1, %al
	je	.LBB29_312
# %bb.310:                              # %for.body575.epil
	movq	(%rcx,%rdx,8), %rax
	cmpl	%r11d, 72(%rax)
	jne	.LBB29_312
# %bb.311:                              # %if.then582.epil
	movslq	%ebp, %rcx
	incl	%ebp
	movq	%rax, (%r10,%rcx,8)
.LBB29_312:                             # %for.end592
	movslq	%ebp, %rsi
	movl	$8, %edx
	movl	$compare_fs_by_lt_pic_idx_asc, %ecx
	movq	%r10, %rdi
	callq	qsort@PLT
	movq	32(%rsp), %r10                  # 8-byte Reload
	movl	184(%rbx), %edx
	movq	264(%rbx), %rax
	movl	$0, %ecx
	cmpl	$1, %edx
	jne	.LBB29_332
# %bb.313:                              # %while.cond.preheader.i1698
	testl	%ebp, %ebp
	jle	.LBB29_394
# %bb.314:                              # %for.cond.preheader.i1700.preheader
	movl	%ebp, %esi
	negl	%esi
	xorl	%ecx, %ecx
	xorl	%r12d, %r12d
	jmp	.LBB29_315
	.p2align	4, 0x90
.LBB29_330:                             #   in Loop: Header=BB29_315 Depth=1
	movl	%ebp, %ecx
.LBB29_331:                             # %for.end47.i1707
                                        #   in Loop: Header=BB29_315 Depth=1
	cmpl	%ebp, %r12d
	setl	%dil
	cmpl	%ebp, %ecx
	setl	%r8b
	orb	%dil, %r8b
	je	.LBB29_332
.LBB29_315:                             # %for.cond.preheader.i1700
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_317 Depth 2
                                        #     Child Loop BB29_325 Depth 2
	cmpl	%ebp, %r12d
	jge	.LBB29_323
# %bb.316:                              # %for.body.preheader.i1732
                                        #   in Loop: Header=BB29_315 Depth=1
	movslq	%r12d, %rdi
	incl	%r12d
	leaq	(%r10,%rdi,8), %rdi
	jmp	.LBB29_317
	.p2align	4, 0x90
.LBB29_321:                             # %for.inc.i1749
                                        #   in Loop: Header=BB29_317 Depth=2
	leal	(%rsi,%r12), %r8d
	incl	%r8d
	movl	%r12d, %r9d
	incl	%r9d
	addq	$8, %rdi
	movl	%r9d, %r12d
	cmpl	$1, %r8d
	je	.LBB29_322
.LBB29_317:                             # %for.body.i1733
                                        #   Parent Loop BB29_315 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %r8
	testb	$1, (%r8)
	je	.LBB29_321
# %bb.318:                              # %if.then6.i1738
                                        #   in Loop: Header=BB29_317 Depth=2
	movq	56(%r8), %r8
	cmpl	$0, 44(%r8)
	je	.LBB29_321
# %bb.319:                              # %is_long_ref.exit2070
                                        #   in Loop: Header=BB29_317 Depth=2
	cmpb	$0, 40(%r8)
	je	.LBB29_321
# %bb.320:                              # %if.then10.i1742
                                        #   in Loop: Header=BB29_315 Depth=1
	movsbq	256(%rbx), %rdi
	movq	%r8, (%rax,%rdi,8)
	incb	256(%rbx)
	jmp	.LBB29_323
	.p2align	4, 0x90
.LBB29_322:                             #   in Loop: Header=BB29_315 Depth=1
	movl	%ebp, %r12d
.LBB29_323:                             # %for.end.i1704
                                        #   in Loop: Header=BB29_315 Depth=1
	cmpl	%ebp, %ecx
	jge	.LBB29_331
# %bb.324:                              # %for.body23.preheader.i1711
                                        #   in Loop: Header=BB29_315 Depth=1
	movslq	%ecx, %rdi
	incl	%ecx
	leaq	(%r10,%rdi,8), %rdi
	jmp	.LBB29_325
	.p2align	4, 0x90
.LBB29_329:                             # %for.inc45.i1728
                                        #   in Loop: Header=BB29_325 Depth=2
	leal	(%rsi,%rcx), %r8d
	incl	%r8d
                                        # kill: def $ecx killed $ecx killed $rcx
	incl	%ecx
	addq	$8, %rdi
                                        # kill: def $ecx killed $ecx def $rcx
	cmpl	$1, %r8d
	je	.LBB29_330
.LBB29_325:                             # %for.body23.i1712
                                        #   Parent Loop BB29_315 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %r8
	testb	$2, (%r8)
	je	.LBB29_329
# %bb.326:                              # %if.then29.i1717
                                        #   in Loop: Header=BB29_325 Depth=2
	movq	64(%r8), %r8
	cmpl	$0, 44(%r8)
	je	.LBB29_329
# %bb.327:                              # %is_long_ref.exit2063
                                        #   in Loop: Header=BB29_325 Depth=2
	cmpb	$0, 40(%r8)
	je	.LBB29_329
# %bb.328:                              # %if.then34.i1721
                                        #   in Loop: Header=BB29_315 Depth=1
	movsbq	256(%rbx), %rdi
	movq	%r8, (%rax,%rdi,8)
	incb	256(%rbx)
	jmp	.LBB29_331
.LBB29_332:                             # %if.end48.i1638
	cmpl	$2, %edx
	jne	.LBB29_354
# %bb.333:                              # %while.cond52.preheader.i1642
	cmpl	%ebp, %r12d
	jl	.LBB29_335
# %bb.334:                              # %while.cond52.preheader.i1642
	cmpl	%ebp, %ecx
	jl	.LBB29_335
.LBB29_354:                             # %gen_pic_list_from_frame_list.exit1753
	movl	184(%rbx), %ecx
	movq	272(%rbx), %rax
	cmpl	$2, %ecx
	je	.LBB29_375
# %bb.355:                              # %gen_pic_list_from_frame_list.exit1753
	cmpl	$1, %ecx
	jne	.LBB29_394
# %bb.356:                              # %while.cond.preheader.i1815
	testl	%ebp, %ebp
	jle	.LBB29_394
# %bb.357:                              # %for.cond.preheader.i1817.preheader
	movl	%ebp, %ecx
	negl	%ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.LBB29_358
	.p2align	4, 0x90
.LBB29_373:                             #   in Loop: Header=BB29_358 Depth=1
	movl	%ebp, %edx
.LBB29_374:                             # %for.end47.i1824
                                        #   in Loop: Header=BB29_358 Depth=1
	cmpl	%ebp, %esi
	setl	%dil
	cmpl	%ebp, %edx
	setl	%r8b
	orb	%dil, %r8b
	je	.LBB29_394
.LBB29_358:                             # %for.cond.preheader.i1817
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_360 Depth 2
                                        #     Child Loop BB29_368 Depth 2
	cmpl	%ebp, %esi
	jge	.LBB29_366
# %bb.359:                              # %for.body.preheader.i1849
                                        #   in Loop: Header=BB29_358 Depth=1
	movslq	%esi, %rdi
	incl	%esi
	leaq	(%r10,%rdi,8), %rdi
	jmp	.LBB29_360
	.p2align	4, 0x90
.LBB29_364:                             # %for.inc.i1866
                                        #   in Loop: Header=BB29_360 Depth=2
	leal	(%rcx,%rsi), %r8d
	incl	%r8d
                                        # kill: def $esi killed $esi killed $rsi
	incl	%esi
	addq	$8, %rdi
                                        # kill: def $esi killed $esi def $rsi
	cmpl	$1, %r8d
	je	.LBB29_365
.LBB29_360:                             # %for.body.i1850
                                        #   Parent Loop BB29_358 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %r8
	testb	$1, (%r8)
	je	.LBB29_364
# %bb.361:                              # %if.then6.i1855
                                        #   in Loop: Header=BB29_360 Depth=2
	movq	56(%r8), %r8
	cmpl	$0, 44(%r8)
	je	.LBB29_364
# %bb.362:                              # %is_long_ref.exit2098
                                        #   in Loop: Header=BB29_360 Depth=2
	cmpb	$0, 40(%r8)
	je	.LBB29_364
# %bb.363:                              # %if.then10.i1859
                                        #   in Loop: Header=BB29_358 Depth=1
	movsbq	257(%rbx), %rdi
	movq	%r8, (%rax,%rdi,8)
	incb	257(%rbx)
	jmp	.LBB29_366
	.p2align	4, 0x90
.LBB29_365:                             #   in Loop: Header=BB29_358 Depth=1
	movl	%ebp, %esi
.LBB29_366:                             # %for.end.i1821
                                        #   in Loop: Header=BB29_358 Depth=1
	cmpl	%ebp, %edx
	jge	.LBB29_374
# %bb.367:                              # %for.body23.preheader.i1828
                                        #   in Loop: Header=BB29_358 Depth=1
	movslq	%edx, %rdi
	incl	%edx
	leaq	(%r10,%rdi,8), %rdi
	jmp	.LBB29_368
	.p2align	4, 0x90
.LBB29_372:                             # %for.inc45.i1845
                                        #   in Loop: Header=BB29_368 Depth=2
	leal	(%rcx,%rdx), %r8d
	incl	%r8d
                                        # kill: def $edx killed $edx killed $rdx
	incl	%edx
	addq	$8, %rdi
                                        # kill: def $edx killed $edx def $rdx
	cmpl	$1, %r8d
	je	.LBB29_373
.LBB29_368:                             # %for.body23.i1829
                                        #   Parent Loop BB29_358 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %r8
	testb	$2, (%r8)
	je	.LBB29_372
# %bb.369:                              # %if.then29.i1834
                                        #   in Loop: Header=BB29_368 Depth=2
	movq	64(%r8), %r8
	cmpl	$0, 44(%r8)
	je	.LBB29_372
# %bb.370:                              # %is_long_ref.exit2091
                                        #   in Loop: Header=BB29_368 Depth=2
	cmpb	$0, 40(%r8)
	je	.LBB29_372
# %bb.371:                              # %if.then34.i1838
                                        #   in Loop: Header=BB29_358 Depth=1
	movsbq	257(%rbx), %rdi
	movq	%r8, (%rax,%rdi,8)
	incb	257(%rbx)
	jmp	.LBB29_374
.LBB29_303:                             # %for.body575.lr.ph.new
	movl	%eax, %esi
	andl	$-2, %esi
	xorl	%edx, %edx
	xorl	%ebp, %ebp
	jmp	.LBB29_304
	.p2align	4, 0x90
.LBB29_308:                             # %for.inc590.1
                                        #   in Loop: Header=BB29_304 Depth=1
	addq	$2, %rdx
	cmpq	%rdx, %rsi
	je	.LBB29_309
.LBB29_304:                             # %for.body575
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rdi
	cmpl	%r11d, 72(%rdi)
	je	.LBB29_305
# %bb.306:                              # %for.inc590
                                        #   in Loop: Header=BB29_304 Depth=1
	movq	8(%rcx,%rdx,8), %rdi
	cmpl	%r11d, 72(%rdi)
	jne	.LBB29_308
	jmp	.LBB29_307
	.p2align	4, 0x90
.LBB29_305:                             # %if.then582
                                        #   in Loop: Header=BB29_304 Depth=1
	movslq	%ebp, %r8
	incl	%ebp
	movq	%rdi, (%r10,%r8,8)
	movq	8(%rcx,%rdx,8), %rdi
	cmpl	%r11d, 72(%rdi)
	jne	.LBB29_308
.LBB29_307:                             # %if.then582.1
                                        #   in Loop: Header=BB29_304 Depth=1
	movslq	%ebp, %r8
	incl	%ebp
	movq	%rdi, (%r10,%r8,8)
	jmp	.LBB29_308
.LBB29_375:                             # %while.cond52.preheader.i1759
	testl	%ebp, %ebp
	jle	.LBB29_394
# %bb.376:                              # %for.cond60.preheader.i1762.preheader
	movl	%ebp, %ecx
	negl	%ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.LBB29_377
	.p2align	4, 0x90
.LBB29_392:                             #   in Loop: Header=BB29_377 Depth=1
	movl	%ebp, %esi
.LBB29_393:                             # %for.end117.i1769
                                        #   in Loop: Header=BB29_377 Depth=1
	cmpl	%ebp, %esi
	setl	%dil
	cmpl	%ebp, %edx
	setl	%r8b
	orb	%dil, %r8b
	je	.LBB29_394
.LBB29_377:                             # %for.cond60.preheader.i1762
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_379 Depth 2
                                        #     Child Loop BB29_387 Depth 2
	cmpl	%ebp, %edx
	jge	.LBB29_385
# %bb.378:                              # %for.body63.preheader.i1794
                                        #   in Loop: Header=BB29_377 Depth=1
	movslq	%edx, %rdi
	incl	%edx
	leaq	(%r10,%rdi,8), %rdi
	jmp	.LBB29_379
	.p2align	4, 0x90
.LBB29_383:                             # %for.inc86.i1811
                                        #   in Loop: Header=BB29_379 Depth=2
	leal	(%rcx,%rdx), %r8d
	incl	%r8d
                                        # kill: def $edx killed $edx killed $rdx
	incl	%edx
	addq	$8, %rdi
                                        # kill: def $edx killed $edx def $rdx
	cmpl	$1, %r8d
	je	.LBB29_384
.LBB29_379:                             # %for.body63.i1795
                                        #   Parent Loop BB29_377 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %r8
	testb	$2, (%r8)
	je	.LBB29_383
# %bb.380:                              # %if.then69.i1800
                                        #   in Loop: Header=BB29_379 Depth=2
	movq	64(%r8), %r8
	cmpl	$0, 44(%r8)
	je	.LBB29_383
# %bb.381:                              # %is_long_ref.exit2084
                                        #   in Loop: Header=BB29_379 Depth=2
	cmpb	$0, 40(%r8)
	je	.LBB29_383
# %bb.382:                              # %if.then75.i1804
                                        #   in Loop: Header=BB29_377 Depth=1
	movsbq	257(%rbx), %rdi
	movq	%r8, (%rax,%rdi,8)
	incb	257(%rbx)
	jmp	.LBB29_385
	.p2align	4, 0x90
.LBB29_384:                             #   in Loop: Header=BB29_377 Depth=1
	movl	%ebp, %edx
.LBB29_385:                             # %for.end88.i1766
                                        #   in Loop: Header=BB29_377 Depth=1
	cmpl	%ebp, %esi
	jge	.LBB29_393
# %bb.386:                              # %for.body92.preheader.i1773
                                        #   in Loop: Header=BB29_377 Depth=1
	movslq	%esi, %rdi
	incl	%esi
	leaq	(%r10,%rdi,8), %rdi
	jmp	.LBB29_387
	.p2align	4, 0x90
.LBB29_391:                             # %for.inc115.i1790
                                        #   in Loop: Header=BB29_387 Depth=2
	leal	(%rcx,%rsi), %r8d
	incl	%r8d
                                        # kill: def $esi killed $esi killed $rsi
	incl	%esi
	addq	$8, %rdi
                                        # kill: def $esi killed $esi def $rsi
	cmpl	$1, %r8d
	je	.LBB29_392
.LBB29_387:                             # %for.body92.i1774
                                        #   Parent Loop BB29_377 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %r8
	testb	$1, (%r8)
	je	.LBB29_391
# %bb.388:                              # %if.then98.i1779
                                        #   in Loop: Header=BB29_387 Depth=2
	movq	56(%r8), %r8
	cmpl	$0, 44(%r8)
	je	.LBB29_391
# %bb.389:                              # %is_long_ref.exit2077
                                        #   in Loop: Header=BB29_387 Depth=2
	cmpb	$0, 40(%r8)
	je	.LBB29_391
# %bb.390:                              # %if.then104.i1783
                                        #   in Loop: Header=BB29_377 Depth=1
	movsbq	257(%rbx), %rdi
	movq	%r8, (%rax,%rdi,8)
	incb	257(%rbx)
	jmp	.LBB29_393
.LBB29_394:                             # %gen_pic_list_from_frame_list.exit1870
	movq	%r15, %rdi
	movq	%r10, %r15
	callq	free@PLT
	movq	40(%rsp), %rdi                  # 8-byte Reload
	callq	free@PLT
	movq	%r15, %rdi
	callq	free@PLT
	movzbl	257(%rbx), %ebp
	movzbl	256(%rbx), %eax
	cmpb	$2, %al
	jge	.LBB29_396
	jmp	.LBB29_406
.LBB29_143:
	xorl	%r12d, %r12d
.LBB29_152:                             # %for.end243
	movq	264(%rbx), %rdi
	movslq	%r12d, %r15
	movl	$8, %edx
	movl	$compare_pic_by_poc_desc, %ecx
	movq	%r15, %rsi
	callq	qsort@PLT
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	48(%r14), %eax
	movl	%r12d, %ebp
	testl	%eax, %eax
	je	.LBB29_161
# %bb.153:                              # %for.body251.lr.ph
	xorl	%ecx, %ecx
	movl	%r12d, %ebp
	jmp	.LBB29_154
	.p2align	4, 0x90
.LBB29_160:                             # %for.inc302
                                        #   in Loop: Header=BB29_154 Depth=1
	incq	%rcx
	movl	%eax, %edx
	cmpq	%rdx, %rcx
	jae	.LBB29_161
.LBB29_154:                             # %for.body251
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r14), %rdx
	movq	(%rdx,%rcx,8), %rdx
	cmpl	$3, (%rdx)
	jne	.LBB29_160
# %bb.155:                              # %if.then258
                                        #   in Loop: Header=BB29_154 Depth=1
	movq	48(%rdx), %rdx
	cmpl	$0, 44(%rdx)
	je	.LBB29_160
# %bb.156:                              # %land.lhs.true265
                                        #   in Loop: Header=BB29_154 Depth=1
	cmpb	$0, 40(%rdx)
	jne	.LBB29_160
# %bb.157:                              # %land.lhs.true272
                                        #   in Loop: Header=BB29_154 Depth=1
	cmpl	%edi, 344(%rdx)
	jne	.LBB29_160
# %bb.158:                              # %if.then280
                                        #   in Loop: Header=BB29_154 Depth=1
	movl	76(%rbx), %esi
	cmpl	4(%rdx), %esi
	jge	.LBB29_160
# %bb.159:                              # %if.then289
                                        #   in Loop: Header=BB29_154 Depth=1
	movq	264(%rbx), %rax
	movslq	%ebp, %rsi
	incl	%ebp
	movq	%rdx, (%rax,%rsi,8)
	movl	48(%r14), %eax
	jmp	.LBB29_160
.LBB29_161:                             # %for.end304
	leaq	(,%r15,8), %r13
	movq	264(%rbx), %rdi
	addq	%r13, %rdi
	movl	%ebp, %eax
	subl	%r15d, %eax
	movslq	%eax, %rsi
	movl	$8, %edx
	movl	$compare_pic_by_poc_asc, %ecx
	callq	qsort@PLT
	testl	%r15d, %r15d
	jle	.LBB29_167
# %bb.162:                              # %for.body314.lr.ph
	movl	%r12d, %edx
	movl	%edx, %eax
	andl	$3, %eax
	cmpl	$4, %r12d
	jae	.LBB29_175
# %bb.163:
	xorl	%ecx, %ecx
	jmp	.LBB29_164
.LBB29_239:                             # %for.cond60.preheader.i1411.preheader
	movl	%r12d, %edi
	negl	%edi
	.p2align	4, 0x90
.LBB29_240:                             # %for.cond60.preheader.i1411
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_242 Depth 2
                                        #     Child Loop BB29_250 Depth 2
	cmpl	%r12d, %edx
	jl	.LBB29_241
# %bb.248:                              # %for.end88.i1415
                                        #   in Loop: Header=BB29_240 Depth=1
	cmpl	%r12d, %esi
	jl	.LBB29_249
.LBB29_256:                             # %for.end117.i1418
                                        #   in Loop: Header=BB29_240 Depth=1
	cmpl	%r12d, %esi
	jl	.LBB29_240
.LBB29_257:                             # %for.end117.i1418
                                        #   in Loop: Header=BB29_240 Depth=1
	cmpl	%r12d, %edx
	jl	.LBB29_240
	jmp	.LBB29_258
	.p2align	4, 0x90
.LBB29_241:                             # %for.body63.preheader.i1443
                                        #   in Loop: Header=BB29_240 Depth=1
	movslq	%edx, %r8
	incl	%edx
	leaq	(%r15,%r8,8), %r8
	jmp	.LBB29_242
	.p2align	4, 0x90
.LBB29_246:                             # %for.inc86.i1460
                                        #   in Loop: Header=BB29_242 Depth=2
	leal	(%rdi,%rdx), %r9d
	incl	%r9d
                                        # kill: def $edx killed $edx killed $rdx
	incl	%edx
	addq	$8, %r8
                                        # kill: def $edx killed $edx def $rdx
	cmpl	$1, %r9d
	je	.LBB29_247
.LBB29_242:                             # %for.body63.i1444
                                        #   Parent Loop BB29_240 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r8), %r9
	testb	$2, (%r9)
	je	.LBB29_246
# %bb.243:                              # %if.then69.i1449
                                        #   in Loop: Header=BB29_242 Depth=2
	movq	64(%r9), %r9
	cmpl	$0, 44(%r9)
	je	.LBB29_246
# %bb.244:                              # %is_short_ref.exit2000
                                        #   in Loop: Header=BB29_242 Depth=2
	cmpb	$0, 40(%r9)
	jne	.LBB29_246
# %bb.245:                              # %if.then75.i1453
                                        #   in Loop: Header=BB29_240 Depth=1
	movsbq	%cl, %rcx
	movq	%r9, (%rax,%rcx,8)
	movzbl	256(%rbx), %ecx
	incb	%cl
	movb	%cl, 256(%rbx)
	cmpl	%r12d, %esi
	jge	.LBB29_256
	jmp	.LBB29_249
	.p2align	4, 0x90
.LBB29_247:                             #   in Loop: Header=BB29_240 Depth=1
	movl	%r12d, %edx
	cmpl	%r12d, %esi
	jge	.LBB29_256
.LBB29_249:                             # %for.body92.preheader.i1422
                                        #   in Loop: Header=BB29_240 Depth=1
	movslq	%esi, %r8
	incl	%esi
	leaq	(%r15,%r8,8), %r8
	jmp	.LBB29_250
	.p2align	4, 0x90
.LBB29_254:                             # %for.inc115.i1439
                                        #   in Loop: Header=BB29_250 Depth=2
	leal	(%rdi,%rsi), %r9d
	incl	%r9d
                                        # kill: def $esi killed $esi killed $rsi
	incl	%esi
	addq	$8, %r8
                                        # kill: def $esi killed $esi def $rsi
	cmpl	$1, %r9d
	je	.LBB29_255
.LBB29_250:                             # %for.body92.i1423
                                        #   Parent Loop BB29_240 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r8), %r9
	testb	$1, (%r9)
	je	.LBB29_254
# %bb.251:                              # %if.then98.i1428
                                        #   in Loop: Header=BB29_250 Depth=2
	movq	56(%r9), %r9
	cmpl	$0, 44(%r9)
	je	.LBB29_254
# %bb.252:                              # %is_short_ref.exit1993
                                        #   in Loop: Header=BB29_250 Depth=2
	cmpb	$0, 40(%r9)
	jne	.LBB29_254
# %bb.253:                              # %if.then104.i1432
                                        #   in Loop: Header=BB29_240 Depth=1
	movsbq	%cl, %rcx
	movq	%r9, (%rax,%rcx,8)
	movzbl	256(%rbx), %ecx
	incb	%cl
	movb	%cl, 256(%rbx)
	cmpl	%r12d, %esi
	jge	.LBB29_257
	jmp	.LBB29_240
	.p2align	4, 0x90
.LBB29_255:                             #   in Loop: Header=BB29_240 Depth=1
	movl	%r12d, %esi
	cmpl	%r12d, %esi
	jge	.LBB29_257
	jmp	.LBB29_240
.LBB29_281:                             # %for.cond60.preheader.i1528.preheader
	movl	%r12d, %esi
	negl	%esi
	.p2align	4, 0x90
.LBB29_282:                             # %for.cond60.preheader.i1528
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_284 Depth 2
                                        #     Child Loop BB29_292 Depth 2
	cmpl	%r12d, %ecx
	jl	.LBB29_283
# %bb.290:                              # %for.end88.i1532
                                        #   in Loop: Header=BB29_282 Depth=1
	cmpl	%r12d, %edx
	jl	.LBB29_291
.LBB29_298:                             # %for.end117.i1535
                                        #   in Loop: Header=BB29_282 Depth=1
	cmpl	%r12d, %edx
	jl	.LBB29_282
.LBB29_299:                             # %for.end117.i1535
                                        #   in Loop: Header=BB29_282 Depth=1
	cmpl	%r12d, %ecx
	jl	.LBB29_282
	jmp	.LBB29_300
	.p2align	4, 0x90
.LBB29_283:                             # %for.body63.preheader.i1560
                                        #   in Loop: Header=BB29_282 Depth=1
	movslq	%ecx, %rdi
	incl	%ecx
	leaq	(,%rdi,8), %rdi
	addq	%rbp, %rdi
	jmp	.LBB29_284
	.p2align	4, 0x90
.LBB29_288:                             # %for.inc86.i1577
                                        #   in Loop: Header=BB29_284 Depth=2
	leal	(%rsi,%rcx), %r8d
	incl	%r8d
                                        # kill: def $ecx killed $ecx killed $rcx
	incl	%ecx
	addq	$8, %rdi
                                        # kill: def $ecx killed $ecx def $rcx
	cmpl	$1, %r8d
	je	.LBB29_289
.LBB29_284:                             # %for.body63.i1561
                                        #   Parent Loop BB29_282 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %r8
	testb	$2, (%r8)
	je	.LBB29_288
# %bb.285:                              # %if.then69.i1566
                                        #   in Loop: Header=BB29_284 Depth=2
	movq	64(%r8), %r8
	cmpl	$0, 44(%r8)
	je	.LBB29_288
# %bb.286:                              # %is_short_ref.exit2028
                                        #   in Loop: Header=BB29_284 Depth=2
	cmpb	$0, 40(%r8)
	jne	.LBB29_288
# %bb.287:                              # %if.then75.i1570
                                        #   in Loop: Header=BB29_282 Depth=1
	movsbq	257(%rbx), %rdi
	movq	%r8, (%rax,%rdi,8)
	incb	257(%rbx)
	cmpl	%r12d, %edx
	jge	.LBB29_298
	jmp	.LBB29_291
	.p2align	4, 0x90
.LBB29_289:                             #   in Loop: Header=BB29_282 Depth=1
	movl	%r12d, %ecx
	cmpl	%r12d, %edx
	jge	.LBB29_298
.LBB29_291:                             # %for.body92.preheader.i1539
                                        #   in Loop: Header=BB29_282 Depth=1
	movslq	%edx, %rdi
	incl	%edx
	leaq	(,%rdi,8), %rdi
	addq	%rbp, %rdi
	jmp	.LBB29_292
	.p2align	4, 0x90
.LBB29_296:                             # %for.inc115.i1556
                                        #   in Loop: Header=BB29_292 Depth=2
	leal	(%rsi,%rdx), %r8d
	incl	%r8d
                                        # kill: def $edx killed $edx killed $rdx
	incl	%edx
	addq	$8, %rdi
                                        # kill: def $edx killed $edx def $rdx
	cmpl	$1, %r8d
	je	.LBB29_297
.LBB29_292:                             # %for.body92.i1540
                                        #   Parent Loop BB29_282 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %r8
	testb	$1, (%r8)
	je	.LBB29_296
# %bb.293:                              # %if.then98.i1545
                                        #   in Loop: Header=BB29_292 Depth=2
	movq	56(%r8), %r8
	cmpl	$0, 44(%r8)
	je	.LBB29_296
# %bb.294:                              # %is_short_ref.exit2021
                                        #   in Loop: Header=BB29_292 Depth=2
	cmpb	$0, 40(%r8)
	jne	.LBB29_296
# %bb.295:                              # %if.then104.i1549
                                        #   in Loop: Header=BB29_282 Depth=1
	movsbq	257(%rbx), %rdi
	movq	%r8, (%rax,%rdi,8)
	incb	257(%rbx)
	cmpl	%r12d, %edx
	jge	.LBB29_299
	jmp	.LBB29_282
	.p2align	4, 0x90
.LBB29_297:                             #   in Loop: Header=BB29_282 Depth=1
	movl	%r12d, %edx
	cmpl	%r12d, %edx
	jge	.LBB29_299
	jmp	.LBB29_282
.LBB29_335:                             # %for.cond60.preheader.i1645.preheader
	movl	%ebp, %edx
	negl	%edx
	.p2align	4, 0x90
.LBB29_336:                             # %for.cond60.preheader.i1645
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_338 Depth 2
                                        #     Child Loop BB29_346 Depth 2
	cmpl	%ebp, %ecx
	jl	.LBB29_337
# %bb.344:                              # %for.end88.i1649
                                        #   in Loop: Header=BB29_336 Depth=1
	cmpl	%ebp, %r12d
	jl	.LBB29_345
.LBB29_352:                             # %for.end117.i1652
                                        #   in Loop: Header=BB29_336 Depth=1
	cmpl	%ebp, %r12d
	jl	.LBB29_336
.LBB29_353:                             # %for.end117.i1652
                                        #   in Loop: Header=BB29_336 Depth=1
	cmpl	%ebp, %ecx
	jl	.LBB29_336
	jmp	.LBB29_354
	.p2align	4, 0x90
.LBB29_337:                             # %for.body63.preheader.i1677
                                        #   in Loop: Header=BB29_336 Depth=1
	movslq	%ecx, %rsi
	incl	%ecx
	leaq	(%r10,%rsi,8), %rsi
	jmp	.LBB29_338
	.p2align	4, 0x90
.LBB29_342:                             # %for.inc86.i1694
                                        #   in Loop: Header=BB29_338 Depth=2
	leal	(%rdx,%rcx), %edi
	incl	%edi
                                        # kill: def $ecx killed $ecx killed $rcx
	incl	%ecx
	addq	$8, %rsi
                                        # kill: def $ecx killed $ecx def $rcx
	cmpl	$1, %edi
	je	.LBB29_343
.LBB29_338:                             # %for.body63.i1678
                                        #   Parent Loop BB29_336 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rsi), %rdi
	testb	$2, (%rdi)
	je	.LBB29_342
# %bb.339:                              # %if.then69.i1683
                                        #   in Loop: Header=BB29_338 Depth=2
	movq	64(%rdi), %rdi
	cmpl	$0, 44(%rdi)
	je	.LBB29_342
# %bb.340:                              # %is_long_ref.exit2056
                                        #   in Loop: Header=BB29_338 Depth=2
	cmpb	$0, 40(%rdi)
	je	.LBB29_342
# %bb.341:                              # %if.then75.i1687
                                        #   in Loop: Header=BB29_336 Depth=1
	movsbq	256(%rbx), %rsi
	movq	%rdi, (%rax,%rsi,8)
	incb	256(%rbx)
	cmpl	%ebp, %r12d
	jge	.LBB29_352
	jmp	.LBB29_345
	.p2align	4, 0x90
.LBB29_343:                             #   in Loop: Header=BB29_336 Depth=1
	movl	%ebp, %ecx
	cmpl	%ebp, %r12d
	jge	.LBB29_352
.LBB29_345:                             # %for.body92.preheader.i1656
                                        #   in Loop: Header=BB29_336 Depth=1
	movslq	%r12d, %rsi
	incl	%r12d
	leaq	(%r10,%rsi,8), %rsi
	jmp	.LBB29_346
	.p2align	4, 0x90
.LBB29_350:                             # %for.inc115.i1673
                                        #   in Loop: Header=BB29_346 Depth=2
	leal	(%rdx,%r12), %edi
	incl	%edi
	movl	%r12d, %r8d
	incl	%r8d
	addq	$8, %rsi
	movl	%r8d, %r12d
	cmpl	$1, %edi
	je	.LBB29_351
.LBB29_346:                             # %for.body92.i1657
                                        #   Parent Loop BB29_336 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rsi), %rdi
	testb	$1, (%rdi)
	je	.LBB29_350
# %bb.347:                              # %if.then98.i1662
                                        #   in Loop: Header=BB29_346 Depth=2
	movq	56(%rdi), %rdi
	cmpl	$0, 44(%rdi)
	je	.LBB29_350
# %bb.348:                              # %is_long_ref.exit2049
                                        #   in Loop: Header=BB29_346 Depth=2
	cmpb	$0, 40(%rdi)
	je	.LBB29_350
# %bb.349:                              # %if.then104.i1666
                                        #   in Loop: Header=BB29_336 Depth=1
	movsbq	256(%rbx), %rsi
	movq	%rdi, (%rax,%rsi,8)
	incb	256(%rbx)
	cmpl	%ebp, %r12d
	jge	.LBB29_353
	jmp	.LBB29_336
	.p2align	4, 0x90
.LBB29_351:                             #   in Loop: Header=BB29_336 Depth=1
	movl	%ebp, %r12d
	cmpl	%ebp, %r12d
	jge	.LBB29_353
	jmp	.LBB29_336
.LBB29_175:                             # %for.body314.lr.ph.new
	andl	$2147483644, %edx               # imm = 0x7FFFFFFC
	movslq	%ebp, %rsi
	shlq	$3, %rsi
	subq	%r13, %rsi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB29_176:                             # %for.body314
                                        # =>This Inner Loop Header: Depth=1
	movq	264(%rbx), %rdi
	movq	(%rdi,%rcx,8), %rdi
	movq	272(%rbx), %r8
	addq	%rsi, %r8
	movq	%rdi, (%r8,%rcx,8)
	movq	264(%rbx), %rdi
	movq	8(%rdi,%rcx,8), %rdi
	movq	272(%rbx), %r8
	addq	%rsi, %r8
	movq	%rdi, 8(%r8,%rcx,8)
	movq	264(%rbx), %rdi
	movq	16(%rdi,%rcx,8), %rdi
	movq	272(%rbx), %r8
	addq	%rsi, %r8
	movq	%rdi, 16(%r8,%rcx,8)
	movq	264(%rbx), %rdi
	movq	24(%rdi,%rcx,8), %rdi
	movq	272(%rbx), %r8
	addq	%rsi, %r8
	movq	%rdi, 24(%r8,%rcx,8)
	addq	$4, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB29_176
.LBB29_164:                             # %for.cond327.preheader.loopexit.unr-lcssa
	testq	%rax, %rax
	je	.LBB29_167
# %bb.165:                              # %for.body314.epil.preheader
	movslq	%ebp, %rdx
	shlq	$3, %rdx
	subq	%r13, %rdx
	.p2align	4, 0x90
.LBB29_166:                             # %for.body314.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	264(%rbx), %rsi
	movq	(%rsi,%rcx,8), %rsi
	movq	272(%rbx), %rdi
	addq	%rdx, %rdi
	movq	%rsi, (%rdi,%rcx,8)
	incq	%rcx
	decq	%rax
	jne	.LBB29_166
.LBB29_167:                             # %for.cond327.preheader
	movl	%ebp, %edx
	subl	%r12d, %edx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	jle	.LBB29_173
# %bb.168:                              # %for.body330.lr.ph
	movslq	%ebp, %rax
	movq	%r15, %rcx
	testb	$1, %dl
	je	.LBB29_170
# %bb.169:                              # %for.body330.prol
	movq	264(%rbx), %rcx
	movq	272(%rbx), %rdx
	movq	(%rcx,%r15,8), %rcx
	movq	%rcx, (%rdx)
	leaq	1(%r15), %rcx
.LBB29_170:                             # %for.body330.prol.loopexit
	leaq	-1(%rax), %rdx
	cmpq	%r15, %rdx
	je	.LBB29_173
# %bb.171:                              # %for.body330.preheader
	negq	%r13
	.p2align	4, 0x90
.LBB29_172:                             # %for.body330
                                        # =>This Inner Loop Header: Depth=1
	movq	264(%rbx), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movq	272(%rbx), %rsi
	addq	%r13, %rsi
	movq	%rdx, (%rsi,%rcx,8)
	movq	264(%rbx), %rdx
	movq	8(%rdx,%rcx,8), %rdx
	movq	272(%rbx), %rsi
	addq	%r13, %rsi
	movq	%rdx, 8(%rsi,%rcx,8)
	addq	$2, %rcx
	cmpq	%rcx, %rax
	jne	.LBB29_172
.LBB29_173:                             # %for.end342
	movb	%bpl, 257(%rbx)
	movb	%bpl, 256(%rbx)
	movl	52(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB29_174
# %bb.177:                              # %for.body352.lr.ph
	xorl	%eax, %eax
	movq	24(%rsp), %r13                  # 8-byte Reload
	jmp	.LBB29_178
	.p2align	4, 0x90
.LBB29_182:                             # %for.inc395
                                        #   in Loop: Header=BB29_178 Depth=1
	incq	%rax
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jae	.LBB29_183
.LBB29_178:                             # %for.body352
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rdx
	movq	(%rdx,%rax,8), %rdx
	cmpl	$3, (%rdx)
	jne	.LBB29_182
# %bb.179:                              # %if.then359
                                        #   in Loop: Header=BB29_178 Depth=1
	movq	48(%rdx), %rdx
	cmpb	$0, 40(%rdx)
	je	.LBB29_182
# %bb.180:                              # %land.lhs.true367
                                        #   in Loop: Header=BB29_178 Depth=1
	cmpl	%edi, 344(%rdx)
	jne	.LBB29_182
# %bb.181:                              # %if.then375
                                        #   in Loop: Header=BB29_178 Depth=1
	movq	264(%rbx), %rcx
	movslq	%ebp, %rsi
	movq	%rdx, (%rcx,%rsi,8)
	movq	32(%r14), %rcx
	movq	(%rcx,%rax,8), %rcx
	movq	48(%rcx), %rcx
	movq	272(%rbx), %rdx
	leal	1(%rsi), %ebp
	movq	%rcx, (%rdx,%rsi,8)
	movl	52(%r14), %ecx
	jmp	.LBB29_182
.LBB29_183:                             # %for.end397.loopexit
	movzbl	256(%rbx), %eax
	jmp	.LBB29_184
.LBB29_174:
	movl	%ebp, %eax
	movq	24(%rsp), %r13                  # 8-byte Reload
.LBB29_184:                             # %for.end397
	movsbq	%al, %rax
	leaq	(,%rax,8), %rdi
	addq	264(%rbx), %rdi
	movsbl	%al, %eax
	movl	%ebp, %ecx
	subl	%eax, %ecx
	movslq	%ecx, %rsi
	movl	$8, %edx
	movl	$compare_pic_by_lt_pic_num_asc, %ecx
	callq	qsort@PLT
	movsbq	256(%rbx), %rax
	leaq	(,%rax,8), %rdi
	addq	272(%rbx), %rdi
	movslq	%ebp, %rsi
	subq	%rax, %rsi
	movl	$8, %edx
	movl	$compare_pic_by_lt_pic_num_asc, %ecx
	callq	qsort@PLT
	movb	%bpl, 257(%rbx)
	movb	%bpl, 256(%rbx)
	movzbl	256(%rbx), %eax
	cmpb	$2, %al
	jl	.LBB29_406
.LBB29_396:                             # %if.end605
	cmpb	%bpl, %al
	jne	.LBB29_406
# %bb.397:                              # %for.cond621.preheader
	movq	264(%rbx), %rcx
	movq	272(%rbx), %rax
	movzbl	%bpl, %edx
	cmpb	$8, %bpl
	jae	.LBB29_399
# %bb.398:
	xorl	%esi, %esi
	xorl	%edi, %edi
	jmp	.LBB29_402
.LBB29_399:                             # %vector.ph2546
	movl	%edx, %esi
	andl	$-8, %esi
	leal	(,%rdx,8), %edi
	andl	$-64, %edi
	pxor	%xmm0, %xmm0
	xorl	%r8d, %r8d
	pcmpeqd	%xmm4, %xmm4
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB29_400:                             # %vector.body2550
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rcx,%r8), %xmm5
	movdqu	16(%rcx,%r8), %xmm6
	movdqu	32(%rcx,%r8), %xmm7
	movdqu	48(%rcx,%r8), %xmm8
	movdqu	(%rax,%r8), %xmm9
	pcmpeqd	%xmm5, %xmm9
	movdqu	16(%rax,%r8), %xmm5
	pcmpeqd	%xmm6, %xmm5
	movdqu	32(%rax,%r8), %xmm6
	pcmpeqd	%xmm7, %xmm6
	movdqu	48(%rax,%r8), %xmm7
	pcmpeqd	%xmm8, %xmm7
	pshufd	$177, %xmm9, %xmm8              # xmm8 = xmm9[1,0,3,2]
	pand	%xmm9, %xmm8
	pxor	%xmm4, %xmm8
	por	%xmm8, %xmm0
	pshufd	$177, %xmm5, %xmm8              # xmm8 = xmm5[1,0,3,2]
	pand	%xmm5, %xmm8
	pxor	%xmm4, %xmm8
	por	%xmm8, %xmm3
	pshufd	$177, %xmm6, %xmm5              # xmm5 = xmm6[1,0,3,2]
	pand	%xmm6, %xmm5
	pxor	%xmm4, %xmm5
	por	%xmm5, %xmm2
	pshufd	$177, %xmm7, %xmm5              # xmm5 = xmm7[1,0,3,2]
	pand	%xmm7, %xmm5
	pxor	%xmm4, %xmm5
	por	%xmm5, %xmm1
	addq	$64, %r8
	cmpq	%r8, %rdi
	jne	.LBB29_400
# %bb.401:                              # %middle.block2543
	por	%xmm0, %xmm3
	por	%xmm3, %xmm2
	por	%xmm2, %xmm1
	psllq	$63, %xmm1
	movmskpd	%xmm1, %r8d
	xorl	%edi, %edi
	testl	%r8d, %r8d
	setne	%dil
	cmpl	%edx, %esi
	je	.LBB29_404
.LBB29_402:                             # %for.body627.preheader
	movl	$1, %r8d
	.p2align	4, 0x90
.LBB29_403:                             # %for.body627
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rsi,8), %r9
	cmpq	(%rax,%rsi,8), %r9
	cmovnel	%r8d, %edi
	incq	%rsi
	cmpq	%rsi, %rdx
	jne	.LBB29_403
.LBB29_404:                             # %for.end642
	testl	%edi, %edi
	je	.LBB29_405
.LBB29_406:                             # %if.end658
	cmpl	$0, 32(%rbx)
	je	.LBB29_407
.LBB29_417:                             # %if.end814
	movsbl	256(%rbx), %ecx
	movl	136(%rbx), %edx
	movl	140(%rbx), %eax
	cmpl	%edx, %ecx
	cmovll	%ecx, %edx
	movb	%dl, 256(%rbx)
	movsbl	257(%rbx), %ecx
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	movb	%al, 257(%rbx)
	movsbl	%dl, %ecx
	cmpl	$32, %ecx
	ja	.LBB29_421
# %bb.418:                              # %for.body838.lr.ph
	movl	%ecx, %eax
	movq	856488(%r13), %rcx
	incq	%rax
	movq	%rax, %rdx
	.p2align	4, 0x90
.LBB29_419:                             # %for.body838
                                        # =>This Inner Loop Header: Depth=1
	movq	264(%rbx), %rsi
	movq	%rcx, -8(%rsi,%rax,8)
	incq	%rdx
	cmpl	$33, %eax
	movq	%rdx, %rax
	jne	.LBB29_419
# %bb.420:                              # %for.end845.loopexit
	movzbl	257(%rbx), %eax
.LBB29_421:                             # %for.end845
	cmpb	$32, %al
	ja	.LBB29_3
# %bb.422:                              # %for.body852.lr.ph
	movzbl	%al, %eax
	movq	856488(%r13), %rcx
	incq	%rax
	movq	%rax, %rdx
	.p2align	4, 0x90
.LBB29_423:                             # %for.body852
                                        # =>This Inner Loop Header: Depth=1
	movq	272(%rbx), %rsi
	movq	%rcx, -8(%rsi,%rax,8)
	incq	%rdx
	cmpl	$33, %eax
	movq	%rdx, %rax
	jne	.LBB29_423
.LBB29_3:                               # %cleanup
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
.LBB29_405:                             # %if.then644
	.cfi_def_cfa_offset 128
	movq	(%rax), %rcx
	movq	8(%rax), %rdx
	movq	%rdx, (%rax)
	movq	272(%rbx), %rax
	movq	%rcx, 8(%rax)
	cmpl	$0, 32(%rbx)
	jne	.LBB29_417
.LBB29_407:                             # %if.then661
	leaq	13308(%rbx), %r12
	movl	164(%rbx), %eax
	cmpl	$3, %eax
	je	.LBB29_409
# %bb.408:                              # %if.then661
	testl	%eax, %eax
	jne	.LBB29_441
.LBB29_409:                             # %if.then669
	movl	40(%r14), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, 13320(%rbx)
	testq	%rax, %rax
	movq	48(%rsp), %rbp                  # 8-byte Reload
	je	.LBB29_410
# %bb.411:                              # %if.end677
	movl	184(%rbx), %esi
	testl	%esi, %esi
	je	.LBB29_412
.LBB29_424:                             # %if.else707
	movq	13320(%rbx), %rcx
	movq	%r14, %rdi
	xorl	%edx, %edx
	movq	%r12, %r8
	movl	20(%rsp), %r9d                  # 4-byte Reload
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	16(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	append_interview_list
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	184(%rbx), %esi
	movq	13320(%rbx), %rcx
	movl	13308(%rbx), %edx
	movq	264(%rbx), %rax
	cmpl	$2, %esi
	je	.LBB29_433
# %bb.425:                              # %if.else707
	cmpl	$1, %esi
	jne	.LBB29_417
# %bb.426:                              # %for.cond.preheader.i1875
	testl	%edx, %edx
	jle	.LBB29_417
# %bb.427:                              # %for.body.preheader.i1876
	movzbl	256(%rbx), %esi
	cmpl	$1, %edx
	jne	.LBB29_429
# %bb.428:
	xorl	%edi, %edi
	jmp	.LBB29_431
.LBB29_441:                             # %if.else719
	movl	40(%r14), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, 13320(%rbx)
	testq	%rax, %rax
	movq	48(%rsp), %rbp                  # 8-byte Reload
	jne	.LBB29_443
# %bb.442:                              # %if.then727
	movl	$.L.str.16, %edi
	callq	no_mem_exit@PLT
.LBB29_443:                             # %if.end728
	movl	40(%r14), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, 13328(%rbx)
	testq	%rax, %rax
	jne	.LBB29_445
# %bb.444:                              # %if.then735
	movl	$.L.str.18, %edi
	callq	no_mem_exit@PLT
.LBB29_445:                             # %if.end736
	leaq	13312(%rbx), %r15
	movl	184(%rbx), %esi
	testl	%esi, %esi
	je	.LBB29_446
# %bb.456:                              # %if.else791
	movq	13320(%rbx), %rcx
	movq	%r14, %rdi
	xorl	%edx, %edx
	movq	%r12, %r8
	movl	20(%rsp), %r9d                  # 4-byte Reload
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	16(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	append_interview_list
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	184(%rbx), %esi
	movq	13320(%rbx), %rcx
	movl	13308(%rbx), %edx
	movq	264(%rbx), %rax
	cmpl	$2, %esi
	je	.LBB29_465
# %bb.457:                              # %if.else791
	cmpl	$1, %esi
	movq	8(%rsp), %r10                   # 8-byte Reload
	jne	.LBB29_473
# %bb.458:                              # %for.cond.preheader.i1895
	testl	%edx, %edx
	jle	.LBB29_473
# %bb.459:                              # %for.body.preheader.i1897
	movzbl	256(%rbx), %esi
	cmpl	$1, %edx
	jne	.LBB29_461
# %bb.460:
	xorl	%edi, %edi
	jmp	.LBB29_463
.LBB29_410:                             # %if.then676
	movl	$.L.str.16, %edi
	callq	no_mem_exit@PLT
	movl	184(%rbx), %esi
	testl	%esi, %esi
	jne	.LBB29_424
.LBB29_412:                             # %if.then684
	movzbl	256(%rbx), %r15d
	movq	13320(%rbx), %rcx
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r12, %r8
	movl	20(%rsp), %r9d                  # 4-byte Reload
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	16(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	append_interview_list
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	cmpl	$0, 13308(%rbx)
	je	.LBB29_416
# %bb.413:                              # %for.body691.lr.ph
	movzbl	%r15b, %eax
	movsbq	%al, %rcx
	shlq	$3, %rcx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB29_414:                             # %for.body691
                                        # =>This Inner Loop Header: Depth=1
	movq	13320(%rbx), %rdx
	movq	(%rdx,%r15,8), %rdx
	movq	48(%rdx), %rdx
	movq	264(%rbx), %rsi
	addq	%rcx, %rsi
	movq	%rdx, (%rsi,%r15,8)
	incq	%r15
	movl	13308(%rbx), %edx
	cmpq	%rdx, %r15
	jb	.LBB29_414
# %bb.415:                              # %for.end703.loopexit
	addl	%eax, %r15d
.LBB29_416:                             # %for.end703
	movb	%r15b, 256(%rbx)
	jmp	.LBB29_417
.LBB29_433:                             # %if.then7.i
	testl	%edx, %edx
	jle	.LBB29_417
# %bb.434:                              # %for.body11.preheader.i
	movzbl	256(%rbx), %esi
	cmpl	$1, %edx
	jne	.LBB29_436
# %bb.435:
	xorl	%edi, %edi
	jmp	.LBB29_438
.LBB29_446:                             # %if.then743
	movq	%r13, 24(%rsp)                  # 8-byte Spill
	movzbl	256(%rbx), %r13d
	movq	13320(%rbx), %rcx
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r12, %r8
	movq	%r15, 32(%rsp)                  # 8-byte Spill
	movl	20(%rsp), %r15d                 # 4-byte Reload
	movl	%r15d, %r9d
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	movq	16(%rsp), %r12                  # 8-byte Reload
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	callq	append_interview_list
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	13328(%rbx), %rcx
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	movq	32(%rsp), %r8                   # 8-byte Reload
	movl	%r15d, %r9d
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	callq	append_interview_list
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	cmpl	$0, 13308(%rbx)
	je	.LBB29_450
# %bb.447:                              # %for.body752.lr.ph
	movzbl	%r13b, %eax
	movsbq	%al, %rcx
	shlq	$3, %rcx
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB29_448:                             # %for.body752
                                        # =>This Inner Loop Header: Depth=1
	movq	13320(%rbx), %rdx
	movq	(%rdx,%r13,8), %rdx
	movq	48(%rdx), %rdx
	movq	264(%rbx), %rsi
	addq	%rcx, %rsi
	movq	%rdx, (%rsi,%r13,8)
	incq	%r13
	movl	13308(%rbx), %edx
	cmpq	%rdx, %r13
	jb	.LBB29_448
# %bb.449:                              # %for.end764.loopexit
	addl	%eax, %r13d
.LBB29_450:                             # %for.end764
	movb	%r13b, 256(%rbx)
	movzbl	257(%rbx), %eax
	cmpl	$0, 13312(%rbx)
	je	.LBB29_451
# %bb.452:                              # %for.body775.lr.ph
	movzbl	%al, %ecx
	movsbq	%cl, %rdx
	shlq	$3, %rdx
	xorl	%eax, %eax
	movq	24(%rsp), %r13                  # 8-byte Reload
	.p2align	4, 0x90
.LBB29_453:                             # %for.body775
                                        # =>This Inner Loop Header: Depth=1
	movq	13328(%rbx), %rsi
	movq	(%rsi,%rax,8), %rsi
	movq	48(%rsi), %rsi
	movq	272(%rbx), %rdi
	addq	%rdx, %rdi
	movq	%rsi, (%rdi,%rax,8)
	incq	%rax
	movl	13312(%rbx), %esi
	cmpq	%rsi, %rax
	jb	.LBB29_453
# %bb.454:                              # %for.end787.loopexit
	addl	%ecx, %eax
	movb	%al, 257(%rbx)
	jmp	.LBB29_417
.LBB29_465:                             # %if.then7.i1881
	testl	%edx, %edx
	movq	8(%rsp), %r10                   # 8-byte Reload
	jle	.LBB29_473
# %bb.466:                              # %for.body11.preheader.i1883
	movzbl	256(%rbx), %esi
	cmpl	$1, %edx
	jne	.LBB29_468
# %bb.467:
	xorl	%edi, %edi
	jmp	.LBB29_470
.LBB29_451:
	movq	24(%rsp), %r13                  # 8-byte Reload
	movb	%al, 257(%rbx)
	jmp	.LBB29_417
.LBB29_429:                             # %for.body.preheader.i1876.new
	movl	%edx, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB29_430:                             # %for.body.i1877
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdi,8), %r9
	movq	56(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	movq	8(%rcx,%rdi,8), %r9
	movq	56(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	addq	$2, %rdi
	cmpq	%rdi, %r8
	jne	.LBB29_430
.LBB29_431:                             # %if.end814.loopexit2569.unr-lcssa
	testb	$1, %dl
	je	.LBB29_417
# %bb.432:                              # %for.body.i1877.epil
	movq	(%rcx,%rdi,8), %rcx
	movq	56(%rcx), %rcx
	jmp	.LBB29_440
.LBB29_436:                             # %for.body11.preheader.i.new
	movl	%edx, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB29_437:                             # %for.body11.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdi,8), %r9
	movq	64(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	movq	8(%rcx,%rdi,8), %r9
	movq	64(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	addq	$2, %rdi
	cmpq	%rdi, %r8
	jne	.LBB29_437
.LBB29_438:                             # %if.end814.loopexit2570.unr-lcssa
	testb	$1, %dl
	je	.LBB29_417
# %bb.439:                              # %for.body11.i.epil
	movq	(%rcx,%rdi,8), %rcx
	movq	64(%rcx), %rcx
.LBB29_440:                             # %if.end814
	movsbq	%sil, %rdx
	movq	%rcx, (%rax,%rdx,8)
	incb	256(%rbx)
	jmp	.LBB29_417
.LBB29_461:                             # %for.body.preheader.i1897.new
	movl	%edx, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	xorl	%edi, %edi
.LBB29_462:                             # %for.body.i1900
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdi,8), %r9
	movq	56(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	movq	8(%rcx,%rdi,8), %r9
	movq	56(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	addq	$2, %rdi
	cmpq	%rdi, %r8
	jne	.LBB29_462
.LBB29_463:                             # %gen_pic_list_from_frame_interview_list.exit1909.loopexit.unr-lcssa
	testb	$1, %dl
	je	.LBB29_473
# %bb.464:                              # %for.body.i1900.epil
	movq	(%rcx,%rdi,8), %rcx
	movq	56(%rcx), %rcx
	jmp	.LBB29_472
.LBB29_468:                             # %for.body11.preheader.i1883.new
	movl	%edx, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	xorl	%edi, %edi
.LBB29_469:                             # %for.body11.i1886
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdi,8), %r9
	movq	64(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	movq	8(%rcx,%rdi,8), %r9
	movq	64(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	addq	$2, %rdi
	cmpq	%rdi, %r8
	jne	.LBB29_469
.LBB29_470:                             # %gen_pic_list_from_frame_interview_list.exit1909.loopexit2568.unr-lcssa
	testb	$1, %dl
	je	.LBB29_473
# %bb.471:                              # %for.body11.i1886.epil
	movq	(%rcx,%rdi,8), %rcx
	movq	64(%rcx), %rcx
.LBB29_472:                             # %gen_pic_list_from_frame_interview_list.exit1909
	movsbq	%sil, %rdx
	movq	%rcx, (%rax,%rdx,8)
	incb	256(%rbx)
.LBB29_473:                             # %gen_pic_list_from_frame_interview_list.exit1909
	movl	184(%rbx), %esi
	movq	13328(%rbx), %rcx
	movq	%r14, %rdi
	movl	$1, %edx
	movq	%r15, %r8
	movl	20(%rsp), %r9d                  # 4-byte Reload
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	append_interview_list
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	184(%rbx), %esi
	movq	13328(%rbx), %rcx
	movl	13312(%rbx), %edx
	movq	272(%rbx), %rax
	cmpl	$2, %esi
	je	.LBB29_483
# %bb.474:                              # %gen_pic_list_from_frame_interview_list.exit1909
	cmpl	$1, %esi
	jne	.LBB29_417
# %bb.475:                              # %for.cond.preheader.i1924
	testl	%edx, %edx
	jle	.LBB29_417
# %bb.476:                              # %for.body.preheader.i1926
	movzbl	257(%rbx), %esi
	cmpl	$1, %edx
	jne	.LBB29_478
# %bb.477:
	xorl	%edi, %edi
	jmp	.LBB29_480
.LBB29_483:                             # %if.then7.i1910
	testl	%edx, %edx
	jle	.LBB29_417
# %bb.484:                              # %for.body11.preheader.i1912
	movzbl	257(%rbx), %esi
	cmpl	$1, %edx
	jne	.LBB29_486
# %bb.485:
	xorl	%edi, %edi
	jmp	.LBB29_488
.LBB29_478:                             # %for.body.preheader.i1926.new
	movl	%edx, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	xorl	%edi, %edi
.LBB29_479:                             # %for.body.i1929
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdi,8), %r9
	movq	56(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	257(%rbx), %esi
	incb	%sil
	movb	%sil, 257(%rbx)
	movq	8(%rcx,%rdi,8), %r9
	movq	56(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	257(%rbx), %esi
	incb	%sil
	movb	%sil, 257(%rbx)
	addq	$2, %rdi
	cmpq	%rdi, %r8
	jne	.LBB29_479
.LBB29_480:                             # %if.end814.loopexit.unr-lcssa
	testb	$1, %dl
	je	.LBB29_417
# %bb.481:                              # %for.body.i1929.epil
	movq	(%rcx,%rdi,8), %rcx
	movq	56(%rcx), %rcx
	jmp	.LBB29_482
.LBB29_486:                             # %for.body11.preheader.i1912.new
	movl	%edx, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	xorl	%edi, %edi
.LBB29_487:                             # %for.body11.i1915
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdi,8), %r9
	movq	64(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	257(%rbx), %esi
	incb	%sil
	movb	%sil, 257(%rbx)
	movq	8(%rcx,%rdi,8), %r9
	movq	64(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	257(%rbx), %esi
	incb	%sil
	movb	%sil, 257(%rbx)
	addq	$2, %rdi
	cmpq	%rdi, %r8
	jne	.LBB29_487
.LBB29_488:                             # %if.end814.loopexit2567.unr-lcssa
	testb	$1, %dl
	je	.LBB29_417
# %bb.489:                              # %for.body11.i1915.epil
	movq	(%rcx,%rdi,8), %rcx
	movq	64(%rcx), %rcx
.LBB29_482:                             # %if.end814
	movsbq	%sil, %rdx
	movq	%rcx, (%rax,%rdx,8)
	incb	257(%rbx)
	jmp	.LBB29_417
.Lfunc_end29:
	.size	init_lists, .Lfunc_end29-init_lists
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI29_0:
	.quad	.LBB29_4
	.quad	.LBB29_141
	.quad	.LBB29_2
	.quad	.LBB29_4
	.quad	.LBB29_2
                                        # -- End function
	.text
	.globl	init_mbaff_lists                # -- Begin function init_mbaff_lists
	.p2align	4, 0x90
	.type	init_mbaff_lists,@function
init_mbaff_lists:                       # @init_mbaff_lists
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB30_1:                               # %for.cond1.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	856488(%rdi), %rcx
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, (%rdx)
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 8(%rdx)
	movq	856488(%rdi), %rcx
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 16(%rdx)
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 24(%rdx)
	movq	856488(%rdi), %rcx
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 32(%rdx)
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 40(%rdx)
	movq	856488(%rdi), %rcx
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 48(%rdx)
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 56(%rdx)
	movq	856488(%rdi), %rcx
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 64(%rdx)
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 72(%rdx)
	movq	856488(%rdi), %rcx
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 80(%rdx)
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 88(%rdx)
	movq	856488(%rdi), %rcx
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 96(%rdx)
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 104(%rdx)
	movq	856488(%rdi), %rcx
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 112(%rdx)
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 120(%rdx)
	movq	856488(%rdi), %rcx
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 128(%rdx)
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 136(%rdx)
	movq	856488(%rdi), %rcx
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 144(%rdx)
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 152(%rdx)
	movq	856488(%rdi), %rcx
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 160(%rdx)
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 168(%rdx)
	movq	856488(%rdi), %rcx
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 176(%rdx)
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 184(%rdx)
	movq	856488(%rdi), %rcx
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 192(%rdx)
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 200(%rdx)
	movq	856488(%rdi), %rcx
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 208(%rdx)
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 216(%rdx)
	movq	856488(%rdi), %rcx
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 224(%rdx)
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 232(%rdx)
	movq	856488(%rdi), %rcx
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 240(%rdx)
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 248(%rdx)
	movq	856488(%rdi), %rcx
	movq	280(%rsi,%rax,8), %rdx
	movq	%rcx, 256(%rdx)
	movb	$0, 258(%rsi,%rax)
	incq	%rax
	cmpq	$4, %rax
	jne	.LBB30_1
# %bb.2:                                # %for.cond11.preheader
	movzbl	256(%rsi), %edx
	testb	%dl, %dl
	jle	.LBB30_5
# %bb.3:                                # %for.body16.lr.ph
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB30_4:                               # %for.body16
                                        # =>This Inner Loop Header: Depth=1
	movq	264(%rsi), %rdx
	movq	280(%rsi), %rdi
	movq	(%rdx,%rax), %rdx
	movq	224(%rdx), %rdx
	movq	%rdx, (%rdi,%rax,2)
	movq	264(%rsi), %rdx
	movq	280(%rsi), %rdi
	movq	(%rdx,%rax), %rdx
	movq	232(%rdx), %rdx
	movq	%rdx, 8(%rdi,%rax,2)
	movq	264(%rsi), %rdx
	movq	296(%rsi), %rdi
	movq	(%rdx,%rax), %rdx
	movq	232(%rdx), %rdx
	movq	%rdx, (%rdi,%rax,2)
	movq	264(%rsi), %rdx
	movq	296(%rsi), %rdi
	movq	(%rdx,%rax), %rdx
	movq	224(%rdx), %rdx
	movq	%rdx, 8(%rdi,%rax,2)
	incq	%rcx
	movsbq	256(%rsi), %rdx
	addq	$8, %rax
	cmpq	%rdx, %rcx
	jl	.LBB30_4
.LBB30_5:                               # %for.end57
	addb	%dl, %dl
	movb	%dl, 260(%rsi)
	movb	%dl, 258(%rsi)
	movzbl	257(%rsi), %edx
	testb	%dl, %dl
	jle	.LBB30_8
# %bb.6:                                # %for.body73.lr.ph
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB30_7:                               # %for.body73
                                        # =>This Inner Loop Header: Depth=1
	movq	272(%rsi), %rdx
	movq	288(%rsi), %rdi
	movq	(%rdx,%rax), %rdx
	movq	224(%rdx), %rdx
	movq	%rdx, (%rdi,%rax,2)
	movq	272(%rsi), %rdx
	movq	288(%rsi), %rdi
	movq	(%rdx,%rax), %rdx
	movq	232(%rdx), %rdx
	movq	%rdx, 8(%rdi,%rax,2)
	movq	272(%rsi), %rdx
	movq	304(%rsi), %rdi
	movq	(%rdx,%rax), %rdx
	movq	232(%rdx), %rdx
	movq	%rdx, (%rdi,%rax,2)
	movq	272(%rsi), %rdx
	movq	304(%rsi), %rdi
	movq	(%rdx,%rax), %rdx
	movq	224(%rdx), %rdx
	movq	%rdx, 8(%rdi,%rax,2)
	incq	%rcx
	movsbq	257(%rsi), %rdx
	addq	$8, %rax
	cmpq	%rdx, %rcx
	jl	.LBB30_7
.LBB30_8:                               # %for.end118
	addb	%dl, %dl
	movb	%dl, 261(%rsi)
	movb	%dl, 259(%rsi)
	retq
.Lfunc_end30:
	.size	init_mbaff_lists, .Lfunc_end30-init_mbaff_lists
	.cfi_endproc
                                        # -- End function
	.globl	get_short_term_pic              # -- Begin function get_short_term_pic
	.p2align	4, 0x90
	.type	get_short_term_pic,@function
get_short_term_pic:                     # @get_short_term_pic
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rcx
	movl	48(%rdi), %edx
	testq	%rdx, %rdx
	je	.LBB31_15
# %bb.1:                                # %for.body.lr.ph
	cmpl	$0, 848876(%rcx)
	movq	24(%rdi), %rdi
	je	.LBB31_10
# %bb.2:                                # %for.body.preheader
	xorl	%r8d, %r8d
	jmp	.LBB31_3
	.p2align	4, 0x90
.LBB31_9:                               # %for.inc
                                        #   in Loop: Header=BB31_3 Depth=1
	incq	%r8
	cmpq	%r8, %rdx
	je	.LBB31_15
.LBB31_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%r8,8), %r9
	movl	4(%r9), %r10d
	testb	$1, %r10b
	je	.LBB31_6
# %bb.4:                                # %if.then24
                                        #   in Loop: Header=BB31_3 Depth=1
	movq	56(%r9), %rax
	cmpb	$0, 40(%rax)
	jne	.LBB31_6
# %bb.5:                                # %land.lhs.true30
                                        #   in Loop: Header=BB31_3 Depth=1
	cmpl	%esi, 28(%rax)
	je	.LBB31_16
	.p2align	4, 0x90
.LBB31_6:                               # %if.end43
                                        #   in Loop: Header=BB31_3 Depth=1
	testb	$2, %r10b
	je	.LBB31_9
# %bb.7:                                # %if.then50
                                        #   in Loop: Header=BB31_3 Depth=1
	movq	64(%r9), %rax
	cmpb	$0, 40(%rax)
	jne	.LBB31_9
# %bb.8:                                # %land.lhs.true56
                                        #   in Loop: Header=BB31_3 Depth=1
	cmpl	%esi, 28(%rax)
	jne	.LBB31_9
.LBB31_16:                              # %cleanup
	retq
.LBB31_10:                              # %for.body.us.preheader
	xorl	%r8d, %r8d
	jmp	.LBB31_11
	.p2align	4, 0x90
.LBB31_14:                              # %for.inc.us
                                        #   in Loop: Header=BB31_11 Depth=1
	incq	%r8
	cmpq	%r8, %rdx
	je	.LBB31_15
.LBB31_11:                              # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%r8,8), %rax
	cmpl	$3, 4(%rax)
	jne	.LBB31_14
# %bb.12:                               # %if.then4.us
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	48(%rax), %rax
	cmpb	$0, 40(%rax)
	jne	.LBB31_14
# %bb.13:                               # %land.lhs.true.us
                                        #   in Loop: Header=BB31_11 Depth=1
	cmpl	%esi, 28(%rax)
	jne	.LBB31_14
	jmp	.LBB31_16
.LBB31_15:                              # %for.end
	movq	856488(%rcx), %rax
	retq
.Lfunc_end31:
	.size	get_short_term_pic, .Lfunc_end31-get_short_term_pic
	.cfi_endproc
                                        # -- End function
	.globl	get_long_term_pic               # -- Begin function get_long_term_pic
	.p2align	4, 0x90
	.type	get_long_term_pic,@function
get_long_term_pic:                      # @get_long_term_pic
	.cfi_startproc
# %bb.0:                                # %entry
	movl	52(%rdi), %ecx
	testq	%rcx, %rcx
	je	.LBB32_1
# %bb.3:                                # %for.body.lr.ph
	movq	(%rdi), %rax
	movq	32(%rdi), %rdx
	cmpl	$0, 848876(%rax)
	je	.LBB32_12
# %bb.4:                                # %for.body.preheader
	xorl	%edi, %edi
	jmp	.LBB32_5
	.p2align	4, 0x90
.LBB32_11:                              # %for.inc
                                        #   in Loop: Header=BB32_5 Depth=1
	incq	%rdi
	cmpq	%rdi, %rcx
	je	.LBB32_1
.LBB32_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdx,%rdi,8), %r8
	movl	4(%r8), %r9d
	testb	$1, %r9b
	je	.LBB32_8
# %bb.6:                                # %if.then25
                                        #   in Loop: Header=BB32_5 Depth=1
	movq	56(%r8), %rax
	cmpb	$0, 40(%rax)
	je	.LBB32_8
# %bb.7:                                # %land.lhs.true32
                                        #   in Loop: Header=BB32_5 Depth=1
	cmpl	%esi, 32(%rax)
	je	.LBB32_2
.LBB32_8:                               # %if.end46
                                        #   in Loop: Header=BB32_5 Depth=1
	testb	$2, %r9b
	je	.LBB32_11
# %bb.9:                                # %if.then53
                                        #   in Loop: Header=BB32_5 Depth=1
	movq	64(%r8), %rax
	cmpb	$0, 40(%rax)
	je	.LBB32_11
# %bb.10:                               # %land.lhs.true60
                                        #   in Loop: Header=BB32_5 Depth=1
	cmpl	%esi, 32(%rax)
	jne	.LBB32_11
.LBB32_2:                               # %cleanup
	retq
.LBB32_12:                              # %for.body.us.preheader
	xorl	%edi, %edi
	jmp	.LBB32_13
	.p2align	4, 0x90
.LBB32_16:                              # %for.inc.us
                                        #   in Loop: Header=BB32_13 Depth=1
	incq	%rdi
	cmpq	%rdi, %rcx
	je	.LBB32_1
.LBB32_13:                              # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdx,%rdi,8), %rax
	cmpl	$3, 4(%rax)
	jne	.LBB32_16
# %bb.14:                               # %if.then4.us
                                        #   in Loop: Header=BB32_13 Depth=1
	movq	48(%rax), %rax
	cmpb	$0, 40(%rax)
	je	.LBB32_16
# %bb.15:                               # %land.lhs.true.us
                                        #   in Loop: Header=BB32_13 Depth=1
	cmpl	%esi, 32(%rax)
	jne	.LBB32_16
	jmp	.LBB32_2
.LBB32_1:
	xorl	%eax, %eax
	retq
.Lfunc_end32:
	.size	get_long_term_pic, .Lfunc_end32-get_long_term_pic
	.cfi_endproc
                                        # -- End function
	.globl	reorder_ref_pic_list            # -- Begin function reorder_ref_pic_list
	.p2align	4, 0x90
	.type	reorder_ref_pic_list,@function
reorder_ref_pic_list:                   # @reorder_ref_pic_list
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
	movq	%rdi, %rbx
	movl	%esi, 20(%rsp)                  # 4-byte Spill
	movslq	%esi, %rax
	movq	1112(%rdi,%rax,8), %r13
	movq	1128(%rdi,%rax,8), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	1144(%rdi,%rax,8), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movl	136(%rdi,%rax,4), %eax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	(%rdi), %rax
	movl	$0, 16(%rsp)
	cmpl	$0, 848876(%rax)
	movl	848992(%rax), %ebp
	je	.LBB33_1
# %bb.2:                                # %if.else
	addl	%ebp, %ebp
	movl	172(%rbx), %eax
	leal	1(,%rax,2), %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	movl	(%r13), %eax
	cmpl	$3, %eax
	jne	.LBB33_4
	jmp	.LBB33_14
.LBB33_1:                               # %if.then
	movl	172(%rbx), %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	movl	(%r13), %eax
	cmpl	$3, %eax
	je	.LBB33_14
.LBB33_4:                               # %for.body.lr.ph
	movq	24(%rsp), %rcx                  # 8-byte Reload
	leal	-1(%rcx), %r14d
	xorl	%r15d, %r15d
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, %r12d
	jmp	.LBB33_5
	.p2align	4, 0x90
.LBB33_12:                              # %if.else71
                                        #   in Loop: Header=BB33_5 Depth=1
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	264(%rbx,%rax,8), %rsi
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	(%rax,%r15), %ecx
	movq	%rbx, %rdi
	movl	%r14d, %edx
	leaq	16(%rsp), %r8
	movl	$-1, %r9d
	callq	reorder_long_term@PLT
	movl	4(%r13,%r15), %eax
	addq	$4, %r15
	cmpl	$3, %eax
	je	.LBB33_14
.LBB33_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, %eax
	jl	.LBB33_7
# %bb.6:                                # %if.then20
                                        #   in Loop: Header=BB33_5 Depth=1
	movl	$.L.str.19, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
	movl	(%r13,%r15), %eax
.LBB33_7:                               # %if.end21
                                        #   in Loop: Header=BB33_5 Depth=1
	cmpl	$1, %eax
	jg	.LBB33_12
# %bb.8:                                # %if.then25
                                        #   in Loop: Header=BB33_5 Depth=1
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movl	(%rcx,%r15), %ecx
	testl	%eax, %eax
	je	.LBB33_9
# %bb.10:                               # %if.else47
                                        #   in Loop: Header=BB33_5 Depth=1
	addl	%ecx, %r12d
	incl	%r12d
	cmpl	%ebp, %r12d
	movl	%ebp, %eax
	movl	$0, %ecx
	cmovll	%ecx, %eax
	subl	%eax, %r12d
	jmp	.LBB33_11
.LBB33_9:                               # %if.then29
                                        #   in Loop: Header=BB33_5 Depth=1
	notl	%ecx
	addl	%ecx, %r12d
	movl	%r12d, %eax
	sarl	$31, %eax
	andl	%ebp, %eax
	addl	%eax, %r12d
.LBB33_11:                              # %if.end65
                                        #   in Loop: Header=BB33_5 Depth=1
	cmpl	12(%rsp), %r12d                 # 4-byte Folded Reload
	movl	$0, %eax
	cmovgl	%ebp, %eax
	movl	%r12d, %ecx
	subl	%eax, %ecx
	movq	%rbx, %rdi
	movl	20(%rsp), %esi                  # 4-byte Reload
	movl	%r14d, %edx
	leaq	16(%rsp), %r8
	movl	$-1, %r9d
	callq	reorder_short_term@PLT
	movl	4(%r13,%r15), %eax
	addq	$4, %r15
	cmpl	$3, %eax
	jne	.LBB33_5
.LBB33_14:                              # %for.end
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movb	%cl, 256(%rbx,%rax)
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
.Lfunc_end33:
	.size	reorder_ref_pic_list, .Lfunc_end33-reorder_ref_pic_list
	.cfi_endproc
                                        # -- End function
	.globl	update_ref_list                 # -- Begin function update_ref_list
	.p2align	4, 0x90
	.type	update_ref_list,@function
update_ref_list:                        # @update_ref_list
	.cfi_startproc
# %bb.0:                                # %entry
	movl	44(%rdi), %edx
	testl	%edx, %edx
	je	.LBB34_1
# %bb.2:                                # %for.body.lr.ph
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	.LBB34_3
	.p2align	4, 0x90
.LBB34_16:                              # %for.inc
                                        #   in Loop: Header=BB34_3 Depth=1
	incq	%rcx
	movl	%edx, %r8d
	cmpq	%r8, %rcx
	jae	.LBB34_17
.LBB34_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rdi), %r8
	movq	(%r8,%rcx,8), %r8
	movl	(%r8), %r9d
	cmpl	$3, %r9d
	jne	.LBB34_6
# %bb.4:                                # %if.then.i
                                        #   in Loop: Header=BB34_3 Depth=1
	movq	48(%r8), %r10
	cmpl	$0, 44(%r10)
	je	.LBB34_7
# %bb.5:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB34_3 Depth=1
	cmpb	$0, 40(%r10)
	jne	.LBB34_7
	jmp	.LBB34_14
	.p2align	4, 0x90
.LBB34_6:                               # %if.end4.i
                                        #   in Loop: Header=BB34_3 Depth=1
	testb	$1, %r9b
	je	.LBB34_10
.LBB34_7:                               # %if.then7.i
                                        #   in Loop: Header=BB34_3 Depth=1
	movq	56(%r8), %r10
	testq	%r10, %r10
	je	.LBB34_10
# %bb.8:                                # %if.then9.i
                                        #   in Loop: Header=BB34_3 Depth=1
	cmpl	$0, 44(%r10)
	je	.LBB34_10
# %bb.9:                                # %land.lhs.true13.i
                                        #   in Loop: Header=BB34_3 Depth=1
	cmpb	$0, 40(%r10)
	je	.LBB34_14
	.p2align	4, 0x90
.LBB34_10:                              # %if.end20.i
                                        #   in Loop: Header=BB34_3 Depth=1
	testb	$2, %r9b
	je	.LBB34_16
# %bb.11:                               # %if.then24.i
                                        #   in Loop: Header=BB34_3 Depth=1
	movq	64(%r8), %r9
	testq	%r9, %r9
	je	.LBB34_16
# %bb.12:                               # %if.then26.i
                                        #   in Loop: Header=BB34_3 Depth=1
	cmpl	$0, 44(%r9)
	je	.LBB34_16
# %bb.13:                               # %land.lhs.true30.i
                                        #   in Loop: Header=BB34_3 Depth=1
	cmpb	$0, 40(%r9)
	jne	.LBB34_16
.LBB34_14:                              # %land.lhs.true
                                        #   in Loop: Header=BB34_3 Depth=1
	cmpl	%esi, 72(%r8)
	jne	.LBB34_16
# %bb.15:                               # %if.then
                                        #   in Loop: Header=BB34_3 Depth=1
	movq	24(%rdi), %rdx
	movl	%eax, %r9d
	incl	%eax
	movq	%r8, (%rdx,%r9,8)
	movl	44(%rdi), %edx
	jmp	.LBB34_16
.LBB34_1:
	xorl	%eax, %eax
.LBB34_17:                              # %for.end
	movl	%eax, 48(%rdi)
	cmpl	40(%rdi), %eax
	jae	.LBB34_20
# %bb.18:                               # %while.body.lr.ph
	movl	%eax, %eax
	.p2align	4, 0x90
.LBB34_19:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rdi), %rcx
	movq	$0, (%rcx,%rax,8)
	incq	%rax
	movl	40(%rdi), %ecx
	cmpq	%rcx, %rax
	jb	.LBB34_19
.LBB34_20:                              # %while.end
	retq
.Lfunc_end34:
	.size	update_ref_list, .Lfunc_end34-update_ref_list
	.cfi_endproc
                                        # -- End function
	.globl	update_ltref_list               # -- Begin function update_ltref_list
	.p2align	4, 0x90
	.type	update_ltref_list,@function
update_ltref_list:                      # @update_ltref_list
	.cfi_startproc
# %bb.0:                                # %entry
	movl	44(%rdi), %edx
	testl	%edx, %edx
	je	.LBB35_1
# %bb.2:                                # %for.body.lr.ph
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	.LBB35_3
	.p2align	4, 0x90
.LBB35_16:                              # %for.inc
                                        #   in Loop: Header=BB35_3 Depth=1
	incq	%rcx
	movl	%edx, %r8d
	cmpq	%r8, %rcx
	jae	.LBB35_17
.LBB35_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rdi), %r8
	movq	(%r8,%rcx,8), %r8
	movl	(%r8), %r9d
	cmpl	$3, %r9d
	jne	.LBB35_6
# %bb.4:                                # %if.then.i
                                        #   in Loop: Header=BB35_3 Depth=1
	movq	48(%r8), %r10
	cmpl	$0, 44(%r10)
	je	.LBB35_7
# %bb.5:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB35_3 Depth=1
	cmpb	$0, 40(%r10)
	jne	.LBB35_14
	jmp	.LBB35_7
	.p2align	4, 0x90
.LBB35_6:                               # %if.end4.i
                                        #   in Loop: Header=BB35_3 Depth=1
	testb	$1, %r9b
	je	.LBB35_10
.LBB35_7:                               # %if.then7.i
                                        #   in Loop: Header=BB35_3 Depth=1
	movq	56(%r8), %r10
	testq	%r10, %r10
	je	.LBB35_10
# %bb.8:                                # %if.then9.i
                                        #   in Loop: Header=BB35_3 Depth=1
	cmpl	$0, 44(%r10)
	je	.LBB35_10
# %bb.9:                                # %land.lhs.true13.i
                                        #   in Loop: Header=BB35_3 Depth=1
	cmpb	$0, 40(%r10)
	jne	.LBB35_14
	.p2align	4, 0x90
.LBB35_10:                              # %if.end21.i
                                        #   in Loop: Header=BB35_3 Depth=1
	testb	$2, %r9b
	je	.LBB35_16
# %bb.11:                               # %if.then25.i
                                        #   in Loop: Header=BB35_3 Depth=1
	movq	64(%r8), %r9
	testq	%r9, %r9
	je	.LBB35_16
# %bb.12:                               # %if.then27.i
                                        #   in Loop: Header=BB35_3 Depth=1
	cmpl	$0, 44(%r9)
	je	.LBB35_16
# %bb.13:                               # %land.lhs.true31.i
                                        #   in Loop: Header=BB35_3 Depth=1
	cmpb	$0, 40(%r9)
	je	.LBB35_16
	.p2align	4, 0x90
.LBB35_14:                              # %land.lhs.true
                                        #   in Loop: Header=BB35_3 Depth=1
	cmpl	%esi, 72(%r8)
	jne	.LBB35_16
# %bb.15:                               # %if.then
                                        #   in Loop: Header=BB35_3 Depth=1
	movq	32(%rdi), %rdx
	movl	%eax, %r9d
	incl	%eax
	movq	%r8, (%rdx,%r9,8)
	movl	44(%rdi), %edx
	jmp	.LBB35_16
.LBB35_1:
	xorl	%eax, %eax
.LBB35_17:                              # %for.end
	movl	%eax, 52(%rdi)
	cmpl	40(%rdi), %eax
	jae	.LBB35_20
# %bb.18:                               # %while.body.lr.ph
	movl	%eax, %eax
	.p2align	4, 0x90
.LBB35_19:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%rdi), %rcx
	movq	$0, (%rcx,%rax,8)
	incq	%rax
	movl	40(%rdi), %ecx
	cmpq	%rcx, %rax
	jb	.LBB35_19
.LBB35_20:                              # %while.end
	retq
.Lfunc_end35:
	.size	update_ltref_list, .Lfunc_end35-update_ltref_list
	.cfi_endproc
                                        # -- End function
	.globl	mm_update_max_long_term_frame_idx # -- Begin function mm_update_max_long_term_frame_idx
	.p2align	4, 0x90
	.type	mm_update_max_long_term_frame_idx,@function
mm_update_max_long_term_frame_idx:      # @mm_update_max_long_term_frame_idx
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
	movl	%edx, %ebx
	movl	%esi, %ebp
	movq	%rdi, %r14
	movq	(%rdi), %rdi
	movl	%edx, %esi
	callq	GetVOIdx@PLT
	decl	%ebp
	cltq
	movl	%ebp, 64(%r14,%rax,4)
	movl	52(%r14), %esi
	testl	%esi, %esi
	je	.LBB36_17
# %bb.1:                                # %for.body.lr.ph
	xorl	%ecx, %ecx
	jmp	.LBB36_2
.LBB36_14:                              # %if.end33.i
                                        #   in Loop: Header=BB36_2 Depth=1
	movq	48(%rdx), %rsi
	movl	$0, 44(%rsi)
	movq	48(%rdx), %rsi
	movb	$0, 40(%rsi)
.LBB36_15:                              # %unmark_for_long_term_reference.exit
                                        #   in Loop: Header=BB36_2 Depth=1
	movq	$0, 4(%rdx)
	movl	52(%r14), %esi
.LBB36_16:                              # %for.inc
                                        #   in Loop: Header=BB36_2 Depth=1
	incq	%rcx
	movl	%esi, %edx
	cmpq	%rdx, %rcx
	jae	.LBB36_17
.LBB36_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movl	32(%rdx), %edi
	cmpl	64(%r14,%rax,4), %edi
	jle	.LBB36_16
# %bb.3:                                # %land.lhs.true
                                        #   in Loop: Header=BB36_2 Depth=1
	cmpl	%ebx, 72(%rdx)
	jne	.LBB36_16
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB36_2 Depth=1
	movl	(%rdx), %esi
	testb	$1, %sil
	je	.LBB36_7
# %bb.5:                                # %if.then.i
                                        #   in Loop: Header=BB36_2 Depth=1
	movq	56(%rdx), %rdi
	testq	%rdi, %rdi
	je	.LBB36_7
# %bb.6:                                # %if.then2.i
                                        #   in Loop: Header=BB36_2 Depth=1
	movl	$0, 44(%rdi)
	movq	56(%rdx), %rsi
	movb	$0, 40(%rsi)
	movl	(%rdx), %esi
.LBB36_7:                               # %if.end5.i
                                        #   in Loop: Header=BB36_2 Depth=1
	testb	$2, %sil
	je	.LBB36_10
# %bb.8:                                # %if.then9.i
                                        #   in Loop: Header=BB36_2 Depth=1
	movq	64(%rdx), %rdi
	testq	%rdi, %rdi
	je	.LBB36_10
# %bb.9:                                # %if.then11.i
                                        #   in Loop: Header=BB36_2 Depth=1
	movl	$0, 44(%rdi)
	movq	64(%rdx), %rsi
	movb	$0, 40(%rsi)
	movl	(%rdx), %esi
.LBB36_10:                              # %if.end17.i
                                        #   in Loop: Header=BB36_2 Depth=1
	cmpl	$3, %esi
	jne	.LBB36_15
# %bb.11:                               # %if.then19.i
                                        #   in Loop: Header=BB36_2 Depth=1
	movq	56(%rdx), %rsi
	testq	%rsi, %rsi
	je	.LBB36_14
# %bb.12:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB36_2 Depth=1
	cmpq	$0, 64(%rdx)
	je	.LBB36_14
# %bb.13:                               # %if.then24.i
                                        #   in Loop: Header=BB36_2 Depth=1
	movl	$0, 44(%rsi)
	movq	56(%rdx), %rsi
	movb	$0, 40(%rsi)
	movq	64(%rdx), %rsi
	movl	$0, 44(%rsi)
	movq	64(%rdx), %rsi
	movb	$0, 40(%rsi)
	jmp	.LBB36_14
.LBB36_17:                              # %for.end
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end36:
	.size	mm_update_max_long_term_frame_idx, .Lfunc_end36-mm_update_max_long_term_frame_idx
	.cfi_endproc
                                        # -- End function
	.globl	store_picture_in_dpb            # -- Begin function store_picture_in_dpb
	.p2align	4, 0x90
	.type	store_picture_in_dpb,@function
store_picture_in_dpb:                   # @store_picture_in_dpb
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rdi), %r13
	movl	$0, 849028(%r13)
	xorl	%eax, %eax
	cmpl	$2, (%rsi)
	sete	%al
	movl	%eax, 849032(%r13)
	cmpl	$0, 252(%rsi)
	je	.LBB37_64
# %bb.1:                                # %if.then
	movq	(%rbx), %r12
	movl	344(%r14), %esi
	movq	%r12, %rdi
	callq	GetVOIdx@PLT
	movl	%eax, %ebp
	cmpl	$0, 256(%r14)
	je	.LBB37_36
# %bb.2:                                # %for.cond.preheader.i
	movl	%ebp, 32(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	848736(%r12), %rax
	movq	(%rax), %rax
	movl	32(%rax), %ebp
	movl	44(%rbx), %eax
	testl	%eax, %eax
	je	.LBB37_3
# %bb.18:                               # %for.body.lr.ph.i
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	jmp	.LBB37_19
	.p2align	4, 0x90
.LBB37_31:                              # %alloc_frame_store.exit.i
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	16(%rbx), %rax
	movq	%r12, (%rax,%r15,8)
	incl	%r13d
	movl	44(%rbx), %eax
.LBB37_32:                              # %for.inc.i
                                        #   in Loop: Header=BB37_19 Depth=1
	incq	%r15
	movl	%eax, %ecx
	cmpq	%rcx, %r15
	jae	.LBB37_4
.LBB37_19:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rbx), %rcx
	movq	(%rcx,%r15,8), %r12
	testl	%ebp, %ebp
	je	.LBB37_21
# %bb.20:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	72(%r12), %ecx
	cmpl	344(%r14), %ecx
	jne	.LBB37_32
	jmp	.LBB37_22
	.p2align	4, 0x90
.LBB37_21:                              # %if.then8.i
                                        #   in Loop: Header=BB37_19 Depth=1
	testq	%r12, %r12
	je	.LBB37_29
.LBB37_22:                              # %if.then.i.i
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	48(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB37_24
# %bb.23:                               # %if.then2.i.i
                                        #   in Loop: Header=BB37_19 Depth=1
	callq	free_storable_picture
	movq	$0, 48(%r12)
.LBB37_24:                              # %if.end.i.i
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	56(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB37_26
# %bb.25:                               # %if.then6.i.i
                                        #   in Loop: Header=BB37_19 Depth=1
	callq	free_storable_picture
	movq	$0, 56(%r12)
.LBB37_26:                              # %if.end9.i.i
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	64(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB37_28
# %bb.27:                               # %if.then11.i.i
                                        #   in Loop: Header=BB37_19 Depth=1
	callq	free_storable_picture
.LBB37_28:                              # %if.end14.i.i
                                        #   in Loop: Header=BB37_19 Depth=1
	movq	%r12, %rdi
	callq	free@PLT
.LBB37_29:                              # %free_frame_store.exit.i
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	$1, %edi
	movl	$96, %esi
	callq	calloc@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.LBB37_31
# %bb.30:                               # %if.then.i126.i
                                        #   in Loop: Header=BB37_19 Depth=1
	movl	$.L.str.10, %edi
	callq	no_mem_exit@PLT
	jmp	.LBB37_31
.LBB37_64:                              # %if.else
	cmpl	$0, 44(%r14)
	je	.LBB37_233
# %bb.65:                               # %land.lhs.true
	cmpl	$0, 264(%r14)
	je	.LBB37_233
# %bb.66:                               # %if.then4
	movq	(%rbx), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movl	$0, 849028(%rax)
	movq	312(%r14), %r12
	testq	%r12, %r12
	je	.LBB37_233
# %bb.67:                               # %while.body.lr.ph.i
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB37_68
.LBB37_194:                             # %sw.bb10.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	16(%r12), %esi
	movl	344(%r14), %edx
	movq	%rbx, %rdi
	callq	mm_update_max_long_term_frame_idx
.LBB37_121:                             # %mm_unmark_long_term_for_reference.exit.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	344(%r14), %esi
	movq	%rbx, %rdi
	callq	update_ltref_list
.LBB37_224:                             # %sw.epilog.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movq	24(%r12), %rax
	movq	%rax, 312(%r14)
	movq	%r12, %rdi
	callq	free@PLT
	movq	312(%r14), %r12
	testq	%r12, %r12
	je	.LBB37_225
.LBB37_68:                              # %while.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_204 Depth 2
                                        #     Child Loop BB37_197 Depth 2
                                        #     Child Loop BB37_129 Depth 2
                                        #     Child Loop BB37_135 Depth 2
                                        #     Child Loop BB37_161 Depth 2
                                        #     Child Loop BB37_174 Depth 2
                                        #     Child Loop BB37_97 Depth 2
                                        #     Child Loop BB37_75 Depth 2
                                        #     Child Loop BB37_83 Depth 2
	movl	(%r12), %eax
	cmpq	$6, %rax
	ja	.LBB37_222
# %bb.69:                               # %while.body.i
                                        #   in Loop: Header=BB37_68 Depth=1
	jmpq	*.LJTI37_0(,%rax,8)
.LBB37_70:                              # %sw.bb.i
                                        #   in Loop: Header=BB37_68 Depth=1
	cmpq	$0, 24(%r12)
	je	.LBB37_224
# %bb.71:                               # %if.then.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	$.L.str.31, %edi
	jmp	.LBB37_223
.LBB37_95:                              # %sw.bb4.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	52(%rbx), %esi
	testl	%esi, %esi
	je	.LBB37_121
# %bb.96:                               # %for.body.i95.i.preheader
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	8(%r12), %ecx
	xorl	%eax, %eax
	jmp	.LBB37_97
.LBB37_126:                             # %sw.bb6.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	4(%r12), %ebp
	movl	(%r14), %eax
	testl	%eax, %eax
	movl	20(%r14), %ecx
	leal	1(%rcx,%rcx), %edx
	cmovel	%ecx, %edx
	movl	12(%r12), %r15d
	notl	%ebp
	addl	%edx, %ebp
	testl	%eax, %eax
	je	.LBB37_133
# %bb.127:                              # %for.cond.preheader.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	48(%rbx), %ecx
	testq	%rcx, %rcx
	je	.LBB37_155
# %bb.128:                              # %for.body.lr.ph.i120.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movq	24(%rbx), %rdx
	movl	344(%r14), %eax
	xorl	%esi, %esi
	jmp	.LBB37_129
	.p2align	4, 0x90
.LBB37_154:                             # %for.inc.i125.i
                                        #   in Loop: Header=BB37_129 Depth=2
	incq	%rsi
	cmpq	%rsi, %rcx
	je	.LBB37_155
.LBB37_129:                             # %for.body.i122.i
                                        #   Parent Loop BB37_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdx,%rsi,8), %rdi
	cmpl	%eax, 72(%rdi)
	jne	.LBB37_154
# %bb.130:                              # %if.then6.i.i370
                                        #   in Loop: Header=BB37_129 Depth=2
	movl	4(%rdi), %r8d
	testb	$1, %r8b
	je	.LBB37_150
# %bb.131:                              # %if.then10.i.i
                                        #   in Loop: Header=BB37_129 Depth=2
	movq	56(%rdi), %r9
	cmpl	%ebp, 28(%r9)
	je	.LBB37_132
.LBB37_150:                             # %if.end16.i.i
                                        #   in Loop: Header=BB37_129 Depth=2
	testb	$2, %r8b
	je	.LBB37_154
# %bb.151:                              # %if.then23.i.i
                                        #   in Loop: Header=BB37_129 Depth=2
	movq	64(%rdi), %rdi
	cmpl	%ebp, 28(%rdi)
	jne	.LBB37_154
# %bb.152:                              #   in Loop: Header=BB37_68 Depth=1
	movl	$2, %esi
	jmp	.LBB37_153
.LBB37_222:                             # %sw.default.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	$.L.str.32, %edi
	jmp	.LBB37_223
.LBB37_72:                              # %sw.bb3.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	(%r14), %edi
	movl	20(%r14), %ecx
	testl	%edi, %edi
	leal	1(%rcx,%rcx), %eax
	cmovel	%ecx, %eax
	movl	48(%rbx), %ecx
	testq	%rcx, %rcx
	je	.LBB37_94
# %bb.73:                               # %for.body.lr.ph.i.i373
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	4(%r12), %edx
	notl	%edx
	addl	%edx, %eax
	movq	24(%rbx), %rdx
	movl	344(%r14), %esi
	testl	%edi, %edi
	je	.LBB37_82
# %bb.74:                               # %for.body.i.i.preheader
                                        #   in Loop: Header=BB37_68 Depth=1
	xorl	%edi, %edi
	jmp	.LBB37_75
	.p2align	4, 0x90
.LBB37_93:                              # %for.inc.i.i
                                        #   in Loop: Header=BB37_75 Depth=2
	incq	%rdi
	cmpq	%rdi, %rcx
	je	.LBB37_94
.LBB37_75:                              # %for.body.i.i
                                        #   Parent Loop BB37_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdx,%rdi,8), %r8
	cmpl	%esi, 72(%r8)
	jne	.LBB37_93
# %bb.76:                               # %if.then.i.i374
                                        #   in Loop: Header=BB37_75 Depth=2
	movl	4(%r8), %r9d
	testb	$1, %r9b
	je	.LBB37_89
# %bb.77:                               # %land.lhs.true27.i.i
                                        #   in Loop: Header=BB37_75 Depth=2
	testb	$1, 8(%r8)
	jne	.LBB37_89
# %bb.78:                               # %if.then34.i.i
                                        #   in Loop: Header=BB37_75 Depth=2
	movq	56(%r8), %r10
	cmpl	%eax, 28(%r10)
	je	.LBB37_79
.LBB37_89:                              # %if.end62.i.i
                                        #   in Loop: Header=BB37_75 Depth=2
	testb	$2, %r9b
	je	.LBB37_93
# %bb.90:                               # %land.lhs.true69.i.i
                                        #   in Loop: Header=BB37_75 Depth=2
	testb	$2, 8(%r8)
	jne	.LBB37_93
# %bb.91:                               # %if.then76.i.i
                                        #   in Loop: Header=BB37_75 Depth=2
	movq	64(%r8), %r8
	cmpl	%eax, 28(%r8)
	jne	.LBB37_93
# %bb.92:                               # %if.then82.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	$0, 44(%r8)
	movq	24(%rbx), %rax
	movq	(%rax,%rdi,8), %rax
	andl	$1, 4(%rax)
	jmp	.LBB37_80
.LBB37_195:                             # %sw.bb13.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	344(%r14), %ebp
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.LBB37_200
# %bb.196:                              # %for.body.i149.i.preheader
                                        #   in Loop: Header=BB37_68 Depth=1
	xorl	%r15d, %r15d
	jmp	.LBB37_197
	.p2align	4, 0x90
.LBB37_199:                             # %for.inc.i153.i
                                        #   in Loop: Header=BB37_197 Depth=2
	incq	%r15
	movl	%eax, %ecx
	cmpq	%rcx, %r15
	jae	.LBB37_200
.LBB37_197:                             # %for.body.i149.i
                                        #   Parent Loop BB37_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	24(%rbx), %rcx
	movq	(%rcx,%r15,8), %rdi
	cmpl	%ebp, 72(%rdi)
	jne	.LBB37_199
# %bb.198:                              # %if.then.i156.i
                                        #   in Loop: Header=BB37_197 Depth=2
	callq	unmark_for_reference
	movl	48(%rbx), %eax
	jmp	.LBB37_199
.LBB37_200:                             # %mm_unmark_all_short_term_for_reference.exit.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	update_ref_list
	movl	344(%r14), %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	mm_update_max_long_term_frame_idx
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	$1, 849028(%rax)
	jmp	.LBB37_224
.LBB37_201:                             # %sw.bb17.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	12(%r12), %ebp
	movl	(%r14), %esi
	testl	%esi, %esi
	je	.LBB37_202
# %bb.219:                              # %if.else.i159.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	28(%r14), %r8d
	movl	344(%r14), %eax
	movl	%eax, (%rsp)
	movq	%rbx, %rdi
	movl	%ebp, %edx
	movl	$1, %ecx
	xorl	%r9d, %r9d
	callq	unmark_long_term_field_for_reference_by_frame_idx
.LBB37_220:                             # %mm_mark_current_picture_long_term.exit.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movb	$1, 40(%r14)
	movl	%ebp, 36(%r14)
	movl	48(%rbx), %eax
	addl	52(%rbx), %eax
	movl	4164(%rbx), %ecx
	cmpl	$2, %ecx
	movl	$1, %edx
	cmovll	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB37_224
# %bb.221:                              # %if.then.i223.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	$.L.str.2, %edi
.LBB37_223:                             # %sw.epilog.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
	jmp	.LBB37_224
.LBB37_155:                             # %if.then34.i128.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	$.L.str.33, %edi
	movl	$200, %esi
	callq	error@PLT
	jmp	.LBB37_156
.LBB37_133:                             # %if.then.i141.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	52(%rbx), %esi
	testl	%esi, %esi
	je	.LBB37_156
# %bb.134:                              # %for.body.i.i.i.preheader
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	344(%r14), %eax
	xorl	%ecx, %ecx
	jmp	.LBB37_135
.LBB37_147:                             # %if.end33.i.i.i.i
                                        #   in Loop: Header=BB37_135 Depth=2
	movq	48(%rdx), %rsi
	movl	$0, 44(%rsi)
	movq	48(%rdx), %rsi
	movb	$0, 40(%rsi)
.LBB37_148:                             # %unmark_for_long_term_reference.exit.i.i.i
                                        #   in Loop: Header=BB37_135 Depth=2
	movq	$0, 4(%rdx)
	movl	52(%rbx), %esi
.LBB37_149:                             # %for.inc.i.i.i
                                        #   in Loop: Header=BB37_135 Depth=2
	incq	%rcx
	movl	%esi, %edx
	cmpq	%rdx, %rcx
	jae	.LBB37_156
.LBB37_135:                             # %for.body.i.i.i
                                        #   Parent Loop BB37_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	32(%rbx), %rdx
	movq	(%rdx,%rcx,8), %rdx
	cmpl	%r15d, 32(%rdx)
	jne	.LBB37_149
# %bb.136:                              # %land.lhs.true.i.i143.i
                                        #   in Loop: Header=BB37_135 Depth=2
	cmpl	%eax, 72(%rdx)
	jne	.LBB37_149
# %bb.137:                              # %if.then.i.i144.i
                                        #   in Loop: Header=BB37_135 Depth=2
	movl	(%rdx), %esi
	testb	$1, %sil
	je	.LBB37_140
# %bb.138:                              # %if.then.i.i.i.i
                                        #   in Loop: Header=BB37_135 Depth=2
	movq	56(%rdx), %rdi
	testq	%rdi, %rdi
	je	.LBB37_140
# %bb.139:                              # %if.then2.i.i.i.i
                                        #   in Loop: Header=BB37_135 Depth=2
	movl	$0, 44(%rdi)
	movq	56(%rdx), %rsi
	movb	$0, 40(%rsi)
	movl	(%rdx), %esi
.LBB37_140:                             # %if.end5.i.i.i.i
                                        #   in Loop: Header=BB37_135 Depth=2
	testb	$2, %sil
	je	.LBB37_143
# %bb.141:                              # %if.then9.i.i.i.i
                                        #   in Loop: Header=BB37_135 Depth=2
	movq	64(%rdx), %rdi
	testq	%rdi, %rdi
	je	.LBB37_143
# %bb.142:                              # %if.then11.i.i.i.i
                                        #   in Loop: Header=BB37_135 Depth=2
	movl	$0, 44(%rdi)
	movq	64(%rdx), %rsi
	movb	$0, 40(%rsi)
	movl	(%rdx), %esi
.LBB37_143:                             # %if.end17.i.i.i.i
                                        #   in Loop: Header=BB37_135 Depth=2
	cmpl	$3, %esi
	jne	.LBB37_148
# %bb.144:                              # %if.then19.i.i.i.i
                                        #   in Loop: Header=BB37_135 Depth=2
	movq	56(%rdx), %rsi
	testq	%rsi, %rsi
	je	.LBB37_147
# %bb.145:                              # %land.lhs.true.i.i.i.i
                                        #   in Loop: Header=BB37_135 Depth=2
	cmpq	$0, 64(%rdx)
	je	.LBB37_147
# %bb.146:                              # %if.then24.i.i.i.i
                                        #   in Loop: Header=BB37_135 Depth=2
	movl	$0, 44(%rsi)
	movq	56(%rdx), %rsi
	movb	$0, 40(%rsi)
	movq	64(%rdx), %rsi
	movl	$0, 44(%rsi)
	movq	64(%rdx), %rsi
	movb	$0, 40(%rsi)
	jmp	.LBB37_147
.LBB37_202:                             # %if.then.i162.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	52(%rbx), %esi
	testl	%esi, %esi
	je	.LBB37_220
# %bb.203:                              # %for.body.i.i168.i.preheader
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	344(%r14), %eax
	xorl	%ecx, %ecx
	jmp	.LBB37_204
.LBB37_216:                             # %if.end33.i.i.i216.i
                                        #   in Loop: Header=BB37_204 Depth=2
	movq	48(%rdx), %rsi
	movl	$0, 44(%rsi)
	movq	48(%rdx), %rsi
	movb	$0, 40(%rsi)
.LBB37_217:                             # %unmark_for_long_term_reference.exit.i.i201.i
                                        #   in Loop: Header=BB37_204 Depth=2
	movq	$0, 4(%rdx)
	movl	52(%rbx), %esi
.LBB37_218:                             # %for.inc.i.i173.i
                                        #   in Loop: Header=BB37_204 Depth=2
	incq	%rcx
	movl	%esi, %edx
	cmpq	%rdx, %rcx
	jae	.LBB37_220
.LBB37_204:                             # %for.body.i.i168.i
                                        #   Parent Loop BB37_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	32(%rbx), %rdx
	movq	(%rdx,%rcx,8), %rdx
	cmpl	%ebp, 32(%rdx)
	jne	.LBB37_218
# %bb.205:                              # %land.lhs.true.i.i176.i
                                        #   in Loop: Header=BB37_204 Depth=2
	cmpl	%eax, 72(%rdx)
	jne	.LBB37_218
# %bb.206:                              # %if.then.i.i179.i
                                        #   in Loop: Header=BB37_204 Depth=2
	movl	(%rdx), %esi
	testb	$1, %sil
	je	.LBB37_209
# %bb.207:                              # %if.then.i.i.i182.i
                                        #   in Loop: Header=BB37_204 Depth=2
	movq	56(%rdx), %rdi
	testq	%rdi, %rdi
	je	.LBB37_209
# %bb.208:                              # %if.then2.i.i.i185.i
                                        #   in Loop: Header=BB37_204 Depth=2
	movl	$0, 44(%rdi)
	movq	56(%rdx), %rsi
	movb	$0, 40(%rsi)
	movl	(%rdx), %esi
.LBB37_209:                             # %if.end5.i.i.i189.i
                                        #   in Loop: Header=BB37_204 Depth=2
	testb	$2, %sil
	je	.LBB37_212
# %bb.210:                              # %if.then9.i.i.i192.i
                                        #   in Loop: Header=BB37_204 Depth=2
	movq	64(%rdx), %rdi
	testq	%rdi, %rdi
	je	.LBB37_212
# %bb.211:                              # %if.then11.i.i.i195.i
                                        #   in Loop: Header=BB37_204 Depth=2
	movl	$0, 44(%rdi)
	movq	64(%rdx), %rsi
	movb	$0, 40(%rsi)
	movl	(%rdx), %esi
.LBB37_212:                             # %if.end17.i.i.i199.i
                                        #   in Loop: Header=BB37_204 Depth=2
	cmpl	$3, %esi
	jne	.LBB37_217
# %bb.213:                              # %if.then19.i.i.i205.i
                                        #   in Loop: Header=BB37_204 Depth=2
	movq	56(%rdx), %rsi
	testq	%rsi, %rsi
	je	.LBB37_216
# %bb.214:                              # %land.lhs.true.i.i.i208.i
                                        #   in Loop: Header=BB37_204 Depth=2
	cmpq	$0, 64(%rdx)
	je	.LBB37_216
# %bb.215:                              # %if.then24.i.i.i211.i
                                        #   in Loop: Header=BB37_204 Depth=2
	movl	$0, 44(%rsi)
	movq	56(%rdx), %rsi
	movb	$0, 40(%rsi)
	movq	64(%rdx), %rsi
	movl	$0, 44(%rsi)
	movq	64(%rdx), %rsi
	movb	$0, 40(%rsi)
	jmp	.LBB37_216
.LBB37_82:                              # %for.body.us.i.i378.preheader
                                        #   in Loop: Header=BB37_68 Depth=1
	xorl	%r8d, %r8d
	jmp	.LBB37_83
	.p2align	4, 0x90
.LBB37_87:                              # %for.inc.us.i.i381
                                        #   in Loop: Header=BB37_83 Depth=2
	incq	%r8
	cmpq	%r8, %rcx
	je	.LBB37_94
.LBB37_83:                              # %for.body.us.i.i378
                                        #   Parent Loop BB37_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdx,%r8,8), %rdi
	cmpl	%esi, 72(%rdi)
	jne	.LBB37_87
# %bb.84:                               # %if.then.us.i.i
                                        #   in Loop: Header=BB37_83 Depth=2
	cmpl	$3, 4(%rdi)
	jne	.LBB37_87
# %bb.85:                               # %land.lhs.true.us.i.i382
                                        #   in Loop: Header=BB37_83 Depth=2
	cmpl	$0, 8(%rdi)
	jne	.LBB37_87
# %bb.86:                               # %if.then13.us.i.i
                                        #   in Loop: Header=BB37_83 Depth=2
	movq	48(%rdi), %r9
	cmpl	%eax, 28(%r9)
	jne	.LBB37_87
# %bb.88:                               # %if.then18.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	callq	unmark_for_reference
	jmp	.LBB37_94
.LBB37_112:                             # %if.end33.i.i.i
                                        #   in Loop: Header=BB37_97 Depth=2
	movq	48(%rdx), %rsi
	movl	$0, 44(%rsi)
	movq	48(%rdx), %rsi
	movb	$0, 40(%rsi)
.LBB37_113:                             # %unmark_for_long_term_reference.exit.i.i
                                        #   in Loop: Header=BB37_97 Depth=2
	movq	$0, 4(%rdx)
	movl	52(%rbx), %esi
	.p2align	4, 0x90
.LBB37_114:                             # %for.inc.i100.i
                                        #   in Loop: Header=BB37_97 Depth=2
	incq	%rax
	movl	%esi, %edx
	cmpq	%rdx, %rax
	jae	.LBB37_121
.LBB37_97:                              # %for.body.i95.i
                                        #   Parent Loop BB37_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	32(%rbx), %rdx
	movq	(%rdx,%rax,8), %rdx
	movl	72(%rdx), %edi
	cmpl	344(%r14), %edi
	jne	.LBB37_114
# %bb.98:                               # %if.then.i102.i
                                        #   in Loop: Header=BB37_97 Depth=2
	cmpl	$0, (%r14)
	movl	4(%rdx), %edi
	je	.LBB37_99
# %bb.115:                              # %if.else.i.i
                                        #   in Loop: Header=BB37_97 Depth=2
	testb	$1, %dil
	je	.LBB37_122
# %bb.116:                              # %land.lhs.true28.i.i
                                        #   in Loop: Header=BB37_97 Depth=2
	testb	$1, 8(%rdx)
	je	.LBB37_122
# %bb.117:                              # %if.then35.i.i
                                        #   in Loop: Header=BB37_97 Depth=2
	movq	56(%rdx), %r8
	cmpl	%ecx, 32(%r8)
	je	.LBB37_118
.LBB37_122:                             # %if.end78.i.i
                                        #   in Loop: Header=BB37_97 Depth=2
	testb	$2, %dil
	je	.LBB37_114
# %bb.123:                              # %land.lhs.true85.i.i
                                        #   in Loop: Header=BB37_97 Depth=2
	testb	$2, 8(%rdx)
	je	.LBB37_114
# %bb.124:                              # %if.then92.i.i
                                        #   in Loop: Header=BB37_97 Depth=2
	movq	64(%rdx), %rdx
	cmpl	%ecx, 32(%rdx)
	jne	.LBB37_114
	jmp	.LBB37_125
.LBB37_99:                              # %if.then4.i.i
                                        #   in Loop: Header=BB37_97 Depth=2
	cmpl	$3, %edi
	jne	.LBB37_114
# %bb.100:                              # %land.lhs.true.i.i
                                        #   in Loop: Header=BB37_97 Depth=2
	cmpl	$3, 8(%rdx)
	jne	.LBB37_114
# %bb.101:                              # %if.then13.i.i
                                        #   in Loop: Header=BB37_97 Depth=2
	movq	48(%rdx), %rdi
	cmpl	%ecx, 32(%rdi)
	jne	.LBB37_114
# %bb.102:                              # %if.then19.i.i
                                        #   in Loop: Header=BB37_97 Depth=2
	movl	(%rdx), %esi
	testb	$1, %sil
	je	.LBB37_105
# %bb.103:                              # %if.then.i.i.i
                                        #   in Loop: Header=BB37_97 Depth=2
	movq	56(%rdx), %rdi
	testq	%rdi, %rdi
	je	.LBB37_105
# %bb.104:                              # %if.then2.i.i.i
                                        #   in Loop: Header=BB37_97 Depth=2
	movl	$0, 44(%rdi)
	movq	56(%rdx), %rsi
	movb	$0, 40(%rsi)
	movl	(%rdx), %esi
.LBB37_105:                             # %if.end5.i.i.i
                                        #   in Loop: Header=BB37_97 Depth=2
	testb	$2, %sil
	je	.LBB37_108
# %bb.106:                              # %if.then9.i.i.i
                                        #   in Loop: Header=BB37_97 Depth=2
	movq	64(%rdx), %rdi
	testq	%rdi, %rdi
	je	.LBB37_108
# %bb.107:                              # %if.then11.i.i.i
                                        #   in Loop: Header=BB37_97 Depth=2
	movl	$0, 44(%rdi)
	movq	64(%rdx), %rsi
	movb	$0, 40(%rsi)
	movl	(%rdx), %esi
.LBB37_108:                             # %if.end17.i.i.i
                                        #   in Loop: Header=BB37_97 Depth=2
	cmpl	$3, %esi
	jne	.LBB37_113
# %bb.109:                              # %if.then19.i.i.i
                                        #   in Loop: Header=BB37_97 Depth=2
	movq	56(%rdx), %rsi
	testq	%rsi, %rsi
	je	.LBB37_112
# %bb.110:                              # %land.lhs.true.i.i.i
                                        #   in Loop: Header=BB37_97 Depth=2
	cmpq	$0, 64(%rdx)
	je	.LBB37_112
# %bb.111:                              # %if.then24.i.i.i
                                        #   in Loop: Header=BB37_97 Depth=2
	movl	$0, 44(%rsi)
	movq	56(%rdx), %rsi
	movb	$0, 40(%rsi)
	movq	64(%rdx), %rsi
	movl	$0, 44(%rsi)
	movq	64(%rdx), %rsi
	movb	$0, 40(%rsi)
	jmp	.LBB37_112
.LBB37_132:                             #   in Loop: Header=BB37_68 Depth=1
	movl	$1, %esi
.LBB37_153:                             # %for.end.split.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	%eax, (%rsp)
	movq	%rbx, %rdi
	movl	%r15d, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%ebp, %r9d
	callq	unmark_long_term_field_for_reference_by_frame_idx
.LBB37_156:                             # %if.end37.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	(%r14), %r13d
	cmpl	$1, %r13d
	je	.LBB37_157
# %bb.158:                              # %if.end37.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	testl	%r13d, %r13d
	jne	.LBB37_171
# %bb.159:                              # %for.cond.preheader.i.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	48(%rbx), %ecx
	testq	%rcx, %rcx
	movq	16(%rsp), %r13                  # 8-byte Reload
	je	.LBB37_170
# %bb.160:                              # %for.body.lr.ph.i75.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movq	24(%rbx), %rdx
	movl	344(%r14), %esi
	xorl	%eax, %eax
	jmp	.LBB37_161
	.p2align	4, 0x90
.LBB37_169:                             # %for.inc.i79.i.i
                                        #   in Loop: Header=BB37_161 Depth=2
	incq	%rax
	cmpq	%rax, %rcx
	je	.LBB37_170
.LBB37_161:                             # %for.body.i76.i.i
                                        #   Parent Loop BB37_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdx,%rax,8), %rdi
	cmpl	%esi, 72(%rdi)
	jne	.LBB37_169
# %bb.162:                              # %if.then4.i.i.i
                                        #   in Loop: Header=BB37_161 Depth=2
	cmpl	$3, 4(%rdi)
	jne	.LBB37_169
# %bb.163:                              # %if.then9.i.i130.i
                                        #   in Loop: Header=BB37_161 Depth=2
	movq	48(%rdi), %rdi
	cmpb	$0, 40(%rdi)
	jne	.LBB37_169
# %bb.164:                              # %land.lhs.true.i81.i.i
                                        #   in Loop: Header=BB37_161 Depth=2
	cmpl	%ebp, 28(%rdi)
	jne	.LBB37_169
# %bb.165:                              # %if.then18.i.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	%r15d, 36(%rdi)
	movq	24(%rbx), %rcx
	movq	(%rcx,%rax,8), %rcx
	movl	%r15d, 32(%rcx)
	movq	24(%rbx), %rcx
	movq	(%rcx,%rax,8), %rcx
	movq	48(%rcx), %rcx
	movl	%r15d, 32(%rcx)
	movq	24(%rbx), %rcx
	movq	(%rcx,%rax,8), %rcx
	movq	48(%rcx), %rcx
	movb	$1, 40(%rcx)
	movq	24(%rbx), %rcx
	movq	(%rcx,%rax,8), %rcx
	cmpq	$0, 56(%rcx)
	je	.LBB37_168
# %bb.166:                              # %land.lhs.true41.i.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movq	64(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB37_168
# %bb.167:                              # %if.then46.i.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	%r15d, 36(%rdx)
	movq	24(%rbx), %rcx
	movq	(%rcx,%rax,8), %rcx
	movq	56(%rcx), %rcx
	movl	%r15d, 36(%rcx)
	movq	24(%rbx), %rcx
	movq	(%rcx,%rax,8), %rcx
	movq	56(%rcx), %rcx
	movl	%r15d, 32(%rcx)
	movq	24(%rbx), %rcx
	movq	(%rcx,%rax,8), %rcx
	movq	64(%rcx), %rcx
	movl	%r15d, 32(%rcx)
	movq	24(%rbx), %rcx
	movq	(%rcx,%rax,8), %rcx
	movq	64(%rcx), %rcx
	movb	$1, 40(%rcx)
	movq	24(%rbx), %rcx
	movq	(%rcx,%rax,8), %rcx
	movq	56(%rcx), %rcx
	movb	$1, 40(%rcx)
	movq	24(%rbx), %rcx
	movq	(%rcx,%rax,8), %rcx
.LBB37_168:                             # %if.end.i83.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	$3, 8(%rcx)
	jmp	.LBB37_193
.LBB37_157:                             #   in Loop: Header=BB37_68 Depth=1
	movq	%r15, 24(%rsp)                  # 8-byte Spill
	xorl	%r9d, %r9d
	movl	48(%rbx), %eax
	testq	%rax, %rax
	jne	.LBB37_173
	jmp	.LBB37_192
.LBB37_171:                             # %if.else87.i.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movq	%r15, 24(%rsp)                  # 8-byte Spill
	movl	$1, %r9d
	xorl	%r13d, %r13d
	movl	48(%rbx), %eax
	testq	%rax, %rax
	je	.LBB37_192
.LBB37_173:                             # %for.body92.lr.ph.i.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movq	24(%rbx), %rcx
	movl	344(%r14), %edx
	shlq	$3, %rax
	xorl	%r15d, %r15d
	jmp	.LBB37_174
	.p2align	4, 0x90
.LBB37_191:                             # %for.inc267.i.i.i
                                        #   in Loop: Header=BB37_174 Depth=2
	addq	$8, %r15
	cmpq	%r15, %rax
	je	.LBB37_192
.LBB37_174:                             # %for.body92.i.i.i
                                        #   Parent Loop BB37_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rcx,%r15), %rsi
	cmpl	%edx, 72(%rsi)
	jne	.LBB37_191
# %bb.175:                              # %if.then99.i.i.i
                                        #   in Loop: Header=BB37_174 Depth=2
	movl	4(%rsi), %r8d
	testb	$1, %r8b
	je	.LBB37_183
# %bb.176:                              # %if.then105.i.i.i
                                        #   in Loop: Header=BB37_174 Depth=2
	movq	56(%rsi), %rdi
	cmpb	$0, 40(%rdi)
	jne	.LBB37_183
# %bb.177:                              # %land.lhs.true112.i.i.i
                                        #   in Loop: Header=BB37_174 Depth=2
	cmpl	%ebp, 28(%rdi)
	je	.LBB37_178
	.p2align	4, 0x90
.LBB37_183:                             # %if.end180.i.i.i
                                        #   in Loop: Header=BB37_174 Depth=2
	testb	$2, %r8b
	je	.LBB37_191
# %bb.184:                              # %if.then187.i.i.i
                                        #   in Loop: Header=BB37_174 Depth=2
	movq	64(%rsi), %rdi
	cmpb	$0, 40(%rdi)
	jne	.LBB37_191
# %bb.185:                              # %land.lhs.true194.i.i.i
                                        #   in Loop: Header=BB37_174 Depth=2
	cmpl	%ebp, 28(%rdi)
	jne	.LBB37_191
# %bb.186:                              # %if.then201.i.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	cmpl	$0, 8(%rsi)
	je	.LBB37_187
# %bb.188:                              # %land.lhs.true207.i.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movq	24(%rsp), %rax                  # 8-byte Reload
	cmpl	%eax, 32(%rsi)
	movq	16(%rsp), %r13                  # 8-byte Reload
	je	.LBB37_190
# %bb.189:                              # %if.then213.i.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	$.Lstr.44, %edi
	movq	%r9, %rbp
	callq	puts@PLT
	movq	%rbp, %r9
	movq	24(%rbx), %rax
	movq	(%rax,%r15), %rax
	movq	64(%rax), %rdi
	jmp	.LBB37_190
.LBB37_192:                             # %for.end269.i.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	$.Lstr.42, %edi
	callq	puts@PLT
	movq	16(%rsp), %r13                  # 8-byte Reload
	jmp	.LBB37_193
.LBB37_170:                             # %for.end.i.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	$.Lstr.45, %edi
	callq	puts@PLT
.LBB37_193:                             # %mm_assign_long_term_frame_idx.exit.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	344(%r14), %esi
	movq	%rbx, %rdi
	callq	update_ref_list
	jmp	.LBB37_121
.LBB37_118:                             # %if.then41.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	$0, 44(%r8)
	movq	32(%rbx), %rcx
	movq	(%rcx,%rax,8), %rcx
	movq	56(%rcx), %rcx
	movb	$0, 40(%rcx)
	movq	32(%rbx), %rcx
	movq	(%rcx,%rax,8), %rcx
	andl	$2, 4(%rcx)
	movq	32(%rbx), %rcx
	movq	(%rcx,%rax,8), %rcx
	andl	$2, 8(%rcx)
	jmp	.LBB37_119
.LBB37_125:                             # %if.then98.i108.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	$0, 44(%rdx)
	movq	32(%rbx), %rcx
	movq	(%rcx,%rax,8), %rcx
	movq	64(%rcx), %rcx
	movb	$0, 40(%rcx)
	movq	32(%rbx), %rcx
	movq	(%rcx,%rax,8), %rcx
	andl	$1, 4(%rcx)
	movq	32(%rbx), %rcx
	movq	(%rcx,%rax,8), %rcx
	andl	$1, 8(%rcx)
.LBB37_119:                             # %if.then41.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movq	32(%rbx), %rcx
	movq	(%rcx,%rax,8), %rcx
	cmpl	$3, (%rcx)
	jne	.LBB37_121
# %bb.120:                              # %cleanup.sink.split.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movq	48(%rcx), %rcx
	movl	$0, 44(%rcx)
	movq	32(%rbx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	48(%rax), %rax
	movb	$0, 40(%rax)
	jmp	.LBB37_121
.LBB37_79:                              # %if.then40.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	$0, 44(%r10)
	movq	24(%rbx), %rax
	movq	(%rax,%rdi,8), %rax
	andl	$2, 4(%rax)
.LBB37_80:                              # %if.then40.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movq	24(%rbx), %rax
	movq	(%rax,%rdi,8), %rax
	cmpl	$3, (%rax)
	jne	.LBB37_94
# %bb.81:                               # %if.then54.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movq	48(%rax), %rax
	movl	$0, 44(%rax)
.LBB37_94:                              # %mm_unmark_short_term_for_reference.exit.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	344(%r14), %esi
	movq	%rbx, %rdi
	callq	update_ref_list
	jmp	.LBB37_224
.LBB37_178:                             # %if.then119.i.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	cmpl	$0, 8(%rsi)
	je	.LBB37_181
# %bb.179:                              # %land.lhs.true125.i.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movq	24(%rsp), %rax                  # 8-byte Reload
	cmpl	%eax, 32(%rsi)
	je	.LBB37_181
# %bb.180:                              # %if.then131.i.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movl	$.Lstr.44, %edi
	callq	puts@PLT
	movq	24(%rbx), %rax
	movq	(%rax,%r15), %rax
	movq	56(%rax), %rdi
.LBB37_181:                             # %if.end133.i.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movl	%edx, 36(%rdi)
	movq	24(%rbx), %rax
	movq	(%rax,%r15), %rax
	movl	%edx, 32(%rax)
	leal	(%r13,%rdx,2), %eax
	movq	24(%rbx), %rcx
	movq	(%rcx,%r15), %rcx
	movq	56(%rcx), %rcx
	movl	%eax, 32(%rcx)
	movq	24(%rbx), %rax
	movq	(%rax,%r15), %rax
	movq	56(%rax), %rax
	movb	$1, 40(%rax)
	movq	24(%rbx), %rax
	movq	(%rax,%r15), %rax
	orl	$1, 8(%rax)
	movq	24(%rbx), %rax
	movq	(%rax,%r15), %rax
	cmpl	$3, 8(%rax)
	movq	16(%rsp), %r13                  # 8-byte Reload
	jne	.LBB37_193
	jmp	.LBB37_182
.LBB37_187:                             #   in Loop: Header=BB37_68 Depth=1
	movq	16(%rsp), %r13                  # 8-byte Reload
.LBB37_190:                             # %if.end215.i.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movl	%edx, 36(%rdi)
	movq	24(%rbx), %rax
	movq	(%rax,%r15), %rax
	movl	%edx, 32(%rax)
	leal	(%r9,%rdx,2), %eax
	movq	24(%rbx), %rcx
	movq	(%rcx,%r15), %rcx
	movq	64(%rcx), %rcx
	movl	%eax, 32(%rcx)
	movq	24(%rbx), %rax
	movq	(%rax,%r15), %rax
	movq	64(%rax), %rax
	movb	$1, 40(%rax)
	movq	24(%rbx), %rax
	movq	(%rax,%r15), %rax
	orl	$2, 8(%rax)
	movq	24(%rbx), %rax
	movq	(%rax,%r15), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB37_193
.LBB37_182:                             # %if.then162.i.i.i
                                        #   in Loop: Header=BB37_68 Depth=1
	movq	48(%rax), %rax
	movb	$1, 40(%rax)
	movq	24(%rbx), %rax
	movq	(%rax,%r15), %rax
	movq	48(%rax), %rax
	movl	%edx, 32(%rax)
	movq	24(%rbx), %rax
	movq	(%rax,%r15), %rax
	movq	48(%rax), %rax
	movl	%edx, 36(%rax)
	jmp	.LBB37_193
.LBB37_36:                              # %if.else.i
	movl	849084(%r12), %eax
	cmpl	$128, %eax
	je	.LBB37_38
# %bb.37:                               # %if.else.i
	cmpl	$118, %eax
	jne	.LBB37_59
.LBB37_38:                              # %if.then58.i
	movq	(%rbx), %rax
	cmpl	$0, 849240(%rax)
	je	.LBB37_40
# %bb.39:                               # %if.then.i127.i
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	conceal_non_ref_pics@PLT
.LBB37_40:                              # %if.end.i128.i
	cmpl	$0, 44(%rbx)
	je	.LBB37_56
# %bb.41:                               # %for.body.lr.ph.i.i
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB37_42:                              # %for.body.us.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rbx), %rax
	movq	(%rax,%r15,8), %rdi
	callq	unmark_for_reference
	incq	%r15
	movl	44(%rbx), %ecx
	cmpq	%rcx, %r15
	jb	.LBB37_42
	jmp	.LBB37_43
.LBB37_3:
	xorl	%r13d, %r13d
.LBB37_4:                               # %for.cond17.preheader.i
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.LBB37_12
# %bb.5:                                # %for.body19.lr.ph.i
	testl	%ebp, %ebp
	je	.LBB37_10
# %bb.6:                                # %for.body19.i.preheader
	xorl	%ecx, %ecx
	jmp	.LBB37_7
	.p2align	4, 0x90
.LBB37_9:                               # %for.inc32.i
                                        #   in Loop: Header=BB37_7 Depth=1
	incq	%rcx
	movl	%eax, %edx
	cmpq	%rdx, %rcx
	jae	.LBB37_12
.LBB37_7:                               # %for.body19.i
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rbx), %rdx
	movq	(%rdx,%rcx,8), %rsi
	movl	72(%rsi), %esi
	cmpl	344(%r14), %esi
	jne	.LBB37_9
# %bb.8:                                # %if.then27.i
                                        #   in Loop: Header=BB37_7 Depth=1
	movq	$0, (%rdx,%rcx,8)
	movl	48(%rbx), %eax
	jmp	.LBB37_9
.LBB37_225:                             # %while.end.i
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 849028(%rax)
	je	.LBB37_233
# %bb.226:                              # %if.then23.i
	movl	$0, 20(%r14)
	movl	$0, 28(%r14)
	movl	(%r14), %eax
	testl	%eax, %eax
	je	.LBB37_231
# %bb.227:                              # %if.then23.i
	cmpl	$2, %eax
	je	.LBB37_230
# %bb.228:                              # %if.then23.i
	cmpl	$1, %eax
	jne	.LBB37_232
# %bb.229:                              # %sw.bb24.i
	movq	$0, 4(%r14)
	jmp	.LBB37_232
.LBB37_10:                              # %for.body19.us.i.preheader
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB37_11:                              # %for.body19.us.i
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rbx), %rcx
	movq	$0, (%rcx,%rax,8)
	incq	%rax
	movl	48(%rbx), %ecx
	cmpq	%rcx, %rax
	jb	.LBB37_11
.LBB37_12:                              # %for.cond35.preheader.i
	movl	52(%rbx), %eax
	testl	%eax, %eax
	je	.LBB37_35
# %bb.13:                               # %for.body37.lr.ph.i
	testl	%ebp, %ebp
	je	.LBB37_33
# %bb.14:                               # %for.body37.i.preheader
	xorl	%ecx, %ecx
	jmp	.LBB37_15
	.p2align	4, 0x90
.LBB37_17:                              # %for.inc50.i
                                        #   in Loop: Header=BB37_15 Depth=1
	incq	%rcx
	movl	%eax, %edx
	cmpq	%rdx, %rcx
	jae	.LBB37_35
.LBB37_15:                              # %for.body37.i
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%rbx), %rdx
	movq	(%rdx,%rcx,8), %rsi
	movl	72(%rsi), %esi
	cmpl	344(%r14), %esi
	jne	.LBB37_17
# %bb.16:                               # %if.then45.i
                                        #   in Loop: Header=BB37_15 Depth=1
	movq	$0, (%rdx,%rcx,8)
	movl	52(%rbx), %eax
	jmp	.LBB37_17
.LBB37_33:                              # %for.body37.us.i.preheader
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB37_34:                              # %for.body37.us.i
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%rbx), %rcx
	movq	$0, (%rcx,%rax,8)
	incq	%rax
	movl	52(%rbx), %ecx
	cmpq	%rcx, %rax
	jb	.LBB37_34
.LBB37_35:                              # %for.end52.i
	subl	%r13d, 44(%rbx)
	movq	16(%rsp), %r13                  # 8-byte Reload
	movl	32(%rsp), %ebp                  # 4-byte Reload
	jmp	.LBB37_60
.LBB37_59:                              # %if.else59.i
	movl	344(%r14), %esi
	movq	%rbx, %rdi
	callq	flush_dpb
	jmp	.LBB37_60
.LBB37_341:                             # %if.then.i136.i
                                        #   in Loop: Header=BB37_43 Depth=1
	movq	%rbx, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	remove_frame_from_dpb
	movl	44(%rbx), %ecx
.LBB37_43:                              # %while.cond.preheader.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_45 Depth 2
	testl	%ecx, %ecx
	je	.LBB37_56
# %bb.44:                               # %for.body.lr.ph.i132.i
                                        #   in Loop: Header=BB37_43 Depth=1
	movq	16(%rbx), %rax
	movl	%ecx, %ecx
	xorl	%esi, %esi
	jmp	.LBB37_45
.LBB37_49:                              # %if.then1.i.us.i.i
                                        #   in Loop: Header=BB37_45 Depth=2
	movq	48(%rdx), %r8
	cmpl	$0, 44(%r8)
	je	.LBB37_50
	.p2align	4, 0x90
.LBB37_55:                              # %for.inc.us.i.i
                                        #   in Loop: Header=BB37_45 Depth=2
	incq	%rsi
	cmpq	%rsi, %rcx
	je	.LBB37_56
.LBB37_45:                              # %for.body.us.i134.i
                                        #   Parent Loop BB37_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax,%rsi,8), %rdx
	cmpl	$0, 36(%rdx)
	je	.LBB37_55
# %bb.46:                               # %land.lhs.true.us.i.i
                                        #   in Loop: Header=BB37_45 Depth=2
	cmpl	$0, 4(%rdx)
	jne	.LBB37_55
# %bb.47:                               # %if.end.i.us.i.i
                                        #   in Loop: Header=BB37_45 Depth=2
	movl	(%rdx), %edi
	cmpl	$3, %edi
	je	.LBB37_49
# %bb.48:                               # %if.end5.i.us.i.i
                                        #   in Loop: Header=BB37_45 Depth=2
	testb	$1, %dil
	je	.LBB37_52
.LBB37_50:                              # %if.then8.i.us.i.i
                                        #   in Loop: Header=BB37_45 Depth=2
	movq	56(%rdx), %r8
	testq	%r8, %r8
	je	.LBB37_52
# %bb.51:                               # %if.then10.i.us.i.i
                                        #   in Loop: Header=BB37_45 Depth=2
	cmpl	$0, 44(%r8)
	jne	.LBB37_55
.LBB37_52:                              # %if.end17.i.us.i.i
                                        #   in Loop: Header=BB37_45 Depth=2
	testb	$2, %dil
	je	.LBB37_341
# %bb.53:                               # %if.then21.i.us.i.i
                                        #   in Loop: Header=BB37_45 Depth=2
	movq	64(%rdx), %rdx
	testq	%rdx, %rdx
	je	.LBB37_341
# %bb.54:                               # %if.then23.i.us.i.i
                                        #   in Loop: Header=BB37_45 Depth=2
	cmpl	$0, 44(%rdx)
	jne	.LBB37_55
	jmp	.LBB37_341
	.p2align	4, 0x90
.LBB37_57:                              # %land.rhs.i.i
                                        #   in Loop: Header=BB37_56 Depth=1
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	output_one_frame_from_dpb
	testl	%eax, %eax
	je	.LBB37_58
.LBB37_56:                              # %while.cond10.i.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 44(%rbx)
	jne	.LBB37_57
.LBB37_58:                              # %flush_dpb.exit.i
	movl	$-2147483648, 56(%rbx)          # imm = 0x80000000
.LBB37_60:                              # %if.end62.i
	movq	$0, 4168(%rbx)
	movl	344(%r14), %esi
	movq	%rbx, %rdi
	callq	update_ref_list
	movl	344(%r14), %esi
	movq	%rbx, %rdi
	callq	update_ltref_list
	movq	$-2147483648, 56(%rbx)          # imm = 0x80000000
	cmpl	$0, 260(%r14)
	movslq	%ebp, %rax
	je	.LBB37_62
# %bb.61:                               # %if.then66.i
	movl	$0, 64(%rbx,%rax,4)
	movl	$0, 36(%r14)
	movb	$1, %al
	jmp	.LBB37_63
.LBB37_62:                              # %if.else69.i
	movl	$-1, 64(%rbx,%rax,4)
	xorl	%eax, %eax
.LBB37_63:                              # %idr_memory_management.exit
	movb	%al, 40(%r14)
	leaq	856056(%r13), %rdi
	movl	$400, %edx                      # imm = 0x190
	xorl	%esi, %esi
	callq	memset@PLT
.LBB37_233:                             # %if.end5
	movl	(%r14), %eax
	leal	-1(%rax), %ecx
	cmpl	$1, %ecx
	ja	.LBB37_251
.LBB37_234:                             # %if.then12
	movq	4168(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB37_236
# %bb.235:                              # %land.lhs.true14
	movl	72(%rsi), %ecx
	cmpl	344(%r14), %ecx
	je	.LBB37_246
.LBB37_236:                             # %if.then19
	movl	44(%rbx), %ecx
	testq	%rcx, %rcx
	je	.LBB37_245
# %bb.237:                              # %for.body.lr.ph
	movq	16(%rbx), %rdx
	movl	344(%r14), %r8d
	xorl	%edi, %edi
	jmp	.LBB37_238
.LBB37_243:                             # %land.lhs.true40
                                        #   in Loop: Header=BB37_238 Depth=1
	cmpl	$1, (%r9)
	je	.LBB37_242
	.p2align	4, 0x90
.LBB37_244:                             # %for.inc
                                        #   in Loop: Header=BB37_238 Depth=1
	incq	%rdi
	cmpq	%rdi, %rcx
	je	.LBB37_245
.LBB37_238:                             # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdx,%rdi,8), %r9
	cmpl	%r8d, 72(%r9)
	jne	.LBB37_244
# %bb.239:                              # %land.lhs.true26
                                        #   in Loop: Header=BB37_238 Depth=1
	cmpl	$2, %eax
	je	.LBB37_243
# %bb.240:                              # %land.lhs.true26
                                        #   in Loop: Header=BB37_238 Depth=1
	cmpl	$1, %eax
	jne	.LBB37_244
# %bb.241:                              # %land.lhs.true30
                                        #   in Loop: Header=BB37_238 Depth=1
	cmpl	$2, (%r9)
	jne	.LBB37_244
.LBB37_242:                             # %if.then52
	movq	(%rdx,%rdi,8), %rsi
	movq	%rsi, 4168(%rbx)
.LBB37_245:                             # %if.end58
	testq	%rsi, %rsi
	je	.LBB37_251
.LBB37_246:                             # %land.lhs.true61
	movl	72(%rsi), %eax
	cmpl	344(%r14), %eax
	jne	.LBB37_251
# %bb.247:                              # %if.then67
	movl	20(%rsi), %eax
	cmpl	28(%r14), %eax
	jne	.LBB37_251
# %bb.248:                              # %if.then71
	movl	(%r14), %eax
	cmpl	$2, %eax
	je	.LBB37_262
# %bb.249:                              # %if.then71
	cmpl	$1, %eax
	jne	.LBB37_251
# %bb.250:                              # %land.lhs.true75
	cmpl	$2, (%rsi)
	je	.LBB37_263
	jmp	.LBB37_251
.LBB37_262:                             # %land.lhs.true84
	cmpl	$1, (%rsi)
	jne	.LBB37_251
.LBB37_263:                             # %if.then89
	cmpl	$0, 44(%r14)
	sete	%al
	cmpl	$0, 12(%rsi)
	sete	%cl
	xorb	%al, %cl
	jne	.LBB37_251
# %bb.264:                              # %if.then104
	movq	%r13, %rdi
	movq	%r14, %rdx
	callq	insert_picture_in_dpb
	movl	344(%r14), %esi
	movq	%rbx, %rdi
	callq	update_ref_list
	movl	344(%r14), %esi
	movq	%rbx, %rdi
	callq	update_ltref_list
	movq	$0, 4168(%rbx)
	jmp	.LBB37_338
.LBB37_230:                             # %sw.bb25.i
	movl	$0, 12(%r14)
	movl	$0, 4(%r14)
	jmp	.LBB37_232
.LBB37_231:                             # %sw.bb27.i
	movl	4(%r14), %eax
	movl	8(%r14), %ecx
	subl	%eax, %ecx
	movl	%ecx, 8(%r14)
	movl	12(%r14), %edx
	subl	%eax, %edx
	movl	%edx, 12(%r14)
	cmpl	%edx, %ecx
	cmovll	%ecx, %edx
	movl	%edx, 4(%r14)
.LBB37_232:                             # %sw.epilog36.i
	movl	344(%r14), %esi
	movq	%rbx, %rdi
	callq	flush_dpb
	movl	(%r14), %eax
	leal	-1(%rax), %ecx
	cmpl	$1, %ecx
	jbe	.LBB37_234
.LBB37_251:                             # %if.end113
	cmpl	$0, 252(%r14)
	je	.LBB37_252
.LBB37_275:                             # %if.end123
	cmpl	$0, 849240(%r13)
	movl	40(%rbx), %eax
	je	.LBB37_282
# %bb.276:                              # %for.cond127.preheader
	testl	%eax, %eax
	je	.LBB37_277
# %bb.278:                              # %for.body130.lr.ph
	xorl	%ecx, %ecx
	jmp	.LBB37_279
	.p2align	4, 0x90
.LBB37_281:                             # %for.inc140
                                        #   in Loop: Header=BB37_279 Depth=1
	incq	%rcx
	movl	%eax, %edx
	cmpq	%rdx, %rcx
	jae	.LBB37_282
.LBB37_279:                             # %for.body130
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rbx), %rdx
	movq	(%rdx,%rcx,8), %rdx
	cmpl	$0, 4(%rdx)
	je	.LBB37_281
# %bb.280:                              # %if.then135
                                        #   in Loop: Header=BB37_279 Depth=1
	movl	$1, 44(%rdx)
	movl	40(%rbx), %eax
	jmp	.LBB37_281
.LBB37_252:                             # %land.lhs.true116
	cmpl	$0, 44(%r14)
	je	.LBB37_275
# %bb.253:                              # %land.lhs.true119
	cmpl	$0, 264(%r14)
	jne	.LBB37_275
# %bb.254:                              # %if.then122
	movl	4164(%rbx), %eax
	subl	52(%rbx), %eax
	cmpl	%eax, 48(%rbx)
	jne	.LBB37_274
# %bb.255:                              # %if.then.i387
	movq	(%rbx), %rax
	movl	849084(%rax), %eax
	cmpl	$118, %eax
	je	.LBB37_265
# %bb.256:                              # %if.then.i387
	cmpl	$128, %eax
	jne	.LBB37_257
.LBB37_265:                             # %if.then5.i
	movl	44(%rbx), %eax
	testq	%rax, %rax
	je	.LBB37_274
# %bb.266:                              # %for.body.lr.ph.i390
	movq	16(%rbx), %rcx
	leaq	344(%r14), %r15
	xorl	%edx, %edx
	jmp	.LBB37_267
	.p2align	4, 0x90
.LBB37_272:                             # %for.inc.i395
                                        #   in Loop: Header=BB37_267 Depth=1
	incq	%rdx
	cmpq	%rdx, %rax
	je	.LBB37_274
.LBB37_267:                             # %for.body.i392
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rdi
	cmpl	$0, 4(%rdi)
	je	.LBB37_272
# %bb.268:                              # %land.lhs.true.i
                                        #   in Loop: Header=BB37_267 Depth=1
	cmpl	$0, 8(%rdi)
	jne	.LBB37_272
# %bb.269:                              # %land.lhs.true11.i
                                        #   in Loop: Header=BB37_267 Depth=1
	movl	72(%rdi), %esi
	cmpl	(%r15), %esi
	jne	.LBB37_272
# %bb.270:                              # %if.then17.i
	callq	unmark_for_reference
	jmp	.LBB37_271
.LBB37_277:
	xorl	%eax, %eax
.LBB37_282:                             # %if.end143
	cmpl	%eax, 44(%rbx)
	jne	.LBB37_287
# %bb.283:                              # %if.then148
	cmpl	$0, 849240(%r13)
	je	.LBB37_285
# %bb.284:                              # %if.then152
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	conceal_non_ref_pics@PLT
.LBB37_285:                             # %if.end153
	movl	344(%r14), %esi
	movq	%rbx, %rdi
	callq	remove_unused_frame_from_dpb
	cmpl	$0, 849240(%r13)
	je	.LBB37_287
# %bb.286:                              # %if.then158
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	sliding_window_poc_management@PLT
	jmp	.LBB37_287
	.p2align	4, 0x90
.LBB37_320:                             # %if.end177
                                        #   in Loop: Header=BB37_287 Depth=1
	movq	%rbx, %rdi
	callq	output_one_frame_from_dpb
.LBB37_287:                             # %if.end160
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_306 Depth 2
                                        #     Child Loop BB37_297 Depth 2
	movl	44(%rbx), %eax
	cmpl	40(%rbx), %eax
	jne	.LBB37_321
# %bb.288:                              # %while.body
                                        #   in Loop: Header=BB37_287 Depth=1
	cmpl	$0, 44(%r14)
	movl	344(%r14), %esi
	jne	.LBB37_320
# %bb.289:                              # %if.then167
                                        #   in Loop: Header=BB37_287 Depth=1
	testl	%eax, %eax
	jne	.LBB37_291
# %bb.290:                              # %if.end.i
                                        #   in Loop: Header=BB37_287 Depth=1
	movl	$.L.str.37, %edi
	movl	%esi, %ebp
	movl	$150, %esi
	callq	error@PLT
	movl	%ebp, %esi
	movl	44(%rbx), %eax
	testl	%eax, %eax
	je	.LBB37_339
.LBB37_291:                             # %for.body.lr.ph.i400
                                        #   in Loop: Header=BB37_287 Depth=1
	movq	16(%rbx), %rdx
	movl	%eax, %edi
	cmpl	$-1, %esi
	je	.LBB37_294
# %bb.292:                              # %for.body.i402.preheader
                                        #   in Loop: Header=BB37_287 Depth=1
	cmpl	$1, %edi
	jne	.LBB37_305
# %bb.293:                              #   in Loop: Header=BB37_287 Depth=1
	movl	$-1, %ecx
	movl	$2147483647, %eax               # imm = 0x7FFFFFFF
	xorl	%r8d, %r8d
.LBB37_313:                             # %get_smallest_poc.exit.loopexit586.unr-lcssa
                                        #   in Loop: Header=BB37_287 Depth=1
	testb	$1, %dil
	je	.LBB37_317
# %bb.314:                              # %for.body.i402.epil
                                        #   in Loop: Header=BB37_287 Depth=1
	movq	(%rdx,%r8,8), %rdi
	movl	40(%rdi), %edx
	cmpl	%edx, %eax
	jle	.LBB37_317
# %bb.315:                              # %land.lhs.true.i407.epil
                                        #   in Loop: Header=BB37_287 Depth=1
	cmpl	$0, 36(%rdi)
	jne	.LBB37_317
# %bb.316:                              # %land.lhs.true8.i.epil
                                        #   in Loop: Header=BB37_287 Depth=1
	cmpl	%esi, 72(%rdi)
	cmovel	%edx, %eax
	cmovel	%r8d, %ecx
	jmp	.LBB37_317
.LBB37_294:                             # %for.body.us.i.preheader
                                        #   in Loop: Header=BB37_287 Depth=1
	cmpl	$1, %edi
	jne	.LBB37_296
# %bb.295:                              #   in Loop: Header=BB37_287 Depth=1
	movl	$-1, %ecx
	movl	$2147483647, %eax               # imm = 0x7FFFFFFF
	xorl	%esi, %esi
.LBB37_302:                             # %get_smallest_poc.exit.loopexit.unr-lcssa
                                        #   in Loop: Header=BB37_287 Depth=1
	testb	$1, %dil
	je	.LBB37_317
# %bb.303:                              # %for.body.us.i.epil
                                        #   in Loop: Header=BB37_287 Depth=1
	movq	(%rdx,%rsi,8), %rdi
	movl	40(%rdi), %edx
	cmpl	%edx, %eax
	jle	.LBB37_317
# %bb.304:                              # %land.lhs.true.us.i.epil
                                        #   in Loop: Header=BB37_287 Depth=1
	cmpl	$0, 36(%rdi)
	cmovel	%edx, %eax
	cmovel	%esi, %ecx
	.p2align	4, 0x90
.LBB37_317:                             # %get_smallest_poc.exit
                                        #   in Loop: Header=BB37_287 Depth=1
	cmpl	$-1, %ecx
	je	.LBB37_339
# %bb.318:                              # %lor.lhs.false171
                                        #   in Loop: Header=BB37_287 Depth=1
	cmpl	%eax, 4(%r14)
	jl	.LBB37_339
# %bb.319:                              # %lor.lhs.false171.if.end177_crit_edge
                                        #   in Loop: Header=BB37_287 Depth=1
	movl	344(%r14), %esi
	jmp	.LBB37_320
.LBB37_305:                             # %for.body.i402.preheader.new
                                        #   in Loop: Header=BB37_287 Depth=1
	movl	%edi, %r9d
	andl	$-2, %r9d
	movl	$-1, %ecx
	movl	$2147483647, %eax               # imm = 0x7FFFFFFF
	xorl	%r8d, %r8d
	jmp	.LBB37_306
	.p2align	4, 0x90
.LBB37_312:                             # %for.inc.i405.1
                                        #   in Loop: Header=BB37_306 Depth=2
	addq	$2, %r8
	cmpq	%r8, %r9
	je	.LBB37_313
.LBB37_306:                             # %for.body.i402
                                        #   Parent Loop BB37_287 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdx,%r8,8), %r11
	movl	40(%r11), %r10d
	cmpl	%r10d, %eax
	jle	.LBB37_309
# %bb.307:                              # %land.lhs.true.i407
                                        #   in Loop: Header=BB37_306 Depth=2
	cmpl	$0, 36(%r11)
	je	.LBB37_308
.LBB37_309:                             # %for.inc.i405
                                        #   in Loop: Header=BB37_306 Depth=2
	movq	8(%rdx,%r8,8), %r11
	movl	40(%r11), %r10d
	cmpl	%r10d, %eax
	jle	.LBB37_312
.LBB37_310:                             # %land.lhs.true.i407.1
                                        #   in Loop: Header=BB37_306 Depth=2
	cmpl	$0, 36(%r11)
	jne	.LBB37_312
# %bb.311:                              # %land.lhs.true8.i.1
                                        #   in Loop: Header=BB37_306 Depth=2
	leal	1(%r8), %ebp
	cmpl	%esi, 72(%r11)
	cmovel	%r10d, %eax
	cmovel	%ebp, %ecx
	jmp	.LBB37_312
.LBB37_308:                             # %land.lhs.true8.i
                                        #   in Loop: Header=BB37_306 Depth=2
	cmpl	%esi, 72(%r11)
	cmovel	%r10d, %eax
	cmovel	%r8d, %ecx
	movq	8(%rdx,%r8,8), %r11
	movl	40(%r11), %r10d
	cmpl	%r10d, %eax
	jle	.LBB37_312
	jmp	.LBB37_310
.LBB37_296:                             # %for.body.us.i.preheader.new
                                        #   in Loop: Header=BB37_287 Depth=1
	movl	%edi, %r8d
	andl	$-2, %r8d
	movl	$-1, %ecx
	movl	$2147483647, %eax               # imm = 0x7FFFFFFF
	xorl	%esi, %esi
	jmp	.LBB37_297
	.p2align	4, 0x90
.LBB37_301:                             # %for.inc.us.i.1
                                        #   in Loop: Header=BB37_297 Depth=2
	addq	$2, %rsi
	cmpq	%rsi, %r8
	je	.LBB37_302
.LBB37_297:                             # %for.body.us.i
                                        #   Parent Loop BB37_287 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdx,%rsi,8), %r10
	movl	40(%r10), %r9d
	cmpl	%r9d, %eax
	jg	.LBB37_298
# %bb.299:                              # %for.inc.us.i
                                        #   in Loop: Header=BB37_297 Depth=2
	movq	8(%rdx,%rsi,8), %r10
	movl	40(%r10), %r9d
	cmpl	%r9d, %eax
	jle	.LBB37_301
	jmp	.LBB37_300
	.p2align	4, 0x90
.LBB37_298:                             # %land.lhs.true.us.i
                                        #   in Loop: Header=BB37_297 Depth=2
	cmpl	$0, 36(%r10)
	cmovel	%r9d, %eax
	cmovel	%esi, %ecx
	movq	8(%rdx,%rsi,8), %r10
	movl	40(%r10), %r9d
	cmpl	%r9d, %eax
	jle	.LBB37_301
.LBB37_300:                             # %land.lhs.true.us.i.1
                                        #   in Loop: Header=BB37_297 Depth=2
	leal	1(%rsi), %r11d
	cmpl	$0, 36(%r10)
	cmovel	%r9d, %eax
	cmovel	%r11d, %ecx
	jmp	.LBB37_301
.LBB37_321:                             # %while.end
	cmpl	$0, 44(%r14)
	je	.LBB37_330
# %bb.322:                              # %land.lhs.true182
	cmpb	$0, 40(%r14)
	jne	.LBB37_330
# %bb.323:                              # %for.cond185.preheader
	movl	48(%rbx), %ecx
	testl	%ecx, %ecx
	je	.LBB37_330
# %bb.324:                              # %for.body188.lr.ph
	xorl	%r15d, %r15d
	jmp	.LBB37_325
	.p2align	4, 0x90
.LBB37_328:                             # %for.inc205
                                        #   in Loop: Header=BB37_325 Depth=1
	incq	%r15
	movl	%ecx, %eax
	cmpq	%rax, %r15
	jae	.LBB37_329
.LBB37_325:                             # %for.body188
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rbx), %rax
	movq	(%rax,%r15,8), %rax
	movl	20(%rax), %edx
	cmpl	20(%r14), %edx
	jne	.LBB37_328
# %bb.326:                              # %land.lhs.true195
                                        #   in Loop: Header=BB37_325 Depth=1
	movl	72(%rax), %eax
	cmpl	344(%r14), %eax
	jne	.LBB37_328
# %bb.327:                              # %if.then203
                                        #   in Loop: Header=BB37_325 Depth=1
	movl	$.L.str.20, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
	movl	48(%rbx), %ecx
	jmp	.LBB37_328
.LBB37_339:                             # %if.then175
	movl	851888(%r13), %edx
	movq	%r13, %rdi
	movq	%r14, %rsi
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
	jmp	direct_output@PLT               # TAILCALL
.LBB37_329:                             # %if.end208.loopexit
	.cfi_def_cfa_offset 96
	movl	44(%rbx), %eax
.LBB37_330:                             # %if.end208
	movq	16(%rbx), %rcx
	movl	%eax, %eax
	movq	(%rcx,%rax,8), %rsi
	movq	%r13, %rdi
	movq	%r14, %rdx
	callq	insert_picture_in_dpb
	cmpl	$0, 252(%r14)
	je	.LBB37_332
# %bb.331:                              # %if.then215
	movl	$0, 849244(%r13)
.LBB37_332:                             # %if.end216
	cmpl	$0, (%r14)
	je	.LBB37_334
# %bb.333:                              # %if.then220
	movq	16(%rbx), %rcx
	movl	44(%rbx), %eax
	movq	(%rcx,%rax,8), %rcx
	jmp	.LBB37_335
.LBB37_334:                             # %if.else226
	movl	44(%rbx), %eax
	xorl	%ecx, %ecx
.LBB37_335:                             # %if.end228
	movq	%rcx, 4168(%rbx)
	leal	1(%rax), %ecx
	movl	%ecx, 44(%rbx)
	cmpl	$0, 849240(%r13)
	je	.LBB37_337
# %bb.336:                              # %if.then234
	movl	4(%r14), %ecx
	movl	%eax, %eax
	movl	%ecx, 856056(%r13,%rax,4)
.LBB37_337:                             # %if.end240
	movl	344(%r14), %esi
	movq	%rbx, %rdi
	callq	update_ref_list
	movl	344(%r14), %esi
	movq	%rbx, %rdi
	callq	update_ltref_list
	movl	48(%rbx), %eax
	addl	52(%rbx), %eax
	movl	4164(%rbx), %ecx
	cmpl	$2, %ecx
	movl	$1, %edx
	cmovgel	%ecx, %edx
	cmpl	%edx, %eax
	jle	.LBB37_338
# %bb.340:                              # %if.then.i418
	movl	$.L.str.2, %edi
	movl	$500, %esi                      # imm = 0x1F4
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
	jmp	error@PLT                       # TAILCALL
.LBB37_338:                             # %cleanup
	.cfi_def_cfa_offset 96
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
.LBB37_257:                             # %for.cond22.preheader.i
	.cfi_def_cfa_offset 96
	movl	44(%rbx), %eax
	testq	%rax, %rax
	je	.LBB37_274
# %bb.258:                              # %for.body25.lr.ph.i
	movq	16(%rbx), %rcx
	xorl	%edx, %edx
	jmp	.LBB37_259
.LBB37_273:                             # %for.inc43.i
                                        #   in Loop: Header=BB37_259 Depth=1
	incq	%rdx
	cmpq	%rdx, %rax
	je	.LBB37_274
.LBB37_259:                             # %for.body25.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rdi
	cmpl	$0, 4(%rdi)
	je	.LBB37_273
# %bb.260:                              # %land.lhs.true31.i
                                        #   in Loop: Header=BB37_259 Depth=1
	cmpl	$0, 8(%rdi)
	jne	.LBB37_273
# %bb.261:                              # %if.then37.i
	callq	unmark_for_reference
	leaq	344(%r14), %r15
.LBB37_271:                             # %if.end47.sink.split.i
	movl	(%r15), %esi
	movq	%rbx, %rdi
	callq	update_ref_list
.LBB37_274:                             # %sliding_window_memory_management.exit
	movb	$0, 40(%r14)
	jmp	.LBB37_275
.Lfunc_end37:
	.size	store_picture_in_dpb, .Lfunc_end37-store_picture_in_dpb
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI37_0:
	.quad	.LBB37_70
	.quad	.LBB37_72
	.quad	.LBB37_95
	.quad	.LBB37_126
	.quad	.LBB37_194
	.quad	.LBB37_195
	.quad	.LBB37_201
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function insert_picture_in_dpb
	.type	insert_picture_in_dpb,@function
insert_picture_in_dpb:                  # @insert_picture_in_dpb
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
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rdi), %r12
	movl	(%rdx), %eax
	cmpl	$2, %eax
	je	.LBB38_20
# %bb.1:                                # %entry
	cmpl	$1, %eax
	je	.LBB38_7
# %bb.2:                                # %entry
	testl	%eax, %eax
	jne	.LBB38_32
# %bb.3:                                # %sw.bb
	movq	%r15, 48(%r14)
	movl	$3, (%r14)
	cmpl	$0, 44(%r15)
	je	.LBB38_6
# %bb.4:                                # %if.then
	movl	$3, 4(%r14)
	movl	$3, 12(%r14)
	cmpb	$0, 40(%r15)
	je	.LBB38_6
# %bb.5:                                # %if.then3
	movl	$3, 8(%r14)
	movl	36(%r15), %eax
	movl	%eax, 32(%r14)
.LBB38_6:                               # %if.end6
	movl	344(%r15), %eax
	movl	%eax, 72(%r14)
	movl	348(%r15), %eax
	movl	%eax, 80(%r14)
	movl	%eax, 76(%r14)
	movl	352(%r15), %eax
	movl	%eax, 88(%r14)
	movl	%eax, 84(%r14)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	dpb_split_field
	jmp	.LBB38_32
.LBB38_7:                               # %sw.bb15
	movq	%r15, 56(%r14)
	movl	(%r14), %eax
	orl	$1, %eax
	movl	%eax, (%r14)
	movl	344(%r15), %ecx
	movl	%ecx, 72(%r14)
	movl	348(%r15), %ecx
	movl	%ecx, 76(%r14)
	movl	352(%r15), %ecx
	movl	%ecx, 84(%r14)
	cmpl	$0, 44(%r15)
	je	.LBB38_10
# %bb.8:                                # %if.then27
	orb	$1, 4(%r14)
	orb	$1, 12(%r14)
	cmpb	$0, 40(%r15)
	je	.LBB38_10
# %bb.9:                                # %if.then34
	orb	$1, 8(%r14)
	movl	36(%r15), %ecx
	movl	%ecx, 32(%r14)
.LBB38_10:                              # %if.end40
	cmpl	$3, %eax
	je	.LBB38_11
# %bb.12:                               # %if.else
	movl	4(%r15), %eax
	movl	%eax, 40(%r14)
	cmpq	$0, 400(%r15)
	je	.LBB38_16
# %bb.13:                               # %if.then.i
	movq	848736(%rbx), %rax
	movq	(%rax), %rax
	movzbl	256(%rax), %eax
	movb	%al, 392(%r15)
	testb	%al, %al
	jle	.LBB38_16
# %bb.14:                               # %for.body17.i.preheader
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB38_15:                              # %for.body17.i
                                        # =>This Inner Loop Header: Depth=1
	movq	848736(%rbx), %rcx
	movq	(%rcx), %rcx
	movq	264(%rcx), %rcx
	movq	(%rcx,%rax,8), %rcx
	movq	400(%r15), %rdx
	movq	%rcx, (%rdx,%rax,8)
	incq	%rax
	movsbq	392(%r15), %rcx
	cmpq	%rcx, %rax
	jl	.LBB38_15
.LBB38_16:                              # %if.end.i
	cmpq	$0, 408(%r15)
	je	.LBB38_32
# %bb.17:                               # %if.then33.i
	movq	848736(%rbx), %rax
	movq	(%rax), %rax
	movzbl	257(%rax), %eax
	movb	%al, 393(%r15)
	testb	%al, %al
	jle	.LBB38_32
# %bb.18:                               # %for.body46.i.preheader
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB38_19:                              # %for.body46.i
                                        # =>This Inner Loop Header: Depth=1
	movq	848736(%rbx), %rcx
	movq	(%rcx), %rcx
	movq	272(%rcx), %rcx
	movq	(%rcx,%rax,8), %rcx
	movq	408(%r15), %rdx
	movq	%rcx, (%rdx,%rax,8)
	incq	%rax
	movsbq	393(%r15), %rcx
	cmpq	%rcx, %rax
	jl	.LBB38_19
	jmp	.LBB38_32
.LBB38_20:                              # %sw.bb45
	movq	%r15, 64(%r14)
	movl	(%r14), %eax
	orl	$2, %eax
	movl	%eax, (%r14)
	movl	344(%r15), %ecx
	movl	%ecx, 72(%r14)
	movl	348(%r15), %ecx
	movl	%ecx, 80(%r14)
	movl	352(%r15), %ecx
	movl	%ecx, 88(%r14)
	cmpl	$0, 44(%r15)
	je	.LBB38_23
# %bb.21:                               # %if.then58
	orb	$2, 4(%r14)
	orb	$2, 12(%r14)
	cmpb	$0, 40(%r15)
	je	.LBB38_23
# %bb.22:                               # %if.then65
	orb	$2, 8(%r14)
	movl	36(%r15), %ecx
	movl	%ecx, 32(%r14)
.LBB38_23:                              # %if.end71
	cmpl	$3, %eax
	jne	.LBB38_24
.LBB38_11:                              # %if.then42
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	dpb_combine_field
.LBB38_32:                              # %sw.epilog
	movl	28(%r15), %eax
	movl	%eax, 20(%r14)
	movl	24(%r15), %eax
	movl	%eax, 24(%r14)
	movl	48(%r15), %eax
	movl	%eax, 36(%r14)
	cmpl	$3, (%r14)
	jne	.LBB38_35
# %bb.33:                               # %if.then83
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	calculate_frame_no@PLT
	cmpl	$-1, 855988(%rbx)
	je	.LBB38_35
# %bb.34:                               # %land.lhs.true
	cmpl	$0, 784(%r12)
	je	.LBB38_36
.LBB38_35:                              # %if.end90
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
	retq
.LBB38_24:                              # %if.else75
	.cfi_def_cfa_offset 48
	movl	4(%r15), %eax
	movl	%eax, 40(%r14)
	cmpq	$0, 400(%r15)
	je	.LBB38_28
# %bb.25:                               # %if.then.i171
	movq	848736(%rbx), %rax
	movq	(%rax), %rax
	movzbl	256(%rax), %eax
	movb	%al, 392(%r15)
	testb	%al, %al
	jle	.LBB38_28
# %bb.26:                               # %for.body17.i191.preheader
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB38_27:                              # %for.body17.i191
                                        # =>This Inner Loop Header: Depth=1
	movq	848736(%rbx), %rcx
	movq	(%rcx), %rcx
	movq	264(%rcx), %rcx
	movq	(%rcx,%rax,8), %rcx
	movq	400(%r15), %rdx
	movq	%rcx, (%rdx,%rax,8)
	incq	%rax
	movsbq	392(%r15), %rcx
	cmpq	%rcx, %rax
	jl	.LBB38_27
.LBB38_28:                              # %if.end.i176
	cmpq	$0, 408(%r15)
	je	.LBB38_32
# %bb.29:                               # %if.then33.i179
	movq	848736(%rbx), %rax
	movq	(%rax), %rax
	movzbl	257(%rax), %eax
	movb	%al, 393(%r15)
	testb	%al, %al
	jle	.LBB38_32
# %bb.30:                               # %for.body46.i184.preheader
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB38_31:                              # %for.body46.i184
                                        # =>This Inner Loop Header: Depth=1
	movq	848736(%rbx), %rcx
	movq	(%rcx), %rcx
	movq	272(%rcx), %rcx
	movq	(%rcx,%rax,8), %rcx
	movq	408(%r15), %rdx
	movq	%rcx, (%rdx,%rax,8)
	incq	%rax
	movsbq	393(%r15), %rcx
	cmpq	%rcx, %rax
	jl	.LBB38_31
	jmp	.LBB38_32
.LBB38_36:                              # %if.then86
	leaq	855988(%rbx), %rdx
	movq	48(%r14), %rsi
	movq	%rbx, %rdi
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
	jmp	find_snr@PLT                    # TAILCALL
.Lfunc_end38:
	.size	insert_picture_in_dpb, .Lfunc_end38-insert_picture_in_dpb
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function remove_unused_frame_from_dpb
	.type	remove_unused_frame_from_dpb,@function
remove_unused_frame_from_dpb:           # @remove_unused_frame_from_dpb
	.cfi_startproc
# %bb.0:                                # %entry
	movl	44(%rdi), %ecx
	testq	%rcx, %rcx
	je	.LBB39_26
# %bb.1:                                # %for.body.lr.ph
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	movq	16(%rdi), %rdx
	xorl	%esi, %esi
	cmpl	$-1, %eax
	jne	.LBB39_4
	jmp	.LBB39_16
.LBB39_2:                               # %land.lhs.true5
                                        #   in Loop: Header=BB39_4 Depth=1
	cmpl	%eax, 72(%r8)
	je	.LBB39_25
	.p2align	4, 0x90
.LBB39_3:                               # %for.inc
                                        #   in Loop: Header=BB39_4 Depth=1
	incq	%rsi
	cmpq	%rsi, %rcx
	je	.LBB39_28
.LBB39_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdx,%rsi,8), %r8
	cmpl	$0, 36(%r8)
	je	.LBB39_3
# %bb.5:                                # %land.lhs.true
                                        #   in Loop: Header=BB39_4 Depth=1
	cmpl	$0, 4(%r8)
	jne	.LBB39_3
# %bb.6:                                # %if.end.i
                                        #   in Loop: Header=BB39_4 Depth=1
	movl	(%r8), %r9d
	cmpl	$3, %r9d
	jne	.LBB39_8
# %bb.7:                                # %if.then1.i
                                        #   in Loop: Header=BB39_4 Depth=1
	movq	48(%r8), %r10
	cmpl	$0, 44(%r10)
	jne	.LBB39_3
	jmp	.LBB39_9
.LBB39_8:                               # %if.end5.i
                                        #   in Loop: Header=BB39_4 Depth=1
	testb	$1, %r9b
	je	.LBB39_11
.LBB39_9:                               # %if.then8.i
                                        #   in Loop: Header=BB39_4 Depth=1
	movq	56(%r8), %r10
	testq	%r10, %r10
	je	.LBB39_11
# %bb.10:                               # %if.then10.i
                                        #   in Loop: Header=BB39_4 Depth=1
	cmpl	$0, 44(%r10)
	jne	.LBB39_3
.LBB39_11:                              # %if.end17.i
                                        #   in Loop: Header=BB39_4 Depth=1
	testb	$2, %r9b
	je	.LBB39_2
# %bb.12:                               # %if.then21.i
                                        #   in Loop: Header=BB39_4 Depth=1
	movq	64(%r8), %r9
	testq	%r9, %r9
	je	.LBB39_2
# %bb.13:                               # %if.then23.i
                                        #   in Loop: Header=BB39_4 Depth=1
	cmpl	$0, 44(%r9)
	jne	.LBB39_3
	jmp	.LBB39_2
.LBB39_14:                              # %if.then1.i.us
                                        #   in Loop: Header=BB39_16 Depth=1
	movq	48(%rax), %r9
	cmpl	$0, 44(%r9)
	je	.LBB39_20
	.p2align	4, 0x90
.LBB39_15:                              # %for.inc.us
                                        #   in Loop: Header=BB39_16 Depth=1
	incq	%rsi
	cmpq	%rsi, %rcx
	je	.LBB39_28
.LBB39_16:                              # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdx,%rsi,8), %rax
	cmpl	$0, 36(%rax)
	je	.LBB39_15
# %bb.17:                               # %land.lhs.true.us
                                        #   in Loop: Header=BB39_16 Depth=1
	cmpl	$0, 4(%rax)
	jne	.LBB39_15
# %bb.18:                               # %if.end.i.us
                                        #   in Loop: Header=BB39_16 Depth=1
	movl	(%rax), %r8d
	cmpl	$3, %r8d
	je	.LBB39_14
# %bb.19:                               # %if.end5.i.us
                                        #   in Loop: Header=BB39_16 Depth=1
	testb	$1, %r8b
	je	.LBB39_22
.LBB39_20:                              # %if.then8.i.us
                                        #   in Loop: Header=BB39_16 Depth=1
	movq	56(%rax), %r9
	testq	%r9, %r9
	je	.LBB39_22
# %bb.21:                               # %if.then10.i.us
                                        #   in Loop: Header=BB39_16 Depth=1
	cmpl	$0, 44(%r9)
	jne	.LBB39_15
.LBB39_22:                              # %if.end17.i.us
                                        #   in Loop: Header=BB39_16 Depth=1
	testb	$2, %r8b
	je	.LBB39_25
# %bb.23:                               # %if.then21.i.us
                                        #   in Loop: Header=BB39_16 Depth=1
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.LBB39_25
# %bb.24:                               # %if.then23.i.us
                                        #   in Loop: Header=BB39_16 Depth=1
	cmpl	$0, 44(%rax)
	jne	.LBB39_15
.LBB39_25:                              # %if.then
                                        # kill: def $esi killed $esi killed $rsi
	callq	remove_frame_from_dpb
	movl	$1, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB39_28:
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB39_26:
	xorl	%eax, %eax
	retq
.Lfunc_end39:
	.size	remove_unused_frame_from_dpb, .Lfunc_end39-remove_unused_frame_from_dpb
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function output_one_frame_from_dpb
	.type	output_one_frame_from_dpb,@function
output_one_frame_from_dpb:              # @output_one_frame_from_dpb
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
	movl	%esi, %r12d
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	movl	44(%rdi), %ecx
	testl	%ecx, %ecx
	jne	.LBB40_4
# %bb.1:                                # %if.end
	movl	$.L.str.39, %edi
	movl	$150, %esi
	callq	error@PLT
	movl	44(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.LBB40_4
# %bb.2:                                # %if.end.i
	movl	$.L.str.37, %edi
	movl	$150, %esi
	callq	error@PLT
	movl	44(%rbx), %ecx
	testl	%ecx, %ecx
	je	.LBB40_3
.LBB40_4:                               # %for.body.lr.ph.i
	movq	16(%rbx), %rax
	movl	%ecx, %ecx
	cmpl	$-1, %r12d
	je	.LBB40_7
# %bb.5:                                # %for.body.i.preheader
	cmpl	$1, %ecx
	jne	.LBB40_18
# %bb.6:
	movl	$-1, %ebp
	movl	$2147483647, %r15d              # imm = 0x7FFFFFFF
	xorl	%edx, %edx
.LBB40_26:                              # %get_smallest_poc.exit.loopexit93.unr-lcssa
	testb	$1, %cl
	je	.LBB40_31
# %bb.27:                               # %for.body.i.epil
	movq	(%rax,%rdx,8), %rcx
	movl	40(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.LBB40_31
# %bb.28:                               # %land.lhs.true.i.epil
	cmpl	$0, 36(%rcx)
	jne	.LBB40_31
# %bb.29:                               # %land.lhs.true8.i.epil
	cmpl	%r12d, 72(%rcx)
	jmp	.LBB40_30
.LBB40_7:                               # %for.body.us.i.preheader
	cmpl	$1, %ecx
	jne	.LBB40_9
# %bb.8:
	movl	$-1, %ebp
	movl	$2147483647, %r15d              # imm = 0x7FFFFFFF
	xorl	%edx, %edx
.LBB40_15:                              # %get_smallest_poc.exit.loopexit.unr-lcssa
	testb	$1, %cl
	je	.LBB40_31
# %bb.16:                               # %for.body.us.i.epil
	movq	(%rax,%rdx,8), %rcx
	movl	40(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.LBB40_31
# %bb.17:                               # %land.lhs.true.us.i.epil
	cmpl	$0, 36(%rcx)
.LBB40_30:                              # %get_smallest_poc.exit
	cmovel	%eax, %r15d
	cmovel	%edx, %ebp
.LBB40_31:                              # %get_smallest_poc.exit
	cmpl	$-1, %ebp
	je	.LBB40_32
# %bb.34:                               # %if.end7
	cmpl	$0, 849240(%r14)
	je	.LBB40_38
.LBB40_35:                              # %if.then9
	cmpl	$0, 56(%rbx)
	jne	.LBB40_37
# %bb.36:                               # %if.then11
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	write_lost_ref_after_idr@PLT
.LBB40_37:                              # %if.end12
	movl	851888(%r14), %edx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	write_lost_non_ref_pic@PLT
.LBB40_38:                              # %if.end13
	movq	16(%rbx), %rax
	movslq	%ebp, %r12
	movq	(%rax,%r12,8), %rsi
	movl	851888(%r14), %edx
	movq	%r14, %rdi
	callq	write_stored_frame@PLT
	cmpl	$0, 849240(%r14)
	jne	.LBB40_42
# %bb.39:                               # %if.then17
	cmpl	%r15d, 56(%rbx)
	jl	.LBB40_42
# %bb.40:                               # %land.lhs.true
	movq	16(%rbx), %rax
	movq	(%rax,%r12,8), %rax
	movl	72(%rax), %eax
	cmpl	60(%rbx), %eax
	jne	.LBB40_42
# %bb.41:                               # %if.then24
	movl	$.L.str.41, %edi
	movl	$150, %esi
	callq	error@PLT
.LBB40_42:                              # %if.end26
	movl	%r15d, 56(%rbx)
	movq	16(%rbx), %rax
	movq	(%rax,%r12,8), %rcx
	movl	72(%rcx), %ecx
	movl	%ecx, 60(%rbx)
	movq	(%rax,%r12,8), %rcx
	movl	$1, %eax
	cmpl	$0, 4(%rcx)
	jne	.LBB40_52
# %bb.43:                               # %if.end.i60
	movl	(%rcx), %edx
	cmpl	$3, %edx
	jne	.LBB40_45
# %bb.44:                               # %if.then1.i
	movq	48(%rcx), %rsi
	cmpl	$0, 44(%rsi)
	jne	.LBB40_52
	jmp	.LBB40_46
.LBB40_18:                              # %for.body.i.preheader.new
	movl	%ecx, %esi
	andl	$-2, %esi
	movl	$-1, %ebp
	movl	$2147483647, %r15d              # imm = 0x7FFFFFFF
	xorl	%edx, %edx
	jmp	.LBB40_19
	.p2align	4, 0x90
.LBB40_25:                              # %for.inc.i.1
                                        #   in Loop: Header=BB40_19 Depth=1
	addq	$2, %rdx
	cmpq	%rdx, %rsi
	je	.LBB40_26
.LBB40_19:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax,%rdx,8), %r8
	movl	40(%r8), %edi
	cmpl	%edi, %r15d
	jle	.LBB40_22
# %bb.20:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB40_19 Depth=1
	cmpl	$0, 36(%r8)
	je	.LBB40_21
.LBB40_22:                              # %for.inc.i
                                        #   in Loop: Header=BB40_19 Depth=1
	movq	8(%rax,%rdx,8), %r8
	movl	40(%r8), %edi
	cmpl	%edi, %r15d
	jle	.LBB40_25
.LBB40_23:                              # %land.lhs.true.i.1
                                        #   in Loop: Header=BB40_19 Depth=1
	cmpl	$0, 36(%r8)
	jne	.LBB40_25
# %bb.24:                               # %land.lhs.true8.i.1
                                        #   in Loop: Header=BB40_19 Depth=1
	leal	1(%rdx), %r9d
	cmpl	%r12d, 72(%r8)
	cmovel	%edi, %r15d
	cmovel	%r9d, %ebp
	jmp	.LBB40_25
.LBB40_21:                              # %land.lhs.true8.i
                                        #   in Loop: Header=BB40_19 Depth=1
	cmpl	%r12d, 72(%r8)
	cmovel	%edi, %r15d
	cmovel	%edx, %ebp
	movq	8(%rax,%rdx,8), %r8
	movl	40(%r8), %edi
	cmpl	%edi, %r15d
	jle	.LBB40_25
	jmp	.LBB40_23
.LBB40_9:                               # %for.body.us.i.preheader.new
	movl	%ecx, %esi
	andl	$-2, %esi
	movl	$-1, %ebp
	movl	$2147483647, %r15d              # imm = 0x7FFFFFFF
	xorl	%edx, %edx
	jmp	.LBB40_10
	.p2align	4, 0x90
.LBB40_14:                              # %for.inc.us.i.1
                                        #   in Loop: Header=BB40_10 Depth=1
	addq	$2, %rdx
	cmpq	%rdx, %rsi
	je	.LBB40_15
.LBB40_10:                              # %for.body.us.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax,%rdx,8), %r8
	movl	40(%r8), %edi
	cmpl	%edi, %r15d
	jg	.LBB40_11
# %bb.12:                               # %for.inc.us.i
                                        #   in Loop: Header=BB40_10 Depth=1
	movq	8(%rax,%rdx,8), %r8
	movl	40(%r8), %edi
	cmpl	%edi, %r15d
	jle	.LBB40_14
	jmp	.LBB40_13
	.p2align	4, 0x90
.LBB40_11:                              # %land.lhs.true.us.i
                                        #   in Loop: Header=BB40_10 Depth=1
	cmpl	$0, 36(%r8)
	cmovel	%edi, %r15d
	cmovel	%edx, %ebp
	movq	8(%rax,%rdx,8), %r8
	movl	40(%r8), %edi
	cmpl	%edi, %r15d
	jle	.LBB40_14
.LBB40_13:                              # %land.lhs.true.us.i.1
                                        #   in Loop: Header=BB40_10 Depth=1
	leal	1(%rdx), %r9d
	cmpl	$0, 36(%r8)
	cmovel	%edi, %r15d
	cmovel	%r9d, %ebp
	jmp	.LBB40_14
.LBB40_45:                              # %if.end5.i
	testb	$1, %dl
	je	.LBB40_48
.LBB40_46:                              # %if.then8.i
	movq	56(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB40_48
# %bb.47:                               # %if.then10.i
	cmpl	$0, 44(%rsi)
	jne	.LBB40_52
.LBB40_48:                              # %if.end17.i
	testb	$2, %dl
	je	.LBB40_51
# %bb.49:                               # %if.then21.i
	movq	64(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB40_51
# %bb.50:                               # %if.then23.i
	cmpl	$0, 44(%rcx)
	jne	.LBB40_52
.LBB40_51:                              # %if.then36
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	remove_frame_from_dpb
	movl	$1, %eax
	jmp	.LBB40_52
.LBB40_3:
	movl	$2147483647, %r15d              # imm = 0x7FFFFFFF
.LBB40_32:                              # %if.then3
	xorl	%eax, %eax
	cmpl	$-1, %r12d
	je	.LBB40_33
.LBB40_52:                              # %cleanup
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
.LBB40_33:                              # %if.then5
	.cfi_def_cfa_offset 48
	movl	$.L.str.40, %edi
	movl	$150, %esi
	callq	error@PLT
	movl	$-1, %ebp
	cmpl	$0, 849240(%r14)
	jne	.LBB40_35
	jmp	.LBB40_38
.Lfunc_end40:
	.size	output_one_frame_from_dpb, .Lfunc_end40-output_one_frame_from_dpb
	.cfi_endproc
                                        # -- End function
	.globl	flush_dpb                       # -- Begin function flush_dpb
	.p2align	4, 0x90
	.type	flush_dpb,@function
flush_dpb:                              # @flush_dpb
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
	movq	(%rdi), %rax
	cmpl	$0, 849240(%rax)
	je	.LBB41_2
# %bb.1:                                # %if.then
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	conceal_non_ref_pics@PLT
.LBB41_2:                               # %if.end
	movl	44(%rbx), %eax
	testl	%eax, %eax
	je	.LBB41_8
# %bb.3:                                # %for.body.lr.ph
	xorl	%r14d, %r14d
	cmpl	$-1, %ebp
	jne	.LBB41_4
	.p2align	4, 0x90
.LBB41_7:                               # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rbx), %rax
	movq	(%rax,%r14,8), %rdi
	callq	unmark_for_reference
	incq	%r14
	movl	44(%rbx), %eax
	cmpq	%rax, %r14
	jb	.LBB41_7
	.p2align	4, 0x90
.LBB41_8:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	remove_unused_frame_from_dpb
	testl	%eax, %eax
	jne	.LBB41_8
	jmp	.LBB41_9
	.p2align	4, 0x90
.LBB41_10:                              # %land.rhs
                                        #   in Loop: Header=BB41_9 Depth=1
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	output_one_frame_from_dpb
	testl	%eax, %eax
	je	.LBB41_11
.LBB41_9:                               # %while.cond10
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 44(%rbx)
	jne	.LBB41_10
.LBB41_11:                              # %while.end16
	movl	$-2147483648, 56(%rbx)          # imm = 0x80000000
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
	.p2align	4, 0x90
.LBB41_6:                               # %for.inc
                                        #   in Loop: Header=BB41_4 Depth=1
	.cfi_def_cfa_offset 32
	incq	%r14
	movl	%eax, %ecx
	cmpq	%rcx, %r14
	jae	.LBB41_8
.LBB41_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rbx), %rcx
	movq	(%rcx,%r14,8), %rdi
	cmpl	%ebp, 72(%rdi)
	jne	.LBB41_6
# %bb.5:                                # %if.then5
                                        #   in Loop: Header=BB41_4 Depth=1
	callq	unmark_for_reference
	movl	44(%rbx), %eax
	jmp	.LBB41_6
.Lfunc_end41:
	.size	flush_dpb, .Lfunc_end41-flush_dpb
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function unmark_for_reference
	.type	unmark_for_reference,@function
unmark_for_reference:                   # @unmark_for_reference
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
	movl	(%rdi), %eax
	testb	$1, %al
	je	.LBB42_3
# %bb.1:                                # %if.then
	movq	56(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB42_3
# %bb.2:                                # %if.then2
	movl	$0, 44(%rcx)
	movl	(%rbx), %eax
.LBB42_3:                               # %if.end4
	testb	$2, %al
	je	.LBB42_6
# %bb.4:                                # %if.then8
	movq	64(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB42_6
# %bb.5:                                # %if.then10
	movl	$0, 44(%rcx)
	movl	(%rbx), %eax
.LBB42_6:                               # %if.end14
	cmpl	$3, %eax
	jne	.LBB42_11
# %bb.7:                                # %if.then16
	movq	56(%rbx), %rax
	testq	%rax, %rax
	je	.LBB42_10
# %bb.8:                                # %land.lhs.true
	cmpq	$0, 64(%rbx)
	je	.LBB42_10
# %bb.9:                                # %if.then21
	movl	$0, 44(%rax)
	movq	64(%rbx), %rax
	movl	$0, 44(%rax)
.LBB42_10:                              # %if.end26
	movq	48(%rbx), %rax
	movl	$0, 44(%rax)
.LBB42_11:                              # %if.end28
	movl	$0, 4(%rbx)
	movq	48(%rbx), %r14
	testq	%r14, %r14
	je	.LBB42_14
# %bb.12:                               # %if.then31
	movq	184(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB42_14
# %bb.13:                               # %if.then.i
	callq	free@PLT
	movq	$0, 184(%r14)
.LBB42_14:                              # %if.end33
	movq	56(%rbx), %r14
	testq	%r14, %r14
	je	.LBB42_17
# %bb.15:                               # %if.then36
	movq	184(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB42_17
# %bb.16:                               # %if.then.i70
	callq	free@PLT
	movq	$0, 184(%r14)
.LBB42_17:                              # %if.end39
	movq	64(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB42_20
# %bb.18:                               # %if.then42
	movq	184(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB42_20
# %bb.19:                               # %if.then.i73
	callq	free@PLT
	movq	$0, 184(%rbx)
.LBB42_20:                              # %if.end45
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end42:
	.size	unmark_for_reference, .Lfunc_end42-unmark_for_reference
	.cfi_endproc
                                        # -- End function
	.globl	dpb_split_field                 # -- Begin function dpb_split_field
	.p2align	4, 0x90
	.type	dpb_split_field,@function
dpb_split_field:                        # @dpb_split_field
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
	movq	48(%rsi), %r13
	movl	4(%r13), %eax
	movl	64(%r13), %ecx
	movl	%ecx, 12(%rsp)                  # 4-byte Spill
	movl	%eax, 40(%rsi)
	cmpl	$0, 272(%r13)
	je	.LBB43_1
# %bb.17:                               # %if.else
	xorps	%xmm0, %xmm0
	movups	%xmm0, 224(%r13)
	movq	%r13, 240(%r13)
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	jmp	.LBB43_18
.LBB43_1:                               # %if.then
	movq	%rsi, %r12
	movl	64(%r13), %edx
	movl	68(%r13), %ecx
	movl	72(%r13), %r8d
	movl	76(%r13), %r9d
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	alloc_storable_picture
	movq	%rax, %r14
	movq	%rax, 56(%r12)
	movl	64(%r13), %edx
	movl	68(%r13), %ecx
	movl	72(%r13), %r8d
	movl	76(%r13), %r9d
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	alloc_storable_picture
	movq	%rax, %r15
	movq	%r12, 16(%rsp)                  # 8-byte Spill
	movq	%rax, 64(%r12)
	movl	68(%r13), %ecx
	cmpl	$2, %ecx
	jl	.LBB43_4
# %bb.2:                                # %for.body.lr.ph
	xorl	%r12d, %r12d
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB43_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	128(%r14), %rax
	movq	(%rax,%rbp,8), %rdi
	movq	128(%r13), %rax
	movq	(%rax,%r12), %rsi
	movslq	64(%r13), %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	incq	%rbp
	movl	68(%r13), %ecx
	movl	%ecx, %eax
	sarl	%eax
	cltq
	addq	$16, %r12
	cmpq	%rax, %rbp
	jl	.LBB43_3
.LBB43_4:                               # %for.cond18.preheader
	movl	76(%r13), %eax
	cmpl	$2, %eax
	jge	.LBB43_5
# %bb.8:                                # %for.cond50.preheader
	cmpl	$2, %ecx
	jge	.LBB43_9
.LBB43_12:                              # %for.cond69.preheader
	cmpl	$2, %eax
	jge	.LBB43_13
	jmp	.LBB43_15
.LBB43_5:                               # %for.body23.lr.ph
	xorl	%ebp, %ebp
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB43_6:                               # %for.body23
                                        # =>This Inner Loop Header: Depth=1
	movq	136(%r14), %rax
	movq	(%rax), %rax
	movq	(%rax,%r12,8), %rdi
	movq	136(%r13), %rax
	movq	(%rax), %rax
	movq	(%rax,%rbp), %rsi
	movslq	72(%r13), %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	movq	136(%r14), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r12,8), %rdi
	movq	136(%r13), %rax
	movq	8(%rax), %rax
	movq	(%rax,%rbp), %rsi
	movslq	72(%r13), %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	incq	%r12
	movl	76(%r13), %eax
	movl	%eax, %ecx
	sarl	%ecx
	movslq	%ecx, %rcx
	addq	$16, %rbp
	cmpq	%rcx, %r12
	jl	.LBB43_6
# %bb.7:                                # %for.cond50.preheader.loopexit
	movl	68(%r13), %ecx
	cmpl	$2, %ecx
	jl	.LBB43_12
.LBB43_9:                               # %for.body55.lr.ph
	movl	$8, %r12d
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB43_10:                              # %for.body55
                                        # =>This Inner Loop Header: Depth=1
	movq	128(%r15), %rax
	movq	(%rax,%rbp,8), %rdi
	movq	128(%r13), %rax
	movq	(%rax,%r12), %rsi
	movslq	64(%r13), %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	incq	%rbp
	movl	68(%r13), %eax
	sarl	%eax
	cltq
	addq	$16, %r12
	cmpq	%rax, %rbp
	jl	.LBB43_10
# %bb.11:                               # %for.cond69.preheader.loopexit
	movl	76(%r13), %eax
	cmpl	$2, %eax
	jl	.LBB43_15
.LBB43_13:                              # %for.body74.lr.ph
	movl	$1, %ebp
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB43_14:                              # %for.body74
                                        # =>This Inner Loop Header: Depth=1
	movq	136(%r15), %rax
	movq	(%rax), %rax
	movq	(%rax,%r12,8), %rdi
	movq	136(%r13), %rax
	movq	(%rax), %rax
	movq	(%rax,%rbp,8), %rsi
	movslq	72(%r13), %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	movq	136(%r15), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r12,8), %rdi
	movq	136(%r13), %rax
	movq	8(%rax), %rax
	movq	(%rax,%rbp,8), %rsi
	movslq	72(%r13), %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	incq	%r12
	movl	76(%r13), %eax
	sarl	%eax
	cltq
	addq	$2, %rbp
	cmpq	%rax, %r12
	jl	.LBB43_14
.LBB43_15:                              # %for.end103
	movl	8(%r13), %eax
	movl	%eax, 4(%r14)
	movl	12(%r13), %eax
	movl	%eax, 4(%r15)
	movl	344(%r13), %eax
	movl	%eax, 344(%r14)
	movl	%eax, 344(%r15)
	movl	16(%r13), %eax
	movl	%eax, 16(%r14)
	movl	12(%r13), %eax
	movl	%eax, 12(%r15)
	movl	%eax, 12(%r14)
	movl	8(%r13), %eax
	movl	%eax, 8(%r15)
	movl	%eax, 8(%r14)
	movl	16(%r13), %eax
	movl	%eax, 16(%r15)
	movl	44(%r13), %eax
	movl	%eax, 44(%r15)
	movl	%eax, 44(%r14)
	movzbl	40(%r13), %eax
	movb	%al, 40(%r15)
	movb	%al, 40(%r14)
	movl	36(%r13), %eax
	movl	%eax, 36(%r15)
	movl	%eax, 36(%r14)
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movl	%eax, 32(%rcx)
	movl	$1, 96(%r15)
	movl	$1, 96(%r14)
	movl	100(%r13), %eax
	movl	%eax, 100(%r15)
	movl	%eax, 100(%r14)
	movq	%r14, 224(%r13)
	movq	%r15, 232(%r13)
	movq	%r13, 240(%r13)
	movq	%r15, 232(%r14)
	movq	%r13, 240(%r14)
	movq	%r14, 224(%r14)
	movq	%r14, 224(%r15)
	movq	%r13, 240(%r15)
	movq	%r15, 232(%r15)
	movl	72(%rcx), %eax
	movl	%eax, 344(%r15)
	movl	%eax, 344(%r14)
	movl	76(%rcx), %eax
	movl	%eax, 348(%r14)
	movl	80(%rcx), %eax
	movl	%eax, 348(%r15)
	movl	268(%r13), %eax
	movl	%eax, 268(%r15)
	movl	%eax, 268(%r14)
	movl	388(%r13), %eax
	movl	%eax, 388(%r15)
	movl	%eax, 388(%r14)
	cmpl	$0, 44(%r13)
	je	.LBB43_18
# %bb.16:                               # %if.then151
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	pad_dec_picture@PLT
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	pad_dec_picture@PLT
.LBB43_18:                              # %if.end155
	cmpl	$0, 272(%r13)
	je	.LBB43_19
.LBB43_57:                              # %if.end702
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
.LBB43_19:                              # %if.then158
	.cfi_def_cfa_offset 80
	movl	12(%rsp), %eax                  # 4-byte Reload
	sarl	$3, %eax
	andl	$-2, %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	cmpl	$0, 100(%r13)
	je	.LBB43_20
# %bb.21:                               # %if.then161
	movl	68(%r13), %ecx
	cmpl	$8, %ecx
	jl	.LBB43_57
# %bb.22:                               # %for.body167.lr.ph
	movl	64(%r13), %r10d
	xorl	%eax, %eax
	jmp	.LBB43_23
	.p2align	4, 0x90
.LBB43_40:                              # %for.inc464.loopexit
                                        #   in Loop: Header=BB43_23 Depth=1
	movl	68(%r13), %ecx
.LBB43_41:                              # %for.inc464
                                        #   in Loop: Header=BB43_23 Depth=1
	incq	%rax
	movl	%ecx, %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	cmpq	%rdx, %rax
	jge	.LBB43_42
.LBB43_23:                              # %for.body167
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB43_25 Depth 2
	cmpl	$4, %r10d
	jl	.LBB43_41
# %bb.24:                               # %for.body178.lr.ph
                                        #   in Loop: Header=BB43_23 Depth=1
	movl	%eax, %ecx
	shrl	%ecx
	movl	%eax, %esi
	andl	$1073741820, %esi               # imm = 0x3FFFFFFC
	movl	%eax, %edi
	andl	$3, %edi
	leal	(%rdi,%rsi,2), %edx
	leal	(%rdi,%rsi,2), %esi
	addl	$4, %esi
	movl	%eax, %edi
	shrl	$2, %edi
	imull	12(%rsp), %edi                  # 4-byte Folded Reload
	andl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	jmp	.LBB43_25
	.p2align	4, 0x90
.LBB43_37:                              # %if.then429
                                        #   in Loop: Header=BB43_25 Depth=2
	movq	848736(%rbx), %r12
	movq	(%r12), %r12
	movq	288(%r12), %r12
	movq	(%r12,%r11,8), %r11
.LBB43_38:                              # %for.inc461.sink.split
                                        #   in Loop: Header=BB43_25 Depth=2
	movq	%r11, 8(%r10,%r8)
.LBB43_39:                              # %for.inc461
                                        #   in Loop: Header=BB43_25 Depth=2
	incq	%r9
	movl	64(%r13), %r10d
	movl	%r10d, %r11d
	sarl	$2, %r11d
	movslq	%r11d, %r11
	addq	$32, %r8
	cmpq	%r11, %r9
	jge	.LBB43_40
.LBB43_25:                              # %for.body178
                                        #   Parent Loop BB43_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r9d, %r10d
	shrl	%r10d
	andl	$1073741822, %r10d              # imm = 0x3FFFFFFE
	addl	%edi, %r10d
	orl	%ecx, %r10d
	movq	184(%r13), %r11
	movslq	%r10d, %r10
	cmpb	$0, (%r11,%r10)
	je	.LBB43_39
# %bb.26:                               # %if.then189
                                        #   in Loop: Header=BB43_25 Depth=2
	movq	152(%r15), %r10
	movq	(%r10,%rax,8), %r10
	movq	152(%r13), %r11
	movq	(%r11,%rsi,8), %r11
	movl	16(%r11,%r8), %r11d
	movl	%r11d, 16(%r10,%r8)
	movq	152(%r15), %r10
	movq	(%r10,%rax,8), %r10
	movq	152(%r13), %r11
	movq	(%r11,%rsi,8), %r11
	movl	20(%r11,%r8), %r11d
	movl	%r11d, 20(%r10,%r8)
	movq	152(%r13), %r10
	movq	(%r10,%rsi,8), %r10
	movzbl	24(%r10,%r8), %r10d
	movq	152(%r15), %r11
	movq	(%r11,%rax,8), %r11
	movb	%r10b, 24(%r11,%r8)
	movq	152(%r15), %r10
	movq	(%r10,%rax,8), %r10
	movsbq	24(%r10,%r8), %r11
	testq	%r11, %r11
	js	.LBB43_27
# %bb.28:                               # %if.then239
                                        #   in Loop: Header=BB43_25 Depth=2
	movq	848736(%rbx), %r12
	movq	(%r12), %r12
	movq	296(%r12), %r12
	movq	(%r12,%r11,8), %r11
	jmp	.LBB43_29
	.p2align	4, 0x90
.LBB43_27:                              #   in Loop: Header=BB43_25 Depth=2
	xorl	%r11d, %r11d
.LBB43_29:                              # %if.end266
                                        #   in Loop: Header=BB43_25 Depth=2
	movq	%r11, (%r10,%r8)
	movq	152(%r13), %r10
	movq	(%r10,%rsi,8), %r10
	movzbl	25(%r10,%r8), %r10d
	movq	152(%r15), %r11
	movq	(%r11,%rax,8), %r11
	movb	%r10b, 25(%r11,%r8)
	movq	152(%r15), %r10
	movq	(%r10,%rax,8), %r10
	movsbq	25(%r10,%r8), %r11
	testq	%r11, %r11
	js	.LBB43_30
# %bb.31:                               # %if.then291
                                        #   in Loop: Header=BB43_25 Depth=2
	movq	848736(%rbx), %r12
	movq	(%r12), %r12
	movq	304(%r12), %r12
	movq	(%r12,%r11,8), %r11
	jmp	.LBB43_32
	.p2align	4, 0x90
.LBB43_30:                              #   in Loop: Header=BB43_25 Depth=2
	xorl	%r11d, %r11d
.LBB43_32:                              # %if.end321
                                        #   in Loop: Header=BB43_25 Depth=2
	movq	%r11, 8(%r10,%r8)
	movq	152(%r14), %r10
	movq	(%r10,%rax,8), %r10
	movq	152(%r13), %r11
	movq	(%r11,%rdx,8), %r11
	movl	16(%r11,%r8), %r11d
	movl	%r11d, 16(%r10,%r8)
	movq	152(%r14), %r10
	movq	(%r10,%rax,8), %r10
	movq	152(%r13), %r11
	movq	(%r11,%rdx,8), %r11
	movl	20(%r11,%r8), %r11d
	movl	%r11d, 20(%r10,%r8)
	movq	152(%r13), %r10
	movq	(%r10,%rdx,8), %r10
	movzbl	24(%r10,%r8), %r10d
	movq	152(%r14), %r11
	movq	(%r11,%rax,8), %r11
	movb	%r10b, 24(%r11,%r8)
	movq	152(%r14), %r10
	movq	(%r10,%rax,8), %r10
	movsbq	24(%r10,%r8), %r11
	testq	%r11, %r11
	js	.LBB43_33
# %bb.34:                               # %if.then374
                                        #   in Loop: Header=BB43_25 Depth=2
	movq	848736(%rbx), %r12
	movq	(%r12), %r12
	movq	280(%r12), %r12
	movq	(%r12,%r11,8), %r11
	jmp	.LBB43_35
	.p2align	4, 0x90
.LBB43_33:                              #   in Loop: Header=BB43_25 Depth=2
	xorl	%r11d, %r11d
.LBB43_35:                              # %if.end404
                                        #   in Loop: Header=BB43_25 Depth=2
	movq	%r11, (%r10,%r8)
	movq	152(%r13), %r10
	movq	(%r10,%rdx,8), %r10
	movzbl	25(%r10,%r8), %r10d
	movq	152(%r14), %r11
	movq	(%r11,%rax,8), %r11
	movb	%r10b, 25(%r11,%r8)
	movq	152(%r14), %r10
	movq	(%r10,%rax,8), %r10
	movsbq	25(%r10,%r8), %r11
	testq	%r11, %r11
	jns	.LBB43_37
# %bb.36:                               #   in Loop: Header=BB43_25 Depth=2
	xorl	%r11d, %r11d
	jmp	.LBB43_38
.LBB43_20:                              # %if.then158.if.end467_crit_edge
	movl	68(%r13), %ecx
.LBB43_42:                              # %if.end467
	cmpl	$8, %ecx
	jl	.LBB43_57
# %bb.43:                               # %for.body473.lr.ph
	movl	64(%r13), %r9d
	xorl	%eax, %eax
	jmp	.LBB43_44
	.p2align	4, 0x90
.LBB43_55:                              # %for.inc698.loopexit
                                        #   in Loop: Header=BB43_44 Depth=1
	movl	68(%r13), %ecx
.LBB43_56:                              # %for.inc698
                                        #   in Loop: Header=BB43_44 Depth=1
	incq	%rax
	movl	%ecx, %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	cmpq	%rdx, %rax
	jge	.LBB43_57
.LBB43_44:                              # %for.body473
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB43_46 Depth 2
	cmpl	$4, %r9d
	jl	.LBB43_56
# %bb.45:                               # %for.body482.lr.ph
                                        #   in Loop: Header=BB43_44 Depth=1
	movl	%eax, %ecx
	shrl	%ecx
	andl	$1, %ecx
	movl	%eax, %edx
	andl	$2147483646, %edx               # imm = 0x7FFFFFFE
	orl	%ecx, %edx
	addl	%edx, %edx
	movl	%eax, %esi
	shrl	$2, %esi
	imull	12(%rsp), %esi                  # 4-byte Folded Reload
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	jmp	.LBB43_46
	.p2align	4, 0x90
.LBB43_53:                              # %if.else642
                                        #   in Loop: Header=BB43_46 Depth=2
	movb	%r10b, 25(%r11,%rdi)
	movq	152(%r14), %r11
	movq	(%r11,%rax,8), %r11
	movb	%r10b, 25(%r11,%rdi)
	movq	848736(%rbx), %r10
	movq	(%r10), %r10
	movq	272(%r10), %r10
	movq	152(%r13), %r11
	movq	(%r11,%rdx,8), %r11
	movsbq	25(%r11,%r9), %r9
	movq	(%r10,%r9,8), %r9
	movq	152(%r15), %r10
	movq	(%r10,%rax,8), %r10
	movq	%r9, 8(%r10,%rdi)
	movq	152(%r14), %r10
	movq	(%r10,%rax,8), %r10
	movq	%r9, 8(%r10,%rdi)
.LBB43_54:                              # %for.inc695
                                        #   in Loop: Header=BB43_46 Depth=2
	incq	%r8
	movl	64(%r13), %r9d
	movl	%r9d, %r10d
	sarl	$2, %r10d
	movslq	%r10d, %r10
	addq	$32, %rdi
	cmpq	%r10, %r8
	jge	.LBB43_55
.LBB43_46:                              # %for.body482
                                        #   Parent Loop BB43_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r8d, %r9d
	shrl	%r9d
	cmpl	$0, 100(%r13)
	je	.LBB43_48
# %bb.47:                               # %lor.lhs.false
                                        #   in Loop: Header=BB43_46 Depth=2
	movl	%r9d, %r10d
	andl	$1073741822, %r10d              # imm = 0x3FFFFFFE
	addl	%esi, %r10d
	orl	%ecx, %r10d
	movq	184(%r13), %r11
	movslq	%r10d, %r10
	cmpb	$0, (%r11,%r10)
	jne	.LBB43_54
.LBB43_48:                              # %if.then498
                                        #   in Loop: Header=BB43_46 Depth=2
	movl	%r8d, %r10d
	andl	$2147483646, %r10d              # imm = 0x7FFFFFFE
	andl	$1, %r9d
	orl	%r10d, %r9d
	movq	152(%r14), %r10
	movq	(%r10,%rax,8), %r10
	movq	152(%r15), %r11
	movq	(%r11,%rax,8), %r11
	movq	152(%r13), %r12
	movq	(%r12,%rdx,8), %r12
	movl	%r9d, %r9d
	shlq	$5, %r9
	movl	16(%r12,%r9), %ebp
	movl	%ebp, 16(%r11,%rdi)
	movl	%ebp, 16(%r10,%rdi)
	movq	152(%r14), %r10
	movq	(%r10,%rax,8), %r10
	movq	152(%r15), %r11
	movq	(%r11,%rax,8), %r11
	movq	152(%r13), %r12
	movq	(%r12,%rdx,8), %r12
	movl	20(%r12,%r9), %ebp
	movl	%ebp, 20(%r11,%rdi)
	movl	%ebp, 20(%r10,%rdi)
	movq	152(%r13), %r10
	movq	(%r10,%rdx,8), %r10
	movzbl	24(%r10,%r9), %r10d
	movq	152(%r15), %r11
	movq	(%r11,%rax,8), %r11
	cmpb	$-1, %r10b
	je	.LBB43_49
# %bb.50:                               # %if.else566
                                        #   in Loop: Header=BB43_46 Depth=2
	movb	%r10b, 24(%r11,%rdi)
	movq	152(%r14), %r11
	movq	(%r11,%rax,8), %r11
	movb	%r10b, 24(%r11,%rdi)
	movq	848736(%rbx), %r10
	movq	(%r10), %r10
	movq	264(%r10), %r10
	movq	152(%r13), %r11
	movq	(%r11,%rdx,8), %r11
	movsbq	24(%r11,%r9), %r11
	movq	(%r10,%r11,8), %r10
	movq	152(%r15), %r11
	movq	(%r11,%rax,8), %r11
	movq	%r10, (%r11,%rdi)
	movq	152(%r14), %r11
	movq	(%r11,%rax,8), %r11
	movq	%r10, (%r11,%rdi)
	jmp	.LBB43_51
	.p2align	4, 0x90
.LBB43_49:                              # %if.then551
                                        #   in Loop: Header=BB43_46 Depth=2
	movb	$-1, 24(%r11,%rdi)
	movq	152(%r14), %r10
	movq	(%r10,%rax,8), %r10
	movb	$-1, 24(%r10,%rdi)
.LBB43_51:                              # %if.end616
                                        #   in Loop: Header=BB43_46 Depth=2
	movq	152(%r13), %r10
	movq	(%r10,%rdx,8), %r10
	movzbl	25(%r10,%r9), %r10d
	movq	152(%r15), %r11
	movq	(%r11,%rax,8), %r11
	cmpb	$-1, %r10b
	jne	.LBB43_53
# %bb.52:                               # %if.then627
                                        #   in Loop: Header=BB43_46 Depth=2
	movb	$-1, 25(%r11,%rdi)
	movq	152(%r14), %r9
	movq	(%r9,%rax,8), %r9
	movb	$-1, 25(%r9,%rdi)
	jmp	.LBB43_54
.Lfunc_end43:
	.size	dpb_split_field, .Lfunc_end43-dpb_split_field
	.cfi_endproc
                                        # -- End function
	.globl	dpb_combine_field_yuv           # -- Begin function dpb_combine_field_yuv
	.p2align	4, 0x90
	.type	dpb_combine_field_yuv,@function
dpb_combine_field_yuv:                  # @dpb_combine_field_yuv
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpq	$0, 48(%rsi)
	jne	.LBB44_2
# %bb.1:                                # %if.then
	movq	56(%r14), %rax
	movl	64(%rax), %edx
	movl	68(%rax), %ecx
	addl	%ecx, %ecx
	movl	72(%rax), %r8d
	movl	76(%rax), %r9d
	addl	%r9d, %r9d
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	alloc_storable_picture
	movq	%rax, 48(%r14)
.LBB44_2:                               # %if.end
	movq	56(%r14), %rax
	cmpl	$0, 68(%rax)
	jle	.LBB44_5
# %bb.3:                                # %for.body.lr.ph
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB44_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	48(%r14), %rcx
	movq	128(%rcx), %rcx
	movq	(%rcx,%r15), %rdi
	movq	128(%rax), %rcx
	movq	(%rcx,%r12,8), %rsi
	movslq	64(%rax), %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	movq	48(%r14), %rax
	movq	64(%r14), %rcx
	movq	128(%rax), %rax
	movq	8(%rax,%r15), %rdi
	movq	128(%rcx), %rax
	movq	(%rax,%r12,8), %rsi
	movslq	64(%rcx), %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	incq	%r12
	movq	56(%r14), %rax
	movslq	68(%rax), %rcx
	addq	$16, %r15
	cmpq	%rcx, %r12
	jl	.LBB44_4
.LBB44_5:                               # %for.cond29.preheader
	cmpl	$0, 76(%rax)
	jle	.LBB44_11
# %bb.6:                                # %for.body38.preheader
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB44_7:                               # %for.body38
                                        # =>This Inner Loop Header: Depth=1
	movq	48(%r14), %rcx
	movq	136(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%r15), %rdi
	movq	136(%rax), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%r12,8), %rsi
	movslq	72(%rax), %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	movq	48(%r14), %rax
	movq	64(%r14), %rcx
	movq	136(%rax), %rax
	movq	(%rax), %rax
	movq	8(%rax,%r15), %rdi
	movq	136(%rcx), %rax
	movq	(%rax), %rax
	movq	(%rax,%r12,8), %rsi
	movslq	72(%rcx), %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	incq	%r12
	movq	56(%r14), %rax
	movslq	76(%rax), %rcx
	addq	$16, %r15
	cmpq	%rcx, %r12
	jl	.LBB44_7
# %bb.8:                                # %for.inc76
	testl	%ecx, %ecx
	jle	.LBB44_11
# %bb.9:                                # %for.body38.1.preheader
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB44_10:                              # %for.body38.1
                                        # =>This Inner Loop Header: Depth=1
	movq	48(%r14), %rcx
	movq	136(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%r15), %rdi
	movq	136(%rax), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%r12,8), %rsi
	movslq	72(%rax), %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	movq	48(%r14), %rax
	movq	64(%r14), %rcx
	movq	136(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax,%r15), %rdi
	movq	136(%rcx), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r12,8), %rsi
	movslq	72(%rcx), %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	incq	%r12
	movq	56(%r14), %rax
	movslq	76(%rax), %rcx
	addq	$16, %r15
	cmpq	%rcx, %r12
	jl	.LBB44_10
.LBB44_11:                              # %for.end78
	movl	4(%rax), %eax
	movq	48(%r14), %rcx
	movq	64(%r14), %rdx
	movl	4(%rdx), %edx
	cmpl	%edx, %eax
	cmovll	%eax, %edx
	movl	%edx, 16(%rcx)
	movq	48(%r14), %rax
	movl	%edx, 4(%rax)
	movl	%edx, 40(%r14)
	movq	48(%r14), %rax
	movq	56(%r14), %rcx
	movl	4(%rax), %eax
	movl	%eax, 16(%rcx)
	movq	64(%r14), %rcx
	movl	%eax, 16(%rcx)
	movq	48(%r14), %rax
	movq	56(%r14), %rcx
	movl	4(%rcx), %ecx
	movl	%ecx, 8(%rax)
	movq	64(%r14), %rax
	movl	%ecx, 8(%rax)
	movq	48(%r14), %rax
	movq	64(%r14), %rcx
	movl	4(%rcx), %ecx
	movl	%ecx, 12(%rax)
	movq	56(%r14), %rax
	movl	%ecx, 12(%rax)
	movq	56(%r14), %rax
	cmpl	$0, 44(%rax)
	je	.LBB44_12
# %bb.13:                               # %land.rhs
	movq	64(%r14), %rcx
	xorl	%eax, %eax
	cmpl	$0, 44(%rcx)
	setne	%al
	jmp	.LBB44_14
.LBB44_12:
	xorl	%eax, %eax
.LBB44_14:                              # %land.end
	movq	48(%r14), %rcx
	movl	%eax, 44(%rcx)
	movq	56(%r14), %rax
	cmpb	$0, 40(%rax)
	je	.LBB44_15
# %bb.16:                               # %land.rhs113
	movq	64(%r14), %rax
	cmpb	$0, 40(%rax)
	setne	%al
	jmp	.LBB44_17
.LBB44_15:
	xorl	%eax, %eax
.LBB44_17:                              # %land.end118
	movq	48(%r14), %rcx
	movb	%al, 40(%rcx)
	movq	48(%r14), %rax
	cmpb	$0, 40(%rax)
	je	.LBB44_19
# %bb.18:                               # %if.then126
	movl	32(%r14), %ecx
	movl	%ecx, 36(%rax)
	movq	48(%r14), %rax
.LBB44_19:                              # %if.end129
	movq	56(%r14), %rcx
	movq	%rcx, 224(%rax)
	movq	48(%r14), %rax
	movq	64(%r14), %rcx
	movq	%rcx, 232(%rax)
	movq	48(%r14), %rax
	movq	%rax, 240(%rax)
	movl	$0, 96(%rax)
	movq	48(%r14), %rax
	movq	56(%r14), %rcx
	movl	268(%rcx), %ecx
	movl	%ecx, 268(%rax)
	movq	48(%r14), %rax
	movq	56(%r14), %rcx
	movl	276(%rcx), %ecx
	movl	%ecx, 276(%rax)
	movq	48(%r14), %rax
	cmpl	$0, 276(%rax)
	je	.LBB44_21
# %bb.20:                               # %if.then149
	movq	56(%r14), %rcx
	movl	288(%rcx), %ecx
	movl	%ecx, 288(%rax)
	movq	48(%r14), %rax
	movq	56(%r14), %rcx
	movl	292(%rcx), %ecx
	movl	%ecx, 292(%rax)
	movq	48(%r14), %rax
	movq	56(%r14), %rcx
	movl	280(%rcx), %ecx
	movl	%ecx, 280(%rax)
	movq	48(%r14), %rax
	movq	56(%r14), %rcx
	movl	284(%rcx), %ecx
	movl	%ecx, 284(%rax)
	movq	48(%r14), %rax
.LBB44_21:                              # %if.end162
	movq	64(%r14), %rcx
	movq	%rax, 240(%rcx)
	movq	56(%r14), %rcx
	movq	%rax, 240(%rcx)
	movq	56(%r14), %rax
	movq	64(%r14), %rcx
	movq	%rcx, 232(%rax)
	movq	56(%r14), %rax
	movq	%rax, 224(%rax)
	movq	64(%r14), %rcx
	movq	%rax, 224(%rcx)
	movq	64(%r14), %rax
	movq	%rax, 232(%rax)
	movq	56(%r14), %rcx
	cmpl	$0, 44(%rcx)
	jne	.LBB44_24
# %bb.22:                               # %lor.lhs.false
	cmpl	$0, 44(%rax)
	je	.LBB44_23
.LBB44_24:                              # %if.then186
	movq	48(%r14), %rsi
	movq	%rbx, %rdi
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
	jmp	pad_dec_picture@PLT             # TAILCALL
.LBB44_23:                              # %if.end188
	.cfi_def_cfa_offset 48
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
	retq
.Lfunc_end44:
	.size	dpb_combine_field_yuv, .Lfunc_end44-dpb_combine_field_yuv
	.cfi_endproc
                                        # -- End function
	.globl	dpb_combine_field               # -- Begin function dpb_combine_field
	.p2align	4, 0x90
	.type	dpb_combine_field,@function
dpb_combine_field:                      # @dpb_combine_field
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	dpb_combine_field_yuv
	movl	72(%rbx), %eax
	movq	48(%rbx), %rcx
	movl	%eax, 344(%rcx)
	movq	48(%rbx), %rax
	movq	56(%rbx), %rcx
	movl	388(%rcx), %ecx
	movl	%ecx, 388(%rax)
	movq	56(%rbx), %r9
	cmpl	$4, 68(%r9)
	jl	.LBB45_34
# %bb.1:                                # %for.body.lr.ph
	xorl	%eax, %eax
	movl	$272, %ecx                      # imm = 0x110
	jmp	.LBB45_3
	.p2align	4, 0x90
.LBB45_2:                               # %for.inc366
                                        #   in Loop: Header=BB45_3 Depth=1
	incq	%rax
	movl	68(%r9), %edx
	sarl	$2, %edx
	movslq	%edx, %rdx
	cmpq	%rdx, %rax
	jge	.LBB45_34
.LBB45_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB45_8 Depth 2
	cmpl	$4, 64(%r9)
	jl	.LBB45_2
# %bb.4:                                # %for.body9.lr.ph
                                        #   in Loop: Header=BB45_3 Depth=1
	leaq	(%rax,%rax), %rdx
	leaq	1(,%rax,2), %rsi
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	jmp	.LBB45_8
	.p2align	4, 0x90
.LBB45_28:                              #   in Loop: Header=BB45_8 Depth=2
	xorl	%r9d, %r9d
.LBB45_7:                               # %for.inc
                                        #   in Loop: Header=BB45_8 Depth=2
	movq	48(%rbx), %r10
	movq	152(%r10), %r10
	movq	(%r10,%rsi,8), %r10
	movq	%r9, 8(%r10,%rdi)
	incq	%r8
	movq	56(%rbx), %r9
	movl	64(%r9), %r10d
	sarl	$2, %r10d
	movslq	%r10d, %r10
	addq	$32, %rdi
	cmpq	%r10, %r8
	jge	.LBB45_2
.LBB45_8:                               # %for.body9
                                        #   Parent Loop BB45_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	48(%rbx), %r10
	movq	152(%r10), %r10
	movq	(%r10,%rdx,8), %r10
	movq	152(%r9), %r9
	movq	(%r9,%rax,8), %r9
	movl	16(%r9,%rdi), %r9d
	movl	%r9d, 16(%r10,%rdi)
	movq	48(%rbx), %r9
	movq	56(%rbx), %r10
	movq	152(%r9), %r9
	movq	(%r9,%rdx,8), %r9
	movq	152(%r10), %r10
	movq	(%r10,%rax,8), %r10
	movl	20(%r10,%rdi), %r10d
	movl	%r10d, 20(%r9,%rdi)
	movq	48(%rbx), %r9
	movq	56(%rbx), %r10
	movq	152(%r10), %r10
	movq	(%r10,%rax,8), %r10
	movzbl	24(%r10,%rdi), %r10d
	movq	152(%r9), %r9
	movq	(%r9,%rdx,8), %r9
	movb	%r10b, 24(%r9,%rdi)
	movq	48(%rbx), %r9
	movq	56(%rbx), %r10
	movq	152(%r10), %r10
	movq	(%r10,%rax,8), %r10
	movzbl	25(%r10,%rdi), %r10d
	movq	152(%r9), %r9
	movq	(%r9,%rdx,8), %r9
	movb	%r10b, 25(%r9,%rdi)
	movq	56(%rbx), %r10
	cmpb	$0, 392(%r10)
	movq	152(%r10), %r9
	movq	(%r9,%rax,8), %r9
	movzbl	24(%r9,%rdi), %r9d
	jle	.LBB45_11
# %bb.9:                                # %if.then
                                        #   in Loop: Header=BB45_8 Depth=2
	testb	%r9b, %r9b
	js	.LBB45_13
# %bb.10:                               # %cond.true
                                        #   in Loop: Header=BB45_8 Depth=2
	movq	400(%r10), %r10
	movq	(%r10,%r9,8), %r9
	jmp	.LBB45_14
	.p2align	4, 0x90
.LBB45_11:                              # %if.else
                                        #   in Loop: Header=BB45_8 Depth=2
	testb	%r9b, %r9b
	js	.LBB45_17
# %bb.12:                               # %cond.true134
                                        #   in Loop: Header=BB45_8 Depth=2
	movq	848736(%r14), %r10
	movq	(%r10), %r10
	movq	264(%r10), %r10
	movq	(%r10,%r9,8), %r9
	jmp	.LBB45_18
	.p2align	4, 0x90
.LBB45_13:                              #   in Loop: Header=BB45_8 Depth=2
	xorl	%r9d, %r9d
.LBB45_14:                              # %cond.end
                                        #   in Loop: Header=BB45_8 Depth=2
	movq	48(%rbx), %r10
	movq	152(%r10), %r10
	movq	(%r10,%rdx,8), %r10
	movq	%r9, (%r10,%rdi)
	movq	56(%rbx), %r10
	movq	152(%r10), %r9
	movq	(%r9,%rax,8), %r9
	movzbl	25(%r9,%rdi), %r9d
	testb	%r9b, %r9b
	js	.LBB45_16
# %bb.15:                               # %cond.true106
                                        #   in Loop: Header=BB45_8 Depth=2
	addq	$408, %r10                      # imm = 0x198
	jmp	.LBB45_20
.LBB45_17:                              #   in Loop: Header=BB45_8 Depth=2
	xorl	%r9d, %r9d
.LBB45_18:                              # %cond.end141
                                        #   in Loop: Header=BB45_8 Depth=2
	movq	48(%rbx), %r10
	movq	152(%r10), %r10
	movq	(%r10,%rdx,8), %r10
	movq	%r9, (%r10,%rdi)
	movq	56(%rbx), %r9
	movq	152(%r9), %r9
	movq	(%r9,%rax,8), %r9
	movzbl	25(%r9,%rdi), %r9d
	testb	%r9b, %r9b
	js	.LBB45_16
# %bb.19:                               # %cond.true162
                                        #   in Loop: Header=BB45_8 Depth=2
	movq	848736(%r14), %r10
	movq	(%r10), %r10
	addq	%rcx, %r10
.LBB45_20:                              # %if.end.sink.split
                                        #   in Loop: Header=BB45_8 Depth=2
	movq	(%r10), %r10
	movzbl	%r9b, %r9d
	movq	(%r10,%r9,8), %r9
	jmp	.LBB45_21
	.p2align	4, 0x90
.LBB45_16:                              #   in Loop: Header=BB45_8 Depth=2
	xorl	%r9d, %r9d
.LBB45_21:                              # %if.end
                                        #   in Loop: Header=BB45_8 Depth=2
	movq	48(%rbx), %r10
	movq	152(%r10), %r10
	movq	(%r10,%rdx,8), %r10
	movq	%r9, 8(%r10,%rdi)
	movq	48(%rbx), %r9
	movq	64(%rbx), %r10
	movq	152(%r9), %r9
	movq	(%r9,%rsi,8), %r9
	movq	152(%r10), %r10
	movq	(%r10,%rax,8), %r10
	movl	16(%r10,%rdi), %r10d
	movl	%r10d, 16(%r9,%rdi)
	movq	48(%rbx), %r9
	movq	64(%rbx), %r10
	movq	152(%r9), %r9
	movq	(%r9,%rsi,8), %r9
	movq	152(%r10), %r10
	movq	(%r10,%rax,8), %r10
	movl	20(%r10,%rdi), %r10d
	movl	%r10d, 20(%r9,%rdi)
	movq	48(%rbx), %r9
	movq	64(%rbx), %r10
	movq	152(%r10), %r10
	movq	(%r10,%rax,8), %r10
	movzbl	24(%r10,%rdi), %r10d
	movq	152(%r9), %r9
	movq	(%r9,%rsi,8), %r9
	movb	%r10b, 24(%r9,%rdi)
	movq	48(%rbx), %r9
	movq	64(%rbx), %r10
	movq	152(%r10), %r10
	movq	(%r10,%rax,8), %r10
	movzbl	25(%r10,%rdi), %r10d
	movq	152(%r9), %r9
	movq	(%r9,%rsi,8), %r9
	movb	%r10b, 25(%r9,%rdi)
	movq	64(%rbx), %r10
	cmpb	$0, 392(%r10)
	movq	152(%r10), %r9
	movq	(%r9,%rax,8), %r9
	movzbl	24(%r9,%rdi), %r9d
	jle	.LBB45_24
# %bb.22:                               # %if.then249
                                        #   in Loop: Header=BB45_8 Depth=2
	testb	%r9b, %r9b
	js	.LBB45_26
# %bb.23:                               # %cond.true261
                                        #   in Loop: Header=BB45_8 Depth=2
	movq	400(%r10), %r10
	movq	(%r10,%r9,8), %r9
	jmp	.LBB45_27
	.p2align	4, 0x90
.LBB45_24:                              # %if.else306
                                        #   in Loop: Header=BB45_8 Depth=2
	testb	%r9b, %r9b
	js	.LBB45_30
# %bb.25:                               # %cond.true318
                                        #   in Loop: Header=BB45_8 Depth=2
	movq	848736(%r14), %r10
	movq	(%r10), %r10
	movq	264(%r10), %r10
	movq	(%r10,%r9,8), %r9
	jmp	.LBB45_31
	.p2align	4, 0x90
.LBB45_26:                              #   in Loop: Header=BB45_8 Depth=2
	xorl	%r9d, %r9d
.LBB45_27:                              # %cond.end268
                                        #   in Loop: Header=BB45_8 Depth=2
	movq	48(%rbx), %r10
	movq	152(%r10), %r10
	movq	(%r10,%rsi,8), %r10
	movq	%r9, (%r10,%rdi)
	movq	64(%rbx), %r10
	movq	152(%r10), %r9
	movq	(%r9,%rax,8), %r9
	movzbl	25(%r9,%rdi), %r9d
	testb	%r9b, %r9b
	js	.LBB45_28
# %bb.5:                                # %cond.true289
                                        #   in Loop: Header=BB45_8 Depth=2
	addq	$408, %r10                      # imm = 0x198
	jmp	.LBB45_6
.LBB45_30:                              #   in Loop: Header=BB45_8 Depth=2
	xorl	%r9d, %r9d
.LBB45_31:                              # %cond.end326
                                        #   in Loop: Header=BB45_8 Depth=2
	movq	48(%rbx), %r10
	movq	152(%r10), %r10
	movq	(%r10,%rsi,8), %r10
	movq	%r9, (%r10,%rdi)
	movq	64(%rbx), %r9
	movq	152(%r9), %r9
	movq	(%r9,%rax,8), %r9
	movzbl	25(%r9,%rdi), %r9d
	testb	%r9b, %r9b
	js	.LBB45_28
# %bb.32:                               # %cond.true347
                                        #   in Loop: Header=BB45_8 Depth=2
	movq	848736(%r14), %r10
	movq	(%r10), %r10
	addq	%rcx, %r10
.LBB45_6:                               # %for.inc.sink.split
                                        #   in Loop: Header=BB45_8 Depth=2
	movq	(%r10), %r10
	movzbl	%r9b, %r9d
	movq	(%r10,%r9,8), %r9
	jmp	.LBB45_7
.LBB45_34:                              # %for.end368
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end45:
	.size	dpb_combine_field, .Lfunc_end45-dpb_combine_field
	.cfi_endproc
                                        # -- End function
	.globl	alloc_ref_pic_list_reordering_buffer # -- Begin function alloc_ref_pic_list_reordering_buffer
	.p2align	4, 0x90
	.type	alloc_ref_pic_list_reordering_buffer,@function
alloc_ref_pic_list_reordering_buffer:   # @alloc_ref_pic_list_reordering_buffer
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
	movq	(%rdi), %r15
	movl	848776(%r15), %eax
	cmpl	$2, %eax
	je	.LBB46_10
# %bb.1:                                # %entry
	cmpl	$4, %eax
	jne	.LBB46_2
.LBB46_10:                              # %if.else
	movq	$0, 1112(%rbx)
	movq	$0, 1128(%rbx)
	movq	$0, 1144(%rbx)
	movq	$0, 1160(%rbx)
	cmpl	$1, 848776(%r15)
	je	.LBB46_12
	jmp	.LBB46_20
.LBB46_2:                               # %if.then
	movslq	136(%rbx), %r14
	incq	%r14
	movl	$4, %esi
	movq	%r14, %rdi
	callq	calloc@PLT
	movq	%rax, 1112(%rbx)
	testq	%rax, %rax
	jne	.LBB46_4
# %bb.3:                                # %if.then7
	movl	$.L.str.21, %edi
	callq	no_mem_exit@PLT
.LBB46_4:                               # %if.end
	movl	$4, %esi
	movq	%r14, %rdi
	callq	calloc@PLT
	movq	%rax, 1128(%rbx)
	testq	%rax, %rax
	jne	.LBB46_6
# %bb.5:                                # %if.then13
	movl	$.L.str.22, %edi
	callq	no_mem_exit@PLT
.LBB46_6:                               # %if.end14
	movl	$4, %esi
	movq	%r14, %rdi
	callq	calloc@PLT
	movq	%rax, 1144(%rbx)
	testq	%rax, %rax
	jne	.LBB46_8
# %bb.7:                                # %if.then20
	movl	$.L.str.23, %edi
	callq	no_mem_exit@PLT
.LBB46_8:                               # %if.end21
	movl	$4, %esi
	movq	%r14, %rdi
	callq	calloc@PLT
	movq	%rax, 1160(%rbx)
	testq	%rax, %rax
	je	.LBB46_9
# %bb.11:                               # %if.end37
	cmpl	$1, 848776(%r15)
	jne	.LBB46_20
.LBB46_12:                              # %if.then44
	movslq	140(%rbx), %r14
	incq	%r14
	movl	$4, %esi
	movq	%r14, %rdi
	callq	calloc@PLT
	movq	%rax, 1120(%rbx)
	testq	%rax, %rax
	jne	.LBB46_14
# %bb.13:                               # %if.then51
	movl	$.L.str.25, %edi
	callq	no_mem_exit@PLT
.LBB46_14:                              # %if.end52
	movl	$4, %esi
	movq	%r14, %rdi
	callq	calloc@PLT
	movq	%rax, 1136(%rbx)
	testq	%rax, %rax
	jne	.LBB46_16
# %bb.15:                               # %if.then59
	movl	$.L.str.26, %edi
	callq	no_mem_exit@PLT
.LBB46_16:                              # %if.end60
	movl	$4, %esi
	movq	%r14, %rdi
	callq	calloc@PLT
	movq	%rax, 1152(%rbx)
	testq	%rax, %rax
	jne	.LBB46_18
# %bb.17:                               # %if.then67
	movl	$.L.str.27, %edi
	callq	no_mem_exit@PLT
.LBB46_18:                              # %if.end68
	movl	$4, %esi
	movq	%r14, %rdi
	callq	calloc@PLT
	movq	%rax, 1168(%rbx)
	testq	%rax, %rax
	je	.LBB46_19
# %bb.21:                               # %if.end86
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB46_19:                              # %if.then75
	.cfi_def_cfa_offset 32
	movl	$.L.str.28, %edi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	no_mem_exit@PLT                 # TAILCALL
.LBB46_9:                               # %if.then27
	.cfi_def_cfa_offset 32
	movl	$.L.str.24, %edi
	callq	no_mem_exit@PLT
	cmpl	$1, 848776(%r15)
	je	.LBB46_12
.LBB46_20:                              # %if.else77
	movq	$0, 1120(%rbx)
	movq	$0, 1136(%rbx)
	movq	$0, 1152(%rbx)
	movq	$0, 1168(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end46:
	.size	alloc_ref_pic_list_reordering_buffer, .Lfunc_end46-alloc_ref_pic_list_reordering_buffer
	.cfi_endproc
                                        # -- End function
	.globl	free_ref_pic_list_reordering_buffer # -- Begin function free_ref_pic_list_reordering_buffer
	.p2align	4, 0x90
	.type	free_ref_pic_list_reordering_buffer,@function
free_ref_pic_list_reordering_buffer:    # @free_ref_pic_list_reordering_buffer
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	1112(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB47_2
# %bb.1:                                # %if.then
	callq	free@PLT
.LBB47_2:                               # %if.end
	movq	1128(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB47_4
# %bb.3:                                # %if.then5
	callq	free@PLT
.LBB47_4:                               # %if.end8
	movq	1144(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB47_6
# %bb.5:                                # %if.then11
	callq	free@PLT
.LBB47_6:                               # %if.end14
	movq	$0, 1112(%rbx)
	movq	$0, 1128(%rbx)
	movq	$0, 1144(%rbx)
	movq	1120(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB47_8
# %bb.7:                                # %if.then24
	callq	free@PLT
.LBB47_8:                               # %if.end27
	movq	1136(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB47_10
# %bb.9:                                # %if.then31
	callq	free@PLT
.LBB47_10:                              # %if.end34
	movq	1152(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB47_12
# %bb.11:                               # %if.then38
	callq	free@PLT
.LBB47_12:                              # %if.end41
	movq	$0, 1120(%rbx)
	movq	$0, 1136(%rbx)
	movq	$0, 1152(%rbx)
	movq	1160(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB47_14
# %bb.13:                               # %if.then50
	callq	free@PLT
.LBB47_14:                              # %if.end53
	movq	$0, 1160(%rbx)
	movq	1168(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB47_16
# %bb.15:                               # %if.then59
	callq	free@PLT
.LBB47_16:                              # %if.end62
	movq	$0, 1168(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end47:
	.size	free_ref_pic_list_reordering_buffer, .Lfunc_end47-free_ref_pic_list_reordering_buffer
	.cfi_endproc
                                        # -- End function
	.globl	fill_frame_num_gap              # -- Begin function fill_frame_num_gap
	.p2align	4, 0x90
	.type	fill_frame_num_gap,@function
fill_frame_num_gap:                     # @fill_frame_num_gap
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	16(%rdi), %r12
	movsd	88(%rsi), %xmm0                 # xmm0 = mem[0],zero
	movaps	%xmm0, (%rsp)                   # 16-byte Spill
	movq	$0, 88(%rsi)
	movl	$.Lstr, %edi
	callq	puts@PLT
	movl	848944(%r14), %eax
	incl	%eax
	xorl	%edx, %edx
	divl	848992(%r14)
	movl	172(%rbx), %r13d
	cmpl	%edx, %r13d
	jne	.LBB48_1
.LBB48_5:                               # %while.end
	movaps	(%rsp), %xmm0                   # 16-byte Reload
	movlps	%xmm0, 88(%rbx)
	movl	%r13d, 172(%rbx)
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
.LBB48_1:                               # %while.body.lr.ph
	.cfi_def_cfa_offset 80
	movl	%edx, %ebp
	jmp	.LBB48_2
	.p2align	4, 0x90
.LBB48_4:                               # %if.end
                                        #   in Loop: Header=BB48_2 Depth=1
	movl	68(%rbx), %eax
	movl	%eax, 8(%r15)
	movl	72(%rbx), %eax
	movl	%eax, 12(%r15)
	movl	76(%rbx), %eax
	movl	%eax, 16(%r15)
	movl	%eax, 4(%r15)
	movq	40(%rbx), %rdi
	movq	%r15, %rsi
	callq	store_picture_in_dpb
	movl	%ebp, 848944(%r14)
	incl	%ebp
	movl	%ebp, %eax
	cltd
	idivl	848992(%r14)
	movl	%edx, %ebp
	cmpl	%edx, %r13d
	je	.LBB48_5
.LBB48_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	848780(%r14), %edx
	movl	848784(%r14), %ecx
	movl	848788(%r14), %r8d
	movl	848792(%r14), %r9d
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	alloc_storable_picture
	movq	%rax, %r15
	movl	$1, 96(%rax)
	movl	%ebp, 28(%rax)
	movl	%ebp, 20(%rax)
	movl	$1, 52(%rax)
	movabsq	$4294967297, %rax               # imm = 0x100000001
	movq	%rax, 44(%r15)
	movl	$0, 264(%r15)
	movl	1176(%rbx), %eax
	movl	%eax, 344(%r15)
	movl	%ebp, 172(%rbx)
	cmpl	$0, 2072(%r12)
	je	.LBB48_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB48_2 Depth=1
	movq	848736(%r14), %rax
	movq	(%rax), %rsi
	movq	%r14, %rdi
	callq	decode_poc@PLT
	jmp	.LBB48_4
.Lfunc_end48:
	.size	fill_frame_num_gap, .Lfunc_end48-fill_frame_num_gap
	.cfi_endproc
                                        # -- End function
	.globl	compute_colocated               # -- Begin function compute_colocated
	.p2align	4, 0x90
	.type	compute_colocated,@function
compute_colocated:                      # @compute_colocated
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	$0, 132(%rdi)
	je	.LBB49_1
.LBB49_21:                              # %if.end75
	retq
.LBB49_1:                               # %for.cond.preheader
	movl	128(%rdi), %ecx
	testl	%ecx, %ecx
	js	.LBB49_21
# %bb.2:                                # %for.cond3.preheader.lr.ph
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
	movq	(%rdi), %r8
	shll	$2, %ecx
	leaq	336(%rdi), %r9
	movl	$4, %r10d
	xorl	%r11d, %r11d
	jmp	.LBB49_3
	.p2align	4, 0x90
.LBB49_19:                              # %for.inc72
                                        #   in Loop: Header=BB49_3 Depth=1
	leaq	2(%r11), %rax
	addq	$256, %r9                       # imm = 0x100
	cmpq	%rcx, %r11
	movq	%rax, %r11
	jae	.LBB49_20
.LBB49_3:                               # %for.cond3.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB49_5 Depth 2
	cmpb	$0, 256(%rdi,%r11)
	jle	.LBB49_19
# %bb.4:                                # %for.body6.lr.ph
                                        #   in Loop: Header=BB49_3 Depth=1
	movq	%r11, %rbx
	orq	$1, %rbx
	xorl	%eax, %eax
	cmpq	$2, %r11
	setne	%al
	testq	%r11, %r11
	leaq	8(,%rax,4), %r14
	cmoveq	%r10, %r14
	xorl	%r15d, %r15d
	jmp	.LBB49_5
	.p2align	4, 0x90
.LBB49_18:                              # %if.end71
                                        #   in Loop: Header=BB49_5 Depth=2
	movl	%ebp, (%r9,%r15,4)
	incq	%r15
	movsbq	256(%rdi,%r11), %rax
	cmpq	%rax, %r15
	jge	.LBB49_19
.LBB49_5:                               # %for.body6
                                        #   Parent Loop BB49_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rsi,%r11,8), %rax
	movq	(%rax,%r15,8), %rax
	movl	4(%rax), %eax
	movq	(%rsi,%rbx,8), %rdx
	movq	(%rdx), %rdx
	movl	4(%rdx), %r12d
	movl	$9999, %ebp                     # imm = 0x270F
	subl	%eax, %r12d
	je	.LBB49_18
# %bb.6:                                # %if.then54
                                        #   in Loop: Header=BB49_5 Depth=2
	movq	856456(%r8), %rdx
	movl	(%rdx,%r14), %ebp
	subl	%eax, %ebp
	cmpl	$-127, %ebp
	jl	.LBB49_7
# %bb.8:                                # %if.then54
                                        #   in Loop: Header=BB49_5 Depth=2
	cmpl	$127, %ebp
	jge	.LBB49_9
.LBB49_10:                              # %if.then54
                                        #   in Loop: Header=BB49_5 Depth=2
	cmpl	$-127, %r12d
	jl	.LBB49_11
.LBB49_12:                              # %if.then54
                                        #   in Loop: Header=BB49_5 Depth=2
	cmpl	$127, %r12d
	jl	.LBB49_14
.LBB49_13:                              # %if.then54
                                        #   in Loop: Header=BB49_5 Depth=2
	movl	$127, %r12d
.LBB49_14:                              # %if.then54
                                        #   in Loop: Header=BB49_5 Depth=2
	movl	%r12d, %eax
	shrb	$7, %al
	addb	%r12b, %al
	sarb	%al
	movl	%eax, %edx
	sarb	$7, %dl
	xorb	%dl, %al
	subb	%dl, %al
	movzbl	%al, %eax
	orl	$16384, %eax                    # imm = 0x4000
                                        # kill: def $ax killed $ax killed $eax
	xorl	%edx, %edx
	idivw	%r12w
	cwtl
	imull	%eax, %ebp
	addl	$32, %ebp
	sarl	$6, %ebp
	cmpl	$-1023, %ebp                    # imm = 0xFC01
	jge	.LBB49_16
# %bb.15:                               # %if.then54
                                        #   in Loop: Header=BB49_5 Depth=2
	movl	$-1024, %ebp                    # imm = 0xFC00
.LBB49_16:                              # %if.then54
                                        #   in Loop: Header=BB49_5 Depth=2
	cmpl	$1023, %ebp                     # imm = 0x3FF
	jl	.LBB49_18
# %bb.17:                               # %if.then54
                                        #   in Loop: Header=BB49_5 Depth=2
	movl	$1023, %ebp                     # imm = 0x3FF
	jmp	.LBB49_18
	.p2align	4, 0x90
.LBB49_7:                               # %if.then54
                                        #   in Loop: Header=BB49_5 Depth=2
	movl	$-128, %ebp
	cmpl	$127, %ebp
	jl	.LBB49_10
.LBB49_9:                               # %if.then54
                                        #   in Loop: Header=BB49_5 Depth=2
	movl	$127, %ebp
	cmpl	$-127, %r12d
	jge	.LBB49_12
.LBB49_11:                              # %if.then54
                                        #   in Loop: Header=BB49_5 Depth=2
	movl	$-128, %r12d
	cmpl	$127, %r12d
	jge	.LBB49_13
	jmp	.LBB49_14
.LBB49_20:
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
	retq
.Lfunc_end49:
	.size	compute_colocated, .Lfunc_end49-compute_colocated
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function unmark_long_term_field_for_reference_by_frame_idx
	.type	unmark_long_term_field_for_reference_by_frame_idx,@function
unmark_long_term_field_for_reference_by_frame_idx: # @unmark_long_term_field_for_reference_by_frame_idx
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $r9d killed $r9d def $r9
	testl	%r9d, %r9d
	jns	.LBB50_2
# %bb.1:                                # %if.then
	movq	(%rdi), %rax
	movl	848992(%rax), %eax
	leal	(%r9,%rax,2), %r9d
.LBB50_2:                               # %if.end
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	cmpl	$0, 52(%rdi)
	je	.LBB50_51
# %bb.3:                                # %for.body.lr.ph
	movl	24(%rsp), %eax
	sarl	%r9d
	cmpl	$1, %esi
	je	.LBB50_14
# %bb.4:                                # %for.body.lr.ph
	cmpl	$2, %esi
	jne	.LBB50_51
# %bb.5:                                # %for.body.us541.preheader
	xorl	%esi, %esi
	jmp	.LBB50_6
.LBB50_48:                              # %for.inc.us551.sink.split.sink.split
                                        #   in Loop: Header=BB50_6 Depth=1
	movq	48(%r10), %r11
	movl	$0, 44(%r11)
	movq	48(%r10), %r11
	movb	$0, 40(%r11)
.LBB50_49:                              # %for.inc.us551.sink.split
                                        #   in Loop: Header=BB50_6 Depth=1
	movq	$0, 4(%r10)
.LBB50_50:                              # %for.inc.us551
                                        #   in Loop: Header=BB50_6 Depth=1
	incq	%rsi
	movl	52(%rdi), %r10d
	cmpq	%r10, %rsi
	jae	.LBB50_51
.LBB50_6:                               # %for.body.us541
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%rdi), %r10
	movq	(%r10,%rsi,8), %r10
	cmpl	%eax, 72(%r10)
	jne	.LBB50_50
# %bb.7:                                # %if.then4.us547
                                        #   in Loop: Header=BB50_6 Depth=1
	cmpl	%edx, 32(%r10)
	jne	.LBB50_50
# %bb.8:                                # %if.then10.us550
                                        #   in Loop: Header=BB50_6 Depth=1
	movl	8(%r10), %r11d
	cmpl	$3, %r11d
	je	.LBB50_38
# %bb.9:                                # %if.then10.us550
                                        #   in Loop: Header=BB50_6 Depth=1
	cmpl	$2, %r11d
	jne	.LBB50_10
.LBB50_38:                              # %if.then119.us
                                        #   in Loop: Header=BB50_6 Depth=1
	movl	(%r10), %r11d
	testb	$1, %r11b
	je	.LBB50_41
# %bb.39:                               # %if.then.i501.us
                                        #   in Loop: Header=BB50_6 Depth=1
	movq	56(%r10), %rbx
	testq	%rbx, %rbx
	je	.LBB50_41
# %bb.40:                               # %if.then2.i504.us
                                        #   in Loop: Header=BB50_6 Depth=1
	movl	$0, 44(%rbx)
	movq	56(%r10), %r11
	movb	$0, 40(%r11)
	movl	(%r10), %r11d
.LBB50_41:                              # %if.end5.i508.us
                                        #   in Loop: Header=BB50_6 Depth=1
	testb	$2, %r11b
	je	.LBB50_44
# %bb.42:                               # %if.then9.i511.us
                                        #   in Loop: Header=BB50_6 Depth=1
	movq	64(%r10), %rbx
	testq	%rbx, %rbx
	je	.LBB50_44
# %bb.43:                               # %if.then11.i514.us
                                        #   in Loop: Header=BB50_6 Depth=1
	movl	$0, 44(%rbx)
	movq	64(%r10), %r11
	movb	$0, 40(%r11)
	movl	(%r10), %r11d
.LBB50_44:                              # %if.end17.i518.us
                                        #   in Loop: Header=BB50_6 Depth=1
	cmpl	$3, %r11d
	jne	.LBB50_49
# %bb.45:                               # %if.then19.i522.us
                                        #   in Loop: Header=BB50_6 Depth=1
	movq	56(%r10), %r11
	testq	%r11, %r11
	je	.LBB50_48
# %bb.46:                               # %land.lhs.true.i525.us
                                        #   in Loop: Header=BB50_6 Depth=1
	cmpq	$0, 64(%r10)
	je	.LBB50_48
# %bb.47:                               #   in Loop: Header=BB50_6 Depth=1
	leaq	56(%r10), %rbx
	leaq	64(%r10), %r14
	movl	$0, 44(%r11)
	movq	(%rbx), %r11
	movb	$0, 40(%r11)
	movq	(%r14), %r11
	movl	$0, 44(%r11)
	movq	(%r14), %r11
	movb	$0, 40(%r11)
	jmp	.LBB50_48
.LBB50_10:                              # %if.else87.us
                                        #   in Loop: Header=BB50_6 Depth=1
	testl	%ecx, %ecx
	je	.LBB50_37
# %bb.11:                               # %if.then89.us
                                        #   in Loop: Header=BB50_6 Depth=1
	movq	4168(%rdi), %r11
	testq	%r11, %r11
	je	.LBB50_38
# %bb.12:                               # %if.then92.us
                                        #   in Loop: Header=BB50_6 Depth=1
	cmpq	%r10, %r11
	jne	.LBB50_38
# %bb.13:                               # %lor.lhs.false98.us
                                        #   in Loop: Header=BB50_6 Depth=1
	cmpl	%r8d, 20(%r11)
	je	.LBB50_50
	jmp	.LBB50_38
.LBB50_37:                              # %if.else112.us
                                        #   in Loop: Header=BB50_6 Depth=1
	cmpl	%r9d, 20(%r10)
	je	.LBB50_50
	jmp	.LBB50_38
.LBB50_14:                              # %for.body.us.preheader
	xorl	%esi, %esi
	jmp	.LBB50_15
.LBB50_34:                              # %for.inc.us.sink.split.sink.split
                                        #   in Loop: Header=BB50_15 Depth=1
	movq	48(%r10), %r11
	movl	$0, 44(%r11)
	movq	48(%r10), %r11
	movb	$0, 40(%r11)
.LBB50_35:                              # %for.inc.us.sink.split
                                        #   in Loop: Header=BB50_15 Depth=1
	movq	$0, 4(%r10)
.LBB50_36:                              # %for.inc.us
                                        #   in Loop: Header=BB50_15 Depth=1
	incq	%rsi
	movl	52(%rdi), %r10d
	cmpq	%r10, %rsi
	jae	.LBB50_51
.LBB50_15:                              # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%rdi), %r10
	movq	(%r10,%rsi,8), %r10
	cmpl	%eax, 72(%r10)
	jne	.LBB50_36
# %bb.16:                               # %if.then4.us
                                        #   in Loop: Header=BB50_15 Depth=1
	cmpl	%edx, 32(%r10)
	jne	.LBB50_36
# %bb.17:                               # %if.then10.us
                                        #   in Loop: Header=BB50_15 Depth=1
	movl	8(%r10), %r11d
	cmpl	$3, %r11d
	je	.LBB50_24
# %bb.18:                               # %if.then10.us
                                        #   in Loop: Header=BB50_15 Depth=1
	cmpl	$1, %r11d
	jne	.LBB50_19
.LBB50_24:                              # %if.then57.us
                                        #   in Loop: Header=BB50_15 Depth=1
	movl	(%r10), %r11d
	testb	$1, %r11b
	je	.LBB50_27
# %bb.25:                               # %if.then.i306.us
                                        #   in Loop: Header=BB50_15 Depth=1
	movq	56(%r10), %rbx
	testq	%rbx, %rbx
	je	.LBB50_27
# %bb.26:                               # %if.then2.i309.us
                                        #   in Loop: Header=BB50_15 Depth=1
	movl	$0, 44(%rbx)
	movq	56(%r10), %r11
	movb	$0, 40(%r11)
	movl	(%r10), %r11d
.LBB50_27:                              # %if.end5.i313.us
                                        #   in Loop: Header=BB50_15 Depth=1
	testb	$2, %r11b
	je	.LBB50_30
# %bb.28:                               # %if.then9.i316.us
                                        #   in Loop: Header=BB50_15 Depth=1
	movq	64(%r10), %rbx
	testq	%rbx, %rbx
	je	.LBB50_30
# %bb.29:                               # %if.then11.i319.us
                                        #   in Loop: Header=BB50_15 Depth=1
	movl	$0, 44(%rbx)
	movq	64(%r10), %r11
	movb	$0, 40(%r11)
	movl	(%r10), %r11d
.LBB50_30:                              # %if.end17.i323.us
                                        #   in Loop: Header=BB50_15 Depth=1
	cmpl	$3, %r11d
	jne	.LBB50_35
# %bb.31:                               # %if.then19.i327.us
                                        #   in Loop: Header=BB50_15 Depth=1
	movq	56(%r10), %r11
	testq	%r11, %r11
	je	.LBB50_34
# %bb.32:                               # %land.lhs.true.i330.us
                                        #   in Loop: Header=BB50_15 Depth=1
	cmpq	$0, 64(%r10)
	je	.LBB50_34
# %bb.33:                               #   in Loop: Header=BB50_15 Depth=1
	leaq	56(%r10), %rbx
	leaq	64(%r10), %r14
	movl	$0, 44(%r11)
	movq	(%rbx), %r11
	movb	$0, 40(%r11)
	movq	(%r14), %r11
	movl	$0, 44(%r11)
	movq	(%r14), %r11
	movb	$0, 40(%r11)
	jmp	.LBB50_34
.LBB50_19:                              # %if.else30.us
                                        #   in Loop: Header=BB50_15 Depth=1
	testl	%ecx, %ecx
	je	.LBB50_23
# %bb.20:                               # %if.then31.us
                                        #   in Loop: Header=BB50_15 Depth=1
	movq	4168(%rdi), %r11
	testq	%r11, %r11
	je	.LBB50_24
# %bb.21:                               # %if.then33.us
                                        #   in Loop: Header=BB50_15 Depth=1
	cmpq	%r10, %r11
	jne	.LBB50_24
# %bb.22:                               # %lor.lhs.false.us
                                        #   in Loop: Header=BB50_15 Depth=1
	cmpl	%r8d, 20(%r11)
	je	.LBB50_36
	jmp	.LBB50_24
.LBB50_23:                              # %if.else51.us
                                        #   in Loop: Header=BB50_15 Depth=1
	cmpl	%r9d, 20(%r10)
	je	.LBB50_36
	jmp	.LBB50_24
.LBB50_51:                              # %for.end
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end50:
	.size	unmark_long_term_field_for_reference_by_frame_idx, .Lfunc_end50-unmark_long_term_field_for_reference_by_frame_idx
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function remove_frame_from_dpb
	.type	remove_frame_from_dpb,@function
remove_frame_from_dpb:                  # @remove_frame_from_dpb
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
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	16(%rdi), %rax
	movslq	%esi, %r14
	movq	(%rax,%r14,8), %r15
	movl	(%r15), %eax
	cmpq	$3, %rax
	ja	.LBB51_5
# %bb.1:                                # %entry
	jmpq	*.LJTI51_0(,%rax,8)
.LBB51_4:                               # %sw.bb8
	movq	56(%r15), %rdi
	callq	free_storable_picture
	movq	$0, 56(%r15)
	jmp	.LBB51_6
.LBB51_3:                               # %sw.bb5
	movq	64(%r15), %rdi
	callq	free_storable_picture
	movq	$0, 64(%r15)
	jmp	.LBB51_6
.LBB51_2:                               # %sw.bb
	movq	48(%r15), %rdi
	callq	free_storable_picture
	movq	56(%r15), %rdi
	callq	free_storable_picture
	movq	64(%r15), %rdi
	callq	free_storable_picture
	xorps	%xmm0, %xmm0
	movups	%xmm0, 48(%r15)
	movq	$0, 64(%r15)
	jmp	.LBB51_6
.LBB51_5:                               # %sw.default
	movl	$.L.str.38, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
.LBB51_6:                               # %sw.epilog
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%r15)
	movq	16(%rbx), %rdx
	movq	(%rdx,%r14,8), %rax
	movl	44(%rbx), %ecx
	decl	%ecx
	cmpl	%r14d, %ecx
	jbe	.LBB51_7
# %bb.8:                                # %for.body.preheader
	movl	%ebp, %edx
	.p2align	4, 0x90
.LBB51_9:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rbx), %rcx
	movq	8(%rcx,%rdx,8), %rsi
	movq	%rsi, (%rcx,%rdx,8)
	leaq	1(%rdx), %rsi
	movl	44(%rbx), %ecx
	decl	%ecx
	movq	%rsi, %rdx
	cmpq	%rcx, %rsi
	jb	.LBB51_9
# %bb.10:                               # %for.end.loopexit
	movq	16(%rbx), %rdx
	jmp	.LBB51_11
.LBB51_7:                               # %sw.epilog.for.end_crit_edge
	movl	%ecx, %ecx
.LBB51_11:                              # %for.end
	movq	%rax, (%rdx,%rcx,8)
	decl	44(%rbx)
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
.Lfunc_end51:
	.size	remove_frame_from_dpb, .Lfunc_end51-remove_frame_from_dpb
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI51_0:
	.quad	.LBB51_6
	.quad	.LBB51_4
	.quad	.LBB51_3
	.quad	.LBB51_2
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"undefined level"
	.size	.L.str, 16

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"max_dec_frame_buffering larger than MaxDpbSize"
	.size	.L.str.1, 47

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Max. number of reference frames exceeded. Invalid stream."
	.size	.L.str.2, 58

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"DPB size at specified level is smaller than the specified number of reference frames. This is not allowed.\n"
	.size	.L.str.3, 108

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"init_dpb: p_Dpb->fs"
	.size	.L.str.4, 20

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"init_dpb: p_Dpb->fs_ref"
	.size	.L.str.5, 24

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"init_dpb: p_Dpb->fs_ltref"
	.size	.L.str.6, 26

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"re_init_dpb: p_Dpb->fs"
	.size	.L.str.7, 23

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"re_init_dpb: p_Dpb->fs_ref"
	.size	.L.str.8, 27

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"re_init_dpb: p_Dpb->fs_ltref"
	.size	.L.str.9, 29

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"alloc_frame_store: f"
	.size	.L.str.10, 21

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"alloc_storable_picture: motion->mb_field"
	.size	.L.str.11, 41

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"alloc_storable_picture: s"
	.size	.L.str.12, 26

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"alloc_storable_picture: s->listX[i]"
	.size	.L.str.13, 36

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"init_lists: fs_list0"
	.size	.L.str.14, 21

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"init_lists: fs_listlt"
	.size	.L.str.15, 22

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"init_lists: fs_listinterview0"
	.size	.L.str.16, 30

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"init_lists: fs_list1"
	.size	.L.str.17, 21

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"init_lists: fs_listinterview1"
	.size	.L.str.18, 30

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Invalid remapping_of_pic_nums_idc command"
	.size	.L.str.19, 42

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"duplicate frame_num in short-term reference picture buffer"
	.size	.L.str.20, 59

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"alloc_ref_pic_list_reordering_buffer: reordering_of_pic_nums_idc_l0"
	.size	.L.str.21, 68

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"alloc_ref_pic_list_reordering_buffer: abs_diff_pic_num_minus1_l0"
	.size	.L.str.22, 65

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"alloc_ref_pic_list_reordering_buffer: long_term_pic_idx_l0"
	.size	.L.str.23, 59

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"alloc_ref_pic_list_reordering_buffer: abs_diff_view_idx_minus1_l0"
	.size	.L.str.24, 66

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"alloc_ref_pic_list_reordering_buffer: reordering_of_pic_nums_idc_l1"
	.size	.L.str.25, 68

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"alloc_ref_pic_list_reordering_buffer: abs_diff_pic_num_minus1_l1"
	.size	.L.str.26, 65

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"alloc_ref_pic_list_reordering_buffer: long_term_pic_idx_l1"
	.size	.L.str.27, 59

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"alloc_ref_pic_list_reordering_buffer: abs_diff_view_idx_minus1_l1"
	.size	.L.str.28, 66

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Error: iVOIdx: %d is not less than 0\n"
	.size	.L.str.30, 38

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"memory_management_control_operation = 0 not last operation in buffer"
	.size	.L.str.31, 69

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"invalid memory_management_control_operation in buffer"
	.size	.L.str.32, 54

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"field for long term marking not found"
	.size	.L.str.33, 38

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"Cannot determine smallest POC, DPB empty."
	.size	.L.str.37, 42

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"invalid frame store type"
	.size	.L.str.38, 25

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"Cannot output frame, DPB empty."
	.size	.L.str.39, 32

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"no frames for output available"
	.size	.L.str.40, 31

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"output POC must be in ascending order"
	.size	.L.str.41, 38

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"A gap in frame number is found, try to fill it."
	.size	.Lstr, 48

	.type	.Lstr.42,@object                # @str.42
.Lstr.42:
	.asciz	"Warning: reference field for long term marking not found"
	.size	.Lstr.42, 57

	.type	.Lstr.44,@object                # @str.44
.Lstr.44:
	.asciz	"Warning: assigning long_term_frame_idx different from other field"
	.size	.Lstr.44, 66

	.type	.Lstr.45,@object                # @str.45
.Lstr.45:
	.asciz	"Warning: reference frame for long term marking not found"
	.size	.Lstr.45, 57

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
