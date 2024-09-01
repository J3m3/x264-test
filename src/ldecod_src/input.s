	.text
	.file	"input.c"
	.globl	initInput                       # -- Begin function initInput
	.p2align	4, 0x90
	.type	initInput,@function
initInput:                              # @initInput
	.cfi_startproc
# %bb.0:                                # %entry
	movl	88(%rsi), %eax
	cmpl	88(%rdx), %eax
	jne	.LBB0_2
# %bb.1:                                # %land.lhs.true
	movl	92(%rsi), %ecx
	movl	$buf2img_basic, %eax
	cmpl	92(%rdx), %ecx
	je	.LBB0_3
.LBB0_2:                                # %if.else10
	movl	$buf2img_bitshift, %eax
.LBB0_3:                                # %if.end12
	movq	%rax, 856736(%rdi)
	retq
.Lfunc_end0:
	.size	initInput, .Lfunc_end0-initInput
	.cfi_endproc
                                        # -- End function
	.globl	testEndian                      # -- Begin function testEndian
	.p2align	4, 0x90
	.type	testEndian,@function
testEndian:                             # @testEndian
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	testEndian, .Lfunc_end1-testEndian
	.cfi_endproc
                                        # -- End function
	.globl	buf2img_endian                  # -- Begin function buf2img_endian
	.p2align	4, 0x90
	.type	buf2img_endian,@function
buf2img_endian:                         # @buf2img_endian
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
	movl	%r9d, %r12d
	movl	%r8d, %r13d
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	64(%rsp), %ebp
	cmpl	$3, %ebp
	jge	.LBB2_1
# %bb.2:                                # %if.end
	xorl	%ebx, %r13d
	xorl	%ecx, %r12d
	orl	%r13d, %r12d
	jne	.LBB2_3
.LBB2_4:                                # %if.end4
	cmpl	$1, %ebp
	je	.LBB2_23
.LBB2_5:                                # %if.end4
	cmpl	$2, %ebp
	je	.LBB2_16
# %bb.6:                                # %if.end4
	cmpl	$4, %ebp
	jne	.LBB2_32
# %bb.7:                                # %for.cond42.preheader
	testl	%ecx, %ecx
	setle	%al
	testl	%ebx, %ebx
	setle	%dl
	orb	%al, %dl
	jne	.LBB2_31
# %bb.8:                                # %for.cond46.preheader.us.preheader
	movl	%ebx, %eax
	movl	%ecx, %ecx
	movl	%eax, %edx
	andl	$2147483646, %edx               # imm = 0x7FFFFFFE
	leaq	(,%rax,4), %rsi
	movl	$4, %edi
	xorl	%r8d, %r8d
	jmp	.LBB2_9
	.p2align	4, 0x90
.LBB2_15:                               # %for.cond46.for.inc74_crit_edge.us
                                        #   in Loop: Header=BB2_9 Depth=1
	incq	%r8
	addq	%rsi, %rdi
	cmpq	%rcx, %r8
	je	.LBB2_31
.LBB2_9:                                # %for.cond46.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_12 Depth 2
	cmpl	$1, %ebx
	jne	.LBB2_11
# %bb.10:                               #   in Loop: Header=BB2_9 Depth=1
	xorl	%r9d, %r9d
	jmp	.LBB2_13
	.p2align	4, 0x90
.LBB2_11:                               # %for.body49.us.preheader
                                        #   in Loop: Header=BB2_9 Depth=1
	movq	%rdi, %r10
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB2_12:                               # %for.body49.us
                                        #   Parent Loop BB2_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-4(%r10), %r11d
	andl	$-4, %r11d
	movl	(%r14,%r11), %r11d
	bswapl	%r11d
	movq	(%r15,%r8,8), %r12
	movw	%r11w, (%r12,%r9,2)
	movl	%r10d, %r11d
	andl	$-4, %r11d
	movl	(%r14,%r11), %r11d
	bswapl	%r11d
	movq	(%r15,%r8,8), %r12
	movw	%r11w, 2(%r12,%r9,2)
	addq	$2, %r9
	addq	$8, %r10
	cmpq	%r9, %rdx
	jne	.LBB2_12
.LBB2_13:                               # %for.cond46.for.inc74_crit_edge.us.unr-lcssa
                                        #   in Loop: Header=BB2_9 Depth=1
	testb	$1, %al
	je	.LBB2_15
# %bb.14:                               # %for.body49.us.epil
                                        #   in Loop: Header=BB2_9 Depth=1
	movq	%r8, %r10
	imulq	%rax, %r10
	addl	%r9d, %r10d
	shll	$2, %r10d
	movl	(%r14,%r10), %r10d
	bswapl	%r10d
	movq	(%r15,%r8,8), %r11
	movw	%r10w, (%r11,%r9,2)
	jmp	.LBB2_15
.LBB2_1:                                # %if.then
	movl	$.L.str, %edi
	movl	$500, %esi                      # imm = 0x1F4
	movl	%ecx, 4(%rsp)                   # 4-byte Spill
	callq	error@PLT
	movl	4(%rsp), %ecx                   # 4-byte Reload
	xorl	%ebx, %r13d
	xorl	%ecx, %r12d
	orl	%r13d, %r12d
	je	.LBB2_4
.LBB2_3:                                # %if.then3
	movl	$.L.str.1, %edi
	movl	$500, %esi                      # imm = 0x1F4
	movl	%ecx, %r12d
	callq	error@PLT
	movl	%r12d, %ecx
	cmpl	$1, %ebp
	jne	.LBB2_5
.LBB2_23:                               # %for.cond.preheader
	testl	%ecx, %ecx
	setle	%al
	testl	%ebx, %ebx
	setle	%dl
	orb	%al, %dl
	jne	.LBB2_31
# %bb.24:                               # %for.cond6.preheader.us.preheader
	movl	%ebx, %eax
	movl	%ecx, %ecx
	movl	%eax, %edx
	andl	$3, %edx
	movl	%eax, %esi
	andl	$2147483644, %esi               # imm = 0x7FFFFFFC
	leaq	3(%r14), %rdi
	xorl	%r8d, %r8d
	jmp	.LBB2_25
	.p2align	4, 0x90
.LBB2_30:                               # %for.cond6.for.inc13_crit_edge.us
                                        #   in Loop: Header=BB2_25 Depth=1
	incq	%r8
	addq	%rax, %rdi
	addq	%rax, %r14
	cmpq	%rcx, %r8
	je	.LBB2_31
.LBB2_25:                               # %for.cond6.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_26 Depth 2
                                        #     Child Loop BB2_29 Depth 2
	xorl	%r9d, %r9d
	cmpl	$4, %ebx
	jb	.LBB2_27
	.p2align	4, 0x90
.LBB2_26:                               # %for.body8.us
                                        #   Parent Loop BB2_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-3(%rdi,%r9), %r10d
	movq	(%r15,%r8,8), %r11
	movw	%r10w, (%r11,%r9,2)
	movzbl	-2(%rdi,%r9), %r10d
	movq	(%r15,%r8,8), %r11
	movw	%r10w, 2(%r11,%r9,2)
	movzbl	-1(%rdi,%r9), %r10d
	movq	(%r15,%r8,8), %r11
	movw	%r10w, 4(%r11,%r9,2)
	movzbl	(%rdi,%r9), %r10d
	movq	(%r15,%r8,8), %r11
	movw	%r10w, 6(%r11,%r9,2)
	addq	$4, %r9
	cmpq	%r9, %rsi
	jne	.LBB2_26
.LBB2_27:                               # %for.cond6.for.inc13_crit_edge.us.unr-lcssa
                                        #   in Loop: Header=BB2_25 Depth=1
	testq	%rdx, %rdx
	je	.LBB2_30
# %bb.28:                               # %for.body8.us.epil.preheader
                                        #   in Loop: Header=BB2_25 Depth=1
	movq	%rdx, %r10
	.p2align	4, 0x90
.LBB2_29:                               # %for.body8.us.epil
                                        #   Parent Loop BB2_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r14,%r9), %r11d
	movq	(%r15,%r8,8), %r12
	movw	%r11w, (%r12,%r9,2)
	incq	%r9
	decq	%r10
	jne	.LBB2_29
	jmp	.LBB2_30
.LBB2_16:                               # %for.cond17.preheader
	testl	%ecx, %ecx
	setle	%al
	testl	%ebx, %ebx
	setle	%dl
	orb	%al, %dl
	jne	.LBB2_31
# %bb.17:                               # %for.cond21.preheader.us.preheader
	movl	%ebx, %eax
	movl	%ecx, %ecx
	movl	%eax, %edx
	andl	$2147483646, %edx               # imm = 0x7FFFFFFE
	leaq	2(%r14), %rsi
	leaq	(%rax,%rax), %rdi
	xorl	%r8d, %r8d
	jmp	.LBB2_18
	.p2align	4, 0x90
.LBB2_22:                               # %for.cond21.for.inc38_crit_edge.us
                                        #   in Loop: Header=BB2_18 Depth=1
	incq	%r8
	addq	%rdi, %rsi
	cmpq	%rcx, %r8
	je	.LBB2_31
.LBB2_18:                               # %for.cond21.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_19 Depth 2
	xorl	%r9d, %r9d
	cmpl	$1, %ebx
	je	.LBB2_20
	.p2align	4, 0x90
.LBB2_19:                               # %for.body24.us
                                        #   Parent Loop BB2_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	-2(%rsi,%r9,2), %r10d
	rolw	$8, %r10w
	movq	(%r15,%r8,8), %r11
	movw	%r10w, (%r11,%r9,2)
	movzwl	(%rsi,%r9,2), %r10d
	rolw	$8, %r10w
	movq	(%r15,%r8,8), %r11
	movw	%r10w, 2(%r11,%r9,2)
	addq	$2, %r9
	cmpq	%r9, %rdx
	jne	.LBB2_19
.LBB2_20:                               # %for.cond21.for.inc38_crit_edge.us.unr-lcssa
                                        #   in Loop: Header=BB2_18 Depth=1
	testb	$1, %al
	je	.LBB2_22
# %bb.21:                               # %for.body24.us.epil
                                        #   in Loop: Header=BB2_18 Depth=1
	movq	%r8, %r10
	imulq	%rax, %r10
	addq	%r9, %r10
	movzwl	(%r14,%r10,2), %r10d
	rolw	$8, %r10w
	movq	(%r15,%r8,8), %r11
	movw	%r10w, (%r11,%r9,2)
	jmp	.LBB2_22
.LBB2_31:                               # %sw.epilog
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
.LBB2_32:                               # %sw.default
	.cfi_def_cfa_offset 64
	movl	$.L.str.2, %edi
	movl	$500, %esi                      # imm = 0x1F4
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
	jmp	error@PLT                       # TAILCALL
.Lfunc_end2:
	.size	buf2img_endian, .Lfunc_end2-buf2img_endian
	.cfi_endproc
                                        # -- End function
	.globl	buf2img_basic                   # -- Begin function buf2img_basic
	.p2align	4, 0x90
	.type	buf2img_basic,@function
buf2img_basic:                          # @buf2img_basic
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
	movl	%r9d, %r13d
	movl	%r8d, %r12d
	movl	%ecx, %ebx
	movl	%edx, %ebp
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	movl	192(%rsp), %r14d
	cmpl	$3, %r14d
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	jl	.LBB3_7
# %bb.1:                                # %if.end.thread
	movl	$.L.str, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
	movl	%r14d, %eax
	jmp	.LBB3_2
.LBB3_7:                                # %if.end
	cmpl	$2, %r14d
	jne	.LBB3_8
# %bb.9:                                # %if.then3
	movl	%r12d, %eax
	xorl	%ebp, %eax
	movl	%r13d, %ecx
	xorl	%ebx, %ecx
	orl	%eax, %ecx
	jne	.LBB3_12
# %bb.10:                               # %if.then8
	movq	(%rdi), %rdi
	imull	%ebp, %ebx
	movslq	%ebx, %rdx
	addq	%rdx, %rdx
	movq	16(%rsp), %rsi                  # 8-byte Reload
	jmp	.LBB3_11
.LBB3_8:
	movslq	%r14d, %rax
.LBB3_2:                                # %if.else64
	movl	%r14d, 24(%rsp)                 # 4-byte Spill
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movl	%r12d, %eax
	xorl	%ebp, %eax
	movl	%r13d, %ecx
	xorl	%ebx, %ecx
	orl	%eax, %ecx
	jne	.LBB3_23
# %bb.3:                                # %for.cond71.preheader
	testl	%ebx, %ebx
	setle	%al
	testl	%ebp, %ebp
	setle	%cl
	orb	%al, %cl
	jne	.LBB3_39
# %bb.4:                                # %for.body74.us.preheader
	movslq	24(%rsp), %r15                  # 4-byte Folded Reload
	movl	%ebp, %eax
	movl	%ebx, %ecx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movl	%eax, %ecx
	andl	$2147483646, %ecx               # imm = 0x7FFFFFFE
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	%r15, %rcx
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	imulq	%rax, %rcx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	leaq	(%r15,%r15), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	xorl	%ebx, %ebx
	leaq	14(%rsp), %r13
	movq	16(%rsp), %r12                  # 8-byte Reload
	movl	%ebp, 104(%rsp)                 # 4-byte Spill
	movq	%r15, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB3_5
	.p2align	4, 0x90
.LBB3_22:                               # %for.cond76.for.inc90_crit_edge.us
                                        #   in Loop: Header=BB3_5 Depth=1
	incq	%rbx
	movq	24(%rsp), %r12                  # 8-byte Reload
	addq	96(%rsp), %r12                  # 8-byte Folded Reload
	cmpq	80(%rsp), %rbx                  # 8-byte Folded Reload
	movl	104(%rsp), %ebp                 # 4-byte Reload
	je	.LBB3_39
.LBB3_5:                                # %for.body74.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_19 Depth 2
	cmpl	$1, %ebp
	movq	%r12, 24(%rsp)                  # 8-byte Spill
	jne	.LBB3_18
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	xorl	%r14d, %r14d
	jmp	.LBB3_20
	.p2align	4, 0x90
.LBB3_18:                               # %for.body79.us.preheader
                                        #   in Loop: Header=BB3_5 Depth=1
	xorl	%r14d, %r14d
	movq	72(%rsp), %rbp                  # 8-byte Reload
	movq	56(%rsp), %r15                  # 8-byte Reload
	.p2align	4, 0x90
.LBB3_19:                               # %for.body79.us
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	$0, 14(%rsp)
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	memcpy@PLT
	movzwl	14(%rsp), %eax
	movq	(%r15,%rbx,8), %rcx
	movw	%ax, (%rcx,%r14,2)
	movw	$0, 14(%rsp)
	movq	48(%rsp), %rax                  # 8-byte Reload
	leaq	(%r12,%rax), %rsi
	movq	%r13, %rdi
	movq	%rbp, %rdx
	callq	memcpy@PLT
	movzwl	14(%rsp), %eax
	movq	(%r15,%rbx,8), %rcx
	movw	%ax, 2(%rcx,%r14,2)
	addq	$2, %r14
	addq	32(%rsp), %r12                  # 8-byte Folded Reload
	cmpq	%r14, 40(%rsp)                  # 8-byte Folded Reload
	jne	.LBB3_19
.LBB3_20:                               # %for.cond76.for.inc90_crit_edge.us.unr-lcssa
                                        #   in Loop: Header=BB3_5 Depth=1
	testb	$1, 64(%rsp)                    # 1-byte Folded Reload
	movq	48(%rsp), %r15                  # 8-byte Reload
	je	.LBB3_22
# %bb.21:                               # %for.body79.us.epil
                                        #   in Loop: Header=BB3_5 Depth=1
	movq	%rbx, %rsi
	imulq	64(%rsp), %rsi                  # 8-byte Folded Reload
	movw	$0, 14(%rsp)
	addq	%r14, %rsi
	imulq	%r15, %rsi
	addq	16(%rsp), %rsi                  # 8-byte Folded Reload
	movq	%r13, %rdi
	movq	72(%rsp), %rdx                  # 8-byte Reload
	callq	memcpy@PLT
	movzwl	14(%rsp), %eax
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx,%rbx,8), %rcx
	movw	%ax, (%rcx,%r14,2)
	jmp	.LBB3_22
.LBB3_23:                               # %if.else93
	movl	%ebp, %eax
	subl	%r12d, %eax
	movl	%r12d, %edx
	cmovll	%ebp, %edx
	negl	%eax
	movl	%ebx, %ecx
	subl	%r13d, %ecx
	movl	%r13d, %esi
	cmovll	%ebx, %esi
	negl	%ecx
	sarl	%eax
	xorl	%edi, %edi
	cmpl	%ebp, %r12d
	cmovll	%edi, %eax
	sarl	%ecx
	cmpl	%ebx, %r13d
	cmovll	%edi, %ecx
	leal	(%rax,%rdx), %edi
	movl	%r12d, %r8d
	subl	%eax, %r8d
	cmpl	%r12d, %edi
	cmovlel	%edx, %r8d
	leal	(%rcx,%rsi), %edx
	movl	%r13d, %edi
	subl	%ecx, %edi
	cmpl	%r13d, %edx
	cmovlel	%esi, %edi
	testl	%edi, %edi
	jle	.LBB3_39
# %bb.24:                               # %for.body149.lr.ph
	movslq	%eax, %rdx
	movl	%r8d, 80(%rsp)                  # 4-byte Spill
	movslq	%r8d, %rbx
	addq	%rbx, %rbx
	movslq	%ecx, %rcx
	movslq	%ebp, %r15
	movl	%edi, %eax
	movl	%edi, 64(%rsp)                  # 4-byte Spill
	cmpl	$1, %edi
	movq	%rdx, 120(%rsp)                 # 8-byte Spill
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	jne	.LBB3_40
# %bb.25:
	xorl	%r12d, %r12d
	jmp	.LBB3_26
.LBB3_12:                               # %if.else
	movl	%ebx, %eax
	subl	%r13d, %eax
	movl	%r13d, %edx
	cmovll	%ebx, %edx
	negl	%eax
	sarl	%eax
	xorl	%r14d, %r14d
	cmpl	%ebx, %r13d
	cmovll	%r14d, %eax
	leal	(%rax,%rdx), %esi
	movl	%r13d, %ecx
	subl	%eax, %ecx
	cmpl	%r13d, %esi
	cmovlel	%edx, %ecx
	testl	%ecx, %ecx
	jle	.LBB3_39
# %bb.13:                               # %for.body.lr.ph
	movl	%ebp, %edx
	subl	%r12d, %edx
	movl	%r12d, %esi
	cmovll	%ebp, %esi
	negl	%edx
	sarl	%edx
	cmpl	%ebp, %r12d
	cmovll	%r14d, %edx
	leal	(%rdx,%rsi), %r9d
	movl	%r12d, %r8d
	subl	%edx, %r8d
	cmpl	%r12d, %r9d
	cmovlel	%esi, %r8d
	movslq	%edx, %rdx
	movslq	%r8d, %rbx
	addq	%rbx, %rbx
	cltq
	movslq	%ebp, %rbp
	movl	%ecx, %esi
	cmpl	$1, %ecx
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	je	.LBB3_16
# %bb.14:                               # %for.body.lr.ph.new
                                        # kill: def $esi killed $esi killed $rsi def $rsi
	andl	$2147483646, %esi               # imm = 0x7FFFFFFE
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	leaq	(,%rbp,2), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	leaq	(%rdi,%rax,8), %r15
	addq	$8, %r15
	xorl	%r14d, %r14d
	leaq	(%rdx,%rdx), %r13
	movq	16(%rsp), %r12                  # 8-byte Reload
	.p2align	4, 0x90
.LBB3_15:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%r15,%r14,8), %rdi
	addq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	(%r15,%r14,8), %rdi
	addq	%r13, %rdi
	leaq	(%r12,%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	addq	$2, %r14
	addq	40(%rsp), %r12                  # 8-byte Folded Reload
	cmpq	%r14, 48(%rsp)                  # 8-byte Folded Reload
	jne	.LBB3_15
.LBB3_16:                               # %if.end194.loopexit.unr-lcssa
	testb	$1, 32(%rsp)                    # 1-byte Folded Reload
	movq	56(%rsp), %rax                  # 8-byte Reload
	je	.LBB3_39
# %bb.17:                               # %for.body.epil
	movq	24(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rax,%rcx,8), %rax
	movq	72(%rsp), %rdi                  # 8-byte Reload
	addq	%rdi, %rdi
	addq	(%rax,%r14,8), %rdi
	imulq	%r14, %rbp
	movq	16(%rsp), %rsi                  # 8-byte Reload
	addq	%rbp, %rsi
	movq	%rbx, %rdx
.LBB3_11:                               # %if.then8
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
	jmp	memcpy@PLT                      # TAILCALL
.LBB3_40:                               # %for.body149.lr.ph.new
	.cfi_def_cfa_offset 192
                                        # kill: def $eax killed $eax killed $rax def $rax
	andl	$2147483646, %eax               # imm = 0x7FFFFFFE
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	leaq	(%r15,%r15), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbp
	addq	$8, %rbp
	xorl	%r12d, %r12d
	leaq	(%rdx,%rdx), %r14
	movq	16(%rsp), %r13                  # 8-byte Reload
	.p2align	4, 0x90
.LBB3_41:                               # %for.body149
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp,%r12,8), %rdi
	addq	%r14, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	(%rbp,%r12,8), %rdi
	addq	%r14, %rdi
	leaq	(%r15,%r13), %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	addq	$2, %r12
	addq	40(%rsp), %r13                  # 8-byte Folded Reload
	cmpq	%r12, 48(%rsp)                  # 8-byte Folded Reload
	jne	.LBB3_41
.LBB3_26:                               # %for.cond165.preheader.unr-lcssa
	movq	%r15, 88(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	32(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rax,%rcx,8), %r13
	movq	112(%rsp), %rbp                 # 8-byte Reload
	testb	$1, %bpl
	movq	120(%rsp), %r14                 # 8-byte Reload
	je	.LBB3_28
# %bb.27:                               # %for.body149.epil
	leaq	(%r14,%r14), %rdi
	addq	(%r13,%r12,8), %rdi
	imulq	88(%rsp), %r12                  # 8-byte Folded Reload
	addq	16(%rsp), %r12                  # 8-byte Folded Reload
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
.LBB3_28:                               # %for.cond165.preheader
	movq	%r13, 32(%rsp)                  # 8-byte Spill
	cmpl	$0, 64(%rsp)                    # 4-byte Folded Reload
	movl	80(%rsp), %esi                  # 4-byte Reload
	jle	.LBB3_39
# %bb.29:                               # %for.cond165.preheader
	testl	%esi, %esi
	jle	.LBB3_39
# %bb.30:                               # %for.body168.us.preheader
	movslq	24(%rsp), %rax                  # 4-byte Folded Reload
	movl	%esi, %ecx
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	movq	%rax, %rcx
	imulq	88(%rsp), %rcx                  # 8-byte Folded Reload
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	leaq	(%rax,%rax), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movl	%esi, %ecx
	andl	$2147483646, %ecx               # imm = 0x7FFFFFFE
	negq	%rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	xorl	%ecx, %ecx
	leaq	14(%rsp), %rdi
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	jmp	.LBB3_31
	.p2align	4, 0x90
.LBB3_38:                               # %for.cond172.for.inc190_crit_edge.us
                                        #   in Loop: Header=BB3_31 Depth=1
	incq	%rcx
	addq	96(%rsp), %rdx                  # 8-byte Folded Reload
	cmpq	%rbp, %rcx
	jae	.LBB3_39
.LBB3_31:                               # %for.body168.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_34 Depth 2
	cmpl	$1, %esi
	jne	.LBB3_33
# %bb.32:                               #   in Loop: Header=BB3_31 Depth=1
	xorl	%r12d, %r12d
	testb	$1, 104(%rsp)                   # 1-byte Folded Reload
	je	.LBB3_38
	jmp	.LBB3_37
	.p2align	4, 0x90
.LBB3_33:                               # %for.body175.us.preheader
                                        #   in Loop: Header=BB3_31 Depth=1
	movq	%rdx, 128(%rsp)                 # 8-byte Spill
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB3_34:                               # %for.body175.us
                                        #   Parent Loop BB3_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, 48(%rsp)                  # 8-byte Spill
	movw	$0, 14(%rsp)
	leaq	14(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	72(%rsp), %r13                  # 8-byte Reload
	movq	%r13, %rdx
	callq	memcpy@PLT
	movzwl	14(%rsp), %eax
	movq	40(%rsp), %r15                  # 8-byte Reload
	movq	32(%rsp), %r12                  # 8-byte Reload
	movq	(%r12,%r15,8), %rcx
	movw	%ax, (%rcx,%r14,2)
	movw	$0, 14(%rsp)
	movq	24(%rsp), %rax                  # 8-byte Reload
	leaq	(%rbx,%rax), %rsi
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	memcpy@PLT
	movzwl	14(%rsp), %eax
	movq	(%r12,%r15,8), %rcx
	movq	48(%rsp), %r12                  # 8-byte Reload
	movw	%ax, 2(%rcx,%r14,2)
	addq	$-2, %r12
	addq	$2, %r14
	addq	64(%rsp), %rbx                  # 8-byte Folded Reload
	cmpq	%r12, 56(%rsp)                  # 8-byte Folded Reload
	jne	.LBB3_34
# %bb.35:                               # %for.cond172.for.inc190_crit_edge.us.unr-lcssa.loopexit
                                        #   in Loop: Header=BB3_31 Depth=1
	negq	%r12
	movl	80(%rsp), %esi                  # 4-byte Reload
	movq	120(%rsp), %r14                 # 8-byte Reload
	movq	112(%rsp), %rbp                 # 8-byte Reload
	movq	24(%rsp), %rax                  # 8-byte Reload
	leaq	14(%rsp), %rdi
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	128(%rsp), %rdx                 # 8-byte Reload
	testb	$1, 104(%rsp)                   # 1-byte Folded Reload
	je	.LBB3_38
.LBB3_37:                               # %for.body175.us.epil
                                        #   in Loop: Header=BB3_31 Depth=1
	movq	%rcx, %rsi
	imulq	88(%rsp), %rsi                  # 8-byte Folded Reload
	movw	$0, 14(%rsp)
	addq	%r12, %rsi
	imulq	%rax, %rsi
	addq	16(%rsp), %rsi                  # 8-byte Folded Reload
	movq	%rdx, %r15
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r13
	movq	%r14, %rbx
	movq	%rcx, %r14
	callq	memcpy@PLT
	movl	80(%rsp), %esi                  # 4-byte Reload
	movq	%r15, %rdx
	movzwl	14(%rsp), %eax
	addq	%r12, %r12
	movq	32(%rsp), %rcx                  # 8-byte Reload
	addq	(%rcx,%r14,8), %r12
	movq	%r14, %rcx
	movq	%rbx, %r14
	movw	%ax, (%r12,%rbx,2)
	movq	%r13, %rax
	leaq	14(%rsp), %rdi
	jmp	.LBB3_38
.LBB3_39:                               # %if.end194
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
.Lfunc_end3:
	.size	buf2img_basic, .Lfunc_end3-buf2img_basic
	.cfi_endproc
                                        # -- End function
	.globl	buf2img_bitshift                # -- Begin function buf2img_bitshift
	.p2align	4, 0x90
	.type	buf2img_bitshift,@function
buf2img_bitshift:                       # @buf2img_bitshift
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
	movl	%r9d, %r12d
	movl	%r8d, %ebp
	movl	%ecx, %r13d
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	movq	%rdi, %r14
	movl	200(%rsp), %ecx
	movl	192(%rsp), %ebx
	leal	(,%rbx,8), %eax
	subl	%ecx, %eax
	cmpl	$17, %eax
	jl	.LBB4_2
# %bb.1:                                # %if.then
	movl	$.L.str, %edi
	movl	$500, %esi                      # imm = 0x1F4
	movl	%edx, %r15d
	callq	error@PLT
	movl	%r15d, %edx
.LBB4_2:                                # %if.end
	movq	%r14, 24(%rsp)                  # 8-byte Spill
	movl	%ebp, %eax
	xorl	%edx, %eax
	movl	%r12d, %ecx
	xorl	%r13d, %ecx
	orl	%eax, %ecx
	jne	.LBB4_18
# %bb.3:                                # %for.cond91.preheader
	testl	%r13d, %r13d
	jle	.LBB4_34
# %bb.4:                                # %for.body94.lr.ph
	movl	200(%rsp), %eax
	leal	-1(%rax), %ecx
	movl	$1, %r12d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r12d
	testl	%edx, %edx
	jle	.LBB4_34
# %bb.5:                                # %for.body94.lr.ph.split.us
	movslq	%ebx, %rdi
	movl	%edx, %ecx
	movl	%r13d, %eax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movl	200(%rsp), %r14d
	movq	%r14, %rax
	testl	%eax, %eax
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	%rdi, 40(%rsp)                  # 8-byte Spill
	jle	.LBB4_10
# %bb.6:                                # %for.body94.us.us.preheader
	imulq	%rcx, %rdi
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	xorl	%r13d, %r13d
	leaq	14(%rsp), %r15
	movq	40(%rsp), %r14                  # 8-byte Reload
	.p2align	4, 0x90
.LBB4_7:                                # %for.body94.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_8 Depth 2
	movq	32(%rsp), %rbp                  # 8-byte Reload
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB4_8:                                # %for.body99.us.us.us
                                        #   Parent Loop BB4_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	$0, 14(%rsp)
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	movzwl	14(%rsp), %eax
	addl	%r12d, %eax
	movl	200(%rsp), %ecx
                                        # kill: def $cl killed $cl killed $rcx
	sarl	%cl, %eax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx,%r13,8), %rcx
	movw	%ax, (%rcx,%rbx,2)
	incq	%rbx
	addq	%r14, %rbp
	cmpq	%rbx, 56(%rsp)                  # 8-byte Folded Reload
	jne	.LBB4_8
# %bb.9:                                # %for.cond96.for.inc115_crit_edge.split.us.us.us
                                        #   in Loop: Header=BB4_7 Depth=1
	incq	%r13
	movq	16(%rsp), %rax                  # 8-byte Reload
	addq	%rax, 32(%rsp)                  # 8-byte Folded Spill
	cmpq	96(%rsp), %r13                  # 8-byte Folded Reload
	jne	.LBB4_7
	jmp	.LBB4_34
.LBB4_18:                               # %if.else118
	movl	%edx, %r8d
	subl	%ebp, %r8d
	movl	%ebp, %ecx
	cmovll	%edx, %ecx
	negl	%r8d
	movl	%r13d, %eax
	subl	%r12d, %eax
	movl	%r12d, %edi
	cmovll	%r13d, %edi
	negl	%eax
	sarl	%r8d
	xorl	%esi, %esi
	cmpl	%edx, %ebp
	cmovll	%esi, %r8d
	sarl	%eax
	cmpl	%r13d, %r12d
	cmovll	%esi, %eax
	leal	(%r8,%rcx), %esi
	movl	%ebp, %r9d
	subl	%r8d, %r9d
	cmpl	%ebp, %esi
	cmovlel	%ecx, %r9d
	leal	(%rax,%rdi), %ecx
	movl	%r12d, %esi
	subl	%eax, %esi
	cmpl	%r12d, %ecx
	cmovlel	%edi, %esi
	testl	%esi, %esi
	jle	.LBB4_34
# %bb.19:                               # %for.body164.lr.ph
	movl	200(%rsp), %ecx
	decl	%ecx
	movl	$1, %r11d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r11d
	testl	%r9d, %r9d
	jle	.LBB4_34
# %bb.20:                               # %for.body164.lr.ph.split.us
	movslq	%ebx, %rbx
	movslq	%r8d, %rbp
	movl	%r9d, %r8d
	movslq	%edx, %r13
	movl	200(%rsp), %ecx
	testl	%ecx, %ecx
	movq	%r8, 40(%rsp)                   # 8-byte Spill
	movq	%rbx, 56(%rsp)                  # 8-byte Spill
	jle	.LBB4_21
# %bb.24:                               # %for.body164.us.us.preheader
	cltq
	movl	%esi, %ecx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rcx,%rax,8), %r12
	addq	%rbp, %rbp
	imulq	%rbx, %r13
	xorl	%r14d, %r14d
	leaq	14(%rsp), %rdi
	movq	%r13, 64(%rsp)                  # 8-byte Spill
	movl	%r11d, 16(%rsp)                 # 4-byte Spill
	movq	56(%rsp), %rbx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB4_25:                               # %for.body164.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_26 Depth 2
	movq	32(%rsp), %r13                  # 8-byte Reload
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB4_26:                               # %for.body171.us.us.us
                                        #   Parent Loop BB4_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	$0, 14(%rsp)
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movl	16(%rsp), %r11d                 # 4-byte Reload
	movzwl	14(%rsp), %eax
	addl	%r11d, %eax
	movl	200(%rsp), %ecx
                                        # kill: def $cl killed $cl killed $rcx
	sarl	%cl, %eax
	movq	(%r12,%r14,8), %rcx
	addq	%rbp, %rcx
	movw	%ax, (%rcx,%r15,2)
	leaq	14(%rsp), %rdi
	incq	%r15
	addq	%rbx, %r13
	cmpq	40(%rsp), %r15                  # 8-byte Folded Reload
	jb	.LBB4_26
# %bb.27:                               # %for.cond168.for.inc189_crit_edge.split.us.us.us
                                        #   in Loop: Header=BB4_25 Depth=1
	incq	%r14
	movq	64(%rsp), %r13                  # 8-byte Reload
	addq	%r13, 32(%rsp)                  # 8-byte Folded Spill
	cmpq	48(%rsp), %r14                  # 8-byte Folded Reload
	jb	.LBB4_25
.LBB4_34:                               # %if.end193
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
.LBB4_10:                               # %for.body94.us.preheader
	.cfi_def_cfa_offset 192
	negl	%eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movl	%ecx, %eax
	andl	$2147483646, %eax               # imm = 0x7FFFFFFE
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	%rdi, %rax
	imulq	%rcx, %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	leaq	(%rdi,%rdi), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	xorl	%ebx, %ebx
	movq	32(%rsp), %rbp                  # 8-byte Reload
	movl	%edx, 88(%rsp)                  # 4-byte Spill
	movq	24(%rsp), %r13                  # 8-byte Reload
	jmp	.LBB4_11
	.p2align	4, 0x90
.LBB4_17:                               # %for.cond96.for.inc115_crit_edge.split.us361
                                        #   in Loop: Header=BB4_11 Depth=1
	incq	%rbx
	movq	64(%rsp), %rbp                  # 8-byte Reload
	addq	80(%rsp), %rbp                  # 8-byte Folded Reload
	cmpq	96(%rsp), %rbx                  # 8-byte Folded Reload
	movl	88(%rsp), %edx                  # 4-byte Reload
	je	.LBB4_34
.LBB4_11:                               # %for.body94.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_14 Depth 2
	cmpl	$1, %edx
	movq	%rbp, 64(%rsp)                  # 8-byte Spill
	movq	%rbx, 48(%rsp)                  # 8-byte Spill
	jne	.LBB4_13
# %bb.12:                               #   in Loop: Header=BB4_11 Depth=1
	xorl	%r15d, %r15d
	movq	16(%rsp), %r14                  # 8-byte Reload
	jmp	.LBB4_15
	.p2align	4, 0x90
.LBB4_13:                               # %for.body99.us348.preheader
                                        #   in Loop: Header=BB4_11 Depth=1
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB4_14:                               # %for.body99.us348
                                        #   Parent Loop BB4_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	$0, 14(%rsp)
	leaq	14(%rsp), %r12
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	40(%rsp), %r14                  # 8-byte Reload
	movq	%r14, %rdx
	callq	memcpy@PLT
	movzwl	14(%rsp), %eax
	movq	16(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $cl killed $cl killed $rcx
	shll	%cl, %eax
	movq	48(%rsp), %rbx                  # 8-byte Reload
	movq	(%r13,%rbx,8), %rcx
	movw	%ax, (%rcx,%r15,2)
	movw	$0, 14(%rsp)
	leaq	(%r14,%rbp), %rsi
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	memcpy@PLT
	movq	16(%rsp), %r14                  # 8-byte Reload
	movzwl	14(%rsp), %eax
	movl	%r14d, %ecx
	shll	%cl, %eax
	movq	(%r13,%rbx,8), %rdx
	movw	%ax, 2(%rdx,%r15,2)
	addq	$2, %r15
	addq	112(%rsp), %rbp                 # 8-byte Folded Reload
	cmpq	%r15, 104(%rsp)                 # 8-byte Folded Reload
	jne	.LBB4_14
.LBB4_15:                               # %for.cond96.for.inc115_crit_edge.split.us361.unr-lcssa
                                        #   in Loop: Header=BB4_11 Depth=1
	movq	56(%rsp), %rax                  # 8-byte Reload
	testb	$1, %al
	leaq	14(%rsp), %rdi
	movq	48(%rsp), %rbx                  # 8-byte Reload
	je	.LBB4_17
# %bb.16:                               # %for.body99.us348.epil
                                        #   in Loop: Header=BB4_11 Depth=1
	movq	%rbx, %rsi
	imulq	%rax, %rsi
	movw	$0, 14(%rsp)
	addq	%r15, %rsi
	movq	40(%rsp), %rdx                  # 8-byte Reload
	imulq	%rdx, %rsi
	addq	32(%rsp), %rsi                  # 8-byte Folded Reload
	callq	memcpy@PLT
	movzwl	14(%rsp), %eax
	movl	%r14d, %ecx
	shll	%cl, %eax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx,%rbx,8), %rcx
	movw	%ax, (%rcx,%r15,2)
	jmp	.LBB4_17
.LBB4_21:                               # %for.body164.us.preheader
	negl	%ecx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movl	%esi, %r15d
	cltq
	movq	24(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rcx,%rax,8), %rcx
	movq	%rbx, %rax
	imulq	%r13, %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	leaq	(%rbx,%rbx), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movl	%r8d, %eax
	andl	$2147483646, %eax               # imm = 0x7FFFFFFE
	negq	%rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	xorl	%r14d, %r14d
	leaq	14(%rsp), %rdi
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	%rbp, 80(%rsp)                  # 8-byte Spill
	movl	%r9d, 76(%rsp)                  # 4-byte Spill
	movq	%r13, 64(%rsp)                  # 8-byte Spill
	movq	%r15, 120(%rsp)                 # 8-byte Spill
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	jmp	.LBB4_22
	.p2align	4, 0x90
.LBB4_33:                               # %for.cond168.for.inc189_crit_edge.split.us342
                                        #   in Loop: Header=BB4_22 Depth=1
	incq	%r14
	addq	128(%rsp), %rax                 # 8-byte Folded Reload
	cmpq	%r15, %r14
	jae	.LBB4_34
.LBB4_22:                               # %for.body164.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_29 Depth 2
	cmpl	$1, %r9d
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	%r14, 24(%rsp)                  # 8-byte Spill
	jne	.LBB4_28
# %bb.23:                               #   in Loop: Header=BB4_22 Depth=1
	xorl	%r12d, %r12d
	movq	16(%rsp), %rbx                  # 8-byte Reload
	testb	$1, %r8b
	je	.LBB4_33
	jmp	.LBB4_32
	.p2align	4, 0x90
.LBB4_28:                               # %for.body171.us328.preheader
                                        #   in Loop: Header=BB4_22 Depth=1
	movq	%rax, %r13
	movq	%rbp, %rbx
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB4_29:                               # %for.body171.us328
                                        #   Parent Loop BB4_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, 48(%rsp)                  # 8-byte Spill
	movw	$0, 14(%rsp)
	leaq	14(%rsp), %r12
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	56(%rsp), %r14                  # 8-byte Reload
	movq	%r14, %rdx
	callq	memcpy@PLT
	movzwl	14(%rsp), %eax
	movq	16(%rsp), %r15                  # 8-byte Reload
	movl	%r15d, %ecx
	shll	%cl, %eax
	movq	104(%rsp), %rbp                 # 8-byte Reload
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	(%rbp,%rcx,8), %rcx
	movw	%ax, (%rcx,%rbx,2)
	movw	$0, 14(%rsp)
	leaq	(%r13,%r14), %rsi
	movq	%r12, %rdi
	movq	48(%rsp), %r12                  # 8-byte Reload
	movq	%r14, %rdx
	callq	memcpy@PLT
	movzwl	14(%rsp), %eax
	movl	%r15d, %ecx
	shll	%cl, %eax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	(%rbp,%rcx,8), %rcx
	movw	%ax, 2(%rcx,%rbx,2)
	addq	$-2, %r12
	addq	$2, %rbx
	addq	112(%rsp), %r13                 # 8-byte Folded Reload
	cmpq	%r12, 96(%rsp)                  # 8-byte Folded Reload
	jne	.LBB4_29
# %bb.30:                               # %for.cond168.for.inc189_crit_edge.split.us342.unr-lcssa.loopexit
                                        #   in Loop: Header=BB4_22 Depth=1
	negq	%r12
	movq	80(%rsp), %rbp                  # 8-byte Reload
	movq	40(%rsp), %r8                   # 8-byte Reload
	movq	64(%rsp), %r13                  # 8-byte Reload
	movl	76(%rsp), %r9d                  # 4-byte Reload
	movq	120(%rsp), %r15                 # 8-byte Reload
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	24(%rsp), %r14                  # 8-byte Reload
	leaq	14(%rsp), %rdi
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	16(%rsp), %rbx                  # 8-byte Reload
	testb	$1, %r8b
	je	.LBB4_33
.LBB4_32:                               # %for.body171.us328.epil
                                        #   in Loop: Header=BB4_22 Depth=1
	movq	%r14, %rsi
	imulq	%r13, %rsi
	movw	$0, 14(%rsp)
	addq	%r12, %rsi
	movq	56(%rsp), %rdx                  # 8-byte Reload
	imulq	%rdx, %rsi
	addq	32(%rsp), %rsi                  # 8-byte Folded Reload
	movq	%rcx, %r14
	callq	memcpy@PLT
	movl	76(%rsp), %r9d                  # 4-byte Reload
	movq	40(%rsp), %r8                   # 8-byte Reload
	movq	80(%rsp), %rbp                  # 8-byte Reload
	movzwl	14(%rsp), %eax
	movl	%ebx, %ecx
	shll	%cl, %eax
	movq	%r14, %rcx
	leaq	14(%rsp), %rdi
	movq	24(%rsp), %r14                  # 8-byte Reload
	addq	%r12, %r12
	addq	(%rcx,%r14,8), %r12
	movw	%ax, (%r12,%rbp,2)
	movq	88(%rsp), %rax                  # 8-byte Reload
	jmp	.LBB4_33
.Lfunc_end4:
	.size	buf2img_bitshift, .Lfunc_end4-buf2img_bitshift
	.cfi_endproc
                                        # -- End function
	.globl	fillPlane                       # -- Begin function fillPlane
	.p2align	4, 0x90
	.type	fillPlane,@function
fillPlane:                              # @fillPlane
	.cfi_startproc
# %bb.0:                                # %entry
	testl	%ecx, %ecx
	jle	.LBB5_10
# %bb.1:                                # %for.cond1.preheader.lr.ph
	testl	%edx, %edx
	jle	.LBB5_10
# %bb.2:                                # %for.cond1.preheader.us.preheader
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%ecx, %eax
	movl	%edx, %ecx
	movl	%ecx, %r8d
	andl	$3, %r8d
	andl	$2147483644, %ecx               # imm = 0x7FFFFFFC
	xorl	%r9d, %r9d
	jmp	.LBB5_3
	.p2align	4, 0x90
.LBB5_8:                                # %for.cond1.for.inc6_crit_edge.us
                                        #   in Loop: Header=BB5_3 Depth=1
	incq	%r9
	cmpq	%rax, %r9
	je	.LBB5_9
.LBB5_3:                                # %for.cond1.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_4 Depth 2
                                        #     Child Loop BB5_7 Depth 2
	xorl	%r10d, %r10d
	cmpl	$4, %edx
	jb	.LBB5_5
	.p2align	4, 0x90
.LBB5_4:                                # %for.body3.us
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi,%r9,8), %r11
	movw	%si, (%r11,%r10,2)
	movq	(%rdi,%r9,8), %r11
	movw	%si, 2(%r11,%r10,2)
	movq	(%rdi,%r9,8), %r11
	movw	%si, 4(%r11,%r10,2)
	movq	(%rdi,%r9,8), %r11
	movw	%si, 6(%r11,%r10,2)
	addq	$4, %r10
	cmpq	%r10, %rcx
	jne	.LBB5_4
.LBB5_5:                                # %for.cond1.for.inc6_crit_edge.us.unr-lcssa
                                        #   in Loop: Header=BB5_3 Depth=1
	testq	%r8, %r8
	je	.LBB5_8
# %bb.6:                                # %for.body3.us.epil.preheader
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	%r8, %r11
	.p2align	4, 0x90
.LBB5_7:                                # %for.body3.us.epil
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi,%r9,8), %rbx
	movw	%si, (%rbx,%r10,2)
	incq	%r10
	decq	%r11
	jne	.LBB5_7
	jmp	.LBB5_8
.LBB5_9:
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
.LBB5_10:                               # %for.end8
	retq
.Lfunc_end5:
	.size	fillPlane, .Lfunc_end5-fillPlane
	.cfi_endproc
                                        # -- End function
	.globl	AllocateFrameMemory             # -- Begin function AllocateFrameMemory
	.p2align	4, 0x90
	.type	AllocateFrameMemory,@function
AllocateFrameMemory:                    # @AllocateFrameMemory
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
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movslq	84(%rdx), %rax
	movslq	128(%rdx), %rdi
	imulq	%rax, %rdi
	callq	malloc@PLT
	movq	%rax, 849288(%rbx)
	testq	%rax, %rax
	je	.LBB6_1
# %bb.2:                                # %if.end
	cmpl	$0, 1988(%r15)
	jne	.LBB6_3
	jmp	.LBB6_4
.LBB6_1:                                # %if.then
	movl	$.L.str.3, %edi
	callq	no_mem_exit@PLT
	cmpl	$0, 1988(%r15)
	je	.LBB6_4
.LBB6_3:                                # %if.then2
	movslq	84(%r14), %rax
	movslq	128(%r14), %rdi
	imulq	%rax, %rdi
	callq	malloc@PLT
	movq	%rax, 849296(%rbx)
	testq	%rax, %rax
	je	.LBB6_5
.LBB6_4:                                # %if.end12
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB6_5:                                # %if.then10
	.cfi_def_cfa_offset 32
	movl	$.L.str.4, %edi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	no_mem_exit@PLT                 # TAILCALL
.Lfunc_end6:
	.size	AllocateFrameMemory, .Lfunc_end6-AllocateFrameMemory
	.cfi_endproc
                                        # -- End function
	.globl	DeleteFrameMemory               # -- Begin function DeleteFrameMemory
	.p2align	4, 0x90
	.type	DeleteFrameMemory,@function
DeleteFrameMemory:                      # @DeleteFrameMemory
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	849288(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB7_2
# %bb.1:                                # %if.then
	callq	free@PLT
.LBB7_2:                                # %if.end
	movq	849296(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB7_3
# %bb.4:                                # %if.then3
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.LBB7_3:                                # %if.end5
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	DeleteFrameMemory, .Lfunc_end7-DeleteFrameMemory
	.cfi_endproc
                                        # -- End function
	.globl	read_one_frame                  # -- Begin function read_one_frame
	.p2align	4, 0x90
	.type	read_one_frame,@function
read_one_frame:                         # @read_one_frame
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
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, %rbp
	movq	%r8, %rbx
	movq	%rsi, %r13
	movq	%rdi, %r12
	movslq	128(%r8), %r14
	cmpl	$1, 4(%r8)
	jne	.LBB8_1
# %bb.2:                                # %land.rhs
	cmpl	$3, (%rbx)
	sete	%r15b
	jmp	.LBB8_3
.LBB8_1:
	xorl	%r15d, %r15d
.LBB8_3:                                # %land.end
	movq	(%r12), %rdi
	movl	72(%rbx), %eax
	imull	%r14d, %eax
	movl	%eax, 28(%rsp)                  # 4-byte Spill
	movl	76(%rbx), %eax
	imull	%r14d, %eax
	movl	%eax, 24(%rsp)                  # 4-byte Spill
	cmpl	$0, 912(%r13)
	je	.LBB8_4
# %bb.7:                                # %if.else11
	movq	849288(%r12), %r9
	movq	%r13, %rsi
	movq	%rbx, %r8
	callq	ReadFrameConcatenated@PLT
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	testl	%eax, %eax
	jne	.LBB8_9
	jmp	.LBB8_34
.LBB8_4:                                # %if.then
	cmpl	$3, 772(%r13)
	movq	849288(%r12), %r9
	movq	%r13, %rsi
	jne	.LBB8_6
# %bb.5:                                # %if.then8
	movq	%rbx, %rcx
	movq	%r9, %r8
	callq	ReadTIFFImage@PLT
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	testl	%eax, %eax
	jne	.LBB8_9
	jmp	.LBB8_34
.LBB8_6:                                # %if.else
	movq	%rbx, %r8
	callq	ReadFrameSeparate@PLT
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	testl	%eax, %eax
	je	.LBB8_34
.LBB8_9:                                # %if.end16
	movl	%r15d, 96(%rsp)                 # 4-byte Spill
	movq	%rbx, 8(%rsp)                   # 8-byte Spill
	cmpl	$0, 916(%r13)
	je	.LBB8_28
# %bb.10:                               # %if.then18
	movq	849288(%r12), %r10
	movq	849296(%r12), %rsi
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movl	72(%rcx), %eax
	imull	%r14d, %eax
	movslq	%eax, %r8
	leaq	(%rsi,%r8), %rdi
	movl	(%rcx), %eax
	movl	76(%rcx), %ecx
	movl	%ecx, %edx
	movq	%r14, 48(%rsp)                  # 8-byte Spill
	imull	%r14d, %edx
	movslq	%edx, %r9
	leaq	(%rdi,%r9), %rdx
	cmpl	$1, %eax
	jne	.LBB8_11
# %bb.12:                               # %for.cond.preheader.i
	testl	%ecx, %ecx
	jle	.LBB8_13
# %bb.14:                               # %for.body.lr.ph.i
	movq	%rbp, 32(%rsp)                  # 8-byte Spill
	movq	%r12, 40(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rcx                  # 8-byte Reload
	leal	(%rcx,%rcx), %eax
	movslq	%eax, %rbx
	addq	%r8, %r9
	leaq	(%rbx,%rbx), %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	leaq	(%rbx,%rcx,2), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	leaq	(%rcx,%rbx), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rsi, 104(%rsp)                 # 8-byte Spill
	movq	%rbx, 136(%rsp)                 # 8-byte Spill
	movq	%rbx, 16(%rsp)                  # 8-byte Spill
	xorl	%edx, %edx
	movq	48(%rsp), %r14                  # 8-byte Reload
	.p2align	4, 0x90
.LBB8_15:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, 80(%rsp)                  # 4-byte Spill
	movq	%r9, 88(%rsp)                   # 8-byte Spill
	movq	%r8, 56(%rsp)                   # 8-byte Spill
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %r12                 # 8-byte Reload
	leaq	(%r12,%r9), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	leaq	(%r12,%r8), %rdi
	leaq	(%r12,%rcx), %rbx
	movq	%r10, %rsi
	movq	%r14, %rdx
	movq	%r10, %r13
	callq	memcpy@PLT
	leaq	(%r14,%r13), %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	136(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	16(%rsp), %r15                  # 8-byte Reload
	leaq	(%r12,%r15), %rax
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	addq	%rbx, %rbp
	movq	112(%rsp), %r12                 # 8-byte Reload
	leaq	(%r12,%r13), %rsi
	movq	72(%rsp), %rdi                  # 8-byte Reload
	movq	%r14, %rdx
	callq	memcpy@PLT
	addq	120(%rsp), %r13                 # 8-byte Folded Reload
	movq	144(%rsp), %rdi                 # 8-byte Reload
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movl	80(%rsp), %edx                  # 4-byte Reload
	movq	88(%rsp), %r9                   # 8-byte Reload
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	64(%rsp), %rcx                  # 8-byte Reload
	addq	%r12, %rbp
	incl	%edx
	addq	%r14, %r9
	addq	%r14, %r8
	movq	128(%rsp), %rax                 # 8-byte Reload
	addq	%rax, %rcx
	addq	%rax, %r15
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	movq	%rbp, %r10
	movq	8(%rsp), %rax                   # 8-byte Reload
	cmpl	76(%rax), %edx
	jl	.LBB8_15
# %bb.16:                               # %for.end.loopexit.i
	movq	40(%rsp), %r12                  # 8-byte Reload
	movq	849288(%r12), %r10
	movq	104(%rsp), %rax                 # 8-byte Reload
	addq	%rax, %r9
	addq	%rax, %r8
	addq	%rax, %rcx
	movq	849296(%r12), %rsi
	movq	%r8, %rdi
	movq	%r9, %rdx
	movq	32(%rsp), %rbp                  # 8-byte Reload
	jmp	.LBB8_17
.LBB8_11:
	movq	%r10, %r13
	movq	%rsi, %rcx
	jmp	.LBB8_18
.LBB8_13:
	movq	%rsi, %rcx
.LBB8_17:                               # %for.end.i
	movq	%r10, %r13
	movq	%rsi, 849288(%r12)
	movq	%r10, 849296(%r12)
	movq	8(%rsp), %rax                   # 8-byte Reload
	movl	(%rax), %eax
	movq	%rsi, %r10
	movq	%r13, %rsi
.LBB8_18:                               # %if.end.i
	movq	48(%rsp), %r14                  # 8-byte Reload
	cmpl	$2, %eax
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	je	.LBB8_23
# %bb.19:                               # %if.end.i
	cmpl	$3, %eax
	jne	.LBB8_28
# %bb.20:                               # %for.cond71.preheader.i
	movq	8(%rsp), %rax                   # 8-byte Reload
	cmpl	$0, 72(%rax)
	jle	.LBB8_27
# %bb.21:                               # %for.body76.lr.ph.i
	movq	%rbp, 32(%rsp)                  # 8-byte Spill
	movq	%r12, 40(%rsp)                  # 8-byte Spill
	movq	%r14, %rbx
	xorl	%r14d, %r14d
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB8_22:                               # %for.body76.i
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%rdx,%r14), %r12
	leaq	(%rdi,%r14), %r15
	leaq	(%rcx,%r14), %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	addq	%rbx, %r13
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	addq	%rbx, %r13
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	64(%rsp), %rcx                  # 8-byte Reload
	addq	%rbx, %r13
	incl	%ebp
	addq	%rbx, %r14
	movq	8(%rsp), %rax                   # 8-byte Reload
	cmpl	72(%rax), %ebp
	jl	.LBB8_22
	jmp	.LBB8_26
.LBB8_23:                               # %for.cond38.preheader.i
	movq	8(%rsp), %rax                   # 8-byte Reload
	cmpl	$0, 76(%rax)
	jle	.LBB8_27
# %bb.24:                               # %for.body43.lr.ph.i
	movq	%rbp, 32(%rsp)                  # 8-byte Spill
	movq	%r12, 40(%rsp)                  # 8-byte Spill
	leaq	(%rcx,%r14), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	%r14, %rbx
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB8_25:                               # %for.body43.i
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%rdx,%r14), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	leaq	(%rdi,%r14), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	leaq	(%rcx,%r14,2), %rdi
	leaq	(,%r14,4), %r12
	addq	%r13, %r12
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	72(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r14,2), %rbp
	addq	%rbx, %r12
	movq	80(%rsp), %rdi                  # 8-byte Reload
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	addq	%rbx, %r12
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	addq	%rbx, %r12
	movq	88(%rsp), %rdi                  # 8-byte Reload
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	64(%rsp), %rcx                  # 8-byte Reload
	incl	%r15d
	addq	%rbx, %r14
	movq	8(%rsp), %rax                   # 8-byte Reload
	cmpl	76(%rax), %r15d
	jl	.LBB8_25
.LBB8_26:                               # %if.end96.sink.split.sink.split.i
	movq	40(%rsp), %r12                  # 8-byte Reload
	movq	849288(%r12), %r10
	movq	849296(%r12), %rsi
	movq	%rbx, %r14
	movq	32(%rsp), %rbp                  # 8-byte Reload
.LBB8_27:                               # %if.end96.sink.split.i
	movq	%rsi, 849288(%r12)
	movq	%r10, 849296(%r12)
.LBB8_28:                               # %if.end20
	movq	8(%rsp), %r15                   # 8-byte Reload
	movl	88(%r15), %r10d
	subl	88(%rbp), %r10d
	movq	856736(%r12), %rax
	movq	208(%rsp), %r13
	movq	(%r13), %rdi
	movq	849288(%r12), %rsi
	cmpb	$0, 96(%rsp)                    # 1-byte Folded Reload
	je	.LBB8_31
# %bb.29:                               # %if.end46
	movslq	28(%rsp), %rbx                  # 4-byte Folded Reload
	addq	%rbx, %rsi
	movl	16(%r15), %edx
	movl	28(%r15), %ecx
	movl	16(%rbp), %r8d
	movl	28(%rbp), %r9d
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	*%rax
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	cmpl	$0, 849088(%r12)
	je	.LBB8_34
# %bb.30:                               # %if.then93
	movl	92(%r15), %eax
	subl	92(%rbp), %eax
	movq	8(%r13), %rdi
	addq	849288(%r12), %rbx
	movslq	24(%rsp), %rsi                  # 4-byte Folded Reload
	addq	%rbx, %rsi
	movl	20(%r15), %edx
	movl	32(%r15), %ecx
	movl	20(%rbp), %r8d
	movl	32(%rbp), %r9d
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	*856736(%r12)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	96(%r15), %eax
	subl	96(%rbp), %eax
	movq	16(%r13), %rdi
	movq	849288(%r12), %rsi
	jmp	.LBB8_33
.LBB8_31:                               # %if.end46.thread
	movl	16(%r15), %edx
	movl	28(%r15), %ecx
	movl	16(%rbp), %r8d
	movl	28(%rbp), %r9d
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	*%rax
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	cmpl	$0, 849088(%r12)
	je	.LBB8_34
# %bb.32:                               # %if.else105
	movl	92(%r15), %eax
	subl	92(%rbp), %eax
	movq	8(%r13), %rdi
	movslq	28(%rsp), %rbx                  # 4-byte Folded Reload
	movq	849288(%r12), %rsi
	addq	%rbx, %rsi
	movl	20(%r15), %edx
	movl	32(%r15), %ecx
	movl	20(%rbp), %r8d
	movl	32(%rbp), %r9d
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	*856736(%r12)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	96(%r15), %eax
	subl	96(%rbp), %eax
	movq	16(%r13), %rdi
	addq	849288(%r12), %rbx
	movslq	24(%rsp), %rsi                  # 4-byte Folded Reload
	addq	%rbx, %rsi
.LBB8_33:                               # %cleanup
	movl	20(%r15), %edx
	movl	32(%r15), %ecx
	movl	20(%rbp), %r8d
	movl	32(%rbp), %r9d
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	*856736(%r12)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.LBB8_34:                               # %cleanup
	movl	100(%rsp), %eax                 # 4-byte Reload
	addq	$152, %rsp
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
	.size	read_one_frame, .Lfunc_end8-read_one_frame
	.cfi_endproc
                                        # -- End function
	.globl	pad_borders                     # -- Begin function pad_borders
	.p2align	4, 0x90
	.type	pad_borders,@function
pad_borders:                            # @pad_borders
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
	movq	%r8, %rbx
	movl	%ecx, 16(%rsp)                  # 4-byte Spill
	movl	%edx, 8(%rsp)                   # 4-byte Spill
	movslq	112(%rsp), %rax
	cmpl	%edi, %eax
	setl	%cl
	movslq	124(%rsp), %r14
	testq	%r14, %r14
	setg	%dl
	andb	%cl, %dl
	cmpb	$1, %dl
	jne	.LBB9_8
# %bb.1:                                # %for.cond5.preheader.us.preheader
	movslq	%edi, %rcx
	movl	%edi, %edx
	subl	%eax, %edx
	andl	$3, %edx
	movq	%rax, %r8
	subq	%rcx, %r8
	xorl	%r9d, %r9d
	jmp	.LBB9_2
	.p2align	4, 0x90
.LBB9_7:                                # %for.cond5.for.inc17_crit_edge.us
                                        #   in Loop: Header=BB9_2 Depth=1
	incq	%r9
	cmpq	%r14, %r9
	je	.LBB9_8
.LBB9_2:                                # %for.cond5.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_4 Depth 2
                                        #     Child Loop BB9_6 Depth 2
	movq	%rax, %r10
	testq	%rdx, %rdx
	je	.LBB9_5
# %bb.3:                                # %for.body7.us.prol.preheader
                                        #   in Loop: Header=BB9_2 Depth=1
	movq	%rdx, %r11
	movq	%rax, %r10
	.p2align	4, 0x90
.LBB9_4:                                # %for.body7.us.prol
                                        #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx), %r15
	movq	(%r15,%r9,8), %r15
	movzwl	-2(%r15,%r10,2), %ebp
	movw	%bp, (%r15,%r10,2)
	incq	%r10
	decq	%r11
	jne	.LBB9_4
.LBB9_5:                                # %for.body7.us.prol.loopexit
                                        #   in Loop: Header=BB9_2 Depth=1
	cmpq	$-4, %r8
	ja	.LBB9_7
	.p2align	4, 0x90
.LBB9_6:                                # %for.body7.us
                                        #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx), %r11
	movq	(%r11,%r9,8), %r11
	movzwl	-2(%r11,%r10,2), %ebp
	movw	%bp, (%r11,%r10,2)
	movq	(%rbx), %r11
	movq	(%r11,%r9,8), %r11
	movzwl	(%r11,%r10,2), %ebp
	movw	%bp, 2(%r11,%r10,2)
	movq	(%rbx), %r11
	movq	(%r11,%r9,8), %r11
	movzwl	2(%r11,%r10,2), %ebp
	movw	%bp, 4(%r11,%r10,2)
	movq	(%rbx), %r11
	movq	(%r11,%r9,8), %r11
	movzwl	4(%r11,%r10,2), %ebp
	movw	%bp, 6(%r11,%r10,2)
	addq	$4, %r10
	cmpq	%r10, %rcx
	jne	.LBB9_6
	jmp	.LBB9_7
.LBB9_8:                                # %if.end
	leaq	96(%rsp), %rbp
	cmpl	%esi, %r14d
	jge	.LBB9_14
# %bb.9:                                # %for.cond26.preheader
	movslq	%edi, %r15
	addq	%r15, %r15
	movslq	%esi, %r13
	subl	%r14d, %esi
	testb	$1, %sil
	jne	.LBB9_11
# %bb.10:
	movq	%r14, %r12
	leaq	-1(%r13), %rax
	cmpq	%r14, %rax
	jne	.LBB9_13
	jmp	.LBB9_14
.LBB9_11:                               # %for.body28.prol
	movq	(%rbx), %rax
	movq	-8(%rax,%r14,8), %rsi
	movq	(%rax,%r14,8), %rdi
	movq	%r15, %rdx
	callq	memcpy@PLT
	leaq	1(%r14), %r12
	leaq	-1(%r13), %rax
	cmpq	%r14, %rax
	je	.LBB9_14
	.p2align	4, 0x90
.LBB9_13:                               # %for.body28
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rax
	movq	-8(%rax,%r12,8), %rsi
	movq	(%rax,%r12,8), %rdi
	movq	%r15, %rdx
	callq	memcpy@PLT
	movq	(%rbx), %rax
	movq	(%rax,%r12,8), %rsi
	movq	8(%rax,%r12,8), %rdi
	movq	%r15, %rdx
	callq	memcpy@PLT
	addq	$2, %r12
	cmpq	%r12, %r13
	jne	.LBB9_13
.LBB9_14:                               # %if.end39
	cmpl	$0, (%rbp)
	je	.LBB9_53
# %bb.15:                               # %for.cond43.preheader
	movslq	20(%rbp), %r11
	movslq	8(%rsp), %r13                   # 4-byte Folded Reload
	leaq	(,%r13,2), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movl	32(%rbp), %r10d
	movslq	%r10d, %r14
	cmpl	%r13d, %r11d
	jge	.LBB9_43
# %bb.16:                               # %for.body46.us.preheader
	testl	%r14d, %r14d
	jle	.LBB9_17
# %bb.36:                               # %for.cond60.preheader.us.us.preheader
	movl	%r13d, %eax
	subl	%r11d, %eax
	andl	$3, %eax
	movq	%r11, %rcx
	subq	%r13, %rcx
	xorl	%edx, %edx
	jmp	.LBB9_37
	.p2align	4, 0x90
.LBB9_42:                               # %for.cond60.for.inc80_crit_edge.us.us
                                        #   in Loop: Header=BB9_37 Depth=1
	incq	%rdx
	cmpq	%r10, %rdx
	je	.LBB9_17
.LBB9_37:                               # %for.cond60.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_39 Depth 2
                                        #     Child Loop BB9_41 Depth 2
	movq	%r11, %rsi
	testq	%rax, %rax
	je	.LBB9_40
# %bb.38:                               # %for.body63.us.us.prol.preheader
                                        #   in Loop: Header=BB9_37 Depth=1
	movq	%rax, %rdi
	movq	%r11, %rsi
	.p2align	4, 0x90
.LBB9_39:                               # %for.body63.us.us.prol
                                        #   Parent Loop BB9_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rbx), %r8
	movq	(%r8,%rdx,8), %r8
	movzwl	-2(%r8,%rsi,2), %r9d
	movw	%r9w, (%r8,%rsi,2)
	incq	%rsi
	decq	%rdi
	jne	.LBB9_39
.LBB9_40:                               # %for.body63.us.us.prol.loopexit
                                        #   in Loop: Header=BB9_37 Depth=1
	cmpq	$-4, %rcx
	ja	.LBB9_42
	.p2align	4, 0x90
.LBB9_41:                               # %for.body63.us.us
                                        #   Parent Loop BB9_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rbx), %rdi
	movq	(%rdi,%rdx,8), %rdi
	movzwl	-2(%rdi,%rsi,2), %r8d
	movw	%r8w, (%rdi,%rsi,2)
	movq	8(%rbx), %rdi
	movq	(%rdi,%rdx,8), %rdi
	movzwl	(%rdi,%rsi,2), %r8d
	movw	%r8w, 2(%rdi,%rsi,2)
	movq	8(%rbx), %rdi
	movq	(%rdi,%rdx,8), %rdi
	movzwl	2(%rdi,%rsi,2), %r8d
	movw	%r8w, 4(%rdi,%rsi,2)
	movq	8(%rbx), %rdi
	movq	(%rdi,%rdx,8), %rdi
	movzwl	4(%rdi,%rsi,2), %r8d
	movw	%r8w, 6(%rdi,%rsi,2)
	addq	$4, %rsi
	cmpq	%rsi, %r13
	jne	.LBB9_41
	jmp	.LBB9_42
.LBB9_43:                               # %for.cond43.preheader.split
	cmpl	16(%rsp), %r10d                 # 4-byte Folded Reload
	jge	.LBB9_53
# %bb.44:                               # %for.body46.us172.preheader
	movslq	16(%rsp), %r12                  # 4-byte Folded Reload
	movq	%r12, %rax
	subq	%r14, %rax
	movq	%r14, %r13
	notq	%r13
	addq	%r12, %r13
	movq	%r14, %r15
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	testb	$1, %al
	je	.LBB9_46
# %bb.45:                               # %for.body94.us177.prol
	movq	8(%rbx), %rax
	movq	-8(%rax,%r14,8), %rsi
	movq	(%rax,%r14,8), %rdi
	movq	8(%rsp), %rdx                   # 8-byte Reload
	callq	memcpy@PLT
	leaq	1(%r14), %r15
.LBB9_46:                               # %for.body94.us177.prol.loopexit
	testq	%r13, %r13
	movq	8(%rsp), %rbp                   # 8-byte Reload
	je	.LBB9_48
	.p2align	4, 0x90
.LBB9_47:                               # %for.body94.us177
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rax
	movq	-8(%rax,%r15,8), %rsi
	movq	(%rax,%r15,8), %rdi
	movq	%rbp, %rdx
	callq	memcpy@PLT
	movq	8(%rbx), %rax
	movq	(%rax,%r15,8), %rsi
	movq	8(%rax,%r15,8), %rdi
	movq	%rbp, %rdx
	callq	memcpy@PLT
	addq	$2, %r15
	cmpq	%r15, %r12
	jne	.LBB9_47
.LBB9_48:                               # %for.inc110.loopexit.us187
	testb	$1, 16(%rsp)                    # 1-byte Folded Reload
	jne	.LBB9_50
# %bb.49:
	movq	8(%rsp), %r15                   # 8-byte Reload
	testq	%r13, %r13
	jne	.LBB9_52
	jmp	.LBB9_53
.LBB9_17:                               # %if.end83.loopexit.us
	movq	%r11, 24(%rsp)                  # 8-byte Spill
	movq	%r10, 32(%rsp)                  # 8-byte Spill
	cmpl	16(%rsp), %r10d                 # 4-byte Folded Reload
	jge	.LBB9_18
# %bb.32:                               # %for.cond91.preheader.us
	movl	16(%rsp), %eax                  # 4-byte Reload
	movslq	%eax, %r12
	subl	%r14d, %eax
	movq	%r14, %r15
	testb	$1, %al
	je	.LBB9_34
# %bb.33:                               # %for.body94.us.prol
	movq	8(%rbx), %rax
	movq	-8(%rax,%r14,8), %rsi
	movq	(%rax,%r14,8), %rdi
	movq	8(%rsp), %rdx                   # 8-byte Reload
	callq	memcpy@PLT
	leaq	1(%r14), %r15
.LBB9_34:                               # %for.body94.us.prol.loopexit
	leaq	-1(%r12), %rax
	cmpq	%r14, %rax
	movq	8(%rsp), %rbp                   # 8-byte Reload
	je	.LBB9_18
	.p2align	4, 0x90
.LBB9_35:                               # %for.body94.us
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rax
	movq	-8(%rax,%r15,8), %rsi
	movq	(%rax,%r15,8), %rdi
	movq	%rbp, %rdx
	callq	memcpy@PLT
	movq	8(%rbx), %rax
	movq	(%rax,%r15,8), %rsi
	movq	8(%rax,%r15,8), %rdi
	movq	%rbp, %rdx
	callq	memcpy@PLT
	addq	$2, %r15
	cmpq	%r15, %r12
	jne	.LBB9_35
.LBB9_18:                               # %for.inc110.us
	movq	32(%rsp), %r10                  # 8-byte Reload
	testl	%r10d, %r10d
	movq	24(%rsp), %r11                  # 8-byte Reload
	jle	.LBB9_26
# %bb.19:                               # %for.cond60.preheader.us.us.preheader.1
	movl	%r13d, %eax
	subl	%r11d, %eax
	andl	$3, %eax
	movq	%r11, %rcx
	subq	%r13, %rcx
	xorl	%edx, %edx
	jmp	.LBB9_20
	.p2align	4, 0x90
.LBB9_25:                               # %for.cond60.for.inc80_crit_edge.us.us.1
                                        #   in Loop: Header=BB9_20 Depth=1
	incq	%rdx
	cmpq	%r10, %rdx
	je	.LBB9_26
.LBB9_20:                               # %for.cond60.preheader.us.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_22 Depth 2
                                        #     Child Loop BB9_24 Depth 2
	movq	%r11, %rsi
	testq	%rax, %rax
	je	.LBB9_23
# %bb.21:                               # %for.body63.us.us.1.prol.preheader
                                        #   in Loop: Header=BB9_20 Depth=1
	movq	%rax, %rdi
	movq	%r11, %rsi
	.p2align	4, 0x90
.LBB9_22:                               # %for.body63.us.us.1.prol
                                        #   Parent Loop BB9_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rbx), %r8
	movq	(%r8,%rdx,8), %r8
	movzwl	-2(%r8,%rsi,2), %r9d
	movw	%r9w, (%r8,%rsi,2)
	incq	%rsi
	decq	%rdi
	jne	.LBB9_22
.LBB9_23:                               # %for.body63.us.us.1.prol.loopexit
                                        #   in Loop: Header=BB9_20 Depth=1
	cmpq	$-4, %rcx
	ja	.LBB9_25
	.p2align	4, 0x90
.LBB9_24:                               # %for.body63.us.us.1
                                        #   Parent Loop BB9_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rbx), %rdi
	movq	(%rdi,%rdx,8), %rdi
	movzwl	-2(%rdi,%rsi,2), %r8d
	movw	%r8w, (%rdi,%rsi,2)
	movq	16(%rbx), %rdi
	movq	(%rdi,%rdx,8), %rdi
	movzwl	(%rdi,%rsi,2), %r8d
	movw	%r8w, 2(%rdi,%rsi,2)
	movq	16(%rbx), %rdi
	movq	(%rdi,%rdx,8), %rdi
	movzwl	2(%rdi,%rsi,2), %r8d
	movw	%r8w, 4(%rdi,%rsi,2)
	movq	16(%rbx), %rdi
	movq	(%rdi,%rdx,8), %rdi
	movzwl	4(%rdi,%rsi,2), %r8d
	movw	%r8w, 6(%rdi,%rsi,2)
	addq	$4, %rsi
	cmpq	%rsi, %r13
	jne	.LBB9_24
	jmp	.LBB9_25
.LBB9_26:                               # %if.end83.loopexit.us.1
	cmpl	16(%rsp), %r10d                 # 4-byte Folded Reload
	movq	8(%rsp), %r13                   # 8-byte Reload
	jge	.LBB9_53
# %bb.27:                               # %for.cond91.preheader.us.1
	movl	16(%rsp), %eax                  # 4-byte Reload
	movslq	%eax, %r12
	subl	%r14d, %eax
	testb	$1, %al
	jne	.LBB9_29
# %bb.28:
	movq	%r14, %r15
	leaq	-1(%r12), %rax
	cmpq	%r14, %rax
	jne	.LBB9_31
	jmp	.LBB9_53
.LBB9_50:                               # %for.body94.us177.1.prol
	movq	16(%rbx), %rax
	movq	-8(%rax,%r14,8), %rsi
	movq	(%rax,%r14,8), %rdi
	movq	8(%rsp), %r15                   # 8-byte Reload
	movq	%r15, %rdx
	callq	memcpy@PLT
	incq	%r14
	testq	%r13, %r13
	je	.LBB9_53
	.p2align	4, 0x90
.LBB9_52:                               # %for.body94.us177.1
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rbx), %rax
	movq	-8(%rax,%r14,8), %rsi
	movq	(%rax,%r14,8), %rdi
	movq	%r15, %rdx
	callq	memcpy@PLT
	movq	16(%rbx), %rax
	movq	(%rax,%r14,8), %rsi
	movq	8(%rax,%r14,8), %rdi
	movq	%r15, %rdx
	callq	memcpy@PLT
	addq	$2, %r14
	cmpq	%r14, %r12
	jne	.LBB9_52
	jmp	.LBB9_53
.LBB9_29:                               # %for.body94.us.1.prol
	movq	16(%rbx), %rax
	movq	-8(%rax,%r14,8), %rsi
	movq	(%rax,%r14,8), %rdi
	movq	%r13, %rdx
	callq	memcpy@PLT
	leaq	1(%r14), %r15
	leaq	-1(%r12), %rax
	cmpq	%r14, %rax
	je	.LBB9_53
	.p2align	4, 0x90
.LBB9_31:                               # %for.body94.us.1
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rbx), %rax
	movq	-8(%rax,%r15,8), %rsi
	movq	(%rax,%r15,8), %rdi
	movq	%r13, %rdx
	callq	memcpy@PLT
	movq	16(%rbx), %rax
	movq	(%rax,%r15,8), %rsi
	movq	8(%rax,%r15,8), %rdi
	movq	%r13, %rdx
	callq	memcpy@PLT
	addq	$2, %r15
	cmpq	%r15, %r12
	jne	.LBB9_31
.LBB9_53:                               # %if.end113
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
.Lfunc_end9:
	.size	pad_borders, .Lfunc_end9-pad_borders
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Source picture has higher bit depth than imgpel data type. \nPlease recompile with larger data type for imgpel."
	.size	.L.str, 111

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Rescaling not supported in big endian architectures. "
	.size	.L.str.1, 54

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"reading only from formats of 8, 16 or 32 bit allowed on big endian architecture"
	.size	.L.str.2, 80

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"AllocateFrameMemory: p_Vid->buf"
	.size	.L.str.3, 32

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"AllocateFrameMemory: p_Vid->ibuf"
	.size	.L.str.4, 33

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
