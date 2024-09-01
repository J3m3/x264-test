	.text
	.file	"macroblock.c"
	.globl	x264_mb_mc_8x8                  # -- Begin function x264_mb_mc_8x8
	.p2align	4, 0x90
	.type	x264_mb_mc_8x8,@function
x264_mb_mc_8x8:                         # @x264_mb_mc_8x8
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
	movl	%esi, %r14d
	leal	(%r14,%r14), %ebx
	andl	$2, %ebx
	movl	%esi, %edx
	andl	$-2, %edx
	cmpl	$0, 7248(%rdi)
	je	.LBB0_4
# %bb.1:                                # %if.else
	leal	(%rbx,%r14,8), %eax
	cltq
	orq	$12, %rax
	cmpb	$0, 25120(%rdi,%rax)
	js	.LBB0_7
# %bb.2:                                # %if.then26
	cmpb	$0, 25160(%rdi,%rax)
	js	.LBB0_8
# %bb.3:                                # %if.then36
	movl	%ebx, %esi
	movl	$2, %ecx
	movl	$2, %r8d
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
	jmp	x264_mb_mc_01xywh               # TAILCALL
.LBB0_4:                                # %if.then
	.cfi_def_cfa_offset 48
	movslq	%r14d, %rax
	movzbl	17392(%rdi,%rax), %eax
	cmpq	$3, %rax
	ja	.LBB0_14
# %bb.5:                                # %if.then
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_6:                                # %sw.bb7
	movq	%rdi, %r15
	movl	%ebx, %esi
	movl	%edx, %ebp
	movl	$1, %ecx
	movl	$1, %r8d
	callq	x264_mb_mc_0xywh
	movl	%ebx, %r12d
	orl	$1, %r12d
	movq	%r15, %rdi
	movl	%r12d, %esi
	movl	%ebp, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	callq	x264_mb_mc_0xywh
	orl	$1, %r14d
	movq	%r15, %rdi
	movl	%ebx, %esi
	movl	%r14d, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	callq	x264_mb_mc_0xywh
	movq	%r15, %rdi
	movl	%r12d, %esi
	movl	%r14d, %edx
	movl	$1, %ecx
	jmp	.LBB0_12
.LBB0_7:                                # %if.else38
	movl	%ebx, %esi
	movl	$2, %ecx
	movl	$2, %r8d
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
	jmp	x264_mb_mc_1xywh                # TAILCALL
.LBB0_8:                                # %sw.bb
	.cfi_def_cfa_offset 48
	movl	%ebx, %esi
	movl	$2, %ecx
	jmp	.LBB0_10
.LBB0_9:                                # %sw.bb4
	movq	%rdi, %r14
	movl	%ebx, %esi
	movl	%edx, %ebp
	movl	$1, %ecx
	movl	$2, %r8d
	callq	x264_mb_mc_0xywh
	orl	$1, %ebx
	movq	%r14, %rdi
	movl	%ebx, %esi
	movl	%ebp, %edx
	movl	$1, %ecx
.LBB0_10:                               # %sw.bb
	movl	$2, %r8d
	jmp	.LBB0_13
.LBB0_11:                               # %sw.bb2
	movq	%rdi, %r15
	movl	%ebx, %esi
	movl	$2, %ecx
	movl	$1, %r8d
	callq	x264_mb_mc_0xywh
	orl	$1, %r14d
	movq	%r15, %rdi
	movl	%ebx, %esi
	movl	%r14d, %edx
	movl	$2, %ecx
.LBB0_12:                               # %sw.bb
	movl	$1, %r8d
.LBB0_13:                               # %sw.bb
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
	jmp	x264_mb_mc_0xywh                # TAILCALL
.LBB0_14:                               # %if.end40
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
.Lfunc_end0:
	.size	x264_mb_mc_8x8, .Lfunc_end0-x264_mb_mc_8x8
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI0_0:
	.quad	.LBB0_6
	.quad	.LBB0_11
	.quad	.LBB0_9
	.quad	.LBB0_8
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function x264_mb_mc_0xywh
	.type	x264_mb_mc_0xywh,@function
x264_mb_mc_0xywh:                       # @x264_mb_mc_0xywh
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
                                        # kill: def $r8d killed $r8d def $r8
	movl	%ecx, %r9d
	movl	%edx, %r14d
	movl	%esi, %ebx
	movq	%rdi, %r15
	leal	12(%rbx,%r14,8), %eax
	cltq
	movsbq	25120(%rdi,%rax), %r10
	movq	%r10, (%rsp)                    # 8-byte Spill
	movswl	25200(%rdi,%rax,4), %ecx
	movl	16448(%rdi), %edx
	cmpl	%edx, %ecx
	cmovll	%ecx, %edx
	movl	16440(%rdi), %esi
	movl	16444(%rdi), %edi
	cmpl	%ecx, %esi
	cmovgl	%esi, %edx
	movl	%ebx, %ebp
	shll	$4, %ebp
	addl	%edx, %ebp
	movswl	25202(%r15,%rax,4), %eax
	movl	16452(%r15), %ecx
	cmpl	%ecx, %eax
	cmovll	%eax, %ecx
	cmpl	%eax, %edi
	cmovgl	%edi, %ecx
	movl	%r14d, %r13d
	shll	$4, %r13d
	addl	%ecx, %r13d
	movl	%r14d, %eax
	shll	$7, %eax
	leal	(%rax,%rbx,4), %eax
	movslq	%eax, %rdi
	addq	21392(%r15), %rdi
	leaq	(%r10,%r10,2), %rax
	movq	%rax, %rcx
	shlq	$4, %rcx
	leaq	(%r15,%rcx), %r12
	addq	$21424, %r12                    # imm = 0x53B0
	movl	25008(%r15), %ecx
	movq	%r9, 16(%rsp)                   # 8-byte Spill
	leal	(,%r9,4), %r10d
	movq	%r8, 8(%rsp)                    # 8-byte Spill
	leal	(,%r8,4), %r11d
	shlq	$6, %rax
	addq	%r15, %rax
	addq	$7584, %rax                     # imm = 0x1DA0
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$32, %esi
	movq	%r12, %rdx
	movl	%ebp, %r8d
	movl	%r13d, %r9d
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	*32616(%r15)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	(%rsp), %rax                    # 8-byte Reload
	testl	%eax, 16436(%r15)
	je	.LBB1_2
# %bb.1:                                # %if.then
	movl	16388(%r15), %eax
	andl	$1, %eax
	leal	-2(%r13,%rax,4), %r13d
.LBB1_2:                                # %if.end
	shll	$6, %r14d
	leal	(%r14,%rbx,2), %eax
	movslq	%eax, %rbx
	movq	21400(%r15), %rdi
	addq	%rbx, %rdi
	movq	%r12, (%rsp)                    # 8-byte Spill
	movq	32(%r12), %rdx
	movl	25012(%r15), %ecx
	movq	16(%rsp), %r12                  # 8-byte Reload
	leal	(%r12,%r12), %eax
	movq	8(%rsp), %r14                   # 8-byte Reload
	addl	%r14d, %r14d
	movl	$32, %esi
	movl	%ebp, 8(%rsp)                   # 4-byte Spill
	movl	%ebp, %r8d
	movl	%r13d, %r9d
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	*32632(%r15)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	32(%rsp), %rbp                  # 8-byte Reload
	movq	112(%rbp), %rax
	testq	%rax, %rax
	je	.LBB1_4
# %bb.3:                                # %if.then89
	leaq	64(%rbp), %r8
	movl	%r12d, %r10d
	shrl	%r10d
	movq	21400(%r15), %rdi
	addq	%rbx, %rdi
	movl	$32, %esi
	movq	%rdi, %rdx
	movl	$32, %ecx
	movl	%r14d, %r9d
	callq	*(%rax,%r10,8)
.LBB1_4:                                # %if.end124
	movq	21408(%r15), %rdi
	addq	%rbx, %rdi
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	40(%rax), %rdx
	movl	25016(%r15), %ecx
	movl	$32, %esi
	movl	8(%rsp), %r8d                   # 4-byte Reload
	movl	%r13d, %r9d
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	32(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	*32632(%r15)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	176(%rbp), %rax
	testq	%rax, %rax
	je	.LBB1_5
# %bb.6:                                # %if.then157
	subq	$-128, %rbp
	movq	16(%rsp), %rcx                  # 8-byte Reload
	shrl	%ecx
	movq	(%rax,%rcx,8), %rax
	addq	21408(%r15), %rbx
	movq	%rbx, %rdi
	movl	$32, %esi
	movq	%rbx, %rdx
	movl	$32, %ecx
	movq	%rbp, %r8
	movl	%r14d, %r9d
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
	jmpq	*%rax                           # TAILCALL
.LBB1_5:                                # %if.end193
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
.Lfunc_end1:
	.size	x264_mb_mc_0xywh, .Lfunc_end1-x264_mb_mc_0xywh
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_mb_mc_01xywh
	.type	x264_mb_mc_01xywh,@function
x264_mb_mc_01xywh:                      # @x264_mb_mc_01xywh
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
	subq	$632, %rsp                      # imm = 0x278
	.cfi_def_cfa_offset 688
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
                                        # kill: def $esi killed $esi def $rsi
	movq	%rdi, %rbx
	leal	12(%rsi,%r12,8), %eax
	movq	%r12, 80(%rsp)                  # 8-byte Spill
	movq	%rsi, %r9
	movq	%rsi, 56(%rsp)                  # 8-byte Spill
	cltq
	movsbq	25120(%rdi,%rax), %rdx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	leaq	(,%rdx,4), %rdx
	addq	26624(%rdi), %rdx
	movswl	25200(%rdi,%rax,4), %esi
	movl	16448(%rdi), %ebp
	cmpl	%ebp, %esi
	movl	%ebp, %r11d
	cmovll	%esi, %r11d
	movl	16440(%rdi), %edi
	cmpl	%esi, %edi
	cmovgl	%edi, %r11d
                                        # kill: def $r8d killed $r8d def $r8
	movl	%r9d, %esi
	shll	$4, %esi
	addl	%esi, %r11d
	movswl	25360(%rbx,%rax,4), %r9d
	cmpl	%ebp, %r9d
	cmovll	%r9d, %ebp
	movl	%ecx, %r10d
	cmpl	%r9d, %edi
	cmovgl	%edi, %ebp
	movsbq	25160(%rbx,%rax), %r15
	addl	%esi, %ebp
	movswl	25202(%rbx,%rax,4), %ecx
	movl	16452(%rbx), %r13d
	cmpl	%r13d, %ecx
	movl	%r13d, %r14d
	cmovll	%ecx, %r14d
	movl	16444(%rbx), %esi
	cmpl	%ecx, %esi
	cmovgl	%esi, %r14d
	movsbl	(%r15,%rdx), %ecx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movl	%r12d, %ecx
	shll	$4, %ecx
	addl	%ecx, %r14d
	movswl	25362(%rbx,%rax,4), %eax
	cmpl	%r13d, %eax
	cmovll	%eax, %r13d
	cmpl	%eax, %esi
	cmovgl	%esi, %r13d
	addl	%ecx, %r13d
	movl	%r8d, %eax
	movl	%r10d, %ecx
	leaq	(%rax,%rax,4), %rax
	movzbl	x264_size2pixel(%rcx,%rax), %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movl	$16, 12(%rsp)
	movl	$16, 8(%rsp)
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	leaq	(%rbx,%rax), %rdx
	addq	$21424, %rdx                    # imm = 0x53B0
	movl	25008(%rbx), %ecx
	movq	%r10, 96(%rsp)                  # 8-byte Spill
	leal	(,%r10,4), %eax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	%r8, 104(%rsp)                  # 8-byte Spill
	leal	(,%r8,4), %r12d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	120(%rsp), %rdi
	leaq	20(%rsp), %rsi
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movl	%r11d, 8(%rsp)                  # 4-byte Spill
	movl	%r11d, %r8d
	movl	%r14d, %r9d
	pushq	weight_none@GOTPCREL(%rip)
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	*32624(%rbx)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	%r15, 88(%rsp)                  # 8-byte Spill
	leaq	(%r15,%r15,2), %rax
	shlq	$4, %rax
	leaq	(%rbx,%rax), %rdx
	addq	$22960, %rdx                    # imm = 0x59B0
	movl	25008(%rbx), %ecx
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	376(%rsp), %rdi
	leaq	16(%rsp), %rsi
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	movl	%ebp, 12(%rsp)                  # 4-byte Spill
	movl	%ebp, %r8d
	movl	%r13d, %r9d
	pushq	weight_none@GOTPCREL(%rip)
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	88(%rsp)                        # 8-byte Folded Reload
	movq	112(%rsp), %r15                 # 8-byte Reload
	.cfi_adjust_cfa_offset 8
	callq	*32624(%rbx)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	%r15d, %ecx
	shll	$7, %ecx
	movq	56(%rsp), %rdx                  # 8-byte Reload
	leal	(%rcx,%rdx,4), %ecx
	movslq	%ecx, %rdi
	addq	21392(%rbx), %rdi
	movl	12(%rsp), %ecx
	movl	8(%rsp), %r9d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$32, %esi
	movq	80(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	pushq	32(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	32(%rsp), %rax                  # 8-byte Reload
	callq	*32640(%rbx,%rax,8)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	16436(%rbx), %eax
	testl	%eax, 32(%rsp)                  # 4-byte Folded Reload
	je	.LBB2_2
# %bb.1:                                # %if.then
	movl	16388(%rbx), %ecx
	andl	$1, %ecx
	leal	(%r14,%rcx,4), %r14d
	addl	$-2, %r14d
.LBB2_2:                                # %if.end
	testl	%eax, 88(%rsp)                  # 4-byte Folded Reload
	je	.LBB2_4
# %bb.3:                                # %if.then134
	movl	16388(%rbx), %eax
	andl	$1, %eax
	leal	-2(%r13,%rax,4), %r13d
.LBB2_4:                                # %if.end141
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	32(%rax), %rdx
	movl	25012(%rbx), %ecx
	movq	96(%rsp), %rbp                  # 8-byte Reload
	addl	%ebp, %ebp
	movq	104(%rsp), %r12                 # 8-byte Reload
	addl	%r12d, %r12d
	leaq	112(%rsp), %rdi
	movl	$16, %esi
	movl	(%rsp), %r8d                    # 4-byte Reload
	movl	%r14d, %r9d
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	callq	*32632(%rbx)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	32(%rax), %rdx
	movl	25012(%rbx), %ecx
	leaq	368(%rsp), %rdi
	movl	$16, %esi
	movl	4(%rsp), %r8d                   # 4-byte Reload
	movl	%r13d, %r9d
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	callq	*32632(%rbx)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	shll	$6, %r15d
	movq	56(%rsp), %rax                  # 8-byte Reload
	leal	(%r15,%rax,2), %eax
	movslq	%eax, %r15
	movq	21400(%rbx), %rdi
	addq	%r15, %rdi
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$32, %esi
	leaq	120(%rsp), %rdx
	movl	$16, %ecx
	leaq	376(%rsp), %r8
	movl	$16, %r9d
	pushq	32(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	32(%rsp), %rax                  # 8-byte Reload
	callq	*32664(%rbx,%rax,8)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	40(%rax), %rdx
	movl	25016(%rbx), %ecx
	leaq	112(%rsp), %rdi
	movl	$16, %esi
	movl	(%rsp), %r8d                    # 4-byte Reload
	movl	%r14d, %r9d
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	callq	*32632(%rbx)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	40(%rax), %rdx
	movl	25016(%rbx), %ecx
	leaq	368(%rsp), %r14
	movq	%r14, %rdi
	movl	$16, %esi
	movl	4(%rsp), %r8d                   # 4-byte Reload
	movl	%r13d, %r9d
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	callq	*32632(%rbx)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	addq	21408(%rbx), %r15
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%r15, %rdi
	movl	$32, %esi
	leaq	120(%rsp), %rdx
	movl	$16, %ecx
	movq	%r14, %r8
	movl	$16, %r9d
	pushq	32(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	32(%rsp), %rax                  # 8-byte Reload
	callq	*32664(%rbx,%rax,8)
	addq	$648, %rsp                      # imm = 0x288
	.cfi_adjust_cfa_offset -648
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
.Lfunc_end2:
	.size	x264_mb_mc_01xywh, .Lfunc_end2-x264_mb_mc_01xywh
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_mb_mc_1xywh
	.type	x264_mb_mc_1xywh,@function
x264_mb_mc_1xywh:                       # @x264_mb_mc_1xywh
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
                                        # kill: def $r8d killed $r8d def $r8
	movl	%ecx, %r9d
	movl	%edx, %r13d
	movl	%esi, %ebx
	movq	%rdi, %r14
	leal	12(%rbx,%r13,8), %eax
	cltq
	movswl	25360(%rdi,%rax,4), %ecx
	movl	16448(%rdi), %edx
	cmpl	%edx, %ecx
	cmovll	%ecx, %edx
	movl	16440(%rdi), %esi
	cmpl	%ecx, %esi
	cmovgl	%esi, %edx
	movl	%ebx, %ebp
	shll	$4, %ebp
	addl	%edx, %ebp
	movswl	25362(%rdi,%rax,4), %ecx
	movl	16452(%rdi), %edx
	cmpl	%edx, %ecx
	cmovll	%ecx, %edx
	movl	16444(%rdi), %esi
	cmpl	%ecx, %esi
	cmovgl	%esi, %edx
	movsbq	25160(%rdi,%rax), %r15
	movl	%r13d, %r12d
	shll	$4, %r12d
	addl	%edx, %r12d
	movl	%r13d, %eax
	shll	$7, %eax
	leal	(%rax,%rbx,4), %eax
	movslq	%eax, %rdi
	addq	21392(%r14), %rdi
	leaq	(%r15,%r15,2), %rax
	shlq	$4, %rax
	leaq	(%r14,%rax), %rdx
	addq	$22960, %rdx                    # imm = 0x59B0
	movl	25008(%r14), %ecx
	movq	%r9, 32(%rsp)                   # 8-byte Spill
	leal	(,%r9,4), %eax
	movq	%r8, 24(%rsp)                   # 8-byte Spill
	leal	(,%r8,4), %r10d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	weight_none@GOTPCREL(%rip), %r11
	movl	$32, %esi
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movl	%ebp, 20(%rsp)                  # 4-byte Spill
	movl	%ebp, %r8d
	movl	%r12d, %r9d
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	*32616(%r14)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	testl	%r15d, 16436(%r14)
	je	.LBB3_2
# %bb.1:                                # %if.then
	movl	16388(%r14), %eax
	andl	$1, %eax
	leal	(%r12,%rax,4), %r12d
	addl	$-2, %r12d
.LBB3_2:                                # %if.end
	shll	$6, %r13d
	leal	(%r13,%rbx,2), %eax
	movslq	%eax, %rbx
	movq	21400(%r14), %rdi
	addq	%rbx, %rdi
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	32(%rax), %rdx
	movl	25012(%r14), %ecx
	movq	32(%rsp), %r15                  # 8-byte Reload
	addl	%r15d, %r15d
	movq	24(%rsp), %r13                  # 8-byte Reload
	addl	%r13d, %r13d
	movl	$32, %esi
	movl	12(%rsp), %ebp                  # 4-byte Reload
	movl	%ebp, %r8d
	movl	%r12d, %r9d
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	callq	*32632(%r14)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	addq	21408(%r14), %rbx
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	40(%rax), %rdx
	movl	25016(%r14), %ecx
	movq	%rbx, %rdi
	movl	$32, %esi
	movl	%ebp, %r8d
	movl	%r12d, %r9d
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	callq	*32632(%r14)
	addq	$56, %rsp
	.cfi_adjust_cfa_offset -56
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
	.size	x264_mb_mc_1xywh, .Lfunc_end3-x264_mb_mc_1xywh
	.cfi_endproc
                                        # -- End function
	.globl	x264_mb_mc                      # -- Begin function x264_mb_mc
	.p2align	4, 0x90
	.type	x264_mb_mc,@function
x264_mb_mc:                             # @x264_mb_mc
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
	movl	17388(%rdi), %edx
	cmpl	$13, %edx
	jne	.LBB4_1
# %bb.28:                               # %for.body.preheader
	movq	%rdi, %rbx
	xorl	%esi, %esi
	callq	x264_mb_mc_8x8
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	x264_mb_mc_8x8
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	x264_mb_mc_8x8
	movq	%rbx, %rdi
	movl	$3, %esi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	x264_mb_mc_8x8                  # TAILCALL
.LBB4_1:                                # %if.else
	.cfi_def_cfa_offset 32
	movzbl	25132(%rdi), %ecx
	movzbl	25150(%rdi), %r14d
	movzbl	25172(%rdi), %eax
	movzbl	25190(%rdi), %ebp
	cmpl	$14, %edx
	je	.LBB4_13
# %bb.2:                                # %if.else
	cmpl	$15, %edx
	je	.LBB4_20
# %bb.3:                                # %if.else
	cmpl	$16, %edx
	jne	.LBB4_27
# %bb.4:                                # %if.then29
	xorl	%esi, %esi
	xorl	%edx, %edx
	testb	%cl, %cl
	js	.LBB4_10
# %bb.5:                                # %if.then32
	movl	$4, %ecx
	testb	%al, %al
	jns	.LBB4_6
.LBB4_8:                                # %if.else36
	movl	$4, %r8d
	jmp	.LBB4_9
.LBB4_20:                               # %if.then70
	movq	%rdi, %rbx
	xorl	%esi, %esi
	xorl	%edx, %edx
	testb	%cl, %cl
	js	.LBB4_24
# %bb.21:                               # %if.then73
	movl	$2, %ecx
	movl	$4, %r8d
	testb	%al, %al
	js	.LBB4_23
# %bb.22:                               # %if.then76
	callq	x264_mb_mc_01xywh
	jmp	.LBB4_25
.LBB4_13:                               # %if.then44
	movq	%rdi, %rbx
	xorl	%esi, %esi
	xorl	%edx, %edx
	testb	%cl, %cl
	js	.LBB4_17
# %bb.14:                               # %if.then47
	movl	$4, %ecx
	movl	$2, %r8d
	testb	%al, %al
	js	.LBB4_16
# %bb.15:                               # %if.then50
	callq	x264_mb_mc_01xywh
	jmp	.LBB4_18
.LBB4_27:                               # %if.end94
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB4_24:                               # %if.else79
	.cfi_def_cfa_offset 32
	movl	$2, %ecx
	movl	$4, %r8d
	callq	x264_mb_mc_1xywh
	jmp	.LBB4_25
.LBB4_17:                               # %if.else53
	movl	$4, %ecx
	movl	$2, %r8d
	callq	x264_mb_mc_1xywh
	jmp	.LBB4_18
.LBB4_10:                               # %if.else37
	movl	$4, %ecx
	jmp	.LBB4_11
.LBB4_23:                               # %if.else77
	callq	x264_mb_mc_0xywh
.LBB4_25:                               # %if.end80
	movq	%rbx, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	movl	$2, %ecx
	testb	%r14b, %r14b
	js	.LBB4_11
# %bb.26:                               # %if.then83
	testb	%bpl, %bpl
	js	.LBB4_8
.LBB4_6:                                # %if.then35
	movl	$4, %r8d
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	x264_mb_mc_01xywh               # TAILCALL
.LBB4_11:                               # %if.else37
	.cfi_def_cfa_offset 32
	movl	$4, %r8d
	jmp	.LBB4_12
.LBB4_16:                               # %if.else51
	callq	x264_mb_mc_0xywh
.LBB4_18:                               # %if.end54
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$4, %ecx
	movl	$2, %r8d
	testb	%r14b, %r14b
	js	.LBB4_12
# %bb.19:                               # %if.then57
	testb	%bpl, %bpl
	js	.LBB4_9
# %bb.7:                                # %if.then35
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	x264_mb_mc_01xywh               # TAILCALL
.LBB4_12:                               # %if.else37
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	x264_mb_mc_1xywh                # TAILCALL
.LBB4_9:                                # %if.else36
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	x264_mb_mc_0xywh                # TAILCALL
.Lfunc_end4:
	.size	x264_mb_mc, .Lfunc_end4-x264_mb_mc
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_allocate  # -- Begin function x264_macroblock_cache_allocate
	.p2align	4, 0x90
	.type	x264_macroblock_cache_allocate,@function
x264_macroblock_cache_allocate:         # @x264_macroblock_cache_allocate
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
	movq	%rdi, %rbx
	movl	16368(%rdi), %r14d
	movq	3200(%rdi), %rax
	movl	1084(%rax), %ecx
	movl	%ecx, 16372(%rdi)
	addl	%ecx, %ecx
	movl	%ecx, 16376(%rdi)
	movl	1084(%rax), %eax
	shll	$2, %eax
	movl	%eax, 16380(%rdi)
	movl	136(%rdi), %eax
	movl	%eax, 16436(%rdi)
	movl	%r14d, %edi
	callq	x264_malloc@PLT
	movq	%rax, 16632(%rbx)
	testq	%rax, %rax
	je	.LBB5_39
# %bb.1:                                # %do.body17
	movslq	%r14d, %r15
	addq	%r15, %r15
	movl	%r15d, %edi
	callq	x264_malloc@PLT
	movq	%rax, 16640(%rbx)
	testq	%rax, %rax
	je	.LBB5_39
# %bb.2:                                # %do.body30
	movl	%r14d, %edi
	callq	x264_malloc@PLT
	movq	%rax, 17232(%rbx)
	testq	%rax, %rax
	je	.LBB5_39
# %bb.3:                                # %do.body43
	movl	%r14d, %edi
	callq	x264_malloc@PLT
	movq	%rax, 17240(%rbx)
	testq	%rax, %rax
	je	.LBB5_39
# %bb.4:                                # %do.body56
	movl	%r15d, %edi
	callq	x264_malloc@PLT
	movq	%rax, 17248(%rbx)
	testq	%rax, %rax
	je	.LBB5_39
# %bb.5:                                # %do.end68
	movq	%rax, %rdi
	movl	$255, %esi
	movq	%r15, %rdx
	callq	memset@PLT
	leal	(,%r14,8), %r15d
	movl	%r15d, %edi
	callq	x264_malloc@PLT
	movq	%rax, 16648(%rbx)
	testq	%rax, %rax
	je	.LBB5_39
# %bb.6:                                # %do.body87
	leal	(%r15,%r15,2), %edi
	callq	x264_malloc@PLT
	movq	%rax, 16656(%rbx)
	testq	%rax, %rax
	je	.LBB5_39
# %bb.7:                                # %do.end100
	cmpl	$0, 128(%rbx)
	je	.LBB5_11
# %bb.8:                                # %do.body104
	movl	%r14d, %edi
	callq	x264_malloc@PLT
	movq	%rax, 16664(%rbx)
	testq	%rax, %rax
	je	.LBB5_39
# %bb.9:                                # %do.body117
	movl	%r14d, %ebp
	shll	$4, %ebp
	movl	%ebp, %edi
	callq	x264_malloc@PLT
	movq	%rax, 16688(%rbx)
	testq	%rax, %rax
	je	.LBB5_39
# %bb.10:                               # %do.body131
	movl	%ebp, %edi
	callq	x264_malloc@PLT
	movq	%rax, 16696(%rbx)
	testq	%rax, %rax
	je	.LBB5_39
.LBB5_11:                               # %cond.end
	movl	80(%rbx), %ecx
	cmpl	$16, %ecx
	movl	$16, %eax
	cmovll	%ecx, %eax
	movzbl	136(%rbx), %ecx
	shll	%cl, %eax
	movl	396(%rbx), %ecx
	cmpl	$1, %ecx
	je	.LBB5_14
# %bb.12:                               # %cond.end
	cmpl	$2, %ecx
	jne	.LBB5_16
# %bb.13:                               # %if.then180
	cmpl	$14, %eax
	movl	$14, %ecx
	cmovll	%eax, %ecx
	addl	$2, %ecx
	jmp	.LBB5_15
.LBB5_14:                               # %if.then194
	cmpl	$15, %eax
	movl	$15, %ecx
	cmovll	%eax, %ecx
	incl	%ecx
.LBB5_15:                               # %if.end204
	movl	%ecx, %eax
.LBB5_16:                               # %if.end204
	shll	$2, %r14d
	cmpl	$2, %eax
	jl	.LBB5_20
# %bb.17:                               # %do.body213.lr.ph
	movl	%eax, %r15d
	decq	%r15
	xorl	%r12d, %r12d
.LBB5_19:                               # %do.body213
                                        # =>This Inner Loop Header: Depth=1
	movl	%r14d, %edi
	callq	x264_malloc@PLT
	movq	%rax, 16728(%rbx,%r12,8)
	testq	%rax, %rax
	je	.LBB5_39
# %bb.18:                               # %for.cond208
                                        #   in Loop: Header=BB5_19 Depth=1
	incq	%r12
	cmpq	%r12, %r15
	jne	.LBB5_19
.LBB5_20:                               # %cond.end173.1
	cmpl	$1, 112(%rbx)
	movl	$2, %eax
	sbbl	$0, %eax
	movzbl	136(%rbx), %ecx
	shll	%cl, %eax
	movl	396(%rbx), %edx
	cmpl	$2, %edx
	je	.LBB5_23
# %bb.21:                               # %cond.end173.1
	cmpl	$1, %edx
	jne	.LBB5_25
# %bb.22:                               # %if.then194.1
	cmpl	$15, %eax
	movl	$15, %ecx
	cmovll	%eax, %ecx
	incl	%ecx
	jmp	.LBB5_24
.LBB5_23:                               # %if.then180.1
	cmpl	$14, %eax
	movl	$14, %ecx
	cmovll	%eax, %ecx
	addl	$2, %ecx
.LBB5_24:                               # %if.end204.1
	movl	%ecx, %eax
.LBB5_25:                               # %if.end204.1
	testl	%eax, %eax
	jle	.LBB5_30
# %bb.26:                               # %do.body213.lr.ph.1
	movl	%eax, %r15d
	xorl	%r12d, %r12d
.LBB5_27:                               # %do.body213.1
                                        # =>This Inner Loop Header: Depth=1
	movl	%r14d, %edi
	callq	x264_malloc@PLT
	movq	%rax, 16976(%rbx,%r12,8)
	testq	%rax, %rax
	je	.LBB5_39
# %bb.28:                               # %for.cond208.1
                                        #   in Loop: Header=BB5_27 Depth=1
	incq	%r12
	cmpq	%r12, %r15
	jne	.LBB5_27
# %bb.29:                               # %for.inc236.loopexit.1
	movl	396(%rbx), %edx
.LBB5_30:                               # %for.inc236.1
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB5_40
# %bb.31:                               # %if.then245
	movl	(%rbx), %edi
	movl	136(%rbx), %ecx
	movl	%edi, %esi
	andl	$1, %esi
	shll	$4, %esi
	addl	$16, %esi
	testb	$2, %dil
	movl	$64, %ebp
	cmovnel	%ebp, %esi
	cmpl	$-1, %edx
	je	.LBB5_32
# %bb.35:                               # %if.else288
	movq	3200(%rbx), %rax
	movl	1084(%rax), %edi
	movl	1088(%rax), %eax
	shll	$4, %edi
	addl	%esi, %edi
	addl	$63, %edi
	negl	%esi
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebp
	andl	%edi, %esi
	shll	$4, %eax
	addl	%eax, %ebp
	imull	%esi, %ebp
	xorl	%r14d, %r14d
	cmpl	$2, %edx
	sete	%r14b
	incq	%r14
	xorl	%r15d, %r15d
	jmp	.LBB5_38
.LBB5_32:                               # %if.then265
	cmpl	$0, 16(%rbx)
	je	.LBB5_34
# %bb.33:                               # %lor.lhs.false
	movslq	4(%rbx), %rdx
	cmpq	%rbx, 704(%rbx,%rdx,8)
	jne	.LBB5_40
.LBB5_34:                               # %if.then273
	movq	3200(%rbx), %rax
	movl	1084(%rax), %edx
	movl	1088(%rax), %eax
	leal	(%rsi,%rdx,8), %edx
	addl	$63, %edx
	negl	%esi
	movl	$64, %edi
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edi
	andl	%edx, %esi
	leal	(%rdi,%rax,8), %ebp
	imull	%esi, %ebp
	movl	$1, %r14d
	xorl	%r15d, %r15d
.LBB5_38:                               # %do.body319
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %edi
	callq	x264_malloc@PLT
	movq	%rax, 17256(%rbx,%r15,8)
	testq	%rax, %rax
	je	.LBB5_39
# %bb.37:                               # %for.cond314
                                        #   in Loop: Header=BB5_38 Depth=1
	incq	%r15
	xorl	%eax, %eax
	cmpq	%r15, %r14
	jne	.LBB5_38
	jmp	.LBB5_40
.LBB5_39:
	movl	$-1, %eax
.LBB5_40:                               # %cleanup346
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
.Lfunc_end5:
	.size	x264_macroblock_cache_allocate, .Lfunc_end5-x264_macroblock_cache_allocate
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_free      # -- Begin function x264_macroblock_cache_free
	.p2align	4, 0x90
	.type	x264_macroblock_cache_free,@function
x264_macroblock_cache_free:             # @x264_macroblock_cache_free
	.cfi_startproc
# %bb.0:                                # %for.cond.cleanup3.1
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	16728(%rdi), %rdi
	callq	x264_free@PLT
	movq	16736(%rbx), %rdi
	callq	x264_free@PLT
	movq	16744(%rbx), %rdi
	callq	x264_free@PLT
	movq	16752(%rbx), %rdi
	callq	x264_free@PLT
	movq	16760(%rbx), %rdi
	callq	x264_free@PLT
	movq	16768(%rbx), %rdi
	callq	x264_free@PLT
	movq	16776(%rbx), %rdi
	callq	x264_free@PLT
	movq	16784(%rbx), %rdi
	callq	x264_free@PLT
	movq	16792(%rbx), %rdi
	callq	x264_free@PLT
	movq	16800(%rbx), %rdi
	callq	x264_free@PLT
	movq	16808(%rbx), %rdi
	callq	x264_free@PLT
	movq	16816(%rbx), %rdi
	callq	x264_free@PLT
	movq	16824(%rbx), %rdi
	callq	x264_free@PLT
	movq	16832(%rbx), %rdi
	callq	x264_free@PLT
	movq	16840(%rbx), %rdi
	callq	x264_free@PLT
	movq	16848(%rbx), %rdi
	callq	x264_free@PLT
	movq	16856(%rbx), %rdi
	callq	x264_free@PLT
	movq	16864(%rbx), %rdi
	callq	x264_free@PLT
	movq	16872(%rbx), %rdi
	callq	x264_free@PLT
	movq	16880(%rbx), %rdi
	callq	x264_free@PLT
	movq	16888(%rbx), %rdi
	callq	x264_free@PLT
	movq	16896(%rbx), %rdi
	callq	x264_free@PLT
	movq	16904(%rbx), %rdi
	callq	x264_free@PLT
	movq	16912(%rbx), %rdi
	callq	x264_free@PLT
	movq	16920(%rbx), %rdi
	callq	x264_free@PLT
	movq	16928(%rbx), %rdi
	callq	x264_free@PLT
	movq	16936(%rbx), %rdi
	callq	x264_free@PLT
	movq	16944(%rbx), %rdi
	callq	x264_free@PLT
	movq	16952(%rbx), %rdi
	callq	x264_free@PLT
	movq	16960(%rbx), %rdi
	callq	x264_free@PLT
	movq	16968(%rbx), %rdi
	callq	x264_free@PLT
	movq	16976(%rbx), %rdi
	callq	x264_free@PLT
	movq	16984(%rbx), %rdi
	callq	x264_free@PLT
	movq	16992(%rbx), %rdi
	callq	x264_free@PLT
	movq	17000(%rbx), %rdi
	callq	x264_free@PLT
	movq	17008(%rbx), %rdi
	callq	x264_free@PLT
	movq	17016(%rbx), %rdi
	callq	x264_free@PLT
	movq	17024(%rbx), %rdi
	callq	x264_free@PLT
	movq	17032(%rbx), %rdi
	callq	x264_free@PLT
	movq	17040(%rbx), %rdi
	callq	x264_free@PLT
	movq	17048(%rbx), %rdi
	callq	x264_free@PLT
	movq	17056(%rbx), %rdi
	callq	x264_free@PLT
	movq	17064(%rbx), %rdi
	callq	x264_free@PLT
	movq	17072(%rbx), %rdi
	callq	x264_free@PLT
	movq	17080(%rbx), %rdi
	callq	x264_free@PLT
	movq	17088(%rbx), %rdi
	callq	x264_free@PLT
	movq	17096(%rbx), %rdi
	callq	x264_free@PLT
	movq	17104(%rbx), %rdi
	callq	x264_free@PLT
	movq	17112(%rbx), %rdi
	callq	x264_free@PLT
	movq	17120(%rbx), %rdi
	callq	x264_free@PLT
	movq	17128(%rbx), %rdi
	callq	x264_free@PLT
	movq	17136(%rbx), %rdi
	callq	x264_free@PLT
	movq	17144(%rbx), %rdi
	callq	x264_free@PLT
	movq	17152(%rbx), %rdi
	callq	x264_free@PLT
	movq	17160(%rbx), %rdi
	callq	x264_free@PLT
	movq	17168(%rbx), %rdi
	callq	x264_free@PLT
	movq	17176(%rbx), %rdi
	callq	x264_free@PLT
	movq	17184(%rbx), %rdi
	callq	x264_free@PLT
	movq	17192(%rbx), %rdi
	callq	x264_free@PLT
	movq	17200(%rbx), %rdi
	callq	x264_free@PLT
	movq	17208(%rbx), %rdi
	callq	x264_free@PLT
	movq	17216(%rbx), %rdi
	callq	x264_free@PLT
	movq	17224(%rbx), %rdi
	callq	x264_free@PLT
	movq	17256(%rbx), %rdi
	callq	x264_free@PLT
	movq	17264(%rbx), %rdi
	callq	x264_free@PLT
	movq	17272(%rbx), %rdi
	callq	x264_free@PLT
	movq	17280(%rbx), %rdi
	callq	x264_free@PLT
	movq	17288(%rbx), %rdi
	callq	x264_free@PLT
	movq	17296(%rbx), %rdi
	callq	x264_free@PLT
	movq	17304(%rbx), %rdi
	callq	x264_free@PLT
	movq	17312(%rbx), %rdi
	callq	x264_free@PLT
	movq	17320(%rbx), %rdi
	callq	x264_free@PLT
	movq	17328(%rbx), %rdi
	callq	x264_free@PLT
	movq	17336(%rbx), %rdi
	callq	x264_free@PLT
	movq	17344(%rbx), %rdi
	callq	x264_free@PLT
	movq	17352(%rbx), %rdi
	callq	x264_free@PLT
	movq	17360(%rbx), %rdi
	callq	x264_free@PLT
	movq	17368(%rbx), %rdi
	callq	x264_free@PLT
	movq	17376(%rbx), %rdi
	callq	x264_free@PLT
	cmpl	$0, 128(%rbx)
	je	.LBB6_2
# %bb.1:                                # %if.then
	movq	16664(%rbx), %rdi
	callq	x264_free@PLT
	movq	16688(%rbx), %rdi
	callq	x264_free@PLT
	movq	16696(%rbx), %rdi
	callq	x264_free@PLT
.LBB6_2:                                # %if.end
	movq	17248(%rbx), %rdi
	callq	x264_free@PLT
	movq	16648(%rbx), %rdi
	callq	x264_free@PLT
	movq	16656(%rbx), %rdi
	callq	x264_free@PLT
	movq	17240(%rbx), %rdi
	callq	x264_free@PLT
	movq	17232(%rbx), %rdi
	callq	x264_free@PLT
	movq	16640(%rbx), %rdi
	callq	x264_free@PLT
	movq	16632(%rbx), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	x264_free@PLT                   # TAILCALL
.Lfunc_end6:
	.size	x264_macroblock_cache_free, .Lfunc_end6-x264_macroblock_cache_free
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_thread_allocate # -- Begin function x264_macroblock_thread_allocate
	.p2align	4, 0x90
	.type	x264_macroblock_thread_allocate,@function
x264_macroblock_thread_allocate:        # @x264_macroblock_thread_allocate
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
	je	.LBB7_2
# %bb.1:                                # %entry.if.end165_crit_edge
	movq	3200(%rbx), %rax
	movl	1084(%rax), %edi
	xorl	%edx, %edx
	jmp	.LBB7_10
.LBB7_2:                                # %for.cond.preheader
	cmpl	$0, 136(%rbx)
	js	.LBB7_9
# %bb.3:                                # %for.cond1.preheader.lr.ph
	movq	$-1, %r14
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB7_5:                                # %for.cond1.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	3200(%rbx), %rax
	movl	1084(%rax), %edi
	shll	$4, %edi
	addl	$32, %edi
	callq	x264_malloc@PLT
	movq	%rax, 31184(%rbx,%r15)
	testq	%rax, %rax
	je	.LBB7_11
# %bb.6:                                # %do.end
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	3200(%rbx), %rcx
	movslq	1084(%rcx), %rdx
	shlq	$4, %rdx
	addq	$32, %rdx
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	addq	$8, 31184(%rbx,%r15)
	movq	3200(%rbx), %rax
	movl	1084(%rax), %edi
	shll	$4, %edi
	addl	$32, %edi
	sarl	%edi
	callq	x264_malloc@PLT
	movq	%rax, 31192(%rbx,%r15)
	testq	%rax, %rax
	je	.LBB7_11
# %bb.7:                                # %do.end.1
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	3200(%rbx), %rcx
	movl	1084(%rcx), %ecx
	shll	$4, %ecx
	addl	$32, %ecx
	sarl	%ecx
	movslq	%ecx, %rdx
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	addq	$8, 31192(%rbx,%r15)
	movq	3200(%rbx), %rax
	movl	1084(%rax), %edi
	shll	$4, %edi
	addl	$32, %edi
	sarl	%edi
	callq	x264_malloc@PLT
	movq	%rax, 31200(%rbx,%r15)
	testq	%rax, %rax
	je	.LBB7_11
# %bb.8:                                # %do.end.2
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	3200(%rbx), %rcx
	movl	1084(%rcx), %ecx
	shll	$4, %ecx
	addl	$32, %ecx
	sarl	%ecx
	movslq	%ecx, %rdx
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	addq	$8, 31200(%rbx,%r15)
	movq	3200(%rbx), %rax
	movl	1084(%rax), %edi
	shll	$5, %edi
	callq	x264_malloc@PLT
	movq	%rax, 31240(%rbx,%r14,8)
	testq	%rax, %rax
	je	.LBB7_11
# %bb.4:                                # %for.cond
                                        #   in Loop: Header=BB7_5 Depth=1
	movslq	136(%rbx), %rax
	incq	%r14
	addq	$24, %r15
	cmpq	%rax, %r14
	jl	.LBB7_5
.LBB7_9:                                # %if.then63
	movq	704(%rbx), %rax
	movq	14688(%rax), %rax
	movl	20(%rbx), %edx
	leal	3(%rdx), %ecx
	testl	%edx, %edx
	cmovnsl	%edx, %ecx
	shrl	$2, %ecx
	addl	$3, %ecx
	imull	480(%rbx), %ecx
	shll	$5, %ecx
	movl	416(%rbx), %edx
	movl	420(%rbx), %esi
	cmpl	%esi, %edx
	cmovll	%edx, %esi
	leal	4(%rsi), %edx
	movl	%esi, %edi
	shll	$5, %edi
	addl	$32, %edi
	imull	%edx, %edi
	xorl	%r8d, %r8d
	cmpl	$3, 412(%rbx)
	leal	36(%rdi,%rsi,4), %esi
	cmovll	%r8d, %esi
	movq	3328(%rbx), %rdx
	movl	60(%rdx), %edx
	shll	$6, %edx
	cmpl	$0, 128(%rbx)
	movq	3200(%rbx), %rdi
	movl	1084(%rdi), %edi
	cmovnel	%r8d, %edx
	imull	%edi, %edx
	cmpl	%edx, %esi
	cmovgl	%esi, %edx
	movl	116(%rax), %eax
	cmpl	%edx, %ecx
	cmovgl	%ecx, %edx
	leal	96(,%rax,2), %eax
	cmpl	%edx, %eax
	cmovgl	%eax, %edx
.LBB7_10:                               # %if.end165
	addl	$3, %edi
	andl	$1073741820, %edi               # imm = 0x3FFFFFFC
	imull	552(%rbx), %edi
	shll	$2, %edi
	cmpl	%edi, %edx
	cmovgl	%edx, %edi
	callq	x264_malloc@PLT
	movq	%rax, %rcx
	movq	%rax, 31176(%rbx)
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB7_11
# %bb.12:                               # %return
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB7_11:                               # %fail
	.cfi_def_cfa_offset 32
	movl	$-1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	x264_macroblock_thread_allocate, .Lfunc_end7-x264_macroblock_thread_allocate
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_thread_free     # -- Begin function x264_macroblock_thread_free
	.p2align	4, 0x90
	.type	x264_macroblock_thread_free,@function
x264_macroblock_thread_free:            # @x264_macroblock_thread_free
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
	jne	.LBB8_4
# %bb.1:                                # %for.cond.preheader
	cmpl	$0, 136(%rbx)
	js	.LBB8_4
# %bb.2:                                # %for.body.lr.ph
	leaq	31200(%rbx), %r14
	movq	$-1, %r15
	.p2align	4, 0x90
.LBB8_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	31240(%rbx,%r15,8), %rdi
	callq	x264_free@PLT
	movq	-16(%r14), %rdi
	addq	$-8, %rdi
	callq	x264_free@PLT
	movq	-8(%r14), %rdi
	addq	$-8, %rdi
	callq	x264_free@PLT
	movq	(%r14), %rdi
	addq	$-8, %rdi
	callq	x264_free@PLT
	movslq	136(%rbx), %rax
	incq	%r15
	addq	$24, %r14
	cmpq	%rax, %r15
	jl	.LBB8_3
.LBB8_4:                                # %if.end
	movq	31176(%rbx), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	x264_free@PLT                   # TAILCALL
.Lfunc_end8:
	.size	x264_macroblock_thread_free, .Lfunc_end8-x264_macroblock_thread_free
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function x264_macroblock_slice_init
.LCPI9_0:
	.zero	16,254
.LCPI9_1:
	.long	11                              # 0xb
	.long	15                              # 0xf
	.long	11                              # 0xb
	.long	15                              # 0xf
	.text
	.globl	x264_macroblock_slice_init
	.p2align	4, 0x90
	.type	x264_macroblock_slice_init,@function
x264_macroblock_slice_init:             # @x264_macroblock_slice_init
	.cfi_startproc
# %bb.0:                                # %entry
	movq	14688(%rdi), %rax
	movq	3552(%rax), %rcx
	movq	%rcx, 16672(%rdi)
	movq	3560(%rax), %rcx
	movq	%rcx, 16680(%rdi)
	movq	3568(%rax), %rcx
	movq	%rcx, 16720(%rdi)
	movq	6712(%rax), %rcx
	movq	%rcx, 16704(%rdi)
	movq	6720(%rax), %rcx
	movq	%rcx, 16712(%rdi)
	movq	3536(%rax), %rcx
	movq	%rcx, 16616(%rdi)
	movq	3544(%rax), %rcx
	movq	%rcx, 16624(%rdi)
	movl	14696(%rdi), %ecx
	movl	%ecx, 6728(%rax)
	movl	14856(%rdi), %eax
	movq	14688(%rdi), %rcx
	movl	%eax, 6732(%rcx)
	cmpl	$0, 14696(%rdi)
	jle	.LBB9_3
# %bb.1:                                # %for.body.lr.ph
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB9_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	14704(%rdi,%rax,8), %rcx
	movl	(%rcx), %ecx
	movq	14688(%rdi), %rdx
	movl	%ecx, 6736(%rdx,%rax,4)
	incq	%rax
	movslq	14696(%rdi), %rcx
	cmpq	%rcx, %rax
	jl	.LBB9_2
.LBB9_3:                                # %for.cond.cleanup
	movl	7248(%rdi), %eax
	cmpl	$1, %eax
	jne	.LBB9_18
# %bb.4:                                # %for.cond41.preheader
	cmpl	$0, 14856(%rdi)
	jle	.LBB9_7
# %bb.5:                                # %for.body45.lr.ph
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB9_6:                                # %for.body45
                                        # =>This Inner Loop Header: Depth=1
	movq	14864(%rdi,%rax,8), %rcx
	movl	(%rcx), %ecx
	movq	14688(%rdi), %rdx
	movl	%ecx, 6800(%rdx,%rax,4)
	incq	%rax
	movslq	14856(%rdi), %rcx
	cmpq	%rcx, %rax
	jl	.LBB9_6
.LBB9_7:                                # %for.cond.cleanup44
	movw	$-2, 26632(%rdi)
	movq	14864(%rdi), %rax
	cmpl	$0, 6728(%rax)
	jle	.LBB9_17
# %bb.8:                                # %for.body70.lr.ph
	movslq	14696(%rdi), %rcx
	testq	%rcx, %rcx
	jle	.LBB9_9
# %bb.11:                               # %for.body70.us.preheader
	xorl	%edx, %edx
	jmp	.LBB9_12
	.p2align	4, 0x90
.LBB9_15:                               # %if.then91.us
                                        #   in Loop: Header=BB9_12 Depth=1
	movb	%r8b, 26634(%rdi,%rdx)
.LBB9_16:                               # %cleanup.us
                                        #   in Loop: Header=BB9_12 Depth=1
	incq	%rdx
	movslq	6728(%rax), %rsi
	cmpq	%rsi, %rdx
	jge	.LBB9_17
.LBB9_12:                               # %for.body70.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_13 Depth 2
	movl	6736(%rax,%rdx,4), %esi
	movb	$-2, 26634(%rdi,%rdx)
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB9_13:                               # %for.body85.us
                                        #   Parent Loop BB9_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	14704(%rdi,%r8,8), %r9
	cmpl	%esi, (%r9)
	je	.LBB9_15
# %bb.14:                               # %for.inc97.us
                                        #   in Loop: Header=BB9_13 Depth=2
	incq	%r8
	cmpq	%r8, %rcx
	jne	.LBB9_13
	jmp	.LBB9_16
.LBB9_9:                                # %for.body70.preheader
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB9_10:                               # %for.body70
                                        # =>This Inner Loop Header: Depth=1
	movb	$-2, 26634(%rdi,%rcx)
	incq	%rcx
	movslq	6728(%rax), %rdx
	cmpq	%rdx, %rcx
	jl	.LBB9_10
.LBB9_17:                               # %if.end104thread-pre-split
	movl	7248(%rdi), %eax
.LBB9_18:                               # %if.end104
	testl	%eax, %eax
	jne	.LBB9_20
# %bb.19:                               # %if.then109
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 25696(%rdi)
	movaps	%xmm0, 25680(%rdi)
	movq	$0, 25712(%rdi)
.LBB9_20:                               # %if.end111
	movaps	.LCPI9_0(%rip), %xmm0           # xmm0 = [254,254,254,254,254,254,254,254,254,254,254,254,254,254,254,254]
	movaps	%xmm0, 25184(%rdi)
	movaps	%xmm0, 25168(%rdi)
	movaps	%xmm0, 25152(%rdi)
	movaps	%xmm0, 25136(%rdi)
	movaps	%xmm0, 25120(%rdi)
	movl	14696(%rdi), %edx
	testl	%edx, %edx
	setle	%al
	movl	7268(%rdi), %ecx
	testl	%ecx, %ecx
	sets	%sil
	orb	%al, %sil
	jne	.LBB9_25
# %bb.21:                               # %for.body125.lr.ph
	movq	14688(%rdi), %rcx
	movq	14704(%rdi), %rax
	movl	(%rcx), %esi
	subl	(%rax), %esi
	movl	%esi, %eax
	shrl	$31, %eax
	addl	%esi, %eax
	sarl	%eax
	addl	$256, %eax                      # imm = 0x100
	cltd
	idivl	%esi
	movw	%ax, 6864(%rcx)
	movl	7268(%rdi), %ecx
	testl	%ecx, %ecx
	jle	.LBB9_24
# %bb.22:                               # %for.body125.preheader
	movl	$1, %ecx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB9_23:                               # %for.body125
                                        # =>This Inner Loop Header: Depth=1
	movq	14688(%rdi), %r9
	movl	7288(%rdi), %eax
	leaq	1(%rsi), %r8
	movl	%r8d, %r10d
	imull	%eax, %r10d
	movq	14704(%rdi), %rdx
	testl	%ecx, %ecx
	cmovel	%ecx, %eax
	addl	(%r9), %r10d
	addl	(%rdx), %eax
	subl	%eax, %r10d
	movl	%r10d, %eax
	shrl	$31, %eax
	addl	%r10d, %eax
	sarl	%eax
	addl	$256, %eax                      # imm = 0x100
	cltd
	idivl	%r10d
	movw	%ax, 6866(%r9,%rsi,2)
	movslq	7268(%rdi), %rcx
	movq	%r8, %rsi
	cmpq	%rcx, %r8
	jl	.LBB9_23
.LBB9_24:                               # %if.end151.loopexit
	movl	14696(%rdi), %edx
.LBB9_25:                               # %if.end151
	movw	$-2, 26656(%rdi)
                                        # kill: def $cl killed $cl killed $rcx
	shll	%cl, %edx
	testl	%edx, %edx
	jle	.LBB9_37
# %bb.26:                               # %for.body165.lr.ph
	cmpl	$0, 16436(%rdi)
	movl	%edx, %eax
	je	.LBB9_31
# %bb.27:                               # %for.body165.preheader
	cmpl	$1, %edx
	jne	.LBB9_38
# %bb.28:
	xorl	%ecx, %ecx
	jmp	.LBB9_29
.LBB9_31:                               # %for.body165.us.preheader
	cmpl	$1, %edx
	jne	.LBB9_33
# %bb.32:
	xorl	%ecx, %ecx
	jmp	.LBB9_35
.LBB9_38:                               # %for.body165.preheader.new
	movl	%eax, %edx
	andl	$2147483646, %edx               # imm = 0x7FFFFFFE
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB9_39:                               # %for.body165
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %r8d
	andl	$2147483647, %r8d               # imm = 0x7FFFFFFF
	movq	14704(%rdi,%r8,8), %r9
	movzbl	68(%r9), %r9d
	addb	%r9b, %r9b
	andb	$126, %r9b
	movb	%r9b, 26658(%rdi,%rcx)
	movq	14704(%rdi,%r8,8), %r8
	movzbl	68(%r8), %r8d
	addb	%r8b, %r8b
	andb	$126, %r8b
	incb	%r8b
	movb	%r8b, 26659(%rdi,%rcx)
	addq	$2, %rcx
	incq	%rsi
	cmpq	%rcx, %rdx
	jne	.LBB9_39
.LBB9_29:                               # %for.cond.cleanup164.loopexit366.unr-lcssa
	testb	$1, %al
	je	.LBB9_37
# %bb.30:                               # %for.body165.epil
	movl	%ecx, %eax
	shrl	%eax
	movq	14704(%rdi,%rax,8), %rax
	movl	68(%rax), %eax
	andl	$63, %eax
	movl	%ecx, %edx
	andl	$1, %edx
	leal	(%rdx,%rax,2), %eax
	movb	%al, 26658(%rdi,%rcx)
	jmp	.LBB9_37
.LBB9_33:                               # %for.body165.us.preheader.new
	movl	%eax, %edx
	andl	$2147483646, %edx               # imm = 0x7FFFFFFE
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB9_34:                               # %for.body165.us
                                        # =>This Inner Loop Header: Depth=1
	movq	14704(%rdi,%rcx,8), %rsi
	movzbl	68(%rsi), %esi
	andb	$63, %sil
	movb	%sil, 26658(%rdi,%rcx)
	movq	14712(%rdi,%rcx,8), %rsi
	movzbl	68(%rsi), %esi
	andb	$63, %sil
	movb	%sil, 26659(%rdi,%rcx)
	addq	$2, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB9_34
.LBB9_35:                               # %for.cond.cleanup164.loopexit.unr-lcssa
	testb	$1, %al
	je	.LBB9_37
# %bb.36:                               # %for.body165.us.epil
	movq	14704(%rdi,%rcx,8), %rax
	movzbl	68(%rax), %eax
	andb	$63, %al
	movb	%al, 26658(%rdi,%rcx)
.LBB9_37:                               # %for.cond.cleanup164
	movl	$15, 16544(%rdi)
	movabsq	$47244640271, %rax              # imm = 0xB0000000F
	movq	%rax, 16532(%rdi)
	movl	$11, 16504(%rdi)
	movl	$11, 16568(%rdi)
	movaps	.LCPI9_1(%rip), %xmm0           # xmm0 = [11,15,11,15]
	movups	%xmm0, 16552(%rdi)
	movl	$11, 16520(%rdi)
	retq
.Lfunc_end9:
	.size	x264_macroblock_slice_init, .Lfunc_end9-x264_macroblock_slice_init
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_thread_init     # -- Begin function x264_macroblock_thread_init
	.p2align	4, 0x90
	.type	x264_macroblock_thread_init,@function
x264_macroblock_thread_init:            # @x264_macroblock_thread_init
	.cfi_startproc
# %bb.0:                                # %entry
	movl	412(%rdi), %ecx
	movl	428(%rdi), %eax
	movl	%ecx, 16404(%rdi)
	movl	%eax, 16408(%rdi)
	movl	7248(%rdi), %ecx
	cmpl	$1, %ecx
	jne	.LBB10_5
# %bb.1:                                # %land.lhs.true
	cmpl	$8, %eax
	je	.LBB10_3
# %bb.2:                                # %land.lhs.true
	cmpl	$6, %eax
	jne	.LBB10_4
.LBB10_3:                               # %if.then
	decl	%eax
	movl	%eax, 16408(%rdi)
.LBB10_4:                               # %land.end.thread120
	movl	$0, 16412(%rdi)
	movl	$1, %eax
	jmp	.LBB10_8
.LBB10_5:                               # %if.end
	cmpl	$0, 432(%rdi)
	setne	%dl
	testl	%ecx, %ecx
	sete	%sil
	andb	%dl, %sil
	cmpl	$5, %eax
	setge	%al
	andb	%sil, %al
	movzbl	%al, %eax
	movl	%eax, 16412(%rdi)
	cmpl	$0, 448(%rdi)
	je	.LBB10_6
# %bb.7:                                # %land.rhs31
	xorl	%eax, %eax
	cmpl	$2, %ecx
	setne	%al
	jmp	.LBB10_8
.LBB10_6:
	xorl	%eax, %eax
.LBB10_8:                               # %lor.end
	movl	%eax, 16424(%rdi)
	leaq	17440(%rdi), %rax
	movq	%rax, 21344(%rdi)
	leaq	17696(%rdi), %rax
	movq	%rax, 21352(%rdi)
	leaq	17704(%rdi), %rax
	movq	%rax, 21360(%rdi)
	leaq	17888(%rdi), %rax
	movq	%rax, 21392(%rdi)
	leaq	18432(%rdi), %rax
	movq	%rax, 21400(%rdi)
	leaq	18448(%rdi), %rax
	movq	%rax, 21408(%rdi)
	retq
.Lfunc_end10:
	.size	x264_macroblock_thread_init, .Lfunc_end10-x264_macroblock_thread_init
	.cfi_endproc
                                        # -- End function
	.globl	x264_prefetch_fenc              # -- Begin function x264_prefetch_fenc
	.p2align	4, 0x90
	.type	x264_prefetch_fenc,@function
x264_prefetch_fenc:                     # @x264_prefetch_fenc
	.cfi_startproc
# %bb.0:                                # %entry
	movl	104(%rsi), %eax
	movl	108(%rsi), %r9d
	movl	%eax, %r8d
	imull	%ecx, %r8d
	addl	%edx, %r8d
	shll	$4, %r8d
	imull	%r9d, %ecx
	addl	%edx, %ecx
	shll	$3, %ecx
	movq	32800(%rdi), %r11
	movslq	%r8d, %rdi
	addq	152(%rsi), %rdi
	movl	%edx, %r8d
	andl	$1, %r8d
	movslq	%ecx, %rcx
	addq	160(%rsi,%r8,8), %rcx
	movl	%eax, %esi
	movl	%edx, %r8d
	movq	%rcx, %rdx
	movl	%r9d, %ecx
	jmpq	*%r11                           # TAILCALL
.Lfunc_end11:
	.size	x264_prefetch_fenc, .Lfunc_end11-x264_prefetch_fenc
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function x264_macroblock_cache_load
.LCPI12_0:
	.long	1                               # 0x1
	.long	4                               # 0x4
	.long	2                               # 0x2
	.long	8                               # 0x8
	.text
	.globl	x264_macroblock_cache_load
	.p2align	4, 0x90
	.type	x264_macroblock_cache_load,@function
x264_macroblock_cache_load:             # @x264_macroblock_cache_load
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
	movl	%edx, %r14d
	movq	%rdi, %rbx
	movl	16436(%rdi), %ecx
	movl	$-1, %edi
	shll	%cl, %edi
	movl	%esi, %r15d
	movl	$-1, %r12d
	movl	16372(%rbx), %r8d
	movl	16376(%rbx), %edx
	movl	%esi, 16384(%rbx)
	movl	%r14d, 16388(%rbx)
	movl	%r8d, %eax
	imull	%r14d, %eax
	addl	%esi, %eax
	movl	%eax, 16392(%rbx)
	movl	%edx, %esi
	imull	%r14d, %esi
	addl	%r15d, %esi
	addl	%esi, %esi
	movl	%esi, 16396(%rbx)
	movl	16380(%rbx), %esi
	movl	%esi, %r9d
	imull	%r14d, %r9d
	addl	%r15d, %r9d
	shll	$2, %r9d
	movl	%r9d, 16400(%rbx)
	movl	$0, 16488(%rbx)
	movq	$0, 16572(%rbx)
	xorl	%r13d, %r13d
	pcmpeqd	%xmm0, %xmm0
	movdqu	%xmm0, 16580(%rbx)
	movdqu	%xmm0, 16600(%rbx)
	testl	%r15d, %r15d
	jle	.LBB12_6
# %bb.1:                                # %if.then.i
	movl	$1, 16576(%rbx)
	movslq	%eax, %r9
	leaq	-1(%r9), %rbp
	movl	%ebp, 16600(%rbx)
	movq	16616(%rbx), %r10
	movsbl	-1(%r10,%r9), %r9d
	movl	%r9d, 16584(%rbx)
	movl	$1, %r10d
	cmpl	7252(%rbx), %eax
	jle	.LBB12_7
# %bb.2:                                # %if.then46.i
	movl	$1, 16488(%rbx)
	cmpl	$0, 140(%rbx)
	je	.LBB12_4
# %bb.3:                                # %if.then46.i
	movl	$1, %eax
	cmpb	$3, %r9b
	ja	.LBB12_5
.LBB12_4:                               # %if.then69.i
	movl	$1, 16572(%rbx)
	movl	$1, %r13d
	movl	$1, %eax
.LBB12_5:                               # %if.end74.i
	movl	$1, %r10d
	jmp	.LBB12_8
.LBB12_6:
	movl	$-1, %ebp
	xorl	%eax, %eax
	xorl	%r10d, %r10d
	jmp	.LBB12_8
.LBB12_7:
	xorl	%eax, %eax
.LBB12_8:                               # %if.end74.i
	movl	1748(%rbx), %r9d
	sarl	%cl, %r9d
	addl	%r14d, %edi
	movl	%r14d, %r11d
	sarl	%cl, %r11d
	cmpl	%r11d, %r9d
	jne	.LBB12_11
.LBB12_9:                               # %x264_macroblock_cache_load_neighbours.exit
	leal	1(,%rdi,2), %r8d
	imull	%r8d, %edx
	leal	3(,%rdi,4), %edi
	imull	%edi, %esi
	movq	16640(%rbx), %r9
	movq	16648(%rbx), %r8
	movq	16656(%rbx), %rdi
	testb	$2, %al
	movl	%r12d, 8(%rsp)                  # 4-byte Spill
	jne	.LBB12_24
# %bb.10:                               # %if.else
	movl	$-1, 25776(%rbx)
	movl	$-1, 25028(%rbx)
	movabsq	$-9187201950435737472, %r10     # imm = 0x8080808080808080
	movq	%r10, 25072(%rbx)
	movl	$-2139062144, %r10d             # imm = 0x80808080
	jmp	.LBB12_25
.LBB12_11:                              # %if.then82.i
	imull	%edi, %r8d
	addl	%r15d, %r8d
	js	.LBB12_98
# %bb.12:                               # %if.then85.i
	movl	%r13d, %r12d
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	leal	2(%r10), %r11d
	movl	%r11d, 16576(%rbx)
	movl	%r8d, 16604(%rbx)
	movq	16616(%rbx), %r9
	movl	%r8d, %r13d
	movq	%r9, 8(%rsp)                    # 8-byte Spill
	movsbl	(%r9,%r13), %r9d
	movl	%r9d, 16580(%rbx)
	movl	7252(%rbx), %ebp
	cmpl	%ebp, %r8d
	jl	.LBB12_17
# %bb.13:                               # %if.then104.i
	orl	$2, %eax
	movl	%eax, 16488(%rbx)
	cmpl	$0, 140(%rbx)
	movl	%r11d, 4(%rsp)                  # 4-byte Spill
	je	.LBB12_15
# %bb.14:                               # %if.then104.i
	cmpb	$3, %r9b
	ja	.LBB12_16
.LBB12_15:                              # %if.then131.i
	movl	%r12d, %r9d
	orl	$2, %r9d
	movl	%r9d, %r12d
	movl	%r9d, 16572(%rbx)
.LBB12_16:                              # %if.end135.i
	movq	16640(%rbx), %r9
	prefetcht0	(%r9,%r13,2)
	movq	16648(%rbx), %r9
	prefetcht0	(%r9,%r13,8)
	movq	16656(%rbx), %r9
	leaq	(%r13,%r13,2), %r11
	prefetcht0	12(%r9,%r11,8)
	movq	17240(%rbx), %r9
	prefetcht0	(%r9,%r13)
	movq	17232(%rbx), %r9
	prefetcht0	(%r9,%r13)
	movl	4(%rsp), %r11d                  # 4-byte Reload
.LBB12_17:                              # %if.end153.i
	testl	%r15d, %r15d
	movl	%r12d, %r13d
	jle	.LBB12_73
# %bb.18:                               # %if.end153.i
	testl	%r8d, %r8d
	je	.LBB12_73
# %bb.19:                               # %if.then159.i
	leal	-1(%r8), %r9d
	orl	$10, %r10d
	movl	%r10d, 16576(%rbx)
	movl	%r9d, 16608(%rbx)
	movq	8(%rsp), %r11                   # 8-byte Reload
	movsbl	(%r11,%r9), %r9d
	movl	%r9d, 16588(%rbx)
	cmpl	%ebp, %r8d
	jle	.LBB12_96
# %bb.20:                               # %if.then180.i
	orl	$8, %eax
	movl	%eax, 16488(%rbx)
	cmpl	$0, 140(%rbx)
	movq	24(%rsp), %rbp                  # 8-byte Reload
	je	.LBB12_22
# %bb.21:                               # %if.then180.i
	cmpb	$3, %r9b
	ja	.LBB12_23
.LBB12_22:                              # %if.then207.i
	orl	$8, %r13d
	movl	%r13d, 16572(%rbx)
.LBB12_23:                              # %if.end213.i
	movl	%r8d, %r12d
	jmp	.LBB12_98
.LBB12_24:                              # %if.then
	movslq	%r12d, %r10
	movswl	(%r9,%r10,2), %r11d
	movl	%r11d, 25776(%rbx)
	movl	(%r8,%r10,8), %r11d
	movl	%r11d, 25028(%rbx)
	leaq	(%r10,%r10,2), %r10
	movl	12(%rdi,%r10,8), %r11d
	movl	%r11d, 25076(%rbx)
	movzwl	18(%rdi,%r10,8), %r11d
	shll	$8, %r11d
	movl	%r11d, 25072(%rbx)
	movzwl	22(%rdi,%r10,8), %r10d
	shll	$8, %r10d
.LBB12_25:                              # %if.end
	leal	(%rdx,%r15,2), %r13d
	leal	(%rsi,%r15,4), %r12d
	movl	%r10d, 25096(%rbx)
	movl	%eax, %edx
	andl	$1, %edx
	jne	.LBB12_30
# %bb.26:                               # %if.end314.thread1466
	movl	$-1, 25780(%rbx)
	movb	$-1, 25059(%rbx)
	movb	$-1, 25051(%rbx)
	movb	$-1, 25043(%rbx)
	movb	$-1, 25035(%rbx)
	movb	$-128, 25112(%rbx)
	movb	$-128, 25104(%rbx)
	movb	$-128, 25088(%rbx)
	movb	$-128, 25080(%rbx)
	movb	$-128, 25107(%rbx)
	movb	$-128, 25099(%rbx)
	movb	$-128, 25091(%rbx)
	movb	$-128, 25083(%rbx)
	movq	3328(%rbx), %rsi
	xorl	%edi, %edi
	cmpl	$0, 60(%rsi)
	je	.LBB12_35
# %bb.27:                               # %land.end
	xorl	%esi, %esi
	testb	$2, %al
	je	.LBB12_29
.LBB12_28:                              # %land.rhs330
	movq	17240(%rbx), %r8
	movslq	8(%rsp), %r9                    # 4-byte Folded Reload
	xorl	%esi, %esi
	cmpb	$0, (%r8,%r9)
	setne	%sil
.LBB12_29:                              # %land.end337
	addl	%edi, %esi
	movl	%esi, 25768(%rbx)
	jmp	.LBB12_35
.LBB12_30:                              # %if.then90
	movslq	%ebp, %rsi
	movswl	(%r9,%rsi,2), %r9d
	movl	%r9d, 25780(%rbx)
	movzbl	4(%r8,%rsi,8), %r9d
	movb	%r9b, 25035(%rbx)
	movzbl	5(%r8,%rsi,8), %r9d
	movb	%r9b, 25043(%rbx)
	movzbl	6(%r8,%rsi,8), %r9d
	movb	%r9b, 25051(%rbx)
	movzbl	3(%r8,%rsi,8), %r8d
	movb	%r8b, 25059(%rbx)
	leaq	(%rsi,%rsi,2), %r8
	movzbl	3(%rdi,%r8,8), %r9d
	movb	%r9b, 25083(%rbx)
	movzbl	7(%rdi,%r8,8), %r9d
	movb	%r9b, 25091(%rbx)
	movzbl	11(%rdi,%r8,8), %r9d
	movb	%r9b, 25099(%rbx)
	movzbl	15(%rdi,%r8,8), %r9d
	movb	%r9b, 25107(%rbx)
	movzbl	17(%rdi,%r8,8), %r9d
	movb	%r9b, 25080(%rbx)
	movzbl	19(%rdi,%r8,8), %r9d
	movb	%r9b, 25088(%rbx)
	movzbl	21(%rdi,%r8,8), %r9d
	movb	%r9b, 25104(%rbx)
	movzbl	23(%rdi,%r8,8), %edi
	movb	%dil, 25112(%rbx)
	movl	7248(%rbx), %r10d
	cmpl	$2, %r10d
	je	.LBB12_33
# %bb.31:                               # %for.cond.preheader
	movslq	%r12d, %r9
	movslq	%r13d, %r8
	movslq	8(%rsp), %rdi                   # 4-byte Folded Reload
	shlq	$4, %rdi
	movq	16672(%rbx), %r11
	prefetcht0	-4(%r11,%r9,4)
	prefetcht0	16(%r11,%r9,4)
	movq	16704(%rbx), %r11
	prefetcht0	-1(%r11,%r8)
	movq	16688(%rbx), %r11
	prefetcht0	(%r11,%rdi)
	cmpl	$1, %r10d
	jne	.LBB12_33
# %bb.32:                               # %for.body.1
	movq	16680(%rbx), %r10
	prefetcht0	-4(%r10,%r9,4)
	prefetcht0	16(%r10,%r9,4)
	movq	16712(%rbx), %r9
	prefetcht0	-1(%r9,%r8)
	movq	16696(%rbx), %r8
	prefetcht0	(%r8,%rdi)
.LBB12_33:                              # %if.end314.thread
	movq	3328(%rbx), %rdi
	cmpl	$0, 60(%rdi)
	je	.LBB12_35
# %bb.34:                               # %land.rhs
	movq	17240(%rbx), %r8
	xorl	%edi, %edi
	cmpb	$0, (%r8,%rsi)
	setne	%dil
	xorl	%esi, %esi
	testb	$2, %al
	jne	.LBB12_28
	jmp	.LBB12_29
.LBB12_35:                              # %if.end342
	cmpl	$0, 7268(%rbx)
	je	.LBB12_37
# %bb.36:                               # %if.then345
	movl	14696(%rbx), %esi
	shll	%cl, %esi
	movl	14856(%rbx), %edi
	movl	%esi, 21416(%rbx)
	shll	%cl, %edi
	movl	%edi, 21420(%rbx)
	btl	$1, %eax
	adcl	$0, %edx
	movl	%edx, 25772(%rbx)
.LBB12_37:                              # %if.end374
	testl	%ecx, %ecx
	jne	.LBB12_39
# %bb.38:                               # %if.then378
	movq	21392(%rbx), %rax
	movzbl	15(%rax), %ecx
	movzbl	47(%rax), %edx
	movb	%cl, -1(%rax)
	movb	%dl, 31(%rax)
	movzbl	79(%rax), %ecx
	movb	%cl, 63(%rax)
	movzbl	111(%rax), %ecx
	movb	%cl, 95(%rax)
	movzbl	143(%rax), %ecx
	movb	%cl, 127(%rax)
	movzbl	175(%rax), %ecx
	movb	%cl, 159(%rax)
	movzbl	207(%rax), %ecx
	movb	%cl, 191(%rax)
	movzbl	239(%rax), %ecx
	movb	%cl, 223(%rax)
	movq	21392(%rbx), %rax
	movzbl	271(%rax), %ecx
	movzbl	303(%rax), %edx
	movb	%cl, 255(%rax)
	movb	%dl, 287(%rax)
	movzbl	335(%rax), %ecx
	movb	%cl, 319(%rax)
	movzbl	367(%rax), %ecx
	movb	%cl, 351(%rax)
	movzbl	399(%rax), %ecx
	movb	%cl, 383(%rax)
	movzbl	431(%rax), %ecx
	movb	%cl, 415(%rax)
	movzbl	463(%rax), %ecx
	movb	%cl, 447(%rax)
	movzbl	495(%rax), %ecx
	movb	%cl, 479(%rax)
	movq	21400(%rbx), %rax
	movzbl	7(%rax), %ecx
	movzbl	39(%rax), %edx
	movb	%cl, -1(%rax)
	movb	%dl, 31(%rax)
	movzbl	71(%rax), %ecx
	movb	%cl, 63(%rax)
	movzbl	103(%rax), %ecx
	movb	%cl, 95(%rax)
	movzbl	135(%rax), %ecx
	movb	%cl, 127(%rax)
	movzbl	167(%rax), %ecx
	movb	%cl, 159(%rax)
	movzbl	199(%rax), %ecx
	movb	%cl, 191(%rax)
	movzbl	231(%rax), %ecx
	movb	%cl, 223(%rax)
	movq	21408(%rbx), %rax
	movzbl	7(%rax), %ecx
	movzbl	39(%rax), %edx
	movb	%cl, -1(%rax)
	movb	%dl, 31(%rax)
	movzbl	71(%rax), %ecx
	movb	%cl, 63(%rax)
	movzbl	103(%rax), %ecx
	movb	%cl, 95(%rax)
	movzbl	135(%rax), %ecx
	movb	%cl, 127(%rax)
	movzbl	167(%rax), %ecx
	movb	%cl, 159(%rax)
	movzbl	199(%rax), %ecx
	movb	%cl, 191(%rax)
	movzbl	231(%rax), %ecx
	movb	%cl, 223(%rax)
.LBB12_39:                              # %if.end425
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	%r14d, %edx
	xorl	%ecx, %ecx
	callq	x264_macroblock_load_pic_pointers
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	%r14d, %edx
	movl	$1, %ecx
	callq	x264_macroblock_load_pic_pointers
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	%r14d, %edx
	movl	$2, %ecx
	callq	x264_macroblock_load_pic_pointers
	movq	14688(%rbx), %rax
	cmpq	$0, 240(%rax)
	je	.LBB12_56
# %bb.40:                               # %if.then427
	movl	104(%rax), %eax
	imull	%r14d, %eax
	addl	%r15d, %eax
	shll	$4, %eax
	movslq	21416(%rbx), %rdx
	cltq
	testq	%rdx, %rdx
	jle	.LBB12_48
# %bb.41:                               # %for.body441.lr.ph
	movl	%edx, %ecx
	andl	$3, %ecx
	cmpl	$4, %edx
	jae	.LBB12_43
# %bb.42:
	xorl	%esi, %esi
	jmp	.LBB12_45
.LBB12_43:                              # %for.body441.lr.ph.new
	andl	$2147483644, %edx               # imm = 0x7FFFFFFC
	xorl	%esi, %esi
	leaq	(%rax,%rax), %rdi
	.p2align	4, 0x90
.LBB12_44:                              # %for.body441
                                        # =>This Inner Loop Header: Depth=1
	movq	14704(%rbx,%rsi,8), %r8
	movq	14712(%rbx,%rsi,8), %r9
	movq	240(%r8), %r8
	addq	%rdi, %r8
	movq	%r8, 24752(%rbx,%rsi,8)
	movq	240(%r9), %r8
	addq	%rdi, %r8
	movq	%r8, 24760(%rbx,%rsi,8)
	movq	14720(%rbx,%rsi,8), %r8
	movq	240(%r8), %r8
	addq	%rdi, %r8
	movq	%r8, 24768(%rbx,%rsi,8)
	movq	14728(%rbx,%rsi,8), %r8
	movq	240(%r8), %r8
	addq	%rdi, %r8
	movq	%r8, 24776(%rbx,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB12_44
.LBB12_45:                              # %for.cond456.preheader.loopexit.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB12_48
# %bb.46:                               # %for.body441.epil.preheader
	leaq	(%rbx,%rsi,8), %rdx
	addq	$24752, %rdx                    # imm = 0x60B0
	xorl	%esi, %esi
	leaq	(%rax,%rax), %rdi
	.p2align	4, 0x90
.LBB12_47:                              # %for.body441.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	-10048(%rdx,%rsi,8), %r8
	movq	240(%r8), %r8
	addq	%rdi, %r8
	movq	%r8, (%rdx,%rsi,8)
	incq	%rsi
	cmpq	%rsi, %rcx
	jne	.LBB12_47
.LBB12_48:                              # %for.cond456.preheader
	movslq	21420(%rbx), %rdx
	testq	%rdx, %rdx
	jle	.LBB12_56
# %bb.49:                               # %for.body464.lr.ph
	movl	%edx, %ecx
	andl	$3, %ecx
	cmpl	$4, %edx
	jae	.LBB12_51
# %bb.50:
	xorl	%esi, %esi
	jmp	.LBB12_53
.LBB12_51:                              # %for.body464.lr.ph.new
	andl	$2147483644, %edx               # imm = 0x7FFFFFFC
	xorl	%esi, %esi
	leaq	(%rax,%rax), %rdi
	.p2align	4, 0x90
.LBB12_52:                              # %for.body464
                                        # =>This Inner Loop Header: Depth=1
	movq	14864(%rbx,%rsi,8), %r8
	movq	14872(%rbx,%rsi,8), %r9
	movq	240(%r8), %r8
	addq	%rdi, %r8
	movq	%r8, 24880(%rbx,%rsi,8)
	movq	240(%r9), %r8
	addq	%rdi, %r8
	movq	%r8, 24888(%rbx,%rsi,8)
	movq	14880(%rbx,%rsi,8), %r8
	movq	240(%r8), %r8
	addq	%rdi, %r8
	movq	%r8, 24896(%rbx,%rsi,8)
	movq	14888(%rbx,%rsi,8), %r8
	movq	240(%r8), %r8
	addq	%rdi, %r8
	movq	%r8, 24904(%rbx,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB12_52
.LBB12_53:                              # %if.end479.loopexit.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB12_56
# %bb.54:                               # %for.body464.epil.preheader
	leaq	(%rbx,%rsi,8), %rdx
	addq	$24880, %rdx                    # imm = 0x6130
	xorl	%esi, %esi
	addq	%rax, %rax
	.p2align	4, 0x90
.LBB12_55:                              # %for.body464.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	-10016(%rdx,%rsi,8), %rdi
	movq	240(%rdi), %rdi
	addq	%rax, %rdi
	movq	%rdi, (%rdx,%rsi,8)
	incq	%rsi
	cmpq	%rsi, %rcx
	jne	.LBB12_55
.LBB12_56:                              # %if.end479
	movq	14680(%rbx), %rax
	movl	104(%rax), %esi
	movl	108(%rax), %ecx
	movl	%esi, %edx
	imull	%r14d, %edx
	addl	%r15d, %edx
	shll	$4, %edx
	movl	%ecx, %r8d
	imull	%r14d, %r8d
	addl	%r15d, %r8d
	shll	$3, %r8d
	movslq	%edx, %rdi
	addq	152(%rax), %rdi
	movl	%r15d, %r9d
	andl	$1, %r9d
	movslq	%r8d, %rdx
	addq	160(%rax,%r9,8), %rdx
	movl	%r15d, %r8d
	callq	*32800(%rbx)
	movl	7248(%rbx), %edx
	cmpl	$2, %edx
	je	.LBB12_109
# %bb.57:                               # %if.then484
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movd	16488(%rbx), %xmm0              # xmm0 = mem[0],zero,zero,zero
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	pand	.LCPI12_0(%rip), %xmm0
	pxor	%xmm1, %xmm1
	pcmpeqd	%xmm0, %xmm1
	movmskps	%xmm1, %ecx
	movl	%ecx, %r10d
	andb	$2, %r10b
	movl	%ecx, %eax
	andb	$4, %al
	shrb	$2, %al
	movl	%ecx, 4(%rsp)                   # 4-byte Spill
	movl	%ecx, %r8d
	shrb	$3, %r8b
	movslq	%r13d, %r11
	movslq	%r12d, %r15
	movq	16672(%rbx), %rbp
	movq	16704(%rbx), %r13
	je	.LBB12_59
# %bb.58:                               # %if.else538
	movb	$-2, 25123(%rbx)
	xorl	%esi, %esi
	jmp	.LBB12_60
.LBB12_59:                              # %if.then516
	movzbl	-1(%r13,%r11), %esi
	movb	%sil, 25123(%rbx)
	movl	-4(%rbp,%r15,4), %esi
.LBB12_60:                              # %if.end554
	movl	16380(%rbx), %r9d
	movl	16376(%rbx), %edi
	movl	%edi, 36(%rsp)                  # 4-byte Spill
	shrb	%r10b
	movl	128(%rbx), %edi
	movl	%edi, 20(%rsp)                  # 4-byte Spill
	movl	%esi, 25212(%rbx)
	testb	%al, %al
	je	.LBB12_63
# %bb.61:                               # %if.else610
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 25216(%rbx)
	movl	$-16843010, 25124(%rbx)         # imm = 0xFEFEFEFE
	testb	%r10b, %r10b
	movq	%r11, 40(%rsp)                  # 8-byte Spill
	movl	%edx, %ecx
	jne	.LBB12_64
.LBB12_62:                              # %if.then634
	movzbl	2(%r13,%r11), %esi
	movb	%sil, 25128(%rbx)
	movl	16(%rbp,%r15,4), %esi
	movl	%esi, 25232(%rbx)
	jmp	.LBB12_65
.LBB12_63:                              # %if.then560
	movzbl	(%r13,%r11), %esi
	movb	%sil, 25125(%rbx)
	movb	%sil, 25124(%rbx)
	movzbl	1(%r13,%r11), %esi
	movb	%sil, 25127(%rbx)
	movb	%sil, 25126(%rbx)
	movdqu	(%rbp,%r15,4), %xmm0
	movdqu	%xmm0, 25216(%rbx)
	testb	%r10b, %r10b
	movq	%r11, 40(%rsp)                  # 8-byte Spill
	movl	%edx, %ecx
	je	.LBB12_62
.LBB12_64:                              # %if.else657
	movb	$-2, 25128(%rbx)
.LBB12_65:                              # %if.end665
	leal	(%r9,%r9), %edx
	movq	%r9, %r11
	leal	(%r9,%r9,2), %r9d
	testb	$1, 4(%rsp)                     # 1-byte Folded Reload
	movq	%r15, 48(%rsp)                  # 8-byte Spill
	movl	%r9d, 32(%rsp)                  # 4-byte Spill
	je	.LBB12_67
# %bb.66:                               # %for.body778.preheader
	movq	%r11, %r12
	movb	$-2, 25131(%rbx)
	movl	$0, 25244(%rbx)
	movb	$-2, 25139(%rbx)
	movl	$0, 25276(%rbx)
	movb	$-2, 25147(%rbx)
	movl	$0, 25308(%rbx)
	movb	$-2, 25155(%rbx)
	movl	$0, 25340(%rbx)
	jmp	.LBB12_68
.LBB12_67:                              # %if.then671
	movslq	16396(%rbx), %r12
	movslq	16400(%rbx), %rsi
	movzbl	-1(%r13,%r12), %edi
	decq	%r12
	movb	%dil, 25139(%rbx)
	movb	%dil, 25131(%rbx)
	addl	36(%rsp), %r12d                 # 4-byte Folded Reload
	movslq	%r12d, %rdi
	movzbl	(%r13,%rdi), %edi
	movb	%dil, 25155(%rbx)
	movb	%dil, 25147(%rbx)
	movl	-4(%rbp,%rsi,4), %edi
	decq	%rsi
	movl	%edi, 25244(%rbx)
	movq	%r11, %r12
	leal	(%rsi,%r11), %edi
	movslq	%edi, %rdi
	movl	(%rbp,%rdi,4), %edi
	movl	%edi, 25276(%rbx)
	leal	(%rsi,%rdx), %edi
	movslq	%edi, %rdi
	movl	(%rbp,%rdi,4), %edi
	movl	%edi, 25308(%rbx)
	addl	%r9d, %esi
	movslq	%esi, %rsi
	movl	(%rbp,%rsi,4), %esi
	movl	%esi, 25340(%rbx)
.LBB12_68:                              # %if.end801
	movl	8(%rsp), %esi                   # 4-byte Reload
	movq	%rdx, %r13
	movslq	%esi, %rbp
	movslq	24(%rsp), %r15                  # 4-byte Folded Reload
	cmpl	$0, 20(%rsp)                    # 4-byte Folded Reload
	je	.LBB12_72
# %bb.69:                               # %if.then803
	movq	16688(%rbx), %rsi
	testb	%al, %al
	je	.LBB12_74
# %bb.70:
	xorl	%r11d, %r11d
	movq	%r11, 25528(%rbx)
	testb	$1, 4(%rsp)                     # 1-byte Folded Reload
	jne	.LBB12_75
.LBB12_71:                              # %if.then842
	movq	%r15, %rdi
	shlq	$4, %rdi
	movzwl	8(%rsi,%rdi), %r11d
	movw	%r11w, 25542(%rbx)
	movzwl	10(%rsi,%rdi), %r11d
	movw	%r11w, 25558(%rbx)
	movzwl	12(%rsi,%rdi), %r11d
	movw	%r11w, 25574(%rbx)
	movzwl	6(%rsi,%rdi), %esi
	movw	%si, 25590(%rbx)
.LBB12_72:                              # %if.end917
	cmpl	$1, %ecx
	je	.LBB12_76
	jmp	.LBB12_94
.LBB12_73:
	movl	%r8d, %r12d
	movl	%r11d, %r10d
	jmp	.LBB12_97
.LBB12_74:                              # %if.then813
	movq	%rbp, %rdi
	shlq	$4, %rdi
	movq	(%rsi,%rdi), %r11
	movq	%r11, 25528(%rbx)
	testb	$1, 4(%rsp)                     # 1-byte Folded Reload
	je	.LBB12_71
.LBB12_75:                              # %for.body901.preheader
	movw	$0, 25542(%rbx)
	movw	$0, 25558(%rbx)
	movw	$0, 25574(%rbx)
	movw	$0, 25590(%rbx)
	cmpl	$1, %ecx
	jne	.LBB12_94
.LBB12_76:                              # %for.body499.1
	movq	%rbp, 8(%rsp)                   # 8-byte Spill
	movq	16680(%rbx), %rbp
	movq	16712(%rbx), %r11
	testb	%r8b, %r8b
	je	.LBB12_81
# %bb.77:                               # %if.else538.1
	movb	$-2, 25163(%rbx)
	xorl	%esi, %esi
	movl	%esi, 25372(%rbx)
	testb	%al, %al
	jne	.LBB12_82
.LBB12_78:                              # %if.then560.1
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movzbl	(%r11,%rdi), %esi
	movb	%sil, 25165(%rbx)
	movb	%sil, 25164(%rbx)
	movzbl	1(%r11,%rdi), %esi
	movb	%sil, 25167(%rbx)
	movb	%sil, 25166(%rbx)
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movdqu	(%rbp,%rsi,4), %xmm0
	movdqu	%xmm0, 25376(%rbx)
	testb	%r10b, %r10b
	jne	.LBB12_83
.LBB12_79:                              # %if.then634.1
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movzbl	2(%r11,%rsi), %esi
	movb	%sil, 25168(%rbx)
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movl	16(%rbp,%rsi,4), %esi
	movl	%esi, 25392(%rbx)
	movl	32(%rsp), %r10d                 # 4-byte Reload
	testb	$1, 4(%rsp)                     # 1-byte Folded Reload
	jne	.LBB12_84
.LBB12_80:                              # %if.then671.1
	movslq	16396(%rbx), %rsi
	movslq	16400(%rbx), %rdi
	movzbl	-1(%r11,%rsi), %r8d
	decq	%rsi
	movb	%r8b, 25179(%rbx)
	movb	%r8b, 25171(%rbx)
	addl	36(%rsp), %esi                  # 4-byte Folded Reload
	movslq	%esi, %rsi
	movzbl	(%r11,%rsi), %esi
	movb	%sil, 25195(%rbx)
	movb	%sil, 25187(%rbx)
	movl	-4(%rbp,%rdi,4), %esi
	decq	%rdi
	movl	%esi, 25404(%rbx)
	addl	%edi, %r12d
	movslq	%r12d, %rsi
	movl	(%rbp,%rsi,4), %esi
	movl	%esi, 25436(%rbx)
	addl	%edi, %r13d
	movslq	%r13d, %rsi
	movl	(%rbp,%rsi,4), %esi
	movl	%esi, 25468(%rbx)
	addl	%edi, %r10d
	movslq	%r10d, %rsi
	movl	(%rbp,%rsi,4), %esi
	movl	%esi, 25500(%rbx)
	movq	8(%rsp), %r9                    # 8-byte Reload
	cmpl	$0, 20(%rsp)                    # 4-byte Folded Reload
	jne	.LBB12_85
.LBB12_88:                              # %if.end917.1
	cmpl	$1, %ecx
	jne	.LBB12_94
.LBB12_89:                              # %if.then925
	andl	16436(%rbx), %r14d
	andl	$1, %r14d
	movl	%r14d, %edx
	shll	$7, %edx
	shll	$8, %r14d
	addq	%rbx, %rdx
	addq	$26368, %rdx                    # imm = 0x6700
	movq	%rdx, 26624(%rbx)
	leaq	(%rbx,%r14), %rdx
	addq	$25848, %rdx                    # imm = 0x64F8
	movq	%rdx, 26360(%rbx)
	cmpl	$0, 20(%rsp)                    # 4-byte Folded Reload
	je	.LBB12_109
# %bb.90:                               # %if.then947
	movl	$0, 25692(%rbx)
	movl	$0, 25700(%rbx)
	movl	$0, 25708(%rbx)
	movl	$0, 25716(%rbx)
	testb	$1, 4(%rsp)                     # 1-byte Folded Reload
	je	.LBB12_104
# %bb.91:
	xorl	%ecx, %ecx
	jmp	.LBB12_105
.LBB12_81:                              # %if.then516.1
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movzbl	-1(%r11,%rsi), %esi
	movb	%sil, 25163(%rbx)
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movl	-4(%rbp,%rsi,4), %esi
	movl	%esi, 25372(%rbx)
	testb	%al, %al
	je	.LBB12_78
.LBB12_82:                              # %if.else610.1
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 25376(%rbx)
	movl	$-16843010, 25164(%rbx)         # imm = 0xFEFEFEFE
	testb	%r10b, %r10b
	je	.LBB12_79
.LBB12_83:                              # %if.else657.1
	movb	$-2, 25168(%rbx)
	movl	32(%rsp), %r10d                 # 4-byte Reload
	testb	$1, 4(%rsp)                     # 1-byte Folded Reload
	je	.LBB12_80
.LBB12_84:                              # %for.body778.preheader.1
	movb	$-2, 25171(%rbx)
	movl	$0, 25404(%rbx)
	movb	$-2, 25179(%rbx)
	movl	$0, 25436(%rbx)
	movb	$-2, 25187(%rbx)
	movl	$0, 25468(%rbx)
	movb	$-2, 25195(%rbx)
	movl	$0, 25500(%rbx)
	movq	8(%rsp), %r9                    # 8-byte Reload
	cmpl	$0, 20(%rsp)                    # 4-byte Folded Reload
	je	.LBB12_88
.LBB12_85:                              # %if.then803.1
	movq	16696(%rbx), %rsi
	testb	%al, %al
	je	.LBB12_92
# %bb.86:
	xorl	%edi, %edi
	movq	%rdi, 25608(%rbx)
	testb	$1, 4(%rsp)                     # 1-byte Folded Reload
	jne	.LBB12_93
.LBB12_87:                              # %if.then842.1
	movq	%r15, %rdi
	shlq	$4, %rdi
	movzwl	8(%rsi,%rdi), %r8d
	movw	%r8w, 25622(%rbx)
	movzwl	10(%rsi,%rdi), %r8d
	movw	%r8w, 25638(%rbx)
	movzwl	12(%rsi,%rdi), %r8d
	movw	%r8w, 25654(%rbx)
	movzwl	6(%rsi,%rdi), %esi
	movw	%si, 25670(%rbx)
	cmpl	$1, %ecx
	jne	.LBB12_94
	jmp	.LBB12_89
.LBB12_92:                              # %if.then813.1
	movq	%r9, %rdi
	shlq	$4, %rdi
	movq	(%rsi,%rdi), %rdi
	movq	%rdi, 25608(%rbx)
	testb	$1, 4(%rsp)                     # 1-byte Folded Reload
	je	.LBB12_87
.LBB12_93:                              # %for.body901.preheader.1
	movw	$0, 25622(%rbx)
	movw	$0, 25638(%rbx)
	movw	$0, 25654(%rbx)
	movw	$0, 25670(%rbx)
	cmpl	$1, %ecx
	je	.LBB12_89
.LBB12_94:                              # %if.end1008
	testl	%ecx, %ecx
	jne	.LBB12_109
# %bb.95:                               # %if.then1013
	leaq	25764(%rbx), %rsi
	movq	%rbx, %rdi
	callq	x264_mb_predict_mv_pskip@PLT
	jmp	.LBB12_109
.LBB12_96:
	movl	%r8d, %r12d
.LBB12_97:                              # %if.end213.i
	movq	24(%rsp), %rbp                  # 8-byte Reload
.LBB12_98:                              # %if.end213.i
	movq	3200(%rbx), %r9
	movl	1084(%r9), %r9d
	decl	%r9d
	cmpl	%r15d, %r9d
	jle	.LBB12_9
# %bb.99:                               # %if.end213.i
	cmpl	$-1, %r8d
	jl	.LBB12_9
# %bb.100:                              # %if.then221.i
	incl	%r8d
	orl	$4, %r10d
	movl	%r10d, 16576(%rbx)
	movl	%r8d, 16612(%rbx)
	movq	16616(%rbx), %r9
	movsbl	(%r9,%r8), %r9d
	movl	%r9d, 16592(%rbx)
	cmpl	7252(%rbx), %r8d
	jl	.LBB12_9
# %bb.101:                              # %if.then242.i
	orl	$4, %eax
	movl	%eax, 16488(%rbx)
	cmpl	$0, 140(%rbx)
	je	.LBB12_103
# %bb.102:                              # %if.then242.i
	cmpb	$3, %r9b
	ja	.LBB12_9
.LBB12_103:                             # %if.then269.i
	orl	$4, %r13d
	movl	%r13d, 16572(%rbx)
	jmp	.LBB12_9
.LBB12_104:                             # %cond.true
	movq	17232(%rbx), %rcx
	movzbl	(%rcx,%r15), %ecx
.LBB12_105:                             # %cond.end
	movl	%ecx, %edx
	andb	$2, %dl
	movb	%dl, 25691(%rbx)
	andb	$8, %cl
	movb	%cl, 25707(%rbx)
	testb	%al, %al
	je	.LBB12_107
# %bb.106:
	xorl	%eax, %eax
	jmp	.LBB12_108
.LBB12_107:                             # %cond.true979
	movq	17232(%rbx), %rax
	movzbl	(%rax,%r9), %eax
.LBB12_108:                             # %cond.end986
	movl	%eax, %ecx
	andb	$4, %cl
	movb	%cl, 25684(%rbx)
	andb	$8, %al
	movb	%al, 25686(%rbx)
.LBB12_109:                             # %if.end1018
	movl	16572(%rbx), %eax
	movl	%eax, %ecx
	andl	$11, %ecx
	movl	%eax, %edx
	andl	$2, %edx
	leal	(%rcx,%rdx,2), %ecx
	movl	%ecx, 16492(%rbx)
	movl	%ecx, 16508(%rbx)
	movl	%eax, %ecx
	shll	$30, %ecx
	sarl	$31, %ecx
	testb	$2, %al
	movl	$1, %edx
	movl	$15, %esi
	cmovel	%edx, %esi
	movl	%esi, 16512(%rbx)
	movl	%esi, 16524(%rbx)
	movl	%eax, %edx
	andl	$1, %edx
	leal	(%rdx,%rdx,8), %edx
	addl	$6, %edx
	movl	%edx, 16500(%rbx)
	movl	%edx, 16548(%rbx)
	movl	%edx, 16540(%rbx)
	movl	%edx, 16516(%rbx)
	andl	$4, %eax
	andl	$10, %ecx
	addl	%ecx, %eax
	incl	%eax
	movl	%eax, 16496(%rbx)
	movl	%eax, 16528(%rbx)
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
.Lfunc_end12:
	.size	x264_macroblock_cache_load, .Lfunc_end12-x264_macroblock_cache_load
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_macroblock_load_pic_pointers
	.type	x264_macroblock_load_pic_pointers,@function
x264_macroblock_load_pic_pointers:      # @x264_macroblock_load_pic_pointers
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
	movl	%ecx, %r13d
	movq	%rdi, %rbx
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	testl	%ecx, %ecx
	sete	%r8b
	movq	14688(%rdi), %r11
	setne	%al
	movl	104(%r11,%rax,4), %r9d
	movl	16436(%rdi), %edi
	movl	%r9d, %r10d
	movl	%edi, %ecx
	shll	%cl, %r10d
	movl	%r10d, 12(%rsp)                 # 4-byte Spill
	testl	%edi, %edi
	je	.LBB13_2
# %bb.1:                                # %cond.true
	movl	%edx, %r14d
	andl	$-2, %r14d
	imull	%r9d, %r14d
	addl	%esi, %r14d
	xorl	%r10d, %r10d
	cmpl	$1, %r13d
	movl	$0, %ecx
	adcb	$3, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r14d
	testb	$1, %dl
	cmovnel	%r9d, %r10d
	addl	%r14d, %r10d
	jmp	.LBB13_3
.LBB13_2:                               # %cond.false
	movl	%r9d, %r10d
	imull	%edx, %r10d
	addl	%esi, %r10d
	xorl	%ecx, %ecx
	cmpl	$1, %r13d
	adcb	$3, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r10d
.LBB13_3:                               # %cond.end
	leal	8(,%r8,8), %ebp
	movl	%r13d, %r14d
	movslq	%r10d, %r8
	movq	152(%r11,%r14,8), %r15
	addq	%r8, %r15
	movl	7268(%rbx), %ecx
	andl	%edx, %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%rbx,%rcx,8), %r11
	shll	$4, %esi
	movl	%eax, %ecx
	sarl	%cl, %esi
	movslq	%esi, %r12
	addq	31184(%r11,%r14,8), %r12
	movl	%r8d, 4(%rsp)
	testl	%edi, %edi
	je	.LBB13_5
# %bb.4:                                # %if.then
	addl	%edx, %edx
	andl	$2, %edx
	movl	$1, %eax
	subl	%edx, %eax
	imull	%eax, %r9d
	addl	%r9d, %r10d
.LBB13_5:                               # %if.end
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	%ecx, 25008(%rbx,%r14,4)
	movq	14680(%rbx), %rax
	addq	152(%rax,%r14,8), %r8
	xorl	%eax, %eax
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	testl	%r13d, %r13d
	setne	%al
	movl	$25, %edx
	movl	$13, %r13d
	cmoveq	%rdx, %r13
	movq	%r8, 21368(%rbx,%r14,8)
	shll	$3, %eax
	leal	(%rax,%rax,2), %eax
	movq	21344(%rbx,%r14,8), %rdi
	movl	$16, %esi
	movq	%r8, %rdx
	movl	%ebp, %r8d
	callq	*32720(%rbx,%rax)
	movq	21392(%rbx,%r14,8), %rdi
	addq	$-33, %rdi
	decq	%r12
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	memcpy@PLT
	cmpl	$0, 16436(%rbx)
	je	.LBB13_8
# %bb.6:                                # %for.cond.preheader
	decq	%r15
	movslq	12(%rsp), %rax                  # 4-byte Folded Reload
	movl	%ebp, %ecx
	leaq	(%rax,%rax,2), %rdx
	leaq	(,%rax,4), %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB13_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r15), %r8d
	movq	21392(%rbx,%r14,8), %r9
	movb	%r8b, -1(%r9,%rdi)
	movzbl	(%r15,%rax), %r8d
	movq	21392(%rbx,%r14,8), %r9
	movb	%r8b, 31(%r9,%rdi)
	movzbl	(%r15,%rax,2), %r8d
	movq	21392(%rbx,%r14,8), %r9
	movb	%r8b, 63(%r9,%rdi)
	movzbl	(%r15,%rdx), %r8d
	movq	21392(%rbx,%r14,8), %r9
	movb	%r8b, 95(%r9,%rdi)
	subq	$-128, %rdi
	addq	%rsi, %r15
	addq	$-4, %rcx
	jne	.LBB13_7
.LBB13_8:                               # %if.end94
	movslq	21416(%rbx), %rsi
	testq	%rsi, %rsi
	jle	.LBB13_19
# %bb.9:                                # %for.body103.lr.ph
	leaq	21424(%rbx), %rax
	movq	16(%rsp), %rdi                  # 8-byte Reload
	leal	3(%rdi), %edx
	movl	16436(%rbx), %ecx
	testl	%edi, %edi
	cmovel	%edi, %edx
	je	.LBB13_10
# %bb.13:                               # %for.body103.preheader
	cmpl	$1, %esi
	jne	.LBB13_26
# %bb.14:
	xorl	%edi, %edi
	jmp	.LBB13_15
.LBB13_10:                              # %for.body103.us.preheader
	leaq	7584(%rbx), %rdi
	xorl	%r8d, %r8d
	jmp	.LBB13_11
	.p2align	4, 0x90
.LBB13_17:                              # %if.else.us
                                        #   in Loop: Header=BB13_11 Depth=1
	movq	(%rax,%r11), %r10
	movq	%r10, 24496(%rbx,%r8,8)
	incq	%r8
	cmpq	%rsi, %r8
	je	.LBB13_19
.LBB13_11:                              # %for.body103.us
                                        # =>This Inner Loop Header: Depth=1
	movl	%r8d, %r9d
	shrl	%cl, %r9d
	movq	14704(%rbx,%r9,8), %r11
	movl	%r8d, %r10d
	andl	$1, %r10d
	movslq	4(%rsp,%r10,4), %r10
	movq	152(%r11,%r14,8), %r15
	addq	%r10, %r15
	leaq	(%r8,%r8,2), %r12
	movq	%r12, %r11
	shlq	$4, %r11
	leaq	(%rax,%r11), %r13
	movq	%r15, (%r13,%rdx,8)
	movq	14704(%rbx,%r9,8), %r15
	movq	184(%r15), %r15
	addq	%r10, %r15
	movq	%r15, 8(%rax,%r11)
	movq	14704(%rbx,%r9,8), %r15
	movq	192(%r15), %r15
	addq	%r10, %r15
	movq	%r15, 16(%rax,%r11)
	movq	14704(%rbx,%r9,8), %r15
	movq	200(%r15), %r15
	addq	%r10, %r15
	movq	%r15, 24(%rax,%r11)
	shlq	$6, %r12
	cmpq	$0, 48(%rdi,%r12)
	je	.LBB13_17
# %bb.12:                               # %if.then169.us
                                        #   in Loop: Header=BB13_11 Depth=1
	movq	14680(%rbx), %r11
	addq	3392(%r11,%r9,8), %r10
	movq	%r10, 24496(%rbx,%r8,8)
	incq	%r8
	cmpq	%rsi, %r8
	jne	.LBB13_11
	jmp	.LBB13_19
.LBB13_26:                              # %for.body103.preheader.new
	movl	%esi, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	movslq	4(%rsp), %r9
	movslq	8(%rsp), %r10
	leaq	(%rbx,%rdx,8), %r11
	addq	$21472, %r11                    # imm = 0x53E0
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB13_27:                              # %for.body103
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, %r15d
	shrl	%cl, %r15d
	movq	14704(%rbx,%r15,8), %r15
	movq	152(%r15,%r14,8), %r15
	addq	%r9, %r15
	leal	1(%rdi), %r12d
	shrl	%cl, %r12d
	movq	%r15, -48(%r11)
	movq	14704(%rbx,%r12,8), %r15
	movq	152(%r15,%r14,8), %r15
	addq	%r10, %r15
	movq	%r15, (%r11)
	addq	$2, %rdi
	addq	$96, %r11
	cmpq	%r8, %rdi
	jne	.LBB13_27
.LBB13_15:                              # %for.cond.cleanup102.loopexit433.unr-lcssa
	testb	$1, %sil
	je	.LBB13_19
# %bb.16:                               # %for.body103.epil
	movl	%edi, %esi
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %esi
	movq	14704(%rbx,%rsi,8), %rcx
	movl	%edi, %esi
	andl	$1, %esi
	movslq	4(%rsp,%rsi,4), %rsi
	addq	152(%rcx,%r14,8), %rsi
	leaq	(%rdi,%rdi,2), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rsi, (%rax,%rdx,8)
.LBB13_19:                              # %for.cond.cleanup102
	cmpl	$1, 7248(%rbx)
	jne	.LBB13_32
# %bb.20:                               # %for.cond207.preheader
	movslq	21420(%rbx), %rdx
	testq	%rdx, %rdx
	jle	.LBB13_32
# %bb.21:                               # %for.body215.lr.ph
	movq	16(%rsp), %rsi                  # 8-byte Reload
	leal	3(%rsi), %eax
	movl	16436(%rbx), %ecx
	testl	%esi, %esi
	cmovel	%esi, %eax
	je	.LBB13_22
# %bb.24:                               # %for.body215.preheader
	cmpl	$1, %edx
	jne	.LBB13_28
# %bb.25:
	xorl	%esi, %esi
	jmp	.LBB13_30
.LBB13_22:                              # %for.body215.us.preheader
	leaq	22984(%rbx), %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB13_23:                              # %for.body215.us
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, %r8d
	shrl	%cl, %r8d
	movq	14864(%rbx,%r8,8), %r9
	movl	%edi, %r10d
	andl	$1, %r10d
	movslq	4(%rsp,%r10,4), %r10
	movq	152(%r9,%r14,8), %r9
	addq	%r10, %r9
	movq	%r9, -24(%rsi,%rax,8)
	movq	14864(%rbx,%r8,8), %r9
	movq	184(%r9), %r9
	addq	%r10, %r9
	movq	%r9, -16(%rsi)
	movq	14864(%rbx,%r8,8), %r9
	movq	192(%r9), %r9
	addq	%r10, %r9
	movq	%r9, -8(%rsi)
	movq	14864(%rbx,%r8,8), %r8
	addq	200(%r8), %r10
	movq	%r10, (%rsi)
	incq	%rdi
	addq	$48, %rsi
	cmpq	%rdi, %rdx
	jne	.LBB13_23
	jmp	.LBB13_32
.LBB13_28:                              # %for.body215.preheader.new
	movl	%edx, %edi
	andl	$2147483646, %edi               # imm = 0x7FFFFFFE
	movslq	4(%rsp), %r8
	movslq	8(%rsp), %r9
	leaq	(%rbx,%rax,8), %r10
	addq	$23008, %r10                    # imm = 0x59E0
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB13_29:                              # %for.body215
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %r11d
	shrl	%cl, %r11d
	movq	14864(%rbx,%r11,8), %r11
	movq	152(%r11,%r14,8), %r11
	addq	%r8, %r11
	leal	1(%rsi), %r15d
	shrl	%cl, %r15d
	movq	%r11, -48(%r10)
	movq	14864(%rbx,%r15,8), %r11
	movq	152(%r11,%r14,8), %r11
	addq	%r9, %r11
	movq	%r11, (%r10)
	addq	$2, %rsi
	addq	$96, %r10
	cmpq	%rdi, %rsi
	jne	.LBB13_29
.LBB13_30:                              # %if.end283.loopexit432.unr-lcssa
	testb	$1, %dl
	je	.LBB13_32
# %bb.31:                               # %for.body215.epil
	movl	%esi, %edx
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %edx
	movq	14864(%rbx,%rdx,8), %rcx
	addq	$22960, %rbx                    # imm = 0x59B0
	movl	%esi, %edx
	andl	$1, %edx
	movslq	4(%rsp,%rdx,4), %rdx
	addq	152(%rcx,%r14,8), %rdx
	leaq	(%rsi,%rsi,2), %rcx
	shlq	$4, %rcx
	addq	%rbx, %rcx
	movq	%rdx, (%rcx,%rax,8)
.LBB13_32:                              # %if.end283
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
.Lfunc_end13:
	.size	x264_macroblock_load_pic_pointers, .Lfunc_end13-x264_macroblock_load_pic_pointers
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_load_neighbours_deblock # -- Begin function x264_macroblock_cache_load_neighbours_deblock
	.p2align	4, 0x90
	.type	x264_macroblock_cache_load_neighbours_deblock,@function
x264_macroblock_cache_load_neighbours_deblock: # @x264_macroblock_cache_load_neighbours_deblock
	.cfi_startproc
# %bb.0:                                # %entry
	movl	13884(%rdi), %r8d
	movzbl	16436(%rdi), %ecx
	movl	$-1, %eax
	shll	%cl, %eax
	addl	%edx, %eax
	movl	16372(%rdi), %ecx
	imull	%ecx, %eax
	addl	%esi, %eax
	movl	$0, 16488(%rdi)
	imull	%edx, %ecx
	addl	%esi, %ecx
	movl	%ecx, 16392(%rdi)
	testl	%esi, %esi
	jle	.LBB14_1
# %bb.2:                                # %if.then
	leal	-1(%rcx), %edx
	movl	%edx, 16600(%rdi)
	cmpl	$2, %r8d
	jne	.LBB14_4
# %bb.3:                                # %lor.lhs.false
	movq	17248(%rdi), %rsi
	movslq	%edx, %rdx
	movzwl	(%rsi,%rdx,2), %edx
	movslq	%ecx, %r9
	cmpw	(%rsi,%r9,2), %dx
	jne	.LBB14_8
.LBB14_4:                               # %if.then27
	movl	$1, 16488(%rdi)
	movl	$1, %edx
	testl	%eax, %eax
	jns	.LBB14_6
.LBB14_12:                              # %if.end58
	retq
.LBB14_1:
	xorl	%edx, %edx
	testl	%eax, %eax
	js	.LBB14_12
.LBB14_6:                               # %if.then33
	movl	%eax, 16604(%rdi)
	cmpl	$2, %r8d
	jne	.LBB14_11
# %bb.7:                                # %if.then33.lor.lhs.false36_crit_edge
	movq	17248(%rdi), %rsi
	movslq	%ecx, %r9
	movl	%eax, %eax
	movzwl	(%rsi,%rax,2), %eax
	cmpw	(%rsi,%r9,2), %ax
	jne	.LBB14_12
	jmp	.LBB14_11
.LBB14_8:                               # %if.end30.thread
	testl	%eax, %eax
	js	.LBB14_12
# %bb.9:                                # %if.then33.thread
	movl	%eax, 16604(%rdi)
	xorl	%edx, %edx
	movl	%eax, %eax
	movzwl	(%rsi,%rax,2), %eax
	cmpw	(%rsi,%r9,2), %ax
	jne	.LBB14_12
.LBB14_11:                              # %if.then53
	orl	$2, %edx
	movl	%edx, 16488(%rdi)
	retq
.Lfunc_end14:
	.size	x264_macroblock_cache_load_neighbours_deblock, .Lfunc_end14-x264_macroblock_cache_load_neighbours_deblock
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_load_deblock # -- Begin function x264_macroblock_cache_load_deblock
	.p2align	4, 0x90
	.type	x264_macroblock_cache_load_deblock,@function
x264_macroblock_cache_load_deblock:     # @x264_macroblock_cache_load_deblock
	.cfi_startproc
# %bb.0:                                # %entry
	movq	16616(%rdi), %rax
	movslq	16392(%rdi), %rcx
	cmpb	$4, (%rax,%rcx)
	jb	.LBB15_22
# %bb.1:                                # %if.end
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
	cmpl	$0, 7252(%rdi)
	je	.LBB15_19
# %bb.2:                                # %land.lhs.true
	cmpl	$2, 13884(%rdi)
	je	.LBB15_19
# %bb.3:                                # %if.then35
	movl	16488(%rdi), %eax
	movl	16372(%rdi), %r8d
	movl	16384(%rdi), %edx
	movl	16388(%rdi), %r9d
	movzbl	16436(%rdi), %ecx
	movl	$-1, %esi
	shll	%cl, %esi
	addl	%r9d, %esi
	movl	%esi, %ecx
	imull	%r8d, %ecx
	addl	%edx, %ecx
	imull	%r9d, %r8d
	addl	%edx, %r8d
	movl	%r8d, 16392(%rdi)
	testl	%edx, %edx
	jle	.LBB15_4
# %bb.5:                                # %if.then27.i
	decl	%r8d
	movl	%r8d, 16600(%rdi)
	movl	$3, %r9d
	movl	$1, %r8d
	testl	%ecx, %ecx
	js	.LBB15_8
.LBB15_7:                               # %if.then53.i
	movl	%ecx, 16604(%rdi)
	movl	%r9d, %r8d
.LBB15_8:                               # %x264_macroblock_cache_load_neighbours_deblock.exit
	notl	%eax
	andl	%r8d, %eax
	movl	%eax, 16488(%rdi)
	je	.LBB15_19
# %bb.9:                                # %if.then44
	movslq	16600(%rdi), %r9
	leal	1(,%rsi,2), %ecx
	movl	16376(%rdi), %r8d
	movl	16380(%rdi), %r10d
	imull	%r8d, %ecx
	leal	(%rcx,%rdx,2), %ebx
	leal	3(,%rsi,4), %ecx
	imull	%r10d, %ecx
	leal	(%rcx,%rdx,4), %ebp
	movq	16656(%rdi), %rsi
	testb	$2, %al
	jne	.LBB15_14
# %bb.10:                               # %if.end76
	testb	$1, %al
	jne	.LBB15_11
	jmp	.LBB15_19
.LBB15_4:
	movl	$2, %r9d
	xorl	%r8d, %r8d
	testl	%ecx, %ecx
	jns	.LBB15_7
	jmp	.LBB15_8
.LBB15_14:                              # %if.end76.thread
	movslq	16604(%rdi), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	12(%rsi,%rcx,8), %ecx
	movl	%ecx, 25076(%rdi)
	testb	$1, %al
	jne	.LBB15_11
# %bb.15:                               # %for.body.us.preheader
	xorl	%eax, %eax
	cmpl	$1, 7248(%rdi)
	sete	%al
	movslq	%ebx, %rcx
	movslq	%ebp, %rdx
	incq	%rax
	movl	$25127, %esi                    # imm = 0x6227
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB15_16:                              # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	movq	16672(%rdi,%r8,8), %r9
	movq	16704(%rdi,%r8,8), %r10
	movzbl	(%r10,%rcx), %r11d
	movb	%r11b, -2(%rdi,%rsi)
	movb	%r11b, -3(%rdi,%rsi)
	movzbl	1(%r10,%rcx), %r10d
	movb	%r10b, (%rdi,%rsi)
	movb	%r10b, -1(%rdi,%rsi)
	movups	(%r9,%rdx,4), %xmm0
	movups	%xmm0, -75292(%rdi,%rsi,4)
	incq	%r8
	addq	$40, %rsi
	cmpq	%r8, %rax
	jne	.LBB15_16
	jmp	.LBB15_19
.LBB15_11:                              # %if.end118.split
	xorl	%ecx, %ecx
	cmpl	$1, 7248(%rdi)
	sete	%cl
	movslq	16396(%rdi), %rdx
	decq	%rdx
	addl	%edx, %r8d
	incq	%rcx
	leaq	(%r9,%r9,2), %r9
	movzbl	3(%rsi,%r9,8), %r11d
	movb	%r11b, 25083(%rdi)
	movzbl	7(%rsi,%r9,8), %r11d
	movb	%r11b, 25091(%rdi)
	movzbl	11(%rsi,%r9,8), %r11d
	movb	%r11b, 25099(%rdi)
	movzbl	15(%rsi,%r9,8), %esi
	movb	%sil, 25107(%rdi)
	leal	(%r10,%r10,2), %r11d
	movslq	16400(%rdi), %rsi
	movslq	%r8d, %r8
	leal	-1(%rsi,%r10), %r9d
	movslq	%r9d, %r9
	leal	-1(%rsi,%r10,2), %r10d
	movslq	%r10d, %r10
	addl	%esi, %r11d
	decl	%r11d
	movslq	%r11d, %r11
	testb	$2, %al
	jne	.LBB15_12
# %bb.17:                               # %for.body.us657.preheader
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB15_18:                              # %for.body.us657
                                        # =>This Inner Loop Header: Depth=1
	movq	16672(%rdi,%rbx,8), %r14
	movq	16704(%rdi,%rbx,8), %r15
	movzbl	(%r15,%rdx), %ebp
	movb	%bpl, 25139(%rdi,%rax)
	movb	%bpl, 25131(%rdi,%rax)
	movzbl	(%r15,%r8), %ebp
	movb	%bpl, 25155(%rdi,%rax)
	movb	%bpl, 25147(%rdi,%rax)
	movl	-4(%r14,%rsi,4), %ebp
	movl	%ebp, 25244(%rdi,%rax,4)
	movl	(%r14,%r9,4), %ebp
	movl	%ebp, 25276(%rdi,%rax,4)
	movl	(%r14,%r10,4), %ebp
	movl	%ebp, 25308(%rdi,%rax,4)
	movl	(%r14,%r11,4), %ebp
	movl	%ebp, 25340(%rdi,%rax,4)
	incq	%rbx
	addq	$40, %rax
	cmpq	%rbx, %rcx
	jne	.LBB15_18
	jmp	.LBB15_19
.LBB15_12:                              # %for.body.preheader
	movslq	%ebx, %rax
	movslq	%ebp, %rbx
	movq	%rbx, -8(%rsp)                  # 8-byte Spill
	leaq	25340(%rdi), %r14
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB15_13:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8668(%r14,%r12,8), %r13
	movq	-8636(%r14,%r12,8), %rbp
	movzbl	(%rbp,%rax), %ebx
	movb	%bl, -215(%r14,%r15)
	movb	%bl, -216(%r14,%r15)
	movzbl	1(%rbp,%rax), %ebx
	movb	%bl, -213(%r14,%r15)
	movb	%bl, -214(%r14,%r15)
	movq	-8(%rsp), %rbx                  # 8-byte Reload
	movups	(%r13,%rbx,4), %xmm0
	movups	%xmm0, -124(%r14,%r15,4)
	movzbl	(%rbp,%rdx), %ebx
	movb	%bl, -201(%r14,%r15)
	movb	%bl, -209(%r14,%r15)
	movzbl	(%rbp,%r8), %ebx
	movb	%bl, -185(%r14,%r15)
	movb	%bl, -193(%r14,%r15)
	movl	-4(%r13,%rsi,4), %ebx
	movl	%ebx, -96(%r14,%r15,4)
	movl	(%r13,%r9,4), %ebx
	movl	%ebx, -64(%r14,%r15,4)
	movl	(%r13,%r10,4), %ebx
	movl	%ebx, -32(%r14,%r15,4)
	movl	(%r13,%r11,4), %ebx
	movl	%ebx, (%r14,%r15,4)
	incq	%r12
	addq	$40, %r15
	cmpq	%r12, %rcx
	jne	.LBB15_13
.LBB15_19:                              # %if.end295
	cmpl	$0, 396(%rdi)
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
	je	.LBB15_22
# %bb.20:                               # %land.lhs.true297
	cmpl	$0, 7248(%rdi)
	je	.LBB15_21
.LBB15_22:                              # %if.end504
	retq
.LBB15_21:                              # %if.then302
	movsbq	25124(%rdi), %rax
	movzbl	26658(%rax,%rdi), %eax
	movb	%al, 25125(%rdi)
	movb	%al, 25124(%rdi)
	movsbq	25126(%rdi), %rax
	movzbl	26658(%rax,%rdi), %eax
	movb	%al, 25127(%rdi)
	movb	%al, 25126(%rdi)
	movsbq	25131(%rdi), %rax
	movzbl	26658(%rax,%rdi), %eax
	movb	%al, 25139(%rdi)
	movb	%al, 25131(%rdi)
	movsbq	25147(%rdi), %rax
	movzbl	26658(%rax,%rdi), %eax
	movb	%al, 25155(%rdi)
	movb	%al, 25147(%rdi)
	movsbq	25132(%rdi), %rax
	movzbl	26658(%rax,%rdi), %eax
	movsbq	25134(%rdi), %rcx
	movzbl	26658(%rcx,%rdi), %ecx
	movsbq	25148(%rdi), %rdx
	movzbl	26658(%rdx,%rdi), %edx
	movsbq	25150(%rdi), %rsi
	movzbl	26658(%rsi,%rdi), %esi
	shll	$16, %ecx
	orl	%eax, %ecx
	movl	%ecx, %eax
	shll	$8, %eax
	orl	%ecx, %eax
	shll	$16, %esi
	orl	%edx, %esi
	movl	%esi, %ecx
	shll	$8, %ecx
	orl	%esi, %ecx
	movl	%eax, 25132(%rdi)
	movl	%eax, 25140(%rdi)
	movl	%ecx, 25148(%rdi)
	movl	%ecx, 25156(%rdi)
	retq
.Lfunc_end15:
	.size	x264_macroblock_cache_load_deblock, .Lfunc_end15-x264_macroblock_cache_load_deblock
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function x264_macroblock_cache_save
.LCPI16_0:
	.zero	16,16
.LCPI16_1:
	.zero	16,12
	.text
	.globl	x264_macroblock_cache_save
	.p2align	4, 0x90
	.type	x264_macroblock_cache_save,@function
x264_macroblock_cache_save:             # @x264_macroblock_cache_save
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
	movl	16392(%rdi), %eax
	movslq	17384(%rdi), %r15
	movslq	%eax, %r14
	leaq	(%r14,%r14,2), %r13
	shlq	$3, %r13
	movq	14688(%rdi), %rax
	movl	104(%rax), %esi
	movl	16436(%rdi), %ecx
	movl	16384(%rdi), %edx
	movl	16388(%rdi), %edi
	testl	%ecx, %ecx
	je	.LBB16_2
# %bb.1:                                # %cond.true.i
	movl	%edi, %r8d
	andl	$268435454, %r8d                # imm = 0xFFFFFFE
	imull	%esi, %r8d
	addl	%edx, %r8d
	shll	$4, %r8d
	xorl	%edx, %edx
	testb	$1, %dil
	cmovnel	%esi, %edx
	addl	%r8d, %edx
	jmp	.LBB16_3
.LBB16_2:                               # %cond.false.i
	imull	%esi, %edi
	addl	%edx, %edi
	shll	$4, %edi
	movl	%edi, %edx
.LBB16_3:                               # %x264_macroblock_store_pic.exit
	movslq	16376(%rbx), %rdi
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	movslq	16380(%rbx), %rdi
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	movzbl	x264_mb_type_fix(%r15), %ebp
	movslq	16400(%rbx), %r12
	movslq	16396(%rbx), %rdi
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	movq	16648(%rbx), %rdi
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	addq	16656(%rbx), %r13
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %esi
	movslq	%edx, %rdi
	addq	152(%rax), %rdi
	movq	21392(%rbx), %rdx
	movl	$32, %ecx
	movl	$16, %r8d
	callq	*32720(%rbx)
	movq	14688(%rbx), %rax
	movl	108(%rax), %esi
	movl	16436(%rbx), %ecx
	movl	16384(%rbx), %edi
	movl	16388(%rbx), %edx
	testl	%ecx, %ecx
	je	.LBB16_5
# %bb.4:                                # %cond.true.i964
	movl	%edx, %r8d
	andl	$536870910, %r8d                # imm = 0x1FFFFFFE
	imull	%esi, %r8d
	addl	%edi, %r8d
	xorl	%edi, %edi
	testb	$1, %dl
	cmovnel	%esi, %edi
	leal	(%rdi,%r8,8), %edx
	jmp	.LBB16_6
.LBB16_5:                               # %cond.false.i978
	imull	%esi, %edx
	addl	%edi, %edx
	shll	$3, %edx
.LBB16_6:                               # %x264_macroblock_store_pic.exit982
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %esi
	movslq	%edx, %rdi
	addq	160(%rax), %rdi
	movq	21400(%rbx), %rdx
	movl	$32, %ecx
	movl	$8, %r8d
	callq	*32744(%rbx)
	movq	14688(%rbx), %rax
	movl	108(%rax), %esi
	movl	16436(%rbx), %ecx
	movl	16384(%rbx), %edi
	movl	16388(%rbx), %edx
	testl	%ecx, %ecx
	je	.LBB16_8
# %bb.7:                                # %cond.true.i990
	movl	%edx, %r8d
	andl	$536870910, %r8d                # imm = 0x1FFFFFFE
	imull	%esi, %r8d
	addl	%edi, %r8d
	xorl	%edi, %edi
	testb	$1, %dl
	cmovnel	%esi, %edi
	leal	(%rdi,%r8,8), %edx
	jmp	.LBB16_9
.LBB16_8:                               # %cond.false.i1007
	imull	%esi, %edx
	addl	%edi, %edx
	shll	$3, %edx
.LBB16_9:                               # %x264_macroblock_store_pic.exit1011
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %esi
	movslq	%edx, %rdi
	addq	168(%rax), %rdi
	movq	21408(%rbx), %rdx
	movl	$32, %ecx
	movl	$8, %r8d
	callq	*32744(%rbx)
	movq	14688(%rbx), %rax
	movl	16384(%rbx), %r8d
	movl	16388(%rbx), %edx
	movl	104(%rax), %esi
	movl	108(%rax), %ecx
	movl	%esi, %edi
	imull	%edx, %edi
	addl	%r8d, %edi
	shll	$4, %edi
	imull	%ecx, %edx
	addl	%r8d, %edx
	shll	$3, %edx
	movslq	%edi, %rdi
	addq	152(%rax), %rdi
	movl	%r8d, %r9d
	andl	$1, %r9d
	movslq	%edx, %rdx
	addq	160(%rax,%r9,8), %rdx
	callq	*32800(%rbx)
	movq	16616(%rbx), %rax
	movb	%bpl, (%rax,%r14)
	movzwl	7252(%rbx), %eax
	movq	17248(%rbx), %rcx
	movw	%ax, (%rcx,%r14,2)
	cmpl	$4, %r15d
	jae	.LBB16_10
# %bb.19:                               # %cond.end
	movq	16624(%rbx), %rax
	movb	$16, (%rax,%r14)
	movl	%r14d, 16596(%rbx)
	cmpl	$1, %r15d
	movq	32(%rsp), %r8                   # 8-byte Reload
	ja	.LBB16_11
# %bb.20:                               # %if.then
	movl	25060(%rbx), %eax
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	%eax, (%rsi,%r14,8)
	movsbl	25039(%rbx), %eax
	movsbl	25047(%rbx), %ecx
	movsbl	25055(%rbx), %edx
	shll	$8, %ecx
	addl	%eax, %ecx
	shll	$16, %edx
	addl	%ecx, %edx
	movl	%edx, 4(%rsi,%r14,8)
	jmp	.LBB16_14
.LBB16_10:                              # %cond.end.thread
	movzbl	17388(%rbx), %eax
	movq	16624(%rbx), %rcx
	movb	%al, (%rcx,%r14)
	movl	%r14d, 16596(%rbx)
	movq	32(%rsp), %r8                   # 8-byte Reload
.LBB16_11:                              # %if.else
	movl	%r15d, %eax
	andl	$-2, %eax
	cmpl	$2, %eax
	je	.LBB16_21
# %bb.12:                               # %if.else
	cmpl	$0, 140(%rbx)
	je	.LBB16_21
# %bb.13:                               # %if.else78
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	$-1, (%rax,%r14,8)
	jmp	.LBB16_14
.LBB16_21:                              # %if.end79
	movabsq	$144680345676153346, %rax       # imm = 0x202020202020202
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, (%rcx,%r14,8)
	cmpl	$3, %r15d
	jne	.LBB16_14
# %bb.22:                               # %if.then82
	movq	16632(%rbx), %rax
	movb	$0, (%rax,%r14)
	movl	$0, 25804(%rbx)
	movabsq	$8589934607, %rax               # imm = 0x20000000F
	movq	%rax, 17400(%rbx)
	movq	16640(%rbx), %rax
	movw	$1839, (%rax,%r14,2)            # imm = 0x72F
	movl	$0, 17396(%rbx)
	movabsq	$1157442765409226768, %rax      # imm = 0x1010101010101010
	movq	%rax, 16(%r13)
	movaps	.LCPI16_0(%rip), %xmm0          # xmm0 = [16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16]
	movups	%xmm0, (%r13)
	movw	$4112, 25081(%rbx)              # imm = 0x1010
	movw	$4112, 25089(%rbx)              # imm = 0x1010
	movw	$4112, 25105(%rbx)              # imm = 0x1010
	movw	$4112, 25113(%rbx)              # imm = 0x1010
	movl	$269488144, 25084(%rbx)         # imm = 0x10101010
	movl	$269488144, 25092(%rbx)         # imm = 0x10101010
	movl	$269488144, 25100(%rbx)         # imm = 0x10101010
	movl	$269488144, 25108(%rbx)         # imm = 0x10101010
	cmpl	$0, 17400(%rbx)
	jne	.LBB16_26
	jmp	.LBB16_24
.LBB16_14:                              # %if.else102
	movl	25084(%rbx), %eax
	movl	%eax, (%r13)
	movl	25092(%rbx), %eax
	movl	%eax, 4(%r13)
	movl	25100(%rbx), %eax
	movl	%eax, 8(%r13)
	movl	25108(%rbx), %eax
	movl	%eax, 12(%r13)
	movzwl	25081(%rbx), %eax
	movw	%ax, 16(%r13)
	movzwl	25089(%rbx), %eax
	movw	%ax, 18(%r13)
	movzwl	25105(%rbx), %eax
	movw	%ax, 20(%r13)
	movzwl	25113(%rbx), %eax
	movw	%ax, 22(%r13)
	cmpl	$2, 17384(%rbx)
	je	.LBB16_18
# %bb.15:                               # %land.lhs.true
	cmpl	$0, 17400(%rbx)
	jne	.LBB16_18
# %bb.16:                               # %land.lhs.true172
	cmpl	$0, 17404(%rbx)
	jne	.LBB16_18
# %bb.17:                               # %if.then177
	movl	25800(%rbx), %eax
	movl	%eax, 25792(%rbx)
.LBB16_18:                              # %if.end180
	movzbl	25792(%rbx), %eax
	movq	16632(%rbx), %rcx
	movb	%al, (%rcx,%r14)
	movl	25792(%rbx), %eax
	movl	%eax, %ecx
	subl	25800(%rbx), %ecx
	movl	%ecx, 25804(%rbx)
	movl	%eax, 25800(%rbx)
	cmpl	$0, 17400(%rbx)
	jne	.LBB16_26
.LBB16_24:                              # %land.lhs.true204
	cmpl	$1, 17384(%rbx)
	je	.LBB16_26
# %bb.25:                               # %if.then209
	movl	$0, 17396(%rbx)
.LBB16_26:                              # %if.end212
	movzbl	17396(%rbx), %eax
	movq	17240(%rbx), %rcx
	movb	%al, (%rcx,%r14)
	cmpl	$2, 7248(%rbx)
	jne	.LBB16_27
.LBB16_32:                              # %if.end493
	cmpl	$0, 128(%rbx)
	je	.LBB16_49
# %bb.33:                               # %if.then496
	movq	%r14, %rax
	shlq	$4, %rax
	cmpl	$2, %r15d
	ja	.LBB16_34
# %bb.35:                               # %if.then522
	movslq	17412(%rbx), %rcx
	movzbl	x264_mb_pred_mode8x8c_fix(%rcx), %edx
	jmp	.LBB16_36
.LBB16_27:                              # %if.then223
	shlq	$2, %r12
	movq	16672(%rbx), %rax
	addq	%r12, %rax
	addq	16680(%rbx), %r12
	movq	16704(%rbx), %rcx
	addq	%r8, %rcx
	addq	16712(%rbx), %r8
	cmpl	$4, %r15d
	jae	.LBB16_28
# %bb.30:                               # %if.else427
	movw	$-1, (%rcx)
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movw	$-1, (%rcx,%rdx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movq	16(%rsp), %rdx                  # 8-byte Reload
	leal	(%rdx,%rdx), %ecx
	movslq	%ecx, %rcx
	movups	%xmm0, (%rax,%rdx,4)
	leal	(%rdx,%rdx,2), %edx
	movslq	%edx, %rdx
	movups	%xmm0, (%rax,%rcx,4)
	movups	%xmm0, (%rax,%rdx,4)
	cmpl	$1, 7248(%rbx)
	jne	.LBB16_32
# %bb.31:                               # %if.then460
	movw	$-1, (%r8)
	movq	8(%rsp), %rax                   # 8-byte Reload
	movw	$-1, (%r8,%rax)
	movups	%xmm0, (%r12)
	movq	16(%rsp), %rax                  # 8-byte Reload
	movups	%xmm0, (%r12,%rax,4)
	movups	%xmm0, (%r12,%rcx,4)
	movups	%xmm0, (%r12,%rdx,4)
	jmp	.LBB16_32
.LBB16_34:
	xorl	%edx, %edx
.LBB16_36:                              # %if.end534
	movq	16688(%rbx), %rcx
	addq	%rax, %rcx
	addq	16696(%rbx), %rax
	movq	16664(%rbx), %rsi
	movb	%dl, (%rsi,%r14)
	cmpl	$18, %r15d
	ja	.LBB16_38
# %bb.37:                               # %if.end534
	movl	$262351, %edx                   # imm = 0x400CF
	btl	%r15d, %edx
	jae	.LBB16_38
# %bb.40:                               # %if.else634
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rcx)
	cmpl	$1, 7248(%rbx)
	jne	.LBB16_49
# %bb.41:                               # %if.then644
	movups	%xmm0, (%rax)
	cmpl	$1, 7248(%rbx)
	jne	.LBB16_49
.LBB16_43:                              # %if.then656
	movb	$15, %al
	cmpl	$7, %r15d
	je	.LBB16_48
# %bb.44:                               # %if.then656
	cmpl	$18, %r15d
	je	.LBB16_48
# %bb.45:                               # %if.then656
	cmpl	$17, %r15d
	jne	.LBB16_47
# %bb.46:                               # %if.then669
	movdqa	17392(%rbx), %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	pcmpeqb	.LCPI16_1(%rip), %xmm0
	movmskps	%xmm0, %eax
	jmp	.LBB16_48
.LBB16_28:                              # %if.then253
	movzbl	25132(%rbx), %edx
	movb	%dl, (%rcx)
	movzbl	25134(%rbx), %edx
	movb	%dl, 1(%rcx)
	movzbl	25148(%rbx), %edx
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movb	%dl, (%rcx,%rsi)
	movzbl	25150(%rbx), %edx
	movb	%dl, 1(%rsi,%rcx)
	movups	25248(%rbx), %xmm0
	movups	%xmm0, (%rax)
	movups	25280(%rbx), %xmm0
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movups	%xmm0, (%rax,%rcx,4)
	movups	25312(%rbx), %xmm0
	movups	%xmm0, (%rax,%rcx,8)
	leaq	(%rcx,%rcx,2), %rcx
	movups	25344(%rbx), %xmm0
	movups	%xmm0, (%rax,%rcx,4)
	cmpl	$1, 7248(%rbx)
	jne	.LBB16_32
# %bb.29:                               # %if.then341
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, %rax
	addq	%rsi, %rax
	movzbl	25172(%rbx), %edx
	movb	%dl, (%r8)
	movzbl	25174(%rbx), %edx
	movb	%dl, 1(%r8)
	movzbl	25188(%rbx), %edx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movb	%dl, (%r8,%rdi)
	movzbl	25190(%rbx), %edx
	movb	%dl, 1(%r8,%rdi)
	movups	25408(%rbx), %xmm0
	movups	%xmm0, (%r12)
	movups	25440(%rbx), %xmm0
	movups	%xmm0, (%r12,%rsi,4)
	movups	25472(%rbx), %xmm0
	movups	%xmm0, (%r12,%rax,4)
	movups	25504(%rbx), %xmm0
	movups	%xmm0, (%r12,%rcx,4)
	jmp	.LBB16_32
.LBB16_38:                              # %if.then555
	movq	25592(%rbx), %rdx
	movq	%rdx, (%rcx)
	movzwl	25550(%rbx), %edx
	movw	%dx, 8(%rcx)
	movzwl	25566(%rbx), %edx
	movw	%dx, 10(%rcx)
	movzwl	25582(%rbx), %edx
	movw	%dx, 12(%rcx)
	cmpl	$1, 7248(%rbx)
	jne	.LBB16_49
# %bb.39:                               # %if.then596
	movq	25672(%rbx), %rcx
	movq	%rcx, (%rax)
	movzwl	25630(%rbx), %ecx
	movw	%cx, 8(%rax)
	movzwl	25646(%rbx), %ecx
	movw	%cx, 10(%rax)
	movzwl	25662(%rbx), %ecx
	movw	%cx, 12(%rax)
	cmpl	$1, 7248(%rbx)
	je	.LBB16_43
	jmp	.LBB16_49
.LBB16_47:                              # %if.else704
	xorl	%eax, %eax
.LBB16_48:                              # %if.end712.sink.split
	movq	17232(%rbx), %rcx
	movb	%al, (%rcx,%r14)
.LBB16_49:                              # %if.end712
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
.Lfunc_end16:
	.size	x264_macroblock_cache_save, .Lfunc_end16-x264_macroblock_cache_save
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_bipred_init     # -- Begin function x264_macroblock_bipred_init
	.p2align	4, 0x90
	.type	x264_macroblock_bipred_init,@function
x264_macroblock_bipred_init:            # @x264_macroblock_bipred_init
	.cfi_startproc
# %bb.0:                                # %entry
	movl	7268(%rdi), %ecx
	testl	%ecx, %ecx
	js	.LBB17_30
# %bb.1:                                # %for.cond1.preheader.lr.ph
	movl	14696(%rdi), %eax
	shll	%cl, %eax
	testl	%eax, %eax
	jle	.LBB17_30
# %bb.2:                                # %for.cond1.preheader.lr.ph.split.us
	movl	14856(%rdi), %edx
	shll	%cl, %edx
	testl	%edx, %edx
	jle	.LBB17_30
# %bb.3:                                # %for.cond1.preheader.lr.ph.split.us.split.us
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
	leaq	25848(%rdi), %r15
	leaq	26368(%rdi), %r12
	movl	400(%rdi), %r9d
	leal	1(%rcx), %esi
	movq	%rsi, -24(%rsp)                 # 8-byte Spill
	movl	%eax, %r11d
	movl	%edx, %ebx
	xorl	%r14d, %r14d
	jmp	.LBB17_4
	.p2align	4, 0x90
.LBB17_28:                              # %for.cond1.for.cond.cleanup6_crit_edge.split.us.us.us
                                        #   in Loop: Header=BB17_4 Depth=1
	incq	%r14
	movq	-16(%rsp), %r12                 # 8-byte Reload
	subq	$-128, %r12
	movq	-8(%rsp), %r15                  # 8-byte Reload
	addq	$256, %r15                      # imm = 0x100
	cmpq	-24(%rsp), %r14                 # 8-byte Folded Reload
	je	.LBB17_29
.LBB17_4:                               # %for.cond1.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_5 Depth 2
                                        #       Child Loop BB17_8 Depth 3
	movq	%r15, -8(%rsp)                  # 8-byte Spill
	movq	%r12, -16(%rsp)                 # 8-byte Spill
	xorl	%r13d, %r13d
	jmp	.LBB17_5
	.p2align	4, 0x90
.LBB17_27:                              # %for.cond14.for.cond.cleanup20_crit_edge.us.us.us
                                        #   in Loop: Header=BB17_5 Depth=2
	incq	%r13
	addq	$4, %r12
	addq	$8, %r15
	cmpq	%r11, %r13
	je	.LBB17_28
.LBB17_5:                               # %for.body7.us.us.us
                                        #   Parent Loop BB17_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_8 Depth 3
	testl	%ecx, %ecx
	sete	%al
	movl	%r13d, %edx
	shrl	%cl, %edx
	movq	14704(%rdi,%rdx,8), %rdx
	movl	(%rdx), %ebp
	movl	%r13d, %edx
	andl	$1, %edx
	cmpq	%rdx, %r14
	sete	%dl
	orb	%al, %dl
	jne	.LBB17_7
# %bb.6:                                # %if.then.us.us.us
                                        #   in Loop: Header=BB17_5 Depth=2
	addl	7288(%rdi), %ebp
.LBB17_7:                               # %if.end.us.us.us
                                        #   in Loop: Header=BB17_5 Depth=2
	xorl	%r10d, %r10d
	jmp	.LBB17_8
	.p2align	4, 0x90
.LBB17_25:                              # %if.end54.us.us.us
                                        #   in Loop: Header=BB17_8 Depth=3
	movl	$32, %esi
.LBB17_26:                              # %if.end54.us.us.us
                                        #   in Loop: Header=BB17_8 Depth=3
	testl	%r9d, %r9d
	cmovnel	%esi, %edx
	movw	%ax, (%r15,%r10,2)
	movb	%dl, (%r12,%r10)
	incq	%r10
	cmpq	%r10, %rbx
	je	.LBB17_27
.LBB17_8:                               # %for.body21.us.us.us
                                        #   Parent Loop BB17_4 Depth=1
                                        #     Parent Loop BB17_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testl	%ecx, %ecx
	sete	%al
	movl	%r10d, %edx
	shrl	%cl, %edx
	movq	14864(%rdi,%rdx,8), %rdx
	movl	(%rdx), %esi
	movl	%r10d, %edx
	andl	$1, %edx
	cmpq	%rdx, %r14
	sete	%dl
	orb	%al, %dl
	jne	.LBB17_10
# %bb.9:                                # %if.then35.us.us.us
                                        #   in Loop: Header=BB17_8 Depth=3
	addl	7288(%rdi), %esi
.LBB17_10:                              # %if.end39.us.us.us
                                        #   in Loop: Header=BB17_8 Depth=3
	movl	$256, %eax                      # imm = 0x100
	subl	%ebp, %esi
	je	.LBB17_23
# %bb.11:                               # %if.else.us.us.us
                                        #   in Loop: Header=BB17_8 Depth=3
	cmpl	$127, %esi
	jl	.LBB17_13
# %bb.12:                               # %if.else.us.us.us
                                        #   in Loop: Header=BB17_8 Depth=3
	movl	$127, %esi
.LBB17_13:                              # %if.else.us.us.us
                                        #   in Loop: Header=BB17_8 Depth=3
	cmpl	$-127, %esi
	jge	.LBB17_15
# %bb.14:                               # %if.else.us.us.us
                                        #   in Loop: Header=BB17_8 Depth=3
	movl	$-128, %esi
.LBB17_15:                              # %if.else.us.us.us
                                        #   in Loop: Header=BB17_8 Depth=3
	movq	14688(%rdi), %rax
	movl	7288(%rdi), %r8d
	imull	%r14d, %r8d
	subl	%ebp, %r8d
	addl	(%rax), %r8d
	cmpl	$127, %r8d
	jl	.LBB17_17
# %bb.16:                               # %if.else.us.us.us
                                        #   in Loop: Header=BB17_8 Depth=3
	movl	$127, %r8d
.LBB17_17:                              # %if.else.us.us.us
                                        #   in Loop: Header=BB17_8 Depth=3
	cmpl	$-127, %r8d
	jge	.LBB17_19
# %bb.18:                               # %if.else.us.us.us
                                        #   in Loop: Header=BB17_8 Depth=3
	movl	$-128, %r8d
.LBB17_19:                              # %if.else.us.us.us
                                        #   in Loop: Header=BB17_8 Depth=3
	movl	%esi, %eax
	negl	%eax
	cmovsl	%esi, %eax
	shrl	%eax
	orl	$16384, %eax                    # imm = 0x4000
                                        # kill: def $ax killed $ax killed $eax
	cwtd
	idivw	%si
	cwtl
	imull	%r8d, %eax
	addl	$32, %eax
	sarl	$6, %eax
	cmpl	$1023, %eax                     # imm = 0x3FF
	jl	.LBB17_21
# %bb.20:                               # %if.else.us.us.us
                                        #   in Loop: Header=BB17_8 Depth=3
	movl	$1023, %eax                     # imm = 0x3FF
.LBB17_21:                              # %if.else.us.us.us
                                        #   in Loop: Header=BB17_8 Depth=3
	cmpl	$-1023, %eax                    # imm = 0xFC01
	jge	.LBB17_23
# %bb.22:                               # %if.else.us.us.us
                                        #   in Loop: Header=BB17_8 Depth=3
	movl	$-1024, %eax                    # imm = 0xFC00
.LBB17_23:                              # %if.end54.us.us.us
                                        #   in Loop: Header=BB17_8 Depth=3
	movl	%eax, %esi
	sarl	$2, %esi
	leal	64(%rsi), %r8d
	movl	$32, %edx
	cmpl	$193, %r8d
	jae	.LBB17_25
# %bb.24:                               #   in Loop: Header=BB17_8 Depth=3
	movb	$64, %r8b
	subb	%sil, %r8b
	movzbl	%r8b, %esi
	jmp	.LBB17_26
.LBB17_29:
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB17_30:                              # %for.cond.cleanup
	retq
.Lfunc_end17:
	.size	x264_macroblock_bipred_init, .Lfunc_end17-x264_macroblock_bipred_init
	.cfi_endproc
                                        # -- End function
	.type	x264_mb_type_fix,@object        # @x264_mb_type_fix
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_mb_type_fix:
	.ascii	"\000\000\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022"
	.size	x264_mb_type_fix, 19

	.type	x264_mb_pred_mode8x8c_fix,@object # @x264_mb_pred_mode8x8c_fix
x264_mb_pred_mode8x8c_fix:
	.asciz	"\000\001\002\003\000\000"
	.size	x264_mb_pred_mode8x8c_fix, 7

	.type	x264_size2pixel,@object         # @x264_size2pixel
	.p2align	4, 0x0
x264_size2pixel:
	.zero	5
	.asciz	"\000\006\004\000"
	.ascii	"\000\005\003\000\001"
	.zero	5
	.asciz	"\000\000\002\000"
	.size	x264_size2pixel, 25

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
