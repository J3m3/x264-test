	.text
	.file	"io_tiff.c"
	.globl	constructTiff                   # -- Begin function constructTiff
	.p2align	4, 0x90
	.type	constructTiff,@function
constructTiff:                          # @constructTiff
	.cfi_startproc
# %bb.0:                                # %entry
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
	retq
.Lfunc_end0:
	.size	constructTiff, .Lfunc_end0-constructTiff
	.cfi_endproc
                                        # -- End function
	.globl	destructTiff                    # -- Begin function destructTiff
	.p2align	4, 0x90
	.type	destructTiff,@function
destructTiff:                           # @destructTiff
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB1_2
# %bb.1:                                # %if.then
	callq	free@PLT
	movq	$0, 8(%rbx)
.LBB1_2:                                # %if.end
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB1_4
# %bb.3:                                # %if.then4
	callq	free@PLT
	movq	$0, (%rbx)
.LBB1_4:                                # %if.end7
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	destructTiff, .Lfunc_end1-destructTiff
	.cfi_endproc
                                        # -- End function
	.globl	horizontal_half_1chan_cosite    # -- Begin function horizontal_half_1chan_cosite
	.p2align	4, 0x90
	.type	horizontal_half_1chan_cosite,@function
horizontal_half_1chan_cosite:           # @horizontal_half_1chan_cosite
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
	movq	%rsi, -64(%rsp)                 # 8-byte Spill
	movl	%edx, -88(%rsp)                 # 4-byte Spill
	testl	%edx, %edx
	jle	.LBB2_25
# %bb.1:                                # %for.cond1.preheader.lr.ph
	movslq	%ecx, %r12
	leal	(%r12,%r12,2), %edx
	movslq	%edx, %r13
	leal	(%r12,%r12,4), %edx
	movslq	%edx, %rsi
	leal	(,%r12,8), %edx
	subl	%r12d, %edx
	movslq	%edx, %r10
	movslq	%r9d, %r9
	leal	(%r12,%r12), %edx
	movslq	%edx, %r11
	movq	%r12, %rax
	negq	%rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	%r13, %rax
	negq	%rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	%rsi, %rax
	negq	%rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	-64(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %edx
	andl	$-2, %edx
	movl	%edx, -124(%rsp)                # 4-byte Spill
	leal	-17(%rax), %edx
	andl	$-2, %edx
	addl	$10, %edx
	movl	%edx, -92(%rsp)                 # 4-byte Spill
	movq	%r11, %rdx
	negq	%rdx
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	leaq	(,%r12,4), %rbx
	leal	(,%r12,4), %edx
	movslq	%edx, %r14
	movq	%r10, %rdx
	negq	%r14
	movq	%r14, -8(%rsp)                  # 8-byte Spill
	leaq	(,%r12,8), %r10
	negq	%r10
	movq	%r10, -16(%rsp)                 # 8-byte Spill
	leaq	(%rbx,%rbx,2), %r10
	negq	%rbx
	movq	%rbx, (%rsp)                    # 8-byte Spill
	negq	%r10
	movq	%r10, -24(%rsp)                 # 8-byte Spill
	leaq	(%rdx,%rdx), %r10
	negq	%r10
	movq	%r10, -32(%rsp)                 # 8-byte Spill
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	addq	%rsi, %rsi
	negq	%rsi
	movq	%rsi, -40(%rsp)                 # 8-byte Spill
	leaq	(,%r13,2), %rsi
	negq	%rsi
	movq	%rsi, -48(%rsp)                 # 8-byte Spill
	leaq	(%r12,%r12), %rsi
	negq	%rsi
	leal	-8(%rax), %r10d
	movl	%r10d, -68(%rsp)                # 4-byte Spill
	leal	-1(%rax), %r10d
	movl	%r10d, -128(%rsp)               # 4-byte Spill
	leal	-3(%rax), %r10d
	movl	%r10d, -72(%rsp)                # 4-byte Spill
	leal	-5(%rax), %r10d
	movl	%r10d, -76(%rsp)                # 4-byte Spill
	addl	$-7, %eax
	movl	%eax, -80(%rsp)                 # 4-byte Spill
	movq	%r9, -104(%rsp)                 # 8-byte Spill
	leaq	(%r9,%r9), %r15
	movq	%r11, -120(%rsp)                # 8-byte Spill
	leaq	(%r11,%r11), %rbp
	xorl	%eax, %eax
	movq	%r12, 48(%rsp)                  # 8-byte Spill
	movq	%r13, 40(%rsp)                  # 8-byte Spill
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	jmp	.LBB2_2
	.p2align	4, 0x90
.LBB2_24:                               # %for.inc254
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	-84(%rsp), %eax                 # 4-byte Reload
	incl	%eax
	cmpl	-88(%rsp), %eax                 # 4-byte Folded Reload
	movq	48(%rsp), %r12                  # 8-byte Reload
	movq	40(%rsp), %r13                  # 8-byte Reload
	movq	24(%rsp), %rdx                  # 8-byte Reload
	je	.LBB2_25
.LBB2_2:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_11 Depth 2
                                        #     Child Loop BB2_19 Depth 2
	movl	%eax, -84(%rsp)                 # 4-byte Spill
	movzwl	(%rdi), %r9d
	movzwl	(%rdi,%r12,2), %r10d
	addl	%r9d, %r10d
	movzwl	(%rdi,%r13,2), %r11d
	addl	%r9d, %r11d
	movq	32(%rsp), %rax                  # 8-byte Reload
	movzwl	(%rdi,%rax,2), %ebx
	addl	%r9d, %ebx
	movzwl	(%rdi,%rdx,2), %r14d
	addl	%r9d, %r14d
	shll	$11, %r9d
	imull	$1228, %r10d, %r10d             # imm = 0x4CC
	addl	%r9d, %r10d
	imull	$-262, %r11d, %r9d              # imm = 0xFEFA
	imull	$47, %ebx, %r11d
	addl	%r9d, %r11d
	addl	%r10d, %r11d
	leal	(%r14,%r14,4), %r9d
	leal	(%r14,%r9,2), %r9d
	addl	%r11d, %r9d
	movl	$0, %r10d
	cmpl	$-6143, %r9d                    # imm = 0xE801
	jl	.LBB2_4
# %bb.3:                                # %if.else
                                        #   in Loop: Header=BB2_2 Depth=1
	leal	2048(%r9), %r10d
	addl	$6143, %r9d                     # imm = 0x17FF
	testl	%r10d, %r10d
	cmovnsl	%r10d, %r9d
	sarl	$12, %r9d
	movl	112(%rsp), %r10d
	cmpl	%r10d, %r9d
	cmovgel	%r10d, %r9d
	movl	%r9d, %r10d
.LBB2_4:                                # %if.end68
                                        #   in Loop: Header=BB2_2 Depth=1
	movw	%r10w, (%r8)
	movq	-120(%rsp), %r10                # 8-byte Reload
	leaq	(%rdi,%r10,2), %r9
	movzwl	(%rdi,%r10,2), %edi
	shll	$11, %edi
	movq	-112(%rsp), %r10                # 8-byte Reload
	movzwl	(%r9,%r10,2), %r10d
	movzwl	(%r9,%r12,2), %r11d
	addl	%r10d, %r11d
	imull	$1228, %r11d, %r10d             # imm = 0x4CC
	addl	%edi, %r10d
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movzwl	(%r9,%rdi,2), %edi
	movzwl	(%r9,%r13,2), %r11d
	addl	%edi, %r11d
	imull	$-262, %r11d, %r11d             # imm = 0xFEFA
	movzwl	(%r9,%rax,2), %ebx
	addl	%edi, %ebx
	imull	$47, %ebx, %edi
	addl	%r11d, %edi
	addl	%r10d, %edi
	movq	(%rsp), %r10                    # 8-byte Reload
	movzwl	(%r10,%r9), %r10d
	movzwl	(%r9,%rdx,2), %r11d
	addl	%r10d, %r11d
	leal	(%r11,%r11,4), %r10d
	leal	(%r11,%r10,2), %r10d
	addl	%edi, %r10d
	xorl	%edi, %edi
	movl	$0, %r11d
	cmpl	$-6143, %r10d                   # imm = 0xE801
	jl	.LBB2_6
# %bb.5:                                # %if.else.1
                                        #   in Loop: Header=BB2_2 Depth=1
	leal	2048(%r10), %r11d
	addl	$6143, %r10d                    # imm = 0x17FF
	testl	%r11d, %r11d
	cmovnsl	%r11d, %r10d
	sarl	$12, %r10d
	movl	112(%rsp), %r11d
	cmpl	%r11d, %r10d
	cmovgel	%r11d, %r10d
	movl	%r10d, %r11d
.LBB2_6:                                # %if.end68.1
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	-104(%rsp), %r10                # 8-byte Reload
	leaq	(%r8,%r10,2), %r8
	movw	%r11w, (%r8)
	movq	-120(%rsp), %r10                # 8-byte Reload
	leaq	(%r9,%r10,2), %r14
	movzwl	(%r9,%r10,2), %r9d
	shll	$11, %r9d
	movq	-112(%rsp), %r10                # 8-byte Reload
	movzwl	(%r14,%r10,2), %r10d
	movzwl	(%r14,%r12,2), %r11d
	addl	%r10d, %r11d
	imull	$1228, %r11d, %r10d             # imm = 0x4CC
	addl	%r9d, %r10d
	movq	-56(%rsp), %r9                  # 8-byte Reload
	movzwl	(%r14,%r9,2), %r9d
	movzwl	(%r14,%r13,2), %r11d
	addl	%r9d, %r11d
	movq	-8(%rsp), %r9                   # 8-byte Reload
	movzwl	(%r14,%r9,2), %r9d
	movzwl	(%r14,%rax,2), %ebx
	addl	%r9d, %ebx
	imull	$-262, %r11d, %r9d              # imm = 0xFEFA
	imull	$47, %ebx, %r11d
	addl	%r9d, %r11d
	addl	%r10d, %r11d
	movq	-16(%rsp), %r9                  # 8-byte Reload
	movzwl	(%r9,%r14), %r9d
	movzwl	(%r14,%rdx,2), %r10d
	addl	%r9d, %r10d
	leal	(%r10,%r10,4), %r9d
	leal	(%r10,%r9,2), %r9d
	addl	%r11d, %r9d
	cmpl	$-6143, %r9d                    # imm = 0xE801
	jl	.LBB2_8
# %bb.7:                                # %if.else.2
                                        #   in Loop: Header=BB2_2 Depth=1
	leal	2048(%r9), %edi
	addl	$6143, %r9d                     # imm = 0x17FF
	testl	%edi, %edi
	cmovnsl	%edi, %r9d
	sarl	$12, %r9d
	movl	112(%rsp), %edi
	cmpl	%edi, %r9d
	cmovgel	%edi, %r9d
	movl	%r9d, %edi
.LBB2_8:                                # %if.end68.2
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	-104(%rsp), %r9                 # 8-byte Reload
	leaq	(%r8,%r9,2), %r8
	movw	%di, (%r8)
	movq	-120(%rsp), %r9                 # 8-byte Reload
	leaq	(%r14,%r9,2), %rdi
	movzwl	(%r14,%r9,2), %r9d
	shll	$11, %r9d
	movq	-112(%rsp), %r10                # 8-byte Reload
	movzwl	(%rdi,%r10,2), %r10d
	movzwl	(%rdi,%r12,2), %r11d
	addl	%r10d, %r11d
	imull	$1228, %r11d, %r10d             # imm = 0x4CC
	addl	%r9d, %r10d
	movq	-56(%rsp), %r9                  # 8-byte Reload
	movzwl	(%rdi,%r9,2), %r9d
	movzwl	(%rdi,%r13,2), %r11d
	addl	%r9d, %r11d
	movq	16(%rsp), %r9                   # 8-byte Reload
	movzwl	(%rdi,%r9,2), %r9d
	movzwl	(%rdi,%rax,2), %ebx
	addl	%r9d, %ebx
	imull	$-262, %r11d, %r9d              # imm = 0xFEFA
	imull	$47, %ebx, %r11d
	addl	%r9d, %r11d
	addl	%r10d, %r11d
	movq	-24(%rsp), %r9                  # 8-byte Reload
	movzwl	(%r9,%rdi), %r9d
	movzwl	(%rdi,%rdx,2), %r10d
	addl	%r9d, %r10d
	leal	(%r10,%r10,4), %r9d
	leal	(%r10,%r9,2), %r9d
	addl	%r11d, %r9d
	xorl	%r10d, %r10d
	cmpl	$-6143, %r9d                    # imm = 0xE801
	jl	.LBB2_10
# %bb.9:                                # %if.else.3
                                        #   in Loop: Header=BB2_2 Depth=1
	leal	2048(%r9), %r10d
	addl	$6143, %r9d                     # imm = 0x17FF
	testl	%r10d, %r10d
	cmovnsl	%r10d, %r9d
	sarl	$12, %r9d
	movl	112(%rsp), %r10d
	cmpl	%r10d, %r9d
	cmovgel	%r10d, %r9d
	movl	%r9d, %r10d
.LBB2_10:                               # %if.end68.3
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	-104(%rsp), %r9                 # 8-byte Reload
	leaq	(%r8,%r9,2), %r8
	movw	%r10w, (%r8)
	leaq	(%r8,%r9,2), %r8
	movq	-120(%rsp), %r9                 # 8-byte Reload
	leaq	(%rdi,%r9,2), %rdi
	movl	$8, %r9d
	cmpl	$17, -64(%rsp)                  # 4-byte Folded Reload
	jge	.LBB2_11
# %bb.17:                               # %for.end148
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	-124(%rsp), %r9d                # 4-byte Folded Reload
	jge	.LBB2_24
	jmp	.LBB2_18
	.p2align	4, 0x90
.LBB2_14:                               # %if.else134
                                        #   in Loop: Header=BB2_11 Depth=2
	movl	%r10d, %r11d
.LBB2_15:                               # %if.end139
                                        #   in Loop: Header=BB2_11 Depth=2
	movw	%r11w, (%r8)
	addl	$2, %r9d
	addq	%r15, %r8
	addq	%rbp, %rdi
	cmpl	-68(%rsp), %r9d                 # 4-byte Folded Reload
	jge	.LBB2_16
.LBB2_11:                               # %for.body80
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rdi), %r10d
	shll	$11, %r10d
	movzwl	(%rdi,%rsi), %r11d
	movzwl	(%rdi,%r12,2), %ebx
	addl	%r11d, %ebx
	imull	$1228, %ebx, %r11d              # imm = 0x4CC
	addl	%r10d, %r11d
	movq	-48(%rsp), %r10                 # 8-byte Reload
	movzwl	(%rdi,%r10), %r10d
	movzwl	(%rdi,%r13,2), %ebx
	addl	%r10d, %ebx
	imull	$-262, %ebx, %r10d              # imm = 0xFEFA
	movq	-40(%rsp), %rbx                 # 8-byte Reload
	movzwl	(%rdi,%rbx), %ebx
	movzwl	(%rdi,%rax,2), %r14d
	addl	%ebx, %r14d
	imull	$47, %r14d, %ebx
	addl	%r10d, %ebx
	addl	%r11d, %ebx
	movq	-32(%rsp), %r10                 # 8-byte Reload
	movzwl	(%rdi,%r10), %r10d
	movzwl	(%rdi,%rdx,2), %r11d
	addl	%r10d, %r11d
	leal	(%r11,%r11,4), %r10d
	leal	(%r11,%r10,2), %r10d
	addl	%ebx, %r10d
	xorl	%r11d, %r11d
	cmpl	$-6143, %r10d                   # imm = 0xE801
	jl	.LBB2_15
# %bb.12:                               # %if.else134
                                        #   in Loop: Header=BB2_11 Depth=2
	leal	2048(%r10), %r11d
	addl	$6143, %r10d                    # imm = 0x17FF
	testl	%r11d, %r11d
	cmovnsl	%r11d, %r10d
	sarl	$12, %r10d
	cmpl	112(%rsp), %r10d
	jl	.LBB2_14
# %bb.13:                               # %if.else134
                                        #   in Loop: Header=BB2_11 Depth=2
	movl	112(%rsp), %r10d
                                        # kill: def $r10d killed $r10d def $r10
	jmp	.LBB2_14
	.p2align	4, 0x90
.LBB2_16:                               #   in Loop: Header=BB2_2 Depth=1
	movl	-92(%rsp), %r9d                 # 4-byte Reload
	cmpl	-124(%rsp), %r9d                # 4-byte Folded Reload
	jge	.LBB2_24
.LBB2_18:                               # %for.body153.preheader
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	-128(%rsp), %eax                # 4-byte Reload
	subl	%r9d, %eax
	jmp	.LBB2_19
	.p2align	4, 0x90
.LBB2_22:                               # %if.else239
                                        #   in Loop: Header=BB2_19 Depth=2
	movl	%ebx, %r10d
.LBB2_23:                               # %if.end244
                                        #   in Loop: Header=BB2_19 Depth=2
	movw	%r10w, (%r8)
	addl	$2, %r9d
	addq	%r15, %r8
	addq	%rbp, %rdi
	addl	$-2, %eax
	cmpl	-124(%rsp), %r9d                # 4-byte Folded Reload
	jge	.LBB2_24
.LBB2_19:                               # %for.body153
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	-72(%rsp), %r9d                 # 4-byte Folded Reload
	movl	%eax, %r11d
	movl	$3, %edx
	cmovll	%edx, %r11d
	cmpl	-76(%rsp), %r9d                 # 4-byte Folded Reload
	movl	%eax, %ebx
	movl	$5, %edx
	cmovll	%edx, %ebx
	cmpl	-80(%rsp), %r9d                 # 4-byte Folded Reload
	movl	%eax, %r14d
	movl	$7, %edx
	cmovll	%edx, %r14d
	movzwl	(%rdi), %r13d
	shll	$11, %r13d
	xorl	%r10d, %r10d
	cmpl	-128(%rsp), %r9d                # 4-byte Folded Reload
	movzwl	(%rdi,%rsi), %edx
	movl	$0, %r12d
	cmovll	%ecx, %r12d
	movslq	%r12d, %r12
	movzwl	(%rdi,%r12,2), %r12d
	addl	%edx, %r12d
	imull	$1228, %r12d, %edx              # imm = 0x4CC
	addl	%r13d, %edx
	movq	-48(%rsp), %r12                 # 8-byte Reload
	movzwl	(%rdi,%r12), %r12d
	imull	%ecx, %r11d
	movslq	%r11d, %r11
	movzwl	(%rdi,%r11,2), %r11d
	addl	%r12d, %r11d
	imull	$-262, %r11d, %r11d             # imm = 0xFEFA
	addl	%edx, %r11d
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movzwl	(%rdi,%rdx), %edx
	imull	%ecx, %ebx
	movslq	%ebx, %rbx
	movzwl	(%rdi,%rbx,2), %r12d
	addl	%edx, %r12d
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movzwl	(%rdi,%rdx), %edx
	imull	%ecx, %r14d
	movslq	%r14d, %rbx
	movzwl	(%rdi,%rbx,2), %ebx
	addl	%edx, %ebx
	leal	(%rbx,%rbx,4), %edx
	leal	(%rbx,%rdx,2), %ebx
	imull	$47, %r12d, %edx
	addl	%edx, %ebx
	addl	%r11d, %ebx
	cmpl	$-6143, %ebx                    # imm = 0xE801
	jl	.LBB2_23
# %bb.20:                               # %if.else239
                                        #   in Loop: Header=BB2_19 Depth=2
	leal	2048(%rbx), %edx
	addl	$6143, %ebx                     # imm = 0x17FF
	testl	%edx, %edx
	cmovnsl	%edx, %ebx
	sarl	$12, %ebx
	cmpl	112(%rsp), %ebx
	jl	.LBB2_22
# %bb.21:                               # %if.else239
                                        #   in Loop: Header=BB2_19 Depth=2
	movl	112(%rsp), %edx
	movl	%edx, %ebx
	jmp	.LBB2_22
.LBB2_25:                               # %for.end255
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
.Lfunc_end2:
	.size	horizontal_half_1chan_cosite, .Lfunc_end2-horizontal_half_1chan_cosite
	.cfi_endproc
                                        # -- End function
	.globl	vertical_half_1chan             # -- Begin function vertical_half_1chan
	.p2align	4, 0x90
	.type	vertical_half_1chan,@function
vertical_half_1chan:                    # @vertical_half_1chan
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
	subq	$16, %rsp
	.cfi_def_cfa_offset 72
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
                                        # kill: def $edx killed $edx def $rdx
	movslq	%ecx, %r14
	movl	%ecx, %r10d
	imull	%esi, %r10d
	leal	(%r10,%r10), %eax
	leal	(,%r10,4), %ecx
	movq	%r10, 8(%rsp)                   # 8-byte Spill
	movslq	%r10d, %r10
	movslq	%eax, %rbx
	leal	(%r10,%r10,2), %eax
	movslq	%eax, %r12
	movslq	%ecx, %r11
	leal	(%r10,%r10,4), %eax
	movslq	%eax, %rbp
	leal	(%rbx,%rbx,2), %eax
	cltq
	movslq	%r9d, %r15
	testl	%esi, %esi
	movq	%r10, -96(%rsp)                 # 8-byte Spill
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	movl	%esi, -124(%rsp)                # 4-byte Spill
	movq	%r14, -8(%rsp)                  # 8-byte Spill
	movq	%rbx, -104(%rsp)                # 8-byte Spill
	movq	%r15, -16(%rsp)                 # 8-byte Spill
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	jle	.LBB3_43
# %bb.1:                                # %for.body19.us.preheader
	leaq	(%r15,%r15), %rcx
	movq	%rcx, -80(%rsp)                 # 8-byte Spill
	leaq	(%r14,%r14), %rcx
	movq	%rcx, -120(%rsp)                # 8-byte Spill
	leaq	(%rdi,%rax,2), %rax
	leaq	(%rdi,%rbp,2), %rcx
	movq	%rcx, -88(%rsp)                 # 8-byte Spill
	leaq	(%rdi,%r11,2), %r9
	movq	%r12, -112(%rsp)                # 8-byte Spill
	leaq	(%rdi,%r12,2), %r12
	leaq	(%rdi,%rbx,2), %r13
	leaq	(%rdi,%r10,2), %rcx
	movq	%rax, %r10
	xorl	%r15d, %r15d
	movl	%esi, %ebx
	jmp	.LBB3_2
	.p2align	4, 0x90
.LBB3_5:                                # %if.else.us
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	%eax, %r14d
.LBB3_6:                                # %if.end86.us
                                        #   in Loop: Header=BB3_2 Depth=1
	movw	%r14w, (%r8)
	addq	-80(%rsp), %r8                  # 8-byte Folded Reload
	addq	-120(%rsp), %r15                # 8-byte Folded Reload
	decl	%ebx
	je	.LBB3_7
.LBB3_2:                                # %for.body19.us
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rdi,%r15), %eax
	movzwl	(%rcx,%r15), %r14d
	addl	%eax, %r14d
	imull	$225, %r14d, %r14d
	movzwl	(%r13,%r15), %esi
	addl	%eax, %esi
	imull	$69, %esi, %esi
	addl	%r14d, %esi
	movzwl	(%r12,%r15), %r14d
	addl	%eax, %r14d
	imull	$-30, %r14d, %r14d
	addl	%esi, %r14d
	movzwl	(%r9,%r15), %esi
	addl	%eax, %esi
	shll	$4, %esi
	subl	%esi, %r14d
	movq	-88(%rsp), %rsi                 # 8-byte Reload
	movzwl	(%rsi,%r15), %esi
	addl	%eax, %esi
	leal	(%rsi,%rsi,2), %esi
	leal	(%r14,%rsi,2), %esi
	movzwl	(%r10,%r15), %r14d
	addl	%eax, %r14d
	leal	(%rsi,%r14,2), %eax
	movl	$0, %r14d
	cmpl	$-767, %eax                     # imm = 0xFD01
	jl	.LBB3_6
# %bb.3:                                # %if.else.us
                                        #   in Loop: Header=BB3_2 Depth=1
	leal	256(%rax), %esi
	addl	$767, %eax                      # imm = 0x2FF
	testl	%esi, %esi
	cmovnsl	%esi, %eax
	sarl	$9, %eax
	cmpl	72(%rsp), %eax
	jl	.LBB3_5
# %bb.4:                                # %if.else.us
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	72(%rsp), %eax
                                        # kill: def $eax killed $eax def $rax
	jmp	.LBB3_5
.LBB3_7:                                # %for.cond17.for.end_crit_edge.us
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	leaq	(%rsi,%rsi), %rax
	movq	%rdi, %r9
	subq	%rax, %r9
	movq	-104(%rsp), %r10                # 8-byte Reload
	leaq	(%r10,%r10), %rdx
	movq	%rdx, (%rsp)                    # 8-byte Spill
	subq	%rdx, %rax
	addq	%rdi, %rax
	leaq	(%rdi,%rsi,4), %rdx
	movq	%rdx, -88(%rsp)                 # 8-byte Spill
	movl	-124(%rsp), %r10d               # 4-byte Reload
	movq	-112(%rsp), %r12                # 8-byte Reload
	jmp	.LBB3_8
	.p2align	4, 0x90
.LBB3_11:                               # %if.else.us.1
                                        #   in Loop: Header=BB3_8 Depth=1
	movl	%ebx, %r13d
.LBB3_12:                               # %if.end86.us.1
                                        #   in Loop: Header=BB3_8 Depth=1
	movw	%r13w, (%r8)
	addq	-120(%rsp), %r15                # 8-byte Folded Reload
	addq	-80(%rsp), %r8                  # 8-byte Folded Reload
	decl	%r10d
	je	.LBB3_13
.LBB3_8:                                # %for.body19.us.1
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%rcx,%r15), %rbx
	movzwl	(%rcx,%r15), %esi
	movq	-88(%rsp), %rdx                 # 8-byte Reload
	movzwl	(%rdx,%r15), %r14d
	addl	%esi, %r14d
	imull	$225, %r14d, %esi
	movzwl	(%rdi,%r15), %r14d
	movq	%r12, %rdx
	movq	-104(%rsp), %r12                # 8-byte Reload
	movzwl	(%rbx,%r12,2), %r13d
	movq	%rdx, %r12
	addl	%r14d, %r13d
	imull	$69, %r13d, %r14d
	addl	%esi, %r14d
	movzwl	(%rax,%r15), %esi
	movzwl	(%rbx,%rdx,2), %r13d
	addl	%esi, %r13d
	imull	$-30, %r13d, %r13d
	addl	%r14d, %r13d
	movzwl	(%rbx,%r11,2), %r14d
	addl	%esi, %r14d
	shll	$4, %r14d
	subl	%r14d, %r13d
	movzwl	(%r9,%r15), %esi
	movzwl	(%rbx,%rbp,2), %r14d
	addl	%esi, %r14d
	leal	(%r14,%r14,2), %r14d
	leal	(%r13,%r14,2), %r14d
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	movzwl	(%rbx,%rdx,2), %ebx
	addl	%esi, %ebx
	leal	(%r14,%rbx,2), %ebx
	xorl	%r13d, %r13d
	cmpl	$-767, %ebx                     # imm = 0xFD01
	jl	.LBB3_12
# %bb.9:                                # %if.else.us.1
                                        #   in Loop: Header=BB3_8 Depth=1
	leal	256(%rbx), %esi
	addl	$767, %ebx                      # imm = 0x2FF
	testl	%esi, %esi
	cmovnsl	%esi, %ebx
	sarl	$9, %ebx
	cmpl	72(%rsp), %ebx
	jl	.LBB3_11
# %bb.10:                               # %if.else.us.1
                                        #   in Loop: Header=BB3_8 Depth=1
	movl	72(%rsp), %esi
	movl	%esi, %ebx
	jmp	.LBB3_11
.LBB3_13:                               # %for.cond17.for.end_crit_edge.us.1
	movq	-96(%rsp), %rbx                 # 8-byte Reload
	leaq	(,%rbx,4), %r10
	movq	-72(%rsp), %rax                 # 8-byte Reload
	addq	%rax, %rax
	leaq	(%rax,%rbx,4), %rax
	addq	%rdi, %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	leaq	(,%rbp,2), %rax
	leaq	(%rax,%rbx,4), %rax
	addq	%rdi, %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	%rdi, %rax
	subq	%r10, %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	leaq	(%r11,%r11), %rax
	leaq	(%rax,%rbx,4), %rax
	addq	%rdi, %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	leaq	(%r12,%r12), %rsi
	movq	%r10, %rax
	subq	%rsi, %rax
	addq	%rdi, %rax
	leaq	(%rsi,%rbx,4), %rdx
	addq	%rdi, %rdx
	movq	(%rsp), %rsi                    # 8-byte Reload
	subq	%rsi, %r10
	addq	%rdi, %r10
	leaq	(%rsi,%rbx,4), %r9
	addq	%rdi, %r9
	leaq	(%rbx,%rbx,2), %rsi
	leaq	(%rdi,%rsi,2), %r13
	movl	-124(%rsp), %edi                # 4-byte Reload
	jmp	.LBB3_14
	.p2align	4, 0x90
.LBB3_17:                               # %if.else.us.2
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	%ebx, %esi
.LBB3_18:                               # %if.end86.us.2
                                        #   in Loop: Header=BB3_14 Depth=1
	movw	%si, (%r8)
	addq	-80(%rsp), %r8                  # 8-byte Folded Reload
	addq	-120(%rsp), %r15                # 8-byte Folded Reload
	decl	%edi
	je	.LBB3_19
.LBB3_14:                               # %for.body19.us.2
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rsp), %rsi                 # 8-byte Reload
	movzwl	(%rsi,%r15), %esi
	movzwl	(%r13,%r15), %ebx
	addl	%esi, %ebx
	imull	$225, %ebx, %esi
	movzwl	(%rcx,%r15), %ebx
	movzwl	(%r9,%r15), %r14d
	addl	%ebx, %r14d
	imull	$69, %r14d, %ebx
	addl	%esi, %ebx
	movzwl	(%r10,%r15), %esi
	movzwl	(%rdx,%r15), %r14d
	addl	%esi, %r14d
	imull	$-30, %r14d, %esi
	addl	%ebx, %esi
	movzwl	(%rax,%r15), %ebx
	movq	-40(%rsp), %r14                 # 8-byte Reload
	movzwl	(%r14,%r15), %r14d
	addl	%ebx, %r14d
	shll	$4, %r14d
	subl	%r14d, %esi
	movq	-32(%rsp), %rbx                 # 8-byte Reload
	movzwl	(%rbx,%r15), %ebx
	movq	-24(%rsp), %r14                 # 8-byte Reload
	movzwl	(%r14,%r15), %r14d
	addl	%ebx, %r14d
	leal	(%r14,%r14,2), %r14d
	leal	(%rsi,%r14,2), %esi
	movq	-112(%rsp), %r14                # 8-byte Reload
	movzwl	(%r14,%r15), %r14d
	addl	%ebx, %r14d
	leal	(%rsi,%r14,2), %ebx
	xorl	%esi, %esi
	cmpl	$-767, %ebx                     # imm = 0xFD01
	jl	.LBB3_18
# %bb.15:                               # %if.else.us.2
                                        #   in Loop: Header=BB3_14 Depth=1
	leal	256(%rbx), %esi
	addl	$767, %ebx                      # imm = 0x2FF
	testl	%esi, %esi
	cmovnsl	%esi, %ebx
	sarl	$9, %ebx
	cmpl	72(%rsp), %ebx
	jl	.LBB3_17
# %bb.16:                               # %if.else.us.2
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	72(%rsp), %esi
	movl	%esi, %ebx
	jmp	.LBB3_17
.LBB3_19:                               # %for.cond17.for.end_crit_edge.us.2
	addq	%r15, %r13
	movq	-8(%rsp), %r14                  # 8-byte Reload
	movq	-96(%rsp), %r10                 # 8-byte Reload
	movq	-16(%rsp), %r15                 # 8-byte Reload
	movl	-124(%rsp), %esi                # 4-byte Reload
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	jmp	.LBB3_20
.LBB3_43:                               # %for.body.preheader
	leaq	(%r10,%r10,2), %rax
	leaq	(%rdi,%rax,2), %r13
.LBB3_20:                               # %for.end96
	leal	-6(%rdx), %eax
	movl	%eax, -80(%rsp)                 # 4-byte Spill
	movl	$6, %r9d
	cmpl	$13, %edx
	movq	%r11, -64(%rsp)                 # 8-byte Spill
	movq	%rbp, -48(%rsp)                 # 8-byte Spill
	jl	.LBB3_21
# %bb.22:                               # %for.cond102.preheader.lr.ph
	leal	-13(%rdx), %r9d
	andl	$-2, %r9d
	testl	%esi, %esi
	jle	.LBB3_44
# %bb.23:                               # %for.cond102.preheader.us.preheader
	movl	%r9d, -120(%rsp)                # 4-byte Spill
	leaq	(%r15,%r15), %rcx
	leaq	(%r14,%r14), %rdx
	leaq	(%r10,%r10), %r9
	addq	%rbp, %rbp
	negq	%rbp
	movq	-64(%rsp), %rax                 # 8-byte Reload
	addq	%rax, %rax
	negq	%rax
	leaq	(%r12,%r12), %r11
	negq	%r11
	movq	-104(%rsp), %rsi                # 8-byte Reload
	leaq	(%rsi,%rsi), %r10
	negq	%r10
	movq	%r9, %rsi
	negq	%rsi
	movl	$6, %ebx
	jmp	.LBB3_24
	.p2align	4, 0x90
.LBB3_30:                               # %for.cond102.for.end189_crit_edge.us
                                        #   in Loop: Header=BB3_24 Depth=1
	leaq	(%rdi,%r9), %r13
	movl	-112(%rsp), %ebx                # 4-byte Reload
	addl	$2, %ebx
	cmpl	-80(%rsp), %ebx                 # 4-byte Folded Reload
	jge	.LBB3_31
.LBB3_24:                               # %for.cond102.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_25 Depth 2
	movl	%ebx, -112(%rsp)                # 4-byte Spill
	movl	-124(%rsp), %ebx                # 4-byte Reload
	movq	%r13, %rdi
	jmp	.LBB3_25
	.p2align	4, 0x90
.LBB3_28:                               # %if.else176.us
                                        #   in Loop: Header=BB3_25 Depth=2
	movl	%r13d, %r14d
.LBB3_29:                               # %if.end181.us
                                        #   in Loop: Header=BB3_25 Depth=2
	movw	%r14w, (%r8)
	addq	%rcx, %r8
	addq	%rdx, %rdi
	decl	%ebx
	je	.LBB3_30
.LBB3_25:                               # %for.body105.us
                                        #   Parent Loop BB3_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rdi), %r14d
	movzwl	(%rdi,%r9), %r13d
	addl	%r14d, %r13d
	imull	$225, %r13d, %r14d
	movzwl	(%rdi,%rsi), %r13d
	movq	-104(%rsp), %r15                # 8-byte Reload
	movzwl	(%rdi,%r15,2), %r15d
	addl	%r13d, %r15d
	imull	$69, %r15d, %r15d
	addl	%r14d, %r15d
	movzwl	(%rdi,%r10), %r14d
	movzwl	(%rdi,%r12,2), %r13d
	addl	%r14d, %r13d
	imull	$-30, %r13d, %r14d
	addl	%r15d, %r14d
	movzwl	(%rdi,%r11), %r15d
	movq	-64(%rsp), %r13                 # 8-byte Reload
	movzwl	(%rdi,%r13,2), %r13d
	addl	%r15d, %r13d
	shll	$4, %r13d
	subl	%r13d, %r14d
	movzwl	(%rdi,%rax), %r15d
	movq	-48(%rsp), %r13                 # 8-byte Reload
	movzwl	(%rdi,%r13,2), %r13d
	addl	%r15d, %r13d
	leal	(%r13,%r13,2), %r15d
	leal	(%r14,%r15,2), %r14d
	movzwl	(%rdi,%rbp), %r15d
	movq	-72(%rsp), %r13                 # 8-byte Reload
	movzwl	(%rdi,%r13,2), %r13d
	addl	%r15d, %r13d
	leal	(%r14,%r13,2), %r13d
	xorl	%r14d, %r14d
	cmpl	$-767, %r13d                    # imm = 0xFD01
	jl	.LBB3_29
# %bb.26:                               # %if.else176.us
                                        #   in Loop: Header=BB3_25 Depth=2
	leal	256(%r13), %r14d
	addl	$767, %r13d                     # imm = 0x2FF
	testl	%r14d, %r14d
	cmovnsl	%r14d, %r13d
	sarl	$9, %r13d
	cmpl	72(%rsp), %r13d
	jl	.LBB3_28
# %bb.27:                               # %if.else176.us
                                        #   in Loop: Header=BB3_25 Depth=2
	movl	72(%rsp), %r14d
	movl	%r14d, %r13d
	jmp	.LBB3_28
.LBB3_21:
	movq	%r12, %rcx
	jmp	.LBB3_32
.LBB3_31:                               # %for.end194.loopexit
	movq	%r12, %rcx
	movl	-120(%rsp), %r9d                # 4-byte Reload
	addl	$8, %r9d
	movq	-96(%rsp), %r10                 # 8-byte Reload
	leaq	(%rdi,%r10,2), %r13
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	-8(%rsp), %r14                  # 8-byte Reload
	movq	-16(%rsp), %r15                 # 8-byte Reload
	jmp	.LBB3_32
.LBB3_44:                               # %for.cond102.preheader.preheader
	movq	%r12, %rcx
	movl	%r9d, %eax
	addq	$2, %rax
	imulq	%r10, %rax
	addq	%rax, %r13
	addl	$8, %r9d
.LBB3_32:                               # %for.end194
	movl	%edx, %eax
	andl	$-2, %eax
	movl	%eax, -72(%rsp)                 # 4-byte Spill
	cmpl	%eax, %r9d
	jge	.LBB3_42
# %bb.33:                               # %for.body199.lr.ph
	cmpl	$0, -124(%rsp)                  # 4-byte Folded Reload
	jle	.LBB3_42
# %bb.34:                               # %for.body199.us.preheader
	leal	-1(%rdx), %eax
	movl	%eax, -88(%rsp)                 # 4-byte Spill
	leal	-2(%rdx), %eax
	movl	%eax, -24(%rsp)                 # 4-byte Spill
	leal	-3(%rdx), %eax
	movl	%eax, -32(%rsp)                 # 4-byte Spill
	leal	-4(%rdx), %eax
	movl	%eax, -40(%rsp)                 # 4-byte Spill
	addl	$-5, %edx
	addq	%r15, %r15
	addq	%r10, %r10
	addq	%r14, %r14
	movq	-48(%rsp), %r12                 # 8-byte Reload
	addq	%r12, %r12
	negq	%r12
	movq	%r12, -48(%rsp)                 # 8-byte Spill
	movq	-64(%rsp), %r12                 # 8-byte Reload
	addq	%r12, %r12
	negq	%r12
	movq	%r12, -64(%rsp)                 # 8-byte Spill
	movq	%rcx, %r12
	addq	%rcx, %r12
	negq	%r12
	movq	%r12, -112(%rsp)                # 8-byte Spill
	movq	-104(%rsp), %rax                # 8-byte Reload
	addq	%rax, %rax
	negq	%rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	%r10, %r12
	negq	%r12
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	movq	%r10, -96(%rsp)                 # 8-byte Spill
	jmp	.LBB3_35
	.p2align	4, 0x90
.LBB3_41:                               # %for.cond249.for.end337_crit_edge.us
                                        #   in Loop: Header=BB3_35 Depth=1
	movq	-96(%rsp), %r10                 # 8-byte Reload
	addq	%r10, %r13
	movl	-120(%rsp), %r9d                # 4-byte Reload
	addl	$2, %r9d
	cmpl	-72(%rsp), %r9d                 # 4-byte Folded Reload
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	jge	.LBB3_42
.LBB3_35:                               # %for.body199.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_36 Depth 2
	movl	-88(%rsp), %edi                 # 4-byte Reload
	subl	%r9d, %edi
	movl	$0, %eax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	cmovgl	%ecx, %eax
	cmpl	-24(%rsp), %r9d                 # 4-byte Folded Reload
	movl	%edi, %esi
	movl	$2, %r10d
	cmovll	%r10d, %esi
	cmpl	-32(%rsp), %r9d                 # 4-byte Folded Reload
	movl	%edi, %r10d
	movl	$3, %r11d
	cmovll	%r11d, %r10d
	cmpl	-40(%rsp), %r9d                 # 4-byte Folded Reload
	movl	%edi, %r11d
	movl	$4, %ebx
	cmovll	%ebx, %r11d
	cmpl	%edx, %r9d
	movl	%edi, %ebx
	movl	$5, %edx
	cmovll	%edx, %ebx
	movl	%r9d, -120(%rsp)                # 4-byte Spill
	cmpl	-80(%rsp), %r9d                 # 4-byte Folded Reload
	movl	$6, %edx
	cmovll	%edx, %edi
	cltq
	imull	%ecx, %esi
	movslq	%esi, %r9
	imull	%ecx, %r10d
	movslq	%r10d, %r10
	imull	%ecx, %r11d
	movslq	%r11d, %r11
	imull	%ecx, %ebx
	movslq	%ebx, %rbp
	imull	%ecx, %edi
	movslq	%edi, %rdi
	movl	-124(%rsp), %ebx                # 4-byte Reload
	jmp	.LBB3_36
	.p2align	4, 0x90
.LBB3_39:                               # %if.else324.us
                                        #   in Loop: Header=BB3_36 Depth=2
	movl	%esi, %r14d
.LBB3_40:                               # %if.end329.us
                                        #   in Loop: Header=BB3_36 Depth=2
	movw	%r14w, (%r8)
	addq	%r15, %r8
	movq	%rdx, %r14
	addq	%rdx, %r13
	decl	%ebx
	je	.LBB3_41
.LBB3_36:                               # %for.body252.us
                                        #   Parent Loop BB3_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rdx
	movzwl	(%r13), %esi
	movzwl	(%r13,%rax,2), %r14d
	addl	%esi, %r14d
	imull	$225, %r14d, %esi
	movzwl	(%r13,%r12), %r14d
	movq	%r15, %rcx
	movzwl	(%r13,%r9,2), %r15d
	addl	%r14d, %r15d
	imull	$69, %r15d, %r14d
	addl	%esi, %r14d
	movq	-104(%rsp), %rsi                # 8-byte Reload
	movzwl	(%r13,%rsi), %esi
	movzwl	(%r13,%r10,2), %r15d
	addl	%esi, %r15d
	imull	$-30, %r15d, %esi
	addl	%r14d, %esi
	movq	-112(%rsp), %r14                # 8-byte Reload
	movzwl	(%r13,%r14), %r14d
	movzwl	(%r13,%r11,2), %r15d
	addl	%r14d, %r15d
	shll	$4, %r15d
	subl	%r15d, %esi
	movq	-64(%rsp), %r14                 # 8-byte Reload
	movzwl	(%r13,%r14), %r14d
	movzwl	(%r13,%rbp,2), %r15d
	addl	%r14d, %r15d
	leal	(%r15,%r15,2), %r14d
	leal	(%rsi,%r14,2), %esi
	movq	-48(%rsp), %r14                 # 8-byte Reload
	movzwl	(%r13,%r14), %r14d
	movzwl	(%r13,%rdi,2), %r15d
	addl	%r14d, %r15d
	leal	(%rsi,%r15,2), %esi
	movq	%rcx, %r15
	xorl	%r14d, %r14d
	cmpl	$-767, %esi                     # imm = 0xFD01
	jl	.LBB3_40
# %bb.37:                               # %if.else324.us
                                        #   in Loop: Header=BB3_36 Depth=2
	leal	256(%rsi), %r14d
	addl	$767, %esi                      # imm = 0x2FF
	testl	%r14d, %r14d
	cmovnsl	%r14d, %esi
	sarl	$9, %esi
	cmpl	72(%rsp), %esi
	jl	.LBB3_39
# %bb.38:                               # %if.else324.us
                                        #   in Loop: Header=BB3_36 Depth=2
	movl	72(%rsp), %esi
                                        # kill: def $esi killed $esi def $rsi
	jmp	.LBB3_39
.LBB3_42:                               # %for.end342
	addq	$16, %rsp
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
	.size	vertical_half_1chan, .Lfunc_end3-vertical_half_1chan
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function ReadTIFFImage
.LCPI4_0:
	.quad	0x40cb7b7b7b7b7b7b              # double 14070.964705882352
	.quad	0x40d0000000000000              # double 16384
.LCPI4_1:
	.quad	0x40cc1c1c1c1c1c1c              # double 14392.219607843137
	.quad	0x40d0000000000000              # double 16384
.LCPI4_2:
	.quad	0x3fe0000000000000              # double 0.5
	.quad	0x3fe0000000000000              # double 0.5
.LCPI4_5:
	.quad	0xbfe0000000000000              # double -0.5
	.quad	0x3fe0000000000000              # double 0.5
.LCPI4_6:
	.zero	8
	.quad	0x3fe0000000000000              # double 0.5
.LCPI4_7:
	.quad	0xbfe0000000000000              # double -0.5
	.quad	0xbfe0000000000000              # double -0.5
.LCPI4_8:
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	65535                           # 0xffff
	.short	65535                           # 0xffff
	.short	65535                           # 0xffff
	.short	65535                           # 0xffff
	.short	65535                           # 0xffff
.LCPI4_9:
	.short	65535                           # 0xffff
	.short	65535                           # 0xffff
	.short	65535                           # 0xffff
	.short	65535                           # 0xffff
	.short	65535                           # 0xffff
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
.LCPI4_10:
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
.LCPI4_11:
	.long	2147549183                      # 0x8000ffff
	.long	2147549183                      # 0x8000ffff
	.long	2147549183                      # 0x8000ffff
	.long	2147549183                      # 0x8000ffff
.LCPI4_12:
	.long	536879104                       # 0x20002000
	.long	536879104                       # 0x20002000
	.long	536879104                       # 0x20002000
	.long	536879104                       # 0x20002000
.LCPI4_13:
	.short	65535                           # 0xffff
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	65535                           # 0xffff
.LCPI4_14:
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
.LCPI4_15:
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	65535                           # 0xffff
	.short	0                               # 0x0
.LCPI4_16:
	.long	536879104                       # 0x20002000
	.zero	4
	.zero	4
	.zero	4
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI4_3:
	.quad	0xbff0000000000000              # double -1
.LCPI4_4:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	ReadTIFFImage
	.p2align	4, 0x90
	.type	ReadTIFFImage,@function
ReadTIFFImage:                          # @ReadTIFFImage
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
	subq	$1544, %rsp                     # imm = 0x608
	.cfi_def_cfa_offset 1600
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %r15
	movl	%edx, %r9d
	movq	%rdi, %r13
	movslq	16(%rcx), %r12
	movl	28(%rcx), %ebx
	cmpl	$1, 4(%rcx)
	jne	.LBB4_2
# %bb.1:                                # %land.lhs.true
	cmpl	$0, 916(%rsi)
	je	.LBB4_70
.LBB4_2:                                # %if.end
	movl	924(%rsi), %r8d
	testl	%r8d, %r8d
	jle	.LBB4_6
# %bb.3:                                # %if.then5
	addl	3992(%r13), %r9d
	leaq	255(%rsi), %rcx
	leaq	510(%rsi), %rax
	cmpl	$0, 920(%rsi)
	movl	$.L.str.2, %esi
	movl	$.L.str.1, %edx
	cmoveq	%rsi, %rdx
	movq	%rax, (%rsp)
	leaq	1280(%rsp), %rdi
	movl	$255, %esi
	xorl	%eax, %eax
	callq	snprintf@PLT
	cmpl	$255, %eax
	je	.LBB4_5
# %bb.4:                                # %if.then5
	cmpl	$-1, %eax
	jne	.LBB4_7
.LBB4_5:                                # %if.then22
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.3, %edi
	movl	$39, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	jmp	.LBB4_107
.LBB4_6:                                # %if.else25
	leaq	1280(%rsp), %rdi
	callq	strcpy@PLT
.LBB4_7:                                # %if.end29
	leaq	1280(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	open@PLT
	cmpl	$-1, %eax
	je	.LBB4_16
# %bb.8:                                # %if.end.i.i
	movl	%eax, %ebp
	movq	%r12, 216(%rsp)                 # 8-byte Spill
	movl	%eax, %edi
	xorl	%esi, %esi
	movl	$2, %edx
	callq	lseek@PLT
	cmpq	$-1, %rax
	je	.LBB4_101
# %bb.9:                                # %if.end9.i.i
	movq	%rax, %r12
	movl	%ebp, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	lseek@PLT
	cmpq	$-1, %rax
	je	.LBB4_101
# %bb.10:                               # %if.end14.i.i
	movq	ReadTIFFImage.t+8(%rip), %rdi
	movq	%r12, %rsi
	callq	realloc@PLT
	movq	%rax, ReadTIFFImage.t+8(%rip)
	testq	%rax, %rax
	je	.LBB4_15
# %bb.11:                               # %if.end22.i.i
	movl	%ebp, %edi
	movq	%rax, %rsi
	movq	%r12, %rdx
	callq	read@PLT
	movq	%rbx, 296(%rsp)                 # 8-byte Spill
	movq	%rax, %rbx
	movl	%ebp, %edi
	callq	close@PLT
	cmpq	%r12, %rbx
	jne	.LBB4_101
# %bb.12:                               # %if.end29.i.i
	movq	ReadTIFFImage.t+8(%rip), %rax
	movzwl	(%rax), %ecx
	rolw	$8, %cx
	movzwl	%cx, %ecx
	cmpl	$18761, %ecx                    # imm = 0x4949
	je	.LBB4_17
# %bb.13:                               # %if.end29.i.i
	cmpl	$19789, %ecx                    # imm = 0x4D4D
	jne	.LBB4_127
# %bb.14:
	movl	$getSwappedU32, %edx
	movl	$getSwappedU16, %ecx
	xorl	%esi, %esi
	jmp	.LBB4_18
.LBB4_15:                               # %if.then20.i.i
	movl	%ebp, %edi
	callq	close@PLT
	jmp	.LBB4_101
.LBB4_16:                               # %if.then.i.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	1280(%rsp), %rdx
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	callq	fprintf@PLT
	jmp	.LBB4_101
.LBB4_17:
	movl	$getU32, %edx
	movl	$getU16, %ecx
	movl	$1, %esi
.LBB4_18:                               # %if.end.i
	leaq	1(%rax), %rdi
	movl	%esi, ReadTIFFImage.t+24(%rip)
	movq	%rcx, ReadTIFFImage.t+8728(%rip)
	movq	%rdx, ReadTIFFImage.t+8736(%rip)
	movq	%rdi, ReadTIFFImage.t+16(%rip)
	movzbl	(%rax), %edx
	leaq	2(%rax), %rsi
	movq	%rsi, ReadTIFFImage.t+16(%rip)
	movzbl	1(%rax), %esi
	shll	$8, %esi
	orl	%edx, %esi
	movw	%si, ReadTIFFImage.t+32(%rip)
	leaq	3(%rax), %rdx
	movq	%rdx, ReadTIFFImage.t+16(%rip)
	movzbl	2(%rax), %esi
	leaq	4(%rax), %rdx
	movq	%rdx, ReadTIFFImage.t+16(%rip)
	movzbl	3(%rax), %edx
	shll	$8, %edx
	orl	%esi, %edx
	movw	%dx, ReadTIFFImage.t+34(%rip)
	leaq	5(%rax), %rsi
	movq	%rsi, ReadTIFFImage.t+16(%rip)
	movzbl	4(%rax), %edi
	leaq	6(%rax), %rsi
	movq	%rsi, ReadTIFFImage.t+16(%rip)
	movzbl	5(%rax), %esi
	leaq	7(%rax), %r8
	movq	%r8, ReadTIFFImage.t+16(%rip)
	movzbl	6(%rax), %r8d
	leaq	8(%rax), %r9
	movq	%r9, ReadTIFFImage.t+16(%rip)
	movzbl	7(%rax), %r9d
	shll	$24, %r9d
	shll	$16, %r8d
	shll	$8, %esi
	orl	%edi, %esi
	orl	%r8d, %esi
	orl	%r9d, %esi
	movl	%esi, ReadTIFFImage.t+36(%rip)
	cmpw	$42, %dx
	jne	.LBB4_100
# %bb.19:                               # %if.end4.i
	movq	%r15, 136(%rsp)                 # 8-byte Spill
	movl	%esi, %edx
	addq	%rdx, %rax
	movq	%rax, ReadTIFFImage.t+16(%rip)
	movl	$ReadTIFFImage.t, %edi
	callq	*%rcx
	testl	%eax, %eax
	je	.LBB4_47
# %bb.20:                               # %for.body.i.i.preheader
	movl	%eax, %ebp
	jmp	.LBB4_23
.LBB4_21:                               # %sw.bb.i.i.i
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	%eax, ReadTIFFImage.t+64(%rip)
	.p2align	4, 0x90
.LBB4_22:                               # %readDirectoryEntry.exit.i.i
                                        #   in Loop: Header=BB4_23 Depth=1
	decl	%ebp
	je	.LBB4_47
.LBB4_23:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$ReadTIFFImage.t, %edi
	callq	*ReadTIFFImage.t+8728(%rip)
	movl	%eax, %ebx
	movl	$ReadTIFFImage.t, %edi
	callq	*ReadTIFFImage.t+8728(%rip)
	movl	%eax, %r12d
	movl	$ReadTIFFImage.t, %edi
	callq	*ReadTIFFImage.t+8736(%rip)
	movl	%eax, %r15d
	movl	$ReadTIFFImage.t, %edi
	callq	*ReadTIFFImage.t+8736(%rip)
	addl	$-256, %ebx
	cmpl	$27, %ebx
	ja	.LBB4_22
# %bb.24:                               # %for.body.i.i
                                        #   in Loop: Header=BB4_23 Depth=1
	jmpq	*.LJTI4_0(,%rbx,8)
.LBB4_25:                               # %sw.bb6.i.i.i
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	%eax, ReadTIFFImage.t+60(%rip)
	cmpl	$1081, %eax                     # imm = 0x439
	jb	.LBB4_22
# %bb.26:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB4_23 Depth=1
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdi
	movl	$.L.str.12, %esi
	movl	%eax, %edx
	movl	$1080, %ecx                     # imm = 0x438
	xorl	%eax, %eax
	callq	fprintf@PLT
	jmp	.LBB4_22
.LBB4_27:                               # %sw.bb8.i.i.i
                                        #   in Loop: Header=BB4_23 Depth=1
	cmpl	$3, %r15d
	jne	.LBB4_44
# %bb.28:                               # %if.end12.i.i.i
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	$ReadTIFFImage.t+44, %edx
	movl	%eax, %edi
	movl	%r12d, %esi
	movl	$3, %ecx
	callq	getIntArray
	movl	ReadTIFFImage.t+44(%rip), %eax
	cmpl	ReadTIFFImage.t+48(%rip), %eax
	jne	.LBB4_45
# %bb.29:                               # %if.end12.i.i.i
                                        #   in Loop: Header=BB4_23 Depth=1
	cmpl	ReadTIFFImage.t+52(%rip), %eax
	jne	.LBB4_45
# %bb.30:                               # %if.end24.i.i.i
                                        #   in Loop: Header=BB4_23 Depth=1
	cmpl	$8, %eax
	je	.LBB4_22
# %bb.31:                               # %if.end24.i.i.i
                                        #   in Loop: Header=BB4_23 Depth=1
	cmpl	$16, %eax
	je	.LBB4_22
# %bb.32:                               # %if.then31.i.i.i
                                        #   in Loop: Header=BB4_23 Depth=1
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.15, %edi
	movl	$40, %esi
	jmp	.LBB4_46
.LBB4_33:                               # %sw.bb42.i.i.i
                                        #   in Loop: Header=BB4_23 Depth=1
	movw	%ax, ReadTIFFImage.t+40(%rip)
	cmpw	$1, %ax
	je	.LBB4_22
# %bb.34:                               # %if.then47.i.i.i
                                        #   in Loop: Header=BB4_23 Depth=1
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.17, %edi
	movl	$32, %esi
	jmp	.LBB4_46
.LBB4_35:                               # %sw.bb51.i.i.i
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	%eax, ReadTIFFImage.t+56(%rip)
	jmp	.LBB4_22
.LBB4_36:                               # %sw.bb52.i.i.i
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	$ReadTIFFImage.t+68, %edx
	movl	%eax, %edi
	movl	%r12d, %esi
	movl	%r15d, %ecx
	jmp	.LBB4_43
.LBB4_37:                               # %sw.bb34.i.i.i
                                        #   in Loop: Header=BB4_23 Depth=1
	cmpl	$1, %eax
	je	.LBB4_22
# %bb.38:                               # %if.then36.i.i.i
                                        #   in Loop: Header=BB4_23 Depth=1
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.16, %edi
	movl	$39, %esi
	jmp	.LBB4_46
.LBB4_39:                               # %sw.bb40.i.i.i
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	$ReadTIFFImage.t+4388, %edx
	movl	%eax, %edi
	movl	%r12d, %esi
	movl	%r15d, %ecx
	callq	getIntArray
	movl	%r15d, ReadTIFFImage.t+28(%rip)
	jmp	.LBB4_22
.LBB4_40:                               # %sw.bb56.i.i.i
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	$ReadTIFFImage.t+8716, %edx
	jmp	.LBB4_42
.LBB4_41:                               # %sw.bb54.i.i.i
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	$ReadTIFFImage.t+8708, %edx
.LBB4_42:                               # %readDirectoryEntry.exit.i.i
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	%eax, %edi
	movl	%r12d, %esi
	movl	$1, %ecx
.LBB4_43:                               # %readDirectoryEntry.exit.i.i
                                        #   in Loop: Header=BB4_23 Depth=1
	callq	getIntArray
	jmp	.LBB4_22
.LBB4_44:                               # %if.then10.i.i.i
                                        #   in Loop: Header=BB4_23 Depth=1
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.13, %edi
	movl	$35, %esi
	jmp	.LBB4_46
.LBB4_45:                               # %if.then22.i.i.i
                                        #   in Loop: Header=BB4_23 Depth=1
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.14, %edi
	movl	$47, %esi
.LBB4_46:                               # %readDirectoryEntry.exit.i.i
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	$1, %edx
	callq	fwrite@PLT
	jmp	.LBB4_22
.LBB4_47:                               # %readImageFileDirectory.exit.i
	movl	ReadTIFFImage.t+64(%rip), %eax
	imull	ReadTIFFImage.t+60(%rip), %eax
	addl	%eax, %eax
	leal	(%rax,%rax,2), %esi
	movq	ReadTIFFImage.t(%rip), %rdi
	callq	realloc@PLT
	movq	%rax, ReadTIFFImage.t(%rip)
	testq	%rax, %rax
	movq	136(%rsp), %r15                 # 8-byte Reload
	movq	296(%rsp), %rbx                 # 8-byte Reload
	je	.LBB4_101
# %bb.48:                               # %if.end.i38.i
	movl	ReadTIFFImage.t+44(%rip), %ecx
	cmpl	$16, %ecx
	je	.LBB4_71
# %bb.49:                               # %if.end.i38.i
	cmpl	$8, %ecx
	movq	216(%rsp), %r12                 # 8-byte Reload
	jne	.LBB4_82
# %bb.50:                               # %for.cond.preheader.i.i
	movl	ReadTIFFImage.t+28(%rip), %esi
	testl	%esi, %esi
	jle	.LBB4_82
# %bb.51:                               # %for.body.i47.i.preheader
	xorl	%ecx, %ecx
	pxor	%xmm0, %xmm0
	jmp	.LBB4_54
	.p2align	4, 0x90
.LBB4_52:                               # %for.inc20.loopexit.i.i
                                        #   in Loop: Header=BB4_54 Depth=1
	movl	ReadTIFFImage.t+28(%rip), %esi
	movq	%rdi, %rax
.LBB4_53:                               # %for.inc20.i.i
                                        #   in Loop: Header=BB4_54 Depth=1
	incq	%rcx
	movslq	%esi, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB4_82
.LBB4_54:                               # %for.body.i47.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_61 Depth 2
                                        #     Child Loop BB4_65 Depth 2
                                        #     Child Loop BB4_69 Depth 2
	movslq	ReadTIFFImage.t+68(,%rcx,4), %rdx
	testq	%rdx, %rdx
	jle	.LBB4_53
# %bb.55:                               # %for.body17.preheader.i.i
                                        #   in Loop: Header=BB4_54 Depth=1
	movq	ReadTIFFImage.t+8(%rip), %r9
	movl	ReadTIFFImage.t+4388(,%rcx,4), %r10d
	leaq	(%r9,%r10), %rsi
	xorl	%r8d, %r8d
	cmpl	$32, %edx
	jb	.LBB4_56
# %bb.57:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_54 Depth=1
	leal	-1(%rdx), %edi
	leaq	(%r9,%r10), %r11
	addq	%rdi, %r11
	incq	%r11
	cmpq	%r11, %rax
	jae	.LBB4_60
# %bb.58:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_54 Depth=1
	leaq	(%rax,%rdi,2), %rdi
	addq	$2, %rdi
	cmpq	%rdi, %rsi
	jae	.LBB4_60
.LBB4_56:                               #   in Loop: Header=BB4_54 Depth=1
	movq	%rax, %rdi
.LBB4_63:                               # %for.body17.i.i.preheader
                                        #   in Loop: Header=BB4_54 Depth=1
	movl	%edx, %eax
	subl	%r8d, %eax
	andl	$7, %eax
	je	.LBB4_67
# %bb.64:                               # %for.body17.i.i.prol.preheader
                                        #   in Loop: Header=BB4_54 Depth=1
	negl	%eax
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB4_65:                               # %for.body17.i.i.prol
                                        #   Parent Loop BB4_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsi), %r10d
	incq	%rsi
	movw	%r10w, (%rdi)
	addq	$2, %rdi
	decl	%r9d
	cmpl	%r9d, %eax
	jne	.LBB4_65
# %bb.66:                               # %for.body17.i.i.prol.loopexit.loopexit
                                        #   in Loop: Header=BB4_54 Depth=1
	movl	%r8d, %eax
	subl	%r9d, %eax
	subl	%edx, %r8d
	cmpl	$-8, %r8d
	ja	.LBB4_52
	jmp	.LBB4_68
.LBB4_67:                               #   in Loop: Header=BB4_54 Depth=1
	movl	%r8d, %eax
	subl	%edx, %r8d
	cmpl	$-8, %r8d
	ja	.LBB4_52
.LBB4_68:                               # %for.body17.i.i.preheader5
                                        #   in Loop: Header=BB4_54 Depth=1
	subl	%eax, %edx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB4_69:                               # %for.body17.i.i
                                        #   Parent Loop BB4_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsi,%rax), %r8d
	movw	%r8w, (%rdi)
	movzbl	1(%rsi,%rax), %r8d
	movw	%r8w, 2(%rdi)
	movzbl	2(%rsi,%rax), %r8d
	movw	%r8w, 4(%rdi)
	movzbl	3(%rsi,%rax), %r8d
	movw	%r8w, 6(%rdi)
	movzbl	4(%rsi,%rax), %r8d
	movw	%r8w, 8(%rdi)
	movzbl	5(%rsi,%rax), %r8d
	movw	%r8w, 10(%rdi)
	movzbl	6(%rsi,%rax), %r8d
	movw	%r8w, 12(%rdi)
	movzbl	7(%rsi,%rax), %r8d
	movw	%r8w, 14(%rdi)
	addq	$16, %rdi
	addq	$8, %rax
	cmpl	%eax, %edx
	jne	.LBB4_69
	jmp	.LBB4_52
.LBB4_60:                               # %vector.ph
                                        #   in Loop: Header=BB4_54 Depth=1
	movl	%edx, %r8d
	andl	$2147483616, %r8d               # imm = 0x7FFFFFE0
	movl	%r8d, %edi
	leaq	(%rax,%rdi,2), %rdi
	addq	%r8, %rsi
	addq	%r10, %r9
	addq	$24, %r9
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB4_61:                               # %vector.body
                                        #   Parent Loop BB4_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%r9,%r10), %xmm1            # xmm1 = mem[0],zero
	movq	-16(%r9,%r10), %xmm2            # xmm2 = mem[0],zero
	movq	-8(%r9,%r10), %xmm3             # xmm3 = mem[0],zero
	movq	(%r9,%r10), %xmm4               # xmm4 = mem[0],zero
	punpcklbw	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	punpcklbw	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklbw	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklbw	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	movdqu	%xmm1, (%rax,%r10,2)
	movdqu	%xmm2, 16(%rax,%r10,2)
	movdqu	%xmm3, 32(%rax,%r10,2)
	movdqu	%xmm4, 48(%rax,%r10,2)
	addq	$32, %r10
	cmpq	%r10, %r8
	jne	.LBB4_61
# %bb.62:                               # %middle.block
                                        #   in Loop: Header=BB4_54 Depth=1
	cmpq	%rdx, %r8
	je	.LBB4_52
	jmp	.LBB4_63
.LBB4_70:                               # %if.then
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str, %edi
	movl	$102, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	jmp	.LBB4_106
.LBB4_71:                               # %sw.bb23.i.i
	movq	ReadTIFFImage.t+16(%rip), %rcx
	movl	ReadTIFFImage.t+28(%rip), %edi
	testl	%edi, %edi
	movq	216(%rsp), %r12                 # 8-byte Reload
	jle	.LBB4_81
# %bb.72:                               # %for.body30.i.i.preheader
	xorl	%edx, %edx
	jmp	.LBB4_75
.LBB4_73:                               # %for.inc51.loopexit.i.i
                                        #   in Loop: Header=BB4_75 Depth=1
	movl	ReadTIFFImage.t+28(%rip), %edi
.LBB4_74:                               # %for.inc51.i.i
                                        #   in Loop: Header=BB4_75 Depth=1
	incq	%rdx
	movslq	%edi, %rsi
	cmpq	%rsi, %rdx
	jge	.LBB4_81
.LBB4_75:                               # %for.body30.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_78 Depth 2
	movl	ReadTIFFImage.t+68(,%rdx,4), %esi
	movl	ReadTIFFImage.t+4388(,%rdx,4), %r8d
	addq	ReadTIFFImage.t+8(%rip), %r8
	movq	%r8, ReadTIFFImage.t+16(%rip)
	cmpl	$2, %esi
	jb	.LBB4_74
# %bb.76:                               # %for.body44.i.i.preheader
                                        #   in Loop: Header=BB4_75 Depth=1
	movl	%esi, %edi
	shrl	%edi
	cmpl	$1, %edi
	je	.LBB4_79
# %bb.77:                               # %for.body44.i.i.preheader.new
                                        #   in Loop: Header=BB4_75 Depth=1
	andl	$-2, %edi
	.p2align	4, 0x90
.LBB4_78:                               # %for.body44.i.i
                                        #   Parent Loop BB4_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	ReadTIFFImage.t+16(%rip), %r8
	leaq	1(%r8), %r9
	movq	%r9, ReadTIFFImage.t+16(%rip)
	movzbl	(%r8), %r9d
	leaq	2(%r8), %r10
	movq	%r10, ReadTIFFImage.t+16(%rip)
	movzbl	1(%r8), %r8d
	shll	$8, %r8d
	orl	%r9d, %r8d
	movw	%r8w, (%rax)
	movq	ReadTIFFImage.t+16(%rip), %r8
	leaq	1(%r8), %r9
	movq	%r9, ReadTIFFImage.t+16(%rip)
	movzbl	(%r8), %r9d
	leaq	2(%r8), %r10
	movq	%r10, ReadTIFFImage.t+16(%rip)
	movzbl	1(%r8), %r8d
	shll	$8, %r8d
	orl	%r9d, %r8d
	movw	%r8w, 2(%rax)
	addq	$4, %rax
	addl	$-2, %edi
	jne	.LBB4_78
.LBB4_79:                               # %for.inc51.loopexit.i.i.unr-lcssa
                                        #   in Loop: Header=BB4_75 Depth=1
	testb	$2, %sil
	je	.LBB4_73
# %bb.80:                               # %for.body44.i.i.epil
                                        #   in Loop: Header=BB4_75 Depth=1
	movq	ReadTIFFImage.t+16(%rip), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, ReadTIFFImage.t+16(%rip)
	movzbl	(%rsi), %edi
	leaq	2(%rsi), %r8
	movq	%r8, ReadTIFFImage.t+16(%rip)
	movzbl	1(%rsi), %esi
	shll	$8, %esi
	orl	%edi, %esi
	movw	%si, (%rax)
	addq	$2, %rax
	jmp	.LBB4_73
.LBB4_81:                               # %for.end53.i.i
	movq	%rcx, ReadTIFFImage.t+16(%rip)
.LBB4_82:                               # %if.end34
	movl	ReadTIFFImage.t+60(%rip), %edx
	cmpl	%ebx, %edx
	jne	.LBB4_125
# %bb.83:                               # %if.end38
	movl	ReadTIFFImage.t+64(%rip), %edx
	cmpl	%r12d, %edx
	jne	.LBB4_126
# %bb.84:                               # %if.end42
	movl	124(%r15), %edx
	cmpl	$8, %edx
	je	.LBB4_86
# %bb.85:                               # %if.end42
	cmpl	$16, %edx
	jne	.LBB4_142
.LBB4_86:                               # %if.end50
	movq	ReadTIFFImage.t(%rip), %rbp
	movl	%ebx, %edi
	imull	%r12d, %edi
	leal	(%rdi,%rdi,2), %r8d
	cmpl	$0, 4(%r15)
	je	.LBB4_88
# %bb.87:
	xorl	%edi, %edi
	jmp	.LBB4_170
.LBB4_88:                               # %if.then54
	movl	4000(%r13), %edx
	movl	%edx, %eax
	orl	$2, %eax
	cmpl	$3, %eax
	jne	.LBB4_201
# %bb.89:                               # %sw.epilog.i
	movl	3996(%r13), %eax
	xorl	%ecx, %ecx
	xorl	%r11d, %r11d
	testl	%eax, %eax
	sete	%cl
	setne	%sil
	shll	$3, %ecx
	movsd	.LCPI4_0(%rcx), %xmm5           # xmm5 = [1.4070964705882352E+4,0.0E+0]
	movsd	.LCPI4_1(%rcx), %xmm2           # xmm2 = [1.4392219607843137E+4,0.0E+0]
	shlq	$3, %rdx
	movsd	Coef(%rdx,%rdx,2), %xmm0        # xmm0 = mem[0],zero
	movupd	Coef+8(%rdx,%rdx,2), %xmm4
	movapd	%xmm5, %xmm1
	unpcklpd	%xmm5, %xmm1                    # xmm1 = xmm1[0],xmm5[0]
	mulpd	%xmm4, %xmm1
	addpd	.LCPI4_2(%rip), %xmm1
	cvttpd2dq	%xmm1, %xmm10
	pshufd	$85, %xmm10, %xmm9              # xmm9 = xmm10[1,1,1,1]
	movd	%xmm9, %r10d
	movd	%xmm10, %r9d
	movapd	%xmm2, %xmm7
	mulsd	%xmm0, %xmm7
	movapd	%xmm4, %xmm8
	unpckhpd	%xmm4, %xmm8                    # xmm8 = xmm8[1],xmm4[1]
	movsd	.LCPI4_3(%rip), %xmm3           # xmm3 = [-1.0E+0,0.0E+0]
	addsd	%xmm3, %xmm8
	movsd	.LCPI4_4(%rip), %xmm1           # xmm1 = [5.0E-1,0.0E+0]
	movapd	%xmm1, %xmm6
	divsd	%xmm8, %xmm6
	unpcklpd	%xmm5, %xmm7                    # xmm7 = xmm7[0],xmm5[0]
	movapd	%xmm6, %xmm8
	unpcklpd	%xmm0, %xmm8                    # xmm8 = xmm8[0],xmm0[0]
	mulpd	%xmm7, %xmm8
	movapd	.LCPI4_5(%rip), %xmm7           # xmm7 = [-5.0E-1,5.0E-1]
	addpd	%xmm7, %xmm8
	cvttpd2dq	%xmm8, %xmm11
	pshufd	$85, %xmm11, %xmm8              # xmm8 = xmm11[1,1,1,1]
	addsd	%xmm1, %xmm5
	cvttsd2si	%xmm5, %rcx
	movd	%xmm8, %r13d
	leal	(%r9,%r10), %edx
	addl	%r13d, %edx
	cmpl	%ecx, %edx
	jne	.LBB4_146
# %bb.90:                               # %if.end100.i
	movq	%r10, 144(%rsp)                 # 8-byte Spill
	shufpd	$2, .LCPI4_6(%rip), %xmm6       # xmm6 = xmm6[0],mem[1]
	movapd	%xmm2, %xmm5
	unpcklpd	%xmm2, %xmm5                    # xmm5 = xmm5[0],xmm2[0]
	mulpd	%xmm4, %xmm5
	movapd	%xmm5, %xmm4
	unpcklpd	%xmm2, %xmm4                    # xmm4 = xmm4[0],xmm2[0]
	mulpd	%xmm6, %xmm4
	addpd	%xmm7, %xmm4
	cvttpd2dq	%xmm4, %xmm12
	movd	%xmm12, %edx
	pshufd	$85, %xmm12, %xmm2              # xmm2 = xmm12[1,1,1,1]
	movd	%xmm2, %ecx
	movq	%rdx, 272(%rsp)                 # 8-byte Spill
	addl	%ecx, %edx
	movd	%xmm11, %r12d
	addl	%r12d, %edx
	jne	.LBB4_148
# %bb.91:                               # %if.end114.i
	movl	%r12d, %r15d
	addsd	%xmm3, %xmm0
	divsd	%xmm0, %xmm1
	unpcklpd	%xmm1, %xmm1                    # xmm1 = xmm1[0,0]
	mulpd	%xmm1, %xmm5
	addpd	.LCPI4_7(%rip), %xmm5
	cvttpd2dq	%xmm5, %xmm13
	movd	%xmm13, %r12d
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	leal	(%r12,%rcx), %edx
	pshufd	$85, %xmm13, %xmm0              # xmm0 = xmm13[1,1,1,1]
	movd	%xmm0, %ebx
	addl	%ebx, %edx
	jne	.LBB4_149
# %bb.92:                               # %if.end58
	movq	%r14, 208(%rsp)                 # 8-byte Spill
	movl	%r8d, 12(%rsp)                  # 4-byte Spill
	movb	%sil, %r11b
	shll	$26, %r11d
	orl	$8192, %r11d                    # imm = 0x2000
	leaq	2(%rbp), %rcx
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	movq	%rbp, 56(%rsp)                  # 8-byte Spill
	leaq	4(%rbp), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	testl	%eax, %eax
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	je	.LBB4_109
# %bb.93:                               # %for.cond.preheader.i
	testl	%edi, %edi
	movq	16(%rsp), %rbp                  # 8-byte Reload
	movl	%r13d, 256(%rsp)                # 4-byte Spill
	movl	%r15d, 240(%rsp)                # 4-byte Spill
	movq	144(%rsp), %r10                 # 8-byte Reload
	jle	.LBB4_114
# %bb.94:                               # %for.body.i.preheader
	movl	%r11d, %r14d
	xorl	%ecx, %ecx
	movq	56(%rsp), %r15                  # 8-byte Reload
	movq	128(%rsp), %r11                 # 8-byte Reload
	movq	88(%rsp), %r13                  # 8-byte Reload
	cmpl	$3, 24(%rsp)                    # 4-byte Folded Reload
	movl	%ebx, 224(%rsp)                 # 4-byte Spill
	jbe	.LBB4_98
# %bb.95:                               # %vector.ph432
	movl	24(%rsp), %edx                  # 4-byte Reload
	movq	%rdx, 464(%rsp)                 # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	andl	$2147483644, %edx               # imm = 0x7FFFFFFC
	leal	(%rdx,%rdx), %eax
	leaq	(%rax,%rax,2), %rcx
	movq	56(%rsp), %rax                  # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, 528(%rsp)                 # 8-byte Spill
	movq	128(%rsp), %rax                 # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, 496(%rsp)                 # 8-byte Spill
	movq	88(%rsp), %rax                  # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, 512(%rsp)                 # 8-byte Spill
	leaq	18(%rax), %rbx
	movq	%rdx, 480(%rsp)                 # 8-byte Spill
	movq	%rdx, %rax
	movl	%r14d, 336(%rsp)                # 4-byte Spill
	movq	%r9, 320(%rsp)                  # 8-byte Spill
	movq	%r12, 352(%rsp)                 # 8-byte Spill
.LBB4_96:                               # %vector.body443
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, 304(%rsp)                 # 8-byte Spill
	movzwl	-22(%rbx), %r14d
	movzwl	-16(%rbx), %eax
	movl	%eax, 64(%rsp)                  # 4-byte Spill
	movzwl	-20(%rbx), %r15d
	movzwl	-14(%rbx), %r12d
	movzwl	-8(%rbx), %r13d
	movzwl	-2(%rbx), %esi
	movq	%rsi, 96(%rsp)                  # 8-byte Spill
	movzwl	-18(%rbx), %edx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movzwl	-12(%rbx), %edi
	movq	%rdi, 112(%rsp)                 # 8-byte Spill
	movzwl	-6(%rbx), %r8d
	movq	%r8, 176(%rsp)                  # 8-byte Spill
	movzwl	(%rbx), %r9d
	movq	%r9, 192(%rsp)                  # 8-byte Spill
	movq	320(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %ecx
	imull	%r15d, %ecx
	movl	%eax, %r10d
	imull	%r12d, %r10d
	movl	%eax, %r11d
	imull	%r13d, %r11d
	movl	%eax, %ebp
	imull	%esi, %ebp
	movq	144(%rsp), %rsi                 # 8-byte Reload
	movl	%esi, %eax
	imull	%edx, %eax
	addl	%ecx, %eax
	movl	%esi, %ecx
	imull	%edi, %ecx
	addl	%r10d, %ecx
	movl	%esi, %edx
	imull	%r8d, %edx
	addl	%r11d, %edx
                                        # kill: def $esi killed $esi killed $rsi
	imull	%r9d, %esi
	addl	%ebp, %esi
	movl	256(%rsp), %edi                 # 4-byte Reload
	movl	%edi, %ebp
	movl	%r14d, %r10d
	movl	%r14d, 160(%rsp)                # 4-byte Spill
	imull	%r14d, %ebp
	movl	336(%rsp), %r8d                 # 4-byte Reload
	addl	%r8d, %ebp
	addl	%eax, %ebp
	movl	%edi, %eax
	movl	64(%rsp), %r9d                  # 4-byte Reload
	imull	%r9d, %eax
	addl	%r8d, %eax
	addl	%ecx, %eax
	movzwl	-10(%rbx), %r14d
	movl	%edi, %ecx
	imull	%r14d, %ecx
	addl	%r8d, %ecx
	addl	%edx, %ecx
	movzwl	-4(%rbx), %r11d
	imull	%r11d, %edi
	addl	%r8d, %edi
	addl	%esi, %edi
	shrl	$14, %ebp
	movw	%bp, -22(%rbx)
	shrl	$14, %eax
	shrl	$14, %ecx
	shrl	$14, %edi
	movw	%ax, -16(%rbx)
	movw	%cx, -10(%rbx)
	movw	%di, -4(%rbx)
	movl	240(%rsp), %edi                 # 4-byte Reload
	movl	%edi, %eax
	imull	%r10d, %eax
	movl	%edi, %ecx
	imull	%r9d, %ecx
	movq	272(%rsp), %rbp                 # 8-byte Reload
	movl	%ebp, %edx
	imull	%r15d, %edx
	addl	%eax, %edx
	movl	%ebp, %eax
	imull	%r12d, %eax
	addl	%ecx, %eax
	movl	%edi, %ecx
	imull	%r14d, %ecx
	movl	%ebp, %esi
	imull	%r13d, %esi
	addl	%ecx, %esi
	imull	%r11d, %edi
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	movq	96(%rsp), %r10                  # 8-byte Reload
	imull	%r10d, %ebp
	addl	%edi, %ebp
	movq	16(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	imull	32(%rsp), %ecx                  # 4-byte Folded Reload
	addl	%edx, %ecx
	addl	$536879104, %ecx                # imm = 0x20002000
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	movq	112(%rsp), %r8                  # 8-byte Reload
	imull	%r8d, %edx
	addl	%edx, %eax
	addl	$536879104, %eax                # imm = 0x20002000
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	movq	176(%rsp), %r9                  # 8-byte Reload
	imull	%r9d, %edx
	addl	%esi, %edx
	addl	$536879104, %edx                # imm = 0x20002000
	movq	16(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi def $rsi
	movq	192(%rsp), %rdi                 # 8-byte Reload
	imull	%edi, %esi
	addl	%ebp, %esi
	addl	$536879104, %esi                # imm = 0x20002000
	movq	16(%rsp), %rbp                  # 8-byte Reload
	shrl	$14, %ecx
	movw	%cx, -20(%rbx)
	shrl	$14, %eax
	movw	%ax, -14(%rbx)
	shrl	$14, %edx
	movw	%dx, -8(%rbx)
	shrl	$14, %esi
	movw	%si, -2(%rbx)
	movl	160(%rsp), %ecx                 # 4-byte Reload
	imull	%ebp, %ecx
	movq	352(%rsp), %rax                 # 8-byte Reload
	imull	%eax, %r15d
	addl	%ecx, %r15d
	movl	64(%rsp), %ecx                  # 4-byte Reload
	imull	%ebp, %ecx
	imull	%eax, %r12d
	addl	%ecx, %r12d
	imull	%ebp, %r14d
	imull	%eax, %r13d
	addl	%r14d, %r13d
	imull	%ebp, %r11d
	movq	%r10, %rcx
	imull	%eax, %ecx
	addl	%r11d, %ecx
	movq	%rcx, %r10
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	224(%rsp), %esi                 # 4-byte Reload
	imull	%esi, %eax
	addl	%r15d, %eax
	addl	$536879104, %eax                # imm = 0x20002000
	imull	%esi, %r8d
	leal	(%r8,%r12), %ecx
	addl	$536879104, %ecx                # imm = 0x20002000
	movq	%r9, %rdx
	imull	%esi, %edx
	movl	%esi, %r8d
	addl	%r13d, %edx
	addl	$536879104, %edx                # imm = 0x20002000
	movq	%rdi, %rsi
	imull	%r8d, %esi
	addl	%r10d, %esi
	addl	$536879104, %esi                # imm = 0x20002000
	shrl	$14, %eax
	movw	%ax, -18(%rbx)
	movq	304(%rsp), %rax                 # 8-byte Reload
	shrl	$14, %ecx
	movw	%cx, -12(%rbx)
	shrl	$14, %edx
	movw	%dx, -6(%rbx)
	shrl	$14, %esi
	movw	%si, (%rbx)
	addq	$24, %rbx
	addq	$-4, %rax
	jne	.LBB4_96
# %bb.97:                               # %middle.block429
	movq	480(%rsp), %rcx                 # 8-byte Reload
	cmpl	464(%rsp), %ecx                 # 4-byte Folded Reload
	movl	336(%rsp), %r14d                # 4-byte Reload
	movq	144(%rsp), %r10                 # 8-byte Reload
	movq	320(%rsp), %r9                  # 8-byte Reload
	movq	352(%rsp), %r12                 # 8-byte Reload
	movq	528(%rsp), %r15                 # 8-byte Reload
	movq	512(%rsp), %r13                 # 8-byte Reload
	movq	496(%rsp), %r11                 # 8-byte Reload
	je	.LBB4_114
.LBB4_98:                               # %for.body.i.preheader630
	movq	24(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	subl	%ecx, %eax
	xorl	%ecx, %ecx
.LBB4_99:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r15,%rcx), %edi
	movzwl	(%r11,%rcx), %edx
	movzwl	(%r13,%rcx), %esi
	movl	%r9d, %r8d
	imull	%edx, %r8d
	movq	%r12, %rbx
	movq	%r9, %r12
	movl	%r10d, %r9d
	imull	%esi, %r9d
	addl	%r8d, %r9d
	movl	256(%rsp), %r8d                 # 4-byte Reload
	imull	%edi, %r8d
	addl	%r14d, %r8d
	addl	%r9d, %r8d
	shrl	$14, %r8d
	movw	%r8w, (%r15,%rcx)
	movl	240(%rsp), %r8d                 # 4-byte Reload
	imull	%edi, %r8d
	movq	272(%rsp), %r9                  # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9 def $r9
	imull	%edx, %r9d
	addl	%r8d, %r9d
	movl	%ebp, %r8d
	imull	%esi, %r8d
	addl	%r9d, %r8d
	addl	$536879104, %r8d                # imm = 0x20002000
	movq	%r12, %r9
	movq	%rbx, %r12
	shrl	$14, %r8d
	movw	%r8w, (%r11,%rcx)
	imull	%ebp, %edi
	imull	%r12d, %edx
	addl	%edi, %edx
	imull	224(%rsp), %esi                 # 4-byte Folded Reload
	addl	%esi, %edx
	addl	$536879104, %edx                # imm = 0x20002000
	shrl	$14, %edx
	movw	%dx, (%r13,%rcx)
	addq	$6, %rcx
	decl	%eax
	jne	.LBB4_99
	jmp	.LBB4_114
.LBB4_100:                              # %readImageFileHeader.exit.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.11, %edi
	movl	$32, %esi
	movl	$1, %edx
	callq	fwrite@PLT
.LBB4_101:                              # %Error.i
	movq	ReadTIFFImage.t+8(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB4_103
.LBB4_102:                              # %if.then14.i
	callq	free@PLT
.LBB4_103:                              # %if.end16.i
	movq	$0, ReadTIFFImage.t+8(%rip)
	movq	ReadTIFFImage.t(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB4_105
# %bb.104:                              # %if.then19.i
	callq	free@PLT
.LBB4_105:                              # %readTiff.exit
	movq	$0, ReadTIFFImage.t(%rip)
.LBB4_106:                              # %if.end173
	callq	report_stats_on_error@PLT
.LBB4_107:                              # %cleanup
	xorl	%eax, %eax
.LBB4_108:                              # %cleanup
	addq	$1544, %rsp                     # imm = 0x608
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
.LBB4_109:                              # %for.cond45.preheader.i
	.cfi_def_cfa_offset 1600
	testl	%edi, %edi
	movq	16(%rsp), %rbp                  # 8-byte Reload
	jle	.LBB4_114
# %bb.110:                              # %for.body48.i.preheader
	xorl	%edi, %edi
	movd	%r11d, %xmm1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	128(%rsp), %rsi                 # 8-byte Reload
	movq	88(%rsp), %rdx                  # 8-byte Reload
	cmpl	$31, 24(%rsp)                   # 4-byte Folded Reload
	jbe	.LBB4_128
# %bb.111:                              # %vector.ph465
	movl	24(%rsp), %r8d                  # 4-byte Reload
	movl	%r8d, %edi
	andl	$2147483616, %edi               # imm = 0x7FFFFFE0
	leal	(%rdi,%rdi), %eax
	leaq	(%rax,%rax,2), %rdx
	movq	56(%rsp), %r9                   # 8-byte Reload
	leaq	(%r9,%rdx), %rcx
	movq	128(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rdx), %rsi
	addq	88(%rsp), %rdx                  # 8-byte Folded Reload
	movaps	%xmm10, 1072(%rsp)              # 16-byte Spill
	pshufd	$0, %xmm10, %xmm3               # xmm3 = xmm10[0,0,0,0]
	movdqa	%xmm3, 1216(%rsp)               # 16-byte Spill
	movdqa	%xmm1, 1008(%rsp)               # 16-byte Spill
	pshufd	$0, %xmm1, %xmm1                # xmm1 = xmm1[0,0,0,0]
	movdqa	%xmm1, 1200(%rsp)               # 16-byte Spill
	movaps	%xmm11, 1056(%rsp)              # 16-byte Spill
	pshufd	$0, %xmm11, %xmm1               # xmm1 = xmm11[0,0,0,0]
	movdqa	%xmm1, 1184(%rsp)               # 16-byte Spill
	movaps	%xmm12, 1040(%rsp)              # 16-byte Spill
	pshufd	$0, %xmm12, %xmm1               # xmm1 = xmm12[0,0,0,0]
	movdqa	%xmm1, 1168(%rsp)               # 16-byte Spill
	movaps	%xmm13, 1024(%rsp)              # 16-byte Spill
	pshufd	$0, %xmm13, %xmm1               # xmm1 = xmm13[0,0,0,0]
	movdqa	%xmm1, 1152(%rsp)               # 16-byte Spill
	movq	%rdi, %r10
	movdqa	%xmm9, 1136(%rsp)               # 16-byte Spill
	movdqa	%xmm8, 1120(%rsp)               # 16-byte Spill
	movdqa	%xmm2, 1104(%rsp)               # 16-byte Spill
	movdqa	%xmm0, 1088(%rsp)               # 16-byte Spill
.LBB4_112:                              # %vector.body476
                                        # =>This Inner Loop Header: Depth=1
	movups	64(%r9), %xmm5
	movups	(%r9), %xmm4
	movups	16(%r9), %xmm7
	movups	48(%r9), %xmm10
	movups	96(%r9), %xmm9
	movups	112(%r9), %xmm3
	movups	144(%r9), %xmm8
	movups	160(%r9), %xmm1
	movaps	.LCPI4_8(%rip), %xmm12          # xmm12 = [65535,0,65535,65535,65535,65535,65535,65535]
	movaps	%xmm12, %xmm0
	andnps	%xmm7, %xmm0
	movaps	%xmm7, %xmm2
	shufps	$1, %xmm4, %xmm2                # xmm2 = xmm2[1,0],xmm4[0,0]
	shufps	$226, %xmm4, %xmm2              # xmm2 = xmm2[2,0],xmm4[2,3]
	movaps	%xmm2, 96(%rsp)                 # 16-byte Spill
	movaps	%xmm4, %xmm6
	andps	%xmm12, %xmm6
	orps	%xmm0, %xmm6
	movaps	%xmm12, %xmm2
	andnps	%xmm5, %xmm2
	movaps	%xmm5, %xmm0
	shufps	$1, %xmm10, %xmm0               # xmm0 = xmm0[1,0],xmm10[0,0]
	shufps	$226, %xmm10, %xmm0             # xmm0 = xmm0[2,0],xmm10[2,3]
	movaps	%xmm0, 112(%rsp)                # 16-byte Spill
	movaps	%xmm10, %xmm14
	andps	%xmm12, %xmm14
	orps	%xmm2, %xmm14
	movaps	%xmm12, %xmm2
	andnps	%xmm3, %xmm2
	movaps	%xmm3, %xmm11
	shufps	$1, %xmm9, %xmm11               # xmm11 = xmm11[1,0],xmm9[0,0]
	shufps	$226, %xmm9, %xmm11             # xmm11 = xmm11[2,0],xmm9[2,3]
	movaps	%xmm11, 192(%rsp)               # 16-byte Spill
	movaps	%xmm9, %xmm11
	andps	%xmm12, %xmm11
	orps	%xmm2, %xmm11
	movaps	%xmm12, %xmm2
	andnps	%xmm1, %xmm2
	movaps	%xmm8, %xmm13
	andps	%xmm12, %xmm13
	orps	%xmm2, %xmm13
	movaps	%xmm13, 448(%rsp)               # 16-byte Spill
	pshuflw	$236, %xmm7, %xmm2              # xmm2 = xmm7[0,3,2,3,4,5,6,7]
	pshufd	$230, %xmm4, %xmm4              # xmm4 = xmm4[2,1,2,3]
	pshuflw	$230, %xmm4, %xmm4              # xmm4 = xmm4[2,1,2,3,4,5,6,7]
	punpckldq	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	movdqa	%xmm4, 256(%rsp)                # 16-byte Spill
	pshuflw	$236, %xmm5, %xmm2              # xmm2 = xmm5[0,3,2,3,4,5,6,7]
	pshufd	$230, %xmm10, %xmm4             # xmm4 = xmm10[2,1,2,3]
	pshuflw	$230, %xmm4, %xmm4              # xmm4 = xmm4[2,1,2,3,4,5,6,7]
	punpckldq	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	movdqa	%xmm4, 240(%rsp)                # 16-byte Spill
	pshuflw	$236, %xmm3, %xmm2              # xmm2 = xmm3[0,3,2,3,4,5,6,7]
	pshufd	$230, %xmm9, %xmm4              # xmm4 = xmm9[2,1,2,3]
	pshuflw	$230, %xmm4, %xmm4              # xmm4 = xmm4[2,1,2,3,4,5,6,7]
	punpckldq	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	movdqa	%xmm4, 224(%rsp)                # 16-byte Spill
	movaps	%xmm1, %xmm2
	shufps	$1, %xmm8, %xmm2                # xmm2 = xmm2[1,0],xmm8[0,0]
	shufps	$226, %xmm8, %xmm2              # xmm2 = xmm2[2,0],xmm8[2,3]
	movaps	%xmm2, 176(%rsp)                # 16-byte Spill
	pshufd	$230, %xmm8, %xmm2              # xmm2 = xmm8[2,1,2,3]
	pshuflw	$230, %xmm2, %xmm4              # xmm4 = xmm2[2,1,2,3,4,5,6,7]
	pshuflw	$236, %xmm1, %xmm2              # xmm2 = xmm1[0,3,2,3,4,5,6,7]
	punpckldq	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	movdqa	%xmm4, 304(%rsp)                # 16-byte Spill
	movdqu	32(%r9), %xmm15
	pshufd	$100, %xmm15, %xmm4             # xmm4 = xmm15[0,1,2,1]
	pshufhw	$230, %xmm4, %xmm4              # xmm4 = xmm4[0,1,2,3,6,5,6,7]
	pshufhw	$236, %xmm7, %xmm12             # xmm12 = xmm7[0,1,2,3,4,7,6,7]
	punpckhdq	%xmm4, %xmm12           # xmm12 = xmm12[2],xmm4[2],xmm12[3],xmm4[3]
	movdqu	80(%r9), %xmm13
	pshufd	$100, %xmm13, %xmm4             # xmm4 = xmm13[0,1,2,1]
	pshufhw	$230, %xmm4, %xmm4              # xmm4 = xmm4[0,1,2,3,6,5,6,7]
	pshufhw	$236, %xmm5, %xmm0              # xmm0 = xmm5[0,1,2,3,4,7,6,7]
	punpckhdq	%xmm4, %xmm0            # xmm0 = xmm0[2],xmm4[2],xmm0[3],xmm4[3]
	movdqa	%xmm0, 32(%rsp)                 # 16-byte Spill
	movdqu	128(%r9), %xmm10
	pshufd	$100, %xmm10, %xmm4             # xmm4 = xmm10[0,1,2,1]
	pshufhw	$230, %xmm4, %xmm4              # xmm4 = xmm4[0,1,2,3,6,5,6,7]
	pshufhw	$236, %xmm3, %xmm2              # xmm2 = xmm3[0,1,2,3,4,7,6,7]
	punpckhdq	%xmm4, %xmm2            # xmm2 = xmm2[2],xmm4[2],xmm2[3],xmm4[3]
	movdqa	%xmm2, 64(%rsp)                 # 16-byte Spill
	movdqu	176(%r9), %xmm0
	pshufd	$100, %xmm0, %xmm4              # xmm4 = xmm0[0,1,2,1]
	pshufhw	$230, %xmm4, %xmm4              # xmm4 = xmm4[0,1,2,3,6,5,6,7]
	pshufhw	$236, %xmm1, %xmm8              # xmm8 = xmm1[0,1,2,3,4,7,6,7]
	punpckhdq	%xmm4, %xmm8            # xmm8 = xmm8[2],xmm4[2],xmm8[3],xmm4[3]
	movdqa	%xmm8, 272(%rsp)                # 16-byte Spill
	movdqa	.LCPI4_9(%rip), %xmm8           # xmm8 = [65535,65535,65535,65535,65535,65535,0,65535]
	movdqa	%xmm8, %xmm4
	pandn	%xmm7, %xmm4
	shufps	$50, %xmm15, %xmm7              # xmm7 = xmm7[2,0],xmm15[3,0]
	movaps	%xmm15, %xmm9
	shufps	$132, %xmm7, %xmm9              # xmm9 = xmm9[0,1],xmm7[0,2]
	movdqa	%xmm8, %xmm7
	pandn	%xmm5, %xmm7
	shufps	$50, %xmm13, %xmm5              # xmm5 = xmm5[2,0],xmm13[3,0]
	movaps	%xmm13, %xmm2
	shufps	$132, %xmm5, %xmm2              # xmm2 = xmm2[0,1],xmm5[0,2]
	movaps	%xmm2, 432(%rsp)                # 16-byte Spill
	movdqa	%xmm8, %xmm5
	pandn	%xmm3, %xmm5
	shufps	$50, %xmm10, %xmm3              # xmm3 = xmm3[2,0],xmm10[3,0]
	movaps	%xmm10, %xmm2
	shufps	$132, %xmm3, %xmm2              # xmm2 = xmm2[0,1],xmm3[0,2]
	movaps	%xmm2, 416(%rsp)                # 16-byte Spill
	movdqa	%xmm8, %xmm3
	pandn	%xmm1, %xmm3
	shufps	$50, %xmm0, %xmm1               # xmm1 = xmm1[2,0],xmm0[3,0]
	movaps	%xmm0, %xmm2
	shufps	$132, %xmm1, %xmm2              # xmm2 = xmm2[0,1],xmm1[0,2]
	movaps	%xmm2, 400(%rsp)                # 16-byte Spill
	pand	%xmm8, %xmm15
	por	%xmm4, %xmm15
	pand	%xmm8, %xmm13
	por	%xmm7, %xmm13
	movdqa	%xmm13, 384(%rsp)               # 16-byte Spill
	pand	%xmm8, %xmm10
	por	%xmm5, %xmm10
	movdqa	%xmm10, 368(%rsp)               # 16-byte Spill
	pand	%xmm8, %xmm0
	por	%xmm3, %xmm0
	movdqa	%xmm0, 144(%rsp)                # 16-byte Spill
	pshufd	$216, %xmm6, %xmm1              # xmm1 = xmm6[0,2,1,3]
	pshufhw	$230, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,6,5,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshuflw	$108, %xmm1, %xmm3              # xmm3 = xmm1[0,3,2,1,4,5,6,7]
	pxor	%xmm7, %xmm7
	punpcklwd	%xmm7, %xmm3            # xmm3 = xmm3[0],xmm7[0],xmm3[1],xmm7[1],xmm3[2],xmm7[2],xmm3[3],xmm7[3]
	movdqa	%xmm3, 336(%rsp)                # 16-byte Spill
	movdqa	1120(%rsp), %xmm4               # 16-byte Reload
	movdqa	%xmm4, %xmm1
	pmuludq	%xmm3, %xmm1
	pshufd	$232, %xmm1, %xmm2              # xmm2 = xmm1[0,2,2,3]
	pshufd	$245, %xmm4, %xmm1              # xmm1 = xmm4[1,1,3,3]
	pshufd	$245, %xmm3, %xmm5              # xmm5 = xmm3[1,1,3,3]
	movdqa	%xmm5, 352(%rsp)                # 16-byte Spill
	movdqa	%xmm1, %xmm3
	pmuludq	%xmm5, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm2            # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	movdqa	%xmm2, 160(%rsp)                # 16-byte Spill
	punpcklwd	%xmm7, %xmm12           # xmm12 = xmm12[0],xmm7[0],xmm12[1],xmm7[1],xmm12[2],xmm7[2],xmm12[3],xmm7[3]
	movdqa	%xmm12, 528(%rsp)               # 16-byte Spill
	movdqa	%xmm4, %xmm3
	pmuludq	%xmm12, %xmm3
	pshufd	$232, %xmm3, %xmm10             # xmm10 = xmm3[0,2,2,3]
	pshufd	$245, %xmm12, %xmm6             # xmm6 = xmm12[1,1,3,3]
	movdqa	%xmm6, 320(%rsp)                # 16-byte Spill
	movdqa	%xmm1, %xmm3
	pmuludq	%xmm6, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm10           # xmm10 = xmm10[0],xmm3[0],xmm10[1],xmm3[1]
	pshufd	$216, %xmm14, %xmm0             # xmm0 = xmm14[0,2,1,3]
	pshufhw	$230, %xmm0, %xmm0              # xmm0 = xmm0[0,1,2,3,6,5,6,7]
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	pshuflw	$108, %xmm0, %xmm3              # xmm3 = xmm0[0,3,2,1,4,5,6,7]
	punpcklwd	%xmm7, %xmm3            # xmm3 = xmm3[0],xmm7[0],xmm3[1],xmm7[1],xmm3[2],xmm7[2],xmm3[3],xmm7[3]
	movdqa	%xmm3, 496(%rsp)                # 16-byte Spill
	movdqa	%xmm4, %xmm0
	pmuludq	%xmm3, %xmm0
	pshufd	$232, %xmm0, %xmm2              # xmm2 = xmm0[0,2,2,3]
	pshufd	$245, %xmm3, %xmm5              # xmm5 = xmm3[1,1,3,3]
	movdqa	%xmm5, 512(%rsp)                # 16-byte Spill
	movdqa	%xmm1, %xmm0
	pmuludq	%xmm5, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	movdqa	%xmm2, 560(%rsp)                # 16-byte Spill
	movdqa	32(%rsp), %xmm12                # 16-byte Reload
	punpcklwd	%xmm7, %xmm12           # xmm12 = xmm12[0],xmm7[0],xmm12[1],xmm7[1],xmm12[2],xmm7[2],xmm12[3],xmm7[3]
	movdqa	%xmm12, 32(%rsp)                # 16-byte Spill
	movdqa	%xmm4, %xmm0
	pmuludq	%xmm12, %xmm0
	pshufd	$232, %xmm0, %xmm8              # xmm8 = xmm0[0,2,2,3]
	pshufd	$245, %xmm12, %xmm3             # xmm3 = xmm12[1,1,3,3]
	movdqa	%xmm3, 480(%rsp)                # 16-byte Spill
	movdqa	%xmm1, %xmm0
	pmuludq	%xmm3, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm8            # xmm8 = xmm8[0],xmm0[0],xmm8[1],xmm0[1]
	pshufd	$216, %xmm11, %xmm0             # xmm0 = xmm11[0,2,1,3]
	pshufhw	$230, %xmm0, %xmm0              # xmm0 = xmm0[0,1,2,3,6,5,6,7]
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	pshuflw	$108, %xmm0, %xmm3              # xmm3 = xmm0[0,3,2,1,4,5,6,7]
	punpcklwd	%xmm7, %xmm3            # xmm3 = xmm3[0],xmm7[0],xmm3[1],xmm7[1],xmm3[2],xmm7[2],xmm3[3],xmm7[3]
	movdqa	%xmm3, 992(%rsp)                # 16-byte Spill
	movdqa	%xmm4, %xmm0
	pmuludq	%xmm3, %xmm0
	pshufd	$232, %xmm0, %xmm2              # xmm2 = xmm0[0,2,2,3]
	pshufd	$245, %xmm3, %xmm5              # xmm5 = xmm3[1,1,3,3]
	movdqa	%xmm5, 464(%rsp)                # 16-byte Spill
	movdqa	%xmm1, %xmm0
	pmuludq	%xmm5, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	movdqa	%xmm2, 544(%rsp)                # 16-byte Spill
	movdqa	64(%rsp), %xmm3                 # 16-byte Reload
	punpcklwd	%xmm7, %xmm3            # xmm3 = xmm3[0],xmm7[0],xmm3[1],xmm7[1],xmm3[2],xmm7[2],xmm3[3],xmm7[3]
	movdqa	%xmm3, 64(%rsp)                 # 16-byte Spill
	movdqa	%xmm4, %xmm0
	pmuludq	%xmm3, %xmm0
	pshufd	$232, %xmm0, %xmm2              # xmm2 = xmm0[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3              # xmm3 = xmm3[1,1,3,3]
	movdqa	%xmm3, 976(%rsp)                # 16-byte Spill
	movdqa	%xmm1, %xmm0
	pmuludq	%xmm3, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	movdqa	%xmm2, 1264(%rsp)               # 16-byte Spill
	pshufd	$216, 448(%rsp), %xmm0          # 16-byte Folded Reload
                                        # xmm0 = mem[0,2,1,3]
	pshufhw	$230, %xmm0, %xmm0              # xmm0 = xmm0[0,1,2,3,6,5,6,7]
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	pshuflw	$108, %xmm0, %xmm3              # xmm3 = xmm0[0,3,2,1,4,5,6,7]
	punpcklwd	%xmm7, %xmm3            # xmm3 = xmm3[0],xmm7[0],xmm3[1],xmm7[1],xmm3[2],xmm7[2],xmm3[3],xmm7[3]
	movdqa	%xmm3, 960(%rsp)                # 16-byte Spill
	movdqa	%xmm4, %xmm0
	pmuludq	%xmm3, %xmm0
	pshufd	$232, %xmm0, %xmm2              # xmm2 = xmm0[0,2,2,3]
	pshufd	$245, %xmm3, %xmm5              # xmm5 = xmm3[1,1,3,3]
	movdqa	%xmm5, 448(%rsp)                # 16-byte Spill
	movdqa	%xmm1, %xmm0
	pmuludq	%xmm5, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	movdqa	%xmm2, 1232(%rsp)               # 16-byte Spill
	movdqa	272(%rsp), %xmm3                # 16-byte Reload
	punpcklwd	%xmm7, %xmm3            # xmm3 = xmm3[0],xmm7[0],xmm3[1],xmm7[1],xmm3[2],xmm7[2],xmm3[3],xmm7[3]
	movdqa	%xmm3, 272(%rsp)                # 16-byte Spill
	movdqa	%xmm4, %xmm0
	pmuludq	%xmm3, %xmm0
	pshufd	$232, %xmm0, %xmm13             # xmm13 = xmm0[0,2,2,3]
	pshufd	$245, %xmm3, %xmm0              # xmm0 = xmm3[1,1,3,3]
	movdqa	%xmm0, 944(%rsp)                # 16-byte Spill
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm0              # xmm0 = xmm1[0,2,2,3]
	punpckldq	%xmm0, %xmm13           # xmm13 = xmm13[0],xmm0[0],xmm13[1],xmm0[1]
	pshuflw	$236, %xmm9, %xmm0              # xmm0 = xmm9[0,3,2,3,4,5,6,7]
	pshufhw	$230, %xmm0, %xmm0              # xmm0 = xmm0[0,1,2,3,6,5,6,7]
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	pshuflw	$147, %xmm0, %xmm1              # xmm1 = xmm0[3,0,1,2,4,5,6,7]
	punpcklwd	%xmm7, %xmm1            # xmm1 = xmm1[0],xmm7[0],xmm1[1],xmm7[1],xmm1[2],xmm7[2],xmm1[3],xmm7[3]
	movdqa	%xmm1, 912(%rsp)                # 16-byte Spill
	movdqa	1216(%rsp), %xmm3               # 16-byte Reload
	movdqa	%xmm3, %xmm0
	pmuludq	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm2              # xmm2 = xmm0[0,2,2,3]
	pshufd	$245, %xmm3, %xmm0              # xmm0 = xmm3[1,1,3,3]
	pshufd	$245, %xmm1, %xmm4              # xmm4 = xmm1[1,1,3,3]
	movdqa	%xmm4, 928(%rsp)                # 16-byte Spill
	movdqa	%xmm0, %xmm1
	pmuludq	%xmm4, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movdqa	%xmm2, 1248(%rsp)               # 16-byte Spill
	pshuflw	$230, 96(%rsp), %xmm1           # 16-byte Folded Reload
                                        # xmm1 = mem[2,1,2,3,4,5,6,7]
	pshufhw	$236, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,7,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshuflw	$57, %xmm1, %xmm4               # xmm4 = xmm1[1,2,3,0,4,5,6,7]
	punpcklwd	%xmm7, %xmm4            # xmm4 = xmm4[0],xmm7[0],xmm4[1],xmm7[1],xmm4[2],xmm7[2],xmm4[3],xmm7[3]
	movdqa	%xmm4, 880(%rsp)                # 16-byte Spill
	movdqa	%xmm3, %xmm1
	pmuludq	%xmm4, %xmm1
	pshufd	$232, %xmm1, %xmm2              # xmm2 = xmm1[0,2,2,3]
	pshufd	$245, %xmm4, %xmm5              # xmm5 = xmm4[1,1,3,3]
	movdqa	%xmm5, 896(%rsp)                # 16-byte Spill
	movdqa	%xmm0, %xmm1
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	pshuflw	$236, 432(%rsp), %xmm1          # 16-byte Folded Reload
                                        # xmm1 = mem[0,3,2,3,4,5,6,7]
	pshufhw	$230, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,6,5,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshuflw	$147, %xmm1, %xmm4              # xmm4 = xmm1[3,0,1,2,4,5,6,7]
	punpcklwd	%xmm7, %xmm4            # xmm4 = xmm4[0],xmm7[0],xmm4[1],xmm7[1],xmm4[2],xmm7[2],xmm4[3],xmm7[3]
	movdqa	%xmm4, 864(%rsp)                # 16-byte Spill
	movdqa	%xmm3, %xmm1
	pmuludq	%xmm4, %xmm1
	pshufd	$232, %xmm1, %xmm9              # xmm9 = xmm1[0,2,2,3]
	pshufd	$245, %xmm4, %xmm5              # xmm5 = xmm4[1,1,3,3]
	movdqa	%xmm5, 432(%rsp)                # 16-byte Spill
	movdqa	%xmm0, %xmm1
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm9            # xmm9 = xmm9[0],xmm1[0],xmm9[1],xmm1[1]
	pshuflw	$230, 112(%rsp), %xmm1          # 16-byte Folded Reload
                                        # xmm1 = mem[2,1,2,3,4,5,6,7]
	pshufhw	$236, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,7,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshuflw	$57, %xmm1, %xmm4               # xmm4 = xmm1[1,2,3,0,4,5,6,7]
	punpcklwd	%xmm7, %xmm4            # xmm4 = xmm4[0],xmm7[0],xmm4[1],xmm7[1],xmm4[2],xmm7[2],xmm4[3],xmm7[3]
	movdqa	%xmm4, 832(%rsp)                # 16-byte Spill
	movdqa	%xmm3, %xmm1
	pmuludq	%xmm4, %xmm1
	pshufd	$232, %xmm1, %xmm14             # xmm14 = xmm1[0,2,2,3]
	pshufd	$245, %xmm4, %xmm5              # xmm5 = xmm4[1,1,3,3]
	movdqa	%xmm5, 848(%rsp)                # 16-byte Spill
	movdqa	%xmm0, %xmm1
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm14           # xmm14 = xmm14[0],xmm1[0],xmm14[1],xmm1[1]
	pshuflw	$236, 416(%rsp), %xmm1          # 16-byte Folded Reload
                                        # xmm1 = mem[0,3,2,3,4,5,6,7]
	pshufhw	$230, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,6,5,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshuflw	$147, %xmm1, %xmm4              # xmm4 = xmm1[3,0,1,2,4,5,6,7]
	punpcklwd	%xmm7, %xmm4            # xmm4 = xmm4[0],xmm7[0],xmm4[1],xmm7[1],xmm4[2],xmm7[2],xmm4[3],xmm7[3]
	movdqa	%xmm4, 816(%rsp)                # 16-byte Spill
	movdqa	%xmm3, %xmm1
	pmuludq	%xmm4, %xmm1
	pshufd	$232, %xmm1, %xmm6              # xmm6 = xmm1[0,2,2,3]
	pshufd	$245, %xmm4, %xmm5              # xmm5 = xmm4[1,1,3,3]
	movdqa	%xmm5, 416(%rsp)                # 16-byte Spill
	movdqa	%xmm0, %xmm1
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm6            # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1]
	movdqa	%xmm6, 112(%rsp)                # 16-byte Spill
	pshuflw	$230, 192(%rsp), %xmm1          # 16-byte Folded Reload
                                        # xmm1 = mem[2,1,2,3,4,5,6,7]
	pshufhw	$236, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,7,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshuflw	$57, %xmm1, %xmm4               # xmm4 = xmm1[1,2,3,0,4,5,6,7]
	punpcklwd	%xmm7, %xmm4            # xmm4 = xmm4[0],xmm7[0],xmm4[1],xmm7[1],xmm4[2],xmm7[2],xmm4[3],xmm7[3]
	movdqa	%xmm4, 784(%rsp)                # 16-byte Spill
	movdqa	%xmm3, %xmm1
	pmuludq	%xmm4, %xmm1
	pshufd	$232, %xmm1, %xmm11             # xmm11 = xmm1[0,2,2,3]
	pshufd	$245, %xmm4, %xmm5              # xmm5 = xmm4[1,1,3,3]
	movdqa	%xmm5, 800(%rsp)                # 16-byte Spill
	movdqa	%xmm0, %xmm1
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm11           # xmm11 = xmm11[0],xmm1[0],xmm11[1],xmm1[1]
	pshuflw	$236, 400(%rsp), %xmm1          # 16-byte Folded Reload
                                        # xmm1 = mem[0,3,2,3,4,5,6,7]
	pshufhw	$230, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,6,5,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshuflw	$147, %xmm1, %xmm4              # xmm4 = xmm1[3,0,1,2,4,5,6,7]
	punpcklwd	%xmm7, %xmm4            # xmm4 = xmm4[0],xmm7[0],xmm4[1],xmm7[1],xmm4[2],xmm7[2],xmm4[3],xmm7[3]
	movdqa	%xmm4, 752(%rsp)                # 16-byte Spill
	movdqa	%xmm3, %xmm1
	pmuludq	%xmm4, %xmm1
	pshufd	$232, %xmm1, %xmm6              # xmm6 = xmm1[0,2,2,3]
	pshufd	$245, %xmm4, %xmm5              # xmm5 = xmm4[1,1,3,3]
	movdqa	%xmm5, 400(%rsp)                # 16-byte Spill
	movdqa	%xmm0, %xmm1
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm6            # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1]
	movdqa	%xmm6, 192(%rsp)                # 16-byte Spill
	pshuflw	$230, 176(%rsp), %xmm1          # 16-byte Folded Reload
                                        # xmm1 = mem[2,1,2,3,4,5,6,7]
	pshufhw	$236, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,7,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshuflw	$57, %xmm1, %xmm4               # xmm4 = xmm1[1,2,3,0,4,5,6,7]
	punpcklwd	%xmm7, %xmm4            # xmm4 = xmm4[0],xmm7[0],xmm4[1],xmm7[1],xmm4[2],xmm7[2],xmm4[3],xmm7[3]
	movdqa	%xmm4, 768(%rsp)                # 16-byte Spill
	movdqa	%xmm3, %xmm1
	pmuludq	%xmm4, %xmm1
	pshufd	$232, %xmm1, %xmm3              # xmm3 = xmm1[0,2,2,3]
	pshufd	$245, %xmm4, %xmm1              # xmm1 = xmm4[1,1,3,3]
	movdqa	%xmm1, 736(%rsp)                # 16-byte Spill
	pmuludq	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	movdqa	%xmm3, 176(%rsp)                # 16-byte Spill
	pshufd	$216, %xmm15, %xmm0             # xmm0 = xmm15[0,2,1,3]
	pshuflw	$230, %xmm0, %xmm0              # xmm0 = xmm0[2,1,2,3,4,5,6,7]
	pshufd	$236, %xmm0, %xmm0              # xmm0 = xmm0[0,3,2,3]
	pshuflw	$198, %xmm0, %xmm1              # xmm1 = xmm0[2,1,0,3,4,5,6,7]
	punpcklwd	%xmm7, %xmm1            # xmm1 = xmm1[0],xmm7[0],xmm1[1],xmm7[1],xmm1[2],xmm7[2],xmm1[3],xmm7[3]
	movdqa	%xmm1, 704(%rsp)                # 16-byte Spill
	movdqa	1136(%rsp), %xmm5               # 16-byte Reload
	movdqa	%xmm5, %xmm0
	pmuludq	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm4              # xmm4 = xmm0[0,2,2,3]
	pshufd	$245, %xmm5, %xmm3              # xmm3 = xmm5[1,1,3,3]
	pshufd	$245, %xmm1, %xmm0              # xmm0 = xmm1[1,1,3,3]
	movdqa	%xmm0, 720(%rsp)                # 16-byte Spill
	movdqa	%xmm3, %xmm1
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm4            # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1]
	movdqa	%xmm4, 96(%rsp)                 # 16-byte Spill
	movdqa	256(%rsp), %xmm0                # 16-byte Reload
	punpcklwd	%xmm7, %xmm0            # xmm0 = xmm0[0],xmm7[0],xmm0[1],xmm7[1],xmm0[2],xmm7[2],xmm0[3],xmm7[3]
	movdqa	%xmm0, 256(%rsp)                # 16-byte Spill
	movdqa	%xmm5, %xmm1
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm6              # xmm6 = xmm1[0,2,2,3]
	pshufd	$245, %xmm0, %xmm4              # xmm4 = xmm0[1,1,3,3]
	movdqa	%xmm4, 688(%rsp)                # 16-byte Spill
	movdqa	%xmm3, %xmm1
	pmuludq	%xmm4, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm6            # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1]
	paddd	%xmm2, %xmm6
	pshufd	$216, 384(%rsp), %xmm1          # 16-byte Folded Reload
                                        # xmm1 = mem[0,2,1,3]
	pshuflw	$230, %xmm1, %xmm1              # xmm1 = xmm1[2,1,2,3,4,5,6,7]
	pshufd	$236, %xmm1, %xmm1              # xmm1 = xmm1[0,3,2,3]
	pshuflw	$198, %xmm1, %xmm0              # xmm0 = xmm1[2,1,0,3,4,5,6,7]
	punpcklwd	%xmm7, %xmm0            # xmm0 = xmm0[0],xmm7[0],xmm0[1],xmm7[1],xmm0[2],xmm7[2],xmm0[3],xmm7[3]
	movdqa	%xmm0, 672(%rsp)                # 16-byte Spill
	movdqa	%xmm5, %xmm1
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm12             # xmm12 = xmm1[0,2,2,3]
	pshufd	$245, %xmm0, %xmm4              # xmm4 = xmm0[1,1,3,3]
	movdqa	%xmm4, 384(%rsp)                # 16-byte Spill
	movdqa	%xmm3, %xmm1
	pmuludq	%xmm4, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm12           # xmm12 = xmm12[0],xmm1[0],xmm12[1],xmm1[1]
	movdqa	240(%rsp), %xmm0                # 16-byte Reload
	punpcklwd	%xmm7, %xmm0            # xmm0 = xmm0[0],xmm7[0],xmm0[1],xmm7[1],xmm0[2],xmm7[2],xmm0[3],xmm7[3]
	movdqa	%xmm0, 240(%rsp)                # 16-byte Spill
	movdqa	%xmm5, %xmm1
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm15             # xmm15 = xmm1[0,2,2,3]
	pshufd	$245, %xmm0, %xmm4              # xmm4 = xmm0[1,1,3,3]
	movdqa	%xmm4, 656(%rsp)                # 16-byte Spill
	movdqa	%xmm3, %xmm1
	pmuludq	%xmm4, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm15           # xmm15 = xmm15[0],xmm1[0],xmm15[1],xmm1[1]
	paddd	%xmm14, %xmm15
	pshufd	$216, 368(%rsp), %xmm1          # 16-byte Folded Reload
                                        # xmm1 = mem[0,2,1,3]
	pshuflw	$230, %xmm1, %xmm1              # xmm1 = xmm1[2,1,2,3,4,5,6,7]
	pshufd	$236, %xmm1, %xmm1              # xmm1 = xmm1[0,3,2,3]
	pshuflw	$198, %xmm1, %xmm0              # xmm0 = xmm1[2,1,0,3,4,5,6,7]
	punpcklwd	%xmm7, %xmm0            # xmm0 = xmm0[0],xmm7[0],xmm0[1],xmm7[1],xmm0[2],xmm7[2],xmm0[3],xmm7[3]
	movdqa	%xmm0, 640(%rsp)                # 16-byte Spill
	movdqa	%xmm5, %xmm1
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm14             # xmm14 = xmm1[0,2,2,3]
	pshufd	$245, %xmm0, %xmm2              # xmm2 = xmm0[1,1,3,3]
	movdqa	%xmm2, 368(%rsp)                # 16-byte Spill
	movdqa	%xmm3, %xmm1
	pmuludq	%xmm2, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm14           # xmm14 = xmm14[0],xmm1[0],xmm14[1],xmm1[1]
	movdqa	224(%rsp), %xmm0                # 16-byte Reload
	punpcklwd	%xmm7, %xmm0            # xmm0 = xmm0[0],xmm7[0],xmm0[1],xmm7[1],xmm0[2],xmm7[2],xmm0[3],xmm7[3]
	movdqa	%xmm0, 224(%rsp)                # 16-byte Spill
	movdqa	%xmm5, %xmm1
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm4              # xmm4 = xmm1[0,2,2,3]
	pshufd	$245, %xmm0, %xmm2              # xmm2 = xmm0[1,1,3,3]
	movdqa	%xmm2, 624(%rsp)                # 16-byte Spill
	movdqa	%xmm3, %xmm1
	pmuludq	%xmm2, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm4            # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1]
	paddd	%xmm11, %xmm4
	pshufd	$216, 144(%rsp), %xmm1          # 16-byte Folded Reload
                                        # xmm1 = mem[0,2,1,3]
	pshuflw	$230, %xmm1, %xmm1              # xmm1 = xmm1[2,1,2,3,4,5,6,7]
	pshufd	$236, %xmm1, %xmm1              # xmm1 = xmm1[0,3,2,3]
	pshuflw	$198, %xmm1, %xmm0              # xmm0 = xmm1[2,1,0,3,4,5,6,7]
	punpcklwd	%xmm7, %xmm0            # xmm0 = xmm0[0],xmm7[0],xmm0[1],xmm7[1],xmm0[2],xmm7[2],xmm0[3],xmm7[3]
	movdqa	%xmm0, 592(%rsp)                # 16-byte Spill
	movdqa	%xmm5, %xmm1
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm11             # xmm11 = xmm1[0,2,2,3]
	pshufd	$245, %xmm0, %xmm2              # xmm2 = xmm0[1,1,3,3]
	movdqa	%xmm2, 608(%rsp)                # 16-byte Spill
	movdqa	%xmm3, %xmm1
	pmuludq	%xmm2, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm11           # xmm11 = xmm11[0],xmm1[0],xmm11[1],xmm1[1]
	movdqa	304(%rsp), %xmm0                # 16-byte Reload
	punpcklwd	%xmm7, %xmm0            # xmm0 = xmm0[0],xmm7[0],xmm0[1],xmm7[1],xmm0[2],xmm7[2],xmm0[3],xmm7[3]
	movdqa	%xmm0, 304(%rsp)                # 16-byte Spill
	pmuludq	%xmm0, %xmm5
	pshufd	$232, %xmm5, %xmm1              # xmm1 = xmm5[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0              # xmm0 = xmm0[1,1,3,3]
	movdqa	%xmm0, 576(%rsp)                # 16-byte Spill
	pmuludq	%xmm0, %xmm3
	pshufd	$232, %xmm3, %xmm0              # xmm0 = xmm3[0,2,2,3]
	punpckldq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	paddd	176(%rsp), %xmm1                # 16-byte Folded Reload
	movdqa	1200(%rsp), %xmm0               # 16-byte Reload
	movdqa	160(%rsp), %xmm5                # 16-byte Reload
	paddd	%xmm0, %xmm5
	paddd	%xmm6, %xmm5
	paddd	%xmm0, %xmm10
	paddd	1248(%rsp), %xmm10              # 16-byte Folded Reload
	paddd	96(%rsp), %xmm10                # 16-byte Folded Reload
	movdqa	560(%rsp), %xmm7                # 16-byte Reload
	paddd	%xmm0, %xmm7
	paddd	%xmm15, %xmm7
	paddd	%xmm0, %xmm8
	paddd	%xmm9, %xmm8
	paddd	%xmm12, %xmm8
	movdqa	544(%rsp), %xmm6                # 16-byte Reload
	paddd	%xmm0, %xmm6
	paddd	%xmm4, %xmm6
	movdqa	1264(%rsp), %xmm3               # 16-byte Reload
	paddd	%xmm0, %xmm3
	paddd	112(%rsp), %xmm3                # 16-byte Folded Reload
	paddd	%xmm14, %xmm3
	movdqa	1232(%rsp), %xmm9               # 16-byte Reload
	paddd	%xmm0, %xmm9
	paddd	%xmm1, %xmm9
	paddd	%xmm0, %xmm13
	paddd	192(%rsp), %xmm13               # 16-byte Folded Reload
	paddd	%xmm11, %xmm13
	psrad	$14, %xmm10
	psrad	$14, %xmm5
	pxor	%xmm0, %xmm0
	pcmpgtd	%xmm10, %xmm0
	pxor	%xmm1, %xmm1
	pcmpgtd	%xmm5, %xmm1
	packssdw	%xmm0, %xmm1
	movdqa	%xmm1, %xmm14
	psrad	$14, %xmm8
	psrad	$14, %xmm7
	pxor	%xmm0, %xmm0
	pcmpgtd	%xmm8, %xmm0
	pxor	%xmm15, %xmm15
	pcmpgtd	%xmm7, %xmm15
	packssdw	%xmm0, %xmm15
	psrad	$14, %xmm3
	psrad	$14, %xmm6
	pxor	%xmm0, %xmm0
	pcmpgtd	%xmm3, %xmm0
	pxor	%xmm1, %xmm1
	pcmpgtd	%xmm6, %xmm1
	packssdw	%xmm0, %xmm1
	movdqa	%xmm1, 176(%rsp)                # 16-byte Spill
	psrad	$14, %xmm13
	psrad	$14, %xmm9
	pxor	%xmm0, %xmm0
	pcmpgtd	%xmm13, %xmm0
	pxor	%xmm1, %xmm1
	pcmpgtd	%xmm9, %xmm1
	packssdw	%xmm0, %xmm1
	movdqa	%xmm1, 192(%rsp)                # 16-byte Spill
	movdqa	%xmm10, %xmm1
	movdqa	.LCPI4_10(%rip), %xmm11         # xmm11 = [2147483648,2147483648,2147483648,2147483648]
	pxor	%xmm11, %xmm1
	movdqa	.LCPI4_11(%rip), %xmm4          # xmm4 = [2147549183,2147549183,2147549183,2147549183]
	movdqa	%xmm4, %xmm0
	pcmpgtd	%xmm1, %xmm0
	pand	%xmm0, %xmm10
	pcmpeqd	%xmm1, %xmm1
	pxor	%xmm1, %xmm0
	pcmpeqd	%xmm12, %xmm12
	por	%xmm10, %xmm0
	movdqa	%xmm5, %xmm2
	pxor	%xmm11, %xmm2
	movdqa	%xmm4, %xmm1
	movdqa	%xmm4, %xmm10
	pcmpgtd	%xmm2, %xmm1
	pand	%xmm1, %xmm5
	pxor	%xmm12, %xmm1
	por	%xmm5, %xmm1
	movdqa	%xmm8, %xmm2
	pxor	%xmm11, %xmm2
	movdqa	%xmm4, %xmm5
	pcmpgtd	%xmm2, %xmm5
	pand	%xmm5, %xmm8
	pxor	%xmm12, %xmm5
	por	%xmm8, %xmm5
	movdqa	%xmm7, %xmm2
	pxor	%xmm11, %xmm2
	pcmpgtd	%xmm2, %xmm4
	pand	%xmm4, %xmm7
	pxor	%xmm12, %xmm4
	por	%xmm7, %xmm4
	movdqa	%xmm3, %xmm2
	pxor	%xmm11, %xmm2
	movdqa	%xmm10, %xmm8
	pcmpgtd	%xmm2, %xmm8
	pand	%xmm8, %xmm3
	pxor	%xmm12, %xmm8
	por	%xmm3, %xmm8
	movdqa	%xmm6, %xmm2
	pxor	%xmm11, %xmm2
	movdqa	%xmm10, %xmm3
	pcmpgtd	%xmm2, %xmm3
	pand	%xmm3, %xmm6
	pxor	%xmm12, %xmm3
	por	%xmm6, %xmm3
	movdqa	%xmm13, %xmm2
	pxor	%xmm11, %xmm2
	movdqa	%xmm10, %xmm7
	pcmpgtd	%xmm2, %xmm7
	pand	%xmm7, %xmm13
	pxor	%xmm12, %xmm7
	por	%xmm13, %xmm7
	movdqa	%xmm9, %xmm6
	pxor	%xmm11, %xmm6
	movdqa	%xmm10, %xmm2
	pcmpgtd	%xmm6, %xmm2
	pand	%xmm2, %xmm9
	pxor	%xmm12, %xmm2
	por	%xmm9, %xmm2
	pslld	$16, %xmm0
	psrad	$16, %xmm0
	pslld	$16, %xmm1
	psrad	$16, %xmm1
	packssdw	%xmm0, %xmm1
	pandn	%xmm1, %xmm14
	movdqa	%xmm14, 544(%rsp)               # 16-byte Spill
	pslld	$16, %xmm5
	psrad	$16, %xmm5
	pslld	$16, %xmm4
	psrad	$16, %xmm4
	packssdw	%xmm5, %xmm4
	pandn	%xmm4, %xmm15
	movdqa	%xmm15, 560(%rsp)               # 16-byte Spill
	pslld	$16, %xmm8
	psrad	$16, %xmm8
	pslld	$16, %xmm3
	psrad	$16, %xmm3
	packssdw	%xmm8, %xmm3
	movdqa	176(%rsp), %xmm0                # 16-byte Reload
	pandn	%xmm3, %xmm0
	movdqa	%xmm0, 176(%rsp)                # 16-byte Spill
	pslld	$16, %xmm7
	psrad	$16, %xmm7
	pslld	$16, %xmm2
	psrad	$16, %xmm2
	packssdw	%xmm7, %xmm2
	movdqa	192(%rsp), %xmm0                # 16-byte Reload
	pandn	%xmm2, %xmm0
	movdqa	%xmm0, 192(%rsp)                # 16-byte Spill
	movdqa	1184(%rsp), %xmm9               # 16-byte Reload
	movdqa	%xmm9, %xmm0
	pmuludq	336(%rsp), %xmm0                # 16-byte Folded Reload
	pshufd	$232, %xmm0, %xmm3              # xmm3 = xmm0[0,2,2,3]
	pshufd	$245, %xmm9, %xmm5              # xmm5 = xmm9[1,1,3,3]
	movdqa	%xmm5, %xmm0
	pmuludq	352(%rsp), %xmm0                # 16-byte Folded Reload
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	movdqa	%xmm9, %xmm0
	pmuludq	528(%rsp), %xmm0                # 16-byte Folded Reload
	pshufd	$232, %xmm0, %xmm8              # xmm8 = xmm0[0,2,2,3]
	movdqa	%xmm5, %xmm0
	pmuludq	320(%rsp), %xmm0                # 16-byte Folded Reload
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm8            # xmm8 = xmm8[0],xmm0[0],xmm8[1],xmm0[1]
	movdqa	%xmm9, %xmm0
	pmuludq	496(%rsp), %xmm0                # 16-byte Folded Reload
	pshufd	$232, %xmm0, %xmm2              # xmm2 = xmm0[0,2,2,3]
	movdqa	%xmm5, %xmm0
	pmuludq	512(%rsp), %xmm0                # 16-byte Folded Reload
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	movdqa	%xmm9, %xmm0
	pmuludq	32(%rsp), %xmm0                 # 16-byte Folded Reload
	pshufd	$232, %xmm0, %xmm7              # xmm7 = xmm0[0,2,2,3]
	movdqa	%xmm5, %xmm0
	pmuludq	480(%rsp), %xmm0                # 16-byte Folded Reload
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1]
	movdqa	%xmm9, %xmm0
	pmuludq	992(%rsp), %xmm0                # 16-byte Folded Reload
	pshufd	$232, %xmm0, %xmm1              # xmm1 = xmm0[0,2,2,3]
	movdqa	%xmm5, %xmm0
	pmuludq	464(%rsp), %xmm0                # 16-byte Folded Reload
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movdqa	%xmm9, %xmm0
	pmuludq	64(%rsp), %xmm0                 # 16-byte Folded Reload
	pshufd	$232, %xmm0, %xmm6              # xmm6 = xmm0[0,2,2,3]
	movdqa	%xmm5, %xmm0
	pmuludq	976(%rsp), %xmm0                # 16-byte Folded Reload
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1]
	movdqa	%xmm9, %xmm0
	pmuludq	960(%rsp), %xmm0                # 16-byte Folded Reload
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	movdqa	%xmm5, %xmm4
	pmuludq	448(%rsp), %xmm4                # 16-byte Folded Reload
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm0            # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1]
	movdqa	%xmm9, %xmm4
	pmuludq	272(%rsp), %xmm4                # 16-byte Folded Reload
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pmuludq	944(%rsp), %xmm5                # 16-byte Folded Reload
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	movdqa	1168(%rsp), %xmm10              # 16-byte Reload
	movdqa	%xmm10, %xmm5
	pmuludq	912(%rsp), %xmm5                # 16-byte Folded Reload
	pshufd	$232, %xmm5, %xmm11             # xmm11 = xmm5[0,2,2,3]
	pshufd	$245, %xmm10, %xmm5             # xmm5 = xmm10[1,1,3,3]
	movdqa	%xmm5, %xmm9
	pmuludq	928(%rsp), %xmm9                # 16-byte Folded Reload
	pshufd	$232, %xmm9, %xmm9              # xmm9 = xmm9[0,2,2,3]
	punpckldq	%xmm9, %xmm11           # xmm11 = xmm11[0],xmm9[0],xmm11[1],xmm9[1]
	paddd	%xmm8, %xmm11
	movdqa	%xmm11, 112(%rsp)               # 16-byte Spill
	movdqa	%xmm10, %xmm8
	pmuludq	880(%rsp), %xmm8                # 16-byte Folded Reload
	pshufd	$232, %xmm8, %xmm9              # xmm9 = xmm8[0,2,2,3]
	movdqa	%xmm5, %xmm8
	pmuludq	896(%rsp), %xmm8                # 16-byte Folded Reload
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	punpckldq	%xmm8, %xmm9            # xmm9 = xmm9[0],xmm8[0],xmm9[1],xmm8[1]
	paddd	%xmm3, %xmm9
	movdqa	%xmm9, 96(%rsp)                 # 16-byte Spill
	movdqa	%xmm10, %xmm3
	pmuludq	864(%rsp), %xmm3                # 16-byte Folded Reload
	pshufd	$232, %xmm3, %xmm8              # xmm8 = xmm3[0,2,2,3]
	movdqa	%xmm5, %xmm3
	pmuludq	432(%rsp), %xmm3                # 16-byte Folded Reload
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm8            # xmm8 = xmm8[0],xmm3[0],xmm8[1],xmm3[1]
	paddd	%xmm7, %xmm8
	movdqa	%xmm8, 160(%rsp)                # 16-byte Spill
	movdqa	%xmm10, %xmm3
	pmuludq	832(%rsp), %xmm3                # 16-byte Folded Reload
	pshufd	$232, %xmm3, %xmm8              # xmm8 = xmm3[0,2,2,3]
	movdqa	%xmm5, %xmm3
	pmuludq	848(%rsp), %xmm3                # 16-byte Folded Reload
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm8            # xmm8 = xmm8[0],xmm3[0],xmm8[1],xmm3[1]
	paddd	%xmm2, %xmm8
	movdqa	%xmm10, %xmm2
	pmuludq	816(%rsp), %xmm2                # 16-byte Folded Reload
	pshufd	$232, %xmm2, %xmm3              # xmm3 = xmm2[0,2,2,3]
	movdqa	%xmm5, %xmm2
	pmuludq	416(%rsp), %xmm2                # 16-byte Folded Reload
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm3            # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	paddd	%xmm6, %xmm3
	movdqa	%xmm10, %xmm2
	pmuludq	784(%rsp), %xmm2                # 16-byte Folded Reload
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	movdqa	%xmm5, %xmm6
	pmuludq	800(%rsp), %xmm6                # 16-byte Folded Reload
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm2            # xmm2 = xmm2[0],xmm6[0],xmm2[1],xmm6[1]
	paddd	%xmm1, %xmm2
	movdqa	%xmm10, %xmm1
	pmuludq	752(%rsp), %xmm1                # 16-byte Folded Reload
	pshufd	$232, %xmm1, %xmm14             # xmm14 = xmm1[0,2,2,3]
	movdqa	%xmm5, %xmm1
	pmuludq	400(%rsp), %xmm1                # 16-byte Folded Reload
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm14           # xmm14 = xmm14[0],xmm1[0],xmm14[1],xmm1[1]
	paddd	%xmm4, %xmm14
	movdqa	%xmm10, %xmm1
	pmuludq	768(%rsp), %xmm1                # 16-byte Folded Reload
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pmuludq	736(%rsp), %xmm5                # 16-byte Folded Reload
	pshufd	$232, %xmm5, %xmm4              # xmm4 = xmm5[0,2,2,3]
	punpckldq	%xmm4, %xmm1            # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1]
	paddd	%xmm0, %xmm1
	movdqa	1104(%rsp), %xmm13              # 16-byte Reload
	movdqa	%xmm13, %xmm0
	pmuludq	704(%rsp), %xmm0                # 16-byte Folded Reload
	pshufd	$232, %xmm0, %xmm15             # xmm15 = xmm0[0,2,2,3]
	pshufd	$245, %xmm13, %xmm10            # xmm10 = xmm13[1,1,3,3]
	movdqa	%xmm10, %xmm0
	pmuludq	720(%rsp), %xmm0                # 16-byte Folded Reload
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm15           # xmm15 = xmm15[0],xmm0[0],xmm15[1],xmm0[1]
	movdqa	%xmm13, %xmm0
	pmuludq	256(%rsp), %xmm0                # 16-byte Folded Reload
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	movdqa	%xmm10, %xmm5
	pmuludq	688(%rsp), %xmm5                # 16-byte Folded Reload
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm0            # xmm0 = xmm0[0],xmm5[0],xmm0[1],xmm5[1]
	movdqa	%xmm13, %xmm5
	pmuludq	672(%rsp), %xmm5                # 16-byte Folded Reload
	pshufd	$232, %xmm5, %xmm12             # xmm12 = xmm5[0,2,2,3]
	movdqa	%xmm10, %xmm5
	pmuludq	384(%rsp), %xmm5                # 16-byte Folded Reload
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm12           # xmm12 = xmm12[0],xmm5[0],xmm12[1],xmm5[1]
	movdqa	%xmm13, %xmm5
	pmuludq	240(%rsp), %xmm5                # 16-byte Folded Reload
	pshufd	$232, %xmm5, %xmm11             # xmm11 = xmm5[0,2,2,3]
	movdqa	%xmm10, %xmm5
	pmuludq	656(%rsp), %xmm5                # 16-byte Folded Reload
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm11           # xmm11 = xmm11[0],xmm5[0],xmm11[1],xmm5[1]
	movdqa	%xmm13, %xmm5
	pmuludq	640(%rsp), %xmm5                # 16-byte Folded Reload
	pshufd	$232, %xmm5, %xmm9              # xmm9 = xmm5[0,2,2,3]
	movdqa	%xmm10, %xmm5
	pmuludq	368(%rsp), %xmm5                # 16-byte Folded Reload
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm9            # xmm9 = xmm9[0],xmm5[0],xmm9[1],xmm5[1]
	movdqa	%xmm13, %xmm5
	pmuludq	224(%rsp), %xmm5                # 16-byte Folded Reload
	pshufd	$232, %xmm5, %xmm7              # xmm7 = xmm5[0,2,2,3]
	movdqa	%xmm10, %xmm5
	pmuludq	624(%rsp), %xmm5                # 16-byte Folded Reload
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm7            # xmm7 = xmm7[0],xmm5[0],xmm7[1],xmm5[1]
	movdqa	%xmm13, %xmm5
	pmuludq	592(%rsp), %xmm5                # 16-byte Folded Reload
	pshufd	$232, %xmm5, %xmm6              # xmm6 = xmm5[0,2,2,3]
	movdqa	%xmm10, %xmm5
	pmuludq	608(%rsp), %xmm5                # 16-byte Folded Reload
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	movdqa	%xmm13, %xmm5
	pmuludq	304(%rsp), %xmm5                # 16-byte Folded Reload
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	movdqa	%xmm10, %xmm4
	pmuludq	576(%rsp), %xmm4                # 16-byte Folded Reload
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm5            # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
	movdqa	.LCPI4_12(%rip), %xmm4          # xmm4 = [536879104,536879104,536879104,536879104]
	paddd	%xmm4, %xmm15
	paddd	112(%rsp), %xmm15               # 16-byte Folded Reload
	paddd	%xmm4, %xmm0
	paddd	96(%rsp), %xmm0                 # 16-byte Folded Reload
	paddd	%xmm4, %xmm12
	paddd	160(%rsp), %xmm12               # 16-byte Folded Reload
	paddd	%xmm4, %xmm11
	paddd	%xmm8, %xmm11
	paddd	%xmm4, %xmm9
	paddd	%xmm3, %xmm9
	paddd	%xmm4, %xmm7
	paddd	%xmm2, %xmm7
	paddd	%xmm4, %xmm6
	paddd	%xmm14, %xmm6
	paddd	%xmm4, %xmm5
	paddd	%xmm1, %xmm5
	psrad	$14, %xmm15
	psrad	$14, %xmm0
	pxor	%xmm1, %xmm1
	pcmpgtd	%xmm15, %xmm1
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm0, %xmm2
	packssdw	%xmm1, %xmm2
	movdqa	%xmm2, 144(%rsp)                # 16-byte Spill
	psrad	$14, %xmm12
	psrad	$14, %xmm11
	pxor	%xmm1, %xmm1
	pcmpgtd	%xmm12, %xmm1
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm11, %xmm2
	packssdw	%xmm1, %xmm2
	movdqa	%xmm2, 160(%rsp)                # 16-byte Spill
	psrad	$14, %xmm9
	psrad	$14, %xmm7
	pxor	%xmm1, %xmm1
	pcmpgtd	%xmm9, %xmm1
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm7, %xmm2
	packssdw	%xmm1, %xmm2
	movdqa	%xmm2, 96(%rsp)                 # 16-byte Spill
	psrad	$14, %xmm6
	psrad	$14, %xmm5
	pxor	%xmm1, %xmm1
	pcmpgtd	%xmm6, %xmm1
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm5, %xmm2
	packssdw	%xmm1, %xmm2
	movdqa	%xmm2, 112(%rsp)                # 16-byte Spill
	movdqa	%xmm15, %xmm2
	movdqa	.LCPI4_10(%rip), %xmm14         # xmm14 = [2147483648,2147483648,2147483648,2147483648]
	pxor	%xmm14, %xmm2
	movdqa	.LCPI4_11(%rip), %xmm8          # xmm8 = [2147549183,2147549183,2147549183,2147549183]
	movdqa	%xmm8, %xmm1
	pcmpgtd	%xmm2, %xmm1
	pand	%xmm1, %xmm15
	pcmpeqd	%xmm4, %xmm4
	pxor	%xmm4, %xmm1
	por	%xmm15, %xmm1
	movdqa	%xmm0, %xmm3
	pxor	%xmm14, %xmm3
	movdqa	%xmm8, %xmm2
	pcmpgtd	%xmm3, %xmm2
	pand	%xmm2, %xmm0
	pxor	%xmm4, %xmm2
	por	%xmm0, %xmm2
	movdqa	%xmm12, %xmm3
	pxor	%xmm14, %xmm3
	movdqa	%xmm8, %xmm0
	pcmpgtd	%xmm3, %xmm0
	pand	%xmm0, %xmm12
	pxor	%xmm4, %xmm0
	pcmpeqd	%xmm15, %xmm15
	por	%xmm12, %xmm0
	movdqa	%xmm11, %xmm4
	pxor	%xmm14, %xmm4
	movdqa	%xmm8, %xmm3
	movdqa	%xmm8, %xmm12
	pcmpgtd	%xmm4, %xmm3
	pand	%xmm3, %xmm11
	pxor	%xmm15, %xmm3
	por	%xmm11, %xmm3
	movdqa	%xmm9, %xmm4
	pxor	%xmm14, %xmm4
	pcmpgtd	%xmm4, %xmm8
	pand	%xmm8, %xmm9
	pxor	%xmm15, %xmm8
	por	%xmm9, %xmm8
	movdqa	%xmm7, %xmm4
	pxor	%xmm14, %xmm4
	movdqa	%xmm12, %xmm9
	pcmpgtd	%xmm4, %xmm9
	pand	%xmm9, %xmm7
	pxor	%xmm15, %xmm9
	por	%xmm7, %xmm9
	movdqa	%xmm6, %xmm4
	pxor	%xmm14, %xmm4
	movdqa	%xmm12, %xmm7
	pcmpgtd	%xmm4, %xmm7
	pand	%xmm7, %xmm6
	pxor	%xmm15, %xmm7
	por	%xmm6, %xmm7
	movdqa	%xmm5, %xmm4
	pxor	%xmm14, %xmm4
	movdqa	%xmm12, %xmm6
	pcmpgtd	%xmm4, %xmm6
	pand	%xmm6, %xmm5
	pxor	%xmm15, %xmm6
	por	%xmm5, %xmm6
	pslld	$16, %xmm1
	psrad	$16, %xmm1
	pslld	$16, %xmm2
	psrad	$16, %xmm2
	packssdw	%xmm1, %xmm2
	movdqa	144(%rsp), %xmm1                # 16-byte Reload
	pandn	%xmm2, %xmm1
	movdqa	%xmm1, 144(%rsp)                # 16-byte Spill
	pslld	$16, %xmm0
	psrad	$16, %xmm0
	pslld	$16, %xmm3
	psrad	$16, %xmm3
	packssdw	%xmm0, %xmm3
	movdqa	160(%rsp), %xmm0                # 16-byte Reload
	pandn	%xmm3, %xmm0
	movdqa	%xmm0, 160(%rsp)                # 16-byte Spill
	pslld	$16, %xmm8
	psrad	$16, %xmm8
	pslld	$16, %xmm9
	psrad	$16, %xmm9
	packssdw	%xmm8, %xmm9
	movdqa	96(%rsp), %xmm0                 # 16-byte Reload
	pandn	%xmm9, %xmm0
	movdqa	%xmm0, 96(%rsp)                 # 16-byte Spill
	pslld	$16, %xmm7
	psrad	$16, %xmm7
	pslld	$16, %xmm6
	psrad	$16, %xmm6
	packssdw	%xmm7, %xmm6
	movdqa	112(%rsp), %xmm0                # 16-byte Reload
	pandn	%xmm6, %xmm0
	movdqa	%xmm0, 112(%rsp)                # 16-byte Spill
	movdqa	336(%rsp), %xmm0                # 16-byte Reload
	pmuludq	%xmm13, %xmm0
	pshufd	$232, %xmm0, %xmm3              # xmm3 = xmm0[0,2,2,3]
	movdqa	352(%rsp), %xmm0                # 16-byte Reload
	pmuludq	%xmm10, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	movdqa	528(%rsp), %xmm0                # 16-byte Reload
	pmuludq	%xmm13, %xmm0
	pshufd	$232, %xmm0, %xmm5              # xmm5 = xmm0[0,2,2,3]
	movdqa	320(%rsp), %xmm0                # 16-byte Reload
	pmuludq	%xmm10, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1]
	movdqa	496(%rsp), %xmm0                # 16-byte Reload
	pmuludq	%xmm13, %xmm0
	pshufd	$232, %xmm0, %xmm2              # xmm2 = xmm0[0,2,2,3]
	movdqa	512(%rsp), %xmm0                # 16-byte Reload
	pmuludq	%xmm10, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	movdqa	32(%rsp), %xmm0                 # 16-byte Reload
	pmuludq	%xmm13, %xmm0
	pshufd	$232, %xmm0, %xmm7              # xmm7 = xmm0[0,2,2,3]
	movdqa	480(%rsp), %xmm0                # 16-byte Reload
	pmuludq	%xmm10, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1]
	movdqa	992(%rsp), %xmm0                # 16-byte Reload
	pmuludq	%xmm13, %xmm0
	pshufd	$232, %xmm0, %xmm1              # xmm1 = xmm0[0,2,2,3]
	movdqa	464(%rsp), %xmm0                # 16-byte Reload
	pmuludq	%xmm10, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movdqa	64(%rsp), %xmm0                 # 16-byte Reload
	pmuludq	%xmm13, %xmm0
	pshufd	$232, %xmm0, %xmm9              # xmm9 = xmm0[0,2,2,3]
	movdqa	976(%rsp), %xmm0                # 16-byte Reload
	pmuludq	%xmm10, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1]
	movdqa	960(%rsp), %xmm0                # 16-byte Reload
	pmuludq	%xmm13, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	movdqa	448(%rsp), %xmm4                # 16-byte Reload
	pmuludq	%xmm10, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm0            # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1]
	pmuludq	944(%rsp), %xmm10               # 16-byte Folded Reload
	movdqa	272(%rsp), %xmm4                # 16-byte Reload
	pmuludq	%xmm13, %xmm4
	pshufd	$232, %xmm4, %xmm11             # xmm11 = xmm4[0,2,2,3]
	pshufd	$232, %xmm10, %xmm4             # xmm4 = xmm10[0,2,2,3]
	punpckldq	%xmm4, %xmm11           # xmm11 = xmm11[0],xmm4[0],xmm11[1],xmm4[1]
	movdqa	1152(%rsp), %xmm10              # 16-byte Reload
	movdqa	912(%rsp), %xmm4                # 16-byte Reload
	pmuludq	%xmm10, %xmm4
	pshufd	$232, %xmm4, %xmm6              # xmm6 = xmm4[0,2,2,3]
	pshufd	$245, %xmm10, %xmm8             # xmm8 = xmm10[1,1,3,3]
	movdqa	928(%rsp), %xmm4                # 16-byte Reload
	pmuludq	%xmm8, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm6            # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1]
	paddd	%xmm5, %xmm6
	movdqa	%xmm6, 32(%rsp)                 # 16-byte Spill
	movdqa	880(%rsp), %xmm4                # 16-byte Reload
	pmuludq	%xmm10, %xmm4
	pshufd	$232, %xmm4, %xmm5              # xmm5 = xmm4[0,2,2,3]
	movdqa	896(%rsp), %xmm4                # 16-byte Reload
	pmuludq	%xmm8, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm5            # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
	paddd	%xmm3, %xmm5
	movdqa	%xmm5, 64(%rsp)                 # 16-byte Spill
	movdqa	864(%rsp), %xmm3                # 16-byte Reload
	pmuludq	%xmm10, %xmm3
	pshufd	$232, %xmm3, %xmm13             # xmm13 = xmm3[0,2,2,3]
	movdqa	432(%rsp), %xmm3                # 16-byte Reload
	pmuludq	%xmm8, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm13           # xmm13 = xmm13[0],xmm3[0],xmm13[1],xmm3[1]
	paddd	%xmm7, %xmm13
	movdqa	832(%rsp), %xmm3                # 16-byte Reload
	pmuludq	%xmm10, %xmm3
	pshufd	$232, %xmm3, %xmm7              # xmm7 = xmm3[0,2,2,3]
	movdqa	848(%rsp), %xmm3                # 16-byte Reload
	pmuludq	%xmm8, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm7            # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	paddd	%xmm2, %xmm7
	movdqa	816(%rsp), %xmm2                # 16-byte Reload
	pmuludq	%xmm10, %xmm2
	pshufd	$232, %xmm2, %xmm6              # xmm6 = xmm2[0,2,2,3]
	movdqa	416(%rsp), %xmm2                # 16-byte Reload
	pmuludq	%xmm8, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm6            # xmm6 = xmm6[0],xmm2[0],xmm6[1],xmm2[1]
	paddd	%xmm9, %xmm6
	movdqa	784(%rsp), %xmm2                # 16-byte Reload
	pmuludq	%xmm10, %xmm2
	pshufd	$232, %xmm2, %xmm5              # xmm5 = xmm2[0,2,2,3]
	movdqa	800(%rsp), %xmm2                # 16-byte Reload
	pmuludq	%xmm8, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm5            # xmm5 = xmm5[0],xmm2[0],xmm5[1],xmm2[1]
	paddd	%xmm1, %xmm5
	movdqa	752(%rsp), %xmm1                # 16-byte Reload
	pmuludq	%xmm10, %xmm1
	pshufd	$232, %xmm1, %xmm4              # xmm4 = xmm1[0,2,2,3]
	movdqa	400(%rsp), %xmm1                # 16-byte Reload
	pmuludq	%xmm8, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm4            # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1]
	paddd	%xmm11, %xmm4
	pmuludq	736(%rsp), %xmm8                # 16-byte Folded Reload
	movdqa	768(%rsp), %xmm1                # 16-byte Reload
	pmuludq	%xmm10, %xmm1
	pshufd	$232, %xmm1, %xmm3              # xmm3 = xmm1[0,2,2,3]
	pshufd	$232, %xmm8, %xmm2              # xmm2 = xmm8[0,2,2,3]
	punpckldq	%xmm2, %xmm3            # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	paddd	%xmm0, %xmm3
	movdqa	1088(%rsp), %xmm1               # 16-byte Reload
	movdqa	704(%rsp), %xmm0                # 16-byte Reload
	pmuludq	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm2              # xmm2 = xmm0[0,2,2,3]
	pshufd	$245, %xmm1, %xmm0              # xmm0 = xmm1[1,1,3,3]
	movdqa	720(%rsp), %xmm8                # 16-byte Reload
	pmuludq	%xmm0, %xmm8
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	punpckldq	%xmm8, %xmm2            # xmm2 = xmm2[0],xmm8[0],xmm2[1],xmm8[1]
	movdqa	256(%rsp), %xmm8                # 16-byte Reload
	pmuludq	%xmm1, %xmm8
	pshufd	$232, %xmm8, %xmm15             # xmm15 = xmm8[0,2,2,3]
	movdqa	688(%rsp), %xmm8                # 16-byte Reload
	pmuludq	%xmm0, %xmm8
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	punpckldq	%xmm8, %xmm15           # xmm15 = xmm15[0],xmm8[0],xmm15[1],xmm8[1]
	movdqa	672(%rsp), %xmm8                # 16-byte Reload
	pmuludq	%xmm1, %xmm8
	pshufd	$232, %xmm8, %xmm14             # xmm14 = xmm8[0,2,2,3]
	movdqa	384(%rsp), %xmm8                # 16-byte Reload
	pmuludq	%xmm0, %xmm8
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	punpckldq	%xmm8, %xmm14           # xmm14 = xmm14[0],xmm8[0],xmm14[1],xmm8[1]
	movdqa	240(%rsp), %xmm8                # 16-byte Reload
	pmuludq	%xmm1, %xmm8
	pshufd	$232, %xmm8, %xmm12             # xmm12 = xmm8[0,2,2,3]
	movdqa	656(%rsp), %xmm8                # 16-byte Reload
	pmuludq	%xmm0, %xmm8
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	punpckldq	%xmm8, %xmm12           # xmm12 = xmm12[0],xmm8[0],xmm12[1],xmm8[1]
	movdqa	640(%rsp), %xmm8                # 16-byte Reload
	pmuludq	%xmm1, %xmm8
	pshufd	$232, %xmm8, %xmm11             # xmm11 = xmm8[0,2,2,3]
	movdqa	368(%rsp), %xmm8                # 16-byte Reload
	pmuludq	%xmm0, %xmm8
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	punpckldq	%xmm8, %xmm11           # xmm11 = xmm11[0],xmm8[0],xmm11[1],xmm8[1]
	movdqa	224(%rsp), %xmm8                # 16-byte Reload
	pmuludq	%xmm1, %xmm8
	pshufd	$232, %xmm8, %xmm9              # xmm9 = xmm8[0,2,2,3]
	movdqa	624(%rsp), %xmm8                # 16-byte Reload
	pmuludq	%xmm0, %xmm8
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	punpckldq	%xmm8, %xmm9            # xmm9 = xmm9[0],xmm8[0],xmm9[1],xmm8[1]
	movdqa	592(%rsp), %xmm8                # 16-byte Reload
	pmuludq	%xmm1, %xmm8
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	movdqa	608(%rsp), %xmm10               # 16-byte Reload
	pmuludq	%xmm0, %xmm10
	pshufd	$232, %xmm10, %xmm10            # xmm10 = xmm10[0,2,2,3]
	punpckldq	%xmm10, %xmm8           # xmm8 = xmm8[0],xmm10[0],xmm8[1],xmm10[1]
	pmuludq	576(%rsp), %xmm0                # 16-byte Folded Reload
	movdqa	304(%rsp), %xmm10               # 16-byte Reload
	pmuludq	%xmm1, %xmm10
	pshufd	$232, %xmm10, %xmm10            # xmm10 = xmm10[0,2,2,3]
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm10           # xmm10 = xmm10[0],xmm0[0],xmm10[1],xmm0[1]
	movdqa	.LCPI4_12(%rip), %xmm0          # xmm0 = [536879104,536879104,536879104,536879104]
	paddd	%xmm0, %xmm2
	paddd	32(%rsp), %xmm2                 # 16-byte Folded Reload
	paddd	%xmm0, %xmm15
	paddd	64(%rsp), %xmm15                # 16-byte Folded Reload
	paddd	%xmm0, %xmm14
	paddd	%xmm13, %xmm14
	paddd	%xmm0, %xmm12
	paddd	%xmm7, %xmm12
	paddd	%xmm0, %xmm11
	paddd	%xmm6, %xmm11
	paddd	%xmm0, %xmm9
	paddd	%xmm5, %xmm9
	paddd	%xmm0, %xmm8
	paddd	%xmm4, %xmm8
	paddd	%xmm0, %xmm10
	paddd	%xmm3, %xmm10
	psrad	$14, %xmm2
	psrad	$14, %xmm15
	pxor	%xmm0, %xmm0
	pcmpgtd	%xmm2, %xmm0
	pxor	%xmm7, %xmm7
	pcmpgtd	%xmm15, %xmm7
	packssdw	%xmm0, %xmm7
	psrad	$14, %xmm14
	psrad	$14, %xmm12
	pxor	%xmm0, %xmm0
	pcmpgtd	%xmm14, %xmm0
	pxor	%xmm6, %xmm6
	pcmpgtd	%xmm12, %xmm6
	packssdw	%xmm0, %xmm6
	psrad	$14, %xmm11
	psrad	$14, %xmm9
	pxor	%xmm0, %xmm0
	pcmpgtd	%xmm11, %xmm0
	pxor	%xmm1, %xmm1
	pcmpgtd	%xmm9, %xmm1
	packssdw	%xmm0, %xmm1
	movdqa	%xmm1, 64(%rsp)                 # 16-byte Spill
	psrad	$14, %xmm8
	psrad	$14, %xmm10
	pxor	%xmm0, %xmm0
	pcmpgtd	%xmm8, %xmm0
	pxor	%xmm1, %xmm1
	pcmpgtd	%xmm10, %xmm1
	packssdw	%xmm0, %xmm1
	movdqa	%xmm1, 32(%rsp)                 # 16-byte Spill
	movdqa	%xmm2, %xmm0
	movdqa	.LCPI4_10(%rip), %xmm5          # xmm5 = [2147483648,2147483648,2147483648,2147483648]
	pxor	%xmm5, %xmm0
	movdqa	.LCPI4_11(%rip), %xmm4          # xmm4 = [2147549183,2147549183,2147549183,2147549183]
	movdqa	%xmm4, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm2
	pcmpeqd	%xmm13, %xmm13
	pxor	%xmm13, %xmm1
	por	%xmm2, %xmm1
	movdqa	%xmm15, %xmm2
	pxor	%xmm5, %xmm2
	movdqa	%xmm4, %xmm0
	pcmpgtd	%xmm2, %xmm0
	pand	%xmm0, %xmm15
	pxor	%xmm13, %xmm0
	por	%xmm15, %xmm0
	movdqa	%xmm14, %xmm3
	pxor	%xmm5, %xmm3
	movdqa	%xmm4, %xmm2
	pcmpgtd	%xmm3, %xmm2
	pand	%xmm2, %xmm14
	pxor	%xmm13, %xmm2
	pcmpeqd	%xmm15, %xmm15
	por	%xmm14, %xmm2
	movdqa	%xmm12, %xmm13
	pxor	%xmm5, %xmm13
	movdqa	%xmm4, %xmm3
	pcmpgtd	%xmm13, %xmm3
	pand	%xmm3, %xmm12
	pxor	%xmm15, %xmm3
	por	%xmm12, %xmm3
	movdqa	%xmm11, %xmm13
	pxor	%xmm5, %xmm13
	movdqa	%xmm4, %xmm12
	pcmpgtd	%xmm13, %xmm12
	pand	%xmm12, %xmm11
	pxor	%xmm15, %xmm12
	por	%xmm11, %xmm12
	movdqa	%xmm9, %xmm13
	pxor	%xmm5, %xmm13
	movdqa	%xmm4, %xmm11
	pcmpgtd	%xmm13, %xmm11
	pand	%xmm11, %xmm9
	pxor	%xmm15, %xmm11
	por	%xmm9, %xmm11
	movdqa	%xmm8, %xmm13
	pxor	%xmm5, %xmm13
	movdqa	%xmm4, %xmm9
	pcmpgtd	%xmm13, %xmm9
	pand	%xmm9, %xmm8
	pxor	%xmm15, %xmm9
	por	%xmm8, %xmm9
	movdqa	%xmm10, %xmm13
	pxor	%xmm5, %xmm13
	pcmpgtd	%xmm13, %xmm4
	pand	%xmm4, %xmm10
	pxor	%xmm15, %xmm4
	por	%xmm10, %xmm4
	pslld	$16, %xmm1
	psrad	$16, %xmm1
	pslld	$16, %xmm0
	psrad	$16, %xmm0
	packssdw	%xmm1, %xmm0
	pandn	%xmm0, %xmm7
	pslld	$16, %xmm2
	psrad	$16, %xmm2
	pslld	$16, %xmm3
	psrad	$16, %xmm3
	packssdw	%xmm2, %xmm3
	pandn	%xmm3, %xmm6
	pslld	$16, %xmm12
	psrad	$16, %xmm12
	pslld	$16, %xmm11
	psrad	$16, %xmm11
	packssdw	%xmm12, %xmm11
	movdqa	64(%rsp), %xmm10                # 16-byte Reload
	pandn	%xmm11, %xmm10
	pslld	$16, %xmm9
	psrad	$16, %xmm9
	pslld	$16, %xmm4
	psrad	$16, %xmm4
	packssdw	%xmm9, %xmm4
	movdqa	32(%rsp), %xmm5                 # 16-byte Reload
	pandn	%xmm4, %xmm5
	movdqa	544(%rsp), %xmm3                # 16-byte Reload
	pshufd	$165, %xmm3, %xmm0              # xmm0 = xmm3[1,1,2,2]
	movdqa	.LCPI4_13(%rip), %xmm8          # xmm8 = [65535,65535,0,65535,65535,0,65535,65535]
	pand	%xmm8, %xmm0
	movdqa	144(%rsp), %xmm4                # 16-byte Reload
	pshuflw	$255, %xmm4, %xmm1              # xmm1 = xmm4[3,3,3,3,4,5,6,7]
	pshufhw	$0, %xmm1, %xmm1                # xmm1 = xmm1[0,1,2,3,4,4,4,4]
	movdqa	%xmm8, %xmm2
	pandn	%xmm1, %xmm2
	por	%xmm0, %xmm2
	movdqa	.LCPI4_14(%rip), %xmm9          # xmm9 = [0,65535,65535,0,65535,65535,0,65535]
	pand	%xmm9, %xmm2
	pshufd	$165, %xmm7, %xmm1              # xmm1 = xmm7[1,1,2,2]
	movdqa	%xmm9, %xmm0
	pandn	%xmm1, %xmm0
	por	%xmm2, %xmm0
	pshufd	$0, %xmm7, %xmm1                # xmm1 = xmm7[0,0,0,0]
	movdqa	%xmm8, %xmm2
	pandn	%xmm1, %xmm2
	movdqa	%xmm3, %xmm1
	punpcklwd	%xmm4, %xmm1            # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1],xmm1[2],xmm4[2],xmm1[3],xmm4[3]
	pshufd	$100, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,1]
	pshuflw	$164, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,2,4,5,6,7]
	pshufhw	$71, %xmm1, %xmm1               # xmm1 = xmm1[0,1,2,3,7,5,4,5]
	pand	%xmm8, %xmm1
	por	%xmm1, %xmm2
	punpckhwd	%xmm3, %xmm4            # xmm4 = xmm4[4],xmm3[4],xmm4[5],xmm3[5],xmm4[6],xmm3[6],xmm4[7],xmm3[7]
	pshufd	$250, %xmm7, %xmm1              # xmm1 = xmm7[2,2,3,3]
	movdqa	.LCPI4_15(%rip), %xmm7          # xmm7 = [65535,0,65535,65535,0,65535,65535,0]
	movdqa	%xmm7, %xmm3
	pandn	%xmm1, %xmm3
	pshufd	$246, %xmm4, %xmm1              # xmm1 = xmm4[2,1,3,3]
	pshuflw	$22, %xmm1, %xmm1               # xmm1 = xmm1[2,1,1,0,4,5,6,7]
	pand	%xmm7, %xmm1
	por	%xmm1, %xmm3
	movdqu	%xmm3, 32(%r9)
	movdqu	%xmm2, (%r9)
	movdqu	%xmm0, 16(%r9)
	movdqa	560(%rsp), %xmm3                # 16-byte Reload
	pshufd	$165, %xmm3, %xmm0              # xmm0 = xmm3[1,1,2,2]
	pand	%xmm8, %xmm0
	movdqa	160(%rsp), %xmm4                # 16-byte Reload
	pshuflw	$255, %xmm4, %xmm1              # xmm1 = xmm4[3,3,3,3,4,5,6,7]
	pshufhw	$0, %xmm1, %xmm1                # xmm1 = xmm1[0,1,2,3,4,4,4,4]
	movdqa	%xmm8, %xmm2
	pandn	%xmm1, %xmm2
	por	%xmm0, %xmm2
	pand	%xmm9, %xmm2
	pshufd	$165, %xmm6, %xmm1              # xmm1 = xmm6[1,1,2,2]
	movdqa	%xmm9, %xmm0
	pandn	%xmm1, %xmm0
	por	%xmm2, %xmm0
	pshufd	$0, %xmm6, %xmm1                # xmm1 = xmm6[0,0,0,0]
	movdqa	%xmm8, %xmm2
	pandn	%xmm1, %xmm2
	movdqa	%xmm3, %xmm1
	punpcklwd	%xmm4, %xmm1            # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1],xmm1[2],xmm4[2],xmm1[3],xmm4[3]
	pshufd	$100, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,1]
	pshuflw	$164, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,2,4,5,6,7]
	pshufhw	$71, %xmm1, %xmm1               # xmm1 = xmm1[0,1,2,3,7,5,4,5]
	pand	%xmm8, %xmm1
	por	%xmm1, %xmm2
	punpckhwd	%xmm3, %xmm4            # xmm4 = xmm4[4],xmm3[4],xmm4[5],xmm3[5],xmm4[6],xmm3[6],xmm4[7],xmm3[7]
	pshufd	$250, %xmm6, %xmm1              # xmm1 = xmm6[2,2,3,3]
	movdqa	%xmm7, %xmm3
	pandn	%xmm1, %xmm3
	pshufd	$246, %xmm4, %xmm1              # xmm1 = xmm4[2,1,3,3]
	pshuflw	$22, %xmm1, %xmm1               # xmm1 = xmm1[2,1,1,0,4,5,6,7]
	pand	%xmm7, %xmm1
	por	%xmm1, %xmm3
	movdqu	%xmm3, 80(%r9)
	movdqu	%xmm2, 48(%r9)
	movdqu	%xmm0, 64(%r9)
	movdqa	176(%rsp), %xmm3                # 16-byte Reload
	pshufd	$165, %xmm3, %xmm0              # xmm0 = xmm3[1,1,2,2]
	pand	%xmm8, %xmm0
	movdqa	96(%rsp), %xmm4                 # 16-byte Reload
	pshuflw	$255, %xmm4, %xmm1              # xmm1 = xmm4[3,3,3,3,4,5,6,7]
	pshufhw	$0, %xmm1, %xmm1                # xmm1 = xmm1[0,1,2,3,4,4,4,4]
	movdqa	%xmm8, %xmm2
	pandn	%xmm1, %xmm2
	por	%xmm0, %xmm2
	pand	%xmm9, %xmm2
	pshufd	$165, %xmm10, %xmm1             # xmm1 = xmm10[1,1,2,2]
	movdqa	%xmm9, %xmm0
	pandn	%xmm1, %xmm0
	por	%xmm2, %xmm0
	pshufd	$0, %xmm10, %xmm1               # xmm1 = xmm10[0,0,0,0]
	movdqa	%xmm8, %xmm2
	pandn	%xmm1, %xmm2
	movdqa	%xmm3, %xmm1
	punpcklwd	%xmm4, %xmm1            # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1],xmm1[2],xmm4[2],xmm1[3],xmm4[3]
	pshufd	$100, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,1]
	pshuflw	$164, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,2,4,5,6,7]
	pshufhw	$71, %xmm1, %xmm1               # xmm1 = xmm1[0,1,2,3,7,5,4,5]
	pand	%xmm8, %xmm1
	por	%xmm1, %xmm2
	punpckhwd	%xmm3, %xmm4            # xmm4 = xmm4[4],xmm3[4],xmm4[5],xmm3[5],xmm4[6],xmm3[6],xmm4[7],xmm3[7]
	pshufd	$250, %xmm10, %xmm1             # xmm1 = xmm10[2,2,3,3]
	movdqa	%xmm7, %xmm3
	pandn	%xmm1, %xmm3
	pshufd	$246, %xmm4, %xmm1              # xmm1 = xmm4[2,1,3,3]
	pshuflw	$22, %xmm1, %xmm1               # xmm1 = xmm1[2,1,1,0,4,5,6,7]
	pand	%xmm7, %xmm1
	por	%xmm1, %xmm3
	movdqu	%xmm3, 128(%r9)
	movdqu	%xmm2, 96(%r9)
	movdqu	%xmm0, 112(%r9)
	movdqa	192(%rsp), %xmm3                # 16-byte Reload
	pshufd	$165, %xmm3, %xmm0              # xmm0 = xmm3[1,1,2,2]
	pand	%xmm8, %xmm0
	movdqa	112(%rsp), %xmm4                # 16-byte Reload
	pshuflw	$255, %xmm4, %xmm1              # xmm1 = xmm4[3,3,3,3,4,5,6,7]
	pshufhw	$0, %xmm1, %xmm1                # xmm1 = xmm1[0,1,2,3,4,4,4,4]
	movdqa	%xmm8, %xmm2
	pandn	%xmm1, %xmm2
	por	%xmm0, %xmm2
	pand	%xmm9, %xmm2
	pshufd	$165, %xmm5, %xmm1              # xmm1 = xmm5[1,1,2,2]
	movdqa	%xmm9, %xmm0
	pandn	%xmm1, %xmm0
	por	%xmm2, %xmm0
	pshufd	$0, %xmm5, %xmm1                # xmm1 = xmm5[0,0,0,0]
	movdqa	%xmm8, %xmm2
	pandn	%xmm1, %xmm2
	movdqa	%xmm3, %xmm1
	punpcklwd	%xmm4, %xmm1            # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1],xmm1[2],xmm4[2],xmm1[3],xmm4[3]
	pshufd	$100, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,1]
	pshuflw	$164, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,2,4,5,6,7]
	pshufhw	$71, %xmm1, %xmm1               # xmm1 = xmm1[0,1,2,3,7,5,4,5]
	pand	%xmm8, %xmm1
	por	%xmm1, %xmm2
	punpckhwd	%xmm3, %xmm4            # xmm4 = xmm4[4],xmm3[4],xmm4[5],xmm3[5],xmm4[6],xmm3[6],xmm4[7],xmm3[7]
	pshufd	$250, %xmm5, %xmm1              # xmm1 = xmm5[2,2,3,3]
	movdqa	%xmm7, %xmm3
	pandn	%xmm1, %xmm3
	pshufd	$246, %xmm4, %xmm1              # xmm1 = xmm4[2,1,3,3]
	pshuflw	$22, %xmm1, %xmm1               # xmm1 = xmm1[2,1,1,0,4,5,6,7]
	pand	%xmm7, %xmm1
	por	%xmm1, %xmm3
	movdqu	%xmm3, 176(%r9)
	movdqu	%xmm2, 144(%r9)
	movdqu	%xmm0, 160(%r9)
	addq	$192, %r9
	addq	$-32, %r10
	jne	.LBB4_112
# %bb.113:                              # %middle.block462
	cmpl	%r8d, %edi
	movapd	1072(%rsp), %xmm10              # 16-byte Reload
	movapd	1056(%rsp), %xmm11              # 16-byte Reload
	movapd	1040(%rsp), %xmm12              # 16-byte Reload
	movapd	1024(%rsp), %xmm13              # 16-byte Reload
	movdqa	1008(%rsp), %xmm1               # 16-byte Reload
	jne	.LBB4_128
.LBB4_114:                              # %RGB_YUV_rgb_to_yuv.exit
	movq	136(%rsp), %r15                 # 8-byte Reload
	movl	(%r15), %edx
	cmpl	$3, %edx
	je	.LBB4_120
# %bb.115:                              # %RGB_YUV_rgb_to_yuv.exit
	cmpl	$2, %edx
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movq	208(%rsp), %r14                 # 8-byte Reload
	je	.LBB4_121
# %bb.116:                              # %RGB_YUV_rgb_to_yuv.exit
	cmpl	$1, %edx
	jne	.LBB4_202
# %bb.117:                              # %sw.bb
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%eax, %ecx
	sarl	%ecx
	movl	%ecx, 12(%rsp)                  # 4-byte Spill
	movslq	%ecx, %rdi
	addq	%rdi, %rdi
	callq	malloc@PLT
	movq	%rax, %rbp
	movq	24(%rsp), %rcx                  # 8-byte Reload
	leal	3(%rcx), %eax
	testl	%ecx, %ecx
	cmovnsl	%ecx, %eax
	sarl	$2, %eax
	movslq	%ecx, %rdi
	leaq	(,%rdi,2), %rdx
	addq	%rbp, %rdx
	cltq
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	leaq	(%rdx,%rax,2), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	testl	%ecx, %ecx
	movq	56(%rsp), %r9                   # 8-byte Reload
	jle	.LBB4_157
# %bb.118:                              # %for.body.preheader
	movl	%ecx, %eax
	cmpl	$33, %ecx
	jb	.LBB4_119
# %bb.143:                              # %vector.memcheck554
	leaq	(%rax,%rax,2), %rcx
	leaq	(%r9,%rcx,2), %rcx
	addq	$-4, %rcx
	cmpq	%rcx, %rbp
	jae	.LBB4_150
# %bb.144:                              # %vector.memcheck554
	leaq	(,%rax,2), %rcx
	addq	%rbp, %rcx
	cmpq	%rcx, %r9
	jae	.LBB4_150
.LBB4_119:
	xorl	%ecx, %ecx
	jmp	.LBB4_153
.LBB4_120:
	xorl	%edi, %edi
	movq	56(%rsp), %rbp                  # 8-byte Reload
	movl	12(%rsp), %r8d                  # 4-byte Reload
	movq	208(%rsp), %r14                 # 8-byte Reload
	jmp	.LBB4_170
.LBB4_121:                              # %sw.bb86
	movq	24(%rsp), %r14                  # 8-byte Reload
	leal	(%r14,%r14), %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	movslq	%eax, %rdi
	addq	%rdi, %rdi
	callq	malloc@PLT
	movq	%r14, %r9
	movq	%rax, %rbp
	testl	%r9d, %r9d
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	216(%rsp), %r14                 # 8-byte Reload
	movq	88(%rsp), %r15                  # 8-byte Reload
	jle	.LBB4_165
# %bb.122:                              # %for.body103.preheader
	movl	%r9d, %eax
	cmpl	$32, %r9d
	jbe	.LBB4_124
# %bb.123:                              # %vector.memcheck523
	leaq	(,%rax,2), %rcx
	addq	%rbp, %rcx
	leaq	(%rax,%rax,2), %rdx
	leaq	(%r8,%rdx,2), %rdx
	addq	$-4, %rdx
	cmpq	%rdx, %rbp
	setb	%dl
	cmpq	%rcx, %r8
	setb	%cl
	testb	%cl, %dl
	je	.LBB4_158
.LBB4_124:
	xorl	%ecx, %ecx
	jmp	.LBB4_161
.LBB4_125:                              # %if.then36
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.4, %esi
	movl	%ebx, %ecx
	jmp	.LBB4_147
.LBB4_126:                              # %if.then40
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.5, %esi
	movl	%r12d, %ecx
	jmp	.LBB4_147
.LBB4_127:                              # %Error.thread.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.10, %edi
	movl	$43, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	ReadTIFFImage.t+8(%rip), %rdi
	jmp	.LBB4_102
.LBB4_128:                              # %for.body48.i.preheader629
	movdqa	.LCPI4_16(%rip), %xmm0          # xmm0 = [536879104,u,u,u]
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movq	24(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	subl	%edi, %eax
	xorl	%edi, %edi
	pshufd	$245, %xmm10, %xmm1             # xmm1 = xmm10[1,1,3,3]
	pshufd	$245, %xmm12, %xmm2             # xmm2 = xmm12[1,1,3,3]
	pshufd	$245, %xmm11, %xmm3             # xmm3 = xmm11[1,1,3,3]
	pshufd	$245, %xmm13, %xmm4             # xmm4 = xmm13[1,1,3,3]
	jmp	.LBB4_130
.LBB4_129:                              # %for.body48.i
                                        #   in Loop: Header=BB4_130 Depth=1
	movw	%r9w, (%rdx,%rdi)
	addq	$6, %rdi
	decl	%eax
	je	.LBB4_114
.LBB4_130:                              # %for.body48.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rcx,%rdi), %r8d
	movzwl	(%rsi,%rdi), %r9d
	movd	%r9d, %xmm5
	movdqa	%xmm5, %xmm6
	pinsrw	$2, (%rdx,%rdi), %xmm6
	movdqa	%xmm5, %xmm7
	pmuludq	%xmm10, %xmm7
	pshufd	$245, %xmm6, %xmm6              # xmm6 = xmm6[1,1,3,3]
	movdqa	%xmm6, %xmm8
	pmuludq	%xmm1, %xmm8
	punpckldq	%xmm8, %xmm7            # xmm7 = xmm7[0],xmm8[0],xmm7[1],xmm8[1]
	movdqa	%xmm5, %xmm8
	pmuludq	%xmm12, %xmm8
	movdqa	%xmm6, %xmm9
	pmuludq	%xmm2, %xmm9
	punpckldq	%xmm9, %xmm8            # xmm8 = xmm8[0],xmm9[0],xmm8[1],xmm9[1]
	punpckldq	%xmm7, %xmm8            # xmm8 = xmm8[0],xmm7[0],xmm8[1],xmm7[1]
	movd	%r8d, %xmm7
	movdqa	%xmm7, %xmm9
	pmuludq	%xmm3, %xmm9
	pshufd	$232, %xmm9, %xmm9              # xmm9 = xmm9[0,2,2,3]
	pmuludq	%xmm11, %xmm7
	pshufd	$232, %xmm7, %xmm7              # xmm7 = xmm7[0,2,2,3]
	punpckldq	%xmm9, %xmm7            # xmm7 = xmm7[0],xmm9[0],xmm7[1],xmm9[1]
	paddd	%xmm0, %xmm7
	paddd	%xmm8, %xmm7
	pshufd	$238, %xmm8, %xmm8              # xmm8 = xmm8[2,3,2,3]
	paddd	%xmm7, %xmm8
	movdqa	%xmm8, %xmm7
	psrad	$14, %xmm7
	pshufd	$85, %xmm7, %xmm9               # xmm9 = xmm7[1,1,1,1]
	movd	%xmm9, %r11d
	cmpl	$65535, %r11d                   # imm = 0xFFFF
	jb	.LBB4_132
# %bb.131:                              # %for.body48.i
                                        #   in Loop: Header=BB4_130 Depth=1
	movl	$65535, %r11d                   # imm = 0xFFFF
.LBB4_132:                              # %for.body48.i
                                        #   in Loop: Header=BB4_130 Depth=1
	pshufd	$80, %xmm8, %xmm8               # xmm8 = xmm8[0,0,1,1]
	movmskpd	%xmm8, %r10d
	xorl	%r9d, %r9d
	movl	$0, %ebx
	testb	$2, %r10b
	jne	.LBB4_133
# %bb.140:                              # %for.body48.i
                                        #   in Loop: Header=BB4_130 Depth=1
	movl	%r11d, %ebx
	movw	%bx, (%rcx,%rdi)
	movd	%xmm7, %r11d
	cmpl	$65535, %r11d                   # imm = 0xFFFF
	jae	.LBB4_141
.LBB4_134:                              # %for.body48.i
                                        #   in Loop: Header=BB4_130 Depth=1
	movl	$0, %ebx
	testb	$1, %r10b
	jne	.LBB4_136
.LBB4_135:                              # %for.body48.i
                                        #   in Loop: Header=BB4_130 Depth=1
	movl	%r11d, %ebx
.LBB4_136:                              # %for.body48.i
                                        #   in Loop: Header=BB4_130 Depth=1
	movw	%bx, (%rsi,%rdi)
	imull	%ebp, %r8d
	pmuludq	%xmm4, %xmm6
	pmuludq	%xmm13, %xmm5
	movd	%xmm5, %r10d
	addl	%r8d, %r10d
	movd	%xmm6, %r8d
	addl	%r10d, %r8d
	addl	$536879104, %r8d                # imm = 0x20002000
	sarl	$14, %r8d
	movl	%r8d, %r10d
	cmpl	$65535, %r8d                    # imm = 0xFFFF
	jb	.LBB4_138
# %bb.137:                              # %for.body48.i
                                        #   in Loop: Header=BB4_130 Depth=1
	movl	$65535, %r10d                   # imm = 0xFFFF
.LBB4_138:                              # %for.body48.i
                                        #   in Loop: Header=BB4_130 Depth=1
	testl	%r8d, %r8d
	js	.LBB4_129
# %bb.139:                              # %for.body48.i
                                        #   in Loop: Header=BB4_130 Depth=1
	movl	%r10d, %r9d
	jmp	.LBB4_129
.LBB4_133:                              # %for.body48.i
                                        #   in Loop: Header=BB4_130 Depth=1
	movw	%bx, (%rcx,%rdi)
	movd	%xmm7, %r11d
	cmpl	$65535, %r11d                   # imm = 0xFFFF
	jb	.LBB4_134
.LBB4_141:                              # %for.body48.i
                                        #   in Loop: Header=BB4_130 Depth=1
	movl	$65535, %r11d                   # imm = 0xFFFF
	movl	$0, %ebx
	testb	$1, %r10b
	je	.LBB4_135
	jmp	.LBB4_136
.LBB4_142:                              # %if.then47
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.6, %esi
	jmp	.LBB4_203
.LBB4_146:                              # %if.then93.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.19, %esi
                                        # kill: def $ecx killed $ecx killed $rcx
.LBB4_147:                              # %if.end173
	xorl	%eax, %eax
	callq	fprintf@PLT
	jmp	.LBB4_106
.LBB4_148:                              # %if.then107.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.20, %esi
	jmp	.LBB4_203
.LBB4_149:                              # %if.then121.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.21, %esi
	jmp	.LBB4_203
.LBB4_150:                              # %vector.ph563
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	$32, %edx
	cmovneq	%rcx, %rdx
	movq	%rax, %rcx
	subq	%rdx, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	leaq	(%r9,%rdx,2), %rdx
	xorl	%esi, %esi
	movdqa	.LCPI4_15(%rip), %xmm0          # xmm0 = [65535,0,65535,65535,0,65535,65535,0]
.LBB4_151:                              # %vector.body569
                                        # =>This Inner Loop Header: Depth=1
	movdqu	80(%r9), %xmm9
	movdqu	64(%r9), %xmm10
	movdqu	(%r9), %xmm3
	movdqu	16(%r9), %xmm8
	movdqu	32(%r9), %xmm11
	movdqu	48(%r9), %xmm12
	movdqu	128(%r9), %xmm5
	movdqu	96(%r9), %xmm7
	movdqu	112(%r9), %xmm6
	movdqu	176(%r9), %xmm1
	movdqu	144(%r9), %xmm4
	movdqu	160(%r9), %xmm2
	movdqa	%xmm0, %xmm13
	pandn	%xmm8, %xmm13
	pand	%xmm0, %xmm3
	por	%xmm13, %xmm3
	pshufd	$216, %xmm3, %xmm3              # xmm3 = xmm3[0,2,1,3]
	pshufhw	$230, %xmm3, %xmm3              # xmm3 = xmm3[0,1,2,3,6,5,6,7]
	pshufd	$216, %xmm3, %xmm3              # xmm3 = xmm3[0,2,1,3]
	pshuflw	$108, %xmm3, %xmm3              # xmm3 = xmm3[0,3,2,1,4,5,6,7]
	pshufhw	$236, %xmm8, %xmm8              # xmm8 = xmm8[0,1,2,3,4,7,6,7]
	pshufd	$100, %xmm11, %xmm11            # xmm11 = xmm11[0,1,2,1]
	pshufhw	$100, %xmm11, %xmm11            # xmm11 = xmm11[0,1,2,3,4,5,6,5]
	shufps	$35, %xmm8, %xmm11              # xmm11 = xmm11[3,0],xmm8[2,0]
	shufps	$36, %xmm11, %xmm3              # xmm3 = xmm3[0,1],xmm11[2,0]
	movdqa	%xmm0, %xmm8
	pandn	%xmm10, %xmm8
	pand	%xmm0, %xmm12
	por	%xmm8, %xmm12
	pshufd	$216, %xmm12, %xmm8             # xmm8 = xmm12[0,2,1,3]
	pshufhw	$230, %xmm8, %xmm8              # xmm8 = xmm8[0,1,2,3,6,5,6,7]
	pshufd	$216, %xmm8, %xmm8              # xmm8 = xmm8[0,2,1,3]
	pshuflw	$108, %xmm8, %xmm8              # xmm8 = xmm8[0,3,2,1,4,5,6,7]
	pshufhw	$236, %xmm10, %xmm10            # xmm10 = xmm10[0,1,2,3,4,7,6,7]
	pshufd	$100, %xmm9, %xmm9              # xmm9 = xmm9[0,1,2,1]
	pshufhw	$100, %xmm9, %xmm9              # xmm9 = xmm9[0,1,2,3,4,5,6,5]
	shufps	$35, %xmm10, %xmm9              # xmm9 = xmm9[3,0],xmm10[2,0]
	shufps	$36, %xmm9, %xmm8               # xmm8 = xmm8[0,1],xmm9[2,0]
	movdqa	%xmm0, %xmm9
	pandn	%xmm6, %xmm9
	pand	%xmm0, %xmm7
	por	%xmm9, %xmm7
	pshufd	$216, %xmm7, %xmm7              # xmm7 = xmm7[0,2,1,3]
	pshufhw	$230, %xmm7, %xmm7              # xmm7 = xmm7[0,1,2,3,6,5,6,7]
	pshufd	$216, %xmm7, %xmm7              # xmm7 = xmm7[0,2,1,3]
	pshuflw	$108, %xmm7, %xmm7              # xmm7 = xmm7[0,3,2,1,4,5,6,7]
	pshufhw	$236, %xmm6, %xmm6              # xmm6 = xmm6[0,1,2,3,4,7,6,7]
	pshufd	$100, %xmm5, %xmm5              # xmm5 = xmm5[0,1,2,1]
	pshufhw	$100, %xmm5, %xmm5              # xmm5 = xmm5[0,1,2,3,4,5,6,5]
	shufps	$35, %xmm6, %xmm5               # xmm5 = xmm5[3,0],xmm6[2,0]
	shufps	$36, %xmm5, %xmm7               # xmm7 = xmm7[0,1],xmm5[2,0]
	movdqa	%xmm0, %xmm5
	pandn	%xmm2, %xmm5
	pand	%xmm0, %xmm4
	por	%xmm5, %xmm4
	pshufd	$216, %xmm4, %xmm4              # xmm4 = xmm4[0,2,1,3]
	pshufhw	$230, %xmm4, %xmm4              # xmm4 = xmm4[0,1,2,3,6,5,6,7]
	pshufd	$216, %xmm4, %xmm4              # xmm4 = xmm4[0,2,1,3]
	pshuflw	$108, %xmm4, %xmm4              # xmm4 = xmm4[0,3,2,1,4,5,6,7]
	pshufhw	$236, %xmm2, %xmm2              # xmm2 = xmm2[0,1,2,3,4,7,6,7]
	pshufd	$100, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,1]
	pshufhw	$100, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,5,6,5]
	shufps	$35, %xmm2, %xmm1               # xmm1 = xmm1[3,0],xmm2[2,0]
	shufps	$36, %xmm1, %xmm4               # xmm4 = xmm4[0,1],xmm1[2,0]
	movups	%xmm3, (%rbp,%rsi,2)
	movups	%xmm8, 16(%rbp,%rsi,2)
	movups	%xmm7, 32(%rbp,%rsi,2)
	movups	%xmm4, 48(%rbp,%rsi,2)
	addq	$32, %rsi
	addq	$192, %r9
	cmpq	%rsi, %rcx
	jne	.LBB4_151
# %bb.152:
	movq	%rdx, %r9
.LBB4_153:                              # %for.body.preheader627
	movl	%eax, %esi
	subl	%ecx, %esi
	movq	%rcx, %rdx
	andl	$3, %esi
	je	.LBB4_155
.LBB4_154:                              # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r9), %r8d
	movw	%r8w, (%rbp,%rdx,2)
	addq	$6, %r9
	incq	%rdx
	decq	%rsi
	jne	.LBB4_154
.LBB4_155:                              # %for.body.prol.loopexit
	subq	%rax, %rcx
	cmpq	$-4, %rcx
	ja	.LBB4_157
.LBB4_156:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r9), %ecx
	movw	%cx, (%rbp,%rdx,2)
	movzwl	6(%r9), %ecx
	movw	%cx, 2(%rbp,%rdx,2)
	movzwl	12(%r9), %ecx
	movw	%cx, 4(%rbp,%rdx,2)
	movzwl	18(%r9), %ecx
	movw	%cx, 6(%rbp,%rdx,2)
	addq	$24, %r9
	addq	$4, %rdx
	cmpq	%rdx, %rax
	jne	.LBB4_156
.LBB4_157:                              # %for.end
	movabsq	$9223372036854775807, %rax      # imm = 0x7FFFFFFFFFFFFFFF
	andq	%rax, %rdi
	callq	malloc@PLT
	movq	%rax, %r12
	movl	$65535, (%rsp)                  # imm = 0xFFFF
	movq	128(%rsp), %rdi                 # 8-byte Reload
	movq	216(%rsp), %r13                 # 8-byte Reload
	movl	%r13d, %esi
	movq	296(%rsp), %rbx                 # 8-byte Reload
	movl	%ebx, %edx
	movl	$3, %ecx
	movq	%rax, %r8
	movl	$1, %r9d
	callq	horizontal_half_1chan_cosite
	movl	%r13d, %r15d
	shrl	$31, %r15d
	addl	%r13d, %r15d
	sarl	%r15d
	movl	$65535, (%rsp)                  # imm = 0xFFFF
	movq	%r12, %rdi
	movl	%r15d, %esi
	movl	%ebx, %edx
	movl	$1, %ecx
	movq	32(%rsp), %r8                   # 8-byte Reload
	movl	$1, %r9d
	callq	vertical_half_1chan
	movl	$65535, (%rsp)                  # imm = 0xFFFF
	movq	88(%rsp), %rdi                  # 8-byte Reload
	movl	%r13d, %esi
	movl	%ebx, %edx
	movl	$3, %ecx
	movq	%r12, %r8
	movl	$1, %r9d
	callq	horizontal_half_1chan_cosite
	movl	$65535, (%rsp)                  # imm = 0xFFFF
	movq	%r12, %rdi
	movl	%r15d, %esi
	movl	%ebx, %edx
	movl	$1, %ecx
	movq	16(%rsp), %r8                   # 8-byte Reload
	movl	$1, %r9d
	callq	vertical_half_1chan
	movq	%r12, %rdi
	callq	free@PLT
	movq	%rbp, %rdi
	jmp	.LBB4_169
.LBB4_158:                              # %vector.ph532
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	$32, %edx
	cmovneq	%rcx, %rdx
	movq	%rax, %rcx
	subq	%rdx, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	leaq	(%r8,%rdx,2), %rdx
	xorl	%esi, %esi
	movdqa	.LCPI4_15(%rip), %xmm0          # xmm0 = [65535,0,65535,65535,0,65535,65535,0]
.LBB4_159:                              # %vector.body538
                                        # =>This Inner Loop Header: Depth=1
	movdqu	80(%r8), %xmm9
	movdqu	64(%r8), %xmm10
	movdqu	(%r8), %xmm3
	movdqu	16(%r8), %xmm8
	movdqu	32(%r8), %xmm11
	movdqu	48(%r8), %xmm12
	movdqu	128(%r8), %xmm5
	movdqu	96(%r8), %xmm7
	movdqu	112(%r8), %xmm6
	movdqu	176(%r8), %xmm1
	movdqu	144(%r8), %xmm4
	movdqu	160(%r8), %xmm2
	movdqa	%xmm0, %xmm13
	pandn	%xmm8, %xmm13
	pand	%xmm0, %xmm3
	por	%xmm13, %xmm3
	pshufd	$216, %xmm3, %xmm3              # xmm3 = xmm3[0,2,1,3]
	pshufhw	$230, %xmm3, %xmm3              # xmm3 = xmm3[0,1,2,3,6,5,6,7]
	pshufd	$216, %xmm3, %xmm3              # xmm3 = xmm3[0,2,1,3]
	pshuflw	$108, %xmm3, %xmm3              # xmm3 = xmm3[0,3,2,1,4,5,6,7]
	pshufhw	$236, %xmm8, %xmm8              # xmm8 = xmm8[0,1,2,3,4,7,6,7]
	pshufd	$100, %xmm11, %xmm11            # xmm11 = xmm11[0,1,2,1]
	pshufhw	$100, %xmm11, %xmm11            # xmm11 = xmm11[0,1,2,3,4,5,6,5]
	shufps	$35, %xmm8, %xmm11              # xmm11 = xmm11[3,0],xmm8[2,0]
	shufps	$36, %xmm11, %xmm3              # xmm3 = xmm3[0,1],xmm11[2,0]
	movdqa	%xmm0, %xmm8
	pandn	%xmm10, %xmm8
	pand	%xmm0, %xmm12
	por	%xmm8, %xmm12
	pshufd	$216, %xmm12, %xmm8             # xmm8 = xmm12[0,2,1,3]
	pshufhw	$230, %xmm8, %xmm8              # xmm8 = xmm8[0,1,2,3,6,5,6,7]
	pshufd	$216, %xmm8, %xmm8              # xmm8 = xmm8[0,2,1,3]
	pshuflw	$108, %xmm8, %xmm8              # xmm8 = xmm8[0,3,2,1,4,5,6,7]
	pshufhw	$236, %xmm10, %xmm10            # xmm10 = xmm10[0,1,2,3,4,7,6,7]
	pshufd	$100, %xmm9, %xmm9              # xmm9 = xmm9[0,1,2,1]
	pshufhw	$100, %xmm9, %xmm9              # xmm9 = xmm9[0,1,2,3,4,5,6,5]
	shufps	$35, %xmm10, %xmm9              # xmm9 = xmm9[3,0],xmm10[2,0]
	shufps	$36, %xmm9, %xmm8               # xmm8 = xmm8[0,1],xmm9[2,0]
	movdqa	%xmm0, %xmm9
	pandn	%xmm6, %xmm9
	pand	%xmm0, %xmm7
	por	%xmm9, %xmm7
	pshufd	$216, %xmm7, %xmm7              # xmm7 = xmm7[0,2,1,3]
	pshufhw	$230, %xmm7, %xmm7              # xmm7 = xmm7[0,1,2,3,6,5,6,7]
	pshufd	$216, %xmm7, %xmm7              # xmm7 = xmm7[0,2,1,3]
	pshuflw	$108, %xmm7, %xmm7              # xmm7 = xmm7[0,3,2,1,4,5,6,7]
	pshufhw	$236, %xmm6, %xmm6              # xmm6 = xmm6[0,1,2,3,4,7,6,7]
	pshufd	$100, %xmm5, %xmm5              # xmm5 = xmm5[0,1,2,1]
	pshufhw	$100, %xmm5, %xmm5              # xmm5 = xmm5[0,1,2,3,4,5,6,5]
	shufps	$35, %xmm6, %xmm5               # xmm5 = xmm5[3,0],xmm6[2,0]
	shufps	$36, %xmm5, %xmm7               # xmm7 = xmm7[0,1],xmm5[2,0]
	movdqa	%xmm0, %xmm5
	pandn	%xmm2, %xmm5
	pand	%xmm0, %xmm4
	por	%xmm5, %xmm4
	pshufd	$216, %xmm4, %xmm4              # xmm4 = xmm4[0,2,1,3]
	pshufhw	$230, %xmm4, %xmm4              # xmm4 = xmm4[0,1,2,3,6,5,6,7]
	pshufd	$216, %xmm4, %xmm4              # xmm4 = xmm4[0,2,1,3]
	pshuflw	$108, %xmm4, %xmm4              # xmm4 = xmm4[0,3,2,1,4,5,6,7]
	pshufhw	$236, %xmm2, %xmm2              # xmm2 = xmm2[0,1,2,3,4,7,6,7]
	pshufd	$100, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,1]
	pshufhw	$100, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,5,6,5]
	shufps	$35, %xmm2, %xmm1               # xmm1 = xmm1[3,0],xmm2[2,0]
	shufps	$36, %xmm1, %xmm4               # xmm4 = xmm4[0,1],xmm1[2,0]
	movups	%xmm3, (%rbp,%rsi,2)
	movups	%xmm8, 16(%rbp,%rsi,2)
	movups	%xmm7, 32(%rbp,%rsi,2)
	movups	%xmm4, 48(%rbp,%rsi,2)
	addq	$32, %rsi
	addq	$192, %r8
	cmpq	%rsi, %rcx
	jne	.LBB4_159
# %bb.160:
	movq	%rdx, %r8
.LBB4_161:                              # %for.body103.preheader628
	movl	%eax, %esi
	subl	%ecx, %esi
	movq	%rcx, %rdx
	andl	$3, %esi
	je	.LBB4_163
.LBB4_162:                              # %for.body103.prol
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r8), %edi
	movw	%di, (%rbp,%rdx,2)
	addq	$6, %r8
	incq	%rdx
	decq	%rsi
	jne	.LBB4_162
.LBB4_163:                              # %for.body103.prol.loopexit
	subq	%rax, %rcx
	cmpq	$-4, %rcx
	ja	.LBB4_165
.LBB4_164:                              # %for.body103
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r8), %ecx
	movw	%cx, (%rbp,%rdx,2)
	movzwl	6(%r8), %ecx
	movw	%cx, 2(%rbp,%rdx,2)
	movzwl	12(%r8), %ecx
	movw	%cx, 4(%rbp,%rdx,2)
	movzwl	18(%r8), %ecx
	movw	%cx, 6(%rbp,%rdx,2)
	addq	$24, %r8
	addq	$4, %rdx
	cmpq	%rdx, %rax
	jne	.LBB4_164
.LBB4_165:                              # %for.cond110.preheader
	movq	296(%rsp), %rbx                 # 8-byte Reload
	testl	%ebx, %ebx
	jle	.LBB4_168
# %bb.166:                              # %for.body113.preheader
	movl	%r9d, %eax
	shrl	$31, %eax
	addl	%r9d, %eax
	sarl	%eax
	movslq	%r9d, %rcx
	cltq
	leaq	(,%rcx,2), %rcx
	addq	%rbp, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	leaq	(%rbp,%rax,2), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	(%r14,%r14), %rax
	leaq	(%rax,%rax,2), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	xorl	%r12d, %r12d
.LBB4_167:                              # %for.body113
                                        # =>This Inner Loop Header: Depth=1
	leaq	-2(%r15), %rdi
	movl	%r12d, %eax
	shrl	$31, %eax
	addl	%r12d, %eax
	sarl	%eax
	movslq	%eax, %r13
	movq	16(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r13,2), %r8
	movl	$65535, (%rsp)                  # imm = 0xFFFF
	movl	%r14d, %esi
	movl	$1, %edx
	movl	$3, %ecx
	movl	$1, %r9d
	callq	horizontal_half_1chan_cosite
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r13,2), %r8
	movl	$65535, (%rsp)                  # imm = 0xFFFF
	movq	%r15, %rdi
	movl	%r14d, %esi
	movl	$1, %edx
	movl	$3, %ecx
	movl	$1, %r9d
	callq	horizontal_half_1chan_cosite
	addl	%r14d, %r12d
	addq	64(%rsp), %r15                  # 8-byte Folded Reload
	decq	%rbx
	jne	.LBB4_167
.LBB4_168:
	movq	%rbp, %rdi
	movq	208(%rsp), %r14                 # 8-byte Reload
.LBB4_169:                              # %if.end137
	movq	136(%rsp), %r15                 # 8-byte Reload
	movl	12(%rsp), %r8d                  # 4-byte Reload
.LBB4_170:                              # %if.end137
	movl	128(%r15), %edx
	cmpl	$1, %edx
	je	.LBB4_183
# %bb.171:                              # %if.end137
	cmpl	$2, %edx
	jne	.LBB4_199
# %bb.172:                              # %for.cond153.preheader
	testl	%r8d, %r8d
	jle	.LBB4_197
# %bb.173:                              # %for.body156.preheader
	movl	%r8d, %eax
	xorl	%ecx, %ecx
	cmpl	$32, %r8d
	jb	.LBB4_178
# %bb.174:                              # %for.body156.preheader
	movq	%r14, %rdx
	subq	%rbp, %rdx
	cmpq	$63, %rdx
	jbe	.LBB4_178
# %bb.175:                              # %vector.ph591
	movl	%eax, %ecx
	andl	$2147483616, %ecx               # imm = 0x7FFFFFE0
	leal	(%rax,%rax), %edx
	andl	$-64, %edx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB4_176:                              # %vector.body595
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rbp,%rsi), %xmm0
	movdqu	16(%rbp,%rsi), %xmm1
	movdqu	32(%rbp,%rsi), %xmm2
	movdqu	48(%rbp,%rsi), %xmm3
	movdqu	%xmm0, (%r14,%rsi)
	movdqu	%xmm1, 16(%r14,%rsi)
	movdqu	%xmm2, 32(%r14,%rsi)
	movdqu	%xmm3, 48(%r14,%rsi)
	addq	$64, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB4_176
# %bb.177:                              # %middle.block588
	cmpl	%eax, %ecx
	je	.LBB4_197
.LBB4_178:                              # %for.body156.preheader625
	movq	%rax, %rsi
	movq	%rcx, %rdx
	andq	$3, %rsi
	je	.LBB4_181
# %bb.179:                              # %for.body156.prol.preheader
	movq	%rcx, %rdx
	.p2align	4, 0x90
.LBB4_180:                              # %for.body156.prol
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rbp,%rdx,2), %r8d
	movw	%r8w, (%r14,%rdx,2)
	incq	%rdx
	decq	%rsi
	jne	.LBB4_180
.LBB4_181:                              # %for.body156.prol.loopexit
	subq	%rax, %rcx
	cmpq	$-4, %rcx
	ja	.LBB4_197
.LBB4_182:                              # %for.body156
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rbp,%rdx,2), %ecx
	movw	%cx, (%r14,%rdx,2)
	movzwl	2(%rbp,%rdx,2), %ecx
	movw	%cx, 2(%r14,%rdx,2)
	movzwl	4(%rbp,%rdx,2), %ecx
	movw	%cx, 4(%r14,%rdx,2)
	movzwl	6(%rbp,%rdx,2), %ecx
	movw	%cx, 6(%r14,%rdx,2)
	addq	$4, %rdx
	cmpq	%rdx, %rax
	jne	.LBB4_182
	jmp	.LBB4_197
.LBB4_183:                              # %for.cond139.preheader
	testl	%r8d, %r8d
	jle	.LBB4_197
# %bb.184:                              # %for.body142.preheader
	movl	%r8d, %eax
	cmpl	$32, %r8d
	jb	.LBB4_185
# %bb.186:                              # %vector.memcheck603
	leaq	(,%rax,2), %rcx
	addq	%rbp, %rcx
	cmpq	%r14, %rcx
	jbe	.LBB4_189
# %bb.187:                              # %vector.memcheck603
	leaq	(%r14,%rax), %rcx
	cmpq	%rcx, %rbp
	jae	.LBB4_189
.LBB4_185:
	xorl	%ecx, %ecx
.LBB4_192:                              # %for.body142.preheader624
	movq	%rax, %rsi
	movq	%rcx, %rdx
	andq	$3, %rsi
	je	.LBB4_195
# %bb.193:                              # %for.body142.prol.preheader
	movq	%rcx, %rdx
	.p2align	4, 0x90
.LBB4_194:                              # %for.body142.prol
                                        # =>This Inner Loop Header: Depth=1
	movzbl	1(%rbp,%rdx,2), %r8d
	movb	%r8b, (%r14,%rdx)
	incq	%rdx
	decq	%rsi
	jne	.LBB4_194
.LBB4_195:                              # %for.body142.prol.loopexit
	subq	%rax, %rcx
	cmpq	$-4, %rcx
	ja	.LBB4_197
.LBB4_196:                              # %for.body142
                                        # =>This Inner Loop Header: Depth=1
	movzbl	1(%rbp,%rdx,2), %ecx
	movb	%cl, (%r14,%rdx)
	movzbl	3(%rbp,%rdx,2), %ecx
	movb	%cl, 1(%r14,%rdx)
	movzbl	5(%rbp,%rdx,2), %ecx
	movb	%cl, 2(%r14,%rdx)
	movzbl	7(%rbp,%rdx,2), %ecx
	movb	%cl, 3(%r14,%rdx)
	addq	$4, %rdx
	cmpq	%rdx, %rax
	jne	.LBB4_196
	jmp	.LBB4_197
.LBB4_189:                              # %vector.ph612
	movl	%eax, %ecx
	andl	$2147483616, %ecx               # imm = 0x7FFFFFE0
	xorl	%edx, %edx
.LBB4_190:                              # %vector.body616
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rbp,%rdx,2), %xmm0
	movdqu	16(%rbp,%rdx,2), %xmm1
	movdqu	32(%rbp,%rdx,2), %xmm2
	movdqu	48(%rbp,%rdx,2), %xmm3
	psrlw	$8, %xmm0
	psrlw	$8, %xmm1
	packuswb	%xmm1, %xmm0
	psrlw	$8, %xmm2
	psrlw	$8, %xmm3
	packuswb	%xmm3, %xmm2
	movdqu	%xmm0, (%r14,%rdx)
	movdqu	%xmm2, 16(%r14,%rdx)
	addq	$32, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB4_190
# %bb.191:                              # %middle.block609
	cmpl	%eax, %ecx
	jne	.LBB4_192
.LBB4_197:                              # %sw.epilog167
	movl	$1, %eax
	testq	%rdi, %rdi
	je	.LBB4_108
# %bb.198:                              # %if.then169
	callq	free@PLT
	movl	$1, %eax
	jmp	.LBB4_108
.LBB4_199:                              # %Error
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$.L.str.8, %esi
	movq	%rdi, %rbx
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	fprintf@PLT
	testq	%rbx, %rbx
	je	.LBB4_106
# %bb.200:                              # %if.then172
	movq	%rbx, %rdi
	callq	free@PLT
	jmp	.LBB4_106
.LBB4_201:                              # %sw.default.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.18, %esi
                                        # kill: def $edx killed $edx killed $rdx
	jmp	.LBB4_203
.LBB4_202:                              # %sw.default
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.7, %esi
.LBB4_203:                              # %if.end173
	xorl	%eax, %eax
	callq	fprintf@PLT
	jmp	.LBB4_106
.Lfunc_end4:
	.size	ReadTIFFImage, .Lfunc_end4-ReadTIFFImage
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI4_0:
	.quad	.LBB4_21
	.quad	.LBB4_25
	.quad	.LBB4_27
	.quad	.LBB4_37
	.quad	.LBB4_22
	.quad	.LBB4_22
	.quad	.LBB4_22
	.quad	.LBB4_22
	.quad	.LBB4_22
	.quad	.LBB4_22
	.quad	.LBB4_22
	.quad	.LBB4_22
	.quad	.LBB4_22
	.quad	.LBB4_22
	.quad	.LBB4_22
	.quad	.LBB4_22
	.quad	.LBB4_22
	.quad	.LBB4_39
	.quad	.LBB4_33
	.quad	.LBB4_22
	.quad	.LBB4_22
	.quad	.LBB4_22
	.quad	.LBB4_35
	.quad	.LBB4_36
	.quad	.LBB4_22
	.quad	.LBB4_22
	.quad	.LBB4_41
	.quad	.LBB4_40
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function getU16
	.type	getU16,@function
getU16:                                 # @getU16
	.cfi_startproc
# %bb.0:                                # %entry
	movq	16(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 16(%rdi)
	movzbl	(%rax), %ecx
	leaq	2(%rax), %rdx
	movq	%rdx, 16(%rdi)
	movzbl	1(%rax), %eax
	shll	$8, %eax
	orl	%ecx, %eax
	retq
.Lfunc_end5:
	.size	getU16, .Lfunc_end5-getU16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function getU32
	.type	getU32,@function
getU32:                                 # @getU32
	.cfi_startproc
# %bb.0:                                # %entry
	movq	16(%rdi), %rcx
	leaq	1(%rcx), %rax
	movq	%rax, 16(%rdi)
	movzbl	(%rcx), %edx
	leaq	2(%rcx), %rax
	movq	%rax, 16(%rdi)
	movzbl	1(%rcx), %eax
	leaq	3(%rcx), %rsi
	movq	%rsi, 16(%rdi)
	movzbl	2(%rcx), %esi
	leaq	4(%rcx), %r8
	movq	%r8, 16(%rdi)
	movzbl	3(%rcx), %ecx
	shll	$24, %ecx
	shll	$16, %esi
	shll	$8, %eax
	orl	%edx, %eax
	orl	%esi, %eax
	orl	%ecx, %eax
	retq
.Lfunc_end6:
	.size	getU32, .Lfunc_end6-getU32
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function getSwappedU16
	.type	getSwappedU16,@function
getSwappedU16:                          # @getSwappedU16
	.cfi_startproc
# %bb.0:                                # %entry
	movq	16(%rdi), %rcx
	leaq	1(%rcx), %rax
	movq	%rax, 16(%rdi)
	movzbl	(%rcx), %eax
	leaq	2(%rcx), %rdx
	movq	%rdx, 16(%rdi)
	movzbl	1(%rcx), %ecx
	shll	$8, %eax
	orl	%ecx, %eax
	retq
.Lfunc_end7:
	.size	getSwappedU16, .Lfunc_end7-getSwappedU16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function getSwappedU32
	.type	getSwappedU32,@function
getSwappedU32:                          # @getSwappedU32
	.cfi_startproc
# %bb.0:                                # %entry
	movq	16(%rdi), %rcx
	leaq	1(%rcx), %rax
	movq	%rax, 16(%rdi)
	leaq	2(%rcx), %rax
	movzbl	(%rcx), %edx
	movq	%rax, 16(%rdi)
	movzbl	1(%rcx), %esi
	leaq	3(%rcx), %rax
	movq	%rax, 16(%rdi)
	movzbl	2(%rcx), %eax
	leaq	4(%rcx), %r8
	movq	%r8, 16(%rdi)
	movzbl	3(%rcx), %ecx
	shll	$24, %edx
	shll	$16, %esi
	orl	%edx, %esi
	shll	$8, %eax
	orl	%esi, %eax
	orl	%ecx, %eax
	retq
.Lfunc_end8:
	.size	getSwappedU32, .Lfunc_end8-getSwappedU32
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function getIntArray
	.type	getIntArray,@function
getIntArray:                            # @getIntArray
	.cfi_startproc
# %bb.0:                                # %entry
	movq	ReadTIFFImage.t+16(%rip), %rax
	movl	%edi, %edi
	addq	ReadTIFFImage.t+8(%rip), %rdi
	movq	%rdi, ReadTIFFImage.t+16(%rip)
	cmpl	$3, %esi
	je	.LBB9_9
# %bb.1:                                # %entry
	cmpl	$4, %esi
	je	.LBB9_6
# %bb.2:                                # %entry
	cmpl	$5, %esi
	jne	.LBB9_16
# %bb.3:                                # %for.cond14.preheader
	testl	%ecx, %ecx
	jle	.LBB9_16
# %bb.4:                                # %for.body16.preheader
	addl	%ecx, %ecx
	cmpl	$2, %ecx
	movl	$1, %esi
	cmovgel	%ecx, %esi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB9_5:                                # %for.body16
                                        # =>This Inner Loop Header: Depth=1
	movq	ReadTIFFImage.t+16(%rip), %rdi
	leaq	1(%rdi), %r8
	movq	%r8, ReadTIFFImage.t+16(%rip)
	movzbl	(%rdi), %r8d
	leaq	2(%rdi), %r9
	movq	%r9, ReadTIFFImage.t+16(%rip)
	movzbl	1(%rdi), %r9d
	leaq	3(%rdi), %r10
	movq	%r10, ReadTIFFImage.t+16(%rip)
	movzbl	2(%rdi), %r10d
	leaq	4(%rdi), %r11
	movq	%r11, ReadTIFFImage.t+16(%rip)
	movzbl	3(%rdi), %edi
	shll	$24, %edi
	shll	$16, %r10d
	shll	$8, %r9d
	orl	%r8d, %r9d
	orl	%r10d, %r9d
	orl	%edi, %r9d
	movl	%r9d, (%rdx,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rsi
	jne	.LBB9_5
.LBB9_16:                               # %sw.epilog
	movq	%rax, ReadTIFFImage.t+16(%rip)
	retq
.LBB9_6:                                # %for.cond4.preheader
	testl	%ecx, %ecx
	jle	.LBB9_16
# %bb.7:                                # %for.body6.preheader
	movl	%ecx, %ecx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB9_8:                                # %for.body6
                                        # =>This Inner Loop Header: Depth=1
	movq	ReadTIFFImage.t+16(%rip), %rdi
	leaq	1(%rdi), %r8
	movq	%r8, ReadTIFFImage.t+16(%rip)
	movzbl	(%rdi), %r8d
	leaq	2(%rdi), %r9
	movq	%r9, ReadTIFFImage.t+16(%rip)
	movzbl	1(%rdi), %r9d
	leaq	3(%rdi), %r10
	movq	%r10, ReadTIFFImage.t+16(%rip)
	movzbl	2(%rdi), %r10d
	leaq	4(%rdi), %r11
	movq	%r11, ReadTIFFImage.t+16(%rip)
	movzbl	3(%rdi), %edi
	shll	$24, %edi
	shll	$16, %r10d
	shll	$8, %r9d
	orl	%r8d, %r9d
	orl	%r10d, %r9d
	orl	%edi, %r9d
	movl	%r9d, (%rdx,%rsi,4)
	incq	%rsi
	cmpq	%rsi, %rcx
	jne	.LBB9_8
	jmp	.LBB9_16
.LBB9_9:                                # %for.cond.preheader
	testl	%ecx, %ecx
	jle	.LBB9_16
# %bb.10:                               # %for.body.preheader
	movl	%ecx, %esi
	cmpl	$1, %ecx
	jne	.LBB9_12
# %bb.11:
	xorl	%ecx, %ecx
	jmp	.LBB9_14
.LBB9_12:                               # %for.body.preheader.new
	movl	%esi, %edi
	andl	$2147483646, %edi               # imm = 0x7FFFFFFE
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB9_13:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	ReadTIFFImage.t+16(%rip), %r8
	leaq	1(%r8), %r9
	movq	%r9, ReadTIFFImage.t+16(%rip)
	movzbl	(%r8), %r9d
	leaq	2(%r8), %r10
	movq	%r10, ReadTIFFImage.t+16(%rip)
	movzbl	1(%r8), %r8d
	shll	$8, %r8d
	orl	%r9d, %r8d
	movl	%r8d, (%rdx,%rcx,4)
	movq	ReadTIFFImage.t+16(%rip), %r8
	leaq	1(%r8), %r9
	movq	%r9, ReadTIFFImage.t+16(%rip)
	movzbl	(%r8), %r9d
	leaq	2(%r8), %r10
	movq	%r10, ReadTIFFImage.t+16(%rip)
	movzbl	1(%r8), %r8d
	shll	$8, %r8d
	orl	%r9d, %r8d
	movl	%r8d, 4(%rdx,%rcx,4)
	addq	$2, %rcx
	cmpq	%rcx, %rdi
	jne	.LBB9_13
.LBB9_14:                               # %sw.epilog.loopexit.unr-lcssa
	testb	$1, %sil
	je	.LBB9_16
# %bb.15:                               # %for.body.epil
	movq	ReadTIFFImage.t+16(%rip), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, ReadTIFFImage.t+16(%rip)
	movzbl	(%rsi), %edi
	leaq	2(%rsi), %r8
	movq	%r8, ReadTIFFImage.t+16(%rip)
	movzbl	1(%rsi), %esi
	shll	$8, %esi
	orl	%edi, %esi
	movl	%esi, (%rdx,%rcx,4)
	movq	%rax, ReadTIFFImage.t+16(%rip)
	retq
.Lfunc_end9:
	.size	getIntArray, .Lfunc_end9-getIntArray
	.cfi_endproc
                                        # -- End function
	.type	ReadTIFFImage.t,@object         # @ReadTIFFImage.t
	.local	ReadTIFFImage.t
	.comm	ReadTIFFImage.t,8744,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ReadTIFFImage:  RGB input file has not been declared as interleaved but only interleaved is supported\n"
	.size	.L.str, 103

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%s%0*d%s"
	.size	.L.str.1, 9

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%s%*d%s"
	.size	.L.str.2, 8

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"ReadTIFFImage:  file name is too large\n"
	.size	.L.str.3, 40

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"ReadTIFFImage:  Tiff height (%u) different from encoder input height (%d) . Exiting...\n"
	.size	.L.str.4, 88

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"ReadTIFFImage:  Tiff width (%u) different from encoder input width (%d) . Exiting...\n"
	.size	.L.str.5, 86

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"ReadTIFFImage only supports pic_unit_size_on_disk of 8 or 16 not %d\n"
	.size	.L.str.6, 69

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"ReadTIFFImage:  Unsupported ColorFormat (%d)\n"
	.size	.L.str.7, 46

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"ReadTIFFImage only supports pic_unit_size_shift3 of 1 or 2 not %d\n"
	.size	.L.str.8, 67

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Couldn't open to read:  %s\n"
	.size	.L.str.9, 28

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"First two bytes indicate:  Not a TIFF file\n"
	.size	.L.str.10, 44

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"ImageFileHeader.arbitrary != 42\n"
	.size	.L.str.11, 33

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"readDirectoryEntry:  ImageLength (%d) exceeds builtin maximum of %d\n"
	.size	.L.str.12, 69

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"BitsPerSample (only [3] supported)\n"
	.size	.L.str.13, 36

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"BitsPerSample must be the same for all samples\n"
	.size	.L.str.14, 48

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Only 8 or 16 BitsPerSample is supported\n"
	.size	.L.str.15, 41

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Only uncompressed TIFF files supported\n"
	.size	.L.str.16, 40

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Only Orientation 1 is supported\n"
	.size	.L.str.17, 33

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"RGB_YUV_initialize:  Unsupported videoCode (%d)\n"
	.size	.L.str.18, 49

	.type	Coef,@object                    # @Coef
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
Coef:
	.quad	0x3fd322d0e5604189              # double 0.29899999999999999
	.quad	0x3fe2c8b439581062              # double 0.58699999999999997
	.quad	0x3fbd2f1a9fbe76c9              # double 0.114
	.quad	0x3fcb367a0f9096bc              # double 0.21260000000000001
	.quad	0x3fe6e2eb1c432ca5              # double 0.71519999999999995
	.quad	0x3fb27bb2fec56d5d              # double 0.0722
	.quad	0x3fd322d0e5604189              # double 0.29899999999999999
	.quad	0x3fe2c8b439581062              # double 0.58699999999999997
	.quad	0x3fbd2f1a9fbe76c9              # double 0.114
	.quad	0x3fd322d0e5604189              # double 0.29899999999999999
	.quad	0x3fe2c8b439581062              # double 0.58699999999999997
	.quad	0x3fbd2f1a9fbe76c9              # double 0.114
	.quad	0x3fd3333333333333              # double 0.29999999999999999
	.quad	0x3fe2e147ae147ae1              # double 0.58999999999999997
	.quad	0x3fbc28f5c28f5c29              # double 0.11
	.quad	0x3fd322d0e5604189              # double 0.29899999999999999
	.quad	0x3fe2c8b439581062              # double 0.58699999999999997
	.quad	0x3fbd2f1a9fbe76c9              # double 0.114
	.quad	0x3fd322d0e5604189              # double 0.29899999999999999
	.quad	0x3fe2c8b439581062              # double 0.58699999999999997
	.quad	0x3fbd2f1a9fbe76c9              # double 0.114
	.quad	0x3fcb22d0e5604189              # double 0.21199999999999999
	.quad	0x3fe66e978d4fdf3b              # double 0.70099999999999996
	.quad	0x3fb645a1cac08312              # double 0.086999999999999994
	.quad	0x3fcb37c1376d5497              # double 0.21263899999999999
	.quad	0x3fe6e2aa19439de5              # double 0.71516900000000005
	.quad	0x3fb27b2cc70867ae              # double 0.072192000000000006
	.size	Coef, 216

	.type	.L.str.19,@object               # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"ERROR: RGB_YUV_initialize: yr+yg+yb=%d sy=%u\n"
	.size	.L.str.19, 46

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"ERROR: RGB_YUV_initialize: ur+ug+ub=%d\n"
	.size	.L.str.20, 40

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"ERROR: RGB_YUV_initialize: vr+vg+vb=%d\n"
	.size	.L.str.21, 40

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
