	.text
	.file	"me.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function x264_me_search_ref
.LCPI0_0:
	.long	2                               # 0x2
	.long	2                               # 0x2
	.long	2                               # 0x2
	.long	2                               # 0x2
.LCPI0_1:
	.long	2                               # 0x2
	.long	2                               # 0x2
	.zero	4
	.zero	4
	.text
	.globl	x264_me_search_ref
	.p2align	4, 0x90
	.type	x264_me_search_ref,@function
x264_me_search_ref:                     # @x264_me_search_ref
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
	subq	$936, %rsp                      # imm = 0x3A8
	.cfi_def_cfa_offset 992
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, 664(%rsp)                  # 8-byte Spill
	movl	%ecx, %r11d
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	movq	%rdi, %rbx
	movq	16472(%rdi), %rcx
	movq	%rcx, %xmm0
	pshufd	$85, %xmm0, %xmm2               # xmm2 = xmm0[1,1,1,1]
	movq	16480(%rdi), %rax
	movq	%rax, %xmm1
	pshufd	$85, %xmm1, %xmm3               # xmm3 = xmm1[1,1,1,1]
	movd	%xmm3, %edi
	movq	%rcx, 280(%rsp)                 # 8-byte Spill
	leal	(,%rcx,4), %r9d
	movq	%rax, 336(%rsp)                 # 8-byte Spill
	leal	(,%rax,4), %r10d
	movq	8(%rsi), %r8
	movswq	128(%rsi), %rax
	movq	%rax, %rcx
	addq	%rax, %rcx
	movq	%r8, %rdx
	subq	%rcx, %rdx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movswl	130(%rsi), %ecx
	movslq	%ecx, %rcx
	subq	%rcx, %r8
	subq	%rcx, %r8
	movq	%r8, 24(%rsp)                   # 8-byte Spill
	cmpl	%r10d, %eax
	movl	%r10d, 400(%rsp)                # 4-byte Spill
	movl	%r10d, %ebp
	cmovll	%eax, %ebp
	cmpl	%eax, %r9d
	movq	%rdi, 344(%rsp)                 # 8-byte Spill
	leal	(,%rdi,4), %eax
	movl	%r9d, 80(%rsp)                  # 4-byte Spill
	cmovgl	%r9d, %ebp
	cmpl	%eax, %ecx
	movl	%eax, 112(%rsp)                 # 4-byte Spill
	movl	%eax, %r15d
	cmovll	%ecx, %r15d
	movd	%xmm2, %eax
	movq	%rax, 392(%rsp)                 # 8-byte Spill
	leal	(,%rax,4), %eax
	cmpl	%ecx, %eax
	movl	%eax, 352(%rsp)                 # 4-byte Spill
	cmovgl	%eax, %r15d
	leal	2(%rbp), %eax
	movl	%eax, 232(%rsp)                 # 4-byte Spill
	movl	%eax, %r12d
	sarl	$2, %r12d
	leal	2(%r15), %eax
	movl	%eax, 272(%rsp)                 # 4-byte Spill
	movl	%eax, %r14d
	sarl	$2, %r14d
	cmpl	$3, 16408(%rbx)
	movslq	(%rsi), %r8
	movslq	120(%rsi), %rcx
	movl	416(%rbx), %eax
	movq	%rax, 320(%rsp)                 # 8-byte Spill
	movq	80(%rsi), %r9
	movq	%rsi, 456(%rsp)                 # 8-byte Spill
	movq	88(%rsi), %rdi
	movq	%rbx, 104(%rsp)                 # 8-byte Spill
	movq	%r14, 432(%rsp)                 # 8-byte Spill
	movq	%r12, 512(%rsp)                 # 8-byte Spill
	movq	%r8, 72(%rsp)                   # 8-byte Spill
	movq	%rcx, %r13
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movq	%r9, 136(%rsp)                  # 8-byte Spill
	movq	%r11, 264(%rsp)                 # 8-byte Spill
	jl	.LBB0_8
# %bb.1:                                # %if.then
	movzwl	%bp, %eax
	movl	%r15d, %ecx
	shll	$16, %ecx
	orl	%eax, %ecx
	movl	%ecx, 32(%rsp)                  # 4-byte Spill
	testl	%r11d, %r11d
	je	.LBB0_11
# %bb.2:                                # %if.end68
	movq	72(%rsp), %r14                  # 8-byte Reload
	movl	x264_pixel_size(,%r14,8), %ecx
	movl	x264_pixel_size+4(,%r14,8), %esi
	movl	$16, 160(%rsp)
	movq	456(%rsp), %rax                 # 8-byte Reload
	leaq	32(%rax), %rdx
	movq	24(%rax), %rax
	movq	%rax, 16(%rsp)
	movl	%esi, 288(%rsp)                 # 4-byte Spill
	movl	%esi, 8(%rsp)
	movl	%ecx, 240(%rsp)                 # 4-byte Spill
	movl	%ecx, (%rsp)
	leaq	672(%rsp), %rdi
	leaq	160(%rsp), %rsi
	movq	%rdx, 152(%rsp)                 # 8-byte Spill
	movl	%r13d, %ecx
	movl	%ebp, %r8d
	movl	%r15d, %r9d
	movq	%r11, %r12
	callq	*32624(%rbx)
	movl	160(%rsp), %ecx
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movq	%rax, %rdx
	callq	*31928(%rbx,%r14,8)
	movq	%r12, %rdi
	movslq	%ebp, %rcx
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movzwl	(%rdx,%rcx,2), %ecx
	movslq	%r15d, %rdx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movzwl	(%rsi,%rdx,2), %edx
	addl	%ecx, %edx
	addl	%eax, %edx
	xorl	%r14d, %r14d
	cmpl	$268435456, %edx                # imm = 0x10000000
	movl	$268435456, %r8d                # imm = 0x10000000
	cmovll	%edx, %r8d
	cmovgel	%r14d, %r15d
	cmovll	%ebp, %r14d
	testl	%edi, %edi
	jle	.LBB0_12
# %bb.3:                                # %for.body.lr.ph
	movl	%edi, %edx
	xorl	%r12d, %r12d
	movq	48(%rsp), %r9                   # 8-byte Reload
	movq	%rdx, 144(%rsp)                 # 8-byte Spill
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_4:                                # %for.inc
                                        #   in Loop: Header=BB0_5 Depth=1
	incq	%r12
	cmpq	%r12, %rdx
	je	.LBB0_12
.LBB0_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r9,%r12,4), %eax
	testl	%eax, %eax
	je	.LBB0_4
# %bb.6:                                # %for.body
                                        #   in Loop: Header=BB0_5 Depth=1
	cmpl	%eax, 32(%rsp)                  # 4-byte Folded Reload
	je	.LBB0_4
# %bb.7:                                # %if.then80
                                        #   in Loop: Header=BB0_5 Depth=1
	movswl	%ax, %ecx
	movl	400(%rsp), %ebp                 # 4-byte Reload
	cmpl	%ebp, %ecx
	cmovll	%ecx, %ebp
	movl	80(%rsp), %edx                  # 4-byte Reload
	cmpl	%ecx, %edx
	cmovgl	%edx, %ebp
	sarl	$16, %eax
	movl	112(%rsp), %ebx                 # 4-byte Reload
	cmpl	%ebx, %eax
	movq	%r15, 440(%rsp)                 # 8-byte Spill
	movl	%r8d, %r15d
	cmovll	%eax, %ebx
	movl	352(%rsp), %ecx                 # 4-byte Reload
	cmpl	%eax, %ecx
	cmovgl	%ecx, %ebx
	movl	$16, 160(%rsp)
	movq	456(%rsp), %rax                 # 8-byte Reload
	movq	24(%rax), %rax
	movq	%rax, 16(%rsp)
	movl	288(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	240(%rsp), %eax                 # 4-byte Reload
	movl	%eax, (%rsp)
	leaq	672(%rsp), %rdi
	leaq	160(%rsp), %rsi
	movq	152(%rsp), %rdx                 # 8-byte Reload
	movl	%r13d, %ecx
	movl	%ebp, %r8d
	movl	%ebx, %r9d
	movq	104(%rsp), %r13                 # 8-byte Reload
	callq	*32624(%r13)
	movl	160(%rsp), %ecx
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movq	%rax, %rdx
	movq	72(%rsp), %rax                  # 8-byte Reload
	callq	*31928(%r13,%rax,8)
	movq	48(%rsp), %r9                   # 8-byte Reload
	movq	64(%rsp), %r13                  # 8-byte Reload
	movslq	%ebp, %rcx
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movzwl	(%rdx,%rcx,2), %edx
	movslq	%ebx, %rsi
	movl	%r15d, %r8d
	movq	440(%rsp), %r15                 # 8-byte Reload
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movzwl	(%rdi,%rsi,2), %edi
	addl	%edx, %edi
	movq	144(%rsp), %rdx                 # 8-byte Reload
	addl	%eax, %edi
	cmpl	%r8d, %edi
	cmovll	%edi, %r8d
	cmovll	%esi, %r15d
	cmovll	%ecx, %r14d
	jmp	.LBB0_4
.LBB0_8:                                # %if.else
	movdqa	%xmm3, 288(%rsp)                # 16-byte Spill
	movdqa	%xmm2, 80(%rsp)                 # 16-byte Spill
	movdqa	%xmm1, 240(%rsp)                # 16-byte Spill
	movdqa	%xmm0, 352(%rsp)                # 16-byte Spill
	movl	%r14d, %eax
	movq	%r13, %rcx
	imull	%ecx, %eax
	addl	%r12d, %eax
	movslq	%eax, %rdx
	addq	%r9, %rdx
	movl	$16, %esi
                                        # kill: def $ecx killed $ecx killed $rcx
	movq	%r11, %r15
	callq	*31928(%rbx,%r8,8)
	movq	%r15, %rdx
	movl	%eax, %r8d
	movzwl	%r12w, %eax
	movl	%r14d, %ecx
	shll	$16, %ecx
	orl	%eax, %ecx
	movl	%ecx, 32(%rsp)                  # 4-byte Spill
	testl	%edx, %edx
	jle	.LBB0_13
# %bb.9:                                # %for.body.preheader.i
	movl	%edx, %eax
	cmpl	$16, %edx
	movq	24(%rsp), %r10                  # 8-byte Reload
	jae	.LBB0_15
# %bb.10:
	movl	$268435456, 452(%rsp)           # 4-byte Folded Spill
                                        # imm = 0x10000000
	xorl	%ecx, %ecx
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movdqa	352(%rsp), %xmm4                # 16-byte Reload
	movdqa	240(%rsp), %xmm5                # 16-byte Reload
	jmp	.LBB0_18
.LBB0_11:
	xorl	%r15d, %r15d
	movl	$268435456, %r8d                # imm = 0x10000000
	xorl	%r14d, %r14d
.LBB0_12:                               # %for.cond.cleanup
	movl	%r8d, 452(%rsp)                 # 4-byte Spill
	movq	%r14, 544(%rsp)                 # 8-byte Spill
	leal	2(%r14), %ebx
	movl	%ebx, %edx
	sarl	$2, %edx
	leal	2(%r15), %ebp
	movl	%ebp, %eax
	sarl	$2, %eax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
                                        # kill: def $eax killed $eax killed $rax
	movq	%r13, %rcx
	imull	%ecx, %eax
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	addl	%edx, %eax
	movslq	%eax, %rdx
	addq	136(%rsp), %rdx                 # 8-byte Folded Reload
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
                                        # kill: def $ecx killed $ecx killed $rcx
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	72(%rsp), %r8                   # 8-byte Reload
	callq	*31928(%rax,%r8,8)
	andl	$-4, %ebx
	movslq	%ebx, %rcx
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movzwl	(%rdx,%rcx,2), %ecx
	andl	$-4, %ebp
	movslq	%ebp, %rdx
	movq	24(%rsp), %r10                  # 8-byte Reload
	movzwl	(%r10,%rdx,2), %edx
	addl	%ecx, %edx
	addl	%eax, %edx
	cmpl	$268435456, %edx                # imm = 0x10000000
	movl	$268435456, %r8d                # imm = 0x10000000
	cmovll	%edx, %r8d
	movq	432(%rsp), %r14                 # 8-byte Reload
	cmpl	$0, 32(%rsp)                    # 4-byte Folded Reload
	je	.LBB0_14
.LBB0_28:                               # %if.then243
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movq	136(%rsp), %rdx                 # 8-byte Reload
	movl	%r13d, %ecx
	movq	104(%rsp), %rbx                 # 8-byte Reload
	movq	72(%rsp), %rax                  # 8-byte Reload
	movl	%r8d, %ebp
	callq	*31928(%rbx,%rax,8)
	movq	24(%rsp), %r10                  # 8-byte Reload
	movl	%ebp, %r8d
	movq	40(%rsp), %r12                  # 8-byte Reload
	movzwl	(%r12), %ecx
	movzwl	(%r10), %edx
	addl	%ecx, %edx
	addl	%eax, %edx
	xorl	%eax, %eax
	cmpl	%ebp, %edx
	cmovll	%edx, %r8d
	movq	112(%rsp), %rcx                 # 8-byte Reload
	cmovll	%eax, %ecx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	movq	80(%rsp), %rcx                  # 8-byte Reload
	cmovll	%eax, %ecx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB0_29
.LBB0_13:
	movl	$268435456, 452(%rsp)           # 4-byte Folded Spill
                                        # imm = 0x10000000
	xorl	%r15d, %r15d
	movq	$0, 544(%rsp)                   # 8-byte Folded Spill
	movl	%r14d, %eax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
                                        # kill: def $r12d killed $r12d killed $r12 def $r12
	movq	%r12, 80(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %r10                  # 8-byte Reload
	cmpl	$0, 32(%rsp)                    # 4-byte Folded Reload
	jne	.LBB0_28
	jmp	.LBB0_14
.LBB0_15:                               # %vector.ph
	movl	%eax, %ecx
	andl	$2147483632, %ecx               # imm = 0x7FFFFFF0
	pshufd	$0, 352(%rsp), %xmm0            # 16-byte Folded Reload
                                        # xmm0 = mem[0,0,0,0]
	movdqa	%xmm0, 400(%rsp)                # 16-byte Spill
	pshufd	$0, 240(%rsp), %xmm0            # 16-byte Folded Reload
                                        # xmm0 = mem[0,0,0,0]
	movdqa	%xmm0, 112(%rsp)                # 16-byte Spill
	movl	%eax, %edx
	shrl	$4, %edx
	andl	$134217727, %edx                # imm = 0x7FFFFFF
	shlq	$6, %rdx
	xorl	%esi, %esi
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movdqa	288(%rsp), %xmm0                # 16-byte Reload
	.p2align	4, 0x90
.LBB0_16:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi,%rsi), %xmm10
	movdqu	16(%rdi,%rsi), %xmm8
	movdqu	32(%rdi,%rsi), %xmm7
	movdqu	48(%rdi,%rsi), %xmm5
	movdqa	%xmm10, %xmm14
	pslld	$16, %xmm14
	psrad	$16, %xmm14
	movdqa	%xmm8, %xmm13
	pslld	$16, %xmm13
	psrad	$16, %xmm13
	movdqa	%xmm7, %xmm12
	pslld	$16, %xmm12
	psrad	$16, %xmm12
	movdqa	%xmm5, %xmm11
	pslld	$16, %xmm11
	psrad	$16, %xmm11
	movdqa	.LCPI0_0(%rip), %xmm1           # xmm1 = [2,2,2,2]
	paddd	%xmm1, %xmm14
	paddd	%xmm1, %xmm13
	paddd	%xmm1, %xmm12
	paddd	%xmm1, %xmm11
	psrad	$2, %xmm14
	psrad	$2, %xmm13
	psrad	$2, %xmm12
	psrad	$2, %xmm11
	psrad	$16, %xmm10
	psrad	$16, %xmm8
	psrad	$16, %xmm7
	psrad	$16, %xmm5
	paddd	%xmm1, %xmm10
	paddd	%xmm1, %xmm8
	paddd	%xmm1, %xmm7
	paddd	%xmm1, %xmm5
	psrad	$2, %xmm10
	psrad	$2, %xmm8
	psrad	$2, %xmm7
	psrad	$2, %xmm5
	movdqa	400(%rsp), %xmm9                # 16-byte Reload
	movdqa	%xmm9, %xmm1
	pcmpgtd	%xmm14, %xmm1
	movdqa	%xmm9, %xmm6
	pcmpgtd	%xmm13, %xmm6
	movdqa	%xmm9, %xmm4
	pcmpgtd	%xmm12, %xmm4
	movdqa	%xmm9, %xmm3
	pcmpgtd	%xmm11, %xmm3
	movdqa	112(%rsp), %xmm15               # 16-byte Reload
	movdqa	%xmm15, %xmm2
	pcmpgtd	%xmm14, %xmm2
	pand	%xmm2, %xmm14
	pandn	%xmm15, %xmm2
	por	%xmm14, %xmm2
	movdqa	%xmm15, %xmm14
	pcmpgtd	%xmm13, %xmm14
	pand	%xmm14, %xmm13
	pandn	%xmm15, %xmm14
	por	%xmm13, %xmm14
	movdqa	%xmm15, %xmm13
	pcmpgtd	%xmm12, %xmm13
	pand	%xmm13, %xmm12
	pandn	%xmm15, %xmm13
	por	%xmm12, %xmm13
	movdqa	%xmm15, %xmm12
	pcmpgtd	%xmm11, %xmm12
	pand	%xmm12, %xmm11
	pandn	%xmm15, %xmm12
	por	%xmm11, %xmm12
	movdqa	%xmm9, %xmm11
	pand	%xmm1, %xmm11
	pandn	%xmm2, %xmm1
	por	%xmm11, %xmm1
	movdqa	%xmm9, %xmm11
	pand	%xmm6, %xmm11
	pandn	%xmm14, %xmm6
	por	%xmm11, %xmm6
	movdqa	%xmm9, %xmm11
	pand	%xmm4, %xmm11
	pandn	%xmm13, %xmm4
	por	%xmm11, %xmm4
	pand	%xmm3, %xmm9
	pandn	%xmm12, %xmm3
	por	%xmm9, %xmm3
	movdqa	80(%rsp), %xmm2                 # 16-byte Reload
	movdqa	%xmm2, %xmm14
	pcmpgtd	%xmm10, %xmm14
	movdqa	%xmm2, %xmm13
	pcmpgtd	%xmm8, %xmm13
	movdqa	%xmm2, %xmm12
	pcmpgtd	%xmm7, %xmm12
	movdqa	%xmm2, %xmm11
	pcmpgtd	%xmm5, %xmm11
	movdqa	%xmm0, %xmm15
	pcmpgtd	%xmm10, %xmm15
	pand	%xmm15, %xmm10
	pandn	%xmm0, %xmm15
	por	%xmm10, %xmm15
	movdqa	%xmm0, %xmm10
	pcmpgtd	%xmm8, %xmm10
	pand	%xmm10, %xmm8
	pandn	%xmm0, %xmm10
	por	%xmm8, %xmm10
	movdqa	%xmm0, %xmm8
	pcmpgtd	%xmm7, %xmm8
	pand	%xmm8, %xmm7
	pandn	%xmm0, %xmm8
	por	%xmm7, %xmm8
	movdqa	%xmm0, %xmm7
	pcmpgtd	%xmm5, %xmm7
	pand	%xmm7, %xmm5
	pandn	%xmm0, %xmm7
	por	%xmm5, %xmm7
	movdqa	%xmm2, %xmm5
	pand	%xmm14, %xmm5
	pandn	%xmm15, %xmm14
	por	%xmm5, %xmm14
	movdqa	%xmm2, %xmm5
	pand	%xmm13, %xmm5
	pandn	%xmm10, %xmm13
	por	%xmm5, %xmm13
	movdqa	%xmm2, %xmm5
	pand	%xmm12, %xmm5
	pandn	%xmm8, %xmm12
	por	%xmm5, %xmm12
	movdqa	%xmm2, %xmm5
	pand	%xmm11, %xmm5
	pandn	%xmm7, %xmm11
	por	%xmm5, %xmm11
	movdqa	%xmm1, %xmm5
	punpckldq	%xmm14, %xmm5           # xmm5 = xmm5[0],xmm14[0],xmm5[1],xmm14[1]
	punpckhdq	%xmm14, %xmm1           # xmm1 = xmm1[2],xmm14[2],xmm1[3],xmm14[3]
	pslld	$16, %xmm1
	psrad	$16, %xmm1
	pslld	$16, %xmm5
	psrad	$16, %xmm5
	packssdw	%xmm1, %xmm5
	movdqu	%xmm5, 672(%rsp,%rsi)
	movdqa	%xmm6, %xmm5
	punpckldq	%xmm13, %xmm5           # xmm5 = xmm5[0],xmm13[0],xmm5[1],xmm13[1]
	punpckhdq	%xmm13, %xmm6           # xmm6 = xmm6[2],xmm13[2],xmm6[3],xmm13[3]
	pslld	$16, %xmm6
	psrad	$16, %xmm6
	pslld	$16, %xmm5
	psrad	$16, %xmm5
	packssdw	%xmm6, %xmm5
	movdqu	%xmm5, 688(%rsp,%rsi)
	movdqa	%xmm4, %xmm5
	punpckldq	%xmm12, %xmm5           # xmm5 = xmm5[0],xmm12[0],xmm5[1],xmm12[1]
	punpckhdq	%xmm12, %xmm4           # xmm4 = xmm4[2],xmm12[2],xmm4[3],xmm12[3]
	pslld	$16, %xmm4
	psrad	$16, %xmm4
	pslld	$16, %xmm5
	psrad	$16, %xmm5
	packssdw	%xmm4, %xmm5
	movdqu	%xmm5, 704(%rsp,%rsi)
	movdqa	%xmm3, %xmm4
	punpckldq	%xmm11, %xmm4           # xmm4 = xmm4[0],xmm11[0],xmm4[1],xmm11[1]
	punpckhdq	%xmm11, %xmm3           # xmm3 = xmm3[2],xmm11[2],xmm3[3],xmm11[3]
	pslld	$16, %xmm3
	psrad	$16, %xmm3
	pslld	$16, %xmm4
	psrad	$16, %xmm4
	packssdw	%xmm3, %xmm4
	movdqu	%xmm4, 720(%rsp,%rsi)
	addq	$64, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB0_16
# %bb.17:                               # %middle.block
	movl	$268435456, 452(%rsp)           # 4-byte Folded Spill
                                        # imm = 0x10000000
	cmpl	%eax, %ecx
	movdqa	352(%rsp), %xmm4                # 16-byte Reload
	movdqa	240(%rsp), %xmm5                # 16-byte Reload
	je	.LBB0_20
.LBB0_18:                               # %for.body.i.preheader
	movdqa	.LCPI0_1(%rip), %xmm0           # xmm0 = [2,2,u,u]
	.p2align	4, 0x90
.LBB0_19:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movd	(%rdi,%rcx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	pshuflw	$96, %xmm1, %xmm1               # xmm1 = xmm1[0,0,2,1,4,5,6,7]
	psrad	$16, %xmm1
	paddd	%xmm0, %xmm1
	psrad	$2, %xmm1
	movdqa	%xmm4, %xmm2
	pcmpgtd	%xmm1, %xmm2
	movdqa	%xmm5, %xmm3
	pcmpgtd	%xmm1, %xmm3
	pand	%xmm3, %xmm1
	pandn	%xmm5, %xmm3
	por	%xmm1, %xmm3
	movdqa	%xmm4, %xmm1
	pand	%xmm2, %xmm1
	pandn	%xmm3, %xmm2
	por	%xmm1, %xmm2
	pshuflw	$232, %xmm2, %xmm1              # xmm1 = xmm2[0,2,2,3,4,5,6,7]
	movd	%xmm1, 672(%rsp,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB0_19
.LBB0_20:                               # %for.body167.preheader
	shll	$4, %r8d
	movq	264(%rsp), %rax                 # 8-byte Reload
	leal	1(%rax), %ebx
	movl	$1, %r14d
	jmp	.LBB0_22
	.p2align	4, 0x90
.LBB0_21:                               # %for.inc220
                                        #   in Loop: Header=BB0_22 Depth=1
	incq	%r14
	cmpq	%r14, %rbx
	je	.LBB0_25
.LBB0_22:                               # %for.body167
                                        # =>This Inner Loop Header: Depth=1
	movl	668(%rsp,%r14,4), %ebp
	testl	%ebp, %ebp
	je	.LBB0_21
# %bb.23:                               # %land.lhs.true173
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	32(%rsp), %eax                  # 4-byte Reload
	cmpl	-4(%rdi,%r14,4), %eax
	je	.LBB0_21
# %bb.24:                               # %if.then180
                                        #   in Loop: Header=BB0_22 Depth=1
	movswl	%bp, %r15d
	sarl	$16, %ebp
	movq	%r13, %rcx
	movl	%ecx, %eax
	imull	%ebp, %eax
	addl	%r15d, %eax
	movslq	%eax, %rdx
	addq	136(%rsp), %rdx                 # 8-byte Folded Reload
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
                                        # kill: def $ecx killed $ecx killed $rcx
	movq	104(%rsp), %rax                 # 8-byte Reload
	movl	%r8d, %r12d
	movq	72(%rsp), %r8                   # 8-byte Reload
	callq	*31928(%rax,%r8,8)
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movq	24(%rsp), %r10                  # 8-byte Reload
	movl	%r12d, %r8d
	shll	$2, %r15d
	movslq	%r15d, %rcx
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movzwl	(%rdx,%rcx,2), %ecx
	shll	$2, %ebp
	movslq	%ebp, %rdx
	movzwl	(%r10,%rdx,2), %edx
	addl	%ecx, %edx
	addl	%eax, %edx
	shll	$4, %edx
	addl	%r14d, %edx
	cmpl	%r12d, %edx
	cmovll	%edx, %r8d
	jmp	.LBB0_21
.LBB0_25:                               # %for.cond.cleanup166
	movl	%r8d, %eax
	movq	432(%rsp), %r14                 # 8-byte Reload
	movl	%r14d, %edx
	movq	512(%rsp), %rcx                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	andl	$15, %eax
	je	.LBB0_27
# %bb.26:                               # %if.then225
	decl	%eax
	movswl	672(%rsp,%rax,4), %ecx
	movswl	674(%rsp,%rax,4), %edx
.LBB0_27:                               # %if.end238
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movq	%rdx, 112(%rsp)                 # 8-byte Spill
	sarl	$4, %r8d
	xorl	%r15d, %r15d
	movq	$0, 544(%rsp)                   # 8-byte Folded Spill
	cmpl	$0, 32(%rsp)                    # 4-byte Folded Reload
	jne	.LBB0_28
.LBB0_14:
	movq	104(%rsp), %rbx                 # 8-byte Reload
	movq	40(%rsp), %r12                  # 8-byte Reload
.LBB0_29:                               # %if.end264
	movq	280(%rsp), %rdx                 # 8-byte Reload
	movl	%r8d, 128(%rsp)                 # 4-byte Spill
	movl	16404(%rbx), %eax
	cmpq	$4, %rax
	ja	.LBB0_96
# %bb.30:                               # %if.end264
	movq	392(%rsp), %r8                  # 8-byte Reload
	movl	%r8d, %esi
	negl	%esi
	movq	336(%rsp), %r10                 # 8-byte Reload
	movl	%r10d, %ecx
	shll	$16, %ecx
	movq	344(%rsp), %rdi                 # 8-byte Reload
	movzwl	%di, %r9d
	orl	%ecx, %r9d
	movl	%edx, %ecx
	shll	$16, %ecx
	andl	$32767, %esi                    # imm = 0x7FFF
	subl	%ecx, %esi
	movl	%esi, 400(%rsp)                 # 4-byte Spill
	orl	$32768, %r9d                    # imm = 0x8000
	movl	%r9d, 352(%rsp)                 # 4-byte Spill
	movq	%r15, 440(%rsp)                 # 8-byte Spill
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_31:                               # %sw.bb3557
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movl	%esi, %eax
	movq	320(%rsp), %rcx                 # 8-byte Reload
	subl	%ecx, %eax
	cmpl	%edx, %eax
	cmovlel	%edx, %eax
	movl	%eax, 400(%rsp)                 # 4-byte Spill
	movq	112(%rsp), %rdx                 # 8-byte Reload
	movl	%edx, %r9d
	subl	%ecx, %r9d
	cmpl	%r8d, %r9d
	movl	%r8d, %eax
	movl	%r9d, 240(%rsp)                 # 4-byte Spill
	cmovgl	%r9d, %eax
	movl	%eax, 48(%rsp)                  # 4-byte Spill
	leal	(%rsi,%rcx), %eax
	cmpl	%r10d, %eax
	cmovll	%eax, %r10d
	movq	%r10, 336(%rsp)                 # 8-byte Spill
	leal	(%rdx,%rcx), %eax
	cmpl	%edi, %eax
	cmovll	%eax, %edi
	movq	%rdi, 344(%rsp)                 # 8-byte Spill
	movq	456(%rsp), %rsi                 # 8-byte Reload
	movq	112(%rsi), %rbp
	xorl	%eax, %eax
	movq	72(%rsp), %r14                  # 8-byte Reload
	cmpl	$4, %r14d
	setge	%al
	shll	$3, %eax
	leal	(%rax,%rax,2), %eax
	movslq	x264_pixel_size+24(%rax), %r12
	movq	31176(%rbx), %rcx
	movq	%rcx, 352(%rsp)                 # 8-byte Spill
	movslq	25792(%rbx), %rcx
	movq	x264_lambda_tab@GOTPCREL(%rip), %rdx
	movzbl	(%rdx,%rcx), %ecx
	shll	$5, %ecx
	addq	%rbx, %rcx
	movswl	128(%rsi), %edx
	negl	%edx
	movl	%edx, %esi
	andl	$3, %esi
	sarl	$2, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	4272(%rcx,%rsi,8), %rdx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rsi                  # 8-byte Reload
	leaq	(%rsi,%r12), %rdx
	movq	%r12, %r8
	shlq	$4, %r8
	leaq	(%rsi,%r8), %rcx
	addq	%rdx, %r8
	leaq	608(%rsp), %rdi
	movq	%rdi, (%rsp)
	movl	$x264_me_search_ref.zero, %edi
	movl	$16, %r9d
	callq	*32320(%rax,%rbx)
	movq	%r12, 264(%rsp)                 # 8-byte Spill
	cmpq	$4, %r12
	jne	.LBB0_47
# %bb.32:                               # %if.then3634
	movq	14680(%rbx), %rax
	movslq	128(%rax), %rax
	addq	$64, %rax
	imulq	%r13, %rax
	leaq	(,%rax,2), %rdx
	addq	%rbp, %rdx
	movl	128(%rsp), %r8d                 # 4-byte Reload
	jmp	.LBB0_48
.LBB0_33:                               # %sw.bb1041
	movq	512(%rsp), %r15                 # 8-byte Reload
	movslq	%r15d, %rax
	addq	136(%rsp), %rax                 # 8-byte Folded Reload
	movl	%r14d, %ecx
	movq	%r13, %r8
	imull	%r8d, %ecx
	movslq	%ecx, %rdi
	leaq	(%rax,%rdi), %rdx
	movq	%rdx, %rsi
	subq	%r13, %rsi
	addq	%r13, %rdx
	movq	%r13, %r9
	leaq	(%rdi,%rax), %rcx
	decq	%rcx
	leaq	1(%rdi,%rax), %r8
	leaq	160(%rsp), %rax
	movq	%rax, (%rsp)
	movq	56(%rsp), %rdi                  # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	movq	72(%rsp), %rax                  # 8-byte Reload
	callq	*32040(%rbx,%rax,8)
	movq	24(%rsp), %r9                   # 8-byte Reload
	movl	232(%rsp), %eax                 # 4-byte Reload
	andl	$-4, %eax
	cltq
	movzwl	(%r12,%rax,2), %ecx
	leal	-1(%r14), %edx
	leal	-4(,%r14,4), %esi
	movslq	%esi, %rsi
	movzwl	(%r9,%rsi,2), %esi
	addl	%ecx, %esi
	addl	160(%rsp), %esi
	movl	%esi, 160(%rsp)
	movzwl	(%r12,%rax,2), %eax
	leal	4(,%r14,4), %ecx
	movslq	%ecx, %rcx
	movzwl	(%r9,%rcx,2), %ecx
	addl	%eax, %ecx
	addl	164(%rsp), %ecx
	movl	128(%rsp), %r8d                 # 4-byte Reload
	cmpl	%r8d, %esi
	movl	%r8d, %eax
	cmovll	%esi, %eax
	leal	1(%r14), %edi
	movq	%r12, %r11
	movq	112(%rsp), %rbp                 # 8-byte Reload
	cmovll	%edx, %ebp
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	cmovll	%edi, %ebp
	movq	80(%rsp), %rdi                  # 8-byte Reload
	cmovll	%r15d, %edi
	cmpl	%r8d, %esi
	movl	%ecx, 164(%rsp)
	leal	-4(,%r15,4), %ecx
	movslq	%ecx, %rcx
	movzwl	(%r12,%rcx,2), %ecx
	cmovll	%r15d, %edi
	movl	272(%rsp), %edx                 # 4-byte Reload
	andl	$-4, %edx
	movslq	%edx, %rdx
	movzwl	(%r9,%rdx,2), %esi
	addl	%ecx, %esi
	addl	168(%rsp), %esi
	movl	%esi, 168(%rsp)
	leal	4(,%r15,4), %ecx
	movslq	%ecx, %rcx
	movzwl	(%r12,%rcx,2), %ecx
	movzwl	(%r9,%rdx,2), %edx
	addl	%ecx, %edx
	addl	172(%rsp), %edx
	cmpl	%eax, %esi
	movl	%eax, %r10d
	cmovll	%esi, %r10d
	cmpl	%r10d, %edx
	cmovll	%r14d, %ebp
	cmpl	%eax, %esi
	cmovll	%r14d, %ebp
	leal	-1(%r15), %ecx
	cmpl	%eax, %esi
	cmovgel	%edi, %ecx
	cmpl	%r10d, %edx
	cmovll	%edx, %r10d
	leal	1(%r15), %r12d
	cmovgel	%ecx, %r12d
	movq	64(%rsp), %rcx                  # 8-byte Reload
	negq	%rcx
	movl	%edx, 172(%rsp)
	movl	%r14d, %eax
	orl	%r15d, %eax
	movq	%rcx, 464(%rsp)                 # 8-byte Spill
	je	.LBB0_141
# %bb.34:                               # %if.then1155
	movq	136(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	movq	%r13, %r9
	leaq	(%rax,%r13), %rdx
	leaq	-1(%rax), %rcx
	leaq	1(%rax), %r8
	leaq	160(%rsp), %rax
	movq	%rax, (%rsp)
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movl	%r10d, 416(%rsp)                # 4-byte Spill
                                        # kill: def $r9d killed $r9d killed $r9
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	%r11, %r15
	callq	*32040(%rbx,%rax,8)
	movq	24(%rsp), %r9                   # 8-byte Reload
	movzwl	(%r15), %eax
	movzwl	-8(%r9), %edi
	addl	%eax, %edi
	addl	160(%rsp), %edi
	movl	%edi, 160(%rsp)
	movzwl	(%r15), %eax
	movzwl	8(%r9), %r8d
	addl	%eax, %r8d
	addl	164(%rsp), %r8d
	movl	416(%rsp), %eax                 # 4-byte Reload
	cmpl	%eax, %edi
	movl	%eax, %edx
	movl	%eax, %r10d
	cmovll	%edi, %edx
	movl	$-1, %ecx
	cmovll	%ecx, %ebp
	xorl	%esi, %esi
	cmpl	%edx, %r8d
	cmovll	%r8d, %edx
	movl	$1, %eax
	cmovll	%eax, %ebp
	cmovll	%esi, %r12d
	cmpl	%r10d, %edi
	movl	%r8d, 164(%rsp)
	movzwl	-8(%r15), %edi
	movzwl	(%r9), %r8d
	cmovll	%esi, %r12d
	addl	%edi, %r8d
	addl	168(%rsp), %r8d
	movl	%r8d, 168(%rsp)
	movzwl	8(%r15), %edi
	movzwl	(%r9), %r9d
	addl	%edi, %r9d
	addl	172(%rsp), %r9d
	cmpl	%edx, %r8d
	movl	%edx, %r10d
	cmovll	%r8d, %r10d
	cmpl	%r10d, %r9d
	cmovll	%esi, %ebp
	cmpl	%edx, %r8d
	cmovll	%ecx, %r12d
	cmovll	%esi, %ebp
	movq	%rbp, 112(%rsp)                 # 8-byte Spill
	cmpl	%r10d, %r9d
	movl	%r9d, 172(%rsp)
	cmovll	%r9d, %r10d
	cmovll	%eax, %r12d
	movq	%r12, 80(%rsp)                  # 8-byte Spill
	movq	264(%rsp), %r8                  # 8-byte Reload
	cmpl	$6, 72(%rsp)                    # 4-byte Folded Reload
	movq	336(%rsp), %r12                 # 8-byte Reload
	jne	.LBB0_142
.LBB0_35:
	movl	%r10d, %ebp
	jmp	.LBB0_41
.LBB0_36:                               # %sw.bb
	shll	$4, 128(%rsp)                   # 4-byte Folded Spill
	movq	%r13, %rbx
	negq	%rbx
	leaq	160(%rsp), %r14
	movq	112(%rsp), %rbp                 # 8-byte Reload
	movq	80(%rsp), %r12                  # 8-byte Reload
	.p2align	4, 0x90
.LBB0_37:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	%r12d, %r15
	movq	136(%rsp), %rax                 # 8-byte Reload
	addq	%r15, %rax
	movl	%ebp, %ecx
	movq	%r13, %r9
	imull	%r9d, %ecx
	movslq	%ecx, %rdi
	leaq	(%rax,%rdi), %rdx
	leaq	(%rdx,%rbx), %rsi
	addq	%r13, %rdx
	leaq	(%rdi,%rax), %rcx
	decq	%rcx
	leaq	1(%rdi,%rax), %r8
	movq	%r14, (%rsp)
	movq	56(%rsp), %rdi                  # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	72(%rsp), %r10                  # 8-byte Reload
	callq	*32040(%rax,%r10,8)
	movq	24(%rsp), %r10                  # 8-byte Reload
	leal	(,%r15,4), %eax
	movslq	%eax, %rcx
	movq	40(%rsp), %r8                   # 8-byte Reload
	movzwl	(%r8,%rcx,2), %edx
	leal	(,%rbp,4), %esi
	leal	-4(,%rbp,4), %eax
	cltq
	movzwl	(%r10,%rax,2), %eax
	addl	%edx, %eax
	addl	160(%rsp), %eax
	movl	%eax, 160(%rsp)
	movzwl	(%r8,%rcx,2), %edx
	leal	4(,%rbp,4), %ecx
	movslq	%ecx, %rcx
	movzwl	(%r10,%rcx,2), %ecx
	addl	%edx, %ecx
	addl	164(%rsp), %ecx
	movl	%ecx, 164(%rsp)
	leal	-4(,%r15,4), %edx
	movslq	%edx, %rdx
	movzwl	(%r8,%rdx,2), %edi
	movslq	%esi, %rsi
	movzwl	(%r10,%rsi,2), %edx
	addl	%edi, %edx
	addl	168(%rsp), %edx
	movl	%edx, 168(%rsp)
	leal	4(,%r15,4), %edi
	movslq	%edi, %rdi
	movzwl	(%r8,%rdi,2), %edi
	movzwl	(%r10,%rsi,2), %esi
	addl	%edi, %esi
	addl	172(%rsp), %esi
	shll	$4, %eax
	incl	%eax
	movl	128(%rsp), %edi                 # 4-byte Reload
	cmpl	%edi, %eax
	cmovgel	%edi, %eax
	shll	$4, %ecx
	orl	$3, %ecx
	cmpl	%eax, %ecx
	cmovgel	%eax, %ecx
	shll	$4, %edx
	orl	$4, %edx
	cmpl	%ecx, %edx
	cmovgel	%ecx, %edx
	movl	%esi, 172(%rsp)
	shll	$4, %esi
	orl	$12, %esi
	cmpl	%edx, %esi
	cmovgel	%edx, %esi
	testb	$15, %sil
	je	.LBB0_146
# %bb.38:                               # %if.end388
                                        #   in Loop: Header=BB0_37 Depth=1
	movl	%esi, %eax
	shll	$28, %eax
	sarl	$30, %eax
	subl	%eax, %r12d
	movl	%esi, %eax
	shll	$30, %eax
	sarl	$30, %eax
	subl	%eax, %ebp
	andl	$-16, %esi
	movl	%esi, 128(%rsp)                 # 4-byte Spill
	movq	320(%rsp), %rax                 # 8-byte Reload
	decl	%eax
	movq	%rax, 320(%rsp)                 # 8-byte Spill
	je	.LBB0_147
# %bb.39:                               # %land.rhs
                                        #   in Loop: Header=BB0_37 Depth=1
	movl	%r12d, %eax
	shll	$16, %eax
	movl	%ebp, %ecx
	andl	$32767, %ecx                    # imm = 0x7FFF
	orl	%eax, %ecx
	movl	352(%rsp), %eax                 # 4-byte Reload
	subl	%ecx, %eax
	addl	400(%rsp), %ecx                 # 4-byte Folded Reload
	orl	%eax, %ecx
	testl	$-2147467264, %ecx              # imm = 0x80004000
	je	.LBB0_37
	jmp	.LBB0_147
.LBB0_40:
	movl	128(%rsp), %ebp                 # 4-byte Reload
.LBB0_41:                               # %me_hex2
	movslq	80(%rsp), %r14                  # 4-byte Folded Reload
	movq	136(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%r14), %r15
	movl	%r13d, %eax
	imull	112(%rsp), %eax                 # 4-byte Folded Reload
	movslq	%eax, %r12
	leaq	(%r15,%r12), %rax
	leaq	(%r12,%r15), %rsi
	addq	$-2, %rsi
	leaq	-1(%r12,%r15), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %rcx                  # 8-byte Reload
	leaq	-1(%rax,%rcx,2), %rdx
	leaq	1(%r12,%r15), %rcx
	movq	%rcx, 240(%rsp)                 # 8-byte Spill
	movq	64(%rsp), %rcx                  # 8-byte Reload
	leaq	1(%rax,%rcx,2), %rcx
	leaq	160(%rsp), %r9
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	64(%rsp), %r8                   # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	movq	72(%rsp), %r13                  # 8-byte Reload
	callq	*31984(%rbx,%r13,8)
	movq	%r13, %r11
	movq	%rbx, %r10
	leal	-8(,%r14,4), %eax
	cltq
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	movq	112(%rsp), %rbx                 # 8-byte Reload
	leal	(,%rbx,4), %ecx
	movslq	%ecx, %rdx
	movq	%rdx, 288(%rsp)                 # 8-byte Spill
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%eax, %ecx
	addl	%ecx, 160(%rsp)
	leal	-4(,%r14,4), %eax
	movslq	%eax, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
	movzwl	(%rax,%rcx,2), %eax
	leal	8(,%rbx,4), %ecx
	movslq	%ecx, %rcx
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movzwl	(%rdx,%rcx,2), %edx
	addl	%eax, %edx
	addl	%edx, 164(%rsp)
	leal	4(,%r14,4), %eax
	movslq	%eax, %rdx
	movq	%rdx, 152(%rsp)                 # 8-byte Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
	movzwl	(%rax,%rdx,2), %eax
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movzwl	(%rdx,%rcx,2), %ecx
	addl	%eax, %ecx
	addl	%ecx, 168(%rsp)
	leaq	(%r12,%r15), %rsi
	addq	$2, %rsi
	movq	64(%rsp), %rax                  # 8-byte Reload
	addq	%rax, %rax
	movq	240(%rsp), %rdx                 # 8-byte Reload
	subq	%rax, %rdx
	movq	48(%rsp), %rcx                  # 8-byte Reload
	subq	%rax, %rcx
	leaq	172(%rsp), %r9
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	40(%rsp), %r12                  # 8-byte Reload
	movq	64(%rsp), %r13                  # 8-byte Reload
	movq	24(%rsp), %r15                  # 8-byte Reload
	movl	%r13d, %r8d
	callq	*31984(%r10,%r11,8)
	leal	8(,%r14,4), %eax
	movq	%rbx, %r14
	cltq
	movzwl	(%r12,%rax,2), %ecx
	movq	288(%rsp), %rax                 # 8-byte Reload
	movzwl	(%r15,%rax,2), %eax
	addl	%ecx, %eax
	addl	172(%rsp), %eax
	movl	%eax, 172(%rsp)
	movq	152(%rsp), %rcx                 # 8-byte Reload
	movzwl	(%r12,%rcx,2), %edx
	leal	-8(,%rbx,4), %ecx
	movslq	%ecx, %rsi
	movzwl	(%r15,%rsi,2), %ecx
	addl	%edx, %ecx
	addl	176(%rsp), %ecx
	movl	%ecx, 176(%rsp)
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movzwl	(%r12,%rdx,2), %edi
	movzwl	(%r15,%rsi,2), %edx
	addl	%edi, %edx
	addl	180(%rsp), %edx
	movl	%edx, 180(%rsp)
	shll	$3, %ebp
	movl	160(%rsp), %esi
	movl	164(%rsp), %edi
	leal	2(,%rsi,8), %esi
	cmpl	%ebp, %esi
	cmovll	%esi, %ebp
	leal	3(,%rdi,8), %esi
	cmpl	%ebp, %esi
	cmovll	%esi, %ebp
	movl	168(%rsp), %esi
	leal	4(,%rsi,8), %esi
	cmpl	%ebp, %esi
	cmovll	%esi, %ebp
	leal	5(,%rax,8), %eax
	cmpl	%ebp, %eax
	cmovll	%eax, %ebp
	leal	6(,%rcx,8), %eax
	cmpl	%ebp, %eax
	cmovll	%eax, %ebp
	leal	7(,%rdx,8), %eax
	cmpl	%ebp, %eax
	cmovll	%eax, %ebp
	movl	%ebp, %eax
	andl	$7, %eax
	movl	%ebp, 128(%rsp)                 # 4-byte Spill
	je	.LBB0_97
# %bb.42:                               # %if.then603
	leal	-1(%rax), %edx
	movsbl	hex2(%rdx,%rdx), %ecx
	movq	80(%rsp), %r11                  # 8-byte Reload
	addl	%ecx, %r11d
	movsbl	hex2+1(%rdx,%rdx), %edx
	addl	%edx, %r14d
	movq	320(%rsp), %r9                  # 8-byte Reload
	sarl	%r9d
	cmpl	$2, %r9d
	jl	.LBB0_166
# %bb.43:                               # %land.rhs624.preheader
	addl	$-2, %eax
	incl	%r9d
	movq	136(%rsp), %r8                  # 8-byte Reload
	.p2align	4, 0x90
.LBB0_44:                               # %land.rhs624
                                        # =>This Inner Loop Header: Depth=1
	movl	%r11d, %esi
	shll	$16, %esi
	movl	%r14d, %edi
	andl	$32767, %edi                    # imm = 0x7FFF
	orl	%esi, %edi
	movl	352(%rsp), %esi                 # 4-byte Reload
	subl	%edi, %esi
	addl	400(%rsp), %edi                 # 4-byte Folded Reload
	orl	%esi, %edi
	testl	$-2147467264, %edi              # imm = 0x80004000
	jne	.LBB0_167
# %bb.45:                               # %for.body639
                                        #   in Loop: Header=BB0_44 Depth=1
	movq	%r9, 320(%rsp)                  # 8-byte Spill
	movslq	%r11d, %rsi
	addq	%r8, %rsi
	movl	%r14d, %edi
	imull	%r13d, %edi
	movslq	%edi, %rdi
	addq	%rsi, %rdi
	movslq	%eax, %r9
	movsbl	hex2(%r9,%r9), %eax
	movslq	%eax, %r12
	leaq	(%rdi,%r12), %rax
	movq	%r13, %r8
	movsbl	hex2+1(%r9,%r9), %r13d
	movl	%r8d, %esi
	imull	%r13d, %esi
	movslq	%esi, %rsi
	addq	%rax, %rsi
	movsbq	%cl, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	addq	%rdi, %rax
	movsbl	%dl, %ebp
	movl	%r8d, %ecx
	imull	%ebp, %ecx
	movslq	%ecx, %rdx
	addq	%rax, %rdx
	movq	%r9, 112(%rsp)                  # 8-byte Spill
	leal	2(%r9), %eax
	movsbl	hex2(%rax,%rax), %ecx
	movslq	%ecx, %r15
	addq	%r15, %rdi
	movq	%r11, 80(%rsp)                  # 8-byte Spill
	movsbl	hex2+1(%rax,%rax), %ebx
	movl	%r8d, %eax
	imull	%ebx, %eax
	movslq	%eax, %rcx
	addq	%rdi, %rcx
	movq	56(%rsp), %rdi                  # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	leaq	160(%rsp), %r9
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	72(%rsp), %r10                  # 8-byte Reload
	callq	*31984(%rax,%r10,8)
	movq	80(%rsp), %r11                  # 8-byte Reload
	addl	%r11d, %r12d
	shll	$2, %r12d
	movslq	%r12d, %rax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movzwl	(%rcx,%rax,2), %ecx
	addl	%r14d, %r13d
	shll	$2, %r13d
	movslq	%r13d, %rax
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movzwl	(%rdi,%rax,2), %eax
	addl	%ecx, %eax
	addl	160(%rsp), %eax
	movl	%eax, 160(%rsp)
	movsbl	32(%rsp), %ecx                  # 1-byte Folded Reload
	addl	%r11d, %ecx
	shll	$2, %ecx
	movslq	%ecx, %rcx
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movzwl	(%rdx,%rcx,2), %edx
	addl	%r14d, %ebp
	shll	$2, %ebp
	movslq	%ebp, %rcx
	movzwl	(%rdi,%rcx,2), %ecx
	addl	%edx, %ecx
	addl	164(%rsp), %ecx
	movl	%ecx, 164(%rsp)
	addl	%r11d, %r15d
	shll	$2, %r15d
	movslq	%r15d, %rdx
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movzwl	(%rsi,%rdx,2), %edx
	addl	%r14d, %ebx
	shll	$2, %ebx
	movslq	%ebx, %rsi
	movzwl	(%rdi,%rsi,2), %esi
	addl	%edx, %esi
	addl	168(%rsp), %esi
	movl	%esi, 168(%rsp)
	movl	128(%rsp), %edx                 # 4-byte Reload
	andl	$-8, %edx
	leal	1(,%rax,8), %eax
	cmpl	%edx, %eax
	cmovll	%eax, %edx
	leal	2(,%rcx,8), %eax
	cmpl	%edx, %eax
	cmovll	%eax, %edx
	leal	3(,%rsi,8), %eax
	cmpl	%edx, %eax
	cmovll	%eax, %edx
	movl	%edx, 128(%rsp)                 # 4-byte Spill
	movl	%edx, %eax
	andl	$3, %eax
	je	.LBB0_165
# %bb.46:                               # %if.end799
                                        #   in Loop: Header=BB0_44 Depth=1
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movzbl	mod6m1-1(%rcx,%rax), %eax
	leal	(%rax,%rax), %edx
	movsbl	hex2+2(%rdx), %ecx
	addl	%ecx, %r11d
	movsbl	hex2+3(%rdx), %edx
	addl	%edx, %r14d
	movq	320(%rsp), %r9                  # 8-byte Reload
	decl	%r9d
	cmpl	$2, %r9d
	movq	64(%rsp), %r13                  # 8-byte Reload
	movq	136(%rsp), %r8                  # 8-byte Reload
	ja	.LBB0_44
	jmp	.LBB0_167
.LBB0_47:
	movl	128(%rsp), %r8d                 # 4-byte Reload
	movq	%rbp, %rdx
.LBB0_48:                               # %if.end3640
	movq	336(%rsp), %rbp                 # 8-byte Reload
	subl	400(%rsp), %ebp                 # 4-byte Folded Reload
	cmpl	$5, %r14d
	movq	352(%rsp), %rcx                 # 8-byte Reload
	ja	.LBB0_51
# %bb.49:                               # %if.end3640
	movl	$37, %eax
	btl	%r14d, %eax
	jae	.LBB0_51
# %bb.50:                               # %if.then3648
	movq	264(%rsp), %rax                 # 8-byte Reload
	imull	%r13d, %eax
	movq	%rax, 264(%rsp)                 # 8-byte Spill
.LBB0_51:                               # %if.end3650
	addl	$3, %ebp
	cmpl	$5, %r14d
	je	.LBB0_53
# %bb.52:                               # %if.end3650
	cmpl	$2, %r14d
	jne	.LBB0_54
.LBB0_53:                               # %if.then3656
	movl	616(%rsp), %eax
	movl	%eax, 612(%rsp)
.LBB0_54:                               # %if.end3659
	andl	$-4, %ebp
	cmpl	$4, 16404(%rbx)
	movslq	400(%rsp), %rax                 # 4-byte Folded Reload
	movq	%rax, 288(%rsp)                 # 8-byte Spill
	movq	%rbp, 336(%rsp)                 # 8-byte Spill
	jne	.LBB0_94
# %bb.55:                               # %if.then3664
	movq	%rdx, 144(%rsp)                 # 8-byte Spill
	leal	15(%rbp), %eax
	andl	$-16, %eax
	cltq
	movq	%rax, 312(%rsp)                 # 8-byte Spill
	leaq	(%rcx,%rax,2), %r15
	xorl	%eax, %eax
	movq	320(%rsp), %rcx                 # 8-byte Reload
	cmpl	$25, %ecx
	setge	%al
	addl	$11, %eax
	cmpl	$17, %ecx
	movl	$10, %ecx
	cmovgel	%eax, %ecx
	movl	%ecx, 152(%rsp)                 # 4-byte Spill
	movq	112(%rsp), %rbp                 # 8-byte Reload
	movl	%ebp, %eax
	movq	%r13, %rcx
	imull	%ecx, %eax
	cltq
	movq	80(%rsp), %r12                  # 8-byte Reload
	movslq	%r12d, %rdx
	addq	136(%rsp), %rdx                 # 8-byte Folded Reload
	addq	%rax, %rdx
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
                                        # kill: def $ecx killed $ecx killed $rcx
	callq	*31560(%rbx,%r14,8)
	leal	(,%r12,4), %ecx
	movslq	%ecx, %rcx
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movzwl	(%rdx,%rcx,2), %edx
	leal	(,%rbp,4), %ecx
	movslq	%ecx, %rcx
	movq	24(%rsp), %r10                  # 8-byte Reload
	movzwl	(%r10,%rcx,2), %ecx
	addl	%edx, %ecx
	addl	%eax, %ecx
	xorl	%r14d, %r14d
	movq	344(%rsp), %rdx                 # 8-byte Reload
	movl	48(%rsp), %edi                  # 4-byte Reload
	cmpl	%edx, %edi
	jle	.LBB0_99
.LBB0_56:                               # %for.cond.cleanup3701
	movq	320(%rsp), %rbx                 # 8-byte Reload
	movl	%ebx, %edx
	sarl	%edx
	andl	$-2, %ebx
	cmpl	%ebx, %r14d
	jle	.LBB0_73
# %bb.57:                               # %for.cond.cleanup3701
	movl	152(%rsp), %edi                 # 4-byte Reload
	imull	%ecx, %edi
	sarl	$3, %edi
	cmpl	%ecx, %edi
	jle	.LBB0_73
# %bb.58:                               # %while.body.preheader
	movq	352(%rsp), %rax                 # 8-byte Reload
	movq	312(%rsp), %rsi                 # 8-byte Reload
	leaq	(%rax,%rsi,2), %rax
	addq	$8, %rax
	.p2align	4, 0x90
.LBB0_59:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_61 Depth 2
                                        #     Child Loop BB0_70 Depth 2
	movl	%r14d, %esi
	addl	%ecx, %edi
	sarl	%edi
	testl	%r14d, %r14d
	movl	$0, %r14d
	jle	.LBB0_64
# %bb.60:                               # %land.rhs3888.preheader
                                        #   in Loop: Header=BB0_59 Depth=1
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB0_61:                               # %land.rhs3888
                                        #   Parent Loop BB0_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%edi, (%r15,%r14,8)
	jg	.LBB0_64
# %bb.62:                               # %for.inc3896
                                        #   in Loop: Header=BB0_61 Depth=2
	incq	%r14
	cmpq	%r14, %rsi
	jne	.LBB0_61
# %bb.63:                               # %while.cond.loopexit.loopexit1
                                        #   in Loop: Header=BB0_59 Depth=1
	movl	%edi, %r12d
	movl	%esi, %r14d
	jmp	.LBB0_71
	.p2align	4, 0x90
.LBB0_64:                               # %for.end3898
                                        #   in Loop: Header=BB0_59 Depth=1
	cmpl	%r14d, %esi
	jle	.LBB0_67
# %bb.65:                               # %for.body3904.lr.ph
                                        #   in Loop: Header=BB0_59 Depth=1
	movl	%edi, %r12d
	notl	%edi
	movl	%r14d, %r8d
	movl	%esi, %r9d
	subl	%r14d, %r9d
	testb	$1, %r9b
	jne	.LBB0_68
# %bb.66:                               #   in Loop: Header=BB0_59 Depth=1
	movl	%r14d, %r10d
	incl	%r14d
	cmpl	%r14d, %esi
	movl	%r10d, %r14d
	jne	.LBB0_69
	jmp	.LBB0_71
	.p2align	4, 0x90
.LBB0_67:                               #   in Loop: Header=BB0_59 Depth=1
	movl	%edi, %r12d
	jmp	.LBB0_71
.LBB0_68:                               # %for.body3904.prol
                                        #   in Loop: Header=BB0_59 Depth=1
	movq	(%r15,%r8,8), %r10
	movslq	%r14d, %r9
	movq	%r10, (%r15,%r9,8)
	addl	%edi, %r10d
	shrl	$31, %r10d
	addl	%r14d, %r10d
	incq	%r8
	incl	%r14d
	cmpl	%r14d, %esi
	movl	%r10d, %r14d
	je	.LBB0_71
.LBB0_69:                               # %for.body3904.preheader
                                        #   in Loop: Header=BB0_59 Depth=1
	leaq	(%rax,%r8,8), %r9
	movl	%r10d, %r14d
	.p2align	4, 0x90
.LBB0_70:                               # %for.body3904
                                        #   Parent Loop BB0_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%r9), %r10
	movslq	%r14d, %r11
	movq	%r10, (%r15,%r11,8)
	addl	%edi, %r10d
	shrl	$31, %r10d
	addl	%r10d, %r11d
	movq	(%r9), %r10
	movslq	%r11d, %r14
	movq	%r10, (%r15,%r14,8)
	addl	%edi, %r10d
	shrl	$31, %r10d
	addl	%r10d, %r14d
	addl	$2, %r8d
	addq	$16, %r9
	cmpl	%r8d, %esi
	jg	.LBB0_70
	.p2align	4, 0x90
.LBB0_71:                               # %while.cond.loopexit
                                        #   in Loop: Header=BB0_59 Depth=1
	cmpl	%ebx, %r14d
	jle	.LBB0_149
# %bb.72:                               # %while.cond.loopexit
                                        #   in Loop: Header=BB0_59 Depth=1
	movl	%r12d, %edi
	cmpl	%ecx, %r12d
	movq	24(%rsp), %r10                  # 8-byte Reload
	jg	.LBB0_59
.LBB0_73:                               # %while.cond3919.preheader
	cmpl	%edx, %r14d
	jle	.LBB0_150
.LBB0_74:                               # %for.cond3924.preheader.preheader
	movslq	%r14d, %rax
	movslq	%edx, %rcx
	leal	3(%r14), %edx
	xorl	%esi, %esi
	jmp	.LBB0_76
	.p2align	4, 0x90
.LBB0_75:                               # %for.cond.cleanup3927
                                        #   in Loop: Header=BB0_76 Depth=1
	movq	-8(%r15,%rax,8), %rdi
	decq	%rax
	movslq	%r10d, %r8
	movq	%rdi, (%r15,%r8,8)
	incl	%esi
	addb	$3, %dl
	cmpq	%rcx, %rax
	jle	.LBB0_120
.LBB0_76:                               # %for.cond3924.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_86 Depth 2
                                        #     Child Loop BB0_82 Depth 2
	movzbl	%dl, %edx
	andl	$3, %edx
	movl	$0, %r10d
	cmpq	$2, %rax
	jl	.LBB0_75
# %bb.77:                               # %for.body3928.preheader
                                        #   in Loop: Header=BB0_76 Depth=1
	movl	%r14d, %edi
	subl	%esi, %edi
	leaq	-1(%rdi), %r8
	addq	$-2, %rdi
	cmpq	$3, %rdi
	jae	.LBB0_84
# %bb.78:                               #   in Loop: Header=BB0_76 Depth=1
	xorl	%r9d, %r9d
	movl	$1, %edi
.LBB0_79:                               # %for.cond.cleanup3927.loopexit.unr-lcssa
                                        #   in Loop: Header=BB0_76 Depth=1
	movl	%r9d, %r10d
	testb	$3, %r8b
	je	.LBB0_75
# %bb.80:                               # %for.body3928.epil.preheader
                                        #   in Loop: Header=BB0_76 Depth=1
	movq	%rdx, %r8
	jmp	.LBB0_82
	.p2align	4, 0x90
.LBB0_81:                               # %for.body3928.epil
                                        #   in Loop: Header=BB0_82 Depth=2
	incq	%rdi
	movl	%r10d, %r9d
	decq	%r8
	je	.LBB0_75
.LBB0_82:                               # %for.body3928.epil
                                        #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r15,%rdi,8), %r11d
	movslq	%r9d, %rbx
	movl	%edi, %r10d
	cmpl	(%r15,%rbx,8), %r11d
	jg	.LBB0_81
# %bb.83:                               # %for.body3928.epil
                                        #   in Loop: Header=BB0_82 Depth=2
	movl	%r9d, %r10d
	jmp	.LBB0_81
	.p2align	4, 0x90
.LBB0_84:                               # %for.body3928.preheader.new
                                        #   in Loop: Header=BB0_76 Depth=1
	movq	%r8, %r10
	andq	$-4, %r10
	xorl	%ebx, %ebx
	movl	$1, %edi
	xorl	%r11d, %r11d
	jmp	.LBB0_86
	.p2align	4, 0x90
.LBB0_85:                               # %for.body3928
                                        #   in Loop: Header=BB0_86 Depth=2
	addq	$4, %rdi
	addq	$4, %r11
	movl	%r9d, %ebx
	cmpq	%r10, %r11
	je	.LBB0_79
.LBB0_86:                               # %for.body3928
                                        #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%ebx, %r12
	movl	(%r15,%rdi,8), %ebp
	movl	%edi, %r9d
	cmpl	(%r15,%r12,8), %ebp
	jg	.LBB0_87
# %bb.90:                               # %for.body3928
                                        #   in Loop: Header=BB0_86 Depth=2
	movl	%ebx, %r9d
	movl	8(%r15,%rdi,8), %ebx
	movslq	%r9d, %r12
	cmpl	(%r15,%r12,8), %ebx
	jle	.LBB0_88
.LBB0_91:                               #   in Loop: Header=BB0_86 Depth=2
	leal	1(%rdi), %r9d
	movl	16(%r15,%rdi,8), %ebx
	movslq	%r9d, %r12
	cmpl	(%r15,%r12,8), %ebx
	jle	.LBB0_89
.LBB0_92:                               #   in Loop: Header=BB0_86 Depth=2
	leal	2(%rdi), %r9d
	movl	24(%r15,%rdi,8), %ebx
	movslq	%r9d, %r12
	cmpl	(%r15,%r12,8), %ebx
	jle	.LBB0_85
	jmp	.LBB0_93
	.p2align	4, 0x90
.LBB0_87:                               # %for.body3928
                                        #   in Loop: Header=BB0_86 Depth=2
	movl	8(%r15,%rdi,8), %ebx
	movslq	%r9d, %r12
	cmpl	(%r15,%r12,8), %ebx
	jg	.LBB0_91
.LBB0_88:                               # %for.body3928
                                        #   in Loop: Header=BB0_86 Depth=2
	movl	16(%r15,%rdi,8), %ebx
	movslq	%r9d, %r12
	cmpl	(%r15,%r12,8), %ebx
	jg	.LBB0_92
.LBB0_89:                               # %for.body3928
                                        #   in Loop: Header=BB0_86 Depth=2
	movl	24(%r15,%rdi,8), %ebx
	movslq	%r9d, %r12
	cmpl	(%r15,%r12,8), %ebx
	jle	.LBB0_85
.LBB0_93:                               #   in Loop: Header=BB0_86 Depth=2
	leal	3(%rdi), %r9d
	jmp	.LBB0_85
.LBB0_94:                               # %for.cond4015.preheader
	movq	344(%rsp), %rax                 # 8-byte Reload
	movl	48(%rsp), %esi                  # 4-byte Reload
	cmpl	%eax, %esi
	jle	.LBB0_121
# %bb.95:
	movq	24(%rsp), %r10                  # 8-byte Reload
	jmp	.LBB0_153
.LBB0_96:
	movl	128(%rsp), %ebp                 # 4-byte Reload
	jmp	.LBB0_169
.LBB0_97:
	movq	136(%rsp), %r8                  # 8-byte Reload
	movq	80(%rsp), %r11                  # 8-byte Reload
	jmp	.LBB0_167
.LBB0_99:                               # %for.body3702.lr.ph
	movq	288(%rsp), %rsi                 # 8-byte Reload
	movq	144(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rsi,2), %rax
	movq	%rax, 272(%rsp)                 # 8-byte Spill
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rsi,2), %rax
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	movq	392(%rsp), %rax                 # 8-byte Reload
	movl	240(%rsp), %r8d                 # 4-byte Reload
	cmpl	%r8d, %eax
	cmovgl	%eax, %r8d
	movq	136(%rsp), %rax                 # 8-byte Reload
	addq	%rsi, %rax
	movq	%rax, 328(%rsp)                 # 8-byte Spill
	movslq	%r8d, %rsi
	addl	%esi, %edx
	subl	%edi, %edx
	incl	%edx
	xorl	%r14d, %r14d
	movq	336(%rsp), %r9                  # 8-byte Reload
	movq	%rdx, 344(%rsp)                 # 8-byte Spill
	jmp	.LBB0_102
	.p2align	4, 0x90
.LBB0_100:                              # %for.end3862
                                        #   in Loop: Header=BB0_102 Depth=1
	addl	48(%rsp), %ebp                  # 4-byte Folded Reload
	movl	%ebp, %ecx
	movq	104(%rsp), %rbx                 # 8-byte Reload
	movq	24(%rsp), %r10                  # 8-byte Reload
	movq	64(%rsp), %r13                  # 8-byte Reload
	movq	336(%rsp), %r9                  # 8-byte Reload
	movq	344(%rsp), %rdx                 # 8-byte Reload
.LBB0_101:                              # %cleanup3864
                                        #   in Loop: Header=BB0_102 Depth=1
	incq	%rsi
	cmpl	%esi, %edx
	je	.LBB0_56
.LBB0_102:                              # %for.body3702
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_106 Depth 2
                                        #     Child Loop BB0_118 Depth 2
	leal	(,%rsi,4), %eax
	cltq
	movzwl	(%r10,%rax,2), %eax
	movl	%ecx, %ebp
	movl	%eax, 48(%rsp)                  # 4-byte Spill
	subl	%eax, %ebp
	jle	.LBB0_101
# %bb.103:                              # %if.end3711
                                        #   in Loop: Header=BB0_102 Depth=1
	movq	%rsi, 240(%rsp)                 # 8-byte Spill
	imulq	%r13, %rsi
	movq	%rsi, %r13
	movq	272(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rsi,2), %rsi
	movl	%ebp, %eax
	shll	$4, %eax
	movl	%ebp, %ecx
	addl	%eax, %ecx
	leal	15(%rbp,%rax), %eax
	cmovnsl	%ecx, %eax
	sarl	$4, %eax
	movl	%eax, (%rsp)
	leaq	608(%rsp), %rdi
	movq	264(%rsp), %rdx                 # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movq	232(%rsp), %rcx                 # 8-byte Reload
	movq	352(%rsp), %r8                  # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	movq	72(%rsp), %rax                  # 8-byte Reload
	callq	*32464(%rbx,%rax,8)
                                        # kill: def $eax killed $eax def $rax
	xorl	%r12d, %r12d
	cmpl	$3, %eax
	movq	%rax, 280(%rsp)                 # 8-byte Spill
	jl	.LBB0_113
# %bb.104:                              # %for.body3730.lr.ph
                                        #   in Loop: Header=BB0_102 Depth=1
	addl	$-2, %eax
	movl	%eax, 392(%rsp)                 # 4-byte Spill
	movq	328(%rsp), %rax                 # 8-byte Reload
	movq	%r13, 144(%rsp)                 # 8-byte Spill
	addq	%rax, %r13
	xorl	%r12d, %r12d
	movq	352(%rsp), %rdi                 # 8-byte Reload
	jmp	.LBB0_106
	.p2align	4, 0x90
.LBB0_105:                              # %if.end3801.2
                                        #   in Loop: Header=BB0_106 Depth=2
	addq	$3, %r12
	cmpl	%r12d, 392(%rsp)                # 4-byte Folded Reload
	jle	.LBB0_114
.LBB0_106:                              # %for.body3730
                                        #   Parent Loop BB0_102 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movswq	(%rdi,%r12,2), %rsi
	addq	%r13, %rsi
	movswq	2(%rdi,%r12,2), %rdx
	addq	%r13, %rdx
	movswq	4(%rdi,%r12,2), %rcx
	addq	%r13, %rcx
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	64(%rsp), %r8                   # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	leaq	160(%rsp), %r9
	movq	72(%rsp), %rax                  # 8-byte Reload
	callq	*32240(%rbx,%rax,8)
	movq	352(%rsp), %rdi                 # 8-byte Reload
	movswq	(%rdi,%r12,2), %rax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movzwl	(%rcx,%rax,2), %ecx
	addl	160(%rsp), %ecx
	movl	%ebp, %eax
	movl	152(%rsp), %edx                 # 4-byte Reload
	imull	%edx, %eax
	sarl	$3, %eax
	cmpl	%eax, %ecx
	jge	.LBB0_108
# %bb.107:                              # %if.then3777
                                        #   in Loop: Header=BB0_106 Depth=2
	cmpl	%ebp, %ecx
	cmovll	%ecx, %ebp
	addl	48(%rsp), %ecx                  # 4-byte Folded Reload
	movslq	%r14d, %r14
	movl	%ecx, (%r15,%r14,8)
	movzwl	(%rdi,%r12,2), %eax
	addw	400(%rsp), %ax                  # 2-byte Folded Reload
	movw	%ax, 4(%r15,%r14,8)
	movq	240(%rsp), %r8                  # 8-byte Reload
	movw	%r8w, 6(%r15,%r14,8)
	incl	%r14d
	movl	%ebp, %eax
	imull	%edx, %eax
	sarl	$3, %eax
	jmp	.LBB0_109
	.p2align	4, 0x90
.LBB0_108:                              #   in Loop: Header=BB0_106 Depth=2
	movq	240(%rsp), %r8                  # 8-byte Reload
.LBB0_109:                              # %if.end3801
                                        #   in Loop: Header=BB0_106 Depth=2
	movswq	2(%rdi,%r12,2), %rcx
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movzwl	(%rsi,%rcx,2), %ecx
	addl	164(%rsp), %ecx
	cmpl	%eax, %ecx
	jge	.LBB0_111
# %bb.110:                              # %if.then3777.1
                                        #   in Loop: Header=BB0_106 Depth=2
	cmpl	%ebp, %ecx
	cmovll	%ecx, %ebp
	addl	48(%rsp), %ecx                  # 4-byte Folded Reload
	movslq	%r14d, %r14
	movl	%ecx, (%r15,%r14,8)
	movzwl	2(%rdi,%r12,2), %eax
	addw	400(%rsp), %ax                  # 2-byte Folded Reload
	movw	%ax, 4(%r15,%r14,8)
	movw	%r8w, 6(%r15,%r14,8)
	incl	%r14d
	movl	%ebp, %eax
	imull	%edx, %eax
	sarl	$3, %eax
.LBB0_111:                              # %if.end3801.1
                                        #   in Loop: Header=BB0_106 Depth=2
	movswq	4(%rdi,%r12,2), %rcx
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movzwl	(%rdx,%rcx,2), %ecx
	addl	168(%rsp), %ecx
	cmpl	%eax, %ecx
	jge	.LBB0_105
# %bb.112:                              # %if.then3777.2
                                        #   in Loop: Header=BB0_106 Depth=2
	cmpl	%ebp, %ecx
	cmovll	%ecx, %ebp
	addl	48(%rsp), %ecx                  # 4-byte Folded Reload
	movslq	%r14d, %r14
	movl	%ecx, (%r15,%r14,8)
	movzwl	4(%rdi,%r12,2), %eax
	addw	400(%rsp), %ax                  # 2-byte Folded Reload
	movw	%ax, 4(%r15,%r14,8)
	movw	%r8w, 6(%r15,%r14,8)
	incl	%r14d
	jmp	.LBB0_105
	.p2align	4, 0x90
.LBB0_113:                              #   in Loop: Header=BB0_102 Depth=1
	movq	352(%rsp), %rdi                 # 8-byte Reload
	movq	240(%rsp), %rsi                 # 8-byte Reload
	cmpl	%eax, %r12d
	jl	.LBB0_115
	jmp	.LBB0_100
	.p2align	4, 0x90
.LBB0_114:                              # %for.cond3809.preheader.loopexit
                                        #   in Loop: Header=BB0_102 Depth=1
	movq	240(%rsp), %rsi                 # 8-byte Reload
	movq	144(%rsp), %r13                 # 8-byte Reload
	movq	280(%rsp), %rax                 # 8-byte Reload
	cmpl	%eax, %r12d
	jge	.LBB0_100
.LBB0_115:                              # %for.body3812.lr.ph
                                        #   in Loop: Header=BB0_102 Depth=1
	addq	136(%rsp), %r13                 # 8-byte Folded Reload
	movq	%r13, 144(%rsp)                 # 8-byte Spill
	movl	%r12d, %eax
	leaq	(%rdi,%rax,2), %r13
	jmp	.LBB0_118
	.p2align	4, 0x90
.LBB0_116:                              # %if.then3839
                                        #   in Loop: Header=BB0_118 Depth=2
	cmpl	%ebp, %ecx
	cmovll	%ecx, %ebp
	addl	48(%rsp), %ecx                  # 4-byte Folded Reload
	movslq	%r14d, %r14
	movl	%ecx, (%r15,%r14,8)
	movw	%bx, 4(%r15,%r14,8)
	movq	240(%rsp), %rsi                 # 8-byte Reload
	movw	%si, 6(%r15,%r14,8)
	incl	%r14d
.LBB0_117:                              # %if.end3859
                                        #   in Loop: Header=BB0_118 Depth=2
	movq	280(%rsp), %rax                 # 8-byte Reload
	incl	%r12d
	addq	$2, %r13
	cmpl	%r12d, %eax
	jle	.LBB0_100
.LBB0_118:                              # %for.body3812
                                        #   Parent Loop BB0_102 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movswq	(%r13), %rbx
	addq	288(%rsp), %rbx                 # 8-byte Folded Reload
	movq	144(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rbx), %rdx
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movq	64(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	72(%rsp), %r8                   # 8-byte Reload
	callq	*31560(%rax,%r8,8)
	movswq	(%r13), %rcx
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movzwl	(%rdx,%rcx,2), %ecx
	addl	%eax, %ecx
	movl	%ebp, %eax
	imull	152(%rsp), %eax                 # 4-byte Folded Reload
	sarl	$3, %eax
	cmpl	%eax, %ecx
	jl	.LBB0_116
# %bb.119:                              #   in Loop: Header=BB0_118 Depth=2
	movq	240(%rsp), %rsi                 # 8-byte Reload
	jmp	.LBB0_117
.LBB0_120:                              # %for.cond3950.preheader.loopexit
	movl	%eax, %r14d
	movl	128(%rsp), %r8d                 # 4-byte Reload
	movq	24(%rsp), %r10                  # 8-byte Reload
	testl	%r14d, %r14d
	jg	.LBB0_151
	jmp	.LBB0_153
.LBB0_121:                              # %for.body4019.lr.ph
	movq	288(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rdx,%rcx,2), %rdx
	movq	%rdx, 280(%rsp)                 # 8-byte Spill
	movq	32(%rsp), %rdx                  # 8-byte Reload
	leaq	(%rdx,%rcx,2), %rcx
	movq	%rcx, 320(%rsp)                 # 8-byte Spill
	movq	392(%rsp), %rcx                 # 8-byte Reload
	movl	240(%rsp), %edx                 # 4-byte Reload
	cmpl	%edx, %ecx
	cmovgl	%ecx, %edx
	movslq	%edx, %rdi
	addl	%edi, %eax
	subl	%esi, %eax
	incl	%eax
	movq	24(%rsp), %r10                  # 8-byte Reload
	movq	%rax, 344(%rsp)                 # 8-byte Spill
	jmp	.LBB0_125
	.p2align	4, 0x90
.LBB0_122:                              #   in Loop: Header=BB0_125 Depth=1
	movq	112(%rsp), %rbp                 # 8-byte Reload
.LBB0_123:                              # %cleanup4194
                                        #   in Loop: Header=BB0_125 Depth=1
	movq	80(%rsp), %r13                  # 8-byte Reload
.LBB0_124:                              # %cleanup4194
                                        #   in Loop: Header=BB0_125 Depth=1
	movq	%r13, 80(%rsp)                  # 8-byte Spill
	movq	%rbp, 112(%rsp)                 # 8-byte Spill
	incq	%rdi
	movq	344(%rsp), %rax                 # 8-byte Reload
	cmpl	%edi, %eax
	movq	64(%rsp), %r13                  # 8-byte Reload
	je	.LBB0_153
.LBB0_125:                              # %for.body4019
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_129 Depth 2
                                        #     Child Loop BB0_139 Depth 2
	leal	(,%rdi,4), %eax
	cltq
	movzwl	(%r10,%rax,2), %ecx
	movl	%r8d, %r12d
	subl	%ecx, %r12d
	jle	.LBB0_122
# %bb.126:                              # %if.end4029
                                        #   in Loop: Header=BB0_125 Depth=1
	movl	%ecx, 144(%rsp)                 # 4-byte Spill
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	movq	%r10, %r15
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	movq	%rdi, %rbx
	imulq	%r13, %rbx
	movq	280(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rbx,2), %rsi
	movl	%r12d, (%rsp)
	leaq	608(%rsp), %rdi
	movq	264(%rsp), %rdx                 # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movq	320(%rsp), %rcx                 # 8-byte Reload
	movq	352(%rsp), %r8                  # 8-byte Reload
	movq	336(%rsp), %r9                  # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	movq	104(%rsp), %r13                 # 8-byte Reload
	movq	72(%rsp), %rax                  # 8-byte Reload
	callq	*32464(%r13,%rax,8)
                                        # kill: def $eax killed $eax def $rax
	xorl	%r14d, %r14d
	cmpl	$3, %eax
	movq	%rax, 240(%rsp)                 # 8-byte Spill
	movq	%rbx, 48(%rsp)                  # 8-byte Spill
	jl	.LBB0_135
# %bb.127:                              # %for.body4048.preheader
                                        #   in Loop: Header=BB0_125 Depth=1
	leal	-2(%rax), %r13d
	movq	136(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rbx), %rbp
	xorl	%r14d, %r14d
	movq	112(%rsp), %rbx                 # 8-byte Reload
	movq	352(%rsp), %rdi                 # 8-byte Reload
	movl	400(%rsp), %r15d                # 4-byte Reload
	jmp	.LBB0_129
	.p2align	4, 0x90
.LBB0_128:                              # %for.inc4147
                                        #   in Loop: Header=BB0_129 Depth=2
	addq	$3, %r14
	cmpl	%r14d, %r13d
	jle	.LBB0_136
.LBB0_129:                              # %for.body4048
                                        #   Parent Loop BB0_125 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movswq	(%rdi,%r14,2), %rsi
	movq	288(%rsp), %rax                 # 8-byte Reload
	addq	%rax, %rsi
	addq	%rbp, %rsi
	movswq	2(%rdi,%r14,2), %rdx
	addq	%rax, %rdx
	addq	%rbp, %rdx
	movswq	4(%rdi,%r14,2), %rcx
	addq	%rax, %rcx
	addq	%rbp, %rcx
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	64(%rsp), %r8                   # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	leaq	160(%rsp), %r9
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	104(%rsp), %r10                 # 8-byte Reload
	callq	*31984(%r10,%rax,8)
	movq	352(%rsp), %rdi                 # 8-byte Reload
	movswl	(%rdi,%r14,2), %eax
	addl	%r15d, %eax
	shll	$2, %eax
	cltq
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movzwl	(%rsi,%rax,2), %edx
	addl	160(%rsp), %edx
	movl	%edx, 160(%rsp)
	movswl	2(%rdi,%r14,2), %eax
	addl	%r15d, %eax
	shll	$2, %eax
	cltq
	movzwl	(%rsi,%rax,2), %ecx
	addl	164(%rsp), %ecx
	movl	%ecx, 164(%rsp)
	movswl	4(%rdi,%r14,2), %eax
	addl	%r15d, %eax
	shll	$2, %eax
	cltq
	movzwl	(%rsi,%rax,2), %eax
	addl	168(%rsp), %eax
	movl	%eax, 168(%rsp)
	cmpl	%r12d, %edx
	movq	32(%rsp), %r8                   # 8-byte Reload
	jge	.LBB0_130
# %bb.132:                              # %if.then4118
                                        #   in Loop: Header=BB0_129 Depth=2
	movswl	(%rdi,%r14,2), %esi
	addl	%r15d, %esi
	movq	%rsi, 80(%rsp)                  # 8-byte Spill
	movl	%edx, %r12d
	movl	%r8d, %ebx
	cmpl	%r12d, %ecx
	jl	.LBB0_133
.LBB0_131:                              # %if.end4135
                                        #   in Loop: Header=BB0_129 Depth=2
	cmpl	%r12d, %eax
	jge	.LBB0_128
	jmp	.LBB0_134
	.p2align	4, 0x90
.LBB0_130:                              # %if.end4124
                                        #   in Loop: Header=BB0_129 Depth=2
	cmpl	%r12d, %ecx
	jge	.LBB0_131
.LBB0_133:                              # %if.then4128
                                        #   in Loop: Header=BB0_129 Depth=2
	movswl	2(%rdi,%r14,2), %edx
	addl	%r15d, %edx
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	movl	%ecx, %r12d
	movl	%r8d, %ebx
	cmpl	%r12d, %eax
	jge	.LBB0_128
.LBB0_134:                              # %if.then4139
                                        #   in Loop: Header=BB0_129 Depth=2
	movswl	4(%rdi,%r14,2), %ecx
	addl	%r15d, %ecx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movl	%eax, %r12d
	movl	%r8d, %ebx
	jmp	.LBB0_128
	.p2align	4, 0x90
.LBB0_135:                              #   in Loop: Header=BB0_125 Depth=1
	movq	112(%rsp), %rbx                 # 8-byte Reload
	movq	%r15, %r10
	movl	400(%rsp), %r15d                # 4-byte Reload
	movq	32(%rsp), %rdi                  # 8-byte Reload
	jmp	.LBB0_137
	.p2align	4, 0x90
.LBB0_136:                              # %for.end4149.loopexit
                                        #   in Loop: Header=BB0_125 Depth=1
	movq	24(%rsp), %r10                  # 8-byte Reload
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movq	240(%rsp), %rax                 # 8-byte Reload
.LBB0_137:                              # %for.end4149
                                        #   in Loop: Header=BB0_125 Depth=1
	movq	%rbx, %rbp
	movl	%r12d, %r8d
	addl	144(%rsp), %r8d                 # 4-byte Folded Reload
	cmpl	%eax, %r14d
	jge	.LBB0_123
# %bb.138:                              # %for.body4154.lr.ph
                                        #   in Loop: Header=BB0_125 Depth=1
	movq	48(%rsp), %r9                   # 8-byte Reload
	addl	%r15d, %r9d
	movl	%r14d, %eax
	movq	352(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rcx,%rax,2), %r12
	movq	80(%rsp), %r13                  # 8-byte Reload
	movq	%r9, 48(%rsp)                   # 8-byte Spill
	.p2align	4, 0x90
.LBB0_139:                              # %for.body4154
                                        #   Parent Loop BB0_125 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movswl	(%r12), %eax
	addl	%r9d, %eax
	movslq	%eax, %rdx
	addq	136(%rsp), %rdx                 # 8-byte Folded Reload
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movq	64(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%r8d, %ebx
	movq	%r10, %r15
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	104(%rsp), %r8                  # 8-byte Reload
	callq	*31928(%r8,%rax,8)
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movq	%r15, %r10
	movl	%ebx, %r8d
	movq	48(%rsp), %r9                   # 8-byte Reload
	movswl	(%r12), %ecx
	addl	400(%rsp), %ecx                 # 4-byte Folded Reload
	leal	(,%rcx,4), %edx
	movslq	%edx, %rdx
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movzwl	(%rsi,%rdx,2), %edx
	movq	152(%rsp), %rsi                 # 8-byte Reload
	movzwl	(%r15,%rsi,2), %esi
	addl	%eax, %edx
	addl	%esi, %edx
	cmpl	%ebx, %edx
	cmovll	%edx, %r8d
	cmovll	%edi, %ebp
	cmovll	%ecx, %r13d
	incl	%r14d
	addq	$2, %r12
	cmpl	%r14d, 240(%rsp)                # 4-byte Folded Reload
	jg	.LBB0_139
	jmp	.LBB0_124
.LBB0_141:
	movq	%r12, 80(%rsp)                  # 8-byte Spill
	movq	%rbp, 112(%rsp)                 # 8-byte Spill
	movq	264(%rsp), %r8                  # 8-byte Reload
	cmpl	$6, 72(%rsp)                    # 4-byte Folded Reload
	movq	336(%rsp), %r12                 # 8-byte Reload
	je	.LBB0_35
.LBB0_142:                              # %if.end1271
	movq	80(%rsp), %rdx                  # 8-byte Reload
	movl	%edx, %eax
	movq	112(%rsp), %rcx                 # 8-byte Reload
	orl	%ecx, %eax
	je	.LBB0_155
# %bb.143:                              # %land.lhs.true1274
	cmpl	%r14d, %ecx
	movq	280(%rsp), %rdx                 # 8-byte Reload
	jne	.LBB0_145
# %bb.144:                              # %land.lhs.true1274
	movq	512(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %ecx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movl	%r14d, %r15d
	cmpl	%eax, 80(%rsp)                  # 4-byte Folded Reload
	je	.LBB0_156
.LBB0_145:                              # %if.end1391
	movq	80(%rsp), %r15                  # 8-byte Reload
	movslq	%r15d, %rax
	addq	136(%rsp), %rax                 # 8-byte Folded Reload
	movq	112(%rsp), %r14                 # 8-byte Reload
	movl	%r14d, %ecx
	movq	%r13, %r9
	imull	%r9d, %ecx
	movslq	%ecx, %rdi
	leaq	(%rax,%rdi), %rdx
	movq	464(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rdx,%rcx), %rsi
	addq	%r13, %rdx
	leaq	(%rdi,%rax), %rcx
	decq	%rcx
	leaq	1(%rdi,%rax), %r8
	leaq	160(%rsp), %rax
	movq	%rax, (%rsp)
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movl	%r10d, %ebp
                                        # kill: def $r9d killed $r9d killed $r9
	movq	72(%rsp), %rax                  # 8-byte Reload
	callq	*32040(%rbx,%rax,8)
	movq	24(%rsp), %r9                   # 8-byte Reload
	leal	(,%r15,4), %eax
	movslq	%eax, %rcx
	movq	40(%rsp), %r8                   # 8-byte Reload
	movzwl	(%r8,%rcx,2), %edx
	leal	-4(,%r14,4), %eax
	cltq
	movzwl	(%r9,%rax,2), %eax
	addl	%edx, %eax
	addl	160(%rsp), %eax
	movl	%eax, 160(%rsp)
	movzwl	(%r8,%rcx,2), %ecx
	leal	4(,%r14,4), %edx
	movslq	%edx, %rdx
	movzwl	(%r9,%rdx,2), %edx
	addl	%ecx, %edx
	addl	164(%rsp), %edx
	movl	%edx, 164(%rsp)
	leal	-4(,%r15,4), %ecx
	movslq	%ecx, %rcx
	movzwl	(%r8,%rcx,2), %esi
	leal	(,%r14,4), %ecx
	movslq	%ecx, %rdi
	movzwl	(%r9,%rdi,2), %ecx
	addl	%esi, %ecx
	addl	168(%rsp), %ecx
	movl	%ecx, 168(%rsp)
	leal	4(,%r15,4), %esi
	movslq	%esi, %rsi
	movzwl	(%r8,%rsi,2), %r8d
	movzwl	(%r9,%rdi,2), %esi
	movl	%ebp, %r10d
	addl	%r8d, %esi
	addl	172(%rsp), %esi
	leal	-1(%r14), %r8d
	cmpl	%ebp, %eax
	cmovgel	%ebp, %eax
	leal	1(%r14), %edi
	cmovgel	%r14d, %r8d
	cmpl	%eax, %edx
	cmovll	%edx, %eax
	cmovll	%edi, %r8d
	cmpl	%eax, %ecx
	movl	%eax, %r11d
	cmovll	%ecx, %r11d
	cmpl	%r11d, %esi
	cmovll	%r14d, %r8d
	cmpl	%eax, %ecx
	cmovll	%r14d, %r8d
	leal	-1(%r15), %edx
	cmpl	%eax, %ecx
	cmovgel	%r15d, %edx
	incl	%r15d
	cmpl	%r11d, %esi
	movl	%esi, 172(%rsp)
	cmovll	%esi, %r11d
	cmovgel	%edx, %r15d
	movq	280(%rsp), %rdx                 # 8-byte Reload
	movl	$1, %ebp
	movq	%r15, 80(%rsp)                  # 8-byte Spill
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	movq	%r15, 32(%rsp)                  # 8-byte Spill
	movq	%r8, %r15
	movq	264(%rsp), %r8                  # 8-byte Reload
	movl	%r15d, %eax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	cmpl	%r10d, %r11d
	je	.LBB0_156
	jmp	.LBB0_161
.LBB0_146:
	movl	%esi, 128(%rsp)                 # 4-byte Spill
.LBB0_147:                              # %do.end
	movq	%r12, 80(%rsp)                  # 8-byte Spill
	movq	%rbp, 112(%rsp)                 # 8-byte Spill
	movl	128(%rsp), %ebp                 # 4-byte Reload
	sarl	$4, %ebp
.LBB0_148:                              # %sw.epilog
	movq	104(%rsp), %rbx                 # 8-byte Reload
	jmp	.LBB0_168
.LBB0_149:
	movq	24(%rsp), %r10                  # 8-byte Reload
	cmpl	%edx, %r14d
	jg	.LBB0_74
.LBB0_150:
	movl	128(%rsp), %r8d                 # 4-byte Reload
	testl	%r14d, %r14d
	jle	.LBB0_153
.LBB0_151:                              # %for.body3954.lr.ph
	movl	%r14d, %r14d
	movq	352(%rsp), %rax                 # 8-byte Reload
	movq	312(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,2), %rbx
	addq	$6, %rbx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB0_152:                              # %for.body3954
                                        # =>This Inner Loop Header: Depth=1
	movswq	(%rbx,%r15,8), %rax
	movq	%r13, %rcx
	imulq	%r13, %rax
	movswq	-2(%rbx,%r15,8), %rdx
	addq	136(%rsp), %rdx                 # 8-byte Folded Reload
	addq	%rax, %rdx
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
                                        # kill: def $ecx killed $ecx killed $rcx
	movq	104(%rsp), %rax                 # 8-byte Reload
	movl	%r8d, %ebp
	movq	72(%rsp), %r8                   # 8-byte Reload
	callq	*31928(%rax,%r8,8)
	movq	24(%rsp), %r10                  # 8-byte Reload
	movl	%ebp, %r8d
	movswl	-2(%rbx,%r15,8), %ecx
	movslq	%ecx, %rcx
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movzwl	(%rdx,%rcx,8), %edx
	movswl	(%rbx,%r15,8), %esi
	movslq	%esi, %rsi
	movzwl	(%r10,%rsi,8), %edi
	addl	%edx, %edi
	addl	%eax, %edi
	cmpl	%ebp, %edi
	cmovll	%edi, %r8d
	movq	112(%rsp), %rax                 # 8-byte Reload
	cmovll	%esi, %eax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	cmovll	%ecx, %eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	incq	%r15
	cmpq	%r15, %r14
	jne	.LBB0_152
.LBB0_153:                              # %if.end4202
	movq	104(%rsp), %rbx                 # 8-byte Reload
	movq	432(%rsp), %r14                 # 8-byte Reload
	movq	440(%rsp), %r15                 # 8-byte Reload
.LBB0_154:                              # %sw.epilog
	movl	%r8d, %ebp
	jmp	.LBB0_169
.LBB0_155:
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movl	%ecx, %r15d
	movq	280(%rsp), %rdx                 # 8-byte Reload
.LBB0_156:                              # %land.lhs.true1398
	movq	72(%rsp), %r11                  # 8-byte Reload
	movzbl	x264_me_search_ref.x264_pixel_size_shift(%r11), %ecx
	movl	$2000, %eax                     # imm = 0x7D0
	shrl	%cl, %eax
	movl	$3, %ebp
	cmpl	%eax, %r10d
	jge	.LBB0_160
# %bb.157:                              # %if.then1405
	movslq	32(%rsp), %r14                  # 4-byte Folded Reload
	movq	136(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%r14), %rdi
	movq	%rdi, 600(%rsp)                 # 8-byte Spill
	movl	%r15d, %eax
	movq	%r13, %rdx
	imull	%edx, %eax
	movslq	%eax, %r12
	movq	%r12, 384(%rsp)                 # 8-byte Spill
	leaq	(%rdi,%r12), %r8
	movq	%r8, 272(%rsp)                  # 8-byte Spill
	leaq	(%r13,%r13), %rax
	movq	%r13, %r9
	movl	%ecx, 232(%rsp)                 # 4-byte Spill
	movq	%r8, %rsi
	movq	%rax, 488(%rsp)                 # 8-byte Spill
	subq	%rax, %rsi
	movq	464(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%r8), %rdx
	decq	%rdx
	leaq	1(%rax,%r8), %rcx
	leaq	-2(%r12,%rdi), %r8
	leaq	160(%rsp), %rax
	movq	%rax, (%rsp)
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	%r8, 592(%rsp)                  # 8-byte Spill
	movl	%r10d, %ebp
                                        # kill: def $r9d killed $r9d killed $r9
	movq	%r11, %r12
	callq	*32040(%rbx,%r11,8)
	movq	%r12, %r11
	leal	(,%r14,4), %eax
	movq	%rax, 504(%rsp)                 # 8-byte Spill
	cltq
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movzwl	(%rdi,%rax,2), %ecx
	leal	-8(,%r15,4), %eax
	movslq	%eax, %rdx
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	%rdx, 640(%rsp)                 # 8-byte Spill
	movzwl	(%rax,%rdx,2), %eax
	addl	%ecx, %eax
	addl	160(%rsp), %eax
	movl	%eax, 160(%rsp)
	leal	-4(,%r14,4), %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 528(%rsp)                 # 8-byte Spill
	movzwl	(%rdi,%rcx,2), %ecx
	leal	-4(,%r15,4), %edx
	movslq	%edx, %r8
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movzwl	(%rdx,%r8,2), %edx
	addl	%ecx, %edx
	addl	164(%rsp), %edx
	movl	%edx, 164(%rsp)
	leal	4(,%r14,4), %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 520(%rsp)                 # 8-byte Spill
	movzwl	(%rdi,%rcx,2), %esi
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	%r8, 648(%rsp)                  # 8-byte Spill
	movzwl	(%rcx,%r8,2), %ecx
	addl	%esi, %ecx
	addl	168(%rsp), %ecx
	leal	-2(%r15), %r8d
	cmpl	%ebp, %eax
	movl	%ebp, 416(%rsp)                 # 4-byte Spill
	cmovgel	%ebp, %eax
	leal	-1(%r15), %esi
	movl	%r15d, %r12d
	movl	%r8d, 560(%rsp)                 # 4-byte Spill
	cmovll	%r8d, %r12d
	cmpl	%eax, %edx
	movq	%rbx, %r10
	movl	%eax, %ebx
	cmovll	%edx, %ebx
	cmpl	%ebx, %ecx
	cmovll	%esi, %r12d
	cmpl	%eax, %edx
	movl	%esi, 564(%rsp)                 # 4-byte Spill
	cmovll	%esi, %r12d
	movq	%r14, 376(%rsp)                 # 8-byte Spill
	leal	-1(%r14), %esi
	movl	%esi, 472(%rsp)                 # 4-byte Spill
	cmpl	%eax, %edx
	movq	%r15, 240(%rsp)                 # 8-byte Spill
	movq	32(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	cmovll	%esi, %eax
	movq	%rax, %rsi
	leal	1(%r14), %edx
	movl	%edx, 476(%rsp)                 # 4-byte Spill
	cmpl	%ebx, %ecx
	movl	%ecx, 168(%rsp)
	leal	-8(,%r14,4), %eax
	cltq
	cmovll	%ecx, %ebx
	cmovll	%edx, %esi
	movq	%rsi, 80(%rsp)                  # 8-byte Spill
	movq	%rax, 584(%rsp)                 # 8-byte Spill
	movzwl	(%rdi,%rax,2), %eax
	movq	240(%rsp), %rcx                 # 8-byte Reload
	leal	(,%rcx,4), %ecx
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	movslq	%ecx, %r15
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movzwl	(%rcx,%r15,2), %r14d
	addl	%eax, %r14d
	addl	172(%rsp), %r14d
	movl	%r14d, 172(%rsp)
	cmpl	%ebx, %r14d
	movl	%ebx, %ebp
	cmovll	%r14d, %ebp
	movq	384(%rsp), %rax                 # 8-byte Reload
	movq	600(%rsp), %rcx                 # 8-byte Reload
	leaq	2(%rax,%rcx), %rsi
	movq	272(%rsp), %rax                 # 8-byte Reload
	movq	64(%rsp), %r9                   # 8-byte Reload
	leaq	-1(%r9,%rax), %rdx
	leaq	1(%r9,%rax), %rcx
	leaq	(%rax,%r9,2), %r8
	leaq	160(%rsp), %rax
	movq	%rax, (%rsp)
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	%rsi, 576(%rsp)                 # 8-byte Spill
                                        # kill: def $r9d killed $r9d killed $r9
	callq	*32040(%r10,%r11,8)
	movq	24(%rsp), %r10                  # 8-byte Reload
	movq	376(%rsp), %rdx                 # 8-byte Reload
	leal	8(,%rdx,4), %eax
	movslq	%eax, %rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 568(%rsp)                 # 8-byte Spill
	movzwl	(%rax,%rcx,2), %ecx
	movq	%r15, 288(%rsp)                 # 8-byte Spill
	movzwl	(%r10,%r15,2), %eax
	addl	%ecx, %eax
	addl	160(%rsp), %eax
	cmpl	%ebp, %eax
	cmovll	240(%rsp), %r12d                # 4-byte Folded Reload
	cmpl	%ebx, %r14d
	cmovll	240(%rsp), %r12d                # 4-byte Folded Reload
	leal	-2(%rdx), %ecx
	cmpl	%ebx, %r14d
	movq	80(%rsp), %r8                   # 8-byte Reload
	movq	240(%rsp), %r15                 # 8-byte Reload
	movq	%r12, %rdi
	movl	%ecx, 500(%rsp)                 # 4-byte Spill
	cmovll	%ecx, %r8d
	leal	2(%rdx), %ebx
	cmpl	%ebp, %eax
	movl	%eax, 160(%rsp)
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	528(%rsp), %rdx                 # 8-byte Reload
	movzwl	(%rcx,%rdx,2), %ecx
	leal	4(,%r15,4), %edx
	movslq	%edx, %r14
	cmovgel	%ebp, %eax
	movq	40(%rsp), %r9                   # 8-byte Reload
	movzwl	(%r10,%r14,2), %edx
	cmovll	%ebx, %r8d
	addl	%ecx, %edx
	addl	164(%rsp), %edx
	movl	%edx, 164(%rsp)
	movq	520(%rsp), %rcx                 # 8-byte Reload
	movzwl	(%r9,%rcx,2), %ecx
	movzwl	(%r10,%r14,2), %esi
	addl	%ecx, %esi
	addl	168(%rsp), %esi
	cmpl	%eax, %edx
	movl	%eax, %ecx
	cmovll	%edx, %ecx
	leal	1(%r15), %r12d
	cmpl	%ecx, %esi
	cmovll	%r12d, %edi
	cmpl	%eax, %edx
	cmovll	472(%rsp), %r8d                 # 4-byte Folded Reload
	cmovll	%r12d, %edi
	cmpl	%ecx, %esi
	cmovll	%esi, %ecx
	cmovll	476(%rsp), %r8d                 # 4-byte Folded Reload
	movl	%esi, 168(%rsp)
	movq	152(%rsp), %rax                 # 8-byte Reload
	movzwl	(%r9,%rax,2), %eax
	leal	8(,%r15,4), %edx
	movslq	%edx, %rdx
	movzwl	(%r10,%rdx,2), %r11d
	addl	%eax, %r11d
	leal	2(%r15), %ebp
	addl	172(%rsp), %r11d
	movl	%r11d, 172(%rsp)
	cmpl	%ecx, %r11d
	cmovgel	%ecx, %r11d
	cmovll	%ebp, %edi
	cmovll	32(%rsp), %r8d                  # 4-byte Folded Reload
	movl	$500, %eax                      # imm = 0x1F4
	movl	232(%rsp), %ecx                 # 4-byte Reload
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %eax
	cmpl	128(%rsp), %r11d                # 4-byte Folded Reload
	movq	%rdi, 112(%rsp)                 # 8-byte Spill
	movq	%r8, 80(%rsp)                   # 8-byte Spill
	jne	.LBB0_178
# %bb.158:                              # %if.then1405
	cmpl	%eax, %r11d
	jge	.LBB0_178
# %bb.159:
	movq	104(%rsp), %rbx                 # 8-byte Reload
	movq	432(%rsp), %r14                 # 8-byte Reload
	movq	440(%rsp), %r15                 # 8-byte Reload
	movl	128(%rsp), %ebp                 # 4-byte Reload
	jmp	.LBB0_169
.LBB0_160:
	movl	%r10d, %r11d
	movl	%r15d, %eax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	32(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
.LBB0_161:                              # %if.end2306
	testl	%r8d, %r8d
	movq	%r15, 240(%rsp)                 # 8-byte Spill
	je	.LBB0_250
.LBB0_162:                              # %if.end2306
	cmpl	$1, %r8d
	movq	320(%rsp), %r9                  # 8-byte Reload
	jne	.LBB0_176
# %bb.163:                              # %if.then2311
	movl	$1, %eax
	movq	72(%rsp), %r14                  # 8-byte Reload
	testl	%r14d, %r14d
	je	.LBB0_194
# %bb.164:                              # %if.else2315
	movq	456(%rsp), %rsi                 # 8-byte Reload
	movswl	128(%rsi), %ecx
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movswl	(%rdi), %edx
	subl	%edx, %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovsl	%ecx, %edx
	movzwl	%dx, %ecx
	movswl	130(%rsi), %edx
	movswl	2(%rdi), %esi
	subl	%esi, %edx
	movl	%edx, %esi
	negl	%esi
	cmovsl	%edx, %esi
	movzwl	%si, %edi
	addl	%ecx, %edi
	jmp	.LBB0_206
.LBB0_165:
	movq	64(%rsp), %r13                  # 8-byte Reload
.LBB0_166:                              # %if.end822
	movq	136(%rsp), %r8                  # 8-byte Reload
.LBB0_167:                              # %if.end822
	movq	%r14, 112(%rsp)                 # 8-byte Spill
	movl	128(%rsp), %r12d                # 4-byte Reload
	sarl	$3, %r12d
	movslq	%r11d, %rbp
	addq	%rbp, %r8
	movl	%r13d, %eax
	imull	%r14d, %eax
	cltq
	leaq	(%r8,%rax), %rbx
	movq	%rbx, %rsi
	subq	%r13, %rsi
	leaq	(%rbx,%r13), %rdx
	leaq	(%rax,%r8), %rcx
	decq	%rcx
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	leaq	1(%rax,%r8), %r8
	movq	%r8, 400(%rsp)                  # 8-byte Spill
	leaq	160(%rsp), %r14
	movq	%r14, (%rsp)
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movl	%r13d, %r9d
	movq	104(%rsp), %r15                 # 8-byte Reload
	movq	72(%rsp), %r14                  # 8-byte Reload
	callq	*32040(%r15,%r14,8)
	movq	%r15, %r9
	movq	%r14, %r10
	movq	%rbp, 32(%rsp)                  # 8-byte Spill
	leal	(,%rbp,4), %eax
	cltq
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movzwl	(%rcx,%rax,2), %ecx
	movq	112(%rsp), %r15                 # 8-byte Reload
	leal	(,%r15,4), %edx
	leal	-4(,%r15,4), %esi
	movq	%r15, %rdi
	movslq	%esi, %r8
	movq	%r8, 80(%rsp)                   # 8-byte Spill
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movzwl	(%rsi,%r8,2), %r15d
	addl	%ecx, %r15d
	addl	160(%rsp), %r15d
	movl	%r15d, 160(%rsp)
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movzwl	(%rcx,%rax,2), %ecx
	leal	4(,%rdi,4), %eax
	movslq	%eax, %rsi
	movq	%rsi, 352(%rsp)                 # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	movzwl	(%rax,%rsi,2), %eax
	addl	%ecx, %eax
	addl	164(%rsp), %eax
	movl	%eax, 164(%rsp)
	leal	-4(,%rbp,4), %ecx
	movslq	%ecx, %rsi
	movq	%rsi, 240(%rsp)                 # 8-byte Spill
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movzwl	(%rcx,%rsi,2), %esi
	movslq	%edx, %rdx
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%esi, %ecx
	addl	168(%rsp), %ecx
	movl	%ecx, 168(%rsp)
	leal	4(,%rbp,4), %esi
	movslq	%esi, %rdi
	movq	%rdi, 48(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movzwl	(%rsi,%rdi,2), %esi
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movzwl	(%rdi,%rdx,2), %edx
	addl	%esi, %edx
	addl	172(%rsp), %edx
	xorl	%esi, %esi
	cmpl	%r12d, %r15d
	setl	%sil
	cmovgel	%r12d, %r15d
	cmpl	%r15d, %eax
	movl	$2, %edi
	cmovgeq	%rsi, %rdi
	cmovll	%eax, %r15d
	cmpl	%r15d, %ecx
	movl	$3, %eax
	cmovgeq	%rdi, %rax
	cmovll	%ecx, %r15d
	cmpl	%r15d, %edx
	movl	$4, %r12d
	cmovgeq	%rax, %r12
	movl	%edx, 172(%rsp)
	cmovll	%edx, %r15d
	movq	136(%rsp), %rsi                 # 8-byte Reload
	subq	%r13, %rsi
	leaq	(%rbx,%r13), %rdx
	decq	%rdx
	movq	400(%rsp), %rcx                 # 8-byte Reload
	subq	%r13, %rcx
	leaq	(%rbx,%r13), %r8
	incq	%r8
	movq	%r9, %rbx
	leaq	160(%rsp), %rax
	movq	%rax, (%rsp)
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	40(%rsp), %r14                  # 8-byte Reload
	movq	24(%rsp), %rbp                  # 8-byte Reload
	movl	%r13d, %r9d
	callq	*32040(%rbx,%r10,8)
	movq	%rbp, %r10
	movq	240(%rsp), %rcx                 # 8-byte Reload
	movzwl	(%r14,%rcx,2), %eax
	movq	80(%rsp), %rdx                  # 8-byte Reload
	movzwl	(%rbp,%rdx,2), %ebp
	addl	%eax, %ebp
	addl	160(%rsp), %ebp
	movl	%ebp, 160(%rsp)
	movzwl	(%r14,%rcx,2), %ecx
	movq	352(%rsp), %rsi                 # 8-byte Reload
	movzwl	(%r10,%rsi,2), %eax
	addl	%ecx, %eax
	addl	164(%rsp), %eax
	movl	%eax, 164(%rsp)
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movzwl	(%r14,%rdi,2), %ecx
	movzwl	(%r10,%rdx,2), %edx
	addl	%ecx, %edx
	addl	168(%rsp), %edx
	movl	%edx, 168(%rsp)
	movzwl	(%r14,%rdi,2), %ecx
	movzwl	(%r10,%rsi,2), %esi
	addl	%ecx, %esi
	addl	172(%rsp), %esi
	cmpl	%r15d, %ebp
	movl	$5, %ecx
	cmovgeq	%r12, %rcx
	cmovgel	%r15d, %ebp
	cmpl	%ebp, %eax
	movl	$6, %edi
	cmovgeq	%rcx, %rdi
	cmovll	%eax, %ebp
	cmpl	%ebp, %edx
	movl	$7, %eax
	cmovgeq	%rdi, %rax
	cmovll	%edx, %ebp
	cmpl	%ebp, %esi
	movl	$8, %ecx
	cmovgeq	%rax, %rcx
	movl	%esi, 172(%rsp)
	cmovll	%esi, %ebp
	movsbl	square1(%rcx,%rcx), %eax
	addl	32(%rsp), %eax                  # 4-byte Folded Reload
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movsbl	square1+1(%rcx,%rcx), %eax
	addl	112(%rsp), %eax                 # 4-byte Folded Reload
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
.LBB0_168:                              # %sw.epilog
	movq	432(%rsp), %r14                 # 8-byte Reload
	movq	440(%rsp), %r15                 # 8-byte Reload
.LBB0_169:                              # %sw.epilog
	movq	80(%rsp), %r8                   # 8-byte Reload
	leal	(,%r8,4), %eax
	movq	112(%rsp), %rdi                 # 8-byte Reload
	leal	(,%rdi,4), %ecx
	movl	452(%rsp), %edx                 # 4-byte Reload
	cmpl	%ebp, %edx
	cmovll	544(%rsp), %eax                 # 4-byte Folded Reload
	cmovll	%r15d, %ecx
	cmovll	%edx, %ebp
	movq	456(%rsp), %rsi                 # 8-byte Reload
	movw	%ax, 140(%rsi)
	movw	%cx, 142(%rsi)
	movl	%ebp, 136(%rsi)
	movswq	%ax, %rax
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movzwl	(%rdx,%rax,2), %edx
	movswq	%cx, %rax
	movzwl	(%r10,%rax,2), %eax
	addl	%edx, %eax
	movl	%eax, 132(%rsi)
	cmpl	512(%rsp), %r8d                 # 4-byte Folded Reload
	jne	.LBB0_173
# %bb.170:                              # %sw.epilog
	cmpl	%r14d, %edi
	jne	.LBB0_173
# %bb.171:                              # %land.lhs.true4240
	movl	16408(%rbx), %ecx
	cmpl	$2, %ecx
	jg	.LBB0_174
# %bb.172:                              # %if.then4245
	movl	%ebp, %r9d
	addl	%eax, %r9d
	movq	456(%rsp), %rax                 # 8-byte Reload
	movl	%r9d, 136(%rax)
.LBB0_173:                              # %if.end4249
	movl	16408(%rbx), %ecx
	cmpl	$2, %ecx
	jl	.LBB0_175
.LBB0_174:                              # %if.then4254
	movl	%ecx, %eax
	movzbl	subpel_iterations+2(,%rax,4), %edx
	movzbl	subpel_iterations+3(,%rax,4), %ecx
	movq	%rbx, %rdi
	movq	456(%rsp), %rsi                 # 8-byte Reload
	movq	664(%rsp), %r8                  # 8-byte Reload
	xorl	%r9d, %r9d
	callq	refine_subpel
.LBB0_175:                              # %if.end4267
	addq	$936, %rsp                      # imm = 0x3A8
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
.LBB0_176:                              # %if.else2332
	.cfi_def_cfa_offset 992
	xorl	%edi, %edi
	movq	72(%rsp), %r14                  # 8-byte Reload
	movl	%r11d, %r12d
	testl	%r14d, %r14d
	je	.LBB0_195
# %bb.177:                              # %if.then2336
	movq	456(%rsp), %rdx                 # 8-byte Reload
	movswl	128(%rdx), %eax
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movswl	(%rsi), %ecx
	subl	%ecx, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovsl	%eax, %ecx
	movswl	130(%rdx), %eax
	movswl	2(%rsi), %edx
	subl	%edx, %eax
	movl	%eax, %edx
	negl	%edx
	cmovsl	%eax, %edx
	movzwl	%cx, %eax
	movzwl	%dx, %ecx
	addl	%eax, %ecx
	movl	%r8d, %eax
	jmp	.LBB0_196
.LBB0_178:                              # %if.end1638
	cmpl	416(%rsp), %r11d                # 4-byte Folded Reload
	jne	.LBB0_193
# %bb.179:                              # %if.then1641
	movq	%rdx, 624(%rsp)                 # 8-byte Spill
	movq	320(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %r9d
	sarl	%r9d
	orl	$1, %r9d
	movq	336(%rsp), %rdx                 # 8-byte Reload
	movl	%edx, %eax
	movq	32(%rsp), %rsi                  # 8-byte Reload
	subl	%esi, %eax
	movl	%esi, %ecx
	subl	280(%rsp), %ecx                 # 4-byte Folded Reload
	cmpl	%ecx, %eax
	cmovll	%eax, %ecx
	cmpl	%ecx, %r9d
	setg	%al
	cmpl	$6, %r9d
	setl	%cl
	movl	$3, %r15d
	orb	%al, %cl
	movq	%r9, 424(%rsp)                  # 8-byte Spill
	movl	%ebx, 496(%rsp)                 # 4-byte Spill
	movl	%ebp, 556(%rsp)                 # 4-byte Spill
	movq	%r14, 632(%rsp)                 # 8-byte Spill
	movl	%r12d, 552(%rsp)                # 4-byte Spill
	jne	.LBB0_215
# %bb.180:                              # %for.body1658.preheader
	leal	-2(%r9), %eax
	movq	%rax, 536(%rsp)                 # 8-byte Spill
	leal	-5(%rsi), %ebp
	movl	%esi, %eax
	movq	%rax, 480(%rsp)                 # 8-byte Spill
	movq	384(%rsp), %rax                 # 8-byte Reload
	movq	376(%rsp), %rcx                 # 8-byte Reload
	addq	%rcx, %rax
	movq	136(%rsp), %rcx                 # 8-byte Reload
	leaq	-5(%rcx,%rax), %r14
	movl	$-12, %eax
	movl	$12, %ecx
	movl	$-20, %r12d
	movl	$20, %r13d
	xorl	%ebx, %ebx
	movl	416(%rsp), %r11d                # 4-byte Reload
	jmp	.LBB0_182
.LBB0_181:                              # %for.body1658
                                        #   in Loop: Header=BB0_182 Depth=1
	leaq	4(%rbx), %r15
	addq	$7, %rbx
	addl	$-4, %ebp
	movq	128(%rsp), %rax                 # 8-byte Reload
	addl	$-16, %eax
	movq	232(%rsp), %rcx                 # 8-byte Reload
	addl	$16, %ecx
	addl	$-16, %r12d
	addq	$-4, %r14
	addl	$16, %r13d
	cmpq	536(%rsp), %rbx                 # 8-byte Folded Reload
	movq	%r15, %rbx
	jae	.LBB0_216
.LBB0_182:                              # %for.body1658
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, 312(%rsp)                 # 8-byte Spill
	movq	%r12, 328(%rsp)                 # 8-byte Spill
	movq	%rax, %r12
	movq	272(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rbx), %rsi
	addq	$3, %rsi
	leaq	2(%r14), %rdx
	movq	%rcx, %r13
	leaq	5(%rax,%rbx), %rcx
	leaq	160(%rsp), %rax
	movq	%rax, (%rsp)
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	%r14, %r8
	movq	64(%rsp), %r9                   # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	72(%rsp), %r10                  # 8-byte Reload
	movl	%r11d, %r15d
	callq	*32040(%rax,%r10,8)
	movl	%r15d, %r8d
	movq	504(%rsp), %r9                  # 8-byte Reload
	movq	%r13, 232(%rsp)                 # 8-byte Spill
	leal	(%r9,%r13), %eax
	cltq
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movzwl	(%rsi,%rax,2), %eax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	288(%rsp), %rdi                 # 8-byte Reload
	movzwl	(%rcx,%rdi,2), %edx
	addl	%eax, %edx
	addl	160(%rsp), %edx
	movl	%edx, 160(%rsp)
	movq	%r12, 128(%rsp)                 # 8-byte Spill
	leal	(%r9,%r12), %eax
	cltq
	movzwl	(%rsi,%rax,2), %eax
	movzwl	(%rcx,%rdi,2), %esi
	addl	%eax, %esi
	addl	164(%rsp), %esi
	cmpl	%r15d, %edx
	movl	%r15d, %ecx
	cmovll	%edx, %ecx
	movq	480(%rsp), %rax                 # 8-byte Reload
	leal	3(%rax,%rbx), %eax
	cmovgel	80(%rsp), %eax                  # 4-byte Folded Reload
	cmpl	%ecx, %esi
	jl	.LBB0_184
# %bb.183:                              # %for.body1658
                                        #   in Loop: Header=BB0_182 Depth=1
	movq	112(%rsp), %rdi                 # 8-byte Reload
	movq	240(%rsp), %r10                 # 8-byte Reload
	jmp	.LBB0_185
.LBB0_184:                              #   in Loop: Header=BB0_182 Depth=1
	leal	2(%rbp), %eax
	movl	%esi, %ecx
	movq	240(%rsp), %r10                 # 8-byte Reload
	movl	%r10d, %edi
.LBB0_185:                              # %for.body1658
                                        #   in Loop: Header=BB0_182 Depth=1
	movq	328(%rsp), %r12                 # 8-byte Reload
	movq	312(%rsp), %r13                 # 8-byte Reload
	cmpl	%r8d, %edx
	movl	%esi, 164(%rsp)
	movl	%edi, %edx
	cmovll	%r10d, %edx
	leal	(%r9,%r13), %esi
	movslq	%esi, %rsi
	movq	%r9, %r11
	movq	40(%rsp), %r9                   # 8-byte Reload
	movzwl	(%r9,%rsi,2), %esi
	movq	24(%rsp), %r8                   # 8-byte Reload
	movq	288(%rsp), %r15                 # 8-byte Reload
	movzwl	(%r8,%r15,2), %edi
	addl	%esi, %edi
	addl	168(%rsp), %edi
	movl	%edi, 168(%rsp)
	leal	(%r11,%r12), %esi
	movslq	%esi, %rsi
	movzwl	(%r9,%rsi,2), %esi
	movzwl	(%r8,%r15,2), %r11d
	addl	%esi, %r11d
	addl	172(%rsp), %r11d
	movl	%edi, %esi
	cmpl	%ecx, %edi
	jl	.LBB0_186
# %bb.191:                              # %for.body1658
                                        #   in Loop: Header=BB0_182 Depth=1
	movl	%ecx, %esi
	movl	%r10d, %r8d
	movq	%r8, 112(%rsp)                  # 8-byte Spill
	cmpl	%esi, %r11d
	jge	.LBB0_192
.LBB0_187:                              # %for.body1658
                                        #   in Loop: Header=BB0_182 Depth=1
	cmpl	%ecx, %edi
	jge	.LBB0_189
.LBB0_188:                              #   in Loop: Header=BB0_182 Depth=1
	movq	480(%rsp), %rax                 # 8-byte Reload
	addl	%ebx, %eax
	addl	$5, %eax
	movl	%r10d, %ecx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
.LBB0_189:                              # %for.body1658
                                        #   in Loop: Header=BB0_182 Depth=1
	movl	%r11d, 172(%rsp)
	movl	%ebp, %ecx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	cmpl	%esi, %r11d
	jl	.LBB0_181
# %bb.190:                              # %for.body1658
                                        #   in Loop: Header=BB0_182 Depth=1
	movl	%esi, %r11d
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB0_181
.LBB0_186:                              # %for.body1658
                                        #   in Loop: Header=BB0_182 Depth=1
	movl	%r10d, %r8d
	movq	%r8, 112(%rsp)                  # 8-byte Spill
	cmpl	%esi, %r11d
	jl	.LBB0_187
.LBB0_192:                              # %for.body1658
                                        #   in Loop: Header=BB0_182 Depth=1
                                        # kill: def $edx killed $edx def $rdx
	movq	%rdx, 112(%rsp)                 # 8-byte Spill
	cmpl	%ecx, %edi
	jl	.LBB0_188
	jmp	.LBB0_189
.LBB0_193:
	movq	336(%rsp), %r12                 # 8-byte Reload
	movq	280(%rsp), %rdx                 # 8-byte Reload
	movl	$3, %ebp
	jmp	.LBB0_249
.LBB0_194:
	movl	$25, %edi
	jmp	.LBB0_206
.LBB0_195:
	leal	-1(%r8), %eax
	xorl	%ecx, %ecx
.LBB0_196:                              # %if.end2353
	cmpl	$2, %r8d
	movq	48(%rsp), %rdx                  # 8-byte Reload
	jl	.LBB0_205
# %bb.197:                              # %for.body.preheader.i6206
	movzwl	(%rdx), %r9d
	movq	%r8, %rsi
	movzwl	2(%rdx), %r8d
	addl	$-2, %esi
	leaq	1(%rsi), %rdx
	cmpl	$15, %esi
	jae	.LBB0_199
# %bb.198:
	xorl	%esi, %esi
	xorl	%edi, %edi
	jmp	.LBB0_203
.LBB0_199:                              # %vector.ph6650
	movl	%edx, %esi
	andl	$-16, %esi
	movd	%r8d, %xmm3
	psllq	$48, %xmm3
	movd	%r9d, %xmm13
	psllq	$48, %xmm13
	pxor	%xmm9, %xmm9
	xorl	%edi, %edi
	pxor	%xmm8, %xmm8
	pxor	%xmm7, %xmm7
	pxor	%xmm5, %xmm5
	movq	48(%rsp), %r8                   # 8-byte Reload
.LBB0_200:                              # %vector.body6654
                                        # =>This Inner Loop Header: Depth=1
	movdqa	%xmm13, %xmm0
	movdqu	4(%r8,%rdi,4), %xmm6
	movdqu	20(%r8,%rdi,4), %xmm4
	movdqu	36(%r8,%rdi,4), %xmm2
	movdqu	52(%r8,%rdi,4), %xmm1
	pshuflw	$232, %xmm6, %xmm10             # xmm10 = xmm6[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm10, %xmm10            # xmm10 = xmm10[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm10, %xmm13            # xmm13 = xmm10[0,2,2,3]
	pshuflw	$232, %xmm4, %xmm10             # xmm10 = xmm4[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm10, %xmm10            # xmm10 = xmm10[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm10, %xmm11            # xmm11 = xmm10[0,2,2,3]
	pshuflw	$232, %xmm2, %xmm10             # xmm10 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm10, %xmm10            # xmm10 = xmm10[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm10, %xmm10            # xmm10 = xmm10[0,2,2,3]
	pshuflw	$232, %xmm1, %xmm12             # xmm12 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm12, %xmm14            # xmm14 = xmm12[0,1,2,3,4,6,6,7]
	movdqa	%xmm10, %xmm12
	punpcklwd	%xmm11, %xmm12          # xmm12 = xmm12[0],xmm11[0],xmm12[1],xmm11[1],xmm12[2],xmm11[2],xmm12[3],xmm11[3]
	punpcklwd	%xmm13, %xmm11          # xmm11 = xmm11[0],xmm13[0],xmm11[1],xmm13[1],xmm11[2],xmm13[2],xmm11[3],xmm13[3]
	punpcklwd	%xmm0, %xmm13           # xmm13 = xmm13[0],xmm0[0],xmm13[1],xmm0[1],xmm13[2],xmm0[2],xmm13[3],xmm0[3]
	movdqa	%xmm3, %xmm0
	pshufd	$232, %xmm14, %xmm3             # xmm3 = xmm14[0,2,2,3]
	pshufd	$108, %xmm13, %xmm13            # xmm13 = xmm13[0,3,2,1]
	pshuflw	$44, %xmm13, %xmm13             # xmm13 = xmm13[0,3,2,0,4,5,6,7]
	pshufhw	$40, %xmm13, %xmm14             # xmm14 = xmm13[0,1,2,3,4,6,6,4]
	psrad	$16, %xmm14
	movdqa	%xmm3, %xmm13
	punpcklwd	%xmm10, %xmm13          # xmm13 = xmm13[0],xmm10[0],xmm13[1],xmm10[1],xmm13[2],xmm10[2],xmm13[3],xmm10[3]
	movdqa	%xmm6, %xmm15
	pslld	$16, %xmm15
	psrad	$16, %xmm15
	movdqa	%xmm14, %xmm10
	pcmpgtd	%xmm15, %xmm10
	psubd	%xmm15, %xmm14
	movdqa	%xmm0, 288(%rsp)                # 16-byte Spill
	pshufd	$108, %xmm11, %xmm11            # xmm11 = xmm11[0,3,2,1]
	pshuflw	$44, %xmm11, %xmm11             # xmm11 = xmm11[0,3,2,0,4,5,6,7]
	pshufhw	$40, %xmm11, %xmm15             # xmm15 = xmm11[0,1,2,3,4,6,6,4]
	psrad	$16, %xmm15
	pxor	%xmm10, %xmm14
	psubd	%xmm14, %xmm10
	movdqa	%xmm4, %xmm14
	pslld	$16, %xmm14
	psrad	$16, %xmm14
	paddd	%xmm9, %xmm10
	movdqa	%xmm15, %xmm11
	pcmpgtd	%xmm14, %xmm11
	psubd	%xmm14, %xmm15
	pshuflw	$231, %xmm6, %xmm9              # xmm9 = xmm6[3,1,2,3,4,5,6,7]
	pshufhw	$231, %xmm9, %xmm9              # xmm9 = xmm9[0,1,2,3,7,5,6,7]
	pshufd	$232, %xmm9, %xmm9              # xmm9 = xmm9[0,2,2,3]
	pshuflw	$177, %xmm9, %xmm9              # xmm9 = xmm9[1,0,3,2,4,5,6,7]
	pshufd	$108, %xmm12, %xmm12            # xmm12 = xmm12[0,3,2,1]
	pshuflw	$44, %xmm12, %xmm12             # xmm12 = xmm12[0,3,2,0,4,5,6,7]
	pshufhw	$40, %xmm12, %xmm14             # xmm14 = xmm12[0,1,2,3,4,6,6,4]
	psrad	$16, %xmm14
	pxor	%xmm11, %xmm15
	psubd	%xmm15, %xmm11
	movdqa	%xmm2, %xmm15
	pslld	$16, %xmm15
	psrad	$16, %xmm15
	paddd	%xmm8, %xmm11
	movdqa	%xmm14, %xmm12
	pcmpgtd	%xmm15, %xmm12
	psubd	%xmm15, %xmm14
	pshuflw	$231, %xmm4, %xmm8              # xmm8 = xmm4[3,1,2,3,4,5,6,7]
	pshufhw	$231, %xmm8, %xmm8              # xmm8 = xmm8[0,1,2,3,7,5,6,7]
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	pshuflw	$177, %xmm8, %xmm8              # xmm8 = xmm8[1,0,3,2,4,5,6,7]
	pshufd	$108, %xmm13, %xmm13            # xmm13 = xmm13[0,3,2,1]
	pshuflw	$44, %xmm13, %xmm13             # xmm13 = xmm13[0,3,2,0,4,5,6,7]
	pshufhw	$40, %xmm13, %xmm13             # xmm13 = xmm13[0,1,2,3,4,6,6,4]
	psrad	$16, %xmm13
	pxor	%xmm12, %xmm14
	psubd	%xmm14, %xmm12
	movdqa	%xmm1, %xmm14
	pslld	$16, %xmm14
	psrad	$16, %xmm14
	paddd	%xmm7, %xmm12
	movdqa	%xmm13, %xmm0
	pcmpgtd	%xmm14, %xmm0
	psubd	%xmm14, %xmm13
	pshuflw	$231, %xmm2, %xmm7              # xmm7 = xmm2[3,1,2,3,4,5,6,7]
	pshufhw	$231, %xmm7, %xmm7              # xmm7 = xmm7[0,1,2,3,7,5,6,7]
	pshufd	$232, %xmm7, %xmm7              # xmm7 = xmm7[0,2,2,3]
	pshuflw	$177, %xmm7, %xmm15             # xmm15 = xmm7[1,0,3,2,4,5,6,7]
	pxor	%xmm0, %xmm13
	psubd	%xmm13, %xmm0
	movdqa	%xmm3, %xmm13
	movdqa	%xmm15, %xmm7
	punpcklwd	%xmm8, %xmm7            # xmm7 = xmm7[0],xmm8[0],xmm7[1],xmm8[1],xmm7[2],xmm8[2],xmm7[3],xmm8[3]
	punpcklwd	%xmm9, %xmm8            # xmm8 = xmm8[0],xmm9[0],xmm8[1],xmm9[1],xmm8[2],xmm9[2],xmm8[3],xmm9[3]
	punpcklwd	288(%rsp), %xmm9        # 16-byte Folded Reload
                                        # xmm9 = xmm9[0],mem[0],xmm9[1],mem[1],xmm9[2],mem[2],xmm9[3],mem[3]
	pshuflw	$231, %xmm1, %xmm3              # xmm3 = xmm1[3,1,2,3,4,5,6,7]
	pshufhw	$231, %xmm3, %xmm3              # xmm3 = xmm3[0,1,2,3,7,5,6,7]
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pshuflw	$177, %xmm3, %xmm3              # xmm3 = xmm3[1,0,3,2,4,5,6,7]
	paddd	%xmm5, %xmm0
	pshufd	$108, %xmm9, %xmm5              # xmm5 = xmm9[0,3,2,1]
	pshuflw	$44, %xmm5, %xmm5               # xmm5 = xmm5[0,3,2,0,4,5,6,7]
	pshufhw	$40, %xmm5, %xmm14              # xmm14 = xmm5[0,1,2,3,4,6,6,4]
	psrad	$16, %xmm14
	movdqa	%xmm3, %xmm5
	punpcklwd	%xmm15, %xmm5           # xmm5 = xmm5[0],xmm15[0],xmm5[1],xmm15[1],xmm5[2],xmm15[2],xmm5[3],xmm15[3]
	psrad	$16, %xmm6
	movdqa	%xmm14, %xmm9
	pcmpgtd	%xmm6, %xmm9
	psubd	%xmm6, %xmm14
	pxor	%xmm9, %xmm14
	psubd	%xmm14, %xmm9
	pshufd	$108, %xmm8, %xmm6              # xmm6 = xmm8[0,3,2,1]
	pshuflw	$44, %xmm6, %xmm6               # xmm6 = xmm6[0,3,2,0,4,5,6,7]
	pshufhw	$40, %xmm6, %xmm6               # xmm6 = xmm6[0,1,2,3,4,6,6,4]
	psrad	$16, %xmm6
	psrad	$16, %xmm4
	paddd	%xmm10, %xmm9
	movdqa	%xmm6, %xmm8
	pcmpgtd	%xmm4, %xmm8
	psubd	%xmm4, %xmm6
	pxor	%xmm8, %xmm6
	psubd	%xmm6, %xmm8
	pshufd	$108, %xmm7, %xmm4              # xmm4 = xmm7[0,3,2,1]
	pshuflw	$44, %xmm4, %xmm4               # xmm4 = xmm4[0,3,2,0,4,5,6,7]
	pshufhw	$40, %xmm4, %xmm4               # xmm4 = xmm4[0,1,2,3,4,6,6,4]
	psrad	$16, %xmm4
	psrad	$16, %xmm2
	paddd	%xmm11, %xmm8
	movdqa	%xmm4, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm2, %xmm4
	pxor	%xmm7, %xmm4
	psubd	%xmm4, %xmm7
	pshufd	$108, %xmm5, %xmm2              # xmm2 = xmm5[0,3,2,1]
	pshuflw	$44, %xmm2, %xmm2               # xmm2 = xmm2[0,3,2,0,4,5,6,7]
	pshufhw	$40, %xmm2, %xmm2               # xmm2 = xmm2[0,1,2,3,4,6,6,4]
	psrad	$16, %xmm2
	psrad	$16, %xmm1
	paddd	%xmm12, %xmm7
	movdqa	%xmm2, %xmm5
	pcmpgtd	%xmm1, %xmm5
	psubd	%xmm1, %xmm2
	pxor	%xmm5, %xmm2
	psubd	%xmm2, %xmm5
	paddd	%xmm0, %xmm5
	addq	$16, %rdi
	cmpq	%rdi, %rsi
	jne	.LBB0_200
# %bb.201:                              # %middle.block6647
	paddd	%xmm9, %xmm8
	paddd	%xmm8, %xmm7
	paddd	%xmm7, %xmm5
	pshufd	$238, %xmm5, %xmm0              # xmm0 = xmm5[2,3,2,3]
	paddd	%xmm5, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %edi
	cmpq	%rsi, %rdx
	je	.LBB0_205
# %bb.202:
	pextrw	$3, %xmm3, %r8d
	pextrw	$3, %xmm13, %r9d
.LBB0_203:                              # %for.body.i6207.preheader
	movl	%edi, %r10d
	movq	48(%rsp), %r15                  # 8-byte Reload
	.p2align	4, 0x90
.LBB0_204:                              # %for.body.i6207
                                        # =>This Inner Loop Header: Depth=1
	movswl	%r9w, %edi
	movswl	4(%r15,%rsi,4), %r9d
	movswl	%r8w, %r8d
	movswl	6(%r15,%rsi,4), %r11d
	leaq	1(%rsi), %rbx
	subl	%r9d, %edi
	movl	%edi, %esi
	negl	%esi
	cmovsl	%edi, %esi
	movzwl	%si, %edi
	subl	%r11d, %r8d
	movl	%r8d, %esi
	negl	%esi
	cmovsl	%r8d, %esi
	movzwl	%si, %esi
	addl	%r10d, %edi
	addl	%esi, %edi
	movl	%r11d, %r8d
                                        # kill: def $r9w killed $r9w killed $r9d def $r9d
	movq	%rbx, %rsi
	movl	%edi, %r10d
	cmpq	%rbx, %rdx
	jne	.LBB0_204
.LBB0_205:                              # %x264_predictor_difference.exit
	addl	%ecx, %edi
	movq	320(%rsp), %r9                  # 8-byte Reload
	movq	240(%rsp), %r15                 # 8-byte Reload
	movl	%r12d, %r11d
	movq	336(%rsp), %r12                 # 8-byte Reload
.LBB0_206:                              # %if.end2357
	movzbl	x264_me_search_ref.x264_pixel_size_shift(%r14), %ecx
	movl	$1000, %edx                     # imm = 0x3E8
	shrl	%cl, %edx
	cmpl	%edx, %r11d
	jge	.LBB0_208
# %bb.207:
	xorl	%edx, %edx
	movq	136(%rsp), %r8                  # 8-byte Reload
	jmp	.LBB0_210
.LBB0_208:                              # %cond.false2365
	movl	$2000, %esi                     # imm = 0x7D0
	shrl	%cl, %esi
	movl	$1, %edx
	cmpl	%esi, %r11d
	movq	136(%rsp), %r8                  # 8-byte Reload
	jb	.LBB0_210
# %bb.209:                              # %cond.false2373
	movl	$4000, %edx                     # imm = 0xFA0
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %edx
	cmpl	%edx, %r11d
	movl	$3, %edx
	sbbq	$0, %rdx
.LBB0_210:                              # %cond.end2383
	leal	(%rax,%rax), %ecx
	leal	(%rcx,%rcx,4), %ecx
	cmpl	%ecx, %edi
	jge	.LBB0_212
# %bb.211:
	xorl	%ecx, %ecx
	jmp	.LBB0_214
.LBB0_212:                              # %cond.false2389
	leal	(,%rax,4), %ecx
	leal	(%rcx,%rcx,4), %esi
	movl	$1, %ecx
	cmpl	%esi, %edi
	jl	.LBB0_214
# %bb.213:                              # %cond.false2394
	shll	$3, %eax
	leal	(%rax,%rax,4), %eax
	xorl	%ecx, %ecx
	cmpl	%eax, %edi
	setl	%cl
	xorq	$3, %rcx
.LBB0_214:                              # %cond.end2401
	movzbl	x264_me_search_ref.range_mul(%rdx,%rcx,4), %eax
	imull	%eax, %r9d
	sarl	$2, %r9d
	movq	280(%rsp), %rdx                 # 8-byte Reload
	jmp	.LBB0_251
.LBB0_215:
	movl	416(%rsp), %r11d                # 4-byte Reload
	jmp	.LBB0_217
.LBB0_216:                              # %if.end1789.loopexit
	addl	$3, %r15d
	movq	336(%rsp), %rdx                 # 8-byte Reload
	movq	424(%rsp), %r9                  # 8-byte Reload
.LBB0_217:                              # %if.end1789
	cmpl	%r9d, %r15d
	jge	.LBB0_224
# %bb.218:                              # %for.body1793.lr.ph
	movl	%r15d, %ebx
	movslq	%edx, %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movslq	280(%rsp), %rax                 # 4-byte Folded Reload
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	movslq	%r9d, %r13
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	384(%rsp), %rcx                 # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, 328(%rsp)                 # 8-byte Spill
	leal	(,%r15,4), %eax
	movq	504(%rsp), %r12                 # 8-byte Reload
	subl	%eax, %r12d
	movq	376(%rsp), %rbp                 # 8-byte Reload
	subq	%rbx, %rbp
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	%eax, %ecx
	movq	%rcx, 312(%rsp)                 # 8-byte Spill
	addl	%eax, %r15d
	shll	$2, %r15d
	jmp	.LBB0_220
.LBB0_219:                              # %for.inc1858
                                        #   in Loop: Header=BB0_220 Depth=1
	addq	$2, %rbx
	addq	$-2, %rbp
	addl	$-8, %r12d
	addl	$8, %r15d
	cmpq	%r13, %rbx
	jge	.LBB0_224
.LBB0_220:                              # %for.body1793
                                        # =>This Inner Loop Header: Depth=1
	movq	376(%rsp), %rax                 # 8-byte Reload
	addq	%rbx, %rax
	cmpq	128(%rsp), %rax                 # 8-byte Folded Reload
	jg	.LBB0_222
# %bb.221:                              # %if.then1797
                                        #   in Loop: Header=BB0_220 Depth=1
	movq	272(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rbx), %rdx
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movq	64(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	72(%rsp), %r8                   # 8-byte Reload
	movl	%r11d, %r14d
	callq	*31928(%rax,%r8,8)
	movl	%r14d, %r11d
	movq	312(%rsp), %rcx                 # 8-byte Reload
	addl	%ebx, %ecx
	movslq	%r15d, %rdx
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movzwl	(%rsi,%rdx,2), %edx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	288(%rsp), %rdi                 # 8-byte Reload
	movzwl	(%rsi,%rdi,2), %esi
	addl	%eax, %edx
	addl	%esi, %edx
	cmpl	%r14d, %edx
	cmovll	%edx, %r11d
	movq	112(%rsp), %rax                 # 8-byte Reload
	cmovll	240(%rsp), %eax                 # 4-byte Folded Reload
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	cmovll	%ecx, %eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
.LBB0_222:                              # %if.end1825
                                        #   in Loop: Header=BB0_220 Depth=1
	cmpq	232(%rsp), %rbp                 # 8-byte Folded Reload
	jl	.LBB0_219
# %bb.223:                              # %if.then1829
                                        #   in Loop: Header=BB0_220 Depth=1
	movq	328(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rbp), %rdx
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movq	64(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	72(%rsp), %r8                   # 8-byte Reload
	movl	%r11d, %r14d
	callq	*31928(%rax,%r8,8)
	movl	%r14d, %r11d
	movslq	%r12d, %rcx
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movzwl	(%rdx,%rcx,2), %ecx
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movq	288(%rsp), %rdi                 # 8-byte Reload
	movzwl	(%rdx,%rdi,2), %edx
	addl	%eax, %ecx
	addl	%edx, %ecx
	cmpl	%r14d, %ecx
	cmovll	%ecx, %r11d
	movq	112(%rsp), %rax                 # 8-byte Reload
	cmovll	240(%rsp), %eax                 # 4-byte Folded Reload
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	cmovll	%ebp, %eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB0_219
.LBB0_224:                              # %for.end1860
	movq	344(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movq	240(%rsp), %rdx                 # 8-byte Reload
	subl	%edx, %eax
	movl	%edx, %ecx
	subl	392(%rsp), %ecx                 # 4-byte Folded Reload
	cmpl	%ecx, %eax
	cmovll	%eax, %ecx
	movq	424(%rsp), %rsi                 # 8-byte Reload
	cmpl	%ecx, %esi
	setg	%al
	cmpl	$6, %esi
	setl	%cl
	movl	$3, %r13d
	orb	%al, %cl
	jne	.LBB0_238
# %bb.225:                              # %for.body1878.preheader
	leal	-2(%rsi), %eax
	movq	%rax, 480(%rsp)                 # 8-byte Spill
	leal	-5(%rdx), %eax
	movq	%rax, 288(%rsp)                 # 8-byte Spill
	movl	%edx, %eax
	movq	%rax, 312(%rsp)                 # 8-byte Spill
	movq	64(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rcx,%rcx,4), %rdi
	movq	376(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %r8
	subq	%rdi, %r8
	movq	136(%rsp), %rdx                 # 8-byte Reload
	addq	%rdx, %r8
	leaq	(,%rcx,4), %rax
	movq	%rax, 504(%rsp)                 # 8-byte Spill
	negq	%rax
	movq	%rax, 536(%rsp)                 # 8-byte Spill
	addq	%rsi, %rdi
	addq	%rdx, %rdi
	movq	%rcx, %rax
	shlq	$32, %rax
	leaq	(%rax,%rax,2), %r9
	negq	%r9
	movq	%rcx, %rax
	shlq	$34, %rax
	movq	%rax, 656(%rsp)                 # 8-byte Spill
	leaq	(%rcx,%rcx,2), %rbx
	addq	%rsi, %rbx
	addq	%rdx, %rbx
	movl	$-12, %ebp
	xorl	%r14d, %r14d
	movl	$-20, %r12d
	xorl	%r15d, %r15d
	jmp	.LBB0_227
.LBB0_226:                              # %for.body1878
                                        #   in Loop: Header=BB0_227 Depth=1
	leaq	4(%r15), %r13
	addq	$7, %r15
	movq	288(%rsp), %rax                 # 8-byte Reload
	addl	$-4, %eax
	movq	%rax, 288(%rsp)                 # 8-byte Spill
	addl	$-16, %ebp
	addl	$16, %r14d
	addl	$-16, %r12d
	movq	232(%rsp), %r8                  # 8-byte Reload
	addq	536(%rsp), %r8                  # 8-byte Folded Reload
	movq	128(%rsp), %rdi                 # 8-byte Reload
	movq	504(%rsp), %rax                 # 8-byte Reload
	addq	%rax, %rdi
	movq	328(%rsp), %r9                  # 8-byte Reload
	subq	656(%rsp), %r9                  # 8-byte Folded Reload
	addq	%rax, %rbx
	cmpq	480(%rsp), %r15                 # 8-byte Folded Reload
	movq	%r13, %r15
	jae	.LBB0_237
.LBB0_227:                              # %for.body1878
                                        # =>This Inner Loop Header: Depth=1
	movq	384(%rsp), %rax                 # 8-byte Reload
	leaq	(%rbx,%rax), %rsi
	movq	%r9, 328(%rsp)                  # 8-byte Spill
	movq	%r9, %rdx
	sarq	$32, %rdx
	addq	272(%rsp), %rdx                 # 8-byte Folded Reload
	movq	%rdi, 128(%rsp)                 # 8-byte Spill
	leaq	(%rdi,%rax), %rcx
	movq	%r8, 232(%rsp)                  # 8-byte Spill
	addq	%rax, %r8
	leaq	160(%rsp), %rax
	movq	%rax, (%rsp)
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	64(%rsp), %r9                   # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	72(%rsp), %r10                  # 8-byte Reload
	movl	%r11d, %r13d
	callq	*32040(%rax,%r10,8)
	movl	%r13d, %r11d
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movq	152(%rsp), %rdi                 # 8-byte Reload
	movzwl	(%rsi,%rdi,2), %eax
	movq	144(%rsp), %r13                 # 8-byte Reload
	leal	12(%r13,%r14), %ecx
	movslq	%ecx, %rcx
	movq	24(%rsp), %r8                   # 8-byte Reload
	movzwl	(%r8,%rcx,2), %edx
	addl	%eax, %edx
	addl	160(%rsp), %edx
	movl	%edx, 160(%rsp)
	movzwl	(%rsi,%rdi,2), %eax
	leal	(%r13,%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%r8,%rcx,2), %esi
	addl	%eax, %esi
	addl	164(%rsp), %esi
	cmpl	%r11d, %edx
	movl	%r11d, %eax
	cmovll	%edx, %eax
	movq	312(%rsp), %rcx                 # 8-byte Reload
	leal	3(%rcx,%r15), %ecx
	cmovgel	112(%rsp), %ecx                 # 4-byte Folded Reload
	cmpl	%eax, %esi
	jl	.LBB0_229
# %bb.228:                              # %for.body1878
                                        #   in Loop: Header=BB0_227 Depth=1
	movq	80(%rsp), %r9                   # 8-byte Reload
	movq	32(%rsp), %r10                  # 8-byte Reload
	jmp	.LBB0_230
.LBB0_229:                              #   in Loop: Header=BB0_227 Depth=1
	movq	288(%rsp), %rax                 # 8-byte Reload
	leal	2(%rax), %ecx
	movl	%esi, %eax
	movq	32(%rsp), %r10                  # 8-byte Reload
	movl	%r10d, %r9d
.LBB0_230:                              # %for.body1878
                                        #   in Loop: Header=BB0_227 Depth=1
	cmpl	%r11d, %edx
	movl	%esi, 164(%rsp)
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movq	152(%rsp), %r11                 # 8-byte Reload
	movzwl	(%rdi,%r11,2), %esi
	leal	20(%r13,%r14), %edx
	movslq	%edx, %rdx
	movzwl	(%r8,%rdx,2), %edx
	cmovll	%r10d, %r9d
	addl	%esi, %edx
	addl	168(%rsp), %edx
	movl	%edx, 168(%rsp)
	movzwl	(%rdi,%r11,2), %edi
	leal	(%r12,%r13), %esi
	movslq	%esi, %rsi
	movzwl	(%r8,%rsi,2), %esi
	addl	%edi, %esi
	addl	172(%rsp), %esi
	cmpl	%eax, %edx
	jl	.LBB0_232
# %bb.231:                              # %for.body1878
                                        #   in Loop: Header=BB0_227 Depth=1
	movl	%eax, %edi
	jmp	.LBB0_233
.LBB0_232:                              #   in Loop: Header=BB0_227 Depth=1
	movq	312(%rsp), %rcx                 # 8-byte Reload
	addl	%r15d, %ecx
	addl	$5, %ecx
	movl	%edx, %edi
.LBB0_233:                              # %for.body1878
                                        #   in Loop: Header=BB0_227 Depth=1
	movl	%esi, %r11d
	movq	288(%rsp), %r8                  # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8 def $r8
	movq	%r8, 112(%rsp)                  # 8-byte Spill
	movl	%r10d, %r8d
	cmpl	%edi, %esi
	jl	.LBB0_235
# %bb.234:                              # %for.body1878
                                        #   in Loop: Header=BB0_227 Depth=1
	movl	%edi, %r11d
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	movl	%r9d, %r8d
.LBB0_235:                              # %for.body1878
                                        #   in Loop: Header=BB0_227 Depth=1
	movl	%esi, 172(%rsp)
	movl	%r10d, %ecx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	cmpl	%eax, %edx
	jl	.LBB0_226
# %bb.236:                              # %for.body1878
                                        #   in Loop: Header=BB0_227 Depth=1
	movl	%r8d, %eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB0_226
.LBB0_237:                              # %if.end2005.loopexit
	addl	$3, %r13d
	movq	240(%rsp), %rdx                 # 8-byte Reload
	movq	424(%rsp), %rsi                 # 8-byte Reload
.LBB0_238:                              # %if.end2005
	movq	488(%rsp), %rax                 # 8-byte Reload
	negq	%rax
	movq	%rax, 288(%rsp)                 # 8-byte Spill
	movq	600(%rsp), %rdi                 # 8-byte Reload
	movq	384(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rdi), %rcx
	decq	%rcx
	movq	%rcx, 376(%rsp)                 # 8-byte Spill
	addq	%rdi, %rax
	incq	%rax
	movq	%rax, 384(%rsp)                 # 8-byte Spill
	cmpl	%esi, %r13d
	jge	.LBB0_246
# %bb.239:                              # %for.body2009.lr.ph
	movl	%r13d, %ebx
	movslq	%edx, %r8
	movslq	344(%rsp), %rax                 # 4-byte Folded Reload
	movq	%rax, 272(%rsp)                 # 8-byte Spill
	movslq	392(%rsp), %rax                 # 4-byte Folded Reload
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	movslq	%esi, %rax
	movq	%rax, 328(%rsp)                 # 8-byte Spill
	leal	(,%r13,4), %eax
	movq	144(%rsp), %rcx                 # 8-byte Reload
	subl	%eax, %ecx
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	movq	%r8, %r15
	subq	%rbx, %r15
	movq	%r15, %r14
	movq	64(%rsp), %rax                  # 8-byte Reload
	imulq	%rax, %r14
	addq	%rdi, %r14
	movq	%r8, 128(%rsp)                  # 8-byte Spill
	leaq	(%r8,%rbx), %rbp
	imulq	%rax, %rbp
	addq	%rdi, %rbp
	movl	%edx, %eax
	movq	%rax, 312(%rsp)                 # 8-byte Spill
	addl	%edx, %r13d
	shll	$2, %r13d
	jmp	.LBB0_242
.LBB0_240:                              # %if.then2045
                                        #   in Loop: Header=BB0_242 Depth=1
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movq	%r14, %rdx
	movq	64(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	72(%rsp), %r8                   # 8-byte Reload
	movl	%r11d, %r12d
	callq	*31928(%rax,%r8,8)
	movl	%r12d, %r11d
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	152(%rsp), %rdx                 # 8-byte Reload
	movzwl	(%rcx,%rdx,2), %ecx
	movq	144(%rsp), %rdi                 # 8-byte Reload
	movslq	%edi, %rdx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movzwl	(%rsi,%rdx,2), %edx
	addl	%eax, %ecx
	addl	%edx, %ecx
	cmpl	%r12d, %ecx
	cmovll	%ecx, %r11d
	movq	112(%rsp), %rax                 # 8-byte Reload
	cmovll	%r15d, %eax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	cmovll	32(%rsp), %eax                  # 4-byte Folded Reload
	movq	%rax, 80(%rsp)                  # 8-byte Spill
.LBB0_241:                              # %for.inc2074
                                        #   in Loop: Header=BB0_242 Depth=1
	addq	$2, %rbx
	addq	$-2, %r15
	addl	$-8, %edi
	movq	%rdi, 144(%rsp)                 # 8-byte Spill
	addq	288(%rsp), %r14                 # 8-byte Folded Reload
	addl	$8, %r13d
	addq	488(%rsp), %rbp                 # 8-byte Folded Reload
	cmpq	328(%rsp), %rbx                 # 8-byte Folded Reload
	jge	.LBB0_246
.LBB0_242:                              # %for.body2009
                                        # =>This Inner Loop Header: Depth=1
	movq	128(%rsp), %rax                 # 8-byte Reload
	addq	%rbx, %rax
	cmpq	272(%rsp), %rax                 # 8-byte Folded Reload
	jg	.LBB0_244
# %bb.243:                              # %if.then2013
                                        #   in Loop: Header=BB0_242 Depth=1
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movq	%rbp, %rdx
	movq	64(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	72(%rsp), %r8                   # 8-byte Reload
	movl	%r11d, %r12d
	callq	*31928(%rax,%r8,8)
	movl	%r12d, %r11d
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	152(%rsp), %rdx                 # 8-byte Reload
	movzwl	(%rcx,%rdx,2), %ecx
	movq	312(%rsp), %rdx                 # 8-byte Reload
	addl	%ebx, %edx
	movslq	%r13d, %rsi
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movzwl	(%rdi,%rsi,2), %esi
	addl	%eax, %ecx
	addl	%esi, %ecx
	cmpl	%r12d, %ecx
	cmovll	%ecx, %r11d
	movq	112(%rsp), %rax                 # 8-byte Reload
	cmovll	%edx, %eax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	cmovll	32(%rsp), %eax                  # 4-byte Folded Reload
	movq	%rax, 80(%rsp)                  # 8-byte Spill
.LBB0_244:                              # %if.end2041
                                        #   in Loop: Header=BB0_242 Depth=1
	cmpq	232(%rsp), %r15                 # 8-byte Folded Reload
	jge	.LBB0_240
# %bb.245:                              #   in Loop: Header=BB0_242 Depth=1
	movq	144(%rsp), %rdi                 # 8-byte Reload
	jmp	.LBB0_241
.LBB0_246:                              # %for.end2076
	movq	288(%rsp), %rdx                 # 8-byte Reload
	movq	376(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rdx), %rsi
	addq	384(%rsp), %rdx                 # 8-byte Folded Reload
	movq	464(%rsp), %r8                  # 8-byte Reload
	movq	592(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%r8), %rcx
	addq	576(%rsp), %r8                  # 8-byte Folded Reload
	leaq	160(%rsp), %rax
	movq	%rax, (%rsp)
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	64(%rsp), %r13                  # 8-byte Reload
	movl	%r13d, %r9d
	movq	104(%rsp), %r14                 # 8-byte Reload
	movq	72(%rsp), %r15                  # 8-byte Reload
	movl	%r11d, %ebx
	callq	*32040(%r14,%r15,8)
	movq	%r15, %r11
	movq	%r14, %r10
	movq	40(%rsp), %r15                  # 8-byte Reload
	movq	528(%rsp), %rax                 # 8-byte Reload
	movzwl	(%r15,%rax,2), %eax
	movq	24(%rsp), %r12                  # 8-byte Reload
	movq	640(%rsp), %rdx                 # 8-byte Reload
	movzwl	(%r12,%rdx,2), %ecx
	addl	%eax, %ecx
	addl	160(%rsp), %ecx
	movl	%ecx, 160(%rsp)
	movq	520(%rsp), %rax                 # 8-byte Reload
	movzwl	(%r15,%rax,2), %eax
	movzwl	(%r12,%rdx,2), %edx
	addl	%eax, %edx
	addl	164(%rsp), %edx
	cmpl	%ebx, %ecx
	movl	%ebx, %eax
	cmovll	%ecx, %eax
	cmpl	%eax, %edx
	movq	112(%rsp), %rbp                 # 8-byte Reload
	movl	560(%rsp), %esi                 # 4-byte Reload
	cmovll	%esi, %ebp
	cmpl	%ebx, %ecx
	movq	80(%rsp), %r14                  # 8-byte Reload
	cmovll	472(%rsp), %r14d                # 4-byte Folded Reload
	cmovll	%esi, %ebp
	cmpl	%eax, %edx
	movl	%edx, 164(%rsp)
	movq	584(%rsp), %rcx                 # 8-byte Reload
	movzwl	(%r15,%rcx,2), %ecx
	cmovll	%edx, %eax
	movq	648(%rsp), %rsi                 # 8-byte Reload
	movzwl	(%r12,%rsi,2), %edx
	cmovll	476(%rsp), %r14d                # 4-byte Folded Reload
	addl	%ecx, %edx
	addl	168(%rsp), %edx
	movl	%edx, 168(%rsp)
	movq	568(%rsp), %rcx                 # 8-byte Reload
	movzwl	(%r15,%rcx,2), %ecx
	movzwl	(%r12,%rsi,2), %esi
	addl	%ecx, %esi
	addl	172(%rsp), %esi
	cmpl	%eax, %edx
	movl	%eax, %ebx
	cmovll	%edx, %ebx
	cmpl	%ebx, %esi
	movl	564(%rsp), %ecx                 # 4-byte Reload
	cmovll	%ecx, %ebp
	cmpl	%eax, %edx
	cmovll	%ecx, %ebp
	cmovll	500(%rsp), %r14d                # 4-byte Folded Reload
	cmpl	%ebx, %esi
	movl	%esi, 172(%rsp)
	cmovll	%esi, %ebx
	cmovll	496(%rsp), %r14d                # 4-byte Folded Reload
	movq	488(%rsp), %rax                 # 8-byte Reload
	movq	376(%rsp), %rcx                 # 8-byte Reload
	addq	%rax, %rcx
	movq	384(%rsp), %r8                  # 8-byte Reload
	addq	%rax, %r8
	movq	592(%rsp), %rsi                 # 8-byte Reload
	addq	%r13, %rsi
	movq	576(%rsp), %rdx                 # 8-byte Reload
	addq	%r13, %rdx
	movq	%r13, %r9
	leaq	160(%rsp), %rax
	movq	%rax, (%rsp)
	movq	56(%rsp), %rdi                  # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	callq	*32040(%r10,%r11,8)
	movq	584(%rsp), %rax                 # 8-byte Reload
	movzwl	(%r15,%rax,2), %eax
	movq	632(%rsp), %rdx                 # 8-byte Reload
	movzwl	(%r12,%rdx,2), %ecx
	addl	%eax, %ecx
	addl	160(%rsp), %ecx
	movl	%ecx, 160(%rsp)
	movq	568(%rsp), %rax                 # 8-byte Reload
	movzwl	(%r15,%rax,2), %eax
	movzwl	(%r12,%rdx,2), %edx
	addl	%eax, %edx
	addl	164(%rsp), %edx
	cmpl	%ebx, %ecx
	movl	%ebx, %eax
	cmovll	%ecx, %eax
	cmpl	%eax, %edx
	movl	552(%rsp), %esi                 # 4-byte Reload
	cmovll	%esi, %ebp
	cmpl	%ebx, %ecx
	cmovll	500(%rsp), %r14d                # 4-byte Folded Reload
	cmovll	%esi, %ebp
	cmpl	%eax, %edx
	movl	%edx, 164(%rsp)
	cmovll	%edx, %eax
	movq	528(%rsp), %rcx                 # 8-byte Reload
	movzwl	(%r15,%rcx,2), %ecx
	cmovll	496(%rsp), %r14d                # 4-byte Folded Reload
	movq	624(%rsp), %rsi                 # 8-byte Reload
	movzwl	(%r12,%rsi,2), %edx
	addl	%ecx, %edx
	addl	168(%rsp), %edx
	movl	%edx, 168(%rsp)
	movq	520(%rsp), %rcx                 # 8-byte Reload
	movzwl	(%r15,%rcx,2), %ecx
	movzwl	(%r12,%rsi,2), %esi
	addl	%ecx, %esi
	addl	172(%rsp), %esi
	cmpl	%eax, %edx
	movl	%eax, %r11d
	cmovll	%edx, %r11d
	cmpl	%r11d, %esi
	movl	556(%rsp), %ecx                 # 4-byte Reload
	cmovll	%ecx, %ebp
	cmpl	%eax, %edx
	cmovll	472(%rsp), %r14d                # 4-byte Folded Reload
	cmovll	%ecx, %ebp
	movq	%rbp, 112(%rsp)                 # 8-byte Spill
	cmpl	%r11d, %esi
	cmovll	%esi, %r11d
	movl	%esi, 172(%rsp)
	cmovll	476(%rsp), %r14d                # 4-byte Folded Reload
	movq	%r14, 80(%rsp)                  # 8-byte Spill
	movl	416(%rsp), %ebp                 # 4-byte Reload
	cmpl	%ebp, %r11d
	jne	.LBB0_248
# %bb.247:
	movq	%r12, %r10
	jmp	.LBB0_148
.LBB0_248:
	movq	424(%rsp), %rbp                 # 8-byte Reload
	addl	$2, %ebp
	movq	336(%rsp), %r12                 # 8-byte Reload
	movq	280(%rsp), %rdx                 # 8-byte Reload
	movq	240(%rsp), %r15                 # 8-byte Reload
.LBB0_249:                              # %if.end2306
	movq	264(%rsp), %r8                  # 8-byte Reload
	testl	%r8d, %r8d
	movq	%r15, 240(%rsp)                 # 8-byte Spill
	jne	.LBB0_162
.LBB0_250:
	movq	136(%rsp), %r8                  # 8-byte Reload
	movq	320(%rsp), %r9                  # 8-byte Reload
.LBB0_251:                              # %if.end2410
	movl	%r12d, %eax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	subl	%ecx, %eax
                                        # kill: def $ecx killed $ecx killed $rcx
	subl	%edx, %ecx
	cmpl	%ecx, %eax
	cmovll	%eax, %ecx
	cmpl	%ecx, %r9d
	movq	%r9, 320(%rsp)                  # 8-byte Spill
	movq	%rbp, 424(%rsp)                 # 8-byte Spill
	jg	.LBB0_252
# %bb.253:                              # %for.cond2425.preheader
	leal	-2(%r9), %eax
	cmpl	%eax, %ebp
	jge	.LBB0_252
# %bb.254:                              # %for.body2429.lr.ph
	movl	%r11d, 48(%rsp)                 # 4-byte Spill
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movslq	%esi, %rcx
	movl	%r15d, %edx
	imull	%r13d, %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	leal	(,%r15,4), %ecx
	movslq	%ecx, %r9
	movslq	%ebp, %rcx
	cltq
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movl	%esi, %edi
	subl	%ebp, %edi
	leal	(,%rsi,4), %r10d
	leal	(,%rbp,4), %r12d
	movl	%r12d, %r13d
	negl	%r13d
	leal	(%rsi,%rbp), %eax
	movq	%rax, 288(%rsp)                 # 8-byte Spill
	movq	%rdi, 272(%rsp)                 # 8-byte Spill
                                        # kill: def $edi killed $edi killed $rdi def $rdi
	addl	$-2, %edi
	movq	%rdi, 232(%rsp)                 # 8-byte Spill
	movq	%rdx, %rax
	subq	%rcx, %rax
	addq	%r8, %rax
	movq	%rax, 264(%rsp)                 # 8-byte Spill
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	addq	%rcx, %rdx
	addq	%r8, %rdx
	movq	%rdx, 152(%rsp)                 # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	jmp	.LBB0_257
	.p2align	4, 0x90
.LBB0_255:                              # %for.body2429
                                        #   in Loop: Header=BB0_257 Depth=1
	movl	%edx, 48(%rsp)                  # 4-byte Spill
.LBB0_256:                              # %for.body2429
                                        #   in Loop: Header=BB0_257 Depth=1
	movq	144(%rsp), %rax                 # 8-byte Reload
	addq	%rbx, %rax
	addq	$4, %rax
	addq	$4, %rbx
	addq	$-4, %r14
	addl	$-16, %r13d
	addl	$16, %r12d
	cmpq	128(%rsp), %rax                 # 8-byte Folded Reload
	jge	.LBB0_269
.LBB0_257:                              # %for.body2429
                                        # =>This Inner Loop Header: Depth=1
	movq	80(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 80(%rsp)                  # 4-byte Spill
	movq	152(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rbx), %rsi
	movq	264(%rsp), %rdi                 # 8-byte Reload
	leaq	(%rdi,%r14), %rdx
	leaq	2(%rax,%rbx), %rcx
	leaq	-2(%rdi,%r14), %r8
	leaq	160(%rsp), %rax
	movq	%rax, (%rsp)
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	%r9, %rbp
	movq	64(%rsp), %r9                   # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	%r10, %r15
	movq	72(%rsp), %r10                  # 8-byte Reload
	callq	*32040(%rax,%r10,8)
	movq	%r15, %r10
	movq	%rbp, %r9
	leal	(%r15,%r12), %eax
	cltq
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movzwl	(%rsi,%rax,2), %eax
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movzwl	(%rdx,%rbp,2), %ecx
	addl	%eax, %ecx
	addl	160(%rsp), %ecx
	movl	%ecx, 160(%rsp)
	leal	(%r15,%r13), %eax
	cltq
	movzwl	(%rsi,%rax,2), %eax
	movzwl	(%rdx,%rbp,2), %edx
	addl	%eax, %edx
	addl	164(%rsp), %edx
	movl	48(%rsp), %edi                  # 4-byte Reload
	cmpl	%edi, %ecx
	movl	%edi, %eax
	cmovll	%ecx, %eax
	movq	288(%rsp), %rsi                 # 8-byte Reload
	leal	(%rsi,%rbx), %esi
	cmovgel	80(%rsp), %esi                  # 4-byte Folded Reload
	movq	%rsi, 80(%rsp)                  # 8-byte Spill
	cmpl	%eax, %edx
	jl	.LBB0_259
# %bb.258:                              # %for.body2429
                                        #   in Loop: Header=BB0_257 Depth=1
	movq	112(%rsp), %rsi                 # 8-byte Reload
	movq	240(%rsp), %r15                 # 8-byte Reload
	jmp	.LBB0_260
	.p2align	4, 0x90
.LBB0_259:                              #   in Loop: Header=BB0_257 Depth=1
	movq	272(%rsp), %rax                 # 8-byte Reload
	addl	%r14d, %eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movl	%edx, %eax
	movq	240(%rsp), %r15                 # 8-byte Reload
	movl	%r15d, %esi
.LBB0_260:                              # %for.body2429
                                        #   in Loop: Header=BB0_257 Depth=1
	cmpl	%edi, %ecx
	movl	%edx, 164(%rsp)
	leal	8(%r10,%r12), %ecx
	movslq	%ecx, %rcx
	movq	40(%rsp), %r8                   # 8-byte Reload
	movzwl	(%r8,%rcx,2), %edx
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movzwl	(%rdi,%r9,2), %ecx
                                        # kill: def $esi killed $esi killed $rsi
	cmovll	%r15d, %esi
	addl	%edx, %ecx
	addl	168(%rsp), %ecx
	movl	%ecx, 168(%rsp)
	leal	(%r10,%r13), %edx
	addl	$-8, %edx
	movslq	%edx, %rdx
	movzwl	(%r8,%rdx,2), %edx
	movzwl	(%rdi,%r9,2), %r8d
	addl	%edx, %r8d
	addl	172(%rsp), %r8d
	movl	%ecx, %edx
	cmpl	%eax, %ecx
	jl	.LBB0_261
# %bb.264:                              # %for.body2429
                                        #   in Loop: Header=BB0_257 Depth=1
	movl	%eax, %edx
	movl	%r15d, %edi
	movq	%rdi, 112(%rsp)                 # 8-byte Spill
	cmpl	%edx, %r8d
	jge	.LBB0_265
.LBB0_262:                              # %for.body2429
                                        #   in Loop: Header=BB0_257 Depth=1
	cmpl	%eax, %ecx
	jl	.LBB0_266
.LBB0_263:                              # %for.body2429
                                        #   in Loop: Header=BB0_257 Depth=1
	movl	%r8d, 172(%rsp)
	cmpl	%edx, %r8d
	jge	.LBB0_255
	jmp	.LBB0_267
	.p2align	4, 0x90
.LBB0_261:                              # %for.body2429
                                        #   in Loop: Header=BB0_257 Depth=1
	movl	%r15d, %edi
	movq	%rdi, 112(%rsp)                 # 8-byte Spill
	cmpl	%edx, %r8d
	jl	.LBB0_262
.LBB0_265:                              # %for.body2429
                                        #   in Loop: Header=BB0_257 Depth=1
                                        # kill: def $esi killed $esi def $rsi
	movq	%rsi, 112(%rsp)                 # 8-byte Spill
	cmpl	%eax, %ecx
	jge	.LBB0_263
.LBB0_266:                              #   in Loop: Header=BB0_257 Depth=1
	movq	288(%rsp), %rax                 # 8-byte Reload
	addl	%ebx, %eax
	addl	$2, %eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movl	%r15d, %eax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movl	%r8d, 172(%rsp)
	cmpl	%edx, %r8d
	jge	.LBB0_255
.LBB0_267:                              #   in Loop: Header=BB0_257 Depth=1
	movl	%r8d, 48(%rsp)                  # 4-byte Spill
	movq	232(%rsp), %rax                 # 8-byte Reload
	addl	%r14d, %eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB0_256
.LBB0_252:
	movl	%ebp, %ebx
	movq	320(%rsp), %rdx                 # 8-byte Reload
	cmpl	%edx, %ebx
	jge	.LBB0_277
	jmp	.LBB0_271
.LBB0_269:                              # %if.end2560.loopexit
	addl	424(%rsp), %ebx                 # 4-byte Folded Reload
	movq	64(%rsp), %r13                  # 8-byte Reload
	movq	136(%rsp), %r8                  # 8-byte Reload
	movq	336(%rsp), %r12                 # 8-byte Reload
	movl	48(%rsp), %r11d                 # 4-byte Reload
	movq	320(%rsp), %rdx                 # 8-byte Reload
	cmpl	%edx, %ebx
	jge	.LBB0_277
.LBB0_271:                              # %for.body2564.lr.ph
	movl	%r15d, %eax
	imull	%r13d, %eax
	leal	(,%r15,4), %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movslq	%ebx, %rsi
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movslq	%ecx, %rdi
	movslq	%r12d, %r9
	movq	%r9, 144(%rsp)                  # 8-byte Spill
	movslq	%eax, %r9
	movslq	280(%rsp), %rax                 # 4-byte Folded Reload
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movslq	%edx, %rax
	movq	%rax, 264(%rsp)                 # 8-byte Spill
	leaq	(%r8,%r9), %rax
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	leal	(,%rcx,4), %r13d
	leal	(,%rbx,4), %eax
	subl	%eax, %r13d
	movq	%rdi, %r12
	subq	%rsi, %r12
	addl	%ecx, %ebx
	movl	%ebx, %r14d
	shll	$2, %r14d
	movq	%rsi, 288(%rsp)                 # 8-byte Spill
	addq	%rsi, %rdi
	movq	%rdi, 152(%rsp)                 # 8-byte Spill
	addq	%rdi, %r9
	addq	%r8, %r9
	movq	%r9, 272(%rsp)                  # 8-byte Spill
	xorl	%r15d, %r15d
	jmp	.LBB0_273
	.p2align	4, 0x90
.LBB0_272:                              # %for.inc2629
                                        #   in Loop: Header=BB0_273 Depth=1
	movq	288(%rsp), %rax                 # 8-byte Reload
	addq	%r15, %rax
	addq	$2, %rax
	addq	$2, %r15
	addq	$-2, %r12
	addl	$-8, %r13d
	addl	$8, %r14d
	cmpq	264(%rsp), %rax                 # 8-byte Folded Reload
	jge	.LBB0_277
.LBB0_273:                              # %for.body2564
                                        # =>This Inner Loop Header: Depth=1
	movq	152(%rsp), %rax                 # 8-byte Reload
	addq	%r15, %rax
	cmpq	144(%rsp), %rax                 # 8-byte Folded Reload
	jg	.LBB0_275
# %bb.274:                              # %if.then2568
                                        #   in Loop: Header=BB0_273 Depth=1
	movq	272(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%r15), %rdx
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movq	64(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	72(%rsp), %r8                   # 8-byte Reload
	movl	%r11d, %ebp
	callq	*31928(%rax,%r8,8)
	movl	%ebp, %r11d
	leal	(%rbx,%r15), %ecx
	movslq	%r14d, %rdx
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movzwl	(%rsi,%rdx,2), %edx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movzwl	(%rsi,%rdi,2), %esi
	addl	%eax, %edx
	addl	%esi, %edx
	cmpl	%ebp, %edx
	cmovll	%edx, %r11d
	movq	112(%rsp), %rax                 # 8-byte Reload
	cmovll	240(%rsp), %eax                 # 4-byte Folded Reload
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	cmovll	%ecx, %eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
.LBB0_275:                              # %if.end2596
                                        #   in Loop: Header=BB0_273 Depth=1
	cmpq	128(%rsp), %r12                 # 8-byte Folded Reload
	jl	.LBB0_272
# %bb.276:                              # %if.then2600
                                        #   in Loop: Header=BB0_273 Depth=1
	movq	232(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%r12), %rdx
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movq	64(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	72(%rsp), %r8                   # 8-byte Reload
	movl	%r11d, %ebp
	callq	*31928(%rax,%r8,8)
	movl	%ebp, %r11d
	movslq	%r13d, %rcx
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movzwl	(%rdx,%rcx,2), %ecx
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movzwl	(%rdx,%rsi,2), %edx
	addl	%eax, %ecx
	addl	%edx, %ecx
	cmpl	%ebp, %ecx
	cmovll	%ecx, %r11d
	movq	112(%rsp), %rax                 # 8-byte Reload
	cmovll	240(%rsp), %eax                 # 4-byte Folded Reload
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	cmovll	%r12d, %eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB0_272
.LBB0_277:                              # %for.end2631
	movq	320(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %r9d
	sarl	%r9d
	movq	344(%rsp), %rdx                 # 8-byte Reload
	movl	%edx, %eax
	movq	240(%rsp), %r15                 # 8-byte Reload
	subl	%r15d, %eax
	movl	%r15d, %ecx
	movq	392(%rsp), %rsi                 # 8-byte Reload
	subl	%esi, %ecx
	cmpl	%ecx, %eax
	cmovll	%eax, %ecx
	cmpl	%ecx, %r9d
	jle	.LBB0_279
# %bb.278:
	movq	24(%rsp), %r12                  # 8-byte Reload
	movq	64(%rsp), %r13                  # 8-byte Reload
	movq	136(%rsp), %rdi                 # 8-byte Reload
	movq	424(%rsp), %r8                  # 8-byte Reload
	jmp	.LBB0_294
.LBB0_279:                              # %for.cond2646.preheader
	leal	-2(%r9), %ecx
	movq	424(%rsp), %r8                  # 8-byte Reload
	cmpl	%ecx, %r8d
	movq	64(%rsp), %r13                  # 8-byte Reload
	movq	136(%rsp), %rdi                 # 8-byte Reload
	jge	.LBB0_292
# %bb.280:                              # %for.body2651.lr.ph
	movq	%r9, 376(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movslq	%esi, %rax
	leaq	(%rdi,%rax), %r9
	movl	%r15d, %edx
	imull	%r13d, %edx
	movslq	%edx, %rdx
	movq	%rdx, 232(%rsp)                 # 8-byte Spill
	addq	%rdx, %r9
	movq	%r9, 272(%rsp)                  # 8-byte Spill
	leal	(,%rsi,4), %edx
	movslq	%edx, %r10
	movslq	%r8d, %rbp
	movslq	%ecx, %rcx
	movq	%rcx, 312(%rsp)                 # 8-byte Spill
	movl	%r15d, %r12d
	subl	%r8d, %r12d
	movq	%r13, %rcx
	leal	(,%r8,4), %r13d
	movl	%r13d, %ebx
	negl	%ebx
	movq	$-2, %r9
	subq	%rbp, %r9
	imulq	%rcx, %r9
	addq	%rax, %r9
	addq	%rdi, %r9
	leaq	(,%rcx,4), %rdx
	movq	%rdx, 416(%rsp)                 # 8-byte Spill
	negq	%rdx
	movq	%rdx, 464(%rsp)                 # 8-byte Spill
	leaq	2(%rbp), %rsi
	imulq	%rcx, %rsi
	addq	%rax, %rsi
	addq	%rdi, %rsi
	movq	%rbp, 328(%rsp)                 # 8-byte Spill
	imulq	%rcx, %rbp
	movq	%r15, %rdx
	movq	%rbp, %r15
	shlq	$32, %r15
	negq	%r15
	addq	%rax, %rbp
	shlq	$34, %rcx
	movq	%rcx, 384(%rsp)                 # 8-byte Spill
	addq	%rdi, %rbp
	movq	%rsi, %rdi
	leal	(,%rdx,4), %eax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	leal	(%rdx,%r8), %eax
	movq	%rax, 264(%rsp)                 # 8-byte Spill
	xorl	%r14d, %r14d
	jmp	.LBB0_282
	.p2align	4, 0x90
.LBB0_281:                              # %for.body2651
                                        #   in Loop: Header=BB0_282 Depth=1
	movq	328(%rsp), %rax                 # 8-byte Reload
	addq	%r14, %rax
	addq	$4, %rax
	addq	$4, %r14
	addl	$-4, %r12d
	addl	$-16, %ebx
	addl	$16, %r13d
	addq	464(%rsp), %r9                  # 8-byte Folded Reload
	movq	416(%rsp), %rcx                 # 8-byte Reload
	movq	152(%rsp), %rdi                 # 8-byte Reload
	addq	%rcx, %rdi
	subq	384(%rsp), %r15                 # 8-byte Folded Reload
	addq	%rcx, %rbp
	cmpq	312(%rsp), %rax                 # 8-byte Folded Reload
	jge	.LBB0_293
.LBB0_282:                              # %for.body2651
                                        # =>This Inner Loop Header: Depth=1
	movq	232(%rsp), %rax                 # 8-byte Reload
	movq	%rbp, 144(%rsp)                 # 8-byte Spill
	leaq	(%rax,%rbp), %rsi
	movq	%r15, 128(%rsp)                 # 8-byte Spill
	movq	%r15, %rdx
	sarq	$32, %rdx
	addq	272(%rsp), %rdx                 # 8-byte Folded Reload
	movq	%rdi, 152(%rsp)                 # 8-byte Spill
	leaq	(%rdi,%rax), %rcx
	movq	%r9, 288(%rsp)                  # 8-byte Spill
	leaq	(%r9,%rax), %r8
	leaq	160(%rsp), %rax
	movq	%rax, (%rsp)
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	64(%rsp), %r9                   # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	%r10, %r15
	movq	72(%rsp), %r10                  # 8-byte Reload
	movq	%r13, %rbp
	movq	%r12, %r13
	movl	%r11d, %r12d
	callq	*32040(%rax,%r10,8)
	movq	%r15, %r10
	movl	%r12d, %r9d
	movq	%r13, %r12
	movq	%rbp, %r13
	movq	40(%rsp), %r8                   # 8-byte Reload
	movzwl	(%r8,%r15,2), %eax
	movq	264(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%r14), %esi
	movq	48(%rsp), %r11                  # 8-byte Reload
	leal	(%r11,%rbp), %ecx
	movslq	%ecx, %rcx
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movzwl	(%rdi,%rcx,2), %edx
	addl	%eax, %edx
	addl	160(%rsp), %edx
	movl	%edx, 160(%rsp)
	movzwl	(%r8,%r15,2), %eax
	leal	(%r11,%rbx), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rdi,%rcx,2), %edi
	addl	%eax, %edi
	addl	164(%rsp), %edi
	cmpl	%r9d, %edx
	movl	%r9d, %r8d
	cmovll	%edx, %r8d
	cmovgel	112(%rsp), %esi                 # 4-byte Folded Reload
	movl	%edi, %eax
	movl	%r12d, %ecx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	movq	32(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	cmpl	%r8d, %edi
	jl	.LBB0_284
# %bb.283:                              # %for.body2651
                                        #   in Loop: Header=BB0_282 Depth=1
	movl	%r8d, %eax
	movl	%esi, %ecx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	movq	80(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
.LBB0_284:                              # %for.body2651
                                        #   in Loop: Header=BB0_282 Depth=1
	cmpl	%r9d, %edx
	movl	%edi, 164(%rsp)
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movzwl	(%rdi,%r10,2), %esi
	movq	48(%rsp), %r9                   # 8-byte Reload
	leal	8(%r9,%r13), %edx
	movslq	%edx, %rdx
	movq	24(%rsp), %r8                   # 8-byte Reload
	movzwl	(%r8,%rdx,2), %edx
	cmovll	32(%rsp), %ecx                  # 4-byte Folded Reload
	addl	%esi, %edx
	addl	168(%rsp), %edx
	movl	%edx, 168(%rsp)
	movzwl	(%rdi,%r10,2), %edi
	leal	(%r9,%rbx), %esi
	addl	$-8, %esi
	movslq	%esi, %rsi
	movzwl	(%r8,%rsi,2), %esi
	addl	%edi, %esi
	addl	172(%rsp), %esi
	cmpl	%eax, %edx
	jl	.LBB0_286
# %bb.285:                              # %for.body2651
                                        #   in Loop: Header=BB0_282 Depth=1
	movl	%eax, %r11d
	jmp	.LBB0_287
	.p2align	4, 0x90
.LBB0_286:                              #   in Loop: Header=BB0_282 Depth=1
	movq	264(%rsp), %rdi                 # 8-byte Reload
	addl	%r14d, %edi
	addl	$2, %edi
	movq	%rdi, 112(%rsp)                 # 8-byte Spill
	movl	%edx, %r11d
.LBB0_287:                              # %for.body2651
                                        #   in Loop: Header=BB0_282 Depth=1
	movq	288(%rsp), %r9                  # 8-byte Reload
	movq	144(%rsp), %rbp                 # 8-byte Reload
	movq	128(%rsp), %r15                 # 8-byte Reload
	cmpl	%r11d, %esi
	jl	.LBB0_289
# %bb.288:                              # %for.body2651
                                        #   in Loop: Header=BB0_282 Depth=1
	movq	32(%rsp), %rdi                  # 8-byte Reload
	jmp	.LBB0_290
	.p2align	4, 0x90
.LBB0_289:                              #   in Loop: Header=BB0_282 Depth=1
	leal	-2(%r12), %ecx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	movl	%esi, %r11d
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movl	%edi, %ecx
.LBB0_290:                              # %for.body2651
                                        #   in Loop: Header=BB0_282 Depth=1
	movl	%esi, 172(%rsp)
	movl	%edi, %esi
	movq	%rsi, 80(%rsp)                  # 8-byte Spill
	cmpl	%eax, %edx
	jl	.LBB0_281
# %bb.291:                              # %for.body2651
                                        #   in Loop: Header=BB0_282 Depth=1
	movl	%ecx, %eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB0_281
.LBB0_292:
	movq	24(%rsp), %r12                  # 8-byte Reload
	jmp	.LBB0_294
.LBB0_293:                              # %if.end2778.loopexit
	movq	424(%rsp), %r8                  # 8-byte Reload
	addl	%r14d, %r8d
	movq	24(%rsp), %r12                  # 8-byte Reload
	movq	64(%rsp), %r13                  # 8-byte Reload
	movq	136(%rsp), %rdi                 # 8-byte Reload
	movq	344(%rsp), %rdx                 # 8-byte Reload
	movq	392(%rsp), %rsi                 # 8-byte Reload
	movq	240(%rsp), %r15                 # 8-byte Reload
	movq	376(%rsp), %r9                  # 8-byte Reload
.LBB0_294:                              # %if.end2778
	cmpl	%r9d, %r8d
	jge	.LBB0_302
# %bb.295:                              # %for.body2783.lr.ph
	movq	%rdi, %r10
	movq	32(%rsp), %rdi                  # 8-byte Reload
	leal	(,%rdi,4), %eax
	cltq
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	movq	%r13, %rcx
	movslq	%r8d, %r13
	movslq	%r15d, %r14
	movslq	%edx, %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movslq	%edi, %rdx
	movslq	%esi, %rax
	movq	%rax, 264(%rsp)                 # 8-byte Spill
	movslq	%r9d, %rax
	movq	%rax, 272(%rsp)                 # 8-byte Spill
	leal	(,%r15,4), %edi
	leal	(,%r8,4), %eax
	subl	%eax, %edi
	movq	%r14, %rbp
	subq	%r13, %rbp
	movq	%rbp, %rbx
	imulq	%rcx, %rbx
	addq	%rdx, %rbx
	addq	%r10, %rbx
	leaq	(%rcx,%rcx), %rax
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	negq	%rax
	movq	%rax, 328(%rsp)                 # 8-byte Spill
	addl	%r15d, %r8d
	movq	%r8, %r12
	leal	(,%r8,4), %r15d
	movq	%r14, 144(%rsp)                 # 8-byte Spill
	addq	%r13, %r14
	imulq	%rcx, %r14
	movq	%rdx, 312(%rsp)                 # 8-byte Spill
	addq	%rdx, %r14
	addq	%r10, %r14
	jmp	.LBB0_298
	.p2align	4, 0x90
.LBB0_296:                              # %if.then2819
                                        #   in Loop: Header=BB0_298 Depth=1
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movq	%rbx, %rdx
	movq	64(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	72(%rsp), %r8                   # 8-byte Reload
	movl	%r11d, 48(%rsp)                 # 4-byte Spill
	callq	*31928(%rax,%r8,8)
	movl	48(%rsp), %r11d                 # 4-byte Reload
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	152(%rsp), %rdx                 # 8-byte Reload
	movzwl	(%rcx,%rdx,2), %ecx
	movl	288(%rsp), %edi                 # 4-byte Reload
	movslq	%edi, %rdx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movzwl	(%rsi,%rdx,2), %edx
	addl	%eax, %ecx
	addl	%edx, %ecx
	cmpl	%r11d, %ecx
	cmovll	%ecx, %r11d
	movq	112(%rsp), %rax                 # 8-byte Reload
	cmovll	%ebp, %eax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	cmovll	32(%rsp), %eax                  # 4-byte Folded Reload
	movq	%rax, 80(%rsp)                  # 8-byte Spill
.LBB0_297:                              # %for.inc2848
                                        #   in Loop: Header=BB0_298 Depth=1
	addq	$2, %r13
	addq	$-2, %rbp
	addl	$-8, %edi
	addq	328(%rsp), %rbx                 # 8-byte Folded Reload
	addl	$2, %r12d
	addl	$8, %r15d
	addq	232(%rsp), %r14                 # 8-byte Folded Reload
	cmpq	272(%rsp), %r13                 # 8-byte Folded Reload
	jge	.LBB0_303
.LBB0_298:                              # %for.body2783
                                        # =>This Inner Loop Header: Depth=1
	movq	144(%rsp), %rax                 # 8-byte Reload
	addq	%r13, %rax
	cmpq	128(%rsp), %rax                 # 8-byte Folded Reload
	movl	%edi, 288(%rsp)                 # 4-byte Spill
	jg	.LBB0_300
# %bb.299:                              # %if.then2787
                                        #   in Loop: Header=BB0_298 Depth=1
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movq	%r14, %rdx
	movq	64(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	72(%rsp), %r8                   # 8-byte Reload
	movl	%r11d, 48(%rsp)                 # 4-byte Spill
	callq	*31928(%rax,%r8,8)
	movl	48(%rsp), %r11d                 # 4-byte Reload
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	152(%rsp), %rdx                 # 8-byte Reload
	movzwl	(%rcx,%rdx,2), %ecx
	movslq	%r15d, %rdx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movzwl	(%rsi,%rdx,2), %edx
	addl	%eax, %ecx
	addl	%edx, %ecx
	cmpl	%r11d, %ecx
	cmovll	%ecx, %r11d
	movq	112(%rsp), %rax                 # 8-byte Reload
	cmovll	%r12d, %eax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	cmovll	32(%rsp), %eax                  # 4-byte Folded Reload
	movq	%rax, 80(%rsp)                  # 8-byte Spill
.LBB0_300:                              # %if.end2815
                                        #   in Loop: Header=BB0_298 Depth=1
	cmpq	264(%rsp), %rbp                 # 8-byte Folded Reload
	jge	.LBB0_296
# %bb.301:                              #   in Loop: Header=BB0_298 Depth=1
	movl	288(%rsp), %edi                 # 4-byte Reload
	jmp	.LBB0_297
.LBB0_302:                              # %if.end2778.for.end2850_crit_edge
	movl	%r11d, %r14d
	movq	32(%rsp), %rbp                  # 8-byte Reload
	movslq	%ebp, %rax
	movq	104(%rsp), %r10                 # 8-byte Reload
	movq	40(%rsp), %rbx                  # 8-byte Reload
	movq	72(%rsp), %r11                  # 8-byte Reload
	jmp	.LBB0_304
.LBB0_303:
	movl	%r11d, %r14d
	movq	104(%rsp), %r10                 # 8-byte Reload
	movq	24(%rsp), %r12                  # 8-byte Reload
	movq	40(%rsp), %rbx                  # 8-byte Reload
	movq	72(%rsp), %r11                  # 8-byte Reload
	movq	64(%rsp), %r13                  # 8-byte Reload
	movq	136(%rsp), %rdi                 # 8-byte Reload
	movq	32(%rsp), %rbp                  # 8-byte Reload
	movq	240(%rsp), %r15                 # 8-byte Reload
	movq	312(%rsp), %rax                 # 8-byte Reload
.LBB0_304:                              # %for.end2850
	addq	%rdi, %rax
	movq	%rax, %rcx
	movl	%r15d, %eax
	movq	%r13, %r9
	imull	%r9d, %eax
	cltq
	leaq	(%rcx,%rax), %rdi
	leaq	(%rax,%rcx), %rsi
	addq	$-2, %rsi
	leaq	(,%r13,2), %r8
	subq	%r8, %rsi
	leaq	(%rdi,%r13,2), %rdx
	addq	$-2, %rdx
	addq	%rax, %rcx
	addq	$2, %rcx
	subq	%r8, %rcx
	leaq	(%rdi,%r13,2), %r8
	addq	$2, %r8
	leaq	160(%rsp), %rax
	movq	%rax, (%rsp)
	movq	56(%rsp), %rdi                  # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	callq	*32040(%r10,%r11,8)
	leal	-8(,%rbp,4), %eax
	movslq	%eax, %rcx
	movzwl	(%rbx,%rcx,2), %edx
	leal	-2(%r15), %eax
	leal	-8(,%r15,4), %esi
	movslq	%esi, %rsi
	movzwl	(%r12,%rsi,2), %r8d
	addl	%edx, %r8d
	addl	160(%rsp), %r8d
	movl	%r8d, 160(%rsp)
	movzwl	(%rbx,%rcx,2), %edx
	movl	%r15d, %ecx
	addl	$2, %ecx
	leal	8(,%r15,4), %edi
	movslq	%edi, %rdi
	movzwl	(%r12,%rdi,2), %r9d
	addl	%edx, %r9d
	addl	164(%rsp), %r9d
	cmpl	%r14d, %r8d
	movl	%r14d, %edx
	cmovll	%r8d, %edx
	movq	112(%rsp), %r11                 # 8-byte Reload
	cmovll	%eax, %r11d
	leal	-2(%rbp), %r10d
	cmpl	%edx, %r9d
	cmovll	%r9d, %edx
	cmovll	%ecx, %r11d
	movq	80(%rsp), %r15                  # 8-byte Reload
	cmovll	%r10d, %r15d
	cmpl	%r14d, %r8d
	movl	%r9d, 164(%rsp)
	leal	8(,%rbp,4), %r8d
	movslq	%r8d, %r8
	movzwl	(%rbx,%r8,2), %r9d
	movzwl	(%r12,%rsi,2), %esi
	cmovll	%r10d, %r15d
	addl	$2, %ebp
	addl	%r9d, %esi
	addl	168(%rsp), %esi
	movl	%esi, 168(%rsp)
	movzwl	(%rbx,%r8,2), %r8d
	movzwl	(%r12,%rdi,2), %edi
	addl	%r8d, %edi
	addl	172(%rsp), %edi
	cmpl	%edx, %esi
	movl	%edx, %r8d
	cmovll	%esi, %r8d
	cmovll	%eax, %r11d
	cmpl	%r8d, %edi
	cmovll	%edi, %r8d
                                        # kill: def $r11d killed $r11d killed $r11 def $r11
	cmovll	%ecx, %r11d
	cmovll	%ebp, %r15d
	cmpl	%edx, %esi
	movl	%r15d, %r9d
	cmovll	%ebp, %r9d
	movq	%r11, %rbp
	movl	%edi, 172(%rsp)
	leal	(,%r9,4), %eax
	cltq
	leaq	(%rbx,%rax,2), %rax
	movq	%rax, 464(%rsp)                 # 8-byte Spill
	leal	(,%r11,4), %eax
	movq	336(%rsp), %rbx                 # 8-byte Reload
	movl	%ebx, %ecx
	subl	%r9d, %ecx
	movl	%r9d, %edx
	subl	280(%rsp), %edx                 # 4-byte Folded Reload
	movq	344(%rsp), %rsi                 # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	subl	%ebp, %esi
	movl	%ebp, %edi
	subl	392(%rsp), %edi                 # 4-byte Folded Reload
	cmpl	%edi, %esi
	cmovll	%esi, %edi
	cltq
	cmpl	%edi, %edx
	cmovll	%edx, %edi
	leaq	(%r12,%rax,2), %rax
	movq	%rax, 384(%rsp)                 # 8-byte Spill
	cmpl	%edi, %ecx
	cmovll	%ecx, %edi
	movslq	%r9d, %rcx
	addq	136(%rsp), %rcx                 # 8-byte Folded Reload
	movq	320(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	sarl	$2, %eax
	movslq	%ebp, %rdx
	movslq	%edi, %rsi
	movq	%rsi, 288(%rsp)                 # 8-byte Spill
	movq	%rdx, 480(%rsp)                 # 8-byte Spill
	imulq	64(%rsp), %rdx                  # 8-byte Folded Reload
	movq	%rcx, 376(%rsp)                 # 8-byte Spill
	addq	%rcx, %rdx
	movq	%rdx, 488(%rsp)                 # 8-byte Spill
	cmpl	$2, %eax
	movl	$1, %ecx
	cmovgel	%eax, %ecx
	incl	%ecx
	movq	%rcx, 152(%rsp)                 # 8-byte Spill
	movl	$1, %r11d
	movl	%ebp, %eax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movl	%r9d, %eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movl	400(%rsp), %edx                 # 4-byte Reload
	movl	352(%rsp), %esi                 # 4-byte Reload
	movq	%r12, %r10
	movq	%r9, 48(%rsp)                   # 8-byte Spill
	movq	%rbp, 240(%rsp)                 # 8-byte Spill
	jmp	.LBB0_308
	.p2align	4, 0x90
.LBB0_305:                              # %if.else3098
                                        #   in Loop: Header=BB0_308 Depth=1
	movq	480(%rsp), %rbx                 # 8-byte Reload
	subq	%r12, %rbx
	movq	%r13, %r9
	imulq	%r13, %rbx
	addq	376(%rsp), %rbx                 # 8-byte Folded Reload
	movq	%r11, %r14
	imulq	%r13, %r14
	leaq	(%rbx,%r14,8), %rdx
	leaq	(%r11,%r11), %rax
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	movq	%rbx, %rcx
	subq	%rax, %rcx
	addq	%r14, %rcx
	movl	%r8d, 128(%rsp)                 # 4-byte Spill
	leaq	(%rbx,%r11,2), %r8
	addq	%r14, %r8
	leaq	160(%rsp), %rax
	movq	%rax, (%rsp)
	movq	56(%rsp), %r13                  # 8-byte Reload
	movq	%r13, %rdi
	movq	%rbx, %rsi
                                        # kill: def $r9d killed $r9d killed $r9
	movq	72(%rsp), %r15                  # 8-byte Reload
	movq	104(%rsp), %rax                 # 8-byte Reload
	callq	*32040(%rax,%r15,8)
	leaq	(%rbx,%r14,2), %rdx
	movq	%rdx, %rsi
	subq	%r12, %rsi
	addq	%r12, %rdx
	leaq	(%rsi,%r14), %rcx
	leaq	(%rdx,%r14), %r8
	leaq	176(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r13, %rdi
	movq	64(%rsp), %r13                  # 8-byte Reload
	movl	%r13d, %r9d
	movq	104(%rsp), %rax                 # 8-byte Reload
	callq	*32040(%rax,%r15,8)
	movq	488(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, %rsi
	subq	%r12, %rsi
	leaq	(%rbx,%r12), %rdx
	leaq	(%rsi,%r14), %rcx
	leaq	(%rdx,%r14), %r8
	leaq	192(%rsp), %rax
	movq	%rax, (%rsp)
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movl	%r13d, %r9d
	movq	104(%rsp), %r13                 # 8-byte Reload
	callq	*32040(%r13,%r15,8)
	leaq	(%rbx,%r14,2), %rcx
	movq	%rcx, %rsi
	subq	%r12, %rsi
	leaq	(%rcx,%r12), %rdx
	movq	32(%rsp), %rbx                  # 8-byte Reload
	leaq	(%rcx,%rbx,2), %r8
	subq	144(%rsp), %rcx                 # 8-byte Folded Reload
	addq	%r14, %rcx
	addq	%r14, %r8
	leaq	208(%rsp), %rax
	movq	%rax, (%rsp)
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	64(%rsp), %r9                   # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	callq	*32040(%r13,%r15,8)
	movq	464(%rsp), %rsi                 # 8-byte Reload
	movzwl	(%rsi), %edx
	movq	%rbx, %r10
	shlq	$5, %r10
	movq	384(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rax
	subq	%r10, %rax
	movzwl	(%rax), %eax
	addl	%edx, %eax
	addl	160(%rsp), %eax
	movl	%eax, 160(%rsp)
	movzwl	(%rsi), %edx
	movzwl	(%rcx,%r10), %r8d
	addl	%edx, %r8d
	addl	164(%rsp), %r8d
	movl	%r8d, 144(%rsp)                 # 4-byte Spill
	movl	%r8d, 164(%rsp)
	movq	%rbx, %r13
	shlq	$4, %r13
	movq	%rsi, %rdx
	subq	%r13, %rdx
	movq	%rdx, 416(%rsp)                 # 8-byte Spill
	movzwl	(%rdx), %edx
	leaq	(,%rbx,8), %r14
	leaq	(%r14,%r14,2), %rdi
	movq	%rcx, %r8
	subq	%rdi, %r8
	negq	%rdi
	movzwl	(%r8), %r8d
	addl	%edx, %r8d
	addl	168(%rsp), %r8d
	movl	%r8d, 264(%rsp)                 # 4-byte Spill
	movl	%r8d, 168(%rsp)
	movzwl	(%rsi,%r13), %edx
	movzwl	(%rcx,%rdi), %edi
	addl	%edx, %edi
	addl	172(%rsp), %edi
	movl	%edi, 272(%rsp)                 # 4-byte Spill
	movl	%edi, 172(%rsp)
	movq	%rsi, %rdx
	subq	%r10, %rdx
	movzwl	(%rdx), %r8d
	movq	%rcx, %r9
	subq	%r13, %r9
	movzwl	(%r9), %edi
	addl	%r8d, %edi
	addl	176(%rsp), %edi
	movl	%edi, 232(%rsp)                 # 4-byte Spill
	movl	%edi, 176(%rsp)
	movzwl	(%rsi,%r10), %r11d
	movzwl	(%r9), %edi
	addl	%r11d, %edi
	addl	180(%rsp), %edi
	movl	%edi, 328(%rsp)                 # 4-byte Spill
	movl	%edi, 180(%rsp)
	movzwl	(%rdx), %r11d
	movq	%rcx, %rbx
	subq	%r14, %rbx
	movzwl	(%rbx), %edi
	addl	%r11d, %edi
	addl	184(%rsp), %edi
	movl	%edi, 312(%rsp)                 # 4-byte Spill
	movl	%edi, 184(%rsp)
	movzwl	(%rsi,%r10), %edi
	movzwl	(%rbx), %r11d
	addl	%edi, %r11d
	addl	188(%rsp), %r11d
	movl	%r11d, 188(%rsp)
	movzwl	(%rdx), %edi
	movzwl	(%rcx), %ebx
	addl	%edi, %ebx
	addl	192(%rsp), %ebx
	movl	%ebx, 192(%rsp)
	movzwl	(%rsi,%r10), %r14d
	movzwl	(%rcx), %r9d
	addl	%r14d, %r9d
	addl	196(%rsp), %r9d
	movl	%r9d, 196(%rsp)
	movzwl	(%rdx), %r15d
	movzwl	(%rcx,%r12,2), %r14d
	addl	%r15d, %r14d
	addl	200(%rsp), %r14d
	movl	%r14d, 200(%rsp)
	movzwl	(%rcx,%r12,2), %r12d
	movzwl	(%rsi,%r10), %r15d
	addl	%r15d, %r12d
	addl	204(%rsp), %r12d
	movl	%r12d, 204(%rsp)
	movzwl	(%rdx), %edx
	movzwl	(%rcx,%r13), %r15d
	addl	%edx, %r15d
	addl	208(%rsp), %r15d
	movl	%r15d, 208(%rsp)
	movzwl	(%rsi,%r10), %r10d
	movzwl	(%rcx,%r13), %r8d
	addl	%r10d, %r8d
	addl	212(%rsp), %r8d
	movl	%r8d, 212(%rsp)
	movq	416(%rsp), %rdx                 # 8-byte Reload
	movzwl	(%rdx), %r10d
	movq	32(%rsp), %rdx                  # 8-byte Reload
	leaq	(%rdx,%rdx,2), %rdx
	movzwl	(%rcx,%rdx,8), %edi
	addl	%r10d, %edi
	addl	216(%rsp), %edi
	movl	%edi, 216(%rsp)
	movzwl	(%rsi,%r13), %r10d
	movzwl	(%rcx,%rdx,8), %r13d
	addl	%r10d, %r13d
	addl	220(%rsp), %r13d
	movl	128(%rsp), %ecx                 # 4-byte Reload
	cmpl	%ecx, %eax
	cmovgel	%ecx, %eax
	movl	$0, %r10d
	movl	$12, %ecx
	cmovll	%ecx, %r10d
	movl	144(%rsp), %ecx                 # 4-byte Reload
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	movl	$4, %ecx
	cmovll	%ecx, %r10d
	movl	264(%rsp), %ecx                 # 4-byte Reload
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	movl	$-19, %ecx
	cmovll	%ecx, %r10d
	movl	272(%rsp), %ecx                 # 4-byte Reload
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	movl	$45, %ecx
	cmovll	%ecx, %r10d
	movl	232(%rsp), %ecx                 # 4-byte Reload
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	movl	$-50, %ecx
	cmovll	%ecx, %r10d
	movl	328(%rsp), %ecx                 # 4-byte Reload
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	movl	$78, %ecx
	cmovll	%ecx, %r10d
	movl	312(%rsp), %ecx                 # 4-byte Reload
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	movl	$-49, %ecx
	cmovll	%ecx, %r10d
	cmpl	%eax, %r11d
	cmovll	%r11d, %eax
	movl	$79, %ecx
	cmovll	%ecx, %r10d
	cmpl	%eax, %ebx
	cmovll	%ebx, %eax
	movl	$-64, %ecx
	cmovll	%ecx, %r10d
	cmpl	%eax, %r9d
	cmovll	%r9d, %eax
	movl	$64, %ecx
	cmovll	%ecx, %r10d
	cmpl	%eax, %r14d
	cmovll	%r14d, %eax
	movl	$-63, %ecx
	cmovll	%ecx, %r10d
	cmpl	%eax, %r12d
	cmovll	%r12d, %eax
	movl	$65, %ecx
	cmovll	%ecx, %r10d
	cmpl	%eax, %r15d
	cmovll	%r15d, %eax
	movl	$-62, %ecx
	cmovll	%ecx, %r10d
	cmpl	%eax, %r8d
	cmovll	%r8d, %eax
	movl	$66, %ecx
	cmovll	%ecx, %r10d
	cmpl	%eax, %edi
	cmovll	%edi, %eax
	movl	$-29, %ecx
	cmovll	%ecx, %r10d
	cmpl	%eax, %r13d
	movl	%eax, %r8d
	cmovll	%r13d, %r8d
	movl	%r13d, 220(%rsp)
	movl	$35, %eax
	cmovll	%eax, %r10d
	testl	%r10d, %r10d
	je	.LBB0_313
# %bb.306:                              # %if.then3521
                                        #   in Loop: Header=BB0_308 Depth=1
	movl	%r10d, %eax
	sarl	$4, %eax
	movq	32(%rsp), %r11                  # 8-byte Reload
	imull	%r11d, %eax
	movq	48(%rsp), %r9                   # 8-byte Reload
	addl	%r9d, %eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	shll	$28, %r10d
	sarl	$28, %r10d
	imull	%r11d, %r10d
	addl	%ebp, %r10d
	movl	%r10d, %eax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	24(%rsp), %r10                  # 8-byte Reload
	movq	64(%rsp), %r13                  # 8-byte Reload
	movl	400(%rsp), %edx                 # 4-byte Reload
	movl	352(%rsp), %esi                 # 4-byte Reload
.LBB0_307:                              # %do.cond3531
                                        #   in Loop: Header=BB0_308 Depth=1
	incq	%r11
	cmpq	152(%rsp), %r11                 # 8-byte Folded Reload
	je	.LBB0_314
.LBB0_308:                              # %do.body2969
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_311 Depth 2
	leaq	(,%r11,4), %r12
	cmpq	288(%rsp), %r12                 # 8-byte Folded Reload
	movq	%r11, 32(%rsp)                  # 8-byte Spill
	jle	.LBB0_305
# %bb.309:                              # %for.body3042.preheader
                                        #   in Loop: Header=BB0_308 Depth=1
	movq	$-32, %rbx
	jmp	.LBB0_311
	.p2align	4, 0x90
.LBB0_310:                              # %if.end3093
                                        #   in Loop: Header=BB0_311 Depth=2
	addq	$2, %rbx
	je	.LBB0_307
.LBB0_311:                              # %for.body3042
                                        #   Parent Loop BB0_308 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	x264_me_search_ref.hex4+32(%rbx), %r14d
	imull	%r11d, %r14d
	addl	%r9d, %r14d
	movsbl	x264_me_search_ref.hex4+33(%rbx), %r15d
	imull	%r11d, %r15d
	addl	%ebp, %r15d
	movl	%r14d, %eax
	shll	$16, %eax
	movl	%r15d, %ecx
	andl	$32767, %ecx                    # imm = 0x7FFF
	orl	%eax, %ecx
	movl	%esi, %eax
	subl	%ecx, %eax
	addl	%edx, %ecx
	orl	%eax, %ecx
	testl	$-2147467264, %ecx              # imm = 0x80004000
	jne	.LBB0_310
# %bb.312:                              # %if.then3068
                                        #   in Loop: Header=BB0_311 Depth=2
	movl	%r15d, %eax
	imull	%r13d, %eax
	addl	%r14d, %eax
	movslq	%eax, %rdx
	addq	136(%rsp), %rdx                 # 8-byte Folded Reload
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movl	%r13d, %ecx
	movq	104(%rsp), %rax                 # 8-byte Reload
	movl	%r8d, %r12d
	movq	72(%rsp), %r8                   # 8-byte Reload
	movq	%r13, %rbp
	movq	%r10, %r13
	callq	*31928(%rax,%r8,8)
	movq	32(%rsp), %r11                  # 8-byte Reload
	movq	48(%rsp), %r9                   # 8-byte Reload
	movq	%r13, %r10
	movq	%rbp, %r13
	movq	240(%rsp), %rbp                 # 8-byte Reload
	movl	%r12d, %r8d
	movl	352(%rsp), %esi                 # 4-byte Reload
	leal	(,%r14,4), %ecx
	movslq	%ecx, %rcx
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movzwl	(%rdx,%rcx,2), %ecx
	leal	(,%r15,4), %edx
	movslq	%edx, %rdx
	movzwl	(%r10,%rdx,2), %edx
	addl	%ecx, %edx
	addl	%eax, %edx
	cmpl	%r12d, %edx
	cmovll	%edx, %r8d
	movl	400(%rsp), %edx                 # 4-byte Reload
	movq	112(%rsp), %rax                 # 8-byte Reload
	cmovll	%r15d, %eax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	cmovll	%r14d, %eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB0_310
.LBB0_313:                              #   in Loop: Header=BB0_308 Depth=1
	movq	24(%rsp), %r10                  # 8-byte Reload
	movq	64(%rsp), %r13                  # 8-byte Reload
	movl	400(%rsp), %edx                 # 4-byte Reload
	movl	352(%rsp), %esi                 # 4-byte Reload
	movq	48(%rsp), %r9                   # 8-byte Reload
	movq	32(%rsp), %r11                  # 8-byte Reload
	jmp	.LBB0_307
.LBB0_314:                              # %cleanup3553
	movq	112(%rsp), %rax                 # 8-byte Reload
	cmpl	344(%rsp), %eax                 # 4-byte Folded Reload
	jg	.LBB0_153
# %bb.315:                              # %cleanup3553
	cmpl	392(%rsp), %eax                 # 4-byte Folded Reload
	movq	104(%rsp), %rbx                 # 8-byte Reload
	movq	432(%rsp), %r14                 # 8-byte Reload
	movq	440(%rsp), %r15                 # 8-byte Reload
	jl	.LBB0_154
# %bb.316:                              # %cleanup3553
	movl	%r8d, %ebp
	movq	80(%rsp), %rax                  # 8-byte Reload
	cmpl	336(%rsp), %eax                 # 4-byte Folded Reload
	jg	.LBB0_169
# %bb.317:                              # %cleanup3553
	cmpl	280(%rsp), %eax                 # 4-byte Folded Reload
	jge	.LBB0_41
	jmp	.LBB0_169
.Lfunc_end0:
	.size	x264_me_search_ref, .Lfunc_end0-x264_me_search_ref
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI0_0:
	.quad	.LBB0_36
	.quad	.LBB0_40
	.quad	.LBB0_33
	.quad	.LBB0_31
	.quad	.LBB0_31
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function refine_subpel
	.type	refine_subpel,@function
refine_subpel:                          # @refine_subpel
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
	subq	$1400, %rsp                     # imm = 0x578
	.cfi_def_cfa_offset 1456
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, 116(%rsp)                 # 4-byte Spill
	movq	%r8, %r14
	movl	%edx, %ebp
	movq	%rsi, %r15
	movq	%rdi, %r13
	movslq	(%rsi), %rdx
	movq	%rdx, 88(%rsp)                  # 8-byte Spill
	cmpq	$4, %rdx
	setl	15(%rsp)                        # 1-byte Folded Spill
	movq	8(%rsi), %r8
	movswq	128(%rsi), %r9
	leaq	(%r9,%r9), %rdx
	movswq	130(%rsi), %rax
	leaq	(%rax,%rax), %rsi
	cmpl	$0, 16412(%rdi)
	setne	%r10b
	movl	20(%r15), %edi
	testl	%edi, 16436(%r13)
	movl	%ecx, 208(%rsp)                 # 4-byte Spill
	movb	%r10b, 192(%rsp)                # 1-byte Spill
	je	.LBB1_1
# %bb.2:                                # %cond.true
	movl	16388(%r13), %edi
	andl	$1, %edi
	leal	-2(,%rdi,4), %ecx
	movq	%rcx, 216(%rsp)                 # 8-byte Spill
	jmp	.LBB1_3
.LBB1_1:
	movq	$0, 216(%rsp)                   # 8-byte Folded Spill
.LBB1_3:                                # %cond.end
	movq	88(%rsp), %rdi                  # 8-byte Reload
	movl	x264_pixel_size(,%rdi,8), %r10d
	movl	x264_pixel_size+4(,%rdi,8), %r12d
	movq	%r8, %rdi
	subq	%rdx, %rdi
	movq	%rdi, 136(%rsp)                 # 8-byte Spill
	subq	%rsi, %r8
	movq	%r8, 144(%rsp)                  # 8-byte Spill
	movswl	140(%r15), %r8d
	movswl	142(%r15), %ebx
	movl	136(%r15), %r11d
	testl	%ebp, %ebp
	movq	%r15, 56(%rsp)                  # 8-byte Spill
	movq	%r13, 104(%rsp)                 # 8-byte Spill
	movq	%r10, 96(%rsp)                  # 8-byte Spill
	movq	%r12, 200(%rsp)                 # 8-byte Spill
	movq	%r14, 120(%rsp)                 # 8-byte Spill
	je	.LBB1_4
# %bb.5:                                # %land.lhs.true
	cmpl	$2, 16408(%r13)
	jg	.LBB1_10
# %bb.6:                                # %if.then
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	movl	16456(%r13), %edx
	movl	16460(%r13), %esi
	addl	$2, %edx
	movl	16464(%r13), %ebx
	addl	$-2, %ebx
	cmpl	%ebx, %r9d
	cmovll	%r9d, %ebx
	cmpl	%r9d, %edx
	cmovgl	%edx, %ebx
	addl	$2, %esi
	movl	16468(%r13), %r14d
	addl	$-2, %r14d
	cmpl	%r14d, %eax
	cmovll	%eax, %r14d
	cmpl	%eax, %esi
	cmovgl	%esi, %r14d
	cmpl	%r8d, %ebx
	jne	.LBB1_9
# %bb.7:                                # %if.then
	cmpl	24(%rsp), %r14d                 # 4-byte Folded Reload
	jne	.LBB1_9
# %bb.8:
	movq	24(%rsp), %rbx                  # 8-byte Reload
.LBB1_10:                               # %if.end75
	movq	%r11, 16(%rsp)                  # 8-byte Spill
	testl	%ebp, %ebp
	jle	.LBB1_21
.LBB1_11:                               # %for.body.lr.ph
	leaq	32(%r15), %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	leal	1(%r12), %eax
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	leal	4(%r10), %eax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	incl	%ebp
	movq	56(%rsp), %r12                  # 8-byte Reload
	jmp	.LBB1_13
	.p2align	4, 0x90
.LBB1_12:                               # %for.cond
                                        #   in Loop: Header=BB1_13 Depth=1
	decl	%ebp
	cmpl	$2, %ebp
	jl	.LBB1_21
.LBB1_13:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, 40(%rsp)                  # 4-byte Spill
	movl	%ebx, %r15d
	movl	$64, 212(%rsp)
	movl	120(%r12), %ecx
	leal	-2(%r15), %r9d
	movl	%r9d, 24(%rsp)                  # 4-byte Spill
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	248(%rsp), %rdi
	leaq	220(%rsp), %rsi
	movq	136(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, %rdx
	movq	%r8, %rbp
	pushq	24(%r12)
	.cfi_adjust_cfa_offset 8
	pushq	168(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	*32624(%r13)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	%rax, %r13
	movl	120(%r12), %ecx
	leal	-2(%rbp), %r14d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	280(%rsp), %rdi
	leaq	220(%rsp), %rsi
	movq	%rbx, %rdx
	movl	%r14d, %r8d
	movl	%r15d, %r9d
	pushq	24(%r12)
	.cfi_adjust_cfa_offset 8
	pushq	216(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	56(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	136(%rsp), %rax                 # 8-byte Reload
	callq	*32624(%rax)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movslq	212(%rsp), %r9
	movq	%r9, %rdx
	addq	%r13, %rdx
	leaq	1(%rax), %r8
	movq	88(%r12), %rdi
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%r13, %rsi
	movq	112(%rsp), %r13                 # 8-byte Reload
	movq	%rax, %rcx
                                        # kill: def $r9d killed $r9d killed $r9
	leaq	72(%rsp), %rax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	movq	104(%rsp), %rax                 # 8-byte Reload
	callq	*32040(%r13,%rax,8)
	movl	40(%rsp), %r11d                 # 4-byte Reload
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	%rbp, %r10
	movslq	%ebp, %rcx
	movq	136(%rsp), %rax                 # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	movl	64(%rsp), %eax
	addl	%edx, %eax
	movslq	%r15d, %rsi
	movq	144(%rsp), %rdi                 # 8-byte Reload
	movzwl	-4(%rdi,%rsi,2), %r8d
	addl	%eax, %r8d
	movq	16(%rsp), %rax                  # 8-byte Reload
	cmpl	%eax, %r8d
	jl	.LBB1_15
# %bb.14:                               # %for.body
                                        #   in Loop: Header=BB1_13 Depth=1
	movl	%eax, %r8d
	movl	%r15d, %r11d
.LBB1_15:                               # %for.body
                                        #   in Loop: Header=BB1_13 Depth=1
	addl	68(%rsp), %edx
	leal	2(%rsi), %edi
	movq	144(%rsp), %r9                  # 8-byte Reload
	movzwl	4(%r9,%rsi,2), %eax
	addl	%edx, %eax
	cmpl	%r8d, %eax
	cmovgel	%r8d, %eax
	cmovgel	%r11d, %edi
	movq	136(%rsp), %r8                  # 8-byte Reload
	movzwl	-4(%r8,%rcx,2), %edx
	addl	72(%rsp), %edx
	movzwl	(%r9,%rsi,2), %esi
	addl	%esi, %edx
	cmpl	%eax, %edx
	movl	%eax, %r9d
	cmovll	%edx, %r9d
	addl	76(%rsp), %esi
	movzwl	4(%r8,%rcx,2), %ecx
	addl	%ecx, %esi
	movl	%r15d, %ebx
	cmpl	%r9d, %esi
	jl	.LBB1_17
# %bb.16:                               # %for.body
                                        #   in Loop: Header=BB1_13 Depth=1
	movl	%edi, %ebx
.LBB1_17:                               # %for.body
                                        #   in Loop: Header=BB1_13 Depth=1
	cmpl	%eax, %edx
	movq	%r10, %r8
	cmovgel	%r8d, %r14d
	cmovll	%r15d, %ebx
	addl	$2, %r8d
	cmpl	%r9d, %esi
	cmovll	%esi, %r9d
	movq	%r9, 16(%rsp)                   # 8-byte Spill
	cmovgel	%r14d, %r8d
	movq	96(%rsp), %r10                  # 8-byte Reload
	movl	40(%rsp), %ebp                  # 4-byte Reload
	jl	.LBB1_12
# %bb.18:                               # %for.body
                                        #   in Loop: Header=BB1_13 Depth=1
	cmpl	%eax, %edx
	jl	.LBB1_12
# %bb.19:                               # %for.body
                                        #   in Loop: Header=BB1_13 Depth=1
	cmpl	%r15d, %ebx
	jne	.LBB1_12
# %bb.20:
	movl	%r15d, %ebx
	jmp	.LBB1_21
.LBB1_4:
	movq	%r11, 16(%rsp)                  # 8-byte Spill
.LBB1_21:                               # %cleanup228
	movzbl	15(%rsp), %ebp                  # 1-byte Folded Reload
	andb	192(%rsp), %bpl                 # 1-byte Folded Reload
	cmpl	$0, 116(%rsp)                   # 4-byte Folded Reload
	je	.LBB1_23
# %bb.22:
	movq	56(%rsp), %r15                  # 8-byte Reload
	movq	200(%rsp), %r12                 # 8-byte Reload
	movq	16(%rsp), %r11                  # 8-byte Reload
	movq	120(%rsp), %rdx                 # 8-byte Reload
	jmp	.LBB1_35
.LBB1_23:                               # %land.lhs.true230
	movq	31872(%r13), %rax
	cmpq	31928(%r13), %rax
	setne	%al
	orb	%bpl, %al
	cmpb	$1, %al
	movq	56(%rsp), %r15                  # 8-byte Reload
	movq	200(%rsp), %r12                 # 8-byte Reload
	movq	16(%rsp), %r11                  # 8-byte Reload
	movq	120(%rsp), %rdx                 # 8-byte Reload
	jne	.LBB1_35
# %bb.24:                               # %if.then244
	movl	$16, 64(%rsp)
	leaq	32(%r15), %rdx
	movl	120(%r15), %ecx
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	248(%rsp), %rdi
	leaq	72(%rsp), %rsi
	movq	%r8, 40(%rsp)                   # 8-byte Spill
	movq	40(%rsp), %r8                   # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	movl	%ebx, %r9d
	pushq	24(%r15)
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	movq	%rbx, %r14
	movq	%r10, %rbx
	callq	*32624(%r13)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	88(%r15), %rdi
	movl	64(%rsp), %ecx
	movl	$16, %esi
	movq	%rax, %rdx
	movq	88(%rsp), %rax                  # 8-byte Reload
	callq	*31872(%r13,%rax,8)
	movq	32(%rsp), %r8                   # 8-byte Reload
	movslq	%r8d, %rcx
	movq	136(%rsp), %rdx                 # 8-byte Reload
	movzwl	(%rdx,%rcx,2), %ecx
	movslq	%r14d, %rdx
	movq	144(%rsp), %rsi                 # 8-byte Reload
	movl	%ebp, %edi
	movzwl	(%rsi,%rdx,2), %ebp
	addl	%ecx, %ebp
	addl	%eax, %ebp
	cmpl	$268435456, %ebp                # imm = 0x10000000
	setl	%al
	movb	%dil, 15(%rsp)                  # 1-byte Spill
	andb	%dil, %al
	cmpb	$1, %al
	jne	.LBB1_25
# %bb.26:                               # %if.then277
	movq	64(%r15), %rdx
	movl	124(%r15), %ecx
	movq	%r14, 24(%rsp)                  # 8-byte Spill
	movq	216(%rsp), %rax                 # 8-byte Reload
	leal	(%r14,%rax), %r9d
	movl	%ebx, %r14d
	shrl	$31, %r14d
	addl	%ebx, %r14d
	sarl	%r14d
	movl	%r12d, %r15d
	shrl	$31, %r15d
	addl	%r12d, %r15d
	sarl	%r15d
	leaq	240(%rsp), %rdi
	movl	$8, %esi
                                        # kill: def $r8d killed $r8d killed $r8
	movl	%r9d, 16(%rsp)                  # 4-byte Spill
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	*32632(%r13)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	24(%rax), %r8
	movq	112(%r8), %rax
	testq	%rax, %rax
	je	.LBB1_28
# %bb.27:                               # %if.then289
	addq	$64, %r8
	movl	%ebx, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %r10
	movl	%r12d, %r9d
	sarl	%r9d
	leaq	240(%rsp), %rdi
	movl	$8, %esi
	movq	%rdi, %rdx
	movl	$8, %ecx
	callq	*(%rax,%r10,8)
.LBB1_28:                               # %if.end306
	movq	%r12, %rbx
	movq	56(%rsp), %r12                  # 8-byte Reload
	movq	96(%r12), %rdi
	leaq	240(%rsp), %rdx
	movl	$16, %esi
	movl	$8, %ecx
	movq	88(%rsp), %rax                  # 8-byte Reload
	callq	*31840(%r13,%rax,8)
	addl	%eax, %ebp
	cmpl	$268435455, %ebp                # imm = 0xFFFFFFF
	jg	.LBB1_29
# %bb.30:                               # %if.then318
	movq	72(%r12), %rdx
	movl	124(%r12), %ecx
	leaq	240(%rsp), %rdi
	movl	$8, %esi
	movq	32(%rsp), %r8                   # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	movl	16(%rsp), %r9d                  # 4-byte Reload
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	*32632(%r13)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	24(%r12), %r8
	movq	176(%r8), %rax
	testq	%rax, %rax
	movq	%r12, %r15
	movq	%rbx, %r12
	je	.LBB1_32
# %bb.31:                               # %if.then333
	subq	$-128, %r8
	movq	96(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	sarl	$3, %ecx
	movslq	%ecx, %r10
	movl	%r12d, %r9d
	sarl	%r9d
	leaq	240(%rsp), %rdi
	movl	$8, %esi
	movq	%rdi, %rdx
	movl	$8, %ecx
	callq	*(%rax,%r10,8)
.LBB1_32:                               # %if.end351
	movq	104(%r15), %rdi
	leaq	240(%rsp), %rdx
	movl	$16, %esi
	movl	$8, %ecx
	movq	88(%rsp), %rax                  # 8-byte Reload
	callq	*31840(%r13,%rax,8)
	addl	%eax, %ebp
	movq	96(%rsp), %r10                  # 8-byte Reload
	jmp	.LBB1_33
.LBB1_9:                                # %if.then53
	movl	$16, 64(%rsp)
	leaq	32(%r15), %rdx
	movl	120(%r15), %ecx
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	248(%rsp), %rdi
	leaq	72(%rsp), %rsi
	movl	%ebp, 48(%rsp)                  # 4-byte Spill
	movq	%r8, %rbp
	movl	%ebx, %r8d
	movl	%r14d, %r9d
	pushq	24(%r15)
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	movq	%r11, 48(%rsp)                  # 8-byte Spill
	callq	*32624(%r13)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	88(%r15), %rdi
	movl	64(%rsp), %ecx
	movl	$16, %esi
	movq	%rax, %rdx
	movq	88(%rsp), %rax                  # 8-byte Reload
	callq	*31928(%r13,%rax,8)
	movq	%rbp, %r8
	movl	40(%rsp), %ebp                  # 4-byte Reload
	movq	16(%rsp), %r11                  # 8-byte Reload
	movq	96(%rsp), %r10                  # 8-byte Reload
	movslq	%ebx, %rcx
	movq	136(%rsp), %rdx                 # 8-byte Reload
	movzwl	(%rdx,%rcx,2), %ecx
	movslq	%r14d, %rdx
	movq	144(%rsp), %rsi                 # 8-byte Reload
	movzwl	(%rsi,%rdx,2), %edx
	addl	%ecx, %edx
	addl	%eax, %edx
	cmpl	%r11d, %edx
	cmovll	%edx, %r11d
	movq	24(%rsp), %rax                  # 8-byte Reload
	cmovll	%r14d, %eax
	cmovll	%ebx, %r8d
	movq	%rax, %rbx
	movq	%r11, 16(%rsp)                  # 8-byte Spill
	testl	%ebp, %ebp
	jg	.LBB1_11
	jmp	.LBB1_21
.LBB1_25:
	movq	%rbx, %r10
	movq	%r14, %rbx
	jmp	.LBB1_34
.LBB1_29:
	movq	%r12, %r15
	movq	96(%rsp), %r10                  # 8-byte Reload
	movq	%rbx, %r12
.LBB1_33:                               # %if.end363
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movq	32(%rsp), %r8                   # 8-byte Reload
.LBB1_34:                               # %if.end363
	movq	120(%rsp), %rdx                 # 8-byte Reload
	cmpl	$268435456, %ebp                # imm = 0x10000000
	movl	$268435456, %r11d               # imm = 0x10000000
	cmovll	%ebp, %r11d
	movzbl	15(%rsp), %ebp                  # 1-byte Folded Reload
.LBB1_35:                               # %if.end369
	testq	%rdx, %rdx
	je	.LBB1_40
# %bb.36:                               # %if.then371
	leal	(,%r11,8), %ecx
	subl	%r11d, %ecx
	sarl	$3, %ecx
	movl	(%rdx), %eax
	cmpl	%eax, %ecx
	jle	.LBB1_38
# %bb.37:                               # %if.then376
	movl	%r11d, 136(%r15)
	movw	%r8w, 140(%r15)
	movw	%bx, 142(%r15)
	jmp	.LBB1_111
.LBB1_38:                               # %if.else
	cmpl	%eax, %r11d
	jge	.LBB1_40
# %bb.39:                               # %if.then386
	movl	%r11d, (%rdx)
.LBB1_40:                               # %if.end389
	cmpl	$2, 16408(%r13)
	jl	.LBB1_105
# %bb.41:                               # %for.cond396.preheader
	movl	208(%rsp), %ecx                 # 4-byte Reload
	testl	%ecx, %ecx
	jle	.LBB1_110
# %bb.42:                               # %for.body400.lr.ph
	movb	%bpl, 15(%rsp)                  # 1-byte Spill
	leaq	32(%r15), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movl	%r10d, %eax
	shrl	$31, %eax
	addl	%r10d, %eax
	sarl	%eax
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	movl	%r12d, %eax
	shrl	$31, %eax
	addl	%r12d, %eax
	sarl	%eax
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	movl	%r10d, %eax
	sarl	$3, %eax
	cltq
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	movl	%r12d, %eax
	sarl	%eax
	movl	%eax, 52(%rsp)                  # 4-byte Spill
	movq	88(%rsp), %rax                  # 8-byte Reload
	addl	$3, %eax
	cltq
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	incl	%ecx
	movl	$-1, %eax
	jmp	.LBB1_44
	.p2align	4, 0x90
.LBB1_43:                               # %for.cond396
                                        #   in Loop: Header=BB1_44 Depth=1
	movl	208(%rsp), %ecx                 # 4-byte Reload
	decl	%ecx
	cmpl	$2, %ecx
	jl	.LBB1_110
.LBB1_44:                               # %for.body400
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, 208(%rsp)                 # 4-byte Spill
                                        # kill: def $ebx killed $ebx killed $rbx def $rbx
	movl	%r8d, %r14d
	movq	%rbx, 40(%rsp)                  # 8-byte Spill
	cmpl	16460(%r13), %ebx
	jle	.LBB1_45
# %bb.46:                               # %lor.lhs.false406
                                        #   in Loop: Header=BB1_44 Depth=1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	cmpl	16468(%r13), %ecx
	jge	.LBB1_45
# %bb.47:                               # %lor.lhs.false412
                                        #   in Loop: Header=BB1_44 Depth=1
	cmpl	16456(%r13), %r14d
	jle	.LBB1_45
# %bb.48:                               # %lor.lhs.false418
                                        #   in Loop: Header=BB1_44 Depth=1
	cmpl	16464(%r13), %r14d
	jge	.LBB1_45
# %bb.49:                               # %if.end425
                                        #   in Loop: Header=BB1_44 Depth=1
	cmpl	$0, 116(%rsp)                   # 4-byte Folded Reload
	movq	%r14, 128(%rsp)                 # 8-byte Spill
	movl	%eax, 32(%rsp)                  # 4-byte Spill
	jne	.LBB1_52
# %bb.50:                               # %if.end425
                                        #   in Loop: Header=BB1_44 Depth=1
	cmpl	$1, %eax
	jne	.LBB1_52
# %bb.51:                               # %if.end425.if.then571_crit_edge
                                        #   in Loop: Header=BB1_44 Depth=1
	movslq	%r14d, %rcx
	movl	$1, 152(%rsp)                   # 4-byte Folded Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%r11, %rbp
	leaq	240(%rsp), %r13
	jmp	.LBB1_63
	.p2align	4, 0x90
.LBB1_52:                               # %if.then432
                                        #   in Loop: Header=BB1_44 Depth=1
	movl	$16, 64(%rsp)
	movl	120(%r15), %ecx
	movq	40(%rsp), %r12                  # 8-byte Reload
	leal	-1(%r12), %ebx
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	248(%rsp), %rbp
	movq	%rbp, %rdi
	leaq	72(%rsp), %rsi
	movq	128(%rsp), %rdx                 # 8-byte Reload
	movl	%r14d, %r8d
	movl	%ebx, %r9d
	pushq	24(%r15)
	.cfi_adjust_cfa_offset 8
	pushq	216(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	movq	%r11, 48(%rsp)                  # 8-byte Spill
	callq	*32624(%r13)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	88(%r15), %rdi
	movl	64(%rsp), %ecx
	movl	$16, %esi
	movq	%rax, %rdx
	movq	88(%rsp), %rax                  # 8-byte Reload
	callq	*31872(%r13,%rax,8)
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movslq	%r14d, %r9
	movq	136(%rsp), %rcx                 # 8-byte Reload
	movzwl	(%rcx,%r9,2), %ecx
	movslq	%r12d, %rdx
	movq	144(%rsp), %rsi                 # 8-byte Reload
	movq	%r14, %r8
	movzwl	-2(%rsi,%rdx,2), %r14d
	addl	%ecx, %r14d
	addl	%eax, %r14d
	cmpl	%edi, %r14d
	setl	%al
	andb	15(%rsp), %al                   # 1-byte Folded Reload
	cmpb	$1, %al
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	movq	%r9, 192(%rsp)                  # 8-byte Spill
	jne	.LBB1_53
# %bb.54:                               # %if.then467
                                        #   in Loop: Header=BB1_44 Depth=1
	movq	64(%r15), %rdx
	movl	124(%r15), %ecx
	movq	216(%rsp), %rax                 # 8-byte Reload
	leal	(%rbx,%rax), %r12d
	movq	%rbp, %rdi
	movl	$8, %esi
                                        # kill: def $r8d killed $r8d killed $r8
	movl	%r12d, %r9d
	pushq	176(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	192(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	*32632(%r13)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	24(%r15), %r8
	movq	112(%r8), %rax
	testq	%rax, %rax
	movq	%rbp, %r13
	je	.LBB1_56
# %bb.55:                               # %if.then483
                                        #   in Loop: Header=BB1_44 Depth=1
	addq	$64, %r8
	movq	%r13, %rdi
	movl	$8, %esi
	movq	%r13, %rdx
	movl	$8, %ecx
	movl	52(%rsp), %r9d                  # 4-byte Reload
	movq	160(%rsp), %r10                 # 8-byte Reload
	callq	*(%rax,%r10,8)
.LBB1_56:                               # %if.end501
                                        #   in Loop: Header=BB1_44 Depth=1
	movq	96(%r15), %rdi
	movl	$16, %esi
	movq	%r13, %rdx
	movl	$8, %ecx
	movq	104(%rsp), %rbx                 # 8-byte Reload
	movq	168(%rsp), %rax                 # 8-byte Reload
	callq	*31816(%rbx,%rax,8)
	addl	%eax, %r14d
	movq	16(%rsp), %rdi                  # 8-byte Reload
	cmpl	%edi, %r14d
	movl	32(%rsp), %ebp                  # 4-byte Reload
	jge	.LBB1_60
# %bb.57:                               # %if.then514
                                        #   in Loop: Header=BB1_44 Depth=1
	movq	72(%r15), %rdx
	movl	124(%r15), %ecx
	movq	%r13, %rdi
	movl	$8, %esi
	movq	128(%rsp), %r8                  # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	movl	%r12d, %r9d
	pushq	176(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	192(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	*32632(%rbx)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	24(%r15), %r8
	movq	176(%r8), %rax
	testq	%rax, %rax
	je	.LBB1_59
# %bb.58:                               # %if.then530
                                        #   in Loop: Header=BB1_44 Depth=1
	subq	$-128, %r8
	movq	%r13, %rdi
	movl	$8, %esi
	movq	%r13, %rdx
	movl	$8, %ecx
	movl	52(%rsp), %r9d                  # 4-byte Reload
	movq	160(%rsp), %r10                 # 8-byte Reload
	callq	*(%rax,%r10,8)
.LBB1_59:                               # %if.end548
                                        #   in Loop: Header=BB1_44 Depth=1
	movq	104(%r15), %rdi
	movl	$16, %esi
	movq	%r13, %rdx
	movl	$8, %ecx
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	168(%rsp), %r8                  # 8-byte Reload
	callq	*31816(%rax,%r8,8)
	addl	%eax, %r14d
	movq	16(%rsp), %rdi                  # 8-byte Reload
	jmp	.LBB1_60
	.p2align	4, 0x90
.LBB1_53:                               #   in Loop: Header=BB1_44 Depth=1
	movq	%rbp, %r13
	movl	32(%rsp), %ebp                  # 4-byte Reload
.LBB1_60:                               # %if.end566
                                        #   in Loop: Header=BB1_44 Depth=1
	xorl	%ecx, %ecx
	cmpl	%edi, %r14d
	movq	96(%rsp), %r10                  # 8-byte Reload
	jl	.LBB1_62
# %bb.61:                               # %if.end566
                                        #   in Loop: Header=BB1_44 Depth=1
	movl	%ebp, %ecx
	movl	%edi, %r14d
	movq	40(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
.LBB1_62:                               # %if.end566
                                        #   in Loop: Header=BB1_44 Depth=1
	movl	%ecx, 152(%rsp)                 # 4-byte Spill
	movl	116(%rsp), %eax                 # 4-byte Reload
	orl	%ebp, %eax
	movl	%r14d, %ebp
	movq	128(%rsp), %r14                 # 8-byte Reload
	movq	192(%rsp), %rcx                 # 8-byte Reload
	je	.LBB1_77
.LBB1_63:                               # %if.then571
                                        #   in Loop: Header=BB1_44 Depth=1
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	movl	$16, 64(%rsp)
	movq	%r15, %rbx
	movl	120(%r15), %ecx
	movq	%r13, %r12
	movq	40(%rsp), %r15                  # 8-byte Reload
	leal	1(%r15), %r9d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%r13, %rdi
	leaq	72(%rsp), %rsi
	movq	128(%rsp), %rdx                 # 8-byte Reload
	movl	%r14d, %r8d
	movq	%r9, 232(%rsp)                  # 8-byte Spill
                                        # kill: def $r9d killed $r9d killed $r9
	pushq	24(%rbx)
	.cfi_adjust_cfa_offset 8
	pushq	216(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	movq	136(%rsp), %r13                 # 8-byte Reload
	callq	*32624(%r13)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	88(%rbx), %rdi
	movl	64(%rsp), %ecx
	movl	$16, %esi
	movq	%rax, %rdx
	movq	88(%rsp), %rax                  # 8-byte Reload
	callq	*31872(%r13,%rax,8)
	movq	136(%rsp), %rcx                 # 8-byte Reload
	movq	192(%rsp), %rdx                 # 8-byte Reload
	movzwl	(%rcx,%rdx,2), %ecx
	movslq	%r15d, %rsi
	movq	144(%rsp), %rdx                 # 8-byte Reload
	movq	%rsi, 192(%rsp)                 # 8-byte Spill
	movzwl	2(%rdx,%rsi,2), %r15d
	addl	%ecx, %r15d
	addl	%eax, %r15d
	cmpl	%ebp, %r15d
	setl	%al
	andb	15(%rsp), %al                   # 1-byte Folded Reload
	cmpb	$1, %al
	movq	%rbp, %r11
	jne	.LBB1_64
# %bb.65:                               # %if.then606
                                        #   in Loop: Header=BB1_44 Depth=1
	movq	%r14, %r8
	movq	%r12, %r14
	movq	%r11, 16(%rsp)                  # 8-byte Spill
	movq	64(%rbx), %rdx
	movl	124(%rbx), %ecx
	movq	216(%rsp), %rax                 # 8-byte Reload
	movq	224(%rsp), %r12                 # 8-byte Reload
	leal	(%r12,%rax), %r9d
	movq	%r14, %rdi
	movl	$8, %esi
                                        # kill: def $r8d killed $r8d killed $r8
	movl	%r9d, %ebp
	pushq	176(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	192(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	*32632(%r13)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	24(%rbx), %r8
	movq	112(%r8), %rax
	testq	%rax, %rax
	je	.LBB1_67
# %bb.66:                               # %if.then622
                                        #   in Loop: Header=BB1_44 Depth=1
	addq	$64, %r8
	movq	%r14, %rdi
	movl	$8, %esi
	movq	%r14, %rdx
	movl	$8, %ecx
	movl	52(%rsp), %r9d                  # 4-byte Reload
	movq	160(%rsp), %r10                 # 8-byte Reload
	callq	*(%rax,%r10,8)
.LBB1_67:                               # %if.end640
                                        #   in Loop: Header=BB1_44 Depth=1
	movq	56(%rsp), %r13                  # 8-byte Reload
	movq	96(%r13), %rdi
	movl	$16, %esi
	movq	%r14, %rdx
	movl	$8, %ecx
	movq	104(%rsp), %rbx                 # 8-byte Reload
	movq	168(%rsp), %rax                 # 8-byte Reload
	callq	*31816(%rbx,%rax,8)
	addl	%eax, %r15d
	movq	16(%rsp), %r11                  # 8-byte Reload
	cmpl	%r11d, %r15d
	jge	.LBB1_68
# %bb.69:                               # %if.then653
                                        #   in Loop: Header=BB1_44 Depth=1
	movq	72(%r13), %rdx
	movl	124(%r13), %ecx
	movq	%r14, %rdi
	movl	$8, %esi
	movq	128(%rsp), %r8                  # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	movl	%ebp, %r9d
	pushq	176(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	192(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	*32632(%rbx)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	24(%r13), %r8
	movq	176(%r8), %rax
	testq	%rax, %rax
	je	.LBB1_71
# %bb.70:                               # %if.then669
                                        #   in Loop: Header=BB1_44 Depth=1
	subq	$-128, %r8
	movq	%r14, %rdi
	movl	$8, %esi
	movq	%r14, %rdx
	movl	$8, %ecx
	movl	52(%rsp), %r9d                  # 4-byte Reload
	movq	160(%rsp), %r10                 # 8-byte Reload
	callq	*(%rax,%r10,8)
.LBB1_71:                               # %if.end687
                                        #   in Loop: Header=BB1_44 Depth=1
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	104(%rax), %rdi
	movl	$16, %esi
	movq	%r14, %rdx
	movl	$8, %ecx
	movq	104(%rsp), %r13                 # 8-byte Reload
	movq	168(%rsp), %rax                 # 8-byte Reload
	callq	*31816(%r13,%rax,8)
	addl	%eax, %r15d
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movq	16(%rsp), %r11                  # 8-byte Reload
	jmp	.LBB1_72
	.p2align	4, 0x90
.LBB1_64:                               #   in Loop: Header=BB1_44 Depth=1
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movq	224(%rsp), %r12                 # 8-byte Reload
	jmp	.LBB1_72
.LBB1_68:                               #   in Loop: Header=BB1_44 Depth=1
	movq	%rbx, %r13
	movq	24(%rsp), %rbx                  # 8-byte Reload
.LBB1_72:                               # %if.end705
                                        #   in Loop: Header=BB1_44 Depth=1
	cmpl	%r11d, %r15d
	movl	$1, %eax
	movl	152(%rsp), %ecx                 # 4-byte Reload
	cmovll	%eax, %ecx
	cmovll	%r15d, %r11d
	cmovll	%r12d, %ebx
	cmpl	$0, 116(%rsp)                   # 4-byte Folded Reload
	movq	96(%rsp), %r10                  # 8-byte Reload
	movq	128(%rsp), %r14                 # 8-byte Reload
	movl	32(%rsp), %eax                  # 4-byte Reload
	jne	.LBB1_73
# %bb.74:                               # %if.end705
                                        #   in Loop: Header=BB1_44 Depth=1
	cmpl	$3, %eax
	movq	56(%rsp), %r15                  # 8-byte Reload
	jne	.LBB1_75
# %bb.112:                              # %if.end705.if.then849_crit_edge
                                        #   in Loop: Header=BB1_44 Depth=1
	movl	%r14d, %r8d
	jmp	.LBB1_92
.LBB1_75:                               #   in Loop: Header=BB1_44 Depth=1
	movl	%ecx, 152(%rsp)                 # 4-byte Spill
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	jmp	.LBB1_76
.LBB1_73:                               #   in Loop: Header=BB1_44 Depth=1
	movl	%ecx, 152(%rsp)                 # 4-byte Spill
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %r15                  # 8-byte Reload
.LBB1_76:                               # %if.then710
                                        #   in Loop: Header=BB1_44 Depth=1
	movq	%r11, %rbp
	leaq	240(%rsp), %r13
.LBB1_77:                               # %if.then710
                                        #   in Loop: Header=BB1_44 Depth=1
	movq	40(%rsp), %r9                   # 8-byte Reload
	movslq	%r9d, %r12
	movl	$16, 64(%rsp)
	movl	120(%r15), %ecx
	leal	-1(%r14), %r8d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%r13, %rbx
	movq	%r13, %rdi
	leaq	72(%rsp), %rsi
	movq	128(%rsp), %rdx                 # 8-byte Reload
	movl	%r8d, 232(%rsp)                 # 4-byte Spill
                                        # kill: def $r9d killed $r9d killed $r9
	pushq	24(%r15)
	.cfi_adjust_cfa_offset 8
	pushq	216(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	movq	136(%rsp), %r13                 # 8-byte Reload
	callq	*32624(%r13)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	88(%r15), %rdi
	movl	64(%rsp), %ecx
	movl	$16, %esi
	movq	%rax, %rdx
	movq	88(%rsp), %rax                  # 8-byte Reload
	callq	*31872(%r13,%rax,8)
	movslq	%r14d, %rcx
	movq	136(%rsp), %rdx                 # 8-byte Reload
	movzwl	-2(%rdx,%rcx,2), %ecx
	movq	144(%rsp), %rdx                 # 8-byte Reload
	movq	%r12, 192(%rsp)                 # 8-byte Spill
	movzwl	(%rdx,%r12,2), %r14d
	addl	%ecx, %r14d
	addl	%eax, %r14d
	cmpl	%ebp, %r14d
	setl	%al
	andb	15(%rsp), %al                   # 1-byte Folded Reload
	cmpb	$1, %al
	movq	%rbp, %r11
	jne	.LBB1_78
# %bb.79:                               # %if.then745
                                        #   in Loop: Header=BB1_44 Depth=1
	movq	%r11, 16(%rsp)                  # 8-byte Spill
	movq	64(%r15), %rdx
	movl	124(%r15), %ecx
	movq	216(%rsp), %rax                 # 8-byte Reload
	movq	40(%rsp), %rsi                  # 8-byte Reload
	leal	(%rsi,%rax), %r9d
	movq	%rbx, %rdi
	movl	$8, %esi
	movl	224(%rsp), %r12d                # 4-byte Reload
	movl	%r12d, %r8d
	movl	%r9d, 236(%rsp)                 # 4-byte Spill
	pushq	176(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	192(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	*32632(%r13)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	%r15, %rbp
	movq	24(%r15), %r8
	movq	112(%r8), %rax
	testq	%rax, %rax
	je	.LBB1_81
# %bb.80:                               # %if.then761
                                        #   in Loop: Header=BB1_44 Depth=1
	addq	$64, %r8
	movq	%rbx, %rdi
	movl	$8, %esi
	movq	%rbx, %rdx
	movl	$8, %ecx
	movl	52(%rsp), %r9d                  # 4-byte Reload
	movq	160(%rsp), %r10                 # 8-byte Reload
	callq	*(%rax,%r10,8)
.LBB1_81:                               # %if.end779
                                        #   in Loop: Header=BB1_44 Depth=1
	movq	%rbp, %r15
	movq	96(%rbp), %rdi
	movl	$16, %esi
	movq	%rbx, %rdx
	movl	$8, %ecx
	movq	168(%rsp), %rax                 # 8-byte Reload
	callq	*31816(%r13,%rax,8)
	addl	%eax, %r14d
	movq	16(%rsp), %r11                  # 8-byte Reload
	cmpl	%r11d, %r14d
	jge	.LBB1_82
# %bb.83:                               # %if.then792
                                        #   in Loop: Header=BB1_44 Depth=1
	movq	72(%r15), %rdx
	movl	124(%r15), %ecx
	movq	%rbx, %rdi
	movl	$8, %esi
	movl	%r12d, %r8d
	movl	236(%rsp), %r9d                 # 4-byte Reload
	pushq	176(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	192(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	*32632(%r13)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	24(%r15), %r8
	movq	176(%r8), %rax
	testq	%rax, %rax
	je	.LBB1_85
# %bb.84:                               # %if.then808
                                        #   in Loop: Header=BB1_44 Depth=1
	subq	$-128, %r8
	movq	%rbx, %rdi
	movl	$8, %esi
	movq	%rbx, %rdx
	movl	$8, %ecx
	movl	52(%rsp), %r9d                  # 4-byte Reload
	movq	160(%rsp), %r10                 # 8-byte Reload
	callq	*(%rax,%r10,8)
.LBB1_85:                               # %if.end826
                                        #   in Loop: Header=BB1_44 Depth=1
	movq	104(%r15), %rdi
	movl	$16, %esi
	movq	%rbx, %rdx
	movl	$8, %ecx
	movq	168(%rsp), %rax                 # 8-byte Reload
	callq	*31816(%r13,%rax,8)
	addl	%eax, %r14d
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movq	16(%rsp), %r11                  # 8-byte Reload
	jmp	.LBB1_86
	.p2align	4, 0x90
.LBB1_78:                               #   in Loop: Header=BB1_44 Depth=1
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movl	32(%rsp), %eax                  # 4-byte Reload
	movl	224(%rsp), %r12d                # 4-byte Reload
	jmp	.LBB1_87
.LBB1_82:                               #   in Loop: Header=BB1_44 Depth=1
	movq	24(%rsp), %rbx                  # 8-byte Reload
.LBB1_86:                               # %if.end838
                                        #   in Loop: Header=BB1_44 Depth=1
	movl	32(%rsp), %eax                  # 4-byte Reload
.LBB1_87:                               # %if.end838
                                        #   in Loop: Header=BB1_44 Depth=1
	movq	128(%rsp), %r8                  # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8 def $r8
	cmpl	%r11d, %r14d
	movq	96(%rsp), %r10                  # 8-byte Reload
	movl	152(%rsp), %ecx                 # 4-byte Reload
	jge	.LBB1_89
# %bb.88:                               # %if.then841
                                        #   in Loop: Header=BB1_44 Depth=1
	movl	$2, %ecx
	movl	%r14d, %r11d
	movq	40(%rsp), %rbx                  # 8-byte Reload
                                        # kill: def $ebx killed $ebx killed $rbx def $rbx
	movl	%r12d, %r8d
.LBB1_89:                               # %if.end844
                                        #   in Loop: Header=BB1_44 Depth=1
	cmpl	$0, 116(%rsp)                   # 4-byte Folded Reload
	jne	.LBB1_90
# %bb.91:                               # %if.end844
                                        #   in Loop: Header=BB1_44 Depth=1
	cmpl	$2, %eax
	movl	%ecx, %eax
	movq	128(%rsp), %r14                 # 8-byte Reload
	jne	.LBB1_92
# %bb.103:                              # %if.end983
                                        #   in Loop: Header=BB1_44 Depth=1
	cmpl	40(%rsp), %ebx                  # 4-byte Folded Reload
	je	.LBB1_104
	jmp	.LBB1_43
.LBB1_90:                               #   in Loop: Header=BB1_44 Depth=1
	movq	128(%rsp), %r14                 # 8-byte Reload
.LBB1_92:                               # %if.then849
                                        #   in Loop: Header=BB1_44 Depth=1
	movl	%ecx, 152(%rsp)                 # 4-byte Spill
	movq	%r8, 32(%rsp)                   # 8-byte Spill
	movq	%r11, 16(%rsp)                  # 8-byte Spill
	movl	$16, 64(%rsp)
	movl	120(%r15), %ecx
	leal	1(%r14), %r12d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	248(%rsp), %rbp
	movq	%rbp, %rdi
	leaq	72(%rsp), %rsi
	movq	128(%rsp), %rdx                 # 8-byte Reload
	movl	%r12d, %r8d
	movq	48(%rsp), %r9                   # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	pushq	24(%r15)
	.cfi_adjust_cfa_offset 8
	pushq	216(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	*32624(%r13)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	88(%r15), %rdi
	movl	64(%rsp), %ecx
	movl	$16, %esi
	movq	%rax, %rdx
	movq	88(%rsp), %rax                  # 8-byte Reload
	callq	*31872(%r13,%rax,8)
	movq	16(%rsp), %r11                  # 8-byte Reload
	movslq	%r14d, %rcx
	movq	136(%rsp), %rdx                 # 8-byte Reload
	movzwl	2(%rdx,%rcx,2), %ecx
	movq	144(%rsp), %rdx                 # 8-byte Reload
	movq	192(%rsp), %rsi                 # 8-byte Reload
	movzwl	(%rdx,%rsi,2), %r14d
	addl	%ecx, %r14d
	addl	%eax, %r14d
	cmpl	%r11d, %r14d
	setl	%al
	andb	15(%rsp), %al                   # 1-byte Folded Reload
	cmpb	$1, %al
	jne	.LBB1_100
# %bb.93:                               # %if.then884
                                        #   in Loop: Header=BB1_44 Depth=1
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	movq	64(%r15), %rdx
	movl	124(%r15), %ecx
	movq	216(%rsp), %rax                 # 8-byte Reload
	movq	40(%rsp), %rsi                  # 8-byte Reload
	leal	(%rsi,%rax), %ebx
	movq	%rbp, %rdi
	movl	$8, %esi
	movl	%r12d, %r8d
	movl	%ebx, %r9d
	pushq	176(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	192(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	*32632(%r13)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	24(%r15), %r8
	movq	112(%r8), %rax
	testq	%rax, %rax
	je	.LBB1_95
# %bb.94:                               # %if.then900
                                        #   in Loop: Header=BB1_44 Depth=1
	addq	$64, %r8
	movq	%rbp, %rdi
	movl	$8, %esi
	movq	%rbp, %rdx
	movl	$8, %ecx
	movl	52(%rsp), %r9d                  # 4-byte Reload
	movq	160(%rsp), %r10                 # 8-byte Reload
	callq	*(%rax,%r10,8)
.LBB1_95:                               # %if.end918
                                        #   in Loop: Header=BB1_44 Depth=1
	movq	96(%r15), %rdi
	movl	$16, %esi
	movq	%rbp, %rdx
	movl	$8, %ecx
	movq	168(%rsp), %rax                 # 8-byte Reload
	callq	*31816(%r13,%rax,8)
	addl	%eax, %r14d
	movq	16(%rsp), %r11                  # 8-byte Reload
	cmpl	%r11d, %r14d
	jge	.LBB1_96
# %bb.97:                               # %if.then931
                                        #   in Loop: Header=BB1_44 Depth=1
	movq	72(%r15), %rdx
	movl	124(%r15), %ecx
	movq	%rbp, %rdi
	movl	$8, %esi
	movl	%r12d, %r8d
	movl	%ebx, %r9d
	pushq	176(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	192(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	*32632(%r13)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	24(%r15), %r8
	movq	176(%r8), %rax
	testq	%rax, %rax
	je	.LBB1_99
# %bb.98:                               # %if.then947
                                        #   in Loop: Header=BB1_44 Depth=1
	subq	$-128, %r8
	movq	%rbp, %rdi
	movl	$8, %esi
	movq	%rbp, %rdx
	movl	$8, %ecx
	movl	52(%rsp), %r9d                  # 4-byte Reload
	movq	160(%rsp), %r10                 # 8-byte Reload
	callq	*(%rax,%r10,8)
.LBB1_99:                               # %if.end965
                                        #   in Loop: Header=BB1_44 Depth=1
	movq	104(%r15), %rdi
	movl	$16, %esi
	movq	%rbp, %rdx
	movl	$8, %ecx
	movq	168(%rsp), %rax                 # 8-byte Reload
	callq	*31816(%r13,%rax,8)
	addl	%eax, %r14d
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movq	16(%rsp), %r11                  # 8-byte Reload
	jmp	.LBB1_100
.LBB1_96:                               #   in Loop: Header=BB1_44 Depth=1
	movq	24(%rsp), %rbx                  # 8-byte Reload
.LBB1_100:                              # %if.end977
                                        #   in Loop: Header=BB1_44 Depth=1
	cmpl	%r11d, %r14d
	movq	96(%rsp), %r10                  # 8-byte Reload
	movq	32(%rsp), %r8                   # 8-byte Reload
	movl	152(%rsp), %eax                 # 4-byte Reload
	jge	.LBB1_102
# %bb.101:                              # %if.then980
                                        #   in Loop: Header=BB1_44 Depth=1
	movl	$3, %eax
	movl	%r14d, %r11d
	movq	40(%rsp), %rbx                  # 8-byte Reload
                                        # kill: def $ebx killed $ebx killed $rbx def $rbx
	movl	%r12d, %r8d
.LBB1_102:                              # %if.end982
                                        #   in Loop: Header=BB1_44 Depth=1
	movq	128(%rsp), %r14                 # 8-byte Reload
	cmpl	40(%rsp), %ebx                  # 4-byte Folded Reload
	jne	.LBB1_43
.LBB1_104:                              # %if.end983
                                        #   in Loop: Header=BB1_44 Depth=1
	cmpl	%r14d, %r8d
	jne	.LBB1_43
.LBB1_45:
	movq	40(%rsp), %rbx                  # 8-byte Reload
                                        # kill: def $ebx killed $ebx killed $rbx def $rbx
	movl	%r14d, %r8d
	jmp	.LBB1_110
.LBB1_105:                              # %if.else1000
	cmpl	16460(%r13), %ebx
	jle	.LBB1_110
# %bb.106:                              # %land.lhs.true1006
	cmpl	16468(%r13), %ebx
	jge	.LBB1_110
# %bb.107:                              # %land.lhs.true1012
	cmpl	16456(%r13), %r8d
	jle	.LBB1_110
# %bb.108:                              # %land.lhs.true1018
	cmpl	16464(%r13), %r8d
	jge	.LBB1_110
# %bb.109:                              # %if.then1024
	leaq	32(%r15), %rdx
	movq	%rdx, 104(%rsp)                 # 8-byte Spill
	movl	120(%r15), %ecx
	leal	-1(%rbx), %ebp
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	248(%rsp), %rdi
	movl	$64, %esi
	movq	%r8, 40(%rsp)                   # 8-byte Spill
	movq	40(%rsp), %r8                   # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	movl	%ebp, %r9d
	pushq	24(%r15)
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	movq	%r10, %r14
	movq	%r11, 48(%rsp)                  # 8-byte Spill
	callq	*32616(%r13)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	leaq	256(%rsp), %rdi
	movl	120(%r15), %ecx
	leal	1(%rbx), %r9d
	movl	%r9d, 40(%rsp)                  # 4-byte Spill
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$64, %esi
	movq	112(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, %rdx
	movq	40(%rsp), %r8                   # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	pushq	24(%r15)
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	*32616(%r13)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	leaq	272(%rsp), %rdi
	movl	120(%r15), %ecx
	movq	32(%rsp), %rax                  # 8-byte Reload
	leal	-1(%rax), %r8d
	movl	%r8d, 96(%rsp)                  # 4-byte Spill
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$64, %esi
	movq	%rbx, %rdx
	movq	32(%rsp), %rbx                  # 8-byte Reload
	movl	%ebx, %r9d
	movq	64(%rsp), %rax                  # 8-byte Reload
	pushq	24(%rax)
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	movq	%r14, %r15
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	*32616(%r13)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	leaq	288(%rsp), %r14
	movq	56(%rsp), %rax                  # 8-byte Reload
	movl	120(%rax), %ecx
	movq	%r12, %r10
	movq	32(%rsp), %rax                  # 8-byte Reload
	leal	1(%rax), %r12d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%r14, %rdi
	movl	$64, %esi
	movq	112(%rsp), %rdx                 # 8-byte Reload
	movl	%r12d, %r8d
	movl	%ebx, %r9d
	movq	64(%rsp), %rax                  # 8-byte Reload
	pushq	24(%rax)
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	callq	*32616(%r13)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	88(%rax), %rdi
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	72(%rsp), %rax
	leaq	248(%rsp), %rsi
	leaq	264(%rsp), %rdx
	leaq	280(%rsp), %rcx
	movq	%r14, %r8
	movl	$64, %r9d
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	movq	104(%rsp), %rax                 # 8-byte Reload
	callq	*32040(%r13,%rax,8)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movslq	32(%rsp), %rax                  # 4-byte Folded Reload
	movq	136(%rsp), %r9                  # 8-byte Reload
	movzwl	(%r9,%rax,2), %ecx
	movl	64(%rsp), %edx
	addl	%ecx, %edx
	movslq	%ebx, %rsi
	movq	144(%rsp), %r8                  # 8-byte Reload
	movzwl	-2(%r8,%rsi,2), %edi
	addl	%edx, %edi
	movq	16(%rsp), %rdx                  # 8-byte Reload
	cmpl	%edx, %edi
	cmovgel	%edx, %edi
	cmovgel	%ebx, %ebp
	addl	68(%rsp), %ecx
	movzwl	2(%r8,%rsi,2), %edx
	addl	%ecx, %edx
	cmpl	%edi, %edx
	cmovgel	%edi, %edx
	cmovll	40(%rsp), %ebp                  # 4-byte Folded Reload
	movzwl	-2(%r9,%rax,2), %ecx
	addl	72(%rsp), %ecx
	movzwl	(%r8,%rsi,2), %r11d
	movq	32(%rsp), %r8                   # 8-byte Reload
	addl	%r11d, %ecx
	cmpl	%edx, %ecx
	movl	%edx, %esi
	cmovll	%ecx, %esi
	movzwl	2(%r9,%rax,2), %eax
	addl	76(%rsp), %r11d
	addl	%eax, %r11d
	cmpl	%esi, %r11d
	cmovll	%ebx, %ebp
	cmpl	%edx, %ecx
	cmovll	96(%rsp), %r8d                  # 4-byte Folded Reload
	movq	56(%rsp), %r15                  # 8-byte Reload
	cmovll	%ebx, %ebp
	cmpl	%esi, %r11d
	cmovgel	%esi, %r11d
	cmovll	%r12d, %r8d
	movl	%ebp, %ebx
.LBB1_110:                              # %if.end1185
	movl	%r11d, 136(%r15)
	movw	%r8w, 140(%r15)
	movw	%bx, 142(%r15)
	movslq	%r8d, %rax
	movq	136(%rsp), %rcx                 # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	movslq	%ebx, %rcx
	movq	144(%rsp), %rdx                 # 8-byte Reload
	movzwl	(%rdx,%rcx,2), %ecx
	addl	%eax, %ecx
	movl	%ecx, 132(%r15)
.LBB1_111:                              # %cleanup1200
	addq	$1400, %rsp                     # imm = 0x578
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
	.size	refine_subpel, .Lfunc_end1-refine_subpel
	.cfi_endproc
                                        # -- End function
	.globl	x264_me_refine_qpel             # -- Begin function x264_me_refine_qpel
	.p2align	4, 0x90
	.type	x264_me_refine_qpel,@function
x264_me_refine_qpel:                    # @x264_me_refine_qpel
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	16408(%rdi), %rax
	movzbl	subpel_iterations(,%rax,4), %edx
	movzbl	subpel_iterations+1(,%rax,4), %ecx
	cmpl	$3, (%rsi)
	jg	.LBB2_2
# %bb.1:                                # %if.then
	movl	16(%rsi), %eax
	subl	%eax, 136(%rsi)
.LBB2_2:                                # %if.end
	xorl	%r8d, %r8d
	movl	$1, %r9d
	jmp	refine_subpel                   # TAILCALL
.Lfunc_end2:
	.size	x264_me_refine_qpel, .Lfunc_end2-x264_me_refine_qpel
	.cfi_endproc
                                        # -- End function
	.globl	x264_me_refine_qpel_refdupe     # -- Begin function x264_me_refine_qpel_refdupe
	.p2align	4, 0x90
	.type	x264_me_refine_qpel_refdupe,@function
x264_me_refine_qpel_refdupe:            # @x264_me_refine_qpel_refdupe
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdx, %r8
	movslq	16408(%rdi), %rax
	leaq	-8(%rax), %rdx
	movl	$2, %ecx
	cmpq	$3, %rdx
	jb	.LBB3_2
# %bb.1:                                # %cond.false
	movzbl	subpel_iterations+3(,%rax,4), %ecx
.LBB3_2:                                # %cond.end
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	jmp	refine_subpel                   # TAILCALL
.Lfunc_end3:
	.size	x264_me_refine_qpel_refdupe, .Lfunc_end3-x264_me_refine_qpel_refdupe
	.cfi_endproc
                                        # -- End function
	.globl	x264_me_refine_bidir_satd       # -- Begin function x264_me_refine_bidir_satd
	.p2align	4, 0x90
	.type	x264_me_refine_bidir_satd,@function
x264_me_refine_bidir_satd:              # @x264_me_refine_bidir_satd
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$0, (%rsp)
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	x264_me_refine_bidir
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	x264_me_refine_bidir_satd, .Lfunc_end4-x264_me_refine_bidir_satd
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_me_refine_bidir
	.type	x264_me_refine_bidir,@function
x264_me_refine_bidir:                   # @x264_me_refine_bidir
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
	subq	$7960, %rsp                     # imm = 0x1F18
	.cfi_def_cfa_offset 8016
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, 124(%rsp)                 # 4-byte Spill
                                        # kill: def $r8d killed $r8d def $r8
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rcx, 152(%rsp)                 # 8-byte Spill
	movq	%rdx, %r14
	leal	(,%r8,4), %eax
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	cltq
	movslq	x264_scan8(,%rax,4), %rax
	movsbl	25120(%rdi,%rax), %edx
	movq	%rax, 216(%rsp)                 # 8-byte Spill
	movsbl	25160(%rdi,%rax), %eax
	movl	16436(%rdi), %ecx
	movl	$0, 52(%rsp)                    # 4-byte Folded Spill
	movl	$0, 48(%rsp)                    # 4-byte Folded Spill
	testl	%edx, %ecx
	je	.LBB5_2
# %bb.1:                                # %cond.true
	movl	16388(%rdi), %edx
	andl	$1, %edx
	leal	-2(,%rdx,4), %edx
	movl	%edx, 48(%rsp)                  # 4-byte Spill
.LBB5_2:                                # %cond.end
	testl	%eax, %ecx
	je	.LBB5_4
# %bb.3:                                # %cond.true78
	movl	16388(%rdi), %eax
	andl	$1, %eax
	leal	-2(,%rax,4), %eax
	movl	%eax, 52(%rsp)                  # 4-byte Spill
.LBB5_4:                                # %cond.end85
	movswl	142(%rsi), %r13d
	movswl	142(%r14), %ebp
	movl	16460(%rdi), %eax
	addl	$8, %eax
	cmpl	%r13d, %eax
	setg	%cl
	cmpl	%ebp, %eax
	setg	%al
	orb	%cl, %al
	jne	.LBB5_121
# %bb.5:                                # %lor.lhs.false109
	movl	16468(%rdi), %eax
	addl	$-8, %eax
	cmpl	%r13d, %eax
	setl	%cl
	cmpl	%ebp, %eax
	setl	%al
	orb	%cl, %al
	jne	.LBB5_121
# %bb.6:                                # %lor.lhs.false122
	movswl	140(%rsi), %edx
	movswl	140(%r14), %r12d
	movl	16456(%rdi), %eax
	addl	$8, %eax
	cmpl	%edx, %eax
	setg	%cl
	cmpl	%r12d, %eax
	setg	%al
	orb	%cl, %al
	jne	.LBB5_121
# %bb.7:                                # %lor.lhs.false136
	movl	16464(%rdi), %eax
	addl	$-8, %eax
	cmpl	%edx, %eax
	setl	%cl
	cmpl	%r12d, %eax
	setl	%al
	orb	%cl, %al
	jne	.LBB5_121
# %bb.8:                                # %if.end
	movl	%edx, 12(%rsp)                  # 4-byte Spill
	movl	%r12d, 8(%rsp)                  # 4-byte Spill
	movl	%r8d, %eax
	sarl	%eax
	movl	%eax, %ecx
	shll	$8, %ecx
	movl	%r8d, %edx
	andl	$1, %edx
	shll	$7, %eax
	leal	(%rcx,%rdx,8), %ecx
	movq	%rdx, 176(%rsp)                 # 8-byte Spill
	leal	(%rax,%rdx,4), %eax
	movslq	(%rsi), %r12
	movslq	%ecx, %rcx
	movslq	%eax, %rdx
	movl	x264_pixel_size(,%r12,8), %r15d
	movl	x264_pixel_size+4(,%r12,8), %eax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	addq	21392(%rdi), %rcx
	movq	%rcx, 272(%rsp)                 # 8-byte Spill
	movq	21400(%rdi), %rax
	addq	%rdx, %rax
	movq	%rax, 200(%rsp)                 # 8-byte Spill
	addq	21408(%rdi), %rdx
	movq	%rdx, 208(%rsp)                 # 8-byte Spill
	cmpl	$0, 8016(%rsp)
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	movq	%r8, 184(%rsp)                  # 8-byte Spill
	movq	%r15, 64(%rsp)                  # 8-byte Spill
	movq	%r12, 144(%rsp)                 # 8-byte Spill
	je	.LBB5_11
# %bb.9:                                # %land.lhs.true
	testl	%r12d, %r12d
	sete	%al
	testl	%r8d, %r8d
	sete	%cl
	orb	%al, %cl
	jne	.LBB5_11
# %bb.10:                               # %if.then157
	movl	%r15d, %ebx
	sarl	$2, %ebx
	leaq	128(%rsi), %r8
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	%rsi, %r12
	xorl	%esi, %esi
	movl	44(%rsp), %r15d                 # 4-byte Reload
	movl	%r15d, %edx
	movl	%ebx, %ecx
	callq	x264_mb_predict_mv@PLT
	leaq	128(%r14), %r8
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movl	$1, %esi
	movl	%r15d, %edx
	movq	64(%rsp), %r15                  # 8-byte Reload
	movl	%ebx, %ecx
	callq	x264_mb_predict_mv@PLT
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	%r12, %rsi
	movq	144(%rsp), %r12                 # 8-byte Reload
.LBB5_11:                               # %if.end164
	leaq	25200(%rdi), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rcx
	movswq	128(%rsi), %rax
	addq	%rax, %rax
	movq	%rcx, %rdx
	subq	%rax, %rdx
	movq	%rdx, 256(%rsp)                 # 8-byte Spill
	movswq	130(%rsi), %rax
	addq	%rax, %rax
	subq	%rax, %rcx
	movq	%rcx, 264(%rsp)                 # 8-byte Spill
	movq	8(%r14), %rcx
	movswq	128(%r14), %rax
	addq	%rax, %rax
	movq	%rcx, %rdx
	subq	%rax, %rdx
	movq	%rdx, 240(%rsp)                 # 8-byte Spill
	movswq	130(%r14), %rax
	addq	%rax, %rax
	subq	%rax, %rcx
	movq	%rcx, 248(%rsp)                 # 8-byte Spill
	movq	%rdi, %rax
	leaq	528(%rsp), %rdi
	movq	%rsi, %rbx
	movl	$512, %esi                      # imm = 0x200
	callq	*32824(%rax)
	movq	%rbx, 104(%rsp)                 # 8-byte Spill
	leaq	32(%rbx), %rax
	movq	%rax, 232(%rsp)                 # 8-byte Spill
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	sarl	%r15d
	movq	%r15, 96(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	sarl	%eax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	%r14, 128(%rsp)                 # 8-byte Spill
	leaq	32(%r14), %rax
	movq	%rax, 224(%rsp)                 # 8-byte Spill
	leal	3(%r12), %eax
	cltq
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	movl	$0, 36(%rsp)                    # 4-byte Folded Spill
	movabsq	$1152921504606846976, %rax      # imm = 0x1000000000000000
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	movl	$1, %eax
	movl	$268435456, %ecx                # imm = 0x10000000
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movl	$1, %edx
	movl	%ebp, %r11d
	movl	8(%rsp), %r10d                  # 4-byte Reload
	.p2align	4, 0x90
.LBB5_12:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_14 Depth 2
                                        #     Child Loop BB5_20 Depth 2
                                        #     Child Loop BB5_24 Depth 2
	movl	%r13d, 40(%rsp)                 # 4-byte Spill
	testl	%eax, %eax
	setne	%al
	movslq	x264_iter_kludge(%rip), %r14
	cmpq	$9, %r14
	setl	%cl
	andb	%al, %cl
	cmpb	$1, %cl
	movl	%r11d, 28(%rsp)                 # 4-byte Spill
	movl	%r10d, 8(%rsp)                  # 4-byte Spill
	jne	.LBB5_18
# %bb.13:                               # %for.body198.preheader
                                        #   in Loop: Header=BB5_12 Depth=1
	movl	%edx, 112(%rsp)                 # 4-byte Spill
	incq	%r14
	jmp	.LBB5_14
	.p2align	4, 0x90
.LBB5_16:                               # %if.end263
                                        #   in Loop: Header=BB5_14 Depth=2
	movq	%r14, %rax
	incq	%rax
	cmpl	$9, %r14d
	movq	%rax, %r14
	je	.LBB5_17
.LBB5_14:                               # %for.body198
                                        #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	square1-2(%r14,%r14), %r12d
	leal	(%r12,%r12,2), %eax
	movsbl	square1-1(%r14,%r14), %ebx
	addl	%ebx, %eax
	movslq	%eax, %r13
	leaq	4(%r13), %r15
	addl	12(%rsp), %r12d                 # 4-byte Folded Reload
	addl	40(%rsp), %ebx                  # 4-byte Folded Reload
	leaq	(%rsp,%r13,4), %rsi
	addq	$320, %rsi                      # imm = 0x140
	movq	64(%rsp), %r10                  # 8-byte Reload
	movl	%r10d, 320(%rsp,%r13,4)
	movq	%r15, %rax
	shlq	$8, %rax
	leaq	(%rsp,%rax), %rdi
	addq	$3344, %rdi                     # imm = 0xD10
	movq	104(%rsp), %rbp                 # 8-byte Reload
	movl	120(%rbp), %ecx
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	240(%rsp), %rdx                 # 8-byte Reload
	movl	%r12d, %r8d
	movl	%ebx, %r9d
	pushq	weight_none@GOTPCREL(%rip)
	.cfi_adjust_cfa_offset 8
	pushq	88(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	movq	48(%rsp), %rax                  # 8-byte Reload
	callq	*32624(%rax)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	%rax, 416(%rsp,%r13,8)
	cmpl	$0, 8016(%rsp)
	je	.LBB5_16
# %bb.15:                               # %if.then237
                                        #   in Loop: Header=BB5_14 Depth=2
	shlq	$6, %r15
	leaq	(%rsp,%r15), %rdi
	addq	$2192, %rdi                     # imm = 0x890
	movq	64(%rbp), %rdx
	movl	124(%rbp), %ecx
	addl	48(%rsp), %ebx                  # 4-byte Folded Reload
	movl	$8, %esi
	movl	%r12d, %r8d
	movl	%ebx, %r9d
	pushq	88(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	104(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	32(%rsp), %r13                  # 8-byte Reload
	callq	*32632(%r13)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	leaq	(%rsp,%r15), %rdi
	addq	$1040, %rdi                     # imm = 0x410
	movq	72(%rbp), %rdx
	movl	124(%rbp), %ecx
	movl	$8, %esi
	movl	%r12d, %r8d
	movl	%ebx, %r9d
	pushq	88(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	104(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	*32632(%r13)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB5_16
	.p2align	4, 0x90
.LBB5_17:                               # %if.end264.loopexit
                                        #   in Loop: Header=BB5_12 Depth=1
	movl	x264_iter_kludge(%rip), %r14d
	movl	28(%rsp), %r11d                 # 4-byte Reload
	movl	8(%rsp), %r10d                  # 4-byte Reload
	movl	112(%rsp), %edx                 # 4-byte Reload
.LBB5_18:                               # %if.end264
                                        #   in Loop: Header=BB5_12 Depth=1
	testl	%edx, %edx
	setne	%al
	cmpl	$9, %r14d
	setl	%cl
	andb	%al, %cl
	cmpb	$1, %cl
	movq	128(%rsp), %rbp                 # 8-byte Reload
	jne	.LBB5_23
# %bb.19:                               # %for.body272.preheader
                                        #   in Loop: Header=BB5_12 Depth=1
	movslq	%r14d, %r14
	incq	%r14
	jmp	.LBB5_20
	.p2align	4, 0x90
.LBB5_22:                               # %if.end346
                                        #   in Loop: Header=BB5_20 Depth=2
	movq	%r14, %rax
	incq	%rax
	cmpl	$9, %r14d
	movq	%rax, %r14
	movl	28(%rsp), %r11d                 # 4-byte Reload
	movl	8(%rsp), %r10d                  # 4-byte Reload
	je	.LBB5_23
.LBB5_20:                               # %for.body272
                                        #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	square1-2(%r14,%r14), %r12d
	leal	(%r12,%r12,2), %eax
	movsbl	square1-1(%r14,%r14), %ebx
	addl	%ebx, %eax
	movslq	%eax, %r15
	leaq	4(%r15), %r13
	addl	%r10d, %r12d
	addl	%r11d, %ebx
	leaq	340(%rsp), %rax
	leaq	(%rax,%r15,4), %rsi
	addq	$16, %rsi
	movq	64(%rsp), %rax                  # 8-byte Reload
	movl	%eax, 356(%rsp,%r15,4)
	movq	%r13, %rdi
	shlq	$8, %rdi
	leaq	5648(%rsp), %rcx
	addq	%rcx, %rdi
	movl	120(%rbp), %ecx
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	232(%rsp), %rdx                 # 8-byte Reload
	movl	%r12d, %r8d
	movl	%ebx, %r9d
	pushq	weight_none@GOTPCREL(%rip)
	.cfi_adjust_cfa_offset 8
	pushq	88(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	movq	48(%rsp), %rax                  # 8-byte Reload
	callq	*32624(%rax)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	%rax, 488(%rsp,%r15,8)
	cmpl	$0, 8016(%rsp)
	je	.LBB5_22
# %bb.21:                               # %if.then319
                                        #   in Loop: Header=BB5_20 Depth=2
	shlq	$6, %r13
	leaq	2768(%rsp), %rax
	leaq	(%rax,%r13), %rdi
	movq	64(%rbp), %rdx
	movl	124(%rbp), %ecx
	addl	52(%rsp), %ebx                  # 4-byte Folded Reload
	movl	$8, %esi
	movl	%r12d, %r8d
	movl	%ebx, %r9d
	pushq	88(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	104(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	32(%rsp), %r15                  # 8-byte Reload
	callq	*32632(%r15)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	leaq	1616(%rsp), %rax
	addq	%rax, %r13
	movq	72(%rbp), %rdx
	movl	124(%rbp), %ecx
	movq	%r13, %rdi
	movl	$8, %esi
	movl	%r12d, %r8d
	movl	%ebx, %r9d
	pushq	88(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	104(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	*32632(%r15)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB5_22
	.p2align	4, 0x90
.LBB5_23:                               # %if.end350
                                        #   in Loop: Header=BB5_12 Depth=1
	xorl	%r12d, %r12d
	cmpl	$0, 36(%rsp)                    # 4-byte Folded Reload
	setne	%r12b
	movl	$0, 32(%rsp)                    # 4-byte Folded Spill
	movl	40(%rsp), %r13d                 # 4-byte Reload
	movl	12(%rsp), %edx                  # 4-byte Reload
	jmp	.LBB5_24
	.p2align	4, 0x90
.LBB5_45:                               # %if.else
                                        #   in Loop: Header=BB5_24 Depth=2
	movq	80(%rsp), %rcx                  # 8-byte Reload
	cmpl	%ecx, %eax
	movl	32(%rsp), %edx                  # 4-byte Reload
	cmovll	%r12d, %edx
	movl	%edx, 32(%rsp)                  # 4-byte Spill
	cmovll	%eax, %ecx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
.LBB5_46:                               # %if.end519
                                        #   in Loop: Header=BB5_24 Depth=2
	movl	28(%rsp), %r11d                 # 4-byte Reload
.LBB5_47:                               # %if.end519
                                        #   in Loop: Header=BB5_24 Depth=2
	movl	8(%rsp), %r10d                  # 4-byte Reload
	incq	%r12
	cmpq	$33, %r12
	movl	40(%rsp), %r13d                 # 4-byte Reload
	movl	12(%rsp), %edx                  # 4-byte Reload
	je	.LBB5_26
.LBB5_24:                               # %for.body358
                                        #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbq	x264_me_refine_bidir.dia4d(,%r12,4), %rax
	movslq	%edx, %rbx
	addq	%rax, %rbx
	movsbq	x264_me_refine_bidir.dia4d+1(,%r12,4), %rbp
	movslq	%r13d, %r14
	addq	%rbp, %r14
	movsbq	x264_me_refine_bidir.dia4d+2(,%r12,4), %rdx
	movslq	%r10d, %r15
	addq	%rdx, %r15
	movsbq	x264_me_refine_bidir.dia4d+3(,%r12,4), %r10
	movslq	%r11d, %r13
	addq	%r10, %r13
	cmpl	$0, 36(%rsp)                    # 4-byte Folded Reload
	movq	%r10, 112(%rsp)                 # 8-byte Spill
	je	.LBB5_25
# %bb.40:                               # %lor.lhs.false380
                                        #   in Loop: Header=BB5_24 Depth=2
	movl	%ebx, %esi
	andl	$7, %esi
	movl	%r14d, %edi
	andl	$7, %edi
	movl	%r15d, %r8d
	andl	$7, %r8d
	movl	%esi, %ecx
	shll	$6, %ecx
	addq	%rsp, %rcx
	addq	$528, %rcx                      # imm = 0x210
	leaq	(%rcx,%rdi,8), %r10
	movl	%r13d, %ecx
	andb	$7, %cl
	movl	$1, %r9d
	shll	%cl, %r9d
	movzbl	(%r8,%r10), %ecx
	movl	%r13d, %r10d
	andl	$7, %r10d
	btl	%r10d, %ecx
	jb	.LBB5_47
# %bb.41:                               #   in Loop: Header=BB5_24 Depth=2
	movq	%rbx, 168(%rsp)                 # 8-byte Spill
	movq	%r15, 160(%rsp)                 # 8-byte Spill
	movq	112(%rsp), %r10                 # 8-byte Reload
	jmp	.LBB5_42
	.p2align	4, 0x90
.LBB5_25:                               # %for.body358.if.then395_crit_edge
                                        #   in Loop: Header=BB5_24 Depth=2
	movl	%r13d, %ecx
	andb	$7, %cl
	movl	$1, %r9d
	shll	%cl, %r9d
	movl	%ebx, %esi
	andl	$7, %esi
	movl	%r14d, %edi
	andl	$7, %edi
	movl	%r15d, %r8d
	andl	$7, %r8d
	movq	%rbx, 168(%rsp)                 # 8-byte Spill
	movq	%r15, 160(%rsp)                 # 8-byte Spill
.LBB5_42:                               # %if.then395
                                        #   in Loop: Header=BB5_24 Depth=2
	leaq	(%rax,%rax,2), %rcx
	movq	%rbp, 296(%rsp)                 # 8-byte Spill
	movq	%rcx, 288(%rsp)                 # 8-byte Spill
	leaq	(%rcx,%rbp), %rax
	leaq	(%rdx,%rdx,2), %rdx
	movq	%rdx, 280(%rsp)                 # 8-byte Spill
	addq	%rdx, %r10
	shll	$6, %esi
	leaq	(%rsp,%rsi), %rcx
	addq	$528, %rcx                      # imm = 0x210
	leaq	(%rcx,%rdi,8), %rcx
	orb	%r9b, (%r8,%rcx)
	movq	416(%rsp,%rax,8), %rdx
	movl	320(%rsp,%rax,4), %ecx
	movq	488(%rsp,%r10,8), %r8
	movl	356(%rsp,%r10,4), %r9d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	280(%rsp), %rbp                 # 8-byte Reload
	movq	%rbp, %rdi
	movl	$32, %esi
	pushq	160(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	32(%rsp), %rbx                  # 8-byte Reload
	movq	160(%rsp), %r15                 # 8-byte Reload
	callq	*32640(%rbx,%r15,8)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	88(%rax), %rdi
	movl	$16, %esi
	movq	%rbp, %rdx
	movl	$32, %ecx
	callq	*31816(%rbx,%r15,8)
	movq	256(%rsp), %rcx                 # 8-byte Reload
	movq	168(%rsp), %rdi                 # 8-byte Reload
	movzwl	(%rcx,%rdi,2), %ecx
	addl	%eax, %ecx
	movq	264(%rsp), %rax                 # 8-byte Reload
	movzwl	(%rax,%r14,2), %eax
	movq	240(%rsp), %rdx                 # 8-byte Reload
	movq	160(%rsp), %r8                  # 8-byte Reload
	movzwl	(%rdx,%r8,2), %edx
	addl	%eax, %edx
	addl	%ecx, %edx
	movq	248(%rsp), %rax                 # 8-byte Reload
	movzwl	(%rax,%r13,2), %eax
	addl	%edx, %eax
	cmpl	$0, 8016(%rsp)
	je	.LBB5_45
# %bb.43:                               # %if.then467
                                        #   in Loop: Header=BB5_24 Depth=2
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movl	%esi, %ecx
	shll	$4, %ecx
	movl	%esi, %edx
	addl	%ecx, %edx
	leal	15(%rsi,%rcx), %ecx
	cmovnsl	%edx, %ecx
	sarl	$4, %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_46
# %bb.44:                               # %if.then471
                                        #   in Loop: Header=BB5_24 Depth=2
	movq	296(%rsp), %rcx                 # 8-byte Reload
	movq	288(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rcx,%rdx), %rbp
	addq	$4, %rbp
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	280(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rcx,%rdx), %rbx
	addq	$4, %rbx
	cmpl	%esi, %eax
	cmovll	%eax, %esi
	movq	%rsi, 80(%rsp)                  # 8-byte Spill
	movzwl	%di, %eax
	shll	$16, %r14d
	orl	%eax, %r14d
	movq	16(%rsp), %r15                  # 8-byte Reload
	movq	216(%rsp), %rcx                 # 8-byte Reload
	movl	%r14d, 25200(%r15,%rcx,4)
	movzwl	%r8w, %eax
	shll	$16, %r13d
	orl	%eax, %r13d
	movl	%r13d, 25360(%r15,%rcx,4)
	shlq	$6, %rbp
	leaq	(%rsp,%rbp), %rdx
	addq	$2192, %rdx                     # imm = 0x890
	shlq	$6, %rbx
	leaq	2768(%rsp), %rax
	leaq	(%rax,%rbx), %r8
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	208(%rsp), %rdi                 # 8-byte Reload
	movl	$32, %esi
	movl	$8, %ecx
	movl	$8, %r9d
	movq	160(%rsp), %r14                 # 8-byte Reload
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	movq	208(%rsp), %r13                 # 8-byte Reload
	callq	*32640(%r15,%r13,8)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	leaq	(%rsp,%rbp), %rdx
	addq	$1040, %rdx                     # imm = 0x410
	leaq	1616(%rsp), %rax
	addq	%rax, %rbx
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	216(%rsp), %rdi                 # 8-byte Reload
	movl	$32, %esi
	movl	$8, %ecx
	movq	%rbx, %r8
	movl	$8, %r9d
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	*32640(%r15,%r13,8)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	104(%rsp), %rax                 # 8-byte Reload
	movl	(%rax), %ecx
	movq	%r15, %rdi
	movl	124(%rsp), %esi                 # 4-byte Reload
	movl	44(%rsp), %edx                  # 4-byte Reload
	callq	x264_rd_cost_part@PLT
	movq	136(%rsp), %rcx                 # 8-byte Reload
	cmpq	%rcx, %rax
	movl	32(%rsp), %edx                  # 4-byte Reload
	cmovbl	%r12d, %edx
	movl	%edx, 32(%rsp)                  # 4-byte Spill
	cmovbq	%rax, %rcx
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	jmp	.LBB5_46
	.p2align	4, 0x90
.LBB5_26:                               # %for.cond.cleanup357
                                        #   in Loop: Header=BB5_12 Depth=1
	movl	32(%rsp), %eax                  # 4-byte Reload
	testl	%eax, %eax
	je	.LBB5_28
# %bb.27:                               # %for.inc554
                                        #   in Loop: Header=BB5_12 Depth=1
	movslq	%eax, %rcx
	movsbl	x264_me_refine_bidir.dia4d(,%rcx,4), %eax
	addl	%eax, %edx
	movl	%edx, 12(%rsp)                  # 4-byte Spill
	movsbl	x264_me_refine_bidir.dia4d+1(,%rcx,4), %eax
	addl	%eax, %r13d
	movsbl	x264_me_refine_bidir.dia4d+2(,%rcx,4), %eax
	addl	%eax, %r10d
	movsbl	x264_me_refine_bidir.dia4d+3(,%rcx,4), %eax
	addl	%eax, %r11d
	movzwl	x264_me_refine_bidir.dia4d(,%rcx,4), %eax
	movzwl	x264_me_refine_bidir.dia4d+2(,%rcx,4), %edx
	movl	36(%rsp), %ecx                  # 4-byte Reload
	incl	%ecx
	movl	%ecx, 36(%rsp)                  # 4-byte Spill
	cmpl	$8, %ecx
	jne	.LBB5_12
.LBB5_28:                               # %cleanup556
	cmpl	$0, 8016(%rsp)
	movq	128(%rsp), %r15                 # 8-byte Reload
	movq	104(%rsp), %r12                 # 8-byte Reload
	movl	12(%rsp), %ebx                  # 4-byte Reload
	movq	72(%rsp), %r14                  # 8-byte Reload
	je	.LBB5_120
# %bb.29:                               # %if.then559
	movq	64(%rsp), %rdi                  # 8-byte Reload
	movl	%edi, %ecx
	sarl	$2, %ecx
	sarl	$2, %r14d
	movzwl	%bx, %eax
	movl	%r13d, %r8d
	shll	$16, %r8d
	orl	%eax, %r8d
	movq	184(%rsp), %rax                 # 8-byte Reload
	shll	$3, %eax
	movq	176(%rsp), %rdx                 # 8-byte Reload
	leal	(%rax,%rdx,2), %eax
	orl	$12, %eax
	cltq
	movq	56(%rsp), %rbp                  # 8-byte Reload
	leaq	(,%rax,4), %rdx
	addq	%rbp, %rdx
	andl	$-4, %edi
	addl	$-2, %edi
	movl	$2, %esi
	shldl	$31, %edi, %esi
	cmpl	$1, %esi
	movl	%r10d, 8(%rsp)                  # 4-byte Spill
	je	.LBB5_51
# %bb.30:                               # %if.then559
	movq	%r8, %rdi
	shlq	$32, %rdi
	orq	%r8, %rdi
	cmpl	$3, %esi
	je	.LBB5_54
# %bb.31:                               # %if.then559
	cmpl	$7, %esi
	jne	.LBB5_57
# %bb.32:                               # %do.body.i.i.preheader
	leal	-2(%r14), %r9d
	cmpl	$5, %r9d
	ja	.LBB5_48
# %bb.33:
	movl	%r14d, %r8d
	jmp	.LBB5_34
.LBB5_54:                               # %if.then63.i.i
	movq	%rdi, (%rdx)
	cmpl	$1, %r14d
	je	.LBB5_57
# %bb.55:                               # %if.end70.i.i
	movq	%rdi, 32(%rdx)
	cmpl	$2, %r14d
	je	.LBB5_57
# %bb.56:                               # %if.end77.i.i
	movq	%rdi, 64(%rdx)
	movq	%rdi, 96(%rdx)
	jmp	.LBB5_57
.LBB5_51:                               # %if.then39.i.i
	movl	%r8d, (%rdx)
	cmpl	$1, %r14d
	je	.LBB5_57
# %bb.52:                               # %if.end46.i.i
	movl	%r8d, 32(%rdx)
	cmpl	$2, %r14d
	je	.LBB5_57
# %bb.53:                               # %if.end53.i.i
	movl	%r8d, 64(%rdx)
	movl	%r8d, 96(%rdx)
	jmp	.LBB5_57
.LBB5_48:                               # %vector.ph
	movl	%r11d, %ebp
	shrl	%r9d
	incl	%r9d
	movl	%r9d, %r10d
	andl	$-4, %r10d
	movq	%r10, %r8
	shlq	$6, %r8
	addq	%r8, %rdx
	movl	%r14d, %r8d
	subl	%r10d, %r8d
	subl	%r10d, %r8d
	movq	16(%rsp), %r11                  # 8-byte Reload
	leaq	(%r11,%rax,4), %r11
	addq	$25432, %r11                    # imm = 0x6358
	movq	%r10, %rbx
.LBB5_49:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, -232(%r11)
	movq	%rdi, -168(%r11)
	movq	%rdi, -104(%r11)
	movq	%rdi, -40(%r11)
	movq	%rdi, -224(%r11)
	movq	%rdi, -160(%r11)
	movq	%rdi, -96(%r11)
	movq	%rdi, -32(%r11)
	movq	%rdi, -200(%r11)
	movq	%rdi, -136(%r11)
	movq	%rdi, -72(%r11)
	movq	%rdi, -8(%r11)
	movq	%rdi, -192(%r11)
	movq	%rdi, -128(%r11)
	movq	%rdi, -64(%r11)
	movq	%rdi, (%r11)
	addq	$256, %r11                      # imm = 0x100
	addq	$-4, %rbx
	jne	.LBB5_49
# %bb.50:                               # %middle.block
	cmpl	%r9d, %r10d
	movl	%ebp, %r11d
	movl	12(%rsp), %ebx                  # 4-byte Reload
	movq	56(%rsp), %rbp                  # 8-byte Reload
	je	.LBB5_57
.LBB5_34:                               # %do.body.i.i.preheader1180
	leal	-2(%r8), %r9d
	movl	%r9d, %r10d
	shrl	%r10d
	incl	%r10d
	andl	$3, %r10d
	je	.LBB5_38
# %bb.35:                               # %do.body.i.i.prol.preheader
	movl	%r11d, %ebx
	addl	%r10d, %r10d
	xorl	%r11d, %r11d
.LBB5_36:                               # %do.body.i.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, (%rdx)
	movq	%rdi, 8(%rdx)
	movq	%rdi, 32(%rdx)
	movq	%rdi, 40(%rdx)
	addq	$64, %rdx
	addl	$2, %r11d
	cmpl	%r11d, %r10d
	jne	.LBB5_36
# %bb.37:                               # %do.body.i.i.prol.loopexit.loopexit
	subl	%r11d, %r8d
	movl	%ebx, %r11d
	movl	12(%rsp), %ebx                  # 4-byte Reload
.LBB5_38:                               # %do.body.i.i.prol.loopexit
	cmpl	$6, %r9d
	jb	.LBB5_57
.LBB5_39:                               # %do.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, (%rdx)
	movq	%rdi, 8(%rdx)
	movq	%rdi, 32(%rdx)
	movq	%rdi, 40(%rdx)
	movq	%rdi, 64(%rdx)
	movq	%rdi, 72(%rdx)
	movq	%rdi, 96(%rdx)
	movq	%rdi, 104(%rdx)
	movq	%rdi, 128(%rdx)
	movq	%rdi, 136(%rdx)
	movq	%rdi, 160(%rdx)
	movq	%rdi, 168(%rdx)
	movq	%rdi, 192(%rdx)
	movq	%rdi, 200(%rdx)
	movq	%rdi, 224(%rdx)
	movq	%rdi, 232(%rdx)
	addq	$256, %rdx                      # imm = 0x100
	addl	$-8, %r8d
	jne	.LBB5_39
.LBB5_57:                               # %x264_macroblock_cache_mv.exit
	movswl	128(%r12), %edx
	movl	%ebx, %r8d
	subl	%edx, %r8d
	movl	%r8d, %edi
	negl	%edi
	cmovsl	%r8d, %edi
	cmpl	$33, %edi
	movl	$33, %edx
	cmovael	%edx, %edi
	movswl	130(%r12), %r8d
	movl	%r13d, %r10d
	subl	%r8d, %r10d
	movl	%r10d, %r9d
	negl	%r9d
	cmovsl	%r10d, %r9d
	cmpl	$33, %r9d
	cmovael	%edx, %r9d
	movabsq	$4294967297, %rdx               # imm = 0x100000001
	decl	%ecx
	andl	$2147483647, %ecx               # imm = 0x7FFFFFFF
	cmpl	$7, %ecx
	ja	.LBB5_79
# %bb.58:                               # %x264_macroblock_cache_mv.exit
	shll	$8, %r9d
	orl	%edi, %r9d
	movq	16(%rsp), %rdi                  # 8-byte Reload
	leaq	(%rdi,%rax,2), %rdi
	addq	$25520, %rdi                    # imm = 0x63B0
	movl	%r9d, %r10d
	shll	$16, %r10d
	addl	%r9d, %r10d
	movq	%r10, %r8
	imulq	%rdx, %r8
	jmpq	*.LJTI5_0(,%rcx,8)
.LBB5_70:                               # %if.then.i.i
	movw	%r9w, (%rdi)
	cmpl	$1, %r14d
	je	.LBB5_79
# %bb.71:                               # %if.end.i.i
	movw	%r9w, 16(%rdi)
	cmpl	$2, %r14d
	je	.LBB5_79
# %bb.72:                               # %if.end30.i.i
	movw	%r9w, 32(%rdi)
	movw	%r9w, 48(%rdi)
	jmp	.LBB5_79
.LBB5_76:                               # %if.then63.i.i965
	movq	%r8, (%rdi)
	cmpl	$1, %r14d
	je	.LBB5_79
# %bb.77:                               # %if.end70.i.i967
	movq	%r8, 16(%rdi)
	cmpl	$2, %r14d
	je	.LBB5_79
# %bb.78:                               # %if.end77.i.i970
	movq	%r8, 32(%rdi)
	movq	%r8, 48(%rdi)
	jmp	.LBB5_79
.LBB5_73:                               # %if.then39.i.i973
	movl	%r10d, (%rdi)
	cmpl	$1, %r14d
	je	.LBB5_79
# %bb.74:                               # %if.end46.i.i975
	movl	%r10d, 16(%rdi)
	cmpl	$2, %r14d
	je	.LBB5_79
# %bb.75:                               # %if.end53.i.i978
	movl	%r10d, 32(%rdi)
	movl	%r10d, 48(%rdi)
	jmp	.LBB5_79
.LBB5_59:                               # %do.body.i.i956.preheader
	leal	-2(%r14), %r10d
	cmpl	$5, %r10d
	ja	.LBB5_67
# %bb.60:
	movl	%r14d, %r9d
	jmp	.LBB5_61
.LBB5_67:                               # %vector.ph1117
	movl	%r11d, 28(%rsp)                 # 4-byte Spill
	shrl	%r10d
	incl	%r10d
	movl	%r10d, %r11d
	andl	$-4, %r11d
	movq	%r11, %r9
	shlq	$5, %r9
	addq	%r9, %rdi
	movq	%r14, %rbp
	movl	%r14d, %r9d
	subl	%r11d, %r9d
	subl	%r11d, %r9d
	movq	16(%rsp), %rbx                  # 8-byte Reload
	leaq	(%rbx,%rax,2), %rbx
	addq	$25640, %rbx                    # imm = 0x6428
	movq	%r11, %r14
.LBB5_68:                               # %vector.body1125
                                        # =>This Inner Loop Header: Depth=1
	movq	%r8, -120(%rbx)
	movq	%r8, -88(%rbx)
	movq	%r8, -56(%rbx)
	movq	%r8, -24(%rbx)
	movq	%r8, -112(%rbx)
	movq	%r8, -80(%rbx)
	movq	%r8, -48(%rbx)
	movq	%r8, -16(%rbx)
	movq	%r8, -104(%rbx)
	movq	%r8, -72(%rbx)
	movq	%r8, -40(%rbx)
	movq	%r8, -8(%rbx)
	movq	%r8, -96(%rbx)
	movq	%r8, -64(%rbx)
	movq	%r8, -32(%rbx)
	movq	%r8, (%rbx)
	subq	$-128, %rbx
	addq	$-4, %r14
	jne	.LBB5_68
# %bb.69:                               # %middle.block1114
	cmpl	%r10d, %r11d
	movl	28(%rsp), %r11d                 # 4-byte Reload
	movl	12(%rsp), %ebx                  # 4-byte Reload
	movq	%rbp, %r14
	movq	56(%rsp), %rbp                  # 8-byte Reload
	je	.LBB5_79
.LBB5_61:                               # %do.body.i.i956.preheader1179
	movl	%r11d, %ebp
	leal	-2(%r9), %r10d
	movl	%r10d, %r11d
	shrl	%r11d
	incl	%r11d
	andl	$3, %r11d
	je	.LBB5_65
# %bb.62:                               # %do.body.i.i956.prol.preheader
	addl	%r11d, %r11d
	xorl	%ebx, %ebx
.LBB5_63:                               # %do.body.i.i956.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%r8, (%rdi)
	movq	%r8, 8(%rdi)
	movq	%r8, 16(%rdi)
	movq	%r8, 24(%rdi)
	addq	$32, %rdi
	addl	$2, %ebx
	cmpl	%ebx, %r11d
	jne	.LBB5_63
# %bb.64:                               # %do.body.i.i956.prol.loopexit.loopexit
	subl	%ebx, %r9d
	movl	12(%rsp), %ebx                  # 4-byte Reload
.LBB5_65:                               # %do.body.i.i956.prol.loopexit
	cmpl	$6, %r10d
	movl	%ebp, %r11d
	movq	56(%rsp), %rbp                  # 8-byte Reload
	jb	.LBB5_79
.LBB5_66:                               # %do.body.i.i956
                                        # =>This Inner Loop Header: Depth=1
	movq	%r8, (%rdi)
	movq	%r8, 8(%rdi)
	movq	%r8, 16(%rdi)
	movq	%r8, 24(%rdi)
	movq	%r8, 32(%rdi)
	movq	%r8, 40(%rdi)
	movq	%r8, 48(%rdi)
	movq	%r8, 56(%rdi)
	movq	%r8, 64(%rdi)
	movq	%r8, 72(%rdi)
	movq	%r8, 80(%rdi)
	movq	%r8, 88(%rdi)
	movq	%r8, 96(%rdi)
	movq	%r8, 104(%rdi)
	movq	%r8, 112(%rdi)
	movq	%r8, 120(%rdi)
	subq	$-128, %rdi
	addl	$-8, %r9d
	jne	.LBB5_66
.LBB5_79:                               # %x264_macroblock_cache_mvd.exit
	movl	8(%rsp), %r10d                  # 4-byte Reload
	movzwl	%r10w, %r8d
	movl	%r11d, %edi
	shll	$16, %edi
	orl	%r8d, %edi
	leaq	160(,%rax,4), %r8
	addq	%rbp, %r8
	cmpl	$1, %esi
	je	.LBB5_93
# %bb.80:                               # %x264_macroblock_cache_mvd.exit
	imulq	%rdx, %rdi
	cmpl	$3, %esi
	je	.LBB5_96
# %bb.81:                               # %x264_macroblock_cache_mvd.exit
	cmpl	$7, %esi
	jne	.LBB5_99
# %bb.82:                               # %do.body.i.i1009.preheader
	leal	-2(%r14), %r9d
	cmpl	$5, %r9d
	ja	.LBB5_90
# %bb.83:
	movl	%r14d, %esi
	jmp	.LBB5_84
.LBB5_96:                               # %if.then63.i.i993
	movq	%rdi, (%r8)
	cmpl	$1, %r14d
	je	.LBB5_99
# %bb.97:                               # %if.end70.i.i995
	movq	%rdi, 32(%r8)
	cmpl	$2, %r14d
	je	.LBB5_99
# %bb.98:                               # %if.end77.i.i998
	movq	%rdi, 64(%r8)
	movq	%rdi, 96(%r8)
	jmp	.LBB5_99
.LBB5_93:                               # %if.then39.i.i1001
	movl	%edi, (%r8)
	cmpl	$1, %r14d
	je	.LBB5_99
# %bb.94:                               # %if.end46.i.i1003
	movl	%edi, 32(%r8)
	cmpl	$2, %r14d
	je	.LBB5_99
# %bb.95:                               # %if.end53.i.i1006
	movl	%edi, 64(%r8)
	movl	%edi, 96(%r8)
	jmp	.LBB5_99
.LBB5_90:                               # %vector.ph1137
	movl	%r11d, %ebp
	shrl	%r9d
	incl	%r9d
	movl	%r9d, %r10d
	andl	$-4, %r10d
	movq	%r10, %rsi
	shlq	$6, %rsi
	addq	%rsi, %r8
	movl	%r14d, %esi
	subl	%r10d, %esi
	subl	%r10d, %esi
	movq	16(%rsp), %r11                  # 8-byte Reload
	leaq	(%r11,%rax,4), %r11
	addq	$25592, %r11                    # imm = 0x63F8
	movq	%r10, %rbx
.LBB5_91:                               # %vector.body1145
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, -232(%r11)
	movq	%rdi, -168(%r11)
	movq	%rdi, -104(%r11)
	movq	%rdi, -40(%r11)
	movq	%rdi, -224(%r11)
	movq	%rdi, -160(%r11)
	movq	%rdi, -96(%r11)
	movq	%rdi, -32(%r11)
	movq	%rdi, -200(%r11)
	movq	%rdi, -136(%r11)
	movq	%rdi, -72(%r11)
	movq	%rdi, -8(%r11)
	movq	%rdi, -192(%r11)
	movq	%rdi, -128(%r11)
	movq	%rdi, -64(%r11)
	movq	%rdi, (%r11)
	addq	$256, %r11                      # imm = 0x100
	addq	$-4, %rbx
	jne	.LBB5_91
# %bb.92:                               # %middle.block1134
	cmpl	%r9d, %r10d
	movl	%ebp, %r11d
	movl	8(%rsp), %r10d                  # 4-byte Reload
	movl	12(%rsp), %ebx                  # 4-byte Reload
	je	.LBB5_99
.LBB5_84:                               # %do.body.i.i1009.preheader1178
	leal	-2(%rsi), %r9d
	movl	%r9d, %r10d
	shrl	%r10d
	incl	%r10d
	andl	$3, %r10d
	je	.LBB5_88
# %bb.85:                               # %do.body.i.i1009.prol.preheader
	movl	%r11d, %ebx
	addl	%r10d, %r10d
	xorl	%r11d, %r11d
.LBB5_86:                               # %do.body.i.i1009.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, (%r8)
	movq	%rdi, 8(%r8)
	movq	%rdi, 32(%r8)
	movq	%rdi, 40(%r8)
	addq	$64, %r8
	addl	$2, %r11d
	cmpl	%r11d, %r10d
	jne	.LBB5_86
# %bb.87:                               # %do.body.i.i1009.prol.loopexit.loopexit
	subl	%r11d, %esi
	movl	%ebx, %r11d
	movl	12(%rsp), %ebx                  # 4-byte Reload
.LBB5_88:                               # %do.body.i.i1009.prol.loopexit
	cmpl	$6, %r9d
	movl	8(%rsp), %r10d                  # 4-byte Reload
	jb	.LBB5_99
.LBB5_89:                               # %do.body.i.i1009
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, (%r8)
	movq	%rdi, 8(%r8)
	movq	%rdi, 32(%r8)
	movq	%rdi, 40(%r8)
	movq	%rdi, 64(%r8)
	movq	%rdi, 72(%r8)
	movq	%rdi, 96(%r8)
	movq	%rdi, 104(%r8)
	movq	%rdi, 128(%r8)
	movq	%rdi, 136(%r8)
	movq	%rdi, 160(%r8)
	movq	%rdi, 168(%r8)
	movq	%rdi, 192(%r8)
	movq	%rdi, 200(%r8)
	movq	%rdi, 224(%r8)
	movq	%rdi, 232(%r8)
	addq	$256, %r8                       # imm = 0x100
	addl	$-8, %esi
	jne	.LBB5_89
.LBB5_99:                               # %x264_macroblock_cache_mv.exit1018
	movswl	128(%r15), %esi
	movl	%r10d, %edi
	subl	%esi, %edi
	movl	%edi, %esi
	negl	%esi
	cmovsl	%edi, %esi
	cmpl	$33, %esi
	movl	$33, %r8d
	cmovael	%r8d, %esi
	movswl	130(%r15), %edi
	movl	%r11d, %r9d
	subl	%edi, %r9d
	movl	%r9d, %edi
	negl	%edi
	cmovsl	%r9d, %edi
	cmpl	$33, %edi
	cmovael	%r8d, %edi
	cmpl	$7, %ecx
	ja	.LBB5_120
# %bb.100:                              # %x264_macroblock_cache_mv.exit1018
	movq	16(%rsp), %r8                   # 8-byte Reload
	addq	$25520, %r8                     # imm = 0x63B0
	shll	$8, %edi
	orl	%esi, %edi
	leaq	(%r8,%rax,2), %rsi
	addq	$80, %rsi
	movl	%edi, %r8d
	shll	$16, %r8d
	addl	%edi, %r8d
	imulq	%r8, %rdx
	movl	%ecx, %ecx
	jmpq	*.LJTI5_1(,%rcx,8)
.LBB5_111:                              # %if.then.i.i1056
	movw	%di, (%rsi)
	cmpl	$1, %r14d
	je	.LBB5_120
# %bb.112:                              # %if.end.i.i1058
	movw	%di, 16(%rsi)
	cmpl	$2, %r14d
	je	.LBB5_120
# %bb.113:                              # %if.end30.i.i1061
	movw	%di, 32(%rsi)
	movw	%di, 48(%rsi)
	jmp	.LBB5_120
.LBB5_117:                              # %if.then63.i.i1040
	movq	%rdx, (%rsi)
	cmpl	$1, %r14d
	je	.LBB5_120
# %bb.118:                              # %if.end70.i.i1042
	movq	%rdx, 16(%rsi)
	cmpl	$2, %r14d
	je	.LBB5_120
# %bb.119:                              # %if.end77.i.i1045
	movq	%rdx, 32(%rsi)
	movq	%rdx, 48(%rsi)
	jmp	.LBB5_120
.LBB5_114:                              # %if.then39.i.i1048
	movl	%r8d, (%rsi)
	cmpl	$1, %r14d
	je	.LBB5_120
# %bb.115:                              # %if.end46.i.i1050
	movl	%r8d, 16(%rsi)
	cmpl	$2, %r14d
	je	.LBB5_120
# %bb.116:                              # %if.end53.i.i1053
	movl	%r8d, 32(%rsi)
	movl	%r8d, 48(%rsi)
	jmp	.LBB5_120
.LBB5_101:                              # %do.body.i.i1031.preheader
	leal	-2(%r14), %ecx
	cmpl	$5, %ecx
	jbe	.LBB5_102
# %bb.108:                              # %vector.ph1157
	shrl	%ecx
	incl	%ecx
	movl	%ecx, %edi
	andl	$-4, %edi
	movq	%rdi, %r8
	shlq	$5, %r8
	addq	%r8, %rsi
	subl	%edi, %r14d
	subl	%edi, %r14d
	movq	16(%rsp), %r8                   # 8-byte Reload
	leaq	(%r8,%rax,2), %rax
	addq	$25720, %rax                    # imm = 0x6478
	movq	%rdi, %r8
.LBB5_109:                              # %vector.body1165
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, -120(%rax)
	movq	%rdx, -88(%rax)
	movq	%rdx, -56(%rax)
	movq	%rdx, -24(%rax)
	movq	%rdx, -112(%rax)
	movq	%rdx, -80(%rax)
	movq	%rdx, -48(%rax)
	movq	%rdx, -16(%rax)
	movq	%rdx, -104(%rax)
	movq	%rdx, -72(%rax)
	movq	%rdx, -40(%rax)
	movq	%rdx, -8(%rax)
	movq	%rdx, -96(%rax)
	movq	%rdx, -64(%rax)
	movq	%rdx, -32(%rax)
	movq	%rdx, (%rax)
	subq	$-128, %rax
	addq	$-4, %r8
	jne	.LBB5_109
# %bb.110:                              # %middle.block1154
	cmpl	%ecx, %edi
	je	.LBB5_120
.LBB5_102:                              # %do.body.i.i1031.preheader1177
	leal	-2(%r14), %eax
	movl	%eax, %ecx
	shrl	%ecx
	incl	%ecx
	andl	$3, %ecx
	je	.LBB5_106
# %bb.103:                              # %do.body.i.i1031.prol.preheader
	addl	%ecx, %ecx
	xorl	%edi, %edi
.LBB5_104:                              # %do.body.i.i1031.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, (%rsi)
	movq	%rdx, 8(%rsi)
	movq	%rdx, 16(%rsi)
	movq	%rdx, 24(%rsi)
	addq	$32, %rsi
	addl	$2, %edi
	cmpl	%edi, %ecx
	jne	.LBB5_104
# %bb.105:                              # %do.body.i.i1031.prol.loopexit.loopexit
	subl	%edi, %r14d
.LBB5_106:                              # %do.body.i.i1031.prol.loopexit
	cmpl	$6, %eax
	jb	.LBB5_120
.LBB5_107:                              # %do.body.i.i1031
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, (%rsi)
	movq	%rdx, 8(%rsi)
	movq	%rdx, 16(%rsi)
	movq	%rdx, 24(%rsi)
	movq	%rdx, 32(%rsi)
	movq	%rdx, 40(%rsi)
	movq	%rdx, 48(%rsi)
	movq	%rdx, 56(%rsi)
	movq	%rdx, 64(%rsi)
	movq	%rdx, 72(%rsi)
	movq	%rdx, 80(%rsi)
	movq	%rdx, 88(%rsi)
	movq	%rdx, 96(%rsi)
	movq	%rdx, 104(%rsi)
	movq	%rdx, 112(%rsi)
	movq	%rdx, 120(%rsi)
	subq	$-128, %rsi
	addl	$-8, %r14d
	jne	.LBB5_107
.LBB5_120:                              # %if.end646
	movw	%bx, 140(%r12)
	movw	%r13w, 142(%r12)
	movw	%r10w, 140(%r15)
	movw	%r11w, 142(%r15)
.LBB5_121:                              # %cleanup659
	addq	$7960, %rsp                     # imm = 0x1F18
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
	.size	x264_me_refine_bidir, .Lfunc_end5-x264_me_refine_bidir
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI5_0:
	.quad	.LBB5_70
	.quad	.LBB5_73
	.quad	.LBB5_79
	.quad	.LBB5_76
	.quad	.LBB5_79
	.quad	.LBB5_79
	.quad	.LBB5_79
	.quad	.LBB5_59
.LJTI5_1:
	.quad	.LBB5_111
	.quad	.LBB5_114
	.quad	.LBB5_120
	.quad	.LBB5_117
	.quad	.LBB5_120
	.quad	.LBB5_120
	.quad	.LBB5_120
	.quad	.LBB5_101
                                        # -- End function
	.text
	.globl	x264_me_refine_bidir_rd         # -- Begin function x264_me_refine_bidir_rd
	.p2align	4, 0x90
	.type	x264_me_refine_bidir_rd,@function
x264_me_refine_bidir_rd:                # @x264_me_refine_bidir_rd
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$1, 17420(%rdi)
	movl	$1, (%rsp)
	callq	x264_me_refine_bidir
	movl	$0, 17420(%rbx)
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	x264_me_refine_bidir_rd, .Lfunc_end6-x264_me_refine_bidir_rd
	.cfi_endproc
                                        # -- End function
	.globl	x264_me_refine_qpel_rd          # -- Begin function x264_me_refine_qpel_rd
	.p2align	4, 0x90
	.type	x264_me_refine_qpel_rd,@function
x264_me_refine_qpel_rd:                 # @x264_me_refine_qpel_rd
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
	subq	$264, %rsp                      # imm = 0x108
	.cfi_def_cfa_offset 320
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, 108(%rsp)                 # 4-byte Spill
	movq	%rsi, %r14
	movslq	%r8d, %rax
	movl	%ecx, 84(%rsp)                  # 4-byte Spill
	movslq	%ecx, %rdx
	leaq	(%rax,%rax,4), %rax
	movq	%rax, 240(%rsp)                 # 8-byte Spill
	movq	%rax, %rcx
	shlq	$5, %rcx
	movslq	(%rsi), %rax
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	movl	20(%rsi), %eax
	testl	%eax, 16436(%rdi)
	je	.LBB7_1
# %bb.2:                                # %cond.true
	movl	16388(%rdi), %eax
	andl	$1, %eax
	leal	-2(,%rax,4), %eax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	jmp	.LBB7_3
.LBB7_1:
	movq	$0, 136(%rsp)                   # 8-byte Folded Spill
.LBB7_3:                                # %cond.end
	movslq	x264_scan8(,%rdx,4), %rbx
	movq	%rcx, 256(%rsp)                 # 8-byte Spill
	leaq	(%rdi,%rcx), %r13
	addq	$25200, %r13                    # imm = 0x6270
	movq	144(%rsp), %rcx                 # 8-byte Reload
	movl	x264_pixel_size(,%rcx,8), %eax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movl	x264_pixel_size+4(,%rcx,8), %r10d
	movswl	140(%r14), %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	movslq	%eax, %r11
	movswl	142(%r14), %eax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movslq	%eax, %r12
	movzwl	block_idx_xy_fdec(%rdx,%rdx), %eax
	addq	21392(%rdi), %rax
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	movl	%edx, %eax
	shll	$4, %eax
	andl	$-128, %eax
	movl	%edx, %ecx
	andl	$4, %ecx
	orl	%eax, %ecx
	movslq	%ecx, %rax
	movq	21400(%rdi), %rcx
	addq	%rax, %rcx
	movq	%rcx, 152(%rsp)                 # 8-byte Spill
	addq	21408(%rdi), %rax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movl	$1, 17420(%rdi)
	movq	%rdx, 248(%rsp)                 # 8-byte Spill
	testl	%edx, %edx
	movq	%r10, 48(%rsp)                  # 8-byte Spill
	je	.LBB7_6
# %bb.4:                                # %cond.end
	cmpl	$0, (%r14)
	je	.LBB7_6
# %bb.5:                                # %if.then
	movq	120(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %ecx
	sarl	$2, %ecx
	leaq	128(%r14), %rax
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movl	%r8d, %esi
	movl	84(%rsp), %edx                  # 4-byte Reload
	movq	%rax, %r8
	movq	%r11, %r15
	callq	x264_mb_predict_mv@PLT
	movq	%r15, %r11
	movq	48(%rsp), %r10                  # 8-byte Reload
.LBB7_6:                                # %if.end
	movq	%r11, 176(%rsp)                 # 8-byte Spill
	leaq	(,%rbx,4), %rax
	addq	%r13, %rax
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	movswq	128(%r14), %rax
	movswq	130(%r14), %rcx
	movq	8(%r14), %r15
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	addq	%rax, %rax
	movq	%r15, %rbx
	subq	%rax, %rbx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	addq	%rcx, %rax
	movq	%r15, 112(%rsp)                 # 8-byte Spill
	subq	%rax, %r15
	leaq	32(%r14), %rdx
	movl	120(%r14), %ecx
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	192(%rsp), %rbp                 # 8-byte Reload
	movq	%rbp, %rdi
	movl	$32, %esi
	movq	%rdx, 208(%rsp)                 # 8-byte Spill
	movl	%r11d, %r8d
	movl	%r12d, %r9d
	pushq	24(%r14)
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	144(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	56(%rsp), %r13                  # 8-byte Reload
	callq	*32616(%r13)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	88(%r14), %rdi
	movl	$16, %esi
	movq	%rbp, %rdx
	movl	$32, %ecx
	movq	144(%rsp), %rax                 # 8-byte Reload
	callq	*31816(%r13,%rax,8)
	movq	%rbx, 224(%rsp)                 # 8-byte Spill
	movq	176(%rsp), %rcx                 # 8-byte Reload
	movzwl	(%rbx,%rcx,2), %ecx
	movq	%r15, 176(%rsp)                 # 8-byte Spill
	movzwl	(%r15,%r12,2), %r13d
	addl	%ecx, %r13d
	addl	%eax, %r13d
	movq	%r14, 40(%rsp)                  # 8-byte Spill
	cmpl	$0, (%r14)
	je	.LBB7_12
# %bb.7:                                # %if.then88
	testl	%r13d, %r13d
	movl	12(%rsp), %ebp                  # 4-byte Reload
	movq	32(%rsp), %r15                  # 8-byte Reload
	js	.LBB7_8
# %bb.9:                                # %if.then92
	movzwl	%bp, %eax
	movl	%r15d, %ecx
	shll	$16, %ecx
	orl	%eax, %ecx
	movq	168(%rsp), %rax                 # 8-byte Reload
	movl	%ecx, (%rax)
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	(%rax), %ecx
	cmpl	$3, %ecx
	movq	24(%rsp), %rbx                  # 8-byte Reload
	jg	.LBB7_11
# %bb.10:                               # %if.then97
	movq	40(%rsp), %r14                  # 8-byte Reload
	movq	64(%r14), %rdx
	movl	124(%r14), %ecx
	movq	136(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r15), %ebx
	movq	120(%rsp), %r12                 # 8-byte Reload
                                        # kill: def $r12d killed $r12d killed $r12 def $r12
	sarl	%r12d
	movq	48(%rsp), %r15                  # 8-byte Reload
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	sarl	%r15d
	movq	152(%rsp), %rdi                 # 8-byte Reload
	movl	$32, %esi
	movl	%ebp, %r8d
	movl	%ebx, %r9d
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	movq	40(%rsp), %rax                  # 8-byte Reload
	callq	*32632(%rax)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	72(%r14), %rdx
	movl	124(%r14), %ecx
	movq	160(%rsp), %rdi                 # 8-byte Reload
	movl	$32, %esi
	movl	%ebp, %r8d
	movl	%ebx, %r9d
	pushq	%r15
	movq	40(%rsp), %r15                  # 8-byte Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	movq	40(%rsp), %rbx                  # 8-byte Reload
	.cfi_adjust_cfa_offset 8
	callq	*32632(%rbx)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	(%r14), %ecx
.LBB7_11:                               # %if.end115
	movq	%rbx, %rdi
	movl	108(%rsp), %esi                 # 4-byte Reload
	movl	84(%rsp), %edx                  # 4-byte Reload
	callq	x264_rd_cost_part@PLT
	movabsq	$1152921504606846976, %rcx      # imm = 0x1000000000000000
	cmpq	%rcx, %rax
	cmovbq	%rax, %rcx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	jmp	.LBB7_13
.LBB7_12:                               # %if.else
	movq	40(%rsp), %rax                  # 8-byte Reload
	movslq	136(%rax), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movl	12(%rsp), %ebp                  # 4-byte Reload
	movq	32(%rsp), %r15                  # 8-byte Reload
	jmp	.LBB7_13
.LBB7_8:
	movabsq	$1152921504606846976, %rax      # imm = 0x1000000000000000
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rbx                  # 8-byte Reload
.LBB7_13:                               # %if.end125
	movl	%ebp, %eax
	movq	16(%rsp), %r8                   # 8-byte Reload
	xorl	%r8d, %eax
	movl	%r15d, %ecx
	movq	72(%rsp), %r9                   # 8-byte Reload
	xorl	%r9d, %ecx
	orw	%cx, %ax
	movq	48(%rsp), %r11                  # 8-byte Reload
	je	.LBB7_14
# %bb.16:                               # %land.lhs.true130
	cmpl	%r8d, 16456(%rbx)
	jg	.LBB7_14
# %bb.17:                               # %land.lhs.true135
	cmpl	%r8d, 16464(%rbx)
	jl	.LBB7_14
# %bb.18:                               # %land.lhs.true140
	cmpl	%r9d, 16460(%rbx)
	jg	.LBB7_14
# %bb.19:                               # %land.lhs.true146
	cmpl	%r9d, 16468(%rbx)
	jge	.LBB7_20
.LBB7_14:
	movl	%r9d, %r12d
	movl	%r8d, %edx
	movl	%r15d, %r10d
.LBB7_15:                               # %if.end230
	movl	%ebp, %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movl	16460(%rbx), %eax
	addl	$3, %eax
	cmpl	%eax, %r10d
	jl	.LBB7_122
.LBB7_31:                               # %lor.lhs.false237
	movl	16468(%rbx), %eax
	addl	$-3, %eax
	cmpl	%eax, %r10d
	jg	.LBB7_122
# %bb.32:                               # %lor.lhs.false244
	movl	16456(%rbx), %eax
	addl	$3, %eax
	cmpl	%eax, 16(%rsp)                  # 4-byte Folded Reload
	jl	.LBB7_122
# %bb.33:                               # %lor.lhs.false251
	movl	16464(%rbx), %eax
	addl	$-3, %eax
	cmpl	%eax, 16(%rsp)                  # 4-byte Folded Reload
	jle	.LBB7_34
.LBB7_122:                              # %cleanup846
	movl	$0, 17420(%rbx)
	addq	$264, %rsp                      # imm = 0x108
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
.LBB7_34:                               # %for.cond.preheader
	.cfi_def_cfa_offset 320
	leaq	25200(%rbx), %rax
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	movq	120(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	sarl	%eax
	movq	%rax, 216(%rsp)                 # 8-byte Spill
	movl	%r11d, %eax
	sarl	%eax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movl	$-2, 68(%rsp)                   # 4-byte Folded Spill
	xorl	%ebx, %ebx
	movslq	16(%rsp), %rax                  # 4-byte Folded Reload
	movslq	%r10d, %rcx
	movl	%r12d, 112(%rsp)                # 4-byte Spill
	movl	%edx, 12(%rsp)                  # 4-byte Spill
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	jmp	.LBB7_35
	.p2align	4, 0x90
.LBB7_38:                               #   in Loop: Header=BB7_35 Depth=1
	movq	48(%rsp), %r11                  # 8-byte Reload
	movq	72(%rsp), %r10                  # 8-byte Reload
	movl	112(%rsp), %r12d                # 4-byte Reload
.LBB7_46:                               # %for.inc
                                        #   in Loop: Header=BB7_35 Depth=1
	movl	12(%rsp), %edx                  # 4-byte Reload
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	88(%rsp), %rcx                  # 8-byte Reload
.LBB7_47:                               # %for.inc
                                        #   in Loop: Header=BB7_35 Depth=1
	incq	%rbx
	cmpq	$6, %rbx
	je	.LBB7_39
.LBB7_35:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movsbq	hex2+2(%rbx,%rbx), %rbp
	addq	%rax, %rbp
	movsbq	hex2+3(%rbx,%rbx), %r15
	addq	%rcx, %r15
	cmpl	%edx, %ebp
	jne	.LBB7_37
# %bb.36:                               # %for.body
                                        #   in Loop: Header=BB7_35 Depth=1
	cmpl	%r12d, %r15d
	je	.LBB7_47
.LBB7_37:                               # %if.end334
                                        #   in Loop: Header=BB7_35 Depth=1
	movq	%r10, 72(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %r14                  # 8-byte Reload
	movl	120(%r14), %ecx
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	192(%rsp), %r12                 # 8-byte Reload
	movq	%r12, %rdi
	movl	$32, %esi
	movq	208(%rsp), %rdx                 # 8-byte Reload
	movl	%ebp, %r8d
	movl	%r15d, %r9d
	pushq	24(%r14)
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	144(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	%r13, 64(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %r13                  # 8-byte Reload
	callq	*32616(%r13)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	88(%r14), %rdi
	movl	$16, %esi
	movq	%r12, %rdx
	movl	$32, %ecx
	movq	144(%rsp), %rax                 # 8-byte Reload
	callq	*31816(%r13,%rax,8)
	movq	32(%rsp), %r13                  # 8-byte Reload
	movq	224(%rsp), %rcx                 # 8-byte Reload
	movzwl	(%rcx,%rbp,2), %ecx
	addl	%eax, %ecx
	movq	176(%rsp), %rax                 # 8-byte Reload
	movzwl	(%rax,%r15,2), %eax
	addl	%ecx, %eax
	cmpl	%r13d, %eax
	cmovll	%eax, %r13d
	movl	%r13d, %ecx
	shll	$4, %ecx
	movl	%r13d, %edx
	addl	%ecx, %edx
	leal	15(%r13,%rcx), %ecx
	cmovnsl	%edx, %ecx
	sarl	$4, %ecx
	cmpl	%ecx, %eax
	jg	.LBB7_38
# %bb.41:                               # %if.then339
                                        #   in Loop: Header=BB7_35 Depth=1
	movzwl	%bp, %eax
	movl	%r15d, %ecx
	shll	$16, %ecx
	orl	%eax, %ecx
	movq	168(%rsp), %rax                 # 8-byte Reload
	movl	%ecx, (%rax)
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	(%rax), %ecx
	cmpl	$3, %ecx
	jg	.LBB7_43
# %bb.42:                               # %if.then357
                                        #   in Loop: Header=BB7_35 Depth=1
	movq	40(%rsp), %r12                  # 8-byte Reload
	movq	64(%r12), %rdx
	movl	124(%r12), %ecx
	movq	136(%rsp), %rax                 # 8-byte Reload
	leal	(%r15,%rax), %r9d
	movl	%r9d, 32(%rsp)                  # 4-byte Spill
	movq	152(%rsp), %rdi                 # 8-byte Reload
	movl	$32, %esi
	movl	%ebp, %r8d
	pushq	128(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	224(%rsp), %r14                 # 8-byte Reload
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	movq	40(%rsp), %rax                  # 8-byte Reload
	callq	*32632(%rax)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	72(%r12), %rdx
	movl	124(%r12), %ecx
	movq	160(%rsp), %rdi                 # 8-byte Reload
	movl	$32, %esi
	movl	%ebp, %r8d
	movl	32(%rsp), %r9d                  # 4-byte Reload
	pushq	128(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	movq	40(%rsp), %rax                  # 8-byte Reload
	callq	*32632(%rax)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	(%r12), %ecx
.LBB7_43:                               # %if.end400
                                        #   in Loop: Header=BB7_35 Depth=1
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movl	108(%rsp), %esi                 # 4-byte Reload
	movl	84(%rsp), %edx                  # 4-byte Reload
	callq	x264_rd_cost_part@PLT
	cmpq	96(%rsp), %rax                  # 8-byte Folded Reload
	movl	112(%rsp), %r12d                # 4-byte Reload
	jae	.LBB7_44
# %bb.45:                               # %if.then405
                                        #   in Loop: Header=BB7_35 Depth=1
	movl	%ebx, 68(%rsp)                  # 4-byte Spill
	movl	%r15d, %r10d
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	movq	%rbp, 16(%rsp)                  # 8-byte Spill
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %r11                  # 8-byte Reload
	jmp	.LBB7_46
.LBB7_44:                               #   in Loop: Header=BB7_35 Depth=1
	movq	48(%rsp), %r11                  # 8-byte Reload
	movq	72(%rsp), %r10                  # 8-byte Reload
	jmp	.LBB7_46
.LBB7_39:                               # %for.cond.cleanup
	movl	68(%rsp), %ebp                  # 4-byte Reload
	cmpl	$-2, %ebp
	jne	.LBB7_40
.LBB7_85:                               # %if.end622
	movq	$-16, %rbx
	movslq	16(%rsp), %rax                  # 4-byte Folded Reload
	movslq	%r10d, %rcx
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	jmp	.LBB7_86
	.p2align	4, 0x90
.LBB7_89:                               #   in Loop: Header=BB7_86 Depth=1
	movq	48(%rsp), %r11                  # 8-byte Reload
	movq	72(%rsp), %r10                  # 8-byte Reload
	movl	112(%rsp), %r12d                # 4-byte Reload
.LBB7_137:                              # %for.inc785
                                        #   in Loop: Header=BB7_86 Depth=1
	movl	12(%rsp), %edx                  # 4-byte Reload
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	88(%rsp), %rcx                  # 8-byte Reload
.LBB7_138:                              # %for.inc785
                                        #   in Loop: Header=BB7_86 Depth=1
	addq	$2, %rbx
	je	.LBB7_90
.LBB7_86:                               # %for.body628
                                        # =>This Inner Loop Header: Depth=1
	movsbq	square1+18(%rbx), %rbp
	addq	%rax, %rbp
	movsbq	square1+19(%rbx), %r15
	addq	%rcx, %r15
	cmpl	%edx, %ebp
	jne	.LBB7_88
# %bb.87:                               # %for.body628
                                        #   in Loop: Header=BB7_86 Depth=1
	cmpl	%r12d, %r15d
	je	.LBB7_138
.LBB7_88:                               # %if.end699
                                        #   in Loop: Header=BB7_86 Depth=1
	movq	%r10, 72(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %r14                  # 8-byte Reload
	movl	120(%r14), %ecx
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	192(%rsp), %r12                 # 8-byte Reload
	movq	%r12, %rdi
	movl	$32, %esi
	movq	208(%rsp), %rdx                 # 8-byte Reload
	movl	%ebp, %r8d
	movl	%r15d, %r9d
	pushq	24(%r14)
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	144(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	%r13, 64(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %r13                  # 8-byte Reload
	callq	*32616(%r13)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	88(%r14), %rdi
	movl	$16, %esi
	movq	%r12, %rdx
	movl	$32, %ecx
	movq	144(%rsp), %rax                 # 8-byte Reload
	callq	*31816(%r13,%rax,8)
	movq	32(%rsp), %r13                  # 8-byte Reload
	movq	224(%rsp), %rcx                 # 8-byte Reload
	movzwl	(%rcx,%rbp,2), %ecx
	addl	%eax, %ecx
	movq	176(%rsp), %rax                 # 8-byte Reload
	movzwl	(%rax,%r15,2), %eax
	addl	%ecx, %eax
	cmpl	%r13d, %eax
	cmovll	%eax, %r13d
	movl	%r13d, %ecx
	shll	$4, %ecx
	movl	%r13d, %edx
	addl	%ecx, %edx
	leal	15(%r13,%rcx), %ecx
	cmovnsl	%edx, %ecx
	sarl	$4, %ecx
	cmpl	%ecx, %eax
	jg	.LBB7_89
# %bb.132:                              # %if.then704
                                        #   in Loop: Header=BB7_86 Depth=1
	movzwl	%bp, %eax
	movl	%r15d, %ecx
	shll	$16, %ecx
	orl	%eax, %ecx
	movq	168(%rsp), %rax                 # 8-byte Reload
	movl	%ecx, (%rax)
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	(%rax), %ecx
	cmpl	$3, %ecx
	jg	.LBB7_134
# %bb.133:                              # %if.then722
                                        #   in Loop: Header=BB7_86 Depth=1
	movq	40(%rsp), %r14                  # 8-byte Reload
	movq	64(%r14), %rdx
	movl	124(%r14), %ecx
	movq	136(%rsp), %rax                 # 8-byte Reload
	leal	(%r15,%rax), %r9d
	movl	%r9d, 32(%rsp)                  # 4-byte Spill
	movq	152(%rsp), %rdi                 # 8-byte Reload
	movl	$32, %esi
	movl	%ebp, %r8d
	pushq	128(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	224(%rsp), %r12                 # 8-byte Reload
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	movq	40(%rsp), %rax                  # 8-byte Reload
	callq	*32632(%rax)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	72(%r14), %rdx
	movl	124(%r14), %ecx
	movq	160(%rsp), %rdi                 # 8-byte Reload
	movl	$32, %esi
	movl	%ebp, %r8d
	movl	32(%rsp), %r9d                  # 4-byte Reload
	pushq	128(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	movq	40(%rsp), %rax                  # 8-byte Reload
	callq	*32632(%rax)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	(%r14), %ecx
.LBB7_134:                              # %if.end765
                                        #   in Loop: Header=BB7_86 Depth=1
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movl	108(%rsp), %esi                 # 4-byte Reload
	movl	84(%rsp), %edx                  # 4-byte Reload
	callq	x264_rd_cost_part@PLT
	cmpq	96(%rsp), %rax                  # 8-byte Folded Reload
	movl	112(%rsp), %r12d                # 4-byte Reload
	jae	.LBB7_135
# %bb.136:                              # %if.then770
                                        #   in Loop: Header=BB7_86 Depth=1
	movl	%r15d, %r10d
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	movq	%rbp, 16(%rsp)                  # 8-byte Spill
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %r11                  # 8-byte Reload
	jmp	.LBB7_137
.LBB7_135:                              #   in Loop: Header=BB7_86 Depth=1
	movq	48(%rsp), %r11                  # 8-byte Reload
	movq	72(%rsp), %r10                  # 8-byte Reload
	jmp	.LBB7_137
.LBB7_90:                               # %for.cond.cleanup627
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movl	%eax, 136(%rcx)
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movw	%si, 140(%rcx)
	movw	%r10w, 142(%rcx)
	movq	248(%rsp), %rcx                 # 8-byte Reload
	movzbl	block_idx_x(%rcx), %eax
	movzbl	block_idx_y(%rcx), %ecx
	movq	120(%rsp), %rdi                 # 8-byte Reload
	movl	%edi, %edx
	sarl	$2, %edx
	sarl	$2, %r11d
	movzwl	%si, %esi
	movl	%r10d, %r8d
	shll	$16, %r8d
	orl	%esi, %r8d
	leaq	(%rax,%rcx,8), %rsi
	movq	256(%rsp), %rbx                 # 8-byte Reload
	movq	232(%rsp), %r9                  # 8-byte Reload
	addq	%rbx, %r9
	leaq	(%r9,%rsi,4), %rsi
	addq	$48, %rsi
	andl	$-4, %edi
	addl	$-2, %edi
	movl	$2, %r9d
	shldl	$31, %edi, %r9d
	cmpl	$1, %r9d
	je	.LBB7_104
# %bb.91:                               # %for.cond.cleanup627
	movq	%r8, %rdi
	shlq	$32, %rdi
	orq	%r8, %rdi
	cmpl	$3, %r9d
	je	.LBB7_107
# %bb.92:                               # %for.cond.cleanup627
	cmpl	$7, %r9d
	jne	.LBB7_110
# %bb.93:                               # %do.body.i.i.preheader
	leal	-2(%r11), %r9d
	cmpl	$5, %r9d
	ja	.LBB7_101
# %bb.94:
	movl	%r11d, %r8d
	jmp	.LBB7_95
.LBB7_20:                               # %if.then152
	movq	40(%rsp), %r14                  # 8-byte Reload
	movl	120(%r14), %ecx
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	192(%rsp), %rbp                 # 8-byte Reload
	movq	%rbp, %rdi
	movl	$32, %esi
	movq	208(%rsp), %rdx                 # 8-byte Reload
	pushq	24(%r14)
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	144(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	%r9, %r12
	movq	%r8, %r15
	callq	*32616(%rbx)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	88(%r14), %rdi
	movl	$16, %esi
	movq	%rbp, %rdx
	movl	$32, %ecx
	movq	144(%rsp), %rax                 # 8-byte Reload
	callq	*31816(%rbx,%rax,8)
                                        # kill: def $eax killed $eax def $rax
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movzwl	(%rcx), %ecx
	leal	(%rax,%rcx,2), %eax
	cmpl	%r13d, %eax
	cmovll	%eax, %r13d
	movl	%r13d, %ecx
	shll	$4, %ecx
	movl	%r13d, %edx
	addl	%ecx, %edx
	leal	15(%r13,%rcx), %ecx
	cmovnsl	%edx, %ecx
	sarl	$4, %ecx
	cmpl	%ecx, %eax
	jle	.LBB7_22
# %bb.21:
	movq	%r12, %r10
	movl	12(%rsp), %ebp                  # 4-byte Reload
	jmp	.LBB7_25
.LBB7_40:                               # %for.body427.preheader
	movl	$9, %esi
	.p2align	4, 0x90
.LBB7_50:                               # %for.body427
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movl	16460(%rcx), %eax
	addl	$3, %eax
	cmpl	%eax, %r10d
	jl	.LBB7_85
# %bb.51:                               # %lor.lhs.false438
                                        #   in Loop: Header=BB7_50 Depth=1
	movl	16468(%rcx), %eax
	addl	$-3, %eax
	cmpl	%eax, %r10d
	jg	.LBB7_85
# %bb.52:                               # %for.cond448.preheader
                                        #   in Loop: Header=BB7_50 Depth=1
	movl	%esi, 196(%rsp)                 # 4-byte Spill
	movslq	%ebp, %rax
	movzbl	mod6m1+1(%rax), %r15d
	leal	(%r15,%r15), %eax
	movsbq	hex2(%rax), %rbp
	movslq	16(%rsp), %rsi                  # 4-byte Folded Reload
	addq	%rsi, %rbp
	movsbq	hex2+1(%rax), %rax
	movslq	%r10d, %rdi
	addq	%rdi, %rax
	movl	$-2, 68(%rsp)                   # 4-byte Folded Spill
	cmpl	%edx, %ebp
	movq	%r15, 208(%rsp)                 # 8-byte Spill
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	jne	.LBB7_55
# %bb.53:                               # %for.cond448.preheader
                                        #   in Loop: Header=BB7_50 Depth=1
	cmpl	%r12d, %eax
	jne	.LBB7_55
# %bb.54:                               #   in Loop: Header=BB7_50 Depth=1
	movl	%r10d, %r14d
	movq	16(%rsp), %rbp                  # 8-byte Reload
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	jmp	.LBB7_64
.LBB7_55:                               # %if.end523
                                        #   in Loop: Header=BB7_50 Depth=1
	movq	%r10, 72(%rsp)                  # 8-byte Spill
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %r14                  # 8-byte Reload
	movl	120(%r14), %ecx
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	192(%rsp), %r15                 # 8-byte Reload
	movq	%r15, %rdi
	movl	$32, %esi
	movq	208(%rsp), %rdx                 # 8-byte Reload
	movl	%ebp, %r8d
	movq	96(%rsp), %r9                   # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	pushq	24(%r14)
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	144(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	56(%rsp), %rbx                  # 8-byte Reload
	callq	*32616(%rbx)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	88(%r14), %rdi
	movq	88(%rsp), %r14                  # 8-byte Reload
	movl	$16, %esi
	movq	%r15, %rdx
	movl	$32, %ecx
	movq	144(%rsp), %rax                 # 8-byte Reload
	callq	*31816(%rbx,%rax,8)
	movq	224(%rsp), %rcx                 # 8-byte Reload
	movzwl	(%rcx,%rbp,2), %ecx
	addl	%eax, %ecx
	movq	176(%rsp), %rax                 # 8-byte Reload
	movzwl	(%rax,%r14,2), %eax
	addl	%ecx, %eax
	cmpl	%r13d, %eax
	cmovll	%eax, %r13d
	movl	%r13d, %ecx
	shll	$4, %ecx
	movl	%r13d, %edx
	addl	%ecx, %edx
	leal	15(%r13,%rcx), %ecx
	cmovnsl	%edx, %ecx
	sarl	$4, %ecx
	cmpl	%ecx, %eax
	jle	.LBB7_57
# %bb.56:                               #   in Loop: Header=BB7_50 Depth=1
	movq	72(%rsp), %rax                  # 8-byte Reload
	movl	%eax, %r14d
	movq	16(%rsp), %rbp                  # 8-byte Reload
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	movq	48(%rsp), %r11                  # 8-byte Reload
	movl	12(%rsp), %edx                  # 4-byte Reload
	movq	208(%rsp), %r15                 # 8-byte Reload
	movq	32(%rsp), %rsi                  # 8-byte Reload
	jmp	.LBB7_63
.LBB7_57:                               # %if.then528
                                        #   in Loop: Header=BB7_50 Depth=1
	movzwl	%bp, %eax
	movl	%r14d, %ecx
	shll	$16, %ecx
	orl	%eax, %ecx
	movq	168(%rsp), %rax                 # 8-byte Reload
	movl	%ecx, (%rax)
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	(%rax), %ecx
	cmpl	$3, %ecx
	jg	.LBB7_59
# %bb.58:                               # %if.then546
                                        #   in Loop: Header=BB7_50 Depth=1
	movq	40(%rsp), %r14                  # 8-byte Reload
	movq	64(%r14), %rdx
	movl	124(%r14), %ecx
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	88(%rsp), %rsi                  # 8-byte Reload
	leal	(%rsi,%rax), %r9d
	movl	%r9d, 192(%rsp)                 # 4-byte Spill
	movq	152(%rsp), %rdi                 # 8-byte Reload
	movl	$32, %esi
	movl	%ebp, %r8d
	pushq	128(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	224(%rsp), %r15                 # 8-byte Reload
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	movq	40(%rsp), %rbx                  # 8-byte Reload
	callq	*32632(%rbx)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	72(%r14), %rdx
	movl	124(%r14), %ecx
	movq	160(%rsp), %rdi                 # 8-byte Reload
	movl	$32, %esi
	movl	%ebp, %r8d
	movl	192(%rsp), %r9d                 # 4-byte Reload
	pushq	128(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	callq	*32632(%rbx)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	(%r14), %ecx
	movq	88(%rsp), %r14                  # 8-byte Reload
.LBB7_59:                               # %if.end589
                                        #   in Loop: Header=BB7_50 Depth=1
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movl	108(%rsp), %esi                 # 4-byte Reload
	movl	84(%rsp), %edx                  # 4-byte Reload
	callq	x264_rd_cost_part@PLT
	cmpq	96(%rsp), %rax                  # 8-byte Folded Reload
	movq	208(%rsp), %r15                 # 8-byte Reload
	movq	32(%rsp), %rsi                  # 8-byte Reload
	jae	.LBB7_60
# %bb.61:                               # %if.then594
                                        #   in Loop: Header=BB7_50 Depth=1
	leal	-1(%r15), %ecx
	movl	%ecx, 68(%rsp)                  # 4-byte Spill
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	jmp	.LBB7_62
.LBB7_60:                               #   in Loop: Header=BB7_50 Depth=1
	movq	72(%rsp), %rax                  # 8-byte Reload
	movl	%eax, %r14d
	movq	16(%rsp), %rbp                  # 8-byte Reload
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
.LBB7_62:                               # %for.inc611
                                        #   in Loop: Header=BB7_50 Depth=1
	movq	48(%rsp), %r11                  # 8-byte Reload
	movl	12(%rsp), %edx                  # 4-byte Reload
.LBB7_63:                               # %for.inc611
                                        #   in Loop: Header=BB7_50 Depth=1
	movq	56(%rsp), %rdi                  # 8-byte Reload
.LBB7_64:                               # %for.inc611
                                        #   in Loop: Header=BB7_50 Depth=1
	movl	%r15d, %ebx
	leal	(%rbx,%rbx), %eax
	movsbq	hex2+2(%rax), %r8
	addq	%rsi, %r8
	movsbq	hex2+3(%rax), %r9
	addq	%rdi, %r9
	cmpl	%edx, %r8d
	jne	.LBB7_67
# %bb.65:                               # %for.inc611
                                        #   in Loop: Header=BB7_50 Depth=1
	cmpl	%r12d, %r9d
	jne	.LBB7_67
# %bb.66:                               #   in Loop: Header=BB7_50 Depth=1
	movl	%r14d, %r10d
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	movq	%rbp, 16(%rsp)                  # 8-byte Spill
	movl	68(%rsp), %ebp                  # 4-byte Reload
	jmp	.LBB7_75
.LBB7_67:                               # %if.end523.1
                                        #   in Loop: Header=BB7_50 Depth=1
	movq	%r14, 88(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %r14                  # 8-byte Reload
	movl	120(%r14), %ecx
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	192(%rsp), %r12                 # 8-byte Reload
	movq	%r12, %rdi
	movl	$32, %esi
	movq	208(%rsp), %rdx                 # 8-byte Reload
	pushq	24(%r14)
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	144(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	56(%rsp), %r15                  # 8-byte Reload
	movq	%r9, 104(%rsp)                  # 8-byte Spill
	movq	%r8, 48(%rsp)                   # 8-byte Spill
	callq	*32616(%r15)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	88(%r14), %rdi
	movl	$16, %esi
	movq	%r12, %rdx
	movl	$32, %ecx
	movq	144(%rsp), %rax                 # 8-byte Reload
	callq	*31816(%r15,%rax,8)
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	72(%rsp), %rsi                  # 8-byte Reload
	movq	224(%rsp), %rcx                 # 8-byte Reload
	movzwl	(%rcx,%rdi,2), %ecx
	addl	%eax, %ecx
	movq	176(%rsp), %rax                 # 8-byte Reload
	movzwl	(%rax,%rsi,2), %eax
	addl	%ecx, %eax
	cmpl	%r13d, %eax
	cmovll	%eax, %r13d
	movl	%r13d, %ecx
	shll	$4, %ecx
	movl	%r13d, %edx
	addl	%ecx, %edx
	leal	15(%r13,%rcx), %ecx
	cmovnsl	%edx, %ecx
	sarl	$4, %ecx
	cmpl	%ecx, %eax
	jle	.LBB7_69
# %bb.68:                               #   in Loop: Header=BB7_50 Depth=1
	movq	88(%rsp), %r10                  # 8-byte Reload
                                        # kill: def $r10d killed $r10d killed $r10 def $r10
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	movq	%rbp, 16(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %r11                  # 8-byte Reload
	movl	112(%rsp), %r12d                # 4-byte Reload
	movl	12(%rsp), %edx                  # 4-byte Reload
	movl	68(%rsp), %ebp                  # 4-byte Reload
	movq	208(%rsp), %r15                 # 8-byte Reload
	movq	32(%rsp), %rsi                  # 8-byte Reload
	jmp	.LBB7_74
.LBB7_69:                               # %if.then528.1
                                        #   in Loop: Header=BB7_50 Depth=1
	movzwl	%di, %eax
	movl	%esi, %ecx
	shll	$16, %ecx
	orl	%eax, %ecx
	movq	168(%rsp), %rax                 # 8-byte Reload
	movl	%ecx, (%rax)
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	(%rax), %ecx
	cmpl	$3, %ecx
	jg	.LBB7_71
# %bb.70:                               # %if.then546.1
                                        #   in Loop: Header=BB7_50 Depth=1
	movq	40(%rsp), %r14                  # 8-byte Reload
	movq	64(%r14), %rdx
	movl	124(%r14), %ecx
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	136(%rsp), %rsi                 # 8-byte Reload
	leal	(%rax,%rsi), %r9d
	movl	%r9d, 192(%rsp)                 # 4-byte Spill
	movq	152(%rsp), %rdi                 # 8-byte Reload
	movl	$32, %esi
	movq	16(%rsp), %r8                   # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	pushq	128(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	224(%rsp), %r12                 # 8-byte Reload
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	movq	40(%rsp), %r15                  # 8-byte Reload
	callq	*32632(%r15)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	72(%r14), %rdx
	movl	124(%r14), %ecx
	movq	160(%rsp), %rdi                 # 8-byte Reload
	movl	$32, %esi
	movq	16(%rsp), %r8                   # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	movl	192(%rsp), %r9d                 # 4-byte Reload
	pushq	128(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	callq	*32632(%r15)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	(%r14), %ecx
.LBB7_71:                               # %if.end589.1
                                        #   in Loop: Header=BB7_50 Depth=1
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movl	108(%rsp), %esi                 # 4-byte Reload
	movl	84(%rsp), %edx                  # 4-byte Reload
	callq	x264_rd_cost_part@PLT
	cmpq	96(%rsp), %rax                  # 8-byte Folded Reload
	movl	112(%rsp), %r12d                # 4-byte Reload
	movq	208(%rsp), %r15                 # 8-byte Reload
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movq	88(%rsp), %r10                  # 8-byte Reload
	jae	.LBB7_72
# %bb.73:                               # %if.then594.1
                                        #   in Loop: Header=BB7_50 Depth=1
	movl	%r15d, %ebp
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %r11                  # 8-byte Reload
	movq	72(%rsp), %r10                  # 8-byte Reload
	movl	12(%rsp), %edx                  # 4-byte Reload
	jmp	.LBB7_74
.LBB7_72:                               #   in Loop: Header=BB7_50 Depth=1
                                        # kill: def $r10d killed $r10d killed $r10 def $r10
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	movq	%rbp, 16(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %r11                  # 8-byte Reload
	movl	12(%rsp), %edx                  # 4-byte Reload
	movl	68(%rsp), %ebp                  # 4-byte Reload
.LBB7_74:                               # %for.inc611.1
                                        #   in Loop: Header=BB7_50 Depth=1
	movq	56(%rsp), %rdi                  # 8-byte Reload
.LBB7_75:                               # %for.inc611.1
                                        #   in Loop: Header=BB7_50 Depth=1
	addl	%ebx, %ebx
	movsbq	hex2+4(%rbx), %rax
	addq	%rax, %rsi
	movsbq	hex2+5(%rbx), %rax
	addq	%rax, %rdi
	cmpl	%edx, %esi
	jne	.LBB7_78
# %bb.76:                               # %for.inc611.1
                                        #   in Loop: Header=BB7_50 Depth=1
	cmpl	%r12d, %edi
	jne	.LBB7_78
# %bb.77:                               #   in Loop: Header=BB7_50 Depth=1
	movl	196(%rsp), %esi                 # 4-byte Reload
	cmpl	$-2, %ebp
	jne	.LBB7_49
	jmp	.LBB7_85
.LBB7_78:                               # %if.end523.2
                                        #   in Loop: Header=BB7_50 Depth=1
	movq	%r10, 72(%rsp)                  # 8-byte Spill
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %r14                  # 8-byte Reload
	movl	120(%r14), %ecx
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	192(%rsp), %r12                 # 8-byte Reload
	movq	%rdi, 64(%rsp)                  # 8-byte Spill
	movq	%r12, %rdi
	movl	$32, %esi
	movq	208(%rsp), %rdx                 # 8-byte Reload
	movq	40(%rsp), %r8                   # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	movq	64(%rsp), %r9                   # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	pushq	24(%r14)
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	144(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	56(%rsp), %rbx                  # 8-byte Reload
	callq	*32616(%rbx)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	88(%r14), %rdi
	movq	32(%rsp), %r14                  # 8-byte Reload
	movl	$16, %esi
	movq	%r12, %rdx
	movl	$32, %ecx
	movq	144(%rsp), %rax                 # 8-byte Reload
	callq	*31816(%rbx,%rax,8)
	movq	56(%rsp), %rsi                  # 8-byte Reload
	movq	224(%rsp), %rcx                 # 8-byte Reload
	movzwl	(%rcx,%r14,2), %ecx
	addl	%eax, %ecx
	movq	176(%rsp), %rax                 # 8-byte Reload
	movzwl	(%rax,%rsi,2), %eax
	addl	%ecx, %eax
	cmpl	%r13d, %eax
	cmovll	%eax, %r13d
	movl	%r13d, %ecx
	shll	$4, %ecx
	movl	%r13d, %edx
	addl	%ecx, %edx
	leal	15(%r13,%rcx), %ecx
	cmovnsl	%edx, %ecx
	sarl	$4, %ecx
	cmpl	%ecx, %eax
	jle	.LBB7_80
# %bb.79:                               #   in Loop: Header=BB7_50 Depth=1
	movq	48(%rsp), %r11                  # 8-byte Reload
	movq	72(%rsp), %r10                  # 8-byte Reload
	movl	112(%rsp), %r12d                # 4-byte Reload
	movl	12(%rsp), %edx                  # 4-byte Reload
	movl	196(%rsp), %esi                 # 4-byte Reload
	cmpl	$-2, %ebp
	je	.LBB7_85
.LBB7_49:                               # %for.cond423
                                        #   in Loop: Header=BB7_50 Depth=1
	decl	%esi
	jne	.LBB7_50
	jmp	.LBB7_85
.LBB7_80:                               # %if.then528.2
                                        #   in Loop: Header=BB7_50 Depth=1
	movzwl	%r14w, %eax
	movl	%esi, %ecx
	shll	$16, %ecx
	orl	%eax, %ecx
	movq	168(%rsp), %rax                 # 8-byte Reload
	movl	%ecx, (%rax)
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	(%rax), %ecx
	cmpl	$3, %ecx
	jg	.LBB7_82
# %bb.81:                               # %if.then546.2
                                        #   in Loop: Header=BB7_50 Depth=1
	movq	40(%rsp), %r14                  # 8-byte Reload
	movq	64(%r14), %rdx
	movl	124(%r14), %ecx
	movq	136(%rsp), %rax                 # 8-byte Reload
	movl	%ebp, 68(%rsp)                  # 4-byte Spill
	movq	56(%rsp), %rsi                  # 8-byte Reload
	leal	(%rsi,%rax), %ebp
	movq	152(%rsp), %rdi                 # 8-byte Reload
	movl	$32, %esi
	movq	32(%rsp), %r8                   # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	movl	%ebp, %r9d
	movq	128(%rsp), %r15                 # 8-byte Reload
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	movq	224(%rsp), %r12                 # 8-byte Reload
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	movq	40(%rsp), %rbx                  # 8-byte Reload
	callq	*32632(%rbx)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	72(%r14), %rdx
	movl	124(%r14), %ecx
	movq	160(%rsp), %rdi                 # 8-byte Reload
	movl	$32, %esi
	movq	32(%rsp), %r8                   # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	movl	%ebp, %r9d
	movl	68(%rsp), %ebp                  # 4-byte Reload
	pushq	%r15
	movq	216(%rsp), %r15                 # 8-byte Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	callq	*32632(%rbx)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	(%r14), %ecx
	movq	32(%rsp), %r14                  # 8-byte Reload
.LBB7_82:                               # %if.end589.2
                                        #   in Loop: Header=BB7_50 Depth=1
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movl	108(%rsp), %esi                 # 4-byte Reload
	movl	84(%rsp), %edx                  # 4-byte Reload
	callq	x264_rd_cost_part@PLT
	cmpq	96(%rsp), %rax                  # 8-byte Folded Reload
	movl	112(%rsp), %r12d                # 4-byte Reload
	movl	196(%rsp), %esi                 # 4-byte Reload
	jae	.LBB7_83
# %bb.48:                               # %for.inc611.2.thread
                                        #   in Loop: Header=BB7_50 Depth=1
	incl	%r15d
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movl	%r14d, %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %r10                  # 8-byte Reload
                                        # kill: def $r10d killed $r10d killed $r10 def $r10
	movl	%r15d, %ebp
	movq	48(%rsp), %r11                  # 8-byte Reload
	movl	12(%rsp), %edx                  # 4-byte Reload
	decl	%esi
	jne	.LBB7_50
	jmp	.LBB7_85
.LBB7_83:                               #   in Loop: Header=BB7_50 Depth=1
	movq	48(%rsp), %r11                  # 8-byte Reload
	movq	72(%rsp), %r10                  # 8-byte Reload
	movl	12(%rsp), %edx                  # 4-byte Reload
	cmpl	$-2, %ebp
	jne	.LBB7_49
	jmp	.LBB7_85
.LBB7_107:                              # %if.then63.i.i
	movq	%rdi, (%rsi)
	cmpl	$1, %r11d
	je	.LBB7_110
# %bb.108:                              # %if.end70.i.i
	movq	%rdi, 32(%rsi)
	cmpl	$2, %r11d
	je	.LBB7_110
# %bb.109:                              # %if.end77.i.i
	movq	%rdi, 64(%rsi)
	movq	%rdi, 96(%rsi)
	jmp	.LBB7_110
.LBB7_104:                              # %if.then39.i.i
	movl	%r8d, (%rsi)
	cmpl	$1, %r11d
	je	.LBB7_110
# %bb.105:                              # %if.end46.i.i
	movl	%r8d, 32(%rsi)
	cmpl	$2, %r11d
	je	.LBB7_110
# %bb.106:                              # %if.end53.i.i
	movl	%r8d, 64(%rsi)
	movl	%r8d, 96(%rsi)
	jmp	.LBB7_110
.LBB7_22:                               # %if.then184
	movzwl	%r15w, %eax
	movl	%r12d, %ecx
	shll	$16, %ecx
	orl	%eax, %ecx
	movq	168(%rsp), %rax                 # 8-byte Reload
	movl	%ecx, (%rax)
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	(%rax), %ecx
	cmpl	$3, %ecx
	movl	12(%rsp), %ebp                  # 4-byte Reload
	jg	.LBB7_24
# %bb.23:                               # %if.then190
	movq	40(%rsp), %r14                  # 8-byte Reload
	movq	64(%r14), %rdx
	movl	124(%r14), %ecx
	movq	136(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r12), %r9d
	movl	%r9d, 112(%rsp)                 # 4-byte Spill
	movq	120(%rsp), %rbx                 # 8-byte Reload
                                        # kill: def $ebx killed $ebx killed $rbx def $rbx
	sarl	%ebx
	movq	48(%rsp), %r12                  # 8-byte Reload
                                        # kill: def $r12d killed $r12d killed $r12 def $r12
	sarl	%r12d
	movq	152(%rsp), %rdi                 # 8-byte Reload
	movl	$32, %esi
	movl	%r15d, %r8d
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	movq	40(%rsp), %rax                  # 8-byte Reload
	callq	*32632(%rax)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	72(%r14), %rdx
	movl	124(%r14), %ecx
	movq	160(%rsp), %rdi                 # 8-byte Reload
	movl	$32, %esi
	movl	%r15d, %r8d
	movl	112(%rsp), %r9d                 # 4-byte Reload
	pushq	%r12
	movq	80(%rsp), %r12                  # 8-byte Reload
	movq	32(%rsp), %rax                  # 8-byte Reload
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	movq	%rax, %rbx
	.cfi_adjust_cfa_offset 8
	callq	*32632(%rax)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	(%r14), %ecx
.LBB7_24:                               # %if.end209
	movq	%rbx, %rdi
	movl	108(%rsp), %esi                 # 4-byte Reload
	movl	84(%rsp), %edx                  # 4-byte Reload
	callq	x264_rd_cost_part@PLT
	movq	96(%rsp), %rcx                  # 8-byte Reload
	cmpq	%rcx, %rax
	movq	32(%rsp), %rdx                  # 8-byte Reload
	cmovbl	%r12d, %edx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	cmovbl	%r15d, %ebp
	cmovbq	%rax, %rcx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	movq	%r12, %r10
.LBB7_25:                               # %if.end216
	cmpl	%r15d, %ebp
	movq	48(%rsp), %r11                  # 8-byte Reload
	jne	.LBB7_26
# %bb.27:                               # %if.end216
	movq	32(%rsp), %rcx                  # 8-byte Reload
	cmpl	%r10d, %ecx
	jne	.LBB7_28
# %bb.29:                               # %if.then222
	movq	40(%rsp), %rax                  # 8-byte Reload
	movswl	140(%rax), %edx
	movswl	142(%rax), %r12d
	movl	16460(%rbx), %eax
	addl	$3, %eax
	cmpl	%eax, %r10d
	jge	.LBB7_31
	jmp	.LBB7_122
.LBB7_28:
	movl	%r10d, %r12d
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%eax, %edx
	movl	%ecx, %r10d
	jmp	.LBB7_15
.LBB7_26:
	movl	%r10d, %r12d
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%eax, %edx
	movq	32(%rsp), %r10                  # 8-byte Reload
                                        # kill: def $r10d killed $r10d killed $r10 def $r10
	jmp	.LBB7_15
.LBB7_101:                              # %vector.ph
	movq	%r10, %r13
	shrl	%r9d
	incl	%r9d
	movl	%r9d, %r10d
	andl	$-4, %r10d
	movq	%r10, %r8
	shlq	$6, %r8
	addq	%r8, %rsi
	movq	%r11, %r8
	movq	%r8, %r15
                                        # kill: def $r8d killed $r8d killed $r8 def $r8
	subl	%r10d, %r8d
	subl	%r10d, %r8d
	movl	%ecx, %r11d
	shll	$5, %r11d
	addq	%r11, %rbx
	leaq	(%rbx,%rax,4), %r11
	movq	24(%rsp), %rbx                  # 8-byte Reload
	addq	%rbx, %r11
	addq	$25480, %r11                    # imm = 0x6388
	movq	%r10, %rbx
	.p2align	4, 0x90
.LBB7_102:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, -232(%r11)
	movq	%rdi, -168(%r11)
	movq	%rdi, -104(%r11)
	movq	%rdi, -40(%r11)
	movq	%rdi, -224(%r11)
	movq	%rdi, -160(%r11)
	movq	%rdi, -96(%r11)
	movq	%rdi, -32(%r11)
	movq	%rdi, -200(%r11)
	movq	%rdi, -136(%r11)
	movq	%rdi, -72(%r11)
	movq	%rdi, -8(%r11)
	movq	%rdi, -192(%r11)
	movq	%rdi, -128(%r11)
	movq	%rdi, -64(%r11)
	movq	%rdi, (%r11)
	addq	$256, %r11                      # imm = 0x100
	addq	$-4, %rbx
	jne	.LBB7_102
# %bb.103:                              # %middle.block
	cmpl	%r9d, %r10d
	movq	%r15, %r11
	movq	%r13, %r10
	je	.LBB7_110
.LBB7_95:                               # %do.body.i.i.preheader1469
	movq	%r10, %r15
	leal	-2(%r8), %r9d
	movl	%r9d, %r10d
	shrl	%r10d
	incl	%r10d
	andl	$3, %r10d
	je	.LBB7_99
# %bb.96:                               # %do.body.i.i.prol.preheader
	movq	%r11, %rbx
	addl	%r10d, %r10d
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB7_97:                               # %do.body.i.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rdi, 32(%rsi)
	movq	%rdi, 40(%rsi)
	addq	$64, %rsi
	addl	$2, %r11d
	cmpl	%r11d, %r10d
	jne	.LBB7_97
# %bb.98:                               # %do.body.i.i.prol.loopexit.loopexit
	subl	%r11d, %r8d
	movq	%rbx, %r11
.LBB7_99:                               # %do.body.i.i.prol.loopexit
	cmpl	$6, %r9d
	movq	%r15, %r10
	jb	.LBB7_110
.LBB7_100:                              # %do.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rdi, 32(%rsi)
	movq	%rdi, 40(%rsi)
	movq	%rdi, 64(%rsi)
	movq	%rdi, 72(%rsi)
	movq	%rdi, 96(%rsi)
	movq	%rdi, 104(%rsi)
	movq	%rdi, 128(%rsi)
	movq	%rdi, 136(%rsi)
	movq	%rdi, 160(%rsi)
	movq	%rdi, 168(%rsi)
	movq	%rdi, 192(%rsi)
	movq	%rdi, 200(%rsi)
	movq	%rdi, 224(%rsi)
	movq	%rdi, 232(%rsi)
	addq	$256, %rsi                      # imm = 0x100
	addl	$-8, %r8d
	jne	.LBB7_100
.LBB7_110:                              # %x264_macroblock_cache_mv.exit
	movq	40(%rsp), %r8                   # 8-byte Reload
	movswl	128(%r8), %esi
	movq	16(%rsp), %rdi                  # 8-byte Reload
	subl	%esi, %edi
	movl	%edi, %esi
	negl	%esi
	cmovsl	%edi, %esi
	cmpl	$33, %esi
	movl	$33, %edi
	cmovael	%edi, %esi
	movswl	130(%r8), %r8d
	subl	%r8d, %r10d
	movl	%r10d, %r8d
	negl	%r8d
	cmovsl	%r10d, %r8d
	cmpl	$33, %r8d
	cmovael	%edi, %r8d
	decl	%edx
	andl	$2147483647, %edx               # imm = 0x7FFFFFFF
	cmpl	$7, %edx
	movq	24(%rsp), %rbx                  # 8-byte Reload
	ja	.LBB7_122
# %bb.111:                              # %x264_macroblock_cache_mv.exit
	movabsq	$4294967297, %rdi               # imm = 0x100000001
	leaq	(%rax,%rcx,8), %r9
	addq	$12, %r9
	shll	$8, %r8d
	orl	%esi, %r8d
	movq	240(%rsp), %rsi                 # 8-byte Reload
	shlq	$4, %rsi
	movq	%rsi, %r10
	addq	%rbx, %rsi
	leaq	(%rsi,%r9,2), %rsi
	addq	$25520, %rsi                    # imm = 0x63B0
	movl	%r8d, %r9d
	shll	$16, %r9d
	addl	%r8d, %r9d
	imulq	%r9, %rdi
	jmpq	*.LJTI7_0(,%rdx,8)
.LBB7_123:                              # %if.then.i.i
	movw	%r8w, (%rsi)
	cmpl	$1, %r11d
	je	.LBB7_122
# %bb.124:                              # %if.end.i.i
	movw	%r8w, 16(%rsi)
	cmpl	$2, %r11d
	je	.LBB7_122
# %bb.125:                              # %if.end30.i.i
	movw	%r8w, 32(%rsi)
	movw	%r8w, 48(%rsi)
	jmp	.LBB7_122
.LBB7_129:                              # %if.then63.i.i1327
	movq	%rdi, (%rsi)
	cmpl	$1, %r11d
	je	.LBB7_122
# %bb.130:                              # %if.end70.i.i1329
	movq	%rdi, 16(%rsi)
	cmpl	$2, %r11d
	je	.LBB7_122
# %bb.131:                              # %if.end77.i.i1332
	movq	%rdi, 32(%rsi)
	movq	%rdi, 48(%rsi)
	jmp	.LBB7_122
.LBB7_126:                              # %if.then39.i.i1335
	movl	%r9d, (%rsi)
	cmpl	$1, %r11d
	je	.LBB7_122
# %bb.127:                              # %if.end46.i.i1337
	movl	%r9d, 16(%rsi)
	cmpl	$2, %r11d
	je	.LBB7_122
# %bb.128:                              # %if.end53.i.i1340
	movl	%r9d, 32(%rsi)
	movl	%r9d, 48(%rsi)
	jmp	.LBB7_122
.LBB7_112:                              # %do.body.i.i1318.preheader
	leal	-2(%r11), %edx
	cmpl	$5, %edx
	jbe	.LBB7_113
# %bb.119:                              # %vector.ph1450
	shrl	%edx
	incl	%edx
	movl	%edx, %r8d
	andl	$-4, %r8d
	movq	%r8, %r9
	shlq	$5, %r9
	addq	%r9, %rsi
	subl	%r8d, %r11d
	subl	%r8d, %r11d
	shll	$4, %ecx
	addq	%rcx, %r10
	leaq	(%r10,%rax,2), %rax
	addq	%rbx, %rax
	addq	$25664, %rax                    # imm = 0x6440
	movq	%r8, %rcx
.LBB7_120:                              # %vector.body1458
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, -120(%rax)
	movq	%rdi, -88(%rax)
	movq	%rdi, -56(%rax)
	movq	%rdi, -24(%rax)
	movq	%rdi, -112(%rax)
	movq	%rdi, -80(%rax)
	movq	%rdi, -48(%rax)
	movq	%rdi, -16(%rax)
	movq	%rdi, -104(%rax)
	movq	%rdi, -72(%rax)
	movq	%rdi, -40(%rax)
	movq	%rdi, -8(%rax)
	movq	%rdi, -96(%rax)
	movq	%rdi, -64(%rax)
	movq	%rdi, -32(%rax)
	movq	%rdi, (%rax)
	subq	$-128, %rax
	addq	$-4, %rcx
	jne	.LBB7_120
# %bb.121:                              # %middle.block1447
	cmpl	%edx, %r8d
	je	.LBB7_122
.LBB7_113:                              # %do.body.i.i1318.preheader1468
	leal	-2(%r11), %eax
	movl	%eax, %ecx
	shrl	%ecx
	incl	%ecx
	andl	$3, %ecx
	je	.LBB7_117
# %bb.114:                              # %do.body.i.i1318.prol.preheader
	addl	%ecx, %ecx
	xorl	%edx, %edx
.LBB7_115:                              # %do.body.i.i1318.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rdi, 16(%rsi)
	movq	%rdi, 24(%rsi)
	addq	$32, %rsi
	addl	$2, %edx
	cmpl	%edx, %ecx
	jne	.LBB7_115
# %bb.116:                              # %do.body.i.i1318.prol.loopexit.loopexit
	subl	%edx, %r11d
.LBB7_117:                              # %do.body.i.i1318.prol.loopexit
	cmpl	$6, %eax
	jb	.LBB7_122
.LBB7_118:                              # %do.body.i.i1318
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rdi, 16(%rsi)
	movq	%rdi, 24(%rsi)
	movq	%rdi, 32(%rsi)
	movq	%rdi, 40(%rsi)
	movq	%rdi, 48(%rsi)
	movq	%rdi, 56(%rsi)
	movq	%rdi, 64(%rsi)
	movq	%rdi, 72(%rsi)
	movq	%rdi, 80(%rsi)
	movq	%rdi, 88(%rsi)
	movq	%rdi, 96(%rsi)
	movq	%rdi, 104(%rsi)
	movq	%rdi, 112(%rsi)
	movq	%rdi, 120(%rsi)
	subq	$-128, %rsi
	addl	$-8, %r11d
	jne	.LBB7_118
	jmp	.LBB7_122
.Lfunc_end7:
	.size	x264_me_refine_qpel_rd, .Lfunc_end7-x264_me_refine_qpel_rd
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI7_0:
	.quad	.LBB7_123
	.quad	.LBB7_126
	.quad	.LBB7_122
	.quad	.LBB7_129
	.quad	.LBB7_122
	.quad	.LBB7_122
	.quad	.LBB7_122
	.quad	.LBB7_112
                                        # -- End function
	.type	x264_pixel_size,@object         # @x264_pixel_size
	.p2align	4, 0x0
x264_pixel_size:
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	16                              # 0x10
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	4                               # 0x4
	.long	4                               # 0x4
	.long	8                               # 0x8
	.long	4                               # 0x4
	.long	4                               # 0x4
	.size	x264_pixel_size, 56

	.type	hex2,@object                    # @hex2
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
hex2:
	.ascii	"\377\376"
	.asciz	"\376"
	.ascii	"\377\002"
	.ascii	"\001\002"
	.asciz	"\002"
	.ascii	"\001\376"
	.ascii	"\377\376"
	.asciz	"\376"
	.size	hex2, 16

	.type	mod6m1,@object                  # @mod6m1
	.section	.rodata.cst8,"aM",@progbits,8
mod6m1:
	.asciz	"\005\000\001\002\003\004\005"
	.size	mod6m1, 8

	.type	square1,@object                 # @square1
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
square1:
	.zero	2
	.ascii	"\000\377"
	.ascii	"\000\001"
	.asciz	"\377"
	.asciz	"\001"
	.zero	2,255
	.ascii	"\377\001"
	.ascii	"\001\377"
	.zero	2,1
	.size	square1, 18

	.type	x264_me_search_ref.x264_pixel_size_shift,@object # @x264_me_search_ref.x264_pixel_size_shift
x264_me_search_ref.x264_pixel_size_shift:
	.ascii	"\000\001\001\002\003\003\004"
	.size	x264_me_search_ref.x264_pixel_size_shift, 7

	.type	x264_me_search_ref.range_mul,@object # @x264_me_search_ref.range_mul
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
x264_me_search_ref.range_mul:
	.ascii	"\003\003\004\004"
	.ascii	"\003\004\004\004"
	.ascii	"\004\004\004\005"
	.ascii	"\004\004\005\006"
	.size	x264_me_search_ref.range_mul, 16

	.type	x264_me_search_ref.hex4,@object # @x264_me_search_ref.hex4
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0
x264_me_search_ref.hex4:
	.ascii	"\000\374"
	.ascii	"\000\004"
	.ascii	"\376\375"
	.ascii	"\002\375"
	.ascii	"\374\376"
	.ascii	"\004\376"
	.ascii	"\374\377"
	.ascii	"\004\377"
	.asciz	"\374"
	.asciz	"\004"
	.ascii	"\374\001"
	.ascii	"\004\001"
	.ascii	"\374\002"
	.ascii	"\004\002"
	.ascii	"\376\003"
	.ascii	"\002\003"
	.size	x264_me_search_ref.hex4, 32

	.type	x264_me_search_ref.zero,@object # @x264_me_search_ref.zero
	.local	x264_me_search_ref.zero
	.comm	x264_me_search_ref.zero,128,16
	.type	subpel_iterations,@object       # @subpel_iterations
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
subpel_iterations:
	.zero	4
	.asciz	"\001\001\000"
	.asciz	"\000\001\001"
	.asciz	"\000\002\001"
	.ascii	"\000\002\001\001"
	.ascii	"\000\002\001\002"
	.ascii	"\000\000\002\002"
	.ascii	"\000\000\002\002"
	.ascii	"\000\000\004\n"
	.ascii	"\000\000\004\n"
	.ascii	"\000\000\004\n"
	.size	subpel_iterations, 44

	.type	x264_iter_kludge,@object        # @x264_iter_kludge
	.bss
	.globl	x264_iter_kludge
	.p2align	2, 0x0
x264_iter_kludge:
	.long	0                               # 0x0
	.size	x264_iter_kludge, 4

	.type	x264_scan8,@object              # @x264_scan8
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_scan8:
	.long	12                              # 0xc
	.long	13                              # 0xd
	.long	20                              # 0x14
	.long	21                              # 0x15
	.long	14                              # 0xe
	.long	15                              # 0xf
	.long	22                              # 0x16
	.long	23                              # 0x17
	.long	28                              # 0x1c
	.long	29                              # 0x1d
	.long	36                              # 0x24
	.long	37                              # 0x25
	.long	30                              # 0x1e
	.long	31                              # 0x1f
	.long	38                              # 0x26
	.long	39                              # 0x27
	.long	9                               # 0x9
	.long	10                              # 0xa
	.long	17                              # 0x11
	.long	18                              # 0x12
	.long	33                              # 0x21
	.long	34                              # 0x22
	.long	41                              # 0x29
	.long	42                              # 0x2a
	.long	44                              # 0x2c
	.long	46                              # 0x2e
	.long	47                              # 0x2f
	.size	x264_scan8, 108

	.type	block_idx_xy_fdec,@object       # @block_idx_xy_fdec
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0
block_idx_xy_fdec:
	.short	0                               # 0x0
	.short	4                               # 0x4
	.short	128                             # 0x80
	.short	132                             # 0x84
	.short	8                               # 0x8
	.short	12                              # 0xc
	.short	136                             # 0x88
	.short	140                             # 0x8c
	.short	256                             # 0x100
	.short	260                             # 0x104
	.short	384                             # 0x180
	.short	388                             # 0x184
	.short	264                             # 0x108
	.short	268                             # 0x10c
	.short	392                             # 0x188
	.short	396                             # 0x18c
	.size	block_idx_xy_fdec, 32

	.type	block_idx_x,@object             # @block_idx_x
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
block_idx_x:
	.ascii	"\000\001\000\001\002\003\002\003\000\001\000\001\002\003\002\003"
	.size	block_idx_x, 16

	.type	block_idx_y,@object             # @block_idx_y
	.p2align	4, 0x0
block_idx_y:
	.ascii	"\000\000\001\001\000\000\001\001\002\002\003\003\002\002\003\003"
	.size	block_idx_y, 16

	.type	x264_me_refine_bidir.dia4d,@object # @x264_me_refine_bidir.dia4d
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
x264_me_refine_bidir.dia4d:
	.zero	4
	.ascii	"\000\000\000\001"
	.ascii	"\000\000\000\377"
	.asciz	"\000\000\001"
	.asciz	"\000\000\377"
	.asciz	"\000\001\000"
	.asciz	"\000\377\000"
	.asciz	"\001\000\000"
	.asciz	"\377\000\000"
	.ascii	"\000\000\001\001"
	.ascii	"\000\000\377\377"
	.asciz	"\000\001\001"
	.asciz	"\000\377\377"
	.asciz	"\001\001\000"
	.asciz	"\377\377\000"
	.ascii	"\001\000\000\001"
	.ascii	"\377\000\000\377"
	.ascii	"\000\001\000\001"
	.ascii	"\000\377\000\377"
	.asciz	"\001\000\001"
	.asciz	"\377\000\377"
	.ascii	"\000\000\377\001"
	.ascii	"\000\000\001\377"
	.asciz	"\000\377\001"
	.asciz	"\000\001\377"
	.asciz	"\377\001\000"
	.asciz	"\001\377\000"
	.ascii	"\001\000\000\377"
	.ascii	"\377\000\000\001"
	.ascii	"\000\377\000\001"
	.ascii	"\000\001\000\377"
	.asciz	"\377\000\001"
	.asciz	"\001\000\377"
	.size	x264_me_refine_bidir.dia4d, 132

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
