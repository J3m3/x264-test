	.text
	.file	"pixel.c"
	.globl	x264_pixel_ssd_wxh              # -- Begin function x264_pixel_ssd_wxh
	.p2align	4, 0x90
	.type	x264_pixel_ssd_wxh,@function
x264_pixel_ssd_wxh:                     # @x264_pixel_ssd_wxh
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
                                        # kill: def $r9d killed $r9d def $r9
	movl	%edx, 48(%rsp)                  # 4-byte Spill
	movq	%rdi, %r15
	movl	176(%rsp), %eax
	cmpl	$16, %eax
	movq	%r9, 56(%rsp)                   # 8-byte Spill
	movq	%rsi, 72(%rsp)                  # 8-byte Spill
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movl	%r8d, 8(%rsp)                   # 4-byte Spill
	movl	%edx, %r10d
	jl	.LBB0_1
# %bb.3:                                # %for.body.lr.ph
	addl	$-15, %eax
	movl	%r10d, %edi
	orl	%esi, %edi
	movl	%ecx, %edx
	orl	%r8d, %edx
	orl	%edi, %edx
	leal	-7(%r9), %ebx
	testb	$15, %dl
	je	.LBB0_4
# %bb.11:                               # %for.body.lr.ph.split
	cmpl	$7, %r9d
	jle	.LBB0_12
# %bb.13:                               # %for.body.us238.preheader
	movl	%eax, %eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movslq	%r10d, %rax
	movslq	%r8d, %rdx
	shlq	$4, %rdx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	shlq	$4, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	xorl	%edx, %edx
	movq	%rsi, %rbp
	movl	%r10d, %esi
	movq	%rcx, %r12
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB0_14:                               # %for.body.us238
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_15:                               # %for.body24.us245
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbp, %rdi
	addq	%r13, %rdi
	leaq	(%r12,%r13), %rdx
	movl	%r8d, %ecx
	callq	*72(%r15)
	movl	48(%rsp), %esi                  # 4-byte Reload
	movl	8(%rsp), %r8d                   # 4-byte Reload
	cltq
	addq	%rax, %r14
	addq	$8, %r13
	cmpl	%r13d, %ebx
	jg	.LBB0_15
# %bb.16:                               # %for.cond20.for.end42_crit_edge.us263
                                        #   in Loop: Header=BB0_14 Depth=1
	movq	32(%rsp), %rdx                  # 8-byte Reload
	addq	$16, %rdx
	addq	16(%rsp), %r12                  # 8-byte Folded Reload
	addq	24(%rsp), %rbp                  # 8-byte Folded Reload
	cmpq	40(%rsp), %rdx                  # 8-byte Folded Reload
	jb	.LBB0_14
# %bb.17:                               # %for.end45.loopexit292
	movq	56(%rsp), %r9                   # 8-byte Reload
.LBB0_18:                               # %for.end45
	movl	176(%rsp), %eax
	addl	$-7, %eax
	cmpl	%eax, %edx
	jl	.LBB0_20
	jmp	.LBB0_23
.LBB0_1:
	xorl	%edx, %edx
	jmp	.LBB0_2
.LBB0_4:                                # %for.body.us.preheader
	leal	-15(%r9), %edx
	movl	%edx, 40(%rsp)                  # 4-byte Spill
	movslq	%r10d, %rdx
	movslq	%r8d, %rdi
	movl	%eax, %eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	shlq	$4, %rdi
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	shlq	$4, %rdx
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	xorl	%edx, %edx
	movq	%rsi, %r12
	movl	%r10d, %esi
	movq	%rcx, %rbp
	xorl	%r14d, %r14d
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_10:                               # %for.end42.us
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	32(%rsp), %rdx                  # 8-byte Reload
	addq	$16, %rdx
	addq	16(%rsp), %rbp                  # 8-byte Folded Reload
	addq	24(%rsp), %r12                  # 8-byte Folded Reload
	cmpq	80(%rsp), %rdx                  # 8-byte Folded Reload
	movq	56(%rsp), %r9                   # 8-byte Reload
	jae	.LBB0_18
.LBB0_5:                                # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #     Child Loop BB0_9 Depth 2
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	xorl	%r13d, %r13d
	cmpl	$15, %r9d
	jle	.LBB0_7
	.p2align	4, 0x90
.LBB0_6:                                # %for.body10.us
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r12,%r13), %rdi
	movq	%rbp, %rdx
	addq	%r13, %rdx
	movl	%r8d, %ecx
	callq	*56(%r15)
	movl	48(%rsp), %esi                  # 4-byte Reload
	movl	8(%rsp), %r8d                   # 4-byte Reload
	cltq
	addq	%rax, %r14
	addq	$16, %r13
	cmpl	%r13d, 40(%rsp)                 # 4-byte Folded Reload
	jg	.LBB0_6
.LBB0_7:                                # %if.end.loopexit.us
                                        #   in Loop: Header=BB0_5 Depth=1
	cmpl	%ebx, %r13d
	jge	.LBB0_10
# %bb.8:                                # %for.body24.lr.ph.us
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_9:                                # %for.body24.us
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r12,%r13), %rdi
	movq	%rbp, %rdx
	addq	%r13, %rdx
	movl	%r8d, %ecx
	callq	*72(%r15)
	movl	48(%rsp), %esi                  # 4-byte Reload
	movl	8(%rsp), %r8d                   # 4-byte Reload
	cltq
	addq	%rax, %r14
	addq	$8, %r13
	cmpl	%r13d, %ebx
	jg	.LBB0_9
	jmp	.LBB0_10
.LBB0_12:                               # %for.body.preheader
	movl	176(%rsp), %eax
	movl	%eax, %edx
	andl	$2147483632, %edx               # imm = 0x7FFFFFF0
.LBB0_2:                                # %for.end45
	xorl	%r14d, %r14d
	movl	%r10d, %esi
	addl	$-7, %eax
	cmpl	%eax, %edx
	jge	.LBB0_23
.LBB0_20:                               # %for.cond51.preheader
	cmpl	$8, %r9d
	jl	.LBB0_23
# %bb.21:                               # %for.body55.lr.ph
	leal	-7(%r9), %ebx
	movl	%edx, %eax
	imull	%esi, %eax
	movslq	%eax, %r12
	addq	72(%rsp), %r12                  # 8-byte Folded Reload
	imull	%r8d, %edx
	movslq	%edx, %r13
	addq	64(%rsp), %r13                  # 8-byte Folded Reload
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB0_22:                               # %for.body55
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%r12,%rbp), %rdi
	movq	%r13, %rdx
	addq	%rbp, %rdx
	movl	%r8d, %ecx
	callq	*80(%r15)
	movl	48(%rsp), %esi                  # 4-byte Reload
	movl	8(%rsp), %r8d                   # 4-byte Reload
	cltq
	addq	%rax, %r14
	addq	$8, %rbp
	cmpl	%ebp, %ebx
	jg	.LBB0_22
.LBB0_23:                               # %if.end74
	movq	56(%rsp), %rdx                  # 8-byte Reload
	testb	$7, %dl
	je	.LBB0_34
# %bb.24:                               # %for.cond78.preheader
	movl	176(%rsp), %eax
                                        # kill: def $eax killed $eax killed $rax
	andl	$-8, %eax
	jle	.LBB0_34
# %bb.25:                               # %for.body82.lr.ph
	movl	%edx, %ecx
	andl	$-8, %ecx
	cmpl	%edx, %ecx
	jne	.LBB0_26
.LBB0_34:                               # %if.end108
	movl	176(%rsp), %esi
	testb	$7, %sil
	je	.LBB0_47
# %bb.35:                               # %if.then111
	movl	%esi, %eax
	andl	$-8, %eax
	cmpl	%esi, %eax
	sete	%cl
	movq	56(%rsp), %rdi                  # 8-byte Reload
	testl	%edi, %edi
	setle	%dl
	orb	%cl, %dl
	jne	.LBB0_47
# %bb.36:                               # %for.cond118.preheader.us.preheader
	movslq	%eax, %r13
	movslq	%esi, %rbp
	movslq	48(%rsp), %r15                  # 4-byte Folded Reload
	movslq	8(%rsp), %r10                   # 4-byte Folded Reload
	movl	%edi, %eax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movl	%eax, %r8d
	andl	$2147483644, %r8d               # imm = 0x7FFFFFFC
                                        # kill: def $eax killed $eax killed $rax def $rax
	andl	$3, %eax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%r10, 40(%rsp)                  # 8-byte Spill
	imulq	%r13, %r10
	movq	64(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rcx,%r10), %r11
	addq	$3, %r11
	movq	%r15, 48(%rsp)                  # 8-byte Spill
	imulq	%r13, %r15
	movq	72(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r15), %r12
	addq	$3, %r12
	addq	%rcx, %r10
	addq	%rax, %r15
	movq	%rbp, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB0_37
	.p2align	4, 0x90
.LBB0_46:                               # %for.cond118.for.cond.cleanup121_crit_edge.us
                                        #   in Loop: Header=BB0_37 Depth=1
	incq	%r13
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	%rcx, %r11
	movq	48(%rsp), %rax                  # 8-byte Reload
	addq	%rax, %r12
	addq	%rcx, %r10
	addq	%rax, %r15
	cmpq	%rbp, %r13
	jge	.LBB0_47
.LBB0_37:                               # %for.cond118.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_40 Depth 2
                                        #     Child Loop BB0_43 Depth 2
                                        #     Child Loop BB0_45 Depth 2
	cmpl	$4, %edi
	jae	.LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_37 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB0_42
	.p2align	4, 0x90
.LBB0_39:                               # %vector.body356.preheader
                                        #   in Loop: Header=BB0_37 Depth=1
	movq	%r13, 32(%rsp)                  # 8-byte Spill
	xorl	%ecx, %ecx
	xorl	%ebp, %ebp
	xorl	%r13d, %r13d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_40:                               # %vector.body356
                                        #   Parent Loop BB0_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-3(%r12,%rcx), %edx
	movzbl	-2(%r12,%rcx), %esi
	movzbl	-1(%r12,%rcx), %eax
	movzbl	(%r12,%rcx), %r9d
	movzbl	-3(%r11,%rcx), %edi
	subl	%edi, %edx
	movzbl	-2(%r11,%rcx), %edi
	subl	%edi, %esi
	movzbl	-1(%r11,%rcx), %edi
	subl	%edi, %eax
	movzbl	(%r11,%rcx), %edi
	subl	%edi, %r9d
	imull	%edx, %edx
	imull	%esi, %esi
	imull	%eax, %eax
	imull	%r9d, %r9d
	addq	%rdx, %r14
	addq	%rsi, %rbp
	addq	%rax, %r13
	addq	%r9, %rbx
	addq	$4, %rcx
	cmpq	%rcx, %r8
	jne	.LBB0_40
# %bb.41:                               # %middle.block349
                                        #   in Loop: Header=BB0_37 Depth=1
	addq	%r14, %rbp
	addq	%rbp, %r13
	addq	%r13, %rbx
	movq	%r8, %rcx
	movq	%rbx, %r14
	cmpl	8(%rsp), %r8d                   # 4-byte Folded Reload
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	32(%rsp), %r13                  # 8-byte Reload
	movq	16(%rsp), %rbp                  # 8-byte Reload
	je	.LBB0_46
.LBB0_42:                               # %for.body122.us.preheader
                                        #   in Loop: Header=BB0_37 Depth=1
	movq	24(%rsp), %r9                   # 8-byte Reload
	movq	%rcx, %rbx
	testq	%r9, %r9
	je	.LBB0_44
	.p2align	4, 0x90
.LBB0_43:                               # %for.body122.us.prol
                                        #   Parent Loop BB0_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r15,%rbx), %eax
	movzbl	(%r10,%rbx), %edx
	subl	%edx, %eax
	imull	%eax, %eax
	addq	%rax, %r14
	incq	%rbx
	decq	%r9
	jne	.LBB0_43
.LBB0_44:                               # %for.body122.us.prol.loopexit
                                        #   in Loop: Header=BB0_37 Depth=1
	movq	8(%rsp), %r9                    # 8-byte Reload
	subq	%r9, %rcx
	cmpq	$-4, %rcx
	ja	.LBB0_46
	.p2align	4, 0x90
.LBB0_45:                               # %for.body122.us
                                        #   Parent Loop BB0_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-3(%r12,%rbx), %eax
	movzbl	-3(%r11,%rbx), %ecx
	subl	%ecx, %eax
	imull	%eax, %eax
	addq	%r14, %rax
	movzbl	-2(%r12,%rbx), %ecx
	movzbl	-2(%r11,%rbx), %edx
	subl	%edx, %ecx
	imull	%ecx, %ecx
	movzbl	-1(%r12,%rbx), %edx
	movzbl	-1(%r11,%rbx), %esi
	subl	%esi, %edx
	imull	%edx, %edx
	addq	%rcx, %rdx
	addq	%rax, %rdx
	movzbl	(%r12,%rbx), %r14d
	movzbl	(%r11,%rbx), %eax
	subl	%eax, %r14d
	imull	%r14d, %r14d
	addq	%rdx, %r14
	addq	$4, %rbx
	cmpq	%rbx, %r9
	jne	.LBB0_45
	jmp	.LBB0_46
.LBB0_47:                               # %if.end144
	movq	%r14, %rax
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
.LBB0_26:                               # %for.body82.us.preheader
	.cfi_def_cfa_offset 176
	movslq	%ecx, %rdi
	movslq	%edx, %rcx
	movslq	%esi, %r9
	movslq	%r8d, %r8
	movl	%eax, %r11d
	movq	%rdi, %r12
	orq	$1, %r12
	cmpq	%rcx, %r12
	cmovleq	%rcx, %r12
	movq	%r12, %r13
	subq	%rdi, %r13
	movl	%r12d, %eax
	andl	$3, %eax
	movq	%r13, %rdx
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	subq	%rax, %rdx
	addq	%rdi, %rdx
	movq	%rdx, 88(%rsp)                  # 8-byte Spill
	andq	$-4, %r12
	subq	%rdi, %r12
	movq	64(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rdi), %rbx
	addq	$3, %rbx
	movq	72(%rsp), %r10                  # 8-byte Reload
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	leaq	(%r10,%rdi), %r15
	addq	$3, %r15
	xorl	%ebp, %ebp
	movq	%r9, 24(%rsp)                   # 8-byte Spill
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movq	%r11, 80(%rsp)                  # 8-byte Spill
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	movq	%r13, 104(%rsp)                 # 8-byte Spill
	jmp	.LBB0_27
	.p2align	4, 0x90
.LBB0_33:                               # %for.cond85.for.cond.cleanup88_crit_edge.us
                                        #   in Loop: Header=BB0_27 Depth=1
	incq	%rbp
	addq	%r8, %rbx
	addq	%r9, %r15
	addq	%r8, %rax
	addq	%r9, %r10
	cmpq	%r11, %rbp
	je	.LBB0_34
.LBB0_27:                               # %for.body82.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_32 Depth 2
	cmpq	$4, %r13
	jae	.LBB0_29
# %bb.28:                               #   in Loop: Header=BB0_27 Depth=1
	movq	32(%rsp), %rdi                  # 8-byte Reload
	jmp	.LBB0_32
	.p2align	4, 0x90
.LBB0_29:                               # %vector.body.preheader
                                        #   in Loop: Header=BB0_27 Depth=1
	movq	%rbp, 40(%rsp)                  # 8-byte Spill
	xorl	%r9d, %r9d
	xorl	%edi, %edi
	xorl	%r11d, %r11d
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB0_30:                               # %vector.body
                                        #   Parent Loop BB0_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-3(%r15,%r9), %edx
	movzbl	-2(%r15,%r9), %esi
	movq	%r12, %rcx
	movzbl	-1(%r15,%r9), %r12d
	movzbl	(%r15,%r9), %r13d
	movzbl	-3(%rbx,%r9), %r8d
	subl	%r8d, %edx
	movzbl	-2(%rbx,%r9), %r8d
	subl	%r8d, %esi
	movzbl	-1(%rbx,%r9), %r8d
	subl	%r8d, %r12d
	movzbl	(%rbx,%r9), %r8d
	subl	%r8d, %r13d
	imull	%edx, %edx
	imull	%esi, %esi
	imull	%r12d, %r12d
	imull	%r13d, %r13d
	addq	%rdx, %r14
	addq	%rsi, %rdi
	addq	%r12, %r11
	movq	%rcx, %r12
	addq	%r13, %rbp
	addq	$4, %r9
	cmpq	%r9, %rcx
	jne	.LBB0_30
# %bb.31:                               # %middle.block
                                        #   in Loop: Header=BB0_27 Depth=1
	addq	%r14, %rdi
	addq	%rdi, %r11
	addq	%r11, %rbp
	movq	88(%rsp), %rdi                  # 8-byte Reload
	movq	%rbp, %r14
	cmpq	$0, 96(%rsp)                    # 8-byte Folded Reload
	movq	24(%rsp), %r9                   # 8-byte Reload
	movq	16(%rsp), %r8                   # 8-byte Reload
	movq	80(%rsp), %r11                  # 8-byte Reload
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	104(%rsp), %r13                 # 8-byte Reload
	movq	40(%rsp), %rbp                  # 8-byte Reload
	je	.LBB0_33
	.p2align	4, 0x90
.LBB0_32:                               # %for.body89.us
                                        #   Parent Loop BB0_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r10,%rdi), %edx
	movzbl	(%rax,%rdi), %esi
	subl	%esi, %edx
	imull	%edx, %edx
	addq	%rdx, %r14
	incq	%rdi
	cmpq	%rcx, %rdi
	jl	.LBB0_32
	jmp	.LBB0_33
.Lfunc_end0:
	.size	x264_pixel_ssd_wxh, .Lfunc_end0-x264_pixel_ssd_wxh
	.cfi_endproc
                                        # -- End function
	.globl	x264_pixel_ssim_wxh             # -- Begin function x264_pixel_ssim_wxh
	.p2align	4, 0x90
	.type	x264_pixel_ssim_wxh,@function
x264_pixel_ssim_wxh:                    # @x264_pixel_ssim_wxh
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
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
                                        # kill: def $r9d killed $r9d def $r9
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	movq	%rsi, 88(%rsp)                  # 8-byte Spill
	leal	3(%r9), %ecx
	testl	%r9d, %r9d
	cmovnsl	%r9d, %ecx
	movl	192(%rsp), %eax
	sarl	$2, %eax
	xorps	%xmm0, %xmm0
	cmpl	$2, %eax
	jl	.LBB1_18
# %bb.1:                                # %for.cond3.preheader.lr.ph
	sarl	$2, %r9d
	testl	%r9d, %r9d
	jle	.LBB1_18
# %bb.2:                                # %for.cond3.preheader.lr.ph.split.us
	movq	%rdi, %rbx
	movq	200(%rsp), %r12
	sarl	$2, %ecx
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	leaq	(%r12,%rcx), %r13
	addq	$48, %r13
	movl	%r9d, %ecx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	movl	%edx, 24(%rsp)                  # 4-byte Spill
	movslq	%edx, %rcx
	movl	%r8d, 28(%rsp)                  # 4-byte Spill
	movslq	%r8d, %rdx
	cmpl	$1, %r9d
	movq	%rdi, 80(%rsp)                  # 8-byte Spill
	jne	.LBB1_11
# %bb.3:                                # %for.cond3.preheader.us.preheader
	movl	%eax, %esi
	shlq	$2, %rdx
	shlq	$2, %rcx
	xorl	%eax, %eax
	movl	$1, %edi
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %rbx                 # 8-byte Reload
	jmp	.LBB1_4
	.p2align	4, 0x90
.LBB1_10:                               # %for.cond22.preheader.us
                                        #   in Loop: Header=BB1_4 Depth=1
	incq	%rdi
	cmpq	%rsi, %rdi
	je	.LBB1_18
.LBB1_4:                                # %for.cond3.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
                                        #       Child Loop BB1_7 Depth 3
	movslq	%eax, %r8
	cmpq	%r8, %rdi
	jl	.LBB1_10
# %bb.5:                                # %for.cond6.preheader.us.us.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	%rdx, %r15
	imulq	%r8, %r15
	addq	96(%rsp), %r15                  # 8-byte Folded Reload
	movq	%rcx, %r14
	imulq	%r8, %r14
	addq	88(%rsp), %r14                  # 8-byte Folded Reload
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB1_6:                                # %for.cond6.preheader.us.us
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_7 Depth 3
	movq	%r8, (%rsp)                     # 8-byte Spill
	movq	%r12, 64(%rsp)                  # 8-byte Spill
	movq	%r14, 8(%rsp)                   # 8-byte Spill
	movq	%r15, 72(%rsp)                  # 8-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	xorl	%ebp, %ebp
	movq	80(%rsp), %r12                  # 8-byte Reload
	.p2align	4, 0x90
.LBB1_7:                                # %for.body9.us.us
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r14, %rdi
	movl	24(%rsp), %esi                  # 4-byte Reload
	movq	%r15, %rdx
	movl	28(%rsp), %ecx                  # 4-byte Reload
	movq	%r13, %r8
	callq	*664(%r12)
	addq	$2, %rbp
	addq	$32, %r13
	addq	$8, %r15
	addq	$8, %r14
	cmpq	%rbx, %rbp
	jb	.LBB1_7
# %bb.8:                                # %for.cond6.for.cond.cleanup8_crit_edge.us.us
                                        #   in Loop: Header=BB1_6 Depth=2
	movq	(%rsp), %rsi                    # 8-byte Reload
	leaq	1(%rsi), %rax
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	72(%rsp), %r15                  # 8-byte Reload
	addq	%rdx, %r15
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	8(%rsp), %r14                   # 8-byte Reload
	addq	%rcx, %r14
	movq	64(%rsp), %r9                   # 8-byte Reload
	movq	%r9, %r13
	movq	56(%rsp), %rdi                  # 8-byte Reload
	cmpq	%rdi, %rsi
	movq	%rax, %r8
	movq	16(%rsp), %r12                  # 8-byte Reload
	jl	.LBB1_6
# %bb.9:                                # %for.cond22.preheader.us.loopexit
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	%r9, %r13
	xorps	%xmm0, %xmm0
	movq	48(%rsp), %rsi                  # 8-byte Reload
	jmp	.LBB1_10
.LBB1_11:                               # %for.cond3.preheader.us.us.preheader
	decl	%r9d
	movq	%r9, 128(%rsp)                  # 8-byte Spill
	movl	%r9d, %esi
	movq	%rsi, 72(%rsp)                  # 8-byte Spill
	movl	%eax, %eax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	shlq	$2, %rdx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	shlq	$2, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	xorl	%ecx, %ecx
	movl	$1, %eax
	.p2align	4, 0x90
.LBB1_12:                               # %for.cond3.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_20 Depth 2
                                        #       Child Loop BB1_21 Depth 3
                                        #     Child Loop BB1_16 Depth 2
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movslq	%ecx, %rdx
	cmpq	%rdx, %rax
	jge	.LBB1_19
# %bb.13:                               #   in Loop: Header=BB1_12 Depth=1
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	jmp	.LBB1_15
	.p2align	4, 0x90
.LBB1_19:                               # %for.cond6.preheader.us.us.us.preheader
                                        #   in Loop: Header=BB1_12 Depth=1
	movss	%xmm0, (%rsp)                   # 4-byte Spill
	movq	32(%rsp), %r15                  # 8-byte Reload
	imulq	%rdx, %r15
	addq	96(%rsp), %r15                  # 8-byte Folded Reload
	movq	40(%rsp), %r14                  # 8-byte Reload
	imulq	%rdx, %r14
	addq	88(%rsp), %r14                  # 8-byte Folded Reload
	.p2align	4, 0x90
.LBB1_20:                               # %for.cond6.preheader.us.us.us
                                        #   Parent Loop BB1_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_21 Depth 3
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%r12, 48(%rsp)                  # 8-byte Spill
	movq	%r14, 56(%rsp)                  # 8-byte Spill
	movq	%r15, 64(%rsp)                  # 8-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	xorl	%ebp, %ebp
	movq	80(%rsp), %r12                  # 8-byte Reload
	movq	112(%rsp), %rbx                 # 8-byte Reload
	.p2align	4, 0x90
.LBB1_21:                               # %for.body9.us.us.us
                                        #   Parent Loop BB1_12 Depth=1
                                        #     Parent Loop BB1_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r14, %rdi
	movl	24(%rsp), %esi                  # 4-byte Reload
	movq	%r15, %rdx
	movl	28(%rsp), %ecx                  # 4-byte Reload
	movq	%r13, %r8
	callq	*664(%r12)
	addq	$2, %rbp
	addq	$32, %r13
	addq	$8, %r15
	addq	$8, %r14
	cmpq	%rbx, %rbp
	jb	.LBB1_21
# %bb.22:                               # %for.cond6.for.cond.cleanup8_crit_edge.us.us.us
                                        #   in Loop: Header=BB1_20 Depth=2
	movq	8(%rsp), %rcx                   # 8-byte Reload
	leaq	1(%rcx), %rax
	movq	64(%rsp), %r15                  # 8-byte Reload
	addq	32(%rsp), %r15                  # 8-byte Folded Reload
	movq	56(%rsp), %r14                  # 8-byte Reload
	addq	40(%rsp), %r14                  # 8-byte Folded Reload
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, %r13
	cmpq	104(%rsp), %rcx                 # 8-byte Folded Reload
	movq	%rax, %rdx
	movq	16(%rsp), %r12                  # 8-byte Reload
	jl	.LBB1_20
# %bb.14:                               # %for.cond22.preheader.us.us.loopexit
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	%rsi, %r13
	movq	80(%rsp), %rbx                  # 8-byte Reload
	movss	(%rsp), %xmm0                   # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
.LBB1_15:                               # %for.cond22.preheader.us.us
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	%r12, %r14
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r13, %r15
	movq	128(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %r13d
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB1_16:                               # %for.body25.us.us
                                        #   Parent Loop BB1_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	%xmm0, (%rsp)                   # 4-byte Spill
	cmpl	$4, %r13d
	movl	$4, %edx
	cmovll	%r13d, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*672(%rbx)
	movss	(%rsp), %xmm1                   # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	movss	%xmm1, (%rsp)                   # 4-byte Spill
	movss	(%rsp), %xmm0                   # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	addq	$4, %rbp
	addl	$-4, %r13d
	addq	$64, %r15
	addq	$64, %r14
	cmpq	72(%rsp), %rbp                  # 8-byte Folded Reload
	jb	.LBB1_16
# %bb.17:                               # %for.cond22.for.cond.cleanup24_crit_edge.us.us
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	104(%rsp), %rax                 # 8-byte Reload
	incq	%rax
	cmpq	120(%rsp), %rax                 # 8-byte Folded Reload
	movq	16(%rsp), %r13                  # 8-byte Reload
	movq	8(%rsp), %rcx                   # 8-byte Reload
	jne	.LBB1_12
.LBB1_18:                               # %for.cond.cleanup
	addq	$136, %rsp
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
	.size	x264_pixel_ssim_wxh, .Lfunc_end1-x264_pixel_ssim_wxh
	.cfi_endproc
                                        # -- End function
	.globl	x264_pixel_init                 # -- Begin function x264_pixel_init
	.p2align	4, 0x90
	.type	x264_pixel_init,@function
x264_pixel_init:                        # @x264_pixel_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	leaq	168(%rsi), %rdi
	movl	$888, %edx                      # imm = 0x378
	xorl	%esi, %esi
	callq	memset@PLT
	movq	$x264_pixel_sad_16x16, (%rbx)
	movq	$x264_pixel_sad_16x8, 8(%rbx)
	movq	$x264_pixel_sad_8x16, 16(%rbx)
	movq	$x264_pixel_sad_8x8, 24(%rbx)
	movq	$x264_pixel_sad_8x4, 32(%rbx)
	movq	$x264_pixel_sad_4x8, 40(%rbx)
	movq	$x264_pixel_sad_4x4, 48(%rbx)
	movq	$x264_pixel_sad_16x16, 536(%rbx)
	movq	$x264_pixel_sad_16x8, 544(%rbx)
	movq	$x264_pixel_sad_8x16, 552(%rbx)
	movq	$x264_pixel_sad_8x8, 560(%rbx)
	movq	$x264_pixel_sad_8x4, 568(%rbx)
	movq	$x264_pixel_sad_4x8, 576(%rbx)
	movq	$x264_pixel_sad_4x4, 584(%rbx)
	movq	$x264_pixel_sad_x3_16x16, 680(%rbx)
	movq	$x264_pixel_sad_x3_16x8, 688(%rbx)
	movq	$x264_pixel_sad_x3_8x16, 696(%rbx)
	movq	$x264_pixel_sad_x3_8x8, 704(%rbx)
	movq	$x264_pixel_sad_x3_8x4, 712(%rbx)
	movq	$x264_pixel_sad_x3_4x8, 720(%rbx)
	movq	$x264_pixel_sad_x3_4x4, 728(%rbx)
	movq	$x264_pixel_sad_x4_16x16, 736(%rbx)
	movq	$x264_pixel_sad_x4_16x8, 744(%rbx)
	movq	$x264_pixel_sad_x4_8x16, 752(%rbx)
	movq	$x264_pixel_sad_x4_8x8, 760(%rbx)
	movq	$x264_pixel_sad_x4_8x4, 768(%rbx)
	movq	$x264_pixel_sad_x4_4x8, 776(%rbx)
	movq	$x264_pixel_sad_x4_4x4, 784(%rbx)
	movq	$x264_pixel_ssd_16x16, 56(%rbx)
	movq	$x264_pixel_ssd_16x8, 64(%rbx)
	movq	$x264_pixel_ssd_8x16, 72(%rbx)
	movq	$x264_pixel_ssd_8x8, 80(%rbx)
	movq	$x264_pixel_ssd_8x4, 88(%rbx)
	movq	$x264_pixel_ssd_4x8, 96(%rbx)
	movq	$x264_pixel_ssd_4x4, 104(%rbx)
	movq	$x264_pixel_satd_16x16, 112(%rbx)
	movq	$x264_pixel_satd_16x8, 120(%rbx)
	movq	$x264_pixel_satd_8x16, 128(%rbx)
	movq	$x264_pixel_satd_8x8, 136(%rbx)
	movq	$x264_pixel_satd_8x4, 144(%rbx)
	movq	$x264_pixel_satd_4x8, 152(%rbx)
	movq	$x264_pixel_satd_4x4, 160(%rbx)
	movq	$x264_pixel_satd_x3_16x16, 792(%rbx)
	movq	$x264_pixel_satd_x3_16x8, 800(%rbx)
	movq	$x264_pixel_satd_x3_8x16, 808(%rbx)
	movq	$x264_pixel_satd_x3_8x8, 816(%rbx)
	movq	$x264_pixel_satd_x3_8x4, 824(%rbx)
	movq	$x264_pixel_satd_x3_4x8, 832(%rbx)
	movq	$x264_pixel_satd_x3_4x4, 840(%rbx)
	movq	$x264_pixel_satd_x4_16x16, 848(%rbx)
	movq	$x264_pixel_satd_x4_16x8, 856(%rbx)
	movq	$x264_pixel_satd_x4_8x16, 864(%rbx)
	movq	$x264_pixel_satd_x4_8x8, 872(%rbx)
	movq	$x264_pixel_satd_x4_8x4, 880(%rbx)
	movq	$x264_pixel_satd_x4_4x8, 888(%rbx)
	movq	$x264_pixel_satd_x4_4x4, 896(%rbx)
	movq	$x264_pixel_hadamard_ac_16x16, 632(%rbx)
	movq	$x264_pixel_hadamard_ac_16x8, 640(%rbx)
	movq	$x264_pixel_hadamard_ac_8x16, 648(%rbx)
	movq	$x264_pixel_hadamard_ac_8x8, 656(%rbx)
	movq	$x264_pixel_ads4, 904(%rbx)
	movq	$x264_pixel_ads2, 912(%rbx)
	movq	$x264_pixel_ads1, 928(%rbx)
	movq	$x264_pixel_sa8d_16x16, 224(%rbx)
	movq	$x264_pixel_sa8d_8x8, 248(%rbx)
	movq	$x264_pixel_var_16x16, 600(%rbx)
	movq	$x264_pixel_var_8x8, 624(%rbx)
	movq	$ssim_4x4x2_core, 664(%rbx)
	movq	$ssim_end4, 672(%rbx)
	movq	$pixel_var2_8x8, 592(%rbx)
	movq	$x264_pixel_ads2, 944(%rbx)
	movq	$x264_pixel_ads2, 936(%rbx)
	movq	$x264_pixel_ads2, 920(%rbx)
	movq	$x264_pixel_ads1, 952(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	x264_pixel_init, .Lfunc_end2-x264_pixel_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_sad_16x16
	.type	x264_pixel_sad_16x16,@function
x264_pixel_sad_16x16:                   # @x264_pixel_sad_16x16
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	%esi, %rsi
	movslq	%ecx, %rcx
	xorl	%eax, %eax
	movl	$16, %r8d
	.p2align	4, 0x90
.LBB3_1:                                # %for.cond1.preheader
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi), %xmm0
	movdqu	(%rdx), %xmm1
	psadbw	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddq	%xmm1, %xmm0
	movd	%xmm0, %r9d
	addl	%r9d, %eax
	addq	%rsi, %rdi
	addq	%rcx, %rdx
	decl	%r8d
	jne	.LBB3_1
# %bb.2:                                # %for.cond.cleanup
	retq
.Lfunc_end3:
	.size	x264_pixel_sad_16x16, .Lfunc_end3-x264_pixel_sad_16x16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_sad_16x8
	.type	x264_pixel_sad_16x8,@function
x264_pixel_sad_16x8:                    # @x264_pixel_sad_16x8
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	%ecx, %rax
	movslq	%esi, %rcx
	movdqu	(%rdi), %xmm0
	movdqu	(%rdx), %xmm1
	psadbw	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddq	%xmm1, %xmm0
	movd	%xmm0, %esi
	movdqu	(%rdi,%rcx), %xmm0
	addq	%rcx, %rdi
	movdqu	(%rdx,%rax), %xmm1
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddq	%xmm1, %xmm0
	movd	%xmm0, %r8d
	addl	%esi, %r8d
	movdqu	(%rcx,%rdi), %xmm0
	addq	%rcx, %rdi
	movdqu	(%rax,%rdx), %xmm1
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddq	%xmm1, %xmm0
	movd	%xmm0, %esi
	addl	%r8d, %esi
	movdqu	(%rcx,%rdi), %xmm0
	addq	%rcx, %rdi
	movdqu	(%rax,%rdx), %xmm1
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddq	%xmm1, %xmm0
	movd	%xmm0, %r8d
	addl	%esi, %r8d
	movdqu	(%rcx,%rdi), %xmm0
	addq	%rcx, %rdi
	movdqu	(%rax,%rdx), %xmm1
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddq	%xmm1, %xmm0
	movd	%xmm0, %esi
	addl	%r8d, %esi
	movdqu	(%rcx,%rdi), %xmm0
	addq	%rcx, %rdi
	movdqu	(%rax,%rdx), %xmm1
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddq	%xmm1, %xmm0
	movd	%xmm0, %r8d
	addl	%esi, %r8d
	movdqu	(%rcx,%rdi), %xmm0
	addq	%rcx, %rdi
	movdqu	(%rax,%rdx), %xmm1
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddq	%xmm1, %xmm0
	movd	%xmm0, %esi
	addl	%r8d, %esi
	movdqu	(%rcx,%rdi), %xmm0
	movdqu	(%rax,%rdx), %xmm1
	psadbw	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddq	%xmm1, %xmm0
	movd	%xmm0, %eax
	addl	%esi, %eax
	retq
.Lfunc_end4:
	.size	x264_pixel_sad_16x8, .Lfunc_end4-x264_pixel_sad_16x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_sad_8x16
	.type	x264_pixel_sad_8x16,@function
x264_pixel_sad_8x16:                    # @x264_pixel_sad_8x16
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	%ecx, %rax
	movslq	%esi, %rcx
	movq	(%rdi), %xmm0                   # xmm0 = mem[0],zero
	movq	(%rdx), %xmm1                   # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	movq	(%rdi,%rcx), %xmm0              # xmm0 = mem[0],zero
	addq	%rcx, %rdi
	movq	(%rdx,%rax), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%esi, %r8d
	movq	(%rcx,%rdi), %xmm0              # xmm0 = mem[0],zero
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r8d, %esi
	movq	(%rcx,%rdi), %xmm0              # xmm0 = mem[0],zero
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%esi, %r8d
	movq	(%rcx,%rdi), %xmm0              # xmm0 = mem[0],zero
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r8d, %esi
	movq	(%rcx,%rdi), %xmm0              # xmm0 = mem[0],zero
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%esi, %r8d
	movq	(%rcx,%rdi), %xmm0              # xmm0 = mem[0],zero
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r8d, %esi
	movq	(%rcx,%rdi), %xmm0              # xmm0 = mem[0],zero
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%esi, %r8d
	movq	(%rcx,%rdi), %xmm0              # xmm0 = mem[0],zero
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r8d, %esi
	movq	(%rcx,%rdi), %xmm0              # xmm0 = mem[0],zero
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%esi, %r8d
	movq	(%rcx,%rdi), %xmm0              # xmm0 = mem[0],zero
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r8d, %esi
	movq	(%rcx,%rdi), %xmm0              # xmm0 = mem[0],zero
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%esi, %r8d
	movq	(%rcx,%rdi), %xmm0              # xmm0 = mem[0],zero
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r8d, %esi
	movq	(%rcx,%rdi), %xmm0              # xmm0 = mem[0],zero
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%esi, %r8d
	movq	(%rcx,%rdi), %xmm0              # xmm0 = mem[0],zero
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r8d, %esi
	movq	(%rcx,%rdi), %xmm0              # xmm0 = mem[0],zero
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %eax
	addl	%esi, %eax
	retq
.Lfunc_end5:
	.size	x264_pixel_sad_8x16, .Lfunc_end5-x264_pixel_sad_8x16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_sad_8x8
	.type	x264_pixel_sad_8x8,@function
x264_pixel_sad_8x8:                     # @x264_pixel_sad_8x8
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	%ecx, %rax
	movslq	%esi, %rcx
	movq	(%rdi), %xmm0                   # xmm0 = mem[0],zero
	movq	(%rdx), %xmm1                   # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	movq	(%rdi,%rcx), %xmm0              # xmm0 = mem[0],zero
	addq	%rcx, %rdi
	movq	(%rdx,%rax), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%esi, %r8d
	movq	(%rcx,%rdi), %xmm0              # xmm0 = mem[0],zero
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r8d, %esi
	movq	(%rcx,%rdi), %xmm0              # xmm0 = mem[0],zero
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%esi, %r8d
	movq	(%rcx,%rdi), %xmm0              # xmm0 = mem[0],zero
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r8d, %esi
	movq	(%rcx,%rdi), %xmm0              # xmm0 = mem[0],zero
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%esi, %r8d
	movq	(%rcx,%rdi), %xmm0              # xmm0 = mem[0],zero
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r8d, %esi
	movq	(%rcx,%rdi), %xmm0              # xmm0 = mem[0],zero
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %eax
	addl	%esi, %eax
	retq
.Lfunc_end6:
	.size	x264_pixel_sad_8x8, .Lfunc_end6-x264_pixel_sad_8x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_sad_8x4
	.type	x264_pixel_sad_8x4,@function
x264_pixel_sad_8x4:                     # @x264_pixel_sad_8x4
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	%esi, %rax
	movslq	%ecx, %rcx
	leaq	(%rdi,%rax), %rsi
	leaq	(%rdx,%rcx), %r8
	movq	(%rdi,%rax), %xmm0              # xmm0 = mem[0],zero
	movq	(%rdi), %xmm1                   # xmm1 = mem[0],zero
	punpcklqdq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0]
	movq	(%rdx,%rcx), %xmm0              # xmm0 = mem[0],zero
	movq	(%rdx), %xmm2                   # xmm2 = mem[0],zero
	punpcklqdq	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0]
	psadbw	%xmm1, %xmm2
	movq	(%rax,%rsi), %xmm0              # xmm0 = mem[0],zero
	addq	%rax, %rsi
	movq	(%rax,%rsi), %xmm1              # xmm1 = mem[0],zero
	punpcklqdq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0]
	movq	(%rcx,%r8), %xmm1               # xmm1 = mem[0],zero
	addq	%rcx, %r8
	movq	(%rcx,%r8), %xmm3               # xmm3 = mem[0],zero
	punpcklqdq	%xmm3, %xmm1            # xmm1 = xmm1[0],xmm3[0]
	psadbw	%xmm0, %xmm1
	pshufd	$238, %xmm2, %xmm0              # xmm0 = xmm2[2,3,2,3]
	paddq	%xmm2, %xmm0
	movd	%xmm0, %ecx
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddq	%xmm1, %xmm0
	movd	%xmm0, %eax
	addl	%ecx, %eax
	retq
.Lfunc_end7:
	.size	x264_pixel_sad_8x4, .Lfunc_end7-x264_pixel_sad_8x4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_sad_4x8
	.type	x264_pixel_sad_4x8,@function
x264_pixel_sad_4x8:                     # @x264_pixel_sad_4x8
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	%ecx, %rax
	leaq	(%rdx,%rax), %rcx
	movd	(%rax,%rcx), %xmm0              # xmm0 = mem[0],zero,zero,zero
	addq	%rax, %rcx
	movd	(%rax,%rcx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	leaq	(%rcx,%rax), %rcx
	movd	(%rax,%rcx), %xmm2              # xmm2 = mem[0],zero,zero,zero
	leaq	(%rcx,%rax), %rcx
	movd	(%rax,%rcx), %xmm3              # xmm3 = mem[0],zero,zero,zero
	leaq	(%rcx,%rax), %rcx
	movd	(%rax,%rcx), %xmm4              # xmm4 = mem[0],zero,zero,zero
	leaq	(%rcx,%rax), %rcx
	movd	(%rax,%rcx), %xmm5              # xmm5 = mem[0],zero,zero,zero
	movd	(%rdx,%rax), %xmm6              # xmm6 = mem[0],zero,zero,zero
	movd	(%rdx), %xmm7                   # xmm7 = mem[0],zero,zero,zero
	movslq	%esi, %rax
	movd	(%rdi), %xmm8                   # xmm8 = mem[0],zero,zero,zero
	movd	(%rdi,%rax), %xmm9              # xmm9 = mem[0],zero,zero,zero
	leaq	(%rdi,%rax), %rcx
	movd	(%rax,%rcx), %xmm10             # xmm10 = mem[0],zero,zero,zero
	leaq	(%rcx,%rax), %rcx
	movd	(%rax,%rcx), %xmm11             # xmm11 = mem[0],zero,zero,zero
	leaq	(%rcx,%rax), %rcx
	movd	(%rax,%rcx), %xmm12             # xmm12 = mem[0],zero,zero,zero
	leaq	(%rcx,%rax), %rcx
	movd	(%rax,%rcx), %xmm13             # xmm13 = mem[0],zero,zero,zero
	addq	%rax, %rcx
	movd	(%rax,%rcx), %xmm14             # xmm14 = mem[0],zero,zero,zero
	addq	%rax, %rcx
	psadbw	%xmm7, %xmm8
	movd	(%rax,%rcx), %xmm7              # xmm7 = mem[0],zero,zero,zero
	movd	%xmm8, %eax
	psadbw	%xmm6, %xmm9
	movd	%xmm9, %ecx
	psadbw	%xmm0, %xmm10
	addl	%eax, %ecx
	movd	%xmm10, %eax
	psadbw	%xmm1, %xmm11
	addl	%ecx, %eax
	movd	%xmm11, %ecx
	psadbw	%xmm2, %xmm12
	addl	%eax, %ecx
	movd	%xmm12, %eax
	psadbw	%xmm3, %xmm13
	addl	%ecx, %eax
	movd	%xmm13, %ecx
	psadbw	%xmm4, %xmm14
	addl	%eax, %ecx
	movd	%xmm14, %edx
	addl	%ecx, %edx
	psadbw	%xmm5, %xmm7
	movd	%xmm7, %eax
	addl	%edx, %eax
	retq
.Lfunc_end8:
	.size	x264_pixel_sad_4x8, .Lfunc_end8-x264_pixel_sad_4x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_sad_4x4
	.type	x264_pixel_sad_4x4,@function
x264_pixel_sad_4x4:                     # @x264_pixel_sad_4x4
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	%esi, %rax
	movslq	%ecx, %rcx
	leaq	(%rdi,%rax), %rsi
	leaq	(%rdx,%rcx), %r8
	leaq	(%rsi,%rax), %r9
	movd	(%rdx), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movd	(%rdi), %xmm1                   # xmm1 = mem[0],zero,zero,zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	movd	(%rdx,%rcx), %xmm0              # xmm0 = mem[0],zero,zero,zero
	movd	(%rdi,%rax), %xmm1              # xmm1 = mem[0],zero,zero,zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%r10d, %edx
	movd	(%rcx,%r8), %xmm0               # xmm0 = mem[0],zero,zero,zero
	addq	%rcx, %r8
	movd	(%rax,%rsi), %xmm1              # xmm1 = mem[0],zero,zero,zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%edx, %esi
	movd	(%rcx,%r8), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movd	(%rax,%r9), %xmm1               # xmm1 = mem[0],zero,zero,zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %eax
	addl	%esi, %eax
	retq
.Lfunc_end9:
	.size	x264_pixel_sad_4x4, .Lfunc_end9-x264_pixel_sad_4x4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_sad_x3_16x16
	.type	x264_pixel_sad_x3_16x16,@function
x264_pixel_sad_x3_16x16:                # @x264_pixel_sad_x3_16x16
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
	movq	%r9, %rbx
	movl	%r8d, %ebp
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rdx
	movq	%rdi, %r12
	movl	$16, %esi
	movl	%r8d, %ecx
	callq	x264_pixel_sad_16x16
	movl	%eax, (%rbx)
	movq	%r12, %rdi
	movl	$16, %esi
	movq	%r15, %rdx
	movl	%ebp, %ecx
	callq	x264_pixel_sad_16x16
	movl	%eax, 4(%rbx)
	movq	%r12, %rdi
	movl	$16, %esi
	movq	%r14, %rdx
	movl	%ebp, %ecx
	callq	x264_pixel_sad_16x16
	movl	%eax, 8(%rbx)
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
.Lfunc_end10:
	.size	x264_pixel_sad_x3_16x16, .Lfunc_end10-x264_pixel_sad_x3_16x16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_sad_x3_16x8
	.type	x264_pixel_sad_x3_16x8,@function
x264_pixel_sad_x3_16x8:                 # @x264_pixel_sad_x3_16x8
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
	movq	%r9, %rbx
	movl	%r8d, %ebp
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rdx
	movq	%rdi, %r12
	movl	$16, %esi
	movl	%r8d, %ecx
	callq	x264_pixel_sad_16x8
	movl	%eax, (%rbx)
	movq	%r12, %rdi
	movl	$16, %esi
	movq	%r15, %rdx
	movl	%ebp, %ecx
	callq	x264_pixel_sad_16x8
	movl	%eax, 4(%rbx)
	movq	%r12, %rdi
	movl	$16, %esi
	movq	%r14, %rdx
	movl	%ebp, %ecx
	callq	x264_pixel_sad_16x8
	movl	%eax, 8(%rbx)
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
	.size	x264_pixel_sad_x3_16x8, .Lfunc_end11-x264_pixel_sad_x3_16x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_sad_x3_8x16
	.type	x264_pixel_sad_x3_8x16,@function
x264_pixel_sad_x3_8x16:                 # @x264_pixel_sad_x3_8x16
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	%r8d, %rax
	movq	(%rdi), %xmm0                   # xmm0 = mem[0],zero
	movq	(%rsi), %xmm1                   # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	movq	16(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rsi,%rax), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%r8d, %r10d
	movq	32(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rsi), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%r10d, %r8d
	movq	48(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rsi), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%r8d, %r10d
	movq	64(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rsi), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%r10d, %r8d
	movq	80(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rsi), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%r8d, %r10d
	movq	96(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rsi), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%r10d, %r8d
	movq	112(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rsi), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%r8d, %r10d
	movq	128(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rsi), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%r10d, %r8d
	movq	144(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rsi), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%r8d, %r10d
	movq	160(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rsi), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%r10d, %r8d
	movq	176(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rsi), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%r8d, %r10d
	movq	192(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rsi), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%r10d, %r8d
	movq	208(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rsi), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%r8d, %r10d
	movq	224(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rsi), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%r10d, %r8d
	movq	240(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rsi), %xmm1              # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r8d, %esi
	movl	%esi, (%r9)
	movq	(%rdi), %xmm0                   # xmm0 = mem[0],zero
	movq	(%rdx), %xmm1                   # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	movq	16(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rdx,%rax), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%esi, %r8d
	movq	32(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r8d, %esi
	movq	48(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%esi, %r8d
	movq	64(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r8d, %esi
	movq	80(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%esi, %r8d
	movq	96(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r8d, %esi
	movq	112(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%esi, %r8d
	movq	128(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r8d, %esi
	movq	144(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%esi, %r8d
	movq	160(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r8d, %esi
	movq	176(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%esi, %r8d
	movq	192(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r8d, %esi
	movq	208(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%esi, %r8d
	movq	224(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r8d, %esi
	movq	240(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%esi, %edx
	movl	%edx, 4(%r9)
	movq	(%rdi), %xmm0                   # xmm0 = mem[0],zero
	movq	(%rcx), %xmm1                   # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	movq	16(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rcx,%rax), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%edx, %esi
	movq	32(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rcx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%esi, %edx
	movq	48(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rcx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%edx, %esi
	movq	64(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rcx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%esi, %edx
	movq	80(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rcx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%edx, %esi
	movq	96(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rcx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%esi, %edx
	movq	112(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rcx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%edx, %esi
	movq	128(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rcx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%esi, %edx
	movq	144(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rcx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%edx, %esi
	movq	160(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rcx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%esi, %edx
	movq	176(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rcx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%edx, %esi
	movq	192(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rcx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%esi, %edx
	movq	208(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rcx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%edx, %esi
	movq	224(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rcx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%esi, %edx
	movq	240(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rcx), %xmm1              # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %eax
	addl	%edx, %eax
	movl	%eax, 8(%r9)
	retq
.Lfunc_end12:
	.size	x264_pixel_sad_x3_8x16, .Lfunc_end12-x264_pixel_sad_x3_8x16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_sad_x3_8x8
	.type	x264_pixel_sad_x3_8x8,@function
x264_pixel_sad_x3_8x8:                  # @x264_pixel_sad_x3_8x8
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	%r8d, %rax
	movq	(%rdi), %xmm0                   # xmm0 = mem[0],zero
	movq	(%rsi), %xmm1                   # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	movq	16(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rsi,%rax), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%r8d, %r10d
	movq	32(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rsi), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%r10d, %r8d
	movq	48(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rsi), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%r8d, %r10d
	movq	64(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rsi), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%r10d, %r8d
	movq	80(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rsi), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%r8d, %r10d
	movq	96(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rsi), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%r10d, %r8d
	movq	112(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rsi), %xmm1              # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r8d, %esi
	movl	%esi, (%r9)
	movq	(%rdi), %xmm0                   # xmm0 = mem[0],zero
	movq	(%rdx), %xmm1                   # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	movq	16(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rdx,%rax), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%esi, %r8d
	movq	32(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r8d, %esi
	movq	48(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%esi, %r8d
	movq	64(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r8d, %esi
	movq	80(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r8d
	addl	%esi, %r8d
	movq	96(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r8d, %esi
	movq	112(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rdx), %xmm1              # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%esi, %edx
	movl	%edx, 4(%r9)
	movq	(%rdi), %xmm0                   # xmm0 = mem[0],zero
	movq	(%rcx), %xmm1                   # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	movq	16(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rcx,%rax), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%edx, %esi
	movq	32(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rcx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%esi, %edx
	movq	48(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rcx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%edx, %esi
	movq	64(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rcx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%esi, %edx
	movq	80(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rcx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%edx, %esi
	movq	96(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rax,%rcx), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%esi, %edx
	movq	112(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%rax,%rcx), %xmm1              # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %eax
	addl	%edx, %eax
	movl	%eax, 8(%r9)
	retq
.Lfunc_end13:
	.size	x264_pixel_sad_x3_8x8, .Lfunc_end13-x264_pixel_sad_x3_8x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_sad_x3_8x4
	.type	x264_pixel_sad_x3_8x4,@function
x264_pixel_sad_x3_8x4:                  # @x264_pixel_sad_x3_8x4
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
	movq	%r9, %rbx
	movl	%r8d, %ebp
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rdx
	movq	%rdi, %r12
	movl	$16, %esi
	movl	%r8d, %ecx
	callq	x264_pixel_sad_8x4
	movl	%eax, (%rbx)
	movq	%r12, %rdi
	movl	$16, %esi
	movq	%r15, %rdx
	movl	%ebp, %ecx
	callq	x264_pixel_sad_8x4
	movl	%eax, 4(%rbx)
	movq	%r12, %rdi
	movl	$16, %esi
	movq	%r14, %rdx
	movl	%ebp, %ecx
	callq	x264_pixel_sad_8x4
	movl	%eax, 8(%rbx)
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
.Lfunc_end14:
	.size	x264_pixel_sad_x3_8x4, .Lfunc_end14-x264_pixel_sad_x3_8x4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_sad_x3_4x8
	.type	x264_pixel_sad_x3_4x8,@function
x264_pixel_sad_x3_4x8:                  # @x264_pixel_sad_x3_4x8
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
	movq	%r9, %rbx
	movl	%r8d, %ebp
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rdx
	movq	%rdi, %r12
	movl	$16, %esi
	movl	%r8d, %ecx
	callq	x264_pixel_sad_4x8
	movl	%eax, (%rbx)
	movq	%r12, %rdi
	movl	$16, %esi
	movq	%r15, %rdx
	movl	%ebp, %ecx
	callq	x264_pixel_sad_4x8
	movl	%eax, 4(%rbx)
	movq	%r12, %rdi
	movl	$16, %esi
	movq	%r14, %rdx
	movl	%ebp, %ecx
	callq	x264_pixel_sad_4x8
	movl	%eax, 8(%rbx)
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
.Lfunc_end15:
	.size	x264_pixel_sad_x3_4x8, .Lfunc_end15-x264_pixel_sad_x3_4x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_sad_x3_4x4
	.type	x264_pixel_sad_x3_4x4,@function
x264_pixel_sad_x3_4x4:                  # @x264_pixel_sad_x3_4x4
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movslq	%r8d, %rax
	movzbl	(%rdi), %r8d
	movzbl	(%rsi), %r10d
	subl	%r10d, %r8d
	movl	%r8d, %r10d
	negl	%r10d
	cmovsl	%r8d, %r10d
	movzbl	%r10b, %r8d
	movzbl	1(%rdi), %r10d
	movzbl	1(%rsi), %r11d
	subl	%r11d, %r10d
	movl	%r10d, %r11d
	negl	%r11d
	cmovsl	%r10d, %r11d
	movzbl	%r11b, %r10d
	addl	%r8d, %r10d
	movzbl	2(%rdi), %r8d
	movzbl	2(%rsi), %r11d
	subl	%r11d, %r8d
	movl	%r8d, %r11d
	negl	%r11d
	cmovsl	%r8d, %r11d
	movzbl	%r11b, %r8d
	movzbl	3(%rdi), %r11d
	movzbl	3(%rsi), %ebx
	subl	%ebx, %r11d
	movl	%r11d, %ebx
	negl	%ebx
	cmovsl	%r11d, %ebx
	movzbl	%bl, %r11d
	addl	%r8d, %r11d
	addl	%r10d, %r11d
	movzbl	16(%rdi), %r8d
	movzbl	(%rsi,%rax), %r10d
	subl	%r10d, %r8d
	movl	%r8d, %r10d
	negl	%r10d
	cmovsl	%r8d, %r10d
	movzbl	%r10b, %r8d
	movzbl	17(%rdi), %r10d
	movzbl	1(%rsi,%rax), %ebx
	subl	%ebx, %r10d
	movl	%r10d, %ebx
	negl	%ebx
	cmovsl	%r10d, %ebx
	movzbl	%bl, %r10d
	addl	%r8d, %r10d
	addl	%r11d, %r10d
	movzbl	18(%rdi), %r8d
	movzbl	2(%rsi,%rax), %r11d
	subl	%r11d, %r8d
	movl	%r8d, %r11d
	negl	%r11d
	cmovsl	%r8d, %r11d
	leaq	(%rsi,%rax), %r8
	movzbl	19(%rdi), %ebx
	movzbl	3(%rsi,%rax), %esi
	subl	%esi, %ebx
	movl	%ebx, %esi
	negl	%esi
	cmovsl	%ebx, %esi
	movzbl	%r11b, %r11d
	movzbl	%sil, %esi
	addl	%r11d, %esi
	movzbl	32(%rdi), %r11d
	movzbl	(%rax,%r8), %ebx
	subl	%ebx, %r11d
	movl	%r11d, %ebx
	negl	%ebx
	cmovsl	%r11d, %ebx
	movzbl	%bl, %r11d
	addl	%esi, %r11d
	addl	%r10d, %r11d
	movzbl	33(%rdi), %esi
	movzbl	1(%rax,%r8), %r10d
	subl	%r10d, %esi
	movl	%esi, %r10d
	negl	%r10d
	cmovsl	%esi, %r10d
	leaq	(%r8,%rax), %rsi
	movzbl	34(%rdi), %ebx
	movzbl	2(%rax,%r8), %ebp
	subl	%ebp, %ebx
	movl	%ebx, %ebp
	negl	%ebp
	cmovsl	%ebx, %ebp
	movzbl	%r10b, %r10d
	movzbl	%bpl, %ebx
	addl	%r10d, %ebx
	movzbl	35(%rdi), %r10d
	movzbl	3(%rax,%r8), %r8d
	subl	%r8d, %r10d
	movl	%r10d, %r8d
	negl	%r8d
	cmovsl	%r10d, %r8d
	movzbl	%r8b, %r8d
	addl	%ebx, %r8d
	addl	%r11d, %r8d
	movzbl	48(%rdi), %r10d
	movzbl	(%rax,%rsi), %r11d
	subl	%r11d, %r10d
	movl	%r10d, %r11d
	negl	%r11d
	cmovsl	%r10d, %r11d
	movzbl	49(%rdi), %r10d
	movzbl	1(%rax,%rsi), %ebx
	subl	%ebx, %r10d
	movl	%r10d, %ebx
	negl	%ebx
	cmovsl	%r10d, %ebx
	movzbl	%r11b, %r10d
	movzbl	%bl, %r11d
	addl	%r10d, %r11d
	movzbl	50(%rdi), %r10d
	movzbl	2(%rax,%rsi), %ebx
	subl	%ebx, %r10d
	movl	%r10d, %ebx
	negl	%ebx
	cmovsl	%r10d, %ebx
	movzbl	%bl, %r10d
	addl	%r11d, %r10d
	addl	%r8d, %r10d
	movzbl	51(%rdi), %r8d
	movzbl	3(%rax,%rsi), %esi
	subl	%esi, %r8d
	movl	%r8d, %esi
	negl	%esi
	cmovsl	%r8d, %esi
	movzbl	%sil, %esi
	addl	%r10d, %esi
	movl	%esi, (%r9)
	movzbl	(%rdi), %esi
	movzbl	(%rdx), %r8d
	subl	%r8d, %esi
	movl	%esi, %r8d
	negl	%r8d
	cmovsl	%esi, %r8d
	movzbl	%r8b, %esi
	movzbl	1(%rdi), %r8d
	movzbl	1(%rdx), %r10d
	subl	%r10d, %r8d
	movl	%r8d, %r10d
	negl	%r10d
	cmovsl	%r8d, %r10d
	movzbl	%r10b, %r8d
	addl	%esi, %r8d
	movzbl	2(%rdi), %esi
	movzbl	2(%rdx), %r10d
	subl	%r10d, %esi
	movl	%esi, %r10d
	negl	%r10d
	cmovsl	%esi, %r10d
	movzbl	%r10b, %esi
	movzbl	3(%rdi), %r10d
	movzbl	3(%rdx), %r11d
	subl	%r11d, %r10d
	movl	%r10d, %r11d
	negl	%r11d
	cmovsl	%r10d, %r11d
	movzbl	%r11b, %r10d
	addl	%esi, %r10d
	addl	%r8d, %r10d
	movzbl	16(%rdi), %esi
	movzbl	(%rdx,%rax), %r8d
	subl	%r8d, %esi
	movl	%esi, %r8d
	negl	%r8d
	cmovsl	%esi, %r8d
	movzbl	%r8b, %esi
	movzbl	17(%rdi), %r8d
	movzbl	1(%rdx,%rax), %r11d
	subl	%r11d, %r8d
	movl	%r8d, %r11d
	negl	%r11d
	cmovsl	%r8d, %r11d
	movzbl	%r11b, %r8d
	addl	%esi, %r8d
	addl	%r10d, %r8d
	movzbl	18(%rdi), %esi
	movzbl	2(%rdx,%rax), %r10d
	subl	%r10d, %esi
	movl	%esi, %r10d
	negl	%r10d
	cmovsl	%esi, %r10d
	leaq	(%rdx,%rax), %rsi
	movzbl	19(%rdi), %r11d
	movzbl	3(%rdx,%rax), %edx
	subl	%edx, %r11d
	movl	%r11d, %edx
	negl	%edx
	cmovsl	%r11d, %edx
	movzbl	%r10b, %r10d
	movzbl	%dl, %edx
	addl	%r10d, %edx
	movzbl	32(%rdi), %r10d
	movzbl	(%rax,%rsi), %r11d
	subl	%r11d, %r10d
	movl	%r10d, %r11d
	negl	%r11d
	cmovsl	%r10d, %r11d
	movzbl	%r11b, %r10d
	addl	%edx, %r10d
	addl	%r8d, %r10d
	movzbl	33(%rdi), %edx
	movzbl	1(%rax,%rsi), %r8d
	subl	%r8d, %edx
	movl	%edx, %r8d
	negl	%r8d
	cmovsl	%edx, %r8d
	leaq	(%rsi,%rax), %rdx
	movzbl	34(%rdi), %r11d
	movzbl	2(%rax,%rsi), %ebx
	subl	%ebx, %r11d
	movl	%r11d, %ebx
	negl	%ebx
	cmovsl	%r11d, %ebx
	movzbl	%r8b, %r8d
	movzbl	%bl, %r11d
	addl	%r8d, %r11d
	movzbl	35(%rdi), %r8d
	movzbl	3(%rax,%rsi), %esi
	subl	%esi, %r8d
	movl	%r8d, %esi
	negl	%esi
	cmovsl	%r8d, %esi
	movzbl	%sil, %esi
	addl	%r11d, %esi
	addl	%r10d, %esi
	movzbl	48(%rdi), %r8d
	movzbl	(%rax,%rdx), %r10d
	subl	%r10d, %r8d
	movl	%r8d, %r10d
	negl	%r10d
	cmovsl	%r8d, %r10d
	movzbl	49(%rdi), %r8d
	movzbl	1(%rax,%rdx), %r11d
	subl	%r11d, %r8d
	movl	%r8d, %r11d
	negl	%r11d
	cmovsl	%r8d, %r11d
	movzbl	%r10b, %r8d
	movzbl	%r11b, %r10d
	addl	%r8d, %r10d
	movzbl	50(%rdi), %r8d
	movzbl	2(%rax,%rdx), %r11d
	subl	%r11d, %r8d
	movl	%r8d, %r11d
	negl	%r11d
	cmovsl	%r8d, %r11d
	movzbl	%r11b, %r8d
	addl	%r10d, %r8d
	addl	%esi, %r8d
	movzbl	51(%rdi), %esi
	movzbl	3(%rax,%rdx), %edx
	subl	%edx, %esi
	movl	%esi, %edx
	negl	%edx
	cmovsl	%esi, %edx
	movzbl	%dl, %edx
	addl	%r8d, %edx
	movl	%edx, 4(%r9)
	movzbl	(%rdi), %edx
	movzbl	(%rcx), %esi
	subl	%esi, %edx
	movl	%edx, %esi
	negl	%esi
	cmovsl	%edx, %esi
	movzbl	%sil, %edx
	movzbl	1(%rdi), %esi
	movzbl	1(%rcx), %r8d
	subl	%r8d, %esi
	movl	%esi, %r8d
	negl	%r8d
	cmovsl	%esi, %r8d
	movzbl	%r8b, %esi
	addl	%edx, %esi
	movzbl	2(%rdi), %edx
	movzbl	2(%rcx), %r8d
	subl	%r8d, %edx
	movl	%edx, %r8d
	negl	%r8d
	cmovsl	%edx, %r8d
	movzbl	%r8b, %edx
	movzbl	3(%rdi), %r8d
	movzbl	3(%rcx), %r10d
	subl	%r10d, %r8d
	movl	%r8d, %r10d
	negl	%r10d
	cmovsl	%r8d, %r10d
	movzbl	%r10b, %r8d
	addl	%edx, %r8d
	addl	%esi, %r8d
	movzbl	16(%rdi), %edx
	movzbl	(%rcx,%rax), %esi
	subl	%esi, %edx
	movl	%edx, %esi
	negl	%esi
	cmovsl	%edx, %esi
	movzbl	%sil, %edx
	movzbl	17(%rdi), %esi
	movzbl	1(%rcx,%rax), %r10d
	subl	%r10d, %esi
	movl	%esi, %r10d
	negl	%r10d
	cmovsl	%esi, %r10d
	movzbl	%r10b, %esi
	addl	%edx, %esi
	addl	%r8d, %esi
	movzbl	18(%rdi), %edx
	movzbl	2(%rcx,%rax), %r8d
	subl	%r8d, %edx
	movl	%edx, %r8d
	negl	%r8d
	cmovsl	%edx, %r8d
	leaq	(%rcx,%rax), %rdx
	movzbl	19(%rdi), %r10d
	movzbl	3(%rcx,%rax), %ecx
	subl	%ecx, %r10d
	movl	%r10d, %ecx
	negl	%ecx
	cmovsl	%r10d, %ecx
	movzbl	%r8b, %r8d
	movzbl	%cl, %ecx
	addl	%r8d, %ecx
	movzbl	32(%rdi), %r8d
	movzbl	(%rax,%rdx), %r10d
	subl	%r10d, %r8d
	movl	%r8d, %r10d
	negl	%r10d
	cmovsl	%r8d, %r10d
	movzbl	%r10b, %r8d
	addl	%ecx, %r8d
	addl	%esi, %r8d
	movzbl	33(%rdi), %ecx
	movzbl	1(%rax,%rdx), %esi
	subl	%esi, %ecx
	movl	%ecx, %esi
	negl	%esi
	cmovsl	%ecx, %esi
	leaq	(%rdx,%rax), %rcx
	movzbl	34(%rdi), %r10d
	movzbl	2(%rax,%rdx), %r11d
	subl	%r11d, %r10d
	movl	%r10d, %r11d
	negl	%r11d
	cmovsl	%r10d, %r11d
	movzbl	%sil, %esi
	movzbl	%r11b, %r10d
	addl	%esi, %r10d
	movzbl	35(%rdi), %esi
	movzbl	3(%rax,%rdx), %edx
	subl	%edx, %esi
	movl	%esi, %edx
	negl	%edx
	cmovsl	%esi, %edx
	movzbl	%dl, %edx
	addl	%r10d, %edx
	addl	%r8d, %edx
	movzbl	48(%rdi), %esi
	movzbl	(%rax,%rcx), %r8d
	subl	%r8d, %esi
	movl	%esi, %r8d
	negl	%r8d
	cmovsl	%esi, %r8d
	movzbl	49(%rdi), %esi
	movzbl	1(%rax,%rcx), %r10d
	subl	%r10d, %esi
	movl	%esi, %r10d
	negl	%r10d
	cmovsl	%esi, %r10d
	movzbl	%r8b, %esi
	movzbl	%r10b, %r8d
	addl	%esi, %r8d
	movzbl	50(%rdi), %esi
	movzbl	2(%rax,%rcx), %r10d
	subl	%r10d, %esi
	movl	%esi, %r10d
	negl	%r10d
	cmovsl	%esi, %r10d
	movzbl	%r10b, %esi
	addl	%r8d, %esi
	addl	%edx, %esi
	movzbl	51(%rdi), %edx
	movzbl	3(%rax,%rcx), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	negl	%eax
	cmovsl	%edx, %eax
	movzbl	%al, %eax
	addl	%esi, %eax
	movl	%eax, 8(%r9)
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end16:
	.size	x264_pixel_sad_x3_4x4, .Lfunc_end16-x264_pixel_sad_x3_4x4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_sad_x4_16x16
	.type	x264_pixel_sad_x4_16x16,@function
x264_pixel_sad_x4_16x16:                # @x264_pixel_sad_x4_16x16
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
	movl	%r9d, %ebx
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %rdx
	movq	%rdi, %r13
	movq	64(%rsp), %rbp
	movl	$16, %esi
	movl	%r9d, %ecx
	callq	x264_pixel_sad_16x16
	movl	%eax, (%rbp)
	movq	%r13, %rdi
	movl	$16, %esi
	movq	%r12, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_sad_16x16
	movl	%eax, 4(%rbp)
	movq	%r13, %rdi
	movl	$16, %esi
	movq	%r15, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_sad_16x16
	movl	%eax, 8(%rbp)
	movq	%r13, %rdi
	movl	$16, %esi
	movq	%r14, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_sad_16x16
	movl	%eax, 12(%rbp)
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
.Lfunc_end17:
	.size	x264_pixel_sad_x4_16x16, .Lfunc_end17-x264_pixel_sad_x4_16x16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_sad_x4_16x8
	.type	x264_pixel_sad_x4_16x8,@function
x264_pixel_sad_x4_16x8:                 # @x264_pixel_sad_x4_16x8
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
	movl	%r9d, %ebx
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %rdx
	movq	%rdi, %r13
	movq	64(%rsp), %rbp
	movl	$16, %esi
	movl	%r9d, %ecx
	callq	x264_pixel_sad_16x8
	movl	%eax, (%rbp)
	movq	%r13, %rdi
	movl	$16, %esi
	movq	%r12, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_sad_16x8
	movl	%eax, 4(%rbp)
	movq	%r13, %rdi
	movl	$16, %esi
	movq	%r15, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_sad_16x8
	movl	%eax, 8(%rbp)
	movq	%r13, %rdi
	movl	$16, %esi
	movq	%r14, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_sad_16x8
	movl	%eax, 12(%rbp)
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
	.size	x264_pixel_sad_x4_16x8, .Lfunc_end18-x264_pixel_sad_x4_16x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_sad_x4_8x16
	.type	x264_pixel_sad_x4_8x16,@function
x264_pixel_sad_x4_8x16:                 # @x264_pixel_sad_x4_8x16
	.cfi_startproc
# %bb.0:                                # %entry
	movq	8(%rsp), %rax
	movslq	%r9d, %r9
	movq	(%rdi), %xmm0                   # xmm0 = mem[0],zero
	movq	(%rsi), %xmm1                   # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	movq	16(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rsi,%r9), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r11d
	addl	%r10d, %r11d
	movq	32(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rsi), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%r11d, %r10d
	movq	48(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rsi), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r11d
	addl	%r10d, %r11d
	movq	64(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rsi), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%r11d, %r10d
	movq	80(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rsi), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r11d
	addl	%r10d, %r11d
	movq	96(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rsi), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%r11d, %r10d
	movq	112(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rsi), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r11d
	addl	%r10d, %r11d
	movq	128(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rsi), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%r11d, %r10d
	movq	144(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rsi), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r11d
	addl	%r10d, %r11d
	movq	160(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rsi), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%r11d, %r10d
	movq	176(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rsi), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r11d
	addl	%r10d, %r11d
	movq	192(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rsi), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%r11d, %r10d
	movq	208(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rsi), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r11d
	addl	%r10d, %r11d
	movq	224(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rsi), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%r11d, %r10d
	movq	240(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rsi), %xmm1               # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r10d, %esi
	movl	%esi, (%rax)
	movq	(%rdi), %xmm0                   # xmm0 = mem[0],zero
	movq	(%rdx), %xmm1                   # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	movq	16(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rdx,%r9), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%esi, %r10d
	movq	32(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rdx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r10d, %esi
	movq	48(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rdx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%esi, %r10d
	movq	64(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rdx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r10d, %esi
	movq	80(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rdx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%esi, %r10d
	movq	96(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rdx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r10d, %esi
	movq	112(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rdx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%esi, %r10d
	movq	128(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rdx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r10d, %esi
	movq	144(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rdx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%esi, %r10d
	movq	160(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rdx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r10d, %esi
	movq	176(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rdx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%esi, %r10d
	movq	192(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rdx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r10d, %esi
	movq	208(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rdx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%esi, %r10d
	movq	224(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rdx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r10d, %esi
	movq	240(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rdx), %xmm1               # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%esi, %edx
	movl	%edx, 4(%rax)
	movq	(%rdi), %xmm0                   # xmm0 = mem[0],zero
	movq	(%rcx), %xmm1                   # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	movq	16(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rcx,%r9), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%edx, %esi
	movq	32(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rcx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%esi, %edx
	movq	48(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rcx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%edx, %esi
	movq	64(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rcx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%esi, %edx
	movq	80(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rcx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%edx, %esi
	movq	96(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rcx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%esi, %edx
	movq	112(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rcx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%edx, %esi
	movq	128(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rcx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%esi, %edx
	movq	144(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rcx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%edx, %esi
	movq	160(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rcx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%esi, %edx
	movq	176(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rcx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%edx, %esi
	movq	192(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rcx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%esi, %edx
	movq	208(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rcx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%edx, %esi
	movq	224(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rcx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%esi, %edx
	movq	240(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rcx), %xmm1               # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %ecx
	addl	%edx, %ecx
	movl	%ecx, 8(%rax)
	movq	(%rdi), %xmm0                   # xmm0 = mem[0],zero
	movq	(%r8), %xmm1                    # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %ecx
	movq	16(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r8,%r9), %xmm1                # xmm1 = mem[0],zero
	addq	%r9, %r8
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%ecx, %edx
	movq	32(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%r8), %xmm1                # xmm1 = mem[0],zero
	addq	%r9, %r8
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %ecx
	addl	%edx, %ecx
	movq	48(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%r8), %xmm1                # xmm1 = mem[0],zero
	addq	%r9, %r8
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%ecx, %edx
	movq	64(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%r8), %xmm1                # xmm1 = mem[0],zero
	addq	%r9, %r8
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %ecx
	addl	%edx, %ecx
	movq	80(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%r8), %xmm1                # xmm1 = mem[0],zero
	addq	%r9, %r8
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%ecx, %edx
	movq	96(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%r8), %xmm1                # xmm1 = mem[0],zero
	addq	%r9, %r8
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %ecx
	addl	%edx, %ecx
	movq	112(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%r8), %xmm1                # xmm1 = mem[0],zero
	addq	%r9, %r8
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%ecx, %edx
	movq	128(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%r8), %xmm1                # xmm1 = mem[0],zero
	addq	%r9, %r8
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %ecx
	addl	%edx, %ecx
	movq	144(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%r8), %xmm1                # xmm1 = mem[0],zero
	addq	%r9, %r8
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%ecx, %edx
	movq	160(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%r8), %xmm1                # xmm1 = mem[0],zero
	addq	%r9, %r8
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %ecx
	addl	%edx, %ecx
	movq	176(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%r8), %xmm1                # xmm1 = mem[0],zero
	addq	%r9, %r8
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%ecx, %edx
	movq	192(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%r8), %xmm1                # xmm1 = mem[0],zero
	addq	%r9, %r8
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %ecx
	addl	%edx, %ecx
	movq	208(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%r8), %xmm1                # xmm1 = mem[0],zero
	addq	%r9, %r8
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%ecx, %edx
	movq	224(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%r8), %xmm1                # xmm1 = mem[0],zero
	addq	%r9, %r8
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %ecx
	addl	%edx, %ecx
	movq	240(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%r8), %xmm1                # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%ecx, %edx
	movl	%edx, 12(%rax)
	retq
.Lfunc_end19:
	.size	x264_pixel_sad_x4_8x16, .Lfunc_end19-x264_pixel_sad_x4_8x16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_sad_x4_8x8
	.type	x264_pixel_sad_x4_8x8,@function
x264_pixel_sad_x4_8x8:                  # @x264_pixel_sad_x4_8x8
	.cfi_startproc
# %bb.0:                                # %entry
	movq	8(%rsp), %rax
	movslq	%r9d, %r9
	movq	(%rdi), %xmm0                   # xmm0 = mem[0],zero
	movq	(%rsi), %xmm1                   # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	movq	16(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rsi,%r9), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r11d
	addl	%r10d, %r11d
	movq	32(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rsi), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%r11d, %r10d
	movq	48(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rsi), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r11d
	addl	%r10d, %r11d
	movq	64(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rsi), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%r11d, %r10d
	movq	80(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rsi), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r11d
	addl	%r10d, %r11d
	movq	96(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rsi), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rsi
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%r11d, %r10d
	movq	112(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rsi), %xmm1               # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r10d, %esi
	movl	%esi, (%rax)
	movq	(%rdi), %xmm0                   # xmm0 = mem[0],zero
	movq	(%rdx), %xmm1                   # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	movq	16(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rdx,%r9), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%esi, %r10d
	movq	32(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rdx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r10d, %esi
	movq	48(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rdx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%esi, %r10d
	movq	64(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rdx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r10d, %esi
	movq	80(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rdx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %r10d
	addl	%esi, %r10d
	movq	96(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rdx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rdx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%r10d, %esi
	movq	112(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rdx), %xmm1               # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%esi, %edx
	movl	%edx, 4(%rax)
	movq	(%rdi), %xmm0                   # xmm0 = mem[0],zero
	movq	(%rcx), %xmm1                   # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	movq	16(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rcx,%r9), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%edx, %esi
	movq	32(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rcx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%esi, %edx
	movq	48(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rcx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%edx, %esi
	movq	64(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rcx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%esi, %edx
	movq	80(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rcx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %esi
	addl	%edx, %esi
	movq	96(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%rcx), %xmm1               # xmm1 = mem[0],zero
	addq	%r9, %rcx
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%esi, %edx
	movq	112(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%rcx), %xmm1               # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %ecx
	addl	%edx, %ecx
	movl	%ecx, 8(%rax)
	movq	(%rdi), %xmm0                   # xmm0 = mem[0],zero
	movq	(%r8), %xmm1                    # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %ecx
	movq	16(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r8,%r9), %xmm1                # xmm1 = mem[0],zero
	addq	%r9, %r8
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%ecx, %edx
	movq	32(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%r8), %xmm1                # xmm1 = mem[0],zero
	addq	%r9, %r8
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %ecx
	addl	%edx, %ecx
	movq	48(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%r8), %xmm1                # xmm1 = mem[0],zero
	addq	%r9, %r8
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%ecx, %edx
	movq	64(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%r8), %xmm1                # xmm1 = mem[0],zero
	addq	%r9, %r8
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %ecx
	addl	%edx, %ecx
	movq	80(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%r8), %xmm1                # xmm1 = mem[0],zero
	addq	%r9, %r8
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%ecx, %edx
	movq	96(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%r9,%r8), %xmm1                # xmm1 = mem[0],zero
	addq	%r9, %r8
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %ecx
	addl	%edx, %ecx
	movq	112(%rdi), %xmm0                # xmm0 = mem[0],zero
	movq	(%r9,%r8), %xmm1                # xmm1 = mem[0],zero
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%ecx, %edx
	movl	%edx, 12(%rax)
	retq
.Lfunc_end20:
	.size	x264_pixel_sad_x4_8x8, .Lfunc_end20-x264_pixel_sad_x4_8x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_sad_x4_8x4
	.type	x264_pixel_sad_x4_8x4,@function
x264_pixel_sad_x4_8x4:                  # @x264_pixel_sad_x4_8x4
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
	movl	%r9d, %ebx
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %rdx
	movq	%rdi, %r13
	movq	64(%rsp), %rbp
	movl	$16, %esi
	movl	%r9d, %ecx
	callq	x264_pixel_sad_8x4
	movl	%eax, (%rbp)
	movq	%r13, %rdi
	movl	$16, %esi
	movq	%r12, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_sad_8x4
	movl	%eax, 4(%rbp)
	movq	%r13, %rdi
	movl	$16, %esi
	movq	%r15, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_sad_8x4
	movl	%eax, 8(%rbp)
	movq	%r13, %rdi
	movl	$16, %esi
	movq	%r14, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_sad_8x4
	movl	%eax, 12(%rbp)
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
.Lfunc_end21:
	.size	x264_pixel_sad_x4_8x4, .Lfunc_end21-x264_pixel_sad_x4_8x4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_sad_x4_4x8
	.type	x264_pixel_sad_x4_4x8,@function
x264_pixel_sad_x4_4x8:                  # @x264_pixel_sad_x4_4x8
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
	movl	%r9d, %ebx
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %rdx
	movq	%rdi, %r13
	movq	64(%rsp), %rbp
	movl	$16, %esi
	movl	%r9d, %ecx
	callq	x264_pixel_sad_4x8
	movl	%eax, (%rbp)
	movq	%r13, %rdi
	movl	$16, %esi
	movq	%r12, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_sad_4x8
	movl	%eax, 4(%rbp)
	movq	%r13, %rdi
	movl	$16, %esi
	movq	%r15, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_sad_4x8
	movl	%eax, 8(%rbp)
	movq	%r13, %rdi
	movl	$16, %esi
	movq	%r14, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_sad_4x8
	movl	%eax, 12(%rbp)
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
.Lfunc_end22:
	.size	x264_pixel_sad_x4_4x8, .Lfunc_end22-x264_pixel_sad_x4_4x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_sad_x4_4x4
	.type	x264_pixel_sad_x4_4x4,@function
x264_pixel_sad_x4_4x4:                  # @x264_pixel_sad_x4_4x4
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movslq	%r9d, %rax
	movzbl	(%rdi), %r9d
	movzbl	(%rsi), %r10d
	subl	%r10d, %r9d
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
	movzbl	%r10b, %r9d
	movzbl	1(%rdi), %r10d
	movzbl	1(%rsi), %r11d
	subl	%r11d, %r10d
	movl	%r10d, %r11d
	negl	%r11d
	cmovsl	%r10d, %r11d
	movzbl	%r11b, %r10d
	addl	%r9d, %r10d
	movzbl	2(%rdi), %r9d
	movzbl	2(%rsi), %r11d
	subl	%r11d, %r9d
	movl	%r9d, %r11d
	negl	%r11d
	cmovsl	%r9d, %r11d
	movzbl	%r11b, %r9d
	movzbl	3(%rdi), %r11d
	movzbl	3(%rsi), %ebx
	subl	%ebx, %r11d
	movl	%r11d, %ebx
	negl	%ebx
	cmovsl	%r11d, %ebx
	movzbl	%bl, %r11d
	addl	%r9d, %r11d
	addl	%r10d, %r11d
	movzbl	16(%rdi), %r9d
	movzbl	(%rsi,%rax), %r10d
	subl	%r10d, %r9d
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
	movzbl	%r10b, %r9d
	movzbl	17(%rdi), %r10d
	movzbl	1(%rsi,%rax), %ebx
	subl	%ebx, %r10d
	movl	%r10d, %ebx
	negl	%ebx
	cmovsl	%r10d, %ebx
	movzbl	%bl, %r10d
	addl	%r9d, %r10d
	addl	%r11d, %r10d
	movzbl	18(%rdi), %r9d
	movzbl	2(%rsi,%rax), %r11d
	subl	%r11d, %r9d
	movl	%r9d, %r11d
	negl	%r11d
	cmovsl	%r9d, %r11d
	leaq	(%rsi,%rax), %r9
	movzbl	19(%rdi), %ebx
	movzbl	3(%rsi,%rax), %esi
	subl	%esi, %ebx
	movl	%ebx, %esi
	negl	%esi
	cmovsl	%ebx, %esi
	movzbl	%r11b, %r11d
	movzbl	%sil, %esi
	addl	%r11d, %esi
	movzbl	32(%rdi), %r11d
	movzbl	(%rax,%r9), %ebx
	subl	%ebx, %r11d
	movl	%r11d, %ebx
	negl	%ebx
	cmovsl	%r11d, %ebx
	movzbl	%bl, %r11d
	addl	%esi, %r11d
	addl	%r10d, %r11d
	movzbl	33(%rdi), %esi
	movzbl	1(%rax,%r9), %r10d
	subl	%r10d, %esi
	movl	%esi, %r10d
	negl	%r10d
	cmovsl	%esi, %r10d
	leaq	(%r9,%rax), %rsi
	movzbl	34(%rdi), %ebx
	movzbl	2(%rax,%r9), %ebp
	subl	%ebp, %ebx
	movl	%ebx, %ebp
	negl	%ebp
	cmovsl	%ebx, %ebp
	movzbl	%r10b, %r10d
	movzbl	%bpl, %ebx
	addl	%r10d, %ebx
	movzbl	35(%rdi), %r10d
	movzbl	3(%rax,%r9), %r9d
	subl	%r9d, %r10d
	movl	%r10d, %r9d
	negl	%r9d
	cmovsl	%r10d, %r9d
	movzbl	%r9b, %r9d
	addl	%ebx, %r9d
	addl	%r11d, %r9d
	movzbl	48(%rdi), %r10d
	movzbl	(%rax,%rsi), %r11d
	subl	%r11d, %r10d
	movl	%r10d, %r11d
	negl	%r11d
	cmovsl	%r10d, %r11d
	movzbl	49(%rdi), %r10d
	movzbl	1(%rax,%rsi), %ebx
	subl	%ebx, %r10d
	movl	%r10d, %ebx
	negl	%ebx
	cmovsl	%r10d, %ebx
	movzbl	%r11b, %r10d
	movzbl	%bl, %r11d
	addl	%r10d, %r11d
	movzbl	50(%rdi), %r10d
	movzbl	2(%rax,%rsi), %ebx
	subl	%ebx, %r10d
	movl	%r10d, %ebx
	negl	%ebx
	cmovsl	%r10d, %ebx
	movzbl	%bl, %r10d
	addl	%r11d, %r10d
	addl	%r9d, %r10d
	movzbl	51(%rdi), %r9d
	movzbl	3(%rax,%rsi), %esi
	subl	%esi, %r9d
	movl	%r9d, %r11d
	negl	%r11d
	cmovsl	%r9d, %r11d
	movq	24(%rsp), %rsi
	movzbl	%r11b, %r9d
	addl	%r10d, %r9d
	movl	%r9d, (%rsi)
	movzbl	(%rdi), %r9d
	movzbl	(%rdx), %r10d
	subl	%r10d, %r9d
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
	movzbl	%r10b, %r9d
	movzbl	1(%rdi), %r10d
	movzbl	1(%rdx), %r11d
	subl	%r11d, %r10d
	movl	%r10d, %r11d
	negl	%r11d
	cmovsl	%r10d, %r11d
	movzbl	%r11b, %r10d
	addl	%r9d, %r10d
	movzbl	2(%rdi), %r9d
	movzbl	2(%rdx), %r11d
	subl	%r11d, %r9d
	movl	%r9d, %r11d
	negl	%r11d
	cmovsl	%r9d, %r11d
	movzbl	%r11b, %r9d
	movzbl	3(%rdi), %r11d
	movzbl	3(%rdx), %ebx
	subl	%ebx, %r11d
	movl	%r11d, %ebx
	negl	%ebx
	cmovsl	%r11d, %ebx
	movzbl	%bl, %r11d
	addl	%r9d, %r11d
	addl	%r10d, %r11d
	movzbl	16(%rdi), %r9d
	movzbl	(%rdx,%rax), %r10d
	subl	%r10d, %r9d
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
	movzbl	%r10b, %r9d
	movzbl	17(%rdi), %r10d
	movzbl	1(%rdx,%rax), %ebx
	subl	%ebx, %r10d
	movl	%r10d, %ebx
	negl	%ebx
	cmovsl	%r10d, %ebx
	movzbl	%bl, %r10d
	addl	%r9d, %r10d
	addl	%r11d, %r10d
	movzbl	18(%rdi), %r9d
	movzbl	2(%rdx,%rax), %r11d
	subl	%r11d, %r9d
	movl	%r9d, %r11d
	negl	%r11d
	cmovsl	%r9d, %r11d
	leaq	(%rdx,%rax), %r9
	movzbl	19(%rdi), %ebx
	movzbl	3(%rdx,%rax), %edx
	subl	%edx, %ebx
	movl	%ebx, %edx
	negl	%edx
	cmovsl	%ebx, %edx
	movzbl	%r11b, %r11d
	movzbl	%dl, %edx
	addl	%r11d, %edx
	movzbl	32(%rdi), %r11d
	movzbl	(%rax,%r9), %ebx
	subl	%ebx, %r11d
	movl	%r11d, %ebx
	negl	%ebx
	cmovsl	%r11d, %ebx
	movzbl	%bl, %r11d
	addl	%edx, %r11d
	addl	%r10d, %r11d
	movzbl	33(%rdi), %edx
	movzbl	1(%rax,%r9), %r10d
	subl	%r10d, %edx
	movl	%edx, %r10d
	negl	%r10d
	cmovsl	%edx, %r10d
	leaq	(%r9,%rax), %rdx
	movzbl	34(%rdi), %ebx
	movzbl	2(%rax,%r9), %ebp
	subl	%ebp, %ebx
	movl	%ebx, %ebp
	negl	%ebp
	cmovsl	%ebx, %ebp
	movzbl	%r10b, %r10d
	movzbl	%bpl, %ebx
	addl	%r10d, %ebx
	movzbl	35(%rdi), %r10d
	movzbl	3(%rax,%r9), %r9d
	subl	%r9d, %r10d
	movl	%r10d, %r9d
	negl	%r9d
	cmovsl	%r10d, %r9d
	movzbl	%r9b, %r9d
	addl	%ebx, %r9d
	addl	%r11d, %r9d
	movzbl	48(%rdi), %r10d
	movzbl	(%rax,%rdx), %r11d
	subl	%r11d, %r10d
	movl	%r10d, %r11d
	negl	%r11d
	cmovsl	%r10d, %r11d
	movzbl	49(%rdi), %r10d
	movzbl	1(%rax,%rdx), %ebx
	subl	%ebx, %r10d
	movl	%r10d, %ebx
	negl	%ebx
	cmovsl	%r10d, %ebx
	movzbl	%r11b, %r10d
	movzbl	%bl, %r11d
	addl	%r10d, %r11d
	movzbl	50(%rdi), %r10d
	movzbl	2(%rax,%rdx), %ebx
	subl	%ebx, %r10d
	movl	%r10d, %ebx
	negl	%ebx
	cmovsl	%r10d, %ebx
	movzbl	%bl, %r10d
	addl	%r11d, %r10d
	addl	%r9d, %r10d
	movzbl	51(%rdi), %r9d
	movzbl	3(%rax,%rdx), %edx
	subl	%edx, %r9d
	movl	%r9d, %edx
	negl	%edx
	cmovsl	%r9d, %edx
	movzbl	%dl, %edx
	addl	%r10d, %edx
	movl	%edx, 4(%rsi)
	movzbl	(%rdi), %edx
	movzbl	(%rcx), %r9d
	subl	%r9d, %edx
	movl	%edx, %r9d
	negl	%r9d
	cmovsl	%edx, %r9d
	movzbl	%r9b, %edx
	movzbl	1(%rdi), %r9d
	movzbl	1(%rcx), %r10d
	subl	%r10d, %r9d
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
	movzbl	%r10b, %r9d
	addl	%edx, %r9d
	movzbl	2(%rdi), %edx
	movzbl	2(%rcx), %r10d
	subl	%r10d, %edx
	movl	%edx, %r10d
	negl	%r10d
	cmovsl	%edx, %r10d
	movzbl	%r10b, %edx
	movzbl	3(%rdi), %r10d
	movzbl	3(%rcx), %r11d
	subl	%r11d, %r10d
	movl	%r10d, %r11d
	negl	%r11d
	cmovsl	%r10d, %r11d
	movzbl	%r11b, %r10d
	addl	%edx, %r10d
	addl	%r9d, %r10d
	movzbl	16(%rdi), %edx
	movzbl	(%rcx,%rax), %r9d
	subl	%r9d, %edx
	movl	%edx, %r9d
	negl	%r9d
	cmovsl	%edx, %r9d
	movzbl	%r9b, %edx
	movzbl	17(%rdi), %r9d
	movzbl	1(%rcx,%rax), %r11d
	subl	%r11d, %r9d
	movl	%r9d, %r11d
	negl	%r11d
	cmovsl	%r9d, %r11d
	movzbl	%r11b, %r9d
	addl	%edx, %r9d
	addl	%r10d, %r9d
	movzbl	18(%rdi), %edx
	movzbl	2(%rcx,%rax), %r10d
	subl	%r10d, %edx
	movl	%edx, %r10d
	negl	%r10d
	cmovsl	%edx, %r10d
	leaq	(%rcx,%rax), %rdx
	movzbl	19(%rdi), %r11d
	movzbl	3(%rcx,%rax), %ecx
	subl	%ecx, %r11d
	movl	%r11d, %ecx
	negl	%ecx
	cmovsl	%r11d, %ecx
	movzbl	%r10b, %r10d
	movzbl	%cl, %ecx
	addl	%r10d, %ecx
	movzbl	32(%rdi), %r10d
	movzbl	(%rax,%rdx), %r11d
	subl	%r11d, %r10d
	movl	%r10d, %r11d
	negl	%r11d
	cmovsl	%r10d, %r11d
	movzbl	%r11b, %r10d
	addl	%ecx, %r10d
	addl	%r9d, %r10d
	movzbl	33(%rdi), %ecx
	movzbl	1(%rax,%rdx), %r9d
	subl	%r9d, %ecx
	movl	%ecx, %r9d
	negl	%r9d
	cmovsl	%ecx, %r9d
	leaq	(%rdx,%rax), %rcx
	movzbl	34(%rdi), %r11d
	movzbl	2(%rax,%rdx), %ebx
	subl	%ebx, %r11d
	movl	%r11d, %ebx
	negl	%ebx
	cmovsl	%r11d, %ebx
	movzbl	%r9b, %r9d
	movzbl	%bl, %r11d
	addl	%r9d, %r11d
	movzbl	35(%rdi), %r9d
	movzbl	3(%rax,%rdx), %edx
	subl	%edx, %r9d
	movl	%r9d, %edx
	negl	%edx
	cmovsl	%r9d, %edx
	movzbl	%dl, %edx
	addl	%r11d, %edx
	addl	%r10d, %edx
	movzbl	48(%rdi), %r9d
	movzbl	(%rax,%rcx), %r10d
	subl	%r10d, %r9d
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
	movzbl	49(%rdi), %r9d
	movzbl	1(%rax,%rcx), %r11d
	subl	%r11d, %r9d
	movl	%r9d, %r11d
	negl	%r11d
	cmovsl	%r9d, %r11d
	movzbl	%r10b, %r9d
	movzbl	%r11b, %r10d
	addl	%r9d, %r10d
	movzbl	50(%rdi), %r9d
	movzbl	2(%rax,%rcx), %r11d
	subl	%r11d, %r9d
	movl	%r9d, %r11d
	negl	%r11d
	cmovsl	%r9d, %r11d
	movzbl	%r11b, %r9d
	addl	%r10d, %r9d
	addl	%edx, %r9d
	movzbl	51(%rdi), %edx
	movzbl	3(%rax,%rcx), %ecx
	subl	%ecx, %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovsl	%edx, %ecx
	movzbl	%cl, %ecx
	addl	%r9d, %ecx
	movl	%ecx, 8(%rsi)
	movzbl	(%rdi), %ecx
	movzbl	(%r8), %edx
	subl	%edx, %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovsl	%ecx, %edx
	movzbl	%dl, %ecx
	movzbl	1(%rdi), %edx
	movzbl	1(%r8), %r9d
	subl	%r9d, %edx
	movl	%edx, %r9d
	negl	%r9d
	cmovsl	%edx, %r9d
	movzbl	%r9b, %edx
	addl	%ecx, %edx
	movzbl	2(%rdi), %ecx
	movzbl	2(%r8), %r9d
	subl	%r9d, %ecx
	movl	%ecx, %r9d
	negl	%r9d
	cmovsl	%ecx, %r9d
	movzbl	%r9b, %ecx
	movzbl	3(%rdi), %r9d
	movzbl	3(%r8), %r10d
	subl	%r10d, %r9d
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
	movzbl	%r10b, %r9d
	addl	%ecx, %r9d
	addl	%edx, %r9d
	movzbl	16(%rdi), %ecx
	movzbl	(%r8,%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovsl	%ecx, %edx
	movzbl	%dl, %edx
	movzbl	17(%rdi), %ecx
	movzbl	1(%r8,%rax), %r10d
	subl	%r10d, %ecx
	movl	%ecx, %r10d
	negl	%r10d
	cmovsl	%ecx, %r10d
	movzbl	%r10b, %ecx
	addl	%edx, %ecx
	addl	%r9d, %ecx
	movzbl	18(%rdi), %edx
	movzbl	2(%r8,%rax), %r9d
	subl	%r9d, %edx
	movl	%edx, %r9d
	negl	%r9d
	cmovsl	%edx, %r9d
	leaq	(%r8,%rax), %rdx
	movzbl	19(%rdi), %r10d
	movzbl	3(%r8,%rax), %r8d
	subl	%r8d, %r10d
	movl	%r10d, %r8d
	negl	%r8d
	cmovsl	%r10d, %r8d
	movzbl	%r9b, %r9d
	movzbl	%r8b, %r10d
	addl	%r9d, %r10d
	movzbl	32(%rdi), %r8d
	movzbl	(%rax,%rdx), %r9d
	subl	%r9d, %r8d
	movl	%r8d, %r9d
	negl	%r9d
	cmovsl	%r8d, %r9d
	movzbl	%r9b, %r8d
	addl	%r10d, %r8d
	addl	%ecx, %r8d
	movzbl	33(%rdi), %ecx
	movzbl	1(%rax,%rdx), %r9d
	subl	%r9d, %ecx
	movl	%ecx, %r9d
	negl	%r9d
	cmovsl	%ecx, %r9d
	leaq	(%rdx,%rax), %rcx
	movzbl	34(%rdi), %r10d
	movzbl	2(%rax,%rdx), %r11d
	subl	%r11d, %r10d
	movl	%r10d, %r11d
	negl	%r11d
	cmovsl	%r10d, %r11d
	movzbl	%r9b, %r9d
	movzbl	%r11b, %r10d
	addl	%r9d, %r10d
	movzbl	35(%rdi), %r9d
	movzbl	3(%rax,%rdx), %edx
	subl	%edx, %r9d
	movl	%r9d, %edx
	negl	%edx
	cmovsl	%r9d, %edx
	movzbl	%dl, %edx
	addl	%r10d, %edx
	addl	%r8d, %edx
	movzbl	48(%rdi), %r8d
	movzbl	(%rax,%rcx), %r9d
	subl	%r9d, %r8d
	movl	%r8d, %r9d
	negl	%r9d
	cmovsl	%r8d, %r9d
	movzbl	49(%rdi), %r8d
	movzbl	1(%rax,%rcx), %r10d
	subl	%r10d, %r8d
	movl	%r8d, %r10d
	negl	%r10d
	cmovsl	%r8d, %r10d
	movzbl	%r9b, %r8d
	movzbl	%r10b, %r9d
	addl	%r8d, %r9d
	movzbl	50(%rdi), %r8d
	movzbl	2(%rax,%rcx), %r10d
	subl	%r10d, %r8d
	movl	%r8d, %r10d
	negl	%r10d
	cmovsl	%r8d, %r10d
	movzbl	%r10b, %r8d
	addl	%r9d, %r8d
	addl	%edx, %r8d
	movzbl	51(%rdi), %edx
	movzbl	3(%rax,%rcx), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	negl	%eax
	cmovsl	%edx, %eax
	movzbl	%al, %eax
	addl	%r8d, %eax
	movl	%eax, 12(%rsi)
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end23:
	.size	x264_pixel_sad_x4_4x4, .Lfunc_end23-x264_pixel_sad_x4_4x4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_ssd_16x16
	.type	x264_pixel_ssd_16x16,@function
x264_pixel_ssd_16x16:                   # @x264_pixel_ssd_16x16
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	%esi, %rsi
	movslq	%ecx, %rcx
	xorl	%eax, %eax
	movl	$16, %r8d
	pxor	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB24_1:                               # %for.cond1.preheader
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi), %xmm2
	movdqa	%xmm2, %xmm4
	punpckhbw	%xmm0, %xmm4            # xmm4 = xmm4[8],xmm0[8],xmm4[9],xmm0[9],xmm4[10],xmm0[10],xmm4[11],xmm0[11],xmm4[12],xmm0[12],xmm4[13],xmm0[13],xmm4[14],xmm0[14],xmm4[15],xmm0[15]
	movdqa	%xmm4, %xmm1
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	punpckhwd	%xmm0, %xmm4            # xmm4 = xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklbw	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	movdqa	%xmm2, %xmm3
	punpcklwd	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	punpckhwd	%xmm0, %xmm2            # xmm2 = xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	movdqu	(%rdx), %xmm5
	movdqa	%xmm5, %xmm6
	punpckhbw	%xmm0, %xmm6            # xmm6 = xmm6[8],xmm0[8],xmm6[9],xmm0[9],xmm6[10],xmm0[10],xmm6[11],xmm0[11],xmm6[12],xmm0[12],xmm6[13],xmm0[13],xmm6[14],xmm0[14],xmm6[15],xmm0[15]
	movdqa	%xmm6, %xmm7
	punpcklwd	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
	psubd	%xmm7, %xmm1
	punpckhwd	%xmm0, %xmm6            # xmm6 = xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	psubd	%xmm6, %xmm4
	packssdw	%xmm4, %xmm1
	punpcklbw	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	movdqa	%xmm5, %xmm4
	punpcklwd	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	psubd	%xmm4, %xmm3
	punpckhwd	%xmm0, %xmm5            # xmm5 = xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	psubd	%xmm5, %xmm2
	packssdw	%xmm2, %xmm3
	pmaddwd	%xmm1, %xmm1
	pmaddwd	%xmm3, %xmm3
	paddd	%xmm1, %xmm3
	pshufd	$238, %xmm3, %xmm1              # xmm1 = xmm3[2,3,2,3]
	paddd	%xmm3, %xmm1
	pshufd	$85, %xmm1, %xmm2               # xmm2 = xmm1[1,1,1,1]
	paddd	%xmm1, %xmm2
	movd	%xmm2, %r9d
	addl	%r9d, %eax
	addq	%rsi, %rdi
	addq	%rcx, %rdx
	decl	%r8d
	jne	.LBB24_1
# %bb.2:                                # %for.cond.cleanup
	retq
.Lfunc_end24:
	.size	x264_pixel_ssd_16x16, .Lfunc_end24-x264_pixel_ssd_16x16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_ssd_16x8
	.type	x264_pixel_ssd_16x8,@function
x264_pixel_ssd_16x8:                    # @x264_pixel_ssd_16x8
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	%esi, %rsi
	movslq	%ecx, %rcx
	xorl	%eax, %eax
	movl	$8, %r8d
	pxor	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB25_1:                               # %for.cond1.preheader
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi), %xmm2
	movdqa	%xmm2, %xmm4
	punpckhbw	%xmm0, %xmm4            # xmm4 = xmm4[8],xmm0[8],xmm4[9],xmm0[9],xmm4[10],xmm0[10],xmm4[11],xmm0[11],xmm4[12],xmm0[12],xmm4[13],xmm0[13],xmm4[14],xmm0[14],xmm4[15],xmm0[15]
	movdqa	%xmm4, %xmm1
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	punpckhwd	%xmm0, %xmm4            # xmm4 = xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklbw	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	movdqa	%xmm2, %xmm3
	punpcklwd	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	punpckhwd	%xmm0, %xmm2            # xmm2 = xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	movdqu	(%rdx), %xmm5
	movdqa	%xmm5, %xmm6
	punpckhbw	%xmm0, %xmm6            # xmm6 = xmm6[8],xmm0[8],xmm6[9],xmm0[9],xmm6[10],xmm0[10],xmm6[11],xmm0[11],xmm6[12],xmm0[12],xmm6[13],xmm0[13],xmm6[14],xmm0[14],xmm6[15],xmm0[15]
	movdqa	%xmm6, %xmm7
	punpcklwd	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
	psubd	%xmm7, %xmm1
	punpckhwd	%xmm0, %xmm6            # xmm6 = xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	psubd	%xmm6, %xmm4
	packssdw	%xmm4, %xmm1
	punpcklbw	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	movdqa	%xmm5, %xmm4
	punpcklwd	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	psubd	%xmm4, %xmm3
	punpckhwd	%xmm0, %xmm5            # xmm5 = xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	psubd	%xmm5, %xmm2
	packssdw	%xmm2, %xmm3
	pmaddwd	%xmm1, %xmm1
	pmaddwd	%xmm3, %xmm3
	paddd	%xmm1, %xmm3
	pshufd	$238, %xmm3, %xmm1              # xmm1 = xmm3[2,3,2,3]
	paddd	%xmm3, %xmm1
	pshufd	$85, %xmm1, %xmm2               # xmm2 = xmm1[1,1,1,1]
	paddd	%xmm1, %xmm2
	movd	%xmm2, %r9d
	addl	%r9d, %eax
	addq	%rsi, %rdi
	addq	%rcx, %rdx
	decl	%r8d
	jne	.LBB25_1
# %bb.2:                                # %for.cond.cleanup
	retq
.Lfunc_end25:
	.size	x264_pixel_ssd_16x8, .Lfunc_end25-x264_pixel_ssd_16x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_ssd_8x16
	.type	x264_pixel_ssd_8x16,@function
x264_pixel_ssd_8x16:                    # @x264_pixel_ssd_8x16
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	%esi, %rsi
	movslq	%ecx, %rcx
	xorl	%eax, %eax
	movl	$16, %r8d
	pxor	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB26_1:                               # %for.cond1.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %xmm1                   # xmm1 = mem[0],zero
	movq	(%rdx), %xmm2                   # xmm2 = mem[0],zero
	punpcklbw	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklbw	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	psubw	%xmm2, %xmm1
	pmaddwd	%xmm1, %xmm1
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %r9d
	addl	%r9d, %eax
	addq	%rsi, %rdi
	addq	%rcx, %rdx
	decl	%r8d
	jne	.LBB26_1
# %bb.2:                                # %for.cond.cleanup
	retq
.Lfunc_end26:
	.size	x264_pixel_ssd_8x16, .Lfunc_end26-x264_pixel_ssd_8x16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_ssd_8x8
	.type	x264_pixel_ssd_8x8,@function
x264_pixel_ssd_8x8:                     # @x264_pixel_ssd_8x8
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	%ecx, %rax
	movslq	%esi, %rcx
	movq	(%rdi), %xmm1                   # xmm1 = mem[0],zero
	movq	(%rdx), %xmm2                   # xmm2 = mem[0],zero
	pxor	%xmm0, %xmm0
	punpcklbw	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklbw	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	psubw	%xmm2, %xmm1
	pmaddwd	%xmm1, %xmm1
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %esi
	movq	(%rdi,%rcx), %xmm1              # xmm1 = mem[0],zero
	addq	%rcx, %rdi
	movq	(%rdx,%rax), %xmm2              # xmm2 = mem[0],zero
	addq	%rax, %rdx
	punpcklbw	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklbw	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	psubw	%xmm2, %xmm1
	pmaddwd	%xmm1, %xmm1
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %r8d
	addl	%esi, %r8d
	movq	(%rcx,%rdi), %xmm1              # xmm1 = mem[0],zero
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %xmm2              # xmm2 = mem[0],zero
	addq	%rax, %rdx
	punpcklbw	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklbw	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	psubw	%xmm2, %xmm1
	pmaddwd	%xmm1, %xmm1
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %esi
	addl	%r8d, %esi
	movq	(%rcx,%rdi), %xmm1              # xmm1 = mem[0],zero
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %xmm2              # xmm2 = mem[0],zero
	addq	%rax, %rdx
	punpcklbw	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklbw	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	psubw	%xmm2, %xmm1
	pmaddwd	%xmm1, %xmm1
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %r8d
	addl	%esi, %r8d
	movq	(%rcx,%rdi), %xmm1              # xmm1 = mem[0],zero
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %xmm2              # xmm2 = mem[0],zero
	addq	%rax, %rdx
	punpcklbw	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklbw	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	psubw	%xmm2, %xmm1
	pmaddwd	%xmm1, %xmm1
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %esi
	addl	%r8d, %esi
	movq	(%rcx,%rdi), %xmm1              # xmm1 = mem[0],zero
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %xmm2              # xmm2 = mem[0],zero
	addq	%rax, %rdx
	punpcklbw	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklbw	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	psubw	%xmm2, %xmm1
	pmaddwd	%xmm1, %xmm1
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %r8d
	addl	%esi, %r8d
	movq	(%rcx,%rdi), %xmm1              # xmm1 = mem[0],zero
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %xmm2              # xmm2 = mem[0],zero
	addq	%rax, %rdx
	punpcklbw	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklbw	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	psubw	%xmm2, %xmm1
	pmaddwd	%xmm1, %xmm1
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %esi
	addl	%r8d, %esi
	movq	(%rcx,%rdi), %xmm1              # xmm1 = mem[0],zero
	movq	(%rax,%rdx), %xmm2              # xmm2 = mem[0],zero
	punpcklbw	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklbw	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	psubw	%xmm2, %xmm1
	pmaddwd	%xmm1, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %eax
	addl	%esi, %eax
	retq
.Lfunc_end27:
	.size	x264_pixel_ssd_8x8, .Lfunc_end27-x264_pixel_ssd_8x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_ssd_8x4
	.type	x264_pixel_ssd_8x4,@function
x264_pixel_ssd_8x4:                     # @x264_pixel_ssd_8x4
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	%esi, %rax
	movslq	%ecx, %rcx
	movq	(%rdi), %xmm0                   # xmm0 = mem[0],zero
	movq	(%rdx), %xmm1                   # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklbw	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	psubw	%xmm1, %xmm0
	pmaddwd	%xmm0, %xmm0
	movq	(%rdi,%rax), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rdi
	movq	(%rdx,%rcx), %xmm3              # xmm3 = mem[0],zero
	addq	%rcx, %rdx
	punpcklbw	%xmm2, %xmm3            # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3],xmm3[4],xmm2[4],xmm3[5],xmm2[5],xmm3[6],xmm2[6],xmm3[7],xmm2[7]
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	psubw	%xmm3, %xmm1
	pmaddwd	%xmm1, %xmm1
	movq	(%rax,%rdi), %xmm3              # xmm3 = mem[0],zero
	addq	%rax, %rdi
	movq	(%rcx,%rdx), %xmm4              # xmm4 = mem[0],zero
	addq	%rcx, %rdx
	punpcklbw	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3],xmm4[4],xmm2[4],xmm4[5],xmm2[5],xmm4[6],xmm2[6],xmm4[7],xmm2[7]
	punpcklbw	%xmm2, %xmm3            # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3],xmm3[4],xmm2[4],xmm3[5],xmm2[5],xmm3[6],xmm2[6],xmm3[7],xmm2[7]
	psubw	%xmm4, %xmm3
	pmaddwd	%xmm3, %xmm3
	movq	(%rax,%rdi), %xmm4              # xmm4 = mem[0],zero
	movq	(%rcx,%rdx), %xmm5              # xmm5 = mem[0],zero
	punpcklbw	%xmm2, %xmm5            # xmm5 = xmm5[0],xmm2[0],xmm5[1],xmm2[1],xmm5[2],xmm2[2],xmm5[3],xmm2[3],xmm5[4],xmm2[4],xmm5[5],xmm2[5],xmm5[6],xmm2[6],xmm5[7],xmm2[7]
	punpcklbw	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3],xmm4[4],xmm2[4],xmm4[5],xmm2[5],xmm4[6],xmm2[6],xmm4[7],xmm2[7]
	psubw	%xmm5, %xmm4
	pmaddwd	%xmm4, %xmm4
	pshufd	$238, %xmm0, %xmm2              # xmm2 = xmm0[2,3,2,3]
	paddd	%xmm0, %xmm2
	pshufd	$85, %xmm2, %xmm0               # xmm0 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm0
	movd	%xmm0, %eax
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %ecx
	addl	%eax, %ecx
	pshufd	$238, %xmm3, %xmm0              # xmm0 = xmm3[2,3,2,3]
	paddd	%xmm3, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %edx
	addl	%ecx, %edx
	pshufd	$238, %xmm4, %xmm0              # xmm0 = xmm4[2,3,2,3]
	paddd	%xmm4, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %eax
	addl	%edx, %eax
	retq
.Lfunc_end28:
	.size	x264_pixel_ssd_8x4, .Lfunc_end28-x264_pixel_ssd_8x4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_ssd_4x8
	.type	x264_pixel_ssd_4x8,@function
x264_pixel_ssd_4x8:                     # @x264_pixel_ssd_4x8
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	%esi, %rsi
	movslq	%ecx, %rax
	movd	(%rdi), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	pxor	%xmm2, %xmm2
	punpcklbw	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklwd	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	movd	(%rdx), %xmm1                   # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	psubd	%xmm1, %xmm0
	packssdw	%xmm0, %xmm0
	movdqa	%xmm0, %xmm1
	pmulhw	%xmm0, %xmm1
	pmullw	%xmm0, %xmm0
	punpcklwd	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movd	(%rdi,%rsi), %xmm1              # xmm1 = mem[0],zero,zero,zero
	addq	%rsi, %rdi
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movd	(%rdx,%rax), %xmm3              # xmm3 = mem[0],zero,zero,zero
	addq	%rax, %rdx
	punpcklbw	%xmm2, %xmm3            # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3],xmm3[4],xmm2[4],xmm3[5],xmm2[5],xmm3[6],xmm2[6],xmm3[7],xmm2[7]
	punpcklwd	%xmm2, %xmm3            # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3]
	psubd	%xmm3, %xmm1
	packssdw	%xmm1, %xmm1
	movdqa	%xmm1, %xmm3
	pmulhw	%xmm1, %xmm3
	pmullw	%xmm1, %xmm1
	punpcklwd	%xmm3, %xmm1            # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3]
	movd	(%rsi,%rdi), %xmm3              # xmm3 = mem[0],zero,zero,zero
	addq	%rsi, %rdi
	punpcklbw	%xmm2, %xmm3            # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3],xmm3[4],xmm2[4],xmm3[5],xmm2[5],xmm3[6],xmm2[6],xmm3[7],xmm2[7]
	punpcklwd	%xmm2, %xmm3            # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3]
	movd	(%rax,%rdx), %xmm4              # xmm4 = mem[0],zero,zero,zero
	addq	%rax, %rdx
	punpcklbw	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3],xmm4[4],xmm2[4],xmm4[5],xmm2[5],xmm4[6],xmm2[6],xmm4[7],xmm2[7]
	punpcklwd	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
	psubd	%xmm4, %xmm3
	packssdw	%xmm3, %xmm3
	movdqa	%xmm3, %xmm4
	pmulhw	%xmm3, %xmm4
	pmullw	%xmm3, %xmm3
	punpcklwd	%xmm4, %xmm3            # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1],xmm3[2],xmm4[2],xmm3[3],xmm4[3]
	movd	(%rsi,%rdi), %xmm4              # xmm4 = mem[0],zero,zero,zero
	addq	%rsi, %rdi
	punpcklbw	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3],xmm4[4],xmm2[4],xmm4[5],xmm2[5],xmm4[6],xmm2[6],xmm4[7],xmm2[7]
	punpcklwd	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
	movd	(%rax,%rdx), %xmm5              # xmm5 = mem[0],zero,zero,zero
	addq	%rax, %rdx
	punpcklbw	%xmm2, %xmm5            # xmm5 = xmm5[0],xmm2[0],xmm5[1],xmm2[1],xmm5[2],xmm2[2],xmm5[3],xmm2[3],xmm5[4],xmm2[4],xmm5[5],xmm2[5],xmm5[6],xmm2[6],xmm5[7],xmm2[7]
	punpcklwd	%xmm2, %xmm5            # xmm5 = xmm5[0],xmm2[0],xmm5[1],xmm2[1],xmm5[2],xmm2[2],xmm5[3],xmm2[3]
	psubd	%xmm5, %xmm4
	packssdw	%xmm4, %xmm4
	movdqa	%xmm4, %xmm5
	pmulhw	%xmm4, %xmm5
	pmullw	%xmm4, %xmm4
	punpcklwd	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1],xmm4[2],xmm5[2],xmm4[3],xmm5[3]
	movd	(%rsi,%rdi), %xmm5              # xmm5 = mem[0],zero,zero,zero
	addq	%rsi, %rdi
	punpcklbw	%xmm2, %xmm5            # xmm5 = xmm5[0],xmm2[0],xmm5[1],xmm2[1],xmm5[2],xmm2[2],xmm5[3],xmm2[3],xmm5[4],xmm2[4],xmm5[5],xmm2[5],xmm5[6],xmm2[6],xmm5[7],xmm2[7]
	punpcklwd	%xmm2, %xmm5            # xmm5 = xmm5[0],xmm2[0],xmm5[1],xmm2[1],xmm5[2],xmm2[2],xmm5[3],xmm2[3]
	movd	(%rax,%rdx), %xmm6              # xmm6 = mem[0],zero,zero,zero
	addq	%rax, %rdx
	punpcklbw	%xmm2, %xmm6            # xmm6 = xmm6[0],xmm2[0],xmm6[1],xmm2[1],xmm6[2],xmm2[2],xmm6[3],xmm2[3],xmm6[4],xmm2[4],xmm6[5],xmm2[5],xmm6[6],xmm2[6],xmm6[7],xmm2[7]
	punpcklwd	%xmm2, %xmm6            # xmm6 = xmm6[0],xmm2[0],xmm6[1],xmm2[1],xmm6[2],xmm2[2],xmm6[3],xmm2[3]
	psubd	%xmm6, %xmm5
	packssdw	%xmm5, %xmm5
	movdqa	%xmm5, %xmm6
	pmulhw	%xmm5, %xmm6
	pmullw	%xmm5, %xmm5
	punpcklwd	%xmm6, %xmm5            # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1],xmm5[2],xmm6[2],xmm5[3],xmm6[3]
	movd	(%rsi,%rdi), %xmm6              # xmm6 = mem[0],zero,zero,zero
	addq	%rsi, %rdi
	punpcklbw	%xmm2, %xmm6            # xmm6 = xmm6[0],xmm2[0],xmm6[1],xmm2[1],xmm6[2],xmm2[2],xmm6[3],xmm2[3],xmm6[4],xmm2[4],xmm6[5],xmm2[5],xmm6[6],xmm2[6],xmm6[7],xmm2[7]
	punpcklwd	%xmm2, %xmm6            # xmm6 = xmm6[0],xmm2[0],xmm6[1],xmm2[1],xmm6[2],xmm2[2],xmm6[3],xmm2[3]
	movd	(%rax,%rdx), %xmm7              # xmm7 = mem[0],zero,zero,zero
	addq	%rax, %rdx
	punpcklbw	%xmm2, %xmm7            # xmm7 = xmm7[0],xmm2[0],xmm7[1],xmm2[1],xmm7[2],xmm2[2],xmm7[3],xmm2[3],xmm7[4],xmm2[4],xmm7[5],xmm2[5],xmm7[6],xmm2[6],xmm7[7],xmm2[7]
	punpcklwd	%xmm2, %xmm7            # xmm7 = xmm7[0],xmm2[0],xmm7[1],xmm2[1],xmm7[2],xmm2[2],xmm7[3],xmm2[3]
	psubd	%xmm7, %xmm6
	packssdw	%xmm6, %xmm6
	movdqa	%xmm6, %xmm7
	pmulhw	%xmm6, %xmm7
	pmullw	%xmm6, %xmm6
	punpcklwd	%xmm7, %xmm6            # xmm6 = xmm6[0],xmm7[0],xmm6[1],xmm7[1],xmm6[2],xmm7[2],xmm6[3],xmm7[3]
	movd	(%rsi,%rdi), %xmm7              # xmm7 = mem[0],zero,zero,zero
	addq	%rsi, %rdi
	punpcklbw	%xmm2, %xmm7            # xmm7 = xmm7[0],xmm2[0],xmm7[1],xmm2[1],xmm7[2],xmm2[2],xmm7[3],xmm2[3],xmm7[4],xmm2[4],xmm7[5],xmm2[5],xmm7[6],xmm2[6],xmm7[7],xmm2[7]
	punpcklwd	%xmm2, %xmm7            # xmm7 = xmm7[0],xmm2[0],xmm7[1],xmm2[1],xmm7[2],xmm2[2],xmm7[3],xmm2[3]
	movd	(%rax,%rdx), %xmm8              # xmm8 = mem[0],zero,zero,zero
	addq	%rax, %rdx
	punpcklbw	%xmm2, %xmm8            # xmm8 = xmm8[0],xmm2[0],xmm8[1],xmm2[1],xmm8[2],xmm2[2],xmm8[3],xmm2[3],xmm8[4],xmm2[4],xmm8[5],xmm2[5],xmm8[6],xmm2[6],xmm8[7],xmm2[7]
	punpcklwd	%xmm2, %xmm8            # xmm8 = xmm8[0],xmm2[0],xmm8[1],xmm2[1],xmm8[2],xmm2[2],xmm8[3],xmm2[3]
	psubd	%xmm8, %xmm7
	packssdw	%xmm7, %xmm7
	movdqa	%xmm7, %xmm8
	pmulhw	%xmm7, %xmm8
	pmullw	%xmm7, %xmm7
	punpcklwd	%xmm8, %xmm7            # xmm7 = xmm7[0],xmm8[0],xmm7[1],xmm8[1],xmm7[2],xmm8[2],xmm7[3],xmm8[3]
	movd	(%rsi,%rdi), %xmm8              # xmm8 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm8            # xmm8 = xmm8[0],xmm2[0],xmm8[1],xmm2[1],xmm8[2],xmm2[2],xmm8[3],xmm2[3],xmm8[4],xmm2[4],xmm8[5],xmm2[5],xmm8[6],xmm2[6],xmm8[7],xmm2[7]
	punpcklwd	%xmm2, %xmm8            # xmm8 = xmm8[0],xmm2[0],xmm8[1],xmm2[1],xmm8[2],xmm2[2],xmm8[3],xmm2[3]
	movd	(%rax,%rdx), %xmm9              # xmm9 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm9            # xmm9 = xmm9[0],xmm2[0],xmm9[1],xmm2[1],xmm9[2],xmm2[2],xmm9[3],xmm2[3],xmm9[4],xmm2[4],xmm9[5],xmm2[5],xmm9[6],xmm2[6],xmm9[7],xmm2[7]
	punpcklwd	%xmm2, %xmm9            # xmm9 = xmm9[0],xmm2[0],xmm9[1],xmm2[1],xmm9[2],xmm2[2],xmm9[3],xmm2[3]
	psubd	%xmm9, %xmm8
	packssdw	%xmm8, %xmm8
	movdqa	%xmm8, %xmm2
	pmulhw	%xmm8, %xmm2
	pmullw	%xmm8, %xmm8
	punpcklwd	%xmm2, %xmm8            # xmm8 = xmm8[0],xmm2[0],xmm8[1],xmm2[1],xmm8[2],xmm2[2],xmm8[3],xmm2[3]
	pshufd	$238, %xmm0, %xmm2              # xmm2 = xmm0[2,3,2,3]
	punpcklqdq	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0]
	paddd	%xmm2, %xmm0
	pshufd	$85, %xmm0, %xmm2               # xmm2 = xmm0[1,1,1,1]
	paddd	%xmm0, %xmm2
	movd	%xmm2, %ecx
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	punpcklqdq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0]
	paddd	%xmm0, %xmm1
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %edx
	pshufd	$238, %xmm3, %xmm0              # xmm0 = xmm3[2,3,2,3]
	punpcklqdq	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0]
	paddd	%xmm0, %xmm3
	pshufd	$85, %xmm3, %xmm0               # xmm0 = xmm3[1,1,1,1]
	paddd	%xmm3, %xmm0
	movd	%xmm0, %esi
	pshufd	$238, %xmm4, %xmm0              # xmm0 = xmm4[2,3,2,3]
	punpcklqdq	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0]
	paddd	%xmm0, %xmm4
	pshufd	$85, %xmm4, %xmm0               # xmm0 = xmm4[1,1,1,1]
	paddd	%xmm4, %xmm0
	movd	%xmm0, %edi
	pshufd	$238, %xmm5, %xmm0              # xmm0 = xmm5[2,3,2,3]
	punpcklqdq	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0]
	paddd	%xmm0, %xmm5
	pshufd	$85, %xmm5, %xmm0               # xmm0 = xmm5[1,1,1,1]
	paddd	%xmm5, %xmm0
	movd	%xmm0, %r8d
	pshufd	$238, %xmm6, %xmm0              # xmm0 = xmm6[2,3,2,3]
	punpcklqdq	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0]
	paddd	%xmm0, %xmm6
	pshufd	$85, %xmm6, %xmm0               # xmm0 = xmm6[1,1,1,1]
	paddd	%xmm6, %xmm0
	movd	%xmm0, %r9d
	pshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	punpcklqdq	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0]
	paddd	%xmm0, %xmm7
	pshufd	$85, %xmm7, %xmm0               # xmm0 = xmm7[1,1,1,1]
	paddd	%xmm7, %xmm0
	movd	%xmm0, %r10d
	pshufd	$238, %xmm8, %xmm0              # xmm0 = xmm8[2,3,2,3]
	punpcklqdq	%xmm0, %xmm8            # xmm8 = xmm8[0],xmm0[0]
	paddd	%xmm0, %xmm8
	pshufd	$85, %xmm8, %xmm0               # xmm0 = xmm8[1,1,1,1]
	paddd	%xmm8, %xmm0
	movd	%xmm0, %eax
	addl	%ecx, %edx
	addl	%edx, %esi
	addl	%esi, %edi
	addl	%edi, %r8d
	addl	%r8d, %r9d
	addl	%r9d, %r10d
	addl	%r10d, %eax
	retq
.Lfunc_end29:
	.size	x264_pixel_ssd_4x8, .Lfunc_end29-x264_pixel_ssd_4x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_ssd_4x4
	.type	x264_pixel_ssd_4x4,@function
x264_pixel_ssd_4x4:                     # @x264_pixel_ssd_4x4
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	%esi, %rsi
	movslq	%ecx, %rax
	movd	(%rdi), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	pxor	%xmm2, %xmm2
	punpcklbw	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklwd	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	movd	(%rdx), %xmm1                   # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	psubd	%xmm1, %xmm0
	packssdw	%xmm0, %xmm0
	movdqa	%xmm0, %xmm1
	pmulhw	%xmm0, %xmm1
	pmullw	%xmm0, %xmm0
	punpcklwd	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	pshufd	$238, %xmm0, %xmm3              # xmm3 = xmm0[2,3,2,3]
	punpcklqdq	%xmm3, %xmm0            # xmm0 = xmm0[0],xmm3[0]
	movd	(%rdi,%rsi), %xmm1              # xmm1 = mem[0],zero,zero,zero
	addq	%rsi, %rdi
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movd	(%rdx,%rax), %xmm4              # xmm4 = mem[0],zero,zero,zero
	addq	%rax, %rdx
	punpcklbw	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3],xmm4[4],xmm2[4],xmm4[5],xmm2[5],xmm4[6],xmm2[6],xmm4[7],xmm2[7]
	punpcklwd	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
	psubd	%xmm4, %xmm1
	packssdw	%xmm1, %xmm1
	movdqa	%xmm1, %xmm4
	pmulhw	%xmm1, %xmm4
	pmullw	%xmm1, %xmm1
	punpcklwd	%xmm4, %xmm1            # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1],xmm1[2],xmm4[2],xmm1[3],xmm4[3]
	pshufd	$238, %xmm1, %xmm5              # xmm5 = xmm1[2,3,2,3]
	punpcklqdq	%xmm5, %xmm1            # xmm1 = xmm1[0],xmm5[0]
	movd	(%rsi,%rdi), %xmm4              # xmm4 = mem[0],zero,zero,zero
	addq	%rsi, %rdi
	punpcklbw	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3],xmm4[4],xmm2[4],xmm4[5],xmm2[5],xmm4[6],xmm2[6],xmm4[7],xmm2[7]
	punpcklwd	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
	movd	(%rax,%rdx), %xmm6              # xmm6 = mem[0],zero,zero,zero
	addq	%rax, %rdx
	punpcklbw	%xmm2, %xmm6            # xmm6 = xmm6[0],xmm2[0],xmm6[1],xmm2[1],xmm6[2],xmm2[2],xmm6[3],xmm2[3],xmm6[4],xmm2[4],xmm6[5],xmm2[5],xmm6[6],xmm2[6],xmm6[7],xmm2[7]
	punpcklwd	%xmm2, %xmm6            # xmm6 = xmm6[0],xmm2[0],xmm6[1],xmm2[1],xmm6[2],xmm2[2],xmm6[3],xmm2[3]
	psubd	%xmm6, %xmm4
	packssdw	%xmm4, %xmm4
	movdqa	%xmm4, %xmm6
	pmulhw	%xmm4, %xmm6
	pmullw	%xmm4, %xmm4
	punpcklwd	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1],xmm4[2],xmm6[2],xmm4[3],xmm6[3]
	pshufd	$238, %xmm4, %xmm7              # xmm7 = xmm4[2,3,2,3]
	punpcklqdq	%xmm7, %xmm4            # xmm4 = xmm4[0],xmm7[0]
	movd	(%rsi,%rdi), %xmm6              # xmm6 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm6            # xmm6 = xmm6[0],xmm2[0],xmm6[1],xmm2[1],xmm6[2],xmm2[2],xmm6[3],xmm2[3],xmm6[4],xmm2[4],xmm6[5],xmm2[5],xmm6[6],xmm2[6],xmm6[7],xmm2[7]
	punpcklwd	%xmm2, %xmm6            # xmm6 = xmm6[0],xmm2[0],xmm6[1],xmm2[1],xmm6[2],xmm2[2],xmm6[3],xmm2[3]
	movd	(%rax,%rdx), %xmm8              # xmm8 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm8            # xmm8 = xmm8[0],xmm2[0],xmm8[1],xmm2[1],xmm8[2],xmm2[2],xmm8[3],xmm2[3],xmm8[4],xmm2[4],xmm8[5],xmm2[5],xmm8[6],xmm2[6],xmm8[7],xmm2[7]
	punpcklwd	%xmm2, %xmm8            # xmm8 = xmm8[0],xmm2[0],xmm8[1],xmm2[1],xmm8[2],xmm2[2],xmm8[3],xmm2[3]
	psubd	%xmm8, %xmm6
	packssdw	%xmm6, %xmm6
	movdqa	%xmm6, %xmm2
	pmulhw	%xmm6, %xmm2
	pmullw	%xmm6, %xmm6
	punpcklwd	%xmm2, %xmm6            # xmm6 = xmm6[0],xmm2[0],xmm6[1],xmm2[1],xmm6[2],xmm2[2],xmm6[3],xmm2[3]
	pshufd	$238, %xmm6, %xmm2              # xmm2 = xmm6[2,3,2,3]
	punpcklqdq	%xmm2, %xmm6            # xmm6 = xmm6[0],xmm2[0]
	paddd	%xmm3, %xmm0
	pshufd	$85, %xmm0, %xmm3               # xmm3 = xmm0[1,1,1,1]
	paddd	%xmm0, %xmm3
	movd	%xmm3, %eax
	paddd	%xmm5, %xmm1
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %ecx
	addl	%eax, %ecx
	paddd	%xmm7, %xmm4
	pshufd	$85, %xmm4, %xmm0               # xmm0 = xmm4[1,1,1,1]
	paddd	%xmm4, %xmm0
	movd	%xmm0, %edx
	addl	%ecx, %edx
	paddd	%xmm2, %xmm6
	pshufd	$85, %xmm6, %xmm0               # xmm0 = xmm6[1,1,1,1]
	paddd	%xmm6, %xmm0
	movd	%xmm0, %eax
	addl	%edx, %eax
	retq
.Lfunc_end30:
	.size	x264_pixel_ssd_4x4, .Lfunc_end30-x264_pixel_ssd_4x4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_satd_16x16
	.type	x264_pixel_satd_16x16,@function
x264_pixel_satd_16x16:                  # @x264_pixel_satd_16x16
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
	movl	%ecx, %ebx
	movq	%rdx, %r15
	movl	%esi, %r14d
	movq	%rdi, %r12
	callq	x264_pixel_satd_8x4
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	leal	(,%r14,4), %eax
	cltq
	leaq	(%r12,%rax), %rdi
	movq	%rax, %rbp
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	leal	(,%rbx,4), %eax
	cltq
	leaq	(%r15,%rax), %rdx
	movq	%rax, %r13
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movl	%r14d, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 32(%rsp)                  # 4-byte Spill
	leaq	8(%r12), %rdi
	leaq	8(%r15), %rdx
	movl	%r14d, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 28(%rsp)                  # 4-byte Spill
	leaq	(%r12,%rbp), %rdi
	addq	$8, %rdi
	leaq	(%r15,%r13), %rdx
	addq	$8, %rdx
	movl	%r14d, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 24(%rsp)                  # 4-byte Spill
	leal	(,%r14,8), %eax
	cltq
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	leaq	(%r12,%rax), %rdi
	leal	(,%rbx,8), %eax
	movslq	%eax, %rbp
	leaq	(%r15,%rbp), %rdx
	movl	%r14d, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %r13d
	movq	8(%rsp), %rax                   # 8-byte Reload
	leal	(%rax,%rax,2), %eax
	cltq
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	leaq	(%r12,%rax), %rdi
	movq	16(%rsp), %rax                  # 8-byte Reload
	leal	(%rax,%rax,2), %eax
	cltq
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	leaq	(%r15,%rax), %rdx
	movl	%r14d, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 16(%rsp)                  # 4-byte Spill
	movq	48(%rsp), %rax                  # 8-byte Reload
	leaq	(%r12,%rax), %rdi
	addq	$8, %rdi
	leaq	(%r15,%rbp), %rdx
	addq	$8, %rdx
	movl	%r14d, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %ebp
	movq	8(%rsp), %rax                   # 8-byte Reload
	leaq	(%r12,%rax), %rdi
	addq	$8, %rdi
	movq	40(%rsp), %rax                  # 8-byte Reload
	leaq	(%r15,%rax), %rdx
	addq	$8, %rdx
	movl	%r14d, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	28(%rsp), %ecx                  # 4-byte Reload
	addl	36(%rsp), %ecx                  # 4-byte Folded Reload
	addl	32(%rsp), %ecx                  # 4-byte Folded Reload
	addl	24(%rsp), %r13d                 # 4-byte Folded Reload
	addl	%ecx, %r13d
	addl	16(%rsp), %ebp                  # 4-byte Folded Reload
	addl	%r13d, %ebp
	addl	%ebp, %eax
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
.Lfunc_end31:
	.size	x264_pixel_satd_16x16, .Lfunc_end31-x264_pixel_satd_16x16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_satd_16x8
	.type	x264_pixel_satd_16x8,@function
x264_pixel_satd_16x8:                   # @x264_pixel_satd_16x8
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
	movl	%ecx, %ebx
	movq	%rdx, %r15
	movl	%esi, %r14d
	movq	%rdi, %r12
	callq	x264_pixel_satd_8x4
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	leal	(,%r14,4), %eax
	cltq
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	leaq	(%r12,%rax), %rdi
	leal	(,%rbx,4), %eax
	movslq	%eax, %r13
	leaq	(%r15,%r13), %rdx
	movl	%r14d, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	leaq	8(%r12), %rdi
	leaq	8(%r15), %rdx
	movl	%r14d, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %ebp
	movq	16(%rsp), %rax                  # 8-byte Reload
	leaq	(%r12,%rax), %rdi
	addq	$8, %rdi
	leaq	(%r15,%r13), %rdx
	addq	$8, %rdx
	movl	%r14d, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	addl	12(%rsp), %ebp                  # 4-byte Folded Reload
	addl	8(%rsp), %ebp                   # 4-byte Folded Reload
	addl	%ebp, %eax
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
.Lfunc_end32:
	.size	x264_pixel_satd_16x8, .Lfunc_end32-x264_pixel_satd_16x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_satd_8x16
	.type	x264_pixel_satd_8x16,@function
x264_pixel_satd_8x16:                   # @x264_pixel_satd_8x16
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
	movl	%ecx, %ebx
	movq	%rdx, %r15
	movl	%esi, %r14d
	movq	%rdi, %r12
	callq	x264_pixel_satd_8x4
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	leal	(,%r14,4), %eax
	movslq	%eax, %rbp
	leaq	(%r12,%rbp), %rdi
	leal	(,%rbx,4), %eax
	cltq
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	leaq	(%r15,%rax), %rdx
	movl	%r14d, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %r13d
	leal	(,%r14,8), %eax
	movslq	%eax, %rdi
	addq	%r12, %rdi
	leal	(,%rbx,8), %eax
	movslq	%eax, %rdx
	addq	%r15, %rdx
	movl	%r14d, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	leal	(%rbp,%rbp,2), %eax
	movslq	%eax, %rdi
	addq	%r12, %rdi
	movq	16(%rsp), %rax                  # 8-byte Reload
	leal	(%rax,%rax,2), %eax
	movslq	%eax, %rdx
	addq	%r15, %rdx
	movl	%r14d, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	addl	12(%rsp), %r13d                 # 4-byte Folded Reload
	addl	8(%rsp), %r13d                  # 4-byte Folded Reload
	addl	%r13d, %eax
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
.Lfunc_end33:
	.size	x264_pixel_satd_8x16, .Lfunc_end33-x264_pixel_satd_8x16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_satd_8x8
	.type	x264_pixel_satd_8x8,@function
x264_pixel_satd_8x8:                    # @x264_pixel_satd_8x8
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
	movl	%ecx, %ebx
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %r12
	callq	x264_pixel_satd_8x4
	movl	%eax, %ebp
	leal	(,%r15,4), %eax
	movslq	%eax, %rdi
	addq	%r12, %rdi
	leal	(,%rbx,4), %eax
	movslq	%eax, %rdx
	addq	%r14, %rdx
	movl	%r15d, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	addl	%ebp, %eax
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
.Lfunc_end34:
	.size	x264_pixel_satd_8x8, .Lfunc_end34-x264_pixel_satd_8x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_satd_8x4
	.type	x264_pixel_satd_8x4,@function
x264_pixel_satd_8x4:                    # @x264_pixel_satd_8x4
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
	movslq	%esi, %rbx
	movslq	%ecx, %r14
	movzbl	(%rdi), %eax
	movzbl	(%rdx), %ecx
	subl	%ecx, %eax
	movzbl	4(%rdi), %r8d
	movzbl	4(%rdx), %ecx
	subl	%ecx, %r8d
	shll	$16, %r8d
	addl	%eax, %r8d
	movzbl	1(%rdi), %eax
	movzbl	1(%rdx), %ecx
	subl	%ecx, %eax
	movzbl	5(%rdi), %ecx
	movzbl	5(%rdx), %esi
	subl	%esi, %ecx
	shll	$16, %ecx
	addl	%eax, %ecx
	movzbl	2(%rdi), %esi
	movzbl	2(%rdx), %eax
	subl	%eax, %esi
	movzbl	6(%rdi), %eax
	movzbl	6(%rdx), %r9d
	subl	%r9d, %eax
	shll	$16, %eax
	addl	%esi, %eax
	movzbl	3(%rdi), %esi
	movzbl	3(%rdx), %r9d
	subl	%r9d, %esi
	movzbl	7(%rdi), %r9d
	movzbl	7(%rdx), %r10d
	subl	%r10d, %r9d
	shll	$16, %r9d
	addl	%esi, %r9d
	leal	(%rcx,%r8), %esi
	subl	%ecx, %r8d
	leal	(%r9,%rax), %ecx
	subl	%r9d, %eax
	leal	(%rcx,%rsi), %r9d
	subl	%ecx, %esi
	movq	%rsi, -8(%rsp)                  # 8-byte Spill
	leal	(%rax,%r8), %ecx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	subl	%eax, %r8d
	leaq	(%rdi,%rbx), %r10
	leaq	(%rdx,%r14), %rbp
	movzbl	(%rdi,%rbx), %eax
	movzbl	(%rdx,%r14), %ecx
	subl	%ecx, %eax
	movzbl	4(%rdi,%rbx), %r11d
	movzbl	4(%rdx,%r14), %ecx
	subl	%ecx, %r11d
	shll	$16, %r11d
	addl	%eax, %r11d
	movzbl	1(%rdi,%rbx), %eax
	movzbl	1(%rdx,%r14), %ecx
	subl	%ecx, %eax
	movzbl	5(%rdi,%rbx), %ecx
	movzbl	5(%rdx,%r14), %esi
	subl	%esi, %ecx
	shll	$16, %ecx
	addl	%eax, %ecx
	movzbl	2(%rdi,%rbx), %esi
	movzbl	2(%rdx,%r14), %eax
	subl	%eax, %esi
	movzbl	6(%rdi,%rbx), %eax
	movzbl	6(%rdx,%r14), %r15d
	subl	%r15d, %eax
	shll	$16, %eax
	addl	%esi, %eax
	movzbl	3(%rdi,%rbx), %esi
	movzbl	3(%rdx,%r14), %r15d
	subl	%r15d, %esi
	movzbl	7(%rdi,%rbx), %edi
	movzbl	7(%rdx,%r14), %edx
	subl	%edx, %edi
	shll	$16, %edi
	addl	%esi, %edi
	leal	(%rcx,%r11), %edx
	subl	%ecx, %r11d
	leal	(%rdi,%rax), %ecx
	subl	%edi, %eax
	leal	(%rcx,%rdx), %esi
	movq	%rsi, -48(%rsp)                 # 8-byte Spill
	subl	%ecx, %edx
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	leal	(%rax,%r11), %ecx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	subl	%eax, %r11d
	movzbl	(%rbx,%r10), %eax
	movzbl	(%r14,%rbp), %ecx
	subl	%ecx, %eax
	movzbl	4(%rbx,%r10), %edi
	movzbl	4(%r14,%rbp), %ecx
	subl	%ecx, %edi
	shll	$16, %edi
	addl	%eax, %edi
	movzbl	1(%rbx,%r10), %eax
	movzbl	1(%r14,%rbp), %ecx
	subl	%ecx, %eax
	movzbl	5(%rbx,%r10), %ecx
	movzbl	5(%r14,%rbp), %edx
	subl	%edx, %ecx
	shll	$16, %ecx
	addl	%eax, %ecx
	movzbl	2(%rbx,%r10), %edx
	movzbl	2(%r14,%rbp), %eax
	subl	%eax, %edx
	movzbl	6(%rbx,%r10), %eax
	movzbl	6(%r14,%rbp), %esi
	subl	%esi, %eax
	shll	$16, %eax
	addl	%edx, %eax
	movzbl	3(%rbx,%r10), %edx
	movzbl	3(%r14,%rbp), %esi
	subl	%esi, %edx
	movzbl	7(%rbx,%r10), %esi
	movzbl	7(%r14,%rbp), %r15d
	subl	%r15d, %esi
	shll	$16, %esi
	addl	%edx, %esi
	leal	(%rcx,%rdi), %r15d
	subl	%ecx, %edi
	leal	(%rsi,%rax), %ecx
	subl	%esi, %eax
	leal	(%rcx,%r15), %esi
	subl	%ecx, %r15d
	leal	(%rax,%rdi), %ecx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	subl	%eax, %edi
	leaq	(%r10,%rbx), %rdx
	addq	%r14, %rbp
	movzbl	(%rbx,%rdx), %eax
	movzbl	(%r14,%rbp), %ecx
	subl	%ecx, %eax
	movzbl	4(%rbx,%rdx), %r10d
	movzbl	4(%r14,%rbp), %ecx
	subl	%ecx, %r10d
	shll	$16, %r10d
	addl	%eax, %r10d
	movzbl	1(%rbx,%rdx), %eax
	movzbl	1(%r14,%rbp), %ecx
	subl	%ecx, %eax
	movzbl	5(%rbx,%rdx), %ecx
	movzbl	5(%r14,%rbp), %r13d
	subl	%r13d, %ecx
	shll	$16, %ecx
	addl	%eax, %ecx
	movzbl	2(%rbx,%rdx), %r13d
	movzbl	2(%r14,%rbp), %eax
	subl	%eax, %r13d
	movzbl	6(%rbx,%rdx), %eax
	movzbl	6(%r14,%rbp), %r12d
	subl	%r12d, %eax
	shll	$16, %eax
	addl	%r13d, %eax
	movzbl	3(%rbx,%rdx), %r12d
	movzbl	3(%r14,%rbp), %r13d
	subl	%r13d, %r12d
	movzbl	7(%rbx,%rdx), %edx
	movzbl	7(%r14,%rbp), %ebx
	subl	%ebx, %edx
	shll	$16, %edx
	addl	%r12d, %edx
	leal	(%rcx,%r10), %ebx
	subl	%ecx, %r10d
	leal	(%rdx,%rax), %ecx
	subl	%edx, %eax
	leal	(%rcx,%rbx), %edx
	subl	%ecx, %ebx
	leal	(%rax,%r10), %ebp
	subl	%eax, %r10d
	movq	-48(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r9), %r14d
	subl	%eax, %r9d
	leal	(%rdx,%rsi), %ecx
	subl	%edx, %esi
	leal	(%rcx,%r14), %eax
	subl	%ecx, %r14d
	leal	(%rsi,%r9), %r13d
	subl	%esi, %r9d
	movl	%eax, %ecx
	shrl	$15, %ecx
	andl	$65537, %ecx                    # imm = 0x10001
	movl	%ecx, %edx
	shll	$16, %edx
	subl	%ecx, %edx
	addl	%edx, %eax
	xorl	%edx, %eax
	movl	%r13d, %ecx
	shrl	$15, %ecx
	andl	$65537, %ecx                    # imm = 0x10001
	movl	%ecx, %edx
	shll	$16, %edx
	subl	%ecx, %edx
	addl	%edx, %r13d
	xorl	%edx, %r13d
	addl	%eax, %r13d
	movl	%r14d, %eax
	shrl	$15, %eax
	andl	$65537, %eax                    # imm = 0x10001
	movl	%eax, %ecx
	shll	$16, %ecx
	subl	%eax, %ecx
	addl	%ecx, %r14d
	xorl	%ecx, %r14d
	movl	%r9d, %eax
	shrl	$15, %eax
	andl	$65537, %eax                    # imm = 0x10001
	movl	%eax, %ecx
	shll	$16, %ecx
	subl	%eax, %ecx
	addl	%ecx, %r9d
	xorl	%ecx, %r9d
	addl	%r14d, %r9d
	addl	%r13d, %r9d
	movq	-24(%rsp), %r12                 # 8-byte Reload
	movq	-32(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r12), %r14d
	subl	%eax, %r12d
	movq	-40(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%rbp), %eax
	subl	%ebp, %ecx
	movq	%rcx, %rdx
	leal	(%rax,%r14), %ecx
	subl	%eax, %r14d
	leal	(%rdx,%r12), %eax
	subl	%edx, %r12d
	movl	%ecx, %edx
	shrl	$15, %edx
	andl	$65537, %edx                    # imm = 0x10001
	movl	%edx, %esi
	shll	$16, %esi
	subl	%edx, %esi
	addl	%esi, %ecx
	xorl	%esi, %ecx
	movl	%eax, %edx
	shrl	$15, %edx
	andl	$65537, %edx                    # imm = 0x10001
	movl	%edx, %esi
	shll	$16, %esi
	subl	%edx, %esi
	addl	%esi, %eax
	xorl	%esi, %eax
	addl	%ecx, %eax
	movl	%r14d, %ecx
	shrl	$15, %ecx
	andl	$65537, %ecx                    # imm = 0x10001
	movl	%ecx, %edx
	shll	$16, %edx
	subl	%ecx, %edx
	addl	%edx, %r14d
	xorl	%edx, %r14d
	addl	%eax, %r14d
	addl	%r9d, %r14d
	movl	%r12d, %eax
	shrl	$15, %eax
	andl	$65537, %eax                    # imm = 0x10001
	movl	%eax, %ecx
	shll	$16, %ecx
	subl	%eax, %ecx
	addl	%ecx, %r12d
	xorl	%ecx, %r12d
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	-16(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdx), %r9d
	subl	%eax, %edx
	leal	(%rbx,%r15), %eax
	subl	%ebx, %r15d
	leal	(%rax,%r9), %ecx
	subl	%eax, %r9d
	leal	(%r15,%rdx), %eax
	subl	%r15d, %edx
	movq	%rdx, %rbx
	movl	%ecx, %edx
	shrl	$15, %edx
	andl	$65537, %edx                    # imm = 0x10001
	movl	%edx, %esi
	shll	$16, %esi
	subl	%edx, %esi
	addl	%esi, %ecx
	xorl	%esi, %ecx
	movl	%eax, %edx
	shrl	$15, %edx
	andl	$65537, %edx                    # imm = 0x10001
	movl	%edx, %esi
	shll	$16, %esi
	subl	%edx, %esi
	addl	%esi, %eax
	xorl	%esi, %eax
	addl	%r12d, %eax
	addl	%ecx, %eax
	movl	%r9d, %ecx
	shrl	$15, %ecx
	andl	$65537, %ecx                    # imm = 0x10001
	movl	%ecx, %edx
	shll	$16, %edx
	subl	%ecx, %edx
	addl	%edx, %r9d
	xorl	%edx, %r9d
	addl	%eax, %r9d
	addl	%r14d, %r9d
	movl	%ebx, %eax
	shrl	$15, %eax
	andl	$65537, %eax                    # imm = 0x10001
	movl	%eax, %ecx
	shll	$16, %ecx
	subl	%eax, %ecx
	addl	%ecx, %ebx
	xorl	%ecx, %ebx
	leal	(%r11,%r8), %eax
	subl	%r11d, %r8d
	leal	(%r10,%rdi), %edx
	subl	%r10d, %edi
	leal	(%rdx,%rax), %ecx
	subl	%edx, %eax
	leal	(%rdi,%r8), %esi
	subl	%edi, %r8d
	movl	%ecx, %edx
	shrl	$15, %edx
	andl	$65537, %edx                    # imm = 0x10001
	movl	%edx, %edi
	shll	$16, %edi
	subl	%edx, %edi
	addl	%edi, %ecx
	xorl	%edi, %ecx
	movl	%esi, %edx
	shrl	$15, %edx
	andl	$65537, %edx                    # imm = 0x10001
	movl	%edx, %edi
	shll	$16, %edi
	subl	%edx, %edi
	addl	%edi, %esi
	xorl	%edi, %esi
	addl	%ebx, %esi
	addl	%ecx, %esi
	movl	%eax, %ecx
	shrl	$15, %ecx
	andl	$65537, %ecx                    # imm = 0x10001
	movl	%ecx, %edx
	shll	$16, %edx
	subl	%ecx, %edx
	addl	%edx, %eax
	xorl	%edx, %eax
	addl	%esi, %eax
	movl	%r8d, %ecx
	shrl	$15, %ecx
	andl	$65537, %ecx                    # imm = 0x10001
	movl	%ecx, %edx
	shll	$16, %edx
	subl	%ecx, %edx
	addl	%edx, %r8d
	xorl	%edx, %r8d
	addl	%eax, %r8d
	addl	%r9d, %r8d
	movzwl	%r8w, %eax
	movl	%r8d, %ecx
	shrl	$16, %ecx
	addl	%ecx, %eax
	shrl	%eax
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
.Lfunc_end35:
	.size	x264_pixel_satd_8x4, .Lfunc_end35-x264_pixel_satd_8x4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_satd_4x8
	.type	x264_pixel_satd_4x8,@function
x264_pixel_satd_4x8:                    # @x264_pixel_satd_4x8
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
	movl	%ecx, %ebx
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %r12
	callq	x264_pixel_satd_4x4
	movl	%eax, %ebp
	leal	(,%r15,4), %eax
	movslq	%eax, %rdi
	addq	%r12, %rdi
	leal	(,%rbx,4), %eax
	movslq	%eax, %rdx
	addq	%r14, %rdx
	movl	%r15d, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_4x4
	addl	%ebp, %eax
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
.Lfunc_end36:
	.size	x264_pixel_satd_4x8, .Lfunc_end36-x264_pixel_satd_4x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_satd_4x4
	.type	x264_pixel_satd_4x4,@function
x264_pixel_satd_4x4:                    # @x264_pixel_satd_4x4
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
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movslq	%esi, %r8
	movslq	%ecx, %r9
	movzbl	(%rdi), %eax
	movzbl	(%rdx), %ecx
	subl	%ecx, %eax
	movzbl	1(%rdi), %ecx
	movzbl	1(%rdx), %esi
	subl	%esi, %ecx
	leal	(%rcx,%rax), %esi
	subl	%ecx, %eax
	shll	$16, %eax
	addl	%esi, %eax
	movzbl	2(%rdi), %esi
	movzbl	2(%rdx), %ecx
	subl	%ecx, %esi
	movzbl	3(%rdi), %ecx
	movzbl	3(%rdx), %r10d
	subl	%r10d, %ecx
	leal	(%rcx,%rsi), %r10d
	subl	%ecx, %esi
	shll	$16, %esi
	addl	%r10d, %esi
	leal	(%rsi,%rax), %ecx
	subl	%esi, %eax
	leaq	(%rdi,%r8), %r11
	leaq	(%rdx,%r9), %rbx
	movzbl	(%rdi,%r8), %esi
	movzbl	(%rdx,%r9), %r10d
	subl	%r10d, %esi
	movzbl	1(%rdi,%r8), %r10d
	movzbl	1(%rdx,%r9), %ebp
	subl	%ebp, %r10d
	leal	(%r10,%rsi), %ebp
	subl	%r10d, %esi
	shll	$16, %esi
	addl	%ebp, %esi
	movzbl	2(%rdi,%r8), %r14d
	movzbl	2(%rdx,%r9), %r10d
	subl	%r10d, %r14d
	movzbl	3(%rdi,%r8), %edi
	movzbl	3(%rdx,%r9), %edx
	subl	%edx, %edi
	leal	(%rdi,%r14), %edx
	subl	%edi, %r14d
	shll	$16, %r14d
	addl	%edx, %r14d
	leal	(%r14,%rsi), %r10d
	subl	%r14d, %esi
	leaq	(%r11,%r8), %r14
	leaq	(%rbx,%r9), %r15
	movzbl	(%r8,%r11), %edx
	movzbl	(%r9,%rbx), %edi
	subl	%edi, %edx
	movzbl	1(%r8,%r11), %edi
	movzbl	1(%r9,%rbx), %ebp
	subl	%ebp, %edi
	leal	(%rdi,%rdx), %ebp
	subl	%edi, %edx
	shll	$16, %edx
	addl	%ebp, %edx
	movzbl	2(%r8,%r11), %edi
	movzbl	2(%r9,%rbx), %ebp
	subl	%ebp, %edi
	movzbl	3(%r8,%r11), %r11d
	movzbl	3(%r9,%rbx), %ebx
	subl	%ebx, %r11d
	leal	(%r11,%rdi), %ebx
	subl	%r11d, %edi
	shll	$16, %edi
	addl	%ebx, %edi
	leal	(%rdi,%rdx), %r11d
	subl	%edi, %edx
	movzbl	(%r8,%r14), %edi
	movzbl	(%r9,%r15), %ebx
	subl	%ebx, %edi
	movzbl	1(%r8,%r14), %ebx
	movzbl	1(%r9,%r15), %ebp
	subl	%ebp, %ebx
	leal	(%rbx,%rdi), %ebp
	subl	%ebx, %edi
	shll	$16, %edi
	addl	%ebp, %edi
	movzbl	2(%r8,%r14), %ebx
	movzbl	2(%r9,%r15), %ebp
	subl	%ebp, %ebx
	movzbl	3(%r8,%r14), %r8d
	movzbl	3(%r9,%r15), %r9d
	subl	%r9d, %r8d
	leal	(%r8,%rbx), %r9d
	subl	%r8d, %ebx
	shll	$16, %ebx
	addl	%r9d, %ebx
	leal	(%rbx,%rdi), %r9d
	subl	%ebx, %edi
	leal	(%r10,%rcx), %r8d
	subl	%r10d, %ecx
	leal	(%r9,%r11), %ebx
	subl	%r9d, %r11d
	leal	(%rbx,%r8), %r10d
	subl	%ebx, %r8d
	leal	(%r11,%rcx), %r9d
	subl	%r11d, %ecx
	movl	%r10d, %r11d
	shrl	$15, %r11d
	andl	$65537, %r11d                   # imm = 0x10001
	movl	%r11d, %ebx
	shll	$16, %ebx
	subl	%r11d, %ebx
	addl	%ebx, %r10d
	xorl	%ebx, %r10d
	movl	%r9d, %r11d
	shrl	$15, %r11d
	andl	$65537, %r11d                   # imm = 0x10001
	movl	%r11d, %ebx
	shll	$16, %ebx
	subl	%r11d, %ebx
	addl	%ebx, %r9d
	xorl	%ebx, %r9d
	addl	%r10d, %r9d
	movl	%r8d, %r10d
	shrl	$15, %r10d
	andl	$65537, %r10d                   # imm = 0x10001
	movl	%r10d, %r11d
	shll	$16, %r11d
	subl	%r10d, %r11d
	addl	%r11d, %r8d
	xorl	%r11d, %r8d
	movl	%ecx, %r10d
	shrl	$15, %r10d
	andl	$65537, %r10d                   # imm = 0x10001
	movl	%r10d, %r11d
	shll	$16, %r11d
	subl	%r10d, %r11d
	addl	%r11d, %ecx
	xorl	%r11d, %ecx
	addl	%r8d, %ecx
	addl	%r9d, %ecx
	movzwl	%cx, %r8d
	shrl	$16, %ecx
	addl	%r8d, %ecx
	leal	(%rsi,%rax), %r8d
	subl	%esi, %eax
	leal	(%rdi,%rdx), %esi
	subl	%edi, %edx
	leal	(%rsi,%r8), %edi
	subl	%esi, %r8d
	leal	(%rdx,%rax), %esi
	subl	%edx, %eax
	movl	%edi, %edx
	shrl	$15, %edx
	andl	$65537, %edx                    # imm = 0x10001
	movl	%edx, %r9d
	shll	$16, %r9d
	subl	%edx, %r9d
	addl	%r9d, %edi
	xorl	%r9d, %edi
	movl	%esi, %edx
	shrl	$15, %edx
	andl	$65537, %edx                    # imm = 0x10001
	movl	%edx, %r9d
	shll	$16, %r9d
	subl	%edx, %r9d
	addl	%r9d, %esi
	xorl	%r9d, %esi
	addl	%edi, %esi
	movl	%r8d, %edx
	shrl	$15, %edx
	andl	$65537, %edx                    # imm = 0x10001
	movl	%edx, %edi
	shll	$16, %edi
	subl	%edx, %edi
	addl	%edi, %r8d
	xorl	%edi, %r8d
	movl	%eax, %edx
	shrl	$15, %edx
	andl	$65537, %edx                    # imm = 0x10001
	movl	%edx, %edi
	shll	$16, %edi
	subl	%edx, %edi
	addl	%edi, %eax
	xorl	%edi, %eax
	addl	%r8d, %eax
	addl	%esi, %eax
	movzwl	%ax, %edx
	shrl	$16, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	shrl	%eax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end37:
	.size	x264_pixel_satd_4x4, .Lfunc_end37-x264_pixel_satd_4x4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_satd_x3_16x16
	.type	x264_pixel_satd_x3_16x16,@function
x264_pixel_satd_x3_16x16:               # @x264_pixel_satd_x3_16x16
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
	movq	%r9, %rbx
	movl	%r8d, %ebp
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rdx
	movq	%rdi, %r12
	movl	$16, %esi
	movl	%r8d, %ecx
	callq	x264_pixel_satd_16x16
	movl	%eax, (%rbx)
	movq	%r12, %rdi
	movl	$16, %esi
	movq	%r15, %rdx
	movl	%ebp, %ecx
	callq	x264_pixel_satd_16x16
	movl	%eax, 4(%rbx)
	movq	%r12, %rdi
	movl	$16, %esi
	movq	%r14, %rdx
	movl	%ebp, %ecx
	callq	x264_pixel_satd_16x16
	movl	%eax, 8(%rbx)
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
.Lfunc_end38:
	.size	x264_pixel_satd_x3_16x16, .Lfunc_end38-x264_pixel_satd_x3_16x16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_satd_x3_16x8
	.type	x264_pixel_satd_x3_16x8,@function
x264_pixel_satd_x3_16x8:                # @x264_pixel_satd_x3_16x8
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
	movq	%r9, 40(%rsp)                   # 8-byte Spill
	movl	%r8d, %r14d
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	%rdx, %r13
	movq	%rsi, %r15
	movq	%rdi, %r12
	movl	$16, %esi
	movq	%r15, %rdx
	movl	%r8d, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	leaq	64(%r12), %rdi
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	leal	(,%r14,4), %eax
	movslq	%eax, %rbp
	leaq	(%r15,%rbp), %rdx
	movl	$16, %esi
	movl	%r14d, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	leaq	8(%r12), %rdi
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	leaq	8(%r15), %rdx
	movl	$16, %esi
	movl	%r14d, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %ebx
	leaq	72(%r12), %rdi
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	leaq	(%r15,%rbp), %rdx
	addq	$8, %rdx
	movl	$16, %esi
	movl	%r14d, %ecx
	callq	x264_pixel_satd_8x4
	addl	8(%rsp), %ebx                   # 4-byte Folded Reload
	addl	12(%rsp), %ebx                  # 4-byte Folded Reload
	addl	%eax, %ebx
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	%ebx, (%rax)
	movq	%r12, %rdi
	movl	$16, %esi
	movq	%r13, %rdx
	movl	%r14d, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	movq	%r13, %rdx
	addq	%rbp, %rdx
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movl	%r14d, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %ebx
	leaq	8(%r13), %rdx
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movl	%r14d, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %r15d
	leaq	8(,%rbp), %rdx
	addq	%r13, %rdx
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movl	%r14d, %ecx
	callq	x264_pixel_satd_8x4
	addl	8(%rsp), %r15d                  # 4-byte Folded Reload
	addl	%ebx, %r15d
	addl	%eax, %r15d
	movq	40(%rsp), %r13                  # 8-byte Reload
	movl	%r15d, 4(%r13)
	movq	%r12, %rdi
	movl	$16, %esi
	movq	48(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %rdx
	movl	%r14d, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	leaq	(%rbx,%rbp), %rdx
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movl	%r14d, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %r12d
	leaq	8(%rbx), %rdx
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movl	%r14d, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %r15d
	leaq	(%rbx,%rbp), %rdx
	addq	$8, %rdx
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movl	%r14d, %ecx
	callq	x264_pixel_satd_8x4
	addl	8(%rsp), %r15d                  # 4-byte Folded Reload
	addl	%r12d, %r15d
	addl	%eax, %r15d
	movl	%r15d, 8(%r13)
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
.Lfunc_end39:
	.size	x264_pixel_satd_x3_16x8, .Lfunc_end39-x264_pixel_satd_x3_16x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_satd_x3_8x16
	.type	x264_pixel_satd_x3_8x16,@function
x264_pixel_satd_x3_8x16:                # @x264_pixel_satd_x3_8x16
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
	movq	%r9, 56(%rsp)                   # 8-byte Spill
	movl	%r8d, %r14d
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r13
	movl	$16, %esi
	movq	%r15, %rdx
	movl	%r8d, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	leaq	64(%r13), %rdi
	movq	%rdi, 48(%rsp)                  # 8-byte Spill
	leal	(,%r14,4), %eax
	movslq	%eax, %rbp
	leaq	(%r15,%rbp), %rdx
	movl	$16, %esi
	movl	%r14d, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %r12d
	leaq	128(%r13), %rdi
	movq	%rdi, 40(%rsp)                  # 8-byte Spill
	leal	(,%r14,8), %eax
	cltq
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	(%r15,%rax), %rdx
	movl	$16, %esi
	movl	%r14d, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	leaq	192(%r13), %rdi
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	leal	(%rbp,%rbp,2), %eax
	cltq
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	addq	%rax, %r15
	movl	$16, %esi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	callq	x264_pixel_satd_8x4
	addl	8(%rsp), %r12d                  # 4-byte Folded Reload
	addl	12(%rsp), %r12d                 # 4-byte Folded Reload
	addl	%eax, %r12d
	movq	56(%rsp), %rax                  # 8-byte Reload
	movl	%r12d, (%rax)
	movq	%r13, %rdi
	movl	$16, %esi
	movq	%rbx, %rdx
	movl	%r14d, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	leaq	(%rbx,%rbp), %rdx
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movl	%r14d, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %r12d
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%rbx,%rax), %rdx
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movl	%r14d, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %r15d
	addq	16(%rsp), %rbx                  # 8-byte Folded Reload
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movq	%rbx, %rdx
	movl	%r14d, %ecx
	callq	x264_pixel_satd_8x4
	addl	8(%rsp), %r12d                  # 4-byte Folded Reload
	addl	%r15d, %r12d
	addl	%eax, %r12d
	movq	56(%rsp), %rbx                  # 8-byte Reload
	movl	%r12d, 4(%rbx)
	movq	%r13, %rdi
	movl	$16, %esi
	movq	64(%rsp), %r13                  # 8-byte Reload
	movq	%r13, %rdx
	movl	%r14d, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %r12d
	addq	%r13, %rbp
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movq	%rbp, %rdx
	movl	%r14d, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %ebp
	movq	32(%rsp), %rdx                  # 8-byte Reload
	addq	%r13, %rdx
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movl	%r14d, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %r15d
	addq	16(%rsp), %r13                  # 8-byte Folded Reload
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movq	%r13, %rdx
	movl	%r14d, %ecx
	callq	x264_pixel_satd_8x4
	addl	%r12d, %ebp
	addl	%r15d, %ebp
	addl	%eax, %ebp
	movl	%ebp, 8(%rbx)
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
.Lfunc_end40:
	.size	x264_pixel_satd_x3_8x16, .Lfunc_end40-x264_pixel_satd_x3_8x16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_satd_x3_8x8
	.type	x264_pixel_satd_x3_8x8,@function
x264_pixel_satd_x3_8x8:                 # @x264_pixel_satd_x3_8x8
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
	movq	%r9, 8(%rsp)                    # 8-byte Spill
	movl	%r8d, %r14d
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, %rbp
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movl	$16, %esi
	movq	%rbx, %rdx
	movl	%r8d, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	leaq	64(%r13), %r15
	leal	(,%r14,4), %eax
	movslq	%eax, %r12
	addq	%r12, %rbx
	movq	%r15, %rdi
	movl	$16, %esi
	movq	%rbx, %rdx
	movl	%r14d, %ecx
	callq	x264_pixel_satd_8x4
	addl	4(%rsp), %eax                   # 4-byte Folded Reload
	movq	8(%rsp), %rbx                   # 8-byte Reload
	movl	%eax, (%rbx)
	movq	%r13, %rdi
	movl	$16, %esi
	movq	%rbp, %rdx
	movl	%r14d, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	addq	%r12, %rbp
	movq	%r15, %rdi
	movl	$16, %esi
	movq	%rbp, %rdx
	movl	%r14d, %ecx
	callq	x264_pixel_satd_8x4
	addl	4(%rsp), %eax                   # 4-byte Folded Reload
	movq	%rbx, %rbp
	movl	%eax, 4(%rbx)
	movq	%r13, %rdi
	movl	$16, %esi
	movq	16(%rsp), %r13                  # 8-byte Reload
	movq	%r13, %rdx
	movl	%r14d, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %ebx
	addq	%r12, %r13
	movq	%r15, %rdi
	movl	$16, %esi
	movq	%r13, %rdx
	movl	%r14d, %ecx
	callq	x264_pixel_satd_8x4
	addl	%ebx, %eax
	movl	%eax, 8(%rbp)
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
.Lfunc_end41:
	.size	x264_pixel_satd_x3_8x8, .Lfunc_end41-x264_pixel_satd_x3_8x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_satd_x3_8x4
	.type	x264_pixel_satd_x3_8x4,@function
x264_pixel_satd_x3_8x4:                 # @x264_pixel_satd_x3_8x4
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
	movq	%r9, %rbx
	movl	%r8d, %ebp
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rdx
	movq	%rdi, %r12
	movl	$16, %esi
	movl	%r8d, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, (%rbx)
	movq	%r12, %rdi
	movl	$16, %esi
	movq	%r15, %rdx
	movl	%ebp, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 4(%rbx)
	movq	%r12, %rdi
	movl	$16, %esi
	movq	%r14, %rdx
	movl	%ebp, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 8(%rbx)
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
.Lfunc_end42:
	.size	x264_pixel_satd_x3_8x4, .Lfunc_end42-x264_pixel_satd_x3_8x4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_satd_x3_4x8
	.type	x264_pixel_satd_x3_4x8,@function
x264_pixel_satd_x3_4x8:                 # @x264_pixel_satd_x3_4x8
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
	movq	%r9, 8(%rsp)                    # 8-byte Spill
	movl	%r8d, %r14d
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, %rbp
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movl	$16, %esi
	movq	%rbx, %rdx
	movl	%r8d, %ecx
	callq	x264_pixel_satd_4x4
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	leaq	64(%r13), %r15
	leal	(,%r14,4), %eax
	movslq	%eax, %r12
	addq	%r12, %rbx
	movq	%r15, %rdi
	movl	$16, %esi
	movq	%rbx, %rdx
	movl	%r14d, %ecx
	callq	x264_pixel_satd_4x4
	addl	4(%rsp), %eax                   # 4-byte Folded Reload
	movq	8(%rsp), %rbx                   # 8-byte Reload
	movl	%eax, (%rbx)
	movq	%r13, %rdi
	movl	$16, %esi
	movq	%rbp, %rdx
	movl	%r14d, %ecx
	callq	x264_pixel_satd_4x4
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	addq	%r12, %rbp
	movq	%r15, %rdi
	movl	$16, %esi
	movq	%rbp, %rdx
	movl	%r14d, %ecx
	callq	x264_pixel_satd_4x4
	addl	4(%rsp), %eax                   # 4-byte Folded Reload
	movq	%rbx, %rbp
	movl	%eax, 4(%rbx)
	movq	%r13, %rdi
	movl	$16, %esi
	movq	16(%rsp), %r13                  # 8-byte Reload
	movq	%r13, %rdx
	movl	%r14d, %ecx
	callq	x264_pixel_satd_4x4
	movl	%eax, %ebx
	addq	%r12, %r13
	movq	%r15, %rdi
	movl	$16, %esi
	movq	%r13, %rdx
	movl	%r14d, %ecx
	callq	x264_pixel_satd_4x4
	addl	%ebx, %eax
	movl	%eax, 8(%rbp)
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
.Lfunc_end43:
	.size	x264_pixel_satd_x3_4x8, .Lfunc_end43-x264_pixel_satd_x3_4x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_satd_x3_4x4
	.type	x264_pixel_satd_x3_4x4,@function
x264_pixel_satd_x3_4x4:                 # @x264_pixel_satd_x3_4x4
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
	movq	%r9, %rbx
	movl	%r8d, %ebp
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rdx
	movq	%rdi, %r12
	movl	$16, %esi
	movl	%r8d, %ecx
	callq	x264_pixel_satd_4x4
	movl	%eax, (%rbx)
	movq	%r12, %rdi
	movl	$16, %esi
	movq	%r15, %rdx
	movl	%ebp, %ecx
	callq	x264_pixel_satd_4x4
	movl	%eax, 4(%rbx)
	movq	%r12, %rdi
	movl	$16, %esi
	movq	%r14, %rdx
	movl	%ebp, %ecx
	callq	x264_pixel_satd_4x4
	movl	%eax, 8(%rbx)
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
.Lfunc_end44:
	.size	x264_pixel_satd_x3_4x4, .Lfunc_end44-x264_pixel_satd_x3_4x4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_satd_x4_16x16
	.type	x264_pixel_satd_x4_16x16,@function
x264_pixel_satd_x4_16x16:               # @x264_pixel_satd_x4_16x16
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
	movl	%r9d, %ebx
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %rdx
	movq	%rdi, %r13
	movq	64(%rsp), %rbp
	movl	$16, %esi
	movl	%r9d, %ecx
	callq	x264_pixel_satd_16x16
	movl	%eax, (%rbp)
	movq	%r13, %rdi
	movl	$16, %esi
	movq	%r12, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_16x16
	movl	%eax, 4(%rbp)
	movq	%r13, %rdi
	movl	$16, %esi
	movq	%r15, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_16x16
	movl	%eax, 8(%rbp)
	movq	%r13, %rdi
	movl	$16, %esi
	movq	%r14, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_16x16
	movl	%eax, 12(%rbp)
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
.Lfunc_end45:
	.size	x264_pixel_satd_x4_16x16, .Lfunc_end45-x264_pixel_satd_x4_16x16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_satd_x4_16x8
	.type	x264_pixel_satd_x4_16x8,@function
x264_pixel_satd_x4_16x8:                # @x264_pixel_satd_x4_16x8
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
	movl	%r9d, %ebx
	movq	%r8, 64(%rsp)                   # 8-byte Spill
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	%rsi, %r13
	movq	%rdi, %r15
	movl	$16, %esi
	movq	%r13, %rdx
	movl	%r9d, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	leaq	64(%r15), %rdi
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	leal	(,%rbx,4), %eax
	movslq	%eax, %rbp
	movq	%r13, %rdx
	addq	%rbp, %rdx
	movl	$16, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	leaq	8(%r15), %r12
	leaq	8(%r13), %rdx
	movq	%r12, %rdi
	movl	$16, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %r14d
	leaq	72(%r15), %rdi
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movq	%r15, 40(%rsp)                  # 8-byte Spill
	leaq	8(,%rbp), %rdx
	addq	%r13, %rdx
	movl	$16, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	addl	12(%rsp), %r14d                 # 4-byte Folded Reload
	addl	8(%rsp), %r14d                  # 4-byte Folded Reload
	addl	%eax, %r14d
	movq	128(%rsp), %rax
	movl	%r14d, (%rax)
	movq	%r15, %rdi
	movl	$16, %esi
	movq	16(%rsp), %r14                  # 8-byte Reload
	movq	%r14, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	leaq	(%r14,%rbp), %rdx
	movq	%r14, %r15
	movq	32(%rsp), %r14                  # 8-byte Reload
	movq	%r14, %rdi
	movl	$16, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	leaq	8(%r15), %rdx
	movq	%r12, 48(%rsp)                  # 8-byte Spill
	movq	%r12, %rdi
	movl	$16, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %r13d
	leaq	(%r15,%rbp), %rdx
	addq	$8, %rdx
	movq	24(%rsp), %r15                  # 8-byte Reload
	movq	%r15, %rdi
	movl	$16, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	addl	12(%rsp), %r13d                 # 4-byte Folded Reload
	addl	8(%rsp), %r13d                  # 4-byte Folded Reload
	addl	%eax, %r13d
	movq	128(%rsp), %rax
	movl	%r13d, 4(%rax)
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movq	56(%rsp), %r13                  # 8-byte Reload
	movq	%r13, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 16(%rsp)                  # 4-byte Spill
	movq	%r13, %rdx
	addq	%rbp, %rdx
	movq	%r14, %rdi
	movl	$16, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %r14d
	leaq	8(%r13), %rdx
	movq	%r12, %rdi
	movl	$16, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %r12d
	leaq	8(,%rbp), %rdx
	addq	%r13, %rdx
	movq	%r15, %rdi
	movl	$16, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	addl	16(%rsp), %r12d                 # 4-byte Folded Reload
	addl	%r14d, %r12d
	addl	%eax, %r12d
	movq	128(%rsp), %rax
	movl	%r12d, 8(%rax)
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movq	64(%rsp), %r14                  # 8-byte Reload
	movq	%r14, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %r12d
	leaq	(%r14,%rbp), %rdx
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %r13d
	leaq	8(%r14), %rdx
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %r15d
	leaq	(%r14,%rbp), %rdx
	addq	$8, %rdx
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	addl	%r12d, %r15d
	addl	%r13d, %r15d
	addl	%eax, %r15d
	movq	128(%rsp), %rax
	movl	%r15d, 12(%rax)
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
.Lfunc_end46:
	.size	x264_pixel_satd_x4_16x8, .Lfunc_end46-x264_pixel_satd_x4_16x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_satd_x4_8x16
	.type	x264_pixel_satd_x4_8x16,@function
x264_pixel_satd_x4_8x16:                # @x264_pixel_satd_x4_8x16
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
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movq	%r8, 80(%rsp)                   # 8-byte Spill
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r15
	movl	$16, %esi
	movq	%r12, %rdx
	movl	%r9d, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	leaq	64(%r15), %rdi
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	movq	%r15, %r13
	leal	(,%rbx,4), %eax
	cltq
	leaq	(%r12,%rax), %rdx
	movq	%rax, %r15
	movl	$16, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %ebp
	leaq	128(%r13), %rdi
	movq	%rdi, 64(%rsp)                  # 8-byte Spill
	leal	(,%rbx,8), %eax
	cltq
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	leaq	(%r12,%rax), %rdx
	movl	$16, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	leaq	192(%r13), %rdi
	movq	%rdi, 40(%rsp)                  # 8-byte Spill
	movq	%r13, 48(%rsp)                  # 8-byte Spill
	leal	(%r15,%r15,2), %eax
	movq	%r15, 56(%rsp)                  # 8-byte Spill
	cltq
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	addq	%rax, %r12
	movl	$16, %esi
	movq	%r12, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	addl	4(%rsp), %ebp                   # 4-byte Folded Reload
	addl	20(%rsp), %ebp                  # 4-byte Folded Reload
	addl	%eax, %ebp
	movq	144(%rsp), %rax
	movl	%ebp, (%rax)
	movq	%r13, %rdi
	movl	$16, %esi
	movq	%r14, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	leaq	(%r14,%r15), %rdx
	movq	32(%rsp), %r15                  # 8-byte Reload
	movq	%r15, %rdi
	movl	$16, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %r12d
	movq	24(%rsp), %r13                  # 8-byte Reload
	leaq	(%r14,%r13), %rdx
	movq	64(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %ebp
	addq	8(%rsp), %r14                   # 8-byte Folded Reload
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movq	%r14, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	addl	4(%rsp), %r12d                  # 4-byte Folded Reload
	addl	%ebp, %r12d
	addl	%eax, %r12d
	movq	144(%rsp), %rax
	movl	%r12d, 4(%rax)
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movq	72(%rsp), %rbp                  # 8-byte Reload
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	movq	56(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rbp), %rdx
	movq	%r15, %rdi
	movl	$16, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %r14d
	movq	%rbp, %rdx
	addq	%r13, %rdx
	movq	64(%rsp), %r15                  # 8-byte Reload
	movq	%r15, %rdi
	movl	$16, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %r12d
	addq	8(%rsp), %rbp                   # 8-byte Folded Reload
	movq	40(%rsp), %r13                  # 8-byte Reload
	movq	%r13, %rdi
	movl	$16, %esi
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	addl	4(%rsp), %r14d                  # 4-byte Folded Reload
	addl	%r12d, %r14d
	addl	%eax, %r14d
	movq	144(%rsp), %rax
	movl	%r14d, 8(%rax)
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movq	80(%rsp), %r12                  # 8-byte Reload
	movq	%r12, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %ebp
	movq	56(%rsp), %rdx                  # 8-byte Reload
	addq	%r12, %rdx
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %r14d
	movq	24(%rsp), %rdx                  # 8-byte Reload
	addq	%r12, %rdx
	movq	%r15, %rdi
	movl	$16, %esi
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %r15d
	addq	8(%rsp), %r12                   # 8-byte Folded Reload
	movq	%r13, %rdi
	movl	$16, %esi
	movq	%r12, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	addl	%ebp, %r14d
	addl	%r15d, %r14d
	addl	%eax, %r14d
	movq	144(%rsp), %rax
	movl	%r14d, 12(%rax)
	addq	$88, %rsp
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
.Lfunc_end47:
	.size	x264_pixel_satd_x4_8x16, .Lfunc_end47-x264_pixel_satd_x4_8x16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_satd_x4_8x8
	.type	x264_pixel_satd_x4_8x8,@function
x264_pixel_satd_x4_8x8:                 # @x264_pixel_satd_x4_8x8
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
	movl	%r9d, %ebx
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movq	%rcx, %r13
	movq	%rdx, %rbp
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$16, %esi
	movq	%r14, %rdx
	movl	%r9d, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	leaq	64(%r15), %rdi
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	leal	(,%rbx,4), %eax
	movslq	%eax, %r12
	addq	%r12, %r14
	movl	$16, %esi
	movq	%r14, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	addl	4(%rsp), %eax                   # 4-byte Folded Reload
	movq	80(%rsp), %rcx
	movl	%eax, (%rcx)
	movq	%r15, %rdi
	movl	$16, %esi
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	addq	%r12, %rbp
	movq	8(%rsp), %r14                   # 8-byte Reload
	movq	%r14, %rdi
	movl	$16, %esi
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	addl	4(%rsp), %eax                   # 4-byte Folded Reload
	movq	80(%rsp), %rcx
	movl	%eax, 4(%rcx)
	movq	%r15, %rdi
	movl	$16, %esi
	movq	%r13, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %ebp
	addq	%r12, %r13
	movq	%r14, %rdi
	movl	$16, %esi
	movq	%r13, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	addl	%ebp, %eax
	movq	80(%rsp), %r13
	movl	%eax, 8(%r13)
	movq	%r15, %rdi
	movl	$16, %esi
	movq	16(%rsp), %r15                  # 8-byte Reload
	movq	%r15, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, %ebp
	addq	%r12, %r15
	movq	%r14, %rdi
	movl	$16, %esi
	movq	%r15, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	addl	%ebp, %eax
	movl	%eax, 12(%r13)
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
.Lfunc_end48:
	.size	x264_pixel_satd_x4_8x8, .Lfunc_end48-x264_pixel_satd_x4_8x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_satd_x4_8x4
	.type	x264_pixel_satd_x4_8x4,@function
x264_pixel_satd_x4_8x4:                 # @x264_pixel_satd_x4_8x4
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
	movl	%r9d, %ebx
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %rdx
	movq	%rdi, %r13
	movq	64(%rsp), %rbp
	movl	$16, %esi
	movl	%r9d, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, (%rbp)
	movq	%r13, %rdi
	movl	$16, %esi
	movq	%r12, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 4(%rbp)
	movq	%r13, %rdi
	movl	$16, %esi
	movq	%r15, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 8(%rbp)
	movq	%r13, %rdi
	movl	$16, %esi
	movq	%r14, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_8x4
	movl	%eax, 12(%rbp)
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
.Lfunc_end49:
	.size	x264_pixel_satd_x4_8x4, .Lfunc_end49-x264_pixel_satd_x4_8x4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_satd_x4_4x8
	.type	x264_pixel_satd_x4_4x8,@function
x264_pixel_satd_x4_4x8:                 # @x264_pixel_satd_x4_4x8
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
	movl	%r9d, %ebx
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movq	%rcx, %r13
	movq	%rdx, %rbp
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$16, %esi
	movq	%r14, %rdx
	movl	%r9d, %ecx
	callq	x264_pixel_satd_4x4
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	leaq	64(%r15), %rdi
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	leal	(,%rbx,4), %eax
	movslq	%eax, %r12
	addq	%r12, %r14
	movl	$16, %esi
	movq	%r14, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_4x4
	addl	4(%rsp), %eax                   # 4-byte Folded Reload
	movq	80(%rsp), %rcx
	movl	%eax, (%rcx)
	movq	%r15, %rdi
	movl	$16, %esi
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_4x4
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	addq	%r12, %rbp
	movq	8(%rsp), %r14                   # 8-byte Reload
	movq	%r14, %rdi
	movl	$16, %esi
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_4x4
	addl	4(%rsp), %eax                   # 4-byte Folded Reload
	movq	80(%rsp), %rcx
	movl	%eax, 4(%rcx)
	movq	%r15, %rdi
	movl	$16, %esi
	movq	%r13, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_4x4
	movl	%eax, %ebp
	addq	%r12, %r13
	movq	%r14, %rdi
	movl	$16, %esi
	movq	%r13, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_4x4
	addl	%ebp, %eax
	movq	80(%rsp), %r13
	movl	%eax, 8(%r13)
	movq	%r15, %rdi
	movl	$16, %esi
	movq	16(%rsp), %r15                  # 8-byte Reload
	movq	%r15, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_4x4
	movl	%eax, %ebp
	addq	%r12, %r15
	movq	%r14, %rdi
	movl	$16, %esi
	movq	%r15, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_4x4
	addl	%ebp, %eax
	movl	%eax, 12(%r13)
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
.Lfunc_end50:
	.size	x264_pixel_satd_x4_4x8, .Lfunc_end50-x264_pixel_satd_x4_4x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_satd_x4_4x4
	.type	x264_pixel_satd_x4_4x4,@function
x264_pixel_satd_x4_4x4:                 # @x264_pixel_satd_x4_4x4
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
	movl	%r9d, %ebx
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %rdx
	movq	%rdi, %r13
	movq	64(%rsp), %rbp
	movl	$16, %esi
	movl	%r9d, %ecx
	callq	x264_pixel_satd_4x4
	movl	%eax, (%rbp)
	movq	%r13, %rdi
	movl	$16, %esi
	movq	%r12, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_4x4
	movl	%eax, 4(%rbp)
	movq	%r13, %rdi
	movl	$16, %esi
	movq	%r15, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_4x4
	movl	%eax, 8(%rbp)
	movq	%r13, %rdi
	movl	$16, %esi
	movq	%r14, %rdx
	movl	%ebx, %ecx
	callq	x264_pixel_satd_4x4
	movl	%eax, 12(%rbp)
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
.Lfunc_end51:
	.size	x264_pixel_satd_x4_4x4, .Lfunc_end51-x264_pixel_satd_x4_4x4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_hadamard_ac_16x16
	.type	x264_pixel_hadamard_ac_16x16,@function
x264_pixel_hadamard_ac_16x16:           # @x264_pixel_hadamard_ac_16x16
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
	movl	%esi, %ebx
	movq	%rdi, %r14
	callq	pixel_hadamard_ac
	movq	%rax, %r15
	leaq	8(%r14), %rdi
	movl	%ebx, %esi
	callq	pixel_hadamard_ac
	movq	%rax, %r12
	addq	%r15, %r12
	leal	(,%rbx,8), %eax
	movslq	%eax, %r13
	leaq	(%r14,%r13), %rdi
	movl	%ebx, %esi
	callq	pixel_hadamard_ac
	movq	%rax, %r15
	addq	%r12, %r15
	leaq	(%r14,%r13), %rdi
	addq	$8, %rdi
	movl	%ebx, %esi
	callq	pixel_hadamard_ac
	addq	%r15, %rax
	movq	%rax, %rcx
	shrq	$2, %rcx
	movabsq	$4611686014132420608, %rdx      # imm = 0x3FFFFFFF00000000
	andq	%rcx, %rdx
	shrl	%eax
	orq	%rdx, %rax
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
.Lfunc_end52:
	.size	x264_pixel_hadamard_ac_16x16, .Lfunc_end52-x264_pixel_hadamard_ac_16x16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_hadamard_ac_16x8
	.type	x264_pixel_hadamard_ac_16x8,@function
x264_pixel_hadamard_ac_16x8:            # @x264_pixel_hadamard_ac_16x8
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
	movl	%esi, %ebx
	movq	%rdi, %r14
	callq	pixel_hadamard_ac
	movq	%rax, %r15
	addq	$8, %r14
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	pixel_hadamard_ac
	addq	%r15, %rax
	movq	%rax, %rcx
	shrq	$2, %rcx
	movabsq	$4611686014132420608, %rdx      # imm = 0x3FFFFFFF00000000
	andq	%rcx, %rdx
	shrl	%eax
	orq	%rdx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end53:
	.size	x264_pixel_hadamard_ac_16x8, .Lfunc_end53-x264_pixel_hadamard_ac_16x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_hadamard_ac_8x16
	.type	x264_pixel_hadamard_ac_8x16,@function
x264_pixel_hadamard_ac_8x16:            # @x264_pixel_hadamard_ac_8x16
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
	movl	%esi, %ebx
	movq	%rdi, %r14
	callq	pixel_hadamard_ac
	movq	%rax, %r15
	leal	(,%rbx,8), %eax
	movslq	%eax, %rdi
	addq	%r14, %rdi
	movl	%ebx, %esi
	callq	pixel_hadamard_ac
	addq	%r15, %rax
	movq	%rax, %rcx
	shrq	$2, %rcx
	movabsq	$4611686014132420608, %rdx      # imm = 0x3FFFFFFF00000000
	andq	%rcx, %rdx
	shrl	%eax
	orq	%rdx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end54:
	.size	x264_pixel_hadamard_ac_8x16, .Lfunc_end54-x264_pixel_hadamard_ac_8x16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_hadamard_ac_8x8
	.type	x264_pixel_hadamard_ac_8x8,@function
x264_pixel_hadamard_ac_8x8:             # @x264_pixel_hadamard_ac_8x8
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	pixel_hadamard_ac
	movq	%rax, %rcx
	shrq	$2, %rcx
	movabsq	$4611686014132420608, %rdx      # imm = 0x3FFFFFFF00000000
	andq	%rcx, %rdx
	shrl	%eax
	orq	%rdx, %rax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end55:
	.size	x264_pixel_hadamard_ac_8x8, .Lfunc_end55-x264_pixel_hadamard_ac_8x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_ads4
	.type	x264_pixel_ads4,@function
x264_pixel_ads4:                        # @x264_pixel_ads4
	.cfi_startproc
# %bb.0:                                # %entry
	testl	%r9d, %r9d
	jle	.LBB56_1
# %bb.3:                                # %for.body.lr.ph
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movl	24(%rsp), %r10d
	movslq	%edx, %rax
	movl	%r9d, %edx
	leaq	(%rsi,%rax,2), %r9
	addq	$16, %r9
	xorl	%r11d, %r11d
	xorl	%eax, %eax
	jmp	.LBB56_4
	.p2align	4, 0x90
.LBB56_6:                               # %if.end
                                        #   in Loop: Header=BB56_4 Depth=1
	incq	%r11
	cmpq	%r11, %rdx
	je	.LBB56_7
.LBB56_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi,%r11,2), %ebx
	movd	%ebx, %xmm0
	pinsrw	$2, 16(%rsi,%r11,2), %xmm0
	pinsrw	$4, -16(%r9,%r11,2), %xmm0
	movdqu	(%rdi), %xmm1
	pinsrw	$6, (%r9,%r11,2), %xmm0
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psrad	$31, %xmm0
	pxor	%xmm0, %xmm1
	psubd	%xmm0, %xmm1
	movzwl	(%rcx,%r11,2), %ebx
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %ebp
	addl	%ebx, %ebp
	cmpl	%r10d, %ebp
	jge	.LBB56_6
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB56_4 Depth=1
	movslq	%eax, %rbx
	incl	%eax
	movw	%r11w, (%r8,%rbx,2)
	jmp	.LBB56_6
.LBB56_7:
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %rbp
	retq
.LBB56_1:
	xorl	%eax, %eax
	retq
.Lfunc_end56:
	.size	x264_pixel_ads4, .Lfunc_end56-x264_pixel_ads4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_ads2
	.type	x264_pixel_ads2,@function
x264_pixel_ads2:                        # @x264_pixel_ads2
	.cfi_startproc
# %bb.0:                                # %entry
	testl	%r9d, %r9d
	jle	.LBB57_1
# %bb.3:                                # %for.body.lr.ph
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movl	32(%rsp), %r10d
	movslq	%edx, %rax
	movl	%r9d, %edx
	leaq	(%rsi,%rax,2), %r9
	xorl	%r11d, %r11d
	xorl	%eax, %eax
	jmp	.LBB57_4
	.p2align	4, 0x90
.LBB57_6:                               # %if.end
                                        #   in Loop: Header=BB57_4 Depth=1
	incq	%r11
	cmpq	%r11, %rdx
	je	.LBB57_7
.LBB57_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi,%r11,2), %ebx
	movl	(%rdi), %ebp
	subl	%ebx, %ebp
	movl	4(%rdi), %ebx
	movl	%ebp, %r14d
	negl	%r14d
	cmovsl	%ebp, %r14d
	movzwl	(%r9,%r11,2), %ebp
	subl	%ebp, %ebx
	movl	%ebx, %ebp
	negl	%ebp
	cmovsl	%ebx, %ebp
	movzwl	(%rcx,%r11,2), %ebx
	addl	%r14d, %ebx
	addl	%ebp, %ebx
	cmpl	%r10d, %ebx
	jge	.LBB57_6
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB57_4 Depth=1
	movslq	%eax, %rbx
	incl	%eax
	movw	%r11w, (%r8,%rbx,2)
	jmp	.LBB57_6
.LBB57_7:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %rbp
	retq
.LBB57_1:
	xorl	%eax, %eax
	retq
.Lfunc_end57:
	.size	x264_pixel_ads2, .Lfunc_end57-x264_pixel_ads2
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_ads1
	.type	x264_pixel_ads1,@function
x264_pixel_ads1:                        # @x264_pixel_ads1
	.cfi_startproc
# %bb.0:                                # %entry
	testl	%r9d, %r9d
	jle	.LBB58_1
# %bb.3:                                # %for.body.preheader
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	16(%rsp), %edx
	movl	%r9d, %r9d
	xorl	%r10d, %r10d
	xorl	%eax, %eax
	jmp	.LBB58_4
	.p2align	4, 0x90
.LBB58_6:                               # %if.end
                                        #   in Loop: Header=BB58_4 Depth=1
	incq	%r10
	cmpq	%r10, %r9
	je	.LBB58_7
.LBB58_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rdi), %r11d
	movzwl	(%rsi,%r10,2), %ebx
	subl	%ebx, %r11d
	movl	%r11d, %ebx
	negl	%ebx
	cmovsl	%r11d, %ebx
	movzwl	(%rcx,%r10,2), %r11d
	addl	%ebx, %r11d
	cmpl	%edx, %r11d
	jge	.LBB58_6
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB58_4 Depth=1
	movslq	%eax, %r11
	incl	%eax
	movw	%r10w, (%r8,%r11,2)
	jmp	.LBB58_6
.LBB58_7:
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.LBB58_1:
	xorl	%eax, %eax
	retq
.Lfunc_end58:
	.size	x264_pixel_ads1, .Lfunc_end58-x264_pixel_ads1
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_sa8d_16x16
	.type	x264_pixel_sa8d_16x16,@function
x264_pixel_sa8d_16x16:                  # @x264_pixel_sa8d_16x16
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
	movl	%ecx, %ebx
	movq	%rdx, %r15
	movl	%esi, %r14d
	movq	%rdi, %r12
	callq	sa8d_8x8
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	leaq	8(%r12), %rdi
	leaq	8(%r15), %rdx
	movl	%r14d, %esi
	movl	%ebx, %ecx
	callq	sa8d_8x8
	movl	%eax, %r13d
	leal	(,%r14,8), %eax
	cltq
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	leaq	(%r12,%rax), %rdi
	leal	(,%rbx,8), %eax
	movslq	%eax, %rbp
	leaq	(%r15,%rbp), %rdx
	movl	%r14d, %esi
	movl	%ebx, %ecx
	callq	sa8d_8x8
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	leaq	(%r12,%rax), %rdi
	addq	$8, %rdi
	leaq	(%r15,%rbp), %rdx
	addq	$8, %rdx
	movl	%r14d, %esi
	movl	%ebx, %ecx
	callq	sa8d_8x8
                                        # kill: def $eax killed $eax def $rax
	addl	12(%rsp), %r13d                 # 4-byte Folded Reload
	addl	8(%rsp), %r13d                  # 4-byte Folded Reload
	addl	%r13d, %eax
	addl	$2, %eax
	sarl	$2, %eax
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
.Lfunc_end59:
	.size	x264_pixel_sa8d_16x16, .Lfunc_end59-x264_pixel_sa8d_16x16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_sa8d_8x8
	.type	x264_pixel_sa8d_8x8,@function
x264_pixel_sa8d_8x8:                    # @x264_pixel_sa8d_8x8
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	sa8d_8x8
	addl	$2, %eax
	sarl	$2, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end60:
	.size	x264_pixel_sa8d_8x8, .Lfunc_end60-x264_pixel_sa8d_8x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_var_16x16
	.type	x264_pixel_var_16x16,@function
x264_pixel_var_16x16:                   # @x264_pixel_var_16x16
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	%esi, %rcx
	addq	$15, %rdi
	xorl	%eax, %eax
	movl	$16, %edx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB61_1:                               # %for.cond1.preheader
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-15(%rdi), %r8d
	addl	%r8d, %esi
	imull	%r8d, %r8d
	addl	%eax, %r8d
	movzbl	-14(%rdi), %r10d
	movl	%r10d, %r9d
	imull	%r10d, %r9d
	movzbl	-13(%rdi), %eax
	addl	%eax, %r10d
	addl	%esi, %r10d
	imull	%eax, %eax
	addl	%r9d, %eax
	addl	%r8d, %eax
	movzbl	-12(%rdi), %esi
	movl	%esi, %r8d
	imull	%esi, %r8d
	movzbl	-11(%rdi), %r11d
	addl	%r11d, %esi
	imull	%r11d, %r11d
	addl	%r8d, %r11d
	movzbl	-10(%rdi), %r9d
	addl	%r9d, %esi
	addl	%r10d, %esi
	imull	%r9d, %r9d
	addl	%r11d, %r9d
	addl	%eax, %r9d
	movzbl	-9(%rdi), %eax
	movl	%eax, %r8d
	imull	%eax, %r8d
	movzbl	-8(%rdi), %r10d
	addl	%r10d, %eax
	imull	%r10d, %r10d
	addl	%r8d, %r10d
	movzbl	-7(%rdi), %r11d
	addl	%r11d, %eax
	imull	%r11d, %r11d
	addl	%r10d, %r11d
	movzbl	-6(%rdi), %r8d
	addl	%r8d, %eax
	addl	%esi, %eax
	imull	%r8d, %r8d
	addl	%r11d, %r8d
	addl	%r9d, %r8d
	movzbl	-5(%rdi), %esi
	movl	%esi, %r9d
	imull	%esi, %r9d
	movzbl	-4(%rdi), %r10d
	addl	%r10d, %esi
	imull	%r10d, %r10d
	addl	%r9d, %r10d
	movzbl	-3(%rdi), %r9d
	addl	%r9d, %esi
	imull	%r9d, %r9d
	addl	%r10d, %r9d
	movzbl	-2(%rdi), %r10d
	addl	%r10d, %esi
	imull	%r10d, %r10d
	addl	%r9d, %r10d
	movzbl	-1(%rdi), %r9d
	addl	%r9d, %esi
	addl	%eax, %esi
	imull	%r9d, %r9d
	addl	%r10d, %r9d
	addl	%r8d, %r9d
	movzbl	(%rdi), %eax
	addl	%eax, %esi
	imull	%eax, %eax
	addl	%r9d, %eax
	addq	%rcx, %rdi
	decl	%edx
	jne	.LBB61_1
# %bb.2:                                # %for.cond.cleanup
	movl	%esi, %ecx
	shlq	$32, %rax
	orq	%rcx, %rax
	retq
.Lfunc_end61:
	.size	x264_pixel_var_16x16, .Lfunc_end61-x264_pixel_var_16x16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_pixel_var_8x8
	.type	x264_pixel_var_8x8,@function
x264_pixel_var_8x8:                     # @x264_pixel_var_8x8
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	%esi, %rax
	movzbl	(%rdi), %edx
	movl	%edx, %ecx
	imull	%edx, %ecx
	movzbl	1(%rdi), %esi
	addl	%esi, %edx
	imull	%esi, %esi
	addl	%ecx, %esi
	movzbl	2(%rdi), %r10d
	movl	%r10d, %r8d
	imull	%r10d, %r8d
	movzbl	3(%rdi), %ecx
	addl	%ecx, %r10d
	addl	%edx, %r10d
	imull	%ecx, %ecx
	addl	%r8d, %ecx
	addl	%esi, %ecx
	movzbl	4(%rdi), %r8d
	movl	%r8d, %edx
	imull	%r8d, %edx
	movzbl	5(%rdi), %esi
	addl	%esi, %r8d
	imull	%esi, %esi
	addl	%edx, %esi
	movzbl	6(%rdi), %r9d
	addl	%r9d, %r8d
	addl	%r10d, %r8d
	imull	%r9d, %r9d
	addl	%esi, %r9d
	addl	%ecx, %r9d
	movzbl	7(%rdi), %edx
	movl	%edx, %esi
	imull	%edx, %esi
	leaq	(%rdi,%rax), %rcx
	movzbl	(%rdi,%rax), %r10d
	addl	%r10d, %edx
	imull	%r10d, %r10d
	addl	%esi, %r10d
	movzbl	1(%rdi,%rax), %esi
	addl	%esi, %edx
	addl	%r8d, %edx
	imull	%esi, %esi
	addl	%r10d, %esi
	addl	%r9d, %esi
	movzbl	2(%rdi,%rax), %r8d
	movl	%r8d, %r9d
	imull	%r8d, %r9d
	movzbl	3(%rdi,%rax), %r10d
	addl	%r10d, %r8d
	imull	%r10d, %r10d
	addl	%r9d, %r10d
	movzbl	4(%rdi,%rax), %r11d
	addl	%r11d, %r8d
	imull	%r11d, %r11d
	addl	%r10d, %r11d
	movzbl	5(%rdi,%rax), %r9d
	addl	%r9d, %r8d
	addl	%edx, %r8d
	imull	%r9d, %r9d
	addl	%r11d, %r9d
	addl	%esi, %r9d
	movzbl	6(%rdi,%rax), %esi
	movl	%esi, %edx
	imull	%esi, %edx
	movzbl	7(%rdi,%rax), %edi
	addl	%edi, %esi
	imull	%edi, %edi
	addl	%edx, %edi
	leaq	(%rcx,%rax), %rdx
	movzbl	(%rax,%rcx), %r10d
	addl	%r10d, %esi
	imull	%r10d, %r10d
	addl	%edi, %r10d
	movzbl	1(%rax,%rcx), %edi
	addl	%edi, %esi
	imull	%edi, %edi
	addl	%r10d, %edi
	movzbl	2(%rax,%rcx), %r10d
	addl	%r10d, %esi
	addl	%r8d, %esi
	imull	%r10d, %r10d
	addl	%edi, %r10d
	addl	%r9d, %r10d
	movzbl	3(%rax,%rcx), %edi
	movl	%edi, %r8d
	imull	%edi, %r8d
	movzbl	4(%rax,%rcx), %r9d
	addl	%r9d, %edi
	imull	%r9d, %r9d
	addl	%r8d, %r9d
	movzbl	5(%rax,%rcx), %r8d
	addl	%r8d, %edi
	imull	%r8d, %r8d
	addl	%r9d, %r8d
	movzbl	6(%rax,%rcx), %r9d
	addl	%r9d, %edi
	imull	%r9d, %r9d
	addl	%r8d, %r9d
	movzbl	7(%rax,%rcx), %ecx
	addl	%ecx, %edi
	addl	%esi, %edi
	imull	%ecx, %ecx
	addl	%r9d, %ecx
	addl	%r10d, %ecx
	leaq	(%rdx,%rax), %rsi
	movzbl	(%rax,%rdx), %r8d
	movl	%r8d, %r9d
	imull	%r8d, %r9d
	movzbl	1(%rax,%rdx), %r10d
	addl	%r10d, %r8d
	imull	%r10d, %r10d
	addl	%r9d, %r10d
	movzbl	2(%rax,%rdx), %r9d
	addl	%r9d, %r8d
	imull	%r9d, %r9d
	addl	%r10d, %r9d
	movzbl	3(%rax,%rdx), %r10d
	addl	%r10d, %r8d
	imull	%r10d, %r10d
	addl	%r9d, %r10d
	movzbl	4(%rax,%rdx), %r9d
	addl	%r9d, %r8d
	addl	%edi, %r8d
	imull	%r9d, %r9d
	addl	%r10d, %r9d
	addl	%ecx, %r9d
	movzbl	5(%rax,%rdx), %edi
	movl	%edi, %ecx
	imull	%edi, %ecx
	movzbl	6(%rax,%rdx), %r10d
	addl	%r10d, %edi
	imull	%r10d, %r10d
	addl	%ecx, %r10d
	movzbl	7(%rax,%rdx), %edx
	addl	%edx, %edi
	imull	%edx, %edx
	addl	%r10d, %edx
	leaq	(%rsi,%rax), %rcx
	movzbl	(%rax,%rsi), %r10d
	addl	%r10d, %edi
	imull	%r10d, %r10d
	addl	%edx, %r10d
	movzbl	1(%rax,%rsi), %edx
	addl	%edx, %edi
	imull	%edx, %edx
	addl	%r10d, %edx
	movzbl	2(%rax,%rsi), %r10d
	addl	%r10d, %edi
	addl	%r8d, %edi
	imull	%r10d, %r10d
	addl	%edx, %r10d
	addl	%r9d, %r10d
	movzbl	3(%rax,%rsi), %r8d
	movl	%r8d, %edx
	imull	%r8d, %edx
	movzbl	4(%rax,%rsi), %r9d
	addl	%r9d, %r8d
	imull	%r9d, %r9d
	addl	%edx, %r9d
	movzbl	5(%rax,%rsi), %edx
	addl	%edx, %r8d
	imull	%edx, %edx
	addl	%r9d, %edx
	movzbl	6(%rax,%rsi), %r9d
	addl	%r9d, %r8d
	imull	%r9d, %r9d
	addl	%edx, %r9d
	movzbl	7(%rax,%rsi), %r11d
	addl	%r11d, %r8d
	imull	%r11d, %r11d
	addl	%r9d, %r11d
	leaq	(%rcx,%rax), %rdx
	movzbl	(%rax,%rcx), %esi
	addl	%esi, %r8d
	addl	%edi, %r8d
	imull	%esi, %esi
	addl	%r11d, %esi
	addl	%r10d, %esi
	movzbl	1(%rax,%rcx), %edi
	movl	%edi, %r9d
	imull	%edi, %r9d
	movzbl	2(%rax,%rcx), %r10d
	addl	%r10d, %edi
	imull	%r10d, %r10d
	addl	%r9d, %r10d
	movzbl	3(%rax,%rcx), %r9d
	addl	%r9d, %edi
	imull	%r9d, %r9d
	addl	%r10d, %r9d
	movzbl	4(%rax,%rcx), %r10d
	addl	%r10d, %edi
	imull	%r10d, %r10d
	addl	%r9d, %r10d
	movzbl	5(%rax,%rcx), %r11d
	addl	%r11d, %edi
	imull	%r11d, %r11d
	addl	%r10d, %r11d
	movzbl	6(%rax,%rcx), %r9d
	addl	%r9d, %edi
	addl	%r8d, %edi
	imull	%r9d, %r9d
	addl	%r11d, %r9d
	addl	%esi, %r9d
	movzbl	7(%rax,%rcx), %esi
	movl	%esi, %r8d
	imull	%esi, %r8d
	leaq	(%rdx,%rax), %rcx
	movzbl	(%rax,%rdx), %r10d
	addl	%r10d, %esi
	imull	%r10d, %r10d
	addl	%r8d, %r10d
	movzbl	1(%rax,%rdx), %r8d
	addl	%r8d, %esi
	imull	%r8d, %r8d
	addl	%r10d, %r8d
	movzbl	2(%rax,%rdx), %r10d
	addl	%r10d, %esi
	imull	%r10d, %r10d
	addl	%r8d, %r10d
	movzbl	3(%rax,%rdx), %r11d
	addl	%r11d, %esi
	imull	%r11d, %r11d
	addl	%r10d, %r11d
	movzbl	4(%rax,%rdx), %r8d
	addl	%r8d, %esi
	addl	%edi, %esi
	imull	%r8d, %r8d
	addl	%r11d, %r8d
	addl	%r9d, %r8d
	movzbl	5(%rax,%rdx), %edi
	movl	%edi, %r9d
	imull	%edi, %r9d
	movzbl	6(%rax,%rdx), %r10d
	addl	%r10d, %edi
	imull	%r10d, %r10d
	addl	%r9d, %r10d
	movzbl	7(%rax,%rdx), %edx
	addl	%edx, %edi
	imull	%edx, %edx
	addl	%r10d, %edx
	movzbl	(%rax,%rcx), %r9d
	addl	%r9d, %edi
	imull	%r9d, %r9d
	addl	%edx, %r9d
	movzbl	1(%rax,%rcx), %edx
	addl	%edx, %edi
	imull	%edx, %edx
	addl	%r9d, %edx
	movzbl	2(%rax,%rcx), %r9d
	addl	%r9d, %edi
	imull	%r9d, %r9d
	addl	%edx, %r9d
	movzbl	3(%rax,%rcx), %edx
	addl	%edx, %edi
	addl	%esi, %edi
	imull	%edx, %edx
	addl	%r9d, %edx
	addl	%r8d, %edx
	movzbl	4(%rax,%rcx), %esi
	movl	%esi, %r8d
	imull	%esi, %r8d
	movzbl	5(%rax,%rcx), %r9d
	addl	%r9d, %esi
	imull	%r9d, %r9d
	addl	%r8d, %r9d
	movzbl	6(%rax,%rcx), %r8d
	addl	%r8d, %esi
	imull	%r8d, %r8d
	addl	%r9d, %r8d
	movzbl	7(%rax,%rcx), %eax
	addl	%eax, %esi
	addl	%edi, %esi
	imull	%eax, %eax
	addl	%r8d, %eax
	addl	%edx, %eax
	shlq	$32, %rax
	orq	%rsi, %rax
	retq
.Lfunc_end62:
	.size	x264_pixel_var_8x8, .Lfunc_end62-x264_pixel_var_8x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function ssim_4x4x2_core
	.type	ssim_4x4x2_core,@function
ssim_4x4x2_core:                        # @ssim_4x4x2_core
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
	movq	%r8, -24(%rsp)                  # 8-byte Spill
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	movslq	%esi, %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movslq	%ecx, %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movb	$1, %cl
	xorl	%eax, %eax
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB63_1:                               # %for.cond1.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movl	%ecx, -60(%rsp)                 # 4-byte Spill
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	-40(%rsp), %r13                 # 8-byte Reload
	leaq	(%rax,%r13), %r14
	movq	-32(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rcx,%rax), %r15
	movzbl	(%r13,%rax), %r10d
	movzbl	(%rcx,%rax), %r9d
	movl	%r10d, %eax
	imull	%r10d, %eax
	movl	%r9d, %edx
	imull	%r9d, %edx
	addl	%eax, %edx
	movl	%r9d, %eax
	imull	%r10d, %eax
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	movzbl	1(%r13,%rsi), %r8d
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	movzbl	1(%rcx,%rsi), %edi
	addl	%r8d, %r10d
	addl	%edi, %r9d
	movl	%edi, %r11d
	imull	%r8d, %edi
	imull	%r8d, %r8d
	imull	%r11d, %r11d
	addl	%r8d, %r11d
	addl	%edx, %r11d
	addl	%eax, %edi
	movq	-72(%rsp), %rax                 # 8-byte Reload
	movzbl	2(%r13,%rax), %r12d
	movq	-72(%rsp), %rax                 # 8-byte Reload
	movzbl	2(%rcx,%rax), %edx
	movl	%r12d, %eax
	imull	%r12d, %eax
	movl	%edx, %ebx
	imull	%edx, %ebx
	addl	%eax, %ebx
	movl	%edx, %eax
	imull	%r12d, %eax
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	movzbl	3(%r13,%rsi), %ebp
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	movzbl	3(%rcx,%rsi), %r8d
	addl	%ebp, %r12d
	addl	%r10d, %r12d
	addl	%r8d, %edx
	addl	%r9d, %edx
	movl	%r8d, %r9d
	imull	%ebp, %r8d
	movl	%ebp, %r13d
	imull	%ebp, %r13d
	addl	%ebx, %r13d
	addl	%r11d, %r13d
	imull	%r9d, %r9d
	addl	%eax, %r8d
	addl	%edi, %r8d
	movq	-48(%rsp), %rcx                 # 8-byte Reload
	leaq	(%r14,%rcx), %r11
	movzbl	(%rcx,%r14), %r10d
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	leaq	(%r15,%rsi), %rbx
	movzbl	(%rsi,%r15), %ebp
	movl	%r10d, %eax
	imull	%r10d, %eax
	addl	%r9d, %eax
	movl	%ebp, %edi
	imull	%ebp, %edi
	addl	%eax, %edi
	addl	%r13d, %edi
	movl	%ebp, %eax
	imull	%r10d, %eax
	movzbl	1(%rcx,%r14), %r13d
	movzbl	1(%rsi,%r15), %r9d
	addl	%r13d, %r10d
	addl	%r12d, %r10d
	addl	%r9d, %ebp
	addl	%edx, %ebp
	movl	%r9d, %r12d
	imull	%r13d, %r9d
	imull	%r13d, %r13d
	imull	%r12d, %r12d
	addl	%r13d, %r12d
	addl	%eax, %r9d
	addl	%r8d, %r9d
	movzbl	2(%rcx,%r14), %r13d
	movzbl	2(%rsi,%r15), %edx
	movl	%r13d, %eax
	imull	%r13d, %eax
	addl	%r12d, %eax
	movl	%edx, %r12d
	imull	%edx, %r12d
	addl	%eax, %r12d
	addl	%edi, %r12d
	movl	%edx, %r8d
	imull	%r13d, %r8d
	movzbl	3(%rcx,%r14), %r14d
	movzbl	3(%rsi,%r15), %edi
	addl	%r14d, %r13d
	addl	%edi, %edx
	movl	%edi, %eax
	imull	%r14d, %edi
	imull	%r14d, %r14d
	imull	%eax, %eax
	addl	%r14d, %eax
	addl	%r8d, %edi
	movzbl	(%rcx,%r11), %r14d
	movzbl	(%rsi,%rbx), %r8d
	addl	%r14d, %r13d
	addl	%r10d, %r13d
	addl	%r8d, %edx
	addl	%ebp, %edx
	movl	%r8d, %r10d
	imull	%r14d, %r8d
	imull	%r14d, %r14d
	addl	%eax, %r14d
	imull	%r10d, %r10d
	addl	%r14d, %r10d
	addl	%edi, %r8d
	addl	%r9d, %r8d
	movzbl	1(%rcx,%r11), %edi
	movzbl	1(%rsi,%rbx), %ebp
	movl	%edi, %r14d
	imull	%edi, %r14d
	addl	%r10d, %r14d
	addl	%r12d, %r14d
	movl	%ebp, %r9d
	imull	%ebp, %r9d
	movl	%ebp, %r10d
	imull	%edi, %r10d
	movzbl	2(%rcx,%r11), %r15d
	movzbl	2(%rsi,%rbx), %r12d
	addl	%r15d, %edi
	addl	%r12d, %ebp
	movl	%r12d, %eax
	imull	%r15d, %r12d
	imull	%r15d, %r15d
	addl	%r9d, %r15d
	leaq	(%r11,%rcx), %r9
	movq	%r9, -16(%rsp)                  # 8-byte Spill
	imull	%eax, %eax
	addl	%r15d, %eax
	leaq	(%rbx,%rsi), %r9
	addl	%r10d, %r12d
	movzbl	3(%rcx,%r11), %r15d
	movzbl	3(%rsi,%rbx), %r11d
	addl	%r15d, %edi
	addl	%r13d, %edi
	addl	%r11d, %ebp
	addl	%edx, %ebp
	movl	%r11d, %r10d
	imull	%r15d, %r11d
	imull	%r15d, %r15d
	addl	%eax, %r15d
	imull	%r10d, %r10d
	addl	%r15d, %r10d
	addl	%r14d, %r10d
	addl	%r12d, %r11d
	addl	%r8d, %r11d
	movq	-16(%rsp), %r13                 # 8-byte Reload
	movzbl	(%rcx,%r13), %r8d
	movzbl	(%rsi,%r9), %ebx
	movl	%r8d, %eax
	imull	%r8d, %eax
	movl	%ebx, %edx
	imull	%ebx, %edx
	addl	%eax, %edx
	movl	%ebx, %r15d
	imull	%r8d, %r15d
	movzbl	1(%rcx,%r13), %r12d
	movzbl	1(%rsi,%r9), %r14d
	addl	%r12d, %r8d
	addl	%r14d, %ebx
	movl	%r14d, %eax
	imull	%r12d, %r14d
	imull	%r12d, %r12d
	addl	%edx, %r12d
	imull	%eax, %eax
	addl	%r12d, %eax
	addl	%r15d, %r14d
	movzbl	2(%rcx,%r13), %r15d
	addl	%r15d, %r8d
	addl	%edi, %r8d
	movzbl	2(%rsi,%r9), %edx
	addl	%edx, %ebx
	addl	%ebp, %ebx
	movl	%edx, %edi
	imull	%r15d, %edx
	movl	%r15d, %ebp
	imull	%r15d, %ebp
	addl	%eax, %ebp
	addl	%r10d, %ebp
	addl	%r14d, %edx
	imull	%edi, %edi
	addl	%r11d, %edx
	movzbl	3(%rcx,%r13), %eax
	movzbl	3(%rsi,%r9), %ecx
	addl	%eax, %r8d
	addl	%ecx, %ebx
	movl	%ecx, %r9d
	imull	%eax, %ecx
	imull	%eax, %eax
	addl	%edi, %eax
	imull	%r9d, %r9d
	addl	%eax, %r9d
	addl	%ebp, %r9d
	addl	%edx, %ecx
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	shlq	$4, %rdx
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movl	%r8d, (%rax,%rdx)
	movl	%ebx, 4(%rax,%rdx)
	movl	%r9d, 8(%rax,%rdx)
	movl	%ecx, 12(%rax,%rdx)
	movq	-72(%rsp), %rax                 # 8-byte Reload
	addq	$4, %rax
	movl	$1, %edx
	testb	$1, -60(%rsp)                   # 1-byte Folded Reload
	movl	$0, %ecx
	jne	.LBB63_1
# %bb.2:                                # %for.cond.cleanup
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
.Lfunc_end63:
	.size	ssim_4x4x2_core, .Lfunc_end63-ssim_4x4x2_core
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function ssim_end4
	.type	ssim_end4,@function
ssim_end4:                              # @ssim_end4
	.cfi_startproc
# %bb.0:                                # %entry
	testl	%edx, %edx
	jle	.LBB64_1
# %bb.3:                                # %for.body.preheader
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
	movl	%edx, %eax
	movq	(%rdi), %xmm3                   # xmm3 = mem[0],zero
	movq	(%rsi), %xmm1                   # xmm1 = mem[0],zero
	movl	8(%rdi), %edx
	movl	12(%rdi), %r8d
	movl	8(%rsi), %r9d
	movl	12(%rsi), %r10d
	shlq	$4, %rax
	xorps	%xmm0, %xmm0
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB64_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	addl	%r8d, %r10d
	addl	%edx, %r9d
	paddd	%xmm1, %xmm3
	movq	16(%rdi,%rcx), %xmm2            # xmm2 = mem[0],zero
	paddd	%xmm2, %xmm3
	movq	16(%rsi,%rcx), %xmm1            # xmm1 = mem[0],zero
	paddd	%xmm1, %xmm3
	movl	24(%rdi,%rcx), %edx
	movl	28(%rdi,%rcx), %r8d
	addl	%edx, %r9d
	movl	24(%rsi,%rcx), %r11d
	movl	28(%rsi,%rcx), %ebx
	addl	%r11d, %r9d
	addl	%r8d, %r10d
	addl	%ebx, %r10d
	shll	$6, %r9d
	movd	%xmm3, %r14d
	movl	%r14d, %r15d
	imull	%r15d, %r15d
	pshufd	$85, %xmm3, %xmm3               # xmm3 = xmm3[1,1,1,1]
	movd	%xmm3, %r12d
	imull	%r12d, %r14d
	imull	%r12d, %r12d
	subl	%r12d, %r9d
	subl	%r15d, %r9d
	leal	416(,%r14,2), %ebp
	xorps	%xmm3, %xmm3
	cvtsi2ss	%ebp, %xmm3
	shll	$7, %r10d
	addl	%r14d, %r14d
	subl	%r14d, %r10d
	addl	$235963, %r10d                  # imm = 0x399BB
	xorps	%xmm4, %xmm4
	cvtsi2ss	%r10d, %xmm4
	mulss	%xmm3, %xmm4
	leal	(%r12,%r15), %r10d
	addl	$416, %r10d                     # imm = 0x1A0
	xorps	%xmm3, %xmm3
	cvtsi2ss	%r10d, %xmm3
	addl	$235963, %r9d                   # imm = 0x399BB
	xorps	%xmm5, %xmm5
	cvtsi2ss	%r9d, %xmm5
	mulss	%xmm3, %xmm5
	divss	%xmm5, %xmm4
	addss	%xmm4, %xmm0
	addq	$16, %rcx
	movl	%ebx, %r10d
	movl	%r11d, %r9d
	movdqa	%xmm2, %xmm3
	cmpq	%rcx, %rax
	jne	.LBB64_4
# %bb.5:
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
.LBB64_1:
	xorps	%xmm0, %xmm0
	retq
.Lfunc_end64:
	.size	ssim_end4, .Lfunc_end64-ssim_end4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function pixel_var2_8x8
	.type	pixel_var2_8x8,@function
pixel_var2_8x8:                         # @pixel_var2_8x8
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movslq	%esi, %rsi
	movslq	%ecx, %r9
	xorl	%eax, %eax
	movl	$8, %r10d
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB65_1:                               # %for.cond1.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %xmm1                   # xmm1 = mem[0],zero
	punpcklbw	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	movdqa	%xmm1, %xmm2
	punpcklwd	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	punpckhwd	%xmm0, %xmm1            # xmm1 = xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	movq	(%rdx), %xmm3                   # xmm3 = mem[0],zero
	punpcklbw	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	movdqa	%xmm3, %xmm4
	punpcklwd	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	psubd	%xmm4, %xmm2
	punpckhwd	%xmm0, %xmm3            # xmm3 = xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	psubd	%xmm3, %xmm1
	movd	%xmm2, %r11d
	imull	%r11d, %r11d
	addl	%eax, %r11d
	pshufd	$85, %xmm2, %xmm3               # xmm3 = xmm2[1,1,1,1]
	movd	%xmm3, %eax
	imull	%eax, %eax
	addl	%r11d, %eax
	pshufd	$238, %xmm2, %xmm3              # xmm3 = xmm2[2,3,2,3]
	movd	%xmm3, %r11d
	imull	%r11d, %r11d
	pshufd	$255, %xmm2, %xmm3              # xmm3 = xmm2[3,3,3,3]
	movd	%xmm3, %ebx
	imull	%ebx, %ebx
	addl	%r11d, %ebx
	addl	%eax, %ebx
	movd	%xmm1, %eax
	imull	%eax, %eax
	pshufd	$85, %xmm1, %xmm3               # xmm3 = xmm1[1,1,1,1]
	movd	%xmm3, %r11d
	imull	%r11d, %r11d
	addl	%eax, %r11d
	pshufd	$238, %xmm1, %xmm3              # xmm3 = xmm1[2,3,2,3]
	movd	%xmm3, %ebp
	imull	%ebp, %ebp
	addl	%r11d, %ebp
	addl	%ebx, %ebp
	paddd	%xmm1, %xmm2
	pshufd	$238, %xmm2, %xmm3              # xmm3 = xmm2[2,3,2,3]
	paddd	%xmm2, %xmm3
	pshufd	$85, %xmm3, %xmm2               # xmm2 = xmm3[1,1,1,1]
	paddd	%xmm3, %xmm2
	movd	%xmm2, %eax
	addl	%eax, %ecx
	pshufd	$255, %xmm1, %xmm1              # xmm1 = xmm1[3,3,3,3]
	movd	%xmm1, %eax
	imull	%eax, %eax
	addl	%ebp, %eax
	addq	%rsi, %rdi
	addq	%r9, %rdx
	decl	%r10d
	jne	.LBB65_1
# %bb.2:                                # %for.cond.cleanup
	imull	%ecx, %ecx
	shrl	$6, %ecx
	movl	%eax, (%r8)
	subl	%ecx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end65:
	.size	pixel_var2_8x8, .Lfunc_end65-pixel_var2_8x8
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function pixel_hadamard_ac
.LCPI66_0:
	.quad	-9223372034707292160            # 0x8000000080000000
	.quad	-9223372034707292160            # 0x8000000080000000
.LCPI66_1:
	.quad	-9223372034707292152            # 0x8000000080000008
	.quad	-9223372034707292152            # 0x8000000080000008
.LCPI66_2:
	.long	65537                           # 0x10001
	.long	65537                           # 0x10001
	.long	65537                           # 0x10001
	.long	65537                           # 0x10001
.LCPI66_3:
	.long	2147483655                      # 0x80000007
	.long	2147483655                      # 0x80000007
	.long	2147483655                      # 0x80000007
	.long	2147483655                      # 0x80000007
	.text
	.p2align	4, 0x90
	.type	pixel_hadamard_ac,@function
pixel_hadamard_ac:                      # @pixel_hadamard_ac
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
	movslq	%esi, %rcx
	movzbl	(%rdi), %eax
	movzbl	1(%rdi), %edx
	leal	(%rdx,%rax), %esi
	subl	%edx, %eax
	shll	$16, %eax
	orl	%esi, %eax
	movzbl	2(%rdi), %edx
	movzbl	3(%rdi), %esi
	leal	(%rsi,%rdx), %r8d
	subl	%esi, %edx
	shll	$16, %edx
	orl	%r8d, %edx
	leal	(%rdx,%rax), %esi
	movl	%esi, -128(%rsp)
	subl	%edx, %eax
	movl	%eax, -112(%rsp)
	movzbl	4(%rdi), %eax
	movzbl	5(%rdi), %edx
	leal	(%rdx,%rax), %esi
	subl	%edx, %eax
	shll	$16, %eax
	orl	%esi, %eax
	movzbl	6(%rdi), %edx
	movzbl	7(%rdi), %esi
	leal	(%rsi,%rdx), %r8d
	subl	%esi, %edx
	shll	$16, %edx
	orl	%r8d, %edx
	leal	(%rdx,%rax), %esi
	movl	%esi, -96(%rsp)
	subl	%edx, %eax
	movl	%eax, -80(%rsp)
	leaq	(%rdi,%rcx), %rax
	movzbl	(%rdi,%rcx), %edx
	movzbl	1(%rdi,%rcx), %esi
	leal	(%rsi,%rdx), %r8d
	subl	%esi, %edx
	shll	$16, %edx
	orl	%r8d, %edx
	movzbl	2(%rdi,%rcx), %esi
	movzbl	3(%rdi,%rcx), %r8d
	leal	(%r8,%rsi), %r9d
	subl	%r8d, %esi
	shll	$16, %esi
	orl	%r9d, %esi
	leal	(%rsi,%rdx), %r8d
	movl	%r8d, -124(%rsp)
	subl	%esi, %edx
	movl	%edx, -108(%rsp)
	movzbl	4(%rdi,%rcx), %edx
	movzbl	5(%rdi,%rcx), %esi
	leal	(%rsi,%rdx), %r8d
	subl	%esi, %edx
	shll	$16, %edx
	orl	%r8d, %edx
	movzbl	6(%rdi,%rcx), %esi
	movzbl	7(%rdi,%rcx), %edi
	leal	(%rdi,%rsi), %r8d
	subl	%edi, %esi
	shll	$16, %esi
	orl	%r8d, %esi
	leal	(%rsi,%rdx), %edi
	movl	%edi, -92(%rsp)
	subl	%esi, %edx
	movl	%edx, -76(%rsp)
	leaq	(%rax,%rcx), %rsi
	movzbl	(%rcx,%rax), %edx
	movzbl	1(%rcx,%rax), %edi
	leal	(%rdi,%rdx), %r8d
	subl	%edi, %edx
	shll	$16, %edx
	orl	%r8d, %edx
	movzbl	2(%rcx,%rax), %edi
	movzbl	3(%rcx,%rax), %r8d
	leal	(%r8,%rdi), %r9d
	subl	%r8d, %edi
	shll	$16, %edi
	orl	%r9d, %edi
	leal	(%rdi,%rdx), %r8d
	movl	%r8d, -120(%rsp)
	subl	%edi, %edx
	movl	%edx, -104(%rsp)
	movzbl	4(%rcx,%rax), %edx
	movzbl	5(%rcx,%rax), %edi
	leal	(%rdi,%rdx), %r8d
	subl	%edi, %edx
	shll	$16, %edx
	orl	%r8d, %edx
	movzbl	6(%rcx,%rax), %edi
	movzbl	7(%rcx,%rax), %eax
	leal	(%rax,%rdi), %r8d
	subl	%eax, %edi
	shll	$16, %edi
	orl	%r8d, %edi
	leal	(%rdi,%rdx), %eax
	movl	%eax, -88(%rsp)
	subl	%edi, %edx
	movl	%edx, -72(%rsp)
	leaq	(%rsi,%rcx), %rdx
	movzbl	(%rcx,%rsi), %eax
	movzbl	1(%rcx,%rsi), %edi
	leal	(%rdi,%rax), %r8d
	subl	%edi, %eax
	shll	$16, %eax
	orl	%r8d, %eax
	movzbl	2(%rcx,%rsi), %edi
	movzbl	3(%rcx,%rsi), %r8d
	leal	(%r8,%rdi), %r9d
	subl	%r8d, %edi
	shll	$16, %edi
	orl	%r9d, %edi
	leal	(%rdi,%rax), %r8d
	movl	%r8d, -116(%rsp)
	subl	%edi, %eax
	movl	%eax, -100(%rsp)
	movzbl	4(%rcx,%rsi), %edi
	movzbl	5(%rcx,%rsi), %eax
	leal	(%rax,%rdi), %r8d
	subl	%eax, %edi
	shll	$16, %edi
	orl	%r8d, %edi
	movzbl	6(%rcx,%rsi), %eax
	movzbl	7(%rcx,%rsi), %esi
	leal	(%rsi,%rax), %r8d
	subl	%esi, %eax
	shll	$16, %eax
	orl	%r8d, %eax
	leal	(%rax,%rdi), %esi
	movl	%esi, -84(%rsp)
	subl	%eax, %edi
	leaq	-68(%rsp), %rax
	movl	%edi, -68(%rsp)
	leaq	(%rdx,%rcx), %rsi
	movzbl	(%rcx,%rdx), %edi
	movzbl	1(%rcx,%rdx), %r8d
	leal	(%r8,%rdi), %r9d
	subl	%r8d, %edi
	shll	$16, %edi
	orl	%r9d, %edi
	movzbl	2(%rcx,%rdx), %r8d
	movzbl	3(%rcx,%rdx), %r9d
	leal	(%r9,%r8), %r10d
	subl	%r9d, %r8d
	shll	$16, %r8d
	orl	%r10d, %r8d
	leal	(%r8,%rdi), %r9d
	movl	%r9d, -64(%rsp)
	subl	%r8d, %edi
	movl	%edi, -48(%rsp)
	movzbl	4(%rcx,%rdx), %edi
	movzbl	5(%rcx,%rdx), %r8d
	leal	(%r8,%rdi), %r9d
	subl	%r8d, %edi
	shll	$16, %edi
	orl	%r9d, %edi
	movzbl	6(%rcx,%rdx), %r8d
	movzbl	7(%rcx,%rdx), %edx
	leal	(%rdx,%r8), %r9d
	subl	%edx, %r8d
	shll	$16, %r8d
	orl	%r9d, %r8d
	leal	(%r8,%rdi), %edx
	movl	%edx, -32(%rsp)
	subl	%r8d, %edi
	movl	%edi, -16(%rsp)
	leaq	(%rsi,%rcx), %rdx
	movzbl	(%rcx,%rsi), %edi
	movzbl	1(%rcx,%rsi), %r8d
	leal	(%r8,%rdi), %r9d
	subl	%r8d, %edi
	shll	$16, %edi
	orl	%r9d, %edi
	movzbl	2(%rcx,%rsi), %r8d
	movzbl	3(%rcx,%rsi), %r9d
	leal	(%r9,%r8), %r10d
	subl	%r9d, %r8d
	shll	$16, %r8d
	orl	%r10d, %r8d
	leal	(%r8,%rdi), %r9d
	movl	%r9d, -60(%rsp)
	subl	%r8d, %edi
	movl	%edi, -44(%rsp)
	movzbl	4(%rcx,%rsi), %edi
	movzbl	5(%rcx,%rsi), %r8d
	leal	(%r8,%rdi), %r9d
	subl	%r8d, %edi
	shll	$16, %edi
	orl	%r9d, %edi
	movzbl	6(%rcx,%rsi), %r8d
	movzbl	7(%rcx,%rsi), %esi
	leal	(%rsi,%r8), %r9d
	subl	%esi, %r8d
	shll	$16, %r8d
	orl	%r9d, %r8d
	leal	(%r8,%rdi), %esi
	movl	%esi, -28(%rsp)
	subl	%r8d, %edi
	movl	%edi, -12(%rsp)
	leaq	(%rdx,%rcx), %rsi
	movzbl	(%rcx,%rdx), %edi
	movzbl	1(%rcx,%rdx), %r8d
	leal	(%r8,%rdi), %r9d
	subl	%r8d, %edi
	shll	$16, %edi
	orl	%r9d, %edi
	movzbl	2(%rcx,%rdx), %r8d
	movzbl	3(%rcx,%rdx), %r9d
	leal	(%r9,%r8), %r10d
	subl	%r9d, %r8d
	shll	$16, %r8d
	orl	%r10d, %r8d
	leal	(%r8,%rdi), %r9d
	movl	%r9d, -56(%rsp)
	subl	%r8d, %edi
	movl	%edi, -40(%rsp)
	movzbl	4(%rcx,%rdx), %edi
	movzbl	5(%rcx,%rdx), %r8d
	leal	(%r8,%rdi), %r9d
	subl	%r8d, %edi
	shll	$16, %edi
	orl	%r9d, %edi
	movzbl	6(%rcx,%rdx), %r8d
	movzbl	7(%rcx,%rdx), %edx
	leal	(%rdx,%r8), %r9d
	subl	%edx, %r8d
	shll	$16, %r8d
	orl	%r9d, %r8d
	leal	(%r8,%rdi), %edx
	movl	%edx, -24(%rsp)
	subl	%r8d, %edi
	movl	%edi, -8(%rsp)
	movzbl	(%rcx,%rsi), %edx
	movzbl	1(%rcx,%rsi), %edi
	leal	(%rdi,%rdx), %r8d
	subl	%edi, %edx
	shll	$16, %edx
	orl	%r8d, %edx
	movzbl	2(%rcx,%rsi), %edi
	movzbl	3(%rcx,%rsi), %r8d
	leal	(%r8,%rdi), %r9d
	subl	%r8d, %edi
	shll	$16, %edi
	orl	%r9d, %edi
	leal	(%rdi,%rdx), %r8d
	movl	%r8d, -52(%rsp)
	subl	%edi, %edx
	movl	%edx, -36(%rsp)
	movzbl	4(%rcx,%rsi), %edx
	movzbl	5(%rcx,%rsi), %edi
	leal	(%rdi,%rdx), %r8d
	subl	%edi, %edx
	shll	$16, %edx
	orl	%r8d, %edx
	movzbl	6(%rcx,%rsi), %edi
	movzbl	7(%rcx,%rsi), %ecx
	leal	(%rcx,%rdi), %esi
	subl	%ecx, %edi
	shll	$16, %edi
	orl	%esi, %edi
	leal	(%rdi,%rdx), %ecx
	movl	%ecx, -20(%rsp)
	subl	%edi, %edx
	movl	%edx, -4(%rsp)
	pxor	%xmm6, %xmm6
	xorl	%ecx, %ecx
	jmp	.LBB66_1
	.p2align	4, 0x90
.LBB66_41:                              # %pred.store.continue370
                                        #   in Loop: Header=BB66_1 Depth=1
	movdqa	%xmm8, %xmm0
	psrld	$15, %xmm0
	movdqa	%xmm6, %xmm1
	psrld	$15, %xmm1
	movdqa	%xmm7, %xmm2
	psrld	$15, %xmm2
	movdqa	%xmm5, %xmm9
	psrld	$15, %xmm9
	movdqa	.LCPI66_2(%rip), %xmm4          # xmm4 = [65537,65537,65537,65537]
	pand	%xmm4, %xmm0
	movdqa	%xmm0, %xmm3
	pslld	$16, %xmm3
	psubd	%xmm0, %xmm3
	paddd	%xmm3, %xmm8
	pxor	%xmm3, %xmm8
	pand	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	pslld	$16, %xmm0
	psubd	%xmm1, %xmm0
	paddd	%xmm0, %xmm6
	pxor	%xmm0, %xmm6
	pand	%xmm4, %xmm2
	movdqa	%xmm2, %xmm0
	pslld	$16, %xmm0
	psubd	%xmm2, %xmm0
	paddd	%xmm0, %xmm7
	pxor	%xmm0, %xmm7
	paddd	%xmm8, %xmm7
	pand	%xmm4, %xmm9
	movdqa	%xmm9, %xmm0
	pslld	$16, %xmm0
	psubd	%xmm9, %xmm0
	paddd	%xmm0, %xmm5
	pxor	%xmm0, %xmm5
	movdqa	32(%rsp), %xmm2                 # 16-byte Reload
	paddd	%xmm2, %xmm6
	paddd	%xmm7, %xmm6
	paddd	%xmm5, %xmm6
	addq	$4, %rcx
	addq	$64, %rax
	cmpq	$8, %rcx
	je	.LBB66_42
.LBB66_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqa	%xmm6, %xmm0
	movq	%rcx, %xmm5
	movdqa	%xmm5, 16(%rsp)                 # 16-byte Spill
	movdqa	.LCPI66_0(%rip), %xmm1          # xmm1 = [9223372039002259456,9223372039002259456]
	pxor	%xmm1, %xmm5
	movdqa	.LCPI66_1(%rip), %xmm6          # xmm6 = [9223372039002259464,9223372039002259464]
	pcmpgtd	%xmm5, %xmm6
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	pcmpeqd	%xmm1, %xmm5
	pand	%xmm6, %xmm5
	movd	%xmm5, %edx
                                        # implicit-def: $esi
                                        # kill: killed $esi
	testb	$1, %dl
	jne	.LBB66_2
# %bb.3:                                # %pred.load.continue
                                        #   in Loop: Header=BB66_1 Depth=1
                                        # implicit-def: $esi
                                        # kill: killed $esi
	testb	$1, %dl
	jne	.LBB66_4
.LBB66_5:                               # %pred.load.continue336
                                        #   in Loop: Header=BB66_1 Depth=1
                                        # implicit-def: $esi
                                        # kill: killed $esi
	testb	$1, %dl
	jne	.LBB66_6
.LBB66_7:                               # %pred.load.continue338
                                        #   in Loop: Header=BB66_1 Depth=1
                                        # implicit-def: $esi
                                        # kill: killed $esi
	testb	$1, %dl
	jne	.LBB66_8
.LBB66_9:                               # %pred.load.continue340
                                        #   in Loop: Header=BB66_1 Depth=1
                                        # implicit-def: $r10d
	testb	$1, %dl
	jne	.LBB66_10
.LBB66_11:                              # %pred.load.continue342
                                        #   in Loop: Header=BB66_1 Depth=1
                                        # implicit-def: $ebx
	testb	$1, %dl
	jne	.LBB66_12
.LBB66_13:                              # %pred.load.continue344
                                        #   in Loop: Header=BB66_1 Depth=1
                                        # implicit-def: $r14d
	testb	$1, %dl
	jne	.LBB66_14
.LBB66_15:                              # %pred.load.continue346
                                        #   in Loop: Header=BB66_1 Depth=1
                                        # implicit-def: $r12d
	testb	$1, %dl
	jne	.LBB66_16
.LBB66_17:                              # %pred.load.continue348
                                        #   in Loop: Header=BB66_1 Depth=1
                                        # implicit-def: $r11d
	testb	$1, %dl
	jne	.LBB66_18
.LBB66_19:                              # %pred.load.continue350
                                        #   in Loop: Header=BB66_1 Depth=1
                                        # implicit-def: $ebp
	testb	$1, %dl
	jne	.LBB66_20
.LBB66_21:                              # %pred.load.continue352
                                        #   in Loop: Header=BB66_1 Depth=1
                                        # implicit-def: $r15d
	testb	$1, %dl
	jne	.LBB66_22
.LBB66_23:                              # %pred.load.continue354
                                        #   in Loop: Header=BB66_1 Depth=1
                                        # implicit-def: $r13d
	testb	$1, %dl
	jne	.LBB66_24
.LBB66_25:                              # %pred.load.continue356
                                        #   in Loop: Header=BB66_1 Depth=1
                                        # implicit-def: $esi
	testb	$1, %dl
	jne	.LBB66_26
.LBB66_27:                              # %pred.load.continue358
                                        #   in Loop: Header=BB66_1 Depth=1
                                        # implicit-def: $edi
	testb	$1, %dl
	jne	.LBB66_28
.LBB66_29:                              # %pred.load.continue360
                                        #   in Loop: Header=BB66_1 Depth=1
                                        # implicit-def: $r8d
	testb	$1, %dl
	jne	.LBB66_30
.LBB66_31:                              # %pred.load.continue362
                                        #   in Loop: Header=BB66_1 Depth=1
	movdqa	%xmm0, 32(%rsp)                 # 16-byte Spill
                                        # implicit-def: $r9d
	testb	$1, %dl
	je	.LBB66_33
.LBB66_32:                              # %pred.load.if363
                                        #   in Loop: Header=BB66_1 Depth=1
	movl	(%rax), %r9d
.LBB66_33:                              # %pred.load.continue364
                                        #   in Loop: Header=BB66_1 Depth=1
	movd	%r12d, %xmm8
	movd	%r14d, %xmm7
	movd	%r10d, %xmm9
	movd	%ebx, %xmm6
	movd	(%rsp), %xmm11                  # 4-byte Folded Reload
                                        # xmm11 = mem[0],zero,zero,zero
	movd	4(%rsp), %xmm10                 # 4-byte Folded Reload
                                        # xmm10 = mem[0],zero,zero,zero
	movd	12(%rsp), %xmm12                # 4-byte Folded Reload
                                        # xmm12 = mem[0],zero,zero,zero
	movd	8(%rsp), %xmm5                  # 4-byte Folded Reload
                                        # xmm5 = mem[0],zero,zero,zero
	movd	%r9d, %xmm13
	movd	%r8d, %xmm14
	movd	%esi, %xmm15
	movd	%edi, %xmm2
	movd	%r13d, %xmm1
	movd	%r15d, %xmm0
	movd	%r11d, %xmm3
	movd	%ebp, %xmm4
	punpckldq	%xmm8, %xmm7            # xmm7 = xmm7[0],xmm8[0],xmm7[1],xmm8[1]
	punpckldq	%xmm9, %xmm6            # xmm6 = xmm6[0],xmm9[0],xmm6[1],xmm9[1]
	punpcklqdq	%xmm7, %xmm6            # xmm6 = xmm6[0],xmm7[0]
	punpckldq	%xmm11, %xmm10          # xmm10 = xmm10[0],xmm11[0],xmm10[1],xmm11[1]
	punpckldq	%xmm12, %xmm5           # xmm5 = xmm5[0],xmm12[0],xmm5[1],xmm12[1]
	punpcklqdq	%xmm10, %xmm5           # xmm5 = xmm5[0],xmm10[0]
	movdqa	%xmm6, %xmm7
	paddd	%xmm5, %xmm7
	psubd	%xmm6, %xmm5
	punpckldq	%xmm13, %xmm14          # xmm14 = xmm14[0],xmm13[0],xmm14[1],xmm13[1]
	punpckldq	%xmm15, %xmm2           # xmm2 = xmm2[0],xmm15[0],xmm2[1],xmm15[1]
	punpcklqdq	%xmm14, %xmm2           # xmm2 = xmm2[0],xmm14[0]
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	punpckldq	%xmm3, %xmm4            # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	punpcklqdq	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0]
	movdqa	%xmm2, %xmm0
	paddd	%xmm4, %xmm0
	psubd	%xmm2, %xmm4
	movdqa	%xmm0, %xmm8
	paddd	%xmm7, %xmm8
	psubd	%xmm0, %xmm7
	movdqa	%xmm4, %xmm6
	paddd	%xmm5, %xmm6
	psubd	%xmm4, %xmm5
	movdqa	%xmm8, %xmm9
	punpckldq	%xmm6, %xmm9            # xmm9 = xmm9[0],xmm6[0],xmm9[1],xmm6[1]
	movdqa	%xmm7, %xmm10
	punpckldq	%xmm5, %xmm10           # xmm10 = xmm10[0],xmm5[0],xmm10[1],xmm5[1]
	testb	$1, %dl
	je	.LBB66_35
# %bb.34:                               # %pred.store.if
                                        #   in Loop: Header=BB66_1 Depth=1
	movdqa	%xmm9, %xmm0
	punpckhqdq	%xmm10, %xmm0           # xmm0 = xmm0[1],xmm10[1]
	movdqa	%xmm0, -60(%rax)
.LBB66_35:                              # %pred.store.continue
                                        #   in Loop: Header=BB66_1 Depth=1
	testb	$1, %dl
	je	.LBB66_37
# %bb.36:                               # %pred.store.if365
                                        #   in Loop: Header=BB66_1 Depth=1
	punpcklqdq	%xmm10, %xmm9           # xmm9 = xmm9[0],xmm10[0]
	movdqa	%xmm9, -44(%rax)
.LBB66_37:                              # %pred.store.continue366
                                        #   in Loop: Header=BB66_1 Depth=1
	movdqa	%xmm8, %xmm9
	punpckhdq	%xmm6, %xmm9            # xmm9 = xmm9[2],xmm6[2],xmm9[3],xmm6[3]
	movdqa	%xmm7, %xmm10
	punpckhdq	%xmm5, %xmm10           # xmm10 = xmm10[2],xmm5[2],xmm10[3],xmm5[3]
	testb	$1, %dl
	je	.LBB66_39
# %bb.38:                               # %pred.store.if367
                                        #   in Loop: Header=BB66_1 Depth=1
	movdqa	%xmm9, %xmm0
	punpcklqdq	%xmm10, %xmm0           # xmm0 = xmm0[0],xmm10[0]
	movdqa	%xmm0, -28(%rax)
.LBB66_39:                              # %pred.store.continue368
                                        #   in Loop: Header=BB66_1 Depth=1
	testb	$1, %dl
	je	.LBB66_41
# %bb.40:                               # %pred.store.if369
                                        #   in Loop: Header=BB66_1 Depth=1
	punpckhqdq	%xmm10, %xmm9           # xmm9 = xmm9[1],xmm10[1]
	movdqa	%xmm9, -12(%rax)
	jmp	.LBB66_41
	.p2align	4, 0x90
.LBB66_2:                               # %pred.load.if
                                        #   in Loop: Header=BB66_1 Depth=1
	movl	-60(%rax), %esi
	movl	%esi, 12(%rsp)                  # 4-byte Spill
                                        # implicit-def: $esi
                                        # kill: killed $esi
	testb	$1, %dl
	je	.LBB66_5
.LBB66_4:                               # %pred.load.if335
                                        #   in Loop: Header=BB66_1 Depth=1
	movl	-44(%rax), %esi
	movl	%esi, 8(%rsp)                   # 4-byte Spill
                                        # implicit-def: $esi
                                        # kill: killed $esi
	testb	$1, %dl
	je	.LBB66_7
.LBB66_6:                               # %pred.load.if337
                                        #   in Loop: Header=BB66_1 Depth=1
	movl	-28(%rax), %esi
	movl	%esi, 4(%rsp)                   # 4-byte Spill
                                        # implicit-def: $esi
                                        # kill: killed $esi
	testb	$1, %dl
	je	.LBB66_9
.LBB66_8:                               # %pred.load.if339
                                        #   in Loop: Header=BB66_1 Depth=1
	movl	-12(%rax), %esi
	movl	%esi, (%rsp)                    # 4-byte Spill
                                        # implicit-def: $r10d
	testb	$1, %dl
	je	.LBB66_11
.LBB66_10:                              # %pred.load.if341
                                        #   in Loop: Header=BB66_1 Depth=1
	movl	-56(%rax), %r10d
                                        # implicit-def: $ebx
	testb	$1, %dl
	je	.LBB66_13
.LBB66_12:                              # %pred.load.if343
                                        #   in Loop: Header=BB66_1 Depth=1
	movl	-40(%rax), %ebx
                                        # implicit-def: $r14d
	testb	$1, %dl
	je	.LBB66_15
.LBB66_14:                              # %pred.load.if345
                                        #   in Loop: Header=BB66_1 Depth=1
	movl	-24(%rax), %r14d
                                        # implicit-def: $r12d
	testb	$1, %dl
	je	.LBB66_17
.LBB66_16:                              # %pred.load.if347
                                        #   in Loop: Header=BB66_1 Depth=1
	movl	-8(%rax), %r12d
                                        # implicit-def: $r11d
	testb	$1, %dl
	je	.LBB66_19
.LBB66_18:                              # %pred.load.if349
                                        #   in Loop: Header=BB66_1 Depth=1
	movl	-52(%rax), %r11d
                                        # implicit-def: $ebp
	testb	$1, %dl
	je	.LBB66_21
.LBB66_20:                              # %pred.load.if351
                                        #   in Loop: Header=BB66_1 Depth=1
	movl	-36(%rax), %ebp
                                        # implicit-def: $r15d
	testb	$1, %dl
	je	.LBB66_23
.LBB66_22:                              # %pred.load.if353
                                        #   in Loop: Header=BB66_1 Depth=1
	movl	-20(%rax), %r15d
                                        # implicit-def: $r13d
	testb	$1, %dl
	je	.LBB66_25
.LBB66_24:                              # %pred.load.if355
                                        #   in Loop: Header=BB66_1 Depth=1
	movl	-4(%rax), %r13d
                                        # implicit-def: $esi
	testb	$1, %dl
	je	.LBB66_27
.LBB66_26:                              # %pred.load.if357
                                        #   in Loop: Header=BB66_1 Depth=1
	movl	-48(%rax), %esi
                                        # implicit-def: $edi
	testb	$1, %dl
	je	.LBB66_29
.LBB66_28:                              # %pred.load.if359
                                        #   in Loop: Header=BB66_1 Depth=1
	movl	-32(%rax), %edi
                                        # implicit-def: $r8d
	testb	$1, %dl
	je	.LBB66_31
.LBB66_30:                              # %pred.load.if361
                                        #   in Loop: Header=BB66_1 Depth=1
	movl	-16(%rax), %r8d
	movdqa	%xmm0, 32(%rsp)                 # 16-byte Spill
                                        # implicit-def: $r9d
	testb	$1, %dl
	jne	.LBB66_32
	jmp	.LBB66_33
.LBB66_42:                              # %middle.block
	movdqa	16(%rsp), %xmm1                 # 16-byte Reload
	pxor	.LCPI66_0(%rip), %xmm1
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	pcmpeqd	.LCPI66_0(%rip), %xmm0
	pshufd	$0, %xmm1, %xmm1                # xmm1 = xmm1[0,0,0,0]
	pcmpgtd	.LCPI66_3(%rip), %xmm1
	pandn	%xmm0, %xmm1
	pand	%xmm1, %xmm6
	pandn	%xmm2, %xmm1
	por	%xmm6, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %eax
	movl	-96(%rsp), %ecx
	movl	-128(%rsp), %esi
	movl	-124(%rsp), %edx
	leal	(%rcx,%rsi), %edi
	subl	%ecx, %esi
	movl	-64(%rsp), %r9d
	movl	-32(%rsp), %ecx
	leal	(%rcx,%r9), %r8d
	subl	%ecx, %r9d
	leal	(%r8,%rdi), %ecx
	subl	%r8d, %edi
	leal	(%r9,%rsi), %r8d
	subl	%r9d, %esi
	movl	%ecx, %r9d
	shrl	$15, %r9d
	andl	$65537, %r9d                    # imm = 0x10001
	movl	%r9d, %r10d
	shll	$16, %r10d
	subl	%r9d, %r10d
	leal	(%r10,%rcx), %r9d
	xorl	%r10d, %r9d
	movl	%r8d, %r10d
	shrl	$15, %r10d
	andl	$65537, %r10d                   # imm = 0x10001
	movl	%r10d, %r11d
	shll	$16, %r11d
	subl	%r10d, %r11d
	addl	%r11d, %r8d
	xorl	%r11d, %r8d
	addl	%r9d, %r8d
	movl	%edi, %r9d
	shrl	$15, %r9d
	andl	$65537, %r9d                    # imm = 0x10001
	movl	%r9d, %r10d
	shll	$16, %r10d
	subl	%r9d, %r10d
	addl	%r10d, %edi
	xorl	%r10d, %edi
	movl	%esi, %r9d
	shrl	$15, %r9d
	andl	$65537, %r9d                    # imm = 0x10001
	movl	%r9d, %r10d
	shll	$16, %r10d
	subl	%r9d, %r10d
	addl	%r10d, %esi
	xorl	%r10d, %esi
	addl	%edi, %esi
	addl	%r8d, %esi
	movl	-92(%rsp), %r8d
	leal	(%r8,%rdx), %edi
	subl	%r8d, %edx
	movl	-60(%rsp), %r10d
	movl	-28(%rsp), %r8d
	leal	(%r8,%r10), %r11d
	subl	%r8d, %r10d
	leal	(%r11,%rdi), %r9d
	subl	%r11d, %edi
	leal	(%r10,%rdx), %r8d
	subl	%r10d, %edx
	movl	%r9d, %r10d
	shrl	$15, %r10d
	andl	$65537, %r10d                   # imm = 0x10001
	movl	%r10d, %r11d
	shll	$16, %r11d
	subl	%r10d, %r11d
	addl	%r11d, %r9d
	xorl	%r11d, %r9d
	movl	%r8d, %r10d
	shrl	$15, %r10d
	andl	$65537, %r10d                   # imm = 0x10001
	movl	%r10d, %r11d
	shll	$16, %r11d
	subl	%r10d, %r11d
	addl	%r11d, %r8d
	xorl	%r11d, %r8d
	addl	%r9d, %r8d
	movl	%edi, %r9d
	shrl	$15, %r9d
	andl	$65537, %r9d                    # imm = 0x10001
	movl	%r9d, %r10d
	shll	$16, %r10d
	subl	%r9d, %r10d
	addl	%r10d, %edi
	xorl	%r10d, %edi
	addl	%r8d, %edi
	addl	%esi, %edi
	movl	%edx, %esi
	shrl	$15, %esi
	andl	$65537, %esi                    # imm = 0x10001
	movl	%esi, %r8d
	shll	$16, %r8d
	subl	%esi, %r8d
	addl	%r8d, %edx
	xorl	%r8d, %edx
	movl	-120(%rsp), %r8d
	movl	-88(%rsp), %r9d
	leal	(%r9,%r8), %esi
	subl	%r9d, %r8d
	movl	-56(%rsp), %r11d
	movl	-24(%rsp), %r9d
	leal	(%r9,%r11), %ebx
	subl	%r9d, %r11d
	leal	(%rbx,%rsi), %r10d
	subl	%ebx, %esi
	leal	(%r11,%r8), %r9d
	subl	%r11d, %r8d
	movl	%r10d, %r11d
	shrl	$15, %r11d
	andl	$65537, %r11d                   # imm = 0x10001
	movl	%r11d, %ebx
	shll	$16, %ebx
	subl	%r11d, %ebx
	addl	%ebx, %r10d
	xorl	%ebx, %r10d
	movl	%r9d, %r11d
	shrl	$15, %r11d
	andl	$65537, %r11d                   # imm = 0x10001
	movl	%r11d, %ebx
	shll	$16, %ebx
	subl	%r11d, %ebx
	addl	%ebx, %r9d
	xorl	%ebx, %r9d
	addl	%edx, %r9d
	addl	%r10d, %r9d
	movl	%esi, %edx
	shrl	$15, %edx
	andl	$65537, %edx                    # imm = 0x10001
	movl	%edx, %r10d
	shll	$16, %r10d
	subl	%edx, %r10d
	addl	%r10d, %esi
	xorl	%r10d, %esi
	addl	%r9d, %esi
	addl	%edi, %esi
	movl	%r8d, %edx
	shrl	$15, %edx
	andl	$65537, %edx                    # imm = 0x10001
	movl	%edx, %edi
	shll	$16, %edi
	subl	%edx, %edi
	addl	%edi, %r8d
	xorl	%edi, %r8d
	movl	-116(%rsp), %edx
	movl	-84(%rsp), %r9d
	leal	(%r9,%rdx), %edi
	subl	%r9d, %edx
	movl	-52(%rsp), %r11d
	movl	-20(%rsp), %r9d
	leal	(%r9,%r11), %ebx
	subl	%r9d, %r11d
	leal	(%rbx,%rdi), %r10d
	subl	%ebx, %edi
	leal	(%r11,%rdx), %r9d
	subl	%r11d, %edx
	movl	%r10d, %r11d
	shrl	$15, %r11d
	andl	$65537, %r11d                   # imm = 0x10001
	movl	%r11d, %ebx
	shll	$16, %ebx
	subl	%r11d, %ebx
	addl	%ebx, %r10d
	xorl	%ebx, %r10d
	movl	%r9d, %r11d
	shrl	$15, %r11d
	andl	$65537, %r11d                   # imm = 0x10001
	movl	%r11d, %ebx
	shll	$16, %ebx
	subl	%r11d, %ebx
	addl	%ebx, %r9d
	xorl	%ebx, %r9d
	addl	%r8d, %r9d
	addl	%r10d, %r9d
	movl	%edi, %r8d
	shrl	$15, %r8d
	andl	$65537, %r8d                    # imm = 0x10001
	movl	%r8d, %r10d
	shll	$16, %r10d
	subl	%r8d, %r10d
	addl	%r10d, %edi
	xorl	%r10d, %edi
	addl	%r9d, %edi
	movl	%edx, %r8d
	shrl	$15, %r8d
	andl	$65537, %r8d                    # imm = 0x10001
	movl	%r8d, %r9d
	shll	$16, %r9d
	subl	%r8d, %r9d
	addl	%r9d, %edx
	xorl	%r9d, %edx
	addl	%edi, %edx
	addl	%esi, %edx
	movl	-112(%rsp), %r8d
	movl	-80(%rsp), %edi
	leal	(%rdi,%r8), %esi
	subl	%edi, %r8d
	movl	-48(%rsp), %r10d
	movl	-16(%rsp), %edi
	leal	(%rdi,%r10), %r11d
	subl	%edi, %r10d
	leal	(%r11,%rsi), %r9d
	subl	%r11d, %esi
	leal	(%r10,%r8), %edi
	subl	%r10d, %r8d
	movl	%r9d, %r10d
	shrl	$15, %r10d
	andl	$65537, %r10d                   # imm = 0x10001
	movl	%r10d, %r11d
	shll	$16, %r11d
	subl	%r10d, %r11d
	addl	%r11d, %r9d
	xorl	%r11d, %r9d
	movl	%edi, %r10d
	shrl	$15, %r10d
	andl	$65537, %r10d                   # imm = 0x10001
	movl	%r10d, %r11d
	shll	$16, %r11d
	subl	%r10d, %r11d
	addl	%r11d, %edi
	xorl	%r11d, %edi
	addl	%r9d, %edi
	movl	%esi, %r9d
	shrl	$15, %r9d
	andl	$65537, %r9d                    # imm = 0x10001
	movl	%r9d, %r10d
	shll	$16, %r10d
	subl	%r9d, %r10d
	addl	%r10d, %esi
	xorl	%r10d, %esi
	addl	%edi, %esi
	movl	%r8d, %edi
	shrl	$15, %edi
	andl	$65537, %edi                    # imm = 0x10001
	movl	%edi, %r9d
	shll	$16, %r9d
	subl	%edi, %r9d
	addl	%r9d, %r8d
	xorl	%r9d, %r8d
	addl	%esi, %r8d
	movl	-108(%rsp), %edi
	movl	-76(%rsp), %esi
	leal	(%rsi,%rdi), %r9d
	subl	%esi, %edi
	movl	-44(%rsp), %r11d
	movl	-12(%rsp), %esi
	leal	(%rsi,%r11), %ebx
	subl	%esi, %r11d
	leal	(%rbx,%r9), %r10d
	subl	%ebx, %r9d
	leal	(%r11,%rdi), %esi
	subl	%r11d, %edi
	movl	%r10d, %r11d
	shrl	$15, %r11d
	andl	$65537, %r11d                   # imm = 0x10001
	movl	%r11d, %ebx
	shll	$16, %ebx
	subl	%r11d, %ebx
	addl	%ebx, %r10d
	xorl	%ebx, %r10d
	movl	%esi, %r11d
	shrl	$15, %r11d
	andl	$65537, %r11d                   # imm = 0x10001
	movl	%r11d, %ebx
	shll	$16, %ebx
	subl	%r11d, %ebx
	addl	%ebx, %esi
	xorl	%ebx, %esi
	addl	%r8d, %esi
	addl	%r10d, %esi
	addl	%edx, %esi
	movl	%r9d, %edx
	shrl	$15, %edx
	andl	$65537, %edx                    # imm = 0x10001
	movl	%edx, %r8d
	shll	$16, %r8d
	subl	%edx, %r8d
	addl	%r8d, %r9d
	xorl	%r8d, %r9d
	movl	%edi, %edx
	shrl	$15, %edx
	andl	$65537, %edx                    # imm = 0x10001
	movl	%edx, %r8d
	shll	$16, %r8d
	subl	%edx, %r8d
	addl	%r8d, %edi
	xorl	%r8d, %edi
	addl	%r9d, %edi
	movl	-104(%rsp), %edx
	movl	-72(%rsp), %r9d
	leal	(%r9,%rdx), %r8d
	subl	%r9d, %edx
	movl	-40(%rsp), %r11d
	movl	-8(%rsp), %r9d
	leal	(%r9,%r11), %ebx
	subl	%r9d, %r11d
	leal	(%rbx,%r8), %r10d
	subl	%ebx, %r8d
	leal	(%r11,%rdx), %r9d
	subl	%r11d, %edx
	movl	%r10d, %r11d
	shrl	$15, %r11d
	andl	$65537, %r11d                   # imm = 0x10001
	movl	%r11d, %ebx
	shll	$16, %ebx
	subl	%r11d, %ebx
	addl	%ebx, %r10d
	xorl	%ebx, %r10d
	movl	%r9d, %r11d
	shrl	$15, %r11d
	andl	$65537, %r11d                   # imm = 0x10001
	movl	%r11d, %ebx
	shll	$16, %ebx
	subl	%r11d, %ebx
	addl	%ebx, %r9d
	xorl	%ebx, %r9d
	addl	%edi, %r9d
	addl	%r10d, %r9d
	movl	%r8d, %edi
	shrl	$15, %edi
	andl	$65537, %edi                    # imm = 0x10001
	movl	%edi, %r10d
	shll	$16, %r10d
	subl	%edi, %r10d
	addl	%r10d, %r8d
	xorl	%r10d, %r8d
	addl	%r9d, %r8d
	movl	%edx, %edi
	shrl	$15, %edi
	andl	$65537, %edi                    # imm = 0x10001
	movl	%edi, %r9d
	shll	$16, %r9d
	subl	%edi, %r9d
	addl	%r9d, %edx
	xorl	%r9d, %edx
	addl	%r8d, %edx
	movl	-100(%rsp), %edi
	movl	-68(%rsp), %r9d
	leal	(%r9,%rdi), %r8d
	subl	%r9d, %edi
	movl	-36(%rsp), %r11d
	movl	-4(%rsp), %r9d
	leal	(%r9,%r11), %ebx
	subl	%r9d, %r11d
	leal	(%rbx,%r8), %r10d
	subl	%ebx, %r8d
	leal	(%r11,%rdi), %r9d
	subl	%r11d, %edi
	movl	%r10d, %r11d
	shrl	$15, %r11d
	andl	$65537, %r11d                   # imm = 0x10001
	movl	%r11d, %ebx
	shll	$16, %ebx
	subl	%r11d, %ebx
	addl	%ebx, %r10d
	xorl	%ebx, %r10d
	movl	%r9d, %r11d
	shrl	$15, %r11d
	andl	$65537, %r11d                   # imm = 0x10001
	movl	%r11d, %ebx
	shll	$16, %ebx
	subl	%r11d, %ebx
	addl	%ebx, %r9d
	xorl	%ebx, %r9d
	addl	%edx, %r9d
	addl	%esi, %r9d
	movl	%r8d, %edx
	shrl	$15, %edx
	andl	$65537, %edx                    # imm = 0x10001
	movl	%edx, %esi
	shll	$16, %esi
	subl	%edx, %esi
	addl	%esi, %r8d
	xorl	%esi, %r8d
	addl	%r10d, %r8d
	movl	%edi, %edx
	shrl	$15, %edx
	andl	$65537, %edx                    # imm = 0x10001
	movl	%edx, %esi
	shll	$16, %esi
	subl	%edx, %esi
	addl	%esi, %edi
	xorl	%esi, %edi
	addl	%r8d, %edi
	addl	%r9d, %edi
	movzwl	%cx, %ecx
	movzwl	%ax, %edx
	shrl	$16, %eax
	addl	%edx, %eax
	subl	%ecx, %eax
	movzwl	%di, %edx
	shrl	$16, %edi
	addl	%edx, %edi
	subl	%ecx, %edi
	shlq	$32, %rdi
	cltq
	addq	%rdi, %rax
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
.Lfunc_end66:
	.size	pixel_hadamard_ac, .Lfunc_end66-pixel_hadamard_ac
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function sa8d_8x8
.LCPI67_0:
	.long	65537                           # 0x10001
	.long	65537                           # 0x10001
	.long	65537                           # 0x10001
	.long	65537                           # 0x10001
.LCPI67_1:
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.text
	.p2align	4, 0x90
	.type	sa8d_8x8,@function
sa8d_8x8:                               # @sa8d_8x8
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movslq	%esi, %rax
	movslq	%ecx, %rcx
	addq	$7, %rdi
	addq	$7, %rdx
	movl	$12, %esi
	.p2align	4, 0x90
.LBB67_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-7(%rdi), %r8d
	movzbl	-7(%rdx), %r9d
	subl	%r9d, %r8d
	movzbl	-6(%rdi), %r9d
	movzbl	-6(%rdx), %r10d
	subl	%r10d, %r9d
	leal	(%r9,%r8), %r10d
	subl	%r9d, %r8d
	shll	$16, %r8d
	addl	%r10d, %r8d
	movzbl	-5(%rdi), %r10d
	movzbl	-5(%rdx), %r9d
	subl	%r9d, %r10d
	movzbl	-4(%rdi), %r9d
	movzbl	-4(%rdx), %r11d
	subl	%r11d, %r9d
	leal	(%r9,%r10), %r11d
	subl	%r9d, %r10d
	shll	$16, %r10d
	addl	%r11d, %r10d
	movzbl	-3(%rdi), %r9d
	movzbl	-3(%rdx), %r11d
	subl	%r11d, %r9d
	movzbl	-2(%rdi), %r11d
	movzbl	-2(%rdx), %ebx
	subl	%ebx, %r11d
	leal	(%r11,%r9), %ebx
	subl	%r11d, %r9d
	shll	$16, %r9d
	addl	%ebx, %r9d
	movzbl	-1(%rdi), %r11d
	movzbl	-1(%rdx), %ebx
	subl	%ebx, %r11d
	movzbl	(%rdi), %ebx
	movzbl	(%rdx), %ebp
	subl	%ebp, %ebx
	leal	(%rbx,%r11), %ebp
	subl	%ebx, %r11d
	shll	$16, %r11d
	addl	%ebp, %r11d
	leal	(%r10,%r8), %ebx
	subl	%r10d, %r8d
	leal	(%r11,%r9), %r10d
	subl	%r11d, %r9d
	leal	(%r10,%rbx), %r11d
	movl	%r11d, -140(%rsp,%rsi)
	subl	%r10d, %ebx
	movl	%ebx, -132(%rsp,%rsi)
	leal	(%r9,%r8), %r10d
	movl	%r10d, -136(%rsp,%rsi)
	subl	%r9d, %r8d
	movl	%r8d, -128(%rsp,%rsi)
	addq	$16, %rsi
	addq	%rax, %rdi
	addq	%rcx, %rdx
	cmpq	$140, %rsi
	jne	.LBB67_1
# %bb.2:                                # %for.cond74.preheader
	pshufd	$27, -128(%rsp), %xmm6          # xmm6 = mem[3,2,1,0]
	pshufd	$27, -112(%rsp), %xmm0          # xmm0 = mem[3,2,1,0]
	movdqa	%xmm0, %xmm8
	paddd	%xmm6, %xmm8
	psubd	%xmm0, %xmm6
	pshufd	$27, -96(%rsp), %xmm0           # xmm0 = mem[3,2,1,0]
	pshufd	$27, -80(%rsp), %xmm1           # xmm1 = mem[3,2,1,0]
	movdqa	%xmm1, %xmm2
	paddd	%xmm0, %xmm2
	psubd	%xmm1, %xmm0
	movdqa	%xmm2, %xmm5
	paddd	%xmm8, %xmm5
	psubd	%xmm2, %xmm8
	movdqa	%xmm0, %xmm1
	paddd	%xmm6, %xmm1
	pshufd	$27, -64(%rsp), %xmm4           # xmm4 = mem[3,2,1,0]
	pshufd	$27, -48(%rsp), %xmm2           # xmm2 = mem[3,2,1,0]
	psubd	%xmm0, %xmm6
	movdqa	%xmm2, %xmm9
	paddd	%xmm4, %xmm9
	psubd	%xmm2, %xmm4
	pshufd	$27, -32(%rsp), %xmm7           # xmm7 = mem[3,2,1,0]
	pshufd	$27, -16(%rsp), %xmm2           # xmm2 = mem[3,2,1,0]
	movdqa	%xmm7, %xmm0
	psubd	%xmm2, %xmm0
	movdqa	%xmm4, %xmm3
	psubd	%xmm0, %xmm3
	movdqa	%xmm3, %xmm10
	paddd	%xmm6, %xmm10
	psubd	%xmm3, %xmm6
	movdqa	%xmm10, %xmm11
	psrld	$15, %xmm11
	movdqa	.LCPI67_0(%rip), %xmm3          # xmm3 = [65537,65537,65537,65537]
	pand	%xmm3, %xmm11
	movdqa	%xmm11, %xmm12
	pslld	$16, %xmm12
	psubd	%xmm11, %xmm12
	paddd	%xmm12, %xmm10
	pxor	%xmm12, %xmm10
	movdqa	%xmm6, %xmm11
	psrld	$15, %xmm11
	pand	%xmm3, %xmm11
	movdqa	%xmm11, %xmm12
	pslld	$16, %xmm12
	psubd	%xmm11, %xmm12
	paddd	%xmm12, %xmm6
	pxor	%xmm12, %xmm6
	paddd	%xmm10, %xmm6
	paddd	%xmm7, %xmm2
	movdqa	%xmm9, %xmm7
	psubd	%xmm2, %xmm7
	movdqa	%xmm8, %xmm10
	psubd	%xmm7, %xmm10
	movdqa	%xmm10, %xmm11
	psrld	$15, %xmm11
	pand	%xmm3, %xmm11
	movdqa	%xmm11, %xmm12
	pslld	$16, %xmm12
	psubd	%xmm11, %xmm12
	paddd	%xmm12, %xmm10
	pxor	%xmm12, %xmm10
	paddd	%xmm8, %xmm7
	movdqa	%xmm7, %xmm8
	psrld	$15, %xmm8
	pand	%xmm3, %xmm8
	movdqa	%xmm8, %xmm11
	pslld	$16, %xmm11
	psubd	%xmm8, %xmm11
	paddd	%xmm11, %xmm7
	pxor	%xmm11, %xmm7
	paddd	%xmm10, %xmm7
	paddd	%xmm6, %xmm7
	paddd	%xmm9, %xmm2
	movdqa	%xmm5, %xmm6
	psubd	%xmm2, %xmm6
	movdqa	%xmm6, %xmm8
	psrld	$15, %xmm8
	pand	%xmm3, %xmm8
	movdqa	%xmm8, %xmm9
	pslld	$16, %xmm9
	psubd	%xmm8, %xmm9
	paddd	%xmm9, %xmm6
	pxor	%xmm9, %xmm6
	paddd	%xmm5, %xmm2
	movdqa	%xmm2, %xmm5
	psrld	$15, %xmm5
	pand	%xmm3, %xmm5
	movdqa	%xmm5, %xmm8
	pslld	$16, %xmm8
	psubd	%xmm5, %xmm8
	paddd	%xmm8, %xmm2
	pxor	%xmm8, %xmm2
	paddd	%xmm6, %xmm2
	paddd	%xmm4, %xmm0
	movdqa	%xmm1, %xmm4
	psubd	%xmm0, %xmm4
	movdqa	%xmm4, %xmm5
	psrld	$15, %xmm5
	pand	%xmm3, %xmm5
	movdqa	%xmm5, %xmm6
	pslld	$16, %xmm6
	psubd	%xmm5, %xmm6
	paddd	%xmm6, %xmm4
	pxor	%xmm6, %xmm4
	paddd	%xmm2, %xmm4
	paddd	%xmm7, %xmm4
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$15, %xmm1
	pand	%xmm3, %xmm1
	movdqa	%xmm1, %xmm2
	pslld	$16, %xmm2
	psubd	%xmm1, %xmm2
	paddd	%xmm2, %xmm0
	pxor	%xmm2, %xmm0
	paddd	%xmm4, %xmm0
	movdqa	.LCPI67_1(%rip), %xmm1          # xmm1 = [65535,0,65535,0,65535,0,65535,0]
	pand	%xmm0, %xmm1
	psrld	$16, %xmm0
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %ecx
	pshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	paddd	%xmm0, %xmm1
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %eax
	addl	%ecx, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end67:
	.size	sa8d_8x8, .Lfunc_end67-sa8d_8x8
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
